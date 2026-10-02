Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mold/original/page-map?download=true
inline.NumInlined: 46
inline.NumDeleted: 29
begin_hunk_0_@_mi_page_map_init:bb.a
  %.0.i = phi i64 [ %i.p, %bb.d ], [ %i.r, %bb.e ] ; 7 uses
  %i.s = add i64 %.0.i, 65536
  %i.t = icmp ult i64 %.0.i, 65537
  br i1 %i.t, label %bb.h, label %bb.f

bb.f:                                             ; preds = %_mi_align_up.exit
  %i.u = tail call zeroext i1 @mi_option_is_enabled(i32 noundef 39) #9
  br i1 %i.u, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = tail call zeroext i1 @_mi_os_has_overcommit() #9
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %_mi_align_up.exit
  %i.w = phi i1 [ true, %bb.f ], [ true, %_mi_align_up.exit ], [ %i.v, %bb.g ]
  %i.x = tail call ptr @_mi_subproc_main() #9     ; 2 uses
  %i.y = tail call ptr @_mi_os_alloc_aligned(ptr noundef %i.x, i64 noundef %i.s, i64 noundef 1, i1 noundef zeroext %i.w, i1 noundef zeroext true, ptr noundef nonnull @mi_page_map_memid) #9 ; 2 uses
  store ptr %i.y, ptr @_mi_page_map, align 64, !tbaa !11
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.aa = lshr i64 %.0.i, 10
  tail call void (i32, ptr, ...) @_mi_error_message(i32 noundef 12, ptr noundef nonnull @.str, i64 noundef %i.aa) #9
  store ptr @mi_page_map_empty, ptr @_mi_page_map, align 64, !tbaa !11
  br label %bb.w

bb.j:                                             ; preds = %bb.h
  %i.ab = load i8, ptr getelementptr inbounds nuw (i8, ptr @mi_page_map_memid, i64 21), align 1, !tbaa !29, !range !30, !noundef !31
  %i.ac = trunc nuw i8 %i.ab to i1
  %.not = xor i1 %i.ac, true
  %i.ad = load i8, ptr getelementptr inbounds nuw (i8, ptr @mi_page_map_memid, i64 22), align 2, !range !30
  %i.ae = trunc nuw i8 %i.ad to i1
  %or.cond = select i1 %.not, i1 true, i1 %i.ae
  br i1 %or.cond, label %_mi_memzero_aligned.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void (ptr, ...) @_mi_warning_message(ptr noundef nonnull @.str.1) #9
  %i.af = load ptr, ptr @_mi_page_map, align 64, !tbaa !11 ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.af, i64 8) ]
  %i.ag = load i64, ptr @_mi_cpu_stosb_max, align 8, !tbaa !9
  %.not.i.i.i = icmp ugt i64 %.0.i, %i.ag
  br i1 %.not.i.i.i, label %bb.m, label %bb.l, !prof !14

bb.l:                                             ; preds = %bb.k
  %i.ah = tail call { ptr, i64 } asm sideeffect "rep stosb", "={di},={cx},{ax},0,1,~{memory},~{dirflag},~{fpsr},~{flags}"(i8 0, ptr %i.af, i64 %.0.i) #10, !srcloc !32 ; 0 uses
  br label %_mi_memzero_aligned.exit

bb.m:                                             ; preds = %bb.k
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.af, i8 0, i64 %.0.i, i1 false)
  br label %_mi_memzero_aligned.exit

_mi_memzero_aligned.exit:                         ; preds = %bb.m, %bb.l, %bb.j
  %i.ai = load i8, ptr getelementptr inbounds nuw (i8, ptr @mi_page_map_memid, i64 21), align 1, !tbaa !29, !range !30, !noundef !31 ; 2 uses
  %i.aj = zext nneg i8 %i.ai to i64
  %i.ak = sub nsw i64 0, %i.aj
  store atomic i64 %i.ak, ptr @mi_page_map_commit release, align 8
  %i.al = load ptr, ptr @_mi_page_map, align 64, !tbaa !11
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %.0.i ; 5 uses
  %i.an = trunc nuw i8 %i.ai to i1
  br i1 %i.an, label %bb.p, label %bb.n

