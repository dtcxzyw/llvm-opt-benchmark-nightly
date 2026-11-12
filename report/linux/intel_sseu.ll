Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/intel_sseu?download=true
inline.NumInlined: 114
inline.NumDeleted: 23
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@hsw_sseu_info_init:bb.a
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.h ] ; 2 uses
  %i.av = load i8, ptr %i.ak, align 2
  %i.aw = zext nneg i8 %i.av to i64
  %notmask = shl nsw i64 -1, %i.aw
  %i.ax = trunc i64 %notmask to i16
  %i.ay = xor i16 %i.ax, -1
  %i.az = load i8, ptr %i.ar, align 1
  %i.ba = and i8 %i.az, 8
  %.not11.i = icmp eq i8 %i.ba, 0
  %.sink12.idx.i = select i1 %.not11.i, i64 %indvars.iv86, i64 0
  %.sink12.i = getelementptr [16 x i8], ptr %i.as, i64 %.sink12.idx.i
  %i.bb = getelementptr [2 x i8], ptr %.sink12.i, i64 %indvars.iv
  store i16 %i.ay, ptr %i.bb, align 2
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bc = load i8, ptr %i.an, align 1             ; 2 uses
  %i.bd = zext i8 %i.bc to i64
  %i.be = icmp samesign ult i64 %indvars.iv.next, %i.bd
  br i1 %i.be, label %.lr.ph, label %._crit_edge, !llvm.loop !60

._crit_edge:                                      ; preds = %.lr.ph, %bb.h
  %.pre.i90 = phi i8 [ 0, %bb.h ], [ %i.bc, %.lr.ph ]
  %indvars.iv.next87 = add nuw nsw i64 %indvars.iv86, 1 ; 2 uses
  %i.bf = load i8, ptr %i.am, align 8             ; 2 uses
  %i.bg = zext i8 %i.bf to i64
  %i.bh = icmp samesign ult i64 %indvars.iv.next87, %i.bg
  br i1 %i.bh, label %bb.h, label %._crit_edge83, !llvm.loop !61

._crit_edge83:                                    ; preds = %._crit_edge, %bb.g
  %.pre.i = phi i8 [ %i.aj, %bb.g ], [ %.pre.i90, %._crit_edge ]
  %i.bi = phi i8 [ %i.ad, %bb.g ], [ %i.bf, %._crit_edge ] ; 2 uses
  %.not151.i = icmp eq i8 %i.bi, 0
  br i1 %.not151.i, label %compute_eu_total.exit, label %.preheader.lr.ph.i

.preheader.lr.ph.i:                               ; preds = %._crit_edge83
  %i.bj = getelementptr i8, ptr %0, i64 5119
  %i.bk = getelementptr i8, ptr %0, i64 4984      ; 2 uses
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.lr.ph.i
  %i.bl = phi i8 [ %i.bi, %.preheader.lr.ph.i ], [ %i.cd, %._crit_edge.i ]
  %i.bm = phi i8 [ %.pre.i, %.preheader.lr.ph.i ], [ %i.ce, %._crit_edge.i ]
  %indvars.iv156.i = phi i64 [ 0, %.preheader.lr.ph.i ], [ %indvars.iv.next157.i, %._crit_edge.i ] ; 2 uses
  %.0148.i = phi i32 [ 0, %.preheader.lr.ph.i ], [ %.1.lcssa.i, %._crit_edge.i ] ; 2 uses
  %.not152.i = icmp eq i8 %i.bm, 0
  br i1 %.not152.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.bn = getelementptr [16 x i8], ptr %i.bk, i64 %indvars.iv156.i
  br label %bb.i

