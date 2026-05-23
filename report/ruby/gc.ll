inline.NumInlined: 2138
inline.NumDeleted: 500
begin_hunk_0_@gc_sweep_plane:bb.a
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !227
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #47
  store i32 2097152, ptr %4, align 8, !tbaa !230
  store ptr %.0..0..0..0..0..0..0..0..i.i, ptr %i.j, align 8, !tbaa !232
  store ptr %i.ar, ptr %i.k, align 8, !tbaa !233
  store i64 %i.ba, ptr %i.l, align 8, !tbaa !234
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, i8 0, i64 24, i1 false)
  store i64 %.0, ptr %i.n, align 8, !tbaa !446
  store i64 36, ptr %i.o, align 8, !tbaa !235
  store i32 0, ptr %i.p, align 8, !tbaa !236
  call void @rb_exec_event_hooks(ptr noundef nonnull %4, ptr noundef %i.ay, i32 noundef 0) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #47
  br label %rb_gc_event_hook.exit

rb_gc_event_hook.exit:                            ; preds = %bb.f, %bb.g, %rb_ec_hooks.exit.i, %bb.h
  call fastcc void @rb_gc_obj_free_vm_weak_references(i64 noundef %.0)
  %i.bb = call fastcc zeroext i1 @rb_gc_obj_free(ptr noundef %0, i64 noundef %.0)
  br i1 %i.bb, label %bb.i, label %bb.j

bb.i:                                             ; preds = %rb_gc_event_hook.exit
  %i.bc = load ptr, ptr %i.aa, align 65536, !tbaa !113
  %i.bd = getelementptr i8, ptr %i.bc, i64 1320
  %i.be = shl nuw nsw i16 %i.ad, 1
  %i.bf = and i16 %i.be, 62
  %i.bg = zext nneg i16 %i.bf to i64
  %i.bh = shl nuw i64 3, %i.bg
  %i.bi = xor i64 %i.bh, -1
  %i.bj = udiv i16 %.lhs.trunc.i, 1280
  %.zext8.i = zext nneg i16 %i.bj to i64
  %i.bk = getelementptr [8 x i8], ptr %i.bd, i64 %.zext8.i ; 2 uses
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !59
  %i.bm = and i64 %i.bl, %i.bi
  store i64 %i.bm, ptr %i.bk, align 8, !tbaa !59
  store i64 0, ptr %i.v, align 8, !tbaa !432
  %i.bn = load ptr, ptr %i.h, align 8, !tbaa !433
  %i.bo = getelementptr i8, ptr %i.v, i64 8
  store ptr %i.bn, ptr %i.bo, align 8, !tbaa !196
  store ptr %i.v, ptr %i.h, align 8, !tbaa !433
  %i.bp = load i32, ptr %i.r, align 4, !tbaa !524
  %i.bq = add i32 %i.bp, 1
  store i32 %i.bq, ptr %i.r, align 4, !tbaa !524
  br label %bb.o

bb.j:                                             ; preds = %rb_gc_event_hook.exit
  %i.br = load i32, ptr %i.q, align 8, !tbaa !546
  %i.bs = add i32 %i.br, 1
  store i32 %i.bs, ptr %i.q, align 8, !tbaa !546
  br label %bb.o

bb.k:                                             ; preds = %bb.c
  %i.bt = load i16, ptr %i.g, align 4
  %i.bu = and i16 %i.bt, 64
  %.not36 = icmp eq i16 %i.bu, 0
  br i1 %.not36, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.133) #63
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.bv = load i32, ptr %i.f, align 8, !tbaa !525
  %i.bw = add i32 %i.bv, 1
  store i32 %i.bw, ptr %i.f, align 8, !tbaa !525
  %i.bx = and i64 %.0, -65536
  %i.by = inttoptr i64 %i.bx to ptr
  %i.bz = load ptr, ptr %i.by, align 65536, !tbaa !113
  %i.ca = getelementptr i8, ptr %i.bz, i64 1320
  %.lhs.trunc.i40 = trunc i64 %.0 to i16          ; 2 uses
  %i.cb = udiv i16 %.lhs.trunc.i40, 40
  %i.cc = shl nuw nsw i16 %i.cb, 1
  %i.cd = and i16 %i.cc, 62
  %i.ce = zext nneg i16 %i.cd to i64
  %i.cf = shl nuw i64 3, %i.ce
  %i.cg = xor i64 %i.cf, -1
  %i.ch = udiv i16 %.lhs.trunc.i40, 1280
  %.zext8.i41 = zext nneg i16 %i.ch to i64
  %i.ci = getelementptr [8 x i8], ptr %i.ca, i64 %.zext8.i41 ; 2 uses
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !59
  %i.ck = and i64 %i.cj, %i.cg
  store i64 %i.ck, ptr %i.ci, align 8, !tbaa !59
  store i64 0, ptr %i.v, align 8, !tbaa !432
  %i.cl = load ptr, ptr %i.h, align 8, !tbaa !433
  %i.cm = getelementptr i8, ptr %i.v, i64 8
  store ptr %i.cl, ptr %i.cm, align 8, !tbaa !196
  store ptr %i.v, ptr %i.h, align 8, !tbaa !433
  br label %bb.o

bb.n:                                             ; preds = %bb.c
  %i.cn = load i32, ptr %i.f, align 8, !tbaa !525
  %i.co = add i32 %i.cn, 1
  store i32 %i.co, ptr %i.f, align 8, !tbaa !525
  br label %bb.o

bb.o:                                             ; preds = %bb.c, %bb.m, %bb.n, %bb.j, %bb.i, %bb.b
  %i.cp = add i64 %.0, %i.d
  %i.cq = lshr i64 %.034, %i.t                    ; 2 uses
  %.not38 = icmp eq i64 %i.cq, 0
  br i1 %.not38, label %bb.p, label %bb.b, !llvm.loop !547

