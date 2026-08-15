inline.NumInlined: 71
inline.NumDeleted: 32
begin_hunk_0
@mem_section = external dso_local local_unnamed_addr global ptr, align 8
@__preempt_count = external dso_local global i32, section ".data..percpu..hot..__preempt_count", align 4
@rcu_read_unlock_sched.__UNIQUE_ID_addressable___SCK__preempt_schedule_128 = internal global ptr @__SCK__preempt_schedule, section ".discard.addressable", align 8
@__SCK__preempt_schedule = external dso_local global %struct.static_call_key, align 8
@_cond_resched.__UNIQUE_ID_addressable___SCK__cond_resched_113 = internal global ptr @__SCK__cond_resched, section ".discard.addressable", align 8
@__SCK__cond_resched = external dso_local global %struct.static_call_key, align 8
@kpageflags_proc_ops = internal constant { i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { i32 1, [4 x i8] zeroinitializer, ptr null, ptr @kpageflags_read, ptr null, ptr null, ptr @mem_lseek, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_addressable_proc_page_init_633, ptr @__UNIQUE_ID_addressable_stable_page_flags_631, ptr @_cond_resched.__UNIQUE_ID_addressable___SCK__cond_resched_113, ptr @rcu_read_unlock_sched.__UNIQUE_ID_addressable___SCK__preempt_schedule_128], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i64 0, 2748779069440) i64 @stable_page_flags(ptr noundef %0) #0 align 16 prefalign(16) {
bb.a:
  %1 = alloca %struct.page_snapshot, align 16     ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #9
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(352) %1, i8 0, i64 352, i1 false), !annotation !11
  call void @snapshot_page(ptr noundef nonnull %1, ptr noundef nonnull %0) #10
  %i.a = load i64, ptr %1, align 16               ; 15 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.e = and i64 %i.d, 1
  %.not71 = icmp eq i64 %i.e, 0
  %i.f = load volatile i64, ptr %1, align 16
  %i.g = and i64 %i.f, 64
  %.not.i.i = icmp eq i64 %i.g, 0
  br i1 %.not.i.i, label %bb.c, label %bb.d, !prof !12

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.i = load volatile i32, ptr %i.h, align 16    ; 3 uses
  %i.j = add i32 %i.i, 1
  %i.k = icmp slt i32 %i.i, -16777216
  %spec.select.i.i = select i1 %i.k, i32 0, i32 %i.j
  br label %folio_mapped.exit

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.m = load volatile i32, ptr %i.l, align 16
  %i.n = add i32 %i.m, 1
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.pre = load i32, ptr %.phi.trans.insert, align 16
  br label %folio_mapped.exit

folio_mapped.exit:                                ; preds = %bb.c, %bb.d
  %i.o = phi i32 [ %i.i, %bb.c ], [ %.pre, %bb.d ]
  %.05.i.i = phi i32 [ %spec.select.i.i, %bb.c ], [ %i.n, %bb.d ]
  %i.p = icmp sgt i32 %.05.i.i, 0
  %spec.select = select i1 %i.p, i64 2048, i64 0
  %i.q = and i64 %i.d, 3
  %i.r = icmp eq i64 %i.q, 3
  %spec.select75.v = select i1 %i.r, i64 2101248, i64 4096
  %spec.select75 = select i1 %.not71, i64 0, i64 %spec.select75.v
  %.1 = or disjoint i64 %spec.select, %spec.select75
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.t = load i64, ptr %i.s, align 8
  %i.u = icmp eq i64 %i.t, 0
  %i.v = shl i64 %i.a, 9
  %i.w = and i64 %i.v, 32768
  %.pn = select i1 %i.u, i64 %i.w, i64 65536
  %.2 = or disjoint i64 %.1, %.pn                 ; 3 uses
  %.mask.i = and i32 %i.o, -16777216              ; 4 uses
  %i.x = icmp eq i32 %.mask.i, -201326592
  br i1 %i.x, label %bb.e, label %bb.f

