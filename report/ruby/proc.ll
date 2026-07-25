inline.NumInlined: 524
inline.NumDeleted: 117
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@rb_mod_define_method_with_visibility:bb.a

bb.f:                                             ; preds = %bb.e
  %i.n = load i64, ptr @rb_eTypeError, align 8, !tbaa !38
  %i.o = call ptr @rb_obj_classname(i64 noundef %i.k) #18
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.n, ptr noundef nonnull @.str.134, ptr noundef %i.o) #19
  unreachable

bb.g:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.p = phi i64 [ %i.i, %bb.c ], [ %i.k, %bb.d ], [ %i.k, %bb.e ] ; 3 uses
  %.not39 = phi i1 [ true, %bb.c ], [ false, %bb.d ], [ true, %bb.e ]
  %.not38 = icmp eq i64 %i.f, 0
  br i1 %.not38, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.q = load i64, ptr %i.b, align 8, !tbaa !38
  %i.r = call i64 @rb_to_id(i64 noundef %i.q) #18
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.0 = phi i64 [ %i.f, %bb.g ], [ %i.r, %bb.h ]  ; 5 uses
  br i1 %.not39, label %bb.q, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = inttoptr i64 %i.p to ptr                 ; 2 uses
  %i.t = getelementptr i8, ptr %i.s, i64 24
  %i.u = load i64, ptr %i.t, align 8, !tbaa !34
  %i.v = trunc i64 %i.u to i1
  %i.w = getelementptr i8, ptr %i.s, i64 32       ; 2 uses
  br i1 %i.v, label %RTYPEDDATA_GET_DATA.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !36
  br label %RTYPEDDATA_GET_DATA.exit

RTYPEDDATA_GET_DATA.exit:                         ; preds = %bb.j, %bb.k
  %i.y = phi ptr [ %i.x, %bb.k ], [ %i.w, %bb.j ]
  %i.z = getelementptr i8, ptr %i.y, i64 32       ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !87  ; 2 uses
  %i.ab = getelementptr i8, ptr %i.aa, i64 32
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !126 ; 7 uses
  %.not42 = icmp eq i64 %i.ac, %2
  br i1 %.not42, label %bb.n, label %bb.l

bb.l:                                             ; preds = %RTYPEDDATA_GET_DATA.exit
  %i.ad = icmp eq i64 %i.ac, 0
  %i.ae = and i64 %i.ac, 7
  %i.af = icmp ne i64 %i.ae, 0
  %i.ag = or i1 %i.ad, %i.af
  br i1 %i.ag, label %rbimpl_RB_TYPE_P_fastpath.exit.thread, label %rbimpl_RB_TYPE_P_fastpath.exit

rbimpl_RB_TYPE_P_fastpath.exit:                   ; preds = %bb.l
  %i.ah = inttoptr i64 %i.ac to ptr
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !45 ; 2 uses
  %i.aj = and i64 %i.ai, 31
  %i.ak = icmp eq i64 %i.aj, 3
  br i1 %i.ak, label %bb.n, label %.thread

rbimpl_RB_TYPE_P_fastpath.exit.thread:            ; preds = %bb.l
  %i.al = call i64 @rb_class_inherited_p(i64 noundef %2, i64 noundef %i.ac) #23
  %i.am = and i64 %i.al, -5
  %.not51 = icmp eq i64 %i.am, 0
  br i1 %.not51, label %RCLASS_SINGLETON_P.exit.thread, label %bb.n

.thread:                                          ; preds = %rbimpl_RB_TYPE_P_fastpath.exit
  %i.an = call i64 @rb_class_inherited_p(i64 noundef %2, i64 noundef %i.ac) #23
  %i.ao = and i64 %i.an, -5
  %.not = icmp eq i64 %i.ao, 0
  br i1 %.not, label %rbimpl_RB_TYPE_P_fastpath.exit.i, label %bb.n

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %.thread
  %i.ap = and i64 %i.ai, 8223
  %or.cond50 = icmp eq i64 %i.ap, 8194
  br i1 %or.cond50, label %bb.m, label %RCLASS_SINGLETON_P.exit.thread

