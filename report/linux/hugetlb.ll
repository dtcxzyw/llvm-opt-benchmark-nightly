Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/hugetlb?download=true
inline.NumInlined: 1496
inline.NumDeleted: 459
begin_hunk_0_@copy_hugetlb_page_range:bb.a
  %.val190 = load ptr, ptr %i.an, align 16
  %i.aw = getelementptr i8, ptr %.val190, i64 120
  %.val190.val = load ptr, ptr %i.aw, align 8
  %i.ax = load i32, ptr @pgdir_shift, align 4
  %i.ay = zext nneg i32 %i.ax to i64
  %i.az = lshr i64 %.0336, %i.ay
  %i.ba = and i64 %i.az, 511
  %i.bb = getelementptr [8 x i8], ptr %.val190.val, i64 %i.ba ; 3 uses
  %i.bc = load i64, ptr %i.bb, align 8
  callbr void asm sideeffect "# ALT: oldinstr\0A771:\0A\09# ALT: oldinstr\0A771:\0A\09jmp 6f\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 3*32+21)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09jmp ${4:l}\0A775:\0A.popsection\0A\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ${0:c}\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09\0A775:\0A.popsection\0A.pushsection .altinstr_aux,\22ax\22\0A6:\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A testb $1, ${2:a}\0A jnz ${3:l}\0A jmp ${4:l}\0A.popsection\0A", "i,i,i,!i,!i,~{dirflag},~{fpsr},~{flags}"(i16 528, i32 1, ptr nonnull getelementptr inbounds nuw (i8, ptr @boot_cpu_data, i64 114)) #28
          to label %pgd_present.exit.i.i [label %pgd_present.exit.i.i, label %pgd_present.exit.thread.i.i], !srcloc !139

pgd_present.exit.i.i:                             ; preds = %bb.g, %bb.g
  %i.bd = and i64 %i.bc, 1
  %.not.i.i196 = icmp eq i64 %i.bd, 0
  br i1 %.not.i.i196, label %hugetlb_walk.exit.thread, label %pgd_present.exit.thread.i.i

pgd_present.exit.thread.i.i:                      ; preds = %pgd_present.exit.i.i, %bb.g
  callbr void asm sideeffect "# ALT: oldinstr\0A771:\0A\09# ALT: oldinstr\0A771:\0A\09jmp 6f\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 3*32+21)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09jmp ${4:l}\0A775:\0A.popsection\0A\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ${0:c}\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09\0A775:\0A.popsection\0A.pushsection .altinstr_aux,\22ax\22\0A6:\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A testb $1, ${2:a}\0A jnz ${3:l}\0A jmp ${4:l}\0A.popsection\0A", "i,i,i,!i,!i,~{dirflag},~{fpsr},~{flags}"(i16 528, i32 1, ptr nonnull getelementptr inbounds nuw (i8, ptr @boot_cpu_data, i64 114)) #28
          to label %bb.h [label %bb.h, label %p4d_offset.exit.i.i], !srcloc !139

bb.h:                                             ; preds = %pgd_present.exit.thread.i.i, %pgd_present.exit.thread.i.i
  %i.be = load i64, ptr %i.bb, align 8
  %i.bf = and i64 %i.be, 4503599627366400
  %i.bg = load i64, ptr @page_offset_base, align 8
  %i.bh = add i64 %i.bg, %i.bf
  %i.bi = inttoptr i64 %i.bh to ptr
  %i.bj = lshr i64 %.0336, 39
  %i.bk = load i32, ptr @ptrs_per_p4d, align 4
  %i.bl = add i32 %i.bk, -1
  %i.bm = zext i32 %i.bl to i64
  %i.bn = and i64 %i.bj, %i.bm
  %i.bo = getelementptr [8 x i8], ptr %i.bi, i64 %i.bn
  br label %p4d_offset.exit.i.i

p4d_offset.exit.i.i:                              ; preds = %bb.h, %pgd_present.exit.thread.i.i
  %.0.i17.i.i = phi ptr [ %i.bo, %bb.h ], [ %i.bb, %pgd_present.exit.thread.i.i ]
  %i.bp = load i64, ptr %.0.i17.i.i, align 8      ; 2 uses
  %i.bq = and i64 %i.bp, 1
  %.not14.i.i = icmp eq i64 %i.bq, 0
  br i1 %.not14.i.i, label %hugetlb_walk.exit.thread, label %bb.i

