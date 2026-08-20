inline.NumInlined: 1460
inline.NumDeleted: 143
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@rb_ary_repeated_combination:bb.a
  br i1 %i.de, label %rcombinate0.exit, label %.lr.ph

bb.w:                                             ; preds = %bb.v, %.lr.ph29.i
  %.12128.i = phi i64 [ %.020.ph.i, %.lr.ph29.i ], [ %i.dd, %bb.v ] ; 2 uses
  store i64 %.12128.i, ptr %i.cz, align 8, !tbaa !15
  %i.df = load i64, ptr @rb_cArray, align 8, !tbaa !15 ; 2 uses
  %i.dg = call zeroext i1 @rb_gc_size_allocatable_p(i64 noundef %spec.store.select.i.i.i.i) #24
  br i1 %i.dg, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.dh = load ptr, ptr %i.bs, align 8, !tbaa !25
  store volatile ptr %i.dh, ptr %i.d, align 8, !tbaa !25
  %.0..0..0..0..0..0..0..0..0..0..0..0..i.i.i.i = load volatile ptr, ptr %i.d, align 8, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.di = call i64 @rb_wb_protected_newobj_of(ptr noundef %.0..0..0..0..0..0..0..0..0..0..0..0..i.i.i.i, i64 noundef %i.df, i64 noundef 8199, i32 noundef 0, i64 noundef %spec.store.select.i.i.i.i) #24 ; 2 uses
  %.pre.i = inttoptr i64 %i.di to ptr
  br label %ary_new.exit.i

bb.y:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.dj = load ptr, ptr %i.bs, align 8, !tbaa !25
  store volatile ptr %i.dj, ptr %i.c, align 8, !tbaa !25
  %.0..0..0..0..0..0..0..0..0..0..0..0..i.i14.i.i = load volatile ptr, ptr %i.c, align 8, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.dk = call i64 @rb_wb_protected_newobj_of(ptr noundef %.0..0..0..0..0..0..0..0..0..0..0..0..i.i14.i.i, i64 noundef %i.df, i64 noundef 7, i32 noundef 0, i64 noundef 40) #24 ; 2 uses
  %i.dl = inttoptr i64 %i.dk to ptr               ; 4 uses
  %i.dm = getelementptr i8, ptr %i.dl, i64 16     ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dm, i8 0, i64 24, i1 false)
  %i.dn = getelementptr i8, ptr %i.dl, i64 24
  store i64 %.0.i, ptr %i.dn, align 8, !tbaa !14
  %i.do = call noalias nonnull ptr @ruby_xmalloc2(i64 noundef range(i64 2, -9223372036854775808) %.0.i, i64 noundef 8) #25
  %i.dp = getelementptr i8, ptr %i.dl, i64 32
  store ptr %i.do, ptr %i.dp, align 8, !tbaa !14
  store i64 0, ptr %i.dm, align 8, !tbaa !14
  br label %ary_new.exit.i

ary_new.exit.i:                                   ; preds = %bb.y, %bb.x
  %.pre-phi.i = phi ptr [ %.pre.i, %bb.x ], [ %i.dl, %bb.y ] ; 5 uses
  %.0.i.i33 = phi i64 [ %i.di, %bb.x ], [ %i.dk, %bb.y ] ; 2 uses
  %i.dq = getelementptr i8, ptr %.pre-phi.i, i64 16 ; 2 uses
  %i.dr = getelementptr i8, ptr %.pre-phi.i, i64 32
  br label %bb.z

bb.z:                                             ; preds = %ARY_SET.exit.i.i, %ary_new.exit.i
  %.019.i.i = phi i64 [ 0, %ary_new.exit.i ], [ %i.eh, %ARY_SET.exit.i.i ] ; 3 uses
  %i.ds = getelementptr [8 x i8], ptr %i.bd, i64 %.019.i.i
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !15
  %i.du = load i64, ptr %i.bm, align 8, !tbaa !11
  %i.dv = and i64 %i.du, 8192
  %.not.i.i.i.i = icmp eq i64 %i.dv, 0
  br i1 %.not.i.i.i.i, label %bb.aa, label %RARRAY_AREF.exit.i.i

bb.aa:                                            ; preds = %bb.z
  %i.dw = load ptr, ptr %i.bu, align 8, !tbaa !14
  br label %RARRAY_AREF.exit.i.i

RARRAY_AREF.exit.i.i:                             ; preds = %bb.aa, %bb.z
  %.0.i.i.i.i = phi ptr [ %i.dw, %bb.aa ], [ %i.bt, %bb.z ]
  %i.dx = getelementptr [8 x i8], ptr %.0.i.i.i.i, i64 %i.dt
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !15 ; 4 uses
  %i.dz = load i64, ptr %.pre-phi.i, align 8, !tbaa !11
  %i.ea = and i64 %i.dz, 8192
  %.not.i.i.i.i.i.i = icmp eq i64 %i.ea, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.ab, label %rb_ary_ptr_use_start.exit.i.i.i.i

bb.ab:                                            ; preds = %RARRAY_AREF.exit.i.i
  %i.eb = load ptr, ptr %i.dr, align 8, !tbaa !14
  br label %rb_ary_ptr_use_start.exit.i.i.i.i

rb_ary_ptr_use_start.exit.i.i.i.i:                ; preds = %bb.ab, %RARRAY_AREF.exit.i.i
  %.0.i.i.i.i.i.i = phi ptr [ %i.eb, %bb.ab ], [ %i.dq, %RARRAY_AREF.exit.i.i ]
  %i.ec = getelementptr [8 x i8], ptr %.0.i.i.i.i.i.i, i64 %.019.i.i
  store i64 %i.dy, ptr %i.ec, align 8, !tbaa !15
  %i.ed = icmp eq i64 %i.dy, 0
  %i.ee = and i64 %i.dy, 7
  %i.ef = icmp ne i64 %i.ee, 0
  %i.eg = or i1 %i.ed, %i.ef
  br i1 %i.eg, label %ARY_SET.exit.i.i, label %bb.ac

bb.ac:                                            ; preds = %rb_ary_ptr_use_start.exit.i.i.i.i
  call void @rb_gc_writebarrier(i64 noundef %.0.i.i33, i64 noundef %i.dy) #24
  br label %ARY_SET.exit.i.i

ARY_SET.exit.i.i:                                 ; preds = %bb.ac, %rb_ary_ptr_use_start.exit.i.i.i.i
  %i.eh = add nuw nsw i64 %.019.i.i, 1            ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.eh, %.0.i
  br i1 %exitcond.not.i.i, label %bb.ad, label %bb.z, !llvm.loop !158

