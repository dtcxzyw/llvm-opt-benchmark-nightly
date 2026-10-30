Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/slub?download=true
inline.NumInlined: 1451
inline.NumDeleted: 288
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 7
begin_hunk_0_@do_kmem_cache_create:bb.a
  %.not.i80 = icmp eq ptr %i.iv, null
  br i1 %.not.i80, label %init_kmem_cache_nodes.exit, label %bb.ax, !prof !27

bb.ax:                                            ; preds = %bb.aw
  %i.iw = load ptr, ptr %i.a, align 8
  %i.ix = tail call ptr @debugfs_create_dir(ptr noundef %i.iw, ptr noundef nonnull %i.iv) #31 ; 2 uses
  %i.iy = tail call ptr @debugfs_create_file_full(ptr noundef @.str.169, i16 noundef zeroext 256, ptr noundef %i.ix, ptr noundef %0, ptr noundef null, ptr noundef @slab_debugfs_fops) #31 ; 0 uses
  %i.iz = tail call ptr @debugfs_create_file_full(ptr noundef @.str.170, i16 noundef zeroext 256, ptr noundef %i.ix, ptr noundef %0, ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noundef @slab_debugfs_fops) #31 ; 0 uses
  br label %init_kmem_cache_nodes.exit

.loopexit:                                        ; preds = %bb.af, %bb.al, %bb.a, %init_percpu_sheaves.exit, %fls.exit, %bb.c
  %.0.ph = phi i32 [ -22, %bb.al ], [ -22, %bb.c ], [ -12, %fls.exit ], [ -22, %bb.a ], [ -12, %init_percpu_sheaves.exit ], [ -22, %bb.af ]
  tail call void @__kmem_cache_release(ptr noundef %0) #34
  br label %init_kmem_cache_nodes.exit

init_kmem_cache_nodes.exit:                       ; preds = %bb.as, %bb.av, %bb.aw, %bb.ax, %.loopexit
  %.090 = phi i32 [ %.0.ph, %.loopexit ], [ 0, %bb.av ], [ 0, %bb.ax ], [ 0, %bb.as ], [ 0, %bb.aw ]
  ret i32 %.090
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc range(i32 0, 2) i32 @calculate_sizes(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) initializes((24, 28), (32, 44), (72, 76)) %1) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8          ; 4 uses
  %i.b = load i32, ptr %i.a, align 8              ; 8 uses
  %i.c = getelementptr i8, ptr %1, i64 28         ; 2 uses
  %i.d = load i32, ptr %i.c, align 4              ; 3 uses
  %i.e = add i32 %i.d, 7
  %i.f = and i32 %i.e, -8                         ; 3 uses
  %i.g = and i32 %i.b, 4
  %.not = icmp eq i32 %i.g, 0                     ; 2 uses
  %i.h = and i32 %i.b, 512
  %.not62 = icmp eq i32 %i.h, 0                   ; 2 uses
  %i.i = and i32 %i.b, 516
  %or.cond = icmp eq i32 %i.i, 4
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr i8, ptr %1, i64 64
  %i.k = load ptr, ptr %i.j, align 8
  %.not63 = icmp eq ptr %i.k, null
  br i1 %.not63, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = or i32 %i.b, 32768
  br label %bb.e

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.m = and i32 %i.b, -32769
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %storemerge = phi i32 [ %i.l, %bb.c ], [ %i.m, %bb.d ]
  store i32 %storemerge, ptr %i.a, align 8
  %i.n = and i32 %i.b, 2
  %.not64 = icmp ne i32 %i.n, 0                   ; 3 uses
  %i.o = icmp eq i32 %i.f, %i.d
  %or.cond95 = select i1 %.not64, i1 %i.o, i1 false
  %i.p = add i32 %i.f, 8
  %.090 = select i1 %or.cond95, i32 %i.p, i32 %i.f ; 5 uses
  %i.q = getelementptr i8, ptr %1, i64 72
  store i32 %.090, ptr %i.q, align 8
  br i1 %.not62, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr i8, ptr %0, i64 16
  %i.s = load i8, ptr %i.r, align 8, !range !57, !noundef !58
  %i.t = trunc nuw i8 %i.s to i1
  %brmerge.not = and i1 %.not, %i.t
  br i1 %brmerge.not, label %bb.h, label %bb.m

bb.g:                                             ; preds = %bb.e
  br i1 %.not, label %bb.h, label %bb.m

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.u = getelementptr i8, ptr %1, i64 64         ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8
  %.not66 = icmp eq ptr %i.v, null
  br i1 %.not66, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = getelementptr i8, ptr %0, i64 16
  %i.x = load i8, ptr %i.w, align 8, !range !57, !noundef !58
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i, %bb.h
  br i1 %.not64, label %bb.k, label %slub_debug_orig_size.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.z = icmp ult i32 %i.d, 8
  br i1 %i.z, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr @slub_debug_enabled, i1 false) #29
          to label %slub_debug_orig_size.exit.thread [label %kmem_cache_debug_flags.exit.i], !srcloc !21

kmem_cache_debug_flags.exit.i:                    ; preds = %bb.l
  %i.aa = load i32, ptr %i.a, align 8
  %i.ab = and i32 %i.aa, 136
  %or.cond97 = icmp eq i32 %i.ab, 136
  br i1 %or.cond97, label %bb.m, label %slub_debug_orig_size.exit.thread

bb.m:                                             ; preds = %kmem_cache_debug_flags.exit.i, %bb.f, %bb.k, %bb.i, %bb.g
  %i.ac = getelementptr i8, ptr %1, i64 40
  store i32 %.090, ptr %i.ac, align 8
  %i.ad = add i32 %.090, 8
  br label %bb.r

slub_debug_orig_size.exit.thread:                 ; preds = %bb.l, %kmem_cache_debug_flags.exit.i, %bb.j
  br i1 %.not62, label %bb.n, label %bb.o

bb.n:                                             ; preds = %slub_debug_orig_size.exit.thread
  %i.ae = load ptr, ptr %i.u, align 8
  %.not67 = icmp eq ptr %i.ae, null
  br i1 %.not67, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n, %slub_debug_orig_size.exit.thread
  %i.af = getelementptr i8, ptr %0, i64 16
  %i.ag = load i8, ptr %i.af, align 8, !range !57, !noundef !58
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ai = getelementptr i8, ptr %0, i64 12
  %i.aj = load i32, ptr %i.ai, align 4
  %i.ak = getelementptr i8, ptr %1, i64 40
  store i32 %i.aj, ptr %i.ak, align 8
  br label %bb.r

bb.q:                                             ; preds = %bb.o, %bb.n
  %i.al = load i32, ptr %i.c, align 4
  %i.am = lshr i32 %i.al, 1
  %i.an = and i32 %i.am, 2147483640
  %i.ao = getelementptr i8, ptr %1, i64 40
  store i32 %i.an, ptr %i.ao, align 8
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q, %bb.m
  %.1 = phi i32 [ %.090, %bb.q ], [ %.090, %bb.p ], [ %i.ad, %bb.m ]
  %i.ap = and i32 %i.b, 128
  %.not68 = icmp eq i32 %i.ap, 0
  %i.aq = and i32 %i.b, 8
  %spec.select.v = or disjoint i32 %i.aq, 64
  %spec.select = select i1 %.not68, i32 0, i32 %spec.select.v
  %.2 = add i32 %.1, %spec.select                 ; 2 uses
  br i1 %.not64, label %bb.s, label %._crit_edge

._crit_edge:                                      ; preds = %bb.r
  %.phi.trans.insert = getelementptr i8, ptr %1, i64 76
  %.pre = load i32, ptr %.phi.trans.insert, align 4 ; 2 uses
  %.pre101 = sub i32 0, %.pre
  br label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ar = add i32 %.2, 8
  %i.as = getelementptr i8, ptr %1, i64 80
  %i.at = getelementptr i8, ptr %1, i64 76
  %i.au = load i32, ptr %i.at, align 4            ; 3 uses
  %i.av = add i32 %i.au, 7
  %i.aw = sub i32 0, %i.au                        ; 2 uses
  %i.ax = and i32 %i.av, %i.aw                    ; 2 uses
  store i32 %i.ax, ptr %i.as, align 8
  %i.ay = add i32 %i.ar, %i.ax
  br label %bb.t

