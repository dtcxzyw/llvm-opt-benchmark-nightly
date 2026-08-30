Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/vmalloc?download=true
inline.NumInlined: 671
inline.NumDeleted: 273
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 6
begin_hunk_0_@vmap_range_noflush:bb.a
  %i.dh = xor i64 %i.dg, %i.o
  %i.di = and i64 %i.dh, 4503599627366400
  %i.dj = or i64 %i.di, %.fr.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i.i.i)
  store i64 %i.dj, ptr %.sroa.0.i.i.i.i.i.i, align 8
  %.sroa.0.i.i.i.i.i.i.0..sroa.0.i.i.i.i.i.i.0..sroa.0.i.i.i.i.i.i.0..sroa.0.i.i.i.i.i.0..sroa.0.i.i.i.i.i.0..sroa.0.i.i.i.i.0..sroa.0.i.i.i.i.0..sroa.0.i.i.i.0..sroa.0.i.i.i.0..sroa.0.i.i.0..sroa.0.i.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.copyload.i.i.us.us.i.i.i.i = load volatile i64, ptr %.sroa.0.i.i.i.i.i.i, align 8
  store volatile i64 %.sroa.0.i.i.i.i.i.i.0..sroa.0.i.i.i.i.i.i.0..sroa.0.i.i.i.i.i.i.0..sroa.0.i.i.i.i.i.0..sroa.0.i.i.i.i.i.0..sroa.0.i.i.i.i.0..sroa.0.i.i.i.i.0..sroa.0.i.i.i.0..sroa.0.i.i.i.0..sroa.0.i.i.0..sroa.0.i.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.copyload.i.i.us.us.i.i.i.i, ptr %.051.us.us.i.i.i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i.i.i)
  %i.dk = add i64 %.052.us.us.i.i.i.i, 1
  %i.dl = getelementptr i8, ptr %.051.us.us.i.i.i.i, i64 8
  %i.dm = add i64 %.050.us.us.i.i.i.i, 4096       ; 2 uses
  %.not60.us.us.i.i.i.i = icmp eq i64 %i.dm, %i.ck
  br i1 %.not60.us.us.i.i.i.i, label %vmap_pte_range.exit.i.i.i, label %.preheader.split.us.split.us.i.i.i.i, !llvm.loop !38

.preheader.split.us.split.i.i.i.i:                ; preds = %.preheader.split.us.i.i.i.i, %pfn_pte.exit.us.i.i.i.i
  %.052.us.i.i.i.i = phi i64 [ %i.dt, %pfn_pte.exit.us.i.i.i.i ], [ %i.ct, %.preheader.split.us.i.i.i.i ] ; 3 uses
  %.051.us.i.i.i.i = phi ptr [ %i.du, %pfn_pte.exit.us.i.i.i.i ], [ %i.de, %.preheader.split.us.i.i.i.i ] ; 3 uses
  %.050.us.i.i.i.i = phi i64 [ %i.dv, %pfn_pte.exit.us.i.i.i.i ], [ %.032.i.i.i, %.preheader.split.us.i.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i.i)
  %.sroa.0.0.copyload.i.us.i.i.i.i = load volatile i64, ptr %.051.us.i.i.i.i, align 8 ; 2 uses
  store volatile i64 %.sroa.0.0.copyload.i.us.i.i.i.i, ptr %.sroa.0.i.i.i.i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i.i)
  %i.dn = and i64 %.sroa.0.0.copyload.i.us.i.i.i.i, -97
  %.not.i.not.us.i.i.i.i = icmp eq i64 %i.dn, 0
  br i1 %.not.i.not.us.i.i.i.i, label %pfn_pte.exit.us.i.i.i.i, label %.split.us.i.i.i.i, !prof !17

pfn_pte.exit.us.i.i.i.i:                          ; preds = %.preheader.split.us.split.i.i.i.i
  tail call void asm sideeffect "219: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 219b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 219) #24, !srcloc !35
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.3, ptr nonnull @.str.39, i32 735, i32 2307, i64 16) #24, !srcloc !36
  tail call void asm sideeffect "220: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 220b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 220) #24, !srcloc !37
  %i.do = shl i64 %.052.us.i.i.i.i, 12
  %i.dp = xor i64 %i.do, %i.o
  %i.dq = and i64 %i.dp, 4503599627366400
  %i.dr = load i64, ptr @__supported_pte_mask, align 8
  %.0.i.i.i.us.i.i.i.i = and i64 %i.dr, %.fr.i.i.i.i
  %i.ds = or i64 %.0.i.i.i.us.i.i.i.i, %i.dq
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i.i.i)
  store i64 %i.ds, ptr %.sroa.0.i.i.i.i.i.i, align 8
  %.sroa.0.i.i.i.i.i.i.0..sroa.0.i.i.i.i.i.i.0..sroa.0.i.i.i.i.i.i.0..sroa.0.i.i.i.i.i.0..sroa.0.i.i.i.i.i.0..sroa.0.i.i.i.i.0..sroa.0.i.i.i.i.0..sroa.0.i.i.i.0..sroa.0.i.i.i.0..sroa.0.i.i.0..sroa.0.i.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.copyload.i.i.us.i.i.i.i = load volatile i64, ptr %.sroa.0.i.i.i.i.i.i, align 8
  store volatile i64 %.sroa.0.i.i.i.i.i.i.0..sroa.0.i.i.i.i.i.i.0..sroa.0.i.i.i.i.i.i.0..sroa.0.i.i.i.i.i.0..sroa.0.i.i.i.i.i.0..sroa.0.i.i.i.i.0..sroa.0.i.i.i.i.0..sroa.0.i.i.i.0..sroa.0.i.i.i.0..sroa.0.i.i.0..sroa.0.i.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.copyload.i.i.us.i.i.i.i, ptr %.051.us.i.i.i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i.i.i)
  %i.dt = add i64 %.052.us.i.i.i.i, 1
  %i.du = getelementptr i8, ptr %.051.us.i.i.i.i, i64 8
  %i.dv = add i64 %.050.us.i.i.i.i, 4096          ; 2 uses
  %.not60.us.i.i.i.i = icmp eq i64 %i.dv, %i.ck
  br i1 %.not60.us.i.i.i.i, label %vmap_pte_range.exit.i.i.i, label %.preheader.split.us.split.i.i.i.i, !llvm.loop !38

.preheader.split.i.i.i.i:                         ; preds = %.preheader.i.i.i.i
  br i1 %.not2.i.i.i.i.i.i.i, label %.preheader.split.split.us.i.i.i.i, label %.preheader.split.split.i.i.i.i

.preheader.split.split.us.i.i.i.i:                ; preds = %.preheader.split.i.i.i.i, %pfn_pte.exit.us73.i.i.i.i
  %.052.us68.i.i.i.i = phi i64 [ %i.eb, %pfn_pte.exit.us73.i.i.i.i ], [ %i.ct, %.preheader.split.i.i.i.i ] ; 3 uses
  %.051.us69.i.i.i.i = phi ptr [ %i.ec, %pfn_pte.exit.us73.i.i.i.i ], [ %i.de, %.preheader.split.i.i.i.i ] ; 3 uses
  %.050.us70.i.i.i.i = phi i64 [ %i.ed, %pfn_pte.exit.us73.i.i.i.i ], [ %.032.i.i.i, %.preheader.split.i.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i.i)
  %.sroa.0.0.copyload.i.us71.i.i.i.i = load volatile i64, ptr %.051.us69.i.i.i.i, align 8 ; 2 uses
  store volatile i64 %.sroa.0.0.copyload.i.us71.i.i.i.i, ptr %.sroa.0.i.i.i.i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i.i)
  %i.dw = and i64 %.sroa.0.0.copyload.i.us71.i.i.i.i, -97
  %.not.i.not.us72.i.i.i.i = icmp eq i64 %i.dw, 0
  br i1 %.not.i.not.us72.i.i.i.i, label %pfn_pte.exit.us73.i.i.i.i, label %.split.us.i.i.i.i, !prof !17

pfn_pte.exit.us73.i.i.i.i:                        ; preds = %.preheader.split.split.us.i.i.i.i
  %i.dx = shl i64 %.052.us68.i.i.i.i, 12
  %i.dy = xor i64 %i.dx, %i.o
  %i.dz = and i64 %i.dy, 4503599627366400
  %i.ea = or i64 %i.dz, %.fr.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i.i.i)
  store i64 %i.ea, ptr %.sroa.0.i.i.i.i.i.i, align 8
  %.sroa.0.i.i.i.i.i.i.0..sroa.0.i.i.i.i.i.i.0..sroa.0.i.i.i.i.i.i.0..sroa.0.i.i.i.i.i.0..sroa.0.i.i.i.i.i.0..sroa.0.i.i.i.i.0..sroa.0.i.i.i.i.0..sroa.0.i.i.i.0..sroa.0.i.i.i.0..sroa.0.i.i.0..sroa.0.i.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.copyload.i.i.us75.i.i.i.i = load volatile i64, ptr %.sroa.0.i.i.i.i.i.i, align 8
  store volatile i64 %.sroa.0.i.i.i.i.i.i.0..sroa.0.i.i.i.i.i.i.0..sroa.0.i.i.i.i.i.i.0..sroa.0.i.i.i.i.i.0..sroa.0.i.i.i.i.i.0..sroa.0.i.i.i.i.0..sroa.0.i.i.i.i.0..sroa.0.i.i.i.0..sroa.0.i.i.i.0..sroa.0.i.i.0..sroa.0.i.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.copyload.i.i.us75.i.i.i.i, ptr %.051.us69.i.i.i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i.i.i)
  %i.eb = add i64 %.052.us68.i.i.i.i, 1
  %i.ec = getelementptr i8, ptr %.051.us69.i.i.i.i, i64 8
  %i.ed = add i64 %.050.us70.i.i.i.i, 4096        ; 2 uses
  %.not60.us76.i.i.i.i = icmp eq i64 %i.ed, %i.ck
  br i1 %.not60.us76.i.i.i.i, label %vmap_pte_range.exit.i.i.i, label %.preheader.split.split.us.i.i.i.i, !llvm.loop !38

.preheader.split.split.i.i.i.i:                   ; preds = %.preheader.split.i.i.i.i, %pfn_pte.exit.i.i.i.i
  %.052.i.i.i.i = phi i64 [ %i.eo, %pfn_pte.exit.i.i.i.i ], [ %i.ct, %.preheader.split.i.i.i.i ] ; 3 uses
  %.051.i.i.i.i = phi ptr [ %i.ep, %pfn_pte.exit.i.i.i.i ], [ %i.de, %.preheader.split.i.i.i.i ] ; 3 uses
  %.050.i.i.i.i = phi i64 [ %i.eq, %pfn_pte.exit.i.i.i.i ], [ %.032.i.i.i, %.preheader.split.i.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i.i)
  %.sroa.0.0.copyload.i.i.i.i.i = load volatile i64, ptr %.051.i.i.i.i, align 8 ; 2 uses
  store volatile i64 %.sroa.0.0.copyload.i.i.i.i.i, ptr %.sroa.0.i.i.i.i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i.i)
  %i.ee = and i64 %.sroa.0.0.copyload.i.i.i.i.i, -97
  %.not.i.not.i.i.i.i = icmp eq i64 %i.ee, 0
  br i1 %.not.i.not.i.i.i.i, label %pfn_pte.exit.i.i.i.i, label %.split.us.i.i.i.i, !prof !17

.split.us.i.i.i.i:                                ; preds = %.preheader.split.split.i.i.i.i, %.preheader.split.split.us.i.i.i.i, %.preheader.split.us.split.i.i.i.i, %.preheader.split.us.split.us.i.i.i.i
  %.us-phi.i.i.i.i = phi i64 [ %.052.us68.i.i.i.i, %.preheader.split.split.us.i.i.i.i ], [ %.052.us.i.i.i.i, %.preheader.split.us.split.i.i.i.i ], [ %.052.us.us.i.i.i.i, %.preheader.split.us.split.us.i.i.i.i ], [ %.052.i.i.i.i, %.preheader.split.split.i.i.i.i ] ; 2 uses
  %i.ef = tail call fastcc i32 @pfn_valid(i64 noundef %.us-phi.i.i.i.i) #26, !srcloc !39
  %.not61.i.i.i.i = icmp eq i32 %i.ef, 0
  br i1 %.not61.i.i.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.split.us.i.i.i.i
  %i.eg = load i64, ptr @vmemmap_base, align 8
  %i.eh = inttoptr i64 %i.eg to ptr
  %i.ei = getelementptr [64 x i8], ptr %i.eh, i64 %.us-phi.i.i.i.i
  tail call void @dump_page(ptr noundef %i.ei, ptr noundef nonnull @.str.38) #23
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %.split.us.i.i.i.i
  tail call void asm sideeffect "745: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 745b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 745) #24, !srcloc !40
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.3, ptr nonnull @.str.1, i32 119, i32 0, i64 16) #24, !srcloc !41
  unreachable

pfn_pte.exit.i.i.i.i:                             ; preds = %.preheader.split.split.i.i.i.i
  %i.ej = shl i64 %.052.i.i.i.i, 12
  %i.ek = xor i64 %i.ej, %i.o
  %i.el = and i64 %i.ek, 4503599627366400
  %i.em = load i64, ptr @__supported_pte_mask, align 8
  %.0.i.i.i.i.i.i.i = and i64 %i.em, %.fr.i.i.i.i
  %i.en = or i64 %.0.i.i.i.i.i.i.i, %i.el
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i.i.i)
  store i64 %i.en, ptr %.sroa.0.i.i.i.i.i.i, align 8
  %.sroa.0.i.i.i.i.i.i.0..sroa.0.i.i.i.i.i.i.0..sroa.0.i.i.i.i.i.i.0..sroa.0.i.i.i.i.i.0..sroa.0.i.i.i.i.i.0..sroa.0.i.i.i.i.0..sroa.0.i.i.i.i.0..sroa.0.i.i.i.0..sroa.0.i.i.i.0..sroa.0.i.i.0..sroa.0.i.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.copyload.i.i.i.i.i.i = load volatile i64, ptr %.sroa.0.i.i.i.i.i.i, align 8
  store volatile i64 %.sroa.0.i.i.i.i.i.i.0..sroa.0.i.i.i.i.i.i.0..sroa.0.i.i.i.i.i.i.0..sroa.0.i.i.i.i.i.0..sroa.0.i.i.i.i.i.0..sroa.0.i.i.i.i.0..sroa.0.i.i.i.i.0..sroa.0.i.i.i.0..sroa.0.i.i.i.0..sroa.0.i.i.0..sroa.0.i.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.copyload.i.i.i.i.i.i, ptr %.051.i.i.i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i.i.i)
  %i.eo = add i64 %.052.i.i.i.i, 1
  %i.ep = getelementptr i8, ptr %.051.i.i.i.i, i64 8
  %i.eq = add i64 %.050.i.i.i.i, 4096             ; 2 uses
  %.not60.i.i.i.i = icmp eq i64 %i.eq, %i.ck
  br i1 %.not60.i.i.i.i, label %vmap_pte_range.exit.i.i.i, label %.preheader.split.split.i.i.i.i, !llvm.loop !38

