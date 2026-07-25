inline.NumInlined: 1460
inline.NumDeleted: 143
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@rb_ary_union_multi:bb.a
  %i.bm = and i64 %i.bl, 8192
  %.not.i.i = icmp eq i64 %i.bm, 0
  br i1 %.not.i.i, label %rb_array_len.exit.i, label %rb_array_len.exit.thread.i

rb_array_len.exit.i:                              ; preds = %bb.n
  %i.bn = load i64, ptr %i.bj, align 8, !tbaa !14
  %i.bo = icmp slt i64 %.0.i36, %i.bn
  br i1 %i.bo, label %bb.o, label %rb_ary_union_hash.exit

rb_array_len.exit.thread.i:                       ; preds = %bb.n
  %i.bp = lshr i64 %i.bl, 15
  %i.bq = and i64 %i.bp, 127
  %i.br = icmp samesign ult i64 %.0.i36, %i.bq
  br i1 %i.br, label %RARRAY_AREF.exit.i, label %rb_ary_union_hash.exit

bb.o:                                             ; preds = %rb_array_len.exit.i
  %i.bs = load ptr, ptr %i.bk, align 8, !tbaa !14
  br label %RARRAY_AREF.exit.i

RARRAY_AREF.exit.i:                               ; preds = %bb.o, %rb_array_len.exit.thread.i
  %.0.i.i.i37 = phi ptr [ %i.bs, %bb.o ], [ %i.bj, %rb_array_len.exit.thread.i ]
  %i.bt = getelementptr [8 x i8], ptr %.0.i.i.i37, i64 %.0.i36
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !15 ; 5 uses
  %i.bv = tail call i32 @rb_hash_stlike_update(i64 noundef %i.ap, i64 noundef %i.bu, ptr noundef nonnull @ary_hash_orset, i64 noundef %i.bu) #24
  %.not.i38 = icmp eq i32 %i.bv, 0
  br i1 %.not.i38, label %bb.p, label %rb_obj_written.exit.i

bb.p:                                             ; preds = %RARRAY_AREF.exit.i
  %i.bw = icmp eq i64 %i.bu, 0
  %i.bx = and i64 %i.bu, 7
  %i.by = icmp ne i64 %i.bx, 0
  %i.bz = or i1 %i.bw, %i.by
  br i1 %i.bz, label %rb_obj_written.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @rb_gc_writebarrier(i64 noundef %i.ap, i64 noundef %i.bu) #24
  br label %rb_obj_written.exit.i

rb_obj_written.exit.i:                            ; preds = %bb.q, %bb.p, %RARRAY_AREF.exit.i
  %i.ca = add nuw nsw i64 %.0.i36, 1
  br label %bb.n, !llvm.loop !91

rb_ary_union_hash.exit:                           ; preds = %rb_array_len.exit.i, %rb_array_len.exit.thread.i
  %indvars.iv.next48 = add nuw nsw i64 %indvars.iv47, 1 ; 2 uses
  %exitcond51.not = icmp eq i64 %indvars.iv.next48, %wide.trip.count50
  br i1 %exitcond51.not, label %._crit_edge43, label %.lr.ph42, !llvm.loop !92

._crit_edge43:                                    ; preds = %rb_ary_union_hash.exit, %ary_make_hash.exit
  %i.cb = tail call i64 @rb_hash_values(i64 noundef %i.ap) #24
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph45, %rb_ary_new.exit, %._crit_edge43
  %.0 = phi i64 [ %i.cb, %._crit_edge43 ], [ %.0.i.i, %rb_ary_new.exit ], [ %.0.i.i, %.lr.ph45 ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_ary_difference_multi(i32 noundef %0, ptr nofree noundef captures(none) %1, i64 noundef %2) #4 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  %i.d = sext i32 %0 to i64                       ; 5 uses
  %i.e = icmp ult i32 %0, 1024
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store volatile i64 0, ptr %i.c, align 8, !tbaa !15
  %i.f = alloca i8, i64 %i.d, align 16
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = add nsw i64 %i.d, 7
  %i.h = lshr i64 %i.g, 3
  %i.i = call noalias nonnull ptr @rb_alloc_tmp_buffer_with_count(ptr noundef nonnull %i.c, i64 noundef %i.d, i64 noundef %i.h) #26
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.j = phi ptr [ %i.f, %bb.b ], [ %i.i, %bb.c ] ; 4 uses
  %i.k = load i64, ptr @rb_cArray, align 8, !tbaa !15 ; 2 uses
  %i.l = call zeroext i1 @rb_gc_size_allocatable_p(i64 noundef 40) #24
  %i.m = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec) ; 2 uses
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !25
  store volatile ptr %i.n, ptr %i.b, align 8, !tbaa !25
  %.0..0..0..0..0..0..0..0..0..0..0..0..i.i.i.i = load volatile ptr, ptr %i.b, align 8, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.o = call i64 @rb_wb_protected_newobj_of(ptr noundef %.0..0..0..0..0..0..0..0..0..0..0..0..i.i.i.i, i64 noundef %i.k, i64 noundef 8199, i32 noundef 0, i64 noundef 40) #24
  br label %rb_ary_new.exit

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !25
  store volatile ptr %i.p, ptr %i.a, align 8, !tbaa !25
  %.0..0..0..0..0..0..0..0..0..0..0..0..i.i14.i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.q = call i64 @rb_wb_protected_newobj_of(ptr noundef %.0..0..0..0..0..0..0..0..0..0..0..0..i.i14.i.i, i64 noundef %i.k, i64 noundef 7, i32 noundef 0, i64 noundef 40) #24 ; 2 uses
  %i.r = inttoptr i64 %i.q to ptr                 ; 2 uses
  %i.s = getelementptr i8, ptr %i.r, i64 16       ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, i8 0, i64 24, i1 false)
  %i.t = call noalias nonnull ptr @ruby_xmalloc2(i64 noundef 0, i64 noundef 8) #25
  %i.u = getelementptr i8, ptr %i.r, i64 32
  store ptr %i.t, ptr %i.u, align 8, !tbaa !14
  store i64 0, ptr %i.s, align 8, !tbaa !14
  br label %rb_ary_new.exit

rb_ary_new.exit:                                  ; preds = %bb.e, %bb.f
  %.0.i.i = phi i64 [ %i.o, %bb.e ], [ %i.q, %bb.f ] ; 3 uses
  %i.v = inttoptr i64 %2 to ptr                   ; 5 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !11   ; 2 uses
  %i.x = and i64 %i.w, 8192
  %.not.i = icmp eq i64 %i.x, 0
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %rb_ary_new.exit
  %i.y = lshr i64 %i.w, 15
  %i.z = and i64 %i.y, 127
  br label %rb_array_len.exit

bb.h:                                             ; preds = %rb_ary_new.exit
  %i.aa = getelementptr i8, ptr %i.v, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !14
  br label %rb_array_len.exit

rb_array_len.exit:                                ; preds = %bb.g, %bb.h
  %.0.i = phi i64 [ %i.z, %bb.g ], [ %i.ab, %bb.h ]
  %i.ac = icmp sgt i32 %0, 0                      ; 2 uses
  br i1 %i.ac, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %rb_array_len.exit
  %.0.i.fr = freeze i64 %.0.i
  %i.ad = icmp sgt i64 %.0.i.fr, 16
  br i1 %i.ad, label %.lr.ph.split.us, label %.critedge

