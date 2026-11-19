Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/zend_inheritance?download=true
inline.NumInlined: 86
inline.NumDeleted: 42
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 10
begin_hunk_0_@zend_append_type_hint:bb.a
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = add i32 %i.y, -1                        ; 2 uses
  store i32 %i.aa, ptr %i.f, align 8, !tbaa !92
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %bb.f, label %zend_string_release.exit

bb.f:                                             ; preds = %bb.e
  %i.ac = and i32 %i.w, 128
  %.not5.i = icmp eq i32 %i.ac, 0
  br i1 %.not5.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @free(ptr noundef nonnull %i.f) #16
  br label %zend_string_release.exit

bb.h:                                             ; preds = %bb.f
  tail call void @_efree(ptr noundef nonnull %i.f) #16
  br label %zend_string_release.exit

zend_string_release.exit:                         ; preds = %smart_str_append_ex.exit, %bb.e, %bb.g, %bb.h
  br i1 %3, label %bb.l, label %bb.i

bb.i:                                             ; preds = %zend_string_release.exit
  %i.ad = load ptr, ptr %0, align 8, !tbaa !178   ; 3 uses
  %.not.i.i7 = icmp eq ptr %i.ad, null
  br i1 %.not.i.i7, label %bb.k, label %bb.j, !prof !102

bb.j:                                             ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !22
  %i.ag = add i64 %i.af, 1                        ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !179
  %.not12.i.i8 = icmp ult i64 %i.ag, %i.ai
  br i1 %.not12.i.i8, label %smart_str_appendc_ex.exit, label %bb.k, !prof !90

bb.k:                                             ; preds = %bb.j, %bb.i
  %.0.i.i9 = phi i64 [ 1, %bb.i ], [ %i.ag, %bb.j ] ; 2 uses
  tail call void @smart_str_erealloc(ptr noundef nonnull %0, i64 noundef %.0.i.i9) #16
  %.pre12 = load ptr, ptr %0, align 8, !tbaa !178
  br label %smart_str_appendc_ex.exit

smart_str_appendc_ex.exit:                        ; preds = %bb.j, %bb.k
  %i.aj = phi ptr [ %i.ad, %bb.j ], [ %.pre12, %bb.k ]
  %.1.i.i10 = phi i64 [ %i.ag, %bb.j ], [ %.0.i.i9, %bb.k ] ; 2 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 23
  %i.al = getelementptr i8, ptr %i.ak, i64 %.1.i.i10
  store i8 32, ptr %i.al, align 1, !tbaa !28
  %i.am = load ptr, ptr %0, align 8, !tbaa !178
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store i64 %.1.i.i10, ptr %i.an, align 8, !tbaa !22
  br label %bb.l

bb.l:                                             ; preds = %zend_string_release.exit, %smart_str_appendc_ex.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #13

declare void @smart_str_erealloc(ptr noundef, i64 noundef) local_unnamed_addr #8

declare ptr @zend_type_to_string_resolved(ptr, i32, ptr noundef) local_unnamed_addr #8

declare ptr @zval_get_string_func(ptr noundef) local_unnamed_addr #8

declare ptr @zend_get_object_type_case(ptr noundef, i1 noundef zeroext) local_unnamed_addr #8

declare i64 @zend_string_hash_func(ptr noundef) local_unnamed_addr #8

declare ptr @zend_hash_add_new(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

declare ptr @zend_hash_update(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: noreturn
declare void @zend_exception_uncaught_error(ptr noundef, ...) local_unnamed_addr #6

declare void @zend_function_dtor(ptr noundef) #8

; Function Attrs: nounwind uwtable
define internal fastcc void @zend_type_copy_ctor(ptr nofree noundef captures(none) %0) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !17   ; 2 uses
  %i.c = and i32 %i.b, 4194304
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !18     ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !14
  %i.f = add i32 %i.e, -1
  %i.g = zext i32 %i.f to i64
  %i.h = shl nuw nsw i64 %i.g, 4                  ; 2 uses
  %i.i = add nuw nsw i64 %i.h, 24                 ; 4 uses
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 360), align 8, !tbaa !98 ; 5 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !100  ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !101
  %i.n = ptrtoint ptr %i.m to i64                 ; 2 uses
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  %.not.i.i = icmp ugt i64 %i.i, %i.p
  br i1 %.not.i.i, label %bb.d, label %bb.c, !prof !102

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.i
  store ptr %i.q, ptr %i.j, align 8, !tbaa !100
  br label %zend_arena_alloc.exit.i

bb.d:                                             ; preds = %bb.b
  %i.r = add nuw nsw i64 %i.h, 48
  %i.s = ptrtoint ptr %i.j to i64
  %i.t = sub i64 %i.n, %i.s
  %..i.i = tail call i64 @llvm.umax.i64(i64 %i.r, i64 %i.t) ; 2 uses
  %i.u = tail call noalias ptr @_emalloc(i64 noundef %..i.i) #17, !inline_history !328 ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.i
  store ptr %i.w, ptr %i.u, align 8, !tbaa !100
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 %..i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %i.x, ptr %i.y, align 8, !tbaa !101
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store ptr %i.j, ptr %i.z, align 8, !tbaa !103
  store ptr %i.u, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 360), align 8, !tbaa !98
  br label %zend_arena_alloc.exit.i

