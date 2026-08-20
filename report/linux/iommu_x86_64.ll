inline.NumInlined: 330
inline.NumDeleted: 107
begin_hunk_0_@__map_range_leaf:bb.a
  %i.gx = load i8, ptr %i.gw, align 1
  %i.gy = zext i8 %i.gx to i32
  %i.gz = call i32 @llvm.umin.i32(i32 %i.bl, i32 %i.gy)
  br label %pt_index_to_va.exit94

pt_index_to_va.exit94:                            ; preds = %bb.x, %bb.y
  %.0.i.i92 = phi i32 [ %i.gu, %bb.x ], [ %i.gz, %bb.y ]
  %i.ha = zext i16 %i.gp to i64
  %i.hb = shl i64 %i.ha, %.pre-phi
  %i.hc = zext nneg i32 %.0.i.i92 to i64
  %notmask.i.i93 = shl nsw i64 -1, %i.hc
  %i.hd = and i64 %notmask.i.i93, %i.gq
  %i.he = or i64 %i.hd, %i.hb                     ; 2 uses
  store i64 %i.he, ptr %i.q, align 8
  %i.hf = add i64 %i.he, %i.cb                    ; 6 uses
  %i.hg = add i64 %i.hf, -1
  %i.hh = load i64, ptr %i.az, align 8            ; 2 uses
  %i.hi = icmp eq i64 %i.hg, %i.hh
  br i1 %i.hi, label %bb.ae, label %fls64.exit35.i

fls64.exit35.i:                                   ; preds = %pt_index_to_va.exit94
  %i.hj = getelementptr i8, ptr %i.a, i64 -104    ; 2 uses
  %i.hk = load i64, ptr %i.hj, align 8
  %i.hl = sub i64 %i.hh, %i.hf
  %i.hm = add i64 %i.hl, 1
  %i.hn = call i32 asm "bsrq $1,${0:q}", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.hm, i32 -1) #16, !srcloc !59
  %i.ho = zext nneg i32 %i.hn to i64
  %i.hp = shl nuw i64 1, %i.ho
  %i.hq = or i64 %.168, %i.hp
  %i.hr = or i64 %i.hq, %i.hf
  %i.hs = call i64 asm "tzcnt $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 %i.hr) #16, !srcloc !60 ; 2 uses
  %i.ht = trunc i64 %i.hs to i32
  %i.hu = icmp ult i32 %i.ht, 63
  %i.hv = add i64 %i.hs, 1
  %i.hw = and i64 %i.hv, 4294967295
  %notmask.i = shl nsw i64 -1, %i.hw
  %i.hx = xor i64 %notmask.i, -1
  %i.hy = select i1 %i.hu, i64 %i.hx, i64 -1
  %.032.i = and i64 %i.hy, %i.hk
  %i.hz = call i32 asm "bsrq $1,${0:q}", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i64 %.032.i, i32 -1) #16, !srcloc !59
  %i.ia = add i32 %i.hz, 1
  %spec.select.i96 = call range(i32 0, -1) i32 @llvm.usub.sat.i32(i32 %i.ia, i32 1) ; 4 uses
  store i32 %spec.select.i96, ptr %i.c, align 8
  %i.ib = add i32 %spec.select.i96, -12
  %i.ic = udiv i32 %i.ib, 9
  store i32 %i.ic, ptr %i.g, align 4
  %i.id = load i64, ptr %i.hj, align 8
  %i.ie = load i64, ptr %i.az, align 8
  %i.if = sub i64 %i.ie, %i.hf
  %i.ig = add i64 %i.if, 1                        ; 3 uses
  %i.ih = add nuw i32 %spec.select.i96, 1
  %i.ii = zext nneg i32 %i.ih to i64
  %notmask.i97 = shl nsw i64 -1, %i.ii
  %i.ij = and i64 %notmask.i97, %i.id             ; 2 uses
  %.not.i98 = icmp eq i64 %i.ij, 0
  br i1 %.not.i98, label %pt_pgsz_count.exit, label %__ffs64.exit.i99

__ffs64.exit.i99:                                 ; preds = %fls64.exit35.i
  %i.ik = call i64 asm "tzcnt $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 %i.ij) #16, !srcloc !60
  %i.il = xor i64 %i.hf, %.168
  %i.im = and i64 %i.ik, 4294967295
  %notmask21.i = shl nsw i64 -1, %i.im
  %i.in = xor i64 %notmask21.i, -1                ; 2 uses
  %i.io = and i64 %i.il, %i.in
  %i.ip = icmp eq i64 %i.io, 0
  br i1 %i.ip, label %bb.z, label %pt_pgsz_count.exit

bb.z:                                             ; preds = %__ffs64.exit.i99
  %.not22.i = xor i64 %i.hf, -1
  %i.iq = and i64 %i.in, %.not22.i
  %i.ir = add nuw i64 %i.iq, 1
  %i.is = call i64 @llvm.umin.i64(i64 %i.ig, i64 %i.ir)
  br label %pt_pgsz_count.exit

