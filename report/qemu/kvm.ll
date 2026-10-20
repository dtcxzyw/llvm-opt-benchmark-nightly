Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/kvm?download=true
inline.NumInlined: 610
inline.NumDeleted: 128
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 24
begin_hunk_0_@kvm_arch_on_sigbus_vcpu:bb.a
  br label %bb.p

bb.l:                                             ; preds = %kvm_mce_inject.exit
  call void (ptr, ...) @warn_report(ptr noundef nonnull @.str.19, ptr noundef nonnull %2, i64 noundef %i.ae, ptr noundef nonnull @.str.21) #29
  br label %bb.p

bb.m:                                             ; preds = %bb.e, %bb.d
  br i1 %i.d, label %.thread24, label %.thread

.thread24:                                        ; preds = %bb.m
  call void (ptr, ...) @warn_report(ptr noundef nonnull @.str.22, ptr noundef nonnull %2, ptr noundef nonnull @.str.21) #29
  br label %bb.o

bb.n:                                             ; preds = %bb.c
  br i1 %i.c, label %.thread, label %bb.o

.thread:                                          ; preds = %bb.m, %bb.n
  call fastcc void @hardware_memory_error(ptr noundef %2)
  unreachable

bb.o:                                             ; preds = %.thread24, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  store i8 0, ptr %3, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 1
  store i8 0, ptr %i.af, align 1
  call void @qapi_event_send_memory_failure(i32 noundef 0, i32 noundef 0, ptr noundef nonnull %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %bb.p

bb.p:                                             ; preds = %bb.k, %bb.l, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  ret void
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #10

declare i64 @qemu_ram_addr_from_host(ptr noundef) local_unnamed_addr #2

declare i32 @kvm_physical_memory_addr_from_host(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @kvm_hwpoison_page_add(i64 noundef) local_unnamed_addr #2

; Function Attrs: cold noreturn nounwind sspstrong uwtable
define internal fastcc void @hardware_memory_error(ptr noundef %0) unnamed_addr #11 {
bb.a:
  tail call fastcc void @emit_hypervisor_memory_failure(i32 noundef 2, i1 noundef zeroext true)
  tail call void (ptr, ...) @error_report(ptr noundef nonnull @.str.115, ptr noundef %0) #29
  tail call void @exit(i32 noundef 1) #30
  unreachable
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @emit_hypervisor_memory_failure(i32 noundef range(i32 0, 3) %0, i1 noundef zeroext %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.MemoryFailureFlags, align 1 ; 5 uses
  %i.a = zext i1 %1 to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  store i8 %i.a, ptr %2, align 1
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 1
  store i8 0, ptr %i.b, align 1
  call void @qapi_event_send_memory_failure(i32 noundef 0, i32 noundef %0, ptr noundef nonnull %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local range(i64 0, 4294967296) i64 @kvm_arch_vcpu_id(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.113, ptr noundef nonnull @.str.114, i32 noundef 31, ptr noundef nonnull @__func__.X86_CPU) #29
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32120
  %i.c = load i32, ptr %i.b, align 8
  %i.d = zext i32 %i.c to i64
  ret i64 %i.d
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noundef zeroext i1 @kvm_hyperv_expand_features(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store ptr null, ptr %i.a, align 8
  %i.b = load ptr, ptr @kvm_state, align 8
  %i.c = tail call i32 @kvm_check_extension(ptr noundef %i.b, i32 noundef 44) #29
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %hyperv_enabled.exit.thread78

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32016 ; 2 uses
  %i.f = load i32, ptr %i.e, align 16
  %.not.i = icmp eq i32 %i.f, -1
  br i1 %.not.i, label %bb.c, label %hyperv_enabled.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32032
  %i.h = load i64, ptr %i.g, align 16
  %.not3.i = icmp eq i64 %i.h, 0
  br i1 %.not3.i, label %hyperv_enabled.exit, label %hyperv_enabled.exit.thread

hyperv_enabled.exit:                              ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32040
  %i.j = load i8, ptr %i.i, align 8, !range !10, !noundef !11
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %hyperv_enabled.exit.thread, label %hyperv_enabled.exit.thread78

hyperv_enabled.exit.thread:                       ; preds = %bb.b, %bb.c, %hyperv_enabled.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.m = load ptr, ptr %i.l, align 8
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %hyperv_enabled.exit.thread
  %i.n = load ptr, ptr @kvm_state, align 8
  %i.o = tail call i32 @kvm_check_extension(ptr noundef %i.n, i32 noundef 191) #29
  %.not69 = icmp eq i32 %i.o, 0
  br i1 %.not69, label %hyperv_enabled.exit.thread78, label %bb.e

bb.e:                                             ; preds = %bb.d, %hyperv_enabled.exit.thread
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32040
  %i.q = load i8, ptr %i.p, align 8, !range !10, !noundef !11
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.f, label %.preheader

.preheader:                                       ; preds = %bb.e
  %i.s = getelementptr i8, ptr %0, i64 32032      ; 2 uses
  br label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.t = tail call fastcc i32 @hv_cpuid_get_host(ptr noundef nonnull %0, i32 noundef 1073741824, i32 noundef 3)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32048 ; 2 uses
  store i32 %i.t, ptr %i.u, align 16
  %i.v = tail call fastcc i32 @hv_cpuid_get_host(ptr noundef nonnull %0, i32 noundef 1073741824, i32 noundef 1)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32052
  store i32 %i.v, ptr %i.w, align 4
  %i.x = tail call fastcc i32 @hv_cpuid_get_host(ptr noundef nonnull %0, i32 noundef 1073741824, i32 noundef 2)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32056
  store i32 %i.x, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32024 ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = tail call ptr @g_realloc(ptr noundef %i.aa, i64 noundef 13) #29 ; 2 uses
  store ptr %i.ab, ptr %i.z, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.ab, ptr noundef nonnull align 16 dereferenceable(12) %i.u, i64 noundef 12, i1 noundef false) #29
  %i.ac = load ptr, ptr %i.z, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 12
  store i8 0, ptr %i.ad, align 1
  %i.ae = tail call fastcc i32 @hv_cpuid_get_host(ptr noundef nonnull %0, i32 noundef 1073741825, i32 noundef 0)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32060
  store i32 %i.ae, ptr %i.af, align 4
  %i.ag = tail call fastcc i32 @hv_cpuid_get_host(ptr noundef nonnull %0, i32 noundef 1073741825, i32 noundef 3)
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 32064
  store i32 %i.ag, ptr %i.ah, align 16
  %i.ai = tail call fastcc i32 @hv_cpuid_get_host(ptr noundef nonnull %0, i32 noundef 1073741825, i32 noundef 1)
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 32068
  store i32 %i.ai, ptr %i.aj, align 4
  %i.ak = tail call fastcc i32 @hv_cpuid_get_host(ptr noundef nonnull %0, i32 noundef 1073741825, i32 noundef 2)
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 32072
  store i32 %i.ak, ptr %i.al, align 8
  %i.am = tail call fastcc i32 @hv_cpuid_get_host(ptr noundef nonnull %0, i32 noundef 1073741826, i32 noundef 0)
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 32092
  store i32 %i.am, ptr %i.an, align 4
  %i.ao = tail call fastcc i32 @hv_cpuid_get_host(ptr noundef nonnull %0, i32 noundef 1073741826, i32 noundef 3)
  %i.ap = lshr i32 %i.ao, 16
  %i.aq = trunc nuw i32 %i.ap to i16
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 32096
  store i16 %i.aq, ptr %i.ar, align 16
  %i.as = tail call fastcc i32 @hv_cpuid_get_host(ptr noundef nonnull %0, i32 noundef 1073741826, i32 noundef 3)
  %i.at = trunc i32 %i.as to i16
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 32098
  store i16 %i.at, ptr %i.au, align 2
  %i.av = tail call fastcc i32 @hv_cpuid_get_host(ptr noundef nonnull %0, i32 noundef 1073741826, i32 noundef 1)
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 32100
  store i32 %i.av, ptr %i.aw, align 4
  %i.ax = tail call fastcc i32 @hv_cpuid_get_host(ptr noundef nonnull %0, i32 noundef 1073741826, i32 noundef 2)
  %i.ay = lshr i32 %i.ax, 24
  %i.az = trunc nuw i32 %i.ay to i8
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 32104
  store i8 %i.az, ptr %i.ba, align 8
  %i.bb = tail call fastcc i32 @hv_cpuid_get_host(ptr noundef nonnull %0, i32 noundef 1073741826, i32 noundef 2)
  %i.bc = and i32 %i.bb, 16777215
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 32108
  store i32 %i.bc, ptr %i.bd, align 4
  %i.be = tail call fastcc i32 @hv_cpuid_get_host(ptr noundef nonnull %0, i32 noundef 1073741829, i32 noundef 0)
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 33048
  store i32 %i.be, ptr %i.bf, align 8
  %i.bg = tail call fastcc i32 @hv_cpuid_get_host(ptr noundef nonnull %0, i32 noundef 1073741829, i32 noundef 3)
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 32076
  store i32 %i.bg, ptr %i.bh, align 4
  %i.bi = tail call fastcc i32 @hv_cpuid_get_host(ptr noundef nonnull %0, i32 noundef 1073741829, i32 noundef 1)
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 32080
  store i32 %i.bi, ptr %i.bj, align 16
  %i.bk = tail call fastcc i32 @hv_cpuid_get_host(ptr noundef nonnull %0, i32 noundef 1073741829, i32 noundef 2)
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 32084
  store i32 %i.bk, ptr %i.bl, align 4
  %i.bm = tail call fastcc i32 @hv_cpuid_get_host(ptr noundef nonnull %0, i32 noundef 1073741828, i32 noundef 3)
  store i32 %i.bm, ptr %i.e, align 16
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 32032 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %hyperv_feature_supported.exit.thread
  %indvars.iv101 = phi i64 [ 0, %bb.f ], [ %indvars.iv.next102, %hyperv_feature_supported.exit.thread ] ; 4 uses
  %i.bo = getelementptr inbounds nuw [48 x i8], ptr @kvm_hyperv_properties, i64 %indvars.iv101 ; 7 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bq = load i32, ptr %i.bp, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bs = load i32, ptr %i.br, align 16           ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 12
  %i.bu = load i32, ptr %i.bt, align 4
  %i.bv = tail call fastcc i32 @hv_cpuid_get_host(ptr noundef %0, i32 noundef %i.bq, i32 noundef %i.bu)
  %i.bw = and i32 %i.bv, %i.bs
  %.not18.i = icmp eq i32 %i.bw, %i.bs
  br i1 %.not18.i, label %bb.h, label %hyperv_feature_supported.exit.thread

bb.h:                                             ; preds = %bb.g
  %.not.1.not.i = icmp eq i64 %indvars.iv101, 9
  br i1 %.not.1.not.i, label %bb.i, label %hyperv_feature_supported.exit

bb.i:                                             ; preds = %bb.h
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bo, i64 20
  %i.by = load i32, ptr %i.bx, align 4
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bo, i64 28
  %i.ca = load i32, ptr %i.bz, align 4            ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.cc = load i32, ptr %i.cb, align 8
  %i.cd = tail call fastcc i32 @hv_cpuid_get_host(ptr noundef %0, i32 noundef %i.by, i32 noundef %i.cc)
  %i.ce = and i32 %i.cd, %i.ca
  %.not18.1.i = icmp eq i32 %i.ce, %i.ca
  br i1 %.not18.1.i, label %hyperv_feature_supported.exit, label %hyperv_feature_supported.exit.thread

hyperv_feature_supported.exit:                    ; preds = %bb.i, %bb.h
  %2 = getelementptr inbounds nuw i8, ptr %i.bo, i64 40
  %3 = load i8, ptr %2, align 8, !range !10, !noundef !11
  %4 = trunc nuw i8 %3 to i1
  br i1 %4, label %hyperv_feature_supported.exit.thread, label %bb.j

bb.j:                                             ; preds = %hyperv_feature_supported.exit
  %i.cf = shl nuw nsw i64 1, %indvars.iv101
  %i.cg = load i64, ptr %i.bn, align 16
  %i.ch = or i64 %i.cg, %i.cf
  store i64 %i.ch, ptr %i.bn, align 16
  br label %hyperv_feature_supported.exit.thread

hyperv_feature_supported.exit.thread:             ; preds = %bb.i, %bb.g, %hyperv_feature_supported.exit, %bb.j
  %indvars.iv.next102 = add nuw nsw i64 %indvars.iv101, 1 ; 2 uses
  %exitcond104.not = icmp eq i64 %indvars.iv.next102, 21
  br i1 %exitcond104.not, label %.loopexit, label %bb.g, !llvm.loop !23

bb.k:                                             ; preds = %.preheader, %hv_feature_check_deps.exit.thread
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %hv_feature_check_deps.exit.thread ] ; 6 uses
  %.val71.a = load i64, ptr %i.s, align 16
  %i.ci = shl nuw nsw i64 1, %indvars.iv
  %i.cj = and i64 %.val71.a, %i.ci
  %.not83 = icmp eq i64 %i.cj, 0
  br i1 %.not83, label %hv_feature_check_deps.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ck = getelementptr inbounds nuw [48 x i8], ptr @kvm_hyperv_properties, i64 %indvars.iv ; 8 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cm = load i32, ptr %i.cl, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %i.co = load i32, ptr %i.cn, align 16           ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ck, i64 12
  %i.cq = load i32, ptr %i.cp, align 4
  %i.cr = tail call fastcc i32 @hv_cpuid_get_host(ptr noundef nonnull %0, i32 noundef %i.cm, i32 noundef %i.cq)
  %i.cs = and i32 %i.cr, %i.co
  %.not18.i72 = icmp eq i32 %i.cs, %i.co
  br i1 %.not18.i72, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %.not.1.not.i74 = icmp eq i64 %indvars.iv, 9
  br i1 %.not.1.not.i74, label %bb.n, label %hyperv_feature_supported.exit76

bb.n:                                             ; preds = %bb.m
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ck, i64 20
  %i.cu = load i32, ptr %i.ct, align 4
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ck, i64 28
  %i.cw = load i32, ptr %i.cv, align 4            ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  %i.cy = load i32, ptr %i.cx, align 8
  %i.cz = tail call fastcc i32 @hv_cpuid_get_host(ptr noundef nonnull %0, i32 noundef %i.cu, i32 noundef %i.cy)
  %i.da = and i32 %i.cz, %i.cw
  %.not18.1.i75 = icmp eq i32 %i.da, %i.cw
  br i1 %.not18.1.i75, label %hyperv_feature_supported.exit76, label %bb.o

bb.o:                                             ; preds = %bb.l, %bb.n
  %i.db = getelementptr inbounds nuw [48 x i8], ptr @kvm_hyperv_properties, i64 %indvars.iv
  %i.dc = load ptr, ptr %i.db, align 16
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %1, ptr noundef nonnull @.str.18, i32 noundef 1530, ptr noundef nonnull @__func__.kvm_hyperv_expand_features, ptr noundef nonnull @.str.23, ptr noundef %i.dc) #29
  br label %hyperv_enabled.exit.thread78

hyperv_feature_supported.exit76:                  ; preds = %bb.n, %bb.m
  %i.dd = lshr i64 427775, %indvars.iv
  %.not14.i = trunc i64 %i.dd to i1
  br i1 %.not14.i, label %hv_feature_check_deps.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %hyperv_feature_supported.exit76
  %i.de = getelementptr inbounds nuw i8, ptr %i.ck, i64 32
  %i.df = load i64, ptr %i.de, align 16
  %.val.i = load i64, ptr %i.s, align 16
  br label %bb.p

bb.p:                                             ; preds = %bb.q, %.lr.ph.i
  %.015.i = phi i64 [ %i.df, %.lr.ph.i ], [ %i.dk, %bb.q ] ; 2 uses
  %i.dg = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %.015.i, i1 true) ; 2 uses
  %i.dh = shl nuw i64 1, %i.dg                    ; 2 uses
  %i.di = and i64 %i.dh, %.val.i
  %.not11.i = icmp eq i64 %i.di, 0
  br i1 %.not11.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dj = xor i64 %i.dh, -1
  %i.dk = and i64 %.015.i, %i.dj                  ; 2 uses
  %.not.i77 = icmp eq i64 %i.dk, 0
  br i1 %.not.i77, label %hv_feature_check_deps.exit.thread, label %bb.p, !llvm.loop !24

bb.r:                                             ; preds = %bb.p
  %i.dl = load ptr, ptr %i.ck, align 16
  %i.dm = getelementptr inbounds nuw [48 x i8], ptr @kvm_hyperv_properties, i64 %i.dg
  %i.dn = load ptr, ptr %i.dm, align 16
  call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.18, i32 noundef 1395, ptr noundef nonnull @__func__.hv_feature_check_deps, ptr noundef nonnull @.str.24, ptr noundef %i.dl, ptr noundef %i.dn) #29
  %i.do = load ptr, ptr %i.a, align 8
  call void @error_propagate(ptr noundef %1, ptr noundef %i.do) #29
  br label %hyperv_enabled.exit.thread78

