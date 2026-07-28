inline.NumInlined: 92
inline.NumDeleted: 51
begin_hunk_0_@rb_imemo_fields_new:bb.a
}

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_imemo_fields_new_complex(i64 noundef %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = select i1 %2, i64 53530, i64 53274
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !11
  store volatile ptr %i.d, ptr %i.a, align 8, !tbaa !11
  %.0..0..0..0..0..0..0..0..0..0..i.i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = tail call i64 @rb_wb_protected_newobj_of(ptr noundef %.0..0..0..0..0..0..0..0..0..0..i.i.i, i64 noundef %0, i64 noundef %i.b, i32 noundef 0, i64 noundef 24) #15 ; 2 uses
  %i.f = tail call ptr @rb_st_init_numtable_with_size(i64 noundef %1) #15
  %i.g = inttoptr i64 %i.e to ptr                 ; 3 uses
  %i.h = getelementptr i8, ptr %i.g, i64 16
  store ptr %i.f, ptr %i.h, align 8, !tbaa !20
  %i.i = load i64, ptr %i.g, align 8, !tbaa !21
  %i.j = or i64 %i.i, 65536
  store i64 %i.j, ptr %i.g, align 8, !tbaa !21
  ret i64 %i.e
}

; Function Attrs: nounwind sspstrong uwtable
define hidden noundef i64 @rb_imemo_fields_new_complex_tbl(i64 noundef %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = select i1 %2, i64 53530, i64 53274
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !11
  store volatile ptr %i.d, ptr %i.a, align 8, !tbaa !11
  %.0..0..0..0..0..0..0..0..i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = tail call i64 @rb_wb_protected_newobj_of(ptr noundef %.0..0..0..0..0..0..0..0..i.i, i64 noundef %0, i64 noundef %i.b, i32 noundef 0, i64 noundef 24) #15 ; 3 uses
  %i.f = inttoptr i64 %i.e to ptr                 ; 3 uses
  %i.g = getelementptr i8, ptr %i.f, i64 16
  store ptr %1, ptr %i.g, align 8, !tbaa !20
  %i.h = load i64, ptr %i.f, align 8, !tbaa !21
  %i.i = or i64 %i.h, 65536
  store i64 %i.i, ptr %i.f, align 8, !tbaa !21
  %i.j = tail call i32 @rb_st_foreach(ptr noundef %1, ptr noundef nonnull @imemo_fields_trigger_wb_i, i64 noundef %i.e) #15 ; 0 uses
  ret i64 %i.e
}

