Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/mshv-cpu?download=true
inline.NumInlined: 129
inline.NumDeleted: 57
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumUnrolled: 24
begin_hunk_0_@load_regs:bb.a
  store i64 %i.gr, ptr %i.gs, align 8
  %i.gt = ptrtoint ptr %i.gl to i64
  %i.gu = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %i.gt, ptr %i.gu, align 8
  store <4 x i16> <i16 80, i16 6, i16 40, i16 96>, ptr %1, align 8
  %i.gv = call i32 @mshv_hvcall(i32 noundef %i.gf, ptr noundef nonnull %1) #11
  %i.gw = icmp slt i32 %i.gv, 0
  br i1 %i.gw, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void (ptr, ...) @error_report(ptr noundef nonnull @.str.2) #11
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.gx = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.gy = load i16, ptr %i.gx, align 2            ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.gy, 6
  br i1 %.not.i.i.i, label %mshv_get_special_regs_vp_page.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.gz = zext i16 %i.gy to i32
  call void (ptr, ...) @error_report(ptr noundef nonnull @.str.3, i64 noundef 6, i32 noundef %i.gz) #11
  br label %bb.g

mshv_get_special_regs_vp_page.exit.i:             ; preds = %bb.e
  %.sroa.5144.16.copyload.i.i = load i64, ptr %i.gl, align 8
  %.sroa.7.16..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.gl, i64 8
  %.sroa.7.16.copyload.i.i = load i32, ptr %.sroa.7.16..sroa_idx.i.i, align 8
  %.sroa.8.16..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.gl, i64 12
  %.sroa.8.16.copyload.i.i = load i16, ptr %.sroa.8.16..sroa_idx.i.i, align 4
  %.sroa.9.16..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.gl, i64 14
  %.sroa.9.16.copyload.i.i = load i16, ptr %.sroa.9.16..sroa_idx.i.i, align 2 ; 3 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gl, i64 16
  %.sroa.12145.48.copyload.i.i = load i64, ptr %i.ha, align 8
  %.sroa.14.48..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.gl, i64 24
  %.sroa.14.48.copyload.i.i = load i32, ptr %.sroa.14.48..sroa_idx.i.i, align 8
  %.sroa.15146.48..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.gl, i64 28
  %.sroa.15146.48.copyload.i.i = load i16, ptr %.sroa.15146.48..sroa_idx.i.i, align 4
  %.sroa.16.48..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.gl, i64 30
  %.sroa.16.48.copyload.i.i = load i16, ptr %.sroa.16.48..sroa_idx.i.i, align 2 ; 3 uses
  %.sroa.20.80..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.gl, i64 38
  %.sroa.20.80.copyload.i.i = load i16, ptr %.sroa.20.80..sroa_idx.i.i, align 2
  %.sroa.21147.80..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.gl, i64 40
  %.sroa.21147.80.copyload.i.i = load i64, ptr %.sroa.21147.80..sroa_idx.i.i, align 8
  %.sroa.25.112..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.gl, i64 54
  %.sroa.25.112.copyload.i.i = load i16, ptr %.sroa.25.112..sroa_idx.i.i, align 2
  %.sroa.26.112..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.gl, i64 56
  %.sroa.26.112.copyload.i.i = load i64, ptr %.sroa.26.112..sroa_idx.i.i, align 8
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gl, i64 64
  %.sroa.29149.144.copyload.i.i = load i64, ptr %i.hb, align 8
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gl, i64 80
  %.sroa.33151.176.copyload.i.i = load i64, ptr %i.hc, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #11
  %i.hd = getelementptr inbounds nuw i8, ptr %i.bk, i64 16976 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.hd, i8 noundef 0, i64 noundef 24, i1 noundef false) #11
  %i.he = getelementptr inbounds nuw i8, ptr %i.bk, i64 16984
  store i64 %.sroa.5144.16.copyload.i.i, ptr %i.he, align 8
  %i.hf = getelementptr inbounds nuw i8, ptr %i.bk, i64 16992
  store i32 %.sroa.7.16.copyload.i.i, ptr %i.hf, align 16
  %i.hg = zext i16 %.sroa.8.16.copyload.i.i to i32
  store i32 %i.hg, ptr %i.hd, align 16
  %rev16.i61.i.i = shl i16 %.sroa.9.16.copyload.i.i, 8 ; 2 uses
  %mask17.i62.i.i = and i16 %rev16.i61.i.i, -4352
  %i.hh = zext i16 %mask17.i62.i.i to i32
  %i.hi = lshr i16 %.sroa.9.16.copyload.i.i, 14
  %i.hj = and i16 %i.hi, 1
  %i.hk = zext nneg i16 %i.hj to i32
  %i.hl = shl nuw nsw i32 %i.hk, 22
  %i.hm = or disjoint i32 %i.hl, %i.hh
  %i.hn = and i16 %rev16.i61.i.i, 4096
  %i.ho = zext nneg i16 %i.hn to i32
  %i.hp = or disjoint i32 %i.hm, %i.ho
  %.mask18.i63.i.i = and i16 %.sroa.9.16.copyload.i.i, -20480
  %.zext19.i64.i.i = zext i16 %.mask18.i63.i.i to i32
  %i.hq = shl nuw nsw i32 %.zext19.i64.i.i, 8
  %i.hr = or disjoint i32 %i.hp, %i.hq
  %i.hs = getelementptr inbounds nuw i8, ptr %i.bk, i64 16996
  store i32 %i.hr, ptr %i.hs, align 4
  %i.ht = getelementptr inbounds nuw i8, ptr %i.bk, i64 16952 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ht, i8 noundef 0, i64 noundef 24, i1 noundef false) #11
  %i.hu = getelementptr inbounds nuw i8, ptr %i.bk, i64 16960
  store i64 %.sroa.12145.48.copyload.i.i, ptr %i.hu, align 16
  %i.hv = getelementptr inbounds nuw i8, ptr %i.bk, i64 16968
  store i32 %.sroa.14.48.copyload.i.i, ptr %i.hv, align 8
  %i.hw = zext i16 %.sroa.15146.48.copyload.i.i to i32
  store i32 %i.hw, ptr %i.ht, align 8
  %rev16.i65.i.i = shl i16 %.sroa.16.48.copyload.i.i, 8 ; 2 uses
  %mask17.i66.i.i = and i16 %rev16.i65.i.i, -4352
  %i.hx = zext i16 %mask17.i66.i.i to i32
  %i.hy = lshr i16 %.sroa.16.48.copyload.i.i, 14
  %i.hz = and i16 %i.hy, 1
  %i.ia = zext nneg i16 %i.hz to i32
  %i.ib = shl nuw nsw i32 %i.ia, 22
  %i.ic = or disjoint i32 %i.ib, %i.hx
  %i.id = and i16 %rev16.i65.i.i, 4096
  %i.ie = zext nneg i16 %i.id to i32
  %i.if = or disjoint i32 %i.ic, %i.ie
  %.mask18.i67.i.i = and i16 %.sroa.16.48.copyload.i.i, -20480
  %.zext19.i68.i.i = zext i16 %.mask18.i67.i.i to i32
  %i.ig = shl nuw nsw i32 %.zext19.i68.i.i, 8
  %i.ih = or disjoint i32 %i.if, %i.ig
  %i.ii = getelementptr inbounds nuw i8, ptr %i.bk, i64 16972
  store i32 %i.ih, ptr %i.ii, align 4
  %i.ij = getelementptr inbounds nuw i8, ptr %i.bk, i64 17000
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ij, i8 noundef 0, i64 noundef 24, i1 noundef false) #11
  %i.ik = getelementptr inbounds nuw i8, ptr %i.bk, i64 17008
  store i64 %.sroa.21147.80.copyload.i.i, ptr %i.ik, align 16
  %i.il = zext i16 %.sroa.20.80.copyload.i.i to i32
  %i.im = getelementptr inbounds nuw i8, ptr %i.bk, i64 17016
  store i32 %i.il, ptr %i.im, align 8
  %i.in = getelementptr inbounds nuw i8, ptr %i.bk, i64 17024
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.in, i8 noundef 0, i64 noundef 24, i1 noundef false) #11
  %i.io = getelementptr inbounds nuw i8, ptr %i.bk, i64 17032
  store i64 %.sroa.26.112.copyload.i.i, ptr %i.io, align 8
  %i.ip = zext i16 %.sroa.25.112.copyload.i.i to i32
  %i.iq = getelementptr inbounds nuw i8, ptr %i.bk, i64 17040
  store i32 %i.ip, ptr %i.iq, align 16
  %i.ir = getelementptr inbounds nuw i8, ptr %i.bk, i64 17064
  store i64 %.sroa.29149.144.copyload.i.i, ptr %i.ir, align 8
  %i.is = load ptr, ptr %i.bz, align 16
  %i.it = call i32 @cpu_set_apic_base(ptr noundef %i.is, i64 noundef %.sroa.33151.176.copyload.i.i) #11 ; 0 uses
  br label %mshv_get_registers_vp_page.exit

