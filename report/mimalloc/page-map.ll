Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mimalloc/original/page-map?download=true
inline.NumInlined: 55
inline.NumDeleted: 32
begin_hunk_0_@_mi_page_map_init:bb.a

bb.g:                                             ; preds = %_mi_align_up.exit.i
  %i.w = tail call zeroext i1 @mi_option_is_enabled(i32 noundef 39) #9
  br i1 %i.w, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = tail call zeroext i1 @_mi_os_has_overcommit() #9
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %_mi_align_up.exit.i
  %i.y = phi i1 [ true, %bb.g ], [ %i.x, %bb.h ], [ true, %_mi_align_up.exit.i ]
  %i.z = tail call ptr @_mi_subproc_main() #9     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #10
  %i.aa = call ptr @_mi_os_alloc_aligned(ptr noundef %i.z, i64 noundef %i.t, i64 noundef 1, i1 noundef zeroext %i.y, i1 noundef zeroext true, ptr noundef nonnull %0) #9 ; 14 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.j, label %bb.k, !prof !8

bb.j:                                             ; preds = %bb.i
  %i.ac = lshr i64 %i.t, 10
  call void (i32, ptr, ...) @_mi_error_message(i32 noundef 12, ptr noundef nonnull @.str, i64 noundef %i.ac) #9
  br label %mi_page_map_init_once.exit

bb.k:                                             ; preds = %bb.i
  %i.ad = load i8, ptr %i.c, align 1, !tbaa !34, !range !35, !noundef !36
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %bb.l, label %bb.q

bb.l:                                             ; preds = %bb.k
  %i.af = load i8, ptr %i.d, align 2, !tbaa !37, !range !35, !noundef !36
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void (ptr, ...) @_mi_warning_message(ptr noundef nonnull @.str.2) #9
  call void @llvm.assume(i1 true) [ "align"(ptr %i.aa, i64 8) ]
  %i.ah = load i64, ptr @_mi_cpu_stosb_max, align 8, !tbaa !38
  %.not.i.i.i.i = icmp ugt i64 %i.t, %i.ah
  br i1 %.not.i.i.i.i, label %bb.o, label %bb.n, !prof !8

bb.n:                                             ; preds = %bb.m
  %i.ai = call { ptr, i64 } asm sideeffect "rep stosb", "={di},={cx},{ax},0,1,~{memory},~{dirflag},~{fpsr},~{flags}"(i8 0, ptr nonnull %i.aa, i64 %i.t) #10, !srcloc !39 ; 0 uses
  br label %_mi_memzero_aligned.exit.i

bb.o:                                             ; preds = %bb.m
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.aa, i8 0, i64 %i.t, i1 false)
  br label %_mi_memzero_aligned.exit.i

_mi_memzero_aligned.exit.i:                       ; preds = %bb.o, %bb.n
  store i8 1, ptr %i.d, align 2, !tbaa !37
  br label %bb.p

bb.p:                                             ; preds = %_mi_memzero_aligned.exit.i, %bb.l
  %i.aj = icmp ult i64 %.0.i.i, 88
  %i.ak = add i64 %.0.i.i, -88
  %i.al = lshr i64 %i.ak, 3
  %i.am = add nuw nsw i64 %i.al, 1
  %i.an = select i1 %i.aj, i64 0, i64 %i.am
  br label %bb.u

bb.q:                                             ; preds = %bb.k
  %i.ao = add i64 %i.i, 131151                    ; 3 uses
  br i1 %i.m, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ap = sub i64 0, %i.i
  %i.aq = and i64 %i.ao, %i.ap
  br label %_mi_align_up.exit58.i

bb.s:                                             ; preds = %bb.q
  %i.ar = urem i64 %i.ao, %i.i
  %i.as = sub nuw i64 %i.ao, %i.ar
  br label %_mi_align_up.exit58.i

_mi_align_up.exit58.i:                            ; preds = %bb.s, %bb.r
  %.0.i57.i = phi i64 [ %i.aq, %bb.r ], [ %i.as, %bb.s ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.at = call zeroext i1 @_mi_os_commit(ptr noundef %i.z, ptr noundef nonnull %i.aa, i64 noundef %.0.i57.i, ptr noundef nonnull %i.a) #9
  br i1 %i.at, label %.thread.i, label %bb.t

.thread.i:                                        ; preds = %_mi_align_up.exit58.i
  %i.au = icmp ult i64 %.0.i57.i, 88
  %i.av = add i64 %.0.i57.i, -88
  %i.aw = lshr i64 %i.av, 3
  %i.ax = add nuw nsw i64 %i.aw, 1
  %i.ay = select i1 %i.au, i64 0, i64 %i.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.u

bb.t:                                             ; preds = %_mi_align_up.exit58.i
  call void (ptr, ...) @_mi_warning_message(ptr noundef nonnull @.str.3) #9
  call void @_mi_os_free(ptr noundef %i.z, ptr noundef nonnull %i.aa, i64 noundef %i.t, ptr noundef nonnull byval(%struct.mi_memid_s) align 8 %0) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %mi_page_map_init_once.exit

bb.u:                                             ; preds = %.thread.i, %bb.p
  %.154.i = phi i64 [ %i.an, %bb.p ], [ %i.ay, %.thread.i ]
  %i.az = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.0.i.i ; 5 uses
  %i.ba = load i8, ptr %i.c, align 1, !tbaa !34, !range !35, !noundef !36
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bc = call zeroext i1 @_mi_os_commit(ptr noundef %i.z, ptr noundef nonnull %i.az, i64 noundef 65536, ptr noundef null) #9
  br i1 %i.bc, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void (ptr, ...) @_mi_warning_message(ptr noundef nonnull @.str.3) #9
  call void @_mi_os_free(ptr noundef %i.z, ptr noundef nonnull %i.aa, i64 noundef %i.t, ptr noundef nonnull byval(%struct.mi_memid_s) align 8 %0) #9
  br label %mi_page_map_init_once.exit

bb.x:                                             ; preds = %bb.v, %bb.u
  %i.bd = load i8, ptr %i.d, align 2, !tbaa !37, !range !35, !noundef !36
  %i.be = trunc nuw i8 %i.bd to i1
  br i1 %i.be, label %_mi_memzero_aligned.exit60.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @llvm.assume(i1 true) [ "align"(ptr %i.az, i64 8) ]
  %i.bf = load i64, ptr @_mi_cpu_stosb_max, align 8, !tbaa !38
  %.not.i.i.i59.i = icmp ult i64 %i.bf, 65536
  br i1 %.not.i.i.i59.i, label %bb.aa, label %bb.z, !prof !8

bb.z:                                             ; preds = %bb.y
  %i.bg = call { ptr, i64 } asm sideeffect "rep stosb", "={di},={cx},{ax},0,1,~{memory},~{dirflag},~{fpsr},~{flags}"(i8 0, ptr nonnull %i.az, i64 65536) #10, !srcloc !39 ; 0 uses
  br label %_mi_memzero_aligned.exit60.i

bb.aa:                                            ; preds = %bb.y
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(65536) %i.az, i8 0, i64 65536, i1 false)
  br label %_mi_memzero_aligned.exit60.i