.lr.ph.split.us:                                  ; preds = %.lr.ph, %3
  %.077.us = phi i64 [ %4, %3 ], [ 0, %.lr.ph ]   ; 4 uses
  %i.ae = getelementptr [8 x i8], ptr %1, i64 %.077.us ; 3 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !15
  %i.ag = call i64 @rb_convert_type_with_id(i64 noundef %i.af, i32 noundef 7, ptr noundef nonnull @.str, i64 noundef 3265) #24 ; 2 uses
  store i64 %i.ag, ptr %i.ae, align 8, !tbaa !15
  %i.ah = inttoptr i64 %i.ag to ptr               ; 5 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !11 ; 3 uses
  %i.aj = and i64 %i.ai, 8192
  %.not.i46.us = icmp eq i64 %i.aj, 0
  br i1 %.not.i46.us, label %rb_array_len.exit48.us, label %rb_array_len.exit48.thread.us

rb_array_len.exit48.thread.us:                    ; preds = %.lr.ph.split.us
  %i.ak = and i64 %i.ai, 4161536
  %i.al = icmp samesign ugt i64 %i.ak, 524288     ; 2 uses
  %i.am = getelementptr i8, ptr %i.j, i64 %.077.us
  %i.an = zext i1 %i.al to i8
  store i8 %i.an, ptr %i.am, align 1, !tbaa !93
  br i1 %i.al, label %.thread.us, label %3

.thread.us:                                       ; preds = %rb_array_len.exit48.thread.us
  %i.ao = lshr i64 %i.ai, 15
  %i.ap = and i64 %i.ao, 127
  br label %ary_tmp_hash_new.exit.i.us

rb_array_len.exit48.us:                           ; preds = %.lr.ph.split.us
  %i.aq = getelementptr i8, ptr %i.ah, i64 16
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !14 ; 2 uses
  %i.as = icmp sgt i64 %i.ar, 16                  ; 2 uses
  %i.at = getelementptr i8, ptr %i.j, i64 %.077.us
  %i.au = zext i1 %i.as to i8
  store i8 %i.au, ptr %i.at, align 1, !tbaa !93
  br i1 %i.as, label %ary_tmp_hash_new.exit.i.us, label %3

ary_tmp_hash_new.exit.i.us:                       ; preds = %rb_array_len.exit48.us, %.thread.us
  %.0.i.i.i.us = phi i64 [ %i.ap, %.thread.us ], [ %i.ar, %rb_array_len.exit48.us ]
  %i.av = call i64 @rb_hash_new_with_size(i64 noundef %.0.i.i.i.us) #24 ; 3 uses
  %i.aw = inttoptr i64 %i.av to ptr
  %i.ax = getelementptr i8, ptr %i.aw, i64 8
  store i64 0, ptr %i.ax, align 8, !tbaa !15
  %i.ay = getelementptr i8, ptr %i.ah, i64 16     ; 2 uses
  %i.az = getelementptr i8, ptr %i.ah, i64 32
  br label %bb.i

bb.i:                                             ; preds = %RARRAY_AREF.exit.i.i.us, %ary_tmp_hash_new.exit.i.us
  %.0.i.i49.us = phi i64 [ 0, %ary_tmp_hash_new.exit.i.us ], [ %i.bl, %RARRAY_AREF.exit.i.i.us ] ; 4 uses
  %i.ba = load i64, ptr %i.ah, align 8, !tbaa !11 ; 2 uses
  %i.bb = and i64 %i.ba, 8192
  %.not.i.i3.i.us = icmp eq i64 %i.bb, 0
  br i1 %.not.i.i3.i.us, label %rb_array_len.exit.i.i.us, label %rb_array_len.exit.thread.i.i.us

rb_array_len.exit.thread.i.i.us:                  ; preds = %bb.i
  %i.bc = lshr i64 %i.ba, 15
  %i.bd = and i64 %i.bc, 127
  %i.be = icmp samesign ult i64 %.0.i.i49.us, %i.bd
  br i1 %i.be, label %RARRAY_AREF.exit.i.i.us, label %ary_make_hash.exit.us

rb_array_len.exit.i.i.us:                         ; preds = %bb.i
  %i.bf = load i64, ptr %i.ay, align 8, !tbaa !14
  %i.bg = icmp slt i64 %.0.i.i49.us, %i.bf
  br i1 %i.bg, label %bb.j, label %ary_make_hash.exit.us

ary_make_hash.exit.us:                            ; preds = %rb_array_len.exit.i.i.us, %rb_array_len.exit.thread.i.i.us
  store i64 %i.av, ptr %i.ae, align 8, !tbaa !15
  br label %3

3:                                                ; preds = %ary_make_hash.exit.us, %rb_array_len.exit48.us, %rb_array_len.exit48.thread.us
  %4 = add nuw nsw i64 %.077.us, 1                ; 2 uses
  %exitcond87.not = icmp eq i64 %4, %i.d
  br i1 %exitcond87.not, label %.preheader, label %.lr.ph.split.us, !llvm.loop !95

bb.j:                                             ; preds = %rb_array_len.exit.i.i.us
  %i.bh = load ptr, ptr %i.az, align 8, !tbaa !14
  br label %RARRAY_AREF.exit.i.i.us

RARRAY_AREF.exit.i.i.us:                          ; preds = %bb.j, %rb_array_len.exit.thread.i.i.us
  %.0.i.i.i.i.us = phi ptr [ %i.bh, %bb.j ], [ %i.ay, %rb_array_len.exit.thread.i.i.us ]
  %i.bi = getelementptr [8 x i8], ptr %.0.i.i.i.i.us, i64 %.0.i.i49.us
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !15 ; 2 uses
  %i.bk = call i32 @rb_hash_add_new_element(i64 noundef %i.av, i64 noundef %i.bj, i64 noundef %i.bj) #24 ; 0 uses
  %i.bl = add nuw nsw i64 %.0.i.i49.us, 1
  br label %bb.i, !llvm.loop !81

.preheader:                                       ; preds = %.critedge, %3, %rb_array_len.exit
  %i.bm = getelementptr i8, ptr %i.v, i64 16      ; 2 uses
  %i.bn = getelementptr i8, ptr %i.v, i64 32
  %i.bo = inttoptr i64 %.0.i.i to ptr             ; 6 uses
  %i.bp = getelementptr i8, ptr %i.bo, i64 16     ; 3 uses
  %i.bq = getelementptr i8, ptr %i.bo, i64 32
  %wide.trip.count = zext nneg i32 %0 to i64
  br label %bb.k

.critedge:                                        ; preds = %.lr.ph, %.critedge
  %.077 = phi i64 [ %i.bv, %.critedge ], [ 0, %.lr.ph ] ; 3 uses
  %i.br = getelementptr [8 x i8], ptr %1, i64 %.077 ; 2 uses
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !15
  %i.bt = call i64 @rb_convert_type_with_id(i64 noundef %i.bs, i32 noundef 7, ptr noundef nonnull @.str, i64 noundef 3265) #24
  store i64 %i.bt, ptr %i.br, align 8, !tbaa !15
  %i.bu = getelementptr i8, ptr %i.j, i64 %.077
  store i8 0, ptr %i.bu, align 1, !tbaa !93
  %i.bv = add nuw nsw i64 %.077, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.bv, %i.d
  br i1 %exitcond.not, label %.preheader, label %.critedge, !llvm.loop !95

bb.k:                                             ; preds = %.preheader, %rb_ary_push.exit
  %.1 = phi i64 [ %i.eb, %rb_ary_push.exit ], [ 0, %.preheader ] ; 5 uses
  %i.bw = load i64, ptr %i.v, align 8, !tbaa !11  ; 2 uses
  %i.bx = and i64 %i.bw, 8192
  %.not.i50 = icmp eq i64 %i.bx, 0                ; 2 uses
  br i1 %.not.i50, label %rb_array_len.exit52, label %rb_array_len.exit52.thread