bb.g:                                             ; preds = %bb.f, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #11
  call void (ptr, ...) @error_report(ptr noundef nonnull @.str.32) #11
  call void (ptr, ...) @error_report(ptr noundef nonnull @.str.31) #11
  br label %mshv_get_registers_vp_page.exit

bb.h:                                             ; preds = %bb.b, %bb.a
  %i.iu = tail call fastcc i32 @get_standard_regs(ptr noundef %0)
  %i.iv = icmp slt i32 %i.iu, 0
  br i1 %i.iv, label %mshv_get_registers_vp_page.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.iw = tail call fastcc i32 @get_special_regs(ptr noundef %0)
  %. = tail call i32 @llvm.smin.i32(i32 %i.iw, i32 0)
  br label %mshv_get_registers_vp_page.exit

mshv_get_registers_vp_page.exit:                  ; preds = %bb.g, %mshv_get_special_regs_vp_page.exit.i, %bb.i, %bb.h
  %.0 = phi i32 [ %., %bb.i ], [ -1, %bb.h ], [ -1, %bb.g ], [ 0, %mshv_get_special_regs_vp_page.exit.i ]
  ret i32 %.0
}

declare i32 @decode_instruction_stream(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i1 @exec_instruction(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i64 @linear_addr(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @mshv_guest_mem_read(i64 noundef, ptr noundef, i64 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

declare i32 @address_space_rw(ptr noundef, i64 noundef, i64, ptr noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #9

declare i32 @mshv_guest_mem_write(i64 noundef, ptr noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal void @read_segment_descriptor(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.51, i32 noundef 31, ptr noundef nonnull @__func__.X86_CPU) #11
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16808
  %i.c = zext i32 %2 to i64
  %i.d = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %i.c ; 3 uses
  store i64 0, ptr %1, align 1
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 20 ; 8 uses
  %i.f = load i32, ptr %i.e, align 4
  %i.g = lshr i32 %i.f, 8
  %i.h = and i32 %i.g, 15
  %i.i = zext nneg i32 %i.h to i64
  %i.j = shl nuw nsw i64 %i.i, 40                 ; 2 uses
  store i64 %i.j, ptr %1, align 1
  %i.k = load i32, ptr %i.e, align 4
  %i.l = lshr i32 %i.k, 12
  %i.m = and i32 %i.l, 1
  %i.n = zext nneg i32 %i.m to i64
  %i.o = shl nuw nsw i64 %i.n, 44
  %i.p = or disjoint i64 %i.o, %i.j               ; 2 uses
  store i64 %i.p, ptr %1, align 1
  %i.q = load i32, ptr %i.e, align 4
  %i.r = lshr i32 %i.q, 13
  %i.s = and i32 %i.r, 3
  %i.t = zext nneg i32 %i.s to i64
  %i.u = shl nuw nsw i64 %i.t, 45
  %i.v = or disjoint i64 %i.p, %i.u               ; 2 uses
  store i64 %i.v, ptr %1, align 1
  %i.w = load i32, ptr %i.e, align 4
  %i.x = lshr i32 %i.w, 15
  %i.y = and i32 %i.x, 1
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = shl nuw nsw i64 %i.z, 47
  %i.ab = or disjoint i64 %i.v, %i.aa             ; 2 uses
  store i64 %i.ab, ptr %1, align 1
  %i.ac = load i32, ptr %i.e, align 4
  %i.ad = lshr i32 %i.ac, 20
  %i.ae = and i32 %i.ad, 1
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = shl nuw nsw i64 %i.af, 52
  %i.ah = or disjoint i64 %i.ab, %i.ag            ; 2 uses
  store i64 %i.ah, ptr %1, align 1
  %i.ai = load i32, ptr %i.e, align 4
  %i.aj = lshr i32 %i.ai, 21
  %i.ak = and i32 %i.aj, 1
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = shl nuw nsw i64 %i.al, 53
  %i.an = or disjoint i64 %i.ah, %i.am            ; 2 uses
  store i64 %i.an, ptr %1, align 1
  %i.ao = load i32, ptr %i.e, align 4
  %i.ap = lshr i32 %i.ao, 22
  %i.aq = and i32 %i.ap, 1
  %i.ar = zext nneg i32 %i.aq to i64
  %i.as = shl nuw nsw i64 %i.ar, 54
  %i.at = or disjoint i64 %i.an, %i.as            ; 3 uses
  store i64 %i.at, ptr %1, align 1
  %i.au = load i32, ptr %i.e, align 4
  %i.av = lshr i32 %i.au, 23
  %i.aw = and i32 %i.av, 1                        ; 2 uses
  %i.ax = zext nneg i32 %i.aw to i64
  %i.ay = shl nuw nsw i64 %i.ax, 55
  %i.az = or disjoint i64 %i.at, %i.ay            ; 2 uses
  store i64 %i.az, ptr %1, align 1
  %.not = icmp eq i32 %i.aw, 0
  %i.ba = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.bb = load i32, ptr %i.ba, align 8            ; 3 uses
  %i.bc = icmp ult i32 %i.bb, 1048576
  %or.cond = select i1 %.not, i1 %i.bc, i1 false  ; 2 uses
  %i.bd = lshr i32 %i.bb, 12
  %i.be = or i64 %i.at, 36028797018963968
  %i.bf = select i1 %or.cond, i64 %i.az, i64 %i.be
  %.0 = select i1 %or.cond, i32 %i.bb, i32 %i.bd  ; 2 uses
  %i.bg = and i32 %.0, 65535
  %i.bh = zext nneg i32 %i.bg to i64
  %i.bi = and i64 %i.bf, 9219148812692488192
  %i.bj = or disjoint i64 %i.bi, %i.bh
  %i.bk = lshr i32 %.0, 16
  %i.bl = zext nneg i32 %i.bk to i64
  %i.bm = shl nuw nsw i64 %i.bl, 48
  %i.bn = or disjoint i64 %i.bj, %i.bm            ; 2 uses
  store i64 %i.bn, ptr %1, align 1
  %i.bo = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.bp = load i64, ptr %i.bo, align 8            ; 2 uses
  %i.bq = shl i64 %i.bp, 32
  %i.br = and i64 %i.bq, -72057594037927936
  %i.bs = and i64 %i.bn, 72056494526365695
  %i.bt = or disjoint i64 %i.bs, %i.br
  %i.bu = shl i64 %i.bp, 16
  %i.bv = and i64 %i.bu, 1099511562240
  %i.bw = or disjoint i64 %i.bt, %i.bv
  store i64 %i.bw, ptr %1, align 1
  ret void
}

declare ptr @object_dynamic_cast_assert(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @g_list_length(ptr noundef) local_unnamed_addr #3

; Function Attrs: allocsize(0)
declare noalias ptr @g_malloc0(i64 noundef) local_unnamed_addr #7

declare ptr @g_list_nth_data(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @g_list_free(ptr noundef) local_unnamed_addr #3

declare void @cpu_x86_cpuid(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @g_list_append(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @type_register_static(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal void @mshv_cpu_accel_class_init(ptr noundef %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = tail call ptr @object_class_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.63, i32 noundef 29, ptr noundef nonnull @__func__.ACCEL_CPU_CLASS) #11
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store ptr @mshv_cpu_instance_init, ptr %i.b, align 8
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @mshv_cpu_instance_init(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.51, i32 noundef 31, ptr noundef nonnull @__func__.X86_CPU) #11
  tail call void @host_cpu_instance_init(ptr noundef %i.e) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  %.b.i = load i1, ptr @mshv_cpu_xsave_init.first, align 1
  br i1 %.b.i, label %mshv_cpu_xsave_init.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.a, align 4, !annotation !9
  store i32 0, ptr %i.b, align 4, !annotation !9
  store i32 0, ptr %i.c, align 4, !annotation !9
  store i32 0, ptr %i.d, align 4, !annotation !9
  store i1 true, ptr @mshv_cpu_xsave_init.first, align 1
  store i32 0, ptr @x86_ext_save_areas, align 16
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @x86_ext_save_areas, i64 48), align 16
  br label %bb.c

bb.c:                                             ; preds = %bb.h, %bb.b
  %indvars.iv.i = phi i64 [ 2, %bb.b ], [ %indvars.iv.next.i, %bb.h ] ; 3 uses
  %i.f = getelementptr inbounds nuw [48 x i8], ptr @x86_ext_save_areas, i64 %indvars.iv.i ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = trunc nuw nsw i64 %indvars.iv.i to i32
  call void @host_cpuid(i32 noundef 13, i32 noundef %i.i, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #11
  %i.j = load i32, ptr %i.a, align 4              ; 2 uses
  %.not8.i = icmp eq i32 %i.j, 0
  br i1 %.not8.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = load i32, ptr %i.g, align 4
  %i.l = icmp eq i32 %i.k, %i.j
  br i1 %i.l, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @__assert_fail(ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.8, i32 noundef 2226, ptr noundef nonnull @__PRETTY_FUNCTION__.mshv_cpu_xsave_init) #13
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.m = load i32, ptr %i.b, align 4
  store i32 %i.m, ptr %i.f, align 16
  %i.n = load i32, ptr %i.c, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i32 %i.n, ptr %i.o, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d, %bb.c
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 20
  br i1 %exitcond.not.i, label %mshv_cpu_xsave_init.exit, label %bb.c, !llvm.loop !28

mshv_cpu_xsave_init.exit:                         ; preds = %bb.h, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret void
}

declare ptr @object_class_dynamic_cast_assert(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @host_cpu_instance_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #10

attributes #0 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #6 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #7 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #8 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #9 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind }
attributes #12 = { nounwind willreturn memory(none) }
attributes #13 = { noreturn nounwind }
attributes #14 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!7 = !{!"llvm.loop.mustprogress"}
!8 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!9 = !{!"auto-init"}
!10 = distinct !{!10, !"LVerDomain"}
!11 = distinct !{!11, !10}
!12 = distinct !{!12, !10}
!13 = distinct !{!13, !7, !18, !19}
!14 = distinct !{!14, !7, !18}
!15 = distinct !{!15, !7}
!16 = !{!11}
!17 = !{!12}
!18 = !{!"llvm.loop.isvectorized", i32 1}
!19 = !{!"llvm.loop.unroll.runtime.disable"}
!20 = distinct !{!20, !7}
!21 = distinct !{!21, !7}
!22 = distinct !{!22, !7}
!23 = distinct !{!23, !7}
!24 = distinct !{!24, !7}
!25 = distinct !{!25, !7}
!26 = distinct !{!26, !7}
!27 = distinct !{!27, !7}
!28 = distinct !{!28, !7}
end_hunk_0
