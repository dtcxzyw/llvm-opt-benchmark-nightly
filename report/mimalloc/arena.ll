Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mimalloc/original/arena?download=true
inline.NumInlined: 308
inline.NumDeleted: 108
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@mi_debug_show_arenas:bb.a
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca [2624 x i8], align 16             ; 24 uses
  %i.c = tail call ptr @mi_heap_main() #17
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !40   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load atomic i64, ptr %i.e monotonic, align 8 ; 2 uses
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %mi_debug_show_arenas_ex.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %.0.sroa.gep.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  br label %bb.b

bb.b:                                             ; preds = %bb.br, %.lr.ph.i
  %.035.i = phi i64 [ 0, %.lr.ph.i ], [ %.2.i, %bb.br ] ; 2 uses
  %.03034.i = phi i64 [ 0, %.lr.ph.i ], [ %i.if, %bb.br ] ; 3 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.03034.i
  %i.k = load atomic ptr, ptr %i.j acquire, align 8 ; 14 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.br, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 104
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !28
  %i.o = icmp eq ptr %i.n, null
  %i.p = select i1 %i.o, ptr @.str.16, ptr @.str.18
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 48 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !71   ; 2 uses
  %i.s = lshr i64 %i.r, 4
  %i.t = and i64 %i.s, 17592186044415
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 20
  %i.v = load i8, ptr %i.u, align 4, !tbaa !72, !range !26, !noundef !27
  %i.w = trunc nuw i8 %i.v to i1
  %i.x = select i1 %i.w, ptr @.str.19, ptr @.str.16
  %i.y = getelementptr inbounds nuw i8, ptr %i.k, i64 68
  %i.z = load i8, ptr %i.y, align 4, !tbaa !25, !range !26, !noundef !27
  %i.aa = trunc nuw i8 %i.z to i1
  %i.ab = select i1 %i.aa, ptr @.str.20, ptr @.str.16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 3 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !62
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !137
  %i.af = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !85
  call void (ptr, ...) @_mi_raw_message(ptr noundef nonnull @.str.17, ptr noundef nonnull %i.p, i64 noundef %.03034.i, ptr noundef nonnull %i.k, i64 noundef %i.r, i64 noundef %i.t, ptr noundef nonnull %i.x, ptr noundef nonnull %i.ab, i64 noundef %i.ae, i32 noundef %i.ag) #17
  %i.ah = load i64, ptr %i.q, align 8, !tbaa !71  ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.k, i64 112 ; 4 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !73 ; 2 uses
  %i.ak = load atomic i64, ptr %i.aj monotonic, align 64 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 128
  call void (ptr, ...) @_mi_raw_message(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.24) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.am = load ptr, ptr %i.ai, align 8, !tbaa !73
  %i.an = call zeroext i1 @mi_bbitmap_bsr_inv(ptr noundef %i.am, ptr noundef nonnull %i.a) #17
  br i1 %i.an, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ao = load i64, ptr %i.a, align 8, !tbaa !31
  %i.ap = add i64 %i.ao, 1
  br label %mi_arena_used_slices.exit.i.i

bb.e:                                             ; preds = %bb.c
  %i.aq = getelementptr i8, ptr %i.k, i64 56
  %.val.i.i.i = load i64, ptr %i.aq, align 8, !tbaa !70
  br label %mi_arena_used_slices.exit.i.i

mi_arena_used_slices.exit.i.i:                    ; preds = %bb.e, %bb.d
  %.0.i.i.i = phi i64 [ %i.ap, %bb.d ], [ %.val.i.i.i, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.ar = icmp ne i64 %i.ak, 0
  %i.as = icmp ne i64 %i.ah, 0
  %i.at = and i1 %i.as, %i.ar
  br i1 %i.at, label %.lr.ph.i.i, label %mi_debug_show_chunks.exit.i

.lr.ph.i.i:                                       ; preds = %mi_arena_used_slices.exit.i.i
  %i.au = add i64 %i.ak, -1                       ; 2 uses
  %i.av = getelementptr i8, ptr %i.k, i64 40      ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.k, i64 56 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.k, i64 136 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.k, i64 120 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.q, %.lr.ph.i.i
  %.05841.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.cc, %bb.q ] ; 3 uses
  %.06040.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %.2.i.i, %bb.q ]
  %.06239.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.ic, %bb.q ] ; 3 uses
  %.01438.i.i = phi i32 [ 37, %.lr.ph.i.i ], [ %.216.i.i, %bb.q ]
  %.01737.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %.219.i.i, %bb.q ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.az = load i64, ptr @_mi_cpu_stosb_max, align 8, !tbaa !31
  %.not.i.i.i.i = icmp ult i64 %i.az, 2624
  br i1 %.not.i.i.i.i, label %bb.h, label %bb.g, !prof !30

