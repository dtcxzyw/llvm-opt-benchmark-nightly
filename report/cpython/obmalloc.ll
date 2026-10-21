Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/obmalloc?download=true
inline.NumInlined: 1359
inline.NumDeleted: 295
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 45
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@mi_calloc_aligned_at:bb.a
  %i.ab = add i32 %i.aa, 1
  store i32 %i.ab, ptr %i.z, align 8, !tbaa !62
  %i.ac = load atomic i64, ptr %i.t monotonic, align 8
  %i.ad = inttoptr i64 %i.ac to ptr
  store ptr %i.ad, ptr %i.s, align 8, !tbaa !60
  %i.ae = getelementptr i8, ptr %i.r, i64 15
  %i.af = load i8, ptr %i.ae, align 1
  %i.ag = and i8 %i.af, 1
  %.not.i.i.i.i = icmp eq i8 %i.ag, 0
  br i1 %.not.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store atomic i64 0, ptr %i.t seq_cst, align 8, !tbaa !64
  br label %mi_heap_calloc_aligned_at.exit

bb.i:                                             ; preds = %bb.g
  %i.ah = getelementptr i8, ptr %i.r, i64 28
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !65
  %i.aj = zext i32 %i.ai to i64
  call void @llvm.assume(i1 true) [ "align"(ptr %i.t, i64 8) ]
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.t, i8 0, i64 %i.aj, i1 false)
  br label %mi_heap_calloc_aligned_at.exit

_mi_page_malloc.exit.i.i.i:                       ; preds = %bb.f, %bb.e
  %i.ak = tail call fastcc ptr @mi_heap_malloc_zero_aligned_at_fallback(ptr noundef %i.b, i64 noundef %storemerge.i.ph.i, i64 noundef %2, i64 noundef %3, i1 noundef zeroext true)
  br label %mi_heap_calloc_aligned_at.exit

mi_heap_calloc_aligned_at.exit:                   ; preds = %bb.b, %bb.c, %bb.d, %bb.h, %bb.i, %_mi_page_malloc.exit.i.i.i
  %.0.i = phi ptr [ null, %bb.b ], [ null, %bb.c ], [ null, %bb.d ], [ %i.ak, %_mi_page_malloc.exit.i.i.i ], [ %i.t, %bb.i ], [ %i.t, %bb.h ]
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define hidden noalias ptr @mi_calloc_aligned(i64 noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !95   ; 2 uses
  %.not.i.i = icmp eq i64 %0, 1
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 range(i64 2, 1) %0, i64 %1) ; 2 uses
  %i.d = extractvalue { i64, i1 } %i.c, 1
  %i.e = extractvalue { i64, i1 } %i.c, 0
  br i1 %i.d, label %mi_heap_calloc_aligned.exit, label %bb.c, !prof !61

bb.c:                                             ; preds = %bb.b, %bb.a
  %storemerge.i.ph.i.i = phi i64 [ %1, %bb.a ], [ %i.e, %bb.b ] ; 5 uses
  %i.f = icmp eq i64 %2, 0
  br i1 %i.f, label %mi_heap_calloc_aligned.exit, label %bb.d, !prof !61

bb.d:                                             ; preds = %bb.c
  %i.g = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %2)
  %i.h = icmp samesign ugt i64 %i.g, 1
  %i.i = icmp slt i64 %storemerge.i.ph.i.i, 0
  %or.cond.i.i.i.i = or i1 %i.h, %i.i
  br i1 %or.cond.i.i.i.i, label %mi_heap_calloc_aligned.exit, label %bb.e, !prof !119

bb.e:                                             ; preds = %bb.d
  %i.j = icmp samesign ult i64 %storemerge.i.ph.i.i, 1025
  %i.k = icmp ule i64 %2, %storemerge.i.ph.i.i
  %i.l = and i1 %i.j, %i.k
  br i1 %i.l, label %bb.f, label %_mi_page_malloc.exit.i.i.i.i, !prof !96

