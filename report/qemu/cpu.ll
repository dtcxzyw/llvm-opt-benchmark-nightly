Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/cpu?download=true
inline.NumInlined: 224
inline.NumDeleted: 75
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@x86_cpu_expand_features:bb.a

x86_cpu_adjust_level.exit212:                     ; preds = %bb.id, %bb.ic, %x86_cpu_adjust_level.exit211
  %i.ub = and i64 %i.gm, 4
  %.not140 = icmp eq i64 %i.ub, 0
  br i1 %.not140, label %x86_cpu_adjust_level.exit213, label %bb.ie

bb.ie:                                            ; preds = %x86_cpu_adjust_level.exit212
  %i.uc = getelementptr inbounds nuw i8, ptr %0, i64 30152 ; 2 uses
  %i.ud = load i32, ptr %i.uc, align 8
  %i.ue = icmp ult i32 %i.ud, 18
  br i1 %i.ue, label %bb.if, label %x86_cpu_adjust_level.exit213

bb.if:                                            ; preds = %bb.ie
  store i32 18, ptr %i.uc, align 8
  br label %x86_cpu_adjust_level.exit213

x86_cpu_adjust_level.exit213:                     ; preds = %bb.if, %bb.ie, %x86_cpu_adjust_level.exit212
  %i.uf = getelementptr inbounds nuw i8, ptr %0, i64 30144 ; 2 uses
  %i.ug = load i32, ptr %i.uf, align 16
  %i.uh = icmp eq i32 %i.ug, -1
  br i1 %i.uh, label %bb.ig, label %bb.ih

bb.ig:                                            ; preds = %x86_cpu_adjust_level.exit213
  %i.ui = getelementptr inbounds nuw i8, ptr %0, i64 30148
  %i.uj = load i32, ptr %i.ui, align 4
  store i32 %i.uj, ptr %i.uf, align 16
  br label %bb.ih

bb.ih:                                            ; preds = %bb.ig, %x86_cpu_adjust_level.exit213
  %i.uk = getelementptr inbounds nuw i8, ptr %0, i64 30176 ; 2 uses
  %i.ul = load i32, ptr %i.uk, align 16
  %i.um = icmp eq i32 %i.ul, -1
  br i1 %i.um, label %bb.ii, label %bb.ij

bb.ii:                                            ; preds = %bb.ih
  %i.un = getelementptr inbounds nuw i8, ptr %0, i64 30152
  %i.uo = load i32, ptr %i.un, align 8
  store i32 %i.uo, ptr %i.uk, align 16
  br label %bb.ij

bb.ij:                                            ; preds = %bb.ii, %bb.ih
  %i.up = getelementptr inbounds nuw i8, ptr %0, i64 30180 ; 2 uses
  %i.uq = load i32, ptr %i.up, align 4
  %i.ur = icmp eq i32 %i.uq, -1
  br i1 %i.ur, label %bb.ik, label %bb.il

bb.ik:                                            ; preds = %bb.ij
  %i.us = getelementptr inbounds nuw i8, ptr %0, i64 30156
  %i.ut = load i32, ptr %i.us, align 4
  store i32 %i.ut, ptr %i.up, align 4
  br label %bb.il

bb.il:                                            ; preds = %bb.ik, %bb.ij
  %i.uu = getelementptr inbounds nuw i8, ptr %0, i64 30184 ; 2 uses
  %i.uv = load i32, ptr %i.uu, align 8
  %i.uw = icmp eq i32 %i.uv, -1
  br i1 %i.uw, label %bb.im, label %.loopexit

bb.im:                                            ; preds = %bb.il
  %i.ux = getelementptr inbounds nuw i8, ptr %0, i64 30160
  %i.uy = load i32, ptr %i.ux, align 16
  store i32 %i.uy, ptr %i.uu, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph227, %bb.il, %bb.im, %bb.g
  ret void
}

