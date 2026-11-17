Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/scatterlist?download=true
inline.NumInlined: 123
inline.NumDeleted: 65
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@__sg_alloc_table:bb.a

bb.g:                                             ; preds = %bb.f
  %i.ar = icmp ugt i32 %.046, %2
  %.041 = select i1 %i.ar, i32 %i.t, i32 %.046    ; 3 uses
  %i.as = sub i32 %.046, %.041                    ; 2 uses
  %i.at = zext i32 %.0 to i64
  %i.au = shl nuw nsw i64 %i.at, 5
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ao, i8 0, i64 %i.au, i1 false)
  %i.av = add i32 %.0, -1
  %i.aw = zext i32 %i.av to i64
  %i.ax = getelementptr [32 x i8], ptr %i.ao, i64 %i.aw ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8
  %i.az = and i64 %i.ay, -4
  %i.ba = or disjoint i64 %i.az, 2
  store i64 %i.ba, ptr %i.ax, align 8
  %i.bb = load i32, ptr %i.c, align 4
  %i.bc = add i32 %i.bb, %.041                    ; 2 uses
  store i32 %i.bc, ptr %i.c, align 4
  store i32 %i.bc, ptr %i.d, align 8
  %i.bd = getelementptr [32 x i8], ptr %.047, i64 %i.an ; 3 uses
  %i.be = getelementptr i8, ptr %i.bd, i64 8
  store i32 0, ptr %i.be, align 8
  %i.bf = getelementptr i8, ptr %i.bd, i64 12
  store i32 0, ptr %i.bf, align 4
  %i.bg = ptrtoint ptr %i.ao to i64
  %i.bh = and i64 %i.bg, -4
  %i.bi = or disjoint i64 %i.bh, 1
  store i64 %i.bi, ptr %i.bd, align 8
  %.not59 = icmp eq i32 %i.as, 0
  br i1 %.not59, label %.thread72, label %bb.f, !llvm.loop !37

.thread72:                                        ; preds = %bb.g, %bb.e, %bb.c
  %.04964.lcssa = phi ptr [ %i.v, %bb.e ], [ %.04964.peel, %bb.c ], [ %i.ao, %bb.g ]
  %.041.lcssa79 = phi i32 [ %.041.peel82, %bb.e ], [ %.041.peel, %bb.c ], [ %.041, %bb.g ]
  %i.bj = add i32 %.041.lcssa79, -1
  %i.bk = zext i32 %i.bj to i64
  %i.bl = getelementptr [32 x i8], ptr %.04964.lcssa, i64 %i.bk ; 2 uses
  %i.bm = load i64, ptr %i.bl, align 8
  %i.bn = and i64 %i.bm, -4
  %i.bo = or disjoint i64 %i.bn, 2
  store i64 %i.bo, ptr %i.bl, align 8
  br label %.thread67

.thread67:                                        ; preds = %bb.b, %.loopexit, %.thread72, %bb.a
  %.2 = phi i32 [ 0, %.thread72 ], [ -22, %bb.a ], [ -12, %.loopexit ], [ -12, %bb.b ]
  ret i32 %.2
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -22, 1) i32 @sg_alloc_table(ptr nofree noundef captures(none) initializes((0, 16)) %0, i32 noundef %1, i32 noundef %2) #2 align 16 prefalign(16) {
bb.a:
  %i.a = tail call i32 @__sg_alloc_table(ptr noundef %0, i32 noundef %1, i32 noundef 128, ptr noundef null, i32 noundef 0, i32 noundef %2, ptr noundef @sg_kmalloc) #16 ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b, !prof !15

bb.b:                                             ; preds = %bb.a
  tail call void @sg_free_table(ptr noundef %0) #16
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i32 %i.a
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @sg_kmalloc(i32 noundef %0, i32 noundef %1) #2 align 16 prefalign(16) {
bb.a:
  %i.a = icmp eq i32 %0, 128
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 @get_free_pages_noprof(i32 noundef %1, i32 noundef 0) #15
  %i.c = inttoptr i64 %i.b to ptr
  br label %_kmalloc_noprof.exit

