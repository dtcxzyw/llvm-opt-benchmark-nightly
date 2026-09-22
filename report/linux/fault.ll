Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/fault?download=true
inline.NumInlined: 178
inline.NumDeleted: 112
begin_hunk_0_@do_user_addr_fault:bb.a
bb.af:                                            ; preds = %bb.ae
  %i.bu = getelementptr i8, ptr %i.bk, i64 512
  %i.bv = tail call i32 @rcuwait_wake_up(ptr noundef %i.bu) #16 ; 0 uses
  br label %vma_end_read.exit

vma_end_read.exit:                                ; preds = %bb.af, %bb.ae, %__vma_refcount_put_return.exit.i.i, %.thread.i.i, %bb.ab
  %i.bw = and i32 %i.bh, 1024
  %.not133 = icmp eq i32 %i.bw, 0
  br i1 %.not133, label %bb.az, label %task_sigpending.exit.i.i

task_sigpending.exit.i.i:                         ; preds = %vma_end_read.exit
  %i.bx = shl i32 %i.bh, 3
  %i.by = and i32 %i.bx, 32
  %spec.select156 = or disjoint i32 %i.by, %.3    ; 2 uses
  %i.bz = load volatile i64, ptr %i.b, align 8
  %i.ca = and i64 %i.bz, 2
  %.not.i.i = icmp eq i64 %i.ca, 0
  br i1 %.not.i.i, label %fatal_signal_pending.exit.thread.i, label %fatal_signal_pending.exit.i

fatal_signal_pending.exit.i:                      ; preds = %task_sigpending.exit.i.i
  %i.cb = getelementptr i8, ptr %i.b, i64 2152
  %.val.i.i162 = load i64, ptr %i.cb, align 8
  %i.cc = and i64 %.val.i.i162, 256
  %.not1.i = icmp eq i64 %i.cc, 0
  br i1 %.not1.i, label %fatal_signal_pending.exit.thread.i, label %fatal_signal_pending.exit.i.fault_signal_pending.exit.thread_crit_edge

fatal_signal_pending.exit.i.fault_signal_pending.exit.thread_crit_edge: ; preds = %fatal_signal_pending.exit.i
  %.pre = load i16, ptr %i.h, align 8
  br label %fault_signal_pending.exit.thread

fatal_signal_pending.exit.thread.i:               ; preds = %fatal_signal_pending.exit.i, %task_sigpending.exit.i.i
  %i.cd = load i16, ptr %i.h, align 8             ; 3 uses
  %i.ce = and i16 %i.cd, 3
  %.not8.i = icmp eq i16 %i.ce, 0
  br i1 %.not8.i, label %fault_signal_pending.exit.thread217, label %test_tsk_thread_flag.exit.i.i

test_tsk_thread_flag.exit.i.i:                    ; preds = %fatal_signal_pending.exit.thread.i
  %i.cf = load volatile i64, ptr %i.b, align 8
  %i.cg = and i64 %i.cf, 4
  %.not.i3.i = icmp eq i64 %i.cg, 0
  br i1 %.not.i3.i, label %fault_signal_pending.exit, label %fault_signal_pending.exit.thread, !prof !14

fault_signal_pending.exit:                        ; preds = %test_tsk_thread_flag.exit.i.i
  %i.ch = load volatile i64, ptr %i.b, align 8
  %i.ci = and i64 %i.ch, 2
  %.not231 = icmp eq i64 %i.ci, 0
  br i1 %.not231, label %fault_signal_pending.exit.thread217, label %fault_signal_pending.exit.thread

fault_signal_pending.exit.thread:                 ; preds = %fatal_signal_pending.exit.i.fault_signal_pending.exit.thread_crit_edge, %test_tsk_thread_flag.exit.i.i, %fault_signal_pending.exit
  %i.cj = phi i16 [ %.pre, %fatal_signal_pending.exit.i.fault_signal_pending.exit.thread_crit_edge ], [ %i.cd, %test_tsk_thread_flag.exit.i.i ], [ %i.cd, %fault_signal_pending.exit ]
  %i.ck = and i16 %i.cj, 3
  %.not232 = icmp eq i16 %i.ck, 0
  br i1 %.not232, label %bb.ag, label %.loopexit

bb.ag:                                            ; preds = %fault_signal_pending.exit.thread
  tail call fastcc void @kernelmode_fixup_or_oops(ptr noundef %0, i64 noundef %1, i64 noundef %2) #19
  br label %.loopexit