bb.g:                                             ; preds = %bb.f
  %i.ba = call { ptr, i64 } asm sideeffect "rep stosb", "={di},={cx},{ax},0,1,~{memory},~{dirflag},~{fpsr},~{flags}"(i8 range(i8 0, 112) 0, ptr nonnull %i.b, i64 2624) #20, !srcloc !84 ; 0 uses
  br label %_mi_memzero.exit.i.i

bb.h:                                             ; preds = %bb.f
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2624) %i.b, i8 0, i64 2624, i1 false)
  br label %_mi_memzero.exit.i.i

_mi_memzero.exit.i.i:                             ; preds = %bb.h, %bb.g
  %i.bb = icmp ugt i64 %.06239.i.i, %.0.i.i.i
  %i.bc = add i64 %.05841.i.i, 2
  %i.bd = icmp ult i64 %i.bc, %i.ak
  %or.cond.i.i = and i1 %i.bd, %i.bb
  br i1 %or.cond.i.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_mi_memzero.exit.i.i
  %i.be = sub nuw i64 %i.au, %.05841.i.i
  %i.bf = shl i64 %i.be, 9
  %i.bg = add i64 %i.bf, %.06239.i.i
  call void (ptr, ...) @_mi_raw_message(ptr noundef nonnull @.str.27) #17
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_mi_memzero.exit.i.i
  %.163.i.i = phi i64 [ %i.bg, %bb.i ], [ %.06239.i.i, %_mi_memzero.exit.i.i ]
  %.159.i.i = phi i64 [ %i.au, %bb.i ], [ %.05841.i.i, %_mi_memzero.exit.i.i ] ; 8 uses
  %i.bh = icmp ult i64 %.159.i.i, 10
  br i1 %i.bh, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bi = trunc nuw nsw i64 %.159.i.i to i8
  %i.bj = or disjoint i8 %i.bi, 48
  store i8 %i.bj, ptr %i.b, align 16, !tbaa !15
  store i8 32, ptr %i.h, align 1, !tbaa !15
  br label %.sink.split.i.i

bb.l:                                             ; preds = %bb.j
  %i.bk = icmp ult i64 %.159.i.i, 100
  br i1 %i.bk, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %.lhs.trunc.i.i = trunc nuw nsw i64 %.159.i.i to i8 ; 2 uses
  %i.bl = udiv i8 %.lhs.trunc.i.i, 10
  %i.bm = or disjoint i8 %i.bl, 48
  store i8 %i.bm, ptr %i.b, align 16, !tbaa !15
  %i.bn = urem i8 %.lhs.trunc.i.i, 10
  %i.bo = or disjoint i8 %i.bn, 48
  store i8 %i.bo, ptr %i.h, align 1, !tbaa !15
  br label %.sink.split.i.i

bb.n:                                             ; preds = %bb.l
  %i.bp = icmp ult i64 %.159.i.i, 1000
  br i1 %i.bp, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %.lhs.trunc22.i.i = trunc nuw nsw i64 %.159.i.i to i16 ; 3 uses
  %i.bq = udiv i16 %.lhs.trunc22.i.i, 100
  %i.br = trunc nuw nsw i16 %i.bq to i8
  %i.bs = or disjoint i8 %i.br, 48
  store i8 %i.bs, ptr %i.b, align 16, !tbaa !15
  %i.bt = urem i16 %.lhs.trunc22.i.i, 100
  %.lhs.trunc26.i.i = trunc nuw nsw i16 %i.bt to i8
  %i.bu = udiv i8 %.lhs.trunc26.i.i, 10
  %i.bv = or disjoint i8 %i.bu, 48
  store i8 %i.bv, ptr %i.h, align 1, !tbaa !15
  %i.bw = urem i16 %.lhs.trunc22.i.i, 10
  %i.bx = trunc nuw nsw i16 %i.bw to i8
  %i.by = or disjoint i8 %i.bx, 48
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.o, %bb.m, %bb.k
  %.sink.i.i = phi i8 [ 32, %bb.m ], [ %i.by, %bb.o ], [ 32, %bb.k ]
  store i8 %.sink.i.i, ptr %i.i, align 2, !tbaa !15
  br label %bb.p

