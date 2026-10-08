Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/amd-pstate?download=true
inline.NumInlined: 137
inline.NumDeleted: 57
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@amd_pstate_epp_cpu_init:bb.a
  %i.ad = zext i32 %i.ac to i64
  %i.ae = mul nuw nsw i64 %i.ad, %.sroa.5.0.insert.ext
  %i.af = and i64 %.sroa.1.0.extract.shift.i, 255 ; 2 uses
  %i.ag = add nsw i64 %i.af, -1
  %i.ah = add nsw i64 %i.ag, %i.ae
  %i.ai = udiv i64 %i.ah, %i.af
  %i.aj = trunc i64 %i.ai to i32
  %i.ak = getelementptr i8, ptr %0, i64 40
  %i.al = getelementptr i8, ptr %0, i64 44        ; 2 uses
  store i32 %i.aj, ptr %i.al, align 4
  %i.am = getelementptr i8, ptr %i.i, i64 160
  %i.an = load i32, ptr %i.am, align 8
  store i32 %i.an, ptr %i.ak, align 8
  %i.ao = getelementptr i8, ptr %0, i64 704       ; 6 uses
  store ptr %i.i, ptr %i.ao, align 8
  %i.ap = call i32 @__SCT__amd_pstate_cppc_enable(ptr noundef %0) #18 ; 2 uses
  %.not67 = icmp eq i32 %i.ap, 0
  br i1 %.not67, label %bb.j, label %amd_pstate_set_dynamic_epp.exit.thread

bb.j:                                             ; preds = %amd_pstate_init_boost_support.exit.thread
  %i.aq = load i32, ptr %i.al, align 4
  %i.ar = getelementptr i8, ptr %0, i64 60
  store i32 %i.aq, ptr %i.ar, align 4
  %i.as = getelementptr i8, ptr %i.i, i64 232
  %i.at = load volatile i8, ptr %i.as, align 8, !range !12, !noundef !13
  %i.au = getelementptr i8, ptr %0, i64 642
  store i8 %i.at, ptr %i.au, align 2
  %i.av = load i8, ptr getelementptr inbounds nuw (i8, ptr @acpi_gbl_FADT, i64 45), align 1 ; 2 uses
  switch i8 %i.av, label %amd_pstate_acpi_pm_profile_server.exit [
    i8 4, label %amd_pstate_acpi_pm_profile_server.exit.thread
    i8 5, label %amd_pstate_acpi_pm_profile_server.exit.thread
    i8 7, label %amd_pstate_acpi_pm_profile_server.exit.thread
  ]

amd_pstate_acpi_pm_profile_server.exit:           ; preds = %bb.j
  %i.aw = add i8 %i.av, -9
  %.0.i71 = icmp ult i8 %i.aw, -8
  br i1 %.0.i71, label %amd_pstate_acpi_pm_profile_server.exit.thread, label %bb.k

amd_pstate_acpi_pm_profile_server.exit.thread:    ; preds = %bb.j, %bb.j, %bb.j, %amd_pstate_acpi_pm_profile_server.exit
  %i.ax = getelementptr i8, ptr %0, i64 68
  store i32 2, ptr %i.ax, align 4
  %i.ay = call zeroext i8 @__SCT__amd_pstate_get_epp(ptr noundef nonnull %i.i) #18 ; 3 uses
  %i.az = getelementptr i8, ptr %i.i, i64 242
  store i8 %i.ay, ptr %i.az, align 2
  %i.ba = getelementptr i8, ptr %i.i, i64 241
  store i8 %i.ay, ptr %i.ba, align 1
  br label %bb.l

bb.k:                                             ; preds = %amd_pstate_acpi_pm_profile_server.exit
  %i.bb = getelementptr i8, ptr %0, i64 68
  store i32 1, ptr %i.bb, align 4
  %i.bc = getelementptr i8, ptr %i.i, i64 241
  store i8 0, ptr %i.bc, align 1
  %i.bd = getelementptr i8, ptr %i.i, i64 242
  store i8 -128, ptr %i.bd, align 2
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %amd_pstate_acpi_pm_profile_server.exit.thread
  %.sink = phi i32 [ 3, %bb.k ], [ 5, %amd_pstate_acpi_pm_profile_server.exit.thread ]
  %i.be = phi i8 [ -128, %bb.k ], [ %i.ay, %amd_pstate_acpi_pm_profile_server.exit.thread ]
  %i.bf = getelementptr i8, ptr %i.i, i64 272
  store i32 %.sink, ptr %i.bf, align 8
  %i.bg = load i8, ptr @dynamic_epp, align 1, !range !12, !noundef !13
  %i.bh = trunc nuw i8 %i.bg to i1
  br i1 %i.bh, label %bb.m, label %bb.aa

bb.m:                                             ; preds = %bb.l
  %i.bi = load ptr, ptr %i.ao, align 8            ; 9 uses
  %i.bj = getelementptr i8, ptr %i.bi, i64 272
  %i.bk = load i32, ptr %i.bj, align 8            ; 2 uses
  switch i32 %i.bk, label %bb.p [
    i32 5, label %bb.q
    i32 0, label %bb.n
    i32 3, label %bb.o
  ]

bb.n:                                             ; preds = %bb.m
  br label %bb.q

bb.o:                                             ; preds = %bb.m
  %i.bl = call i32 @power_supply_is_system_supplied() #18
  %.not.i.i = icmp eq i32 %i.bl, 0
  %.0.in.in.v.i.i = select i1 %.not.i.i, i64 242, i64 241
  %.0.in.in.i.i = getelementptr i8, ptr %i.bi, i64 %.0.in.in.v.i.i
  %.0.in.i.i = load i8, ptr %.0.in.in.i.i, align 1
  br label %bb.q

bb.p:                                             ; preds = %bb.m
  %i.bm = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, i32 noundef %i.bk) #19 ; 0 uses
  br label %amd_pstate_set_dynamic_epp.exit.thread

bb.q:                                             ; preds = %bb.o, %bb.n, %bb.m
  %.025.i = phi i8 [ %.0.in.i.i, %bb.o ], [ -1, %bb.n ], [ 0, %bb.m ]
  %i.bn = call i32 @__SCT__amd_pstate_set_epp(ptr noundef %0, i8 noundef zeroext %.025.i) #18 ; 2 uses
  %.not.i72 = icmp eq i32 %i.bn, 0
  br i1 %.not.i72, label %bb.r, label %amd_pstate_set_dynamic_epp.exit.thread

