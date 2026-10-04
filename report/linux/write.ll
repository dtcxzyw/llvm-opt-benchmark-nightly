Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/write?download=true
inline.NumInlined: 596
inline.NumDeleted: 195
begin_hunk_0_@nfs_update_folio:bb.a
  %i.dn = and i32 %i.dm, -4096
  %i.do = tail call i32 @llvm.umin.i32(i32 %i.dn, i32 %i.ak)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %nfs_can_extend_write.exit.thread71
  %.038 = phi i32 [ %i.do, %bb.ab ], [ %i.dj, %nfs_can_extend_write.exit.thread71 ]
  %i.dp = sub i32 %.038, %i.dk                    ; 2 uses
  %.pre = zext i32 %i.dk to i64
  %.pre81 = zext i32 %i.dp to i64
  br label %nfs_can_extend_write.exit.thread

nfs_can_extend_write.exit.thread:                 ; preds = %bb.t, %bb.q, %bb.s, %bb.r, %locks_inode_context.exit.i, %bb.o, %nfs_can_extend_write.exit.thread75, %bb.ac, %nfs_can_extend_write.exit
  %.pre-phi82 = phi i64 [ %i.aq, %bb.t ], [ %i.aq, %nfs_can_extend_write.exit ], [ %i.aq, %bb.q ], [ %i.aq, %bb.s ], [ %i.aq, %bb.r ], [ %i.aq, %locks_inode_context.exit.i ], [ %i.aq, %bb.o ], [ %i.aq, %nfs_can_extend_write.exit.thread75 ], [ %.pre81, %bb.ac ] ; 4 uses
  %.pre-phi80 = phi i64 [ %i.ap, %bb.t ], [ %i.ap, %nfs_can_extend_write.exit ], [ %i.ap, %bb.q ], [ %i.ap, %bb.s ], [ %i.ap, %bb.r ], [ %i.ap, %locks_inode_context.exit.i ], [ %i.ap, %bb.o ], [ %i.ap, %nfs_can_extend_write.exit.thread75 ], [ %.pre, %bb.ac ] ; 7 uses
  %.036 = phi i32 [ %3, %bb.t ], [ %3, %nfs_can_extend_write.exit ], [ %3, %bb.q ], [ %3, %bb.s ], [ %3, %bb.r ], [ %3, %locks_inode_context.exit.i ], [ %3, %bb.o ], [ %3, %nfs_can_extend_write.exit.thread75 ], [ %i.dp, %bb.ac ] ; 5 uses
  %.0 = phi i32 [ %2, %bb.t ], [ %2, %nfs_can_extend_write.exit ], [ %2, %bb.q ], [ %2, %bb.s ], [ %2, %bb.r ], [ %2, %locks_inode_context.exit.i ], [ %2, %bb.o ], [ %2, %nfs_can_extend_write.exit.thread75 ], [ %i.dk, %bb.ac ] ; 7 uses
  %.val49.i.i.i = load ptr, ptr %i.b, align 8
  %.val49.val.i.i.i = load ptr, ptr %.val49.i.i.i, align 8
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_nfs_try_to_update_request, i64 8), i1 false) #13
          to label %trace_nfs_try_to_update_request.exit.i.i.i [label %arch_test_bit.exit.i.i.i.i.i], !srcloc !22

arch_test_bit.exit.i.i.i.i.i:                     ; preds = %nfs_can_extend_write.exit.thread
  %i.dq = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @cpu_number) #13, !srcloc !78
  %i.dr = zext i32 %i.dq to i64
  %i.ds = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.dr) #13, !srcloc !23 ; 2 uses
  %i.dt = icmp ult i8 %i.ds, 2
  tail call void @llvm.assume(i1 %i.dt)
  %i.du = trunc nuw i8 %i.ds to i1
  br i1 %i.du, label %bb.ad, label %trace_nfs_try_to_update_request.exit.i.i.i

bb.ad:                                            ; preds = %arch_test_bit.exit.i.i.i.i.i
  %i.dv = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.dv, ptr elementtype(i64) %i.dv) #13, !srcloc !24
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !srcloc !25
  %i.dw = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_nfs_try_to_update_request, i64 56), align 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.dw, null
  br i1 %.not.i.i.i.i.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dx = getelementptr i8, ptr %i.dw, i64 8
  %i.dy = load ptr, ptr %i.dx, align 8
  %i.dz = tail call i32 @__SCT__tp_func_nfs_try_to_update_request(ptr noundef %i.dy, ptr noundef %.val49.val.i.i.i, i64 noundef range(i64 0, 4294967296) %.pre-phi80, i64 noundef range(i64 0, 4294967296) %.pre-phi82) #12 ; 0 uses
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !srcloc !26
  %i.ea = getelementptr i8, ptr %i.dv, i64 8      ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.ea, ptr elementtype(i64) %i.ea) #13, !srcloc !27
  br label %trace_nfs_try_to_update_request.exit.i.i.i

trace_nfs_try_to_update_request.exit.i.i.i:       ; preds = %bb.af, %arch_test_bit.exit.i.i.i.i.i, %nfs_can_extend_write.exit.thread
  %i.eb = add i32 %.0, %.036                      ; 2 uses
  %i.ec = tail call fastcc ptr @nfs_lock_and_join_requests(ptr noundef %1) #15, !srcloc !79 ; 13 uses
  %.not.i.i.i.i = icmp eq ptr %i.ec, null
  %i.ed = icmp ugt ptr %i.ec, inttoptr (i64 -4096 to ptr) ; 2 uses
  %spec.select.i.i.i.i = or i1 %.not.i.i.i.i, %i.ed
  br i1 %spec.select.i.i.i.i, label %PTR_ERR_OR_ZERO.exit.i.i.i, label %bb.ag