bb.i:                                             ; preds = %p4d_offset.exit.i.i
  %i.br = and i64 %i.bp, 4503599627366400
  %i.bs = load i64, ptr @page_offset_base, align 8 ; 2 uses
  %i.bt = add i64 %i.bs, %i.br
  %i.bu = inttoptr i64 %i.bt to ptr
  %i.bv = lshr i64 %.0336, 30
  %i.bw = and i64 %i.bv, 511
  %i.bx = getelementptr [8 x i8], ptr %i.bu, i64 %i.bw ; 2 uses
  br i1 %i.ao, label %hugetlb_walk.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.by = load i64, ptr %i.bx, align 8            ; 3 uses
  %i.bz = and i64 %i.by, 1
  %.not15.i.i = icmp eq i64 %i.bz, 0
  br i1 %.not15.i.i, label %hugetlb_walk.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ca = and i64 %i.by, 128
  %.not.i.i.i.i.i = icmp eq i64 %i.ca, 0
  %..i.i.i.i.i = select i1 %.not.i.i.i.i.i, i64 4503599627366400, i64 4503598553628672
  %i.cb = and i64 %..i.i.i.i.i, %i.by
  %i.cc = add i64 %i.cb, %i.bs
  %i.cd = inttoptr i64 %i.cc to ptr
  %i.ce = lshr i64 %.0336, 21
  %i.cf = and i64 %i.ce, 511
  %i.cg = getelementptr [8 x i8], ptr %i.cd, i64 %i.cf
  br label %hugetlb_walk.exit

hugetlb_walk.exit:                                ; preds = %bb.i, %bb.k
  %.0.i.i = phi ptr [ %i.bx, %bb.i ], [ %i.cg, %bb.k ] ; 15 uses
  %.not181 = icmp eq ptr %.0.i.i, null
  br i1 %.not181, label %hugetlb_walk.exit.thread, label %bb.l

hugetlb_walk.exit.thread:                         ; preds = %bb.j, %pgd_present.exit.i.i, %p4d_offset.exit.i.i, %hugetlb_walk.exit
  %i.ch = or i64 %.0336, %switch.select5.i
  br label %bb.bd

bb.l:                                             ; preds = %hugetlb_walk.exit
  %i.ci = call ptr @huge_pte_alloc(ptr noundef %0, ptr noundef %2, i64 noundef %.0336, i64 noundef %i.l) #26 ; 7 uses
  %.not182 = icmp eq ptr %i.ci, null
  br i1 %.not182, label %folio_put.exit219.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cj = load i64, ptr @vmemmap_base, align 8
  %i.ck = inttoptr i64 %i.cj to ptr               ; 2 uses
  %i.cl = ptrtoint ptr %i.ci to i64               ; 3 uses
  %i.cm = add i64 %i.cl, 2147483648               ; 2 uses
  %i.cn = icmp ugt ptr %i.ci, inttoptr (i64 -2147483649 to ptr) ; 2 uses
  %i.co = load i64, ptr @phys_base, align 8
  %i.cp = load i64, ptr @page_offset_base, align 8
  %i.cq = sub i64 -2147483648, %i.cp
  %i.cr = select i1 %i.cn, i64 %i.co, i64 %i.cq   ; 2 uses
  %i.cs = add i64 %i.cr, %i.cm
  %i.ct = lshr i64 %i.cs, 12
  %i.cu = getelementptr [64 x i8], ptr %i.ck, i64 %i.ct ; 2 uses
  %i.cv = getelementptr i8, ptr %i.cu, i64 32
  %i.cw = load volatile i32, ptr %i.cv, align 4
  %.not269 = icmp eq i32 %i.cw, 0
  br i1 %.not269, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cx = or i64 %.0336, %switch.select5.i
  br label %bb.bd

bb.o:                                             ; preds = %bb.m
  %.val194 = load i32, ptr %i.j, align 8
  %i.cy = zext nneg i32 %.val194 to i64
  %i.cz = shl i64 4096, %i.cy                     ; 2 uses
  %i.da = icmp ugt i64 %i.cz, 1073741823
  br i1 %i.da, label %huge_pte_lock.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.db = icmp samesign ugt i64 %i.cz, 2097151
  br i1 %i.db, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.dc = and i64 %i.cl, -4096
  %i.dd = add i64 %i.dc, 2147483648
  %i.de = add i64 %i.dd, %i.cr
  %i.df = lshr i64 %i.de, 12
  %i.dg = getelementptr [64 x i8], ptr %i.ck, i64 %i.df
  %i.dh = getelementptr i8, ptr %i.dg, i64 40
  br label %huge_pte_lock.exit

