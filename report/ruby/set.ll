Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/set?download=true
inline.NumInlined: 239
inline.NumDeleted: 65
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@set_classify_i:bb.a

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !21
  br label %set_s_alloc.exit

set_s_alloc.exit:                                 ; preds = %bb.b, %bb.c
  %i.o = phi ptr [ %i.n, %bb.c ], [ %i.m, %bb.b ]
  %i.p = tail call ptr @rb_set_init_table_with_size(ptr noundef %i.o, ptr noundef nonnull @objhash, i64 noundef 0) #15 ; 0 uses
  %i.q = tail call i64 @rb_hash_aset(i64 noundef %i.b, i64 noundef %i.c, i64 noundef %i.h) #15 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %set_s_alloc.exit, %bb.a
  %.0 = phi i64 [ %i.h, %set_s_alloc.exit ], [ %i.d, %bb.a ]
  %i.r = tail call i64 @set_i_add(i64 noundef %.0, i64 noundef %0) ; 0 uses
  ret i32 0
}

declare i64 @rb_ull2inum(i64 noundef) local_unnamed_addr #1

declare i64 @rb_hash_lookup2(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare i64 @rb_hash_aset(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @set_collect_i(i64 noundef %0, i64 noundef %1) #0 {
bb.a:
  %i.a = tail call i64 @rb_yield(i64 noundef %0) #15
  %i.b = tail call fastcc i32 @set_insert_wb(i64 noundef %1, i64 noundef %i.a, ptr noundef null) ; 0 uses
  ret i32 0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i64 1, 0) i64 @set_reset_table_with_type(i64 noundef returned %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.set_merge_args, align 8     ; 5 uses
  %i.a = icmp ne i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp eq i64 %i.b, 0
  %.not3.i.i = and i1 %i.a, %i.c
  br i1 %.not3.i.i, label %RB_OBJ_FROZEN.exit.i, label %RB_OBJ_FROZEN.exit.thread.i, !prof !34

RB_OBJ_FROZEN.exit.i:                             ; preds = %bb.a
  %i.d = inttoptr i64 %0 to ptr                   ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !16   ; 4 uses
  %i.f = and i64 %i.e, 2048
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i, label %RB_OBJ_FROZEN.exit.thread.i, !prof !35

RB_OBJ_FROZEN.exit.thread.i:                      ; preds = %RB_OBJ_FROZEN.exit.i, %bb.a
  tail call void @rb_error_frozen_object(i64 noundef %0) #16
  unreachable

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %RB_OBJ_FROZEN.exit.i
  %i.g = and i64 %i.e, 31
  %i.h = icmp ne i64 %i.g, 5
  %i.i = and i64 %i.e, 49152
  %.not8.i = icmp eq i64 %i.i, 0
  %or.cond.i = or i1 %i.h, %.not8.i
  br i1 %or.cond.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i16, label %bb.b, !prof !36

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  tail call void @rb_str_modify(i64 noundef %0) #15
  %.pre = load i64, ptr %i.d, align 8, !tbaa !16
  br label %rbimpl_RB_TYPE_P_fastpath.exit.i16

rbimpl_RB_TYPE_P_fastpath.exit.i16:               ; preds = %bb.b, %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.j = phi i64 [ %.pre, %bb.b ], [ %i.e, %rbimpl_RB_TYPE_P_fastpath.exit.i ]
  %i.k = and i64 %i.j, 95
  %or.cond.not.i = icmp eq i64 %i.k, 76
  br i1 %or.cond.not.i, label %bb.c, label %.critedge.i, !prof !17

bb.c:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i16
  %i.l = getelementptr i8, ptr %i.d, i64 24
  %i.m = load i64, ptr %i.l, align 8, !tbaa !20   ; 2 uses
  %i.n = and i64 %i.m, -2                         ; 2 uses
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = trunc i64 %i.m to i1
  %i.q = getelementptr i8, ptr %i.d, i64 32       ; 2 uses
  br i1 %i.p, label %RTYPEDDATA_GET_DATA.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !21
  br label %RTYPEDDATA_GET_DATA.exit.i

RTYPEDDATA_GET_DATA.exit.i:                       ; preds = %bb.d, %bb.c
  %i.s = phi ptr [ %i.r, %bb.d ], [ %i.q, %bb.c ] ; 2 uses
  %i.t = icmp eq i64 %i.n, ptrtoint (ptr @set_data_type to i64)
  br i1 %i.t, label %rbimpl_check_typeddata.exit, label %.preheader.i, !prof !22

.preheader.i:                                     ; preds = %RTYPEDDATA_GET_DATA.exit.i, %bb.e
  %.015.i = phi ptr [ %i.v, %bb.e ], [ %i.o, %RTYPEDDATA_GET_DATA.exit.i ] ; 2 uses
  %.not.i17 = icmp eq ptr %.015.i, null
  br i1 %.not.i17, label %.critedge.i, label %bb.e

bb.e:                                             ; preds = %.preheader.i
  %i.u = getelementptr i8, ptr %.015.i, i64 48
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !27   ; 2 uses
  %i.w = icmp eq ptr %i.v, @set_data_type
  br i1 %i.w, label %rbimpl_check_typeddata.exit, label %.preheader.i, !llvm.loop !0

.critedge.i:                                      ; preds = %.preheader.i, %rbimpl_RB_TYPE_P_fastpath.exit.i16
  %i.x = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @set_data_type) #15
  br label %rbimpl_check_typeddata.exit

rbimpl_check_typeddata.exit:                      ; preds = %bb.e, %RTYPEDDATA_GET_DATA.exit.i, %.critedge.i
  %.1.i = phi ptr [ %i.x, %.critedge.i ], [ %i.s, %RTYPEDDATA_GET_DATA.exit.i ], [ %i.s, %bb.e ] ; 4 uses
  %i.y = tail call i64 @rb_set_table_size(ptr noundef %.1.i) #15 ; 2 uses
  %.not = icmp eq i64 %i.y, 0
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %rbimpl_check_typeddata.exit
  %i.z = tail call ptr @rb_set_init_table_with_size(ptr noundef null, ptr noundef %1, i64 noundef %i.y) #15 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  store i64 %0, ptr %2, align 8, !tbaa !60
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !61
  %i.ab = ptrtoint ptr %2 to i64
  call fastcc void @set_iter(i64 noundef %0, ptr noundef nonnull @set_merge_i, i64 noundef %i.ab)
  %i.ac = getelementptr i8, ptr %.1.i, i64 40
  %.val = load ptr, ptr %i.ac, align 8, !tbaa !44
  call void @free(ptr noundef %.val) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.1.i, ptr noundef nonnull readonly align 1 dereferenceable(48) %i.z, i64 noundef 48, i1 noundef false) #15
  call void @free(ptr noundef %i.z) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  br label %bb.h

