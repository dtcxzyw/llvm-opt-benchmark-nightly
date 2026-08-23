Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hdf5/original/H5FAdbg?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
begin_hunk_0_@H5FA__hdr_debug:bb.a
  %i.ad = zext i8 %i.ac to i32
  %i.ae = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.9, i32 noundef %3, ptr noundef nonnull @.str.4, i32 noundef %4, ptr noundef nonnull @.str.10, i32 noundef %i.ad) #4 ; 0 uses
  %i.af = load ptr, ptr %i.t, align 8, !tbaa !19
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !37
  %i.ai = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.7, i32 noundef %3, ptr noundef nonnull @.str.4, i32 noundef %4, ptr noundef nonnull @.str.11, i64 noundef %i.ah) #4 ; 0 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.n, i64 257
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !38
  %i.al = zext nneg i8 %i.ak to i64
  %i.am = shl nuw i64 1, %i.al
  %i.an = trunc i64 %i.am to i32
  %i.ao = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.9, i32 noundef %3, ptr noundef nonnull @.str.4, i32 noundef %4, ptr noundef nonnull @.str.12, i32 noundef %i.an) #4 ; 0 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.n, i64 296
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !39
  %i.ar = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.13, i32 noundef %3, ptr noundef nonnull @.str.4, i32 noundef %4, ptr noundef nonnull @.str.14, i64 noundef %i.aq) #4 ; 0 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.n, i64 272
  %i.at = load i64, ptr %i.as, align 8, !tbaa !40
  %i.au = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.13, i32 noundef %3, ptr noundef nonnull @.str.4, i32 noundef %4, ptr noundef nonnull @.str.15, i64 noundef %i.at) #4 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0 = phi i32 [ 0, %bb.f ], [ -1, %bb.e ]       ; 2 uses
  %.not54 = icmp eq ptr %.046, null
  br i1 %.not54, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !41
  %i.ax = tail call i32 %i.aw(ptr noundef nonnull %.046) #4
  %i.ay = icmp slt i32 %i.ax, 0
  br i1 %i.ay, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.az = load i64, ptr @H5E_FARRAY_g, align 8, !tbaa !18
  %i.ba = load i64, ptr @H5E_CANTRELEASE_g, align 8, !tbaa !18
  %i.bb = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5FA__hdr_debug, i32 noundef 129, i64 noundef %i.az, i64 noundef %i.ba, ptr noundef nonnull @.str.16) #4 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %.1 = phi i32 [ -1, %bb.i ], [ %.0, %bb.h ], [ %.0, %bb.g ] ; 2 uses
  br i1 %i.o, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bc = tail call i32 @H5FA__hdr_unprotect(ptr noundef nonnull %i.n, i32 noundef 0) #4
  %i.bd = icmp slt i32 %i.bc, 0
  br i1 %i.bd, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.be = load i64, ptr @H5E_FARRAY_g, align 8, !tbaa !18
  %i.bf = load i64, ptr @H5E_CANTUNPROTECT_g, align 8, !tbaa !18
  %i.bg = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5FA__hdr_debug, i32 noundef 131, i64 noundef %i.be, i64 noundef %i.bf, ptr noundef nonnull @.str.17) #4 ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %.thread61, %bb.j, %bb.k, %bb.l, %bb.a
  %.2 = phi i32 [ -1, %bb.l ], [ %.1, %bb.k ], [ %.1, %bb.j ], [ 0, %bb.a ], [ -1, %.thread61 ]
  ret i32 %.2
}