bb.e:                                             ; preds = %folio_mapped.exit
  %i.y = or disjoint i64 %.2, 131072
  br label %bb.g

bb.f:                                             ; preds = %folio_mapped.exit
  %i.z = load volatile i64, ptr %1, align 16      ; 0 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 320
  %i.ab = load i64, ptr %i.aa, align 16
  %i.ac = load i64, ptr @zero_page_pfn, align 8
  %.not81 = icmp eq i64 %i.ab, %i.ac
  %i.ad = or disjoint i64 %.2, 16777216
  %spec.select77 = select i1 %.not81, i64 %i.ad, i64 %.2
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.3 = phi i64 [ %i.y, %bb.e ], [ %spec.select77, %bb.f ]
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.af = load i64, ptr %i.ae, align 16           ; 2 uses
  %i.ag = shl i64 %i.af, 9
  %i.ah = and i64 %i.ag, 1024
  %spec.select76 = or i64 %i.ah, %.3              ; 2 uses
  %i.ai = icmp eq i32 %.mask.i, -251658240
  %i.aj = or i64 %spec.select76, 8388608
  %.5 = select i1 %i.ai, i64 %i.aj, i64 %spec.select76 ; 2 uses
  %i.ak = icmp eq i32 %.mask.i, -234881024
  %i.al = or i64 %.5, 67108864
  %.6 = select i1 %i.ak, i64 %i.al, i64 %.5       ; 2 uses
  %i.am = icmp eq i32 %.mask.i, -184549376
  %i.an = or i64 %.6, 128
  %.7 = select i1 %i.am, i64 %i.an, i64 %.6
  %i.ao = shl i64 %i.af, 23
  %i.ap = and i64 %i.ao, 33554432
  %i.aq = shl i64 %i.a, 7
  %i.ar = and i64 %i.aq, 256
  %i.as = lshr i64 %i.a, 2
  %i.at = and i64 %i.as, 64
  %i.au = lshr i64 %i.a, 7
  %i.av = and i64 %i.au, 512
  %.8 = and i64 %i.a, 61
  %i.aw = or disjoint i64 %.8, %i.ar
  %i.ax = or disjoint i64 %i.aw, %i.at
  %i.ay = or disjoint i64 %i.ax, %i.av
  %i.az = or disjoint i64 %i.ay, %i.ap
  %i.ba = or i64 %i.az, %.7                       ; 2 uses
  %i.bb = and i64 %i.a, 132096
  %i.bc = icmp eq i64 %i.bb, 132096
  %i.bd = or i64 %i.ba, 8192
  %.9 = select i1 %i.bc, i64 %i.bd, i64 %i.ba
  %i.be = lshr i64 %i.a, 3
  %i.bf = and i64 %i.be, 16384
  %i.bg = and i64 %i.a, 262144
  %i.bh = shl i64 %i.a, 13
  %i.bi = and i64 %i.bh, 8589934592
  %i.bj = shl i64 %i.a, 19
  %i.bk = and i64 %i.bj, 4294967296
  %i.bl = shl i64 %i.a, 23
  %i.bm = and i64 %i.bl, 17179869184
  %i.bn = shl i64 %i.a, 21
  %i.bo = shl i64 %i.a, 27
  %i.bp = and i64 %i.bo, 137438953472
  %i.bq = shl i64 %i.a, 26
  %i.br = and i64 %i.bq, 274877906944
  %i.bs = shl i64 %i.a, 20
  %i.bt = and i64 %i.bs, 2199023255552
  %i.bu = or disjoint i64 %i.bf, %i.bg
  %i.bv = or disjoint i64 %i.bu, %i.bi
  %i.bw = or disjoint i64 %i.bv, %i.bk
  %i.bx = or disjoint i64 %i.bw, %i.bm
  %i.by = and i64 %i.bn, 103079215104
  %i.bz = or disjoint i64 %i.bx, %i.by
  %i.ca = or i64 %i.bz, %i.bp
  %i.cb = or i64 %i.ca, %i.br
  %i.cc = or i64 %i.cb, %i.bt
  %i.cd = or i64 %i.cc, %.9
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %bb.g
  %.069 = phi i64 [ %i.cd, %bb.g ], [ 1048576, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #9
  ret i64 %.069
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @snapshot_page(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal noundef i32 @proc_page_init() #4 section ".init.text" align 16 prefalign(16) {
bb.a:
  %i.a = tail call ptr @proc_create(ptr noundef nonnull @.str, i16 noundef zeroext 256, ptr noundef null, ptr noundef nonnull @kpagecount_proc_ops) #10 ; 0 uses
  %i.b = tail call ptr @proc_create(ptr noundef nonnull @.str.1, i16 noundef zeroext 256, ptr noundef null, ptr noundef nonnull @kpageflags_proc_ops) #10 ; 0 uses
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @proc_create(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @kpagecount_read(ptr nofree readnone captures(none) %0, ptr noundef %1, i64 noundef %2, ptr nofree noundef captures(none) %3) #0 align 16 prefalign(16) {
bb.a:
  %i.a = tail call fastcc i64 @kpage_read(ptr noundef %1, i64 noundef %2, ptr noundef %3, i32 noundef 1) #11
  ret i64 %i.a
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @mem_lseek(ptr noundef, i64 noundef, i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc i64 @kpage_read(ptr noundef %0, i64 noundef %1, ptr nofree noundef captures(none) %2, i32 noundef range(i32 0, 2) %3) unnamed_addr #0 align 16 {
bb.a:
  %4 = alloca %struct.page_snapshot, align 16     ; 7 uses
  %i.a = load i64, ptr %2, align 8                ; 4 uses
  %i.b = lshr i64 %i.a, 3
  %i.c = or i64 %i.a, %1
  %i.d = and i64 %i.c, 7
  %or.cond = icmp eq i64 %i.d, 0
  br i1 %or.cond, label %bb.b, label %.thread._crit_edge.thread

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr @max_pfn, align 8
  %i.f = shl i64 %i.e, 3
  %i.g = add i64 %i.f, 262136
  %5 = and i64 %i.g, -262144                      ; 2 uses
  %.not53 = icmp ult i64 %i.a, %5
  br i1 %.not53, label %bb.c, label %.thread._crit_edge.thread

bb.c:                                             ; preds = %bb.b
  %i.h = sub nuw i64 %5, %i.a
  %i.i = tail call i64 @llvm.umin.i64(i64 %1, i64 %i.h) ; 2 uses
  %.not546 = icmp eq i64 %i.i, 0
  br i1 %.not546, label %.thread._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %trunc = trunc nuw i32 %3 to i1
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 304
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 88
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.t
  %.04412 = phi i64 [ %i.i, %.lr.ph ], [ %i.bk, %bb.t ]
  %.04511 = phi ptr [ %0, %.lr.ph ], [ %i.bj, %bb.t ] ; 3 uses
  %.0467 = phi i64 [ %i.b, %.lr.ph ], [ %i.bi, %bb.t ] ; 6 uses
  %.not.i = icmp ult i64 %.0467, 4503599627370496
  br i1 %.not.i, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.l = lshr i64 %.0467, 15                      ; 2 uses
  callbr void asm sideeffect "# ALT: oldinstr\0A771:\0A\09# ALT: oldinstr\0A771:\0A\09jmp 6f\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 3*32+21)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09jmp ${4:l}\0A775:\0A.popsection\0A\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ${0:c}\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09\0A775:\0A.popsection\0A.pushsection .altinstr_aux,\22ax\22\0A6:\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A testb $1, ${2:a}\0A jnz ${3:l}\0A jmp ${4:l}\0A.popsection\0A", "i,i,i,!i,!i,~{dirflag},~{fpsr},~{flags}"(i16 528, i32 1, ptr nonnull getelementptr inbounds nuw (i8, ptr @boot_cpu_data, i64 114)) #9
          to label %bb.f [label %bb.f, label %_static_cpu_has.exit.i], !srcloc !13

bb.f:                                             ; preds = %bb.e, %bb.e
  br label %_static_cpu_has.exit.i

_static_cpu_has.exit.i:                           ; preds = %bb.f, %bb.e
  %i.m = phi i64 [ 33554432, %bb.f ], [ 524288, %bb.e ]
  %.not10.i = icmp samesign ult i64 %i.l, %i.m
  br i1 %.not10.i, label %bb.g, label %.thread

bb.g:                                             ; preds = %_static_cpu_has.exit.i
  %i.n = lshr i64 %.0467, 23                      ; 2 uses
  callbr void asm sideeffect "# ALT: oldinstr\0A771:\0A\09# ALT: oldinstr\0A771:\0A\09jmp 6f\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 3*32+21)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09jmp ${4:l}\0A775:\0A.popsection\0A\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ${0:c}\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09\0A775:\0A.popsection\0A.pushsection .altinstr_aux,\22ax\22\0A6:\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A testb $1, ${2:a}\0A jnz ${3:l}\0A jmp ${4:l}\0A.popsection\0A", "i,i,i,!i,!i,~{dirflag},~{fpsr},~{flags}"(i16 528, i32 1, ptr nonnull getelementptr inbounds nuw (i8, ptr @boot_cpu_data, i64 114)) #9
          to label %bb.h [label %bb.h, label %_static_cpu_has.exit.i.i.i], !srcloc !13

bb.h:                                             ; preds = %bb.g, %bb.g
  br label %_static_cpu_has.exit.i.i.i

_static_cpu_has.exit.i.i.i:                       ; preds = %bb.h, %bb.g
  %i.o = phi i64 [ 131072, %bb.h ], [ 2048, %bb.g ]
  %.not.i.i.i = icmp samesign ult i64 %i.n, %i.o
  br i1 %.not.i.i.i, label %bb.i, label %__pfn_to_section.exit.i, !prof !12

bb.i:                                             ; preds = %_static_cpu_has.exit.i.i.i
  %i.p = load ptr, ptr @mem_section, align 8      ; 2 uses
  %.not8.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not8.i.i.i, label %__pfn_to_section.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.q = getelementptr [8 x i8], ptr %i.p, i64 %i.n
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %.not9.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not9.i.i.i, label %__pfn_to_section.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.s = and i64 %i.l, 255
  %i.t = getelementptr [16 x i8], ptr %i.r, i64 %i.s
  br label %__pfn_to_section.exit.i

__pfn_to_section.exit.i:                          ; preds = %bb.k, %bb.j, %bb.i, %_static_cpu_has.exit.i.i.i
  %.0.i.i.i = phi ptr [ null, %_static_cpu_has.exit.i.i.i ], [ %i.t, %bb.k ], [ null, %bb.j ], [ null, %bb.i ] ; 3 uses
  call void asm "incl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @__preempt_count, ptr nonnull elementtype(i32) @__preempt_count) #9, !srcloc !14
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !srcloc !15
  %.not.i.i = icmp eq ptr %.0.i.i.i, null
  br i1 %.not.i.i, label %valid_section.exit.thread.i, label %valid_section.exit.i

valid_section.exit.i:                             ; preds = %__pfn_to_section.exit.i
  %i.u = load i64, ptr %.0.i.i.i, align 8         ; 2 uses
  %i.v = and i64 %i.u, 2
  %.not11.i = icmp eq i64 %i.v, 0
  br i1 %.not11.i, label %valid_section.exit.thread.i, label %early_section.exit.i

valid_section.exit.thread.i:                      ; preds = %valid_section.exit.i, %__pfn_to_section.exit.i
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !srcloc !16
  %i.w = call i8 asm sideeffect "decl %gs:$0", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @__preempt_count, ptr nonnull elementtype(i32) @__preempt_count) #9, !srcloc !17 ; 2 uses
  %i.x = icmp ult i8 %i.w, 2
  call void @llvm.assume(i1 %i.x)
  %i.y = trunc nuw i8 %i.w to i1
  br i1 %i.y, label %bb.l, label %.thread, !prof !18

bb.l:                                             ; preds = %valid_section.exit.thread.i
  %i.z = call i64 @llvm.read_register.i64(metadata !0)
  %i.aa = call i64 asm sideeffect "call __SCT__preempt_schedule", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %i.z) #9, !srcloc !19
  br label %rcu_read_unlock_sched.exit.sink.split.i

early_section.exit.i:                             ; preds = %valid_section.exit.i
  %i.ab = and i64 %i.u, 8
  %.not12.i = icmp eq i64 %i.ab, 0
  br i1 %.not12.i, label %bb.m, label %pfn_section_valid.exit.i

bb.m:                                             ; preds = %early_section.exit.i
  %i.ac = getelementptr i8, ptr %.0.i.i.i, i64 8
  %i.ad = load volatile ptr, ptr %i.ac, align 8   ; 2 uses
  %.not.i14.i = icmp eq ptr %i.ad, null
  br i1 %.not.i14.i, label %pfn_section_valid.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ae = lshr i64 %.0467, 9
  %i.af = and i64 %i.ae, 63
  %i.ag = getelementptr i8, ptr %i.ad, i64 16
  %i.ah = call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.ag, i64 range(i64 0, 64) %i.af) #9, !srcloc !20 ; 2 uses
  %i.ai = icmp ult i8 %i.ah, 2
  call void @llvm.assume(i1 %i.ai)
  %i.aj = zext nneg i8 %i.ah to i32
  br label %pfn_section_valid.exit.i

pfn_section_valid.exit.i:                         ; preds = %bb.m, %bb.n, %early_section.exit.i
  %i.ak = phi i32 [ 1, %early_section.exit.i ], [ 0, %bb.m ], [ %i.aj, %bb.n ] ; 2 uses
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !srcloc !16
  %i.al = call i8 asm sideeffect "decl %gs:$0", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @__preempt_count, ptr nonnull elementtype(i32) @__preempt_count) #9, !srcloc !17 ; 2 uses
  %i.am = icmp ult i8 %i.al, 2
  call void @llvm.assume(i1 %i.am)
  %i.an = trunc nuw i8 %i.al to i1
  br i1 %i.an, label %bb.o, label %pfn_valid.exit, !prof !18

