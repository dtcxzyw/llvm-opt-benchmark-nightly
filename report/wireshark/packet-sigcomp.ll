Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-sigcomp?download=true
inline.NumInlined: 28
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@decompress_sigcomp_message:bb.a
  %i.det = getelementptr i8, ptr %i.ax, i64 %i.des
  %i.deu = load i8, ptr %i.det, align 1
  %i.dev = getelementptr i8, ptr %i.ddf, i64 %indvars.iv3658
  %i.dew = getelementptr i8, ptr %i.dev, i64 9
  store i8 %i.deu, ptr %i.dew, align 1
  %i.dex = add nuw nsw i32 %spec.select2597.1, 1
  %i.dey = and i32 %i.dex, 65535                  ; 2 uses
  %indvars.iv.next3659.1 = add nuw nsw i64 %indvars.iv3658, 2 ; 2 uses
  %niter4923.next.1 = add i64 %niter4923, 2       ; 2 uses
  %niter4923.ncmp.1 = icmp eq i64 %niter4923.next.1, %unroll_iter4922
  br i1 %niter4923.ncmp.1, label %._crit_edge3393.loopexit.unr-lcssa, label %.lr.ph3392, !llvm.loop !26

._crit_edge3393.loopexit.unr-lcssa:               ; preds = %.lr.ph3392
  %lcmp.mod4920.not = icmp eq i64 %xtraiter4918, 0
  br i1 %lcmp.mod4920.not, label %._crit_edge3393, label %.lr.ph3392.epil.preheader

.lr.ph3392.epil.preheader:                        ; preds = %._crit_edge3393.loopexit.unr-lcssa, %.lr.ph3392.preheader
  %indvars.iv3658.epil.init = phi i64 [ 0, %.lr.ph3392.preheader ], [ %indvars.iv.next3659.1, %._crit_edge3393.loopexit.unr-lcssa ]
  %.223390.epil.init = phi i32 [ %i.deh, %.lr.ph3392.preheader ], [ %i.dey, %._crit_edge3393.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod4921 = trunc i16 %i.ddc to i1
  call void @llvm.assume(i1 %lcmp.mod4921)
  %i.dez = icmp eq i32 %.223390.epil.init, %i.dcu
  %spec.select2597.epil = select i1 %i.dez, i32 %i.dda, i32 %.223390.epil.init
  %i.dfa = zext nneg i32 %spec.select2597.epil to i64
  %i.dfb = getelementptr i8, ptr %i.ax, i64 %i.dfa
  %i.dfc = load i8, ptr %i.dfb, align 1
  %i.dfd = getelementptr i8, ptr %i.ddf, i64 %indvars.iv3658.epil.init
  %i.dfe = getelementptr i8, ptr %i.dfd, i64 8
  store i8 %i.dfc, ptr %i.dfe, align 1
  br label %._crit_edge3393

._crit_edge3393:                                  ; preds = %.lr.ph3392.epil.preheader, %._crit_edge3393.loopexit.unr-lcssa, %bb.sw
  call void @gcry_md_hash_buffer(i32 noundef 2, ptr noundef nonnull %i.o, ptr noundef %i.ddf, i64 noundef %i.dde)
  br i1 %.02373, label %bb.sx, label %bb.sy

bb.sx:                                            ; preds = %._crit_edge3393
  %i.dff = load i32, ptr @hf_sigcomp_sha1_digest, align 4
  %i.dfg = call ptr @proto_tree_add_bytes_with_length(ptr noundef %3, i32 noundef %i.dff, ptr noundef %0, i32 noundef 0, i32 noundef -1, ptr noundef nonnull %i.o, i32 noundef 20) ; 0 uses
  br label %bb.sy

bb.sy:                                            ; preds = %bb.sx, %._crit_edge3393
  call fastcc void @udvm_state_create(ptr noundef %i.ddf, ptr noundef nonnull %i.o)
  %i.dfh = load i32, ptr @hf_sigcomp_creating_state, align 4
  %i.dfi = call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.dfh, ptr noundef %0, i32 noundef 0, i32 noundef -1, i32 noundef 0) ; 0 uses
  %i.dfj = load ptr, ptr %i.av, align 8
  %i.dfk = call ptr @bytes_to_str_maxlen(ptr noundef %i.dfj, ptr noundef nonnull %i.o, i64 noundef 6, i64 noundef 36)
  %i.dfl = call ptr @proto_tree_add_string(ptr noundef %3, i32 noundef %6, ptr noundef %0, i32 noundef 0, i32 noundef 0, ptr noundef %i.dfk) ; 0 uses
  %indvars.iv.next3663 = add nuw nsw i64 %indvars.iv3662, 1 ; 2 uses
  %exitcond3666.not = icmp eq i64 %indvars.iv.next3663, %wide.trip.count3665
  br i1 %exitcond3666.not, label %.loopexit, label %bb.su, !llvm.loop !27

.loopexit:                                        ; preds = %bb.sy, %bb.ss
  %i.dfm = zext i16 %.023913384 to i32            ; 2 uses
  %i.dfn = call ptr @tvb_new_child_real_data(ptr noundef %1, ptr noundef %i.db, i32 noundef %i.dfm, i32 noundef %i.dfm) ; 3 uses
  %i.dfo = call ptr @add_new_data_source(ptr noundef %2, ptr noundef %i.dfn, ptr noundef @.str.536) ; 0 uses
  %i.dfp = load i32, ptr @hf_sigcomp_sigcomp_message_decompressed, align 4
  %i.dfq = call ptr @proto_tree_add_item(ptr noundef %3, i32 noundef %i.dfp, ptr noundef %i.dfn, i32 noundef 0, i32 noundef -1, i32 noundef 0) ; 0 uses
  %i.dfr = zext i16 %i.dce to i32
  %i.dfs = add i32 %i.dx, %i.dfr
  %i.dft = load i32, ptr @hf_sigcomp_max_udvm_cycles, align 4
  %i.dfu = call ptr @proto_tree_add_uint(ptr noundef %3, i32 noundef %i.dft, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %i.bx) ; 0 uses
  %i.dfv = load i32, ptr @hf_sigcomp_used_udvm_cycles, align 4
  %i.dfw = call ptr @proto_tree_add_uint(ptr noundef %3, i32 noundef %i.dfv, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %i.dfs) ; 0 uses
  br label %bb.ta

bb.sz:                                            ; preds = %bb.g
  %i.dfx = zext i8 %i.eb to i32                   ; 2 uses
  %i.dfy = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %2, ptr noundef %.12379, ptr noundef @ei_sigcomp_invalid_instruction, ptr noundef @.str.537, i32 noundef %.023963383, i32 noundef %i.dfx, i32 noundef %i.dfx) ; 0 uses
  br label %bb.ta

