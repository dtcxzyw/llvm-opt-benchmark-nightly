inline.NumInlined: 92
inline.NumDeleted: 51
begin_hunk_0_@rb_imemo_fields_clone:bb.a
  %.not.i.i = icmp eq i64 %i.an, 0
  br i1 %.not.i.i, label %RSHAPE_EMBEDDED_CAPACITY.exit.thread.i, label %RSHAPE_EMBEDDED_CAPACITY.exit.i

RSHAPE_EMBEDDED_CAPACITY.exit.thread.i:           ; preds = %rb_imemo_fields_owner.exit30
  %i.ao = and i64 %i.f, 524287
  %i.ap = load ptr, ptr @rb_shape_tree, align 8, !tbaa !23
  %i.aq = getelementptr [40 x i8], ptr %i.ap, i64 %i.ao
  %i.ar = getelementptr i8, ptr %i.aq, i64 30
  %i.as = load i16, ptr %i.ar, align 2, !tbaa !28
  br label %RSHAPE_CAPACITY.exit

RSHAPE_EMBEDDED_CAPACITY.exit.i:                  ; preds = %rb_imemo_fields_owner.exit30
  %i.at = lshr i64 %i.e, 54
  %i.au = load ptr, ptr getelementptr inbounds nuw (i8, ptr @rb_shape_tree, i64 16), align 8, !tbaa !31
  %i.av = and i64 %i.at, 7
  %i.aw = add nuw nsw i64 %i.av, 4294967295
  %i.ax = and i64 %i.aw, 4294967295
  %i.ay = getelementptr [2 x i8], ptr %i.au, i64 %i.ax
  %i.az = load i16, ptr %i.ay, align 2, !tbaa !32
  %i.ba = and i64 %i.f, 524287
  %i.bb = load ptr, ptr @rb_shape_tree, align 8, !tbaa !23
  %i.bc = getelementptr [40 x i8], ptr %i.bb, i64 %i.ba
  %i.bd = getelementptr i8, ptr %i.bc, i64 30
  %i.be = load i16, ptr %i.bd, align 2, !tbaa !28
  %spec.select.i = tail call i16 @llvm.umax.i16(i16 %i.az, i16 %i.be)
  br label %RSHAPE_CAPACITY.exit

RSHAPE_CAPACITY.exit:                             ; preds = %RSHAPE_EMBEDDED_CAPACITY.exit.thread.i, %RSHAPE_EMBEDDED_CAPACITY.exit.i
  %.0.i31 = phi i16 [ %spec.select.i, %RSHAPE_EMBEDDED_CAPACITY.exit.i ], [ %i.as, %RSHAPE_EMBEDDED_CAPACITY.exit.thread.i ]
  %i.bf = zext i16 %.0.i31 to i64                 ; 2 uses
  %i.bg = shl nuw nsw i64 %i.bf, 3
  %i.bh = add nuw nsw i64 %i.bg, 16               ; 2 uses
  %i.bi = tail call zeroext i1 @rb_gc_size_allocatable_p(i64 noundef %i.bh) #15
  %i.bj = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec) ; 2 uses
  br i1 %i.bi, label %bb.q, label %bb.r

bb.q:                                             ; preds = %RSHAPE_CAPACITY.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !11
  store volatile ptr %i.bk, ptr %i.b, align 8, !tbaa !11
  %.0..0..0..0..0..0..0..0..0..0..i.i.i33 = load volatile ptr, ptr %i.b, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.bl = tail call i64 @rb_wb_protected_newobj_of(ptr noundef %.0..0..0..0..0..0..0..0..0..0..i.i.i33, i64 noundef %.0.i.i28, i64 noundef 53274, i32 noundef 0, i64 noundef %i.bh) #15 ; 2 uses
  %.phi.trans.insert = inttoptr i64 %i.bl to ptr  ; 2 uses
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !21
  br label %imemo_fields_new.exit

bb.r:                                             ; preds = %RSHAPE_CAPACITY.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.bm = load ptr, ptr %i.bj, align 8, !tbaa !11
  store volatile ptr %i.bm, ptr %i.a, align 8, !tbaa !11
  %.0..0..0..0..0..0..0..0..0..0..i.i13.i = load volatile ptr, ptr %i.a, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bn = tail call i64 @rb_wb_protected_newobj_of(ptr noundef %.0..0..0..0..0..0..0..0..0..0..i.i13.i, i64 noundef %.0.i.i28, i64 noundef 53274, i32 noundef 0, i64 noundef 24) #15 ; 2 uses
  %i.bo = tail call noalias nonnull ptr @ruby_xmalloc2(i64 noundef %i.bf, i64 noundef 8) #18
  %i.bp = inttoptr i64 %i.bn to ptr               ; 4 uses
  %i.bq = getelementptr i8, ptr %i.bp, i64 16
  store ptr %i.bo, ptr %i.bq, align 8, !tbaa !20
  %i.br = load i64, ptr %i.bp, align 8, !tbaa !21
  %i.bs = or i64 %i.br, 65536                     ; 2 uses
  store i64 %i.bs, ptr %i.bp, align 8, !tbaa !21
  br label %imemo_fields_new.exit

