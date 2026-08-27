Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/intel_cx0_phy?download=true
inline.NumInlined: 363
inline.NumDeleted: 80
loop-unroll.NumCompletelyUnrolled: 35
loop-unroll.NumUnrolled: 35
begin_hunk_0_@intel_c10_msgbus_access_commit:bb.a

.split:                                           ; preds = %intel_encoder_is_c10phy.exit.thread
  br i1 %.not.i7, label %__intel_cx0_rmw.exit.i9, label %bb.k

bb.k:                                             ; preds = %.split
  %i.v = tail call fastcc zeroext i8 @__intel_cx0_read(ptr noundef %0, i32 noundef range(i32 0, 2) 0, i16 noundef zeroext 3184) #13, !srcloc !31 ; 2 uses
  %i.w = or i8 %i.v, 3                            ; 2 uses
  %.not.i.i8 = icmp eq i8 %i.w, %i.v
  br i1 %.not.i.i8, label %__intel_cx0_rmw.exit.i9, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call fastcc void @__intel_cx0_write(ptr noundef %0, i32 noundef range(i32 0, 2) 0, i16 noundef zeroext 3184, i8 noundef zeroext %i.w, i1 noundef zeroext true) #13, !srcloc !32
  br label %__intel_cx0_rmw.exit.i9

__intel_cx0_rmw.exit.i9:                          ; preds = %bb.l, %bb.k, %.split
  %.not.1.i10 = icmp samesign ult i8 %1, 2
  br i1 %.not.1.i10, label %intel_cx0_rmw.exit, label %bb.m

bb.m:                                             ; preds = %__intel_cx0_rmw.exit.i9
  %i.x = tail call fastcc zeroext i8 @__intel_cx0_read(ptr noundef %0, i32 noundef range(i32 0, 2) 1, i16 noundef zeroext 3184) #13, !srcloc !31 ; 2 uses
  %i.y = or i8 %i.x, 3                            ; 2 uses
  %.not.i.1.i11 = icmp eq i8 %i.y, %i.x
  br i1 %.not.i.1.i11, label %intel_cx0_rmw.exit, label %intel_cx0_rmw.exit.sink.split

intel_cx0_rmw.exit.sink.split:                    ; preds = %bb.m, %bb.j
  %.sink = phi i8 [ %i.u, %bb.j ], [ %i.y, %bb.m ]
  tail call fastcc void @__intel_cx0_write(ptr noundef %0, i32 noundef range(i32 0, 2) 1, i16 noundef zeroext 3184, i8 noundef zeroext %.sink, i1 noundef zeroext true) #13
  br label %intel_cx0_rmw.exit

