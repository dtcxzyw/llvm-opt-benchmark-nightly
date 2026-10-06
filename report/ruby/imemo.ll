Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/imemo?download=true
inline.NumInlined: 92
inline.NumDeleted: 51
begin_hunk_0_@rb_imemo_fields_new_complex_tbl:bb.a
  %i.h = load i64, ptr %i.f, align 8, !tbaa !22
  %i.i = or i64 %i.h, 65536
  store i64 %i.i, ptr %i.f, align 8, !tbaa !22
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
  %i.e = load i64, ptr %i.d, align 8, !tbaa !22   ; 6 uses
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
  %.0.i.i = load i64, ptr %.0.in.i.i, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.s = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !13
  store volatile ptr %i.t, ptr %i.c, align 8, !tbaa !13
  %.0..0..0..0..0..0..0..0..0..0..i.i.i = load volatile ptr, ptr %i.c, align 8, !tbaa !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.u = tail call i64 @rb_wb_protected_newobj_of(ptr noundef %.0..0..0..0..0..0..0..0..0..0..i.i.i, i64 noundef %.0.i.i, i64 noundef 53274, i32 noundef 0, i64 noundef 24) #15 ; 4 uses
  %i.v = inttoptr i64 %i.u to ptr                 ; 5 uses
  %i.w = getelementptr i8, ptr %i.v, i64 16
  store ptr %i.k, ptr %i.w, align 8, !tbaa !20
  %i.x = load i64, ptr %i.v, align 8, !tbaa !22
  %i.y = or i64 %i.x, 65536
  store i64 %i.y, ptr %i.v, align 8, !tbaa !22
  %i.z = tail call i32 @rb_st_foreach(ptr noundef nonnull %i.k, ptr noundef nonnull @imemo_fields_trigger_wb_i, i64 noundef %i.u) #15 ; 0 uses
  %i.aa = tail call ptr @rb_st_replace(ptr noundef nonnull %i.k, ptr noundef %.0.i) #15 ; 0 uses
  %i.ab = load i64, ptr %i.v, align 8, !tbaa !22
  %i.ac = and i64 %i.ab, 4294967295
  %i.ad = and i64 %i.e, -4294967296
  %i.ae = or disjoint i64 %i.ac, %i.ad
  store i64 %i.ae, ptr %i.v, align 8, !tbaa !22
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
  %.0.i.i28 = load i64, ptr %.0.in.i.i27, align 8, !tbaa !15 ; 2 uses
  %i.an = and i64 %i.e, 126100789566373888
  %.not.i.i = icmp eq i64 %i.an, 0
  br i1 %.not.i.i, label %RSHAPE_EMBEDDED_CAPACITY.exit.thread.i, label %RSHAPE_EMBEDDED_CAPACITY.exit.i

RSHAPE_EMBEDDED_CAPACITY.exit.thread.i:           ; preds = %rb_imemo_fields_owner.exit30
  %i.ao = and i64 %i.f, 524287
  %i.ap = load ptr, ptr @rb_shape_tree, align 8, !tbaa !27
  %i.aq = getelementptr [40 x i8], ptr %i.ap, i64 %i.ao
  %i.ar = getelementptr i8, ptr %i.aq, i64 30
  %i.as = load i16, ptr %i.ar, align 2, !tbaa !30
  br label %RSHAPE_CAPACITY.exit

RSHAPE_EMBEDDED_CAPACITY.exit.i:                  ; preds = %rb_imemo_fields_owner.exit30
  %i.at = lshr i64 %i.e, 54
  %i.au = load ptr, ptr getelementptr inbounds nuw (i8, ptr @rb_shape_tree, i64 16), align 8, !tbaa !31
  %i.av = and i64 %i.at, 7
  %i.aw = getelementptr [2 x i8], ptr %i.au, i64 %i.av
  %i.ax = getelementptr i8, ptr %i.aw, i64 -2
  %i.ay = load i16, ptr %i.ax, align 2, !tbaa !32
  %i.az = and i64 %i.f, 524287
  %i.ba = load ptr, ptr @rb_shape_tree, align 8, !tbaa !27
  %i.bb = getelementptr [40 x i8], ptr %i.ba, i64 %i.az
  %i.bc = getelementptr i8, ptr %i.bb, i64 30
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !30
  %spec.select.i = tail call i16 @llvm.umax.i16(i16 %i.ay, i16 %i.bd)
  br label %RSHAPE_CAPACITY.exit