bb.ag:                                            ; preds = %trace_nfs_try_to_update_request.exit.i.i.i
  %i.ee = getelementptr i8, ptr %i.ec, i64 40     ; 2 uses
  %i.ef = load i32, ptr %i.ee, align 8            ; 4 uses
  %i.eg = getelementptr i8, ptr %i.ec, i64 48     ; 2 uses
  %i.eh = load i32, ptr %i.eg, align 8
  %i.ei = add i32 %i.eh, %i.ef                    ; 2 uses
  %i.ej = icmp ugt i32 %.0, %i.ei
  %i.ek = icmp ult i32 %i.eb, %i.ef
  %or.cond.i.i.i = or i1 %i.ek, %i.ej
  br i1 %or.cond.i.i.i, label %bb.an, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.el = icmp ult i32 %.0, %i.ef
  br i1 %i.el, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  store i32 %.0, ptr %i.ee, align 8
  %i.em = getelementptr i8, ptr %i.ec, i64 44
  store i32 %.0, ptr %i.em, align 4
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.en = phi i32 [ %.0, %bb.ai ], [ %i.ef, %bb.ah ]
  %spec.select.i.i.i = tail call i32 @llvm.umax.i32(i32 %i.eb, i32 %i.ei)
  %storemerge.i.i.i = sub i32 %spec.select.i.i.i, %i.en
  store i32 %storemerge.i.i.i, ptr %i.eg, align 8
  %i.eo = getelementptr i8, ptr %i.ec, i64 88
  store i16 0, ptr %i.eo, align 8
  br label %PTR_ERR_OR_ZERO.exit.i.i.i

PTR_ERR_OR_ZERO.exit.i.i.i:                       ; preds = %bb.aj, %trace_nfs_try_to_update_request.exit.i.i.i
  %.val48.i.i.i = load ptr, ptr %i.b, align 8
  %.val48.val.i.i.i = load ptr, ptr %.val48.i.i.i, align 8
  %i.ep = ptrtoint ptr %i.ec to i64
  %i.eq = trunc i64 %i.ep to i32
  %.0.i.i.i.i = select i1 %i.ed, i32 %i.eq, i32 0
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_nfs_try_to_update_request_done, i64 8), i1 false) #13
          to label %nfs_try_to_update_request.exit.i.i [label %arch_test_bit.exit.i.i50.i.i.i], !srcloc !22

arch_test_bit.exit.i.i50.i.i.i:                   ; preds = %PTR_ERR_OR_ZERO.exit.i.i.i
  %i.er = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @cpu_number) #13, !srcloc !80
  %i.es = zext i32 %i.er to i64
  %i.et = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.es) #13, !srcloc !23 ; 2 uses
  %i.eu = icmp ult i8 %i.et, 2
  tail call void @llvm.assume(i1 %i.eu)
  %i.ev = trunc nuw i8 %i.et to i1
  br i1 %i.ev, label %bb.ak, label %nfs_try_to_update_request.exit.i.i

bb.ak:                                            ; preds = %arch_test_bit.exit.i.i50.i.i.i
  %i.ew = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.ew, ptr elementtype(i64) %i.ew) #13, !srcloc !24
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !srcloc !25
  %i.ex = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_nfs_try_to_update_request_done, i64 56), align 8 ; 2 uses
  %.not.i.i51.i.i.i = icmp eq ptr %i.ex, null
  br i1 %.not.i.i51.i.i.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ey = getelementptr i8, ptr %i.ex, i64 8
  %i.ez = load ptr, ptr %i.ey, align 8
  %i.fa = tail call i32 @__SCT__tp_func_nfs_try_to_update_request_done(ptr noundef %i.ez, ptr noundef %.val48.val.i.i.i, i64 noundef range(i64 0, 4294967296) %.pre-phi80, i64 noundef range(i64 0, 4294967296) %.pre-phi82, i32 noundef %.0.i.i.i.i) #12 ; 0 uses
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !srcloc !26
  %i.fb = getelementptr i8, ptr %i.ew, i64 8      ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.fb, ptr elementtype(i64) %i.fb) #13, !srcloc !27
  br label %nfs_try_to_update_request.exit.i.i

bb.an:                                            ; preds = %bb.ag
  %i.fc = getelementptr i8, ptr %i.ec, i64 56
  %i.fd = load volatile i64, ptr %i.fc, align 8
  %i.fe = and i64 %i.fd, 4
  %.not.i.i53.i.i.i = icmp eq i64 %i.fe, 0
  br i1 %.not.i.i53.i.i.i, label %nfs_mark_request_dirty.exit.i.i.i, label %nfs_page_to_folio.exit.i.i.i.i

nfs_page_to_folio.exit.i.i.i.i:                   ; preds = %bb.an
  %i.ff = getelementptr i8, ptr %i.ec, i64 16
  %i.fg = load ptr, ptr %i.ff, align 8            ; 3 uses
  %.not.i54.i.i.i = icmp eq ptr %i.fg, null
  br i1 %.not.i54.i.i.i, label %nfs_mark_request_dirty.exit.i.i.i, label %bb.ao

bb.ao:                                            ; preds = %nfs_page_to_folio.exit.i.i.i.i
  %i.fh = tail call ptr @folio_mapping(ptr noundef nonnull %i.fg) #12
  %i.fi = tail call zeroext i1 @filemap_dirty_folio(ptr noundef %i.fh, ptr noundef nonnull %i.fg) #12 ; 0 uses
  br label %nfs_mark_request_dirty.exit.i.i.i

nfs_mark_request_dirty.exit.i.i.i:                ; preds = %bb.ao, %nfs_page_to_folio.exit.i.i.i.i, %bb.an
  tail call void @nfs_unlock_and_release_request(ptr noundef nonnull %i.ec) #12
  %i.fj = load ptr, ptr %i.b, align 8
  %i.fk = load ptr, ptr %i.fj, align 8
  %i.fl = tail call i32 @nfs_wb_folio(ptr noundef %i.fk, ptr noundef %1) #15 ; 3 uses
  %.val.i.i.i63 = load ptr, ptr %i.b, align 8
  %.val.val.i.i.i64 = load ptr, ptr %.val.i.i.i63, align 8
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_nfs_try_to_update_request_done, i64 8), i1 false) #13
          to label %trace_nfs_try_to_update_request_done.exit59.i.i.i [label %arch_test_bit.exit.i.i55.i.i.i], !srcloc !22

arch_test_bit.exit.i.i55.i.i.i:                   ; preds = %nfs_mark_request_dirty.exit.i.i.i
  %i.fm = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @cpu_number) #13, !srcloc !80
  %i.fn = zext i32 %i.fm to i64
  %i.fo = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.fn) #13, !srcloc !23 ; 2 uses
  %i.fp = icmp ult i8 %i.fo, 2
  tail call void @llvm.assume(i1 %i.fp)
  %i.fq = trunc nuw i8 %i.fo to i1
  br i1 %i.fq, label %bb.ap, label %trace_nfs_try_to_update_request_done.exit59.i.i.i