_mi_memzero_aligned.exit60.i:                     ; preds = %bb.aa, %bb.z, %bb.x
  %i.bh = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bh, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !42
  %i.bi = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store i64 %.0.i.i, ptr %i.bi, align 8, !tbaa !15
  %i.bj = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bj, i8 0, i64 40, i1 false)
  store atomic i64 %.154.i, ptr %i.aa release, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.aa, i64 80
  store atomic ptr %i.az, ptr %i.bk release, align 8
  store atomic ptr %i.aa, ptr @__mi_page_map release, align 64
  br label %mi_page_map_init_once.exit

mi_page_map_init_once.exit:                       ; preds = %bb.j, %bb.t, %bb.w, %_mi_memzero_aligned.exit60.i
  %.3.i = phi i1 [ false, %bb.j ], [ false, %bb.t ], [ true, %_mi_memzero_aligned.exit60.i ], [ false, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #10
  call void @_mi_atomic_once_release(ptr noundef nonnull @_mi_page_map_init._mi_once) #9
  br label %bb.b
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare zeroext i1 @_mi_atomic_once_enter(ptr noundef) local_unnamed_addr #2

declare void @_mi_atomic_once_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nooutline nounwind uwtable
define hidden void @_mi_page_map_unsafe_destroy() local_unnamed_addr #0 {
bb.a:
  %0 = alloca %struct.mi_memid_s, align 8         ; 6 uses
  %i.a = load atomic ptr, ptr @__mi_page_map monotonic, align 64 ; 9 uses
  %i.b = icmp eq ptr %i.a, null
  %i.c = icmp eq ptr %i.a, @mi_page_map_empty
  %or.cond = or i1 %i.b, %i.c
  br i1 %or.cond, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @_mi_subproc_main() #9     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.f = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull %i.e) #9 ; 0 uses
  %i.g = load atomic i64, ptr %i.a seq_cst, align 8, !tbaa !46
  %i.h = icmp ugt i64 %i.g, 1
  br i1 %i.h, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.c

._crit_edge:                                      ; preds = %bb.e, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !15
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  tail call void @_mi_os_free_ex(ptr noundef %i.d, ptr noundef nonnull %i.a, i64 noundef %i.m, i1 noundef zeroext true, ptr noundef nonnull byval(%struct.mi_memid_s) align 8 %i.n) #9
  store atomic ptr @mi_page_map_empty, ptr @__mi_page_map release, align 64
  br label %bb.f

bb.c:                                             ; preds = %.lr.ph, %bb.e
  %.021 = phi i64 [ 1, %.lr.ph ], [ %i.q, %bb.e ] ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.021 ; 2 uses
  %i.p = load atomic ptr, ptr %i.o acquire, align 8 ; 3 uses
  %.not = icmp eq ptr %i.p, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #10
  store i64 1099511627779, ptr %i.j, align 8, !alias.scope !47
  store ptr %i.p, ptr %0, align 8, !tbaa !12, !alias.scope !47
  store i64 65536, ptr %i.k, align 8, !tbaa !12, !alias.scope !47
  tail call void @_mi_os_free_ex(ptr noundef %i.d, ptr noundef nonnull %i.p, i64 noundef 65536, i1 noundef zeroext true, ptr noundef nonnull byval(%struct.mi_memid_s) align 8 %0) #9
  store atomic ptr null, ptr %i.o release, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #10
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.q = add nuw i64 %.021, 1                     ; 2 uses
  %i.r = load atomic i64, ptr %i.a seq_cst, align 8, !tbaa !46
  %i.s = icmp ult i64 %i.q, %i.r
  br i1 %i.s, label %bb.c, label %._crit_edge, !llvm.loop !45

bb.f:                                             ; preds = %bb.a, %._crit_edge
  ret void
}

declare ptr @_mi_subproc_main() local_unnamed_addr #2

declare void @_mi_os_free_ex(ptr noundef, ptr noundef, i64 noundef, i1 noundef zeroext, ptr noundef byval(%struct.mi_memid_s) align 8) local_unnamed_addr #2