zend_arena_alloc.exit.i:                          ; preds = %bb.d, %bb.c
  %.0.i.i = phi ptr [ %i.k, %bb.c ], [ %i.v, %bb.d ] ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %.0.i.i, ptr noundef nonnull align 8 dereferenceable(1) %i.d, i64 %i.i, i1 false)
  store ptr %.0.i.i, ptr %0, align 8, !tbaa !18
  %i.aa = load i32, ptr %i.a, align 8, !tbaa !17
  %i.ab = and i32 %i.aa, -30408705
  %i.ac = or disjoint i32 %i.ab, 5242880
  store i32 %i.ac, ptr %i.a, align 8, !tbaa !17
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8 ; 2 uses
  %i.ae = load i32, ptr %.0.i.i, align 8, !tbaa !14 ; 2 uses
  %i.af = zext i32 %i.ae to i64
  %.idx = shl nuw nsw i64 %i.af, 4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.idx
  %.not8 = icmp eq i32 %i.ae, 0
  br i1 %.not8, label %zend_type_list_copy_ctor.exit, label %.lr.ph

.lr.ph:                                           ; preds = %zend_arena_alloc.exit.i, %.lr.ph
  %.0.i67 = phi ptr [ %i.ah, %.lr.ph ], [ %i.ad, %zend_arena_alloc.exit.i ] ; 2 uses
  tail call fastcc void @zend_type_copy_ctor(ptr noundef nonnull %.0.i67)
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.i67, i64 16 ; 2 uses
  %i.ai = icmp ult ptr %i.ah, %i.ag
  br i1 %i.ai, label %.lr.ph, label %zend_type_list_copy_ctor.exit, !llvm.loop !329

bb.e:                                             ; preds = %bb.a
  %i.aj = and i32 %i.b, 16777216
  %.not5 = icmp eq i32 %i.aj, 0
  br i1 %.not5, label %zend_type_list_copy_ctor.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ak = load ptr, ptr %0, align 8, !tbaa !18    ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %i.am = load i32, ptr %i.al, align 4, !tbaa !28
  %i.an = and i32 %i.am, 64
  %.not.i = icmp eq i32 %i.an, 0
  br i1 %.not.i, label %bb.g, label %zend_type_list_copy_ctor.exit

bb.g:                                             ; preds = %bb.f
  %i.ao = load i32, ptr %i.ak, align 4, !tbaa !92
  %i.ap = add i32 %i.ao, 1
  store i32 %i.ap, ptr %i.ak, align 4, !tbaa !92
  br label %zend_type_list_copy_ctor.exit

zend_type_list_copy_ctor.exit:                    ; preds = %.lr.ph, %zend_arena_alloc.exit.i, %bb.g, %bb.f, %bb.e
  ret void
}

; Function Attrs: allocsize(0,1)
declare noalias ptr @_ecalloc(i64 noundef, i64 noundef) local_unnamed_addr #14

; Function Attrs: nounwind uwtable
define internal fastcc void @zend_traits_copy_functions(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4) unnamed_addr #2 {
bb.a:
  %5 = alloca %union._zend_function, align 8      ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 456 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !164  ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %.loopexit89, label %.preheader88

