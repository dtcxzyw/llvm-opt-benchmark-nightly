Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mimalloc/original/arena?download=true
inline.NumInlined: 308
inline.NumDeleted: 108
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@mi_manage_os_memory_ex2:bb.a

bb.an:                                            ; preds = %.critedge.i.i, %.lr.ph49.i.i
  %.04048.i.i = phi i64 [ %i.dh, %.lr.ph49.i.i ], [ %i.du, %.critedge.i.i ] ; 4 uses
  %i.dr = add nuw nsw i64 %.04048.i.i, 1
  %i.ds = cmpxchg ptr %i.q, i64 %.04048.i.i, i64 %i.dr release monotonic, align 8 ; 2 uses
  %i.dt = extractvalue { i64, i1 } %i.ds, 1
  %i.du = extractvalue { i64, i1 } %i.ds, 0       ; 2 uses
  br i1 %i.dt, label %bb.ao, label %.critedge.i.i

bb.ao:                                            ; preds = %bb.an
  store i64 %.04048.i.i, ptr %i.dk, align 8, !tbaa !51
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.04048.i.i
  %i.dw = cmpxchg ptr %i.dv, ptr null, ptr %i.bi release monotonic, align 8
  %i.dx = extractvalue { ptr, i1 } %i.dw, 1
  br i1 %i.dx, label %bb.ap, label %.critedge.i.i

bb.ap:                                            ; preds = %bb.ao
  %i.dy = load ptr, ptr %i.bk, align 8, !tbaa !62
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 1816
  tail call void @__mi_stat_counter_increase_mt(ptr noundef nonnull %i.dz, i64 noundef 1) #17
  br i1 %.not.i.i, label %bb.as, label %.thread167

.critedge.i.i:                                    ; preds = %bb.ao, %bb.an
  %i.ea = icmp ult i64 %i.du, 160
  br i1 %i.ea, label %bb.an, label %mi_arenas_add.exit.i, !llvm.loop !125

mi_arenas_add.exit.i:                             ; preds = %.critedge.preheader.i.i, %.critedge.i.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bk, i8 0, i64 16, i1 false)
  br label %bb.aq

bb.aq:                                            ; preds = %mi_arenas_add.exit.i, %bb.q, %bb.k
  br i1 %i.u, label %bb.ar, label %.thread79

bb.ar:                                            ; preds = %bb.aq
  %i.eb = shl nuw i64 %.047, 16
  %i.ec = getelementptr inbounds nuw i8, ptr %.0, i64 96 ; 2 uses
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !32
  %i.ee = sub i64 %i.ed, %i.eb
  store i64 %i.ee, ptr %i.ec, align 8, !tbaa !32
  br label %.thread79

.thread167:                                       ; preds = %bb.ap, %bb.al
  store ptr %i.bi, ptr %8, align 8, !tbaa !83
  br label %bb.at

bb.as:                                            ; preds = %bb.ap, %bb.al
  br i1 %i.u, label %bb.au, label %bb.at

bb.at:                                            ; preds = %.thread167, %bb.as
  store i32 0, ptr %i.s, align 8, !tbaa !14
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %.1 = phi ptr [ %i.bi, %bb.at ], [ %.0, %bb.as ]
  %i.ef = sub nuw nsw i64 %.047, %spec.store.select ; 2 uses
  %i.eg = shl nuw nsw i64 %spec.store.select, 16
  %i.eh = getelementptr inbounds nuw i8, ptr %.256, i64 %i.eg
  %.not69 = icmp eq i64 %i.ef, 0
  br i1 %.not69, label %.thread79, label %bb.h, !llvm.loop !126

.thread79:                                        ; preds = %bb.au, %bb.aq, %bb.ar, %bb.f, %bb.g, %bb.c
  %.6 = phi i1 [ false, %bb.f ], [ false, %bb.c ], [ false, %bb.g ], [ true, %bb.ar ], [ false, %bb.aq ], [ true, %bb.au ]
  ret i1 %.6
}

declare ptr @_mi_subproc() local_unnamed_addr #6

; Function Attrs: nooutline nounwind uwtable
define hidden noundef zeroext i1 @mi_manage_memory(ptr noundef %0, i64 noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3, i1 noundef zeroext %4, i32 noundef %5, i1 noundef zeroext %6, ptr noundef %7, ptr noundef %8, ptr nofree noundef writeonly captures(address_is_null) %9) local_unnamed_addr #5 {
bb.a:
  %10 = alloca %struct.mi_memid_s, align 8        ; 10 uses
  %i.a = zext i1 %2 to i8
  %i.b = zext i1 %3 to i8
  %i.c = zext i1 %4 to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  %i.d = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i64 0, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i32 1, ptr %i.e, align 8, !tbaa !14, !alias.scope !132
  store ptr %0, ptr %10, align 8, !tbaa !15
  %i.f = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %1, ptr %i.f, align 8, !tbaa !15
  %i.g = getelementptr inbounds nuw i8, ptr %10, i64 21
  store i8 %i.a, ptr %i.g, align 1, !tbaa !80
  %i.h = getelementptr inbounds nuw i8, ptr %10, i64 22
  store i8 %i.c, ptr %i.h, align 2, !tbaa !81
  %i.i = getelementptr inbounds nuw i8, ptr %10, i64 20
  store i8 %i.b, ptr %i.i, align 4, !tbaa !82
  %i.j = tail call ptr @_mi_subproc() #17
  %i.k = tail call fastcc zeroext i1 @mi_manage_os_memory_ex2(ptr noundef %i.j, ptr noundef %0, i64 noundef %1, i32 noundef %5, i1 noundef zeroext %6, ptr noundef nonnull byval(%struct.mi_memid_s) align 8 %10, ptr noundef %7, ptr noundef %8, ptr noundef %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  ret i1 %i.k
}

