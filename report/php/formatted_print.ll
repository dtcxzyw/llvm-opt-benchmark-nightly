Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/formatted_print?download=true
inline.NumInlined: 21
inline.NumDeleted: 8
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@zif_vfprintf:bb.a

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !19   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !41
  %i.k = tail call i32 @php_file_le_stream() #14
  %i.l = icmp eq i32 %i.j, %i.k
  br i1 %i.l, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = load i32, ptr %i.i, align 8, !tbaa !41
  %i.n = tail call i32 @php_file_le_pstream() #14
  %i.o = icmp eq i32 %i.m, %i.n
  br i1 %i.o, label %.thread, label %bb.f, !prof !42

bb.f:                                             ; preds = %bb.e
  tail call void (i32, ptr, ...) @zend_argument_type_error(i32 noundef 1, ptr noundef nonnull @.str.17) #14
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 960), align 8, !tbaa !71
  %.not74 = icmp eq ptr %i.p, null                ; 2 uses
  %spec.select = select i1 %.not74, i32 14, i32 0
  %spec.select76 = select i1 %.not74, i32 9, i32 1
  br label %.thread100

.thread:                                          ; preds = %bb.d, %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !72
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.u = load i8, ptr %i.t, align 8, !tbaa !19
  %i.v = icmp eq i8 %i.u, 6
  br i1 %i.v, label %zend_parse_arg_str_ex.exit.thread, label %zend_parse_arg_str_ex.exit, !prof !26

zend_parse_arg_str_ex.exit:                       ; preds = %.thread
  %i.w = call zeroext i1 @zend_parse_arg_str_slow(ptr noundef nonnull %i.s, ptr noundef nonnull %i.a, i32 noundef 2) #14
  br i1 %i.w, label %zend_parse_arg_str_ex.exit.thread, label %zend_parse_arg_string.exit, !prof !36

zend_parse_arg_string.exit:                       ; preds = %zend_parse_arg_str_ex.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %.thread100

zend_parse_arg_str_ex.exit.thread:                ; preds = %zend_parse_arg_str_ex.exit, %.thread
  %.in = phi ptr [ %i.s, %.thread ], [ %i.a, %zend_parse_arg_str_ex.exit ]
  %i.x = load ptr, ptr %.in, align 8, !tbaa !19   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ad = load i8, ptr %i.ac, align 8, !tbaa !19
  %i.ae = icmp eq i8 %i.ad, 7
  br i1 %i.ae, label %.critedge, label %.thread100, !prof !26

.thread100:                                       ; preds = %zend_parse_arg_str_ex.exit.thread, %bb.g, %zend_parse_arg_string.exit, %bb.b
  %.068113 = phi i32 [ 1, %bb.b ], [ %spec.select76, %bb.g ], [ 9, %zend_parse_arg_string.exit ], [ 9, %zend_parse_arg_str_ex.exit.thread ]
  %.069112 = phi i32 [ 0, %bb.b ], [ %spec.select, %bb.g ], [ 4, %zend_parse_arg_string.exit ], [ 6, %zend_parse_arg_str_ex.exit.thread ]
  %.070111 = phi ptr [ null, %bb.b ], [ %i.d, %bb.g ], [ %i.s, %zend_parse_arg_string.exit ], [ %i.ab, %zend_parse_arg_str_ex.exit.thread ]
  %.071110 = phi i32 [ 0, %bb.b ], [ 1, %bb.g ], [ 2, %zend_parse_arg_string.exit ], [ 3, %zend_parse_arg_str_ex.exit.thread ]
  call void @zend_wrong_parameter_error(i32 noundef %.068113, i32 noundef %.071110, ptr noundef null, i32 noundef %.069112, ptr noundef %.070111) #14
  br label %bb.m