bb.ad:                                            ; preds = %ARY_SET.exit.i.i
  %i.ei = load i64, ptr %.pre-phi.i, align 8, !tbaa !11 ; 2 uses
  %i.ej = and i64 %i.ei, 8192
  %.not18.i.i = icmp eq i64 %i.ej, 0
  br i1 %.not18.i.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ek = and i64 %i.ei, -4161537
  %i.el = or i64 %i.ek, %i.bv
  store i64 %i.el, ptr %.pre-phi.i, align 8, !tbaa !11
  br label %yield_indexed_values.exit.i

bb.af:                                            ; preds = %bb.ad
  store i64 %.0.i, ptr %i.dq, align 8, !tbaa !14
  br label %yield_indexed_values.exit.i

yield_indexed_values.exit.i:                      ; preds = %bb.af, %bb.ae
  %i.em = call i64 @rb_yield(i64 noundef %.0.i.i33) #24 ; 0 uses
  %i.en = load i64, ptr %i.bn, align 8, !tbaa !62
  %.not.i.not.i = icmp eq i64 %i.en, 0
  br i1 %.not.i.not.i, label %bb.v, label %bb.ag

bb.ag:                                            ; preds = %yield_indexed_values.exit.i
  %i.eo = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !15
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.eo, ptr noundef nonnull @.str.169) #23
  unreachable

bb.ah:                                            ; preds = %.lr.ph
  %i.ep = icmp slt i64 %.1.i66, 2
  br i1 %i.ep, label %rcombinate0.exit, label %.lr.ph, !llvm.loop !167

.lr.ph:                                           ; preds = %.preheader.i, %bb.ah
  %.1.i66 = phi i64 [ %i.eq, %bb.ah ], [ %.lcssa.i, %.preheader.i ] ; 3 uses
  %i.eq = add nsw i64 %.1.i66, -1                 ; 2 uses
  %i.er = getelementptr [8 x i8], ptr %i.bd, i64 %i.eq ; 2 uses
  %i.es = load i64, ptr %i.er, align 8, !tbaa !15
  %i.et = add i64 %i.es, 1                        ; 3 uses
  store i64 %i.et, ptr %i.er, align 8, !tbaa !15
  %.not.i32 = icmp slt i64 %i.et, %.0.i26
  br i1 %.not.i32, label %.outer.loopexit.i, label %bb.ah, !llvm.loop !167

rcombinate0.exit:                                 ; preds = %.preheader.i, %bb.ah, %.preheader.us.i.preheader, %.preheader.us.i
  call void @rb_free_tmp_buffer(ptr noundef nonnull %i.f) #24
  %i.eu = load i64, ptr @rb_cArray, align 8, !tbaa !15
  store i64 %i.eu, ptr %i.bn, align 8, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #24
  br label %.loopexit