bb.c:                                             ; preds = %bb.a
  %i.d = zext i32 %0 to i64
  %i.e = shl nuw nsw i64 %i.d, 5
  %i.f = tail call noalias align 8 ptr @__kmalloc_noprof(i64 noundef range(i64 0, -8589934590) %i.e, i32 noundef %1) #17
  br label %_kmalloc_noprof.exit

_kmalloc_noprof.exit:                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ %i.c, %bb.b ], [ %i.f, %bb.c ]
  ret ptr %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @sg_alloc_append_table_from_pages(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) #2 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16         ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 8 uses
  %i.c = and i32 %5, -4096                        ; 4 uses
  %i.d = zext i32 %i.c to i64
  %i.e = icmp eq i32 %i.c, 0
  br i1 %i.e, label %bb.b, label %.critedge136, !prof !13

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "540: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 540b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 540) #14, !srcloc !44
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, ptr @.str.1, i32 472, i32 2305, i64 16) #14, !srcloc !45
  tail call void asm sideeffect "541: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 541b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 541) #14, !srcloc !46
  br label %bb.aa

.critedge136:                                     ; preds = %bb.a
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %.critedge139.thread, label %bb.c

bb.c:                                             ; preds = %.critedge136
  %.not129 = icmp eq i32 %3, 0
  br i1 %.not129, label %.critedge138, label %.critedge139.thread150, !prof !15

.critedge139.thread150:                           ; preds = %bb.c
  tail call void asm sideeffect "542: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 542b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 542) #14, !srcloc !47
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, ptr @.str.1, i32 481, i32 2305, i64 16) #14, !srcloc !48
  tail call void asm sideeffect "543: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 543b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 543) #14, !srcloc !49
  br label %bb.aa

.critedge138:                                     ; preds = %bb.c
  %i.f = getelementptr i8, ptr %i.b, i64 12
  %i.g = load i32, ptr %i.f, align 4              ; 4 uses
  %.val = load i64, ptr %i.b, align 8
  %i.h = getelementptr i8, ptr %i.b, i64 8
  %.val141 = load i32, ptr %i.h, align 8
  %i.i = and i64 %.val, 288230376151711740
  %i.j = load i64, ptr @vmemmap_base, align 8     ; 3 uses
  %i.k = sub i64 %i.i, %i.j
  %i.l = shl i64 %i.k, 6
  %i.m = zext i32 %.val141 to i64
  %i.n = zext i32 %i.g to i64
  %i.o = add nuw nsw i64 %i.m, %i.n
  %i.p = add i64 %i.o, %i.l
  %i.q = lshr i64 %i.p, 12                        ; 2 uses
  %i.r = load ptr, ptr %1, align 8
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = sub i64 %i.s, %i.j
  %i.u = ashr exact i64 %i.t, 6
  %i.v = icmp eq i64 %i.u, %i.q
  br i1 %i.v, label %bb.d, label %.critedge139.thread

bb.d:                                             ; preds = %.critedge138
  %.not130171 = icmp eq i32 %2, 0
  br i1 %.not130171, label %.critedge139, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.d
  %i.w = inttoptr i64 %i.j to ptr
  %i.x = getelementptr [64 x i8], ptr %i.w, i64 %i.q
  %i.y = getelementptr i8, ptr %i.x, i64 -64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.f
  %.093174 = phi ptr [ %i.aq, %bb.f ], [ %1, %.lr.ph.preheader ] ; 5 uses
  %.097173 = phi i32 [ %i.ar, %bb.f ], [ %2, %.lr.ph.preheader ] ; 3 uses
  %.0110172 = phi ptr [ %i.ap, %bb.f ], [ %i.y, %.lr.ph.preheader ]
  %i.z = load ptr, ptr %.093174, align 8
  %i.aa = load i64, ptr @vmemmap_base, align 8    ; 2 uses
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.ab, %i.aa
  %i.ad = ashr exact i64 %i.ac, 6
  %i.ae = ptrtoint ptr %.0110172 to i64
  %i.af = sub i64 %i.ae, %i.aa
  %i.ag = ashr exact i64 %i.af, 6
  %i.ah = add nsw i64 %i.ag, 1
  %.not.i = icmp eq i64 %i.ad, %i.ah
  br i1 %.not.i, label %bb.e, label %.critedge139.thread