bb.g:                                             ; preds = %rbimpl_check_typeddata.exit
  %i.ad = getelementptr i8, ptr %.1.i, i64 8
  store ptr %1, ptr %i.ad, align 8, !tbaa !70
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  ret i64 %0
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i32 0, 3) i32 @set_delete_if_i(i64 noundef %0, i64 %1) #0 {
bb.a:
  %i.a = tail call i64 @rb_yield(i64 noundef %0) #15
  %i.b = and i64 %i.a, -5
  %.not = icmp eq i64 %i.b, 0
  %i.c = select i1 %.not, i32 0, i32 2
  ret i32 %i.c
}

declare i32 @rb_block_arity() local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @set_divide_arity2(i64 noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  %i.c = tail call i64 @rb_obj_class(i64 noundef %0) #15
  %i.d = tail call i64 @set_i_to_a(i64 noundef %0) ; 2 uses
  %i.e = tail call i64 @rb_ary_freeze(i64 noundef %i.d) #15 ; 0 uses
  %i.f = inttoptr i64 %i.d to ptr                 ; 9 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !16   ; 2 uses
  %i.h = and i64 %i.g, 8192
  %.not.i = icmp eq i64 %i.h, 0
  br i1 %.not.i, label %rb_array_len.exit, label %rb_array_len.exit.thread

rb_array_len.exit.thread:                         ; preds = %bb.a
  %i.i = lshr i64 %i.g, 15
  %i.j = and i64 %i.i, 127
  br label %bb.d

rb_array_len.exit:                                ; preds = %bb.a
  %i.k = getelementptr i8, ptr %i.f, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !42   ; 8 uses
  %i.m = icmp ult i64 %i.l, 128
  br i1 %i.m, label %bb.d, label %bb.b

bb.b:                                             ; preds = %rb_array_len.exit
  %i.n = icmp ugt i64 %i.l, 2305843009213693951
  br i1 %i.n, label %bb.c, label %.thread, !prof !81

bb.c:                                             ; preds = %bb.b
  tail call void @ruby_malloc_size_overflow(i64 noundef range(i64 128, 0) %i.l, i64 noundef 8) #16
  unreachable

.thread:                                          ; preds = %bb.b
  %i.o = shl nuw i64 %i.l, 3                      ; 2 uses
  %i.p = call noalias nonnull ptr @rb_alloc_tmp_buffer_with_count(ptr noundef nonnull %i.a, i64 noundef %i.o, i64 noundef range(i64 128, 0) %i.l) #21
  %i.q = call noalias nonnull ptr @rb_alloc_tmp_buffer_with_count(ptr noundef nonnull %i.b, i64 noundef %i.o, i64 noundef range(i64 128, 0) %i.l) #21
  br label %.lr.ph.preheader

bb.d:                                             ; preds = %rb_array_len.exit.thread, %rb_array_len.exit
  %.0.i82 = phi i64 [ %i.j, %rb_array_len.exit.thread ], [ %i.l, %rb_array_len.exit ] ; 3 uses
  store i64 0, ptr %i.a, align 8, !tbaa !33
  %i.r = shl nuw nsw i64 %.0.i82, 3               ; 2 uses
  %i.s = alloca i8, i64 %i.r, align 16            ; 2 uses
  store i64 0, ptr %i.b, align 8, !tbaa !33
  %i.t = alloca i8, i64 %i.r, align 16            ; 2 uses
  %.not113 = icmp eq i64 %.0.i82, 0
  br i1 %.not113, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.thread, %bb.d
  %i.u = phi ptr [ %i.q, %.thread ], [ %i.t, %bb.d ] ; 19 uses
  %.0.i8184110 = phi i64 [ %i.l, %.thread ], [ %.0.i82, %bb.d ] ; 8 uses
  %i.v = phi ptr [ %i.p, %.thread ], [ %i.s, %bb.d ] ; 14 uses
  %min.iters.check = icmp ult i64 %.0.i8184110, 4
  br i1 %min.iters.check, label %.lr.ph.preheader114, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %.0.i8184110, -4               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %i.w = getelementptr [8 x i8], ptr %i.u, i64 %index ; 2 uses
  %i.x = getelementptr i8, ptr %i.w, i64 16
  store <2 x i64> %vec.ind, ptr %i.w, align 8, !tbaa !33
  store <2 x i64> %step.add, ptr %i.x, align 8, !tbaa !33
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !71

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.0.i8184110, %n.vec
  br i1 %cmp.n, label %.preheader, label %.lr.ph.preheader114

.lr.ph.preheader114:                              ; preds = %.lr.ph.preheader, %middle.block
  %.05787.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.preheader:                                       ; preds = %.lr.ph, %middle.block
  %i.z = icmp samesign ugt i64 %.0.i8184110, 1
  br i1 %i.z, label %.lr.ph92, label %._crit_edge

.lr.ph92:                                         ; preds = %.preheader
  %i.aa = getelementptr i8, ptr %i.f, i64 16      ; 2 uses
  %i.ab = getelementptr i8, ptr %i.f, i64 32      ; 2 uses
  %i.ac = add nsw i64 %.0.i8184110, -2
  br label %bb.g

.lr.ph:                                           ; preds = %.lr.ph.preheader114, %.lr.ph
  %.05787 = phi i64 [ %i.ae, %.lr.ph ], [ %.05787.ph, %.lr.ph.preheader114 ] ; 3 uses
  %i.ad = getelementptr [8 x i8], ptr %i.u, i64 %.05787
  store i64 %.05787, ptr %i.ad, align 8, !tbaa !33
  %i.ae = add nuw nsw i64 %.05787, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.ae, %.0.i8184110
  br i1 %exitcond.not, label %.preheader, label %.lr.ph, !llvm.loop !72

.loopexit:                                        ; preds = %set_divide_union_find_merge.exit
  %exitcond97.not = icmp eq i64 %.05691, %i.ac
  br i1 %exitcond97.not, label %._crit_edge, label %bb.g, !llvm.loop !73

._crit_edge:                                      ; preds = %.loopexit, %bb.d, %.preheader
  %i.af = phi ptr [ %i.s, %bb.d ], [ %i.v, %.preheader ], [ %i.v, %.loopexit ] ; 6 uses
  %.0.i8184109112 = phi i64 [ 0, %bb.d ], [ 1, %.preheader ], [ %.0.i8184110, %.loopexit ]
  %i.ag = phi ptr [ %i.t, %bb.d ], [ %i.u, %.preheader ], [ %i.u, %.loopexit ] ; 7 uses
  %i.ah = phi i1 [ false, %bb.d ], [ true, %.preheader ], [ true, %.loopexit ]
  %i.ai = load i64, ptr @rb_cSet, align 8, !tbaa !33
  %i.aj = call i64 @rb_data_typed_object_zalloc(i64 noundef %i.ai, i64 noundef 48, ptr noundef nonnull @set_data_type) #15 ; 6 uses
  %i.ak = inttoptr i64 %i.aj to ptr               ; 3 uses
  %i.al = getelementptr i8, ptr %i.ak, i64 24     ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !20
  %i.an = trunc i64 %i.am to i1
  %i.ao = getelementptr i8, ptr %i.ak, i64 32     ; 2 uses
  br i1 %i.an, label %set_alloc_with_size.exit.i, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !21
  br label %set_alloc_with_size.exit.i

set_alloc_with_size.exit.i:                       ; preds = %bb.e, %._crit_edge
  %i.aq = phi ptr [ %i.ap, %bb.e ], [ %i.ao, %._crit_edge ]
  %i.ar = call ptr @rb_set_init_table_with_size(ptr noundef %i.aq, ptr noundef nonnull @objhash, i64 noundef 0) #15 ; 0 uses
  %i.as = icmp eq i64 %i.aj, 0
  %i.at = and i64 %i.aj, 7
  %i.au = icmp ne i64 %i.at, 0
  %i.av = or i1 %i.as, %i.au
  br i1 %i.av, label %.critedge.i.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i, !prof !13

rbimpl_RB_TYPE_P_fastpath.exit.i.i.i:             ; preds = %set_alloc_with_size.exit.i
  %i.aw = load i64, ptr %i.ak, align 8, !tbaa !16
  %i.ax = and i64 %i.aw, 95
  %or.cond.not.i.i.i = icmp eq i64 %i.ax, 76
  br i1 %or.cond.not.i.i.i, label %RTYPEDDATA_GET_DATA.exit.i.i.i, label %.critedge.i.i.i, !prof !17

RTYPEDDATA_GET_DATA.exit.i.i.i:                   ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i
  %i.ay = load i64, ptr %i.al, align 8, !tbaa !20
  %i.az = and i64 %i.ay, -2                       ; 2 uses
  %i.ba = icmp eq i64 %i.az, ptrtoint (ptr @set_data_type to i64)
  br i1 %i.ba, label %set_s_create.exit, label %.preheader.i.i.i.preheader, !prof !22

.preheader.i.i.i.preheader:                       ; preds = %RTYPEDDATA_GET_DATA.exit.i.i.i
  %i.bb = inttoptr i64 %i.az to ptr
  br label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %.preheader.i.i.i.preheader, %bb.f
  %.015.i.i.i = phi ptr [ %i.bd, %bb.f ], [ %i.bb, %.preheader.i.i.i.preheader ] ; 2 uses
  %.not.i.i.i = icmp eq ptr %.015.i.i.i, null
  br i1 %.not.i.i.i, label %.critedge.i.i.i, label %bb.f

bb.f:                                             ; preds = %.preheader.i.i.i
  %i.bc = getelementptr i8, ptr %.015.i.i.i, i64 48
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !27 ; 2 uses
  %i.be = icmp eq ptr %i.bd, @set_data_type
  br i1 %i.be, label %set_s_create.exit, label %.preheader.i.i.i, !llvm.loop !0

.critedge.i.i.i:                                  ; preds = %.preheader.i.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i, %set_alloc_with_size.exit.i
  %i.bf = call ptr @rb_check_typeddata(i64 noundef %i.aj, ptr noundef nonnull @set_data_type) #15 ; 0 uses
  br label %set_s_create.exit

set_s_create.exit:                                ; preds = %bb.f, %RTYPEDDATA_GET_DATA.exit.i.i.i, %.critedge.i.i.i
  %i.bg = call i64 @rb_hash_new() #15             ; 2 uses
  br i1 %i.ah, label %.lr.ph94, label %._crit_edge95

.lr.ph94:                                         ; preds = %set_s_create.exit
  %i.bh = getelementptr i8, ptr %i.f, i64 16
  %i.bi = getelementptr i8, ptr %i.f, i64 32
  br label %bb.n

bb.g:                                             ; preds = %.lr.ph92, %.loopexit
  %.05691 = phi i64 [ 0, %.lr.ph92 ], [ %i.bo, %.loopexit ] ; 7 uses
  %i.bj = load i64, ptr %i.f, align 8, !tbaa !16
  %i.bk = and i64 %i.bj, 8192
  %.not.i.i = icmp eq i64 %i.bk, 0
  br i1 %.not.i.i, label %bb.h, label %RARRAY_AREF.exit

bb.h:                                             ; preds = %bb.g
  %i.bl = load ptr, ptr %i.ab, align 8, !tbaa !42
  br label %RARRAY_AREF.exit

RARRAY_AREF.exit:                                 ; preds = %bb.h, %bb.g
  %.0.i.i = phi ptr [ %i.bl, %bb.h ], [ %i.aa, %bb.g ]
  %i.bm = getelementptr [8 x i8], ptr %.0.i.i, i64 %.05691
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !33 ; 2 uses
  %i.bo = add nuw nsw i64 %.05691, 1              ; 2 uses
  %.020.in21.i.i = getelementptr [8 x i8], ptr %i.u, i64 %.05691
  br label %bb.i

bb.i:                                             ; preds = %RARRAY_AREF.exit, %set_divide_union_find_merge.exit
  %.05588 = phi i64 [ %i.bo, %RARRAY_AREF.exit ], [ %i.dx, %set_divide_union_find_merge.exit ] ; 6 uses
  %i.bp = load i64, ptr %i.f, align 8, !tbaa !16
  %i.bq = and i64 %i.bp, 8192
  %.not.i.i61 = icmp eq i64 %i.bq, 0
  br i1 %.not.i.i61, label %bb.j, label %RARRAY_AREF.exit63

bb.j:                                             ; preds = %bb.i
  %i.br = load ptr, ptr %i.ab, align 8, !tbaa !42
  br label %RARRAY_AREF.exit63

RARRAY_AREF.exit63:                               ; preds = %bb.i, %bb.j
  %.0.i.i62 = phi ptr [ %i.br, %bb.j ], [ %i.aa, %bb.i ]
  %i.bs = getelementptr [8 x i8], ptr %.0.i.i62, i64 %.05588
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !33 ; 2 uses
  %i.bu = call i64 (i32, ...) @rb_yield_values(i32 noundef 2, i64 noundef %i.bn, i64 noundef %i.bt) #15
  %i.bv = and i64 %i.bu, -5
  %.not = icmp eq i64 %i.bv, 0
  br i1 %.not, label %set_divide_union_find_merge.exit, label %bb.k

bb.k:                                             ; preds = %RARRAY_AREF.exit63
  %i.bw = call i64 (i32, ...) @rb_yield_values(i32 noundef 2, i64 noundef %i.bt, i64 noundef %i.bn) #15
  %i.bx = and i64 %i.bw, -5
  %.not86 = icmp eq i64 %i.bx, 0
  br i1 %.not86, label %set_divide_union_find_merge.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.02022.i.i = load i64, ptr %.020.in21.i.i, align 8, !tbaa !33 ; 2 uses
  %.not23.i.i = icmp eq i64 %.02022.i.i, %.05691
  br i1 %.not23.i.i, label %set_divide_union_find_root.exit.i, label %.lr.ph.i.i

.preheader.i.i:                                   ; preds = %.lr.ph.i.i
  %i.by = icmp ult i64 %.01924.i.i, 9223372036854775807
  br i1 %i.by, label %.lr.ph29.i.i.preheader, label %set_divide_union_find_root.exit.i

.lr.ph29.i.i.preheader:                           ; preds = %.preheader.i.i
  %i.bz = add nuw i64 %.01924.i.i, 1              ; 2 uses
  %xtraiter = and i64 %i.bz, 3                    ; 3 uses
  %i.ca = icmp ult i64 %.01924.i.i, 3
  br i1 %i.ca, label %.lr.ph29.i.i.epil.preheader, label %.lr.ph29.i.i.preheader.new

.lr.ph29.i.i.preheader.new:                       ; preds = %.lr.ph29.i.i.preheader
  %unroll_iter = and i64 %i.bz, -4
  br label %.lr.ph29.i.i

.lr.ph.i.i:                                       ; preds = %bb.l, %.lr.ph.i.i
  %.02026.i.i = phi i64 [ %.020.i.i, %.lr.ph.i.i ], [ %.02022.i.i, %bb.l ] ; 11 uses
  %.025.i.i = phi i64 [ %.02026.i.i, %.lr.ph.i.i ], [ %.05691, %bb.l ]
  %.01924.i.i = phi i64 [ %i.cb, %.lr.ph.i.i ], [ 0, %bb.l ] ; 5 uses
  %i.cb = add i64 %.01924.i.i, 1
  %i.cc = getelementptr [8 x i8], ptr %i.v, i64 %.01924.i.i
  store i64 %.025.i.i, ptr %i.cc, align 8, !tbaa !33
  %.020.in.i.i = getelementptr [8 x i8], ptr %i.u, i64 %.02026.i.i
  %.020.i.i = load i64, ptr %.020.in.i.i, align 8, !tbaa !33 ; 2 uses
  %.not.i.i64 = icmp eq i64 %.020.i.i, %.02026.i.i
  br i1 %.not.i.i64, label %.preheader.i.i, label %.lr.ph.i.i, !llvm.loop !74

.lr.ph29.i.i:                                     ; preds = %.lr.ph29.i.i, %.lr.ph29.i.i.preheader.new
  %.01828.i.i = phi i64 [ 0, %.lr.ph29.i.i.preheader.new ], [ %i.cs, %.lr.ph29.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph29.i.i.preheader.new ], [ %niter.next.3, %.lr.ph29.i.i ]
  %i.cd = getelementptr [8 x i8], ptr %i.v, i64 %.01828.i.i
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !33
  %i.cf = getelementptr [8 x i8], ptr %i.u, i64 %i.ce
  store i64 %.02026.i.i, ptr %i.cf, align 8, !tbaa !33
  %i.cg = getelementptr [8 x i8], ptr %i.v, i64 %.01828.i.i
  %i.ch = getelementptr i8, ptr %i.cg, i64 8
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !33
  %i.cj = getelementptr [8 x i8], ptr %i.u, i64 %i.ci
  store i64 %.02026.i.i, ptr %i.cj, align 8, !tbaa !33
  %i.ck = getelementptr [8 x i8], ptr %i.v, i64 %.01828.i.i
  %i.cl = getelementptr i8, ptr %i.ck, i64 16
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !33
  %i.cn = getelementptr [8 x i8], ptr %i.u, i64 %i.cm
  store i64 %.02026.i.i, ptr %i.cn, align 8, !tbaa !33
  %i.co = getelementptr [8 x i8], ptr %i.v, i64 %.01828.i.i
  %i.cp = getelementptr i8, ptr %i.co, i64 24
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !33
  %i.cr = getelementptr [8 x i8], ptr %i.u, i64 %i.cq
  store i64 %.02026.i.i, ptr %i.cr, align 8, !tbaa !33
  %i.cs = add nuw nsw i64 %.01828.i.i, 4          ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %set_divide_union_find_root.exit.i.loopexit.unr-lcssa, label %.lr.ph29.i.i, !llvm.loop !75

set_divide_union_find_root.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph29.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %set_divide_union_find_root.exit.i, label %.lr.ph29.i.i.epil.preheader

.lr.ph29.i.i.epil.preheader:                      ; preds = %set_divide_union_find_root.exit.i.loopexit.unr-lcssa, %.lr.ph29.i.i.preheader
  %.01828.i.i.epil.init = phi i64 [ 0, %.lr.ph29.i.i.preheader ], [ %i.cs, %set_divide_union_find_root.exit.i.loopexit.unr-lcssa ]
  %lcmp.mod115 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod115)
  br label %.lr.ph29.i.i.epil