pt_pgsz_count.exit:                               ; preds = %fls64.exit35.i, %__ffs64.exit.i99, %bb.z
  %.1.i = phi i64 [ %i.ig, %fls64.exit35.i ], [ %i.is, %bb.z ], [ %i.ig, %__ffs64.exit.i99 ]
  %i.it = zext nneg i32 %spec.select.i96 to i64
  %i.iu = lshr i64 %.1.i, %i.it
  store i64 %i.iu, ptr %i.be, align 8
  %.not79 = icmp eq i16 %.sroa.22.1, %.0.i7.i
  br i1 %.not79, label %bb.ae, label %bb.aa

bb.aa:                                            ; preds = %pt_pgsz_count.exit
  %.not80 = icmp eq i16 %.sroa.22.1, %.0.i.i151
  br i1 %.not80, label %bb.ae, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.iv = load i64, ptr %i.q, align 8
  %i.iw = load i8, ptr %i.n, align 8
  %i.ix = icmp eq i8 %i.iw, %i.b
  br i1 %i.ix, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.iy = load i8, ptr %i.bm, align 1
  %i.iz = zext i8 %i.iy to i32
  br label %pt_index_to_va.exit103

bb.ad:                                            ; preds = %bb.ab
  %i.ja = load ptr, ptr %0, align 8
  %i.jb = getelementptr i8, ptr %i.ja, i64 9
  %i.jc = load i8, ptr %i.jb, align 1
  %i.jd = zext i8 %i.jc to i32
  %i.je = call i32 @llvm.umin.i32(i32 %i.bl, i32 %i.jd)
  br label %pt_index_to_va.exit103

pt_index_to_va.exit103:                           ; preds = %bb.ac, %bb.ad
  %.0.i.i101 = phi i32 [ %i.iz, %bb.ac ], [ %i.je, %bb.ad ]
  %i.jf = zext i16 %.sroa.22.1 to i64
  %i.jg = shl i64 %i.jf, %.pre-phi
  %i.jh = zext nneg i32 %.0.i.i101 to i64
  %notmask.i.i102 = shl nsw i64 -1, %i.jh
  %i.ji = and i64 %notmask.i.i102, %i.iv
  %i.jj = or i64 %i.ji, %i.jg
  store i64 %i.jj, ptr %i.q, align 8
  br label %bb.ae

bb.ae:                                            ; preds = %pt_index_to_va.exit94, %pt_pgsz_count.exit, %bb.aa, %pt_index_to_va.exit103, %flush_writes_range.exit
  %.069 = phi i32 [ -11, %bb.aa ], [ 0, %pt_pgsz_count.exit ], [ %.2, %flush_writes_range.exit ], [ -11, %pt_index_to_va.exit103 ], [ 0, %pt_index_to_va.exit94 ]
  ret i32 %.069
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc i32 @__map_range(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, i32 noundef %2, ptr noundef %3) unnamed_addr #4 align 16 prefalign(16) {
bb.a:
  %i.a = trunc i32 %2 to i8                       ; 4 uses
  %i.b = getelementptr i8, ptr %1, i64 36         ; 2 uses
  %i.c = and i32 %2, 255                          ; 2 uses
  %i.d = mul nuw nsw i32 %i.c, 9                  ; 3 uses
  %i.e = add nuw nsw i32 %i.d, 12                 ; 2 uses
  %i.f = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %i.g = load i8, ptr %i.f, align 8
  %i.h = icmp eq i8 %i.g, %i.a
  %i.i = getelementptr i8, ptr %0, i64 16         ; 3 uses
  %i.j = load i64, ptr %i.i, align 8              ; 5 uses
  br i1 %i.h, label %pt_range_to_index.exit.i, label %pt_range_to_index.exit.i.thread

pt_range_to_index.exit.i:                         ; preds = %bb.a
  %i.k = getelementptr i8, ptr %0, i64 33
  %i.l = load i8, ptr %i.k, align 1
  %i.m = zext nneg i8 %i.l to i64
  %notmask.i.i.i = shl nsw i64 -1, %i.m
  %i.n = xor i64 %notmask.i.i.i, -1               ; 2 uses
  %i.o = and i64 %i.j, %i.n
  %i.p = zext nneg i32 %i.e to i64                ; 4 uses
  %i.q = lshr i64 %i.o, %i.p
  %i.r = trunc i64 %i.q to i16                    ; 2 uses
  %i.s = getelementptr i8, ptr %0, i64 24
  %i.t = load i64, ptr %i.s, align 8              ; 2 uses
  %i.u = icmp eq i64 %i.j, %i.t
  br i1 %i.u, label %bb.b, label %bb.c

