Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/hcd-xhci?download=true
inline.NumInlined: 319
inline.NumDeleted: 116
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 7
begin_hunk_0_@usb_xhci_post_load:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1804
  %i.e = load i64, ptr %i.d, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1740 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4
  %.not58 = icmp eq i32 %i.g, 0
  br i1 %.not58, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false), !annotation !7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %i.b, i8 0, i64 20, i1 false), !annotation !7
  store i64 0, ptr %i.c, align 8, !annotation !7
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 12496
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 632 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1788 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.loopexit
  %.04859 = phi i32 [ 1, %.lr.ph ], [ %i.dn, %.loopexit ] ; 4 uses
  %i.n = add i32 %.04859, -1
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds [272 x i8], ptr %i.h, i64 %i.o ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 1 ; 2 uses
  %i.r = load i8, ptr %i.q, align 1, !range !8, !noundef !9
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.t = load ptr, ptr %i.i, align 8
  %i.u = shl i32 %.04859, 3
  %i.v = sext i32 %i.u to i64
  %i.w = add i64 %i.e, %i.v
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !10
  fence seq_cst
  %i.x = call i32 @address_space_rw(ptr noundef %i.t, i64 noundef %i.w, i64 4294967296, ptr noundef nonnull %i.c, i64 noundef range(i64 1, 21) 8, i1 noundef zeroext false) #17 ; 0 uses
  %i.y = load i64, ptr %i.c, align 8              ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  store i64 %i.y, ptr %i.z, align 8
  %i.aa = load ptr, ptr %i.i, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !10
  fence seq_cst
  %i.ab = call i32 @address_space_rw(ptr noundef %i.aa, i64 noundef %i.y, i64 4294967296, ptr noundef nonnull %i.a, i64 noundef range(i64 8, 21) 16, i1 noundef zeroext false) #17
  %.not.i = icmp eq i32 %i.ab, 0
  br i1 %.not.i, label %xhci_dma_read_u32s.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ac = load i32, ptr @qemu_loglevel, align 4
  %i.ad = and i32 %i.ac, 2048
  %.not23.i = icmp eq i32 %i.ad, 0
  br i1 %.not23.i, label %bb.f, label %bb.e, !prof !11

bb.e:                                             ; preds = %bb.d
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.18, ptr noundef nonnull @__func__.xhci_dma_read_u32s) #17
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 noundef -1, i64 noundef range(i64 8, 249) 16, i1 noundef false) #17
  %i.ae = load i32, ptr %i.j, align 4
  %i.af = or i32 %i.ae, 4096
  store i32 %i.af, ptr %i.j, align 4
  br label %xhci_dma_read_u32s.exit

xhci_dma_read_u32s.exit:                          ; preds = %bb.c, %bb.f
  %i.ag = call fastcc ptr @xhci_lookup_uport(ptr noundef nonnull %0, ptr noundef %i.a) ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store ptr %i.ag, ptr %i.ah, align 8
  %.not51 = icmp eq ptr %i.ag, null
  br i1 %.not51, label %bb.g, label %bb.h

bb.g:                                             ; preds = %xhci_dma_read_u32s.exit
  store i8 0, ptr %i.p, align 8
  store i8 0, ptr %i.q, align 1
  br label %.loopexit

bb.h:                                             ; preds = %xhci_dma_read_u32s.exit
  %i.ai = load ptr, ptr %i.ag, align 8
  %.not52 = icmp eq ptr %i.ai, null
  br i1 %.not52, label %bb.i, label %.preheader

bb.i:                                             ; preds = %bb.h
  call void @__assert_fail(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef 3520, ptr noundef nonnull @__PRETTY_FUNCTION__.usb_xhci_post_load) #18
  unreachable

.preheader:                                       ; preds = %bb.h, %bb.r
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.r ], [ 1, %bb.h ] ; 4 uses
  %i.aj = load i64, ptr %i.z, align 8
  %i.ak = shl nuw nsw i64 %indvars.iv, 5
  %i.al = add i64 %i.aj, %i.ak                    ; 2 uses
  %i.am = load ptr, ptr %i.i, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !10
  fence seq_cst
  %i.an = call i32 @address_space_rw(ptr noundef %i.am, i64 noundef %i.al, i64 4294967296, ptr noundef nonnull %i.b, i64 noundef range(i64 8, 21) 20, i1 noundef zeroext false) #17
  %.not.i53 = icmp eq i32 %i.an, 0
  br i1 %.not.i53, label %xhci_dma_read_u32s.exit55, label %bb.j

