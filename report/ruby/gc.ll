Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/gc?download=true
inline.NumInlined: 2138
inline.NumDeleted: 500
loop-unroll.NumCompletelyUnrolled: 43
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 49
begin_hunk_0_@gc_sweep_plane:bb.a
bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.aq = load ptr, ptr %i.i, align 8, !tbaa !31
  store volatile ptr %i.aq, ptr %i.a, align 8, !tbaa !31
  %.0..0..0..0..0..0..0..0..i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !31 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ar = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..i.i, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !219 ; 3 uses
  %.not.i = icmp eq ptr %i.as, null
  br i1 %.not.i, label %rb_gc_event_hook.exit, label %rb_ec_hooks.exit.i

rb_ec_hooks.exit.i:                               ; preds = %bb.g
  %i.at = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..i.i, i64 48
  %.val.i = load ptr, ptr %i.at, align 8, !tbaa !44, !nonnull !45, !noundef !45
  %i.au = getelementptr i8, ptr %.val.i, i64 32
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !220 ; 2 uses
  %i.aw = getelementptr i8, ptr %i.av, i64 1120
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !221
  %i.ay = and i32 %i.ax, 2097152
  %.not11.i = icmp eq i32 %i.ay, 0
  br i1 %.not11.i, label %rb_gc_event_hook.exit, label %bb.h, !prof !190

bb.h:                                             ; preds = %rb_ec_hooks.exit.i
  %i.az = getelementptr i8, ptr %i.av, i64 1112
  %i.ba = getelementptr i8, ptr %i.as, i64 24
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !224
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #46
  store i32 2097152, ptr %4, align 8, !tbaa !226
  store ptr %.0..0..0..0..0..0..0..0..i.i, ptr %i.j, align 8, !tbaa !227
  store ptr %i.as, ptr %i.k, align 8, !tbaa !228
  store i64 %i.bb, ptr %i.l, align 8, !tbaa !229
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, i8 0, i64 24, i1 false)
  store i64 %.0, ptr %i.n, align 8, !tbaa !376
  store i64 36, ptr %i.o, align 8, !tbaa !230
  store i32 0, ptr %i.p, align 8, !tbaa !231
  call void @rb_exec_event_hooks(ptr noundef nonnull %4, ptr noundef %i.az, i32 noundef 0) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #46
  br label %rb_gc_event_hook.exit

rb_gc_event_hook.exit:                            ; preds = %bb.f, %bb.g, %rb_ec_hooks.exit.i, %bb.h
  call fastcc void @rb_gc_obj_free_vm_weak_references(i64 noundef %.0)
  %i.bc = call fastcc zeroext i1 @rb_gc_obj_free(ptr noundef %0, i64 noundef %.0)
  br i1 %i.bc, label %bb.i, label %bb.j

bb.i:                                             ; preds = %rb_gc_event_hook.exit
  %i.bd = load ptr, ptr %i.ab, align 65536, !tbaa !131
  %i.be = getelementptr i8, ptr %i.bd, i64 1320
  %i.bf = shl nuw nsw i16 %i.ae, 1
  %i.bg = and i16 %i.bf, 62
  %i.bh = zext nneg i16 %i.bg to i64
  %i.bi = shl nuw i64 3, %i.bh
  %i.bj = xor i64 %i.bi, -1
  %i.bk = udiv i16 %.lhs.trunc.i, 1280
  %.zext8.i = zext nneg i16 %i.bk to i64
  %i.bl = getelementptr [8 x i8], ptr %i.be, i64 %.zext8.i ; 2 uses
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !75
  %i.bn = and i64 %i.bm, %i.bj
  store i64 %i.bn, ptr %i.bl, align 8, !tbaa !75
  store i64 0, ptr %i.w, align 8, !tbaa !374
  %i.bo = load ptr, ptr %i.h, align 8, !tbaa !375
  %i.bp = getelementptr i8, ptr %i.w, i64 8
  store ptr %i.bo, ptr %i.bp, align 8, !tbaa !198
  store ptr %i.w, ptr %i.h, align 8, !tbaa !375
  %i.bq = load i32, ptr %i.r, align 4, !tbaa !409
  %i.br = add i32 %i.bq, 1
  store i32 %i.br, ptr %i.r, align 4, !tbaa !409
  br label %bb.o

bb.j:                                             ; preds = %rb_gc_event_hook.exit
  %i.bs = load i32, ptr %i.q, align 8, !tbaa !588
  %i.bt = add i32 %i.bs, 1
  store i32 %i.bt, ptr %i.q, align 8, !tbaa !588
  br label %bb.o

bb.k:                                             ; preds = %bb.c
  %i.bu = load i16, ptr %i.g, align 4
  %i.bv = and i16 %i.bu, 64
  %.not36 = icmp eq i16 %i.bv, 0
  br i1 %.not36, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.133) #61
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.bw = load i32, ptr %i.f, align 8, !tbaa !410
  %i.bx = add i32 %i.bw, 1
  store i32 %i.bx, ptr %i.f, align 8, !tbaa !410
  %i.by = and i64 %.0, -65536
  %i.bz = inttoptr i64 %i.by to ptr
  %i.ca = load ptr, ptr %i.bz, align 65536, !tbaa !131
  %i.cb = getelementptr i8, ptr %i.ca, i64 1320
  %.lhs.trunc.i40 = trunc i64 %.0 to i16          ; 2 uses
  %i.cc = udiv i16 %.lhs.trunc.i40, 40
  %i.cd = shl nuw nsw i16 %i.cc, 1
  %i.ce = and i16 %i.cd, 62
  %i.cf = zext nneg i16 %i.ce to i64
  %i.cg = shl nuw i64 3, %i.cf
  %i.ch = xor i64 %i.cg, -1
  %i.ci = udiv i16 %.lhs.trunc.i40, 1280
  %.zext8.i41 = zext nneg i16 %i.ci to i64
  %i.cj = getelementptr [8 x i8], ptr %i.cb, i64 %.zext8.i41 ; 2 uses
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !75
  %i.cl = and i64 %i.ck, %i.ch
  store i64 %i.cl, ptr %i.cj, align 8, !tbaa !75
  store i64 0, ptr %i.w, align 8, !tbaa !374
  %i.cm = load ptr, ptr %i.h, align 8, !tbaa !375
  %i.cn = getelementptr i8, ptr %i.w, i64 8
  store ptr %i.cm, ptr %i.cn, align 8, !tbaa !198
  store ptr %i.w, ptr %i.h, align 8, !tbaa !375
  br label %bb.o

bb.n:                                             ; preds = %bb.c
  %i.co = load i32, ptr %i.f, align 8, !tbaa !410
  %i.cp = add i32 %i.co, 1
  store i32 %i.cp, ptr %i.f, align 8, !tbaa !410
  br label %bb.o

bb.o:                                             ; preds = %bb.c, %bb.m, %bb.n, %bb.j, %bb.i, %bb.b
  %i.cq = add i64 %.0, %i.d
  %i.cr = lshr i64 %.034, %i.u                    ; 2 uses
  %.not38 = icmp eq i64 %i.cr, 0
  br i1 %.not38, label %bb.p, label %bb.b, !llvm.loop !587

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
  %i.e = load ptr, ptr @id2ref_tbl, align 8, !tbaa !232
  %.not.i = icmp eq ptr %i.e, null
  %.pre27 = inttoptr i64 %0 to ptr                ; 8 uses
  br i1 %.not.i, label %rb_type.exit.i, label %bb.b, !prof !190

