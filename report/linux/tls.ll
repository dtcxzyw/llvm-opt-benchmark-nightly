Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/tls?download=true
inline.NumInlined: 42
inline.NumDeleted: 31
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@do_set_thread_area:copy_from_user.exit
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.a, label %get_free_idx.exit

bb.a:                                             ; preds = %copy_from_user.exit
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 3 uses
  %i.c = load i32, ptr %i.b, align 4
  %i.d = icmp eq i32 %i.c, 0
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = load i32, ptr %i.e, align 4
  %i.g = icmp eq i32 %i.f, 0
  %or.cond59 = select i1 %i.d, i1 %i.g, i1 false
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.i = load i8, ptr %i.h, align 4               ; 2 uses
  br i1 %or.cond59, label %bb.b, label %LDT_zero.exit.thread.i

bb.b:                                             ; preds = %bb.a
  %i.j = and i8 %i.i, 127
  switch i8 %i.j, label %LDT_zero.exit.thread.i [
    i8 40, label %tls_desc_okay.exit.thread
    i8 0, label %tls_desc_okay.exit.thread
  ]

LDT_zero.exit.thread.i:                           ; preds = %bb.a, %bb.b
  %i.k = and i8 %i.i, 37
  %or.cond60 = icmp eq i8 %i.k, 1
  br i1 %or.cond60, label %tls_desc_okay.exit.thread, label %get_free_idx.exit

tls_desc_okay.exit.thread:                        ; preds = %LDT_zero.exit.thread.i, %bb.b, %bb.b
  %i.l = icmp eq i32 %1, -1
  %i.m = load i32, ptr %4, align 4
  %spec.select = select i1 %i.l, i32 %i.m, i32 %1 ; 2 uses
  %i.n = icmp eq i32 %spec.select, -1
  %i.o = icmp ne i32 %3, 0
  %or.cond = and i1 %i.o, %i.n
  br i1 %or.cond, label %bb.c, label %bb.f

bb.c:                                             ; preds = %tls_desc_okay.exit.thread
  %i.p = call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr @current_task) #13, !srcloc !12
  %i.q = inttoptr i64 %i.p to ptr                 ; 6 uses
  %i.r = getelementptr i8, ptr %i.q, i64 3112
  %.val.i = load i32, ptr %i.r, align 4
  %i.s = getelementptr i8, ptr %i.q, i64 3116
  %.val6.i = load i32, ptr %i.s, align 4
  %i.t = or i32 %.val6.i, %.val.i
  %.not.i.not.i = icmp eq i32 %i.t, 0
  br i1 %.not.i.not.i, label %select.unfold, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr i8, ptr %i.q, i64 3120
  %.val.1.i = load i32, ptr %i.u, align 4
  %i.v = getelementptr i8, ptr %i.q, i64 3124
  %.val6.1.i = load i32, ptr %i.v, align 4
  %i.w = or i32 %.val6.1.i, %.val.1.i
  %.not.i.not.1.i = icmp eq i32 %i.w, 0
  br i1 %.not.i.not.1.i, label %select.unfold, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr i8, ptr %i.q, i64 3128
  %.val.2.i = load i32, ptr %i.x, align 4
  %i.y = getelementptr i8, ptr %i.q, i64 3132
  %.val6.2.i = load i32, ptr %i.y, align 4
  %i.z = or i32 %.val6.2.i, %.val.2.i
  %.not.i.not.2.i = icmp eq i32 %i.z, 0
  br i1 %.not.i.not.2.i, label %select.unfold, label %get_free_idx.exit

select.unfold:                                    ; preds = %bb.e, %bb.c, %bb.d
  %.05.i.ph = phi i32 [ 12, %bb.c ], [ 13, %bb.d ], [ 14, %bb.e ] ; 2 uses
  %i.aa = call i64 @llvm.read_register.i64(metadata !0)
  %i.ab = call { ptr, i64 } asm sideeffect "call __put_user_${4:c}", "={cx},={rsp},0,{rax},i,{rsp},~{ebx},~{dirflag},~{fpsr},~{flags}"(ptr %2, i32 %.05.i.ph, i64 4, i64 %i.aa) #11, !srcloc !14 ; 2 uses
  %i.ac = extractvalue { ptr, i64 } %i.ab, 0
  %i.ad = extractvalue { ptr, i64 } %i.ab, 1
  %i.ae = ptrtoint ptr %i.ac to i64
  call void @llvm.write_register.i64(metadata !0, i64 %i.ad)
  %.mask = and i64 %i.ae, 4294967295
  %.not48 = icmp eq i64 %.mask, 0
  br i1 %.not48, label %bb.f, label %get_free_idx.exit