declare i32 @rb_st_foreach(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @imemo_fields_trigger_wb_i(i64 %0, i64 noundef %1, i64 noundef %2) #0 {
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

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_imemo_fields_clone(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = inttoptr i64 %0 to ptr                   ; 6 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !21   ; 6 uses
  %i.f = lshr i64 %i.e, 32                        ; 3 uses
  %i.g = and i64 %i.e, 576460752303423488
  %.not = icmp eq i64 %i.g, 0
  %i.h = icmp eq i64 %0, 0                        ; 4 uses
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %i.h, label %rb_imemo_fields_complex_tbl.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr i8, ptr %i.d, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !20
  br label %rb_imemo_fields_complex_tbl.exit

rb_imemo_fields_complex_tbl.exit:                 ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.j, %bb.c ], [ null, %bb.b ]
  %i.k = tail call noalias nonnull dereferenceable(56) ptr @ruby_xcalloc(i64 noundef 1, i64 noundef 56) #18 ; 4 uses
  %i.l = and i64 %0, 7
  %i.m = icmp ne i64 %i.l, 0
  %i.n = or i1 %i.h, %i.m
  br i1 %i.n, label %bb.e, label %bb.d

bb.d:                                             ; preds = %rb_imemo_fields_complex_tbl.exit
  %i.o = getelementptr i8, ptr %i.d, i64 8
  br label %rb_imemo_fields_owner.exit

bb.e:                                             ; preds = %rb_imemo_fields_complex_tbl.exit
  switch i64 %0, label %bb.h [
    i64 0, label %rb_imemo_fields_owner.exit
    i64 4, label %bb.f
    i64 20, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  br label %rb_imemo_fields_owner.exit

bb.g:                                             ; preds = %bb.e
  br label %rb_imemo_fields_owner.exit

bb.h:                                             ; preds = %bb.e
  %i.p = trunc i64 %0 to i1
  br i1 %i.p, label %rb_imemo_fields_owner.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = and i64 %0, 254
  %i.r = icmp eq i64 %i.q, 12
  %spec.select.i.i = select i1 %i.r, ptr @rb_cSymbol, ptr @rb_cFloat
  br label %rb_imemo_fields_owner.exit

rb_imemo_fields_owner.exit:                       ; preds = %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i
  %.0.in.i.i = phi ptr [ %i.o, %bb.d ], [ @rb_cNilClass, %bb.f ], [ @rb_cTrueClass, %bb.g ], [ @rb_cFalseClass, %bb.e ], [ @rb_cInteger, %bb.h ], [ %spec.select.i.i, %bb.i ]
  %.0.i.i = load i64, ptr %.0.in.i.i, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.s = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !11
  store volatile ptr %i.t, ptr %i.c, align 8, !tbaa !11
  %.0..0..0..0..0..0..0..0..0..0..i.i.i = load volatile ptr, ptr %i.c, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.u = tail call i64 @rb_wb_protected_newobj_of(ptr noundef %.0..0..0..0..0..0..0..0..0..0..i.i.i, i64 noundef %.0.i.i, i64 noundef 53274, i32 noundef 0, i64 noundef 24) #15 ; 4 uses
  %i.v = inttoptr i64 %i.u to ptr                 ; 5 uses
  %i.w = getelementptr i8, ptr %i.v, i64 16
  store ptr %i.k, ptr %i.w, align 8, !tbaa !20
  %i.x = load i64, ptr %i.v, align 8, !tbaa !21
  %i.y = or i64 %i.x, 65536
  store i64 %i.y, ptr %i.v, align 8, !tbaa !21
  %i.z = tail call i32 @rb_st_foreach(ptr noundef nonnull %i.k, ptr noundef nonnull @imemo_fields_trigger_wb_i, i64 noundef %i.u) #15 ; 0 uses
  %i.aa = tail call ptr @rb_st_replace(ptr noundef nonnull %i.k, ptr noundef %.0.i) #15 ; 0 uses
  %i.ab = load i64, ptr %i.v, align 8, !tbaa !21
  %i.ac = and i64 %i.ab, 4294967295
  %i.ad = and i64 %i.e, -4294967296
  %i.ae = or disjoint i64 %i.ac, %i.ad
  store i64 %i.ae, ptr %i.v, align 8, !tbaa !21
  %i.af = tail call i32 @rb_st_foreach(ptr noundef nonnull %i.k, ptr noundef nonnull @imemo_fields_complex_wb_i, i64 noundef %i.u) #15 ; 0 uses
  br label %.loopexit

bb.j:                                             ; preds = %bb.a
  %i.ag = and i64 %0, 7
  %i.ah = icmp ne i64 %i.ag, 0
  %i.ai = or i1 %i.h, %i.ah
  br i1 %i.ai, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aj = getelementptr i8, ptr %i.d, i64 8
  br label %rb_imemo_fields_owner.exit30

bb.l:                                             ; preds = %bb.j
  switch i64 %0, label %bb.o [
    i64 0, label %rb_imemo_fields_owner.exit30
    i64 4, label %bb.m
    i64 20, label %bb.n
  ]

bb.m:                                             ; preds = %bb.l
  br label %rb_imemo_fields_owner.exit30

bb.n:                                             ; preds = %bb.l
  br label %rb_imemo_fields_owner.exit30

bb.o:                                             ; preds = %bb.l
  %i.ak = trunc i64 %0 to i1
  br i1 %i.ak, label %rb_imemo_fields_owner.exit30, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.al = and i64 %0, 254
  %i.am = icmp eq i64 %i.al, 12
  %spec.select.i.i29 = select i1 %i.am, ptr @rb_cSymbol, ptr @rb_cFloat
  br label %rb_imemo_fields_owner.exit30

rb_imemo_fields_owner.exit30:                     ; preds = %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p
  %.0.in.i.i27 = phi ptr [ %i.aj, %bb.k ], [ @rb_cNilClass, %bb.m ], [ @rb_cTrueClass, %bb.n ], [ @rb_cFalseClass, %bb.l ], [ @rb_cInteger, %bb.o ], [ %spec.select.i.i29, %bb.p ]
  %.0.i.i28 = load i64, ptr %.0.in.i.i27, align 8, !tbaa !14 ; 2 uses
  %i.an = and i64 %i.e, 126100789566373888
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
  %1 = getelementptr [2 x i8], ptr %i.au, i64 %i.av
  %2 = getelementptr i8, ptr %1, i64 -2
  %i.aw = load i16, ptr %2, align 2, !tbaa !32
  %i.ax = and i64 %i.f, 524287
  %i.ay = load ptr, ptr @rb_shape_tree, align 8, !tbaa !23
  %i.az = getelementptr [40 x i8], ptr %i.ay, i64 %i.ax
  %i.ba = getelementptr i8, ptr %i.az, i64 30
  %i.bb = load i16, ptr %i.ba, align 2, !tbaa !28
  %spec.select.i = tail call i16 @llvm.umax.i16(i16 %i.aw, i16 %i.bb)
  br label %RSHAPE_CAPACITY.exit

RSHAPE_CAPACITY.exit:                             ; preds = %RSHAPE_EMBEDDED_CAPACITY.exit.thread.i, %RSHAPE_EMBEDDED_CAPACITY.exit.i
  %.0.i31 = phi i16 [ %spec.select.i, %RSHAPE_EMBEDDED_CAPACITY.exit.i ], [ %i.as, %RSHAPE_EMBEDDED_CAPACITY.exit.thread.i ]
  %i.bc = zext i16 %.0.i31 to i64                 ; 2 uses
  %i.bd = shl nuw nsw i64 %i.bc, 3
  %i.be = add nuw nsw i64 %i.bd, 16               ; 2 uses
  %i.bf = tail call zeroext i1 @rb_gc_size_allocatable_p(i64 noundef %i.be) #15
  %i.bg = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec) ; 2 uses
  br i1 %i.bf, label %bb.q, label %bb.r

bb.q:                                             ; preds = %RSHAPE_CAPACITY.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !11
  store volatile ptr %i.bh, ptr %i.b, align 8, !tbaa !11
  %.0..0..0..0..0..0..0..0..0..0..i.i.i33 = load volatile ptr, ptr %i.b, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.bi = tail call i64 @rb_wb_protected_newobj_of(ptr noundef %.0..0..0..0..0..0..0..0..0..0..i.i.i33, i64 noundef %.0.i.i28, i64 noundef 53274, i32 noundef 0, i64 noundef %i.be) #15 ; 2 uses
  %.phi.trans.insert = inttoptr i64 %i.bi to ptr  ; 2 uses
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !21
  br label %imemo_fields_new.exit

bb.r:                                             ; preds = %RSHAPE_CAPACITY.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.bj = load ptr, ptr %i.bg, align 8, !tbaa !11
  store volatile ptr %i.bj, ptr %i.a, align 8, !tbaa !11
  %.0..0..0..0..0..0..0..0..0..0..i.i13.i = load volatile ptr, ptr %i.a, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bk = tail call i64 @rb_wb_protected_newobj_of(ptr noundef %.0..0..0..0..0..0..0..0..0..0..i.i13.i, i64 noundef %.0.i.i28, i64 noundef 53274, i32 noundef 0, i64 noundef 24) #15 ; 2 uses
  %i.bl = tail call noalias nonnull ptr @ruby_xmalloc2(i64 noundef %i.bc, i64 noundef 8) #18
  %i.bm = inttoptr i64 %i.bk to ptr               ; 4 uses
  %i.bn = getelementptr i8, ptr %i.bm, i64 16
  store ptr %i.bl, ptr %i.bn, align 8, !tbaa !20
  %i.bo = load i64, ptr %i.bm, align 8, !tbaa !21
  %i.bp = or i64 %i.bo, 65536                     ; 2 uses
  store i64 %i.bp, ptr %i.bm, align 8, !tbaa !21
  br label %imemo_fields_new.exit

imemo_fields_new.exit:                            ; preds = %bb.q, %bb.r
  %.pre-phi = phi ptr [ %.phi.trans.insert, %bb.q ], [ %i.bm, %bb.r ] ; 2 uses
  %i.bq = phi i64 [ %.pre, %bb.q ], [ %i.bp, %bb.r ] ; 2 uses
  %.0.i32 = phi i64 [ %i.bi, %bb.q ], [ %i.bk, %bb.r ] ; 4 uses
  %i.br = and i64 %i.bq, 4294967295
  %i.bs = and i64 %i.e, -576460756598390784
  %i.bt = or disjoint i64 %i.br, %i.bs
  store i64 %i.bt, ptr %.pre-phi, align 8, !tbaa !21
  %.not.i34 = icmp eq i64 %.0.i32, 0
  br i1 %.not.i34, label %rb_imemo_fields_ptr.exit, label %bb.s

bb.s:                                             ; preds = %imemo_fields_new.exit
  %i.bu = and i64 %i.bq, 65536
  %.not5.i = icmp eq i64 %i.bu, 0
  %i.bv = getelementptr i8, ptr %.pre-phi, i64 16 ; 2 uses
  br i1 %.not5.i, label %rb_imemo_fields_ptr.exit, label %bb.t, !prof !33

bb.t:                                             ; preds = %bb.s
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !20
  br label %rb_imemo_fields_ptr.exit

rb_imemo_fields_ptr.exit:                         ; preds = %imemo_fields_new.exit, %bb.s, %bb.t
  %.0.i35 = phi ptr [ %i.bw, %bb.t ], [ null, %imemo_fields_new.exit ], [ %i.bv, %bb.s ] ; 2 uses
  %i.bx = and i64 %i.f, 524287
  %i.by = load ptr, ptr @rb_shape_tree, align 8, !tbaa !23
  %i.bz = getelementptr [40 x i8], ptr %i.by, i64 %i.bx
  %i.ca = getelementptr i8, ptr %i.bz, i64 28
  %i.cb = load i16, ptr %i.ca, align 4, !tbaa !34 ; 3 uses
  br i1 %i.h, label %rb_imemo_fields_ptr.exit39, label %bb.u

bb.u:                                             ; preds = %rb_imemo_fields_ptr.exit
  %i.cc = load i64, ptr %i.d, align 8, !tbaa !21
  %i.cd = and i64 %i.cc, 65536
  %.not5.i37 = icmp eq i64 %i.cd, 0
  %i.ce = getelementptr i8, ptr %i.d, i64 16      ; 2 uses
  br i1 %.not5.i37, label %rb_imemo_fields_ptr.exit39, label %bb.v, !prof !33

bb.v:                                             ; preds = %bb.u
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !20
  br label %rb_imemo_fields_ptr.exit39

rb_imemo_fields_ptr.exit39:                       ; preds = %rb_imemo_fields_ptr.exit, %bb.u, %bb.v
  %.0.i38 = phi ptr [ %i.cf, %bb.v ], [ null, %rb_imemo_fields_ptr.exit ], [ %i.ce, %bb.u ]
  %.not.i40 = icmp eq i16 %i.cb, 0
  br i1 %.not.i40, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %rb_imemo_fields_ptr.exit39
  %i.cg = zext i16 %i.cb to i64
  %i.ch = shl nuw nsw i64 %i.cg, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %.0.i35, ptr noundef nonnull readonly align 1 %.0.i38, i64 noundef range(i64 1, 524281) %i.ch, i1 noundef false) #15
  %wide.trip.count = zext i16 %i.cb to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %rb_obj_written.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %rb_obj_written.exit ] ; 2 uses
  %i.ci = getelementptr [8 x i8], ptr %.0.i35, i64 %indvars.iv
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !14 ; 3 uses
  %i.ck = icmp eq i64 %i.cj, 0
  %i.cl = and i64 %i.cj, 7
  %i.cm = icmp ne i64 %i.cl, 0
  %i.cn = or i1 %i.ck, %i.cm
  br i1 %i.cn, label %rb_obj_written.exit, label %bb.w