fault_signal_pending.exit.thread217:              ; preds = %fatal_signal_pending.exit.thread.i, %fault_signal_pending.exit, %bb.s, %bb.r
  %.5 = phi i32 [ %spec.select156, %fault_signal_pending.exit ], [ %.3, %bb.s ], [ %.3, %bb.r ], [ %spec.select156, %fatal_signal_pending.exit.thread.i ] ; 2 uses
  %i.cl = tail call ptr @lock_mm_and_find_vma(ptr noundef nonnull %i.d, i64 noundef %2, ptr noundef %0) #16 ; 12 uses
  %.not135244 = icmp eq ptr %i.cl, null
  br i1 %.not135244, label %._crit_edge, label %.lr.ph, !prof !70

.lr.ph:                                           ; preds = %fault_signal_pending.exit.thread217
  %i.cm = and i64 %1, 32800
  %or.cond.i163 = icmp eq i64 %i.cm, 0
  %i.cn = and i64 %1, 65
  %or.cond31.i189 = icmp eq i64 %i.cn, 0          ; 2 uses
  %i.co = getelementptr i8, ptr %i.b, i64 2152    ; 2 uses
  %i.cp = or i32 %.5, 32
  br i1 %or.cond.i163, label %bb.ah, label %access_error.exit190.thread, !prof !67

bb.ah:                                            ; preds = %.lr.ph
  br i1 %.not127, label %bb.ai, label %arch_vma_access_permitted.exit.i167.peel

bb.ai:                                            ; preds = %bb.ah
  %i.cq = load ptr, ptr %i.c, align 8             ; 2 uses
  %.not.i.i.i176.peel = icmp eq ptr %i.cq, null
  br i1 %.not.i.i.i176.peel, label %arch_vma_access_permitted.exit.i167.peel, label %vma_is_foreign.exit.i.i177.peel

vma_is_foreign.exit.i.i177.peel:                  ; preds = %bb.ai
  %i.cr = getelementptr i8, ptr %i.cl, i64 16
  %i.cs = load ptr, ptr %i.cr, align 16
  %.not2.i.not.i.i178.peel = icmp eq ptr %i.cq, %i.cs
  br i1 %.not2.i.not.i.i178.peel, label %bb.aj, label %arch_vma_access_permitted.exit.i167.peel

bb.aj:                                            ; preds = %vma_is_foreign.exit.i.i177.peel
  %i.ct = getelementptr i8, ptr %i.cl, i64 32
  %.val.i.i179.peel = load i64, ptr %i.ct, align 32
  callbr void asm sideeffect "# ALT: oldinstr\0A771:\0A\09# ALT: oldinstr\0A771:\0A\09jmp 6f\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 3*32+21)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09jmp ${4:l}\0A775:\0A.popsection\0A\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ${0:c}\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09\0A775:\0A.popsection\0A.pushsection .altinstr_aux,\22ax\22\0A6:\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A testb $1, ${2:a}\0A jnz ${3:l}\0A jmp ${4:l}\0A.popsection\0A", "i,i,i,!i,!i,~{dirflag},~{fpsr},~{flags}"(i16 516, i32 16, ptr nonnull getelementptr inbounds nuw (i8, ptr @boot_cpu_data, i64 112)) #17
          to label %bb.ak [label %bb.ak, label %read_pkru.exit.i.i.i180.peel], !srcloc !20

bb.ak:                                            ; preds = %bb.aj, %bb.aj
  %i.cu = tail call { i32, i32 } asm sideeffect "rdpkru", "={ax},={dx},{cx},~{dirflag},~{fpsr},~{flags}"(i32 0) #17, !srcloc !28
  %i.cv = extractvalue { i32, i32 } %i.cu, 0
  br label %read_pkru.exit.i.i.i180.peel

read_pkru.exit.i.i.i180.peel:                     ; preds = %bb.ak, %bb.aj
  %.0.i.i.i.i181.peel = phi i32 [ %i.cv, %bb.ak ], [ 0, %bb.aj ] ; 2 uses
  %sh.diff.i.i182.peel = lshr i64 %.val.i.i179.peel, 31
  %tr.sh.diff.i.i183.peel = trunc i64 %sh.diff.i.i182.peel to i32
  %i.cw = and i32 %tr.sh.diff.i.i183.peel, 30     ; 2 uses
  %i.cx = shl nuw nsw i32 1, %i.cw
  %i.cy = and i32 %.0.i.i.i.i181.peel, %i.cx
  %.not.i.i.i.i184.peel = icmp eq i32 %i.cy, 0
  br i1 %.not.i.i.i.i184.peel, label %bb.al, label %access_error.exit190.thread

