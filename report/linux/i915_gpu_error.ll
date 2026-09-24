Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/i915_gpu_error?download=true
inline.NumInlined: 373
inline.NumDeleted: 162
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0_@i915_vma_coredump_create:bb.a
  store volatile ptr %.pn183308, ptr %.pn183308, align 8
  store volatile ptr %.pn183308, ptr %.pn.in309, align 8
  %i.hd = load i64, ptr @vmemmap_base, align 8    ; 2 uses
  %i.he = ptrtoint ptr %.0153 to i64
  %i.hf = sub i64 %i.he, %i.hd
  %i.hg = shl i64 %i.hf, 6
  %i.hh = load i64, ptr @page_offset_base, align 8 ; 2 uses
  %i.hi = add i64 %i.hg, %i.hh                    ; 2 uses
  %i.hj = inttoptr i64 %i.hd to ptr
  %i.hk = add i64 %i.hi, 2147483648
  %i.hl = icmp ugt i64 %i.hi, -2147483649
  %i.hm = load i64, ptr @phys_base, align 8
  %i.hn = sub i64 -2147483648, %i.hh
  %i.ho = select i1 %i.hl, i64 %i.hm, i64 %i.hn
  %i.hp = add i64 %i.hk, %i.ho
  %i.hq = lshr i64 %i.hp, 12
  %i.hr = getelementptr [64 x i8], ptr %i.hj, i64 %i.hq ; 2 uses
  %i.hs = getelementptr i8, ptr %i.hr, i64 8
  %i.ht = load volatile i64, ptr %i.hs, align 8   ; 2 uses
  %i.hu = ptrtoint ptr %i.hr to i64
  %i.hv = and i64 %i.ht, 1
  %i.hw = add nsw i64 %i.hv, -1
  %i.hx = or i64 %i.hw, %i.ht
  %i.hy = and i64 %i.hx, %i.hu
  %i.hz = inttoptr i64 %i.hy to ptr               ; 3 uses
  %.val.i211 = load i8, ptr %2, align 8           ; 3 uses
  %.not.i212 = icmp eq i8 %.val.i211, 31
  br i1 %.not.i212, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ia = add i8 %.val.i211, 1
  store i8 %i.ia, ptr %2, align 8
  %i.ib = zext i8 %.val.i211 to i64
  %i.ic = getelementptr [8 x i8], ptr %i.ha, i64 %i.ib
  store ptr %i.hz, ptr %i.ic, align 8
  br label %pool_free.exit

bb.ap:                                            ; preds = %bb.an
  %i.id = getelementptr i8, ptr %i.hz, i64 52     ; 2 uses
  %i.ie = call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock decl $0", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.id, ptr elementtype(i32) %i.id) #13, !srcloc !26 ; 2 uses
  %i.if = icmp ult i8 %i.ie, 2
  call void @llvm.assume(i1 %i.if)
  %.not.i.i213 = icmp eq i8 %i.ie, 0
  br i1 %.not.i.i213, label %pool_free.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void @__folio_put(ptr noundef %i.hz) #14
  br label %pool_free.exit

pool_free.exit:                                   ; preds = %bb.ao, %bb.ap, %bb.aq
  %.not278 = icmp eq ptr %.pn310, %i.r
  br i1 %.not278, label %._crit_edge312, label %bb.an, !llvm.loop !91

._crit_edge312:                                   ; preds = %pool_free.exit, %.thread269
  call void @kfree(ptr noundef nonnull %i.l) #14
  br label %bb.ar

bb.ar:                                            ; preds = %compress_flush.exit, %._crit_edge312
  %.0151 = phi ptr [ null, %._crit_edge312 ], [ %i.l, %compress_flush.exit ]
  %i.ig = call i32 @zlib_deflateEnd(ptr noundef %i.m) #14 ; 0 uses
  br label %bb.as