bb.n:                                             ; preds = %_mi_memzero_aligned.exit
  %i.ao = tail call zeroext i1 @_mi_os_commit(ptr noundef %i.x, ptr noundef %i.am, i64 noundef 65536, ptr noundef null) #9
  br i1 %i.ao, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void (ptr, ...) @_mi_warning_message(ptr noundef nonnull @.str.2) #9
  br label %bb.w

bb.p:                                             ; preds = %bb.n, %_mi_memzero_aligned.exit
  %i.ap = load i8, ptr getelementptr inbounds nuw (i8, ptr @mi_page_map_memid, i64 22), align 2, !tbaa !33, !range !30, !noundef !31
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %_mi_memzero_aligned.exit31, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.assume(i1 true) [ "align"(ptr %i.am, i64 8) ]
  %i.ar = load i64, ptr @_mi_cpu_stosb_max, align 8, !tbaa !9
  %.not.i.i.i30 = icmp ult i64 %i.ar, 65536
  br i1 %.not.i.i.i30, label %bb.s, label %bb.r, !prof !14

bb.r:                                             ; preds = %bb.q
  %i.as = tail call { ptr, i64 } asm sideeffect "rep stosb", "={di},={cx},{ax},0,1,~{memory},~{dirflag},~{fpsr},~{flags}"(i8 0, ptr %i.am, i64 65536) #10, !srcloc !32 ; 0 uses
  br label %_mi_memzero_aligned.exit31

bb.s:                                             ; preds = %bb.q
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(65536) %i.am, i8 0, i64 65536, i1 false)
  br label %_mi_memzero_aligned.exit31

_mi_memzero_aligned.exit31:                       ; preds = %bb.s, %bb.r, %bb.p
  %i.at = load atomic i64, ptr @mi_page_map_commit monotonic, align 8
  %i.au = and i64 %i.at, 1
  %.not.i = icmp eq i64 %i.au, 0
  %.pre35 = load ptr, ptr @_mi_page_map, align 64, !tbaa !11 ; 2 uses
  br i1 %.not.i, label %bb.t, label %bb.v, !prof !14

bb.t:                                             ; preds = %_mi_memzero_aligned.exit31
  %i.av = tail call ptr @_mi_subproc_main() #9
  %i.aw = tail call zeroext i1 @_mi_os_commit(ptr noundef %i.av, ptr noundef %.pre35, i64 noundef 32768, ptr noundef null) #9
  br i1 %i.aw, label %.thread.i, label %bb.u

.thread.i:                                        ; preds = %bb.t
  %i.ax = atomicrmw or ptr @mi_page_map_commit, i64 1 acq_rel, align 8 ; 0 uses
  %.pre = load ptr, ptr @_mi_page_map, align 64, !tbaa !11
  br label %bb.v

bb.u:                                             ; preds = %bb.t
  tail call void (ptr, ...) @_mi_warning_message(ptr noundef nonnull @.str.2) #9
  tail call void (ptr, ...) @_mi_warning_message(ptr noundef nonnull @.str.2) #9
  br label %bb.w