rb_array_len.exit52:                              ; preds = %bb.k
  %i.by = load i64, ptr %i.bm, align 8, !tbaa !14 ; 2 uses
  %i.bz = icmp slt i64 %.1, %i.by
  br i1 %i.bz, label %rb_array_len.exit.i, label %bb.x

rb_array_len.exit52.thread:                       ; preds = %bb.k
  %i.ca = lshr i64 %i.bw, 15
  %i.cb = and i64 %i.ca, 127                      ; 2 uses
  %i.cc = icmp slt i64 %.1, %i.cb
  br i1 %i.cc, label %rb_array_len.exit.i, label %bb.x

rb_array_len.exit.i:                              ; preds = %rb_array_len.exit52, %rb_array_len.exit52.thread
  %.0.i.i53 = phi i64 [ %i.cb, %rb_array_len.exit52.thread ], [ %i.by, %rb_array_len.exit52 ]
  %i.cd = icmp ne i64 %.0.i.i53, 0
  %i.ce = icmp sgt i64 %.1, -1
  %or.cond = select i1 %i.cd, i1 %i.ce, i1 false
  br i1 %or.cond, label %bb.l, label %rb_ary_elt.exit

bb.l:                                             ; preds = %rb_array_len.exit.i
  br i1 %.not.i50, label %bb.m, label %RARRAY_AREF.exit.i

bb.m:                                             ; preds = %bb.l
  %i.cf = load ptr, ptr %i.bn, align 8, !tbaa !14
  br label %RARRAY_AREF.exit.i

RARRAY_AREF.exit.i:                               ; preds = %bb.l, %bb.m
  %.0.i.i.i56 = phi ptr [ %i.cf, %bb.m ], [ %i.bm, %bb.l ]
  %i.cg = getelementptr [8 x i8], ptr %.0.i.i.i56, i64 %.1
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !15
  br label %rb_ary_elt.exit

rb_ary_elt.exit:                                  ; preds = %rb_array_len.exit.i, %RARRAY_AREF.exit.i
  %.0.i55 = phi i64 [ %i.ch, %RARRAY_AREF.exit.i ], [ 4, %rb_array_len.exit.i ] ; 6 uses
  br i1 %i.ac, label %.lr.ph81, label %rb_ary_includes_by_eql.exit

.lr.ph81:                                         ; preds = %rb_ary_elt.exit, %rb_ary_includes_by_eql.exit.thread
  %indvars.iv = phi i64 [ %indvars.iv.next, %rb_ary_includes_by_eql.exit.thread ], [ 0, %rb_ary_elt.exit ] ; 5 uses
  %i.ci = getelementptr i8, ptr %i.j, i64 %indvars.iv
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !93, !range !96, !noundef !97
  %i.ck = trunc nuw i8 %i.cj to i1
  %i.cl = getelementptr [8 x i8], ptr %1, i64 %indvars.iv
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !15 ; 2 uses
  br i1 %i.ck, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph81
  %i.cn = call i32 @rb_hash_stlike_lookup(i64 noundef %i.cm, i64 noundef %.0.i55, ptr noundef null) #24
  %.not45 = icmp eq i32 %i.cn, 0
  br i1 %.not45, label %rb_ary_includes_by_eql.exit.thread, label %rb_ary_includes_by_eql.exit.loopexit96

bb.o:                                             ; preds = %.lr.ph81
  %i.co = inttoptr i64 %i.cm to ptr               ; 3 uses
  %i.cp = getelementptr i8, ptr %i.co, i64 16     ; 2 uses
  %i.cq = getelementptr i8, ptr %i.co, i64 32
  br label %bb.p

bb.p:                                             ; preds = %RARRAY_AREF.exit.i59, %bb.o
  %.08.i = phi i64 [ 0, %bb.o ], [ %i.dc, %RARRAY_AREF.exit.i59 ] ; 4 uses
  %i.cr = load i64, ptr %i.co, align 8, !tbaa !11 ; 2 uses
  %i.cs = and i64 %i.cr, 8192
  %.not.i.i57 = icmp eq i64 %i.cs, 0
  br i1 %.not.i.i57, label %rb_array_len.exit.i62, label %rb_array_len.exit.thread.i

rb_array_len.exit.i62:                            ; preds = %bb.p
  %i.ct = load i64, ptr %i.cp, align 8, !tbaa !14
  %i.cu = icmp slt i64 %.08.i, %i.ct
  br i1 %i.cu, label %bb.q, label %rb_ary_includes_by_eql.exit.thread

rb_array_len.exit.thread.i:                       ; preds = %bb.p
  %i.cv = lshr i64 %i.cr, 15
  %i.cw = and i64 %i.cv, 127
  %i.cx = icmp samesign ult i64 %.08.i, %i.cw
  br i1 %i.cx, label %RARRAY_AREF.exit.i59, label %rb_ary_includes_by_eql.exit.thread

bb.q:                                             ; preds = %rb_array_len.exit.i62
  %i.cy = load ptr, ptr %i.cq, align 8, !tbaa !14
  br label %RARRAY_AREF.exit.i59

RARRAY_AREF.exit.i59:                             ; preds = %bb.q, %rb_array_len.exit.thread.i
  %.0.i.i.i60 = phi ptr [ %i.cy, %bb.q ], [ %i.cp, %rb_array_len.exit.thread.i ]
  %i.cz = getelementptr [8 x i8], ptr %.0.i.i.i60, i64 %.08.i
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !15
  %i.db = call i32 @rb_eql(i64 noundef %.0.i55, i64 noundef %i.da) #24
  %.not.i61 = icmp eq i32 %i.db, 0
  %i.dc = add nuw nsw i64 %.08.i, 1
  br i1 %.not.i61, label %bb.p, label %rb_ary_includes_by_eql.exit.loopexit, !llvm.loop !79

rb_ary_includes_by_eql.exit.thread:               ; preds = %rb_array_len.exit.thread.i, %rb_array_len.exit.i62, %bb.n
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond89.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond89.not, label %rb_ary_includes_by_eql.exit.thread94, label %.lr.ph81, !llvm.loop !98

rb_ary_includes_by_eql.exit.loopexit:             ; preds = %RARRAY_AREF.exit.i59
  %i.dd = trunc nuw nsw i64 %indvars.iv to i32
  br label %rb_ary_includes_by_eql.exit

rb_ary_includes_by_eql.exit.loopexit96:           ; preds = %bb.n
  %i.de = trunc nuw nsw i64 %indvars.iv to i32
  br label %rb_ary_includes_by_eql.exit

rb_ary_includes_by_eql.exit:                      ; preds = %rb_ary_includes_by_eql.exit.loopexit96, %rb_ary_includes_by_eql.exit.loopexit, %rb_ary_elt.exit
  %.04276 = phi i32 [ %i.dd, %rb_ary_includes_by_eql.exit.loopexit ], [ 0, %rb_ary_elt.exit ], [ %i.de, %rb_ary_includes_by_eql.exit.loopexit96 ]
  %i.df = icmp eq i32 %.04276, %0
  br i1 %i.df, label %rb_ary_includes_by_eql.exit.thread94, label %rb_ary_push.exit

rb_ary_includes_by_eql.exit.thread94:             ; preds = %rb_ary_includes_by_eql.exit.thread, %rb_ary_includes_by_eql.exit
  %i.dg = load i64, ptr %i.bo, align 8, !tbaa !11 ; 2 uses
  %i.dh = and i64 %i.dg, 8192
  %.not.i.i63 = icmp eq i64 %i.dh, 0
  br i1 %.not.i.i63, label %bb.s, label %bb.r