bb.f:                                             ; preds = %select.unfold, %tls_desc_okay.exit.thread
  %.1 = phi i32 [ %.05.i.ph, %select.unfold ], [ %spec.select, %tls_desc_okay.exit.thread ] ; 3 uses
  %i.af = add i32 %.1, -15
  %or.cond3 = icmp ult i32 %i.af, -3
  br i1 %or.cond3, label %get_free_idx.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call fastcc void @set_tls_desc(ptr noundef %0, i32 noundef %.1, ptr noundef nonnull %4, i32 noundef 1) #14, !srcloc !15
  %.1.tr = trunc nuw nsw i32 %.1 to i16
  %i.ag = shl nuw nsw i16 %.1.tr, 3
  %i.ah = or disjoint i16 %i.ag, 3                ; 9 uses
  %i.ai = call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr @current_task) #13, !srcloc !12
  %i.aj = inttoptr i64 %i.ai to ptr
  %i.ak = icmp eq ptr %0, %i.aj
  br i1 %i.ak, label %bb.h, label %bb.p

bb.h:                                             ; preds = %bb.g
  %i.al = call i64 asm sideeffect "movl %ds,${0:k}", "=r,~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !16
  %i.am = trunc i64 %i.al to i16
  %i.an = icmp eq i16 %i.ah, %i.am
  br i1 %i.an, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ao = call i16 asm sideeffect "1:\09movl ${0:k},%ds\0A .pushsection __ex_table, \22aM\22, @progbits, 12\0A .balign 4\0A .long (1b) - .\0A .long (1b) - .\0A.macro extable_type_reg type:req reg:req\0A.set .Lfound, 0\0A.set .Lregnr, 0\0A.irp rs,rax,rcx,rdx,rbx,rsp,rbp,rsi,rdi,r8,r9,r10,r11,r12,r13,r14,r15\0A.ifc \\reg, %\\rs\0A.set .Lfound, .Lfound+1\0A.long \\type + (.Lregnr << 8)\0A.endif\0A.set .Lregnr, .Lregnr+1\0A.endr\0A.set .Lregnr, 0\0A.irp rs,eax,ecx,edx,ebx,esp,ebp,esi,edi,r8d,r9d,r10d,r11d,r12d,r13d,r14d,r15d\0A.ifc \\reg, %\\rs\0A.set .Lfound, .Lfound+1\0A.long \\type + (.Lregnr << 8)\0A.endif\0A.set .Lregnr, .Lregnr+1\0A.endr\0A.if (.Lfound != 1)\0A.error \22extable_type_reg: bad register argument\22\0A.endif\0A.endm\0Aextable_type_reg reg=${0:k}, type=(17 $| ((0) << 16)) \0A.purgem extable_type_reg\0A .popsection\0A", "=r,0,~{memory},~{dirflag},~{fpsr},~{flags}"(i16 %i.ah) #11, !srcloc !17 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ap = call i64 asm sideeffect "movl %es,${0:k}", "=r,~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !18
  %i.aq = trunc i64 %i.ap to i16
  %i.ar = icmp eq i16 %i.ah, %i.aq
  br i1 %i.ar, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.as = call i16 asm sideeffect "1:\09movl ${0:k},%es\0A .pushsection __ex_table, \22aM\22, @progbits, 12\0A .balign 4\0A .long (1b) - .\0A .long (1b) - .\0A.macro extable_type_reg type:req reg:req\0A.set .Lfound, 0\0A.set .Lregnr, 0\0A.irp rs,rax,rcx,rdx,rbx,rsp,rbp,rsi,rdi,r8,r9,r10,r11,r12,r13,r14,r15\0A.ifc \\reg, %\\rs\0A.set .Lfound, .Lfound+1\0A.long \\type + (.Lregnr << 8)\0A.endif\0A.set .Lregnr, .Lregnr+1\0A.endr\0A.set .Lregnr, 0\0A.irp rs,eax,ecx,edx,ebx,esp,ebp,esi,edi,r8d,r9d,r10d,r11d,r12d,r13d,r14d,r15d\0A.ifc \\reg, %\\rs\0A.set .Lfound, .Lfound+1\0A.long \\type + (.Lregnr << 8)\0A.endif\0A.set .Lregnr, .Lregnr+1\0A.endr\0A.if (.Lfound != 1)\0A.error \22extable_type_reg: bad register argument\22\0A.endif\0A.endm\0Aextable_type_reg reg=${0:k}, type=(17 $| ((0) << 16)) \0A.purgem extable_type_reg\0A .popsection\0A", "=r,0,~{memory},~{dirflag},~{fpsr},~{flags}"(i16 %i.ah) #11, !srcloc !19 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.at = call i64 asm sideeffect "movl %fs,${0:k}", "=r,~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !20
  %i.au = trunc i64 %i.at to i16
  %i.av = icmp eq i16 %i.ah, %i.au
  br i1 %i.av, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void asm sideeffect "1:\09movw $0, %fs\0A2:\0A .pushsection __ex_table, \22aM\22, @progbits, 12\0A .balign 4\0A .long (1b) - .\0A .long (2b) - .\0A .long 5 \0A .popsection\0A", "r,~{memory},~{dirflag},~{fpsr},~{flags}"(i16 %i.ah) #11, !srcloc !21
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.aw = call i64 asm sideeffect "movl %gs,${0:k}", "=r,~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !22 ; 2 uses
  %i.ax = trunc i64 %i.aw to i16
  %i.ay = icmp eq i16 %i.ah, %i.ax
  br i1 %i.ay, label %bb.o, label %get_free_idx.exit

