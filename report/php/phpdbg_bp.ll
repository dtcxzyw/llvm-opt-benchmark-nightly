Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/phpdbg_bp?download=true
inline.NumInlined: 21
inline.NumDeleted: 7
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@phpdbg_set_breakpoint_file:bb.a
  %i.h = icmp eq i8 %i.g, 47
  br i1 %i.h, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @phpdbg_globals, i64 1508), align 4, !tbaa !28
  %i.j = call i32 (i32, i32, ptr, ...) @phpdbg_print(i32 noundef 1, i32 noundef %i.i, ptr noundef nonnull @.str.16, ptr noundef nonnull %0) #14 ; 0 uses
  br label %zend_string_release.exit

bb.g:                                             ; preds = %bb.e
  %i.k = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #15
  br label %zend_string_alloc.exit

bb.h:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.m = load i32, ptr %i.l, align 8, !tbaa !177
  %i.n = and i32 %i.m, 40960
  %.not59 = icmp eq i32 %i.n, 0
  br i1 %.not59, label %bb.i, label %zend_string_alloc.exit

bb.i:                                             ; preds = %bb.h
  %i.o = load i32, ptr getelementptr inbounds nuw (i8, ptr @phpdbg_globals, i64 1508), align 4, !tbaa !28
  %i.p = call i32 (i32, i32, ptr, ...) @phpdbg_print(i32 noundef 1, i32 noundef %i.o, ptr noundef nonnull @.str.17, ptr noundef nonnull %.053) #14 ; 0 uses
  br label %zend_string_release.exit

zend_string_alloc.exit:                           ; preds = %bb.c, %bb.h, %bb.g
  %.055 = phi i64 [ %i.c, %bb.c ], [ %i.k, %bb.g ], [ %i.c, %bb.h ] ; 5 uses
  %.154 = phi ptr [ %.053, %bb.c ], [ %0, %bb.g ], [ %.053, %bb.h ] ; 3 uses
  %.051 = phi i1 [ false, %bb.c ], [ true, %bb.g ], [ false, %bb.h ]
  %.049 = phi ptr [ @phpdbg_globals, %bb.c ], [ getelementptr inbounds nuw (i8, ptr @phpdbg_globals, i64 56), %bb.g ], [ @phpdbg_globals, %bb.h ] ; 3 uses
  %i.q = and i64 %.055, -8
  %i.r = add i64 %i.q, 32
  %i.s = call noalias ptr @_emalloc(i64 noundef %i.r) #16 ; 12 uses
  store i32 1, ptr %i.s, align 4, !tbaa !38
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 4 ; 2 uses
  store i32 22, ptr %i.t, align 4, !tbaa !18
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i64 0, ptr %i.u, align 8, !tbaa !178
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i64 %.055, ptr %i.v, align 8, !tbaa !69
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.w, ptr nonnull align 1 %.154, i64 %.055, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %.055
  store i8 0, ptr %i.x, align 1, !tbaa !18
  %i.y = call ptr @zend_hash_find(ptr noundef nonnull %.049, ptr noundef nonnull %i.s) #14 ; 2 uses
  %.not.i63 = icmp eq ptr %i.y, null
  br i1 %.not.i63, label %bb.j, label %zend_hash_find_ptr.exit

zend_hash_find_ptr.exit:                          ; preds = %zend_string_alloc.exit
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !18, !nonnull !58, !noundef !58
  br label %bb.o

bb.j:                                             ; preds = %zend_string_alloc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  call void @_zend_hash_init(ptr noundef nonnull %7, i32 noundef 8, ptr noundef nonnull @phpdbg_file_breaks_dtor, i1 noundef zeroext false) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  store ptr null, ptr %5, align 8, !tbaa !18
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 13, ptr %i.aa, align 8, !tbaa !18
  %i.ab = call ptr @zend_hash_add(ptr noundef nonnull %.049, ptr noundef nonnull %i.s, ptr noundef nonnull %5) #14 ; 2 uses
  %.not.i64 = icmp eq ptr %i.ab, null
  br i1 %.not.i64, label %zend_hash_add_mem.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = getelementptr inbounds nuw i8, ptr %.049, i64 4
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !18
  %i.ae = and i32 %i.ad, 128
  %.not46.i = icmp eq i32 %i.ae, 0
  br i1 %.not46.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.af = call noalias dereferenceable_or_null(56) ptr @__zend_malloc(i64 noundef 56) #16
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.ag = call noalias ptr @_emalloc_56() #14
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ah = phi ptr [ %i.af, %bb.l ], [ %i.ag, %bb.m ] ; 3 uses
  store ptr %i.ah, ptr %i.ab, align 8, !tbaa !18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(56) %i.ah, ptr noundef nonnull align 8 dereferenceable(56) %7, i64 56, i1 false)
  br label %zend_hash_add_mem.exit