bb.r:                                             ; preds = %rb_ary_includes_by_eql.exit.thread94
  %i.di = lshr i64 %i.dg, 15
  %i.dj = and i64 %i.di, 127
  br label %rb_array_len.exit.i64

bb.s:                                             ; preds = %rb_ary_includes_by_eql.exit.thread94
  %i.dk = load i64, ptr %i.bp, align 8, !tbaa !14
  br label %rb_array_len.exit.i64

rb_array_len.exit.i64:                            ; preds = %bb.s, %bb.r
  %.0.i.i65 = phi i64 [ %i.dj, %bb.r ], [ %i.dk, %bb.s ] ; 3 uses
  %i.dl = call fastcc i64 @ary_ensure_room_for_push(i64 noundef %.0.i.i, i64 noundef 1)
  %i.dm = load i64, ptr %i.bo, align 8, !tbaa !11
  %i.dn = and i64 %i.dm, 8192
  %.not.i.i.i66 = icmp eq i64 %i.dn, 0
  br i1 %.not.i.i.i66, label %bb.t, label %rb_ary_ptr_use_start.exit.i

bb.t:                                             ; preds = %rb_array_len.exit.i64
  %i.do = load ptr, ptr %i.bq, align 8, !tbaa !14
  br label %rb_ary_ptr_use_start.exit.i

rb_ary_ptr_use_start.exit.i:                      ; preds = %rb_array_len.exit.i64, %bb.t
  %.0.i.i.i67 = phi ptr [ %i.do, %bb.t ], [ %i.bp, %rb_array_len.exit.i64 ]
  %i.dp = getelementptr [8 x i8], ptr %.0.i.i.i67, i64 %.0.i.i65
  store i64 %.0.i55, ptr %i.dp, align 8, !tbaa !15
  %i.dq = icmp eq i64 %.0.i55, 0
  %i.dr = and i64 %.0.i55, 7
  %i.ds = icmp ne i64 %i.dr, 0
  %i.dt = or i1 %i.dq, %i.ds
  br i1 %i.dt, label %rb_obj_write.exit.i, label %bb.u

bb.u:                                             ; preds = %rb_ary_ptr_use_start.exit.i
  call void @rb_gc_writebarrier(i64 noundef %i.dl, i64 noundef %.0.i55) #24
  br label %rb_obj_write.exit.i

rb_obj_write.exit.i:                              ; preds = %bb.u, %rb_ary_ptr_use_start.exit.i
  %i.du = load i64, ptr %i.bo, align 8, !tbaa !11 ; 2 uses
  %i.dv = and i64 %i.du, 8192
  %.not.i68 = icmp eq i64 %i.dv, 0
  br i1 %.not.i68, label %bb.w, label %bb.v

bb.v:                                             ; preds = %rb_obj_write.exit.i
  %i.dw = and i64 %i.du, -4161537
  %i.dx = shl i64 %.0.i.i65, 15
  %i.dy = add i64 %i.dx, 32768
  %i.dz = or i64 %i.dw, %i.dy
  store i64 %i.dz, ptr %i.bo, align 8, !tbaa !11
  br label %rb_ary_push.exit

bb.w:                                             ; preds = %rb_obj_write.exit.i
  %i.ea = add i64 %.0.i.i65, 1
  store i64 %i.ea, ptr %i.bp, align 8, !tbaa !14
  br label %rb_ary_push.exit

rb_ary_push.exit:                                 ; preds = %bb.w, %bb.v, %rb_ary_includes_by_eql.exit
  %i.eb = add i64 %.1, 1
  br label %bb.k, !llvm.loop !99

bb.x:                                             ; preds = %rb_array_len.exit52.thread, %rb_array_len.exit52
  call void @rb_free_tmp_buffer(ptr noundef nonnull %i.c) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  ret i64 %.0.i.i
end_hunk_0
begin_hunk_1_@rb_ary_repeated_permutation:bb.a
  %i.j = lshr i64 %i.h, 15
  %i.k = and i64 %i.j, 127
  br label %rb_array_len.exit

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr i8, ptr %i.g, i64 16
  %i.m = load i64, ptr %i.l, align 8, !tbaa !14
  br label %rb_array_len.exit

rb_array_len.exit:                                ; preds = %bb.b, %bb.c
  %.0.i = phi i64 [ %i.k, %bb.b ], [ %i.m, %bb.c ] ; 4 uses
  %i.n = tail call i32 @rb_block_given_p() #24
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %rb_array_len.exit
  %i.o = tail call i64 @rb_frame_this_func() #24
  %i.p = tail call i64 @rb_id2sym(i64 noundef %i.o) #24
  %i.q = call i64 @rb_enumeratorize_with_size(i64 noundef %0, i64 noundef %i.p, i32 noundef 1, ptr noundef nonnull %i.e, ptr noundef nonnull @rb_ary_repeated_permutation_size) #24
  br label %.loopexit

bb.e:                                             ; preds = %rb_array_len.exit
  %i.r = trunc i64 %1 to i1
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.s = ashr i64 %1, 1
  br label %rb_num2long_inline.exit

bb.g:                                             ; preds = %bb.e
  %i.t = tail call i64 @rb_num2long(i64 noundef %1) #24
  br label %rb_num2long_inline.exit

rb_num2long_inline.exit:                          ; preds = %bb.f, %bb.g
  %.0.i23 = phi i64 [ %i.s, %bb.f ], [ %i.t, %bb.g ] ; 16 uses
  %i.u = icmp slt i64 %.0.i23, 0
  br i1 %i.u, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %rb_num2long_inline.exit
  switch i64 %.0.i23, label %bb.n [
    i64 0, label %bb.i
    i64 1, label %.preheader
  ]

.preheader:                                       ; preds = %bb.h
  %i.v = getelementptr i8, ptr %i.g, i64 16       ; 2 uses
  %i.w = getelementptr i8, ptr %i.g, i64 32
  br label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.x = load i64, ptr @rb_cArray, align 8, !tbaa !15 ; 2 uses
  %i.y = tail call zeroext i1 @rb_gc_size_allocatable_p(i64 noundef 40) #24
  %i.z = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec) ; 2 uses
  br i1 %i.y, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !25
  store volatile ptr %i.aa, ptr %i.b, align 8, !tbaa !25
  %.0..0..0..0..0..0..0..0..0..0..i.i.i = load volatile ptr, ptr %i.b, align 8, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ab = tail call i64 @rb_wb_protected_newobj_of(ptr noundef %.0..0..0..0..0..0..0..0..0..0..i.i.i, i64 noundef %i.x, i64 noundef 8199, i32 noundef 0, i64 noundef 40) #24
  br label %ary_new.exit

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ac = load ptr, ptr %i.z, align 8, !tbaa !25
  store volatile ptr %i.ac, ptr %i.a, align 8, !tbaa !25
  %.0..0..0..0..0..0..0..0..0..0..i.i14.i = load volatile ptr, ptr %i.a, align 8, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ad = tail call i64 @rb_wb_protected_newobj_of(ptr noundef %.0..0..0..0..0..0..0..0..0..0..i.i14.i, i64 noundef %i.x, i64 noundef 7, i32 noundef 0, i64 noundef 40) #24 ; 2 uses
  %i.ae = inttoptr i64 %i.ad to ptr               ; 2 uses
  %i.af = getelementptr i8, ptr %i.ae, i64 16     ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, i8 0, i64 24, i1 false)
  %i.ag = tail call noalias nonnull ptr @ruby_xmalloc2(i64 noundef 0, i64 noundef 8) #25
  %i.ah = getelementptr i8, ptr %i.ae, i64 32
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !14
  store i64 0, ptr %i.af, align 8, !tbaa !14
  br label %ary_new.exit