bb.b:                                             ; preds = %bb.a
  %i.f = load i64, ptr %.pre27, align 8, !tbaa !126 ; 3 uses
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
  %i.j = load i64, ptr %i.i, align 8, !tbaa !362
  br label %thread-pre-split.i

bb.d:                                             ; preds = %bb.b
  %i.k = and i64 %i.f, 61471
  %.not16.i = icmp eq i64 %i.k, 53274
  br i1 %.not16.i, label %bb.e, label %rb_type.exit.i, !prof !191

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
  store i64 %.sink.i, ptr %i.a, align 8, !tbaa !75
  %.not10.i = icmp eq i64 %.sink.i, 0
  br i1 %.not10.i, label %rb_type.exit.i, label %bb.g, !prof !589

bb.g:                                             ; preds = %thread-pre-split.i
  %i.p = load ptr, ptr @id2ref_tbl, align 8, !tbaa !232
  %i.q = call i32 @rb_st_delete(ptr noundef %i.p, ptr noundef nonnull %i.a, ptr noundef null) #46
  %.not11.i = icmp eq i32 %i.q, 0
  br i1 %.not11.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i, label %rb_type.exit.i

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.g
  %i.r = load i64, ptr %.pre27, align 8, !tbaa !126
  %i.s = and i64 %i.r, 31
  %i.t = icmp eq i64 %i.s, 26
  br i1 %i.t, label %rb_type.exit.i, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i

rbimpl_RB_TYPE_P_fastpath.exit.thread.i:          ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.u = load i64, ptr %i.a, align 8, !tbaa !75
  %i.v = call fastcc i64 @rb_num2ull_inline(i64 noundef %i.u)
  %i.w = call ptr @rb_obj_info(i64 noundef %0)
  call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.134, i64 noundef %i.v, ptr noundef nonnull %i.w) #61
  unreachable

rb_type.exit.i:                                   ; preds = %bb.g, %thread-pre-split.i, %bb.e, %bb.d, %bb.b, %bb.a, %rbimpl_RB_TYPE_P_fastpath.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  %i.x = load i64, ptr %.pre27, align 8, !tbaa !126 ; 8 uses
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
  %.pre = load i64, ptr %.pre27, align 8, !tbaa !126 ; 2 uses
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
  %i.b = load i64, ptr %i.a, align 8, !tbaa !126  ; 9 uses
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
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !212  ; 2 uses
  br i1 %or.cond, label %bb.e, label %rb_shape_obj_too_complex_p.exit.thread

bb.e:                                             ; preds = %bb.d
  tail call void @rb_st_free_table(ptr noundef %i.l) #46
  br label %ruby_sized_xfree.exit

rb_shape_obj_too_complex_p.exit.thread:           ; preds = %bb.d
  tail call void @ruby_sized_xfree(ptr noundef %i.l, i64 noundef 0), !inline_history !285
  br label %ruby_sized_xfree.exit

bb.f:                                             ; preds = %bb.a, %bb.a
  tail call void @rb_zjit_klass_free(i64 noundef %1) #46
  store i64 %1, ptr %2, align 8, !tbaa !399
  call void @rb_class_classext_foreach(i64 noundef %1, ptr noundef nonnull @classext_free, ptr noundef nonnull %2) #46
  %i.m = load i64, ptr %i.a, align 8, !tbaa !126
  %i.n = and i64 %i.m, 65536
  %.not.i = icmp eq i64 %i.n, 0
  br i1 %.not.i, label %ruby_sized_xfree.exit, label %RCLASS_CLASSEXT_TBL.exit

RCLASS_CLASSEXT_TBL.exit:                         ; preds = %bb.f
  %i.o = getelementptr i8, ptr %i.a, i64 160
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !239  ; 2 uses
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
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !246  ; 2 uses
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
  %i.u = load i64, ptr %i.t, align 8, !tbaa !144  ; 2 uses
  %i.v = trunc i64 %i.u to i1
  %i.w = getelementptr i8, ptr %i.a, i64 32       ; 2 uses
  br i1 %i.v, label %RTYPEDDATA_GET_DATA.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !208
  br label %RTYPEDDATA_GET_DATA.exit

RTYPEDDATA_GET_DATA.exit:                         ; preds = %bb.n, %bb.m
  %i.y = phi ptr [ %i.w, %bb.m ], [ %i.x, %bb.n ] ; 2 uses
end_hunk_0
begin_hunk_1_@objspace_each_objects_ensure:bb.a
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !449
  tail call void @free(ptr noundef %i.n) #46
  %i.o = getelementptr i8, ptr %i.a, i64 64
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !449
  tail call void @free(ptr noundef %i.p) #46
  %i.q = getelementptr i8, ptr %i.a, i64 72
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !449
  tail call void @free(ptr noundef %i.r) #46
  ret i64 4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 0, 5) i32 @hash_foreach_replace_value(i64 %0, i64 noundef %1, i64 %2, i32 %3) #5 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  %i.b = and i64 %1, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %rb_gc_location.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = inttoptr i64 %1 to ptr                   ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !126
  %i.g = and i64 %i.f, 31
  %i.h = icmp eq i64 %i.g, 30
  br i1 %i.h, label %.split2.us.i.i.i, label %rb_gc_location.exit

.split2.us.i.i.i:                                 ; preds = %bb.b
  %i.i = getelementptr i8, ptr %i.e, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !271
  %i.k = icmp eq i64 %i.j, %1
  %i.l = select i1 %i.k, i32 0, i32 4
  br label %rb_gc_location.exit

rb_gc_location.exit:                              ; preds = %bb.a, %bb.b, %.split2.us.i.i.i
  %.0.i.i = phi i32 [ 0, %bb.a ], [ %i.l, %.split2.us.i.i.i ], [ 0, %bb.b ]
  ret i32 %.0.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @hash_replace_ref_value(ptr nofree readnone captures(none) %0, ptr nofree noundef captures(none) %1, i64 %2, i32 %3) #51 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !75     ; 5 uses
  %i.b = icmp eq i64 %i.a, 0
  %i.c = and i64 %i.a, 7
  %i.d = icmp ne i64 %i.c, 0
  %i.e = or i1 %i.b, %i.d
  br i1 %i.e, label %rb_gc_location.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = inttoptr i64 %i.a to ptr                 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !126
  %i.h = and i64 %i.g, 31
  %i.i = icmp eq i64 %i.h, 30
  br i1 %i.i, label %.split2.us.i.i.i, label %rb_gc_location.exit

.split2.us.i.i.i:                                 ; preds = %bb.b
  %i.j = getelementptr i8, ptr %i.f, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !271
  br label %rb_gc_location.exit