bb.as:                                            ; preds = %bb.c, %bb.a, %bb.b, %bb.ar, %bb.e
  %.0 = phi ptr [ %.0151, %bb.ar ], [ null, %bb.e ], [ null, %bb.a ], [ null, %bb.b ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @i915_vma_resource_unhold(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local noundef ptr @i915_gpu_coredump_alloc(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 1645
  %i.b = load i8, ptr %i.a, align 1, !range !17, !noundef !18
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.d = or i32 %1, 256
  %i.e = and i32 %1, 17
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %_kzalloc_noprof.exit, label %bb.c, !prof !19

bb.c:                                             ; preds = %bb.b
  %i.g = and i32 %1, 1
  %..i.i = add nuw nsw i32 %i.g, 1
  %i.h = zext nneg i32 %..i.i to i64
  br label %_kzalloc_noprof.exit

_kzalloc_noprof.exit:                             ; preds = %bb.b, %bb.c
  %.0.i2.i = phi i64 [ 0, %bb.b ], [ %i.h, %bb.c ]
  %i.i = getelementptr [112 x i8], ptr @kmalloc_caches, i64 %.0.i2.i
  %i.j = getelementptr i8, ptr %i.i, i64 72
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noalias align 8 dereferenceable_or_null(448) ptr @__kmalloc_cache_noprof(ptr noundef %i.k, i32 noundef %i.d, i64 noundef 448) #16 ; 17 uses
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %_kzalloc_noprof.exit
  store volatile i32 1, ptr %i.l, align 8
  %i.m = getelementptr i8, ptr %i.l, i64 40
  store ptr %0, ptr %i.m, align 8
  %i.n = tail call i64 @ktime_get_with_offset(i32 noundef 0) #14
  %i.o = getelementptr i8, ptr %i.l, i64 8
  store i64 %i.n, ptr %i.o, align 8
  %i.p = tail call i64 @ktime_get_with_offset(i32 noundef 1) #14
  %i.q = getelementptr i8, ptr %i.l, i64 16
  store i64 %i.p, ptr %i.q, align 8
  %i.r = tail call i64 @ktime_get() #14
  %i.s = getelementptr i8, ptr %0, i64 3528
  %.val = load ptr, ptr %i.s, align 8
  %i.t = getelementptr i8, ptr %.val, i64 3480
  %i.u = load i64, ptr %i.t, align 8
  %i.v = sub i64 %i.r, %i.u
  %i.w = getelementptr i8, ptr %i.l, i64 24
  store i64 %i.v, ptr %i.w, align 8
  %i.x = load volatile i64, ptr @jiffies, align 64
  %i.y = getelementptr i8, ptr %i.l, i64 32
  store i64 %i.x, ptr %i.y, align 8
  %i.z = getelementptr i8, ptr %0, i64 3176
  %i.aa = load volatile i32, ptr %i.z, align 8
  %i.ab = icmp ne i32 %i.aa, 0
  %i.ac = getelementptr i8, ptr %i.l, i64 185
  %i.ad = zext i1 %i.ab to i8
  store i8 %i.ad, ptr %i.ac, align 1
  %i.ae = getelementptr i8, ptr %0, i64 8
  %i.af = load ptr, ptr %i.ae, align 8            ; 2 uses
  %i.ag = getelementptr i8, ptr %i.af, i64 476
  %i.ah = load i32, ptr %i.ag, align 4
  %i.ai = icmp eq i32 %i.ah, 2
  br i1 %i.ai, label %bb.e, label %capture_gen.exit

bb.e:                                             ; preds = %bb.d
  %i.aj = getelementptr i8, ptr %i.af, i64 464
  %i.ak = load i16, ptr %i.aj, align 8
  %i.al = and i16 %i.ak, 7
  %.not.i.i = icmp eq i16 %i.al, 0
  %i.am = zext i1 %.not.i.i to i8
  br label %capture_gen.exit

capture_gen.exit:                                 ; preds = %bb.d, %bb.e
  %i.an = phi i8 [ 0, %bb.d ], [ %i.am, %bb.e ]
  %i.ao = getelementptr i8, ptr %i.l, i64 186
  store i8 %i.an, ptr %i.ao, align 2
  %i.ap = tail call zeroext i1 @i915_vtd_active(ptr noundef %0) #14
  %i.aq = zext i1 %i.ap to i32
  %i.ar = getelementptr i8, ptr %i.l, i64 188
  store i32 %i.aq, ptr %i.ar, align 4
  %i.as = getelementptr i8, ptr %0, i64 3136
  %i.at = load volatile i32, ptr %i.as, align 8
  %i.au = getelementptr i8, ptr %i.l, i64 192
  store i32 %i.at, ptr %i.au, align 8
  %i.av = getelementptr i8, ptr %0, i64 3160
  %i.aw = load i32, ptr %i.av, align 8
  %i.ax = getelementptr i8, ptr %i.l, i64 196
  store i32 %i.aw, ptr %i.ax, align 4
  %i.ay = getelementptr i8, ptr %i.l, i64 344
  %i.az = getelementptr i8, ptr %0, i64 1568
  tail call void @i915_params_copy(ptr noundef %i.ay, ptr noundef %i.az) #14
  %i.ba = getelementptr i8, ptr %i.l, i64 200
  %i.bb = getelementptr i8, ptr %0, i64 1648
  %i.bc = load ptr, ptr %i.bb, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(96) %i.ba, ptr noundef align 8 dereferenceable(96) %i.bc, i64 96, i1 false)
  %i.bd = getelementptr i8, ptr %i.l, i64 296
  %i.be = getelementptr i8, ptr %0, i64 1656
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(36) %i.bd, ptr noundef align 8 dereferenceable(36) %i.be, i64 36, i1 false)
  %i.bf = getelementptr i8, ptr %i.l, i64 332
  %i.bg = getelementptr i8, ptr %0, i64 1692
  %i.bh = load i64, ptr %i.bg, align 4
  store i64 %i.bh, ptr %i.bf, align 4
  br label %bb.f

bb.f:                                             ; preds = %_kzalloc_noprof.exit, %bb.a, %capture_gen.exit
  %.0 = phi ptr [ %i.l, %capture_gen.exit ], [ null, %bb.a ], [ null, %_kzalloc_noprof.exit ]
  ret ptr %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local noundef ptr @intel_gt_coredump_alloc(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = or i32 %1, 256
  %i.b = and i32 %1, 17
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %_kzalloc_noprof.exit, label %bb.b, !prof !19

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %1, 1
  %..i.i = add nuw nsw i32 %i.d, 1
  %i.e = zext nneg i32 %..i.i to i64
  br label %_kzalloc_noprof.exit

_kzalloc_noprof.exit:                             ; preds = %bb.a, %bb.b
  %.0.i2.i = phi i64 [ 0, %bb.a ], [ %i.e, %bb.b ]
  %i.f = getelementptr [112 x i8], ptr @kmalloc_caches, i64 %.0.i2.i
  %i.g = getelementptr i8, ptr %i.f, i64 80
  %i.h = load ptr, ptr %i.g, align 16
  %i.i = tail call noalias align 8 dereferenceable_or_null(624) ptr @__kmalloc_cache_noprof(ptr noundef %i.h, i32 noundef %i.a, i64 noundef 624) #16 ; 48 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.av, label %bb.c

bb.c:                                             ; preds = %_kzalloc_noprof.exit
  store ptr %0, ptr %i.i, align 8
  %i.j = getelementptr i8, ptr %0, i64 3336
  %i.k = load volatile ptr, ptr %i.j, align 8
  %i.l = icmp ne ptr %i.k, null
  %i.m = getelementptr i8, ptr %i.i, i64 8
  %i.n = zext i1 %i.l to i8
  store i8 %i.n, ptr %i.m, align 8
  %i.o = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8              ; 21 uses
  %i.q = getelementptr i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %i.s = getelementptr i8, ptr %i.r, i64 1664
  %i.t = load i32, ptr %i.s, align 4
  %i.u = and i32 %i.t, 4194304
  %.not.i = icmp eq i32 %i.u, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr i8, ptr %i.p, i64 144
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = tail call i32 %i.w(ptr noundef %i.p, i32 278556, i1 noundef zeroext true) #14, !inline_history !103
  %i.y = getelementptr i8, ptr %i.i, i64 240
  store i32 %i.x, ptr %i.y, align 8
  %i.z = getelementptr i8, ptr %i.i, i64 264
  store i32 1, ptr %i.z, align 8
  br label %gt_record_global_nonguc_regs.exit

bb.e:                                             ; preds = %bb.c
  %i.aa = getelementptr i8, ptr %i.r, i64 1656
  %i.ab = load i8, ptr %i.aa, align 8             ; 3 uses
  %i.ac = icmp ugt i8 %i.ab, 10
  br i1 %i.ac, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr i8, ptr %i.p, i64 144     ; 6 uses
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = tail call i32 %i.ae(ptr noundef %i.p, i32 1638448, i1 noundef zeroext true) #14, !inline_history !103
  %i.ag = getelementptr i8, ptr %i.i, i64 240
  store i32 %i.af, ptr %i.ag, align 8
  %i.ah = load ptr, ptr %i.ad, align 8
  %i.ai = tail call i32 %i.ah(ptr noundef %i.p, i32 1638452, i1 noundef zeroext true) #14, !inline_history !103
  %i.aj = getelementptr i8, ptr %i.i, i64 244
  store i32 %i.ai, ptr %i.aj, align 4
  %i.ak = load ptr, ptr %i.ad, align 8
  %i.al = tail call i32 %i.ak(ptr noundef %i.p, i32 1638456, i1 noundef zeroext true) #14, !inline_history !103
  %i.am = getelementptr i8, ptr %i.i, i64 248
  store i32 %i.al, ptr %i.am, align 8
  %i.an = load ptr, ptr %i.ad, align 8
  %i.ao = tail call i32 %i.an(ptr noundef %i.p, i32 1638460, i1 noundef zeroext true) #14, !inline_history !103
  %i.ap = getelementptr i8, ptr %i.i, i64 252
  store i32 %i.ao, ptr %i.ap, align 4
  %i.aq = load ptr, ptr %i.ad, align 8
  %i.ar = tail call i32 %i.aq(ptr noundef %i.p, i32 1638464, i1 noundef zeroext true) #14, !inline_history !103
  %i.as = getelementptr i8, ptr %i.i, i64 256
  store i32 %i.ar, ptr %i.as, align 8
  %i.at = load ptr, ptr %i.ad, align 8
  %i.au = tail call i32 %i.at(ptr noundef %i.p, i32 1638468, i1 noundef zeroext true) #14, !inline_history !103
  %i.av = getelementptr i8, ptr %i.i, i64 260
  store i32 %i.au, ptr %i.av, align 4
  %i.aw = getelementptr i8, ptr %i.i, i64 264
  store i32 6, ptr %i.aw, align 8
  br label %gt_record_global_nonguc_regs.exit

bb.g:                                             ; preds = %bb.e
  %i.ax = icmp samesign ugt i8 %i.ab, 7
  br i1 %i.ax, label %.preheader.i, label %bb.h

.preheader.i:                                     ; preds = %bb.g
  %i.ay = getelementptr i8, ptr %i.p, i64 144     ; 4 uses
  %i.az = getelementptr i8, ptr %i.i, i64 240
  %i.ba = load ptr, ptr %i.ay, align 8
  %i.bb = tail call i32 %i.ba(ptr noundef %i.p, i32 279308, i1 noundef zeroext true) #14, !inline_history !103
  store i32 %i.bb, ptr %i.az, align 8
  %i.bc = load ptr, ptr %i.ay, align 8
  %i.bd = tail call i32 %i.bc(ptr noundef %i.p, i32 279324, i1 noundef zeroext true) #14, !inline_history !103
  %i.be = getelementptr i8, ptr %i.i, i64 244
  store i32 %i.bd, ptr %i.be, align 4
  %i.bf = load ptr, ptr %i.ay, align 8
  %i.bg = tail call i32 %i.bf(ptr noundef %i.p, i32 279340, i1 noundef zeroext true) #14, !inline_history !103
  %i.bh = getelementptr i8, ptr %i.i, i64 248
  store i32 %i.bg, ptr %i.bh, align 8
  %i.bi = load ptr, ptr %i.ay, align 8
  %i.bj = tail call i32 %i.bi(ptr noundef %i.p, i32 279356, i1 noundef zeroext true) #14, !inline_history !103
  %i.bk = getelementptr i8, ptr %i.i, i64 252
  store i32 %i.bj, ptr %i.bk, align 4
  %i.bl = getelementptr i8, ptr %i.i, i64 264
  store i32 4, ptr %i.bl, align 8
  br label %gt_record_global_nonguc_regs.exit

bb.h:                                             ; preds = %bb.g
  %i.bm = icmp samesign ugt i8 %i.ab, 4
  %i.bn = getelementptr i8, ptr %i.p, i64 144
  %i.bo = load ptr, ptr %i.bn, align 8            ; 2 uses
  %i.bp = getelementptr i8, ptr %i.i, i64 240     ; 2 uses
  %i.bq = getelementptr i8, ptr %i.i, i64 264     ; 2 uses
  br i1 %i.bm, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.br = tail call i32 %i.bo(ptr noundef %i.p, i32 278556, i1 noundef zeroext true) #14, !inline_history !103
  store i32 %i.br, ptr %i.bp, align 8
  store i32 1, ptr %i.bq, align 8
  br label %gt_record_global_nonguc_regs.exit

bb.j:                                             ; preds = %bb.h
  %i.bs = tail call i32 %i.bo(ptr noundef %i.p, i32 8352, i1 noundef zeroext true) #14, !inline_history !103
  store i32 %i.bs, ptr %i.bp, align 8
  store i32 1, ptr %i.bq, align 8
  br label %gt_record_global_nonguc_regs.exit

gt_record_global_nonguc_regs.exit:                ; preds = %bb.d, %bb.f, %.preheader.i, %bb.i, %bb.j
  %i.bt = getelementptr i8, ptr %i.p, i64 144     ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = tail call i32 %i.bu(ptr noundef %i.p, i32 8368, i1 noundef zeroext true) #14, !inline_history !103
  %i.bw = getelementptr i8, ptr %i.i, i64 232
  store i32 %i.bv, ptr %i.bw, align 8
  %i.bx = load ptr, ptr %i.bt, align 8
  %i.by = tail call i32 %i.bx(ptr noundef %i.p, i32 8228, i1 noundef zeroext true) #14, !inline_history !103
  %i.bz = getelementptr i8, ptr %i.i, i64 236
  store i32 %i.by, ptr %i.bz, align 4
  %i.ca = and i32 %2, 1
  %.not19 = icmp eq i32 %i.ca, 0
  br i1 %.not19, label %bb.k, label %gt_record_global_regs.exit

bb.k:                                             ; preds = %gt_record_global_nonguc_regs.exit
  %i.cb = load ptr, ptr %i.o, align 8             ; 31 uses
  %i.cc = getelementptr i8, ptr %i.cb, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8            ; 3 uses
  %i.ce = getelementptr i8, ptr %i.cd, i64 1664
  %i.cf = load i32, ptr %i.ce, align 4
  %i.cg = and i32 %i.cf, 4194304
  %.not87.i = icmp eq i32 %i.cg, 0
  br i1 %.not87.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ch = load ptr, ptr %i.cb, align 8
  %i.ci = getelementptr i8, ptr %i.ch, i64 1245360
  %i.cj = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.ci) #13, !srcloc !110
  %i.ck = getelementptr i8, ptr %i.i, i64 268
  store i32 %i.cj, ptr %i.ck, align 4
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.cl = getelementptr i8, ptr %i.cd, i64 1656   ; 8 uses
  %i.cm = load i8, ptr %i.cl, align 8             ; 4 uses
  %i.cn = zext i8 %i.cm to i32
  %i.co = shl nuw nsw i32 %i.cn, 8
  %i.cp = getelementptr i8, ptr %i.cd, i64 1657
  %i.cq = load i8, ptr %i.cp, align 1
  %i.cr = zext i8 %i.cq to i32
  %i.cs = or disjoint i32 %i.co, %i.cr
  %i.ct = icmp samesign ugt i32 %i.cs, 3126
  br i1 %i.ct, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cu = load ptr, ptr %i.i, align 8             ; 2 uses
  %i.cv = tail call i32 @intel_gt_mcr_read_any(ptr noundef %i.cu, i32 52920) #14
  %i.cw = getelementptr i8, ptr %i.i, i64 276
  store i32 %i.cv, ptr %i.cw, align 4
  %i.cx = tail call i32 @intel_gt_mcr_read_any(ptr noundef %i.cu, i32 52924) #14
  br label %.sink.split.i

bb.o:                                             ; preds = %bb.m
  %i.cy = icmp ugt i8 %i.cm, 11
  br i1 %i.cy, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cz = getelementptr i8, ptr %i.cb, i64 144    ; 2 uses
  %i.da = load ptr, ptr %i.cz, align 8
  %i.db = tail call i32 %i.da(ptr noundef %i.cb, i32 52920, i1 noundef zeroext true) #14, !inline_history !104
  %i.dc = getelementptr i8, ptr %i.i, i64 276
  store i32 %i.db, ptr %i.dc, align 4
  %i.dd = load ptr, ptr %i.cz, align 8
  %i.de = tail call i32 %i.dd(ptr noundef %i.cb, i32 52924, i1 noundef zeroext true) #14, !inline_history !104
  br label %.sink.split.i

bb.q:                                             ; preds = %bb.o
  %i.df = icmp samesign ugt i8 %i.cm, 7
  br i1 %i.df, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.dg = getelementptr i8, ptr %i.cb, i64 144    ; 2 uses
  %i.dh = load ptr, ptr %i.dg, align 8
  %i.di = tail call i32 %i.dh(ptr noundef %i.cb, i32 19216, i1 noundef zeroext true) #14, !inline_history !104
  %i.dj = getelementptr i8, ptr %i.i, i64 276
  store i32 %i.di, ptr %i.dj, align 4
  %i.dk = load ptr, ptr %i.dg, align 8
  %i.dl = tail call i32 %i.dk(ptr noundef %i.cb, i32 19220, i1 noundef zeroext true) #14, !inline_history !104
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.r, %bb.p, %bb.n
  %.sink.i = phi i32 [ %i.de, %bb.p ], [ %i.dl, %bb.r ], [ %i.cx, %bb.n ]
  %i.dm = getelementptr i8, ptr %i.i, i64 280
  store i32 %.sink.i, ptr %i.dm, align 8
  %.pre = load i8, ptr %i.cl, align 8
  br label %bb.s

bb.s:                                             ; preds = %.sink.split.i, %bb.q
  %i.dn = phi i8 [ %.pre, %.sink.split.i ], [ %i.cm, %bb.q ] ; 2 uses
  %i.do = icmp eq i8 %i.dn, 6
  br i1 %i.do, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.dp = getelementptr i8, ptr %i.cb, i64 36
  %i.dq = load i32, ptr %i.dp, align 4
  %i.dr = add i32 %i.dq, 41356
  %i.ds = load ptr, ptr %i.cb, align 8
  %i.dt = zext i32 %i.dr to i64
  %i.du = getelementptr i8, ptr %i.ds, i64 %i.dt
  %i.dv = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.du) #13, !srcloc !110
  %i.dw = getelementptr i8, ptr %i.i, i64 268
  store i32 %i.dv, ptr %i.dw, align 4
  %i.dx = getelementptr i8, ptr %i.cb, i64 144    ; 2 uses
  %i.dy = load ptr, ptr %i.dx, align 8
  %i.dz = tail call i32 %i.dy(ptr noundef %i.cb, i32 147456, i1 noundef zeroext true) #14, !inline_history !104
  %i.ea = getelementptr i8, ptr %i.i, i64 296
  store i32 %i.dz, ptr %i.ea, align 8
  %i.eb = load ptr, ptr %i.dx, align 8
  %i.ec = tail call i32 %i.eb(ptr noundef %i.cb, i32 9504, i1 noundef zeroext true) #14, !inline_history !104
  %i.ed = getelementptr i8, ptr %i.i, i64 300
  store i32 %i.ec, ptr %i.ed, align 4
  %.pr.i = load i8, ptr %i.cl, align 8
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.ee = phi i8 [ %.pr.i, %bb.t ], [ %i.dn, %bb.s ] ; 2 uses
  %i.ef = icmp ugt i8 %i.ee, 6
  br i1 %i.ef, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.eg = getelementptr i8, ptr %i.cb, i64 36
  %i.eh = load i32, ptr %i.eg, align 4
  %i.ei = add i32 %i.eh, 41352
  %i.ej = load ptr, ptr %i.cb, align 8
  %i.ek = zext i32 %i.ei to i64
  %i.el = getelementptr i8, ptr %i.ej, i64 %i.ek
  %i.em = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.el) #13, !srcloc !110
  %i.en = getelementptr i8, ptr %i.i, i64 268
  store i32 %i.em, ptr %i.en, align 4
  %.pre.i = load i8, ptr %i.cl, align 8
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.eo = phi i8 [ %.pre.i, %bb.v ], [ %i.ee, %bb.u ] ; 2 uses
  %i.ep = add i8 %i.eo, -6
  %or.cond.i = icmp ult i8 %i.ep, 6
  br i1 %or.cond.i, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.eq = getelementptr i8, ptr %i.cb, i64 144    ; 2 uses
  %i.er = load ptr, ptr %i.eq, align 8
  %i.es = tail call i32 %i.er(ptr noundef %i.cb, i32 16544, i1 noundef zeroext true) #14, !inline_history !104
  %i.et = getelementptr i8, ptr %i.i, i64 272
  store i32 %i.es, ptr %i.et, align 8
  %i.eu = load ptr, ptr %i.eq, align 8
  %i.ev = tail call i32 %i.eu(ptr noundef %i.cb, i32 16560, i1 noundef zeroext true) #14, !inline_history !104
  %i.ew = getelementptr i8, ptr %i.i, i64 284
  store i32 %i.ev, ptr %i.ew, align 4
  %.pre90.i = load i8, ptr %i.cl, align 8
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.ex = phi i8 [ %.pre90.i, %bb.x ], [ %i.eo, %bb.w ] ; 2 uses
  %i.ey = and i8 %i.ex, -2
  %or.cond84.i = icmp eq i8 %i.ey, 6
  br i1 %or.cond84.i, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.ez = getelementptr i8, ptr %i.cb, i64 144    ; 2 uses
  %i.fa = load ptr, ptr %i.ez, align 8
  %i.fb = tail call i32 %i.fa(ptr noundef %i.cb, i32 16528, i1 noundef zeroext true) #14, !inline_history !104
  %i.fc = getelementptr i8, ptr %i.i, i64 292
  store i32 %i.fb, ptr %i.fc, align 4
  %i.fd = load ptr, ptr %i.ez, align 8
  %i.fe = tail call i32 %i.fd(ptr noundef %i.cb, i32 82064, i1 noundef zeroext true) #14, !inline_history !104
  %i.ff = getelementptr i8, ptr %i.i, i64 288
  store i32 %i.fe, ptr %i.ff, align 8
  %.pre91.i = load i8, ptr %i.cl, align 8
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.fg = phi i8 [ %.pre91.i, %bb.z ], [ %i.ex, %bb.y ] ; 2 uses
  %i.fh = and i8 %i.fg, -4
  %or.cond85.i = icmp eq i8 %i.fh, 8
  br i1 %or.cond85.i, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.fi = getelementptr i8, ptr %i.cb, i64 144
  %i.fj = load ptr, ptr %i.fi, align 8
  %i.fk = tail call i32 %i.fj(ptr noundef %i.cb, i32 16420, i1 noundef zeroext true) #14, !inline_history !104
  %i.fl = getelementptr i8, ptr %i.i, i64 304
  store i32 %i.fk, ptr %i.fl, align 8
  %.pr86.i = load i8, ptr %i.cl, align 8
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.fm = phi i8 [ %.pr86.i, %bb.ab ], [ %i.fg, %bb.aa ] ; 2 uses
  %i.fn = icmp eq i8 %i.fm, 12
  br i1 %i.fn, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.fo = getelementptr i8, ptr %i.cb, i64 144
  %i.fp = load ptr, ptr %i.fo, align 8
  %i.fq = tail call i32 %i.fp(ptr noundef %i.cb, i32 17396, i1 noundef zeroext true) #14, !inline_history !104
  %i.fr = getelementptr i8, ptr %i.i, i64 308
  store i32 %i.fq, ptr %i.fr, align 4
  %.pre92.i = load i8, ptr %i.cl, align 8
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.fs = phi i8 [ %.pre92.i, %bb.ad ], [ %i.fm, %bb.ac ]
  %i.ft = icmp ugt i8 %i.fs, 11
  %.pre32 = load ptr, ptr %i.i, align 8           ; 7 uses
  br i1 %i.ft, label %.preheader.i20, label %gt_record_global_regs.exit

