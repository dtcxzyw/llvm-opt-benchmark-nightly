Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/vclock_gettime?download=true
inline.NumInlined: 45
inline.NumDeleted: 17
begin_hunk_0_@__vdso_gettimeofday:bb.a
  %extract.t48.i.i = add i32 %.0.i37.lcssa.sink.i.i, %.sink.off0
  store i32 %extract.t48.i.i, ptr %0, align 4
  %i.dm = udiv i32 %.sroa.6.140.off0.i.i, 1000
  %i.dn = getelementptr i8, ptr %0, i32 4
  store i32 %i.dm, ptr %i.dn, align 4
  br label %bb.s

do_hres.exit.thread.i.i:                          ; preds = %__arch_get_hw_counter.exit41.i.i, %._crit_edge.i.i, %__arch_get_hw_counter.exit.i.i, %vdso_read_begin.exit.i.i
  %i.do = ptrtoint ptr %0 to i32
  %i.dp = ptrtoint ptr %1 to i32
  %i.dq = tail call i32 asm sideeffect "# ALT: oldinstr\0A771:\0A\09ds;ds;ds;int $$0x80\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 3*32+15)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09call __kernel_vsyscall\0A775:\0A.popsection\0A", "={ax},{ebx},{ecx},0,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %i.do, i32 %i.dp, i32 78) #4, !srcloc !36
  br label %__cvdso_gettimeofday.exit

bb.s:                                             ; preds = %.thread.i.i, %bb.a
  %.not20.i.i = icmp eq ptr %1, null
  br i1 %.not20.i.i, label %__cvdso_gettimeofday.exit, label %bb.t, !prof !37

bb.t:                                             ; preds = %bb.s
  %i.dr = load i32, ptr getelementptr inbounds nuw (i8, ptr @vdso_u_time_data, i32 4), align 4
  %i.ds = icmp eq i32 %i.dr, 2147483647           ; 2 uses
  %i.dt = select i1 %i.ds, ptr getelementptr (i8, ptr @vdso_u_time_data, i32 6416), ptr getelementptr inbounds nuw (i8, ptr @vdso_u_time_data, i32 2320)
  %i.du = load i32, ptr %i.dt, align 16
  store i32 %i.du, ptr %1, align 4
  %i.dv = select i1 %i.ds, ptr getelementptr (i8, ptr @vdso_u_time_data, i32 6420), ptr getelementptr inbounds nuw (i8, ptr @vdso_u_time_data, i32 2324)
  %i.dw = load i32, ptr %i.dv, align 4
  %i.dx = getelementptr i8, ptr %1, i32 4
  store i32 %i.dw, ptr %i.dx, align 4
  br label %__cvdso_gettimeofday.exit

__cvdso_gettimeofday.exit:                        ; preds = %do_hres.exit.thread.i.i, %bb.s, %bb.t
  %.1.i.i = phi i32 [ %i.dq, %do_hres.exit.thread.i.i ], [ 0, %bb.t ], [ 0, %bb.s ]
  ret i32 %.1.i.i
}

; Function Attrs: nofree norecurse noredzone nosync nounwind null_pointer_is_valid memory(readwrite, argmem: write, target_mem: none) uwtable
define i32 @__vdso_time(ptr nofree noundef writeonly captures(address_is_null) %0) #1 align 16 prefalign(16) {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @vdso_u_time_data, i32 4), align 4
  %i.b = icmp eq i32 %i.a, 2147483647
  %i.c = select i1 %i.b, ptr getelementptr (i8, ptr @vdso_u_time_data, i32 4136), ptr getelementptr inbounds nuw (i8, ptr @vdso_u_time_data, i32 40)
  %i.d = load volatile i64, ptr %i.c, align 8
  %i.e = trunc i64 %i.d to i32                    ; 2 uses
  %.not.i.i = icmp eq ptr %0, null
  br i1 %.not.i.i, label %__cvdso_time.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 %i.e, ptr %0, align 4
  br label %__cvdso_time.exit

__cvdso_time.exit:                                ; preds = %bb.a, %bb.b
  ret i32 %i.e
}

