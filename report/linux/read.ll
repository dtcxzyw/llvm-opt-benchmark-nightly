Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/read?download=true
inline.NumInlined: 204
inline.NumDeleted: 89
begin_hunk_0_@nfs_pageio_reset_read_mds:bb.a

bb.c:                                             ; preds = %bb.b
  tail call void %i.d(ptr noundef %0) #8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  store ptr @nfs_pgio_rw_ops, ptr %i.a, align 8
  %i.e = getelementptr i8, ptr %0, i64 76
  %i.f = load i32, ptr %i.e, align 4
  %.not13 = icmp eq i32 %i.f, 1
  br i1 %.not13, label %bb.f, label %bb.e, !prof !10

bb.e:                                             ; preds = %bb.d
  tail call void asm sideeffect "1771: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1771b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1771) #9, !srcloc !15
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 107, i32 2307, i64 16) #9, !srcloc !16
  tail call void asm sideeffect "1772: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1772b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1772) #9, !srcloc !17
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.g = getelementptr i8, ptr %0, i64 80
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = load ptr, ptr %0, align 8
  %i.j = getelementptr i8, ptr %i.i, i64 40
  %.val = load ptr, ptr %i.j, align 8
  %i.k = getelementptr i8, ptr %.val, i64 864
  %.val.val = load ptr, ptr %i.k, align 32
  %i.l = getelementptr i8, ptr %.val.val, i64 128
  %i.m = load i32, ptr %i.l, align 8
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr i8, ptr %i.h, i64 32
  store i64 %i.n, ptr %i.o, align 8
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local zeroext i1 @nfs_read_alloc_scratch(ptr nofree noundef captures(none) %0, i64 noundef %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 800        ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %_kmalloc_noprof.exit, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "1774: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1774b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1774) #9, !srcloc !18
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 116, i32 2305, i64 16) #9, !srcloc !19
  tail call void asm sideeffect "1775: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1775b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1775) #9, !srcloc !20
  br label %_kmalloc_noprof.exit

