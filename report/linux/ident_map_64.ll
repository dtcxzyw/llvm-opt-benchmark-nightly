inline.NumInlined: 115
inline.NumDeleted: 61
loop-unroll.NumUnrolled: 1
begin_hunk_0_@kernel_ident_mapping_init:bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %select.unfold
  %.04483 = phi i64 [ %i.c, %.lr.ph ], [ %i.w, %select.unfold ] ; 6 uses
  %i.l = load i32, ptr @pgdir_shift, align 4
  %i.m = zext i32 %i.l to i64                     ; 2 uses
  %i.n = lshr i64 %.04483, %i.m
  %i.o = and i64 %i.n, 511
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.o ; 4 uses
  %i.q = shl nuw i64 1, %i.m                      ; 2 uses
  %i.r = add i64 %i.q, %.04483
  %i.s = sub i64 0, %i.q
  %i.t = and i64 %i.r, %i.s                       ; 2 uses
  %i.u = add i64 %i.t, -1
  %i.v = icmp ult i64 %i.u, %i.j
  %i.w = select i1 %i.v, i64 %i.t, i64 %i.d       ; 10 uses
  %i.x = load i64, ptr %i.p, align 8              ; 2 uses
  %i.y = load i32, ptr @__pgtable_l5_enabled, align 4
  %.not.i = icmp ne i32 %i.y, 0                   ; 2 uses
  %i.z = and i64 %i.x, 1
  %.not5077 = icmp eq i64 %i.z, 0
  %.not50 = select i1 %.not.i, i1 %.not5077, i1 false
  br i1 %.not50, label %bb.h, label %p4d_offset.exit

p4d_offset.exit:                                  ; preds = %bb.b
  %i.aa = and i64 %i.x, 4503599627366400
  %i.ab = inttoptr i64 %i.aa to ptr
  %.0.i55 = select i1 %.not.i, ptr %i.ab, ptr %i.p
  %i.ac = icmp ult i64 %.04483, %i.w
  br i1 %i.ac, label %.lr.ph.i, label %select.unfold

.lr.ph.i:                                         ; preds = %p4d_offset.exit
  %i.ad = add i64 %i.w, -1
  br label %bb.c

bb.c:                                             ; preds = %select.unfold.i, %.lr.ph.i
  %.03343.i = phi i64 [ %.04483, %.lr.ph.i ], [ %i.ao, %select.unfold.i ] ; 5 uses
  %i.ae = lshr i64 %.03343.i, 39
  %i.af = load i32, ptr @ptrs_per_p4d, align 4
  %i.ag = add i32 %i.af, -1
  %i.ah = zext i32 %i.ag to i64
  %i.ai = and i64 %i.ae, %i.ah
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %.0.i55, i64 %i.ai ; 2 uses
  %i.ak = and i64 %.03343.i, -549755813888
  %i.al = add i64 %i.ak, 549755813888
  %i.am = or i64 %.03343.i, 549755813887
  %i.an = icmp ult i64 %i.am, %i.ad
  %i.ao = select i1 %i.an, i64 %i.al, i64 %i.w    ; 4 uses
  %i.ap = load i64, ptr %i.aj, align 8            ; 2 uses
  %i.aq = and i64 %i.ap, 1
  %.not.i56 = icmp eq i64 %i.aq, 0
  br i1 %.not.i56, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ar = and i64 %i.ap, 4503599627366400
  %i.as = inttoptr i64 %i.ar to ptr
  %i.at = tail call fastcc i32 @ident_pud_init(ptr noundef readonly %0, ptr noundef %i.as, i64 noundef %.03343.i, i64 noundef %i.ao) #6 ; 2 uses
  %.not40.i = icmp eq i32 %i.at, 0
  br i1 %.not40.i, label %select.unfold.i, label %.thread

bb.e:                                             ; preds = %bb.c
  %i.au = load ptr, ptr %0, align 8
  %i.av = load ptr, ptr %i.k, align 8
  %i.aw = tail call ptr %i.au(ptr noundef %i.av) #5, !inline_history !14 ; 3 uses
  %.not38.i = icmp eq ptr %i.aw, null
  br i1 %.not38.i, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ax = tail call fastcc i32 @ident_pud_init(ptr noundef nonnull readonly %0, ptr noundef nonnull %i.aw, i64 noundef %.03343.i, i64 noundef %i.ao) #6 ; 2 uses
  %.not39.i = icmp eq i32 %i.ax, 0
  br i1 %.not39.i, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = load i64, ptr %i.e, align 8
  %i.ba = or i64 %i.az, %i.ay
  %i.bb = or i64 %i.ba, 288230376151711744
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.01.i.i)
  store i64 %i.bb, ptr %.sroa.01.i.i, align 8
  %.sroa.01.i.i.0..sroa.01.i.i.0..sroa.01.i.i.0..sroa.01.i.0..sroa.01.i.0..sroa.01.0..sroa.01.0..sroa.01.0..sroa.01.0.copyload.i.i = load volatile i64, ptr %.sroa.01.i.i, align 8
  store volatile i64 %.sroa.01.i.i.0..sroa.01.i.i.0..sroa.01.i.i.0..sroa.01.i.0..sroa.01.i.0..sroa.01.0..sroa.01.0..sroa.01.0..sroa.01.0.copyload.i.i, ptr %i.aj, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.01.i.i)
  br label %select.unfold.i