declare i32 @H5E_printf_stack(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #1

declare ptr @H5FA__hdr_protect(ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #2

declare i32 @H5FA__hdr_unprotect(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @H5FA__dblock_debug(ptr noundef %0, i64 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef readonly captures(none) %5, i64 noundef %6, i64 noundef %7) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr @H5FA_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %bb.ai, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 72
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !13   ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = tail call ptr %i.h(ptr noundef %0, i64 noundef %7) #4 ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %.thread160, label %bb.d

.thread160:                                       ; preds = %bb.c
  %i.k = load i64, ptr @H5E_FARRAY_g, align 8, !tbaa !18
  %i.l = load i64, ptr @H5E_CANTGET_g, align 8, !tbaa !18
  %i.m = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5FA__dblock_debug, i32 noundef 172, i64 noundef %i.k, i64 noundef %i.l, ptr noundef nonnull @.str.1) #4 ; 0 uses
  br label %bb.ai

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0124 = phi ptr [ %i.i, %bb.c ], [ null, %bb.b ] ; 3 uses
  %i.n = tail call ptr @H5FA__hdr_protect(ptr noundef %0, i64 noundef %6, ptr noundef %.0124, i32 noundef 128) #4 ; 6 uses
  %i.o = icmp eq ptr %i.n, null                   ; 2 uses
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.p = load i64, ptr @H5E_FARRAY_g, align 8, !tbaa !18
  %i.q = load i64, ptr @H5E_CANTPROTECT_g, align 8, !tbaa !18
  %i.r = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5FA__dblock_debug, i32 noundef 176, i64 noundef %i.p, i64 noundef %i.q, ptr noundef nonnull @.str.2) #4 ; 0 uses
  br label %.thread

bb.f:                                             ; preds = %bb.d
  %i.s = tail call ptr @H5FA__dblock_protect(ptr noundef nonnull %i.n, i64 noundef %1, i32 noundef 128) #4 ; 18 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.u = load i64, ptr @H5E_FARRAY_g, align 8, !tbaa !18
  %i.v = load i64, ptr @H5E_CANTPROTECT_g, align 8, !tbaa !18
  %i.w = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5FA__dblock_debug, i32 noundef 181, i64 noundef %i.u, i64 noundef %i.v, ptr noundef nonnull @.str.18, i64 noundef %1) #4 ; 0 uses
  br label %.thread

bb.h:                                             ; preds = %bb.f
  %i.x = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.19, i32 noundef %3, ptr noundef nonnull @.str.4) #4 ; 0 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.n, i64 248 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !19
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !34
  %i.ac = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.5, i32 noundef %3, ptr noundef nonnull @.str.4, i32 noundef %4, ptr noundef nonnull @.str.6, ptr noundef %i.ab) #4 ; 0 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.s, i64 280 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !42
  %i.af = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.13, i32 noundef %3, ptr noundef nonnull @.str.4, i32 noundef %4, ptr noundef nonnull @.str.20, i64 noundef %i.ae) #4 ; 0 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.s, i64 288
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !45
  %i.ai = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.13, i32 noundef %3, ptr noundef nonnull @.str.4, i32 noundef %4, ptr noundef nonnull @.str.21, i64 noundef %i.ah) #4 ; 0 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.n, i64 264 ; 4 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !46
  %i.al = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.13, i32 noundef %3, ptr noundef nonnull @.str.4, i32 noundef %4, ptr noundef nonnull @.str.22, i64 noundef %i.ak) #4 ; 0 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.s, i64 296 ; 4 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !47
  %i.ao = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.7, i32 noundef %3, ptr noundef nonnull @.str.4, i32 noundef %4, ptr noundef nonnull @.str.23, i64 noundef %i.an) #4 ; 0 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.s, i64 312 ; 3 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !48
  %i.ar = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.7, i32 noundef %3, ptr noundef nonnull @.str.4, i32 noundef %4, ptr noundef nonnull @.str.24, i64 noundef %i.aq) #4 ; 0 uses
  %i.as = load i64, ptr %i.am, align 8, !tbaa !47
  %.not138 = icmp eq i64 %i.as, 0
  br i1 %.not138, label %bb.w, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.at = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.25, i32 noundef %3, ptr noundef nonnull @.str.4) #4 ; 0 uses
  %i.au = load i64, ptr %i.am, align 8, !tbaa !47 ; 2 uses
  %.not178 = icmp eq i64 %i.au, 0
  br i1 %.not178, label %.thread, label %.lr.ph174

