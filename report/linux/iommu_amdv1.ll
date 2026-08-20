inline.NumInlined: 365
inline.NumDeleted: 105
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@__map_range_leaf:bb.a
  %i.hp = shl i64 %i.cl, %.pre-phi
  %i.hq = icmp eq i32 %.0.i.i97, 64
  %i.hr = zext nneg i32 %.0.i.i97 to i64
  %notmask.i.i98 = shl nsw i64 -1, %i.hr
  %i.hs = and i64 %notmask.i.i98, %i.hf
  %i.ht = select i1 %i.hq, i64 0, i64 %i.hs
  %.0.i7.i99 = or i64 %i.ht, %i.hp                ; 2 uses
  store i64 %.0.i7.i99, ptr %i.q, align 8
  %i.hu = add i64 %.0.i7.i99, %i.cg               ; 6 uses
  %i.hv = add i64 %i.hu, -1
  %i.hw = load i64, ptr %i.az, align 8            ; 2 uses
  %i.hx = icmp eq i64 %i.hv, %i.hw
  br i1 %i.hx, label %bb.ag, label %fls64.exit35.i

fls64.exit35.i:                                   ; preds = %pt_index_to_va.exit100
  %i.hy = getelementptr i8, ptr %i.a, i64 -104    ; 2 uses
  %i.hz = load i64, ptr %i.hy, align 8
  %i.ia = sub i64 %i.hw, %i.hu
  %i.ib = add i64 %i.ia, 1
  %i.ic = call i32 asm "bsrq $1,${0:q}", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.ib, i32 -1) #14, !srcloc !56
  %i.id = zext nneg i32 %i.ic to i64
  %i.ie = shl nuw i64 1, %i.id
  %i.if = or i64 %i.hc, %i.ie
  %i.ig = or i64 %i.if, %i.hu
  %i.ih = call i64 asm "tzcnt $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 %i.ig) #14, !srcloc !17 ; 2 uses
  %i.ii = trunc i64 %i.ih to i32
  %i.ij = icmp ult i32 %i.ii, 63
  %i.ik = add i64 %i.ih, 1
  %i.il = and i64 %i.ik, 4294967295
  %notmask.i101 = shl nsw i64 -1, %i.il
  %i.im = xor i64 %notmask.i101, -1
  %i.in = select i1 %i.ij, i64 %i.im, i64 -1
  %.032.i = and i64 %i.in, %i.hz
  %i.io = call i32 asm "bsrq $1,${0:q}", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i64 %.032.i, i32 -1) #14, !srcloc !56
  %i.ip = add i32 %i.io, 1
  %spec.select.i103 = call range(i32 0, -1) i32 @llvm.usub.sat.i32(i32 %i.ip, i32 1) ; 4 uses
  store i32 %spec.select.i103, ptr %i.c, align 8
  %i.iq = add i32 %spec.select.i103, -12
  %i.ir = udiv i32 %i.iq, 9
  store i32 %i.ir, ptr %i.g, align 4
  %i.is = load i64, ptr %i.hy, align 8
  %i.it = load i64, ptr %i.az, align 8
  %i.iu = sub i64 %i.it, %i.hu
  %i.iv = add i64 %i.iu, 1                        ; 3 uses
  %i.iw = add nuw i32 %spec.select.i103, 1
  %i.ix = zext nneg i32 %i.iw to i64
  %notmask.i104 = shl nsw i64 -1, %i.ix
  %i.iy = and i64 %notmask.i104, %i.is            ; 2 uses
  %.not.i105 = icmp eq i64 %i.iy, 0
  br i1 %.not.i105, label %pt_pgsz_count.exit, label %__ffs64.exit.i106

__ffs64.exit.i106:                                ; preds = %fls64.exit35.i
  %i.iz = call i64 asm "tzcnt $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 %i.iy) #14, !srcloc !17
  %i.ja = xor i64 %i.hu, %i.hc
  %i.jb = and i64 %i.iz, 4294967295
  %notmask21.i = shl nsw i64 -1, %i.jb
  %i.jc = xor i64 %notmask21.i, -1                ; 2 uses
  %i.jd = and i64 %i.ja, %i.jc
  %i.je = icmp eq i64 %i.jd, 0
  br i1 %i.je, label %bb.ab, label %pt_pgsz_count.exit