.loopexit:                                        ; preds = %rb_array_len.exit29.thread, %rb_array_len.exit29, %rb_array_len.exit, %bb.n, %rcombinate0.exit, %ary_new.exit, %bb.d
  %.0 = phi i64 [ %i.m, %bb.d ], [ %0, %ary_new.exit ], [ %0, %rcombinate0.exit ], [ %0, %bb.n ], [ %0, %rb_array_len.exit ], [ %0, %rb_array_len.exit29 ], [ %0, %rb_array_len.exit29.thread ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @rb_ary_product(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #4 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 11 uses
  %i.d = alloca i64, align 8                      ; 7 uses
  %i.e = add i32 %0, 1                            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.f = sext i32 %i.e to i64                     ; 14 uses
  %i.g = tail call fastcc i64 @ary_new(i64 noundef 0, i64 noundef %i.f)
  store volatile i64 %i.g, ptr %i.c, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24
  store volatile i64 36, ptr %i.d, align 8, !tbaa !15
  %.0..0..0..0.59 = load volatile i64, ptr %i.c, align 8, !tbaa !15 ; 2 uses
  tail call void @rb_gc_writebarrier_unprotect(i64 noundef %.0..0..0..0.59) #24
  %i.h = inttoptr i64 %.0..0..0..0.59 to ptr      ; 3 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !11
  %i.j = and i64 %i.i, 8192
  %.not.i.i = icmp eq i64 %i.j, 0
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr i8, ptr %i.h, i64 16
  br label %RARRAY_PTR.exit

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr i8, ptr %i.h, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !14
  br label %RARRAY_PTR.exit

RARRAY_PTR.exit:                                  ; preds = %bb.b, %bb.c
  %.0.i.i = phi ptr [ %i.k, %bb.b ], [ %i.m, %bb.c ] ; 8 uses
  %i.n = icmp ult i32 %i.e, 256
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %RARRAY_PTR.exit
  store volatile i64 0, ptr %i.d, align 8, !tbaa !15
  %i.o = shl nuw nsw i64 %i.f, 2
  %i.p = alloca i8, i64 %i.o, align 16
  br label %bb.g

bb.e:                                             ; preds = %RARRAY_PTR.exit
  %i.q = icmp slt i32 %i.e, 0
  br i1 %i.q, label %bb.f, label %rb_alloc_tmp_buffer2.exit, !prof !21

bb.f:                                             ; preds = %bb.e
  tail call void @ruby_malloc_size_overflow(i64 noundef range(i64 -2147483648, -8070450532247928832) %i.f, i64 noundef 4) #23
  unreachable

rb_alloc_tmp_buffer2.exit:                        ; preds = %bb.e
  %i.r = shl nuw nsw i64 %i.f, 2                  ; 2 uses
  %i.s = add nuw nsw i64 %i.r, 4
  %i.t = lshr i64 %i.s, 3
  %i.u = call noalias nonnull ptr @rb_alloc_tmp_buffer_with_count(ptr noundef nonnull %i.d, i64 noundef %i.r, i64 noundef %i.t) #26
  br label %bb.g

bb.g:                                             ; preds = %rb_alloc_tmp_buffer2.exit, %bb.d
  %i.v = phi ptr [ %i.p, %bb.d ], [ %i.u, %rb_alloc_tmp_buffer2.exit ] ; 5 uses
  %.0..0..0..0.60 = load volatile i64, ptr %i.c, align 8, !tbaa !15
  %i.w = inttoptr i64 %.0..0..0..0.60 to ptr
  %i.x = getelementptr i8, ptr %i.w, i64 8
  store i64 0, ptr %i.x, align 8, !tbaa !15
  %.0..0..0..0.61 = load volatile i64, ptr %i.c, align 8, !tbaa !15
  %i.y = inttoptr i64 %.0..0..0..0.61 to ptr
  %i.z = load i64, ptr %i.y, align 8, !tbaa !11
  %i.aa = and i64 %i.z, 8192
  %.not142 = icmp eq i64 %i.aa, 0
  %.0..0..0..0.64 = load volatile i64, ptr %i.c, align 8, !tbaa !15
  %i.ab = inttoptr i64 %.0..0..0..0.64 to ptr     ; 3 uses
  br i1 %.not142, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !11
  %i.ad = and i64 %i.ac, -4161537
  store i64 %i.ad, ptr %i.ab, align 8, !tbaa !11
  %i.ae = shl nuw nsw i64 %i.f, 15
  %.0..0..0..0.63 = load volatile i64, ptr %i.c, align 8, !tbaa !15
  %i.af = inttoptr i64 %.0..0..0..0.63 to ptr     ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !11
  %i.ah = or i64 %i.ag, %i.ae
  store i64 %i.ah, ptr %i.af, align 8, !tbaa !11
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ai = getelementptr i8, ptr %i.ab, i64 16
  store i64 %i.f, ptr %i.ai, align 8, !tbaa !14
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  store i64 %2, ptr %.0.i.i, align 8, !tbaa !15
  %i.aj = icmp samesign ugt i32 %i.e, 1
  br i1 %i.aj, label %.lr.ph.preheader, label %.preheader145

.lr.ph.preheader:                                 ; preds = %bb.j
  %i.ak = add nsw i64 %i.f, -1                    ; 2 uses
  %min.iters.check = icmp ult i32 %i.e, 5
  br i1 %min.iters.check, label %.lr.ph.preheader178, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.ak, -4                      ; 3 uses
  %i.al = or disjoint i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.am = getelementptr [8 x i8], ptr %.0.i.i, i64 %index ; 2 uses
  %i.an = getelementptr i8, ptr %i.am, i64 8
  %i.ao = getelementptr i8, ptr %i.am, i64 24
  store <2 x i64> splat (i64 4), ptr %i.an, align 8, !tbaa !15
  store <2 x i64> splat (i64 4), ptr %i.ao, align 8, !tbaa !15
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ap = icmp eq i64 %index.next, %n.vec
  br i1 %i.ap, label %middle.block, label %vector.body, !llvm.loop !173

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ak, %n.vec
  br i1 %cmp.n, label %.lr.ph151.preheader, label %.lr.ph.preheader178

.lr.ph.preheader178:                              ; preds = %.lr.ph.preheader, %middle.block
  %.092149.ph = phi i64 [ 1, %.lr.ph.preheader ], [ %i.al, %middle.block ]
  br label %.lr.ph

.lr.ph151.preheader:                              ; preds = %.lr.ph, %middle.block
  br label %.lr.ph151

.lr.ph:                                           ; preds = %.lr.ph.preheader178, %.lr.ph
  %.092149 = phi i64 [ %i.ar, %.lr.ph ], [ %.092149.ph, %.lr.ph.preheader178 ] ; 2 uses
  %i.aq = getelementptr [8 x i8], ptr %.0.i.i, i64 %.092149
  store i64 4, ptr %i.aq, align 8, !tbaa !15
  %i.ar = add nuw nsw i64 %.092149, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.ar, %i.f
  br i1 %exitcond.not, label %.lr.ph151.preheader, label %.lr.ph, !llvm.loop !174

.preheader145:                                    ; preds = %bb.j
  %i.as = icmp ult i32 %0, 2147483647
  br i1 %i.as, label %.lr.ph153.preheader, label %._crit_edge

.lr.ph153.preheader:                              ; preds = %.lr.ph151, %.preheader145
  %i.at = shl nuw nsw i64 %i.f, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.v, i8 0, i64 %i.at, i1 false), !tbaa !7
  br label %._crit_edge

.lr.ph151:                                        ; preds = %.lr.ph151.preheader, %.lr.ph151
  %.193150 = phi i64 [ %i.az, %.lr.ph151 ], [ 1, %.lr.ph151.preheader ] ; 3 uses
  %i.au = getelementptr [8 x i8], ptr %1, i64 %.193150
  %i.av = getelementptr i8, ptr %i.au, i64 -8
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !15
  %i.ax = call i64 @rb_convert_type_with_id(i64 noundef %i.aw, i32 noundef 7, ptr noundef nonnull @.str, i64 noundef 3265) #24
  %i.ay = getelementptr [8 x i8], ptr %.0.i.i, i64 %.193150
  store i64 %i.ax, ptr %i.ay, align 8, !tbaa !15
  %i.az = add nuw nsw i64 %.193150, 1             ; 2 uses
  %exitcond164.not = icmp eq i64 %i.az, %i.f
  br i1 %exitcond164.not, label %.lr.ph153.preheader, label %.lr.ph151, !llvm.loop !175

._crit_edge:                                      ; preds = %.lr.ph153.preheader, %.preheader145
  %i.ba = phi i1 [ true, %.lr.ph153.preheader ], [ false, %.preheader145 ] ; 3 uses
  %i.bb = call i32 @rb_block_given_p() #24
  %.not = icmp eq i32 %i.bb, 0
  br i1 %.not, label %.preheader, label %.preheader143

.preheader143:                                    ; preds = %._crit_edge
  br i1 %i.ba, label %.lr.ph155, label %.loopexit144

.preheader:                                       ; preds = %._crit_edge
  br i1 %i.ba, label %.lr.ph158, label %._crit_edge159

.lr.ph155:                                        ; preds = %.preheader143, %ary_make_shared_copy.exit
  %.3154 = phi i64 [ %i.bq, %ary_make_shared_copy.exit ], [ 0, %.preheader143 ] ; 2 uses
  %i.bc = getelementptr [8 x i8], ptr %.0.i.i, i64 %.3154 ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !15 ; 2 uses
  %i.be = inttoptr i64 %i.bd to ptr               ; 2 uses
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !11 ; 3 uses
  %i.bg = and i64 %i.bf, 8192
  %.not.i = icmp eq i64 %i.bg, 0
  br i1 %.not.i, label %rb_array_len.exit, label %rb_array_len.exit.thread

rb_array_len.exit:                                ; preds = %.lr.ph155
  %i.bh = getelementptr i8, ptr %i.be, i64 16
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !14 ; 2 uses
  %i.bj = icmp eq i64 %i.bi, 0
  br i1 %i.bj, label %.thread139, label %ary_make_shared_copy.exit

rb_array_len.exit.thread:                         ; preds = %.lr.ph155
  %i.bk = and i64 %i.bf, 4161536
  %i.bl = icmp eq i64 %i.bk, 0
  br i1 %i.bl, label %.thread139, label %bb.k

bb.k:                                             ; preds = %rb_array_len.exit.thread
  %i.bm = lshr i64 %i.bf, 15
  %i.bn = and i64 %i.bm, 127
  br label %ary_make_shared_copy.exit

ary_make_shared_copy.exit:                        ; preds = %rb_array_len.exit, %bb.k
  %.0.i.i106 = phi i64 [ %i.bn, %bb.k ], [ %i.bi, %rb_array_len.exit ]
  %i.bo = load i64, ptr @rb_cArray, align 8, !tbaa !15
  %i.bp = call fastcc noundef i64 @ary_make_partial(i64 noundef %i.bd, i64 noundef %i.bo, i64 noundef 0, i64 noundef %.0.i.i106)
  store i64 %i.bp, ptr %i.bc, align 8, !tbaa !15
  %i.bq = add nuw nsw i64 %.3154, 1               ; 2 uses
  %exitcond165.not = icmp eq i64 %i.bq, %i.f
  br i1 %exitcond165.not, label %.loopexit144, label %.lr.ph155, !llvm.loop !176

.lr.ph158:                                        ; preds = %.preheader, %bb.s
  %.089157 = phi i64 [ %i.cp, %bb.s ], [ 1, %.preheader ] ; 2 uses
  %.4156 = phi i64 [ %i.cq, %bb.s ], [ 0, %.preheader ] ; 2 uses
  %i.br = getelementptr [8 x i8], ptr %.0.i.i, i64 %.4156
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !15
  %i.bt = inttoptr i64 %i.bs to ptr               ; 2 uses
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !11 ; 2 uses
  %i.bv = and i64 %i.bu, 8192
  %.not.i107 = icmp eq i64 %i.bv, 0
  br i1 %.not.i107, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph158
  %i.bw = lshr i64 %i.bu, 15
  %i.bx = and i64 %i.bw, 127
  br label %rb_array_len.exit109

bb.m:                                             ; preds = %.lr.ph158
  %i.by = getelementptr i8, ptr %i.bt, i64 16
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !14
  br label %rb_array_len.exit109

rb_array_len.exit109:                             ; preds = %bb.l, %bb.m
  %.0.i108 = phi i64 [ %i.bx, %bb.l ], [ %i.bz, %bb.m ] ; 3 uses
  %i.ca = icmp eq i64 %.0.i108, 0
  br i1 %i.ca, label %bb.n, label %bb.q

bb.n:                                             ; preds = %rb_array_len.exit109
  %i.cb = load i64, ptr @rb_cArray, align 8, !tbaa !15 ; 2 uses
  %i.cc = call zeroext i1 @rb_gc_size_allocatable_p(i64 noundef 40) #24
  %i.cd = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec) ; 2 uses
  br i1 %i.cc, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !25
  store volatile ptr %i.ce, ptr %i.b, align 8, !tbaa !25
  %.0..0..0..0..0..0..0..0..0..0..i.i.i = load volatile ptr, ptr %i.b, align 8, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.cf = call i64 @rb_wb_protected_newobj_of(ptr noundef %.0..0..0..0..0..0..0..0..0..0..i.i.i, i64 noundef %i.cb, i64 noundef 8199, i32 noundef 0, i64 noundef 40) #24
  br label %ary_new.exit.thread

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.cg = load ptr, ptr %i.cd, align 8, !tbaa !25
  store volatile ptr %i.cg, ptr %i.a, align 8, !tbaa !25
  %.0..0..0..0..0..0..0..0..0..0..i.i14.i = load volatile ptr, ptr %i.a, align 8, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ch = call i64 @rb_wb_protected_newobj_of(ptr noundef %.0..0..0..0..0..0..0..0..0..0..i.i14.i, i64 noundef %i.cb, i64 noundef 7, i32 noundef 0, i64 noundef 40) #24 ; 2 uses
  %i.ci = inttoptr i64 %i.ch to ptr               ; 2 uses
  %i.cj = getelementptr i8, ptr %i.ci, i64 16     ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cj, i8 0, i64 24, i1 false)
  %i.ck = call noalias nonnull ptr @ruby_xmalloc2(i64 noundef 0, i64 noundef 8) #25
  %i.cl = getelementptr i8, ptr %i.ci, i64 32
  store ptr %i.ck, ptr %i.cl, align 8, !tbaa !14
  store i64 0, ptr %i.cj, align 8, !tbaa !14
  br label %ary_new.exit.thread