bb.w:                                             ; preds = %.lr.ph
  tail call void @rb_gc_writebarrier(i64 noundef %.0.i32, i64 noundef %i.cj) #15
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
  %i.c = trunc i64 %i.b to i32
  %i.d = lshr i32 %i.c, 12
  %i.e = and i32 %i.d, 15
  switch i32 %i.e, label %bb.i [
    i32 11, label %bb.j
    i32 10, label %bb.j
    i32 12, label %bb.j
    i32 1, label %bb.j
    i32 0, label %bb.b
    i32 4, label %bb.j
    i32 7, label %bb.c
    i32 5, label %bb.j
    i32 6, label %bb.d
    i32 2, label %bb.j
    i32 3, label %bb.j
    i32 8, label %bb.e
    i32 13, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %i.a, i64 32
  %i.g = load i32, ptr %i.f, align 8, !tbaa !37
  %i.h = zext i32 %i.g to i64
  %i.i = shl nuw nsw i64 %i.h, 3
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.j = tail call i64 @rb_iseq_memsize(ptr noundef nonnull %i.a) #15
  br label %bb.j

bb.d:                                             ; preds = %bb.a
  br label %bb.j

bb.e:                                             ; preds = %bb.a
  %i.k = getelementptr i8, ptr %i.a, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !19
  %i.m = shl i64 %i.l, 3
  br label %bb.j

bb.f:                                             ; preds = %bb.a
  %i.n = and i64 %i.b, 65536
  %.not = icmp eq i64 %i.n, 0
  br i1 %.not, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = icmp ne i64 %0, 0
  %i.p = and i64 %0, 7
  %i.q = icmp eq i64 %i.p, 0
  %.not19 = and i1 %i.o, %i.q
  %i.r = and i64 %i.b, 576460752303423488
  %i.s = icmp ne i64 %i.r, 0
  %or.cond = and i1 %.not19, %i.s
  br i1 %or.cond, label %bb.h, label %rb_shape_obj_too_complex_p.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr i8, ptr %i.a, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !20
  %i.v = tail call i64 @rb_st_memsize(ptr noundef %i.u) #19
  br label %bb.j

rb_shape_obj_too_complex_p.exit.thread:           ; preds = %bb.g
  %i.w = lshr i64 %i.b, 32                        ; 2 uses
  %i.x = and i64 %i.b, 126100789566373888
  %.not.i.i = icmp eq i64 %i.x, 0
  br i1 %.not.i.i, label %RSHAPE_EMBEDDED_CAPACITY.exit.thread.i, label %RSHAPE_EMBEDDED_CAPACITY.exit.i

RSHAPE_EMBEDDED_CAPACITY.exit.thread.i:           ; preds = %rb_shape_obj_too_complex_p.exit.thread
  %i.y = and i64 %i.w, 524287
  %i.z = load ptr, ptr @rb_shape_tree, align 8, !tbaa !23
  %i.aa = getelementptr [40 x i8], ptr %i.z, i64 %i.y
  %i.ab = getelementptr i8, ptr %i.aa, i64 30
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !28
  br label %RSHAPE_CAPACITY.exit

RSHAPE_EMBEDDED_CAPACITY.exit.i:                  ; preds = %rb_shape_obj_too_complex_p.exit.thread
  %i.ad = lshr i64 %i.b, 54
  %i.ae = load ptr, ptr getelementptr inbounds nuw (i8, ptr @rb_shape_tree, i64 16), align 8, !tbaa !31
  %i.af = and i64 %i.ad, 7
  %1 = getelementptr [2 x i8], ptr %i.ae, i64 %i.af
  %2 = getelementptr i8, ptr %1, i64 -2
  %i.ag = load i16, ptr %2, align 2, !tbaa !32
  %i.ah = and i64 %i.w, 524287
  %i.ai = load ptr, ptr @rb_shape_tree, align 8, !tbaa !23
  %i.aj = getelementptr [40 x i8], ptr %i.ai, i64 %i.ah
  %i.ak = getelementptr i8, ptr %i.aj, i64 30
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !28
  %spec.select.i = tail call i16 @llvm.umax.i16(i16 %i.ag, i16 %i.al)
  br label %RSHAPE_CAPACITY.exit

RSHAPE_CAPACITY.exit:                             ; preds = %RSHAPE_EMBEDDED_CAPACITY.exit.thread.i, %RSHAPE_EMBEDDED_CAPACITY.exit.i
  %.0.i = phi i16 [ %spec.select.i, %RSHAPE_EMBEDDED_CAPACITY.exit.i ], [ %i.ac, %RSHAPE_EMBEDDED_CAPACITY.exit.thread.i ]
  %i.am = zext i16 %.0.i to i64
  %i.an = shl nuw nsw i64 %i.am, 3
  br label %bb.j

bb.i:                                             ; preds = %bb.a
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.13) #14
  unreachable