ary_new.exit:                                     ; preds = %bb.j, %bb.k
  %.0.i31 = phi i64 [ %i.ab, %bb.j ], [ %i.ad, %bb.k ]
  %i.ai = tail call i64 @rb_yield(i64 noundef %.0.i31) #24 ; 0 uses
  br label %.loopexit

bb.l:                                             ; preds = %.preheader, %RARRAY_AREF.exit
  %.021 = phi i64 [ %i.av, %RARRAY_AREF.exit ], [ 0, %.preheader ] ; 4 uses
  %i.aj = load i64, ptr %i.g, align 8, !tbaa !11  ; 2 uses
  %i.ak = and i64 %i.aj, 8192
  %.not.i24 = icmp eq i64 %i.ak, 0
  br i1 %.not.i24, label %rb_array_len.exit26, label %rb_array_len.exit26.thread

rb_array_len.exit26:                              ; preds = %bb.l
  %i.al = load i64, ptr %i.v, align 8, !tbaa !14
  %i.am = icmp slt i64 %.021, %i.al
  br i1 %i.am, label %bb.m, label %.loopexit

rb_array_len.exit26.thread:                       ; preds = %bb.l
  %i.an = lshr i64 %i.aj, 15
  %i.ao = and i64 %i.an, 127
  %i.ap = icmp samesign ult i64 %.021, %i.ao
  br i1 %i.ap, label %RARRAY_AREF.exit, label %.loopexit

bb.m:                                             ; preds = %rb_array_len.exit26
  %i.aq = load ptr, ptr %i.w, align 8, !tbaa !14
  br label %RARRAY_AREF.exit

RARRAY_AREF.exit:                                 ; preds = %rb_array_len.exit26.thread, %bb.m
  %.0.i.i = phi ptr [ %i.aq, %bb.m ], [ %i.v, %rb_array_len.exit26.thread ]
  %i.ar = getelementptr [8 x i8], ptr %.0.i.i, i64 %.021
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !15
  %i.at = tail call i64 (i64, ...) @rb_ary_new_from_args(i64 noundef 1, i64 noundef %i.as)
  %i.au = tail call i64 @rb_yield(i64 noundef %i.at) #24 ; 0 uses
  %i.av = add nuw nsw i64 %.021, 1
  br label %bb.l, !llvm.loop !163

bb.n:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #24
  %i.aw = icmp samesign ult i64 %.0.i23, 128
  br i1 %i.aw, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store volatile i64 0, ptr %i.f, align 8, !tbaa !15
  %i.ax = shl nuw nsw i64 %.0.i23, 3
  %i.ay = alloca i8, i64 %i.ax, align 16
  br label %bb.r

bb.p:                                             ; preds = %bb.n
  %i.az = icmp samesign ugt i64 %.0.i23, 2305843009213693951
  br i1 %i.az, label %bb.q, label %rb_alloc_tmp_buffer2.exit, !prof !21

bb.q:                                             ; preds = %bb.p
  tail call void @ruby_malloc_size_overflow(i64 noundef range(i64 -2147483648, -8070450532247928832) %.0.i23, i64 noundef 8) #23
  unreachable

rb_alloc_tmp_buffer2.exit:                        ; preds = %bb.p
  %i.ba = shl nuw i64 %.0.i23, 3
  %i.bb = call noalias nonnull ptr @rb_alloc_tmp_buffer_with_count(ptr noundef nonnull %i.f, i64 noundef %i.ba, i64 noundef %.0.i23) #26
  br label %bb.r

bb.r:                                             ; preds = %rb_alloc_tmp_buffer2.exit, %bb.o
  %i.bc = phi ptr [ %i.ay, %bb.o ], [ %i.bb, %rb_alloc_tmp_buffer2.exit ] ; 8 uses
  %i.bd = load i64, ptr @rb_cArray, align 8, !tbaa !15
  %i.be = load i64, ptr %i.g, align 8, !tbaa !11  ; 2 uses
  %i.bf = and i64 %i.be, 8192
  %.not.i.i27 = icmp eq i64 %i.bf, 0
  br i1 %.not.i.i27, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bg = lshr i64 %i.be, 15
  %i.bh = and i64 %i.bg, 127
  br label %ary_make_shared_copy.exit

bb.t:                                             ; preds = %bb.r
  %i.bi = getelementptr i8, ptr %i.g, i64 16
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !14
  br label %ary_make_shared_copy.exit

ary_make_shared_copy.exit:                        ; preds = %bb.s, %bb.t
  %.0.i.i28 = phi i64 [ %i.bh, %bb.s ], [ %i.bj, %bb.t ]
  %i.bk = call fastcc noundef i64 @ary_make_partial(i64 noundef %0, i64 noundef %i.bd, i64 noundef 0, i64 noundef %.0.i.i28)
  %i.bl = inttoptr i64 %i.bk to ptr               ; 4 uses
  %i.bm = getelementptr i8, ptr %i.bl, i64 8      ; 3 uses
  store i64 0, ptr %i.bm, align 8, !tbaa !15
  store i64 0, ptr %i.bc, align 8, !tbaa !15
  %i.bn = add nsw i64 %.0.i23, -1                 ; 3 uses
  %i.bo = icmp sgt i64 %.0.i, 0
  %i.bp = shl nuw i64 %.0.i23, 3                  ; 2 uses
  %i.bq = call i64 @llvm.umax.i64(i64 %i.bp, i64 24)
  %spec.store.select.i.i.i.i = add nuw i64 %i.bq, 16 ; 2 uses
  %i.br = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec) ; 2 uses
  %i.bs = getelementptr i8, ptr %i.bl, i64 16
  %i.bt = getelementptr i8, ptr %i.bl, i64 32
  %i.bu = shl i64 %.0.i23, 15
  br i1 %i.bo, label %.split.us27.i, label %.split.i

.split.us27.i:                                    ; preds = %ary_make_shared_copy.exit
  %i.bv = icmp samesign ugt i64 %.0.i23, 1152921504606846975
  br i1 %i.bv, label %.preheader23.us.us.i, label %.split.us27.split.i

.preheader23.us.us.i:                             ; preds = %.split.us27.i
  %scevgep.i = getelementptr i8, ptr %i.bc, i64 8
  %i.bw = add i64 %i.bp, -16
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i, i8 0, i64 %i.bw, i1 false), !tbaa !15
  %i.bx = getelementptr [8 x i8], ptr %i.bc, i64 %i.bn
  store i64 0, ptr %i.bx, align 8, !tbaa !15
  %i.by = load i64, ptr @rb_eArgError, align 8, !tbaa !15
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.by, ptr noundef nonnull @.str.137) #23
  unreachable

.split.us27.split.i:                              ; preds = %.split.us27.i, %.split.us27.split.i.backedge
  %.0.us.i = phi i64 [ %.0.us.i.be, %.split.us27.split.i.backedge ], [ 0, %.split.us27.i ] ; 2 uses
  %i.bz = add nsw i64 %.0.us.i, 1                 ; 4 uses
  %i.ca = icmp slt i64 %i.bz, %i.bn
  %i.cb = getelementptr [8 x i8], ptr %i.bc, i64 %i.bz ; 2 uses
  br i1 %i.ca, label %bb.ae, label %.preheader23.us.i

bb.u:                                             ; preds = %yield_indexed_values.exit.us.i
  %i.cc = add nuw nsw i64 %.01924.us28.i, 1       ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.cc, %.0.i
  br i1 %exitcond.not.i, label %..preheader_crit_edge.us.i.preheader, label %.preheader23.us.i, !llvm.loop !164