.lr.ph174:                                        ; preds = %bb.i
  %i.av = load i64, ptr %i.ap, align 8, !tbaa !48
  %i.aw = load i64, ptr %i.ad, align 8, !tbaa !42
  %i.ax = add i64 %i.aw, 10
  %i.ay = getelementptr inbounds nuw i8, ptr %i.s, i64 264
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !49
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 352
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !50
  %i.bc = add i64 %i.ax, %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %i.s, i64 328
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !51
  %i.bf = add i64 %i.bc, %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %i.s, i64 248
  %i.bh = add nsw i32 %3, 3
  %i.bi = tail call i32 @llvm.smax.i32(i32 %4, i32 3)
  %i.bj = add nsw i32 %i.bi, -3
  %i.bk = getelementptr inbounds nuw i8, ptr %i.s, i64 320
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph174, %bb.v
  %i.bl = phi i64 [ %i.au, %.lr.ph174 ], [ %i.dc, %bb.v ]
  %.0113172 = phi i64 [ 0, %.lr.ph174 ], [ %.pre-phi, %bb.v ] ; 6 uses
  %.0114171 = phi i64 [ %i.bf, %.lr.ph174 ], [ %.2, %bb.v ] ; 4 uses
  %.0116170 = phi i64 [ %i.av, %.lr.ph174 ], [ %.2118, %bb.v ] ; 3 uses
  %i.bm = load ptr, ptr %i.bg, align 8, !tbaa !52
  %i.bn = lshr i64 %.0113172, 3
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !53
  %i.bq = and i64 %.0113172, 7
  %i.br = getelementptr inbounds nuw i8, ptr @H5VM_bit_set_g, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !53
  %i.bt = and i8 %i.bs, %i.bp
  %.not164 = icmp eq i8 %i.bt, 0
  br i1 %.not164, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bu = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.26, i32 noundef %3, ptr noundef nonnull @.str.4, i32 noundef %4, ptr noundef nonnull @.str.27, i64 noundef %.0113172, ptr noundef nonnull @.str.28) #4 ; 0 uses
  %.pre = add nuw i64 %.0113172, 1
  br label %bb.v

bb.l:                                             ; preds = %bb.j
  %i.bv = add nuw i64 %.0113172, 1                ; 2 uses
  %i.bw = icmp eq i64 %i.bv, %i.bl
  br i1 %i.bw, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bx = load i64, ptr %i.aj, align 8, !tbaa !46
  %i.by = load i64, ptr %i.ap, align 8, !tbaa !48
  %i.bz = urem i64 %i.bx, %i.by                   ; 2 uses
  %.not139 = icmp eq i64 %i.bz, 0
  %spec.select = select i1 %.not139, i64 %.0116170, i64 %i.bz
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.1117 = phi i64 [ %.0116170, %bb.l ], [ %spec.select, %bb.m ] ; 4 uses
  %i.ca = tail call ptr @H5FA__dblk_page_protect(ptr noundef nonnull %i.n, i64 noundef %.0114171, i64 noundef %.1117, i32 noundef 128) #4 ; 3 uses
  %i.cb = icmp eq ptr %i.ca, null
  br i1 %i.cb, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cc = load i64, ptr @H5E_FARRAY_g, align 8, !tbaa !18
  %i.cd = load i64, ptr @H5E_CANTPROTECT_g, align 8, !tbaa !18
  %i.ce = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5FA__dblock_debug, i32 noundef 226, i64 noundef %i.cc, i64 noundef %i.cd, ptr noundef nonnull @.str.29, i64 noundef %.0114171) #4 ; 0 uses
  br label %.thread

bb.p:                                             ; preds = %bb.n
  %i.cf = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.30, i32 noundef %3, ptr noundef nonnull @.str.4, i64 noundef %.0113172) #4 ; 0 uses
  %.not179 = icmp eq i64 %.1117, 0
  br i1 %.not179, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.p
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ca, i64 248
  br label %bb.r

bb.q:                                             ; preds = %bb.r
  %i.ch = add nuw i64 %.0122169, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.ch, %.1117
  br i1 %exitcond.not, label %._crit_edge, label %bb.r, !llvm.loop !54

bb.r:                                             ; preds = %.lr.ph, %bb.q
  %.0122169 = phi i64 [ 0, %.lr.ph ], [ %i.ch, %bb.q ] ; 3 uses
  %i.ci = load ptr, ptr %i.y, align 8, !tbaa !19  ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 64
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !56
  %i.cl = load ptr, ptr %i.cg, align 8, !tbaa !57
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !37
  %i.co = mul i64 %i.cn, %.0122169
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.co
  %i.cq = tail call i32 %i.ck(ptr noundef %2, i32 noundef %i.bh, i32 noundef %i.bj, i64 noundef %.0122169, ptr noundef %i.cp) #4
  %i.cr = icmp slt i32 %i.cq, 0
  br i1 %i.cr, label %bb.s, label %bb.q