RSHAPE_CAPACITY.exit:                             ; preds = %RSHAPE_EMBEDDED_CAPACITY.exit.thread.i, %RSHAPE_EMBEDDED_CAPACITY.exit.i
  %.0.i31 = phi i16 [ %spec.select.i, %RSHAPE_EMBEDDED_CAPACITY.exit.i ], [ %i.as, %RSHAPE_EMBEDDED_CAPACITY.exit.thread.i ]
  %i.be = zext i16 %.0.i31 to i64                 ; 2 uses
  %i.bf = shl nuw nsw i64 %i.be, 3
  %i.bg = add nuw nsw i64 %i.bf, 16               ; 2 uses
  %i.bh = tail call zeroext i1 @rb_gc_size_allocatable_p(i64 noundef %i.bg) #15
  %i.bi = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec) ; 2 uses
  br i1 %i.bh, label %bb.q, label %bb.r

bb.q:                                             ; preds = %RSHAPE_CAPACITY.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !13
  store volatile ptr %i.bj, ptr %i.b, align 8, !tbaa !13
  %.0..0..0..0..0..0..0..0..0..0..i.i.i33 = load volatile ptr, ptr %i.b, align 8, !tbaa !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.bk = tail call i64 @rb_wb_protected_newobj_of(ptr noundef %.0..0..0..0..0..0..0..0..0..0..i.i.i33, i64 noundef %.0.i.i28, i64 noundef 53274, i32 noundef 0, i64 noundef %i.bg) #15 ; 2 uses
  %.phi.trans.insert = inttoptr i64 %i.bk to ptr  ; 2 uses
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !22
  br label %imemo_fields_new.exit

bb.r:                                             ; preds = %RSHAPE_CAPACITY.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.bl = load ptr, ptr %i.bi, align 8, !tbaa !13
  store volatile ptr %i.bl, ptr %i.a, align 8, !tbaa !13
  %.0..0..0..0..0..0..0..0..0..0..i.i13.i = load volatile ptr, ptr %i.a, align 8, !tbaa !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bm = tail call i64 @rb_wb_protected_newobj_of(ptr noundef %.0..0..0..0..0..0..0..0..0..0..i.i13.i, i64 noundef %.0.i.i28, i64 noundef 53274, i32 noundef 0, i64 noundef 24) #15 ; 2 uses
  %i.bn = tail call noalias nonnull ptr @ruby_xmalloc2(i64 noundef %i.be, i64 noundef 8) #18
  %i.bo = inttoptr i64 %i.bm to ptr               ; 4 uses
  %i.bp = getelementptr i8, ptr %i.bo, i64 16
  store ptr %i.bn, ptr %i.bp, align 8, !tbaa !20
  %i.bq = load i64, ptr %i.bo, align 8, !tbaa !22
  %i.br = or i64 %i.bq, 65536                     ; 2 uses
  store i64 %i.br, ptr %i.bo, align 8, !tbaa !22
  br label %imemo_fields_new.exit

imemo_fields_new.exit:                            ; preds = %bb.q, %bb.r
  %.pre-phi = phi ptr [ %.phi.trans.insert, %bb.q ], [ %i.bo, %bb.r ] ; 2 uses
  %i.bs = phi i64 [ %.pre, %bb.q ], [ %i.br, %bb.r ] ; 2 uses
  %.0.i32 = phi i64 [ %i.bk, %bb.q ], [ %i.bm, %bb.r ] ; 4 uses
  %i.bt = and i64 %i.bs, 4294967295
  %i.bu = and i64 %i.e, -576460756598390784
  %i.bv = or disjoint i64 %i.bt, %i.bu
  store i64 %i.bv, ptr %.pre-phi, align 8, !tbaa !22
  %.not.i34 = icmp eq i64 %.0.i32, 0
  br i1 %.not.i34, label %rb_imemo_fields_ptr.exit, label %bb.s

bb.s:                                             ; preds = %imemo_fields_new.exit
  %i.bw = and i64 %i.bs, 65536
  %.not5.i = icmp eq i64 %i.bw, 0
  %i.bx = getelementptr i8, ptr %.pre-phi, i64 16 ; 2 uses
  br i1 %.not5.i, label %rb_imemo_fields_ptr.exit, label %bb.t, !prof !33