bb.e:                                             ; preds = %.lr.ph
  %i.ai = load ptr, ptr %i.a, align 8
  %i.aj = getelementptr i8, ptr %i.ai, i64 12     ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4
  %i.al = zext i32 %i.ak to i64
  %i.am = add nuw nsw i64 %i.al, 4096             ; 2 uses
  %i.an = icmp samesign ugt i64 %i.am, %i.d
  br i1 %i.an, label %.critedge139.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ao = trunc nuw i64 %i.am to i32
  store i32 %i.ao, ptr %i.aj, align 4
  %i.ap = load ptr, ptr %.093174, align 8
  %i.aq = getelementptr i8, ptr %.093174, i64 8
  %i.ar = add i32 %.097173, -1                    ; 2 uses
  %.not130 = icmp eq i32 %i.ar, 0
  br i1 %.not130, label %.critedge139, label %.lr.ph, !llvm.loop !40

.critedge139.thread:                              ; preds = %.lr.ph, %bb.e, %.critedge138, %.critedge136
  %.1116 = phi i32 [ 0, %.critedge136 ], [ %i.g, %.critedge138 ], [ %i.g, %bb.e ], [ %i.g, %.lr.ph ]
  %.3100 = phi i32 [ %2, %.critedge136 ], [ %2, %.critedge138 ], [ %.097173, %bb.e ], [ %.097173, %.lr.ph ] ; 3 uses
  %.396 = phi ptr [ %1, %.critedge136 ], [ %1, %.critedge138 ], [ %.093174, %bb.e ], [ %.093174, %.lr.ph ] ; 5 uses
  %i.as = icmp ugt i32 %.3100, 1
  br i1 %i.as, label %.lr.ph178, label %.preheader.lr.ph

.lr.ph178:                                        ; preds = %.critedge139.thread
  %i.at = load i64, ptr @vmemmap_base, align 8    ; 2 uses
  %wide.trip.count = zext i32 %.3100 to i64
  br label %bb.g

.preheader164:                                    ; preds = %bb.j
  %.not187 = icmp eq i32 %.1109, 0
  br i1 %.not187, label %._crit_edge, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.critedge139.thread, %.preheader164
  %.0108.lcssa206 = phi i32 [ %.1109, %.preheader164 ], [ 1, %.critedge139.thread ] ; 3 uses
  %i.au = getelementptr i8, ptr %0, i64 24        ; 3 uses
  %8 = add i32 %5, -4096
  %9 = lshr i32 %8, 12
  %10 = add nuw nsw i32 %9, 1
  br label %.preheader