_kmalloc_noprof.exit:                             ; preds = %bb.a, %bb.b
  %i.c = tail call noalias align 8 ptr @__kmalloc_noprof(i64 noundef %1, i32 noundef 3264) #10 ; 2 uses
  store ptr %i.c, ptr %i.a, align 8
  %i.d = icmp ne ptr %i.c, null
  ret i1 %i.d
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @nfs_async_read_error(ptr nofree noundef captures(address) %0, i32 %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = load volatile ptr, ptr %0, align 8       ; 2 uses
  %.not4 = icmp eq ptr %i.a, %0
  br i1 %.not4, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %nfs_readpage_release.exit
  %i.b = phi ptr [ %i.m, %nfs_readpage_release.exit ], [ %i.a, %bb.a ] ; 10 uses
  %i.c = load volatile ptr, ptr %i.b, align 8     ; 3 uses
  %.not.i = icmp eq ptr %i.c, %i.b
  br i1 %.not.i, label %nfs_list_remove_request.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.d = getelementptr i8, ptr %i.b, i64 8        ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr i8, ptr %i.c, i64 8
  store ptr %i.e, ptr %i.f, align 8
  store volatile ptr %i.c, ptr %i.e, align 8
  store volatile ptr %i.b, ptr %i.b, align 8
  store volatile ptr %i.b, ptr %i.d, align 8
  br label %nfs_list_remove_request.exit

nfs_list_remove_request.exit:                     ; preds = %bb.b, %.lr.ph
  %i.g = getelementptr i8, ptr %i.b, i64 56
  %i.h = load volatile i64, ptr %i.g, align 8
  %i.i = and i64 %i.h, 4
  %.not.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.i.i, label %nfs_page_to_folio.exit.i, label %bb.c

bb.c:                                             ; preds = %nfs_list_remove_request.exit
  %i.j = getelementptr i8, ptr %i.b, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  br label %nfs_page_to_folio.exit.i

nfs_page_to_folio.exit.i:                         ; preds = %bb.c, %nfs_list_remove_request.exit
  %.0.i.i = phi ptr [ %i.k, %bb.c ], [ null, %nfs_list_remove_request.exit ]
  %i.l = tail call zeroext i1 @nfs_page_group_sync_on_bit(ptr noundef %i.b, i32 noundef 8) #8
  br i1 %i.l, label %bb.d, label %nfs_readpage_release.exit

bb.d:                                             ; preds = %nfs_page_to_folio.exit.i
  tail call void @folio_unlock(ptr noundef %.0.i.i) #8
  br label %nfs_readpage_release.exit

nfs_readpage_release.exit:                        ; preds = %nfs_page_to_folio.exit.i, %bb.d
  tail call void @nfs_release_request(ptr noundef %i.b) #8
  %i.m = load volatile ptr, ptr %0, align 8       ; 2 uses
  %.not = icmp eq ptr %i.m, %0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !21

._crit_edge:                                      ; preds = %nfs_readpage_release.exit, %bb.a
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @nfs_read_completion(ptr noundef %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 136        ; 3 uses
  %i.b = load volatile i64, ptr %i.a, align 8
  %i.c = and i64 %i.b, 4
  %.not112 = icmp eq i64 %i.c, 0
  br i1 %.not112, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 16         ; 4 uses
  %i.e = load volatile ptr, ptr %i.d, align 8     ; 2 uses
  %.not119 = icmp eq ptr %i.e, %i.d
  br i1 %.not119, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.f = getelementptr i8, ptr %0, i64 132        ; 2 uses
  %i.g = getelementptr i8, ptr %0, i64 128
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %nfs_readpage_release.exit
  %i.h = phi ptr [ %i.e, %.lr.ph ], [ %i.dz, %nfs_readpage_release.exit ] ; 29 uses
  %.0120 = phi i64 [ 0, %.lr.ph ], [ %i.cg, %nfs_readpage_release.exit ] ; 3 uses
  %i.i = getelementptr i8, ptr %i.h, i64 56       ; 4 uses
  %i.j = load volatile i64, ptr %i.i, align 8
  %i.k = and i64 %i.j, 4
  %.not.i = icmp eq i64 %i.k, 0
  br i1 %.not.i, label %nfs_page_to_folio.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr i8, ptr %i.h, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  br label %nfs_page_to_folio.exit

nfs_page_to_folio.exit:                           ; preds = %bb.c, %bb.d
  %.0.i = phi ptr [ %i.m, %bb.d ], [ null, %bb.c ] ; 12 uses
  %i.n = getelementptr i8, ptr %i.h, i64 44
  %i.o = load i32, ptr %i.n, align 4              ; 3 uses
  %i.p = zext i32 %i.o to i64                     ; 3 uses
  %i.q = getelementptr i8, ptr %i.h, i64 48       ; 2 uses
  %i.r = load i32, ptr %i.q, align 8              ; 2 uses
  %i.s = add i32 %i.r, %i.o                       ; 3 uses
  %i.t = zext i32 %i.s to i64                     ; 4 uses
  %i.u = load volatile i64, ptr %i.a, align 8
  %i.v = and i64 %i.u, 2
  %.not114 = icmp eq i64 %i.v, 0
  br i1 %.not114, label %folio_zero_segment.exit, label %bb.e

bb.e:                                             ; preds = %nfs_page_to_folio.exit
  %i.w = load i32, ptr %i.f, align 4
  %i.x = zext i32 %i.w to i64                     ; 2 uses
  %i.y = icmp ugt i64 %.0120, %i.x
  br i1 %i.y, label %bb.f, label %bb.l

bb.f:                                             ; preds = %bb.e
  %i.z = load i64, ptr @vmemmap_base, align 8
  %i.aa = ptrtoint ptr %.0.i to i64
  %i.ab = sub i64 %i.aa, %i.z
  %i.ac = shl i64 %i.ab, 6
  %i.ad = load i64, ptr @page_offset_base, align 8
  %i.ae = add i64 %i.ac, %i.ad
  %i.af = inttoptr i64 %i.ae to ptr
  %i.ag = load volatile i64, ptr %.0.i, align 8
  %i.ah = and i64 %i.ag, 64
  %.not.i.i.i.i = icmp eq i64 %i.ah, 0
  br i1 %.not.i.i.i.i, label %page_size.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ai = getelementptr i8, ptr %.0.i, i64 64
  %.val.i.i.i.i = load i64, ptr %i.ai, align 16
  %i.aj = and i64 %.val.i.i.i.i, 255
  br label %page_size.exit.i.i

page_size.exit.i.i:                               ; preds = %bb.g, %bb.f
  %.0.i.i.i.i = phi i64 [ %i.aj, %bb.g ], [ 0, %bb.f ]
  %i.ak = shl i64 4096, %.0.i.i.i.i
  %i.al = icmp ult i64 %i.ak, %i.t
  br i1 %i.al, label %.critedge.i.i, label %page_size.exit32.i.i, !prof !23

page_size.exit32.i.i:                             ; preds = %page_size.exit.i.i
  %i.am = load volatile i64, ptr %.0.i, align 8   ; 0 uses
  %i.an = icmp ugt i32 %i.s, %i.o
  br i1 %i.an, label %bb.h, label %bb.i

.critedge.i.i:                                    ; preds = %page_size.exit.i.i
  tail call void asm sideeffect "476: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 476b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 476) #9, !srcloc !24
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.4, i32 374, i32 0, i64 16) #9, !srcloc !25
  unreachable

bb.h:                                             ; preds = %page_size.exit32.i.i
  %i.ao = getelementptr i8, ptr %i.af, i64 %i.p
  %i.ap = sub nuw nsw i64 %i.t, %i.p
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ao, i8 0, i64 %i.ap, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %page_size.exit32.i.i
  %i.aq = getelementptr i8, ptr %.0.i, i64 64
  br label %bb.j

bb.j:                                             ; preds = %compound_nr.exit.i.i, %bb.i
  %.0.i.i = phi i32 [ 0, %bb.i ], [ %i.ax, %compound_nr.exit.i.i ] ; 2 uses
  %i.ar = zext i32 %.0.i.i to i64
  %i.as = load volatile i64, ptr %.0.i, align 8
  %i.at = and i64 %i.as, 64
  %.not.i.i.i = icmp eq i64 %i.at, 0
  br i1 %.not.i.i.i, label %compound_nr.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.val.i.i.i = load i64, ptr %i.aq, align 16
  %i.au = and i64 %.val.i.i.i, 255
  %i.av = shl nuw i64 1, %i.au
  br label %compound_nr.exit.i.i

compound_nr.exit.i.i:                             ; preds = %bb.k, %bb.j
  %.0.i.i.i = phi i64 [ %i.av, %bb.k ], [ 1, %bb.j ]
  %i.aw = icmp ugt i64 %.0.i.i.i, %i.ar
  %i.ax = add i32 %.0.i.i, 1
  br i1 %i.aw, label %bb.j, label %folio_zero_segment.exit, !llvm.loop !26

bb.l:                                             ; preds = %bb.e
  %i.ay = sub nuw nsw i64 %i.x, %.0120            ; 2 uses
  %i.az = zext i32 %i.r to i64
  %i.ba = icmp samesign ult i64 %i.ay, %i.az
  br i1 %i.ba, label %bb.m, label %folio_zero_segment.exit

bb.m:                                             ; preds = %bb.l
  %i.bb = add nuw nsw i64 %i.ay, %i.p             ; 3 uses
  %i.bc = trunc i64 %i.bb to i32
  %i.bd = load i64, ptr @vmemmap_base, align 8
  %i.be = ptrtoint ptr %.0.i to i64
  %i.bf = sub i64 %i.be, %i.bd
  %i.bg = shl i64 %i.bf, 6
  %i.bh = load i64, ptr @page_offset_base, align 8
  %i.bi = add i64 %i.bg, %i.bh
  %i.bj = inttoptr i64 %i.bi to ptr
  %i.bk = load volatile i64, ptr %.0.i, align 8
  %i.bl = and i64 %i.bk, 64
  %.not.i.i.i.i76 = icmp eq i64 %i.bl, 0
  br i1 %.not.i.i.i.i76, label %page_size.exit.i.i78, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bm = getelementptr i8, ptr %.0.i, i64 64
  %.val.i.i.i.i77 = load i64, ptr %i.bm, align 16
  %i.bn = and i64 %.val.i.i.i.i77, 255
  br label %page_size.exit.i.i78

page_size.exit.i.i78:                             ; preds = %bb.n, %bb.m
  %.0.i.i.i.i79 = phi i64 [ %i.bn, %bb.n ], [ 0, %bb.m ]
  %i.bo = shl i64 4096, %.0.i.i.i.i79
  %i.bp = icmp ult i64 %i.bo, %i.t
  br i1 %i.bp, label %.critedge.i.i89, label %page_size.exit32.i.i81, !prof !23

page_size.exit32.i.i81:                           ; preds = %page_size.exit.i.i78
  %i.bq = load volatile i64, ptr %.0.i, align 8   ; 0 uses
  %i.br = icmp ugt i32 %i.s, %i.bc
  br i1 %i.br, label %bb.o, label %bb.p

.critedge.i.i89:                                  ; preds = %page_size.exit.i.i78
  tail call void asm sideeffect "476: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 476b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 476) #9, !srcloc !24
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.4, i32 374, i32 0, i64 16) #9, !srcloc !25
  unreachable