pt_range_to_index.exit.i.thread:                  ; preds = %bb.a
  %i.v = zext nneg i32 %i.e to i64                ; 5 uses
  %i.w = lshr i64 %i.j, %i.v
  %i.x = trunc i64 %i.w to i16
  %i.y = and i16 %i.x, 511                        ; 3 uses
  %i.z = getelementptr i8, ptr %0, i64 24
  %i.aa = load i64, ptr %i.z, align 8             ; 3 uses
  %i.ab = icmp eq i64 %i.j, %i.aa
  br i1 %i.ab, label %bb.b, label %.thread

bb.b:                                             ; preds = %pt_range_to_index.exit.i.thread, %pt_range_to_index.exit.i
  %.pre.pre-phi = phi i64 [ %i.v, %pt_range_to_index.exit.i.thread ], [ %i.p, %pt_range_to_index.exit.i ]
  %.0.i.i74 = phi i16 [ %i.y, %pt_range_to_index.exit.i.thread ], [ %i.r, %pt_range_to_index.exit.i ] ; 2 uses
  %i.ac = add i16 %.0.i.i74, 1
  br label %_pt_iter_first.exit

bb.c:                                             ; preds = %pt_range_to_index.exit.i
  %i.ad = and i64 %i.t, %i.n
  %i.ae = lshr i64 %i.ad, %i.p
  %i.af = trunc i64 %i.ae to i16
  %i.ag = add i16 %i.af, 1
  br label %_pt_iter_first.exit

.thread:                                          ; preds = %pt_range_to_index.exit.i.thread
  %i.ah = xor i64 %i.aa, %i.j
  %i.ai = add nuw nsw i32 %i.d, 21
  %i.aj = zext nneg i32 %i.ai to i64
  %i.ak = lshr i64 %i.ah, %i.aj
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %bb.d, label %_pt_iter_first.exit

bb.d:                                             ; preds = %.thread
  %i.am = lshr i64 %i.aa, %i.v
  %i.an = trunc i64 %i.am to i16
  %i.ao = and i16 %i.an, 511
  %i.ap = add nuw nsw i16 %i.ao, 1
  br label %_pt_iter_first.exit

_pt_iter_first.exit:                              ; preds = %bb.b, %bb.c, %.thread, %bb.d
  %.pre-phi = phi i64 [ %.pre.pre-phi, %bb.b ], [ %i.p, %bb.c ], [ %i.v, %.thread ], [ %i.v, %bb.d ]
  %.0.i.i75 = phi i16 [ %.0.i.i74, %bb.b ], [ %i.r, %bb.c ], [ %i.y, %.thread ], [ %i.y, %bb.d ]
  %.0.i7.i = phi i16 [ %i.ac, %bb.b ], [ %i.ag, %bb.c ], [ 512, %.thread ], [ %i.ap, %bb.d ]
  %i.aq = icmp eq i8 %i.a, 0
  %i.ar = icmp ugt i8 %i.a, 2
  %i.as = getelementptr i8, ptr %1, i64 16
  %i.at = add i32 %2, -1
  %i.au = add nsw i32 %i.c, -1                    ; 2 uses
  %i.av = add nuw nsw i32 %i.d, 21
  %i.aw = getelementptr i8, ptr %0, i64 33
  %4 = zext i16 %.0.i.i75 to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.x, %_pt_iter_first.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.x ], [ %4, %_pt_iter_first.exit ] ; 4 uses
  %.sroa.20.0 = phi ptr [ %.sroa.20.1, %bb.x ], [ null, %_pt_iter_first.exit ]
  %i.ax = getelementptr [8 x i8], ptr %3, i64 %indvars.iv ; 7 uses
  %i.ay = load volatile i64, ptr %i.ax, align 8   ; 5 uses
  %i.az = and i64 %i.ay, 1
  %.not.i30 = icmp eq i64 %i.az, 0
  br i1 %.not.i30, label %x86_64_pt_load_entry_raw.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  br i1 %i.aq, label %x86_64_pt_load_entry_raw.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ba = and i64 %i.ay, 128
  %.not9.i = icmp eq i64 %i.ba, 0
  %or.cond.i = or i1 %i.ar, %.not9.i
  br i1 %or.cond.i, label %bb.m, label %x86_64_pt_load_entry_raw.exit.thread

x86_64_pt_load_entry_raw.exit:                    ; preds = %bb.e
  %.val28 = load i32, ptr %i.as, align 8
  %i.bb = load ptr, ptr %0, align 8               ; 3 uses
  %i.bc = getelementptr i8, ptr %i.bb, i64 -16
  %i.bd = load i32, ptr %i.bc, align 8
  %i.be = tail call ptr @iommu_alloc_pages_node_sz(i32 noundef %i.bd, i32 noundef %.val28, i64 noundef 4096) #15 ; 5 uses
  %.not.i.i.i = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i, label %pt_iommu_new_table.exit, label %bb.h