bb.p:                                             ; preds = %.sink.split.i.i, %bb.n
  %.0.sroa.phi.i.i = phi ptr [ %i.b, %bb.n ], [ %.0.sroa.gep.i.i, %.sink.split.i.i ] ; 2 uses
  %.0.i.i = phi i64 [ 2, %bb.n ], [ 5, %.sink.split.i.i ]
  %i.bz = call i32 @mi_bbitmap_debug_get_bin(ptr noundef nonnull %i.al, i64 noundef %.159.i.i) #17 ; 2 uses
  %i.ca = icmp ult i32 %i.bz, 5
  %switch.cast = zext i32 %i.bz to i40
  %switch.shiftamt = shl nuw nsw i40 %switch.cast, 3
  %switch.downshift = lshr i40 310517782611, %switch.shiftamt
  %switch.masked = trunc i40 %switch.downshift to i8
  %.057.i.i = select i1 %i.ca, i8 %switch.masked, i8 32
  store i8 %.057.i.i, ptr %.0.sroa.phi.i.i, align 1, !tbaa !15
  %i.cb = getelementptr inbounds nuw i8, ptr %.0.sroa.phi.i.i, i64 1
  store i8 32, ptr %i.cb, align 1, !tbaa !15
  br label %bb.r

bb.q:                                             ; preds = %bb.bq
  call void (ptr, ...) @_mi_raw_message(ptr noundef nonnull @.str.28, ptr noundef nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  %i.cc = add nuw i64 %.159.i.i, 1                ; 2 uses
  %i.cd = icmp ult i64 %i.cc, %i.ak
  %i.ce = icmp ult i64 %i.ic, %i.ah
  %i.cf = select i1 %i.cd, i1 %i.ce, i1 false
  br i1 %i.cf, label %bb.f, label %mi_debug_show_chunks.exit.i, !llvm.loop !133

bb.r:                                             ; preds = %bb.bq, %bb.p
  %.05636.i.i = phi i64 [ 0, %bb.p ], [ %i.id, %bb.bq ] ; 3 uses
  %.16135.i.i = phi i64 [ %.06040.i.i, %bb.p ], [ %.2.i.i, %bb.bq ] ; 2 uses
  %.26434.i.i = phi i64 [ %.163.i.i, %bb.p ], [ %i.ic, %bb.bq ] ; 5 uses
  %.133.i.i = phi i64 [ %.0.i.i, %bb.p ], [ %.6.i.i, %bb.bq ]
  %.11532.i.i = phi i32 [ %.01438.i.i, %bb.p ], [ %.216.i.i, %bb.bq ] ; 2 uses
  %.11831.i.i = phi i64 [ %.01737.i.i, %bb.p ], [ %.219.i.i, %bb.bq ] ; 2 uses
  %.not69.i.i = icmp eq i64 %.05636.i.i, 0
  %0 = trunc i64 %.05636.i.i to i1
  %or.cond71.i.i = or i1 %.not69.i.i, %0
  br i1 %or.cond71.i.i, label %_mi_memset.exit.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void (ptr, ...) @_mi_raw_message(ptr noundef nonnull @.str.28, ptr noundef nonnull %i.b) #17
  %i.cg = load i64, ptr @_mi_cpu_stosb_max, align 8, !tbaa !31 ; 2 uses
  %.not.i.i73.i.i = icmp ult i64 %i.cg, 2624
  br i1 %.not.i.i73.i.i, label %bb.u, label %bb.t, !prof !30

bb.t:                                             ; preds = %bb.s
  %i.ch = call { ptr, i64 } asm sideeffect "rep stosb", "={di},={cx},{ax},0,1,~{memory},~{dirflag},~{fpsr},~{flags}"(i8 range(i8 0, 112) 0, ptr nonnull %i.b, i64 2624) #20, !srcloc !84 ; 0 uses
  %.pre.i.i = load i64, ptr @_mi_cpu_stosb_max, align 8, !tbaa !31
  br label %_mi_memzero.exit74.i.i

bb.u:                                             ; preds = %bb.s
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2624) %i.b, i8 0, i64 2624, i1 false)
  br label %_mi_memzero.exit74.i.i

