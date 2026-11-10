Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/static_call_inline?download=true
inline.NumInlined: 52
inline.NumDeleted: 25
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@__static_call_update:bb.a
  %.04358 = phi ptr [ %3, %.critedge52 ], [ %i.bs, %.critedge ] ; 3 uses
  %i.i = getelementptr i8, ptr %.04358, i64 8
  %i.j = load ptr, ptr %i.i, align 8              ; 4 uses
  %i.k = getelementptr i8, ptr %.04358, i64 16
  %i.l = load ptr, ptr %i.k, align 8              ; 4 uses
  %.not48 = icmp eq ptr %i.l, null
  br i1 %.not48, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = load i32, ptr @system_state, align 4
  %i.n = icmp ult i32 %i.m, 3
  %.not49 = icmp eq ptr %i.j, null
  br i1 %.not49, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr i8, ptr %i.j, i64 1112
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = getelementptr i8, ptr %i.j, i64 1108
  %i.r = load i32, ptr %i.q, align 4
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr [8 x i8], ptr %i.p, i64 %i.s
  %i.u = load i32, ptr %i.j, align 64
  %i.v = icmp eq i32 %i.u, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.044.in = phi i1 [ %i.v, %bb.f ], [ %i.n, %bb.e ]
  %.042 = phi ptr [ %i.t, %bb.f ], [ @__stop_static_call_sites, %bb.e ] ; 3 uses
  %i.w = icmp ult ptr %i.l, %.042
  br i1 %i.w, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.g
  %.044.in.fr = freeze i1 %.044.in
  br i1 %.044.in.fr, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.l
  %.056.us = phi ptr [ %i.ar, %bb.l ], [ %i.l, %.lr.ph ] ; 4 uses
  %i.x = getelementptr i8, ptr %.056.us, i64 4    ; 3 uses
  %i.y = load i32, ptr %i.x, align 4
  %i.z = sext i32 %i.y to i64
  %i.aa = ptrtoint ptr %i.x to i64                ; 2 uses
  %i.ab = add i64 %i.z, %i.aa
  %i.ac = and i64 %i.ab, -4
  %i.ad = inttoptr i64 %i.ac to ptr
  %i.ae = icmp eq ptr %0, %i.ad
  br i1 %i.ae, label %bb.h, label %.critedge

bb.h:                                             ; preds = %.lr.ph.split.us
  %i.af = load i32, ptr %.056.us, align 4
  %i.ag = sext i32 %i.af to i64
  %i.ah = ptrtoint ptr %.056.us to i64
  %i.ai = add i64 %i.ag, %i.ah                    ; 2 uses
  %i.aj = inttoptr i64 %i.ai to ptr               ; 2 uses
  %i.ak = tail call i32 @kernel_text_address(i64 noundef %i.ai) #11
  %.not50.us = icmp eq i32 %i.ak, 0
  %i.al = load i32, ptr %i.x, align 4
  %i.am = zext i32 %i.al to i64
  %i.an = add i64 %i.am, %i.aa                    ; 2 uses
  br i1 %.not50.us, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = trunc i64 %i.an to i1
  tail call void @arch_static_call_transform(ptr noundef %i.aj, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %i.ao) #11
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.ap = and i64 %i.an, 2
  %.not55.us = icmp eq i64 %i.ap, 0
  br i1 %.not55.us, label %bb.k, label %bb.l, !prof !12

bb.k:                                             ; preds = %bb.j
  %i.aq = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.2, ptr @.str.1, i32 205, i32 2323, i64 16) #10, !srcloc !22
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.aq, ptr noundef %i.aj) #11
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !23
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  %i.ar = getelementptr i8, ptr %.056.us, i64 8   ; 2 uses
  %i.as = icmp ult ptr %i.ar, %.042
  br i1 %i.as, label %.lr.ph.split.us, label %.critedge, !llvm.loop !17

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.r
  %.056 = phi ptr [ %i.bq, %bb.r ], [ %i.l, %.lr.ph ] ; 4 uses
  %i.at = getelementptr i8, ptr %.056, i64 4      ; 3 uses
  %i.au = load i32, ptr %i.at, align 4            ; 2 uses
  %i.av = sext i32 %i.au to i64
  %i.aw = ptrtoint ptr %i.at to i64               ; 3 uses
  %i.ax = add i64 %i.av, %i.aw
  %i.ay = and i64 %i.ax, -4
  %i.az = inttoptr i64 %i.ay to ptr
  %i.ba = icmp eq ptr %0, %i.az
  br i1 %i.ba, label %bb.m, label %.critedge