bb.ab:                                            ; preds = %__ffs64.exit.i106
  %.not22.i = xor i64 %i.hu, -1
  %i.jf = and i64 %i.jc, %.not22.i
  %i.jg = add nuw i64 %i.jf, 1
  %i.jh = call i64 @llvm.umin.i64(i64 %i.iv, i64 %i.jg)
  br label %pt_pgsz_count.exit

pt_pgsz_count.exit:                               ; preds = %fls64.exit35.i, %__ffs64.exit.i106, %bb.ab
  %.1.i = phi i64 [ %i.iv, %fls64.exit35.i ], [ %i.jh, %bb.ab ], [ %i.iv, %__ffs64.exit.i106 ]
  %i.ji = zext nneg i32 %spec.select.i103 to i64
  %i.jj = lshr i64 %.1.i, %i.ji
  store i64 %i.jj, ptr %i.be, align 8
  %.not79 = icmp eq i16 %i.hd, %.0.i7.i
  br i1 %.not79, label %bb.ag, label %bb.ac

bb.ac:                                            ; preds = %pt_pgsz_count.exit
  %.not80 = icmp eq i16 %i.hd, %.0.i.i160
  br i1 %.not80, label %bb.ag, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.jk = load i64, ptr %i.q, align 8
  %i.jl = load i8, ptr %i.n, align 8
  %i.jm = icmp eq i8 %i.jl, %i.b
  br i1 %i.jm, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.jn = load i8, ptr %i.bm, align 1
  %i.jo = zext i8 %i.jn to i32
  br label %pt_index_to_va.exit111

bb.af:                                            ; preds = %bb.ad
  %i.jp = load ptr, ptr %0, align 8
  %i.jq = getelementptr i8, ptr %i.jp, i64 9
  %i.jr = load i8, ptr %i.jq, align 1
  %i.js = zext i8 %i.jr to i32
  %i.jt = call i32 @llvm.umin.i32(i32 %i.bl, i32 %i.js)
  br label %pt_index_to_va.exit111

pt_index_to_va.exit111:                           ; preds = %bb.ae, %bb.af
  %.0.i.i108 = phi i32 [ %i.jo, %bb.ae ], [ %i.jt, %bb.af ] ; 2 uses
  %i.ju = zext i16 %i.hd to i64
  %i.jv = shl i64 %i.ju, %.pre-phi
  %i.jw = icmp eq i32 %.0.i.i108, 64
  %i.jx = zext nneg i32 %.0.i.i108 to i64
  %notmask.i.i109 = shl nsw i64 -1, %i.jx
  %i.jy = and i64 %notmask.i.i109, %i.jk
  %i.jz = select i1 %i.jw, i64 0, i64 %i.jy
  %.0.i7.i110 = or i64 %i.jz, %i.jv
  store i64 %.0.i7.i110, ptr %i.q, align 8
  br label %bb.ag

bb.ag:                                            ; preds = %pt_index_to_va.exit100, %.thread168, %pt_pgsz_count.exit, %bb.ac, %pt_index_to_va.exit111, %bb.x
  %.069 = phi i32 [ -11, %bb.ac ], [ %.0.i93, %.thread168 ], [ 0, %bb.x ], [ -11, %pt_index_to_va.exit111 ], [ 0, %pt_pgsz_count.exit ], [ 0, %pt_index_to_va.exit100 ]
  ret i32 %.069
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc i32 @__map_range(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, i32 noundef %2, ptr noundef %3) unnamed_addr #4 align 16 prefalign(16) {
bb.a:
  %i.a = trunc i32 %2 to i8                       ; 3 uses
  %i.b = getelementptr i8, ptr %1, i64 36         ; 2 uses
  %i.c = icmp ne i8 %i.a, 0
  %i.d = and i32 %2, 255                          ; 2 uses
  %i.e = mul nuw nsw i32 %i.d, 9                  ; 3 uses
  %i.f = add nuw nsw i32 %i.e, 12                 ; 2 uses
  %i.g = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %i.h = load i8, ptr %i.g, align 8
  %i.i = icmp eq i8 %i.h, %i.a
  %i.j = getelementptr i8, ptr %0, i64 16         ; 3 uses
  %i.k = load i64, ptr %i.j, align 8              ; 5 uses
  br i1 %i.i, label %pt_range_to_index.exit.i, label %pt_range_to_index.exit.i.thread

