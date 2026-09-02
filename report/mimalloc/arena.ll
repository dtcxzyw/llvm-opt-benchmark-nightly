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
begin_hunk_1_@mi_arenas_page_alloc_fresh:bb.a
  %i.fa = getelementptr inbounds nuw [128 x i8], ptr %i.cj, i64 %.092136
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 128
  store atomic ptr %i.cj, ptr %i.fb release, align 128
  %i.fc = getelementptr inbounds nuw [128 x i8], ptr %i.cj, i64 %.092136
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 256
  store atomic ptr %i.cj, ptr %i.fd release, align 128
  %i.fe = getelementptr inbounds nuw [128 x i8], ptr %i.cj, i64 %.092136
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 384
  store atomic ptr %i.cj, ptr %i.ff release, align 128
  %i.fg = add nuw nsw i64 %.092136, 4             ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !146

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.preheader
  %.092136.epil.init = phi i64 [ 1, %.lr.ph.preheader ], [ %i.fg, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod149 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod149)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.092136.epil = phi i64 [ %i.fi, %.lr.ph.epil ], [ %.092136.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.fh = getelementptr inbounds nuw [128 x i8], ptr %i.cj, i64 %.092136.epil
  store atomic ptr %i.cj, ptr %i.fh release, align 128
  %i.fi = add nuw nsw i64 %.092136.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.lr.ph.epil, !llvm.loop !147

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.epil, %mi_page_set_theap.exit
  %.not107 = icmp eq ptr %.1, null
  br i1 %.not107, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %.loopexit
  %i.fj = load ptr, ptr %.1, align 8, !tbaa !59
  %i.fk = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.fl = load i32, ptr %i.fk, align 8, !tbaa !15
  %i.fm = zext i32 %i.fl to i64
  %i.fn = call zeroext i1 @mi_bitmap_set(ptr noundef %i.fj, i64 noundef %i.fm) #17 ; 0 uses
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %.loopexit
  %i.fo = getelementptr inbounds nuw i8, ptr %i.cj, i64 64
  %i.fp = atomicrmw or ptr %i.fo, i64 1 acq_rel, align 8 ; 0 uses
  %i.fq = call zeroext i1 @_mi_page_map_register(ptr noundef nonnull %i.cj) #17
  br i1 %i.fq, label %bb.ak, label %bb.aj, !prof !97

bb.aj:                                            ; preds = %bb.ai
  call fastcc void @mi_arenas_page_free_prim(ptr noundef nonnull %i.cj) #18
  br label %mi_arenas_page_alloc_fresh_area.exit.thread

bb.ak:                                            ; preds = %bb.ai
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 3752
  call void @__mi_stat_increase(ptr noundef nonnull %i.fr, i64 noundef 1) #17
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 6184
  %i.ft = call i64 @_mi_page_stats_bin(ptr noundef nonnull %i.cj) #17
  %i.fu = getelementptr inbounds nuw [24 x i8], ptr %i.fs, i64 %i.ft
  call void @__mi_stat_increase(ptr noundef nonnull %i.fu, i64 noundef 1) #17
  br label %mi_arenas_page_alloc_fresh_area.exit.thread

mi_arenas_page_alloc_fresh_area.exit.thread:      ; preds = %bb.i, %mi_arena_os_alloc_aligned.exit.i, %bb.o, %mi_arena_os_alloc_aligned.exit.thread.i, %bb.ac, %mi_arena_page_meta.exit.thread, %bb.aj, %bb.ak
  %.4 = phi ptr [ %i.cj, %bb.ak ], [ null, %mi_arena_page_meta.exit.thread ], [ null, %bb.ac ], [ null, %bb.aj ], [ null, %mi_arena_os_alloc_aligned.exit.thread.i ], [ null, %bb.o ], [ null, %mi_arena_os_alloc_aligned.exit.i ], [ null, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  ret ptr %.4
}

declare zeroext i1 @_mi_page_init(ptr noundef, ptr noundef) local_unnamed_addr #6

declare i64 @_mi_os_page_size() local_unnamed_addr #6

declare zeroext i1 @_mi_page_map_register(ptr noundef) local_unnamed_addr #6

; Function Attrs: nooutline nounwind uwtable
define internal fastcc ptr @mi_heap_ensure_arena_pages(ptr noundef %0, ptr noundef %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 752 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !51
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.c
  %i.e = load atomic ptr, ptr %i.d acquire, align 8 ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2032 ; 2 uses
  %i.h = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.g) #17 ; 3 uses
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %mi_lock_acquire.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (i32, ptr, ...) @_mi_error_message(i32 noundef %i.h, ptr noundef nonnull @.str.7, i32 noundef %i.h) #17
  br label %mi_lock_acquire.exit

mi_lock_acquire.exit:                             ; preds = %bb.b, %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = load i64, ptr %i.b, align 8, !tbaa !51
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.k
  %i.m = load atomic ptr, ptr %i.l acquire, align 8 ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %mi_lock_acquire.exit
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 152
  %.val.i = load ptr, ptr %0, align 8, !tbaa !40
  %i.p = tail call ptr @_mi_subproc_heap_main(ptr noundef %.val.i) #17
  %i.q = icmp eq ptr %i.p, %0
  br i1 %i.q, label %mi_arena_pages_alloc.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = load i64, ptr %i.i, align 8, !tbaa !71   ; 4 uses
  %i.s = icmp eq i64 %i.r, 0
  %spec.store.select.i.i = select i1 %i.s, i64 512, i64 %i.r
  %i.t = tail call i64 @mi_bitmap_size(i64 noundef %spec.store.select.i.i, ptr noundef null) #17
  %i.u = mul i64 %i.t, 62
  %i.v = add i64 %i.u, 512
  %i.w = load ptr, ptr %i.j, align 8, !tbaa !62
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 1368
  %i.y = load atomic ptr, ptr %i.x seq_cst, align 8, !tbaa !96
  %i.z = tail call noalias ptr @mi_heap_zalloc_aligned(ptr noundef %i.y, i64 noundef %i.v, i64 noundef 64) #17 ; 5 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %mi_arena_pages_alloc.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 512 ; 3 uses
  %i.ac = tail call i64 @mi_bitmap_init(ptr noundef nonnull %i.ab, i64 noundef %i.r, i1 noundef zeroext true) #17
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ac
  store ptr %i.ab, ptr %i.z, align 8, !tbaa !59
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %bb.f
  %.019.i = phi i64 [ 0, %bb.f ], [ %i.ai, %bb.g ] ; 2 uses
  %.01718.i = phi ptr [ %i.ad, %bb.f ], [ %i.ag, %bb.g ] ; 3 uses
  %i.af = tail call i64 @mi_bitmap_init(ptr noundef %.01718.i, i64 noundef %i.r, i1 noundef zeroext true) #17
  %i.ag = getelementptr inbounds nuw i8, ptr %.01718.i, i64 %i.af
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %.019.i
  store ptr %.01718.i, ptr %i.ah, align 8, !tbaa !52
  %i.ai = add nuw nsw i64 %.019.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ai, 61
  br i1 %exitcond.not.i, label %mi_arena_pages_alloc.exit, label %bb.g, !llvm.loop !154

mi_arena_pages_alloc.exit:                        ; preds = %bb.g, %bb.d, %bb.e
  %.1 = phi ptr [ %i.o, %bb.d ], [ null, %bb.e ], [ %i.z, %bb.g ] ; 2 uses
  %i.aj = load i64, ptr %i.b, align 8, !tbaa !51
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.aj
  store atomic ptr %.1, ptr %i.ak release, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %mi_lock_acquire.exit, %mi_arena_pages_alloc.exit
  %.2 = phi ptr [ %.1, %mi_arena_pages_alloc.exit ], [ %i.m, %mi_lock_acquire.exit ]
  %i.al = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.g) #17 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %.loopexit, %bb.a
  %.3 = phi ptr [ %i.e, %bb.a ], [ %.2, %.loopexit ]
  %.val.i22 = load ptr, ptr %0, align 8, !tbaa !40
  %i.am = tail call ptr @_mi_subproc_heap_main(ptr noundef %.val.i22) #17 ; 0 uses
  ret ptr %.3
}