bb.f:                                             ; preds = %bb.e
  %i.m = add nsw i64 %2, -1
  %i.n = add nuw nsw i64 %storemerge.i.ph.i.i, 7
  %i.o = lshr i64 %i.n, 3
  %i.p = getelementptr i8, ptr %i.b, i64 8
  %i.q = getelementptr [8 x i8], ptr %i.p, i64 %i.o
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !94   ; 4 uses
  %i.s = getelementptr i8, ptr %i.r, i64 16       ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !60   ; 8 uses
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = and i64 %i.m, %i.u
  %i.w = icmp ne i64 %i.v, 0
  %i.x = icmp eq ptr %i.t, null
  %.not31.i.i.i.i = or i1 %i.x, %i.w
  br i1 %.not31.i.i.i.i, label %_mi_page_malloc.exit.i.i.i.i, label %bb.g, !prof !61

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr i8, ptr %i.r, i64 24       ; 2 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !62
  %i.aa = add i32 %i.z, 1
  store i32 %i.aa, ptr %i.y, align 8, !tbaa !62
  %i.ab = load atomic i64, ptr %i.t monotonic, align 8
  %i.ac = inttoptr i64 %i.ab to ptr
  store ptr %i.ac, ptr %i.s, align 8, !tbaa !60
  %i.ad = getelementptr i8, ptr %i.r, i64 15
  %i.ae = load i8, ptr %i.ad, align 1
  %i.af = and i8 %i.ae, 1
  %.not.i.i.i.i.i = icmp eq i8 %i.af, 0
  br i1 %.not.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store atomic i64 0, ptr %i.t seq_cst, align 8, !tbaa !64
  br label %mi_heap_calloc_aligned.exit

bb.i:                                             ; preds = %bb.g
  %i.ag = getelementptr i8, ptr %i.r, i64 28
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !65
  %i.ai = zext i32 %i.ah to i64
  call void @llvm.assume(i1 true) [ "align"(ptr %i.t, i64 8) ]
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.t, i8 0, i64 %i.ai, i1 false)
  br label %mi_heap_calloc_aligned.exit

_mi_page_malloc.exit.i.i.i.i:                     ; preds = %bb.f, %bb.e
  %i.aj = tail call fastcc ptr @mi_heap_malloc_zero_aligned_at_fallback(ptr noundef %i.b, i64 noundef %storemerge.i.ph.i.i, i64 noundef %2, i64 noundef 0, i1 noundef zeroext true)
  br label %mi_heap_calloc_aligned.exit

mi_heap_calloc_aligned.exit:                      ; preds = %bb.b, %bb.c, %bb.d, %bb.h, %bb.i, %_mi_page_malloc.exit.i.i.i.i
  %.0.i.i = phi ptr [ null, %bb.b ], [ null, %bb.c ], [ null, %bb.d ], [ %i.aj, %_mi_page_malloc.exit.i.i.i.i ], [ %i.t, %bb.i ], [ %i.t, %bb.h ]
  ret ptr %.0.i.i
}

; Function Attrs: nounwind uwtable
define hidden ptr @mi_heap_realloc_aligned_at(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call fastcc ptr @mi_heap_realloc_zero_aligned_at(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i1 noundef zeroext false)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @mi_heap_realloc_zero_aligned_at(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i1 noundef zeroext %5) unnamed_addr #2 {
bb.a:
  %i.a = icmp ult i64 %3, 9
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @_mi_heap_realloc_zero(ptr noundef %0, ptr noundef %1, i64 noundef %2, i1 noundef zeroext %5)
  br label %mi_heap_malloc_zero_aligned_at.exit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.d = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %3)
  %i.e = icmp samesign ugt i64 %i.d, 1
  %i.f = icmp slt i64 %2, 0
  %or.cond.i = or i1 %i.f, %i.e
  br i1 %or.cond.i, label %mi_heap_malloc_zero_aligned_at.exit, label %bb.e, !prof !119

bb.e:                                             ; preds = %bb.d
  %i.g = icmp samesign ult i64 %2, 1025
  %i.h = icmp ule i64 %3, %2
  %i.i = and i1 %i.g, %i.h
  br i1 %i.i, label %bb.f, label %_mi_page_malloc.exit.i, !prof !96