.lr.ph29.i.i.epil:                                ; preds = %.lr.ph29.i.i.epil, %.lr.ph29.i.i.epil.preheader
  %.01828.i.i.epil = phi i64 [ %i.cw, %.lr.ph29.i.i.epil ], [ %.01828.i.i.epil.init, %.lr.ph29.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph29.i.i.epil ], [ 0, %.lr.ph29.i.i.epil.preheader ]
  %i.ct = getelementptr [8 x i8], ptr %i.v, i64 %.01828.i.i.epil
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !33
  %i.cv = getelementptr [8 x i8], ptr %i.u, i64 %i.cu
  store i64 %.02026.i.i, ptr %i.cv, align 8, !tbaa !33
  %i.cw = add nuw nsw i64 %.01828.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %set_divide_union_find_root.exit.i, label %.lr.ph29.i.i.epil, !llvm.loop !76

set_divide_union_find_root.exit.i:                ; preds = %set_divide_union_find_root.exit.i.loopexit.unr-lcssa, %.lr.ph29.i.i.epil, %.preheader.i.i, %bb.l
  %.020.lcssa33.i.i = phi i64 [ %.05691, %bb.l ], [ %.02026.i.i, %.preheader.i.i ], [ %.02026.i.i, %.lr.ph29.i.i.epil ], [ %.02026.i.i, %set_divide_union_find_root.exit.i.loopexit.unr-lcssa ] ; 2 uses
  %.020.in21.i11.i = getelementptr [8 x i8], ptr %i.u, i64 %.05588
  %.02022.i12.i = load i64, ptr %.020.in21.i11.i, align 8, !tbaa !33 ; 2 uses
  %.not23.i13.i = icmp eq i64 %.02022.i12.i, %.05588
  br i1 %.not23.i13.i, label %set_divide_union_find_root.exit26.i, label %.lr.ph.i14.i

