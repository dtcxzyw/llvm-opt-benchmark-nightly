Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/zend_compile?download=true
inline.NumInlined: 808
inline.NumDeleted: 141
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 11
begin_hunk_0_@zend_vm_set_opcode_handler

; Function Attrs: nounwind uwtable
define hidden noundef zeroext i1 @zend_handle_encoding_declaration(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !93
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %zend_string_release_ex.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %zend_string_release_ex.exit ] ; 2 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !96   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !96
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !96   ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !57   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !12
  %i.o = icmp eq i64 %i.n, 8
  br i1 %i.o, label %bb.c, label %zend_string_release_ex.exit

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.q = tail call i32 @zend_binary_strcasecmp(ptr noundef nonnull %i.p, i64 noundef 8, ptr noundef nonnull @.str.26, i64 noundef 8) #30
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %bb.d, label %zend_string_release_ex.exit

bb.d:                                             ; preds = %bb.c
  %i.r = load i16, ptr %i.j, align 8, !tbaa !223
  %.not31 = icmp eq i16 %i.r, 64
  br i1 %.not31, label %bb.e, label %.critedge

.critedge:                                        ; preds = %bb.d
  %i.s = load ptr, ptr @zend_ce_compile_error, align 8, !tbaa !92
  %i.t = tail call ptr @zend_throw_exception(ptr noundef %i.s, ptr noundef nonnull @.str.27, i64 noundef 0) #30 ; 0 uses
  br label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.u = load i8, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 440), align 8, !tbaa !225, !range !82, !noundef !83
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.f, label %bb.q

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.y = load i8, ptr %i.x, align 8, !tbaa !57
  %i.z = icmp eq i8 %i.y, 6
  br i1 %i.z, label %bb.g, label %bb.i, !prof !185

bb.g:                                             ; preds = %bb.f
  %i.aa = load ptr, ptr %i.w, align 8, !tbaa !57  ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !57
  %i.ad = and i32 %i.ac, 64
  %.not.i.i = icmp eq i32 %i.ad, 0
  br i1 %.not.i.i, label %bb.h, label %zval_get_string.exit

bb.h:                                             ; preds = %bb.g
  %i.ae = load i32, ptr %i.aa, align 4, !tbaa !61
  %i.af = add i32 %i.ae, 1
  store i32 %i.af, ptr %i.aa, align 4, !tbaa !61
  br label %zval_get_string.exit

bb.i:                                             ; preds = %bb.f
  %i.ag = tail call ptr @zval_get_string_func(ptr noundef nonnull %i.w) #30
  br label %zval_get_string.exit

zval_get_string.exit:                             ; preds = %bb.g, %bb.h, %bb.i
  %i.ah = phi ptr [ %i.ag, %bb.i ], [ %i.aa, %bb.h ], [ %i.aa, %bb.g ] ; 5 uses
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 442), align 2, !tbaa !65
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24 ; 2 uses
  %i.aj = tail call ptr @zend_multibyte_fetch_encoding(ptr noundef nonnull %i.ai) #30 ; 3 uses
  %.not32 = icmp eq ptr %i.aj, null
  br i1 %.not32, label %bb.j, label %bb.k

bb.j:                                             ; preds = %zval_get_string.exit
  tail call void (i32, ptr, ...) @zend_error(i32 noundef 128, ptr noundef nonnull @.str.28, ptr noundef nonnull %i.ai) #30
  br label %bb.n

bb.k:                                             ; preds = %zval_get_string.exit
  %i.ak = load ptr, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 200), align 8, !tbaa !226 ; 3 uses
  %i.al = load ptr, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 216), align 8, !tbaa !227 ; 2 uses
  %i.am = tail call i32 @zend_multibyte_set_filter(ptr noundef nonnull %i.aj) #30 ; 0 uses
  %i.an = load ptr, ptr getelementptr inbounds nuw (i8, ptr @language_scanner_globals, i64 200), align 8, !tbaa !226
  %.not33 = icmp eq ptr %i.ak, %i.an
  br i1 %.not33, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %.not34 = icmp eq ptr %i.ak, null
  %.not35 = icmp eq ptr %i.aj, %i.al
  %or.cond = select i1 %.not34, i1 true, i1 %.not35
  br i1 %or.cond, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  tail call void @zend_multibyte_yyinput_again(ptr noundef %i.ak, ptr noundef %i.al) #30
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m, %bb.j
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !57
  %i.aq = and i32 %i.ap, 64
  %.not.i = icmp eq i32 %i.aq, 0
  br i1 %.not.i, label %bb.o, label %zend_string_release_ex.exit

bb.o:                                             ; preds = %bb.n
  %i.ar = load i32, ptr %i.ah, align 4, !tbaa !61 ; 2 uses
  %i.as = icmp ne i32 %i.ar, 0
  tail call void @llvm.assume(i1 %i.as)
  %i.at = add i32 %i.ar, -1                       ; 2 uses
  store i32 %i.at, ptr %i.ah, align 4, !tbaa !61
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %bb.p, label %zend_string_release_ex.exit

bb.p:                                             ; preds = %bb.o
  tail call void @_efree(ptr noundef nonnull %i.ah) #30
  br label %zend_string_release_ex.exit

bb.q:                                             ; preds = %bb.e
  tail call void (i32, ptr, ...) @zend_error(i32 noundef 128, ptr noundef nonnull @.str.29) #30
  br label %zend_string_release_ex.exit

zend_string_release_ex.exit:                      ; preds = %bb.p, %bb.o, %bb.n, %bb.q, %bb.c, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.av = load i32, ptr %i.a, align 8, !tbaa !93
  %i.aw = zext i32 %i.av to i64
  %.not38 = icmp samesign ult i64 %indvars.iv.next, %i.aw
  br i1 %.not38, label %bb.b, label %.loopexit, !llvm.loop !228