rb_gc_location.exit:                              ; preds = %bb.a, %bb.b, %.split2.us.i.i.i
  %.0.i.i = phi i64 [ %i.a, %bb.a ], [ %i.k, %.split2.us.i.i.i ], [ %i.a, %bb.b ]
  store i64 %.0.i.i, ptr %1, align 8, !tbaa !75
  ret i32 0
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @gc_set_candidate_object_i(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr nofree readnone captures(none) %3) #2 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %.not20 = icmp eq ptr %0, %1
  br i1 %.not20, label %._crit_edge, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  %i.b = ptrtoint ptr %0 to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %bb.f
  %.01621 = phi i64 [ %i.ak, %bb.f ], [ %i.b, %.preheader.preheader ] ; 5 uses
  %i.c = inttoptr i64 %.01621 to ptr              ; 4 uses
  %i.d = and i64 %.01621, -65536
  %i.e = inttoptr i64 %i.d to ptr
  %.lhs.trunc.i = trunc i64 %.01621 to i16        ; 3 uses
  %i.f = udiv i16 %.lhs.trunc.i, 40               ; 2 uses
  %i.g = udiv i16 %.lhs.trunc.i, 2560
  %.zext2.i = zext nneg i16 %i.g to i64
  %i.h = and i16 %i.f, 63
  %i.i = zext nneg i16 %i.h to i64
  %i.j = shl nuw i64 1, %i.i
  %i.k = shl nuw nsw i16 %i.f, 1
  %i.l = and i16 %i.k, 62
  %i.m = zext nneg i16 %i.l to i64                ; 2 uses
  %i.n = shl nuw i64 3, %i.m
  %i.o = xor i64 %i.n, -1
  %i.p = udiv i16 %.lhs.trunc.i, 1280
  %.zext8.i.i.i = zext nneg i16 %i.p to i64
  %i.q = shl nuw i64 2, %i.m
  %i.r = load i64, ptr %i.c, align 8, !tbaa !126  ; 3 uses
  %i.s = trunc i64 %i.r to i32
  %i.t = and i32 %i.s, 31
  switch i32 %i.t, label %bb.b [
    i32 0, label %bb.f
    i32 29, label %bb.f
  ]

bb.b:                                             ; preds = %.preheader
  %i.u = and i64 %i.r, 31
  %cond.i = icmp eq i64 %i.u, 5
  br i1 %cond.i, label %bb.c, label %rb_gc_prepare_heap_process_object.exit

bb.c:                                             ; preds = %bb.b
  %i.v = tail call i32 @rb_enc_str_coderange(i64 noundef %.01621) #46 ; 0 uses
  %.pre = load i64, ptr %i.c, align 8, !tbaa !126
  br label %rb_gc_prepare_heap_process_object.exit

rb_gc_prepare_heap_process_object.exit:           ; preds = %bb.b, %bb.c
  %i.w = phi i64 [ %i.r, %bb.b ], [ %.pre, %bb.c ]
  %i.x = and i64 %i.w, 32
  %.not18 = icmp eq i64 %i.x, 0
  br i1 %.not18, label %bb.d, label %bb.f

bb.d:                                             ; preds = %rb_gc_prepare_heap_process_object.exit
  %i.y = load ptr, ptr %i.e, align 65536, !tbaa !131 ; 2 uses
  %i.z = getelementptr i8, ptr %i.y, i64 72
  %i.aa = getelementptr [8 x i8], ptr %i.z, i64 %.zext2.i
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !75
  %i.ac = and i64 %i.ab, %i.j
  %.not19 = icmp eq i64 %i.ac, 0
  br i1 %.not19, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ad = getelementptr i8, ptr %i.y, i64 1320
  %i.ae = getelementptr [8 x i8], ptr %i.ad, i64 %.zext8.i.i.i ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !75
  %i.ag = and i64 %i.af, %i.o
  %i.ah = or i64 %i.ag, %i.q
  store i64 %i.ah, ptr %i.ae, align 8, !tbaa !75
  %i.ai = load i64, ptr %i.c, align 8, !tbaa !126
  %i.aj = and i64 %i.ai, -33
  store i64 %i.aj, ptr %i.c, align 8, !tbaa !126
  br label %bb.f

bb.f:                                             ; preds = %.preheader, %.preheader, %bb.e, %bb.d, %rb_gc_prepare_heap_process_object.exit
  %i.ak = add i64 %.01621, %2                     ; 2 uses
  %.not = icmp eq i64 %i.ak, %i.a
  br i1 %.not, label %._crit_edge, label %.preheader, !llvm.loop !614

._crit_edge:                                      ; preds = %bb.f, %bb.a
  ret i32 0
}

; Function Attrs: nounwind
declare i32 @malloc_trim(i64 noundef) local_unnamed_addr #36

declare i32 @rb_enc_str_coderange(i64 noundef) local_unnamed_addr #11

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @gc_info_decode(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i32 noundef %2) unnamed_addr #2 {
bb.a:
  %.not = icmp eq i32 %2, 0                       ; 3 uses
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 948
  %i.b = load i32, ptr %i.a, align 4, !tbaa !417
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi i32 [ %i.b, %bb.b ], [ %2, %bb.a ]   ; 19 uses
  %i.d = and i64 %1, 255
  %i.e = icmp eq i64 %i.d, 12
  br i1 %i.e, label %RB_SYMBOL_P.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = icmp eq i64 %1, 0
  %i.g = and i64 %1, 7
  %i.h = icmp ne i64 %i.g, 0
  %i.i = or i1 %i.f, %i.h
  br i1 %i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.thread, label %RB_SYMBOL_P.exit

RB_SYMBOL_P.exit:                                 ; preds = %bb.d
  %i.j = inttoptr i64 %1 to ptr
  %i.k = load i64, ptr %i.j, align 8, !tbaa !126
  %i.l = and i64 %i.k, 31
  %i.m = icmp eq i64 %i.l, 20
  br i1 %i.m, label %RB_SYMBOL_P.exit.thread, label %rbimpl_RB_TYPE_P_fastpath.exit

rbimpl_RB_TYPE_P_fastpath.exit:                   ; preds = %RB_SYMBOL_P.exit
  %i.n = inttoptr i64 %1 to ptr
  %i.o = load i64, ptr %i.n, align 8, !tbaa !126
  %i.p = and i64 %i.o, 31
  %i.q = icmp eq i64 %i.p, 8
  br i1 %i.q, label %RB_SYMBOL_P.exit.thread, label %rbimpl_RB_TYPE_P_fastpath.exit.thread

rbimpl_RB_TYPE_P_fastpath.exit.thread:            ; preds = %bb.d, %rbimpl_RB_TYPE_P_fastpath.exit
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.187) #61
  unreachable

RB_SYMBOL_P.exit.thread:                          ; preds = %bb.c, %rbimpl_RB_TYPE_P_fastpath.exit, %RB_SYMBOL_P.exit
  %.096 = phi i64 [ %1, %RB_SYMBOL_P.exit ], [ 4, %rbimpl_RB_TYPE_P_fastpath.exit ], [ %1, %bb.c ] ; 14 uses
  %.095 = phi i64 [ 4, %RB_SYMBOL_P.exit ], [ %1, %rbimpl_RB_TYPE_P_fastpath.exit ], [ 4, %bb.c ] ; 10 uses
  %i.r = load i64, ptr @gc_info_decode.sym_major_by, align 8, !tbaa !75
  %i.s = icmp eq i64 %i.r, 4
  br i1 %i.s, label %bb.e, label %bb.f