bb.r:                                             ; preds = %bb.p
  %i.di = getelementptr i8, ptr %i.cu, i64 40
  br label %huge_pte_lock.exit

huge_pte_lock.exit:                               ; preds = %bb.o, %bb.q, %bb.r
  %.0.i.i197 = phi ptr [ %i.di, %bb.r ], [ %i.dh, %bb.q ], [ %i.ap, %bb.o ] ; 3 uses
  call void @_raw_spin_lock(ptr noundef %.0.i.i197) #27
  %.val192 = load i32, ptr %i.j, align 8
  %i.dj = zext nneg i32 %.val192 to i64
  %i.dk = shl i64 4096, %i.dj                     ; 2 uses
  %i.dl = icmp ugt i64 %i.dk, 1073741823
  br i1 %i.dl, label %huge_pte_lockptr.exit, label %bb.s

bb.s:                                             ; preds = %huge_pte_lock.exit
  %i.dm = icmp samesign ugt i64 %i.dk, 2097151
  %i.dn = load i64, ptr @vmemmap_base, align 8
  %i.do = inttoptr i64 %i.dn to ptr               ; 2 uses
  %i.dp = ptrtoint ptr %.0.i.i to i64             ; 2 uses
  br i1 %i.dm, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.dq = and i64 %i.dp, -4096
  %i.dr = add i64 %i.dq, 2147483648
  %i.ds = icmp ugt ptr %.0.i.i, inttoptr (i64 -2147483649 to ptr)
  %i.dt = load i64, ptr @phys_base, align 8
  %i.du = load i64, ptr @page_offset_base, align 8
  %i.dv = sub i64 -2147483648, %i.du
  %i.dw = select i1 %i.ds, i64 %i.dt, i64 %i.dv
  %i.dx = add i64 %i.dr, %i.dw
  %i.dy = lshr i64 %i.dx, 12
  %i.dz = getelementptr [64 x i8], ptr %i.do, i64 %i.dy
  %i.ea = getelementptr i8, ptr %i.dz, i64 40
  br label %huge_pte_lockptr.exit

bb.u:                                             ; preds = %bb.s
  %i.eb = add i64 %i.dp, 2147483648
  %i.ec = icmp ugt ptr %.0.i.i, inttoptr (i64 -2147483649 to ptr)
  %i.ed = load i64, ptr @phys_base, align 8
  %i.ee = load i64, ptr @page_offset_base, align 8
  %i.ef = sub i64 -2147483648, %i.ee
  %i.eg = select i1 %i.ec, i64 %i.ed, i64 %i.ef
  %i.eh = add i64 %i.eb, %i.eg
  %i.ei = lshr i64 %i.eh, 12
  %i.ej = getelementptr [64 x i8], ptr %i.do, i64 %i.ei
  %i.ek = getelementptr i8, ptr %i.ej, i64 40
  br label %huge_pte_lockptr.exit