select.unfold.i:                                  ; preds = %bb.g, %bb.d
  %i.bc = icmp ult i64 %i.ao, %i.w
  br i1 %i.bc, label %bb.c, label %select.unfold, !llvm.loop !15

bb.h:                                             ; preds = %bb.b
  %i.bd = load ptr, ptr %0, align 8
  %i.be = load ptr, ptr %i.k, align 8
  %i.bf = tail call ptr %i.bd(ptr noundef %i.be) #5 ; 4 uses
  %.not51 = icmp eq ptr %i.bf, null
  br i1 %.not51, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bg = icmp ult i64 %.04483, %i.w
  br i1 %i.bg, label %.lr.ph.i59, label %ident_p4d_init.exit67

.lr.ph.i59:                                       ; preds = %bb.i
  %i.bh = add i64 %i.w, -1
  br label %bb.j

bb.j:                                             ; preds = %select.unfold.i63, %.lr.ph.i59
  %.03343.i60 = phi i64 [ %.04483, %.lr.ph.i59 ], [ %i.bs, %select.unfold.i63 ] ; 5 uses
  %i.bi = lshr i64 %.03343.i60, 39
  %i.bj = load i32, ptr @ptrs_per_p4d, align 4
  %i.bk = add i32 %i.bj, -1
  %i.bl = zext i32 %i.bk to i64
  %i.bm = and i64 %i.bi, %i.bl
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.bm ; 2 uses
  %i.bo = and i64 %.03343.i60, -549755813888
  %i.bp = add i64 %i.bo, 549755813888
  %i.bq = or i64 %.03343.i60, 549755813887
  %i.br = icmp ult i64 %i.bq, %i.bh
  %i.bs = select i1 %i.br, i64 %i.bp, i64 %i.w    ; 4 uses
  %i.bt = load i64, ptr %i.bn, align 8            ; 2 uses
  %i.bu = and i64 %i.bt, 1
  %.not.i61 = icmp eq i64 %i.bu, 0
  br i1 %.not.i61, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bv = and i64 %i.bt, 4503599627366400
  %i.bw = inttoptr i64 %i.bv to ptr
  %i.bx = tail call fastcc i32 @ident_pud_init(ptr noundef nonnull readonly %0, ptr noundef %i.bw, i64 noundef %.03343.i60, i64 noundef %i.bs) #6 ; 2 uses
  %.not40.i62 = icmp eq i32 %i.bx, 0
  br i1 %.not40.i62, label %select.unfold.i63, label %.thread

bb.l:                                             ; preds = %bb.j
  %i.by = load ptr, ptr %0, align 8
  %i.bz = load ptr, ptr %i.k, align 8
  %i.ca = tail call ptr %i.by(ptr noundef %i.bz) #5, !inline_history !14 ; 3 uses
  %.not38.i64 = icmp eq ptr %i.ca, null
  br i1 %.not38.i64, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cb = tail call fastcc i32 @ident_pud_init(ptr noundef nonnull readonly %0, ptr noundef nonnull %i.ca, i64 noundef %.03343.i60, i64 noundef %i.bs) #6 ; 2 uses
  %.not39.i65 = icmp eq i32 %i.cb, 0
  br i1 %.not39.i65, label %bb.n, label %.thread

bb.n:                                             ; preds = %bb.m
  %i.cc = ptrtoint ptr %i.ca to i64
  %i.cd = load i64, ptr %i.e, align 8
  %i.ce = or i64 %i.cd, %i.cc
  %i.cf = or i64 %i.ce, 288230376151711744
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.01.i.i57)
  store i64 %i.cf, ptr %.sroa.01.i.i57, align 8
  %.sroa.01.i.i57.0..sroa.01.i.i57.0..sroa.01.i.i57.0..sroa.01.i.0..sroa.01.i.0..sroa.01.0..sroa.01.0..sroa.01.0..sroa.01.0.copyload.i.i66 = load volatile i64, ptr %.sroa.01.i.i57, align 8
  store volatile i64 %.sroa.01.i.i57.0..sroa.01.i.i57.0..sroa.01.i.i57.0..sroa.01.i.0..sroa.01.i.0..sroa.01.0..sroa.01.0..sroa.01.0..sroa.01.0.copyload.i.i66, ptr %i.bn, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.01.i.i57)
  br label %select.unfold.i63

select.unfold.i63:                                ; preds = %bb.n, %bb.k
  %i.cg = icmp ult i64 %i.bs, %i.w
  br i1 %i.cg, label %bb.j, label %ident_p4d_init.exit67, !llvm.loop !15

ident_p4d_init.exit67:                            ; preds = %select.unfold.i63, %bb.i
  %i.ch = load i32, ptr @__pgtable_l5_enabled, align 4
  %.not78 = icmp eq i32 %i.ch, 0
  br i1 %.not78, label %bb.p, label %bb.o