bb.r:                                             ; preds = %bb.q
  %i.bo = load i32, ptr %i.bi, align 8
  %i.bp = call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.27, i32 noundef %i.bo) #18 ; 2 uses
  %i.bq = getelementptr i8, ptr %i.bi, i64 288    ; 2 uses
  store ptr %i.bp, ptr %i.bq, align 8
  %.not29.i = icmp eq ptr %i.bp, null
  br i1 %.not29.i, label %amd_pstate_set_dynamic_epp.exit.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.br = load i32, ptr %i.c, align 4
  %i.bs = call ptr @get_cpu_device(i32 noundef %i.br) #18
  %i.bt = load ptr, ptr %i.bq, align 8
  %i.bu = load ptr, ptr %i.ao, align 8
  %i.bv = call ptr @platform_profile_register(ptr noundef %i.bs, ptr noundef %i.bt, ptr noundef %i.bu, ptr noundef nonnull @amd_pstate_profile_ops) #18 ; 3 uses
  %i.bw = getelementptr i8, ptr %i.bi, i64 280
  store ptr %i.bv, ptr %i.bw, align 8
  %i.bx = icmp ugt ptr %i.bv, inttoptr (i64 -4096 to ptr)
  br i1 %i.bx, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.by = ptrtoint ptr %i.bv to i64
  %i.bz = trunc i64 %i.by to i32
  br label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.ca = getelementptr i8, ptr %i.bi, i64 241
  %i.cb = load i8, ptr %i.ca, align 1
  %i.cc = getelementptr i8, ptr %i.bi, i64 242
  %i.cd = load i8, ptr %i.cc, align 2
  %.not30.i = icmp eq i8 %i.cb, %i.cd
  br i1 %.not30.i, label %amd_pstate_set_dynamic_epp.exit.thread86, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ce = getelementptr i8, ptr %i.bi, i64 248    ; 2 uses
  store ptr @amd_pstate_power_supply_notifier, ptr %i.ce, align 8
  %i.cf = call i32 @power_supply_reg_notifier(ptr noundef %i.ce) #18 ; 2 uses
  %.not31.i = icmp eq i32 %i.cf, 0
  br i1 %.not31.i, label %amd_pstate_set_dynamic_epp.exit.thread86, label %bb.w

amd_pstate_set_dynamic_epp.exit.thread86:         ; preds = %bb.u, %bb.v
  %i.cg = getelementptr i8, ptr %i.bi, i64 243
  store i8 1, ptr %i.cg, align 1
  br label %bb.ab

bb.w:                                             ; preds = %bb.v, %bb.t
  %.026.i = phi i32 [ %i.bz, %bb.t ], [ %i.cf, %bb.v ]
  %i.ch = load ptr, ptr %i.ao, align 8            ; 4 uses
  %i.ci = getelementptr i8, ptr %i.ch, i64 248    ; 2 uses
  %i.cj = load ptr, ptr %i.ci, align 8
  %.not.i32.i = icmp eq ptr %i.cj, null
  br i1 %.not.i32.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @power_supply_unreg_notifier(ptr noundef %i.ci) #18
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.ck = getelementptr i8, ptr %i.ch, i64 280    ; 2 uses
  %i.cl = load ptr, ptr %i.ck, align 8            ; 2 uses
  %.not8.i.i = icmp eq ptr %i.cl, null
  br i1 %.not8.i.i, label %amd_pstate_clear_dynamic_epp.exit.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @platform_profile_remove(ptr noundef nonnull %i.cl) #18
  store ptr null, ptr %i.ck, align 8
  br label %amd_pstate_clear_dynamic_epp.exit.i

amd_pstate_clear_dynamic_epp.exit.i:              ; preds = %bb.z, %bb.y
  %i.cm = getelementptr i8, ptr %i.ch, i64 288
  %i.cn = load ptr, ptr %i.cm, align 8
  call void @kfree(ptr noundef %i.cn) #18
  %i.co = getelementptr i8, ptr %i.ch, i64 243
  store i8 0, ptr %i.co, align 1
  br label %amd_pstate_set_dynamic_epp.exit

bb.aa:                                            ; preds = %bb.l
  %i.cp = call i32 @__SCT__amd_pstate_set_epp(ptr noundef %0, i8 noundef zeroext %i.be) #18
  br label %amd_pstate_set_dynamic_epp.exit

amd_pstate_set_dynamic_epp.exit:                  ; preds = %amd_pstate_clear_dynamic_epp.exit.i, %bb.aa
  %.055 = phi i32 [ %i.cp, %bb.aa ], [ %.026.i, %amd_pstate_clear_dynamic_epp.exit.i ] ; 2 uses
  %.not68 = icmp eq i32 %.055, 0
  br i1 %.not68, label %bb.ab, label %amd_pstate_set_dynamic_epp.exit.thread

bb.ab:                                            ; preds = %amd_pstate_set_dynamic_epp.exit.thread86, %amd_pstate_set_dynamic_epp.exit
  %i.cq = load ptr, ptr %i.ao, align 8            ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i64 0, ptr %i.a, align 8, !annotation !10
  callbr void asm sideeffect "# ALT: oldinstr\0A771:\0A\09# ALT: oldinstr\0A771:\0A\09jmp 6f\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 3*32+21)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09jmp ${4:l}\0A775:\0A.popsection\0A\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ${0:c}\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09\0A775:\0A.popsection\0A.pushsection .altinstr_aux,\22ax\22\0A6:\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A testb $1, ${2:a}\0A jnz ${3:l}\0A jmp ${4:l}\0A.popsection\0A", "i,i,i,!i,!i,~{dirflag},~{fpsr},~{flags}"(i16 546, i32 4, ptr nonnull getelementptr inbounds nuw (i8, ptr @boot_cpu_data, i64 116)) #17
          to label %bb.ac [label %bb.ac, label %bb.ai], !srcloc !20

bb.ac:                                            ; preds = %bb.ab, %bb.ab
  %i.cr = load i32, ptr %i.cq, align 8
  %i.cs = call i32 @rdmsrq_on_cpu(i32 noundef %i.cr, i32 noundef -1073675595, ptr noundef nonnull %i.a) #18 ; 3 uses
  %.not.i76 = icmp eq i32 %i.cs, 0
  br i1 %.not.i76, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ct = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, i32 noundef %i.cs) #19 ; 0 uses
  br label %bb.ah

