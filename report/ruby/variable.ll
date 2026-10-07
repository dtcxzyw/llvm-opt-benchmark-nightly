Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/variable?download=true
inline.NumInlined: 730
inline.NumDeleted: 162
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@rb_const_defined_0:bb.a
  br i1 %.not5.i.i13.i, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.az = load i64, ptr %i.a, align 8, !tbaa !21
  %i.ba = inttoptr i64 %i.az to ptr
  br label %RCLASS_EXT_READABLE_LOOKUP.exit17.i

RCLASS_EXT_READABLE_LOOKUP.exit17.i:              ; preds = %bb.p, %bb.o, %RCLASS_CLASSEXT_TBL.exit.i.i11.i, %.split7.i
  %.0.i.i14.i = phi ptr [ %i.ba, %bb.p ], [ null, %bb.o ], [ null, %RCLASS_CLASSEXT_TBL.exit.i.i11.i ], [ null, %.split7.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %.not.i15.i = icmp eq ptr %.0.i.i14.i, null
  %i.bb = getelementptr i8, ptr %i.ai, i64 24
  %.0.i16.i = select i1 %.not.i15.i, ptr %i.bb, ptr %.0.i.i14.i
  br label %RCLASS_EXT_READABLE.exit

bb.q:                                             ; preds = %bb.n
  %i.bc = getelementptr i8, ptr %i.ai, i64 24
  br label %RCLASS_EXT_READABLE.exit

RCLASS_EXT_READABLE.exit:                         ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i, %.split.i, %RCLASS_EXT_READABLE_LOOKUP.exit17.i, %bb.q
  %.0.i33 = phi ptr [ %i.ao, %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i ], [ %i.bc, %bb.q ], [ %i.aq, %.split.i ], [ %.0.i16.i, %RCLASS_EXT_READABLE_LOOKUP.exit17.i ]
  %i.bd = getelementptr i8, ptr %.0.i33, i64 8
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !182 ; 2 uses
  %.not = icmp eq i64 %i.be, 0
  br i1 %.not, label %._crit_edge40, label %.lr.ph, !llvm.loop !217

._crit_edge40:                                    ; preds = %RCLASS_EXT_READABLE.exit, %.split42
  br i1 %or.cond, label %rb_autoloading_value.exit.thread, label %bb.r

bb.r:                                             ; preds = %._crit_edge40
  %i.bf = load i64, ptr %i.c, align 8, !tbaa !25
  %i.bg = and i64 %i.bf, 31
  %i.bh = icmp eq i64 %i.bg, 3
  br i1 %i.bh, label %bb.s, label %rb_autoloading_value.exit.thread

bb.s:                                             ; preds = %bb.r
  %i.bi = load i64, ptr @rb_cObject, align 8, !tbaa !21
  br label %.split42

rb_autoloading_value.exit.thread:                 ; preds = %bb.r, %._crit_edge40, %._crit_edge.split.us.us, %.lr.ph.us.1, %.split42.us.split.1, %.lr.ph.us.us, %.split42.us.split.us, %bb.h, %autoload_by_current.exit.i.i, %bb.i, %bb.f, %bb.e, %.thread.i.i, %bb.j, %bb.b, %bb.k
  %.021 = phi i32 [ 0, %bb.j ], [ 0, %autoload_by_current.exit.i.i ], [ 20, %bb.k ], [ 0, %bb.b ], [ 0, %bb.h ], [ 0, %.thread.i.i ], [ 0, %bb.e ], [ 0, %bb.f ], [ 0, %bb.i ], [ 0, %.lr.ph.us.us ], [ 0, %._crit_edge.split.us.us ], [ 0, %.split42.us.split.us ], [ 0, %.split42.us.split.1 ], [ 0, %.lr.ph.us.1 ], [ 0, %._crit_edge40 ], [ 0, %bb.r ]
  ret i32 %.021
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local range(i32 0, 21) i32 @rb_const_defined(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @rb_const_defined_0(i64 noundef %0, i64 noundef %1, i32 noundef 0, i32 noundef 1, i32 noundef 0)
  ret i32 %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define hidden range(i32 0, 21) i32 @rb_public_const_defined_from(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @rb_const_defined_0(i64 noundef %0, i64 noundef %1, i32 noundef 1, i32 noundef 1, i32 noundef 1)
  ret i32 %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @rb_const_set(i64 noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  tail call fastcc void @const_set(i64 noundef %0, i64 noundef %1, i64 noundef %2)
  %i.b = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !144
  %i.c = getelementptr i8, ptr %i.b, i64 508
  %i.d = load i8, ptr %i.c, align 4
  %i.e = and i8 %i.d, 1
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %const_added.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.f = tail call i64 @rb_id2sym(i64 noundef %1) #25
  store i64 %i.f, ptr %i.a, align 8, !tbaa !21
  %i.g = call i64 @rb_funcallv(i64 noundef %0, i64 noundef 2881, i32 noundef 1, ptr noundef nonnull %i.a) #25 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %const_added.exit

const_added.exit:                                 ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @const_set(i64 noundef %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %3 = alloca %struct.autoload_const, align 8     ; 10 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 3 uses
  %i.e = icmp eq i64 %0, 4
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load i64, ptr @rb_eTypeError, align 8, !tbaa !21
  %i.g = tail call fastcc i64 @QUOTE_ID(i64 noundef %1)
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.f, ptr noundef nonnull @.str.71, i64 noundef %i.g) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !42
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %rb_ractor_main_p.exit, label %rb_ractor_main_p.exit.thread

rb_ractor_main_p.exit:                            ; preds = %bb.c
  %i.i = tail call zeroext i1 @rb_ractor_main_p_() #25
  br i1 %i.i, label %rb_ractor_main_p.exit.thread, label %bb.d

bb.d:                                             ; preds = %rb_ractor_main_p.exit
  %i.j = icmp eq i64 %2, 0
  %i.k = and i64 %2, 7
  %i.l = icmp ne i64 %i.k, 0
  %i.m = or i1 %i.j, %i.l
  br i1 %i.m, label %rb_ractor_main_p.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = inttoptr i64 %2 to ptr
  %i.o = load i64, ptr %i.n, align 8, !tbaa !25
  %i.p = and i64 %i.o, 256
  %.not.i47 = icmp eq i64 %i.p, 0
  br i1 %.not.i47, label %rb_ractor_shareable_p.exit, label %rb_ractor_main_p.exit.thread

rb_ractor_shareable_p.exit:                       ; preds = %bb.e
  %i.q = tail call zeroext i1 @rb_ractor_shareable_p_continue(i64 noundef %2) #25
  br i1 %i.q, label %rb_ractor_main_p.exit.thread, label %bb.f

bb.f:                                             ; preds = %rb_ractor_shareable_p.exit
  %i.r = load i64, ptr @rb_eRactorIsolationError, align 8, !tbaa !21
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.r, ptr noundef nonnull @.str.72) #26
  unreachable

rb_ractor_main_p.exit.thread:                     ; preds = %bb.e, %bb.d, %bb.c, %rb_ractor_shareable_p.exit, %rb_ractor_main_p.exit
  %i.s = icmp ne i64 %0, 0
  %i.t = and i64 %0, 7
  %i.u = icmp eq i64 %i.t, 0
  %.not3.i.i.i = and i1 %i.s, %i.u
  br i1 %.not3.i.i.i, label %RB_OBJ_FROZEN.exit.i.i, label %RB_OBJ_FROZEN.exit.thread.i.i, !prof !108

RB_OBJ_FROZEN.exit.i.i:                           ; preds = %rb_ractor_main_p.exit.thread
  %i.v = inttoptr i64 %0 to ptr                   ; 4 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !25   ; 3 uses
  %i.x = and i64 %i.w, 2048
  %.not.i.i = icmp eq i64 %i.x, 0
  br i1 %.not.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, label %RB_OBJ_FROZEN.exit.thread.i.i, !prof !109

RB_OBJ_FROZEN.exit.thread.i.i:                    ; preds = %RB_OBJ_FROZEN.exit.i.i, %rb_ractor_main_p.exit.thread
  tail call void @rb_error_frozen_object(i64 noundef %0) #26
  unreachable

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %RB_OBJ_FROZEN.exit.i.i
  %i.y = and i64 %i.w, 31
  %i.z = icmp ne i64 %i.y, 5
  %i.aa = and i64 %i.w, 49152
  %.not8.i.i = icmp eq i64 %i.aa, 0
  %or.cond.i.i = or i1 %i.z, %.not8.i.i
  br i1 %or.cond.i.i, label %check_before_mod_set.exit, label %bb.g, !prof !110

bb.g:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  tail call void @rb_str_modify(i64 noundef %0) #25
  br label %check_before_mod_set.exit

check_before_mod_set.exit:                        ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.ab = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !42
  %.not.i.i49 = icmp eq ptr %i.ab, null
  br i1 %.not.i.i49, label %bb.h, label %rb_vm_lock_enter.exit

bb.h:                                             ; preds = %check_before_mod_set.exit
  call void @rb_vm_lock_enter_body(ptr noundef nonnull %i.a) #25
  br label %rb_vm_lock_enter.exit

rb_vm_lock_enter.exit:                            ; preds = %check_before_mod_set.exit, %bb.h
  %i.ac = getelementptr i8, ptr %i.v, i64 24      ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.aj = icmp eq i64 %2, 0
  %i.ak = and i64 %2, 7
  %i.al = icmp ne i64 %i.ak, 0
  %i.am = or i1 %i.aj, %i.al                      ; 2 uses
  %i.an = load i64, ptr %i.v, align 8, !tbaa !25
  %i.ao = and i64 %i.an, 16384
  %.not10.i = icmp eq i64 %i.ao, 0
  br i1 %.not10.i, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i, label %RCLASS_EXT_WRITABLE.exit, !prof !106

RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i:   ; preds = %rb_vm_lock_enter.exit
  %i.ap = call ptr @rb_current_box() #25          ; 3 uses
  %.not.i50 = icmp eq ptr %i.ap, null
  br i1 %.not.i50, label %RCLASS_EXT_WRITABLE.exit.sink.split, label %bb.i

bb.i:                                             ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i
  %i.aq = getelementptr i8, ptr %i.ap, i64 128
  %i.ar = load i8, ptr %i.aq, align 8, !tbaa !37, !range !38, !noundef !39
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %RCLASS_EXT_WRITABLE.exit.sink.split, label %RCLASS_EXT_WRITABLE.exit

RCLASS_EXT_WRITABLE.exit.sink.split:              ; preds = %bb.i, %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i
  %i.at = call fastcc ptr @RCLASS_EXT_WRITABLE_LOOKUP(i64 noundef %0, ptr noundef %i.ap)
  br label %RCLASS_EXT_WRITABLE.exit

RCLASS_EXT_WRITABLE.exit:                         ; preds = %RCLASS_EXT_WRITABLE.exit.sink.split, %bb.i, %rb_vm_lock_enter.exit
  %.0.i51 = phi ptr [ %i.ac, %bb.i ], [ %i.ac, %rb_vm_lock_enter.exit ], [ %i.at, %RCLASS_EXT_WRITABLE.exit.sink.split ]
  %i.au = getelementptr i8, ptr %.0.i51, i64 32
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !177
  %.not45 = icmp eq ptr %i.av, null
  br i1 %.not45, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i, label %bb.m

RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i:        ; preds = %RCLASS_EXT_WRITABLE.exit
  %i.aw = call ptr @rb_id_table_create(i64 noundef 0) #25 ; 2 uses
  %i.ax = load i64, ptr %i.v, align 8, !tbaa !25
  %i.ay = and i64 %i.ax, 16384
  %.not10.i.i = icmp eq i64 %i.ay, 0
  br i1 %.not10.i.i, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i, label %RCLASS_WRITE_CONST_TBL.exit, !prof !106

RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i: ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i
  %i.az = call ptr @rb_current_box() #25          ; 3 uses
  %.not.i.i52 = icmp eq ptr %i.az, null
  br i1 %.not.i.i52, label %RCLASS_WRITE_CONST_TBL.exit.sink.split, label %bb.j

bb.j:                                             ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i
  %i.ba = getelementptr i8, ptr %i.az, i64 128
  %i.bb = load i8, ptr %i.ba, align 8, !tbaa !37, !range !38, !noundef !39
  %i.bc = trunc nuw i8 %i.bb to i1
  br i1 %i.bc, label %RCLASS_WRITE_CONST_TBL.exit.sink.split, label %RCLASS_WRITE_CONST_TBL.exit

RCLASS_WRITE_CONST_TBL.exit.sink.split:           ; preds = %bb.j, %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i
  %i.bd = call fastcc ptr @RCLASS_EXT_WRITABLE_LOOKUP(i64 noundef %0, ptr noundef %i.az)
  br label %RCLASS_WRITE_CONST_TBL.exit

RCLASS_WRITE_CONST_TBL.exit:                      ; preds = %RCLASS_WRITE_CONST_TBL.exit.sink.split, %bb.j, %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i
  %.0.i.i = phi ptr [ %i.ac, %bb.j ], [ %i.ac, %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i ], [ %i.bd, %RCLASS_WRITE_CONST_TBL.exit.sink.split ]
  %i.be = getelementptr i8, ptr %.0.i.i, i64 32
  store ptr %i.aw, ptr %i.be, align 8, !tbaa !177
  call void @rb_clear_constant_cache_for_id(i64 noundef %1) #25
  %i.bf = call noalias nonnull dereferenceable(24) ptr @ruby_xcalloc(i64 noundef 1, i64 noundef 24) #30 ; 5 uses
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = call i32 @rb_id_table_insert(ptr noundef %i.aw, i64 noundef %1, i64 noundef %i.bg) #25 ; 0 uses
  store i32 0, ptr %i.bf, align 8, !tbaa !176
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store i64 %2, ptr %i.bi, align 8, !tbaa !21
  br i1 %i.am, label %rb_obj_write.exit.i, label %bb.k

bb.k:                                             ; preds = %RCLASS_WRITE_CONST_TBL.exit
  call void @rb_gc_writebarrier(i64 noundef %0, i64 noundef %2) #25
  br label %rb_obj_write.exit.i

rb_obj_write.exit.i:                              ; preds = %bb.k, %RCLASS_WRITE_CONST_TBL.exit
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bf, i64 4
  %i.bl = call i64 @rb_source_location(ptr noundef nonnull %i.bk) #25 ; 4 uses
  store i64 %i.bl, ptr %i.bj, align 8, !tbaa !21
  %i.bm = icmp eq i64 %i.bl, 0
  %i.bn = and i64 %i.bl, 7
  %i.bo = icmp ne i64 %i.bn, 0
  %i.bp = or i1 %i.bm, %i.bo
  br i1 %i.bp, label %setup_const_entry.exit, label %bb.l

bb.l:                                             ; preds = %rb_obj_write.exit.i
  call void @rb_gc_writebarrier(i64 noundef %0, i64 noundef %i.bl) #25
  br label %setup_const_entry.exit

bb.m:                                             ; preds = %RCLASS_EXT_WRITABLE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 32, i1 false)
  store i64 %0, ptr %i.ad, align 8, !tbaa !132
  store i64 %1, ptr %i.ae, align 8, !tbaa !137
  store i64 %2, ptr %i.af, align 8, !tbaa !133
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, i8 0, i64 24, i1 false)
  %i.bq = call i64 @rb_source_location(ptr noundef nonnull %i.ai) #25
  store i64 %i.bq, ptr %i.ah, align 8, !tbaa !187
  call fastcc void @const_tbl_update(ptr noundef nonnull %3, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %setup_const_entry.exit

setup_const_entry.exit:                           ; preds = %bb.l, %rb_obj_write.exit.i, %bb.m
  %i.br = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !42
  %.not.i.i53 = icmp eq ptr %i.br, null
  br i1 %.not.i.i53, label %bb.n, label %rb_vm_lock_leave.exit

bb.n:                                             ; preds = %setup_const_entry.exit
  call void @rb_vm_lock_leave_body(ptr noundef nonnull %i.a) #25
  br label %rb_vm_lock_leave.exit

rb_vm_lock_leave.exit:                            ; preds = %setup_const_entry.exit, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.bs = load i64, ptr @rb_cObject, align 8, !tbaa !21
  %.not44 = icmp eq i64 %i.bs, 0
  %brmerge65 = or i1 %.not44, %i.am
  br i1 %brmerge65, label %rb_namespace_p.exit.thread, label %rb_namespace_p.exit

rb_namespace_p.exit:                              ; preds = %rb_vm_lock_leave.exit
  %i.bt = inttoptr i64 %2 to ptr
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !25
  %i.bv = and i64 %i.bu, 30
  %switch.i = icmp eq i64 %i.bv, 2
  br i1 %switch.i, label %bb.o, label %rb_namespace_p.exit.thread

bb.o:                                             ; preds = %rb_namespace_p.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.bw = call fastcc i64 @classname(i64 noundef %2, ptr noundef nonnull %i.b)
  %i.bx = icmp ne i64 %i.bw, 4                    ; 2 uses
  %i.by = load i8, ptr %i.b, align 1, !range !38
  %i.bz = trunc nuw i8 %i.by to i1                ; 2 uses
  %or.cond = select i1 %i.bx, i1 %i.bz, i1 false
  br i1 %or.cond, label %bb.y, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ca = load i64, ptr @rb_cObject, align 8, !tbaa !21
  %i.cb = icmp eq i64 %0, %i.ca
  br i1 %i.cb, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cc = call i64 @rb_id2str(i64 noundef %1) #25
  call fastcc void @set_namespace_path(i64 noundef %2, i64 noundef %i.cc)
  br label %bb.y

bb.r:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  %i.cd = call fastcc i64 @classname(i64 noundef %0, ptr noundef nonnull %i.c) ; 2 uses
  %i.ce = icmp eq i64 %i.cd, 4
  br i1 %i.ce, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  %i.cf = call fastcc i64 @rb_tmp_class_path(i64 noundef %0, ptr noundef %i.d, ptr noundef nonnull @make_temporary_path)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.0 = phi i64 [ %i.cf, %bb.s ], [ %i.cd, %bb.r ] ; 2 uses
  %i.cg = load i8, ptr %i.c, align 1, !tbaa !23, !range !38, !noundef !39
  %i.ch = trunc nuw i8 %i.cg to i1                ; 2 uses
  %.not2 = xor i1 %i.ch, true
  %or.cond4 = select i1 %.not2, i1 true, i1 %i.bz
  br i1 %or.cond4, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ci = call i64 @rb_id2str(i64 noundef %1) #25
  %i.cj = call i64 @rb_str_dup(i64 noundef %.0) #25 ; 3 uses
  %i.ck = call i64 @rb_str_cat(i64 noundef %i.cj, ptr noundef nonnull @.str.43, i64 noundef 2) #25 ; 0 uses
  %i.cl = call i64 @rb_str_append(i64 noundef %i.cj, i64 noundef %i.ci) #25 ; 0 uses
  %i.cm = call i64 @rb_fstring(i64 noundef %i.cj) #25
  call fastcc void @set_namespace_path(i64 noundef %2, i64 noundef %i.cm)
  br label %bb.x

bb.v:                                             ; preds = %bb.t
  %brmerge = or i1 %i.bx, %i.ch
  br i1 %brmerge, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cn = call fastcc i64 @build_const_path(i64 noundef %.0, i64 noundef %1)
  call fastcc void @RCLASS_SET_CLASSPATH(i64 noundef %2, i64 noundef %i.cn, i1 noundef zeroext false)
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  br label %bb.y

bb.y:                                             ; preds = %bb.q, %bb.x, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  br label %rb_namespace_p.exit.thread

rb_namespace_p.exit.thread:                       ; preds = %rb_vm_lock_leave.exit, %bb.y, %rb_namespace_p.exit
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @rb_define_const(i64 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = tail call i64 @rb_intern(ptr noundef nonnull %1) #25 ; 3 uses
  %i.c = tail call i32 @rb_is_const_id(i64 noundef %i.b) #32
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @rb_warn(ptr noundef nonnull @.str.33, ptr noundef nonnull %1) #34
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = icmp eq i64 %2, 0
  %i.e = and i64 %2, 7
  %i.f = icmp ne i64 %i.e, 0
  %i.g = or i1 %i.d, %i.f
  br i1 %i.g, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @rb_vm_register_global_object(i64 noundef %2) #25
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  tail call fastcc void @const_set(i64 noundef %0, i64 noundef %i.b, i64 noundef %2)
  %i.h = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !144
  %i.i = getelementptr i8, ptr %i.h, i64 508
  %i.j = load i8, ptr %i.i, align 4
  %i.k = and i8 %i.j, 1
  %.not.i.i = icmp eq i8 %i.k, 0
  br i1 %.not.i.i, label %rb_const_set.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.l = tail call i64 @rb_id2sym(i64 noundef %i.b) #25
  store i64 %i.l, ptr %i.a, align 8, !tbaa !21
  %i.m = call i64 @rb_funcallv(i64 noundef %0, i64 noundef 2881, i32 noundef 1, ptr noundef nonnull %i.a) #25 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %rb_const_set.exit

rb_const_set.exit:                                ; preds = %bb.e, %bb.f
  ret void
}

; Function Attrs: cold
declare void @rb_warn(ptr noundef, ...) local_unnamed_addr #19

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @rb_define_global_const(ptr noundef nonnull %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr @rb_cObject, align 8, !tbaa !21
  tail call void @rb_define_const(i64 noundef %i.a, ptr noundef %0, i64 noundef %1)
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @rb_deprecate_constant(i64 noundef %0, ptr noundef nonnull %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #27 ; 2 uses
  tail call void @rb_class_modify_check(i64 noundef %0) #25
end_hunk_0
begin_hunk_1_@class_ivar_set:bb.a

RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i12: ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i17, %bb.z
  %i.da = call ptr @rb_current_box() #25          ; 3 uses
  %.not.i.i13 = icmp eq ptr %i.da, null
  br i1 %.not.i.i13, label %.split.i.i16, label %bb.ab

.split.i.i16:                                     ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i12
  %i.db = call fastcc ptr @RCLASS_EXT_WRITABLE_LOOKUP(i64 noundef %0, ptr noundef null)
  br label %RCLASS_EXT_WRITABLE.exit.i

bb.ab:                                            ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i12
  %i.dc = getelementptr i8, ptr %i.da, i64 128
  %i.dd = load i8, ptr %i.dc, align 8, !tbaa !37, !range !38, !noundef !39
  %i.de = trunc nuw i8 %i.dd to i1
  br i1 %i.de, label %.split7.i.i15, label %bb.ac

.split7.i.i15:                                    ; preds = %bb.ab
  %i.df = call fastcc ptr @RCLASS_EXT_WRITABLE_LOOKUP(i64 noundef %0, ptr noundef nonnull %i.da)
  br label %RCLASS_EXT_WRITABLE.exit.i

bb.ac:                                            ; preds = %bb.ab
  %i.dg = inttoptr i64 %0 to ptr
  %i.dh = getelementptr i8, ptr %i.dg, i64 24
  br label %RCLASS_EXT_WRITABLE.exit.i

RCLASS_EXT_WRITABLE.exit.i:                       ; preds = %bb.ac, %.split7.i.i15, %.split.i.i16, %bb.aa
  %.0.i.i14 = phi ptr [ %i.cz, %bb.aa ], [ %i.dh, %bb.ac ], [ %i.db, %.split.i.i16 ], [ %i.df, %.split7.i.i15 ]
  %i.di = getelementptr i8, ptr %.0.i.i14, i64 16
  store atomic volatile i64 %storemerge60.i, ptr %i.di seq_cst, align 8
  %i.dj = icmp eq i64 %storemerge60.i, 0
  %i.dk = and i64 %storemerge60.i, 7
  %i.dl = icmp ne i64 %i.dk, 0
  %i.dm = or i1 %i.dj, %i.dl
  br i1 %i.dm, label %RCLASS_WRITABLE_SET_FIELDS_OBJ.exit, label %bb.ad

bb.ad:                                            ; preds = %RCLASS_EXT_WRITABLE.exit.i
  call void @rb_gc_writebarrier(i64 noundef %0, i64 noundef %storemerge60.i) #25
  br label %RCLASS_WRITABLE_SET_FIELDS_OBJ.exit

RCLASS_WRITABLE_SET_FIELDS_OBJ.exit:              ; preds = %bb.ad, %RCLASS_EXT_WRITABLE.exit.i, %class_fields_ivar_set.exit.thread, %class_fields_ivar_set.exit
  %.0.i26 = phi i16 [ -1, %class_fields_ivar_set.exit.thread ], [ %.0.i, %class_fields_ivar_set.exit ], [ %.0.i, %RCLASS_EXT_WRITABLE.exit.i ], [ %.0.i, %bb.ad ]
  %storemerge60.i25 = phi i64 [ %i.r, %class_fields_ivar_set.exit.thread ], [ %i.r, %class_fields_ivar_set.exit ], [ %storemerge60.i, %RCLASS_EXT_WRITABLE.exit.i ], [ %storemerge60.i, %bb.ad ]
  %i.dn = inttoptr i64 %storemerge60.i25 to ptr
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !25
  %i.dp = and i64 %i.do, -4294967296
  %i.dq = inttoptr i64 %0 to ptr                  ; 2 uses
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !25
  %i.ds = and i64 %i.dr, 4294967295
  %i.dt = or disjoint i64 %i.ds, %i.dp
  store i64 %i.dt, ptr %i.dq, align 8, !tbaa !25
  ret i16 %.0.i26
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @rb_fields_tbl_copy(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ne i64 %1, 0
  %i.b = and i64 %1, 7
  %i.c = icmp eq i64 %i.b, 0
  %.not5.i.i.i.i = and i1 %i.a, %i.c
  br i1 %.not5.i.i.i.i, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i, !prof !108

RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i:        ; preds = %bb.a
  %i.d = inttoptr i64 %1 to ptr                   ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !25
  %i.f = and i64 %i.e, 16384
  %.not10.i.i = icmp eq i64 %i.f, 0
  br i1 %.not10.i.i, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i, label %bb.b, !prof !106

bb.b:                                             ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i
  %i.g = getelementptr i8, ptr %i.d, i64 24
  br label %RCLASS_WRITABLE_FIELDS_OBJ.exit

RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i: ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i, %bb.a
  %i.h = tail call ptr @rb_current_box() #25      ; 3 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %.split.i.i, label %bb.c

.split.i.i:                                       ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i
  %i.i = tail call fastcc ptr @RCLASS_EXT_WRITABLE_LOOKUP(i64 noundef %1, ptr noundef null)
  br label %RCLASS_WRITABLE_FIELDS_OBJ.exit

bb.c:                                             ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i
  %i.j = getelementptr i8, ptr %i.h, i64 128
  %i.k = load i8, ptr %i.j, align 8, !tbaa !37, !range !38, !noundef !39
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %.split7.i.i, label %bb.d

.split7.i.i:                                      ; preds = %bb.c
  %i.m = tail call fastcc ptr @RCLASS_EXT_WRITABLE_LOOKUP(i64 noundef %1, ptr noundef nonnull %i.h)
  br label %RCLASS_WRITABLE_FIELDS_OBJ.exit

bb.d:                                             ; preds = %bb.c
  %i.n = inttoptr i64 %1 to ptr
  %i.o = getelementptr i8, ptr %i.n, i64 24
  br label %RCLASS_WRITABLE_FIELDS_OBJ.exit

RCLASS_WRITABLE_FIELDS_OBJ.exit:                  ; preds = %bb.b, %.split.i.i, %.split7.i.i, %bb.d
  %.0.i.i = phi ptr [ %i.g, %bb.b ], [ %i.o, %bb.d ], [ %i.i, %.split.i.i ], [ %i.m, %.split7.i.i ]
  %i.p = getelementptr i8, ptr %.0.i.i, i64 16
  %i.q = load i64, ptr %i.p, align 8, !tbaa !97   ; 2 uses
  %.not = icmp eq i64 %i.q, 0
  br i1 %.not, label %bb.j, label %bb.e

bb.e:                                             ; preds = %RCLASS_WRITABLE_FIELDS_OBJ.exit
  %i.r = tail call i64 @rb_imemo_fields_clone(i64 noundef %i.q) #25 ; 4 uses
  %i.s = icmp ne i64 %0, 0
  %i.t = and i64 %0, 7
  %i.u = icmp eq i64 %i.t, 0
  %.not5.i.i.i.i6 = and i1 %i.s, %i.u
  br i1 %.not5.i.i.i.i6, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i12, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i7, !prof !108

RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i12:      ; preds = %bb.e
  %i.v = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !25
  %i.x = and i64 %i.w, 16384
  %.not10.i.i13 = icmp eq i64 %i.x, 0
  br i1 %.not10.i.i13, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i7, label %bb.f, !prof !106

bb.f:                                             ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i12
  %i.y = getelementptr i8, ptr %i.v, i64 24
  br label %RCLASS_EXT_WRITABLE.exit.i

RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i7: ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i12, %bb.e
  %i.z = tail call ptr @rb_current_box() #25      ; 3 uses
  %.not.i.i8 = icmp eq ptr %i.z, null
  br i1 %.not.i.i8, label %.split.i.i11, label %bb.g

.split.i.i11:                                     ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i7
  %i.aa = tail call fastcc ptr @RCLASS_EXT_WRITABLE_LOOKUP(i64 noundef %0, ptr noundef null)
  br label %RCLASS_EXT_WRITABLE.exit.i

bb.g:                                             ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i7
  %i.ab = getelementptr i8, ptr %i.z, i64 128
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !37, !range !38, !noundef !39
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %.split7.i.i10, label %bb.h

.split7.i.i10:                                    ; preds = %bb.g
  %i.ae = tail call fastcc ptr @RCLASS_EXT_WRITABLE_LOOKUP(i64 noundef %0, ptr noundef nonnull %i.z)
  br label %RCLASS_EXT_WRITABLE.exit.i

bb.h:                                             ; preds = %bb.g
  %i.af = inttoptr i64 %0 to ptr
  %i.ag = getelementptr i8, ptr %i.af, i64 24
  br label %RCLASS_EXT_WRITABLE.exit.i

RCLASS_EXT_WRITABLE.exit.i:                       ; preds = %bb.h, %.split7.i.i10, %.split.i.i11, %bb.f
  %.0.i.i9 = phi ptr [ %i.y, %bb.f ], [ %i.ag, %bb.h ], [ %i.aa, %.split.i.i11 ], [ %i.ae, %.split7.i.i10 ]
  %i.ah = getelementptr i8, ptr %.0.i.i9, i64 16
  store atomic volatile i64 %i.r, ptr %i.ah seq_cst, align 8
  %i.ai = icmp eq i64 %i.r, 0
  %i.aj = and i64 %i.r, 7
  %i.ak = icmp ne i64 %i.aj, 0
  %i.al = or i1 %i.ai, %i.ak
  br i1 %i.al, label %RCLASS_WRITABLE_SET_FIELDS_OBJ.exit, label %bb.i

bb.i:                                             ; preds = %RCLASS_EXT_WRITABLE.exit.i
  tail call void @rb_gc_writebarrier(i64 noundef %0, i64 noundef %i.r) #25
  br label %RCLASS_WRITABLE_SET_FIELDS_OBJ.exit

RCLASS_WRITABLE_SET_FIELDS_OBJ.exit:              ; preds = %RCLASS_EXT_WRITABLE.exit.i, %bb.i
  %i.am = inttoptr i64 %1 to ptr
  %i.an = load i64, ptr %i.am, align 8, !tbaa !25
  %i.ao = and i64 %i.an, -4294967296
  %i.ap = inttoptr i64 %0 to ptr                  ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !25
  %i.ar = and i64 %i.aq, 4294967295
  %i.as = or disjoint i64 %i.ar, %i.ao
  store i64 %i.as, ptr %i.ap, align 8, !tbaa !25
  br label %bb.j

bb.j:                                             ; preds = %RCLASS_WRITABLE_SET_FIELDS_OBJ.exit, %RCLASS_WRITABLE_FIELDS_OBJ.exit
  ret void
}

declare i64 @rb_imemo_fields_clone(i64 noundef) local_unnamed_addr #1

declare void @rb_vm_lock_enter_body(ptr noundef) local_unnamed_addr #1

declare i64 @rb_exec_recursive_paired(ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 0, 21) i64 @set_sub_temporary_name_topmost(i64 noundef %0, i64 noundef %1, i32 noundef %2) #0 {
bb.a:
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = inttoptr i64 %1 to ptr                   ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !48   ; 2 uses
  %.not11 = icmp eq i64 %i.b, 0
  br i1 %.not11, label %.sink.split, label %.split9

.split9:                                          ; preds = %bb.b
  %i.c = tail call i64 @rb_ary_hidden_new(i64 noundef 0) #25
  store i64 %i.c, ptr %i.a, align 8, !tbaa !48
  br label %.sink.split

.sink.split:                                      ; preds = %bb.b, %.split9
  tail call fastcc void @set_sub_temporary_name_foreach(i64 noundef %0, ptr noundef nonnull %i.a, i64 noundef %i.b)
  br label %bb.c

bb.c:                                             ; preds = %.sink.split, %bb.a
  %.0 = phi i64 [ 0, %bb.a ], [ 20, %.sink.split ]
  ret i64 %.0
}

declare i64 @rb_ary_hidden_new(i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @set_sub_temporary_name_foreach(i64 noundef %0, ptr noundef %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = icmp ne i64 %0, 0
  %i.c = and i64 %0, 7
  %i.d = icmp eq i64 %i.c, 0
  %.not5.i.i.i.i = and i1 %i.b, %i.d
  br i1 %.not5.i.i.i.i, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i, !prof !108

RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i:        ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !25
  %i.g = and i64 %i.f, 16384
  %.not10.i.i = icmp eq i64 %i.g, 0
  br i1 %.not10.i.i, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i, label %bb.b, !prof !106

bb.b:                                             ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i
  %i.h = getelementptr i8, ptr %i.e, i64 24
  br label %RCLASS_EXT_WRITABLE.exit.i

RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i: ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i, %bb.a
  %i.i = tail call ptr @rb_current_box() #25      ; 3 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %.split.i.i, label %bb.c

.split.i.i:                                       ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i
  %i.j = tail call fastcc ptr @RCLASS_EXT_WRITABLE_LOOKUP(i64 noundef %0, ptr noundef null)
  br label %RCLASS_EXT_WRITABLE.exit.i

bb.c:                                             ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i
  %i.k = getelementptr i8, ptr %i.i, i64 128
  %i.l = load i8, ptr %i.k, align 8, !tbaa !37, !range !38, !noundef !39
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %.split7.i.i, label %bb.d

.split7.i.i:                                      ; preds = %bb.c
  %i.n = tail call fastcc ptr @RCLASS_EXT_WRITABLE_LOOKUP(i64 noundef %0, ptr noundef nonnull %i.i)
  br label %RCLASS_EXT_WRITABLE.exit.i

bb.d:                                             ; preds = %bb.c
  %i.o = inttoptr i64 %0 to ptr
  %i.p = getelementptr i8, ptr %i.o, i64 24
  br label %RCLASS_EXT_WRITABLE.exit.i

RCLASS_EXT_WRITABLE.exit.i:                       ; preds = %bb.d, %.split7.i.i, %.split.i.i, %bb.b
  %.0.i.i = phi ptr [ %i.h, %bb.b ], [ %i.p, %bb.d ], [ %i.j, %.split.i.i ], [ %i.n, %.split7.i.i ] ; 2 uses
  %i.q = getelementptr i8, ptr %.0.i.i, i64 128
  store i64 %2, ptr %i.q, align 8, !tbaa !21
  %i.r = icmp eq i64 %2, 0                        ; 2 uses
  %i.s = and i64 %2, 7
  %i.t = icmp ne i64 %i.s, 0
  %i.u = or i1 %i.r, %i.t
  br i1 %i.u, label %RCLASS_WRITE_CLASSPATH.exit, label %bb.e

bb.e:                                             ; preds = %RCLASS_EXT_WRITABLE.exit.i
  tail call void @rb_gc_writebarrier(i64 noundef %0, i64 noundef %2) #25
  br label %RCLASS_WRITE_CLASSPATH.exit

RCLASS_WRITE_CLASSPATH.exit:                      ; preds = %RCLASS_EXT_WRITABLE.exit.i, %bb.e
  %i.v = getelementptr i8, ptr %.0.i.i, i64 125   ; 2 uses
  %i.w = load i8, ptr %i.v, align 1
  %i.x = and i8 %i.w, -2
  store i8 %i.x, ptr %i.v, align 1
  %i.y = inttoptr i64 %0 to ptr                   ; 7 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !25
  %i.aa = and i64 %i.z, 65536
  %.not.i.i15 = icmp eq i64 %i.aa, 0
  br i1 %.not.i.i15, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i

RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i:          ; preds = %RCLASS_WRITE_CLASSPATH.exit
  %i.ab = getelementptr i8, ptr %i.y, i64 160     ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !35
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i, label %bb.f

RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i:   ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i, %RCLASS_WRITE_CLASSPATH.exit
  %i.ae = getelementptr i8, ptr %i.y, i64 24
  br label %RCLASS_EXT_READABLE.exit

bb.f:                                             ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i
  %i.af = tail call ptr @rb_current_box() #25     ; 3 uses
  %.not.i = icmp eq ptr %i.af, null
  br i1 %.not.i, label %.split.i, label %bb.g

.split.i:                                         ; preds = %bb.f
  %i.ag = getelementptr i8, ptr %i.y, i64 24
  br label %RCLASS_EXT_READABLE.exit

bb.g:                                             ; preds = %bb.f
  %i.ah = getelementptr i8, ptr %i.af, i64 128
  %i.ai = load i8, ptr %i.ah, align 8, !tbaa !37, !range !38, !noundef !39
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %.split7.i, label %bb.j

.split7.i:                                        ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.ak = load i64, ptr %i.y, align 8, !tbaa !25
  %i.al = and i64 %i.ak, 65536
  %.not.i.i.i10.i = icmp eq i64 %i.al, 0
  br i1 %.not.i.i.i10.i, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i, label %RCLASS_CLASSEXT_TBL.exit.i.i11.i

RCLASS_CLASSEXT_TBL.exit.i.i11.i:                 ; preds = %.split7.i
  %i.am = load ptr, ptr %i.ab, align 8, !tbaa !35 ; 2 uses
  %.not.i.i12.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i12.i, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i, label %bb.h

bb.h:                                             ; preds = %RCLASS_CLASSEXT_TBL.exit.i.i11.i
  %i.an = load i64, ptr %i.af, align 8, !tbaa !40
  %i.ao = call i32 @rb_st_lookup(ptr noundef nonnull %i.am, i64 noundef %i.an, ptr noundef nonnull %i.a) #25
  %.not5.i.i13.i = icmp eq i32 %i.ao, 0
  br i1 %.not5.i.i13.i, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ap = load i64, ptr %i.a, align 8, !tbaa !21
  %i.aq = inttoptr i64 %i.ap to ptr
  br label %RCLASS_EXT_READABLE_LOOKUP.exit17.i

RCLASS_EXT_READABLE_LOOKUP.exit17.i:              ; preds = %bb.i, %bb.h, %RCLASS_CLASSEXT_TBL.exit.i.i11.i, %.split7.i
  %.0.i.i14.i = phi ptr [ %i.aq, %bb.i ], [ null, %bb.h ], [ null, %RCLASS_CLASSEXT_TBL.exit.i.i11.i ], [ null, %.split7.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %.not.i15.i = icmp eq ptr %.0.i.i14.i, null
  %i.ar = getelementptr i8, ptr %i.y, i64 24
  %.0.i16.i = select i1 %.not.i15.i, ptr %i.ar, ptr %.0.i.i14.i
  br label %RCLASS_EXT_READABLE.exit

bb.j:                                             ; preds = %bb.g
  %i.as = getelementptr i8, ptr %i.y, i64 24
  br label %RCLASS_EXT_READABLE.exit

RCLASS_EXT_READABLE.exit:                         ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i, %.split.i, %RCLASS_EXT_READABLE_LOOKUP.exit17.i, %bb.j
  %.0.i = phi ptr [ %i.ae, %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i ], [ %i.as, %bb.j ], [ %i.ag, %.split.i ], [ %.0.i16.i, %RCLASS_EXT_READABLE_LOOKUP.exit17.i ]
  %i.at = getelementptr i8, ptr %.0.i, i64 32
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !177 ; 3 uses
  %.not = icmp eq ptr %i.au, null
  br i1 %.not, label %bb.p, label %bb.k

bb.k:                                             ; preds = %RCLASS_EXT_READABLE.exit
  br i1 %i.r, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @rb_id_table_foreach(ptr noundef nonnull %i.au, ptr noundef nonnull @set_sub_temporary_name_i, ptr noundef %1) #25
  br label %bb.p

bb.m:                                             ; preds = %bb.k
  %i.av = load i64, ptr %1, align 8, !tbaa !48    ; 2 uses
  %i.aw = inttoptr i64 %i.av to ptr               ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !25 ; 2 uses
  %i.ay = and i64 %i.ax, 8192
  %.not.i16 = icmp eq i64 %i.ay, 0
  br i1 %.not.i16, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.az = lshr i64 %i.ax, 15
  %i.ba = and i64 %i.az, 127
  br label %rb_array_len.exit

bb.o:                                             ; preds = %bb.m
  %i.bb = getelementptr i8, ptr %i.aw, i64 16
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !45
  br label %rb_array_len.exit

rb_array_len.exit:                                ; preds = %bb.n, %bb.o
  %.0.i17 = phi i64 [ %i.ba, %bb.n ], [ %i.bc, %bb.o ]
  %i.bd = call i64 @rb_ary_push(i64 noundef %i.av, i64 noundef %2) #25 ; 0 uses
  call void @rb_id_table_foreach(ptr noundef nonnull %i.au, ptr noundef nonnull @set_sub_temporary_name_i, ptr noundef nonnull %1) #25
  %i.be = load i64, ptr %1, align 8, !tbaa !48
  call void @rb_ary_set_len(i64 noundef %i.be, i64 noundef %.0.i17) #25
  br label %bb.p

bb.p:                                             ; preds = %bb.l, %rb_array_len.exit, %RCLASS_EXT_READABLE.exit
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @set_sub_temporary_name_i(i64 noundef %0, i64 noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = inttoptr i64 %1 to ptr
  %i.c = getelementptr i8, ptr %i.b, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !146  ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  %i.f = and i64 %i.d, 7
  %i.g = icmp ne i64 %i.f, 0
  %i.h = or i1 %i.e, %i.g
  br i1 %i.h, label %rb_namespace_p.exit.thread, label %rb_namespace_p.exit

rb_namespace_p.exit:                              ; preds = %bb.a
  %i.i = inttoptr i64 %i.d to ptr                 ; 7 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !25   ; 2 uses
  %i.k = and i64 %i.j, 30
end_hunk_1
begin_hunk_2_@RCLASS_EXT_WRITABLE_LOOKUP:bb.a
  %.not.i.i32 = icmp eq i64 %i.ap, 0
  br i1 %.not.i.i32, label %RCLASS_CLASSEXT_TBL.exit.thread.i, label %RCLASS_CLASSEXT_TBL.exit.i33

RCLASS_CLASSEXT_TBL.exit.i33:                     ; preds = %bb.i
  %i.aq = load ptr, ptr %i.n, align 8, !tbaa !35  ; 2 uses
  %.not.i34 = icmp eq ptr %i.aq, null
  br i1 %.not.i34, label %RCLASS_CLASSEXT_TBL.exit.thread.i, label %RCLASS_SET_BOX_CLASSEXT.exit

RCLASS_CLASSEXT_TBL.exit.thread.i:                ; preds = %RCLASS_CLASSEXT_TBL.exit.i33, %bb.i
  %i.ar = call ptr @rb_st_init_numtable_with_size(i64 noundef 1) #25 ; 2 uses
  store ptr %i.ar, ptr %i.n, align 8, !tbaa !35
  br label %RCLASS_SET_BOX_CLASSEXT.exit

RCLASS_SET_BOX_CLASSEXT.exit:                     ; preds = %RCLASS_CLASSEXT_TBL.exit.i33, %RCLASS_CLASSEXT_TBL.exit.thread.i
  %.0.i35 = phi ptr [ %i.aq, %RCLASS_CLASSEXT_TBL.exit.i33 ], [ %i.ar, %RCLASS_CLASSEXT_TBL.exit.thread.i ]
  %i.as = call i64 @rb_st_table_size(ptr noundef %.0.i35) #25 ; 0 uses
  call void @rb_class_set_box_classext(i64 noundef %0, ptr noundef %1, ptr noundef %i.an) #25
  br label %RCLASS_SET_PRIME_CLASSEXT_WRITABLE.exit

RCLASS_SET_PRIME_CLASSEXT_WRITABLE.exit:          ; preds = %RCLASS_SET_BOX_CLASSEXT.exit, %RCLASS_EXT_TABLE_LOOKUP_INTERNAL.exit31
  %.1 = phi ptr [ %i.am, %RCLASS_EXT_TABLE_LOOKUP_INTERNAL.exit31 ], [ %i.an, %RCLASS_SET_BOX_CLASSEXT.exit ] ; 2 uses
  %i.at = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !42
  %.not.i.i36 = icmp eq ptr %i.at, null
  br i1 %.not.i.i36, label %rb_vm_lock_leave.exit.sink.split, label %rb_vm_lock_leave.exit

bb.j:                                             ; preds = %RCLASS_EXT_TABLE_LOOKUP_INTERNAL.exit, %rb_vm_lock_leave.exit
  %.018 = phi ptr [ %.us-phi, %rb_vm_lock_leave.exit ], [ %i.l, %RCLASS_EXT_TABLE_LOOKUP_INTERNAL.exit ]
  ret ptr %.018
}

declare ptr @rb_class_duplicate_classext(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare void @rb_class_set_box_classext(i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i64 @rb_hash_delete(i64 noundef, i64 noundef) local_unnamed_addr #1

declare i32 @rb_st_update(ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable
define internal range(i32 0, 2) i32 @cv_i_update(ptr nofree readnone captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2, i32 noundef %3) #8 {
bb.a:
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 %2, ptr %1, align 8, !tbaa !21
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 1, %bb.a ]
  ret i32 %.0
}

declare i64 @rb_id_table_size(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @rb_local_constants_i(i64 noundef %0, i64 noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = tail call i32 @rb_is_const_id(i64 noundef %0) #32
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = inttoptr i64 %1 to ptr
  %i.c = load i32, ptr %i.b, align 8, !tbaa !176
  %i.d = and i32 %i.c, 255
  %i.e = icmp eq i32 %i.d, 1
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = ptrtoint ptr %2 to i64
  %i.g = tail call i64 @rb_id2sym(i64 noundef %0) #25
  %i.h = tail call i64 @rb_ary_push(i64 noundef %i.f, i64 noundef %i.g) #25 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret i32 0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @set_namespace_path(i64 noundef %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  store i64 %1, ptr %i.b, align 8, !tbaa !21
  %i.d = inttoptr i64 %0 to ptr                   ; 9 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !25
  %i.f = and i64 %i.e, 65536
  %.not.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.i.i, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i

RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i:          ; preds = %bb.a
  %i.g = getelementptr i8, ptr %i.d, i64 160      ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !35
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i, label %bb.b

RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i:   ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i, %bb.a
  %i.j = getelementptr i8, ptr %i.d, i64 24
  br label %RCLASS_EXT_READABLE.exit

bb.b:                                             ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i
  %i.k = tail call ptr @rb_current_box() #25      ; 3 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %.split.i, label %bb.c

.split.i:                                         ; preds = %bb.b
  %i.l = getelementptr i8, ptr %i.d, i64 24
  br label %RCLASS_EXT_READABLE.exit

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr i8, ptr %i.k, i64 128
  %i.n = load i8, ptr %i.m, align 8, !tbaa !37, !range !38, !noundef !39
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %.split7.i, label %bb.f

.split7.i:                                        ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.p = load i64, ptr %i.d, align 8, !tbaa !25
  %i.q = and i64 %i.p, 65536
  %.not.i.i.i10.i = icmp eq i64 %i.q, 0
  br i1 %.not.i.i.i10.i, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i, label %RCLASS_CLASSEXT_TBL.exit.i.i11.i

RCLASS_CLASSEXT_TBL.exit.i.i11.i:                 ; preds = %.split7.i
  %i.r = load ptr, ptr %i.g, align 8, !tbaa !35   ; 2 uses
  %.not.i.i12.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i12.i, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i, label %bb.d

bb.d:                                             ; preds = %RCLASS_CLASSEXT_TBL.exit.i.i11.i
  %i.s = load i64, ptr %i.k, align 8, !tbaa !40
  %i.t = call i32 @rb_st_lookup(ptr noundef nonnull %i.r, i64 noundef %i.s, ptr noundef nonnull %i.a) #25
  %.not5.i.i13.i = icmp eq i32 %i.t, 0
  br i1 %.not5.i.i13.i, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = load i64, ptr %i.a, align 8, !tbaa !21
  %i.v = inttoptr i64 %i.u to ptr
  br label %RCLASS_EXT_READABLE_LOOKUP.exit17.i

RCLASS_EXT_READABLE_LOOKUP.exit17.i:              ; preds = %bb.e, %bb.d, %RCLASS_CLASSEXT_TBL.exit.i.i11.i, %.split7.i
  %.0.i.i14.i = phi ptr [ %i.v, %bb.e ], [ null, %bb.d ], [ null, %RCLASS_CLASSEXT_TBL.exit.i.i11.i ], [ null, %.split7.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %.not.i15.i = icmp eq ptr %.0.i.i14.i, null
  %i.w = getelementptr i8, ptr %i.d, i64 24
  %.0.i16.i = select i1 %.not.i15.i, ptr %i.w, ptr %.0.i.i14.i
  %.pre = load i64, ptr %i.b, align 8, !tbaa !21
  br label %RCLASS_EXT_READABLE.exit

bb.f:                                             ; preds = %bb.c
  %i.x = getelementptr i8, ptr %i.d, i64 24
  br label %RCLASS_EXT_READABLE.exit

RCLASS_EXT_READABLE.exit:                         ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i, %.split.i, %RCLASS_EXT_READABLE_LOOKUP.exit17.i, %bb.f
  %i.y = phi i64 [ %1, %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i ], [ %1, %bb.f ], [ %1, %.split.i ], [ %.pre, %RCLASS_EXT_READABLE_LOOKUP.exit17.i ]
  %.0.i = phi ptr [ %i.j, %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i ], [ %i.x, %bb.f ], [ %i.l, %.split.i ], [ %.0.i16.i, %RCLASS_EXT_READABLE_LOOKUP.exit17.i ]
  %i.z = getelementptr i8, ptr %.0.i, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !177
  %.fr = freeze ptr %i.aa                         ; 3 uses
  %i.ab = call i64 @rb_obj_set_shareable(i64 noundef %i.y) #25 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  %i.ac = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !42
  %.not.i.i6 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i6, label %bb.g, label %rb_vm_lock_enter.exit

bb.g:                                             ; preds = %RCLASS_EXT_READABLE.exit
  call void @rb_vm_lock_enter_body(ptr noundef nonnull %i.c) #25
  br label %rb_vm_lock_enter.exit

rb_vm_lock_enter.exit:                            ; preds = %RCLASS_EXT_READABLE.exit, %bb.g
  %i.ad = icmp ne i64 %0, 0
  %i.ae = and i64 %0, 7
  %i.af = icmp eq i64 %i.ae, 0
  %.not5.i.i.i.i = and i1 %i.ad, %i.af
  %i.ag = getelementptr i8, ptr %i.d, i64 24      ; 6 uses
  %.not5 = icmp eq ptr %.fr, null                 ; 2 uses
  %i.ah = load i64, ptr %i.b, align 8, !tbaa !21  ; 16 uses
  br i1 %.not5.i.i.i.i, label %rb_vm_lock_enter.exit.split.us, label %rb_vm_lock_enter.exit.split, !prof !108

rb_vm_lock_enter.exit.split.us:                   ; preds = %rb_vm_lock_enter.exit
  %i.ai = load i64, ptr %i.d, align 8, !tbaa !25
  %i.aj = and i64 %i.ai, 16384
  %.not10.i.i.us.us = icmp eq i64 %i.aj, 0        ; 2 uses
  br i1 %.not5, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i.us.us, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i.us

RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i.us.us:  ; preds = %rb_vm_lock_enter.exit.split.us
  br i1 %.not10.i.i.us.us, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i.us.us, label %RCLASS_EXT_WRITABLE.exit.i.us.us, !prof !106

RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i.us.us: ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i.us.us
  %i.ak = call ptr @rb_current_box() #25          ; 3 uses
  %.not.i.i7.us.us = icmp eq ptr %i.ak, null
  br i1 %.not.i.i7.us.us, label %RCLASS_EXT_WRITABLE.exit.i.us.us.sink.split, label %bb.h

bb.h:                                             ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i.us.us
  %i.al = getelementptr i8, ptr %i.ak, i64 128
  %i.am = load i8, ptr %i.al, align 8, !tbaa !37, !range !38, !noundef !39
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %RCLASS_EXT_WRITABLE.exit.i.us.us.sink.split, label %RCLASS_EXT_WRITABLE.exit.i.us.us

RCLASS_EXT_WRITABLE.exit.i.us.us.sink.split:      ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i.us.us, %bb.h
  %i.ao = call fastcc ptr @RCLASS_EXT_WRITABLE_LOOKUP(i64 noundef %0, ptr noundef %i.ak)
  br label %RCLASS_EXT_WRITABLE.exit.i.us.us

RCLASS_EXT_WRITABLE.exit.i.us.us:                 ; preds = %RCLASS_EXT_WRITABLE.exit.i.us.us.sink.split, %bb.h, %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i.us.us
  %.0.i.i.us.us = phi ptr [ %i.ag, %bb.h ], [ %i.ag, %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i.us.us ], [ %i.ao, %RCLASS_EXT_WRITABLE.exit.i.us.us.sink.split ] ; 2 uses
  %i.ap = getelementptr i8, ptr %.0.i.i.us.us, i64 128
  store i64 %i.ah, ptr %i.ap, align 8, !tbaa !21
  %i.aq = icmp eq i64 %i.ah, 0
  %i.ar = and i64 %i.ah, 7
  %i.as = icmp ne i64 %i.ar, 0
  %i.at = or i1 %i.aq, %i.as
  br i1 %i.at, label %RCLASS_WRITE_CLASSPATH.exit.us.us, label %bb.i

bb.i:                                             ; preds = %RCLASS_EXT_WRITABLE.exit.i.us.us
  call void @rb_gc_writebarrier(i64 noundef %0, i64 noundef %i.ah) #25
  br label %RCLASS_WRITE_CLASSPATH.exit.us.us

RCLASS_WRITE_CLASSPATH.exit.us.us:                ; preds = %bb.i, %RCLASS_EXT_WRITABLE.exit.i.us.us
  %i.au = getelementptr i8, ptr %.0.i.i.us.us, i64 125 ; 2 uses
  %i.av = load i8, ptr %i.au, align 1
  %i.aw = or i8 %i.av, 1
  store i8 %i.aw, ptr %i.au, align 1
  %i.ax = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !42
  %.not.i.i8.us.us = icmp eq ptr %i.ax, null
  br i1 %.not.i.i8.us.us, label %.split.us.sink.split, label %.split.us

RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i.us:     ; preds = %rb_vm_lock_enter.exit.split.us
  br i1 %.not10.i.i.us.us, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i.us, label %RCLASS_EXT_WRITABLE.exit.i.us, !prof !106

RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i.us: ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i.us
  %i.ay = call ptr @rb_current_box() #25          ; 3 uses
  %.not.i.i7.us = icmp eq ptr %i.ay, null
  br i1 %.not.i.i7.us, label %RCLASS_EXT_WRITABLE.exit.i.us.sink.split, label %bb.j

bb.j:                                             ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i.us
  %i.az = getelementptr i8, ptr %i.ay, i64 128
  %i.ba = load i8, ptr %i.az, align 8, !tbaa !37, !range !38, !noundef !39
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %RCLASS_EXT_WRITABLE.exit.i.us.sink.split, label %RCLASS_EXT_WRITABLE.exit.i.us

RCLASS_EXT_WRITABLE.exit.i.us.sink.split:         ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i.us, %bb.j
  %i.bc = call fastcc ptr @RCLASS_EXT_WRITABLE_LOOKUP(i64 noundef %0, ptr noundef %i.ay)
  br label %RCLASS_EXT_WRITABLE.exit.i.us

RCLASS_EXT_WRITABLE.exit.i.us:                    ; preds = %RCLASS_EXT_WRITABLE.exit.i.us.sink.split, %bb.j, %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i.us
  %.0.i.i.us = phi ptr [ %i.ag, %bb.j ], [ %i.ag, %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i.us ], [ %i.bc, %RCLASS_EXT_WRITABLE.exit.i.us.sink.split ] ; 2 uses
  %i.bd = getelementptr i8, ptr %.0.i.i.us, i64 128
  store i64 %i.ah, ptr %i.bd, align 8, !tbaa !21
  %i.be = icmp eq i64 %i.ah, 0
  %i.bf = and i64 %i.ah, 7
  %i.bg = icmp ne i64 %i.bf, 0
  %i.bh = or i1 %i.be, %i.bg
  br i1 %i.bh, label %RCLASS_WRITE_CLASSPATH.exit.us, label %bb.k

bb.k:                                             ; preds = %RCLASS_EXT_WRITABLE.exit.i.us
  call void @rb_gc_writebarrier(i64 noundef %0, i64 noundef %i.ah) #25
  br label %RCLASS_WRITE_CLASSPATH.exit.us

RCLASS_WRITE_CLASSPATH.exit.us:                   ; preds = %bb.k, %RCLASS_EXT_WRITABLE.exit.i.us
  %i.bi = getelementptr i8, ptr %.0.i.i.us, i64 125 ; 2 uses
  %i.bj = load i8, ptr %i.bi, align 1
  %i.bk = or i8 %i.bj, 1
  store i8 %i.bk, ptr %i.bi, align 1
  call void @rb_id_table_foreach(ptr noundef nonnull %.fr, ptr noundef nonnull @set_namespace_path_i, ptr noundef nonnull %i.b) #25
  %i.bl = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !42
  %.not.i.i8.us = icmp eq ptr %i.bl, null
  br i1 %.not.i.i8.us, label %.split.us.sink.split, label %.split.us

rb_vm_lock_enter.exit.split:                      ; preds = %rb_vm_lock_enter.exit
  %i.bm = call ptr @rb_current_box() #25          ; 5 uses
  %.not.i.i7.us10 = icmp eq ptr %i.bm, null       ; 2 uses
  br i1 %.not5, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i.us9, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i

RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i.us9: ; preds = %rb_vm_lock_enter.exit.split
  br i1 %.not.i.i7.us10, label %RCLASS_EXT_WRITABLE.exit.i.us13.sink.split, label %bb.l

bb.l:                                             ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i.us9
  %i.bn = getelementptr i8, ptr %i.bm, i64 128
  %i.bo = load i8, ptr %i.bn, align 8, !tbaa !37, !range !38, !noundef !39
  %i.bp = trunc nuw i8 %i.bo to i1
  br i1 %i.bp, label %RCLASS_EXT_WRITABLE.exit.i.us13.sink.split, label %RCLASS_EXT_WRITABLE.exit.i.us13

RCLASS_EXT_WRITABLE.exit.i.us13.sink.split:       ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i.us9, %bb.l
  %i.bq = call fastcc ptr @RCLASS_EXT_WRITABLE_LOOKUP(i64 noundef %0, ptr noundef %i.bm)
  br label %RCLASS_EXT_WRITABLE.exit.i.us13

RCLASS_EXT_WRITABLE.exit.i.us13:                  ; preds = %RCLASS_EXT_WRITABLE.exit.i.us13.sink.split, %bb.l
  %.0.i.i.us14 = phi ptr [ %i.ag, %bb.l ], [ %i.bq, %RCLASS_EXT_WRITABLE.exit.i.us13.sink.split ] ; 2 uses
  %i.br = getelementptr i8, ptr %.0.i.i.us14, i64 128
  store i64 %i.ah, ptr %i.br, align 8, !tbaa !21
  %i.bs = icmp eq i64 %i.ah, 0
  %i.bt = and i64 %i.ah, 7
  %i.bu = icmp ne i64 %i.bt, 0
  %i.bv = or i1 %i.bs, %i.bu
  br i1 %i.bv, label %RCLASS_WRITE_CLASSPATH.exit.us15, label %bb.m

bb.m:                                             ; preds = %RCLASS_EXT_WRITABLE.exit.i.us13
  call void @rb_gc_writebarrier(i64 noundef %0, i64 noundef %i.ah) #25
  br label %RCLASS_WRITE_CLASSPATH.exit.us15

RCLASS_WRITE_CLASSPATH.exit.us15:                 ; preds = %bb.m, %RCLASS_EXT_WRITABLE.exit.i.us13
  %i.bw = getelementptr i8, ptr %.0.i.i.us14, i64 125 ; 2 uses
  %i.bx = load i8, ptr %i.bw, align 1
  %i.by = or i8 %i.bx, 1
  store i8 %i.by, ptr %i.bw, align 1
  %i.bz = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !42
  %.not.i.i8.us16 = icmp eq ptr %i.bz, null
  br i1 %.not.i.i8.us16, label %.split.us.sink.split, label %.split.us

.split.us.sink.split:                             ; preds = %RCLASS_WRITE_CLASSPATH.exit.us15, %RCLASS_WRITE_CLASSPATH.exit.us, %RCLASS_WRITE_CLASSPATH.exit.us.us, %RCLASS_WRITE_CLASSPATH.exit
  call void @rb_vm_lock_leave_body(ptr noundef nonnull %i.c) #25
  br label %.split.us

.split.us:                                        ; preds = %.split.us.sink.split, %RCLASS_WRITE_CLASSPATH.exit, %RCLASS_WRITE_CLASSPATH.exit.us15, %RCLASS_WRITE_CLASSPATH.exit.us.us, %RCLASS_WRITE_CLASSPATH.exit.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  ret void

RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i: ; preds = %rb_vm_lock_enter.exit.split
  br i1 %.not.i.i7.us10, label %RCLASS_EXT_WRITABLE.exit.i.sink.split, label %bb.n

bb.n:                                             ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i
  %i.ca = getelementptr i8, ptr %i.bm, i64 128
  %i.cb = load i8, ptr %i.ca, align 8, !tbaa !37, !range !38, !noundef !39
  %i.cc = trunc nuw i8 %i.cb to i1
  br i1 %i.cc, label %RCLASS_EXT_WRITABLE.exit.i.sink.split, label %RCLASS_EXT_WRITABLE.exit.i

RCLASS_EXT_WRITABLE.exit.i.sink.split:            ; preds = %bb.n, %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i
  %i.cd = call fastcc ptr @RCLASS_EXT_WRITABLE_LOOKUP(i64 noundef %0, ptr noundef %i.bm)
  br label %RCLASS_EXT_WRITABLE.exit.i

RCLASS_EXT_WRITABLE.exit.i:                       ; preds = %RCLASS_EXT_WRITABLE.exit.i.sink.split, %bb.n
  %.0.i.i = phi ptr [ %i.ag, %bb.n ], [ %i.cd, %RCLASS_EXT_WRITABLE.exit.i.sink.split ] ; 2 uses
  %i.ce = getelementptr i8, ptr %.0.i.i, i64 128
  store i64 %i.ah, ptr %i.ce, align 8, !tbaa !21
  %i.cf = icmp eq i64 %i.ah, 0
  %i.cg = and i64 %i.ah, 7
  %i.ch = icmp ne i64 %i.cg, 0
  %i.ci = or i1 %i.cf, %i.ch
  br i1 %i.ci, label %RCLASS_WRITE_CLASSPATH.exit, label %bb.o

bb.o:                                             ; preds = %RCLASS_EXT_WRITABLE.exit.i
  call void @rb_gc_writebarrier(i64 noundef %0, i64 noundef %i.ah) #25
  br label %RCLASS_WRITE_CLASSPATH.exit

RCLASS_WRITE_CLASSPATH.exit:                      ; preds = %RCLASS_EXT_WRITABLE.exit.i, %bb.o
  %i.cj = getelementptr i8, ptr %.0.i.i, i64 125  ; 2 uses
  %i.ck = load i8, ptr %i.cj, align 1
  %i.cl = or i8 %i.ck, 1
  store i8 %i.cl, ptr %i.cj, align 1
  call void @rb_id_table_foreach(ptr noundef nonnull %.fr, ptr noundef nonnull @set_namespace_path_i, ptr noundef nonnull %i.b) #25
  %i.cm = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !42
  %.not.i.i8 = icmp eq ptr %i.cm, null
  br i1 %.not.i.i8, label %.split.us.sink.split, label %.split.us
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @set_namespace_path_i(i64 noundef %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = inttoptr i64 %1 to ptr
  %i.d = getelementptr i8, ptr %i.c, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !146  ; 7 uses
  %i.f = load i64, ptr %2, align 8, !tbaa !21
  %i.g = tail call i32 @rb_is_const_id(i64 noundef %0) #32
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %rb_namespace_p.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = icmp eq i64 %i.e, 0
  %i.i = and i64 %i.e, 7
  %i.j = icmp ne i64 %i.i, 0
  %i.k = or i1 %i.h, %i.j
  br i1 %i.k, label %rb_namespace_p.exit.thread, label %rb_namespace_p.exit

rb_namespace_p.exit:                              ; preds = %bb.b
  %i.l = inttoptr i64 %i.e to ptr                 ; 11 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !25
  %i.n = and i64 %i.m, 30
  %switch.i = icmp eq i64 %i.n, 2
  br i1 %switch.i, label %bb.c, label %rb_namespace_p.exit.thread

bb.c:                                             ; preds = %rb_namespace_p.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.o = call fastcc i64 @classname(i64 noundef %i.e, ptr noundef nonnull %i.b) ; 0 uses
  %i.p = load i8, ptr %i.b, align 1, !tbaa !23, !range !38, !noundef !39
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.m, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = tail call i64 @rb_id2str(i64 noundef %0) #25
  %i.s = tail call i64 @rb_str_dup(i64 noundef %i.f) #25 ; 3 uses
  %i.t = tail call i64 @rb_str_cat(i64 noundef %i.s, ptr noundef nonnull @.str.43, i64 noundef 2) #25 ; 0 uses
  %i.u = tail call i64 @rb_str_append(i64 noundef %i.s, i64 noundef %i.r) #25 ; 0 uses
  %i.v = tail call i64 @rb_fstring(i64 noundef %i.s) #25
  tail call fastcc void @set_namespace_path(i64 noundef %i.e, i64 noundef %i.v)
  %i.w = load i64, ptr %i.l, align 8, !tbaa !25
  %i.x = and i64 %i.w, 65536
  %.not.i.i = icmp eq i64 %i.x, 0
  br i1 %.not.i.i, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i

RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i:          ; preds = %bb.d
  %i.y = getelementptr i8, ptr %i.l, i64 160      ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !35
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i, label %bb.e

RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i:   ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i, %bb.d
  %i.ab = getelementptr i8, ptr %i.l, i64 24
  br label %RCLASS_EXT_READABLE.exit

bb.e:                                             ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i
  %i.ac = tail call ptr @rb_current_box() #25     ; 3 uses
  %.not.i = icmp eq ptr %i.ac, null
  br i1 %.not.i, label %.split.i, label %bb.f

.split.i:                                         ; preds = %bb.e
  %i.ad = getelementptr i8, ptr %i.l, i64 24
  br label %RCLASS_EXT_READABLE.exit

bb.f:                                             ; preds = %bb.e
  %i.ae = getelementptr i8, ptr %i.ac, i64 128
  %i.af = load i8, ptr %i.ae, align 8, !tbaa !37, !range !38, !noundef !39
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %.split7.i, label %bb.i

.split7.i:                                        ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.ah = load i64, ptr %i.l, align 8, !tbaa !25
  %i.ai = and i64 %i.ah, 65536
  %.not.i.i.i10.i = icmp eq i64 %i.ai, 0
  br i1 %.not.i.i.i10.i, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i, label %RCLASS_CLASSEXT_TBL.exit.i.i11.i

RCLASS_CLASSEXT_TBL.exit.i.i11.i:                 ; preds = %.split7.i
  %i.aj = load ptr, ptr %i.y, align 8, !tbaa !35  ; 2 uses
  %.not.i.i12.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i12.i, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i, label %bb.g

bb.g:                                             ; preds = %RCLASS_CLASSEXT_TBL.exit.i.i11.i
  %i.ak = load i64, ptr %i.ac, align 8, !tbaa !40
  %i.al = call i32 @rb_st_lookup(ptr noundef nonnull %i.aj, i64 noundef %i.ak, ptr noundef nonnull %i.a) #25
  %.not5.i.i13.i = icmp eq i32 %i.al, 0
  br i1 %.not5.i.i13.i, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.am = load i64, ptr %i.a, align 8, !tbaa !21
  %i.an = inttoptr i64 %i.am to ptr
  br label %RCLASS_EXT_READABLE_LOOKUP.exit17.i

RCLASS_EXT_READABLE_LOOKUP.exit17.i:              ; preds = %bb.h, %bb.g, %RCLASS_CLASSEXT_TBL.exit.i.i11.i, %.split7.i
  %.0.i.i14.i = phi ptr [ %i.an, %bb.h ], [ null, %bb.g ], [ null, %RCLASS_CLASSEXT_TBL.exit.i.i11.i ], [ null, %.split7.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %.not.i15.i = icmp eq ptr %.0.i.i14.i, null
  %i.ao = getelementptr i8, ptr %i.l, i64 24
  %.0.i16.i = select i1 %.not.i15.i, ptr %i.ao, ptr %.0.i.i14.i
  br label %RCLASS_EXT_READABLE.exit

bb.i:                                             ; preds = %bb.f
  %i.ap = getelementptr i8, ptr %i.l, i64 24
  br label %RCLASS_EXT_READABLE.exit

RCLASS_EXT_READABLE.exit:                         ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i, %.split.i, %RCLASS_EXT_READABLE_LOOKUP.exit17.i, %bb.i
  %.0.i11 = phi ptr [ %i.ab, %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i ], [ %i.ap, %bb.i ], [ %i.ad, %.split.i ], [ %.0.i16.i, %RCLASS_EXT_READABLE_LOOKUP.exit17.i ]
  %i.aq = getelementptr i8, ptr %.0.i11, i64 125
  %i.ar = load i8, ptr %i.aq, align 1
  %i.as = trunc i8 %i.ar to i1
  br i1 %i.as, label %bb.m, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i

RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i:        ; preds = %RCLASS_EXT_READABLE.exit
  %i.at = load i64, ptr %i.l, align 8, !tbaa !25
  %i.au = and i64 %i.at, 16384
  %.not10.i.i = icmp eq i64 %i.au, 0
  br i1 %.not10.i.i, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i, label %bb.j, !prof !106

bb.j:                                             ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i
  %i.av = getelementptr i8, ptr %i.l, i64 24
  br label %RCLASS_WRITE_CLASSPATH.exit

RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i: ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i
  %i.aw = call ptr @rb_current_box() #25          ; 3 uses
  %.not.i.i12 = icmp eq ptr %i.aw, null
  br i1 %.not.i.i12, label %.split.i.i, label %bb.k

.split.i.i:                                       ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i
  %i.ax = call fastcc ptr @RCLASS_EXT_WRITABLE_LOOKUP(i64 noundef %i.e, ptr noundef null)
  br label %RCLASS_WRITE_CLASSPATH.exit

bb.k:                                             ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i
  %i.ay = getelementptr i8, ptr %i.aw, i64 128
  %i.az = load i8, ptr %i.ay, align 8, !tbaa !37, !range !38, !noundef !39
  %i.ba = trunc nuw i8 %i.az to i1
  br i1 %i.ba, label %.split7.i.i, label %bb.l

.split7.i.i:                                      ; preds = %bb.k
  %i.bb = call fastcc ptr @RCLASS_EXT_WRITABLE_LOOKUP(i64 noundef %i.e, ptr noundef nonnull %i.aw)
  br label %RCLASS_WRITE_CLASSPATH.exit

bb.l:                                             ; preds = %bb.k
  %i.bc = getelementptr i8, ptr %i.l, i64 24
  br label %RCLASS_WRITE_CLASSPATH.exit

RCLASS_WRITE_CLASSPATH.exit:                      ; preds = %bb.j, %.split.i.i, %.split7.i.i, %bb.l
  %.0.i.i = phi ptr [ %i.av, %bb.j ], [ %i.bc, %bb.l ], [ %i.ax, %.split.i.i ], [ %i.bb, %.split7.i.i ] ; 2 uses
  %i.bd = getelementptr i8, ptr %.0.i.i, i64 128
  store i64 0, ptr %i.bd, align 8, !tbaa !21
  %i.be = getelementptr i8, ptr %.0.i.i, i64 125  ; 2 uses
  %i.bf = load i8, ptr %i.be, align 1
  %i.bg = and i8 %i.bf, -2
  store i8 %i.bg, ptr %i.be, align 1
  br label %bb.m

bb.m:                                             ; preds = %RCLASS_EXT_READABLE.exit, %RCLASS_WRITE_CLASSPATH.exit, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  br label %rb_namespace_p.exit.thread

rb_namespace_p.exit.thread:                       ; preds = %bb.b, %bb.a, %rb_namespace_p.exit, %bb.m
  ret i32 0
}

declare i64 @rb_frame_callee() local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i64 @original_module(i64 noundef %0) unnamed_addr #23 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
end_hunk_2