bb.t:                                             ; preds = %._crit_edge, %bb.s
  %.pre-phi = phi i32 [ %.pre101, %._crit_edge ], [ %i.aw, %bb.s ]
  %i.az = phi i32 [ %.pre, %._crit_edge ], [ %i.au, %bb.s ]
  %.3 = phi i32 [ %.2, %._crit_edge ], [ %i.ay, %bb.s ]
  %i.ba = add i32 %.3, -1
  %i.bb = add i32 %i.ba, %i.az
  %i.bc = and i32 %i.bb, %.pre-phi                ; 14 uses
  %i.bd = getelementptr i8, ptr %1, i64 24        ; 2 uses
  store i32 %i.bc, ptr %i.bd, align 8
  %i.be = getelementptr i8, ptr %1, i64 32
  %i.bf = tail call i64 @reciprocal_value(i32 noundef %i.bc) #31
  store i64 %i.bf, ptr %i.be, align 8
  %i.bg = load i32, ptr @slub_min_objects, align 4 ; 2 uses
  %.not.i79 = icmp eq i32 %i.bg, 0
  br i1 %.not.i79, label %hweight_long.exit.i, label %get_order.exit52.i

hweight_long.exit.i:                              ; preds = %bb.t
  %i.bh = load i64, ptr @__cpu_present_mask, align 8
  %i.bi = tail call i64 @llvm.read_register.i64(metadata !10)
  %i.bj = tail call { i64, i64 } asm "# ALT: oldinstr\0A771:\0A\09call __sw_hweight64\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 4*32+23)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09popcntq $2, $0\0A775:\0A.popsection\0A", "={ax},={rsp},{di},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %i.bh, i64 %i.bi) #32, !srcloc !341 ; 2 uses
  %i.bk = extractvalue { i64, i64 } %i.bj, 1
  tail call void @llvm.write_register.i64(metadata !10, i64 %i.bk)
  %i.bl = extractvalue { i64, i64 } %i.bj, 0
  %i.bm = trunc i64 %i.bl to i32                  ; 2 uses
  %i.bn = icmp ult i32 %i.bm, 2
  %i.bo = load i32, ptr @nr_cpu_ids, align 4
  %spec.select.i = select i1 %i.bn, i32 %i.bo, i32 %i.bm
  %i.bp = tail call i32 asm "bsrl $1,$0", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 %spec.select.i, i32 -1) #32, !srcloc !62
  %i.bq = shl i32 %i.bp, 2
  %i.br = add i32 %i.bq, 8
  br label %get_order.exit52.i

get_order.exit52.i:                               ; preds = %hweight_long.exit.i, %bb.t
  %.040.i = phi i32 [ %i.bg, %bb.t ], [ %i.br, %hweight_long.exit.i ]
  %i.bs = load i32, ptr @slub_max_order, align 4  ; 9 uses
  %i.bt = load i32, ptr @slub_min_order, align 4
  %i.bu = shl i32 4096, %i.bs
  %i.bv = udiv i32 %i.bu, %i.bc
  %i.bw = tail call i32 @llvm.umax.i32(i32 %i.bv, i32 1)
  %i.bx = tail call i32 @llvm.umin.i32(i32 %.040.i, i32 %i.bw)
  %i.by = mul i32 %i.bx, %i.bc
  %i.bz = zext i32 %i.by to i64
  %i.ca = add nsw i64 %i.bz, -1
  %i.cb = lshr i64 %i.ca, 12
  %i.cc = tail call i32 asm "bsrq $1,${0:q}", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 0, -1) %i.cb, i32 -1) #32, !srcloc !59
  %i.cd = add i32 %i.cc, 1
  %i.ce = tail call i32 @llvm.umax.i32(i32 %i.bt, i32 %i.cd) ; 7 uses
  %i.cf = shl i32 4096, %i.ce
  %i.cg = udiv i32 %i.cf, %i.bc
  %i.ch = icmp ugt i32 %i.cg, 32767
  br i1 %i.ch, label %get_order.exit49.i, label %.preheader.i

.preheader.i:                                     ; preds = %get_order.exit52.i
  %.not14.i.i = icmp ugt i32 %i.ce, %i.bs
  br i1 %.not14.i.i, label %.thread.split.i, label %.lr.ph.i.i

get_order.exit49.i:                               ; preds = %get_order.exit52.i
  %i.ci = mul i32 %i.bc, 32767
  %i.cj = zext i32 %i.ci to i64
  %i.ck = add nsw i64 %i.cj, -1
  %i.cl = lshr i64 %i.ck, 12
  %i.cm = tail call i32 asm "bsrq $1,${0:q}", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 0, -1) %i.cl, i32 -1) #32, !srcloc !59
  br label %calculate_order.exit

.lr.ph.i.i:                                       ; preds = %.preheader.i, %bb.u
  %.01215.i.i = phi i32 [ %i.cq, %bb.u ], [ %i.ce, %.preheader.i ] ; 3 uses
  %i.cn = shl i32 4096, %.01215.i.i               ; 2 uses
  %i.co = urem i32 %i.cn, %i.bc
  %i.cp = lshr exact i32 %i.cn, 4
  %.not13.i.i = icmp ugt i32 %i.co, %i.cp
  br i1 %.not13.i.i, label %bb.u, label %calc_slab_order.exit.i

bb.u:                                             ; preds = %.lr.ph.i.i
  %i.cq = add i32 %.01215.i.i, 1                  ; 3 uses
  %.not.i65.i = icmp ugt i32 %i.cq, %i.bs
  br i1 %.not.i65.i, label %calc_slab_order.exit.i, label %.lr.ph.i.i, !llvm.loop !340

calc_slab_order.exit.i:                           ; preds = %bb.u, %.lr.ph.i.i
  %.012.lcssa.i.i = phi i32 [ %i.cq, %bb.u ], [ %.01215.i.i, %.lr.ph.i.i ] ; 2 uses
  %.not46.i = icmp ugt i32 %.012.lcssa.i.i, %i.bs
  br i1 %.not46.i, label %calc_slab_order.exit.thread.i, label %calculate_order.exit

calc_slab_order.exit.thread.i:                    ; preds = %calc_slab_order.exit.i
  %2 = add nuw i32 %i.bs, 1
  %3 = add i32 %i.ce, 1
  %umax78.i = tail call i32 @llvm.umax.i32(i32 %2, i32 %3) ; 5 uses
  br label %.lr.ph.i.1.i

.lr.ph.i.1.i:                                     ; preds = %bb.v, %calc_slab_order.exit.thread.i
  %.01215.i.1.i = phi i32 [ %i.cu, %bb.v ], [ %i.ce, %calc_slab_order.exit.thread.i ] ; 3 uses
  %i.cr = shl i32 4096, %.01215.i.1.i             ; 2 uses
  %i.cs = urem i32 %i.cr, %i.bc
  %i.ct = lshr exact i32 %i.cr, 3
  %.not13.i.1.i = icmp ugt i32 %i.cs, %i.ct
  br i1 %.not13.i.1.i, label %bb.v, label %calc_slab_order.exit.1.i

bb.v:                                             ; preds = %.lr.ph.i.1.i
  %i.cu = add i32 %.01215.i.1.i, 1                ; 2 uses
  %.not.i65.1.i = icmp ugt i32 %i.cu, %i.bs
  br i1 %.not.i65.1.i, label %calc_slab_order.exit.1.i, label %.lr.ph.i.1.i, !llvm.loop !340

calc_slab_order.exit.1.i:                         ; preds = %bb.v, %.lr.ph.i.1.i
  %.012.lcssa.i.1.i = phi i32 [ %umax78.i, %bb.v ], [ %.01215.i.1.i, %.lr.ph.i.1.i ] ; 2 uses
  %.not46.1.i = icmp ugt i32 %.012.lcssa.i.1.i, %i.bs
  br i1 %.not46.1.i, label %.lr.ph.i.2.i, label %calculate_order.exit

.lr.ph.i.2.i:                                     ; preds = %calc_slab_order.exit.1.i, %bb.w
  %.01215.i.2.i = phi i32 [ %i.cy, %bb.w ], [ %i.ce, %calc_slab_order.exit.1.i ] ; 3 uses
  %i.cv = shl i32 4096, %.01215.i.2.i             ; 2 uses
  %i.cw = urem i32 %i.cv, %i.bc
  %i.cx = lshr exact i32 %i.cv, 2
  %.not13.i.2.i = icmp ugt i32 %i.cw, %i.cx
  br i1 %.not13.i.2.i, label %bb.w, label %calc_slab_order.exit.2.i