; Function Attrs: nooutline nounwind uwtable
define hidden range(i32 0, 13) i32 @mi_reserve_os_memory_ex(i64 noundef %0, i1 noundef zeroext %1, i1 noundef zeroext %2, i1 noundef zeroext %3, ptr nofree noundef writeonly captures(address_is_null) %4) local_unnamed_addr #5 {
bb.a:
  %i.a = tail call ptr @_mi_subproc() #17
  %i.b = tail call fastcc i32 @mi_reserve_os_memory_ex2(ptr noundef %i.a, i64 noundef %0, i1 noundef zeroext %1, i1 noundef zeroext %2, i1 noundef zeroext %3, ptr noundef %4) #18
  ret i32 %i.b
}

; Function Attrs: nooutline nounwind uwtable
define internal fastcc range(i32 0, 13) i32 @mi_reserve_os_memory_ex2(ptr noundef %0, i64 noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3, i1 noundef zeroext %4, ptr nofree noundef writeonly captures(address_is_null) %5) unnamed_addr #5 {
bb.a:
  %6 = alloca %struct.mi_memid_s, align 8         ; 6 uses
  %.not = icmp eq ptr %5, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %5, align 8, !tbaa !83
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.a = icmp sgt i64 %1, -1
  br i1 %i.a, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.b = add nuw i64 %1, 65535                    ; 2 uses
  %i.c = and i64 %i.b, -65536                     ; 6 uses
  %i.d = icmp slt i64 %i.b, 0
  br i1 %i.d, label %.thread, label %bb.e

.thread:                                          ; preds = %bb.c, %bb.d
  %.02228 = phi i64 [ %i.c, %bb.d ], [ %1, %bb.c ]
  tail call void (i32, ptr, ...) @_mi_error_message(i32 noundef 75, ptr noundef nonnull @.str.12, i64 noundef %.02228) #17
  br label %bb.j

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  %i.e = call ptr @_mi_os_alloc_aligned(ptr noundef %0, i64 noundef %i.c, i64 noundef 268435456, i1 noundef zeroext %2, i1 noundef zeroext %3, ptr noundef nonnull %6) #17 ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = call fastcc zeroext i1 @mi_manage_os_memory_ex2(ptr noundef %0, ptr noundef nonnull %i.e, i64 noundef %i.c, i32 noundef -1, i1 noundef zeroext %4, ptr noundef nonnull byval(%struct.mi_memid_s) align 8 %6, ptr noundef null, ptr noundef null, ptr noundef %5) #18
  br i1 %i.g, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_mi_os_free_ex(ptr noundef %0, ptr noundef nonnull %i.e, i64 noundef %i.c, i1 noundef zeroext %2, ptr noundef nonnull byval(%struct.mi_memid_s) align 8 %6) #17
  %i.h = lshr exact i64 %i.c, 10
  call void (ptr, ...) @_mi_verbose_message(ptr noundef nonnull @.str.13, i64 noundef %i.h) #17
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.i = lshr exact i64 %i.c, 10
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 20
  %i.k = load i8, ptr %i.j, align 4, !tbaa !82, !range !26, !noundef !27
  %i.l = trunc nuw i8 %i.k to i1
  %i.m = select i1 %i.l, ptr @.str.15, ptr @.str.16
  call void (ptr, ...) @_mi_verbose_message(ptr noundef nonnull @.str.14, i64 noundef %i.i, ptr noundef nonnull %i.m) #17
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %bb.h, %bb.g
  %.0 = phi i32 [ 12, %bb.g ], [ 0, %bb.h ], [ 12, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
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
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
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
  %i.i = tail call ptr @_mi_subproc() #17
  %i.j = tail call fastcc noundef zeroext i1 @mi_manage_os_memory_ex2(ptr noundef %i.i, ptr noundef %0, i64 noundef %1, i32 noundef %5, i1 noundef zeroext false, ptr noundef nonnull byval(%struct.mi_memid_s) align 8 %6, ptr noundef null, ptr noundef null, ptr noundef null) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  ret i1 %i.j
}

; Function Attrs: nooutline nounwind uwtable
define hidden range(i32 0, 13) i32 @mi_reserve_os_memory(i64 noundef %0, i1 noundef zeroext %1, i1 noundef zeroext %2) local_unnamed_addr #5 {
bb.a:
  %i.a = tail call ptr @_mi_subproc() #17
  %i.b = tail call fastcc range(i32 0, 13) i32 @mi_reserve_os_memory_ex2(ptr noundef %i.a, i64 noundef %0, i1 noundef zeroext %1, i1 noundef zeroext %2, i1 noundef zeroext false, ptr noundef null) #18
  ret i32 %i.b
}

; Function Attrs: nooutline nounwind uwtable
define hidden void @mi_debug_show_arenas() local_unnamed_addr #5 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca [2624 x i8], align 16             ; 23 uses
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
  %.03034.i = phi i64 [ 0, %.lr.ph.i ], [ %i.ih, %bb.br ] ; 3 uses
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
  %.06239.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.ie, %bb.q ] ; 3 uses
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
  %i.cb = getelementptr i8, ptr %.0.sroa.phi.i.i, i64 1
  store i8 32, ptr %i.cb, align 1, !tbaa !15
  br label %bb.r

