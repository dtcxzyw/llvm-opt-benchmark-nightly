Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/i915_cmd_parser?download=true
inline.NumInlined: 65
inline.NumDeleted: 44
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@intel_engine_cmd_parser:bb.a

bb.b:                                             ; preds = %bb.a
  %i.k = sext i32 %i.j to i64
  %i.l = inttoptr i64 %i.k to ptr
  br label %copy_batch.exit

bb.c:                                             ; preds = %bb.a
  %i.m = call ptr @i915_gem_object_pin_map(ptr noundef %i.g, i32 noundef 0) #9 ; 7 uses
  %i.n = getelementptr i8, ptr %i.g, i64 688      ; 4 uses
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock decl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.n, ptr elementtype(i32) %i.n) #8, !srcloc !26
  %i.o = icmp ugt ptr %i.m, inttoptr (i64 -4096 to ptr)
  br i1 %i.o, label %copy_batch.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = call i32 @i915_gem_object_prepare_read(ptr noundef %i.i, ptr noundef nonnull %i.a) #9 ; 2 uses
  %.not62.i = icmp eq i32 %i.p, 0
  br i1 %.not62.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock decl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.n, ptr elementtype(i32) %i.n) #8, !srcloc !26
  %i.q = sext i32 %i.p to i64
  %i.r = inttoptr i64 %i.q to ptr
  br label %copy_batch.exit

bb.f:                                             ; preds = %bb.d
  %i.s = load i32, ptr %i.a, align 4
  %.not63.i = icmp eq i32 %i.s, 0
  br i1 %.not63.i, label %.thread.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = call zeroext i1 @i915_memcpy_from_wc(ptr noundef null, ptr noundef null, i64 noundef 0) #9
  br i1 %i.t, label %bb.h, label %.thread.i

bb.h:                                             ; preds = %bb.g
  %i.u = call ptr @i915_gem_object_pin_map(ptr noundef %i.i, i32 noundef 1) #9 ; 2 uses
  %i.v = icmp ugt ptr %i.u, inttoptr (i64 -4096 to ptr)
  br i1 %i.v, label %.thread.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = getelementptr i8, ptr %i.u, i64 %2
  call void @i915_unaligned_memcpy_from_wc(ptr noundef %i.m, ptr noundef %i.w, i64 noundef %3) #9
  %i.x = getelementptr i8, ptr %i.i, i64 688      ; 2 uses
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock decl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.x, ptr elementtype(i32) %i.x) #8, !srcloc !26
  br label %.loopexit.i

.thread.i:                                        ; preds = %bb.h, %bb.g, %bb.f
  %i.y = load i32, ptr %i.b, align 4
  %i.z = and i32 %i.y, 1
  %.not64.i = icmp eq i32 %i.z, 0
  br i1 %.not64.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.thread.i
  %i.aa = add i64 %3, -1
  %i.ab = load i16, ptr getelementptr inbounds nuw (i8, ptr @boot_cpu_data, i64 360), align 8
  %i.ac = zext i16 %i.ab to i64
  %i.ad = add nsw i64 %i.ac, -1
  %i.ae = or i64 %i.ad, %i.aa
  %i.af = add i64 %i.ae, 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.thread.i
  %.057.i = phi i64 [ %i.af, %bb.j ], [ %3, %.thread.i ] ; 3 uses
  %i.ag = and i64 %2, 4095                        ; 3 uses
  %i.ah = lshr i64 %2, 12                         ; 2 uses
  %.not6568.i = icmp eq i64 %.057.i, 0
  br i1 %.not6568.i, label %.loopexit.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.k
  %i.ai = sub nuw nsw i64 4096, %i.ag
  %i.aj = call i64 @llvm.umin.i64(i64 %.057.i, i64 %i.ai) ; 4 uses
  %i.ak = call ptr @__i915_gem_object_get_page(ptr noundef %i.i, i64 noundef %i.ah) #9
  %i.al = load i64, ptr @vmemmap_base, align 8
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = sub i64 %i.am, %i.al
  %i.ao = shl i64 %i.an, 6
  %i.ap = load i64, ptr @page_offset_base, align 8
  %i.aq = add i64 %i.ao, %i.ap
  %i.ar = inttoptr i64 %i.aq to ptr               ; 2 uses
  %i.as = load i32, ptr %i.a, align 4
  %.not66.peel.i = icmp eq i32 %i.as, 0
  br i1 %.not66.peel.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph.preheader.i
  %i.at = getelementptr i8, ptr %i.ar, i64 %i.ag
  call void @drm_clflush_virt_range(ptr noundef %i.at, i64 noundef %i.aj) #9
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph.preheader.i
  %i.au = getelementptr i8, ptr %i.ar, i64 %i.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 %i.m, ptr noundef align 1 %i.au, i64 %i.aj, i1 false)
  %i.av = sub i64 %.057.i, %i.aj                  ; 2 uses
  %.not65.peel.i = icmp eq i64 %i.av, 0
  br i1 %.not65.peel.i, label %.loopexit.i, label %.lr.ph.peel.next.i