bb.o:                                             ; preds = %ident_p4d_init.exit67
  %i.ci = ptrtoint ptr %i.bf to i64
  %i.cj = load i64, ptr %i.e, align 8
  %i.ck = or i64 %i.cj, %i.ci
  %i.cl = or i64 %i.ck, 288230376151711744
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  store volatile i64 %i.cl, ptr %.sroa.0.i, align 8
  %.sroa.0.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.copyload.i = load volatile i64, ptr %.sroa.0.i, align 8
  store volatile i64 %.sroa.0.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.copyload.i, ptr %i.p, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  br label %select.unfold

bb.p:                                             ; preds = %ident_p4d_init.exit67
  %.val = load i64, ptr %i.bf, align 8
  %i.cm = and i64 %.val, 4503599627366400
  %i.cn = load i64, ptr %i.e, align 8
  %i.co = or i64 %i.cm, %i.cn
  %i.cp = or i64 %i.co, 288230376151711744
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i68)
  store volatile i64 %i.cp, ptr %.sroa.0.i68, align 8
  %.sroa.0.i68.0..sroa.0.i68.0..sroa.0.i68.0..sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.copyload.i69 = load volatile i64, ptr %.sroa.0.i68, align 8
  store volatile i64 %.sroa.0.i68.0..sroa.0.i68.0..sroa.0.i68.0..sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.copyload.i69, ptr %i.p, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i68)
  br label %select.unfold

select.unfold:                                    ; preds = %select.unfold.i, %p4d_offset.exit, %bb.p, %bb.o
  %i.cq = icmp ult i64 %i.w, %i.d
  br i1 %i.cq, label %bb.b, label %.thread, !llvm.loop !16

.thread:                                          ; preds = %select.unfold, %bb.h, %bb.e, %bb.f, %bb.d, %bb.l, %bb.m, %bb.k, %bb.a
  %.2 = phi i32 [ %i.bx, %bb.k ], [ -12, %bb.e ], [ 0, %bb.a ], [ %i.cb, %bb.m ], [ -12, %bb.l ], [ %i.ax, %bb.f ], [ %i.at, %bb.d ], [ -12, %bb.h ], [ 0, %select.unfold ]
  ret i32 %.2
}

; Function Attrs: noredzone nounwind
define hidden void @kernel_add_identity_map(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = and i64 %0, -2097152                     ; 2 uses
  %i.b = add i64 %1, 2097151
  %2 = and i64 %i.b, -2097152                     ; 2 uses
  %.not = icmp ult i64 %i.a, %2
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr @top_level_pgt, align 8
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = tail call i32 @kernel_ident_mapping_init(ptr noundef nonnull @mapping_info, ptr noundef %i.d, i64 noundef %i.a, i64 noundef %2) #6
  %.not8 = icmp eq i32 %i.e, 0
  br i1 %.not8, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @error(ptr noundef nonnull @.str) #7
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: noredzone noreturn
declare hidden void @error(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define hidden void @initialize_identity_maps(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  store ptr @alloc_pgt_page, ptr @mapping_info, align 8
  store ptr @pgt_data, ptr getelementptr inbounds nuw (i8, ptr @mapping_info, i64 16), align 8
  store i64 483, ptr getelementptr inbounds nuw (i8, ptr @mapping_info, i64 24), align 8
  store i64 99, ptr getelementptr inbounds nuw (i8, ptr @mapping_info, i64 48), align 8
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @pgt_data, i64 16), align 8
  %i.a = tail call i64 asm sideeffect "mov %cr3,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !srcloc !17
  %i.b = and i64 %i.a, 4503599627366400           ; 2 uses
  store i64 %i.b, ptr @top_level_pgt, align 8
  %i.c = inttoptr i64 %i.b to ptr                 ; 2 uses
  %i.d = load i32, ptr @__pgtable_l5_enabled, align 4
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %p4d_offset.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 4096
  %i.f = and i64 %i.e, 4503599627366400
  %i.g = inttoptr i64 %i.f to ptr
  br label %p4d_offset.exit

p4d_offset.exit:                                  ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.g, %bb.b ], [ %i.c, %bb.a ]
  %i.h = icmp eq ptr %.0.i, @_pgtable
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %p4d_offset.exit
  store ptr getelementptr inbounds nuw (i8, ptr @_pgtable, i64 24576), ptr @pgt_data, align 8
  store i64 106496, ptr getelementptr inbounds nuw (i8, ptr @pgt_data, i64 8), align 8
  %i.i = tail call ptr @memset(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_pgtable, i64 24576), i32 noundef 0, i64 noundef 106496) #5 ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %p4d_offset.exit
  store ptr @_pgtable, ptr @pgt_data, align 8
  store i64 131072, ptr getelementptr inbounds nuw (i8, ptr @pgt_data, i64 8), align 8
  %i.j = tail call ptr @memset(ptr noundef nonnull @_pgtable, i32 noundef 0, i64 noundef 131072) #5 ; 0 uses
  %i.k = tail call ptr @alloc_pgt_page(ptr noundef nonnull @pgt_data) #6
  %i.l = ptrtoint ptr %i.k to i64
  store i64 %i.l, ptr @top_level_pgt, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.m = and i64 ptrtoint (ptr @_head to i64), -2097152 ; 2 uses
  %1 = and i64 add (i64 ptrtoint (ptr @_end to i64), i64 2097151), -2097152 ; 2 uses
  %.not.i8 = icmp ult i64 %i.m, %1
  br i1 %.not.i8, label %bb.f, label %kernel_add_identity_map.exit