bb.q:                                             ; preds = %rb_array_len.exit109
  %i.cm = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.089157, i64 %.0.i108)
  %i.cn = extractvalue { i64, i1 } %i.cm, 1
  br i1 %i.cn, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.co = load i64, ptr @rb_eRangeError, align 8, !tbaa !15
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.co, ptr noundef nonnull @.str.170) #23
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.cp = mul i64 %.0.i108, %.089157              ; 2 uses
  %i.cq = add nuw nsw i64 %.4156, 1               ; 2 uses
  %exitcond166.not = icmp eq i64 %i.cq, %i.f
  br i1 %exitcond166.not, label %._crit_edge159, label %.lr.ph158, !llvm.loop !177

._crit_edge159:                                   ; preds = %bb.s, %.preheader
  %.089.lcssa = phi i64 [ 1, %.preheader ], [ %i.cp, %bb.s ]
  %i.cr = load i64, ptr @rb_cArray, align 8, !tbaa !15
  %i.cs = call fastcc i64 @ary_new(i64 noundef %i.cr, i64 noundef %.089.lcssa)
  br label %.loopexit144

.loopexit144:                                     ; preds = %ary_make_shared_copy.exit, %.preheader143, %._crit_edge159
  %.296 = phi i64 [ %i.cs, %._crit_edge159 ], [ 4, %.preheader143 ], [ 4, %ary_make_shared_copy.exit ] ; 4 uses
  %i.ct = icmp eq i64 %.296, 4
  %i.cu = inttoptr i64 %.296 to ptr               ; 6 uses
  %i.cv = getelementptr i8, ptr %i.cu, i64 16     ; 3 uses
  %i.cw = getelementptr i8, ptr %i.cu, i64 32
  %i.cx = sext i32 %0 to i64
  %i.cy = getelementptr [4 x i8], ptr %i.v, i64 %i.cx ; 2 uses
  br label %.loopexit