.preheader88:                                     ; preds = %bb.a
  %.090 = load ptr, ptr %i.b, align 8, !tbaa !166 ; 2 uses
  %.not7391 = icmp eq ptr %.090, null
  br i1 %.not7391, label %.loopexit89, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader88
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 4
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %zend_string_release_ex.exit
  %.094 = phi ptr [ %.090, %.lr.ph ], [ %.0, %zend_string_release_ex.exit ] ; 3 uses
  %.06293 = phi i32 [ 0, %.lr.ph ], [ %7, %zend_string_release_ex.exit ] ; 2 uses
  %.06492 = phi ptr [ %i.b, %.lr.ph ], [ %i.as, %zend_string_release_ex.exit ]
  %i.h = getelementptr inbounds nuw i8, ptr %.094, i64 16 ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !168
  %.not79 = icmp eq ptr %i.i, null
  br i1 %.not79, label %zend_string_release_ex.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !28
  %6 = zext nneg i32 %.06293 to i64
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %6
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !96
  %i.m = icmp eq ptr %i.j, %i.l
  br i1 %i.m, label %bb.d, label %zend_string_release_ex.exit

bb.d:                                             ; preds = %bb.c
  %i.n = load ptr, ptr %.094, align 8, !tbaa !169 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !22   ; 3 uses
  %i.q = load i64, ptr %i.d, align 8, !tbaa !22
  %i.r = icmp eq i64 %i.p, %i.q
  br i1 %i.r, label %bb.e, label %zend_string_release_ex.exit

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.t = call i32 @zend_binary_strcasecmp(ptr noundef nonnull %i.s, i64 noundef %i.p, ptr noundef nonnull %i.e, i64 noundef %i.p) #16
  %.not80 = icmp eq i32 %i.t, 0
  br i1 %.not80, label %bb.f, label %zend_string_release_ex.exit

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %5, ptr noundef nonnull align 8 dereferenceable(256) %1, i64 256, i1 false), !tbaa.struct !332
  %i.u = getelementptr inbounds nuw i8, ptr %.094, i64 24
  %i.v = load i32, ptr %i.u, align 8, !tbaa !333  ; 2 uses
  %i.w = and i32 %i.v, 7
  %.not81 = icmp eq i32 %i.w, 0
  %i.x = load i32, ptr %i.f, align 4, !tbaa !28   ; 3 uses
  %i.y = and i32 %i.x, -8
  %.pn = select i1 %.not81, i32 %i.x, i32 %i.y
  %storemerge = or i32 %.pn, %i.v                 ; 2 uses
  store i32 %storemerge, ptr %i.g, align 4, !tbaa !28
  %i.z = load ptr, ptr %i.h, align 8, !tbaa !168  ; 2 uses
  %i.aa = and i32 %i.x, 32
  %.not.i83 = icmp eq i32 %i.aa, 0
  %i.ab = and i32 %storemerge, 36
  %i.ac = icmp eq i32 %i.ab, 36
  %or.cond.i = select i1 %.not.i83, i1 %i.ac, i1 false
  br i1 %or.cond.i, label %bb.g, label %zend_traits_check_private_final_inheritance.exit

bb.g:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !22
  %i.af = icmp eq i64 %i.ae, 11
  br i1 %i.af, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ah = call i32 @zend_binary_strcasecmp(ptr noundef nonnull %i.ag, i64 noundef 11, ptr noundef nonnull @.str.88, i64 noundef 11) #16
  %.not4.i = icmp eq i32 %i.ah, 0
  br i1 %.not4.i, label %zend_traits_check_private_final_inheritance.exit, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  call void (i32, ptr, ...) @zend_error(i32 noundef 128, ptr noundef nonnull @.str.89) #16
  br label %zend_traits_check_private_final_inheritance.exit

zend_traits_check_private_final_inheritance.exit: ; preds = %bb.f, %bb.h, %bb.i
  %i.ai = load ptr, ptr %i.h, align 8, !tbaa !168
  %i.aj = call ptr @zend_string_tolower_ex(ptr noundef %i.ai, i1 noundef zeroext false) #16 ; 5 uses
  %i.ak = load ptr, ptr %i.h, align 8, !tbaa !168
  call fastcc void @zend_add_trait_method(ptr noundef %2, ptr noundef %i.ak, ptr noundef %i.aj, ptr noundef %5)
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %i.am = load i32, ptr %i.al, align 4, !tbaa !28
  %i.an = and i32 %i.am, 64
  %.not.i = icmp eq i32 %i.an, 0
  br i1 %.not.i, label %bb.j, label %zend_string_release_ex.exit