declare zeroext i1 @object_property_set_bool(ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #7

declare zeroext i1 @object_property_set_uint(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define dso_local void @x86_update_hflags(ptr nofree noundef captures(none) %0) local_unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.b = load i32, ptr %i.a, align 16
  %i.c = and i32 %i.b, -4390900
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 380
  %i.e = load i32, ptr %i.d, align 4              ; 2 uses
  %i.f = lshr i32 %i.e, 13
  %i.g = and i32 %i.f, 3
  %i.h = or disjoint i32 %i.g, %i.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.j = load i64, ptr %i.i, align 8              ; 2 uses
  %.tr = trunc i64 %i.j to i32                    ; 2 uses
  %i.k = shl i32 %.tr, 7
  %i.l = and i32 %i.k, 128
  %i.m = or disjoint i32 %i.h, %i.l
  %i.n = shl i32 %.tr, 8
  %i.o = and i32 %i.n, 3584
  %i.p = or disjoint i32 %i.m, %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.r = load i64, ptr %i.q, align 8              ; 2 uses
  %i.s = trunc i64 %i.r to i32
  %i.t = and i32 %i.s, 143616
  %i.u = or disjoint i32 %i.p, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.w = load i64, ptr %i.v, align 8
  %i.x = trunc i64 %i.w to i32
  %i.y = shl i32 %i.x, 13
  %i.z = and i32 %i.y, 4194304
  %spec.select = or disjoint i32 %i.u, %i.z
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 728
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = trunc i64 %i.ab to i32
  %i.ad = shl i32 %i.ac, 4
  %i.ae = and i32 %i.ad, 16384
  %.1 = or i32 %spec.select, %i.ae                ; 3 uses
  %i.af = and i32 %.1, 16384
  %.not31 = icmp eq i32 %i.af, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 356
  %.pre = load i32, ptr %.phi.trans.insert, align 4 ; 2 uses
  %i.ag = and i32 %.pre, 2097152
  %.not32 = icmp eq i32 %i.ag, 0
  %or.cond37 = select i1 %.not31, i1 true, i1 %.not32
  br i1 %or.cond37, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ah = or i32 %.1, 32816
  br label %bb.f

._crit_edge:                                      ; preds = %bb.a
  %i.ai = lshr i32 %.pre, 18
  %i.aj = and i32 %i.ai, 16
  %i.ak = lshr i32 %i.e, 17
  %i.al = and i32 %i.ak, 32
  %i.am = or disjoint i32 %i.al, %i.aj
  %i.an = or i32 %i.am, %.1                       ; 3 uses
  %i.ao = and i64 %i.j, 1
  %.not33 = icmp eq i64 %i.ao, 0
  br i1 %.not33, label %bb.d, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.ap = and i64 %i.r, 131072
  %.not34 = icmp ne i64 %i.ap, 0
  %i.aq = and i32 %i.an, 16
  %.not35 = icmp eq i32 %i.aq, 0
  %or.cond = select i1 %.not34, i1 true, i1 %.not35
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %i.ar = or i32 %i.an, 64
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.at = load i64, ptr %i.as, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.av = load i64, ptr %i.au, align 16
  %i.aw = or i64 %i.av, %i.at
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.ay = load i64, ptr %i.ax, align 16
  %i.az = or i64 %i.aw, %i.ay
  %.not36 = icmp eq i64 %i.az, 0
  %i.ba = select i1 %.not36, i32 0, i32 64
  %i.bb = or i32 %i.ba, %i.an
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b
  %.2 = phi i32 [ %i.ah, %bb.b ], [ %i.ar, %bb.d ], [ %i.bb, %bb.e ]
  store i32 %.2, ptr %i.a, align 16
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @do_qemu_init_x86_cpu_register_types() #4 {
bb.a:
  tail call void @register_module_init(ptr noundef nonnull @x86_cpu_register_types, i32 noundef 4) #20
  ret void
}

declare void @register_module_init(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind sspstrong uwtable
define internal void @x86_cpu_register_types() #4 {
bb.a:
  %0 = alloca %struct.TypeInfo, align 8           ; 9 uses
  %1 = alloca %struct.TypeInfo, align 8           ; 9 uses
  %2 = alloca %struct.TypeInfo, align 8           ; 10 uses
  %i.a = tail call ptr @type_register_static(ptr noundef nonnull @x86_cpu_type_info) #20 ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 96
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %x86_register_cpudef_types.exit
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %x86_register_cpudef_types.exit ] ; 3 uses
  %i.r = getelementptr inbounds nuw [464 x i8], ptr @builtin_x86_defs, i64 %indvars.iv ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 432
  %i.t = load ptr, ptr %i.s, align 16
  %i.u = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.t) #22
  %i.v = icmp ult i64 %i.u, 49
  br i1 %i.v, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @__assert_fail(ptr noundef nonnull @.str.660, ptr noundef nonnull @.str.408, i32 noundef 8570, ptr noundef nonnull @__PRETTY_FUNCTION__.x86_register_cpudef_types) #21
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.w = call noalias dereferenceable_or_null(32) ptr @g_malloc0(i64 noundef 32) #23 ; 4 uses
  store ptr %i.r, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i32 -2, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  store i8 1, ptr %i.y, align 8
  %i.z = load ptr, ptr %i.r, align 16             ; 2 uses
  %i.aa = call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.619, ptr noundef %i.z) #20 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  store ptr %i.aa, ptr %2, align 8
  store ptr @.str.461, ptr %i.b, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.c, i8 0, i64 56, i1 false)
  store ptr @x86_cpu_cpudef_class_init, ptr %i.d, align 8
  store ptr null, ptr %i.e, align 8
  store ptr %i.w, ptr %i.f, align 8
  store ptr null, ptr %i.g, align 8
  %i.ab = call ptr @type_register_static(ptr noundef nonnull %2) #20 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @g_free(ptr noundef %i.aa) #20
  %i.ac = getelementptr i8, ptr %i.r, i64 448
  %.val71.i = load ptr, ptr %i.ac, align 16
  %3 = shl nuw i64 1, %indvars.iv
  %4 = and i64 %3, 541165912063
  %.not.i.i.not = icmp eq i64 %4, 0
  %.x86_cpu_def_get_versions.default_version_list.i.i = select i1 %.not.i.i.not, ptr %.val71.i, ptr @x86_cpu_def_get_versions.default_version_list ; 2 uses
  %i.ad = load i32, ptr %.x86_cpu_def_get_versions.default_version_list.i.i, align 8 ; 2 uses
  %.not6972.i = icmp eq i32 %i.ad, 0
  br i1 %.not6972.i, label %x86_register_cpudef_types.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %bb.g
  %i.ae = phi i32 [ %i.az, %bb.g ], [ %i.ad, %bb.d ] ; 2 uses
  %.06473.i = phi ptr [ %i.ay, %bb.g ], [ %.x86_cpu_def_get_versions.default_version_list.i.i, %bb.d ] ; 5 uses
  %i.af = icmp sgt i32 %i.ae, 0
  br i1 %i.af, label %x86_cpu_versioned_model_name.exit.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i
  call void @__assert_fail(ptr noundef nonnull @.str.628, ptr noundef nonnull @.str.408, i32 noundef 2354, ptr noundef nonnull @__PRETTY_FUNCTION__.x86_cpu_versioned_model_name) #21
  unreachable