bb.p:                                             ; preds = %bb.o
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @rb_gc_obj_free_vm_weak_references(i64 noundef %0) unnamed_addr #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = icmp ne i64 %0, 0
  %i.c = and i64 %0, 7
  %i.d = icmp eq i64 %i.c, 0
  tail call void @llvm.assume(i1 %i.b)
  tail call void @llvm.assume(i1 %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #47
  %i.e = load ptr, ptr @id2ref_tbl, align 8, !tbaa !242
  %.not.i = icmp eq ptr %i.e, null
  %.pre27 = inttoptr i64 %0 to ptr                ; 8 uses
  br i1 %.not.i, label %rb_type.exit.i, label %bb.b, !prof !189

bb.b:                                             ; preds = %bb.a
  %i.f = load i64, ptr %.pre27, align 8, !tbaa !109 ; 3 uses
  %i.g = trunc i64 %i.f to i32
  %i.h = and i32 %i.g, 31
  switch i32 %i.h, label %rb_type.exit.i [
    i32 2, label %bb.c
    i32 3, label %bb.c
    i32 26, label %bb.d
    i32 1, label %bb.e
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.i = getelementptr i8, ptr %.pre27, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !415
  br label %thread-pre-split.i

bb.d:                                             ; preds = %bb.b
  %i.k = and i64 %i.f, 61471
  %.not16.i = icmp eq i64 %i.k, 53274
  br i1 %.not16.i, label %bb.e, label %rb_type.exit.i, !prof !190

bb.e:                                             ; preds = %bb.d, %bb.b
  %i.l = lshr i64 %i.f, 32
  %i.m = trunc nuw i64 %i.l to i32                ; 2 uses
  %i.n = and i32 %i.m, 67108864
  %.not17.i = icmp eq i32 %i.n, 0
  br i1 %.not17.i, label %rb_type.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = tail call fastcc i64 @object_id_get(i64 noundef %0, i32 noundef %i.m)
  br label %thread-pre-split.i

thread-pre-split.i:                               ; preds = %bb.f, %bb.c
  %.sink.i = phi i64 [ %i.o, %bb.f ], [ %i.j, %bb.c ] ; 2 uses
  store i64 %.sink.i, ptr %i.a, align 8, !tbaa !59
  %.not10.i = icmp eq i64 %.sink.i, 0
  br i1 %.not10.i, label %rb_type.exit.i, label %bb.g, !prof !548

bb.g:                                             ; preds = %thread-pre-split.i
  %i.p = load ptr, ptr @id2ref_tbl, align 8, !tbaa !242
  %i.q = call i32 @rb_st_delete(ptr noundef %i.p, ptr noundef nonnull %i.a, ptr noundef null) #47
  %.not11.i = icmp eq i32 %i.q, 0
  br i1 %.not11.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i, label %rb_type.exit.i

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.g
  %i.r = load i64, ptr %.pre27, align 8, !tbaa !109
  %i.s = and i64 %i.r, 31
  %i.t = icmp eq i64 %i.s, 26
  br i1 %i.t, label %rb_type.exit.i, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i

rbimpl_RB_TYPE_P_fastpath.exit.thread.i:          ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.u = load i64, ptr %i.a, align 8, !tbaa !59
  %i.v = call fastcc i64 @rb_num2ull_inline(i64 noundef %i.u)
  %i.w = call ptr @rb_obj_info(i64 noundef %0)
  call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.134, i64 noundef %i.v, ptr noundef nonnull %i.w) #63
  unreachable

rb_type.exit.i:                                   ; preds = %bb.g, %thread-pre-split.i, %bb.e, %bb.d, %bb.b, %bb.a, %rbimpl_RB_TYPE_P_fastpath.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #47
  %i.x = load i64, ptr %.pre27, align 8, !tbaa !109 ; 8 uses
  %i.y = trunc i64 %i.x to i32                    ; 7 uses
  %i.z = and i32 %i.y, 31
  switch i32 %i.z, label %rb_obj_gen_fields_p.exit [
    i32 0, label %rb_obj_gen_fields_p.exit.thread
    i32 1, label %rb_obj_gen_fields_p.exit.thread
    i32 2, label %rb_obj_gen_fields_p.exit.thread
    i32 3, label %rb_obj_gen_fields_p.exit.thread
    i32 26, label %rb_obj_gen_fields_p.exit.thread
  ]

rb_obj_gen_fields_p.exit:                         ; preds = %rb_type.exit.i
  %i.aa = and i64 %i.x, 578712547822141440
  %.not23 = icmp eq i64 %i.aa, 0
  br i1 %.not23, label %rb_obj_gen_fields_p.exit.thread, label %bb.h

bb.h:                                             ; preds = %rb_obj_gen_fields_p.exit
  call void @rb_free_generic_ivar(i64 noundef %0) #47
  %.pre = load i64, ptr %.pre27, align 8, !tbaa !109 ; 2 uses
  %.pre26 = trunc i64 %.pre to i32
  br label %rb_obj_gen_fields_p.exit.thread

rb_obj_gen_fields_p.exit.thread:                  ; preds = %rb_type.exit.i, %rb_type.exit.i, %rb_type.exit.i, %rb_type.exit.i, %rb_type.exit.i, %bb.h, %rb_obj_gen_fields_p.exit
  %.pre-phi = phi i32 [ %i.y, %rb_type.exit.i ], [ %i.y, %rb_type.exit.i ], [ %i.y, %rb_type.exit.i ], [ %i.y, %rb_type.exit.i ], [ %i.y, %rb_type.exit.i ], [ %.pre26, %bb.h ], [ %i.y, %rb_obj_gen_fields_p.exit ]
  %i.ab = phi i64 [ %i.x, %rb_type.exit.i ], [ %i.x, %rb_type.exit.i ], [ %i.x, %rb_type.exit.i ], [ %i.x, %rb_type.exit.i ], [ %i.x, %rb_type.exit.i ], [ %.pre, %bb.h ], [ %i.x, %rb_obj_gen_fields_p.exit ] ; 3 uses
  %i.ac = and i32 %.pre-phi, 31
  switch i32 %i.ac, label %bb.q [
    i32 5, label %bb.i
    i32 20, label %bb.k
    i32 26, label %bb.l
  ]

bb.i:                                             ; preds = %rb_obj_gen_fields_p.exit.thread
  %i.ad = and i64 %i.ab, 536870912
  %.not = icmp eq i64 %i.ad, 0
  br i1 %.not, label %bb.q, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @rb_gc_free_fstring(i64 noundef %0) #47
  br label %bb.q

bb.k:                                             ; preds = %rb_obj_gen_fields_p.exit.thread
  call void @rb_gc_free_dsymbol(i64 noundef %0) #47
  br label %bb.q

bb.l:                                             ; preds = %rb_obj_gen_fields_p.exit.thread
  %1 = trunc i64 %i.ab to i16
  %trunc = and i16 %1, -4096
  switch i16 %trunc, label %bb.q [
    i16 -20480, label %bb.m
    i16 -24576, label %bb.o
    i16 24576, label %bb.p
  ]

bb.m:                                             ; preds = %bb.l
  %i.ae = and i64 %i.ab, 524288
  %.not24 = icmp eq i64 %i.ae, 0
  br i1 %.not24, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @rb_vm_delete_cc_refinement(ptr noundef nonnull %.pre27) #47
  br label %bb.q

bb.o:                                             ; preds = %bb.l
  call void @rb_vm_ci_free(ptr noundef nonnull %.pre27) #47
  br label %bb.q

bb.p:                                             ; preds = %bb.l
  call void @rb_free_method_entry_vm_weak_references(ptr noundef nonnull %.pre27) #47
  br label %bb.q

bb.q:                                             ; preds = %bb.m, %bb.n, %rb_obj_gen_fields_p.exit.thread, %bb.o, %bb.p, %bb.l, %bb.i, %bb.j, %bb.k
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef zeroext i1 @rb_gc_obj_free(ptr noundef %0, i64 noundef %1) unnamed_addr #2 {
bb.a:
  %2 = alloca %struct.classext_foreach_args, align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #47
  %i.a = inttoptr i64 %1 to ptr                   ; 27 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !109  ; 9 uses
  %i.c = trunc i64 %i.b to i32
  %i.d = and i32 %i.c, 31                         ; 2 uses
  switch i32 %i.d, label %bb.aj [
    i32 17, label %bb.b
    i32 21, label %bb.b
    i32 18, label %bb.b
    i32 19, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.f
    i32 2, label %bb.f
    i32 5, label %bb.g
    i32 7, label %bb.h
    i32 8, label %bb.i
    i32 6, label %bb.j
    i32 12, label %bb.l
    i32 13, label %bb.w
    i32 11, label %bb.z
    i32 15, label %ruby_sized_xfree.exit
    i32 14, label %ruby_sized_xfree.exit
    i32 30, label %ruby_sized_xfree.exit
    i32 28, label %bb.ac
    i32 4, label %ruby_sized_xfree.exit
    i32 10, label %bb.ad
    i32 27, label %bb.ae
    i32 9, label %bb.af
    i32 20, label %ruby_sized_xfree.exit
    i32 26, label %bb.ai
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.135) #63
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = and i64 %i.b, 65536
  %.not52 = icmp eq i64 %i.e, 0
  br i1 %.not52, label %ruby_sized_xfree.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = icmp ne i64 %1, 0
  %i.g = and i64 %1, 7
  %i.h = icmp eq i64 %i.g, 0
  %.not86 = and i1 %i.f, %i.h
  %i.i = and i64 %i.b, 576460752303423488
  %i.j = icmp ne i64 %i.i, 0
  %or.cond = and i1 %.not86, %i.j
  %i.k = getelementptr i8, ptr %i.a, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !214  ; 2 uses
  br i1 %or.cond, label %bb.e, label %rb_shape_obj_too_complex_p.exit.thread

bb.e:                                             ; preds = %bb.d
  tail call void @rb_st_free_table(ptr noundef %i.l) #47
  br label %ruby_sized_xfree.exit

rb_shape_obj_too_complex_p.exit.thread:           ; preds = %bb.d
  tail call void @ruby_sized_xfree(ptr noundef %i.l, i64 noundef 0), !inline_history !322
  br label %ruby_sized_xfree.exit

bb.f:                                             ; preds = %bb.a, %bb.a
  tail call void @rb_zjit_klass_free(i64 noundef %1) #47
  store i64 %1, ptr %2, align 8, !tbaa !484
  call void @rb_class_classext_foreach(i64 noundef %1, ptr noundef nonnull @classext_free, ptr noundef nonnull %2) #47
  %i.m = load i64, ptr %i.a, align 8, !tbaa !109
  %i.n = and i64 %i.m, 65536
  %.not.i = icmp eq i64 %i.n, 0
  br i1 %.not.i, label %ruby_sized_xfree.exit, label %RCLASS_CLASSEXT_TBL.exit

RCLASS_CLASSEXT_TBL.exit:                         ; preds = %bb.f
  %i.o = getelementptr i8, ptr %i.a, i64 160
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !245  ; 2 uses
  %.not51 = icmp eq ptr %i.p, null
  br i1 %.not51, label %ruby_sized_xfree.exit, label %RCLASS_CLASSEXT_TBL.exit56

RCLASS_CLASSEXT_TBL.exit56:                       ; preds = %RCLASS_CLASSEXT_TBL.exit
  call void @rb_st_free_table(ptr noundef nonnull %i.p) #47
  br label %ruby_sized_xfree.exit

bb.g:                                             ; preds = %bb.a
  tail call void @rb_str_free(i64 noundef %1) #47
  br label %ruby_sized_xfree.exit

bb.h:                                             ; preds = %bb.a
  tail call void @rb_ary_free(i64 noundef %1) #47
  br label %ruby_sized_xfree.exit

bb.i:                                             ; preds = %bb.a
  tail call void @rb_hash_free(i64 noundef %1) #47
  br label %ruby_sized_xfree.exit

bb.j:                                             ; preds = %bb.a
  %i.q = getelementptr i8, ptr %i.a, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !256  ; 2 uses
  %.not50 = icmp eq ptr %i.r, null
  br i1 %.not50, label %ruby_sized_xfree.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @onig_free(ptr noundef nonnull %i.r) #47
  br label %ruby_sized_xfree.exit

bb.l:                                             ; preds = %bb.a
  %i.s = and i64 %i.b, 64
  %.not83 = icmp eq i64 %i.s, 0                   ; 2 uses
  br i1 %.not83, label %RTYPEDDATA_GET_DATA.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.t = getelementptr i8, ptr %i.a, i64 24
  %i.u = load i64, ptr %i.t, align 8, !tbaa !131  ; 2 uses
  %i.v = trunc i64 %i.u to i1
  %i.w = getelementptr i8, ptr %i.a, i64 32       ; 2 uses
  br i1 %i.v, label %RTYPEDDATA_GET_DATA.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !208
  br label %RTYPEDDATA_GET_DATA.exit

RTYPEDDATA_GET_DATA.exit:                         ; preds = %bb.n, %bb.m
  %i.y = phi ptr [ %i.w, %bb.m ], [ %i.x, %bb.n ] ; 2 uses
  %.not.i57 = icmp eq ptr %i.y, null
  br i1 %.not.i57, label %ruby_sized_xfree.exit, label %bb.o

RTYPEDDATA_GET_DATA.exit.thread:                  ; preds = %bb.l
  %i.z = getelementptr i8, ptr %i.a, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !201 ; 2 uses
  %.not.i5775 = icmp eq ptr %i.aa, null
  br i1 %.not.i5775, label %ruby_sized_xfree.exit, label %.thread

bb.o:                                             ; preds = %RTYPEDDATA_GET_DATA.exit
  %i.ab = and i64 %i.u, -2
  %i.ac = inttoptr i64 %i.ab to ptr               ; 2 uses
  %i.ad = getelementptr i8, ptr %i.ac, i64 64
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !205
  %i.af = getelementptr i8, ptr %i.ac, i64 16
  %i.ag = and i64 %i.ae, 1
  %i.ah = icmp eq i64 %i.ag, 0
  br label %bb.p

.thread:                                          ; preds = %RTYPEDDATA_GET_DATA.exit.thread
  %i.ai = getelementptr i8, ptr %i.a, i64 24
  br label %bb.p

bb.p:                                             ; preds = %.thread, %bb.o
  %i.aj = phi ptr [ %i.y, %bb.o ], [ %i.aa, %.thread ] ; 4 uses
  %.025.i = phi i1 [ %i.ah, %bb.o ], [ true, %.thread ]
  %.024.in.i = phi ptr [ %i.af, %bb.o ], [ %i.ai, %.thread ]
  %.024.i = load ptr, ptr %.024.in.i, align 8, !tbaa !362 ; 3 uses
  %magicptr.i = ptrtoint ptr %.024.i to i64
  switch i64 %magicptr.i, label %bb.t [
    i64 0, label %ruby_sized_xfree.exit
    i64 -1, label %bb.q
  ]

bb.q:                                             ; preds = %bb.p
  br i1 %.not83, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ak = getelementptr i8, ptr %i.a, i64 24
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !131
  %i.am = trunc i64 %i.al to i1
  br i1 %i.am, label %ruby_sized_xfree.exit, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  tail call void @ruby_xfree(ptr noundef nonnull %i.aj), !inline_history !549
  br label %ruby_sized_xfree.exit

bb.t:                                             ; preds = %bb.p
  br i1 %.025.i, label %rb_data_free.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void %.024.i(ptr noundef nonnull %i.aj) #47, !inline_history !549
  %i.an = getelementptr i8, ptr %i.a, i64 24
end_hunk_0
begin_hunk_1_@rb_raw_obj_info_buitin_type:bb.a

bb.aa:                                            ; preds = %bb.z
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !214
  br label %RSTRING_PTR.exit403

RSTRING_PTR.exit403:                              ; preds = %bb.z, %bb.aa
  %i.dr = phi ptr [ %i.dq, %bb.aa ], [ %i.dp, %bb.z ]
  %i.ds = tail call i32 (ptr, i64, ptr, ...) @ruby_snprintf(ptr noundef %i.dk, i64 noundef %i.dl, ptr noundef nonnull @.str.61, ptr noundef %i.dr) #47 ; 0 uses
  br label %.critedge

bb.ab:                                            ; preds = %bb.y
  %i.dt = add nsw i64 %3, 6
  %.not368 = icmp ult i64 %i.dt, %1
  br i1 %.not368, label %bb.ac, label %.critedge

bb.ac:                                            ; preds = %bb.ab
  %i.du = getelementptr i8, ptr %0, i64 %3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.du, ptr noundef nonnull align 1 dereferenceable(7) @.str.322, i64 noundef range(i64 1, 34359738361) 7, i1 noundef false) #47
  br label %.critedge