; Function Attrs: nooutline nounwind uwtable
define hidden noundef zeroext i1 @_mi_page_map_register(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load atomic ptr, ptr @__mi_page_map monotonic, align 64 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.d, !prof !8

bb.b:                                             ; preds = %bb.a
  %i.c = tail call zeroext i1 @_mi_page_map_init() #11
  br i1 %i.c, label %bb.c, label %mi_page_map_set_range.exit

bb.c:                                             ; preds = %bb.b
  %i.d = load atomic ptr, ptr @__mi_page_map acquire, align 64
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.06 = phi ptr [ %i.d, %bb.c ], [ %i.a, %bb.a ] ; 6 uses
  %i.e = getelementptr i8, ptr %0, i64 40
  %.val.i.i = load i64, ptr %i.e, align 8, !tbaa !24
  %i.f = getelementptr i8, ptr %0, i64 58
  %.val4.i.i = load i16, ptr %i.f, align 2, !tbaa !25
  %i.g = zext i16 %.val4.i.i to i64
  %i.h = mul i64 %.val.i.i, %i.g                  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = load i64, ptr %i.i, align 8, !tbaa !26
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %i.j
  %i.l = icmp ugt i64 %i.h, 4194304
  %i.m = add nuw nsw i64 %i.h, 65535
  %i.n = lshr i64 %i.m, 16
  %i.o = select i1 %i.l, i64 63, i64 %i.n         ; 3 uses
  %i.p = ptrtoint ptr %i.k to i64                 ; 2 uses
  %i.q = lshr i64 %i.p, 16
  %i.r = and i64 %i.q, 8191                       ; 2 uses
  %i.s = lshr i64 %i.p, 29                        ; 2 uses
  %.not31.i.i = icmp eq i64 %i.o, 0
  br i1 %.not31.i.i, label %mi_page_map_set_range.exit, label %.lr.ph37.i.i

.lr.ph37.i.i:                                     ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %.06, i64 80
  %broadcast.splatinsert = insertelement <2 x ptr> poison, ptr %0, i64 0
  %broadcast.splat = shufflevector <2 x ptr> %broadcast.splatinsert, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge.i.i, %.lr.ph37.i.i
  %.01134.i.i = phi i64 [ %i.o, %.lr.ph37.i.i ], [ %.lcssa14, %._crit_edge.i.i ] ; 4 uses
  %.01233.i.i = phi i64 [ %i.r, %.lr.ph37.i.i ], [ 0, %._crit_edge.i.i ] ; 4 uses
  %.01532.i.i = phi i64 [ %i.s, %.lr.ph37.i.i ], [ %i.aw, %._crit_edge.i.i ] ; 6 uses
  %i.u = load atomic i64, ptr %.06 monotonic, align 8
  %.not.i.i.i.i = icmp ult i64 %.01532.i.i, %i.u
  br i1 %.not.i.i.i.i, label %bb.h, label %bb.f, !prof !27

bb.f:                                             ; preds = %bb.e
  %i.v = load atomic i64, ptr %.06 acquire, align 8
  %.not13.i.i.i.i = icmp ult i64 %.01532.i.i, %i.v
  br i1 %.not13.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = tail call fastcc zeroext i1 @mi_page_map_commit_entries(ptr noundef nonnull %.06, i64 noundef %.01532.i.i) #11
  br i1 %i.w, label %bb.h, label %mi_page_map_set_range_prim.exit.i, !prof !28

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.01532.i.i
  %i.y = load atomic ptr, ptr %i.x acquire, align 8 ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.i, label %mi_page_map_ensure_submap_at.exit.i.i, !prof !8

bb.i:                                             ; preds = %bb.h
  %i.aa = tail call fastcc ptr @mi_page_map_alloc_submap_at(ptr noundef nonnull %.06, i64 noundef %.01532.i.i) #11 ; 2 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %mi_page_map_set_range_prim.exit.i, label %mi_page_map_ensure_submap_at.exit.i.i, !prof !29

mi_page_map_ensure_submap_at.exit.i.i:            ; preds = %bb.i, %bb.h
  %.020.i.i = phi ptr [ %i.y, %bb.h ], [ %i.aa, %bb.i ] ; 2 uses
  %i.ac = add i64 %.01134.i.i, -1
  %i.ad = xor i64 %.01233.i.i, 8191
  %i.ae = tail call i64 @llvm.umin.i64(i64 %i.ac, i64 %i.ad) ; 2 uses
  %i.af = add nuw nsw i64 %i.ae, 1                ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.ae, 3
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %mi_page_map_ensure_submap_at.exit.i.i
  %n.vec = and i64 %i.af, 16380                   ; 4 uses
  %i.ag = sub i64 %.01134.i.i, %n.vec             ; 2 uses
  %i.ah = add nuw nsw i64 %.01233.i.i, %n.vec
  %i.ai = add i64 %.01134.i.i, -1
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %.020.i.i, i64 %.01233.i.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ak = phi i64 [ %i.ai, %vector.ph ], [ %i.an, %vector.body ] ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %index ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store <2 x ptr> %broadcast.splat, ptr %i.al, align 8, !tbaa !30
  store <2 x ptr> %broadcast.splat, ptr %i.am, align 8, !tbaa !30
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.an = add i64 %i.ak, -4
  %i.ao = icmp eq i64 %index.next, %n.vec
  br i1 %i.ao, label %middle.block, label %vector.body, !llvm.loop !48

middle.block:                                     ; preds = %vector.body
  %i.ap = icmp ne i64 %i.ak, 3
  %cmp.n = icmp eq i64 %i.af, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %mi_page_map_ensure_submap_at.exit.i.i, %middle.block
  %.130.i.i.ph = phi i64 [ %.01134.i.i, %mi_page_map_ensure_submap_at.exit.i.i ], [ %i.ag, %middle.block ]
  %.11329.i.i.ph = phi i64 [ %.01233.i.i, %mi_page_map_ensure_submap_at.exit.i.i ], [ %i.ah, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.130.i.i = phi i64 [ %i.ar, %.lr.ph.i.i ], [ %.130.i.i.ph, %.lr.ph.i.i.preheader ]
  %.11329.i.i = phi i64 [ %i.as, %.lr.ph.i.i ], [ %.11329.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %.020.i.i, i64 %.11329.i.i
  store ptr %0, ptr %i.aq, align 8, !tbaa !30
  %i.ar = add i64 %.130.i.i, -1                   ; 3 uses
  %i.as = add nuw nsw i64 %.11329.i.i, 1
  %i.at = icmp ne i64 %i.ar, 0                    ; 2 uses
  %i.au = icmp samesign ult i64 %.11329.i.i, 8191
  %i.av = and i1 %i.at, %i.au
  br i1 %i.av, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !49

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %middle.block
  %.lcssa14 = phi i64 [ %i.ag, %middle.block ], [ %i.ar, %.lr.ph.i.i ]
  %.lcssa = phi i1 [ %i.ap, %middle.block ], [ %i.at, %.lr.ph.i.i ]
  %i.aw = add i64 %.01532.i.i, 1
  br i1 %.lcssa, label %bb.e, label %mi_page_map_set_range.exit

mi_page_map_set_range_prim.exit.i:                ; preds = %bb.i, %bb.g
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %mi_page_map_set_range.exit, label %bb.j

bb.j:                                             ; preds = %mi_page_map_set_range_prim.exit.i
  tail call fastcc void @mi_page_map_set_range_prim(ptr noundef nonnull %.06, ptr noundef null, i64 noundef range(i64 0, 34359738368) %i.s, i64 noundef %i.r, i64 noundef %i.o) #11
  br label %mi_page_map_set_range.exit

mi_page_map_set_range.exit:                       ; preds = %._crit_edge.i.i, %bb.j, %mi_page_map_set_range_prim.exit.i, %bb.d, %bb.b
  %.0 = phi i1 [ false, %bb.b ], [ false, %mi_page_map_set_range_prim.exit.i ], [ false, %bb.j ], [ true, %bb.d ], [ true, %._crit_edge.i.i ]
  ret i1 %.0
}

; Function Attrs: nooutline nounwind uwtable
define hidden void @_mi_page_map_unregister(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load atomic ptr, ptr @__mi_page_map monotonic, align 64 ; 10 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %mi_page_map_set_range.exit, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 40
  %.val.i.i = load i64, ptr %i.c, align 8, !tbaa !24
  %i.d = getelementptr i8, ptr %0, i64 58
  %.val4.i.i = load i16, ptr %i.d, align 2, !tbaa !25
  %i.e = zext i16 %.val4.i.i to i64
  %i.f = mul i64 %.val.i.i, %i.e                  ; 2 uses
  %i.g = icmp ugt i64 %i.f, 4194304
  %i.h = add nuw nsw i64 %i.f, 65535
  %i.i = lshr i64 %i.h, 16
  %i.j = select i1 %i.g, i64 63, i64 %i.i         ; 2 uses
  %.not31.i.i = icmp eq i64 %i.j, 0
  br i1 %.not31.i.i, label %mi_page_map_set_range.exit, label %.lr.ph37.i.i

.lr.ph37.i.i:                                     ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = load i64, ptr %i.k, align 8, !tbaa !26
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 %i.l
  %i.n = ptrtoint ptr %i.m to i64                 ; 2 uses
  %i.o = lshr i64 %i.n, 29                        ; 6 uses
  %i.p = lshr i64 %i.n, 16
  %i.q = and i64 %i.p, 8191                       ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 80 ; 2 uses
  %i.s = load atomic i64, ptr %i.a monotonic, align 8
  %.not.i.i.i.i.peel = icmp ult i64 %i.o, %i.s
  br i1 %.not.i.i.i.i.peel, label %bb.e, label %bb.c, !prof !27

bb.c:                                             ; preds = %.lr.ph37.i.i
  %i.t = load atomic i64, ptr %i.a acquire, align 8
  %.not13.i.i.i.i.peel = icmp ult i64 %i.o, %i.t
  br i1 %.not13.i.i.i.i.peel, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = tail call fastcc zeroext i1 @mi_page_map_commit_entries(ptr noundef nonnull %i.a, i64 noundef %i.o) #11
  br i1 %i.u, label %bb.e, label %mi_page_map_set_range.exit, !prof !28

bb.e:                                             ; preds = %bb.d, %bb.c, %.lr.ph37.i.i
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.o
  %i.w = load atomic ptr, ptr %i.v acquire, align 8 ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.f, label %mi_page_map_ensure_submap_at.exit.i.i.peel, !prof !8

bb.f:                                             ; preds = %bb.e
  %i.y = tail call fastcc ptr @mi_page_map_alloc_submap_at(ptr noundef nonnull %i.a, i64 noundef %i.o) #11 ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %mi_page_map_set_range.exit, label %mi_page_map_ensure_submap_at.exit.i.i.peel, !prof !29

mi_page_map_ensure_submap_at.exit.i.i.peel:       ; preds = %bb.f, %bb.e
  %.020.i.i.peel = phi ptr [ %i.w, %bb.e ], [ %i.y, %bb.f ]
  %i.aa = shl nuw nsw i64 %i.q, 3
  %scevgep.peel = getelementptr nuw i8, ptr %.020.i.i.peel, i64 %i.aa
  %i.ab = add nsw i64 %i.j, -1                    ; 2 uses
  %i.ac = xor i64 %i.q, 8191
  %umin.peel = tail call i64 @llvm.umin.i64(i64 %i.ab, i64 %i.ac) ; 2 uses
  %i.ad = shl nuw nsw i64 %umin.peel, 3
  %i.ae = add nuw nsw i64 %i.ad, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.peel, i8 0, i64 %i.ae, i1 false), !tbaa !30
  %i.af = sub nsw i64 %i.ab, %umin.peel           ; 2 uses
  %.not.i.i.peel = icmp eq i64 %i.af, 0
  br i1 %.not.i.i.peel, label %mi_page_map_set_range.exit, label %.peel.next

.peel.next:                                       ; preds = %mi_page_map_ensure_submap_at.exit.i.i.peel, %mi_page_map_ensure_submap_at.exit.i.i
  %.01134.i.i = phi i64 [ %i.ar, %mi_page_map_ensure_submap_at.exit.i.i ], [ %i.af, %mi_page_map_ensure_submap_at.exit.i.i.peel ]
  %.01532.i.i.in = phi i64 [ %.01532.i.i, %mi_page_map_ensure_submap_at.exit.i.i ], [ %i.o, %mi_page_map_ensure_submap_at.exit.i.i.peel ]
  %.01532.i.i = add i64 %.01532.i.i.in, 1         ; 6 uses
  %i.ag = load atomic i64, ptr %i.a monotonic, align 8
  %.not.i.i.i.i = icmp ult i64 %.01532.i.i, %i.ag
  br i1 %.not.i.i.i.i, label %bb.i, label %bb.g, !prof !27

bb.g:                                             ; preds = %.peel.next
  %i.ah = load atomic i64, ptr %i.a acquire, align 8
  %.not13.i.i.i.i = icmp ult i64 %.01532.i.i, %i.ah
  br i1 %.not13.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = tail call fastcc zeroext i1 @mi_page_map_commit_entries(ptr noundef nonnull %i.a, i64 noundef %.01532.i.i) #11
  br i1 %i.ai, label %bb.i, label %mi_page_map_set_range.exit, !prof !28

bb.i:                                             ; preds = %bb.h, %bb.g, %.peel.next
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.01532.i.i
  %i.ak = load atomic ptr, ptr %i.aj acquire, align 8 ; 2 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %bb.j, label %mi_page_map_ensure_submap_at.exit.i.i, !prof !8

bb.j:                                             ; preds = %bb.i
  %i.am = tail call fastcc ptr @mi_page_map_alloc_submap_at(ptr noundef nonnull %i.a, i64 noundef %.01532.i.i) #11 ; 2 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %mi_page_map_set_range.exit, label %mi_page_map_ensure_submap_at.exit.i.i, !prof !29

mi_page_map_ensure_submap_at.exit.i.i:            ; preds = %bb.j, %bb.i
  %.020.i.i = phi ptr [ %i.ak, %bb.i ], [ %i.am, %bb.j ]
  %i.ao = add i64 %.01134.i.i, -1                 ; 2 uses
  %umin = tail call i64 @llvm.umin.i64(i64 %i.ao, i64 8191) ; 2 uses
  %i.ap = shl nuw nsw i64 %umin, 3
  %i.aq = add nuw nsw i64 %i.ap, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %.020.i.i, i8 0, i64 %i.aq, i1 false), !tbaa !30
  %i.ar = sub i64 %i.ao, %umin                    ; 2 uses
  %.not.i.i = icmp eq i64 %i.ar, 0
  br i1 %.not.i.i, label %mi_page_map_set_range.exit, label %.peel.next, !llvm.loop !50

mi_page_map_set_range.exit:                       ; preds = %mi_page_map_ensure_submap_at.exit.i.i, %bb.j, %bb.h, %bb.d, %bb.f, %mi_page_map_ensure_submap_at.exit.i.i.peel, %bb.b, %bb.a
  ret void
}