vmap_pte_range.exit.i.i.i:                        ; preds = %pfn_pte.exit.i.i.i.i, %pfn_pte.exit.us73.i.i.i.i, %pfn_pte.exit.us.i.i.i.i, %pfn_pte.exit.us.us.i.i.i.i, %vmap_try_huge_pmd.exit.i.i.i
  %.sink96.i.i.i = phi i32 [ 8, %vmap_try_huge_pmd.exit.i.i.i ], [ 16, %pfn_pte.exit.us.us.i.i.i.i ], [ 16, %pfn_pte.exit.us.i.i.i.i ], [ 16, %pfn_pte.exit.us73.i.i.i.i ], [ 16, %pfn_pte.exit.i.i.i.i ]
  %i.er = or i32 %.sink96.i.i.i, %.6              ; 2 uses
  %i.es = getelementptr i8, ptr %.034.i.i.i, i64 8
  %i.et = sub i64 %.035.i.i.i, %.032.i.i.i
  %i.eu = add i64 %i.et, %i.ck
  %.not42.i.i.i = icmp eq i64 %i.ck, %i.bi
  br i1 %.not42.i.i.i, label %vmap_pmd_range.exit.i.i, label %bb.q, !llvm.loop !42

vmap_pmd_range.exit.i.i:                          ; preds = %vmap_pte_range.exit.i.i.i, %vmap_try_huge_pud.exit.i.i
  %.9 = phi i32 [ %.4, %vmap_try_huge_pud.exit.i.i ], [ %i.er, %vmap_pte_range.exit.i.i.i ] ; 4 uses
  %i.ev = getelementptr i8, ptr %.034.i.i, i64 8
  %i.ew = sub i64 %.035.i.i, %.032.i.i
  %i.ex = add i64 %i.ew, %i.bi
  %.not42.i.i = icmp eq i64 %i.bi, %i.ar
  br i1 %.not42.i.i, label %vmap_pud_range.exit.i, label %bb.k, !llvm.loop !43

vmap_pud_range.exit.i:                            ; preds = %vmap_pmd_range.exit.i.i
  %i.ey = getelementptr i8, ptr %.034.i, i64 8
  %i.ez = sub i64 %.035.i, %.032.i
  %i.fa = add i64 %i.ez, %i.ar
  %.not41.i = icmp eq i64 %i.ar, %i.x
  br i1 %.not41.i, label %vmap_p4d_range.exit, label %bb.h, !llvm.loop !44

vmap_p4d_range.exit:                              ; preds = %vmap_pud_range.exit.i
  %i.fb = getelementptr i8, ptr %.026, i64 8
  %i.fc = sub i64 %.025, %.0
  %i.fd = add i64 %i.fc, %i.x
  %.not31 = icmp eq i64 %i.x, %1
  br i1 %.not31, label %vmap_p4d_range.exit.thread, label %bb.d, !llvm.loop !45

vmap_p4d_range.exit.thread:                       ; preds = %bb.e, %p4d_alloc_track.exit.i, %vmap_p4d_range.exit, %pud_alloc_track.exit.i.i, %bb.i, %bb.o, %pmd_alloc_track.exit.i.i.i, %bb.v, %bb.x, %bb.u
  %.0.i3345 = phi i32 [ -12, %bb.o ], [ -22, %bb.u ], [ -12, %bb.v ], [ -12, %pud_alloc_track.exit.i.i ], [ -12, %bb.x ], [ -12, %pmd_alloc_track.exit.i.i.i ], [ -12, %bb.i ], [ -12, %p4d_alloc_track.exit.i ], [ -12, %bb.e ], [ 0, %vmap_p4d_range.exit ]
  %.1044 = phi i32 [ %.4, %bb.o ], [ %.6, %bb.u ], [ %.6, %bb.v ], [ %.3, %pud_alloc_track.exit.i.i ], [ %.6, %bb.x ], [ %.4, %pmd_alloc_track.exit.i.i.i ], [ %.2, %bb.i ], [ %.1, %p4d_alloc_track.exit.i ], [ %.040, %bb.e ], [ %.9, %vmap_p4d_range.exit ]
  %i.fe = zext i32 %.1044 to i64
  callbr void asm sideeffect "# ALT: oldinstr\0A771:\0A\09# ALT: oldinstr\0A771:\0A\09jmp 6f\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 3*32+21)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09jmp ${4:l}\0A775:\0A.popsection\0A\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ${0:c}\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09\0A775:\0A.popsection\0A.pushsection .altinstr_aux,\22ax\22\0A6:\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A testb $1, ${2:a}\0A jnz ${3:l}\0A jmp ${4:l}\0A.popsection\0A", "i,i,i,!i,!i,~{dirflag},~{fpsr},~{flags}"(i16 528, i32 1, ptr nonnull getelementptr inbounds nuw (i8, ptr @boot_cpu_data, i64 114)) #24
          to label %bb.aa [label %bb.aa, label %_static_cpu_has.exit], !srcloc !26

bb.aa:                                            ; preds = %vmap_p4d_range.exit.thread, %vmap_p4d_range.exit.thread
  br label %_static_cpu_has.exit

_static_cpu_has.exit:                             ; preds = %vmap_p4d_range.exit.thread, %bb.aa
  %i.ff = phi i64 [ 1, %bb.aa ], [ 2, %vmap_p4d_range.exit.thread ]
  %i.fg = and i64 %i.ff, %i.fe
  %.not32 = icmp eq i64 %i.fg, 0
  br i1 %.not32, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %_static_cpu_has.exit
  tail call void @arch_sync_kernel_mappings(i64 noundef %0, i64 noundef %1) #23
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %_static_cpu_has.exit
  ret i32 %.0.i3345
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -34, 1) i32 @ioremap_page_range(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 %3) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %.b.i.i = load i1, ptr @vmap_initialized, align 1
  br i1 %.b.i.i, label %bb.b, label %find_vm_area.exit.thread, !prof !17

bb.b:                                             ; preds = %bb.a
  %.b.i.i.i = load i1, ptr @vmap_zone_size, align 4
  %i.a = lshr i64 %0, 16
  %i.b = select i1 %.b.i.i.i, i64 %i.a, i64 %0
  %i.c = load i32, ptr @nr_vmap_nodes, align 4
  %i.d = zext nneg i32 %i.c to i64
  %i.e = urem i64 %i.b, %i.d
  %i.f = trunc nuw nsw i64 %i.e to i32            ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.u, %bb.f ] ; 2 uses
  %i.g = load ptr, ptr @vmap_nodes, align 8
  %4 = zext nneg i32 %.0.i.i to i64
  %i.h = getelementptr [6272 x i8], ptr %i.g, i64 %4 ; 2 uses
  %i.i = getelementptr i8, ptr %i.h, i64 6152
  %i.j = getelementptr i8, ptr %i.h, i64 6176     ; 3 uses
  tail call void @_raw_spin_lock(ptr noundef %i.j) #23
  %.val.i.i = load ptr, ptr %i.i, align 8         ; 2 uses
  %.not6.i.i.i = icmp eq ptr %.val.i.i, null
  br i1 %.not6.i.i.i, label %__find_vmap_area.exit.thread.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %bb.e
  %.0157.i.i.i = phi ptr [ %.116.i.i.i, %bb.e ], [ %.val.i.i, %bb.c ] ; 5 uses
  %i.k = getelementptr i8, ptr %.0157.i.i.i, i64 -16
  %i.l = load i64, ptr %i.k, align 8
  %i.m = icmp ugt i64 %i.l, %0
  br i1 %i.m, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.n = getelementptr i8, ptr %.0157.i.i.i, i64 -8
  %i.o = load i64, ptr %i.n, align 8
  %.not19.i.i.i = icmp ugt i64 %i.o, %0
  br i1 %.not19.i.i.i, label %__find_vmap_area.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.i.i.i
  %.sink.i.i.i = phi i64 [ 16, %.lr.ph.i.i.i ], [ 8, %bb.d ]
  %i.p = getelementptr i8, ptr %.0157.i.i.i, i64 %.sink.i.i.i
  %.116.i.i.i = load ptr, ptr %i.p, align 8       ; 2 uses
  %.not.i.i.i = icmp eq ptr %.116.i.i.i, null
  br i1 %.not.i.i.i, label %__find_vmap_area.exit.thread.i.i, label %.lr.ph.i.i.i, !llvm.loop !46

__find_vmap_area.exit.thread.i.i:                 ; preds = %bb.e, %bb.c
  tail call void @_raw_spin_unlock(ptr noundef %i.j) #23
  br label %bb.f

__find_vmap_area.exit.i.i:                        ; preds = %bb.d
  %i.q = getelementptr i8, ptr %.0157.i.i.i, i64 -16
  tail call void @_raw_spin_unlock(ptr noundef %i.j) #23
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %bb.f, label %find_vm_area.exit

bb.f:                                             ; preds = %__find_vmap_area.exit.i.i, %__find_vmap_area.exit.thread.i.i
  %i.r = load i32, ptr @nr_vmap_nodes, align 4    ; 2 uses
  %i.s = add i32 %.0.i.i, -1
  %i.t = add i32 %i.s, %i.r
  %i.u = urem i32 %i.t, %i.r                      ; 2 uses
  %.not13.i.i = icmp eq i32 %i.u, %i.f
  br i1 %.not13.i.i, label %find_vm_area.exit.thread, label %bb.c, !llvm.loop !47

find_vm_area.exit:                                ; preds = %__find_vmap_area.exit.i.i
  %i.v = getelementptr i8, ptr %.0157.i.i.i, i64 40
  %i.w = load ptr, ptr %i.v, align 8              ; 5 uses
  %.not = icmp eq ptr %i.w, null
  br i1 %.not, label %find_vm_area.exit.thread, label %bb.g

bb.g:                                             ; preds = %find_vm_area.exit
  %i.x = getelementptr i8, ptr %i.w, i64 24       ; 2 uses
  %i.y = load i64, ptr %i.x, align 8              ; 2 uses
  %i.z = and i64 %i.y, 1
  %.not37 = icmp eq i64 %i.z, 0
  br i1 %.not37, label %find_vm_area.exit.thread, label %bb.h