bb.ae:                                            ; preds = %bb.ac
  %i.cu = load i64, ptr %i.a, align 8             ; 3 uses
  %i.cv = getelementptr i8, ptr %i.cq, i64 128
  store volatile i64 %i.cu, ptr %i.cv, align 8
  %i.cw = trunc i64 %i.cu to i8
  %1 = trunc i64 %i.cu to i32
  %2 = and i32 %1, 255
  %i.cx = getelementptr i8, ptr %i.cq, i64 136
  %i.cy = getelementptr i8, ptr %i.cq, i64 139
  %i.cz = load i8, ptr %i.cy, align 1
  %3 = zext i8 %i.cz to i32
  %4 = icmp samesign ult i32 %2, %3
  br i1 %4, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.da = getelementptr i8, ptr %i.cq, i64 137
  %i.db = load i8, ptr %i.da, align 1             ; 2 uses
  %.val.i = load ptr, ptr %i.ao, align 8
  %i.dc = call fastcc i32 @amd_pstate_set_floor_perf(ptr %.val.i, i8 noundef zeroext %i.db) #20 ; 2 uses
  %.not25.i = icmp eq i32 %i.dc, 0
  br i1 %.not25.i, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.022.i = phi i8 [ %i.db, %bb.af ], [ %i.cw, %bb.ae ] ; 2 uses
  %i.dd = getelementptr i8, ptr %i.cq, i64 146
  store i8 %.022.i, ptr %i.dd, align 2
  %i.de = getelementptr i8, ptr %i.cq, i64 156
  %i.df = load i32, ptr %i.de, align 4
  %i.dg = load i64, ptr %i.cx, align 8
  %.sroa.1.0.extract.shift.i.i = lshr i64 %i.dg, 8
  %i.dh = zext i32 %i.df to i64
  %i.di = zext i8 %.022.i to i64
  %i.dj = mul nuw nsw i64 %i.dh, %i.di
  %i.dk = and i64 %.sroa.1.0.extract.shift.i.i, 255 ; 2 uses
  %i.dl = add nsw i64 %i.dj, -1
  %i.dm = add nsw i64 %i.dl, %i.dk
  %i.dn = udiv i64 %i.dm, %i.dk
  %i.do = trunc i64 %i.dn to i32
  %i.dp = getelementptr i8, ptr %i.cq, i64 168
  store i32 %i.do, ptr %i.dp, align 8
  br label %bb.ai

bb.ah:                                            ; preds = %bb.af, %bb.ad
  %.0.i75 = phi i32 [ %i.cs, %bb.ad ], [ %i.dc, %bb.af ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %i.g, ptr noundef nonnull @.str.19, i32 noundef %.0.i75) #19
  br label %amd_pstate_set_dynamic_epp.exit.thread

bb.ai:                                            ; preds = %bb.ag, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %i.dq = load ptr, ptr @current_pstate_driver, align 8
  %i.dr = getelementptr i8, ptr %i.dq, i64 80
  store ptr null, ptr %i.dr, align 8
  br label %bb.aj

amd_pstate_set_dynamic_epp.exit.thread:           ; preds = %bb.r, %bb.q, %bb.p, %amd_pstate_init_boost_support.exit, %bb.ah, %bb.b, %amd_pstate_init_prefcore.exit, %amd_pstate_init_boost_support.exit.thread, %amd_pstate_set_dynamic_epp.exit
  %.1 = phi i32 [ %i.k, %bb.b ], [ %i.s, %amd_pstate_init_prefcore.exit ], [ -5, %amd_pstate_init_boost_support.exit ], [ %i.ap, %amd_pstate_init_boost_support.exit.thread ], [ %.055, %amd_pstate_set_dynamic_epp.exit ], [ %.0.i75, %bb.ah ], [ -12, %bb.r ], [ %i.bn, %bb.q ], [ -95, %bb.p ] ; 2 uses
  %i.ds = load i32, ptr %i.c, align 4
  %i.dt = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %i.ds, i32 noundef %.1) #19 ; 0 uses
  call void @kfree(ptr noundef nonnull %i.i) #18
  %i.du = getelementptr i8, ptr %0, i64 704
  store ptr null, ptr %i.du, align 8
  br label %bb.aj

bb.aj:                                            ; preds = %_kzalloc_noprof.exit, %bb.a, %amd_pstate_set_dynamic_epp.exit.thread, %bb.ai
  %.0 = phi i32 [ %.1, %amd_pstate_set_dynamic_epp.exit.thread ], [ 0, %bb.ai ], [ -19, %bb.a ], [ -12, %_kzalloc_noprof.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i32 -22, 1) i32 @amd_pstate_verify(ptr nofree noundef captures(none) %0) #1 align 16 prefalign(16) {
bb.a:
  %.sroa.0.sroa.0 = alloca i48, align 8           ; 4 uses
  %.sroa.5 = alloca i8, align 2                   ; 4 uses
  %.sroa.7 = alloca i8, align 1                   ; 4 uses
  %i.a = getelementptr i8, ptr %0, i64 28         ; 4 uses
  %i.b = load i32, ptr %i.a, align 4
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %cpufreq_verify_within_cpu_limits.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 24
  %i.e = load i32, ptr %i.d, align 8
  %i.f = tail call ptr @cpufreq_cpu_get(i32 noundef %i.e) #18 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %__free_put_cpufreq_policy.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %i.f, i64 704
  %i.h = load ptr, ptr %i.g, align 8              ; 5 uses
  %i.i = getelementptr i8, ptr %i.h, i64 136
  %.sroa.0.sroa.0.0.copyload = load volatile i48, ptr %i.i, align 8 ; 2 uses
  store volatile i48 %.sroa.0.sroa.0.0.copyload, ptr %.sroa.0.sroa.0, align 8
  %.sroa.5.0..sroa_idx = getelementptr i8, ptr %i.h, i64 142
  %.sroa.5.0.copyload = load volatile i8, ptr %.sroa.5.0..sroa_idx, align 2 ; 3 uses
  store volatile i8 %.sroa.5.0.copyload, ptr %.sroa.5, align 2
  %.sroa.7.0..sroa_idx = getelementptr i8, ptr %i.h, i64 143
  %.sroa.7.0.copyload = load volatile i8, ptr %.sroa.7.0..sroa_idx, align 1
  store volatile i8 %.sroa.7.0.copyload, ptr %.sroa.7, align 1
  %.not12 = icmp eq i8 %.sroa.5.0.copyload, 0
  br i1 %.not12, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr i8, ptr %i.h, i64 156
  %i.k = load i32, ptr %i.j, align 4
  %.sroa.5.0.insert.ext = zext i8 %.sroa.5.0.copyload to i64
  %.sroa.0.0.insert.ext = zext i48 %.sroa.0.sroa.0.0.copyload to i64
  %.sroa.1.0.extract.shift.i = lshr i64 %.sroa.0.0.insert.ext, 8
  %i.l = zext i32 %i.k to i64
  %i.m = mul nuw nsw i64 %i.l, %.sroa.5.0.insert.ext
  %i.n = and i64 %.sroa.1.0.extract.shift.i, 255  ; 2 uses
  %i.o = add nsw i64 %i.n, -1
  %i.p = add nsw i64 %i.o, %i.m
  %i.q = udiv i64 %i.p, %i.n
  %i.r = trunc i64 %i.q to i32
  br label %__free_put_cpufreq_policy.exit.thread

