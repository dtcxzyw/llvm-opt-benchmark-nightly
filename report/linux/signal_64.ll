Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/signal_64?download=true
inline.NumInlined: 50
inline.NumDeleted: 13
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuinfo_x86 = type { %union.anon.34, i8, %union.anon.36, i32, [5 x i32], i8, i8, i32, i32, %union.anon.37, [16 x i8], [64 x i8], %struct.cpuinfo_topology, %struct.cpuid_table, i32, i32, i32, i32, i32, i32, i64, i64, i16, i16, i16, i8, i32, i8, i8 }
%union.anon.34 = type { i32 }
%union.anon.36 = type { i8 }
%union.anon.37 = type { i64, [88 x i8] }
%struct.cpuinfo_topology = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.anon.38 }
%union.anon.38 = type { i32 }
%struct.cpuid_table = type { %struct.cpuid_leaves }
%struct.cpuid_leaves = type <{ [1 x %struct.leaf_0x0_0], %struct.leaf_parse_info, [1 x %struct.leaf_0x1_0], %struct.leaf_parse_info }>
%struct.leaf_0x0_0 = type { i64, i64 }
%struct.leaf_0x1_0 = type { i64, i64 }
%struct.leaf_parse_info = type { i32 }
%struct.__large_struct = type { [100 x i64] }
%struct.sigcontext_64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i16, i16, i16, i16, i64, i64, i64, i64, i64, [8 x i64] }
%struct.sigset_t = type { [1 x i64] }

@boot_cpu_data = external dso_local global %struct.cpuinfo_x86, align 8
@current_task = external dso_local global ptr, section ".data..percpu..hot..current_task", align 8
@.str = private unnamed_addr constant [13 x i8] c"rt_sigreturn\00", align 1

@__ia32_sys_rt_sigreturn = dso_local alias i64 (ptr), ptr @__x64_sys_rt_sigreturn

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -14, 1) i32 @x64_setup_rt_frame(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @current_task) #7, !srcloc !11
  %i.c = inttoptr i64 %i.b to ptr                 ; 9 uses
  %i.d = getelementptr i8, ptr %i.c, i64 2112
  %i.e = getelementptr i8, ptr %i.c, i64 1456
  %i.f = load i16, ptr %i.e, align 16
  %i.g = and i16 %i.f, 16
  %.not.i = icmp eq i16 %i.g, 0
  br i1 %.not.i, label %sigmask_to_save.exit, label %bb.b, !prof !15

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr i8, ptr %i.c, i64 2128
  br label %sigmask_to_save.exit

sigmask_to_save.exit:                             ; preds = %bb.a, %bb.b
  %.0.i60 = phi ptr [ %i.h, %bb.b ], [ %i.d, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store ptr null, ptr %i.a, align 8
  %i.i = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.j = load i64, ptr %i.i, align 8
  %i.k = and i64 %i.j, 67108864
  %.not = icmp eq i64 %i.k, 0
  br i1 %.not, label %user_access_begin.exit, label %bb.c

bb.c:                                             ; preds = %sigmask_to_save.exit
  %i.l = call ptr @get_sigframe(ptr noundef %0, ptr noundef %1, i64 noundef 440, ptr noundef nonnull %i.a) #9 ; 37 uses
  %i.m = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @boot_cpu_data, i64 64), align 8
  %i.n = getelementptr i8, ptr %1, i64 136        ; 3 uses
  %i.o = call i64 asm "mov $1,$0\0A1:\0A.pushsection runtime_ptr_USER_PTR_MAX,\22a\22\0A\09.long 1b - ${2:c} - .\0A.popsection", "=r,i,i,~{dirflag},~{fpsr},~{flags}"(i64 81985529216486895, i64 8) #7, !srcloc !12
  %i.p = ptrtoint ptr %i.l to i64                 ; 2 uses
  %.not65 = icmp ult i64 %i.o, %i.p
  br i1 %.not65, label %user_access_begin.exit, label %bb.d, !prof !13