bb.q:                                             ; preds = %bb.bq
  call void (ptr, ...) @_mi_raw_message(ptr noundef nonnull @.str.28, ptr noundef nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  %i.cc = add nuw i64 %.159.i.i, 1                ; 2 uses
  %i.cd = icmp ult i64 %i.cc, %i.ak
  %i.ce = icmp ult i64 %i.ie, %i.ah
  %i.cf = select i1 %i.cd, i1 %i.ce, i1 false
  br i1 %i.cf, label %bb.f, label %mi_debug_show_chunks.exit.i, !llvm.loop !133

bb.r:                                             ; preds = %bb.bq, %bb.p
  %.05636.i.i = phi i64 [ 0, %bb.p ], [ %i.if, %bb.bq ] ; 3 uses
  %.16135.i.i = phi i64 [ %.06040.i.i, %bb.p ], [ %.2.i.i, %bb.bq ] ; 2 uses
  %.26434.i.i = phi i64 [ %.163.i.i, %bb.p ], [ %i.ie, %bb.bq ] ; 5 uses
  %.133.i.i = phi i64 [ %.0.i.i, %bb.p ], [ %.6.i.i, %bb.bq ]
  %.11532.i.i = phi i32 [ %.01438.i.i, %bb.p ], [ %.216.i.i, %bb.bq ] ; 2 uses
  %.11831.i.i = phi i64 [ %.01737.i.i, %bb.p ], [ %.219.i.i, %bb.bq ] ; 2 uses
  %.not69.i.i = icmp ne i64 %.05636.i.i, 0
  %i.cg = and i64 %.05636.i.i, 1
  %i.ch = icmp eq i64 %i.cg, 0
  %or.cond72.i.i = and i1 %.not69.i.i, %i.ch
  br i1 %or.cond72.i.i, label %bb.s, label %_mi_memset.exit.i.i

bb.s:                                             ; preds = %bb.r
  call void (ptr, ...) @_mi_raw_message(ptr noundef nonnull @.str.28, ptr noundef nonnull %i.b) #17
  %i.ci = load i64, ptr @_mi_cpu_stosb_max, align 8, !tbaa !31 ; 2 uses
  %.not.i.i73.i.i = icmp ult i64 %i.ci, 2624
  br i1 %.not.i.i73.i.i, label %bb.u, label %bb.t, !prof !30

bb.t:                                             ; preds = %bb.s
  %i.cj = call { ptr, i64 } asm sideeffect "rep stosb", "={di},={cx},{ax},0,1,~{memory},~{dirflag},~{fpsr},~{flags}"(i8 range(i8 0, 112) 0, ptr nonnull %i.b, i64 2624) #20, !srcloc !84 ; 0 uses
  %.pre.i.i = load i64, ptr @_mi_cpu_stosb_max, align 8, !tbaa !31
  br label %_mi_memzero.exit74.i.i

bb.u:                                             ; preds = %bb.s
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2624) %i.b, i8 0, i64 2624, i1 false)
  br label %_mi_memzero.exit74.i.i

_mi_memzero.exit74.i.i:                           ; preds = %bb.u, %bb.t
  %i.ck = phi i64 [ %.pre.i.i, %bb.t ], [ %i.ci, %bb.u ]
  %.not.i.i.i = icmp ult i64 %i.ck, 5
  br i1 %.not.i.i.i, label %bb.w, label %bb.v, !prof !30

bb.v:                                             ; preds = %_mi_memzero.exit74.i.i
  %i.cl = call { ptr, i64 } asm sideeffect "rep stosb", "={di},={cx},{ax},0,1,~{memory},~{dirflag},~{fpsr},~{flags}"(i8 range(i8 0, 112) 32, ptr nonnull %i.b, i64 5) #20, !srcloc !84 ; 0 uses
  br label %_mi_memset.exit.i.i

bb.w:                                             ; preds = %_mi_memzero.exit74.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(5) %i.b, i8 32, i64 5, i1 false)
  br label %_mi_memset.exit.i.i

_mi_memset.exit.i.i:                              ; preds = %bb.w, %bb.v, %bb.r
  %.213.i.i = phi i64 [ %.133.i.i, %bb.r ], [ 5, %bb.v ], [ 5, %bb.w ] ; 3 uses
  %i.cm = icmp ult i64 %.26434.i.i, %i.ah
  br i1 %i.cm, label %bb.x, label %bb.bn

bb.x:                                             ; preds = %_mi_memset.exit.i.i
  %i.cn = and i64 %.26434.i.i, 4095
  %i.co = icmp ne i64 %i.cn, 0
  br label %bb.as

.peel.begin.i.i.i:                                ; preds = %bb.bm
  %0 = getelementptr i8, ptr %i.b, i64 %.4.i.i
  %i.cp = add i64 %.26434.i.i, 63                 ; 5 uses
  %.val.i.peel.i.i.i = load ptr, ptr %i.av, align 8, !tbaa !29
  %i.cq = shl i64 %i.cp, 16
  %i.cr = getelementptr inbounds nuw i8, ptr %.val.i.peel.i.i.i, i64 %i.cq ; 2 uses
  %i.cs = call ptr @_mi_safe_ptr_page(ptr noundef %i.cr) #17 ; 14 uses
  %.not.peel.i.i.i = icmp eq ptr %i.cs, null
  br i1 %.not.peel.i.i.i, label %bb.ak, label %bb.y

bb.y:                                             ; preds = %.peel.begin.i.i.i
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 48 ; 2 uses
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !64
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.cu
  %i.cw = ptrtoint ptr %i.cv to i64
  %i.cx = and i64 %i.cw, -65536
  %i.cy = inttoptr i64 %i.cx to ptr
  %i.cz = icmp eq ptr %i.cr, %i.cy
  br i1 %i.cz, label %bb.z, label %bb.ak