.preheader.i20:                                   ; preds = %bb.ae
  %i.fu = getelementptr i8, ptr %i.cb, i64 144    ; 5 uses
  %i.fv = getelementptr i8, ptr %i.i, i64 324
  %i.fw = getelementptr i8, ptr %.pre32, i64 4949 ; 4 uses
  %i.fx = load i8, ptr %i.fw, align 1
  %i.fy = zext i8 %i.fx to i64                    ; 3 uses
  %i.fz = and i64 %i.fy, 1
  %i.ga = icmp eq i64 %i.fz, 0
  br i1 %i.ga, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %.preheader.i20
  %i.gb = getelementptr i8, ptr %.pre32, i64 4940
  %i.gc = load i32, ptr %i.gb, align 4
  %i.gd = and i32 %i.gc, 1024
  %.not.i21 = icmp eq i32 %i.gd, 0
  br i1 %.not.i21, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ge = load ptr, ptr %i.fu, align 8
  %i.gf = tail call i32 %i.ge(ptr noundef %i.cb, i32 1884160, i1 noundef zeroext true) #14, !inline_history !104
  store i32 %i.gf, ptr %i.fv, align 4
  %.pre94.i = load i8, ptr %i.fw, align 1
  %.pre101.i = zext i8 %.pre94.i to i64
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %.preheader.i20
  %.pre-phi.i = phi i64 [ %i.fy, %.preheader.i20 ], [ %i.fy, %bb.af ], [ %.pre101.i, %bb.ag ] ; 3 uses
  %i.gg = and i64 %.pre-phi.i, 2
  %i.gh = icmp eq i64 %i.gg, 0
  br i1 %i.gh, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.gi = getelementptr i8, ptr %.pre32, i64 4940
  %i.gj = load i32, ptr %i.gi, align 4
  %i.gk = and i32 %i.gj, 4096
  %.not.1.i = icmp eq i32 %i.gk, 0
  br i1 %.not.1.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.gl = load ptr, ptr %i.fu, align 8
  %i.gm = tail call i32 %i.gl(ptr noundef %i.cb, i32 1888256, i1 noundef zeroext true) #14, !inline_history !104
  %i.gn = getelementptr i8, ptr %i.i, i64 328
  store i32 %i.gm, ptr %i.gn, align 8
  %.pre97.i = load i8, ptr %i.fw, align 1
  %.pre102.i = zext i8 %.pre97.i to i64
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %bb.ah
  %.pre-phi103.i = phi i64 [ %.pre102.i, %bb.aj ], [ %.pre-phi.i, %bb.ai ], [ %.pre-phi.i, %bb.ah ] ; 3 uses
  %i.go = and i64 %.pre-phi103.i, 4
  %i.gp = icmp eq i64 %i.go, 0
  br i1 %i.gp, label %bb.an, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.gq = getelementptr i8, ptr %.pre32, i64 4940
  %i.gr = load i32, ptr %i.gq, align 4
  %i.gs = and i32 %i.gr, 16384
  %.not.2.i = icmp eq i32 %i.gs, 0
  br i1 %.not.2.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.gt = load ptr, ptr %i.fu, align 8
  %i.gu = tail call i32 %i.gt(ptr noundef %i.cb, i32 1892352, i1 noundef zeroext true) #14, !inline_history !104
  %i.gv = getelementptr i8, ptr %i.i, i64 332
  store i32 %i.gu, ptr %i.gv, align 4
  %.pre100.i = load i8, ptr %i.fw, align 1
  %.pre104.i = zext i8 %.pre100.i to i64
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al, %bb.ak
  %.pre-phi105.i = phi i64 [ %.pre104.i, %bb.am ], [ %.pre-phi103.i, %bb.al ], [ %.pre-phi103.i, %bb.ak ]
  %i.gw = and i64 %.pre-phi105.i, 8
  %i.gx = icmp eq i64 %i.gw, 0
  br i1 %i.gx, label %bb.aq, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.gy = getelementptr i8, ptr %.pre32, i64 4940
  %i.gz = load i32, ptr %i.gy, align 4
  %i.ha = and i32 %i.gz, 65536
  %.not.3.i = icmp eq i32 %i.ha, 0
  br i1 %.not.3.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.hb = load ptr, ptr %i.fu, align 8
  %i.hc = tail call i32 %i.hb(ptr noundef %i.cb, i32 1896448, i1 noundef zeroext true) #14, !inline_history !104
  %i.hd = getelementptr i8, ptr %i.i, i64 336
  store i32 %i.hc, ptr %i.hd, align 8
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao, %bb.an
  %i.he = load ptr, ptr %i.fu, align 8
  %i.hf = tail call i32 %i.he(ptr noundef %i.cb, i32 53096, i1 noundef zeroext true) #14, !inline_history !104
  %i.hg = getelementptr i8, ptr %i.i, i64 312
  store i32 %i.hf, ptr %i.hg, align 8
  br label %gt_record_global_regs.exit

