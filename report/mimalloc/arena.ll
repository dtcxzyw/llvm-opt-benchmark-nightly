Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mimalloc/original/arena?download=true
inline.NumInlined: 308
inline.NumDeleted: 108
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@mi_reserve_os_memory_ex2:bb.a
  %i.l = trunc nuw i8 %i.k to i1
  %i.m = select i1 %i.l, ptr @.str.15, ptr @.str.16
  call void (ptr, ...) @_mi_verbose_message(ptr noundef nonnull @.str.14, i64 noundef %i.i, ptr noundef nonnull %i.m) #16
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %bb.h, %bb.g
  %.0 = phi i32 [ 12, %bb.g ], [ 0, %bb.h ], [ 12, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.thread
  %.1 = phi i32 [ 12, %.thread ], [ %.0, %bb.i ]
  ret i32 %.1
}

; Function Attrs: nooutline nounwind uwtable
define hidden noundef zeroext i1 @mi_manage_os_memory(ptr noundef %0, i64 noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3, i1 noundef zeroext %4, i32 noundef %5) local_unnamed_addr #5 {
bb.a:
  %6 = alloca %struct.mi_memid_s, align 8         ; 9 uses
  %i.a = zext i1 %2 to i8
  %i.b = zext i1 %3 to i8
  %i.c = zext i1 %4 to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 1, ptr %i.d, align 8
  store ptr %0, ptr %6, align 8, !tbaa !15
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %1, ptr %i.e, align 8, !tbaa !15
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 21
  store i8 %i.a, ptr %i.f, align 1, !tbaa !80
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 22
  store i8 %i.c, ptr %i.g, align 2, !tbaa !81
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 20
  store i8 %i.b, ptr %i.h, align 4, !tbaa !82
  %i.i = tail call ptr @_mi_subproc() #16
  %i.j = tail call fastcc noundef zeroext i1 @mi_manage_os_memory_ex2(ptr noundef %i.i, ptr noundef %0, i64 noundef %1, i32 noundef %5, i1 noundef zeroext false, ptr noundef nonnull byval(%struct.mi_memid_s) align 8 %6, ptr noundef null, ptr noundef null, ptr noundef null) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  ret i1 %i.j
}

; Function Attrs: nooutline nounwind uwtable
define hidden range(i32 0, 13) i32 @mi_reserve_os_memory(i64 noundef %0, i1 noundef zeroext %1, i1 noundef zeroext %2) local_unnamed_addr #5 {
bb.a:
  %i.a = tail call ptr @_mi_subproc() #16
  %i.b = tail call fastcc range(i32 0, 13) i32 @mi_reserve_os_memory_ex2(ptr noundef %i.a, i64 noundef %0, i1 noundef zeroext %1, i1 noundef zeroext %2, i1 noundef zeroext false, ptr noundef null) #17
  ret i32 %i.b
}

; Function Attrs: nooutline nounwind uwtable
define hidden void @mi_debug_show_arenas() local_unnamed_addr #5 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca [2624 x i8], align 16             ; 24 uses
  %i.c = tail call ptr @mi_heap_main() #16
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
  %.03034.i = phi i64 [ 0, %.lr.ph.i ], [ %i.ie, %bb.br ] ; 3 uses
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
  call void (ptr, ...) @_mi_raw_message(ptr noundef nonnull @.str.17, ptr noundef nonnull %i.p, i64 noundef %.03034.i, ptr noundef nonnull %i.k, i64 noundef %i.r, i64 noundef %i.t, ptr noundef nonnull %i.x, ptr noundef nonnull %i.ab, i64 noundef %i.ae, i32 noundef %i.ag) #16
  %i.ah = load i64, ptr %i.q, align 8, !tbaa !71  ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.k, i64 112 ; 4 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !73 ; 2 uses
  %i.ak = load atomic i64, ptr %i.aj monotonic, align 64 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 128
  call void (ptr, ...) @_mi_raw_message(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.24) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.am = load ptr, ptr %i.ai, align 8, !tbaa !73
  %i.an = call zeroext i1 @mi_bbitmap_bsr_inv(ptr noundef %i.am, ptr noundef nonnull %i.a) #16
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
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
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
  %.05841.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.bz, %bb.q ] ; 3 uses
  %.06040.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %.2.i.i, %bb.q ]
  %.06239.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.ib, %bb.q ] ; 3 uses
  %.01438.i.i = phi i32 [ 37, %.lr.ph.i.i ], [ %.216.i.i, %bb.q ]
  %.01737.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %.219.i.i, %bb.q ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  %i.az = load i64, ptr @_mi_cpu_stosb_max, align 8, !tbaa !31
  %.not.i.i.i.i = icmp ult i64 %i.az, 2624
  br i1 %.not.i.i.i.i, label %bb.h, label %bb.g, !prof !30