bb.o:                                             ; preds = %pfn_section_valid.exit.i
  %i.ao = call i64 @llvm.read_register.i64(metadata !0)
  %i.ap = call i64 asm sideeffect "call __SCT__preempt_schedule", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %i.ao) #9, !srcloc !19
  br label %rcu_read_unlock_sched.exit.sink.split.i

rcu_read_unlock_sched.exit.sink.split.i:          ; preds = %bb.o, %bb.l
  %.sink.i = phi i64 [ %i.ap, %bb.o ], [ %i.aa, %bb.l ]
  %.0.ph.i = phi i32 [ %i.ak, %bb.o ], [ 0, %bb.l ]
  call void @llvm.write_register.i64(metadata !0, i64 %.sink.i)
  br label %pfn_valid.exit

pfn_valid.exit:                                   ; preds = %pfn_section_valid.exit.i, %rcu_read_unlock_sched.exit.sink.split.i
  %.0.i = phi i32 [ %i.ak, %pfn_section_valid.exit.i ], [ %.0.ph.i, %rcu_read_unlock_sched.exit.sink.split.i ]
  %.0.i.fr = freeze i32 %.0.i
  %.not55 = icmp eq i32 %.0.i.fr, 0
  %i.aq = load i64, ptr @vmemmap_base, align 8
  %i.ar = inttoptr i64 %i.aq to ptr
  %i.as = getelementptr [64 x i8], ptr %i.ar, i64 %.0467 ; 3 uses
  %.not56 = icmp eq ptr %i.as, null
  %or.cond5 = select i1 %.not55, i1 true, i1 %.not56
  br i1 %or.cond5, label %.thread, label %bb.p