bb.d:                                             ; preds = %bb.c
  %.val.i = load i16, ptr %i.n, align 8
  %i.q = icmp eq i16 %.val.i, 51
  %.1.v.i = select i1 %i.q, i64 6, i64 2, !prof !15
  %2 = lshr i64 %i.m, 26
  %3 = and i64 %2, 1
  %i.r = or disjoint i64 %.1.v.i, %3
  call void asm sideeffect "# ALT: oldinstr\0A771:\0A\09\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 9*32+20)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09stac\0A775:\0A.popsection\0A", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !srcloc !16
  call void asm sideeffect "# ALT: oldinstr\0A771:\0A\09\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte (20*32+ 2)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09lfence\0A775:\0A.popsection\0A", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !srcloc !17
  %i.s = getelementptr i8, ptr %i.l, i64 8        ; 2 uses
  callbr void asm sideeffect "\0A1:\09movq $0,$1\0A .pushsection __ex_table, \22aM\22, @progbits, 12\0A .balign 4\0A .long (1b) - .\0A .long (${2:l}) - .\0A .long 3 \0A .popsection\0A", "er,*m,!i,~{dirflag},~{fpsr},~{flags}"(i64 %i.r, ptr elementtype(%struct.__large_struct) %i.s) #8
          to label %bb.e [label %.thread], !srcloc !18

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr i8, ptr %i.l, i64 16
  callbr void asm sideeffect "\0A1:\09movq $0,$1\0A .pushsection __ex_table, \22aM\22, @progbits, 12\0A .balign 4\0A .long (1b) - .\0A .long (${2:l}) - .\0A .long 3 \0A .popsection\0A", "er,*m,!i,~{dirflag},~{fpsr},~{flags}"(ptr null, ptr elementtype(%struct.__large_struct) %i.t) #8
          to label %bb.f [label %.thread], !srcloc !19

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr i8, ptr %i.l, i64 24
  %i.v = getelementptr i8, ptr %i.c, i64 2160
  %i.w = load i64, ptr %i.v, align 16
  %i.x = inttoptr i64 %i.w to ptr
  callbr void asm sideeffect "\0A1:\09movq $0,$1\0A .pushsection __ex_table, \22aM\22, @progbits, 12\0A .balign 4\0A .long (1b) - .\0A .long (${2:l}) - .\0A .long 3 \0A .popsection\0A", "er,*m,!i,~{dirflag},~{fpsr},~{flags}"(ptr %i.x, ptr elementtype(%struct.__large_struct) %i.u) #8
          to label %bb.g [label %.thread], !srcloc !20

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr i8, ptr %i.c, i64 2176
  %i.z = load i32, ptr %i.y, align 64
  %i.aa = getelementptr i8, ptr %i.l, i64 32
  callbr void asm sideeffect "\0A1:\09movl $0,$1\0A .pushsection __ex_table, \22aM\22, @progbits, 12\0A .balign 4\0A .long (1b) - .\0A .long (${2:l}) - .\0A .long 3 \0A .popsection\0A", "ir,*m,!i,~{dirflag},~{fpsr},~{flags}"(i32 %i.z, ptr elementtype(%struct.__large_struct) %i.aa) #8
          to label %bb.h [label %.thread], !srcloc !21

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr i8, ptr %i.c, i64 2168
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = getelementptr i8, ptr %i.l, i64 40
  callbr void asm sideeffect "\0A1:\09movq $0,$1\0A .pushsection __ex_table, \22aM\22, @progbits, 12\0A .balign 4\0A .long (1b) - .\0A .long (${2:l}) - .\0A .long 3 \0A .popsection\0A", "er,*m,!i,~{dirflag},~{fpsr},~{flags}"(i64 %i.ac, ptr elementtype(%struct.__large_struct) %i.ad) #8
          to label %bb.i [label %.thread], !srcloc !22

bb.i:                                             ; preds = %bb.h
  %i.ae = getelementptr i8, ptr %0, i64 16
  %i.af = load ptr, ptr %i.ae, align 8
  callbr void asm sideeffect "\0A1:\09movq $0,$1\0A .pushsection __ex_table, \22aM\22, @progbits, 12\0A .balign 4\0A .long (1b) - .\0A .long (${2:l}) - .\0A .long 3 \0A .popsection\0A", "er,*m,!i,~{dirflag},~{fpsr},~{flags}"(ptr %i.af, ptr elementtype(%struct.__large_struct) %i.l) #8
          to label %bb.j [label %.thread], !srcloc !23