.lr.ph.peel.next.i:                               ; preds = %bb.m
  %i.aw = getelementptr i8, ptr %i.m, i64 %i.aj
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.o, %.lr.ph.peel.next.i
  %.05672.i = phi ptr [ %i.bh, %bb.o ], [ %i.aw, %.lr.ph.peel.next.i ] ; 2 uses
  %.171.i = phi i64 [ %i.bi, %bb.o ], [ %i.av, %.lr.ph.peel.next.i ] ; 2 uses
  %.05870.in.i = phi i64 [ %.05870.i, %bb.o ], [ %i.ah, %.lr.ph.peel.next.i ]
  %.05870.i = add i64 %.05870.in.i, 1             ; 2 uses
  %i.ax = call i64 @llvm.umin.i64(i64 %.171.i, i64 4096) ; 4 uses
  %i.ay = call ptr @__i915_gem_object_get_page(ptr noundef %i.i, i64 noundef %.05870.i) #9
  %i.az = load i64, ptr @vmemmap_base, align 8
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.ba, %i.az
  %i.bc = shl i64 %i.bb, 6
  %i.bd = load i64, ptr @page_offset_base, align 8
  %i.be = add i64 %i.bc, %i.bd
  %i.bf = inttoptr i64 %i.be to ptr               ; 2 uses
  %i.bg = load i32, ptr %i.a, align 4
  %.not66.i = icmp eq i32 %i.bg, 0
  br i1 %.not66.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i
  call void @drm_clflush_virt_range(ptr noundef %i.bf, i64 noundef %i.ax) #9
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.lr.ph.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 %.05672.i, ptr noundef align 1 %i.bf, i64 %i.ax, i1 false)
  %i.bh = getelementptr i8, ptr %.05672.i, i64 %i.ax
  %i.bi = sub nuw i64 %.171.i, %i.ax              ; 2 uses
  %.not65.i = icmp eq i64 %i.bi, 0
  br i1 %.not65.i, label %.loopexit.i, label %.lr.ph.i, !llvm.loop !20

.loopexit.i:                                      ; preds = %bb.o, %bb.m, %bb.k, %bb.i
  %i.bj = getelementptr i8, ptr %i.i, i64 688     ; 2 uses
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock decl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.bj, ptr elementtype(i32) %i.bj) #8, !srcloc !26
  %i.bk = getelementptr i8, ptr %i.m, i64 %3
  %i.bl = getelementptr i8, ptr %i.g, i64 216
  %i.bm = load i64, ptr %i.bl, align 8
  %i.bn = sub i64 %i.bm, %3
  %i.bo = lshr i64 %i.bn, 2
  %i.bp = call { ptr, i64 } asm sideeffect "rep stosl", "={di},={cx},{ax},0,1,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 0, ptr %i.bk, i64 range(i64 0, 4611686018427387904) %i.bo) #8, !srcloc !28 ; 0 uses
  br label %copy_batch.exit

copy_batch.exit:                                  ; preds = %bb.b, %bb.c, %bb.e, %.loopexit.i
  %.0.i = phi ptr [ %i.l, %bb.b ], [ %i.m, %.loopexit.i ], [ %i.r, %bb.e ], [ %i.m, %bb.c ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  %i.bq = icmp ugt ptr %.0.i, inttoptr (i64 -4096 to ptr)
  br i1 %i.bq, label %bb.p, label %bb.q

bb.p:                                             ; preds = %copy_batch.exit
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef @.str.6) #9
  %i.br = ptrtoint ptr %.0.i to i64
  %i.bs = trunc i64 %i.br to i32
  br label %bb.by

bb.q:                                             ; preds = %copy_batch.exit
  br i1 %5, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bt = and i64 %3, 4294967295
  %i.bu = add nuw nsw i64 %i.bt, 3
  %i.bv = lshr i64 %i.bu, 2
  %i.bw = trunc nuw nsw i64 %i.bv to i32
  %i.bx = call ptr @bitmap_zalloc(i32 noundef %i.bw, i32 noundef 27840) #9 ; 2 uses
  %.not.i106 = icmp eq ptr %i.bx, null
  %spec.select.i107 = select i1 %.not.i106, ptr inttoptr (i64 -12 to ptr), ptr %i.bx
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.083 = phi ptr [ null, %bb.q ], [ %spec.select.i107, %bb.r ] ; 6 uses
  %i.by = getelementptr i8, ptr %4, i64 8
  %.val101 = load i64, ptr %i.by, align 8
  %i.bz = getelementptr i8, ptr %4, i64 248
  %.val102 = load i32, ptr %i.bz, align 8
  %i.ca = zext i32 %.val102 to i64
  %i.cb = add i64 %.val101, %i.ca
  %i.cc = shl i64 %i.cb, 16
  %i.cd = ashr exact i64 %i.cc, 16
  %i.ce = getelementptr i8, ptr %1, i64 8
  %.val = load i64, ptr %i.ce, align 8
  %i.cf = getelementptr i8, ptr %1, i64 248
  %.val100 = load i32, ptr %i.cf, align 8
  %i.cg = zext i32 %.val100 to i64
  %i.ch = add i64 %.val, %2
  %i.ci = add i64 %i.ch, %i.cg                    ; 2 uses
  %i.cj = shl i64 %i.ci, 16
  %i.ck = ashr exact i64 %i.cj, 16
  %i.cl = lshr i64 %3, 2
  %i.cm = getelementptr [4 x i8], ptr %.0.i, i64 %i.cl ; 5 uses
  %i.cn = getelementptr i8, ptr %0, i64 1248
  %i.co = getelementptr i8, ptr %0, i64 5360
  %i.cp = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.cq = ptrtoint ptr %i.cm to i64
  %i.cr = getelementptr i8, ptr %0, i64 5344
  %i.cs = getelementptr i8, ptr %0, i64 5352
  %.not.i98 = icmp eq ptr %.083, null             ; 2 uses
  %i.ct = icmp ugt ptr %.083, inttoptr (i64 -4096 to ptr) ; 2 uses
  %spec.select.i99 = or i1 %.not.i98, %i.ct       ; 2 uses
  br label %check_cmd.exit