.loopexit:                                        ; preds = %zend_string_release_ex.exit, %bb.a, %.critedge
  %i.ax = phi i1 [ false, %.critedge ], [ true, %bb.a ], [ true, %zend_string_release_ex.exit ]
  ret i1 %i.ax
}

declare ptr @zend_multibyte_fetch_encoding(ptr noundef) local_unnamed_addr #2

declare i32 @zend_multibyte_set_filter(ptr noundef) local_unnamed_addr #2

declare void @zend_multibyte_yyinput_again(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @zend_set_function_arg_flags(ptr nofree noundef captures(none) initializes((1, 4)) %0) local_unnamed_addr #15 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.a, align 1, !tbaa !57
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 0, ptr %i.b, align 1, !tbaa !57
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 0, ptr %i.c, align 1, !tbaa !57
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !57   ; 5 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load i32, ptr %i.f, align 8, !tbaa !57   ; 3 uses
  %spec.select = tail call i32 @llvm.umin.i32(i32 %i.g, i32 12) ; 6 uses
  %.not29 = icmp eq i32 %i.g, 0
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %.promoted = load i32, ptr %0, align 8, !tbaa !57 ; 2 uses
  %wide.trip.count = zext nneg i32 %spec.select to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.h = icmp eq i32 %i.g, 1
  br i1 %i.h, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 14
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.c ] ; 3 uses
  %i.i = phi i32 [ %.promoted, %.lr.ph.new ], [ %i.y, %bb.c ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.c ]
  %i.j = getelementptr inbounds nuw [32 x i8], ptr %i.e, i64 %indvars.iv
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load i32, ptr %i.k, align 8, !tbaa !192
  %i.m = lshr i32 %i.l, 19
  %i.n = and i32 %i.m, 192
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %indvars.iv.next.tr = trunc i64 %indvars.iv.next to i32
  %i.o = shl i32 %indvars.iv.next.tr, 1
  %i.p = shl nuw i32 %i.n, %i.o
  %i.q = or i32 %i.p, %i.i                        ; 2 uses
  store i32 %i.q, ptr %0, align 8, !tbaa !57
  %i.r = getelementptr inbounds nuw [32 x i8], ptr %i.e, i64 %indvars.iv.next
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load i32, ptr %i.s, align 8, !tbaa !192
  %i.u = lshr i32 %i.t, 19
  %i.v = and i32 %i.u, 192
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %indvars.iv.next.tr.1 = trunc i64 %indvars.iv.next.1 to i32
  %i.w = shl i32 %indvars.iv.next.tr.1, 1
  %i.x = shl nuw i32 %i.v, %i.w
  %i.y = or i32 %i.x, %i.q                        ; 3 uses
  store i32 %i.y, ptr %0, align 8, !tbaa !57
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.c, !llvm.loop !229

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.epil.init = phi i32 [ %.promoted, %.lr.ph ], [ %i.y, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod33 = trunc i32 %spec.select to i1
  tail call void @llvm.assume(i1 %lcmp.mod33)
  %i.z = getelementptr inbounds nuw [32 x i8], ptr %i.e, i64 %indvars.iv.epil.init
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !192
  %i.ac = lshr i32 %i.ab, 19
  %i.ad = and i32 %i.ac, 192
  %i.ae = trunc i64 %indvars.iv.epil.init to i32
  %indvars.iv.next.tr.epil = shl i32 %i.ae, 1
  %i.af = add i32 %indvars.iv.next.tr.epil, 2
  %i.ag = shl nuw i32 %i.ad, %i.af
  %i.ah = or i32 %i.ag, %.epil.init
  store i32 %i.ah, ptr %0, align 8, !tbaa !57
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.b
  %.0.lcssa = phi i32 [ 0, %bb.b ], [ %spec.select, %._crit_edge.loopexit.unr-lcssa ], [ %spec.select, %.epil.preheader ] ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !57
  %i.ak = and i32 %i.aj, 16384
  %.not23 = icmp eq i32 %i.ak, 0
  br i1 %.not23, label %.critedge, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.al = zext nneg i32 %.0.lcssa to i64
  %i.am = getelementptr inbounds nuw [32 x i8], ptr %i.e, i64 %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !192 ; 2 uses
  %i.ap = and i32 %i.ao, 100663296
  %.not24 = icmp eq i32 %i.ap, 0
  br i1 %.not24, label %.critedge, label %.preheader, !prof !185

.preheader:                                       ; preds = %bb.d
  %i.aq = icmp samesign ult i32 %.0.lcssa, 12
  br i1 %i.aq, label %.lr.ph27, label %.critedge

.lr.ph27:                                         ; preds = %.preheader
  %i.ar = lshr i32 %i.ao, 19
  %i.as = and i32 %i.ar, 192                      ; 5 uses
  %.promoted28 = load i32, ptr %0, align 8, !tbaa !57 ; 2 uses
  %i.at = sub nsw i32 0, %spec.select
  %xtraiter34 = and i32 %i.at, 3                  ; 2 uses
  %lcmp.mod35.not = icmp eq i32 %xtraiter34, 0
  br i1 %lcmp.mod35.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph27, %.prol.preheader
  %i.au = phi i32 [ %i.ay, %.prol.preheader ], [ %.promoted28, %.lr.ph27 ]
  %.126.prol = phi i32 [ %i.av, %.prol.preheader ], [ %.0.lcssa, %.lr.ph27 ]
  %prol.iter = phi i32 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph27 ]
  %i.av = add nuw nsw i32 %.126.prol, 1           ; 3 uses
  %i.aw = shl nuw nsw i32 %i.av, 1
  %i.ax = shl nuw i32 %i.as, %i.aw
  %i.ay = or i32 %i.au, %i.ax                     ; 3 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter34
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !230

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph27
  %.lcssa.unr = phi i32 [ poison, %.lr.ph27 ], [ %i.ay, %.prol.preheader ]
  %.unr36 = phi i32 [ %.promoted28, %.lr.ph27 ], [ %i.ay, %.prol.preheader ]
  %.126.unr = phi i32 [ %.0.lcssa, %.lr.ph27 ], [ %i.av, %.prol.preheader ]
  %i.az = add nsw i32 %spec.select, -9
  %i.ba = icmp ult i32 %i.az, 3
  br i1 %i.ba, label %..critedge.loopexit_crit_edge, label %.lr.ph27.new

