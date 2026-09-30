Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/riscv-iommu?download=true
inline.NumInlined: 228
inline.NumDeleted: 77
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@riscv_iommu_ctx:bb.a

._crit_edge:                                      ; preds = %bb.j, %.preheader.i
  %.0126.i.lcssa = phi i64 [ %.0126.i90, %.preheader.i ], [ %.0126.i, %bb.j ]
  call void @riscv_iommu_hpm_incr_ctr(ptr noundef nonnull %0, ptr noundef nonnull %i.t, i32 noundef 5) #17
  %i.bm = load i64, ptr %i.t, align 8
  %i.bn = select i1 %i.ad, i64 6, i64 5
  %i.bo = shl i64 %i.bm, %i.bn
  %i.bp = and i64 %i.bo, 4080
  %i.bq = or disjoint i64 %i.bp, %.0126.i.lcssa
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %7, i8 noundef 0, i64 noundef 64, i1 noundef false) #17
  %i.br = load ptr, ptr %i.at, align 16
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !8
  fence seq_cst
  %i.bs = call i32 @address_space_rw(ptr noundef %i.br, i64 noundef %i.bq, i64 4294967296, ptr noundef nonnull %7, i64 noundef range(i64 4, 65) %i.ag, i1 noundef zeroext false) #17
  %.not136.i = icmp eq i32 %i.bs, 0
  br i1 %.not136.i, label %bb.m, label %select.unfold70

bb.m:                                             ; preds = %._crit_edge
  %i.bt = load i64, ptr %7, align 8               ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i64 %i.bt, ptr %i.bu, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bw = load i64, ptr %i.bv, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.t, i64 32 ; 3 uses
  store i64 %i.bw, ptr %i.bx, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.bz = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.ca = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  %i.cc = load i64, ptr %i.by, align 8            ; 4 uses
  %i.cd = load <2 x i64>, ptr %i.ca, align 8
  store <2 x i64> %i.cd, ptr %i.cb, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.cf = load i64, ptr %i.ce, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.t, i64 56
  store i64 %i.cf, ptr %i.cg, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.ci = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.cj = load <2 x i64>, ptr %i.ch, align 8
  store <2 x i64> %i.cj, ptr %i.ci, align 8
  %i.ck = and i64 %i.bt, 1
  %.not137.i = icmp eq i64 %i.ck, 0
  br i1 %.not137.i, label %select.unfold70, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cl = call fastcc zeroext i1 @riscv_iommu_validate_device_ctx(ptr noundef nonnull %0, ptr noundef nonnull %i.t)
  br i1 %i.cl, label %bb.o, label %select.unfold70

bb.o:                                             ; preds = %bb.n
  %i.cm = lshr i64 %i.cc, 60                      ; 3 uses
  %i.cn = trunc nuw nsw i64 %i.cm to i32
  %i.co = shl i64 %i.cc, 12
  %i.cp = and i64 %i.bt, 32
  %.not138.i = icmp eq i64 %i.cp, 0
  %i.cq = load i64, ptr %i.t, align 8
  %i.cr = and i64 %i.cq, 17592169267200           ; 2 uses
  br i1 %.not138.i, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %.not139.i = icmp eq i64 %i.cr, 0
  br i1 %.not139.i, label %bb.q, label %select.unfold70

bb.q:                                             ; preds = %bb.p
  %i.cs = icmp ugt i64 %i.cc, -5764607523034234881
  br i1 %i.cs, label %select.unfold70, label %select.unfold

bb.r:                                             ; preds = %bb.o
  %i.ct = and i64 %i.bt, 512
  %i.cu = or disjoint i64 %i.cr, %i.ct
  %or.cond.i = icmp eq i64 %i.cu, 0
  br i1 %or.cond.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i64 0, ptr %i.bz, align 8
  br label %select.unfold

bb.t:                                             ; preds = %bb.r
  %i.cv = icmp eq i64 %i.cm, 0
  br i1 %i.cv, label %select.unfold, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cw = icmp ugt i64 %i.cc, 4611686018427387903
  br i1 %i.cw, label %select.unfold70, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.2128162.i = and i64 %i.co, 72057594037923840  ; 2 uses
  %.not164.i = icmp eq i64 %i.cm, 1
  br i1 %.not164.i, label %._crit_edge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.v
  %i.cx = add nsw i32 %i.cn, -2
  br label %.lr.ph.i

bb.w:                                             ; preds = %bb.x
  %i.cy = shl i64 %i.do, 2
  %.2128.i = and i64 %i.cy, 72057594037923840     ; 2 uses
  %i.cz = add nsw i32 %i.db, -1
  %i.da = icmp sgt i32 %i.db, 0
  br i1 %i.da, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !17

.lr.ph.i:                                         ; preds = %bb.w, %.lr.ph.preheader.i
  %i.db = phi i32 [ %i.cz, %bb.w ], [ %i.cx, %.lr.ph.preheader.i ] ; 3 uses
  %.2128163.i = phi i64 [ %.2128.i, %bb.w ], [ %.2128162.i, %.lr.ph.preheader.i ]
  call void @riscv_iommu_hpm_incr_ctr(ptr noundef nonnull %0, ptr noundef nonnull %i.t, i32 noundef 6) #17
  %i.dc = mul nsw i32 %i.db, 9
  %i.dd = add nuw nsw i32 %i.dc, 8
  %i.de = load i64, ptr %i.t, align 8
  %i.df = lshr i64 %i.de, 24
  %i.dg = trunc i64 %i.df to i32
  %i.dh = and i32 %i.dg, 1048575
  %i.di = lshr i32 %i.dh, %i.dd
  %i.dj = shl nuw nsw i32 %i.di, 3
  %i.dk = and i32 %i.dj, 4088
  %i.dl = zext nneg i32 %i.dk to i64
  %i.dm = or disjoint i64 %.2128163.i, %i.dl
  %.val149.i = load i64, ptr %i.bx, align 8
  %i.dn = call fastcc i32 @pdt_memory_read(ptr noundef nonnull %0, i64 %.val149.i, i64 noundef %i.dm, ptr noundef %i.a, i64 noundef 8)
  %.not143.i = icmp eq i32 %i.dn, 0
  br i1 %.not143.i, label %bb.x, label %select.unfold70

bb.x:                                             ; preds = %.lr.ph.i
  %i.do = load i64, ptr %i.a, align 8             ; 2 uses
  %i.dp = and i64 %i.do, 1
  %.not144.i = icmp eq i64 %i.dp, 0
  br i1 %.not144.i, label %select.unfold70, label %bb.w

._crit_edge.i:                                    ; preds = %bb.w, %bb.v
  %.2128.lcssa.i = phi i64 [ %.2128162.i, %bb.v ], [ %.2128.i, %bb.w ]
  call void @riscv_iommu_hpm_incr_ctr(ptr noundef nonnull %0, ptr noundef nonnull %i.t, i32 noundef 6) #17
  %i.dq = load i64, ptr %i.t, align 8
  %sh.diff.i = lshr i64 %i.dq, 20
  %i.dr = and i64 %sh.diff.i, 4080
  %i.ds = or disjoint i64 %i.dr, %.2128.lcssa.i
  %.val.i = load i64, ptr %i.bx, align 8
  %i.dt = call fastcc i32 @pdt_memory_read(ptr noundef nonnull %0, i64 %.val.i, i64 noundef %i.ds, ptr noundef %i.ca, i64 noundef 16)
  %.not141.i = icmp eq i32 %i.dt, 0
  br i1 %.not141.i, label %bb.y, label %select.unfold70