bb.g:                                             ; preds = %bb.f
  %i.ba = call { ptr, i64 } asm sideeffect "rep stosb", "={di},={cx},{ax},0,1,~{memory},~{dirflag},~{fpsr},~{flags}"(i8 range(i8 0, 112) 0, ptr nonnull %i.b, i64 2624) #19, !srcloc !84 ; 0 uses
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
  call void (ptr, ...) @_mi_raw_message(ptr noundef nonnull @.str.27) #16
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
  %0 = urem i16 %.lhs.trunc22.i.i, 100
  %.lhs.trunc26.i.i = trunc nuw nsw i16 %0 to i8
  %i.bt = udiv i8 %.lhs.trunc26.i.i, 10
  %i.bu = or disjoint i8 %i.bt, 48
  store i8 %i.bu, ptr %i.h, align 1, !tbaa !15
  %1 = urem i16 %.lhs.trunc22.i.i, 10
  %2 = trunc nuw nsw i16 %1 to i8
  %i.bv = or disjoint i8 %2, 48
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.o, %bb.m, %bb.k
  %.sink.i.i = phi i8 [ 32, %bb.m ], [ %i.bv, %bb.o ], [ 32, %bb.k ]
  store i8 %.sink.i.i, ptr %i.i, align 2, !tbaa !15
  br label %bb.p

bb.p:                                             ; preds = %.sink.split.i.i, %bb.n
  %.0.sroa.phi.i.i = phi ptr [ %i.b, %bb.n ], [ %.0.sroa.gep.i.i, %.sink.split.i.i ] ; 2 uses
  %.0.i.i = phi i64 [ 2, %bb.n ], [ 5, %.sink.split.i.i ]
  %i.bw = call i32 @mi_bbitmap_debug_get_bin(ptr noundef nonnull %i.al, i64 noundef %.159.i.i) #16 ; 2 uses
  %i.bx = icmp ult i32 %i.bw, 5
  %switch.cast = zext i32 %i.bw to i40
  %switch.shiftamt = shl nuw nsw i40 %switch.cast, 3
  %switch.downshift = lshr i40 310517782611, %switch.shiftamt
  %switch.masked = trunc i40 %switch.downshift to i8
  %.057.i.i = select i1 %i.bx, i8 %switch.masked, i8 32
  store i8 %.057.i.i, ptr %.0.sroa.phi.i.i, align 1, !tbaa !15
  %i.by = getelementptr inbounds nuw i8, ptr %.0.sroa.phi.i.i, i64 1
  store i8 32, ptr %i.by, align 1, !tbaa !15
  br label %bb.r

bb.q:                                             ; preds = %bb.bq
  call void (ptr, ...) @_mi_raw_message(ptr noundef nonnull @.str.28, ptr noundef nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  %i.bz = add nuw i64 %.159.i.i, 1                ; 2 uses
  %i.ca = icmp ult i64 %i.bz, %i.ak
  %i.cb = icmp ult i64 %i.ib, %i.ah
  %i.cc = select i1 %i.ca, i1 %i.cb, i1 false
  br i1 %i.cc, label %bb.f, label %mi_debug_show_chunks.exit.i, !llvm.loop !133

bb.r:                                             ; preds = %bb.bq, %bb.p
  %.05636.i.i = phi i64 [ 0, %bb.p ], [ %i.ic, %bb.bq ] ; 3 uses
  %.16135.i.i = phi i64 [ %.06040.i.i, %bb.p ], [ %.2.i.i, %bb.bq ] ; 2 uses
  %.26434.i.i = phi i64 [ %.163.i.i, %bb.p ], [ %i.ib, %bb.bq ] ; 5 uses
  %.133.i.i = phi i64 [ %.0.i.i, %bb.p ], [ %.6.i.i, %bb.bq ]
  %.11532.i.i = phi i32 [ %.01438.i.i, %bb.p ], [ %.216.i.i, %bb.bq ] ; 2 uses
  %.11831.i.i = phi i64 [ %.01737.i.i, %bb.p ], [ %.219.i.i, %bb.bq ] ; 2 uses
  %.not69.i.i = icmp ne i64 %.05636.i.i, 0
  %i.cd = and i64 %.05636.i.i, 1
  %i.ce = icmp eq i64 %i.cd, 0
  %or.cond72.i.i = and i1 %.not69.i.i, %i.ce
  br i1 %or.cond72.i.i, label %bb.s, label %_mi_memset.exit.i.i

bb.s:                                             ; preds = %bb.r
  call void (ptr, ...) @_mi_raw_message(ptr noundef nonnull @.str.28, ptr noundef nonnull %i.b) #16
  %i.cf = load i64, ptr @_mi_cpu_stosb_max, align 8, !tbaa !31 ; 2 uses
  %.not.i.i73.i.i = icmp ult i64 %i.cf, 2624
  br i1 %.not.i.i73.i.i, label %bb.u, label %bb.t, !prof !30

bb.t:                                             ; preds = %bb.s
  %i.cg = call { ptr, i64 } asm sideeffect "rep stosb", "={di},={cx},{ax},0,1,~{memory},~{dirflag},~{fpsr},~{flags}"(i8 range(i8 0, 112) 0, ptr nonnull %i.b, i64 2624) #19, !srcloc !84 ; 0 uses
  %.pre.i.i = load i64, ptr @_mi_cpu_stosb_max, align 8, !tbaa !31
  br label %_mi_memzero.exit74.i.i

bb.u:                                             ; preds = %bb.s
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2624) %i.b, i8 0, i64 2624, i1 false)
  br label %_mi_memzero.exit74.i.i