bb.f:                                             ; preds = %bb.e
  %i.j = add nsw i64 %3, -1
  %i.k = add nuw nsw i64 %2, 7
  %i.l = lshr i64 %i.k, 3
  %i.m = getelementptr i8, ptr %0, i64 8
  %i.n = getelementptr [8 x i8], ptr %i.m, i64 %i.l
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !94   ; 4 uses
  %i.p = getelementptr i8, ptr %i.o, i64 16       ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !60   ; 9 uses
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = add i64 %4, %i.r
  %i.t = and i64 %i.s, %i.j
  %i.u = icmp ne i64 %i.t, 0
  %i.v = icmp eq ptr %i.q, null
  %.not31.i = or i1 %i.v, %i.u
  br i1 %.not31.i, label %_mi_page_malloc.exit.i, label %bb.g, !prof !61

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr i8, ptr %i.o, i64 24       ; 2 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !62
  %i.y = add i32 %i.x, 1
  store i32 %i.y, ptr %i.w, align 8, !tbaa !62
  %i.z = load atomic i64, ptr %i.q monotonic, align 8
  %i.aa = inttoptr i64 %i.z to ptr
  store ptr %i.aa, ptr %i.p, align 8, !tbaa !60
  br i1 %5, label %bb.h, label %mi_heap_malloc_zero_aligned_at.exit, !prof !61

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr i8, ptr %i.o, i64 15
  %i.ac = load i8, ptr %i.ab, align 1
  %i.ad = and i8 %i.ac, 1
  %.not.i.i = icmp eq i8 %i.ad, 0
  br i1 %.not.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store atomic i64 0, ptr %i.q seq_cst, align 8, !tbaa !64
  br label %mi_heap_malloc_zero_aligned_at.exit

bb.j:                                             ; preds = %bb.h
  %i.ae = getelementptr i8, ptr %i.o, i64 28
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !65
  %i.ag = zext i32 %i.af to i64
  call void @llvm.assume(i1 true) [ "align"(ptr %i.q, i64 8) ]
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.q, i8 0, i64 %i.ag, i1 false)
  br label %mi_heap_malloc_zero_aligned_at.exit

_mi_page_malloc.exit.i:                           ; preds = %bb.f, %bb.e
  %i.ah = tail call fastcc ptr @mi_heap_malloc_zero_aligned_at_fallback(ptr noundef %0, i64 noundef %2, i64 noundef %3, i64 noundef %4, i1 noundef zeroext %5)
  br label %mi_heap_malloc_zero_aligned_at.exit

bb.k:                                             ; preds = %bb.c
  %i.ai = ptrtoint ptr %1 to i64                  ; 5 uses
  %i.aj = add i64 %i.ai, -1
  %i.ak = and i64 %i.aj, -33554432                ; 2 uses
  %i.al = inttoptr i64 %i.ak to ptr               ; 2 uses
  %i.am = sub i64 %i.ai, %i.ak
  %i.an = lshr i64 %i.am, 16
  %i.ao = getelementptr i8, ptr %i.al, i64 264
  %i.ap = getelementptr [80 x i8], ptr %i.ao, i64 %i.an ; 2 uses
  %i.aq = getelementptr i8, ptr %i.ap, i64 4
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !100
  %i.as = zext i32 %i.ar to i64
  %i.at = sub nsw i64 0, %i.as
  %i.au = getelementptr i8, ptr %i.ap, i64 %i.at  ; 4 uses
  %i.av = getelementptr i8, ptr %i.au, i64 14
  %.val.i.i = load i8, ptr %i.av, align 2
  %i.aw = and i8 %.val.i.i, 2
  %.not.i.i52 = icmp eq i8 %i.aw, 0
  br i1 %.not.i.i52, label %bb.l, label %bb.n, !prof !96

bb.l:                                             ; preds = %bb.k
  %i.ax = getelementptr i8, ptr %i.au, i64 28
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !65 ; 2 uses
  %i.az = icmp sgt i32 %i.ay, -1
  br i1 %i.az, label %bb.m, label %_mi_segment_page_start.exit.i.i.i.i.i, !prof !96

bb.m:                                             ; preds = %bb.l
  %i.ba = zext nneg i32 %i.ay to i64
  br label %mi_usable_size.exit

_mi_segment_page_start.exit.i.i.i.i.i:            ; preds = %bb.l
  %i.bb = load i32, ptr %i.au, align 8, !tbaa !93
  %i.bc = zext i32 %i.bb to i64
  %i.bd = shl nuw nsw i64 %i.bc, 16
  br label %mi_usable_size.exit

