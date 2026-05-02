inline.NumInlined: 1500
inline.NumDeleted: 204
begin_hunk_0_@rb_io_getline_0:bb.a
  %.1114 = phi i64 [ %i.ac, %bb.v ], [ %i.ac, %RSTRING_PTR.exit153 ], [ %i.ap, %RSTRING_PTR.exit ], [ 2, %rb_enc_asciicompat.exit150 ] ; 3 uses
  %.0111 = phi i32 [ 0, %bb.v ], [ 0, %RSTRING_PTR.exit153 ], [ 1, %RSTRING_PTR.exit ], [ 1, %rb_enc_asciicompat.exit150 ] ; 2 uses
  %.1 = phi i64 [ %i.bb, %bb.v ], [ %0, %RSTRING_PTR.exit153 ], [ %i.ah, %RSTRING_PTR.exit ], [ 0, %rb_enc_asciicompat.exit150 ] ; 2 uses
  %4 = trunc nuw i32 %2 to i1
  %i.bp = icmp eq i32 %.0119, 10
  %or.cond5 = select i1 %4, i1 %i.bp, i1 false
  br i1 %or.cond5, label %bb.x, label %bb.y
end_hunk_0
begin_hunk_1_@rb_io_getline_0:bb.a
  br i1 %.not130, label %.loopexit, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %.not131 = trunc nuw i32 %.0107 to i1
  %i.id = icmp ugt ptr %i.ht, %i.hr
  %or.cond132 = and i1 %i.id, %.not131
  br i1 %or.cond132, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
end_hunk_1
begin_hunk_2_@rb_io_extract_modeenc:bb.a
  br label %bb.s

bb.s:                                             ; preds = %bb.k, %rb_io_ext_int_to_encs.exit82, %rb_num2int_inline.exit, %bb.f
  %.259 = phi i32 [ 0, %bb.f ], [ 0, %rb_num2int_inline.exit ], [ 1, %bb.k ], [ 0, %rb_io_ext_int_to_encs.exit82 ] ; 4 uses
  %.051 = phi i32 [ 0, %bb.f ], [ %i.t, %rb_num2int_inline.exit ], [ %.4.i76, %bb.k ], [ %.4.i76, %rb_io_ext_int_to_encs.exit82 ] ; 3 uses
  br i1 %i.m, label %._crit_edge138, label %bb.y

end_hunk_2
begin_hunk_3_@rb_io_extract_modeenc:bb.a
  %i.bh = select i1 %.not, i32 %i.bf, i32 0       ; 2 uses
  store i64 4, ptr %i.e, align 8, !tbaa !13
  %i.bi = icmp eq i32 %.pre139, 0
  %6 = trunc nuw i32 %.259 to i1
  %or.cond = select i1 %i.bi, i1 true, i1 %6
  br i1 %or.cond, label %thread-pre-split, label %bb.t

bb.t:                                             ; preds = %._crit_edge138
end_hunk_3
begin_hunk_4_@rb_io_extract_modeenc:bb.a
  unreachable

bb.aa:                                            ; preds = %rb_io_ext_int_to_encs.exit82.1, %bb.au, %rb_num2int_inline.exit.1, %bb.y
  %.259.lcssa130 = phi i32 [ %.259, %bb.y ], [ %.259, %rb_io_ext_int_to_encs.exit82.1 ], [ %.259, %rb_num2int_inline.exit.1 ], [ 1, %bb.au ] ; 2 uses
  %.051.lcssa128 = phi i32 [ %.051, %bb.y ], [ %.4.i76.1, %rb_io_ext_int_to_encs.exit82.1 ], [ %i.ds, %rb_num2int_inline.exit.1 ], [ %.4.i76.1, %bb.au ] ; 2 uses
  %i.bu = load i64, ptr @sym_flags, align 8, !tbaa !13
  %i.bv = call i64 @rb_hash_aref(i64 noundef %2, i64 noundef %i.bu) #29 ; 2 uses
end_hunk_4
begin_hunk_5_@rb_io_extract_modeenc:bb.a
  %i.cq = load i32, ptr %i.b, align 4, !tbaa !7   ; 4 uses
  %i.cr = and i32 %i.cq, 4
  %i.cs = icmp eq i32 %i.cr, 0
  %7 = trunc nuw i32 %.259.lcssa130 to i1
  %or.cond3 = select i1 %i.cs, i1 true, i1 %7
  br i1 %or.cond3, label %bb.ak, label %bb.af

bb.af:                                            ; preds = %bb.ae
end_hunk_5
begin_hunk_6_@rb_io_extract_modeenc:bb.a