.critedge:                                        ; preds = %zend_parse_arg_str_ex.exit.thread
  %i.af = load ptr, ptr %i.ab, align 8, !tbaa !19 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 28
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !38
  %i.ai = sext i32 %i.ah to i64
  %i.aj = call noalias ptr @_safe_emalloc(i64 noundef %i.ai, i64 noundef 16, i64 noundef 0) #14 ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !39 ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.an = load i32, ptr %i.am, align 8, !tbaa !19
  %i.ao = shl i32 %i.an, 2
  %i.ap = and i32 %i.ao, 16
  %narrow.i = sub nuw nsw i32 32, %i.ap
  %i.aq = zext nneg i32 %narrow.i to i64          ; 2 uses
  %.not26.i = icmp eq i32 %i.al, 0
  br i1 %.not26.i, label %php_formatted_print_get_array.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.critedge
  %i.ar = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !19 ; 2 uses
  %xtraiter = and i32 %i.al, 1
  %i.at = icmp eq i32 %i.al, 1
  br i1 %i.at, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i32 %i.al, -2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.j, %.lr.ph.preheader.i.new
  %.029.i = phi i32 [ 0, %.lr.ph.preheader.i.new ], [ %.1.i79.1, %bb.j ] ; 3 uses
  %.02428.i = phi ptr [ %i.as, %.lr.ph.preheader.i.new ], [ %i.bn, %bb.j ] ; 3 uses
  %niter = phi i32 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.1, %bb.j ]
  %i.au = getelementptr inbounds nuw i8, ptr %.02428.i, i64 8 ; 2 uses
  %i.av = load i8, ptr %i.au, align 8, !tbaa !19
  %i.aw = icmp eq i8 %i.av, 0
  br i1 %i.aw, label %.lr.ph.i.1, label %bb.h, !prof !25

bb.h:                                             ; preds = %.lr.ph.i
  %i.ax = sext i32 %.029.i to i64
  %i.ay = getelementptr inbounds [16 x i8], ptr %i.aj, i64 %i.ax ; 2 uses
  %i.az = load ptr, ptr %.02428.i, align 8, !tbaa !19
  %i.ba = load i32, ptr %i.au, align 8, !tbaa !19
  store ptr %i.az, ptr %i.ay, align 8, !tbaa !19
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store i32 %i.ba, ptr %i.bb, align 8, !tbaa !19
  %i.bc = add nsw i32 %.029.i, 1
  br label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.h, %.lr.ph.i
  %.1.i79 = phi i32 [ %.029.i, %.lr.ph.i ], [ %i.bc, %bb.h ] ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.02428.i, i64 %i.aq ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8 ; 2 uses
  %i.bf = load i8, ptr %i.be, align 8, !tbaa !19
  %i.bg = icmp eq i8 %i.bf, 0
  br i1 %i.bg, label %bb.j, label %bb.i, !prof !25

bb.i:                                             ; preds = %.lr.ph.i.1
  %i.bh = sext i32 %.1.i79 to i64
  %i.bi = getelementptr inbounds [16 x i8], ptr %i.aj, i64 %i.bh ; 2 uses
  %i.bj = load ptr, ptr %i.bd, align 8, !tbaa !19
  %i.bk = load i32, ptr %i.be, align 8, !tbaa !19
  store ptr %i.bj, ptr %i.bi, align 8, !tbaa !19
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store i32 %i.bk, ptr %i.bl, align 8, !tbaa !19
  %i.bm = add nsw i32 %.1.i79, 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph.i.1
  %.1.i79.1 = phi i32 [ %.1.i79, %.lr.ph.i.1 ], [ %i.bm, %bb.i ] ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.aq ; 2 uses
  %niter.next.1 = add nuw i32 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %php_formatted_print_get_array.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !1