find_vm_area.exit.thread:                         ; preds = %bb.f, %bb.a, %find_vm_area.exit, %bb.g
  %i.aa = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 353, i32 2323, i64 16) #24, !srcloc !48
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.aa, i64 noundef %0) #23
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #24, !srcloc !49
  br label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr i8, ptr %i.w, i64 8       ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8            ; 2 uses
  %i.ad = ptrtoint ptr %i.ac to i64
  %.not38 = icmp eq i64 %0, %i.ad
  br i1 %.not38, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ae = inttoptr i64 %1 to ptr
  %i.af = and i64 %i.y, 64
  %.not.i = icmp eq i64 %i.af, 0
  %i.ag = getelementptr i8, ptr %i.w, i64 16
  %i.ah = load i64, ptr %i.ag, align 8            ; 2 uses
  %i.ai = add i64 %i.ah, -4096
  %.0.i40 = select i1 %.not.i, i64 %i.ai, i64 %i.ah
  %i.aj = getelementptr i8, ptr %i.ac, i64 %.0.i40
  %.not39 = icmp eq ptr %i.aj, %i.ae
  br i1 %.not39, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.ak = getelementptr i8, ptr %i.w, i64 16
  %i.al = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.2, ptr nonnull @.str.1, i32 360, i32 2323, i64 16) #24, !srcloc !50
  %i.am = load ptr, ptr %i.ab, align 8
  %i.an = ptrtoint ptr %i.am to i64               ; 2 uses
  %i.ao = load i64, ptr %i.x, align 8
  %i.ap = and i64 %i.ao, 64
  %.not.i43 = icmp eq i64 %i.ap, 0
  %i.aq = load i64, ptr %i.ak, align 8            ; 2 uses
  %i.ar = add i64 %i.aq, -4096
  %.0.i44 = select i1 %.not.i43, i64 %i.ar, i64 %i.aq
  %i.as = add i64 %.0.i44, %i.an
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.al, i64 noundef %0, i64 noundef %1, i64 noundef %i.an, i64 noundef %i.as) #23
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #24, !srcloc !51
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.at = or i64 %3, -9223372036854775808
  %.b13.i = load i1, ptr @ioremap_max_page_shift, align 4
  %i.au = select i1 %.b13.i, i32 12, i32 63
  %i.av = tail call fastcc range(i32 -22, 1) i32 @vmap_range_noflush(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 %i.at, i32 noundef %i.au) #26, !srcloc !27
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %find_vm_area.exit.thread
  %.0 = phi i32 [ -34, %bb.j ], [ %i.av, %bb.k ], [ -22, %find_vm_area.exit.thread ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local ptr @find_vm_area(ptr noundef %0) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 4 uses
  %.b.i = load i1, ptr @vmap_initialized, align 1
  br i1 %.b.i, label %bb.b, label %find_vmap_area.exit.thread, !prof !17

bb.b:                                             ; preds = %bb.a
  %.b.i.i = load i1, ptr @vmap_zone_size, align 4
  %i.b = lshr i64 %i.a, 16
  %i.c = select i1 %.b.i.i, i64 %i.b, i64 %i.a
  %i.d = load i32, ptr @nr_vmap_nodes, align 4
  %i.e = zext nneg i32 %i.d to i64
  %i.f = urem i64 %i.c, %i.e
  %i.g = trunc nuw nsw i64 %i.f to i32            ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %bb.b
  %.0.i = phi i32 [ %i.g, %bb.b ], [ %i.v, %bb.f ] ; 2 uses
  %i.h = load ptr, ptr @vmap_nodes, align 8
  %1 = zext nneg i32 %.0.i to i64
  %i.i = getelementptr [6272 x i8], ptr %i.h, i64 %1 ; 2 uses
  %i.j = getelementptr i8, ptr %i.i, i64 6152
  %i.k = getelementptr i8, ptr %i.i, i64 6176     ; 3 uses
  tail call void @_raw_spin_lock(ptr noundef %i.k) #23
  %.val.i = load ptr, ptr %i.j, align 8           ; 2 uses
  %.not6.i.i = icmp eq ptr %.val.i, null
  br i1 %.not6.i.i, label %__find_vmap_area.exit.thread.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %bb.e
  %.0157.i.i = phi ptr [ %.116.i.i, %bb.e ], [ %.val.i, %bb.c ] ; 5 uses
  %i.l = getelementptr i8, ptr %.0157.i.i, i64 -16
  %i.m = load i64, ptr %i.l, align 8
  %i.n = icmp ugt i64 %i.m, %i.a
  br i1 %i.n, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.o = getelementptr i8, ptr %.0157.i.i, i64 -8
  %i.p = load i64, ptr %i.o, align 8
  %.not19.i.i = icmp ugt i64 %i.p, %i.a
  br i1 %.not19.i.i, label %__find_vmap_area.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.i.i
  %.sink.i.i = phi i64 [ 16, %.lr.ph.i.i ], [ 8, %bb.d ]
  %i.q = getelementptr i8, ptr %.0157.i.i, i64 %.sink.i.i
  %.116.i.i = load ptr, ptr %i.q, align 8         ; 2 uses
  %.not.i.i = icmp eq ptr %.116.i.i, null
  br i1 %.not.i.i, label %__find_vmap_area.exit.thread.i, label %.lr.ph.i.i, !llvm.loop !46

__find_vmap_area.exit.thread.i:                   ; preds = %bb.e, %bb.c
  tail call void @_raw_spin_unlock(ptr noundef %i.k) #23
  br label %bb.f

__find_vmap_area.exit.i:                          ; preds = %bb.d
  %i.r = getelementptr i8, ptr %.0157.i.i, i64 -16
  tail call void @_raw_spin_unlock(ptr noundef %i.k) #23
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %bb.f, label %find_vmap_area.exit

bb.f:                                             ; preds = %__find_vmap_area.exit.i, %__find_vmap_area.exit.thread.i
  %i.s = load i32, ptr @nr_vmap_nodes, align 4    ; 2 uses
  %i.t = add i32 %.0.i, -1
  %i.u = add i32 %i.t, %i.s
  %i.v = urem i32 %i.u, %i.s                      ; 2 uses
  %.not13.i = icmp eq i32 %i.v, %i.g
  br i1 %.not13.i, label %find_vmap_area.exit.thread, label %bb.c, !llvm.loop !47

find_vmap_area.exit:                              ; preds = %__find_vmap_area.exit.i
  %i.w = getelementptr i8, ptr %.0157.i.i, i64 40
  %i.x = load ptr, ptr %i.w, align 8
  br label %find_vmap_area.exit.thread

find_vmap_area.exit.thread:                       ; preds = %bb.f, %bb.a, %find_vmap_area.exit
  %.0 = phi ptr [ %i.x, %find_vmap_area.exit ], [ null, %bb.a ], [ null, %bb.f ]
  ret ptr %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__SCT__WARN_trap(ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @__vunmap_range_noflush(i64 noundef %0, i64 noundef %1) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %.not = icmp ult i64 %0, %1
  br i1 %.not, label %bb.c, label %bb.b, !prof !17

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "759: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 759b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 759) #24, !srcloc !52
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.3, ptr nonnull @.str.1, i32 488, i32 0, i64 16) #24, !srcloc !53
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @init_mm, i64 120), align 8
  %i.b = load i32, ptr @pgdir_shift, align 4
  %i.c = zext nneg i32 %i.b to i64
  %i.d = lshr i64 %0, %i.c
  %i.e = and i64 %i.d, 511
  %i.f = getelementptr [8 x i8], ptr %i.a, i64 %i.e
  %i.g = add i64 %1, -1
  br label %bb.d

bb.d:                                             ; preds = %pgd_none_or_clear_bad.exit, %bb.c
  %.038 = phi i32 [ 0, %bb.c ], [ %.2, %pgd_none_or_clear_bad.exit ] ; 2 uses
  %.020 = phi i64 [ %0, %bb.c ], [ %i.p, %pgd_none_or_clear_bad.exit ] ; 3 uses
  %.0 = phi ptr [ %i.f, %bb.c ], [ %i.cx, %pgd_none_or_clear_bad.exit ] ; 7 uses
  %i.h = load i32, ptr @pgdir_shift, align 4
  %i.i = zext nneg i32 %i.h to i64
  %i.j = shl nuw i64 1, %i.i                      ; 2 uses
  %i.k = add i64 %i.j, %.020
  %i.l = sub i64 0, %i.j
  %i.m = and i64 %i.k, %i.l                       ; 2 uses
  %i.n = add i64 %i.m, -1
  %i.o = icmp ult i64 %i.n, %i.g
  %i.p = select i1 %i.o, i64 %i.m, i64 %1         ; 5 uses
  %i.q = load i64, ptr %.0, align 8
  callbr void asm sideeffect "# ALT: oldinstr\0A771:\0A\09# ALT: oldinstr\0A771:\0A\09jmp 6f\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 3*32+21)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09jmp ${4:l}\0A775:\0A.popsection\0A\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ${0:c}\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09\0A775:\0A.popsection\0A.pushsection .altinstr_aux,\22ax\22\0A6:\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A testb $1, ${2:a}\0A jnz ${3:l}\0A jmp ${4:l}\0A.popsection\0A", "i,i,i,!i,!i,~{dirflag},~{fpsr},~{flags}"(i16 528, i32 1, ptr nonnull getelementptr inbounds nuw (i8, ptr @boot_cpu_data, i64 114)) #24
          to label %pgd_bad.exit [label %pgd_bad.exit, label %pgd_bad.exit.thread], !srcloc !26

pgd_bad.exit:                                     ; preds = %bb.d, %bb.d
  %i.r = and i64 %i.q, 9218868437227409403
  %.not47 = icmp ne i64 %i.r, 99
  %i.s = zext i1 %.not47 to i32
  %spec.select = or i32 %.038, %i.s
  br label %pgd_bad.exit.thread

pgd_bad.exit.thread:                              ; preds = %pgd_bad.exit, %bb.d
  %.1 = phi i32 [ %spec.select, %pgd_bad.exit ], [ %.038, %bb.d ] ; 3 uses
  %i.t = load i64, ptr %.0, align 8
  callbr void asm sideeffect "# ALT: oldinstr\0A771:\0A\09# ALT: oldinstr\0A771:\0A\09jmp 6f\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 3*32+21)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09jmp ${4:l}\0A775:\0A.popsection\0A\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ${0:c}\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09\0A775:\0A.popsection\0A.pushsection .altinstr_aux,\22ax\22\0A6:\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A testb $1, ${2:a}\0A jnz ${3:l}\0A jmp ${4:l}\0A.popsection\0A", "i,i,i,!i,!i,~{dirflag},~{fpsr},~{flags}"(i16 528, i32 1, ptr nonnull getelementptr inbounds nuw (i8, ptr @boot_cpu_data, i64 114)) #24
          to label %pgd_none.exit.i [label %pgd_none.exit.i, label %pgd_none.exit.thread.i], !srcloc !26

pgd_none.exit.i:                                  ; preds = %pgd_bad.exit.thread, %pgd_bad.exit.thread
  %.not.i.not.i = icmp eq i64 %i.t, 0
  br i1 %.not.i.not.i, label %pgd_none_or_clear_bad.exit, label %pgd_none.exit.thread.i

pgd_none.exit.thread.i:                           ; preds = %pgd_none.exit.i, %pgd_bad.exit.thread
  %i.u = load i64, ptr %.0, align 8
  callbr void asm sideeffect "# ALT: oldinstr\0A771:\0A\09# ALT: oldinstr\0A771:\0A\09jmp 6f\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 3*32+21)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09jmp ${4:l}\0A775:\0A.popsection\0A\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ${0:c}\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09\0A775:\0A.popsection\0A.pushsection .altinstr_aux,\22ax\22\0A6:\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A testb $1, ${2:a}\0A jnz ${3:l}\0A jmp ${4:l}\0A.popsection\0A", "i,i,i,!i,!i,~{dirflag},~{fpsr},~{flags}"(i16 528, i32 1, ptr nonnull getelementptr inbounds nuw (i8, ptr @boot_cpu_data, i64 114)) #24
          to label %pgd_bad.exit.i [label %pgd_bad.exit.i, label %bb.f], !srcloc !26

pgd_bad.exit.i:                                   ; preds = %pgd_none.exit.thread.i, %pgd_none.exit.thread.i
  %i.v = and i64 %i.u, 9218868437227409403
  %.not.i = icmp eq i64 %i.v, 99
  br i1 %.not.i, label %bb.f, label %bb.e, !prof !54

bb.e:                                             ; preds = %pgd_bad.exit.i
  tail call void @pgd_clear_bad(ptr noundef %.0) #23
  br label %pgd_none_or_clear_bad.exit

bb.f:                                             ; preds = %pgd_bad.exit.i, %pgd_none.exit.thread.i
  callbr void asm sideeffect "# ALT: oldinstr\0A771:\0A\09# ALT: oldinstr\0A771:\0A\09jmp 6f\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 3*32+21)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09jmp ${4:l}\0A775:\0A.popsection\0A\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ${0:c}\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09\0A775:\0A.popsection\0A.pushsection .altinstr_aux,\22ax\22\0A6:\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A testb $1, ${2:a}\0A jnz ${3:l}\0A jmp ${4:l}\0A.popsection\0A", "i,i,i,!i,!i,~{dirflag},~{fpsr},~{flags}"(i16 528, i32 1, ptr nonnull getelementptr inbounds nuw (i8, ptr @boot_cpu_data, i64 114)) #24
          to label %bb.g [label %bb.g, label %p4d_offset.exit.i], !srcloc !26

bb.g:                                             ; preds = %bb.f, %bb.f
  %i.w = load i64, ptr %.0, align 8
  %i.x = and i64 %i.w, 4503599627366400
  %i.y = load i64, ptr @page_offset_base, align 8
  %i.z = add i64 %i.y, %i.x
  %i.aa = inttoptr i64 %i.z to ptr
  %i.ab = lshr i64 %.020, 39
  %i.ac = load i32, ptr @ptrs_per_p4d, align 4
  %i.ad = add i32 %i.ac, -1
  %i.ae = zext i32 %i.ad to i64
  %i.af = and i64 %i.ab, %i.ae
  %i.ag = getelementptr [8 x i8], ptr %i.aa, i64 %i.af
  br label %p4d_offset.exit.i

p4d_offset.exit.i:                                ; preds = %bb.g, %bb.f
  %.0.i.i = phi ptr [ %i.ag, %bb.g ], [ %.0, %bb.f ]
  %i.ah = add i64 %i.p, -1
  br label %bb.h

bb.h:                                             ; preds = %vunmap_pud_range.exit.i, %p4d_offset.exit.i
  %.3 = phi i32 [ %.1, %p4d_offset.exit.i ], [ %spec.select44, %vunmap_pud_range.exit.i ] ; 2 uses
  %.019.i = phi ptr [ %.0.i.i, %p4d_offset.exit.i ], [ %i.cw, %vunmap_pud_range.exit.i ] ; 4 uses
  %.0.i30 = phi i64 [ %.020, %p4d_offset.exit.i ], [ %i.am, %vunmap_pud_range.exit.i ] ; 4 uses
  %i.ai = and i64 %.0.i30, -549755813888
  %i.aj = add i64 %i.ai, 549755813888
  %i.ak = or i64 %.0.i30, 549755813887
  %i.al = icmp ult i64 %i.ak, %i.ah
  %i.am = select i1 %i.al, i64 %i.aj, i64 %i.p    ; 5 uses
  tail call void @p4d_clear_huge(ptr noundef %.019.i) #23
  %i.an = load i64, ptr %.019.i, align 8          ; 3 uses
  %i.ao = and i64 %i.an, 9218868437227409304
  %.not29.i = icmp eq i64 %i.ao, 0                ; 2 uses
  %i.ap = or i32 %.3, 2
  %spec.select44 = select i1 %.not29.i, i32 %.3, i32 %i.ap ; 2 uses
  %i.aq = and i64 %i.an, -97
  %.not.i.i = icmp eq i64 %i.aq, 0
  br i1 %.not.i.i, label %vunmap_pud_range.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  br i1 %.not29.i, label %p4d_none_or_clear_bad.exit.i, label %bb.j, !prof !17

bb.j:                                             ; preds = %bb.i
  tail call void @p4d_clear_bad(ptr noundef %.019.i) #23
  br label %vunmap_pud_range.exit.i

p4d_none_or_clear_bad.exit.i:                     ; preds = %bb.i
  %i.ar = and i64 %i.an, 4503599627366400
  %i.as = load i64, ptr @page_offset_base, align 8
  %i.at = add i64 %i.as, %i.ar
  %i.au = inttoptr i64 %i.at to ptr
  %i.av = lshr i64 %.0.i30, 30
  %i.aw = and i64 %i.av, 511
  %i.ax = getelementptr [8 x i8], ptr %i.au, i64 %i.aw
  %i.ay = add i64 %i.am, -1
  br label %bb.k

bb.k:                                             ; preds = %vunmap_pmd_range.exit.i.i, %p4d_none_or_clear_bad.exit.i
  %.026.i.i = phi ptr [ %i.ax, %p4d_none_or_clear_bad.exit.i ], [ %i.cv, %vunmap_pmd_range.exit.i.i ] ; 4 uses
  %.0.i24.i = phi i64 [ %.0.i30, %p4d_none_or_clear_bad.exit.i ], [ %i.bd, %vunmap_pmd_range.exit.i.i ] ; 5 uses
  %i.az = and i64 %.0.i24.i, -1073741824
  %i.ba = add i64 %i.az, 1073741824
  %i.bb = or i64 %.0.i24.i, 1073741823
  %i.bc = icmp ult i64 %i.bb, %i.ay
  %i.bd = select i1 %i.bc, i64 %i.ba, i64 %i.am   ; 6 uses
  %i.be = tail call i32 @pud_clear_huge(ptr noundef %.026.i.i) #23
  %.not.i25.i = icmp eq i32 %i.be, 0
  br i1 %.not.i25.i, label %.thread.i.i, label %bb.l

