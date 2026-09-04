Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jemalloc/original/prof_stack_range?download=true
inline.NumInlined: 3
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0

@.str = private unnamed_addr constant [22 x i8] c"/proc/%d/task/%d/maps\00", align 1

; Function Attrs: nounwind uwtable
define hidden i32 @je_prof_thread_stack_range(i64 noundef %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [4096 x i8], align 16             ; 10 uses
  %i.b = alloca ptr, align 8                      ; 7 uses
  %i.c = alloca [64 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  %i.d = tail call i32 @getpid() #7
  %i.e = tail call i32 @gettid() #7
  %i.f = call i64 (ptr, i64, ptr, ...) @je_malloc_snprintf(ptr noundef nonnull %i.c, i64 noundef 64, ptr noundef nonnull @.str, i32 noundef %i.d, i32 noundef %i.e) #7 ; 0 uses
  store i64 0, ptr %2, align 8, !tbaa !16
  store i64 0, ptr %1, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.g = ptrtoint ptr %i.a to i64
  br label %.outer

.outer:                                           ; preds = %bb.g, %bb.a
  %.058.i.ph = phi i32 [ %i.j, %bb.g ], [ -1, %bb.a ] ; 8 uses
  %.054.i.ph = phi i64 [ %i.n, %bb.g ], [ 0, %bb.a ]
  %.051.i.ph = phi ptr [ %i.a, %bb.g ], [ null, %bb.a ]
  %i.h = icmp slt i32 %.058.i.ph, 0
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %.outer
  %.054.i = phi i64 [ %.054.i.ph, %.outer ], [ %.054.i.be, %.backedge ] ; 7 uses
  %.051.i = phi ptr [ %.051.i.ph, %.outer ], [ %.051.i.be, %.backedge ] ; 6 uses
  br i1 %i.h, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.i = call i64 (i64, ...) @syscall(i64 noundef 2, ptr noundef nonnull %i.c, i32 noundef 0) #7
  %i.j = trunc i64 %i.i to i32                    ; 5 uses
  %i.k = icmp slt i32 %i.j, 0
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = tail call ptr @__errno_location() #8
  %i.m = load i32, ptr %i.l, align 4, !tbaa !17
  br label %prof_mapping_containing_addr.exit

bb.e:                                             ; preds = %bb.c
  %i.n = call i64 @je_malloc_read_fd(i32 noundef %i.j, ptr noundef nonnull %i.a, i64 noundef 4096) #7 ; 3 uses
  %i.o = icmp slt i64 %i.n, 0
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.p = tail call ptr @__errno_location() #8
  %i.q = load i32, ptr %i.p, align 4, !tbaa !17
  br label %.thread.i

bb.g:                                             ; preds = %bb.e
  %i.r = icmp eq i64 %i.n, 0
  br i1 %i.r, label %.thread.i, label %.outer

bb.h:                                             ; preds = %bb.b
  %i.s = icmp eq ptr %.051.i, null
  br i1 %i.s, label %bb.i, label %bb.n

bb.i:                                             ; preds = %bb.h
  %i.t = call i64 @je_malloc_read_fd(i32 noundef %.058.i.ph, ptr noundef nonnull %i.a, i64 noundef 4096) #7 ; 5 uses
  %i.u = icmp slt i64 %i.t, 0
  br i1 %i.u, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.v = tail call ptr @__errno_location() #8
  %i.w = load i32, ptr %i.v, align 4, !tbaa !17
  br label %.thread.i

bb.k:                                             ; preds = %bb.i
  %i.x = icmp eq i64 %i.t, 0
  br i1 %i.x, label %.thread.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.y = call ptr @memchr(ptr noundef nonnull %i.a, i32 noundef 10, i64 noundef %i.t) #9 ; 2 uses
  %.not80.i = icmp eq ptr %i.y, null
  br i1 %.not80.i, label %.backedge, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 1 ; 2 uses
  %i.aa = ptrtoint ptr %i.z to i64
  %.neg81.i = add i64 %i.t, %i.g
  %i.ab = sub i64 %.neg81.i, %i.aa
  br label %.backedge

bb.n:                                             ; preds = %bb.h
  %i.ac = icmp slt i64 %.054.i, 34
  br i1 %i.ac, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr nonnull align 1 %.051.i, i64 %.054.i, i1 false)
  %i.ad = getelementptr inbounds i8, ptr %i.a, i64 %.054.i
  %i.ae = sub i64 4096, %.054.i
  %i.af = call i64 @je_malloc_read_fd(i32 noundef %.058.i.ph, ptr noundef nonnull %i.ad, i64 noundef %i.ae) #7 ; 3 uses
  %i.ag = icmp slt i64 %i.af, 0
  br i1 %i.ag, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ah = tail call ptr @__errno_location() #8
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !17
  br label %.thread.i

bb.q:                                             ; preds = %bb.o
  %i.aj = icmp eq i64 %i.af, 0
  %i.ak = add nsw i64 %i.af, %.054.i
  br i1 %i.aj, label %.thread.i, label %.backedge

bb.r:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store ptr %.051.i, ptr %i.b, align 8, !tbaa !14
  %i.al = call fastcc i64 @strtoull_hex(ptr noundef nonnull %.051.i, ptr noundef nonnull %i.b) ; 2 uses
  %.not.i = icmp ult i64 %0, %i.al
  br i1 %.not.i, label %.thread89.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.am = load ptr, ptr %i.b, align 8, !tbaa !14
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 1 ; 2 uses
  store ptr %i.an, ptr %i.b, align 8, !tbaa !14
  %i.ao = call fastcc i64 @strtoull_hex(ptr noundef nonnull %i.an, ptr noundef null) ; 2 uses
  %.not78.i = icmp ult i64 %0, %i.ao
  br i1 %.not78.i, label %bb.t, label %.thread89.i

.thread89.i:                                      ; preds = %bb.s, %bb.r
  %i.ap = call ptr @memchr(ptr noundef nonnull %.051.i, i32 noundef 10, i64 noundef %.054.i) #9 ; 2 uses
  %.not79.i = icmp eq ptr %i.ap, null             ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 1 ; 2 uses
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = ptrtoint ptr %.051.i to i64
  %.neg.i = sub i64 %i.as, %i.ar
  %i.at = select i1 %.not79.i, i64 0, i64 %.neg.i
  %.256.i = add i64 %i.at, %.054.i
  %.152.i = select i1 %.not79.i, ptr null, ptr %i.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  br label %.backedge

.backedge:                                        ; preds = %.thread89.i, %bb.q, %bb.m, %bb.l
  %.054.i.be = phi i64 [ %i.ak, %bb.q ], [ %.256.i, %.thread89.i ], [ %i.ab, %bb.m ], [ %i.t, %bb.l ]
  %.051.i.be = phi ptr [ %i.a, %bb.q ], [ %.152.i, %.thread89.i ], [ %i.z, %bb.m ], [ null, %bb.l ]
  br label %bb.b

bb.t:                                             ; preds = %bb.s
  store i64 %i.al, ptr %1, align 8, !tbaa !16
  store i64 %i.ao, ptr %2, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  br label %.thread.i

.thread.i:                                        ; preds = %bb.q, %bb.k, %bb.g, %bb.t, %bb.p, %bb.j, %bb.f
  %.6.i = phi i32 [ %i.q, %bb.f ], [ 0, %bb.t ], [ %i.w, %bb.j ], [ %i.ai, %bb.p ], [ 2, %bb.g ], [ 2, %bb.k ], [ 2, %bb.q ]
  %.260.i = phi i32 [ %i.j, %bb.f ], [ %.058.i.ph, %bb.t ], [ %.058.i.ph, %bb.j ], [ %.058.i.ph, %bb.p ], [ %.058.i.ph, %bb.k ], [ %.058.i.ph, %bb.q ], [ %i.j, %bb.g ]
  %i.au = call i64 (i64, ...) @syscall(i64 noundef 3, i32 noundef range(i32 0, -2147483648) %.260.i) #7 ; 0 uses
  br label %prof_mapping_containing_addr.exit

prof_mapping_containing_addr.exit:                ; preds = %bb.d, %.thread.i
  %.066.i = phi i32 [ %i.m, %bb.d ], [ %.6.i, %.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  ret i32 %.066.i
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i64 @je_malloc_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @getpid() local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @gettid() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #4

declare i64 @je_malloc_read_fd(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc i64 @strtoull_hex(ptr noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1) unnamed_addr #6 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !18      ; 3 uses
  %i.b = sext i8 %i.a to i64
  %i.c = add i8 %i.a, -48
  %or.cond = icmp ult i8 %i.c, 10
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = add i8 %i.a, -97
  %or.cond5 = icmp ult i8 %i.d, 6
  br i1 %or.cond5, label %bb.c, label %bb.bk

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sink = phi i64 [ -48, %bb.a ], [ -87, %bb.b ]
  %i.e = add nsw i64 %.sink, %i.b                 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.g = load i8, ptr %i.f, align 1, !tbaa !18    ; 3 uses
  %i.h = sext i8 %i.g to i32                      ; 2 uses
  %i.i = add i8 %i.g, -48
  %or.cond.1 = icmp ult i8 %i.i, 10
  br i1 %or.cond.1, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = add i8 %i.g, -97
  %or.cond5.1 = icmp ult i8 %i.j, 6
  br i1 %or.cond5.1, label %bb.e, label %bb.bk

bb.e:                                             ; preds = %bb.d
  %i.k = shl nuw nsw i64 %i.e, 4
  %i.l = add nsw i32 %i.h, -87
  %i.m = zext nneg i32 %i.l to i64
  %i.n = add nuw nsw i64 %i.k, %i.m
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.o = shl nuw nsw i64 %i.e, 4
  %i.p = add nsw i32 %i.h, -48
  %i.q = zext nneg i32 %i.p to i64
  %i.r = or disjoint i64 %i.o, %i.q
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.2.ph.1 = phi i64 [ %i.n, %bb.e ], [ %i.r, %bb.f ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.t = load i8, ptr %i.s, align 1, !tbaa !18    ; 3 uses
  %i.u = sext i8 %i.t to i32                      ; 2 uses
  %i.v = add i8 %i.t, -48
  %or.cond.2 = icmp ult i8 %i.v, 10
  br i1 %or.cond.2, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = add i8 %i.t, -97
  %or.cond5.2 = icmp ult i8 %i.w, 6
  br i1 %or.cond5.2, label %bb.i, label %bb.bk

bb.i:                                             ; preds = %bb.h
  %i.x = shl nuw nsw i64 %.2.ph.1, 4
  %i.y = add nsw i32 %i.u, -87
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = add nuw nsw i64 %i.x, %i.z
  br label %bb.k

bb.j:                                             ; preds = %bb.g
  %i.ab = shl nuw nsw i64 %.2.ph.1, 4
  %i.ac = add nsw i32 %i.u, -48
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = or disjoint i64 %i.ab, %i.ad
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.2.ph.2 = phi i64 [ %i.aa, %bb.i ], [ %i.ae, %bb.j ] ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !18  ; 3 uses
  %i.ah = sext i8 %i.ag to i32                    ; 2 uses
  %i.ai = add i8 %i.ag, -48
  %or.cond.3 = icmp ult i8 %i.ai, 10
  br i1 %or.cond.3, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aj = add i8 %i.ag, -97
  %or.cond5.3 = icmp ult i8 %i.aj, 6
  br i1 %or.cond5.3, label %bb.m, label %bb.bk

bb.m:                                             ; preds = %bb.l
  %i.ak = shl nuw nsw i64 %.2.ph.2, 4
  %i.al = add nsw i32 %i.ah, -87
  %i.am = zext nneg i32 %i.al to i64
  %i.an = add nuw nsw i64 %i.ak, %i.am
  br label %bb.o

bb.n:                                             ; preds = %bb.k
  %i.ao = shl nuw nsw i64 %.2.ph.2, 4
  %i.ap = add nsw i32 %i.ah, -48
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = or disjoint i64 %i.ao, %i.aq
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.2.ph.3 = phi i64 [ %i.an, %bb.m ], [ %i.ar, %bb.n ] ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.at = load i8, ptr %i.as, align 1, !tbaa !18  ; 3 uses
  %i.au = sext i8 %i.at to i32                    ; 2 uses
  %i.av = add i8 %i.at, -48
  %or.cond.4 = icmp ult i8 %i.av, 10
  br i1 %or.cond.4, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aw = add i8 %i.at, -97
  %or.cond5.4 = icmp ult i8 %i.aw, 6
  br i1 %or.cond5.4, label %bb.q, label %bb.bk

bb.q:                                             ; preds = %bb.p
  %i.ax = shl nuw nsw i64 %.2.ph.3, 4
  %i.ay = add nsw i32 %i.au, -87
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = add nuw nsw i64 %i.ax, %i.az
  br label %bb.s

bb.r:                                             ; preds = %bb.o
  %i.bb = shl nuw nsw i64 %.2.ph.3, 4
  %i.bc = add nsw i32 %i.au, -48
  %i.bd = zext nneg i32 %i.bc to i64
  %i.be = or disjoint i64 %i.bb, %i.bd
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.2.ph.4 = phi i64 [ %i.ba, %bb.q ], [ %i.be, %bb.r ] ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !18  ; 3 uses
  %i.bh = sext i8 %i.bg to i32                    ; 2 uses
  %i.bi = add i8 %i.bg, -48
  %or.cond.5 = icmp ult i8 %i.bi, 10
  br i1 %or.cond.5, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bj = add i8 %i.bg, -97
  %or.cond5.5 = icmp ult i8 %i.bj, 6
  br i1 %or.cond5.5, label %bb.u, label %bb.bk

bb.u:                                             ; preds = %bb.t
  %i.bk = shl nuw nsw i64 %.2.ph.4, 4
  %i.bl = add nsw i32 %i.bh, -87
  %i.bm = zext nneg i32 %i.bl to i64
  %i.bn = add nuw nsw i64 %i.bk, %i.bm
  br label %bb.w

bb.v:                                             ; preds = %bb.s
  %i.bo = shl nuw nsw i64 %.2.ph.4, 4
  %i.bp = add nsw i32 %i.bh, -48
  %i.bq = zext nneg i32 %i.bp to i64
  %i.br = or disjoint i64 %i.bo, %i.bq
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.2.ph.5 = phi i64 [ %i.bn, %bb.u ], [ %i.br, %bb.v ] ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !18  ; 3 uses
  %i.bu = sext i8 %i.bt to i32                    ; 2 uses
  %i.bv = add i8 %i.bt, -48
  %or.cond.6 = icmp ult i8 %i.bv, 10
  br i1 %or.cond.6, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bw = add i8 %i.bt, -97
  %or.cond5.6 = icmp ult i8 %i.bw, 6
  br i1 %or.cond5.6, label %bb.y, label %bb.bk

bb.y:                                             ; preds = %bb.x
  %i.bx = shl nuw nsw i64 %.2.ph.5, 4
  %i.by = add nsw i32 %i.bu, -87
  %i.bz = zext nneg i32 %i.by to i64
  %i.ca = add nuw nsw i64 %i.bx, %i.bz
  br label %bb.aa

bb.z:                                             ; preds = %bb.w
  %i.cb = shl nuw nsw i64 %.2.ph.5, 4
  %i.cc = add nsw i32 %i.bu, -48
  %i.cd = zext nneg i32 %i.cc to i64
  %i.ce = or disjoint i64 %i.cb, %i.cd
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.2.ph.6 = phi i64 [ %i.ca, %bb.y ], [ %i.ce, %bb.z ] ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !18  ; 3 uses
  %i.ch = sext i8 %i.cg to i32                    ; 2 uses
  %i.ci = add i8 %i.cg, -48
  %or.cond.7 = icmp ult i8 %i.ci, 10
  br i1 %or.cond.7, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cj = add i8 %i.cg, -97
  %or.cond5.7 = icmp ult i8 %i.cj, 6
  br i1 %or.cond5.7, label %bb.ac, label %bb.bk

bb.ac:                                            ; preds = %bb.ab
  %i.ck = shl nuw nsw i64 %.2.ph.6, 4
  %i.cl = add nsw i32 %i.ch, -87
  %i.cm = zext nneg i32 %i.cl to i64
  %i.cn = add nuw nsw i64 %i.ck, %i.cm
  br label %bb.ae

bb.ad:                                            ; preds = %bb.aa
  %i.co = shl nuw nsw i64 %.2.ph.6, 4
  %i.cp = add nsw i32 %i.ch, -48
  %i.cq = zext nneg i32 %i.cp to i64
  %i.cr = or disjoint i64 %i.co, %i.cq
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.2.ph.7 = phi i64 [ %i.cn, %bb.ac ], [ %i.cr, %bb.ad ] ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !18  ; 3 uses
  %i.cu = sext i8 %i.ct to i32                    ; 2 uses
  %i.cv = add i8 %i.ct, -48
  %or.cond.8 = icmp ult i8 %i.cv, 10
  br i1 %or.cond.8, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cw = add i8 %i.ct, -97
  %or.cond5.8 = icmp ult i8 %i.cw, 6
  br i1 %or.cond5.8, label %bb.ag, label %bb.bk

bb.ag:                                            ; preds = %bb.af
  %i.cx = shl nuw nsw i64 %.2.ph.7, 4
  %i.cy = add nsw i32 %i.cu, -87
  %i.cz = zext nneg i32 %i.cy to i64
  %i.da = add nuw nsw i64 %i.cx, %i.cz
  br label %bb.ai

bb.ah:                                            ; preds = %bb.ae
  %i.db = shl nuw nsw i64 %.2.ph.7, 4
  %i.dc = add nsw i32 %i.cu, -48
  %i.dd = zext nneg i32 %i.dc to i64
  %i.de = or disjoint i64 %i.db, %i.dd
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.2.ph.8 = phi i64 [ %i.da, %bb.ag ], [ %i.de, %bb.ah ] ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !18  ; 3 uses
  %i.dh = sext i8 %i.dg to i32                    ; 2 uses
  %i.di = add i8 %i.dg, -48
  %or.cond.9 = icmp ult i8 %i.di, 10
  br i1 %or.cond.9, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dj = add i8 %i.dg, -97
  %or.cond5.9 = icmp ult i8 %i.dj, 6
  br i1 %or.cond5.9, label %bb.ak, label %bb.bk

bb.ak:                                            ; preds = %bb.aj
  %i.dk = shl nuw nsw i64 %.2.ph.8, 4
  %i.dl = add nsw i32 %i.dh, -87
  %i.dm = zext nneg i32 %i.dl to i64
  %i.dn = add nuw nsw i64 %i.dk, %i.dm
  br label %bb.am

bb.al:                                            ; preds = %bb.ai
  %i.do = shl nuw nsw i64 %.2.ph.8, 4
  %i.dp = add nsw i32 %i.dh, -48
  %i.dq = zext nneg i32 %i.dp to i64
  %i.dr = or disjoint i64 %i.do, %i.dq
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.2.ph.9 = phi i64 [ %i.dn, %bb.ak ], [ %i.dr, %bb.al ] ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !18  ; 3 uses
  %i.du = sext i8 %i.dt to i32                    ; 2 uses
  %i.dv = add i8 %i.dt, -48
  %or.cond.10 = icmp ult i8 %i.dv, 10
  br i1 %or.cond.10, label %bb.ap, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.dw = add i8 %i.dt, -97
  %or.cond5.10 = icmp ult i8 %i.dw, 6
  br i1 %or.cond5.10, label %bb.ao, label %bb.bk

bb.ao:                                            ; preds = %bb.an
  %i.dx = shl nuw nsw i64 %.2.ph.9, 4
  %i.dy = add nsw i32 %i.du, -87
  %i.dz = zext nneg i32 %i.dy to i64
  %i.ea = add nuw nsw i64 %i.dx, %i.dz
  br label %bb.aq

bb.ap:                                            ; preds = %bb.am
  %i.eb = shl nuw nsw i64 %.2.ph.9, 4
  %i.ec = add nsw i32 %i.du, -48
  %i.ed = zext nneg i32 %i.ec to i64
  %i.ee = or disjoint i64 %i.eb, %i.ed
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.2.ph.10 = phi i64 [ %i.ea, %bb.ao ], [ %i.ee, %bb.ap ] ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !18  ; 3 uses
  %i.eh = sext i8 %i.eg to i32                    ; 2 uses
  %i.ei = add i8 %i.eg, -48
  %or.cond.11 = icmp ult i8 %i.ei, 10
  br i1 %or.cond.11, label %bb.at, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ej = add i8 %i.eg, -97
  %or.cond5.11 = icmp ult i8 %i.ej, 6
  br i1 %or.cond5.11, label %bb.as, label %bb.bk

bb.as:                                            ; preds = %bb.ar
  %i.ek = shl nuw nsw i64 %.2.ph.10, 4
  %i.el = add nsw i32 %i.eh, -87
  %i.em = zext nneg i32 %i.el to i64
  %i.en = add nuw nsw i64 %i.ek, %i.em
  br label %bb.au

bb.at:                                            ; preds = %bb.aq
  %i.eo = shl nuw nsw i64 %.2.ph.10, 4
  %i.ep = add nsw i32 %i.eh, -48
  %i.eq = zext nneg i32 %i.ep to i64
  %i.er = or disjoint i64 %i.eo, %i.eq
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %.2.ph.11 = phi i64 [ %i.en, %bb.as ], [ %i.er, %bb.at ] ; 3 uses
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.et = load i8, ptr %i.es, align 1, !tbaa !18  ; 3 uses
  %i.eu = sext i8 %i.et to i32                    ; 2 uses
  %i.ev = add i8 %i.et, -48
  %or.cond.12 = icmp ult i8 %i.ev, 10
  br i1 %or.cond.12, label %bb.ax, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ew = add i8 %i.et, -97
  %or.cond5.12 = icmp ult i8 %i.ew, 6
  br i1 %or.cond5.12, label %bb.aw, label %bb.bk

bb.aw:                                            ; preds = %bb.av
  %i.ex = shl nuw nsw i64 %.2.ph.11, 4
  %i.ey = add nsw i32 %i.eu, -87
  %i.ez = zext nneg i32 %i.ey to i64
  %i.fa = add nuw nsw i64 %i.ex, %i.ez
  br label %bb.ay

bb.ax:                                            ; preds = %bb.au
  %i.fb = shl nuw nsw i64 %.2.ph.11, 4
  %i.fc = add nsw i32 %i.eu, -48
  %i.fd = zext nneg i32 %i.fc to i64
  %i.fe = or disjoint i64 %i.fb, %i.fd
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %.2.ph.12 = phi i64 [ %i.fa, %bb.aw ], [ %i.fe, %bb.ax ] ; 3 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 13
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !18  ; 3 uses
  %i.fh = sext i8 %i.fg to i32                    ; 2 uses
  %i.fi = add i8 %i.fg, -48
  %or.cond.13 = icmp ult i8 %i.fi, 10
  br i1 %or.cond.13, label %bb.bb, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.fj = add i8 %i.fg, -97
  %or.cond5.13 = icmp ult i8 %i.fj, 6
  br i1 %or.cond5.13, label %bb.ba, label %bb.bk

bb.ba:                                            ; preds = %bb.az
  %i.fk = shl nuw nsw i64 %.2.ph.12, 4
  %i.fl = add nsw i32 %i.fh, -87
  %i.fm = zext nneg i32 %i.fl to i64
  %i.fn = add nuw nsw i64 %i.fk, %i.fm
  br label %bb.bc

bb.bb:                                            ; preds = %bb.ay
  %i.fo = shl nuw nsw i64 %.2.ph.12, 4
  %i.fp = add nsw i32 %i.fh, -48
  %i.fq = zext nneg i32 %i.fp to i64
  %i.fr = or disjoint i64 %i.fo, %i.fq
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %.2.ph.13 = phi i64 [ %i.fn, %bb.ba ], [ %i.fr, %bb.bb ] ; 3 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !18  ; 3 uses
  %i.fu = sext i8 %i.ft to i32                    ; 2 uses
  %i.fv = add i8 %i.ft, -48
  %or.cond.14 = icmp ult i8 %i.fv, 10
  br i1 %or.cond.14, label %bb.bf, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.fw = add i8 %i.ft, -97
  %or.cond5.14 = icmp ult i8 %i.fw, 6
  br i1 %or.cond5.14, label %bb.be, label %bb.bk

bb.be:                                            ; preds = %bb.bd
  %i.fx = shl nuw nsw i64 %.2.ph.13, 4
  %i.fy = add nsw i32 %i.fu, -87
  %i.fz = zext nneg i32 %i.fy to i64
  %i.ga = add nuw nsw i64 %i.fx, %i.fz
  br label %bb.bg

bb.bf:                                            ; preds = %bb.bc
  %i.gb = shl nuw nsw i64 %.2.ph.13, 4
  %i.gc = add nsw i32 %i.fu, -48
  %i.gd = zext nneg i32 %i.gc to i64
  %i.ge = or disjoint i64 %i.gb, %i.gd
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %.2.ph.14 = phi i64 [ %i.ga, %bb.be ], [ %i.ge, %bb.bf ] ; 3 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 15
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !18  ; 3 uses
  %i.gh = sext i8 %i.gg to i32                    ; 2 uses
  %i.gi = add i8 %i.gg, -48
  %or.cond.15 = icmp ult i8 %i.gi, 10
  br i1 %or.cond.15, label %bb.bj, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.gj = add i8 %i.gg, -97
  %or.cond5.15 = icmp ult i8 %i.gj, 6
  br i1 %or.cond5.15, label %bb.bi, label %bb.bk

bb.bi:                                            ; preds = %bb.bh
  %i.gk = shl nuw i64 %.2.ph.14, 4
  %i.gl = add nsw i32 %i.gh, -87
  %i.gm = zext nneg i32 %i.gl to i64
  %i.gn = add nuw i64 %i.gk, %i.gm
  br label %bb.bk

bb.bj:                                            ; preds = %bb.bg
  %i.go = shl nuw i64 %.2.ph.14, 4
  %i.gp = add nsw i32 %i.gh, -48
  %i.gq = zext nneg i32 %i.gp to i64
  %i.gr = or disjoint i64 %i.go, %i.gq
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bi, %bb.bj, %bb.bh, %bb.bd, %bb.az, %bb.av, %bb.ar, %bb.an, %bb.aj, %bb.af, %bb.ab, %bb.x, %bb.t, %bb.p, %bb.l, %bb.h, %bb.d, %bb.b
  %.023.lcssa = phi i64 [ 0, %bb.b ], [ %.2.ph.7, %bb.af ], [ %i.e, %bb.d ], [ %.2.ph.14, %bb.bh ], [ %.2.ph.1, %bb.h ], [ %.2.ph.9, %bb.an ], [ %.2.ph.2, %bb.l ], [ %.2.ph.13, %bb.bd ], [ %.2.ph.3, %bb.p ], [ %.2.ph.8, %bb.aj ], [ %.2.ph.4, %bb.t ], [ %.2.ph.12, %bb.az ], [ %.2.ph.5, %bb.x ], [ %.2.ph.10, %bb.ar ], [ %.2.ph.6, %bb.ab ], [ %.2.ph.11, %bb.av ], [ %i.gn, %bb.bi ], [ %i.gr, %bb.bj ]
  %.022.lcssa = phi i64 [ 0, %bb.b ], [ 8, %bb.af ], [ 1, %bb.d ], [ 15, %bb.bh ], [ 2, %bb.h ], [ 10, %bb.an ], [ 3, %bb.l ], [ 14, %bb.bd ], [ 4, %bb.p ], [ 9, %bb.aj ], [ 5, %bb.t ], [ 13, %bb.az ], [ 6, %bb.x ], [ 11, %bb.ar ], [ 7, %bb.ab ], [ 12, %bb.av ], [ 16, %bb.bi ], [ 16, %bb.bj ]
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 %.022.lcssa
  store ptr %i.gs, ptr %1, align 8, !tbaa !14
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  ret i64 %.023.lcssa
}

; Function Attrs: nounwind
declare i64 @syscall(i64 noundef, ...) local_unnamed_addr #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { nounwind willreturn memory(none) }
attributes #9 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"any pointer", !8, i64 0}
!13 = !{!"p1 omnipotent char", !12, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!"long", !8, i64 0}
!16 = !{!15, !15, i64 0}
!17 = !{!9, !9, i64 0}
!18 = !{!8, !8, i64 0}
end_hunk_0