bb.e:                                             ; preds = %bb.c
  %i.s = getelementptr i8, ptr %i.h, i64 164
  %i.t = load i32, ptr %i.s, align 4
  br label %__free_put_cpufreq_policy.exit.thread

__free_put_cpufreq_policy.exit.thread:            ; preds = %bb.d, %bb.e
  %storemerge = phi i32 [ %i.t, %bb.e ], [ %i.r, %bb.d ]
  store i32 %storemerge, ptr %i.a, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  tail call void @cpufreq_cpu_put(ptr noundef nonnull %i.f) #18
  br label %cpufreq_verify_within_cpu_limits.exit

__free_put_cpufreq_policy.exit:                   ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  br label %bb.f

cpufreq_verify_within_cpu_limits.exit:            ; preds = %__free_put_cpufreq_policy.exit.thread, %bb.a
  %i.u = getelementptr i8, ptr %0, i64 4
  %i.v = load i32, ptr %i.u, align 4              ; 2 uses
  %i.w = load i32, ptr %0, align 8                ; 2 uses
  %i.x = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %i.y = load i32, ptr %i.x, align 8              ; 2 uses
  %.not.i.i = icmp ult i32 %i.y, %i.w
  %i.z = tail call i32 @llvm.umax.i32(i32 %i.y, i32 %i.v)
  %i.aa = select i1 %.not.i.i, i32 %i.z, i32 %i.w ; 3 uses
  store i32 %i.aa, ptr %i.x, align 8
  %i.ab = load i32, ptr %i.a, align 4             ; 2 uses
  %.not35.i.i = icmp ult i32 %i.ab, %i.aa
  %i.ac = tail call i32 @llvm.umax.i32(i32 %i.ab, i32 %i.v)
  %i.ad = select i1 %.not35.i.i, i32 %i.ac, i32 %i.aa
  store i32 %i.ad, ptr %i.a, align 4
  br label %bb.f

bb.f:                                             ; preds = %__free_put_cpufreq_policy.exit, %cpufreq_verify_within_cpu_limits.exit
  %.1 = phi i32 [ 0, %cpufreq_verify_within_cpu_limits.exit ], [ -22, %__free_put_cpufreq_policy.exit ]
  ret i32 %.1
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @amd_pstate_epp_set_policy(ptr noundef %0) #1 align 16 prefalign(16) {
bb.a:
  %.sroa.0.i = alloca i32, align 8                ; 3 uses
  %.sroa.4.i = alloca i8, align 4                 ; 3 uses
  %.sroa.5.i = alloca i8, align 1                 ; 3 uses
  %.sroa.6.i = alloca i16, align 2                ; 3 uses
  %i.a = getelementptr i8, ptr %0, i64 40
  %i.b = load i32, ptr %i.a, align 8
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 704        ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %0, i64 68
  %i.f = load i32, ptr %i.e, align 4
  %i.g = getelementptr i8, ptr %i.d, i64 236
  store i32 %i.f, ptr %i.g, align 4
  %i.h = load ptr, ptr %i.c, align 8              ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  tail call fastcc void @amd_pstate_update_min_max_limit(ptr noundef %0) #20, !srcloc !23
  %i.i = getelementptr i8, ptr %i.h, i64 236
  %i.j = load i32, ptr %i.i, align 4
  %i.k = icmp eq i32 %i.j, 2
  br i1 %i.k, label %amd_pstate_epp_update_limit.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr i8, ptr %i.h, i64 120
  %i.m = load i64, ptr %i.l, align 8
  %i.n = lshr i64 %i.m, 24
  %i.o = trunc i64 %i.n to i8
  br label %amd_pstate_epp_update_limit.exit

amd_pstate_epp_update_limit.exit:                 ; preds = %bb.b, %bb.c
  %.0.i = phi i8 [ %i.o, %bb.c ], [ 0, %bb.b ]
  %i.p = getelementptr i8, ptr %i.h, i64 136
  %.sroa.0.0.copyload.i = load volatile i32, ptr %i.p, align 8
  store volatile i32 %.sroa.0.0.copyload.i, ptr %.sroa.0.i, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr i8, ptr %i.h, i64 140
  %.sroa.4.0.copyload.i = load volatile i8, ptr %.sroa.4.0..sroa_idx.i, align 4 ; 2 uses
  store volatile i8 %.sroa.4.0.copyload.i, ptr %.sroa.4.i, align 4
  %.sroa.5.0..sroa_idx.i = getelementptr i8, ptr %i.h, i64 141
  %.sroa.5.0.copyload.i = load volatile i8, ptr %.sroa.5.0..sroa_idx.i, align 1 ; 2 uses
  store volatile i8 %.sroa.5.0.copyload.i, ptr %.sroa.5.i, align 1