end_hunk_0
begin_hunk_1_@vmalloc_to_page:bb.a
  %i.n = add i64 %i.m, %i.l
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = lshr i64 %i.a, 39
  %i.q = load i32, ptr @ptrs_per_p4d, align 4
  %i.r = add i32 %i.q, -1
  %i.s = zext i32 %i.r to i64
  %i.t = and i64 %i.p, %i.s
  %i.u = getelementptr [8 x i8], ptr %i.o, i64 %i.t
  br label %p4d_offset.exit

p4d_offset.exit:                                  ; preds = %.critedge, %bb.c
  %.0.i66 = phi ptr [ %i.u, %bb.c ], [ %i.g, %.critedge ]
  %i.v = load i64, ptr %.0.i66, align 8           ; 3 uses
  %i.w = and i64 %i.v, -97
  %.not81 = icmp eq i64 %i.w, 0
  br i1 %.not81, label %bb.o, label %bb.d

bb.d:                                             ; preds = %p4d_offset.exit
  %i.x = and i64 %i.v, 9218868437227409304
  %.not82 = icmp eq i64 %i.x, 0
  br i1 %.not82, label %.critedge58, label %bb.e, !prof !17

bb.e:                                             ; preds = %bb.d
  tail call void asm sideeffect "780: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 780b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 780) #24, !srcloc !109
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.3, ptr nonnull @.str.1, i32 827, i32 2307, i64 16) #24, !srcloc !110
  tail call void asm sideeffect "781: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 781b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 781) #24, !srcloc !111
  br label %bb.o

.critedge58:                                      ; preds = %bb.d
  %i.y = and i64 %i.v, 4503599627366400
  %i.z = load i64, ptr @page_offset_base, align 8 ; 3 uses
  %i.aa = add i64 %i.z, %i.y
  %i.ab = inttoptr i64 %i.aa to ptr
  %i.ac = lshr i64 %i.a, 30
  %i.ad = and i64 %i.ac, 511
  %i.ae = getelementptr [8 x i8], ptr %i.ab, i64 %i.ad
  %i.af = load i64, ptr %i.ae, align 8            ; 6 uses
  %i.ag = and i64 %i.af, -97
  %.not83 = icmp eq i64 %i.ag, 0
  br i1 %.not83, label %bb.o, label %bb.f

bb.f:                                             ; preds = %.critedge58
  %i.ah = and i64 %i.af, 128
  %.not84 = icmp eq i64 %i.ah, 0
  br i1 %.not84, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ai = load i64, ptr @vmemmap_base, align 8
  %i.aj = inttoptr i64 %i.ai to ptr
  %i.ak = and i64 %i.af, 1
  %sext89 = add nuw nsw i64 %i.ak, 4503599627370495
  %i.al = xor i64 %sext89, %i.af
  %i.am = lshr i64 %i.al, 12
  %i.an = and i64 %i.am, 1099511365632
  %i.ao = getelementptr [64 x i8], ptr %i.aj, i64 %i.an
  %i.ap = lshr i64 %i.a, 12
  %i.aq = and i64 %i.ap, 262143
  %i.ar = getelementptr [64 x i8], ptr %i.ao, i64 %i.aq
  br label %bb.o

bb.h:                                             ; preds = %bb.f
  %i.as = and i64 %i.af, -4503599627366632
  %.not85 = icmp eq i64 %i.as, 0
  br i1 %.not85, label %.critedge60, label %bb.i, !prof !17

bb.i:                                             ; preds = %bb.h
  tail call void asm sideeffect "782: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 782b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 782) #24, !srcloc !112
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.3, ptr nonnull @.str.1, i32 835, i32 2307, i64 16) #24, !srcloc !113
  tail call void asm sideeffect "783: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 783b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 783) #24, !srcloc !114
  br label %bb.o

.critedge60:                                      ; preds = %bb.h
  %i.at = and i64 %i.af, 4503599627366400
  %i.au = add i64 %i.at, %i.z
  %i.av = inttoptr i64 %i.au to ptr
  %i.aw = lshr i64 %i.a, 21
  %i.ax = and i64 %i.aw, 511
  %i.ay = getelementptr [8 x i8], ptr %i.av, i64 %i.ax
  %i.az = load i64, ptr %i.ay, align 8            ; 6 uses
  %i.ba = and i64 %i.az, -97
  %.not86 = icmp eq i64 %i.ba, 0
  br i1 %.not86, label %bb.o, label %bb.j

bb.j:                                             ; preds = %.critedge60
  %i.bb = and i64 %i.az, 128
  %.not87 = icmp eq i64 %i.bb, 0
  br i1 %.not87, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bc = load i64, ptr @vmemmap_base, align 8
  %i.bd = inttoptr i64 %i.bc to ptr
  %i.be = and i64 %i.az, 1
  %sext = add nuw nsw i64 %i.be, 4503599627370495
  %i.bf = xor i64 %sext, %i.az
  %i.bg = lshr i64 %i.bf, 12
  %i.bh = and i64 %i.bg, 1099511627264
  %i.bi = getelementptr [64 x i8], ptr %i.bd, i64 %i.bh
  %i.bj = lshr i64 %i.a, 12
  %i.bk = and i64 %i.bj, 511
  %i.bl = getelementptr [64 x i8], ptr %i.bi, i64 %i.bk
  br label %bb.o

bb.l:                                             ; preds = %bb.j
  %i.bm = and i64 %i.az, -4503599627366565
  %.not88 = icmp eq i64 %i.bm, 67
  br i1 %.not88, label %.critedge62, label %bb.m, !prof !17

bb.m:                                             ; preds = %bb.l
  tail call void asm sideeffect "784: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 784b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 784) #24, !srcloc !115
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.3, ptr nonnull @.str.1, i32 843, i32 2307, i64 16) #24, !srcloc !116
  tail call void asm sideeffect "785: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 785b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 785) #24, !srcloc !117
  br label %bb.o