bb.ad:                                            ; preds = %bb.c
  %i.dv = getelementptr i8, ptr %i.f, i64 8
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !210
  %i.dx = tail call i64 @rb_class_path_cached(i64 noundef %i.dw) #47 ; 2 uses
  %i.dy = icmp eq i64 %i.dx, 4
  br i1 %i.dy, label %.critedge, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dz = getelementptr i8, ptr %0, i64 %3
  %i.ea = sub i64 %1, %3
  %i.eb = inttoptr i64 %i.dx to ptr               ; 2 uses
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !109
  %i.ed = and i64 %i.ec, 8192
  %.not.i405 = icmp eq i64 %i.ed, 0
  %i.ee = getelementptr i8, ptr %i.eb, i64 24     ; 2 uses
  br i1 %.not.i405, label %RSTRING_PTR.exit406, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !214
  br label %RSTRING_PTR.exit406

RSTRING_PTR.exit406:                              ; preds = %bb.ae, %bb.af
  %i.eg = phi ptr [ %i.ef, %bb.af ], [ %i.ee, %bb.ae ]
  %i.eh = tail call i32 (ptr, i64, ptr, ...) @ruby_snprintf(ptr noundef %i.dz, i64 noundef %i.ea, ptr noundef nonnull @.str.323, ptr noundef %i.eg) #47 ; 0 uses
  br label %.critedge