gt_record_global_regs.exit:                       ; preds = %bb.aq, %bb.ae, %gt_record_global_nonguc_regs.exit
  %i.hh = phi ptr [ %.pre32, %bb.aq ], [ %.pre32, %bb.ae ], [ %0, %gt_record_global_nonguc_regs.exit ] ; 2 uses
  %i.hi = getelementptr i8, ptr %i.hh, i64 32
  %i.hj = load ptr, ptr %i.hi, align 8            ; 2 uses
  %i.hk = getelementptr i8, ptr %i.hh, i64 24
  %i.hl = load ptr, ptr %i.hk, align 8            ; 7 uses
  %i.hm = getelementptr i8, ptr %i.hl, i64 8
  %i.hn = load ptr, ptr %i.hm, align 8
  %i.ho = getelementptr i8, ptr %i.hn, i64 1656
  %i.hp = load i8, ptr %i.ho, align 8             ; 2 uses
  %i.hq = icmp ugt i8 %i.hp, 5
  br i1 %i.hq, label %.preheader.i22, label %bb.as

.preheader.i22:                                   ; preds = %gt_record_global_regs.exit
  %i.hr = getelementptr i8, ptr %i.hj, i64 828    ; 2 uses
  %i.hs = load i32, ptr %i.hr, align 4
  %.not42.i = icmp eq i32 %i.hs, 0
  br i1 %.not42.i, label %gt_record_fences.exit, label %.lr.ph39.i