_mi_memzero.exit74.i.i:                           ; preds = %bb.u, %bb.t
  %i.ch = phi i64 [ %.pre.i.i, %bb.t ], [ %i.cf, %bb.u ]
  %.not.i.i.i = icmp ult i64 %i.ch, 5
  br i1 %.not.i.i.i, label %bb.w, label %bb.v, !prof !30

bb.v:                                             ; preds = %_mi_memzero.exit74.i.i
  %i.ci = call { ptr, i64 } asm sideeffect "rep stosb", "={di},={cx},{ax},0,1,~{memory},~{dirflag},~{fpsr},~{flags}"(i8 range(i8 0, 112) 32, ptr nonnull %i.b, i64 5) #19, !srcloc !84 ; 0 uses
  br label %_mi_memset.exit.i.i

bb.w:                                             ; preds = %_mi_memzero.exit74.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(5) %i.b, i8 32, i64 5, i1 false)
  br label %_mi_memset.exit.i.i

_mi_memset.exit.i.i:                              ; preds = %bb.w, %bb.v, %bb.r
  %.213.i.i = phi i64 [ %.133.i.i, %bb.r ], [ 5, %bb.v ], [ 5, %bb.w ] ; 3 uses
  %i.cj = icmp ult i64 %.26434.i.i, %i.ah
  br i1 %i.cj, label %bb.x, label %bb.bn

bb.x:                                             ; preds = %_mi_memset.exit.i.i
  %i.ck = and i64 %.26434.i.i, 4095
  %i.cl = icmp ne i64 %i.ck, 0
  br label %bb.as

.peel.begin.i.i.i:                                ; preds = %bb.bm
  %i.cm = add i64 %.26434.i.i, 63                 ; 5 uses
  %.val.i.peel.i.i.i = load ptr, ptr %i.av, align 8, !tbaa !29
  %i.cn = shl i64 %i.cm, 16
  %i.co = getelementptr inbounds nuw i8, ptr %.val.i.peel.i.i.i, i64 %i.cn ; 2 uses
  %i.cp = call ptr @_mi_safe_ptr_page(ptr noundef %i.co) #16 ; 14 uses
  %.not.peel.i.i.i = icmp eq ptr %i.cp, null
  br i1 %.not.peel.i.i.i, label %bb.ak, label %bb.y

bb.y:                                             ; preds = %.peel.begin.i.i.i
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 48 ; 2 uses
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !64
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.cr
  %i.ct = ptrtoint ptr %i.cs to i64
  %i.cu = and i64 %i.ct, -65536
  %i.cv = inttoptr i64 %i.cu to ptr
  %i.cw = icmp eq ptr %i.co, %i.cv
  br i1 %i.cw, label %bb.z, label %bb.ak