pt_range_to_index.exit.i:                         ; preds = %bb.a
  %i.l = getelementptr i8, ptr %0, i64 33
  %i.m = load i8, ptr %i.l, align 1               ; 2 uses
  %i.n = icmp eq i8 %i.m, 64
  %i.o = zext nneg i8 %i.m to i64
  %notmask.i.i.i = shl nsw i64 -1, %i.o
  %i.p = xor i64 %notmask.i.i.i, -1
  %i.q = select i1 %i.n, i64 -1, i64 %i.p         ; 2 uses
  %.0.i.i.i = and i64 %i.q, %i.k
  %i.r = zext nneg i32 %i.f to i64                ; 4 uses
  %i.s = lshr i64 %.0.i.i.i, %i.r
  %i.t = trunc i64 %i.s to i16                    ; 2 uses
  %i.u = getelementptr i8, ptr %0, i64 24
  %i.v = load i64, ptr %i.u, align 8              ; 2 uses
  %i.w = icmp eq i64 %i.k, %i.v
  br i1 %i.w, label %bb.b, label %bb.c

pt_range_to_index.exit.i.thread:                  ; preds = %bb.a
  %i.x = zext nneg i32 %i.f to i64                ; 5 uses
  %i.y = lshr i64 %i.k, %i.x
  %i.z = trunc i64 %i.y to i16
  %i.aa = and i16 %i.z, 511                       ; 3 uses
  %i.ab = getelementptr i8, ptr %0, i64 24
  %i.ac = load i64, ptr %i.ab, align 8            ; 3 uses
  %i.ad = icmp eq i64 %i.k, %i.ac
  br i1 %i.ad, label %bb.b, label %.thread

bb.b:                                             ; preds = %pt_range_to_index.exit.i.thread, %pt_range_to_index.exit.i
  %.pre.pre-phi = phi i64 [ %i.x, %pt_range_to_index.exit.i.thread ], [ %i.r, %pt_range_to_index.exit.i ]
  %.0.i.i59 = phi i16 [ %i.aa, %pt_range_to_index.exit.i.thread ], [ %i.t, %pt_range_to_index.exit.i ] ; 2 uses
  %i.ae = add i16 %.0.i.i59, 1
  br label %_pt_iter_first.exit

bb.c:                                             ; preds = %pt_range_to_index.exit.i
  %.0.i.i9.i = and i64 %i.q, %i.v
  %i.af = lshr i64 %.0.i.i9.i, %i.r
  %i.ag = trunc i64 %i.af to i16
  %i.ah = add i16 %i.ag, 1
  br label %_pt_iter_first.exit

.thread:                                          ; preds = %pt_range_to_index.exit.i.thread
  %i.ai = xor i64 %i.ac, %i.k
  %i.aj = add nuw nsw i32 %i.e, 21
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = lshr i64 %i.ai, %i.ak
  %i.am = icmp eq i64 %i.al, 0
  br i1 %i.am, label %bb.d, label %_pt_iter_first.exit

bb.d:                                             ; preds = %.thread
  %i.an = lshr i64 %i.ac, %i.x
  %i.ao = trunc i64 %i.an to i16
  %i.ap = and i16 %i.ao, 511
  %i.aq = add nuw nsw i16 %i.ap, 1
  br label %_pt_iter_first.exit

_pt_iter_first.exit:                              ; preds = %bb.b, %bb.c, %.thread, %bb.d
  %.pre-phi = phi i64 [ %.pre.pre-phi, %bb.b ], [ %i.r, %bb.c ], [ %i.x, %.thread ], [ %i.x, %bb.d ]
  %.0.i.i60 = phi i16 [ %.0.i.i59, %bb.b ], [ %i.t, %bb.c ], [ %i.aa, %.thread ], [ %i.aa, %bb.d ]
  %.0.i7.i = phi i16 [ %i.ae, %bb.b ], [ %i.ah, %bb.c ], [ 512, %.thread ], [ %i.aq, %bb.d ]
  %i.ar = getelementptr i8, ptr %1, i64 16
  %.mask = shl i32 %2, 9
  %i.as = and i32 %.mask, 3584
  %i.at = zext nneg i32 %i.as to i64
  %i.au = add i32 %2, -1
  %i.av = add nsw i32 %i.d, -1                    ; 2 uses
  %i.aw = add nuw nsw i32 %i.e, 21
  %i.ax = getelementptr i8, ptr %0, i64 33
  %invariant.op = or disjoint i64 %i.at, 6917529027641081857
  br label %bb.e