imemo_fields_new.exit:                            ; preds = %bb.q, %bb.r
  %.pre-phi = phi ptr [ %.phi.trans.insert, %bb.q ], [ %i.bp, %bb.r ] ; 2 uses
  %i.bt = phi i64 [ %.pre, %bb.q ], [ %i.bs, %bb.r ] ; 2 uses
  %.0.i32 = phi i64 [ %i.bl, %bb.q ], [ %i.bn, %bb.r ] ; 4 uses
  %i.bu = and i64 %i.bt, 4294967295
  %i.bv = and i64 %i.e, -576460756598390784
  %i.bw = or disjoint i64 %i.bu, %i.bv
  store i64 %i.bw, ptr %.pre-phi, align 8, !tbaa !21
  %.not.i34 = icmp eq i64 %.0.i32, 0
  br i1 %.not.i34, label %rb_imemo_fields_ptr.exit, label %bb.s

bb.s:                                             ; preds = %imemo_fields_new.exit
  %i.bx = and i64 %i.bt, 65536
  %.not5.i = icmp eq i64 %i.bx, 0
  %i.by = getelementptr i8, ptr %.pre-phi, i64 16 ; 2 uses
  br i1 %.not5.i, label %rb_imemo_fields_ptr.exit, label %bb.t, !prof !33

bb.t:                                             ; preds = %bb.s
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !20
  br label %rb_imemo_fields_ptr.exit

rb_imemo_fields_ptr.exit:                         ; preds = %imemo_fields_new.exit, %bb.s, %bb.t
  %.0.i35 = phi ptr [ %i.bz, %bb.t ], [ null, %imemo_fields_new.exit ], [ %i.by, %bb.s ] ; 2 uses
  %i.ca = and i64 %i.f, 524287
  %i.cb = load ptr, ptr @rb_shape_tree, align 8, !tbaa !23
  %i.cc = getelementptr [40 x i8], ptr %i.cb, i64 %i.ca
  %i.cd = getelementptr i8, ptr %i.cc, i64 28
  %i.ce = load i16, ptr %i.cd, align 4, !tbaa !34 ; 3 uses
  br i1 %i.h, label %rb_imemo_fields_ptr.exit39, label %bb.u

bb.u:                                             ; preds = %rb_imemo_fields_ptr.exit
  %i.cf = load i64, ptr %i.d, align 8, !tbaa !21
  %i.cg = and i64 %i.cf, 65536
  %.not5.i37 = icmp eq i64 %i.cg, 0
  %i.ch = getelementptr i8, ptr %i.d, i64 16      ; 2 uses
  br i1 %.not5.i37, label %rb_imemo_fields_ptr.exit39, label %bb.v, !prof !33

bb.v:                                             ; preds = %bb.u
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !20
  br label %rb_imemo_fields_ptr.exit39

rb_imemo_fields_ptr.exit39:                       ; preds = %rb_imemo_fields_ptr.exit, %bb.u, %bb.v
  %.0.i38 = phi ptr [ %i.ci, %bb.v ], [ null, %rb_imemo_fields_ptr.exit ], [ %i.ch, %bb.u ]
  %.not.i40 = icmp eq i16 %i.ce, 0
  br i1 %.not.i40, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %rb_imemo_fields_ptr.exit39
  %i.cj = zext i16 %i.ce to i64
  %i.ck = shl nuw nsw i64 %i.cj, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %.0.i35, ptr noundef nonnull readonly align 1 %.0.i38, i64 noundef range(i64 1, 524281) %i.ck, i1 noundef false) #15
  %wide.trip.count = zext i16 %i.ce to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %rb_obj_written.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %rb_obj_written.exit ] ; 2 uses
  %i.cl = getelementptr [8 x i8], ptr %.0.i35, i64 %indvars.iv
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !14 ; 3 uses
  %i.cn = icmp eq i64 %i.cm, 0
  %i.co = and i64 %i.cm, 7
  %i.cp = icmp ne i64 %i.co, 0
  %i.cq = or i1 %i.cn, %i.cp
  br i1 %i.cq, label %rb_obj_written.exit, label %bb.w

bb.w:                                             ; preds = %.lr.ph
  tail call void @rb_gc_writebarrier(i64 noundef %.0.i32, i64 noundef %i.cm) #15
  br label %rb_obj_written.exit

rb_obj_written.exit:                              ; preds = %.lr.ph, %bb.w
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !35

.loopexit:                                        ; preds = %rb_obj_written.exit, %rb_imemo_fields_ptr.exit39, %rb_imemo_fields_owner.exit
  %.026 = phi i64 [ %i.u, %rb_imemo_fields_owner.exit ], [ %.0.i32, %rb_imemo_fields_ptr.exit39 ], [ %.0.i32, %rb_obj_written.exit ]
  ret i64 %.026
}

; Function Attrs: allocsize(0,1)
declare noalias nonnull ptr @ruby_xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #8