php_formatted_print_get_array.exit.loopexit.unr-lcssa: ; preds = %bb.j
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %php_formatted_print_get_array.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %php_formatted_print_get_array.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %.029.i.epil.init = phi i32 [ 0, %.lr.ph.preheader.i ], [ %.1.i79.1, %php_formatted_print_get_array.exit.loopexit.unr-lcssa ] ; 3 uses
  %.02428.i.epil.init = phi ptr [ %i.as, %.lr.ph.preheader.i ], [ %i.bn, %php_formatted_print_get_array.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod122 = trunc i32 %i.al to i1
  call void @llvm.assume(i1 %lcmp.mod122)
  %i.bo = getelementptr inbounds nuw i8, ptr %.02428.i.epil.init, i64 8 ; 2 uses
  %i.bp = load i8, ptr %i.bo, align 8, !tbaa !19
  %i.bq = icmp eq i8 %i.bp, 0
  br i1 %i.bq, label %php_formatted_print_get_array.exit, label %bb.k, !prof !25

bb.k:                                             ; preds = %.lr.ph.i.epil.preheader
  %i.br = sext i32 %.029.i.epil.init to i64
  %i.bs = getelementptr inbounds [16 x i8], ptr %i.aj, i64 %i.br ; 2 uses
  %i.bt = load ptr, ptr %.02428.i.epil.init, align 8, !tbaa !19
  %i.bu = load i32, ptr %i.bo, align 8, !tbaa !19
  store ptr %i.bt, ptr %i.bs, align 8, !tbaa !19
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store i32 %i.bu, ptr %i.bv, align 8, !tbaa !19
  %i.bw = add nsw i32 %.029.i.epil.init, 1
  br label %php_formatted_print_get_array.exit

php_formatted_print_get_array.exit:               ; preds = %php_formatted_print_get_array.exit.loopexit.unr-lcssa, %bb.k, %.lr.ph.i.epil.preheader, %.critedge
  %.0.lcssa.i = phi i32 [ 0, %.critedge ], [ %.1.i79.1, %php_formatted_print_get_array.exit.loopexit.unr-lcssa ], [ %.029.i.epil.init, %.lr.ph.i.epil.preheader ], [ %i.bw, %bb.k ]
  %i.bx = call fastcc ptr @php_formatted_print(ptr noundef nonnull %i.y, i64 noundef %i.aa, ptr noundef %i.aj, i32 noundef %.0.lcssa.i, i32 noundef -1) ; 4 uses
  call void @_efree(ptr noundef %i.aj) #14
  %i.by = icmp eq ptr %i.bx, null
  br i1 %i.by, label %bb.m, label %bb.l

bb.l:                                             ; preds = %php_formatted_print_get_array.exit
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 16 ; 2 uses
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !29
  %i.cc = call i64 @_php_stream_write(ptr noundef %i.r, ptr noundef nonnull %i.bz, i64 noundef %i.cb) #14 ; 0 uses
  %i.cd = load i64, ptr %i.ca, align 8, !tbaa !29
  store i64 %i.cd, ptr %1, align 8, !tbaa !19
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 4, ptr %i.ce, align 8, !tbaa !19
  call void @_efree(ptr noundef nonnull %i.bx) #14
  br label %bb.m

bb.m:                                             ; preds = %.thread100, %php_formatted_print_get_array.exit, %bb.l
  ret void
}