.loopexit:                                        ; preds = %rb_array_len.exit129, %.loopexit144
  %i.cz = load i64, ptr @rb_cArray, align 8, !tbaa !15
  %i.da = call fastcc i64 @ary_new(i64 noundef %i.cz, i64 noundef %i.f) ; 7 uses
  br i1 %i.ba, label %.lr.ph162, label %._crit_edge163

.lr.ph162:                                        ; preds = %.loopexit
  %i.db = inttoptr i64 %i.da to ptr               ; 6 uses
  %i.dc = getelementptr i8, ptr %i.db, i64 16     ; 3 uses
  %i.dd = getelementptr i8, ptr %i.db, i64 32
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph162, %rb_ary_push.exit
  %.091160 = phi i64 [ 0, %.lr.ph162 ], [ %i.eu, %rb_ary_push.exit ] ; 3 uses
  %i.de = getelementptr [8 x i8], ptr %.0.i.i, i64 %.091160
  %i.df = load i64, ptr %i.de, align 8, !tbaa !15
  %i.dg = getelementptr [4 x i8], ptr %i.v, i64 %.091160
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !7  ; 2 uses
  %i.di = sext i32 %i.dh to i64                   ; 3 uses
  %i.dj = inttoptr i64 %i.df to ptr               ; 4 uses
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !11 ; 2 uses
  %i.dl = and i64 %i.dk, 8192
  %.not.i.i.i = icmp eq i64 %i.dl, 0
  br i1 %.not.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dm = lshr i64 %i.dk, 15
  %i.dn = and i64 %i.dm, 127
  %i.do = getelementptr i8, ptr %i.dj, i64 16
  br label %rb_array_const_ptr.exit.i.i

bb.v:                                             ; preds = %bb.t
  %i.dp = getelementptr i8, ptr %i.dj, i64 16
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !14
  %i.dr = getelementptr i8, ptr %i.dj, i64 32
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !14
  br label %rb_array_const_ptr.exit.i.i

rb_array_const_ptr.exit.i.i:                      ; preds = %bb.v, %bb.u
  %.0.i18.i.i = phi i64 [ %i.dn, %bb.u ], [ %i.dq, %bb.v ] ; 3 uses
  %.0.i16.i.i = phi ptr [ %i.do, %bb.u ], [ %i.ds, %bb.v ]
  %i.dt = icmp eq i64 %.0.i18.i.i, 0
  br i1 %i.dt, label %rb_ary_entry.exit, label %bb.w

bb.w:                                             ; preds = %rb_array_const_ptr.exit.i.i
  %i.du = icmp slt i32 %i.dh, 0
  br i1 %i.du, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.dv = add i64 %.0.i18.i.i, %i.di              ; 2 uses
  %i.dw = icmp slt i64 %i.dv, 0
  br i1 %i.dw, label %rb_ary_entry.exit, label %bb.z

bb.y:                                             ; preds = %bb.w
  %.not.i.i110 = icmp sgt i64 %.0.i18.i.i, %i.di
  br i1 %.not.i.i110, label %bb.z, label %rb_ary_entry.exit

bb.z:                                             ; preds = %bb.y, %bb.x
  %.0.i.i111 = phi i64 [ %i.dv, %bb.x ], [ %i.di, %bb.y ]
  %i.dx = getelementptr [8 x i8], ptr %.0.i16.i.i, i64 %.0.i.i111
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !15
  br label %rb_ary_entry.exit

rb_ary_entry.exit:                                ; preds = %rb_array_const_ptr.exit.i.i, %bb.x, %bb.y, %bb.z
  %.011.i.i = phi i64 [ 4, %bb.x ], [ 4, %rb_array_const_ptr.exit.i.i ], [ %i.dy, %bb.z ], [ 4, %bb.y ] ; 4 uses
  %i.dz = load i64, ptr %i.db, align 8, !tbaa !11 ; 2 uses
  %i.ea = and i64 %i.dz, 8192
  %.not.i.i112 = icmp eq i64 %i.ea, 0
  br i1 %.not.i.i112, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %rb_ary_entry.exit
  %i.eb = lshr i64 %i.dz, 15
  %i.ec = and i64 %i.eb, 127
  br label %rb_array_len.exit.i

bb.ab:                                            ; preds = %rb_ary_entry.exit
  %i.ed = load i64, ptr %i.dc, align 8, !tbaa !14
  br label %rb_array_len.exit.i

rb_array_len.exit.i:                              ; preds = %bb.ab, %bb.aa
  %.0.i.i113 = phi i64 [ %i.ec, %bb.aa ], [ %i.ed, %bb.ab ] ; 3 uses
  %i.ee = call fastcc i64 @ary_ensure_room_for_push(i64 noundef %i.da, i64 noundef 1)
  %i.ef = load i64, ptr %i.db, align 8, !tbaa !11
  %i.eg = and i64 %i.ef, 8192
  %.not.i.i.i114 = icmp eq i64 %i.eg, 0
  br i1 %.not.i.i.i114, label %bb.ac, label %rb_ary_ptr_use_start.exit.i

bb.ac:                                            ; preds = %rb_array_len.exit.i
  %i.eh = load ptr, ptr %i.dd, align 8, !tbaa !14
  br label %rb_ary_ptr_use_start.exit.i

rb_ary_ptr_use_start.exit.i:                      ; preds = %rb_array_len.exit.i, %bb.ac
  %.0.i.i.i = phi ptr [ %i.eh, %bb.ac ], [ %i.dc, %rb_array_len.exit.i ]
  %i.ei = getelementptr [8 x i8], ptr %.0.i.i.i, i64 %.0.i.i113
  store i64 %.011.i.i, ptr %i.ei, align 8, !tbaa !15
  %i.ej = icmp eq i64 %.011.i.i, 0
  %i.ek = and i64 %.011.i.i, 7
  %i.el = icmp ne i64 %i.ek, 0
  %i.em = or i1 %i.ej, %i.el
  br i1 %i.em, label %rb_obj_write.exit.i, label %bb.ad

bb.ad:                                            ; preds = %rb_ary_ptr_use_start.exit.i
  call void @rb_gc_writebarrier(i64 noundef %i.ee, i64 noundef %.011.i.i) #24
  br label %rb_obj_write.exit.i

rb_obj_write.exit.i:                              ; preds = %bb.ad, %rb_ary_ptr_use_start.exit.i
  %i.en = load i64, ptr %i.db, align 8, !tbaa !11 ; 2 uses
  %i.eo = and i64 %i.en, 8192
  %.not.i115 = icmp eq i64 %i.eo, 0
  br i1 %.not.i115, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %rb_obj_write.exit.i
  %i.ep = and i64 %i.en, -4161537
  %i.eq = shl i64 %.0.i.i113, 15
  %i.er = add i64 %i.eq, 32768
  %i.es = or i64 %i.ep, %i.er
  store i64 %i.es, ptr %i.db, align 8, !tbaa !11
  br label %rb_ary_push.exit