bb.ag:                                            ; preds = %bb.c
  %i.ei = and i64 %i.g, 65536
  %.not362 = icmp eq i64 %i.ei, 0
  br i1 %.not362, label %ROBJECT_FIELDS.exit, label %rb_shape_obj_too_complex_p.exit

rb_shape_obj_too_complex_p.exit:                  ; preds = %bb.ag
  %i.ej = and i64 %i.g, 576460752303423488
  %.not445 = icmp eq i64 %i.ej, 0
  br i1 %.not445, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %rb_shape_obj_too_complex_p.exit
  %i.ek = getelementptr i8, ptr %i.f, i64 16
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !214
  %i.em = tail call i64 @rb_st_table_size(ptr noundef %i.el) #47
  %i.en = getelementptr i8, ptr %0, i64 %3
  %i.eo = sub i64 %1, %3
  %i.ep = tail call i32 (ptr, i64, ptr, ...) @ruby_snprintf(ptr noundef %i.en, i64 noundef %i.eo, ptr noundef nonnull @.str.324, i64 noundef %i.em) #47 ; 0 uses
  br label %.critedge

bb.ai:                                            ; preds = %rb_shape_obj_too_complex_p.exit
  %i.eq = getelementptr i8, ptr %0, i64 %3
  %i.er = sub i64 %1, %3
  %i.es = lshr i64 %i.g, 32
  %i.et = and i64 %i.es, 524287
  %i.eu = load ptr, ptr @rb_shape_tree, align 8, !tbaa !268
  %i.ev = getelementptr [40 x i8], ptr %i.eu, i64 %i.et
  %i.ew = getelementptr i8, ptr %i.ev, i64 28
  %i.ex = load i16, ptr %i.ew, align 4, !tbaa !363
  %i.ey = zext i16 %i.ex to i32
  %i.ez = tail call fastcc i32 @ROBJECT_FIELDS_CAPACITY(i64 noundef %2)
  %i.fa = tail call i32 (ptr, i64, ptr, ...) @ruby_snprintf(ptr noundef %i.eq, i64 noundef %i.er, ptr noundef nonnull @.str.325, i32 noundef %i.ey, i32 noundef %i.ez) #47 ; 0 uses
  br label %.critedge