; Function Attrs: nounwind
declare i64 @__isoc23_strtoll(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

declare zeroext i1 @zend_parse_arg_str_slow(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @php_sprintf_appendstring(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i64 noundef range(i64 -2147483648, 2147483648) %4, i8 noundef signext %5, i64 noundef range(i64 0, 2) %6, i64 noundef %7, i1 noundef zeroext %8, i32 noundef range(i32 0, 2) %9, i32 noundef range(i32 0, 2) %10) unnamed_addr #7 {
bb.a:
  %.not = icmp eq i32 %9, 0
  %i.a = tail call i64 @llvm.umin.i64(i64 %4, i64 %7)
  %i.b = select i1 %.not, i64 %7, i64 %i.a        ; 7 uses
  %i.c = tail call i64 @llvm.usub.sat.i64(i64 %3, i64 %i.b) ; 4 uses
  %i.d = tail call i64 @llvm.umax.i64(i64 %3, i64 %i.b) ; 3 uses
  %i.e = load i64, ptr %1, align 8, !tbaa !24     ; 2 uses
  %i.f = sub i64 2147483646, %i.e
  %i.g = icmp ugt i64 %i.d, %i.f
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (i32, ptr, ...) @zend_error_noreturn(i32 noundef 1, ptr noundef nonnull @.str.12, i64 noundef %i.d) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = add i64 %i.d, 1
  %i.i = add i64 %i.h, %i.e                       ; 3 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !33     ; 8 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !29   ; 3 uses
  %i.m = icmp ugt i64 %i.i, %i.l
  br i1 %i.m, label %.preheader71, label %bb.j

.preheader71:                                     ; preds = %bb.c, %bb.e
  %.073 = phi i64 [ %i.o, %bb.e ], [ %i.l, %bb.c ] ; 2 uses
  %i.n = icmp slt i64 %.073, 0
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.preheader71
  tail call void (i32, ptr, ...) @zend_error_noreturn(i32 noundef 1, ptr noundef nonnull @.str.12, i64 noundef %i.i) #19
  unreachable

bb.e:                                             ; preds = %.preheader71
  %i.o = shl nuw i64 %.073, 1                     ; 7 uses
  %i.p = icmp ugt i64 %i.i, %i.o
  br i1 %i.p, label %.preheader71, label %bb.f, !llvm.loop !83

bb.f:                                             ; preds = %bb.e
  %i.q = icmp uge i64 %i.o, %i.l
  tail call void @llvm.assume(i1 %i.q)
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 4 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !19
  %i.t = and i32 %i.s, 64
  %.not.i = icmp eq i32 %i.t, 0
  br i1 %.not.i, label %bb.g, label %zend_string_alloc.exit.i

bb.g:                                             ; preds = %bb.f
  %i.u = load i32, ptr %i.j, align 8, !tbaa !30
  %i.v = icmp eq i32 %i.u, 1
  br i1 %i.v, label %bb.h, label %zend_string_alloc.exit.i, !prof !26

bb.h:                                             ; preds = %bb.g
  %i.w = and i64 %i.o, -8
  %i.x = add i64 %i.w, 32
  %i.y = tail call ptr @_erealloc(ptr noundef nonnull %i.j, i64 noundef %i.x) #16 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store i64 %i.o, ptr %i.z, align 8, !tbaa !29
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store i64 0, ptr %i.aa, align 8, !tbaa !31
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 4 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !19
  %i.ad = and i32 %i.ac, -513
  store i32 %i.ad, ptr %i.ab, align 4, !tbaa !19
  br label %zend_string_extend.exit

zend_string_alloc.exit.i:                         ; preds = %bb.f, %bb.g
  %i.ae = and i64 %i.o, -8
  %i.af = add i64 %i.ae, 32
  %i.ag = tail call noalias ptr @_emalloc(i64 noundef %i.af) #17 ; 7 uses
  store i32 1, ptr %i.ag, align 4, !tbaa !30
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  store i32 22, ptr %i.ah, align 4, !tbaa !19
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store i64 0, ptr %i.ai, align 8, !tbaa !31
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store i64 %i.o, ptr %i.aj, align 8, !tbaa !29
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.al = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.am = load i64, ptr %i.k, align 8, !tbaa !29
  %i.an = add i64 %i.am, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ak, ptr nonnull align 8 %i.al, i64 %i.an, i1 false)
  %i.ao = load i32, ptr %i.r, align 4, !tbaa !19
  %i.ap = and i32 %i.ao, 64
  %.not21.i = icmp eq i32 %i.ap, 0
  br i1 %.not21.i, label %bb.i, label %zend_string_extend.exit

bb.i:                                             ; preds = %zend_string_alloc.exit.i
  %i.aq = load i32, ptr %i.j, align 8, !tbaa !30  ; 2 uses
  %i.ar = icmp ne i32 %i.aq, 0
  tail call void @llvm.assume(i1 %i.ar)
  %i.as = add i32 %i.aq, -1
  store i32 %i.as, ptr %i.j, align 8, !tbaa !30
  br label %zend_string_extend.exit

zend_string_extend.exit:                          ; preds = %bb.h, %zend_string_alloc.exit.i, %bb.i
  %.0.i = phi ptr [ %i.y, %bb.h ], [ %i.ag, %bb.i ], [ %i.ag, %zend_string_alloc.exit.i ] ; 2 uses
  store ptr %.0.i, ptr %0, align 8, !tbaa !33
  br label %bb.j

bb.j:                                             ; preds = %zend_string_extend.exit, %bb.c
  %i.at = phi ptr [ %.0.i, %zend_string_extend.exit ], [ %i.j, %bb.c ]
  %.not67 = icmp ne i64 %6, 0                     ; 2 uses
  br i1 %.not67, label %bb.k, label %.loopexit70

bb.k:                                             ; preds = %bb.j
  %i.au = icmp ne i32 %10, 0
  %or.cond = or i1 %8, %i.au
  %i.av = icmp eq i8 %5, 48
  %or.cond4 = and i1 %i.av, %or.cond
  br i1 %or.cond4, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.aw = select i1 %8, i8 45, i8 43
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.ay = load i64, ptr %1, align 8, !tbaa !24    ; 2 uses
  %i.az = add i64 %i.ay, 1
  store i64 %i.az, ptr %1, align 8, !tbaa !24
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.ay
  store i8 %i.aw, ptr %i.ba, align 1, !tbaa !19
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.bc = add i64 %i.b, -1
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %.061 = phi ptr [ %i.bb, %bb.l ], [ %2, %bb.k ] ; 3 uses
  %.058 = phi i64 [ %i.bc, %bb.l ], [ %i.b, %bb.k ] ; 3 uses
  %.not6874.not = icmp ugt i64 %3, %i.b
  br i1 %.not6874.not, label %.lr.ph.preheader, label %.loopexit70

.lr.ph.preheader:                                 ; preds = %bb.m
  %.neg = add i64 %i.b, 1
  %xtraiter = and i64 %i.c, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.bd = add nsw i64 %i.c, -1
  %i.be = load ptr, ptr %0, align 8, !tbaa !33
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bg = load i64, ptr %1, align 8, !tbaa !24    ; 2 uses
  %i.bh = add i64 %i.bg, 1
  store i64 %i.bh, ptr %1, align 8, !tbaa !24
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bg
  store i8 %5, ptr %i.bi, align 1, !tbaa !19
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.05975.unr = phi i64 [ %i.c, %.lr.ph.preheader ], [ %i.bd, %.lr.ph.prol ]
  %i.bj = icmp eq i64 %3, %.neg
  br i1 %i.bj, label %.loopexit70, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.05975 = phi i64 [ %i.bp, %.lr.ph ], [ %.05975.unr, %.lr.ph.prol.loopexit ]
  %i.bk = load ptr, ptr %0, align 8, !tbaa !33
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %i.bm = load i64, ptr %1, align 8, !tbaa !24    ; 2 uses
  %i.bn = add i64 %i.bm, 1
  store i64 %i.bn, ptr %1, align 8, !tbaa !24
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bm
  store i8 %5, ptr %i.bo, align 1, !tbaa !19
  %i.bp = add i64 %.05975, -2                     ; 2 uses
  %i.bq = load ptr, ptr %0, align 8, !tbaa !33
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  %i.bs = load i64, ptr %1, align 8, !tbaa !24    ; 2 uses
  %i.bt = add i64 %i.bs, 1
  store i64 %i.bt, ptr %1, align 8, !tbaa !24
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bs
  store i8 %5, ptr %i.bu, align 1, !tbaa !19
  %.not68.1 = icmp eq i64 %i.bp, 0
  br i1 %.not68.1, label %.loopexit70, label %.lr.ph, !llvm.loop !84

.loopexit70:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.m, %bb.j
  %.162 = phi ptr [ %2, %bb.j ], [ %.061, %bb.m ], [ %.061, %.lr.ph ], [ %.061, %.lr.ph.prol.loopexit ]
  %.160 = phi i64 [ %i.c, %bb.j ], [ -1, %bb.m ], [ -1, %.lr.ph ], [ -1, %.lr.ph.prol.loopexit ] ; 5 uses
  %.1 = phi i64 [ %i.b, %bb.j ], [ %.058, %bb.m ], [ %.058, %.lr.ph ], [ %.058, %.lr.ph.prol.loopexit ] ; 2 uses
  %i.bv = load ptr, ptr %0, align 8, !tbaa !33
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  %i.bx = load i64, ptr %1, align 8, !tbaa !24
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.bx
  %i.bz = add i64 %.1, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.by, ptr align 1 %.162, i64 %i.bz, i1 false)
  %i.ca = load i64, ptr %1, align 8, !tbaa !24
  %i.cb = add i64 %i.ca, %.1
  store i64 %i.cb, ptr %1, align 8, !tbaa !24
  %.not6976 = icmp eq i64 %.160, 0
  %or.cond79 = or i1 %.not67, %.not6976
  br i1 %or.cond79, label %.loopexit, label %.lr.ph78.preheader