bb.p:                                             ; preds = %pfn_valid.exit
  br i1 %trunc, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.at = call i64 @stable_page_flags(ptr noundef nonnull %i.as) #11
  br label %.thread

bb.r:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(352) %4, i8 0, i64 352, i1 false), !annotation !11
  call void @snapshot_page(ptr noundef nonnull %4, ptr noundef nonnull %i.as) #10
  %i.au = load volatile i32, ptr %i.j, align 16   ; 2 uses
  %i.av = add i32 %i.au, 1
  %i.aw = icmp slt i32 %i.au, -16777216
  %spec.select.i.i = select i1 %i.aw, i32 0, i32 %i.av ; 2 uses
  %i.ax = load volatile i64, ptr %4, align 16
  %i.ay = and i64 %i.ax, 64
  %.not.i.i59 = icmp eq i64 %i.ay, 0
  br i1 %.not.i.i59, label %get_kpage_count.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.az = load volatile i32, ptr %i.k, align 8
  %i.ba = add i32 %spec.select.i.i, 1
  %i.bb = add i32 %i.ba, %i.az
  br label %get_kpage_count.exit

get_kpage_count.exit:                             ; preds = %bb.r, %bb.s
  %.1.i.i = phi i32 [ %i.bb, %bb.s ], [ %spec.select.i.i, %bb.r ]
  %i.bc = sext i32 %.1.i.i to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  br label %.thread