bb.j:                                             ; preds = %bb.f, %RSHAPE_CAPACITY.exit, %bb.h, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %.0 = phi i64 [ %i.i, %bb.b ], [ %i.j, %bb.c ], [ 8, %bb.d ], [ 0, %bb.a ], [ 0, %bb.a ], [ 0, %bb.a ], [ 0, %bb.a ], [ 0, %bb.a ], [ 0, %bb.a ], [ 0, %bb.a ], [ 0, %bb.a ], [ %i.m, %bb.e ], [ %i.v, %bb.h ], [ %i.an, %RSHAPE_CAPACITY.exit ], [ 0, %bb.f ]
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
  %i.i = trunc i64 %i.h to i32
  %i.j = lshr i32 %i.i, 12
  %i.k = and i32 %i.j, 15
  switch i32 %i.k, label %bb.bo [
    i32 11, label %bb.b
    i32 10, label %mark_and_move_method_entry.exit
    i32 12, label %bb.i
    i32 1, label %bb.l
    i32 0, label %bb.r
    i32 4, label %bb.ae
    i32 7, label %bb.ag
    i32 5, label %bb.ah
    i32 6, label %bb.aj
    i32 2, label %bb.be
    i32 3, label %bb.bf
    i32 8, label %bb.bg
    i32 13, label %bb.bi
  ]

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr i8, ptr %i.g, i64 8        ; 5 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !40
  %i.n = icmp eq i64 %i.m, 36
  br i1 %i.n, label %mark_and_move_method_entry.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %1, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr i8, ptr %i.g, i64 16       ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !43
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = tail call fastcc zeroext i1 @moved_or_living_object_strictly_p(i64 noundef %i.q)
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.s = load i64, ptr %i.l, align 8, !tbaa !40
  %i.t = tail call i64 @rb_gc_location(i64 noundef %i.s) #15
  store i64 %i.t, ptr %i.l, align 8, !tbaa !14
  %i.u = load ptr, ptr %i.o, align 8, !tbaa !43
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = tail call i64 @rb_gc_location(i64 noundef %i.v) #15
  %i.x = inttoptr i64 %i.w to ptr
  store ptr %i.x, ptr %i.o, align 8, !tbaa !44
  br label %mark_and_move_method_entry.exit