bb.o:                                             ; preds = %bb.n
  %i.az = trunc i64 %i.aw to i32
  %i.ba = and i32 %i.az, 65535
  call fastcc void @load_gs_index(i32 noundef %i.ba) #14, !srcloc !23
  br label %get_free_idx.exit

bb.p:                                             ; preds = %bb.g
  %i.bb = getelementptr i8, ptr %0, i64 3148
  %i.bc = load i16, ptr %i.bb, align 4
  %i.bd = icmp eq i16 %i.bc, %i.ah
  br i1 %i.bd, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.be = load i32, ptr %i.b, align 4
  %i.bf = zext i32 %i.be to i64
  %i.bg = getelementptr i8, ptr %0, i64 3152
  store i64 %i.bf, ptr %i.bg, align 8
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bh = getelementptr i8, ptr %0, i64 3150
  %i.bi = load i16, ptr %i.bh, align 2
  %i.bj = icmp eq i16 %i.bi, %i.ah
  br i1 %i.bj, label %bb.s, label %get_free_idx.exit

bb.s:                                             ; preds = %bb.r
  %i.bk = load i32, ptr %i.b, align 4
  %i.bl = zext i32 %i.bk to i64
  %i.bm = getelementptr i8, ptr %0, i64 3160
  store i64 %i.bl, ptr %i.bm, align 8
  br label %get_free_idx.exit

get_free_idx.exit:                                ; preds = %LDT_zero.exit.thread.i, %bb.e, %bb.s, %bb.r, %bb.o, %bb.n, %bb.f, %select.unfold, %copy_from_user.exit
  %.0 = phi i32 [ -14, %copy_from_user.exit ], [ -22, %LDT_zero.exit.thread.i ], [ -3, %bb.e ], [ -14, %select.unfold ], [ -22, %bb.f ], [ 0, %bb.n ], [ 0, %bb.o ], [ 0, %bb.r ], [ 0, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare i64 @llvm.read_register.i64(metadata) #3

; Function Attrs: nocallback nounwind
declare void @llvm.write_register.i64(metadata, i64) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @set_tls_desc(ptr nofree noundef captures(address) %0, i32 noundef range(i32 12, 15) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef range(i32 0, 268435456) %3) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 3112       ; 2 uses
  tail call void asm "incl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) @__preempt_count, ptr elementtype(i32) @__preempt_count) #11, !srcloc !25
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !26
  %i.b = tail call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) @cpu_number) #15, !srcloc !27
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.c = zext nneg i32 %1 to i64
  %i.d = getelementptr [8 x i8], ptr %i.a, i64 %i.c
  %i.e = getelementptr i8, ptr %i.d, i64 -96
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.e
  %.in = phi i32 [ %i.f, %bb.e ], [ %3, %.lr.ph.preheader ] ; 2 uses
  %.043 = phi ptr [ %i.cb, %bb.e ], [ %2, %.lr.ph.preheader ] ; 7 uses
  %.02741 = phi ptr [ %i.cc, %bb.e ], [ %i.e, %.lr.ph.preheader ] ; 5 uses
  %i.f = add nsw i32 %.in, -1
  %i.g = getelementptr i8, ptr %.043, i64 4       ; 4 uses
  %i.h = load i32, ptr %i.g, align 4
  %i.i = icmp eq i32 %i.h, 0
  %i.j = getelementptr i8, ptr %.043, i64 8
  %i.k = load i32, ptr %i.j, align 4              ; 2 uses
  %i.l = icmp eq i32 %i.k, 0
  %or.cond = select i1 %i.i, i1 %i.l, i1 false
  br i1 %or.cond, label %bb.b, label %LDT_zero.exit.thread