huge_pte_lockptr.exit:                            ; preds = %huge_pte_lock.exit, %bb.t, %bb.u
  %.0.i = phi ptr [ %i.ek, %bb.u ], [ %i.ea, %bb.t ], [ %i.aq, %huge_pte_lock.exit ] ; 3 uses
  call void @_raw_spin_lock(ptr noundef %.0.i) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i)
  %.sroa.0.0.copyload.i.i = load volatile i64, ptr %.0.i.i, align 8 ; 3 uses
  store volatile i64 %.sroa.0.0.copyload.i.i, ptr %.sroa.0.i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i)
  %i.el = and i64 %.sroa.0.0.copyload.i.i, -97
  %.not.i.i198.not331 = icmp eq i64 %i.el, 0
  br i1 %.not.i.i198.not331, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %huge_pte_lockptr.exit
  %i.em = and i64 %i.cl, -4096
  %i.en = add i64 %i.em, 2147483648
  %i.eo = ptrtoint ptr %.0.i.i to i64             ; 2 uses
  %i.ep = add i64 %i.eo, 2147483648
  %i.eq = icmp ugt ptr %.0.i.i, inttoptr (i64 -2147483649 to ptr)
  %i.er = and i64 %i.eo, -4096
  %i.es = add i64 %i.er, 2147483648
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph, %folio_put.exit219
  %.sroa.093.0334 = phi i64 [ %.sroa.0.0.copyload.i.i, %.lr.ph ], [ %.sroa.0.0.copyload.i.i225, %folio_put.exit219 ] ; 8 uses
  %.0168333 = phi ptr [ %.0.i.i197, %.lr.ph ], [ %.0.i.i220, %folio_put.exit219 ] ; 5 uses
  %.0170332 = phi ptr [ %.0.i, %.lr.ph ], [ %.0.i222, %folio_put.exit219 ] ; 5 uses
  %i.et = and i64 %.sroa.093.0334, 257            ; 2 uses
  %.not.i199 = icmp ne i64 %i.et, 0
  %i.eu = and i64 %.sroa.093.0334, -354           ; 2 uses
  %.not.i.not.i = icmp eq i64 %i.eu, 0
  %or.cond.i200 = or i1 %.not.i199, %.not.i.not.i
  br i1 %or.cond.i200, label %softleaf_from_pte.exit.thread, label %softleaf_from_pte.exit

softleaf_from_pte.exit:                           ; preds = %bb.v
  %i.ev = xor i64 %.sroa.093.0334, -1
  %i.ew = lshr i64 %i.ev, 9
  %i.ex = and i64 %i.ew, 1125899906842623         ; 2 uses
  %i.ey = lshr exact i64 %.sroa.093.0334, 1
  %i.ez = and i64 %i.ey, 8935141660703064064      ; 2 uses
  %i.fa = or disjoint i64 %i.ex, %i.ez
  %i.fb = icmp ugt i64 %.sroa.093.0334, -2305843009213693954
  %i.fc = lshr i64 %.sroa.093.0334, 59
  %i.fd = trunc nuw nsw i64 %i.fc to i32
  %.off.i = add nsw i32 %i.fd, -28
  %switch1.i = icmp ult i32 %.off.i, 3
  %switch.i = select i1 %i.fb, i1 %switch1.i, i1 false
  br i1 %switch.i, label %bb.w, label %softleaf_from_pte.exit.thread, !prof !149

bb.w:                                             ; preds = %softleaf_from_pte.exit
  %i.fe = icmp ne i64 %i.ez, 8070450532247928832
  %or.cond = and i1 %i.d, %i.fe
  br i1 %or.cond, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.ff = xor i64 %i.ex, -1
  %i.fg = shl nsw i64 %i.ff, 9
  %i.fh = and i64 %i.fg, -1729382256910270976     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i201)
  store i64 %i.fh, ptr %.sroa.0.i.i.i201, align 8
  %.sroa.0.i.i.i201.0..sroa.0.i.i.i201.0..sroa.0.i.i.i201.0..sroa.0.i.i.0..sroa.0.i.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.copyload.i.i.i202 = load volatile i64, ptr %.sroa.0.i.i.i201, align 8
  store volatile i64 %.sroa.0.i.i.i201.0..sroa.0.i.i.i201.0..sroa.0.i.i.i201.0..sroa.0.i.i.0..sroa.0.i.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.copyload.i.i.i202, ptr %.0.i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i201)
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.sroa.093.2 = phi i64 [ %i.fh, %bb.x ], [ %.sroa.093.0334, %bb.w ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i203)
  store i64 %.sroa.093.2, ptr %.sroa.0.i.i.i203, align 8
  %.sroa.0.i.i.i203.0..sroa.0.i.i.i203.0..sroa.0.i.i.i203.0..sroa.0.i.i.0..sroa.0.i.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.copyload.i.i.i204 = load volatile i64, ptr %.sroa.0.i.i.i203, align 8
  store volatile i64 %.sroa.0.i.i.i203.0..sroa.0.i.i.i203.0..sroa.0.i.i.i203.0..sroa.0.i.i.0..sroa.0.i.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.copyload.i.i.i204, ptr %i.ci, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i203)
  br label %.loopexit

