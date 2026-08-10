inline.NumInlined: 101
inline.NumDeleted: 37
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@erf_comment_to_sections:g_strdup_inline.exit67
  %i.j = trunc i64 %i.i to i16
  %i.k = getelementptr i8, ptr %i.e, i64 2
  store i16 %i.j, ptr %i.k, align 2
  tail call void @g_ptr_array_add(ptr noundef %i.c, ptr noundef %i.e)
  %i.l = tail call ptr @g_get_user_name()         ; 2 uses
  %.not62 = icmp eq ptr %i.l, null
  br i1 %.not62, label %bb.a, label %g_strdup_inline.exit

g_strdup_inline.exit:                             ; preds = %g_strdup_inline.exit67
  %i.m = tail call noalias dereferenceable_or_null(16) ptr @g_malloc(i64 noundef 16) #14 ; 4 uses
  store i16 19, ptr %i.m, align 8
  %i.n = tail call noalias ptr @g_strdup(ptr noundef nonnull %i.l) ; 2 uses
  %i.o = getelementptr i8, ptr %i.m, i64 8
  store ptr %i.n, ptr %i.o, align 8
  %i.p = tail call i64 @strlen(ptr noundef %i.n) #16
  %i.q = trunc i64 %i.p to i16
  %i.r = getelementptr i8, ptr %i.m, i64 2
  store i16 %i.q, ptr %i.r, align 2
  tail call void @g_ptr_array_add(ptr noundef %i.c, ptr noundef %i.m)
  br label %bb.a

bb.a:                                             ; preds = %g_strdup_inline.exit, %g_strdup_inline.exit67
  %i.s = getelementptr i8, ptr %i.a, i64 4        ; 4 uses
  store i16 8, ptr %i.s, align 4
  %i.t = getelementptr i8, ptr %i.c, i64 8
  %i.u = load i32, ptr %i.t, align 8              ; 4 uses
  %.not.i68 = icmp eq i32 %i.u, 0
  br i1 %.not.i68, label %erf_populate_section_length_by_tags.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %.pre = load ptr, ptr %i.c, align 8             ; 3 uses
  %i.v = zext i32 %i.u to i64                     ; 2 uses
  %xtraiter = and i64 %i.v, 1
  %i.w = icmp eq i32 %i.u, 1
  br i1 %i.w, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.v, 4294967294
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %i.x = phi i16 [ 8, %.lr.ph.i.preheader.new ], [ %i.ao, %.lr.ph.i ]
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %indvars.iv.next.i.1, %.lr.ph.i ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.y = getelementptr [8 x i8], ptr %.pre, i64 %indvars.iv.i
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = getelementptr i8, ptr %i.z, i64 2
  %i.ab = load i16, ptr %i.aa, align 2
  %i.ac = add i16 %i.ab, 3
  %i.ad = and i16 %i.ac, -4
  %i.ae = add i16 %i.x, 4
  %i.af = add i16 %i.ae, %i.ad                    ; 2 uses
  store i16 %i.af, ptr %i.s, align 4
  %i.ag = getelementptr [8 x i8], ptr %.pre, i64 %indvars.iv.i
  %i.ah = getelementptr i8, ptr %i.ag, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = getelementptr i8, ptr %i.ai, i64 2
  %i.ak = load i16, ptr %i.aj, align 2
  %i.al = add i16 %i.ak, 3
  %i.am = and i16 %i.al, -4
  %i.an = add i16 %i.af, 4
  %i.ao = add i16 %i.an, %i.am                    ; 3 uses
  store i16 %i.ao, ptr %i.s, align 4
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %erf_populate_section_length_by_tags.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !39

erf_populate_section_length_by_tags.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %erf_populate_section_length_by_tags.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %erf_populate_section_length_by_tags.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.epil.init = phi i16 [ 8, %.lr.ph.i.preheader ], [ %i.ao, %erf_populate_section_length_by_tags.exit.loopexit.unr-lcssa ]
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %indvars.iv.next.i.1, %erf_populate_section_length_by_tags.exit.loopexit.unr-lcssa ]
  %lcmp.mod1 = trunc i32 %i.u to i1
  tail call void @llvm.assume(i1 %lcmp.mod1)
  %i.ap = getelementptr [8 x i8], ptr %.pre, i64 %indvars.iv.i.epil.init
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = getelementptr i8, ptr %i.aq, i64 2
  %i.as = load i16, ptr %i.ar, align 2
  %i.at = add i16 %i.as, 3
  %i.au = and i16 %i.at, -4
  %i.av = add i16 %.epil.init, 4
  %i.aw = add i16 %i.av, %i.au
  store i16 %i.aw, ptr %i.s, align 4
  br label %erf_populate_section_length_by_tags.exit