bb.j:                                             ; preds = %.preheader
  %i.ao = load i32, ptr @qemu_loglevel, align 4
  %i.ap = and i32 %i.ao, 2048
  %.not23.i54 = icmp eq i32 %i.ap, 0
  br i1 %.not23.i54, label %xhci_dma_read_u32s.exit55.thread, label %bb.k, !prof !11

bb.k:                                             ; preds = %bb.j
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.18, ptr noundef nonnull @__func__.xhci_dma_read_u32s) #17
  br label %xhci_dma_read_u32s.exit55.thread

xhci_dma_read_u32s.exit55.thread:                 ; preds = %bb.j, %bb.k
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %i.b, i8 noundef -1, i64 noundef range(i64 8, 249) 20, i1 noundef false) #17
  %i.aq = load i32, ptr %i.j, align 4
  %i.ar = or i32 %i.aq, 4096
  store i32 %i.ar, ptr %i.j, align 4
  br label %bb.l

xhci_dma_read_u32s.exit55:                        ; preds = %.preheader
  %.pre = load i32, ptr %i.b, align 16
  %i.as = and i32 %.pre, 7                        ; 2 uses
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %bb.r, label %bb.l

bb.l:                                             ; preds = %xhci_dma_read_u32s.exit55.thread, %xhci_dma_read_u32s.exit55
  %i.au = phi i32 [ 7, %xhci_dma_read_u32s.exit55.thread ], [ %i.as, %xhci_dma_read_u32s.exit55 ] ; 2 uses
  %i.av = call noalias dereferenceable_or_null(136) ptr @g_malloc0(i64 noundef 136) #19 ; 20 uses
  store ptr %0, ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store i32 %.04859, ptr %i.aw, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 12
  %i.ay = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.ay, ptr %i.ax, align 4
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 40 ; 2 uses
  store ptr null, ptr %i.az, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 48
  store ptr %i.az, ptr %i.ba, align 8
  %i.bb = call noalias dereferenceable_or_null(48) ptr @g_malloc0(i64 noundef 48) #19 ; 2 uses
  call void @timer_init_full(ptr noundef %i.bb, ptr noundef null, i32 noundef 1, i32 noundef 1, i32 noundef 0, ptr noundef nonnull @xhci_ep_kick_timer, ptr noundef nonnull %i.av) #17
  %i.bc = getelementptr inbounds nuw i8, ptr %i.av, i64 128 ; 2 uses
  store ptr %i.bb, ptr %i.bc, align 8
  %i.bd = getelementptr [8 x i8], ptr %i.p, i64 %indvars.iv
  %i.be = getelementptr i8, ptr %i.bd, i64 16
  store ptr %i.av, ptr %i.be, align 8
  %i.bf = load i32, ptr %i.k, align 8             ; 2 uses
  %i.bg = and i32 %i.bf, -16
  %i.bh = load i32, ptr %i.l, align 4
  %i.bi = zext i32 %i.bg to i64
  %i.bj = zext i32 %i.bh to i64
  %i.bk = shl nuw i64 %i.bj, 32
  %i.bl = or disjoint i64 %i.bk, %i.bi            ; 3 uses
  %i.bm = load i32, ptr %i.m, align 4             ; 3 uses
  %i.bn = lshr i32 %i.bm, 3
  %i.bo = and i32 %i.bn, 7
  %i.bp = getelementptr inbounds nuw i8, ptr %i.av, i64 64
  store i32 %i.bo, ptr %i.bp, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.av, i64 72
  store i64 %i.al, ptr %i.bq, align 8
  %i.br = lshr i32 %i.bm, 16
  %i.bs = getelementptr inbounds nuw i8, ptr %i.av, i64 80
  %i.bt = lshr i32 %i.bm, 8
  %i.bu = and i32 %i.bt, 255
  %i.bv = add nuw nsw i32 %i.bu, 1
  %i.bw = mul nuw nsw i32 %i.bv, %i.br
  store i32 %i.bw, ptr %i.bs, align 8
  %i.bx = load i32, ptr %i.b, align 16            ; 3 uses
  %i.by = lshr i32 %i.bx, 10
  %i.bz = load ptr, ptr %i.av, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 1748
  %i.cb = load i32, ptr %i.ca, align 4
  %i.cc = and i32 %i.cb, %i.by                    ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.av, i64 92
  store i32 %i.cc, ptr %i.cd, align 4
  %i.ce = getelementptr inbounds nuw i8, ptr %i.av, i64 96
  %i.cf = lshr i32 %i.bx, 15
  %i.cg = trunc i32 %i.cf to i8
  %i.ch = and i8 %i.cg, 1
  store i8 %i.ch, ptr %i.ce, align 8
  %.not.i56 = icmp eq i32 %i.cc, 0
  br i1 %.not.i56, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ci = getelementptr inbounds nuw i8, ptr %i.av, i64 104 ; 2 uses
  %i.cj = load ptr, ptr %i.ci, align 8
  %i.ck = icmp eq ptr %i.cj, null
  br i1 %i.ck, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @__assert_fail(ptr noundef nonnull @.str.125, ptr noundef nonnull @.str.16, i32 noundef 883, ptr noundef nonnull @__PRETTY_FUNCTION__.xhci_alloc_streams) #18
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.cl = shl i32 2, %i.cc                        ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.av, i64 100
  store i32 %i.cl, ptr %i.cm, align 4
  %i.cn = zext i32 %i.cl to i64                   ; 2 uses
  %i.co = call noalias ptr @g_malloc0_n(i64 noundef %i.cn, i64 noundef 32) #20 ; 3 uses
  %.not.i.i.i = icmp samesign ugt i32 %i.cc, 30
  br i1 %.not.i.i.i, label %xhci_alloc_streams.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.o, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.1, %.lr.ph.i.i.i ], [ 0, %bb.o ] ; 4 uses
  %i.cp = shl i64 %indvars.iv.i.i.i, 4
  %i.cq = and i64 %i.cp, 4294967264
  %i.cr = add i64 %i.cq, %i.bl
  %i.cs = getelementptr inbounds nuw [32 x i8], ptr %i.co, i64 %indvars.iv.i.i.i ; 2 uses
  store i64 %i.cr, ptr %i.cs, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  store i32 -1, ptr %i.ct, align 8
  %indvars.iv.next.i.i.i = or disjoint i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.cu = shl i64 %indvars.iv.next.i.i.i, 4
  %i.cv = and i64 %i.cu, 4294967280
  %i.cw = add i64 %i.cv, %i.bl
  %i.cx = getelementptr inbounds nuw [32 x i8], ptr %i.co, i64 %indvars.iv.next.i.i.i ; 2 uses
  store i64 %i.cw, ptr %i.cx, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  store i32 -1, ptr %i.cy, align 8
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %exitcond.not.i.i.i.1 = icmp eq i64 %indvars.iv.next.i.i.i.1, %i.cn
  br i1 %exitcond.not.i.i.i.1, label %xhci_alloc_streams.exit.i, label %.lr.ph.i.i.i, !llvm.loop !12