bb.al:                                            ; preds = %read_pkru.exit.i.i.i180.peel
  br i1 %.not126.not, label %arch_vma_access_permitted.exit.thread23.i188.peel, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.cz = shl nuw i32 3, %i.cw
  %i.da = and i32 %.0.i.i.i.i181.peel, %i.cz
  %.not.i5.i.i.i185.peel = icmp eq i32 %i.da, 0
  %or.cond30.i187.peel = and i1 %.not125, %.not.i5.i.i.i185.peel
  br i1 %or.cond30.i187.peel, label %access_error.exit190.peel, label %access_error.exit190.thread

arch_vma_access_permitted.exit.thread23.i188.peel: ; preds = %bb.al
  br i1 %or.cond31.i189, label %access_error.exit190.peel, label %access_error.exit190.thread, !prof !67

arch_vma_access_permitted.exit.i167.peel:         ; preds = %vma_is_foreign.exit.i.i177.peel, %bb.ai, %bb.ah
  br i1 %.not125, label %bb.an, label %access_error.exit190.thread

bb.an:                                            ; preds = %arch_vma_access_permitted.exit.i167.peel
  %i.db = and i64 %1, 3
  %brmerge.not.peel = icmp eq i64 %i.db, 1
  %.mux.peel = select i1 %.not126.not, i64 7, i64 2, !prof !71
  br i1 %brmerge.not.peel, label %access_error.exit190.thread, label %access_error.exit190.peel, !prof !72

access_error.exit190.peel:                        ; preds = %bb.an, %arch_vma_access_permitted.exit.thread23.i188.peel, %bb.am
  %.sink35.i170.peel = phi i64 [ %.mux.peel, %bb.an ], [ 2, %bb.am ], [ 7, %arch_vma_access_permitted.exit.thread23.i188.peel ]
  %i.dc = getelementptr i8, ptr %i.cl, i64 32
  %.val.i171.peel = load i64, ptr %i.dc, align 32
  %i.dd = and i64 %.val.i171.peel, %.sink35.i170.peel
  %.not33.i172.not.peel = icmp eq i64 %i.dd, 0
  br i1 %.not33.i172.not.peel, label %access_error.exit190.thread, label %bb.ao, !prof !68

bb.ao:                                            ; preds = %access_error.exit190.peel
  %i.de = tail call i32 @handle_mm_fault(ptr noundef nonnull %i.cl, i64 noundef %2, i32 noundef %.5, ptr noundef %0) #16 ; 4 uses
  %i.df = and i32 %i.de, 1024
  %.not.i191.peel = icmp eq i32 %i.df, 0
  br i1 %.not.i191.peel, label %fault_signal_pending.exit206.thread221, label %task_sigpending.exit.i.i193.peel

task_sigpending.exit.i.i193.peel:                 ; preds = %bb.ao
  %i.dg = load volatile i64, ptr %i.b, align 8
  %i.dh = and i64 %i.dg, 2
  %.not.i.i194.peel = icmp eq i64 %i.dh, 0
  br i1 %.not.i.i194.peel, label %fatal_signal_pending.exit.thread.i198.peel, label %fatal_signal_pending.exit.i195.peel

fatal_signal_pending.exit.i195.peel:              ; preds = %task_sigpending.exit.i.i193.peel
  %.val.i.i196.peel = load i64, ptr %i.co, align 8
  %i.di = and i64 %.val.i.i196.peel, 256
  %.not1.i197.peel = icmp eq i64 %i.di, 0
  br i1 %.not1.i197.peel, label %fatal_signal_pending.exit.thread.i198.peel, label %fault_signal_pending.exit206.thread

fatal_signal_pending.exit.thread.i198.peel:       ; preds = %fatal_signal_pending.exit.i195.peel, %task_sigpending.exit.i.i193.peel
  %i.dj = load i16, ptr %i.h, align 8
  %i.dk = and i16 %i.dj, 3
  %.not8.i199.peel = icmp eq i16 %i.dk, 0
  br i1 %.not8.i199.peel, label %fault_signal_pending.exit206.thread221.thread.peel, label %test_tsk_thread_flag.exit.i.i201.peel

