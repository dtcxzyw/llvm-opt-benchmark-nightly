Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/zend_inheritance?download=true
inline.NumInlined: 86
inline.NumDeleted: 42
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 10
begin_hunk_0_@register_unresolved_classes:bb.a
  %i.ar = icmp ult ptr %i.aq, %.015
  br i1 %i.ar, label %bb.e, label %bb.o, !llvm.loop !186

bb.o:                                             ; preds = %bb.n
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @zend_build_properties_info_table(ptr nofree noundef captures(address) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !97   ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.e = sext i32 %i.b to i64
  %i.f = shl nsw i64 %i.e, 3                      ; 6 uses
  %i.g = load i8, ptr %0, align 8, !tbaa !94
  %i.h = icmp eq i8 %i.g, 2
  br i1 %i.h, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 360), align 8, !tbaa !98 ; 5 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !100  ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !101
  %i.m = ptrtoint ptr %i.l to i64                 ; 2 uses
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  %.not.i = icmp ugt i64 %i.f, %i.o
  br i1 %.not.i, label %bb.e, label %bb.d, !prof !102

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.f
  store ptr %i.p, ptr %i.i, align 8, !tbaa !100
  br label %zend_arena_alloc.exit

bb.e:                                             ; preds = %bb.c
  %i.q = add nsw i64 %i.f, 24
  %i.r = ptrtoint ptr %i.i to i64
  %i.s = sub i64 %i.m, %i.r
  %..i = tail call i64 @llvm.umax.i64(i64 %i.q, i64 %i.s) ; 2 uses
  %i.t = tail call noalias ptr @_emalloc(i64 noundef %..i) #17 ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.f
  store ptr %i.v, ptr %i.t, align 8, !tbaa !100
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 %..i
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.w, ptr %i.x, align 8, !tbaa !101
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store ptr %i.i, ptr %i.y, align 8, !tbaa !103
  store ptr %i.t, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 360), align 8, !tbaa !98
  br label %zend_arena_alloc.exit

bb.f:                                             ; preds = %bb.b
  %i.z = tail call noalias ptr @__zend_malloc(i64 noundef %i.f) #17
  br label %zend_arena_alloc.exit

zend_arena_alloc.exit:                            ; preds = %bb.e, %bb.d, %bb.f
  %storemerge = phi ptr [ %i.z, %bb.f ], [ %i.j, %bb.d ], [ %i.u, %bb.e ] ; 4 uses
  store ptr %storemerge, ptr %i.d, align 8, !tbaa !188
  tail call void @llvm.memset.p0.i64(ptr align 8 %storemerge, i8 0, i64 %i.f, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !28 ; 3 uses
  %.not = icmp eq ptr %i.ab, null
  br i1 %.not, label %bb.i, label %bb.g

bb.g:                                             ; preds = %zend_arena_alloc.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !97 ; 2 uses
  %.not59 = icmp eq i32 %i.ad, 0
  br i1 %.not59, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 248
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !188
  %i.ag = sext i32 %i.ad to i64
  %i.ah = shl nsw i64 %i.ag, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %storemerge, ptr align 8 %i.af, i64 %i.ah, i1 false)
  %i.ai = load i32, ptr %i.a, align 8, !tbaa !97
  %i.aj = load ptr, ptr %i.aa, align 8, !tbaa !28
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !97
  %.not60 = icmp eq i32 %i.ai, %i.al
  br i1 %.not60, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %zend_arena_alloc.exit, %bb.g, %bb.h
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !28 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !104 ; 2 uses
  %i.aq = zext i32 %i.ap to i64
  %.idx = shl nuw nsw i64 %i.aq, 5
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 %.idx
  %.not6276 = icmp eq i32 %i.ap, 0
  br i1 %.not6276, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.i, %bb.p
  %.05177 = phi ptr [ %i.cb, %bb.p ], [ %i.an, %bb.i ] ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.05177, i64 8
  %i.at = load i8, ptr %i.as, align 8, !tbaa !28
  %i.au = icmp eq i8 %i.at, 0
  br i1 %i.au, label %bb.p, label %bb.j, !prof !102

bb.j:                                             ; preds = %.lr.ph
  %i.av = getelementptr inbounds nuw i8, ptr %.05177, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !106
  %i.ax = load ptr, ptr %.05177, align 8, !tbaa !28 ; 5 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !110
  %i.ba = icmp eq ptr %i.az, %0
  br i1 %i.ba, label %bb.k, label %bb.p