erf_populate_section_length_by_tags.exit:         ; preds = %.lr.ph.i.epil.preheader, %erf_populate_section_length_by_tags.exit.loopexit.unr-lcssa, %bb.a
  tail call void @g_ptr_array_add(ptr noundef %3, ptr noundef %i.a)
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc noundef zeroext i1 @erf_write_meta_record(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr nofree noundef readonly captures(address_is_null) %3, ptr nofree noundef readonly captures(address_is_null) %4, ptr noundef %5) unnamed_addr #0 {
bb.a:
  %i.a = alloca [2 x i16], align 2                ; 6 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca [4 x i16], align 2                ; 7 uses
  %i.d = alloca [2 x i16], align 2                ; 5 uses
  %6 = alloca %union.wtap_pseudo_header, align 8  ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %3, i64 8          ; 3 uses
  %i.f = load i32, ptr %i.e, align 8              ; 3 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %.preheader61

.preheader61:                                     ; preds = %bb.b
  %i.h = load ptr, ptr %3, align 8                ; 5 uses
  %wide.trip.count = zext i32 %i.f to i64         ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.i = icmp ult i32 %i.f, 4
  br i1 %i.i, label %.epil.preheader, label %.preheader61.new

.preheader61.new:                                 ; preds = %.preheader61
  %unroll_iter = and i64 %wide.trip.count, 4294967292
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.preheader61.new
  %indvars.iv = phi i64 [ 0, %.preheader61.new ], [ %indvars.iv.next.3, %bb.c ] ; 5 uses
  %.04862 = phi i32 [ 0, %.preheader61.new ], [ %i.aj, %bb.c ]
  %niter = phi i64 [ 0, %.preheader61.new ], [ %niter.next.3, %bb.c ]
  %i.j = getelementptr [8 x i8], ptr %i.h, i64 %indvars.iv
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = getelementptr i8, ptr %i.k, i64 4
  %i.m = load i16, ptr %i.l, align 4
  %i.n = zext i16 %i.m to i32
  %i.o = add i32 %.04862, %i.n
  %i.p = getelementptr [8 x i8], ptr %i.h, i64 %indvars.iv
  %i.q = getelementptr i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = getelementptr i8, ptr %i.r, i64 4
  %i.t = load i16, ptr %i.s, align 4
  %i.u = zext i16 %i.t to i32
  %i.v = add i32 %i.o, %i.u
  %i.w = getelementptr [8 x i8], ptr %i.h, i64 %indvars.iv
  %i.x = getelementptr i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = getelementptr i8, ptr %i.y, i64 4
  %i.aa = load i16, ptr %i.z, align 4
  %i.ab = zext i16 %i.aa to i32
  %i.ac = add i32 %i.v, %i.ab
  %i.ad = getelementptr [8 x i8], ptr %i.h, i64 %indvars.iv
  %i.ae = getelementptr i8, ptr %i.ad, i64 24
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = getelementptr i8, ptr %i.af, i64 4
  %i.ah = load i16, ptr %i.ag, align 4
  %i.ai = zext i16 %i.ah to i32
  %i.aj = add i32 %i.ac, %i.ai                    ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.unr-lcssa, label %bb.c, !llvm.loop !40

.unr-lcssa:                                       ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.preheader61
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader61 ], [ %indvars.iv.next.3, %.unr-lcssa ]
  %.04862.epil.init = phi i32 [ 0, %.preheader61 ], [ %i.aj, %.unr-lcssa ]
  %lcmp.mod75 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod75)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.d ] ; 2 uses
  %.04862.epil = phi i32 [ %.04862.epil.init, %.epil.preheader ], [ %i.ap, %bb.d ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.d ]
  %i.ak = getelementptr [8 x i8], ptr %i.h, i64 %indvars.iv.epil
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = getelementptr i8, ptr %i.al, i64 4
  %i.an = load i16, ptr %i.am, align 4
  %i.ao = zext i16 %i.an to i32
  %i.ap = add i32 %.04862.epil, %i.ao             ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %bb.d, !llvm.loop !41