bb.i:                                             ; preds = %bb.l, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.l ] ; 3 uses
  %.1146.i = phi i32 [ %.0148.i, %.lr.ph.i ], [ %.2.i, %bb.l ]
  %i.bo = load i8, ptr %i.bj, align 1
  %i.bp = and i8 %i.bo, 8
  %.not.i = icmp eq i8 %i.bp, 0
  %i.bq = tail call i64 @llvm.read_register.i64(metadata !3) ; 2 uses
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.br = getelementptr [2 x i8], ptr %i.bk, i64 %indvars.iv.i
  %i.bs = load i16, ptr %i.br, align 2
  %i.bt = zext i16 %i.bs to i32
  %i.bu = tail call { i32, i64 } asm "# ALT: oldinstr\0A771:\0A\09call __sw_hweight32\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 4*32+23)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09popcntl $2, $0\0A775:\0A.popsection\0A", "={ax},={rsp},{di},{rsp},~{dirflag},~{fpsr},~{flags}"(i32 range(i32 0, 65536) %i.bt, i64 %i.bq) #10, !srcloc !15
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.bv = getelementptr [2 x i8], ptr %i.bn, i64 %indvars.iv.i
  %i.bw = load i16, ptr %i.bv, align 2
  %i.bx = zext i16 %i.bw to i32
  %i.by = tail call { i32, i64 } asm "# ALT: oldinstr\0A771:\0A\09call __sw_hweight32\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 4*32+23)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09popcntl $2, $0\0A775:\0A.popsection\0A", "={ax},={rsp},{di},{rsp},~{dirflag},~{fpsr},~{flags}"(i32 range(i32 0, 65536) %i.bx, i64 %i.bq) #10, !srcloc !15
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sink103 = phi { i32, i64 } [ %i.by, %bb.k ], [ %i.bu, %bb.j ] ; 2 uses
  %i.bz = extractvalue { i32, i64 } %.sink103, 1
  tail call void @llvm.write_register.i64(metadata !3, i64 %i.bz)
  %.pn.i = extractvalue { i32, i64 } %.sink103, 0
  %.2.i = add i32 %.pn.i, %.1146.i                ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ca = load i8, ptr %i.an, align 1             ; 2 uses
  %i.cb = zext i8 %i.ca to i64
  %i.cc = icmp samesign ult i64 %indvars.iv.next.i, %i.cb
  br i1 %i.cc, label %bb.i, label %._crit_edge.loopexit.i, !llvm.loop !0

._crit_edge.loopexit.i:                           ; preds = %bb.l
  %.pre159.i = load i8, ptr %i.am, align 8
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.preheader.i
  %i.cd = phi i8 [ %i.bl, %.preheader.i ], [ %.pre159.i, %._crit_edge.loopexit.i ] ; 2 uses
  %i.ce = phi i8 [ 0, %.preheader.i ], [ %i.ca, %._crit_edge.loopexit.i ]
  %.1.lcssa.i = phi i32 [ %.0148.i, %.preheader.i ], [ %.2.i, %._crit_edge.loopexit.i ] ; 2 uses
  %indvars.iv.next157.i = add nuw nsw i64 %indvars.iv156.i, 1 ; 2 uses
  %i.cf = zext i8 %i.cd to i64
  %i.cg = icmp samesign ult i64 %indvars.iv.next157.i, %i.cf
  br i1 %i.cg, label %.preheader.i, label %._crit_edge149.loopexit.i, !llvm.loop !1

._crit_edge149.loopexit.i:                        ; preds = %._crit_edge.i
  %i.ch = trunc i32 %.1.lcssa.i to i16
  br label %compute_eu_total.exit