bb.j:                                             ; preds = %bb.i
  %i.ag = getelementptr i8, ptr %i.l, i64 48
  %i.ah = load ptr, ptr %i.a, align 8
  %i.ai = load i64, ptr %.0.i60, align 8
  %i.aj = getelementptr i8, ptr %1, i64 112       ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = getelementptr i8, ptr %i.l, i64 112
  callbr void asm sideeffect "\0A1:\09movq $0,$1\0A .pushsection __ex_table, \22aM\22, @progbits, 12\0A .balign 4\0A .long (1b) - .\0A .long (${2:l}) - .\0A .long 3 \0A .popsection\0A", "er,*m,!i,~{dirflag},~{fpsr},~{flags}"(i64 %i.ak, ptr elementtype(%struct.__large_struct) %i.al) #8
          to label %bb.k [label %.thread], !srcloc !24

bb.k:                                             ; preds = %bb.j
  %i.am = getelementptr i8, ptr %1, i64 104       ; 2 uses
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = getelementptr i8, ptr %i.l, i64 120
  callbr void asm sideeffect "\0A1:\09movq $0,$1\0A .pushsection __ex_table, \22aM\22, @progbits, 12\0A .balign 4\0A .long (1b) - .\0A .long (${2:l}) - .\0A .long 3 \0A .popsection\0A", "er,*m,!i,~{dirflag},~{fpsr},~{flags}"(i64 %i.an, ptr elementtype(%struct.__large_struct) %i.ao) #8
          to label %bb.l [label %.thread], !srcloc !25

bb.l:                                             ; preds = %bb.k
  %i.ap = getelementptr i8, ptr %1, i64 32
  %i.aq = load i64, ptr %i.ap, align 8
  %i.ar = getelementptr i8, ptr %i.l, i64 128
  callbr void asm sideeffect "\0A1:\09movq $0,$1\0A .pushsection __ex_table, \22aM\22, @progbits, 12\0A .balign 4\0A .long (1b) - .\0A .long (${2:l}) - .\0A .long 3 \0A .popsection\0A", "er,*m,!i,~{dirflag},~{fpsr},~{flags}"(i64 %i.aq, ptr elementtype(%struct.__large_struct) %i.ar) #8
          to label %bb.m [label %.thread], !srcloc !26

bb.m:                                             ; preds = %bb.l
  %i.as = getelementptr i8, ptr %1, i64 152       ; 2 uses
  %i.at = load i64, ptr %i.as, align 8
  %i.au = getelementptr i8, ptr %i.l, i64 168
  callbr void asm sideeffect "\0A1:\09movq $0,$1\0A .pushsection __ex_table, \22aM\22, @progbits, 12\0A .balign 4\0A .long (1b) - .\0A .long (${2:l}) - .\0A .long 3 \0A .popsection\0A", "er,*m,!i,~{dirflag},~{fpsr},~{flags}"(i64 %i.at, ptr elementtype(%struct.__large_struct) %i.au) #8
          to label %bb.n [label %.thread], !srcloc !27

bb.n:                                             ; preds = %bb.m
  %i.av = getelementptr i8, ptr %1, i64 40
  %i.aw = load i64, ptr %i.av, align 8
  %i.ax = getelementptr i8, ptr %i.l, i64 136
  callbr void asm sideeffect "\0A1:\09movq $0,$1\0A .pushsection __ex_table, \22aM\22, @progbits, 12\0A .balign 4\0A .long (1b) - .\0A .long (${2:l}) - .\0A .long 3 \0A .popsection\0A", "er,*m,!i,~{dirflag},~{fpsr},~{flags}"(i64 %i.aw, ptr elementtype(%struct.__large_struct) %i.ax) #8
          to label %bb.o [label %.thread], !srcloc !28

bb.o:                                             ; preds = %bb.n
  %i.ay = getelementptr i8, ptr %1, i64 96        ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8
  %i.ba = getelementptr i8, ptr %i.l, i64 144
  callbr void asm sideeffect "\0A1:\09movq $0,$1\0A .pushsection __ex_table, \22aM\22, @progbits, 12\0A .balign 4\0A .long (1b) - .\0A .long (${2:l}) - .\0A .long 3 \0A .popsection\0A", "er,*m,!i,~{dirflag},~{fpsr},~{flags}"(i64 %i.az, ptr elementtype(%struct.__large_struct) %i.ba) #8
          to label %bb.p [label %.thread], !srcloc !29