.critedge62:                                      ; preds = %bb.l
  %i.bn = and i64 %i.az, 4503599627366400
  %i.bo = add i64 %i.bn, %i.z
  %i.bp = inttoptr i64 %i.bo to ptr
  %i.bq = lshr i64 %i.a, 12
  %i.br = and i64 %i.bq, 511
  %i.bs = getelementptr [8 x i8], ptr %i.bp, i64 %i.br
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  %.sroa.0.0.copyload.i = load volatile i64, ptr %i.bs, align 8 ; 4 uses
  store volatile i64 %.sroa.0.0.copyload.i, ptr %.sroa.0.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  %i.bt = and i64 %.sroa.0.0.copyload.i, 257
  %.not56 = icmp eq i64 %i.bt, 0
  br i1 %.not56, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.critedge62
  %i.bu = load i64, ptr @vmemmap_base, align 8
  %i.bv = inttoptr i64 %i.bu to ptr
  %i.bw = and i64 %.sroa.0.0.copyload.i, 1
  %sext90 = add nuw nsw i64 %i.bw, 4503599627370495
  %i.bx = xor i64 %.sroa.0.0.copyload.i, %sext90
  %i.by = lshr i64 %i.bx, 12
  %i.bz = and i64 %i.by, 1099511627775
  %i.ca = getelementptr [64 x i8], ptr %i.bv, i64 %i.bz
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.i, %bb.e, %bb.b, %.critedge62, %bb.n, %.critedge60, %.critedge58, %p4d_offset.exit, %pgd_none.exit, %bb.k, %bb.g
  %.0 = phi ptr [ null, %.critedge60 ], [ null, %bb.m ], [ null, %pgd_none.exit ], [ null, %bb.b ], [ null, %p4d_offset.exit ], [ null, %bb.e ], [ %i.ar, %bb.g ], [ null, %.critedge58 ], [ null, %bb.i ], [ %i.bl, %bb.k ], [ %i.ca, %bb.n ], [ null, %.critedge62 ]
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i64 -144115188075855872, 144115188075855872) i64 @vmalloc_to_pfn(ptr noundef %0) #1 align 16 prefalign(16) {
bb.a:
  %i.a = tail call ptr @vmalloc_to_page(ptr noundef %0) #26
  %i.b = load i64, ptr @vmemmap_base, align 8
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = sub i64 %i.c, %i.b
  %i.e = ashr exact i64 %i.d, 6
  ret i64 %i.e
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @register_vmap_purge_notifier(ptr noundef %0) #1 align 16 prefalign(16) {
bb.a:
  %i.a = tail call i32 @blocking_notifier_chain_register(ptr noundef nonnull @vmap_notify_list, ptr noundef %0) #23
  ret i32 %i.a
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @blocking_notifier_chain_register(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @unregister_vmap_purge_notifier(ptr noundef %0) #1 align 16 prefalign(16) {
bb.a:
  %i.a = tail call i32 @blocking_notifier_chain_unregister(ptr noundef nonnull @vmap_notify_list, ptr noundef %0) #23
  ret i32 %i.a
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @blocking_notifier_chain_unregister(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local ptr @find_vmap_area(i64 noundef %0) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %.b = load i1, ptr @vmap_initialized, align 1
  br i1 %.b, label %bb.b, label %.loopexit, !prof !17

bb.b:                                             ; preds = %bb.a
  %.b.i = load i1, ptr @vmap_zone_size, align 4
  %i.a = lshr i64 %0, 16
  %i.b = select i1 %.b.i, i64 %i.a, i64 %0
  %i.c = load i32, ptr @nr_vmap_nodes, align 4
  %i.d = zext nneg i32 %i.c to i64
  %i.e = urem i64 %i.b, %i.d
  %i.f = trunc nuw nsw i64 %i.e to i32            ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %bb.b
  %.0 = phi i32 [ %i.f, %bb.b ], [ %i.u, %bb.f ]  ; 2 uses
  %i.g = load ptr, ptr @vmap_nodes, align 8
  %1 = zext nneg i32 %.0 to i64
  %i.h = getelementptr [6272 x i8], ptr %i.g, i64 %1 ; 2 uses
  %i.i = getelementptr i8, ptr %i.h, i64 6152
  %i.j = getelementptr i8, ptr %i.h, i64 6176     ; 3 uses
  tail call void @_raw_spin_lock(ptr noundef %i.j) #23
  %.val = load ptr, ptr %i.i, align 8             ; 2 uses
  %.not6.i = icmp eq ptr %.val, null
  br i1 %.not6.i, label %__find_vmap_area.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.e
  %.0157.i = phi ptr [ %.116.i, %bb.e ], [ %.val, %bb.c ] ; 4 uses
  %i.k = getelementptr i8, ptr %.0157.i, i64 -16
  %i.l = load i64, ptr %i.k, align 8
  %i.m = icmp ugt i64 %i.l, %0
  br i1 %i.m, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.n = getelementptr i8, ptr %.0157.i, i64 -8
  %i.o = load i64, ptr %i.n, align 8
  %.not19.i = icmp ugt i64 %i.o, %0
  br i1 %.not19.i, label %__find_vmap_area.exit, label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.i
  %.sink.i = phi i64 [ 16, %.lr.ph.i ], [ 8, %bb.d ]
  %i.p = getelementptr i8, ptr %.0157.i, i64 %.sink.i
  %.116.i = load ptr, ptr %i.p, align 8           ; 2 uses
  %.not.i = icmp eq ptr %.116.i, null
  br i1 %.not.i, label %__find_vmap_area.exit.thread, label %.lr.ph.i, !llvm.loop !46

__find_vmap_area.exit.thread:                     ; preds = %bb.e, %bb.c
  tail call void @_raw_spin_unlock(ptr noundef %i.j) #23
  br label %bb.f

__find_vmap_area.exit:                            ; preds = %bb.d
  %i.q = getelementptr i8, ptr %.0157.i, i64 -16  ; 2 uses
  tail call void @_raw_spin_unlock(ptr noundef %i.j) #23
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %__find_vmap_area.exit.thread, %__find_vmap_area.exit
  %i.r = load i32, ptr @nr_vmap_nodes, align 4    ; 2 uses
  %i.s = add i32 %.0, -1
  %i.t = add i32 %i.s, %i.r
  %i.u = urem i32 %i.t, %i.r                      ; 2 uses
  %.not13 = icmp eq i32 %i.u, %i.f
  br i1 %.not13, label %.loopexit, label %bb.c, !llvm.loop !47

.loopexit:                                        ; preds = %bb.f, %__find_vmap_area.exit, %bb.a
  %.010 = phi ptr [ null, %bb.a ], [ null, %bb.f ], [ %i.q, %__find_vmap_area.exit ]
  ret ptr %.010
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @vm_unmap_aliases() #1 align 16 prefalign(16) {
bb.a:
  tail call fastcc void @_vm_unmap_aliases(i64 noundef -1, i64 noundef 0, i32 noundef 0) #26, !srcloc !118
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @_vm_unmap_aliases(i64 noundef range(i64 1, 0) %0, i64 noundef %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %3 = alloca %struct.list_head, align 8          ; 10 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  store ptr %3, ptr %3, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store ptr %3, ptr %i.b, align 8
  %.b = load i1, ptr @vmap_initialized, align 1
  br i1 %.b, label %bb.b, label %bb.i, !prof !17

bb.b:                                             ; preds = %bb.a
  call void @mutex_lock(ptr noundef nonnull @vmap_purge_lock) #23
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  %i.c = phi i64 [ 0, %bb.b ], [ %i.bd, %._crit_edge ]
  %.064 = phi i64 [ %0, %bb.b ], [ %.1.lcssa, %._crit_edge ] ; 4 uses
  %.03963 = phi i64 [ %1, %bb.b ], [ %.140.lcssa, %._crit_edge ] ; 4 uses
  %.04262 = phi i32 [ %2, %bb.b ], [ %.143.lcssa, %._crit_edge ] ; 4 uses
  %i.d = load i64, ptr @__cpu_possible_mask, align 8
  %i.e = shl nsw i64 -1, %i.c
  %i.f = and i64 %i.d, %i.e                       ; 2 uses
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %find_next_bit.exit.thread, label %find_next_bit.exit

find_next_bit.exit:                               ; preds = %bb.c
  %i.g = call i64 asm "tzcnt $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 1, 0) %i.f) #27, !srcloc !119 ; 3 uses
  %i.h = and i64 %i.g, 4294967232
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.d, label %find_next_bit.exit.thread

bb.d:                                             ; preds = %find_next_bit.exit
  %i.j = and i64 %i.g, 63
  %i.k = getelementptr [8 x i8], ptr @__per_cpu_offset, i64 %i.j
  %i.l = load i64, ptr %i.k, align 8
  %i.m = add i64 %i.l, ptrtoint (ptr @vmap_block_queue to i64)
  %i.n = inttoptr i64 %i.m to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 0, ptr %i.a, align 8, !annotation !19
  call void @__rcu_read_lock() #23
  store i64 0, ptr %i.a, align 8
  %i.o = getelementptr i8, ptr %i.n, i64 24       ; 2 uses
  %i.p = call ptr @xa_find(ptr noundef %i.o, ptr noundef nonnull %i.a, i64 noundef -1, i32 noundef 8) #23 ; 2 uses
  %.not55 = icmp eq ptr %i.p, null
  br i1 %.not55, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %bb.f
  %.159 = phi i64 [ %.2, %bb.f ], [ %.064, %bb.d ] ; 3 uses
  %.14058 = phi i64 [ %.241, %bb.f ], [ %.03963, %bb.d ] ; 3 uses
  %.14357 = phi i32 [ %.244, %bb.f ], [ %.04262, %bb.d ] ; 2 uses
  %.04656 = phi ptr [ %i.bb, %bb.f ], [ %i.p, %bb.d ] ; 14 uses
  call void @_raw_spin_lock(ptr noundef nonnull %.04656) #23
  %i.q = getelementptr i8, ptr %.04656, i64 16    ; 2 uses
  %i.r = load i64, ptr %i.q, align 8              ; 2 uses
  %i.s = getelementptr i8, ptr %.04656, i64 24    ; 2 uses
  %i.t = load i64, ptr %i.s, align 8              ; 3 uses
  %i.u = add i64 %i.t, %i.r
  %.not.i52 = icmp eq i64 %i.u, 1024
  %i.v = icmp ne i64 %i.t, 1024
  %or.cond.not19.i = and i1 %i.v, %.not.i52
  %i.w = icmp ult i64 %i.r, 256
  %or.cond17.i = and i1 %i.w, %or.cond.not19.i
  br i1 %or.cond17.i, label %purge_fragmented_block.exit.thread, label %purge_fragmented_block.exit

purge_fragmented_block.exit.thread:               ; preds = %.lr.ph
  %i.x = getelementptr i8, ptr %.04656, i64 224
  %i.y = load i32, ptr %i.x, align 8
  %i.z = zext i32 %i.y to i64
  %i.aa = getelementptr [8 x i8], ptr @__per_cpu_offset, i64 %i.z
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = add i64 %i.ab, ptrtoint (ptr @vmap_block_queue to i64)
  %i.ad = inttoptr i64 %i.ac to ptr               ; 2 uses
  store volatile i64 0, ptr %i.q, align 8
  store volatile i64 1024, ptr %i.s, align 8
  %i.ae = getelementptr i8, ptr %.04656, i64 160
  store i64 0, ptr %i.ae, align 8
  %i.af = getelementptr i8, ptr %.04656, i64 168
  store i64 1024, ptr %i.af, align 8
  call void @_raw_spin_lock(ptr noundef %i.ad) #23
  %i.ag = getelementptr i8, ptr %.04656, i64 176
  %i.ah = getelementptr i8, ptr %.04656, i64 184  ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8            ; 2 uses
  %i.aj = load ptr, ptr %i.ag, align 8            ; 2 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 8
  store ptr %i.ai, ptr %i.ak, align 8
  store volatile ptr %i.aj, ptr %i.ai, align 8
  store ptr inttoptr (i64 -2401263026318606046 to ptr), ptr %i.ah, align 8
  call void @_raw_spin_unlock(ptr noundef %i.ad) #23
  %i.al = getelementptr i8, ptr %.04656, i64 208  ; 3 uses
  %i.am = load ptr, ptr %i.b, align 8             ; 2 uses
  store ptr %i.al, ptr %i.b, align 8
  store ptr %3, ptr %i.al, align 8
  %i.an = getelementptr i8, ptr %.04656, i64 216
  store ptr %i.am, ptr %i.an, align 8
  store volatile ptr %i.al, ptr %i.am, align 8
  br label %bb.f

purge_fragmented_block.exit:                      ; preds = %.lr.ph
  %i.ao = getelementptr i8, ptr %.04656, i64 168  ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8            ; 2 uses
  %.not50 = icmp eq i64 %i.ap, 0
  %.not51 = icmp eq i64 %i.t, 1024
  %or.cond = or i1 %.not50, %.not51
  br i1 %or.cond, label %bb.f, label %bb.e

bb.e:                                             ; preds = %purge_fragmented_block.exit
  %i.aq = getelementptr i8, ptr %.04656, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = load i64, ptr %i.ar, align 8            ; 2 uses
  %i.at = getelementptr i8, ptr %.04656, i64 160  ; 2 uses
  %i.au = load i64, ptr %i.at, align 8
  %i.av = shl i64 %i.au, 12
  %i.aw = add i64 %i.av, %i.as
  %i.ax = shl i64 %i.ap, 12
  %i.ay = add i64 %i.as, %i.ax
  %i.az = call i64 @llvm.umin.i64(i64 %i.aw, i64 %.159)
  %i.ba = call i64 @llvm.umax.i64(i64 %i.ay, i64 %.14058)
  store i64 1024, ptr %i.at, align 8
  store i64 0, ptr %i.ao, align 8
  br label %bb.f

bb.f:                                             ; preds = %purge_fragmented_block.exit.thread, %bb.e, %purge_fragmented_block.exit
  %.244 = phi i32 [ %.14357, %purge_fragmented_block.exit.thread ], [ 1, %bb.e ], [ %.14357, %purge_fragmented_block.exit ] ; 2 uses
  %.241 = phi i64 [ %.14058, %purge_fragmented_block.exit.thread ], [ %i.ba, %bb.e ], [ %.14058, %purge_fragmented_block.exit ] ; 2 uses
  %.2 = phi i64 [ %.159, %purge_fragmented_block.exit.thread ], [ %i.az, %bb.e ], [ %.159, %purge_fragmented_block.exit ] ; 2 uses
  call void @_raw_spin_unlock(ptr noundef nonnull %.04656) #23
  %i.bb = call ptr @xa_find_after(ptr noundef %i.o, ptr noundef nonnull %i.a, i64 noundef -1, i32 noundef 8) #23 ; 2 uses
  %.not = icmp eq ptr %i.bb, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !120

._crit_edge:                                      ; preds = %bb.f, %bb.d
  %.143.lcssa = phi i32 [ %.04262, %bb.d ], [ %.244, %bb.f ] ; 2 uses
  %.140.lcssa = phi i64 [ %.03963, %bb.d ], [ %.241, %bb.f ] ; 2 uses
  %.1.lcssa = phi i64 [ %.064, %bb.d ], [ %.2, %bb.f ] ; 2 uses
  call void @__rcu_read_unlock() #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.bc = add nuw nsw i64 %i.g, 1
  %i.bd = and i64 %i.bc, 127                      ; 2 uses
  %i.be = icmp samesign ugt i64 %i.bd, 63
  br i1 %i.be, label %find_next_bit.exit.thread, label %bb.c, !prof !121, !llvm.loop !122
end_hunk_1
begin_hunk_2_@__vmalloc_noprof:bb.a
bb.d:                                             ; preds = %bb.c, %bb.c
  br label %__vmalloc_node_noprof.exit

__vmalloc_node_noprof.exit:                       ; preds = %bb.c, %bb.d
  %i.d = phi i64 [ 14073748835532800, %bb.d ], [ 35184372088832, %bb.c ]
  %i.e = tail call ptr @llvm.returnaddress.p0(i32 0)
  %i.f = add i64 %i.c, -1
  %i.g = add i64 %i.f, %i.d
  %i.h = load i64, ptr @__default_kernel_pte_mask, align 8
  %i.i = and i64 %i.h, -9223372036854775453
  %i.j = tail call noalias ptr @__vmalloc_node_range_noprof(i64 noundef %0, i64 noundef 1, i64 noundef %i.c, i64 noundef %i.g, i32 noundef %.0, i64 %i.i, i64 noundef 0, i32 noundef -1, ptr noundef %i.e) #30, !inline_history !261
  ret ptr %i.j
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc i32 @vmalloc_fix_flags(i32 noundef %0) unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  %i.c = and i32 %0, -5369313                     ; 2 uses
  store i32 %i.c, ptr %i.b, align 4
  %i.d = and i32 %0, 5369312                      ; 2 uses
  store i32 %i.d, ptr %i.a, align 4
  %i.e = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.51, ptr nonnull @.str.1, i32 3964, i32 2323, i64 16) #24, !srcloc !262
  call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.e, i32 noundef %i.c, ptr noundef nonnull %i.b, i32 noundef %i.d, ptr noundef nonnull %i.a) #23
  call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #24, !srcloc !263
  %i.f = load i32, ptr %i.a, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  ret i32 %i.f
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define dso_local noalias ptr @vmalloc_noprof(i64 noundef %0) #10 align 16 prefalign(16) {
bb.a:
  %i.a = load i64, ptr @vmalloc_base, align 8     ; 2 uses
  callbr void asm sideeffect "# ALT: oldinstr\0A771:\0A\09# ALT: oldinstr\0A771:\0A\09jmp 6f\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 3*32+21)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09jmp ${4:l}\0A775:\0A.popsection\0A\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ${0:c}\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09\0A775:\0A.popsection\0A.pushsection .altinstr_aux,\22ax\22\0A6:\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A testb $1, ${2:a}\0A jnz ${3:l}\0A jmp ${4:l}\0A.popsection\0A", "i,i,i,!i,!i,~{dirflag},~{fpsr},~{flags}"(i16 528, i32 1, ptr nonnull getelementptr inbounds nuw (i8, ptr @boot_cpu_data, i64 114)) #24
          to label %bb.b [label %bb.b, label %__vmalloc_node_noprof.exit], !inline_history !261, !srcloc !26

bb.b:                                             ; preds = %bb.a, %bb.a
  br label %__vmalloc_node_noprof.exit

__vmalloc_node_noprof.exit:                       ; preds = %bb.a, %bb.b
  %i.b = phi i64 [ 14073748835532800, %bb.b ], [ 35184372088832, %bb.a ]
  %i.c = tail call ptr @llvm.returnaddress.p0(i32 0)
  %i.d = add i64 %i.a, -1
  %i.e = add i64 %i.d, %i.b
  %i.f = load i64, ptr @__default_kernel_pte_mask, align 8
  %i.g = and i64 %i.f, -9223372036854775453
  %i.h = tail call noalias ptr @__vmalloc_node_range_noprof(i64 noundef %0, i64 noundef 1, i64 noundef %i.a, i64 noundef %i.e, i32 noundef 3264, i64 %i.g, i64 noundef 0, i32 noundef -1, ptr noundef %i.c) #30, !inline_history !261
  ret ptr %i.h
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define dso_local noalias ptr @vmalloc_huge_node_noprof(i64 noundef %0, i32 noundef %1, i32 noundef %2) #10 align 16 prefalign(16) {
bb.a:
  %i.a = and i32 %1, -5369313
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b, !prof !17

bb.b:                                             ; preds = %bb.a
  %i.b = tail call fastcc i32 @vmalloc_fix_flags(i32 noundef %1) #26, !srcloc !264
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %i.b, %bb.b ], [ %1, %bb.a ]
  %i.c = load i64, ptr @vmalloc_base, align 8     ; 2 uses
  callbr void asm sideeffect "# ALT: oldinstr\0A771:\0A\09# ALT: oldinstr\0A771:\0A\09jmp 6f\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 3*32+21)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09jmp ${4:l}\0A775:\0A.popsection\0A\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ${0:c}\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09\0A775:\0A.popsection\0A.pushsection .altinstr_aux,\22ax\22\0A6:\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A testb $1, ${2:a}\0A jnz ${3:l}\0A jmp ${4:l}\0A.popsection\0A", "i,i,i,!i,!i,~{dirflag},~{fpsr},~{flags}"(i16 528, i32 1, ptr nonnull getelementptr inbounds nuw (i8, ptr @boot_cpu_data, i64 114)) #24
          to label %bb.d [label %bb.d, label %_static_cpu_has.exit], !srcloc !26

bb.d:                                             ; preds = %bb.c, %bb.c
  br label %_static_cpu_has.exit

_static_cpu_has.exit:                             ; preds = %bb.c, %bb.d
  %i.d = phi i64 [ 14073748835532800, %bb.d ], [ 35184372088832, %bb.c ]
  %i.e = add i64 %i.c, -1
  %i.f = add i64 %i.e, %i.d
  %i.g = load i64, ptr @__default_kernel_pte_mask, align 8
  %i.h = and i64 %i.g, -9223372036854775453
  %i.i = tail call ptr @llvm.returnaddress.p0(i32 0)
  %i.j = tail call noalias ptr @__vmalloc_node_range_noprof(i64 noundef %0, i64 noundef 1, i64 noundef %i.c, i64 noundef %i.f, i32 noundef %.0, i64 %i.h, i64 noundef 1024, i32 noundef %2, ptr noundef %i.i) #30
  ret ptr %i.j
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define dso_local noalias ptr @vzalloc_noprof(i64 noundef %0) #10 align 16 prefalign(16) {
bb.a:
  %i.a = load i64, ptr @vmalloc_base, align 8     ; 2 uses
  callbr void asm sideeffect "# ALT: oldinstr\0A771:\0A\09# ALT: oldinstr\0A771:\0A\09jmp 6f\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 3*32+21)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09jmp ${4:l}\0A775:\0A.popsection\0A\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ${0:c}\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09\0A775:\0A.popsection\0A.pushsection .altinstr_aux,\22ax\22\0A6:\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A testb $1, ${2:a}\0A jnz ${3:l}\0A jmp ${4:l}\0A.popsection\0A", "i,i,i,!i,!i,~{dirflag},~{fpsr},~{flags}"(i16 528, i32 1, ptr nonnull getelementptr inbounds nuw (i8, ptr @boot_cpu_data, i64 114)) #24
          to label %bb.b [label %bb.b, label %__vmalloc_node_noprof.exit], !inline_history !261, !srcloc !26