intel_cx0_rmw.exit:                               ; preds = %intel_cx0_rmw.exit.sink.split, %bb.g, %bb.f, %bb.m, %__intel_cx0_rmw.exit.i9, %bb.j, %__intel_cx0_rmw.exit.i, %.split16, %intel_encoder_is_c10phy.exit
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 0, 256) i32 @intel_readout_lane_count(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__drm_to_display(ptr noundef nonnull %i.a) #11
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi ptr [ %i.b, %bb.b ], [ null, %bb.a ] ; 10 uses
  %i.d = getelementptr i8, ptr %i.c, i64 1168
  %i.e = load i16, ptr %i.d, align 8
  %i.f = icmp ugt i16 %i.e, 19
  %i.g = getelementptr i8, ptr %0, i64 156
  %i.h = load i32, ptr %i.g, align 4              ; 7 uses
  br i1 %i.f, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.i = icmp slt i32 %i.h, -4
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.j = shl i32 %i.h, 8
  %i.k = add i32 %i.j, 411396
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.l = icmp slt i32 %i.h, 3
  %i.m = shl i32 %i.h, 9
  %i.n = select i1 %i.l, i32 1505792, i32 1502208
  %i.o = add i32 %i.n, %i.m
  br label %bb.h

bb.g:                                             ; preds = %bb.c
  %i.p = icmp slt i32 %i.h, 3
  %i.q = shl i32 %i.h, 8
  %i.r = add i32 %i.q, 409604
  %i.s = shl i32 %i.h, 9
  %i.t = add i32 %i.s, 1502208
  %i.u = select i1 %i.p, i32 %i.r, i32 %i.t
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.g
  %.sroa.014.0 = phi i32 [ %i.u, %bb.g ], [ %i.k, %bb.e ], [ %i.o, %bb.f ] ; 3 uses
  tail call void @intel_dmc_wl_get(ptr noundef %i.c, i32 %.sroa.014.0) #11
  %.val.i = load ptr, ptr %i.c, align 8
  %i.v = tail call ptr @to_intel_uncore(ptr noundef %.val.i) #11 ; 2 uses
  %i.w = getelementptr i8, ptr %i.v, i64 144
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = tail call i32 %i.x(ptr noundef %i.v, i32 %.sroa.014.0, i1 noundef zeroext true) #11, !inline_history !14
  tail call void @intel_dmc_wl_put(ptr noundef %i.c, i32 %.sroa.014.0) #11
  %i.z = and i32 %i.y, 65536
  %.not64 = icmp eq i32 %i.z, 0
  br i1 %.not64, label %bb.i, label %.peel.begin

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr i8, ptr %0, i64 156       ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4
  %i.ac = shl i32 %i.ab, 8
  %i.ad = add i32 %i.ac, 409600                   ; 3 uses
  tail call void @intel_dmc_wl_get(ptr noundef %i.c, i32 %i.ad) #11
  %.val.i66 = load ptr, ptr %i.c, align 8
  %i.ae = tail call ptr @to_intel_uncore(ptr noundef %.val.i66) #11 ; 2 uses
  %i.af = getelementptr i8, ptr %i.ae, i64 144
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = tail call i32 %i.ag(ptr noundef %i.ae, i32 %i.ad, i1 noundef zeroext true) #11, !inline_history !14
  tail call void @intel_dmc_wl_put(ptr noundef %i.c, i32 %i.ad) #11
  %i.ai = and i32 %i.ah, 14
  %i.aj = icmp eq i32 %i.ai, 8
  br i1 %i.aj, label %.peel.begin, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ak = load i32, ptr %i.aa, align 4
  %i.al = shl i32 %i.ak, 8
  %i.am = add i32 %i.al, 409600                   ; 3 uses
  tail call void @intel_dmc_wl_get(ptr noundef %i.c, i32 %i.am) #11
  %.val.i67 = load ptr, ptr %i.c, align 8
  %i.an = tail call ptr @to_intel_uncore(ptr noundef %.val.i67) #11 ; 2 uses
  %i.ao = getelementptr i8, ptr %i.an, i64 144
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = tail call i32 %i.ap(ptr noundef %i.an, i32 %i.am, i1 noundef zeroext true) #11, !inline_history !14
  tail call void @intel_dmc_wl_put(ptr noundef %i.c, i32 %i.am) #11
  %i.ar = lshr i32 %i.aq, 1
  %i.as = and i32 %i.ar, 6
  %i.at = add nuw nsw i32 %i.as, 2
  br label %.peel.begin

.peel.begin:                                      ; preds = %bb.h, %bb.i, %bb.j
  %.052 = phi i32 [ 4, %bb.h ], [ %i.at, %bb.j ], [ 4, %bb.i ] ; 2 uses
  %i.au = and i32 %1, 252
  %.not88 = icmp eq i32 %i.au, 0                  ; 2 uses
  br i1 %.not88, label %bb.k, label %.critedge21.i.i.peel

bb.k:                                             ; preds = %.peel.begin
  %i.av = and i32 %1, 3
  %i.aw = tail call i64 @llvm.read_register.i64(metadata !0)
  %i.ax = tail call { i32, i64 } asm "# ALT: oldinstr\0A771:\0A\09call __sw_hweight32\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 4*32+23)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09popcntl $2, $0\0A775:\0A.popsection\0A", "={ax},={rsp},{di},{rsp},~{dirflag},~{fpsr},~{flags}"(i32 range(i32 0, 256) %i.av, i64 %i.aw) #14, !srcloc !15 ; 2 uses
  %i.ay = extractvalue { i32, i64 } %i.ax, 1
  tail call void @llvm.write_register.i64(metadata !0, i64 %i.ay)
  %i.az = extractvalue { i32, i64 } %i.ax, 0
  %.not.i.i.peel = icmp eq i32 %i.az, 1
  br i1 %.not.i.i.peel, label %.critedge.i.i.peel, label %.critedge21.i.i.peel, !prof !16

.critedge.i.i.peel:                               ; preds = %bb.k
  %i.ba = and i32 %1, 3
  %i.bb = tail call i32 asm "bsrl $1,$0", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 0, 256) %i.ba, i32 -1) #14, !srcloc !20
  br label %.peel.next