bb.z:                                             ; preds = %bb.y
  %i.da = add i64 %.168.i.i.i, 1
  %i.db = load ptr, ptr %i.ac, align 8, !tbaa !62
  %i.dc = call zeroext i1 @_mi_meta_is_meta_page(ptr noundef %i.db, ptr noundef nonnull %i.cs) #17
  br i1 %i.dc, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dd = getelementptr i8, ptr %i.cs, i64 58
  %.val77.peel.i.i.i = load i16, ptr %i.dd, align 2, !tbaa !66 ; 2 uses
  %i.de = icmp eq i16 %.val77.peel.i.i.i, 1
  br i1 %i.de, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.df = getelementptr i8, ptr %i.cs, i64 24
  %.val.peel.i.i.i = load i64, ptr %i.df, align 8, !tbaa !65
  %i.dg = zext i16 %.val77.peel.i.i.i to i64
  %i.dh = icmp eq i64 %.val.peel.i.i.i, %i.dg
  %spec.select.peel.i.i.i = select i1 %i.dh, i8 102, i8 112
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z
  %.0.peel.i.i.i = phi i8 [ %spec.select.peel.i.i.i, %bb.ab ], [ 109, %bb.z ], [ 115, %bb.aa ] ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.dj = load atomic i64, ptr %i.di monotonic, align 8
  %i.dk = and i64 %i.dj, -4
  %i.dl = icmp ult i64 %i.dk, 5
  br i1 %i.dl, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dm = call signext i8 @_mi_toupper(i8 noundef signext %.0.peel.i.i.i) #17
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.1.peel.i.i.i = phi i8 [ %.0.peel.i.i.i, %bb.ac ], [ %i.dm, %bb.ad ]
  %i.dn = getelementptr i8, ptr %i.cs, i64 60
  %.val.i.i.peel.i.i.i = load i16, ptr %i.dn, align 4, !tbaa !60
  %i.do = zext i16 %.val.i.i.peel.i.i.i to i64
  %i.dp = call i64 @_mi_os_page_size() #17
  %i.dq = mul i64 %i.dp, %i.do                    ; 2 uses
  %i.dr = icmp eq i64 %i.dq, 0
  br i1 %i.dr, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ds = load i64, ptr %i.ct, align 8, !tbaa !64
  %i.dt = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.ds
  %i.du = ptrtoint ptr %i.dt to i64
  %i.dv = and i64 %i.du, 65535
  %i.dw = sub i64 %i.dq, %i.dv
  %.phi.trans.insert.i.peel.i.i.i = getelementptr i8, ptr %i.cs, i64 40
  %.val.pre.i.peel.i.i.i = load i64, ptr %.phi.trans.insert.i.peel.i.i.i, align 8, !tbaa !63
  br label %mi_page_commit_usage.exit.peel.i.i.i

bb.ag:                                            ; preds = %bb.ae
  %i.dx = getelementptr i8, ptr %i.cs, i64 40
  %.val4.i.i.peel.i.i.i = load i64, ptr %i.dx, align 8, !tbaa !63 ; 2 uses
  %i.dy = getelementptr i8, ptr %i.cs, i64 58
  %.val5.i.i.peel.i.i.i = load i16, ptr %i.dy, align 2, !tbaa !66
  %i.dz = zext i16 %.val5.i.i.peel.i.i.i to i64
  %i.ea = mul i64 %.val4.i.i.peel.i.i.i, %i.dz
  br label %mi_page_commit_usage.exit.peel.i.i.i

mi_page_commit_usage.exit.peel.i.i.i:             ; preds = %bb.ag, %bb.af
  %.val.i78.peel.i.i.i = phi i64 [ %.val4.i.i.peel.i.i.i, %bb.ag ], [ %.val.pre.i.peel.i.i.i, %bb.af ]
  %i.eb = phi i64 [ %i.ea, %bb.ag ], [ %i.dw, %bb.af ]
  %i.ec = getelementptr inbounds nuw i8, ptr %i.cs, i64 24
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !65
  %i.ee = mul i64 %.val.i78.peel.i.i.i, 100
  %i.ef = mul i64 %i.ee, %i.ed
  %i.eg = udiv i64 %i.ef, %i.eb
  %i.eh = trunc i64 %i.eg to i32                  ; 3 uses
  %i.ei = icmp slt i32 %i.eh, 25
  br i1 %i.ei, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %mi_page_commit_usage.exit.peel.i.i.i
  %i.ej = icmp samesign ult i32 %i.eh, 50
  br i1 %i.ej, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ek = icmp samesign ult i32 %i.eh, 75
  %..peel.i.i.i = select i1 %i.ek, i32 36, i32 32
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah, %mi_page_commit_usage.exit.peel.i.i.i
  %.162.peel.i.i.i = phi i32 [ 33, %bb.ah ], [ 31, %mi_page_commit_usage.exit.peel.i.i.i ], [ %..peel.i.i.i, %bb.ai ]
  %i.el = getelementptr inbounds nuw i8, ptr %i.cs, i64 116
  %i.em = load i32, ptr %i.el, align 4, !tbaa !15
  %i.en = zext i32 %i.em to i64
  br label %bb.aq

bb.ak:                                            ; preds = %bb.y, %.peel.begin.i.i.i
  %i.eo = icmp sgt i64 %.166.i.i.i, 1
  br i1 %i.eo, label %bb.ap, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ep = load i64, ptr %i.aw, align 8, !tbaa !70
  %.not98.i.i.i = icmp ult i64 %i.cp, %i.ep
  br i1 %.not98.i.i.i, label %bb.ap, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.eq = load ptr, ptr %i.ai, align 8, !tbaa !73
  %i.er = call zeroext i1 @mi_bbitmap_is_xsetN(i1 noundef zeroext true, ptr noundef %i.eq, i64 noundef %i.cp, i64 noundef 1) #17
  br i1 %i.er, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %bb.am
  %i.es = load ptr, ptr %i.ax, align 8, !tbaa !76
  %i.et = call zeroext i1 @mi_bitmap_is_xsetN(i1 noundef zeroext true, ptr noundef %i.es, i64 noundef %i.cp, i64 noundef 1) #17
  br i1 %i.et, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.eu = load ptr, ptr %i.ay, align 8, !tbaa !61
  %i.ev = call zeroext i1 @mi_bitmap_is_xsetN(i1 noundef zeroext true, ptr noundef %i.eu, i64 noundef %i.cp, i64 noundef 1) #17
  %.74.peel.i.i.i = select i1 %i.ev, i8 95, i8 46
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak
  %.263.peel.i.i.i = phi i32 [ %.364.i.i.i, %bb.am ], [ %.364.i.i.i, %bb.ak ], [ 37, %bb.al ], [ 33, %bb.an ], [ 37, %bb.ao ]
  %.2.peel.i.i.i = phi i8 [ 63, %bb.am ], [ 45, %bb.ak ], [ 105, %bb.al ], [ 126, %bb.an ], [ %.74.peel.i.i.i, %bb.ao ]
  %i.ew = icmp sgt i64 %.166.i.i.i, 2
  %spec.select75.peel.i.i.i = select i1 %i.ew, i8 62, i8 %.2.peel.i.i.i
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.aj
  %.168.peel.i.i.i = phi i64 [ %i.da, %bb.aj ], [ %.168.i.i.i, %bb.ap ]
  %.166.peel.i.i.i = phi i64 [ %i.en, %bb.aj ], [ %i.hp, %bb.ap ]
  %.364.peel.i.i.i = phi i32 [ %.162.peel.i.i.i, %bb.aj ], [ %.263.peel.i.i.i, %bb.ap ] ; 3 uses
  %.3.peel.i.i.i = phi i8 [ %.1.peel.i.i.i, %bb.aj ], [ %spec.select75.peel.i.i.i, %bb.ap ]
  %.not73.peel.i.i.i = icmp eq i32 %.364.peel.i.i.i, %.160.i.i.i
  br i1 %.not73.peel.i.i.i, label %mi_debug_show_page_bfield.exit.i.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ex = getelementptr i8, ptr %0, i64 1
  %i.ey = call i32 (ptr, i64, ptr, ...) @_mi_snprintf(ptr noundef nonnull %i.ex, i64 noundef 32, ptr noundef nonnull @.str.30, i32 noundef %.364.peel.i.i.i) #17
  %i.ez = sext i32 %i.ey to i64
  %i.fa = add i64 %i.ho, %i.ez
  br label %mi_debug_show_page_bfield.exit.i.i