bb.k:                                             ; preds = %bb.j
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !111
  %i.bd = and i32 %i.bc, 528
  %or.cond = icmp eq i32 %i.bd, 0
  br i1 %or.cond, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.be = getelementptr inbounds nuw i8, ptr %i.ax, i64 56 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !112 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 4
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !111
  %i.bi = and i32 %i.bh, 512
  %.not64 = icmp eq i32 %i.bi, 0
  br i1 %.not64, label %.thread, label %.preheader, !prof !90

.preheader:                                       ; preds = %bb.l, %bb.o
  %.050 = phi ptr [ %i.bp, %bb.o ], [ %i.ax, %bb.l ] ; 5 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.050, i64 32
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !110
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !28 ; 2 uses
  %.not65 = icmp eq ptr %i.bm, null
  br i1 %.not65, label %.thread, label %bb.m

bb.m:                                             ; preds = %.preheader
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 120
  %i.bo = tail call ptr @zend_hash_find(ptr noundef nonnull %i.bn, ptr noundef %i.aw) #16 ; 2 uses
  %.not.i70 = icmp eq ptr %i.bo, null
  br i1 %.not.i70, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !28, !nonnull !89, !noundef !89 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 56
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !112
  %i.bs = load ptr, ptr %i.be, align 8, !tbaa !112
  %.not67 = icmp eq ptr %i.br, %i.bs
  br i1 %.not67, label %bb.o, label %.thread

bb.o:                                             ; preds = %bb.n
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !111
  %i.bv = and i32 %i.bu, 512
  %.not68 = icmp eq i32 %i.bv, 0
  br i1 %.not68, label %.preheader, label %.thread

.thread:                                          ; preds = %bb.m, %bb.n, %bb.o, %.preheader, %bb.l
  %.3 = phi ptr [ %i.bf, %bb.l ], [ %.050, %.preheader ], [ %.050, %bb.o ], [ %.050, %bb.n ], [ %.050, %bb.m ]
  %i.bw = load i32, ptr %.3, align 8, !tbaa !113
  %i.bx = add i32 %i.bw, -40
  %i.by = lshr i32 %i.bx, 4
  %i.bz = zext nneg i32 %i.by to i64
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %storemerge, i64 %i.bz
  store ptr %i.ax, ptr %i.ca, align 8, !tbaa !189
  br label %bb.p

bb.p:                                             ; preds = %bb.j, %bb.k, %.thread, %.lr.ph
  %i.cb = getelementptr inbounds nuw i8, ptr %.05177, i64 32 ; 2 uses
  %.not62 = icmp eq ptr %i.cb, %i.ar
  br i1 %.not62, label %.loopexit, label %.lr.ph, !llvm.loop !187

.loopexit:                                        ; preds = %bb.p, %bb.i, %bb.a, %bb.h
  ret void
}