.preheader.i21.i:                                 ; preds = %.lr.ph.i14.i
  %i.cx = icmp ult i64 %.01924.i17.i, 9223372036854775807
  br i1 %i.cx, label %.lr.ph29.i23.i.preheader, label %set_divide_union_find_root.exit26.i

.lr.ph29.i23.i.preheader:                         ; preds = %.preheader.i21.i
  %i.cy = add nuw i64 %.01924.i17.i, 1            ; 2 uses
  %xtraiter116 = and i64 %i.cy, 3                 ; 3 uses
  %i.cz = icmp ult i64 %.01924.i17.i, 3
  br i1 %i.cz, label %.lr.ph29.i23.i.epil.preheader, label %.lr.ph29.i23.i.preheader.new

.lr.ph29.i23.i.preheader.new:                     ; preds = %.lr.ph29.i23.i.preheader
  %unroll_iter120 = and i64 %i.cy, -4
  br label %.lr.ph29.i23.i

.lr.ph.i14.i:                                     ; preds = %set_divide_union_find_root.exit.i, %.lr.ph.i14.i
  %.02026.i15.i = phi i64 [ %.020.i19.i, %.lr.ph.i14.i ], [ %.02022.i12.i, %set_divide_union_find_root.exit.i ] ; 11 uses
  %.025.i16.i = phi i64 [ %.02026.i15.i, %.lr.ph.i14.i ], [ %.05588, %set_divide_union_find_root.exit.i ]
  %.01924.i17.i = phi i64 [ %i.da, %.lr.ph.i14.i ], [ 0, %set_divide_union_find_root.exit.i ] ; 5 uses
  %i.da = add i64 %.01924.i17.i, 1
  %i.db = getelementptr [8 x i8], ptr %i.v, i64 %.01924.i17.i
  store i64 %.025.i16.i, ptr %i.db, align 8, !tbaa !33
  %.020.in.i18.i = getelementptr [8 x i8], ptr %i.u, i64 %.02026.i15.i
  %.020.i19.i = load i64, ptr %.020.in.i18.i, align 8, !tbaa !33 ; 2 uses
  %.not.i20.i = icmp eq i64 %.020.i19.i, %.02026.i15.i
  br i1 %.not.i20.i, label %.preheader.i21.i, label %.lr.ph.i14.i, !llvm.loop !74