x86_cpu_versioned_model_name.exit.i:              ; preds = %.lr.ph.i
  %i.ag = call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.629, ptr noundef %i.z, i32 noundef %i.ae) #20 ; 2 uses
  %i.ah = call noalias dereferenceable_or_null(32) ptr @g_malloc0(i64 noundef 32) #23 ; 4 uses
  store ptr %i.r, ptr %i.ah, align 8
  %i.ai = load i32, ptr %.06473.i, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store i32 %i.ai, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %.06473.i, i64 16
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store ptr %i.al, ptr %i.am, align 8
  %i.an = call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.619, ptr noundef %i.ag) #20 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  store ptr %i.an, ptr %1, align 8
  store ptr @.str.461, ptr %i.h, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.i, i8 0, i64 56, i1 false)
  store <2 x ptr> <ptr @x86_cpu_cpudef_class_init, ptr null>, ptr %i.j, align 8
  store ptr %i.ah, ptr %i.k, align 8
  store ptr null, ptr %i.l, align 8
  %i.ao = call ptr @type_register_static(ptr noundef nonnull %1) #20 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  call void @g_free(ptr noundef %i.an) #20
  %i.ap = getelementptr inbounds nuw i8, ptr %.06473.i, i64 8 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8
  %.not70.i = icmp eq ptr %i.aq, null
  br i1 %.not70.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %x86_cpu_versioned_model_name.exit.i
  %i.ar = call noalias dereferenceable_or_null(32) ptr @g_malloc0(i64 noundef 32) #23 ; 4 uses
  store ptr %i.r, ptr %i.ar, align 8
  %i.as = load i32, ptr %.06473.i, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store i32 %i.as, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  store i8 1, ptr %i.au, align 8
  %i.av = load ptr, ptr %i.ap, align 8
  %i.aw = call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.619, ptr noundef %i.av) #20 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #20
  store ptr %i.aw, ptr %0, align 8
  store ptr @.str.461, ptr %i.m, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.n, i8 0, i64 56, i1 false)
  store <2 x ptr> <ptr @x86_cpu_cpudef_class_init, ptr null>, ptr %i.o, align 8
  store ptr %i.ar, ptr %i.p, align 8
  store ptr null, ptr %i.q, align 8
  %i.ax = call ptr @type_register_static(ptr noundef nonnull %0) #20 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #20
  call void @g_free(ptr noundef %i.aw) #20
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %x86_cpu_versioned_model_name.exit.i
  call void @g_free(ptr noundef %i.ag) #20
  %i.ay = getelementptr inbounds nuw i8, ptr %.06473.i, i64 40 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 8            ; 2 uses
  %.not69.i = icmp eq i32 %i.az, 0
  br i1 %.not69.i, label %x86_register_cpudef_types.exit, label %.lr.ph.i, !llvm.loop !26