..preheader_crit_edge.us.i.preheader:             ; preds = %bb.u
  %2 = icmp slt i64 %.0.us.i, 0
  br i1 %2, label %rpermute0.exit, label %.lr.ph49.a

..preheader_crit_edge.us.i:                       ; preds = %.lr.ph49.a
  %3 = icmp slt i64 %.1.us.i48, 2
  br i1 %3, label %rpermute0.exit, label %.lr.ph49.a, !llvm.loop !165

.lr.ph49.a:                                       ; preds = %..preheader_crit_edge.us.i.preheader, %..preheader_crit_edge.us.i
  %.1.us.i48 = phi i64 [ %4, %..preheader_crit_edge.us.i ], [ %i.bz, %..preheader_crit_edge.us.i.preheader ] ; 2 uses
  %4 = add nsw i64 %.1.us.i48, -1                 ; 3 uses
  %5 = getelementptr [8 x i8], ptr %i.bc, i64 %4  ; 2 uses
  %6 = load i64, ptr %5, align 8, !tbaa !15
  %7 = add i64 %6, 1                              ; 2 uses
  store i64 %7, ptr %5, align 8, !tbaa !15
  %.not.us.i.a = icmp slt i64 %7, %.0.i
  br i1 %.not.us.i.a, label %.split.us27.split.i.backedge, label %..preheader_crit_edge.us.i, !llvm.loop !165

.preheader23.us.i:                                ; preds = %.split.us27.split.i, %bb.u
  %.01924.us28.i = phi i64 [ %i.cc, %bb.u ], [ 0, %.split.us27.split.i ] ; 2 uses
  store i64 %.01924.us28.i, ptr %i.cb, align 8, !tbaa !15
  %i.cd = load i64, ptr @rb_cArray, align 8, !tbaa !15 ; 2 uses
  %i.ce = call zeroext i1 @rb_gc_size_allocatable_p(i64 noundef %spec.store.select.i.i.i.i) #24
  br i1 %i.ce, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.preheader23.us.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.cf = load ptr, ptr %i.br, align 8, !tbaa !25
  store volatile ptr %i.cf, ptr %i.c, align 8, !tbaa !25
  %.0..0..0..0..0..0..0..0..0..0..0..0..i.i14.i.us.i = load volatile ptr, ptr %i.c, align 8, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.cg = call i64 @rb_wb_protected_newobj_of(ptr noundef %.0..0..0..0..0..0..0..0..0..0..0..0..i.i14.i.us.i, i64 noundef %i.cd, i64 noundef 7, i32 noundef 0, i64 noundef 40) #24 ; 2 uses
  %i.ch = inttoptr i64 %i.cg to ptr               ; 4 uses
  %i.ci = getelementptr i8, ptr %i.ch, i64 16     ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ci, i8 0, i64 24, i1 false)
  %i.cj = getelementptr i8, ptr %i.ch, i64 24
  store i64 %.0.i23, ptr %i.cj, align 8, !tbaa !14
  %i.ck = call noalias nonnull ptr @ruby_xmalloc2(i64 noundef range(i64 2, -9223372036854775808) %.0.i23, i64 noundef 8) #25
  %i.cl = getelementptr i8, ptr %i.ch, i64 32
  store ptr %i.ck, ptr %i.cl, align 8, !tbaa !14
  store i64 0, ptr %i.ci, align 8, !tbaa !14
  br label %ary_new.exit.us.i

bb.w:                                             ; preds = %.preheader23.us.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.cm = load ptr, ptr %i.br, align 8, !tbaa !25
  store volatile ptr %i.cm, ptr %i.d, align 8, !tbaa !25
  %.0..0..0..0..0..0..0..0..0..0..0..0..i.i.i.us.i = load volatile ptr, ptr %i.d, align 8, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.cn = call i64 @rb_wb_protected_newobj_of(ptr noundef %.0..0..0..0..0..0..0..0..0..0..0..0..i.i.i.us.i, i64 noundef %i.cd, i64 noundef 8199, i32 noundef 0, i64 noundef %spec.store.select.i.i.i.i) #24 ; 2 uses
  %.pre.i = inttoptr i64 %i.cn to ptr
  br label %ary_new.exit.us.i

ary_new.exit.us.i:                                ; preds = %bb.w, %bb.v
  %.pre-phi.i = phi ptr [ %.pre.i, %bb.w ], [ %i.ch, %bb.v ] ; 5 uses
  %.0.i.us.i = phi i64 [ %i.cn, %bb.w ], [ %i.cg, %bb.v ] ; 2 uses
  %i.co = getelementptr i8, ptr %.pre-phi.i, i64 16 ; 2 uses
  %i.cp = getelementptr i8, ptr %.pre-phi.i, i64 32
  br label %bb.x

bb.x:                                             ; preds = %ARY_SET.exit.i.us.i, %ary_new.exit.us.i
  %.019.i.us.i = phi i64 [ 0, %ary_new.exit.us.i ], [ %i.df, %ARY_SET.exit.i.us.i ] ; 3 uses
  %i.cq = getelementptr [8 x i8], ptr %i.bc, i64 %.019.i.us.i
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !15
  %i.cs = load i64, ptr %i.bl, align 8, !tbaa !11
  %i.ct = and i64 %i.cs, 8192
  %.not.i.i.i.us.i = icmp eq i64 %i.ct, 0
  br i1 %.not.i.i.i.us.i, label %bb.y, label %RARRAY_AREF.exit.i.us.i

bb.y:                                             ; preds = %bb.x
  %i.cu = load ptr, ptr %i.bt, align 8, !tbaa !14
  br label %RARRAY_AREF.exit.i.us.i

RARRAY_AREF.exit.i.us.i:                          ; preds = %bb.y, %bb.x
  %.0.i.i.i.us.i = phi ptr [ %i.cu, %bb.y ], [ %i.bs, %bb.x ]
  %i.cv = getelementptr [8 x i8], ptr %.0.i.i.i.us.i, i64 %i.cr
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !15 ; 4 uses
  %i.cx = load i64, ptr %.pre-phi.i, align 8, !tbaa !11
  %i.cy = and i64 %i.cx, 8192
  %.not.i.i.i.i.i.us.i = icmp eq i64 %i.cy, 0
  br i1 %.not.i.i.i.i.i.us.i, label %bb.z, label %rb_ary_ptr_use_start.exit.i.i.i.us.i

bb.z:                                             ; preds = %RARRAY_AREF.exit.i.us.i
  %i.cz = load ptr, ptr %i.cp, align 8, !tbaa !14
  br label %rb_ary_ptr_use_start.exit.i.i.i.us.i

rb_ary_ptr_use_start.exit.i.i.i.us.i:             ; preds = %bb.z, %RARRAY_AREF.exit.i.us.i
  %.0.i.i.i.i.i.us.i = phi ptr [ %i.cz, %bb.z ], [ %i.co, %RARRAY_AREF.exit.i.us.i ]
  %i.da = getelementptr [8 x i8], ptr %.0.i.i.i.i.i.us.i, i64 %.019.i.us.i
  store i64 %i.cw, ptr %i.da, align 8, !tbaa !15
  %i.db = icmp eq i64 %i.cw, 0
  %i.dc = and i64 %i.cw, 7
  %i.dd = icmp ne i64 %i.dc, 0
  %i.de = or i1 %i.db, %i.dd
  br i1 %i.de, label %ARY_SET.exit.i.us.i, label %bb.aa

bb.aa:                                            ; preds = %rb_ary_ptr_use_start.exit.i.i.i.us.i
  call void @rb_gc_writebarrier(i64 noundef %.0.i.us.i, i64 noundef %i.cw) #24
  br label %ARY_SET.exit.i.us.i