check_cmd.exit:                                   ; preds = %bb.bq, %bb.s
  %.086 = phi i32 [ 0, %bb.s ], [ %i.jp, %bb.bq ] ; 3 uses
  %.084 = phi ptr [ %6, %bb.s ], [ %.0.i108116, %bb.bq ] ; 3 uses
  %.078 = phi ptr [ %.0.i, %bb.s ], [ %i.jo, %bb.bq ] ; 20 uses
  %i.cu = load i32, ptr %.078, align 4            ; 8 uses
  %i.cv = icmp eq i32 %i.cu, 83886080
  br i1 %i.cv, label %.loopexit, label %bb.t

bb.t:                                             ; preds = %check_cmd.exit
  %i.cw = getelementptr i8, ptr %.084, i64 4
  %i.cx = load i32, ptr %i.cw, align 4            ; 2 uses
  %i.cy = xor i32 %i.cx, %i.cu
  %i.cz = getelementptr i8, ptr %.084, i64 8
  %i.da = load i32, ptr %i.cz, align 4            ; 2 uses
  %i.db = and i32 %i.cy, %i.da
  %i.dc = icmp eq i32 %i.db, 0
  br i1 %i.dc, label %find_cmd.exit.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dd = lshr i32 %i.cu, 29                      ; 2 uses
  %switch.selectcmp.i.i.i = icmp eq i32 %i.dd, 3
  %switch.select.i.i.i = select i1 %switch.selectcmp.i.i.i, i32 16, i32 23
  %switch.selectcmp5.i.i.i = icmp eq i32 %i.dd, 2
  %switch.select6.i.i.i = select i1 %switch.selectcmp5.i.i.i, i32 22, i32 %switch.select.i.i.i
  %i.de = lshr i32 %i.cu, %switch.select6.i.i.i
  %i.df = mul i32 %i.de, 1640531527
  %i.dg = lshr i32 %i.df, 23
  %i.dh = zext nneg i32 %i.dg to i64
  %i.di = getelementptr [8 x i8], ptr %i.cn, i64 %i.dh
  %i.dj = load ptr, ptr %i.di, align 8            ; 2 uses
  %.not.i.i = icmp eq ptr %i.dj, null
  %i.dk = getelementptr i8, ptr %i.dj, i64 -8     ; 2 uses
  %.not243033.i.i = icmp eq ptr %i.dk, null
  %.not2430.i.i = or i1 %.not.i.i, %.not243033.i.i
  br i1 %.not2430.i.i, label %find_cmd_in_table.exit.thread.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.u, %select.unfold.i.i
  %.02031.i.i = phi ptr [ %i.du, %select.unfold.i.i ], [ %i.dk, %bb.u ] ; 2 uses
  %i.dl = load ptr, ptr %.02031.i.i, align 8      ; 4 uses
  %i.dm = getelementptr i8, ptr %i.dl, i64 4
  %i.dn = load i32, ptr %i.dm, align 4            ; 2 uses
  %i.do = xor i32 %i.dn, %i.cu
  %i.dp = getelementptr i8, ptr %i.dl, i64 8
  %i.dq = load i32, ptr %i.dp, align 4            ; 2 uses
  %i.dr = and i32 %i.do, %i.dq
  %.not25.i.i = icmp eq i32 %i.dr, 0
  br i1 %.not25.i.i, label %find_cmd_in_table.exit.i, label %select.unfold.i.i

select.unfold.i.i:                                ; preds = %.lr.ph.i.i
  %i.ds = getelementptr i8, ptr %.02031.i.i, i64 8
  %i.dt = load ptr, ptr %i.ds, align 8            ; 2 uses
  %.not26.i.i = icmp eq ptr %i.dt, null
  %i.du = getelementptr i8, ptr %i.dt, i64 -8     ; 2 uses
  %.not2434.i.i = icmp eq ptr %i.du, null
  %.not24.i.i = or i1 %.not26.i.i, %.not2434.i.i
  br i1 %.not24.i.i, label %find_cmd_in_table.exit.thread.i, label %.lr.ph.i.i

find_cmd_in_table.exit.i:                         ; preds = %.lr.ph.i.i
  %.not.i109 = icmp eq ptr %i.dl, null
  br i1 %.not.i109, label %find_cmd_in_table.exit.thread.i, label %find_cmd.exit.thread

find_cmd_in_table.exit.thread.i:                  ; preds = %select.unfold.i.i, %find_cmd_in_table.exit.i, %bb.u
  %i.dv = load ptr, ptr %i.co, align 8
  %i.dw = call i32 %i.dv(i32 noundef range(i32 83886081, 83886080) %i.cu) #9, !inline_history !21 ; 2 uses
  %.not20.i = icmp eq i32 %i.dw, 0
  br i1 %.not20.i, label %find_cmd.exit.thread117, label %bb.v

bb.v:                                             ; preds = %find_cmd_in_table.exit.thread.i
  store i32 %i.cu, ptr %i.cp, align 4
  store i32 -65536, ptr %i.d, align 4
  store i32 %i.dw, ptr %i.e, align 4
  store i32 2, ptr %6, align 4
  br label %find_cmd.exit.thread

find_cmd.exit.thread117:                          ; preds = %find_cmd_in_table.exit.thread.i
  %i.dx = load i32, ptr %.078, align 4
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef @.str.7, i32 noundef %i.dx) #9
  br label %.loopexit

find_cmd.exit.thread:                             ; preds = %bb.t, %bb.v, %find_cmd_in_table.exit.i
  %.val104 = phi i32 [ %i.dq, %find_cmd_in_table.exit.i ], [ -65536, %bb.v ], [ %i.da, %bb.t ] ; 4 uses
  %.val103 = phi i32 [ %i.dn, %find_cmd_in_table.exit.i ], [ %i.cu, %bb.v ], [ %i.cx, %bb.t ] ; 4 uses
  %.0.i108116 = phi ptr [ %i.dl, %find_cmd_in_table.exit.i ], [ %6, %bb.v ], [ %.084, %bb.t ] ; 22 uses
  %i.dy = load i32, ptr %.0.i108116, align 4      ; 5 uses
  %i.dz = and i32 %i.dy, 1
  %.not95 = icmp eq i32 %i.dz, 0
  br i1 %.not95, label %bb.x, label %bb.w