bb.w:                                             ; preds = %.lr.ph.i.2.i
  %i.cy = add i32 %.01215.i.2.i, 1                ; 2 uses
  %exitcond = icmp eq i32 %i.cy, %umax78.i
  br i1 %exitcond, label %calc_slab_order.exit.2.i, label %.lr.ph.i.2.i, !llvm.loop !340

calc_slab_order.exit.2.i:                         ; preds = %bb.w, %.lr.ph.i.2.i
  %.012.lcssa.i.2.i = phi i32 [ %umax78.i, %bb.w ], [ %.01215.i.2.i, %.lr.ph.i.2.i ] ; 2 uses
  %.not46.2.i = icmp ugt i32 %.012.lcssa.i.2.i, %i.bs
  br i1 %.not46.2.i, label %.lr.ph.i.3.i, label %calculate_order.exit

.lr.ph.i.3.i:                                     ; preds = %calc_slab_order.exit.2.i, %bb.x
  %.01215.i.3.i = phi i32 [ %i.dc, %bb.x ], [ %i.ce, %calc_slab_order.exit.2.i ] ; 3 uses
  %i.cz = shl i32 4096, %.01215.i.3.i             ; 2 uses
  %i.da = urem i32 %i.cz, %i.bc
  %i.db = lshr exact i32 %i.cz, 1
  %.not13.i.3.i = icmp ugt i32 %i.da, %i.db
  br i1 %.not13.i.3.i, label %bb.x, label %calc_slab_order.exit.3.i

bb.x:                                             ; preds = %.lr.ph.i.3.i
  %i.dc = add i32 %.01215.i.3.i, 1                ; 2 uses
  %exitcond101 = icmp eq i32 %i.dc, %umax78.i
  br i1 %exitcond101, label %calc_slab_order.exit.3.i, label %.lr.ph.i.3.i, !llvm.loop !340

calc_slab_order.exit.3.i:                         ; preds = %bb.x, %.lr.ph.i.3.i
  %.012.lcssa.i.3.i = phi i32 [ %umax78.i, %bb.x ], [ %.01215.i.3.i, %.lr.ph.i.3.i ] ; 2 uses
  %.not46.3.i = icmp ugt i32 %.012.lcssa.i.3.i, %i.bs
  br i1 %.not46.3.i, label %.thread.split.i, label %calculate_order.exit

.thread.split.i:                                  ; preds = %calc_slab_order.exit.3.i, %.preheader.i
  %i.dd = zext i32 %i.bc to i64
  %i.de = add nsw i64 %i.dd, -1
  %i.df = lshr i64 %i.de, 12
  %i.dg = tail call i32 asm "bsrq $1,${0:q}", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 0, -1) %i.df, i32 -1) #32, !srcloc !59
  %.fr = freeze i32 %i.dg
  %i.dh = add i32 %.fr, 1                         ; 2 uses
  %i.di = icmp ult i32 %i.dh, 11
  br i1 %i.di, label %calculate_order.exit.thread, label %calculate_order.exit.thread93

calculate_order.exit:                             ; preds = %get_order.exit49.i, %calc_slab_order.exit.i, %calc_slab_order.exit.1.i, %calc_slab_order.exit.2.i, %calc_slab_order.exit.3.i
  %.1.i = phi i32 [ %i.cm, %get_order.exit49.i ], [ %.012.lcssa.i.3.i, %calc_slab_order.exit.3.i ], [ %.012.lcssa.i.2.i, %calc_slab_order.exit.2.i ], [ %.012.lcssa.i.i, %calc_slab_order.exit.i ], [ %.012.lcssa.i.1.i, %calc_slab_order.exit.1.i ] ; 2 uses
  %i.dj = icmp slt i32 %.1.i, 0
  br i1 %i.dj, label %calculate_order.exit.thread93, label %calculate_order.exit.thread

calculate_order.exit.thread:                      ; preds = %.thread.split.i, %calculate_order.exit
  %.1.i92 = phi i32 [ %.1.i, %calculate_order.exit ], [ %i.dh, %.thread.split.i ] ; 2 uses
  %i.dk = getelementptr i8, ptr %1, i64 56
  %i.dl = load i32, ptr %i.a, align 8             ; 5 uses
  %i.dm = and i32 %i.dl, 32
  %.not70 = icmp eq i32 %i.dm, 0
  %spec.store.select = select i1 %.not70, i32 262144, i32 262145
  %i.dn = lshr i32 %i.dl, 4
  %i.do = and i32 %i.dn, 4
  %spec.select100 = or disjoint i32 %spec.store.select, %i.do
  %i.dp = lshr i32 %i.dl, 10
  %i.dq = and i32 %i.dp, 16
  %spec.select116 = or disjoint i32 %spec.select100, %i.dq
  store i32 %spec.select116, ptr %i.dk, align 8
  %i.dr = and i32 %i.dl, 8
  %.not99 = icmp eq i32 %i.dr, 0
  br i1 %.not99, label %bb.y, label %get_order.exit

bb.y:                                             ; preds = %calculate_order.exit.thread
  %i.ds = and i32 %i.dl, 134279
  %or.cond.i = icmp eq i32 %i.ds, 0
  br i1 %or.cond.i, label %bb.z, label %calculate_sheaf_capacity.exit

bb.z:                                             ; preds = %bb.y
  %i.dt = load i32, ptr %i.bd, align 8            ; 3 uses
  %i.du = icmp ugt i32 %i.dt, 4095
  br i1 %i.du, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dv = icmp samesign ugt i32 %i.dt, 1023
  br i1 %i.dv, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dw = icmp samesign ugt i32 %i.dt, 255
  %i.dx = select i1 %i.dw, i64 240, i64 512
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z
  %.015.i = phi i64 [ 128, %bb.aa ], [ 64, %bb.z ], [ %i.dx, %bb.ab ]
  %i.dy = tail call i64 @kmalloc_size_roundup(i64 noundef %.015.i) #31
  %i.dz = add i64 %i.dy, 34359738336
  %i.ea = lshr i64 %i.dz, 3
  %i.eb = trunc i64 %i.ea to i32
  %i.ec = getelementptr i8, ptr %0, i64 32
  %i.ed = load i32, ptr %i.ec, align 8
  %i.ee = tail call i32 @llvm.umax.i32(i32 %i.ed, i32 %i.eb)
  br label %calculate_sheaf_capacity.exit

calculate_sheaf_capacity.exit:                    ; preds = %bb.y, %bb.ac
  %.0.i80 = phi i32 [ %i.ee, %bb.ac ], [ 0, %bb.y ]
  %i.ef = getelementptr i8, ptr %1, i64 44
  store i32 %.0.i80, ptr %i.ef, align 4
  br label %get_order.exit

get_order.exit:                                   ; preds = %calculate_sheaf_capacity.exit, %calculate_order.exit.thread
  %i.eg = getelementptr i8, ptr %1, i64 48
  %i.eh = shl i32 %.1.i92, 16
  %i.ei = shl i32 4096, %.1.i92
  %i.ej = udiv i32 %i.ei, %i.bc                   ; 2 uses
  %i.ek = add i32 %i.ej, %i.eh
  store i32 %i.ek, ptr %i.eg, align 8
  %i.el = getelementptr i8, ptr %1, i64 52
  %i.em = zext i32 %i.bc to i64
  %i.en = add nsw i64 %i.em, -1
  %i.eo = lshr i64 %i.en, 12
  %i.ep = tail call i32 asm "bsrq $1,${0:q}", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 0, -1) %i.eo, i32 -1) #32, !srcloc !59
  %i.eq = add i32 %i.ep, 1                        ; 2 uses
  %i.er = shl i32 %i.eq, 16
  %i.es = shl i32 4096, %i.eq
  %i.et = udiv i32 %i.es, %i.bc
  %i.eu = add i32 %i.et, %i.er
  store i32 %i.eu, ptr %i.el, align 4
  %i.ev = and i32 %i.ej, 65535
  %i.ew = icmp ne i32 %i.ev, 0
  %i.ex = zext i1 %i.ew to i32
  br label %calculate_order.exit.thread93