bb.ao:                                            ; preds = %bb.an, %bb.ak
  %i.dg = call i32 @rb_io_extract_encoding_option(i64 noundef %2, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.b)
  %8 = and i32 %i.dg, %.259.lcssa130
  %or.cond7.not = icmp eq i32 %8, 0
  br i1 %or.cond7.not, label %.thread117, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.dh = load i64, ptr @rb_eArgError, align 8, !tbaa !13
end_hunk_6
begin_hunk_7_@fptr_finalize_flush:bb.a
  %i.j = getelementptr i8, ptr %0, i64 192
  %i.k = load i64, ptr %i.j, align 8, !tbaa !41   ; 2 uses
  %i.l = icmp eq i64 %i.k, 4
  %3 = trunc nuw i32 %1 to i1
  %or.cond = select i1 %i.l, i1 true, i1 %3
  br i1 %or.cond, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
end_hunk_7
begin_hunk_8_@fptr_finalize_flush:bb.a
  %i.ba = call ptr @rb_nogvl(ptr noundef nonnull @nogvl_fclose, ptr noundef nonnull %i.e, ptr noundef nonnull inttoptr (i64 -1 to ptr), ptr noundef null, i32 noundef 4) #29
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = and i64 %i.bb, 2147483648
  %4 = icmp eq i64 %i.bc, 0
  %5 = icmp ne i64 %.1, 4
  %or.cond99 = select i1 %4, i1 true, i1 %5
  br i1 %or.cond99, label %bb.m, label %bb.l

bb.l:                                             ; preds = %maygvl_fclose.exit
  %i.bd = call ptr @rb_errno_ptr() #29
end_hunk_8
begin_hunk_9_@fptr_finalize_flush:bb.a

bb.m:                                             ; preds = %maygvl_fclose.exit.thread, %maygvl_fclose.exit, %bb.l, %io_flush_buffer_sync.exit
  %.169 = phi i32 [ %spec.select, %io_flush_buffer_sync.exit ], [ 1, %bb.l ], [ 1, %maygvl_fclose.exit ], [ 1, %maygvl_fclose.exit.thread ] ; 2 uses
  %.3 = phi i64 [ %.1, %io_flush_buffer_sync.exit ], [ %i.bh, %bb.l ], [ %.1, %maygvl_fclose.exit ], [ %.1, %maygvl_fclose.exit.thread ] ; 3 uses
  %i.bi = call i64 @rb_fiber_scheduler_current() #29 ; 2 uses
  %i.bj = icmp eq i32 %.169, 0
  %i.bk = icmp sgt i32 %i.c, -1                   ; 2 uses
end_hunk_9
begin_hunk_10_@fptr_finalize_flush:bb.a
  %.371 = phi i32 [ %.169, %bb.m ], [ 0, %bb.n ], [ %i.bt, %bb.o ]
  %i.bu = icmp eq i32 %.371, 0
  %or.cond11 = select i1 %i.bu, i1 %i.bk, i1 false
  br i1 %or.cond11, label %bb.q, label %._crit_edge

._crit_edge:                                      ; preds = %bb.p
  %.pre = trunc nuw i32 %1 to i1
  br label %bb.u

bb.q:                                             ; preds = %bb.p
  %i.bv = lshr i32 %i.g, 1
end_hunk_10
begin_hunk_11_@fptr_finalize_flush:bb.a
maygvl_close.exit:                                ; preds = %bb.r, %bb.s
  %.0.i86 = phi i32 [ %i.by, %bb.r ], [ %i.cb, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %6 = icmp sgt i32 %.0.i86, -1
  %7 = icmp ne i64 %.3, 4
  %8 = trunc nuw i32 %1 to i1                     ; 2 uses
  %9 = select i1 %6, i1 true, i1 %7
  %or.cond102 = select i1 %9, i1 true, i1 %8
  br i1 %or.cond102, label %bb.u, label %bb.t

bb.t:                                             ; preds = %maygvl_close.exit
  %i.cc = call ptr @rb_errno_ptr() #29
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !7
  %i.ce = sext i32 %i.cd to i64
end_hunk_11
begin_hunk_12_@fptr_finalize_flush:bb.a
  %i.cg = or disjoint i64 %i.cf, 1
  br label %bb.u

bb.u:                                             ; preds = %._crit_edge, %maygvl_close.exit, %bb.t
  %.pre-phi = phi i1 [ %.pre, %._crit_edge ], [ %8, %maygvl_close.exit ], [ false, %bb.t ]
  %.5 = phi i64 [ %.3, %._crit_edge ], [ %.3, %maygvl_close.exit ], [ %i.cg, %bb.t ] ; 7 uses
  %10 = icmp eq i64 %.5, 4
  %or.cond13 = select i1 %10, i1 true, i1 %.pre-phi
  br i1 %or.cond13, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
end_hunk_12