bb.b:                                             ; preds = %.lr.ph
  %i.m = getelementptr i8, ptr %.043, i64 12
  %i.n = load i8, ptr %i.m, align 4
  %i.o = and i8 %i.n, 127
  %or.cond36 = icmp eq i8 %i.o, 40
  br i1 %or.cond36, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr i8, ptr %.043, i64 12
  %i.q = load i8, ptr %i.p, align 4
  %i.r = and i8 %i.q, 127
  %or.cond38 = icmp eq i8 %i.r, 0
  br i1 %or.cond38, label %bb.d, label %LDT_zero.exit.thread

bb.d:                                             ; preds = %bb.c, %bb.b
  store i64 0, ptr %.02741, align 1
  br label %bb.e

LDT_zero.exit.thread:                             ; preds = %.lr.ph, %bb.c
  %i.s = phi i32 [ %i.k, %.lr.ph ], [ 0, %bb.c ]
  %4 = getelementptr i8, ptr %.043, i64 8
  %i.t = trunc i32 %i.s to i16
  store i16 %i.t, ptr %.02741, align 1
  %i.u = load i32, ptr %i.g, align 4
  %i.v = trunc i32 %i.u to i16
  %i.w = getelementptr i8, ptr %.02741, i64 2
  store i16 %i.v, ptr %i.w, align 1
  %5 = load i32, ptr %i.g, align 4
  %6 = lshr i32 %5, 16
  %7 = and i32 %6, 255
  %i.x = getelementptr i8, ptr %.02741, i64 4     ; 10 uses
  %i.y = load i32, ptr %i.x, align 1
  %i.z = and i32 %i.y, -256
  %i.aa = or disjoint i32 %i.z, %7                ; 3 uses
  store i32 %i.aa, ptr %i.x, align 1
  %i.ab = getelementptr i8, ptr %.043, i64 12     ; 6 uses
  %i.ac = load i8, ptr %i.ab, align 4
  %i.ad = lshr i8 %i.ac, 2
  %i.ae = and i8 %i.ad, 2
  %i.af = xor i8 %i.ae, 2                         ; 2 uses
  %i.ag = zext nneg i8 %i.af to i32
  %i.ah = shl nuw nsw i32 %i.ag, 8
  %i.ai = and i32 %i.aa, -3841
  %i.aj = or disjoint i32 %i.ah, %i.ai
  store i32 %i.aj, ptr %i.x, align 1
  %i.ak = load i8, ptr %i.ab, align 4
  %i.al = shl i8 %i.ak, 1
  %i.am = and i8 %i.al, 12
  %i.an = or disjoint i8 %i.af, %i.am
  %i.ao = or disjoint i8 %i.an, 1
  %i.ap = zext nneg i8 %i.ao to i32
  %i.aq = shl nuw nsw i32 %i.ap, 8
  %.masked.i = and i32 %i.aa, -32513
  %i.ar = or disjoint i32 %i.aq, %.masked.i
  %i.as = or i32 %i.ar, 28672                     ; 2 uses
  store i32 %i.as, ptr %i.x, align 1
  %i.at = load i8, ptr %i.ab, align 4
  %i.au = lshr i8 %i.at, 5
  %i.av = and i8 %i.au, 1
  %i.aw = xor i8 %i.av, 1
  %i.ax = zext nneg i8 %i.aw to i32
  %i.ay = shl nuw nsw i32 %i.ax, 15
  %i.az = and i32 %i.as, -32769
  %i.ba = or disjoint i32 %i.az, %i.ay            ; 2 uses
  store i32 %i.ba, ptr %i.x, align 1
  %8 = load i32, ptr %4, align 4
  %9 = and i32 %8, 983040
  %i.bb = and i32 %i.ba, -983041
  %i.bc = or disjoint i32 %i.bb, %9               ; 2 uses
  store i32 %i.bc, ptr %i.x, align 1
  %i.bd = load i8, ptr %i.ab, align 4
  %i.be = lshr i8 %i.bd, 6
  %i.bf = and i8 %i.be, 1
  %i.bg = zext nneg i8 %i.bf to i32
  %i.bh = shl nuw nsw i32 %i.bg, 20
  %i.bi = and i32 %i.bc, -1048577
  %i.bj = or disjoint i32 %i.bi, %i.bh            ; 2 uses
  store i32 %i.bj, ptr %i.x, align 1
  %i.bk = load i8, ptr %i.ab, align 4
  %i.bl = and i8 %i.bk, 1
  %i.bm = zext nneg i8 %i.bl to i32
  %i.bn = shl nuw nsw i32 %i.bm, 22
  %i.bo = and i32 %i.bj, -4194305
  %i.bp = or disjoint i32 %i.bo, %i.bn            ; 2 uses
  store i32 %i.bp, ptr %i.x, align 1
  %i.bq = load i8, ptr %i.ab, align 4
  %i.br = lshr i8 %i.bq, 4
  %i.bs = and i8 %i.br, 1
  %i.bt = zext nneg i8 %i.bs to i32
  %i.bu = shl nuw nsw i32 %i.bt, 23
  %i.bv = and i32 %i.bp, -8388609
  %i.bw = or disjoint i32 %i.bv, %i.bu            ; 2 uses
  store i32 %i.bw, ptr %i.x, align 1
  %i.bx = load i32, ptr %i.g, align 4
  %i.by = and i32 %i.bx, -16777216
  %i.bz = and i32 %i.bw, 14680063
  %i.ca = or disjoint i32 %i.bz, %i.by
  store i32 %i.ca, ptr %i.x, align 1
  br label %bb.e