bb.ap:                                            ; preds = %arch_test_bit.exit.i.i55.i.i.i
  %i.fr = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.fr, ptr elementtype(i64) %i.fr) #13, !srcloc !24
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !srcloc !25
  %i.fs = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_nfs_try_to_update_request_done, i64 56), align 8 ; 2 uses
  %.not.i.i56.i.i.i = icmp eq ptr %i.fs, null
  br i1 %.not.i.i56.i.i.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ft = getelementptr i8, ptr %i.fs, i64 8
  %i.fu = load ptr, ptr %i.ft, align 8
  %i.fv = tail call i32 @__SCT__tp_func_nfs_try_to_update_request_done(ptr noundef %i.fu, ptr noundef %.val.val.i.i.i64, i64 noundef range(i64 0, 4294967296) %.pre-phi80, i64 noundef range(i64 0, 4294967296) %.pre-phi82, i32 noundef %i.fl) #12 ; 0 uses
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !srcloc !26
  %i.fw = getelementptr i8, ptr %i.fr, i64 8      ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.fw, ptr elementtype(i64) %i.fw) #13, !srcloc !27
  br label %trace_nfs_try_to_update_request_done.exit59.i.i.i

trace_nfs_try_to_update_request_done.exit59.i.i.i: ; preds = %bb.ar, %arch_test_bit.exit.i.i55.i.i.i, %nfs_mark_request_dirty.exit.i.i.i
  %i.fx = icmp slt i32 %i.fl, 0
  br i1 %i.fx, label %bb.as, label %nfs_try_to_update_request.exit.thread.i.i

bb.as:                                            ; preds = %trace_nfs_try_to_update_request_done.exit59.i.i.i
  %i.fy = sext i32 %i.fl to i64
  %i.fz = inttoptr i64 %i.fy to ptr
  br label %nfs_try_to_update_request.exit.i.i

nfs_try_to_update_request.exit.i.i:               ; preds = %bb.as, %bb.am, %arch_test_bit.exit.i.i50.i.i.i, %PTR_ERR_OR_ZERO.exit.i.i.i
  %.0.i.i.i54 = phi ptr [ %i.ec, %bb.am ], [ %i.fz, %bb.as ], [ %i.ec, %PTR_ERR_OR_ZERO.exit.i.i.i ], [ %i.ec, %arch_test_bit.exit.i.i50.i.i.i ] ; 2 uses
  %.not.i.i55 = icmp eq ptr %.0.i.i.i54, null
  br i1 %.not.i.i55, label %nfs_try_to_update_request.exit.thread.i.i, label %nfs_setup_write_request.exit.i

nfs_try_to_update_request.exit.thread.i.i:        ; preds = %nfs_try_to_update_request.exit.i.i, %trace_nfs_try_to_update_request_done.exit59.i.i.i
  %i.ga = tail call ptr @nfs_page_create_from_folio(ptr noundef %.val48, ptr noundef %1, i32 noundef %.0, i32 noundef %.036) #12 ; 10 uses
  %i.gb = icmp ugt ptr %i.ga, inttoptr (i64 -4096 to ptr)
  br i1 %i.gb, label %nfs_writepage_setup.exit, label %bb.at

bb.at:                                            ; preds = %nfs_try_to_update_request.exit.thread.i.i
  %i.gc = getelementptr i8, ptr %i.ga, i64 56     ; 7 uses
  %i.gd = load volatile i64, ptr %i.gc, align 8
  %i.ge = and i64 %i.gd, 4
  %.not.i.i11.i.i = icmp eq i64 %i.ge, 0
  br i1 %.not.i.i11.i.i, label %nfs_page_to_folio.exit.i.i.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.gf = getelementptr i8, ptr %i.ga, i64 16
  %i.gg = load ptr, ptr %i.gf, align 8
  br label %nfs_page_to_folio.exit.i.i.i

nfs_page_to_folio.exit.i.i.i:                     ; preds = %bb.au, %bb.at
  %.0.i.i12.i.i = phi ptr [ %i.gg, %bb.au ], [ null, %bb.at ] ; 3 uses
  %i.gh = getelementptr i8, ptr %.0.i.i12.i.i, i64 24
  %i.gi = load ptr, ptr %i.gh, align 8            ; 2 uses
  %i.gj = load ptr, ptr %i.gi, align 8
  %i.gk = getelementptr i8, ptr %i.ga, i64 72
  %i.gl = load ptr, ptr %i.gk, align 8
  %.not.i.i.i62 = icmp eq ptr %i.gl, %i.ga
  br i1 %.not.i.i.i62, label %bb.aw, label %bb.av, !prof !15

bb.av:                                            ; preds = %nfs_page_to_folio.exit.i.i.i
  tail call void asm sideeffect "1782: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1782b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1782) #13, !srcloc !81
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.3, ptr nonnull @.str, i32 714, i32 2307, i64 16) #13, !srcloc !82
  tail call void asm sideeffect "1783: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1783b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1783) #13, !srcloc !83
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %nfs_page_to_folio.exit.i.i.i
  %i.gm = tail call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock  btsq  $2, $0", "=*m,={@ccc},Ir,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.gc, i64 0, ptr elementtype(i64) %i.gc) #13, !srcloc !37 ; 0 uses
  %i.gn = getelementptr i8, ptr %i.gi, i64 116    ; 2 uses
  tail call void @_raw_spin_lock(ptr noundef %i.gn) #12
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %i.gc, i32 2, ptr elementtype(i8) %i.gc) #13, !srcloc !36
  %i.go = getelementptr i8, ptr %.0.i.i12.i.i, i64 1 ; 2 uses
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %i.go, i32 64, ptr elementtype(i8) %i.go) #13, !srcloc !36
  %i.gp = getelementptr i8, ptr %.0.i.i12.i.i, i64 40
  store ptr %i.ga, ptr %i.gp, align 8
  tail call void @_raw_spin_unlock(ptr noundef %i.gn) #12
  %i.gq = getelementptr i8, ptr %i.gj, i64 -184   ; 2 uses
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock incq $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.gq, ptr elementtype(i64) %i.gq) #13, !srcloc !34
  %i.gr = tail call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock  btsq  $2, $0", "=*m,={@ccc},Ir,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.gc, i64 5, ptr elementtype(i64) %i.gc) #13, !srcloc !37 ; 2 uses
  %i.gs = icmp ult i8 %i.gr, 2
  tail call void @llvm.assume(i1 %i.gs)
  %i.gt = trunc nuw i8 %i.gr to i1
  br i1 %i.gt, label %bb.ax, label %bb.ay, !prof !30