calculate_order.exit.thread93:                    ; preds = %.thread.split.i, %calculate_order.exit, %get_order.exit
  %.0 = phi i32 [ %i.ex, %get_order.exit ], [ 0, %calculate_order.exit ], [ 0, %.thread.split.i ]
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @pcpu_alloc_noprof(i64 noundef, i64 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #16

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc i32 @sysfs_slab_add(ptr noundef %0) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr @slab_kset, align 8
  %i.b = tail call i32 @slab_unmergeable(ptr noundef %0) #31 ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  %.b = load i1, ptr @disable_higher_order_debug, align 4
  %or.cond = select i1 %i.c, i1 %.b, i1 false
  %i.d = load i32, ptr @slub_debug, align 4
  %i.e = and i32 %i.d, 134
  %.not = icmp ne i32 %i.e, 0
  %spec.select = zext i1 %.not to i32
  %.0 = select i1 %or.cond, i32 %spec.select, i32 %i.b ; 2 uses
  %.not26 = icmp eq i32 %.0, 0                    ; 2 uses
  br i1 %.not26, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr @slab_kset, align 8
  %i.g = getelementptr i8, ptr %i.f, i64 24
  %i.h = getelementptr i8, ptr %0, i64 88         ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8
  tail call void @sysfs_remove_link(ptr noundef %i.g, ptr noundef %i.i) #31
  %i.j = load ptr, ptr %i.h, align 8
  br label %bb.p

bb.c:                                             ; preds = %bb.a
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @kmalloc_caches, i64 40), align 8
  %i.l = tail call noalias align 8 dereferenceable_or_null(32) ptr @__kmalloc_cache_noprof(ptr noundef %i.k, i32 noundef 3264, i64 noundef 32) #41 ; 10 uses
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %create_unique_id.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr i8, ptr %i.l, i64 1        ; 4 uses
  store i8 58, ptr %i.l, align 8
  %i.n = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.o = load i32, ptr %i.n, align 8              ; 4 uses
  %i.p = and i32 %i.o, 32
  %.not38.i = icmp eq i32 %i.p, 0
  br i1 %.not38.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr i8, ptr %i.l, i64 2
  store i8 100, ptr %i.m, align 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.035.i = phi ptr [ %i.q, %bb.e ], [ %i.m, %bb.d ] ; 3 uses
  %i.r = and i32 %i.o, 64
  %.not39.i = icmp eq i32 %i.r, 0
  br i1 %.not39.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr i8, ptr %.035.i, i64 1
  store i8 68, ptr %.035.i, align 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.1.i = phi ptr [ %i.s, %bb.g ], [ %.035.i, %bb.f ] ; 3 uses
  %i.t = and i32 %i.o, 16384
  %.not40.i = icmp eq i32 %i.t, 0
  br i1 %.not40.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = getelementptr i8, ptr %.1.i, i64 1
  store i8 97, ptr %.1.i, align 1
  %.pre.i = load i32, ptr %i.n, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.v = phi i32 [ %.pre.i, %bb.i ], [ %i.o, %bb.h ]
  %.2.i = phi ptr [ %i.u, %bb.i ], [ %.1.i, %bb.h ] ; 3 uses
  %i.w = and i32 %i.v, 1
  %.not41.i = icmp eq i32 %i.w, 0
  br i1 %.not41.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.x = getelementptr i8, ptr %.2.i, i64 1
  store i8 70, ptr %.2.i, align 1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.3.i = phi ptr [ %i.x, %bb.k ], [ %.2.i, %bb.j ] ; 3 uses
  %.not42.i = icmp eq ptr %.3.i, %i.m
  br i1 %.not42.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.y = getelementptr i8, ptr %.3.i, i64 1
  store i8 45, ptr %.3.i, align 1
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.5.i = phi ptr [ %i.y, %bb.m ], [ %i.m, %bb.l ] ; 3 uses
  %i.z = ptrtoint ptr %.5.i to i64
  %i.aa = ptrtoint ptr %i.l to i64
  %.neg.i = add i64 %i.aa, 32
  %i.ab = sub i64 %.neg.i, %i.z
  %i.ac = getelementptr i8, ptr %0, i64 24
end_hunk_0
begin_hunk_1_@__slab_free:bb.a
  tail call fastcc void @discard_slab(ptr noundef %0, ptr noundef %1) #34, !srcloc !450
  br label %.thread62

.thread62:                                        ; preds = %.thread, %.thread.peel, %bb.e, %bb.n, %bb.k, %bb.g, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  ret void
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc noundef zeroext i1 @slab_update_freelist(i32 %.8.val, ptr noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #9 align 16 {
bb.a:
  %i.a = and i32 %.8.val, 65536
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val = load i128, ptr %2, align 16             ; 2 uses
  %i.b = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %i.c = load i128, ptr %1, align 16              ; 2 uses
  %.sroa.03.0.extract.trunc.i.i = trunc i128 %i.c to i64
  %.sroa.7.0.extract.shift.i.i = lshr i128 %i.c, 64
  %.sroa.7.0.extract.trunc.i.i = trunc nuw i128 %.sroa.7.0.extract.shift.i.i to i64
  %.sroa.0.0.extract.trunc.i.i = trunc i128 %.val to i64
  %.sroa.5.0.extract.shift.i.i = lshr i128 %.val, 64
  %.sroa.5.0.extract.trunc.i.i = trunc nuw i128 %.sroa.5.0.extract.shift.i.i to i64
  %i.d = tail call { i8, i64, i64 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock cmpxchg16b $1", "={@ccz},=*m,={ax},={dx},{bx},{cx},*m,2,3,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i128) %i.b, i64 %.sroa.0.0.extract.trunc.i.i, i64 %.sroa.5.0.extract.trunc.i.i, ptr elementtype(i128) %i.b, i64 %.sroa.03.0.extract.trunc.i.i, i64 %.sroa.7.0.extract.trunc.i.i) #29, !srcloc !106 ; 3 uses
  %i.e = extractvalue { i8, i64, i64 } %i.d, 0    ; 2 uses
  %i.f = icmp ult i8 %i.e, 2
  tail call void @llvm.assume(i1 %i.f)
  %i.g = trunc nuw i8 %i.e to i1
  br i1 %i.g, label %__update_freelist_fast.exit.thread, label %__update_freelist_fast.exit.thread3, !prof !31

__update_freelist_fast.exit.thread3:              ; preds = %bb.b
  %i.h = extractvalue { i8, i64, i64 } %i.d, 2
  %i.i = extractvalue { i8, i64, i64 } %i.d, 1
  %.sroa.7.0.insert.ext.i.i = zext i64 %i.h to i128
  %.sroa.7.0.insert.shift.i.i = shl nuw i128 %.sroa.7.0.insert.ext.i.i, 64
  %.sroa.03.0.insert.ext.i.i = zext i64 %i.i to i128
  %.sroa.03.0.insert.insert.i.i = or disjoint i128 %.sroa.7.0.insert.shift.i.i, %.sroa.03.0.insert.ext.i.i
  store i128 %.sroa.03.0.insert.insert.i.i, ptr %1, align 16
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.j = tail call i64 asm sideeffect "# __raw_save_flags\0A\09pushf ; pop $0", "=r,~{memory},~{dirflag},~{fpsr},~{flags}"() #29, !srcloc !64
  tail call void asm sideeffect "cli", "~{memory},~{dirflag},~{fpsr},~{flags}"() #29, !srcloc !65
  tail call void asm "incl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) @__preempt_count, ptr elementtype(i32) @__preempt_count) #29, !srcloc !25
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #29, !srcloc !107
  %i.k = tail call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock  btsq  $2, $0", "=*m,={@ccc},Ir,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 0, ptr elementtype(i64) %0) #29, !srcloc !108 ; 2 uses
  %i.l = icmp ult i8 %i.k, 2
  tail call void @llvm.assume(i1 %i.l)
  %i.m = trunc nuw i8 %i.k to i1
  br i1 %i.m, label %.lr.ph.i, label %bit_spin_lock.exit.i, !prof !24