.lr.ph39.i:                                       ; preds = %.preheader.i22
  %i.ht = getelementptr i8, ptr %i.hl, i64 152
  %i.hu = getelementptr i8, ptr %i.i, i64 344
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ar, %.lr.ph39.i
  %.038.i = phi i32 [ 0, %.lr.ph39.i ], [ %i.ib, %bb.ar ] ; 3 uses
  %i.hv = shl i32 %.038.i, 3
  %i.hw = add i32 %i.hv, 1048576
  %i.hx = load ptr, ptr %i.ht, align 8
  %i.hy = tail call i64 %i.hx(ptr noundef %i.hl, i32 %i.hw, i1 noundef zeroext true) #14, !inline_history !105
  %i.hz = sext i32 %.038.i to i64
  %i.ia = getelementptr [8 x i8], ptr %i.hu, i64 %i.hz
  store i64 %i.hy, ptr %i.ia, align 8
  %i.ib = add nuw i32 %.038.i, 1                  ; 3 uses
  %i.ic = load i32, ptr %i.hr, align 4
  %i.id = icmp ult i32 %i.ib, %i.ic
  br i1 %i.id, label %bb.ar, label %gt_record_fences.exit, !llvm.loop !106

bb.as:                                            ; preds = %gt_record_global_regs.exit
  %i.ie = icmp samesign ugt i8 %i.hp, 3
  %i.if = getelementptr i8, ptr %i.hj, i64 828    ; 3 uses
  %i.ig = load i32, ptr %i.if, align 4
  %.not41.i = icmp eq i32 %i.ig, 0                ; 2 uses
  br i1 %i.ie, label %.preheader30.i, label %.preheader32.i