bb.v:                                             ; preds = %_mi_memzero_aligned.exit31, %.thread.i
  %i.ay = phi ptr [ %.pre35, %_mi_memzero_aligned.exit31 ], [ %.pre, %.thread.i ]
  %i.az = load atomic ptr, ptr %i.ay acquire, align 8 ; 0 uses
  %i.ba = load ptr, ptr @_mi_page_map, align 64, !tbaa !11
  store atomic ptr %i.am, ptr %i.ba release, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) @mi_page_map_lock, i8 0, i64 40, i1 false)
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v, %bb.o, %bb.i
  %.2 = phi i1 [ false, %bb.i ], [ false, %bb.o ], [ true, %bb.v ], [ false, %bb.u ]
  ret i1 %.2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i64 @mi_option_get_clamp(i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare i64 @_mi_os_virtual_address_bits() local_unnamed_addr #2

declare i64 @_mi_os_page_size() local_unnamed_addr #2

declare zeroext i1 @mi_option_is_enabled(i32 noundef) local_unnamed_addr #2

declare zeroext i1 @_mi_os_has_overcommit() local_unnamed_addr #2

declare ptr @_mi_subproc_main() local_unnamed_addr #2

declare ptr @_mi_os_alloc_aligned(ptr noundef, i64 noundef, i64 noundef, i1 noundef zeroext, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

declare void @_mi_error_message(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare void @_mi_warning_message(ptr noundef, ...) local_unnamed_addr #2

declare zeroext i1 @_mi_os_commit(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nooutline nounwind uwtable
define hidden void @_mi_page_map_unsafe_destroy() local_unnamed_addr #0 {
bb.a:
  %0 = alloca %struct.mi_memid_s, align 8         ; 6 uses
  %i.a = load ptr, ptr @_mi_page_map, align 64, !tbaa !11
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @_mi_subproc_main() #9     ; 2 uses
  %i.d = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull @mi_page_map_lock) #9 ; 0 uses
  %i.e = load i64, ptr @mi_page_map_count, align 8, !tbaa !9 ; 2 uses
  %i.f = icmp ugt i64 %i.e, 1
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.c

._crit_edge:                                      ; preds = %bb.f, %bb.b
  %i.i = load ptr, ptr @_mi_page_map, align 64, !tbaa !11
  %i.j = load i64, ptr getelementptr inbounds nuw (i8, ptr @mi_page_map_memid, i64 8), align 8, !tbaa !15
  tail call void @_mi_os_free_ex(ptr noundef %i.c, ptr noundef %i.i, i64 noundef %i.j, i1 noundef zeroext true, ptr noundef nonnull byval(%struct.mi_memid_s) align 8 @mi_page_map_memid) #9
  store ptr null, ptr @_mi_page_map, align 64, !tbaa !11
  store i64 0, ptr @mi_page_map_count, align 8, !tbaa !9
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) @mi_page_map_memid, i8 0, i64 24, i1 false)
  store atomic ptr null, ptr @_mi_page_map_max_address release, align 8
  store atomic i64 0, ptr @mi_page_map_commit release, align 8
  br label %bb.g

bb.c:                                             ; preds = %.lr.ph, %bb.f
  %i.k = phi i64 [ %i.e, %.lr.ph ], [ %i.u, %bb.f ] ; 2 uses
  %.013 = phi i64 [ 1, %.lr.ph ], [ %i.v, %bb.f ] ; 4 uses
  %i.l = load atomic i64, ptr @mi_page_map_commit monotonic, align 8
  %i.m = lshr i64 %.013, 12
  %i.n = shl nuw i64 1, %i.m
  %i.o = and i64 %i.l, %i.n
  %.not12 = icmp eq i64 %i.o, 0
  br i1 %.not12, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = load ptr, ptr @_mi_page_map, align 64, !tbaa !11
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.013
  %i.r = load atomic ptr, ptr %i.q monotonic, align 8 ; 3 uses
  %.not = icmp eq ptr %i.r, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #10
  store i64 1099511627780, ptr %i.g, align 8, !alias.scope !37
  store ptr %i.r, ptr %0, align 8, !tbaa !15, !alias.scope !37
  store i64 65536, ptr %i.h, align 8, !tbaa !15, !alias.scope !37
  tail call void @_mi_os_free_ex(ptr noundef %i.c, ptr noundef nonnull %i.r, i64 noundef 65536, i1 noundef zeroext true, ptr noundef nonnull byval(%struct.mi_memid_s) align 8 %0) #9
  %i.s = load ptr, ptr @_mi_page_map, align 64, !tbaa !11
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.013
  store atomic ptr null, ptr %i.t release, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #10
  %.pre = load i64, ptr @mi_page_map_count, align 8, !tbaa !9
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %i.u = phi i64 [ %i.k, %bb.d ], [ %.pre, %bb.e ], [ %i.k, %bb.c ] ; 2 uses
  %i.v = add nuw i64 %.013, 1                     ; 2 uses
  %i.w = icmp ult i64 %i.v, %i.u
  br i1 %i.w, label %bb.c, label %._crit_edge, !llvm.loop !36

bb.g:                                             ; preds = %bb.a, %._crit_edge
  ret void
}

declare void @_mi_os_free_ex(ptr noundef, ptr noundef, i64 noundef, i1 noundef zeroext, ptr noundef byval(%struct.mi_memid_s) align 8) local_unnamed_addr #2