compute_eu_total.exit:                            ; preds = %._crit_edge83, %._crit_edge149.loopexit.i
  %.0.lcssa.i = phi i16 [ 0, %._crit_edge83 ], [ %i.ch, %._crit_edge149.loopexit.i ]
  %i.ci = getelementptr i8, ptr %0, i64 5112
  store i16 %.0.lcssa.i, ptr %i.ci, align 8
  %i.cj = getelementptr i8, ptr %0, i64 5119      ; 2 uses
  %i.ck = load i8, ptr %i.cj, align 1
  %i.cl = and i8 %i.ck, -8
  store i8 %i.cl, ptr %i.cj, align 1
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -2147483648, 1) i32 @intel_sseu_make_rpcs(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr i8, ptr %0, i64 5119       ; 2 uses
  %i.c = load i8, ptr %i.b, align 1
  %i.d = lshr i8 %i.c, 1                          ; 2 uses
  %i.e = getelementptr i8, ptr %i.a, i64 1656     ; 3 uses
  %i.f = load i8, ptr %i.e, align 8
  %i.g = icmp ult i8 %i.f, 9
  br i1 %i.g, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr i8, ptr %0, i64 5312
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %i.i, align 8
  %.not82 = icmp eq ptr %i.j, null
  %i.k = getelementptr i8, ptr %0, i64 5304
  %spec.select = select i1 %.not82, ptr %1, ptr %i.k
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.074 = phi ptr [ %1, %bb.b ], [ %spec.select, %bb.c ] ; 4 uses
  %i.l = load i8, ptr %.074, align 1
  %i.m = zext i8 %i.l to i32
  %i.n = tail call i64 @llvm.read_register.i64(metadata !3)
  %i.o = tail call { i32, i64 } asm "# ALT: oldinstr\0A771:\0A\09call __sw_hweight32\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 4*32+23)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09popcntl $2, $0\0A775:\0A.popsection\0A", "={ax},={rsp},{di},{rsp},~{dirflag},~{fpsr},~{flags}"(i32 range(i32 0, 256) %i.m, i64 %i.n) #10, !srcloc !15 ; 2 uses
  %i.p = extractvalue { i32, i64 } %i.o, 0        ; 3 uses
  %i.q = extractvalue { i32, i64 } %i.o, 1
  tail call void @llvm.write_register.i64(metadata !3, i64 %i.q)
  %i.r = getelementptr i8, ptr %.074, i64 1
  %i.s = load i8, ptr %i.r, align 1
  %i.t = zext i8 %i.s to i32
  %i.u = tail call i64 @llvm.read_register.i64(metadata !3)
  %i.v = tail call { i32, i64 } asm "# ALT: oldinstr\0A771:\0A\09call __sw_hweight32\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 4*32+23)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09popcntl $2, $0\0A775:\0A.popsection\0A", "={ax},={rsp},{di},{rsp},~{dirflag},~{fpsr},~{flags}"(i32 range(i32 0, 256) %i.t, i64 %i.u) #10, !srcloc !15 ; 2 uses
  %i.w = extractvalue { i32, i64 } %i.v, 0        ; 2 uses
  %i.x = extractvalue { i32, i64 } %i.v, 1
  tail call void @llvm.write_register.i64(metadata !3, i64 %i.x)
  %i.y = load i8, ptr %i.e, align 8
  %i.z = icmp eq i8 %i.y, 11
  %i.aa = and i32 %i.p, 255
  %i.ab = icmp eq i32 %i.aa, 1
  %or.cond = select i1 %i.z, i1 %i.ab, i1 false
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ac = and i32 %i.w, 255
  %i.ad = getelementptr i8, ptr %0, i64 4960
  %i.ae = load i8, ptr %i.ad, align 8
  %i.af = zext i8 %i.ae to i32
  %i.ag = tail call i64 @llvm.read_register.i64(metadata !3)
  %i.ah = tail call { i32, i64 } asm "# ALT: oldinstr\0A771:\0A\09call __sw_hweight32\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 4*32+23)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09popcntl $2, $0\0A775:\0A.popsection\0A", "={ax},={rsp},{di},{rsp},~{dirflag},~{fpsr},~{flags}"(i32 range(i32 0, 256) %i.af, i64 %i.ag) #10, !srcloc !15 ; 2 uses
  %i.ai = extractvalue { i32, i64 } %i.ah, 1
  tail call void @llvm.write_register.i64(metadata !3, i64 %i.ai)
  %i.aj = extractvalue { i32, i64 } %i.ah, 0
  %i.ak = lshr i32 %i.aj, 1
  %i.al = and i32 %i.ak, 255
  %i.am = tail call i32 @llvm.umin.i32(i32 %i.al, i32 4)
  %i.an = icmp samesign ugt i32 %i.ac, %i.am      ; 2 uses
  %spec.select123 = select i1 %i.an, i8 0, i8 %i.d
  %spec.select124 = select i1 %i.an, i32 2, i32 %i.p
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.079 = phi i8 [ %i.d, %bb.d ], [ %spec.select123, %bb.e ]
  %.078 = phi i32 [ %i.p, %bb.d ], [ %spec.select124, %bb.e ]
  %i.ao = load i8, ptr %i.b, align 1              ; 2 uses
  %i.ap = and i8 %i.ao, 1
  %.not121 = icmp eq i8 %i.ap, 0
  br i1 %.not121, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aq = and i32 %.078, 255
  %i.ar = load i8, ptr %i.e, align 8
  %i.as = icmp ugt i8 %i.ar, 10                   ; 2 uses
  %.076 = select i1 %i.as, i32 258048, i32 229376
  %.075.v = select i1 %i.as, i32 12, i32 15
  %.075 = shl nuw nsw i32 %i.aq, %.075.v
  %i.at = and i32 %.075, %.076
  %i.au = or disjoint i32 %i.at, -2147221504
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.077 = phi i32 [ %i.au, %bb.g ], [ 0, %bb.f ]
  %i.av = trunc i8 %.079 to i1
  %i.aw = shl i32 %i.w, 8
  %i.ax = and i32 %i.aw, 1792
  %i.ay = or disjoint i32 %i.ax, -2147481600
  %2 = select i1 %i.av, i32 %i.ay, i32 0
  %.1 = or i32 %.077, %2                          ; 2 uses
  %i.az = and i8 %i.ao, 4
  %.not122 = icmp eq i8 %i.az, 0
  br i1 %.not122, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ba = getelementptr i8, ptr %.074, i64 2
  %i.bb = load i8, ptr %i.ba, align 1
  %i.bc = and i8 %i.bb, 15
  %i.bd = zext nneg i8 %i.bc to i32
  %i.be = getelementptr i8, ptr %.074, i64 3
  %i.bf = load i8, ptr %i.be, align 1
  %i.bg = zext i8 %i.bf to i32
  %i.bh = shl nuw nsw i32 %i.bg, 4
  %i.bi = and i32 %i.bh, 240
  %i.bj = or disjoint i32 %i.bi, %i.bd
  %i.bk = or i32 %i.bj, %.1
  %i.bl = or i32 %i.bk, -2147483648
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ %i.bl, %bb.i ], [ %.1, %bb.h ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @intel_sseu_dump(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 167        ; 5 uses
  %i.b = load i8, ptr %i.a, align 1
  %i.c = and i8 %i.b, 8
  %.not = icmp eq i8 %i.c, 0
  %i.d = tail call i64 @llvm.read_register.i64(metadata !3) ; 2 uses
  br i1 %.not, label %bb.b, label %intel_sseu_subslice_total.exit

intel_sseu_subslice_total.exit:                   ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8
  %i.g = tail call { i64, i64 } asm "# ALT: oldinstr\0A771:\0A\09call __sw_hweight64\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 4*32+23)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09popcntq $2, $0\0A775:\0A.popsection\0A", "={ax},={rsp},{di},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %i.f, i64 %i.d) #10, !srcloc !14 ; 2 uses
  %i.h = extractvalue { i64, i64 } %i.g, 1
  tail call void @llvm.write_register.i64(metadata !3, i64 %i.h)
  %i.i = extractvalue { i64, i64 } %i.g, 0
  %i.j = trunc i64 %i.i to i32
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %1, ptr noundef @.str.2, i32 noundef %i.j) #12
  %i.k = getelementptr i8, ptr %0, i64 16
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %1, ptr noundef @.str.3, i32 noundef 64, ptr noundef %i.k) #12
  %i.l = getelementptr i8, ptr %0, i64 24
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %1, ptr noundef @.str.4, i32 noundef 64, ptr noundef %i.l) #12
  br label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.m = load i8, ptr %0, align 8
  %i.n = zext i8 %i.m to i32
  %i.o = tail call { i32, i64 } asm "# ALT: oldinstr\0A771:\0A\09call __sw_hweight32\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 4*32+23)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09popcntl $2, $0\0A775:\0A.popsection\0A", "={ax},={rsp},{di},{rsp},~{dirflag},~{fpsr},~{flags}"(i32 range(i32 0, 256) %i.n, i64 %i.d) #10, !srcloc !15 ; 2 uses
  %i.p = extractvalue { i32, i64 } %i.o, 1
  tail call void @llvm.write_register.i64(metadata !3, i64 %i.p)
  %.pre = load i8, ptr %0, align 8
  %i.q = extractvalue { i32, i64 } %i.o, 0
  %i.r = zext i8 %.pre to i32
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %1, ptr noundef @.str.5, i32 noundef %i.q, i32 noundef %i.r) #12
  %i.s = load i8, ptr %i.a, align 1
  %i.t = and i8 %i.s, 8
  %.not.i66 = icmp eq i8 %i.t, 0
  %i.u = getelementptr i8, ptr %0, i64 8          ; 3 uses
  br i1 %.not.i66, label %.preheader.i71, label %hweight_long.exit.i67