; Function Attrs: nooutline nounwind uwtable
define hidden void @_mi_page_map_unregister_range(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load atomic ptr, ptr @__mi_page_map monotonic, align 64 ; 10 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %mi_page_map_set_range.exit, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  %i.c = add i64 %1, 65535
  %i.d = lshr i64 %i.c, 16                        ; 2 uses
  %.not31.i.i = icmp eq i64 %i.d, 0
  br i1 %.not31.i.i, label %mi_page_map_set_range.exit, label %.lr.ph37.i.i

.lr.ph37.i.i:                                     ; preds = %bb.b
  %i.e = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.f = lshr i64 %i.e, 29                        ; 6 uses
  %i.g = lshr i64 %i.e, 16
  %i.h = and i64 %i.g, 8191                       ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 80 ; 2 uses
  %i.j = load atomic i64, ptr %i.a monotonic, align 8
  %.not.i.i.i.i.peel = icmp ult i64 %i.f, %i.j
  br i1 %.not.i.i.i.i.peel, label %bb.e, label %bb.c, !prof !27

bb.c:                                             ; preds = %.lr.ph37.i.i
  %i.k = load atomic i64, ptr %i.a acquire, align 8
  %.not13.i.i.i.i.peel = icmp ult i64 %i.f, %i.k
  br i1 %.not13.i.i.i.i.peel, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = tail call fastcc zeroext i1 @mi_page_map_commit_entries(ptr noundef nonnull %i.a, i64 noundef %i.f) #11
  br i1 %i.l, label %bb.e, label %mi_page_map_set_range.exit, !prof !28

bb.e:                                             ; preds = %bb.d, %bb.c, %.lr.ph37.i.i
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.f
  %i.n = load atomic ptr, ptr %i.m acquire, align 8 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.f, label %mi_page_map_ensure_submap_at.exit.i.i.peel, !prof !8

bb.f:                                             ; preds = %bb.e
  %i.p = tail call fastcc ptr @mi_page_map_alloc_submap_at(ptr noundef nonnull %i.a, i64 noundef %i.f) #11 ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %mi_page_map_set_range.exit, label %mi_page_map_ensure_submap_at.exit.i.i.peel, !prof !29

mi_page_map_ensure_submap_at.exit.i.i.peel:       ; preds = %bb.f, %bb.e
  %.020.i.i.peel = phi ptr [ %i.n, %bb.e ], [ %i.p, %bb.f ]
  %i.r = shl nuw nsw i64 %i.h, 3
  %scevgep.peel = getelementptr nuw i8, ptr %.020.i.i.peel, i64 %i.r
  %i.s = add nsw i64 %i.d, -1                     ; 2 uses
  %i.t = xor i64 %i.h, 8191
  %umin.peel = tail call i64 @llvm.umin.i64(i64 %i.s, i64 %i.t) ; 2 uses
  %i.u = shl nuw nsw i64 %umin.peel, 3
  %i.v = add nuw nsw i64 %i.u, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.peel, i8 0, i64 %i.v, i1 false), !tbaa !30
  %i.w = sub nsw i64 %i.s, %umin.peel             ; 2 uses
  %.not.i.i.peel = icmp eq i64 %i.w, 0
  br i1 %.not.i.i.peel, label %mi_page_map_set_range.exit, label %.peel.next