bb.ax:                                            ; preds = %bb.aw
  tail call void asm sideeffect "1784: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1784b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1784) #13, !srcloc !84
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.3, ptr nonnull @.str, i32 728, i32 2305, i64 16) #13, !srcloc !85
  tail call void asm sideeffect "1785: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1785b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1785) #13, !srcloc !86
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.gu = getelementptr i8, ptr %i.ga, i64 52     ; 3 uses
  %i.gv = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.gu, i32 1, ptr elementtype(i32) %i.gu) #13, !srcloc !29 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.gv, 0
  br i1 %.not.i.i.i.i.i.i.i, label %.sink.split.i.i.i.i.i.i.i, label %bb.az, !prof !30

bb.az:                                            ; preds = %bb.ay
  %i.gw = add i32 %i.gv, 1
  %i.gx = or i32 %i.gw, %i.gv
  %.not10.i.i.i.i.i.i.i = icmp sgt i32 %i.gx, -1
  br i1 %.not10.i.i.i.i.i.i.i, label %nfs_setup_write_request.exit.i, label %.sink.split.i.i.i.i.i.i.i, !prof !15

.sink.split.i.i.i.i.i.i.i:                        ; preds = %bb.az, %bb.ay
  %.sink.i.i.i.i.i.i.i = phi i32 [ 2, %bb.ay ], [ 1, %bb.az ]
  tail call void @refcount_warn_saturate(ptr noundef %i.gu, i32 noundef %.sink.i.i.i.i.i.i.i) #12
  br label %nfs_setup_write_request.exit.i

nfs_setup_write_request.exit.i:                   ; preds = %.sink.split.i.i.i.i.i.i.i, %bb.az, %nfs_try_to_update_request.exit.i.i
  %.0.i.i56 = phi ptr [ %.0.i.i.i54, %nfs_try_to_update_request.exit.i.i ], [ %i.ga, %.sink.split.i.i.i.i.i.i.i ], [ %i.ga, %bb.az ] ; 10 uses
  %i.gy = icmp ugt ptr %.0.i.i56, inttoptr (i64 -4096 to ptr)
  br i1 %i.gy, label %nfs_writepage_setup.exit, label %bb.ba

bb.ba:                                            ; preds = %nfs_setup_write_request.exit.i
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_nfs_writepage_setup, i64 8), i1 false) #13
          to label %trace_nfs_writepage_setup.exit.i [label %arch_test_bit.exit.i.i.i], !srcloc !22

arch_test_bit.exit.i.i.i:                         ; preds = %bb.ba
  %i.gz = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @cpu_number) #13, !srcloc !87
  %i.ha = zext i32 %i.gz to i64
  %i.hb = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.ha) #13, !srcloc !23 ; 2 uses
  %i.hc = icmp ult i8 %i.hb, 2
  tail call void @llvm.assume(i1 %i.hc)
  %i.hd = trunc nuw i8 %i.hb to i1
  br i1 %i.hd, label %bb.bb, label %trace_nfs_writepage_setup.exit.i

bb.bb:                                            ; preds = %arch_test_bit.exit.i.i.i
  %i.he = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.he, ptr elementtype(i64) %i.he) #13, !srcloc !24
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !srcloc !25
  %i.hf = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_nfs_writepage_setup, i64 56), align 8 ; 2 uses
  %.not.i.i13.i = icmp eq ptr %i.hf, null
  br i1 %.not.i.i13.i, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.hg = getelementptr i8, ptr %i.hf, i64 8
  %i.hh = load ptr, ptr %i.hg, align 8
  %i.hi = tail call i32 @__SCT__tp_func_nfs_writepage_setup(ptr noundef %i.hh, ptr noundef %.0.i.i56) #12 ; 0 uses
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !srcloc !26
  %i.hj = getelementptr i8, ptr %i.he, i64 8      ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.hj, ptr elementtype(i64) %i.hj) #13, !srcloc !27
  br label %trace_nfs_writepage_setup.exit.i

trace_nfs_writepage_setup.exit.i:                 ; preds = %bb.bd, %arch_test_bit.exit.i.i.i, %bb.ba
  %i.hk = load ptr, ptr %i.b, align 8
  %i.hl = load ptr, ptr %i.hk, align 8            ; 6 uses
  %i.hm = getelementptr i8, ptr %i.hl, i64 128    ; 2 uses
  tail call void @_raw_spin_lock(ptr noundef %i.hm) #12
  %i.hn = getelementptr i8, ptr %i.hl, i64 80     ; 2 uses
  %i.ho = load volatile i64, ptr %i.hn, align 8   ; 3 uses
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !srcloc !44
  %i.hp = load volatile i64, ptr %1, align 8
  %i.hq = and i64 %i.hp, 64
  %.not.i.i.i14.i = icmp eq i64 %i.hq, 0
  br i1 %.not.i.i.i14.i, label %folio_shift.exit.i.i, label %bb.be

bb.be:                                            ; preds = %trace_nfs_writepage_setup.exit.i
  %i.hr = getelementptr i8, ptr %1, i64 64
  %.val.i.i.i.i = load i64, ptr %i.hr, align 16
  %i.hs = and i64 %.val.i.i.i.i, 255
  %i.ht = add nuw nsw i64 %i.hs, 12
  br label %folio_shift.exit.i.i

folio_shift.exit.i.i:                             ; preds = %bb.be, %trace_nfs_writepage_setup.exit.i
  %.0.i.i.i15.i = phi i64 [ %i.ht, %bb.be ], [ 12, %trace_nfs_writepage_setup.exit.i ]
  %i.hu = load volatile i64, ptr %1, align 8
  %i.hv = and i64 %i.hu, 64
  %.not.i.i16.i = icmp eq i64 %i.hv, 0
  br i1 %.not.i.i16.i, label %folio_order.exit.i.i, label %bb.bf

bb.bf:                                            ; preds = %folio_shift.exit.i.i
  %i.hw = getelementptr i8, ptr %1, i64 64
  %.val.i.i17.i = load i64, ptr %i.hw, align 16
  %i.hx = and i64 %.val.i.i17.i, 255
  br label %folio_order.exit.i.i

folio_order.exit.i.i:                             ; preds = %bb.bf, %folio_shift.exit.i.i
  %.0.i.i18.i = phi i64 [ %i.hx, %bb.bf ], [ 0, %folio_shift.exit.i.i ]
  %i.hy = icmp sgt i64 %i.ho, 0
  br i1 %i.hy, label %bb.bg, label %folio_order.exit._crit_edge.i.i