; Function Attrs: nooutline nounwind uwtable
define hidden noundef zeroext i1 @_mi_page_map_register(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @_mi_page_map, align 64, !tbaa !11
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !14

bb.b:                                             ; preds = %bb.a
  %i.c = tail call zeroext i1 @_mi_page_map_init() #11
  br i1 %i.c, label %bb.c, label %mi_page_map_set_range.exit

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr i8, ptr %0, i64 40
  %.val.i.i = load i64, ptr %i.d, align 8, !tbaa !23
  %i.e = getelementptr i8, ptr %0, i64 54
  %.val4.i.i = load i16, ptr %i.e, align 2, !tbaa !24
  %i.f = zext i16 %.val4.i.i to i64
  %i.g = mul i64 %.val.i.i, %i.f                  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = load i32, ptr %i.h, align 8, !tbaa !25
  %i.j = zext i32 %i.i to i64
  %i.k = shl nuw nsw i64 %i.j, 4
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %i.k
  %i.m = icmp ugt i64 %i.g, 4194304
  %i.n = add nuw nsw i64 %i.g, 65535
  %i.o = lshr i64 %i.n, 16
  %i.p = select i1 %i.m, i64 63, i64 %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.r = load i32, ptr %i.q, align 8, !tbaa !26
  %i.s = icmp eq i32 %i.r, 7
  %i.t = ptrtoint ptr %i.l to i64                 ; 4 uses
  %i.u = and i64 %i.t, -65536                     ; 2 uses
  %i.v = inttoptr i64 %i.u to ptr
  %.not.i.i = icmp ne ptr %0, %i.v
  %i.w = and i1 %i.s, %.not.i.i
  %i.x = ptrtoint ptr %0 to i64
  %i.y = select i1 %i.w, i64 %i.u, i64 %i.x
  %i.z = sub i64 %i.t, %i.y
  %i.aa = lshr i64 %i.z, 16
  %i.ab = add nuw nsw i64 %i.aa, %i.p             ; 2 uses
  %i.ac = lshr i64 %i.t, 16
  %i.ad = and i64 %i.ac, 8191                     ; 2 uses
  %i.ae = lshr i64 %i.t, 29                       ; 2 uses
  %i.af = tail call fastcc zeroext i1 @mi_page_map_set_range_prim(ptr noundef %0, i64 noundef range(i64 0, 34359738368) %i.ae, i64 noundef %i.ad, i64 noundef %i.ab) #11
  br i1 %i.af, label %mi_page_map_set_range.exit, label %bb.d, !prof !27

bb.d:                                             ; preds = %bb.c
  %i.ag = tail call fastcc zeroext i1 @mi_page_map_set_range_prim(ptr noundef null, i64 noundef range(i64 0, 34359738368) %i.ae, i64 noundef %i.ad, i64 noundef %i.ab) #11 ; 0 uses
  br label %mi_page_map_set_range.exit

mi_page_map_set_range.exit:                       ; preds = %bb.d, %bb.c, %bb.b
  %.0 = phi i1 [ false, %bb.b ], [ true, %bb.c ], [ false, %bb.d ]
  ret i1 %.0
}

