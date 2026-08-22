Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hdf5/original/H5HFhdr?download=true
inline.NumInlined: 11
inline.NumDeleted: 4
begin_hunk_0_@H5HF__hdr_update_iter:bb.a
  %i.ec = load ptr, ptr %i.a, align 8, !tbaa !82
  %i.ed = load i32, ptr %i.c, align 4, !tbaa !81
  %i.ee = call i32 @H5HF__man_iblock_create(ptr noundef nonnull %0, ptr noundef %i.ec, i32 noundef %i.ed, i32 noundef %i.cw, i32 noundef %i.cw, ptr noundef nonnull %i.e) #6
  %i.ef = icmp slt i32 %i.ee, 0
  br i1 %i.ef, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.eg = load i64, ptr @H5E_HEAP_g, align 8, !tbaa !13
  %i.eh = load i64, ptr @H5E_CANTALLOC_g, align 8, !tbaa !13
  %i.ei = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5HF__hdr_update_iter, i32 noundef 1021, i64 noundef %i.eg, i64 noundef %i.eh, ptr noundef nonnull @.str.39) #6 ; 0 uses
  br label %.thread118

bb.af:                                            ; preds = %bb.ad
  %i.ej = load i64, ptr %i.e, align 8, !tbaa !13
  %i.ek = load ptr, ptr %i.a, align 8, !tbaa !82
  %i.el = load i32, ptr %i.c, align 4, !tbaa !81
  %i.em = call ptr @H5HF__man_iblock_protect(ptr noundef nonnull %0, i64 noundef %i.ej, i32 noundef %i.cw, ptr noundef %i.ek, i32 noundef %i.el, i1 noundef zeroext false, i32 noundef 0, ptr noundef nonnull %i.d) #6 ; 4 uses
  %i.en = icmp eq ptr %i.em, null
  br i1 %i.en, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.eo = load i64, ptr @H5E_HEAP_g, align 8, !tbaa !13
  %i.ep = load i64, ptr @H5E_CANTPROTECT_g, align 8, !tbaa !13
  %i.eq = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5HF__hdr_update_iter, i32 noundef 1028, i64 noundef %i.eo, i64 noundef %i.ep, ptr noundef nonnull @.str.40) #6 ; 0 uses
  br label %.thread118

bb.ah:                                            ; preds = %bb.af
  %i.er = call i32 @H5HF__man_iter_down(ptr noundef nonnull %i.v, ptr noundef nonnull %i.em) #6
  %i.es = icmp slt i32 %i.er, 0
  br i1 %i.es, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.et = load i64, ptr @H5E_HEAP_g, align 8, !tbaa !13
  %i.eu = load i64, ptr @H5E_CANTNEXT_g, align 8, !tbaa !13
  %i.ev = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5HF__hdr_update_iter, i32 noundef 1033, i64 noundef %i.et, i64 noundef %i.eu, ptr noundef nonnull @.str.37) #6 ; 0 uses
  br label %.thread118

bb.aj:                                            ; preds = %bb.ah
  %i.ew = load i64, ptr %i.be, align 8, !tbaa !91
  %i.ex = icmp ugt i64 %1, %i.ew
  br i1 %i.ex, label %bb.ak, label %.thread114

bb.ak:                                            ; preds = %bb.aj
  %i.ey = load i32, ptr %i.l, align 8, !tbaa !51
  %i.ez = mul i32 %i.ey, %i.u
  %i.fa = call i32 @H5HF__hdr_skip_blocks(ptr noundef nonnull %0, ptr noundef nonnull %i.em, i32 noundef 0, i32 noundef %i.ez)
  %i.fb = icmp sgt i32 %i.fa, -1
  br i1 %i.fb, label %.thread114, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fc = load i64, ptr @H5E_HEAP_g, align 8, !tbaa !13
  %i.fd = load i64, ptr @H5E_CANTDEC_g, align 8, !tbaa !13
  %i.fe = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5HF__hdr_update_iter, i32 noundef 1045, i64 noundef %i.fc, i64 noundef %i.fd, ptr noundef nonnull @.str.35) #6 ; 0 uses
  br label %.thread118