bb.m:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.aq = load i64, ptr @rb_eTypeError, align 8, !tbaa !38
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.aq, ptr noundef nonnull @.str.135) #19
  unreachable

RCLASS_SINGLETON_P.exit.thread:                   ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread, %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.ar = load i64, ptr @rb_eTypeError, align 8, !tbaa !38
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ar, ptr noundef nonnull @.str.136, i64 noundef %i.ac) #19
  unreachable

bb.n:                                             ; preds = %.thread, %rbimpl_RB_TYPE_P_fastpath.exit.thread, %rbimpl_RB_TYPE_P_fastpath.exit, %RTYPEDDATA_GET_DATA.exit
  %i.as = load i8, ptr %3, align 4
  %i.at = and i8 %i.as, 7
  %i.au = zext nneg i8 %i.at to i32
  %i.av = call ptr @rb_method_entry_set(i64 noundef %2, i64 noundef %.0, ptr noundef nonnull %i.aa, i32 noundef %i.au) #18 ; 0 uses
  %i.aw = load i8, ptr %3, align 4
  %i.ax = and i8 %i.aw, 8
  %.not43 = icmp eq i8 %i.ax, 0
  br i1 %.not43, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ay = call i64 @rb_singleton_class(i64 noundef %2) #18
  %i.az = load ptr, ptr %i.z, align 8, !tbaa !87
  %i.ba = call ptr @rb_method_entry_set(i64 noundef %i.ay, i64 noundef %.0, ptr noundef %i.az, i32 noundef 1) #18 ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  store ptr %i.a, ptr %i.c, align 8, !tbaa !47
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.c) #18, !srcloc !162
  %i.bb = load ptr, ptr %i.c, align 8, !tbaa !47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  %i.bc = load volatile i64, ptr %i.bb, align 8, !tbaa !38 ; 0 uses
  br label %bb.v

bb.q:                                             ; preds = %bb.i
  %i.bd = call i64 @rb_proc_dup(i64 noundef %i.p) #18 ; 3 uses
  br label %tailrecurse.i

tailrecurse.i:                                    ; preds = %bb.r, %bb.q
  %.tr.i = phi i64 [ %i.bd, %bb.q ], [ %i.bi, %bb.r ]
  %i.be = inttoptr i64 %.tr.i to ptr
  %i.bf = getelementptr i8, ptr %i.be, i64 32
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !36 ; 3 uses
  %i.bh = getelementptr i8, ptr %i.bg, i64 24
  %.val.i.i = load i32, ptr %i.bh, align 8, !tbaa !16
  switch i32 %.val.i.i, label %bb.s [
    i32 0, label %vm_proc_iseq.exit
    i32 3, label %bb.r
    i32 1, label %vm_proc_iseq.exit.thread
    i32 2, label %vm_proc_iseq.exit.thread
  ]

bb.r:                                             ; preds = %tailrecurse.i
  %i.bi = load i64, ptr %i.bg, align 8, !tbaa !37
  br label %tailrecurse.i

bb.s:                                             ; preds = %tailrecurse.i
  unreachable

vm_proc_iseq.exit:                                ; preds = %tailrecurse.i
  %i.bj = getelementptr i8, ptr %i.bg, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !37
  %.not40 = icmp eq ptr %i.bk, null
  br i1 %.not40, label %vm_proc_iseq.exit.thread, label %bb.t

bb.t:                                             ; preds = %vm_proc_iseq.exit
  %i.bl = inttoptr i64 %i.bd to ptr
  %i.bm = getelementptr i8, ptr %i.bl, i64 32
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !11
  %i.bo = getelementptr i8, ptr %i.bn, i64 32     ; 2 uses
  %i.bp = load i8, ptr %i.bo, align 8
  %i.bq = or i8 %i.bp, 3
  store i8 %i.bq, ptr %i.bo, align 8
  br label %vm_proc_iseq.exit.thread