bb.y:                                             ; preds = %._crit_edge.i
  %i.du = load <2 x i64>, ptr %i.ca, align 8
  %i.dv = load i64, ptr %i.ca, align 8
  store <2 x i64> %i.du, ptr %i.cb, align 8
  %i.dw = and i64 %i.dv, 1
  %.not142.i = icmp eq i64 %i.dw, 0
  br i1 %.not142.i, label %select.unfold70, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dx = call fastcc zeroext i1 @riscv_iommu_validate_process_ctx(ptr noundef nonnull %0, ptr noundef nonnull %i.t)
  br i1 %i.dx, label %select.unfold, label %select.unfold70

select.unfold:                                    ; preds = %bb.z, %bb.t, %bb.s, %bb.f, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br i1 %.not, label %bb.ad, label %bb.aa

bb.aa:                                            ; preds = %select.unfold
  %i.dy = call i32 @g_hash_table_size(ptr noundef %i.o) #17
  %i.dz = icmp ugt i32 %i.dy, 127
  br i1 %i.dz, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  call void @g_hash_table_unref(ptr noundef %i.o) #17
  %i.ea = call ptr @g_hash_table_new_full(ptr noundef nonnull @riscv_iommu_ctx_hash, ptr noundef nonnull @riscv_iommu_ctx_equal, ptr noundef nonnull @g_free, ptr noundef null) #17 ; 3 uses
  %i.eb = call ptr @g_hash_table_ref(ptr noundef %i.ea) #17 ; 0 uses
  %i.ec = atomicrmw xchg ptr %i.m, ptr %i.ea seq_cst, align 16
  call void @g_hash_table_unref(ptr noundef %i.ec) #17
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.060 = phi ptr [ %i.ea, %bb.ab ], [ %i.o, %bb.aa ] ; 2 uses
  %i.ed = call i32 @g_hash_table_add(ptr noundef %.060, ptr noundef nonnull %i.t) #17 ; 0 uses
  br label %bb.ae

bb.ad:                                            ; preds = %select.unfold
  call void @g_hash_table_unref(ptr noundef %i.o) #17
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %storemerge = phi ptr [ %i.t, %bb.ad ], [ %.060, %bb.ac ]
  store ptr %storemerge, ptr %5, align 8
  br label %bb.ag