ARY_SET.exit.i.us.i:                              ; preds = %bb.aa, %rb_ary_ptr_use_start.exit.i.i.i.us.i
  %i.df = add nuw nsw i64 %.019.i.us.i, 1         ; 2 uses
  %exitcond.not.i.us.i = icmp eq i64 %i.df, %.0.i23
  br i1 %exitcond.not.i.us.i, label %bb.ab, label %bb.x, !llvm.loop !158

bb.ab:                                            ; preds = %ARY_SET.exit.i.us.i
  %i.dg = load i64, ptr %.pre-phi.i, align 8, !tbaa !11 ; 2 uses
  %i.dh = and i64 %i.dg, 8192
  %.not18.i.us.i = icmp eq i64 %i.dh, 0
  br i1 %.not18.i.us.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.di = and i64 %i.dg, -4161537
  %i.dj = or i64 %i.di, %i.bu
  store i64 %i.dj, ptr %.pre-phi.i, align 8, !tbaa !11
  br label %yield_indexed_values.exit.us.i

bb.ad:                                            ; preds = %bb.ab
  store i64 %.0.i23, ptr %i.co, align 8, !tbaa !14
  br label %yield_indexed_values.exit.us.i

yield_indexed_values.exit.us.i:                   ; preds = %bb.ad, %bb.ac
  %i.dk = call i64 @rb_yield(i64 noundef %.0.i.us.i) #24 ; 0 uses
  %i.dl = load i64, ptr %i.bm, align 8, !tbaa !62
  %.not.i.not.us.i = icmp eq i64 %i.dl, 0
  br i1 %.not.i.not.us.i, label %bb.u, label %.split33.us.i

bb.ae:                                            ; preds = %.split.us27.split.i
  store i64 0, ptr %i.cb, align 8, !tbaa !15
  br label %.split.us27.split.i.backedge

.split.us27.split.i.backedge:                     ; preds = %.lr.ph49.a, %bb.ae
  %.0.us.i.be = phi i64 [ %i.bz, %bb.ae ], [ %4, %.lr.ph49.a ]
  br label %.split.us27.split.i

.split.i:                                         ; preds = %ary_make_shared_copy.exit, %.split.i.backedge
  %.0.i29 = phi i64 [ %.0.i29.be, %.split.i.backedge ], [ 0, %ary_make_shared_copy.exit ] ; 2 uses
  %i.dm = add nsw i64 %.0.i29, 1                  ; 4 uses
  %i.dn = icmp slt i64 %i.dm, %i.bn
  br i1 %i.dn, label %bb.af, label %.preheader23.i.preheader

.preheader23.i.preheader:                         ; preds = %.split.i
  %i.do = icmp slt i64 %.0.i29, 0
  br i1 %i.do, label %rpermute0.exit, label %.lr.ph

bb.af:                                            ; preds = %.split.i
  %i.dp = getelementptr [8 x i8], ptr %i.bc, i64 %i.dm
  store i64 0, ptr %i.dp, align 8, !tbaa !15
  br label %.split.i.backedge

.split.i.backedge:                                ; preds = %.lr.ph, %bb.af
  %.0.i29.be = phi i64 [ %i.dm, %bb.af ], [ %i.ds, %.lr.ph ]
  br label %.split.i

.split33.us.i:                                    ; preds = %yield_indexed_values.exit.us.i
  %i.dq = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !15
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.dq, ptr noundef nonnull @.str.168) #23
  unreachable

.preheader23.i:                                   ; preds = %.lr.ph
  %i.dr = icmp slt i64 %.1.i47, 2
  br i1 %i.dr, label %rpermute0.exit, label %.lr.ph, !llvm.loop !165

.lr.ph:                                           ; preds = %.preheader23.i.preheader, %.preheader23.i
  %.1.i47 = phi i64 [ %i.ds, %.preheader23.i ], [ %i.dm, %.preheader23.i.preheader ] ; 2 uses
  %i.ds = add nsw i64 %.1.i47, -1                 ; 3 uses
  %i.dt = getelementptr [8 x i8], ptr %i.bc, i64 %i.ds ; 2 uses
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !15
  %i.dv = add i64 %i.du, 1                        ; 2 uses
  store i64 %i.dv, ptr %i.dt, align 8, !tbaa !15
  %.not.i30 = icmp slt i64 %i.dv, %.0.i
  br i1 %.not.i30, label %.split.i.backedge, label %.preheader23.i, !llvm.loop !165

rpermute0.exit:                                   ; preds = %.preheader23.i.preheader, %.preheader23.i, %..preheader_crit_edge.us.i.preheader, %..preheader_crit_edge.us.i
  call void @rb_free_tmp_buffer(ptr noundef nonnull %i.f) #24
  %i.dw = load i64, ptr @rb_cArray, align 8, !tbaa !15
  store i64 %i.dw, ptr %i.bm, align 8, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #24
  br label %.loopexit

.loopexit:                                        ; preds = %rb_array_len.exit26.thread, %rb_array_len.exit26, %rb_num2long_inline.exit, %rpermute0.exit, %ary_new.exit, %bb.d
  %.0 = phi i64 [ %i.q, %bb.d ], [ %0, %ary_new.exit ], [ %0, %rb_num2long_inline.exit ], [ %0, %rpermute0.exit ], [ %0, %rb_array_len.exit26 ], [ %0, %rb_array_len.exit26.thread ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_ary_repeated_combination(i64 noundef %0, i64 noundef %1) #4 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %i.e = alloca i64, align 8                      ; 2 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  store i64 %1, ptr %i.e, align 8, !tbaa !15
  %i.g = trunc i64 %1 to i1
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = ashr i64 %1, 1
  br label %rb_num2long_inline.exit

bb.c:                                             ; preds = %bb.a
  %i.i = tail call i64 @rb_num2long(i64 noundef %1) #24
  br label %rb_num2long_inline.exit

rb_num2long_inline.exit:                          ; preds = %bb.b, %bb.c
  %.0.i = phi i64 [ %i.h, %bb.b ], [ %i.i, %bb.c ] ; 18 uses
  %i.j = tail call i32 @rb_block_given_p() #24
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %rb_num2long_inline.exit
  %i.k = tail call i64 @rb_frame_this_func() #24
  %i.l = tail call i64 @rb_id2sym(i64 noundef %i.k) #24
  %i.m = call i64 @rb_enumeratorize_with_size(i64 noundef %0, i64 noundef %i.l, i32 noundef 1, ptr noundef nonnull %i.e, ptr noundef nonnull @rb_ary_repeated_combination_size) #24
  br label %.loopexit

bb.e:                                             ; preds = %rb_num2long_inline.exit
  %i.n = inttoptr i64 %0 to ptr                   ; 7 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !11   ; 3 uses
  %i.p = and i64 %i.o, 8192
  %.not.i = icmp eq i64 %i.p, 0
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = lshr i64 %i.o, 15
  %i.r = and i64 %i.q, 127
  br label %rb_array_len.exit

bb.g:                                             ; preds = %bb.e
  %i.s = getelementptr i8, ptr %i.n, i64 16
  %i.t = load i64, ptr %i.s, align 8, !tbaa !14
  br label %rb_array_len.exit

rb_array_len.exit:                                ; preds = %bb.f, %bb.g
  %.0.i26 = phi i64 [ %i.r, %bb.f ], [ %i.t, %bb.g ] ; 6 uses
  %i.u = icmp slt i64 %.0.i, 0
  br i1 %i.u, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %rb_array_len.exit
  switch i64 %.0.i, label %bb.n [
    i64 0, label %bb.i
    i64 1, label %.preheader
  ]

.preheader:                                       ; preds = %bb.h
  %i.v = getelementptr i8, ptr %i.n, i64 16       ; 2 uses
  %i.w = getelementptr i8, ptr %i.n, i64 32
  br label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.x = load i64, ptr @rb_cArray, align 8, !tbaa !15 ; 2 uses
  %i.y = tail call zeroext i1 @rb_gc_size_allocatable_p(i64 noundef 40) #24
  %i.z = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec) ; 2 uses
  br i1 %i.y, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !25
  store volatile ptr %i.aa, ptr %i.b, align 8, !tbaa !25
  %.0..0..0..0..0..0..0..0..0..0..i.i.i = load volatile ptr, ptr %i.b, align 8, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ab = tail call i64 @rb_wb_protected_newobj_of(ptr noundef %.0..0..0..0..0..0..0..0..0..0..i.i.i, i64 noundef %i.x, i64 noundef 8199, i32 noundef 0, i64 noundef 40) #24
  br label %ary_new.exit

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ac = load ptr, ptr %i.z, align 8, !tbaa !25
  store volatile ptr %i.ac, ptr %i.a, align 8, !tbaa !25
  %.0..0..0..0..0..0..0..0..0..0..i.i14.i = load volatile ptr, ptr %i.a, align 8, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ad = tail call i64 @rb_wb_protected_newobj_of(ptr noundef %.0..0..0..0..0..0..0..0..0..0..i.i14.i, i64 noundef %i.x, i64 noundef 7, i32 noundef 0, i64 noundef 40) #24 ; 2 uses
  %i.ae = inttoptr i64 %i.ad to ptr               ; 2 uses
  %i.af = getelementptr i8, ptr %i.ae, i64 16     ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, i8 0, i64 24, i1 false)
  %i.ag = tail call noalias nonnull ptr @ruby_xmalloc2(i64 noundef 0, i64 noundef 8) #25
  %i.ah = getelementptr i8, ptr %i.ae, i64 32
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !14
  store i64 0, ptr %i.af, align 8, !tbaa !14
  br label %ary_new.exit