zend_hash_add_mem.exit:                           ; preds = %bb.j, %bb.n
  %.0.i65 = phi ptr [ %i.ah, %bb.n ], [ null, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  br label %bb.o

bb.o:                                             ; preds = %zend_hash_find_ptr.exit, %zend_hash_add_mem.exit
  %.050 = phi ptr [ %i.z, %zend_hash_find_ptr.exit ], [ %.0.i65, %zend_hash_add_mem.exit ] ; 5 uses
  %i.ai = call ptr @zend_hash_index_find(ptr noundef %.050, i64 noundef %2) #14
  %.not105 = icmp eq ptr %i.ai, null
  br i1 %.not105, label %bb.p, label %bb.w

bb.p:                                             ; preds = %bb.o
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.10, i8 0, i64 3, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.12, i8 0, i64 7, i1 false)
  %i.aj = load i32, ptr getelementptr inbounds nuw (i8, ptr @phpdbg_globals, i64 1384), align 8, !tbaa !91 ; 5 uses
  %i.ak = add nsw i32 %i.aj, 1
  store i32 %i.ak, ptr getelementptr inbounds nuw (i8, ptr @phpdbg_globals, i64 1384), align 8, !tbaa !91
  %i.al = call noalias ptr @_estrndup(ptr noundef nonnull %.154, i64 noundef %.055) #14 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.050, i64 4
  %i.an = load i32, ptr %i.am, align 4, !tbaa !18
  %i.ao = and i32 %i.an, 128
  %.not.i66 = icmp eq i32 %i.ao, 0
  br i1 %.not.i66, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ap = call noalias dereferenceable_or_null(40) ptr @__zend_malloc(i64 noundef 40) #16
  br label %zend_hash_index_update_mem.exit

bb.r:                                             ; preds = %bb.p
  %i.aq = call noalias ptr @_emalloc_40() #14
  br label %zend_hash_index_update_mem.exit

zend_hash_index_update_mem.exit:                  ; preds = %bb.q, %bb.r
  %i.ar = phi ptr [ %i.ap, %bb.q ], [ %i.aq, %bb.r ] ; 9 uses
  store i32 %i.aj, ptr %i.ar, align 1
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  store i8 0, ptr %.sroa.9.0..sroa_idx, align 1
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.10.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.10, i64 3, i1 false)
  %.sroa.1073.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store i64 0, ptr %.sroa.1073.0..sroa_idx, align 1
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store i8 0, ptr %.sroa.11.0..sroa_idx, align 1
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.12.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.12, i64 7, i1 false)
  %.sroa.1276.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  store ptr %i.al, ptr %.sroa.1276.0..sroa_idx, align 1
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  store i64 %2, ptr %.sroa.15.0..sroa_idx, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  store ptr %i.ar, ptr %4, align 8, !tbaa !18
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 13, ptr %i.as, align 8, !tbaa !18
  %i.at = call ptr @zend_hash_index_update(ptr noundef nonnull %.050, i64 noundef %2, ptr noundef nonnull %4) #14 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  %i.au = sext i32 %i.aj to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  store ptr %.050, ptr %3, align 8, !tbaa !18
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 13, ptr %i.av, align 8, !tbaa !18
  %i.aw = call ptr @zend_hash_index_update(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @phpdbg_globals, i64 560), i64 noundef %i.au, ptr noundef nonnull %3) #14 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  br i1 %.051, label %bb.s, label %.thread96

bb.s:                                             ; preds = %zend_hash_index_update_mem.exit
  %i.ax = load ptr, ptr getelementptr inbounds nuw (i8, ptr @phpdbg_globals, i64 1440), align 8, !tbaa !18 ; 2 uses
  %i.ay = load i32, ptr getelementptr inbounds nuw (i8, ptr @phpdbg_globals, i64 1448), align 8, !tbaa !17 ; 2 uses
  %i.az = zext i32 %i.ay to i64
  %.idx = shl nuw nsw i64 %i.az, 5
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 %.idx
  %.not62106 = icmp eq i32 %i.ay, 0
  br i1 %.not62106, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.s, %bb.v
  %.0107 = phi ptr [ %i.bo, %bb.v ], [ %i.ax, %bb.s ] ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.0107, i64 8
  %i.bc = load i8, ptr %i.bb, align 8, !tbaa !18
  %i.bd = icmp eq i8 %i.bc, 0
  br i1 %i.bd, label %bb.v, label %bb.t, !prof !19