xhci_alloc_streams.exit.i:                        ; preds = %.lr.ph.i.i.i, %bb.o
  store ptr %i.co, ptr %i.ci, align 8
  %.pre61 = load i32, ptr %i.b, align 16
  br label %xhci_init_epctx.exit

bb.p:                                             ; preds = %bb.l
  %i.cz = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  store i64 %i.bl, ptr %i.cz, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.db = trunc i32 %i.bf to i8
  %i.dc = and i8 %i.db, 1
  store i8 %i.dc, ptr %i.da, align 8
  br label %xhci_init_epctx.exit

xhci_init_epctx.exit:                             ; preds = %xhci_alloc_streams.exit.i, %bb.p
  %i.dd = phi i32 [ %.pre61, %xhci_alloc_streams.exit.i ], [ %i.bx, %bb.p ]
  %i.de = lshr i32 %i.dd, 16
  %i.df = and i32 %i.de, 255
  %i.dg = call i32 @llvm.umin.i32(i32 %i.df, i32 18)
  %i.dh = shl nuw nsw i32 1, %i.dg
  %i.di = getelementptr inbounds nuw i8, ptr %i.av, i64 112
  store i32 %i.dh, ptr %i.di, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.av, i64 84
  store i32 %i.au, ptr %i.dj, align 4
  %i.dk = icmp eq i32 %i.au, 1
  br i1 %i.dk, label %bb.q, label %bb.r