dissect_udvm_reference_operand_memory.exit.thread: ; preds = %bb.ph, %bb.mi, %bb.jt, %bb.jz, %bb.ja, %bb.jg, %.thread2977, %bb.gg, %bb.gm, %bb.ff, %bb.fl, %bb.eo, %bb.eu, %bb.dx, %bb.ed, %bb.dg, %bb.dm, %bb.cp, %bb.cv, %bb.by, %bb.ce, %bb.bh, %bb.bn, %bb.at, %bb.az, %bb.ac, %bb.ai, %bb.l, %bb.r, %.thread3026, %.thread3024, %.thread3022, %.thread3020, %.thread3014, %.thread3012, %.thread3010, %.thread3001, %.thread2999, %.thread2992, %.thread2986, %.thread2984, %.thread2982, %.thread2980, %.thread2976, %.thread2974, %.thread3027, %bb.rw, %.thread3025, %bb.rr, %bb.rd, %bb.rc, %bb.rb, %.thread3023, %bb.ra, %bb.qx, %bb.qr, %bb.qq, %bb.qp, %bb.qo, %.thread3021, %bb.qn, %.thread3015, %bb.pd, %bb.oz, %bb.oo, %.thread3013, %bb.om, %bb.ny, %.thread3011, %bb.nw, %bb.ni, %bb.ng, %bb.nf, %bb.nd, %bb.mp, %bb.me, %bb.ma, %bb.lz, %bb.lu, %bb.lm, %bb.lj, %bb.lg, %.thread3002, %bb.le, %bb.ky, %bb.km, %bb.kl, %.thread3000, %bb.kk, %.thread2993, %bb.jr, %.thread2987, %bb.iy, %bb.im, %.thread2985, %bb.ik, %bb.ih, %bb.ig, %bb.if, %bb.ia, %bb.hx, %bb.hw, %bb.ht, %bb.he, %.thread2975, %bb.gx, %bb.gq, %bb.ge, %bb.gc, %bb.fm, %bb.ev, %bb.ee, %bb.do, %bb.cx, %bb.cf, %bb.bo, %bb.ak, %bb.t, %.thread4123, %.thread4125, %.thread4127, %.thread4129, %.thread4131, %.thread4133, %.thread2985.thread, %.thread2987.thread, %.thread2993.thread, %.thread3000.thread, %.thread4144, %.thread4147, %.thread3002.thread, %.thread4152, %.thread4155, %.thread3011.thread, %.thread3013.thread, %.thread3021.thread, %.thread4173, %.thread4176, %.thread4179, %.thread4182, %.thread3023.thread, %.thread4187, %.thread4190, %.thread4193, %.thread3025.thread, %.thread3027.thread, %bb.qi, %bb.py, %bb.px, %bb.pv, %bb.pr, %.thread4162, %.thread4165, %bb.nr, %bb.mt, %.lr.ph3372, %.thread4214, %.thread4211, %.thread4208, %.thread4205, %.thread4202, %.thread3029.thread, %.thread3028, %.thread, %bb.sn, %bb.sm, %bb.sl, %bb.sk, %bb.sj, %.thread3029, %bb.si, %bb.sr, %bb.rm, %bb.rk, %bb.ri, %._crit_edge3283.thread, %bb.ow, %bb.ou, %bb.mz, %bb.mx, %bb.md, %bb.ie, %bb.fr, %bb.fa, %bb.ej, %bb.d
  %i.dfz = load ptr, ptr %i.av, align 8
  %i.dga = load i16, ptr %i.g, align 2
  %i.dgb = zext i16 %i.dga to i32
  %i.dgc = call ptr @val_to_str(ptr noundef %i.dfz, i32 noundef %i.dgb, ptr noundef @result_code_vals, ptr noundef @.str.413)
  %i.dgd = call ptr (ptr, ptr, ptr, ptr, i32, ptr, ...) @proto_tree_add_expert_format_remaining(ptr noundef %3, ptr noundef %2, ptr noundef @ei_sigcomp_decompression_failure, ptr noundef %0, i32 noundef 0, ptr noundef @.str.538, ptr noundef %i.dgc) ; 0 uses
  br label %bb.ta

