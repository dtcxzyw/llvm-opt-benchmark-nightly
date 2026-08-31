Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/gc?download=true
inline.NumInlined: 2138
inline.NumDeleted: 500
loop-unroll.NumCompletelyUnrolled: 43
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 49
begin_hunk_0_@gc_sweep_plane:bb.a
bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ap = load ptr, ptr %i.i, align 8, !tbaa !14
  store volatile ptr %i.ap, ptr %i.a, align 8, !tbaa !14
  %.0..0..0..0..0..0..0..0..i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !14 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.aq = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..i.i, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !224 ; 3 uses
  %.not.i = icmp eq ptr %i.ar, null
  br i1 %.not.i, label %rb_gc_event_hook.exit, label %rb_ec_hooks.exit.i

rb_ec_hooks.exit.i:                               ; preds = %bb.g
  %i.as = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..i.i, i64 48
  %.val.i = load ptr, ptr %i.as, align 8, !tbaa !16, !nonnull !29, !noundef !29
  %i.at = getelementptr i8, ptr %.val.i, i64 32
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !225 ; 2 uses
  %i.av = getelementptr i8, ptr %i.au, i64 1120
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !226
  %i.ax = and i32 %i.aw, 2097152
  %.not11.i = icmp eq i32 %i.ax, 0
  br i1 %.not11.i, label %rb_gc_event_hook.exit, label %bb.h, !prof !189

bb.h:                                             ; preds = %rb_ec_hooks.exit.i
  %i.ay = getelementptr i8, ptr %i.au, i64 1112
  %i.az = getelementptr i8, ptr %i.ar, i64 24
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !227
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #46
  store i32 2097152, ptr %4, align 8, !tbaa !230
  store ptr %.0..0..0..0..0..0..0..0..i.i, ptr %i.j, align 8, !tbaa !232
  store ptr %i.ar, ptr %i.k, align 8, !tbaa !233
  store i64 %i.ba, ptr %i.l, align 8, !tbaa !234
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, i8 0, i64 24, i1 false)
  store i64 %.0, ptr %i.n, align 8, !tbaa !446
  store i64 36, ptr %i.o, align 8, !tbaa !235
  store i32 0, ptr %i.p, align 8, !tbaa !236
  call void @rb_exec_event_hooks(ptr noundef nonnull %4, ptr noundef %i.ay, i32 noundef 0) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #46
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
  call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.133) #61
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
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
  %i.q = call i32 @rb_st_delete(ptr noundef %i.p, ptr noundef nonnull %i.a, ptr noundef null) #46
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
  call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.134, i64 noundef %i.v, ptr noundef nonnull %i.w) #61
  unreachable

rb_type.exit.i:                                   ; preds = %bb.a, %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.g, %thread-pre-split.i, %bb.e, %bb.d, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
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
  call void @rb_free_generic_ivar(i64 noundef %0) #46
  %.pre = load i64, ptr %.pre27, align 8, !tbaa !109 ; 2 uses
  %.pre26 = trunc i64 %.pre to i32
  br label %rb_obj_gen_fields_p.exit.thread

rb_obj_gen_fields_p.exit.thread:                  ; preds = %rb_type.exit.i, %rb_type.exit.i, %rb_type.exit.i, %rb_type.exit.i, %rb_type.exit.i, %bb.h, %rb_obj_gen_fields_p.exit
  %.pre-phi = phi i32 [ %i.y, %rb_type.exit.i ], [ %i.y, %rb_type.exit.i ], [ %i.y, %rb_type.exit.i ], [ %i.y, %rb_type.exit.i ], [ %i.y, %rb_type.exit.i ], [ %.pre26, %bb.h ], [ %i.y, %rb_obj_gen_fields_p.exit ] ; 2 uses
  %i.ab = phi i64 [ %i.x, %rb_type.exit.i ], [ %i.x, %rb_type.exit.i ], [ %i.x, %rb_type.exit.i ], [ %i.x, %rb_type.exit.i ], [ %i.x, %rb_type.exit.i ], [ %.pre, %bb.h ], [ %i.x, %rb_obj_gen_fields_p.exit ] ; 2 uses
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
  call void @rb_gc_free_fstring(i64 noundef %0) #46
  br label %bb.q

bb.k:                                             ; preds = %rb_obj_gen_fields_p.exit.thread
  call void @rb_gc_free_dsymbol(i64 noundef %0) #46
  br label %bb.q

bb.l:                                             ; preds = %rb_obj_gen_fields_p.exit.thread
  %i.ae = lshr i32 %.pre-phi, 12
  %i.af = and i32 %i.ae, 15
  switch i32 %i.af, label %bb.q [
    i32 11, label %bb.m
    i32 10, label %bb.o
    i32 6, label %bb.p
  ]

bb.m:                                             ; preds = %bb.l
  %i.ag = and i64 %i.ab, 524288
  %.not24 = icmp eq i64 %i.ag, 0
  br i1 %.not24, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @rb_vm_delete_cc_refinement(ptr noundef nonnull %.pre27) #46
  br label %bb.q

bb.o:                                             ; preds = %bb.l
  call void @rb_vm_ci_free(ptr noundef nonnull %.pre27) #46
  br label %bb.q

bb.p:                                             ; preds = %bb.l
  call void @rb_free_method_entry_vm_weak_references(ptr noundef nonnull %.pre27) #46
  br label %bb.q

bb.q:                                             ; preds = %bb.m, %bb.n, %rb_obj_gen_fields_p.exit.thread, %bb.o, %bb.p, %bb.l, %bb.i, %bb.j, %bb.k
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef zeroext i1 @rb_gc_obj_free(ptr nofree noundef captures(address) %0, i64 noundef %1) unnamed_addr #2 {
bb.a:
  %2 = alloca %struct.classext_foreach_args, align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #46
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
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.135) #61
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
  tail call void @rb_st_free_table(ptr noundef %i.l) #46
  br label %ruby_sized_xfree.exit

rb_shape_obj_too_complex_p.exit.thread:           ; preds = %bb.d
  tail call void @ruby_sized_xfree(ptr noundef %i.l, i64 noundef 0), !inline_history !322
  br label %ruby_sized_xfree.exit

bb.f:                                             ; preds = %bb.a, %bb.a
  tail call void @rb_zjit_klass_free(i64 noundef %1) #46
  store i64 %1, ptr %2, align 8, !tbaa !484
  call void @rb_class_classext_foreach(i64 noundef %1, ptr noundef nonnull @classext_free, ptr noundef nonnull %2) #46
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
  call void @rb_st_free_table(ptr noundef nonnull %i.p) #46
  br label %ruby_sized_xfree.exit

bb.g:                                             ; preds = %bb.a
  tail call void @rb_str_free(i64 noundef %1) #46
  br label %ruby_sized_xfree.exit

bb.h:                                             ; preds = %bb.a
  tail call void @rb_ary_free(i64 noundef %1) #46
  br label %ruby_sized_xfree.exit

bb.i:                                             ; preds = %bb.a
  tail call void @rb_hash_free(i64 noundef %1) #46
  br label %ruby_sized_xfree.exit

bb.j:                                             ; preds = %bb.a
  %i.q = getelementptr i8, ptr %i.a, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !256  ; 2 uses
  %.not50 = icmp eq ptr %i.r, null
  br i1 %.not50, label %ruby_sized_xfree.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @onig_free(ptr noundef nonnull %i.r) #46
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
end_hunk_0