.lr.ph.i:                                         ; preds = %bb.c, %bb.e
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #29, !srcloc !109
  %i.n = tail call i8 asm sideeffect "decl %gs:$0", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) @__preempt_count, ptr elementtype(i32) @__preempt_count) #29, !srcloc !26 ; 2 uses
  %i.o = icmp ult i8 %i.n, 2
  tail call void @llvm.assume(i1 %i.o)
  %i.p = trunc nuw i8 %i.n to i1
  br i1 %i.p, label %bb.d, label %.backedge.i.preheader, !prof !27

bb.d:                                             ; preds = %.lr.ph.i
  %i.q = tail call i64 @llvm.read_register.i64(metadata !10)
  %i.r = tail call i64 asm sideeffect "call __SCT__preempt_schedule", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %i.q) #29, !srcloc !110
  tail call void @llvm.write_register.i64(metadata !10, i64 %i.r)
  br label %.backedge.i.preheader

.backedge.i.preheader:                            ; preds = %bb.d, %.lr.ph.i
  br label %.backedge.i

.backedge.i:                                      ; preds = %.backedge.i.preheader, %.backedge.i
  tail call void asm sideeffect "pause", "~{memory},~{dirflag},~{fpsr},~{flags}"() #29, !srcloc !102
  %i.s = load volatile i64, ptr %0, align 8
  %i.t = and i64 %i.s, 1
  %.not.i12 = icmp eq i64 %i.t, 0
  br i1 %.not.i12, label %bb.e, label %.backedge.i, !llvm.loop !7

bb.e:                                             ; preds = %.backedge.i
  tail call void asm "incl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) @__preempt_count, ptr elementtype(i32) @__preempt_count) #29, !srcloc !25
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #29, !srcloc !111
  %i.u = tail call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock  btsq  $2, $0", "=*m,={@ccc},Ir,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 0, ptr elementtype(i64) %0) #29, !srcloc !108 ; 2 uses
  %i.v = icmp ult i8 %i.u, 2
  tail call void @llvm.assume(i1 %i.v)
  %i.w = trunc nuw i8 %i.u to i1
  br i1 %i.w, label %.lr.ph.i, label %bit_spin_lock.exit.i, !prof !112, !llvm.loop !8

bit_spin_lock.exit.i:                             ; preds = %bb.e, %bb.c
  %i.x = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %i.y = load ptr, ptr %i.x, align 16
  %i.z = load ptr, ptr %1, align 16
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bit_spin_lock.exit.i
  %i.ab = getelementptr i8, ptr %0, i64 40        ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = getelementptr i8, ptr %1, i64 8
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = icmp eq i64 %i.ac, %i.ae
  br i1 %i.af, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ag = load ptr, ptr %2, align 16
  store ptr %i.ag, ptr %i.x, align 16
  %i.ah = getelementptr i8, ptr %2, i64 8
  %i.ai = load i64, ptr %i.ah, align 8
  store volatile i64 %i.ai, ptr %i.ab, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bit_spin_lock.exit.i
  %.0.i = phi i1 [ true, %bb.g ], [ false, %bb.f ], [ false, %bit_spin_lock.exit.i ] ; 2 uses
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #29, !srcloc !113
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock andb ${1:b},$0", "=*m,iq,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %0, i32 -2, ptr elementtype(i8) %0) #29, !srcloc !91
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #29, !srcloc !114
  %i.aj = tail call i8 asm sideeffect "decl %gs:$0", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) @__preempt_count, ptr elementtype(i32) @__preempt_count) #29, !srcloc !26 ; 2 uses
  %i.ak = icmp ult i8 %i.aj, 2
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = trunc nuw i8 %i.aj to i1
  br i1 %i.al, label %bb.i, label %__update_freelist_slow.exit, !prof !27

bb.i:                                             ; preds = %bb.h
  %i.am = tail call i64 @llvm.read_register.i64(metadata !10)
  %i.an = tail call i64 asm sideeffect "call __SCT__preempt_schedule", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %i.am) #29, !srcloc !115
  tail call void @llvm.write_register.i64(metadata !10, i64 %i.an)
  br label %__update_freelist_slow.exit

__update_freelist_slow.exit:                      ; preds = %bb.h, %bb.i
  %i.ao = and i64 %i.j, 512
  %.not.i11.not = icmp eq i64 %i.ao, 0
  br i1 %.not.i11.not, label %__update_freelist_fast.exit, label %.split

.split:                                           ; preds = %__update_freelist_slow.exit
  tail call void asm sideeffect "sti", "~{memory},~{dirflag},~{fpsr},~{flags}"() #29, !srcloc !66
  br i1 %.0.i, label %__update_freelist_fast.exit.thread, label %bb.j, !prof !116

__update_freelist_fast.exit:                      ; preds = %__update_freelist_slow.exit
  br i1 %.0.i, label %__update_freelist_fast.exit.thread, label %bb.j, !prof !116

bb.j:                                             ; preds = %.split, %__update_freelist_fast.exit.thread3, %__update_freelist_fast.exit
  tail call void asm sideeffect "pause", "~{memory},~{dirflag},~{fpsr},~{flags}"() #29, !srcloc !102
  br label %__update_freelist_fast.exit.thread

__update_freelist_fast.exit.thread:               ; preds = %bb.b, %.split, %__update_freelist_fast.exit, %bb.j
  %.010.in2 = phi i1 [ true, %.split ], [ true, %__update_freelist_fast.exit ], [ false, %bb.j ], [ true, %bb.b ]
  ret i1 %.010.in2
}

; Function Attrs: fn_ret_thunk_extern noinline noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @free_to_partial_list(ptr nofree noundef readonly captures(address) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i64 noundef %5) unnamed_addr #14 align 16 prefalign(16) {
bb.a:
  %.val49 = load i64, ptr %1, align 16
  %i.a = lshr i64 %.val49, 58
  %i.b = getelementptr [16 x i8], ptr %0, i64 %i.a
  %i.c = getelementptr i8, ptr %i.b, i64 192
  %i.d = load ptr, ptr %i.c, align 8              ; 7 uses
  %i.e = getelementptr i8, ptr %0, i64 8          ; 9 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = and i32 %i.f, 128
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = tail call fastcc i32 @set_track_prepare(i32 noundef 8192) #34, !srcloc !451
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.043 = phi i32 [ %i.h, %bb.b ], [ 0, %bb.a ]
  %i.i = tail call i64 @_raw_spin_lock_irqsave(ptr noundef %i.d) #31 ; 2 uses
  %i.j = load i32, ptr %i.e, align 8
  %i.k = and i32 %i.j, 1
  %.not.i = icmp eq i32 %i.k, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = tail call fastcc i32 @check_slab(ptr noundef readonly %0, ptr noundef %1) #34, !srcloc !452
  %.not50.i = icmp eq i32 %i.l, 0
  br i1 %.not50.i, label %free_debug_processing.exit, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.m = getelementptr i8, ptr %1, i64 40         ; 6 uses
  %i.n = load i32, ptr %i.m, align 8
  %i.o = and i32 %i.n, 65535                      ; 2 uses
  %i.p = icmp slt i32 %i.o, %4
  br i1 %i.p, label %bb.f, label %.preheader.i

.preheader.i:                                     ; preds = %bb.e
  %.not7084.i = icmp slt i32 %4, 1
  br i1 %.not7084.i, label %.split.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.q = ptrtoint ptr %1 to i64
  %i.r = getelementptr i8, ptr %0, i64 80         ; 2 uses
  %i.s = getelementptr i8, ptr %0, i64 24
  %i.t = getelementptr i8, ptr %1, i64 8
  %i.u = getelementptr i8, ptr %0, i64 40         ; 3 uses
  %i.v = getelementptr i8, ptr %0, i64 72         ; 2 uses
  %i.w = getelementptr i8, ptr %0, i64 88
  %i.x = getelementptr i8, ptr %1, i64 32         ; 3 uses
  %i.y = getelementptr i8, ptr %0, i64 28         ; 2 uses
  %6 = add nuw nsw i32 %4, 1
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ptr, ptr, ...) @slab_err(ptr noundef readonly %0, ptr noundef %1, ptr noundef @.str.63, i32 noundef %i.o, i32 noundef %4) #34, !srcloc !453
  br label %free_debug_processing.exit