end_hunk_0
begin_hunk_1_@amd_get_highest_perf

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @sched_update_asym_prefer_cpu(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @refresh_frequency_limits(ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @freq_qos_update_request(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal noundef i32 @amd_pstate_cpu_init(ptr noundef %0) #1 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %.sroa.0.sroa.0 = alloca i24, align 8           ; 3 uses
  %.sroa.5 = alloca i8, align 1                   ; 3 uses
  %.sroa.6 = alloca i32, align 4                  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  %i.c = getelementptr i8, ptr %0, i64 28         ; 6 uses
  %i.d = load i32, ptr %i.c, align 4
  %i.e = tail call i32 @wrmsrq_on_cpu(i32 noundef %i.d, i32 noundef -1073676190, i64 noundef 0) #18 ; 0 uses
  %i.f = load i32, ptr %i.c, align 4
  %i.g = tail call ptr @get_cpu_device(i32 noundef %i.f) #18 ; 4 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.ab, label %_kzalloc_noprof.exit

_kzalloc_noprof.exit:                             ; preds = %bb.a
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @kmalloc_caches, i64 72), align 8
  %i.i = tail call noalias align 8 dereferenceable_or_null(296) ptr @__kmalloc_cache_noprof(ptr noundef %i.h, i32 noundef 3520, i64 noundef range(i64 -1, 297) 296) #23 ; 20 uses
  %.not69 = icmp eq ptr %i.i, null
  br i1 %.not69, label %bb.ab, label %bb.b

bb.b:                                             ; preds = %_kzalloc_noprof.exit
  %i.j = load i32, ptr %i.c, align 4
  store i32 %i.j, ptr %i.i, align 8
  %i.k = tail call i32 @__SCT__amd_pstate_init_perf(ptr noundef nonnull %i.i) #18 ; 2 uses
  %.not70 = icmp eq i32 %i.k, 0
  br i1 %.not70, label %bb.c, label %bb.aa

bb.c:                                             ; preds = %bb.b
  %i.l = load i8, ptr @amd_pstate_prefcore, align 1, !range !12, !noundef !13
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.d, label %amd_pstate_init_prefcore.exit

bb.d:                                             ; preds = %bb.c
  callbr void asm sideeffect "# ALT: oldinstr\0A771:\0A\09# ALT: oldinstr\0A771:\0A\09jmp 6f\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 3*32+21)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09jmp ${4:l}\0A775:\0A.popsection\0A\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ${0:c}\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09\0A775:\0A.popsection\0A.pushsection .altinstr_aux,\22ax\22\0A6:\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A testb $1, ${2:a}\0A jnz ${3:l}\0A jmp ${4:l}\0A.popsection\0A", "i,i,i,!i,!i,~{dirflag},~{fpsr},~{flags}"(i16 679, i32 128, ptr nonnull getelementptr inbounds nuw (i8, ptr @boot_cpu_data, i64 132)) #17
          to label %_static_cpu_has.exit.i [label %_static_cpu_has.exit.i, label %_static_cpu_has.exit.i], !srcloc !20

_static_cpu_has.exit.i:                           ; preds = %bb.d, %bb.d, %bb.d
  %i.n = getelementptr i8, ptr %i.i, i64 233
  store i8 1, ptr %i.n, align 1
  %i.o = getelementptr i8, ptr %i.i, i64 144
  %i.p = load volatile i8, ptr %i.o, align 8
  %i.q = zext i8 %i.p to i32
  %i.r = load i32, ptr %i.i, align 8
  tail call void @sched_set_itmt_core_prio(i32 noundef %i.q, i32 noundef %i.r) #18
  br label %amd_pstate_init_prefcore.exit

amd_pstate_init_prefcore.exit:                    ; preds = %bb.c, %_static_cpu_has.exit.i
  %i.s = tail call fastcc i32 @amd_pstate_init_freq(ptr noundef %i.i) #20, !srcloc !34 ; 2 uses
  %.not71 = icmp eq i32 %i.s, 0
  br i1 %.not71, label %bb.e, label %bb.aa

bb.e:                                             ; preds = %amd_pstate_init_prefcore.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  store i64 0, ptr %i.b, align 8, !annotation !10
  callbr void asm sideeffect "# ALT: oldinstr\0A771:\0A\09# ALT: oldinstr\0A771:\0A\09jmp 6f\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 3*32+21)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09jmp ${4:l}\0A775:\0A.popsection\0A\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ${0:c}\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09\0A775:\0A.popsection\0A.pushsection .altinstr_aux,\22ax\22\0A6:\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A testb $1, ${2:a}\0A jnz ${3:l}\0A jmp ${4:l}\0A.popsection\0A", "i,i,i,!i,!i,~{dirflag},~{fpsr},~{flags}"(i16 226, i32 4, ptr nonnull getelementptr inbounds nuw (i8, ptr @boot_cpu_data, i64 76)) #17
          to label %bb.f [label %bb.f, label %amd_pstate_init_boost_support.exit.thread85], !srcloc !20

bb.f:                                             ; preds = %bb.e, %bb.e
  %i.t = load i32, ptr %i.i, align 8
  %i.u = call i32 @rdmsrq_on_cpu(i32 noundef %i.t, i32 noundef -1073676267, ptr noundef nonnull %i.b) #18
  %.not.i = icmp eq i32 %i.u, 0
  br i1 %.not.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.b.i = load i1, ptr @amd_pstate_init_boost_support.__already_done, align 1
  br i1 %.b.i, label %amd_pstate_init_boost_support.exit, label %bb.h, !prof !21

bb.h:                                             ; preds = %bb.g
  store i1 true, ptr @amd_pstate_init_boost_support.__already_done, align 1
  %i.v = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25) #19 ; 0 uses
  br label %amd_pstate_init_boost_support.exit

bb.i:                                             ; preds = %bb.f
  %i.w = load i64, ptr %i.b, align 8
  %i.x = and i64 %i.w, 33554432
  %.not12.i = icmp eq i64 %i.x, 0
  br i1 %.not12.i, label %amd_pstate_init_boost_support.exit.thread85, label %amd_pstate_init_boost_support.exit.thread

amd_pstate_init_boost_support.exit.thread85:      ; preds = %bb.i, %bb.e
  %.sink.i.ph = phi i8 [ 0, %bb.e ], [ 1, %bb.i ]
  %i.y = getelementptr i8, ptr %i.i, i64 232
  store i8 %.sink.i.ph, ptr %i.y, align 8
  br label %amd_pstate_init_boost_support.exit.thread

amd_pstate_init_boost_support.exit:               ; preds = %bb.g, %bb.h
  %i.z = getelementptr i8, ptr %i.i, i64 232
  store i8 0, ptr %i.z, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  br label %bb.aa

amd_pstate_init_boost_support.exit.thread:        ; preds = %bb.i, %amd_pstate_init_boost_support.exit.thread85
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  %i.aa = load i32, ptr %i.c, align 4
  %i.ab = call i32 @cppc_get_transition_latency(i32 noundef %i.aa) #18 ; 2 uses
  %i.ac = icmp slt i32 %i.ab, 0
  %..i77 = select i1 %i.ac, i32 20000, i32 %i.ab
  %i.ad = getelementptr i8, ptr %0, i64 40        ; 2 uses
  %i.ae = getelementptr i8, ptr %0, i64 48
  store i32 %..i77, ptr %i.ae, align 8
  %i.af = load i32, ptr %i.c, align 4
  %i.ag = call i32 @cppc_get_transition_latency(i32 noundef %i.af) #18 ; 2 uses
  %i.ah = icmp slt i32 %i.ag, 0
  br i1 %i.ah, label %bb.j, label %bb.l

bb.j:                                             ; preds = %amd_pstate_init_boost_support.exit.thread
  callbr void asm sideeffect "# ALT: oldinstr\0A771:\0A\09# ALT: oldinstr\0A771:\0A\09jmp 6f\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 3*32+21)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09jmp ${4:l}\0A775:\0A.popsection\0A\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ${0:c}\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09\0A775:\0A.popsection\0A.pushsection .altinstr_aux,\22ax\22\0A6:\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A testb $1, ${2:a}\0A jnz ${3:l}\0A jmp ${4:l}\0A.popsection\0A", "i,i,i,!i,!i,~{dirflag},~{fpsr},~{flags}"(i16 677, i32 32, ptr nonnull getelementptr inbounds nuw (i8, ptr @boot_cpu_data, i64 132)) #17
          to label %bb.k [label %bb.k, label %amd_pstate_get_transition_delay_us.exit], !srcloc !20

bb.k:                                             ; preds = %bb.j, %bb.j
  br label %amd_pstate_get_transition_delay_us.exit

bb.l:                                             ; preds = %amd_pstate_init_boost_support.exit.thread
  %i.ai = udiv i32 %i.ag, 1000
  br label %amd_pstate_get_transition_delay_us.exit

amd_pstate_get_transition_delay_us.exit:          ; preds = %bb.j, %bb.k, %bb.l
  %.0.i79 = phi i32 [ %i.ai, %bb.l ], [ 600, %bb.k ], [ 1000, %bb.j ]
  %i.aj = getelementptr i8, ptr %0, i64 636
  store i32 %.0.i79, ptr %i.aj, align 4
  %i.ak = getelementptr i8, ptr %i.i, i64 136
  %.sroa.0.sroa.0.0.copyload = load volatile i24, ptr %i.ak, align 8 ; 2 uses
  store volatile i24 %.sroa.0.sroa.0.0.copyload, ptr %.sroa.0.sroa.0, align 8
  %.sroa.5.0..sroa_idx = getelementptr i8, ptr %i.i, i64 139
  %.sroa.5.0.copyload = load volatile i8, ptr %.sroa.5.0..sroa_idx, align 1 ; 2 uses
  store volatile i8 %.sroa.5.0.copyload, ptr %.sroa.5, align 1
  %.sroa.6.0..sroa_idx = getelementptr i8, ptr %i.i, i64 140
  %.sroa.6.0.copyload = load volatile i32, ptr %.sroa.6.0..sroa_idx, align 4
  store volatile i32 %.sroa.6.0.copyload, ptr %.sroa.6, align 4
  %i.al = getelementptr i8, ptr %i.i, i64 156
  %i.am = load i32, ptr %i.al, align 4
  %.sroa.5.0.insert.ext = zext i8 %.sroa.5.0.copyload to i64
  %.sroa.0.0.insert.ext = zext i24 %.sroa.0.sroa.0.0.copyload to i64
  %.sroa.1.0.extract.shift.i = lshr i64 %.sroa.0.0.insert.ext, 8
  %i.an = zext i32 %i.am to i64
  %i.ao = mul nuw nsw i64 %i.an, %.sroa.5.0.insert.ext
  %i.ap = and i64 %.sroa.1.0.extract.shift.i, 255 ; 2 uses
  %i.aq = add nsw i64 %i.ap, -1
  %i.ar = add nsw i64 %i.aq, %i.ao
  %i.as = udiv i64 %i.ar, %i.ap
  %i.at = trunc i64 %i.as to i32
  %i.au = getelementptr i8, ptr %0, i64 44        ; 2 uses
  store i32 %i.at, ptr %i.au, align 4
  %i.av = getelementptr i8, ptr %i.i, i64 160
  %i.aw = load i32, ptr %i.av, align 8
  store i32 %i.aw, ptr %i.ad, align 8
  %i.ax = getelementptr i8, ptr %0, i64 704       ; 3 uses
  store ptr %i.i, ptr %i.ax, align 8
  %i.ay = call i32 @__SCT__amd_pstate_cppc_enable(ptr noundef %0) #18 ; 2 uses
  %.not73 = icmp eq i32 %i.ay, 0
  br i1 %.not73, label %bb.m, label %bb.aa

bb.m:                                             ; preds = %amd_pstate_get_transition_delay_us.exit
  %i.az = getelementptr i8, ptr %i.i, i64 232
  %i.ba = load volatile i8, ptr %i.az, align 8, !range !12, !noundef !13
  %i.bb = getelementptr i8, ptr %0, i64 642
  store i8 %i.ba, ptr %i.bb, align 2
  %i.bc = load i32, ptr %i.au, align 4
  %i.bd = getelementptr i8, ptr %0, i64 60
  store i32 %i.bc, ptr %i.bd, align 4
  callbr void asm sideeffect "# ALT: oldinstr\0A771:\0A\09# ALT: oldinstr\0A771:\0A\09jmp 6f\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 3*32+21)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09jmp ${4:l}\0A775:\0A.popsection\0A\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ${0:c}\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09\0A775:\0A.popsection\0A.pushsection .altinstr_aux,\22ax\22\0A6:\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A testb $1, ${2:a}\0A jnz ${3:l}\0A jmp ${4:l}\0A.popsection\0A", "i,i,i,!i,!i,~{dirflag},~{fpsr},~{flags}"(i16 443, i32 8, ptr nonnull getelementptr inbounds nuw (i8, ptr @boot_cpu_data, i64 103)) #17
          to label %bb.n [label %bb.n, label %_static_cpu_has.exit], !srcloc !20

bb.n:                                             ; preds = %bb.m, %bb.m
  %i.be = getelementptr i8, ptr %0, i64 632
  store i8 1, ptr %i.be, align 8
  br label %_static_cpu_has.exit

_static_cpu_has.exit:                             ; preds = %bb.m, %bb.n
  %i.bf = load ptr, ptr %i.ax, align 8            ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i64 0, ptr %i.a, align 8, !annotation !10
  callbr void asm sideeffect "# ALT: oldinstr\0A771:\0A\09# ALT: oldinstr\0A771:\0A\09jmp 6f\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 3*32+21)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09jmp ${4:l}\0A775:\0A.popsection\0A\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ${0:c}\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09\0A775:\0A.popsection\0A.pushsection .altinstr_aux,\22ax\22\0A6:\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A testb $1, ${2:a}\0A jnz ${3:l}\0A jmp ${4:l}\0A.popsection\0A", "i,i,i,!i,!i,~{dirflag},~{fpsr},~{flags}"(i16 546, i32 4, ptr nonnull getelementptr inbounds nuw (i8, ptr @boot_cpu_data, i64 116)) #17
          to label %bb.o [label %bb.o, label %bb.u], !srcloc !20

bb.o:                                             ; preds = %_static_cpu_has.exit, %_static_cpu_has.exit
  %i.bg = load i32, ptr %i.bf, align 8
  %i.bh = call i32 @rdmsrq_on_cpu(i32 noundef %i.bg, i32 noundef -1073675595, ptr noundef nonnull %i.a) #18 ; 3 uses
  %.not.i82 = icmp eq i32 %i.bh, 0
  br i1 %.not.i82, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bi = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, i32 noundef %i.bh) #19 ; 0 uses
  br label %bb.t