bb.f:                                             ; preds = %bb.e
  %i.n = load i64, ptr @top_level_pgt, align 8
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = tail call i32 @kernel_ident_mapping_init(ptr noundef nonnull @mapping_info, ptr noundef %i.o, i64 noundef %i.m, i64 noundef %1) #6
  %.not8.i = icmp eq i32 %i.p, 0
  br i1 %.not8.i, label %kernel_add_identity_map.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @error(ptr noundef nonnull @.str) #7
  unreachable

kernel_add_identity_map.exit:                     ; preds = %bb.e, %bb.f
  store ptr %0, ptr @boot_params_ptr, align 8
  %i.q = ptrtoint ptr %0 to i64
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 4096
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = and i64 %i.q, -2097152                   ; 2 uses
  %i.u = add i64 %i.s, 2097151
  %2 = and i64 %i.u, -2097152                     ; 2 uses
  %.not.i9 = icmp ult i64 %i.t, %2
  br i1 %.not.i9, label %bb.h, label %kernel_add_identity_map.exit11

bb.h:                                             ; preds = %kernel_add_identity_map.exit
  %i.v = load i64, ptr @top_level_pgt, align 8
  %i.w = inttoptr i64 %i.v to ptr
  %i.x = tail call i32 @kernel_ident_mapping_init(ptr noundef nonnull @mapping_info, ptr noundef %i.w, i64 noundef %i.t, i64 noundef %2) #6
  %.not8.i10 = icmp eq i32 %i.x, 0
  br i1 %.not8.i10, label %kernel_add_identity_map.exit11, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @error(ptr noundef nonnull @.str) #7
  unreachable

kernel_add_identity_map.exit11:                   ; preds = %kernel_add_identity_map.exit, %bb.h
  %i.y = tail call i64 @get_cmd_line_ptr() #5     ; 2 uses
  %i.z = and i64 %i.y, -2097152                   ; 2 uses
  %i.aa = add i64 %i.y, 2099199
  %3 = and i64 %i.aa, -2097152                    ; 2 uses
  %.not.i12 = icmp ult i64 %i.z, %3
  br i1 %.not.i12, label %bb.j, label %kernel_add_identity_map.exit14

bb.j:                                             ; preds = %kernel_add_identity_map.exit11
  %i.ab = load i64, ptr @top_level_pgt, align 8
  %i.ac = inttoptr i64 %i.ab to ptr
  %i.ad = tail call i32 @kernel_ident_mapping_init(ptr noundef nonnull @mapping_info, ptr noundef %i.ac, i64 noundef %i.z, i64 noundef %3) #6
  %.not8.i13 = icmp eq i32 %i.ad, 0
  br i1 %.not8.i13, label %kernel_add_identity_map.exit14, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @error(ptr noundef nonnull @.str) #7
  unreachable

kernel_add_identity_map.exit14:                   ; preds = %kernel_add_identity_map.exit11, %bb.j
  %i.ae = load ptr, ptr @boot_params_ptr, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 592
  %.0.in18 = load i64, ptr %i.af, align 1         ; 2 uses
  %.not19 = icmp eq i64 %.0.in18, 0
  br i1 %.not19, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %kernel_add_identity_map.exit14, %kernel_add_identity_map.exit17
  %.0.in20 = phi i64 [ %.0.in, %kernel_add_identity_map.exit17 ], [ %.0.in18, %kernel_add_identity_map.exit14 ] ; 3 uses
  %.0 = inttoptr i64 %.0.in20 to ptr              ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.0, i64 12
  %i.ah = load i32, ptr %i.ag, align 4
  %i.ai = zext i32 %i.ah to i64
  %i.aj = and i64 %.0.in20, -2097152              ; 2 uses
  %i.ak = add i64 %.0.in20, 2097167
  %i.al = add i64 %i.ak, %i.ai
  %4 = and i64 %i.al, -2097152                    ; 2 uses
  %.not.i15 = icmp ult i64 %i.aj, %4
  br i1 %.not.i15, label %bb.l, label %kernel_add_identity_map.exit17

bb.l:                                             ; preds = %.lr.ph
  %i.am = load i64, ptr @top_level_pgt, align 8
  %i.an = inttoptr i64 %i.am to ptr
  %i.ao = tail call i32 @kernel_ident_mapping_init(ptr noundef nonnull @mapping_info, ptr noundef %i.an, i64 noundef %i.aj, i64 noundef %4) #6
  %.not8.i16 = icmp eq i32 %i.ao, 0
  br i1 %.not8.i16, label %kernel_add_identity_map.exit17, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @error(ptr noundef nonnull @.str) #7
  unreachable

kernel_add_identity_map.exit17:                   ; preds = %.lr.ph, %bb.l
  %.0.in = load i64, ptr %.0, align 4             ; 2 uses
  %.not = icmp eq i64 %.0.in, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !18

._crit_edge:                                      ; preds = %kernel_add_identity_map.exit17, %kernel_add_identity_map.exit14
  %i.ap = load i64, ptr @top_level_pgt, align 8
  tail call void asm sideeffect "mov $0,%cr3", "r,~{memory},~{dirflag},~{fpsr},~{flags}"(i64 %i.ap) #8, !srcloc !19
  ret void
}