bb.w:                                             ; preds = %find_cmd.exit.thread
  %i.ea = getelementptr i8, ptr %.0.i108116, i64 12
  %i.eb = load i32, ptr %i.ea, align 4
  br label %bb.y

bb.x:                                             ; preds = %find_cmd.exit.thread
  %i.ec = load i32, ptr %.078, align 4
  %i.ed = getelementptr i8, ptr %.0.i108116, i64 12
  %i.ee = load i32, ptr %i.ed, align 4
  %i.ef = and i32 %i.ee, %i.ec
  %i.eg = add i32 %i.ef, 2
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.079 = phi i32 [ %i.eb, %bb.w ], [ %i.eg, %bb.x ] ; 12 uses
  %i.eh = ptrtoint ptr %.078 to i64
  %i.ei = sub i64 %i.cq, %i.eh
  %i.ej = ashr exact i64 %i.ei, 2                 ; 2 uses
  %i.ek = zext i32 %.079 to i64                   ; 2 uses
  %i.el = icmp slt i64 %i.ej, %i.ek
  br i1 %i.el, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.em = load i32, ptr %.078, align 4
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef @.str.8, i32 noundef %i.em, i32 noundef %.079, i64 noundef %i.ej) #9
  br label %.loopexit

bb.aa:                                            ; preds = %bb.y
  %i.en = and i32 %i.dy, 2
  %.not.i110 = icmp eq i32 %i.en, 0
  br i1 %.not.i110, label %bb.ab, label %bb.bd

bb.ab:                                            ; preds = %bb.aa
  %i.eo = and i32 %i.dy, 4
  %.not88.i = icmp eq i32 %i.eo, 0
  br i1 %.not88.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ep = load i32, ptr %.078, align 4
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef @.str.29, i32 noundef %i.ep) #9
  br label %.loopexit

bb.ad:                                            ; preds = %bb.ab
  %i.eq = and i32 %i.dy, 8
  %.not89.i = icmp eq i32 %i.eq, 0
  br i1 %.not89.i, label %.critedge.thread.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.er = getelementptr i8, ptr %.0.i108116, i64 16
  %i.es = getelementptr i8, ptr %.0.i108116, i64 24
  %i.et = load i32, ptr %i.es, align 4            ; 2 uses
  %.not90.i = icmp eq i32 %i.et, 0
  %..i = select i1 %.not90.i, i32 %.079, i32 %i.et
  %i.eu = load i32, ptr %i.er, align 4            ; 3 uses
  %i.ev = icmp ult i32 %i.eu, %.079
  br i1 %i.ev, label %.lr.ph.i111, label %.critedge.thread.i

.lr.ph.i111:                                      ; preds = %bb.ae
  %i.ew = getelementptr i8, ptr %.0.i108116, i64 20
  %i.ex = load i32, ptr %i.ew, align 4            ; 2 uses
  %.val.i = load ptr, ptr %i.cr, align 8
  %.val100.i = load i32, ptr %i.cs, align 8       ; 2 uses
  %i.ey = icmp sgt i32 %.val100.i, 0
  br i1 %i.ey, label %.lr.ph.i.preheader.us.i.preheader, label %.lr.ph.split.i

.lr.ph.i.preheader.us.i.preheader:                ; preds = %.lr.ph.i111
  %7 = and i32 %.val104, 343932929
  %8 = icmp eq i32 %.val103, %7
  %9 = and i32 %.val104, 352321537
  %10 = icmp eq i32 %.val103, %9
  %11 = and i32 %.val104, 285212673
  %12 = icmp eq i32 %.val103, %11
  br label %.lr.ph.i.preheader.us.i

.lr.ph.i.preheader.us.i:                          ; preds = %.lr.ph.i.preheader.us.i.preheader, %bb.ao
  %.075124.us.i = phi i32 [ %i.gg, %bb.ao ], [ %i.eu, %.lr.ph.i.preheader.us.i.preheader ] ; 4 uses
  %i.ez = zext i32 %.075124.us.i to i64
  %i.fa = getelementptr [4 x i8], ptr %.078, i64 %i.ez
  %i.fb = load i32, ptr %i.fa, align 4
  %i.fc = and i32 %i.fb, %i.ex                    ; 6 uses
  br label %.lr.ph.i.us.i

.lr.ph.i.us.i:                                    ; preds = %__find_reg.exit.i.us.i, %.lr.ph.i.preheader.us.i
  %.02.i.us.i = phi i32 [ %i.fs, %__find_reg.exit.i.us.i ], [ %.val100.i, %.lr.ph.i.preheader.us.i ] ; 2 uses
  %.0101.i.us.i = phi ptr [ %i.fr, %__find_reg.exit.i.us.i ], [ %.val.i, %.lr.ph.i.preheader.us.i ] ; 3 uses
  %i.fd = load ptr, ptr %.0101.i.us.i, align 8
  %i.fe = getelementptr i8, ptr %.0101.i.us.i, i64 8
  %i.ff = load i32, ptr %i.fe, align 8            ; 2 uses
  %i.fg = icmp sgt i32 %i.ff, 0
  br i1 %i.fg, label %.lr.ph.i.i.us.i, label %__find_reg.exit.i.us.i