bb.af:                                            ; preds = %rb_obj_write.exit.i
  %i.et = add i64 %.0.i.i113, 1
  store i64 %i.et, ptr %i.dc, align 8, !tbaa !14
  br label %rb_ary_push.exit

rb_ary_push.exit:                                 ; preds = %bb.ae, %bb.af
  %i.eu = add nuw nsw i64 %.091160, 1             ; 2 uses
  %exitcond167.not = icmp eq i64 %i.eu, %i.f
  br i1 %exitcond167.not, label %._crit_edge163, label %bb.t, !llvm.loop !178

._crit_edge163:                                   ; preds = %rb_ary_push.exit, %.loopexit
  br i1 %i.ct, label %bb.ag, label %bb.ak

bb.ag:                                            ; preds = %._crit_edge163
  %.0..0..0..0.65 = load volatile i64, ptr %i.c, align 8, !tbaa !15 ; 3 uses
  %i.ev = icmp ne i64 %.0..0..0..0.65, 0
  %i.ew = and i64 %.0..0..0..0.65, 7
  %i.ex = icmp eq i64 %i.ew, 0
  %.not4.i = and i1 %i.ev, %i.ex
  br i1 %.not4.i, label %bb.ah, label %RB_FL_SET.exit

bb.ah:                                            ; preds = %bb.ag
  %i.ey = inttoptr i64 %.0..0..0..0.65 to ptr     ; 2 uses
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !11
  %i.fa = or i64 %i.ez, 16777216
  store i64 %i.fa, ptr %i.ey, align 8, !tbaa !11
  br label %RB_FL_SET.exit

RB_FL_SET.exit:                                   ; preds = %bb.ag, %bb.ah
  %i.fb = call i64 @rb_yield(i64 noundef %i.da) #24 ; 0 uses
  %.0..0..0..0.66 = load volatile i64, ptr %i.c, align 8, !tbaa !15 ; 3 uses
  %i.fc = icmp ne i64 %.0..0..0..0.66, 0
  %i.fd = and i64 %.0..0..0..0.66, 7
  %i.fe = icmp eq i64 %i.fd, 0
  %.not5.i = and i1 %i.fc, %i.fe
  br i1 %.not5.i, label %RB_FL_TEST.exit, label %RB_FL_TEST.exit.thread

RB_FL_TEST.exit:                                  ; preds = %RB_FL_SET.exit
  %i.ff = inttoptr i64 %.0..0..0..0.66 to ptr
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !11
  %i.fh = and i64 %i.fg, 16777216
  %.not103 = icmp eq i64 %i.fh, 0
  br i1 %.not103, label %RB_FL_TEST.exit.thread, label %bb.ai

RB_FL_TEST.exit.thread:                           ; preds = %RB_FL_SET.exit, %RB_FL_TEST.exit
  %i.fi = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !15
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.fi, ptr noundef nonnull @.str.171) #23
  unreachable

bb.ai:                                            ; preds = %RB_FL_TEST.exit
  %.0..0..0..0.67 = load volatile i64, ptr %i.c, align 8, !tbaa !15 ; 3 uses
  %i.fj = icmp ne i64 %.0..0..0..0.67, 0
  %i.fk = and i64 %.0..0..0..0.67, 7
  %i.fl = icmp eq i64 %i.fk, 0
  %.not4.i117 = and i1 %i.fj, %i.fl
  br i1 %.not4.i117, label %bb.aj, label %RB_FL_UNSET.exit

bb.aj:                                            ; preds = %bb.ai
  %i.fm = inttoptr i64 %.0..0..0..0.67 to ptr     ; 2 uses
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !11
  %i.fo = and i64 %i.fn, -16777217
  store i64 %i.fo, ptr %i.fm, align 8, !tbaa !11
  br label %RB_FL_UNSET.exit

bb.ak:                                            ; preds = %._crit_edge163
  %i.fp = load i64, ptr %i.cu, align 8, !tbaa !11 ; 2 uses
  %i.fq = and i64 %i.fp, 8192
  %.not.i.i118 = icmp eq i64 %i.fq, 0
  br i1 %.not.i.i118, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fr = lshr i64 %i.fp, 15
  %i.fs = and i64 %i.fr, 127
  br label %rb_array_len.exit.i119

bb.am:                                            ; preds = %bb.ak
  %i.ft = load i64, ptr %i.cv, align 8, !tbaa !14
  br label %rb_array_len.exit.i119

rb_array_len.exit.i119:                           ; preds = %bb.am, %bb.al
  %.0.i.i120 = phi i64 [ %i.fs, %bb.al ], [ %i.ft, %bb.am ] ; 3 uses
  %i.fu = call fastcc i64 @ary_ensure_room_for_push(i64 noundef %.296, i64 noundef 1)
  %i.fv = load i64, ptr %i.cu, align 8, !tbaa !11
  %i.fw = and i64 %i.fv, 8192
  %.not.i.i.i121 = icmp eq i64 %i.fw, 0
  br i1 %.not.i.i.i121, label %bb.an, label %rb_ary_ptr_use_start.exit.i122

bb.an:                                            ; preds = %rb_array_len.exit.i119
  %i.fx = load ptr, ptr %i.cw, align 8, !tbaa !14
  br label %rb_ary_ptr_use_start.exit.i122

rb_ary_ptr_use_start.exit.i122:                   ; preds = %rb_array_len.exit.i119, %bb.an
  %.0.i.i.i123 = phi ptr [ %i.fx, %bb.an ], [ %i.cv, %rb_array_len.exit.i119 ]
  %i.fy = getelementptr [8 x i8], ptr %.0.i.i.i123, i64 %.0.i.i120
  store i64 %i.da, ptr %i.fy, align 8, !tbaa !15
  %i.fz = icmp eq i64 %i.da, 0
  %i.ga = and i64 %i.da, 7
  %i.gb = icmp ne i64 %i.ga, 0
  %i.gc = or i1 %i.fz, %i.gb
  br i1 %i.gc, label %rb_obj_write.exit.i124, label %bb.ao

bb.ao:                                            ; preds = %rb_ary_ptr_use_start.exit.i122
  call void @rb_gc_writebarrier(i64 noundef %i.fu, i64 noundef %i.da) #24
  br label %rb_obj_write.exit.i124