.preheader32.i:                                   ; preds = %bb.as
  br i1 %.not41.i, label %gt_record_fences.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader32.i
  %i.ih = getelementptr i8, ptr %i.hl, i64 144
  %i.ii = getelementptr i8, ptr %i.i, i64 344
  br label %bb.au

.preheader30.i:                                   ; preds = %bb.as
  br i1 %.not41.i, label %gt_record_fences.exit, label %.lr.ph36.i

.lr.ph36.i:                                       ; preds = %.preheader30.i
  %i.ij = getelementptr i8, ptr %i.hl, i64 152
  %i.ik = getelementptr i8, ptr %i.i, i64 344
  br label %bb.at

bb.at:                                            ; preds = %bb.at, %.lr.ph36.i
  %.135.i = phi i32 [ 0, %.lr.ph36.i ], [ %i.ir, %bb.at ] ; 3 uses
  %i.il = shl i32 %.135.i, 3
  %i.im = add i32 %i.il, 12288
  %i.in = load ptr, ptr %i.ij, align 8
  %i.io = tail call i64 %i.in(ptr noundef %i.hl, i32 %i.im, i1 noundef zeroext true) #14, !inline_history !105
  %i.ip = sext i32 %.135.i to i64
  %i.iq = getelementptr [8 x i8], ptr %i.ik, i64 %i.ip
  store i64 %i.io, ptr %i.iq, align 8
  %i.ir = add nuw i32 %.135.i, 1                  ; 3 uses
  %i.is = load i32, ptr %i.if, align 4
  %i.it = icmp ult i32 %i.ir, %i.is
  br i1 %i.it, label %bb.at, label %gt_record_fences.exit, !llvm.loop !107