bb.as:                                            ; preds = %bb.bm, %bb.x
  %.3.i.i = phi i64 [ %.213.i.i, %bb.x ], [ %i.ho, %bb.bm ] ; 3 uses
  %indvars.iv.i.i.i = phi i64 [ 0, %bb.x ], [ %indvars.iv.next.i.i.i, %bb.bm ] ; 3 uses
  %.05983.i.i.i = phi i32 [ 37, %bb.x ], [ %.160.i.i.i, %bb.bm ] ; 2 uses
  %.06182.i.i.i = phi i32 [ %.11532.i.i, %bb.x ], [ %.364.i.i.i, %bb.bm ] ; 2 uses
  %.06581.i.i.i = phi i64 [ %.11831.i.i, %bb.x ], [ %i.hp, %bb.bm ] ; 6 uses
  %.06780.i.i.i = phi i64 [ 0, %bb.x ], [ %.168.i.i.i, %bb.bm ] ; 6 uses
  %i.fb = add i64 %indvars.iv.i.i.i, %.26434.i.i  ; 5 uses
  %.val.i.i.i.i = load ptr, ptr %i.av, align 8, !tbaa !29
  %i.fc = shl i64 %i.fb, 16
  %i.fd = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %i.fc ; 2 uses
  %i.fe = call ptr @_mi_safe_ptr_page(ptr noundef %i.fd) #17 ; 14 uses
  %.not.i75.i.i = icmp eq ptr %i.fe, null
  br i1 %.not.i75.i.i, label %bb.bf, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 48 ; 2 uses
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !64
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fe, i64 %i.fg
  %i.fi = ptrtoint ptr %i.fh to i64
  %i.fj = and i64 %i.fi, -65536
  %i.fk = inttoptr i64 %i.fj to ptr
  %i.fl = icmp eq ptr %i.fd, %i.fk
  br i1 %i.fl, label %bb.au, label %bb.bf

bb.au:                                            ; preds = %bb.at
  %i.fm = add i64 %.06780.i.i.i, 1
  %i.fn = load ptr, ptr %i.ac, align 8, !tbaa !62
  %i.fo = call zeroext i1 @_mi_meta_is_meta_page(ptr noundef %i.fn, ptr noundef nonnull %i.fe) #17
  br i1 %i.fo, label %bb.ax, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.fp = getelementptr i8, ptr %i.fe, i64 58
  %.val77.i.i.i = load i16, ptr %i.fp, align 2, !tbaa !66 ; 2 uses
  %i.fq = icmp eq i16 %.val77.i.i.i, 1
  br i1 %i.fq, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.fr = getelementptr i8, ptr %i.fe, i64 24
  %.val.i76.i.i = load i64, ptr %i.fr, align 8, !tbaa !65
  %i.fs = zext i16 %.val77.i.i.i to i64
  %i.ft = icmp eq i64 %.val.i76.i.i, %i.fs
  %spec.select.i.i.i = select i1 %i.ft, i8 102, i8 112
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av, %bb.au
  %.0.i77.i.i = phi i8 [ %spec.select.i.i.i, %bb.aw ], [ 109, %bb.au ], [ 115, %bb.av ] ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  %i.fv = load atomic i64, ptr %i.fu monotonic, align 8
  %i.fw = and i64 %i.fv, -4
  %i.fx = icmp ult i64 %i.fw, 5
  br i1 %i.fx, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.fy = call signext i8 @_mi_toupper(i8 noundef signext %.0.i77.i.i) #17
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %.1.i.i.i = phi i8 [ %.0.i77.i.i, %bb.ax ], [ %i.fy, %bb.ay ]
  %i.fz = getelementptr i8, ptr %i.fe, i64 60
  %.val.i.i.i.i.i = load i16, ptr %i.fz, align 4, !tbaa !60
  %i.ga = zext i16 %.val.i.i.i.i.i to i64
  %i.gb = call i64 @_mi_os_page_size() #17
  %i.gc = mul i64 %i.gb, %i.ga                    ; 2 uses
  %i.gd = icmp eq i64 %i.gc, 0
  br i1 %i.gd, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.ge = getelementptr i8, ptr %i.fe, i64 40
  %.val4.i.i.i.i.i = load i64, ptr %i.ge, align 8, !tbaa !63 ; 2 uses
  %i.gf = getelementptr i8, ptr %i.fe, i64 58
  %.val5.i.i.i.i.i = load i16, ptr %i.gf, align 2, !tbaa !66
  %i.gg = zext i16 %.val5.i.i.i.i.i to i64
  %i.gh = mul i64 %.val4.i.i.i.i.i, %i.gg
  br label %mi_page_commit_usage.exit.i.i.i