declare noalias ptr @mi_heap_zalloc_aligned(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #6

declare i64 @mi_bitmap_size(i64 noundef, ptr noundef) local_unnamed_addr #6

declare i64 @mi_bitmap_init(ptr noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

declare zeroext i1 @mi_bitmap_try_find_and_claim(ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nooutline norecurse nounwind willreturn uwtable
define internal zeroext i1 @mi_arena_try_claim_abandoned(i64 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) initializes((0, 1)) %2) #4 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 40
  %.val.i.i = load ptr, ptr %i.a, align 8, !tbaa !29
  %i.b = shl i64 %0, 16
  %i.c = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.b
  %i.d = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.e = and i64 %i.d, -268435456                 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %mi_arena_page_at_slice.exit, label %bb.b, !prof !30

bb.b:                                             ; preds = %bb.a
  %i.g = inttoptr i64 %i.e to ptr
  %i.h = lshr i64 %i.d, 16
  %i.i = and i64 %i.h, 4095
  %i.j = getelementptr inbounds nuw [128 x i8], ptr %i.g, i64 %i.i
  %i.k = load atomic ptr, ptr %i.j acquire, align 128
  br label %mi_arena_page_at_slice.exit

mi_arena_page_at_slice.exit:                      ; preds = %bb.a, %bb.b
  %.0.i.i = phi ptr [ %i.k, %bb.b ], [ null, %bb.a ]
  %i.l = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 64
  %i.m = atomicrmw or ptr %i.l, i64 1 acq_rel, align 8 ; 2 uses
  %3 = trunc i64 %i.m to i1
  %4 = xor i1 %3, true
  %5 = trunc i64 %i.m to i8
  %. = and i8 %5, 1
  store i8 %., ptr %2, align 1, !tbaa !101
  ret i1 %4
}

declare void @_mi_page_free_collect(ptr noundef, i1 noundef zeroext) local_unnamed_addr #6

declare void @_mi_page_map_unregister(ptr noundef) local_unnamed_addr #6

declare zeroext i1 @mi_bitmap_clear(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #14

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #14

declare ptr @_mi_thread_local_get(i64 noundef) local_unnamed_addr #6

declare void @_mi_os_free_ex(ptr noundef, ptr noundef, i64 noundef, i1 noundef zeroext, ptr noundef byval(%struct.mi_memid_s) align 8) local_unnamed_addr #6

declare i64 @_mi_os_secure_guard_page_size() local_unnamed_addr #6

declare zeroext i1 @_mi_os_secure_guard_page_set_before(ptr noundef, ptr noundef, ptr noundef byval(%struct.mi_memid_s) align 8) local_unnamed_addr #6

declare i32 @_mi_os_numa_node() local_unnamed_addr #6

declare void @mi_bbitmap_unsafe_setN(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #6

declare void @mi_bitmap_unsafe_setN(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #6

declare i64 @mi_bbitmap_size(i64 noundef, ptr noundef) local_unnamed_addr #6

declare i64 @mi_bbitmap_init(ptr noundef, ptr noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #6

declare void @_mi_raw_message(ptr noundef, ...) local_unnamed_addr #6

declare i32 @mi_bbitmap_debug_get_bin(ptr noundef, i64 noundef) local_unnamed_addr #6

declare zeroext i1 @mi_bbitmap_bsr_inv(ptr noundef, ptr noundef) local_unnamed_addr #6

declare ptr @_mi_safe_ptr_page(ptr noundef) local_unnamed_addr #6

declare zeroext i1 @_mi_meta_is_meta_page(ptr noundef, ptr noundef) local_unnamed_addr #6

declare signext i8 @_mi_toupper(i8 noundef signext) local_unnamed_addr #6

declare zeroext i1 @mi_bbitmap_is_xsetN(i1 noundef zeroext, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #6

declare i32 @_mi_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #6

declare zeroext i1 @_mi_preloading() local_unnamed_addr #6

declare i64 @_mi_clock_now() local_unnamed_addr #6

declare zeroext i1 @_mi_os_purge_ex(ptr noundef, ptr noundef, i64 noundef, i1 noundef zeroext, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare i64 @_mi_os_minimal_purge_size() local_unnamed_addr #6

declare zeroext i1 @_mi_bitmap_forall_setc_rangesn(ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nooutline nounwind uwtable
define internal noundef zeroext i1 @mi_arena_try_purge_visitor(i64 noundef %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) %3) #5 {
bb.a:
  %i.a = tail call fastcc zeroext i1 @mi_arena_try_purge_range(ptr noundef %2, i64 noundef %0, i64 noundef %1) #18
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 17
  store i8 1, ptr %i.b, align 1, !tbaa !79
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i8 1, ptr %i.c, align 8, !tbaa !78
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.d = icmp ugt i64 %1, 1
  br i1 %i.d, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 17 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.preheader, %bb.d
  %.019 = phi i64 [ 0, %.preheader ], [ %i.n, %bb.d ] ; 2 uses
  %i.g = add i64 %.019, %0
  %i.h = tail call fastcc zeroext i1 @mi_arena_try_purge_range(ptr noundef %2, i64 noundef %i.g, i64 noundef 1) #18 ; 2 uses
  %i.i = load i8, ptr %i.e, align 1, !tbaa !79, !range !26, !noundef !27
  %i.j = zext i1 %i.h to i8
  %i.k = or i8 %i.i, %i.j
  store i8 %i.k, ptr %i.e, align 1, !tbaa !79
  %i.l = load i8, ptr %i.f, align 8, !tbaa !78, !range !26, !noundef !27
  %i.m = select i1 %i.h, i8 %i.l, i8 0
  store i8 %i.m, ptr %i.f, align 8, !tbaa !78
  %i.n = add nuw i64 %.019, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.n, %1
  br i1 %exitcond.not, label %.loopexit, label %bb.d, !llvm.loop !155

.loopexit:                                        ; preds = %bb.d, %bb.c, %bb.b
  ret i1 true
}

; Function Attrs: nooutline nounwind uwtable
define internal fastcc noundef zeroext i1 @mi_arena_try_purge_range(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #5 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !73
  %i.d = tail call zeroext i1 @mi_bbitmap_try_clearNC(ptr noundef %i.c, i64 noundef %1, i64 noundef %2) #17 ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = shl i64 %2, 16
  %i.f = getelementptr i8, ptr %0, i64 40
  %.val.i.i = load ptr, ptr %i.f, align 8, !tbaa !29
  %i.g = shl i64 %1, 16
  %i.h = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !61
  %i.k = call zeroext i1 @mi_bitmap_setN(ptr noundef %i.j, i64 noundef %1, i64 noundef %2, ptr noundef nonnull %i.a) #17 ; 0 uses
  %i.l = load i64, ptr %i.a, align 8, !tbaa !31   ; 2 uses
  %i.m = icmp eq i64 %i.l, %2                     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !62
  %i.p = shl i64 %i.l, 16
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !74
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !75
  %i.u = call zeroext i1 @_mi_os_purge_ex(ptr noundef %i.o, ptr noundef %i.h, i64 noundef %i.e, i1 noundef zeroext %i.m, i64 noundef %i.p, ptr noundef %i.r, ptr noundef %i.t) #17
  %.not.i = xor i1 %i.m, true
  %brmerge.i = or i1 %i.u, %.not.i
  br i1 %brmerge.i, label %.sink.split.i, label %mi_arena_purge.exit

.sink.split.i:                                    ; preds = %bb.b
  %i.v = load ptr, ptr %i.i, align 8, !tbaa !61
  %i.w = call zeroext i1 @mi_bitmap_clearN(ptr noundef %i.v, i64 noundef %1, i64 noundef %2) #17 ; 0 uses
  br label %mi_arena_purge.exit

mi_arena_purge.exit:                              ; preds = %bb.b, %.sink.split.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !73
  %i.y = call zeroext i1 @mi_bbitmap_setN(ptr noundef %i.x, i64 noundef %1, i64 noundef %2) #17 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %mi_arena_purge.exit
  ret i1 %i.d
}

declare zeroext i1 @mi_bbitmap_try_clearNC(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #6

declare void @_mi_heap_area_init(ptr noundef, ptr noundef) local_unnamed_addr #6

declare zeroext i1 @_mi_theap_area_visit_blocks(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare ptr @_mi_subproc_heap_main(ptr noundef) local_unnamed_addr #6

; Function Attrs: nooutline nounwind uwtable
define internal noundef zeroext i1 @mi_heap_delete_page(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree readnone captures(none) %2, i64 %3, ptr nofree noundef readonly captures(none) %4) #5 {
bb.a:
  %i.a = load ptr, ptr %4, align 8, !tbaa !99     ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !156  ; 20 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.e = atomicrmw or ptr %i.d, i64 1 acq_rel, align 8 ; 0 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.g = load atomic i64, ptr %i.f monotonic, align 8
  %i.h = and i64 %i.g, -4
  %i.i = icmp ult i64 %i.h, 5
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_mi_arenas_page_unabandon(ptr noundef nonnull %i.c, ptr noundef null) #18
  br label %mi_page_set_theap.exit

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  store ptr null, ptr %i.k, align 8, !tbaa !102
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false)
  %i.l = load atomic i64, ptr %i.f monotonic, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i64 [ %i.l, %bb.c ], [ %i.p, %bb.d ] ; 2 uses
  %i.m = and i64 %.0.i, 3
  %i.n = cmpxchg weak ptr %i.f, i64 %.0.i, i64 %i.m release monotonic, align 8 ; 2 uses
  %i.o = extractvalue { i64, i1 } %i.n, 1
  %i.p = extractvalue { i64, i1 } %i.n, 0
  br i1 %i.o, label %mi_page_set_theap.exit, label %bb.d, !llvm.loop !3

mi_page_set_theap.exit:                           ; preds = %bb.d, %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !65
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %bb.e, label %bb.f

bb.e:                                             ; preds = %mi_page_set_theap.exit
  %i.t = getelementptr i8, ptr %i.c, i64 80
  %.val.i = load ptr, ptr %i.t, align 8, !tbaa !57 ; 2 uses
end_hunk_1