bb.au:                                            ; preds = %bb.au, %.lr.ph.i
  %.234.i = phi i32 [ 0, %.lr.ph.i ], [ %i.jf, %bb.au ] ; 4 uses
  %i.iu = shl i32 %.234.i, 9
  %i.iv = and i32 %i.iu, 4096
  %i.iw = shl i32 %.234.i, 2
  %i.ix = and i32 %i.iw, 28
  %i.iy = or disjoint i32 %i.iv, %i.ix
  %i.iz = or disjoint i32 %i.iy, 8192
  %i.ja = load ptr, ptr %i.ih, align 8
  %i.jb = tail call i32 %i.ja(ptr noundef %i.hl, i32 %i.iz, i1 noundef zeroext true) #14, !inline_history !108
  %i.jc = zext i32 %i.jb to i64
  %i.jd = sext i32 %.234.i to i64
  %i.je = getelementptr [8 x i8], ptr %i.ii, i64 %i.jd
  store i64 %i.jc, ptr %i.je, align 8
  %i.jf = add nuw i32 %.234.i, 1                  ; 3 uses
  %i.jg = load i32, ptr %i.if, align 4
  %i.jh = icmp ult i32 %i.jf, %i.jg
  br i1 %i.jh, label %bb.au, label %gt_record_fences.exit, !llvm.loop !109