test_tsk_thread_flag.exit.i.i201.peel:            ; preds = %fatal_signal_pending.exit.thread.i198.peel
  %i.dl = load volatile i64, ptr %i.b, align 8
  %i.dm = and i64 %i.dl, 4
  %.not.i3.i202.peel = icmp eq i64 %i.dm, 0
  br i1 %.not.i3.i202.peel, label %fault_signal_pending.exit206.peel, label %fault_signal_pending.exit206.thread, !prof !14

fault_signal_pending.exit206.peel:                ; preds = %test_tsk_thread_flag.exit.i.i201.peel
  %i.dn = load volatile i64, ptr %i.b, align 8
  %i.do = and i64 %i.dn, 2
  %.not233.peel = icmp eq i64 %i.do, 0
  br i1 %.not233.peel, label %.thread.peel, label %fault_signal_pending.exit206.thread

.thread.peel:                                     ; preds = %fault_signal_pending.exit206.peel
  %i.dp = and i32 %i.de, 16384
  %.not137222.peel = icmp eq i32 %i.dp, 0
  br i1 %.not137222.peel, label %.thread223.peel, label %.loopexit

fault_signal_pending.exit206.thread221.thread.peel: ; preds = %fatal_signal_pending.exit.thread.i198.peel
  %i.dq = and i32 %i.de, 16384
  %.not137225.peel = icmp eq i32 %i.dq, 0
  br i1 %.not137225.peel, label %.thread223.peel, label %.loopexit

.thread223.peel:                                  ; preds = %fault_signal_pending.exit206.thread221.thread.peel, %.thread.peel
  %i.dr = tail call ptr @lock_mm_and_find_vma(ptr noundef nonnull %i.d, i64 noundef %2, ptr noundef %0) #16 ; 2 uses
  %.not135.peel = icmp eq ptr %i.dr, null
  br i1 %.not135.peel, label %._crit_edge, label %.peel.next, !prof !73

.peel.next:                                       ; preds = %.thread223.peel
  %i.ds = and i64 %1, 3
  %brmerge.not = icmp ne i64 %i.ds, 1
  %.mux = select i1 %.not126.not, i64 7, i64 2, !prof !71
  %brmerge.not273 = and i1 %brmerge.not, %.not125
  br label %bb.ap

._crit_edge:                                      ; preds = %.thread223, %.thread223.peel, %fault_signal_pending.exit.thread217
  tail call fastcc void @bad_area_nosemaphore(ptr noundef %0, i64 noundef %1, i64 noundef %2) #19, !srcloc !74
  br label %.loopexit

bb.ap:                                            ; preds = %.peel.next, %.thread223
  %i.dt = phi ptr [ %i.ex, %.thread223 ], [ %i.dr, %.peel.next ] ; 9 uses
  br i1 %.not127, label %bb.aq, label %arch_vma_access_permitted.exit.i167

bb.aq:                                            ; preds = %bb.ap
  %i.du = load ptr, ptr %i.c, align 8             ; 2 uses
  %.not.i.i.i176 = icmp eq ptr %i.du, null
  br i1 %.not.i.i.i176, label %arch_vma_access_permitted.exit.i167, label %vma_is_foreign.exit.i.i177

vma_is_foreign.exit.i.i177:                       ; preds = %bb.aq
  %i.dv = getelementptr i8, ptr %i.dt, i64 16
  %i.dw = load ptr, ptr %i.dv, align 16
  %.not2.i.not.i.i178 = icmp eq ptr %i.du, %i.dw
  br i1 %.not2.i.not.i.i178, label %bb.ar, label %arch_vma_access_permitted.exit.i167

bb.ar:                                            ; preds = %vma_is_foreign.exit.i.i177
  %i.dx = getelementptr i8, ptr %i.dt, i64 32
  %.val.i.i179 = load i64, ptr %i.dx, align 32
  callbr void asm sideeffect "# ALT: oldinstr\0A771:\0A\09# ALT: oldinstr\0A771:\0A\09jmp 6f\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 3*32+21)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09jmp ${4:l}\0A775:\0A.popsection\0A\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ${0:c}\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09\0A775:\0A.popsection\0A.pushsection .altinstr_aux,\22ax\22\0A6:\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A testb $1, ${2:a}\0A jnz ${3:l}\0A jmp ${4:l}\0A.popsection\0A", "i,i,i,!i,!i,~{dirflag},~{fpsr},~{flags}"(i16 516, i32 16, ptr nonnull getelementptr inbounds nuw (i8, ptr @boot_cpu_data, i64 112)) #17
          to label %bb.as [label %bb.as, label %read_pkru.exit.i.i.i180], !srcloc !20