; Function Attrs: noredzone nounwind
define internal ptr @alloc_pgt_page(ptr nofree noundef captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8
  %.not = icmp ult i64 %i.b, %i.d
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__putstr(ptr noundef nonnull @.str.3) #5
  tail call void @__putstr(ptr noundef nonnull @.str.4) #5
  %i.e = load i64, ptr %i.a, align 8
  tail call void @__puthex(i64 noundef %i.e) #5
  tail call void @__putstr(ptr noundef nonnull @.str.5) #5
  tail call void @__putstr(ptr noundef nonnull @.str.6) #5
  %i.f = load i64, ptr %i.c, align 8
  tail call void @__puthex(i64 noundef %i.f) #5
  tail call void @__putstr(ptr noundef nonnull @.str.5) #5
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.g = icmp eq i64 %i.b, 114688
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @__putstr(ptr noundef nonnull @.str.7) #5
  tail call void @__putstr(ptr noundef nonnull @.str.8) #5
  tail call void @__putstr(ptr noundef nonnull @.str.4) #5
  %i.h = load i64, ptr %i.a, align 8
  tail call void @__puthex(i64 noundef %i.h) #5
  tail call void @__putstr(ptr noundef nonnull @.str.5) #5
  tail call void @__putstr(ptr noundef nonnull @.str.6) #5
  %i.i = load i64, ptr %i.c, align 8
  tail call void @__puthex(i64 noundef %i.i) #5
  tail call void @__putstr(ptr noundef nonnull @.str.5) #5
  %.pre = load i64, ptr %i.a, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.j = phi i64 [ %.pre, %bb.d ], [ %i.b, %bb.c ] ; 2 uses
  %i.k = load ptr, ptr %0, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.j
  %i.m = add i64 %i.j, 4096
  store i64 %i.m, ptr %i.a, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ %i.l, %bb.e ]
  ret ptr %.0
}

; Function Attrs: noredzone
declare hidden ptr @memset(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noredzone
declare hidden i64 @get_cmd_line_ptr() local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define hidden range(i32 -12, 1) i32 @set_page_decrypted(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @set_clr_page_flags(i64 noundef %0, i64 noundef 0) #6
  ret i32 %i.a
}

; Function Attrs: noredzone nounwind
define internal fastcc range(i32 -12, 1) i32 @set_clr_page_flags(i64 noundef %0, i64 noundef range(i64 0, 2) %1) unnamed_addr #0 {
bb.a:
  %.sroa.0.i = alloca i64, align 8                ; 4 uses
  %.sroa.0.i22.i = alloca i64, align 8            ; 4 uses
  %.sroa.0.i.i = alloca i64, align 8              ; 8 uses
  %i.a = load i64, ptr @top_level_pgt, align 8
  %i.b = inttoptr i64 %i.a to ptr                 ; 2 uses
  %i.c = inttoptr i64 %0 to ptr
  %i.d = load i64, ptr %i.c, align 8
  tail call void asm sideeffect "mov $0, %r9", "imr,~{r9},~{memory},~{dirflag},~{fpsr},~{flags}"(i64 %i.d) #8, !srcloc !20
  %i.e = load i32, ptr @__pgtable_l5_enabled, align 4
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %p4d_offset.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i64, ptr %i.b, align 8
  %i.g = and i64 %i.f, 4503599627366400
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = lshr i64 %0, 39
  %i.j = load i32, ptr @ptrs_per_p4d, align 4
  %i.k = add i32 %i.j, -1
  %i.l = zext i32 %i.k to i64
  %i.m = and i64 %i.i, %i.l
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.m
  br label %p4d_offset.exit

p4d_offset.exit:                                  ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.n, %bb.b ], [ %i.b, %bb.a ]
  %.val = load i64, ptr %.0.i, align 8
  %i.o = and i64 %.val, 4503599627366400
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = lshr i64 %0, 30
  %i.r = and i64 %i.q, 511
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.r
  %.val30 = load i64, ptr %i.s, align 8           ; 2 uses
  %i.t = and i64 %.val30, 128
  %.not.i.i.i = icmp eq i64 %i.t, 0
  %..i.i.i = select i1 %.not.i.i.i, i64 4503599627366400, i64 4503598553628672
  %i.u = and i64 %..i.i.i, %.val30
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = lshr i64 %0, 21
  %i.x = and i64 %i.w, 511
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.x ; 2 uses
  %i.z = load i64, ptr %i.y, align 8              ; 2 uses
  %i.aa = and i64 %i.z, 128
  %.not3 = icmp eq i64 %i.aa, 0
  br i1 %.not3, label %bb.g, label %bb.c