bb.e:                                             ; preds = %bb.p, %_pt_iter_first.exit
  %.sroa.14.0 = phi ptr [ null, %_pt_iter_first.exit ], [ %.sroa.14.1, %bb.p ]
  %.sroa.28.0 = phi i16 [ %.0.i.i60, %_pt_iter_first.exit ], [ %5, %bb.p ] ; 2 uses
  %4 = zext i16 %.sroa.28.0 to i64
  %i.ay = getelementptr [8 x i8], ptr %3, i64 %4  ; 3 uses
  %i.az = load volatile i64, ptr %i.ay, align 8   ; 4 uses
  %i.ba = and i64 %i.az, 1
  %.not.i28 = icmp eq i64 %i.ba, 0
  br i1 %.not.i28, label %amdv1pt_load_entry_raw.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bb = trunc i64 %i.az to i32
  %i.bc = lshr i32 %i.bb, 9
  %i.bd = and i32 %i.bc, 7
  %.off.i = add nsw i32 %i.bd, -1
  %switch.i = icmp ult i32 %.off.i, 6
  %or.cond.i = and i1 %i.c, %switch.i
  br i1 %or.cond.i, label %bb.h, label %amdv1pt_load_entry_raw.exit.thread

amdv1pt_load_entry_raw.exit:                      ; preds = %bb.e
  %.val27 = load i32, ptr %i.ar, align 8
  %i.be = load ptr, ptr %0, align 8
  %i.bf = getelementptr i8, ptr %i.be, i64 -16
  %i.bg = load i32, ptr %i.bf, align 8
  %i.bh = tail call ptr @iommu_alloc_pages_node_sz(i32 noundef %i.bg, i32 noundef %.val27, i64 noundef 4096) #16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bh, null
  %spec.select.i.i.i = select i1 %.not.i.i.i, ptr inttoptr (i64 -12 to ptr), ptr %i.bh ; 5 uses
  %i.bi = icmp ugt ptr %spec.select.i.i.i, inttoptr (i64 -4096 to ptr)
  %i.bj = ptrtoint ptr %spec.select.i.i.i to i64  ; 2 uses
  br i1 %i.bi, label %pt_iommu_new_table.exit, label %bb.g