bb.n:                                             ; preds = %bb.k
  %i.be = tail call fastcc i64 @mi_page_usable_aligned_size_of(ptr noundef nonnull %i.al, ptr noundef %i.au, ptr noundef nonnull %1)
  br label %mi_usable_size.exit

mi_usable_size.exit:                              ; preds = %bb.m, %_mi_segment_page_start.exit.i.i.i.i.i, %bb.n
  %.1.i.i = phi i64 [ %i.bd, %_mi_segment_page_start.exit.i.i.i.i.i ], [ %i.be, %bb.n ], [ %i.ba, %bb.m ] ; 5 uses
  %.not = icmp ugt i64 %2, %.1.i.i                ; 2 uses
  br i1 %.not, label %bb.q, label %bb.o

bb.o:                                             ; preds = %mi_usable_size.exit
  %i.bf = lshr i64 %.1.i.i, 1
  %i.bg = sub nuw i64 %.1.i.i, %i.bf
  %.not50 = icmp ult i64 %2, %i.bg
  br i1 %.not50, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bh = add i64 %4, %i.ai
  %i.bi = urem i64 %i.bh, %3
  %i.bj = icmp eq i64 %i.bi, 0
  br i1 %i.bj, label %mi_heap_malloc_zero_aligned_at.exit, label %bb.q

bb.q:                                             ; preds = %mi_usable_size.exit, %bb.o, %bb.p
  %i.bk = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %3)
  %i.bl = icmp samesign ugt i64 %i.bk, 1
  %i.bm = icmp slt i64 %2, 0
  %or.cond.i.i = or i1 %i.bm, %i.bl
  br i1 %or.cond.i.i, label %mi_heap_malloc_zero_aligned_at.exit, label %bb.r, !prof !119

bb.r:                                             ; preds = %bb.q
  %i.bn = icmp samesign ult i64 %2, 1025
  %i.bo = icmp ule i64 %3, %2
  %i.bp = and i1 %i.bn, %i.bo
  br i1 %i.bp, label %bb.s, label %mi_heap_malloc_aligned_at.exit, !prof !96

bb.s:                                             ; preds = %bb.r
  %i.bq = add nsw i64 %3, -1
  %i.br = add nuw nsw i64 %2, 7
  %i.bs = lshr i64 %i.br, 3
  %i.bt = getelementptr i8, ptr %0, i64 8
  %i.bu = getelementptr [8 x i8], ptr %i.bt, i64 %i.bs
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !94 ; 2 uses
  %i.bw = getelementptr i8, ptr %i.bv, i64 16     ; 2 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !60 ; 4 uses
  %i.by = ptrtoint ptr %i.bx to i64
  %i.bz = add i64 %4, %i.by
  %i.ca = and i64 %i.bz, %i.bq
  %i.cb = icmp ne i64 %i.ca, 0
  %i.cc = icmp eq ptr %i.bx, null
  %.not31.i.i = or i1 %i.cc, %i.cb
  br i1 %.not31.i.i, label %mi_heap_malloc_aligned_at.exit, label %mi_heap_malloc_aligned_at.exit.thread55, !prof !61

mi_heap_malloc_aligned_at.exit.thread55:          ; preds = %bb.s
  %i.cd = getelementptr i8, ptr %i.bv, i64 24     ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !62
  %i.cf = add i32 %i.ce, 1
  store i32 %i.cf, ptr %i.cd, align 8, !tbaa !62
  %i.cg = load atomic i64, ptr %i.bx monotonic, align 8
  %i.ch = inttoptr i64 %i.cg to ptr
  store ptr %i.ch, ptr %i.bw, align 8, !tbaa !60
  br label %bb.t

mi_heap_malloc_aligned_at.exit:                   ; preds = %bb.r, %bb.s
  %i.ci = tail call fastcc ptr @mi_heap_malloc_zero_aligned_at_fallback(ptr noundef %0, i64 noundef %2, i64 noundef %3, i64 noundef %4, i1 noundef zeroext false) ; 2 uses
  %.not51 = icmp eq ptr %i.ci, null
  br i1 %.not51, label %mi_heap_malloc_zero_aligned_at.exit, label %bb.t