bb.g:                                             ; preds = %.lr.ph178, %bb.j
  %indvars.iv = phi i64 [ 1, %.lr.ph178 ], [ %indvars.iv.next, %bb.j ] ; 3 uses
  %.0108177 = phi i32 [ 1, %.lr.ph178 ], [ %.1109, %bb.j ] ; 2 uses
  %.0119175 = phi i32 [ 0, %.lr.ph178 ], [ %.1120, %bb.j ]
  %i.av = add i32 %.0119175, 4096                 ; 2 uses
  %.not134 = icmp ugt i32 %i.c, %i.av
  br i1 %.not134, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aw = getelementptr [8 x i8], ptr %.396, i64 %indvars.iv
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = getelementptr [8 x i8], ptr %.396, i64 %indvars.iv
  %i.az = getelementptr i8, ptr %i.ay, i64 -8
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = ptrtoint ptr %i.ax to i64
  %i.bc = sub i64 %i.bb, %i.at
  %i.bd = ashr exact i64 %i.bc, 6
  %i.be = ptrtoint ptr %i.ba to i64
  %i.bf = sub i64 %i.be, %i.at
  %i.bg = ashr exact i64 %i.bf, 6
  %i.bh = add nsw i64 %i.bg, 1
  %.not.i142 = icmp eq i64 %i.bd, %i.bh
  br i1 %.not.i142, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.bi = add i32 %.0108177, 1
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %.1120 = phi i32 [ 0, %bb.i ], [ %i.av, %bb.h ]
  %.1109 = phi i32 [ %i.bi, %bb.i ], [ %.0108177, %bb.h ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader164, label %bb.g, !llvm.loop !41

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.y
  %.0102184 = phi i32 [ %3, %.preheader.lr.ph ], [ 0, %bb.y ] ; 2 uses
  %.0104183 = phi i64 [ %4, %.preheader.lr.ph ], [ %i.eb, %bb.y ] ; 2 uses
  %.0111182 = phi ptr [ %i.b, %.preheader.lr.ph ], [ %.0.i, %bb.y ] ; 3 uses
  %.0113181 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.ea, %bb.y ] ; 2 uses
  %.0122179 = phi i32 [ 0, %.preheader.lr.ph ], [ %.0101.lcssa, %bb.y ] ; 6 uses
  %i.bj = load i64, ptr @vmemmap_base, align 8    ; 2 uses
  %11 = add i32 %10, %.0122179
  %i.bk = add i32 %.0122179, 1
  %umax = tail call i32 @llvm.umax.i32(i32 %.3100, i32 %i.bk) ; 3 uses
  %i.bl = add i32 %umax, -1                       ; 2 uses
  %exitcond192.not214 = icmp eq i32 %.0122179, %i.bl
  br i1 %exitcond192.not214, label %._crit_edge219, label %.lr.ph218

bb.k:                                             ; preds = %bb.l
  %exitcond192.not = icmp eq i32 %.0101217, %i.bl
  br i1 %exitcond192.not, label %._crit_edge219, label %.lr.ph218, !llvm.loop !42

.lr.ph218:                                        ; preds = %.preheader, %bb.k
  %.0101.in216 = phi i32 [ %.0101217, %bb.k ], [ %.0122179, %.preheader ] ; 2 uses
  %.2121215 = phi i32 [ %i.bm, %bb.k ], [ 0, %.preheader ]
  %i.bm = add nuw i32 %.2121215, 4096             ; 2 uses
  %.not132 = icmp ugt i32 %i.c, %i.bm
  br i1 %.not132, label %bb.l, label %._crit_edge219

bb.l:                                             ; preds = %.lr.ph218
  %.0101217 = add i32 %.0101.in216, 1             ; 4 uses
  %i.bn = zext i32 %.0101217 to i64
  %i.bo = getelementptr [8 x i8], ptr %.396, i64 %i.bn
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = zext i32 %.0101.in216 to i64
  %i.br = getelementptr [8 x i8], ptr %.396, i64 %i.bq
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = ptrtoint ptr %i.bp to i64
  %i.bu = sub i64 %i.bt, %i.bj
  %i.bv = ashr exact i64 %i.bu, 6
  %i.bw = ptrtoint ptr %i.bs to i64
  %i.bx = sub i64 %i.bw, %i.bj
  %i.by = ashr exact i64 %i.bx, 6
  %i.bz = add nsw i64 %i.by, 1
  %.not.i143 = icmp eq i64 %i.bv, %i.bz
  br i1 %.not.i143, label %bb.k, label %._crit_edge220, !llvm.loop !42

._crit_edge220:                                   ; preds = %bb.l
  br label %._crit_edge219, !llvm.loop !42