.epilog-lcssa:                                    ; preds = %bb.d, %.unr-lcssa
  %.lcssa = phi i32 [ %i.aj, %.unr-lcssa ], [ %i.ap, %bb.d ] ; 2 uses
  %i.aq = getelementptr i8, ptr %1, i64 40
  %i.ar = add i32 %.lcssa, 36                     ; 2 uses
  %.not54 = icmp eq ptr %4, null
  br i1 %.not54, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.epilog-lcssa
  %i.as = getelementptr i8, ptr %4, i64 8
  %i.at = load i32, ptr %i.as, align 8
  %spec.select = tail call i32 @llvm.umin.i32(i32 %i.at, i32 15) ; 2 uses
  %i.au = shl nuw nsw i32 %spec.select, 3
  %i.av = add i32 %i.au, %i.ar
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.epilog-lcssa
  %.047 = phi i32 [ %i.av, %bb.e ], [ %i.ar, %.epilog-lcssa ] ; 2 uses
  %.0 = phi i32 [ %spec.select, %bb.e ], [ 0, %.epilog-lcssa ] ; 2 uses
  %7 = sub i32 0, %.047
  %8 = and i32 %7, 7
  %i.aw = add i32 %8, %.047                       ; 3 uses
  %i.ax = icmp ugt i32 %i.aw, 65535
  br i1 %i.ax, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 -22, ptr %5, align 4
  br label %.loopexit

bb.h:                                             ; preds = %bb.f
  store i64 %2, ptr %6, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i8 -101, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 9
  store i8 4, ptr %i.az, align 1
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i16 0, ptr %i.ba, align 4
  %i.bb = trunc i32 %.lcssa to i16
  %i.bc = add i16 %i.bb, 12
  %i.bd = getelementptr inbounds nuw i8, ptr %6, i64 14
  store i16 %i.bc, ptr %i.bd, align 2
  %i.be = trunc nuw i32 %i.aw to i16
  %i.bf = getelementptr inbounds nuw i8, ptr %6, i64 10
  store i16 %i.be, ptr %i.bf, align 2
  %i.bg = getelementptr i8, ptr %1, i64 8
  %i.bh = load i64, ptr %i.bg, align 8
  %i.bi = and i64 %i.bh, 281474976710655          ; 2 uses
  %i.bj = or disjoint i64 %i.bi, 1224979098644774912
  %i.bk = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store i64 %i.bj, ptr %i.bk, align 8
  %.not55 = icmp eq i32 %.0, 0
  br i1 %.not55, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bl = or disjoint i64 %i.bi, -7998392938210000896
  store i64 %i.bl, ptr %i.bk, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.bn = load ptr, ptr %4, align 8
  %i.bo = shl nuw nsw i32 %.0, 3
  %i.bp = zext nneg i32 %i.bo to i64
  %i.bq = call ptr @__memcpy_chk(ptr noundef nonnull %i.bm, ptr noundef %i.bn, i64 noundef %i.bp, i64 noundef 128) #15, !alias.scope !43 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.br = getelementptr i8, ptr %0, i64 32        ; 2 uses
  %i.bs = load i64, ptr %i.br, align 8
  %i.bt = zext nneg i32 %i.aw to i64
  %i.bu = add i64 %i.bs, %i.bt
  %i.bv = call fastcc zeroext i1 @erf_write_phdr(ptr noundef %0, ptr noundef nonnull %6, ptr noundef %5)
  br i1 %i.bv, label %bb.k, label %.loopexit

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #15
  store i16 512, ptr %i.d, align 2
  %i.bw = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  store i16 2048, ptr %i.bw, align 2
  %i.bx = call zeroext i1 @wtap_dump_file_write(ptr noundef %0, ptr noundef nonnull %i.d, i64 noundef 4, ptr noundef %5)
  br i1 %i.bx, label %bb.l, label %erf_meta_write_tag.exit

bb.l:                                             ; preds = %bb.k
  %i.by = call zeroext i1 @wtap_dump_file_write(ptr noundef %0, ptr noundef %i.aq, i64 noundef 8, ptr noundef %5) ; 0 uses
  br label %erf_meta_write_tag.exit

erf_meta_write_tag.exit:                          ; preds = %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #15
  %i.bz = load i32, ptr %i.e, align 8
  %.not65 = icmp eq i32 %i.bz, 0
  br i1 %.not65, label %.preheader.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %erf_meta_write_tag.exit
  %i.ca = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %i.cb = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.cc = getelementptr inbounds nuw i8, ptr %i.c, i64 6
  %i.cd = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph, %erf_meta_write_section.exit
  %indvars.iv67 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next68, %erf_meta_write_section.exit ] ; 2 uses
  %i.ce = load ptr, ptr %3, align 8
  %i.cf = getelementptr [8 x i8], ptr %i.ce, i64 %indvars.iv67
  %i.cg = load ptr, ptr %i.cf, align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  %i.ch = load i16, ptr %i.cg, align 8
  %rev.i56 = call i16 @llvm.bswap.i16(i16 %i.ch)
  store i16 %rev.i56, ptr %i.c, align 2
  store i16 1024, ptr %i.ca, align 2
  %i.ci = getelementptr i8, ptr %i.cg, i64 2
  %i.cj = load i16, ptr %i.ci, align 2
  %rev17.i57 = call i16 @llvm.bswap.i16(i16 %i.cj)
  store i16 %rev17.i57, ptr %i.cb, align 2
  %i.ck = getelementptr i8, ptr %i.cg, i64 4
  %i.cl = load i16, ptr %i.ck, align 4
  %rev18.i = call i16 @llvm.bswap.i16(i16 %i.cl)
  store i16 %rev18.i, ptr %i.cc, align 2
  %i.cm = call zeroext i1 @wtap_dump_file_write(ptr noundef %0, ptr noundef nonnull %i.c, i64 noundef 8, ptr noundef %5)
  br i1 %i.cm, label %.preheader.i, label %erf_meta_write_section.exit