; Function Attrs: noredzone nounwind null_pointer_is_valid uwtable
define i32 @__vdso_clock_gettime(i32 noundef %0, ptr noundef %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = icmp ult i32 %0, 24
  br i1 %i.d, label %bb.b, label %__cvdso_clock_gettime_common.exit.thread.i.i, !prof !34

bb.b:                                             ; preds = %bb.a
  %i.e = shl nuw nsw i32 1, %0                    ; 3 uses
  %i.f = and i32 %i.e, 2179
  %.not.i.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i.i, label %bb.c, label %bb.k, !prof !17

bb.c:                                             ; preds = %bb.b
  %i.g = and i32 %i.e, 96
  %.not21.i.i.i = icmp eq i32 %i.g, 0
  br i1 %.not21.i.i.i, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr [16 x i8], ptr getelementptr inbounds nuw (i8, ptr @vdso_u_time_data, i32 40), i32 %0 ; 3 uses
  %i.i = getelementptr i8, ptr %i.h, i32 8        ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge.i.i, %bb.d
  %i.j = load volatile i32, ptr @vdso_u_time_data, align 64 ; 2 uses
  %.not.i.i762.i.i = trunc i32 %i.j to i1
  br i1 %.not.i.i762.i.i, label %.lr.ph.i.i, label %._crit_edge.i.i, !prof !18

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %i.k = load i32, ptr getelementptr inbounds nuw (i8, ptr @vdso_u_time_data, i32 4), align 4
  %i.l = icmp eq i32 %i.k, 2147483647
  br i1 %i.l, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i
  tail call void asm sideeffect "pause", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4, !srcloc !19
  %i.m = load volatile i32, ptr @vdso_u_time_data, align 64 ; 2 uses
  %.not.i.i7.i.i = trunc i32 %i.m to i1
  br i1 %.not.i.i7.i.i, label %.lr.ph.i.i, label %._crit_edge.i.i, !prof !20, !llvm.loop !0

bb.g:                                             ; preds = %.lr.ph.i.i
  %i.n = getelementptr [16 x i8], ptr getelementptr (i8, ptr @vdso_u_time_data, i32 4136), i32 %0 ; 2 uses
  %i.o = getelementptr i8, ptr %i.n, i32 8
  br label %bb.h

bb.h:                                             ; preds = %vdso_read_begin.exit.i11.i.i, %bb.g
  %i.p = load volatile i32, ptr getelementptr (i8, ptr @vdso_u_time_data, i32 4096), align 64 ; 2 uses
  %i.q = and i32 %i.p, 1
  %.not.i.i1065.i.i = icmp eq i32 %i.q, 0
  br i1 %.not.i.i1065.i.i, label %vdso_read_begin.exit.i11.i.i, label %.lr.ph67.i.i, !prof !22

.lr.ph67.i.i:                                     ; preds = %bb.h, %.lr.ph67.i.i
  tail call void asm sideeffect "pause", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4, !srcloc !19
  %i.r = load volatile i32, ptr getelementptr (i8, ptr @vdso_u_time_data, i32 4096), align 64 ; 2 uses
  %i.s = and i32 %i.r, 1
  %.not.i.i10.i.i = icmp eq i32 %i.s, 0
  br i1 %.not.i.i10.i.i, label %vdso_read_begin.exit.i11.i.i, label %.lr.ph67.i.i, !prof !23, !llvm.loop !1

vdso_read_begin.exit.i11.i.i:                     ; preds = %.lr.ph67.i.i, %bb.h
  %.lcssa57.i.i = phi i32 [ %i.p, %bb.h ], [ %i.r, %.lr.ph67.i.i ]
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4, !srcloc !24
  %i.t = load i64, ptr %i.n, align 8
  %i.u = load i64, ptr %i.o, align 16
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4, !srcloc !30
  %i.v = load volatile i32, ptr getelementptr (i8, ptr @vdso_u_time_data, i32 4096), align 64
  %.not39.i.i = icmp eq i32 %i.v, %.lcssa57.i.i
  br i1 %.not39.i.i, label %bb.i, label %bb.h, !llvm.loop !5

bb.i:                                             ; preds = %vdso_read_begin.exit.i11.i.i
  %i.w = load i64, ptr %i.h, align 8
  %i.x = add i64 %i.w, %i.t
  %i.y = load i64, ptr %i.i, align 16
  %i.z = add i64 %i.y, %i.u                       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.z, ptr %i.a, align 8
  %i.aa = icmp ugt i64 %i.z, 999999999
  %extract.t93.i.i = trunc nuw nsw i64 %i.z to i32
  br i1 %i.aa, label %.lr.ph71.i.i, label %do_coarse_timens.exit.i.i

.lr.ph71.i.i:                                     ; preds = %bb.i, %.lr.ph71.i.i
  %.0.i.i1369.i.i = phi i32 [ %i.ae, %.lr.ph71.i.i ], [ 0, %bb.i ]
  %i.ab = phi i64 [ %i.ad, %.lr.ph71.i.i ], [ %i.z, %bb.i ]
  call void asm "", "=*rm,0,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) %i.a, i64 %i.ab) #4, !srcloc !31
  %i.ac = load i64, ptr %i.a, align 8
  %i.ad = add i64 %i.ac, -1000000000              ; 4 uses
  store i64 %i.ad, ptr %i.a, align 8
  %i.ae = add i32 %.0.i.i1369.i.i, 1              ; 2 uses
  %i.af = icmp ugt i64 %i.ad, 999999999
  br i1 %i.af, label %.lr.ph71.i.i, label %do_coarse_timens.exit.loopexit.i.i, !llvm.loop !3

do_coarse_timens.exit.loopexit.i.i:               ; preds = %.lr.ph71.i.i
  %extract.t94.i.i = trunc nuw nsw i64 %i.ad to i32
  br label %do_coarse_timens.exit.i.i

do_coarse_timens.exit.i.i:                        ; preds = %do_coarse_timens.exit.loopexit.i.i, %bb.i
  %.lcssa56.off0.i.i = phi i32 [ %extract.t93.i.i, %bb.i ], [ %extract.t94.i.i, %do_coarse_timens.exit.loopexit.i.i ]
  %.0.i.i13.lcssa.i.i = phi i32 [ 0, %bb.i ], [ %i.ae, %do_coarse_timens.exit.loopexit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ag = trunc i64 %i.x to i32
  %extract.t48.i.i = add i32 %.0.i.i13.lcssa.i.i, %i.ag
  br label %__cvdso_clock_gettime_common.exit.thread33.i.i

._crit_edge.i.i:                                  ; preds = %bb.f, %bb.e
  %.lcssa60.i.i = phi i32 [ %i.j, %bb.e ], [ %i.m, %bb.f ]
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4, !srcloc !32
  %i.ah = load i64, ptr %i.h, align 8
  %i.ai = load i64, ptr %i.i, align 16
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4, !srcloc !30
  %i.aj = load volatile i32, ptr @vdso_u_time_data, align 64
  %.not.i.i = icmp eq i32 %i.aj, %.lcssa60.i.i
  br i1 %.not.i.i, label %__cvdso_clock_gettime_common.exit.thread33.loopexit.i.i, label %bb.e, !llvm.loop !6

bb.j:                                             ; preds = %bb.c
  %i.ak = and i32 %i.e, 16
  %.not22.i.i.i = icmp eq i32 %i.ak, 0
  br i1 %.not22.i.i.i, label %__cvdso_clock_gettime_common.exit.thread.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.b
  %.0.i.i.i = phi ptr [ @vdso_u_time_data, %bb.b ], [ getelementptr inbounds nuw (i8, ptr @vdso_u_time_data, i32 232), %bb.j ] ; 9 uses
  %i.al = getelementptr i8, ptr %.0.i.i.i, i32 4  ; 2 uses
  %i.am = getelementptr i8, ptr %.0.i.i.i, i32 40
  %i.an = getelementptr [16 x i8], ptr %i.am, i32 %0 ; 3 uses
  %i.ao = getelementptr i8, ptr %i.an, i32 8      ; 2 uses
  %i.ap = getelementptr i8, ptr %.0.i.i.i, i32 8
  %i.aq = getelementptr i8, ptr %.0.i.i.i, i32 16
  %i.ar = getelementptr i8, ptr %.0.i.i.i, i32 32 ; 2 uses
  %i.as = getelementptr i8, ptr %.0.i.i.i, i32 36 ; 3 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.ad, %bb.k
  %i.at = load volatile i32, ptr %.0.i.i.i, align 4 ; 2 uses
  %.not.i24.i74.i.i = trunc i32 %i.at to i1
  br i1 %.not.i24.i74.i.i, label %.lr.ph76.i.i, label %._crit_edge77.i.i, !prof !18

.lr.ph76.i.i:                                     ; preds = %bb.l, %bb.m
  %i.au = load i32, ptr %i.al, align 4
  %i.av = icmp eq i32 %i.au, 2147483647
  br i1 %i.av, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph76.i.i
  tail call void asm sideeffect "pause", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4, !srcloc !19
  %i.aw = load volatile i32, ptr %.0.i.i.i, align 4 ; 2 uses
  %.not.i24.i.i.i = trunc i32 %i.aw to i1
  br i1 %.not.i24.i.i.i, label %.lr.ph76.i.i, label %._crit_edge77.i.i, !prof !20, !llvm.loop !0

bb.n:                                             ; preds = %.lr.ph76.i.i
  %.not.i25.i.i.i = icmp eq i32 %0, 4
  %..i.i.i.i = select i1 %.not.i25.i.i.i, ptr getelementptr (i8, ptr @vdso_u_time_data, i32 4328), ptr getelementptr (i8, ptr @vdso_u_time_data, i32 4096) ; 9 uses
  %2 = getelementptr i8, ptr %..i.i.i.i, i32 40
  %i.ax = getelementptr [16 x i8], ptr %2, i32 %0 ; 2 uses
  %3 = getelementptr i8, ptr %..i.i.i.i, i32 4
  %i.ay = getelementptr i8, ptr %i.ax, i32 8
  %4 = getelementptr i8, ptr %..i.i.i.i, i32 8
  %5 = getelementptr i8, ptr %..i.i.i.i, i32 16
  %6 = getelementptr i8, ptr %..i.i.i.i, i32 32   ; 2 uses
  %7 = getelementptr i8, ptr %..i.i.i.i, i32 36   ; 3 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.v, %bb.n
  %i.az = load volatile i32, ptr %..i.i.i.i, align 8 ; 2 uses
  %i.ba = and i32 %i.az, 1
  %.not.i27.i84.i.i = icmp eq i32 %i.ba, 0
  br i1 %.not.i27.i84.i.i, label %vdso_read_begin.exit.i.i.i, label %.lr.ph86.i.i, !prof !22

.lr.ph86.i.i:                                     ; preds = %bb.o, %.lr.ph86.i.i
  tail call void asm sideeffect "pause", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4, !srcloc !19
  %i.bb = load volatile i32, ptr %..i.i.i.i, align 8 ; 2 uses
  %i.bc = and i32 %i.bb, 1
  %.not.i27.i.i.i = icmp eq i32 %i.bc, 0
  br i1 %.not.i27.i.i.i, label %vdso_read_begin.exit.i.i.i, label %.lr.ph86.i.i, !prof !23, !llvm.loop !1

vdso_read_begin.exit.i.i.i:                       ; preds = %.lr.ph86.i.i, %bb.o
  %.lcssa50.i.i = phi i32 [ %i.az, %bb.o ], [ %i.bb, %.lr.ph86.i.i ]
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4, !srcloc !24
  %i.bd = load i32, ptr %3, align 4
  switch i32 %i.bd, label %__cvdso_clock_gettime_common.exit.thread.i.i [
    i32 1, label %__arch_get_hw_counter.exit.thread.i.i
    i32 2, label %__arch_get_hw_counter.exit.i.i
  ], !prof !25

__arch_get_hw_counter.exit.thread.i.i:            ; preds = %vdso_read_begin.exit.i.i.i
  %i.be = tail call i64 asm sideeffect "# ALT: oldinstr\0A771:\0A\09# ALT: oldinstr\0A771:\0A\09rdtsc\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte (20*32+ 2)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09lfence; rdtsc\0A775:\0A.popsection\0A\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 1*32+27)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09rdtscp\0A775:\0A.popsection\0A", "=A,~{ecx},~{dirflag},~{fpsr},~{flags}"() #4, !srcloc !26
  %i.bf = and i64 %i.be, 9223372036854775807
  br label %bb.p

__arch_get_hw_counter.exit.i.i:                   ; preds = %vdso_read_begin.exit.i.i.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4, !srcloc !27
  %i.bg = tail call fastcc i64 @vread_pvclock() #5, !srcloc !28 ; 2 uses
  %i.bh = icmp sgt i64 %i.bg, -1
  br i1 %i.bh, label %bb.p, label %__cvdso_clock_gettime_common.exit.thread.i.i, !prof !29

bb.p:                                             ; preds = %__arch_get_hw_counter.exit.i.i, %__arch_get_hw_counter.exit.thread.i.i
  %.0.i1517.i.i = phi i64 [ %i.bf, %__arch_get_hw_counter.exit.thread.i.i ], [ %i.bg, %__arch_get_hw_counter.exit.i.i ]
  %i.bi = load i64, ptr %i.ay, align 8            ; 3 uses
  %i.bj = load i64, ptr %4, align 8
  %i.bk = sub i64 %.0.i1517.i.i, %i.bj            ; 5 uses
  %i.bl = load i64, ptr %5, align 8
  %i.bm = icmp ugt i64 %i.bk, %i.bl
  br i1 %i.bm, label %bb.q, label %bb.u, !prof !17

bb.q:                                             ; preds = %bb.p
  %i.bn = and i64 %i.bk, 4611686018427387904
  %.not.i31.i.i.i = icmp eq i64 %i.bn, 0
  br i1 %.not.i31.i.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bo = load i32, ptr %7, align 4
  %i.bp = zext nneg i32 %i.bo to i64
  %i.bq = lshr i64 %i.bi, %i.bp
  br label %bb.v

bb.s:                                             ; preds = %bb.q
  %i.br = load i32, ptr %6, align 8
  %i.bs = load i32, ptr %7, align 4               ; 4 uses
  %i.bt = lshr i64 %i.bk, 32
  %i.bu = and i64 %i.bt, 1073741823               ; 2 uses
  %i.bv = and i64 %i.bk, 4294967295
  %i.bw = zext i32 %i.br to i64                   ; 2 uses
  %i.bx = mul nuw i64 %i.bv, %i.bw
  %i.by = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.bx, i64 %i.bi) ; 2 uses
  %i.bz = extractvalue { i64, i1 } %i.by, 1
  %i.ca = extractvalue { i64, i1 } %i.by, 0
  %i.cb = zext nneg i32 %i.bs to i64
  %i.cc = lshr i64 %i.ca, %i.cb
  %i.cd = icmp ne i32 %i.bs, 0
  %or.cond.i.i.i.i = and i1 %i.cd, %i.bz
  %i.ce = sub i32 64, %i.bs
  %i.cf = zext nneg i32 %i.ce to i64
  %i.cg = shl nuw i64 1, %i.cf
  %i.ch = select i1 %or.cond.i.i.i.i, i64 %i.cg, i64 0
  %.0.i33.i.i.i = add i64 %i.ch, %i.cc            ; 2 uses
  %.not.i34.i.i.i = icmp eq i64 %i.bu, 0
  br i1 %.not.i34.i.i.i, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ci = mul nuw nsw i64 %i.bu, %i.bw
  %i.cj = sub i32 32, %i.bs
  %i.ck = zext nneg i32 %i.cj to i64
  %i.cl = shl i64 %i.ci, %i.ck
  %i.cm = add i64 %.0.i33.i.i.i, %i.cl
  br label %bb.v

bb.u:                                             ; preds = %bb.p
  %i.cn = load i32, ptr %6, align 8
  %i.co = zext i32 %i.cn to i64
  %i.cp = mul i64 %i.bk, %i.co
  %i.cq = add i64 %i.cp, %i.bi
  %i.cr = load i32, ptr %7, align 4
  %i.cs = zext nneg i32 %i.cr to i64
  %i.ct = lshr i64 %i.cq, %i.cs
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s, %bb.r
  %.0.i30.i.i.i = phi i64 [ %i.bq, %bb.r ], [ %i.ct, %bb.u ], [ %i.cm, %bb.t ], [ %.0.i33.i.i.i, %bb.s ]
  %i.cu = load i64, ptr %i.ax, align 8
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4, !srcloc !30
  %i.cv = load volatile i32, ptr %..i.i.i.i, align 8
  %.not41.i.i = icmp eq i32 %i.cv, %.lcssa50.i.i
  br i1 %.not41.i.i, label %bb.w, label %bb.o, !llvm.loop !2

bb.w:                                             ; preds = %bb.v
  %i.cw = load i64, ptr %i.an, align 4
  %i.cx = add i64 %i.cw, %i.cu
  %i.cy = load i64, ptr %i.ao, align 4
  %i.cz = add i64 %i.cy, %.0.i30.i.i.i            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %i.cz, ptr %i.b, align 8
  %i.da = icmp ugt i64 %i.cz, 999999999
  %extract.t97.i.i = trunc nuw nsw i64 %i.cz to i32
  br i1 %i.da, label %.lr.ph90.i.i, label %__cvdso_clock_gettime_common.exit.i.i

.lr.ph90.i.i:                                     ; preds = %bb.w, %.lr.ph90.i.i
  %.0.i41.i88.i.i = phi i32 [ %i.de, %.lr.ph90.i.i ], [ 0, %bb.w ]
  %i.db = phi i64 [ %i.dd, %.lr.ph90.i.i ], [ %i.cz, %bb.w ]
  call void asm "", "=*rm,0,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) %i.b, i64 %i.db) #4, !srcloc !31
  %i.dc = load i64, ptr %i.b, align 8
  %i.dd = add i64 %i.dc, -1000000000              ; 4 uses
  store i64 %i.dd, ptr %i.b, align 8
  %i.de = add i32 %.0.i41.i88.i.i, 1              ; 2 uses
  %i.df = icmp ugt i64 %i.dd, 999999999
  br i1 %i.df, label %.lr.ph90.i.i, label %__cvdso_clock_gettime_common.exit.loopexit.i.i, !llvm.loop !3

._crit_edge77.i.i:                                ; preds = %bb.m, %bb.l
  %.lcssa53.i.i = phi i32 [ %i.at, %bb.l ], [ %i.aw, %bb.m ]
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4, !srcloc !32
  %i.dg = load i32, ptr %i.al, align 4
  switch i32 %i.dg, label %__cvdso_clock_gettime_common.exit.thread.i.i [
    i32 1, label %__arch_get_hw_counter.exit17.thread.i.i
    i32 2, label %__arch_get_hw_counter.exit17.i.i
  ], !prof !25

__arch_get_hw_counter.exit17.thread.i.i:          ; preds = %._crit_edge77.i.i
  %i.dh = tail call i64 asm sideeffect "# ALT: oldinstr\0A771:\0A\09# ALT: oldinstr\0A771:\0A\09rdtsc\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte (20*32+ 2)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09lfence; rdtsc\0A775:\0A.popsection\0A\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 1*32+27)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09rdtscp\0A775:\0A.popsection\0A", "=A,~{ecx},~{dirflag},~{fpsr},~{flags}"() #4, !srcloc !26
  %i.di = and i64 %i.dh, 9223372036854775807
  br label %bb.x

__arch_get_hw_counter.exit17.i.i:                 ; preds = %._crit_edge77.i.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4, !srcloc !27
  %i.dj = tail call fastcc i64 @vread_pvclock() #5, !srcloc !28 ; 2 uses
  %i.dk = icmp sgt i64 %i.dj, -1
  br i1 %i.dk, label %bb.x, label %__cvdso_clock_gettime_common.exit.thread.i.i, !prof !33

bb.x:                                             ; preds = %__arch_get_hw_counter.exit17.i.i, %__arch_get_hw_counter.exit17.thread.i.i
  %.0.i1623.i.i = phi i64 [ %i.di, %__arch_get_hw_counter.exit17.thread.i.i ], [ %i.dj, %__arch_get_hw_counter.exit17.i.i ]
  %i.dl = load i64, ptr %i.ao, align 4            ; 3 uses
  %i.dm = load i64, ptr %i.ap, align 4
  %i.dn = sub i64 %.0.i1623.i.i, %i.dm            ; 5 uses
  %i.do = load i64, ptr %i.aq, align 4
  %i.dp = icmp ugt i64 %i.dn, %i.do
  br i1 %i.dp, label %bb.y, label %bb.ac, !prof !17

bb.y:                                             ; preds = %bb.x
  %i.dq = and i64 %i.dn, 4611686018427387904
  %.not.i29.i.i.i = icmp eq i64 %i.dq, 0
  br i1 %.not.i29.i.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dr = load i32, ptr %i.as, align 4
  %i.ds = zext nneg i32 %i.dr to i64
  %i.dt = lshr i64 %i.dl, %i.ds
  br label %bb.ad

bb.aa:                                            ; preds = %bb.y
  %i.du = load i32, ptr %i.ar, align 4
  %i.dv = load i32, ptr %i.as, align 4            ; 4 uses
  %i.dw = lshr i64 %i.dn, 32
  %i.dx = and i64 %i.dw, 1073741823               ; 2 uses
  %i.dy = and i64 %i.dn, 4294967295
  %i.dz = zext i32 %i.du to i64                   ; 2 uses
  %i.ea = mul nuw i64 %i.dy, %i.dz
  %i.eb = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.ea, i64 %i.dl) ; 2 uses
  %i.ec = extractvalue { i64, i1 } %i.eb, 1
  %i.ed = extractvalue { i64, i1 } %i.eb, 0
  %i.ee = zext nneg i32 %i.dv to i64
  %i.ef = lshr i64 %i.ed, %i.ee
  %i.eg = icmp ne i32 %i.dv, 0
  %or.cond.i35.i.i.i = and i1 %i.eg, %i.ec
  %i.eh = sub i32 64, %i.dv
  %i.ei = zext nneg i32 %i.eh to i64
  %i.ej = shl nuw i64 1, %i.ei
  %i.ek = select i1 %or.cond.i35.i.i.i, i64 %i.ej, i64 0
  %.0.i36.i.i.i = add i64 %i.ek, %i.ef            ; 2 uses
  %.not.i37.i.i.i = icmp eq i64 %i.dx, 0
  br i1 %.not.i37.i.i.i, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.el = mul nuw nsw i64 %i.dx, %i.dz
  %i.em = sub i32 32, %i.dv
  %i.en = zext nneg i32 %i.em to i64
  %i.eo = shl i64 %i.el, %i.en
  %i.ep = add i64 %.0.i36.i.i.i, %i.eo
  br label %bb.ad