bb.e:                                             ; preds = %LDT_zero.exit.thread, %bb.d
  %i.cb = getelementptr i8, ptr %.043, i64 16
  %i.cc = getelementptr i8, ptr %.02741, i64 8
  %i.cd = icmp samesign ugt i32 %.in, 1
  br i1 %i.cd, label %.lr.ph, label %._crit_edge, !llvm.loop !24

._crit_edge:                                      ; preds = %bb.e, %bb.a
  %i.ce = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr @current_task) #13, !srcloc !12
  %i.cf = inttoptr i64 %i.ce to ptr
  %i.cg = icmp eq ptr %0, %i.cf
  br i1 %i.cg, label %bb.f, label %bb.g

bb.f:                                             ; preds = %._crit_edge
  %i.ch = zext i32 %i.b to i64
  %i.ci = getelementptr [8 x i8], ptr @__per_cpu_offset, i64 %i.ch
  %i.cj = load i64, ptr %i.ci, align 8
  %i.ck = add i64 %i.cj, ptrtoint (ptr @gdt_page to i64)
  %i.cl = inttoptr i64 %i.ck to ptr               ; 3 uses
  %i.cm = getelementptr i8, ptr %i.cl, i64 96
  %i.cn = load i64, ptr %i.a, align 8
  store i64 %i.cn, ptr %i.cm, align 1
  %i.co = getelementptr i8, ptr %i.cl, i64 104
  %i.cp = getelementptr i8, ptr %0, i64 3120
  %i.cq = load i64, ptr %i.cp, align 8
  store i64 %i.cq, ptr %i.co, align 1
  %i.cr = getelementptr i8, ptr %i.cl, i64 112
  %i.cs = getelementptr i8, ptr %0, i64 3128
  %i.ct = load i64, ptr %i.cs, align 8
  store i64 %i.ct, ptr %i.cr, align 1
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge, %bb.f
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !28
  %i.cu = tail call i8 asm sideeffect "decl %gs:$0", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) @__preempt_count, ptr elementtype(i32) @__preempt_count) #11, !srcloc !29 ; 2 uses
  %i.cv = icmp ult i8 %i.cu, 2
  tail call void @llvm.assume(i1 %i.cv)
  %i.cw = trunc nuw i8 %i.cu to i1
  br i1 %i.cw, label %bb.h, label %bb.i, !prof !30