folio_order.exit._crit_edge.i.i:                  ; preds = %folio_order.exit.i.i
  %.phi.trans.insert.i.i = getelementptr i8, ptr %1, i64 32
  %.val22.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 16
  br label %bb.bh

bb.bg:                                            ; preds = %folio_order.exit.i.i
  %i.hz = add nsw i64 %i.ho, -1
  %i.ia = lshr i64 %i.hz, %.0.i.i.i15.i
  %i.ib = shl i64 %i.ia, %.0.i.i18.i
  %i.ic = getelementptr i8, ptr %1, i64 32
  %i.id = load i64, ptr %i.ic, align 16           ; 2 uses
  %i.ie = icmp ult i64 %i.id, %i.ib
  br i1 %i.ie, label %nfs_grow_file.exit.i, label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %folio_order.exit._crit_edge.i.i
  %.val22.i.i = phi i64 [ %.val22.pre.i.i, %folio_order.exit._crit_edge.i.i ], [ %i.id, %bb.bg ]
  %i.if = shl i64 %.val22.i.i, 12
  %i.ig = add nuw nsw i64 %.pre-phi80, %.pre-phi82
  %i.ih = add i64 %i.ig, %i.if                    ; 3 uses
  %.not.i19.i = icmp slt i64 %i.ho, %i.ih
  br i1 %.not.i19.i, label %bb.bi, label %nfs_grow_file.exit.i

bb.bi:                                            ; preds = %bb.bh
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_nfs_size_grow, i64 8), i1 false) #13
          to label %trace_nfs_size_grow.exit.i.i [label %arch_test_bit.exit.i.i.i.i], !srcloc !22

arch_test_bit.exit.i.i.i.i:                       ; preds = %bb.bi
  %i.ii = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @cpu_number) #13, !srcloc !88
  %i.ij = zext i32 %i.ii to i64
  %i.ik = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.ij) #13, !srcloc !23 ; 2 uses
  %i.il = icmp ult i8 %i.ik, 2
  tail call void @llvm.assume(i1 %i.il)
  %i.im = trunc nuw i8 %i.ik to i1
  br i1 %i.im, label %bb.bj, label %trace_nfs_size_grow.exit.i.i

bb.bj:                                            ; preds = %arch_test_bit.exit.i.i.i.i
  %i.in = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.in, ptr elementtype(i64) %i.in) #13, !srcloc !24
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !srcloc !25
  %i.io = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_nfs_size_grow, i64 56), align 8 ; 2 uses
  %.not.i.i23.i.i = icmp eq ptr %i.io, null
  br i1 %.not.i.i23.i.i, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.ip = getelementptr i8, ptr %i.io, i64 8
  %i.iq = load ptr, ptr %i.ip, align 8
  %i.ir = tail call i32 @__SCT__tp_func_nfs_size_grow(ptr noundef %i.iq, ptr noundef %i.hl, i64 noundef %i.ih) #12 ; 0 uses
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !srcloc !26
  %i.is = getelementptr i8, ptr %i.in, i64 8      ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.is, ptr elementtype(i64) %i.is) #13, !srcloc !27
  br label %trace_nfs_size_grow.exit.i.i

trace_nfs_size_grow.exit.i.i:                     ; preds = %bb.bl, %arch_test_bit.exit.i.i.i.i, %bb.bi
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !srcloc !89
  store volatile i64 %i.ih, ptr %i.hn, align 8
  %i.it = getelementptr i8, ptr %i.hl, i64 -280   ; 2 uses
  %i.iu = load i64, ptr %i.it, align 8
  %i.iv = and i64 %i.iu, -2049
  store i64 %i.iv, ptr %i.it, align 8
  %i.iw = getelementptr i8, ptr %i.hl, i64 40
  %.val.i.i59 = load ptr, ptr %i.iw, align 8
  %i.ix = getelementptr i8, ptr %.val.i.i59, i64 864
  %.val.val.i.i60 = load ptr, ptr %i.ix, align 32
  %i.iy = getelementptr i8, ptr %.val.val.i.i60, i64 64
  %.val.val.val.i.i61 = load ptr, ptr %i.iy, align 8
  %i.iz = getelementptr i8, ptr %.val.val.val.i.i61, i64 224 ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.iz, ptr elementtype(i64) %i.iz) #13, !srcloc !28
  br label %nfs_grow_file.exit.i

nfs_grow_file.exit.i:                             ; preds = %trace_nfs_size_grow.exit.i.i, %bb.bh, %bb.bg
  tail call void @nfs_update_delegated_mtime_locked(ptr noundef %i.hl) #12
  tail call void @_raw_spin_unlock(ptr noundef %i.hm) #12
  %i.ja = getelementptr i8, ptr %.0.i.i56, i64 56 ; 3 uses
  %i.jb = load volatile i64, ptr %i.ja, align 8
  %i.jc = and i64 %i.jb, 4
  %.not.i.i21.i57 = icmp eq i64 %i.jc, 0
  br i1 %.not.i.i21.i57, label %nfs_page_to_folio.exit.i.i, label %bb.bm

bb.bm:                                            ; preds = %nfs_grow_file.exit.i
  %i.jd = getelementptr i8, ptr %.0.i.i56, i64 16
  %i.je = load ptr, ptr %i.jd, align 8
  br label %nfs_page_to_folio.exit.i.i

nfs_page_to_folio.exit.i.i:                       ; preds = %bb.bm, %nfs_grow_file.exit.i
  %.0.i.i22.i = phi ptr [ %i.je, %bb.bm ], [ null, %nfs_grow_file.exit.i ] ; 3 uses
  %i.jf = load volatile i64, ptr %.0.i.i22.i, align 8
  %i.jg = and i64 %i.jf, 8
  %.not.i23.i = icmp eq i64 %i.jg, 0
  br i1 %.not.i23.i, label %folio_test_uptodate.exit.i.i, label %folio_test_uptodate.exit.thread.i.i

folio_test_uptodate.exit.thread.i.i:              ; preds = %nfs_page_to_folio.exit.i.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !srcloc !77
  br label %nfs_mark_uptodate.exit.i

folio_test_uptodate.exit.i.i:                     ; preds = %nfs_page_to_folio.exit.i.i
  %i.jh = load volatile i64, ptr %i.ja, align 8
  %i.ji = and i64 %i.jh, 4
  %.not.i.i.i25.i = icmp eq i64 %i.ji, 0
  br i1 %.not.i.i.i25.i, label %nfs_page_to_folio.exit.i.i26.i, label %bb.bn