.preheader.i:                                     ; preds = %bb.m
  %i.cn = getelementptr i8, ptr %i.cg, i64 8      ; 2 uses
  %i.co = load ptr, ptr %i.cn, align 8            ; 2 uses
  %i.cp = getelementptr i8, ptr %i.co, i64 8
  %i.cq = load i32, ptr %i.cp, align 8
  %.not.i58 = icmp eq i32 %i.cq, 0
  br i1 %.not.i58, label %erf_meta_write_section.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.q
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.q ], [ 0, %.preheader.i ] ; 2 uses
  %i.cr = phi ptr [ %i.dk, %bb.q ], [ %i.co, %.preheader.i ]
  %i.cs = load ptr, ptr %i.cr, align 8
  %i.ct = getelementptr [8 x i8], ptr %i.cs, i64 %indvars.iv.i
  %i.cu = load ptr, ptr %i.ct, align 8            ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  store i32 0, ptr %i.b, align 4
  %i.cv = getelementptr i8, ptr %i.cu, i64 2      ; 2 uses
  %i.cw = load i16, ptr %i.cv, align 2            ; 2 uses
  %i.cx = zext i16 %i.cw to i32                   ; 3 uses
  %i.cy = add nuw nsw i32 %i.cx, 3
  %i.cz = and i32 %i.cy, 131068                   ; 2 uses
  %i.da = sub nsw i32 %i.cz, %i.cx
  %i.db = load i16, ptr %i.cu, align 8
  %rev.i.i = call i16 @llvm.bswap.i16(i16 %i.db)
  store i16 %rev.i.i, ptr %i.a, align 2
  %rev17.i.i = call i16 @llvm.bswap.i16(i16 %i.cw)
  store i16 %rev17.i.i, ptr %i.cd, align 2
  %i.dc = call zeroext i1 @wtap_dump_file_write(ptr noundef %0, ptr noundef nonnull %i.a, i64 noundef 4, ptr noundef %5)
  br i1 %i.dc, label %bb.n, label %erf_meta_write_tag.exit.thread.i

bb.n:                                             ; preds = %.lr.ph.i
  %i.dd = getelementptr i8, ptr %i.cu, i64 8
  %i.de = load ptr, ptr %i.dd, align 8
  %i.df = load i16, ptr %i.cv, align 2
  %i.dg = zext i16 %i.df to i64
  %i.dh = call zeroext i1 @wtap_dump_file_write(ptr noundef %0, ptr noundef %i.de, i64 noundef %i.dg, ptr noundef %5)
  br i1 %i.dh, label %bb.o, label %erf_meta_write_tag.exit.thread.i

bb.o:                                             ; preds = %bb.n
  %.not.i.i = icmp eq i32 %i.cz, %i.cx
  br i1 %.not.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.di = zext i32 %i.da to i64
  %i.dj = call zeroext i1 @wtap_dump_file_write(ptr noundef %0, ptr noundef nonnull %i.b, i64 noundef %i.di, ptr noundef %5)
  br i1 %i.dj, label %bb.q, label %erf_meta_write_tag.exit.thread.i

erf_meta_write_tag.exit.thread.i:                 ; preds = %bb.p, %bb.n, %.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %erf_meta_write_section.exit

bb.q:                                             ; preds = %bb.p, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.dk = load ptr, ptr %i.cn, align 8            ; 2 uses
  %i.dl = getelementptr i8, ptr %i.dk, i64 8
  %i.dm = load i32, ptr %i.dl, align 8
  %i.dn = zext i32 %i.dm to i64
  %i.do = icmp samesign ult i64 %indvars.iv.next.i, %i.dn
  br i1 %i.do, label %.lr.ph.i, label %erf_meta_write_section.exit, !llvm.loop !47

