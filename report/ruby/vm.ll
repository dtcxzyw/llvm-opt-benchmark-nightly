inline.NumInlined: 3274
inline.NumDeleted: 574
begin_hunk_0_@vm_get_ev_const:bb.a
  br label %CREF_CLASS.exit86

bb.ar:                                            ; preds = %bb.al, %bb.ap
  br label %CREF_CLASS.exit86

bb.as:                                            ; preds = %bb.ap
  %i.cm = trunc i64 %i.cf to i1
  br i1 %i.cm, label %CREF_CLASS.exit86, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.cn = and i64 %i.cf, 254
  %i.co = icmp eq i64 %i.cn, 12
  %spec.select.i = select i1 %i.co, ptr @rb_cSymbol, ptr @rb_cFloat
  br label %CREF_CLASS.exit86

CREF_CLASS.exit86:                                ; preds = %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %.thread180, %CREF_CLASS.exit80.thread
  %.156.in = phi ptr [ %i.bl, %CREF_CLASS.exit80.thread ], [ %spec.select.i.i85, %bb.an ], [ %i.bz, %.thread180 ], [ %spec.select.i, %bb.at ], [ @rb_cInteger, %bb.as ], [ @rb_cFalseClass, %bb.al ], [ @rb_cInteger, %bb.am ], [ %i.cl, %bb.ao ], [ @rb_cNilClass, %bb.aq ], [ @rb_cTrueClass, %bb.ar ], [ @rb_cFalseClass, %bb.ap ]
  %.156 = load i64, ptr %.156.in, align 8, !tbaa !11 ; 2 uses
  %.not69 = icmp eq i32 %4, 0
  br i1 %.not69, label %bb.av, label %bb.au

bb.au:                                            ; preds = %CREF_CLASS.exit86
  %i.cp = call i32 @rb_const_defined(i64 noundef %.156, i64 noundef %2) #23
  %i.cq = sext i32 %i.cp to i64
  br label %bb.az

bb.av:                                            ; preds = %CREF_CLASS.exit86
  %i.cr = call i64 @rb_const_get(i64 noundef %.156, i64 noundef %2) #23
  br label %bb.az

bb.aw:                                            ; preds = %bb.a
  %i.cs = icmp eq i64 %1, 0
  %i.ct = and i64 %1, 7
  %i.cu = icmp ne i64 %i.ct, 0
  %i.cv = or i1 %i.cs, %i.cu
  br i1 %i.cv, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i, label %rbimpl_RB_TYPE_P_fastpath.exit4.i

rbimpl_RB_TYPE_P_fastpath.exit4.i:                ; preds = %bb.aw
  %i.cw = inttoptr i64 %1 to ptr
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !77
  %i.cy = and i64 %i.cx, 30
  %switch.i = icmp eq i64 %i.cy, 2
  br i1 %switch.i, label %vm_check_if_namespace.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i

rbimpl_RB_TYPE_P_fastpath.exit.thread.i:          ; preds = %rbimpl_RB_TYPE_P_fastpath.exit4.i, %bb.aw
  %i.cz = load i64, ptr @rb_eTypeError, align 8, !tbaa !11
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.cz, ptr noundef nonnull @.str.133, i64 noundef %1) #42
  unreachable

vm_check_if_namespace.exit:                       ; preds = %rbimpl_RB_TYPE_P_fastpath.exit4.i
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %vm_check_if_namespace.exit
  %i.da = tail call i32 @rb_public_const_defined_from(i64 noundef %1, i64 noundef %2) #23
  %i.db = sext i32 %i.da to i64
  br label %bb.az

bb.ay:                                            ; preds = %vm_check_if_namespace.exit
  %i.dc = tail call i64 @rb_public_const_get_from(i64 noundef %1, i64 noundef %2) #23
  br label %bb.az

bb.az:                                            ; preds = %.thread91, %bb.au, %bb.av, %bb.ay, %bb.ax
  %.4 = phi i64 [ %i.dc, %bb.ay ], [ %i.db, %bb.ax ], [ %.1.ph, %.thread91 ], [ %i.cq, %bb.au ], [ %i.cr, %bb.av ]
  ret i64 %.4
}

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_vm_getclassvariable(ptr noundef %0, ptr noundef readonly captures(none) %1, i64 noundef %2, ptr noundef captures(none) %3) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 32
  %.val = load ptr, ptr %i.a, align 8, !tbaa !15
  %i.b = tail call fastcc ptr @vm_get_cref(ptr noundef readonly %.val) ; 3 uses
  %i.c = load ptr, ptr %3, align 8, !tbaa !92     ; 4 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %i.c, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !95
  %i.f = load i64, ptr @ruby_vm_global_cvar_state, align 8, !tbaa !97
  %i.g = icmp eq i64 %i.e, %i.f
  br i1 %i.g, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %i.c, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !98
  %i.j = icmp eq ptr %i.i, %i.b
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !90
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %rb_ractor_main_p.exit.i, label %rb_ractor_main_p.exit.thread.i

rb_ractor_main_p.exit.i:                          ; preds = %bb.d
  %i.l = tail call zeroext i1 @rb_ractor_main_p_() #23
  br i1 %i.l, label %rb_ractor_main_p.exit.rb_ractor_main_p.exit.thread_crit_edge.i, label %bb.e, !prof !99

rb_ractor_main_p.exit.rb_ractor_main_p.exit.thread_crit_edge.i: ; preds = %rb_ractor_main_p.exit.i
  %.pre.i = load ptr, ptr %3, align 8, !tbaa !92
  br label %rb_ractor_main_p.exit.thread.i

rb_ractor_main_p.exit.thread.i:                   ; preds = %rb_ractor_main_p.exit.rb_ractor_main_p.exit.thread_crit_edge.i, %bb.d
  %i.m = phi ptr [ %.pre.i, %rb_ractor_main_p.exit.rb_ractor_main_p.exit.thread_crit_edge.i ], [ %i.c, %bb.d ]
  %i.n = getelementptr i8, ptr %i.m, i64 24
  %i.o = load i64, ptr %i.n, align 8, !tbaa !100
  %i.p = tail call i64 @rb_ivar_lookup(i64 noundef %i.o, i64 noundef %2, i64 noundef 36) #23
  br label %vm_getclassvariable.exit

bb.e:                                             ; preds = %rb_ractor_main_p.exit.i, %bb.c, %bb.b, %bb.a
  %i.q = tail call fastcc i64 @vm_get_cvar_base(ptr noundef %i.b, i32 noundef 1)
  %i.r = tail call fastcc i64 @update_classvariable_cache(ptr noundef %0, i64 noundef %i.q, i64 noundef %2, ptr noundef %i.b, ptr noundef nonnull %3)
  br label %vm_getclassvariable.exit

vm_getclassvariable.exit:                         ; preds = %rb_ractor_main_p.exit.thread.i, %bb.e
  %.0.i = phi i64 [ %i.p, %rb_ractor_main_p.exit.thread.i ], [ %i.r, %bb.e ]
  ret i64 %.0.i
}

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_vm_setclassvariable(ptr noundef %0, ptr noundef readonly captures(none) %1, i64 noundef %2, i64 noundef %3, ptr noundef captures(none) %4) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 32
  %.val = load ptr, ptr %i.a, align 8, !tbaa !15
  %i.b = tail call fastcc ptr @vm_get_cref(ptr noundef readonly %.val) ; 3 uses
  %i.c = load ptr, ptr %4, align 8, !tbaa !92     ; 4 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %i.c, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !95
  %i.f = load i64, ptr @ruby_vm_global_cvar_state, align 8, !tbaa !97
  %i.g = icmp eq i64 %i.e, %i.f
  br i1 %i.g, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %i.c, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !98
  %i.j = icmp eq ptr %i.i, %i.b
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !90
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %rb_ractor_main_p.exit.i, label %rb_ractor_main_p.exit.thread.i

rb_ractor_main_p.exit.i:                          ; preds = %bb.d
  %i.l = tail call zeroext i1 @rb_ractor_main_p_() #23
  br i1 %i.l, label %rb_ractor_main_p.exit.rb_ractor_main_p.exit.thread_crit_edge.i, label %bb.e, !prof !99

rb_ractor_main_p.exit.rb_ractor_main_p.exit.thread_crit_edge.i: ; preds = %rb_ractor_main_p.exit.i
  %.pre.i = load ptr, ptr %4, align 8, !tbaa !92
  br label %rb_ractor_main_p.exit.thread.i

rb_ractor_main_p.exit.thread.i:                   ; preds = %rb_ractor_main_p.exit.rb_ractor_main_p.exit.thread_crit_edge.i, %bb.d
  %i.m = phi ptr [ %.pre.i, %rb_ractor_main_p.exit.rb_ractor_main_p.exit.thread_crit_edge.i ], [ %i.c, %bb.d ]
  %i.n = getelementptr i8, ptr %i.m, i64 24
  %i.o = load i64, ptr %i.n, align 8, !tbaa !100
  %i.p = tail call zeroext i1 @rb_class_ivar_set(i64 noundef %i.o, i64 noundef %2, i64 noundef %3) #23 ; 0 uses
  br label %vm_setclassvariable.exit

bb.e:                                             ; preds = %rb_ractor_main_p.exit.i, %bb.c, %bb.b, %bb.a
  %i.q = tail call fastcc i64 @vm_get_cvar_base(ptr noundef %i.b, i32 noundef 1) ; 2 uses
  tail call void @rb_cvar_set(i64 noundef %i.q, i64 noundef %2, i64 noundef %3) #23
  %i.r = tail call fastcc i64 @update_classvariable_cache(ptr noundef %0, i64 noundef %i.q, i64 noundef %2, ptr noundef %i.b, ptr noundef nonnull %4) ; 0 uses
  br label %vm_setclassvariable.exit