bb.c:                                             ; preds = %p4d_offset.exit
  %i.ab = load ptr, ptr @mapping_info, align 8
  %i.ac = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mapping_info, i64 16), align 8
  %i.ad = tail call ptr %i.ab(ptr noundef %i.ac) #5, !inline_history !21 ; 5 uses
  %.not.i32 = icmp eq ptr %i.ad, null
  br i1 %.not.i32, label %split_large_pmd.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ae = and i64 %0, -2097152
  %i.af = load i64, ptr getelementptr inbounds nuw (i8, ptr @mapping_info, i64 24), align 8
  %i.ag = and i64 %i.af, -129                     ; 2 uses
  %invariant.op = or i64 %i.ag, 4096
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %indvars.iv.i = phi i64 [ 0, %bb.d ], [ %indvars.iv.next.i.1, %bb.e ] ; 3 uses
  %.0192.i = phi i64 [ %i.ae, %bb.d ], [ %i.al, %bb.e ] ; 3 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv.i
  %i.ai = or i64 %.0192.i, %i.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i)
  store i64 %i.ai, ptr %.sroa.0.i.i, align 8
  %.sroa.0.i.i.0..sroa.0.i.i.0..sroa.0.i.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.copyload.i.i = load volatile i64, ptr %.sroa.0.i.i, align 8
  store volatile i64 %.sroa.0.i.i.0..sroa.0.i.i.0..sroa.0.i.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.copyload.i.i, ptr %i.ah, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i)
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %.reass = or i64 %.0192.i, %invariant.op
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i)
  store i64 %.reass, ptr %.sroa.0.i.i, align 8
  %.sroa.0.i.i.0..sroa.0.i.i.0..sroa.0.i.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.copyload.i.i.1 = load volatile i64, ptr %.sroa.0.i.i, align 8
  store volatile i64 %.sroa.0.i.i.0..sroa.0.i.i.0..sroa.0.i.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.copyload.i.i.1, ptr %i.ak, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i)
  %i.al = add i64 %.0192.i, 8192
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, 512
  br i1 %exitcond.not.i.1, label %bb.f, label %bb.e, !llvm.loop !22

bb.f:                                             ; preds = %bb.e
  %i.am = ptrtoint ptr %i.ad to i64
  %i.an = load i64, ptr getelementptr inbounds nuw (i8, ptr @mapping_info, i64 48), align 8
  %i.ao = or i64 %i.an, %i.am
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i22.i)
  store i64 %i.ao, ptr %.sroa.0.i22.i, align 8
  %.sroa.0.i22.i.0..sroa.0.i22.i.0..sroa.0.i22.i.0..sroa.0.i22.0..sroa.0.i22.0..sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.copyload.i23.i = load volatile i64, ptr %.sroa.0.i22.i, align 8
  store volatile i64 %.sroa.0.i22.i.0..sroa.0.i22.i.0..sroa.0.i22.i.0..sroa.0.i22.0..sroa.0.i22.0..sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.copyload.i23.i, ptr %i.y, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i22.i)
  %i.ap = load i64, ptr @top_level_pgt, align 8
  tail call void asm sideeffect "mov $0,%cr3", "r,~{memory},~{dirflag},~{fpsr},~{flags}"(i64 %i.ap) #8, !srcloc !19
  br label %split_large_pmd.exit

bb.g:                                             ; preds = %p4d_offset.exit
  %i.aq = and i64 %i.z, 4503599627366400
  %i.ar = inttoptr i64 %i.aq to ptr
  br label %split_large_pmd.exit

split_large_pmd.exit:                             ; preds = %bb.f, %bb.g
  %.sink = phi ptr [ %i.ad, %bb.f ], [ %i.ar, %bb.g ] ; 2 uses
  %.not = icmp eq ptr %.sink, null
  br i1 %.not, label %split_large_pmd.exit.thread, label %bb.h

bb.h:                                             ; preds = %split_large_pmd.exit
  %i.as = lshr i64 %0, 12
  %i.at = and i64 %i.as, 511
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %.sink, i64 %i.at ; 2 uses
  %.sroa.02.0.copyload = load i64, ptr %i.au, align 8
  %i.av = xor i64 %1, -1
  %i.aw = and i64 %.sroa.02.0.copyload, %i.av
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  store i64 %i.aw, ptr %.sroa.0.i, align 8
  %.sroa.0.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.copyload.i = load volatile i64, ptr %.sroa.0.i, align 8
  store volatile i64 %.sroa.0.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.copyload.i, ptr %i.au, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  %i.ax = load i64, ptr @top_level_pgt, align 8
  tail call void asm sideeffect "mov $0,%cr3", "r,~{memory},~{dirflag},~{fpsr},~{flags}"(i64 %i.ax) #8, !srcloc !19
  br label %split_large_pmd.exit.thread

split_large_pmd.exit.thread:                      ; preds = %bb.c, %split_large_pmd.exit, %bb.h
  %.0 = phi i32 [ 0, %bb.h ], [ -12, %split_large_pmd.exit ], [ -12, %bb.c ]
  ret i32 %.0
}

; Function Attrs: noredzone nounwind
define hidden range(i32 -12, 1) i32 @set_page_encrypted(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @set_clr_page_flags(i64 noundef %0, i64 noundef 0) #6
  ret i32 %i.a
}

; Function Attrs: noredzone nounwind
define hidden range(i32 -12, 1) i32 @set_page_non_present(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @set_clr_page_flags(i64 noundef %0, i64 noundef 1) #6
  ret i32 %i.a
}