ary_new.exit:                                     ; preds = %bb.j, %bb.k
  %.0.i34 = phi i64 [ %i.ab, %bb.j ], [ %i.ad, %bb.k ]
  %i.ai = tail call i64 @rb_yield(i64 noundef %.0.i34) #24 ; 0 uses
  br label %.loopexit

bb.l:                                             ; preds = %.preheader, %RARRAY_AREF.exit
  %i.aj = phi i64 [ %.pre, %RARRAY_AREF.exit ], [ %i.o, %.preheader ] ; 2 uses
  %.023 = phi i64 [ %i.av, %RARRAY_AREF.exit ], [ 0, %.preheader ] ; 4 uses
  %i.ak = and i64 %i.aj, 8192
  %.not.i27 = icmp eq i64 %i.ak, 0
  br i1 %.not.i27, label %rb_array_len.exit29, label %rb_array_len.exit29.thread

rb_array_len.exit29:                              ; preds = %bb.l
  %i.al = load i64, ptr %i.v, align 8, !tbaa !14
  %i.am = icmp slt i64 %.023, %i.al
  br i1 %i.am, label %bb.m, label %.loopexit

rb_array_len.exit29.thread:                       ; preds = %bb.l
  %i.an = lshr i64 %i.aj, 15
  %i.ao = and i64 %i.an, 127
  %i.ap = icmp samesign ult i64 %.023, %i.ao
  br i1 %i.ap, label %RARRAY_AREF.exit, label %.loopexit

bb.m:                                             ; preds = %rb_array_len.exit29
  %i.aq = load ptr, ptr %i.w, align 8, !tbaa !14
  br label %RARRAY_AREF.exit

RARRAY_AREF.exit:                                 ; preds = %rb_array_len.exit29.thread, %bb.m
  %.0.i.i = phi ptr [ %i.aq, %bb.m ], [ %i.v, %rb_array_len.exit29.thread ]
  %i.ar = getelementptr [8 x i8], ptr %.0.i.i, i64 %.023
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !15
  %i.at = tail call i64 (i64, ...) @rb_ary_new_from_args(i64 noundef 1, i64 noundef %i.as)
  %i.au = tail call i64 @rb_yield(i64 noundef %i.at) #24 ; 0 uses
  %i.av = add nuw nsw i64 %.023, 1
  %.pre = load i64, ptr %i.n, align 8, !tbaa !11
  br label %bb.l, !llvm.loop !166

bb.n:                                             ; preds = %bb.h
  %i.aw = icmp eq i64 %.0.i26, 0
  br i1 %i.aw, label %.loopexit, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #24
  %i.ax = icmp samesign ult i64 %.0.i, 128
  br i1 %i.ax, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store volatile i64 0, ptr %i.f, align 8, !tbaa !15
  %i.ay = shl nuw nsw i64 %.0.i, 3
  %i.az = alloca i8, i64 %i.ay, align 16
  br label %bb.s

bb.q:                                             ; preds = %bb.o
  %i.ba = icmp samesign ugt i64 %.0.i, 2305843009213693951
  br i1 %i.ba, label %bb.r, label %rb_alloc_tmp_buffer2.exit, !prof !21

bb.r:                                             ; preds = %bb.q
  tail call void @ruby_malloc_size_overflow(i64 noundef range(i64 -2147483648, -8070450532247928832) %.0.i, i64 noundef 8) #23
  unreachable

rb_alloc_tmp_buffer2.exit:                        ; preds = %bb.q
  %i.bb = shl nuw i64 %.0.i, 3
  %i.bc = call noalias nonnull ptr @rb_alloc_tmp_buffer_with_count(ptr noundef nonnull %i.f, i64 noundef %i.bb, i64 noundef %.0.i) #26
  br label %bb.s

bb.s:                                             ; preds = %rb_alloc_tmp_buffer2.exit, %bb.p
  %i.bd = phi ptr [ %i.az, %bb.p ], [ %i.bc, %rb_alloc_tmp_buffer2.exit ] ; 10 uses
  %i.be = load i64, ptr @rb_cArray, align 8, !tbaa !15
  %i.bf = load i64, ptr %i.n, align 8, !tbaa !11  ; 2 uses
  %i.bg = and i64 %i.bf, 8192
  %.not.i.i30 = icmp eq i64 %i.bg, 0
  br i1 %.not.i.i30, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bh = lshr i64 %i.bf, 15
  %i.bi = and i64 %i.bh, 127
  br label %ary_make_shared_copy.exit

bb.u:                                             ; preds = %bb.s
  %i.bj = getelementptr i8, ptr %i.n, i64 16
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !14
  br label %ary_make_shared_copy.exit

ary_make_shared_copy.exit:                        ; preds = %bb.t, %bb.u
  %.0.i.i31 = phi i64 [ %i.bi, %bb.t ], [ %i.bk, %bb.u ]
  %i.bl = call fastcc noundef i64 @ary_make_partial(i64 noundef %0, i64 noundef %i.be, i64 noundef 0, i64 noundef %.0.i.i31)
  %i.bm = inttoptr i64 %i.bl to ptr               ; 4 uses
  %i.bn = getelementptr i8, ptr %i.bm, i64 8      ; 3 uses
  store i64 0, ptr %i.bn, align 8, !tbaa !15
  store i64 0, ptr %i.bd, align 8, !tbaa !15
  %i.bo = add nsw i64 %.0.i, -1                   ; 8 uses
  %i.bp = icmp samesign ugt i64 %.0.i, 1152921504606846975
end_hunk_1