bb.b:                                             ; preds = %bb.a, %bb.a
  br label %__vmalloc_node_noprof.exit

__vmalloc_node_noprof.exit:                       ; preds = %bb.a, %bb.b
  %i.b = phi i64 [ 14073748835532800, %bb.b ], [ 35184372088832, %bb.a ]
  %i.c = tail call ptr @llvm.returnaddress.p0(i32 0)
  %i.d = add i64 %i.a, -1
  %i.e = add i64 %i.d, %i.b
  %i.f = load i64, ptr @__default_kernel_pte_mask, align 8
  %i.g = and i64 %i.f, -9223372036854775453
  %i.h = tail call noalias ptr @__vmalloc_node_range_noprof(i64 noundef %0, i64 noundef 1, i64 noundef %i.a, i64 noundef %i.e, i32 noundef 3520, i64 %i.g, i64 noundef 0, i32 noundef -1, ptr noundef %i.c) #30, !inline_history !261
  ret ptr %i.h
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define dso_local noalias ptr @vmalloc_user_noprof(i64 noundef %0) #10 align 16 prefalign(16) {
bb.a:
  %i.a = load i64, ptr @vmalloc_base, align 8     ; 2 uses
  callbr void asm sideeffect "# ALT: oldinstr\0A771:\0A\09# ALT: oldinstr\0A771:\0A\09jmp 6f\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 3*32+21)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09jmp ${4:l}\0A775:\0A.popsection\0A\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ${0:c}\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09\0A775:\0A.popsection\0A.pushsection .altinstr_aux,\22ax\22\0A6:\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A testb $1, ${2:a}\0A jnz ${3:l}\0A jmp ${4:l}\0A.popsection\0A", "i,i,i,!i,!i,~{dirflag},~{fpsr},~{flags}"(i16 528, i32 1, ptr nonnull getelementptr inbounds nuw (i8, ptr @boot_cpu_data, i64 114)) #24
          to label %bb.b [label %bb.b, label %_static_cpu_has.exit], !srcloc !26

bb.b:                                             ; preds = %bb.a, %bb.a
  br label %_static_cpu_has.exit

_static_cpu_has.exit:                             ; preds = %bb.a, %bb.b
  %i.b = phi i64 [ 14073748835532800, %bb.b ], [ 35184372088832, %bb.a ]
  %i.c = add i64 %i.a, -1
  %i.d = add i64 %i.c, %i.b
  %i.e = load i64, ptr @__default_kernel_pte_mask, align 8
  %i.f = and i64 %i.e, -9223372036854775453
  %i.g = tail call ptr @llvm.returnaddress.p0(i32 0)
  %i.h = tail call noalias ptr @__vmalloc_node_range_noprof(i64 noundef %0, i64 noundef 4096, i64 noundef %i.a, i64 noundef %i.d, i32 noundef 3520, i64 %i.f, i64 noundef 8, i32 noundef -1, ptr noundef %i.g) #30
  ret ptr %i.h
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define dso_local noalias ptr @vmalloc_node_noprof(i64 noundef %0, i32 noundef %1) #10 align 16 prefalign(16) {
bb.a:
  %i.a = load i64, ptr @vmalloc_base, align 8     ; 2 uses
  callbr void asm sideeffect "# ALT: oldinstr\0A771:\0A\09# ALT: oldinstr\0A771:\0A\09jmp 6f\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 3*32+21)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09jmp ${4:l}\0A775:\0A.popsection\0A\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ${0:c}\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09\0A775:\0A.popsection\0A.pushsection .altinstr_aux,\22ax\22\0A6:\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A testb $1, ${2:a}\0A jnz ${3:l}\0A jmp ${4:l}\0A.popsection\0A", "i,i,i,!i,!i,~{dirflag},~{fpsr},~{flags}"(i16 528, i32 1, ptr nonnull getelementptr inbounds nuw (i8, ptr @boot_cpu_data, i64 114)) #24
          to label %bb.b [label %bb.b, label %__vmalloc_node_noprof.exit], !inline_history !261, !srcloc !26

bb.b:                                             ; preds = %bb.a, %bb.a
  br label %__vmalloc_node_noprof.exit

__vmalloc_node_noprof.exit:                       ; preds = %bb.a, %bb.b
  %i.b = phi i64 [ 14073748835532800, %bb.b ], [ 35184372088832, %bb.a ]
  %i.c = tail call ptr @llvm.returnaddress.p0(i32 0)
  %i.d = add i64 %i.a, -1
  %i.e = add i64 %i.d, %i.b
  %i.f = load i64, ptr @__default_kernel_pte_mask, align 8
  %i.g = and i64 %i.f, -9223372036854775453
  %i.h = tail call noalias ptr @__vmalloc_node_range_noprof(i64 noundef %0, i64 noundef 1, i64 noundef %i.a, i64 noundef %i.e, i32 noundef 3264, i64 %i.g, i64 noundef 0, i32 noundef %1, ptr noundef %i.c) #30, !inline_history !261
  ret ptr %i.h
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define dso_local noalias ptr @vzalloc_node_noprof(i64 noundef %0, i32 noundef %1) #10 align 16 prefalign(16) {
bb.a:
  %i.a = load i64, ptr @vmalloc_base, align 8     ; 2 uses
  callbr void asm sideeffect "# ALT: oldinstr\0A771:\0A\09# ALT: oldinstr\0A771:\0A\09jmp 6f\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 3*32+21)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09jmp ${4:l}\0A775:\0A.popsection\0A\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ${0:c}\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09\0A775:\0A.popsection\0A.pushsection .altinstr_aux,\22ax\22\0A6:\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A testb $1, ${2:a}\0A jnz ${3:l}\0A jmp ${4:l}\0A.popsection\0A", "i,i,i,!i,!i,~{dirflag},~{fpsr},~{flags}"(i16 528, i32 1, ptr nonnull getelementptr inbounds nuw (i8, ptr @boot_cpu_data, i64 114)) #24
          to label %bb.b [label %bb.b, label %__vmalloc_node_noprof.exit], !inline_history !261, !srcloc !26

bb.b:                                             ; preds = %bb.a, %bb.a
  br label %__vmalloc_node_noprof.exit

__vmalloc_node_noprof.exit:                       ; preds = %bb.a, %bb.b
  %i.b = phi i64 [ 14073748835532800, %bb.b ], [ 35184372088832, %bb.a ]
  %i.c = tail call ptr @llvm.returnaddress.p0(i32 0)
  %i.d = add i64 %i.a, -1
  %i.e = add i64 %i.d, %i.b
  %i.f = load i64, ptr @__default_kernel_pte_mask, align 8
  %i.g = and i64 %i.f, -9223372036854775453
  %i.h = tail call noalias ptr @__vmalloc_node_range_noprof(i64 noundef %0, i64 noundef 1, i64 noundef %i.a, i64 noundef %i.e, i32 noundef 3520, i64 %i.g, i64 noundef 0, i32 noundef %1, ptr noundef %i.c) #30, !inline_history !261
  ret ptr %i.h
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(1)
define dso_local ptr @vrealloc_node_align_noprof(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4) #11 align 16 prefalign(16) {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @vfree(ptr noundef %0) #26
  br label %bb.aa

bb.c:                                             ; preds = %bb.a
  %.not110 = icmp eq ptr %0, null                 ; 2 uses
  br i1 %.not110, label %bb.x, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.a = ptrtoint ptr %0 to i64                   ; 8 uses
  %.b.i.i = load i1, ptr @vmap_initialized, align 1
  br i1 %.b.i.i, label %bb.e, label %find_vm_area.exit.thread, !prof !17

bb.e:                                             ; preds = %bb.d
  %.b.i.i.i = load i1, ptr @vmap_zone_size, align 4
  %i.b = lshr i64 %i.a, 16                        ; 2 uses
  %i.c = select i1 %.b.i.i.i, i64 %i.b, i64 %i.a
  %i.d = load i32, ptr @nr_vmap_nodes, align 4
  %i.e = zext nneg i32 %i.d to i64
  %i.f = urem i64 %i.c, %i.e
  %i.g = trunc nuw nsw i64 %i.f to i32            ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.i, %bb.e
  %.0.i.i = phi i32 [ %i.g, %bb.e ], [ %i.v, %bb.i ] ; 2 uses
  %i.h = load ptr, ptr @vmap_nodes, align 8
  %5 = zext nneg i32 %.0.i.i to i64
  %i.i = getelementptr [6272 x i8], ptr %i.h, i64 %5 ; 2 uses
  %i.j = getelementptr i8, ptr %i.i, i64 6152
  %i.k = getelementptr i8, ptr %i.i, i64 6176     ; 3 uses
  tail call void @_raw_spin_lock(ptr noundef %i.k) #23
  %.val.i.i = load ptr, ptr %i.j, align 8         ; 2 uses
  %.not6.i.i.i = icmp eq ptr %.val.i.i, null
  br i1 %.not6.i.i.i, label %__find_vmap_area.exit.thread.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.f, %bb.h
  %.0157.i.i.i = phi ptr [ %.116.i.i.i, %bb.h ], [ %.val.i.i, %bb.f ] ; 5 uses
  %i.l = getelementptr i8, ptr %.0157.i.i.i, i64 -16
  %i.m = load i64, ptr %i.l, align 8
  %i.n = icmp ugt i64 %i.m, %i.a
  br i1 %i.n, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i
  %i.o = getelementptr i8, ptr %.0157.i.i.i, i64 -8
  %i.p = load i64, ptr %i.o, align 8
  %.not19.i.i.i = icmp ugt i64 %i.p, %i.a
  br i1 %.not19.i.i.i, label %__find_vmap_area.exit.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph.i.i.i
  %.sink.i.i.i = phi i64 [ 16, %.lr.ph.i.i.i ], [ 8, %bb.g ]
  %i.q = getelementptr i8, ptr %.0157.i.i.i, i64 %.sink.i.i.i
  %.116.i.i.i = load ptr, ptr %i.q, align 8       ; 2 uses
  %.not.i.i.i = icmp eq ptr %.116.i.i.i, null
  br i1 %.not.i.i.i, label %__find_vmap_area.exit.thread.i.i, label %.lr.ph.i.i.i, !llvm.loop !46

__find_vmap_area.exit.thread.i.i:                 ; preds = %bb.h, %bb.f
  tail call void @_raw_spin_unlock(ptr noundef %i.k) #23
  br label %bb.i

__find_vmap_area.exit.i.i:                        ; preds = %bb.g
  %i.r = getelementptr i8, ptr %.0157.i.i.i, i64 -16
  tail call void @_raw_spin_unlock(ptr noundef %i.k) #23
  %.not.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i, label %bb.i, label %find_vm_area.exit

bb.i:                                             ; preds = %__find_vmap_area.exit.i.i, %__find_vmap_area.exit.thread.i.i
  %i.s = load i32, ptr @nr_vmap_nodes, align 4    ; 2 uses
  %i.t = add i32 %.0.i.i, -1
  %i.u = add i32 %i.t, %i.s
  %i.v = urem i32 %i.u, %i.s                      ; 2 uses
  %.not13.i.i = icmp eq i32 %i.v, %i.g
  br i1 %.not13.i.i, label %find_vm_area.exit.thread, label %bb.f, !llvm.loop !47

find_vm_area.exit:                                ; preds = %__find_vmap_area.exit.i.i
  %i.w = getelementptr i8, ptr %.0157.i.i.i, i64 40
  %i.x = load ptr, ptr %i.w, align 8              ; 8 uses
  %.not111 = icmp eq ptr %i.x, null
  br i1 %.not111, label %find_vm_area.exit.thread, label %bb.j, !prof !86

find_vm_area.exit.thread:                         ; preds = %bb.i, %bb.d, %find_vm_area.exit
  %i.y = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.10, ptr nonnull @.str.1, i32 4331, i32 2321, i64 16) #24, !srcloc !265
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.y, ptr noundef nonnull %0) #23
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #24, !srcloc !266
  br label %bb.aa

bb.j:                                             ; preds = %find_vm_area.exit
  %i.z = getelementptr i8, ptr %i.x, i64 24       ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = and i64 %i.aa, 64
  %.not.i = icmp eq i64 %i.ab, 0
  %i.ac = getelementptr i8, ptr %i.x, i64 16
  %i.ad = load i64, ptr %i.ac, align 8            ; 2 uses
  %i.ae = add i64 %i.ad, -4096
  %.0.i124 = select i1 %.not.i, i64 %i.ae, i64 %i.ad
  %i.af = getelementptr i8, ptr %i.x, i64 64      ; 3 uses
  %i.ag = load i64, ptr %i.af, align 8            ; 5 uses
  %i.ah = icmp ult i64 %.0.i124, %i.ag
  br i1 %i.ah, label %bb.k, label %.critedge, !prof !18

bb.k:                                             ; preds = %bb.j
  %i.ai = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.11, ptr nonnull @.str.1, i32 4338, i32 2321, i64 16) #24, !srcloc !267
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.ai, ptr noundef nonnull %0) #23
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #24, !srcloc !268
  br label %bb.aa

.critedge:                                        ; preds = %bb.j
  %i.aj = add i64 %2, -1
  %i.ak = and i64 %i.aj, %i.a
  %.not112 = icmp eq i64 %i.ak, 0
  br i1 %.not112, label %.critedge122, label %bb.l, !prof !17

bb.l:                                             ; preds = %.critedge
  %i.al = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.12, ptr nonnull @.str.1, i32 4341, i32 2321, i64 16) #24, !srcloc !269
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.al, i64 noundef %2) #23
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #24, !srcloc !270
  br label %bb.aa

.critedge122:                                     ; preds = %.critedge
  %i.am = and i32 %3, 2097152
  %.not113 = icmp eq i32 %i.am, 0
  br i1 %.not113, label %bb.o, label %bb.m, !prof !17

bb.m:                                             ; preds = %.critedge122
  %.not114 = icmp eq i32 %4, -1
  br i1 %.not114, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.an = tail call ptr @vmalloc_to_page(ptr noundef nonnull %0) #26
  %.val123 = load i64, ptr %i.an, align 16
  %i.ao = lshr i64 %.val123, 58
  %i.ap = trunc nuw nsw i64 %i.ao to i32
  %.not115 = icmp eq i32 %4, %i.ap
  br i1 %.not115, label %bb.o, label %bb.x