bb.h:                                             ; preds = %bb.g
  %i.cx = tail call i64 @llvm.read_register.i64(metadata !0)
  %i.cy = tail call i64 asm sideeffect "call __SCT__preempt_schedule", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %i.cx) #11, !srcloc !31
  tail call void @llvm.write_register.i64(metadata !0, i64 %i.cy)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  ret void
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @load_gs_index(i32 noundef range(i32 99, 116) %0) unnamed_addr #5 align 16 prefalign(16) {
bb.a:
  callbr void asm sideeffect "# ALT: oldinstr\0A771:\0A\09# ALT: oldinstr\0A771:\0A\09jmp 6f\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 3*32+21)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09jmp ${4:l}\0A775:\0A.popsection\0A\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ${0:c}\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09\0A775:\0A.popsection\0A.pushsection .altinstr_aux,\22ax\22\0A6:\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A testb $1, ${2:a}\0A jnz ${3:l}\0A jmp ${4:l}\0A.popsection\0A", "i,i,i,!i,!i,~{dirflag},~{fpsr},~{flags}"(i16 402, i32 4, ptr nonnull getelementptr inbounds nuw (i8, ptr @boot_cpu_data, i64 98)) #11
          to label %bb.b [label %bb.b, label %_static_cpu_has.exit.i], !srcloc !32

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.a = trunc nuw nsw i32 %0 to i16
  %i.b = tail call i16 asm sideeffect "1:  .byte 0xf2,0x0f,0x00,0xf7 ;  .pushsection __ex_table, \22aM\22, @progbits, 12\0A .balign 4\0A .long (1b) - .\0A .long (1b) - .\0A.macro extable_type_reg type:req reg:req\0A.set .Lfound, 0\0A.set .Lregnr, 0\0A.irp rs,rax,rcx,rdx,rbx,rsp,rbp,rsi,rdi,r8,r9,r10,r11,r12,r13,r14,r15\0A.ifc \\reg, %\\rs\0A.set .Lfound, .Lfound+1\0A.long \\type + (.Lregnr << 8)\0A.endif\0A.set .Lregnr, .Lregnr+1\0A.endr\0A.set .Lregnr, 0\0A.irp rs,eax,ecx,edx,ebx,esp,ebp,esi,edi,r8d,r9d,r10d,r11d,r12d,r13d,r14d,r15d\0A.ifc \\reg, %\\rs\0A.set .Lfound, .Lfound+1\0A.long \\type + (.Lregnr << 8)\0A.endif\0A.set .Lregnr, .Lregnr+1\0A.endr\0A.if (.Lfound != 1)\0A.error \22extable_type_reg: bad register argument\22\0A.endif\0A.endm\0Aextable_type_reg reg=${0:k}, type=(17 $| ((0) << 16)) \0A.purgem extable_type_reg\0A .popsection\0A", "={di},0,~{dirflag},~{fpsr},~{flags}"(i16 %i.a) #11, !srcloc !33 ; 0 uses
  br label %native_load_gs_index.exit

_static_cpu_has.exit.i:                           ; preds = %bb.a
  %i.c = tail call i64 asm sideeffect "# __raw_save_flags\0A\09pushf ; pop $0", "=r,~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !34
  tail call void asm sideeffect "cli", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !35
  %i.d = trunc nuw nsw i32 %0 to i16
  tail call void @asm_load_gs_index(i16 noundef zeroext %i.d) #12
  %i.e = and i64 %i.c, 512
  %.not.i3.not.i = icmp eq i64 %i.e, 0
  br i1 %.not.i3.not.i, label %native_load_gs_index.exit, label %bb.c

bb.c:                                             ; preds = %_static_cpu_has.exit.i
  tail call void asm sideeffect "sti", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !36
  br label %native_load_gs_index.exit