bb.o:                                             ; preds = %page_size.exit32.i.i81
  %i.bs = and i64 %i.bb, 4294967295
  %i.bt = getelementptr i8, ptr %i.bj, i64 %i.bs
  %i.bu = sub nsw i64 %i.t, %i.bb
  %i.bv = and i64 %i.bu, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.bt, i8 0, i64 %i.bv, i1 false)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %page_size.exit32.i.i81
  %i.bw = getelementptr i8, ptr %.0.i, i64 64
  br label %bb.q

bb.q:                                             ; preds = %compound_nr.exit.i.i86, %bb.p
  %.0.i.i82 = phi i32 [ 0, %bb.p ], [ %i.cd, %compound_nr.exit.i.i86 ] ; 2 uses
  %i.bx = zext i32 %.0.i.i82 to i64
  %i.by = load volatile i64, ptr %.0.i, align 8
  %i.bz = and i64 %i.by, 64
  %.not.i.i.i84 = icmp eq i64 %i.bz, 0
  br i1 %.not.i.i.i84, label %compound_nr.exit.i.i86, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.val.i.i.i85 = load i64, ptr %i.bw, align 16
  %i.ca = and i64 %.val.i.i.i85, 255
  %i.cb = shl nuw i64 1, %i.ca
  br label %compound_nr.exit.i.i86