hv_feature_check_deps.exit.thread:                ; preds = %bb.q, %hyperv_feature_supported.exit76, %bb.k
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 21
  br i1 %exitcond.not, label %.loopexit, label %bb.k, !llvm.loop !25

.loopexit:                                        ; preds = %hv_feature_check_deps.exit.thread, %hyperv_feature_supported.exit.thread
  %i.dp = getelementptr i8, ptr %0, i64 32032
  %.val70 = load i64, ptr %i.dp, align 16
  %i.dq = and i64 %.val70, 160
  %or.cond.not = icmp eq i64 %i.dq, 128
  br i1 %or.cond.not, label %bb.s, label %hyperv_enabled.exit.thread78

bb.s:                                             ; preds = %.loopexit
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %1, ptr noundef nonnull @.str.18, i32 noundef 1547, ptr noundef nonnull @__func__.kvm_hyperv_expand_features, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.127, ptr noundef nonnull @.str.125) #29
  br label %hyperv_enabled.exit.thread78

hyperv_enabled.exit.thread78:                     ; preds = %bb.a, %.loopexit, %bb.d, %hyperv_enabled.exit, %bb.s, %bb.r, %bb.o
  %.066 = phi i1 [ true, %bb.d ], [ false, %bb.s ], [ false, %bb.r ], [ false, %bb.o ], [ true, %hyperv_enabled.exit ], [ true, %bb.a ], [ true, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  ret i1 %.066
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @hv_cpuid_get_host(ptr noundef %0, i32 noundef range(i32 1, 0) %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @hv_cpuid_cache, align 8   ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.az

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @kvm_state, align 8
  %i.c = tail call i32 @kvm_check_extension(ptr noundef %i.b, i32 noundef 167) #29
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.t

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr @kvm_state, align 8
  %i.f = tail call i32 @kvm_check_extension(ptr noundef %i.e, i32 noundef 191) #29
  %i.g = icmp sgt i32 %i.f, 0                     ; 2 uses
  br i1 %i.g, label %.split.us.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.i = load ptr, ptr %i.h, align 8
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %bb.e, label %.split.i

bb.e:                                             ; preds = %bb.d
  tail call void @__assert_fail(ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.18, i32 noundef 1192, ptr noundef nonnull @__PRETTY_FUNCTION__.get_supported_hv_cpuid) #31
  unreachable

.split.us.i:                                      ; preds = %bb.c, %bb.i
  %.015.us.i = phi i32 [ %i.t, %bb.i ], [ 11, %bb.c ] ; 4 uses
  %i.j = mul i32 %.015.us.i, 40
  %i.k = add i32 %i.j, 8
  %i.l = sext i32 %i.k to i64
  %i.m = tail call noalias ptr @g_malloc0(i64 noundef %i.l) #32 ; 6 uses
  store i32 %.015.us.i, ptr %i.m, align 4
  %i.n = load ptr, ptr @kvm_state, align 8
  %i.o = tail call i32 (ptr, i64, ...) @kvm_ioctl(ptr noundef %i.n, i64 noundef 3221794497, ptr noundef nonnull %i.m) #29 ; 4 uses
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.h, label %bb.f

bb.f:                                             ; preds = %.split.us.i
  %i.q = icmp slt i32 %i.o, 0
  br i1 %i.q, label %bb.g, label %.split22.us.i

bb.g:                                             ; preds = %bb.f
  %i.r = icmp eq i32 %i.o, -7
  br i1 %i.r, label %bb.i, label %.split24.us.i

bb.h:                                             ; preds = %.split.us.i
  %i.s = load i32, ptr %i.m, align 4
  %.not.i.us.i = icmp ult i32 %i.s, %.015.us.i
  br i1 %.not.i.us.i, label %.split22.us.i, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  tail call void @g_free(ptr noundef nonnull %i.m) #29
  %i.t = add i32 %.015.us.i, 1
  br label %.split.us.i, !llvm.loop !26

.split.i:                                         ; preds = %bb.d, %bb.m
  %.015.i = phi i32 [ %i.ah, %bb.m ], [ 11, %bb.d ] ; 4 uses
  %i.u = mul i32 %.015.i, 40
  %i.v = add i32 %i.u, 8
  %i.w = sext i32 %i.v to i64
  %i.x = tail call noalias ptr @g_malloc0(i64 noundef %i.w) #32 ; 6 uses
  store i32 %.015.i, ptr %i.x, align 4
  %i.y = tail call i32 (ptr, i64, ...) @kvm_vcpu_ioctl(ptr noundef %0, i64 noundef 3221794497, ptr noundef nonnull %i.x) #29 ; 4 uses
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.split.i
  %i.aa = load i32, ptr %i.x, align 4
  %.not.i.i = icmp ult i32 %i.aa, %.015.i
  br i1 %.not.i.i, label %.split22.us.i, label %bb.m

bb.k:                                             ; preds = %.split.i
  %i.ab = icmp slt i32 %i.y, 0
  br i1 %i.ab, label %bb.l, label %.split22.us.i

bb.l:                                             ; preds = %bb.k
  %i.ac = icmp eq i32 %i.y, -7
  br i1 %i.ac, label %bb.m, label %.split24.us.i

.split24.us.i:                                    ; preds = %bb.l, %bb.g
  %.us-phi25.i = phi i32 [ %i.o, %bb.g ], [ %i.y, %bb.l ]
  %i.ad = load ptr, ptr @stderr, align 8
  %i.ae = sub i32 0, %.us-phi25.i
  %i.af = tail call ptr @strerror(i32 noundef %i.ae) #29
  %i.ag = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.ad, i32 noundef 1, ptr noundef nonnull @.str.118, ptr noundef %i.af) #29 ; 0 uses
  tail call void @exit(i32 noundef 1) #30
  unreachable

bb.m:                                             ; preds = %bb.l, %bb.j
  tail call void @g_free(ptr noundef nonnull %i.x) #29
  %i.ah = add i32 %.015.i, 1
  br label %.split.i, !llvm.loop !26

end_hunk_0