select.unfold70:                                  ; preds = %bb.k, %bb.l, %.lr.ph, %bb.x, %.lr.ph.i, %bb.q, %bb.g, %._crit_edge, %bb.e, %bb.p, %.thread169.i, %bb.m, %bb.u, %bb.y, %bb.z, %._crit_edge.i, %bb.n
  %switch = phi i1 [ true, %bb.g ], [ false, %bb.p ], [ true, %bb.e ], [ false, %bb.x ], [ true, %._crit_edge ], [ true, %bb.n ], [ false, %._crit_edge.i ], [ false, %bb.z ], [ false, %bb.y ], [ false, %bb.u ], [ true, %bb.q ], [ true, %bb.m ], [ false, %.thread169.i ], [ false, %.lr.ph.i ], [ true, %.lr.ph ], [ true, %bb.l ], [ true, %bb.k ]
  %.4.i.ph = phi i64 [ 259, %bb.g ], [ 260, %bb.p ], [ 256, %bb.e ], [ 266, %bb.x ], [ 257, %._crit_edge ], [ 259, %bb.n ], [ 265, %._crit_edge.i ], [ 267, %bb.z ], [ 266, %bb.y ], [ 267, %bb.u ], [ 258, %bb.q ], [ 258, %bb.m ], [ 260, %.thread169.i ], [ 265, %.lr.ph.i ], [ 257, %.lr.ph ], [ 258, %bb.k ], [ 259, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  call void @g_hash_table_unref(ptr noundef %i.o) #17
  store ptr null, ptr %5, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %i.ee = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.ee, align 8
  %i.ef = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.eg = load i64, ptr %i.ef, align 8
  %i.eh = and i64 %i.eg, 16
  %.not.i69 = icmp eq i64 %i.eh, 0
  %or.cond74 = or i1 %switch, %.not.i69
  br i1 %or.cond74, label %bb.af, label %riscv_iommu_report_fault.exit

bb.af:                                            ; preds = %select.unfold70
  %.not75 = icmp eq i32 %2, 0
  %i.ei = and i32 %3, 1
  %. = xor i32 %i.ei, 3
  %i.ej = zext nneg i32 %. to i64
  %i.ek = shl nuw nsw i64 %i.ej, 34
  %i.el = or disjoint i64 %.4.i.ph, %i.ek
  %i.em = load i64, ptr %i.t, align 8             ; 2 uses
  %i.en = shl i64 %i.em, 40
  %9 = lshr i64 %i.em, 12
  %10 = and i64 %9, 4294963200
  %11 = or disjoint i64 %10, 4294967296
  %i.eo = select i1 %.not75, i64 0, i64 %11
  %i.ep = or disjoint i64 %i.en, %i.eo
  %storemerge.i = or disjoint i64 %i.ep, %i.el
  store i64 %storemerge.i, ptr %6, align 8
  %i.eq = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 %4, ptr %i.eq, align 8
  %i.er = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i64 0, ptr %i.er, align 8
  call void @riscv_iommu_fault(ptr noundef nonnull %0, ptr noundef nonnull %6)
  br label %riscv_iommu_report_fault.exit

riscv_iommu_report_fault.exit:                    ; preds = %select.unfold70, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  call void @g_free(ptr noundef nonnull %i.t) #17
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ae, %riscv_iommu_report_fault.exit, %bb.d
  %.1 = phi ptr [ %i.p, %bb.d ], [ null, %riscv_iommu_report_fault.exit ], [ %i.t, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  ret ptr %.1
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 0, 261) i32 @riscv_iommu_translate(ptr noundef %0, ptr noundef nonnull %1, ptr nofree noundef captures(none) %2, i1 noundef zeroext %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.riscv_iommu_fq_record, align 8 ; 6 uses
  %i.a = alloca i64, align 8                      ; 7 uses
  %5 = alloca [2 x %struct.anon.15], align 8      ; 16 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %6 = alloca %struct.RISCVIOMMUEntry, align 8    ; 7 uses
  %7 = alloca %struct.riscv_iommu_pq_record, align 8 ; 5 uses
  %i.c = getelementptr i8, ptr %1, i64 24         ; 2 uses
  %.val = load i64, ptr %i.c, align 8
  %i.d = getelementptr i8, ptr %1, i64 32         ; 4 uses
  %.val102 = load i64, ptr %i.d, align 8
  %i.e = icmp ult i64 %.val, 1152921504606846976
  %i.f = icmp ult i64 %.val102, 1152921504606846976 ; 2 uses
  %i.g = select i1 %i.f, i32 0, i32 2
  %i.h = select i1 %i.f, i32 1, i32 3
  %.0.i = select i1 %i.e, i32 %i.g, i32 %i.h      ; 2 uses
  tail call void @riscv_iommu_hpm_incr_ctr(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 1) #17
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call ptr @g_hash_table_ref(ptr noundef %i.j) #17 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 12 uses
  %i.m = load i32, ptr %i.l, align 8
  %i.n = icmp eq i32 %i.m, 0
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.p = load i64, ptr %i.o, align 8              ; 3 uses
  br i1 %i.n, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = and i64 %i.p, 32
  %i.r = icmp ne i64 %i.q, 0
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.s = trunc i64 %i.p to i8
  %i.t = lshr i8 %i.s, 2
  %i.u = and i64 %i.p, 32
  %i.v = icmp ne i64 %i.u, 0                      ; 2 uses
  tail call void @riscv_iommu_hpm_incr_ctr(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 3) #17
  %i.w = load i64, ptr %i.o, align 8
  %i.x = and i64 %i.w, 2
  %.not = icmp eq i64 %i.x, 0
  br i1 %.not, label %riscv_iommu_iot_update.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.y = phi i1 [ %i.v, %bb.c ], [ %i.r, %bb.b ]  ; 2 uses
  %i.z = phi i8 [ %i.t, %bb.c ], [ 0, %bb.b ]
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 8 uses
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = getelementptr i8, ptr %1, i64 16        ; 2 uses
  %.val103 = load i64, ptr %i.ac, align 8
  %.val104 = load i64, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  store i32 %.0.i, ptr %6, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 0, ptr %i.ad, align 4
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.af = lshr i64 %i.ab, 12
  %i.ag = and i64 %i.af, 17592186044415
  %i.ah = shl i64 %.val103, 32
  %i.ai = and i64 %i.ah, -17592186044416
  %i.aj = or disjoint i64 %i.ai, %i.ag
  store i64 %i.aj, ptr %i.ae, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.al = and i64 %.val104, 1152903912420802560
  store i64 %i.al, ptr %i.ak, align 8
  %i.am = call ptr @g_hash_table_lookup(ptr noundef %i.k, ptr noundef nonnull %6) #17 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  %.not96 = icmp eq ptr %i.am, null
  br i1 %.not96, label %.thread112, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ao = load i64, ptr %i.an, align 8            ; 2 uses
  %i.ap = lshr i64 %i.ao, 60
  %i.aq = trunc nuw nsw i64 %i.ap to i32
  %i.ar = and i32 %i.aq, 3                        ; 2 uses
  %.not97 = icmp eq i32 %i.ar, 0
  br i1 %.not97, label %.thread112, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.as = shl i64 %i.ao, 12
  %i.at = and i64 %i.as, 72057594037923840
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.at, ptr %i.au, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 4095, ptr %i.av, align 8
  store i32 %i.ar, ptr %i.l, align 8
  br label %riscv_iommu_iot_update.exit.thread.thread

.thread112:                                       ; preds = %bb.d, %bb.e
  call void @riscv_iommu_hpm_incr_ctr(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 4) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i64 0, ptr %i.a, align 8, !annotation !13
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %i.aw = load i64, ptr %1, align 8
  %i.ax = and i64 %i.aw, 17592169267200
  %i.ay = icmp ne i64 %i.ax, 0
  %i.az = load i64, ptr %i.c, align 8             ; 3 uses
  %i.ba = lshr i64 %i.az, 60                      ; 3 uses
  %i.bb = load i64, ptr %i.d, align 8             ; 3 uses
  %i.bc = lshr i64 %i.bb, 60                      ; 3 uses
  %i.bd = icmp ne i64 %i.ba, 0                    ; 2 uses
  %i.be = icmp ne i64 %i.bc, 0                    ; 6 uses
  br i1 %i.bd, label %bb.l, label %bb.g

bb.g:                                             ; preds = %.thread112
  %i.bf = load i32, ptr %i.l, align 8
  %i.bg = and i32 %i.bf, 2
  %.not.i = icmp eq i32 %i.bg, 0
  br i1 %.not.i, label %riscv_iommu_msi_check.exit.thread.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bh = load i64, ptr %i.aa, align 8            ; 3 uses
  %i.bi = getelementptr i8, ptr %0, i64 193
  %.val277.i = load i8, ptr %i.bi, align 1, !range !10, !noundef !11
  %i.bj = trunc nuw i8 %.val277.i to i1
  br i1 %i.bj, label %bb.i, label %riscv_iommu_msi_check.exit.thread.i

bb.i:                                             ; preds = %bb.h
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bl = load i64, ptr %i.bk, align 8
  %.mask.i.i = and i64 %i.bl, -1152921504606846976
  %.not.i.i = icmp eq i64 %.mask.i.i, 1152921504606846976
  br i1 %.not.i.i, label %riscv_iommu_msi_check.exit.i, label %riscv_iommu_msi_check.exit.thread.i

riscv_iommu_msi_check.exit.i:                     ; preds = %bb.i
  %i.bm = lshr i64 %i.bh, 12
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bo = load i64, ptr %i.bn, align 8
  %i.bp = xor i64 %i.bo, %i.bm
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.br = load i64, ptr %i.bq, align 8
  %i.bs = xor i64 %i.br, -1
  %i.bt = and i64 %i.bp, %i.bs
  %.not5.i.i = icmp eq i64 %i.bt, 0
  br i1 %.not5.i.i, label %bb.j, label %riscv_iommu_msi_check.exit.thread.i

bb.j:                                             ; preds = %riscv_iommu_msi_check.exit.i
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 272
  store ptr %i.bu, ptr %2, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.bh, ptr %i.bv, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 4095, ptr %i.bw, align 8
  br label %.loopexit

riscv_iommu_msi_check.exit.thread.i:              ; preds = %riscv_iommu_msi_check.exit.i, %bb.i, %bb.h, %bb.g
  br i1 %i.be, label %bb.l, label %bb.k

bb.k:                                             ; preds = %riscv_iommu_msi_check.exit.thread.i
  %i.bx = load i64, ptr %i.aa, align 8            ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.bx, ptr %i.by, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 4095, ptr %i.bz, align 8
  store i32 3, ptr %i.l, align 8
  br label %.loopexit

bb.l:                                             ; preds = %riscv_iommu_msi_check.exit.thread.i, %.thread112
  store i64 0, ptr %5, align 8, !annotation !13
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 9 uses
  %i.cc = load i64, ptr %i.o, align 8             ; 2 uses
  %i.cd = and i64 %i.cc, 2048
  %.not265.i = icmp eq i64 %i.cd, 0
  br i1 %.not265.i, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  switch i64 %i.ba, label %riscv_iommu_iot_update.exit [
    i64 0, label %bb.s
    i64 8, label %bb.n
  ]

bb.n:                                             ; preds = %bb.m
  %i.ce = load i64, ptr %i.cb, align 8
  %i.cf = and i64 %i.ce, 256
  %.not270.i = icmp eq i64 %i.cf, 0
  br i1 %.not270.i, label %riscv_iommu_iot_update.exit, label %bb.s
end_hunk_0
begin_hunk_1_@riscv_iommu_translate:bb.a
  store i64 %i.jf, ptr %i.ir, align 8
  %i.jg = load i32, ptr %i.l, align 8
  %i.jh = and i32 %i.jg, 3
  %i.ji = zext nneg i32 %i.jh to i64
  %i.jj = shl nuw nsw i64 %i.ji, 60
  %i.jk = or disjoint i64 %i.jj, %i.jb
  store i64 %i.jk, ptr %i.iv, align 8
  store i32 %.0.i, ptr %i.io, align 8
  %i.jl = getelementptr inbounds nuw i8, ptr %0, i64 720 ; 2 uses
  %i.jm = load i32, ptr %i.jl, align 16
  %.not.i106 = icmp eq i32 %i.jm, 0
  br i1 %.not.i106, label %riscv_iommu_iot_update.exit.thread.thread, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.jn = load ptr, ptr %i.i, align 8
  %i.jo = call i32 @g_hash_table_size(ptr noundef %i.jn) #17
  %i.jp = load i32, ptr %i.jl, align 16
  %.not11.i = icmp ult i32 %i.jo, %i.jp
  br i1 %.not11.i, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.jq = call ptr @g_hash_table_new_full(ptr noundef nonnull @riscv_iommu_iot_hash, ptr noundef nonnull @riscv_iommu_iot_equal, ptr noundef nonnull @g_free, ptr noundef null) #17 ; 2 uses
  %i.jr = atomicrmw xchg ptr %i.i, ptr %i.jq seq_cst, align 8
  call void @g_hash_table_unref(ptr noundef %i.jr) #17
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %.0.i107 = phi ptr [ %i.jq, %bb.bp ], [ %i.k, %bb.bo ]
  %i.js = call i32 @g_hash_table_add(ptr noundef %.0.i107, ptr noundef nonnull %i.io) #17 ; 0 uses
  br label %riscv_iommu_iot_update.exit.thread.thread

riscv_iommu_iot_update.exit.thread.thread:        ; preds = %bb.bq, %bb.bn, %.loopexit, %bb.bm, %bb.f
  call void @g_hash_table_unref(ptr noundef %i.k) #17
  br label %bb.cj

riscv_iommu_iot_update.exit.thread:               ; preds = %bb.c
  tail call void @g_hash_table_unref(ptr noundef %i.k) #17
  br label %bb.ch

riscv_iommu_iot_update.exit:                      ; preds = %bb.ad, %bb.q, %.thread300.i, %bb.aj, %bb.ah, %bb.an, %bb.o, %bb.n, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.p, %bb.m, %bb.r
  %.9.i.ph = phi i32 [ 259, %bb.q ], [ 259, %bb.r ], [ 259, %bb.m ], [ 259, %bb.p ], [ 259, %bb.t ], [ 259, %bb.u ], [ 259, %bb.v ], [ 259, %bb.w ], [ 259, %bb.x ], [ 259, %bb.y ], [ 259, %bb.n ], [ 259, %bb.o ], [ %i.gl, %bb.an ], [ %i.fx, %bb.ah ], [ %i.gb, %bb.aj ], [ %i.ig, %.thread300.i ], [ 259, %bb.ad ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  call void @g_hash_table_unref(ptr noundef %i.k) #17
  %i.jt = trunc i8 %i.z to i1
  br i1 %i.jt, label %bb.br, label %bb.ch

bb.br:                                            ; preds = %riscv_iommu_iot_update.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  %.pre152 = load i64, ptr %1, align 8            ; 3 uses
  %i.ju = lshr i64 %.pre152, 12
  %i.jv = and i64 %i.ju, 4294963200
  %i.jw = or disjoint i64 %i.jv, 4294967296
  %i.jx = select i1 %i.y, i64 %i.jw, i64 0
  %i.jy = shl i64 %.pre152, 40
  %i.jz = or disjoint i64 %i.jy, %i.jx
  store i64 %i.jz, ptr %7, align 8
  %i.ka = load i64, ptr %i.aa, align 8
  %i.kb = and i64 %i.ka, -4096
  %i.kc = or disjoint i64 %i.kb, 7                ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.kc, ptr %i.kd, align 8
  %i.ke = getelementptr i8, ptr %0, i64 1008      ; 4 uses
  %.val39.i = load ptr, ptr %i.ke, align 16       ; 3 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %.val39.i, i64 80
  %.val.i.i = load i32, ptr %i.kf, align 1
  %i.kg = getelementptr inbounds nuw i8, ptr %.val39.i, i64 64
  %.val.i43.i = load i32, ptr %i.kg, align 1
  %i.kh = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.ki = load i32, ptr %i.kh, align 16           ; 3 uses
  %i.kj = and i32 %i.ki, %.val.i43.i
  %i.kk = getelementptr inbounds nuw i8, ptr %.val39.i, i64 68
  %.val.i44.i = load i32, ptr %i.kk, align 1
  %i.kl = and i32 %.val.i44.i, %i.ki              ; 2 uses
  %i.km = add i32 %i.kl, 1
  %i.kn = and i32 %i.km, %i.ki                    ; 2 uses
  %i.ko = trunc i64 %.pre152 to i32               ; 3 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.kq = load ptr, ptr %i.kp, align 8
  %i.kr = lshr i32 %i.ko, 8
  %i.ks = and i32 %i.kr, 255
  %i.kt = lshr i32 %i.ko, 3
  %i.ku = and i32 %i.kt, 31
  %i.kv = and i32 %i.ko, 7
  %i.kw = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i.i108 = icmp eq i32 %i.kw, 0
  br i1 %.not.i.i108, label %trace_riscv_iommu_pri.exit.i, label %bb.bs, !prof !7

bb.bs:                                            ; preds = %bb.br
  %i.kx = load i16, ptr @_TRACE_RISCV_IOMMU_PRI_DSTATE, align 2
  %.not4.i.i = icmp eq i16 %i.kx, 0
  br i1 %.not4.i.i, label %trace_riscv_iommu_pri.exit.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.ky = load i32, ptr @qemu_loglevel, align 4
  %i.kz = and i32 %i.ky, 32768
  %.not5.i.i109 = icmp eq i32 %i.kz, 0
  br i1 %.not5.i.i109, label %trace_riscv_iommu_pri.exit.i, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.12, ptr noundef %i.kq, i32 noundef range(i32 0, 256) %i.ks, i32 noundef range(i32 0, 32) %i.ku, i32 noundef range(i32 0, 8) %i.kv, i64 noundef %i.kc) #17
  br label %trace_riscv_iommu_pri.exit.i

trace_riscv_iommu_pri.exit.i:                     ; preds = %bb.bu, %bb.bt, %bb.bs, %bb.br
  %i.la = zext i32 %.val.i.i to i64               ; 2 uses
  %i.lb = and i64 %i.la, 66304
  %or.cond.i110 = icmp eq i64 %i.lb, 65536
  br i1 %or.cond.i110, label %bb.bv, label %riscv_iommu_pri.exit

bb.bv:                                            ; preds = %trace_riscv_iommu_pri.exit.i
  %i.lc = icmp eq i32 %i.kj, %i.kn
  br i1 %i.lc, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %.val41.i = load ptr, ptr %i.ke, align 16
  %i.ld = getelementptr inbounds nuw i8, ptr %.val41.i, i64 80 ; 2 uses
  %.val.i45.i = load i32, ptr %i.ld, align 1
  %i.le = or i32 %.val.i45.i, 512
  store i32 %i.le, ptr %i.ld, align 1
  br label %bb.ca

bb.bx:                                            ; preds = %bb.bv
  %i.lf = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.lg = load i64, ptr %i.lf, align 16
  %i.lh = zext i32 %i.kl to i64
  %i.li = shl nuw nsw i64 %i.lh, 4
  %i.lj = add i64 %i.lg, %i.li
  %i.lk = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.ll = load ptr, ptr %i.lk, align 16
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !8
  fence seq_cst
  %i.lm = call i32 @address_space_rw(ptr noundef %i.ll, i64 noundef %i.lj, i64 4294967296, ptr noundef nonnull %7, i64 noundef range(i64 0, 4294967296) 16, i1 noundef zeroext true) #17
  %.not36.i = icmp eq i32 %i.lm, 0
  %.val42.i = load ptr, ptr %i.ke, align 16       ; 2 uses
  br i1 %.not36.i, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.ln = getelementptr inbounds nuw i8, ptr %.val42.i, i64 80 ; 2 uses
  %.val.i46.i = load i32, ptr %i.ln, align 1
  %i.lo = or i32 %.val.i46.i, 256
  store i32 %i.lo, ptr %i.ln, align 1
  br label %bb.ca

bb.bz:                                            ; preds = %bb.bx
  %i.lp = getelementptr inbounds nuw i8, ptr %.val42.i, i64 68
  store i32 %i.kn, ptr %i.lp, align 1
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by, %bb.bw
  %i.lq = and i64 %i.la, 2
  %.not37.i = icmp eq i64 %i.lq, 0
  br i1 %.not37.i, label %riscv_iommu_pri.exit, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.lr = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.ls = load ptr, ptr %i.lr, align 8
  %.not.i47.i = icmp eq ptr %i.ls, null
  br i1 %.not.i47.i, label %riscv_iommu_pri.exit, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %.val.i48.i = load ptr, ptr %i.ke, align 16     ; 2 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %.val.i48.i, i64 760
  %.val.i.i.i = load i32, ptr %i.lt, align 1
  %i.lu = getelementptr inbounds nuw i8, ptr %.val.i48.i, i64 84 ; 2 uses
  %.val.i14.i.i = load i32, ptr %i.lu, align 1    ; 2 uses
  %i.lv = or i32 %.val.i14.i.i, 8
  store i32 %i.lv, ptr %i.lu, align 1
  %i.lw = and i32 %.val.i14.i.i, 8
  %.not12.i.i = icmp eq i32 %i.lw, 0
  br i1 %.not12.i.i, label %bb.cd, label %riscv_iommu_pri.exit

bb.cd:                                            ; preds = %bb.cc
  %i.lx = lshr i32 %.val.i.i.i, 12
  %i.ly = and i32 %i.lx, 15                       ; 2 uses
  %i.lz = load ptr, ptr %i.lr, align 8
  call void %i.lz(ptr noundef nonnull %0, i32 noundef %i.ly) #17, !inline_history !18
  %i.ma = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i.i.i = icmp eq i32 %i.ma, 0
  br i1 %.not.i.i.i, label %riscv_iommu_pri.exit, label %bb.ce, !prof !7

bb.ce:                                            ; preds = %bb.cd
  %i.mb = load i16, ptr @_TRACE_RISCV_IOMMU_NOTIFY_INT_VECTOR_DSTATE, align 2
  %.not2.i.i.i = icmp eq i16 %i.mb, 0
  br i1 %.not2.i.i.i, label %riscv_iommu_pri.exit, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.mc = load i32, ptr @qemu_loglevel, align 4
  %i.md = and i32 %i.mc, 32768
  %.not3.i.i.i = icmp eq i32 %i.md, 0
  br i1 %.not3.i.i.i, label %riscv_iommu_pri.exit, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.2, i32 noundef 3, i32 noundef range(i32 0, 16) %i.ly) #17
  br label %riscv_iommu_pri.exit

riscv_iommu_pri.exit:                             ; preds = %trace_riscv_iommu_pri.exit.i, %bb.ca, %bb.cb, %bb.cc, %bb.cd, %bb.ce, %bb.cf, %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br label %bb.cj

bb.ch:                                            ; preds = %riscv_iommu_iot_update.exit, %riscv_iommu_iot_update.exit.thread
  %i.me = phi i1 [ %i.v, %riscv_iommu_iot_update.exit.thread ], [ %i.y, %riscv_iommu_iot_update.exit ]
  %.091120123 = phi i32 [ 260, %riscv_iommu_iot_update.exit.thread ], [ %.9.i.ph, %riscv_iommu_iot_update.exit ] ; 3 uses
  %i.mf = load i32, ptr %i.l, align 8             ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.mh = load <2 x i64>, ptr %i.mg, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.mi = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.mi, align 8
  %i.mj = load i64, ptr %i.o, align 8
  %i.mk = and i64 %i.mj, 16
  %.not.i111 = icmp eq i64 %i.mk, 0
  %i.ml = and i32 %.091120123, -4
  %switch = icmp eq i32 %i.ml, 256
  %or.cond127 = select i1 %.not.i111, i1 true, i1 %switch
  br i1 %or.cond127, label %bb.ci, label %riscv_iommu_report_fault.exit

bb.ci:                                            ; preds = %bb.ch
  %i.mm = and i32 %i.mf, 2
  %.not99 = icmp eq i32 %i.mm, 0
  %i.mn = and i32 %i.mf, 1
  %.not100 = icmp eq i32 %i.mn, 0
  %spec.select = select i1 %.not100, i64 137438953472, i64 34359738368
  %.0 = select i1 %.not99, i64 %spec.select, i64 51539607552
  %i.mo = zext nneg i32 %.091120123 to i64
  %i.mp = or disjoint i64 %.0, %i.mo
  %i.mq = load i64, ptr %1, align 8               ; 2 uses
  %i.mr = shl i64 %i.mq, 40
  %8 = lshr i64 %i.mq, 12
  %9 = and i64 %8, 4294963200
  %10 = or disjoint i64 %9, 4294967296
  %i.ms = select i1 %i.me, i64 %10, i64 0
  %i.mt = or disjoint i64 %i.mr, %i.ms
  %storemerge.i = add nuw nsw i64 %i.mt, %i.mp
  store i64 %storemerge.i, ptr %4, align 8
  %i.mu = getelementptr inbounds nuw i8, ptr %4, i64 16
  store <2 x i64> %i.mh, ptr %i.mu, align 8
  call void @riscv_iommu_fault(ptr noundef %0, ptr noundef nonnull %4)
  br label %riscv_iommu_report_fault.exit

riscv_iommu_report_fault.exit:                    ; preds = %bb.ch, %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %bb.cj

bb.cj:                                            ; preds = %riscv_iommu_iot_update.exit.thread.thread, %riscv_iommu_report_fault.exit, %riscv_iommu_pri.exit
  %.089 = phi i32 [ %.9.i.ph, %riscv_iommu_pri.exit ], [ %.091120123, %riscv_iommu_report_fault.exit ], [ 0, %riscv_iommu_iot_update.exit.thread.thread ]
  ret i32 %.089
}