.thread114:                                       ; preds = %bb.ak, %bb.aj
  %i.ff = load i8, ptr %i.d, align 1, !tbaa !8, !range !10, !noundef !11
  %i.fg = trunc nuw i8 %i.ff to i1
  %i.fh = call i32 @H5HF__man_iblock_unprotect(ptr noundef nonnull %i.em, i32 noundef 0, i1 noundef zeroext %i.fg) #6
  %i.fi = icmp slt i32 %i.fh, 0
  br i1 %i.fi, label %bb.am, label %bb.an

bb.am:                                            ; preds = %.thread114
  %i.fj = load i64, ptr @H5E_HEAP_g, align 8, !tbaa !13
  %i.fk = load i64, ptr @H5E_CANTUNPROTECT_g, align 8, !tbaa !13
  %i.fl = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5HF__hdr_update_iter, i32 noundef 1051, i64 noundef %i.fj, i64 noundef %i.fk, ptr noundef nonnull @.str.41) #6 ; 0 uses
  br label %.thread118

.thread118:                                       ; preds = %bb.ae, %bb.ag, %bb.ai, %bb.am, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  br label %.thread

bb.an:                                            ; preds = %.thread114
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  br label %.thread111

.thread111:                                       ; preds = %bb.ab, %bb.an
  %i.fm = call i32 @H5HF__man_iter_curr(ptr noundef nonnull %i.v, ptr noundef nonnull %i.b, ptr noundef null, ptr noundef nonnull %i.c, ptr noundef nonnull %i.a) #6
  %i.fn = icmp slt i32 %i.fm, 0
  %.pre = load i32, ptr %i.b, align 4, !tbaa !81
  %.pre142 = load ptr, ptr %i.a, align 8, !tbaa !82
  br i1 %i.fn, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %.thread111
  %i.fo = load i64, ptr @H5E_HEAP_g, align 8, !tbaa !13
  %i.fp = load i64, ptr @H5E_CANTGET_g, align 8, !tbaa !13
  %i.fq = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5HF__hdr_update_iter, i32 noundef 1057, i64 noundef %i.fo, i64 noundef %i.fp, ptr noundef nonnull @.str.34) #6 ; 0 uses
  br label %.thread

bb.ap:                                            ; preds = %.thread111, %._crit_edge
  %i.fr = phi ptr [ %.pre142, %.thread111 ], [ %i.cp, %._crit_edge ]
  %i.fs = phi i32 [ %.pre, %.thread111 ], [ %i.cq, %._crit_edge ]
  %i.ft = or i1 %.not107138, %.not108
  br i1 %i.ft, label %bb.q, label %.thread, !llvm.loop !92

.thread:                                          ; preds = %bb.ap, %bb.ac, %.thread118, %bb.ao, %bb.o, %bb.m, %bb.z, %bb.x, %bb.v, %bb.t, %bb.i, %bb.g
  %.10 = phi i32 [ -1, %bb.i ], [ -1, %bb.t ], [ -1, %bb.z ], [ -1, %bb.v ], [ -1, %bb.x ], [ -1, %bb.g ], [ -1, %bb.o ], [ -1, %bb.ac ], [ -1, %bb.m ], [ -1, %bb.ao ], [ -1, %.thread118 ], [ 0, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.aq

bb.aq:                                            ; preds = %bb.a, %bb.c, %bb.d, %.thread
  %.11 = phi i32 [ -1, %bb.d ], [ 0, %bb.c ], [ 0, %bb.a ], [ %.10, %.thread ]
  ret i32 %.11
}