rb_obj_write.exit.i124:                           ; preds = %bb.ao, %rb_ary_ptr_use_start.exit.i122
  %i.gd = load i64, ptr %i.cu, align 8, !tbaa !11 ; 2 uses
  %i.ge = and i64 %i.gd, 8192
  %.not.i125 = icmp eq i64 %i.ge, 0
  br i1 %.not.i125, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %rb_obj_write.exit.i124
  %i.gf = and i64 %i.gd, -4161537
  %i.gg = shl i64 %.0.i.i120, 15
  %i.gh = add i64 %i.gg, 32768
  %i.gi = or i64 %i.gf, %i.gh
  store i64 %i.gi, ptr %i.cu, align 8, !tbaa !11
  br label %RB_FL_UNSET.exit

bb.aq:                                            ; preds = %rb_obj_write.exit.i124
  %i.gj = add i64 %.0.i.i120, 1
  store i64 %i.gj, ptr %i.cv, align 8, !tbaa !14
  br label %RB_FL_UNSET.exit

RB_FL_UNSET.exit:                                 ; preds = %bb.aq, %bb.ap, %bb.aj, %bb.ai
  %i.gk = load i32, ptr %i.cy, align 4, !tbaa !7
  %i.gl = add i32 %i.gk, 1                        ; 2 uses
  store i32 %i.gl, ptr %i.cy, align 4, !tbaa !7
  br label %bb.ar

bb.ar:                                            ; preds = %bb.av, %RB_FL_UNSET.exit
  %3 = phi i32 [ %i.gl, %RB_FL_UNSET.exit ], [ %i.ha, %bb.av ]
  %.0 = phi i32 [ %0, %RB_FL_UNSET.exit ], [ %5, %bb.av ] ; 2 uses
  %4 = sext i32 %.0 to i64                        ; 2 uses
  %i.gm = getelementptr [4 x i8], ptr %i.v, i64 %4
  %i.gn = sext i32 %3 to i64
  %i.go = getelementptr [8 x i8], ptr %.0.i.i, i64 %4
  %i.gp = load i64, ptr %i.go, align 8, !tbaa !15
  %i.gq = inttoptr i64 %i.gp to ptr               ; 2 uses
  %i.gr = load i64, ptr %i.gq, align 8, !tbaa !11 ; 2 uses
  %i.gs = and i64 %i.gr, 8192
  %.not.i127 = icmp eq i64 %i.gs, 0
  br i1 %.not.i127, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.gt = lshr i64 %i.gr, 15
  %i.gu = and i64 %i.gt, 127
  br label %rb_array_len.exit129

bb.at:                                            ; preds = %bb.ar
  %i.gv = getelementptr i8, ptr %i.gq, i64 16
  %i.gw = load i64, ptr %i.gv, align 8, !tbaa !14
  br label %rb_array_len.exit129

rb_array_len.exit129:                             ; preds = %bb.as, %bb.at
  %.0.i128 = phi i64 [ %i.gu, %bb.as ], [ %i.gw, %bb.at ]
  %i.gx = icmp eq i64 %.0.i128, %i.gn
  br i1 %i.gx, label %bb.au, label %.loopexit

bb.au:                                            ; preds = %rb_array_len.exit129
  store i32 0, ptr %i.gm, align 4, !tbaa !7
  %5 = add i32 %.0, -1                            ; 3 uses
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %ary_new.exit.thread, label %bb.av

bb.av:                                            ; preds = %bb.au
  %7 = zext nneg i32 %5 to i64
  %i.gy = getelementptr [4 x i8], ptr %i.v, i64 %7 ; 2 uses
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !7
  %i.ha = add i32 %i.gz, 1                        ; 2 uses
  store i32 %i.ha, ptr %i.gy, align 4, !tbaa !7
  br label %bb.ar, !llvm.loop !179

.thread139:                                       ; preds = %rb_array_len.exit, %rb_array_len.exit.thread
  call void @rb_free_tmp_buffer(ptr noundef nonnull %i.d) #24
  br label %bb.aw

ary_new.exit.thread:                              ; preds = %bb.au, %bb.p, %bb.o
  %.397 = phi i64 [ %i.cf, %bb.o ], [ %i.ch, %bb.p ], [ %.296, %bb.au ]
  %.397.fr = freeze i64 %.397                     ; 2 uses
  call void @rb_free_tmp_buffer(ptr noundef nonnull %i.d) #24
  %i.hb = icmp eq i64 %.397.fr, 4
  br i1 %i.hb, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %.thread139, %ary_new.exit.thread
  br label %bb.ax

bb.ax:                                            ; preds = %ary_new.exit.thread, %bb.aw
  %i.hc = phi i64 [ %2, %bb.aw ], [ %.397.fr, %ary_new.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret i64 %i.hc
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_ary_take(i64 noundef %0, i64 noundef %1) #4 {
bb.a:
  %i.a = trunc i64 %1 to i1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = ashr i64 %1, 1
  br label %rb_num2long_inline.exit

bb.c:                                             ; preds = %bb.a
  %i.c = tail call i64 @rb_num2long(i64 noundef %1) #24
  br label %rb_num2long_inline.exit

rb_num2long_inline.exit:                          ; preds = %bb.b, %bb.c
  %.0.i = phi i64 [ %i.b, %bb.b ], [ %i.c, %bb.c ] ; 2 uses
  %i.d = icmp slt i64 %.0.i, 0
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %rb_num2long_inline.exit
  %i.e = load i64, ptr @rb_eArgError, align 8, !tbaa !15
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.e, ptr noundef nonnull @.str.172) #23
  unreachable

bb.e:                                             ; preds = %rb_num2long_inline.exit
  %i.f = tail call i64 @rb_ary_subseq_step(i64 noundef %0, i64 noundef 0, i64 noundef %.0.i, i64 noundef 1)
  ret i64 %i.f
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_ary_take_while(i64 noundef %0) #4 {
bb.a:
  %i.a = tail call i32 @rb_block_given_p() #24
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.c = getelementptr i8, ptr %i.b, i64 16       ; 2 uses
  %i.d = getelementptr i8, ptr %i.b, i64 32
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i64 @rb_frame_this_func() #24
  %i.f = tail call i64 @rb_id2sym(i64 noundef %i.e) #24
  %i.g = tail call i64 @rb_enumeratorize_with_size(i64 noundef %0, i64 noundef %i.f, i32 noundef 0, ptr noundef null, ptr noundef null) #24
  br label %bb.g