ROBJECT_FIELDS.exit:                              ; preds = %bb.ag
  %i.fb = getelementptr i8, ptr %0, i64 %3
  %i.fc = sub i64 %1, %3
  %i.fd = lshr i64 %i.g, 32
  %i.fe = and i64 %i.fd, 524287
  %i.ff = load ptr, ptr @rb_shape_tree, align 8, !tbaa !268
  %i.fg = getelementptr [40 x i8], ptr %i.ff, i64 %i.fe ; 3 uses
  %i.fh = getelementptr i8, ptr %i.fg, i64 28
  %i.fi = load i16, ptr %i.fh, align 4, !tbaa !363
  %i.fj = zext i16 %i.fi to i32
  %i.fk = and i64 %i.g, 126100789566373888
  %.not.i.i.i = icmp eq i64 %i.fk, 0
  br i1 %.not.i.i.i, label %RSHAPE_EMBEDDED_CAPACITY.exit.thread.i.i, label %RSHAPE_EMBEDDED_CAPACITY.exit.i.i

RSHAPE_EMBEDDED_CAPACITY.exit.thread.i.i:         ; preds = %ROBJECT_FIELDS.exit
  %i.fl = getelementptr i8, ptr %i.fg, i64 30
  %i.fm = load i16, ptr %i.fl, align 2, !tbaa !273
  br label %ROBJECT_FIELDS_CAPACITY.exit

RSHAPE_EMBEDDED_CAPACITY.exit.i.i:                ; preds = %ROBJECT_FIELDS.exit
  %i.fn = lshr i64 %i.g, 54
  %i.fo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @rb_shape_tree, i64 16), align 8, !tbaa !275
  %i.fp = and i64 %i.fn, 7
  %i.fq = add nuw nsw i64 %i.fp, 4294967295
  %i.fr = and i64 %i.fq, 4294967295
  %i.fs = getelementptr [2 x i8], ptr %i.fo, i64 %i.fr
  %i.ft = load i16, ptr %i.fs, align 2, !tbaa !276
  %i.fu = getelementptr i8, ptr %i.fg, i64 30
  %i.fv = load i16, ptr %i.fu, align 2, !tbaa !273
  %spec.select.i.i = tail call i16 @llvm.umax.i16(i16 %i.ft, i16 %i.fv)
  br label %ROBJECT_FIELDS_CAPACITY.exit

ROBJECT_FIELDS_CAPACITY.exit:                     ; preds = %RSHAPE_EMBEDDED_CAPACITY.exit.thread.i.i, %RSHAPE_EMBEDDED_CAPACITY.exit.i.i
  %.0.i.i = phi i16 [ %spec.select.i.i, %RSHAPE_EMBEDDED_CAPACITY.exit.i.i ], [ %i.fm, %RSHAPE_EMBEDDED_CAPACITY.exit.thread.i.i ]
  %i.fw = zext i16 %.0.i.i to i32
  %i.fx = getelementptr i8, ptr %i.f, i64 16
  %i.fy = tail call i32 (ptr, i64, ptr, ...) @ruby_snprintf(ptr noundef %i.fb, i64 noundef %i.fc, ptr noundef nonnull @.str.326, i32 noundef %i.fj, i32 noundef %i.fw, ptr noundef %i.fx) #47 ; 0 uses
  br label %.critedge