bb.s:                                             ; preds = %bb.r
  %i.cs = load i64, ptr @H5E_FARRAY_g, align 8, !tbaa !18
  %i.ct = load i64, ptr @H5E_CANTGET_g, align 8, !tbaa !18
  %i.cu = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5FA__dblock_debug, i32 noundef 234, i64 noundef %i.cs, i64 noundef %i.ct, ptr noundef nonnull @.str.31) #4 ; 0 uses
  br label %.thread

._crit_edge:                                      ; preds = %bb.q, %bb.p
  %i.cv = tail call i32 @H5FA__dblk_page_unprotect(ptr noundef nonnull %i.ca, i32 noundef 0) #4
  %i.cw = icmp slt i32 %i.cv, 0
  br i1 %i.cw, label %bb.t, label %bb.u

bb.t:                                             ; preds = %._crit_edge
  %i.cx = load i64, ptr @H5E_FARRAY_g, align 8, !tbaa !18
  %i.cy = load i64, ptr @H5E_CANTUNPROTECT_g, align 8, !tbaa !18
  %i.cz = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5FA__dblock_debug, i32 noundef 238, i64 noundef %i.cx, i64 noundef %i.cy, ptr noundef nonnull @.str.32) #4 ; 0 uses
  br label %.thread

bb.u:                                             ; preds = %._crit_edge
  %i.da = load i64, ptr %i.bk, align 8, !tbaa !59
  %i.db = add i64 %i.da, %.0114171
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.k
  %.pre-phi = phi i64 [ %i.bv, %bb.u ], [ %.pre, %bb.k ] ; 2 uses
  %.2118 = phi i64 [ %.1117, %bb.u ], [ %.0116170, %bb.k ]
  %.2 = phi i64 [ %i.db, %bb.u ], [ %.0114171, %bb.k ]
  %i.dc = load i64, ptr %i.am, align 8, !tbaa !47 ; 2 uses
  %i.dd = icmp ult i64 %.pre-phi, %i.dc
  br i1 %i.dd, label %bb.j, label %.thread, !llvm.loop !60

bb.w:                                             ; preds = %bb.h
  %i.de = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.33, i32 noundef %3, ptr noundef nonnull @.str.4) #4 ; 0 uses
  %i.df = load i64, ptr %i.aj, align 8, !tbaa !46
  %.not180 = icmp eq i64 %i.df, 0
  br i1 %.not180, label %.thread, label %.lr.ph177

.lr.ph177:                                        ; preds = %bb.w
  %i.dg = add nsw i32 %3, 3
  %i.dh = tail call i32 @llvm.smax.i32(i32 %4, i32 3)
  %i.di = add nsw i32 %i.dh, -3
  %i.dj = getelementptr inbounds nuw i8, ptr %i.s, i64 256
  br label %bb.y

bb.x:                                             ; preds = %bb.y
  %i.dk = add nuw i64 %.1123175, 1                ; 2 uses
  %i.dl = load i64, ptr %i.aj, align 8, !tbaa !46
  %i.dm = icmp ult i64 %i.dk, %i.dl
  br i1 %i.dm, label %bb.y, label %.thread, !llvm.loop !61

bb.y:                                             ; preds = %.lr.ph177, %bb.x
  %.1123175 = phi i64 [ 0, %.lr.ph177 ], [ %i.dk, %bb.x ] ; 3 uses
  %i.dn = load ptr, ptr %i.y, align 8, !tbaa !19  ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 64
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !56
  %i.dq = load ptr, ptr %i.dj, align 8, !tbaa !62
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !37
  %i.dt = mul i64 %i.ds, %.1123175
  %i.du = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.dt
  %i.dv = tail call i32 %i.dp(ptr noundef %2, i32 noundef %i.dg, i32 noundef %i.di, i64 noundef %.1123175, ptr noundef %i.du) #4
  %i.dw = icmp slt i32 %i.dv, 0
  br i1 %i.dw, label %bb.z, label %bb.x

bb.z:                                             ; preds = %bb.y
  %i.dx = load i64, ptr @H5E_FARRAY_g, align 8, !tbaa !18
  %i.dy = load i64, ptr @H5E_CANTGET_g, align 8, !tbaa !18
  %i.dz = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5FA__dblock_debug, i32 noundef 253, i64 noundef %i.dx, i64 noundef %i.dy, ptr noundef nonnull @.str.31) #4 ; 0 uses
  br label %.thread