bb.bb:                                            ; preds = %bb.az
  %i.gi = load i64, ptr %i.ff, align 8, !tbaa !64
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fe, i64 %i.gi
  %i.gk = ptrtoint ptr %i.gj to i64
  %i.gl = and i64 %i.gk, 65535
  %i.gm = sub i64 %i.gc, %i.gl
  %.phi.trans.insert.i.i.i.i = getelementptr i8, ptr %i.fe, i64 40
  %.val.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !63
  br label %mi_page_commit_usage.exit.i.i.i

mi_page_commit_usage.exit.i.i.i:                  ; preds = %bb.bb, %bb.ba
  %.val.i78.i.i.i = phi i64 [ %.val4.i.i.i.i.i, %bb.ba ], [ %.val.pre.i.i.i.i, %bb.bb ]
  %i.gn = phi i64 [ %i.gh, %bb.ba ], [ %i.gm, %bb.bb ]
  %i.go = getelementptr inbounds nuw i8, ptr %i.fe, i64 24
  %i.gp = load i64, ptr %i.go, align 8, !tbaa !65
  %i.gq = mul i64 %.val.i78.i.i.i, 100
  %i.gr = mul i64 %i.gq, %i.gp
  %i.gs = udiv i64 %i.gr, %i.gn
  %i.gt = trunc i64 %i.gs to i32                  ; 3 uses
  %i.gu = icmp slt i32 %i.gt, 25
  br i1 %i.gu, label %bb.be, label %bb.bc

bb.bc:                                            ; preds = %mi_page_commit_usage.exit.i.i.i
  %i.gv = icmp samesign ult i32 %i.gt, 50
  br i1 %i.gv, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.gw = icmp samesign ult i32 %i.gt, 75
  %..i.i.i = select i1 %i.gw, i32 36, i32 32
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc, %mi_page_commit_usage.exit.i.i.i
  %.162.i.i.i = phi i32 [ 33, %bb.bc ], [ 31, %mi_page_commit_usage.exit.i.i.i ], [ %..i.i.i, %bb.bd ]
  %i.gx = getelementptr inbounds nuw i8, ptr %i.fe, i64 116
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !15
  %i.gz = zext i32 %i.gy to i64
  br label %bb.bk

bb.bf:                                            ; preds = %bb.at, %bb.as
  %i.ha = icmp sgt i64 %.06581.i.i.i, 0
  br i1 %i.ha, label %bb.bk, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.hb = load i64, ptr %i.aw, align 8, !tbaa !70
  %i.hc = icmp uge i64 %i.fb, %i.hb
  %.not72.i.i.i = icmp samesign ugt i64 %indvars.iv.i.i.i, 8
  %or.cond79.i.i.i = select i1 %i.co, i1 true, i1 %.not72.i.i.i
  %or.cond86.i.i.i = select i1 %i.hc, i1 %or.cond79.i.i.i, i1 false
  br i1 %or.cond86.i.i.i, label %bb.bh, label %bb.bk

bb.bh:                                            ; preds = %bb.bg
  %i.hd = load ptr, ptr %i.ai, align 8, !tbaa !73
  %i.he = call zeroext i1 @mi_bbitmap_is_xsetN(i1 noundef zeroext true, ptr noundef %i.hd, i64 noundef %i.fb, i64 noundef 1) #17
  br i1 %i.he, label %bb.bi, label %bb.bk

bb.bi:                                            ; preds = %bb.bh
  %i.hf = load ptr, ptr %i.ax, align 8, !tbaa !76
  %i.hg = call zeroext i1 @mi_bitmap_is_xsetN(i1 noundef zeroext true, ptr noundef %i.hf, i64 noundef %i.fb, i64 noundef 1) #17
  br i1 %i.hg, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.hh = load ptr, ptr %i.ay, align 8, !tbaa !61
  %i.hi = call zeroext i1 @mi_bitmap_is_xsetN(i1 noundef zeroext true, ptr noundef %i.hh, i64 noundef %i.fb, i64 noundef 1) #17
  %.74.i.i.i = select i1 %i.hi, i8 95, i8 46
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi, %bb.bh, %bb.bg, %bb.bf, %bb.be
  %.168.i.i.i = phi i64 [ %i.fm, %bb.be ], [ %.06780.i.i.i, %bb.bj ], [ %.06780.i.i.i, %bb.bi ], [ %.06780.i.i.i, %bb.bg ], [ %.06780.i.i.i, %bb.bf ], [ %.06780.i.i.i, %bb.bh ] ; 3 uses
  %.166.i.i.i = phi i64 [ %i.gz, %bb.be ], [ %.06581.i.i.i, %bb.bj ], [ %.06581.i.i.i, %bb.bi ], [ %.06581.i.i.i, %bb.bg ], [ %.06581.i.i.i, %bb.bf ], [ %.06581.i.i.i, %bb.bh ] ; 3 uses
  %.364.i.i.i = phi i32 [ %.162.i.i.i, %bb.be ], [ 37, %bb.bj ], [ 33, %bb.bi ], [ 37, %bb.bg ], [ %.06182.i.i.i, %bb.bf ], [ %.06182.i.i.i, %bb.bh ] ; 6 uses
  %.3.i.i.i = phi i8 [ %.1.i.i.i, %bb.be ], [ %.74.i.i.i, %bb.bj ], [ 126, %bb.bi ], [ 105, %bb.bg ], [ 45, %bb.bf ], [ 63, %bb.bh ]
  %.not73.i.i.i = icmp eq i32 %.364.i.i.i, %.05983.i.i.i
  br i1 %.not73.i.i.i, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.hj = getelementptr inbounds nuw i8, ptr %i.b, i64 %.3.i.i
  %i.hk = call i32 (ptr, i64, ptr, ...) @_mi_snprintf(ptr noundef nonnull %i.hj, i64 noundef 32, ptr noundef nonnull @.str.30, i32 noundef %.364.i.i.i) #17
  %i.hl = sext i32 %i.hk to i64
  %i.hm = add i64 %.3.i.i, %i.hl
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %.4.i.i = phi i64 [ %.3.i.i, %bb.bk ], [ %i.hm, %bb.bl ] ; 3 uses
  %.160.i.i.i = phi i32 [ %.05983.i.i.i, %bb.bk ], [ %.364.i.i.i, %bb.bl ] ; 2 uses
  %i.hn = getelementptr i8, ptr %i.b, i64 %.4.i.i
  store i8 %.3.i.i.i, ptr %i.hn, align 1, !tbaa !15
  %i.ho = add nuw nsw i64 %.4.i.i, 1              ; 3 uses
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.hp = add nsw i64 %.166.i.i.i, -1             ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, 63
  br i1 %exitcond.not.i.i.i, label %.peel.begin.i.i.i, label %bb.as, !llvm.loop !134