.lr.ph27.new:                                     ; preds = %.prol.loopexit, %.lr.ph27.new
  %i.bb = phi i32 [ %i.br, %.lr.ph27.new ], [ %.unr36, %.prol.loopexit ]
  %.126 = phi i32 [ %i.bo, %.lr.ph27.new ], [ %.126.unr, %.prol.loopexit ] ; 4 uses
  %i.bc = shl i32 %.126, 1
  %i.bd = add i32 %i.bc, 2
  %i.be = shl nuw i32 %i.as, %i.bd
  %i.bf = or i32 %i.bb, %i.be
  %i.bg = shl i32 %.126, 1
  %i.bh = add i32 %i.bg, 4
  %i.bi = shl nuw i32 %i.as, %i.bh
  %i.bj = or i32 %i.bf, %i.bi
  %i.bk = shl i32 %.126, 1
  %i.bl = add i32 %i.bk, 6
  %i.bm = shl nuw i32 %i.as, %i.bl
  %i.bn = or i32 %i.bj, %i.bm
  %i.bo = add nuw nsw i32 %.126, 4                ; 3 uses
  %i.bp = shl nuw nsw i32 %i.bo, 1
  %i.bq = shl nuw i32 %i.as, %i.bp
  %i.br = or i32 %i.bn, %i.bq                     ; 2 uses
  %exitcond32.not.3 = icmp eq i32 %i.bo, 12
  br i1 %exitcond32.not.3, label %..critedge.loopexit_crit_edge, label %.lr.ph27.new, !llvm.loop !232

..critedge.loopexit_crit_edge:                    ; preds = %.lr.ph27.new, %.prol.loopexit
  %.lcssa = phi i32 [ %.lcssa.unr, %.prol.loopexit ], [ %i.br, %.lr.ph27.new ]
  store i32 %.lcssa, ptr %0, align 8, !tbaa !57
  br label %.critedge