; Function Attrs: nooutline nounwind uwtable
define hidden void @_mi_page_map_unregister(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @_mi_page_map, align 64, !tbaa !11
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %mi_page_map_set_range.exit, label %bb.b, !prof !14

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 40
  %.val.i.i = load i64, ptr %i.c, align 8, !tbaa !23
  %i.d = getelementptr i8, ptr %0, i64 54
  %.val4.i.i = load i16, ptr %i.d, align 2, !tbaa !24
  %i.e = zext i16 %.val4.i.i to i64
  %i.f = mul i64 %.val.i.i, %i.e                  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = load i32, ptr %i.g, align 8, !tbaa !25
  %i.i = zext i32 %i.h to i64
  %i.j = shl nuw nsw i64 %i.i, 4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %i.j
  %i.l = icmp ugt i64 %i.f, 4194304
  %i.m = add nuw nsw i64 %i.f, 65535
  %i.n = lshr i64 %i.m, 16
  %i.o = select i1 %i.l, i64 63, i64 %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.q = load i32, ptr %i.p, align 8, !tbaa !26
  %i.r = icmp eq i32 %i.q, 7
  %i.s = ptrtoint ptr %i.k to i64                 ; 4 uses
  %i.t = and i64 %i.s, -65536                     ; 2 uses
  %i.u = inttoptr i64 %i.t to ptr
  %.not.i.i = icmp ne ptr %0, %i.u
  %i.v = and i1 %i.r, %.not.i.i
  %i.w = ptrtoint ptr %0 to i64
  %i.x = select i1 %i.v, i64 %i.t, i64 %i.w
  %i.y = sub i64 %i.s, %i.x
  %i.z = lshr i64 %i.y, 16
  %i.aa = add nuw nsw i64 %i.z, %i.o
  %i.ab = lshr i64 %i.s, 16
  %i.ac = and i64 %i.ab, 8191
  %i.ad = lshr i64 %i.s, 29
  %i.ae = tail call fastcc zeroext i1 @mi_page_map_set_range_prim(ptr noundef null, i64 noundef range(i64 0, 34359738368) %i.ad, i64 noundef %i.ac, i64 noundef %i.aa) #11 ; 0 uses
  br label %mi_page_map_set_range.exit

mi_page_map_set_range.exit:                       ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nooutline nounwind uwtable
define hidden void @_mi_page_map_unregister_range(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @_mi_page_map, align 64, !tbaa !11
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %mi_page_map_set_range.exit, label %bb.b, !prof !14

bb.b:                                             ; preds = %bb.a
  %i.c = add i64 %1, 65535
  %i.d = lshr i64 %i.c, 16
  %i.e = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.f = lshr i64 %i.e, 16
  %i.g = and i64 %i.f, 8191
  %i.h = lshr i64 %i.e, 29
  %i.i = tail call fastcc zeroext i1 @mi_page_map_set_range_prim(ptr noundef null, i64 noundef range(i64 0, 34359738368) %i.h, i64 noundef %i.g, i64 noundef %i.d) #11 ; 0 uses
  br label %mi_page_map_set_range.exit

mi_page_map_set_range.exit:                       ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nooutline norecurse nounwind willreturn uwtable
define hidden ptr @_mi_safe_ptr_page(ptr noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load atomic ptr, ptr @_mi_page_map_max_address monotonic, align 8
  %.not = icmp ult ptr %0, %i.b
  br i1 %.not, label %bb.c, label %bb.f, !prof !27

bb.c:                                             ; preds = %bb.b
  %i.c = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.d = lshr i64 %i.c, 16
  %i.e = and i64 %i.d, 8191
  %i.f = load atomic i64, ptr @mi_page_map_commit monotonic, align 8
  %i.g = lshr i64 %i.c, 41
  %i.h = shl nuw i64 1, %i.g
  %i.i = and i64 %i.f, %i.h
  %.not10 = icmp eq i64 %i.i, 0
  br i1 %.not10, label %bb.f, label %bb.d, !prof !14

bb.d:                                             ; preds = %bb.c
  %i.j = lshr i64 %i.c, 29
  %i.k = load ptr, ptr @_mi_page_map, align 64, !tbaa !11
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.j
  %i.m = load atomic ptr, ptr %i.l seq_cst, align 8, !tbaa !15 ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.f, label %bb.e, !prof !14

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.e
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !28
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.e, %bb.b, %bb.a
  %.2 = phi ptr [ null, %bb.b ], [ null, %bb.a ], [ null, %bb.c ], [ %i.p, %bb.e ], [ null, %bb.d ]
  ret ptr %.2
}

; Function Attrs: mustprogress nooutline norecurse nounwind willreturn uwtable
define hidden zeroext i1 @mi_is_in_heap_region(ptr noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %_mi_safe_ptr_page.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load atomic ptr, ptr @_mi_page_map_max_address monotonic, align 8
  %.not.i = icmp ult ptr %0, %i.b
  br i1 %.not.i, label %bb.c, label %_mi_safe_ptr_page.exit, !prof !27

bb.c:                                             ; preds = %bb.b
  %i.c = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.d = lshr i64 %i.c, 16
  %i.e = and i64 %i.d, 8191
  %i.f = load atomic i64, ptr @mi_page_map_commit monotonic, align 8
  %i.g = lshr i64 %i.c, 41
  %i.h = shl nuw i64 1, %i.g
  %i.i = and i64 %i.f, %i.h
  %.not10.i = icmp eq i64 %i.i, 0
  br i1 %.not10.i, label %_mi_safe_ptr_page.exit, label %bb.d, !prof !14

bb.d:                                             ; preds = %bb.c
  %i.j = lshr i64 %i.c, 29
  %i.k = load ptr, ptr @_mi_page_map, align 64, !tbaa !11
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.j
  %i.m = load atomic ptr, ptr %i.l seq_cst, align 8, !tbaa !15 ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %_mi_safe_ptr_page.exit, label %bb.e, !prof !14

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.e
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !28
  %i.q = icmp ne ptr %i.p, null
  br label %_mi_safe_ptr_page.exit

_mi_safe_ptr_page.exit:                           ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e
  %.2.i = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ false, %bb.c ], [ %i.q, %bb.e ], [ false, %bb.d ]
  ret i1 %.2.i
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nounwind
declare i32 @pthread_mutex_destroy(ptr noundef) local_unnamed_addr #6

; Function Attrs: nooutline nounwind uwtable
define internal fastcc noundef zeroext i1 @mi_page_map_set_range_prim(ptr noundef %0, i64 noundef range(i64 0, 34359738368) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.mi_memid_s, align 8         ; 5 uses
  %.not33 = icmp eq i64 %3, 0
  br i1 %.not33, label %.thread, label %.lr.ph40.preheader

.lr.ph40.preheader:                               ; preds = %bb.a
  %broadcast.splatinsert = insertelement <2 x ptr> poison, ptr %0, i64 0
  %broadcast.splat = shufflevector <2 x ptr> %broadcast.splatinsert, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %.lr.ph40

.lr.ph40:                                         ; preds = %.lr.ph40.preheader, %._crit_edge
  %.01037 = phi i64 [ %.1.lcssa, %._crit_edge ], [ %3, %.lr.ph40.preheader ] ; 4 uses
  %.01136 = phi i64 [ 0, %._crit_edge ], [ %2, %.lr.ph40.preheader ] ; 5 uses
  %.01434 = phi i64 [ %i.as, %._crit_edge ], [ %1, %.lr.ph40.preheader ] ; 5 uses
  %i.a = load atomic i64, ptr @mi_page_map_commit monotonic, align 8
  %i.b = lshr i64 %.01434, 12                     ; 2 uses
  %i.c = shl nuw i64 1, %i.b                      ; 2 uses
  %i.d = and i64 %i.a, %i.c
  %.not.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i, label %bb.b, label %bb.c, !prof !14

bb.b:                                             ; preds = %.lr.ph40
  %i.e = load ptr, ptr @_mi_page_map, align 64, !tbaa !11
  %.idx.i.i = shl i64 %i.b, 15
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx.i.i
  %i.g = call ptr @_mi_subproc_main() #9
  %i.h = call zeroext i1 @_mi_os_commit(ptr noundef %i.g, ptr noundef %i.f, i64 noundef 32768, ptr noundef null) #9
  br i1 %i.h, label %.thread.i.i, label %mi_page_map_ensure_committed.exit.i

.thread.i.i:                                      ; preds = %bb.b
  %i.i = atomicrmw or ptr @mi_page_map_commit, i64 %i.c acq_rel, align 8 ; 0 uses
  br label %bb.c

mi_page_map_ensure_committed.exit.i:              ; preds = %bb.b
  call void (ptr, ...) @_mi_warning_message(ptr noundef nonnull @.str.2) #9
  br label %.thread

bb.c:                                             ; preds = %.thread.i.i, %.lr.ph40
  %i.j = load ptr, ptr @_mi_page_map, align 64, !tbaa !11
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.01434
  %i.l = load atomic ptr, ptr %i.k acquire, align 8 ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.d, label %mi_page_map_ensure_submap_at.exit, !prof !14

bb.d:                                             ; preds = %bb.c
  call fastcc void @mi_lock_acquire() #11
  %i.n = load ptr, ptr @_mi_page_map, align 64, !tbaa !11
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.01434
  %i.p = load atomic ptr, ptr %i.o acquire, align 8 ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.e, label %mi_page_map_ensure_submap_at.exit.sink.split

bb.e:                                             ; preds = %bb.d
  %i.r = call ptr @_mi_subproc_main() #9          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  %i.s = call ptr @_mi_os_zalloc(ptr noundef %i.r, i64 noundef 65536, ptr noundef nonnull %4) #9 ; 4 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %.thread26.i, label %bb.f

.thread26.i:                                      ; preds = %bb.e
  call void (ptr, ...) @_mi_warning_message(ptr noundef nonnull @.str.3) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  %i.u = call i32 @pthread_mutex_unlock(ptr noundef nonnull @mi_page_map_lock) #9 ; 0 uses
  br label %.thread

bb.f:                                             ; preds = %bb.e
  %i.v = load ptr, ptr @_mi_page_map, align 64, !tbaa !11
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %.01434
  %i.x = cmpxchg ptr %i.w, ptr null, ptr %i.s acq_rel acquire, align 8 ; 2 uses
  %i.y = extractvalue { ptr, i1 } %i.x, 1
  br i1 %i.y, label %mi_page_map_ensure_submap_at.exit.sink.split.sink.split, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = extractvalue { ptr, i1 } %i.x, 0
  call void @_mi_os_free(ptr noundef %i.r, ptr noundef nonnull %i.s, i64 noundef 65536, ptr noundef nonnull byval(%struct.mi_memid_s) align 8 %4) #9
  br label %mi_page_map_ensure_submap_at.exit.sink.split.sink.split

mi_page_map_ensure_submap_at.exit.sink.split.sink.split: ; preds = %bb.f, %bb.g
  %.019.ph.ph = phi ptr [ %i.z, %bb.g ], [ %i.s, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  br label %mi_page_map_ensure_submap_at.exit.sink.split

mi_page_map_ensure_submap_at.exit.sink.split:     ; preds = %mi_page_map_ensure_submap_at.exit.sink.split.sink.split, %bb.d
  %.019.ph = phi ptr [ %i.p, %bb.d ], [ %.019.ph.ph, %mi_page_map_ensure_submap_at.exit.sink.split.sink.split ]
  %i.aa = call i32 @pthread_mutex_unlock(ptr noundef nonnull @mi_page_map_lock) #9 ; 0 uses
  br label %mi_page_map_ensure_submap_at.exit

mi_page_map_ensure_submap_at.exit:                ; preds = %mi_page_map_ensure_submap_at.exit.sink.split, %bb.c
  %.019 = phi ptr [ %i.l, %bb.c ], [ %.019.ph, %mi_page_map_ensure_submap_at.exit.sink.split ] ; 2 uses
  %i.ab = icmp ult i64 %.01136, 8192
  br i1 %i.ab, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %mi_page_map_ensure_submap_at.exit
  %i.ac = add i64 %.01037, -1
  %i.ad = sub nuw nsw i64 8191, %.01136
  %i.ae = call i64 @llvm.umin.i64(i64 %i.ac, i64 %i.ad) ; 2 uses
  %i.af = add nuw nsw i64 %i.ae, 1                ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.ae, 3
  br i1 %min.iters.check, label %.lr.ph.preheader46, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.af, 16380                   ; 4 uses
  %i.ag = sub i64 %.01037, %n.vec                 ; 2 uses
  %i.ah = add nuw nsw i64 %.01136, %n.vec
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %.019, i64 %.01136
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %index ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store <2 x ptr> %broadcast.splat, ptr %i.aj, align 8, !tbaa !28
  store <2 x ptr> %broadcast.splat, ptr %i.ak, align 8, !tbaa !28
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.al = icmp eq i64 %index.next, %n.vec
  br i1 %i.al, label %middle.block, label %vector.body, !llvm.loop !38

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.af, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader46

.lr.ph.preheader46:                               ; preds = %.lr.ph.preheader, %middle.block
  %.132.ph = phi i64 [ %.01037, %.lr.ph.preheader ], [ %i.ag, %middle.block ]
  %.11231.ph = phi i64 [ %.01136, %.lr.ph.preheader ], [ %i.ah, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader46, %.lr.ph
  %.132 = phi i64 [ %i.an, %.lr.ph ], [ %.132.ph, %.lr.ph.preheader46 ]
  %.11231 = phi i64 [ %i.ao, %.lr.ph ], [ %.11231.ph, %.lr.ph.preheader46 ] ; 3 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %.019, i64 %.11231
  store ptr %0, ptr %i.am, align 8, !tbaa !28
  %i.an = add i64 %.132, -1                       ; 3 uses
  %i.ao = add nuw nsw i64 %.11231, 1
  %i.ap = icmp ne i64 %i.an, 0
  %i.aq = icmp samesign ult i64 %.11231, 8191
  %i.ar = and i1 %i.ap, %i.aq
  br i1 %i.ar, label %.lr.ph, label %._crit_edge, !llvm.loop !39

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %mi_page_map_ensure_submap_at.exit
  %.1.lcssa = phi i64 [ %.01037, %mi_page_map_ensure_submap_at.exit ], [ %i.ag, %middle.block ], [ %i.an, %.lr.ph ] ; 2 uses
  %i.as = add i64 %.01434, 1
  %.not = icmp eq i64 %.1.lcssa, 0
  br i1 %.not, label %.thread, label %.lr.ph40

.thread:                                          ; preds = %._crit_edge, %bb.a, %mi_page_map_ensure_committed.exit.i, %.thread26.i
  %.not30 = phi i1 [ false, %.thread26.i ], [ false, %mi_page_map_ensure_committed.exit.i ], [ true, %bb.a ], [ true, %._crit_edge ]
  ret i1 %.not30
}

; Function Attrs: inlinehint nooutline nounwind uwtable
define internal fastcc void @mi_lock_acquire() unnamed_addr #7 {
bb.a:
  %i.a = tail call i32 @pthread_mutex_lock(ptr noundef nonnull @mi_page_map_lock) #9 ; 3 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (i32, ptr, ...) @_mi_error_message(i32 noundef %i.a, ptr noundef nonnull @.str.4, i32 noundef %i.a) #9
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare ptr @_mi_os_zalloc(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare void @_mi_os_free(ptr noundef, ptr noundef, i64 noundef, ptr noundef byval(%struct.mi_memid_s) align 8) local_unnamed_addr #2

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
attributes #7 = { inlinehint nooutline nounwind uwtable "min-legal-vector-width"="0" "no-builtin-malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!8 = !{!"long", !4, i64 0}
!9 = !{!8, !8, i64 0}
!10 = !{!"any pointer", !4, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!"_Bool", !4, i64 0}
!13 = !{!"mi_memid_s", !4, i64 0, !5, i64 16, !12, i64 20, !12, i64 21, !12, i64 22}
!14 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!15 = !{!4, !4, i64 0}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{!"p1 _ZTS10mi_block_s", !10, i64 0}
!18 = !{!"short", !4, i64 0}
!19 = !{!"p1 _ZTS10mi_theap_s", !10, i64 0}
!20 = !{!"p1 _ZTS9mi_heap_s", !10, i64 0}
!21 = !{!"p1 _ZTS9mi_page_s", !10, i64 0}
!22 = !{!"mi_page_s", !4, i64 0, !17, i64 8, !5, i64 16, !18, i64 20, !4, i64 22, !12, i64 23, !17, i64 24, !4, i64 32, !8, i64 40, !5, i64 48, !18, i64 52, !18, i64 54, !19, i64 56, !20, i64 64, !21, i64 72, !21, i64 80, !13, i64 88}
!23 = !{!22, !8, i64 40}
!24 = !{!22, !18, i64 54}
!25 = !{!22, !5, i64 48}
!26 = !{!22, !5, i64 104}
!27 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!28 = !{!21, !21, i64 0}
!29 = !{!13, !12, i64 21}
!30 = !{i8 0, i8 2}
!31 = !{}
!32 = !{i64 155690}
!33 = !{!13, !12, i64 22}
!34 = distinct !{!34, i1 false, !"_mi_memid_create_os"}
!35 = distinct !{!35, !34, !"_mi_memid_create_os: argument 0"}
!36 = distinct !{!36, !16}
!37 = !{!35}
!38 = distinct !{!38, !16, !40, !41}
!39 = distinct !{!39, !16, !41, !40}
!40 = !{!"llvm.loop.isvectorized", i32 1}
!41 = !{!"llvm.loop.unroll.runtime.disable"}
end_hunk_0