x86_register_cpudef_types.exit:                   ; preds = %bb.g, %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 46
  br i1 %exitcond.not, label %bb.h, label %bb.b, !llvm.loop !27

bb.h:                                             ; preds = %x86_register_cpudef_types.exit
  %i.ba = call ptr @type_register_static(ptr noundef nonnull @max_x86_cpu_type_info) #20 ; 0 uses
  %i.bb = call ptr @type_register_static(ptr noundef nonnull @x86_base_cpu_type_info) #20 ; 0 uses
  ret void
}

declare noalias ptr @g_strdup_printf(ptr noundef, ...) local_unnamed_addr #7

declare void @g_free(ptr noundef) local_unnamed_addr #7

; Function Attrs: noreturn
declare void @g_assertion_message_expr(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #14

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i8 @cpuid2_cache_descriptor(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull writeonly captures(none) %1) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 4              ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.441, ptr noundef nonnull @.str.408, i32 noundef 236, ptr noundef nonnull @__PRETTY_FUNCTION__.cpuid2_cache_descriptor) #21
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i8, ptr %i.c, align 4               ; 2 uses
  %.not23 = icmp eq i8 %i.d, 0
  br i1 %.not23, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @__assert_fail(ptr noundef nonnull @.str.442, ptr noundef nonnull @.str.408, i32 noundef 237, ptr noundef nonnull @__PRETTY_FUNCTION__.cpuid2_cache_descriptor) #21
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.f = load i16, ptr %i.e, align 4              ; 2 uses
  %.not24 = icmp eq i16 %i.f, 0
  br i1 %.not24, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @__assert_fail(ptr noundef nonnull @.str.443, ptr noundef nonnull @.str.408, i32 noundef 238, ptr noundef nonnull @__PRETTY_FUNCTION__.cpuid2_cache_descriptor) #21
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.h = load i8, ptr %i.g, align 2               ; 2 uses
  %.not25 = icmp eq i8 %i.h, 0
  br i1 %.not25, label %bb.h, label %.preheader

.preheader:                                       ; preds = %bb.g
  %i.i = zext i8 %i.d to i32
  %i.j = zext i16 %i.f to i32
  %i.k = zext i8 %i.h to i32
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @__assert_fail(ptr noundef nonnull @.str.444, ptr noundef nonnull @.str.408, i32 noundef 239, ptr noundef nonnull @__PRETTY_FUNCTION__.cpuid2_cache_descriptor) #21
  unreachable

bb.i:                                             ; preds = %.preheader, %.thread
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %.thread ] ; 3 uses
  %i.l = getelementptr inbounds nuw [20 x i8], ptr @cpuid2_cache_descriptors, i64 %indvars.iv ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.n = load i32, ptr %i.m, align 4
  %i.o = icmp eq i32 %i.n, %i.i
  br i1 %i.o, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %i.p = load i32, ptr %i.l, align 4
  %i.q = load i32, ptr %0, align 4
  %i.r = icmp eq i32 %i.p, %i.q
  br i1 %i.r, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.t = load i32, ptr %i.s, align 4
  %i.u = icmp eq i32 %i.t, %i.b
  br i1 %i.u, label %bb.l, label %.thread

bb.l:                                             ; preds = %bb.k
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  %i.w = load i32, ptr %i.v, align 4
  %i.x = icmp eq i32 %i.w, %i.j
  br i1 %i.x, label %bb.m, label %.thread

bb.m:                                             ; preds = %bb.l
  %i.y = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.z = load i32, ptr %i.y, align 4
  %.not30 = icmp eq i32 %i.z, %i.k
  br i1 %.not30, label %.loopexit.loopexit, label %.thread

.thread:                                          ; preds = %bb.j, %bb.k, %bb.l, %bb.i, %bb.m
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 237
  br i1 %exitcond.not, label %bb.n, label %bb.i, !llvm.loop !28

bb.n:                                             ; preds = %.thread
  store i8 1, ptr %1, align 1
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %bb.m
  %i.aa = trunc i64 %indvars.iv to i8
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.n
  %.2 = phi i8 [ -1, %bb.n ], [ %i.aa, %.loopexit.loopexit ]
  ret i8 %.2
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 0, 129) i32 @apicid_offset_by_topo_level(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) unnamed_addr #4 {
bb.a:
  switch i32 %1, label %bb.p [
    i32 0, label %bb.q
    i32 1, label %bb.b
    i32 2, label %bb.d
    i32 4, label %bb.g
    i32 5, label %bb.k
  ]

end_hunk_0