bb.q:                                             ; preds = %xhci_init_epctx.exit
  %i.dl = load ptr, ptr %i.bc, align 8
  %i.dm = call i64 @qemu_clock_get_ns(i32 noundef 1) #17
  call void @timer_mod(ptr noundef %i.dl, i64 noundef %i.dm) #17
  br label %bb.r

bb.r:                                             ; preds = %xhci_init_epctx.exit, %bb.q, %xhci_dma_read_u32s.exit55
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 32
  br i1 %exitcond.not, label %.loopexit, label %.preheader, !llvm.loop !14

.loopexit:                                        ; preds = %bb.r, %bb.b, %bb.g
  %i.dn = add i32 %.04859, 1                      ; 2 uses
  %i.do = load i32, ptr %i.f, align 4
  %.not = icmp ugt i32 %i.dn, %i.do
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !15

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret i32 0
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @do_qemu_init_xhci_register_types() #2 {
bb.a:
  tail call void @register_module_init(ptr noundef nonnull @xhci_register_types, i32 noundef 4) #17
  ret void
}

declare void @register_module_init(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal void @xhci_register_types() #2 {
bb.a:
  %i.a = tail call ptr @type_register_static(ptr noundef nonnull @xhci_info) #17 ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nofree nounwind sspstrong uwtable
define internal fastcc ptr @xhci_lookup_uport(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #6 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load i32, ptr %i.b, align 4
  %i.d = lshr i32 %i.c, 16
  %i.e = and i32 %i.d, 255                        ; 3 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 29904
  %i.h = load i32, ptr %i.g, align 16
  %i.i = icmp ugt i32 %i.e, %i.h
  br i1 %i.i, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, i8 0, i64 32, i1 false), !annotation !7
  %i.j = zext nneg i32 %i.e to i64
  %i.k = getelementptr [320 x i8], ptr %0, i64 %i.j
  %i.l = getelementptr i8, ptr %i.k, i64 2592
  %i.m = load ptr, ptr %i.l, align 16
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.o = load i32, ptr %i.n, align 8
  %i.p = add i32 %i.o, 1
  %i.q = call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef nonnull %i.a, i64 noundef 32, i32 noundef 1, i64 noundef 32, ptr noundef nonnull @.str.19, i32 noundef %i.p) #17 ; 2 uses
  %i.r = load i32, ptr %1, align 4
  %i.s = and i32 %i.r, 15                         ; 2 uses
  %.not = icmp eq i32 %i.s, 0
  br i1 %.not, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = sext i32 %i.q to i64                     ; 2 uses
  %i.u = getelementptr inbounds i8, ptr %i.a, i64 %i.t
  %i.v = sub nsw i64 32, %i.t
  %i.w = call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef nonnull %i.u, i64 noundef %i.v, i32 noundef 1, i64 noundef -1, ptr noundef nonnull @.str.20, i32 noundef %i.s) #17
  %i.x = load i32, ptr %1, align 4
  %i.y = lshr i32 %i.x, 4
  %i.z = and i32 %i.y, 15                         ; 2 uses
  %.not.1 = icmp eq i32 %i.z, 0
  br i1 %.not.1, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = add i32 %i.w, %i.q                      ; 2 uses
  %i.ab = sext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds i8, ptr %i.a, i64 %i.ab
  %i.ad = sub nsw i64 32, %i.ab
  %i.ae = call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef nonnull %i.ac, i64 noundef %i.ad, i32 noundef 1, i64 noundef -1, ptr noundef nonnull @.str.20, i32 noundef %i.z) #17
  %i.af = load i32, ptr %1, align 4
  %i.ag = lshr i32 %i.af, 8
  %i.ah = and i32 %i.ag, 15                       ; 2 uses
  %.not.2 = icmp eq i32 %i.ah, 0
  br i1 %.not.2, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = add i32 %i.ae, %i.aa                    ; 2 uses
  %i.aj = sext i32 %i.ai to i64                   ; 2 uses
  %i.ak = getelementptr inbounds i8, ptr %i.a, i64 %i.aj
  %i.al = sub nsw i64 32, %i.aj
  %i.am = call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef nonnull %i.ak, i64 noundef %i.al, i32 noundef 1, i64 noundef -1, ptr noundef nonnull @.str.20, i32 noundef %i.ah) #17
  %i.an = load i32, ptr %1, align 4
  %i.ao = lshr i32 %i.an, 12
  %i.ap = and i32 %i.ao, 15                       ; 2 uses
  %.not.3 = icmp eq i32 %i.ap, 0
  br i1 %.not.3, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aq = add i32 %i.am, %i.ai                    ; 2 uses
  %i.ar = sext i32 %i.aq to i64                   ; 2 uses
  %i.as = getelementptr inbounds i8, ptr %i.a, i64 %i.ar
  %i.at = sub nsw i64 32, %i.ar
  %i.au = call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef nonnull %i.as, i64 noundef %i.at, i32 noundef 1, i64 noundef -1, ptr noundef nonnull @.str.20, i32 noundef %i.ap) #17
  %i.av = load i32, ptr %1, align 4
  %i.aw = lshr i32 %i.av, 16
  %i.ax = and i32 %i.aw, 15                       ; 2 uses
  %.not.4 = icmp eq i32 %i.ax, 0
  br i1 %.not.4, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ay = add i32 %i.au, %i.aq
  %i.az = sext i32 %i.ay to i64                   ; 2 uses
  %i.ba = getelementptr inbounds i8, ptr %i.a, i64 %i.az
  %i.bb = sub nsw i64 32, %i.az
  %i.bc = call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef nonnull %i.ba, i64 noundef %i.bb, i32 noundef 1, i64 noundef -1, ptr noundef nonnull @.str.20, i32 noundef %i.ax) #17 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 312
  %.02330 = load ptr, ptr %i.bd, align 8          ; 2 uses
  %.not2731 = icmp eq ptr %.02330, null
  br i1 %.not2731, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.i, %bb.j
  %.02332 = phi ptr [ %.023, %bb.j ], [ %.02330, %bb.i ] ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.02332, i64 16
  %i.bf = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.be, ptr noundef nonnull dereferenceable(1) %i.a) #21
  %i.bg = icmp eq i32 %i.bf, 0
  br i1 %i.bg, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  %i.bh = getelementptr inbounds nuw i8, ptr %.02332, i64 56
  %.023 = load ptr, ptr %i.bh, align 8            ; 2 uses
  %.not27 = icmp eq ptr %.023, null
  br i1 %.not27, label %.loopexit, label %.lr.ph, !llvm.loop !16