._crit_edge219:                                   ; preds = %bb.k, %.lr.ph218, %._crit_edge220, %.preheader
  %.0101.lcssa = phi i32 [ %umax, %.preheader ], [ %.0101217, %._crit_edge220 ], [ %umax, %bb.k ], [ %11, %.lr.ph218 ] ; 2 uses
  %i.ca = sub nuw i32 %.0108.lcssa206, %.0113181
  %i.cb = add i32 %i.ca, %6                       ; 3 uses
  %.not30.i = icmp eq ptr %.0111182, null         ; 2 uses
  br i1 %.not30.i, label %bb.p, label %bb.m

bb.m:                                             ; preds = %._crit_edge219
  %.val.i.i = load i64, ptr %.0111182, align 8
  %i.cc = and i64 %.val.i.i, 2
  %.not.i.i = icmp eq i64 %i.cc, 0
  br i1 %.not.i.i, label %bb.n, label %sg_next.exit.i

bb.n:                                             ; preds = %bb.m
  %i.cd = getelementptr i8, ptr %.0111182, i64 32 ; 2 uses
  %.val7.i.i = load i64, ptr %i.cd, align 8       ; 2 uses
  %i.ce = trunc i64 %.val7.i.i to i1
  br i1 %i.ce, label %bb.o, label %sg_next.exit.i, !prof !13

bb.o:                                             ; preds = %bb.n
  %i.cf = and i64 %.val7.i.i, -4
  %i.cg = inttoptr i64 %i.cf to ptr
  br label %sg_next.exit.i

sg_next.exit.i:                                   ; preds = %bb.o, %bb.n, %bb.m
  %.06.i.i = phi ptr [ null, %bb.m ], [ %i.cg, %bb.o ], [ %i.cd, %bb.n ] ; 3 uses
  %.val.i = load i64, ptr %.06.i.i, align 8
  %i.ch = and i64 %.val.i, 2
  %i.ci = icmp ne i64 %i.ch, 0
  %i.cj = icmp ne i32 %i.cb, 1
  %or.cond.not.i = and i1 %i.cj, %i.ci
  br i1 %or.cond.not.i, label %bb.p, label %get_next_sg.exit

bb.p:                                             ; preds = %sg_next.exit.i, %._crit_edge219
  %.027.i = phi ptr [ %.06.i.i, %sg_next.exit.i ], [ null, %._crit_edge219 ] ; 3 uses
  %i.ck = tail call i32 @llvm.umin.i32(i32 %i.cb, i32 128) ; 3 uses
  %i.cl = zext nneg i32 %i.ck to i64              ; 2 uses
  %i.cm = icmp ugt i32 %i.cb, 127
  br i1 %i.cm, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cn = tail call i64 @get_free_pages_noprof(i32 noundef %7, i32 noundef 0) #15
  %i.co = inttoptr i64 %i.cn to ptr
  br label %sg_kmalloc.exit.i

bb.r:                                             ; preds = %bb.p
  %i.cp = shl nuw nsw i64 %i.cl, 5
  %i.cq = tail call noalias align 8 ptr @__kmalloc_noprof(i64 noundef range(i64 0, -8589934590) %i.cp, i32 noundef %7) #17
  br label %sg_kmalloc.exit.i

sg_kmalloc.exit.i:                                ; preds = %bb.r, %bb.q
  %.0.i.i = phi ptr [ %i.co, %bb.q ], [ %i.cq, %bb.r ] ; 7 uses
  %.not.i144 = icmp eq ptr %.0.i.i, null
  br i1 %.not.i144, label %get_next_sg.exit.thread, label %bb.s