bb.h:                                             ; preds = %x86_64_pt_load_entry_raw.exit
  %i.bf = getelementptr i8, ptr %i.bb, i64 12
  %i.bg = load i32, ptr %i.bf, align 4
  %i.bh = trunc i32 %i.bg to i1
  br i1 %i.bh, label %bb.i, label %table_alloc.exit.i

bb.i:                                             ; preds = %bb.h
  %i.bi = getelementptr i8, ptr %i.bb, i64 -8
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = tail call i32 @iommu_pages_start_incoherent(ptr noundef nonnull %i.be, ptr noundef %i.bj) #15 ; 2 uses
  %.not18.i.i.i = icmp eq i32 %i.bk, 0
  br i1 %.not18.i.i.i, label %table_alloc.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @iommu_free_pages(ptr noundef nonnull %i.be) #15
  %i.bl = sext i32 %i.bk to i64
  %i.bm = inttoptr i64 %i.bl to ptr
  br label %table_alloc.exit.i

table_alloc.exit.i:                               ; preds = %bb.j, %bb.i, %bb.h
  %.1.i.i.i = phi ptr [ %i.be, %bb.i ], [ %i.bm, %bb.j ], [ %i.be, %bb.h ] ; 8 uses
  %i.bn = icmp ugt ptr %.1.i.i.i, inttoptr (i64 -4096 to ptr)
  br i1 %i.bn, label %pt_iommu_new_table.exit, label %bb.k