bb.p:                                             ; preds = %bb.o
  %i.bb = getelementptr i8, ptr %1, i64 88
  %i.bc = load i64, ptr %i.bb, align 8
  %i.bd = getelementptr i8, ptr %i.l, i64 160
  callbr void asm sideeffect "\0A1:\09movq $0,$1\0A .pushsection __ex_table, \22aM\22, @progbits, 12\0A .balign 4\0A .long (1b) - .\0A .long (${2:l}) - .\0A .long 3 \0A .popsection\0A", "er,*m,!i,~{dirflag},~{fpsr},~{flags}"(i64 %i.bc, ptr elementtype(%struct.__large_struct) %i.bd) #8
          to label %bb.q [label %.thread], !srcloc !30

bb.q:                                             ; preds = %bb.p
  %i.be = getelementptr i8, ptr %1, i64 80        ; 2 uses
  %i.bf = load i64, ptr %i.be, align 8
  %i.bg = getelementptr i8, ptr %i.l, i64 152
  callbr void asm sideeffect "\0A1:\09movq $0,$1\0A .pushsection __ex_table, \22aM\22, @progbits, 12\0A .balign 4\0A .long (1b) - .\0A .long (${2:l}) - .\0A .long 3 \0A .popsection\0A", "er,*m,!i,~{dirflag},~{fpsr},~{flags}"(i64 %i.bf, ptr elementtype(%struct.__large_struct) %i.bg) #8
          to label %bb.r [label %.thread], !srcloc !31

bb.r:                                             ; preds = %bb.q
  %i.bh = getelementptr i8, ptr %1, i64 72
  %i.bi = load i64, ptr %i.bh, align 8
  callbr void asm sideeffect "\0A1:\09movq $0,$1\0A .pushsection __ex_table, \22aM\22, @progbits, 12\0A .balign 4\0A .long (1b) - .\0A .long (${2:l}) - .\0A .long 3 \0A .popsection\0A", "er,*m,!i,~{dirflag},~{fpsr},~{flags}"(i64 %i.bi, ptr elementtype(%struct.__large_struct) %i.ag) #8
          to label %bb.s [label %.thread], !srcloc !32

bb.s:                                             ; preds = %bb.r
  %i.bj = getelementptr i8, ptr %1, i64 64
  %i.bk = load i64, ptr %i.bj, align 8
  %i.bl = getelementptr i8, ptr %i.l, i64 56
  callbr void asm sideeffect "\0A1:\09movq $0,$1\0A .pushsection __ex_table, \22aM\22, @progbits, 12\0A .balign 4\0A .long (1b) - .\0A .long (${2:l}) - .\0A .long 3 \0A .popsection\0A", "er,*m,!i,~{dirflag},~{fpsr},~{flags}"(i64 %i.bk, ptr elementtype(%struct.__large_struct) %i.bl) #8
          to label %bb.t [label %.thread], !srcloc !33

bb.t:                                             ; preds = %bb.s
  %i.bm = getelementptr i8, ptr %1, i64 56
  %i.bn = load i64, ptr %i.bm, align 8
  %i.bo = getelementptr i8, ptr %i.l, i64 64
  callbr void asm sideeffect "\0A1:\09movq $0,$1\0A .pushsection __ex_table, \22aM\22, @progbits, 12\0A .balign 4\0A .long (1b) - .\0A .long (${2:l}) - .\0A .long 3 \0A .popsection\0A", "er,*m,!i,~{dirflag},~{fpsr},~{flags}"(i64 %i.bn, ptr elementtype(%struct.__large_struct) %i.bo) #8
          to label %bb.u [label %.thread], !srcloc !34

bb.u:                                             ; preds = %bb.t
  %i.bp = getelementptr i8, ptr %1, i64 48
  %i.bq = load i64, ptr %i.bp, align 8
  %i.br = getelementptr i8, ptr %i.l, i64 72
  callbr void asm sideeffect "\0A1:\09movq $0,$1\0A .pushsection __ex_table, \22aM\22, @progbits, 12\0A .balign 4\0A .long (1b) - .\0A .long (${2:l}) - .\0A .long 3 \0A .popsection\0A", "er,*m,!i,~{dirflag},~{fpsr},~{flags}"(i64 %i.bq, ptr elementtype(%struct.__large_struct) %i.br) #8
          to label %bb.v [label %.thread], !srcloc !35