; Function Attrs: noredzone nounwind
define hidden void @do_boot_page_fault(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 asm sideeffect "mov %cr2,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !srcloc !23 ; 2 uses
  %i.b = and i64 %i.a, -2097152                   ; 3 uses
  %i.c = and i64 %1, 13
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.e = load i64, ptr %i.d, align 8
  tail call void @__putstr(ptr noundef nonnull @.str.1) #5
  tail call void @__putstr(ptr noundef nonnull @.str.9) #5
  tail call void @__puthex(i64 noundef %1) #5
  tail call void @__putstr(ptr noundef nonnull @.str.10) #5
  tail call void @__puthex(i64 noundef range(i64 0, -2097151) %i.b) #5
  tail call void @__putstr(ptr noundef nonnull @.str.11) #5
  %i.f = sub i64 %i.e, ptrtoint (ptr @_head to i64)
  tail call void @__puthex(i64 noundef %i.f) #5
  tail call void @__putstr(ptr noundef nonnull @.str.5) #5
  tail call void @error(ptr noundef nonnull @.str.12) #7
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not.i = icmp ult i64 %i.a, -2097152
  br i1 %.not.i, label %bb.d, label %kernel_add_identity_map.exit

bb.d:                                             ; preds = %bb.c
  %2 = add i64 %i.b, 2097152
  %i.g = load i64, ptr @top_level_pgt, align 8
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = tail call i32 @kernel_ident_mapping_init(ptr noundef nonnull @mapping_info, ptr noundef %i.h, i64 noundef %i.b, i64 noundef %2) #6
  %.not8.i = icmp eq i32 %i.i, 0
  br i1 %.not8.i, label %kernel_add_identity_map.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @error(ptr noundef nonnull @.str) #7
  unreachable

kernel_add_identity_map.exit:                     ; preds = %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress nofree norecurse noredzone nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none)
define hidden void @do_boot_nmi_trap(ptr nofree noundef readnone captures(none) %0, i64 noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = load i32, ptr @spurious_nmi_count, align 4
  %i.b = add nsw i32 %i.a, 1
  store i32 %i.b, ptr @spurious_nmi_count, align 4
  ret void
}

; Function Attrs: noredzone nounwind
define internal fastcc range(i32 -12, 1) i32 @ident_pud_init(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(address) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %.sroa.0.i59 = alloca i64, align 8              ; 4 uses
  %.sroa.0.i.i53 = alloca i64, align 8            ; 4 uses
  %.sroa.0.i.i = alloca i64, align 8              ; 4 uses
  %.sroa.0.i = alloca i64, align 8                ; 4 uses
  %i.a = icmp ult i64 %2, %3
  br i1 %i.a, label %.lr.ph, label %ident_pmd_init.exit

.lr.ph:                                           ; preds = %bb.a
  %i.b = add i64 %3, -1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.loopexit
  %.04363 = phi i64 [ %2, %.lr.ph ], [ %i.o, %.loopexit ] ; 7 uses
  %i.h = lshr i64 %.04363, 30
  %i.i = and i64 %i.h, 511
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.i ; 3 uses
  %i.k = and i64 %.04363, -1073741824
  %i.l = add i64 %i.k, 1073741824
  %i.m = or i64 %.04363, 1073741823
  %i.n = icmp ult i64 %i.m, %i.b
  %i.o = select i1 %i.n, i64 %i.l, i64 %3         ; 7 uses
  %i.p = load i64, ptr %i.j, align 8              ; 4 uses
  %i.q = and i64 %i.p, 128
  %.not62 = icmp eq i64 %i.q, 0
  br i1 %.not62, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.r = load i8, ptr %i.c, align 8, !range !24, !noundef !25
  %i.s = icmp eq i8 %i.r, 0
  %i.t = or i64 %i.o, %.04363
  %i.u = and i64 %i.t, 1073741823
  %i.v = icmp ne i64 %i.u, 0
  %.not50 = or i1 %i.v, %i.s
  %.not47 = trunc i64 %i.p to i1
  %.not = or i1 %.not50, %.not47
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = load i64, ptr %i.d, align 8
  %i.x = sub i64 %.04363, %i.w
  %i.y = load i64, ptr %i.e, align 8
  %i.z = or i64 %i.x, %i.y
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  store i64 %i.z, ptr %.sroa.0.i, align 8
  %.sroa.0.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.copyload.i = load volatile i64, ptr %.sroa.0.i, align 8
  store volatile i64 %.sroa.0.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.copyload.i, ptr %i.j, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  br label %.loopexit

bb.e:                                             ; preds = %bb.c
  %i.aa = and i64 %i.p, 1
  %.not51 = icmp eq i64 %i.aa, 0
  br i1 %.not51, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = and i64 %i.p, 4503599627366400
  %i.ac = inttoptr i64 %i.ab to ptr
  %i.ad = and i64 %.04363, -2097152               ; 2 uses
  %i.ae = icmp ult i64 %i.ad, %i.o
  br i1 %i.ae, label %.lr.ph.i, label %.loopexit

.lr.ph.i:                                         ; preds = %bb.f, %bb.h
  %.010.i = phi i64 [ %i.ao, %bb.h ], [ %i.ad, %bb.f ] ; 3 uses
  %i.af = lshr exact i64 %.010.i, 21
  %i.ag = and i64 %i.af, 511
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.ag ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8
  %i.aj = and i64 %i.ai, 385
  %.not.i = icmp eq i64 %i.aj, 0
  br i1 %.not.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph.i
  %i.ak = load i64, ptr %i.d, align 8
  %i.al = sub i64 %.010.i, %i.ak
  %i.am = load i64, ptr %i.e, align 8
  %i.an = or i64 %i.al, %i.am
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i)
  store i64 %i.an, ptr %.sroa.0.i.i, align 8
  %.sroa.0.i.i.0..sroa.0.i.i.0..sroa.0.i.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.copyload.i.i = load volatile i64, ptr %.sroa.0.i.i, align 8
  store volatile i64 %.sroa.0.i.i.0..sroa.0.i.i.0..sroa.0.i.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.copyload.i.i, ptr %i.ah, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph.i
  %i.ao = add i64 %.010.i, 2097152                ; 2 uses
  %i.ap = icmp ult i64 %i.ao, %i.o
  br i1 %i.ap, label %.lr.ph.i, label %.loopexit, !llvm.loop !26