bb.t:                                             ; preds = %bb.s
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !20
  br label %rb_imemo_fields_ptr.exit

rb_imemo_fields_ptr.exit:                         ; preds = %imemo_fields_new.exit, %bb.s, %bb.t
  %.0.i35 = phi ptr [ %i.by, %bb.t ], [ null, %imemo_fields_new.exit ], [ %i.bx, %bb.s ] ; 2 uses
  %i.bz = and i64 %i.f, 524287
  %i.ca = load ptr, ptr @rb_shape_tree, align 8, !tbaa !27
  %i.cb = getelementptr [40 x i8], ptr %i.ca, i64 %i.bz
  %i.cc = getelementptr i8, ptr %i.cb, i64 28
  %i.cd = load i16, ptr %i.cc, align 4, !tbaa !34 ; 3 uses
  br i1 %i.h, label %rb_imemo_fields_ptr.exit39, label %bb.u

bb.u:                                             ; preds = %rb_imemo_fields_ptr.exit
  %i.ce = load i64, ptr %i.d, align 8, !tbaa !22
  %i.cf = and i64 %i.ce, 65536
  %.not5.i37 = icmp eq i64 %i.cf, 0
  %i.cg = getelementptr i8, ptr %i.d, i64 16      ; 2 uses
  br i1 %.not5.i37, label %rb_imemo_fields_ptr.exit39, label %bb.v, !prof !33

bb.v:                                             ; preds = %bb.u
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !20
  br label %rb_imemo_fields_ptr.exit39

rb_imemo_fields_ptr.exit39:                       ; preds = %rb_imemo_fields_ptr.exit, %bb.u, %bb.v
  %.0.i38 = phi ptr [ %i.ch, %bb.v ], [ null, %rb_imemo_fields_ptr.exit ], [ %i.cg, %bb.u ]
  %.not.i40 = icmp eq i16 %i.cd, 0
  br i1 %.not.i40, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %rb_imemo_fields_ptr.exit39
  %i.ci = zext i16 %i.cd to i64
  %i.cj = shl nuw nsw i64 %i.ci, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %.0.i35, ptr noundef nonnull readonly align 1 %.0.i38, i64 noundef range(i64 1, 524281) %i.cj, i1 noundef false) #15
  %wide.trip.count = zext i16 %i.cd to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %rb_obj_written.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %rb_obj_written.exit ] ; 2 uses
  %i.ck = getelementptr [8 x i8], ptr %.0.i35, i64 %indvars.iv
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !15 ; 3 uses
  %i.cm = icmp eq i64 %i.cl, 0
  %i.cn = and i64 %i.cl, 7
  %i.co = icmp ne i64 %i.cn, 0
  %i.cp = or i1 %i.cm, %i.co
  br i1 %i.cp, label %rb_obj_written.exit, label %bb.w

bb.w:                                             ; preds = %.lr.ph
  tail call void @rb_gc_writebarrier(i64 noundef %.0.i32, i64 noundef %i.cl) #15
  br label %rb_obj_written.exit

rb_obj_written.exit:                              ; preds = %.lr.ph, %bb.w
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !40

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
  %i.e = load i64, ptr %.pre, align 8, !tbaa !22  ; 2 uses
  %i.f = and i64 %i.e, 576460752303423488
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %rb_shape_obj_too_complex_p.exit.thread, label %bb.b

bb.b:                                             ; preds = %rb_shape_obj_too_complex_p.exit
  %i.g = and i64 %i.e, 576460756598390783
  br label %bb.c

rb_shape_obj_too_complex_p.exit.thread:           ; preds = %bb.a, %rb_shape_obj_too_complex_p.exit
  %i.h = load i64, ptr %.pre, align 8, !tbaa !22
  %i.i = and i64 %i.h, 4294967295
  br label %bb.c

bb.c:                                             ; preds = %rb_shape_obj_too_complex_p.exit.thread, %bb.b
  %storemerge = phi i64 [ %i.i, %rb_shape_obj_too_complex_p.exit.thread ], [ %i.g, %bb.b ]
  store i64 %storemerge, ptr %.pre, align 8, !tbaa !22
  %i.j = getelementptr i8, ptr %.pre, i64 8
  store i64 0, ptr %i.j, align 8, !tbaa !15
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_imemo_memsize(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !22   ; 6 uses
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
  %i.g = load i32, ptr %i.f, align 8, !tbaa !38
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
end_hunk_0