softleaf_from_pte.exit.thread:                    ; preds = %bb.v, %softleaf_from_pte.exit
  %.sroa.08.0.i250 = phi i64 [ %i.fa, %softleaf_from_pte.exit ], [ 0, %bb.v ]
  %.not.i.i205 = icmp eq i64 %i.et, 0
  %.not.i.not.i.i = icmp ne i64 %i.eu, 0
  %or.cond.i.not.i = and i1 %.not.i.i205, %.not.i.not.i.i
  %i.fi = icmp ugt i64 %.sroa.093.0334, -576460752303423490
  %spec.select.i = and i1 %i.fi, %or.cond.i.not.i
  br i1 %spec.select.i, label %bb.z, label %bb.ab, !prof !24

bb.z:                                             ; preds = %softleaf_from_pte.exit.thread
  %i.fj = and i64 %.sroa.08.0.i250, 6             ; 2 uses
  %.not187 = icmp eq i64 %i.fj, 0
  br i1 %.not187, label %.loopexit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fk = xor i64 %i.fj, -1
  %i.fl = shl nsw i64 %i.fk, 9
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i206)
  store i64 %i.fl, ptr %.sroa.0.i.i.i206, align 8
  %.sroa.0.i.i.i206.0..sroa.0.i.i.i206.0..sroa.0.i.i.i206.0..sroa.0.i.i.0..sroa.0.i.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.copyload.i.i.i207 = load volatile i64, ptr %.sroa.0.i.i.i206, align 8
  store volatile i64 %.sroa.0.i.i.i206.0..sroa.0.i.i.i206.0..sroa.0.i.i.i206.0..sroa.0.i.i.0..sroa.0.i.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.copyload.i.i.i207, ptr %i.ci, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i206)
  br label %.loopexit

bb.ab:                                            ; preds = %softleaf_from_pte.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i208)
  %.sroa.0.0.copyload.i.i209 = load volatile i64, ptr %.0.i.i, align 8 ; 8 uses
  store volatile i64 %.sroa.0.0.copyload.i.i209, ptr %.sroa.0.i.i208, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i208)
  %i.fm = load i64, ptr @vmemmap_base, align 8
  %i.fn = inttoptr i64 %i.fm to ptr
  %.not.i.i.i = icmp ne i64 %.sroa.0.0.copyload.i.i209, 0
  %i.fo = and i64 %.sroa.0.0.copyload.i.i209, 1
  %.not2.i.i.i = icmp eq i64 %i.fo, 0
  %i.fp = and i1 %.not.i.i.i, %.not2.i.i.i
  %i.fq = sext i1 %i.fp to i64
  %i.fr = xor i64 %.sroa.0.0.copyload.i.i209, %i.fq
  %i.fs = lshr i64 %i.fr, 12
  %i.ft = and i64 %i.fs, 1099511627775
  %i.fu = getelementptr [64 x i8], ptr %i.fn, i64 %i.ft ; 2 uses
  %i.fv = getelementptr i8, ptr %i.fu, i64 8
  %i.fw = load volatile i64, ptr %i.fv, align 8   ; 2 uses
  %i.fx = ptrtoint ptr %i.fu to i64
  %i.fy = and i64 %i.fw, 1
  %i.fz = add nsw i64 %i.fy, -1
  %i.ga = or i64 %i.fz, %i.fw
  %i.gb = and i64 %i.ga, %i.fx                    ; 3 uses
  %i.gc = inttoptr i64 %i.gb to ptr               ; 14 uses
  %i.gd = getelementptr i8, ptr %i.gc, i64 52     ; 7 uses
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock incl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.gd, ptr elementtype(i32) %i.gd) #28, !srcloc !150
  %i.ge = getelementptr i8, ptr %i.gc, i64 24
  %i.gf = load ptr, ptr %i.ge, align 8
  %i.gg = ptrtoint ptr %i.gf to i64
  %i.gh = trunc i64 %i.gg to i1
  br i1 %i.gh, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.gi = getelementptr i8, ptr %i.gc, i64 80     ; 2 uses
  %i.gj = getelementptr i8, ptr %i.gc, i64 88     ; 2 uses
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock incl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.gj, ptr elementtype(i32) %i.gj) #28, !srcloc !150
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock incl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.gi, ptr elementtype(i32) %i.gi) #28, !srcloc !150
  br label %bb.ba