bb.v:                                             ; preds = %bb.u
  %i.bs = getelementptr i8, ptr %1, i64 24
  %i.bt = load i64, ptr %i.bs, align 8
  %i.bu = getelementptr i8, ptr %i.l, i64 80
  callbr void asm sideeffect "\0A1:\09movq $0,$1\0A .pushsection __ex_table, \22aM\22, @progbits, 12\0A .balign 4\0A .long (1b) - .\0A .long (${2:l}) - .\0A .long 3 \0A .popsection\0A", "er,*m,!i,~{dirflag},~{fpsr},~{flags}"(i64 %i.bt, ptr elementtype(%struct.__large_struct) %i.bu) #8
          to label %bb.w [label %.thread], !srcloc !36

bb.w:                                             ; preds = %bb.v
  %i.bv = getelementptr i8, ptr %1, i64 16
  %i.bw = load i64, ptr %i.bv, align 8
  %i.bx = getelementptr i8, ptr %i.l, i64 88
  callbr void asm sideeffect "\0A1:\09movq $0,$1\0A .pushsection __ex_table, \22aM\22, @progbits, 12\0A .balign 4\0A .long (1b) - .\0A .long (${2:l}) - .\0A .long 3 \0A .popsection\0A", "er,*m,!i,~{dirflag},~{fpsr},~{flags}"(i64 %i.bw, ptr elementtype(%struct.__large_struct) %i.bx) #8
          to label %bb.x [label %.thread], !srcloc !37

bb.x:                                             ; preds = %bb.w
  %i.by = getelementptr i8, ptr %1, i64 8
  %i.bz = load i64, ptr %i.by, align 8
  %i.ca = getelementptr i8, ptr %i.l, i64 96
  callbr void asm sideeffect "\0A1:\09movq $0,$1\0A .pushsection __ex_table, \22aM\22, @progbits, 12\0A .balign 4\0A .long (1b) - .\0A .long (${2:l}) - .\0A .long 3 \0A .popsection\0A", "er,*m,!i,~{dirflag},~{fpsr},~{flags}"(i64 %i.bz, ptr elementtype(%struct.__large_struct) %i.ca) #8
          to label %bb.y [label %.thread], !srcloc !38

bb.y:                                             ; preds = %bb.x
  %i.cb = load i64, ptr %1, align 8
  %i.cc = getelementptr i8, ptr %i.l, i64 104
  callbr void asm sideeffect "\0A1:\09movq $0,$1\0A .pushsection __ex_table, \22aM\22, @progbits, 12\0A .balign 4\0A .long (1b) - .\0A .long (${2:l}) - .\0A .long 3 \0A .popsection\0A", "er,*m,!i,~{dirflag},~{fpsr},~{flags}"(i64 %i.cb, ptr elementtype(%struct.__large_struct) %i.cc) #8
          to label %bb.z [label %.thread], !srcloc !39

bb.z:                                             ; preds = %bb.y
  %i.cd = getelementptr i8, ptr %i.c, i64 3224
  %i.ce = load i64, ptr %i.cd, align 8
  %i.cf = getelementptr i8, ptr %i.l, i64 208
  callbr void asm sideeffect "\0A1:\09movq $0,$1\0A .pushsection __ex_table, \22aM\22, @progbits, 12\0A .balign 4\0A .long (1b) - .\0A .long (${2:l}) - .\0A .long 3 \0A .popsection\0A", "er,*m,!i,~{dirflag},~{fpsr},~{flags}"(i64 %i.ce, ptr elementtype(%struct.__large_struct) %i.cf) #8
          to label %bb.aa [label %.thread], !srcloc !40

bb.aa:                                            ; preds = %bb.z
  %i.cg = getelementptr i8, ptr %i.c, i64 3232
  %i.ch = load i64, ptr %i.cg, align 32
  %i.ci = getelementptr i8, ptr %i.l, i64 200
  callbr void asm sideeffect "\0A1:\09movq $0,$1\0A .pushsection __ex_table, \22aM\22, @progbits, 12\0A .balign 4\0A .long (1b) - .\0A .long (${2:l}) - .\0A .long 3 \0A .popsection\0A", "er,*m,!i,~{dirflag},~{fpsr},~{flags}"(i64 %i.ch, ptr elementtype(%struct.__large_struct) %i.ci) #8
          to label %bb.ab [label %.thread], !srcloc !41