.loopexit:                                        ; preds = %.lr.ph, %bb.j, %bb.i, %bb.a, %bb.b
  %.024 = phi ptr [ null, %bb.b ], [ null, %bb.a ], [ null, %bb.i ], [ %.02332, %.lr.ph ], [ null, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret ptr %.024
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @xhci_init_epctx(ptr nofree noundef captures(none) initializes((64, 68), (72, 84), (92, 97)) %0, i64 noundef %1, ptr nofree noundef nonnull readonly captures(none) %2) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4
  %i.c = and i32 %i.b, -16
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.e = load i32, ptr %i.d, align 4
  %i.f = zext i32 %i.c to i64
  %i.g = zext i32 %i.e to i64
  %i.h = shl nuw i64 %i.g, 32
  %i.i = or disjoint i64 %i.h, %i.f               ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  %i.k = load i32, ptr %i.j, align 4
  %i.l = lshr i32 %i.k, 3
  %i.m = and i32 %i.l, 7
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %i.m, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %1, ptr %i.o, align 8
  %i.p = load i32, ptr %i.j, align 4
  %i.q = lshr i32 %i.p, 16                        ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  store i32 %i.q, ptr %i.r, align 8
  %i.s = load i32, ptr %i.j, align 4
  %i.t = lshr i32 %i.s, 8
  %i.u = and i32 %i.t, 255
  %i.v = add nuw nsw i32 %i.u, 1
  %i.w = mul nuw nsw i32 %i.v, %i.q
  store i32 %i.w, ptr %i.r, align 8
  %i.x = load i32, ptr %2, align 4
  %i.y = lshr i32 %i.x, 10
  %i.z = load ptr, ptr %0, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 1748
  %i.ab = load i32, ptr %i.aa, align 4
  %i.ac = and i32 %i.ab, %i.y                     ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 %i.ac, ptr %i.ad, align 4
  %i.ae = load i32, ptr %2, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ag = lshr i32 %i.ae, 15
  %i.ah = trunc i32 %i.ag to i8
  %i.ai = and i8 %i.ah, 1
  store i8 %i.ai, ptr %i.af, align 8
  %.not = icmp eq i32 %i.ac, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @__assert_fail(ptr noundef nonnull @.str.125, ptr noundef nonnull @.str.16, i32 noundef 883, ptr noundef nonnull @__PRETTY_FUNCTION__.xhci_alloc_streams) #18
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.am = shl i32 2, %i.ac                        ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i32 %i.am, ptr %i.an, align 4
  %i.ao = zext i32 %i.am to i64                   ; 2 uses
  %i.ap = tail call noalias ptr @g_malloc0_n(i64 noundef %i.ao, i64 noundef 32) #20 ; 3 uses
  %.not.i.i = icmp samesign ugt i32 %i.ac, 30
  br i1 %.not.i.i, label %xhci_alloc_streams.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.1, %.lr.ph.i.i ], [ 0, %bb.d ] ; 4 uses
  %i.aq = shl i64 %indvars.iv.i.i, 4
  %i.ar = and i64 %i.aq, 4294967264
  %i.as = add i64 %i.ar, %i.i
  %i.at = getelementptr inbounds nuw [32 x i8], ptr %i.ap, i64 %indvars.iv.i.i ; 2 uses
  store i64 %i.as, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i32 -1, ptr %i.au, align 8
  %indvars.iv.next.i.i = or disjoint i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.av = shl i64 %indvars.iv.next.i.i, 4
  %i.aw = and i64 %i.av, 4294967280
  %i.ax = add i64 %i.aw, %i.i
  %i.ay = getelementptr inbounds nuw [32 x i8], ptr %i.ap, i64 %indvars.iv.next.i.i ; 2 uses
  store i64 %i.ax, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store i32 -1, ptr %i.az, align 8
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %indvars.iv.next.i.i.1, %i.ao
  br i1 %exitcond.not.i.i.1, label %xhci_alloc_streams.exit, label %.lr.ph.i.i, !llvm.loop !12