declare i32 @H5HF__man_iblock_root_create(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @H5HF__dtable_size_to_row(ptr noundef, i64 noundef) local_unnamed_addr #2

declare zeroext i1 @H5HF__man_iter_ready(ptr noundef) local_unnamed_addr #2

declare i32 @H5HF__man_iter_start_offset(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @H5HF__man_iter_curr(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @H5HF__man_iblock_root_double(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @H5HF__man_iter_up(ptr noundef) local_unnamed_addr #2

declare i32 @H5HF__man_iter_next(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @H5HF__dtable_size_to_rows(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @H5HF__man_iblock_create(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @H5HF__man_iblock_protect(ptr noundef, i64 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @H5HF__man_iter_down(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @H5HF__man_iblock_unprotect(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @H5HF__hdr_reverse_iter(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 8 uses
  %i.b = alloca i32, align 4                      ; 15 uses
  %i.c = alloca i8, align 1                       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  %i.d = load i8, ptr @H5HF_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = xor i1 %i.g, true
  %i.i = select i1 %i.e, i1 true, i1 %i.h
  br i1 %i.i, label %bb.b, label %.thread87, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 9 uses
  %i.k = tail call zeroext i1 @H5HF__man_iter_ready(ptr noundef nonnull %i.j) #6
  br i1 %i.k, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.m = load i64, ptr %i.l, align 8, !tbaa !78
  %i.n = tail call i32 @H5HF__man_iter_start_offset(ptr noundef nonnull %0, ptr noundef nonnull %i.j, i64 noundef %i.m) #6
  %i.o = icmp slt i32 %i.n, 0
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = load i64, ptr @H5E_HEAP_g, align 8, !tbaa !13
  %i.q = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !13
  %i.r = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5HF__hdr_reverse_iter, i32 noundef 1133, i64 noundef %i.p, i64 noundef %i.q, ptr noundef nonnull @.str.33) #6 ; 0 uses
  br label %.thread87

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.s = call i32 @H5HF__man_iter_curr(ptr noundef nonnull %i.j, ptr noundef null, ptr noundef null, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) #6
  %i.t = icmp slt i32 %i.s, 0
  br i1 %i.t, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.u = load i64, ptr @H5E_HEAP_g, align 8, !tbaa !13
  %i.v = load i64, ptr @H5E_CANTGET_g, align 8, !tbaa !13
  %i.w = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5HF__hdr_reverse_iter, i32 noundef 1139, i64 noundef %i.u, i64 noundef %i.v, ptr noundef nonnull @.str.42) #6 ; 0 uses
  br label %.thread87

bb.g:                                             ; preds = %bb.e
  %i.x = load i32, ptr %i.b, align 4, !tbaa !81
  %i.y = add i32 %i.x, -1
  store i32 %i.y, ptr %i.b, align 4, !tbaa !81
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 352
  br label %bb.h

bb.h:                                             ; preds = %.backedge, %bb.g
  %i.ae = load i32, ptr %i.b, align 4, !tbaa !81  ; 2 uses
  %i.af = icmp sgt i32 %i.ae, -1
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !82  ; 2 uses
  br i1 %i.af, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.h
  %i.ag = getelementptr inbounds nuw i8, ptr %.pre, i64 344
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !93
  %2 = zext nneg i32 %i.ae to i64
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %.critedge3
  %indvars.iv = phi i64 [ %2, %.lr.ph ], [ %indvars.iv.next, %.critedge3 ] ; 4 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !94 ; 2 uses
  %i.ak = icmp eq i64 %i.aj, %1
  %.not77 = icmp eq i64 %i.aj, -1
  %or.cond94 = or i1 %i.ak, %.not77
  br i1 %or.cond94, label %.critedge3, label %.critedge

.critedge3:                                       ; preds = %bb.i
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.al = icmp sgt i64 %indvars.iv, 0
  br i1 %i.al, label %bb.i, label %._crit_edge, !llvm.loop !96

._crit_edge:                                      ; preds = %.critedge3, %bb.h
  %i.am = getelementptr inbounds nuw i8, ptr %.pre, i64 264
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !90
  %.not78 = icmp eq ptr %i.an, null
  br i1 %.not78, label %bb.o, label %bb.j

bb.j:                                             ; preds = %._crit_edge
  %i.ao = call i32 @H5HF__man_iter_up(ptr noundef nonnull %i.j) #6
  %i.ap = icmp slt i32 %i.ao, 0
  br i1 %i.ap, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aq = load i64, ptr @H5E_HEAP_g, align 8, !tbaa !13
  %i.ar = load i64, ptr @H5E_CANTNEXT_g, align 8, !tbaa !13
  %i.as = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5HF__hdr_reverse_iter, i32 noundef 1165, i64 noundef %i.aq, i64 noundef %i.ar, ptr noundef nonnull @.str.43) #6 ; 0 uses
  br label %.thread87

bb.l:                                             ; preds = %bb.j
  %i.at = call i32 @H5HF__man_iter_curr(ptr noundef nonnull %i.j, ptr noundef null, ptr noundef null, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) #6
  %i.au = icmp slt i32 %i.at, 0
  br i1 %i.au, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.av = load i64, ptr @H5E_HEAP_g, align 8, !tbaa !13
  %i.aw = load i64, ptr @H5E_CANTGET_g, align 8, !tbaa !13
  %i.ax = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5HF__hdr_reverse_iter, i32 noundef 1170, i64 noundef %i.av, i64 noundef %i.aw, ptr noundef nonnull @.str.42) #6 ; 0 uses
  br label %.thread87

bb.n:                                             ; preds = %bb.l
  %i.ay = load i32, ptr %i.b, align 4, !tbaa !81
  %i.az = add i32 %i.ay, -1
  store i32 %i.az, ptr %i.b, align 4, !tbaa !81
  br label %.backedge

bb.o:                                             ; preds = %._crit_edge
  store i64 0, ptr %i.ac, align 8, !tbaa !78
  %i.ba = call i32 @H5HF__man_iter_reset(ptr noundef nonnull %i.j) #6
  %i.bb = icmp slt i32 %i.ba, 0
  br i1 %i.bb, label %bb.p, label %.thread87

bb.p:                                             ; preds = %bb.o
  %i.bc = load i64, ptr @H5E_HEAP_g, align 8, !tbaa !13
  %i.bd = load i64, ptr @H5E_CANTRELEASE_g, align 8, !tbaa !13
  %i.be = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5HF__hdr_reverse_iter, i32 noundef 1184, i64 noundef %i.bc, i64 noundef %i.bd, ptr noundef nonnull @.str.29) #6 ; 0 uses
  br label %.thread87

.critedge:                                        ; preds = %bb.i
  %3 = trunc nuw nsw i64 %indvars.iv to i32       ; 3 uses
  store i32 %3, ptr %i.b, align 4, !tbaa !81
  %i.bf = load i32, ptr %i.z, align 8, !tbaa !51
  %i.bg = udiv i32 %3, %i.bf                      ; 2 uses
  %i.bh = load i32, ptr %i.aa, align 8, !tbaa !46
  %i.bi = icmp ult i32 %i.bg, %i.bh
  br i1 %i.bi, label %bb.q, label %bb.t

bb.q:                                             ; preds = %.critedge
  %i.bj = add nuw i32 %3, 1                       ; 2 uses
  store i32 %i.bj, ptr %i.b, align 4, !tbaa !81
  %i.bk = call i32 @H5HF__man_iter_set_entry(ptr noundef nonnull %0, ptr noundef nonnull %i.j, i32 noundef %i.bj) #6
  %i.bl = icmp slt i32 %i.bk, 0
  br i1 %i.bl, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bm = load i64, ptr @H5E_HEAP_g, align 8, !tbaa !13
  %i.bn = load i64, ptr @H5E_CANTSET_g, align 8, !tbaa !13
  %i.bo = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5HF__hdr_reverse_iter, i32 noundef 1200, i64 noundef %i.bm, i64 noundef %i.bn, ptr noundef nonnull @.str.44) #6 ; 0 uses
  br label %.thread87

bb.s:                                             ; preds = %bb.q
  %i.bp = load ptr, ptr %i.a, align 8, !tbaa !82
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 336
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !97 ; 2 uses
  store i64 %i.br, ptr %i.ac, align 8, !tbaa !78
  %i.bs = load ptr, ptr %i.ad, align 8, !tbaa !98
  %i.bt = load i32, ptr %i.b, align 4, !tbaa !81  ; 2 uses
  %i.bu = load i32, ptr %i.z, align 8, !tbaa !51  ; 2 uses
  %i.bv = udiv i32 %i.bt, %i.bu
  %i.bw = zext i32 %i.bv to i64                   ; 2 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.bw
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !13
  %i.bz = add i64 %i.by, %i.br                    ; 2 uses
  store i64 %i.bz, ptr %i.ac, align 8, !tbaa !78
  %i.ca = load ptr, ptr %i.ab, align 8, !tbaa !47
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.bw
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !13
  %i.cd = urem i32 %i.bt, %i.bu
  %i.ce = zext i32 %i.cd to i64
  %i.cf = mul i64 %i.cc, %i.ce
  %i.cg = add i64 %i.cf, %i.bz
  store i64 %i.cg, ptr %i.ac, align 8, !tbaa !78
  br label %.thread87

bb.t:                                             ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  %i.ch = load ptr, ptr %i.ab, align 8, !tbaa !47
  %i.ci = zext nneg i32 %i.bg to i64
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.ci
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !13
  %i.cl = call i32 @H5HF__dtable_size_to_rows(ptr noundef nonnull %i.z, i64 noundef %i.ck) #6
  %i.cm = load ptr, ptr %i.a, align 8, !tbaa !82  ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 344
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !93
  %i.cp = load i32, ptr %i.b, align 4, !tbaa !81  ; 2 uses
  %i.cq = zext i32 %i.cp to i64
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %i.cq
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !94
  %i.ct = call ptr @H5HF__man_iblock_protect(ptr noundef nonnull %0, i64 noundef %i.cs, i32 noundef %i.cl, ptr noundef %i.cm, i32 noundef %i.cp, i1 noundef zeroext false, i32 noundef 0, ptr noundef nonnull %i.c) #6 ; 5 uses
  %i.cu = icmp eq ptr %i.ct, null
  br i1 %i.cu, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.cv = load i64, ptr @H5E_HEAP_g, align 8, !tbaa !13
  %i.cw = load i64, ptr @H5E_CANTPROTECT_g, align 8, !tbaa !13
  %i.cx = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5HF__hdr_reverse_iter, i32 noundef 1223, i64 noundef %i.cv, i64 noundef %i.cw, ptr noundef nonnull @.str.40) #6 ; 0 uses
  br label %.thread

bb.v:                                             ; preds = %bb.t
  %i.cy = load i32, ptr %i.b, align 4, !tbaa !81
  %i.cz = call i32 @H5HF__man_iter_set_entry(ptr noundef nonnull %0, ptr noundef nonnull %i.j, i32 noundef %i.cy) #6
  %i.da = icmp slt i32 %i.cz, 0
  br i1 %i.da, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.db = load i64, ptr @H5E_HEAP_g, align 8, !tbaa !13
  %i.dc = load i64, ptr @H5E_CANTSET_g, align 8, !tbaa !13
  %i.dd = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5HF__hdr_reverse_iter, i32 noundef 1227, i64 noundef %i.db, i64 noundef %i.dc, ptr noundef nonnull @.str.44) #6 ; 0 uses
  br label %.thread

bb.x:                                             ; preds = %bb.v
  %i.de = call i32 @H5HF__man_iter_down(ptr noundef nonnull %i.j, ptr noundef nonnull %i.ct) #6
  %i.df = icmp slt i32 %i.de, 0
  br i1 %i.df, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.dg = load i64, ptr @H5E_HEAP_g, align 8, !tbaa !13
  %i.dh = load i64, ptr @H5E_CANTNEXT_g, align 8, !tbaa !13
  %i.di = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5HF__hdr_reverse_iter, i32 noundef 1232, i64 noundef %i.dg, i64 noundef %i.dh, ptr noundef nonnull @.str.37) #6 ; 0 uses
  br label %.thread

bb.z:                                             ; preds = %bb.x
  store ptr %i.ct, ptr %i.a, align 8, !tbaa !82
  %i.dj = getelementptr inbounds nuw i8, ptr %i.ct, i64 304
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !83
  %i.dl = load i32, ptr %i.z, align 8, !tbaa !51
  %i.dm = mul i32 %i.dl, %i.dk
  %i.dn = add i32 %i.dm, -1
  store i32 %i.dn, ptr %i.b, align 4, !tbaa !81
  %i.do = load i8, ptr %i.c, align 1, !tbaa !8, !range !10, !noundef !11
  %i.dp = trunc nuw i8 %i.do to i1
  %i.dq = call i32 @H5HF__man_iblock_unprotect(ptr noundef nonnull %i.ct, i32 noundef 0, i1 noundef zeroext %i.dp) #6
  %i.dr = icmp slt i32 %i.dq, 0
  br i1 %i.dr, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ds = load i64, ptr @H5E_HEAP_g, align 8, !tbaa !13
  %i.dt = load i64, ptr @H5E_CANTUNPROTECT_g, align 8, !tbaa !13
  %i.du = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5HF__hdr_reverse_iter, i32 noundef 1241, i64 noundef %i.ds, i64 noundef %i.dt, ptr noundef nonnull @.str.41) #6 ; 0 uses
  br label %.thread

.thread:                                          ; preds = %bb.u, %bb.w, %bb.y, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  br label %.thread87

bb.ab:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  br label %.backedge

.backedge:                                        ; preds = %bb.ab, %bb.n
  br label %bb.h

.thread87:                                        ; preds = %.thread, %bb.s, %bb.r, %bb.o, %bb.p, %bb.m, %bb.k, %bb.a, %bb.f, %bb.d
  %.6 = phi i32 [ -1, %bb.f ], [ 0, %bb.a ], [ -1, %bb.k ], [ -1, %bb.d ], [ 0, %bb.o ], [ -1, %bb.p ], [ -1, %bb.m ], [ -1, %.thread ], [ 0, %bb.s ], [ -1, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.6
}

declare i32 @H5HF__man_iter_set_entry(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @H5HF__hdr_empty(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr @H5HF_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %H5HF__hdr_dirty.exit, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 2 uses
  %i.h = tail call zeroext i1 @H5HF__man_iter_ready(ptr noundef nonnull %i.g) #6
  br i1 %i.h, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.i = tail call i32 @H5HF__man_iter_reset(ptr noundef nonnull %i.g) #6
  %i.j = icmp slt i32 %i.i, 0
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = load i64, ptr @H5E_HEAP_g, align 8, !tbaa !13
  %i.l = load i64, ptr @H5E_CANTRELEASE_g, align 8, !tbaa !13
  %i.m = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5HF__hdr_empty, i32 noundef 1275, i64 noundef %i.k, i64 noundef %i.l, ptr noundef nonnull @.str.29) #6 ; 0 uses
  br label %H5HF__hdr_dirty.exit

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 304
  store i32 0, ptr %i.o, align 8, !tbaa !80
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 296
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.p, align 8, !tbaa !59
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 520
  store i64 0, ptr %i.q, align 8, !tbaa !78
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 376
  store i64 0, ptr %i.r, align 8, !tbaa !75
  %i.s = load i8, ptr @H5HF_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.t = trunc nuw i8 %i.s to i1
  %i.u = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.v = trunc nuw i8 %i.u to i1
  %i.w = xor i1 %i.v, true
  %i.x = select i1 %i.t, i1 true, i1 %i.w
  br i1 %i.x, label %bb.f, label %H5HF__hdr_dirty.exit, !prof !12

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 252
  %i.z = load i32, ptr %i.y, align 4, !tbaa !64
  %.not.i = icmp eq i32 %i.z, 0
  br i1 %.not.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !65
  %i.ac = tail call i32 @H5AC_resize_entry(ptr noundef nonnull %0, i64 noundef %i.ab) #6
  %i.ad = icmp slt i32 %i.ac, 0
  br i1 %i.ad, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ae = load i64, ptr @H5E_HEAP_g, align 8, !tbaa !13
  %i.af = load i64, ptr @H5E_CANTRESIZE_g, align 8, !tbaa !13
  %i.ag = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5HF__hdr_dirty, i32 noundef 661, i64 noundef %i.ae, i64 noundef %i.af, ptr noundef nonnull @.str.24) #6 ; 0 uses
  br label %bb.k

bb.i:                                             ; preds = %bb.g, %bb.f
  %i.ah = tail call i32 @H5AC_mark_entry_dirty(ptr noundef nonnull %0) #6
  %i.ai = icmp slt i32 %i.ah, 0
  br i1 %i.ai, label %bb.j, label %H5HF__hdr_dirty.exit

bb.j:                                             ; preds = %bb.i
  %i.aj = load i64, ptr @H5E_HEAP_g, align 8, !tbaa !13
  %i.ak = load i64, ptr @H5E_CANTMARKDIRTY_g, align 8, !tbaa !13
  %i.al = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5HF__hdr_dirty, i32 noundef 665, i64 noundef %i.aj, i64 noundef %i.ak, ptr noundef nonnull @.str.25) #6 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.j
  %i.am = load i64, ptr @H5E_HEAP_g, align 8, !tbaa !13
end_hunk_0