bb.o:                                             ; preds = %.critedge122, %bb.m, %bb.n
  %.not116 = icmp ugt i64 %1, %i.ag
  br i1 %.not116, label %bb.v, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aq = add i64 %1, 4095                        ; 2 uses
  %i.ar = lshr i64 %i.aq, 12
  %i.as = trunc i64 %i.ar to i32                  ; 3 uses
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @init_on_free, i1 false) #24
          to label %want_init_on_free.exit [label %want_init_on_free.exit.thread], !srcloc !176

want_init_on_free.exit:                           ; preds = %bb.p
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @init_on_alloc, i1 false) #24
          to label %want_init_on_alloc.exit [label %want_init_on_free.exit.thread], !srcloc !176

want_init_on_alloc.exit:                          ; preds = %want_init_on_free.exit
  %i.at = and i32 %3, 256
  %.not135 = icmp eq i32 %i.at, 0
  br i1 %.not135, label %bb.q, label %want_init_on_free.exit.thread

want_init_on_free.exit.thread:                    ; preds = %want_init_on_free.exit, %bb.p, %want_init_on_alloc.exit
  %i.au = getelementptr i8, ptr %0, i64 %1
  %i.av = sub nuw i64 %i.ag, %1
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.au, i8 0, i64 %i.av, i1 false)
  br label %bb.q

bb.q:                                             ; preds = %want_init_on_free.exit.thread, %want_init_on_alloc.exit
  %i.aw = getelementptr i8, ptr %i.x, i64 44      ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4            ; 3 uses
  %i.ay = icmp ugt i32 %i.ax, %i.as
  br i1 %i.ay, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  %i.az = getelementptr i8, ptr %i.x, i64 40
  %.val = load i32, ptr %i.az, align 8
  %.not118 = icmp eq i32 %.val, 0
  br i1 %.not118, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.ba = load i64, ptr %i.z, align 8
  %i.bb = and i64 %i.ba, 264
  %.not119 = icmp eq i64 %i.bb, 0
  %i.bc = and i32 %3, 192
  %i.bd = icmp eq i32 %i.bc, 192
  %or.cond = and i1 %i.bd, %.not119
  br i1 %or.cond, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.be = load ptr, ptr @vmap_nodes, align 8
  %.b.i.i128 = load i1, ptr @vmap_zone_size, align 4
  %i.bf = select i1 %.b.i.i128, i64 %i.b, i64 %i.a
  %i.bg = load i32, ptr @nr_vmap_nodes, align 4
  %i.bh = zext nneg i32 %i.bg to i64
  %i.bi = urem i64 %i.bf, %i.bh
  %i.bj = getelementptr [6272 x i8], ptr %i.be, i64 %i.bi
  %i.bk = getelementptr i8, ptr %i.bj, i64 6176   ; 2 uses
  tail call void @_raw_spin_lock(ptr noundef %i.bk) #23
  store i32 %i.as, ptr %i.aw, align 4
  tail call void @_raw_spin_unlock(ptr noundef %i.bk) #23
  %i.bl = and i64 %i.aq, 17592186040320
  %i.bm = add i64 %i.bl, %i.a                     ; 2 uses
  %i.bn = zext i32 %i.ax to i64
  %i.bo = shl nuw nsw i64 %i.bn, 12
  %i.bp = add i64 %i.bo, %i.a                     ; 2 uses
  tail call void @__vunmap_range_noflush(i64 noundef %i.bm, i64 noundef %i.bp) #26
  tail call void @flush_tlb_kernel_range(i64 noundef %i.bm, i64 noundef %i.bp) #23
  tail call fastcc void @vm_area_free_pages(ptr noundef nonnull %i.x, i32 noundef %i.as, i32 noundef %i.ax) #26, !srcloc !271
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r, %bb.q
  store i64 %1, ptr %i.af, align 8
  br label %bb.aa

bb.v:                                             ; preds = %bb.o
  %i.bq = getelementptr i8, ptr %i.x, i64 44
  %i.br = load i32, ptr %i.bq, align 4
  %i.bs = shl i32 %i.br, 12
  %i.bt = zext i32 %i.bs to i64
  %.not117 = icmp ugt i64 %1, %i.bt
  br i1 %.not117, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  store i64 %1, ptr %i.af, align 8
  br label %bb.aa

bb.x:                                             ; preds = %bb.v, %bb.c, %bb.n
  %.0103 = phi i64 [ %i.ag, %bb.n ], [ %i.ag, %bb.v ], [ 0, %bb.c ]
  %i.bu = tail call ptr @llvm.returnaddress.p0(i32 0)
  %i.bv = load i64, ptr @vmalloc_base, align 8    ; 2 uses
  callbr void asm sideeffect "# ALT: oldinstr\0A771:\0A\09# ALT: oldinstr\0A771:\0A\09jmp 6f\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 3*32+21)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09jmp ${4:l}\0A775:\0A.popsection\0A\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ${0:c}\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09\0A775:\0A.popsection\0A.pushsection .altinstr_aux,\22ax\22\0A6:\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A testb $1, ${2:a}\0A jnz ${3:l}\0A jmp ${4:l}\0A.popsection\0A", "i,i,i,!i,!i,~{dirflag},~{fpsr},~{flags}"(i16 528, i32 1, ptr nonnull getelementptr inbounds nuw (i8, ptr @boot_cpu_data, i64 114)) #24
          to label %bb.y [label %bb.y, label %__vmalloc_node_noprof.exit], !inline_history !261, !srcloc !26

bb.y:                                             ; preds = %bb.x, %bb.x
end_hunk_2
begin_hunk_3_@vread_iter:bb.a
.thread163.preheader:                             ; preds = %.thread154, %bb.a, %bb.aw
  %.016.i141.ph = phi i64 [ %spec.select, %bb.aw ], [ %spec.select, %bb.a ], [ %.296, %.thread154 ]
  br label %.thread163

.thread163:                                       ; preds = %.thread163.preheader, %bb.ax
  %.016.i141 = phi i64 [ %i.ha, %bb.ax ], [ %.016.i141.ph, %.thread163.preheader ] ; 3 uses
  %.not.i142 = icmp eq i64 %.016.i141, 0
  br i1 %.not.i142, label %zero_iter.exit144, label %bb.ax

bb.ax:                                            ; preds = %.thread163
  %i.gx = tail call i64 @llvm.umin.i64(i64 %.016.i141, i64 4096) ; 2 uses
  %i.gy = load ptr, ptr @__zero_page, align 8
  %i.gz = tail call i64 @copy_page_to_iter_nofault(ptr noundef %i.gy, i32 noundef 0, i64 noundef %i.gx, ptr noundef %0) #23 ; 2 uses
  %i.ha = sub i64 %.016.i141, %i.gz               ; 2 uses
  %i.hb = icmp ult i64 %i.gz, %i.gx
  br i1 %i.hb, label %zero_iter.exit144, label %.thread163

.thread148:                                       ; preds = %zero_iter.exit, %vmap_ram_vread_iter.exit, %.preheader175
  %.397153 = phi i64 [ 0, %.preheader175 ], [ %i.gr, %vmap_ram_vread_iter.exit ], [ %i.ba, %zero_iter.exit ]
  %i.hc = getelementptr i8, ptr %.089, i64 6176
  tail call void @_raw_spin_unlock(ptr noundef %i.hc) #23
  br label %zero_iter.exit144

zero_iter.exit144:                                ; preds = %bb.ax, %.thread163, %.thread148
  %.1.i143.pn = phi i64 [ %.397153, %.thread148 ], [ 0, %.thread163 ], [ %i.ha, %bb.ax ]
  %.085 = sub i64 %spec.select, %.1.i143.pn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret i64 %.085
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc ptr @find_vmap_area_exceed_addr_lock(i64 noundef %0, ptr nofree noundef writeonly captures(none) %1) unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr @vmap_nodes, align 8       ; 3 uses
  %i.b = load i32, ptr @nr_vmap_nodes, align 4
  %i.c = zext nneg i32 %i.b to i64
  %i.d = getelementptr [6272 x i8], ptr %i.a, i64 %i.c
  %i.e = icmp ult ptr %i.a, %i.d
  br i1 %i.e, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.a, %.lr.ph.backedge
  %.041 = phi ptr [ %.041.be, %.lr.ph.backedge ], [ %i.a, %bb.a ] ; 3 uses
  %.02140 = phi i64 [ %.02140.be, %.lr.ph.backedge ], [ 0, %bb.a ] ; 4 uses
  %i.f = getelementptr i8, ptr %.041, i64 6152
  %i.g = getelementptr i8, ptr %.041, i64 6176    ; 2 uses
  tail call void @_raw_spin_lock(ptr noundef %i.g) #23
  %.val27 = load ptr, ptr %i.f, align 8           ; 2 uses
  %.not4.i = icmp eq ptr %.val27, null
  br i1 %.not4.i, label %__find_vmap_area_exceed_addr.exit.thread, label %.lr.ph.i

__find_vmap_area_exceed_addr.exit.thread:         ; preds = %.lr.ph
  store ptr null, ptr %1, align 8
  br label %bb.e

.lr.ph.i:                                         ; preds = %.lr.ph, %bb.c
  %.0146.i = phi ptr [ %.1.i, %bb.c ], [ null, %.lr.ph ]
  %.0155.i = phi ptr [ %.116.i, %bb.c ], [ %.val27, %.lr.ph ] ; 3 uses
  %i.h = getelementptr i8, ptr %.0155.i, i64 -8
  %i.i = load i64, ptr %i.h, align 8
  %i.j = icmp ugt i64 %i.i, %0
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i
  %i.k = getelementptr i8, ptr %.0155.i, i64 -16  ; 3 uses
  %i.l = load i64, ptr %i.k, align 8
  %.not19.i = icmp ugt i64 %i.l, %0
  br i1 %.not19.i, label %bb.c, label %__find_vmap_area_exceed_addr.exit

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %.sink.i = phi i64 [ 16, %bb.b ], [ 8, %.lr.ph.i ]
  %.1.i = phi ptr [ %i.k, %bb.b ], [ %.0146.i, %.lr.ph.i ] ; 2 uses
  %i.m = getelementptr i8, ptr %.0155.i, i64 %.sink.i
  %.116.i = load ptr, ptr %i.m, align 8           ; 2 uses
  %.not.i = icmp eq ptr %.116.i, null
  br i1 %.not.i, label %__find_vmap_area_exceed_addr.exit, label %.lr.ph.i

__find_vmap_area_exceed_addr.exit:                ; preds = %bb.b, %bb.c
  %.3.i = phi ptr [ %.1.i, %bb.c ], [ %i.k, %bb.b ] ; 3 uses
  store ptr %.3.i, ptr %1, align 8
  %.not25 = icmp eq ptr %.3.i, null
  br i1 %.not25, label %bb.e, label %bb.d

bb.d:                                             ; preds = %__find_vmap_area_exceed_addr.exit
  %.pre = load i64, ptr %.3.i, align 8
  %i.n = freeze i64 %.pre                         ; 2 uses
  %i.o = add i64 %.02140, -1
  %or.cond.not = icmp ult i64 %i.o, %i.n
  %spec.select = select i1 %or.cond.not, i64 %.02140, i64 %i.n
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %__find_vmap_area_exceed_addr.exit.thread, %__find_vmap_area_exceed_addr.exit
  %.1 = phi i64 [ %.02140, %__find_vmap_area_exceed_addr.exit.thread ], [ %spec.select, %bb.d ], [ %.02140, %__find_vmap_area_exceed_addr.exit ] ; 6 uses
  tail call void @_raw_spin_unlock(ptr noundef %i.g) #23
  %i.p = getelementptr i8, ptr %.041, i64 6272    ; 2 uses
  %i.q = load ptr, ptr @vmap_nodes, align 8       ; 2 uses
  %i.r = load i32, ptr @nr_vmap_nodes, align 4
  %i.s = zext nneg i32 %i.r to i64                ; 2 uses
  %i.t = getelementptr [6272 x i8], ptr %i.q, i64 %i.s
  %i.u = icmp ult ptr %i.p, %i.t
  br i1 %i.u, label %.lr.ph.backedge, label %._crit_edge

.lr.ph.backedge:                                  ; preds = %bb.e, %bb.i
  %.041.be = phi ptr [ %i.p, %bb.e ], [ %i.ai, %bb.i ]
  %.02140.be = phi i64 [ %.1, %bb.e ], [ 0, %bb.i ]
  br label %.lr.ph, !llvm.loop !280

._crit_edge:                                      ; preds = %bb.e
  %.not = icmp eq i64 %.1, 0
  br i1 %.not, label %._crit_edge.thread, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %.b.i.i = load i1, ptr @vmap_zone_size, align 4
  %i.v = lshr i64 %.1, 16
  %i.w = select i1 %.b.i.i, i64 %i.v, i64 %.1
  %i.x = urem i64 %i.w, %i.s
  %i.y = getelementptr [6272 x i8], ptr %i.q, i64 %i.x ; 3 uses
  %i.z = getelementptr i8, ptr %i.y, i64 6152
  %i.aa = getelementptr i8, ptr %i.y, i64 6176    ; 2 uses
  tail call void @_raw_spin_lock(ptr noundef %i.aa) #23
  %.val = load ptr, ptr %i.z, align 8             ; 2 uses
  %.not6.i = icmp eq ptr %.val, null
  br i1 %.not6.i, label %__find_vmap_area.exit.thread, label %.lr.ph.i28

.lr.ph.i28:                                       ; preds = %bb.f, %bb.h
  %.0157.i = phi ptr [ %.116.i31, %bb.h ], [ %.val, %bb.f ] ; 4 uses
  %i.ab = getelementptr i8, ptr %.0157.i, i64 -16
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = icmp ugt i64 %i.ac, %.1
  br i1 %i.ad, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i28
  %i.ae = getelementptr i8, ptr %.0157.i, i64 -8
  %i.af = load i64, ptr %i.ae, align 8
  %.not19.i29 = icmp ugt i64 %i.af, %.1
  br i1 %.not19.i29, label %__find_vmap_area.exit, label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph.i28
  %.sink.i30 = phi i64 [ 16, %.lr.ph.i28 ], [ 8, %bb.g ]
  %i.ag = getelementptr i8, ptr %.0157.i, i64 %.sink.i30
  %.116.i31 = load ptr, ptr %i.ag, align 8        ; 2 uses
  %.not.i32 = icmp eq ptr %.116.i31, null
  br i1 %.not.i32, label %__find_vmap_area.exit.thread, label %.lr.ph.i28, !llvm.loop !46