bb.bn:                                            ; preds = %folio_test_uptodate.exit.i.i
  %i.jj = getelementptr i8, ptr %.0.i.i56, i64 16
  %i.jk = load ptr, ptr %i.jj, align 8
  br label %nfs_page_to_folio.exit.i.i26.i

nfs_page_to_folio.exit.i.i26.i:                   ; preds = %bb.bn, %folio_test_uptodate.exit.i.i
  %.0.i.i.i27.i = phi ptr [ %i.jk, %bb.bn ], [ null, %folio_test_uptodate.exit.i.i ] ; 10 uses
  %i.jl = getelementptr i8, ptr %.0.i.i.i27.i, i64 24
  %i.jm = load ptr, ptr %i.jl, align 8
  %i.jn = load ptr, ptr %i.jm, align 8
  %i.jo = getelementptr i8, ptr %i.jn, i64 80
  %i.jp = load volatile i64, ptr %i.jo, align 8   ; 2 uses
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !srcloc !44
  %i.jq = icmp sgt i64 %i.jp, 0
  br i1 %i.jq, label %bb.bo, label %nfs_folio_length.exit.i.i.i

bb.bo:                                            ; preds = %nfs_page_to_folio.exit.i.i26.i
  %i.jr = getelementptr i8, ptr %.0.i.i.i27.i, i64 32
  %i.js = load i64, ptr %i.jr, align 16
  %i.jt = load volatile i64, ptr %.0.i.i.i27.i, align 16
  %i.ju = and i64 %i.jt, 64
  %.not.i.i.i.i28.i = icmp eq i64 %i.ju, 0
  br i1 %.not.i.i.i.i28.i, label %folio_order.exit.i.i.i.i, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.jv = getelementptr i8, ptr %.0.i.i.i27.i, i64 64
  %.val.i.i.i.i.i = load i64, ptr %i.jv, align 16
  %i.jw = and i64 %.val.i.i.i.i.i, 255
  br label %folio_order.exit.i.i.i.i

folio_order.exit.i.i.i.i:                         ; preds = %bb.bp, %bb.bo
  %.0.i.i.i.i.i = phi i64 [ %i.jw, %bb.bp ], [ 0, %bb.bo ]
  %i.jx = lshr i64 %i.js, %.0.i.i.i.i.i           ; 2 uses
  %i.jy = add nsw i64 %i.jp, -1                   ; 2 uses
  %i.jz = load volatile i64, ptr %.0.i.i.i27.i, align 16
  %i.ka = and i64 %i.jz, 64
  %.not.i.i.i.i.i.i = icmp eq i64 %i.ka, 0
  br i1 %.not.i.i.i.i.i.i, label %folio_shift.exit.i.i.i.i, label %bb.bq

bb.bq:                                            ; preds = %folio_order.exit.i.i.i.i
  %i.kb = getelementptr i8, ptr %.0.i.i.i27.i, i64 64
  %.val.i.i.i.i.i.i = load i64, ptr %i.kb, align 16
  %i.kc = and i64 %.val.i.i.i.i.i.i, 255
  %i.kd = add nuw nsw i64 %i.kc, 12
  br label %folio_shift.exit.i.i.i.i

folio_shift.exit.i.i.i.i:                         ; preds = %bb.bq, %folio_order.exit.i.i.i.i
  %.0.i.i.i.i.i.i = phi i64 [ %i.kd, %bb.bq ], [ 12, %folio_order.exit.i.i.i.i ]
  %i.ke = lshr i64 %i.jy, %.0.i.i.i.i.i.i         ; 2 uses
  %i.kf = icmp ult i64 %i.jx, %i.ke
  br i1 %i.kf, label %bb.br, label %bb.bt

bb.br:                                            ; preds = %folio_shift.exit.i.i.i.i
  %i.kg = load volatile i64, ptr %.0.i.i.i27.i, align 16
  %i.kh = and i64 %i.kg, 64
  %.not.i.i18.i.i.i.i = icmp eq i64 %i.kh, 0
  br i1 %.not.i.i18.i.i.i.i, label %folio_size.exit.i.i.i.i, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.ki = getelementptr i8, ptr %.0.i.i.i27.i, i64 64
  %.val.i.i19.i.i.i.i = load i64, ptr %i.ki, align 16
  %i.kj = and i64 %.val.i.i19.i.i.i.i, 255
  br label %folio_size.exit.i.i.i.i

folio_size.exit.i.i.i.i:                          ; preds = %bb.bs, %bb.br
  %.0.i.i20.i.i.i.i = phi i64 [ %i.kj, %bb.bs ], [ 0, %bb.br ]
  %i.kk = shl i64 4096, %.0.i.i20.i.i.i.i
  br label %nfs_folio_length.exit.i.i.i

bb.bt:                                            ; preds = %folio_shift.exit.i.i.i.i
  %i.kl = icmp eq i64 %i.jx, %i.ke
  br i1 %i.kl, label %bb.bu, label %nfs_folio_length.exit.i.i.i

bb.bu:                                            ; preds = %bb.bt
  %i.km = load volatile i64, ptr %.0.i.i.i27.i, align 16
  %i.kn = and i64 %i.km, 64
  %.not.i.i21.i.i.i.i = icmp eq i64 %i.kn, 0
  br i1 %.not.i.i21.i.i.i.i, label %folio_size.exit24.i.i.i.i, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.ko = getelementptr i8, ptr %.0.i.i.i27.i, i64 64
  %.val.i.i22.i.i.i.i = load i64, ptr %i.ko, align 16
  %i.kp = and i64 %.val.i.i22.i.i.i.i, 255
  br label %folio_size.exit24.i.i.i.i

folio_size.exit24.i.i.i.i:                        ; preds = %bb.bv, %bb.bu
  %.0.i.i23.i.i.i.i = phi i64 [ %i.kp, %bb.bv ], [ 0, %bb.bu ]
  %i.kq = shl i64 4096, %.0.i.i23.i.i.i.i
  %i.kr = add i64 %i.kq, -1
  %i.ks = and i64 %i.kr, %i.jy
  %i.kt = add nuw nsw i64 %i.ks, 1
  br label %nfs_folio_length.exit.i.i.i