bb.e:                                             ; preds = %RB_SYMBOL_P.exit.thread
  %i.t = tail call i64 @rb_intern2(ptr noundef nonnull @.str.188, i64 noundef 8) #46 ; 0 uses
  %i.u = tail call i64 @rb_intern2(ptr noundef nonnull @.str.188, i64 noundef 8) #46
  %i.v = tail call i64 @rb_id2sym(i64 noundef %i.u) #46
  store i64 %i.v, ptr @gc_info_decode.sym_major_by, align 8, !tbaa !75
  %i.w = tail call i64 @rb_intern2(ptr noundef nonnull @.str.189, i64 noundef 5) #46 ; 0 uses
  %i.x = tail call i64 @rb_intern2(ptr noundef nonnull @.str.189, i64 noundef 5) #46
  %i.y = tail call i64 @rb_id2sym(i64 noundef %i.x) #46
  store i64 %i.y, ptr @gc_info_decode.sym_gc_by, align 8, !tbaa !75
  %i.z = tail call i64 @rb_intern2(ptr noundef nonnull @.str.190, i64 noundef 15) #46 ; 0 uses
  %i.aa = tail call i64 @rb_intern2(ptr noundef nonnull @.str.190, i64 noundef 15) #46
  %i.ab = tail call i64 @rb_id2sym(i64 noundef %i.aa) #46
  store i64 %i.ab, ptr @gc_info_decode.sym_immediate_sweep, align 8, !tbaa !75
  %i.ac = tail call i64 @rb_intern2(ptr noundef nonnull @.str.191, i64 noundef 14) #46 ; 0 uses
  %i.ad = tail call i64 @rb_intern2(ptr noundef nonnull @.str.191, i64 noundef 14) #46
  %i.ae = tail call i64 @rb_id2sym(i64 noundef %i.ad) #46
  store i64 %i.ae, ptr @gc_info_decode.sym_have_finalizer, align 8, !tbaa !75
  %i.af = tail call i64 @rb_intern2(ptr noundef nonnull @.str.192, i64 noundef 5) #46 ; 0 uses
  %i.ag = tail call i64 @rb_intern2(ptr noundef nonnull @.str.192, i64 noundef 5) #46
  %i.ah = tail call i64 @rb_id2sym(i64 noundef %i.ag) #46
  store i64 %i.ah, ptr @gc_info_decode.sym_state, align 8, !tbaa !75
  %i.ai = tail call i64 @rb_intern2(ptr noundef nonnull @.str.193, i64 noundef 13) #46 ; 0 uses
  %i.aj = tail call i64 @rb_intern2(ptr noundef nonnull @.str.193, i64 noundef 13) #46
  %i.ak = tail call i64 @rb_id2sym(i64 noundef %i.aj) #46
  store i64 %i.ak, ptr @gc_info_decode.sym_need_major_by, align 8, !tbaa !75
  %i.al = tail call i64 @rb_intern2(ptr noundef nonnull @.str.194, i64 noundef 6) #46 ; 0 uses
  %i.am = tail call i64 @rb_intern2(ptr noundef nonnull @.str.194, i64 noundef 6) #46
  %i.an = tail call i64 @rb_id2sym(i64 noundef %i.am) #46
  store i64 %i.an, ptr @gc_info_decode.sym_stress, align 8, !tbaa !75
  %i.ao = tail call i64 @rb_intern2(ptr noundef nonnull @.str.195, i64 noundef 6) #46 ; 0 uses
  %i.ap = tail call i64 @rb_intern2(ptr noundef nonnull @.str.195, i64 noundef 6) #46
  %i.aq = tail call i64 @rb_id2sym(i64 noundef %i.ap) #46
  store i64 %i.aq, ptr @gc_info_decode.sym_nofree, align 8, !tbaa !75
  %i.ar = tail call i64 @rb_intern2(ptr noundef nonnull @.str.196, i64 noundef 6) #46 ; 0 uses
  %i.as = tail call i64 @rb_intern2(ptr noundef nonnull @.str.196, i64 noundef 6) #46
  %i.at = tail call i64 @rb_id2sym(i64 noundef %i.as) #46
  store i64 %i.at, ptr @gc_info_decode.sym_oldgen, align 8, !tbaa !75
  %i.au = tail call i64 @rb_intern2(ptr noundef nonnull @.str.197, i64 noundef 5) #46 ; 0 uses
  %i.av = tail call i64 @rb_intern2(ptr noundef nonnull @.str.197, i64 noundef 5) #46
  %i.aw = tail call i64 @rb_id2sym(i64 noundef %i.av) #46
  store i64 %i.aw, ptr @gc_info_decode.sym_shady, align 8, !tbaa !75
  %i.ax = tail call i64 @rb_intern2(ptr noundef nonnull @.str.198, i64 noundef 5) #46 ; 0 uses
  %i.ay = tail call i64 @rb_intern2(ptr noundef nonnull @.str.198, i64 noundef 5) #46
  %i.az = tail call i64 @rb_id2sym(i64 noundef %i.ay) #46
  store i64 %i.az, ptr @gc_info_decode.sym_force, align 8, !tbaa !75
  %i.ba = tail call i64 @rb_intern2(ptr noundef nonnull @.str.199, i64 noundef 9) #46 ; 0 uses
  %i.bb = tail call i64 @rb_intern2(ptr noundef nonnull @.str.199, i64 noundef 9) #46
  %i.bc = tail call i64 @rb_id2sym(i64 noundef %i.bb) #46
  store i64 %i.bc, ptr @gc_info_decode.sym_oldmalloc, align 8, !tbaa !75
  %i.bd = tail call i64 @rb_intern2(ptr noundef nonnull @.str.200, i64 noundef 6) #46 ; 0 uses
  %i.be = tail call i64 @rb_intern2(ptr noundef nonnull @.str.200, i64 noundef 6) #46
  %i.bf = tail call i64 @rb_id2sym(i64 noundef %i.be) #46
  store i64 %i.bf, ptr @gc_info_decode.sym_newobj, align 8, !tbaa !75
  %i.bg = tail call i64 @rb_intern2(ptr noundef nonnull @.str.201, i64 noundef 6) #46 ; 0 uses
  %i.bh = tail call i64 @rb_intern2(ptr noundef nonnull @.str.201, i64 noundef 6) #46
  %i.bi = tail call i64 @rb_id2sym(i64 noundef %i.bh) #46
  store i64 %i.bi, ptr @gc_info_decode.sym_malloc, align 8, !tbaa !75
  %i.bj = tail call i64 @rb_intern2(ptr noundef nonnull @.str.202, i64 noundef 6) #46 ; 0 uses
  %i.bk = tail call i64 @rb_intern2(ptr noundef nonnull @.str.202, i64 noundef 6) #46
  %i.bl = tail call i64 @rb_id2sym(i64 noundef %i.bk) #46
  store i64 %i.bl, ptr @gc_info_decode.sym_method, align 8, !tbaa !75
  %i.bm = tail call i64 @rb_intern2(ptr noundef nonnull @.str.203, i64 noundef 4) #46 ; 0 uses
  %i.bn = tail call i64 @rb_intern2(ptr noundef nonnull @.str.203, i64 noundef 4) #46
  %i.bo = tail call i64 @rb_id2sym(i64 noundef %i.bn) #46
  store i64 %i.bo, ptr @gc_info_decode.sym_capi, align 8, !tbaa !75
  %i.bp = tail call i64 @rb_intern2(ptr noundef nonnull @.str.204, i64 noundef 4) #46 ; 0 uses
  %i.bq = tail call i64 @rb_intern2(ptr noundef nonnull @.str.204, i64 noundef 4) #46
  %i.br = tail call i64 @rb_id2sym(i64 noundef %i.bq) #46
  store i64 %i.br, ptr @gc_info_decode.sym_none, align 8, !tbaa !75
  %i.bs = tail call i64 @rb_intern2(ptr noundef nonnull @.str.174, i64 noundef 7) #46 ; 0 uses
  %i.bt = tail call i64 @rb_intern2(ptr noundef nonnull @.str.174, i64 noundef 7) #46
  %i.bu = tail call i64 @rb_id2sym(i64 noundef %i.bt) #46
  store i64 %i.bu, ptr @gc_info_decode.sym_marking, align 8, !tbaa !75
  %i.bv = tail call i64 @rb_intern2(ptr noundef nonnull @.str.205, i64 noundef 8) #46 ; 0 uses
  %i.bw = tail call i64 @rb_intern2(ptr noundef nonnull @.str.205, i64 noundef 8) #46
  %i.bx = tail call i64 @rb_id2sym(i64 noundef %i.bw) #46
  store i64 %i.bx, ptr @gc_info_decode.sym_sweeping, align 8, !tbaa !75
  %i.by = tail call i64 @rb_intern2(ptr noundef nonnull @.str.206, i64 noundef 21) #46 ; 0 uses
  %i.bz = tail call i64 @rb_intern2(ptr noundef nonnull @.str.206, i64 noundef 21) #46
  %i.ca = tail call i64 @rb_id2sym(i64 noundef %i.bz) #46
  store i64 %i.ca, ptr @gc_info_decode.sym_weak_references_count, align 8, !tbaa !75
  %i.cb = tail call i64 @rb_intern2(ptr noundef nonnull @.str.207, i64 noundef 30) #46 ; 0 uses
  %i.cc = tail call i64 @rb_intern2(ptr noundef nonnull @.str.207, i64 noundef 30) #46
  %i.cd = tail call i64 @rb_id2sym(i64 noundef %i.cc) #46
  store i64 %i.cd, ptr @gc_info_decode.sym_retained_weak_references_count, align 8, !tbaa !75
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %RB_SYMBOL_P.exit.thread
  %i.ce = and i32 %i.c, 1
  %.not127 = icmp eq i32 %i.ce, 0
  br i1 %.not127, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cf = load i64, ptr @gc_info_decode.sym_nofree, align 8, !tbaa !75
  br label %bb.o