bb.g:                                             ; preds = %bb.y, %.lr.ph.i
  %i.z = phi i32 [ 1, %.lr.ph.i ], [ %i.db, %bb.y ] ; 5 uses
  %.04285.i = phi ptr [ %2, %.lr.ph.i ], [ %i.da, %bb.y ] ; 23 uses
  %i.aa = load i32, ptr %i.e, align 8             ; 3 uses
  %i.ab = and i32 %i.aa, 1
  %.not51.i = icmp eq i32 %i.ab, 0
  br i1 %.not51.i, label %free_consistency_checks.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not.i.i.i = icmp eq ptr %.04285.i, null
  br i1 %.not.i.i.i, label %check_valid_pointer.exit.thread30.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = load i64, ptr @vmemmap_base, align 8
  %i.ad = sub i64 %i.q, %i.ac
  %i.ae = shl i64 %i.ad, 6
  %i.af = load i64, ptr @page_offset_base, align 8
  %i.ag = add i64 %i.ae, %i.af                    ; 2 uses
  %i.ah = inttoptr i64 %i.ag to ptr               ; 2 uses
  %i.ai = and i32 %i.aa, 2
  %.not.i.i.i.i = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i.i.i, label %restore_red_left.exit.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aj = load i32, ptr %i.r, align 8
  %i.ak = zext i32 %i.aj to i64
  %i.al = sub nsw i64 0, %i.ak
  %i.am = getelementptr i8, ptr %.04285.i, i64 %i.al
  br label %restore_red_left.exit.i.i.i

restore_red_left.exit.i.i.i:                      ; preds = %bb.j, %bb.i
  %.0.i.i.i.i = phi ptr [ %i.am, %bb.j ], [ %.04285.i, %bb.i ] ; 3 uses
  %i.an = icmp ult ptr %.0.i.i.i.i, %i.ah
  br i1 %i.an, label %check_valid_pointer.exit.thread.i.i, label %bb.k

bb.k:                                             ; preds = %restore_red_left.exit.i.i.i
  %i.ao = load i32, ptr %i.m, align 8
  %i.ap = lshr i32 %i.ao, 16
  %i.aq = and i32 %i.ap, 32767
  %i.ar = load i32, ptr %i.s, align 8             ; 2 uses
  %i.as = mul i32 %i.aq, %i.ar
  %i.at = zext i32 %i.as to i64
  %i.au = getelementptr i8, ptr %i.ah, i64 %i.at
  %.not17.i.i.i = icmp ult ptr %.0.i.i.i.i, %i.au
  br i1 %.not17.i.i.i, label %check_valid_pointer.exit.i.i, label %check_valid_pointer.exit.thread.i.i

check_valid_pointer.exit.i.i:                     ; preds = %bb.k
  %i.av = ptrtoint ptr %.0.i.i.i.i to i64
  %i.aw = sub i64 %i.av, %i.ag
  %i.ax = zext i32 %i.ar to i64
  %i.ay = srem i64 %i.aw, %i.ax
  %.not18.i.not.i.i = icmp eq i64 %i.ay, 0
  br i1 %.not18.i.not.i.i, label %check_valid_pointer.exit.thread30.i.i, label %check_valid_pointer.exit.thread.i.i

check_valid_pointer.exit.thread.i.i:              ; preds = %check_valid_pointer.exit.i.i, %bb.k, %restore_red_left.exit.i.i.i
  tail call void (ptr, ptr, ptr, ...) @slab_err(ptr noundef readonly %0, ptr noundef %1, ptr noundef @.str.66, ptr noundef nonnull %.04285.i) #34, !srcloc !454
  br label %free_debug_processing.exit

check_valid_pointer.exit.thread30.i.i:            ; preds = %check_valid_pointer.exit.i.i, %bb.h
  %i.az = tail call fastcc zeroext i1 @on_freelist(ptr noundef readonly %0, ptr noundef %1, ptr noundef %.04285.i) #34, !srcloc !455
  br i1 %i.az, label %bb.l, label %bb.m

bb.l:                                             ; preds = %check_valid_pointer.exit.thread30.i.i
  tail call fastcc void @object_err(ptr noundef readonly %0, ptr noundef %1, ptr noundef %.04285.i, ptr noundef @.str.67) #34, !srcloc !456
  br label %free_debug_processing.exit

bb.m:                                             ; preds = %check_valid_pointer.exit.thread30.i.i
  %i.ba = tail call fastcc i32 @check_object(ptr noundef readonly %0, ptr noundef %1, ptr noundef %.04285.i, i8 noundef zeroext -52) #34, !srcloc !457
  %.not25.i.i = icmp eq i32 %i.ba, 0
  br i1 %.not25.i.i, label %free_debug_processing.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bb = load ptr, ptr %i.t, align 8             ; 2 uses
  %.not26.i.i = icmp eq ptr %0, %i.bb
  br i1 %.not26.i.i, label %.free_consistency_checks.exit_crit_edge.i, label %bb.o, !prof !31

.free_consistency_checks.exit_crit_edge.i:        ; preds = %bb.n
  %.pre.i = load i32, ptr %i.e, align 8
  br label %free_consistency_checks.exit.i

bb.o:                                             ; preds = %bb.n
  %.not27.i.i = icmp eq ptr %i.bb, null
  br i1 %.not27.i.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  tail call void (ptr, ptr, ptr, ...) @slab_err(ptr noundef null, ptr noundef %1, ptr noundef @.str.68, ptr noundef %.04285.i) #34, !srcloc !458
  br label %free_debug_processing.exit

bb.q:                                             ; preds = %bb.o
  tail call fastcc void @object_err(ptr noundef readonly %0, ptr noundef %1, ptr noundef %.04285.i, ptr noundef @.str.69) #34, !srcloc !459
  br label %free_debug_processing.exit

free_consistency_checks.exit.i:                   ; preds = %.free_consistency_checks.exit_crit_edge.i, %bb.g
  %i.bc = phi i32 [ %.pre.i, %.free_consistency_checks.exit_crit_edge.i ], [ %i.aa, %bb.g ] ; 2 uses
  %i.bd = and i32 %i.bc, 128
  %.not53.i = icmp eq i32 %i.bd, 0
  br i1 %.not53.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %free_consistency_checks.exit.i
  %.val56.i = load i32, ptr %i.u, align 8
  %.val57.i = load i32, ptr %i.v, align 8         ; 3 uses
  %.not.i.i.i58.i = icmp ult i32 %.val56.i, %.val57.i
  %i.be = add i32 %.val57.i, 8
  %spec.select.i.i.i.i = select i1 %.not.i.i.i58.i, i32 %.val57.i, i32 %i.be
  %i.bf = zext i32 %spec.select.i.i.i.i to i64
  %i.bg = getelementptr i8, ptr %.04285.i, i64 %i.bf ; 5 uses
  %i.bh = getelementptr i8, ptr %i.bg, i64 32
  %i.bi = getelementptr i8, ptr %i.bg, i64 40
  store i32 %.043, ptr %i.bi, align 8
  store i64 %5, ptr %i.bh, align 8
  %i.bj = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) @cpu_number) #29, !srcloc !105
  %i.bk = getelementptr i8, ptr %i.bg, i64 44
  store i32 %i.bj, ptr %i.bk, align 4
  %i.bl = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr @current_task) #32, !srcloc !28
  %i.bm = inttoptr i64 %i.bl to ptr
  %i.bn = getelementptr i8, ptr %i.bm, i64 1528
  %i.bo = load i32, ptr %i.bn, align 8
  %i.bp = getelementptr i8, ptr %i.bg, i64 48
  store i32 %i.bo, ptr %i.bp, align 8
  %i.bq = load volatile i64, ptr @jiffies, align 64
  %i.br = getelementptr i8, ptr %i.bg, i64 56
  store i64 %i.bq, ptr %i.br, align 8
  %.pre96.i = load i32, ptr %i.e, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %free_consistency_checks.exit.i
  %i.bs = phi i32 [ %.pre96.i, %bb.r ], [ %i.bc, %free_consistency_checks.exit.i ] ; 2 uses
  %i.bt = and i32 %i.bs, 1024
  %.not.i.i = icmp eq i32 %i.bt, 0
  br i1 %.not.i.i, label %trace.exit.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bu = load ptr, ptr %i.w, align 8
  %i.bv = load i32, ptr %i.m, align 8
  %i.bw = and i32 %i.bv, 65535
  %i.bx = load ptr, ptr %i.x, align 16
  %i.by = tail call i32 (ptr, ...) @_printk(ptr noundef @.str.50, ptr noundef %i.bu, ptr noundef nonnull @.str.52, ptr noundef %.04285.i, i32 noundef %i.bw, ptr noundef %i.bx) #30 ; 0 uses
  %i.bz = load i32, ptr %i.y, align 4
  %i.ca = zext i32 %i.bz to i64
  tail call void @print_hex_dump(ptr noundef @.str.53, ptr noundef @.str.54, i32 noundef 1, i32 noundef 16, i32 noundef 1, ptr noundef %.04285.i, i64 noundef %i.ca, i1 noundef zeroext true) #31
  tail call void @dump_stack() #30
  %.pre97.i = load i32, ptr %i.e, align 8
  br label %trace.exit.i