bb.ab:                                            ; preds = %bb.aa
  %i.cj = getelementptr i8, ptr %1, i64 128       ; 2 uses
  %i.ck = load i64, ptr %i.cj, align 8
  %i.cl = getelementptr i8, ptr %i.l, i64 176
  callbr void asm sideeffect "\0A1:\09movq $0,$1\0A .pushsection __ex_table, \22aM\22, @progbits, 12\0A .balign 4\0A .long (1b) - .\0A .long (${2:l}) - .\0A .long 3 \0A .popsection\0A", "er,*m,!i,~{dirflag},~{fpsr},~{flags}"(i64 %i.ck, ptr elementtype(%struct.__large_struct) %i.cl) #8
          to label %bb.ac [label %.thread], !srcloc !42

bb.ac:                                            ; preds = %bb.ab
  %i.cm = getelementptr i8, ptr %1, i64 144
  %i.cn = load i64, ptr %i.cm, align 8
  %i.co = getelementptr i8, ptr %i.l, i64 184
  callbr void asm sideeffect "\0A1:\09movq $0,$1\0A .pushsection __ex_table, \22aM\22, @progbits, 12\0A .balign 4\0A .long (1b) - .\0A .long (${2:l}) - .\0A .long 3 \0A .popsection\0A", "er,*m,!i,~{dirflag},~{fpsr},~{flags}"(i64 %i.cn, ptr elementtype(%struct.__large_struct) %i.co) #8
          to label %bb.ad [label %.thread], !srcloc !43

bb.ad:                                            ; preds = %bb.ac
  %i.cp = load i16, ptr %i.n, align 8
  %i.cq = getelementptr i8, ptr %i.l, i64 192
  callbr void asm sideeffect "\0A1:\09movw $0,$1\0A .pushsection __ex_table, \22aM\22, @progbits, 12\0A .balign 4\0A .long (1b) - .\0A .long (${2:l}) - .\0A .long 3 \0A .popsection\0A", "ir,*m,!i,~{dirflag},~{fpsr},~{flags}"(i16 %i.cp, ptr elementtype(%struct.__large_struct) %i.cq) #8
          to label %bb.ae [label %.thread], !srcloc !44

bb.ae:                                            ; preds = %bb.ad
  %i.cr = getelementptr i8, ptr %i.l, i64 194
  callbr void asm sideeffect "\0A1:\09movw $0,$1\0A .pushsection __ex_table, \22aM\22, @progbits, 12\0A .balign 4\0A .long (1b) - .\0A .long (${2:l}) - .\0A .long 3 \0A .popsection\0A", "ir,*m,!i,~{dirflag},~{fpsr},~{flags}"(i16 0, ptr elementtype(%struct.__large_struct) %i.cr) #8
          to label %bb.af [label %.thread], !srcloc !45

bb.af:                                            ; preds = %bb.ae
  %i.cs = getelementptr i8, ptr %i.l, i64 196
  callbr void asm sideeffect "\0A1:\09movw $0,$1\0A .pushsection __ex_table, \22aM\22, @progbits, 12\0A .balign 4\0A .long (1b) - .\0A .long (${2:l}) - .\0A .long 3 \0A .popsection\0A", "ir,*m,!i,~{dirflag},~{fpsr},~{flags}"(i16 0, ptr elementtype(%struct.__large_struct) %i.cs) #8
          to label %bb.ag [label %.thread], !srcloc !46

bb.ag:                                            ; preds = %bb.af
  %i.ct = getelementptr i8, ptr %1, i64 160       ; 3 uses
  %i.cu = load i16, ptr %i.ct, align 8
  %i.cv = getelementptr i8, ptr %i.l, i64 198
  callbr void asm sideeffect "\0A1:\09movw $0,$1\0A .pushsection __ex_table, \22aM\22, @progbits, 12\0A .balign 4\0A .long (1b) - .\0A .long (${2:l}) - .\0A .long 3 \0A .popsection\0A", "ir,*m,!i,~{dirflag},~{fpsr},~{flags}"(i16 %i.cu, ptr elementtype(%struct.__large_struct) %i.cv) #8
          to label %bb.ah [label %.thread], !srcloc !47

bb.ah:                                            ; preds = %bb.ag
end_hunk_0