.peel.next:                                       ; preds = %mi_page_map_ensure_submap_at.exit.i.i.peel, %mi_page_map_ensure_submap_at.exit.i.i
  %.01134.i.i = phi i64 [ %i.ai, %mi_page_map_ensure_submap_at.exit.i.i ], [ %i.w, %mi_page_map_ensure_submap_at.exit.i.i.peel ]
  %.01532.i.i.in = phi i64 [ %.01532.i.i, %mi_page_map_ensure_submap_at.exit.i.i ], [ %i.f, %mi_page_map_ensure_submap_at.exit.i.i.peel ]
  %.01532.i.i = add i64 %.01532.i.i.in, 1         ; 6 uses
  %i.x = load atomic i64, ptr %i.a monotonic, align 8
  %.not.i.i.i.i = icmp ult i64 %.01532.i.i, %i.x
  br i1 %.not.i.i.i.i, label %bb.i, label %bb.g, !prof !27

bb.g:                                             ; preds = %.peel.next
  %i.y = load atomic i64, ptr %i.a acquire, align 8
  %.not13.i.i.i.i = icmp ult i64 %.01532.i.i, %i.y
  br i1 %.not13.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = tail call fastcc zeroext i1 @mi_page_map_commit_entries(ptr noundef nonnull %i.a, i64 noundef %.01532.i.i) #11
  br i1 %i.z, label %bb.i, label %mi_page_map_set_range.exit, !prof !28