bb.t:                                             ; preds = %mi_heap_malloc_aligned_at.exit.thread55, %mi_heap_malloc_aligned_at.exit
  %.2.i.i58 = phi ptr [ %i.bx, %mi_heap_malloc_aligned_at.exit.thread55 ], [ %i.ci, %mi_heap_malloc_aligned_at.exit ] ; 7 uses
  %or.cond = and i1 %5, %.not
  br i1 %or.cond, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.cj = tail call i64 @llvm.usub.sat.i64(i64 %.1.i.i, i64 8) ; 2 uses
  %i.ck = getelementptr i8, ptr %.2.i.i58, i64 %i.cj
  %i.cl = sub nuw nsw i64 %2, %i.cj
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ck, i8 0, i64 %i.cl, i1 false)
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u
  %i.cm = tail call i64 @llvm.umin.i64(i64 %2, i64 %.1.i.i)
  call void @llvm.assume(i1 true) [ "align"(ptr %.2.i.i58, i64 8) ]
  call void @llvm.assume(i1 true) [ "align"(ptr %1, i64 8) ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.2.i.i58, ptr nonnull readonly align 8 %1, i64 %i.cm, i1 false)
  %6 = add i64 %i.ai, -8
  %7 = and i64 %6, -33554432                      ; 2 uses
  %8 = inttoptr i64 %7 to ptr                     ; 4 uses
  %i.cn = tail call ptr asm "movq %fs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(ptr) null) #57, !srcloc !99
  %i.co = ptrtoint ptr %i.cn to i64
  %i.cp = getelementptr i8, ptr %8, i64 256
  %i.cq = load atomic i64, ptr %i.cp monotonic, align 256
  %i.cr = icmp eq i64 %i.cq, %i.co
  %9 = sub i64 %i.ai, %7
  %10 = lshr i64 %9, 16
  %11 = getelementptr i8, ptr %8, i64 264
  %12 = getelementptr [80 x i8], ptr %11, i64 %10 ; 2 uses
  %13 = getelementptr i8, ptr %12, i64 4
  %i.cs = load i32, ptr %13, align 4, !tbaa !100
  %i.ct = zext i32 %i.cs to i64
  %i.cu = sub nsw i64 0, %i.ct
  %i.cv = getelementptr i8, ptr %12, i64 %i.cu    ; 6 uses
  br i1 %i.cr, label %bb.w, label %bb.aa, !prof !96

bb.w:                                             ; preds = %bb.v
  %i.cw = getelementptr i8, ptr %i.cv, i64 14
  %i.cx = load i8, ptr %i.cw, align 2, !tbaa !101
  %i.cy = icmp eq i8 %i.cx, 0
  br i1 %i.cy, label %bb.x, label %bb.z, !prof !96

bb.x:                                             ; preds = %bb.w
  %i.cz = getelementptr i8, ptr %i.cv, i64 32     ; 2 uses
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !98
  %i.db = ptrtoint ptr %i.da to i64
  store atomic i64 %i.db, ptr %1 monotonic, align 8
  store ptr %1, ptr %i.cz, align 8, !tbaa !98
  %i.dc = getelementptr i8, ptr %i.cv, i64 24     ; 2 uses
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !62
  %i.de = add i32 %i.dd, -1                       ; 2 uses
  store i32 %i.de, ptr %i.dc, align 8, !tbaa !62
  %i.df = icmp eq i32 %i.de, 0
  br i1 %i.df, label %bb.y, label %mi_heap_malloc_zero_aligned_at.exit, !prof !61

bb.y:                                             ; preds = %bb.x
  tail call void @_mi_page_retire(ptr noundef %i.cv)
  br label %mi_heap_malloc_zero_aligned_at.exit

bb.z:                                             ; preds = %bb.w
  tail call void @_mi_free_generic(ptr noundef nonnull %8, ptr noundef %i.cv, i1 noundef zeroext true, ptr noundef nonnull %1)
  br label %mi_heap_malloc_zero_aligned_at.exit

bb.aa:                                            ; preds = %bb.v
  tail call void @_mi_free_generic(ptr noundef nonnull %8, ptr noundef %i.cv, i1 noundef zeroext false, ptr noundef nonnull %1)
  br label %mi_heap_malloc_zero_aligned_at.exit