.lr.ph.i.i.us.i:                                  ; preds = %.lr.ph.i.us.i, %bb.ah
  %.01629.i.i.us.i = phi i32 [ %.2.i.i.us.i, %bb.ah ], [ %i.ff, %.lr.ph.i.us.i ] ; 2 uses
  %.01728.i.i.us.i = phi i32 [ %.219.i.i.us.i, %bb.ah ], [ 0, %.lr.ph.i.us.i ] ; 3 uses
  %i.fh = sub i32 %.01629.i.i.us.i, %.01728.i.i.us.i
  %i.fi = sdiv i32 %i.fh, 2
  %i.fj = add i32 %i.fi, %.01728.i.i.us.i         ; 3 uses
  %i.fk = sext i32 %i.fj to i64
  %i.fl = getelementptr [12 x i8], ptr %i.fd, i64 %i.fk ; 2 uses
  %i.fm = load i32, ptr %i.fl, align 4            ; 2 uses
  %i.fn = sub i32 %i.fc, %i.fm
  %i.fo = icmp slt i32 %i.fn, 0
  br i1 %i.fo, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %.lr.ph.i.i.us.i
  %.not.i.i.us.i = icmp eq i32 %i.fc, %i.fm
  br i1 %.not.i.i.us.i, label %__find_reg.exit.i.us.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fp = add i32 %i.fj, 1
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %.lr.ph.i.i.us.i
  %.219.i.i.us.i = phi i32 [ %.01728.i.i.us.i, %.lr.ph.i.i.us.i ], [ %i.fp, %bb.ag ] ; 2 uses
  %.2.i.i.us.i = phi i32 [ %i.fj, %.lr.ph.i.i.us.i ], [ %.01629.i.i.us.i, %bb.ag ] ; 2 uses
  %i.fq = icmp slt i32 %.219.i.i.us.i, %.2.i.i.us.i
  br i1 %i.fq, label %.lr.ph.i.i.us.i, label %__find_reg.exit.i.us.i, !llvm.loop !22

__find_reg.exit.i.us.i:                           ; preds = %bb.ah, %bb.af, %.lr.ph.i.us.i
  %.222.i.i.us.i = phi ptr [ null, %.lr.ph.i.us.i ], [ null, %bb.ah ], [ %i.fl, %bb.af ] ; 3 uses
  %i.fr = getelementptr i8, ptr %.0101.i.us.i, i64 16
  %i.fs = add nsw i32 %.02.i.us.i, -1
  %.not.i.us.i = icmp eq ptr %.222.i.i.us.i, null ; 2 uses
  %i.ft = icmp sgt i32 %.02.i.us.i, 1
  %i.fu = select i1 %.not.i.us.i, i1 %i.ft, i1 false
  br i1 %i.fu, label %.lr.ph.i.us.i, label %find_reg.exit.us.i, !llvm.loop !23

find_reg.exit.us.i:                               ; preds = %__find_reg.exit.i.us.i
  br i1 %.not.i.us.i, label %find_reg.exit.thread.i, label %bb.ai

bb.ai:                                            ; preds = %find_reg.exit.us.i
  %i.fv = getelementptr i8, ptr %.222.i.i.us.i, i64 4
  %i.fw = load i32, ptr %i.fv, align 4            ; 2 uses
  %.not92.us.i = icmp eq i32 %i.fw, 0
  br i1 %.not92.us.i, label %bb.ao, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  br i1 %8, label %.split.us.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  br i1 %10, label %.split127.us.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  br i1 %12, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %bb.al
  %i.fx = add i32 %.075124.us.i, 2
  %i.fy = icmp ugt i32 %i.fx, %.079
  br i1 %i.fy, label %.split130.us.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fz = add nuw i32 %.075124.us.i, 1
  %i.ga = zext i32 %i.fz to i64
  %i.gb = getelementptr [4 x i8], ptr %.078, i64 %i.ga
  %i.gc = load i32, ptr %i.gb, align 4
  %i.gd = and i32 %i.gc, %i.fw
  %i.ge = getelementptr i8, ptr %.222.i.i.us.i, i64 8
  %i.gf = load i32, ptr %i.ge, align 4
  %.not93.us.i = icmp eq i32 %i.gd, %i.gf
  br i1 %.not93.us.i, label %bb.ao, label %.split130.us.i

bb.ao:                                            ; preds = %bb.an, %bb.al, %bb.ai
  %i.gg = add i32 %.075124.us.i, %..i             ; 2 uses
  %i.gh = icmp ult i32 %i.gg, %.079
  br i1 %i.gh, label %.lr.ph.i.preheader.us.i, label %.critedge.thread.i, !llvm.loop !24

.lr.ph.split.i:                                   ; preds = %.lr.ph.i111
  %i.gi = zext i32 %i.eu to i64
  %i.gj = getelementptr [4 x i8], ptr %.078, i64 %i.gi
  %i.gk = load i32, ptr %i.gj, align 4
  %i.gl = and i32 %i.gk, %i.ex
  br label %find_reg.exit.thread.i

find_reg.exit.thread.i:                           ; preds = %find_reg.exit.us.i, %.lr.ph.split.i
  %.us-phi.i = phi i32 [ %i.gl, %.lr.ph.split.i ], [ %i.fc, %find_reg.exit.us.i ]
  %i.gm = load i32, ptr %.078, align 4
  %i.gn = getelementptr i8, ptr %0, i64 24
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef @.str.30, i32 noundef %.us-phi.i, i32 noundef %i.gm, ptr noundef %i.gn) #9
  br label %.loopexit

.split.us.i:                                      ; preds = %bb.aj
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef @.str.31, i32 noundef %i.fc) #9
  br label %.loopexit