compound_nr.exit.i.i86:                           ; preds = %bb.r, %bb.q
  %.0.i.i.i87 = phi i64 [ %i.cb, %bb.r ], [ 1, %bb.q ]
  %i.cc = icmp ugt i64 %.0.i.i.i87, %i.bx
  %i.cd = add i32 %.0.i.i82, 1
  br i1 %i.cc, label %bb.q, label %folio_zero_segment.exit, !llvm.loop !26

folio_zero_segment.exit:                          ; preds = %compound_nr.exit.i.i86, %compound_nr.exit.i.i, %bb.l, %nfs_page_to_folio.exit
  %i.ce = load i32, ptr %i.q, align 8
  %i.cf = zext i32 %i.ce to i64
  %i.cg = add i64 %.0120, %i.cf                   ; 2 uses
  %i.ch = load volatile i64, ptr %i.a, align 8
  %i.ci = and i64 %i.ch, 1
  %.not116 = icmp eq i64 %i.ci, 0
  br i1 %.not116, label %bb.z, label %bb.s

bb.s:                                             ; preds = %folio_zero_segment.exit
  %i.cj = load i32, ptr %i.f, align 4
  %i.ck = zext i32 %i.cj to i64
  %.not74 = icmp ugt i64 %i.cg, %i.ck
  %i.cl = tail call i32 @nfs_page_group_lock(ptr noundef %i.h) #8 ; 0 uses
  %i.cm = getelementptr i8, ptr %i.h, i64 80
  %i.cn = load ptr, ptr %i.cm, align 8            ; 2 uses
  br i1 %.not74, label %bb.x, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.co = getelementptr i8, ptr %i.cn, i64 56
  %i.cp = load volatile i64, ptr %i.co, align 8
  %i.cq = and i64 %i.cp, 1024
  %.not10.i92 = icmp eq i64 %i.cq, 0
  br i1 %.not10.i92, label %bb.u, label %.critedge.i

bb.u:                                             ; preds = %bb.t
  %i.cr = tail call zeroext i1 @nfs_page_group_sync_on_bit_locked(ptr noundef %i.h, i32 noundef 9) #8
  tail call void @nfs_page_group_unlock(ptr noundef %i.h) #8
  br i1 %i.cr, label %bb.v, label %nfs_page_group_set_uptodate.exit