bb.aj:                                            ; preds = %bb.c
  %i.fz = tail call i64 @rb_obj_is_proc(i64 noundef %2) #47
  %.not355 = icmp eq i64 %i.fz, 0
  br i1 %.not355, label %vm_block_iseq.exit.thread, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ga = getelementptr i8, ptr %i.f, i64 32
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !208 ; 3 uses
  %.not356 = icmp eq ptr %i.gb, null
  br i1 %.not356, label %vm_block_iseq.exit.thread, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.gc = getelementptr i8, ptr %i.gb, i64 24
  %.val = load i32, ptr %i.gc, align 8, !tbaa !613
  %i.gd = icmp eq i32 %.val, 0
  br i1 %i.gd, label %vm_block_iseq.exit, label %vm_block_iseq.exit.thread

vm_block_iseq.exit:                               ; preds = %bb.al
  %i.ge = getelementptr i8, ptr %i.gb, i64 16
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !214 ; 2 uses
  %.not357 = icmp eq ptr %i.gf, null
  br i1 %.not357, label %vm_block_iseq.exit.thread, label %bb.am

bb.am:                                            ; preds = %vm_block_iseq.exit
  %i.gg = getelementptr i8, ptr %0, i64 %3
  %i.gh = sub i64 %1, %3
  tail call fastcc void @rb_raw_iseq_info(ptr noundef %i.gg, i64 noundef %i.gh, ptr noundef nonnull %i.gf)
  br label %.critedge

vm_block_iseq.exit.thread:                        ; preds = %vm_block_iseq.exit, %bb.al, %bb.ak, %bb.aj
  %i.gi = tail call zeroext i1 @rb_ractor_p(i64 noundef %2) #47
  br i1 %i.gi, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %vm_block_iseq.exit.thread
  %i.gj = getelementptr i8, ptr %i.f, i64 32
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !201 ; 2 uses
  %.not360 = icmp eq ptr %i.gk, null
  br i1 %.not360, label %.critedge, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.gl = getelementptr i8, ptr %0, i64 %3
  %i.gm = sub i64 %1, %3
  %i.gn = getelementptr i8, ptr %i.gk, i64 8
  %i.go = load i32, ptr %i.gn, align 8, !tbaa !615
  %i.gp = tail call i32 (ptr, i64, ptr, ...) @ruby_snprintf(ptr noundef %i.gl, i64 noundef %i.gm, ptr noundef nonnull @.str.327, i32 noundef %i.go) #47 ; 0 uses
  br label %.critedge

bb.ap:                                            ; preds = %vm_block_iseq.exit.thread
  %i.gq = load i64, ptr %i.f, align 8, !tbaa !109
  %i.gr = and i64 %i.gq, 64
  %.not.i410 = icmp eq i64 %i.gr, 0
  br i1 %.not.i410, label %.critedge, label %rb_objspace_data_type_name.exit

rb_objspace_data_type_name.exit:                  ; preds = %bb.ap
  %i.gs = getelementptr i8, ptr %i.f, i64 24
  %i.gt = load i64, ptr %i.gs, align 8, !tbaa !131
  %i.gu = and i64 %i.gt, -2
  %i.gv = inttoptr i64 %i.gu to ptr
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !133 ; 2 uses
  %.not358 = icmp eq ptr %i.gw, null
  br i1 %.not358, label %.critedge, label %bb.aq

bb.aq:                                            ; preds = %rb_objspace_data_type_name.exit
  %i.gx = getelementptr i8, ptr %0, i64 %3
  %i.gy = sub i64 %1, %3
  %i.gz = tail call i32 (ptr, i64, ptr, ...) @ruby_snprintf(ptr noundef %i.gx, i64 noundef %i.gy, ptr noundef nonnull @.str.61, ptr noundef nonnull %i.gw) #47 ; 0 uses
  br label %.critedge

bb.ar:                                            ; preds = %bb.c
  %i.ha = getelementptr i8, ptr %0, i64 %3
  %i.hb = sub i64 %1, %3
  %i.hc = lshr i32 %i.h, 12
  %i.hd = and i32 %i.hc, 15
  %i.he = tail call ptr @rb_imemo_name(i32 noundef %i.hd) #47
  %i.hf = tail call i32 (ptr, i64, ptr, ...) @ruby_snprintf(ptr noundef %i.ha, i64 noundef %i.hb, ptr noundef nonnull @.str.328, ptr noundef %i.he) #47
  %i.hg = sext i32 %i.hf to i64
  %i.hh = add nsw i64 %3, %i.hg                   ; 10 uses
  %.not = icmp ult i64 %i.hh, %1
  br i1 %.not, label %bb.as, label %.critedge

bb.as:                                            ; preds = %bb.ar
  %i.hi = load i64, ptr %i.f, align 8, !tbaa !109
  %4 = trunc i64 %i.hi to i16
  %trunc = and i16 %4, -4096
  switch i16 %trunc, label %.critedge [
    i16 24576, label %bb.at
    i16 28672, label %bb.ba
    i16 -24576, label %vm_ci_kwarg.exit
    i16 -20480, label %bb.bb
  ]

