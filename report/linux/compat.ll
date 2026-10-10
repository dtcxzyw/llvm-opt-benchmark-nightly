Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/compat?download=true
inline.NumInlined: 31
inline.NumDeleted: 15
begin_hunk_0_@put_compat_rusage:copy_to_user.exit
  %2 = alloca %struct.compat_rusage, align 4      ; 21 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  %i.a = load i64, ptr %0, align 8
  %i.b = trunc i64 %i.a to i32
  store i32 %i.b, ptr %2, align 4
  %i.c = getelementptr i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8
  %i.e = trunc i64 %i.d to i32
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %i.e, ptr %i.f, align 4
  %i.g = getelementptr i8, ptr %0, i64 16
  %i.h = load i64, ptr %i.g, align 8
  %i.i = trunc i64 %i.h to i32
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.i, ptr %i.j, align 4
  %i.k = getelementptr i8, ptr %0, i64 24
  %i.l = load i64, ptr %i.k, align 8
  %i.m = trunc i64 %i.l to i32
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 %i.m, ptr %i.n, align 4
  %i.o = getelementptr i8, ptr %0, i64 32
  %i.p = load i64, ptr %i.o, align 8
  %i.q = trunc i64 %i.p to i32
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 %i.q, ptr %i.r, align 4
  %i.s = getelementptr i8, ptr %0, i64 40
  %i.t = load i64, ptr %i.s, align 8
  %i.u = trunc i64 %i.t to i32
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %i.u, ptr %i.v, align 4
  %i.w = getelementptr i8, ptr %0, i64 48
  %i.x = load i64, ptr %i.w, align 8
  %i.y = trunc i64 %i.x to i32
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 %i.y, ptr %i.z, align 4
  %i.aa = getelementptr i8, ptr %0, i64 56
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = trunc i64 %i.ab to i32
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 28
  store i32 %i.ac, ptr %i.ad, align 4
  %i.ae = getelementptr i8, ptr %0, i64 64
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = trunc i64 %i.af to i32
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i32 %i.ag, ptr %i.ah, align 4
  %i.ai = getelementptr i8, ptr %0, i64 72
  %i.aj = load i64, ptr %i.ai, align 8
  %i.ak = trunc i64 %i.aj to i32
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 36
  store i32 %i.ak, ptr %i.al, align 4
  %i.am = getelementptr i8, ptr %0, i64 80
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = trunc i64 %i.an to i32
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i32 %i.ao, ptr %i.ap, align 4
  %i.aq = getelementptr i8, ptr %0, i64 88
  %i.ar = load i64, ptr %i.aq, align 8
  %i.as = trunc i64 %i.ar to i32
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 44
  store i32 %i.as, ptr %i.at, align 4
  %i.au = getelementptr i8, ptr %0, i64 96
  %i.av = load i64, ptr %i.au, align 8
  %i.aw = trunc i64 %i.av to i32
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i32 %i.aw, ptr %i.ax, align 4
  %i.ay = getelementptr i8, ptr %0, i64 104
  %i.az = load i64, ptr %i.ay, align 8
  %i.ba = trunc i64 %i.az to i32
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 52
  store i32 %i.ba, ptr %i.bb, align 4
  %i.bc = getelementptr i8, ptr %0, i64 112
  %i.bd = load i64, ptr %i.bc, align 8
  %i.be = trunc i64 %i.bd to i32
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 56
  store i32 %i.be, ptr %i.bf, align 4
  %i.bg = getelementptr i8, ptr %0, i64 120
  %i.bh = load i64, ptr %i.bg, align 8
  %i.bi = trunc i64 %i.bh to i32
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 60
  store i32 %i.bi, ptr %i.bj, align 4
  %i.bk = getelementptr i8, ptr %0, i64 128
  %i.bl = load i64, ptr %i.bk, align 8
  %i.bm = trunc i64 %i.bl to i32
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i32 %i.bm, ptr %i.bn, align 4
  %i.bo = getelementptr i8, ptr %0, i64 136
  %i.bp = load i64, ptr %i.bo, align 8
  %i.bq = trunc i64 %i.bp to i32
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 68
  store i32 %i.bq, ptr %i.br, align 4
  %i.bs = call i64 @_copy_to_user(ptr noundef %1, ptr noundef nonnull %2, i64 noundef 72) #9
  %.fr = freeze i64 %i.bs
  %.not = icmp eq i64 %.fr, 0
  %spec.select = select i1 %.not, i32 0, i32 -14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  ret i32 %spec.select
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i64 -2147483648, 2147483648) i64 @__ia32_compat_sys_sched_setaffinity(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %1 = alloca [1 x %struct.cpumask], align 8      ; 6 uses
  %i.a = getelementptr i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %0, i64 88
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr i8, ptr %0, i64 96
  %i.f = load i64, ptr %i.e, align 8
  %i.g = and i64 %i.f, 4294967295                 ; 2 uses
  %i.h = trunc i64 %i.b to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #7
  %i.i = tail call i64 asm "mov $1,$0\0A1:\0A.pushsection runtime_ptr_USER_PTR_MAX,\22a\22\0A\09.long 1b - ${2:c} - .\0A.popsection", "=r,i,i,~{dirflag},~{fpsr},~{flags}"(i64 81985529216486895, i64 8) #8, !srcloc !12
  %.not36.i.i.i.i = icmp ult i64 %i.i, %i.g
  br i1 %.not36.i.i.i.i, label %__se_compat_sys_sched_setaffinity.exit, label %user_access_begin.exit.i.i.i.i, !prof !13

user_access_begin.exit.i.i.i.i:                   ; preds = %bb.a
  %i.j = and i64 %i.d, 4294967288
  %i.k = inttoptr i64 %i.g to ptr                 ; 2 uses
  %i.l = trunc i64 %i.d to i32
  %i.m = icmp eq i64 %i.j, 0
  %i.n = shl nuw nsw i32 %i.l, 3
  %narrow.i.i.i = add nuw nsw i32 %i.n, 31
  %narrow.i.i = select i1 %i.m, i32 %narrow.i.i.i, i32 95 ; 2 uses
  store i64 0, ptr %1, align 8, !annotation !11
  %i.o = lshr i32 %narrow.i.i, 5
  %i.p = zext nneg i32 %i.o to i64                ; 2 uses
  tail call void asm sideeffect "# ALT: oldinstr\0A771:\0A\09\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 9*32+20)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09stac\0A775:\0A.popsection\0A", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !srcloc !14
  tail call void asm sideeffect "# ALT: oldinstr\0A771:\0A\09\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte (20*32+ 2)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09lfence\0A775:\0A.popsection\0A", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !srcloc !15
  %i.q = icmp samesign ugt i32 %narrow.i.i, 63
  br i1 %i.q, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %user_access_begin.exit.i.i.i.i, %bb.c
  %.02142.i.i.i.i = phi ptr [ %i.z, %bb.c ], [ %1, %user_access_begin.exit.i.i.i.i ] ; 2 uses
  %.02241.i.i.i.i = phi ptr [ %i.u, %bb.c ], [ %i.k, %user_access_begin.exit.i.i.i.i ] ; 3 uses
  %.02540.i.i.i.i = phi i64 [ %i.aa, %bb.c ], [ %i.p, %user_access_begin.exit.i.i.i.i ]
  %i.r = callbr i32 asm sideeffect "\0A1:\09movl $1,$0\0A .pushsection __ex_table, \22aM\22, @progbits, 12\0A .balign 4\0A .long (1b) - .\0A .long (${2:l}) - .\0A .long 3 \0A .popsection\0A", "=r,*m,!i,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(%struct.__large_struct) %.02241.i.i.i.i) #7
          to label %bb.b [label %.thread.i.i.i.i], !srcloc !16

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.s = getelementptr i8, ptr %.02241.i.i.i.i, i64 4
  %i.t = callbr i32 asm sideeffect "\0A1:\09movl $1,$0\0A .pushsection __ex_table, \22aM\22, @progbits, 12\0A .balign 4\0A .long (1b) - .\0A .long (${2:l}) - .\0A .long 3 \0A .popsection\0A", "=r,*m,!i,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(%struct.__large_struct) %i.s) #7
          to label %bb.c [label %.thread.i.i.i.i], !srcloc !17

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr i8, ptr %.02241.i.i.i.i, i64 8 ; 2 uses
  %i.v = zext i32 %i.r to i64
  %i.w = zext i32 %i.t to i64
  %i.x = shl nuw i64 %i.w, 32
  %i.y = or disjoint i64 %i.x, %i.v
  %i.z = getelementptr i8, ptr %.02142.i.i.i.i, i64 8 ; 2 uses
  store i64 %i.y, ptr %.02142.i.i.i.i, align 8
  %i.aa = add nsw i64 %.02540.i.i.i.i, -2         ; 3 uses
  %i.ab = icmp ugt i64 %i.aa, 1
  br i1 %i.ab, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.c, %user_access_begin.exit.i.i.i.i
  %.025.lcssa.i.i.i.i = phi i64 [ %i.p, %user_access_begin.exit.i.i.i.i ], [ %i.aa, %bb.c ]
  %.022.lcssa.i.i.i.i = phi ptr [ %i.k, %user_access_begin.exit.i.i.i.i ], [ %i.u, %bb.c ]
  %.021.lcssa.i.i.i.i = phi ptr [ %1, %user_access_begin.exit.i.i.i.i ], [ %i.z, %bb.c ]
  %.not.i.i.i.i = icmp eq i64 %.025.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ac = callbr i32 asm sideeffect "\0A1:\09movl $1,$0\0A .pushsection __ex_table, \22aM\22, @progbits, 12\0A .balign 4\0A .long (1b) - .\0A .long (${2:l}) - .\0A .long 3 \0A .popsection\0A", "=r,*m,!i,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(%struct.__large_struct) %.022.lcssa.i.i.i.i) #7
          to label %bb.e [label %.thread.i.i.i.i], !srcloc !18

bb.e:                                             ; preds = %bb.d
  %i.ad = zext i32 %i.ac to i64
  store i64 %i.ad, ptr %.021.lcssa.i.i.i.i, align 8
  br label %bb.f

.thread.i.i.i.i:                                  ; preds = %bb.b, %.lr.ph.i.i.i.i, %bb.d
  tail call void asm sideeffect "# ALT: oldinstr\0A771:\0A\09\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 9*32+20)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09clac\0A775:\0A.popsection\0A", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !srcloc !19
  br label %__se_compat_sys_sched_setaffinity.exit

bb.f:                                             ; preds = %bb.e, %._crit_edge.i.i.i.i
  tail call void asm sideeffect "# ALT: oldinstr\0A771:\0A\09\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 9*32+20)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09clac\0A775:\0A.popsection\0A", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !srcloc !19
  %i.ae = call i64 @sched_setaffinity(i32 noundef %i.h, ptr noundef nonnull %1) #9
  %i.af = shl i64 %i.ae, 32
  %i.ag = ashr exact i64 %i.af, 32
  br label %__se_compat_sys_sched_setaffinity.exit

__se_compat_sys_sched_setaffinity.exit:           ; preds = %bb.a, %.thread.i.i.i.i, %bb.f
  %.0.i.i = phi i64 [ %i.ag, %bb.f ], [ -14, %.thread.i.i.i.i ], [ -14, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #7
  ret i64 %.0.i.i
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i64 -2147483648, 2147483648) i64 @__ia32_compat_sys_sched_getaffinity(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %1 = alloca [1 x %struct.cpumask], align 8      ; 6 uses
  %i.a = getelementptr i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %0, i64 88
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %i.e = and i64 %i.d, 4294967288
  %i.f = getelementptr i8, ptr %0, i64 96
  %i.g = load i64, ptr %i.f, align 8
  %i.h = and i64 %i.g, 4294967295                 ; 2 uses
  %i.i = trunc i64 %i.d to i32                    ; 3 uses
  %i.j = inttoptr i64 %i.h to ptr                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #7
  %i.k = shl i32 %i.i, 3
  %i.l = load i32, ptr @nr_cpu_ids, align 4
  %i.m = icmp uge i32 %i.k, %i.l
  %i.n = and i32 %i.i, 3
  %.not.i.i = icmp eq i32 %i.n, 0
  %or.cond.i.i = and i1 %.not.i.i, %i.m
  br i1 %or.cond.i.i, label %bb.b, label %__se_compat_sys_sched_getaffinity.exit

bb.b:                                             ; preds = %bb.a
  %i.o = trunc i64 %i.b to i32
  store i64 0, ptr %1, align 8
  %i.p = call i64 @sched_getaffinity(i32 noundef %i.o, ptr noundef nonnull %1) #9
  %i.q = trunc i64 %i.p to i32                    ; 2 uses
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %.split.i.i.i, label %compat_put_bitmap.exit.thread.i.i

.split.i.i.i:                                     ; preds = %bb.b
  %i.s = call i32 @llvm.umin.i32(i32 %i.i, i32 8) ; 2 uses
  %i.t = call i64 asm "mov $1,$0\0A1:\0A.pushsection runtime_ptr_USER_PTR_MAX,\22a\22\0A\09.long 1b - ${2:c} - .\0A.popsection", "=r,i,i,~{dirflag},~{fpsr},~{flags}"(i64 81985529216486895, i64 8) #8, !srcloc !12
  %.not32.i.i.i = icmp ult i64 %i.t, %i.h
  br i1 %.not32.i.i.i, label %compat_put_bitmap.exit.thread.i.i, label %user_access_begin.exit.i.i.i, !prof !13

user_access_begin.exit.i.i.i:                     ; preds = %.split.i.i.i
  %i.u = lshr exact i32 %i.s, 2
  %i.v = zext nneg i32 %i.u to i64                ; 2 uses
  call void asm sideeffect "# ALT: oldinstr\0A771:\0A\09\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 9*32+20)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09stac\0A775:\0A.popsection\0A", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !srcloc !14
  call void asm sideeffect "# ALT: oldinstr\0A771:\0A\09\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte (20*32+ 2)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09lfence\0A775:\0A.popsection\0A", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !srcloc !15
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %user_access_begin.exit.i.i.i, %bb.d
  %.02138.i.i.i = phi i64 [ %2, %bb.d ], [ %i.v, %user_access_begin.exit.i.i.i ]
  %.02337.i.i.i = phi ptr [ %i.w, %bb.d ], [ %1, %user_access_begin.exit.i.i.i ] ; 2 uses
  %.02436.i.i.i = phi ptr [ %i.ac, %bb.d ], [ %i.j, %user_access_begin.exit.i.i.i ] ; 3 uses
  %i.w = getelementptr i8, ptr %.02337.i.i.i, i64 8 ; 2 uses
  %i.x = load i64, ptr %.02337.i.i.i, align 8     ; 2 uses
  %i.y = trunc i64 %i.x to i32
  callbr void asm sideeffect "\0A1:\09movl $0,$1\0A .pushsection __ex_table, \22aM\22, @progbits, 12\0A .balign 4\0A .long (1b) - .\0A .long (${2:l}) - .\0A .long 3 \0A .popsection\0A", "ir,*m,!i,~{dirflag},~{fpsr},~{flags}"(i32 %i.y, ptr elementtype(%struct.__large_struct) %.02436.i.i.i) #7
          to label %bb.c [label %.thread.i.i.i], !srcloc !20

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.z = getelementptr i8, ptr %.02436.i.i.i, i64 4
  %i.aa = lshr i64 %i.x, 32
  %i.ab = trunc nuw i64 %i.aa to i32
  callbr void asm sideeffect "\0A1:\09movl $0,$1\0A .pushsection __ex_table, \22aM\22, @progbits, 12\0A .balign 4\0A .long (1b) - .\0A .long (${2:l}) - .\0A .long 3 \0A .popsection\0A", "ir,*m,!i,~{dirflag},~{fpsr},~{flags}"(i32 %i.ab, ptr elementtype(%struct.__large_struct) %i.z) #7
          to label %bb.d [label %.thread.i.i.i], !srcloc !21

bb.d:                                             ; preds = %bb.c
  %i.ac = getelementptr i8, ptr %.02436.i.i.i, i64 8 ; 2 uses
  %2 = add nsw i64 %.02138.i.i.i, -2              ; 3 uses
  %3 = icmp ugt i64 %2, 1
  br i1 %3, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.d, %user_access_begin.exit.i.i.i
  %.024.lcssa.i.i.i = phi ptr [ %i.j, %user_access_begin.exit.i.i.i ], [ %i.ac, %bb.d ]
  %.023.lcssa.i.i.i = phi ptr [ %1, %user_access_begin.exit.i.i.i ], [ %i.w, %bb.d ]
  %.021.lcssa.i.i.i = phi i64 [ %i.v, %user_access_begin.exit.i.i.i ], [ %2, %bb.d ]
  %.not.i.i.i = icmp eq i64 %.021.lcssa.i.i.i, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %._crit_edge.i.i.i
  %i.ad = load i64, ptr %.023.lcssa.i.i.i, align 8
  %i.ae = trunc i64 %i.ad to i32
  callbr void asm sideeffect "\0A1:\09movl $0,$1\0A .pushsection __ex_table, \22aM\22, @progbits, 12\0A .balign 4\0A .long (1b) - .\0A .long (${2:l}) - .\0A .long 3 \0A .popsection\0A", "ir,*m,!i,~{dirflag},~{fpsr},~{flags}"(i32 %i.ae, ptr elementtype(%struct.__large_struct) %.024.lcssa.i.i.i) #7
          to label %bb.f [label %.thread.i.i.i], !srcloc !22

.thread.i.i.i:                                    ; preds = %bb.c, %.lr.ph.i.i.i, %bb.e
  call void asm sideeffect "# ALT: oldinstr\0A771:\0A\09\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 9*32+20)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09clac\0A775:\0A.popsection\0A", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !srcloc !19
  br label %compat_put_bitmap.exit.thread.i.i

bb.f:                                             ; preds = %bb.e, %._crit_edge.i.i.i
  call void asm sideeffect "# ALT: oldinstr\0A771:\0A\09\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 9*32+20)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09clac\0A775:\0A.popsection\0A", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !srcloc !19
  br label %compat_put_bitmap.exit.thread.i.i

compat_put_bitmap.exit.thread.i.i:                ; preds = %bb.f, %.thread.i.i.i, %.split.i.i.i, %bb.b
  %.1.i.i = phi i32 [ %i.q, %bb.b ], [ %i.s, %bb.f ], [ -14, %.thread.i.i.i ], [ -14, %.split.i.i.i ]
  %i.af = sext i32 %.1.i.i to i64
  br label %__se_compat_sys_sched_getaffinity.exit

__se_compat_sys_sched_getaffinity.exit:           ; preds = %bb.a, %compat_put_bitmap.exit.thread.i.i
  %.0.i.i = phi i64 [ %i.af, %compat_put_bitmap.exit.thread.i.i ], [ -22, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #7
  ret i64 %.0.i.i
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -14, 1) i32 @get_compat_sigevent(ptr nofree noundef writeonly captures(none) initializes((0, 64)) %0, ptr noundef %1) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(64) %0, i8 0, i64 64, i1 false)
  %i.a = ptrtoint ptr %1 to i64
  %i.b = tail call i64 asm "mov $1,$0\0A1:\0A.pushsection runtime_ptr_USER_PTR_MAX,\22a\22\0A\09.long 1b - ${2:c} - .\0A.popsection", "=r,i,i,~{dirflag},~{fpsr},~{flags}"(i64 81985529216486895, i64 8) #8, !srcloc !12
  %.not34 = icmp ult i64 %i.b, %i.a
  br i1 %.not34, label %bb.f, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i64 @llvm.read_register.i64(metadata !0)
  %i.d = tail call { ptr, i32, i64 } asm sideeffect "call __get_user_nocheck_${4:c}", "={ax},={rdx},={rsp},0,i,{rsp},~{dirflag},~{fpsr},~{flags}"(ptr %1, i64 4, i64 %i.c) #7, !srcloc !28 ; 3 uses
  %i.e = extractvalue { ptr, i32, i64 } %i.d, 0
  %i.f = extractvalue { ptr, i32, i64 } %i.d, 1
  %i.g = extractvalue { ptr, i32, i64 } %i.d, 2
  %i.h = ptrtoint ptr %i.e to i64
  tail call void @llvm.write_register.i64(metadata !0, i64 %i.g)
  store i32 %i.f, ptr %0, align 8
  %.mask = and i64 %i.h, 4294967295
  %.not = icmp eq i64 %.mask, 0
  br i1 %.not, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.i = tail call i64 @llvm.read_register.i64(metadata !0)
  %i.j = getelementptr i8, ptr %1, i64 4
  %i.k = tail call { ptr, i32, i64 } asm sideeffect "call __get_user_nocheck_${4:c}", "={ax},={rdx},={rsp},0,i,{rsp},~{dirflag},~{fpsr},~{flags}"(ptr %i.j, i64 4, i64 %i.i) #7, !srcloc !29 ; 3 uses
  %i.l = extractvalue { ptr, i32, i64 } %i.k, 0
  %i.m = extractvalue { ptr, i32, i64 } %i.k, 1
  %i.n = extractvalue { ptr, i32, i64 } %i.k, 2
  %i.o = ptrtoint ptr %i.l to i64
  tail call void @llvm.write_register.i64(metadata !0, i64 %i.n)
  %i.p = getelementptr i8, ptr %0, i64 8
  store i32 %i.m, ptr %i.p, align 8
  %.mask26 = and i64 %i.o, 4294967295
  %.not25 = icmp eq i64 %.mask26, 0
  br i1 %.not25, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.q = tail call i64 @llvm.read_register.i64(metadata !0)
  %i.r = getelementptr i8, ptr %1, i64 8
  %i.s = tail call { ptr, i32, i64 } asm sideeffect "call __get_user_nocheck_${4:c}", "={ax},={rdx},={rsp},0,i,{rsp},~{dirflag},~{fpsr},~{flags}"(ptr %i.r, i64 4, i64 %i.q) #7, !srcloc !30 ; 3 uses
  %i.t = extractvalue { ptr, i32, i64 } %i.s, 0
  %i.u = extractvalue { ptr, i32, i64 } %i.s, 1
  %i.v = extractvalue { ptr, i32, i64 } %i.s, 2
  %i.w = ptrtoint ptr %i.t to i64
  tail call void @llvm.write_register.i64(metadata !0, i64 %i.v)
  %i.x = getelementptr i8, ptr %0, i64 12
  store i32 %i.u, ptr %i.x, align 4
  %.mask28 = and i64 %i.w, 4294967295
  %.not27 = icmp eq i64 %.mask28, 0
  br i1 %.not27, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.y = tail call i64 @llvm.read_register.i64(metadata !0)
  %i.z = getelementptr i8, ptr %1, i64 12
  %i.aa = tail call { ptr, i32, i64 } asm sideeffect "call __get_user_nocheck_${4:c}", "={ax},={rdx},={rsp},0,i,{rsp},~{dirflag},~{fpsr},~{flags}"(ptr %i.z, i64 4, i64 %i.y) #7, !srcloc !31 ; 3 uses
  %i.ab = extractvalue { ptr, i32, i64 } %i.aa, 0
  %i.ac = extractvalue { ptr, i32, i64 } %i.aa, 1
  %i.ad = extractvalue { ptr, i32, i64 } %i.aa, 2
  %i.ae = ptrtoint ptr %i.ab to i64
  tail call void @llvm.write_register.i64(metadata !0, i64 %i.ad)
  %i.af = getelementptr i8, ptr %0, i64 16
  store i32 %i.ac, ptr %i.af, align 8
  %.mask29 = and i64 %i.ae, 4294967295
  %.not30 = icmp eq i64 %.mask29, 0
  %i.ag = select i1 %.not30, i32 0, i32 -14
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %i.ah = phi i32 [ -14, %bb.d ], [ -14, %bb.c ], [ -14, %bb.b ], [ -14, %bb.a ], [ %i.ag, %bb.e ]
  ret i32 %i.ah
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare i64 @llvm.read_register.i64(metadata) #3

; Function Attrs: nocallback nounwind
declare void @llvm.write_register.i64(metadata, i64) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i64 -14, 1) i64 @compat_get_bitmap(ptr nofree noundef writeonly captures(none) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 align 16 prefalign(16) {
__access_ok.exit:
  %i.a = add i64 %2, 31                           ; 3 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.c = lshr i64 %i.a, 3
  %i.d = and i64 %i.c, 2305843009213693948
  %i.e = add i64 %i.d, %i.b                       ; 2 uses
  %i.f = tail call i64 asm "mov $1,$0\0A1:\0A.pushsection runtime_ptr_USER_PTR_MAX,\22a\22\0A\09.long 1b - ${2:c} - .\0A.popsection", "=r,i,i,~{dirflag},~{fpsr},~{flags}"(i64 81985529216486895, i64 8) #8, !srcloc !23
  %i.g = icmp ule i64 %i.e, %i.f
  %i.h = icmp uge i64 %i.e, %i.b
  %i.i = and i1 %i.h, %i.g
  br i1 %i.i, label %user_access_begin.exit, label %user_access_begin.exit.thread, !prof !24

user_access_begin.exit:                           ; preds = %__access_ok.exit
  %i.j = lshr i64 %i.a, 5                         ; 2 uses
  tail call void asm sideeffect "# ALT: oldinstr\0A771:\0A\09\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 9*32+20)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09stac\0A775:\0A.popsection\0A", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !srcloc !14
  tail call void asm sideeffect "# ALT: oldinstr\0A771:\0A\09\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte (20*32+ 2)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09lfence\0A775:\0A.popsection\0A", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !srcloc !15
  %i.k = icmp ugt i64 %i.a, 63
  br i1 %i.k, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %user_access_begin.exit, %bb.b
  %.02142 = phi ptr [ %i.t, %bb.b ], [ %0, %user_access_begin.exit ] ; 2 uses
  %.02241 = phi ptr [ %i.o, %bb.b ], [ %1, %user_access_begin.exit ] ; 3 uses
  %.02540 = phi i64 [ %i.u, %bb.b ], [ %i.j, %user_access_begin.exit ]
  %i.l = callbr i32 asm sideeffect "\0A1:\09movl $1,$0\0A .pushsection __ex_table, \22aM\22, @progbits, 12\0A .balign 4\0A .long (1b) - .\0A .long (${2:l}) - .\0A .long 3 \0A .popsection\0A", "=r,*m,!i,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(%struct.__large_struct) %.02241) #7
          to label %bb.a [label %.thread], !srcloc !16

bb.a:                                             ; preds = %.lr.ph
  %i.m = getelementptr i8, ptr %.02241, i64 4
  %i.n = callbr i32 asm sideeffect "\0A1:\09movl $1,$0\0A .pushsection __ex_table, \22aM\22, @progbits, 12\0A .balign 4\0A .long (1b) - .\0A .long (${2:l}) - .\0A .long 3 \0A .popsection\0A", "=r,*m,!i,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(%struct.__large_struct) %i.m) #7
          to label %bb.b [label %.thread], !srcloc !17

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr i8, ptr %.02241, i64 8     ; 2 uses
  %i.p = zext i32 %i.l to i64
  %i.q = zext i32 %i.n to i64
  %i.r = shl nuw i64 %i.q, 32
  %i.s = or disjoint i64 %i.r, %i.p
  %i.t = getelementptr i8, ptr %.02142, i64 8     ; 2 uses
  store i64 %i.s, ptr %.02142, align 8
  %i.u = add nsw i64 %.02540, -2                  ; 3 uses
  %i.v = icmp ugt i64 %i.u, 1
  br i1 %i.v, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %user_access_begin.exit
  %.025.lcssa = phi i64 [ %i.j, %user_access_begin.exit ], [ %i.u, %bb.b ]
  %.022.lcssa = phi ptr [ %1, %user_access_begin.exit ], [ %i.o, %bb.b ]
  %.021.lcssa = phi ptr [ %0, %user_access_begin.exit ], [ %i.t, %bb.b ]
  %.not = icmp eq i64 %.025.lcssa, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.w = callbr i32 asm sideeffect "\0A1:\09movl $1,$0\0A .pushsection __ex_table, \22aM\22, @progbits, 12\0A .balign 4\0A .long (1b) - .\0A .long (${2:l}) - .\0A .long 3 \0A .popsection\0A", "=r,*m,!i,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(%struct.__large_struct) %.022.lcssa) #7
          to label %bb.d [label %.thread], !srcloc !18

bb.d:                                             ; preds = %bb.c
  %i.x = zext i32 %i.w to i64
  store i64 %i.x, ptr %.021.lcssa, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge
  tail call void asm sideeffect "# ALT: oldinstr\0A771:\0A\09\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 9*32+20)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09clac\0A775:\0A.popsection\0A", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !srcloc !19
  br label %user_access_begin.exit.thread

.thread:                                          ; preds = %bb.a, %.lr.ph, %bb.c
  tail call void asm sideeffect "# ALT: oldinstr\0A771:\0A\09\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 9*32+20)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09clac\0A775:\0A.popsection\0A", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !srcloc !19
  br label %user_access_begin.exit.thread

user_access_begin.exit.thread:                    ; preds = %__access_ok.exit, %.thread, %bb.e
  %.0 = phi i64 [ 0, %bb.e ], [ -14, %.thread ], [ -14, %__access_ok.exit ]
  ret i64 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i64 -14, 1) i64 @compat_put_bitmap(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #0 align 16 prefalign(16) {
__access_ok.exit:
  %i.a = add i64 %2, 31                           ; 3 uses
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = lshr i64 %i.a, 3
  %i.d = and i64 %i.c, 2305843009213693948
  %i.e = add i64 %i.d, %i.b                       ; 2 uses
  %i.f = tail call i64 asm "mov $1,$0\0A1:\0A.pushsection runtime_ptr_USER_PTR_MAX,\22a\22\0A\09.long 1b - ${2:c} - .\0A.popsection", "=r,i,i,~{dirflag},~{fpsr},~{flags}"(i64 81985529216486895, i64 8) #8, !srcloc !23
  %i.g = icmp ule i64 %i.e, %i.f
  %i.h = icmp uge i64 %i.e, %i.b
  %i.i = and i1 %i.h, %i.g
  br i1 %i.i, label %user_access_begin.exit, label %user_access_begin.exit.thread, !prof !24

user_access_begin.exit:                           ; preds = %__access_ok.exit
  %i.j = lshr i64 %i.a, 5                         ; 2 uses
  tail call void asm sideeffect "# ALT: oldinstr\0A771:\0A\09\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 9*32+20)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09stac\0A775:\0A.popsection\0A", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !srcloc !14
  tail call void asm sideeffect "# ALT: oldinstr\0A771:\0A\09\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte (20*32+ 2)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09lfence\0A775:\0A.popsection\0A", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !srcloc !15
  %i.k = icmp ugt i64 %i.a, 63
  br i1 %i.k, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %user_access_begin.exit, %bb.b
  %.02138 = phi i64 [ %i.s, %bb.b ], [ %i.j, %user_access_begin.exit ]
  %.02337 = phi ptr [ %i.l, %bb.b ], [ %1, %user_access_begin.exit ] ; 2 uses
  %.02436 = phi ptr [ %i.r, %bb.b ], [ %0, %user_access_begin.exit ] ; 3 uses
  %i.l = getelementptr i8, ptr %.02337, i64 8     ; 2 uses
  %i.m = load i64, ptr %.02337, align 8           ; 2 uses
  %i.n = trunc i64 %i.m to i32
  callbr void asm sideeffect "\0A1:\09movl $0,$1\0A .pushsection __ex_table, \22aM\22, @progbits, 12\0A .balign 4\0A .long (1b) - .\0A .long (${2:l}) - .\0A .long 3 \0A .popsection\0A", "ir,*m,!i,~{dirflag},~{fpsr},~{flags}"(i32 %i.n, ptr elementtype(%struct.__large_struct) %.02436) #7
end_hunk_0