bb.h:                                             ; preds = %bb.f
  %i.cg = and i32 %i.c, 2
  %.not128 = icmp eq i32 %i.cg, 0
  br i1 %.not128, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ch = load i64, ptr @gc_info_decode.sym_oldgen, align 8, !tbaa !75
  br label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.ci = and i32 %i.c, 4
  %.not129 = icmp eq i32 %i.ci, 0
  br i1 %.not129, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cj = load i64, ptr @gc_info_decode.sym_shady, align 8, !tbaa !75
  br label %bb.o

bb.l:                                             ; preds = %bb.j
  %i.ck = and i32 %i.c, 8
  %.not130 = icmp eq i32 %i.ck, 0
  br i1 %.not130, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cl = load i64, ptr @gc_info_decode.sym_force, align 8, !tbaa !75
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.cm = and i32 %i.c, 32
  %.not131 = icmp eq i32 %i.cm, 0
  %i.cn = load i64, ptr @gc_info_decode.sym_oldmalloc, align 8
  %i.co = select i1 %.not131, i64 4, i64 %i.cn
  br label %bb.o

bb.o:                                             ; preds = %bb.i, %bb.m, %bb.n, %bb.k, %bb.g
  %i.cp = phi i64 [ %i.cf, %bb.g ], [ %i.ch, %bb.i ], [ %i.cj, %bb.k ], [ %i.cl, %bb.m ], [ %i.co, %bb.n ] ; 2 uses
  %i.cq = load i64, ptr @gc_info_decode.sym_major_by, align 8, !tbaa !75 ; 2 uses
  %i.cr = icmp eq i64 %.096, %i.cq
  br i1 %i.cr, label %bb.br, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.not132 = icmp eq i64 %.095, 4                 ; 5 uses
  br i1 %.not132, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cs = tail call i64 @rb_hash_aset(i64 noundef %.095, i64 noundef %i.cq, i64 noundef %i.cp) #46 ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  br i1 %.not, label %bb.s, label %bb.ae

bb.s:                                             ; preds = %bb.r
  %i.ct = getelementptr i8, ptr %0, i64 1144
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !383 ; 5 uses
  %i.cv = and i32 %i.cu, 1
  %.not133 = icmp eq i32 %i.cv, 0
  br i1 %.not133, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cw = load i64, ptr @gc_info_decode.sym_nofree, align 8, !tbaa !75
  br label %bb.ab

bb.u:                                             ; preds = %bb.s
  %i.cx = and i32 %i.cu, 2
  %.not134 = icmp eq i32 %i.cx, 0
  br i1 %.not134, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cy = load i64, ptr @gc_info_decode.sym_oldgen, align 8, !tbaa !75
  br label %bb.ab

bb.w:                                             ; preds = %bb.u
  %i.cz = and i32 %i.cu, 4
  %.not135 = icmp eq i32 %i.cz, 0
  br i1 %.not135, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.da = load i64, ptr @gc_info_decode.sym_shady, align 8, !tbaa !75
  br label %bb.ab

bb.y:                                             ; preds = %bb.w
  %i.db = and i32 %i.cu, 8
  %.not136 = icmp eq i32 %i.db, 0
  br i1 %.not136, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dc = load i64, ptr @gc_info_decode.sym_force, align 8, !tbaa !75
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  %i.dd = and i32 %i.cu, 32
  %.not137 = icmp eq i32 %i.dd, 0
  %i.de = load i64, ptr @gc_info_decode.sym_oldmalloc, align 8
  %i.df = select i1 %.not137, i64 4, i64 %i.de
  br label %bb.ab

bb.ab:                                            ; preds = %bb.v, %bb.z, %bb.aa, %bb.x, %bb.t
  %i.dg = phi i64 [ %i.cw, %bb.t ], [ %i.cy, %bb.v ], [ %i.da, %bb.x ], [ %i.dc, %bb.z ], [ %i.df, %bb.aa ] ; 2 uses
  %i.dh = load i64, ptr @gc_info_decode.sym_need_major_by, align 8, !tbaa !75 ; 2 uses
  %.not138 = icmp eq i64 %.096, %i.dh             ; 3 uses
  %brmerge = or i1 %.not132, %.not138
  %.mux = select i1 %.not138, i64 %i.dg, i64 undef
  br i1 %brmerge, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %3 = tail call i64 @rb_hash_aset(i64 noundef %.095, i64 noundef %i.dh, i64 noundef %i.dg) #46 ; 0 uses
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  %.094 = phi i64 [ %.mux, %bb.ab ], [ undef, %bb.ac ]
  br i1 %.not138, label %bb.br, label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.r
  %i.di = load i64, ptr @gc_info_decode.sym_gc_by, align 8, !tbaa !75 ; 2 uses
  %i.dj = icmp eq i64 %.096, %i.di
  br i1 %i.dj, label %bb.af, label %bb.ao

bb.af:                                            ; preds = %bb.ae
  %i.dk = and i32 %i.c, 256
  %.not148 = icmp eq i32 %i.dk, 0
  br i1 %.not148, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dl = load i64, ptr @gc_info_decode.sym_newobj, align 8, !tbaa !75
  br label %bb.br

bb.ah:                                            ; preds = %bb.af
  %i.dm = and i32 %i.c, 512
  %.not149 = icmp eq i32 %i.dm, 0
  br i1 %.not149, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dn = load i64, ptr @gc_info_decode.sym_malloc, align 8, !tbaa !75
  br label %bb.br