.thread:                                          ; preds = %valid_section.exit.thread.i, %bb.d, %_static_cpu_has.exit.i, %pfn_valid.exit, %bb.q, %get_kpage_count.exit
  %.048 = phi i64 [ %i.bc, %get_kpage_count.exit ], [ %i.at, %bb.q ], [ 0, %valid_section.exit.thread.i ], [ 0, %pfn_valid.exit ], [ 0, %_static_cpu_has.exit.i ], [ 0, %bb.d ]
  %i.bd = call i64 @llvm.read_register.i64(metadata !0)
  %i.be = call { ptr, i64 } asm sideeffect "call __put_user_${4:c}", "={cx},={rsp},0,{rax},i,{rsp},~{ebx},~{dirflag},~{fpsr},~{flags}"(ptr %.04511, i64 %.048, i64 8, i64 %i.bd) #9, !srcloc !21 ; 2 uses
  %i.bf = extractvalue { ptr, i64 } %i.be, 0
  %i.bg = extractvalue { ptr, i64 } %i.be, 1
  %i.bh = ptrtoint ptr %i.bf to i64
  call void @llvm.write_register.i64(metadata !0, i64 %i.bg)
  %sext.mask = and i64 %i.bh, 4294967295
  %.not57 = icmp eq i64 %sext.mask, 0
  br i1 %.not57, label %bb.t, label %.thread._crit_edge

bb.t:                                             ; preds = %.thread
  %i.bi = add i64 %.0467, 1
  %i.bj = getelementptr i8, ptr %.04511, i64 8    ; 2 uses
  %i.bk = add i64 %.04412, -8                     ; 2 uses
  %i.bl = call i32 @__SCT__cond_resched() #10     ; 0 uses
  %.not54 = icmp eq i64 %i.bk, 0
  br i1 %.not54, label %.thread._crit_edge.thread33, label %bb.d, !llvm.loop !22

.thread._crit_edge.thread33:                      ; preds = %bb.t
  %.pre36 = load i64, ptr %2, align 8
  %i.bm = ptrtoint ptr %i.bj to i64
  %i.bn = ptrtoint ptr %0 to i64
  %i.bo = sub i64 %i.bm, %i.bn                    ; 2 uses
  %i.bp = add i64 %.pre36, %i.bo
  br label %.thread._crit_edge.thread.sink.split

.thread._crit_edge:                               ; preds = %.thread
  %.pre = load i64, ptr %2, align 8
  %i.bq = ptrtoint ptr %.04511 to i64
end_hunk_0