gt_record_fences.exit:                            ; preds = %bb.au, %bb.at, %bb.ar, %.preheader.i22, %.preheader32.i, %.preheader30.i
  %.3.i = phi i32 [ %i.ib, %bb.ar ], [ %i.ir, %bb.at ], [ 0, %.preheader.i22 ], [ 0, %.preheader30.i ], [ 0, %.preheader32.i ], [ %i.jf, %bb.au ]
  %i.ji = getelementptr i8, ptr %i.i, i64 340
  store i32 %.3.i, ptr %i.ji, align 4
  br label %bb.av

bb.av:                                            ; preds = %_kzalloc_noprof.exit, %gt_record_fences.exit
  ret ptr %i.i
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local noundef ptr @i915_vma_capture_prepare(ptr nofree readnone captures(none) %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @kmalloc_caches, i64 72), align 8
  %i.b = tail call noalias align 8 dereferenceable_or_null(360) ptr @__kmalloc_cache_noprof(ptr noundef %i.a, i32 noundef 26624, i64 noundef 360) #16 ; 16 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %compress_init.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %i.b, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 1
  store i8 0, ptr %i.c, align 1
  %i.d = getelementptr i8, ptr %i.b, i64 2
  store i8 0, ptr %i.d, align 2
  %i.e = getelementptr i8, ptr %i.b, i64 8        ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.f = tail call ptr @folio_alloc_noprof(i32 noundef 26624, i32 noundef 0) #14 ; 2 uses
  %.not12.i.i.i = icmp eq ptr %i.f, null
  %.val.i.i.i.i = load i8, ptr %i.b, align 8      ; 3 uses
  br i1 %.not12.i.i.i, label %pool_refill.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = add i8 %.val.i.i.i.i, 1                  ; 2 uses
  store i8 %i.g, ptr %i.b, align 8
  %i.h = zext i8 %.val.i.i.i.i to i64
  %i.i = getelementptr [8 x i8], ptr %i.e, i64 %i.h
  store ptr %i.f, ptr %i.i, align 8
  %.not.i.i.i = icmp eq i8 %i.g, 31
  br i1 %.not.i.i.i, label %pool_init.exit.i, label %bb.c

pool_refill.exit.i.i:                             ; preds = %bb.c
  %.not.i.i.i.i = icmp eq i8 %.val.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %bb.j, label %.sink.split

pool_init.exit.i:                                 ; preds = %bb.d
  %i.j = tail call i32 @zlib_deflate_workspacesize(i32 noundef 15, i32 noundef 8) #14
  %i.k = sext i32 %i.j to i64
  %i.l = tail call noalias align 8 ptr @__kmalloc_noprof(i64 noundef %i.k, i32 noundef 26624) #17 ; 2 uses
  %i.m = getelementptr i8, ptr %i.b, i64 320
  store ptr %i.l, ptr %i.m, align 8
  %.not13.i = icmp eq ptr %i.l, null
  br i1 %.not13.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %pool_init.exit.i
  %.val.i.i.i = load i8, ptr %i.b, align 8
  %.not.i.i16.i = icmp eq i8 %.val.i.i.i, 0
  br i1 %.not.i.i16.i, label %bb.j, label %.sink.split

bb.f:                                             ; preds = %pool_init.exit.i
  %i.n = getelementptr i8, ptr %i.b, i64 352      ; 2 uses
  store ptr null, ptr %i.n, align 8
  %i.o = tail call zeroext i1 @i915_memcpy_from_wc(ptr noundef null, ptr noundef null, i64 noundef 0) #14
  br i1 %i.o, label %bb.g, label %compress_init.exit

bb.g:                                             ; preds = %bb.f
  %i.p = tail call ptr @folio_alloc_noprof(i32 noundef 26624, i32 noundef 0) #14 ; 2 uses
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %bb.h, label %.thread15.i.i

bb.h:                                             ; preds = %bb.g
  %.val.i.i = load i8, ptr %i.b, align 8          ; 2 uses
  %.not11.i.i = icmp eq i8 %.val.i.i, 0
  br i1 %.not11.i.i, label %pool_alloc.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = add i8 %.val.i.i, -1                     ; 2 uses
  store i8 %i.q, ptr %i.b, align 8
  %i.r = zext i8 %i.q to i64
  %i.s = getelementptr [8 x i8], ptr %i.e, i64 %i.r
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %.not12.i.i = icmp eq ptr %i.t, null
  br i1 %.not12.i.i, label %pool_alloc.exit.i, label %.thread15.i.i

.thread15.i.i:                                    ; preds = %bb.i, %bb.g
  %.018.i.i = phi ptr [ %i.t, %bb.i ], [ %i.p, %bb.g ]
  %i.u = load i64, ptr @vmemmap_base, align 8
  %i.v = ptrtoint ptr %.018.i.i to i64
  %i.w = sub i64 %i.v, %i.u
  %i.x = shl i64 %i.w, 6
  %i.y = load i64, ptr @page_offset_base, align 8
  %i.z = add i64 %i.x, %i.y
  %i.aa = inttoptr i64 %i.z to ptr
  br label %pool_alloc.exit.i

pool_alloc.exit.i:                                ; preds = %.thread15.i.i, %bb.i, %bb.h
  %i.ab = phi ptr [ %i.aa, %.thread15.i.i ], [ null, %bb.i ], [ null, %bb.h ]
  store ptr %i.ab, ptr %i.n, align 8
  br label %compress_init.exit

.sink.split:                                      ; preds = %bb.e, %pool_refill.exit.i.i
  tail call void @__folio_batch_release(ptr noundef nonnull %i.b) #14
  br label %bb.j

bb.j:                                             ; preds = %.sink.split, %bb.e, %pool_refill.exit.i.i
  tail call void @kfree(ptr noundef nonnull %i.b) #14
  br label %compress_init.exit
end_hunk_0