mi_debug_show_page_bfield.exit.i.i:               ; preds = %bb.ar, %bb.aq
  %.5.i.i = phi i64 [ %i.ho, %bb.aq ], [ %i.fa, %bb.ar ] ; 2 uses
  %i.hq = getelementptr i8, ptr %i.b, i64 %.5.i.i ; 2 uses
  store i8 %.3.peel.i.i.i, ptr %i.hq, align 1, !tbaa !15
  %i.hr = add nuw nsw i64 %.5.i.i, 1
  %i.hs = add nsw i64 %.166.peel.i.i.i, -1
  %i.ht = getelementptr i8, ptr %i.hq, i64 1
  %i.hu = call i32 (ptr, i64, ptr, ...) @_mi_snprintf(ptr noundef nonnull %i.ht, i64 noundef 32, ptr noundef nonnull @.str.30, i32 noundef 37) #17
  %i.hv = sext i32 %i.hu to i64
  %i.hw = add i64 %i.hr, %i.hv                    ; 2 uses
  %i.hx = add i64 %.168.peel.i.i.i, %.16135.i.i
  %i.hy = add nuw nsw i64 %i.hw, 1
  %i.hz = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.hw
  store i8 32, ptr %i.hz, align 1, !tbaa !15
  br label %bb.bq

bb.bn:                                            ; preds = %_mi_memset.exit.i.i
  %i.ia = getelementptr inbounds nuw i8, ptr %i.b, i64 %.213.i.i ; 2 uses
  %i.ib = load i64, ptr @_mi_cpu_stosb_max, align 8, !tbaa !31
  %.not.i78.i.i = icmp ult i64 %i.ib, 64
  br i1 %.not.i78.i.i, label %bb.bp, label %bb.bo, !prof !30

bb.bo:                                            ; preds = %bb.bn
  %i.ic = call { ptr, i64 } asm sideeffect "rep stosb", "={di},={cx},{ax},0,1,~{memory},~{dirflag},~{fpsr},~{flags}"(i8 range(i8 0, 112) 111, ptr nonnull %i.ia, i64 64) #20, !srcloc !84 ; 0 uses
  br label %_mi_memset.exit79.i.i

bb.bp:                                            ; preds = %bb.bn
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.ia, i8 111, i64 64, i1 false)
  br label %_mi_memset.exit79.i.i

_mi_memset.exit79.i.i:                            ; preds = %bb.bp, %bb.bo
  %i.id = add i64 %.213.i.i, 64
  br label %bb.bq

bb.bq:                                            ; preds = %_mi_memset.exit79.i.i, %mi_debug_show_page_bfield.exit.i.i
  %.219.i.i = phi i64 [ %i.hs, %mi_debug_show_page_bfield.exit.i.i ], [ %.11831.i.i, %_mi_memset.exit79.i.i ] ; 2 uses
  %.216.i.i = phi i32 [ %.364.peel.i.i.i, %mi_debug_show_page_bfield.exit.i.i ], [ %.11532.i.i, %_mi_memset.exit79.i.i ] ; 2 uses
  %.6.i.i = phi i64 [ %i.hy, %mi_debug_show_page_bfield.exit.i.i ], [ %i.id, %_mi_memset.exit79.i.i ]
  %.2.i.i = phi i64 [ %i.hx, %mi_debug_show_page_bfield.exit.i.i ], [ %.16135.i.i, %_mi_memset.exit79.i.i ] ; 3 uses
  %i.ie = add i64 %.26434.i.i, 64                 ; 3 uses
  %i.if = add nuw nsw i64 %.05636.i.i, 1          ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.if, 8
  br i1 %exitcond.not.i.i, label %bb.q, label %bb.r, !llvm.loop !135

mi_debug_show_chunks.exit.i:                      ; preds = %bb.q, %mi_arena_used_slices.exit.i.i
  %.060.lcssa.i.i = phi i64 [ 0, %mi_arena_used_slices.exit.i.i ], [ %.2.i.i, %bb.q ] ; 2 uses
  call void (ptr, ...) @_mi_raw_message(ptr noundef nonnull @.str.29, i64 noundef %.060.lcssa.i.i) #17
  %i.ig = add i64 %.060.lcssa.i.i, %.035.i
  br label %bb.br

bb.br:                                            ; preds = %mi_debug_show_chunks.exit.i, %bb.b
  %.2.i = phi i64 [ %i.ig, %mi_debug_show_chunks.exit.i ], [ %.035.i, %bb.b ] ; 2 uses
  %i.ih = add nuw i64 %.03034.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ih, %i.f
  br i1 %exitcond.not.i, label %mi_debug_show_arenas_ex.exit, label %bb.b, !llvm.loop !136