bb.as:                                            ; preds = %bb.ar, %bb.ar
  %i.dy = tail call { i32, i32 } asm sideeffect "rdpkru", "={ax},={dx},{cx},~{dirflag},~{fpsr},~{flags}"(i32 0) #17, !srcloc !28
  %i.dz = extractvalue { i32, i32 } %i.dy, 0
  br label %read_pkru.exit.i.i.i180

read_pkru.exit.i.i.i180:                          ; preds = %bb.as, %bb.ar
  %.0.i.i.i.i181 = phi i32 [ %i.dz, %bb.as ], [ 0, %bb.ar ] ; 2 uses
  %sh.diff.i.i182 = lshr i64 %.val.i.i179, 31
  %tr.sh.diff.i.i183 = trunc i64 %sh.diff.i.i182 to i32
  %i.ea = and i32 %tr.sh.diff.i.i183, 30          ; 2 uses
  %i.eb = shl nuw nsw i32 1, %i.ea
  %i.ec = and i32 %.0.i.i.i.i181, %i.eb
  %.not.i.i.i.i184 = icmp eq i32 %i.ec, 0
  br i1 %.not.i.i.i.i184, label %bb.at, label %access_error.exit190.thread

bb.at:                                            ; preds = %read_pkru.exit.i.i.i180
  br i1 %.not126.not, label %arch_vma_access_permitted.exit.thread23.i188, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ed = shl nuw i32 3, %i.ea
  %i.ee = and i32 %.0.i.i.i.i181, %i.ed
  %.not.i5.i.i.i185 = icmp eq i32 %i.ee, 0
  %or.cond30.i187 = and i1 %.not125, %.not.i5.i.i.i185
  br i1 %or.cond30.i187, label %access_error.exit190, label %access_error.exit190.thread

arch_vma_access_permitted.exit.i167:              ; preds = %vma_is_foreign.exit.i.i177, %bb.aq, %bb.ap
  br i1 %brmerge.not273, label %access_error.exit190, label %access_error.exit190.thread, !prof !75

arch_vma_access_permitted.exit.thread23.i188:     ; preds = %bb.at
  br i1 %or.cond31.i189, label %access_error.exit190, label %access_error.exit190.thread, !prof !67

access_error.exit190:                             ; preds = %arch_vma_access_permitted.exit.i167, %bb.au, %arch_vma_access_permitted.exit.thread23.i188
  %.sink35.i170 = phi i64 [ %.mux, %arch_vma_access_permitted.exit.i167 ], [ 2, %bb.au ], [ 7, %arch_vma_access_permitted.exit.thread23.i188 ]
  %i.ef = getelementptr i8, ptr %i.dt, i64 32
  %.val.i171 = load i64, ptr %i.ef, align 32
  %i.eg = and i64 %.val.i171, %.sink35.i170
  %.not33.i172.not = icmp eq i64 %i.eg, 0
  br i1 %.not33.i172.not, label %access_error.exit190.thread, label %bb.av, !prof !68

access_error.exit190.thread:                      ; preds = %access_error.exit190, %read_pkru.exit.i.i.i180, %arch_vma_access_permitted.exit.thread23.i188, %bb.au, %arch_vma_access_permitted.exit.i167, %read_pkru.exit.i.i.i180.peel, %bb.am, %arch_vma_access_permitted.exit.thread23.i188.peel, %arch_vma_access_permitted.exit.i167.peel, %bb.an, %access_error.exit190.peel, %.lr.ph
  %.lcssa = phi ptr [ %i.cl, %.lr.ph ], [ %i.cl, %read_pkru.exit.i.i.i180.peel ], [ %i.cl, %bb.am ], [ %i.cl, %arch_vma_access_permitted.exit.thread23.i188.peel ], [ %i.cl, %arch_vma_access_permitted.exit.i167.peel ], [ %i.cl, %bb.an ], [ %i.cl, %access_error.exit190.peel ], [ %i.dt, %arch_vma_access_permitted.exit.i167 ], [ %i.dt, %bb.au ], [ %i.dt, %arch_vma_access_permitted.exit.thread23.i188 ], [ %i.dt, %read_pkru.exit.i.i.i180 ], [ %i.dt, %access_error.exit190 ]
  tail call fastcc void @bad_area_access_error(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull %i.d, ptr noundef nonnull %.lcssa) #19, !srcloc !76
  br label %.loopexit