bb.s:                                             ; preds = %sg_kmalloc.exit.i
  %i.cr = shl nuw nsw i64 %i.cl, 5
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %.0.i.i, i8 0, i64 %i.cr, i1 false)
  %i.cs = add nsw i32 %i.ck, -1                   ; 2 uses
  %i.ct = zext i32 %i.cs to i64
  %i.cu = getelementptr [32 x i8], ptr %.0.i.i, i64 %i.ct ; 2 uses
  %i.cv = load i64, ptr %i.cu, align 8
  %i.cw = and i64 %i.cv, -4
  %i.cx = or disjoint i64 %i.cw, 2
  store i64 %i.cx, ptr %i.cu, align 8
  br i1 %.not30.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cy = load i32, ptr %i.au, align 8
  %i.cz = add i32 %i.cy, %i.cs
  store i32 %i.cz, ptr %i.au, align 8
  %i.da = getelementptr i8, ptr %.027.i, i64 8
  store i32 0, ptr %i.da, align 8
  %i.db = getelementptr i8, ptr %.027.i, i64 12
  store i32 0, ptr %i.db, align 4
  %i.dc = ptrtoint ptr %.0.i.i to i64
  %i.dd = and i64 %i.dc, -4
  %i.de = or disjoint i64 %i.dd, 1
  store i64 %i.de, ptr %.027.i, align 8
  br label %get_next_sg.exit

bb.u:                                             ; preds = %bb.s
  store ptr %.0.i.i, ptr %0, align 8
  store i32 %i.ck, ptr %i.au, align 8
  br label %get_next_sg.exit

get_next_sg.exit:                                 ; preds = %sg_next.exit.i, %bb.t, %bb.u
  %.0.i = phi ptr [ %.0.i.i, %bb.t ], [ %.06.i.i, %sg_next.exit.i ], [ %.0.i.i, %bb.u ] ; 8 uses
  %i.df = icmp ugt ptr %.0.i, inttoptr (i64 -4096 to ptr)
  br i1 %i.df, label %get_next_sg.exit.thread, label %bb.w

get_next_sg.exit.thread:                          ; preds = %sg_kmalloc.exit.i, %get_next_sg.exit
  %.0.i156 = phi ptr [ %.0.i, %get_next_sg.exit ], [ inttoptr (i64 -12 to ptr), %sg_kmalloc.exit.i ]
  %i.dg = load ptr, ptr %i.a, align 8             ; 2 uses
  %.not133 = icmp eq ptr %i.dg, null
  br i1 %.not133, label %.thread, label %bb.v

bb.v:                                             ; preds = %get_next_sg.exit.thread
  %i.dh = getelementptr i8, ptr %i.dg, i64 12
  store i32 %.1116, ptr %i.dh, align 4
  br label %.thread

.thread:                                          ; preds = %get_next_sg.exit.thread, %bb.v
  %i.di = ptrtoint ptr %.0.i156 to i64
  %i.dj = trunc nsw i64 %i.di to i32
  br label %bb.aa

bb.w:                                             ; preds = %get_next_sg.exit
  %i.dk = zext i32 %.0122179 to i64
  %i.dl = getelementptr [8 x i8], ptr %.396, i64 %i.dk
  %i.dm = load ptr, ptr %i.dl, align 8
  %i.dn = ptrtoint ptr %i.dm to i64               ; 2 uses
  %i.do = and i64 %i.dn, 3
  %.not.i.i145 = icmp eq i64 %i.do, 0
  br i1 %.not.i.i145, label %bb.y, label %bb.x, !prof !15

bb.x:                                             ; preds = %bb.w
  tail call void asm sideeffect "472: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 472b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 472) #14, !srcloc !16
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, ptr @.str.4, i32 137, i32 0, i64 16) #14, !srcloc !17
  unreachable

bb.y:                                             ; preds = %bb.w
  %i.dp = sub i32 %.0101.lcssa, %.0122179
  %i.dq = shl i32 %i.dp, 12
  %i.dr = sub i32 %i.dq, %.0102184
  %i.ds = zext i32 %i.dr to i64                   ; 2 uses
  %i.dt = tail call i64 @llvm.umin.i64(i64 %.0104183, i64 %i.ds)
  %i.du = trunc nuw i64 %i.dt to i32
  %i.dv = load i64, ptr %.0.i, align 8
  %i.dw = and i64 %i.dv, 3
  %i.dx = or disjoint i64 %i.dw, %i.dn
  store i64 %i.dx, ptr %.0.i, align 8
  %i.dy = getelementptr i8, ptr %.0.i, i64 8
  store i32 %.0102184, ptr %i.dy, align 8
  %i.dz = getelementptr i8, ptr %.0.i, i64 12
  store i32 %i.du, ptr %i.dz, align 4
  %i.ea = add nuw i32 %.0113181, 1                ; 2 uses
  %i.eb = sub i64 %.0104183, %i.ds
  %exitcond193.not = icmp eq i32 %i.ea, %.0108.lcssa206
  br i1 %exitcond193.not, label %._crit_edge, label %.preheader, !llvm.loop !43