nfs_folio_length.exit.i.i.i:                      ; preds = %folio_size.exit24.i.i.i.i, %bb.bt, %folio_size.exit.i.i.i.i, %nfs_page_to_folio.exit.i.i26.i
  %.1.i.i.i.i = phi i64 [ 0, %nfs_page_to_folio.exit.i.i26.i ], [ 0, %bb.bt ], [ %i.kt, %folio_size.exit24.i.i.i.i ], [ %i.kk, %folio_size.exit.i.i.i.i ]
  %i.ku = getelementptr i8, ptr %.0.i.i56, i64 44
  %i.kv = load i32, ptr %i.ku, align 4
  %i.kw = icmp eq i32 %i.kv, 0
  br i1 %i.kw, label %nfs_page_group_covers_page.exit.i.i, label %nfs_mark_uptodate.exit.i

nfs_page_group_covers_page.exit.i.i:              ; preds = %nfs_folio_length.exit.i.i.i
  %i.kx = trunc i64 %.1.i.i.i.i to i32
  %i.ky = getelementptr i8, ptr %.0.i.i56, i64 48
  %i.kz = load i32, ptr %i.ky, align 8
  %i.la = icmp eq i32 %i.kz, %i.kx
  br i1 %i.la, label %bb.bw, label %nfs_mark_uptodate.exit.i

bb.bw:                                            ; preds = %nfs_page_group_covers_page.exit.i.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !srcloc !90
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %.0.i.i22.i, i32 8, ptr elementtype(i8) %.0.i.i22.i) #13, !srcloc !36
  br label %nfs_mark_uptodate.exit.i

nfs_mark_uptodate.exit.i:                         ; preds = %folio_test_uptodate.exit.thread.i.i, %nfs_folio_length.exit.i.i.i, %nfs_page_group_covers_page.exit.i.i, %bb.bw
  %i.lb = load volatile i64, ptr %i.ja, align 8
  %i.lc = and i64 %i.lb, 4
  %.not.i.i31.i = icmp eq i64 %i.lc, 0
  br i1 %.not.i.i31.i, label %nfs_writepage_setup.exit.thread, label %nfs_page_to_folio.exit.i32.i

nfs_page_to_folio.exit.i32.i:                     ; preds = %nfs_mark_uptodate.exit.i
  %i.ld = getelementptr i8, ptr %.0.i.i56, i64 16
  %i.le = load ptr, ptr %i.ld, align 8            ; 3 uses
  %.not.i33.i = icmp eq ptr %i.le, null
  br i1 %.not.i33.i, label %nfs_writepage_setup.exit.thread, label %bb.bx

bb.bx:                                            ; preds = %nfs_page_to_folio.exit.i32.i
  %i.lf = tail call ptr @folio_mapping(ptr noundef nonnull %i.le) #12
  %i.lg = tail call zeroext i1 @filemap_dirty_folio(ptr noundef %i.lf, ptr noundef nonnull %i.le) #12 ; 0 uses
  br label %nfs_writepage_setup.exit.thread

nfs_writepage_setup.exit.thread:                  ; preds = %nfs_mark_uptodate.exit.i, %nfs_page_to_folio.exit.i32.i, %bb.bx
  tail call void @nfs_unlock_and_release_request(ptr noundef %.0.i.i56) #12
  br label %trace_nfs_update_folio.exit._crit_edge

nfs_writepage_setup.exit:                         ; preds = %nfs_try_to_update_request.exit.thread.i.i, %nfs_setup_write_request.exit.i
  %.0.i36.i = phi ptr [ %.0.i.i56, %nfs_setup_write_request.exit.i ], [ %i.ga, %nfs_try_to_update_request.exit.thread.i.i ]
  %i.lh = ptrtoint ptr %.0.i36.i to i64
  %i.li = trunc i64 %i.lh to i32                  ; 3 uses
  %i.lj = icmp slt i32 %i.li, 0
  br i1 %i.lj, label %bb.by, label %trace_nfs_update_folio.exit._crit_edge

bb.by:                                            ; preds = %nfs_writepage_setup.exit
  %i.lk = load ptr, ptr %i.c, align 8             ; 3 uses
  tail call void @nfs_zap_mapping(ptr noundef %i.lk, ptr noundef %i.c) #12
  %i.ll = getelementptr i8, ptr %i.lk, i64 128    ; 2 uses
  tail call void @_raw_spin_lock(ptr noundef %i.ll) #12
  tail call void @nfs_set_cache_invalid(ptr noundef %i.lk, i64 noundef 2368) #12
  tail call void @_raw_spin_unlock(ptr noundef %i.ll) #12
  br label %trace_nfs_update_folio.exit._crit_edge

trace_nfs_update_folio.exit._crit_edge:           ; preds = %trace_nfs_update_folio.exit, %nfs_writepage_setup.exit.thread, %nfs_writepage_setup.exit, %bb.by
  %.pre-phi = phi i64 [ %.pre-phi80, %nfs_writepage_setup.exit.thread ], [ %.pre-phi80, %nfs_writepage_setup.exit ], [ %.pre-phi80, %bb.by ], [ %i.ap, %trace_nfs_update_folio.exit ]
  %.039 = phi i32 [ 0, %nfs_writepage_setup.exit.thread ], [ %i.li, %nfs_writepage_setup.exit ], [ %i.li, %bb.by ], [ 0, %trace_nfs_update_folio.exit ] ; 2 uses
  %.137 = phi i32 [ %.036, %nfs_writepage_setup.exit.thread ], [ %.036, %nfs_writepage_setup.exit ], [ %.036, %bb.by ], [ 0, %trace_nfs_update_folio.exit ]
  %i.lm = zext i32 %.137 to i64
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_nfs_update_folio_done, i64 8), i1 false) #13
          to label %trace_nfs_update_folio_done.exit [label %arch_test_bit.exit.i.i65], !srcloc !22

arch_test_bit.exit.i.i65:                         ; preds = %trace_nfs_update_folio.exit._crit_edge
  %i.ln = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @cpu_number) #13, !srcloc !91
  %i.lo = zext i32 %i.ln to i64
  %i.lp = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.lo) #13, !srcloc !23 ; 2 uses
  %i.lq = icmp ult i8 %i.lp, 2
  tail call void @llvm.assume(i1 %i.lq)
  %i.lr = trunc nuw i8 %i.lp to i1
  br i1 %i.lr, label %bb.bz, label %trace_nfs_update_folio_done.exit