bb.m:                                             ; preds = %.lr.ph.split
  %i.bb = load i32, ptr %.056, align 4
  %i.bc = sext i32 %i.bb to i64
  %i.bd = ptrtoint ptr %.056 to i64
  %i.be = add i64 %i.bc, %i.bd                    ; 2 uses
  %i.bf = inttoptr i64 %i.be to ptr               ; 2 uses
  %i.bg = zext i32 %i.au to i64
  %i.bh = add i64 %i.bg, %i.aw
  %i.bi = and i64 %i.bh, 2
  %.not54 = icmp eq i64 %i.bi, 0
  br i1 %.not54, label %bb.n, label %bb.r

bb.n:                                             ; preds = %bb.m
  %i.bj = tail call i32 @kernel_text_address(i64 noundef %i.be) #11
  %.not50 = icmp eq i32 %i.bj, 0
  %i.bk = load i32, ptr %i.at, align 4
  %i.bl = zext i32 %i.bk to i64
  %i.bm = add i64 %i.bl, %i.aw                    ; 2 uses
  br i1 %.not50, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.bn = and i64 %i.bm, 2
  %.not55 = icmp eq i64 %i.bn, 0
  br i1 %.not55, label %bb.p, label %bb.r, !prof !12

bb.p:                                             ; preds = %bb.o
  %i.bo = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.2, ptr @.str.1, i32 205, i32 2323, i64 16) #10, !srcloc !22
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.bo, ptr noundef %i.bf) #11
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !23
  br label %bb.r

bb.q:                                             ; preds = %bb.n
  %i.bp = trunc i64 %i.bm to i1
  tail call void @arch_static_call_transform(ptr noundef %i.bf, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %i.bp) #11
  br label %bb.r

bb.r:                                             ; preds = %bb.o, %bb.p, %bb.m, %bb.q
  %i.bq = getelementptr i8, ptr %.056, i64 8      ; 2 uses
  %i.br = icmp ult ptr %i.bq, %.042
  br i1 %i.br, label %.lr.ph.split, label %.critedge, !llvm.loop !17

.critedge:                                        ; preds = %bb.r, %.lr.ph.split, %bb.l, %.lr.ph.split.us, %bb.g, %bb.d
  %i.bs = load ptr, ptr %.04358, align 8          ; 2 uses
  %.not47 = icmp eq ptr %i.bs, null
  br i1 %.not47, label %.loopexit, label %bb.d, !llvm.loop !18

.loopexit:                                        ; preds = %.critedge, %bb.c, %bb.a
  tail call void @mutex_unlock(ptr noundef @static_call_mutex) #11
  tail call void @cpus_read_unlock() #11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @cpus_read_lock() local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @arch_static_call_transform(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @kernel_text_address(i64 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__SCT__WARN_trap(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @cpus_read_unlock() local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 0, 2) i32 @static_call_text_reserved(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = icmp ult ptr @__start_static_call_sites, @__stop_static_call_sites
  br i1 %i.a, label %.lr.ph.i, label %..loopexit_crit_edge

..loopexit_crit_edge:                             ; preds = %bb.a
  %.pre = ptrtoint ptr %0 to i64
  br label %.loopexit