hweight_long.exit.i67:                            ; preds = %bb.b
  %i.v = load i64, ptr %i.u, align 8
  %i.w = tail call i64 @llvm.read_register.i64(metadata !3)
  %i.x = tail call { i64, i64 } asm "# ALT: oldinstr\0A771:\0A\09call __sw_hweight64\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 4*32+23)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09popcntq $2, $0\0A775:\0A.popsection\0A", "={ax},={rsp},{di},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %i.v, i64 %i.w) #10, !srcloc !14 ; 2 uses
  %i.y = extractvalue { i64, i64 } %i.x, 1
  tail call void @llvm.write_register.i64(metadata !3, i64 %i.y)
  %i.z = extractvalue { i64, i64 } %i.x, 0
  %i.aa = trunc i64 %i.z to i32
  br label %intel_sseu_subslice_total.exit94

.preheader.i71:                                   ; preds = %bb.b
  %i.ab = load i8, ptr %i.u, align 8
  %i.ac = zext i8 %i.ab to i32
  %i.ad = tail call i64 @llvm.read_register.i64(metadata !3)
  %i.ae = tail call { i32, i64 } asm "# ALT: oldinstr\0A771:\0A\09call __sw_hweight32\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 4*32+23)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09popcntl $2, $0\0A775:\0A.popsection\0A", "={ax},={rsp},{di},{rsp},~{dirflag},~{fpsr},~{flags}"(i32 range(i32 0, 256) %i.ac, i64 %i.ad) #10, !srcloc !15 ; 2 uses
  %i.af = extractvalue { i32, i64 } %i.ae, 0
  %i.ag = extractvalue { i32, i64 } %i.ae, 1
  tail call void @llvm.write_register.i64(metadata !3, i64 %i.ag)
  %i.ah = getelementptr i8, ptr %0, i64 9
  %i.ai = load i8, ptr %i.ah, align 1
  %i.aj = zext i8 %i.ai to i32
  %i.ak = tail call i64 @llvm.read_register.i64(metadata !3)
  %i.al = tail call { i32, i64 } asm "# ALT: oldinstr\0A771:\0A\09call __sw_hweight32\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 4*32+23)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09popcntl $2, $0\0A775:\0A.popsection\0A", "={ax},={rsp},{di},{rsp},~{dirflag},~{fpsr},~{flags}"(i32 range(i32 0, 256) %i.aj, i64 %i.ak) #10, !srcloc !15 ; 2 uses
  %i.am = extractvalue { i32, i64 } %i.al, 1
  tail call void @llvm.write_register.i64(metadata !3, i64 %i.am)
  %i.an = extractvalue { i32, i64 } %i.al, 0
  %i.ao = add i32 %i.an, %i.af
  %i.ap = getelementptr i8, ptr %0, i64 10
  %i.aq = load i8, ptr %i.ap, align 2
  %i.ar = zext i8 %i.aq to i32
  %i.as = tail call i64 @llvm.read_register.i64(metadata !3)
  %i.at = tail call { i32, i64 } asm "# ALT: oldinstr\0A771:\0A\09call __sw_hweight32\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 4*32+23)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09popcntl $2, $0\0A775:\0A.popsection\0A", "={ax},={rsp},{di},{rsp},~{dirflag},~{fpsr},~{flags}"(i32 range(i32 0, 256) %i.ar, i64 %i.as) #10, !srcloc !15 ; 2 uses
  %i.au = extractvalue { i32, i64 } %i.at, 1
  tail call void @llvm.write_register.i64(metadata !3, i64 %i.au)
  %i.av = extractvalue { i32, i64 } %i.at, 0
  %i.aw = add i32 %i.ao, %i.av
  br label %intel_sseu_subslice_total.exit94