.lr.ph29.i23.i:                                   ; preds = %.lr.ph29.i23.i, %.lr.ph29.i23.i.preheader.new
  %.01828.i24.i = phi i64 [ 0, %.lr.ph29.i23.i.preheader.new ], [ %i.dr, %.lr.ph29.i23.i ] ; 5 uses
  %niter121 = phi i64 [ 0, %.lr.ph29.i23.i.preheader.new ], [ %niter121.next.3, %.lr.ph29.i23.i ]
  %i.dc = getelementptr [8 x i8], ptr %i.v, i64 %.01828.i24.i
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !33
  %i.de = getelementptr [8 x i8], ptr %i.u, i64 %i.dd
  store i64 %.02026.i15.i, ptr %i.de, align 8, !tbaa !33
  %i.df = getelementptr [8 x i8], ptr %i.v, i64 %.01828.i24.i
  %i.dg = getelementptr i8, ptr %i.df, i64 8
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !33
  %i.di = getelementptr [8 x i8], ptr %i.u, i64 %i.dh
  store i64 %.02026.i15.i, ptr %i.di, align 8, !tbaa !33
  %i.dj = getelementptr [8 x i8], ptr %i.v, i64 %.01828.i24.i
  %i.dk = getelementptr i8, ptr %i.dj, i64 16
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !33
  %i.dm = getelementptr [8 x i8], ptr %i.u, i64 %i.dl
  store i64 %.02026.i15.i, ptr %i.dm, align 8, !tbaa !33
  %i.dn = getelementptr [8 x i8], ptr %i.v, i64 %.01828.i24.i
  %i.do = getelementptr i8, ptr %i.dn, i64 24
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !33
  %i.dq = getelementptr [8 x i8], ptr %i.u, i64 %i.dp
  store i64 %.02026.i15.i, ptr %i.dq, align 8, !tbaa !33
  %i.dr = add nuw nsw i64 %.01828.i24.i, 4        ; 2 uses
  %niter121.next.3 = add i64 %niter121, 4         ; 2 uses
  %niter121.ncmp.3 = icmp eq i64 %niter121.next.3, %unroll_iter120
  br i1 %niter121.ncmp.3, label %set_divide_union_find_root.exit26.i.loopexit.unr-lcssa, label %.lr.ph29.i23.i, !llvm.loop !75