mi_heap_malloc_zero_aligned_at.exit:              ; preds = %bb.q, %bb.aa, %bb.z, %bb.y, %bb.x, %_mi_page_malloc.exit.i, %bb.j, %bb.i, %bb.g, %bb.d, %bb.p, %mi_heap_malloc_aligned_at.exit, %bb.b
  %.1 = phi ptr [ %i.b, %bb.b ], [ null, %mi_heap_malloc_aligned_at.exit ], [ %1, %bb.p ], [ %.2.i.i58, %bb.aa ], [ %i.q, %bb.g ], [ null, %bb.d ], [ %i.ah, %_mi_page_malloc.exit.i ], [ %i.q, %bb.j ], [ %i.q, %bb.i ], [ %.2.i.i58, %bb.x ], [ %.2.i.i58, %bb.y ], [ %.2.i.i58, %bb.z ], [ null, %bb.q ]
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define hidden ptr @mi_heap_realloc_aligned(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp ult i64 %3, 9
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @_mi_heap_realloc_zero(ptr noundef %0, ptr noundef %1, i64 noundef %2, i1 noundef zeroext false)
  br label %mi_heap_realloc_zero_aligned.exit

bb.c:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %1 to i64
  %i.d = urem i64 %i.c, %3
  %i.e = tail call fastcc ptr @mi_heap_realloc_zero_aligned_at(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %i.d, i1 noundef zeroext false)
  br label %mi_heap_realloc_zero_aligned.exit

mi_heap_realloc_zero_aligned.exit:                ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %i.e, %bb.c ]
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define hidden ptr @mi_heap_rezalloc_aligned_at(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call fastcc ptr @mi_heap_realloc_zero_aligned_at(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i1 noundef zeroext true)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define hidden ptr @mi_heap_rezalloc_aligned(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp ult i64 %3, 9
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @_mi_heap_realloc_zero(ptr noundef %0, ptr noundef %1, i64 noundef %2, i1 noundef zeroext true)
  br label %mi_heap_realloc_zero_aligned.exit

bb.c:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %1 to i64
  %i.d = urem i64 %i.c, %3
  %i.e = tail call fastcc ptr @mi_heap_realloc_zero_aligned_at(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %i.d, i1 noundef zeroext true)
  br label %mi_heap_realloc_zero_aligned.exit

mi_heap_realloc_zero_aligned.exit:                ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %i.e, %bb.c ]
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define hidden ptr @mi_heap_recalloc_aligned_at(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #2 {
bb.a:
  %.not = icmp eq i64 %2, 1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 range(i64 2, 1) %2, i64 %3) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 1
  %i.c = extractvalue { i64, i1 } %i.a, 0
  br i1 %i.b, label %mi_count_size_overflow.exit, label %bb.c, !prof !61

bb.c:                                             ; preds = %bb.b, %bb.a
  %storemerge.i.ph = phi i64 [ %3, %bb.a ], [ %i.c, %bb.b ]
  %i.d = tail call fastcc ptr @mi_heap_realloc_zero_aligned_at(ptr noundef %0, ptr noundef %1, i64 noundef %storemerge.i.ph, i64 noundef %4, i64 noundef %5, i1 noundef zeroext true)
  br label %mi_count_size_overflow.exit

mi_count_size_overflow.exit:                      ; preds = %bb.b, %bb.c
  %.0 = phi ptr [ %i.d, %bb.c ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define hidden ptr @mi_heap_recalloc_aligned(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #2 {
bb.a:
  %.not = icmp eq i64 %2, 1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 range(i64 2, 1) %2, i64 %3) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 1
  %i.c = extractvalue { i64, i1 } %i.a, 0
  br i1 %i.b, label %mi_count_size_overflow.exit, label %bb.c, !prof !61

bb.c:                                             ; preds = %bb.b, %bb.a
  %storemerge.i.ph = phi i64 [ %3, %bb.a ], [ %i.c, %bb.b ] ; 2 uses
  %i.d = icmp ult i64 %4, 9
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = tail call ptr @_mi_heap_realloc_zero(ptr noundef %0, ptr noundef %1, i64 noundef %storemerge.i.ph, i1 noundef zeroext true)
  br label %mi_count_size_overflow.exit

bb.e:                                             ; preds = %bb.c
  %i.f = ptrtoint ptr %1 to i64
  %i.g = urem i64 %i.f, %4
  %i.h = tail call fastcc ptr @mi_heap_realloc_zero_aligned_at(ptr noundef %0, ptr noundef %1, i64 noundef %storemerge.i.ph, i64 noundef %4, i64 noundef %i.g, i1 noundef zeroext true)
  br label %mi_count_size_overflow.exit

mi_count_size_overflow.exit:                      ; preds = %bb.e, %bb.d, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ %i.e, %bb.d ], [ %i.h, %bb.e ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define hidden ptr @mi_realloc_aligned_at(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !95
  %i.c = tail call fastcc ptr @mi_heap_realloc_zero_aligned_at(ptr noundef %i.b, ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i1 noundef zeroext false)
  ret ptr %i.c
}

; Function Attrs: nounwind uwtable
define hidden ptr @mi_realloc_aligned(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !95   ; 2 uses
  %i.c = icmp ult i64 %2, 9
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @_mi_heap_realloc_zero(ptr noundef %i.b, ptr noundef %0, i64 noundef %1, i1 noundef zeroext false)
  br label %mi_heap_realloc_aligned.exit

bb.c:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %0 to i64
  %i.f = urem i64 %i.e, %2
  %i.g = tail call fastcc ptr @mi_heap_realloc_zero_aligned_at(ptr noundef %i.b, ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %i.f, i1 noundef zeroext false)
  br label %mi_heap_realloc_aligned.exit

mi_heap_realloc_aligned.exit:                     ; preds = %bb.b, %bb.c
  %.0.i.i = phi ptr [ %i.d, %bb.b ], [ %i.g, %bb.c ]
  ret ptr %.0.i.i
}

; Function Attrs: nounwind uwtable
define hidden ptr @mi_rezalloc_aligned_at(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !95
  %i.c = tail call fastcc ptr @mi_heap_realloc_zero_aligned_at(ptr noundef %i.b, ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i1 noundef zeroext true)
  ret ptr %i.c
}

; Function Attrs: nounwind uwtable
define hidden ptr @mi_rezalloc_aligned(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !95   ; 2 uses
  %i.c = icmp ult i64 %2, 9
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @_mi_heap_realloc_zero(ptr noundef %i.b, ptr noundef %0, i64 noundef %1, i1 noundef zeroext true)
  br label %mi_heap_rezalloc_aligned.exit

bb.c:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %0 to i64
  %i.f = urem i64 %i.e, %2
  %i.g = tail call fastcc ptr @mi_heap_realloc_zero_aligned_at(ptr noundef %i.b, ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %i.f, i1 noundef zeroext true)
  br label %mi_heap_rezalloc_aligned.exit

mi_heap_rezalloc_aligned.exit:                    ; preds = %bb.b, %bb.c
  %.0.i.i = phi ptr [ %i.d, %bb.b ], [ %i.g, %bb.c ]
  ret ptr %.0.i.i
}

; Function Attrs: nounwind uwtable
define hidden ptr @mi_recalloc_aligned_at(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_mi_heap_default)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !95
  %.not.i = icmp eq i64 %1, 1
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 range(i64 2, 1) %1, i64 %2) ; 2 uses
  %i.d = extractvalue { i64, i1 } %i.c, 1
  %i.e = extractvalue { i64, i1 } %i.c, 0
  br i1 %i.d, label %mi_heap_recalloc_aligned_at.exit, label %bb.c, !prof !61

bb.c:                                             ; preds = %bb.b, %bb.a
  %storemerge.i.ph.i = phi i64 [ %2, %bb.a ], [ %i.e, %bb.b ]
  %i.f = tail call fastcc ptr @mi_heap_realloc_zero_aligned_at(ptr noundef %i.b, ptr noundef %0, i64 noundef %storemerge.i.ph.i, i64 noundef %3, i64 noundef %4, i1 noundef zeroext true)
  br label %mi_heap_recalloc_aligned_at.exit

mi_heap_recalloc_aligned_at.exit:                 ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.f, %bb.c ], [ null, %bb.b ]
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define hidden ptr @mi_recalloc_aligned(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #2 {
end_hunk_0