vm_proc_iseq.exit.thread:                         ; preds = %tailrecurse.i, %tailrecurse.i, %bb.t, %vm_proc_iseq.exit
  %i.br = inttoptr i64 %i.bd to ptr
  %i.bs = load i8, ptr %3, align 4
  %i.bt = and i8 %i.bs, 7
  %i.bu = zext nneg i8 %i.bt to i32
  call void @rb_add_method(i64 noundef %2, i64 noundef %.0, i32 noundef 4, ptr noundef %i.br, i32 noundef %i.bu) #18
  %i.bv = load i8, ptr %3, align 4
  %i.bw = and i8 %i.bv, 8
  %.not41 = icmp eq i8 %i.bw, 0
  br i1 %.not41, label %bb.v, label %bb.u

bb.u:                                             ; preds = %vm_proc_iseq.exit.thread
  %i.bx = call i64 @rb_singleton_class(i64 noundef %2) #18
  %i.by = inttoptr i64 %i.p to ptr
  call void @rb_add_method(i64 noundef %i.bx, i64 noundef %.0, i32 noundef 4, ptr noundef %i.by, i32 noundef 1) #18
  br label %bb.v

bb.v:                                             ; preds = %vm_proc_iseq.exit.thread, %bb.u, %bb.p
  %i.bz = call i64 @rb_id2sym(i64 noundef %.0) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret i64 %i.bz
}

declare ptr @rb_obj_classname(i64 noundef) local_unnamed_addr #2