xhci_alloc_streams.exit:                          ; preds = %.lr.ph.i.i, %bb.d
  store ptr %i.ap, ptr %i.aj, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.i, ptr %i.ba, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store i8 1, ptr %i.bb, align 8
  %i.bc = load i32, ptr %i.a, align 4
  %i.bd = trunc i32 %i.bc to i8
  %i.be = and i8 %i.bd, 1
  store i8 %i.be, ptr %i.bb, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %xhci_alloc_streams.exit
  %i.bf = load i32, ptr %2, align 4
  %i.bg = lshr i32 %i.bf, 16
  %i.bh = and i32 %i.bg, 255
  %i.bi = tail call i32 @llvm.umin.i32(i32 %i.bh, i32 18)
  %i.bj = shl nuw nsw i32 1, %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i32 %i.bj, ptr %i.bk, align 8
  ret void
}

declare void @timer_mod(ptr noundef, i64 noundef) local_unnamed_addr #3

declare i64 @qemu_clock_get_ns(i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

declare i32 @address_space_rw(ptr noundef, i64 noundef, i64, ptr noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #3

declare void @qemu_log(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree
declare i32 @__snprintf_chk(ptr noundef, i64 noundef, i32 noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: allocsize(0)
declare noalias ptr @g_malloc0(i64 noundef) local_unnamed_addr #10

; Function Attrs: allocsize(0,1)
declare noalias ptr @g_malloc0_n(i64 noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: nounwind sspstrong uwtable
define internal void @xhci_ep_kick_timer(ptr noundef %0) #2 {
bb.a:
  tail call fastcc void @xhci_kick_epctx(ptr noundef %0, i32 noundef 0)
  ret void
}

declare void @timer_init_full(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @xhci_kick_epctx(ptr noundef %0, i32 noundef %1) unnamed_addr #2 {
bb.a:
  %2 = alloca %struct.XHCITRB, align 8            ; 7 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %3 = alloca %struct.XHCIEvent, align 8          ; 8 uses
  %i.b = load ptr, ptr %0, align 8                ; 13 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.d = load i32, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.f = load i32, ptr %i.e, align 4
  %i.g = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %trace_usb_xhci_ep_kick.exit, label %bb.b, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.h = load i16, ptr @_TRACE_USB_XHCI_EP_KICK_DSTATE, align 2
  %.not3.i = icmp eq i16 %i.h, 0
  br i1 %.not3.i, label %trace_usb_xhci_ep_kick.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr @qemu_loglevel, align 4
  %i.j = and i32 %i.i, 32768
  %.not4.i = icmp eq i32 %i.j, 0
  br i1 %.not4.i, label %trace_usb_xhci_ep_kick.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.26, i32 noundef %i.d, i32 noundef %i.f, i32 noundef %1) #17
  br label %trace_usb_xhci_ep_kick.exit

trace_usb_xhci_ep_kick.exit:                      ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 7 uses
  %i.l = load i32, ptr %i.k, align 8
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %trace_usb_xhci_ep_kick.exit
  tail call void @__assert_fail(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.16, i32 noundef 1894, ptr noundef nonnull @__PRETTY_FUNCTION__.xhci_kick_epctx) #18
  unreachable

bb.f:                                             ; preds = %trace_usb_xhci_ep_kick.exit
  %i.m = load i32, ptr %i.c, align 8
  %i.n = add i32 %i.m, -1
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr [272 x i8], ptr %i.b, i64 %i.o
  %i.q = getelementptr i8, ptr %i.p, i64 12512
  %i.r = load ptr, ptr %i.q, align 16             ; 2 uses
  %.not.i134 = icmp eq ptr %i.r, null
  br i1 %.not.i134, label %xhci_slot_ok.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %.not6.i = icmp eq ptr %i.s, null
  br i1 %.not6.i, label %xhci_slot_ok.exit.thread, label %xhci_slot_ok.exit

xhci_slot_ok.exit:                                ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 256
  %i.u = load i8, ptr %i.t, align 8, !range !8, !noundef !9
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.h, label %xhci_slot_ok.exit.thread

bb.h:                                             ; preds = %xhci_slot_ok.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.x = load ptr, ptr %i.w, align 8              ; 16 uses
  %.not123 = icmp eq ptr %i.x, null
  br i1 %.not123, label %bb.ae, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i135 = icmp eq i32 %i.y, 0
  br i1 %.not.i135, label %trace_usb_xhci_xfer_retry.exit, label %bb.j, !prof !11

bb.j:                                             ; preds = %bb.i
  %i.z = load i16, ptr @_TRACE_USB_XHCI_XFER_RETRY_DSTATE, align 2
  %.not1.i = icmp eq i16 %i.z, 0
  br i1 %.not1.i, label %trace_usb_xhci_xfer_retry.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aa = load i32, ptr @qemu_loglevel, align 4
  %i.ab = and i32 %i.aa, 32768
  %.not2.i = icmp eq i32 %i.ab, 0
  br i1 %.not2.i, label %trace_usb_xhci_xfer_retry.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.27, ptr noundef nonnull %i.x) #17
  br label %trace_usb_xhci_xfer_retry.exit

trace_usb_xhci_xfer_retry.exit:                   ; preds = %bb.i, %bb.j, %bb.k, %bb.l
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 185 ; 4 uses
  %i.ad = load i8, ptr %i.ac, align 1, !range !8, !noundef !9
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %bb.n, label %bb.m

bb.m:                                             ; preds = %trace_usb_xhci_xfer_retry.exit
  tail call void @__assert_fail(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.16, i32 noundef 1906, ptr noundef nonnull @__PRETTY_FUNCTION__.xhci_kick_epctx) #18
  unreachable

bb.n:                                             ; preds = %trace_usb_xhci_xfer_retry.exit
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 198 ; 2 uses
  %i.ag = load i8, ptr %i.af, align 2, !range !8, !noundef !9
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.ai = tail call i64 @qemu_clock_get_ns(i32 noundef 1) #17
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 29912
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = sub i64 %i.ai, %i.ak
  %i.am = sdiv i64 %i.al, 125000                  ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.x, i64 232 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8            ; 2 uses
  %i.ap = icmp ugt i64 %i.ao, %i.am
  br i1 %i.ap, label %xhci_check_intr_iso_kick.exit.thread, label %bb.p

xhci_check_intr_iso_kick.exit.thread:             ; preds = %bb.o
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = tail call i64 @qemu_clock_get_ns(i32 noundef 1) #17
  %i.at = load i64, ptr %i.an, align 8
  %i.au = sub i64 %i.at, %i.am
  %i.av = mul i64 %i.au, 125000
  %i.aw = add i64 %i.av, %i.as
  tail call void @timer_mod(ptr noundef %i.ar, i64 noundef %i.aw) #17
  store i8 1, ptr %i.ac, align 1
  br label %xhci_slot_ok.exit.thread

bb.p:                                             ; preds = %bb.o
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 %i.ao, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.az = load ptr, ptr %i.ay, align 8
  tail call void @timer_del(ptr noundef %i.az) #17
end_hunk_0