.thread:                                          ; preds = %bb.v, %bb.x, %bb.i, %bb.w, %bb.t, %bb.s, %bb.o, %bb.z, %bb.g, %bb.e
  %.0126 = phi ptr [ %i.s, %bb.w ], [ null, %bb.e ], [ null, %bb.g ], [ %i.s, %bb.t ], [ %i.s, %bb.z ], [ %i.s, %bb.o ], [ %i.s, %bb.s ], [ %i.s, %bb.i ], [ %i.s, %bb.x ], [ %i.s, %bb.v ] ; 2 uses
  %.4 = phi i32 [ 0, %bb.w ], [ -1, %bb.e ], [ -1, %bb.g ], [ -1, %bb.t ], [ -1, %bb.z ], [ -1, %bb.o ], [ -1, %bb.s ], [ 0, %bb.i ], [ 0, %bb.x ], [ 0, %bb.v ] ; 2 uses
  %.not140 = icmp eq ptr %.0124, null
  br i1 %.not140, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %.thread
  %i.ea = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !41
  %i.ec = tail call i32 %i.eb(ptr noundef nonnull %.0124) #4
  %i.ed = icmp slt i32 %i.ec, 0
  br i1 %i.ed, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.ee = load i64, ptr @H5E_FARRAY_g, align 8, !tbaa !18
  %i.ef = load i64, ptr @H5E_CANTRELEASE_g, align 8, !tbaa !18
  %i.eg = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5FA__dblock_debug, i32 noundef 259, i64 noundef %i.ee, i64 noundef %i.ef, ptr noundef nonnull @.str.16) #4 ; 0 uses
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %.thread
  %.5 = phi i32 [ -1, %bb.ab ], [ %.4, %bb.aa ], [ %.4, %.thread ] ; 2 uses
  %.not141 = icmp eq ptr %.0126, null
  br i1 %.not141, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.eh = tail call i32 @H5FA__dblock_unprotect(ptr noundef nonnull %.0126, i32 noundef 0) #4
  %i.ei = icmp slt i32 %i.eh, 0
  br i1 %i.ei, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.ej = load i64, ptr @H5E_FARRAY_g, align 8, !tbaa !18
  %i.ek = load i64, ptr @H5E_CANTUNPROTECT_g, align 8, !tbaa !18
  %i.el = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5FA__dblock_debug, i32 noundef 261, i64 noundef %i.ej, i64 noundef %i.ek, ptr noundef nonnull @.str.34) #4 ; 0 uses
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad, %bb.ac
  %.6 = phi i32 [ -1, %bb.ae ], [ %.5, %bb.ad ], [ %.5, %bb.ac ] ; 2 uses
  br i1 %i.o, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.em = tail call i32 @H5FA__hdr_unprotect(ptr noundef nonnull %i.n, i32 noundef 0) #4
  %i.en = icmp slt i32 %i.em, 0
  br i1 %i.en, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.eo = load i64, ptr @H5E_FARRAY_g, align 8, !tbaa !18
  %i.ep = load i64, ptr @H5E_CANTUNPROTECT_g, align 8, !tbaa !18
  %i.eq = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5FA__dblock_debug, i32 noundef 263, i64 noundef %i.eo, i64 noundef %i.ep, ptr noundef nonnull @.str.17) #4 ; 0 uses
  br label %bb.ai

bb.ai:                                            ; preds = %.thread160, %bb.a, %bb.ah, %bb.ag, %bb.af
  %.7 = phi i32 [ -1, %bb.ah ], [ %.6, %bb.ag ], [ %.6, %bb.af ], [ 0, %bb.a ], [ -1, %.thread160 ]
  ret i32 %.7
}

declare ptr @H5FA__dblock_protect(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

declare ptr @H5FA__dblk_page_protect(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @H5FA__dblk_page_unprotect(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @H5FA__dblock_unprotect(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="16384" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"_Bool", !6, i64 0}
!10 = !{i8 0, i8 2}
!11 = !{}
!12 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!13 = !{!14, !16, i64 72}
!14 = !{!"H5FA_class_t", !5, i64 0, !15, i64 8, !17, i64 16, !16, i64 24, !16, i64 32, !16, i64 40, !16, i64 48, !16, i64 56, !16, i64 64, !16, i64 72, !16, i64 80}
!15 = !{!"p1 omnipotent char", !16, i64 0}
!16 = !{!"any pointer", !6, i64 0}
end_hunk_0