declare ptr @g_hash_table_ref(ptr noundef) local_unnamed_addr #3

declare ptr @g_hash_table_lookup(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @g_hash_table_size(ptr noundef) local_unnamed_addr #3

declare void @g_hash_table_unref(ptr noundef) local_unnamed_addr #3

declare ptr @g_hash_table_new_full(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define internal i32 @riscv_iommu_ctx_hash(ptr nofree noundef readonly captures(none) %0) #10 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = trunc i64 %i.a to i32
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define internal range(i32 0, 2) i32 @riscv_iommu_ctx_equal(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #10 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = load i64, ptr %1, align 8
  %i.c = xor i64 %i.b, %i.a
  %i.d = and i64 %i.c, 17592186044415
  %narrow = icmp eq i64 %i.d, 0
  %i.e = zext i1 %narrow to i32
  ret i32 %i.e
}

declare void @g_free(ptr noundef) #3

declare i32 @g_hash_table_add(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @riscv_iommu_hpm_incr_ctr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i1 @riscv_iommu_validate_device_ctx(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8              ; 10 uses
  %i.c = and i64 %i.b, -4278194176
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.v

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.e = load i64, ptr %i.d, align 8              ; 10 uses
  %i.f = and i64 %i.e, 33554432
  %.not42 = icmp ne i64 %i.f, 0
  %i.g = and i64 %i.b, 70
  %or.cond68 = icmp eq i64 %i.g, 0
  %or.cond74 = or i1 %or.cond68, %.not42
  br i1 %or.cond74, label %bb.c, label %bb.v

bb.c:                                             ; preds = %bb.b
  %i.h = and i64 %i.b, 2
  %.not46 = icmp eq i64 %i.h, 0
  %i.i = and i64 %i.b, 12
  %or.cond69 = icmp ne i64 %i.i, 0
  %or.cond75.not77 = and i1 %.not46, %or.cond69
  %i.j = and i64 %i.b, 68
  %or.cond70.not = icmp eq i64 %i.j, 64
  %or.cond76 = or i1 %or.cond70.not, %or.cond75.not77
  br i1 %or.cond76, label %bb.v, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = and i64 %i.e, 67108864
  %.not51 = icmp ne i64 %i.k, 0
  %i.l = and i64 %i.b, 8                          ; 2 uses
  %.not52 = icmp eq i64 %i.l, 0
  %or.cond72 = or i1 %.not52, %.not51
  br i1 %or.cond72, label %bb.e, label %bb.v

bb.e:                                             ; preds = %bb.d
  %i.m = and i64 %i.e, 4194304
  %.not53 = icmp eq i64 %i.m, 0
  br i1 %.not53, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.o = load i64, ptr %i.n, align 8
  %or.cond = icmp ugt i64 %i.o, 2305843009213693951
  br i1 %or.cond, label %bb.v, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.q = load i64, ptr %i.p, align 8              ; 2 uses
  %i.r = icmp ne i64 %i.l, 0
  %i.s = icmp ult i64 %i.q, 1152921504606846976   ; 2 uses
  %or.cond3 = select i1 %i.r, i1 %i.s, i1 false
  br i1 %or.cond3, label %bb.v, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = and i64 %i.q, 3
  %.not55 = icmp eq i64 %i.t, 0
  %or.cond71 = or i1 %i.s, %.not55
  br i1 %or.cond71, label %bb.i, label %bb.v

bb.i:                                             ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.v = load i64, ptr %i.u, align 8
  %i.w = lshr i64 %i.v, 60                        ; 2 uses
  %i.x = trunc nuw nsw i64 %i.w to i32            ; 2 uses
  %i.y = and i64 %i.b, 32
  %.not56 = icmp eq i64 %i.y, 0
  br i1 %.not56, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  switch i32 %i.x, label %bb.u [
    i32 1, label %bb.k
    i32 2, label %bb.l
    i32 3, label %bb.m
  ]

bb.k:                                             ; preds = %bb.j
  %i.z = and i64 %i.e, 274877906944
  %.not65 = icmp eq i64 %i.z, 0
  br i1 %.not65, label %bb.v, label %bb.u

bb.l:                                             ; preds = %bb.j
  %i.aa = and i64 %i.e, 549755813888
  %.not64 = icmp eq i64 %i.aa, 0
  br i1 %.not64, label %bb.v, label %bb.u

bb.m:                                             ; preds = %bb.j
  %i.ab = and i64 %i.e, 1099511627776
  %.not63 = icmp eq i64 %i.ab, 0
  br i1 %.not63, label %bb.v, label %bb.u

bb.n:                                             ; preds = %bb.i
  %i.ac = and i64 %i.b, 512
  %.not57 = icmp eq i64 %i.ac, 0
  br i1 %.not57, label %bb.o, label %bb.v

bb.o:                                             ; preds = %bb.n
  %i.ad = and i64 %i.b, 2048
  %.not58 = icmp eq i64 %i.ad, 0
  br i1 %.not58, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ae = icmp eq i64 %i.w, 8
  %i.af = and i64 %i.e, 256
  %.not62 = icmp eq i64 %i.af, 0
  %or.cond73 = and i1 %.not62, %i.ae
  br i1 %or.cond73, label %bb.v, label %bb.u

bb.q:                                             ; preds = %bb.o
  switch i32 %i.x, label %bb.u [
    i32 8, label %bb.r
    i32 9, label %bb.s
    i32 10, label %bb.t
  ]

bb.r:                                             ; preds = %bb.q
  %i.ag = and i64 %i.e, 512
  %.not61 = icmp eq i64 %i.ag, 0
  br i1 %.not61, label %bb.v, label %bb.u

bb.s:                                             ; preds = %bb.q
  %i.ah = and i64 %i.e, 1024
  %.not60 = icmp eq i64 %i.ah, 0
  br i1 %.not60, label %bb.v, label %bb.u

bb.t:                                             ; preds = %bb.q
  %i.ai = and i64 %i.e, 2048
  %.not59 = icmp eq i64 %i.ai, 0
  br i1 %.not59, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.p, %bb.t, %bb.s, %bb.r, %bb.q, %bb.j, %bb.k, %bb.l, %bb.m
  %i.aj = and i64 %i.b, 1024
  %.not66 = icmp eq i64 %i.aj, 0
  br label %bb.v

bb.v:                                             ; preds = %bb.c, %bb.b, %bb.p, %bb.d, %bb.h, %bb.u, %bb.t, %bb.s, %bb.r, %bb.n, %bb.m, %bb.l, %bb.k, %bb.g, %bb.f, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ false, %bb.d ], [ false, %bb.f ], [ %.not66, %bb.u ], [ false, %bb.t ], [ false, %bb.g ], [ false, %bb.k ], [ false, %bb.l ], [ false, %bb.m ], [ false, %bb.n ], [ false, %bb.p ], [ false, %bb.r ], [ false, %bb.s ], [ false, %bb.h ], [ false, %bb.b ], [ false, %bb.c ]
  ret i1 %.1
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @pdt_memory_read(ptr nofree noundef readonly captures(none) %0, i64 %.32.val, i64 noundef range(i64 0, 72057594037927936) %1, ptr noundef nonnull %2, i64 noundef range(i64 8, 17) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 7 uses
  %i.b = alloca i32, align 4                      ; 10 uses
end_hunk_1
begin_hunk_2_@riscv_iommu_trap_write:bb.a
bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %2, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #17
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.p = load i64, ptr %i.o, align 8              ; 2 uses
  %.not15.i.i = icmp eq i64 %i.p, 0
  br i1 %.not15.i.i, label %riscv_iommu_pext_u64.exit.i, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %bb.c
  %i.q = lshr i64 %1, 12
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %.lr.ph.i.preheader.i
  %.019.i.i = phi i64 [ %.1.i.i, %bb.e ], [ 1, %.lr.ph.i.preheader.i ] ; 3 uses
  %.0918.i.i = phi i64 [ %.2.i.i, %bb.e ], [ 0, %.lr.ph.i.preheader.i ] ; 2 uses
  %.01117.i.i = phi i64 [ %i.w, %bb.e ], [ %i.p, %.lr.ph.i.preheader.i ] ; 2 uses
  %.01216.i.i = phi i64 [ %i.v, %bb.e ], [ %i.q, %.lr.ph.i.preheader.i ] ; 2 uses
  %i.r = and i64 %.01117.i.i, 1
  %.not13.i.i = icmp eq i64 %i.r, 0
  br i1 %.not13.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.s = and i64 %.01216.i.i, 1
  %.not14.i.i = icmp eq i64 %i.s, 0
  %i.t = select i1 %.not14.i.i, i64 0, i64 %.019.i.i
  %spec.select.i.i = or i64 %i.t, %.0918.i.i
  %i.u = shl i64 %.019.i.i, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.i.i
  %.2.i.i = phi i64 [ %spec.select.i.i, %bb.d ], [ %.0918.i.i, %.lr.ph.i.i ] ; 2 uses
  %.1.i.i = phi i64 [ %i.u, %bb.d ], [ %.019.i.i, %.lr.ph.i.i ]
  %i.v = lshr i64 %.01216.i.i, 1
  %i.w = lshr i64 %.01117.i.i, 1                  ; 2 uses
  %.not.i.i = icmp eq i64 %i.w, 0
  br i1 %.not.i.i, label %riscv_iommu_pext_u64.exit.i, label %.lr.ph.i.i, !llvm.loop !22

riscv_iommu_pext_u64.exit.i:                      ; preds = %bb.e, %bb.c
  %.09.lcssa.i.i = phi i64 [ 0, %bb.c ], [ %.2.i.i, %bb.e ] ; 2 uses
  store i32 0, ptr %i.c, align 4, !annotation !13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.d, i8 0, i64 16, i1 false), !annotation !13
  store i64 %.09.lcssa.i.i, ptr %i.b, align 8
  %i.x = shl i64 %.09.lcssa.i.i, 4                ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = shl i64 %i.z, 12
  %i.ab = and i64 %i.aa, 72057594037923840        ; 2 uses
  %i.ac = and i64 %i.ab, %i.x
  %.not.i = icmp eq i64 %i.ac, 0
  br i1 %.not.i, label %bb.f, label %bb.s

bb.f:                                             ; preds = %riscv_iommu_pext_u64.exit.i
  %i.ad = or i64 %i.ab, %i.x
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 6 uses
  %i.af = load ptr, ptr %i.ae, align 16
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !8
  fence seq_cst
  %i.ag = call i32 @address_space_rw(ptr noundef %i.af, i64 noundef %i.ad, i64 4294967296, ptr noundef nonnull %i.d, i64 noundef range(i64 0, 4294967296) 16, i1 noundef zeroext false) #17 ; 3 uses
  switch i32 %i.ag, label %bb.g [
    i32 0, label %bb.h
    i32 2, label %bb.s
  ]

bb.g:                                             ; preds = %bb.f
  br label %bb.s

bb.h:                                             ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ai = load i64, ptr %i.d, align 16            ; 5 uses
  %i.aj = and i64 %i.ai, -9223372036854775807
  %or.cond.i = icmp eq i64 %i.aj, 1
  br i1 %or.cond.i, label %bb.i, label %bb.s

bb.i:                                             ; preds = %bb.h
  %i.ak = lshr i64 %i.ai, 1
  %i.al = and i64 %i.ak, 3
  switch i64 %i.al, label %bb.s [
    i64 3, label %bb.j
    i64 1, label %bb.l
  ]

bb.j:                                             ; preds = %bb.i
  %i.am = and i64 %i.ai, 9205357638345294840
  %.not81.i = icmp eq i64 %i.am, 0
  br i1 %.not81.i, label %bb.k, label %bb.s

bb.k:                                             ; preds = %bb.j
  %i.an = shl nuw nsw i64 %i.ai, 2
  %i.ao = and i64 %i.an, 72057594037923840        ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = load i64, ptr %i.m, align 8
  %i.as = trunc i64 %i.ar to i32                  ; 3 uses
  %i.at = lshr i32 %i.as, 8
  %i.au = and i32 %i.at, 255
  %i.av = lshr i32 %i.as, 3
  %i.aw = and i32 %i.av, 31
  %i.ax = and i32 %i.as, 7
  call fastcc void @trace_riscv_iommu_msi(ptr noundef %i.aq, i32 noundef %i.au, i32 noundef %i.aw, i32 noundef %i.ax, i64 noundef %1, i64 noundef %i.ao)
  %i.ay = load ptr, ptr %i.ae, align 16
  %i.az = zext i32 %3 to i64
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !8
  fence seq_cst
  %i.ba = call i32 @address_space_rw(ptr noundef %i.ay, i64 noundef %i.ao, i64 %4, ptr noundef nonnull %i.a, i64 noundef range(i64 0, 4294967296) %i.az, i1 noundef zeroext true) #17 ; 2 uses
  %.not82.i = icmp eq i32 %i.ba, 0
  br i1 %.not82.i, label %riscv_iommu_msi_write.exit, label %bb.s

bb.l:                                             ; preds = %bb.i
  %i.bb = load i64, ptr %i.a, align 8             ; 3 uses
  %i.bc = icmp ult i64 %i.bb, 2048
  %i.bd = and i64 %1, 3
  %.not75.i = icmp eq i64 %i.bd, 0
  %or.cond83.i = and i1 %.not75.i, %i.bc
  br i1 %or.cond83.i, label %bb.m, label %bb.s

bb.m:                                             ; preds = %bb.l
  %i.be = shl i64 %i.ai, 2
  %i.bf = and i64 %i.be, 72057594037927424
  %i.bg = lshr i64 %i.bb, 2
  %i.bh = and i64 %i.bg, 496
  %i.bi = or disjoint i64 %i.bh, %i.bf            ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = load i64, ptr %i.m, align 8
  %i.bm = trunc i64 %i.bl to i32                  ; 3 uses
  %i.bn = lshr i32 %i.bm, 8
  %i.bo = and i32 %i.bn, 255
  %i.bp = lshr i32 %i.bm, 3
  %i.bq = and i32 %i.bp, 31
  %i.br = and i32 %i.bm, 7
  call fastcc void @trace_riscv_iommu_msi(ptr noundef %i.bk, i32 noundef %i.bo, i32 noundef %i.bq, i32 noundef %i.br, i64 noundef %1, i64 noundef %i.bi)
  %i.bs = and i64 %i.bb, 63
  %i.bt = shl nuw i64 1, %i.bs
  store i64 %i.bt, ptr %i.a, align 8
  %i.bu = load ptr, ptr %i.ae, align 16
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !8
  fence seq_cst
  %i.bv = call i32 @address_space_rw(ptr noundef %i.bu, i64 noundef %i.bi, i64 %4, ptr noundef nonnull %i.b, i64 noundef range(i64 0, 4294967296) 8, i1 noundef zeroext false) #17 ; 2 uses
  %.not76.i = icmp eq i32 %i.bv, 0
  br i1 %.not76.i, label %bb.n, label %bb.s

bb.n:                                             ; preds = %bb.m
  %i.bw = load i64, ptr %i.b, align 8
  %i.bx = load i64, ptr %i.a, align 8
  %i.by = or i64 %i.bx, %i.bw
  store i64 %i.by, ptr %i.b, align 8
  %i.bz = load ptr, ptr %i.ae, align 16
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !8
  fence seq_cst
  %i.ca = call i32 @address_space_rw(ptr noundef %i.bz, i64 noundef %i.bi, i64 %4, ptr noundef nonnull %i.b, i64 noundef range(i64 0, 4294967296) 8, i1 noundef zeroext true) #17 ; 2 uses
  %.not77.i = icmp eq i32 %i.ca, 0
  br i1 %.not77.i, label %bb.o, label %bb.s

bb.o:                                             ; preds = %bb.n
  %i.cb = or disjoint i64 %i.bi, 8
  %i.cc = load ptr, ptr %i.ae, align 16
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !8
  fence seq_cst
  %i.cd = call i32 @address_space_rw(ptr noundef %i.cc, i64 noundef %i.cb, i64 %4, ptr noundef nonnull %i.b, i64 noundef range(i64 0, 4294967296) 8, i1 noundef zeroext false) #17 ; 2 uses
  %.not78.i = icmp eq i32 %i.cd, 0
  br i1 %.not78.i, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.ce = load i64, ptr %i.b, align 8
  %i.cf = load i64, ptr %i.a, align 8
  %i.cg = and i64 %i.cf, %i.ce
  %.not79.i = icmp eq i64 %i.cg, 0
  br i1 %.not79.i, label %riscv_iommu_msi_write.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ch = load i64, ptr %i.ah, align 8            ; 3 uses
  %i.ci = shl i64 %i.ch, 2
  %i.cj = and i64 %i.ci, 72057594037923840        ; 2 uses
  %i.ck = and i64 %i.ch, 1023
  %i.cl = lshr i64 %i.ch, 50
  %i.cm = and i64 %i.cl, 1024
  %i.cn = or disjoint i64 %i.cm, %i.ck
  %i.co = trunc nuw nsw i64 %i.cn to i32
  store i32 %i.co, ptr %i.c, align 4
  %i.cp = load ptr, ptr %i.ae, align 16
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !8
  fence seq_cst
  %i.cq = call i32 @address_space_rw(ptr noundef %i.cp, i64 noundef %i.cj, i64 %4, ptr noundef nonnull %i.c, i64 noundef range(i64 0, 4294967296) 4, i1 noundef zeroext true) #17 ; 2 uses
  %.not80.i = icmp eq i32 %i.cq, 0
  br i1 %.not80.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cr = load ptr, ptr %i.bj, align 8
  %i.cs = load i32, ptr %i.c, align 4
  call fastcc void @trace_riscv_iommu_mrif_notification(ptr noundef %i.cr, i32 noundef %i.cs, i64 noundef %i.cj)
  br label %riscv_iommu_msi_write.exit

bb.s:                                             ; preds = %bb.q, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %riscv_iommu_pext_u64.exit.i
  %.064.i = phi i32 [ 261, %bb.o ], [ 261, %riscv_iommu_pext_u64.exit.i ], [ 261, %bb.g ], [ 270, %bb.f ], [ 273, %bb.k ], [ 262, %bb.h ], [ 263, %bb.j ], [ 263, %bb.i ], [ 263, %bb.l ], [ 261, %bb.m ], [ 273, %bb.n ], [ 273, %bb.q ] ; 2 uses
  %.063.i = phi i32 [ %i.cd, %bb.o ], [ 4, %riscv_iommu_pext_u64.exit.i ], [ %i.ag, %bb.g ], [ %i.ag, %bb.f ], [ %i.ba, %bb.k ], [ 4, %bb.h ], [ 2, %bb.j ], [ 4, %bb.i ], [ 4, %bb.l ], [ %i.bv, %bb.m ], [ %i.ca, %bb.n ], [ %i.cq, %bb.q ]
  %i.ct = load i64, ptr %i.m, align 8             ; 3 uses
  %i.cu = and i64 %i.ct, 17592169267200
  %.not85.i = icmp eq i64 %i.cu, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %i.cv = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.cv, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.cx = load i64, ptr %i.cw, align 8
  %i.cy = and i64 %i.cx, 16
  %.not.i84.i = icmp eq i64 %i.cy, 0
  br i1 %.not.i84.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  switch i32 %.064.i, label %riscv_iommu_report_fault.exit.i [
    i32 273, label %bb.u
    i32 272, label %bb.u
    i32 268, label %bb.u
  ]

bb.u:                                             ; preds = %bb.t, %bb.t, %bb.t, %bb.s
  %i.cz = zext nneg i32 %.064.i to i64
  %i.da = or disjoint i64 %i.cz, 51539607552
  %i.db = shl i64 %i.ct, 40
  %i.dc = lshr i64 %i.ct, 12
  %i.dd = and i64 %i.dc, 4294963200
  %6 = or disjoint i64 %i.dd, 4294967296
  %i.de = select i1 %.not85.i, i64 0, i64 %6
  %i.df = or disjoint i64 %i.de, %i.db
  %storemerge.i.i = or disjoint i64 %i.df, %i.da
  store i64 %storemerge.i.i, ptr %5, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %5, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dg, i8 0, i64 16, i1 false)
  call void @riscv_iommu_fault(ptr noundef %0, ptr noundef nonnull %5)
  br label %riscv_iommu_report_fault.exit.i

riscv_iommu_report_fault.exit.i:                  ; preds = %bb.u, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br label %riscv_iommu_msi_write.exit

riscv_iommu_msi_write.exit:                       ; preds = %bb.k, %bb.p, %bb.r, %riscv_iommu_report_fault.exit.i
  %.0.i = phi i32 [ %.063.i, %riscv_iommu_report_fault.exit.i ], [ 0, %bb.k ], [ 0, %bb.r ], [ 0, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.v

bb.v:                                             ; preds = %bb.b, %riscv_iommu_msi_write.exit
  %.0 = phi i32 [ %.0.i, %riscv_iommu_msi_write.exit ], [ 4, %bb.b ] ; 3 uses
  %i.dh = load ptr, ptr %i.e, align 8             ; 3 uses
  %.not.i17 = icmp eq ptr %i.dh, null
  br i1 %.not.i17, label %riscv_iommu_ctx_put.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.dj = load i64, ptr %i.di, align 8
  %i.dk = and i64 %i.dj, 15
  %i.dl = icmp eq i64 %i.dk, 1
  br i1 %i.dl, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  call void @g_free(ptr noundef nonnull %i.dh) #17
  br label %riscv_iommu_ctx_put.exit

bb.y:                                             ; preds = %bb.w
  call void @g_hash_table_unref(ptr noundef nonnull %i.dh) #17
  br label %riscv_iommu_ctx_put.exit

riscv_iommu_ctx_put.exit:                         ; preds = %bb.y, %bb.x, %bb.v, %bb.a
  %.015 = phi i32 [ 4, %bb.a ], [ %.0, %bb.v ], [ %.0, %bb.x ], [ %.0, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #17
  ret i32 %.015
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc void @trace_riscv_iommu_msi(ptr noundef %0, i32 noundef range(i32 0, 256) %1, i32 noundef range(i32 0, 32) %2, i32 noundef range(i32 0, 8) %3, i64 noundef %4, i64 noundef range(i64 0, 72057594037927936) %5) unnamed_addr #13 {
bb.a:
  %i.a = load i32, ptr @trace_events_enabled_count, align 4
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.e, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.b = load i16, ptr @_TRACE_RISCV_IOMMU_MSI_DSTATE, align 2
  %.not5 = icmp eq i16 %i.b, 0
  br i1 %.not5, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load i32, ptr @qemu_loglevel, align 4
  %i.d = and i32 %i.c, 32768
  %.not6 = icmp eq i32 %i.d, 0
  br i1 %.not6, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.36, ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, i64 noundef %5) #17
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b, %bb.a
  ret void
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc void @trace_riscv_iommu_mrif_notification(ptr noundef %0, i32 noundef %1, i64 noundef range(i64 0, 72057594037923841) %2) unnamed_addr #13 {
bb.a:
  %i.a = load i32, ptr @trace_events_enabled_count, align 4
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.e, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.b = load i16, ptr @_TRACE_RISCV_IOMMU_MRIF_NOTIFICATION_DSTATE, align 2
  %.not2 = icmp eq i16 %i.b, 0
  br i1 %.not2, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load i32, ptr @qemu_loglevel, align 4
  %i.d = and i32 %i.c, 32768
  %.not3 = icmp eq i32 %i.d, 0
  br i1 %.not3, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.37, ptr noundef %0, i32 noundef %1, i64 noundef %2) #17
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b, %bb.a
  ret void
}

declare void @timer_init_full(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @timer_del(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #14

attributes #0 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #4 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #7 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #11 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #13 = { inlinehint nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { noreturn nounwind }
attributes #17 = { nounwind }
attributes #18 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!7 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!8 = !{i64 2152146332}
!9 = !{ptr @riscv_iommu_notify}
!10 = !{i8 0, i8 2}
!11 = !{}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"auto-init"}
!14 = distinct !{!14, !12}
!15 = distinct !{!15, !12}
!16 = distinct !{!16, !12}
!17 = distinct !{!17, !12}
!18 = distinct !{null, ptr @riscv_iommu_notify}
!19 = distinct !{!19, !12}
!20 = distinct !{!20, !12}
!21 = distinct !{!21, !12}
!22 = distinct !{!22, !12}
end_hunk_2