bb.z:                                             ; preds = %bb.y
  %i.cx = add i64 %.168.i.i.i, 1
  %i.cy = load ptr, ptr %i.ac, align 8, !tbaa !62
  %i.cz = call zeroext i1 @_mi_meta_is_meta_page(ptr noundef %i.cy, ptr noundef nonnull %i.cp) #16
  br i1 %i.cz, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.da = getelementptr i8, ptr %i.cp, i64 58
  %.val77.peel.i.i.i = load i16, ptr %i.da, align 2, !tbaa !66 ; 2 uses
  %i.db = icmp eq i16 %.val77.peel.i.i.i, 1
  br i1 %i.db, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dc = getelementptr i8, ptr %i.cp, i64 24
  %.val.peel.i.i.i = load i64, ptr %i.dc, align 8, !tbaa !65
  %i.dd = zext i16 %.val77.peel.i.i.i to i64
  %i.de = icmp eq i64 %.val.peel.i.i.i, %i.dd
  %spec.select.peel.i.i.i = select i1 %i.de, i8 102, i8 112
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z
  %.0.peel.i.i.i = phi i8 [ %spec.select.peel.i.i.i, %bb.ab ], [ 109, %bb.z ], [ 115, %bb.aa ] ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.dg = load atomic i64, ptr %i.df monotonic, align 8
  %i.dh = and i64 %i.dg, -4
  %i.di = icmp ult i64 %i.dh, 5
  br i1 %i.di, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dj = call signext i8 @_mi_toupper(i8 noundef signext %.0.peel.i.i.i) #16
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.1.peel.i.i.i = phi i8 [ %.0.peel.i.i.i, %bb.ac ], [ %i.dj, %bb.ad ]
  %i.dk = getelementptr i8, ptr %i.cp, i64 60
  %.val.i.i.peel.i.i.i = load i16, ptr %i.dk, align 4, !tbaa !60
  %i.dl = zext i16 %.val.i.i.peel.i.i.i to i64
  %i.dm = call i64 @_mi_os_page_size() #16
  %i.dn = mul i64 %i.dm, %i.dl                    ; 2 uses
  %i.do = icmp eq i64 %i.dn, 0
  br i1 %i.do, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dp = load i64, ptr %i.cq, align 8, !tbaa !64
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.dp
  %i.dr = ptrtoint ptr %i.dq to i64
  %i.ds = and i64 %i.dr, 65535
  %i.dt = sub i64 %i.dn, %i.ds
  %.phi.trans.insert.i.peel.i.i.i = getelementptr i8, ptr %i.cp, i64 40
  %.val.pre.i.peel.i.i.i = load i64, ptr %.phi.trans.insert.i.peel.i.i.i, align 8, !tbaa !63
  br label %mi_page_commit_usage.exit.peel.i.i.i

bb.ag:                                            ; preds = %bb.ae
  %i.du = getelementptr i8, ptr %i.cp, i64 40
  %.val4.i.i.peel.i.i.i = load i64, ptr %i.du, align 8, !tbaa !63 ; 2 uses
  %i.dv = getelementptr i8, ptr %i.cp, i64 58
  %.val5.i.i.peel.i.i.i = load i16, ptr %i.dv, align 2, !tbaa !66
  %i.dw = zext i16 %.val5.i.i.peel.i.i.i to i64
  %i.dx = mul i64 %.val4.i.i.peel.i.i.i, %i.dw
  br label %mi_page_commit_usage.exit.peel.i.i.i

mi_page_commit_usage.exit.peel.i.i.i:             ; preds = %bb.ag, %bb.af
  %.val.i78.peel.i.i.i = phi i64 [ %.val4.i.i.peel.i.i.i, %bb.ag ], [ %.val.pre.i.peel.i.i.i, %bb.af ]
  %i.dy = phi i64 [ %i.dx, %bb.ag ], [ %i.dt, %bb.af ]
  %i.dz = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !65
  %i.eb = mul i64 %.val.i78.peel.i.i.i, 100
  %i.ec = mul i64 %i.eb, %i.ea
  %i.ed = udiv i64 %i.ec, %i.dy
  %i.ee = trunc i64 %i.ed to i32                  ; 3 uses
  %i.ef = icmp slt i32 %i.ee, 25
  br i1 %i.ef, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %mi_page_commit_usage.exit.peel.i.i.i
  %i.eg = icmp samesign ult i32 %i.ee, 50
  br i1 %i.eg, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.eh = icmp samesign ult i32 %i.ee, 75
  %..peel.i.i.i = select i1 %i.eh, i32 36, i32 32
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah, %mi_page_commit_usage.exit.peel.i.i.i
  %.162.peel.i.i.i = phi i32 [ 33, %bb.ah ], [ 31, %mi_page_commit_usage.exit.peel.i.i.i ], [ %..peel.i.i.i, %bb.ai ]
  %i.ei = getelementptr inbounds nuw i8, ptr %i.cp, i64 116
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !15
  %i.ek = zext i32 %i.ej to i64
  br label %bb.aq

bb.ak:                                            ; preds = %bb.y, %.peel.begin.i.i.i
  %i.el = icmp sgt i64 %.166.i.i.i, 1
  br i1 %i.el, label %bb.ap, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.em = load i64, ptr %i.aw, align 8, !tbaa !70
  %.not98.i.i.i = icmp ult i64 %i.cm, %i.em
  br i1 %.not98.i.i.i, label %bb.ap, label %bb.am

bb.am:                                            ; preds = %bb.al
end_hunk_0