bb.t:                                             ; preds = %.lr.ph
  %i.be = getelementptr inbounds nuw i8, ptr %.0107, i64 24
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !92 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !69
  %i.bj = trunc i64 %i.bi to i32
  %i.bk = call ptr @phpdbg_resolve_pending_file_break_ex(ptr noundef nonnull %i.bg, i32 noundef %i.bj, ptr noundef nonnull %i.s, ptr noundef nonnull %.050) ; 2 uses
  %i.bl = icmp eq ptr %i.bk, null
  br i1 %i.bl, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bm = call ptr @zend_hash_index_find(ptr noundef nonnull %i.bk, i64 noundef %2) #14 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bm) ]
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !18, !nonnull !58, !noundef !58 ; 3 uses
  %.sroa.0.0.copyload = load i32, ptr %i.bn, align 8, !tbaa !93
  %.sroa.1276.0..0.i68.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %.sroa.1276.0.copyload = load ptr, ptr %.sroa.1276.0..0.i68.sroa_idx, align 8, !tbaa !25
  %.sroa.15.0..0.i68.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  %.sroa.15.0.copyload = load i64, ptr %.sroa.15.0..0.i68.sroa_idx, align 8, !tbaa !94
  br label %.thread96

bb.v:                                             ; preds = %.lr.ph, %bb.t
  %i.bo = getelementptr inbounds nuw i8, ptr %.0107, i64 32 ; 2 uses
  %.not62 = icmp eq ptr %i.bo, %i.ba
  br i1 %.not62, label %._crit_edge, label %.lr.ph, !llvm.loop !173

._crit_edge:                                      ; preds = %bb.v, %bb.s
  %i.bp = load i64, ptr getelementptr inbounds nuw (i8, ptr @phpdbg_globals, i64 2184), align 8, !tbaa !95
  %i.bq = or i64 %i.bp, 4
  store i64 %i.bq, ptr getelementptr inbounds nuw (i8, ptr @phpdbg_globals, i64 2184), align 8, !tbaa !95
  %i.br = load i32, ptr getelementptr inbounds nuw (i8, ptr @phpdbg_globals, i64 1508), align 4, !tbaa !28
  %i.bs = call i32 (i32, i32, ptr, ...) @phpdbg_print(i32 noundef 2, i32 noundef %i.br, ptr noundef nonnull @.str.18, i32 noundef %i.aj, ptr noundef %i.al, i64 noundef %2) #14 ; 0 uses
  br label %bb.x

.thread96:                                        ; preds = %bb.u, %zend_hash_index_update_mem.exit
  %.sroa.0.3 = phi i32 [ %.sroa.0.0.copyload, %bb.u ], [ %i.aj, %zend_hash_index_update_mem.exit ]
  %.sroa.1276.2102 = phi ptr [ %.sroa.1276.0.copyload, %bb.u ], [ %i.al, %zend_hash_index_update_mem.exit ]
  %.sroa.15.3 = phi i64 [ %.sroa.15.0.copyload, %bb.u ], [ %2, %zend_hash_index_update_mem.exit ]
  %i.bt = load i64, ptr getelementptr inbounds nuw (i8, ptr @phpdbg_globals, i64 2184), align 8, !tbaa !95
  %i.bu = or i64 %i.bt, 2
  store i64 %i.bu, ptr getelementptr inbounds nuw (i8, ptr @phpdbg_globals, i64 2184), align 8, !tbaa !95
  %i.bv = load i32, ptr getelementptr inbounds nuw (i8, ptr @phpdbg_globals, i64 1508), align 4, !tbaa !28
  %i.bw = call i32 (i32, i32, ptr, ...) @phpdbg_print(i32 noundef 2, i32 noundef %i.bv, ptr noundef nonnull @.str.19, i32 noundef %.sroa.0.3, ptr noundef %.sroa.1276.2102, i64 noundef %.sroa.15.3) #14 ; 0 uses
  br label %bb.x