vm_setclassvariable.exit:                         ; preds = %rb_ractor_main_p.exit.thread.i, %bb.e
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_vm_setinstancevariable(ptr noundef readnone captures(none) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #2 {
bb.a:
  tail call fastcc void @vm_setinstancevariable(i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %4)
  ret void
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc void @vm_setinstancevariable(i64 noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #11 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @rb_error_frozen_object(i64 noundef %0) #42
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = load atomic volatile i64, ptr %3 monotonic, align 8 ; 4 uses
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %i.e to i32 ; 6 uses
  %.sroa.4.0.extract.shift.i.i = lshr i64 %i.e, 32
  %.sroa.4.0.extract.trunc.i.i = trunc i64 %.sroa.4.0.extract.shift.i.i to i16
  %i.f = add i16 %.sroa.4.0.extract.trunc.i.i, -1 ; 3 uses
  %i.g = inttoptr i64 %0 to ptr                   ; 4 uses
  %i.h = load i64, ptr %i.g, align 8              ; 10 uses
  %i.i = and i64 %i.h, 31
  %cond.i = icmp eq i64 %i.i, 1
  %4 = lshr i64 %i.h, 32
  %5 = trunc nuw i64 %4 to i32                    ; 4 uses
  br i1 %cond.i, label %bb.d, label %vm_setivar.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.j = icmp eq i32 %.sroa.0.0.extract.trunc.i.i, %5
  br i1 %i.j, label %bb.j, label %bb.e, !prof !72

bb.e:                                             ; preds = %bb.d
  %.not.i = icmp eq i32 %.sroa.0.0.extract.trunc.i.i, -1
  br i1 %.not.i, label %vm_setivar.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = xor i32 %5, %.sroa.0.0.extract.trunc.i.i
  %i.l = and i32 %i.k, 264241152
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %RSHAPE_DIRECT_CHILD_P.exit.i, label %vm_setivar.exit.thread

RSHAPE_DIRECT_CHILD_P.exit.i:                     ; preds = %bb.f
  %i.n = and i64 %i.e, 524287
  %i.o = load ptr, ptr @rb_shape_tree, align 8, !tbaa !101
  %i.p = getelementptr [40 x i8], ptr %i.o, i64 %i.n ; 2 uses
  %i.q = getelementptr i8, ptr %i.p, i64 24
  %i.r = load i32, ptr %i.q, align 8, !tbaa !106
  %i.s = and i32 %5, 524287
  %i.t = icmp eq i32 %i.r, %i.s
  br i1 %i.t, label %bb.g, label %vm_setivar.exit.thread

bb.g:                                             ; preds = %RSHAPE_DIRECT_CHILD_P.exit.i
  %i.u = getelementptr i8, ptr %i.p, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !109
  %i.w = icmp eq i64 %i.v, %1
  br i1 %i.w, label %bb.h, label %vm_setivar.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.x = tail call fastcc zeroext i16 @RSHAPE_CAPACITY(i32 noundef %5)
  %i.y = tail call fastcc zeroext i16 @RSHAPE_CAPACITY(i32 noundef %.sroa.0.0.extract.trunc.i.i)
  %i.z = icmp eq i16 %i.x, %i.y
  br i1 %i.z, label %bb.i, label %vm_setivar.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.aa = and i64 %i.h, 4294967265
  %i.ab = shl i64 %i.e, 32
  %i.ac = or disjoint i64 %i.aa, %i.ab            ; 2 uses
  store i64 %i.ac, ptr %i.g, align 8, !tbaa !77
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.d
  %i.ad = phi i64 [ %i.h, %bb.d ], [ %i.ac, %bb.i ]
  %i.ae = and i64 %i.ad, 65536
  %.not.i.i = icmp eq i64 %i.ae, 0
  %i.af = getelementptr i8, ptr %i.g, i64 16      ; 2 uses
  br i1 %.not.i.i, label %ROBJECT_FIELDS.exit.i, label %bb.k, !prof !72

bb.k:                                             ; preds = %bb.j
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !27
  br label %ROBJECT_FIELDS.exit.i

ROBJECT_FIELDS.exit.i:                            ; preds = %bb.k, %bb.j
  %.0.i.i = phi ptr [ %i.ag, %bb.k ], [ %i.af, %bb.j ]
  %i.ah = zext i16 %i.f to i64
  %i.ai = getelementptr [8 x i8], ptr %.0.i.i, i64 %i.ah
  store i64 %2, ptr %i.ai, align 8, !tbaa !11
  %i.aj = icmp eq i64 %2, 0
  %i.ak = and i64 %2, 7
  %i.al = icmp ne i64 %i.ak, 0
  %i.am = or i1 %i.aj, %i.al
  br i1 %i.am, label %vm_setivar.exit, label %bb.l

bb.l:                                             ; preds = %ROBJECT_FIELDS.exit.i
  tail call void @rb_gc_writebarrier(i64 noundef %0, i64 noundef %2) #23
  br label %vm_setivar.exit

vm_setivar.exit:                                  ; preds = %ROBJECT_FIELDS.exit.i, %bb.l
  %i.an = icmp eq i64 %2, 36
  br i1 %i.an, label %vm_setivar.exit.vm_setivar.exit.thread_crit_edge, label %bb.p, !prof !110

vm_setivar.exit.vm_setivar.exit.thread_crit_edge: ; preds = %vm_setivar.exit
  %.pre = load i64, ptr %i.g, align 8, !tbaa !77
  br label %vm_setivar.exit.thread

vm_setivar.exit.thread:                           ; preds = %vm_setivar.exit.vm_setivar.exit.thread_crit_edge, %bb.f, %bb.e, %bb.g, %bb.h, %RSHAPE_DIRECT_CHILD_P.exit.i, %bb.c
  %i.ao = phi i64 [ %.pre, %vm_setivar.exit.vm_setivar.exit.thread_crit_edge ], [ %i.h, %bb.f ], [ %i.h, %bb.e ], [ %i.h, %bb.g ], [ %i.h, %bb.h ], [ %i.h, %RSHAPE_DIRECT_CHILD_P.exit.i ], [ %i.h, %bb.c ]
  %i.ap = trunc i64 %i.ao to i32
  %i.aq = and i32 %i.ap, 31
  switch i32 %i.aq, label %bb.n [
    i32 1, label %bb.o
    i32 2, label %bb.m
    i32 3, label %bb.m
  ]

bb.m:                                             ; preds = %vm_setivar.exit.thread, %vm_setivar.exit.thread
  %i.ar = tail call fastcc i64 @vm_setivar_class(i64 noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %.sroa.0.0.extract.trunc.i.i, i16 noundef zeroext %i.f)
  %i.as = icmp eq i64 %i.ar, 36
  br i1 %i.as, label %bb.o, label %bb.p

bb.n:                                             ; preds = %vm_setivar.exit.thread
  %i.at = tail call fastcc i64 @vm_setivar_default(i64 noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %.sroa.0.0.extract.trunc.i.i, i16 noundef zeroext %i.f)
  %i.au = icmp eq i64 %i.at, 36
  br i1 %i.au, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n, %bb.m, %vm_setivar.exit.thread
  %i.av = tail call fastcc i64 @vm_setivar_slowpath_ivar(i64 noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull %3) ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %vm_setivar.exit, %bb.o, %bb.n, %bb.m
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_vm_getinstancevariable(ptr noundef readnone captures(none) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i16, align 2                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = icmp eq i64 %1, 0
  %i.e = and i64 %1, 7
  %i.f = icmp ne i64 %i.e, 0
  %i.g = or i1 %i.d, %i.f
  br i1 %i.g, label %vm_getivar.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = inttoptr i64 %1 to ptr                   ; 5 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !77   ; 2 uses
  %i.j = trunc i64 %i.i to i32
  %i.k = and i32 %i.j, 31
  switch i32 %i.k, label %bb.h [
    i32 1, label %.thread
    i32 2, label %bb.c
    i32 3, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.l = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !90
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %rb_ractor_main_p.exit, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i

rb_ractor_main_p.exit:                            ; preds = %bb.c
  %i.m = tail call zeroext i1 @rb_ractor_main_p_() #23
  br i1 %i.m, label %rb_ractor_main_p.exit.RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i_crit_edge, label %bb.d, !prof !91

rb_ractor_main_p.exit.RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i_crit_edge: ; preds = %rb_ractor_main_p.exit
  %.pre = load i64, ptr %i.h, align 8, !tbaa !77
  br label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i

bb.d:                                             ; preds = %rb_ractor_main_p.exit
  %i.n = tail call i64 @rb_ivar_get(i64 noundef %1, i64 noundef %2) #23
  br label %vm_getivar.exit

RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i:        ; preds = %rb_ractor_main_p.exit.RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i_crit_edge, %bb.c
  %i.o = phi i64 [ %.pre, %rb_ractor_main_p.exit.RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i_crit_edge ], [ %i.i, %bb.c ]
  %i.p = and i64 %i.o, 16384
  %.not10.i.i = icmp eq i64 %i.p, 0
  br i1 %.not10.i.i, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i, label %bb.e, !prof !110

bb.e:                                             ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i
  %i.q = getelementptr i8, ptr %i.h, i64 24
  br label %RCLASS_WRITABLE_FIELDS_OBJ.exit

RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i: ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i
  %i.r = tail call ptr @rb_current_box() #23      ; 3 uses
  %.not.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i, label %.split.i.i, label %bb.f

.split.i.i:                                       ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i
  %i.s = tail call fastcc ptr @RCLASS_EXT_WRITABLE_LOOKUP(i64 noundef %1, ptr noundef null)
  br label %RCLASS_WRITABLE_FIELDS_OBJ.exit

bb.f:                                             ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i
  %i.t = getelementptr i8, ptr %i.r, i64 128
  %i.u = load i8, ptr %i.t, align 8, !tbaa !111, !range !114, !noundef !64
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %.split7.i.i, label %bb.g

.split7.i.i:                                      ; preds = %bb.f
  %i.w = tail call fastcc ptr @RCLASS_EXT_WRITABLE_LOOKUP(i64 noundef %1, ptr noundef nonnull %i.r)
  br label %RCLASS_WRITABLE_FIELDS_OBJ.exit

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr i8, ptr %i.h, i64 24
  br label %RCLASS_WRITABLE_FIELDS_OBJ.exit

RCLASS_WRITABLE_FIELDS_OBJ.exit:                  ; preds = %bb.e, %.split.i.i, %.split7.i.i, %bb.g
  %.0.i.i = phi ptr [ %i.q, %bb.e ], [ %i.x, %bb.g ], [ %i.s, %.split.i.i ], [ %i.w, %.split7.i.i ]
  %i.y = getelementptr i8, ptr %.0.i.i, i64 16
  %i.z = load i64, ptr %i.y, align 8, !tbaa !115
  br label %bb.i

bb.h:                                             ; preds = %bb.b
  %i.aa = tail call i64 @rb_obj_fields(i64 noundef %1, i64 noundef %2) #23
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %RCLASS_WRITABLE_FIELDS_OBJ.exit
  %.046.i = phi i64 [ %i.aa, %bb.h ], [ %i.z, %RCLASS_WRITABLE_FIELDS_OBJ.exit ] ; 2 uses
  %.not50.i = icmp eq i64 %.046.i, 0
  br i1 %.not50.i, label %vm_getivar.exit, label %..thread_crit_edge

..thread_crit_edge:                               ; preds = %bb.i
  %.phi.trans.insert = inttoptr i64 %.046.i to ptr
  br label %.thread

.thread:                                          ; preds = %..thread_crit_edge, %bb.b
  %.pre-phi = phi ptr [ %.phi.trans.insert, %..thread_crit_edge ], [ %i.h, %bb.b ] ; 3 uses
  store i64 36, ptr %i.a, align 8, !tbaa !11
  %.shift.i.i = getelementptr inbounds nuw i8, ptr %.pre-phi, i64 4
  %4 = load i32, ptr %.shift.i.i, align 4, !tbaa !77 ; 2 uses
  %i.ab = and i32 %4, -62914561                   ; 3 uses
  %5 = load i64, ptr %.pre-phi, align 8, !tbaa !77
  %i.ac = and i64 %5, 65536
  %.not5.i = icmp eq i64 %i.ac, 0
  %i.ad = getelementptr i8, ptr %.pre-phi, i64 16 ; 2 uses
  br i1 %.not5.i, label %rb_imemo_fields_ptr.exit, label %bb.j, !prof !72

bb.j:                                             ; preds = %.thread
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !27
  br label %rb_imemo_fields_ptr.exit

rb_imemo_fields_ptr.exit:                         ; preds = %.thread, %bb.j
  %.0.i5 = phi ptr [ %i.ae, %bb.j ], [ %i.ad, %.thread ] ; 3 uses
  %i.af = load atomic volatile i64, ptr %3 monotonic, align 8 ; 2 uses
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %i.af to i32 ; 3 uses
  %.sroa.4.0.extract.shift.i.i = lshr i64 %i.af, 32
  %.sroa.4.0.extract.trunc.i.i = trunc i64 %.sroa.4.0.extract.shift.i.i to i16 ; 2 uses
  store i32 %.sroa.0.0.extract.trunc.i.i, ptr %i.b, align 4, !tbaa !7
  %i.ag = add i16 %.sroa.4.0.extract.trunc.i.i, -1 ; 2 uses
  store i16 %i.ag, ptr %i.c, align 2, !tbaa !120
  %i.ah = icmp eq i32 %i.ab, %.sroa.0.0.extract.trunc.i.i
  br i1 %i.ah, label %bb.k, label %bb.m, !prof !72

bb.k:                                             ; preds = %rb_imemo_fields_ptr.exit
  %i.ai = icmp eq i16 %.sroa.4.0.extract.trunc.i.i, 0
  br i1 %i.ai, label %vm_getivar.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aj = zext i16 %i.ag to i64
  %i.ak = getelementptr [8 x i8], ptr %.0.i5, i64 %i.aj
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !11
  br label %vm_getivar.exit

bb.m:                                             ; preds = %rb_imemo_fields_ptr.exit
  %i.am = and i32 %4, 134217728
  %.not = icmp eq i32 %i.am, 0
  br i1 %.not, label %bb.o, label %bb.n, !prof !72

bb.n:                                             ; preds = %bb.m
  %i.an = call i32 @rb_st_lookup(ptr noundef %.0.i5, i64 noundef %2, ptr noundef nonnull %i.a) #23
  %.not53.i = icmp eq i32 %i.an, 0
  %.pre13 = load i64, ptr %i.a, align 8
  %spec.select = select i1 %.not53.i, i64 4, i64 %.pre13
  br label %vm_getivar.exit

bb.o:                                             ; preds = %bb.m
  %i.ao = call zeroext i1 @rb_shape_get_iv_index_with_hint(i32 noundef %i.ab, i64 noundef %2, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b) #23
  br i1 %i.ao, label %bb.p, label %bb.t

bb.p:                                             ; preds = %bb.o
  %i.ap = load i32, ptr %i.b, align 4, !tbaa !7   ; 2 uses
  %.not52.i = icmp eq i32 %i.ap, %.sroa.0.0.extract.trunc.i.i
  %.pre12 = load i16, ptr %i.c, align 2, !tbaa !120 ; 3 uses
  br i1 %.not52.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aq = add i16 %.pre12, 1
  %.sroa.4.0.insert.ext.i.i = zext i16 %i.aq to i64
  %.sroa.4.0.insert.shift.i.i = shl nuw nsw i64 %.sroa.4.0.insert.ext.i.i, 32
  %.sroa.0.0.insert.ext.i.i = zext i32 %i.ap to i64
  %.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.4.0.insert.shift.i.i, %.sroa.0.0.insert.ext.i.i
  store atomic volatile i64 %.sroa.0.0.insert.insert.i.i, ptr %3 monotonic, align 8
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.ar = icmp eq i16 %.pre12, -1
  br i1 %i.ar, label %vm_getivar.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.as = zext i16 %.pre12 to i64
  %i.at = getelementptr [8 x i8], ptr %.0.i5, i64 %i.as
  %i.au = load i64, ptr %i.at, align 8, !tbaa !11
  br label %vm_getivar.exit

bb.t:                                             ; preds = %bb.o
  %.sroa.0.0.insert.ext.i.i6 = zext i32 %i.ab to i64
  store atomic volatile i64 %.sroa.0.0.insert.ext.i.i6, ptr %3 monotonic, align 8
  br label %vm_getivar.exit

vm_getivar.exit:                                  ; preds = %bb.n, %bb.r, %bb.l, %bb.s, %bb.t, %bb.a, %bb.i, %bb.k, %bb.d
  %.0.i = phi i64 [ %i.n, %bb.d ], [ 4, %bb.i ], [ 4, %bb.k ], [ 4, %bb.a ], [ 4, %bb.r ], [ 4, %bb.t ], [ %i.au, %bb.s ], [ %spec.select, %bb.n ], [ %i.al, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret i64 %.0.i
}

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_vm_throw(ptr noundef readonly captures(none) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call fastcc i64 @vm_throw(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3)
  ret i64 %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @vm_throw(ptr noundef readonly captures(none) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) unnamed_addr #2 {
bb.a:
  %i.a = trunc i64 %2 to i32                      ; 2 uses
  %i.b = and i32 %i.a, 255                        ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.aj, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = and i32 %i.a, 32768
  %.val176.i = load ptr, ptr %0, align 8, !tbaa !121
  %i.d = getelementptr i8, ptr %0, i64 8
  %.val177.i = load i64, ptr %i.d, align 8, !tbaa !122
  %i.e = getelementptr [8 x i8], ptr %.val176.i, i64 %.val177.i ; 8 uses
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %bb.c, label %vm_throw_start.exit

bb.c:                                             ; preds = %bb.b
  %trunc.i = trunc i64 %2 to i8
  switch i8 %trunc.i, label %bb.ai [
    i8 2, label %bb.d
    i8 4, label %bb.r
    i8 1, label %bb.t
  ]

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr i8, ptr %1, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !15   ; 3 uses
  %i.h = getelementptr i8, ptr %1, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !123  ; 2 uses
  %i.j = getelementptr i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !124  ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !127
  %.not160250.i = icmp eq i32 %i.l, 2
  br i1 %.not160250.i, label %._crit_edge.i, label %.lr.ph253.i

.lr.ph253.i:                                      ; preds = %bb.d, %rb_vm_search_cf_from_ep.exit.i
  %i.m = phi ptr [ %i.ak, %rb_vm_search_cf_from_ep.exit.i ], [ %i.k, %bb.d ]
  %.0127252.i = phi ptr [ %.1128.i, %rb_vm_search_cf_from_ep.exit.i ], [ %1, %bb.d ] ; 6 uses
  %.0136251.i = phi ptr [ %.1137.i, %rb_vm_search_cf_from_ep.exit.i ], [ %i.g, %bb.d ]
  %i.n = getelementptr i8, ptr %.0127252.i, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !123
  %i.p = getelementptr i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !124
  %i.r = load i32, ptr %i.q, align 8, !tbaa !127
  %i.s = icmp eq i32 %i.r, 3
  br i1 %i.s, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph253.i
  %i.t = getelementptr i8, ptr %.0127252.i, i64 56
  %i.u = getelementptr i8, ptr %.0127252.i, i64 88
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !15
  %i.w = getelementptr i8, ptr %.0127252.i, i64 72
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !123
  br label %rb_vm_search_cf_from_ep.exit.i

bb.f:                                             ; preds = %.lr.ph253.i
  %i.y = getelementptr i8, ptr %.0136251.i, i64 -8
  %.0136.val173.i = load i64, ptr %i.y, align 8, !tbaa !11
  %i.z = and i64 %.0136.val173.i, -4              ; 2 uses
  %i.aa = inttoptr i64 %i.z to ptr                ; 4 uses
  %i.ab = getelementptr i8, ptr %i.m, i64 168
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !143 ; 4 uses
  %.not.i.i = icmp eq i64 %i.z, 0
  br i1 %.not.i.i, label %rb_vm_search_cf_from_ep.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = icmp ult ptr %.0127252.i, %i.e
  br i1 %i.ad, label %.lr.ph.i.i, label %rb_vm_search_cf_from_ep.exit.i

.lr.ph.i.i:                                       ; preds = %bb.g, %bb.h
  %.0912.i.i = phi ptr [ %i.ah, %bb.h ], [ %.0127252.i, %bb.g ] ; 3 uses
  %i.ae = getelementptr i8, ptr %.0912.i.i, i64 32
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !15
  %i.ag = icmp eq ptr %i.af, %i.aa
  br i1 %i.ag, label %rb_vm_search_cf_from_ep.exit.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.ah = getelementptr i8, ptr %.0912.i.i, i64 56 ; 2 uses
  %i.ai = icmp ult ptr %i.ah, %i.e
  br i1 %i.ai, label %.lr.ph.i.i, label %rb_vm_search_cf_from_ep.exit.i, !llvm.loop !144

rb_vm_search_cf_from_ep.exit.i:                   ; preds = %bb.h, %.lr.ph.i.i, %bb.g, %bb.f, %bb.e
  %.1139.i = phi ptr [ %i.x, %bb.e ], [ %i.ac, %bb.f ], [ %i.ac, %bb.g ], [ %i.ac, %.lr.ph.i.i ], [ %i.ac, %bb.h ] ; 2 uses
  %.1137.i = phi ptr [ %i.v, %bb.e ], [ null, %bb.f ], [ %i.aa, %bb.g ], [ %i.aa, %.lr.ph.i.i ], [ %i.aa, %bb.h ] ; 2 uses
  %.1128.i = phi ptr [ %i.t, %bb.e ], [ null, %bb.f ], [ null, %bb.g ], [ null, %bb.h ], [ %.0912.i.i, %.lr.ph.i.i ] ; 3 uses
  %i.aj = getelementptr i8, ptr %.1139.i, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !124 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !127
  %.not160.i = icmp eq i32 %i.al, 2
  br i1 %.not160.i, label %._crit_edge.loopexit.i, label %.lr.ph253.i, !llvm.loop !145

._crit_edge.loopexit.i:                           ; preds = %rb_vm_search_cf_from_ep.exit.i
  %.phi.trans.insert.i = getelementptr i8, ptr %.1128.i, i64 32
  %.0127.val.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !15
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.d
  %.0127.val.i = phi ptr [ %i.g, %bb.d ], [ %.0127.val.pre.i, %._crit_edge.loopexit.i ]
  %.0138.lcssa.i = phi ptr [ %i.i, %bb.d ], [ %.1139.i, %._crit_edge.loopexit.i ]
  %.0136.lcssa.i = phi ptr [ %i.g, %bb.d ], [ %.1137.i, %._crit_edge.loopexit.i ]
  %.0127.lcssa.i = phi ptr [ %1, %bb.d ], [ %.1128.i, %._crit_edge.loopexit.i ] ; 3 uses
  %.0127.val.val.i = load i64, ptr %.0127.val.i, align 8, !tbaa !11
  %i.am = and i64 %.0127.val.val.i, 256
  %.not161.i = icmp eq i64 %i.am, 0
  br i1 %.not161.i, label %bb.i, label %vm_throw_start.exit

bb.i:                                             ; preds = %._crit_edge.i
  %i.an = getelementptr i8, ptr %.0136.lcssa.i, i64 -8
  %.0136.val.i = load i64, ptr %i.an, align 8, !tbaa !11
  %i.ao = and i64 %.0136.val.i, -4
  %i.ap = inttoptr i64 %i.ao to ptr
  %i.aq = icmp ult ptr %.0127.lcssa.i, %i.e
  br i1 %i.aq, label %.lr.ph259.i, label %.thread190.i

.lr.ph259.i:                                      ; preds = %bb.i, %bb.q
  %.2129257.i = phi ptr [ %i.ca, %bb.q ], [ %.0127.lcssa.i, %bb.i ] ; 5 uses
  %i.ar = getelementptr i8, ptr %.2129257.i, i64 32
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !15
  %i.at = icmp eq ptr %i.as, %i.ap
  br i1 %i.at, label %bb.j, label %bb.q

bb.j:                                             ; preds = %.lr.ph259.i
  %i.au = getelementptr i8, ptr %.2129257.i, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !123
  %i.aw = load ptr, ptr %.2129257.i, align 8, !tbaa !146
  %i.ax = getelementptr i8, ptr %i.av, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !124 ; 2 uses
  %i.az = getelementptr i8, ptr %i.ay, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !147
  %i.bb = ptrtoint ptr %i.aw to i64
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = sub i64 %i.bb, %i.bc
  %i.be = ashr exact i64 %i.bd, 3                 ; 3 uses
  %i.bf = getelementptr i8, ptr %i.ay, i64 160
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !148 ; 3 uses
  %.not162.i = icmp eq ptr %i.bg, null
  br i1 %.not162.i, label %.thread190.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.j
  %i.bh = load i32, ptr %i.bg, align 1, !tbaa !7  ; 2 uses
  %.not262.i = icmp eq i32 %i.bh, 0
  br i1 %.not262.i, label %.thread190.i, label %.lr.ph261.i

.lr.ph261.i:                                      ; preds = %.preheader.i
  %i.bi = getelementptr i8, ptr %i.bg, i64 4
  %wide.trip.count.i = zext i32 %i.bh to i64
  br label %bb.k

bb.k:                                             ; preds = %bb.p, %.lr.ph261.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph261.i ], [ %indvars.iv.next.i, %bb.p ] ; 2 uses
  %i.bj = getelementptr [32 x i8], ptr %i.bi, i64 %indvars.iv.i ; 5 uses
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !149
  %i.bl = icmp eq i32 %i.bk, 9
  br i1 %i.bl, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.bm = getelementptr i8, ptr %i.bj, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !151
  %i.bo = icmp eq ptr %i.bn, %.0138.lcssa.i
  br i1 %i.bo, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.bp = getelementptr i8, ptr %i.bj, i64 16
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !152
  %i.br = zext i32 %i.bq to i64
  %i.bs = icmp ugt i64 %i.be, %i.br
  br i1 %i.bs, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.bt = getelementptr i8, ptr %i.bj, i64 20
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !153
  %i.bv = zext i32 %i.bu to i64
  %.not163.i = icmp ugt i64 %i.be, %i.bv
  br i1 %.not163.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bw = getelementptr i8, ptr %i.bj, i64 24
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !154
  %i.by = zext i32 %i.bx to i64
  %i.bz = icmp eq i64 %i.be, %i.by
  br i1 %i.bz, label %vm_throw_start.exit, label %.thread190.i
end_hunk_0
begin_hunk_1_@vm_exec_core:bb.a
  br label %vm_getspecial.exit

lep_svar.exit.i17.i:                              ; preds = %VM_EP_LEP.exit
  br i1 %i.nn, label %lep_svar_get.exit22.i, label %bb.aj

bb.aj:                                            ; preds = %lep_svar.exit.i17.i
  %i.nz = load i64, ptr %i.nm, align 8, !tbaa !77
  %i.oa = and i64 %i.nz, 61440
  %.not.i20.i = icmp eq i64 %i.oa, 8192
  br i1 %.not.i20.i, label %bb.ak, label %lep_svar_get.exit22.i

bb.ak:                                            ; preds = %bb.aj
  %i.ob = getelementptr i8, ptr %i.nm, i64 24
  %i.oc = load i64, ptr %i.ob, align 8, !tbaa !221
  br label %lep_svar_get.exit22.i

lep_svar_get.exit22.i:                            ; preds = %bb.ak, %bb.aj, %lep_svar.exit.i17.i
  %.1.i21.i = phi i64 [ %i.oc, %bb.ak ], [ 4, %lep_svar.exit.i17.i ], [ 4, %bb.aj ] ; 5 uses
  %i.od = and i64 %i.na, 1
  %.not.i2405 = icmp eq i64 %i.od, 0
  %i.oe = lshr i64 %i.na, 1                       ; 2 uses
  br i1 %.not.i2405, label %bb.ar, label %bb.al

bb.al:                                            ; preds = %lep_svar_get.exit22.i
  switch i64 %i.oe, label %bb.aq [
    i64 38, label %bb.am
    i64 96, label %bb.an
    i64 39, label %bb.ao
    i64 43, label %bb.ap
  ]

bb.am:                                            ; preds = %bb.al
  %i.of = call i64 @rb_reg_last_match(i64 noundef %.1.i21.i) #23
  br label %vm_getspecial.exit

bb.an:                                            ; preds = %bb.al
  %i.og = call i64 @rb_reg_match_pre(i64 noundef %.1.i21.i) #23
  br label %vm_getspecial.exit

bb.ao:                                            ; preds = %bb.al
  %i.oh = call i64 @rb_reg_match_post(i64 noundef %.1.i21.i) #23
  br label %vm_getspecial.exit

bb.ap:                                            ; preds = %bb.al
  %i.oi = call i64 @rb_reg_match_last(i64 noundef %.1.i21.i) #23
  br label %vm_getspecial.exit

bb.aq:                                            ; preds = %bb.al
  call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.172) #57
  unreachable

bb.ar:                                            ; preds = %lep_svar_get.exit22.i
  %i.oj = trunc i64 %i.oe to i32
  %i.ok = call i64 @rb_reg_nth_match(i32 noundef %i.oj, i64 noundef %.1.i21.i) #23
  br label %vm_getspecial.exit

vm_getspecial.exit:                               ; preds = %lep_svar.exit.i.i, %bb.ad, %bb.af, %bb.ag, %bb.ah, %bb.ai, %bb.am, %bb.an, %bb.ao, %bb.ap, %bb.ar
  %.1.i = phi i64 [ %i.ok, %bb.ar ], [ %i.of, %bb.am ], [ %i.og, %bb.an ], [ %i.oh, %bb.ao ], [ %i.oi, %bb.ap ], [ %i.nt, %bb.ag ], [ 4, %lep_svar.exit.i.i ], [ %i.nr, %bb.af ], [ 4, %bb.ad ], [ %i.ny, %bb.ai ], [ 4, %bb.ah ]
  %i.ol = getelementptr i8, ptr %.02257, i64 8    ; 2 uses
  %i.om = load ptr, ptr %i.ol, align 8, !tbaa !73 ; 2 uses
  %i.on = getelementptr i8, ptr %i.om, i64 8
  store ptr %i.on, ptr %i.ol, align 8, !tbaa !73
  store i64 %.1.i, ptr %i.om, align 8, !tbaa !11
  br label %.backedge.backedge

bb.as:                                            ; preds = %.backedge, %bb.afr
  %i.oo = getelementptr i8, ptr %.6, i64 8
  %i.op = load i64, ptr %i.oo, align 8, !tbaa !11
  %i.oq = getelementptr i8, ptr %.02257, i64 8    ; 3 uses
  %i.or = load ptr, ptr %i.oq, align 8, !tbaa !73
  %i.os = getelementptr i8, ptr %i.or, i64 -8
  %i.ot = load i64, ptr %i.os, align 8, !tbaa !11
  %i.ou = getelementptr i8, ptr %.6, i64 16       ; 2 uses
  store ptr %i.ou, ptr %.02257, align 8, !tbaa !146
  %i.ov = getelementptr i8, ptr %.02257, i64 32
  %i.ow = load ptr, ptr %i.ov, align 8, !tbaa !15 ; 3 uses
  %.0.val4.i2406 = load i64, ptr %i.ow, align 8, !tbaa !11
  %i.ox = and i64 %.0.val4.i2406, 2
  %.not5.i2407 = icmp eq i64 %i.ox, 0
  br i1 %.not5.i2407, label %.lr.ph.i2409, label %VM_EP_LEP.exit2414

.lr.ph.i2409:                                     ; preds = %bb.as, %.lr.ph.i2409
  %.06.i2410 = phi ptr [ %i.pa, %.lr.ph.i2409 ], [ %i.ow, %bb.as ]
  %i.oy = getelementptr i8, ptr %.06.i2410, i64 -8
  %.0.val3.i2411 = load i64, ptr %i.oy, align 8, !tbaa !11
  %i.oz = and i64 %.0.val3.i2411, -4
  %i.pa = inttoptr i64 %i.oz to ptr               ; 3 uses
  %.0.val.i2412 = load i64, ptr %i.pa, align 8, !tbaa !11
  %i.pb = and i64 %.0.val.i2412, 2
  %.not.i2413 = icmp eq i64 %i.pb, 0
  br i1 %.not.i2413, label %.lr.ph.i2409, label %VM_EP_LEP.exit2414, !llvm.loop !13

VM_EP_LEP.exit2414:                               ; preds = %.lr.ph.i2409, %bb.as
  %.0.lcssa.i2408 = phi ptr [ %i.ow, %bb.as ], [ %i.pa, %.lr.ph.i2409 ]
  call fastcc void @lep_svar_set(ptr noundef %0, ptr noundef nonnull %.0.lcssa.i2408, i64 noundef %i.op, i64 noundef %i.ot)
  %i.pc = load ptr, ptr %i.oq, align 8, !tbaa !73
  %i.pd = getelementptr i8, ptr %i.pc, i64 -8
  store ptr %i.pd, ptr %i.oq, align 8, !tbaa !73
  br label %.backedge.backedge

bb.at:                                            ; preds = %.backedge, %bb.afs, %bb.aeg
  %i.pe = getelementptr i8, ptr %.6, i64 8
  %i.pf = load i64, ptr %i.pe, align 8, !tbaa !11 ; 4 uses
  %i.pg = getelementptr i8, ptr %.6, i64 16
  %i.ph = load i64, ptr %i.pg, align 8, !tbaa !11
  %i.pi = inttoptr i64 %i.ph to ptr               ; 3 uses
  %i.pj = getelementptr i8, ptr %.6, i64 24       ; 2 uses
  store ptr %i.pj, ptr %.02257, align 8, !tbaa !146
  %i.pk = getelementptr i8, ptr %.02257, i64 24
  %i.pl = load i64, ptr %i.pk, align 8, !tbaa !74 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.pm = icmp eq i64 %i.pl, 0
  %i.pn = and i64 %i.pl, 7
  %i.po = icmp ne i64 %i.pn, 0
  %i.pp = or i1 %i.pm, %i.po
  br i1 %i.pp, label %vm_getivar.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.pq = inttoptr i64 %i.pl to ptr               ; 5 uses
  %i.pr = load i64, ptr %i.pq, align 8, !tbaa !77 ; 2 uses
  %i.ps = trunc i64 %i.pr to i32
  %i.pt = and i32 %i.ps, 31
  switch i32 %i.pt, label %bb.ba [
    i32 1, label %.thread
    i32 2, label %bb.av
    i32 3, label %bb.av
  ]

bb.av:                                            ; preds = %bb.au, %bb.au
  %i.pu = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !90
  %.not.i2415 = icmp eq ptr %i.pu, null
  br i1 %.not.i2415, label %rb_ractor_main_p.exit, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i

rb_ractor_main_p.exit:                            ; preds = %bb.av
  %i.pv = call zeroext i1 @rb_ractor_main_p_() #23
  br i1 %i.pv, label %rb_ractor_main_p.exit.RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i_crit_edge, label %bb.aw, !prof !91

rb_ractor_main_p.exit.RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i_crit_edge: ; preds = %rb_ractor_main_p.exit
  %.pre3205.a = load i64, ptr %i.pq, align 8, !tbaa !77
  br label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i

bb.aw:                                            ; preds = %rb_ractor_main_p.exit
  %i.pw = call i64 @rb_ivar_get(i64 noundef %i.pl, i64 noundef %i.pf) #23
  br label %vm_getivar.exit

RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i:        ; preds = %rb_ractor_main_p.exit.RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i_crit_edge, %bb.av
  %i.px = phi i64 [ %.pre3205.a, %rb_ractor_main_p.exit.RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i_crit_edge ], [ %i.pr, %bb.av ]
  %i.py = and i64 %i.px, 16384
  %.not10.i.i = icmp eq i64 %i.py, 0
  br i1 %.not10.i.i, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i, label %bb.ax, !prof !110

bb.ax:                                            ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i
  %i.pz = getelementptr i8, ptr %i.pq, i64 24
  br label %RCLASS_WRITABLE_FIELDS_OBJ.exit

RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i: ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i
  %i.qa = call ptr @rb_current_box() #23          ; 3 uses
  %.not.i.i2417 = icmp eq ptr %i.qa, null
  br i1 %.not.i.i2417, label %.split.i.i, label %bb.ay

.split.i.i:                                       ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i
  %i.qb = call fastcc ptr @RCLASS_EXT_WRITABLE_LOOKUP(i64 noundef %i.pl, ptr noundef null)
  br label %RCLASS_WRITABLE_FIELDS_OBJ.exit

bb.ay:                                            ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i
  %i.qc = getelementptr i8, ptr %i.qa, i64 128
  %i.qd = load i8, ptr %i.qc, align 8, !tbaa !111, !range !114, !noundef !64
  %i.qe = trunc nuw i8 %i.qd to i1
  br i1 %i.qe, label %.split7.i.i, label %bb.az

.split7.i.i:                                      ; preds = %bb.ay
  %i.qf = call fastcc ptr @RCLASS_EXT_WRITABLE_LOOKUP(i64 noundef %i.pl, ptr noundef nonnull %i.qa)
  br label %RCLASS_WRITABLE_FIELDS_OBJ.exit

bb.az:                                            ; preds = %bb.ay
  %i.qg = getelementptr i8, ptr %i.pq, i64 24
  br label %RCLASS_WRITABLE_FIELDS_OBJ.exit

RCLASS_WRITABLE_FIELDS_OBJ.exit:                  ; preds = %bb.ax, %.split.i.i, %.split7.i.i, %bb.az
  %.0.i.i = phi ptr [ %i.pz, %bb.ax ], [ %i.qg, %bb.az ], [ %i.qb, %.split.i.i ], [ %i.qf, %.split7.i.i ]
  %i.qh = getelementptr i8, ptr %.0.i.i, i64 16
  %i.qi = load i64, ptr %i.qh, align 8, !tbaa !115
  br label %bb.bb

bb.ba:                                            ; preds = %bb.au
  %i.qj = call i64 @rb_obj_fields(i64 noundef %i.pl, i64 noundef %i.pf) #23
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %RCLASS_WRITABLE_FIELDS_OBJ.exit
  %.046.i = phi i64 [ %i.qj, %bb.ba ], [ %i.qi, %RCLASS_WRITABLE_FIELDS_OBJ.exit ] ; 2 uses
  %.not50.i = icmp eq i64 %.046.i, 0
  br i1 %.not50.i, label %vm_getivar.exit, label %..thread_crit_edge

..thread_crit_edge:                               ; preds = %bb.bb
  %.pre3214 = inttoptr i64 %.046.i to ptr
  br label %.thread

.thread:                                          ; preds = %..thread_crit_edge, %bb.au
  %.pre-phi = phi ptr [ %.pre3214, %..thread_crit_edge ], [ %i.pq, %bb.au ] ; 3 uses
  store i64 36, ptr %i.l, align 8, !tbaa !11
  %.shift.i.i = getelementptr inbounds nuw i8, ptr %.pre-phi, i64 4
  %10 = load i32, ptr %.shift.i.i, align 4, !tbaa !77 ; 2 uses
  %11 = and i32 %10, -62914561                    ; 3 uses
  %12 = load i64, ptr %.pre-phi, align 8, !tbaa !77
  %i.qk = and i64 %12, 65536
  %.not5.i2419 = icmp eq i64 %i.qk, 0
  %i.ql = getelementptr i8, ptr %.pre-phi, i64 16 ; 2 uses
  br i1 %.not5.i2419, label %rb_imemo_fields_ptr.exit, label %bb.bc, !prof !72

bb.bc:                                            ; preds = %.thread
  %i.qm = load ptr, ptr %i.ql, align 8, !tbaa !27
  br label %rb_imemo_fields_ptr.exit

rb_imemo_fields_ptr.exit:                         ; preds = %.thread, %bb.bc
  %.0.i2420 = phi ptr [ %i.qm, %bb.bc ], [ %i.ql, %.thread ] ; 3 uses
  %i.qn = load atomic volatile i64, ptr %i.pi monotonic, align 8 ; 2 uses
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %i.qn to i32 ; 3 uses
  %.sroa.4.0.extract.shift.i.i = lshr i64 %i.qn, 32
  %.sroa.4.0.extract.trunc.i.i = trunc i64 %.sroa.4.0.extract.shift.i.i to i16 ; 2 uses
  store i32 %.sroa.0.0.extract.trunc.i.i, ptr %i.m, align 4, !tbaa !7
  %i.qo = add i16 %.sroa.4.0.extract.trunc.i.i, -1 ; 2 uses
  store i16 %i.qo, ptr %i.n, align 2, !tbaa !120
  %i.qp = icmp eq i32 %11, %.sroa.0.0.extract.trunc.i.i
  br i1 %i.qp, label %bb.bd, label %bb.bf, !prof !72

bb.bd:                                            ; preds = %rb_imemo_fields_ptr.exit
  %i.qq = icmp eq i16 %.sroa.4.0.extract.trunc.i.i, 0
  br i1 %i.qq, label %vm_getivar.exit, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.qr = zext i16 %i.qo to i64
  %i.qs = getelementptr [8 x i8], ptr %.0.i2420, i64 %i.qr
  %i.qt = load i64, ptr %i.qs, align 8, !tbaa !11
  br label %vm_getivar.exit

bb.bf:                                            ; preds = %rb_imemo_fields_ptr.exit
  %i.qu = and i32 %10, 134217728
  %.not2947.a = icmp eq i32 %i.qu, 0
  br i1 %.not2947.a, label %bb.bh, label %bb.bg, !prof !72

bb.bg:                                            ; preds = %bb.bf
  %i.qv = call i32 @rb_st_lookup(ptr noundef %.0.i2420, i64 noundef %i.pf, ptr noundef nonnull %i.l) #23
  %.not53.i = icmp eq i32 %i.qv, 0
  %.pre3207.a = load i64, ptr %i.l, align 8
  %spec.select3528 = select i1 %.not53.i, i64 4, i64 %.pre3207.a
  br label %vm_getivar.exit

bb.bh:                                            ; preds = %bb.bf
  %i.qw = call zeroext i1 @rb_shape_get_iv_index_with_hint(i32 noundef %11, i64 noundef %i.pf, ptr noundef nonnull %i.n, ptr noundef nonnull %i.m) #23
  br i1 %i.qw, label %bb.bi, label %bb.bm

bb.bi:                                            ; preds = %bb.bh
  %i.qx = load i32, ptr %i.m, align 4, !tbaa !7   ; 2 uses
  %.not52.i = icmp eq i32 %i.qx, %.sroa.0.0.extract.trunc.i.i
  %.pre3206 = load i16, ptr %i.n, align 2, !tbaa !120 ; 3 uses
  br i1 %.not52.i, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.qy = add i16 %.pre3206, 1
  %.sroa.4.0.insert.ext.i.i = zext i16 %i.qy to i64
  %.sroa.4.0.insert.shift.i.i = shl nuw nsw i64 %.sroa.4.0.insert.ext.i.i, 32
  %.sroa.0.0.insert.ext.i.i = zext i32 %i.qx to i64
  %.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.4.0.insert.shift.i.i, %.sroa.0.0.insert.ext.i.i
  store atomic volatile i64 %.sroa.0.0.insert.insert.i.i, ptr %i.pi monotonic, align 8
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %i.qz = icmp eq i16 %.pre3206, -1
  br i1 %i.qz, label %vm_getivar.exit, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.ra = zext i16 %.pre3206 to i64
  %i.rb = getelementptr [8 x i8], ptr %.0.i2420, i64 %i.ra
  %i.rc = load i64, ptr %i.rb, align 8, !tbaa !11
  br label %vm_getivar.exit

bb.bm:                                            ; preds = %bb.bh
  %.sroa.0.0.insert.ext.i.i2421 = zext i32 %11 to i64
  store atomic volatile i64 %.sroa.0.0.insert.ext.i.i2421, ptr %i.pi monotonic, align 8
  br label %vm_getivar.exit

vm_getivar.exit:                                  ; preds = %bb.bg, %bb.bk, %bb.be, %bb.bl, %bb.bm, %bb.at, %bb.bb, %bb.bd, %bb.aw
  %.0.i = phi i64 [ %i.pw, %bb.aw ], [ 4, %bb.bb ], [ 4, %bb.bd ], [ 4, %bb.at ], [ 4, %bb.bk ], [ 4, %bb.bm ], [ %i.rc, %bb.bl ], [ %spec.select3528, %bb.bg ], [ %i.qt, %bb.be ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.rd = getelementptr i8, ptr %.02257, i64 8    ; 2 uses
  %i.re = load ptr, ptr %i.rd, align 8, !tbaa !73 ; 2 uses
  %i.rf = getelementptr i8, ptr %i.re, i64 8
  store ptr %i.rf, ptr %i.rd, align 8, !tbaa !73
  store i64 %.0.i, ptr %i.re, align 8, !tbaa !11
  br label %.backedge.backedge

bb.bn:                                            ; preds = %.backedge, %bb.aft, %bb.aeh
  %i.rg = getelementptr i8, ptr %.6, i64 8
  %i.rh = load i64, ptr %i.rg, align 8, !tbaa !11
  %i.ri = getelementptr i8, ptr %.6, i64 16
  %i.rj = load i64, ptr %i.ri, align 8, !tbaa !11
  %i.rk = inttoptr i64 %i.rj to ptr
  %i.rl = getelementptr i8, ptr %.02257, i64 8    ; 3 uses
  %i.rm = load ptr, ptr %i.rl, align 8, !tbaa !73
  %i.rn = getelementptr i8, ptr %i.rm, i64 -8
  %i.ro = load i64, ptr %i.rn, align 8, !tbaa !11
  %i.rp = getelementptr i8, ptr %.6, i64 24       ; 2 uses
  store ptr %i.rp, ptr %.02257, align 8, !tbaa !146
  %i.rq = getelementptr i8, ptr %.02257, i64 24
  %i.rr = load i64, ptr %i.rq, align 8, !tbaa !74
  call fastcc void @vm_setinstancevariable(i64 noundef %i.rr, i64 noundef %i.rh, i64 noundef %i.ro, ptr noundef %i.rk)
  %i.rs = load ptr, ptr %i.rl, align 8, !tbaa !73
  %i.rt = getelementptr i8, ptr %i.rs, i64 -8
  store ptr %i.rt, ptr %i.rl, align 8, !tbaa !73
  br label %.backedge.backedge

bb.bo:                                            ; preds = %.backedge, %bb.afu
  %i.ru = getelementptr i8, ptr %.6, i64 8
  %i.rv = load i64, ptr %i.ru, align 8, !tbaa !11 ; 2 uses
  %i.rw = getelementptr i8, ptr %.6, i64 16
  %i.rx = load i64, ptr %i.rw, align 8, !tbaa !11
  %i.ry = inttoptr i64 %i.rx to ptr               ; 3 uses
  %i.rz = getelementptr i8, ptr %.6, i64 24       ; 2 uses
  store ptr %i.rz, ptr %.02257, align 8, !tbaa !146
  %i.sa = getelementptr i8, ptr %.02257, i64 16
  %i.sb = load ptr, ptr %i.sa, align 8, !tbaa !123
  %i.sc = getelementptr i8, ptr %.02257, i64 32
  %.02257.val = load ptr, ptr %i.sc, align 8, !tbaa !15
  %i.sd = call fastcc ptr @vm_get_cref(ptr noundef readonly %.02257.val) ; 3 uses
  %i.se = load ptr, ptr %i.ry, align 8, !tbaa !92 ; 4 uses
  %.not.i2422 = icmp eq ptr %i.se, null
  br i1 %.not.i2422, label %bb.bs, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.sf = getelementptr i8, ptr %i.se, i64 8
  %i.sg = load i64, ptr %i.sf, align 8, !tbaa !95
  %i.sh = load i64, ptr @ruby_vm_global_cvar_state, align 8, !tbaa !97
  %i.si = icmp eq i64 %i.sg, %i.sh
  br i1 %i.si, label %bb.bq, label %bb.bs

bb.bq:                                            ; preds = %bb.bp
  %i.sj = getelementptr i8, ptr %i.se, i64 16
  %i.sk = load ptr, ptr %i.sj, align 8, !tbaa !98
  %i.sl = icmp eq ptr %i.sk, %i.sd
  br i1 %i.sl, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.sm = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !90
  %.not.i.i2424 = icmp eq ptr %i.sm, null
  br i1 %.not.i.i2424, label %rb_ractor_main_p.exit.i, label %rb_ractor_main_p.exit.thread.i

rb_ractor_main_p.exit.i:                          ; preds = %bb.br
  %i.sn = call zeroext i1 @rb_ractor_main_p_() #23
  br i1 %i.sn, label %rb_ractor_main_p.exit.rb_ractor_main_p.exit.thread_crit_edge.i, label %bb.bs, !prof !99

rb_ractor_main_p.exit.rb_ractor_main_p.exit.thread_crit_edge.i: ; preds = %rb_ractor_main_p.exit.i
  %.pre.i = load ptr, ptr %i.ry, align 8, !tbaa !92
  br label %rb_ractor_main_p.exit.thread.i

rb_ractor_main_p.exit.thread.i:                   ; preds = %rb_ractor_main_p.exit.rb_ractor_main_p.exit.thread_crit_edge.i, %bb.br
  %i.so = phi ptr [ %.pre.i, %rb_ractor_main_p.exit.rb_ractor_main_p.exit.thread_crit_edge.i ], [ %i.se, %bb.br ]
  %i.sp = getelementptr i8, ptr %i.so, i64 24
  %i.sq = load i64, ptr %i.sp, align 8, !tbaa !100
  %i.sr = call i64 @rb_ivar_lookup(i64 noundef %i.sq, i64 noundef %i.rv, i64 noundef 36) #23
  br label %vm_getclassvariable.exit

bb.bs:                                            ; preds = %rb_ractor_main_p.exit.i, %bb.bq, %bb.bp, %bb.bo
  %i.ss = call fastcc i64 @vm_get_cvar_base(ptr noundef %i.sd, i32 noundef 1)
  %i.st = call fastcc i64 @update_classvariable_cache(ptr noundef %i.sb, i64 noundef %i.ss, i64 noundef %i.rv, ptr noundef %i.sd, ptr noundef nonnull %i.ry)
  br label %vm_getclassvariable.exit

vm_getclassvariable.exit:                         ; preds = %rb_ractor_main_p.exit.thread.i, %bb.bs
  %.0.i2423 = phi i64 [ %i.sr, %rb_ractor_main_p.exit.thread.i ], [ %i.st, %bb.bs ]
  %i.su = getelementptr i8, ptr %.02257, i64 8    ; 2 uses
  %i.sv = load ptr, ptr %i.su, align 8, !tbaa !73 ; 2 uses
  %i.sw = getelementptr i8, ptr %i.sv, i64 8
  store ptr %i.sw, ptr %i.su, align 8, !tbaa !73
  store i64 %.0.i2423, ptr %i.sv, align 8, !tbaa !11
  br label %.backedge.backedge

bb.bt:                                            ; preds = %.backedge, %bb.afv
  %i.sx = getelementptr i8, ptr %.6, i64 8
  %i.sy = load i64, ptr %i.sx, align 8, !tbaa !11 ; 3 uses
  %i.sz = getelementptr i8, ptr %.6, i64 16
  %i.ta = load i64, ptr %i.sz, align 8, !tbaa !11
  %i.tb = inttoptr i64 %i.ta to ptr               ; 3 uses
  %i.tc = getelementptr i8, ptr %.02257, i64 8    ; 3 uses
  %i.td = load ptr, ptr %i.tc, align 8, !tbaa !73
  %i.te = getelementptr i8, ptr %i.td, i64 -8
  %i.tf = load i64, ptr %i.te, align 8, !tbaa !11 ; 2 uses
  %i.tg = getelementptr i8, ptr %.6, i64 24       ; 2 uses
  store ptr %i.tg, ptr %.02257, align 8, !tbaa !146
  %i.th = getelementptr i8, ptr %.02257, i64 24
  %i.ti = load i64, ptr %i.th, align 8, !tbaa !74 ; 3 uses
  %i.tj = icmp eq i64 %i.ti, 0
  %i.tk = and i64 %i.ti, 7
  %i.tl = icmp ne i64 %i.tk, 0
  %i.tm = or i1 %i.tj, %i.tl
  br i1 %i.tm, label %vm_ensure_not_refinement_module.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.i

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.bt
  %i.tn = inttoptr i64 %i.ti to ptr
  %i.to = load i64, ptr %i.tn, align 8, !tbaa !77
  %i.tp = and i64 %i.to, 8223
  %or.cond.not.i = icmp eq i64 %i.tp, 8195
  br i1 %or.cond.not.i, label %bb.bu, label %vm_ensure_not_refinement_module.exit

bb.bu:                                            ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  call void (ptr, ...) @rb_warn(ptr noundef nonnull @.str.185) #63
  br label %vm_ensure_not_refinement_module.exit

vm_ensure_not_refinement_module.exit:             ; preds = %bb.bt, %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.bu
  %i.tq = getelementptr i8, ptr %.02257, i64 16
  %i.tr = load ptr, ptr %i.tq, align 8, !tbaa !123
  %i.ts = getelementptr i8, ptr %.02257, i64 32
  %.02257.val2351 = load ptr, ptr %i.ts, align 8, !tbaa !15
  %i.tt = call fastcc ptr @vm_get_cref(ptr noundef readonly %.02257.val2351) ; 3 uses
  %i.tu = load ptr, ptr %i.tb, align 8, !tbaa !92 ; 4 uses
  %.not.i2425 = icmp eq ptr %i.tu, null
  br i1 %.not.i2425, label %bb.by, label %bb.bv

bb.bv:                                            ; preds = %vm_ensure_not_refinement_module.exit
  %i.tv = getelementptr i8, ptr %i.tu, i64 8
  %i.tw = load i64, ptr %i.tv, align 8, !tbaa !95
  %i.tx = load i64, ptr @ruby_vm_global_cvar_state, align 8, !tbaa !97
  %i.ty = icmp eq i64 %i.tw, %i.tx
  br i1 %i.ty, label %bb.bw, label %bb.by

bb.bw:                                            ; preds = %bb.bv
  %i.tz = getelementptr i8, ptr %i.tu, i64 16
  %i.ua = load ptr, ptr %i.tz, align 8, !tbaa !98
  %i.ub = icmp eq ptr %i.ua, %i.tt
  br i1 %i.ub, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.uc = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !90
  %.not.i.i2426 = icmp eq ptr %i.uc, null
  br i1 %.not.i.i2426, label %rb_ractor_main_p.exit.i2428, label %rb_ractor_main_p.exit.thread.i2427

rb_ractor_main_p.exit.i2428:                      ; preds = %bb.bx
  %i.ud = call zeroext i1 @rb_ractor_main_p_() #23
  br i1 %i.ud, label %rb_ractor_main_p.exit.rb_ractor_main_p.exit.thread_crit_edge.i2429, label %bb.by, !prof !99

rb_ractor_main_p.exit.rb_ractor_main_p.exit.thread_crit_edge.i2429: ; preds = %rb_ractor_main_p.exit.i2428
  %.pre.i2430 = load ptr, ptr %i.tb, align 8, !tbaa !92
  br label %rb_ractor_main_p.exit.thread.i2427

rb_ractor_main_p.exit.thread.i2427:               ; preds = %rb_ractor_main_p.exit.rb_ractor_main_p.exit.thread_crit_edge.i2429, %bb.bx
  %i.ue = phi ptr [ %.pre.i2430, %rb_ractor_main_p.exit.rb_ractor_main_p.exit.thread_crit_edge.i2429 ], [ %i.tu, %bb.bx ]
  %i.uf = getelementptr i8, ptr %i.ue, i64 24
  %i.ug = load i64, ptr %i.uf, align 8, !tbaa !100
  %i.uh = call zeroext i1 @rb_class_ivar_set(i64 noundef %i.ug, i64 noundef %i.sy, i64 noundef %i.tf) #23 ; 0 uses
  br label %vm_setclassvariable.exit

bb.by:                                            ; preds = %rb_ractor_main_p.exit.i2428, %bb.bw, %bb.bv, %vm_ensure_not_refinement_module.exit
  %i.ui = call fastcc i64 @vm_get_cvar_base(ptr noundef %i.tt, i32 noundef 1) ; 2 uses
  call void @rb_cvar_set(i64 noundef %i.ui, i64 noundef %i.sy, i64 noundef %i.tf) #23
  %i.uj = call fastcc i64 @update_classvariable_cache(ptr noundef %i.tr, i64 noundef %i.ui, i64 noundef %i.sy, ptr noundef %i.tt, ptr noundef nonnull %i.tb) ; 0 uses
  br label %vm_setclassvariable.exit

vm_setclassvariable.exit:                         ; preds = %rb_ractor_main_p.exit.thread.i2427, %bb.by
  %i.uk = load ptr, ptr %i.tc, align 8, !tbaa !73
  %i.ul = getelementptr i8, ptr %i.uk, i64 -8
  store ptr %i.ul, ptr %i.tc, align 8, !tbaa !73
  br label %.backedge.backedge

bb.bz:                                            ; preds = %.backedge, %bb.afw
  %i.um = getelementptr i8, ptr %.6, i64 8
  %i.un = load i64, ptr %i.um, align 8, !tbaa !11
  %i.uo = inttoptr i64 %i.un to ptr
  %i.up = getelementptr i8, ptr %.6, i64 16       ; 2 uses
  store ptr %i.up, ptr %.02257, align 8, !tbaa !146
  %i.uq = call i64 @rb_vm_opt_getconstant_path(ptr noundef %0, ptr noundef nonnull %.02257, ptr noundef %i.uo)
  %i.ur = getelementptr i8, ptr %.02257, i64 8    ; 2 uses
  %i.us = load ptr, ptr %i.ur, align 8, !tbaa !73 ; 2 uses
  %i.ut = getelementptr i8, ptr %i.us, i64 8
  store ptr %i.ut, ptr %i.ur, align 8, !tbaa !73
  store i64 %i.uq, ptr %i.us, align 8, !tbaa !11
  br label %.backedge.backedge

bb.ca:                                            ; preds = %.backedge, %bb.afx
end_hunk_1
begin_hunk_2_@vm_exec_core:bb.a
  br label %.lr.ph3058

.lr.ph3058:                                       ; preds = %.lr.ph3058, %.lr.ph3058.preheader.new
  %.022633057 = phi i64 [ 0, %.lr.ph3058.preheader.new ], [ %i.aon, %.lr.ph3058 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph3058.preheader.new ], [ %niter.next.1, %.lr.ph3058 ]
  %i.aoa = getelementptr [8 x i8], ptr %i.any, i64 %.022633057 ; 2 uses
  %i.aob = load i64, ptr %i.aoa, align 8, !tbaa !11
  %i.aoc = sub nsw i64 0, %.022633057
  %i.aod = getelementptr [8 x i8], ptr %i.anw, i64 %i.aoc
  %i.aoe = getelementptr i8, ptr %i.aod, i64 -8   ; 2 uses
  %i.aof = load i64, ptr %i.aoe, align 8, !tbaa !11
  store i64 %i.aof, ptr %i.aoa, align 8, !tbaa !11
  store i64 %i.aob, ptr %i.aoe, align 8, !tbaa !11
  %i.aog = getelementptr [8 x i8], ptr %i.any, i64 %.022633057
  %i.aoh = getelementptr i8, ptr %i.aog, i64 8    ; 2 uses
  %i.aoi = load i64, ptr %i.aoh, align 8, !tbaa !11
  %i.aoj = xor i64 %.022633057, -1
  %i.aok = getelementptr [8 x i8], ptr %i.anw, i64 %i.aoj
  %i.aol = getelementptr i8, ptr %i.aok, i64 -8   ; 2 uses
  %i.aom = load i64, ptr %i.aol, align 8, !tbaa !11
  store i64 %i.aom, ptr %i.aoh, align 8, !tbaa !11
  store i64 %i.aoi, ptr %i.aol, align 8, !tbaa !11
  %i.aon = add nuw nsw i64 %.022633057, 2         ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.backedge.loopexit.unr-lcssa, label %.lr.ph3058, !llvm.loop !349

bb.es:                                            ; preds = %.backedge, %bb.ahc
  %i.aoo = getelementptr i8, ptr %.6, i64 8
  %i.aop = load i64, ptr %i.aoo, align 8, !tbaa !11
  %i.aoq = getelementptr i8, ptr %.6, i64 16      ; 2 uses
  store ptr %i.aoq, ptr %.02257, align 8, !tbaa !146
  %i.aor = getelementptr i8, ptr %.02257, i64 8   ; 2 uses
  %i.aos = load ptr, ptr %i.aor, align 8, !tbaa !73 ; 3 uses
  %i.aot = sub i64 0, %i.aop
  %i.aou = getelementptr [8 x i8], ptr %i.aos, i64 %i.aot
  %i.aov = getelementptr i8, ptr %i.aou, i64 -8
  %i.aow = load i64, ptr %i.aov, align 8, !tbaa !11
  %i.aox = getelementptr i8, ptr %i.aos, i64 8
  store ptr %i.aox, ptr %i.aor, align 8, !tbaa !73
  store i64 %i.aow, ptr %i.aos, align 8, !tbaa !11
  br label %.backedge.backedge

bb.et:                                            ; preds = %.backedge, %bb.ahd
  %i.aoy = getelementptr i8, ptr %.6, i64 8
  %i.aoz = load i64, ptr %i.aoy, align 8, !tbaa !11
  %i.apa = getelementptr i8, ptr %.02257, i64 8
  %i.apb = load ptr, ptr %i.apa, align 8, !tbaa !73 ; 2 uses
  %i.apc = getelementptr i8, ptr %i.apb, i64 -8   ; 2 uses
  %i.apd = load i64, ptr %i.apc, align 8, !tbaa !11 ; 2 uses
  %i.ape = getelementptr i8, ptr %.6, i64 16      ; 2 uses
  store ptr %i.ape, ptr %.02257, align 8, !tbaa !146
  %i.apf = sub i64 0, %i.aoz
  %i.apg = getelementptr [8 x i8], ptr %i.apb, i64 %i.apf
  %i.aph = getelementptr i8, ptr %i.apg, i64 -8
  store i64 %i.apd, ptr %i.aph, align 8, !tbaa !11
  store i64 %i.apd, ptr %i.apc, align 8, !tbaa !11
  br label %.backedge.backedge

bb.eu:                                            ; preds = %.backedge, %bb.ahe
  %i.api = getelementptr i8, ptr %.6, i64 8
  %i.apj = load i64, ptr %i.api, align 8, !tbaa !11
  %i.apk = getelementptr i8, ptr %.6, i64 16      ; 2 uses
  store ptr %i.apk, ptr %.02257, align 8, !tbaa !146
  %i.apl = sub i64 0, %i.apj
  %i.apm = getelementptr i8, ptr %.02257, i64 8   ; 2 uses
  %i.apn = load ptr, ptr %i.apm, align 8, !tbaa !73
  %i.apo = getelementptr [8 x i8], ptr %i.apn, i64 %i.apl
  store ptr %i.apo, ptr %i.apm, align 8, !tbaa !73
  br label %.backedge.backedge

bb.ev:                                            ; preds = %.backedge, %bb.ahf
  %i.app = getelementptr i8, ptr %.6, i64 8
  %i.apq = load i64, ptr %i.app, align 8, !tbaa !11
  %i.apr = getelementptr i8, ptr %.6, i64 16
  %i.aps = load i64, ptr %i.apr, align 8, !tbaa !11
  %i.apt = getelementptr i8, ptr %.6, i64 24
  %i.apu = load i64, ptr %i.apt, align 8, !tbaa !11
  %i.apv = getelementptr i8, ptr %.02257, i64 8   ; 2 uses
  %i.apw = load ptr, ptr %i.apv, align 8, !tbaa !73
  %i.apx = getelementptr i8, ptr %i.apw, i64 -8
  %i.apy = load i64, ptr %i.apx, align 8, !tbaa !11
  %i.apz = getelementptr i8, ptr %.6, i64 32      ; 2 uses
  store ptr %i.apz, ptr %.02257, align 8, !tbaa !146
  %i.aqa = call fastcc zeroext i1 @vm_defined(ptr noundef %0, ptr noundef nonnull %.02257, i64 noundef %i.apq, i64 noundef %i.aps, i64 noundef %i.apy)
  %spec.select = select i1 %i.aqa, i64 %i.apu, i64 4
  %i.aqb = load ptr, ptr %i.apv, align 8, !tbaa !73
  %i.aqc = getelementptr i8, ptr %i.aqb, i64 -8
  store i64 %spec.select, ptr %i.aqc, align 8, !tbaa !11
  br label %.backedge.backedge

bb.ew:                                            ; preds = %.backedge, %bb.ahg, %bb.aei
  %i.aqd = getelementptr i8, ptr %.6, i64 8
  %i.aqe = load i64, ptr %i.aqd, align 8, !tbaa !11 ; 4 uses
  %i.aqf = getelementptr i8, ptr %.6, i64 16
  %i.aqg = load i64, ptr %i.aqf, align 8, !tbaa !11
  %i.aqh = inttoptr i64 %i.aqg to ptr             ; 3 uses
  %i.aqi = getelementptr i8, ptr %.6, i64 24
  %i.aqj = load i64, ptr %i.aqi, align 8, !tbaa !11 ; 2 uses
  %i.aqk = getelementptr i8, ptr %.6, i64 32      ; 2 uses
  store ptr %i.aqk, ptr %.02257, align 8, !tbaa !146
  %i.aql = getelementptr i8, ptr %.02257, i64 24
  %i.aqm = load i64, ptr %i.aql, align 8, !tbaa !74 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.aqn = icmp eq i64 %i.aqm, 0
  %i.aqo = and i64 %i.aqm, 7
  %i.aqp = icmp ne i64 %i.aqo, 0
  %i.aqq = or i1 %i.aqn, %i.aqp
  br i1 %i.aqq, label %.sink.split, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.aqr = inttoptr i64 %i.aqm to ptr             ; 5 uses
  %i.aqs = load i64, ptr %i.aqr, align 8, !tbaa !77 ; 2 uses
  %i.aqt = trunc i64 %i.aqs to i32
  %i.aqu = and i32 %i.aqt, 31
  switch i32 %i.aqu, label %bb.fd [
    i32 1, label %.thread2826
    i32 2, label %bb.ey
    i32 3, label %bb.ey
  ]

bb.ey:                                            ; preds = %bb.ex, %bb.ex
  %i.aqv = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !90
  %.not.i2452 = icmp eq ptr %i.aqv, null
  br i1 %.not.i2452, label %rb_ractor_main_p.exit2454, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i2461

rb_ractor_main_p.exit2454:                        ; preds = %bb.ey
  %i.aqw = call zeroext i1 @rb_ractor_main_p_() #23
  br i1 %i.aqw, label %rb_ractor_main_p.exit2454.RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i2461_crit_edge, label %bb.ez, !prof !91

rb_ractor_main_p.exit2454.RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i2461_crit_edge: ; preds = %rb_ractor_main_p.exit2454
  %.pre3200.a = load i64, ptr %i.aqr, align 8, !tbaa !77
  br label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i2461

bb.ez:                                            ; preds = %rb_ractor_main_p.exit2454
  %i.aqx = call i64 @rb_ivar_defined(i64 noundef %i.aqm, i64 noundef %i.aqe) #23
  %.not49.i = icmp eq i64 %i.aqx, 0
  br i1 %.not49.i, label %.sink.split, label %vm_getivar.exit2349.thread2832

vm_getivar.exit2349.thread2832:                   ; preds = %bb.ez
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.fr

RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i2461:    ; preds = %rb_ractor_main_p.exit2454.RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i2461_crit_edge, %bb.ey
  %i.aqy = phi i64 [ %.pre3200.a, %rb_ractor_main_p.exit2454.RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i2461_crit_edge ], [ %i.aqs, %bb.ey ]
  %i.aqz = and i64 %i.aqy, 16384
  %.not10.i.i2462 = icmp eq i64 %i.aqz, 0
  br i1 %.not10.i.i2462, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i2456, label %bb.fa, !prof !110

bb.fa:                                            ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i2461
  %i.ara = getelementptr i8, ptr %i.aqr, i64 24
  br label %RCLASS_WRITABLE_FIELDS_OBJ.exit2463

RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i2456: ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i2461
  %i.arb = call ptr @rb_current_box() #23         ; 3 uses
  %.not.i.i2457 = icmp eq ptr %i.arb, null
  br i1 %.not.i.i2457, label %.split.i.i2460, label %bb.fb

.split.i.i2460:                                   ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i2456
  %i.arc = call fastcc ptr @RCLASS_EXT_WRITABLE_LOOKUP(i64 noundef %i.aqm, ptr noundef null)
  br label %RCLASS_WRITABLE_FIELDS_OBJ.exit2463

bb.fb:                                            ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i2456
  %i.ard = getelementptr i8, ptr %i.arb, i64 128
  %i.are = load i8, ptr %i.ard, align 8, !tbaa !111, !range !114, !noundef !64
  %i.arf = trunc nuw i8 %i.are to i1
  br i1 %i.arf, label %.split7.i.i2459, label %bb.fc

.split7.i.i2459:                                  ; preds = %bb.fb
  %i.arg = call fastcc ptr @RCLASS_EXT_WRITABLE_LOOKUP(i64 noundef %i.aqm, ptr noundef nonnull %i.arb)
  br label %RCLASS_WRITABLE_FIELDS_OBJ.exit2463

bb.fc:                                            ; preds = %bb.fb
  %i.arh = getelementptr i8, ptr %i.aqr, i64 24
  br label %RCLASS_WRITABLE_FIELDS_OBJ.exit2463

RCLASS_WRITABLE_FIELDS_OBJ.exit2463:              ; preds = %bb.fa, %.split.i.i2460, %.split7.i.i2459, %bb.fc
  %.0.i.i2458 = phi ptr [ %i.ara, %bb.fa ], [ %i.arh, %bb.fc ], [ %i.arc, %.split.i.i2460 ], [ %i.arg, %.split7.i.i2459 ]
  %i.ari = getelementptr i8, ptr %.0.i.i2458, i64 16
  %i.arj = load i64, ptr %i.ari, align 8, !tbaa !115
  br label %bb.fe

bb.fd:                                            ; preds = %bb.ex
  %i.ark = call i64 @rb_obj_fields(i64 noundef %i.aqm, i64 noundef %i.aqe) #23
  br label %bb.fe

bb.fe:                                            ; preds = %bb.fd, %RCLASS_WRITABLE_FIELDS_OBJ.exit2463
  %.046.i2345 = phi i64 [ %i.ark, %bb.fd ], [ %i.arj, %RCLASS_WRITABLE_FIELDS_OBJ.exit2463 ] ; 2 uses
  %.not50.i2346 = icmp eq i64 %.046.i2345, 0
  br i1 %.not50.i2346, label %.sink.split, label %..thread2826_crit_edge

..thread2826_crit_edge:                           ; preds = %bb.fe
  %.pre3215 = inttoptr i64 %.046.i2345 to ptr
  br label %.thread2826

.thread2826:                                      ; preds = %..thread2826_crit_edge, %bb.ex
  %.pre-phi3216 = phi ptr [ %.pre3215, %..thread2826_crit_edge ], [ %i.aqr, %bb.ex ] ; 3 uses
  store i64 36, ptr %i.i, align 8, !tbaa !11
  %.shift.i.i2464 = getelementptr inbounds nuw i8, ptr %.pre-phi3216, i64 4
  %13 = load i32, ptr %.shift.i.i2464, align 4, !tbaa !77 ; 2 uses
  %14 = and i32 %13, -62914561                    ; 3 uses
  %15 = load i64, ptr %.pre-phi3216, align 8, !tbaa !77
  %i.arl = and i64 %15, 65536
  %.not5.i2465 = icmp eq i64 %i.arl, 0
  %i.arm = getelementptr i8, ptr %.pre-phi3216, i64 16 ; 2 uses
  br i1 %.not5.i2465, label %rb_imemo_fields_ptr.exit2467, label %bb.ff, !prof !72

bb.ff:                                            ; preds = %.thread2826
  %i.arn = load ptr, ptr %i.arm, align 8, !tbaa !27
  br label %rb_imemo_fields_ptr.exit2467

rb_imemo_fields_ptr.exit2467:                     ; preds = %.thread2826, %bb.ff
  %.0.i2466 = phi ptr [ %i.arn, %bb.ff ], [ %i.arm, %.thread2826 ] ; 3 uses
  %i.aro = load atomic volatile i64, ptr %i.aqh monotonic, align 8 ; 2 uses
  %.sroa.0.0.extract.trunc.i.i2468 = trunc i64 %i.aro to i32 ; 3 uses
  %.sroa.4.0.extract.shift.i.i2469 = lshr i64 %i.aro, 32
  %.sroa.4.0.extract.trunc.i.i2470 = trunc i64 %.sroa.4.0.extract.shift.i.i2469 to i16 ; 2 uses
  store i32 %.sroa.0.0.extract.trunc.i.i2468, ptr %i.j, align 4, !tbaa !7
  %i.arp = add i16 %.sroa.4.0.extract.trunc.i.i2470, -1 ; 2 uses
  store i16 %i.arp, ptr %i.k, align 2, !tbaa !120
  %i.arq = icmp eq i32 %14, %.sroa.0.0.extract.trunc.i.i2468
  br i1 %i.arq, label %bb.fg, label %bb.fi, !prof !72

bb.fg:                                            ; preds = %rb_imemo_fields_ptr.exit2467
  %i.arr = icmp eq i16 %.sroa.4.0.extract.trunc.i.i2470, 0
  br i1 %i.arr, label %.sink.split, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %i.ars = zext i16 %i.arp to i64
  %i.art = getelementptr [8 x i8], ptr %.0.i2466, i64 %i.ars
  br label %vm_getivar.exit2349

bb.fi:                                            ; preds = %rb_imemo_fields_ptr.exit2467
  %i.aru = and i32 %13, 134217728
  %.not2946.a = icmp eq i32 %i.aru, 0
  br i1 %.not2946.a, label %bb.fk, label %bb.fj, !prof !72

bb.fj:                                            ; preds = %bb.fi
  %i.arv = call i32 @rb_st_lookup(ptr noundef %.0.i2466, i64 noundef %i.aqe, ptr noundef nonnull %i.i) #23
  %.not53.i2348 = icmp eq i32 %i.arv, 0
  br i1 %.not53.i2348, label %.sink.split, label %vm_getivar.exit2349

bb.fk:                                            ; preds = %bb.fi
  %i.arw = call zeroext i1 @rb_shape_get_iv_index_with_hint(i32 noundef %14, i64 noundef %i.aqe, ptr noundef nonnull %i.k, ptr noundef nonnull %i.j) #23
  br i1 %i.arw, label %bb.fl, label %bb.fp

bb.fl:                                            ; preds = %bb.fk
  %i.arx = load i32, ptr %i.j, align 4, !tbaa !7  ; 2 uses
  %.not52.i2347 = icmp eq i32 %i.arx, %.sroa.0.0.extract.trunc.i.i2468
  %.pre3201 = load i16, ptr %i.k, align 2, !tbaa !120 ; 3 uses
  br i1 %.not52.i2347, label %bb.fn, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  %i.ary = add i16 %.pre3201, 1
  %.sroa.4.0.insert.ext.i.i2471 = zext i16 %i.ary to i64
  %.sroa.4.0.insert.shift.i.i2472 = shl nuw nsw i64 %.sroa.4.0.insert.ext.i.i2471, 32
  %.sroa.0.0.insert.ext.i.i2473 = zext i32 %i.arx to i64
  %.sroa.0.0.insert.insert.i.i2474 = or disjoint i64 %.sroa.4.0.insert.shift.i.i2472, %.sroa.0.0.insert.ext.i.i2473
  store atomic volatile i64 %.sroa.0.0.insert.insert.i.i2474, ptr %i.aqh monotonic, align 8
  br label %bb.fn

bb.fn:                                            ; preds = %bb.fm, %bb.fl
  %i.arz = icmp eq i16 %.pre3201, -1
  br i1 %i.arz, label %.sink.split, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.asa = zext i16 %.pre3201 to i64
  %i.asb = getelementptr [8 x i8], ptr %.0.i2466, i64 %i.asa
  br label %vm_getivar.exit2349

bb.fp:                                            ; preds = %bb.fk
  %.sroa.0.0.insert.ext.i.i2476 = zext i32 %14 to i64
  store atomic volatile i64 %.sroa.0.0.insert.ext.i.i2476, ptr %i.aqh monotonic, align 8
  br label %.sink.split

vm_getivar.exit2349:                              ; preds = %bb.fj, %bb.fh, %bb.fo
  %.in3529 = phi ptr [ %i.asb, %bb.fo ], [ %i.art, %bb.fh ], [ %i.i, %bb.fj ]
  %i.asc = load i64, ptr %.in3529, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %.fr = freeze i64 %i.asc
  %i.asd = icmp eq i64 %.fr, 36
  br i1 %i.asd, label %bb.fq, label %bb.fr

.sink.split:                                      ; preds = %bb.fp, %bb.fj, %bb.fn, %bb.ez, %bb.ew, %bb.fe, %bb.fg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.fq

bb.fq:                                            ; preds = %.sink.split, %vm_getivar.exit2349
  br label %bb.fr

bb.fr:                                            ; preds = %vm_getivar.exit2349.thread2832, %vm_getivar.exit2349, %bb.fq
  %i.ase = phi i64 [ 4, %bb.fq ], [ %i.aqj, %vm_getivar.exit2349 ], [ %i.aqj, %vm_getivar.exit2349.thread2832 ]
  %i.asf = getelementptr i8, ptr %.02257, i64 8   ; 2 uses
  %i.asg = load ptr, ptr %i.asf, align 8, !tbaa !73 ; 2 uses
  %i.ash = getelementptr i8, ptr %i.asg, i64 8
  store ptr %i.ash, ptr %i.asf, align 8, !tbaa !73
  store i64 %i.ase, ptr %i.asg, align 8, !tbaa !11
  br label %.backedge.backedge

bb.fs:                                            ; preds = %.backedge, %bb.ahh
  %i.asi = getelementptr i8, ptr %.6, i64 8
  %i.asj = load i64, ptr %i.asi, align 8, !tbaa !11 ; 2 uses
  %i.ask = getelementptr i8, ptr %.02257, i64 8   ; 3 uses
  %i.asl = load ptr, ptr %i.ask, align 8, !tbaa !73 ; 2 uses
  %i.asm = getelementptr i8, ptr %i.asl, i64 -8
  %i.asn = getelementptr i8, ptr %i.asl, i64 -16
  %i.aso = load i64, ptr %i.asn, align 8, !tbaa !11 ; 2 uses
  %i.asp = load i64, ptr %i.asm, align 8, !tbaa !11 ; 2 uses
  %i.asq = getelementptr i8, ptr %.6, i64 16      ; 2 uses
  store ptr %i.asq, ptr %.02257, align 8, !tbaa !146
  %i.asr = trunc i64 %i.asj to i32
  %i.ass = and i32 %i.asr, 3                      ; 2 uses
  %i.ast = and i64 %i.asj, 4
  %.not.i2476 = icmp eq i64 %i.ast, 0
  br i1 %.not.i2476, label %bb.fz, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  %i.asu = inttoptr i64 %i.asp to ptr             ; 5 uses
  %i.asv = load i64, ptr %i.asu, align 8, !tbaa !77 ; 2 uses
  %i.asw = and i64 %i.asv, 8192
  %.not.i2794 = icmp eq i64 %i.asw, 0
  br i1 %.not.i2794, label %bb.fv, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.asx = lshr i64 %i.asv, 15
  %i.asy = and i64 %i.asx, 127
  br label %rb_array_len.exit

bb.fv:                                            ; preds = %bb.ft
  %i.asz = getelementptr i8, ptr %i.asu, i64 16
  %i.ata = load i64, ptr %i.asz, align 8, !tbaa !27
  br label %rb_array_len.exit

rb_array_len.exit:                                ; preds = %bb.fu, %bb.fv
  %.0.i2795 = phi i64 [ %i.asy, %bb.fu ], [ %i.ata, %bb.fv ] ; 2 uses
  %i.atb = icmp sgt i64 %.0.i2795, 0
  br i1 %i.atb, label %.lr.ph, label %vm_check_match.exit

.lr.ph:                                           ; preds = %rb_array_len.exit
  %i.atc = getelementptr i8, ptr %i.asu, i64 16
  %i.atd = getelementptr i8, ptr %i.asu, i64 32
  br label %bb.fx

bb.fw:                                            ; preds = %RARRAY_AREF.exit
  %i.ate = add nuw nsw i64 %.020.i3055, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.ate, %.0.i2795
  br i1 %exitcond.not, label %vm_check_match.exit, label %bb.fx, !llvm.loop !223

bb.fx:                                            ; preds = %.lr.ph, %bb.fw
  %.020.i3055 = phi i64 [ 0, %.lr.ph ], [ %i.ate, %bb.fw ] ; 2 uses
  %i.atf = load i64, ptr %i.asu, align 8, !tbaa !77
  %i.atg = and i64 %i.atf, 8192
  %.not.i.i2792 = icmp eq i64 %i.atg, 0
  br i1 %.not.i.i2792, label %bb.fy, label %RARRAY_AREF.exit

bb.fy:                                            ; preds = %bb.fx
  %i.ath = load ptr, ptr %i.atd, align 8, !tbaa !27
  br label %RARRAY_AREF.exit

RARRAY_AREF.exit:                                 ; preds = %bb.fx, %bb.fy
  %.0.i.i2793 = phi ptr [ %i.ath, %bb.fy ], [ %i.atc, %bb.fx ]
  %i.ati = getelementptr [8 x i8], ptr %.0.i.i2793, i64 %.020.i3055
  %i.atj = load i64, ptr %i.ati, align 8, !tbaa !11
  %i.atk = call fastcc i64 @check_match(ptr noundef %0, i64 noundef %i.atj, i64 noundef %i.aso, i32 noundef %i.ass), !inline_history !224 ; 2 uses
  %i.atl = and i64 %i.atk, -5
  %.not2945.a = icmp eq i64 %i.atl, 0
  br i1 %.not2945.a, label %bb.fw, label %vm_check_match.exit

bb.fz:                                            ; preds = %bb.fs
  %i.atm = call fastcc i64 @check_match(ptr noundef %0, i64 noundef %i.asp, i64 noundef %i.aso, i32 noundef %i.ass), !inline_history !224
  br label %vm_check_match.exit

vm_check_match.exit:                              ; preds = %RARRAY_AREF.exit, %bb.fw, %rb_array_len.exit, %bb.fz
  %.3.i = phi i64 [ %i.atm, %bb.fz ], [ 0, %rb_array_len.exit ], [ %i.atk, %RARRAY_AREF.exit ], [ 0, %bb.fw ]
  %i.atn = load ptr, ptr %i.ask, align 8, !tbaa !73 ; 2 uses
  %i.ato = getelementptr i8, ptr %i.atn, i64 -8
  store ptr %i.ato, ptr %i.ask, align 8, !tbaa !73
  %i.atp = getelementptr i8, ptr %i.atn, i64 -16
  store i64 %.3.i, ptr %i.atp, align 8, !tbaa !11
  br label %.backedge.backedge

bb.ga:                                            ; preds = %.backedge, %bb.ahi
  %i.atq = getelementptr i8, ptr %.6, i64 8
  %i.atr = load i64, ptr %i.atq, align 8, !tbaa !11
  %i.ats = getelementptr i8, ptr %.6, i64 16
  %i.att = load i64, ptr %i.ats, align 8, !tbaa !11 ; 3 uses
  %i.atu = getelementptr i8, ptr %.6, i64 24      ; 2 uses
  store ptr %i.atu, ptr %.02257, align 8, !tbaa !146
  %i.atv = getelementptr i8, ptr %.02257, i64 32
  %i.atw = load ptr, ptr %i.atv, align 8, !tbaa !15
  %i.atx = sub i64 0, %i.atr
  %i.aty = getelementptr [8 x i8], ptr %i.atw, i64 %i.atx
  %i.atz = load i64, ptr %i.aty, align 8, !tbaa !11 ; 3 uses
  %i.aua = trunc i64 %i.atz to i1
  br i1 %i.aua, label %bb.gb, label %bb.gd

bb.gb:                                            ; preds = %bb.ga
  %i.aub = icmp ult i64 %i.att, 31
  br i1 %i.aub, label %bb.gc, label %.critedge.i

bb.gc:                                            ; preds = %bb.gb
  %i.auc = lshr i64 %i.atz, 1
  %i.aud = trunc i64 %i.auc to i32
  %i.aue = trunc nuw nsw i64 %i.att to i32
  %i.auf = shl nuw nsw i32 1, %i.aue
  %i.aug = and i32 %i.auf, %i.aud
  %.not12.i = icmp eq i32 %i.aug, 0
  br i1 %.not12.i, label %.critedge.i, label %vm_check_keyword.exit

bb.gd:                                            ; preds = %bb.ga
  %i.auh = shl i64 %i.att, 1
  %i.aui = or disjoint i64 %i.auh, 1
  %i.auj = call i64 @rb_hash_has_key(i64 noundef %i.atz, i64 noundef %i.aui) #23
  %.not.i2477 = icmp eq i64 %i.auj, 0
  br i1 %.not.i2477, label %.critedge.i, label %vm_check_keyword.exit

.critedge.i:                                      ; preds = %bb.gd, %bb.gc, %bb.gb
  br label %vm_check_keyword.exit

vm_check_keyword.exit:                            ; preds = %bb.gc, %bb.gd, %.critedge.i
  %.1.i2478 = phi i64 [ 20, %.critedge.i ], [ 0, %bb.gc ], [ 0, %bb.gd ]
  %i.auk = getelementptr i8, ptr %.02257, i64 8   ; 2 uses
  %i.aul = load ptr, ptr %i.auk, align 8, !tbaa !73 ; 2 uses
  %i.aum = getelementptr i8, ptr %i.aul, i64 8
  store ptr %i.aum, ptr %i.auk, align 8, !tbaa !73
  store i64 %.1.i2478, ptr %i.aul, align 8, !tbaa !11
  br label %.backedge.backedge

bb.ge:                                            ; preds = %.backedge, %bb.ahj
  %i.aun = getelementptr i8, ptr %.6, i64 8
  %i.auo = load i64, ptr %i.aun, align 8, !tbaa !11
  %i.aup = getelementptr i8, ptr %.02257, i64 8
  %i.auq = load ptr, ptr %i.aup, align 8, !tbaa !73
  %i.aur = getelementptr i8, ptr %i.auq, i64 -8   ; 2 uses
  %i.aus = load i64, ptr %i.aur, align 8, !tbaa !11 ; 7 uses
  %i.aut = getelementptr i8, ptr %.6, i64 16      ; 2 uses
  store ptr %i.aut, ptr %.02257, align 8, !tbaa !146
  %i.auu = icmp eq i64 %i.aus, 0
  %i.auv = and i64 %i.aus, 7
  %i.auw = icmp ne i64 %i.auv, 0
  %i.aux = or i1 %i.auu, %i.auw
  br i1 %i.aux, label %bb.gg, label %bb.gf

bb.gf:                                            ; preds = %bb.ge
  %i.auy = inttoptr i64 %i.aus to ptr
  %i.auz = load i64, ptr %i.auy, align 8, !tbaa !77
  %i.ava = trunc i64 %i.auz to i32
  %i.avb = and i32 %i.ava, 31
  br label %rb_type.exit

bb.gg:                                            ; preds = %bb.ge
  %i.avc = call i64 @llvm.fshl.i64(i64 %i.aus, i64 %i.aus, i64 62) ; 3 uses
  %i.avd = icmp ult i64 %i.avc, 10
  %switch.maskindex = trunc i64 %i.avc to i16
  %switch.shifted = lshr i16 547, %switch.maskindex
  %switch.lobit = trunc i16 %switch.shifted to i1
  %or.cond3720 = select i1 %i.avd, i1 %switch.lobit, i1 false
  br i1 %or.cond3720, label %switch.lookup, label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  %i.ave = trunc i64 %i.aus to i1
  br i1 %i.ave, label %rb_type.exit, label %bb.gi

bb.gi:                                            ; preds = %bb.gh
  %i.avf = and i64 %i.aus, 254
  %i.avg = icmp eq i64 %i.avf, 12
  %spec.select.i = select i1 %i.avg, i32 20, i32 4
  br label %rb_type.exit

end_hunk_2
begin_hunk_3_@update_classvariable_cache:bb.a
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i, label %bb.c

RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i:   ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i, %rbimpl_RB_TYPE_P_fastpath.exit.thread
  %i.w = getelementptr i8, ptr %i.q, i64 24
  br label %RCLASS_EXT_READABLE.exit

bb.c:                                             ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i
  %i.x = call ptr @rb_current_box() #23           ; 3 uses
  %.not.i = icmp eq ptr %i.x, null
  br i1 %.not.i, label %.split.i, label %bb.d

.split.i:                                         ; preds = %bb.c
  %i.y = getelementptr i8, ptr %i.q, i64 24
  br label %RCLASS_EXT_READABLE.exit

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr i8, ptr %i.x, i64 128
  %i.aa = load i8, ptr %i.z, align 8, !tbaa !111, !range !114, !noundef !64
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %.split7.i, label %bb.g

.split7.i:                                        ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.ac = load i64, ptr %i.q, align 8, !tbaa !77
  %i.ad = and i64 %i.ac, 65536
  %.not.i.i.i10.i = icmp eq i64 %i.ad, 0
  br i1 %.not.i.i.i10.i, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i, label %RCLASS_CLASSEXT_TBL.exit.i.i11.i

RCLASS_CLASSEXT_TBL.exit.i.i11.i:                 ; preds = %.split7.i
  %i.ae = load ptr, ptr %i.t, align 8, !tbaa !192 ; 2 uses
  %.not.i.i12.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i12.i, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i, label %bb.e

bb.e:                                             ; preds = %RCLASS_CLASSEXT_TBL.exit.i.i11.i
  %i.af = load i64, ptr %i.x, align 8, !tbaa !196
  %i.ag = call i32 @rb_st_lookup(ptr noundef nonnull %i.ae, i64 noundef %i.af, ptr noundef nonnull %i.a) #23
  %.not5.i.i13.i = icmp eq i32 %i.ag, 0
  br i1 %.not5.i.i13.i, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = load i64, ptr %i.a, align 8, !tbaa !11
  %i.ai = inttoptr i64 %i.ah to ptr
  br label %RCLASS_EXT_READABLE_LOOKUP.exit17.i

RCLASS_EXT_READABLE_LOOKUP.exit17.i:              ; preds = %bb.f, %bb.e, %RCLASS_CLASSEXT_TBL.exit.i.i11.i, %.split7.i
  %.0.i.i14.i = phi ptr [ %i.ai, %bb.f ], [ null, %bb.e ], [ null, %RCLASS_CLASSEXT_TBL.exit.i.i11.i ], [ null, %.split7.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %.not.i15.i = icmp eq ptr %.0.i.i14.i, null
  %i.aj = getelementptr i8, ptr %i.q, i64 24
  %.0.i16.i = select i1 %.not.i15.i, ptr %i.aj, ptr %.0.i.i14.i
  br label %RCLASS_EXT_READABLE.exit

bb.g:                                             ; preds = %bb.d
  %i.ak = getelementptr i8, ptr %i.q, i64 24
  br label %RCLASS_EXT_READABLE.exit

RCLASS_EXT_READABLE.exit:                         ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i, %.split.i, %RCLASS_EXT_READABLE_LOOKUP.exit17.i, %bb.g
  %.0.i17 = phi ptr [ %i.w, %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i ], [ %i.ak, %bb.g ], [ %i.y, %.split.i ], [ %.0.i16.i, %RCLASS_EXT_READABLE_LOOKUP.exit17.i ]
  %i.al = getelementptr i8, ptr %.0.i17, i64 56
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !683 ; 2 uses
  %.not = icmp eq ptr %i.am, null
  br i1 %.not, label %bb.h, label %bb.i

bb.h:                                             ; preds = %RCLASS_EXT_READABLE.exit
  call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.137) #57
  unreachable

bb.i:                                             ; preds = %RCLASS_EXT_READABLE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  %i.an = call i32 @rb_id_table_lookup(ptr noundef nonnull %i.am, i64 noundef %2, ptr noundef nonnull %i.c) #23
  %.not16 = icmp eq i32 %i.an, 0
  br i1 %.not16, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.138) #57
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.ao = load i64, ptr %i.c, align 8, !tbaa !11
  %i.ap = inttoptr i64 %i.ao to ptr               ; 4 uses
  %i.aq = load i64, ptr @ruby_vm_global_cvar_state, align 8, !tbaa !97
  %i.ar = getelementptr i8, ptr %i.ap, i64 8
  store i64 %i.aq, ptr %i.ar, align 8, !tbaa !95
  %i.as = getelementptr i8, ptr %i.ap, i64 16     ; 2 uses
  store ptr %3, ptr %i.as, align 8, !tbaa !98
  store ptr %i.ap, ptr %4, align 8, !tbaa !92
  %i.at = ptrtoint ptr %0 to i64                  ; 2 uses
  %i.au = ptrtoint ptr %3 to i64                  ; 2 uses
  %i.av = and i64 %i.au, 7
  %.not21 = icmp eq i64 %i.av, 0
  br i1 %.not21, label %bb.l, label %rb_obj_written.exit

bb.l:                                             ; preds = %bb.k
  call void @rb_gc_writebarrier(i64 noundef %i.at, i64 noundef %i.au) #23
  br label %rb_obj_written.exit

rb_obj_written.exit:                              ; preds = %bb.k, %bb.l
  %i.aw = getelementptr i8, ptr %i.ap, i64 24     ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !100 ; 3 uses
  %i.ay = icmp eq i64 %i.ax, 0
  %i.az = and i64 %i.ax, 7
  %i.ba = icmp ne i64 %i.az, 0
  %i.bb = or i1 %i.ay, %i.ba
  br i1 %i.bb, label %rb_obj_written.exit18, label %bb.m

bb.m:                                             ; preds = %rb_obj_written.exit
  call void @rb_gc_writebarrier(i64 noundef %i.at, i64 noundef %i.ax) #23
  br label %rb_obj_written.exit18

rb_obj_written.exit18:                            ; preds = %rb_obj_written.exit, %bb.m
  %i.bc = load ptr, ptr %i.as, align 8, !tbaa !98 ; 2 uses
  %i.bd = ptrtoint ptr %i.bc to i64               ; 2 uses
  %i.be = icmp eq ptr %i.bc, null
  %i.bf = and i64 %i.bd, 7
  %i.bg = icmp ne i64 %i.bf, 0
  %i.bh = or i1 %i.be, %i.bg
  br i1 %i.bh, label %rb_obj_written.exit19, label %bb.n

bb.n:                                             ; preds = %rb_obj_written.exit18
  %i.bi = load i64, ptr %i.aw, align 8, !tbaa !100
  call void @rb_gc_writebarrier(i64 noundef %i.bi, i64 noundef %i.bd) #23
  br label %rb_obj_written.exit19

rb_obj_written.exit19:                            ; preds = %rb_obj_written.exit18, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  ret i64 %i.d
}

declare i64 @rb_cvar_find(i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

declare zeroext i1 @rb_class_ivar_set(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

declare void @rb_cvar_set(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @rb_error_frozen_object(i64 noundef) local_unnamed_addr #10

; Function Attrs: noinline nounwind sspstrong uwtable
define internal fastcc noundef i64 @vm_setivar_class(i64 noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, i16 noundef zeroext %4) unnamed_addr #30 {
bb.a:
  %i.a = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !90
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %rb_ractor_main_p.exit, label %rb_ractor_main_p.exit.thread

rb_ractor_main_p.exit:                            ; preds = %bb.a
  %i.b = tail call zeroext i1 @rb_ractor_main_p_() #23
  br i1 %i.b, label %rb_ractor_main_p.exit.thread, label %RSHAPE_DIRECT_CHILD_P.exit.thread, !prof !91

rb_ractor_main_p.exit.thread:                     ; preds = %bb.a, %rb_ractor_main_p.exit
  %i.c = icmp ne i64 %0, 0
  %i.d = and i64 %0, 7
  %i.e = icmp eq i64 %i.d, 0
  %.not5.i.i.i.i = and i1 %i.c, %i.e
  br i1 %.not5.i.i.i.i, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i, !prof !168

RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i:        ; preds = %rb_ractor_main_p.exit.thread
  %i.f = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !77
  %i.h = and i64 %i.g, 16384
  %.not10.i.i = icmp eq i64 %i.h, 0
  br i1 %.not10.i.i, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i, label %bb.b, !prof !110

bb.b:                                             ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i
  %i.i = getelementptr i8, ptr %i.f, i64 24
  br label %RCLASS_WRITABLE_FIELDS_OBJ.exit

RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i: ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i, %rb_ractor_main_p.exit.thread
  %i.j = tail call ptr @rb_current_box() #23      ; 3 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %.split.i.i, label %bb.c

.split.i.i:                                       ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i
  %i.k = tail call fastcc ptr @RCLASS_EXT_WRITABLE_LOOKUP(i64 noundef %0, ptr noundef null)
  br label %RCLASS_WRITABLE_FIELDS_OBJ.exit

bb.c:                                             ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i
  %i.l = getelementptr i8, ptr %i.j, i64 128
  %i.m = load i8, ptr %i.l, align 8, !tbaa !111, !range !114, !noundef !64
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %.split7.i.i, label %bb.d

.split7.i.i:                                      ; preds = %bb.c
  %i.o = tail call fastcc ptr @RCLASS_EXT_WRITABLE_LOOKUP(i64 noundef %0, ptr noundef nonnull %i.j)
  br label %RCLASS_WRITABLE_FIELDS_OBJ.exit

bb.d:                                             ; preds = %bb.c
  %i.p = inttoptr i64 %0 to ptr
  %i.q = getelementptr i8, ptr %i.p, i64 24
  br label %RCLASS_WRITABLE_FIELDS_OBJ.exit

RCLASS_WRITABLE_FIELDS_OBJ.exit:                  ; preds = %bb.b, %.split.i.i, %.split7.i.i, %bb.d
  %.0.i.i = phi ptr [ %i.i, %bb.b ], [ %i.q, %bb.d ], [ %i.k, %.split.i.i ], [ %i.o, %.split7.i.i ]
  %i.r = getelementptr i8, ptr %.0.i.i, i64 16
  %i.s = load i64, ptr %i.r, align 8, !tbaa !115  ; 3 uses
  %.not = icmp eq i64 %i.s, 0
  br i1 %.not, label %RSHAPE_DIRECT_CHILD_P.exit.thread, label %bb.e, !prof !177

bb.e:                                             ; preds = %RCLASS_WRITABLE_FIELDS_OBJ.exit
  %i.t = inttoptr i64 %i.s to ptr                 ; 5 uses
  %.shift.i = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %5 = load i32, ptr %.shift.i, align 4, !tbaa !77 ; 4 uses
  %i.u = icmp eq i32 %5, %3                       ; 2 uses
  br i1 %i.u, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not27 = icmp eq i32 %3, -1
  br i1 %.not27, label %RSHAPE_DIRECT_CHILD_P.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = xor i32 %5, %3
  %i.w = and i32 %i.v, 264241152
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %RSHAPE_DIRECT_CHILD_P.exit, label %RSHAPE_DIRECT_CHILD_P.exit.thread

RSHAPE_DIRECT_CHILD_P.exit:                       ; preds = %bb.g
  %i.y = and i32 %3, 524287
  %i.z = load ptr, ptr @rb_shape_tree, align 8, !tbaa !101 ; 3 uses
  %i.aa = zext nneg i32 %i.y to i64
  %i.ab = getelementptr [40 x i8], ptr %i.z, i64 %i.aa ; 4 uses
  %i.ac = getelementptr i8, ptr %i.ab, i64 24
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !106 ; 3 uses
  %i.ae = and i32 %5, 524287
  %i.af = icmp eq i32 %i.ad, %i.ae
  br i1 %i.af, label %bb.h, label %RSHAPE_DIRECT_CHILD_P.exit.thread

bb.h:                                             ; preds = %RSHAPE_DIRECT_CHILD_P.exit
  %i.ag = getelementptr i8, ptr %i.ab, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !109
  %i.ai = icmp eq i64 %i.ah, %1
  br i1 %i.ai, label %bb.i, label %RSHAPE_DIRECT_CHILD_P.exit.thread

bb.i:                                             ; preds = %bb.h
  %6 = lshr i32 %5, 22
  %7 = trunc i32 %6 to i8
  %8 = and i8 %7, 7                               ; 2 uses
  %.not.i.i29 = icmp eq i8 %8, 0
  br i1 %.not.i.i29, label %RSHAPE_EMBEDDED_CAPACITY.exit.thread.i, label %RSHAPE_EMBEDDED_CAPACITY.exit.i

RSHAPE_EMBEDDED_CAPACITY.exit.thread.i:           ; preds = %bb.i
  %9 = zext nneg i32 %i.ad to i64
  %i.aj = getelementptr [40 x i8], ptr %i.z, i64 %9
  %i.ak = getelementptr i8, ptr %i.aj, i64 30
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !684
  br label %RSHAPE_CAPACITY.exit

RSHAPE_EMBEDDED_CAPACITY.exit.i:                  ; preds = %bb.i
  %i.am = load ptr, ptr getelementptr inbounds nuw (i8, ptr @rb_shape_tree, i64 16), align 8, !tbaa !685
  %10 = zext nneg i8 %8 to i64
  %i.an = add nuw nsw i64 %10, 4294967295
  %i.ao = and i64 %i.an, 4294967295
  %i.ap = getelementptr [2 x i8], ptr %i.am, i64 %i.ao
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !120
  %11 = zext nneg i32 %i.ad to i64
  %i.ar = getelementptr [40 x i8], ptr %i.z, i64 %11
  %i.as = getelementptr i8, ptr %i.ar, i64 30
  %i.at = load i16, ptr %i.as, align 2, !tbaa !684
  %spec.select.i = tail call i16 @llvm.umax.i16(i16 %i.aq, i16 %i.at)
  br label %RSHAPE_CAPACITY.exit

RSHAPE_CAPACITY.exit:                             ; preds = %RSHAPE_EMBEDDED_CAPACITY.exit.thread.i, %RSHAPE_EMBEDDED_CAPACITY.exit.i
  %.0.i30 = phi i16 [ %spec.select.i, %RSHAPE_EMBEDDED_CAPACITY.exit.i ], [ %i.al, %RSHAPE_EMBEDDED_CAPACITY.exit.thread.i ]
  %i.au = lshr i32 %3, 22
  %i.av = trunc i32 %i.au to i8
  %i.aw = and i8 %i.av, 7                         ; 2 uses
  %.not.i.i31 = icmp eq i8 %i.aw, 0
  br i1 %.not.i.i31, label %RSHAPE_EMBEDDED_CAPACITY.exit.thread.i35, label %RSHAPE_EMBEDDED_CAPACITY.exit.i32

RSHAPE_EMBEDDED_CAPACITY.exit.thread.i35:         ; preds = %RSHAPE_CAPACITY.exit
  %i.ax = getelementptr i8, ptr %i.ab, i64 30
  %i.ay = load i16, ptr %i.ax, align 2, !tbaa !684
  br label %RSHAPE_CAPACITY.exit36

RSHAPE_EMBEDDED_CAPACITY.exit.i32:                ; preds = %RSHAPE_CAPACITY.exit
  %i.az = load ptr, ptr getelementptr inbounds nuw (i8, ptr @rb_shape_tree, i64 16), align 8, !tbaa !685
  %i.ba = zext nneg i8 %i.aw to i64
  %i.bb = add nuw nsw i64 %i.ba, 4294967295
  %i.bc = and i64 %i.bb, 4294967295
  %i.bd = getelementptr [2 x i8], ptr %i.az, i64 %i.bc
  %i.be = load i16, ptr %i.bd, align 2, !tbaa !120
  %i.bf = getelementptr i8, ptr %i.ab, i64 30
  %i.bg = load i16, ptr %i.bf, align 2, !tbaa !684
  %spec.select.i33 = tail call i16 @llvm.umax.i16(i16 %i.be, i16 %i.bg)
  br label %RSHAPE_CAPACITY.exit36

RSHAPE_CAPACITY.exit36:                           ; preds = %RSHAPE_EMBEDDED_CAPACITY.exit.thread.i35, %RSHAPE_EMBEDDED_CAPACITY.exit.i32
  %.0.i34 = phi i16 [ %spec.select.i33, %RSHAPE_EMBEDDED_CAPACITY.exit.i32 ], [ %i.ay, %RSHAPE_EMBEDDED_CAPACITY.exit.thread.i35 ]
  %i.bh = icmp eq i16 %.0.i30, %.0.i34
  br i1 %i.bh, label %bb.j, label %RSHAPE_DIRECT_CHILD_P.exit.thread

bb.j:                                             ; preds = %bb.e, %RSHAPE_CAPACITY.exit36
  %12 = load i64, ptr %i.t, align 8, !tbaa !77
  %i.bi = and i64 %12, 65536
  %.not5.i = icmp eq i64 %i.bi, 0
  %i.bj = getelementptr i8, ptr %i.t, i64 16      ; 2 uses
  br i1 %.not5.i, label %rb_imemo_fields_ptr.exit, label %bb.k, !prof !72

bb.k:                                             ; preds = %bb.j
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !27
  br label %rb_imemo_fields_ptr.exit

rb_imemo_fields_ptr.exit:                         ; preds = %bb.j, %bb.k
  %.0.i38 = phi ptr [ %i.bk, %bb.k ], [ %i.bj, %bb.j ]
  %i.bl = zext i16 %4 to i64
  %i.bm = getelementptr [8 x i8], ptr %.0.i38, i64 %i.bl
  store i64 %2, ptr %i.bm, align 8, !tbaa !11
  %i.bn = icmp eq i64 %2, 0
  %i.bo = and i64 %2, 7
  %i.bp = icmp ne i64 %i.bo, 0
  %i.bq = or i1 %i.bn, %i.bp
  br i1 %i.bq, label %rb_obj_write.exit, label %bb.l

bb.l:                                             ; preds = %rb_imemo_fields_ptr.exit
  tail call void @rb_gc_writebarrier(i64 noundef %i.s, i64 noundef %2) #23
  br label %rb_obj_write.exit

rb_obj_write.exit:                                ; preds = %rb_imemo_fields_ptr.exit, %bb.l
  br i1 %i.u, label %RSHAPE_DIRECT_CHILD_P.exit.thread, label %bb.m

bb.m:                                             ; preds = %rb_obj_write.exit
  %i.br = inttoptr i64 %0 to ptr                  ; 2 uses
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !77
  %i.bt = and i64 %i.bs, 4294967295
  %i.bu = zext i32 %3 to i64
  %i.bv = shl nuw i64 %i.bu, 32                   ; 2 uses
  %i.bw = or disjoint i64 %i.bt, %i.bv
  store i64 %i.bw, ptr %i.br, align 8, !tbaa !77
  %i.bx = load i64, ptr %i.t, align 8, !tbaa !77
  %i.by = and i64 %i.bx, 4294967295
  %i.bz = or disjoint i64 %i.by, %i.bv
  store i64 %i.bz, ptr %i.t, align 8, !tbaa !77
  br label %RSHAPE_DIRECT_CHILD_P.exit.thread

RSHAPE_DIRECT_CHILD_P.exit.thread:                ; preds = %bb.g, %RCLASS_WRITABLE_FIELDS_OBJ.exit, %rb_obj_write.exit, %bb.m, %bb.f, %RSHAPE_DIRECT_CHILD_P.exit, %bb.h, %RSHAPE_CAPACITY.exit36, %rb_ractor_main_p.exit
  %.2 = phi i64 [ 36, %rb_ractor_main_p.exit ], [ 36, %RCLASS_WRITABLE_FIELDS_OBJ.exit ], [ 36, %bb.f ], [ 36, %RSHAPE_DIRECT_CHILD_P.exit ], [ 36, %RSHAPE_CAPACITY.exit36 ], [ 36, %bb.h ], [ %2, %bb.m ], [ %2, %rb_obj_write.exit ], [ 36, %bb.g ]
  ret i64 %.2
}

; Function Attrs: noinline nounwind sspstrong uwtable
define internal fastcc noundef i64 @vm_setivar_default(i64 noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, i16 noundef zeroext %4) unnamed_addr #30 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 3 uses
  %.shift.i = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %5 = load i32, ptr %.shift.i, align 4, !tbaa !77 ; 4 uses
  %i.b = icmp eq i32 %5, %3                       ; 2 uses
  br i1 %i.b, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i32 %3, -1
  br i1 %.not, label %RSHAPE_DIRECT_CHILD_P.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = xor i32 %5, %3
  %i.d = and i32 %i.c, 264241152
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %RSHAPE_DIRECT_CHILD_P.exit, label %RSHAPE_DIRECT_CHILD_P.exit.thread

RSHAPE_DIRECT_CHILD_P.exit:                       ; preds = %bb.c
  %i.f = and i32 %3, 524287
  %i.g = load ptr, ptr @rb_shape_tree, align 8, !tbaa !101 ; 3 uses
  %i.h = zext nneg i32 %i.f to i64
  %i.i = getelementptr [40 x i8], ptr %i.g, i64 %i.h ; 4 uses
  %i.j = getelementptr i8, ptr %i.i, i64 24
  %i.k = load i32, ptr %i.j, align 8, !tbaa !106  ; 3 uses
  %i.l = and i32 %5, 524287
  %i.m = icmp eq i32 %i.k, %i.l
  br i1 %i.m, label %bb.d, label %RSHAPE_DIRECT_CHILD_P.exit.thread

bb.d:                                             ; preds = %RSHAPE_DIRECT_CHILD_P.exit
  %i.n = getelementptr i8, ptr %i.i, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !109
  %i.p = icmp eq i64 %i.o, %1
  br i1 %i.p, label %bb.e, label %RSHAPE_DIRECT_CHILD_P.exit.thread

bb.e:                                             ; preds = %bb.d
  %6 = lshr i32 %5, 22
  %7 = trunc i32 %6 to i8
  %8 = and i8 %7, 7                               ; 2 uses
  %.not.i.i = icmp eq i8 %8, 0
  br i1 %.not.i.i, label %RSHAPE_EMBEDDED_CAPACITY.exit.thread.i, label %RSHAPE_EMBEDDED_CAPACITY.exit.i

RSHAPE_EMBEDDED_CAPACITY.exit.thread.i:           ; preds = %bb.e
  %9 = zext nneg i32 %i.k to i64
  %i.q = getelementptr [40 x i8], ptr %i.g, i64 %9
  %i.r = getelementptr i8, ptr %i.q, i64 30
  %i.s = load i16, ptr %i.r, align 2, !tbaa !684
  br label %RSHAPE_CAPACITY.exit

RSHAPE_EMBEDDED_CAPACITY.exit.i:                  ; preds = %bb.e
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @rb_shape_tree, i64 16), align 8, !tbaa !685
  %10 = zext nneg i8 %8 to i64
  %i.u = add nuw nsw i64 %10, 4294967295
  %i.v = and i64 %i.u, 4294967295
  %i.w = getelementptr [2 x i8], ptr %i.t, i64 %i.v
  %i.x = load i16, ptr %i.w, align 2, !tbaa !120
  %11 = zext nneg i32 %i.k to i64
  %i.y = getelementptr [40 x i8], ptr %i.g, i64 %11
  %i.z = getelementptr i8, ptr %i.y, i64 30
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !684
  %spec.select.i = tail call i16 @llvm.umax.i16(i16 %i.x, i16 %i.aa)
  br label %RSHAPE_CAPACITY.exit

RSHAPE_CAPACITY.exit:                             ; preds = %RSHAPE_EMBEDDED_CAPACITY.exit.thread.i, %RSHAPE_EMBEDDED_CAPACITY.exit.i
  %.0.i = phi i16 [ %spec.select.i, %RSHAPE_EMBEDDED_CAPACITY.exit.i ], [ %i.s, %RSHAPE_EMBEDDED_CAPACITY.exit.thread.i ]
  %i.ab = lshr i32 %3, 22
  %i.ac = trunc i32 %i.ab to i8
  %i.ad = and i8 %i.ac, 7                         ; 2 uses
  %.not.i.i27 = icmp eq i8 %i.ad, 0
  br i1 %.not.i.i27, label %RSHAPE_EMBEDDED_CAPACITY.exit.thread.i31, label %RSHAPE_EMBEDDED_CAPACITY.exit.i28

RSHAPE_EMBEDDED_CAPACITY.exit.thread.i31:         ; preds = %RSHAPE_CAPACITY.exit
  %i.ae = getelementptr i8, ptr %i.i, i64 30
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !684
  br label %RSHAPE_CAPACITY.exit32

RSHAPE_EMBEDDED_CAPACITY.exit.i28:                ; preds = %RSHAPE_CAPACITY.exit
  %i.ag = load ptr, ptr getelementptr inbounds nuw (i8, ptr @rb_shape_tree, i64 16), align 8, !tbaa !685
  %i.ah = zext nneg i8 %i.ad to i64
  %i.ai = add nuw nsw i64 %i.ah, 4294967295
  %i.aj = and i64 %i.ai, 4294967295
  %i.ak = getelementptr [2 x i8], ptr %i.ag, i64 %i.aj
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !120
  %i.am = getelementptr i8, ptr %i.i, i64 30
  %i.an = load i16, ptr %i.am, align 2, !tbaa !684
  %spec.select.i29 = tail call i16 @llvm.umax.i16(i16 %i.al, i16 %i.an)
  br label %RSHAPE_CAPACITY.exit32

RSHAPE_CAPACITY.exit32:                           ; preds = %RSHAPE_EMBEDDED_CAPACITY.exit.thread.i31, %RSHAPE_EMBEDDED_CAPACITY.exit.i28
  %.0.i30 = phi i16 [ %spec.select.i29, %RSHAPE_EMBEDDED_CAPACITY.exit.i28 ], [ %i.af, %RSHAPE_EMBEDDED_CAPACITY.exit.thread.i31 ]
  %i.ao = icmp eq i16 %.0.i, %.0.i30
  br i1 %i.ao, label %bb.f, label %RSHAPE_DIRECT_CHILD_P.exit.thread

bb.f:                                             ; preds = %RSHAPE_CAPACITY.exit32, %bb.a
  %i.ap = tail call i64 @rb_obj_fields(i64 noundef %0, i64 noundef %1) #23 ; 3 uses
  %.not.i = icmp ne i64 %i.ap, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.aq = inttoptr i64 %i.ap to ptr               ; 4 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !77
  %i.as = and i64 %i.ar, 65536
  %.not5.i = icmp eq i64 %i.as, 0
  %i.at = getelementptr i8, ptr %i.aq, i64 16     ; 2 uses
  br i1 %.not5.i, label %rb_imemo_fields_ptr.exit, label %bb.g, !prof !72

bb.g:                                             ; preds = %bb.f
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !27
  br label %rb_imemo_fields_ptr.exit

rb_imemo_fields_ptr.exit:                         ; preds = %bb.f, %bb.g
  %.0.i33 = phi ptr [ %i.au, %bb.g ], [ %i.at, %bb.f ]
  %i.av = zext i16 %4 to i64
  %i.aw = getelementptr [8 x i8], ptr %.0.i33, i64 %i.av
  store i64 %2, ptr %i.aw, align 8, !tbaa !11
  %i.ax = icmp eq i64 %2, 0
  %i.ay = and i64 %2, 7
  %i.az = icmp ne i64 %i.ay, 0
  %i.ba = or i1 %i.ax, %i.az
  br i1 %i.ba, label %rb_obj_write.exit, label %bb.h

bb.h:                                             ; preds = %rb_imemo_fields_ptr.exit
  tail call void @rb_gc_writebarrier(i64 noundef %i.ap, i64 noundef %2) #23
  br label %rb_obj_write.exit

rb_obj_write.exit:                                ; preds = %rb_imemo_fields_ptr.exit, %bb.h
  br i1 %i.b, label %RSHAPE_DIRECT_CHILD_P.exit.thread, label %bb.i

bb.i:                                             ; preds = %rb_obj_write.exit
  %i.bb = load i64, ptr %i.a, align 8, !tbaa !77
  %i.bc = and i64 %i.bb, 4294967295
  %i.bd = zext i32 %3 to i64
  %i.be = shl nuw i64 %i.bd, 32                   ; 2 uses
  %i.bf = or disjoint i64 %i.bc, %i.be
  store i64 %i.bf, ptr %i.a, align 8, !tbaa !77
  %i.bg = load i64, ptr %i.aq, align 8, !tbaa !77
  %i.bh = and i64 %i.bg, 4294967295
  %i.bi = or disjoint i64 %i.bh, %i.be
  store i64 %i.bi, ptr %i.aq, align 8, !tbaa !77
  br label %RSHAPE_DIRECT_CHILD_P.exit.thread

RSHAPE_DIRECT_CHILD_P.exit.thread:                ; preds = %bb.c, %rb_obj_write.exit, %bb.i, %bb.b, %RSHAPE_DIRECT_CHILD_P.exit, %bb.d, %RSHAPE_CAPACITY.exit32
  %.0 = phi i64 [ 36, %bb.b ], [ 36, %RSHAPE_DIRECT_CHILD_P.exit ], [ 36, %RSHAPE_CAPACITY.exit32 ], [ 36, %bb.d ], [ %2, %bb.i ], [ %2, %rb_obj_write.exit ], [ 36, %bb.c ]
  ret i64 %.0
}

; Function Attrs: noinline nounwind sspstrong uwtable
define internal fastcc noundef i64 @vm_setivar_slowpath_ivar(i64 noundef %0, i64 noundef %1, i64 noundef returned %2, ptr noundef %3) unnamed_addr #30 {
bb.a:
  %i.a = icmp ne i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp eq i64 %i.b, 0
  %.not3.i.i = and i1 %i.a, %i.c
  br i1 %.not3.i.i, label %RB_OBJ_FROZEN.exit.i, label %RB_OBJ_FROZEN.exit.thread.i, !prof !168

RB_OBJ_FROZEN.exit.i:                             ; preds = %bb.a
  %i.d = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !77   ; 3 uses
  %i.f = and i64 %i.e, 2048
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i, label %RB_OBJ_FROZEN.exit.thread.i, !prof !369

RB_OBJ_FROZEN.exit.thread.i:                      ; preds = %RB_OBJ_FROZEN.exit.i, %bb.a
  tail call void @rb_error_frozen_object(i64 noundef %0) #42
  unreachable

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %RB_OBJ_FROZEN.exit.i
  %i.g = and i64 %i.e, 31
  %i.h = icmp ne i64 %i.g, 5
  %i.i = and i64 %i.e, 49152
  %.not8.i = icmp eq i64 %i.i, 0
  %or.cond.i = or i1 %i.h, %.not8.i
  br i1 %or.cond.i, label %rb_check_frozen_inline.exit, label %bb.b, !prof !455

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  tail call void @rb_str_modify(i64 noundef %0) #23
  br label %rb_check_frozen_inline.exit

rb_check_frozen_inline.exit:                      ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.b
  %i.j = tail call zeroext i16 @rb_ivar_set_index(i64 noundef %0, i64 noundef %1, i64 noundef %2) #23
  %.shift.i = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %4 = load i32, ptr %.shift.i, align 4, !tbaa !77 ; 2 uses
  %5 = and i32 %4, 134217728
  %.not = icmp eq i32 %5, 0
  br i1 %.not, label %bb.c, label %vm_setivar_slowpath.exit

bb.c:                                             ; preds = %rb_check_frozen_inline.exit
  %i.k = add i16 %i.j, 1
  %.sroa.4.0.insert.ext.i.i7.i = zext i16 %i.k to i64
  %.sroa.4.0.insert.shift.i.i8.i = shl nuw nsw i64 %.sroa.4.0.insert.ext.i.i7.i, 32
  %.sroa.4.0.insert.ext.i.i7.i.a = zext i32 %4 to i64
  %.sroa.0.0.insert.insert.i.i10.i = or disjoint i64 %.sroa.4.0.insert.shift.i.i8.i, %.sroa.4.0.insert.ext.i.i7.i.a
  store atomic volatile i64 %.sroa.0.0.insert.insert.i.i10.i, ptr %3 monotonic, align 8
  br label %vm_setivar_slowpath.exit

vm_setivar_slowpath.exit:                         ; preds = %rb_check_frozen_inline.exit, %bb.c
  ret i64 %2
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc zeroext i16 @RSHAPE_CAPACITY(i32 noundef %0) unnamed_addr #18 {
bb.a:
  %i.a = lshr i32 %0, 22
  %i.b = trunc i32 %i.a to i8
  %i.c = and i8 %i.b, 7                           ; 2 uses
  %.not.i = icmp eq i8 %i.c, 0
  br i1 %.not.i, label %RSHAPE_EMBEDDED_CAPACITY.exit.thread, label %RSHAPE_EMBEDDED_CAPACITY.exit

RSHAPE_EMBEDDED_CAPACITY.exit.thread:             ; preds = %bb.a
  %i.d = and i32 %0, 524287
  %i.e = load ptr, ptr @rb_shape_tree, align 8, !tbaa !101
  %i.f = zext nneg i32 %i.d to i64
  %i.g = getelementptr [40 x i8], ptr %i.e, i64 %i.f
  %i.h = getelementptr i8, ptr %i.g, i64 30
  %i.i = load i16, ptr %i.h, align 2, !tbaa !684
  br label %bb.b

RSHAPE_EMBEDDED_CAPACITY.exit:                    ; preds = %bb.a
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @rb_shape_tree, i64 16), align 8, !tbaa !685
  %i.k = zext nneg i8 %i.c to i64
  %i.l = add nuw nsw i64 %i.k, 4294967295
  %i.m = and i64 %i.l, 4294967295
  %i.n = getelementptr [2 x i8], ptr %i.j, i64 %i.m
  %i.o = load i16, ptr %i.n, align 2, !tbaa !120
  %i.p = and i32 %0, 524287
  %i.q = load ptr, ptr @rb_shape_tree, align 8, !tbaa !101
  %i.r = zext nneg i32 %i.p to i64
  %i.s = getelementptr [40 x i8], ptr %i.q, i64 %i.r
  %i.t = getelementptr i8, ptr %i.s, i64 30
  %i.u = load i16, ptr %i.t, align 2, !tbaa !684
  %spec.select = tail call i16 @llvm.umax.i16(i16 %i.o, i16 %i.u)
  br label %bb.b

bb.b:                                             ; preds = %RSHAPE_EMBEDDED_CAPACITY.exit, %RSHAPE_EMBEDDED_CAPACITY.exit.thread
  %.0 = phi i16 [ %spec.select, %RSHAPE_EMBEDDED_CAPACITY.exit ], [ %i.i, %RSHAPE_EMBEDDED_CAPACITY.exit.thread ]
  ret i16 %.0
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc ptr @RCLASS_EXT_WRITABLE(i64 noundef %0) unnamed_addr #11 {
bb.a:
  %i.a = icmp ne i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp eq i64 %i.b, 0
  %.not5.i.i = and i1 %i.a, %i.c
  br i1 %.not5.i.i, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread, !prof !168

RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit:            ; preds = %bb.a
  %i.d = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !77
  %i.f = and i64 %i.e, 16384
  %.not10 = icmp eq i64 %i.f, 0
  br i1 %.not10, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread, label %bb.b, !prof !110

bb.b:                                             ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit
  %i.g = getelementptr i8, ptr %i.d, i64 24
  br label %bb.e

RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread:     ; preds = %bb.a, %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit
  %i.h = tail call ptr @rb_current_box() #23      ; 3 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %.split, label %bb.c

.split:                                           ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread
  %i.i = tail call fastcc ptr @RCLASS_EXT_WRITABLE_LOOKUP(i64 noundef %0, ptr noundef null)
  br label %bb.e

bb.c:                                             ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread
  %i.j = getelementptr i8, ptr %i.h, i64 128
  %i.k = load i8, ptr %i.j, align 8, !tbaa !111, !range !114, !noundef !64
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %.split7, label %bb.d

.split7:                                          ; preds = %bb.c
  %i.m = tail call fastcc ptr @RCLASS_EXT_WRITABLE_LOOKUP(i64 noundef %0, ptr noundef nonnull %i.h)
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = inttoptr i64 %0 to ptr
  %i.o = getelementptr i8, ptr %i.n, i64 24
  br label %bb.e

bb.e:                                             ; preds = %.split, %.split7, %bb.d, %bb.b
  %.0 = phi ptr [ %i.g, %bb.b ], [ %i.o, %bb.d ], [ %i.i, %.split ], [ %i.m, %.split7 ]
  ret ptr %.0
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc ptr @RCLASS_EXT_WRITABLE_LOOKUP(i64 noundef %0, ptr noundef %1) unnamed_addr #11 {
bb.a:
  %i.a = alloca i64, align 8                      ; 9 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.d = inttoptr i64 %0 to ptr                   ; 9 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !77
  %i.f = and i64 %i.e, 65536
  %.not.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.i.i, label %RCLASS_EXT_TABLE_LOOKUP_INTERNAL.exit.thread, label %RCLASS_CLASSEXT_TBL.exit.i

RCLASS_CLASSEXT_TBL.exit.i:                       ; preds = %bb.a
  %i.g = getelementptr i8, ptr %i.d, i64 160
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !192  ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %RCLASS_EXT_TABLE_LOOKUP_INTERNAL.exit.thread, label %bb.b

bb.b:                                             ; preds = %RCLASS_CLASSEXT_TBL.exit.i
  %i.i = load i64, ptr %1, align 8, !tbaa !196
  %i.j = call i32 @rb_st_lookup(ptr noundef nonnull %i.h, i64 noundef %i.i, ptr noundef nonnull %i.b) #23
  %.not5.i = icmp eq i32 %i.j, 0
  br i1 %.not5.i, label %RCLASS_EXT_TABLE_LOOKUP_INTERNAL.exit.thread, label %RCLASS_EXT_TABLE_LOOKUP_INTERNAL.exit

RCLASS_EXT_TABLE_LOOKUP_INTERNAL.exit.thread:     ; preds = %bb.b, %RCLASS_CLASSEXT_TBL.exit.i, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br label %bb.c

RCLASS_EXT_TABLE_LOOKUP_INTERNAL.exit:            ; preds = %bb.b
  %i.k = load i64, ptr %i.b, align 8, !tbaa !11   ; 2 uses
  %i.l = inttoptr i64 %i.k to ptr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  %.not = icmp eq i64 %i.k, 0
  br i1 %.not, label %bb.c, label %bb.j

bb.c:                                             ; preds = %RCLASS_EXT_TABLE_LOOKUP_INTERNAL.exit.thread, %RCLASS_EXT_TABLE_LOOKUP_INTERNAL.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  %i.m = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !90
  %.not.i.i25 = icmp eq ptr %i.m, null
  br i1 %.not.i.i25, label %bb.d, label %rb_vm_lock_enter.exit

bb.d:                                             ; preds = %bb.c
  call void @rb_vm_lock_enter_body(ptr noundef nonnull %i.c) #23
  br label %rb_vm_lock_enter.exit

rb_vm_lock_enter.exit:                            ; preds = %bb.c, %bb.d
  %i.n = getelementptr i8, ptr %i.d, i64 160      ; 6 uses
  %i.o = getelementptr i8, ptr %i.d, i64 24       ; 2 uses
  %i.p = icmp ne i64 %0, 0
  %i.q = and i64 %0, 7
  %i.r = icmp eq i64 %i.q, 0
  %.not4.i.i = and i1 %i.p, %i.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.s = load i64, ptr %i.d, align 8, !tbaa !77
  %i.t = and i64 %i.s, 65536
  %.not.i.i26.us = icmp eq i64 %i.t, 0            ; 2 uses
  br i1 %.not4.i.i, label %rb_vm_lock_enter.exit.split.us, label %rb_vm_lock_enter.exit.split

rb_vm_lock_enter.exit.split.us:                   ; preds = %rb_vm_lock_enter.exit
  br i1 %.not.i.i26.us, label %RCLASS_EXT_TABLE_LOOKUP_INTERNAL.exit31.thread.us, label %RCLASS_CLASSEXT_TBL.exit.i27.us

RCLASS_CLASSEXT_TBL.exit.i27.us:                  ; preds = %rb_vm_lock_enter.exit.split.us
  %i.u = load ptr, ptr %i.n, align 8, !tbaa !192  ; 2 uses
  %.not.i28.us = icmp eq ptr %i.u, null
  br i1 %.not.i28.us, label %RCLASS_EXT_TABLE_LOOKUP_INTERNAL.exit31.thread.us, label %bb.e

bb.e:                                             ; preds = %RCLASS_CLASSEXT_TBL.exit.i27.us
  %i.v = load i64, ptr %1, align 8, !tbaa !196
  %i.w = call i32 @rb_st_lookup(ptr noundef nonnull %i.u, i64 noundef %i.v, ptr noundef nonnull %i.a) #23
  %.not5.i29.us = icmp eq i32 %i.w, 0
  br i1 %.not5.i29.us, label %RCLASS_EXT_TABLE_LOOKUP_INTERNAL.exit31.thread.us, label %RCLASS_EXT_TABLE_LOOKUP_INTERNAL.exit31.us

RCLASS_EXT_TABLE_LOOKUP_INTERNAL.exit31.us:       ; preds = %bb.e
  %i.x = load i64, ptr %i.a, align 8, !tbaa !11   ; 2 uses
  %i.y = inttoptr i64 %i.x to ptr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %.not23.us = icmp eq i64 %i.x, 0
  br i1 %.not23.us, label %bb.f, label %RCLASS_SET_PRIME_CLASSEXT_WRITABLE.exit.us

RCLASS_EXT_TABLE_LOOKUP_INTERNAL.exit31.thread.us: ; preds = %bb.e, %RCLASS_CLASSEXT_TBL.exit.i27.us, %rb_vm_lock_enter.exit.split.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.f

bb.f:                                             ; preds = %RCLASS_EXT_TABLE_LOOKUP_INTERNAL.exit31.thread.us, %RCLASS_EXT_TABLE_LOOKUP_INTERNAL.exit31.us
  %i.z = call ptr @rb_class_duplicate_classext(ptr noundef %i.o, i64 noundef %0, ptr noundef %1) #23 ; 3 uses
  %i.aa = load i64, ptr %i.d, align 8, !tbaa !77
  %i.ab = and i64 %i.aa, 65536
  %.not.i.i32.us = icmp eq i64 %i.ab, 0
  br i1 %.not.i.i32.us, label %RCLASS_CLASSEXT_TBL.exit.thread.i.us, label %RCLASS_CLASSEXT_TBL.exit.i33.us

RCLASS_CLASSEXT_TBL.exit.i33.us:                  ; preds = %bb.f
  %i.ac = load ptr, ptr %i.n, align 8, !tbaa !192 ; 2 uses
  %.not.i34.us = icmp eq ptr %i.ac, null
  br i1 %.not.i34.us, label %RCLASS_CLASSEXT_TBL.exit.thread.i.us, label %RCLASS_SET_BOX_CLASSEXT.exit.us

RCLASS_CLASSEXT_TBL.exit.thread.i.us:             ; preds = %RCLASS_CLASSEXT_TBL.exit.i33.us, %bb.f
  %i.ad = call ptr @rb_st_init_numtable_with_size(i64 noundef 1) #23 ; 2 uses
  store ptr %i.ad, ptr %i.n, align 8, !tbaa !192
  br label %RCLASS_SET_BOX_CLASSEXT.exit.us

RCLASS_SET_BOX_CLASSEXT.exit.us:                  ; preds = %RCLASS_CLASSEXT_TBL.exit.thread.i.us, %RCLASS_CLASSEXT_TBL.exit.i33.us
  %.0.i35.us = phi ptr [ %i.ac, %RCLASS_CLASSEXT_TBL.exit.i33.us ], [ %i.ad, %RCLASS_CLASSEXT_TBL.exit.thread.i.us ]
  %i.ae = call i64 @rb_st_table_size(ptr noundef %.0.i35.us) #23
  %.not41.us = icmp eq i64 %i.ae, 0
end_hunk_3
begin_hunk_4_@CALLER_SETUP_ARG:bb.a
  %i.cg = lshr i32 %i.cf, 16
  br label %vm_ci_flag.exit93

bb.ab:                                            ; preds = %bb.z
  %i.ch = getelementptr i8, ptr %2, i64 24
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !173
  %i.cj = trunc i64 %i.ci to i32
  br label %vm_ci_flag.exit93

vm_ci_flag.exit93:                                ; preds = %bb.aa, %bb.ab
  %.0.i92 = phi i32 [ %i.cg, %bb.aa ], [ %i.cj, %bb.ab ]
  %i.ck = and i32 %.0.i92, 32
  %.not73 = icmp eq i32 %i.ck, 0
  br i1 %.not73, label %bb.ac, label %rbimpl_RB_TYPE_P_fastpath.exit79.thread

bb.ac:                                            ; preds = %vm_ci_flag.exit93
  %i.cl = load i32, ptr %i.l, align 8, !tbaa !230 ; 2 uses
  %i.cm = icmp sgt i32 %i.cl, 0
  br i1 %i.cm, label %bb.ad, label %rbimpl_RB_TYPE_P_fastpath.exit79.thread

bb.ad:                                            ; preds = %bb.ac
  %i.cn = load ptr, ptr %i.j, align 8, !tbaa !73
  %i.co = getelementptr i8, ptr %i.cn, i64 -8     ; 3 uses
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !11 ; 5 uses
  %i.cq = icmp eq i64 %i.cp, 0
  %i.cr = and i64 %i.cp, 7
  %i.cs = icmp ne i64 %i.cr, 0
  %i.ct = or i1 %i.cq, %i.cs
  br i1 %i.ct, label %rbimpl_RB_TYPE_P_fastpath.exit79.thread, label %rbimpl_RB_TYPE_P_fastpath.exit

rbimpl_RB_TYPE_P_fastpath.exit:                   ; preds = %bb.ad
  %i.cu = inttoptr i64 %i.cp to ptr
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !77 ; 3 uses
  %i.cw = and i64 %i.cv, 8223
  %or.cond120.not = icmp eq i64 %i.cw, 8200
  br i1 %or.cond120.not, label %bb.ae, label %rbimpl_RB_TYPE_P_fastpath.exit79.thread

bb.ae:                                            ; preds = %rbimpl_RB_TYPE_P_fastpath.exit
  %i.cx = and i64 %i.cv, 32768
  %.not.i.i.i94 = icmp eq i64 %i.cx, 0
  br i1 %.not.i.i.i94, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.cy = lshr i64 %i.cv, 16
  %i.cz = and i64 %i.cy, 15
  br label %RHASH_EMPTY_P.exit96

bb.ag:                                            ; preds = %bb.ae
  %i.da = add i64 %i.cp, 24
  %i.db = inttoptr i64 %i.da to ptr
  %i.dc = getelementptr i8, ptr %i.db, i64 16
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !315
  br label %RHASH_EMPTY_P.exit96

RHASH_EMPTY_P.exit96:                             ; preds = %bb.af, %bb.ag
  %.0.i.i95 = phi i64 [ %i.cz, %bb.af ], [ %i.dd, %bb.ag ]
  %i.de = icmp eq i64 %.0.i.i95, 0
  br i1 %i.de, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %RHASH_EMPTY_P.exit96
  %i.df = add nsw i32 %i.cl, -1
  store i32 %i.df, ptr %i.l, align 8, !tbaa !230
  store ptr %i.co, ptr %i.j, align 8, !tbaa !73
  br label %rbimpl_RB_TYPE_P_fastpath.exit79.thread

bb.ai:                                            ; preds = %RHASH_EMPTY_P.exit96
  %i.dg = tail call i64 @rb_hash_dup(i64 noundef %i.cp) #23
  store i64 %i.dg, ptr %i.co, align 8, !tbaa !11
  %i.dh = getelementptr i8, ptr %1, i64 36
  store i8 1, ptr %i.dh, align 4, !tbaa !231
  br label %rbimpl_RB_TYPE_P_fastpath.exit79.thread

vm_ci_flag.exit99:                                ; preds = %vm_ci_flag.exit
  %i.di = and i64 %i.a, 4194304
  %.not67 = icmp eq i64 %i.di, 0
  br i1 %.not67, label %bb.ap, label %bb.aj, !prof !72

vm_ci_flag.exit99.thread:                         ; preds = %vm_ci_flag.exit.thread
  %i.dj = and i64 %i.d, 64
  %.not67112 = icmp eq i64 %i.dj, 0
  br i1 %.not67112, label %.thread113, label %bb.aj, !prof !72

bb.aj:                                            ; preds = %vm_ci_flag.exit99.thread, %vm_ci_flag.exit99
  %i.dk = getelementptr i8, ptr %0, i64 8         ; 2 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !73
  %i.dm = getelementptr i8, ptr %i.dl, i64 -8     ; 3 uses
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !11
  %i.do = tail call fastcc i64 @vm_caller_setup_keyword_hash(ptr noundef %2, i64 noundef %i.dn) ; 4 uses
  %i.dp = icmp eq i64 %i.do, 4
  br i1 %i.dp, label %bb.an, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dq = inttoptr i64 %i.do to ptr
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !77 ; 2 uses
  %i.ds = and i64 %i.dr, 32768
  %.not.i.i.i100 = icmp eq i64 %i.ds, 0
  br i1 %.not.i.i.i100, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.dt = lshr i64 %i.dr, 16
  %i.du = and i64 %i.dt, 15
  br label %RHASH_EMPTY_P.exit102

bb.am:                                            ; preds = %bb.ak
  %i.dv = add i64 %i.do, 24
  %i.dw = inttoptr i64 %i.dv to ptr
  %i.dx = getelementptr i8, ptr %i.dw, i64 16
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !315
  br label %RHASH_EMPTY_P.exit102

RHASH_EMPTY_P.exit102:                            ; preds = %bb.al, %bb.am
  %.0.i.i101 = phi i64 [ %i.du, %bb.al ], [ %i.dy, %bb.am ]
  %i.dz = icmp eq i64 %.0.i.i101, 0
  br i1 %i.dz, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %RHASH_EMPTY_P.exit102, %bb.aj
  store ptr %i.dm, ptr %i.dk, align 8, !tbaa !73
  %i.ea = getelementptr i8, ptr %1, i64 32        ; 2 uses
  %i.eb = load i32, ptr %i.ea, align 8, !tbaa !230
  %i.ec = add i32 %i.eb, -1
  store i32 %i.ec, ptr %i.ea, align 8, !tbaa !230
  %i.ed = getelementptr i8, ptr %1, i64 36
  store i8 0, ptr %i.ed, align 4, !tbaa !231
  br label %rbimpl_RB_TYPE_P_fastpath.exit79.thread

bb.ao:                                            ; preds = %RHASH_EMPTY_P.exit102
  store i64 %i.do, ptr %i.dm, align 8, !tbaa !11
  br label %rbimpl_RB_TYPE_P_fastpath.exit79.thread

bb.ap:                                            ; preds = %vm_ci_flag.exit99
  %i.ee = trunc i64 %i.a to i32
  %i.ef = lshr i32 %i.ee, 16
  br label %vm_ci_flag.exit105

.thread113:                                       ; preds = %vm_ci_flag.exit99.thread
  %i.eg = trunc i64 %i.d to i32
  br label %vm_ci_flag.exit105

vm_ci_flag.exit105:                               ; preds = %bb.ap, %.thread113
  %.0.i104 = phi i32 [ %i.ef, %bb.ap ], [ %i.eg, %.thread113 ]
  %i.eh = and i32 %.0.i104, 32
  %.not68 = icmp eq i32 %i.eh, 0
  br i1 %.not68, label %rbimpl_RB_TYPE_P_fastpath.exit79.thread, label %bb.aq, !prof !72

bb.aq:                                            ; preds = %vm_ci_flag.exit105
  tail call fastcc void @vm_caller_setup_arg_kw(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  br label %rbimpl_RB_TYPE_P_fastpath.exit79.thread

rbimpl_RB_TYPE_P_fastpath.exit79.thread:          ; preds = %bb.ad, %bb.u, %bb.an, %bb.ao, %RHASH_EMPTY_P.exit90, %bb.y, %rbimpl_RB_TYPE_P_fastpath.exit79, %rb_array_len.exit, %vm_ci_flag.exit86, %bb.ah, %bb.ai, %rbimpl_RB_TYPE_P_fastpath.exit, %bb.ac, %vm_ci_flag.exit93, %bb.c, %bb.k, %bb.j, %bb.i, %bb.l, %bb.aq, %vm_ci_flag.exit105
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @vm_call_attrset_direct(ptr noundef captures(none) %0, ptr noundef %1, i64 noundef %2) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !73   ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 -8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !11   ; 10 uses
  %i.e = getelementptr i8, ptr %i.b, i64 -16
  store ptr %i.e, ptr %i.a, align 8, !tbaa !73
  %i.f = getelementptr i8, ptr %1, i64 32
  %i.g = load atomic volatile i64, ptr %i.f monotonic, align 8 ; 4 uses
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %i.g to i32 ; 6 uses
  %.sroa.4.0.extract.shift.i.i = lshr i64 %i.g, 32
  %.sroa.4.0.extract.trunc.i.i = trunc i64 %.sroa.4.0.extract.shift.i.i to i16
  %i.h = add i16 %.sroa.4.0.extract.trunc.i.i, -1 ; 3 uses
  %i.i = getelementptr i8, ptr %1, i64 16
  %.val = load ptr, ptr %i.i, align 8, !tbaa !187
  %i.j = getelementptr i8, ptr %.val, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !83
  %i.l = getelementptr i8, ptr %i.k, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !27   ; 4 uses
  %i.n = icmp ne i64 %2, 0
  %i.o = and i64 %2, 7
  %i.p = icmp eq i64 %i.o, 0
  %.not3.i.i = and i1 %i.n, %i.p
  br i1 %.not3.i.i, label %RB_OBJ_FROZEN.exit.i, label %RB_OBJ_FROZEN.exit.thread.i, !prof !168

RB_OBJ_FROZEN.exit.i:                             ; preds = %bb.a
  %i.q = inttoptr i64 %2 to ptr                   ; 5 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !77   ; 4 uses
  %i.s = and i64 %i.r, 2048
  %.not.i = icmp eq i64 %i.s, 0
  br i1 %.not.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i, label %RB_OBJ_FROZEN.exit.thread.i, !prof !369

RB_OBJ_FROZEN.exit.thread.i:                      ; preds = %RB_OBJ_FROZEN.exit.i, %bb.a
  tail call void @rb_error_frozen_object(i64 noundef %2) #42
  unreachable

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %RB_OBJ_FROZEN.exit.i
  %i.t = and i64 %i.r, 31
  %i.u = icmp ne i64 %i.t, 5
  %i.v = and i64 %i.r, 49152
  %.not8.i = icmp eq i64 %i.v, 0
  %or.cond.i = or i1 %i.u, %.not8.i
  br i1 %or.cond.i, label %rb_check_frozen_inline.exit, label %bb.b, !prof !455

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  tail call void @rb_str_modify(i64 noundef %2) #23
  %.pre = load i64, ptr %i.q, align 8
  br label %rb_check_frozen_inline.exit

rb_check_frozen_inline.exit:                      ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.b
  %i.w = phi i64 [ %i.r, %rbimpl_RB_TYPE_P_fastpath.exit.i ], [ %.pre, %bb.b ] ; 10 uses
  %i.x = and i64 %i.w, 31
  %cond.i = icmp eq i64 %i.x, 1
  %3 = lshr i64 %i.w, 32
  %4 = trunc nuw i64 %3 to i32                    ; 4 uses
  br i1 %cond.i, label %bb.c, label %vm_setivar.exit.thread

bb.c:                                             ; preds = %rb_check_frozen_inline.exit
  %i.y = icmp eq i32 %.sroa.0.0.extract.trunc.i.i, %4
  br i1 %i.y, label %bb.i, label %bb.d, !prof !72

bb.d:                                             ; preds = %bb.c
  %.not.i26 = icmp eq i32 %.sroa.0.0.extract.trunc.i.i, -1
  br i1 %.not.i26, label %vm_setivar.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = xor i32 %4, %.sroa.0.0.extract.trunc.i.i
  %i.aa = and i32 %i.z, 264241152
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %RSHAPE_DIRECT_CHILD_P.exit.i, label %vm_setivar.exit.thread

RSHAPE_DIRECT_CHILD_P.exit.i:                     ; preds = %bb.e
  %i.ac = and i64 %i.g, 524287
  %i.ad = load ptr, ptr @rb_shape_tree, align 8, !tbaa !101
  %i.ae = getelementptr [40 x i8], ptr %i.ad, i64 %i.ac ; 2 uses
  %i.af = getelementptr i8, ptr %i.ae, i64 24
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !106
  %i.ah = and i32 %4, 524287
  %i.ai = icmp eq i32 %i.ag, %i.ah
  br i1 %i.ai, label %bb.f, label %vm_setivar.exit.thread

bb.f:                                             ; preds = %RSHAPE_DIRECT_CHILD_P.exit.i
  %i.aj = getelementptr i8, ptr %i.ae, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !109
  %i.al = icmp eq i64 %i.ak, %i.m
  br i1 %i.al, label %bb.g, label %vm_setivar.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.am = tail call fastcc zeroext i16 @RSHAPE_CAPACITY(i32 noundef %4)
  %i.an = tail call fastcc zeroext i16 @RSHAPE_CAPACITY(i32 noundef %.sroa.0.0.extract.trunc.i.i)
  %i.ao = icmp eq i16 %i.am, %i.an
  br i1 %i.ao, label %bb.h, label %vm_setivar.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.ap = and i64 %i.w, 4294967265
  %i.aq = shl i64 %i.g, 32
  %i.ar = or disjoint i64 %i.ap, %i.aq            ; 2 uses
  store i64 %i.ar, ptr %i.q, align 8, !tbaa !77
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.c
  %i.as = phi i64 [ %i.w, %bb.c ], [ %i.ar, %bb.h ]
  %i.at = and i64 %i.as, 65536
  %.not.i.i = icmp eq i64 %i.at, 0
  %i.au = getelementptr i8, ptr %i.q, i64 16      ; 2 uses
  br i1 %.not.i.i, label %ROBJECT_FIELDS.exit.i, label %bb.j, !prof !72

bb.j:                                             ; preds = %bb.i
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !27
  br label %ROBJECT_FIELDS.exit.i

ROBJECT_FIELDS.exit.i:                            ; preds = %bb.j, %bb.i
  %.0.i.i = phi ptr [ %i.av, %bb.j ], [ %i.au, %bb.i ]
  %i.aw = zext i16 %i.h to i64
  %i.ax = getelementptr [8 x i8], ptr %.0.i.i, i64 %i.aw
  store i64 %i.d, ptr %i.ax, align 8, !tbaa !11
  %i.ay = icmp eq i64 %i.d, 0
  %i.az = and i64 %i.d, 7
  %i.ba = icmp ne i64 %i.az, 0
  %i.bb = or i1 %i.ay, %i.ba
  br i1 %i.bb, label %vm_setivar.exit, label %bb.k

bb.k:                                             ; preds = %ROBJECT_FIELDS.exit.i
  tail call void @rb_gc_writebarrier(i64 noundef %2, i64 noundef %i.d) #23
  br label %vm_setivar.exit

vm_setivar.exit:                                  ; preds = %ROBJECT_FIELDS.exit.i, %bb.k
  %i.bc = icmp eq i64 %i.d, 36
  br i1 %i.bc, label %vm_setivar.exit.vm_setivar.exit.thread_crit_edge, label %bb.o

vm_setivar.exit.vm_setivar.exit.thread_crit_edge: ; preds = %vm_setivar.exit
  %.pre7 = load i64, ptr %i.q, align 8, !tbaa !77
  br label %vm_setivar.exit.thread

vm_setivar.exit.thread:                           ; preds = %vm_setivar.exit.vm_setivar.exit.thread_crit_edge, %bb.e, %bb.d, %bb.f, %bb.g, %RSHAPE_DIRECT_CHILD_P.exit.i, %rb_check_frozen_inline.exit
  %i.bd = phi i64 [ %.pre7, %vm_setivar.exit.vm_setivar.exit.thread_crit_edge ], [ %i.w, %bb.e ], [ %i.w, %bb.d ], [ %i.w, %bb.f ], [ %i.w, %bb.g ], [ %i.w, %RSHAPE_DIRECT_CHILD_P.exit.i ], [ %i.w, %rb_check_frozen_inline.exit ]
  %i.be = trunc i64 %i.bd to i32
  %i.bf = and i32 %i.be, 31
  switch i32 %i.bf, label %bb.m [
    i32 1, label %bb.n
    i32 2, label %bb.l
    i32 3, label %bb.l
  ]

bb.l:                                             ; preds = %vm_setivar.exit.thread, %vm_setivar.exit.thread
  %i.bg = tail call fastcc i64 @vm_setivar_class(i64 noundef %2, i64 noundef %i.m, i64 noundef %i.d, i32 noundef %.sroa.0.0.extract.trunc.i.i, i16 noundef zeroext %i.h) ; 2 uses
  %i.bh = icmp eq i64 %i.bg, 36
  br i1 %i.bh, label %bb.n, label %bb.o

bb.m:                                             ; preds = %vm_setivar.exit.thread
  %i.bi = tail call fastcc i64 @vm_setivar_default(i64 noundef %2, i64 noundef %i.m, i64 noundef %i.d, i32 noundef %.sroa.0.0.extract.trunc.i.i, i16 noundef zeroext %i.h) ; 2 uses
  %i.bj = icmp eq i64 %i.bi, 36
  br i1 %i.bj, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m, %bb.l, %vm_setivar.exit.thread
  %i.bk = tail call fastcc i64 @vm_setivar_slowpath_attr(i64 noundef %2, i64 noundef %i.m, i64 noundef %i.d, ptr noundef nonnull %1) ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %vm_setivar.exit, %bb.n, %bb.m, %bb.l
  %.025 = phi i64 [ %i.bi, %bb.m ], [ %i.bg, %bb.l ], [ %i.d, %bb.n ], [ %i.d, %vm_setivar.exit ]
  ret i64 %.025
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @vm_call_attrset(ptr readnone captures(none) %0, ptr noundef captures(none) %1, ptr noundef readonly captures(none) %2) #2 {
bb.a:
  %i.a = getelementptr i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !233
  %i.c = getelementptr i8, ptr %2, i64 24
  %i.d = load i64, ptr %i.c, align 8, !tbaa !229
  %i.e = tail call fastcc i64 @vm_call_attrset_direct(ptr noundef %1, ptr noundef %i.b, i64 noundef %i.d)
  ret i64 %i.e
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @vm_call_ivar(ptr readnone captures(none) %0, ptr noundef captures(none) %1, ptr noundef readonly captures(none) %2) #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i16, align 2                      ; 6 uses
  %i.d = getelementptr i8, ptr %2, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !233  ; 6 uses
  %i.f = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !73
  %i.h = getelementptr i8, ptr %i.g, i64 -8
  store ptr %i.h, ptr %i.f, align 8, !tbaa !73
  %i.i = getelementptr i8, ptr %2, i64 24
  %i.j = load i64, ptr %i.i, align 8, !tbaa !229  ; 7 uses
  %i.k = getelementptr i8, ptr %i.e, i64 16
  %.val = load ptr, ptr %i.k, align 8, !tbaa !187
  %i.l = getelementptr i8, ptr %.val, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !83
  %i.n = getelementptr i8, ptr %i.m, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !27   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.p = icmp eq i64 %i.j, 0
  %i.q = and i64 %i.j, 7
  %i.r = icmp ne i64 %i.q, 0
  %i.s = or i1 %i.p, %i.r
  br i1 %i.s, label %vm_getivar.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.t = inttoptr i64 %i.j to ptr                 ; 5 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !77   ; 2 uses
  %i.v = trunc i64 %i.u to i32
  %i.w = and i32 %i.v, 31
  switch i32 %i.w, label %bb.h [
    i32 1, label %.thread
    i32 2, label %bb.c
    i32 3, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.x = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !90
  %.not.i = icmp eq ptr %i.x, null
  br i1 %.not.i, label %rb_ractor_main_p.exit, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i

rb_ractor_main_p.exit:                            ; preds = %bb.c
  %i.y = tail call zeroext i1 @rb_ractor_main_p_() #23
  br i1 %i.y, label %rb_ractor_main_p.exit.RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i_crit_edge, label %bb.d, !prof !91

rb_ractor_main_p.exit.RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i_crit_edge: ; preds = %rb_ractor_main_p.exit
  %.pre = load i64, ptr %i.t, align 8, !tbaa !77
  br label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i

bb.d:                                             ; preds = %rb_ractor_main_p.exit
  %i.z = tail call i64 @rb_attr_get(i64 noundef %i.j, i64 noundef %i.o) #23
  br label %vm_getivar.exit

RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i:        ; preds = %rb_ractor_main_p.exit.RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i_crit_edge, %bb.c
  %i.aa = phi i64 [ %.pre, %rb_ractor_main_p.exit.RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i_crit_edge ], [ %i.u, %bb.c ]
  %i.ab = and i64 %i.aa, 16384
  %.not10.i.i = icmp eq i64 %i.ab, 0
  br i1 %.not10.i.i, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i, label %bb.e, !prof !110

bb.e:                                             ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i
  %i.ac = getelementptr i8, ptr %i.t, i64 24
  br label %RCLASS_WRITABLE_FIELDS_OBJ.exit

RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i: ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i
  %i.ad = tail call ptr @rb_current_box() #23     ; 3 uses
  %.not.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i, label %.split.i.i, label %bb.f

.split.i.i:                                       ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i
  %i.ae = tail call fastcc ptr @RCLASS_EXT_WRITABLE_LOOKUP(i64 noundef %i.j, ptr noundef null)
  br label %RCLASS_WRITABLE_FIELDS_OBJ.exit

bb.f:                                             ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i
  %i.af = getelementptr i8, ptr %i.ad, i64 128
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !111, !range !114, !noundef !64
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %.split7.i.i, label %bb.g

.split7.i.i:                                      ; preds = %bb.f
  %i.ai = tail call fastcc ptr @RCLASS_EXT_WRITABLE_LOOKUP(i64 noundef %i.j, ptr noundef nonnull %i.ad)
  br label %RCLASS_WRITABLE_FIELDS_OBJ.exit

bb.g:                                             ; preds = %bb.f
  %i.aj = getelementptr i8, ptr %i.t, i64 24
  br label %RCLASS_WRITABLE_FIELDS_OBJ.exit

RCLASS_WRITABLE_FIELDS_OBJ.exit:                  ; preds = %bb.e, %.split.i.i, %.split7.i.i, %bb.g
  %.0.i.i = phi ptr [ %i.ac, %bb.e ], [ %i.aj, %bb.g ], [ %i.ae, %.split.i.i ], [ %i.ai, %.split7.i.i ]
  %i.ak = getelementptr i8, ptr %.0.i.i, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !115
  br label %bb.i

bb.h:                                             ; preds = %bb.b
  %i.am = tail call i64 @rb_obj_fields(i64 noundef %i.j, i64 noundef %i.o) #23
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %RCLASS_WRITABLE_FIELDS_OBJ.exit
  %.046.i = phi i64 [ %i.am, %bb.h ], [ %i.al, %RCLASS_WRITABLE_FIELDS_OBJ.exit ] ; 2 uses
  %.not50.i = icmp eq i64 %.046.i, 0
  br i1 %.not50.i, label %vm_getivar.exit, label %..thread_crit_edge

..thread_crit_edge:                               ; preds = %bb.i
  %.phi.trans.insert = inttoptr i64 %.046.i to ptr
  br label %.thread

.thread:                                          ; preds = %..thread_crit_edge, %bb.b
  %.pre-phi = phi ptr [ %.phi.trans.insert, %..thread_crit_edge ], [ %i.t, %bb.b ] ; 3 uses
  store i64 36, ptr %i.a, align 8, !tbaa !11
  %.shift.i.i = getelementptr inbounds nuw i8, ptr %.pre-phi, i64 4
  %3 = load i32, ptr %.shift.i.i, align 4, !tbaa !77 ; 2 uses
  %i.an = and i32 %3, -62914561                   ; 3 uses
  %4 = load i64, ptr %.pre-phi, align 8, !tbaa !77
  %i.ao = and i64 %4, 65536
  %.not5.i = icmp eq i64 %i.ao, 0
  %i.ap = getelementptr i8, ptr %.pre-phi, i64 16 ; 2 uses
  br i1 %.not5.i, label %rb_imemo_fields_ptr.exit, label %bb.j, !prof !72

bb.j:                                             ; preds = %.thread
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !27
  br label %rb_imemo_fields_ptr.exit

rb_imemo_fields_ptr.exit:                         ; preds = %.thread, %bb.j
  %.0.i7 = phi ptr [ %i.aq, %bb.j ], [ %i.ap, %.thread ] ; 3 uses
  %i.ar = getelementptr i8, ptr %i.e, i64 32      ; 3 uses
  %i.as = load atomic volatile i64, ptr %i.ar monotonic, align 8 ; 2 uses
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %i.as to i32 ; 3 uses
  %.sroa.4.0.extract.shift.i.i = lshr i64 %i.as, 32
  %.sroa.4.0.extract.trunc.i.i = trunc i64 %.sroa.4.0.extract.shift.i.i to i16 ; 2 uses
  store i32 %.sroa.0.0.extract.trunc.i.i, ptr %i.b, align 4, !tbaa !7
  %i.at = add i16 %.sroa.4.0.extract.trunc.i.i, -1 ; 2 uses
  store i16 %i.at, ptr %i.c, align 2, !tbaa !120
  %i.au = icmp eq i32 %i.an, %.sroa.0.0.extract.trunc.i.i
  br i1 %i.au, label %bb.k, label %bb.m, !prof !72

bb.k:                                             ; preds = %rb_imemo_fields_ptr.exit
  %i.av = icmp eq i16 %.sroa.4.0.extract.trunc.i.i, 0
  br i1 %i.av, label %vm_getivar.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aw = zext i16 %i.at to i64
  %i.ax = getelementptr [8 x i8], ptr %.0.i7, i64 %i.aw
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !11
  br label %vm_getivar.exit

bb.m:                                             ; preds = %rb_imemo_fields_ptr.exit
  %i.az = and i32 %3, 134217728
  %.not = icmp eq i32 %i.az, 0
  br i1 %.not, label %bb.o, label %bb.n, !prof !72

bb.n:                                             ; preds = %bb.m
  %i.ba = call i32 @rb_st_lookup(ptr noundef %.0.i7, i64 noundef %i.o, ptr noundef nonnull %i.a) #23
  %.not53.i = icmp eq i32 %i.ba, 0
  %.pre15 = load i64, ptr %i.a, align 8
  %spec.select = select i1 %.not53.i, i64 4, i64 %.pre15
  br label %vm_getivar.exit

bb.o:                                             ; preds = %bb.m
  %i.bb = call zeroext i1 @rb_shape_get_iv_index_with_hint(i32 noundef %i.an, i64 noundef %i.o, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b) #23
  br i1 %i.bb, label %bb.p, label %bb.u

bb.p:                                             ; preds = %bb.o
  %i.bc = load i32, ptr %i.b, align 4, !tbaa !7   ; 2 uses
  %.not52.i = icmp eq i32 %i.bc, %.sroa.0.0.extract.trunc.i.i
  br i1 %.not52.i, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bd = load i64, ptr %i.e, align 8, !tbaa !77  ; 2 uses
  %i.be = and i64 %i.bd, 1048576
  %.not.i8 = icmp eq i64 %i.be, 0
  br i1 %.not.i8, label %bb.r, label %vm_cc_attr_index_set.exit

bb.r:                                             ; preds = %bb.q
  %i.bf = load i16, ptr %i.c, align 2, !tbaa !120
  %i.bg = add i16 %i.bf, 1
  %.sroa.4.0.insert.ext.i.i = zext i16 %i.bg to i64
  %.sroa.4.0.insert.shift.i.i = shl nuw nsw i64 %.sroa.4.0.insert.ext.i.i, 32
  %.sroa.0.0.insert.ext.i.i = zext i32 %i.bc to i64
  %.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.4.0.insert.shift.i.i, %.sroa.0.0.insert.ext.i.i
  %i.bh = or i64 %i.bd, 65536
  store i64 %i.bh, ptr %i.e, align 8, !tbaa !11
  br label %vm_cc_attr_index_set.exit

vm_cc_attr_index_set.exit:                        ; preds = %bb.q, %bb.r
  %.sink.i = phi i64 [ %.sroa.0.0.insert.insert.i.i, %bb.r ], [ 4294967295, %bb.q ]
  store i64 %.sink.i, ptr %i.ar, align 8, !tbaa !11
  br label %bb.s

bb.s:                                             ; preds = %vm_cc_attr_index_set.exit, %bb.p
  %i.bi = load i16, ptr %i.c, align 2, !tbaa !120 ; 2 uses
  %i.bj = icmp eq i16 %i.bi, -1
  br i1 %i.bj, label %vm_getivar.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bk = zext i16 %i.bi to i64
  %i.bl = getelementptr [8 x i8], ptr %.0.i7, i64 %i.bk
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !11
  br label %vm_getivar.exit

bb.u:                                             ; preds = %bb.o
  %i.bn = load i64, ptr %i.e, align 8, !tbaa !77  ; 2 uses
  %i.bo = and i64 %i.bn, 1048576
  %.not.i.i9 = icmp eq i64 %i.bo, 0
  br i1 %.not.i.i9, label %bb.v, label %vm_cc_attr_index_initialize.exit

bb.v:                                             ; preds = %bb.u
  %.sroa.0.0.insert.ext.i.i.i = zext i32 %i.an to i64
  %i.bp = or i64 %i.bn, 65536
  store i64 %i.bp, ptr %i.e, align 8, !tbaa !11
  br label %vm_cc_attr_index_initialize.exit

vm_cc_attr_index_initialize.exit:                 ; preds = %bb.u, %bb.v
  %.sink.i.i = phi i64 [ %.sroa.0.0.insert.ext.i.i.i, %bb.v ], [ 4294967295, %bb.u ]
  store i64 %.sink.i.i, ptr %i.ar, align 8, !tbaa !11
  br label %vm_getivar.exit

vm_getivar.exit:                                  ; preds = %bb.n, %bb.s, %bb.l, %bb.t, %vm_cc_attr_index_initialize.exit, %bb.a, %bb.i, %bb.k, %bb.d
  %.0.i = phi i64 [ %i.z, %bb.d ], [ 4, %bb.i ], [ 4, %bb.k ], [ 4, %bb.a ], [ 4, %bb.s ], [ 4, %vm_cc_attr_index_initialize.exit ], [ %i.bm, %bb.t ], [ %spec.select, %bb.n ], [ %i.ay, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret i64 %.0.i
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @vm_call_bmethod(ptr noundef %0, ptr noundef captures(address) %1, ptr noundef captures(none) %2) #2 {
bb.a:
  %i.a = getelementptr i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !233  ; 3 uses
  %i.c = getelementptr i8, ptr %i.b, i64 16
  %.val = load ptr, ptr %i.c, align 8, !tbaa !187
  %i.d = getelementptr i8, ptr %.val, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !83
  %i.f = getelementptr i8, ptr %i.e, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.pn.in.in = phi ptr [ %i.f, %bb.a ], [ %.0, %bb.b ]
  %.pn.in = load i64, ptr %.pn.in.in, align 8, !tbaa !27
  %.pn = inttoptr i64 %.pn.in to ptr
  %.0.in = getelementptr i8, ptr %.pn, i64 32
  %.0 = load ptr, ptr %.0.in, align 8, !tbaa !176 ; 2 uses
  %i.g = getelementptr i8, ptr %.0, i64 24
  %.0.val17 = load i32, ptr %i.g, align 8, !tbaa !458
  switch i32 %.0.val17, label %bb.d [
    i32 3, label %bb.b
    i32 0, label %bb.c
  ], !llvm.loop !695

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %i.b, i64 24
  store ptr @vm_call_iseq_bmethod, ptr %i.h, align 8, !tbaa !176
  %i.i = tail call i64 @vm_call_iseq_bmethod(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2) ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.j = getelementptr i8, ptr %i.b, i64 24
  store ptr @vm_call_noniseq_bmethod, ptr %i.j, align 8, !tbaa !176
  %i.k = tail call i64 @vm_call_noniseq_bmethod(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.016 = phi i64 [ 36, %bb.c ], [ %i.k, %bb.d ]
  ret i64 %.016
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @vm_call_alias(ptr noundef %0, ptr noundef %1, ptr noundef %2) #2 {
bb.a:
  %3 = alloca %struct.rb_callcache, align 8       ; 6 uses
  store i64 3190810, ptr %3, align 8, !tbaa !442
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 36, ptr %i.a, align 8, !tbaa !185
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.c = getelementptr i8, ptr %2, i64 8          ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !233
  %i.e = getelementptr i8, ptr %i.d, i64 16
  %.val = load ptr, ptr %i.e, align 8, !tbaa !187
  %i.f = tail call fastcc ptr @aliased_callable_method_entry(ptr noundef %.val)
  store ptr %i.f, ptr %i.b, align 8, !tbaa !187
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr @vm_call_general, ptr %i.g, align 8, !tbaa !234
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 0, ptr %i.h, align 8, !tbaa !443
  store ptr %3, ptr %i.c, align 8, !tbaa !233
  %i.i = call fastcc i64 @vm_call_method_each_type(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  ret i64 %i.i
}

; Function Attrs: noinline nounwind sspstrong uwtable
define internal fastcc i64 @vm_call_optimized(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef captures(none) %4) unnamed_addr #30 {
bb.a:
  %5 = alloca %struct.rb_trace_arg_struct, align 8 ; 13 uses
  %6 = alloca %struct.rb_trace_arg_struct, align 8 ; 13 uses
  %7 = alloca %struct.rb_trace_arg_struct, align 8 ; 13 uses
  %8 = alloca %struct.rb_trace_arg_struct, align 8 ; 13 uses
  %i.a = getelementptr i8, ptr %4, i64 16         ; 5 uses
  %.val91 = load ptr, ptr %i.a, align 8, !tbaa !187
  %i.b = getelementptr i8, ptr %.val91, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !83
  %i.d = getelementptr i8, ptr %i.c, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !27   ; 2 uses
  switch i32 %i.e, label %bb.av [
    i32 0, label %bb.b
    i32 1, label %bb.m
    i32 2, label %bb.n
    i32 3, label %bb.o
    i32 4, label %bb.af
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %4, i64 24
  store ptr @vm_call_opt_send, ptr %i.f, align 8, !tbaa !176
  %i.g = load ptr, ptr %2, align 8, !tbaa !226
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !225  ; 4 uses
  %i.i = ptrtoint ptr %i.h to i64                 ; 2 uses
  %.not.i.i.i = trunc i64 %i.i to i1
  br i1 %.not.i.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = trunc i64 %i.i to i32
  %i.k = lshr i32 %i.j, 16
  br label %vm_ci_flag.exit.i

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr i8, ptr %i.h, i64 24
  %i.m = load i64, ptr %i.l, align 8, !tbaa !173
  %i.n = trunc i64 %i.m to i32
  br label %vm_ci_flag.exit.i

vm_ci_flag.exit.i:                                ; preds = %bb.d, %bb.c
  %.0.i.i = phi i32 [ %i.k, %bb.c ], [ %i.n, %bb.d ] ; 4 uses
  %i.o = and i32 %.0.i.i, 8192
  %.not.i = icmp eq i32 %i.o, 0
  br i1 %.not.i, label %bb.e, label %.critedge.i, !prof !72

bb.e:                                             ; preds = %vm_ci_flag.exit.i
  %i.p = and i32 %.0.i.i, 16
  %.not20.i = icmp eq i32 %i.p, 0
  br i1 %.not20.i, label %bb.f, label %.critedge28.i

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr i8, ptr %2, i64 32
  %i.r = load i32, ptr %i.q, align 8, !tbaa !230  ; 3 uses
  %i.s = icmp ne i32 %i.r, 1
  %i.t = and i32 %.0.i.i, 65                      ; 2 uses
  %.not21.i = icmp eq i32 %i.t, 0
  %or.cond.i = or i1 %.not21.i, %i.s
  br i1 %or.cond.i, label %bb.g, label %.critedge.i

bb.g:                                             ; preds = %bb.f
  %i.u = icmp ne i32 %i.r, 2
  %i.v = icmp ne i32 %i.t, 65
  %or.cond26.i = or i1 %i.v, %i.u
  br i1 %or.cond26.i, label %bb.h, label %.critedge.i

bb.h:                                             ; preds = %bb.g
  %i.w = and i32 %.0.i.i, 32
  %.not24.i = icmp eq i32 %i.w, 0
  br i1 %.not24.i, label %.critedge28.i, label %vm_ci_kwarg.exit.i

vm_ci_kwarg.exit.i:                               ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "align"(ptr %i.h, i64 2) ]
  %i.x = getelementptr i8, ptr %i.h, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !238
  %i.z = load i32, ptr %i.y, align 8, !tbaa !7
  %i.aa = icmp eq i32 %i.z, %i.r
  br i1 %i.aa, label %.critedge.i, label %.critedge28.i, !prof !177

.critedge.i:                                      ; preds = %vm_ci_kwarg.exit.i, %bb.g, %bb.f, %vm_ci_flag.exit.i
  %i.ab = getelementptr i8, ptr %2, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !233
  %i.ad = getelementptr i8, ptr %i.ac, i64 24
  store ptr @vm_call_opt_send_complex, ptr %i.ad, align 8, !tbaa !176
  %i.ae = tail call i64 @vm_call_opt_send_complex(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2), !inline_history !710
  br label %vm_call_opt_send.exit

.critedge28.i:                                    ; preds = %vm_ci_kwarg.exit.i, %bb.h, %bb.e
  %i.af = getelementptr i8, ptr %2, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !233
  %i.ah = getelementptr i8, ptr %i.ag, i64 24
  store ptr @vm_call_opt_send_simple, ptr %i.ah, align 8, !tbaa !176
  %i.ai = load ptr, ptr %2, align 8, !tbaa !226
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !225 ; 3 uses
  %i.ak = ptrtoint ptr %i.aj to i64               ; 2 uses
  %.not.i.i31.i = trunc i64 %i.ak to i1
  br i1 %.not.i.i31.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.critedge28.i
  %i.al = trunc i64 %i.ak to i32
  %i.am = lshr i32 %i.al, 16
  br label %vm_ci_flag.exit33.i

bb.j:                                             ; preds = %.critedge28.i
  %i.an = getelementptr i8, ptr %i.aj, i64 24
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !173
  %i.ap = trunc i64 %i.ao to i32
  br label %vm_ci_flag.exit33.i

vm_ci_flag.exit33.i:                              ; preds = %bb.j, %bb.i
  %.0.i32.i = phi i32 [ %i.am, %bb.i ], [ %i.ap, %bb.j ]
  %i.aq = or i32 %.0.i32.i, 4
  %i.ar = getelementptr i8, ptr %2, i64 32        ; 3 uses
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !230 ; 3 uses
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %bb.k, label %bb.l

end_hunk_4
begin_hunk_5_@vm_caller_setup_arg_splat:bb.a
  %wide.load60 = load <2 x i64>, ptr %i.bh, align 8, !tbaa !11
  %i.bi = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !11
  store <2 x i64> %wide.load60, ptr %i.bi, align 8, !tbaa !11
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bj = icmp eq i64 %index.next, %n.vec
  br i1 %i.bj, label %middle.block, label %vector.body, !llvm.loop !806

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.046, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader63

.lr.ph.preheader63:                               ; preds = %.lr.ph.preheader, %middle.block
  %.ph = phi ptr [ %i.ax, %.lr.ph.preheader ], [ %i.be, %middle.block ] ; 2 uses
  %.04555.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 4 uses
  %i.bk = sub nsw i64 %.046, %.04555.ph
  %xtraiter = and i64 %i.bk, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader63, %.lr.ph.prol
  %i.bl = phi ptr [ %i.bo, %.lr.ph.prol ], [ %.ph, %.lr.ph.preheader63 ] ; 2 uses
  %.04555.prol = phi i64 [ %i.bp, %.lr.ph.prol ], [ %.04555.ph, %.lr.ph.preheader63 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader63 ]
  %i.bm = getelementptr [8 x i8], ptr %.0.i53, i64 %.04555.prol
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !11
  %i.bo = getelementptr i8, ptr %i.bl, i64 8      ; 3 uses
  store i64 %i.bn, ptr %i.bl, align 8, !tbaa !11
  %i.bp = add nuw nsw i64 %.04555.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !807

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader63
  %.lcssa64.unr = phi ptr [ poison, %.lr.ph.preheader63 ], [ %i.bo, %.lr.ph.prol ]
  %.unr = phi ptr [ %.ph, %.lr.ph.preheader63 ], [ %i.bo, %.lr.ph.prol ]
  %.04555.unr = phi i64 [ %.04555.ph, %.lr.ph.preheader63 ], [ %i.bp, %.lr.ph.prol ]
  %i.bq = sub nsw i64 %.04555.ph, %.046
  %i.br = icmp ugt i64 %i.bq, -8
  br i1 %i.br, label %._crit_edge, label %.lr.ph

bb.j:                                             ; preds = %bb.i
  tail call fastcc void @vm_stackoverflow() #58
  unreachable

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %i.bs = phi ptr [ %i.cx, %.lr.ph ], [ %.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %.04555 = phi i64 [ %i.cy, %.lr.ph ], [ %.04555.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %i.bt = getelementptr [8 x i8], ptr %.0.i53, i64 %.04555
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !11
  %i.bv = getelementptr i8, ptr %i.bs, i64 8
  store i64 %i.bu, ptr %i.bs, align 8, !tbaa !11
  %i.bw = getelementptr [8 x i8], ptr %.0.i53, i64 %.04555
  %i.bx = getelementptr i8, ptr %i.bw, i64 8
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !11
  %i.bz = getelementptr i8, ptr %i.bs, i64 16
  store i64 %i.by, ptr %i.bv, align 8, !tbaa !11
  %i.ca = getelementptr [8 x i8], ptr %.0.i53, i64 %.04555
  %i.cb = getelementptr i8, ptr %i.ca, i64 16
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !11
  %i.cd = getelementptr i8, ptr %i.bs, i64 24
  store i64 %i.cc, ptr %i.bz, align 8, !tbaa !11
  %i.ce = getelementptr [8 x i8], ptr %.0.i53, i64 %.04555
  %i.cf = getelementptr i8, ptr %i.ce, i64 24
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !11
  %i.ch = getelementptr i8, ptr %i.bs, i64 32
  store i64 %i.cg, ptr %i.cd, align 8, !tbaa !11
  %i.ci = getelementptr [8 x i8], ptr %.0.i53, i64 %.04555
  %i.cj = getelementptr i8, ptr %i.ci, i64 32
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !11
  %i.cl = getelementptr i8, ptr %i.bs, i64 40
  store i64 %i.ck, ptr %i.ch, align 8, !tbaa !11
  %i.cm = getelementptr [8 x i8], ptr %.0.i53, i64 %.04555
  %i.cn = getelementptr i8, ptr %i.cm, i64 40
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !11
  %i.cp = getelementptr i8, ptr %i.bs, i64 48
  store i64 %i.co, ptr %i.cl, align 8, !tbaa !11
  %i.cq = getelementptr [8 x i8], ptr %.0.i53, i64 %.04555
  %i.cr = getelementptr i8, ptr %i.cq, i64 48
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !11
  %i.ct = getelementptr i8, ptr %i.bs, i64 56
  store i64 %i.cs, ptr %i.cp, align 8, !tbaa !11
  %i.cu = getelementptr [8 x i8], ptr %.0.i53, i64 %.04555
  %i.cv = getelementptr i8, ptr %i.cu, i64 56
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !11
  %i.cx = getelementptr i8, ptr %i.bs, i64 64     ; 2 uses
  store i64 %i.cw, ptr %i.ct, align 8, !tbaa !11
  %i.cy = add nuw nsw i64 %.04555, 8              ; 2 uses
  %exitcond.not.7 = icmp eq i64 %i.cy, %.046
  br i1 %exitcond.not.7, label %._crit_edge, label %.lr.ph, !llvm.loop !808

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block
  %.lcssa = phi ptr [ %i.be, %middle.block ], [ %.lcssa64.unr, %.lr.ph.prol.loopexit ], [ %i.cx, %.lr.ph ]
  store ptr %.lcssa, ptr %i.aw, align 8, !tbaa !73
  %i.cz = trunc i64 %.046 to i32
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge, %.preheader
  %.045.lcssa = phi i32 [ %i.cz, %._crit_edge ], [ 0, %.preheader ]
  %i.da = add i32 %i.av, %.045.lcssa
  store i32 %i.da, ptr %i.n, align 8, !tbaa !230
  br label %bb.l

bb.l:                                             ; preds = %bb.e, %bb.k, %bb.a
  %.2 = phi i1 [ false, %bb.a ], [ false, %bb.e ], [ %or.cond, %bb.k ]
  ret i1 %.2
}

declare i64 @rb_ary_last(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc void @vm_caller_setup_arg_kw(ptr noundef captures(none) %0, ptr noundef captures(none) %1, ptr noundef readonly captures(none) %2) unnamed_addr #11 {
vm_ci_kwarg.exit23:
  call void @llvm.assume(i1 true) [ "align"(ptr %2, i64 2) ]
  %i.a = getelementptr i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !238  ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 8
  %i.d = load i32, ptr %i.b, align 8, !tbaa !7    ; 4 uses
  %i.e = sext i32 %i.d to i64                     ; 2 uses
  %i.f = tail call i64 @rb_hash_new_with_size(i64 noundef %i.e) #23 ; 2 uses
  %i.g = getelementptr i8, ptr %0, i64 8          ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !73   ; 3 uses
  %i.i = icmp sgt i32 %i.d, 0
  %i.j = sub nsw i64 0, %i.e                      ; 2 uses
  br i1 %i.i, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %vm_ci_kwarg.exit23
  %i.k = getelementptr [8 x i8], ptr %i.h, i64 %i.j
  %wide.trip.count = zext nneg i32 %i.d to i64
  br label %bb.a

bb.a:                                             ; preds = %.lr.ph, %bb.a
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.a ] ; 3 uses
  %i.l = getelementptr [8 x i8], ptr %i.c, i64 %indvars.iv
  %i.m = load i64, ptr %i.l, align 8, !tbaa !11
  %i.n = getelementptr [8 x i8], ptr %i.k, i64 %indvars.iv
  %i.o = load i64, ptr %i.n, align 8, !tbaa !11
  %i.p = tail call i64 @rb_hash_aset(i64 noundef %i.f, i64 noundef %i.m, i64 noundef %i.o) #23 ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.a, !llvm.loop !809

._crit_edge.loopexit:                             ; preds = %bb.a
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !73
  br label %._crit_edge

._crit_edge:                                      ; preds = %vm_ci_kwarg.exit23, %._crit_edge.loopexit
  %i.q = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.h, %vm_ci_kwarg.exit23 ]
  %i.r = getelementptr [8 x i8], ptr %i.h, i64 %i.j
  store i64 %i.f, ptr %i.r, align 8, !tbaa !11
  %i.s = add i32 %i.d, -1                         ; 2 uses
  %i.t = sext i32 %i.s to i64
  %i.u = sub nsw i64 0, %i.t
  %i.v = getelementptr [8 x i8], ptr %i.q, i64 %i.u
  store ptr %i.v, ptr %i.g, align 8, !tbaa !73
  %i.w = getelementptr i8, ptr %1, i64 32         ; 2 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !230
  %i.y = sub i32 %i.x, %i.s
  store i32 %i.y, ptr %i.w, align 8, !tbaa !230
  %i.z = getelementptr i8, ptr %1, i64 36
  store i8 1, ptr %i.z, align 4, !tbaa !231
  ret void
}

declare i64 @rb_ary_cat(i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind sspstrong uwtable
define internal fastcc noundef i64 @vm_setivar_slowpath_attr(i64 noundef %0, i64 noundef %1, i64 noundef returned %2, ptr noundef captures(none) %3) unnamed_addr #30 {
bb.a:
  %i.a = icmp ne i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp eq i64 %i.b, 0
  %.not3.i.i = and i1 %i.a, %i.c
  br i1 %.not3.i.i, label %RB_OBJ_FROZEN.exit.i, label %RB_OBJ_FROZEN.exit.thread.i, !prof !168

RB_OBJ_FROZEN.exit.i:                             ; preds = %bb.a
  %i.d = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !77   ; 3 uses
  %i.f = and i64 %i.e, 2048
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i, label %RB_OBJ_FROZEN.exit.thread.i, !prof !369

RB_OBJ_FROZEN.exit.thread.i:                      ; preds = %RB_OBJ_FROZEN.exit.i, %bb.a
  tail call void @rb_error_frozen_object(i64 noundef %0) #42
  unreachable

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %RB_OBJ_FROZEN.exit.i
  %i.g = and i64 %i.e, 31
  %i.h = icmp ne i64 %i.g, 5
  %i.i = and i64 %i.e, 49152
  %.not8.i = icmp eq i64 %i.i, 0
  %or.cond.i = or i1 %i.h, %.not8.i
  br i1 %or.cond.i, label %rb_check_frozen_inline.exit, label %bb.b, !prof !455

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  tail call void @rb_str_modify(i64 noundef %0) #23
  br label %rb_check_frozen_inline.exit

rb_check_frozen_inline.exit:                      ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.b
  %i.j = tail call zeroext i16 @rb_ivar_set_index(i64 noundef %0, i64 noundef %1, i64 noundef %2) #23
  %.shift.i = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %4 = load i32, ptr %.shift.i, align 4, !tbaa !77 ; 2 uses
  %5 = and i32 %4, 134217728
  %.not = icmp eq i32 %5, 0
  br i1 %.not, label %bb.c, label %vm_setivar_slowpath.exit

bb.c:                                             ; preds = %rb_check_frozen_inline.exit
  %i.k = load i64, ptr %3, align 8, !tbaa !77     ; 2 uses
  %i.l = and i64 %i.k, 1048576
  %.not.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i, label %bb.d, label %populate_cache.exit

bb.d:                                             ; preds = %bb.c
  %i.m = add i16 %i.j, 1
  %.sroa.4.0.insert.ext.i.i.i = zext i16 %i.m to i64
  %.sroa.4.0.insert.shift.i.i.i = shl nuw nsw i64 %.sroa.4.0.insert.ext.i.i.i, 32
  %.sroa.4.0.insert.ext.i.i.i.a = zext i32 %4 to i64
  %.sroa.0.0.insert.insert.i.i.i = or disjoint i64 %.sroa.4.0.insert.shift.i.i.i, %.sroa.4.0.insert.ext.i.i.i.a
  %i.n = or i64 %i.k, 65536
  store i64 %i.n, ptr %3, align 8, !tbaa !11
  br label %populate_cache.exit

populate_cache.exit:                              ; preds = %bb.c, %bb.d
  %.sink.i.i = phi i64 [ %.sroa.0.0.insert.insert.i.i.i, %bb.d ], [ 4294967295, %bb.c ]
  %i.o = getelementptr i8, ptr %3, i64 32
  store i64 %.sink.i.i, ptr %i.o, align 8, !tbaa !11
  br label %vm_setivar_slowpath.exit

vm_setivar_slowpath.exit:                         ; preds = %rb_check_frozen_inline.exit, %populate_cache.exit
  ret i64 %2
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @vm_call_iseq_bmethod(ptr noundef %0, ptr noundef captures(none) %1, ptr noundef captures(none) %2) #2 {
bb.a:
  %i.a = getelementptr i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !233
  %i.c = getelementptr i8, ptr %i.b, i64 16
  %.val42 = load ptr, ptr %i.c, align 8, !tbaa !187 ; 2 uses
  %i.d = getelementptr i8, ptr %.val42, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !83   ; 2 uses
  %i.f = getelementptr i8, ptr %i.e, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !27
  %i.h = inttoptr i64 %i.g to ptr                 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !77
  %i.j = and i64 %i.i, 256
  %.not = icmp eq i64 %i.j, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr i8, ptr %i.e, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !27
  %i.m = getelementptr i8, ptr %0, i64 64
  %.val = load i64, ptr %i.m, align 8, !tbaa !427
  %.not40 = icmp eq i64 %i.l, %.val
  br i1 %.not40, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !11
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.n, ptr noundef nonnull @.str.159) #42
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.a
  %.039.in44 = getelementptr i8, ptr %i.h, i64 32
  %.03945 = load ptr, ptr %.039.in44, align 8, !tbaa !176 ; 3 uses
  %i.o = getelementptr i8, ptr %.03945, i64 24
  %.039.val46 = load i32, ptr %i.o, align 8, !tbaa !458
  %i.p = icmp eq i32 %.039.val46, 3
  br i1 %i.p, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.d, %.lr.ph
  %.03947 = phi ptr [ %.039, %.lr.ph ], [ %.03945, %bb.d ]
  %i.q = load i64, ptr %.03947, align 8, !tbaa !27
  %i.r = inttoptr i64 %i.q to ptr
  %.039.in = getelementptr i8, ptr %i.r, i64 32
  %.039 = load ptr, ptr %.039.in, align 8, !tbaa !176 ; 3 uses
  %i.s = getelementptr i8, ptr %.039, i64 24
  %.039.val = load i32, ptr %i.s, align 8, !tbaa !458
  %i.t = icmp eq i32 %.039.val, 3
  br i1 %i.t, label %.lr.ph, label %._crit_edge, !llvm.loop !810

._crit_edge:                                      ; preds = %.lr.ph, %bb.d
  %.039.lcssa = phi ptr [ %.03945, %bb.d ], [ %.039, %.lr.ph ] ; 2 uses
  %i.u = getelementptr i8, ptr %.039.lcssa, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !27   ; 4 uses
  %i.w = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !73
  %i.y = getelementptr i8, ptr %2, i64 32         ; 2 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !230
  %i.aa = sext i32 %i.z to i64
  %i.ab = sub nsw i64 0, %i.aa
  %i.ac = getelementptr [8 x i8], ptr %i.x, i64 %i.ab ; 3 uses
  %i.ad = getelementptr i8, ptr %i.v, i64 16      ; 3 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !124 ; 3 uses
  %i.af = getelementptr i8, ptr %i.ae, i64 20
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !191 ; 2 uses
  %i.ah = load ptr, ptr %2, align 8, !tbaa !226
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !225 ; 4 uses
  %i.aj = ptrtoint ptr %i.ai to i64               ; 2 uses
  %.not.i.i = trunc i64 %i.aj to i1
  br i1 %.not.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge
  %i.ak = trunc i64 %i.aj to i32
  %i.al = lshr i32 %i.ak, 16
  br label %vm_ci_flag.exit

bb.f:                                             ; preds = %._crit_edge
  %i.am = getelementptr i8, ptr %i.ai, i64 24
  %i.an = load i64, ptr %i.am, align 8, !tbaa !173
  %i.ao = trunc i64 %i.an to i32
  br label %vm_ci_flag.exit

vm_ci_flag.exit:                                  ; preds = %bb.e, %bb.f
  %.0.i = phi i32 [ %i.al, %bb.e ], [ %i.ao, %bb.f ]
  %i.ap = and i32 %.0.i, 16
  %.not41 = icmp eq i32 %i.ap, 0
  br i1 %.not41, label %vm_callee_setup_block_arg.exit.sink.split, label %bb.g

bb.g:                                             ; preds = %vm_ci_flag.exit
  %i.aq = getelementptr i8, ptr %i.ae, i64 16
  %i.ar = load i16, ptr %i.aq, align 8
  %i.as = and i16 %i.ar, 8574
  %i.at = icmp eq i16 %i.as, 0
  br i1 %i.at, label %bb.h, label %vm_callee_setup_block_arg.exit.sink.split

bb.h:                                             ; preds = %bb.g
  %i.au = getelementptr i8, ptr %0, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !70
  %i.aw = getelementptr i8, ptr %i.ae, i64 24
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !175
  tail call fastcc void @CALLER_SETUP_ARG(ptr noundef %i.av, ptr noundef nonnull %2, ptr noundef %i.ai, i32 noundef %i.ax)
  %i.ay = load i32, ptr %i.y, align 8, !tbaa !230 ; 2 uses
  %i.az = load ptr, ptr %i.ad, align 8, !tbaa !124
  %i.ba = getelementptr i8, ptr %i.az, i64 24
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !175 ; 3 uses
  %.not5456.i = icmp eq i32 %i.ay, %i.bb
  br i1 %.not5456.i, label %vm_callee_setup_block_arg.exit, label %.thread57.i

.thread57.i:                                      ; preds = %bb.h
  tail call fastcc void @argument_arity_error(ptr noundef nonnull %0, ptr noundef nonnull %i.v, ptr noundef null, i32 noundef %i.ay, i32 noundef %i.bb, i32 noundef %i.bb) #58
  unreachable

vm_callee_setup_block_arg.exit.sink.split:        ; preds = %vm_ci_flag.exit, %bb.g
  %i.bc = tail call fastcc i32 @setup_parameters_complex(ptr noundef %0, ptr noundef nonnull %i.v, ptr noundef nonnull %2, ptr noundef %i.ai, ptr noundef %i.ac, i32 noundef 0)
  %i.bd = sext i32 %i.bc to i64
  br label %vm_callee_setup_block_arg.exit

vm_callee_setup_block_arg.exit:                   ; preds = %vm_callee_setup_block_arg.exit.sink.split, %bb.h
  %.0 = phi i64 [ 0, %bb.h ], [ %i.bd, %vm_callee_setup_block_arg.exit.sink.split ]
  %i.be = getelementptr i8, ptr %i.ac, i64 -8
  store ptr %i.be, ptr %i.w, align 8, !tbaa !73
  %i.bf = getelementptr i8, ptr %2, i64 24
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !229
  %i.bh = getelementptr i8, ptr %.039.lcssa, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !210
  %i.bj = load ptr, ptr %i.ad, align 8, !tbaa !124 ; 3 uses
  %i.bk = getelementptr i8, ptr %i.bj, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !147
  %i.bm = sext i32 %i.ag to i64
  %i.bn = getelementptr [8 x i8], ptr %i.ac, i64 %i.bm ; 5 uses
  %i.bo = getelementptr i8, ptr %i.bj, i64 240
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !190
  %i.bq = sub i32 %i.bp, %i.ag                    ; 5 uses
  %i.br = getelementptr i8, ptr %i.bj, i64 264
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !355
  %i.bt = getelementptr i8, ptr %0, i64 16        ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !70 ; 6 uses
  %i.bv = getelementptr i8, ptr %i.bu, i64 -56    ; 3 uses
  %i.bw = add i32 %i.bs, %i.bq
  %i.bx = sext i32 %i.bw to i64
  %i.by = getelementptr [8 x i8], ptr %i.bn, i64 %i.bx
  %i.bz = getelementptr i8, ptr %i.by, i64 56
  %.not.i = icmp ugt ptr %i.bv, %i.bz
  br i1 %.not.i, label %.preheader.i, label %bb.i, !prof !72

.preheader.i:                                     ; preds = %vm_callee_setup_block_arg.exit
  %i.ca = icmp sgt i32 %i.bq, 0
  br i1 %i.ca, label %.lr.ph.i.preheader, label %vm_push_frame.exit

.lr.ph.i.preheader:                               ; preds = %.preheader.i
  %i.cb = zext nneg i32 %i.bq to i64              ; 2 uses
  %min.iters.check = icmp ult i32 %i.bq, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader56, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.cb, 2147483644              ; 4 uses
  %i.cc = shl nuw nsw i64 %n.vec, 3
  %i.cd = getelementptr i8, ptr %i.bn, i64 %i.cc  ; 2 uses
  %i.ce = trunc nuw nsw i64 %n.vec to i32
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cf = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.bn, i64 %i.cf ; 2 uses
  %i.cg = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> splat (i64 4), ptr %next.gep, align 8, !tbaa !11
  store <2 x i64> splat (i64 4), ptr %i.cg, align 8, !tbaa !11
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ch = icmp eq i64 %index.next, %n.vec
  br i1 %i.ch, label %middle.block, label %vector.body, !llvm.loop !811

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.cb
  br i1 %cmp.n, label %vm_push_frame.exit, label %.lr.ph.i.preheader56

.lr.ph.i.preheader56:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %.026.i.ph = phi ptr [ %i.bn, %.lr.ph.i.preheader ], [ %i.cd, %middle.block ]
  %.02325.i.ph = phi i32 [ 0, %.lr.ph.i.preheader ], [ %i.ce, %middle.block ]
  br label %.lr.ph.i

bb.i:                                             ; preds = %vm_callee_setup_block_arg.exit
  tail call fastcc void @vm_stackoverflow() #58
  unreachable

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader56, %.lr.ph.i
  %.026.i = phi ptr [ %i.ci, %.lr.ph.i ], [ %.026.i.ph, %.lr.ph.i.preheader56 ] ; 2 uses
end_hunk_5