bb.c:                                             ; preds = %.preheader, %bb.e
  %.0 = phi i64 [ %i.t, %bb.e ], [ 0, %.preheader ] ; 5 uses
  %i.h = load i64, ptr %i.b, align 8, !tbaa !11   ; 2 uses
  %i.i = and i64 %i.h, 8192
  %.not.i = icmp eq i64 %i.i, 0
  br i1 %.not.i, label %rb_array_len.exit, label %rb_array_len.exit.thread

rb_array_len.exit:                                ; preds = %bb.c
  %i.j = load i64, ptr %i.c, align 8, !tbaa !14
  %i.k = icmp slt i64 %.0, %i.j
  br i1 %i.k, label %bb.d, label %rb_num2long_inline.exit.i

rb_array_len.exit.thread:                         ; preds = %bb.c
  %i.l = lshr i64 %i.h, 15
  %i.m = and i64 %i.l, 127
  %i.n = icmp samesign ult i64 %.0, %i.m
  br i1 %i.n, label %RARRAY_AREF.exit, label %rb_num2long_inline.exit.i

bb.d:                                             ; preds = %rb_array_len.exit
  %i.o = load ptr, ptr %i.d, align 8, !tbaa !14
  br label %RARRAY_AREF.exit

RARRAY_AREF.exit:                                 ; preds = %rb_array_len.exit.thread, %bb.d
  %.0.i.i = phi ptr [ %i.o, %bb.d ], [ %i.c, %rb_array_len.exit.thread ]
  %i.p = getelementptr [8 x i8], ptr %.0.i.i, i64 %.0
  %i.q = load i64, ptr %i.p, align 8, !tbaa !15
  %i.r = tail call i64 @rb_yield(i64 noundef %i.q) #24
  %i.s = and i64 %i.r, -5
  %.not12 = icmp eq i64 %i.s, 0
  br i1 %.not12, label %rb_num2long_inline.exit.i, label %bb.e

bb.e:                                             ; preds = %RARRAY_AREF.exit
  %i.t = add nuw nsw i64 %.0, 1
  br label %bb.c, !llvm.loop !180

rb_num2long_inline.exit.i:                        ; preds = %rb_array_len.exit, %RARRAY_AREF.exit, %rb_array_len.exit.thread
  %i.u = shl nuw i64 %.0, 1
  %i.v = ashr exact i64 %i.u, 1                   ; 2 uses
  %i.w = icmp slt i64 %i.v, 0
  br i1 %i.w, label %bb.f, label %rb_ary_take.exit

bb.f:                                             ; preds = %rb_num2long_inline.exit.i
  %i.x = load i64, ptr @rb_eArgError, align 8, !tbaa !15
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.x, ptr noundef nonnull @.str.172) #23
  unreachable

rb_ary_take.exit:                                 ; preds = %rb_num2long_inline.exit.i
  %i.y = tail call i64 @rb_ary_subseq_step(i64 noundef %0, i64 noundef 0, i64 noundef %i.v, i64 noundef 1)
  br label %bb.g

bb.g:                                             ; preds = %rb_ary_take.exit, %bb.b
  %.09 = phi i64 [ %i.y, %rb_ary_take.exit ], [ %i.g, %bb.b ]
  ret i64 %.09
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_ary_drop(i64 noundef %0, i64 noundef %1) #4 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = trunc i64 %1 to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = ashr i64 %1, 1
  br label %rb_num2long_inline.exit

bb.c:                                             ; preds = %bb.a
  %i.e = tail call i64 @rb_num2long(i64 noundef %1) #24
  br label %rb_num2long_inline.exit

rb_num2long_inline.exit:                          ; preds = %bb.b, %bb.c
  %.0.i = phi i64 [ %i.d, %bb.b ], [ %i.e, %bb.c ] ; 2 uses
  %i.f = icmp slt i64 %.0.i, 0
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %rb_num2long_inline.exit
  %i.g = load i64, ptr @rb_eArgError, align 8, !tbaa !15
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.g, ptr noundef nonnull @.str.173) #23
  unreachable

bb.e:                                             ; preds = %rb_num2long_inline.exit
  %i.h = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !11   ; 2 uses
  %i.j = and i64 %i.i, 8192
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = lshr i64 %i.i, 15
  %i.l = and i64 %i.k, 127
  br label %rb_array_len.exit

bb.g:                                             ; preds = %bb.e
  %i.m = getelementptr i8, ptr %i.h, i64 16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !14
  br label %rb_array_len.exit

rb_array_len.exit:                                ; preds = %bb.f, %bb.g
  %.0.i8 = phi i64 [ %i.l, %bb.f ], [ %i.n, %bb.g ]
  %i.o = tail call i64 @rb_ary_subseq_step(i64 noundef %0, i64 noundef %.0.i, i64 noundef %.0.i8, i64 noundef 1) ; 2 uses
  %i.p = icmp eq i64 %i.o, 4
  br i1 %i.p, label %bb.h, label %rb_ary_new.exit

bb.h:                                             ; preds = %rb_array_len.exit
  %i.q = load i64, ptr @rb_cArray, align 8, !tbaa !15 ; 2 uses
  %i.r = tail call zeroext i1 @rb_gc_size_allocatable_p(i64 noundef 40) #24
  %i.s = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec) ; 2 uses
  br i1 %i.r, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !25
  store volatile ptr %i.t, ptr %i.b, align 8, !tbaa !25
  %.0..0..0..0..0..0..0..0..0..0..0..0..i.i.i.i = load volatile ptr, ptr %i.b, align 8, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.u = tail call i64 @rb_wb_protected_newobj_of(ptr noundef %.0..0..0..0..0..0..0..0..0..0..0..0..i.i.i.i, i64 noundef %i.q, i64 noundef 8199, i32 noundef 0, i64 noundef 40) #24
  br label %rb_ary_new.exit

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.v = load ptr, ptr %i.s, align 8, !tbaa !25
  store volatile ptr %i.v, ptr %i.a, align 8, !tbaa !25
  %.0..0..0..0..0..0..0..0..0..0..0..0..i.i14.i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.w = tail call i64 @rb_wb_protected_newobj_of(ptr noundef %.0..0..0..0..0..0..0..0..0..0..0..0..i.i14.i.i, i64 noundef %i.q, i64 noundef 7, i32 noundef 0, i64 noundef 40) #24 ; 2 uses
  %i.x = inttoptr i64 %i.w to ptr                 ; 2 uses
  %i.y = getelementptr i8, ptr %i.x, i64 16       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, i8 0, i64 24, i1 false)
end_hunk_0