bb.w:                                             ; preds = %bb.o
  %i.bx = load i32, ptr getelementptr inbounds nuw (i8, ptr @phpdbg_globals, i64 1508), align 4, !tbaa !28
  %i.by = call i32 (i32, i32, ptr, ...) @phpdbg_print(i32 noundef 1, i32 noundef %i.bx, ptr noundef nonnull @.str.20, ptr noundef nonnull %.154, i64 noundef %2) #14 ; 0 uses
  br label %bb.x

bb.x:                                             ; preds = %._crit_edge, %.thread96, %bb.w
  %i.bz = load i32, ptr %i.t, align 4, !tbaa !18  ; 2 uses
  %i.ca = and i32 %i.bz, 64
  %.not.i = icmp eq i32 %i.ca, 0
  br i1 %.not.i, label %bb.y, label %zend_string_release.exit

bb.y:                                             ; preds = %bb.x
  %i.cb = load i32, ptr %i.s, align 8, !tbaa !38  ; 2 uses
  %i.cc = icmp ne i32 %i.cb, 0
  call void @llvm.assume(i1 %i.cc)
  %i.cd = add i32 %i.cb, -1                       ; 2 uses
  store i32 %i.cd, ptr %i.s, align 8, !tbaa !38
  %i.ce = icmp eq i32 %i.cd, 0
  br i1 %i.ce, label %bb.z, label %zend_string_release.exit

bb.z:                                             ; preds = %bb.y
  %i.cf = and i32 %i.bz, 128
  %.not5.i = icmp eq i32 %i.cf, 0
  br i1 %.not5.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @free(ptr noundef nonnull %i.s) #14
  br label %zend_string_release.exit

bb.ab:                                            ; preds = %bb.z
  call void @_efree(ptr noundef nonnull %i.s) #14
  br label %zend_string_release.exit

zend_string_release.exit:                         ; preds = %bb.ab, %bb.aa, %bb.y, %bb.x, %bb.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  ret void
}