bb.j:                                             ; preds = %zend_traits_check_private_final_inheritance.exit
  %i.ao = load i32, ptr %i.aj, align 4, !tbaa !92 ; 2 uses
  %i.ap = icmp ne i32 %i.ao, 0
  call void @llvm.assume(i1 %i.ap)
  %i.aq = add i32 %i.ao, -1                       ; 2 uses
  store i32 %i.aq, ptr %i.aj, align 4, !tbaa !92
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %bb.k, label %zend_string_release_ex.exit

bb.k:                                             ; preds = %bb.j
  call void @_efree(ptr noundef nonnull %i.aj) #16
  br label %zend_string_release_ex.exit

zend_string_release_ex.exit:                      ; preds = %bb.k, %bb.j, %zend_traits_check_private_final_inheritance.exit, %bb.e, %bb.d, %bb.c, %bb.b
  %i.as = getelementptr inbounds nuw i8, ptr %.06492, i64 8 ; 2 uses
  %7 = add nuw nsw i32 %.06293, 1
  %.0 = load ptr, ptr %i.as, align 8, !tbaa !166  ; 2 uses
  %.not73 = icmp eq ptr %.0, null
  br i1 %.not73, label %.loopexit89, label %bb.b, !llvm.loop !330

.loopexit89:                                      ; preds = %zend_string_release_ex.exit, %.preheader88, %bb.a
  %i.at = icmp eq ptr %3, null
  br i1 %i.at, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.loopexit89
  %i.au = call ptr @zend_hash_find(ptr noundef nonnull %3, ptr noundef %0) #16
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %bb.m, label %bb.w

bb.m:                                             ; preds = %bb.l, %.loopexit89
  %i.aw = load i8, ptr %1, align 8, !tbaa !28
  %i.ax = icmp eq i8 %i.aw, 2
  %i.ay = select i1 %i.ax, i64 256, i64 160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %5, ptr noundef nonnull align 8 dereferenceable(160) %1, i64 %i.ay, i1 false)
  %i.az = load ptr, ptr %i.a, align 8, !tbaa !164 ; 3 uses
  %.not74 = icmp eq ptr %i.az, null
  br i1 %.not74, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.m
  %.195 = load ptr, ptr %i.az, align 8, !tbaa !166 ; 2 uses
  %.not7596 = icmp eq ptr %.195, null
  br i1 %.not7596, label %.loopexit, label %.lr.ph100

.lr.ph100:                                        ; preds = %.preheader
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.be = getelementptr inbounds nuw i8, ptr %5, i64 4
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph100, %bb.s
  %.199 = phi ptr [ %.195, %.lr.ph100 ], [ %.1, %bb.s ] ; 3 uses
  %.16398 = phi i32 [ 0, %.lr.ph100 ], [ %9, %bb.s ] ; 2 uses
  %.16597 = phi ptr [ %i.az, %.lr.ph100 ], [ %i.ca, %bb.s ]
  %i.bf = getelementptr inbounds nuw i8, ptr %.199, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !168
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %bb.o, label %bb.s

bb.o:                                             ; preds = %bb.n
  %i.bi = getelementptr inbounds nuw i8, ptr %.199, i64 24 ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !333
  %.not76 = icmp eq i32 %i.bj, 0
  br i1 %.not76, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bk = load ptr, ptr %i.ba, align 8, !tbaa !28
  %8 = zext nneg i32 %.16398 to i64
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !96
  %i.bn = icmp eq ptr %i.bk, %i.bm
  br i1 %i.bn, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.bo = load ptr, ptr %.199, align 8, !tbaa !169 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !22 ; 3 uses
  %i.br = load i64, ptr %i.bb, align 8, !tbaa !22
  %i.bs = icmp eq i64 %i.bq, %i.br
  br i1 %i.bs, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.bu = call i32 @zend_binary_strcasecmp(ptr noundef nonnull %i.bt, i64 noundef %i.bq, ptr noundef nonnull %i.bc, i64 noundef %i.bq) #16
  %.not77 = icmp eq i32 %i.bu, 0
  br i1 %.not77, label %.sink.split, label %bb.s