bb.f:                                             ; preds = %bb.d
  store i64 36, ptr %i.l, align 8, !tbaa !14
  br label %mark_and_move_method_entry.exit

bb.g:                                             ; preds = %bb.c
  tail call void @rb_gc_mark_weak(ptr noundef nonnull %i.l) #15
  %.val = load i64, ptr %i.g, align 8, !tbaa !45
  %i.y = and i64 %.val, 786432
  %or.cond.not = icmp eq i64 %i.y, 0
  br i1 %or.cond.not, label %mark_and_move_method_entry.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr i8, ptr %i.g, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !43
  %i.ab = ptrtoint ptr %i.aa to i64
  tail call void @rb_gc_mark_movable(i64 noundef %i.ab) #15
  br label %mark_and_move_method_entry.exit

bb.i:                                             ; preds = %bb.a
  %i.ac = and i64 %i.h, 65536
  %.not90 = icmp eq i64 %i.ac, 0
  br i1 %.not90, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ad = tail call zeroext i1 @rb_gc_checking_shareable() #15
  br i1 %i.ad, label %mark_and_move_method_entry.exit, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ae = getelementptr i8, ptr %i.g, i64 8
  tail call void @rb_gc_mark_and_move(ptr noundef %i.ae) #15
  br label %mark_and_move_method_entry.exit