.critedge21.i.i.peel:                             ; preds = %bb.k, %.peel.begin
  tail call void asm sideeffect "680: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 680b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 680) #15, !srcloc !17
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.24, ptr nonnull @.str.9, i32 58, i32 2305, i64 16) #15, !srcloc !18
  tail call void asm sideeffect "681: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 681b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 681) #15, !srcloc !19
  br label %.peel.next

.peel.next:                                       ; preds = %.critedge.i.i.peel, %.critedge21.i.i.peel
  %.0.i.i.peel = phi i32 [ 0, %.critedge21.i.i.peel ], [ %i.bb, %.critedge.i.i.peel ]
  %i.bc = tail call fastcc zeroext i8 @__intel_cx0_read(ptr noundef %0, i32 noundef %.0.i.i.peel, i16 noundef zeroext 1026) #13, !srcloc !21
  %i.bd = lshr i8 %i.bc, 6
  %i.be = and i8 %i.bd, 1
  %i.bf = xor i8 %i.be, 1
  br i1 %.not88, label %bb.l, label %.critedge21.i.i.peel75

bb.l:                                             ; preds = %.peel.next
  %i.bg = and i32 %1, 3
  %i.bh = tail call i64 @llvm.read_register.i64(metadata !0)
  %i.bi = tail call { i32, i64 } asm "# ALT: oldinstr\0A771:\0A\09call __sw_hweight32\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 4*32+23)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09popcntl $2, $0\0A775:\0A.popsection\0A", "={ax},={rsp},{di},{rsp},~{dirflag},~{fpsr},~{flags}"(i32 range(i32 0, 256) %i.bg, i64 %i.bh) #14, !srcloc !15 ; 2 uses
  %i.bj = extractvalue { i32, i64 } %i.bi, 1
  tail call void @llvm.write_register.i64(metadata !0, i64 %i.bj)
  %i.bk = extractvalue { i32, i64 } %i.bi, 0
  %.not.i.i.peel73 = icmp eq i32 %i.bk, 1
  br i1 %.not.i.i.peel73, label %.critedge.i.i.peel74, label %.critedge21.i.i.peel75, !prof !16

.critedge.i.i.peel74:                             ; preds = %bb.l
  %i.bl = and i32 %1, 3
  %i.bm = tail call i32 asm "bsrl $1,$0", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 0, 256) %i.bl, i32 -1) #14, !srcloc !20
  br label %intel_cx0_read.exit.peel76

.critedge21.i.i.peel75:                           ; preds = %bb.l, %.peel.next
  tail call void asm sideeffect "680: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 680b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 680) #15, !srcloc !17
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.24, ptr nonnull @.str.9, i32 58, i32 2305, i64 16) #15, !srcloc !18
  tail call void asm sideeffect "681: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 681b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 681) #15, !srcloc !19
  br label %intel_cx0_read.exit.peel76

intel_cx0_read.exit.peel76:                       ; preds = %.critedge21.i.i.peel75, %.critedge.i.i.peel74
  %.0.i.i.peel77 = phi i32 [ 0, %.critedge21.i.i.peel75 ], [ %i.bm, %.critedge.i.i.peel74 ]
  %i.bn = tail call fastcc zeroext i8 @__intel_cx0_read(ptr noundef %0, i32 noundef %.0.i.i.peel77, i16 noundef zeroext 1538) #13, !srcloc !21
  %i.bo = lshr i8 %i.bn, 6
  %i.bp = and i8 %i.bo, 1
  %i.bq = xor i8 %i.bp, 1
  %spec.select.peel78 = add nuw nsw i8 %i.bq, %i.bf ; 2 uses
  %exitcond.peel79.not = icmp eq i32 %.052, 2
  br i1 %exitcond.peel79.not, label %.loopexit, label %.peel.next70