trace.exit.i:                                     ; preds = %bb.t, %bb.s
  %i.cb = phi i32 [ %i.bs, %bb.s ], [ %.pre97.i, %bb.t ]
  %i.cc = load i32, ptr %i.y, align 4             ; 4 uses
  %i.cd = and i32 %i.cb, 2
  %.not.i59.i = icmp eq i32 %i.cd, 0
  br i1 %.not.i59.i, label %slub_debug_orig_size.exit.thread.i.i, label %bb.u

bb.u:                                             ; preds = %trace.exit.i
  %i.ce = load i32, ptr %i.r, align 8
  %i.cf = zext i32 %i.ce to i64                   ; 2 uses
  %i.cg = sub nsw i64 0, %i.cf
  %i.ch = getelementptr i8, ptr %.04285.i, i64 %i.cg
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ch, i8 -69, i64 %i.cf, i1 false)
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr @slub_debug_enabled, i1 false) #29
          to label %slub_debug_orig_size.exit.thread.i.i [label %slub_debug_orig_size.exit.thread.i.i], !srcloc !21

slub_debug_orig_size.exit.thread.i.i:             ; preds = %bb.u, %bb.u, %trace.exit.i
  %i.ci = load i32, ptr %i.e, align 8             ; 2 uses
  %i.cj = and i32 %i.ci, 32768
  %.not23.i.i = icmp eq i32 %i.cj, 0
  br i1 %.not23.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %slub_debug_orig_size.exit.thread.i.i
  %i.ck = add i32 %i.cc, -1
  %i.cl = zext i32 %i.ck to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %.04285.i, i8 107, i64 %i.cl, i1 false)
  %i.cm = zext i32 %i.cc to i64
  %i.cn = getelementptr i8, ptr %.04285.i, i64 %i.cm
  %i.co = getelementptr i8, ptr %i.cn, i64 -1
  store i8 -91, ptr %i.co, align 1
  %.pre.i.i = load i32, ptr %i.e, align 8
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %slub_debug_orig_size.exit.thread.i.i
  %i.cp = phi i32 [ %.pre.i.i, %bb.v ], [ %i.ci, %slub_debug_orig_size.exit.thread.i.i ]
  %i.cq = and i32 %i.cp, 2
  %.not24.i.i = icmp eq i32 %i.cq, 0
  br i1 %.not24.i.i, label %init_object.exit.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cr = zext i32 %i.cc to i64
  %i.cs = getelementptr i8, ptr %.04285.i, i64 %i.cr
  %i.ct = load i32, ptr %i.v, align 8
  %i.cu = sub i32 %i.ct, %i.cc
  %i.cv = zext i32 %i.cu to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.cs, i8 -69, i64 %i.cv, i1 false)
  br label %init_object.exit.i

init_object.exit.i:                               ; preds = %bb.x, %bb.w
  %.not54.not.not.i = icmp eq ptr %.04285.i, %3
  br i1 %.not54.not.not.i, label %init_object.exit._crit_edge.i, label %bb.y

bb.y:                                             ; preds = %init_object.exit.i
  %.val.i = load i32, ptr %i.u, align 8
  %i.cw = ptrtoint ptr %.04285.i to i64
  %i.cx = zext i32 %.val.i to i64
  %i.cy = add i64 %i.cx, %i.cw
  %i.cz = inttoptr i64 %i.cy to ptr
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.cz, align 8
  %i.da = inttoptr i64 %.sroa.0.0.copyload.i.i to ptr ; 2 uses
  %i.db = add nuw nsw i32 %i.z, 1
  %exitcond = icmp eq i32 %i.z, %4
  br i1 %exitcond, label %.split.i.thread, label %bb.g

init_object.exit._crit_edge.i:                    ; preds = %init_object.exit.i
  %.not55.i = icmp eq i32 %i.z, %4
  br i1 %.not55.i, label %bb.z, label %.split.i

.split.i.thread:                                  ; preds = %bb.y
  tail call void (ptr, ptr, ptr, ...) @slab_err(ptr noundef readonly %0, ptr noundef %1, ptr noundef @.str.64, i32 noundef %4, i32 noundef %6) #34, !srcloc !460
  br label %free_debug_processing.exit

.split.thread.i:                                  ; preds = %.preheader.i
  tail call void (ptr, ptr, ptr, ...) @slab_err(ptr noundef readonly %0, ptr noundef %1, ptr noundef @.str.64, i32 noundef %4, i32 noundef 1) #34, !srcloc !460
  br label %free_debug_processing.exit

.split.i:                                         ; preds = %init_object.exit._crit_edge.i
  tail call void (ptr, ptr, ptr, ...) @slab_err(ptr noundef readonly %0, ptr noundef %1, ptr noundef @.str.64, i32 noundef %4, i32 noundef %i.z) #34, !srcloc !460
  br label %bb.z

free_debug_processing.exit:                       ; preds = %bb.m, %bb.d, %bb.f, %check_valid_pointer.exit.thread.i.i, %bb.l, %bb.p, %bb.q, %.split.thread.i, %.split.i.thread
  %.169.i = phi ptr [ %i.da, %.split.i.thread ], [ %2, %.split.thread.i ], [ %2, %bb.d ], [ %2, %bb.f ], [ %.04285.i, %bb.l ], [ %.04285.i, %bb.q ], [ %.04285.i, %bb.p ], [ %.04285.i, %check_valid_pointer.exit.thread.i.i ], [ %.04285.i, %bb.m ]
  tail call void (ptr, ptr, ...) @slab_fix(ptr noundef readonly %0, ptr noundef @.str.65, ptr noundef %.169.i) #34, !srcloc !461
  br label %.critedge

bb.z:                                             ; preds = %.split.i, %init_object.exit._crit_edge.i
  %.155.ph = phi i32 [ %4, %init_object.exit._crit_edge.i ], [ %i.z, %.split.i ]
  %i.dc = load ptr, ptr %i.x, align 16            ; 3 uses
  %i.dd = load i32, ptr %i.m, align 8             ; 2 uses
  %i.de = sub i32 %i.dd, %.155.ph
  %i.df = and i32 %i.de, 65535
  %i.dg = and i32 %i.dd, -65536
  %i.dh = or disjoint i32 %i.df, %i.dg
  store i32 %i.dh, ptr %i.m, align 8
  %.val = load i32, ptr %i.u, align 8
  %i.di = ptrtoint ptr %3 to i64
  %i.dj = zext i32 %.val to i64
  %i.dk = add i64 %i.dj, %i.di
  %i.dl = inttoptr i64 %i.dk to ptr
  %i.dm = ptrtoint ptr %i.dc to i64
  store i64 %i.dm, ptr %i.dl, align 8
  store ptr %2, ptr %i.x, align 16
  %i.dn = load i32, ptr %i.m, align 8
  %i.do = and i32 %i.dn, 65535
  %i.dp = icmp eq i32 %i.do, 0
  br i1 %i.dp, label %bb.aa, label %.thread68

bb.aa:                                            ; preds = %bb.z
  %i.dq = getelementptr i8, ptr %i.d, i64 8       ; 3 uses
  %i.dr = load i64, ptr %i.dq, align 8
  %i.ds = getelementptr i8, ptr %0, i64 16
  %i.dt = load i64, ptr %i.ds, align 8
  %.not44 = icmp ult i64 %i.dr, %i.dt
  %spec.select = select i1 %.not44, ptr null, ptr %1 ; 2 uses
  %.not45 = icmp eq ptr %i.dc, null
  br i1 %.not45, label %bb.ab, label %bb.ae

.thread68:                                        ; preds = %bb.z
  %.not4570 = icmp eq ptr %i.dc, null
  br i1 %.not4570, label %bb.ab, label %.critedge