bb.ac:                                            ; preds = %bb.x
  %i.eq = load i32, ptr %i.ar, align 4
  %i.er = zext i32 %i.eq to i64
end_hunk_0
begin_hunk_1_@__vdso_clock_gettime:bb.a
  %i.fc = add i64 %i.fb, -1000000000              ; 4 uses
  store i64 %i.fc, ptr %i.c, align 8
  %i.fd = add i32 %.0.i40.i79.i.i, 1              ; 2 uses
  %i.fe = icmp ugt i64 %i.fc, 999999999
  br i1 %i.fe, label %.lr.ph81.i.i, label %__iter_div_u64_rem.exit.i.loopexit.i.i, !llvm.loop !3

__iter_div_u64_rem.exit.i.loopexit.i.i:           ; preds = %.lr.ph81.i.i
  %extract.t96.i.i = trunc nuw nsw i64 %i.fc to i32
  br label %__iter_div_u64_rem.exit.i.i.i

__iter_div_u64_rem.exit.i.i.i:                    ; preds = %__iter_div_u64_rem.exit.i.loopexit.i.i, %bb.ae
  %.lcssa52.off0.i.i = phi i32 [ %extract.t95.i.i, %bb.ae ], [ %extract.t96.i.i, %__iter_div_u64_rem.exit.i.loopexit.i.i ]
  %.0.i40.i.lcssa.i.i = phi i32 [ 0, %bb.ae ], [ %i.fd, %__iter_div_u64_rem.exit.i.loopexit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ff = trunc i64 %i.ex to i32
  %extract.t46.i.i = add i32 %.0.i40.i.lcssa.i.i, %i.ff
  br label %__cvdso_clock_gettime_common.exit.thread33.i.i

__cvdso_clock_gettime_common.exit.loopexit.i.i:   ; preds = %.lr.ph90.i.i
  %extract.t98.i.i = trunc nuw nsw i64 %i.dd to i32
  br label %__cvdso_clock_gettime_common.exit.i.i

__cvdso_clock_gettime_common.exit.i.i:            ; preds = %__cvdso_clock_gettime_common.exit.loopexit.i.i, %bb.w
  %.lcssa.off0.i.i = phi i32 [ %extract.t97.i.i, %bb.w ], [ %extract.t98.i.i, %__cvdso_clock_gettime_common.exit.loopexit.i.i ]
  %.0.i41.i.lcssa.i.i = phi i32 [ 0, %bb.w ], [ %i.de, %__cvdso_clock_gettime_common.exit.loopexit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.fg = trunc i64 %i.cx to i32
  %extract.t45.i.i = add i32 %.0.i41.i.lcssa.i.i, %i.fg
  br label %__cvdso_clock_gettime_common.exit.thread33.i.i

__cvdso_clock_gettime_common.exit.thread.i.i:     ; preds = %__arch_get_hw_counter.exit17.i.i, %._crit_edge77.i.i, %__arch_get_hw_counter.exit.i.i, %vdso_read_begin.exit.i.i.i, %bb.j, %bb.a
  %i.fh = ptrtoint ptr %1 to i32
  %i.fi = tail call i32 asm sideeffect "# ALT: oldinstr\0A771:\0A\09ds;ds;ds;int $$0x80\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 3*32+15)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09call __kernel_vsyscall\0A775:\0A.popsection\0A", "={ax},{ebx},{ecx},0,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %0, i32 %i.fh, i32 265) #4, !srcloc !38
  br label %__cvdso_clock_gettime32.exit

__cvdso_clock_gettime_common.exit.thread33.loopexit.i.i: ; preds = %._crit_edge.i.i
  %extract.t43.le.i.i = trunc i64 %i.ai to i32
  %extract.t47.le.i.i = trunc i64 %i.ah to i32
  br label %__cvdso_clock_gettime_common.exit.thread33.i.i

__cvdso_clock_gettime_common.exit.thread33.i.i:   ; preds = %__cvdso_clock_gettime_common.exit.thread33.loopexit.i.i, %__cvdso_clock_gettime_common.exit.i.i, %__iter_div_u64_rem.exit.i.i.i, %do_coarse_timens.exit.i.i
  %.sroa.8.338.off0.i.i = phi i32 [ %.lcssa.off0.i.i, %__cvdso_clock_gettime_common.exit.i.i ], [ %.lcssa52.off0.i.i, %__iter_div_u64_rem.exit.i.i.i ], [ %.lcssa56.off0.i.i, %do_coarse_timens.exit.i.i ], [ %extract.t43.le.i.i, %__cvdso_clock_gettime_common.exit.thread33.loopexit.i.i ]
  %.sroa.0.337.off0.i.i = phi i32 [ %extract.t45.i.i, %__cvdso_clock_gettime_common.exit.i.i ], [ %extract.t46.i.i, %__iter_div_u64_rem.exit.i.i.i ], [ %extract.t48.i.i, %do_coarse_timens.exit.i.i ], [ %extract.t47.le.i.i, %__cvdso_clock_gettime_common.exit.thread33.loopexit.i.i ]
  store i32 %.sroa.0.337.off0.i.i, ptr %1, align 4
  %i.fj = getelementptr i8, ptr %1, i32 4
  store i32 %.sroa.8.338.off0.i.i, ptr %i.fj, align 4
  br label %__cvdso_clock_gettime32.exit

__cvdso_clock_gettime32.exit:                     ; preds = %__cvdso_clock_gettime_common.exit.thread.i.i, %__cvdso_clock_gettime_common.exit.thread33.i.i
  %.0.i.i = phi i32 [ %i.fi, %__cvdso_clock_gettime_common.exit.thread.i.i ], [ 0, %__cvdso_clock_gettime_common.exit.thread33.i.i ]
  ret i32 %.0.i.i
}

; Function Attrs: noredzone nounwind null_pointer_is_valid uwtable
define i32 @__vdso_clock_gettime64(i32 noundef %0, ptr noundef %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = icmp ult i32 %0, 24
  br i1 %i.d, label %bb.b, label %__cvdso_clock_gettime_common.exit.thread.i.i, !prof !34

bb.b:                                             ; preds = %bb.a
  %i.e = shl nuw nsw i32 1, %0                    ; 3 uses
  %i.f = and i32 %i.e, 2179
  %.not.i.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i.i, label %bb.c, label %bb.k, !prof !17

bb.c:                                             ; preds = %bb.b
  %i.g = and i32 %i.e, 96
  %.not21.i.i.i = icmp eq i32 %i.g, 0
  br i1 %.not21.i.i.i, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr [16 x i8], ptr getelementptr inbounds nuw (i8, ptr @vdso_u_time_data, i32 40), i32 %0 ; 3 uses
  %i.i = getelementptr i8, ptr %i.h, i32 8        ; 2 uses
  %i.j = getelementptr i8, ptr %1, i32 8          ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge.i.i, %bb.d
  %i.k = load volatile i32, ptr @vdso_u_time_data, align 64 ; 2 uses
  %.not.i.i649.i.i = trunc i32 %i.k to i1
  br i1 %.not.i.i649.i.i, label %.lr.ph.i.i, label %._crit_edge.i.i, !prof !18

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %i.l = load i32, ptr getelementptr inbounds nuw (i8, ptr @vdso_u_time_data, i32 4), align 4
  %i.m = icmp eq i32 %i.l, 2147483647
  br i1 %i.m, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i
  tail call void asm sideeffect "pause", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4, !srcloc !19
  %i.n = load volatile i32, ptr @vdso_u_time_data, align 64 ; 2 uses
  %.not.i.i6.i.i = trunc i32 %i.n to i1
  br i1 %.not.i.i6.i.i, label %.lr.ph.i.i, label %._crit_edge.i.i, !prof !20, !llvm.loop !0

bb.g:                                             ; preds = %.lr.ph.i.i
  %i.o = getelementptr [16 x i8], ptr getelementptr (i8, ptr @vdso_u_time_data, i32 4136), i32 %0 ; 2 uses
  %i.p = getelementptr i8, ptr %i.o, i32 8
  br label %bb.h

bb.h:                                             ; preds = %vdso_read_begin.exit.i10.i.i, %bb.g
  %i.q = load volatile i32, ptr getelementptr (i8, ptr @vdso_u_time_data, i32 4096), align 64 ; 2 uses
  %i.r = and i32 %i.q, 1
  %.not.i.i950.i.i = icmp eq i32 %i.r, 0
  br i1 %.not.i.i950.i.i, label %vdso_read_begin.exit.i10.i.i, label %.lr.ph52.i.i, !prof !22

.lr.ph52.i.i:                                     ; preds = %bb.h, %.lr.ph52.i.i
  tail call void asm sideeffect "pause", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4, !srcloc !19
  %i.s = load volatile i32, ptr getelementptr (i8, ptr @vdso_u_time_data, i32 4096), align 64 ; 2 uses
  %i.t = and i32 %i.s, 1
  %.not.i.i9.i.i = icmp eq i32 %i.t, 0
  br i1 %.not.i.i9.i.i, label %vdso_read_begin.exit.i10.i.i, label %.lr.ph52.i.i, !prof !23, !llvm.loop !1

vdso_read_begin.exit.i10.i.i:                     ; preds = %.lr.ph52.i.i, %bb.h
  %.lcssa44.i.i = phi i32 [ %i.q, %bb.h ], [ %i.s, %.lr.ph52.i.i ]
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4, !srcloc !24
  %i.u = load i64, ptr %i.o, align 8
  %i.v = load i64, ptr %i.p, align 16
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4, !srcloc !30
  %i.w = load volatile i32, ptr getelementptr (i8, ptr @vdso_u_time_data, i32 4096), align 64
  %.not33.i.i = icmp eq i32 %i.w, %.lcssa44.i.i
  br i1 %.not33.i.i, label %bb.i, label %bb.h, !llvm.loop !5

bb.i:                                             ; preds = %vdso_read_begin.exit.i10.i.i
  %i.x = load i64, ptr %i.h, align 8
  %i.y = add i64 %i.x, %i.u
  %i.z = load i64, ptr %i.i, align 16
  %i.aa = add i64 %i.z, %i.v                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.aa, ptr %i.a, align 8
  %i.ab = icmp ugt i64 %i.aa, 999999999
  br i1 %i.ab, label %.lr.ph56.i.i, label %do_coarse_timens.exit.i.i

.lr.ph56.i.i:                                     ; preds = %bb.i, %.lr.ph56.i.i
  %.0.i.i1254.i.i = phi i32 [ %i.af, %.lr.ph56.i.i ], [ 0, %bb.i ]
  %i.ac = phi i64 [ %i.ae, %.lr.ph56.i.i ], [ %i.aa, %bb.i ]
  call void asm "", "=*rm,0,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) %i.a, i64 %i.ac) #4, !srcloc !31
  %i.ad = load i64, ptr %i.a, align 8
  %i.ae = add i64 %i.ad, -1000000000              ; 4 uses
  store i64 %i.ae, ptr %i.a, align 8
  %i.af = add i32 %.0.i.i1254.i.i, 1              ; 2 uses
  %i.ag = icmp ugt i64 %i.ae, 999999999
  br i1 %i.ag, label %.lr.ph56.i.i, label %do_coarse_timens.exit.i.i, !llvm.loop !3

do_coarse_timens.exit.i.i:                        ; preds = %.lr.ph56.i.i, %bb.i
  %.lcssa43.i.i = phi i64 [ %i.aa, %bb.i ], [ %i.ae, %.lr.ph56.i.i ]
  %.0.i.i12.lcssa.i.i = phi i32 [ 0, %bb.i ], [ %i.af, %.lr.ph56.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ah = zext i32 %.0.i.i12.lcssa.i.i to i64
  %i.ai = add i64 %i.y, %i.ah
  store i64 %i.ai, ptr %1, align 4
  store i64 %.lcssa43.i.i, ptr %i.j, align 4
  br label %__cvdso_clock_gettime.exit

._crit_edge.i.i:                                  ; preds = %bb.f, %bb.e
  %.lcssa47.i.i = phi i32 [ %i.k, %bb.e ], [ %i.n, %bb.f ]
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4, !srcloc !32
  %i.aj = load i64, ptr %i.h, align 8
  store i64 %i.aj, ptr %1, align 4
  %i.ak = load i64, ptr %i.i, align 16
  store i64 %i.ak, ptr %i.j, align 4
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4, !srcloc !30
  %i.al = load volatile i32, ptr @vdso_u_time_data, align 64
  %.not.i.i = icmp eq i32 %i.al, %.lcssa47.i.i
  br i1 %.not.i.i, label %__cvdso_clock_gettime.exit, label %bb.e, !llvm.loop !6

bb.j:                                             ; preds = %bb.c
  %i.am = and i32 %i.e, 16
  %.not22.i.i.i = icmp eq i32 %i.am, 0
  br i1 %.not22.i.i.i, label %__cvdso_clock_gettime_common.exit.thread.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.b
  %.0.i.i.i = phi ptr [ @vdso_u_time_data, %bb.b ], [ getelementptr inbounds nuw (i8, ptr @vdso_u_time_data, i32 232), %bb.j ] ; 9 uses
  %i.an = getelementptr i8, ptr %.0.i.i.i, i32 4  ; 2 uses
  %i.ao = getelementptr i8, ptr %.0.i.i.i, i32 40
  %i.ap = getelementptr [16 x i8], ptr %i.ao, i32 %0 ; 3 uses
  %i.aq = getelementptr i8, ptr %i.ap, i32 8      ; 2 uses
  %i.ar = getelementptr i8, ptr %.0.i.i.i, i32 8
  %i.as = getelementptr i8, ptr %.0.i.i.i, i32 16
  %i.at = getelementptr i8, ptr %.0.i.i.i, i32 32 ; 2 uses
  %i.au = getelementptr i8, ptr %.0.i.i.i, i32 36 ; 3 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.ad, %bb.k
  %i.av = load volatile i32, ptr %.0.i.i.i, align 4 ; 2 uses
  %.not.i24.i59.i.i = trunc i32 %i.av to i1
  br i1 %.not.i24.i59.i.i, label %.lr.ph61.i.i, label %._crit_edge62.i.i, !prof !18

.lr.ph61.i.i:                                     ; preds = %bb.l, %bb.m
  %i.aw = load i32, ptr %i.an, align 4
  %i.ax = icmp eq i32 %i.aw, 2147483647
  br i1 %i.ax, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph61.i.i
  tail call void asm sideeffect "pause", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4, !srcloc !19
  %i.ay = load volatile i32, ptr %.0.i.i.i, align 4 ; 2 uses
  %.not.i24.i.i.i = trunc i32 %i.ay to i1
  br i1 %.not.i24.i.i.i, label %.lr.ph61.i.i, label %._crit_edge62.i.i, !prof !20, !llvm.loop !0

bb.n:                                             ; preds = %.lr.ph61.i.i
  %.not.i25.i.i.i = icmp eq i32 %0, 4
  %..i.i.i.i = select i1 %.not.i25.i.i.i, ptr getelementptr (i8, ptr @vdso_u_time_data, i32 4328), ptr getelementptr (i8, ptr @vdso_u_time_data, i32 4096) ; 9 uses
  %2 = getelementptr i8, ptr %..i.i.i.i, i32 40
  %i.az = getelementptr [16 x i8], ptr %2, i32 %0 ; 2 uses
  %3 = getelementptr i8, ptr %..i.i.i.i, i32 4
  %i.ba = getelementptr i8, ptr %i.az, i32 8
  %4 = getelementptr i8, ptr %..i.i.i.i, i32 8
  %5 = getelementptr i8, ptr %..i.i.i.i, i32 16
  %6 = getelementptr i8, ptr %..i.i.i.i, i32 32   ; 2 uses
  %7 = getelementptr i8, ptr %..i.i.i.i, i32 36   ; 3 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.v, %bb.n
  %i.bb = load volatile i32, ptr %..i.i.i.i, align 8 ; 2 uses
  %i.bc = and i32 %i.bb, 1
  %.not.i27.i69.i.i = icmp eq i32 %i.bc, 0
  br i1 %.not.i27.i69.i.i, label %vdso_read_begin.exit.i.i.i, label %.lr.ph71.i.i, !prof !22

.lr.ph71.i.i:                                     ; preds = %bb.o, %.lr.ph71.i.i
  tail call void asm sideeffect "pause", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4, !srcloc !19
  %i.bd = load volatile i32, ptr %..i.i.i.i, align 8 ; 2 uses
  %i.be = and i32 %i.bd, 1
  %.not.i27.i.i.i = icmp eq i32 %i.be, 0
  br i1 %.not.i27.i.i.i, label %vdso_read_begin.exit.i.i.i, label %.lr.ph71.i.i, !prof !23, !llvm.loop !1

vdso_read_begin.exit.i.i.i:                       ; preds = %.lr.ph71.i.i, %bb.o
  %.lcssa37.i.i = phi i32 [ %i.bb, %bb.o ], [ %i.bd, %.lr.ph71.i.i ]
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4, !srcloc !24
  %i.bf = load i32, ptr %3, align 4
  switch i32 %i.bf, label %__cvdso_clock_gettime_common.exit.thread.i.i [
    i32 1, label %__arch_get_hw_counter.exit.thread.i.i
    i32 2, label %__arch_get_hw_counter.exit.i.i
  ], !prof !25

__arch_get_hw_counter.exit.thread.i.i:            ; preds = %vdso_read_begin.exit.i.i.i
  %i.bg = tail call i64 asm sideeffect "# ALT: oldinstr\0A771:\0A\09# ALT: oldinstr\0A771:\0A\09rdtsc\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte (20*32+ 2)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09lfence; rdtsc\0A775:\0A.popsection\0A\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 1*32+27)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09rdtscp\0A775:\0A.popsection\0A", "=A,~{ecx},~{dirflag},~{fpsr},~{flags}"() #4, !srcloc !26
  %i.bh = and i64 %i.bg, 9223372036854775807
  br label %bb.p

__arch_get_hw_counter.exit.i.i:                   ; preds = %vdso_read_begin.exit.i.i.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4, !srcloc !27
  %i.bi = tail call fastcc i64 @vread_pvclock() #5, !srcloc !28 ; 2 uses
  %i.bj = icmp sgt i64 %i.bi, -1
  br i1 %i.bj, label %bb.p, label %__cvdso_clock_gettime_common.exit.thread.i.i, !prof !29

bb.p:                                             ; preds = %__arch_get_hw_counter.exit.i.i, %__arch_get_hw_counter.exit.thread.i.i
  %.0.i1417.i.i = phi i64 [ %i.bh, %__arch_get_hw_counter.exit.thread.i.i ], [ %i.bi, %__arch_get_hw_counter.exit.i.i ]
  %i.bk = load i64, ptr %i.ba, align 8            ; 3 uses
  %i.bl = load i64, ptr %4, align 8
  %i.bm = sub i64 %.0.i1417.i.i, %i.bl            ; 5 uses
  %i.bn = load i64, ptr %5, align 8
  %i.bo = icmp ugt i64 %i.bm, %i.bn
  br i1 %i.bo, label %bb.q, label %bb.u, !prof !17

bb.q:                                             ; preds = %bb.p
  %i.bp = and i64 %i.bm, 4611686018427387904
  %.not.i31.i.i.i = icmp eq i64 %i.bp, 0
  br i1 %.not.i31.i.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bq = load i32, ptr %7, align 4
  %i.br = zext nneg i32 %i.bq to i64
  %i.bs = lshr i64 %i.bk, %i.br
  br label %bb.v

bb.s:                                             ; preds = %bb.q
  %i.bt = load i32, ptr %6, align 8
  %i.bu = load i32, ptr %7, align 4               ; 4 uses
  %i.bv = lshr i64 %i.bm, 32
  %i.bw = and i64 %i.bv, 1073741823               ; 2 uses
  %i.bx = and i64 %i.bm, 4294967295
  %i.by = zext i32 %i.bt to i64                   ; 2 uses
  %i.bz = mul nuw i64 %i.bx, %i.by
  %i.ca = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.bz, i64 %i.bk) ; 2 uses
  %i.cb = extractvalue { i64, i1 } %i.ca, 1
  %i.cc = extractvalue { i64, i1 } %i.ca, 0
  %i.cd = zext nneg i32 %i.bu to i64
  %i.ce = lshr i64 %i.cc, %i.cd
  %i.cf = icmp ne i32 %i.bu, 0
  %or.cond.i.i.i.i = and i1 %i.cf, %i.cb
  %i.cg = sub i32 64, %i.bu
  %i.ch = zext nneg i32 %i.cg to i64
  %i.ci = shl nuw i64 1, %i.ch
  %i.cj = select i1 %or.cond.i.i.i.i, i64 %i.ci, i64 0
  %.0.i33.i.i.i = add i64 %i.cj, %i.ce            ; 2 uses
  %.not.i34.i.i.i = icmp eq i64 %i.bw, 0
  br i1 %.not.i34.i.i.i, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ck = mul nuw nsw i64 %i.bw, %i.by
  %i.cl = sub i32 32, %i.bu
  %i.cm = zext nneg i32 %i.cl to i64
  %i.cn = shl i64 %i.ck, %i.cm
  %i.co = add i64 %.0.i33.i.i.i, %i.cn
  br label %bb.v

bb.u:                                             ; preds = %bb.p
  %i.cp = load i32, ptr %6, align 8
  %i.cq = zext i32 %i.cp to i64
  %i.cr = mul i64 %i.bm, %i.cq
  %i.cs = add i64 %i.cr, %i.bk
  %i.ct = load i32, ptr %7, align 4
  %i.cu = zext nneg i32 %i.ct to i64
  %i.cv = lshr i64 %i.cs, %i.cu
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s, %bb.r
  %.0.i30.i.i.i = phi i64 [ %i.bs, %bb.r ], [ %i.cv, %bb.u ], [ %i.co, %bb.t ], [ %.0.i33.i.i.i, %bb.s ]
  %i.cw = load i64, ptr %i.az, align 8
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4, !srcloc !30
  %i.cx = load volatile i32, ptr %..i.i.i.i, align 8
  %.not35.i.i = icmp eq i32 %i.cx, %.lcssa37.i.i
  br i1 %.not35.i.i, label %bb.w, label %bb.o, !llvm.loop !2

bb.w:                                             ; preds = %bb.v
  %i.cy = load i64, ptr %i.ap, align 4
  %i.cz = add i64 %i.cy, %i.cw
  %i.da = load i64, ptr %i.aq, align 4
  %i.db = add i64 %i.da, %.0.i30.i.i.i            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %i.db, ptr %i.b, align 8
  %i.dc = icmp ugt i64 %i.db, 999999999
  br i1 %i.dc, label %.lr.ph75.i.i, label %__cvdso_clock_gettime_common.exit.i.i

.lr.ph75.i.i:                                     ; preds = %bb.w, %.lr.ph75.i.i
  %.0.i41.i73.i.i = phi i32 [ %i.dg, %.lr.ph75.i.i ], [ 0, %bb.w ]
  %i.dd = phi i64 [ %i.df, %.lr.ph75.i.i ], [ %i.db, %bb.w ]
  call void asm "", "=*rm,0,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) %i.b, i64 %i.dd) #4, !srcloc !31
  %i.de = load i64, ptr %i.b, align 8
  %i.df = add i64 %i.de, -1000000000              ; 4 uses
  store i64 %i.df, ptr %i.b, align 8
  %i.dg = add i32 %.0.i41.i73.i.i, 1              ; 2 uses
  %i.dh = icmp ugt i64 %i.df, 999999999
  br i1 %i.dh, label %.lr.ph75.i.i, label %__cvdso_clock_gettime_common.exit.i.i, !llvm.loop !3

._crit_edge62.i.i:                                ; preds = %bb.m, %bb.l
  %.lcssa40.i.i = phi i32 [ %i.av, %bb.l ], [ %i.ay, %bb.m ]
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4, !srcloc !32
  %i.di = load i32, ptr %i.an, align 4
  switch i32 %i.di, label %__cvdso_clock_gettime_common.exit.thread.i.i [
    i32 1, label %__arch_get_hw_counter.exit16.thread.i.i
    i32 2, label %__arch_get_hw_counter.exit16.i.i
  ], !prof !25

__arch_get_hw_counter.exit16.thread.i.i:          ; preds = %._crit_edge62.i.i
  %i.dj = tail call i64 asm sideeffect "# ALT: oldinstr\0A771:\0A\09# ALT: oldinstr\0A771:\0A\09rdtsc\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte (20*32+ 2)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09lfence; rdtsc\0A775:\0A.popsection\0A\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 1*32+27)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09rdtscp\0A775:\0A.popsection\0A", "=A,~{ecx},~{dirflag},~{fpsr},~{flags}"() #4, !srcloc !26
  %i.dk = and i64 %i.dj, 9223372036854775807
  br label %bb.x

__arch_get_hw_counter.exit16.i.i:                 ; preds = %._crit_edge62.i.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4, !srcloc !27
  %i.dl = tail call fastcc i64 @vread_pvclock() #5, !srcloc !28 ; 2 uses
  %i.dm = icmp sgt i64 %i.dl, -1
  br i1 %i.dm, label %bb.x, label %__cvdso_clock_gettime_common.exit.thread.i.i, !prof !33

bb.x:                                             ; preds = %__arch_get_hw_counter.exit16.i.i, %__arch_get_hw_counter.exit16.thread.i.i
  %.0.i1523.i.i = phi i64 [ %i.dk, %__arch_get_hw_counter.exit16.thread.i.i ], [ %i.dl, %__arch_get_hw_counter.exit16.i.i ]
  %i.dn = load i64, ptr %i.aq, align 4            ; 3 uses
  %i.do = load i64, ptr %i.ar, align 4
  %i.dp = sub i64 %.0.i1523.i.i, %i.do            ; 5 uses
  %i.dq = load i64, ptr %i.as, align 4
  %i.dr = icmp ugt i64 %i.dp, %i.dq
  br i1 %i.dr, label %bb.y, label %bb.ac, !prof !17

bb.y:                                             ; preds = %bb.x
  %i.ds = and i64 %i.dp, 4611686018427387904
  %.not.i29.i.i.i = icmp eq i64 %i.ds, 0
  br i1 %.not.i29.i.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dt = load i32, ptr %i.au, align 4
  %i.du = zext nneg i32 %i.dt to i64
  %i.dv = lshr i64 %i.dn, %i.du
  br label %bb.ad

bb.aa:                                            ; preds = %bb.y
  %i.dw = load i32, ptr %i.at, align 4
  %i.dx = load i32, ptr %i.au, align 4            ; 4 uses
  %i.dy = lshr i64 %i.dp, 32
  %i.dz = and i64 %i.dy, 1073741823               ; 2 uses
  %i.ea = and i64 %i.dp, 4294967295
  %i.eb = zext i32 %i.dw to i64                   ; 2 uses
  %i.ec = mul nuw i64 %i.ea, %i.eb
  %i.ed = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.ec, i64 %i.dn) ; 2 uses
  %i.ee = extractvalue { i64, i1 } %i.ed, 1
  %i.ef = extractvalue { i64, i1 } %i.ed, 0
  %i.eg = zext nneg i32 %i.dx to i64
  %i.eh = lshr i64 %i.ef, %i.eg
  %i.ei = icmp ne i32 %i.dx, 0
  %or.cond.i35.i.i.i = and i1 %i.ei, %i.ee
  %i.ej = sub i32 64, %i.dx
  %i.ek = zext nneg i32 %i.ej to i64
  %i.el = shl nuw i64 1, %i.ek
  %i.em = select i1 %or.cond.i35.i.i.i, i64 %i.el, i64 0
  %.0.i36.i.i.i = add i64 %i.em, %i.eh            ; 2 uses
  %.not.i37.i.i.i = icmp eq i64 %i.dz, 0
  br i1 %.not.i37.i.i.i, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.en = mul nuw nsw i64 %i.dz, %i.eb
  %i.eo = sub i32 32, %i.dx
  %i.ep = zext nneg i32 %i.eo to i64
  %i.eq = shl i64 %i.en, %i.ep
  %i.er = add i64 %.0.i36.i.i.i, %i.eq
  br label %bb.ad

bb.ac:                                            ; preds = %bb.x
  %i.es = load i32, ptr %i.at, align 4
  %i.et = zext i32 %i.es to i64
  %i.eu = mul i64 %i.dp, %i.et
end_hunk_1