bb.q:                                             ; preds = %bb.o
  %i.bj = load i64, ptr %i.a, align 8             ; 3 uses
  %i.bk = getelementptr i8, ptr %i.bf, i64 128
  store volatile i64 %i.bj, ptr %i.bk, align 8
  %i.bl = trunc i64 %i.bj to i8
  %1 = trunc i64 %i.bj to i32
  %2 = and i32 %1, 255
  %i.bm = getelementptr i8, ptr %i.bf, i64 136
  %i.bn = getelementptr i8, ptr %i.bf, i64 139
  %i.bo = load i8, ptr %i.bn, align 1
  %3 = zext i8 %i.bo to i32
  %4 = icmp samesign ult i32 %2, %3
  br i1 %4, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bp = getelementptr i8, ptr %i.bf, i64 137
  %i.bq = load i8, ptr %i.bp, align 1             ; 2 uses
  %.val.i = load ptr, ptr %i.ax, align 8
  %i.br = call fastcc i32 @amd_pstate_set_floor_perf(ptr %.val.i, i8 noundef zeroext %i.bq) #20 ; 2 uses
  %.not25.i = icmp eq i32 %i.br, 0
  br i1 %.not25.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r, %bb.q
  %.022.i = phi i8 [ %i.bq, %bb.r ], [ %i.bl, %bb.q ] ; 2 uses
  %i.bs = getelementptr i8, ptr %i.bf, i64 146
  store i8 %.022.i, ptr %i.bs, align 2
  %i.bt = getelementptr i8, ptr %i.bf, i64 156
  %i.bu = load i32, ptr %i.bt, align 4
  %i.bv = load i64, ptr %i.bm, align 8
  %.sroa.1.0.extract.shift.i.i = lshr i64 %i.bv, 8
  %i.bw = zext i32 %i.bu to i64
  %i.bx = zext i8 %.022.i to i64
  %i.by = mul nuw nsw i64 %i.bw, %i.bx
  %i.bz = and i64 %.sroa.1.0.extract.shift.i.i, 255 ; 2 uses
  %i.ca = add nsw i64 %i.by, -1
  %i.cb = add nsw i64 %i.ca, %i.bz
  %i.cc = udiv i64 %i.cb, %i.bz
  %i.cd = trunc i64 %i.cc to i32
  %i.ce = getelementptr i8, ptr %i.bf, i64 168
  store i32 %i.cd, ptr %i.ce, align 8
  br label %bb.u