bb.l:                                             ; preds = %bb.a
  %i.af = tail call zeroext i1 @rb_gc_checking_shareable() #15
  br i1 %i.af, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ag = getelementptr i8, ptr %i.g, i64 16
  tail call void @rb_gc_mark_and_move(ptr noundef %i.ag) #15
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #15
  %i.ah = getelementptr i8, ptr %i.g, i64 24      ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !46
  %i.aj = ptrtoint ptr %i.ai to i64
  store i64 %i.aj, ptr %i.e, align 8, !tbaa !14
  call void @rb_gc_mark_and_move(ptr noundef nonnull %i.e) #15
  %i.ak = load i64, ptr %i.e, align 8, !tbaa !14  ; 2 uses
  %i.al = load ptr, ptr %i.ah, align 8, !tbaa !46
  %i.am = ptrtoint ptr %i.al to i64
  %.not89 = icmp eq i64 %i.ak, %i.am
  br i1 %.not89, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.an = inttoptr i64 %i.ak to ptr
  store ptr %i.an, ptr %i.ah, align 8, !tbaa !46
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #15
  %i.ao = call zeroext i1 @rb_gc_checking_shareable() #15
  br i1 %i.ao, label %mark_and_move_method_entry.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ap = getelementptr i8, ptr %i.g, i64 8
  call void @rb_gc_mark_and_move(ptr noundef %i.ap) #15
  br label %mark_and_move_method_entry.exit