intel_sseu_subslice_total.exit94:                 ; preds = %hweight_long.exit.i67, %.preheader.i71
  %.027.i68 = phi i32 [ %i.aa, %hweight_long.exit.i67 ], [ %i.aw, %.preheader.i71 ]
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %1, ptr noundef @.str.2, i32 noundef %.027.i68) #12
  %i.ax = getelementptr i8, ptr %0, i64 168       ; 2 uses
  %i.ay = load i8, ptr %i.ax, align 8
  %.not98 = icmp eq i8 %i.ay, 0
  br i1 %.not98, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %intel_sseu_subslice_total.exit94, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %intel_sseu_subslice_total.exit94 ] ; 3 uses
  %i.az = getelementptr i8, ptr %i.u, i64 %indvars.iv
  %i.ba = load i8, ptr %i.az, align 1
  %i.bb = zext i8 %i.ba to i32                    ; 2 uses
  %i.bc = tail call i64 @llvm.read_register.i64(metadata !3)
  %i.bd = tail call { i32, i64 } asm "# ALT: oldinstr\0A771:\0A\09call __sw_hweight32\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 4*32+23)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09popcntl $2, $0\0A775:\0A.popsection\0A", "={ax},={rsp},{di},{rsp},~{dirflag},~{fpsr},~{flags}"(i32 range(i32 0, 256) %i.bb, i64 %i.bc) #10, !srcloc !15 ; 2 uses
  %i.be = extractvalue { i32, i64 } %i.bd, 1
  tail call void @llvm.write_register.i64(metadata !3, i64 %i.be)
  %i.bf = extractvalue { i32, i64 } %i.bd, 0
  %i.bg = trunc nuw nsw i64 %indvars.iv to i32
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %1, ptr noundef @.str.6, i32 noundef %i.bg, i32 noundef %i.bf, i32 noundef %i.bb) #12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bh = load i8, ptr %i.ax, align 8
  %i.bi = zext i8 %i.bh to i64
  %i.bj = icmp samesign ult i64 %indvars.iv.next, %i.bi
  br i1 %i.bj, label %.lr.ph, label %.loopexit, !llvm.loop !66