native_load_gs_index.exit:                        ; preds = %bb.b, %_static_cpu_has.exit.i, %bb.c
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i64 -22, 1) i64 @__x64_sys_set_thread_area(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 112
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr @current_task) #13, !srcloc !12
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = tail call i32 @do_set_thread_area(ptr noundef %i.e, i32 noundef -1, ptr noundef %i.c, i32 noundef 1) #14
  %i.g = sext i32 %i.f to i64
  ret i64 %i.g
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i64 -22, 1) i64 @__ia32_sys_set_thread_area(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8
  %i.c = and i64 %i.b, 4294967295
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr @current_task) #13, !srcloc !12
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = tail call i32 @do_set_thread_area(ptr noundef %i.f, i32 noundef -1, ptr noundef %i.d, i32 noundef 1) #14
  %i.h = sext i32 %i.g to i64
  ret i64 %i.h
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -22, 1) i32 @do_get_thread_area(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %3 = alloca %struct.user_desc, align 4          ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  %i.a = icmp eq i32 %1, -1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 @llvm.read_register.i64(metadata !0)
  %i.c = tail call { ptr, i32, i64 } asm sideeffect "call __get_user_${4:c}", "={ax},={rdx},={rsp},0,i,{rsp},~{dirflag},~{fpsr},~{flags}"(ptr %2, i64 4, i64 %i.b) #11, !srcloc !37 ; 3 uses
  %i.d = extractvalue { ptr, i32, i64 } %i.c, 0
  %i.e = extractvalue { ptr, i32, i64 } %i.c, 1
  %i.f = extractvalue { ptr, i32, i64 } %i.c, 2
  %i.g = ptrtoint ptr %i.d to i64
  tail call void @llvm.write_register.i64(metadata !0, i64 %i.f)
  %.mask = and i64 %i.g, 4294967295
  %.not = icmp eq i64 %.mask, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %.025 = phi i32 [ %i.e, %bb.b ], [ %1, %bb.a ]  ; 3 uses
  %i.h = add i32 %.025, -15
  %or.cond = icmp ult i32 %i.h, -3
  br i1 %or.cond, label %bb.d, label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %bb.c
  %i.i = add nsw i32 %.025, -12                   ; 2 uses
  %i.j = tail call i64 asm sideeffect "cmp $1,$2; sbb $0,$0", "=r,ir,r,~{cc},~{dirflag},~{fpsr},~{flags}"(i32 3, i32 %i.i) #11, !srcloc !38
  %i.k = trunc i64 %i.j to i32
  %i.l = and i32 %i.i, %i.k
  %i.m = getelementptr i8, ptr %0, i64 3112
  %i.n = zext nneg i32 %i.l to i64
  %i.o = getelementptr [8 x i8], ptr %i.m, i64 %i.n ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 0, ptr %i.q, align 4
  store i32 %.025, ptr %3, align 4
  %i.r = getelementptr i8, ptr %i.o, i64 2
  %.val.i = load i16, ptr %i.r, align 1
  %i.s = getelementptr i8, ptr %i.o, i64 4
  %.val27.i = load i32, ptr %i.s, align 1         ; 9 uses
  %i.t = zext i16 %.val.i to i32
  %i.u = shl i32 %.val27.i, 16
  %i.v = and i32 %i.u, 16711680
  %i.w = and i32 %.val27.i, -16777216
  %i.x = or disjoint i32 %i.w, %i.t
  %i.y = or disjoint i32 %i.x, %i.v
  store i32 %i.y, ptr %i.p, align 4
  %.val28.i = load i16, ptr %i.o, align 1
  %i.z = zext i16 %.val28.i to i32
  %i.aa = and i32 %.val27.i, 983040
  %i.ab = or disjoint i32 %i.aa, %i.z
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.ab, ptr %i.ac, align 4
  %i.ad = lshr i32 %.val27.i, 22
  %i.ae = trunc i32 %i.ad to i8
  %i.af = and i8 %i.ae, 1
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 12
  %sh.diff.i = lshr i32 %.val27.i, 9
  %tr.sh.diff.i = trunc i32 %sh.diff.i to i8
  %i.ah = and i8 %tr.sh.diff.i, 6
  %i.ai = or disjoint i8 %i.ah, %i.af
  %i.aj = and i32 %.val27.i, 512
  %.not.i = icmp eq i32 %i.aj, 0
end_hunk_0