.critedge:                                        ; preds = %.preheader, %..critedge.loopexit_crit_edge, %._crit_edge, %bb.d, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define hidden range(i32 -1, 2) i32 @zend_get_property_hook_kind_from_name(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !12
  %i.c = icmp eq i64 %i.b, 3
  br i1 %i.c, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = tail call i32 @zend_binary_strcasecmp(ptr noundef nonnull %i.d, i64 noundef 3, ptr noundef nonnull @.str.30, i64 noundef 3) #30
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.pr = load i64, ptr %i.a, align 8, !tbaa !12
  %i.f = icmp eq i64 %.pr, 3
  br i1 %i.f, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.g = tail call i32 @zend_binary_strcasecmp(ptr noundef nonnull %i.d, i64 noundef 3, ptr noundef nonnull @.str.31, i64 noundef 3) #30
  %.not8 = icmp eq i32 %i.g, 0
  br i1 %.not8, label %bb.e, label %.thread

.thread:                                          ; preds = %bb.a, %bb.d, %bb.c
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b, %.thread
  %.0 = phi i32 [ -1, %.thread ], [ 0, %bb.b ], [ 1, %bb.d ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i1 @zend_is_op_long_compatible(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca double, align 8                   ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !57    ; 2 uses
  switch i8 %i.c, label %bb.f [
    i8 7, label %bb.m
    i8 5, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = load double, ptr %0, align 8, !tbaa !57  ; 6 uses
  %i.e = tail call double @llvm.fabs.f64(double %i.d)
  %i.f = fcmp ueq double %i.e, +inf
  br i1 %i.f, label %zend_dval_to_lval_silent.exit13, label %bb.c, !prof !136

bb.c:                                             ; preds = %bb.b
  %i.g = fcmp oge double %i.d, f0x43E0000000000000
  %i.h = fcmp olt double %i.d, f0xC3E0000000000000
  %or.cond.i11 = or i1 %i.g, %i.h
  br i1 %or.cond.i11, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = tail call i64 @zend_dval_to_lval_slow(double noundef %i.d) #30
  br label %zend_dval_to_lval_silent.exit13

bb.e:                                             ; preds = %bb.c
  %i.j = fptosi double %i.d to i64
  br label %zend_dval_to_lval_silent.exit13

zend_dval_to_lval_silent.exit13:                  ; preds = %bb.b, %bb.d, %bb.e
  %.0.i12 = phi i64 [ %i.j, %bb.e ], [ %i.i, %bb.d ], [ 0, %bb.b ]
  %i.k = sitofp i64 %.0.i12 to double
  %i.l = fcmp oeq double %i.d, %i.k
  br i1 %i.l, label %thread-pre-split, label %bb.m

thread-pre-split:                                 ; preds = %zend_dval_to_lval_silent.exit13
  %.pr = load i8, ptr %i.b, align 8, !tbaa !57
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %thread-pre-split
  %i.m = phi i8 [ %.pr, %thread-pre-split ], [ %i.c, %bb.a ]
  %i.n = icmp eq i8 %i.m, 6
  br i1 %i.n, label %bb.g, label %bb.m

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store double 0.000000e+00, ptr %i.a, align 8, !tbaa !233
  %i.o = load ptr, ptr %0, align 8, !tbaa !57
  %i.p = call zeroext i8 @is_numeric_str_function(ptr noundef %i.o, ptr noundef null, ptr noundef nonnull %i.a) #30
  switch i8 %i.p, label %bb.l [
    i8 0, label %.sink.split
    i8 5, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g
  %i.q = load double, ptr %i.a, align 8, !tbaa !233 ; 6 uses
end_hunk_0
begin_hunk_1_@zend_compile_func_decl_ex:bb.a

.thread257:                                       ; preds = %bb.ga
  %i.aew = or i32 %.0230.i, 256
  %i.aex = call ptr @zend_declare_typed_property(ptr noundef nonnull %i.acv, ptr noundef nonnull %i.wm, ptr noundef nonnull %12, i32 noundef %i.aew, ptr noundef %i.aeu, ptr noundef nonnull byval(%struct.zend_type) align 8 %11) #30, !inline_history !317
  br label %bb.gi

.preheader.i225:                                  ; preds = %bb.ga
  %i.aey = getelementptr inbounds nuw i8, ptr %i.wi, i64 8 ; 3 uses
  %i.aez = load i32, ptr %i.aey, align 8, !tbaa !93
  %.not5.i = icmp eq i32 %i.aez, 0
  br i1 %.not5.i, label %.sink.split, label %.lr.ph.i226

.lr.ph.i226:                                      ; preds = %.preheader.i225
  %i.afa = getelementptr inbounds nuw i8, ptr %i.wi, i64 16
  br label %.outer

.outer:                                           ; preds = %.thread495, %.lr.ph.i226
  %indvars.iv.i227.ph = phi i64 [ %indvars.iv.next.i229497, %.thread495 ], [ 0, %.lr.ph.i226 ]
  %.0143.i.ph = phi i1 [ false, %.thread495 ], [ true, %.lr.ph.i226 ]
  br label %bb.gb

bb.gb:                                            ; preds = %.outer, %bb.gf
  %indvars.iv.i227 = phi i64 [ %indvars.iv.next.i229, %bb.gf ], [ %indvars.iv.i227.ph, %.outer ] ; 3 uses
  %i.afb = getelementptr inbounds nuw [8 x i8], ptr %i.afa, i64 %indvars.iv.i227
  %i.afc = load ptr, ptr %i.afb, align 8, !tbaa !96 ; 2 uses
  %i.afd = getelementptr inbounds nuw i8, ptr %i.afc, i64 48
  %i.afe = load ptr, ptr %i.afd, align 8, !tbaa !96 ; 3 uses
  %.not19.i = icmp eq ptr %i.afe, null
  br i1 %.not19.i, label %bb.gf, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  %i.aff = getelementptr inbounds nuw i8, ptr %i.afc, i64 24
  %i.afg = load ptr, ptr %i.aff, align 8, !tbaa !259 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.afe, ptr %i.c, align 8, !tbaa !96
  %i.afh = getelementptr inbounds nuw i8, ptr %i.afg, i64 16
  %i.afi = load i64, ptr %i.afh, align 8, !tbaa !12
  %i.afj = icmp eq i64 %i.afi, 3
  br i1 %i.afj, label %bb.gd, label %zend_property_hook_uses_property.exit.i

bb.gd:                                            ; preds = %bb.gc
  %i.afk = getelementptr inbounds nuw i8, ptr %i.afg, i64 24
  %i.afl = call i32 @zend_binary_strcasecmp(ptr noundef nonnull %i.afk, i64 noundef 3, ptr noundef nonnull @.str.31, i64 noundef 3) #30
  %.not.i.i230 = icmp eq i32 %i.afl, 0
  br i1 %.not.i.i230, label %bb.ge, label %zend_property_hook_uses_property.exit.i

bb.ge:                                            ; preds = %bb.gd
  %i.afm = load i16, ptr %i.afe, align 8, !tbaa !223
  %i.afn = icmp eq i16 %i.afm, 287
  br i1 %i.afn, label %zend_property_hook_uses_property.exit.thread.i, label %zend_property_hook_uses_property.exit.i

zend_property_hook_uses_property.exit.thread.i:   ; preds = %bb.ge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %.thread495

zend_property_hook_uses_property.exit.i:          ; preds = %bb.ge, %bb.gd, %bb.gc
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  store ptr %i.wm, ptr %7, align 8, !tbaa !325
  store i64 0, ptr %i.vb, align 8
  call void @zend_property_hook_find_property_usage(ptr noundef nonnull %i.c, ptr noundef nonnull %7)
  %i.afo = load i8, ptr %i.vb, align 8, !tbaa !327, !range !82, !noundef !83
  %i.afp = trunc nuw i8 %i.afo to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br i1 %i.afp, label %.thread495, label %bb.gf

bb.gf:                                            ; preds = %zend_property_hook_uses_property.exit.i, %bb.gb
  %indvars.iv.next.i229 = add nuw nsw i64 %indvars.iv.i227, 1 ; 2 uses
  %i.afq = load i32, ptr %i.aey, align 8, !tbaa !93
  %i.afr = zext i32 %i.afq to i64
  %i.afs = icmp samesign ult i64 %indvars.iv.next.i229, %i.afr
  br i1 %i.afs, label %bb.gb, label %zend_property_is_virtual.exit, !llvm.loop !328

.thread495:                                       ; preds = %zend_property_hook_uses_property.exit.i, %zend_property_hook_uses_property.exit.thread.i
  %indvars.iv.next.i229497 = add nuw nsw i64 %indvars.iv.i227, 1 ; 2 uses
  %i.aft = load i32, ptr %i.aey, align 8, !tbaa !93
  %i.afu = zext i32 %i.aft to i64
  %i.afv = icmp samesign ult i64 %indvars.iv.next.i229497, %i.afu
  br i1 %i.afv, label %.outer, label %.thread256, !llvm.loop !328

zend_property_is_virtual.exit:                    ; preds = %bb.gf
  br i1 %.0143.i.ph, label %.sink.split, label %.thread256

.thread256:                                       ; preds = %.thread495, %zend_property_is_virtual.exit
  br label %.sink.split

bb.gg:                                            ; preds = %zend_string_copy.exit.i173
  %i.afw = or i32 %.0230.i, 768
  %i.afx = call ptr @zend_declare_typed_property(ptr noundef nonnull %i.acv, ptr noundef nonnull %i.wm, ptr noundef nonnull %12, i32 noundef %i.afw, ptr noundef %i.aeu, ptr noundef nonnull byval(%struct.zend_type) align 8 %11) #30, !inline_history !317 ; 2 uses
  br i1 %i.wx, label %bb.gh, label %bb.gi

.sink.split:                                      ; preds = %zend_property_is_virtual.exit, %.preheader.i225, %.thread256
  %.sink573 = phi i32 [ 256, %.thread256 ], [ 768, %.preheader.i225 ], [ 768, %zend_property_is_virtual.exit ]
  %i.afy = or i32 %.0230.i, %.sink573
  %i.afz = call ptr @zend_declare_typed_property(ptr noundef nonnull %i.acv, ptr noundef nonnull %i.wm, ptr noundef nonnull %12, i32 noundef %i.afy, ptr noundef %i.aeu, ptr noundef nonnull byval(%struct.zend_type) align 8 %11) #30
  br label %bb.gh

bb.gh:                                            ; preds = %.sink.split, %bb.gg
  %i.aga = phi ptr [ %i.afx, %bb.gg ], [ %i.afz, %.sink.split ] ; 2 uses
  call fastcc void @zend_compile_property_hooks(ptr noundef %i.aga, ptr noundef nonnull %i.wm, ptr noundef %i.vz, ptr noundef nonnull %i.wi), !inline_history !317
  br label %bb.gi

bb.gi:                                            ; preds = %.thread257, %bb.gh, %bb.gg
  %i.agb = phi ptr [ %i.aga, %bb.gh ], [ %i.afx, %bb.gg ], [ %i.aex, %.thread257 ] ; 2 uses
  br i1 %.not250.i, label %bb.gl, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  %i.agc = getelementptr inbounds nuw i8, ptr %i.agb, i64 24 ; 2 uses
  call fastcc void @zend_compile_attributes(ptr noundef nonnull %i.agc, ptr noundef nonnull %i.we, i32 noundef 0, i32 noundef 8, i32 noundef 32), !inline_history !317
  %i.agd = load ptr, ptr %i.agc, align 8, !tbaa !329
  %i.age = call ptr @zend_get_attribute_str(ptr noundef %i.agd, ptr noundef nonnull @.str.94, i64 noundef 8) #30, !inline_history !317
  %.not267.i = icmp eq ptr %i.age, null
  br i1 %.not267.i, label %bb.gl, label %bb.gk

bb.gk:                                            ; preds = %bb.gj
  %i.agf = getelementptr inbounds nuw i8, ptr %i.agb, i64 4 ; 2 uses
  %i.agg = load i32, ptr %i.agf, align 4, !tbaa !332
  %i.agh = or i32 %i.agg, 268435456
  store i32 %i.agh, ptr %i.agf, align 4, !tbaa !332
  br label %bb.gl

bb.gl:                                            ; preds = %bb.gk, %bb.gj, %bb.gi
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  br label %bb.gm

bb.gm:                                            ; preds = %bb.gl, %bb.ff
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  %i.agi = load i32, ptr %i.ud, align 8, !tbaa !93 ; 2 uses
  %i.agj = zext i32 %i.agi to i64
  %i.agk = icmp samesign ult i64 %indvars.iv.next434, %i.agj
  br i1 %i.agk, label %bb.dm, label %._crit_edge, !llvm.loop !333

._crit_edge:                                      ; preds = %bb.gm, %zend_string_release.exit280.i
  %.lcssa274 = phi i32 [ 0, %zend_string_release.exit280.i ], [ %i.agi, %bb.gm ] ; 3 uses
  %i.agl = getelementptr inbounds nuw i8, ptr %i.uc, i64 32 ; 2 uses
  store i32 %.lcssa274, ptr %i.agl, align 8, !tbaa !334
  %i.agm = getelementptr inbounds nuw i8, ptr %i.uc, i64 40
  store ptr %.pr, ptr %i.agm, align 8, !tbaa !191
  %i.agn = getelementptr inbounds nuw i8, ptr %i.uc, i64 4
  %i.ago = load i32, ptr %i.agn, align 4, !tbaa !190
  %i.agp = and i32 %i.ago, 16384
  %.not242.i = icmp eq i32 %i.agp, 0              ; 2 uses
  br i1 %.not242.i, label %bb.go, label %bb.gn

bb.gn:                                            ; preds = %._crit_edge
  %i.agq = add i32 %.lcssa274, -1                 ; 2 uses
  store i32 %i.agq, ptr %i.agl, align 8, !tbaa !334
  br label %bb.go

bb.go:                                            ; preds = %bb.gn, %._crit_edge
  %i.agr = phi i32 [ %i.agq, %bb.gn ], [ %.lcssa274, %._crit_edge ] ; 3 uses
  %i.ags = getelementptr inbounds nuw i8, ptr %i.uc, i64 1
  store i8 0, ptr %i.ags, align 1, !tbaa !57
  %i.agt = getelementptr inbounds nuw i8, ptr %i.uc, i64 2
  store i8 0, ptr %i.agt, align 2, !tbaa !57
  %i.agu = getelementptr inbounds nuw i8, ptr %i.uc, i64 3
  store i8 0, ptr %i.agu, align 1, !tbaa !57
  %.not.i215 = icmp eq ptr %.pr, null
  br i1 %.not.i215, label %zend_set_function_arg_flags.exit, label %bb.gp

bb.gp:                                            ; preds = %bb.go
  %spec.select.i216 = call i32 @llvm.umin.i32(i32 %i.agr, i32 12) ; 6 uses
  %.not29.i = icmp eq i32 %i.agr, 0
  br i1 %.not29.i, label %._crit_edge.i220, label %.lr.ph.i217

.lr.ph.i217:                                      ; preds = %bb.gp
  %.promoted.i = load i32, ptr %i.uc, align 8, !tbaa !57 ; 2 uses
  %wide.trip.count.i = zext nneg i32 %spec.select.i216 to i64 ; 2 uses
  %xtraiter717 = and i64 %wide.trip.count.i, 1
  %i.agv = icmp eq i32 %i.agr, 1
  br i1 %i.agv, label %.epil.preheader716, label %.lr.ph.i217.new

.lr.ph.i217.new:                                  ; preds = %.lr.ph.i217
  %unroll_iter720 = and i64 %wide.trip.count.i, 14
  br label %bb.gq

bb.gq:                                            ; preds = %bb.gq, %.lr.ph.i217.new
  %indvars.iv.i218 = phi i64 [ 0, %.lr.ph.i217.new ], [ %indvars.iv.next.i219.1, %bb.gq ] ; 3 uses
  %i.agw = phi i32 [ %.promoted.i, %.lr.ph.i217.new ], [ %i.ahm, %bb.gq ]
  %niter721 = phi i64 [ 0, %.lr.ph.i217.new ], [ %niter721.next.1, %bb.gq ]
  %i.agx = getelementptr inbounds nuw [32 x i8], ptr %.pr, i64 %indvars.iv.i218
  %i.agy = getelementptr inbounds nuw i8, ptr %i.agx, i64 16
  %i.agz = load i32, ptr %i.agy, align 8, !tbaa !192
  %i.aha = lshr i32 %i.agz, 19
  %i.ahb = and i32 %i.aha, 192
  %indvars.iv.next.i219 = or disjoint i64 %indvars.iv.i218, 1 ; 2 uses
  %indvars.iv.next.tr.i = trunc i64 %indvars.iv.next.i219 to i32
  %i.ahc = shl i32 %indvars.iv.next.tr.i, 1
  %i.ahd = shl nuw i32 %i.ahb, %i.ahc
  %i.ahe = or i32 %i.ahd, %i.agw                  ; 2 uses
  store i32 %i.ahe, ptr %i.uc, align 8, !tbaa !57
  %i.ahf = getelementptr inbounds nuw [32 x i8], ptr %.pr, i64 %indvars.iv.next.i219
  %i.ahg = getelementptr inbounds nuw i8, ptr %i.ahf, i64 16
  %i.ahh = load i32, ptr %i.ahg, align 8, !tbaa !192
  %i.ahi = lshr i32 %i.ahh, 19
  %i.ahj = and i32 %i.ahi, 192
  %indvars.iv.next.i219.1 = add nuw nsw i64 %indvars.iv.i218, 2 ; 3 uses
  %indvars.iv.next.tr.i.1 = trunc i64 %indvars.iv.next.i219.1 to i32
  %i.ahk = shl i32 %indvars.iv.next.tr.i.1, 1
  %i.ahl = shl nuw i32 %i.ahj, %i.ahk
  %i.ahm = or i32 %i.ahl, %i.ahe                  ; 3 uses
  store i32 %i.ahm, ptr %i.uc, align 8, !tbaa !57
  %niter721.next.1 = add i64 %niter721, 2         ; 2 uses
  %niter721.ncmp.1 = icmp eq i64 %niter721.next.1, %unroll_iter720
  br i1 %niter721.ncmp.1, label %._crit_edge.i220.loopexit.unr-lcssa, label %bb.gq, !llvm.loop !229

._crit_edge.i220.loopexit.unr-lcssa:              ; preds = %bb.gq
  %lcmp.mod718.not = icmp eq i64 %xtraiter717, 0
  br i1 %lcmp.mod718.not, label %._crit_edge.i220, label %.epil.preheader716

.epil.preheader716:                               ; preds = %._crit_edge.i220.loopexit.unr-lcssa, %.lr.ph.i217
  %indvars.iv.i218.epil.init = phi i64 [ 0, %.lr.ph.i217 ], [ %indvars.iv.next.i219.1, %._crit_edge.i220.loopexit.unr-lcssa ] ; 2 uses
  %.epil.init = phi i32 [ %.promoted.i, %.lr.ph.i217 ], [ %i.ahm, %._crit_edge.i220.loopexit.unr-lcssa ]
  %lcmp.mod719 = trunc i32 %spec.select.i216 to i1
  call void @llvm.assume(i1 %lcmp.mod719)
  %i.ahn = getelementptr inbounds nuw [32 x i8], ptr %.pr, i64 %indvars.iv.i218.epil.init
  %i.aho = getelementptr inbounds nuw i8, ptr %i.ahn, i64 16
  %i.ahp = load i32, ptr %i.aho, align 8, !tbaa !192
  %i.ahq = lshr i32 %i.ahp, 19
  %i.ahr = and i32 %i.ahq, 192
  %i.ahs = trunc i64 %indvars.iv.i218.epil.init to i32
  %indvars.iv.next.tr.i.epil = shl i32 %i.ahs, 1
  %i.aht = add i32 %indvars.iv.next.tr.i.epil, 2
  %i.ahu = shl nuw i32 %i.ahr, %i.aht
  %i.ahv = or i32 %i.ahu, %.epil.init
  store i32 %i.ahv, ptr %i.uc, align 8, !tbaa !57
  br label %._crit_edge.i220

._crit_edge.i220:                                 ; preds = %.epil.preheader716, %._crit_edge.i220.loopexit.unr-lcssa, %bb.gp
  %.0.lcssa.i = phi i32 [ 0, %bb.gp ], [ %spec.select.i216, %._crit_edge.i220.loopexit.unr-lcssa ], [ %spec.select.i216, %.epil.preheader716 ] ; 4 uses
  br i1 %.not242.i, label %zend_set_function_arg_flags.exit, label %bb.gr

bb.gr:                                            ; preds = %._crit_edge.i220
  %i.ahw = zext nneg i32 %.0.lcssa.i to i64
  %i.ahx = getelementptr inbounds nuw [32 x i8], ptr %.pr, i64 %i.ahw
  %i.ahy = getelementptr inbounds nuw i8, ptr %i.ahx, i64 16
  %i.ahz = load i32, ptr %i.ahy, align 8, !tbaa !192 ; 2 uses
  %i.aia = and i32 %i.ahz, 100663296
  %.not24.i222 = icmp eq i32 %i.aia, 0
  br i1 %.not24.i222, label %zend_set_function_arg_flags.exit, label %.preheader.i, !prof !185

.preheader.i:                                     ; preds = %bb.gr
  %i.aib = icmp samesign ult i32 %.0.lcssa.i, 12
  br i1 %i.aib, label %.lr.ph27.i, label %zend_set_function_arg_flags.exit

.lr.ph27.i:                                       ; preds = %.preheader.i
  %i.aic = lshr i32 %i.ahz, 19
  %i.aid = and i32 %i.aic, 192                    ; 5 uses
  %.promoted28.i = load i32, ptr %i.uc, align 8, !tbaa !57 ; 2 uses
  %i.aie = sub nsw i32 0, %spec.select.i216
  %xtraiter722 = and i32 %i.aie, 3                ; 2 uses
  %lcmp.mod723.not = icmp eq i32 %xtraiter722, 0
  br i1 %lcmp.mod723.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph27.i, %.prol.preheader
  %i.aif = phi i32 [ %i.aij, %.prol.preheader ], [ %.promoted28.i, %.lr.ph27.i ]
  %.126.i.prol = phi i32 [ %i.aig, %.prol.preheader ], [ %.0.lcssa.i, %.lr.ph27.i ]
  %prol.iter = phi i32 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph27.i ]
  %i.aig = add nuw nsw i32 %.126.i.prol, 1        ; 3 uses
  %i.aih = shl nuw nsw i32 %i.aig, 1
  %i.aii = shl nuw i32 %i.aid, %i.aih
  %i.aij = or i32 %i.aii, %i.aif                  ; 3 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter722
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !335

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph27.i
  %.lcssa645.unr = phi i32 [ poison, %.lr.ph27.i ], [ %i.aij, %.prol.preheader ]
  %.unr724 = phi i32 [ %.promoted28.i, %.lr.ph27.i ], [ %i.aij, %.prol.preheader ]
  %.126.i.unr = phi i32 [ %.0.lcssa.i, %.lr.ph27.i ], [ %i.aig, %.prol.preheader ]
  %i.aik = add nsw i32 %spec.select.i216, -9
  %i.ail = icmp ult i32 %i.aik, 3
  br i1 %i.ail, label %..critedge.loopexit_crit_edge.i, label %.lr.ph27.i.new

.lr.ph27.i.new:                                   ; preds = %.prol.loopexit, %.lr.ph27.i.new
  %i.aim = phi i32 [ %i.ajc, %.lr.ph27.i.new ], [ %.unr724, %.prol.loopexit ]
  %.126.i = phi i32 [ %i.aiz, %.lr.ph27.i.new ], [ %.126.i.unr, %.prol.loopexit ] ; 4 uses
  %i.ain = shl i32 %.126.i, 1
  %i.aio = add i32 %i.ain, 2
  %i.aip = shl nuw i32 %i.aid, %i.aio
  %i.aiq = or i32 %i.aip, %i.aim
  %i.air = shl i32 %.126.i, 1
  %i.ais = add i32 %i.air, 4
  %i.ait = shl nuw i32 %i.aid, %i.ais
  %i.aiu = or i32 %i.ait, %i.aiq
  %i.aiv = shl i32 %.126.i, 1
  %i.aiw = add i32 %i.aiv, 6
  %i.aix = shl nuw i32 %i.aid, %i.aiw
  %i.aiy = or i32 %i.aix, %i.aiu
  %i.aiz = add nuw nsw i32 %.126.i, 4             ; 3 uses
  %i.aja = shl nuw nsw i32 %i.aiz, 1
  %i.ajb = shl nuw i32 %i.aid, %i.aja
  %i.ajc = or i32 %i.ajb, %i.aiy                  ; 2 uses
  %exitcond32.not.i.3 = icmp eq i32 %i.aiz, 12
  br i1 %exitcond32.not.i.3, label %..critedge.loopexit_crit_edge.i, label %.lr.ph27.i.new, !llvm.loop !232

..critedge.loopexit_crit_edge.i:                  ; preds = %.lr.ph27.i.new, %.prol.loopexit
  %.lcssa645 = phi i32 [ %.lcssa645.unr, %.prol.loopexit ], [ %i.ajc, %.lr.ph27.i.new ]
  store i32 %.lcssa645, ptr %i.uc, align 8, !tbaa !57
  br label %zend_set_function_arg_flags.exit

zend_set_function_arg_flags.exit:                 ; preds = %bb.go, %._crit_edge.i220, %bb.gr, %.preheader.i, %..critedge.loopexit_crit_edge.i
  %i.ajd = load i32, ptr %i.ud, align 8, !tbaa !93 ; 2 uses
  %.not359 = icmp eq i32 %i.ajd, 0
  br i1 %.not359, label %zend_compile_params.exit, label %.lr.ph356

.lr.ph356:                                        ; preds = %zend_set_function_arg_flags.exit
  %i.aje = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.ajf = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.ajg = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.ajh = getelementptr inbounds nuw i8, ptr %14, i64 8
  br label %bb.gs

bb.gs:                                            ; preds = %.lr.ph356, %bb.gw
  %i.aji = phi i32 [ %i.ajd, %.lr.ph356 ], [ %i.akp, %bb.gw ]
  %indvars.iv436 = phi i64 [ 0, %.lr.ph356 ], [ %indvars.iv.next437, %bb.gw ] ; 2 uses
  %i.ajj = getelementptr inbounds nuw [8 x i8], ptr %i.aje, i64 %indvars.iv436
  %i.ajk = load ptr, ptr %i.ajj, align 8, !tbaa !96 ; 4 uses
  %i.ajl = getelementptr inbounds nuw i8, ptr %i.ajk, i64 48
  %i.ajm = load ptr, ptr %i.ajl, align 8, !tbaa !96
  %i.ajn = getelementptr inbounds nuw i8, ptr %i.ajk, i64 2
  %i.ajo = load i16, ptr %i.ajn, align 2, !tbaa !238 ; 2 uses
  %i.ajp = and i16 %i.ajo, 7335
  %i.ajq = icmp ne i16 %i.ajp, 0
  %i.ajr = icmp ne ptr %i.ajm, null
  %i.ajs = select i1 %i.ajq, i1 true, i1 %i.ajr
  br i1 %i.ajs, label %bb.gt, label %bb.gw

bb.gt:                                            ; preds = %bb.gs
  %i.ajt = getelementptr inbounds nuw i8, ptr %i.ajk, i64 4
  %i.aju = load i32, ptr %i.ajt, align 4, !tbaa !254
  store i32 %i.aju, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 40), align 8, !tbaa !81
  %i.ajv = getelementptr inbounds nuw i8, ptr %i.ajk, i64 16
  %i.ajw = load ptr, ptr %i.ajv, align 8, !tbaa !96
  %i.ajx = getelementptr inbounds nuw i8, ptr %i.ajw, i64 8
  %i.ajy = load ptr, ptr %i.ajx, align 8, !tbaa !57 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #30
  store i8 1, ptr %13, align 8, !tbaa !198
  store ptr %i.ajy, ptr %i.ajf, align 8, !tbaa !57
  %i.ajz = getelementptr inbounds nuw i8, ptr %i.ajy, i64 4
  %i.aka = load i32, ptr %i.ajz, align 4, !tbaa !57
  %i.akb = and i32 %i.aka, 64
  %.not244.i = icmp eq i32 %i.akb, 0
  br i1 %.not244.i, label %bb.gu, label %bb.gv

bb.gu:                                            ; preds = %bb.gt
  %i.akc = load i32, ptr %i.ajy, align 4, !tbaa !61
  %i.akd = add i32 %i.akc, 1
  store i32 %i.akd, ptr %i.ajy, align 4, !tbaa !61
  br label %bb.gv

bb.gv:                                            ; preds = %bb.gt, %bb.gu
  %storemerge493 = phi i32 [ 262, %bb.gu ], [ 6, %bb.gt ]
  store i32 %storemerge493, ptr %i.ajg, align 8, !tbaa !57
  store i8 8, ptr %14, align 8, !tbaa !198
  %i.ake = call fastcc i32 @lookup_cv(ptr noundef nonnull %i.ajy), !inline_history !317
  store i32 %i.ake, ptr %i.ajh, align 8, !tbaa !57
  %i.akf = trunc i16 %i.ajo to i8
  %i.akg = and i8 %i.akf, 8
  %i.akh = add nuw nsw i8 %i.akg, 24
  %i.aki = call fastcc ptr @zend_emit_op(ptr noundef null, i8 noundef zeroext %i.akh, ptr noundef null, ptr noundef nonnull %13), !inline_history !317
  %i.akj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 48), align 8, !tbaa !74
  %i.akk = getelementptr inbounds nuw i8, ptr %i.akj, i64 88 ; 2 uses
  %i.akl = load i32, ptr %i.akk, align 8, !tbaa !274 ; 2 uses
  %i.akm = add i32 %i.akl, 24
  store i32 %i.akm, ptr %i.akk, align 8, !tbaa !274
  %i.akn = getelementptr inbounds nuw i8, ptr %i.aki, i64 20
  store i32 %i.akl, ptr %i.akn, align 4, !tbaa !200
  %i.ako = call fastcc ptr @zend_emit_op(ptr noundef null, i8 noundef zeroext -119, ptr noundef nonnull %14, ptr noundef null) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  %.pre443 = load i32, ptr %i.ud, align 8, !tbaa !93
  br label %bb.gw

bb.gw:                                            ; preds = %bb.gv, %bb.gs
  %i.akp = phi i32 [ %.pre443, %bb.gv ], [ %i.aji, %bb.gs ] ; 2 uses
  %indvars.iv.next437 = add nuw nsw i64 %indvars.iv436, 1 ; 2 uses
  %i.akq = zext i32 %i.akp to i64
  %i.akr = icmp samesign ult i64 %indvars.iv.next437, %i.akq
  br i1 %i.akr, label %bb.gs, label %zend_compile_params.exit, !llvm.loop !336

zend_compile_params.exit:                         ; preds = %bb.gw, %zend_set_function_arg_flags.exit, %bb.dj
  %i.aks = load ptr, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 48), align 8, !tbaa !74
  %i.akt = getelementptr inbounds nuw i8, ptr %i.aks, i64 4
  %i.aku = load i32, ptr %i.akt, align 4, !tbaa !190
  %i.akv = and i32 %i.aku, 16777216
  %.not117 = icmp eq i32 %i.akv, 0
  br i1 %.not117, label %bb.gz, label %bb.gx

bb.gx:                                            ; preds = %zend_compile_params.exit
  call fastcc void @zend_mark_function_as_generator()
  %i.akw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 48), align 8, !tbaa !74 ; 3 uses
  %i.akx = getelementptr inbounds nuw i8, ptr %i.akw, i64 96 ; 2 uses
  %i.aky = load i32, ptr %i.akx, align 8, !tbaa !194 ; 3 uses
  %i.akz = add i32 %i.aky, 1
  store i32 %i.akz, ptr %i.akx, align 8, !tbaa !194
  %i.ala = load i32, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 192), align 8, !tbaa !195 ; 2 uses
  %.not.i.i178 = icmp ult i32 %i.aky, %i.ala
end_hunk_1