.lr.ph.i:                                         ; preds = %bb.a
  %i.b = load i32, ptr @system_state, align 4
  %i.c = icmp ult i32 %i.b, 3
  %i.d = ptrtoint ptr %0 to i64                   ; 4 uses
  br i1 %i.c, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %bb.b
  %.012.us.i = phi ptr [ %i.l, %bb.b ], [ @__start_static_call_sites, %.lr.ph.i ] ; 3 uses
  %i.e = load i32, ptr %.012.us.i, align 4
  %i.f = sext i32 %i.e to i64
  %i.g = ptrtoint ptr %.012.us.i to i64
  %i.h = add i64 %i.f, %i.g                       ; 2 uses
  %i.i = inttoptr i64 %i.h to ptr
  %.not.i.us.i = icmp ult ptr %1, %i.i
  %i.j = add i64 %i.h, 5
  %i.k = icmp ule i64 %i.j, %i.d
  %or.cond.i.not.us.i = or i1 %.not.i.us.i, %i.k
  br i1 %or.cond.i.not.us.i, label %bb.b, label %__static_call_text_reserved.exit

bb.b:                                             ; preds = %.lr.ph.split.us.i
  %i.l = getelementptr i8, ptr %.012.us.i, i64 8  ; 2 uses
  %i.m = icmp ult ptr %i.l, @__stop_static_call_sites
  br i1 %i.m, label %.lr.ph.split.us.i, label %.loopexit, !llvm.loop !24

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %bb.d
  %.012.i = phi ptr [ %i.w, %bb.d ], [ @__start_static_call_sites, %.lr.ph.i ] ; 4 uses
  %i.n = getelementptr i8, ptr %.012.i, i64 4
  %i.o = load i32, ptr %i.n, align 4
  %2 = and i32 %i.o, 2
  %.not10.i = icmp eq i32 %2, 0
  br i1 %.not10.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.split.i
  %i.p = load i32, ptr %.012.i, align 4
  %i.q = sext i32 %i.p to i64
  %i.r = ptrtoint ptr %.012.i to i64
  %i.s = add i64 %i.q, %i.r                       ; 2 uses
  %i.t = inttoptr i64 %i.s to ptr
  %.not.i.i = icmp ult ptr %1, %i.t
  %i.u = add i64 %i.s, 5
  %i.v = icmp ule i64 %i.u, %i.d
  %or.cond.i.not.i = or i1 %.not.i.i, %i.v
  br i1 %or.cond.i.not.i, label %bb.d, label %__static_call_text_reserved.exit

bb.d:                                             ; preds = %bb.c, %.lr.ph.split.i
  %i.w = getelementptr i8, ptr %.012.i, i64 8     ; 2 uses
  %i.x = icmp ult ptr %i.w, @__stop_static_call_sites
  br i1 %i.x, label %.lr.ph.split.i, label %.loopexit, !llvm.loop !24

.loopexit:                                        ; preds = %bb.d, %bb.b, %..loopexit_crit_edge
  %.pre-phi = phi i64 [ %.pre, %..loopexit_crit_edge ], [ %i.d, %bb.b ], [ %i.d, %bb.d ] ; 3 uses
  tail call void @__rcu_read_lock() #11
  %i.y = tail call ptr @__module_text_address(i64 noundef %.pre-phi) #11 ; 7 uses
  %i.z = ptrtoint ptr %1 to i64
  %i.aa = tail call ptr @__module_text_address(i64 noundef %i.z) #11
  %.not.i = icmp eq ptr %i.aa, %i.y
  br i1 %.not.i, label %bb.f, label %bb.e, !prof !25

bb.e:                                             ; preds = %.loopexit
  tail call void asm sideeffect "455: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 455b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 455) #10, !srcloc !26
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, ptr @.str.1, i32 330, i32 2307, i64 16) #10, !srcloc !27
  tail call void asm sideeffect "456: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 456b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 456) #10, !srcloc !28
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.loopexit
  %i.ab = tail call zeroext i1 @try_module_get(ptr noundef %i.y) #11
  tail call void @__rcu_read_unlock() #11
  %.not1718.i = icmp ne ptr %i.y, null
  %.not17.not.i = select i1 %i.ab, i1 %.not1718.i, i1 false
  br i1 %.not17.not.i, label %bb.g, label %__static_call_text_reserved.exit