bb.av:                                            ; preds = %access_error.exit190
  %i.eh = tail call i32 @handle_mm_fault(ptr noundef nonnull %i.dt, i64 noundef %2, i32 noundef %i.cp, ptr noundef %0) #16 ; 4 uses
  %i.ei = and i32 %i.eh, 1024
  %.not.i191 = icmp eq i32 %i.ei, 0
  br i1 %.not.i191, label %fault_signal_pending.exit206.thread221, label %task_sigpending.exit.i.i193

task_sigpending.exit.i.i193:                      ; preds = %bb.av
  %i.ej = load volatile i64, ptr %i.b, align 8
  %i.ek = and i64 %i.ej, 2
  %.not.i.i194 = icmp eq i64 %i.ek, 0
  br i1 %.not.i.i194, label %fatal_signal_pending.exit.thread.i198, label %fatal_signal_pending.exit.i195

fatal_signal_pending.exit.i195:                   ; preds = %task_sigpending.exit.i.i193
  %.val.i.i196 = load i64, ptr %i.co, align 8
  %i.el = and i64 %.val.i.i196, 256
  %.not1.i197 = icmp eq i64 %i.el, 0
  br i1 %.not1.i197, label %fatal_signal_pending.exit.thread.i198, label %fault_signal_pending.exit206.thread

fatal_signal_pending.exit.thread.i198:            ; preds = %fatal_signal_pending.exit.i195, %task_sigpending.exit.i.i193
  %i.em = load i16, ptr %i.h, align 8
  %i.en = and i16 %i.em, 3
  %.not8.i199 = icmp eq i16 %i.en, 0
  br i1 %.not8.i199, label %fault_signal_pending.exit206.thread221.thread, label %test_tsk_thread_flag.exit.i.i201

test_tsk_thread_flag.exit.i.i201:                 ; preds = %fatal_signal_pending.exit.thread.i198
  %i.eo = load volatile i64, ptr %i.b, align 8
  %i.ep = and i64 %i.eo, 4
  %.not.i3.i202 = icmp eq i64 %i.ep, 0
  br i1 %.not.i3.i202, label %fault_signal_pending.exit206, label %fault_signal_pending.exit206.thread, !prof !14

fault_signal_pending.exit206:                     ; preds = %test_tsk_thread_flag.exit.i.i201
  %i.eq = load volatile i64, ptr %i.b, align 8
  %i.er = and i64 %i.eq, 2
  %.not233 = icmp eq i64 %i.er, 0
  br i1 %.not233, label %.thread, label %fault_signal_pending.exit206.thread

fault_signal_pending.exit206.thread:              ; preds = %test_tsk_thread_flag.exit.i.i201, %fatal_signal_pending.exit.i195, %fault_signal_pending.exit206, %fault_signal_pending.exit206.peel, %test_tsk_thread_flag.exit.i.i201.peel, %fatal_signal_pending.exit.i195.peel
  %i.es = load i16, ptr %i.h, align 8
  %i.et = and i16 %i.es, 3
  %.not234 = icmp eq i16 %i.et, 0
  br i1 %.not234, label %bb.aw, label %.loopexit

bb.aw:                                            ; preds = %fault_signal_pending.exit206.thread
  tail call fastcc void @kernelmode_fixup_or_oops(ptr noundef %0, i64 noundef %1, i64 noundef %2) #19
  br label %.loopexit

fault_signal_pending.exit206.thread221:           ; preds = %bb.av, %bb.ao
  %.lcssa250 = phi i32 [ %i.de, %bb.ao ], [ %i.eh, %bb.av ] ; 2 uses
  %i.eu = and i32 %.lcssa250, 16384
  %.not137 = icmp eq i32 %i.eu, 0
  br i1 %.not137, label %bb.ax, label %.loopexit