.loopexit:                                        ; preds = %.lr.ph, %intel_sseu_subslice_total.exit94, %intel_sseu_subslice_total.exit
  %i.bk = getelementptr i8, ptr %0, i64 160
  %i.bl = load i16, ptr %i.bk, align 8
  %i.bm = zext i16 %i.bl to i32
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %1, ptr noundef @.str.7, i32 noundef %i.bm) #12
  %i.bn = getelementptr i8, ptr %0, i64 162
  %i.bo = load i8, ptr %i.bn, align 2
  %i.bp = zext i8 %i.bo to i32
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %1, ptr noundef @.str.8, i32 noundef %i.bp) #12
  %i.bq = load i8, ptr %i.a, align 1
  %i.br = trunc i8 %i.bq to i1
  %i.bs = select i1 %i.br, ptr @.str.22, ptr @.str.23
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %1, ptr noundef @.str.9, ptr noundef nonnull %i.bs) #12
  %i.bt = load i8, ptr %i.a, align 1
  %i.bu = and i8 %i.bt, 2
  %.not95 = icmp eq i8 %i.bu, 0
  %i.bv = select i1 %.not95, ptr @.str.23, ptr @.str.22
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %1, ptr noundef @.str.10, ptr noundef nonnull %i.bv) #12
  %i.bw = load i8, ptr %i.a, align 1
  %i.bx = and i8 %i.bw, 4
  %.not96 = icmp eq i8 %i.bx, 0
  %i.by = select i1 %.not96, ptr @.str.23, ptr @.str.22
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %1, ptr noundef @.str.11, ptr noundef nonnull %i.by) #12
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @drm_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @intel_sseu_print_topology(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 168        ; 2 uses
  %i.b = load i8, ptr %i.a, align 8
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %2, ptr noundef @.str.12) #12
  br label %sseu_print_xehp_topology.exit

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 1656
  %i.e = load i8, ptr %i.d, align 8
  %i.f = zext i8 %i.e to i32
  %i.g = shl nuw nsw i32 %i.f, 8
  %i.h = getelementptr i8, ptr %0, i64 1657
  %i.i = load i8, ptr %i.h, align 1
  %i.j = zext i8 %i.i to i32
  %i.k = or disjoint i32 %i.g, %i.j
  %i.l = icmp samesign ugt i32 %i.k, 3126
  br i1 %i.l, label %bb.d, label %.lr.ph79.i

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr i8, ptr %1, i64 169        ; 2 uses
  %i.n = load i8, ptr %i.m, align 1
  %.not.i = icmp eq i8 %i.n, 0
  br i1 %.not.i, label %sseu_print_xehp_topology.exit, label %sseu_get_eus.exit.lr.ph.i

sseu_get_eus.exit.lr.ph.i:                        ; preds = %bb.d
  %i.o = getelementptr i8, ptr %1, i64 32
  %i.p = getelementptr i8, ptr %1, i64 16
  %i.q = getelementptr i8, ptr %1, i64 24
  br label %sseu_get_eus.exit.i

sseu_get_eus.exit.i:                              ; preds = %sseu_get_eus.exit.i, %sseu_get_eus.exit.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %sseu_get_eus.exit.lr.ph.i ], [ %indvars.iv.next.i, %sseu_get_eus.exit.i ] ; 5 uses
  %i.r = getelementptr [2 x i8], ptr %i.o, i64 %indvars.iv.i
  %.0.i.i = load i16, ptr %i.r, align 2
  %i.s = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.t = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.p, i64 range(i64 -2147483648, 255) %indvars.iv.i) #11, !srcloc !21 ; 2 uses
end_hunk_0