declare ptr @rb_st_replace(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @imemo_fields_complex_wb_i(i64 %0, i64 noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  %i.b = and i64 %1, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %rb_obj_written.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @rb_gc_writebarrier(i64 noundef %2, i64 noundef %1) #15
  br label %rb_obj_written.exit

rb_obj_written.exit:                              ; preds = %bb.a, %bb.b
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @rb_imemo_fields_clear(i64 noundef %0) local_unnamed_addr #9 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  %.pre = inttoptr i64 %0 to ptr                  ; 4 uses
  br i1 %i.d, label %rb_shape_obj_too_complex_p.exit.thread, label %rb_shape_obj_too_complex_p.exit

rb_shape_obj_too_complex_p.exit:                  ; preds = %bb.a
  %i.e = load i64, ptr %.pre, align 8, !tbaa !21  ; 2 uses
  %i.f = and i64 %i.e, 576460752303423488
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %rb_shape_obj_too_complex_p.exit.thread, label %bb.b

bb.b:                                             ; preds = %rb_shape_obj_too_complex_p.exit
  %i.g = and i64 %i.e, 576460756598390783
  br label %bb.c

rb_shape_obj_too_complex_p.exit.thread:           ; preds = %bb.a, %rb_shape_obj_too_complex_p.exit
  %i.h = load i64, ptr %.pre, align 8, !tbaa !21
  %i.i = and i64 %i.h, 4294967295
  br label %bb.c

bb.c:                                             ; preds = %rb_shape_obj_too_complex_p.exit.thread, %bb.b
  %storemerge = phi i64 [ %i.i, %rb_shape_obj_too_complex_p.exit.thread ], [ %i.g, %bb.b ]
  store i64 %storemerge, ptr %.pre, align 8, !tbaa !21
  %i.j = getelementptr i8, ptr %.pre, i64 8
  store i64 0, ptr %i.j, align 8, !tbaa !14
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_imemo_memsize(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !21   ; 6 uses
  %1 = trunc i64 %i.b to i16
  %2 = lshr i16 %1, 12
  switch i16 %2, label %bb.i [
    i16 11, label %bb.j
    i16 10, label %bb.j
    i16 12, label %bb.j
    i16 1, label %bb.j
    i16 0, label %bb.b
    i16 4, label %bb.j
    i16 7, label %bb.c
    i16 5, label %bb.j
    i16 6, label %bb.d
    i16 2, label %bb.j
    i16 3, label %bb.j
    i16 8, label %bb.e
    i16 13, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %i.a, i64 32
  %i.d = load i32, ptr %i.c, align 8, !tbaa !37
  %i.e = zext i32 %i.d to i64
  %i.f = shl nuw nsw i64 %i.e, 3
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.g = tail call i64 @rb_iseq_memsize(ptr noundef nonnull %i.a) #15
  br label %bb.j

bb.d:                                             ; preds = %bb.a
  br label %bb.j

bb.e:                                             ; preds = %bb.a
  %i.h = getelementptr i8, ptr %i.a, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !19
  %i.j = shl i64 %i.i, 3
  br label %bb.j

bb.f:                                             ; preds = %bb.a
  %i.k = and i64 %i.b, 65536
  %.not = icmp eq i64 %i.k, 0
  br i1 %.not, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = icmp ne i64 %0, 0
  %i.m = and i64 %0, 7
  %i.n = icmp eq i64 %i.m, 0
  %.not19 = and i1 %i.l, %i.n
  %i.o = and i64 %i.b, 576460752303423488
  %i.p = icmp ne i64 %i.o, 0
  %or.cond = and i1 %.not19, %i.p
  br i1 %or.cond, label %bb.h, label %rb_shape_obj_too_complex_p.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr i8, ptr %i.a, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !20
  %i.s = tail call i64 @rb_st_memsize(ptr noundef %i.r) #19
  br label %bb.j

rb_shape_obj_too_complex_p.exit.thread:           ; preds = %bb.g
  %i.t = lshr i64 %i.b, 32                        ; 2 uses
  %i.u = and i64 %i.b, 126100789566373888
  %.not.i.i = icmp eq i64 %i.u, 0
  br i1 %.not.i.i, label %RSHAPE_EMBEDDED_CAPACITY.exit.thread.i, label %RSHAPE_EMBEDDED_CAPACITY.exit.i

RSHAPE_EMBEDDED_CAPACITY.exit.thread.i:           ; preds = %rb_shape_obj_too_complex_p.exit.thread
  %i.v = and i64 %i.t, 524287
  %i.w = load ptr, ptr @rb_shape_tree, align 8, !tbaa !23
  %i.x = getelementptr [40 x i8], ptr %i.w, i64 %i.v
  %i.y = getelementptr i8, ptr %i.x, i64 30
  %i.z = load i16, ptr %i.y, align 2, !tbaa !28
  br label %RSHAPE_CAPACITY.exit

RSHAPE_EMBEDDED_CAPACITY.exit.i:                  ; preds = %rb_shape_obj_too_complex_p.exit.thread
  %i.aa = lshr i64 %i.b, 54
  %i.ab = load ptr, ptr getelementptr inbounds nuw (i8, ptr @rb_shape_tree, i64 16), align 8, !tbaa !31
  %i.ac = and i64 %i.aa, 7
  %i.ad = add nuw nsw i64 %i.ac, 4294967295
  %i.ae = and i64 %i.ad, 4294967295
  %i.af = getelementptr [2 x i8], ptr %i.ab, i64 %i.ae
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !32
  %i.ah = and i64 %i.t, 524287
  %i.ai = load ptr, ptr @rb_shape_tree, align 8, !tbaa !23
  %i.aj = getelementptr [40 x i8], ptr %i.ai, i64 %i.ah
  %i.ak = getelementptr i8, ptr %i.aj, i64 30
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !28
  %spec.select.i = tail call i16 @llvm.umax.i16(i16 %i.ag, i16 %i.al)
  br label %RSHAPE_CAPACITY.exit

RSHAPE_CAPACITY.exit:                             ; preds = %RSHAPE_EMBEDDED_CAPACITY.exit.thread.i, %RSHAPE_EMBEDDED_CAPACITY.exit.i
  %.0.i = phi i16 [ %spec.select.i, %RSHAPE_EMBEDDED_CAPACITY.exit.i ], [ %i.z, %RSHAPE_EMBEDDED_CAPACITY.exit.thread.i ]
  %i.am = zext i16 %.0.i to i64
  %i.an = shl nuw nsw i64 %i.am, 3
  br label %bb.j

bb.i:                                             ; preds = %bb.a
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.13) #14
  unreachable

bb.j:                                             ; preds = %bb.f, %RSHAPE_CAPACITY.exit, %bb.h, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %.0 = phi i64 [ %i.f, %bb.b ], [ %i.g, %bb.c ], [ 8, %bb.d ], [ 0, %bb.a ], [ 0, %bb.a ], [ 0, %bb.a ], [ 0, %bb.a ], [ 0, %bb.a ], [ 0, %bb.a ], [ 0, %bb.a ], [ 0, %bb.a ], [ %i.j, %bb.e ], [ %i.s, %bb.h ], [ %i.an, %RSHAPE_CAPACITY.exit ], [ 0, %bb.f ]
  ret i64 %.0
}

declare i64 @rb_iseq_memsize(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i64 @rb_st_memsize(ptr noundef) local_unnamed_addr #10

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_imemo_mark_and_move(i64 noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = inttoptr i64 %0 to ptr                   ; 33 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !21   ; 2 uses
  %2 = trunc i64 %i.h to i16
  %3 = lshr i16 %2, 12
  switch i16 %3, label %bb.bo [
    i16 11, label %bb.b
    i16 10, label %mark_and_move_method_entry.exit
    i16 12, label %bb.i
    i16 1, label %bb.l
    i16 0, label %bb.r
    i16 4, label %bb.ae
    i16 7, label %bb.ag
    i16 5, label %bb.ah
    i16 6, label %bb.aj
    i16 2, label %bb.be
    i16 3, label %bb.bf
    i16 8, label %bb.bg
    i16 13, label %bb.bi
  ]

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr i8, ptr %i.g, i64 8        ; 5 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !40
  %i.k = icmp eq i64 %i.j, 36
  br i1 %i.k, label %mark_and_move_method_entry.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %1, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr i8, ptr %i.g, i64 16       ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !43
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = tail call fastcc zeroext i1 @moved_or_living_object_strictly_p(i64 noundef %i.n)
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.p = load i64, ptr %i.i, align 8, !tbaa !40
  %i.q = tail call i64 @rb_gc_location(i64 noundef %i.p) #15
  store i64 %i.q, ptr %i.i, align 8, !tbaa !14
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !43
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = tail call i64 @rb_gc_location(i64 noundef %i.s) #15
  %i.u = inttoptr i64 %i.t to ptr
  store ptr %i.u, ptr %i.l, align 8, !tbaa !44
  br label %mark_and_move_method_entry.exit

bb.f:                                             ; preds = %bb.d
  store i64 36, ptr %i.i, align 8, !tbaa !14
  br label %mark_and_move_method_entry.exit

bb.g:                                             ; preds = %bb.c
  tail call void @rb_gc_mark_weak(ptr noundef nonnull %i.i) #15
  %.val = load i64, ptr %i.g, align 8, !tbaa !45
  %i.v = and i64 %.val, 786432
  %or.cond.not = icmp eq i64 %i.v, 0
  br i1 %or.cond.not, label %mark_and_move_method_entry.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr i8, ptr %i.g, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !43
  %i.y = ptrtoint ptr %i.x to i64
  tail call void @rb_gc_mark_movable(i64 noundef %i.y) #15
  br label %mark_and_move_method_entry.exit

bb.i:                                             ; preds = %bb.a
  %i.z = and i64 %i.h, 65536
  %.not90 = icmp eq i64 %i.z, 0
  br i1 %.not90, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.aa = tail call zeroext i1 @rb_gc_checking_shareable() #15
  br i1 %i.aa, label %mark_and_move_method_entry.exit, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ab = getelementptr i8, ptr %i.g, i64 8
  tail call void @rb_gc_mark_and_move(ptr noundef %i.ab) #15
  br label %mark_and_move_method_entry.exit

bb.l:                                             ; preds = %bb.a
  %i.ac = tail call zeroext i1 @rb_gc_checking_shareable() #15
  br i1 %i.ac, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ad = getelementptr i8, ptr %i.g, i64 16
  tail call void @rb_gc_mark_and_move(ptr noundef %i.ad) #15
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #15
  %i.ae = getelementptr i8, ptr %i.g, i64 24      ; 3 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !46
  %i.ag = ptrtoint ptr %i.af to i64
  store i64 %i.ag, ptr %i.e, align 8, !tbaa !14
  call void @rb_gc_mark_and_move(ptr noundef nonnull %i.e) #15
  %i.ah = load i64, ptr %i.e, align 8, !tbaa !14  ; 2 uses
  %i.ai = load ptr, ptr %i.ae, align 8, !tbaa !46
  %i.aj = ptrtoint ptr %i.ai to i64
  %.not89 = icmp eq i64 %i.ah, %i.aj
  br i1 %.not89, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ak = inttoptr i64 %i.ah to ptr
  store ptr %i.ak, ptr %i.ae, align 8, !tbaa !46
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #15
  %i.al = call zeroext i1 @rb_gc_checking_shareable() #15
  br i1 %i.al, label %mark_and_move_method_entry.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.am = getelementptr i8, ptr %i.g, i64 8
  call void @rb_gc_mark_and_move(ptr noundef %i.am) #15
  br label %mark_and_move_method_entry.exit

bb.r:                                             ; preds = %bb.a
  %i.an = getelementptr i8, ptr %i.g, i64 16      ; 4 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !50
  %.not = icmp eq ptr %i.ao, null
  br i1 %.not, label %mark_and_move_method_entry.exit, label %.preheader, !prof !51

.preheader:                                       ; preds = %bb.r
  %i.ap = getelementptr i8, ptr %i.g, i64 32      ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !37
  %.not106 = icmp eq i32 %i.aq, 0
  br i1 %.not106, label %._crit_edge, label %.lr.ph104

.lr.ph104:                                        ; preds = %.preheader
  %i.ar = getelementptr i8, ptr %i.g, i64 24
  br label %bb.s

._crit_edge:                                      ; preds = %bb.s, %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #15
  %i.as = getelementptr i8, ptr %i.g, i64 8       ; 3 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !52
  %i.au = ptrtoint ptr %i.at to i64
  store i64 %i.au, ptr %i.f, align 8, !tbaa !14
  call void @rb_gc_mark_and_move(ptr noundef nonnull %i.f) #15
  %i.av = load i64, ptr %i.f, align 8, !tbaa !14  ; 2 uses
  %i.aw = load ptr, ptr %i.as, align 8, !tbaa !52
  %i.ax = ptrtoint ptr %i.aw to i64
  %.not85 = icmp eq i64 %i.av, %i.ax
  br i1 %.not85, label %bb.u, label %bb.t

bb.s:                                             ; preds = %.lr.ph104, %bb.s
  %indvars.iv108 = phi i64 [ 0, %.lr.ph104 ], [ %indvars.iv.next109, %bb.s ] ; 2 uses
  %i.ay = load ptr, ptr %i.ar, align 8, !tbaa !53
  %i.az = getelementptr [8 x i8], ptr %i.ay, i64 %indvars.iv108
  tail call void @rb_gc_mark_and_move(ptr noundef %i.az) #15
  %indvars.iv.next109 = add nuw nsw i64 %indvars.iv108, 1 ; 2 uses
  %i.ba = load i32, ptr %i.ap, align 8, !tbaa !37
  %i.bb = zext i32 %i.ba to i64
  %i.bc = icmp samesign ult i64 %indvars.iv.next109, %i.bb
  br i1 %i.bc, label %bb.s, label %._crit_edge, !llvm.loop !54

bb.t:                                             ; preds = %._crit_edge
  %i.bd = inttoptr i64 %i.av to ptr
  store ptr %i.bd, ptr %i.as, align 8, !tbaa !52
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #15
  %i.be = load ptr, ptr %i.an, align 8, !tbaa !50 ; 2 uses
  %.val93 = load i64, ptr %i.be, align 8, !tbaa !14 ; 2 uses
  %i.bf = and i64 %.val93, 2
  %.not86 = icmp eq i64 %i.bf, 0
  br i1 %.not86, label %bb.z, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bg = and i64 %.val93, 2147418113
  switch i64 %i.bg, label %bb.z [
    i64 1145307137, label %bb.w
    i64 858980353, label %bb.w
  ]

bb.w:                                             ; preds = %bb.v, %bb.v
  %i.bh = getelementptr i8, ptr %i.be, i64 -8
  %.val95 = load i64, ptr %i.bh, align 8, !tbaa !14
  %i.bi = and i64 %.val95, -4                     ; 2 uses
  %i.bj = inttoptr i64 %i.bi to ptr               ; 2 uses
  %.not87 = icmp eq i64 %i.bi, 0
  br i1 %.not87, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bk = getelementptr i8, ptr %i.bj, i64 128
  %i.bl = load i8, ptr %i.bk, align 8, !tbaa !55, !range !59, !noundef !60
  %i.bm = trunc nuw i8 %i.bl to i1
  br i1 %i.bm, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  call void @rb_gc_mark_and_move(ptr noundef nonnull %i.bj) #15
  br label %bb.z

bb.z:                                             ; preds = %bb.v, %bb.w, %bb.x, %bb.y, %bb.u
  %i.bn = load ptr, ptr %i.an, align 8, !tbaa !50 ; 3 uses
  br i1 %1, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.bo = getelementptr i8, ptr %i.bn, i64 8
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !14
  %i.bq = call i64 @rb_gc_location(i64 noundef %i.bp) #15
  %i.br = load ptr, ptr %i.an, align 8, !tbaa !50
  %i.bs = getelementptr i8, ptr %i.br, i64 8
  store i64 %i.bq, ptr %i.bs, align 8, !tbaa !14
  br label %mark_and_move_method_entry.exit

bb.ab:                                            ; preds = %bb.z
  %.val92 = load i64, ptr %i.bn, align 8, !tbaa !14 ; 2 uses
  %i.bt = and i64 %.val92, 8
  %.not88 = icmp eq i64 %i.bt, 0
  br i1 %.not88, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.bu = or disjoint i64 %.val92, 8
  store i64 %i.bu, ptr %i.bn, align 8, !tbaa !14
  br label %bb.ad

end_hunk_0
begin_hunk_1_@rb_imemo_mark_and_move:bb.a

bb.bb:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #15
  %i.dl = getelementptr i8, ptr %i.cf, i64 8      ; 3 uses
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !20
  %i.dn = ptrtoint ptr %i.dm to i64
  store i64 %i.dn, ptr %i.d, align 8, !tbaa !14
  call void @rb_gc_mark_and_move(ptr noundef nonnull %i.d) #15
  %i.do = load i64, ptr %i.d, align 8, !tbaa !14  ; 2 uses
  %i.dp = load ptr, ptr %i.dl, align 8, !tbaa !20
  %i.dq = ptrtoint ptr %i.dp to i64
  %.not27.i = icmp eq i64 %i.do, %i.dq
  br i1 %.not27.i, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.dr = inttoptr i64 %i.do to ptr
  store ptr %i.dr, ptr %i.dl, align 8, !tbaa !20
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #15
  br label %mark_and_move_method_entry.exit

bb.be:                                            ; preds = %bb.a
  %i.ds = getelementptr i8, ptr %i.g, i64 8
  tail call void @rb_gc_mark_and_move(ptr noundef %i.ds) #15
  %i.dt = getelementptr i8, ptr %i.g, i64 16
  tail call void @rb_gc_mark_and_move(ptr noundef %i.dt) #15
  %i.du = getelementptr i8, ptr %i.g, i64 24
  tail call void @rb_gc_mark_and_move(ptr noundef %i.du) #15
  %i.dv = getelementptr i8, ptr %i.g, i64 32
  tail call void @rb_gc_mark_and_move(ptr noundef %i.dv) #15
  br label %mark_and_move_method_entry.exit

bb.bf:                                            ; preds = %bb.a
  %i.dw = getelementptr i8, ptr %i.g, i64 16
  tail call void @rb_gc_mark_and_move(ptr noundef %i.dw) #15
  br label %mark_and_move_method_entry.exit

bb.bg:                                            ; preds = %bb.a
  br i1 %1, label %mark_and_move_method_entry.exit, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.dx = getelementptr i8, ptr %i.g, i64 8
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !16 ; 2 uses
  %i.dz = getelementptr i8, ptr %i.g, i64 16
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !19
  %i.eb = getelementptr [8 x i8], ptr %i.dy, i64 %i.ea
  tail call void @rb_gc_mark_locations(ptr noundef %i.dy, ptr noundef %i.eb) #15
  br label %mark_and_move_method_entry.exit

bb.bi:                                            ; preds = %bb.a
  %i.ec = getelementptr i8, ptr %i.g, i64 8
  tail call void @rb_gc_mark_and_move(ptr noundef %i.ec) #15
  %i.ed = tail call zeroext i1 @rb_gc_checking_shareable() #15
  br i1 %i.ed, label %mark_and_move_method_entry.exit, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.ee = icmp eq i64 %0, 0                       ; 2 uses
  %i.ef = and i64 %0, 7
  %i.eg = icmp ne i64 %i.ef, 0
  %i.eh = or i1 %i.ee, %i.eg
  %.pre111 = load i64, ptr %i.g, align 8, !tbaa !21 ; 3 uses
  br i1 %i.eh, label %bb.bm, label %rb_shape_obj_too_complex_p.exit

rb_shape_obj_too_complex_p.exit:                  ; preds = %bb.bj
  %i.ei = and i64 %.pre111, 576460752303423488
  %.not101 = icmp eq i64 %i.ei, 0
  br i1 %.not101, label %.thread, label %rb_imemo_fields_complex_tbl.exit

rb_imemo_fields_complex_tbl.exit:                 ; preds = %rb_shape_obj_too_complex_p.exit
  %i.ej = getelementptr i8, ptr %i.g, i64 16
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !20 ; 2 uses
  br i1 %1, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %rb_imemo_fields_complex_tbl.exit
  tail call void @rb_gc_ref_update_table_values_only(ptr noundef %i.ek) #15
  br label %mark_and_move_method_entry.exit

bb.bl:                                            ; preds = %rb_imemo_fields_complex_tbl.exit
  tail call void @rb_mark_tbl_no_pin(ptr noundef %i.ek) #15
  br label %mark_and_move_method_entry.exit

bb.bm:                                            ; preds = %bb.bj
  br i1 %i.ee, label %rb_imemo_fields_ptr.exit, label %.thread

.thread:                                          ; preds = %bb.bm, %rb_shape_obj_too_complex_p.exit
  %i.el = and i64 %.pre111, 65536
  %.not5.i = icmp eq i64 %i.el, 0
  %i.em = getelementptr i8, ptr %i.g, i64 16      ; 2 uses
  br i1 %.not5.i, label %rb_imemo_fields_ptr.exit, label %bb.bn, !prof !33

bb.bn:                                            ; preds = %.thread
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !20
  br label %rb_imemo_fields_ptr.exit

rb_imemo_fields_ptr.exit:                         ; preds = %bb.bm, %.thread, %bb.bn
  %.0.i99 = phi ptr [ %i.en, %bb.bn ], [ null, %bb.bm ], [ %i.em, %.thread ]
  %i.eo = lshr i64 %.pre111, 32
  %i.ep = and i64 %i.eo, 524287
  %i.eq = load ptr, ptr @rb_shape_tree, align 8, !tbaa !23
  %i.er = getelementptr [40 x i8], ptr %i.eq, i64 %i.ep
  %i.es = getelementptr i8, ptr %i.er, i64 28
  %i.et = load i16, ptr %i.es, align 4, !tbaa !34 ; 2 uses
  %.not105 = icmp eq i16 %i.et, 0
  br i1 %.not105, label %mark_and_move_method_entry.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %rb_imemo_fields_ptr.exit
  %wide.trip.count = zext i16 %i.et to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.eu = getelementptr [8 x i8], ptr %.0.i99, i64 %indvars.iv
  tail call void @rb_gc_mark_and_move(ptr noundef %i.eu) #15
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %mark_and_move_method_entry.exit, label %.lr.ph, !llvm.loop !68

bb.bo:                                            ; preds = %bb.a
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.13) #14
  unreachable

mark_and_move_method_entry.exit:                  ; preds = %.lr.ph, %rb_imemo_fields_ptr.exit, %bb.g, %bb.bd, %bb.ba, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.ak, %bb.aj, %bb.bk, %bb.bl, %bb.bg, %bb.bh, %bb.ah, %bb.ai, %bb.ae, %bb.af, %bb.r, %bb.ad, %bb.aa, %bb.p, %bb.q, %bb.j, %bb.k, %bb.b, %bb.h, %bb.e, %bb.f, %bb.bi, %bb.bf, %bb.be, %bb.ag, %bb.a
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i1 @moved_or_living_object_strictly_p(i64 noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @rb_objspace_garbage_object_p(i64 noundef %0) #15
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = inttoptr i64 %0 to ptr
  %i.g = load i64, ptr %i.f, align 8, !tbaa !21
  %i.h = and i64 %i.g, 31
  %i.i = icmp eq i64 %i.h, 30
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %i.j = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ %i.i, %bb.c ]
  ret i1 %i.j
}

declare i64 @rb_gc_location(i64 noundef) local_unnamed_addr #3

declare void @rb_gc_mark_weak(ptr noundef) local_unnamed_addr #3

declare void @rb_gc_mark_movable(i64 noundef) local_unnamed_addr #3

declare zeroext i1 @rb_gc_checking_shareable() local_unnamed_addr #3

declare void @rb_gc_mark_and_move(ptr noundef) local_unnamed_addr #3

declare ptr @rb_vm_env_prev_env(ptr noundef) local_unnamed_addr #3

declare void @rb_gc_mark_maybe(i64 noundef) local_unnamed_addr #3

declare void @rb_iseq_mark_and_move(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

declare void @rb_gc_mark_locations(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @rb_gc_ref_update_table_values_only(ptr noundef) local_unnamed_addr #3

declare void @rb_mark_tbl_no_pin(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_free_const_table(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @rb_id_table_foreach_values(ptr noundef %0, ptr noundef nonnull @free_const_entry_i, ptr noundef null) #15
  tail call void @rb_id_table_free(ptr noundef %0) #15
  ret void
}

declare void @rb_id_table_foreach_values(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @free_const_entry_i(i64 noundef %0, ptr readnone captures(none) %1) #0 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr
  tail call void @ruby_xfree(ptr noundef %i.a) #15
  ret i32 0
}

declare void @rb_id_table_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_imemo_free(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 7 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !21   ; 3 uses
  %1 = trunc i64 %i.b to i16
  %2 = lshr i16 %1, 12
  switch i16 %2, label %bb.l [
    i16 11, label %imemo_fields_free.exit
    i16 10, label %bb.b
    i16 12, label %imemo_fields_free.exit
    i16 1, label %imemo_fields_free.exit
    i16 0, label %bb.e
    i16 4, label %imemo_fields_free.exit
    i16 7, label %bb.f
    i16 5, label %imemo_fields_free.exit
    i16 6, label %bb.g
    i16 2, label %imemo_fields_free.exit
    i16 3, label %imemo_fields_free.exit
    i16 8, label %bb.h
    i16 13, label %bb.i
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %i.a, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !69   ; 3 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %imemo_fields_free.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr i8, ptr %i.d, i64 4        ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !7
  %i.g = add i32 %i.f, -1                         ; 2 uses
  store i32 %i.g, ptr %i.e, align 4, !tbaa !7
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.d, label %imemo_fields_free.exit

bb.d:                                             ; preds = %bb.c
  tail call void @ruby_xfree(ptr noundef nonnull %i.d) #15
  br label %imemo_fields_free.exit

bb.e:                                             ; preds = %bb.a
  %i.i = getelementptr i8, ptr %i.a, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !53
  tail call void @ruby_xfree(ptr noundef %i.j) #15
  br label %imemo_fields_free.exit

bb.f:                                             ; preds = %bb.a
  tail call void @rb_iseq_free(ptr noundef nonnull %i.a) #15
  br label %imemo_fields_free.exit

bb.g:                                             ; preds = %bb.a
  tail call void @rb_free_method_entry(ptr noundef nonnull %i.a) #15
  br label %imemo_fields_free.exit

bb.h:                                             ; preds = %bb.a
  %i.k = getelementptr i8, ptr %i.a, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !16
  tail call void @ruby_xfree(ptr noundef %i.l) #15
  br label %imemo_fields_free.exit

bb.i:                                             ; preds = %bb.a
  %i.m = and i64 %i.b, 65536
  %.not.i = icmp eq i64 %i.m, 0
  br i1 %.not.i, label %imemo_fields_free.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.n = and i64 %0, 7
  %i.o = icmp eq i64 %i.n, 0
  %i.p = and i64 %i.b, 576460752303423488
  %i.q = icmp ne i64 %i.p, 0
  %or.cond.i = and i1 %i.o, %i.q
  %i.r = getelementptr i8, ptr %i.a, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !20   ; 2 uses
  br i1 %or.cond.i, label %bb.k, label %rb_shape_obj_too_complex_p.exit.thread.i

bb.k:                                             ; preds = %bb.j
  tail call void @rb_st_free_table(ptr noundef %i.s) #15
  br label %imemo_fields_free.exit

rb_shape_obj_too_complex_p.exit.thread.i:         ; preds = %bb.j
  tail call void @ruby_xfree(ptr noundef %i.s) #15
  br label %imemo_fields_free.exit

bb.l:                                             ; preds = %bb.a
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.13) #14
  unreachable

imemo_fields_free.exit:                           ; preds = %rb_shape_obj_too_complex_p.exit.thread.i, %bb.k, %bb.i, %bb.b, %bb.d, %bb.c, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.h, %bb.g, %bb.f, %bb.e
  ret void
}

declare void @rb_iseq_free(ptr noundef) local_unnamed_addr #3

declare void @rb_free_method_entry(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #11

declare zeroext i1 @rb_gc_size_allocatable_p(i64 noundef) local_unnamed_addr #3

; Function Attrs: allocsize(0,1)
declare noalias nonnull ptr @ruby_xmalloc2(i64 noundef, i64 noundef) local_unnamed_addr #8

declare ptr @rb_st_init_numtable_with_size(i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

declare void @rb_gc_writebarrier(i64 noundef, i64 noundef) local_unnamed_addr #3

declare i32 @rb_objspace_garbage_object_p(i64 noundef) local_unnamed_addr #3

declare void @rb_gc_mark(i64 noundef) local_unnamed_addr #3

declare void @rb_st_free_table(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

attributes #0 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind sspstrong allocsize(1,2) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind sspstrong allocsize(1) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { cold noreturn nounwind }
attributes #15 = { nounwind }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { noreturn nounwind }
attributes #18 = { nounwind allocsize(0,1) }
attributes #19 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!12, !12, i64 0}
!12 = !{!"p1 _ZTS27rb_execution_context_struct", !13, i64 0}
!13 = !{!"any pointer", !9, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"long", !9, i64 0}
!16 = !{!17, !18, i64 8}
!17 = !{!"rb_imemo_tmpbuf_struct", !15, i64 0, !18, i64 8, !15, i64 16}
!18 = !{!"p1 long", !13, i64 0}
!19 = !{!17, !15, i64 16}
!20 = !{!9, !9, i64 0}
!21 = !{!22, !15, i64 0}
!22 = !{!"RBasic", !15, i64 0, !15, i64 8}
!23 = !{!24, !25, i64 0}
!24 = !{!"", !25, i64 0, !25, i64 8, !26, i64 16, !8, i64 24, !27, i64 32, !8, i64 40}
!25 = !{!"p1 _ZTS8rb_shape", !13, i64 0}
!26 = !{!"p1 short", !13, i64 0}
!27 = !{!"p1 _ZTS13redblack_node", !13, i64 0}
!28 = !{!29, !30, i64 30}
!29 = !{!"rb_shape", !15, i64 0, !15, i64 8, !27, i64 16, !8, i64 24, !30, i64 28, !30, i64 30, !9, i64 32}
!30 = !{!"short", !9, i64 0}
!31 = !{!24, !26, i64 16}
!32 = !{!30, !30, i64 0}
!33 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!34 = !{!29, !30, i64 28}
!35 = distinct !{!35, !36}
!36 = !{!"llvm.loop.mustprogress"}
!37 = !{!38, !8, i64 32}
!38 = !{!"", !15, i64 0, !39, i64 8, !18, i64 16, !18, i64 24, !8, i64 32}
!39 = !{!"p1 _ZTS14rb_iseq_struct", !13, i64 0}
!40 = !{!41, !15, i64 8}
!41 = !{!"rb_callcache", !15, i64 0, !15, i64 8, !42, i64 16, !13, i64 24, !9, i64 32}
!42 = !{!"p1 _ZTS31rb_callable_method_entry_struct", !13, i64 0}
!43 = !{!41, !42, i64 16}
!44 = !{!42, !42, i64 0}
!45 = !{!41, !15, i64 0}
!46 = !{!47, !48, i64 24}
!47 = !{!"rb_cref_struct", !15, i64 0, !15, i64 8, !15, i64 16, !48, i64 24, !49, i64 32}
!48 = !{!"p1 _ZTS14rb_cref_struct", !13, i64 0}
!49 = !{!"rb_scope_visi_struct", !8, i64 0, !8, i64 0}
!50 = !{!38, !18, i64 16}
!51 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!52 = !{!38, !39, i64 8}
!53 = !{!38, !18, i64 24}
!54 = distinct !{!54, !36}
!55 = !{!56, !58, i64 128}
!56 = !{!"rb_box_struct", !15, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !15, i64 32, !15, i64 40, !15, i64 48, !15, i64 56, !15, i64 64, !15, i64 72, !15, i64 80, !57, i64 88, !57, i64 96, !15, i64 104, !15, i64 112, !57, i64 120, !58, i64 128, !58, i64 129}
!57 = !{!"p1 _ZTS8st_table", !13, i64 0}
!58 = !{!"_Bool", !9, i64 0}
!59 = !{i8 0, i8 2}
!60 = !{}
!61 = !{!62, !13, i64 24}
!62 = !{!"vm_ifunc", !15, i64 0, !18, i64 8, !13, i64 16, !13, i64 24, !63, i64 32}
!63 = !{!"vm_ifunc_argc", !8, i64 0, !8, i64 4}
!64 = !{!65, !66, i64 16}
!65 = !{!"rb_method_entry_struct", !15, i64 0, !15, i64 8, !66, i64 16, !15, i64 24, !15, i64 32}
!66 = !{!"p1 _ZTS27rb_method_definition_struct", !13, i64 0}
!67 = !{!65, !15, i64 8}
!68 = distinct !{!68, !36}
!69 = !{!70, !71, i64 8}
!70 = !{!"rb_callinfo", !15, i64 0, !71, i64 8, !15, i64 16, !15, i64 24, !15, i64 32}
!71 = !{!"p1 _ZTS17rb_callinfo_kwarg", !13, i64 0}
end_hunk_1