bb.g:                                             ; preds = %amdv1pt_load_entry_raw.exit
  %i.bk = add i64 %i.bj, 2147483648
  %i.bl = icmp ugt ptr %spec.select.i.i.i, inttoptr (i64 -2147483649 to ptr)
  %i.bm = load i64, ptr @phys_base, align 8
  %i.bn = load i64, ptr @page_offset_base, align 8
  %i.bo = sub i64 4503597479886848, %i.bn
  %i.bp = select i1 %i.bl, i64 %i.bm, i64 %i.bo
  %i.bq = add i64 %i.bk, %i.bp
  %i.br = and i64 %i.bq, 4503599627366400
  %.reass = or disjoint i64 %i.br, %invariant.op
  %i.bs = tail call { i8, i64 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock cmpxchgq $3, $1", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.ay, i64 range(i64 6917529027641081856, 6922032627268452352) %.reass, ptr elementtype(i64) %i.ay, i64 %i.az) #13, !srcloc !57
  %i.bt = extractvalue { i8, i64 } %i.bs, 0       ; 2 uses
  %i.bu = icmp ult i8 %i.bt, 2
  tail call void @llvm.assume(i1 %i.bu)
  %i.bv = trunc nuw i8 %i.bt to i1
  br i1 %i.bv, label %pt_iommu_new_table.exit.thread, label %pt_iommu_new_table.exit.thread70, !prof !72

pt_iommu_new_table.exit.thread70:                 ; preds = %bb.g
  tail call void @iommu_free_pages(ptr noundef nonnull %spec.select.i.i.i) #16
  br label %amdv1pt_load_entry_raw.exit.thread

pt_iommu_new_table.exit:                          ; preds = %amdv1pt_load_entry_raw.exit
  %i.bw = trunc i64 %i.bj to i32                  ; 2 uses
  %.not22 = icmp eq i32 %i.bw, 0
  br i1 %.not22, label %pt_iommu_new_table.exit.thread, label %amdv1pt_load_entry_raw.exit.thread

bb.h:                                             ; preds = %bb.f
  %i.bx = and i64 %i.az, 4503599627366400
  %i.by = load i64, ptr @page_offset_base, align 8
  %i.bz = add i64 %i.by, %i.bx
  %i.ca = inttoptr i64 %i.bz to ptr
  br label %pt_iommu_new_table.exit.thread

pt_iommu_new_table.exit.thread:                   ; preds = %bb.g, %bb.h, %pt_iommu_new_table.exit
  %.sroa.14.1 = phi ptr [ %.sroa.14.0, %pt_iommu_new_table.exit ], [ %i.ca, %bb.h ], [ %spec.select.i.i.i, %bb.g ] ; 3 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.l, %pt_iommu_new_table.exit.thread
  %i.cb = load i32, ptr %i.b, align 4
  %i.cc = icmp eq i32 %i.cb, %i.au
  br i1 %i.cc, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.cd = tail call fastcc i32 @__map_range_leaf(ptr noundef %0, ptr noundef %1, i32 noundef %i.av, ptr noundef %.sroa.14.1) #16, !inline_history !103
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.ce = tail call fastcc i32 @__map_range(ptr noundef %0, ptr noundef %1, i32 noundef %i.av, ptr noundef %.sroa.14.1) #16, !inline_history !103
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %.0 = phi i32 [ %i.cd, %bb.j ], [ %i.ce, %bb.k ] ; 2 uses
  switch i32 %.0, label %amdv1pt_load_entry_raw.exit.thread [
    i32 -11, label %bb.i
    i32 0, label %bb.m
  ]

bb.m:                                             ; preds = %bb.l
  %5 = add i16 %.sroa.28.0, 1                     ; 3 uses
  %i.cf = load i64, ptr %i.j, align 8
  %i.cg = load i8, ptr %i.g, align 8
  %i.ch = icmp eq i8 %i.cg, %i.a
  br i1 %i.ch, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ci = load i8, ptr %i.ax, align 1
  %i.cj = zext i8 %i.ci to i32
  br label %pt_index_to_va.exit

bb.o:                                             ; preds = %bb.m
  %i.ck = load ptr, ptr %0, align 8
  %i.cl = getelementptr i8, ptr %i.ck, i64 9
  %i.cm = load i8, ptr %i.cl, align 1
  %i.cn = zext i8 %i.cm to i32
  %i.co = tail call i32 @llvm.umin.i32(i32 %i.aw, i32 %i.cn)
  br label %pt_index_to_va.exit

pt_index_to_va.exit:                              ; preds = %bb.n, %bb.o
  %.0.i.i31 = phi i32 [ %i.cj, %bb.n ], [ %i.co, %bb.o ] ; 2 uses
  %6 = zext i16 %5 to i64
  %i.cp = shl i64 %6, %.pre-phi
  %i.cq = icmp eq i32 %.0.i.i31, 64
  %i.cr = zext nneg i32 %.0.i.i31 to i64
  %notmask.i.i = shl nsw i64 -1, %i.cr
  %i.cs = and i64 %notmask.i.i, %i.cf
  %i.ct = select i1 %i.cq, i64 0, i64 %i.cs
  %.0.i7.i32 = or i64 %i.ct, %i.cp
  store i64 %.0.i7.i32, ptr %i.j, align 8
  %.not24 = icmp ult i16 %5, %.0.i7.i
  br i1 %.not24, label %bb.p, label %amdv1pt_load_entry_raw.exit.thread

bb.p:                                             ; preds = %pt_index_to_va.exit
  %i.cu = load i32, ptr %i.b, align 4
  %i.cv = icmp eq i32 %i.cu, %2
  br i1 %i.cv, label %amdv1pt_load_entry_raw.exit.thread, label %bb.e

amdv1pt_load_entry_raw.exit.thread:               ; preds = %bb.f, %pt_index_to_va.exit, %bb.p, %pt_iommu_new_table.exit, %bb.l, %pt_iommu_new_table.exit.thread70
  %.018 = phi i32 [ %.0, %bb.l ], [ -11, %pt_iommu_new_table.exit.thread70 ], [ 0, %pt_index_to_va.exit ], [ -11, %bb.p ], [ %i.bw, %pt_iommu_new_table.exit ], [ -98, %bb.f ]
  ret i32 %.018
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc range(i32 -98, 1) i32 @__map_single_page3(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(address) %2) unnamed_addr #6 align 16 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 32
  %i.b = load i8, ptr %i.a, align 8               ; 4 uses
  %i.c = icmp eq i8 %i.b, 3
  %i.d = getelementptr i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8              ; 8 uses
  br i1 %i.c, label %bb.b, label %pt_range_to_index.exit.i

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %0, i64 33
  %i.g = load i8, ptr %i.f, align 1               ; 2 uses
  %i.h = icmp eq i8 %i.g, 64
  %i.i = zext nneg i8 %i.g to i64
  %notmask.i.i.i = shl nsw i64 -1, %i.i
  %i.j = xor i64 %notmask.i.i.i, -1
  %i.k = select i1 %i.h, i64 36028247263150080, i64 %i.j
  %.0.i.i.i = and i64 %i.k, %i.e
  br label %pt_range_to_index.exit.i

pt_range_to_index.exit.i:                         ; preds = %bb.a, %bb.b
  %.sink18 = phi i64 [ %.0.i.i.i, %bb.b ], [ %i.e, %bb.a ]
  %.sink17 = phi i64 [ 65535, %bb.b ], [ 511, %bb.a ]
  %i.l = lshr i64 %.sink18, 39
  %i.m = and i64 %i.l, %.sink17
  %i.n = getelementptr [8 x i8], ptr %2, i64 %i.m
  %i.o = load volatile i64, ptr %i.n, align 8     ; 3 uses
  %i.p = and i64 %i.o, 1
  %.not.i.i.i = icmp eq i64 %i.p, 0
  br i1 %.not.i.i.i, label %__do_map_single_page.exit, label %bb.c

bb.c:                                             ; preds = %pt_range_to_index.exit.i
  %i.q = trunc i64 %i.o to i32
  %i.r = lshr i32 %i.q, 9
  %i.s = and i32 %i.r, 7
  %.off.i.i.i = add nsw i32 %i.s, -1
  %switch.i.i.i = icmp ult i32 %.off.i.i.i, 6
  br i1 %switch.i.i.i, label %bb.d, label %__do_map_single_page.exit

bb.d:                                             ; preds = %bb.c
  %i.t = and i64 %i.o, 4503599627366400
  %i.u = load i64, ptr @page_offset_base, align 8 ; 3 uses
  %i.v = add i64 %i.u, %i.t
  %i.w = inttoptr i64 %i.v to ptr
  %i.x = icmp eq i8 %i.b, 2
  br i1 %i.x, label %bb.e, label %pt_range_to_index.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr i8, ptr %0, i64 33
  %i.z = load i8, ptr %i.y, align 1               ; 2 uses
  %i.aa = icmp eq i8 %i.z, 64
  %i.ab = zext nneg i8 %i.z to i64
  %notmask.i.i.i.i = shl nsw i64 -1, %i.ab
  %i.ac = xor i64 %notmask.i.i.i.i, -1
  %i.ad = select i1 %i.aa, i64 70367670435840, i64 %i.ac
  %.0.i.i.i.i = and i64 %i.ad, %i.e
  br label %pt_range_to_index.exit.i.i

pt_range_to_index.exit.i.i:                       ; preds = %bb.e, %bb.d
  %.sink18.i = phi i64 [ %.0.i.i.i.i, %bb.e ], [ %i.e, %bb.d ]
  %.sink17.i = phi i64 [ 65535, %bb.e ], [ 511, %bb.d ]
  %i.ae = lshr i64 %.sink18.i, 30
  %i.af = and i64 %i.ae, %.sink17.i
  %i.ag = getelementptr [8 x i8], ptr %i.w, i64 %i.af
  %i.ah = load volatile i64, ptr %i.ag, align 8   ; 3 uses
  %i.ai = and i64 %i.ah, 1
  %.not.i.i.i.i = icmp eq i64 %i.ai, 0
  br i1 %.not.i.i.i.i, label %__do_map_single_page.exit, label %bb.f

bb.f:                                             ; preds = %pt_range_to_index.exit.i.i
  %i.aj = trunc i64 %i.ah to i32
  %i.ak = lshr i32 %i.aj, 9
  %i.al = and i32 %i.ak, 7
  %.off.i.i.i.i = add nsw i32 %i.al, -1
  %switch.i.i.i.i = icmp ult i32 %.off.i.i.i.i, 6
  br i1 %switch.i.i.i.i, label %bb.g, label %__do_map_single_page.exit

bb.g:                                             ; preds = %bb.f
  %i.am = and i64 %i.ah, 4503599627366400
  %i.an = add i64 %i.u, %i.am
  %i.ao = inttoptr i64 %i.an to ptr
  %i.ap = icmp eq i8 %i.b, 1
  br i1 %i.ap, label %bb.h, label %pt_range_to_index.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.aq = getelementptr i8, ptr %0, i64 33
  %i.ar = load i8, ptr %i.aq, align 1             ; 2 uses
  %i.as = icmp eq i8 %i.ar, 64
  %i.at = zext nneg i8 %i.ar to i64
  %notmask.i.i.i.i.i = shl nsw i64 -1, %i.at
  %i.au = xor i64 %notmask.i.i.i.i.i, -1
  %i.av = select i1 %i.as, i64 137436856320, i64 %i.au
  %.0.i.i.i.i.i = and i64 %i.av, %i.e
  br label %pt_range_to_index.exit.i.i.i

pt_range_to_index.exit.i.i.i:                     ; preds = %bb.h, %bb.g
  %.sink18.i.i = phi i64 [ %.0.i.i.i.i.i, %bb.h ], [ %i.e, %bb.g ]
  %.sink17.i.i = phi i64 [ 65535, %bb.h ], [ 511, %bb.g ]
  %i.aw = lshr i64 %.sink18.i.i, 21
  %i.ax = and i64 %i.aw, %.sink17.i.i
  %i.ay = getelementptr [8 x i8], ptr %i.ao, i64 %i.ax
  %i.az = load volatile i64, ptr %i.ay, align 8   ; 3 uses
  %i.ba = and i64 %i.az, 1
  %.not.i.i.i.i.i = icmp eq i64 %i.ba, 0
  br i1 %.not.i.i.i.i.i, label %__do_map_single_page.exit, label %bb.i

bb.i:                                             ; preds = %pt_range_to_index.exit.i.i.i
  %i.bb = trunc i64 %i.az to i32
  %i.bc = lshr i32 %i.bb, 9
  %i.bd = and i32 %i.bc, 7
  %.off.i.i.i.i.i = add nsw i32 %i.bd, -1
  %switch.i.i.i.i.i = icmp ult i32 %.off.i.i.i.i.i, 6
  br i1 %switch.i.i.i.i.i, label %bb.j, label %__do_map_single_page.exit

bb.j:                                             ; preds = %bb.i
  %i.be = and i64 %i.az, 4503599627366400
  %i.bf = add i64 %i.be, %i.u
  %i.bg = inttoptr i64 %i.bf to ptr
  %i.bh = icmp eq i8 %i.b, 0
  br i1 %i.bh, label %bb.k, label %pt_range_to_index.exit.i.i.i.i

bb.k:                                             ; preds = %bb.j
  %i.bi = getelementptr i8, ptr %0, i64 33
  %i.bj = load i8, ptr %i.bi, align 1             ; 2 uses
  %i.bk = icmp eq i8 %i.bj, 64
  %i.bl = zext nneg i8 %i.bj to i64
  %notmask.i.i.i.i.i.i = shl nsw i64 -1, %i.bl
  %i.bm = xor i64 %notmask.i.i.i.i.i.i, -1
  %i.bn = select i1 %i.bk, i64 268431360, i64 %i.bm
  %.0.i.i.i.i.i.i = and i64 %i.bn, %i.e
  br label %pt_range_to_index.exit.i.i.i.i

pt_range_to_index.exit.i.i.i.i:                   ; preds = %bb.k, %bb.j
  %.sink16.i.i.i = phi i64 [ %.0.i.i.i.i.i.i, %bb.k ], [ %i.e, %bb.j ]
  %.sink15.i.i.i = phi i64 [ 65535, %bb.k ], [ 511, %bb.j ]
  %i.bo = lshr i64 %.sink16.i.i.i, 12
  %i.bp = and i64 %i.bo, %.sink15.i.i.i
  %i.bq = getelementptr [8 x i8], ptr %i.bg, i64 %i.bp ; 2 uses
  %i.br = load volatile i64, ptr %i.bq, align 8
  %i.bs = and i64 %i.br, 1
  %.not.i.i.i.i.i.i = icmp eq i64 %i.bs, 0
  br i1 %.not.i.i.i.i.i.i, label %amdv1pt_install_leaf_entry.exit.i.i.i, label %__do_map_single_page.exit

amdv1pt_install_leaf_entry.exit.i.i.i:            ; preds = %pt_range_to_index.exit.i.i.i.i
  %i.bt = getelementptr i8, ptr %1, i64 24        ; 3 uses
  %i.bu = load i64, ptr %i.bt, align 8
  %i.bv = getelementptr i8, ptr %1, i64 8
  %i.bw = and i64 %i.bu, 4503599627366400
  %i.bx = load i64, ptr %i.bv, align 8
  %i.by = or i64 %i.bw, %i.bx
  %i.bz = or i64 %i.by, 1
  store volatile i64 %i.bz, ptr %i.bq, align 8
  %i.ca = load i64, ptr %i.bt, align 8
  %i.cb = add i64 %i.ca, 4096
  store i64 %i.cb, ptr %i.bt, align 8
  br label %__do_map_single_page.exit

__do_map_single_page.exit:                        ; preds = %pt_range_to_index.exit.i, %bb.c, %amdv1pt_install_leaf_entry.exit.i.i.i, %pt_range_to_index.exit.i.i.i.i, %bb.i, %pt_range_to_index.exit.i.i.i, %bb.f, %pt_range_to_index.exit.i.i
  %.0.i = phi i32 [ -11, %pt_range_to_index.exit.i.i ], [ -11, %pt_range_to_index.exit.i.i.i ], [ -98, %pt_range_to_index.exit.i.i.i.i ], [ 0, %amdv1pt_install_leaf_entry.exit.i.i.i ], [ -11, %bb.i ], [ -11, %bb.f ], [ -11, %bb.c ], [ -11, %pt_range_to_index.exit.i ]
  ret i32 %.0.i
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong memory(readwrite, target_mem: none)
define internal fastcc range(i32 -98, 1) i32 @__collect_tables(ptr nofree noundef captures(none) %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef captures(address) %3) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = trunc i32 %2 to i8                       ; 3 uses
  %i.b = getelementptr i8, ptr %1, i64 32         ; 2 uses
  %i.c = load i8, ptr %i.b, align 8
  %.not = trunc i8 %i.c to i1
  %i.d = icmp ne i8 %i.a, 0                       ; 2 uses
  %or.cond = or i1 %i.d, %.not
  br i1 %or.cond, label %bb.b, label %_pt_iter_load.exit

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %2, 255                          ; 2 uses
  %i.f = mul nuw nsw i32 %i.e, 9                  ; 4 uses
  %i.g = add nuw nsw i32 %i.f, 12                 ; 3 uses
  %i.h = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %i.i = load i8, ptr %i.h, align 8               ; 3 uses
  %i.j = icmp eq i8 %i.i, %i.a
  %i.k = getelementptr i8, ptr %0, i64 16         ; 3 uses
  %i.l = load i64, ptr %i.k, align 8              ; 6 uses
  br i1 %i.j, label %pt_range_to_index.exit.i, label %pt_range_to_index.exit.i.thread

pt_range_to_index.exit.i:                         ; preds = %bb.b
  %i.m = getelementptr i8, ptr %0, i64 33
  %i.n = load i8, ptr %i.m, align 1               ; 2 uses
end_hunk_0