erf_meta_write_section.exit:                      ; preds = %bb.q, %bb.m, %.preheader.i, %erf_meta_write_tag.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  %indvars.iv.next68 = add nuw nsw i64 %indvars.iv67, 1 ; 2 uses
  %i.dp = load i32, ptr %i.e, align 8
  %i.dq = zext i32 %i.dp to i64
  %i.dr = icmp samesign ult i64 %indvars.iv.next68, %i.dq
  br i1 %i.dr, label %bb.m, label %.preheader.preheader, !llvm.loop !48

.preheader.preheader:                             ; preds = %erf_meta_write_section.exit, %erf_meta_write_tag.exit
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %bb.r
  %i.ds = load i64, ptr %i.br, align 8
  %i.dt = icmp ult i64 %i.ds, %i.bu
  br i1 %i.dt, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.preheader
  %i.du = call zeroext i1 @wtap_dump_file_write(ptr noundef %0, ptr noundef nonnull @.str.42, i64 noundef 1, ptr noundef %5)
  br i1 %i.du, label %.preheader, label %.loopexit, !llvm.loop !49

bb.s:                                             ; preds = %.preheader
  %i.dv = getelementptr i8, ptr %0, i64 24
  store i8 1, ptr %i.dv, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %bb.r, %bb.j, %bb.a, %bb.b, %bb.s, %bb.g
  %.049 = phi i1 [ false, %bb.a ], [ false, %bb.g ], [ false, %bb.j ], [ true, %bb.s ], [ false, %bb.b ], [ false, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  ret i1 %.049
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @erf_wtap_info_to_sections(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 88         ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.e = icmp ne ptr %i.d, null
  %i.f = icmp ne ptr %1, null                     ; 3 uses
  %or.cond.i = and i1 %i.f, %i.e
  br i1 %or.cond.i, label %bb.b, label %erf_wtap_blocks_to_erf_sections.exit

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noalias dereferenceable_or_null(16) ptr @g_malloc(i64 noundef 16) #14 ; 6 uses
  %i.h = tail call ptr @g_ptr_array_new_with_free_func(ptr noundef nonnull @erf_meta_tag_free)
  %i.i = getelementptr i8, ptr %i.g, i64 8        ; 2 uses
  store ptr %i.h, ptr %i.i, align 8
  store i16 -256, ptr %i.g, align 8
  %i.j = getelementptr i8, ptr %i.g, i64 2
  store i16 0, ptr %i.j, align 2
  %i.k = tail call zeroext i1 @wtap_block_foreach_option(ptr noundef nonnull %i.d, ptr noundef nonnull @erf_write_wtap_option_to_capture_tag, ptr noundef %i.g) ; 0 uses
  %i.l = getelementptr i8, ptr %i.g, i64 4        ; 2 uses
  store i16 8, ptr %i.l, align 4
  %i.m = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.n = getelementptr i8, ptr %i.m, i64 8        ; 2 uses
  %i.o = load i32, ptr %i.n, align 8
  %.not.i.i = icmp eq i32 %i.o, 0
  br i1 %.not.i.i, label %erf_populate_section_length_by_tags.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %i.p = phi i16 [ %i.y, %.lr.ph.i.i ], [ 8, %bb.b ]
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i ], [ 0, %bb.b ] ; 2 uses
  %i.q = load ptr, ptr %i.m, align 8
  %i.r = getelementptr [8 x i8], ptr %i.q, i64 %indvars.iv.i.i
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = getelementptr i8, ptr %i.s, i64 2
  %i.u = load i16, ptr %i.t, align 2
  %i.v = add i16 %i.u, 3
  %i.w = and i16 %i.v, -4
  %i.x = add i16 %i.p, 4
  %i.y = add i16 %i.x, %i.w                       ; 2 uses
  store i16 %i.y, ptr %i.l, align 4
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.z = load i32, ptr %i.n, align 8
  %i.aa = zext i32 %i.z to i64
  %i.ab = icmp samesign ult i64 %indvars.iv.next.i.i, %i.aa
  br i1 %i.ab, label %.lr.ph.i.i, label %erf_populate_section_length_by_tags.exit.i, !llvm.loop !39

erf_populate_section_length_by_tags.exit.i:       ; preds = %.lr.ph.i.i, %bb.b
  tail call void @g_ptr_array_add(ptr noundef nonnull %1, ptr noundef %i.g)
  %.pre = load ptr, ptr %i.a, align 8
  %.pre31 = load ptr, ptr %.pre, align 8
  %.pre32 = load ptr, ptr %.pre31, align 8
  br label %erf_wtap_blocks_to_erf_sections.exit

end_hunk_0