bb.t:                                             ; preds = %bb.r, %bb.p
  %.0.i81 = phi i32 [ %i.bh, %bb.p ], [ %i.br, %bb.r ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %i.g, ptr noundef nonnull @.str.19, i32 noundef %.0.i81) #19
  br label %bb.aa

bb.u:                                             ; preds = %bb.s, %_static_cpu_has.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %i.cf = getelementptr i8, ptr %0, i64 144       ; 2 uses
  %i.cg = getelementptr i8, ptr %i.i, i64 8       ; 2 uses
  %i.ch = call i32 @freq_qos_add_request(ptr noundef %i.cf, ptr noundef %i.cg, i32 noundef 1, i32 noundef 0) #18 ; 3 uses
  %i.ci = icmp slt i32 %i.ch, 0
  br i1 %i.ci, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %i.g, ptr noundef nonnull @.str.33, i32 noundef %i.ch) #19
  br label %bb.aa

bb.w:                                             ; preds = %bb.u
  %i.cj = getelementptr i8, ptr %i.i, i64 64
  %i.ck = load i32, ptr %i.ad, align 8
  %i.cl = call i32 @freq_qos_add_request(ptr noundef %i.cf, ptr noundef %i.cj, i32 noundef 2, i32 noundef %i.ck) #18 ; 3 uses
  %i.cm = icmp slt i32 %i.cl, 0
  br i1 %i.cm, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %i.g, ptr noundef nonnull @.str.34, i32 noundef %i.cl) #19
  %i.cn = call i32 @freq_qos_remove_request(ptr noundef %i.cg) #18 ; 0 uses
  br label %bb.aa

bb.y:                                             ; preds = %bb.w
  %i.co = load ptr, ptr @current_pstate_driver, align 8
  %i.cp = getelementptr i8, ptr %i.co, i64 80     ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 8
  %.not75 = icmp eq ptr %i.cq, null
  br i1 %.not75, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  store ptr @amd_pstate_adjust_perf, ptr %i.cp, align 8
  br label %bb.ab

bb.aa:                                            ; preds = %amd_pstate_init_boost_support.exit, %bb.t, %bb.v, %bb.x, %bb.b, %amd_pstate_init_prefcore.exit, %amd_pstate_get_transition_delay_us.exit
  %.059 = phi i32 [ %i.k, %bb.b ], [ %i.s, %amd_pstate_init_prefcore.exit ], [ -5, %amd_pstate_init_boost_support.exit ], [ %i.ay, %amd_pstate_get_transition_delay_us.exit ], [ %.0.i81, %bb.t ], [ %i.ch, %bb.v ], [ %i.cl, %bb.x ] ; 2 uses
  %i.cr = load i32, ptr %i.c, align 4
  %i.cs = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %i.cr, i32 noundef %.059) #19 ; 0 uses
  call void @kfree(ptr noundef nonnull %i.i) #18
  %i.ct = getelementptr i8, ptr %0, i64 704
  store ptr null, ptr %i.ct, align 8
  br label %bb.ab