declare ptr @tsrm_realpath(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @_php_stream_stat_path(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @_zend_hash_init(ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal void @phpdbg_file_breaks_dtor(ptr nofree noundef readonly captures(none) %0) #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !18     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !36
  tail call void @_efree(ptr noundef %i.c) #14
  tail call void @_efree(ptr noundef %i.a) #14
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

declare noalias ptr @_estrndup(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @phpdbg_resolve_pending_file_break_ex(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #2 {
bb.a:
  %4 = alloca %struct._zval_struct, align 8       ; 5 uses
  %5 = alloca %struct._zval_struct, align 8       ; 6 uses
  %6 = alloca %struct._zval_struct, align 8       ; 5 uses
  %.sroa.0 = alloca { i32, i8, i64, i8 }, align 8 ; 4 uses
  %7 = alloca %struct._zend_array, align 8        ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !69   ; 5 uses
  %i.c = zext i32 %1 to i64                       ; 7 uses
  %i.d = icmp ult i64 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = xor i64 %i.b, -1
  %i.f = getelementptr i8, ptr %0, i64 %i.e
  %i.g = getelementptr i8, ptr %i.f, i64 %i.c
  %i.h = load i8, ptr %i.g, align 1, !tbaa !18
  %i.i = icmp eq i8 %i.h, 47
  br i1 %i.i, label %bb.d, label %bb.u

bb.c:                                             ; preds = %bb.a
  %.old = icmp eq i64 %i.b, %i.c
  br i1 %.old, label %bb.d, label %bb.u

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 %i.c
  %i.k = sub nsw i64 0, %i.b
  %i.l = getelementptr inbounds i8, ptr %i.j, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 24
  %bcmp = tail call i32 @bcmp(ptr %i.l, ptr nonnull %i.m, i64 %i.b)
  %.not = icmp eq i32 %bcmp, 0
  br i1 %.not, label %bb.e, label %bb.u

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  %i.n = load i64, ptr getelementptr inbounds nuw (i8, ptr @phpdbg_globals, i64 2184), align 8, !tbaa !95
  %i.o = or i64 %i.n, 2
  store i64 %i.o, ptr getelementptr inbounds nuw (i8, ptr @phpdbg_globals, i64 2184), align 8, !tbaa !95
  %i.p = tail call ptr @zend_hash_str_find(ptr noundef nonnull @phpdbg_globals, ptr noundef %0, i64 noundef %i.c) #14 ; 2 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %bb.f, label %zend_hash_str_find_ptr.exit

zend_hash_str_find_ptr.exit:                      ; preds = %bb.e
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !18, !nonnull !58, !noundef !58
  br label %bb.k

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  call void @_zend_hash_init(ptr noundef nonnull %7, i32 noundef 8, ptr noundef nonnull @phpdbg_file_breaks_dtor, i1 noundef zeroext false) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  store ptr null, ptr %6, align 8, !tbaa !18
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 13, ptr %i.r, align 8, !tbaa !18
  %i.s = call ptr @zend_hash_str_add(ptr noundef nonnull @phpdbg_globals, ptr noundef %0, i64 noundef range(i64 0, 4294967296) %i.c, ptr noundef nonnull %6) #14 ; 2 uses
  %.not.i46 = icmp eq ptr %i.s, null
  br i1 %.not.i46, label %zend_hash_str_add_mem.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = load i32, ptr getelementptr inbounds nuw (i8, ptr @phpdbg_globals, i64 4), align 4, !tbaa !18
  %i.u = and i32 %i.t, 128
  %.not47.i = icmp eq i32 %i.u, 0
  br i1 %.not47.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = call noalias dereferenceable_or_null(56) ptr @__zend_malloc(i64 noundef 56) #16
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.w = call noalias ptr @_emalloc_56() #14
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.x = phi ptr [ %i.v, %bb.h ], [ %i.w, %bb.i ] ; 3 uses
  store ptr %i.x, ptr %i.s, align 8, !tbaa !18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(56) %i.x, ptr noundef nonnull align 8 dereferenceable(56) %7, i64 56, i1 false)
  br label %zend_hash_str_add_mem.exit

zend_hash_str_add_mem.exit:                       ; preds = %bb.f, %bb.j
  %.0.i47 = phi ptr [ %i.x, %bb.j ], [ null, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  br label %bb.k

bb.k:                                             ; preds = %zend_hash_str_find_ptr.exit, %zend_hash_str_add_mem.exit
  %.037 = phi ptr [ %i.q, %zend_hash_str_find_ptr.exit ], [ %.0.i47, %zend_hash_str_add_mem.exit ] ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.z = load i32, ptr %i.y, align 8, !tbaa !17   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !18
  %i.ac = shl i32 %i.ab, 2
  %i.ad = and i32 %i.ac, 16
  %narrow = sub nuw nsw i32 32, %i.ad
  %i.ae = zext nneg i32 %narrow to i64
  %.not4358 = icmp eq i32 %i.z, 0
  br i1 %.not4358, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !18
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %.037, i64 4
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph, %bb.r
  %.060 = phi ptr [ %i.ag, %.lr.ph ], [ %i.bd, %bb.r ] ; 3 uses
  %.03659 = phi i32 [ %i.z, %.lr.ph ], [ %i.be, %bb.r ]
  %i.ak = getelementptr inbounds nuw i8, ptr %.060, i64 8
  %i.al = load i8, ptr %i.ak, align 8, !tbaa !18
  %i.am = icmp eq i8 %i.al, 0
  br i1 %i.am, label %bb.r, label %bb.m, !prof !19

bb.m:                                             ; preds = %bb.l
  %i.an = load ptr, ptr %.060, align 8, !tbaa !18 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(24) %i.an, i64 24, i1 false), !tbaa.struct !181
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 32 ; 2 uses
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !94
  %i.ao = call noalias ptr @_estrndup(ptr noundef %0, i64 noundef %i.c) #14
  %i.ap = load i32, ptr %i.an, align 8, !tbaa !96
  %i.aq = sext i32 %i.ap to i64
  %i.ar = call i32 @zend_hash_index_del(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @phpdbg_globals, i64 560), i64 noundef %i.aq) #14 ; 0 uses
  %i.as = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  store ptr null, ptr %5, align 8, !tbaa !18
  store i32 13, ptr %i.ah, align 8, !tbaa !18
  %i.at = call ptr @zend_hash_index_add(ptr noundef %.037, i64 noundef %i.as, ptr noundef nonnull %5) #14 ; 3 uses
  %.not.i48 = icmp eq ptr %i.at, null
  br i1 %.not.i48, label %zend_hash_index_add_mem.exit.thread, label %bb.n

zend_hash_index_add_mem.exit.thread:              ; preds = %bb.m
end_hunk_0