__find_vmap_area.exit.thread:                     ; preds = %bb.h, %bb.f
  store ptr null, ptr %1, align 8
  br label %bb.i

__find_vmap_area.exit:                            ; preds = %bb.g
  %i.ah = getelementptr i8, ptr %.0157.i, i64 -16 ; 2 uses
  store ptr %i.ah, ptr %1, align 8
  %.not24 = icmp eq ptr %i.ah, null
  br i1 %.not24, label %bb.i, label %._crit_edge.thread

bb.i:                                             ; preds = %__find_vmap_area.exit.thread, %__find_vmap_area.exit
  tail call void @_raw_spin_unlock(ptr noundef %i.aa) #23
  %i.ai = load ptr, ptr @vmap_nodes, align 8      ; 3 uses
  %i.aj = load i32, ptr @nr_vmap_nodes, align 4
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = getelementptr [6272 x i8], ptr %i.ai, i64 %i.ak
  %i.am = icmp ult ptr %i.ai, %i.al
  br i1 %i.am, label %.lr.ph.backedge, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %__find_vmap_area.exit, %._crit_edge, %bb.i, %bb.a
  %.022 = phi ptr [ null, %bb.a ], [ %i.y, %__find_vmap_area.exit ], [ null, %bb.i ], [ null, %._crit_edge ]
  ret ptr %.022
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @remap_vmalloc_range_partial(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = shl i64 %3, 12                           ; 2 uses
  %i.b = icmp ugt i64 %3, 4503599627370495
  br i1 %i.b, label %find_vm_area.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = add i64 %4, 4095
  %i.d = and i64 %i.c, -4096                      ; 2 uses
  %i.e = ptrtoint ptr %2 to i64                   ; 5 uses
  %i.f = or i64 %1, %i.e
  %i.g = and i64 %i.f, 4095
  %or.cond = icmp eq i64 %i.g, 0
  br i1 %or.cond, label %bb.c, label %find_vm_area.exit.thread

bb.c:                                             ; preds = %bb.b
  %.b.i.i = load i1, ptr @vmap_initialized, align 1
  br i1 %.b.i.i, label %bb.d, label %find_vm_area.exit.thread, !prof !17

bb.d:                                             ; preds = %bb.c
  %.b.i.i.i = load i1, ptr @vmap_zone_size, align 4
  %i.h = lshr i64 %i.e, 16
  %i.i = select i1 %.b.i.i.i, i64 %i.h, i64 %i.e
  %i.j = load i32, ptr @nr_vmap_nodes, align 4
  %i.k = zext nneg i32 %i.j to i64
  %i.l = urem i64 %i.i, %i.k
  %i.m = trunc nuw nsw i64 %i.l to i32            ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.h, %bb.d
  %.0.i.i = phi i32 [ %i.m, %bb.d ], [ %i.ab, %bb.h ] ; 2 uses
  %i.n = load ptr, ptr @vmap_nodes, align 8
  %5 = zext nneg i32 %.0.i.i to i64
  %i.o = getelementptr [6272 x i8], ptr %i.n, i64 %5 ; 2 uses
  %i.p = getelementptr i8, ptr %i.o, i64 6152
  %i.q = getelementptr i8, ptr %i.o, i64 6176     ; 3 uses
  tail call void @_raw_spin_lock(ptr noundef %i.q) #23
  %.val.i.i = load ptr, ptr %i.p, align 8         ; 2 uses
  %.not6.i.i.i = icmp eq ptr %.val.i.i, null
  br i1 %.not6.i.i.i, label %__find_vmap_area.exit.thread.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %bb.g
  %.0157.i.i.i = phi ptr [ %.116.i.i.i, %bb.g ], [ %.val.i.i, %bb.e ] ; 5 uses
  %i.r = getelementptr i8, ptr %.0157.i.i.i, i64 -16
  %i.s = load i64, ptr %i.r, align 8
  %i.t = icmp ugt i64 %i.s, %i.e
  br i1 %i.t, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.u = getelementptr i8, ptr %.0157.i.i.i, i64 -8
  %i.v = load i64, ptr %i.u, align 8
  %.not19.i.i.i = icmp ugt i64 %i.v, %i.e
  br i1 %.not19.i.i.i, label %__find_vmap_area.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.i.i.i
  %.sink.i.i.i = phi i64 [ 16, %.lr.ph.i.i.i ], [ 8, %bb.f ]
  %i.w = getelementptr i8, ptr %.0157.i.i.i, i64 %.sink.i.i.i
  %.116.i.i.i = load ptr, ptr %i.w, align 8       ; 2 uses
  %.not.i.i.i = icmp eq ptr %.116.i.i.i, null
  br i1 %.not.i.i.i, label %__find_vmap_area.exit.thread.i.i, label %.lr.ph.i.i.i, !llvm.loop !46

__find_vmap_area.exit.thread.i.i:                 ; preds = %bb.g, %bb.e
  tail call void @_raw_spin_unlock(ptr noundef %i.q) #23
  br label %bb.h

__find_vmap_area.exit.i.i:                        ; preds = %bb.f
  %i.x = getelementptr i8, ptr %.0157.i.i.i, i64 -16
  tail call void @_raw_spin_unlock(ptr noundef %i.q) #23
  %.not.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i, label %bb.h, label %find_vm_area.exit

bb.h:                                             ; preds = %__find_vmap_area.exit.i.i, %__find_vmap_area.exit.thread.i.i
  %i.y = load i32, ptr @nr_vmap_nodes, align 4    ; 2 uses
  %i.z = add i32 %.0.i.i, -1
  %i.aa = add i32 %i.z, %i.y
  %i.ab = urem i32 %i.aa, %i.y                    ; 2 uses
  %.not13.i.i = icmp eq i32 %i.ab, %i.m
  br i1 %.not13.i.i, label %find_vm_area.exit.thread, label %bb.e, !llvm.loop !47

find_vm_area.exit:                                ; preds = %__find_vmap_area.exit.i.i
  %i.ac = getelementptr i8, ptr %.0157.i.i.i, i64 40
  %i.ad = load ptr, ptr %i.ac, align 8            ; 3 uses
  %.not = icmp eq ptr %i.ad, null
  br i1 %.not, label %find_vm_area.exit.thread, label %bb.i

bb.i:                                             ; preds = %find_vm_area.exit
  %i.ae = getelementptr i8, ptr %i.ad, i64 24
  %i.af = load i64, ptr %i.ae, align 8            ; 2 uses
  %i.ag = and i64 %i.af, 24
  %.not54 = icmp eq i64 %i.ag, 0
  br i1 %.not54, label %find_vm_area.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ah = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.d, i64 %i.a) ; 2 uses
  %i.ai = extractvalue { i64, i1 } %i.ah, 1
  br i1 %i.ai, label %find_vm_area.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aj = extractvalue { i64, i1 } %i.ah, 0
  %i.ak = and i64 %i.af, 64
  %.not.i = icmp eq i64 %i.ak, 0
  %i.al = getelementptr i8, ptr %i.ad, i64 16
  %i.am = load i64, ptr %i.al, align 8            ; 2 uses
  %i.an = add i64 %i.am, -4096
  %.0.i59 = select i1 %.not.i, i64 %i.an, i64 %i.am
  %i.ao = icmp ugt i64 %i.aj, %.0.i59
  br i1 %i.ao, label %find_vm_area.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ap = getelementptr i8, ptr %2, i64 %i.a
  br label %bb.m

bb.m:                                             ; preds = %bb.n, %bb.l
  %.047 = phi ptr [ %i.ap, %bb.l ], [ %i.at, %bb.n ] ; 2 uses
  %.045 = phi i64 [ %1, %bb.l ], [ %i.as, %bb.n ] ; 2 uses
  %.043 = phi i64 [ %i.d, %bb.l ], [ %i.au, %bb.n ]
  %i.aq = tail call ptr @vmalloc_to_page(ptr noundef %.047) #26
  %i.ar = tail call i32 @vm_insert_page(ptr noundef %0, i64 noundef %.045, ptr noundef %i.aq) #23 ; 2 uses
  %.not55 = icmp eq i32 %i.ar, 0
  br i1 %.not55, label %bb.n, label %find_vm_area.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.as = add i64 %.045, 4096
  %i.at = getelementptr i8, ptr %.047, i64 4096
  %i.au = add i64 %.043, -4096                    ; 2 uses
  %.not56 = icmp eq i64 %i.au, 0
  br i1 %.not56, label %bb.o, label %bb.m, !llvm.loop !281

bb.o:                                             ; preds = %bb.n
  tail call fastcc void @vm_flags_set(ptr noundef %0) #26
  br label %find_vm_area.exit.thread

find_vm_area.exit.thread:                         ; preds = %bb.h, %bb.m, %bb.c, %bb.j, %bb.k, %bb.i, %find_vm_area.exit, %bb.b, %bb.a, %bb.o
  %.2 = phi i32 [ -22, %bb.a ], [ -22, %bb.i ], [ 0, %bb.o ], [ %i.ar, %bb.m ], [ -22, %find_vm_area.exit ], [ -22, %bb.b ], [ -22, %bb.k ], [ -22, %bb.j ], [ -22, %bb.c ], [ -22, %bb.h ]
  ret i32 %.2
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #12

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @vm_insert_page(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @vm_flags_set(ptr noundef %0) unnamed_addr #13 align 16 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 40
  %i.b = load i32, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 16             ; 2 uses
  %i.e = getelementptr i8, ptr %i.d, i64 464
  %i.f = load volatile i64, ptr %i.e, align 8
  %i.g = and i64 %i.f, 1
  %.not.i.i.i.i.i.i = icmp eq i64 %i.g, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.b, label %__is_vma_write_locked.exit.i, !prof !18

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "151: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 151b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 151) #24, !srcloc !282
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.3, ptr nonnull @.str.52, i32 87, i32 2305, i64 16) #24, !srcloc !283
  tail call void asm sideeffect "152: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 152b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 152) #24, !srcloc !284
  br label %__is_vma_write_locked.exit.i

__is_vma_write_locked.exit.i:                     ; preds = %bb.b, %bb.a
  %i.h = getelementptr i8, ptr %i.d, i64 520
  %i.i = load i32, ptr %i.h, align 8
  %i.j = icmp eq i32 %i.b, %i.i
  br i1 %i.j, label %vma_start_write.exit, label %bb.c

bb.c:                                             ; preds = %__is_vma_write_locked.exit.i
  %i.k = tail call i32 @__vma_start_write(ptr noundef %0, i32 noundef 2) #23 ; 0 uses
  br label %vma_start_write.exit

vma_start_write.exit:                             ; preds = %__is_vma_write_locked.exit.i, %bb.c
  %i.l = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %i.m = load i64, ptr %i.l, align 16
  %i.n = or i64 %i.m, 67371008
  store i64 %i.n, ptr %i.l, align 16
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @remap_vmalloc_range(ptr noundef %0, ptr noundef %1, i64 noundef %2) #1 align 16 prefalign(16) {
bb.a:
  %i.a = load i64, ptr %0, align 64               ; 2 uses
  %i.b = getelementptr i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = sub i64 %i.c, %i.a
  %i.e = tail call i32 @remap_vmalloc_range_partial(ptr noundef %0, i64 noundef %i.a, ptr noundef %1, i64 noundef %2, i64 noundef %i.d) #26
  ret i32 %i.e
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local ptr @pcpu_get_vm_areas(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i64 noundef %3) #1 align 16 prefalign(16) {
bb.a:
  %i.a = load i64, ptr @vmalloc_base, align 8     ; 2 uses
  %i.b = add i64 %3, -1                           ; 5 uses
  %i.c = add i64 %i.a, %i.b
  %i.d = sub i64 0, %3                            ; 8 uses
  %i.e = and i64 %i.c, %i.d                       ; 2 uses
  callbr void asm sideeffect "# ALT: oldinstr\0A771:\0A\09# ALT: oldinstr\0A771:\0A\09jmp 6f\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 3*32+21)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09jmp ${4:l}\0A775:\0A.popsection\0A\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ${0:c}\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09\0A775:\0A.popsection\0A.pushsection .altinstr_aux,\22ax\22\0A6:\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A testb $1, ${2:a}\0A jnz ${3:l}\0A jmp ${4:l}\0A.popsection\0A", "i,i,i,!i,!i,~{dirflag},~{fpsr},~{flags}"(i16 528, i32 1, ptr nonnull getelementptr inbounds nuw (i8, ptr @boot_cpu_data, i64 114)) #24
          to label %bb.b [label %bb.b, label %_static_cpu_has.exit], !srcloc !26

bb.b:                                             ; preds = %bb.a, %bb.a
  br label %_static_cpu_has.exit

_static_cpu_has.exit:                             ; preds = %bb.a, %bb.b
  %i.f = phi i64 [ 14073748835532800, %bb.b ], [ 35184372088832, %bb.a ]
  %i.g = add i64 %i.a, -1
  %i.h = add i64 %i.g, %i.f
  %i.i = and i64 %i.h, %i.d                       ; 3 uses
  %i.j = and i64 %3, 4095
  %.not = icmp eq i64 %i.j, 0
  %i.k = xor i64 %i.b, %3
  %.not531 = icmp ult i64 %i.b, %i.k
  %or.cond532 = and i1 %.not, %.not531
  br i1 %or.cond532, label %.preheader547, label %.critedge, !prof !167

.preheader547:                                    ; preds = %_static_cpu_has.exit
  %i.l = icmp sgt i32 %2, 0                       ; 5 uses
  br i1 %i.l, label %.lr.ph564.preheader, label %._crit_edge

.lr.ph564.preheader:                              ; preds = %.preheader547
  %i.m = zext nneg i32 %2 to i64
  %wide.trip.count617 = zext nneg i32 %2 to i64   ; 3 uses
  br label %.lr.ph564

.critedge:                                        ; preds = %_static_cpu_has.exit
  tail call void asm sideeffect "943: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 943b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 943) #24, !srcloc !285
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.3, ptr nonnull @.str.1, i32 4980, i32 0, i64 16) #24, !srcloc !286
  unreachable

.loopexit546:                                     ; preds = %.lr.ph.prol.loopexit, %bb.g, %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
end_hunk_3