bb.v:                                             ; preds = %bb.u
  %i.cs = load volatile i64, ptr %i.i, align 8
  %i.ct = and i64 %i.cs, 4
  %.not.i.i = icmp eq i64 %i.ct, 0
  br i1 %.not.i.i, label %nfs_page_to_folio.exit.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cu = getelementptr i8, ptr %i.h, i64 16
  %i.cv = load ptr, ptr %i.cu, align 8
  br label %nfs_page_to_folio.exit.i

nfs_page_to_folio.exit.i:                         ; preds = %bb.w, %bb.v
  %.0.i.i93 = phi ptr [ %i.cv, %bb.w ], [ null, %bb.v ] ; 2 uses
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !srcloc !27
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %.0.i.i93, i32 8, ptr elementtype(i8) %.0.i.i93) #9, !srcloc !28
  br label %nfs_page_group_set_uptodate.exit

.critedge.i:                                      ; preds = %bb.t
  tail call void @nfs_page_group_unlock(ptr noundef %i.h) #8
  br label %nfs_page_group_set_uptodate.exit

bb.x:                                             ; preds = %bb.s
  %i.cw = getelementptr i8, ptr %i.cn, i64 57     ; 2 uses
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %i.cw, i32 4, ptr elementtype(i8) %i.cw) #9, !srcloc !28
  br label %bb.y

bb.y:                                             ; preds = %bb.y, %bb.x
  %.0.i95 = phi ptr [ %i.h, %bb.x ], [ %i.cz, %bb.y ] ; 2 uses
  %i.cx = getelementptr i8, ptr %.0.i95, i64 57   ; 2 uses
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock andb ${1:b},$0", "=*m,iq,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %i.cx, i32 -3, ptr elementtype(i8) %i.cx) #9, !srcloc !29
  %i.cy = getelementptr i8, ptr %.0.i95, i64 72
  %i.cz = load ptr, ptr %i.cy, align 8            ; 2 uses
  %.not.i96 = icmp eq ptr %i.cz, %i.h
  br i1 %.not.i96, label %nfs_page_group_mark_read_failed.exit, label %bb.y, !llvm.loop !30

nfs_page_group_mark_read_failed.exit:             ; preds = %bb.y
  tail call void @nfs_page_group_unlock(ptr noundef %i.h) #8
  %i.da = load i32, ptr %i.g, align 8
  %i.db = getelementptr i8, ptr %i.h, i64 24
  %.val = load ptr, ptr %i.db, align 8
  %i.dc = getelementptr i8, ptr %.val, i64 24
  %.val.val = load ptr, ptr %i.dc, align 8
  %i.dd = getelementptr i8, ptr %.val.val, i64 108 ; 2 uses
  %i.de = tail call i32 asm sideeffect "xchgl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.dd, i32 %i.da, ptr elementtype(i32) %i.dd) #9, !srcloc !31 ; 0 uses
  br label %nfs_page_group_set_uptodate.exit

bb.z:                                             ; preds = %folio_zero_segment.exit
  %i.df = tail call i32 @nfs_page_group_lock(ptr noundef %i.h) #8 ; 0 uses
  %i.dg = getelementptr i8, ptr %i.h, i64 80
  %i.dh = load ptr, ptr %i.dg, align 8
  %i.di = getelementptr i8, ptr %i.dh, i64 56
  %i.dj = load volatile i64, ptr %i.di, align 8
  %i.dk = and i64 %i.dj, 1024
  %.not10.i97 = icmp eq i64 %i.dk, 0
  br i1 %.not10.i97, label %bb.aa, label %.critedge.i98

bb.aa:                                            ; preds = %bb.z
  %i.dl = tail call zeroext i1 @nfs_page_group_sync_on_bit_locked(ptr noundef %i.h, i32 noundef 9) #8
  tail call void @nfs_page_group_unlock(ptr noundef %i.h) #8
  br i1 %i.dl, label %bb.ab, label %nfs_page_group_set_uptodate.exit

bb.ab:                                            ; preds = %bb.aa
  %i.dm = load volatile i64, ptr %i.i, align 8
  %i.dn = and i64 %i.dm, 4
  %.not.i.i100 = icmp eq i64 %i.dn, 0
  br i1 %.not.i.i100, label %nfs_page_to_folio.exit.i101, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.do = getelementptr i8, ptr %i.h, i64 16
end_hunk_0