bb.aj:                                            ; preds = %bb.ah
  %i.do = and i32 %i.c, 1024
  %.not150 = icmp eq i32 %i.do, 0
  br i1 %.not150, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dp = load i64, ptr @gc_info_decode.sym_method, align 8, !tbaa !75
  br label %bb.br

bb.al:                                            ; preds = %bb.aj
  %i.dq = and i32 %i.c, 2048
  %.not151 = icmp eq i32 %i.dq, 0
  br i1 %.not151, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.dr = load i64, ptr @gc_info_decode.sym_capi, align 8, !tbaa !75
  br label %bb.br

bb.an:                                            ; preds = %bb.al
  %i.ds = and i32 %i.c, 4096
  %.not152 = icmp eq i32 %i.ds, 0
  %i.dt = load i64, ptr @gc_info_decode.sym_stress, align 8
  %i.du = select i1 %.not152, i64 4, i64 %i.dt
  br label %bb.br

bb.ao:                                            ; preds = %bb.ae
  br i1 %.not132, label %bb.ay, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.dv = and i32 %i.c, 256
  %.not139 = icmp eq i32 %i.dv, 0
  br i1 %.not139, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.dw = load i64, ptr @gc_info_decode.sym_newobj, align 8, !tbaa !75
  br label %.thread

bb.ar:                                            ; preds = %bb.ap
  %i.dx = and i32 %i.c, 512
  %.not140 = icmp eq i32 %i.dx, 0
  br i1 %.not140, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.dy = load i64, ptr @gc_info_decode.sym_malloc, align 8, !tbaa !75
  br label %.thread

bb.at:                                            ; preds = %bb.ar
  %i.dz = and i32 %i.c, 1024
  %.not141 = icmp eq i32 %i.dz, 0
  br i1 %.not141, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ea = load i64, ptr @gc_info_decode.sym_method, align 8, !tbaa !75
  br label %.thread

bb.av:                                            ; preds = %bb.at
  %i.eb = and i32 %i.c, 2048
  %.not142 = icmp eq i32 %i.eb, 0
  br i1 %.not142, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ec = load i64, ptr @gc_info_decode.sym_capi, align 8, !tbaa !75
  br label %.thread

bb.ax:                                            ; preds = %bb.av
  %i.ed = and i32 %i.c, 4096
  %.not143 = icmp eq i32 %i.ed, 0
  %i.ee = load i64, ptr @gc_info_decode.sym_stress, align 8
  %i.ef = select i1 %.not143, i64 4, i64 %i.ee
  br label %.thread

bb.ay:                                            ; preds = %bb.ao
  %i.eg = load i64, ptr @gc_info_decode.sym_have_finalizer, align 8, !tbaa !75
  %i.eh = icmp eq i64 %.096, %i.eg
  br i1 %i.eh, label %bb.az, label %bb.ba

.thread:                                          ; preds = %bb.aq, %bb.au, %bb.ax, %bb.aw, %bb.as
  %i.ei = phi i64 [ %i.dw, %bb.aq ], [ %i.dy, %bb.as ], [ %i.ea, %bb.au ], [ %i.ec, %bb.aw ], [ %i.ef, %bb.ax ]
  %i.ej = tail call i64 @rb_hash_aset(i64 noundef %.095, i64 noundef %i.di, i64 noundef %i.ei) #46 ; 0 uses
  %i.ek = load i64, ptr @gc_info_decode.sym_have_finalizer, align 8, !tbaa !75 ; 2 uses
  %i.el = icmp eq i64 %.096, %i.ek
  br i1 %i.el, label %bb.az, label %.thread176

bb.az:                                            ; preds = %.thread, %bb.ay
  %i.em = and i32 %i.c, 16384
  %.not147 = icmp eq i32 %i.em, 0
  %i.en = select i1 %.not147, i64 0, i64 20
  br label %bb.br

bb.ba:                                            ; preds = %bb.ay
  %i.eo = load i64, ptr @gc_info_decode.sym_immediate_sweep, align 8, !tbaa !75
  %i.ep = icmp eq i64 %.096, %i.eo
  br i1 %i.ep, label %bb.bb, label %bb.bd

.thread176:                                       ; preds = %.thread
  %i.eq = and i32 %i.c, 16384
  %.not144 = icmp eq i32 %i.eq, 0
  %i.er = select i1 %.not144, i64 0, i64 20
  %i.es = tail call i64 @rb_hash_aset(i64 noundef %.095, i64 noundef %i.ek, i64 noundef %i.er) #46 ; 0 uses
  %i.et = load i64, ptr @gc_info_decode.sym_immediate_sweep, align 8, !tbaa !75 ; 2 uses
  %i.eu = icmp eq i64 %.096, %i.et
  br i1 %i.eu, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %.thread176, %bb.ba
  %i.ev = and i32 %i.c, 8192
  %.not146 = icmp eq i32 %i.ev, 0
  %i.ew = select i1 %.not146, i64 0, i64 20
  br label %bb.br

bb.bc:                                            ; preds = %.thread176
  %i.ex = and i32 %i.c, 8192
  %.not145 = icmp eq i32 %i.ex, 0
  %i.ey = select i1 %.not145, i64 0, i64 20
  %i.ez = tail call i64 @rb_hash_aset(i64 noundef %.095, i64 noundef %i.et, i64 noundef %i.ey) #46 ; 0 uses
  br label %bb.bd

bb.bd:                                            ; preds = %bb.ba, %bb.bc
  br i1 %.not, label %bb.be, label %bb.bm

bb.be:                                            ; preds = %bb.bd
  %i.fa = load i64, ptr @gc_info_decode.sym_state, align 8, !tbaa !75 ; 2 uses
  %i.fb = icmp eq i64 %.096, %i.fa
  br i1 %i.fb, label %bb.bf, label %bb.bi

bb.bf:                                            ; preds = %bb.be
  %i.fc = getelementptr i8, ptr %0, i64 28
  %i.fd = load i16, ptr %i.fc, align 4
  %i.fe = and i16 %i.fd, 3                        ; 2 uses
  %i.ff = icmp eq i16 %i.fe, 0
  br i1 %i.ff, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.fg = load i64, ptr @gc_info_decode.sym_none, align 8, !tbaa !75
  br label %bb.br

bb.bh:                                            ; preds = %bb.bf
  %i.fh = icmp eq i16 %i.fe, 1
  %i.fi = load i64, ptr @gc_info_decode.sym_marking, align 8
  %i.fj = load i64, ptr @gc_info_decode.sym_sweeping, align 8
  %i.fk = select i1 %i.fh, i64 %i.fi, i64 %i.fj
  br label %bb.br

bb.bi:                                            ; preds = %bb.be
  br i1 %.not132, label %.thread180, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.fl = getelementptr i8, ptr %0, i64 28
  %i.fm = load i16, ptr %i.fl, align 4
  %i.fn = and i16 %i.fm, 3                        ; 2 uses
  %i.fo = icmp eq i16 %i.fn, 0
  br i1 %i.fo, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.fp = load i64, ptr @gc_info_decode.sym_none, align 8, !tbaa !75
  br label %.thread178

bb.bl:                                            ; preds = %bb.bj
  %i.fq = icmp eq i16 %i.fn, 1
  %i.fr = load i64, ptr @gc_info_decode.sym_marking, align 8
  %i.fs = load i64, ptr @gc_info_decode.sym_sweeping, align 8
  %i.ft = select i1 %i.fq, i64 %i.fr, i64 %i.fs
  br label %.thread178