bb.at:                                            ; preds = %bb.as
  %i.hj = getelementptr i8, ptr %0, i64 %i.hh
  %i.hk = sub i64 %1, %i.hh
  %i.hl = getelementptr i8, ptr %i.f, i64 24
  %i.hm = load i64, ptr %i.hl, align 8, !tbaa !616
  %i.hn = tail call ptr @rb_id2name(i64 noundef %i.hm) #47
  %i.ho = load i64, ptr %i.f, align 8, !tbaa !619 ; 4 uses
  %i.hp = trunc i64 %i.ho to i32
  %i.hq = lshr i32 %i.hp, 16
  %i.hr = and i32 %i.hq, 3                        ; 2 uses
  %i.hs = icmp eq i32 %i.hr, 1
  %i.ht = icmp eq i32 %i.hr, 2
  %i.hu = select i1 %i.ht, ptr @.str.331, ptr @.str.332
  %i.hv = select i1 %i.hs, ptr @.str.330, ptr %i.hu
  %i.hw = and i64 %i.ho, 524288
  %.not346 = icmp eq i64 %i.hw, 0
  %i.hx = select i1 %.not346, ptr @.str.96, ptr @.str.333
  %i.hy = and i64 %i.ho, 1048576
  %.not347 = icmp eq i64 %i.hy, 0
  %i.hz = select i1 %.not347, ptr @.str.96, ptr @.str.334
  %i.ia = and i64 %i.ho, 2097152
  %.not348 = icmp eq i64 %i.ia, 0
  %i.ib = select i1 %.not348, ptr @.str.96, ptr @.str.335
  %i.ic = getelementptr i8, ptr %i.f, i64 16      ; 4 uses
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !620 ; 2 uses
  %.not349 = icmp eq ptr %i.id, null
  br i1 %.not349, label %.thread, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ie = load i8, ptr %i.id, align 8
  %i.if = and i8 %i.ie, 15
  %i.ig = zext nneg i8 %i.if to i32
  %i.ih = tail call ptr @rb_method_type_name(i32 noundef %i.ig) ; 2 uses
  %.pr = load ptr, ptr %i.ic, align 8, !tbaa !620 ; 2 uses
  %.not350 = icmp eq ptr %.pr, null
  br i1 %.not350, label %.thread, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ii = load i8, ptr %.pr, align 8
  %i.ij = lshr i8 %i.ii, 6
  %i.ik = and i8 %i.ij, 1
  %i.il = zext nneg i8 %i.ik to i32
  br label %.thread

.thread:                                          ; preds = %bb.at, %bb.au, %bb.av
  %i.im = phi ptr [ %i.ih, %bb.av ], [ %i.ih, %bb.au ], [ @.str.336, %bb.at ]
  %i.in = phi i32 [ %i.il, %bb.av ], [ -1, %bb.au ], [ -1, %bb.at ]
  %i.io = getelementptr i8, ptr %i.f, i64 32
  %i.ip = load i64, ptr %i.io, align 8, !tbaa !621
  %i.iq = inttoptr i64 %i.ip to ptr
  %i.ir = getelementptr i8, ptr %i.f, i64 8
  %i.is = load i64, ptr %i.ir, align 8, !tbaa !622
  %i.it = inttoptr i64 %i.is to ptr
  %i.iu = tail call i32 (ptr, i64, ptr, ...) @ruby_snprintf(ptr noundef %i.hj, i64 noundef %i.hk, ptr noundef nonnull @.str.329, ptr noundef %i.hn, ptr noundef nonnull %i.hv, ptr noundef nonnull %i.hx, ptr noundef nonnull %i.hz, ptr noundef nonnull %i.ib, ptr noundef nonnull %i.im, i32 noundef %i.in, ptr noundef %i.iq, ptr noundef %i.it) #47
  %i.iv = sext i32 %i.iu to i64
  %i.iw = add nsw i64 %i.hh, %i.iv                ; 5 uses
  %.not351 = icmp ult i64 %i.iw, %1
  br i1 %.not351, label %bb.aw, label %.critedge

bb.aw:                                            ; preds = %.thread
  %i.ix = load ptr, ptr %i.ic, align 8, !tbaa !620 ; 2 uses
  %.not352 = icmp eq ptr %i.ix, null
  br i1 %.not352, label %.critedge, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.iy = load i8, ptr %i.ix, align 8
  %i.iz = and i8 %i.iy, 15
  %cond3 = icmp eq i8 %i.iz, 0
  %i.ja = add nsw i64 %i.iw, 7
  %.not353 = icmp ult i64 %i.ja, %1
  %or.cond = select i1 %cond3, i1 %.not353, i1 false
  br i1 %or.cond, label %bb.ay, label %.critedge

bb.ay:                                            ; preds = %bb.ax
  %i.jb = getelementptr i8, ptr %0, i64 %i.iw     ; 3 uses
  store i64 16450229191125024, ptr %i.jb, align 1
  %i.jc = sub i64 %1, %i.iw
  %i.jd = load ptr, ptr %i.ic, align 8, !tbaa !620
  %i.je = getelementptr i8, ptr %i.jd, i64 8
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !214
  %i.jg = ptrtoint ptr %i.jf to i64
  %i.jh = tail call ptr @rb_raw_obj_info(ptr noundef nonnull %i.jb, i64 noundef %i.jc, i64 noundef %i.jg) ; 0 uses
  %i.ji = add nuw nsw i64 %i.iw, 1
  %.not354 = icmp ult i64 %i.ji, %1
  br i1 %.not354, label %bb.az, label %.critedge

bb.az:                                            ; preds = %bb.ay
  store i16 41, ptr %i.jb, align 1
  br label %.critedge

bb.ba:                                            ; preds = %bb.as
  %i.jj = getelementptr i8, ptr %0, i64 %i.hh
  %i.jk = sub i64 %1, %i.hh
  tail call fastcc void @rb_raw_iseq_info(ptr noundef %i.jj, i64 noundef %i.jk, ptr noundef nonnull %i.f)
  br label %.critedge

vm_ci_kwarg.exit:                                 ; preds = %bb.as
  %i.jl = getelementptr i8, ptr %0, i64 %i.hh
  %i.jm = sub i64 %1, %i.hh
  %i.jn = getelementptr i8, ptr %i.f, i64 16
  %i.jo = load i64, ptr %i.jn, align 8, !tbaa !623
  %i.jp = tail call ptr @rb_id2name(i64 noundef %i.jo) #47
  %i.jq = getelementptr i8, ptr %i.f, i64 24
  %i.jr = load i64, ptr %i.jq, align 8, !tbaa !626
  %i.js = trunc i64 %i.jr to i32
  %i.jt = getelementptr i8, ptr %i.f, i64 32
  %i.ju = load i64, ptr %i.jt, align 8, !tbaa !627
  %i.jv = trunc i64 %i.ju to i32
  %i.jw = getelementptr i8, ptr %i.f, i64 8
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !628
  %i.jy = icmp eq ptr %i.jx, null
  %i.jz = select i1 %i.jy, ptr @.str.336, ptr @.str.340
  %i.ka = tail call i32 (ptr, i64, ptr, ...) @ruby_snprintf(ptr noundef %i.jl, i64 noundef %i.jm, ptr noundef nonnull @.str.339, ptr noundef %i.jp, i32 noundef %i.js, i32 noundef %i.jv, ptr noundef nonnull %i.jz) #47 ; 0 uses
  br label %.critedge