_mi_memzero.exit74.i.i:                           ; preds = %bb.u, %bb.t
  %i.ci = phi i64 [ %.pre.i.i, %bb.t ], [ %i.cg, %bb.u ]
  %.not.i.i.i = icmp ult i64 %i.ci, 5
  br i1 %.not.i.i.i, label %bb.w, label %bb.v, !prof !30

bb.v:                                             ; preds = %_mi_memzero.exit74.i.i
  %i.cj = call { ptr, i64 } asm sideeffect "rep stosb", "={di},={cx},{ax},0,1,~{memory},~{dirflag},~{fpsr},~{flags}"(i8 range(i8 0, 112) 32, ptr nonnull %i.b, i64 5) #20, !srcloc !84 ; 0 uses
  br label %_mi_memset.exit.i.i

bb.w:                                             ; preds = %_mi_memzero.exit74.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(5) %i.b, i8 32, i64 5, i1 false)
  br label %_mi_memset.exit.i.i

_mi_memset.exit.i.i:                              ; preds = %bb.w, %bb.v, %bb.r
  %.213.i.i = phi i64 [ %.133.i.i, %bb.r ], [ 5, %bb.v ], [ 5, %bb.w ] ; 3 uses
  %i.ck = icmp ult i64 %.26434.i.i, %i.ah
  br i1 %i.ck, label %bb.x, label %bb.bn

bb.x:                                             ; preds = %_mi_memset.exit.i.i
  %i.cl = and i64 %.26434.i.i, 4095
  %i.cm = icmp ne i64 %i.cl, 0
  br label %bb.as

.peel.begin.i.i.i:                                ; preds = %bb.bm
  %i.cn = add i64 %.26434.i.i, 63                 ; 5 uses
  %.val.i.peel.i.i.i = load ptr, ptr %i.av, align 8, !tbaa !29
  %i.co = shl i64 %i.cn, 16
  %i.cp = getelementptr inbounds nuw i8, ptr %.val.i.peel.i.i.i, i64 %i.co ; 2 uses
  %i.cq = call ptr @_mi_safe_ptr_page(ptr noundef %i.cp) #17 ; 14 uses
  %.not.peel.i.i.i = icmp eq ptr %i.cq, null
  br i1 %.not.peel.i.i.i, label %bb.ak, label %bb.y

bb.y:                                             ; preds = %.peel.begin.i.i.i
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 48 ; 2 uses
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !64
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.cs
  %i.cu = ptrtoint ptr %i.ct to i64
  %i.cv = and i64 %i.cu, -65536
  %i.cw = inttoptr i64 %i.cv to ptr
  %i.cx = icmp eq ptr %i.cp, %i.cw
  br i1 %i.cx, label %bb.z, label %bb.ak