bb.bz:                                            ; preds = %arch_test_bit.exit.i.i65
  %i.ls = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.ls, ptr elementtype(i64) %i.ls) #13, !srcloc !24
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !srcloc !25
  %i.lt = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_nfs_update_folio_done, i64 56), align 8 ; 2 uses
  %.not.i.i66 = icmp eq ptr %i.lt, null
  br i1 %.not.i.i66, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.lu = getelementptr i8, ptr %i.lt, i64 8
  %i.lv = load ptr, ptr %i.lu, align 8
  %i.lw = tail call i32 @__SCT__tp_func_nfs_update_folio_done(ptr noundef %i.lv, ptr noundef %i.d, i64 noundef range(i64 0, 4294967296) %.pre-phi, i64 noundef range(i64 0, 4294967296) %i.lm, i32 noundef %.039) #12 ; 0 uses
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !srcloc !26
  %i.lx = getelementptr i8, ptr %i.ls, i64 8      ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.lx, ptr elementtype(i64) %i.lx) #13, !srcloc !27
  br label %trace_nfs_update_folio_done.exit

trace_nfs_update_folio_done.exit:                 ; preds = %trace_nfs_update_folio.exit._crit_edge, %arch_test_bit.exit.i.i65, %bb.cb
  ret i32 %.039
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @nfs_pageio_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @nfs_pageio_reset_write_mds(ptr noundef %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not10 = icmp eq ptr %i.d, null
  br i1 %.not10, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void %i.d(ptr noundef %0) #12
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  store ptr @nfs_pgio_rw_ops, ptr %i.a, align 8
  tail call void @nfs_pageio_stop_mirroring(ptr noundef %0) #12
  %i.e = getelementptr i8, ptr %0, i64 80
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = load ptr, ptr %0, align 8
  %i.h = getelementptr i8, ptr %i.g, i64 40
  %.val = load ptr, ptr %i.h, align 8
  %i.i = getelementptr i8, ptr %.val, i64 864
  %.val.val = load ptr, ptr %i.i, align 32
  %i.j = getelementptr i8, ptr %.val.val, i64 136
  %i.k = load i32, ptr %i.j, align 8
  %i.l = zext i32 %i.k to i64
  %i.m = getelementptr i8, ptr %i.f, i64 32
  store i64 %i.l, ptr %i.m, align 8
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @nfs_pageio_stop_mirroring(ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @nfs_commit_prepare(ptr noundef %0, ptr noundef %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 224
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 40
  %.val = load ptr, ptr %i.c, align 8
  %i.d = getelementptr i8, ptr %.val, i64 864
  %.val.val = load ptr, ptr %i.d, align 32
  %.val.val.val = load ptr, ptr %.val.val, align 8
  %i.e = getelementptr i8, ptr %.val.val.val, i64 224
  %.val.val.val.val = load ptr, ptr %i.e, align 8
  %i.f = getelementptr i8, ptr %.val.val.val.val, i64 320
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef %0, ptr noundef %1) #12
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @nfs_writeback_update_inode(ptr noundef %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 6 uses
  %i.b = getelementptr i8, ptr %i.a, i64 40
  %.val.i = load ptr, ptr %i.b, align 8
  %i.c = getelementptr i8, ptr %.val.i, i64 864
  %.val.val.i = load ptr, ptr %i.c, align 32
  %.val.val.val.i = load ptr, ptr %.val.val.i, align 8
  %i.d = getelementptr i8, ptr %.val.val.val.i, i64 224
  %.val.val.val.val.i = load ptr, ptr %i.d, align 8
  %i.e = getelementptr i8, ptr %.val.val.val.val.i, i64 376
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call i32 %i.f(ptr noundef %i.a, i32 noundef 2, i32 noundef 2) #12, !inline_history !92
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr i8, ptr %i.a, i64 128      ; 2 uses
  tail call void @_raw_spin_lock(ptr noundef %i.h) #12
  tail call void @nfs_set_cache_invalid(ptr noundef %i.a, i64 noundef 16384) #12
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr i8, ptr %0, i64 368        ; 6 uses
  %i.j = getelementptr i8, ptr %i.a, i64 128      ; 2 uses
  tail call void @_raw_spin_lock(ptr noundef %i.j) #12
  %i.k = getelementptr i8, ptr %0, i64 680
  %i.l = load i64, ptr %i.k, align 8
  %i.m = getelementptr i8, ptr %0, i64 776
  %i.n = load i64, ptr %i.m, align 8
  %i.o = add i64 %i.n, %i.l                       ; 3 uses
  %i.p = load i64, ptr %i.i, align 8
  %i.q = and i64 %i.p, 64
  %.not.i = icmp eq i64 %i.q, 0
  %i.r = getelementptr i8, ptr %0, i64 400        ; 3 uses
  br i1 %.not.i, label %bb.d, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c
  %.pre.i = load i64, ptr %i.r, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  store i64 %i.o, ptr %i.r, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i
  %i.s = phi i64 [ %.pre.i, %._crit_edge.i ], [ %i.o, %bb.d ]
  %i.t = tail call noundef range(i64 0, -9223372036854775808) i64 @llvm.umin.i64(i64 %i.s, i64 9223372036854775807)
  %i.u = load ptr, ptr %0, align 8
  %i.v = getelementptr i8, ptr %i.u, i64 80
  %i.w = load volatile i64, ptr %i.v, align 8
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !srcloc !44
  %i.x = icmp slt i64 %i.t, %i.w
  br i1 %i.x, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.y = load i64, ptr %i.i, align 8
  %i.z = and i64 %i.y, -65
  br label %.sink.split.i

bb.g:                                             ; preds = %bb.e
  %i.aa = load i64, ptr %i.r, align 8
  %.not13.i = icmp eq i64 %i.o, %i.aa
  br i1 %.not13.i, label %bb.h, label %nfs_writeback_check_extend.exit

bb.h:                                             ; preds = %bb.g
  tail call void @nfs_fattr_set_barrier(ptr noundef %i.i) #12
  %i.ab = load i64, ptr %i.i, align 8
  %i.ac = or i64 %i.ab, 64
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.h, %bb.f
  %.sink.i = phi i64 [ %i.ac, %bb.h ], [ %i.z, %bb.f ]
  store i64 %.sink.i, ptr %i.i, align 8
  br label %nfs_writeback_check_extend.exit

nfs_writeback_check_extend.exit:                  ; preds = %bb.g, %.sink.split.i
  %i.ad = tail call i32 @nfs_post_op_update_inode_force_wcc_locked(ptr noundef %i.a, ptr noundef %i.i) #12 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %nfs_writeback_check_extend.exit, %bb.b
  %.sink = phi ptr [ %i.j, %nfs_writeback_check_extend.exit ], [ %i.h, %bb.b ]
  tail call void @_raw_spin_unlock(ptr noundef %.sink) #12
  ret void
}
end_hunk_0