bb.i:                                             ; preds = %bb.h, %bb.g, %.peel.next
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.01532.i.i
  %i.ab = load atomic ptr, ptr %i.aa acquire, align 8 ; 2 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.j, label %mi_page_map_ensure_submap_at.exit.i.i, !prof !8

bb.j:                                             ; preds = %bb.i
  %i.ad = tail call fastcc ptr @mi_page_map_alloc_submap_at(ptr noundef nonnull %i.a, i64 noundef %.01532.i.i) #11 ; 2 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %mi_page_map_set_range.exit, label %mi_page_map_ensure_submap_at.exit.i.i, !prof !29

mi_page_map_ensure_submap_at.exit.i.i:            ; preds = %bb.j, %bb.i
  %.020.i.i = phi ptr [ %i.ab, %bb.i ], [ %i.ad, %bb.j ]
  %i.af = add i64 %.01134.i.i, -1                 ; 2 uses
  %umin = tail call i64 @llvm.umin.i64(i64 %i.af, i64 8191) ; 2 uses
  %i.ag = shl nuw nsw i64 %umin, 3
  %i.ah = add nuw nsw i64 %i.ag, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %.020.i.i, i8 0, i64 %i.ah, i1 false), !tbaa !30
  %i.ai = sub i64 %i.af, %umin                    ; 2 uses
  %.not.i.i = icmp eq i64 %i.ai, 0
  br i1 %.not.i.i, label %mi_page_map_set_range.exit, label %.peel.next, !llvm.loop !51

mi_page_map_set_range.exit:                       ; preds = %mi_page_map_ensure_submap_at.exit.i.i, %bb.j, %bb.h, %bb.d, %bb.f, %mi_page_map_ensure_submap_at.exit.i.i.peel, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nooutline norecurse nounwind willreturn uwtable
define hidden ptr @_mi_safe_ptr_page(ptr noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = load atomic ptr, ptr @__mi_page_map monotonic, align 64 ; 2 uses
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = lshr i64 %i.b, 16
  %i.d = and i64 %i.c, 8191
  %i.e = lshr i64 %i.b, 29                        ; 2 uses
  %i.f = load atomic i64, ptr %i.a monotonic, align 8
  %.not.i = icmp ult i64 %i.e, %i.f
  br i1 %.not.i, label %bb.b, label %_mi_checked_ptr_page.exit, !prof !27

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.e
  %i.i = load atomic ptr, ptr %i.h acquire, align 8 ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_mi_checked_ptr_page.exit, label %bb.c, !prof !8

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.d
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !30
  br label %_mi_checked_ptr_page.exit

_mi_checked_ptr_page.exit:                        ; preds = %bb.a, %bb.b, %bb.c
  %.1.i = phi ptr [ null, %bb.a ], [ %i.l, %bb.c ], [ null, %bb.b ]
  ret ptr %.1.i
}

; Function Attrs: mustprogress nooutline norecurse nounwind willreturn uwtable
define hidden zeroext i1 @mi_is_in_heap_region(ptr noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = load atomic ptr, ptr @__mi_page_map monotonic, align 64 ; 2 uses
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = lshr i64 %i.b, 16
  %i.d = and i64 %i.c, 8191
  %i.e = lshr i64 %i.b, 29                        ; 2 uses
  %i.f = load atomic i64, ptr %i.a monotonic, align 8
  %.not.i.i = icmp ult i64 %i.e, %i.f
  br i1 %.not.i.i, label %bb.b, label %_mi_safe_ptr_page.exit, !prof !27

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.e
  %i.i = load atomic ptr, ptr %i.h acquire, align 8 ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_mi_safe_ptr_page.exit, label %bb.c, !prof !8

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.d
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !30
  %i.m = icmp ne ptr %i.l, null
  br label %_mi_safe_ptr_page.exit

_mi_safe_ptr_page.exit:                           ; preds = %bb.a, %bb.b, %bb.c
  %.1.i.i = phi i1 [ false, %bb.a ], [ %i.m, %bb.c ], [ false, %bb.b ]
  ret i1 %.1.i.i
}