.sink.split:                                      ; preds = %bb.r
  %i.bv = load i32, ptr %i.bi, align 8, !tbaa !333 ; 2 uses
  %i.bw = and i32 %i.bv, 7
  %.not78 = icmp eq i32 %i.bw, 0
  %i.bx = load i32, ptr %i.bd, align 4, !tbaa !28 ; 2 uses
  %i.by = and i32 %i.bx, -8
  %.sink111 = select i1 %.not78, i32 %i.bx, i32 %i.by
  %i.bz = or i32 %.sink111, %i.bv
  store i32 %i.bz, ptr %i.be, align 4, !tbaa !28
  br label %bb.s

bb.s:                                             ; preds = %.sink.split, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n
  %i.ca = getelementptr inbounds nuw i8, ptr %.16597, i64 8 ; 2 uses
  %9 = add nuw nsw i32 %.16398, 1
  %.1 = load ptr, ptr %i.ca, align 8, !tbaa !166  ; 2 uses
  %.not75 = icmp eq ptr %.1, null
  br i1 %.not75, label %.loopexit, label %bb.n, !llvm.loop !331

.loopexit:                                        ; preds = %bb.s, %.preheader, %bb.m
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !28
  %i.cd = getelementptr inbounds nuw i8, ptr %5, i64 4
  %.val = load i32, ptr %i.cd, align 4
  %i.ce = and i32 %i.cc, 32
  %.not.i84 = icmp eq i32 %i.ce, 0
  %i.cf = and i32 %.val, 36
  %i.cg = icmp eq i32 %i.cf, 36
  %or.cond.i85 = select i1 %.not.i84, i1 %i.cg, i1 false
  br i1 %or.cond.i85, label %bb.t, label %zend_traits_check_private_final_inheritance.exit87

bb.t:                                             ; preds = %.loopexit
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !22
  %i.cj = icmp eq i64 %i.ci, 11
  br i1 %i.cj, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cl = call i32 @zend_binary_strcasecmp(ptr noundef nonnull %i.ck, i64 noundef 11, ptr noundef nonnull @.str.88, i64 noundef 11) #16
  %.not4.i86 = icmp eq i32 %i.cl, 0
  br i1 %.not4.i86, label %zend_traits_check_private_final_inheritance.exit87, label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  call void (i32, ptr, ...) @zend_error(i32 noundef 128, ptr noundef nonnull @.str.89) #16
  br label %zend_traits_check_private_final_inheritance.exit87

zend_traits_check_private_final_inheritance.exit87: ; preds = %.loopexit, %bb.u, %bb.v
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !28
  call fastcc void @zend_add_trait_method(ptr noundef %2, ptr noundef %i.cn, ptr noundef %0, ptr noundef %5)
  br label %bb.w

bb.w:                                             ; preds = %zend_traits_check_private_final_inheritance.exit87, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @zend_add_trait_method(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3) unnamed_addr #2 {
bb.a:
  %4 = alloca %struct._zval_struct, align 8       ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = tail call ptr @zend_hash_find(ptr noundef nonnull %i.a, ptr noundef %2) #16 ; 2 uses
  %.not.i53 = icmp eq ptr %i.b, null
  br i1 %.not.i53, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !28, !nonnull !89, !noundef !89 ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !28
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !28
  %i.h = icmp eq ptr %i.e, %i.g
  br i1 %i.h, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %3, i64 4
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !28
  br label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !28
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !28   ; 3 uses
  %i.m = xor i32 %i.l, %i.j
  %i.n = and i32 %i.m, 7
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !28
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 28
  %i.s = load i32, ptr %i.r, align 4, !tbaa !43
  %i.t = and i32 %i.s, 2
  %.not45 = icmp eq i32 %i.t, 0
  br i1 %.not45, label %bb.e, label %bb.r