.split127.us.i:                                   ; preds = %bb.ak
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef @.str.32, i32 noundef %i.fc) #9
  br label %.loopexit

.split130.us.i:                                   ; preds = %bb.an, %bb.am
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef @.str.33, i32 noundef %i.fc) #9
  br label %.loopexit

.critedge.thread.i:                               ; preds = %bb.ao, %bb.ae, %bb.ad
  %i.go = and i32 %i.dy, 16
  %.not94.i = icmp eq i32 %i.go, 0
  br i1 %.not94.i, label %bb.bd, label %.preheader.i

.preheader.i:                                     ; preds = %.critedge.thread.i
  %i.gp = getelementptr i8, ptr %.0.i108116, i64 28
  %i.gq = getelementptr i8, ptr %.0.i108116, i64 32
  %i.gr = load i32, ptr %i.gq, align 4            ; 3 uses
  %i.gs = icmp eq i32 %i.gr, 0
  br i1 %i.gs, label %bb.bd, label %bb.ap

bb.ap:                                            ; preds = %.preheader.i
  %i.gt = getelementptr i8, ptr %.0.i108116, i64 44
  %i.gu = load i32, ptr %i.gt, align 4            ; 2 uses
  %.not95.i = icmp eq i32 %i.gu, 0
  br i1 %.not95.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.gv = getelementptr i8, ptr %.0.i108116, i64 40
  %i.gw = load i32, ptr %i.gv, align 4
  %i.gx = zext i32 %i.gw to i64
  %i.gy = getelementptr [4 x i8], ptr %.078, i64 %i.gx
  %i.gz = load i32, ptr %i.gy, align 4
  %i.ha = and i32 %i.gz, %i.gu
  %.not96.i = icmp eq i32 %i.ha, 0
  br i1 %.not96.i, label %.thread110.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.hb = load i32, ptr %i.gp, align 4            ; 2 uses
  %.not97.i = icmp ult i32 %i.hb, %.079
  br i1 %.not97.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.bb, %bb.ax, %bb.ar
  %i.hc = load i32, ptr %.078, align 4
  %i.hd = getelementptr i8, ptr %0, i64 24
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef @.str.34, i32 noundef %i.hc, ptr noundef %i.hd) #9
  br label %.loopexit

bb.at:                                            ; preds = %bb.ar
  %i.he = zext i32 %i.hb to i64
  %i.hf = getelementptr [4 x i8], ptr %.078, i64 %i.he
  %i.hg = load i32, ptr %i.hf, align 4
  %i.hh = and i32 %i.hg, %i.gr                    ; 2 uses
  %i.hi = getelementptr i8, ptr %.0.i108116, i64 36
  %i.hj = load i32, ptr %i.hi, align 4            ; 2 uses
  %.not98.i = icmp eq i32 %i.hh, %i.hj
  br i1 %.not98.i, label %.thread110.i, label %bb.au

bb.au:                                            ; preds = %bb.bc, %bb.ay, %bb.at
  %.lcssa136.i = phi i32 [ %i.gr, %bb.at ], [ %i.ho, %bb.ay ], [ %i.ih, %bb.bc ]
  %.lcssa133.i = phi i32 [ %i.hh, %bb.at ], [ %i.ic, %bb.ay ], [ %i.iv, %bb.bc ]
  %.lcssa.i = phi i32 [ %i.hj, %bb.at ], [ %i.ie, %bb.ay ], [ %i.ix, %bb.bc ]
  %i.hk = load i32, ptr %.078, align 4
  %i.hl = getelementptr i8, ptr %0, i64 24
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef @.str.35, i32 noundef %i.hk, i32 noundef %.lcssa136.i, i32 noundef %.lcssa.i, i32 noundef %.lcssa133.i, ptr noundef %i.hl) #9
  br label %.loopexit

.thread110.i:                                     ; preds = %bb.at, %bb.aq
  %i.hm = getelementptr i8, ptr %.0.i108116, i64 48
  %i.hn = getelementptr i8, ptr %.0.i108116, i64 52
  %i.ho = load i32, ptr %i.hn, align 4            ; 3 uses
  %i.hp = icmp eq i32 %i.ho, 0
  br i1 %i.hp, label %bb.bd, label %bb.av

bb.av:                                            ; preds = %.thread110.i
  %i.hq = getelementptr i8, ptr %.0.i108116, i64 64
  %i.hr = load i32, ptr %i.hq, align 4            ; 2 uses
  %.not95.1.i = icmp eq i32 %i.hr, 0
  br i1 %.not95.1.i, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.hs = getelementptr i8, ptr %.0.i108116, i64 60
  %i.ht = load i32, ptr %i.hs, align 4
  %i.hu = zext i32 %i.ht to i64
  %i.hv = getelementptr [4 x i8], ptr %.078, i64 %i.hu
  %i.hw = load i32, ptr %i.hv, align 4
  %i.hx = and i32 %i.hw, %i.hr
  %.not96.1.i = icmp eq i32 %i.hx, 0
  br i1 %.not96.1.i, label %.thread110.1.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.hy = load i32, ptr %i.hm, align 4            ; 2 uses
  %.not97.1.i = icmp ult i32 %i.hy, %.079
  br i1 %.not97.1.i, label %bb.ay, label %bb.as

bb.ay:                                            ; preds = %bb.ax
  %i.hz = zext i32 %i.hy to i64
  %i.ia = getelementptr [4 x i8], ptr %.078, i64 %i.hz
  %i.ib = load i32, ptr %i.ia, align 4
  %i.ic = and i32 %i.ib, %i.ho                    ; 2 uses
  %i.id = getelementptr i8, ptr %.0.i108116, i64 56
  %i.ie = load i32, ptr %i.id, align 4            ; 2 uses
  %.not98.1.i = icmp eq i32 %i.ic, %i.ie
  br i1 %.not98.1.i, label %.thread110.1.i, label %bb.au