.lr.ph78.preheader:                               ; preds = %.loopexit70
  %xtraiter86 = and i64 %.160, 1
  %lcmp.mod87.not = icmp eq i64 %xtraiter86, 0
  br i1 %lcmp.mod87.not, label %.lr.ph78.prol.loopexit, label %.lr.ph78.prol

.lr.ph78.prol:                                    ; preds = %.lr.ph78.preheader
  %i.cc = add nsw i64 %.160, -1
  %i.cd = load ptr, ptr %0, align 8, !tbaa !33
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  %i.cf = load i64, ptr %1, align 8, !tbaa !24    ; 2 uses
  %i.cg = add i64 %i.cf, 1
  store i64 %i.cg, ptr %1, align 8, !tbaa !24
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.cf
  store i8 %5, ptr %i.ch, align 1, !tbaa !19
  br label %.lr.ph78.prol.loopexit

.lr.ph78.prol.loopexit:                           ; preds = %.lr.ph78.prol, %.lr.ph78.preheader
  %.277.unr = phi i64 [ %.160, %.lr.ph78.preheader ], [ %i.cc, %.lr.ph78.prol ]
  %i.ci = icmp eq i64 %.160, 1
  br i1 %i.ci, label %.loopexit, label %.lr.ph78

.lr.ph78:                                         ; preds = %.lr.ph78.prol.loopexit, %.lr.ph78
  %.277 = phi i64 [ %i.co, %.lr.ph78 ], [ %.277.unr, %.lr.ph78.prol.loopexit ]
  %i.cj = load ptr, ptr %0, align 8, !tbaa !33
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %i.cl = load i64, ptr %1, align 8, !tbaa !24    ; 2 uses
  %i.cm = add i64 %i.cl, 1
  store i64 %i.cm, ptr %1, align 8, !tbaa !24
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.cl
  store i8 %5, ptr %i.cn, align 1, !tbaa !19
  %i.co = add i64 %.277, -2                       ; 2 uses
  %i.cp = load ptr, ptr %0, align 8, !tbaa !33
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  %i.cr = load i64, ptr %1, align 8, !tbaa !24    ; 2 uses
  %i.cs = add i64 %i.cr, 1
  store i64 %i.cs, ptr %1, align 8, !tbaa !24
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.cr
  store i8 %5, ptr %i.ct, align 1, !tbaa !19
  %.not69.1 = icmp eq i64 %i.co, 0
  br i1 %.not69.1, label %.loopexit, label %.lr.ph78, !llvm.loop !85