bb.ab:                                            ; preds = %bb.y, %bb.z, %_kzalloc_noprof.exit, %bb.a, %bb.aa
  %.0 = phi i32 [ %.059, %bb.aa ], [ -12, %_kzalloc_noprof.exit ], [ -19, %bb.a ], [ 0, %bb.z ], [ 0, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal noundef i32 @amd_pstate_target(ptr noundef %0, i32 noundef %1, i32 %2) #1 align 16 prefalign(16) {
bb.a:
  tail call fastcc void @amd_pstate_update_freq(ptr noundef %0, i32 noundef %1, i1 noundef zeroext false) #20
  ret i32 0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal noundef i32 @amd_pstate_fast_switch(ptr noundef %0, i32 noundef returned %1) #1 align 16 prefalign(16) {
bb.a:
  tail call fastcc void @amd_pstate_update_freq(ptr noundef %0, i32 noundef %1, i1 noundef zeroext true) #20
  ret i32 %1
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @amd_pstate_cpu_exit(ptr noundef %0) #1 align 16 prefalign(16) {
bb.a:
  %.sroa.0 = alloca [6 x i8], align 8             ; 3 uses
  %.sroa.4 = alloca i8, align 2                   ; 3 uses
  %.sroa.5 = alloca i8, align 1                   ; 3 uses
  %i.a = getelementptr i8, ptr %0, i64 704        ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %i.c = getelementptr i8, ptr %i.b, i64 136
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0, ptr align 8 %i.c, i64 6, i1 true)
  %.sroa.4.0..sroa_idx = getelementptr i8, ptr %i.b, i64 142
  %.sroa.4.0.copyload = load volatile i8, ptr %.sroa.4.0..sroa_idx, align 2 ; 2 uses
  store volatile i8 %.sroa.4.0.copyload, ptr %.sroa.4, align 2
  %.sroa.5.0..sroa_idx = getelementptr i8, ptr %i.b, i64 143
  %.sroa.5.0.copyload = load volatile i8, ptr %.sroa.5.0..sroa_idx, align 1
  store volatile i8 %.sroa.5.0.copyload, ptr %.sroa.5, align 1
  %i.d = tail call i32 @__SCT__amd_pstate_update_perf(ptr noundef %0, i8 noundef zeroext %.sroa.4.0.copyload, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i1 noundef zeroext false) #18 ; 0 uses
  %i.e = getelementptr i8, ptr %i.b, i64 146
  %i.f = load i8, ptr %i.e, align 2
  %.val = load ptr, ptr %i.a, align 8
  %i.g = tail call fastcc i32 @amd_pstate_set_floor_perf(ptr %.val, i8 noundef zeroext %i.f) #20 ; 0 uses
  %i.h = getelementptr i8, ptr %i.b, i64 8
  %i.i = getelementptr i8, ptr %i.b, i64 64
  %i.j = tail call i32 @freq_qos_remove_request(ptr noundef %i.i) #18 ; 0 uses
  %i.k = tail call i32 @freq_qos_remove_request(ptr noundef %i.h) #18 ; 0 uses
  %i.l = getelementptr i8, ptr %0, i64 632
  store i8 0, ptr %i.l, align 8
  tail call void @kfree(ptr noundef %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @amd_pstate_resume(ptr noundef %0) #1 align 16 prefalign(16) {
freq_to_perf.exit:
  %.sroa.0 = alloca i32, align 8                  ; 3 uses
  %.sroa.6 = alloca i8, align 4                   ; 3 uses
  %.sroa.7 = alloca i8, align 1                   ; 3 uses
  %.sroa.8 = alloca i16, align 2                  ; 3 uses
  %i.a = getelementptr i8, ptr %0, i64 704        ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  %i.c = getelementptr i8, ptr %i.b, i64 136
  %.sroa.0.0.copyload = load volatile i32, ptr %i.c, align 8 ; 6 uses
  store volatile i32 %.sroa.0.0.copyload, ptr %.sroa.0, align 8
  %.sroa.6.0..sroa_idx = getelementptr i8, ptr %i.b, i64 140
  %.sroa.6.0.copyload = load volatile i8, ptr %.sroa.6.0..sroa_idx, align 4 ; 2 uses
  store volatile i8 %.sroa.6.0.copyload, ptr %.sroa.6, align 4
  %.sroa.7.0..sroa_idx = getelementptr i8, ptr %i.b, i64 141
  %.sroa.7.0.copyload = load volatile i8, ptr %.sroa.7.0..sroa_idx, align 1 ; 2 uses
  store volatile i8 %.sroa.7.0.copyload, ptr %.sroa.7, align 1
  %.sroa.8.0..sroa_idx = getelementptr i8, ptr %i.b, i64 142
  %.sroa.8.0.copyload = load volatile i16, ptr %.sroa.8.0..sroa_idx, align 2
  store volatile i16 %.sroa.8.0.copyload, ptr %.sroa.8, align 2
  %i.d = getelementptr i8, ptr %i.b, i64 156      ; 2 uses
  %i.e = lshr i32 %.sroa.0.0.copyload, 24         ; 2 uses
  %i.f = and i32 %.sroa.0.0.copyload, 255         ; 2 uses
  %i.g = getelementptr i8, ptr %0, i64 60
  %i.h = load i32, ptr %i.g, align 4
  %i.i = load i32, ptr %i.d, align 4
  %i.j = lshr i32 %.sroa.0.0.copyload, 8
  %i.k = and i32 %i.j, 255
  %i.l = zext nneg i32 %i.k to i64                ; 2 uses
  %i.m = zext i32 %i.h to i64
  %i.n = mul nuw nsw i64 %i.m, %i.l
  %i.o = zext i32 %i.i to i64                     ; 2 uses
  %i.p = add nsw i64 %i.o, -1
  %i.q = add nsw i64 %i.p, %i.n
  %i.r = udiv i64 %i.q, %i.o
  %i.s = trunc i64 %i.r to i32                    ; 2 uses
  %.not.i = icmp ugt i32 %i.f, %i.s
  %i.t = tail call i32 @llvm.umax.i32(i32 %i.e, i32 %i.s)
  %i.u = select i1 %.not.i, i32 %i.t, i32 %.sroa.0.0.copyload
  %i.v = trunc i32 %i.u to i8
  %i.w = tail call i32 @__SCT__amd_pstate_update_perf(ptr noundef %0, i8 noundef zeroext %.sroa.6.0.copyload, i8 noundef zeroext %i.v, i8 noundef zeroext %.sroa.7.0.copyload, i8 noundef zeroext 0, i1 noundef zeroext false) #18 ; 2 uses
  %.not = icmp eq i32 %i.w, 0
  br i1 %.not, label %freq_to_perf.exit35, label %bb.a

freq_to_perf.exit35:                              ; preds = %freq_to_perf.exit
  %i.x = getelementptr i8, ptr %i.b, i64 168
  %i.y = load i32, ptr %i.x, align 8
  %i.z = load i32, ptr %i.d, align 4
  %i.aa = zext i32 %i.y to i64
  %i.ab = mul nuw nsw i64 %i.aa, %i.l
  %i.ac = zext i32 %i.z to i64                    ; 2 uses
  %i.ad = add nsw i64 %i.ac, -1
  %i.ae = add nsw i64 %i.ad, %i.ab
  %i.af = udiv i64 %i.ae, %i.ac
  %i.ag = trunc i64 %i.af to i32                  ; 2 uses
  %.not.i34 = icmp ugt i32 %i.f, %i.ag
  %i.ah = tail call i32 @llvm.umax.i32(i32 %i.e, i32 %i.ag)
end_hunk_1