.thread110.1.i:                                   ; preds = %bb.ay, %bb.aw
  %i.if = getelementptr i8, ptr %.0.i108116, i64 68
  %i.ig = getelementptr i8, ptr %.0.i108116, i64 72
  %i.ih = load i32, ptr %i.ig, align 4            ; 3 uses
  %i.ii = icmp eq i32 %i.ih, 0
  br i1 %i.ii, label %bb.bd, label %bb.az

bb.az:                                            ; preds = %.thread110.1.i
  %i.ij = getelementptr i8, ptr %.0.i108116, i64 84
  %i.ik = load i32, ptr %i.ij, align 4            ; 2 uses
  %.not95.2.i = icmp eq i32 %i.ik, 0
  br i1 %.not95.2.i, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.il = getelementptr i8, ptr %.0.i108116, i64 80
  %i.im = load i32, ptr %i.il, align 4
  %i.in = zext i32 %i.im to i64
  %i.io = getelementptr [4 x i8], ptr %.078, i64 %i.in
  %i.ip = load i32, ptr %i.io, align 4
  %i.iq = and i32 %i.ip, %i.ik
  %.not96.2.i = icmp eq i32 %i.iq, 0
  br i1 %.not96.2.i, label %bb.bd, label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.ir = load i32, ptr %i.if, align 4            ; 2 uses
  %.not97.2.i = icmp ult i32 %i.ir, %.079
  br i1 %.not97.2.i, label %bb.bc, label %bb.as

bb.bc:                                            ; preds = %bb.bb
  %i.is = zext i32 %i.ir to i64
  %i.it = getelementptr [4 x i8], ptr %.078, i64 %i.is
  %i.iu = load i32, ptr %i.it, align 4
  %i.iv = and i32 %i.iu, %i.ih                    ; 2 uses
  %i.iw = getelementptr i8, ptr %.0.i108116, i64 76
  %i.ix = load i32, ptr %i.iw, align 4            ; 2 uses
  %.not98.2.i = icmp eq i32 %i.iv, %i.ix
  br i1 %.not98.2.i, label %bb.bd, label %bb.au

bb.bd:                                            ; preds = %.critedge.thread.i, %bb.aa, %bb.ba, %bb.bc, %.thread110.1.i, %.thread110.i, %.preheader.i
  %i.iy = and i32 %.val104, 411041792
  %i.iz = icmp eq i32 %.val103, %i.iy
  br i1 %i.iz, label %bb.be, label %bb.bo

bb.be:                                            ; preds = %bb.bd
  br i1 %.not.i98, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef @.str.36) #9
  br label %.loopexit

bb.bg:                                            ; preds = %bb.be
  %.not33.i = icmp eq i32 %.079, 3
  br i1 %.not33.i, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef @.str.37, i32 noundef %.079) #9
  br label %.loopexit

bb.bi:                                            ; preds = %bb.bg
  %i.ja = getelementptr i8, ptr %.078, i64 4      ; 2 uses
  %i.jb = load i64, ptr %i.ja, align 8            ; 3 uses
  %i.jc = sub i64 %i.jb, %i.ck                    ; 3 uses
  %i.jd = and i64 %3, 4294967295
  %.not34.i = icmp ult i64 %i.jc, %i.jd
  br i1 %.not34.i, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef @.str.38, i64 noundef %i.jb) #9
  br label %.loopexit

bb.bk:                                            ; preds = %bb.bi
  %i.je = lshr i64 %i.jc, 2                       ; 2 uses
  %i.jf = trunc nuw nsw i64 %i.je to i32
  %i.jg = add nsw i64 %i.jc, %i.cd
  store i64 %i.jg, ptr %i.ja, align 8
  %i.jh = icmp eq i32 %.086, %i.jf
  br i1 %i.jh, label %.loopexit, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  br i1 %i.ct, label %bb.bm, label %arch_test_bit.exit.i

bb.bm:                                            ; preds = %bb.bl
  %i.ji = ptrtoint ptr %.083 to i64
  %i.jj = trunc i64 %i.ji to i32
  br label %.loopexit

arch_test_bit.exit.i:                             ; preds = %bb.bl
  %i.jk = call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) %.083, i64 range(i64 0, 1073741824) %i.je) #8, !srcloc !29 ; 2 uses
  %i.jl = icmp ult i8 %i.jk, 2
  call void @llvm.assume(i1 %i.jl)
  %i.jm = trunc nuw i8 %i.jk to i1
  br i1 %i.jm, label %.loopexit, label %bb.bn

bb.bn:                                            ; preds = %arch_test_bit.exit.i
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef @.str.39, i64 noundef %i.jb) #9
  br label %.loopexit

bb.bo:                                            ; preds = %bb.bd
  br i1 %spec.select.i99, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.jn = zext i32 %.086 to i64
  call void asm sideeffect " btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) %.083, i64 range(i64 0, 4294967296) %i.jn) #8, !srcloc !30
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %i.jo = getelementptr [4 x i8], ptr %.078, i64 %i.ek ; 2 uses
  %i.jp = add i32 %.079, %.086
  %.not96 = icmp ult ptr %i.jo, %i.cm
  br i1 %.not96, label %check_cmd.exit, label %bb.br

bb.br:                                            ; preds = %bb.bq
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef @.str.9) #9
  br label %.loopexit