bb.i:                                             ; preds = %bb.e
  %i.aq = load ptr, ptr %0, align 8
  %i.ar = load ptr, ptr %i.f, align 8
  %i.as = tail call ptr %i.aq(ptr noundef %i.ar) #5 ; 3 uses
  %.not52 = icmp eq ptr %i.as, null
  br i1 %.not52, label %ident_pmd_init.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.at = and i64 %.04363, -2097152               ; 2 uses
  %i.au = icmp ult i64 %i.at, %i.o
  br i1 %i.au, label %.lr.ph.i54, label %ident_pmd_init.exit58

.lr.ph.i54:                                       ; preds = %bb.j, %bb.l
  %.010.i55 = phi i64 [ %i.be, %bb.l ], [ %i.at, %bb.j ] ; 3 uses
  %i.av = lshr exact i64 %.010.i55, 21
  %i.aw = and i64 %i.av, 511
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.aw ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8
  %i.az = and i64 %i.ay, 385
  %.not.i56 = icmp eq i64 %i.az, 0
  br i1 %.not.i56, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph.i54
  %i.ba = load i64, ptr %i.d, align 8
  %i.bb = sub i64 %.010.i55, %i.ba
  %i.bc = load i64, ptr %i.e, align 8
  %i.bd = or i64 %i.bb, %i.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i53)
  store i64 %i.bd, ptr %.sroa.0.i.i53, align 8
  %.sroa.0.i.i53.0..sroa.0.i.i53.0..sroa.0.i.i53.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.copyload.i.i57 = load volatile i64, ptr %.sroa.0.i.i53, align 8
  store volatile i64 %.sroa.0.i.i53.0..sroa.0.i.i53.0..sroa.0.i.i53.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.copyload.i.i57, ptr %i.ax, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i53)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph.i54
  %i.be = add i64 %.010.i55, 2097152              ; 2 uses
  %i.bf = icmp ult i64 %i.be, %i.o
  br i1 %i.bf, label %.lr.ph.i54, label %ident_pmd_init.exit58, !llvm.loop !26

ident_pmd_init.exit58:                            ; preds = %bb.l, %bb.j
  %i.bg = ptrtoint ptr %i.as to i64
  %i.bh = load i64, ptr %i.g, align 8
  %i.bi = or i64 %i.bh, %i.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i59)
  store i64 %i.bi, ptr %.sroa.0.i59, align 8
  %.sroa.0.i59.0..sroa.0.i59.0..sroa.0.i59.0..sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.copyload.i60 = load volatile i64, ptr %.sroa.0.i59, align 8
  store volatile i64 %.sroa.0.i59.0..sroa.0.i59.0..sroa.0.i59.0..sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.copyload.i60, ptr %i.j, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i59)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.h, %bb.b, %bb.d, %ident_pmd_init.exit58, %bb.f
  %i.bj = icmp ult i64 %i.o, %3
  br i1 %i.bj, label %bb.b, label %ident_pmd_init.exit, !llvm.loop !27

ident_pmd_init.exit:                              ; preds = %.loopexit, %bb.i, %bb.a
  %.2 = phi i32 [ 0, %bb.a ], [ -12, %bb.i ], [ 0, %.loopexit ]
  ret i32 %.2
}

; Function Attrs: noredzone
declare hidden void @__putstr(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone
declare hidden void @__puthex(i64 noundef) local_unnamed_addr #3

attributes #0 = { noredzone nounwind "min-legal-vector-width"="0" "no-builtins" "no-jump-tables"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+x87,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noredzone noreturn "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+x87,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" "tune-cpu"="generic" }
attributes #3 = { noredzone "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+x87,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse noredzone nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) "min-legal-vector-width"="0" "no-builtins" "no-jump-tables"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+x87,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" "tune-cpu"="generic" }
attributes #5 = { nobuiltin noredzone nounwind "no-builtins" }
attributes #6 = { nobuiltin noredzone "no-builtins" }
attributes #7 = { nobuiltin noredzone noreturn nounwind "no-builtins" }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 1, !"Code Model", i32 1}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!5 = distinct !{null, null, null, null}
end_hunk_0
