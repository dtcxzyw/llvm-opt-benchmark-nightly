inline.NumInlined: 728
inline.NumDeleted: 161
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@classname:bb.a

bb.j:                                             ; preds = %RCLASS_CLASSEXT_TBL.exit.i.i11.i13
  %i.ao = load i64, ptr %i.ag, align 8, !tbaa !36
  %i.ap = call i32 @rb_st_lookup(ptr noundef nonnull %i.an, i64 noundef %i.ao, ptr noundef nonnull %i.a) #26
  %.not5.i.i13.i15 = icmp eq i32 %i.ap, 0
  br i1 %.not5.i.i13.i15, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i16, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aq = load i64, ptr %i.a, align 8, !tbaa !16
  %i.ar = inttoptr i64 %i.aq to ptr
  br label %RCLASS_EXT_READABLE_LOOKUP.exit17.i16

RCLASS_EXT_READABLE_LOOKUP.exit17.i16:            ; preds = %bb.k, %bb.j, %RCLASS_CLASSEXT_TBL.exit.i.i11.i13, %.split7.i11
  %.0.i.i14.i17 = phi ptr [ %i.ar, %bb.k ], [ null, %bb.j ], [ null, %RCLASS_CLASSEXT_TBL.exit.i.i11.i13 ], [ null, %.split7.i11 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %.not.i15.i18 = icmp eq ptr %.0.i.i14.i17, null
  %i.as = getelementptr i8, ptr %i.c, i64 24
  %.0.i16.i19 = select i1 %.not.i15.i18, ptr %i.as, ptr %.0.i.i14.i17
  br label %RCLASS_EXT_READABLE.exit26

bb.l:                                             ; preds = %bb.i
  %i.at = getelementptr i8, ptr %i.c, i64 24
  br label %RCLASS_EXT_READABLE.exit26

RCLASS_EXT_READABLE.exit26:                       ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i25, %.split.i20, %RCLASS_EXT_READABLE_LOOKUP.exit17.i16, %bb.l
  %.0.i10 = phi ptr [ %i.af, %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i25 ], [ %i.at, %bb.l ], [ %i.ah, %.split.i20 ], [ %.0.i16.i19, %RCLASS_EXT_READABLE_LOOKUP.exit17.i16 ]
  %i.au = getelementptr i8, ptr %.0.i10, i64 125
  %i.av = load i8, ptr %i.au, align 1
  %i.aw = and i8 %i.av, 1
  store i8 %i.aw, ptr %1, align 1, !tbaa !18
  br label %bb.m

bb.m:                                             ; preds = %RCLASS_EXT_READABLE.exit, %RCLASS_EXT_READABLE.exit26
  %.0 = phi i64 [ %i.y, %RCLASS_EXT_READABLE.exit26 ], [ 4, %RCLASS_EXT_READABLE.exit ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local range(i64 1, 0) i64 @rb_mod_name(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.b = call fastcc i64 @classname(i64 noundef %0, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret i64 %i.b
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind sspstrong uwtable
define hidden noundef i64 @rb_mod_set_temporary_name(i64 noundef returned %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.sub_temporary_name_args, align 8 ; 5 uses
  %3 = alloca %struct.sub_temporary_name_args, align 8 ; 4 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  store i64 %1, ptr %i.b, align 8, !tbaa !16
  %i.e = inttoptr i64 %0 to ptr                   ; 7 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !20
  %i.g = and i64 %i.f, 65536
  %.not.i.i = icmp eq i64 %i.g, 0
  br i1 %.not.i.i, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i

RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i:          ; preds = %bb.a
  %i.h = getelementptr i8, ptr %i.e, i64 160      ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !22
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i, label %bb.b

RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i:   ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i, %bb.a
  %i.k = getelementptr i8, ptr %i.e, i64 24
  br label %RCLASS_EXT_READABLE.exit

bb.b:                                             ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i
  %i.l = tail call ptr @rb_current_box() #26      ; 3 uses
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %.split.i, label %bb.c

.split.i:                                         ; preds = %bb.b
  %i.m = getelementptr i8, ptr %i.e, i64 24
  br label %RCLASS_EXT_READABLE.exit

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr i8, ptr %i.l, i64 128
  %i.o = load i8, ptr %i.n, align 8, !tbaa !32, !range !34, !noundef !35
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %.split7.i, label %bb.f

.split7.i:                                        ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.q = load i64, ptr %i.e, align 8, !tbaa !20
  %i.r = and i64 %i.q, 65536
  %.not.i.i.i10.i = icmp eq i64 %i.r, 0
  br i1 %.not.i.i.i10.i, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i, label %RCLASS_CLASSEXT_TBL.exit.i.i11.i

RCLASS_CLASSEXT_TBL.exit.i.i11.i:                 ; preds = %.split7.i
  %i.s = load ptr, ptr %i.h, align 8, !tbaa !22   ; 2 uses
  %.not.i.i12.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i12.i, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i, label %bb.d

bb.d:                                             ; preds = %RCLASS_CLASSEXT_TBL.exit.i.i11.i
  %i.t = load i64, ptr %i.l, align 8, !tbaa !36
  %i.u = call i32 @rb_st_lookup(ptr noundef nonnull %i.s, i64 noundef %i.t, ptr noundef nonnull %i.a) #26
  %.not5.i.i13.i = icmp eq i32 %i.u, 0
  br i1 %.not5.i.i13.i, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = load i64, ptr %i.a, align 8, !tbaa !16
  %i.w = inttoptr i64 %i.v to ptr
  br label %RCLASS_EXT_READABLE_LOOKUP.exit17.i

RCLASS_EXT_READABLE_LOOKUP.exit17.i:              ; preds = %bb.e, %bb.d, %RCLASS_CLASSEXT_TBL.exit.i.i11.i, %.split7.i
  %.0.i.i14.i = phi ptr [ %i.w, %bb.e ], [ null, %bb.d ], [ null, %RCLASS_CLASSEXT_TBL.exit.i.i11.i ], [ null, %.split7.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %.not.i15.i = icmp eq ptr %.0.i.i14.i, null
  %i.x = getelementptr i8, ptr %i.e, i64 24
  %.0.i16.i = select i1 %.not.i15.i, ptr %i.x, ptr %.0.i.i14.i
  br label %RCLASS_EXT_READABLE.exit

bb.f:                                             ; preds = %bb.c
  %i.y = getelementptr i8, ptr %i.e, i64 24
  br label %RCLASS_EXT_READABLE.exit

RCLASS_EXT_READABLE.exit:                         ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i, %.split.i, %RCLASS_EXT_READABLE_LOOKUP.exit17.i, %bb.f
  %.0.i = phi ptr [ %i.k, %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i ], [ %i.y, %bb.f ], [ %i.m, %.split.i ], [ %.0.i16.i, %RCLASS_EXT_READABLE_LOOKUP.exit17.i ]
  %i.z = getelementptr i8, ptr %.0.i, i64 125
  %i.aa = load i8, ptr %i.z, align 1
  %i.ab = trunc i8 %i.aa to i1
  br i1 %i.ab, label %bb.g, label %bb.h

bb.g:                                             ; preds = %RCLASS_EXT_READABLE.exit
  %i.ac = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !16
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ac, ptr noundef nonnull @.str.1) #27
  unreachable

bb.h:                                             ; preds = %RCLASS_EXT_READABLE.exit
  %i.ad = icmp eq i64 %1, 4
  br i1 %i.ad, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  %i.ae = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !38
  %.not.i.i8 = icmp eq ptr %i.ae, null
  br i1 %.not.i.i8, label %bb.j, label %rb_vm_lock_enter.exit

bb.j:                                             ; preds = %bb.i
  call void @rb_vm_lock_enter_body(ptr noundef nonnull %i.c) #26
  br label %rb_vm_lock_enter.exit

rb_vm_lock_enter.exit:                            ; preds = %bb.i, %bb.j
  %i.af = ptrtoint ptr %3 to i64                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %i.ag = call i64 @rb_exec_recursive_paired(ptr noundef nonnull @set_sub_temporary_name_topmost, i64 noundef %0, i64 noundef %i.af, i64 noundef %i.af) #26 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.ah = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !38
  %.not.i.i9 = icmp eq ptr %i.ah, null
  br i1 %.not.i.i9, label %bb.k, label %rb_vm_lock_leave.exit

bb.k:                                             ; preds = %rb_vm_lock_enter.exit
  call void @rb_vm_lock_leave_body(ptr noundef nonnull %i.c) #26
  br label %rb_vm_lock_leave.exit

rb_vm_lock_leave.exit:                            ; preds = %rb_vm_lock_enter.exit, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  br label %bb.y

bb.l:                                             ; preds = %bb.h
  %i.ai = call i64 @rb_string_value(ptr noundef nonnull %i.b) #26 ; 0 uses
  %i.aj = load i64, ptr %i.b, align 8, !tbaa !16  ; 2 uses
  %i.ak = inttoptr i64 %i.aj to ptr               ; 3 uses
  %i.al = getelementptr i8, ptr %i.ak, i64 16
  %i.am = load i64, ptr %i.al, align 8, !tbaa !40 ; 3 uses
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ao = load i64, ptr @rb_eArgError, align 8, !tbaa !16
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ao, ptr noundef nonnull @.str.3) #27
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.ap = load i64, ptr %i.ak, align 8, !tbaa !20
  %i.aq = and i64 %i.ap, 8192
  %.not.i.i10 = icmp eq i64 %i.aq, 0
  %i.ar = getelementptr i8, ptr %i.ak, i64 24     ; 2 uses
  br i1 %.not.i.i10, label %RSTRING_END.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !42
  br label %RSTRING_END.exit.i

RSTRING_END.exit.i:                               ; preds = %bb.o, %bb.n
  %i.at = phi ptr [ %i.as, %bb.o ], [ %i.ar, %bb.n ] ; 5 uses
  %4 = ptrtoint ptr %i.at to i64
  %i.au = getelementptr i8, ptr %i.at, i64 %i.am  ; 4 uses
  %i.av = call ptr @rb_enc_get(i64 noundef %i.aj) #26
  %.not.i11 = icmp ult ptr %i.at, %i.au
  br i1 %.not.i11, label %bb.p, label %.loopexit

bb.p:                                             ; preds = %RSTRING_END.exit.i
  %i.aw = load i8, ptr %i.at, align 1, !tbaa !42
  %.not33.i = icmp eq i8 %i.aw, 0
  br i1 %.not33.i, label %.loopexit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.p, %bb.v
  %.027.i = phi ptr [ %.229.lcssa.i, %bb.v ], [ %i.at, %bb.p ] ; 7 uses
  %.not48.i = icmp ult ptr %.027.i, %i.au
  br i1 %.not48.i, label %bb.q, label %is_constant_path.exit

bb.q:                                             ; preds = %.preheader.i
  %i.ax = getelementptr i8, ptr %.027.i, i64 2    ; 2 uses
  %.not34.i = icmp ugt ptr %i.ax, %i.au
  br i1 %.not34.i, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ay = load i8, ptr %.027.i, align 1, !tbaa !42
  %i.az = icmp eq i8 %i.ay, 58
  br i1 %i.az, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ba = getelementptr i8, ptr %.027.i, i64 1
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !42
  %i.bc = icmp eq i8 %i.bb, 58
  %spec.select.i = select i1 %i.bc, ptr %i.ax, ptr %.027.i
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q
  %.128.i = phi ptr [ %.027.i, %bb.q ], [ %spec.select.i, %bb.s ], [ %.027.i, %bb.r ] ; 7 uses
  %.12843.i = ptrtoint ptr %.128.i to i64         ; 2 uses
  %i.bd = icmp ult ptr %.128.i, %i.au
  br i1 %i.bd, label %.lr.ph.preheader.i, label %.critedge.i

.lr.ph.preheader.i:                               ; preds = %bb.t
  %i.be = getelementptr i8, ptr %.128.i, i64 %i.am
  %scevgep.i = getelementptr i8, ptr %i.be, i64 %4
  %i.bf = sub i64 0, %.12843.i
  %scevgep44.i = getelementptr i8, ptr %scevgep.i, i64 %i.bf ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.u, %.lr.ph.preheader.i
  %.22940.i = phi ptr [ %i.bh, %bb.u ], [ %.128.i, %.lr.ph.preheader.i ] ; 3 uses
  %i.bg = load i8, ptr %.22940.i, align 1, !tbaa !42
  %.not35.i = icmp eq i8 %i.bg, 58
  br i1 %.not35.i, label %.critedge.i, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i
  %i.bh = getelementptr i8, ptr %.22940.i, i64 1  ; 2 uses
  %exitcond.not.i = icmp eq ptr %i.bh, %scevgep44.i
  br i1 %exitcond.not.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !43

.critedge.i:                                      ; preds = %bb.u, %.lr.ph.i, %bb.t
  %.229.lcssa.i = phi ptr [ %.128.i, %bb.t ], [ %.22940.i, %.lr.ph.i ], [ %scevgep44.i, %bb.u ] ; 3 uses
  %i.bi = icmp eq ptr %.128.i, %.229.lcssa.i
  br i1 %i.bi, label %.loopexit, label %bb.v

bb.v:                                             ; preds = %.critedge.i
  %i.bj = ptrtoint ptr %.229.lcssa.i to i64
  %i.bk = sub i64 %i.bj, %.12843.i
  %i.bl = call i32 @rb_enc_symname_type(ptr noundef %.128.i, i64 noundef %i.bk, ptr noundef %i.av, i32 noundef 0) #26
  %.not36.i = icmp eq i32 %i.bl, 10
  br i1 %.not36.i, label %.preheader.i, label %.loopexit, !llvm.loop !45

is_constant_path.exit:                            ; preds = %.preheader.i
  %i.bm = load i64, ptr @rb_eArgError, align 8, !tbaa !16
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.bm, ptr noundef nonnull @.str.4) #27
  unreachable

.loopexit:                                        ; preds = %.critedge.i, %bb.v, %bb.p, %RSTRING_END.exit.i
  %i.bn = load i64, ptr %i.b, align 8, !tbaa !16
  %i.bo = call i64 @rb_str_new_frozen(i64 noundef %i.bn) #26 ; 2 uses
  store i64 %i.bo, ptr %i.b, align 8, !tbaa !16
  %i.bp = call i64 @rb_obj_set_shareable(i64 noundef %i.bo) #26 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #26
  %i.bq = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !38
  %.not.i.i12 = icmp eq ptr %i.bq, null
  br i1 %.not.i.i12, label %bb.w, label %rb_vm_lock_enter.exit13

bb.w:                                             ; preds = %.loopexit
  call void @rb_vm_lock_enter_body(ptr noundef nonnull %i.d) #26
  br label %rb_vm_lock_enter.exit13

rb_vm_lock_enter.exit13:                          ; preds = %.loopexit, %bb.w
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bs = ptrtoint ptr %2 to i64                  ; 2 uses
  %i.bt = load i64, ptr %i.b, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  store i64 %i.bt, ptr %2, align 8, !tbaa !46
  store i64 0, ptr %i.br, align 8, !tbaa !48
  %i.bu = call i64 @rb_exec_recursive_paired(ptr noundef nonnull @set_sub_temporary_name_topmost, i64 noundef %0, i64 noundef %i.bs, i64 noundef %i.bs) #26 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %i.bv = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !38
  %.not.i.i14 = icmp eq ptr %i.bv, null
  br i1 %.not.i.i14, label %bb.x, label %rb_vm_lock_leave.exit15

bb.x:                                             ; preds = %rb_vm_lock_enter.exit13
  call void @rb_vm_lock_leave_body(ptr noundef nonnull %i.d) #26
  br label %rb_vm_lock_leave.exit15

rb_vm_lock_leave.exit15:                          ; preds = %rb_vm_lock_enter.exit13, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26
  br label %bb.y

bb.y:                                             ; preds = %rb_vm_lock_leave.exit15, %rb_vm_lock_leave.exit
  ret i64 %0
}

; Function Attrs: noreturn
declare void @rb_raise(i64 noundef, ptr noundef, ...) local_unnamed_addr #3

declare i64 @rb_string_value(ptr noundef) local_unnamed_addr #1

declare i64 @rb_str_new_frozen(i64 noundef) local_unnamed_addr #1

declare i64 @rb_obj_set_shareable(i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_class_path(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.b = call fastcc i64 @rb_tmp_class_path(i64 noundef %0, ptr noundef %i.a, ptr noundef nonnull @make_temporary_path) ; 2 uses
  %i.c = icmp eq i64 %i.b, 4
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i64 @rb_str_dup(i64 noundef %i.b) #26
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i64 [ 4, %bb.a ], [ %i.d, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @rb_tmp_class_path(i64 noundef %0, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 1)) %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 3 uses
  %i.b = tail call fastcc i64 @classname(i64 noundef %0, ptr noundef nonnull %1) ; 2 uses
  %i.c = icmp eq i64 %i.b, 4
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq i64 %0, 0
  %i.e = and i64 %0, 7
  %i.f = icmp ne i64 %i.e, 0
  %i.g = or i1 %i.d, %i.f
  br i1 %i.g, label %rbimpl_RB_TYPE_P_fastpath.exit.thread, label %rbimpl_RB_TYPE_P_fastpath.exit

rbimpl_RB_TYPE_P_fastpath.exit:                   ; preds = %bb.b
  %i.h = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !20
  %i.j = and i64 %i.i, 31
  %i.k = icmp eq i64 %i.j, 3
  br i1 %i.k, label %bb.c, label %rbimpl_RB_TYPE_P_fastpath.exit.thread

bb.c:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit
  %i.l = tail call i64 @rb_obj_class(i64 noundef %0) #26
  %i.m = load i64, ptr @rb_cModule, align 8, !tbaa !16
  %i.n = icmp eq i64 %i.l, %i.m
  br i1 %i.n, label %rbimpl_RB_TYPE_P_fastpath.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.o = getelementptr i8, ptr %i.h, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !49
  %i.q = call fastcc i64 @rb_tmp_class_path(i64 noundef %i.p, ptr noundef %i.a, ptr noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %rbimpl_RB_TYPE_P_fastpath.exit.thread

rbimpl_RB_TYPE_P_fastpath.exit.thread:            ; preds = %bb.b, %bb.c, %bb.d, %rbimpl_RB_TYPE_P_fastpath.exit
  %.0 = phi i64 [ 4, %rbimpl_RB_TYPE_P_fastpath.exit ], [ %i.q, %bb.d ], [ 0, %bb.c ], [ 4, %bb.b ]
  store i8 0, ptr %1, align 1, !tbaa !18
  %i.r = tail call i64 %2(i64 noundef %0, i64 noundef %.0) #26, !callees !50
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %rbimpl_RB_TYPE_P_fastpath.exit.thread
  %.012 = phi i64 [ %i.r, %rbimpl_RB_TYPE_P_fastpath.exit.thread ], [ %i.b, %bb.a ]
  ret i64 %.012
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @make_temporary_path(i64 noundef %0, i64 noundef %1) #0 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 3 uses
  switch i64 %1, label %bb.d [
    i64 4, label %bb.b
    i64 0, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 (ptr, ...) @rb_sprintf(ptr noundef nonnull @.str.40, ptr noundef %i.a) #26
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.c = tail call i64 (ptr, ...) @rb_sprintf(ptr noundef nonnull @.str.41, ptr noundef %i.a) #26
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.d = tail call i64 (ptr, ...) @rb_sprintf(ptr noundef nonnull @.str.42, i64 noundef %1, ptr noundef %i.a) #26
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.0 = phi i64 [ %i.d, %bb.d ], [ %i.b, %bb.b ], [ %i.c, %bb.c ] ; 7 uses
  %i.e = icmp ne i64 %.0, 0
  %i.f = and i64 %.0, 7
  %i.g = icmp eq i64 %i.f, 0
  %.not11.i = and i1 %i.e, %i.g
  br i1 %.not11.i, label %rb_type.exit.i, label %rb_obj_freeze_inline.exit

rb_type.exit.i:                                   ; preds = %bb.e
  %i.h = inttoptr i64 %.0 to ptr                  ; 5 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !20   ; 2 uses
  %i.j = or i64 %i.i, 2048                        ; 2 uses
  %i.k = and i64 %i.i, 31
  %i.l = icmp eq i64 %i.k, 5
  %i.m = and i64 %i.j, -49179
  %spec.select.i = select i1 %i.l, i64 %i.m, i64 %i.j
  store i64 %spec.select.i, ptr %i.h, align 8, !tbaa !20
  %i.n = tail call i32 @rb_shape_transition_frozen(i64 noundef %.0) #26 ; 2 uses
  %i.o = load i64, ptr %i.h, align 8, !tbaa !20   ; 2 uses
  %i.p = and i64 %i.o, 30
  %switch.i.i = icmp eq i64 %i.p, 2
  br i1 %switch.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %rb_type.exit.i
  tail call void @rb_set_boxed_class_shape_id(i64 noundef %.0, i32 noundef %i.n) #26
  br label %RB_SET_SHAPE_ID.exit.i

bb.g:                                             ; preds = %rb_type.exit.i
  %i.q = and i64 %i.o, 4294967295
  %i.r = zext i32 %i.n to i64
  %i.s = shl nuw i64 %i.r, 32
  %i.t = or disjoint i64 %i.q, %i.s
  store i64 %i.t, ptr %i.h, align 8, !tbaa !20
  br label %RB_SET_SHAPE_ID.exit.i

RB_SET_SHAPE_ID.exit.i:                           ; preds = %bb.g, %bb.f
  %i.u = getelementptr i8, ptr %i.h, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !49
  %.not.i = icmp eq i64 %i.v, 0
  br i1 %.not.i, label %rb_obj_freeze_inline.exit, label %bb.h

bb.h:                                             ; preds = %RB_SET_SHAPE_ID.exit.i
  tail call void @rb_freeze_singleton_class(i64 noundef %.0) #26
  br label %rb_obj_freeze_inline.exit

rb_obj_freeze_inline.exit:                        ; preds = %bb.e, %RB_SET_SHAPE_ID.exit.i, %bb.h
  ret i64 %.0
}

declare i64 @rb_str_dup(i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define dso_local range(i64 1, 0) i64 @rb_class_path_cached(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
end_hunk_0
begin_hunk_1_@RCLASS_SET_CLASSPATH:bb.a
  %i.h = getelementptr i8, ptr %i.b, i64 24
  br label %RCLASS_EXT_READABLE.exit

bb.b:                                             ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i
  %i.i = tail call ptr @rb_current_box() #26      ; 3 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %.split.i, label %bb.c

.split.i:                                         ; preds = %bb.b
  %i.j = getelementptr i8, ptr %i.b, i64 24
  br label %RCLASS_EXT_READABLE.exit

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr i8, ptr %i.i, i64 128
  %i.l = load i8, ptr %i.k, align 8, !tbaa !32, !range !34, !noundef !35
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %.split7.i, label %bb.f

.split7.i:                                        ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.n = load i64, ptr %i.b, align 8, !tbaa !20
  %i.o = and i64 %i.n, 65536
  %.not.i.i.i10.i = icmp eq i64 %i.o, 0
  br i1 %.not.i.i.i10.i, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i, label %RCLASS_CLASSEXT_TBL.exit.i.i11.i

RCLASS_CLASSEXT_TBL.exit.i.i11.i:                 ; preds = %.split7.i
  %i.p = load ptr, ptr %i.e, align 8, !tbaa !22   ; 2 uses
  %.not.i.i12.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i12.i, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i, label %bb.d

bb.d:                                             ; preds = %RCLASS_CLASSEXT_TBL.exit.i.i11.i
  %i.q = load i64, ptr %i.i, align 8, !tbaa !36
  %i.r = call i32 @rb_st_lookup(ptr noundef nonnull %i.p, i64 noundef %i.q, ptr noundef nonnull %i.a) #26
  %.not5.i.i13.i = icmp eq i32 %i.r, 0
  br i1 %.not5.i.i13.i, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = load i64, ptr %i.a, align 8, !tbaa !16
  %i.t = inttoptr i64 %i.s to ptr
  br label %RCLASS_EXT_READABLE_LOOKUP.exit17.i

RCLASS_EXT_READABLE_LOOKUP.exit17.i:              ; preds = %bb.e, %bb.d, %RCLASS_CLASSEXT_TBL.exit.i.i11.i, %.split7.i
  %.0.i.i14.i = phi ptr [ %i.t, %bb.e ], [ null, %bb.d ], [ null, %RCLASS_CLASSEXT_TBL.exit.i.i11.i ], [ null, %.split7.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %.not.i15.i = icmp eq ptr %.0.i.i14.i, null
  %i.u = getelementptr i8, ptr %i.b, i64 24
  %.0.i16.i = select i1 %.not.i15.i, ptr %i.u, ptr %.0.i.i14.i
  br label %RCLASS_EXT_READABLE.exit

bb.f:                                             ; preds = %bb.c
  %i.v = getelementptr i8, ptr %i.b, i64 24
  br label %RCLASS_EXT_READABLE.exit

RCLASS_EXT_READABLE.exit:                         ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i, %.split.i, %RCLASS_EXT_READABLE_LOOKUP.exit17.i, %bb.f
  %.0.i = phi ptr [ %i.h, %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i ], [ %i.v, %bb.f ], [ %i.j, %.split.i ], [ %.0.i16.i, %RCLASS_EXT_READABLE_LOOKUP.exit17.i ] ; 2 uses
  %i.w = getelementptr i8, ptr %.0.i, i64 128
  store i64 %1, ptr %i.w, align 8, !tbaa !16
  %i.x = icmp eq i64 %1, 0
  %i.y = and i64 %1, 7
  %i.z = icmp ne i64 %i.y, 0
  %i.aa = or i1 %i.x, %i.z
  br i1 %i.aa, label %rb_obj_write.exit, label %bb.g

bb.g:                                             ; preds = %RCLASS_EXT_READABLE.exit
  call void @rb_gc_writebarrier(i64 noundef %0, i64 noundef %1) #26
  br label %rb_obj_write.exit

rb_obj_write.exit:                                ; preds = %RCLASS_EXT_READABLE.exit, %bb.g
  %i.ab = zext i1 %2 to i8
  %i.ac = getelementptr i8, ptr %.0.i, i64 125    ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 1
  %i.ae = and i8 %i.ad, -2
  %i.af = or disjoint i8 %i.ae, %i.ab
  store i8 %i.af, ptr %i.ac, align 1
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @rb_set_class_path(i64 noundef %0, i64 noundef %1, ptr noundef nonnull %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @rb_str_new_cstr(ptr noundef nonnull %2) #26 ; 7 uses
  %i.b = icmp ne i64 %i.a, 0
  %i.c = and i64 %i.a, 7
  %i.d = icmp eq i64 %i.c, 0
  %.not11.i = and i1 %i.b, %i.d
  br i1 %.not11.i, label %rb_type.exit.i, label %rb_obj_freeze_inline.exit

rb_type.exit.i:                                   ; preds = %bb.a
  %i.e = inttoptr i64 %i.a to ptr                 ; 5 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !20   ; 2 uses
  %i.g = or i64 %i.f, 2048                        ; 2 uses
  %i.h = and i64 %i.f, 31
  %i.i = icmp eq i64 %i.h, 5
  %i.j = and i64 %i.g, -49179
  %spec.select.i = select i1 %i.i, i64 %i.j, i64 %i.g
  store i64 %spec.select.i, ptr %i.e, align 8, !tbaa !20
  %i.k = tail call i32 @rb_shape_transition_frozen(i64 noundef %i.a) #26 ; 2 uses
  %i.l = load i64, ptr %i.e, align 8, !tbaa !20   ; 2 uses
  %i.m = and i64 %i.l, 30
  %switch.i.i = icmp eq i64 %i.m, 2
  br i1 %switch.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %rb_type.exit.i
  tail call void @rb_set_boxed_class_shape_id(i64 noundef %i.a, i32 noundef %i.k) #26
  br label %RB_SET_SHAPE_ID.exit.i

bb.c:                                             ; preds = %rb_type.exit.i
  %i.n = and i64 %i.l, 4294967295
  %i.o = zext i32 %i.k to i64
  %i.p = shl nuw i64 %i.o, 32
  %i.q = or disjoint i64 %i.n, %i.p
  store i64 %i.q, ptr %i.e, align 8, !tbaa !20
  br label %RB_SET_SHAPE_ID.exit.i

RB_SET_SHAPE_ID.exit.i:                           ; preds = %bb.c, %bb.b
  %i.r = getelementptr i8, ptr %i.e, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !49
  %.not.i = icmp eq i64 %i.s, 0
  br i1 %.not.i, label %rb_obj_freeze_inline.exit, label %bb.d

bb.d:                                             ; preds = %RB_SET_SHAPE_ID.exit.i
  tail call void @rb_freeze_singleton_class(i64 noundef %i.a) #26
  br label %rb_obj_freeze_inline.exit

rb_obj_freeze_inline.exit:                        ; preds = %bb.a, %RB_SET_SHAPE_ID.exit.i, %bb.d
  tail call void @rb_set_class_path_string(i64 noundef %0, i64 noundef %1, i64 noundef %i.a)
  ret void
}

declare i64 @rb_str_new_cstr(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @rb_obj_freeze_inline(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ne i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp eq i64 %i.b, 0
  %.not11 = and i1 %i.a, %i.c
  br i1 %.not11, label %rb_type.exit, label %bb.e

rb_type.exit:                                     ; preds = %bb.a
  %i.d = inttoptr i64 %0 to ptr                   ; 5 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !20   ; 2 uses
  %i.f = or i64 %i.e, 2048                        ; 2 uses
  %i.g = and i64 %i.e, 31
  %i.h = icmp eq i64 %i.g, 5
  %i.i = and i64 %i.f, -49179
  %spec.select = select i1 %i.h, i64 %i.i, i64 %i.f
  store i64 %spec.select, ptr %i.d, align 8, !tbaa !20
  %i.j = tail call i32 @rb_shape_transition_frozen(i64 noundef %0) #26 ; 2 uses
  %i.k = load i64, ptr %i.d, align 8, !tbaa !20   ; 2 uses
  %i.l = and i64 %i.k, 30
  %switch.i = icmp eq i64 %i.l, 2
  br i1 %switch.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %rb_type.exit
  tail call void @rb_set_boxed_class_shape_id(i64 noundef %0, i32 noundef %i.j) #26
  br label %RB_SET_SHAPE_ID.exit

bb.c:                                             ; preds = %rb_type.exit
  %i.m = and i64 %i.k, 4294967295
  %i.n = zext i32 %i.j to i64
  %i.o = shl nuw i64 %i.n, 32
  %i.p = or disjoint i64 %i.m, %i.o
  store i64 %i.p, ptr %i.d, align 8, !tbaa !20
  br label %RB_SET_SHAPE_ID.exit

RB_SET_SHAPE_ID.exit:                             ; preds = %bb.b, %bb.c
  %i.q = getelementptr i8, ptr %i.d, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !49
  %.not = icmp eq i64 %i.r, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %RB_SET_SHAPE_ID.exit
  tail call void @rb_freeze_singleton_class(i64 noundef %0) #26
  br label %bb.e

bb.e:                                             ; preds = %RB_SET_SHAPE_ID.exit, %bb.d, %bb.a
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_path_to_class(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  store i64 %0, ptr %i.a, align 8, !tbaa !16
  %i.c = tail call ptr @rb_enc_get(i64 noundef %0) #26 ; 4 uses
  %i.d = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !20
  %i.f = and i64 %i.e, 8192
  %.not.i = icmp eq i64 %i.f, 0
  %i.g = getelementptr i8, ptr %i.d, i64 24       ; 2 uses
  br i1 %.not.i, label %RSTRING_PTR.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !42
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.a, %bb.b
  %i.i = phi ptr [ %i.h, %bb.b ], [ %i.g, %bb.a ] ; 5 uses
  %1 = ptrtoint ptr %i.i to i64                   ; 2 uses
  %i.j = load i64, ptr @rb_cObject, align 8, !tbaa !16
  %i.k = getelementptr i8, ptr %i.c, i64 20
  %.val.i = load i32, ptr %i.k, align 4, !tbaa !51
  %.not.i40 = icmp eq i32 %.val.i, 1
  br i1 %.not.i40, label %rb_enc_asciicompat.exit, label %rb_enc_asciicompat.exit.thread

rb_enc_asciicompat.exit:                          ; preds = %RSTRING_PTR.exit
  %i.l = tail call i32 @rb_enc_dummy_p(ptr noundef nonnull readonly %i.c) #28
  %.not3.i = icmp eq i32 %i.l, 0
  br i1 %.not3.i, label %bb.c, label %rb_enc_asciicompat.exit.thread

rb_enc_asciicompat.exit.thread:                   ; preds = %RSTRING_PTR.exit, %rb_enc_asciicompat.exit
  %i.m = load i64, ptr @rb_eArgError, align 8, !tbaa !16
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.m, ptr noundef nonnull @.str.5) #27
  unreachable

bb.c:                                             ; preds = %rb_enc_asciicompat.exit
  %i.n = getelementptr i8, ptr %i.d, i64 16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !40   ; 3 uses
  %i.p = getelementptr i8, ptr %i.i, i64 %i.o     ; 2 uses
  %i.q = icmp eq i64 %i.o, 0
  br i1 %i.q, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = load i8, ptr %i.i, align 1, !tbaa !42
  %i.s = icmp eq i8 %i.r, 35
  br i1 %i.s, label %bb.e, label %.preheader47

.preheader47:                                     ; preds = %bb.d
  %i.t = ptrtoint ptr %i.p to i64
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.u = load i64, ptr @rb_eArgError, align 8, !tbaa !16
  %i.v = tail call fastcc i64 @QUOTE(i64 noundef %0)
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.u, ptr noundef nonnull @.str.6, i64 noundef %i.v) #27
  unreachable

bb.f:                                             ; preds = %.preheader47, %rb_namespace_p.exit
  %.033 = phi ptr [ %.2, %rb_namespace_p.exit ], [ %i.i, %.preheader47 ] ; 4 uses
  %.032 = phi i64 [ %.0.i42, %rb_namespace_p.exit ], [ %i.j, %.preheader47 ] ; 4 uses
  %.0 = phi ptr [ %.1, %rb_namespace_p.exit ], [ %i.i, %.preheader47 ] ; 6 uses
  %i.w = icmp ult ptr %.033, %i.p
  br i1 %i.w, label %.preheader.preheader, label %bb.q

.preheader.preheader:                             ; preds = %bb.f
  %.03355 = ptrtoint ptr %.033 to i64
  %i.x = getelementptr i8, ptr %.033, i64 %i.o
  %scevgep = getelementptr i8, ptr %i.x, i64 %1
  %i.y = sub i64 0, %.03355
  %scevgep56 = getelementptr i8, ptr %scevgep, i64 %i.y ; 3 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %bb.g
  %.13451 = phi ptr [ %i.aa, %bb.g ], [ %.033, %.preheader.preheader ] ; 9 uses
  %i.z = load i8, ptr %.13451, align 1, !tbaa !42
  %.not = icmp eq i8 %i.z, 58
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.preheader
  %i.aa = getelementptr i8, ptr %.13451, i64 1    ; 2 uses
  %exitcond.not = icmp eq ptr %i.aa, %scevgep56
  br i1 %exitcond.not, label %.critedge, label %.preheader, !llvm.loop !54

.critedge:                                        ; preds = %bb.g
  %i.ab = ptrtoint ptr %scevgep56 to i64
  %i.ac = ptrtoint ptr %.0 to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = tail call i64 @rb_check_id_cstr(ptr noundef %.0, i64 noundef %i.ad, ptr noundef nonnull %i.c) #26
  br label %bb.l

bb.h:                                             ; preds = %.preheader
  %i.af = ptrtoint ptr %.13451 to i64             ; 2 uses
  %i.ag = ptrtoint ptr %.0 to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = tail call i64 @rb_check_id_cstr(ptr noundef %.0, i64 noundef %i.ah, ptr noundef nonnull %i.c) #26 ; 2 uses
  %i.aj = load i8, ptr %.13451, align 1, !tbaa !42
  %i.ak = icmp eq i8 %i.aj, 58
  br i1 %i.ak, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.al = sub i64 %i.t, %i.af
  %i.am = icmp ult i64 %i.al, 2
  br i1 %i.am, label %rb_const_search.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.an = getelementptr i8, ptr %.13451, i64 1
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !42
  %.not38 = icmp eq i8 %i.ao, 58
  br i1 %.not38, label %bb.k, label %rb_const_search.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.ap = getelementptr i8, ptr %.13451, i64 2    ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %.critedge, %bb.k, %bb.h
  %i.aq = phi i64 [ %i.ai, %bb.k ], [ %i.ai, %bb.h ], [ %i.ae, %.critedge ] ; 3 uses
  %.2 = phi ptr [ %i.ap, %bb.k ], [ %.13451, %bb.h ], [ %scevgep56, %.critedge ] ; 4 uses
  %.1 = phi ptr [ %i.ap, %bb.k ], [ %.0, %bb.h ], [ %.0, %.critedge ]
  %.not39 = icmp eq i64 %i.aq, 0
  br i1 %.not39, label %rb_const_search.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ar = load i64, ptr @rb_cObject, align 8, !tbaa !16
  %i.as = icmp eq i64 %.032, %i.ar                ; 2 uses
  %not. = xor i1 %i.as, true
  %spec.select.i = zext i1 %not. to i32
  %i.at = tail call fastcc i64 @rb_const_search_from(i64 noundef %.032, i64 noundef %i.aq, i32 noundef %spec.select.i, i32 noundef 0, i32 noundef 0, ptr noundef null) ; 2 uses
  %i.au = icmp eq i64 %i.at, 36
  %or.cond.i = and i1 %i.as, %i.au
  br i1 %or.cond.i, label %bb.n, label %rb_const_search.exit

bb.n:                                             ; preds = %bb.m
  %i.av = inttoptr i64 %.032 to ptr
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !20
  %i.ax = and i64 %i.aw, 31
  %.not18.i = icmp eq i64 %i.ax, 3
  br i1 %.not18.i, label %bb.o, label %rb_const_search.exit.thread

bb.o:                                             ; preds = %bb.n
  %i.ay = load i64, ptr @rb_cObject, align 8, !tbaa !16
  %i.az = tail call fastcc i64 @rb_const_search_from(i64 noundef %i.ay, i64 noundef %i.aq, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef null)
  br label %rb_const_search.exit

rb_const_search.exit:                             ; preds = %bb.m, %bb.o
  %.0.i42 = phi i64 [ %i.at, %bb.m ], [ %i.az, %bb.o ] ; 5 uses
  %i.ba = icmp eq i64 %.0.i42, 36
  br i1 %i.ba, label %rb_const_search.exit.thread, label %bb.p

bb.p:                                             ; preds = %rb_const_search.exit
  %i.bb = icmp eq i64 %.0.i42, 0
  %i.bc = and i64 %.0.i42, 7
  %i.bd = icmp ne i64 %i.bc, 0
  %i.be = or i1 %i.bb, %i.bd
  br i1 %i.be, label %rb_namespace_p.exit.thread, label %rb_namespace_p.exit

rb_namespace_p.exit:                              ; preds = %bb.p
  %i.bf = inttoptr i64 %.0.i42 to ptr
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !20
  %i.bh = and i64 %i.bg, 30
  %switch.i = icmp eq i64 %i.bh, 2
  br i1 %switch.i, label %bb.f, label %rb_namespace_p.exit.thread, !llvm.loop !55

rb_namespace_p.exit.thread:                       ; preds = %bb.p, %rb_namespace_p.exit
  %i.bi = load i64, ptr @rb_eTypeError, align 8, !tbaa !16
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.bi, ptr noundef nonnull @.str.7, i64 noundef %0) #27
  unreachable

bb.q:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store ptr %i.a, ptr %i.b, align 8, !tbaa !56
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.b) #26, !srcloc !57
  %i.bj = load ptr, ptr %i.b, align 8, !tbaa !56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  %i.bk = load volatile i64, ptr %i.bj, align 8, !tbaa !16 ; 0 uses
  ret i64 %.032

rb_const_search.exit.thread:                      ; preds = %bb.n, %rb_const_search.exit, %bb.l, %bb.i, %bb.j
  %.3 = phi ptr [ %.13451, %bb.i ], [ %.13451, %bb.j ], [ %.2, %rb_const_search.exit ], [ %.2, %bb.l ], [ %.2, %bb.n ]
  %i.bl = load i64, ptr @rb_eArgError, align 8, !tbaa !16
  %i.bm = ptrtoint ptr %.3 to i64
  %i.bn = sub i64 %i.bm, %1
  %i.bo = tail call i64 @rb_str_subseq(i64 noundef %0, i64 noundef 0, i64 noundef %i.bn) #26
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.bl, ptr noundef nonnull @.str.8, i64 noundef %i.bo) #27
  unreachable
}

declare ptr @rb_enc_get(i64 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc i64 @QUOTE(i64 noundef %0) unnamed_addr #5 {
bb.a:
  %i.a = tail call i64 @rb_str_quote_unprintable(i64 noundef %0) #26
  ret i64 %i.a
}

declare i64 @rb_check_id_cstr(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare i64 @rb_str_subseq(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_path2class(ptr noundef nonnull %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @rb_str_new_cstr(ptr noundef nonnull %0) #26
  %i.b = tail call i64 @rb_path_to_class(i64 noundef %i.a)
  ret i64 %i.b
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_class_name(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 3 uses
  %i.b = tail call i64 @rb_class_real(i64 noundef %0) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.c = call fastcc i64 @rb_tmp_class_path(i64 noundef %i.b, ptr noundef %i.a, ptr noundef nonnull @make_temporary_path) ; 2 uses
  %i.d = icmp eq i64 %i.c, 4
  br i1 %i.d, label %rb_class_path.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i64 @rb_str_dup(i64 noundef %i.c) #26
  br label %rb_class_path.exit

rb_class_path.exit:                               ; preds = %bb.a, %bb.b
  %.0.i = phi i64 [ 4, %bb.a ], [ %i.e, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret i64 %.0.i
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i64 @rb_class_real(i64 noundef) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define dso_local ptr @rb_class2name(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.b = tail call i64 @rb_class_real(i64 noundef %0) #28
  %i.c = call fastcc i64 @rb_tmp_class_path(i64 noundef %i.b, ptr noundef %i.a, ptr noundef nonnull @make_temporary_path) ; 2 uses
  %i.d = icmp eq i64 %i.c, 4
  br i1 %i.d, label %RSTRING_PTR.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = inttoptr i64 %i.c to ptr                 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !20
  %i.g = and i64 %i.f, 8192
  %.not.i = icmp eq i64 %i.g, 0
  %i.h = getelementptr i8, ptr %i.e, i64 24       ; 2 uses
  br i1 %.not.i, label %RSTRING_PTR.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !42
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %i.i, %bb.c ], [ %i.h, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret ptr %.0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local ptr @rb_obj_classname(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 3 uses
  %i.b = icmp eq i64 %0, 0
  %i.c = and i64 %0, 7
  %i.d = icmp ne i64 %i.c, 0
  %i.e = or i1 %i.b, %i.d
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = inttoptr i64 %0 to ptr
  %i.g = getelementptr i8, ptr %i.f, i64 8
  br label %rb_class_of.exit

bb.c:                                             ; preds = %bb.a
  switch i64 %0, label %bb.f [
    i64 0, label %rb_class_of.exit
    i64 4, label %bb.d
    i64 20, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  br label %rb_class_of.exit

bb.e:                                             ; preds = %bb.c
  br label %rb_class_of.exit

bb.f:                                             ; preds = %bb.c
  %i.h = trunc i64 %0 to i1
  br i1 %i.h, label %rb_class_of.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = and i64 %0, 254
  %i.j = icmp eq i64 %i.i, 12
  %spec.select.i = select i1 %i.j, ptr @rb_cSymbol, ptr @rb_cFloat
  br label %rb_class_of.exit

rb_class_of.exit:                                 ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %.0.in.i = phi ptr [ %i.g, %bb.b ], [ @rb_cNilClass, %bb.d ], [ @rb_cTrueClass, %bb.e ], [ @rb_cFalseClass, %bb.c ], [ @rb_cInteger, %bb.f ], [ %spec.select.i, %bb.g ]
  %.0.i = load i64, ptr %.0.in.i, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.k = tail call i64 @rb_class_real(i64 noundef %.0.i) #28
  %i.l = call fastcc i64 @rb_tmp_class_path(i64 noundef %i.k, ptr noundef %i.a, ptr noundef nonnull @make_temporary_path) ; 2 uses
  %i.m = icmp eq i64 %i.l, 4
  br i1 %i.m, label %rb_class2name.exit, label %bb.h

bb.h:                                             ; preds = %rb_class_of.exit
  %i.n = inttoptr i64 %i.l to ptr                 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !20
  %i.p = and i64 %i.o, 8192
  %.not.i.i = icmp eq i64 %i.p, 0
  %i.q = getelementptr i8, ptr %i.n, i64 24       ; 2 uses
  br i1 %.not.i.i, label %rb_class2name.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !42
  br label %rb_class2name.exit

rb_class2name.exit:                               ; preds = %rb_class_of.exit, %bb.h, %bb.i
  %.0.i1 = phi ptr [ null, %rb_class_of.exit ], [ %i.r, %bb.i ], [ %i.q, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret ptr %.0.i1
}

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_free_rb_global_tbl() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @rb_global_tbl, align 8, !tbaa !11
  tail call void @rb_id_table_foreach_values(ptr noundef %i.a, ptr noundef nonnull @free_global_entry_i, ptr noundef null) #26
  %i.b = load ptr, ptr @rb_global_tbl, align 8, !tbaa !11
  tail call void @rb_id_table_free(ptr noundef %i.b) #26
  ret void
}

declare void @rb_id_table_foreach_values(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @free_global_entry_i(i64 noundef %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !58   ; 4 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !61
  %i.d = add i32 %i.c, -1                         ; 2 uses
  store i32 %i.d, ptr %i.b, align 8, !tbaa !61
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %i.b, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !64   ; 2 uses
  %.not6.i = icmp eq ptr %i.g, null
  br i1 %.not6.i, label %free_global_variable.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.07.i = phi ptr [ %i.i, %.lr.ph.i ], [ %i.g, %bb.b ] ; 2 uses
  %i.h = getelementptr i8, ptr %.07.i, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !65   ; 2 uses
  tail call void @ruby_xfree(ptr noundef nonnull %.07.i) #26
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %free_global_variable.exit, label %.lr.ph.i, !llvm.loop !67

free_global_variable.exit:                        ; preds = %.lr.ph.i, %bb.b
  tail call void @ruby_xfree(ptr noundef nonnull %i.b) #26
  br label %bb.c

bb.c:                                             ; preds = %free_global_variable.exit, %bb.a
  tail call void @ruby_xfree(ptr noundef nonnull %i.a) #26
  ret i32 2
}

declare void @rb_id_table_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_free_generic_fields_tbl_() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @generic_fields_tbl_, align 8, !tbaa !14
  tail call void @rb_st_free_table(ptr noundef %i.a) #26
  ret void
}

declare void @rb_st_free_table(ptr noundef) local_unnamed_addr #1

end_hunk_1