bb.e:                                             ; preds = %._crit_edge, %bb.d, %bb.c
  %i.u = phi i32 [ %.pre, %._crit_edge ], [ %i.l, %bb.d ], [ %i.l, %bb.c ]
  %i.v = and i32 %i.u, 64
  %.not46 = icmp eq i32 %i.v, 0
  %i.w = getelementptr i8, ptr %i.c, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !28   ; 5 uses
  br i1 %.not46, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 28
  %i.z = load i32, ptr %i.y, align 4, !tbaa !43
  %i.aa = and i32 %i.z, 2
  %.not.i55 = icmp eq i32 %i.aa, 0
  %..i56 = select i1 %.not.i55, ptr %i.x, ptr %0
  %i.ab = getelementptr i8, ptr %3, i64 16
  %.val = load ptr, ptr %i.ab, align 8, !tbaa !28 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.val, i64 28
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !43
  %i.ae = and i32 %i.ad, 2
  %.not.i57 = icmp eq i32 %i.ae, 0
  %..i58 = select i1 %.not.i57, ptr %.val, ptr %0
  tail call fastcc void @do_inheritance_check_on_method(ptr noundef nonnull %i.c, ptr noundef %..i56, ptr noundef nonnull %3, ptr noundef %..i58, ptr noundef nonnull %0, ptr noundef null, i32 noundef 68)
  br label %bb.r

bb.g:                                             ; preds = %bb.e
  %i.af = icmp eq ptr %i.x, %0
  br i1 %i.af, label %bb.r, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 28
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !43
  %i.ai = and i32 %i.ah, 2
  %.not47 = icmp eq i32 %i.ai, 0
  br i1 %.not47, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !28
  %i.al = and i32 %i.ak, 64
  %.not48 = icmp eq i32 %i.al, 0
  br i1 %.not48, label %bb.j, label %.critedge, !prof !102

bb.j:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !28
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !44
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !28
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !44
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ay = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !44
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.bb = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !28
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  tail call void (i32, ptr, ...) @zend_error_noreturn(i32 noundef 64, ptr noundef nonnull @.str.90, ptr noundef nonnull %i.aq, ptr noundef nonnull %i.at, ptr noundef nonnull %i.aw, ptr noundef nonnull %i.ax, ptr noundef nonnull %i.ba, ptr noundef nonnull %i.bd) #18
  unreachable

.critedge:                                        ; preds = %bb.a, %bb.h, %bb.i
  %i.be = load i8, ptr %3, align 8, !tbaa !28
  %i.bf = icmp eq i8 %i.be, 1
  %i.bg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 360), align 8, !tbaa !98 ; 8 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !100 ; 5 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !101
  %i.bk = ptrtoint ptr %i.bj to i64               ; 3 uses
  %i.bl = ptrtoint ptr %i.bh to i64
  %i.bm = sub i64 %i.bk, %i.bl                    ; 2 uses
  br i1 %i.bf, label %bb.k, label %bb.n, !prof !102

bb.k:                                             ; preds = %.critedge
  %.not.i49 = icmp ult i64 %i.bm, 160
  br i1 %.not.i49, label %bb.m, label %bb.l, !prof !102

bb.l:                                             ; preds = %bb.k
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 160
  store ptr %i.bn, ptr %i.bg, align 8, !tbaa !100
  br label %zend_arena_alloc.exit52

bb.m:                                             ; preds = %bb.k
  %i.bo = ptrtoint ptr %i.bg to i64
  %i.bp = sub i64 %i.bk, %i.bo
  %..i51 = tail call i64 @llvm.umax.i64(i64 %i.bp, i64 184) ; 2 uses
  %i.bq = tail call noalias ptr @_emalloc(i64 noundef %..i51) #17 ; 7 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 184
  store ptr %i.bs, ptr %i.bq, align 8, !tbaa !100
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 %..i51
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  store ptr %i.bt, ptr %i.bu, align 8, !tbaa !101
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  store ptr %i.bg, ptr %i.bv, align 8, !tbaa !103
  store ptr %i.bq, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 360), align 8, !tbaa !98
  br label %zend_arena_alloc.exit52

zend_arena_alloc.exit52:                          ; preds = %bb.l, %bb.m
  %.0.i50 = phi ptr [ %i.bh, %bb.l ], [ %i.br, %bb.m ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %.0.i50, ptr noundef nonnull align 8 dereferenceable(160) %3, i64 160, i1 false)
  %i.bw = getelementptr inbounds nuw i8, ptr %.0.i50, i64 4 ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !28
  %i.by = or i32 %i.bx, 33554432                  ; 2 uses
  store i32 %i.by, ptr %i.bw, align 4, !tbaa !28
  br label %bb.q

bb.n:                                             ; preds = %.critedge
  %.not.i = icmp ult i64 %i.bm, 256
  br i1 %.not.i, label %bb.p, label %bb.o, !prof !102

bb.o:                                             ; preds = %bb.n
end_hunk_0