bb.bm:                                            ; preds = %bb.bd
  %i.fu = load i64, ptr @gc_info_decode.sym_weak_references_count, align 8, !tbaa !75 ; 2 uses
  %i.fv = icmp eq i64 %.096, %i.fu
  br i1 %i.fv, label %bb.bn, label %bb.bo

.thread180:                                       ; preds = %bb.bi
  %i.fw = load i64, ptr @gc_info_decode.sym_weak_references_count, align 8, !tbaa !75
  %i.fx = icmp eq i64 %.096, %i.fw
  br i1 %i.fx, label %bb.bn, label %.thread181

.thread178:                                       ; preds = %bb.bk, %bb.bl
  %i.fy = phi i64 [ %i.fp, %bb.bk ], [ %i.ft, %bb.bl ]
  %i.fz = tail call i64 @rb_hash_aset(i64 noundef %.095, i64 noundef %i.fa, i64 noundef %i.fy) #46 ; 0 uses
  %i.ga = load i64, ptr @gc_info_decode.sym_weak_references_count, align 8, !tbaa !75 ; 2 uses
  %i.gb = icmp eq i64 %.096, %i.ga
  br i1 %i.gb, label %bb.bn, label %.thread182

bb.bn:                                            ; preds = %.thread180, %.thread178, %bb.bm
  %i.gc = getelementptr i8, ptr %0, i64 1104
  %i.gd = load i64, ptr %i.gc, align 8, !tbaa !278
  %i.ge = shl i64 %i.gd, 1
  %i.gf = or disjoint i64 %i.ge, 1
  br label %bb.br

bb.bo:                                            ; preds = %bb.bm
  br i1 %.not132, label %.thread181, label %.thread182

.thread181:                                       ; preds = %.thread180, %bb.bo
  %i.gg = load i64, ptr @gc_info_decode.sym_retained_weak_references_count, align 8, !tbaa !75
  %i.gh = icmp eq i64 %.096, %i.gg
  br i1 %i.gh, label %bb.bp, label %bb.bq

.thread182:                                       ; preds = %bb.bo, %.thread178
  %i.gi = phi i64 [ %i.fu, %bb.bo ], [ %i.ga, %.thread178 ]
  %i.gj = getelementptr i8, ptr %0, i64 1104
  %i.gk = load i64, ptr %i.gj, align 8, !tbaa !278
  %i.gl = shl i64 %i.gk, 1
  %i.gm = or disjoint i64 %i.gl, 1
  %i.gn = tail call i64 @rb_hash_aset(i64 noundef %.095, i64 noundef %i.gi, i64 noundef %i.gm) #46 ; 0 uses
  %i.go = load i64, ptr @gc_info_decode.sym_retained_weak_references_count, align 8, !tbaa !75 ; 2 uses
  %i.gp = icmp eq i64 %.096, %i.go
  br i1 %i.gp, label %bb.bp, label %.thread183

bb.bp:                                            ; preds = %.thread182, %.thread181
  %i.gq = getelementptr i8, ptr %0, i64 1112
  %i.gr = load i64, ptr %i.gq, align 8, !tbaa !404
  %i.gs = shl i64 %i.gr, 1
  %i.gt = or disjoint i64 %i.gs, 1
  br label %bb.br

.thread183:                                       ; preds = %.thread182
  %i.gu = getelementptr i8, ptr %0, i64 1112
  %i.gv = load i64, ptr %i.gu, align 8, !tbaa !404
  %i.gw = shl i64 %i.gv, 1
  %i.gx = or disjoint i64 %i.gw, 1
  %i.gy = tail call i64 @rb_hash_aset(i64 noundef %.095, i64 noundef %i.go, i64 noundef %i.gx) #46 ; 0 uses
  br label %bb.bq

bb.bq:                                            ; preds = %.thread181, %.thread183
  %i.gz = icmp eq i64 %.096, 4
  %.095. = select i1 %i.gz, i64 %.095, i64 36
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bg, %bb.bh, %bb.ag, %bb.ak, %bb.an, %bb.am, %bb.ai, %bb.o, %bb.ad, %bb.bp, %bb.bn, %bb.bb, %bb.az
  %.1 = phi i64 [ %.094, %bb.ad ], [ %i.cp, %bb.o ], [ %i.en, %bb.az ], [ %i.ew, %bb.bb ], [ %i.du, %bb.an ], [ %i.gf, %bb.bn ], [ %i.gt, %bb.bp ], [ %i.fk, %bb.bh ], [ %.095., %bb.bq ], [ %i.dl, %bb.ag ], [ %i.dn, %bb.ai ], [ %i.dp, %bb.ak ], [ %i.dr, %bb.am ], [ %i.fg, %bb.bg ]
  ret i64 %.1
}

declare i64 @rb_id2sym(i64 noundef) local_unnamed_addr #11

declare i64 @rb_hash_aset(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define internal fastcc i64 @objspace_free_slots(ptr nofree noundef readonly captures(none) %0) unnamed_addr #42 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 184
  %i.b = load i64, ptr %i.a, align 8, !tbaa !291
  %i.c = getelementptr i8, ptr %0, i64 336
  %i.d = load i64, ptr %i.c, align 8, !tbaa !291
  %i.e = getelementptr i8, ptr %0, i64 488
  %i.f = load i64, ptr %i.e, align 8, !tbaa !291
  %i.g = getelementptr i8, ptr %0, i64 640
  %i.h = load i64, ptr %i.g, align 8, !tbaa !291
  %i.i = getelementptr i8, ptr %0, i64 792
  %i.j = load i64, ptr %i.i, align 8, !tbaa !291
  %i.k = getelementptr i8, ptr %0, i64 80
  %i.l = load i64, ptr %i.k, align 8, !tbaa !156
  %i.m = getelementptr i8, ptr %0, i64 232
  %i.n = load i64, ptr %i.m, align 8, !tbaa !156
  %i.o = getelementptr i8, ptr %0, i64 384
  %i.p = load i64, ptr %i.o, align 8, !tbaa !156
  %i.q = getelementptr i8, ptr %0, i64 536
  %i.r = load i64, ptr %i.q, align 8, !tbaa !156
  %i.s = getelementptr i8, ptr %0, i64 688
  %i.t = load i64, ptr %i.s, align 8, !tbaa !156
  %i.u = getelementptr i8, ptr %0, i64 88
  %i.v = load i64, ptr %i.u, align 8, !tbaa !157
  %i.w = getelementptr i8, ptr %0, i64 240
  %i.x = load i64, ptr %i.w, align 8, !tbaa !157
  %i.y = getelementptr i8, ptr %0, i64 392
  %i.z = load i64, ptr %i.y, align 8, !tbaa !157
  %i.aa = getelementptr i8, ptr %0, i64 544
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !157
  %i.ac = getelementptr i8, ptr %0, i64 696
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !157
  %.neg17.i.neg = add i64 %i.d, %i.b
  %.neg18.i.neg = add i64 %.neg17.i.neg, %i.f
  %.neg19.i.neg = add i64 %.neg18.i.neg, %i.h
  %.neg30 = add i64 %.neg19.i.neg, %i.j
  %i.ae = add i64 %i.l, %i.n
  %i.af = add i64 %i.ae, %i.p
  %i.ag = add i64 %i.af, %i.r
  %i.ah = add i64 %i.ag, %i.t
  %.neg31 = sub i64 %.neg30, %i.ah
  %i.ai = add i64 %.neg31, %i.v
  %i.aj = add i64 %i.ai, %i.x
  %i.ak = add i64 %i.aj, %i.z
  %i.al = add i64 %i.ak, %i.ab
  %i.am = add i64 %i.al, %i.ad
  ret i64 %i.am
}