bb.z:                                             ; preds = %bb.y
  %i.cy = add i64 %.168.i.i.i, 1
  %i.cz = load ptr, ptr %i.ac, align 8, !tbaa !62
  %i.da = call zeroext i1 @_mi_meta_is_meta_page(ptr noundef %i.cz, ptr noundef nonnull %i.cq) #17
  br i1 %i.da, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.db = getelementptr i8, ptr %i.cq, i64 58
  %.val77.peel.i.i.i = load i16, ptr %i.db, align 2, !tbaa !66 ; 2 uses
  %i.dc = icmp eq i16 %.val77.peel.i.i.i, 1
  br i1 %i.dc, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dd = getelementptr i8, ptr %i.cq, i64 24
  %.val.peel.i.i.i = load i64, ptr %i.dd, align 8, !tbaa !65
  %i.de = zext i16 %.val77.peel.i.i.i to i64
  %i.df = icmp eq i64 %.val.peel.i.i.i, %i.de
  %spec.select.peel.i.i.i = select i1 %i.df, i8 102, i8 112
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z
  %.0.peel.i.i.i = phi i8 [ %spec.select.peel.i.i.i, %bb.ab ], [ 109, %bb.z ], [ 115, %bb.aa ] ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.dh = load atomic i64, ptr %i.dg monotonic, align 8
  %i.di = and i64 %i.dh, -4
  %i.dj = icmp ult i64 %i.di, 5
  br i1 %i.dj, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dk = call signext i8 @_mi_toupper(i8 noundef signext %.0.peel.i.i.i) #17
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.1.peel.i.i.i = phi i8 [ %.0.peel.i.i.i, %bb.ac ], [ %i.dk, %bb.ad ]
  %i.dl = getelementptr i8, ptr %i.cq, i64 60
  %.val.i.i.peel.i.i.i = load i16, ptr %i.dl, align 4, !tbaa !60
  %i.dm = zext i16 %.val.i.i.peel.i.i.i to i64
  %i.dn = call i64 @_mi_os_page_size() #17
  %i.do = mul i64 %i.dn, %i.dm                    ; 2 uses
  %i.dp = icmp eq i64 %i.do, 0
  br i1 %i.dp, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dq = load i64, ptr %i.cr, align 8, !tbaa !64
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.dq
  %i.ds = ptrtoint ptr %i.dr to i64
  %i.dt = and i64 %i.ds, 65535
  %i.du = sub i64 %i.do, %i.dt
  %.phi.trans.insert.i.peel.i.i.i = getelementptr i8, ptr %i.cq, i64 40
  %.val.pre.i.peel.i.i.i = load i64, ptr %.phi.trans.insert.i.peel.i.i.i, align 8, !tbaa !63
  br label %mi_page_commit_usage.exit.peel.i.i.i

bb.ag:                                            ; preds = %bb.ae
  %i.dv = getelementptr i8, ptr %i.cq, i64 40
  %.val4.i.i.peel.i.i.i = load i64, ptr %i.dv, align 8, !tbaa !63 ; 2 uses
  %i.dw = getelementptr i8, ptr %i.cq, i64 58
  %.val5.i.i.peel.i.i.i = load i16, ptr %i.dw, align 2, !tbaa !66
  %i.dx = zext i16 %.val5.i.i.peel.i.i.i to i64
  %i.dy = mul i64 %.val4.i.i.peel.i.i.i, %i.dx
  br label %mi_page_commit_usage.exit.peel.i.i.i

mi_page_commit_usage.exit.peel.i.i.i:             ; preds = %bb.ag, %bb.af
  %.val.i78.peel.i.i.i = phi i64 [ %.val4.i.i.peel.i.i.i, %bb.ag ], [ %.val.pre.i.peel.i.i.i, %bb.af ]
  %i.dz = phi i64 [ %i.dy, %bb.ag ], [ %i.du, %bb.af ]
  %i.ea = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !65
  %i.ec = mul i64 %.val.i78.peel.i.i.i, 100
  %i.ed = mul i64 %i.ec, %i.eb
  %i.ee = udiv i64 %i.ed, %i.dz
  %i.ef = trunc i64 %i.ee to i32                  ; 3 uses
  %i.eg = icmp slt i32 %i.ef, 25
  br i1 %i.eg, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %mi_page_commit_usage.exit.peel.i.i.i
  %i.eh = icmp samesign ult i32 %i.ef, 50
  br i1 %i.eh, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ei = icmp samesign ult i32 %i.ef, 75
  %..peel.i.i.i = select i1 %i.ei, i32 36, i32 32
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah, %mi_page_commit_usage.exit.peel.i.i.i
  %.162.peel.i.i.i = phi i32 [ 33, %bb.ah ], [ 31, %mi_page_commit_usage.exit.peel.i.i.i ], [ %..peel.i.i.i, %bb.ai ]
  %i.ej = getelementptr inbounds nuw i8, ptr %i.cq, i64 116
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !15
  %i.el = zext i32 %i.ek to i64
  br label %bb.aq