bb.r:                                             ; preds = %bb.a
  %i.aq = getelementptr i8, ptr %i.g, i64 16      ; 4 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !50
  %.not = icmp eq ptr %i.ar, null
  br i1 %.not, label %mark_and_move_method_entry.exit, label %.preheader, !prof !51

.preheader:                                       ; preds = %bb.r
  %i.as = getelementptr i8, ptr %i.g, i64 32      ; 2 uses
  %i.at = load i32, ptr %i.as, align 8, !tbaa !37
  %.not106 = icmp eq i32 %i.at, 0
  br i1 %.not106, label %._crit_edge, label %.lr.ph104

.lr.ph104:                                        ; preds = %.preheader
  %i.au = getelementptr i8, ptr %i.g, i64 24
  br label %bb.s

._crit_edge:                                      ; preds = %bb.s, %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #15
  %i.av = getelementptr i8, ptr %i.g, i64 8       ; 3 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !52
  %i.ax = ptrtoint ptr %i.aw to i64
  store i64 %i.ax, ptr %i.f, align 8, !tbaa !14
  call void @rb_gc_mark_and_move(ptr noundef nonnull %i.f) #15
  %i.ay = load i64, ptr %i.f, align 8, !tbaa !14  ; 2 uses
  %i.az = load ptr, ptr %i.av, align 8, !tbaa !52
  %i.ba = ptrtoint ptr %i.az to i64
  %.not85 = icmp eq i64 %i.ay, %i.ba
  br i1 %.not85, label %bb.u, label %bb.t

bb.s:                                             ; preds = %.lr.ph104, %bb.s
  %indvars.iv108 = phi i64 [ 0, %.lr.ph104 ], [ %indvars.iv.next109, %bb.s ] ; 2 uses
  %i.bb = load ptr, ptr %i.au, align 8, !tbaa !53
  %i.bc = getelementptr [8 x i8], ptr %i.bb, i64 %indvars.iv108
  tail call void @rb_gc_mark_and_move(ptr noundef %i.bc) #15
  %indvars.iv.next109 = add nuw nsw i64 %indvars.iv108, 1 ; 2 uses
  %i.bd = load i32, ptr %i.as, align 8, !tbaa !37
  %i.be = zext i32 %i.bd to i64
  %i.bf = icmp samesign ult i64 %indvars.iv.next109, %i.be
  br i1 %i.bf, label %bb.s, label %._crit_edge, !llvm.loop !54

bb.t:                                             ; preds = %._crit_edge
  %i.bg = inttoptr i64 %i.ay to ptr
  store ptr %i.bg, ptr %i.av, align 8, !tbaa !52
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge
end_hunk_0