bb.ad:                                            ; preds = %bb.ab
  %i.gk = getelementptr i8, ptr %i.gc, i64 8      ; 2 uses
  %i.gl = load volatile i64, ptr %i.gk, align 8   ; 2 uses
  %i.gm = and i64 %i.gl, 1
  %i.gn = add nsw i64 %i.gm, -1
  %i.go = or i64 %i.gn, %i.gl
  %i.gp = and i64 %i.go, %i.gb
  %i.gq = inttoptr i64 %i.gp to ptr
  %i.gr = getelementptr i8, ptr %i.gq, i64 48
  %i.gs = load i32, ptr %i.gr, align 16
  %.mask.i.i.i = and i32 %i.gs, -16777216
  %i.gt = icmp eq i32 %.mask.i.i.i, -201326592
  br i1 %i.gt, label %bb.ae, label %PageAnonExclusive.exit.i

bb.ae:                                            ; preds = %bb.ad
  %i.gu = load volatile i64, ptr %i.gk, align 8   ; 2 uses
  %i.gv = and i64 %i.gu, 1
  %i.gw = add nsw i64 %i.gv, -1
  %i.gx = or i64 %i.gw, %i.gu
  %i.gy = and i64 %i.gx, %i.gb
  %i.gz = inttoptr i64 %i.gy to ptr
  br label %PageAnonExclusive.exit.i

PageAnonExclusive.exit.i:                         ; preds = %bb.ad, %bb.ae
  %.0.i.i210 = phi ptr [ %i.gz, %bb.ae ], [ %i.gc, %bb.ad ]
  %i.ha = load volatile i64, ptr %.0.i.i210, align 8
  %i.hb = and i64 %i.ha, 2048
  %.not.i211 = icmp eq i64 %i.hb, 0
  br i1 %.not.i211, label %hugetlb_try_dup_anon_rmap.exit, label %mm_flags_test.exit.i.i

mm_flags_test.exit.i.i:                           ; preds = %PageAnonExclusive.exit.i
  %.val.i212 = load ptr, ptr %i.an, align 16
  %i.hc = getelementptr i8, ptr %.val.i212, i64 1552
  %i.hd = load volatile i64, ptr %i.hc, align 8
  %.in.in.i.i.i = and i64 %i.hd, 134217728
  %.in.i.not.i.i = icmp eq i64 %.in.in.i.i.i, 0
  br i1 %.in.i.not.i.i, label %folio_needs_cow_for_dma.exit.thread.i, label %bb.af

bb.af:                                            ; preds = %mm_flags_test.exit.i.i
  %i.he = load volatile i64, ptr %i.gc, align 8
  %i.hf = and i64 %i.he, 64
  %.not.i.i.i213 = icmp eq i64 %i.hf, 0
  br i1 %.not.i.i.i213, label %.split.i, label %folio_needs_cow_for_dma.exit.i

.split.i:                                         ; preds = %bb.af
  %i.hg = load volatile i32, ptr %i.gd, align 4
  %i.hh = icmp ugt i32 %i.hg, 1023
  br i1 %i.hh, label %bb.ag, label %folio_needs_cow_for_dma.exit.thread.i, !prof !149

folio_needs_cow_for_dma.exit.i:                   ; preds = %bb.af
  %i.hi = getelementptr i8, ptr %i.gc, i64 92
  %i.hj = load volatile i32, ptr %i.hi, align 4
  %i.hk = icmp sgt i32 %i.hj, 0
  br i1 %i.hk, label %bb.ag, label %folio_needs_cow_for_dma.exit.thread.i, !prof !149

folio_needs_cow_for_dma.exit.thread.i:            ; preds = %folio_needs_cow_for_dma.exit.i, %.split.i, %mm_flags_test.exit.i.i
  %i.hl = getelementptr i8, ptr %i.gc, i64 1      ; 2 uses
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock andb ${1:b},$0", "=*m,iq,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %i.hl, i32 -9, ptr elementtype(i8) %i.hl) #28, !srcloc !43
  br label %hugetlb_try_dup_anon_rmap.exit

hugetlb_try_dup_anon_rmap.exit:                   ; preds = %PageAnonExclusive.exit.i, %folio_needs_cow_for_dma.exit.thread.i
  %i.hm = getelementptr i8, ptr %i.gc, i64 80     ; 2 uses
  %i.hn = getelementptr i8, ptr %i.gc, i64 88     ; 2 uses
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock incl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.hn, ptr elementtype(i32) %i.hn) #28, !srcloc !150
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock incl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.hm, ptr elementtype(i32) %i.hm) #28, !srcloc !150
  br label %bb.ba