bb.ab:                                            ; preds = %.thread68, %bb.aa
  %.072 = phi ptr [ null, %.thread68 ], [ %spec.select, %bb.aa ] ; 2 uses
  %.val50 = load i32, ptr %i.e, align 8
  %i.du = and i32 %.val50, 128
  %.not.i51 = icmp eq i32 %i.du, 0
  br i1 %.not.i51, label %remove_full.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dv = getelementptr i8, ptr %1, i64 16        ; 2 uses
  %i.dw = getelementptr i8, ptr %1, i64 24        ; 2 uses
  %i.dx = load ptr, ptr %i.dw, align 8            ; 2 uses
  %i.dy = load ptr, ptr %i.dv, align 16           ; 2 uses
  %i.dz = getelementptr i8, ptr %i.dy, i64 8
  store ptr %i.dx, ptr %i.dz, align 8
  store volatile ptr %i.dy, ptr %i.dx, align 8
  store ptr inttoptr (i64 -2401263026318606080 to ptr), ptr %i.dv, align 16
  store ptr inttoptr (i64 -2401263026318606046 to ptr), ptr %i.dw, align 8
  br label %remove_full.exit

remove_full.exit:                                 ; preds = %bb.ab, %bb.ac
  %.not46 = icmp eq ptr %.072, null
  br i1 %.not46, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %remove_full.exit
  %i.ea = getelementptr i8, ptr %1, i64 16        ; 3 uses
  %i.eb = getelementptr i8, ptr %i.d, i64 16
  %i.ec = getelementptr i8, ptr %1, i64 24
  %i.ed = getelementptr i8, ptr %i.d, i64 24      ; 2 uses
  %i.ee = load ptr, ptr %i.ed, align 8            ; 2 uses
  store ptr %i.ea, ptr %i.ed, align 8
  store ptr %i.eb, ptr %i.ea, align 16
  store ptr %i.ee, ptr %i.ec, align 8
  store volatile ptr %i.ea, ptr %i.ee, align 8
  %i.ef = getelementptr i8, ptr %1, i64 1         ; 2 uses
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %i.ef, i32 2, ptr elementtype(i8) %i.ef) #29, !srcloc !99
  %i.eg = getelementptr i8, ptr %i.d, i64 8       ; 2 uses
  %i.eh = load i64, ptr %i.eg, align 8
  %i.ei = add i64 %i.eh, 1
  store i64 %i.ei, ptr %i.eg, align 8
  br label %.critedge

bb.ae:                                            ; preds = %bb.aa
  %.not47 = icmp eq ptr %spec.select, null
  br i1 %.not47, label %.critedge, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ej = getelementptr i8, ptr %1, i64 16        ; 2 uses
  %i.ek = getelementptr i8, ptr %1, i64 24        ; 2 uses
  %i.el = load ptr, ptr %i.ek, align 8            ; 2 uses
  %i.em = load ptr, ptr %i.ej, align 16           ; 2 uses
  %i.en = getelementptr i8, ptr %i.em, i64 8
  store ptr %i.el, ptr %i.en, align 8
  store volatile ptr %i.em, ptr %i.el, align 8
  store ptr inttoptr (i64 -2401263026318606080 to ptr), ptr %i.ej, align 16
  store ptr inttoptr (i64 -2401263026318606046 to ptr), ptr %i.ek, align 8
  %i.eo = getelementptr i8, ptr %1, i64 1         ; 2 uses
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock andb ${1:b},$0", "=*m,iq,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %i.eo, i32 -3, ptr elementtype(i8) %i.eo) #29, !srcloc !91
  %i.ep = load i64, ptr %i.dq, align 8
  %i.eq = add i64 %i.ep, -1
  store i64 %i.eq, ptr %i.dq, align 8
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %remove_full.exit
  %.1 = phi ptr [ %1, %bb.af ], [ %.072, %remove_full.exit ] ; 3 uses
  %.1.val = load i64, ptr %.1, align 16
  %i.er = lshr i64 %.1.val, 58
  %i.es = getelementptr i8, ptr %.1, i64 40
  %i.et = load i32, ptr %i.es, align 8
  %i.eu = lshr i32 %i.et, 16
  %i.ev = and i32 %i.eu, 32767
  %i.ew = getelementptr [16 x i8], ptr %0, i64 %i.er
  %i.ex = getelementptr i8, ptr %i.ew, i64 192
  %i.ey = load ptr, ptr %i.ex, align 8            ; 2 uses
  %i.ez = getelementptr i8, ptr %i.ey, i64 32     ; 2 uses
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock decq $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.ez, ptr elementtype(i64) %i.ez) #29, !srcloc !92
  %i.fa = zext nneg i32 %i.ev to i64
  %i.fb = getelementptr i8, ptr %i.ey, i64 40     ; 2 uses
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock subq $1, $0", "=*m,er,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.fb, i64 range(i64 0, 32768) %i.fa, ptr elementtype(i64) %i.fb) #29, !srcloc !93
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %i.d, i64 noundef %i.i) #31
  tail call fastcc void @free_slab(ptr noundef %0, ptr noundef nonnull %.1) #34, !srcloc !462
  br label %bb.ah

.critedge:                                        ; preds = %.thread68, %free_debug_processing.exit, %bb.ae, %bb.ad
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %i.d, i64 noundef %i.i) #31
  br label %bb.ah

bb.ah:                                            ; preds = %.critedge, %bb.ag
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @discard_slab(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %.val = load i64, ptr %1, align 16
  %i.a = lshr i64 %.val, 58
  %i.b = getelementptr i8, ptr %1, i64 40
  %i.c = load i32, ptr %i.b, align 8
  %i.d = lshr i32 %i.c, 16
  %i.e = and i32 %i.d, 32767
  %i.f = getelementptr [16 x i8], ptr %0, i64 %i.a
  %i.g = getelementptr i8, ptr %i.f, i64 192
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr i8, ptr %i.h, i64 32       ; 2 uses
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock decq $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.i, ptr elementtype(i64) %i.i) #29, !srcloc !92
  %i.j = zext nneg i32 %i.e to i64
  %i.k = getelementptr i8, ptr %i.h, i64 40       ; 2 uses
  tail call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock subq $1, $0", "=*m,er,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.k, i64 range(i64 0, 32768) %i.j, ptr elementtype(i64) %i.k) #29, !srcloc !93
  tail call fastcc void @free_slab(ptr noundef %0, ptr noundef %1) #34, !srcloc !94
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @free_slab(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr @slub_debug_enabled, i1 false) #29
          to label %kmem_cache_debug_flags.exit.thread [label %kmem_cache_debug_flags.exit], !srcloc !21

kmem_cache_debug_flags.exit:                      ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.b = load i32, ptr %i.a, align 8
  %i.c = and i32 %i.b, 1
  %.not20 = icmp eq i32 %i.c, 0
  br i1 %.not20, label %kmem_cache_debug_flags.exit.thread, label %bb.b

bb.b:                                             ; preds = %kmem_cache_debug_flags.exit
  tail call fastcc void @slab_pad_check(ptr noundef %0, ptr noundef %1) #34, !srcloc !464
  %i.d = load i64, ptr @vmemmap_base, align 8
  %i.e = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.f = sub i64 %i.e, %i.d
  %i.g = shl i64 %i.f, 6
  %i.h = load i64, ptr @page_offset_base, align 8
  %i.i = add i64 %i.g, %i.h
  %i.j = inttoptr i64 %i.i to ptr                 ; 3 uses
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr @slub_debug_enabled, i1 false) #29
          to label %fixup_red_left.exit [label %kmem_cache_debug_flags.exit.i], !srcloc !21

kmem_cache_debug_flags.exit.i:                    ; preds = %bb.b
  %i.k = load i32, ptr %i.a, align 8
  %i.l = and i32 %i.k, 2
  %.not.i = icmp eq i32 %i.l, 0
  br i1 %.not.i, label %fixup_red_left.exit, label %bb.c

bb.c:                                             ; preds = %kmem_cache_debug_flags.exit.i
  %i.m = getelementptr i8, ptr %0, i64 80
  %i.n = load i32, ptr %i.m, align 8
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr i8, ptr %i.j, i64 %i.o
  br label %fixup_red_left.exit

end_hunk_1