.loopexit:                                        ; preds = %.lr.ph78.prol.loopexit, %.lr.ph78, %.loopexit70
  ret void
}

declare void @zend_argument_count_error(ptr noundef, ...) local_unnamed_addr #3

declare noalias ptr @_emalloc_320() local_unnamed_addr #3

; Function Attrs: allocsize(0)
declare noalias ptr @_emalloc(i64 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: allocsize(1)
declare ptr @_erealloc(ptr noundef, i64 noundef) local_unnamed_addr #9

declare ptr @zval_get_string_func(ptr noundef) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @zend_error_noreturn(i32 noundef, ptr noundef, ...) local_unnamed_addr #10

declare i64 @zval_get_long_func(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

declare void @php_error_docref(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #11

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nounwind
declare ptr @localeconv() local_unnamed_addr #5

declare ptr @php_conv_fp(i8 noundef signext, double noundef, i1 noundef zeroext, i32 noundef, i8 noundef signext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @zend_gcvt(double noundef, i32 noundef, i8 noundef signext, i8 noundef signext, ptr noundef) local_unnamed_addr #3

declare double @zval_get_double_func(ptr noundef) local_unnamed_addr #3

declare noalias ptr @_safe_emalloc(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare i32 @php_file_le_stream() local_unnamed_addr #3

declare i32 @php_file_le_pstream() local_unnamed_addr #3

declare void @zend_argument_type_error(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #12

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nounwind willreturn memory(none) }
attributes #14 = { nounwind }
attributes #15 = { nounwind willreturn memory(read) }
attributes #16 = { nounwind allocsize(1) }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { memory(none) }
attributes #19 = { noreturn nounwind }

!llvm.module.flags = !{!2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}
!llvm.errno.tbaa = !{!13}

!0 = distinct !{!0, !22}
!1 = distinct !{!1, !22}
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"PIE Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 2}
!7 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!8 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"omnipotent char", !9, i64 0}
!11 = !{!"int", !10, i64 0}
!12 = !{!"__libc_errno", !11, i64 0}
!13 = !{!12, !11, i64 0}
!14 = !{!"any pointer", !10, i64 0}
!15 = !{!"p1 omnipotent char", !14, i64 0}
!16 = !{!15, !15, i64 0}
!17 = !{!"p1 short", !14, i64 0}
!18 = !{!17, !17, i64 0}
!19 = !{!10, !10, i64 0}
!20 = !{!"short", !10, i64 0}
!21 = !{!20, !20, i64 0}
!22 = !{!"llvm.loop.mustprogress"}
!23 = !{!"long", !10, i64 0}
!24 = !{!23, !23, i64 0}
!25 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!26 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!27 = !{!"_zend_refcounted_h", !11, i64 0, !10, i64 4}
end_hunk_0