bb.ag:                                            ; preds = %folio_needs_cow_for_dma.exit.i, %.split.i
  call void @_raw_spin_unlock(ptr noundef %.0170332) #27
  call void @_raw_spin_unlock(ptr noundef %.0168333) #27
  %i.ho = call ptr @alloc_hugetlb_folio(ptr noundef %2, i64 noundef %.0336, i1 noundef zeroext false) #26 ; 13 uses
  %i.hp = icmp ugt ptr %i.ho, inttoptr (i64 -4096 to ptr)
  br i1 %i.hp, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  %i.hq = call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock decl $0", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.gd, ptr elementtype(i32) %i.gd) #28, !srcloc !151 ; 2 uses
  %i.hr = icmp ult i8 %i.hq, 2
  call void @llvm.assume(i1 %i.hr)
  %.not.i215 = icmp eq i8 %i.hq, 0
  br i1 %.not.i215, label %folio_put.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @__folio_put(ptr noundef %i.gc) #27
  br label %folio_put.exit

folio_put.exit:                                   ; preds = %bb.ah, %bb.ai
  %i.hs = ptrtoint ptr %i.ho to i64
  %i.ht = trunc i64 %i.hs to i32
  br label %folio_put.exit219.thread

bb.aj:                                            ; preds = %bb.ag
  %i.hu = call i32 @copy_user_large_folio(ptr noundef %i.ho, ptr noundef %i.gc, i64 noundef %.0336, ptr noundef %2) #27 ; 3 uses
  %i.hv = call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock decl $0", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.gd, ptr elementtype(i32) %i.gd) #28, !srcloc !151 ; 2 uses
  %i.hw = icmp ult i8 %i.hv, 2
  call void @llvm.assume(i1 %i.hw)
  %.not.i216 = icmp eq i8 %i.hv, 0
  br i1 %.not.i216, label %folio_put.exit217, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @__folio_put(ptr noundef %i.gc) #27
  br label %folio_put.exit217

folio_put.exit217:                                ; preds = %bb.aj, %bb.ak
  %.not185 = icmp eq i32 %i.hu, 0
  br i1 %.not185, label %bb.an, label %bb.al

bb.al:                                            ; preds = %folio_put.exit217
  call void @restore_reserve_on_error(ptr noundef %.val189.val.val.val.val, ptr noundef %2, i64 noundef %.0336, ptr noundef %i.ho) #26
  %i.hx = getelementptr i8, ptr %i.ho, i64 52     ; 2 uses
  %i.hy = call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock decl $0", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.hx, ptr elementtype(i32) %i.hx) #28, !srcloc !151 ; 2 uses
  %i.hz = icmp ult i8 %i.hy, 2
  call void @llvm.assume(i1 %i.hz)
  %.not.i218 = icmp eq i8 %i.hy, 0
  br i1 %.not.i218, label %folio_put.exit219.thread, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @__folio_put(ptr noundef %i.ho) #27
  br label %folio_put.exit219.thread

bb.an:                                            ; preds = %folio_put.exit217
  %.val193 = load i32, ptr %i.j, align 8
  %i.ia = zext nneg i32 %.val193 to i64
  %i.ib = shl i64 4096, %i.ia                     ; 2 uses
  %i.ic = icmp ugt i64 %i.ib, 1073741823
  br i1 %i.ic, label %huge_pte_lock.exit221, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.id = icmp samesign ugt i64 %i.ib, 2097151
  %i.ie = load i64, ptr @vmemmap_base, align 8
  %i.if = inttoptr i64 %i.ie to ptr               ; 2 uses
  %i.ig = load i64, ptr @phys_base, align 8
  %i.ih = load i64, ptr @page_offset_base, align 8
  %i.ii = sub i64 -2147483648, %i.ih
  %i.ij = select i1 %i.cn, i64 %i.ig, i64 %i.ii   ; 2 uses
  br i1 %i.id, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.ik = add i64 %i.en, %i.ij
  %i.il = lshr i64 %i.ik, 12
  %i.im = getelementptr [64 x i8], ptr %i.if, i64 %i.il
  %i.in = getelementptr i8, ptr %i.im, i64 40
  br label %huge_pte_lock.exit221

bb.aq:                                            ; preds = %bb.ao
end_hunk_0