.peel.next70:                                     ; preds = %intel_cx0_read.exit.peel76
  %i.br = and i32 %2, 252
  %.not89 = icmp eq i32 %i.br, 0
  %i.bs = and i32 %2, 3
  %i.bt = and i32 %2, 3
  br label %bb.m

bb.m:                                             ; preds = %.peel.next70, %intel_cx0_read.exit
  %.069 = phi i8 [ %spec.select.peel78, %.peel.next70 ], [ %spec.select, %intel_cx0_read.exit ]
  %.05468 = phi i32 [ 2, %.peel.next70 ], [ %i.cg, %intel_cx0_read.exit ] ; 2 uses
  %.054.tr = trunc i32 %.05468 to i16
  %i.bu = shl i16 %.054.tr, 9
  %i.bv = and i16 %i.bu, 512
  %i.bw = or disjoint i16 %i.bv, 1026
  br i1 %.not89, label %bb.n, label %.critedge21.i.i

bb.n:                                             ; preds = %bb.m
  %i.bx = tail call i64 @llvm.read_register.i64(metadata !0)
  %i.by = tail call { i32, i64 } asm "# ALT: oldinstr\0A771:\0A\09call __sw_hweight32\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 4*32+23)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09popcntl $2, $0\0A775:\0A.popsection\0A", "={ax},={rsp},{di},{rsp},~{dirflag},~{fpsr},~{flags}"(i32 range(i32 0, 256) %i.bs, i64 %i.bx) #14, !srcloc !15 ; 2 uses
  %i.bz = extractvalue { i32, i64 } %i.by, 1
  tail call void @llvm.write_register.i64(metadata !0, i64 %i.bz)
  %i.ca = extractvalue { i32, i64 } %i.by, 0
  %.not.i.i = icmp eq i32 %i.ca, 1
  br i1 %.not.i.i, label %.critedge.i.i, label %.critedge21.i.i, !prof !16

.critedge21.i.i:                                  ; preds = %bb.n, %bb.m
  tail call void asm sideeffect "680: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 680b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 680) #15, !srcloc !17
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.24, ptr nonnull @.str.9, i32 58, i32 2305, i64 16) #15, !srcloc !18
  tail call void asm sideeffect "681: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 681b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 681) #15, !srcloc !19
  br label %intel_cx0_read.exit

.critedge.i.i:                                    ; preds = %bb.n
  %i.cb = tail call i32 asm "bsrl $1,$0", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 0, 256) %i.bt, i32 -1) #14, !srcloc !20
  br label %intel_cx0_read.exit

intel_cx0_read.exit:                              ; preds = %.critedge21.i.i, %.critedge.i.i
  %.0.i.i = phi i32 [ 0, %.critedge21.i.i ], [ %i.cb, %.critedge.i.i ]
  %i.cc = tail call fastcc zeroext i8 @__intel_cx0_read(ptr noundef %0, i32 noundef %.0.i.i, i16 noundef zeroext %i.bw) #13, !srcloc !21
  %i.cd = lshr i8 %i.cc, 6
  %i.ce = and i8 %i.cd, 1
  %i.cf = xor i8 %i.ce, 1
  %spec.select = add i8 %i.cf, %.069              ; 2 uses
  %i.cg = add nuw nsw i32 %.05468, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.cg, %.052
  br i1 %exitcond.not, label %.loopexit, label %bb.m, !llvm.loop !41

.loopexit:                                        ; preds = %intel_cx0_read.exit, %intel_cx0_read.exit.peel76
  %spec.select.lcssa = phi i8 [ %spec.select.peel78, %intel_cx0_read.exit.peel76 ], [ %spec.select, %intel_cx0_read.exit ]
  %i.ch = zext i8 %spec.select.lcssa to i32
  ret i32 %i.ch
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -22, 1) i32 @intel_cx0pll_calc_state(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef initializes((0, 88)) %2) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(88) %2, i8 0, i64 88, i1 false)
  %i.a = load ptr, ptr %1, align 8                ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__drm_to_display(ptr noundef nonnull %i.a) #11
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = phi ptr [ %i.b, %bb.b ], [ null, %bb.a ] ; 2 uses
  %i.d = tail call i32 @intel_encoder_to_phy(ptr noundef %1) #11 ; 4 uses
  %i.e = getelementptr i8, ptr %i.c, i64 16
  %i.f = load i8, ptr %i.e, align 8               ; 2 uses
  %i.g = and i8 %i.f, 1
  %.not13.i = icmp eq i8 %i.g, 0
  br i1 %.not13.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = and i8 %i.f, 2
  %.not15.i = icmp eq i8 %i.h, 0
  br i1 %.not15.i, label %intel_encoder_is_c10phy.exit, label %.split