mi_debug_show_arenas_ex.exit:                     ; preds = %bb.br, %bb.a
  %.0.lcssa.i = phi i64 [ 0, %bb.a ], [ %.2.i, %bb.br ]
  call void (ptr, ...) @_mi_raw_message(ptr noundef nonnull @.str.25, i64 noundef %.0.lcssa.i) #17
  ret void
}

declare ptr @mi_heap_main() local_unnamed_addr #6

; Function Attrs: nooutline nounwind uwtable
define hidden void @mi_arenas_print() local_unnamed_addr #5 {
bb.a:
  tail call void @mi_debug_show_arenas() #18
  ret void
}

; Function Attrs: nooutline nounwind uwtable
define hidden range(i32 0, 13) i32 @mi_reserve_huge_os_pages_at_ex(i64 noundef %0, i32 noundef %1, i64 noundef %2, i1 noundef zeroext %3, ptr nofree noundef writeonly captures(address_is_null) %4) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %5 = alloca %struct.mi_memid_s, align 8         ; 5 uses
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %4, align 8, !tbaa !83
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = icmp eq i64 %0, 0
  br i1 %i.c, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %1, i32 -1) ; 2 uses
  %i.d = icmp sgt i32 %1, -1
  br i1 %i.d, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.e = tail call i32 @_mi_os_numa_node_count() #17
  %i.f = srem i32 %spec.store.select, %i.e
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.022 = phi i32 [ %i.f, %bb.e ], [ %spec.store.select, %bb.d ] ; 3 uses
  %i.g = tail call ptr @_mi_subproc() #17         ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 0, ptr %i.a, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store i64 0, ptr %i.b, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.h = call ptr @_mi_os_alloc_huge_os_pages(ptr noundef %i.g, i64 noundef %0, i32 noundef %.022, i64 noundef %2, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, ptr noundef nonnull %5) #17 ; 3 uses
  %i.i = icmp eq ptr %i.h, null
  %i.j = load i64, ptr %i.b, align 8              ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  %or.cond = select i1 %i.i, i1 true, i1 %i.k
  br i1 %or.cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void (ptr, ...) @_mi_warning_message(ptr noundef nonnull @.str.3, i64 noundef %0) #17
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  call void (ptr, ...) @_mi_verbose_message(ptr noundef nonnull @.str.4, i32 noundef %.022, i64 noundef %i.j, i64 noundef %0) #17
  %i.l = load i64, ptr %i.a, align 8, !tbaa !31
  %i.m = call fastcc zeroext i1 @mi_manage_os_memory_ex2(ptr noundef %i.g, ptr noundef nonnull %i.h, i64 noundef %i.l, i32 noundef %.022, i1 noundef zeroext %3, ptr noundef nonnull byval(%struct.mi_memid_s) align 8 %5, ptr noundef null, ptr noundef null, ptr noundef %4) #18
  br i1 %i.m, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.n = load i64, ptr %i.a, align 8, !tbaa !31
  call void @_mi_os_free(ptr noundef %i.g, ptr noundef nonnull %i.h, i64 noundef %i.n, ptr noundef nonnull byval(%struct.mi_memid_s) align 8 %5) #17
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.g
  %.0 = phi i32 [ 12, %bb.g ], [ 12, %bb.i ], [ 0, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %bb.k

bb.k:                                             ; preds = %bb.c, %bb.j
  %.1 = phi i32 [ %.0, %bb.j ], [ 0, %bb.c ]
  ret i32 %.1
}

declare i32 @_mi_os_numa_node_count() local_unnamed_addr #6

declare ptr @_mi_os_alloc_huge_os_pages(ptr noundef, i64 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @_mi_warning_message(ptr noundef, ...) local_unnamed_addr #6

declare void @_mi_verbose_message(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nooutline nounwind uwtable
define hidden range(i32 0, 13) i32 @mi_reserve_huge_os_pages_at(i64 noundef %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #5 {
bb.a:
  %i.a = tail call i32 @mi_reserve_huge_os_pages_at_ex(i64 noundef %0, i32 noundef %1, i64 noundef %2, i1 noundef zeroext false, ptr noundef null) #18
  ret i32 %i.a
}

; Function Attrs: nooutline nounwind uwtable
define hidden range(i32 0, 13) i32 @mi_reserve_huge_os_pages_interleave(i64 noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = add i64 %1, -1
  %or.cond = icmp ult i64 %i.b, 2147483647
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = trunc nuw nsw i64 %1 to i32
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.d = tail call i32 @_mi_os_numa_node_count() #17
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.e = phi i32 [ %i.c, %bb.c ], [ %i.d, %bb.d ] ; 2 uses
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %i.e, i32 1)
  %i.f = zext nneg i32 %spec.store.select to i64  ; 3 uses
  %i.g = udiv i64 %0, %i.f
  %i.h = urem i64 %0, %i.f
  %i.i = icmp eq i64 %2, 0
  br i1 %i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = udiv i64 %2, %i.f
  %i.k = add i64 %i.j, 50
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.l = phi i64 [ %i.k, %bb.f ], [ 0, %bb.e ]
  %i.m = sext i32 %i.e to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.i
  %indvars.iv = phi i64 [ 0, %bb.g ], [ %indvars.iv.next, %bb.i ] ; 3 uses
  %.03849 = phi i64 [ %0, %bb.g ], [ %.139, %bb.i ] ; 2 uses
  %i.n = icmp samesign ugt i64 %i.h, %indvars.iv
  %i.o = zext i1 %i.n to i64
  %spec.select = add i64 %i.g, %i.o               ; 3 uses
  %i.p = trunc nuw nsw i64 %indvars.iv to i32
  %i.q = tail call range(i32 0, 13) i32 @mi_reserve_huge_os_pages_at_ex(i64 noundef %spec.select, i32 noundef %i.p, i64 noundef %i.l, i1 noundef zeroext false, ptr noundef null) #18 ; 2 uses
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %bb.h
  %.139 = tail call i64 @llvm.usub.sat.i64(i64 %.03849, i64 %spec.select)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
end_hunk_0