; Function Attrs: allocsize(0)
declare noalias ptr @__zend_malloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nounwind uwtable
define dso_local void @zend_verify_hooked_property(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !114  ; 5 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.t, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !111  ; 2 uses
  %3 = and i32 %i.d, 64
  %4 = icmp ne i32 %3, 0                          ; 2 uses
  %i.e = and i32 %i.d, 512
  %.not40 = icmp eq i32 %i.e, 0
  br i1 %.not40, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i32, ptr %1, align 8, !tbaa !113    ; 2 uses
  %.not41 = icmp eq i32 %i.f, -1
  br i1 %.not41, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !115
  %i.i = add i32 %i.f, -40
  %i.j = lshr i32 %i.i, 4
  %i.k = zext nneg i32 %i.j to i64
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load i8, ptr %i.m, align 8, !tbaa !28
  %i.o = icmp eq i8 %i.n, 0
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 -1, ptr %1, align 8, !tbaa !113
  br label %.thread

bb.f:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !44
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 24
  tail call void (i32, ptr, ...) @zend_error_noreturn(i32 noundef 64, ptr noundef nonnull @.str.3, ptr noundef nonnull %i.r, ptr noundef nonnull %i.s) #18
  unreachable

bb.g:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.u = load i32, ptr %i.t, align 8, !tbaa !116
  %i.v = and i32 %i.u, 33554431
  %.not43 = icmp eq i32 %i.v, 0
  br i1 %.not43, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !115
  %i.y = load i32, ptr %1, align 8, !tbaa !113
  %i.z = add i32 %i.y, -40
  %i.aa = lshr i32 %i.z, 4
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 8, !tbaa !28
  %i.af = icmp eq i8 %i.ae, 0
  br i1 %i.af, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  store i32 1, ptr %i.ad, align 8, !tbaa !28
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !114
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.e, %bb.i, %bb.h, %bb.g
  %i.ag = phi ptr [ %i.b, %bb.c ], [ %i.b, %bb.e ], [ %.pre, %bb.i ], [ %i.b, %bb.h ], [ %i.b, %bb.g ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 2 uses
  %i.ai = load ptr, ptr %i.ag, align 8, !tbaa !117 ; 2 uses
  %.not49 = icmp eq ptr %i.ai, null               ; 3 uses
  br i1 %.not49, label %bb.o, label %bb.j

bb.j:                                             ; preds = %.thread
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !28 ; 2 uses
  %i.al = and i32 %i.ak, 4096
  %.not50 = icmp eq i32 %i.al, 0
  br i1 %.not50, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.am = load i32, ptr %i.c, align 4, !tbaa !111
  %i.an = and i32 %i.am, 512
  %.not51 = icmp eq i32 %i.an, 0
  br i1 %.not51, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.ao = load ptr, ptr %i.ah, align 8, !tbaa !117
  %.not52 = icmp eq ptr %i.ao, null
  br i1 %.not52, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !44
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 24
  tail call void (i32, ptr, ...) @zend_error_noreturn(i32 noundef 64, ptr noundef nonnull @.str.4, ptr noundef nonnull %i.ar, ptr noundef nonnull %i.as) #18
  unreachable

bb.n:                                             ; preds = %bb.l, %bb.k, %bb.j
  %i.at = and i32 %i.ak, 64
  %.not53 = icmp eq i32 %i.at, 0
  %spec.select = and i1 %.not53, %4
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.thread
  %.1 = phi i1 [ %4, %.thread ], [ %spec.select, %bb.n ] ; 2 uses
  %i.au = load ptr, ptr %i.ah, align 8, !tbaa !117 ; 2 uses
  %.not49.1 = icmp eq ptr %i.au, null             ; 2 uses
  br i1 %.not49.1, label %bb.p, label %._crit_edge62

._crit_edge62:                                    ; preds = %bb.o
  %.phi.trans.insert63 = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  %.pre64 = load i32, ptr %.phi.trans.insert63, align 4, !tbaa !28
  %i.av = and i32 %.pre64, 64
  %.not53.1 = icmp eq i32 %i.av, 0
  %spec.select.1 = and i1 %.not53.1, %.1
  br i1 %spec.select.1, label %bb.q, label %bb.r

bb.p:                                             ; preds = %bb.o
  br i1 %.1, label %bb.q, label %bb.r

bb.q:                                             ; preds = %._crit_edge62, %bb.p
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !44
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 24
  tail call void (i32, ptr, ...) @zend_error_noreturn(i32 noundef 64, ptr noundef nonnull @.str.5, ptr noundef nonnull %i.ay, ptr noundef nonnull %i.az) #18
  unreachable

bb.r:                                             ; preds = %._crit_edge62, %bb.p
  %i.ba = load i32, ptr %i.c, align 4, !tbaa !111 ; 2 uses
  %i.bb = and i32 %i.ba, 512
  %.not44 = icmp ne i32 %i.bb, 0
  %i.bc = and i32 %i.ba, 7168
  %.not45 = icmp ne i32 %i.bc, 0
  %or.cond.not69 = and i1 %.not44, %.not45
  %brmerge = or i1 %.not49, %.not49.1
  %or.cond68 = and i1 %or.cond.not69, %brmerge
  br i1 %or.cond68, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %.str.6.mux = select i1 %.not49, ptr @.str.6, ptr @.str.7
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !44
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 24
  tail call void (i32, ptr, ...) @zend_error_noreturn(i32 noundef 64, ptr noundef nonnull @.str.8, ptr noundef nonnull %.str.6.mux, ptr noundef nonnull %i.bf, ptr noundef nonnull %i.bg) #18
  unreachable

bb.t:                                             ; preds = %bb.r, %bb.a
  ret void
}

; Function Attrs: noreturn
declare void @zend_error_noreturn(i32 noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: noreturn nounwind uwtable
define dso_local void @zend_hooked_property_variance_error_ex(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #7 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  %i.e = call i32 @zend_unmangle_property_name_ex(ptr noundef %2, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef null) #16 ; 0 uses
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !118
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  call void (i32, ptr, ...) @zend_error_noreturn(i32 noundef 64, ptr noundef nonnull @.str.9, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef %i.f) #18
  unreachable
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @zend_hooked_property_variance_error(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !114
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !117
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !28
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !190
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !110
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !44
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !120
  tail call void @zend_hooked_property_variance_error_ex(ptr noundef %i.g, ptr noundef %i.k, ptr noundef %i.m) #19
  unreachable
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 3) i32 @zend_verify_property_hook_variance(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(address) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !114, !nonnull !89, !noundef !89
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !117
  %i.e = icmp eq ptr %i.d, %1
  tail call void @llvm.assume(i1 %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !28   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.j = load i32, ptr %i.i, align 8, !tbaa !121  ; 2 uses
  %i.k = and i32 %i.j, 33554431
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = load i32, ptr %i.l, align 8, !tbaa !116  ; 2 uses
  %i.n = and i32 %i.m, 33554431
  %.not11 = icmp eq i32 %i.n, 0
  br i1 %.not11, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !110  ; 2 uses
  %i.r = load ptr, ptr %i.o, align 8
  %i.s = load ptr, ptr %i.h, align 8
  %i.t = tail call i32 @zend_perform_covariant_type_check(ptr noundef %i.q, ptr %i.r, i32 %i.m, ptr noundef %i.q, ptr %i.s, i32 %i.j)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ %i.t, %bb.c ], [ 2, %bb.a ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local void @zend_do_inheritance_ex(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 15 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !43   ; 5 uses
  %i.c = and i32 %i.b, 1
  %.not = icmp eq i32 %i.c, 0
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.e = load i32, ptr %i.d, align 4, !tbaa !43   ; 7 uses
  br i1 %.not, label %bb.d, label %bb.b, !prof !90

bb.b:                                             ; preds = %bb.a
  %i.f = and i32 %i.e, 1
  %.not506 = icmp eq i32 %i.f, 0
  br i1 %.not506, label %bb.c, label %bb.k, !prof !102

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !44
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !44
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  tail call void (i32, ptr, ...) @zend_error_noreturn(i32 noundef 64, ptr noundef nonnull @.str.10, ptr noundef nonnull %i.i, ptr noundef nonnull %i.l) #18
  unreachable

bb.d:                                             ; preds = %bb.a
  %i.m = and i32 %i.e, 268435491
  %.not500 = icmp eq i32 %i.m, 0
  br i1 %.not500, label %bb.k, label %bb.e, !prof !90

bb.e:                                             ; preds = %bb.d
  %i.n = and i32 %i.e, 268435456
  %.not501 = icmp eq i32 %i.n, 0
  br i1 %.not501, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !44
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !44
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  tail call void (i32, ptr, ...) @zend_error_noreturn(i32 noundef 64, ptr noundef nonnull @.str.11, ptr noundef nonnull %i.q, ptr noundef nonnull %i.t) #18
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.u = and i32 %i.e, 32
  %.not502 = icmp eq i32 %i.u, 0
  br i1 %.not502, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !44
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !44
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  tail call void (i32, ptr, ...) @zend_error_noreturn(i32 noundef 64, ptr noundef nonnull @.str.12, ptr noundef nonnull %i.x, ptr noundef nonnull %i.aa) #18
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.ab = and i32 %i.e, 3
  %or.cond = icmp eq i32 %i.ab, 0
  br i1 %or.cond, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = and i32 %i.e, 1
  %.not503 = icmp eq i32 %i.ac, 0
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !44
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = select i1 %.not503, ptr @.str.15, ptr @.str.14
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !44
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  tail call void (i32, ptr, ...) @zend_error_noreturn(i32 noundef 64, ptr noundef nonnull @.str.13, ptr noundef nonnull %i.af, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.aj) #18
  unreachable

bb.k:                                             ; preds = %bb.i, %bb.d, %bb.b
  %i.ak = and i32 %i.b, 65536                     ; 2 uses
  %i.al = and i32 %i.e, 65536                     ; 2 uses
  %.not507 = icmp eq i32 %i.ak, %i.al
  br i1 %.not507, label %bb.m, label %bb.l, !prof !90

bb.l:                                             ; preds = %bb.k
  %.not541 = icmp eq i32 %i.ak, 0
  %i.am = select i1 %.not541, ptr @.str.18, ptr @.str.17
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !44
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %.not542 = icmp eq i32 %i.al, 0
  %i.aq = select i1 %.not542, ptr @.str.20, ptr @.str.19
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !44
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  tail call void (i32, ptr, ...) @zend_error_noreturn(i32 noundef 64, ptr noundef nonnull @.str.16, ptr noundef nonnull %i.am, ptr noundef nonnull %i.ap, ptr noundef nonnull %i.aq, ptr noundef nonnull %i.at) #18
  unreachable
end_hunk_0