.split:                                           ; preds = %bb.d
  %i.i = icmp slt i32 %i.d, 2
  br i1 %i.i, label %intel_encoder_is_c10phy.exit.thread, label %intel_encoder_is_c10phy.exit.thread17

bb.e:                                             ; preds = %bb.c
  %i.j = getelementptr i8, ptr %i.c, i64 8
  %i.k = load i64, ptr %i.j, align 8              ; 2 uses
  %i.l = and i64 %i.k, 4611686018427387904
  %.not14.i = icmp eq i64 %i.l, 0
  br i1 %.not14.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.m = and i64 %i.k, 1152921504606846976
  %i.n = icmp ne i64 %i.m, 0
  %i.o = icmp slt i32 %i.d, 2
  %or.cond.i = select i1 %i.n, i1 %i.o, i1 false
  br i1 %or.cond.i, label %intel_encoder_is_c10phy.exit.thread, label %intel_encoder_is_c10phy.exit.thread17

bb.g:                                             ; preds = %bb.e
  %.old1.i = icmp slt i32 %i.d, 2
  br i1 %.old1.i, label %intel_encoder_is_c10phy.exit.thread, label %intel_encoder_is_c10phy.exit.thread17

intel_encoder_is_c10phy.exit:                     ; preds = %bb.d
  %i.p = icmp eq i32 %i.d, 0
  br i1 %i.p, label %intel_encoder_is_c10phy.exit.thread, label %intel_encoder_is_c10phy.exit.thread17

intel_encoder_is_c10phy.exit.thread:              ; preds = %bb.g, %bb.f, %.split, %intel_encoder_is_c10phy.exit
  %i.q = load ptr, ptr %1, align 8                ; 2 uses
  %.not.i8 = icmp eq ptr %i.q, null
  br i1 %.not.i8, label %bb.i, label %bb.h

bb.h:                                             ; preds = %intel_encoder_is_c10phy.exit.thread
  %i.r = tail call ptr @__drm_to_display(ptr noundef nonnull %i.q) #11
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %intel_encoder_is_c10phy.exit.thread
  %i.s = phi ptr [ %i.r, %bb.h ], [ null, %intel_encoder_is_c10phy.exit.thread ] ; 3 uses
  %i.t = getelementptr i8, ptr %0, i64 888        ; 2 uses
  %.val.i = load i32, ptr %i.t, align 8           ; 3 uses
  %i.u = and i32 %.val.i, 2432                    ; 2 uses
  %i.v = icmp ne i32 %i.u, 0                      ; 2 uses
  %.not.i.i = icmp eq i32 %i.u, 0
  br i1 %.not.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.w = and i32 %.val.i, 256
  %.not2.i.i = icmp eq i32 %i.w, 0
  %mtl_c10_edp_tables.mtl_c10_dp_tables.i.i = select i1 %.not2.i.i, ptr @mtl_c10_dp_tables, ptr @mtl_c10_edp_tables
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.x = and i32 %.val.i, 64
  %.not1.i.i = icmp eq i32 %i.x, 0
  br i1 %.not1.i.i, label %intel_c10pll_tables_get.exit.i, label %bb.l

intel_c10pll_tables_get.exit.i:                   ; preds = %bb.k
  %i.y = getelementptr i8, ptr %1, i64 152
  %i.z = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.17, ptr nonnull @.str.9, i32 1980, i32 2321, i64 16) #15, !srcloc !43
  %i.aa = load i32, ptr %i.y, align 8
  %i.ab = zext i32 %i.aa to i64
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.z, ptr noundef nonnull @.str.33, i64 noundef %i.ab) #11
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !44
  br label %intel_c10pll_calc_state.exit