declare i64 @mi_option_get_clamp(i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare i64 @_mi_os_virtual_address_bits() local_unnamed_addr #2

declare i64 @_mi_os_page_size() local_unnamed_addr #2

declare zeroext i1 @mi_option_is_enabled(i32 noundef) local_unnamed_addr #2

declare zeroext i1 @_mi_os_has_overcommit() local_unnamed_addr #2

declare ptr @_mi_os_alloc_aligned(ptr noundef, i64 noundef, i64 noundef, i1 noundef zeroext, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

declare void @_mi_error_message(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare void @_mi_warning_message(ptr noundef, ...) local_unnamed_addr #2

declare zeroext i1 @_mi_os_commit(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare void @_mi_os_free(ptr noundef, ptr noundef, i64 noundef, ptr noundef byval(%struct.mi_memid_s) align 8) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nounwind
declare i32 @pthread_mutex_destroy(ptr noundef) local_unnamed_addr #6

; Function Attrs: nooutline nounwind uwtable
define internal fastcc void @mi_page_map_set_range_prim(ptr noundef %0, ptr noundef %1, i64 noundef range(i64 0, 34359738368) %2, i64 noundef %3, i64 noundef %4) unnamed_addr #0 {
bb.a:
  %.not31 = icmp eq i64 %4, 0
  br i1 %.not31, label %.thread, label %.lr.ph37

.lr.ph37:                                         ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %broadcast.splatinsert = insertelement <2 x ptr> poison, ptr %1, i64 0
  %broadcast.splat = shufflevector <2 x ptr> %broadcast.splatinsert, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph37, %._crit_edge
  %.01134 = phi i64 [ %4, %.lr.ph37 ], [ %.1.lcssa, %._crit_edge ] ; 4 uses
  %.01233 = phi i64 [ %3, %.lr.ph37 ], [ 0, %._crit_edge ] ; 5 uses
  %.01532 = phi i64 [ %2, %.lr.ph37 ], [ %i.aa, %._crit_edge ] ; 6 uses
  %i.b = load atomic i64, ptr %0 monotonic, align 8
  %.not.i.i = icmp ult i64 %.01532, %i.b
  br i1 %.not.i.i, label %bb.e, label %bb.c, !prof !27

bb.c:                                             ; preds = %bb.b
  %i.c = load atomic i64, ptr %0 acquire, align 8
  %.not13.i.i = icmp ult i64 %.01532, %i.c
  br i1 %.not13.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = tail call fastcc zeroext i1 @mi_page_map_commit_entries(ptr noundef nonnull %0, i64 noundef %.01532) #11
  br i1 %i.d, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.01532
  %i.f = load atomic ptr, ptr %i.e acquire, align 8 ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.f, label %mi_page_map_ensure_submap_at.exit, !prof !8

bb.f:                                             ; preds = %bb.e
  %i.h = tail call fastcc ptr @mi_page_map_alloc_submap_at(ptr noundef nonnull %0, i64 noundef %.01532) #11 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %.thread, label %mi_page_map_ensure_submap_at.exit

mi_page_map_ensure_submap_at.exit:                ; preds = %bb.f, %bb.e
  %.020 = phi ptr [ %i.f, %bb.e ], [ %i.h, %bb.f ] ; 2 uses
  %i.j = icmp ult i64 %.01233, 8192
  br i1 %i.j, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %mi_page_map_ensure_submap_at.exit
  %i.k = add i64 %.01134, -1
  %i.l = sub nuw nsw i64 8191, %.01233
  %i.m = tail call i64 @llvm.umin.i64(i64 %i.k, i64 %i.l) ; 2 uses
  %i.n = add nuw nsw i64 %i.m, 1                  ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.m, 3
  br i1 %min.iters.check, label %.lr.ph.preheader2, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.n, 16380                    ; 4 uses
  %i.o = sub i64 %.01134, %n.vec                  ; 2 uses
  %i.p = add nuw nsw i64 %.01233, %n.vec
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.020, i64 %.01233
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %index ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store <2 x ptr> %broadcast.splat, ptr %i.r, align 8, !tbaa !30
  store <2 x ptr> %broadcast.splat, ptr %i.s, align 8, !tbaa !30
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.t = icmp eq i64 %index.next, %n.vec
  br i1 %i.t, label %middle.block, label %vector.body, !llvm.loop !52

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.n, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader2

.lr.ph.preheader2:                                ; preds = %.lr.ph.preheader, %middle.block
  %.130.ph = phi i64 [ %.01134, %.lr.ph.preheader ], [ %i.o, %middle.block ]
  %.11329.ph = phi i64 [ %.01233, %.lr.ph.preheader ], [ %i.p, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader2, %.lr.ph
  %.130 = phi i64 [ %i.v, %.lr.ph ], [ %.130.ph, %.lr.ph.preheader2 ]
  %.11329 = phi i64 [ %i.w, %.lr.ph ], [ %.11329.ph, %.lr.ph.preheader2 ] ; 3 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %.020, i64 %.11329
  store ptr %1, ptr %i.u, align 8, !tbaa !30
  %i.v = add i64 %.130, -1                        ; 3 uses
  %i.w = add nuw nsw i64 %.11329, 1
  %i.x = icmp ne i64 %i.v, 0
  %i.y = icmp samesign ult i64 %.11329, 8191
  %i.z = and i1 %i.x, %i.y
  br i1 %i.z, label %.lr.ph, label %._crit_edge, !llvm.loop !53

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %mi_page_map_ensure_submap_at.exit
  %.1.lcssa = phi i64 [ %.01134, %mi_page_map_ensure_submap_at.exit ], [ %i.o, %middle.block ], [ %i.v, %.lr.ph ] ; 2 uses
  %i.aa = add i64 %.01532, 1
  %.not = icmp eq i64 %.1.lcssa, 0
  br i1 %.not, label %.thread, label %bb.b

.thread:                                          ; preds = %._crit_edge, %bb.d, %bb.f, %bb.a
  ret void
}

; Function Attrs: noinline nooutline nounwind uwtable
define internal fastcc ptr @mi_page_map_alloc_submap_at(ptr noundef %0, i64 noundef %1) unnamed_addr #7 {
bb.a:
  %2 = alloca %struct.mi_memid_s, align 8         ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.a) #9 ; 3 uses
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %mi_lock_acquire.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (i32, ptr, ...) @_mi_error_message(i32 noundef %i.b, ptr noundef nonnull @.str.5, i32 noundef %i.b) #9
  br label %mi_lock_acquire.exit

mi_lock_acquire.exit:                             ; preds = %bb.a, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %1 ; 2 uses
  %i.e = load atomic ptr, ptr %i.d acquire, align 8 ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.c, label %bb.h

bb.c:                                             ; preds = %mi_lock_acquire.exit
  %i.g = tail call ptr @_mi_subproc_main() #9     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  %i.h = call ptr @_mi_os_zalloc(ptr noundef %i.g, i64 noundef 65536, ptr noundef nonnull %2) #9 ; 4 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void (ptr, ...) @_mi_warning_message(ptr noundef nonnull @.str.4) #9
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.j = cmpxchg ptr %i.d, ptr null, ptr %i.h acq_rel acquire, align 8 ; 2 uses
  %i.k = extractvalue { ptr, i1 } %i.j, 1
  br i1 %i.k, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = extractvalue { ptr, i1 } %i.j, 0
  call void @_mi_os_free(ptr noundef %i.g, ptr noundef nonnull %i.h, i64 noundef 65536, ptr noundef nonnull byval(%struct.mi_memid_s) align 8 %2) #9
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.d
  %.2 = phi ptr [ null, %bb.d ], [ %i.h, %bb.e ], [ %i.l, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  br label %bb.h

bb.h:                                             ; preds = %mi_lock_acquire.exit, %bb.g
  %.3 = phi ptr [ %.2, %bb.g ], [ %i.e, %mi_lock_acquire.exit ]
  %i.m = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.a) #9 ; 0 uses
  ret ptr %.3
}

; Function Attrs: noinline nooutline nounwind uwtable
define internal fastcc noundef zeroext i1 @mi_page_map_commit_entries(ptr noundef %0, i64 noundef %1) unnamed_addr #7 {
bb.a:
  %i.a = alloca i8, align 1                       ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !15   ; 3 uses
  %i.d = icmp ugt i64 %i.c, 87
  %i.e = add i64 %i.c, -88
  %i.f = lshr i64 %i.e, 3
  %.not17 = icmp uge i64 %i.f, %1
  %.not = and i1 %i.d, %.not17
  br i1 %.not, label %bb.c, label %bb.b, !prof !27

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_mi_warning_message(ptr noundef nonnull @.str.3) #9
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.g = shl nuw i64 %1, 3
  %i.h = add i64 %i.g, 65616
  %i.i = and i64 %i.h, -65536                     ; 2 uses
  %spec.select = tail call i64 @llvm.umin.i64(i64 %i.c, i64 %i.i) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.j = tail call ptr @_mi_subproc_main() #9
  %i.k = call zeroext i1 @_mi_os_commit(ptr noundef %i.j, ptr noundef nonnull %0, i64 noundef %spec.select, ptr noundef nonnull %i.a) #9 ; 2 uses
  br i1 %i.k, label %bb.e, label %bb.d, !prof !27

bb.d:                                             ; preds = %bb.c
  call void (ptr, ...) @_mi_warning_message(ptr noundef nonnull @.str.3) #9
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.l = icmp eq i64 %i.i, 0
  %i.m = add i64 %spec.select, -88
  %i.n = lshr i64 %i.m, 3
  %i.o = add nuw nsw i64 %i.n, 1
  %i.p = select i1 %i.l, i64 0, i64 %i.o
  store atomic i64 %i.p, ptr %0 release, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.b
  %.1 = phi i1 [ false, %bb.b ], [ %i.k, %bb.f ]
  ret i1 %.1
}

declare ptr @_mi_os_zalloc(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #8

attributes #0 = { nooutline nounwind uwtable "min-legal-vector-width"="0" "no-builtin-malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-builtin-malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nooutline norecurse nounwind willreturn uwtable "min-legal-vector-width"="0" "no-builtin-malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind "no-builtin-malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline nooutline nounwind uwtable "min-legal-vector-width"="0" "no-builtin-malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind "no-builtin-malloc" }
attributes #10 = { nounwind }
attributes #11 = { "no-builtin-malloc" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!9 = !{!"_Bool", !4, i64 0}
!10 = !{!"mi_memid_s", !4, i64 0, !5, i64 16, !9, i64 20, !9, i64 21, !9, i64 22}
!11 = !{!"long", !4, i64 0}
!12 = !{!4, !4, i64 0}
!13 = !{!"mi_lock_s", !4, i64 0}
!14 = !{!"mi_page_map_s", !4, i64 0, !11, i64 8, !10, i64 16, !13, i64 40, !4, i64 80}
!15 = !{!14, !11, i64 8}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{!"any pointer", !4, i64 0}
!18 = !{!"p1 _ZTS10mi_block_s", !17, i64 0}
!19 = !{!"short", !4, i64 0}
!20 = !{!"p1 _ZTS10mi_theap_s", !17, i64 0}
!21 = !{!"p1 _ZTS9mi_heap_s", !17, i64 0}
!22 = !{!"p1 _ZTS9mi_page_s", !17, i64 0}
!23 = !{!"mi_page_s", !4, i64 0, !4, i64 8, !18, i64 16, !11, i64 24, !18, i64 32, !11, i64 40, !11, i64 48, !19, i64 56, !19, i64 58, !19, i64 60, !4, i64 62, !9, i64 63, !4, i64 64, !20, i64 72, !21, i64 80, !22, i64 88, !22, i64 96, !10, i64 104}
!24 = !{!23, !11, i64 40}
!25 = !{!23, !19, i64 58}
!26 = !{!23, !11, i64 48}
!27 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!28 = !{!"branch_weights", i32 2146410443, i32 1073205}
!29 = !{!"branch_weights", i32 1073205, i32 2146410443}
!30 = !{!22, !22, i64 0}
!31 = !{!"llvm.loop.isvectorized", i32 1}
!32 = !{!"llvm.loop.unroll.runtime.disable"}
!33 = !{!"llvm.loop.peeled.count", i32 1}
!34 = !{!10, !9, i64 21}
!35 = !{i8 0, i8 2}
!36 = !{}
!37 = !{!10, !9, i64 22}
!38 = !{!11, !11, i64 0}
!39 = !{i64 164058}
!40 = !{!5, !5, i64 0}
!41 = !{!9, !9, i64 0}
!42 = !{i64 0, i64 16, !12, i64 16, i64 4, !40, i64 20, i64 1, !41, i64 21, i64 1, !41, i64 22, i64 1, !41}
!43 = distinct !{!43, i1 false, !"_mi_memid_create_os"}
!44 = distinct !{!44, !43, !"_mi_memid_create_os: argument 0"}
!45 = distinct !{!45, !16}
!46 = !{!14, !4, i64 0}
!47 = !{!44}
!48 = distinct !{!48, !16, !31, !32}
!49 = distinct !{!49, !16, !32, !31}
!50 = distinct !{!50, !33}
!51 = distinct !{!51, !33}
!52 = distinct !{!52, !16, !31, !32}
!53 = distinct !{!53, !16, !32, !31}
end_hunk_0