bb.ak:                                            ; preds = %bb.y, %.peel.begin.i.i.i
  %i.em = icmp sgt i64 %.166.i.i.i, 1
  br i1 %i.em, label %bb.ap, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.en = load i64, ptr %i.aw, align 8, !tbaa !70
  %.not98.i.i.i = icmp ult i64 %i.cn, %i.en
  br i1 %.not98.i.i.i, label %bb.ap, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.eo = load ptr, ptr %i.ai, align 8, !tbaa !73
  %i.ep = call zeroext i1 @mi_bbitmap_is_xsetN(i1 noundef zeroext true, ptr noundef %i.eo, i64 noundef %i.cn, i64 noundef 1) #17
  br i1 %i.ep, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %bb.am
  %i.eq = load ptr, ptr %i.ax, align 8, !tbaa !76
  %i.er = call zeroext i1 @mi_bitmap_is_xsetN(i1 noundef zeroext true, ptr noundef %i.eq, i64 noundef %i.cn, i64 noundef 1) #17
  br i1 %i.er, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.es = load ptr, ptr %i.ay, align 8, !tbaa !61
  %i.et = call zeroext i1 @mi_bitmap_is_xsetN(i1 noundef zeroext true, ptr noundef %i.es, i64 noundef %i.cn, i64 noundef 1) #17
  %.74.peel.i.i.i = select i1 %i.et, i8 95, i8 46
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak
  %.263.peel.i.i.i = phi i32 [ %.364.i.i.i, %bb.am ], [ %.364.i.i.i, %bb.ak ], [ 37, %bb.al ], [ 33, %bb.an ], [ 37, %bb.ao ]
  %.2.peel.i.i.i = phi i8 [ 63, %bb.am ], [ 45, %bb.ak ], [ 105, %bb.al ], [ 126, %bb.an ], [ %.74.peel.i.i.i, %bb.ao ]
  %i.eu = icmp sgt i64 %.166.i.i.i, 2
  %spec.select75.peel.i.i.i = select i1 %i.eu, i8 62, i8 %.2.peel.i.i.i
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.aj
  %.168.peel.i.i.i = phi i64 [ %i.cy, %bb.aj ], [ %.168.i.i.i, %bb.ap ]
  %.166.peel.i.i.i = phi i64 [ %i.el, %bb.aj ], [ %i.hn, %bb.ap ]
  %.364.peel.i.i.i = phi i32 [ %.162.peel.i.i.i, %bb.aj ], [ %.263.peel.i.i.i, %bb.ap ] ; 3 uses
  %.3.peel.i.i.i = phi i8 [ %.1.peel.i.i.i, %bb.aj ], [ %spec.select75.peel.i.i.i, %bb.ap ]
  %.not73.peel.i.i.i = icmp eq i32 %.364.peel.i.i.i, %.160.i.i.i
  br i1 %.not73.peel.i.i.i, label %mi_debug_show_page_bfield.exit.i.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ev = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.hm
  %i.ew = call i32 (ptr, i64, ptr, ...) @_mi_snprintf(ptr noundef nonnull %i.ev, i64 noundef 32, ptr noundef nonnull @.str.30, i32 noundef %.364.peel.i.i.i) #17
  %i.ex = sext i32 %i.ew to i64
  %i.ey = add i64 %i.hm, %i.ex
  br label %mi_debug_show_page_bfield.exit.i.i

bb.as:                                            ; preds = %bb.bm, %bb.x
  %.3.i.i = phi i64 [ %.213.i.i, %bb.x ], [ %i.hm, %bb.bm ] ; 3 uses
  %indvars.iv.i.i.i = phi i64 [ 0, %bb.x ], [ %indvars.iv.next.i.i.i, %bb.bm ] ; 3 uses
  %.05983.i.i.i = phi i32 [ 37, %bb.x ], [ %.160.i.i.i, %bb.bm ] ; 2 uses
  %.06182.i.i.i = phi i32 [ %.11532.i.i, %bb.x ], [ %.364.i.i.i, %bb.bm ] ; 2 uses
  %.06581.i.i.i = phi i64 [ %.11831.i.i, %bb.x ], [ %i.hn, %bb.bm ] ; 6 uses
end_hunk_0