.loopexit:                                        ; preds = %check_cmd.exit, %find_cmd.exit.thread117, %bb.z, %bb.au, %bb.br, %bb.ac, %find_reg.exit.thread.i, %.split.us.i, %.split127.us.i, %.split130.us.i, %bb.as, %bb.bf, %bb.bh, %bb.bj, %bb.bk, %bb.bm, %arch_test_bit.exit.i, %bb.bn
  %.182.ph = phi i32 [ -22, %bb.z ], [ -13, %bb.au ], [ 0, %arch_test_bit.exit.i ], [ -22, %bb.bn ], [ 0, %bb.bk ], [ %i.jj, %bb.bm ], [ -13, %bb.bf ], [ -22, %bb.bj ], [ -22, %bb.bh ], [ -13, %bb.as ], [ -13, %.split130.us.i ], [ -13, %.split127.us.i ], [ -13, %.split.us.i ], [ -13, %find_reg.exit.thread.i ], [ -13, %bb.ac ], [ -22, %find_cmd.exit.thread117 ], [ -22, %bb.br ], [ 0, %check_cmd.exit ] ; 4 uses
  br i1 %5, label %bb.bs, label %bb.bv

bb.bs:                                            ; preds = %.loopexit
  store i32 83886080, ptr %i.cm, align 4
  %.not97 = icmp eq i32 %.182.ph, 0
  br i1 %.not97, label %bb.bv, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.jq = load ptr, ptr %i.f, align 8
  %i.jr = getelementptr i8, ptr %i.jq, i64 768
  %i.js = load ptr, ptr %i.jr, align 8
  %i.jt = ptrtoint ptr %i.js to i64
  %i.ju = and i64 %i.jt, -4096
  %i.jv = inttoptr i64 %i.ju to ptr
  store i32 83886080, ptr %i.jv, align 4096
  %i.jw = icmp eq i32 %.182.ph, -13
  br i1 %i.jw, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.jx = load ptr, ptr %0, align 8
  %i.jy = getelementptr i8, ptr %i.jx, i64 1664
  %i.jz = load i32, ptr %i.jy, align 4
  %i.ka = and i32 %i.jz, 8388608
  %.not = icmp eq i32 %i.ka, 0
  %i.kb = trunc i64 %i.ci to i32
  %i.kc = select i1 %.not, i32 411042048, i32 411049984
  %i.kd = getelementptr i8, ptr %i.cm, i64 4
  store i32 %i.kc, ptr %i.cm, align 4
  store i32 %i.kb, ptr %i.kd, align 4
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bs, %bb.bu, %bb.bt, %.loopexit
  %.2 = phi i32 [ 0, %bb.bu ], [ %.182.ph, %bb.bt ], [ 0, %bb.bs ], [ %.182.ph, %.loopexit ]
  %i.ke = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.kf = getelementptr i8, ptr %i.ke, i64 216
  %i.kg = load i64, ptr %i.kf, align 8
  call void @__i915_gem_object_flush_map(ptr noundef %i.ke, i64 noundef 0, i64 noundef %i.kg) #9
  br i1 %spec.select.i99, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  call void @kfree(ptr noundef nonnull %.083) #9
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %i.kh = load ptr, ptr %i.f, align 8
  %i.ki = getelementptr i8, ptr %i.kh, i64 688    ; 2 uses
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock decl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.ki, ptr elementtype(i32) %i.ki) #8, !srcloc !26
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.p
  %.077 = phi i32 [ %i.bs, %bb.p ], [ %.2, %bb.bx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  ret i32 %.077
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__drm_dev_dbg(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 0, 11) i32 @i915_cmd_parser_get_version(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 2360
  %.val = load ptr, ptr %i.a, align 8             ; 2 uses
  %.not.i = icmp eq ptr %.val, null
  br i1 %.not.i, label %._crit_edge, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a, %.preheader.i
  %.0.i = phi ptr [ %i.c, %.preheader.i ], [ %.val, %bb.a ] ; 2 uses
  %i.b = getelementptr i8, ptr %.0.i, i64 16
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not9.i = icmp eq ptr %i.c, null
  br i1 %.not9.i, label %select.unfold.preheader, label %.preheader.i, !llvm.loop !31

select.unfold.preheader:                          ; preds = %.preheader.i
  %i.d = getelementptr i8, ptr %.0.i, i64 -112    ; 2 uses
  %.not19.not25 = icmp eq ptr %i.d, null
  br i1 %.not19.not25, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %select.unfold.preheader, %select.unfold
  %.01526 = phi ptr [ %i.i, %select.unfold ], [ %i.d, %select.unfold.preheader ] ; 2 uses
  %i.e = getelementptr i8, ptr %.01526, i64 1240
  %.015.val = load i32, ptr %i.e, align 8
  %i.f = trunc i32 %.015.val to i1
  br i1 %i.f, label %._crit_edge, label %select.unfold

select.unfold:                                    ; preds = %.lr.ph
  %i.g = getelementptr i8, ptr %.01526, i64 112
  %i.h = tail call ptr @rb_next(ptr noundef %i.g) #9 ; 2 uses
  %.not20 = icmp eq ptr %i.h, null
  %i.i = getelementptr i8, ptr %i.h, i64 -112     ; 2 uses
  %.not19.not30 = icmp eq ptr %i.i, null
  %.not19.not = or i1 %.not20, %.not19.not30
  br i1 %.not19.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %select.unfold, %.lr.ph, %bb.a, %select.unfold.preheader
  %. = phi i32 [ 0, %select.unfold.preheader ], [ 0, %bb.a ], [ 0, %select.unfold ], [ 10, %.lr.ph ]
  ret i32 %.
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @rb_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @__kmalloc_cache_noprof(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @i915_gem_object_prepare_write(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @i915_gem_object_pin_map(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @i915_gem_object_prepare_read(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @i915_memcpy_from_wc(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2
end_hunk_0