declare i64 @rb_to_id(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i64 @rb_class_inherited_p(i64 noundef, i64 noundef) local_unnamed_addr #10

declare ptr @rb_method_entry_set(i64 noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @rb_add_method(i64 noundef, i64 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i64 @rb_top_main_class(ptr noundef) local_unnamed_addr #2

declare void @rb_vm_block_copy(i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @rb_f_eval(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i64 @rb_vm_env_local_variables(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc ptr @get_local_variable_ptr(ptr nofree noundef nonnull captures(none) %0, i64 noundef %1, i1 noundef zeroext %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !160    ; 4 uses
  br i1 %2, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.a, %bb.e
  %.037.us = phi ptr [ %5, %bb.e ], [ %i.b, %bb.a ] ; 4 uses
  %i.c = getelementptr i8, ptr %.037.us, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !133  ; 2 uses
  %.val48.us = load i64, ptr %i.d, align 8, !tbaa !38 ; 3 uses
  %i.e = and i64 %.val48.us, 128
  %.not.us = icmp eq i64 %i.e, 0
  br i1 %.not.us, label %bb.b, label %.split71.us

bb.b:                                             ; preds = %.split.us
  %i.f = and i64 %.val48.us, 16
  %.not42.us = icmp eq i64 %i.f, 0
  br i1 %.not42.us, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %.037.us, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !135  ; 2 uses
  %i.i = getelementptr i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !51   ; 3 uses
  %i.k = getelementptr i8, ptr %i.j, i64 240
  %i.l = load i32, ptr %i.k, align 8, !tbaa !163  ; 3 uses
  %.not4568.us.not = icmp eq i32 %i.l, 0
  br i1 %.not4568.us.not, label %bb.e, label %.lr.ph.us

._crit_edge.us.a:                                 ; preds = %.lr.ph.us, %bb.d
  %indvars.iv105 = phi i64 [ 0, %.lr.ph.us ], [ %indvars.iv.next106, %bb.d ] ; 3 uses
  %3 = getelementptr [8 x i8], ptr %i.o, i64 %indvars.iv105
  %4 = load i64, ptr %3, align 8, !tbaa !38
  %.not46.us.a = icmp eq i64 %4, %1
  br i1 %.not46.us.a, label %.split73.us, label %bb.d

bb.d:                                             ; preds = %._crit_edge.us.a
  %indvars.iv.next106 = add nuw nsw i64 %indvars.iv105, 1 ; 2 uses
  %i.m = icmp eq i64 %indvars.iv.next106, %wide.trip.count108
  br i1 %i.m, label %bb.e, label %._crit_edge.us.a, !llvm.loop !164

bb.e:                                             ; preds = %bb.d, %bb.c
  %5 = tail call ptr @rb_vm_env_prev_env(ptr noundef %.037.us) #18 ; 2 uses
  %exitcond109.not = icmp eq ptr %5, null
  br i1 %exitcond109.not, label %.critedge, label %.split.us, !llvm.loop !165

.lr.ph.us:                                        ; preds = %bb.c
  %i.n = getelementptr i8, ptr %i.j, i64 144
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !166
  %wide.trip.count108 = zext i32 %i.l to i64
  br label %._crit_edge.us.a

.split:                                           ; preds = %bb.a
  %i.p = getelementptr i8, ptr %i.b, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !133  ; 2 uses
  %.val48 = load i64, ptr %i.q, align 8, !tbaa !38 ; 3 uses
  %i.r = and i64 %.val48, 128
  %.not = icmp eq i64 %i.r, 0
  br i1 %.not, label %bb.f, label %.split71.us

bb.f:                                             ; preds = %.split
  %i.s = and i64 %.val48, 16
  %.not42 = icmp eq i64 %i.s, 0
  br i1 %.not42, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr i8, ptr %i.b, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !135  ; 2 uses
  %i.v = getelementptr i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !51   ; 3 uses
  %i.x = getelementptr i8, ptr %i.w, i64 240
  %i.y = load i32, ptr %i.x, align 8, !tbaa !163  ; 3 uses
  %.not4568.not = icmp eq i32 %i.y, 0
  br i1 %.not4568.not, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g
  %i.z = getelementptr i8, ptr %i.w, i64 144
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !166
  %wide.trip.count = zext i32 %i.y to i64
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.n
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.n ] ; 3 uses
  %i.ab = getelementptr [8 x i8], ptr %i.aa, i64 %indvars.iv
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !38
  %i.ad = icmp eq i64 %i.ac, %1
  br i1 %i.ad, label %.split73.us, label %bb.n

.split73.us:                                      ; preds = %bb.h, %._crit_edge.us.a
  %.us-phi = phi ptr [ %i.h, %._crit_edge.us.a ], [ %i.u, %bb.h ]
  %.us-phi74 = phi ptr [ %i.j, %._crit_edge.us.a ], [ %i.w, %bb.h ] ; 3 uses
  %.us-phi75 = phi i32 [ %i.l, %._crit_edge.us.a ], [ %i.y, %bb.h ]
  %.us-phi76 = phi ptr [ %.037.us, %._crit_edge.us.a ], [ %i.b, %bb.h ] ; 5 uses
  %.us-phi77 = phi ptr [ %i.d, %._crit_edge.us.a ], [ %i.q, %bb.h ] ; 3 uses
  %.us-phi78 = phi i64 [ %.val48.us, %._crit_edge.us.a ], [ %.val48, %bb.h ] ; 2 uses
  %.us-phi79 = phi i64 [ %indvars.iv105, %._crit_edge.us.a ], [ %indvars.iv, %bb.h ] ; 2 uses
  %.us-phi80 = trunc i64 %.us-phi79 to i32        ; 2 uses
  %i.ae = getelementptr i8, ptr %.us-phi74, i64 176
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !167
  %i.ag = icmp eq ptr %i.af, %.us-phi
  br i1 %i.ag, label %bb.i, label %.thread

bb.i:                                             ; preds = %.split73.us
  %i.ah = getelementptr i8, ptr %.us-phi74, i64 16
  %i.ai = load i16, ptr %i.ah, align 8
  %i.aj = and i16 %i.ai, 64
  %.not43 = icmp eq i16 %i.aj, 0
  br i1 %.not43, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ak = getelementptr i8, ptr %.us-phi74, i64 44
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !168
  %i.am = icmp eq i32 %i.al, %.us-phi80
  %i.an = and i64 %.us-phi78, 512
  %.not44 = icmp eq i64 %i.an, 0
  %or.cond = and i1 %.not44, %i.am
  br i1 %or.cond, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  %i.ao = ptrtoint ptr %.us-phi76 to i64
  %i.ap = getelementptr i8, ptr %.us-phi76, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !134
  %i.ar = getelementptr [8 x i8], ptr %i.aq, i64 %.us-phi79
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.as = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !21
  store volatile ptr %i.at, ptr %i.a, align 8, !tbaa !21
  %.0..0..0..0..0..0..i = load volatile ptr, ptr %i.a, align 8, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.au = and i64 %.us-phi78, 2147418113
  switch i64 %i.au, label %bb.l [
    i64 1145307137, label %VM_ENV_BLOCK_HANDLER.exit
    i64 858980353, label %VM_ENV_BLOCK_HANDLER.exit
  ]

bb.l:                                             ; preds = %bb.k
  %i.av = getelementptr i8, ptr %.us-phi77, i64 -8
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !38
  br label %VM_ENV_BLOCK_HANDLER.exit

VM_ENV_BLOCK_HANDLER.exit:                        ; preds = %bb.k, %bb.k, %bb.l
  %.0.i = phi i64 [ %i.aw, %bb.l ], [ 0, %bb.k ], [ 0, %bb.k ]
  %i.ax = tail call i64 @rb_vm_bh_to_procval(ptr noundef %.0..0..0..0..0..0..i, i64 noundef %.0.i) #18 ; 4 uses
  store i64 %i.ax, ptr %i.ar, align 8, !tbaa !38
  %i.ay = icmp eq i64 %i.ax, 0
  %i.az = and i64 %i.ax, 7
  %i.ba = icmp ne i64 %i.az, 0
  %i.bb = or i1 %i.ay, %i.ba
  br i1 %i.bb, label %rb_obj_write.exit, label %bb.m

bb.m:                                             ; preds = %VM_ENV_BLOCK_HANDLER.exit
  tail call void @rb_gc_writebarrier(i64 noundef %i.ao, i64 noundef %i.ax) #18
  br label %rb_obj_write.exit

rb_obj_write.exit:                                ; preds = %VM_ENV_BLOCK_HANDLER.exit, %bb.m
  %i.bc = load i64, ptr %.us-phi77, align 8, !tbaa !38
  %i.bd = or i64 %i.bc, 512
  store i64 %i.bd, ptr %.us-phi77, align 8, !tbaa !38
  br label %.thread

.thread:                                          ; preds = %.split73.us, %bb.i, %bb.j, %rb_obj_write.exit
  store ptr %.us-phi76, ptr %0, align 8, !tbaa !160
  %i.be = getelementptr i8, ptr %.us-phi76, i64 32
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !131
  %i.bg = getelementptr i8, ptr %.us-phi76, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !134
  %reass.sub = sub i32 %.us-phi80, %.us-phi75
  %.neg = add i32 %reass.sub, -4
  %i.bi = add i32 %.neg, %i.bf
  %i.bj = zext i32 %i.bi to i64
  %i.bk = getelementptr [8 x i8], ptr %i.bh, i64 %i.bj
  br label %.loopexit

bb.n:                                             ; preds = %bb.h
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %bb.h, !llvm.loop !164

.split71.us:                                      ; preds = %.split.us, %.split
  store ptr null, ptr %0, align 8, !tbaa !160
  br label %.loopexit

.critedge:                                        ; preds = %bb.n, %bb.e, %bb.g
  store ptr null, ptr %0, align 8, !tbaa !160
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.f, %.thread, %.critedge, %.split71.us
  %.2 = phi ptr [ null, %.split71.us ], [ %i.bk, %.thread ], [ null, %.critedge ], [ null, %bb.f ], [ null, %bb.b ]
  ret ptr %.2
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i32 @rb_is_local_id(i64 noundef) local_unnamed_addr #6

declare i32 @rb_is_local_name(i64 noundef) local_unnamed_addr #2

declare i64 @rb_vm_bh_to_procval(ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @rb_vm_env_prev_env(ptr noundef) local_unnamed_addr #2

declare i64 @rb_intern_str(i64 noundef) local_unnamed_addr #2

declare ptr @rb_binding_add_dynavars(i64 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i64 @rb_vm_env_numbered_parameters(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #13

attributes #0 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inlinehint noreturn nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree norecurse nosync nounwind sspstrong memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #17 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nounwind }
attributes #19 = { noreturn nounwind }
attributes #20 = { nounwind willreturn memory(none) }
attributes #21 = { cold noreturn nounwind }
attributes #22 = { noreturn }
attributes #23 = { nounwind willreturn memory(read) }
attributes #24 = { nounwind allocsize(0,1) }
attributes #25 = { cold nounwind }

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
!11 = !{!12, !15, i64 32}
!12 = !{!"RData", !13, i64 0, !15, i64 16, !15, i64 24, !15, i64 32}
!13 = !{!"RBasic", !14, i64 0, !14, i64 8}
!14 = !{!"long", !9, i64 0}
!15 = !{!"any pointer", !9, i64 0}
!16 = !{!17, !8, i64 24}
!17 = !{!"rb_block", !9, i64 0, !8, i64 24}
!18 = !{!19, !20, i64 8}
!19 = !{!"rb_captured_block", !14, i64 0, !20, i64 8, !9, i64 16}
!20 = !{!"p1 long", !15, i64 0}
!21 = !{!22, !22, i64 0}
!22 = !{!"p1 _ZTS27rb_execution_context_struct", !15, i64 0}
!23 = !{!24, !25, i64 16}
!24 = !{!"rb_execution_context_struct", !20, i64 0, !14, i64 8, !25, i64 16, !26, i64 24, !8, i64 32, !8, i64 36, !27, i64 40, !28, i64 48, !29, i64 56, !29, i64 64, !30, i64 72, !14, i64 80, !14, i64 88, !14, i64 96, !20, i64 104, !14, i64 112, !31, i64 120, !14, i64 128, !14, i64 136, !9, i64 144, !8, i64 145, !14, i64 152, !32, i64 160, !33, i64 176}
!25 = !{!"p1 _ZTS23rb_control_frame_struct", !15, i64 0}
!26 = !{!"p1 _ZTS9rb_vm_tag", !15, i64 0}
!27 = !{!"p1 _ZTS15rb_fiber_struct", !15, i64 0}
!28 = !{!"p1 _ZTS16rb_thread_struct", !15, i64 0}
!29 = !{!"long long", !9, i64 0}
!30 = !{!"p1 _ZTS11rb_id_table", !15, i64 0}
!31 = !{!"p1 _ZTS19rb_trace_arg_struct", !15, i64 0}
!32 = !{!"", !14, i64 0, !14, i64 8}
!33 = !{!"", !20, i64 0, !20, i64 8, !14, i64 16, !9, i64 24}
!34 = !{!35, !14, i64 24}
!35 = !{!"RTypedData", !13, i64 0, !14, i64 16, !14, i64 24, !15, i64 32}
!36 = !{!35, !15, i64 32}
!37 = !{!9, !9, i64 0}
!38 = !{!14, !14, i64 0}
!39 = !{!40, !15, i64 16}
!40 = !{!"vm_ifunc", !14, i64 0, !20, i64 8, !15, i64 16, !15, i64 24, !41, i64 32}
!41 = !{!"vm_ifunc_argc", !8, i64 0, !8, i64 4}
!42 = !{!40, !15, i64 24}
!43 = !{!40, !8, i64 32}
!44 = !{!40, !8, i64 36}
!45 = !{!13, !14, i64 0}
!46 = !{!13, !14, i64 8}
!47 = !{!20, !20, i64 0}
!48 = !{i64 2152372500}
!49 = !{i64 2152372665}
!50 = !{i64 2152373199}
!51 = !{!52, !53, i64 16}
!52 = !{!"rb_iseq_struct", !14, i64 0, !14, i64 8, !53, i64 16, !9, i64 24}
!53 = !{!"p1 _ZTS21rb_iseq_constant_body", !15, i64 0}
!54 = !{!55, !8, i64 24}
!55 = !{!"rb_iseq_constant_body", !8, i64 0, !8, i64 4, !20, i64 8, !56, i64 16, !59, i64 64, !62, i64 112, !20, i64 144, !15, i64 152, !66, i64 160, !67, i64 168, !67, i64 176, !68, i64 184, !69, i64 192, !70, i64 200, !8, i64 240, !8, i64 244, !8, i64 248, !8, i64 252, !8, i64 256, !8, i64 260, !8, i64 264, !8, i64 268, !71, i64 272, !9, i64 280, !30, i64 288, !67, i64 296, !15, i64 304, !14, i64 312, !15, i64 320, !14, i64 328, !15, i64 336, !14, i64 344, !15, i64 352}
!56 = !{!"rb_iseq_parameters", !57, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !20, i64 32, !58, i64 40}
!57 = !{!"", !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 1, !8, i64 1, !8, i64 1, !8, i64 1, !8, i64 1, !8, i64 1}
!58 = !{!"p1 _ZTS21rb_iseq_param_keyword", !15, i64 0}
!59 = !{!"rb_iseq_location_struct", !14, i64 0, !14, i64 8, !14, i64 16, !8, i64 24, !8, i64 28, !60, i64 32}
!60 = !{!"rb_code_location_struct", !61, i64 0, !61, i64 8}
!61 = !{!"rb_code_position_struct", !8, i64 0, !8, i64 4}
!62 = !{!"iseq_insn_info", !63, i64 0, !64, i64 8, !8, i64 16, !65, i64 24}
!63 = !{!"p1 _ZTS20iseq_insn_info_entry", !15, i64 0}
!64 = !{!"p1 int", !15, i64 0}
!65 = !{!"p1 _ZTS16succ_index_table", !15, i64 0}
!66 = !{!"p1 _ZTS16iseq_catch_table", !15, i64 0}
!67 = !{!"p1 _ZTS14rb_iseq_struct", !15, i64 0}
!68 = !{!"p1 _ZTS25iseq_inline_storage_entry", !15, i64 0}
!69 = !{!"p1 _ZTS12rb_call_data", !15, i64 0}
!70 = !{!"", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !20, i64 32}
!71 = !{!"_Bool", !9, i64 0}
!72 = !{!55, !8, i64 28}
!73 = !{!55, !8, i64 40}
!74 = !{!55, !58, i64 56}
!75 = !{!76, !8, i64 4}
!76 = !{!"rb_iseq_param_keyword", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !20, i64 16, !20, i64 24}
!77 = !{!"branch_weights", i32 1073205, i32 2146410443}
!78 = !{!"branch_weights", i32 -100663296, i32 2097152}
!79 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!80 = !{!81, !84, i64 48}
!81 = !{!"rb_data_type_struct", !82, i64 0, !83, i64 8, !84, i64 48, !15, i64 56, !14, i64 64}
!82 = !{!"p1 omnipotent char", !15, i64 0}
!83 = !{!"", !15, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !9, i64 32}
!84 = !{!"p1 _ZTS19rb_data_type_struct", !15, i64 0}
!85 = distinct !{!85, !86}
!86 = !{!"llvm.loop.mustprogress"}
!87 = !{!88, !89, i64 32}
!88 = !{!"METHOD", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !89, i64 32}
!89 = !{!"p1 _ZTS22rb_method_entry_struct", !15, i64 0}
!90 = !{!91, !92, i64 16}
!91 = !{!"rb_method_entry_struct", !14, i64 0, !14, i64 8, !92, i64 16, !14, i64 24, !14, i64 32}
!92 = !{!"p1 _ZTS27rb_method_definition_struct", !15, i64 0}
!93 = distinct !{null}
!94 = !{i64 0, i64 8, !38, i64 8, i64 8, !47, i64 16, i64 8, !37}
!95 = !{!40, !14, i64 0}
!96 = !{!55, !8, i64 88}
!97 = !{ptr @rb_proc_get_iseq}
!98 = distinct !{!98, !86}
!99 = distinct !{!99, !86}
!100 = !{!101, !101, i64 0}
!101 = !{!"p1 _ZTS16rb_ractor_struct", !15, i64 0}
!102 = !{i64 2152379498}
!103 = !{!104, !112, i64 160}
!104 = !{!"RClass_boxable", !105, i64 0, !112, i64 160}
!105 = !{!"RClass_and_rb_classext_t", !106, i64 0, !107, i64 24}
!106 = !{!"RClass", !13, i64 0, !14, i64 16}
!107 = !{!"rb_classext_struct", !108, i64 0, !14, i64 8, !14, i64 16, !30, i64 24, !30, i64 32, !30, i64 40, !14, i64 48, !30, i64 56, !20, i64 64, !109, i64 72, !110, i64 80, !110, i64 88, !14, i64 96, !14, i64 104, !9, i64 112, !111, i64 120, !111, i64 122, !9, i64 124, !71, i64 125, !71, i64 125, !71, i64 125, !71, i64 125, !71, i64 125, !71, i64 125, !14, i64 128}
!108 = !{!"p1 _ZTS13rb_box_struct", !15, i64 0}
!109 = !{!"p1 _ZTS18rb_subclass_anchor", !15, i64 0}
!110 = !{!"p1 _ZTS17rb_box_subclasses", !15, i64 0}
!111 = !{!"short", !9, i64 0}
!112 = !{!"p1 _ZTS8st_table", !15, i64 0}
!113 = !{!114, !71, i64 128}
!114 = !{!"rb_box_struct", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !14, i64 48, !14, i64 56, !14, i64 64, !14, i64 72, !14, i64 80, !112, i64 88, !112, i64 96, !14, i64 104, !14, i64 112, !112, i64 120, !71, i64 128, !71, i64 129}
!115 = !{i8 0, i8 2}
!116 = !{}
!117 = !{!114, !14, i64 0}
!118 = !{!107, !14, i64 96}
!119 = !{!88, !14, i64 16}
!120 = !{!107, !14, i64 8}
!121 = distinct !{!121, !86}
!122 = !{!88, !14, i64 0}
!123 = !{!24, !14, i64 136}
!124 = !{!91, !14, i64 8}
!125 = !{!91, !14, i64 24}
!126 = !{!91, !14, i64 32}
!127 = !{!128, !14, i64 32}
!128 = !{!"rb_method_definition_struct", !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 4, !9, i64 8, !14, i64 32, !14, i64 40, !108, i64 48}
!129 = !{!"branch_weights", i32 716185737, i32 1431297911}
!130 = !{ptr @rb_method_iseq}
!131 = !{!132, !8, i64 32}
!132 = !{!"", !14, i64 0, !67, i64 8, !20, i64 16, !20, i64 24, !8, i64 32}
!133 = !{!132, !20, i64 16}
!134 = !{!132, !20, i64 24}
!135 = !{!132, !67, i64 8}
!136 = !{!55, !14, i64 64}
!137 = !{!138, !8, i64 40}
!138 = !{!"", !17, i64 0, !14, i64 32, !8, i64 40}
!139 = distinct !{null}
!140 = distinct !{null}
!141 = !{!"branch_weights", i32 2146410443, i32 1073205}
!142 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
end_hunk_0