set_divide_union_find_root.exit26.i.loopexit.unr-lcssa: ; preds = %.lr.ph29.i23.i
  %lcmp.mod118.not = icmp eq i64 %xtraiter116, 0
  br i1 %lcmp.mod118.not, label %set_divide_union_find_root.exit26.i, label %.lr.ph29.i23.i.epil.preheader

.lr.ph29.i23.i.epil.preheader:                    ; preds = %set_divide_union_find_root.exit26.i.loopexit.unr-lcssa, %.lr.ph29.i23.i.preheader
  %.01828.i24.i.epil.init = phi i64 [ 0, %.lr.ph29.i23.i.preheader ], [ %i.dr, %set_divide_union_find_root.exit26.i.loopexit.unr-lcssa ]
  %lcmp.mod119 = icmp ne i64 %xtraiter116, 0
  call void @llvm.assume(i1 %lcmp.mod119)
  br label %.lr.ph29.i23.i.epil

.lr.ph29.i23.i.epil:                              ; preds = %.lr.ph29.i23.i.epil, %.lr.ph29.i23.i.epil.preheader
  %.01828.i24.i.epil = phi i64 [ %i.dv, %.lr.ph29.i23.i.epil ], [ %.01828.i24.i.epil.init, %.lr.ph29.i23.i.epil.preheader ] ; 2 uses
  %epil.iter117 = phi i64 [ %epil.iter117.next, %.lr.ph29.i23.i.epil ], [ 0, %.lr.ph29.i23.i.epil.preheader ]
  %i.ds = getelementptr [8 x i8], ptr %i.v, i64 %.01828.i24.i.epil
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !33
  %i.du = getelementptr [8 x i8], ptr %i.u, i64 %i.dt
  store i64 %.02026.i15.i, ptr %i.du, align 8, !tbaa !33
  %i.dv = add nuw nsw i64 %.01828.i24.i.epil, 1
  %epil.iter117.next = add i64 %epil.iter117, 1   ; 2 uses
  %epil.iter117.cmp.not = icmp eq i64 %epil.iter117.next, %xtraiter116
  br i1 %epil.iter117.cmp.not, label %set_divide_union_find_root.exit26.i, label %.lr.ph29.i23.i.epil, !llvm.loop !77