fault_signal_pending.exit206.thread221.thread:    ; preds = %fatal_signal_pending.exit.thread.i198
  %i.ev = and i32 %i.eh, 16384
  %.not137225 = icmp eq i32 %i.ev, 0
  br i1 %.not137225, label %.thread223, label %.loopexit

.thread:                                          ; preds = %fault_signal_pending.exit206
  %i.ew = and i32 %i.eh, 16384
  %.not137222 = icmp eq i32 %i.ew, 0
  br i1 %.not137222, label %.thread223, label %.loopexit

.thread223:                                       ; preds = %fault_signal_pending.exit206.thread221.thread, %.thread
  %i.ex = tail call ptr @lock_mm_and_find_vma(ptr noundef nonnull %i.d, i64 noundef %2, ptr noundef %0) #16 ; 2 uses
  %.not135 = icmp eq ptr %i.ex, null
  br i1 %.not135, label %._crit_edge, label %bb.ap, !prof !73, !llvm.loop !53

bb.ax:                                            ; preds = %fault_signal_pending.exit206.thread221
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_mmap_lock_released, i64 8), i1 false) #17
          to label %mmap_read_unlock.exit [label %bb.ay], !srcloc !27

bb.ay:                                            ; preds = %bb.ax
  tail call void @__mmap_lock_do_trace_released(ptr noundef nonnull %i.d, i1 noundef zeroext false) #16
  br label %mmap_read_unlock.exit

mmap_read_unlock.exit:                            ; preds = %bb.ax, %bb.ay
  %i.ey = getelementptr i8, ptr %i.d, i64 464
  tail call void @up_read(ptr noundef %i.ey) #16
  br label %bb.az

bb.az:                                            ; preds = %vma_end_read.exit, %mmap_read_unlock.exit
  %.0 = phi i32 [ %.lcssa250, %mmap_read_unlock.exit ], [ %i.bh, %vma_end_read.exit ] ; 4 uses
  %i.ez = and i32 %.0, 2163
  %.not139 = icmp eq i32 %i.ez, 0
  br i1 %.not139, label %.loopexit, label %task_sigpending.exit.i, !prof !14

task_sigpending.exit.i:                           ; preds = %bb.az
  %i.fa = load volatile i64, ptr %i.b, align 8
  %i.fb = and i64 %i.fa, 2
  %.not.i208 = icmp eq i64 %i.fb, 0
  br i1 %.not.i208, label %fatal_signal_pending.exit.thread, label %fatal_signal_pending.exit

fatal_signal_pending.exit:                        ; preds = %task_sigpending.exit.i
  %i.fc = getelementptr i8, ptr %i.b, i64 2152
  %.val.i209 = load i64, ptr %i.fc, align 8
  %i.fd = and i64 %.val.i209, 256
  %.not140 = icmp eq i64 %i.fd, 0
  br i1 %.not140, label %fatal_signal_pending.exit.thread, label %bb.ba

bb.ba:                                            ; preds = %fatal_signal_pending.exit
  %i.fe = load i16, ptr %i.h, align 8
  %i.ff = and i16 %i.fe, 3
  %.not235 = icmp eq i16 %i.ff, 0
  br i1 %.not235, label %bb.bb, label %fatal_signal_pending.exit.thread

bb.bb:                                            ; preds = %bb.ba
  tail call fastcc void @kernelmode_fixup_or_oops(ptr noundef %0, i64 noundef %1, i64 noundef %2) #19
  br label %.loopexit

fatal_signal_pending.exit.thread:                 ; preds = %task_sigpending.exit.i, %bb.ba, %fatal_signal_pending.exit
  %i.fg = and i32 %.0, 1
  %.not142 = icmp eq i32 %i.fg, 0
  br i1 %.not142, label %bb.bf, label %bb.bc

bb.bc:                                            ; preds = %fatal_signal_pending.exit.thread
  %i.fh = load i16, ptr %i.h, align 8
  %i.fi = and i16 %i.fh, 3
  %.not236 = icmp eq i16 %i.fi, 0
  br i1 %.not236, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  tail call fastcc void @kernelmode_fixup_or_oops(ptr noundef %0, i64 noundef %1, i64 noundef %2) #19
  br label %.loopexit

bb.be:                                            ; preds = %bb.bc
  tail call void @pagefault_out_of_memory() #16
  br label %.loopexit