declare i64 @rb_num2ull(i64 noundef) local_unnamed_addr #11

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 0, 2) i32 @get_envparam_size(ptr noundef %0, ptr nofree noundef captures(none) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = tail call ptr @getenv(ptr noundef %0) #46 ; 5 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr %i.b, align 1, !tbaa !212
  %.not31 = icmp eq i8 %i.c, 0
  br i1 %.not31, label %bb.s, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  %i.d = call i64 @__isoc23_strtoll(ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, i32 noundef 0) #46 ; 4 uses
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !348  ; 4 uses
  %i.f = load i8, ptr %i.e, align 1, !tbaa !212   ; 3 uses
  %switch.tableidx = add i8 %i.f, -71             ; 3 uses
  %i.g = icmp ult i8 %switch.tableidx, 39
  br i1 %i.g, label %switch.hole_check, label %bb.d

switch.hole_check:                                ; preds = %bb.c
  %switch.maskindex = zext nneg i8 %switch.tableidx to i64
  %switch.shifted = lshr i64 347892351057, %switch.maskindex
  %switch.lobit = trunc i64 %switch.shifted to i1
  br i1 %switch.lobit, label %switch.lookup, label %bb.d

switch.lookup:                                    ; preds = %switch.hole_check
  %i.h = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table.get_envparam_size, i64 %i.h
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.ext = zext i32 %switch.load to i64
  %i.i = getelementptr i8, ptr %i.e, i64 1        ; 3 uses
  store ptr %i.i, ptr %i.a, align 8, !tbaa !348
  %.pr = load i8, ptr %i.i, align 1, !tbaa !212
  br label %bb.d

bb.d:                                             ; preds = %switch.hole_check, %bb.c, %switch.lookup
  %i.j = phi i8 [ %.pr, %switch.lookup ], [ %i.f, %bb.c ], [ %i.f, %switch.hole_check ] ; 2 uses
  %.promoted = phi ptr [ %i.i, %switch.lookup ], [ %i.e, %bb.c ], [ %i.e, %switch.hole_check ]
  %i.k = phi i1 [ true, %switch.lookup ], [ false, %bb.c ], [ false, %switch.hole_check ]
  %.0 = phi i64 [ %switch.ext, %switch.lookup ], [ 0, %bb.c ], [ 0, %switch.hole_check ] ; 2 uses
  %.not3239 = icmp eq i8 %i.j, 0
  br i1 %.not3239, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.l = tail call ptr @__ctype_b_loc() #73
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !616
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.f
  %i.n = phi i8 [ %i.j, %.lr.ph ], [ %i.u, %bb.f ]
  %i.o = phi ptr [ %.promoted, %.lr.ph ], [ %i.t, %bb.f ]
  %i.p = zext i8 %i.n to i64
  %i.q = getelementptr [2 x i8], ptr %i.m, i64 %i.p
  %i.r = load i16, ptr %i.q, align 2, !tbaa !261
  %i.s = and i16 %i.r, 8192
  %.not33 = icmp eq i16 %i.s, 0
  br i1 %.not33, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr i8, ptr %i.o, i64 1        ; 3 uses
  store ptr %i.t, ptr %i.a, align 8, !tbaa !348
  %i.u = load i8, ptr %i.t, align 1, !tbaa !212   ; 2 uses
  %.not32 = icmp eq i8 %i.u, 0
  br i1 %.not32, label %._crit_edge, label %bb.e, !llvm.loop !615

.critedge:                                        ; preds = %bb.e
  %i.v = call ptr @rb_ruby_verbose_ptr() #46
  %i.w = load i64, ptr %i.v, align 8, !tbaa !75
  %i.x = and i64 %i.w, -5
  %.not35 = icmp eq i64 %i.x, 0
  br i1 %.not35, label %bb.r, label %bb.g

bb.g:                                             ; preds = %.critedge
  %i.y = load ptr, ptr @stderr, align 8, !tbaa !141
  %i.z = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.y, i32 noundef 1, ptr noundef nonnull @.str.253, ptr noundef %0, ptr noundef nonnull %i.b) #46 ; 0 uses
  br label %bb.r

._crit_edge:                                      ; preds = %bb.f, %bb.d
  br i1 %i.k, label %bb.h, label %bb.l

bb.h:                                             ; preds = %._crit_edge
  %i.aa = call range(i64 10, 65) i64 @llvm.cttz.i64(i64 %.0, i1 true)
  %i.ab = lshr i64 9223372036854775807, %i.aa     ; 2 uses
  %i.ac = sub nsw i64 0, %i.ab
  %i.ad = icmp slt i64 %i.d, %i.ac
  %i.ae = icmp slt i64 %i.ab, %i.d
  %or.cond = or i1 %i.ad, %i.ae
  br i1 %or.cond, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.af = call ptr @rb_ruby_verbose_ptr() #46
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !75
  %i.ah = and i64 %i.ag, -5
  %.not38 = icmp eq i64 %i.ah, 0
  br i1 %.not38, label %bb.r, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ai = load ptr, ptr @stderr, align 8, !tbaa !141
  %i.aj = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.ai, i32 noundef 1, ptr noundef nonnull @.str.254, ptr noundef %0, ptr noundef nonnull %i.b) #46 ; 0 uses
  br label %bb.r

bb.k:                                             ; preds = %bb.h
  %i.ak = mul i64 %.0, %i.d
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge
  %.027 = phi i64 [ %i.ak, %bb.k ], [ %i.d, %._crit_edge ] ; 4 uses
  %i.al = icmp sgt i64 %.027, 0
  %i.am = call ptr @rb_ruby_verbose_ptr() #46
  %i.an = load i64, ptr %i.am, align 8, !tbaa !75
  %i.ao = and i64 %i.an, -5
  %.not37 = icmp eq i64 %i.ao, 0                  ; 2 uses
  br i1 %i.al, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  br i1 %.not37, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ap = load ptr, ptr @stderr, align 8, !tbaa !141
  %i.aq = load i64, ptr %1, align 8, !tbaa !75
  %i.ar = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.ap, i32 noundef 1, ptr noundef nonnull @.str.255, ptr noundef %0, i64 noundef %.027, i64 noundef %i.aq) #46 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  store i64 %.027, ptr %1, align 8, !tbaa !75
  br label %bb.r

bb.p:                                             ; preds = %bb.l
  br i1 %.not37, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.as = load ptr, ptr @stderr, align 8, !tbaa !141
  %i.at = load i64, ptr %1, align 8, !tbaa !75
  %i.au = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.as, i32 noundef 1, ptr noundef nonnull @.str.256, ptr noundef %0, i64 noundef %.027, i64 noundef %i.at, i64 noundef 0) #46 ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q, %bb.i, %bb.j, %.critedge, %bb.g, %bb.o
  %.028 = phi i32 [ 0, %bb.i ], [ 0, %.critedge ], [ 1, %bb.o ], [ 0, %bb.g ], [ 0, %bb.j ], [ 0, %bb.q ], [ 0, %bb.p ]
end_hunk_1