bb.k:                                             ; preds = %table_alloc.exit.i
  %i.bo = ptrtoint ptr %.1.i.i.i to i64
  %i.bp = add i64 %i.bo, 2147483648
  %i.bq = icmp ugt ptr %.1.i.i.i, inttoptr (i64 -2147483649 to ptr)
  %i.br = load i64, ptr @phys_base, align 8
  %i.bs = load i64, ptr @page_offset_base, align 8
  %i.bt = sub i64 4503597479886848, %i.bs
  %i.bu = select i1 %i.bq, i64 %i.br, i64 %i.bt
  %i.bv = add i64 %i.bp, %i.bu
  %i.bw = and i64 %i.bv, 4503599627366400         ; 2 uses
  %i.bx = or disjoint i64 %i.bw, 39               ; 2 uses
  %i.by = tail call { i8, i64 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock cmpxchgq $3, $1", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.ax, i64 range(i64 39, 4503599627366464) %i.bx, ptr elementtype(i64) %i.ax, i64 %i.ay) #13, !srcloc !91
  %i.bz = extractvalue { i8, i64 } %i.by, 0       ; 2 uses
  %i.ca = icmp ult i8 %i.bz, 2
  tail call void @llvm.assume(i1 %i.ca)
  %i.cb = trunc nuw i8 %i.bz to i1
  br i1 %i.cb, label %bb.l, label %pt_iommu_new_table.exit.thread85, !prof !64

pt_iommu_new_table.exit.thread85:                 ; preds = %bb.k
  tail call void @iommu_free_pages(ptr noundef %.1.i.i.i) #15
  br label %x86_64_pt_load_entry_raw.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.cc = load ptr, ptr %0, align 8
  %i.cd = getelementptr i8, ptr %i.cc, i64 12
  %i.ce = load i32, ptr %i.cd, align 4
  %i.cf = and i32 %i.ce, 1
  %.not.i32 = icmp eq i32 %i.cf, 0
  br i1 %.not.i32, label %flush_writes_item.exit, label %flush_writes_item.exit.i

flush_writes_item.exit.i:                         ; preds = %bb.l
  %i.cg = shl nuw nsw i64 %indvars.iv, 3
  %i.ch = getelementptr i8, ptr %3, i64 %i.cg
  tail call void @clflush_cache_range(ptr noundef %i.ch, i32 noundef 8) #15
  %i.ci = or disjoint i64 %i.bw, 551
  %i.cj = tail call { i8, i64 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock cmpxchgq $3, $1", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.ax, i64 %i.ci, ptr elementtype(i64) %i.ax, i64 %i.bx) #13, !srcloc !92 ; 2 uses
  %i.ck = extractvalue { i8, i64 } %i.cj, 0       ; 2 uses
  %i.cl = icmp ult i8 %i.ck, 2
  tail call void @llvm.assume(i1 %i.cl)
  %i.cm = trunc nuw i8 %i.ck to i1
  br i1 %i.cm, label %flush_writes_item.exit, label %.lr.ph.i.i, !prof !93

.lr.ph.i.i:                                       ; preds = %flush_writes_item.exit.i, %.lr.ph.i.i
  %i.cn = phi { i8, i64 } [ %i.cq, %.lr.ph.i.i ], [ %i.cj, %flush_writes_item.exit.i ]
  %i.co = extractvalue { i8, i64 } %i.cn, 1       ; 2 uses
  %i.cp = or i64 %i.co, 512
  %i.cq = tail call { i8, i64 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock cmpxchgq $3, $1", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.ax, i64 %i.cp, ptr elementtype(i64) %i.ax, i64 %i.co) #13, !srcloc !92 ; 2 uses
  %i.cr = extractvalue { i8, i64 } %i.cq, 0       ; 2 uses
  %i.cs = icmp ult i8 %i.cr, 2
  tail call void @llvm.assume(i1 %i.cs)
  %i.ct = trunc nuw i8 %i.cr to i1
  br i1 %i.ct, label %flush_writes_item.exit, label %.lr.ph.i.i, !prof !94, !llvm.loop !95

pt_iommu_new_table.exit:                          ; preds = %x86_64_pt_load_entry_raw.exit, %table_alloc.exit.i
  %.1.i.i2.i = phi ptr [ %.1.i.i.i, %table_alloc.exit.i ], [ inttoptr (i64 -12 to ptr), %x86_64_pt_load_entry_raw.exit ]
  %i.cu = ptrtoint ptr %.1.i.i2.i to i64
  %i.cv = trunc i64 %i.cu to i32                  ; 2 uses
  %.not22 = icmp eq i32 %i.cv, 0
  br i1 %.not22, label %flush_writes_item.exit, label %x86_64_pt_load_entry_raw.exit.thread

bb.m:                                             ; preds = %bb.g
  %.val.val = load ptr, ptr %0, align 8
  %i.cw = getelementptr i8, ptr %.val.val, i64 12
  %i.cx = and i64 %i.ay, 4503599627366400
  %i.cy = load i64, ptr @page_offset_base, align 8
  %i.cz = add i64 %i.cy, %i.cx
  %i.da = inttoptr i64 %i.cz to ptr               ; 4 uses
  %i.db = load i32, ptr %i.cw, align 4
  %i.dc = and i32 %i.db, 1
  %.not = icmp eq i32 %i.dc, 0
  br i1 %.not, label %flush_writes_item.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void asm sideeffect "lock addl $$0,-4(%rsp)", "~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"() #13, !srcloc !96
  %i.dd = and i64 %i.ay, 512
  %.not89 = icmp eq i64 %i.dd, 0
  br i1 %.not89, label %bb.o, label %flush_writes_item.exit

bb.o:                                             ; preds = %bb.n
  %i.de = load ptr, ptr %0, align 8
  %i.df = getelementptr i8, ptr %i.de, i64 12
  %i.dg = load i32, ptr %i.df, align 4
  %i.dh = and i32 %i.dg, 1
  %.not.i33 = icmp eq i32 %i.dh, 0
  br i1 %.not.i33, label %flush_writes_item.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.di = shl nuw nsw i64 %indvars.iv, 3
  %i.dj = getelementptr i8, ptr %3, i64 %i.di
  tail call void @clflush_cache_range(ptr noundef %i.dj, i32 noundef 8) #15
  br label %flush_writes_item.exit

flush_writes_item.exit:                           ; preds = %.lr.ph.i.i, %bb.l, %flush_writes_item.exit.i, %bb.p, %bb.o, %bb.m, %bb.n, %pt_iommu_new_table.exit
  %.sroa.20.1 = phi ptr [ %i.da, %bb.n ], [ %i.da, %bb.p ], [ %i.da, %bb.m ], [ %.sroa.20.0, %pt_iommu_new_table.exit ], [ %i.da, %bb.o ], [ %.1.i.i.i, %flush_writes_item.exit.i ], [ %.1.i.i.i, %bb.l ], [ %.1.i.i.i, %.lr.ph.i.i ] ; 3 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.t, %flush_writes_item.exit
  %i.dk = load i32, ptr %i.b, align 4
  %i.dl = icmp eq i32 %i.dk, %i.at
  br i1 %i.dl, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.dm = tail call fastcc i32 @__map_range_leaf(ptr noundef %0, ptr noundef %1, i32 noundef %i.au, ptr noundef %.sroa.20.1) #15, !inline_history !97
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.dn = tail call fastcc i32 @__map_range(ptr noundef %0, ptr noundef %1, i32 noundef %i.au, ptr noundef %.sroa.20.1) #15, !inline_history !97
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  %.0 = phi i32 [ %i.dm, %bb.r ], [ %i.dn, %bb.s ] ; 2 uses
  switch i32 %.0, label %x86_64_pt_load_entry_raw.exit.thread [
    i32 -11, label %bb.q
    i32 0, label %bb.u
  ]

bb.u:                                             ; preds = %bb.t
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %indvars = trunc i64 %indvars.iv.next to i16
  %i.do = load i64, ptr %i.i, align 8
  %i.dp = load i8, ptr %i.f, align 8
  %i.dq = icmp eq i8 %i.dp, %i.a
  br i1 %i.dq, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.dr = load i8, ptr %i.aw, align 1
  %i.ds = zext i8 %i.dr to i32
  br label %pt_index_to_va.exit

bb.w:                                             ; preds = %bb.u
  %i.dt = load ptr, ptr %0, align 8
  %i.du = getelementptr i8, ptr %i.dt, i64 9
  %i.dv = load i8, ptr %i.du, align 1
  %i.dw = zext i8 %i.dv to i32
  %i.dx = tail call i32 @llvm.umin.i32(i32 %i.av, i32 %i.dw)
  br label %pt_index_to_va.exit

pt_index_to_va.exit:                              ; preds = %bb.v, %bb.w
  %.0.i.i35 = phi i32 [ %i.ds, %bb.v ], [ %i.dx, %bb.w ]
  %5 = and i64 %indvars.iv.next, 65535
  %i.dy = shl i64 %5, %.pre-phi
  %i.dz = zext nneg i32 %.0.i.i35 to i64
  %notmask.i.i = shl nsw i64 -1, %i.dz
  %i.ea = and i64 %notmask.i.i, %i.do
  %i.eb = or i64 %i.ea, %i.dy
  store i64 %i.eb, ptr %i.i, align 8
  %.not24 = icmp ugt i16 %.0.i7.i, %indvars
  br i1 %.not24, label %bb.x, label %x86_64_pt_load_entry_raw.exit.thread

bb.x:                                             ; preds = %pt_index_to_va.exit
  %i.ec = load i32, ptr %i.b, align 4
  %i.ed = icmp eq i32 %i.ec, %2
  br i1 %i.ed, label %x86_64_pt_load_entry_raw.exit.thread, label %bb.e

x86_64_pt_load_entry_raw.exit.thread:             ; preds = %bb.g, %bb.f, %pt_index_to_va.exit, %bb.x, %pt_iommu_new_table.exit, %bb.t, %pt_iommu_new_table.exit.thread85
  %.018 = phi i32 [ %.0, %bb.t ], [ -11, %pt_iommu_new_table.exit.thread85 ], [ -98, %bb.f ], [ 0, %pt_index_to_va.exit ], [ -11, %bb.x ], [ %i.cv, %pt_iommu_new_table.exit ], [ -98, %bb.g ]
  ret i32 %.018
}

; Function Attrs: fn_ret_thunk_extern nofree noredzone nosync nounwind null_pointer_is_valid sspstrong memory(readwrite, target_mem: none)
define internal fastcc range(i32 -98, 1) i32 @__collect_tables(ptr nofree noundef captures(none) %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef captures(address) %3) unnamed_addr #11 align 16 prefalign(16) {
bb.a:
  %i.a = trunc i32 %2 to i8                       ; 5 uses
  %i.b = getelementptr i8, ptr %1, i64 32         ; 3 uses
  %i.c = load i8, ptr %i.b, align 8
  %.not = trunc i8 %i.c to i1
  %i.d = icmp ne i8 %i.a, 0
  %or.cond = or i1 %i.d, %.not
  br i1 %or.cond, label %bb.b, label %_pt_iter_load.exit

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %2, 255                          ; 2 uses
  %i.f = mul nuw nsw i32 %i.e, 9                  ; 3 uses
  %i.g = add nuw nsw i32 %i.f, 12                 ; 3 uses
  %i.h = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %i.i = load i8, ptr %i.h, align 8               ; 3 uses
  %i.j = icmp eq i8 %i.i, %i.a
  %i.k = getelementptr i8, ptr %0, i64 16         ; 4 uses
  %i.l = load i64, ptr %i.k, align 8              ; 7 uses
  br i1 %i.j, label %pt_range_to_index.exit.i, label %pt_range_to_index.exit.i.thread

pt_range_to_index.exit.i:                         ; preds = %bb.b
  %i.m = getelementptr i8, ptr %0, i64 33
  %i.n = load i8, ptr %i.m, align 1
  %i.o = zext nneg i8 %i.n to i64
  %notmask.i.i.i = shl nsw i64 -1, %i.o
  %i.p = xor i64 %notmask.i.i.i, -1               ; 2 uses
  %i.q = and i64 %i.l, %i.p
  %i.r = zext nneg i32 %i.g to i64                ; 2 uses
  %i.s = lshr i64 %i.q, %i.r
  %i.t = trunc i64 %i.s to i16                    ; 3 uses
  %i.u = getelementptr i8, ptr %0, i64 24
  %i.v = load i64, ptr %i.u, align 8              ; 2 uses
  %i.w = icmp eq i64 %i.l, %i.v
  br i1 %i.w, label %_pt_iter_first.exit, label %bb.c

pt_range_to_index.exit.i.thread:                  ; preds = %bb.b
  %i.x = zext nneg i32 %i.g to i64                ; 2 uses
  %i.y = lshr i64 %i.l, %i.x
  %i.z = trunc i64 %i.y to i16
  %i.aa = and i16 %i.z, 511                       ; 4 uses
  %i.ab = getelementptr i8, ptr %0, i64 24
  %i.ac = load i64, ptr %i.ab, align 8            ; 3 uses
  %i.ad = icmp eq i64 %i.l, %i.ac
  br i1 %i.ad, label %_pt_iter_first.exit, label %.thread

bb.c:                                             ; preds = %pt_range_to_index.exit.i
  %i.ae = and i64 %i.v, %i.p
  %i.af = lshr i64 %i.ae, %i.r
  %i.ag = trunc i64 %i.af to i16
  br label %_pt_iter_first.exit

.thread:                                          ; preds = %pt_range_to_index.exit.i.thread
  %i.ah = xor i64 %i.ac, %i.l
  %i.ai = add nuw nsw i32 %i.f, 21
  %i.aj = zext nneg i32 %i.ai to i64
  %i.ak = lshr i64 %i.ah, %i.aj
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %bb.d, label %.lr.ph

bb.d:                                             ; preds = %.thread
  %i.am = lshr i64 %i.ac, %i.x
  %i.an = trunc i64 %i.am to i16
  %i.ao = and i16 %i.an, 511
  br label %_pt_iter_first.exit

_pt_iter_first.exit:                              ; preds = %pt_range_to_index.exit.i, %pt_range_to_index.exit.i.thread, %bb.c, %bb.d
  %.0.i.i27.sink = phi i16 [ %i.ao, %bb.d ], [ %i.ag, %bb.c ], [ %i.aa, %pt_range_to_index.exit.i.thread ], [ %i.t, %pt_range_to_index.exit.i ]
  %.0.i.i28 = phi i16 [ %i.aa, %bb.d ], [ %i.t, %bb.c ], [ %i.aa, %pt_range_to_index.exit.i.thread ], [ %i.t, %pt_range_to_index.exit.i ] ; 2 uses
  %i.ap = add i16 %.0.i.i27.sink, 1               ; 2 uses
  %.not.i1446 = icmp ult i16 %.0.i.i28, %i.ap
  br i1 %.not.i1446, label %.lr.ph, label %_pt_iter_load.exit

.lr.ph:                                           ; preds = %.thread, %_pt_iter_first.exit
  %.0.i7.i71 = phi i16 [ %i.ap, %_pt_iter_first.exit ], [ 512, %.thread ]
  %.0.i.i2870 = phi i16 [ %.0.i.i28, %_pt_iter_first.exit ], [ %i.aa, %.thread ]
  %i.aq = icmp eq i8 %i.a, 0
  %i.ar = icmp ugt i8 %i.a, 2
  %i.as = getelementptr i8, ptr %1, i64 8
  %i.at = getelementptr i8, ptr %1, i64 16        ; 2 uses
  %i.au = add nsw i32 %i.e, -1
  %i.av = add nuw nsw i32 %i.f, 21                ; 2 uses
  %i.aw = getelementptr i8, ptr %0, i64 33        ; 2 uses
  %i.ax = zext nneg i32 %i.g to i64               ; 2 uses
  %i.ay = zext i16 %.0.i.i2870 to i64             ; 2 uses
  %wide.trip.count59 = zext i16 %.0.i7.i71 to i64 ; 2 uses
  br i1 %i.aq, label %.lr.ph.split.us.preheader, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %i.az = icmp eq i8 %i.i, 0
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %pt_next_entry.exit.us
  %i.ba = phi i64 [ %i.l, %.lr.ph.split.us.preheader ], [ %i.bq, %pt_next_entry.exit.us ]
  %indvars.iv56 = phi i64 [ %i.ay, %.lr.ph.split.us.preheader ], [ %indvars.iv.next57, %pt_next_entry.exit.us ] ; 2 uses
  %i.bb = getelementptr [8 x i8], ptr %3, i64 %indvars.iv56
  %i.bc = load volatile i64, ptr %i.bb, align 8
  %i.bd = and i64 %i.bc, 1
  %.not.i.i.i.us = icmp eq i64 %i.bd, 0
  br i1 %.not.i.i.i.us, label %.thread43.us, label %bb.e

bb.e:                                             ; preds = %.lr.ph.split.us
  %i.be = load i8, ptr %i.b, align 8
  %i.bf = and i8 %i.be, 1
  %.not12.us = icmp eq i8 %i.bf, 0
  br i1 %.not12.us, label %.thread43.us, label %_pt_iter_load.exit

.thread43.us:                                     ; preds = %bb.e, %.lr.ph.split.us
  %indvars.iv.next57 = add nuw nsw i64 %indvars.iv56, 1 ; 3 uses
  br i1 %i.az, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.thread43.us
  %i.bg = load ptr, ptr %0, align 8
  %i.bh = getelementptr i8, ptr %i.bg, i64 9
  %i.bi = load i8, ptr %i.bh, align 1
  %i.bj = zext i8 %i.bi to i32
  %i.bk = tail call i32 @llvm.umin.i32(i32 %i.av, i32 %i.bj)
  br label %pt_next_entry.exit.us

bb.g:                                             ; preds = %.thread43.us
  %i.bl = load i8, ptr %i.aw, align 1
  %i.bm = zext i8 %i.bl to i32
  br label %pt_next_entry.exit.us

pt_next_entry.exit.us:                            ; preds = %bb.g, %bb.f
  %.0.i.i.i.us = phi i32 [ %i.bm, %bb.g ], [ %i.bk, %bb.f ]
  %i.bn = shl nuw nsw i64 %indvars.iv.next57, %i.ax
  %i.bo = zext nneg i32 %.0.i.i.i.us to i64
  %notmask.i.i.i15.us = shl nsw i64 -1, %i.bo
  %i.bp = and i64 %notmask.i.i.i15.us, %i.ba
  %i.bq = or i64 %i.bp, %i.bn                     ; 2 uses
  store i64 %i.bq, ptr %i.k, align 8
  %exitcond60.not = icmp eq i64 %indvars.iv.next57, %wide.trip.count59
  br i1 %exitcond60.not, label %_pt_iter_load.exit, label %.lr.ph.split.us, !llvm.loop !98

.lr.ph.split:                                     ; preds = %.lr.ph, %pt_next_entry.exit
  %i.br = phi i8 [ %i.cz, %pt_next_entry.exit ], [ %i.i, %.lr.ph ] ; 2 uses
  %i.bs = phi i64 [ %i.dm, %pt_next_entry.exit ], [ %i.l, %.lr.ph ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %pt_next_entry.exit ], [ %i.ay, %.lr.ph ] ; 2 uses
  %i.bt = getelementptr [8 x i8], ptr %3, i64 %indvars.iv
  %i.bu = load volatile i64, ptr %i.bt, align 8   ; 3 uses
  %i.bv = and i64 %i.bu, 1
  %.not.i.i.i = icmp eq i64 %i.bv, 0
  br i1 %.not.i.i.i, label %.thread43, label %bb.h

bb.h:                                             ; preds = %.lr.ph.split
  %i.bw = and i64 %i.bu, 128
  %.not9.i.i.i = icmp eq i64 %i.bw, 0
  %or.cond.i.i.i = or i1 %i.ar, %.not9.i.i.i
  br i1 %or.cond.i.i.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bx = and i64 %i.bu, 4503599627366400
  %i.by = load i64, ptr @page_offset_base, align 8 ; 2 uses
  %i.bz = add i64 %i.by, %i.bx                    ; 3 uses
  %i.ca = inttoptr i64 %i.bz to ptr
  %i.cb = load i64, ptr @vmemmap_base, align 8
  %i.cc = inttoptr i64 %i.cb to ptr
  %i.cd = add i64 %i.bz, 2147483648
  %i.ce = icmp ugt i64 %i.bz, -2147483649
  %i.cf = load i64, ptr @phys_base, align 8
  %i.cg = sub i64 -2147483648, %i.by
  %i.ch = select i1 %i.ce, i64 %i.cf, i64 %i.cg
  %i.ci = add i64 %i.cd, %i.ch
  %i.cj = lshr i64 %i.ci, 12
  %i.ck = getelementptr [64 x i8], ptr %i.cc, i64 %i.cj ; 2 uses
  %i.cl = getelementptr i8, ptr %i.ck, i64 8
  %i.cm = load volatile i64, ptr %i.cl, align 8   ; 2 uses
  %i.cn = ptrtoint ptr %i.ck to i64
  %i.co = and i64 %i.cm, 1
  %i.cp = add nsw i64 %i.co, -1
  %i.cq = or i64 %i.cp, %i.cm
  %i.cr = and i64 %i.cq, %i.cn
  %i.cs = inttoptr i64 %i.cr to ptr               ; 2 uses
  %i.ct = getelementptr i8, ptr %i.cs, i64 8      ; 3 uses
  %i.cu = load ptr, ptr %i.at, align 8            ; 2 uses
  store ptr %i.ct, ptr %i.at, align 8
  store ptr %i.as, ptr %i.ct, align 8
  %i.cv = getelementptr i8, ptr %i.cs, i64 16
  store ptr %i.cu, ptr %i.cv, align 8
  store volatile ptr %i.ct, ptr %i.cu, align 8
  %i.cw = tail call fastcc i32 @__collect_tables(ptr noundef %0, ptr noundef %1, i32 noundef %i.au, ptr noundef %i.ca) #15, !inline_history !97 ; 2 uses
  %.not13 = icmp eq i32 %i.cw, 0
  br i1 %.not13, label %..thread43_crit_edge, label %_pt_iter_load.exit

..thread43_crit_edge:                             ; preds = %bb.i
  %.pre = load i64, ptr %i.k, align 8
end_hunk_0