bb.bf:                                            ; preds = %fatal_signal_pending.exit.thread
  %i.fj = and i32 %.0, 50
  %.not143 = icmp eq i32 %i.fj, 0
  br i1 %.not143, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  tail call fastcc void @do_sigbus(ptr noundef %0, i64 noundef %1, i64 noundef %2) #19
  br label %.loopexit

bb.bh:                                            ; preds = %bb.bf
  %i.fk = and i32 %.0, 64
  %.not144 = icmp eq i32 %i.fk, 0
  br i1 %.not144, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  tail call fastcc void @bad_area_nosemaphore(ptr noundef %0, i64 noundef %1, i64 noundef %2) #19, !srcloc !79
  br label %.loopexit

bb.bj:                                            ; preds = %bb.bh
  tail call void asm sideeffect "882: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 882b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 882) #17, !srcloc !80
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.8, ptr nonnull @.str.7, i32 1455, i32 0, i64 16) #17, !srcloc !81
  unreachable

.loopexit:                                        ; preds = %fault_signal_pending.exit206.thread221.thread, %.thread, %.thread.peel, %fault_signal_pending.exit206.thread221.thread.peel, %bb.h, %bb.be, %bb.bi, %bb.bg, %bb.az, %fault_signal_pending.exit206.thread221, %fault_signal_pending.exit206.thread, %bb.aw, %fault_signal_pending.exit.thread, %bb.ag, %bb.q, %bb.b, %bb.bd, %bb.bb, %access_error.exit190.thread, %._crit_edge, %access_error.exit.thread, %bb.o, %.critedge152, %bb.l, %bb.c
  ret void
}

; Function Attrs: fn_ret_thunk_extern noinline noprofile noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @exc_page_fault(ptr noundef %0, i64 noundef %1) local_unnamed_addr #6 section ".noinstr.text" align 16 prefalign(16) {
bb.a:
  %i.a = tail call i64 asm sideeffect "mov %cr2,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !82 ; 6 uses
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @kvm_async_pf_enabled, i1 false) #17
          to label %kvm_handle_async_pf.exit.thread [label %kvm_handle_async_pf.exit], !srcloc !27

kvm_handle_async_pf.exit:                         ; preds = %bb.a
  %i.b = trunc i64 %i.a to i32
  %i.c = tail call zeroext i1 @__kvm_handle_async_pf(ptr noundef %0, i32 noundef %i.b) #16
  br i1 %i.c, label %bb.f, label %kvm_handle_async_pf.exit.thread

kvm_handle_async_pf.exit.thread:                  ; preds = %bb.a, %kvm_handle_async_pf.exit
  %i.d = tail call i8 @irqentry_enter(ptr noundef %0) #16
  tail call void asm sideeffect "883: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 883b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 883) #17, !srcloc !83
  %i.e = getelementptr i8, ptr %0, i64 136
  %i.f = load i16, ptr %i.e, align 8
  %i.g = and i16 %i.f, 3
  %.not = icmp eq i16 %i.g, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %kvm_handle_async_pf.exit.thread
  tail call fastcc void @trace_page_fault_user(i64 noundef %i.a, ptr noundef %0, i64 noundef %1) #19, !srcloc !84
  br label %trace_page_fault_entries.exit

bb.c:                                             ; preds = %kvm_handle_async_pf.exit.thread
  tail call fastcc void @trace_page_fault_kernel(i64 noundef %i.a, ptr noundef %0, i64 noundef %1) #19, !srcloc !85
  br label %trace_page_fault_entries.exit

trace_page_fault_entries.exit:                    ; preds = %bb.b, %bb.c
  %i.h = tail call zeroext i1 @fault_in_kernel_space(i64 noundef %i.a) #19
  br i1 %i.h, label %bb.d, label %bb.e, !prof !15

bb.d:                                             ; preds = %trace_page_fault_entries.exit
  tail call void @do_kern_addr_fault(ptr noundef %0, i64 noundef %1, i64 noundef %i.a) #19, !srcloc !86
  br label %handle_page_fault.exit

bb.e:                                             ; preds = %trace_page_fault_entries.exit
  tail call void @do_user_addr_fault(ptr noundef %0, i64 noundef %1, i64 noundef %i.a) #19, !srcloc !87
  br label %handle_page_fault.exit

handle_page_fault.exit:                           ; preds = %bb.d, %bb.e
end_hunk_0