bb.g:                                             ; preds = %bb.f
  %i.ac = getelementptr i8, ptr %i.y, i64 1112
  %i.ad = load ptr, ptr %i.ac, align 8            ; 4 uses
  %i.ae = getelementptr i8, ptr %i.y, i64 1108
  %i.af = load i32, ptr %i.ae, align 4
  %i.ag = sext i32 %i.af to i64
  %i.ah = getelementptr [8 x i8], ptr %i.ad, i64 %i.ag ; 3 uses
  %i.ai = icmp ult ptr %i.ad, %i.ah
  br i1 %i.ai, label %.lr.ph.i.i, label %__static_call_text_reserved.exit.i

.lr.ph.i.i:                                       ; preds = %bb.g
  %i.aj = load i32, ptr %i.y, align 64
  %i.ak = icmp eq i32 %i.aj, 1
  br i1 %i.ak, label %.lr.ph.split.us.i.i, label %.lr.ph.split.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.i.i, %bb.h
  %.012.us.i.i = phi ptr [ %i.as, %bb.h ], [ %i.ad, %.lr.ph.i.i ] ; 3 uses
  %i.al = load i32, ptr %.012.us.i.i, align 4
  %i.am = sext i32 %i.al to i64
  %i.an = ptrtoint ptr %.012.us.i.i to i64
  %i.ao = add i64 %i.am, %i.an                    ; 2 uses
  %i.ap = inttoptr i64 %i.ao to ptr
  %.not.i.us.i.i = icmp ult ptr %1, %i.ap
  %i.aq = add i64 %i.ao, 5
  %i.ar = icmp ule i64 %i.aq, %.pre-phi
  %or.cond.i.not.us.i.i = or i1 %.not.i.us.i.i, %i.ar
  br i1 %or.cond.i.not.us.i.i, label %bb.h, label %__static_call_text_reserved.exit.i

bb.h:                                             ; preds = %.lr.ph.split.us.i.i
  %i.as = getelementptr i8, ptr %.012.us.i.i, i64 8 ; 2 uses
  %i.at = icmp ult ptr %i.as, %i.ah
  br i1 %i.at, label %.lr.ph.split.us.i.i, label %__static_call_text_reserved.exit.i, !llvm.loop !24

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i, %bb.j
  %.012.i.i = phi ptr [ %i.bh, %bb.j ], [ %i.ad, %.lr.ph.i.i ] ; 4 uses
  %i.au = getelementptr i8, ptr %.012.i.i, i64 4  ; 2 uses
  %i.av = load i32, ptr %i.au, align 4
  %i.aw = zext i32 %i.av to i64
  %i.ax = ptrtoint ptr %i.au to i64
  %i.ay = add i64 %i.aw, %i.ax
  %i.az = and i64 %i.ay, 2
  %.not10.i.i = icmp eq i64 %i.az, 0
  br i1 %.not10.i.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph.split.i.i
  %i.ba = load i32, ptr %.012.i.i, align 4
  %i.bb = sext i32 %i.ba to i64
  %i.bc = ptrtoint ptr %.012.i.i to i64
  %i.bd = add i64 %i.bb, %i.bc                    ; 2 uses
  %i.be = inttoptr i64 %i.bd to ptr
  %.not.i.i.i = icmp ult ptr %1, %i.be
  %i.bf = add i64 %i.bd, 5
  %i.bg = icmp ule i64 %i.bf, %.pre-phi
  %or.cond.i.not.i.i = or i1 %.not.i.i.i, %i.bg
  br i1 %or.cond.i.not.i.i, label %bb.j, label %__static_call_text_reserved.exit.i

bb.j:                                             ; preds = %bb.i, %.lr.ph.split.i.i
  %i.bh = getelementptr i8, ptr %.012.i.i, i64 8  ; 2 uses
  %i.bi = icmp ult ptr %i.bh, %i.ah
  br i1 %i.bi, label %.lr.ph.split.i.i, label %__static_call_text_reserved.exit.i, !llvm.loop !24