bb.bb:                                            ; preds = %bb.as
  %i.kb = getelementptr i8, ptr %i.f, i64 8       ; 2 uses
  %.val383 = load i64, ptr %i.kb, align 8, !tbaa !629 ; 2 uses
  %.not443 = icmp eq i64 %.val383, 36
  br i1 %.not443, label %.thread438, label %bb.bc

.thread438:                                       ; preds = %bb.bb
  %i.kc = getelementptr i8, ptr %i.f, i64 16
  %.val384439 = load ptr, ptr %i.kc, align 8, !tbaa !632
  br label %RSTRING_PTR.exit423

bb.bc:                                            ; preds = %bb.bb
  %i.kd = tail call i64 @rb_class_path_cached(i64 noundef %.val383) #47 ; 2 uses
  %i.ke = getelementptr i8, ptr %i.f, i64 16
  %.val384 = load ptr, ptr %i.ke, align 8, !tbaa !632 ; 3 uses
  %i.kf = icmp eq i64 %i.kd, 4
  br i1 %i.kf, label %._crit_edge, label %bb.bd

._crit_edge:                                      ; preds = %bb.bc
  %.val382.pre = load i64, ptr %i.kb, align 8, !tbaa !629
  %i.kg = icmp eq i64 %.val382.pre, 36
  %i.kh = select i1 %i.kg, ptr @.str.343, ptr @.str.342
  br label %RSTRING_PTR.exit423

bb.bd:                                            ; preds = %bb.bc
  %i.ki = inttoptr i64 %i.kd to ptr               ; 2 uses
  %i.kj = load i64, ptr %i.ki, align 8, !tbaa !109
  %i.kk = and i64 %i.kj, 8192
  %.not.i422 = icmp eq i64 %i.kk, 0
  %i.kl = getelementptr i8, ptr %i.ki, i64 24     ; 2 uses
  br i1 %.not.i422, label %RSTRING_PTR.exit423, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !214
  br label %RSTRING_PTR.exit423

RSTRING_PTR.exit423:                              ; preds = %.thread438, %._crit_edge, %bb.be, %bb.bd
  %.val384440 = phi ptr [ %.val384, %bb.be ], [ %.val384, %bb.bd ], [ %.val384439, %.thread438 ], [ %.val384, %._crit_edge ] ; 4 uses
  %i.kn = phi ptr [ %i.km, %bb.be ], [ %i.kl, %bb.bd ], [ @.str.343, %.thread438 ], [ %i.kh, %._crit_edge ]
  %i.ko = getelementptr i8, ptr %0, i64 %i.hh
  %i.kp = sub i64 %1, %i.hh
  %.not341 = icmp eq ptr %.val384440, null
  br i1 %.not341, label %.thread442, label %bb.bf

bb.bf:                                            ; preds = %RSTRING_PTR.exit423
  %i.kq = getelementptr i8, ptr %.val384440, i64 24
  %i.kr = load i64, ptr %i.kq, align 8, !tbaa !633
  %i.ks = tail call ptr @rb_id2name(i64 noundef %i.kr) #47
  %i.kt = load i64, ptr %.val384440, align 8, !tbaa !635
  %i.ku = and i64 %i.kt, 2097152
  %.not342 = icmp eq i64 %i.ku, 0
  %i.kv = select i1 %.not342, ptr @.str.96, ptr @.str.344
  br label %.thread442

.thread442:                                       ; preds = %RSTRING_PTR.exit423, %bb.bf
  %i.kw = phi ptr [ %i.ks, %bb.bf ], [ @.str.343, %RSTRING_PTR.exit423 ]
  %i.kx = phi ptr [ %i.kv, %bb.bf ], [ @.str.96, %RSTRING_PTR.exit423 ]
  %i.ky = getelementptr i8, ptr %i.f, i64 24
  %.val385 = load ptr, ptr %i.ky, align 8, !tbaa !636
  %i.kz = tail call i32 (ptr, i64, ptr, ...) @ruby_snprintf(ptr noundef %i.ko, i64 noundef %i.kp, ptr noundef nonnull @.str.341, ptr noundef %i.kn, ptr noundef %i.kw, ptr noundef nonnull %i.kx, ptr noundef %.val384440, ptr noundef %.val385) #47 ; 0 uses
  br label %.critedge

.critedge:                                        ; preds = %bb.ap, %rb_objspace_data_type_name.exit, %bb.aq, %bb.an, %bb.ao, %rbimpl_RB_TYPE_P_fastpath.exit.thread, %RSTRING_PTR.exit398, %bb.am, %RSTRING_PTR.exit406, %RSTRING_PTR.exit403, %.thread442, %vm_ci_kwarg.exit, %ROBJECT_FIELDS_CAPACITY.exit, %bb.ai, %bb.ah, %bb.ad, %bb.ab, %bb.ac, %RHASH_SIZE.exit, %gc_location_internal.exit, %RSTRING_PTR.exit, %rb_array_const_ptr.exit, %rb_array_len.exit, %bb.f, %bb.h, %bb.k, %bb.m, %bb.o, %bb.ar, %bb.az, %bb.ax, %bb.aw, %bb.c, %bb.as, %bb.ba, %bb.g, %.thread, %bb.ay, %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc nonnull ptr @obj_type_name(i64 noundef %0) unnamed_addr #5 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %bb.b, label %rb_type.exit

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i64 @llvm.fshl.i64(i64 %0, i64 %0, i64 62) ; 3 uses
  %i.f = icmp ult i64 %i.e, 10
  %switch.maskindex = trunc i64 %i.e to i16
  %switch.shifted = lshr i16 547, %switch.maskindex
  %switch.lobit = trunc i16 %switch.shifted to i1
  %or.cond = select i1 %i.f, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %bb.c
end_hunk_1