._crit_edge:                                      ; preds = %bb.y, %.preheader164
  %.0113.lcssa = phi i32 [ 0, %.preheader164 ], [ %.0108.lcssa206, %bb.y ]
  %.0111.lcssa = phi ptr [ %i.b, %.preheader164 ], [ %.0.i, %bb.y ] ; 2 uses
  %i.ec = getelementptr i8, ptr %0, i64 8         ; 2 uses
  %i.ed = load i32, ptr %i.ec, align 8
  %i.ee = add i32 %i.ed, %.0113.lcssa             ; 2 uses
  store i32 %i.ee, ptr %i.ec, align 8
  %i.ef = getelementptr i8, ptr %0, i64 12
  store i32 %i.ee, ptr %i.ef, align 4
  store ptr %.0111.lcssa, ptr %i.a, align 8
  br label %.critedge139

.critedge139:                                     ; preds = %bb.f, %bb.d, %._crit_edge
  %.1112 = phi ptr [ %.0111.lcssa, %._crit_edge ], [ %i.b, %bb.d ], [ %i.b, %bb.f ] ; 2 uses
  %.not131 = icmp eq i32 %6, 0
  br i1 %.not131, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %.critedge139
  %i.eg = load i64, ptr %.1112, align 8
  %i.eh = and i64 %i.eg, -4
  %i.ei = or disjoint i64 %i.eh, 2
  store i64 %i.ei, ptr %.1112, align 8
  br label %bb.aa

bb.aa:                                            ; preds = %.thread, %.critedge139.thread150, %bb.b, %.critedge139, %bb.z
  %.4 = phi i32 [ -22, %bb.b ], [ -22, %.critedge139.thread150 ], [ %i.dj, %.thread ], [ 0, %bb.z ], [ 0, %.critedge139 ]
  ret i32 %.4
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @sg_alloc_table_from_pages_segment(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, i32 noundef %5, i32 noundef %6) #2 align 16 prefalign(16) {
bb.a:
  %7 = alloca %struct.sg_append_table, align 8    ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, i8 0, i64 32, i1 false)
  %i.a = call i32 @sg_alloc_append_table_from_pages(ptr noundef nonnull %7, ptr noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, i32 noundef %5, i32 noundef 0, i32 noundef %6) #16 ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.c = load i32, ptr %i.b, align 8              ; 4 uses
  %i.d = load ptr, ptr %7, align 8                ; 4 uses
  %.not27.i.i = icmp eq ptr %i.d, null
  %.not2830.i.i = icmp eq i32 %i.c, 0
  %or.cond = select i1 %.not27.i.i, i1 true, i1 %.not2830.i.i, !prof !50
  br i1 %or.cond, label %sg_free_append_table.exit, label %.lr.ph.preheader.i.i, !prof !50

.lr.ph.preheader.i.i:                             ; preds = %bb.b
  %i.e = icmp ugt i32 %i.c, 128
  br i1 %i.e, label %.lr.ph.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.preheader.i.i
  %i.f = icmp eq i32 %i.c, 128
  br i1 %i.f, label %sg_kfree.exit2.thread19.i, label %sg_kfree.exit2.thread.i

sg_kfree.exit2.thread19.i:                        ; preds = %bb.c
  %i.g = ptrtoint ptr %i.d to i64
  tail call void @free_pages(i64 noundef %i.g, i32 noundef 0) #15
  br label %sg_free_append_table.exit

end_hunk_0