set_divide_union_find_root.exit26.i:              ; preds = %set_divide_union_find_root.exit26.i.loopexit.unr-lcssa, %.lr.ph29.i23.i.epil, %.preheader.i21.i, %set_divide_union_find_root.exit.i
  %.020.lcssa33.i22.i = phi i64 [ %.05588, %set_divide_union_find_root.exit.i ], [ %.02026.i15.i, %.preheader.i21.i ], [ %.02026.i15.i, %.lr.ph29.i23.i.epil ], [ %.02026.i15.i, %set_divide_union_find_root.exit26.i.loopexit.unr-lcssa ] ; 2 uses
  %.not.i65 = icmp eq i64 %.020.lcssa33.i.i, %.020.lcssa33.i22.i
  br i1 %.not.i65, label %set_divide_union_find_merge.exit, label %bb.m

bb.m:                                             ; preds = %set_divide_union_find_root.exit26.i
  %i.dw = getelementptr [8 x i8], ptr %i.u, i64 %.020.lcssa33.i22.i
  store i64 %.020.lcssa33.i.i, ptr %i.dw, align 8, !tbaa !33
  br label %set_divide_union_find_merge.exit

set_divide_union_find_merge.exit:                 ; preds = %bb.m, %set_divide_union_find_root.exit26.i, %bb.k, %RARRAY_AREF.exit63
  %i.dx = add nuw i64 %.05588, 1                  ; 2 uses
  %exitcond96.not = icmp eq i64 %i.dx, %.0.i8184110
  br i1 %exitcond96.not, label %.loopexit, label %bb.i, !llvm.loop !78
end_hunk_0