bb.l:                                             ; preds = %bb.k, %bb.j
  %.0.i.ph.i = phi ptr [ @mtl_c10_hdmi_tables, %bb.k ], [ %mtl_c10_edp_tables.mtl_c10_dp_tables.i.i, %bb.j ]
  %i.ac = getelementptr i8, ptr %0, i64 1320      ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 8
  %i.ae = getelementptr i8, ptr %0, i64 1329      ; 2 uses
  %i.af = load i8, ptr %i.ae, align 1
  %i.ag = zext i8 %i.af to i32
  %i.ah = tail call fastcc i32 @intel_c10pll_calc_state_from_table(ptr noundef readonly %1, ptr noundef nonnull %.0.i.ph.i, i1 noundef zeroext %i.v, i32 noundef %i.ad, i32 noundef %i.ag, ptr noundef %2) #13, !srcloc !45 ; 2 uses
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %intel_c10pll_calc_state.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.val38.i = load i32, ptr %i.t, align 8
  %i.aj = and i32 %.val38.i, 64
  %.not60.i = icmp eq i32 %i.aj, 0
  br i1 %.not60.i, label %intel_c10pll_calc_state.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ak = load i32, ptr %i.ac, align 8
  %i.al = sext i32 %i.ak to i64
  tail call void @intel_snps_hdmi_pll_compute_c10pll(ptr noundef %2, i64 noundef %i.al) #11
  %.val40.i = load ptr, ptr %1, align 8           ; 2 uses
  %.not.i42.i = icmp eq ptr %.val40.i, null
  br i1 %.not.i42.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.am = tail call ptr @__drm_to_display(ptr noundef nonnull %.val40.i) #11 ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.an = getelementptr i8, ptr %2, i64 44
  %i.ao = load i8, ptr %i.an, align 4, !range !46, !noundef !47
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %intel_c10pll_update_pll.exit.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.p
  %scevgep.i.i = getelementptr i8, ptr %2, i64 6
  tail call void @llvm.memset.p0.i64(ptr noundef align 2 dereferenceable(5) %scevgep.i.i, i8 0, i64 5, i1 false)
  br label %intel_c10pll_update_pll.exit.i

intel_c10pll_update_pll.exit.i:                   ; preds = %.preheader.i.i, %bb.p
  %i.aq = getelementptr i8, ptr %2, i64 45
  store i8 1, ptr %i.aq, align 1
  %i.ar = load i8, ptr %i.ae, align 1
  %i.as = zext i8 %i.ar to i32
  %i.at = getelementptr i8, ptr %2, i64 40
  store i32 %i.as, ptr %i.at, align 4
  %i.au = getelementptr i8, ptr %2, i64 17
  %.val41.i = load i8, ptr %i.au, align 1
  %i.av = and i8 %.val41.i, 56
  %.not.i43.i = icmp eq i8 %i.av, 0
  %i.aw = xor i1 %i.v, %.not.i43.i
  br i1 %i.aw, label %bb.q, label %intel_c10pll_calc_state.exit, !prof !33

bb.q:                                             ; preds = %intel_c10pll_update_pll.exit.i
  %i.ax = load ptr, ptr %i.s, align 8             ; 2 uses
  %.not.i44.i = icmp eq ptr %i.ax, null
  br i1 %.not.i44.i, label %__drm_to_dev.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ay = getelementptr i8, ptr %i.ax, i64 8
  %i.az = load ptr, ptr %i.ay, align 8
  br label %__drm_to_dev.exit.i

__drm_to_dev.exit.i:                              ; preds = %bb.r, %bb.q
  %i.ba = phi ptr [ %i.az, %bb.r ], [ null, %bb.q ]
  %i.bb = tail call ptr @dev_driver_string(ptr noundef %i.ba) #11 ; 0 uses
  %i.bc = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.7, ptr nonnull @.str.9, i32 2178, i32 2321, i64 16) #15, !srcloc !48
  %i.bd = load ptr, ptr %i.s, align 8             ; 2 uses
  %.not.i49.i = icmp eq ptr %i.bd, null
end_hunk_0