bb.ta:                                            ; preds = %bb.br, %bb.ci, %bb.fw, %bb.fz, %bb.sz, %bb.h, %dissect_udvm_reference_operand_memory.exit.thread, %.loopexit, %bb.i
  %.02419 = phi ptr [ null, %dissect_udvm_reference_operand_memory.exit.thread ], [ null, %bb.h ], [ %i.eq, %bb.i ], [ %i.dfn, %.loopexit ], [ null, %bb.sz ], [ null, %bb.fz ], [ null, %bb.fw ], [ null, %bb.ci ], [ null, %bb.br ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  ret ptr %.02419
}

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_reported_length(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @tvb_raw_text_add(ptr noundef nonnull %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr @proto_raw_sigcomp, align 4
  %i.c = tail call ptr @proto_tree_add_item(ptr noundef nonnull %1, i32 noundef %i.b, ptr noundef nonnull %0, i32 noundef 0, i32 noundef -1, i32 noundef 0)
  %i.d = load i32, ptr @ett_raw_text, align 4
  %i.e = tail call ptr @proto_item_add_subtree(ptr noundef %i.c, i32 noundef %i.d)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.012 = phi ptr [ %i.e, %bb.b ], [ null, %bb.a ]
  %i.f = tail call zeroext i1 @tvb_offset_exists(ptr noundef nonnull %0, i32 noundef 0)
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %.014 = phi i32 [ %i.k, %.lr.ph ], [ 0, %bb.c ] ; 3 uses
  %i.g = call zeroext i1 @tvb_find_line_end_remaining(ptr noundef nonnull %0, i32 noundef %.014, ptr noundef null, ptr noundef nonnull %i.a) ; 0 uses
  %i.h = load i32, ptr %i.a, align 4
  %i.i = sub i32 %i.h, %.014
  %i.j = call ptr @proto_tree_add_format_text(ptr noundef %.012, ptr noundef nonnull %0, i32 noundef %.014, i32 noundef %i.i) ; 0 uses
  %i.k = load i32, ptr %i.a, align 4              ; 2 uses
  %i.l = call zeroext i1 @tvb_offset_exists(ptr noundef nonnull %0, i32 noundef %i.k)
  br i1 %i.l, label %.lr.ph, label %._crit_edge, !llvm.loop !29

._crit_edge:                                      ; preds = %.lr.ph, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @col_append_str(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @col_set_fence(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare i32 @call_dissector(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare zeroext i16 @tvb_get_ntohs(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @expert_add_info_format(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @val_to_str_ext_const(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @col_append_fstr(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare void @proto_item_append_text(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @dissect_udvm_bytecode(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef range(i32 0, 1025) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 185 uses
  %i.b = alloca i16, align 2                      ; 195 uses
  %i.c = alloca i8, align 1                       ; 112 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store i32 0, ptr %i.a, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  store i16 0, ptr %i.b, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  %i.d = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef 0)
  %i.e = and i32 %i.d, 65535                      ; 3 uses
  %.not878 = icmp eq i32 %i.e, 0
  br i1 %.not878, label %.loopexit862, label %.lr.ph875

.lr.ph875:                                        ; preds = %bb.a
  %4 = add nsw i32 %i.e, -1                       ; 2 uses
  br label %.lr.ph877

.lr.ph877:                                        ; preds = %.lr.ph875, %.loopexit
  %.0876 = phi i32 [ 0, %.lr.ph875 ], [ %i.g, %.loopexit ]
  %.0826875 = phi i32 [ 0, %.lr.ph875 ], [ %.5, %.loopexit ] ; 5 uses
  %i.f = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.0826875)
  %i.g = add i32 %.0876, 1                        ; 3 uses
  %i.h = add nsw i32 %.0826875, %3                ; 10 uses
  %i.i = load i32, ptr @hf_sigcomp_udvm_instruction, align 4
  %i.j = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %2, i32 noundef %i.i, ptr noundef %0, i32 noundef %.0826875, i32 noundef 1, i32 noundef %i.g, ptr noundef @.str.540, i32 noundef %i.g, i32 noundef %i.h, i32 noundef %i.h) ; 2 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %proto_item_set_generated.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph877
  %i.k = getelementptr i8, ptr %i.j, i64 40
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %.not5.i = icmp eq ptr %i.l, null
  br i1 %.not5.i, label %proto_item_set_generated.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr i8, ptr %i.l, i64 28       ; 2 uses
  %i.n = load i32, ptr %i.m, align 4
  %i.o = or i32 %i.n, 2
  store i32 %i.o, ptr %i.m, align 4
  br label %proto_item_set_generated.exit

proto_item_set_generated.exit:                    ; preds = %.lr.ph877, %bb.b, %bb.c
  %i.p = load i32, ptr @hf_sigcomp_udvm_instr, align 4
  %i.q = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.p, ptr noundef %0, i32 noundef %.0826875, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.r = add nsw i32 %.0826875, 1                 ; 40 uses
  switch i8 %i.f, label %bb.bu [
    i8 1, label %bb.d
    i8 2, label %bb.g
    i8 3, label %bb.j
    i8 4, label %bb.k
    i8 5, label %bb.n
    i8 6, label %bb.q
    i8 7, label %bb.t
    i8 8, label %bb.w
    i8 9, label %bb.z
    i8 10, label %bb.ac
    i8 11, label %bb.af
    i8 12, label %bb.ag
    i8 13, label %bb.ah
    i8 14, label %bb.ai
    i8 15, label %bb.al
    i8 16, label %bb.am
    i8 17, label %bb.ap
    i8 18, label %bb.aq
    i8 19, label %bb.ar
    i8 20, label %bb.as
    i8 21, label %bb.at
    i8 22, label %bb.au
    i8 23, label %bb.av
    i8 24, label %bb.aw
    i8 25, label %.loopexit
    i8 26, label %bb.ax
    i8 27, label %bb.az
    i8 28, label %bb.ba
    i8 29, label %bb.bb
    i8 30, label %bb.bc
    i8 31, label %bb.bd
    i8 32, label %bb.be
    i8 33, label %bb.bf
    i8 34, label %bb.bg
    i8 35, label %bb.bj
  ]

bb.d:                                             ; preds = %proto_item_set_generated.exit
  %i.s = call fastcc i32 @dissect_udvm_reference_operand(ptr noundef %0, ptr noundef %2, i32 noundef %i.r, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) ; 2 uses
  %i.t = load i32, ptr %i.a, align 4              ; 2 uses
  %i.u = sub i32 %i.s, %i.t
  %i.v = load i32, ptr @hf_udvm_operand_1, align 4
  %i.w = load i16, ptr %i.b, align 2
  %i.x = zext i16 %i.w to i32
  %i.y = tail call ptr @proto_tree_add_uint(ptr noundef %2, i32 noundef %i.v, ptr noundef %0, i32 noundef %i.t, i32 noundef %i.u, i32 noundef %i.x) ; 0 uses
  %i.z = call fastcc i32 @dissect_udvm_multitype_operand(ptr noundef %0, ptr noundef %2, i32 noundef %i.s, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) ; 3 uses
  %i.aa = load i32, ptr %i.a, align 4             ; 3 uses
  %i.ab = sub i32 %i.z, %i.aa                     ; 2 uses
  %i.ac = load i8, ptr %i.c, align 1, !range !7, !noundef !8
  %i.ad = trunc nuw i8 %i.ac to i1
  %i.ae = load i16, ptr %i.b, align 2
  %i.af = zext i16 %i.ae to i32                   ; 2 uses
  br i1 %i.ad, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ag = load i32, ptr @hf_udvm_operand_2_addr, align 4
  %i.ah = tail call ptr @proto_tree_add_uint(ptr noundef %2, i32 noundef %i.ag, ptr noundef %0, i32 noundef %i.aa, i32 noundef %i.ab, i32 noundef %i.af) ; 0 uses
  br label %.loopexit

bb.f:                                             ; preds = %bb.d
  %i.ai = load i32, ptr @hf_udvm_operand_2, align 4
  %i.aj = tail call ptr @proto_tree_add_uint(ptr noundef %2, i32 noundef %i.ai, ptr noundef %0, i32 noundef %i.aa, i32 noundef %i.ab, i32 noundef %i.af) ; 0 uses
  br label %.loopexit

bb.g:                                             ; preds = %proto_item_set_generated.exit
  %i.ak = call fastcc i32 @dissect_udvm_reference_operand(ptr noundef %0, ptr noundef %2, i32 noundef %i.r, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) ; 2 uses
  %i.al = load i32, ptr %i.a, align 4             ; 2 uses
  %i.am = sub i32 %i.ak, %i.al
  %i.an = load i32, ptr @hf_udvm_operand_1, align 4
  %i.ao = load i16, ptr %i.b, align 2
  %i.ap = zext i16 %i.ao to i32
  %i.aq = tail call ptr @proto_tree_add_uint(ptr noundef %2, i32 noundef %i.an, ptr noundef %0, i32 noundef %i.al, i32 noundef %i.am, i32 noundef %i.ap) ; 0 uses
  %i.ar = call fastcc i32 @dissect_udvm_multitype_operand(ptr noundef %0, ptr noundef %2, i32 noundef %i.ak, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) ; 3 uses
  %i.as = load i32, ptr %i.a, align 4             ; 3 uses
  %i.at = sub i32 %i.ar, %i.as                    ; 2 uses
  %i.au = load i8, ptr %i.c, align 1, !range !7, !noundef !8
  %i.av = trunc nuw i8 %i.au to i1
  %i.aw = load i16, ptr %i.b, align 2
  %i.ax = zext i16 %i.aw to i32                   ; 2 uses
  br i1 %i.av, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ay = load i32, ptr @hf_udvm_operand_2_addr, align 4
  %i.az = tail call ptr @proto_tree_add_uint(ptr noundef %2, i32 noundef %i.ay, ptr noundef %0, i32 noundef %i.as, i32 noundef %i.at, i32 noundef %i.ax) ; 0 uses
  br label %.loopexit

bb.i:                                             ; preds = %bb.g
  %i.ba = load i32, ptr @hf_udvm_operand_2, align 4
  %i.bb = tail call ptr @proto_tree_add_uint(ptr noundef %2, i32 noundef %i.ba, ptr noundef %0, i32 noundef %i.as, i32 noundef %i.at, i32 noundef %i.ax) ; 0 uses
  br label %.loopexit

bb.j:                                             ; preds = %proto_item_set_generated.exit
  %i.bc = call fastcc i32 @dissect_udvm_reference_operand(ptr noundef %0, ptr noundef %2, i32 noundef %i.r, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) ; 2 uses
  %i.bd = load i32, ptr %i.a, align 4             ; 2 uses
  %i.be = sub i32 %i.bc, %i.bd
  %i.bf = load i32, ptr @hf_udvm_operand_1, align 4
  %i.bg = load i16, ptr %i.b, align 2
  %i.bh = zext i16 %i.bg to i32
  %i.bi = tail call ptr @proto_tree_add_uint(ptr noundef %2, i32 noundef %i.bf, ptr noundef %0, i32 noundef %i.bd, i32 noundef %i.be, i32 noundef %i.bh) ; 0 uses
  br label %.loopexit

bb.k:                                             ; preds = %proto_item_set_generated.exit
  %i.bj = call fastcc i32 @dissect_udvm_reference_operand(ptr noundef %0, ptr noundef %2, i32 noundef %i.r, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) ; 2 uses
  %i.bk = load i32, ptr %i.a, align 4             ; 2 uses
  %i.bl = sub i32 %i.bj, %i.bk
  %i.bm = load i32, ptr @hf_udvm_operand_1, align 4
  %i.bn = load i16, ptr %i.b, align 2
  %i.bo = zext i16 %i.bn to i32
  %i.bp = tail call ptr @proto_tree_add_uint(ptr noundef %2, i32 noundef %i.bm, ptr noundef %0, i32 noundef %i.bk, i32 noundef %i.bl, i32 noundef %i.bo) ; 0 uses
  %i.bq = call fastcc i32 @dissect_udvm_multitype_operand(ptr noundef %0, ptr noundef %2, i32 noundef %i.bj, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) ; 3 uses
  %i.br = load i32, ptr %i.a, align 4             ; 3 uses
  %i.bs = sub i32 %i.bq, %i.br                    ; 2 uses
  %i.bt = load i8, ptr %i.c, align 1, !range !7, !noundef !8
  %i.bu = trunc nuw i8 %i.bt to i1
  %i.bv = load i16, ptr %i.b, align 2
  %i.bw = zext i16 %i.bv to i32                   ; 2 uses
  br i1 %i.bu, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bx = load i32, ptr @hf_udvm_operand_2_addr, align 4
  %i.by = tail call ptr @proto_tree_add_uint(ptr noundef %2, i32 noundef %i.bx, ptr noundef %0, i32 noundef %i.br, i32 noundef %i.bs, i32 noundef %i.bw) ; 0 uses
  br label %.loopexit

bb.m:                                             ; preds = %bb.k
  %i.bz = load i32, ptr @hf_udvm_operand_2, align 4
  %i.ca = tail call ptr @proto_tree_add_uint(ptr noundef %2, i32 noundef %i.bz, ptr noundef %0, i32 noundef %i.br, i32 noundef %i.bs, i32 noundef %i.bw) ; 0 uses
  br label %.loopexit

bb.n:                                             ; preds = %proto_item_set_generated.exit
  %i.cb = call fastcc i32 @dissect_udvm_reference_operand(ptr noundef %0, ptr noundef %2, i32 noundef %i.r, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) ; 2 uses
  %i.cc = load i32, ptr %i.a, align 4             ; 2 uses
  %i.cd = sub i32 %i.cb, %i.cc
  %i.ce = load i32, ptr @hf_udvm_operand_1, align 4
  %i.cf = load i16, ptr %i.b, align 2
  %i.cg = zext i16 %i.cf to i32
  %i.ch = tail call ptr @proto_tree_add_uint(ptr noundef %2, i32 noundef %i.ce, ptr noundef %0, i32 noundef %i.cc, i32 noundef %i.cd, i32 noundef %i.cg) ; 0 uses
  %i.ci = call fastcc i32 @dissect_udvm_multitype_operand(ptr noundef %0, ptr noundef %2, i32 noundef %i.cb, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) ; 3 uses
  %i.cj = load i32, ptr %i.a, align 4             ; 3 uses
  %i.ck = sub i32 %i.ci, %i.cj                    ; 2 uses
  %i.cl = load i8, ptr %i.c, align 1, !range !7, !noundef !8
  %i.cm = trunc nuw i8 %i.cl to i1
  %i.cn = load i16, ptr %i.b, align 2
  %i.co = zext i16 %i.cn to i32                   ; 2 uses
  br i1 %i.cm, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cp = load i32, ptr @hf_udvm_operand_2_addr, align 4
  %i.cq = tail call ptr @proto_tree_add_uint(ptr noundef %2, i32 noundef %i.cp, ptr noundef %0, i32 noundef %i.cj, i32 noundef %i.ck, i32 noundef %i.co) ; 0 uses
  br label %.loopexit

bb.p:                                             ; preds = %bb.n
  %i.cr = load i32, ptr @hf_udvm_operand_2, align 4
  %i.cs = tail call ptr @proto_tree_add_uint(ptr noundef %2, i32 noundef %i.cr, ptr noundef %0, i32 noundef %i.cj, i32 noundef %i.ck, i32 noundef %i.co) ; 0 uses
  br label %.loopexit

bb.q:                                             ; preds = %proto_item_set_generated.exit
  %i.ct = call fastcc i32 @dissect_udvm_reference_operand(ptr noundef %0, ptr noundef %2, i32 noundef %i.r, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) ; 2 uses
  %i.cu = load i32, ptr %i.a, align 4             ; 2 uses
  %i.cv = sub i32 %i.ct, %i.cu
  %i.cw = load i32, ptr @hf_udvm_operand_1, align 4
  %i.cx = load i16, ptr %i.b, align 2
  %i.cy = zext i16 %i.cx to i32
  %i.cz = tail call ptr @proto_tree_add_uint(ptr noundef %2, i32 noundef %i.cw, ptr noundef %0, i32 noundef %i.cu, i32 noundef %i.cv, i32 noundef %i.cy) ; 0 uses
  %i.da = call fastcc i32 @dissect_udvm_multitype_operand(ptr noundef %0, ptr noundef %2, i32 noundef %i.ct, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) ; 3 uses
  %i.db = load i32, ptr %i.a, align 4             ; 3 uses
  %i.dc = sub i32 %i.da, %i.db                    ; 2 uses
  %i.dd = load i8, ptr %i.c, align 1, !range !7, !noundef !8
  %i.de = trunc nuw i8 %i.dd to i1
  %i.df = load i16, ptr %i.b, align 2
  %i.dg = zext i16 %i.df to i32                   ; 2 uses
  br i1 %i.de, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.dh = load i32, ptr @hf_udvm_operand_2_addr, align 4
end_hunk_0
begin_hunk_1_@dissect_udvm_bytecode:bb.a
  %i.ub = load i16, ptr %i.b, align 2
  %.tr = trunc i32 %i.h to i16
  %.narrow = add i16 %i.ub, %.tr                  ; 2 uses
  store i16 %.narrow, ptr %i.b, align 2
  %i.uc = load i32, ptr @hf_udvm_at_address, align 4
  %i.ud = zext i16 %.narrow to i32
  %i.ue = tail call ptr @proto_tree_add_uint(ptr noundef %2, i32 noundef %i.uc, ptr noundef %0, i32 noundef %i.tz, i32 noundef %i.ua, i32 noundef %i.ud) ; 0 uses
  %i.uf = call fastcc i32 @dissect_udvm_literal_operand(ptr noundef %0, ptr noundef %2, i32 noundef %i.ty, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) ; 3 uses
  %i.ug = load i32, ptr %i.a, align 4             ; 2 uses
  %i.uh = sub i32 %i.uf, %i.ug
  %i.ui = load i32, ptr @hf_udvm_literal_num, align 4
  %i.uj = load i16, ptr %i.b, align 2             ; 2 uses
  %i.uk = zext i16 %i.uj to i32                   ; 2 uses
  %i.ul = tail call ptr @proto_tree_add_uint(ptr noundef %2, i32 noundef %i.ui, ptr noundef %0, i32 noundef %i.ug, i32 noundef %i.uh, i32 noundef %i.uk) ; 0 uses
  %.not837863 = icmp eq i16 %i.uj, 0
  br i1 %.not837863, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.bc, %.lr.ph
  %.2865 = phi i32 [ %i.um, %.lr.ph ], [ %i.uk, %bb.bc ]
  %.3864 = phi i32 [ %i.vi, %.lr.ph ], [ %i.uf, %bb.bc ]
  %i.um = add nsw i32 %.2865, -1                  ; 2 uses
  %i.un = call fastcc i32 @dissect_udvm_multitype_operand(ptr noundef %0, ptr noundef %2, i32 noundef %.3864, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) ; 2 uses
  %i.uo = load i32, ptr %i.a, align 4             ; 2 uses
  %i.up = sub i32 %i.un, %i.uo
  %i.uq = load i32, ptr @hf_udvm_bits, align 4
  %i.ur = load i16, ptr %i.b, align 2
  %i.us = zext i16 %i.ur to i32
  %i.ut = tail call ptr @proto_tree_add_uint(ptr noundef %2, i32 noundef %i.uq, ptr noundef %0, i32 noundef %i.uo, i32 noundef %i.up, i32 noundef %i.us) ; 0 uses
  %i.uu = call fastcc i32 @dissect_udvm_multitype_operand(ptr noundef %0, ptr noundef %2, i32 noundef %i.un, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) ; 2 uses
  %i.uv = load i32, ptr %i.a, align 4             ; 2 uses
  %i.uw = sub i32 %i.uu, %i.uv
  %i.ux = load i32, ptr @hf_udvm_lower_bound, align 4
  %i.uy = load i16, ptr %i.b, align 2
  %i.uz = zext i16 %i.uy to i32
  %i.va = tail call ptr @proto_tree_add_uint(ptr noundef %2, i32 noundef %i.ux, ptr noundef %0, i32 noundef %i.uv, i32 noundef %i.uw, i32 noundef %i.uz) ; 0 uses
  %i.vb = call fastcc i32 @dissect_udvm_multitype_operand(ptr noundef %0, ptr noundef %2, i32 noundef %i.uu, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) ; 2 uses
  %i.vc = load i32, ptr %i.a, align 4             ; 2 uses
  %i.vd = sub i32 %i.vb, %i.vc
  %i.ve = load i32, ptr @hf_udvm_upper_bound, align 4
  %i.vf = load i16, ptr %i.b, align 2
  %i.vg = zext i16 %i.vf to i32
  %i.vh = tail call ptr @proto_tree_add_uint(ptr noundef %2, i32 noundef %i.ve, ptr noundef %0, i32 noundef %i.vc, i32 noundef %i.vd, i32 noundef %i.vg) ; 0 uses
  %i.vi = call fastcc i32 @dissect_udvm_multitype_operand(ptr noundef %0, ptr noundef %2, i32 noundef %i.vb, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) ; 3 uses
  %i.vj = load i32, ptr %i.a, align 4             ; 2 uses
  %i.vk = sub i32 %i.vi, %i.vj
  %i.vl = load i32, ptr @hf_udvm_uncompressed, align 4
  %i.vm = load i16, ptr %i.b, align 2
  %i.vn = zext i16 %i.vm to i32
  %i.vo = tail call ptr @proto_tree_add_uint(ptr noundef %2, i32 noundef %i.vl, ptr noundef %0, i32 noundef %i.vj, i32 noundef %i.vk, i32 noundef %i.vn) ; 0 uses
  %.not837 = icmp eq i32 %i.um, 0
  br i1 %.not837, label %.loopexit, label %.lr.ph, !llvm.loop !32

bb.bd:                                            ; preds = %proto_item_set_generated.exit
  %i.vp = call fastcc i32 @dissect_udvm_multitype_operand(ptr noundef %0, ptr noundef %2, i32 noundef %i.r, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) ; 2 uses
  %i.vq = load i32, ptr %i.a, align 4             ; 2 uses
  %i.vr = sub i32 %i.vp, %i.vq
  %i.vs = load i32, ptr @hf_partial_identifier_start, align 4
  %i.vt = load i16, ptr %i.b, align 2
  %i.vu = zext i16 %i.vt to i32
  %i.vv = tail call ptr @proto_tree_add_uint(ptr noundef %2, i32 noundef %i.vs, ptr noundef %0, i32 noundef %i.vq, i32 noundef %i.vr, i32 noundef %i.vu) ; 0 uses
  %i.vw = call fastcc i32 @dissect_udvm_multitype_operand(ptr noundef %0, ptr noundef %2, i32 noundef %i.vp, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) ; 2 uses
  %i.vx = load i32, ptr %i.a, align 4             ; 2 uses
  %i.vy = sub i32 %i.vw, %i.vx
  %i.vz = load i32, ptr @hf_partial_identifier_length, align 4
  %i.wa = load i16, ptr %i.b, align 2
  %i.wb = zext i16 %i.wa to i32
  %i.wc = tail call ptr @proto_tree_add_uint(ptr noundef %2, i32 noundef %i.vz, ptr noundef %0, i32 noundef %i.vx, i32 noundef %i.vy, i32 noundef %i.wb) ; 0 uses
  %i.wd = call fastcc i32 @dissect_udvm_multitype_operand(ptr noundef %0, ptr noundef %2, i32 noundef %i.vw, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) ; 2 uses
  %i.we = load i32, ptr %i.a, align 4             ; 2 uses
  %i.wf = sub i32 %i.wd, %i.we
  %i.wg = load i32, ptr @hf_state_begin, align 4
  %i.wh = load i16, ptr %i.b, align 2
  %i.wi = zext i16 %i.wh to i32
  %i.wj = tail call ptr @proto_tree_add_uint(ptr noundef %2, i32 noundef %i.wg, ptr noundef %0, i32 noundef %i.we, i32 noundef %i.wf, i32 noundef %i.wi) ; 0 uses
  %i.wk = call fastcc i32 @dissect_udvm_multitype_operand(ptr noundef %0, ptr noundef %2, i32 noundef %i.wd, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) ; 2 uses
  %i.wl = load i32, ptr %i.a, align 4             ; 2 uses
  %i.wm = sub i32 %i.wk, %i.wl
  %i.wn = load i8, ptr %i.c, align 1, !range !7, !noundef !8
  %i.wo = trunc nuw i8 %i.wn to i1
  %i.wp = load i16, ptr %i.b, align 2
  %i.wq = zext i16 %i.wp to i32
  %hf_udvm_state_length_addr.val941 = load i32, ptr @hf_udvm_state_length_addr, align 4
  %hf_udvm_state_length.val942 = load i32, ptr @hf_udvm_state_length, align 4
  %i.wr = select i1 %i.wo, i32 %hf_udvm_state_length_addr.val941, i32 %hf_udvm_state_length.val942
  %i.ws = tail call ptr @proto_tree_add_uint(ptr noundef %2, i32 noundef %i.wr, ptr noundef %0, i32 noundef %i.wl, i32 noundef %i.wm, i32 noundef %i.wq) ; 0 uses
  %i.wt = call fastcc i32 @dissect_udvm_multitype_operand(ptr noundef %0, ptr noundef %2, i32 noundef %i.wk, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) ; 2 uses
  %i.wu = load i32, ptr %i.a, align 4             ; 2 uses
  %i.wv = sub i32 %i.wt, %i.wu
  %i.ww = load i8, ptr %i.c, align 1, !range !7, !noundef !8
  %i.wx = trunc nuw i8 %i.ww to i1
  %hf_udvm_state_address_addr.val943 = load i32, ptr @hf_udvm_state_address_addr, align 4
  %hf_udvm_state_address.val944 = load i32, ptr @hf_udvm_state_address, align 4
  %i.wy = select i1 %i.wx, i32 %hf_udvm_state_address_addr.val943, i32 %hf_udvm_state_address.val944
  %i.wz = load i16, ptr %i.b, align 2
  %i.xa = zext i16 %i.wz to i32
  %i.xb = tail call ptr @proto_tree_add_uint(ptr noundef %2, i32 noundef %i.wy, ptr noundef %0, i32 noundef %i.wu, i32 noundef %i.wv, i32 noundef %i.xa) ; 0 uses
  %i.xc = call fastcc i32 @dissect_udvm_multitype_operand(ptr noundef %0, ptr noundef %2, i32 noundef %i.wt, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) ; 2 uses
  %i.xd = load i32, ptr %i.a, align 4             ; 2 uses
  %i.xe = sub i32 %i.xc, %i.xd
  %i.xf = load i32, ptr @hf_udvm_state_instr, align 4
  %i.xg = load i16, ptr %i.b, align 2
  %i.xh = zext i16 %i.xg to i32
  %i.xi = tail call ptr @proto_tree_add_uint(ptr noundef %2, i32 noundef %i.xf, ptr noundef %0, i32 noundef %i.xd, i32 noundef %i.xe, i32 noundef %i.xh) ; 0 uses
  br label %.loopexit

bb.be:                                            ; preds = %proto_item_set_generated.exit
  %i.xj = call fastcc i32 @dissect_udvm_multitype_operand(ptr noundef %0, ptr noundef %2, i32 noundef %i.r, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) ; 2 uses
  %i.xk = load i32, ptr %i.a, align 4             ; 2 uses
  %i.xl = sub i32 %i.xj, %i.xk
  %i.xm = load i8, ptr %i.c, align 1, !range !7, !noundef !8
  %i.xn = trunc nuw i8 %i.xm to i1
  %i.xo = load i16, ptr %i.b, align 2
  %i.xp = zext i16 %i.xo to i32
  %hf_udvm_state_length_addr.val937 = load i32, ptr @hf_udvm_state_length_addr, align 4
  %hf_udvm_state_length.val938 = load i32, ptr @hf_udvm_state_length, align 4
  %i.xq = select i1 %i.xn, i32 %hf_udvm_state_length_addr.val937, i32 %hf_udvm_state_length.val938
  %i.xr = tail call ptr @proto_tree_add_uint(ptr noundef %2, i32 noundef %i.xq, ptr noundef %0, i32 noundef %i.xk, i32 noundef %i.xl, i32 noundef %i.xp) ; 0 uses
  %i.xs = call fastcc i32 @dissect_udvm_multitype_operand(ptr noundef %0, ptr noundef %2, i32 noundef %i.xj, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) ; 2 uses
  %i.xt = load i32, ptr %i.a, align 4             ; 2 uses
  %i.xu = sub i32 %i.xs, %i.xt
  %i.xv = load i8, ptr %i.c, align 1, !range !7, !noundef !8
  %i.xw = trunc nuw i8 %i.xv to i1
  %hf_udvm_state_address_addr.val939 = load i32, ptr @hf_udvm_state_address_addr, align 4
  %hf_udvm_state_address.val940 = load i32, ptr @hf_udvm_state_address, align 4
  %i.xx = select i1 %i.xw, i32 %hf_udvm_state_address_addr.val939, i32 %hf_udvm_state_address.val940
  %i.xy = load i16, ptr %i.b, align 2
  %i.xz = zext i16 %i.xy to i32
  %i.ya = tail call ptr @proto_tree_add_uint(ptr noundef %2, i32 noundef %i.xx, ptr noundef %0, i32 noundef %i.xt, i32 noundef %i.xu, i32 noundef %i.xz) ; 0 uses
  %i.yb = call fastcc i32 @dissect_udvm_multitype_operand(ptr noundef %0, ptr noundef %2, i32 noundef %i.xs, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) ; 2 uses
  %i.yc = load i32, ptr %i.a, align 4             ; 2 uses
  %i.yd = sub i32 %i.yb, %i.yc
  %i.ye = load i32, ptr @hf_udvm_state_instr, align 4
  %i.yf = load i16, ptr %i.b, align 2
  %i.yg = zext i16 %i.yf to i32
  %i.yh = tail call ptr @proto_tree_add_uint(ptr noundef %2, i32 noundef %i.ye, ptr noundef %0, i32 noundef %i.yc, i32 noundef %i.yd, i32 noundef %i.yg) ; 0 uses
  %i.yi = call fastcc i32 @dissect_udvm_multitype_operand(ptr noundef %0, ptr noundef %2, i32 noundef %i.yb, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) ; 2 uses
  %i.yj = load i32, ptr %i.a, align 4             ; 2 uses
  %i.yk = sub i32 %i.yi, %i.yj
  %i.yl = load i32, ptr @hf_udvm_min_acc_len, align 4
  %i.ym = load i16, ptr %i.b, align 2
  %i.yn = zext i16 %i.ym to i32
  %i.yo = tail call ptr @proto_tree_add_uint(ptr noundef %2, i32 noundef %i.yl, ptr noundef %0, i32 noundef %i.yj, i32 noundef %i.yk, i32 noundef %i.yn) ; 0 uses
  %i.yp = call fastcc i32 @dissect_udvm_multitype_operand(ptr noundef %0, ptr noundef %2, i32 noundef %i.yi, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) ; 2 uses
  %i.yq = load i32, ptr %i.a, align 4             ; 2 uses
  %i.yr = sub i32 %i.yp, %i.yq
  %i.ys = load i32, ptr @hf_udvm_state_ret_pri, align 4
  %i.yt = load i16, ptr %i.b, align 2
  %i.yu = zext i16 %i.yt to i32
  %i.yv = tail call ptr @proto_tree_add_uint(ptr noundef %2, i32 noundef %i.ys, ptr noundef %0, i32 noundef %i.yq, i32 noundef %i.yr, i32 noundef %i.yu) ; 0 uses
  br label %.loopexit

bb.bf:                                            ; preds = %proto_item_set_generated.exit
  %i.yw = call fastcc i32 @dissect_udvm_multitype_operand(ptr noundef %0, ptr noundef %2, i32 noundef %i.r, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) ; 2 uses
  %i.yx = load i32, ptr %i.a, align 4             ; 2 uses
  %i.yy = sub i32 %i.yw, %i.yx
  %i.yz = load i32, ptr @hf_partial_identifier_start, align 4
  %i.za = load i16, ptr %i.b, align 2
  %i.zb = zext i16 %i.za to i32
  %i.zc = tail call ptr @proto_tree_add_uint(ptr noundef %2, i32 noundef %i.yz, ptr noundef %0, i32 noundef %i.yx, i32 noundef %i.yy, i32 noundef %i.zb) ; 0 uses
  %i.zd = call fastcc i32 @dissect_udvm_multitype_operand(ptr noundef %0, ptr noundef %2, i32 noundef %i.yw, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) ; 2 uses
  %i.ze = load i32, ptr %i.a, align 4             ; 2 uses
  %i.zf = sub i32 %i.zd, %i.ze
  %i.zg = load i32, ptr @hf_partial_identifier_length, align 4
  %i.zh = load i16, ptr %i.b, align 2
  %i.zi = zext i16 %i.zh to i32
  %i.zj = tail call ptr @proto_tree_add_uint(ptr noundef %2, i32 noundef %i.zg, ptr noundef %0, i32 noundef %i.ze, i32 noundef %i.zf, i32 noundef %i.zi) ; 0 uses
  br label %.loopexit

bb.bg:                                            ; preds = %proto_item_set_generated.exit
  %i.zk = call fastcc i32 @dissect_udvm_multitype_operand(ptr noundef %0, ptr noundef %2, i32 noundef %i.r, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) ; 2 uses
  %i.zl = load i32, ptr %i.a, align 4             ; 2 uses
  %i.zm = sub i32 %i.zk, %i.zl
  %i.zn = load i8, ptr %i.c, align 1, !range !7, !noundef !8
  %i.zo = trunc nuw i8 %i.zn to i1
  %i.zp = load i16, ptr %i.b, align 2
  %i.zq = zext i16 %i.zp to i32
  %hf_udvm_addr_output_start.val = load i32, ptr @hf_udvm_addr_output_start, align 4
  %hf_udvm_output_start.val = load i32, ptr @hf_udvm_output_start, align 4
  %i.zr = select i1 %i.zo, i32 %hf_udvm_addr_output_start.val, i32 %hf_udvm_output_start.val
  %i.zs = tail call ptr @proto_tree_add_uint(ptr noundef %2, i32 noundef %i.zr, ptr noundef %0, i32 noundef %i.zl, i32 noundef %i.zm, i32 noundef %i.zq) ; 0 uses
  %i.zt = call fastcc i32 @dissect_udvm_multitype_operand(ptr noundef %0, ptr noundef %2, i32 noundef %i.zk, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) ; 3 uses
  %i.zu = load i32, ptr %i.a, align 4             ; 3 uses
  %i.zv = sub i32 %i.zt, %i.zu                    ; 2 uses
  %i.zw = load i8, ptr %i.c, align 1, !range !7, !noundef !8
  %i.zx = trunc nuw i8 %i.zw to i1
  %i.zy = load i16, ptr %i.b, align 2
  %i.zz = zext i16 %i.zy to i32                   ; 2 uses
  br i1 %i.zx, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.aaa = load i32, ptr @hf_udvm_output_length_addr, align 4
  %i.aab = tail call ptr @proto_tree_add_uint(ptr noundef %2, i32 noundef %i.aaa, ptr noundef %0, i32 noundef %i.zu, i32 noundef %i.zv, i32 noundef %i.zz) ; 0 uses
  br label %.loopexit

bb.bi:                                            ; preds = %bb.bg
  %i.aac = load i32, ptr @hf_udvm_output_length, align 4
  %i.aad = tail call ptr @proto_tree_add_uint(ptr noundef %2, i32 noundef %i.aac, ptr noundef %0, i32 noundef %i.zu, i32 noundef %i.zv, i32 noundef %i.zz) ; 0 uses
  br label %.loopexit

bb.bj:                                            ; preds = %proto_item_set_generated.exit
  %5 = icmp slt i32 %4, %i.r
  br i1 %5, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.aae = tail call ptr @proto_tree_add_expert(ptr noundef %2, ptr noundef %1, ptr noundef @ei_sigcomp_all_remaining_parameters_zero, ptr noundef %0, i32 noundef 0, i32 noundef -1) ; 0 uses
  br label %.loopexit862

bb.bl:                                            ; preds = %bb.bj
  %i.aaf = call fastcc i32 @dissect_udvm_multitype_operand(ptr noundef %0, ptr noundef %2, i32 noundef %i.r, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) ; 4 uses
  %i.aag = load i32, ptr %i.a, align 4            ; 2 uses
  %i.aah = sub i32 %i.aaf, %i.aag
  %i.aai = load i32, ptr @hf_udvm_req_feedback_loc, align 4
  %i.aaj = load i16, ptr %i.b, align 2
  %i.aak = zext i16 %i.aaj to i32
  %i.aal = tail call ptr @proto_tree_add_uint(ptr noundef %2, i32 noundef %i.aai, ptr noundef %0, i32 noundef %i.aag, i32 noundef %i.aah, i32 noundef %i.aak) ; 0 uses
  %6 = icmp slt i32 %4, %i.aaf
  br i1 %6, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.aam = add nsw i32 %i.aaf, -1
  %i.aan = tail call ptr @proto_tree_add_expert_remaining(ptr noundef %2, ptr noundef %1, ptr noundef @ei_sigcomp_all_remaining_parameters_zero, ptr noundef %0, i32 noundef %i.aam) ; 0 uses
  br label %.loopexit862

bb.bn:                                            ; preds = %bb.bl
  %i.aao = call fastcc i32 @dissect_udvm_multitype_operand(ptr noundef %0, ptr noundef %2, i32 noundef %i.aaf, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) ; 2 uses
  %i.aap = load i32, ptr %i.a, align 4            ; 2 uses
  %i.aaq = sub i32 %i.aao, %i.aap
  %i.aar = load i32, ptr @hf_udvm_ret_param_loc, align 4
  %i.aas = load i16, ptr %i.b, align 2
  %i.aat = zext i16 %i.aas to i32
  %i.aau = tail call ptr @proto_tree_add_uint(ptr noundef %2, i32 noundef %i.aar, ptr noundef %0, i32 noundef %i.aap, i32 noundef %i.aaq, i32 noundef %i.aat) ; 0 uses
  %i.aav = call fastcc i32 @dissect_udvm_multitype_operand(ptr noundef %0, ptr noundef %2, i32 noundef %i.aao, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) ; 2 uses
  %i.aaw = load i32, ptr %i.a, align 4            ; 2 uses
  %i.aax = sub i32 %i.aav, %i.aaw
  %i.aay = load i8, ptr %i.c, align 1, !range !7, !noundef !8
  %i.aaz = trunc nuw i8 %i.aay to i1
  %i.aba = load i16, ptr %i.b, align 2
  %i.abb = zext i16 %i.aba to i32
  %hf_udvm_state_length_addr.val = load i32, ptr @hf_udvm_state_length_addr, align 4
  %hf_udvm_state_length.val = load i32, ptr @hf_udvm_state_length, align 4
  %i.abc = select i1 %i.aaz, i32 %hf_udvm_state_length_addr.val, i32 %hf_udvm_state_length.val
  %i.abd = tail call ptr @proto_tree_add_uint(ptr noundef %2, i32 noundef %i.abc, ptr noundef %0, i32 noundef %i.aaw, i32 noundef %i.aax, i32 noundef %i.abb) ; 0 uses
  %i.abe = call fastcc i32 @dissect_udvm_multitype_operand(ptr noundef %0, ptr noundef %2, i32 noundef %i.aav, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) ; 2 uses
  %i.abf = load i32, ptr %i.a, align 4            ; 2 uses
  %i.abg = sub i32 %i.abe, %i.abf
  %i.abh = load i8, ptr %i.c, align 1, !range !7, !noundef !8
  %i.abi = trunc nuw i8 %i.abh to i1
  %hf_udvm_state_address_addr.val = load i32, ptr @hf_udvm_state_address_addr, align 4
  %hf_udvm_state_address.val = load i32, ptr @hf_udvm_state_address, align 4
  %i.abj = select i1 %i.abi, i32 %hf_udvm_state_address_addr.val, i32 %hf_udvm_state_address.val
  %i.abk = load i16, ptr %i.b, align 2
  %i.abl = zext i16 %i.abk to i32
  %i.abm = tail call ptr @proto_tree_add_uint(ptr noundef %2, i32 noundef %i.abj, ptr noundef %0, i32 noundef %i.abf, i32 noundef %i.abg, i32 noundef %i.abl) ; 0 uses
  %i.abn = call fastcc i32 @dissect_udvm_multitype_operand(ptr noundef %0, ptr noundef %2, i32 noundef %i.abe, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) ; 2 uses
  %i.abo = load i32, ptr %i.a, align 4            ; 2 uses
  %i.abp = sub i32 %i.abn, %i.abo
  %i.abq = load i32, ptr @hf_udvm_state_instr, align 4
  %i.abr = load i16, ptr %i.b, align 2
  %i.abs = zext i16 %i.abr to i32
  %i.abt = tail call ptr @proto_tree_add_uint(ptr noundef %2, i32 noundef %i.abq, ptr noundef %0, i32 noundef %i.abo, i32 noundef %i.abp, i32 noundef %i.abs) ; 0 uses
  %i.abu = call fastcc i32 @dissect_udvm_multitype_operand(ptr noundef %0, ptr noundef %2, i32 noundef %i.abn, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) ; 7 uses
  %i.abv = load i32, ptr %i.a, align 4            ; 2 uses
  %i.abw = sub i32 %i.abu, %i.abv
  %i.abx = load i32, ptr @hf_udvm_min_acc_len, align 4
  %i.aby = load i16, ptr %i.b, align 2
  %i.abz = zext i16 %i.aby to i32
  %i.aca = tail call ptr @proto_tree_add_uint(ptr noundef %2, i32 noundef %i.abx, ptr noundef %0, i32 noundef %i.abv, i32 noundef %i.abw, i32 noundef %i.abz) ; 0 uses
  %i.acb = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.abu)
  %.not835 = icmp eq i32 %i.acb, 0
  br i1 %.not835, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.acc = call fastcc i32 @dissect_udvm_multitype_operand(ptr noundef %0, ptr noundef %2, i32 noundef %i.abu, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) ; 2 uses
  %i.acd = load i32, ptr %i.a, align 4            ; 2 uses
  %i.ace = sub i32 %i.acc, %i.acd
  %i.acf = load i32, ptr @hf_udvm_state_ret_pri, align 4
  %i.acg = load i16, ptr %i.b, align 2
  %i.ach = zext i16 %i.acg to i32
  %i.aci = tail call ptr @proto_tree_add_uint(ptr noundef %2, i32 noundef %i.acf, ptr noundef %0, i32 noundef %i.acd, i32 noundef %i.ace, i32 noundef %i.ach) ; 0 uses
  br label %proto_item_set_generated.exit859

bb.bp:                                            ; preds = %bb.bn
  %i.acj = load i32, ptr @hf_udvm_state_ret_pri, align 4
  %i.ack = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %2, i32 noundef %i.acj, ptr noundef %0, i32 noundef %i.abu, i32 noundef 1, i32 noundef 0, ptr noundef @.str.541) ; 2 uses
  %.not.i857 = icmp eq ptr %i.ack, null
  br i1 %.not.i857, label %proto_item_set_generated.exit859, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.acl = getelementptr i8, ptr %i.ack, i64 40
  %i.acm = load ptr, ptr %i.acl, align 8          ; 2 uses
  %.not5.i858 = icmp eq ptr %i.acm, null
  br i1 %.not5.i858, label %proto_item_set_generated.exit859, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.acn = getelementptr i8, ptr %i.acm, i64 28   ; 2 uses
  %i.aco = load i32, ptr %i.acn, align 4
  %i.acp = or i32 %i.aco, 2
  store i32 %i.acp, ptr %i.acn, align 4
  br label %proto_item_set_generated.exit859

proto_item_set_generated.exit859:                 ; preds = %bb.br, %bb.bq, %bb.bp, %bb.bo
  %.4 = phi i32 [ %i.acc, %bb.bo ], [ %i.abu, %bb.bp ], [ %i.abu, %bb.bq ], [ %i.abu, %bb.br ] ; 6 uses
  %i.acq = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %.4)
  %.not836 = icmp eq i32 %i.acq, 0
  br i1 %.not836, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %proto_item_set_generated.exit859
  %i.acr = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %.4) ; 2 uses
  %i.acs = add i32 %.4, %3                        ; 2 uses
  %i.act = load i32, ptr @hf_sigcomp_remaining_bytes, align 4
  %i.acu = tail call ptr (ptr, i32, ptr, i32, i32, ptr, ptr, ...) @proto_tree_add_bytes_format(ptr noundef %2, i32 noundef %i.act, ptr noundef %0, i32 noundef %.4, i32 noundef %i.acr, ptr noundef null, ptr noundef @.str.542, i32 noundef %i.acr, i32 noundef %i.acs, i32 noundef %i.acs) ; 0 uses
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %proto_item_set_generated.exit859
  %i.acv = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %.4)
  %i.acw = add i32 %i.acv, %.4
  br label %.loopexit

bb.bu:                                            ; preds = %proto_item_set_generated.exit
  %i.acx = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %i.r)
  %i.acy = add i32 %i.acx, %i.r
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.ay, %.lr.ph873, %bb.bc, %bb.ax, %bb.al, %bb.bh, %bb.bi, %bb.an, %bb.ao, %bb.aj, %bb.ak, %bb.ad, %bb.ae, %bb.aa, %bb.ab, %bb.x, %bb.y, %bb.u, %bb.v, %bb.r, %bb.s, %bb.o, %bb.p, %bb.l, %bb.m, %bb.h, %bb.i, %bb.e, %bb.f, %bb.bu, %bb.bt, %bb.bf, %bb.be, %bb.bd, %bb.bb, %bb.ba, %bb.az, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ah, %bb.ag, %bb.af, %bb.j, %proto_item_set_generated.exit
  %.5 = phi i32 [ %i.acy, %bb.bu ], [ %i.z, %bb.e ], [ %i.z, %bb.f ], [ %i.ar, %bb.h ], [ %i.ar, %bb.i ], [ %i.bc, %bb.j ], [ %i.bq, %bb.l ], [ %i.bq, %bb.m ], [ %i.ci, %bb.o ], [ %i.ci, %bb.p ], [ %i.da, %bb.r ], [ %i.da, %bb.s ], [ %i.ds, %bb.u ], [ %i.ds, %bb.v ], [ %i.ek, %bb.x ], [ %i.ek, %bb.y ], [ %i.fc, %bb.aa ], [ %i.fc, %bb.ab ], [ %i.fu, %bb.ad ], [ %i.fu, %bb.ae ], [ %i.gg, %bb.af ], [ %i.gi, %bb.ag ], [ %i.gz, %bb.ah ], [ %i.hn, %bb.aj ], [ %i.hn, %bb.ak ], [ %i.acw, %bb.bt ], [ %i.ix, %bb.an ], [ %i.ix, %bb.ao ], [ %i.ji, %bb.ap ], [ %i.kf, %bb.aq ], [ %i.lc, %bb.ar ], [ %i.mb, %bb.as ], [ %i.nf, %bb.at ], [ %i.nm, %bb.au ], [ %i.oz, %bb.av ], [ %i.pg, %bb.aw ], [ %i.r, %proto_item_set_generated.exit ], [ %i.qe, %bb.ay ], [ %i.rk, %bb.az ], [ %i.sj, %bb.ba ], [ %i.ti, %bb.bb ], [ %i.in, %.lr.ph873 ], [ %i.xc, %bb.bd ], [ %i.yp, %bb.be ], [ %i.zd, %bb.bf ], [ %i.zt, %bb.bh ], [ %i.zt, %bb.bi ], [ %i.if, %bb.al ], [ %i.pu, %bb.ax ], [ %i.uf, %bb.bc ], [ %i.vi, %.lr.ph ] ; 2 uses
  %i.acz = icmp sgt i32 %i.e, %.5
  br i1 %i.acz, label %.lr.ph877, label %.loopexit862, !llvm.loop !33

.loopexit862:                                     ; preds = %.loopexit, %bb.a, %bb.bm, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare ptr @g_hash_table_lookup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_uint_format(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(1)
declare noalias ptr @wmem_alloc(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_expert_remaining(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: readwrite) uwtable
define internal fastcc range(i32 -1, 65539) i32 @decode_udvm_multitype_operand(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) initializes((0, 2)) %2) unnamed_addr #4 {
bb.a:
  store i16 0, ptr %2, align 2
  %i.a = icmp ugt i32 %1, 65535
  br i1 %i.a, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = zext nneg i32 %1 to i64
  %i.c = getelementptr i8, ptr %0, i64 %i.b
  %i.d = load i8, ptr %i.c, align 1               ; 7 uses
  %i.e = zext i8 %i.d to i32                      ; 9 uses
  %i.f = lshr i32 %i.e, 6
  switch i32 %i.f, label %default.unreachable107 [
    i32 0, label %bb.c
    i32 1, label %bb.d
    i32 2, label %bb.e
    i32 3, label %bb.p
  ]

bb.c:                                             ; preds = %bb.b
  %i.g = zext i8 %i.d to i16
  store i16 %i.g, ptr %2, align 2
  %i.h = add nuw nsw i32 %1, 1
  br label %bb.s

bb.d:                                             ; preds = %bb.b
  %.tr = zext i8 %i.d to i64
  %i.i = shl nuw nsw i64 %.tr, 1
  %i.j = and i64 %i.i, 126
  %i.k = getelementptr i8, ptr %0, i64 %i.j       ; 2 uses
  %i.l = load i8, ptr %i.k, align 1
  %i.m = zext i8 %i.l to i16
  %i.n = shl nuw i16 %i.m, 8
  %i.o = getelementptr i8, ptr %i.k, i64 1
  %i.p = load i8, ptr %i.o, align 1
  %i.q = zext i8 %i.p to i16
  %i.r = or disjoint i16 %i.n, %i.q
  store i16 %i.r, ptr %2, align 2
  %i.s = add nuw nsw i32 %1, 1
  br label %bb.s

bb.e:                                             ; preds = %bb.b
  %.mask = and i32 %i.e, 224
  %i.t = icmp eq i32 %.mask, 160
  br i1 %i.t, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.u = and i8 %i.d, 31
  %i.v = zext nneg i8 %i.u to i16
  %i.w = shl nuw nsw i16 %i.v, 8
  %i.x = add nuw nsw i32 %1, 1
  %i.y = and i32 %i.x, 65535
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = getelementptr i8, ptr %0, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1
  %i.ac = zext i8 %i.ab to i16
  %i.ad = or disjoint i16 %i.w, %i.ac
  store i16 %i.ad, ptr %2, align 2
  %i.ae = add nuw nsw i32 %1, 2
  br label %bb.s

bb.g:                                             ; preds = %bb.e
  %.mask103 = and i32 %i.e, 240
  %i.af = icmp eq i32 %.mask103, 144
  br i1 %i.af, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ag = zext i8 %i.d to i16
  %i.ah = shl nuw i16 %i.ag, 8
end_hunk_1