__static_call_text_reserved.exit.i:               ; preds = %bb.j, %bb.i, %bb.h, %.lr.ph.split.us.i.i, %bb.g
  %.09.i.i = phi i32 [ 0, %bb.h ], [ 0, %bb.g ], [ 1, %.lr.ph.split.us.i.i ], [ 0, %bb.j ], [ 1, %bb.i ]
  tail call void @module_put(ptr noundef nonnull %i.y) #11
  br label %__static_call_text_reserved.exit

__static_call_text_reserved.exit:                 ; preds = %bb.c, %.lr.ph.split.us.i, %__static_call_text_reserved.exit.i, %bb.f
  %.0 = phi i32 [ 1, %.lr.ph.split.us.i ], [ 0, %bb.f ], [ %.09.i.i, %__static_call_text_reserved.exit.i ], [ 1, %bb.c ]
  ret i32 %.0
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define dso_local noundef i32 @static_call_init() #4 section ".init.text" align 16 prefalign(16) {
bb.a:
  %i.a = load i32, ptr @static_call_initialized, align 4
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @cpus_read_lock() #11
  tail call void @mutex_lock(ptr noundef @static_call_mutex) #11
  %i.c = tail call fastcc i32 @__static_call_init(ptr noundef null, ptr noundef @__start_static_call_sites, ptr noundef @__stop_static_call_sites) #12, !srcloc !29
  tail call void @mutex_unlock(ptr noundef @static_call_mutex) #11
  tail call void @cpus_read_unlock() #11
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i32 (ptr, ...) @_printk(ptr noundef @.str.3) #13 ; 0 uses
  tail call void asm sideeffect "457: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 457b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 457) #10, !srcloc !30
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, ptr @.str.1, i32 512, i32 0, i64 16) #10, !srcloc !31
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.e = load i32, ptr @static_call_initialized, align 4
  %.not2 = icmp eq i32 %i.e, 0
  br i1 %.not2, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.f = tail call i32 @register_module_notifier(ptr noundef @static_call_module_nb) #11 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  store i32 1, ptr @static_call_initialized, align 4
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f
  ret i32 0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc range(i32 -12, 1) i32 @__static_call_init(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = icmp eq ptr %1, %2
  br i1 %i.a, label %.critedge74, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %2 to i64
  %i.c = ptrtoint ptr %1 to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = ashr exact i64 %i.d, 3
  tail call void @sort(ptr noundef %1, i64 noundef %i.e, i64 noundef 8, ptr noundef @static_call_site_cmp, ptr noundef @static_call_site_swap) #11
  %i.f = icmp ult ptr %1, %2
  br i1 %i.f, label %.lr.ph, label %.critedge74

.lr.ph:                                           ; preds = %bb.b
  %.not = icmp eq ptr %0, null                    ; 2 uses
  %i.g = getelementptr i8, ptr %0, i64 608
  %i.h = getelementptr i8, ptr %0, i64 620
  %i.i = getelementptr i8, ptr %0, i64 680
  %i.j = getelementptr i8, ptr %0, i64 692
  %i.k = getelementptr i8, ptr %0, i64 752
  %i.l = getelementptr i8, ptr %0, i64 764
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.k
  %.05687 = phi ptr [ %1, %.lr.ph ], [ %i.cr, %bb.k ] ; 7 uses
  %.05886 = phi ptr [ null, %.lr.ph ], [ %.159, %bb.k ] ; 6 uses
  %i.m = load i32, ptr %.05687, align 4
  %i.n = sext i32 %i.m to i64
  %i.o = ptrtoint ptr %.05687 to i64              ; 2 uses
  %i.p = add i64 %i.n, %i.o                       ; 5 uses
  %i.q = inttoptr i64 %i.p to ptr                 ; 2 uses
  br i1 %.not, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = load ptr, ptr %i.g, align 8
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = load i32, ptr %i.h, align 4
  %i.u = zext i32 %i.t to i64
  %i.v = sub i64 %i.p, %i.s
  %i.w = icmp ult i64 %i.v, %i.u
  br i1 %i.w, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = load ptr, ptr %i.i, align 8
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = load i32, ptr %i.j, align 4
  %i.aa = zext i32 %i.z to i64
end_hunk_0
