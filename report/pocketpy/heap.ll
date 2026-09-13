Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pocketpy/original/heap?download=true
inline.NumInlined: 2
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@ManagedHeap__collect_hint:bb.a
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !18
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 228 ; 3 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !26
  %i.e = icmp slt i32 %i.b, %i.d
  br i1 %i.e, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.a, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.g = tail call zeroext i1 @py_istype(ptr noundef nonnull %i.f, i16 noundef signext 33) #10
  br i1 %i.g, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.b
  tail call void @ManagedHeap__mark(ptr noundef nonnull %0) #10
  br label %.thread55

bb.c:                                             ; preds = %bb.b
  %i.h = tail call ptr (...) @ManagedHeapSwpetInfo__new() #10 ; 5 uses
  tail call fastcc void @ManagedHeap__fire_debug_callback_start(ptr noundef nonnull %0)
  tail call void @ManagedHeap__mark(ptr noundef nonnull %0) #10
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %.thread55, label %bb.d

.thread55:                                        ; preds = %bb.c, %.thread
  %i.i = tail call i32 @ManagedHeap__sweep(ptr noundef nonnull %0, ptr noundef null)
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = tail call i64 (...) @time_ns() #10
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !31
  %i.l = tail call i32 @ManagedHeap__sweep(ptr noundef nonnull %0, ptr noundef nonnull %i.h)
  %i.m = tail call i64 (...) @time_ns() #10
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 %i.m, ptr %i.n, align 8, !tbaa !32
  br label %bb.e

bb.e:                                             ; preds = %.thread55, %bb.d
  %phi.call61 = phi i32 [ %i.i, %.thread55 ], [ %i.l, %bb.d ] ; 4 uses
  %.05160 = phi ptr [ null, %.thread55 ], [ %i.h, %bb.d ] ; 8 uses
  %.not5359 = phi i1 [ true, %.thread55 ], [ false, %bb.d ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 220 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !17   ; 2 uses
  store i32 %i.q, ptr %i.o, align 8, !tbaa !17
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !17   ; 2 uses
  store i32 %i.s, ptr %i.p, align 4, !tbaa !17
  store i32 %phi.call61, ptr %i.r, align 8, !tbaa !17
  %i.t = add i32 %i.q, %phi.call61
  %i.u = add i32 %i.t, %i.s
  %i.v = sdiv i32 %i.u, 3                         ; 2 uses
  %i.w = sitofp i32 %i.v to float
  %i.x = load i32, ptr %i.c, align 4, !tbaa !26   ; 2 uses
  %i.y = sitofp i32 %i.x to float                 ; 2 uses
  %i.z = fdiv float %i.w, %i.y                    ; 2 uses
  %i.aa = fdiv float 1.500000e+00, %i.z
  %i.ab = fmul float %i.aa, %i.y
  %i.ac = fptosi float %i.ab to i32               ; 2 uses
  br i1 %.not5359, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %.05160, i64 56
  store i32 %i.x, ptr %i.ad, align 8, !tbaa !33
  %i.ae = getelementptr inbounds nuw i8, ptr %.05160, i64 60
  store i32 %i.ac, ptr %i.ae, align 4, !tbaa !34
  %i.af = getelementptr inbounds nuw i8, ptr %.05160, i64 64
  store i32 160000, ptr %i.af, align 8, !tbaa !35
  %i.ag = getelementptr inbounds nuw i8, ptr %.05160, i64 68
  store i32 10000, ptr %i.ag, align 4, !tbaa !36
  %i.ah = getelementptr inbounds nuw i8, ptr %.05160, i64 72
  store i32 %i.v, ptr %i.ah, align 8, !tbaa !37
  %i.ai = getelementptr inbounds nuw i8, ptr %.05160, i64 76
  store float %i.z, ptr %i.ai, align 4, !tbaa !38
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.aj = tail call i32 @llvm.smax.i32(i32 %i.ac, i32 10000)
  %i.ak = tail call i32 @llvm.umin.i32(i32 %i.aj, i32 160000)
  store i32 %i.ak, ptr %i.c, align 4, !tbaa !26
  %i.al = tail call zeroext i1 @py_istype(ptr noundef nonnull %i.f, i16 noundef signext 33) #10
  br i1 %i.al, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call fastcc void @ManagedHeap__fire_debug_callback_stop(ptr noundef nonnull %0, ptr noundef %.05160)
  tail call void @ManagedHeapSwpetInfo__delete(ptr noundef %.05160) #10
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.a
  %.046 = phi i32 [ 0, %bb.a ], [ %phi.call61, %bb.h ], [ %phi.call61, %bb.g ]
  ret i32 %.046
}

declare zeroext i1 @py_istype(ptr noundef, i16 noundef signext) local_unnamed_addr #1

declare ptr @ManagedHeapSwpetInfo__new(...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @ManagedHeap__fire_debug_callback_start(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 240
  tail call void @py_push(ptr noundef nonnull %i.a) #10
  tail call void (...) @py_pushnil() #10
  %i.b = tail call ptr (...) @py_pushtmp() #10
  tail call void @py_newstr(ptr noundef %i.b, ptr noundef nonnull @.str) #10
  %i.c = tail call ptr (...) @py_pushtmp() #10
  tail call void @py_newstr(ptr noundef %i.c, ptr noundef nonnull @.str.1) #10
  %i.d = tail call zeroext i1 @py_vectorcall(i16 noundef zeroext 2, i16 noundef zeroext 0) #10
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr (...) @py_formatexc() #10
  %i.f = load ptr, ptr @stderr, align 8, !tbaa !40
  %i.g = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.f, ptr noundef nonnull @.str.2, ptr noundef %i.e) #11 ; 0 uses
  %i.h = tail call i32 @putchar(i32 noundef 10)   ; 0 uses
  tail call void @abort() #12
  unreachable

bb.c:                                             ; preds = %bb.a
  ret void
}

declare void @ManagedHeap__mark(ptr noundef) local_unnamed_addr #1

declare i64 @time_ns(...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define i32 @ManagedHeap__sweep(ptr noundef %0, ptr nofree noundef captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %1, null                    ; 2 uses
  br i1 %.not, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @MultiPool__sweep_dealloc(ptr noundef %0, ptr noundef null) #10 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 4 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !21   ; 2 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph.split.us.preheader, label %._crit_edge

.thread:                                          ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !41
  %i.h = tail call i32 @MultiPool__sweep_dealloc(ptr noundef %0, ptr noundef %i.g) #10 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 4 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !21   ; 2 uses
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %.lr.ph.split.preheader, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %.thread
  store i32 0, ptr %i.j, align 8, !tbaa !21
  br label %bb.i

.lr.ph.split.preheader:                           ; preds = %.thread
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  br label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %bb.e
  %indvars.iv45 = phi i64 [ 0, %.lr.ph.split.us.preheader ], [ %indvars.iv.next46, %bb.e ] ; 2 uses
  %.03137.us = phi i32 [ 0, %.lr.ph.split.us.preheader ], [ %.1.us, %bb.e ] ; 3 uses
  %i.p = load ptr, ptr %i.b, align 8, !tbaa !22
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv45
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !24   ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 3 ; 2 uses
  %i.t = load i8, ptr %i.s, align 1, !tbaa !20    ; 2 uses
  %i.u = and i8 %i.t, 1
  %.not35.us = icmp eq i8 %i.u, 0
  br i1 %.not35.us, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.split.us
  %i.v = and i8 %i.t, 2
  store i8 %i.v, ptr %i.s, align 1, !tbaa !20
  %i.w = load ptr, ptr %i.b, align 8, !tbaa !22
  %i.x = sext i32 %.03137.us to i64
  %i.y = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.x
  store ptr %i.r, ptr %i.y, align 8, !tbaa !24
  %i.z = add nsw i32 %.03137.us, 1
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph.split.us
  %i.aa = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  %i.ab = load i8, ptr %i.aa, align 2, !tbaa !20
  %i.ac = zext i8 %i.ab to i32                    ; 2 uses
  %i.ad = lshr i32 %i.ac, 3
  %i.ae = and i32 %i.ac, 7
  %i.af = add nsw i32 %i.ad, -1
  %i.ag = shl nuw nsw i32 1, %i.af                ; 2 uses
  %i.ah = uitofp nneg i32 %i.ae to float
  %i.ai = fdiv nnan float %i.ah, 7.999000e+00
  %i.aj = uitofp nneg i32 %i.ag to float
  %i.ak = fmul float %i.ai, %i.aj
  %i.al = fptosi float %i.ak to i32
  %i.am = add nsw i32 %i.ag, %i.al
  %2 = sext i32 %i.am to i64
  %i.an = load i64, ptr %i.o, align 8, !tbaa !16
  %i.ao = sub i64 %i.an, %2
  store i64 %i.ao, ptr %i.o, align 8, !tbaa !16
  tail call void @PyObject__dtor(ptr noundef nonnull %i.r) #10
  tail call void @free(ptr noundef nonnull %i.r) #10
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.1.us = phi i32 [ %i.z, %bb.c ], [ %.03137.us, %bb.d ] ; 2 uses
  %indvars.iv.next46 = add nuw nsw i64 %indvars.iv45, 1 ; 2 uses
  %i.ap = load i32, ptr %i.c, align 8, !tbaa !21  ; 2 uses
  %i.aq = sext i32 %i.ap to i64
  %i.ar = icmp slt i64 %indvars.iv.next46, %i.aq
  br i1 %i.ar, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !49

._crit_edge:                                      ; preds = %bb.h, %bb.e, %bb.b
  %i.as = phi ptr [ %i.c, %bb.b ], [ %i.c, %bb.e ], [ %i.j, %bb.h ]
  %i.at = phi i32 [ %i.a, %bb.b ], [ %i.a, %bb.e ], [ %i.h, %bb.h ] ; 2 uses
  %.031.lcssa = phi i32 [ 0, %bb.b ], [ %.1.us, %bb.e ], [ %.1, %bb.h ] ; 2 uses
  %.lcssa = phi i32 [ %i.d, %bb.b ], [ %i.ap, %bb.e ], [ %i.cb, %bb.h ]
  %i.au = sub nsw i32 %.lcssa, %.031.lcssa        ; 2 uses
  store i32 %.031.lcssa, ptr %i.as, align 8, !tbaa !21
  br i1 %.not, label %bb.j, label %bb.i

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %bb.h
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.preheader ], [ %indvars.iv.next, %bb.h ] ; 2 uses
  %.03137 = phi i32 [ 0, %.lr.ph.split.preheader ], [ %.1, %bb.h ] ; 3 uses
  %i.av = load ptr, ptr %i.i, align 8, !tbaa !22
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !24 ; 6 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 3 ; 2 uses
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !20  ; 2 uses
  %i.ba = and i8 %i.az, 1
  %.not35 = icmp eq i8 %i.ba, 0
  br i1 %.not35, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph.split
  %i.bb = and i8 %i.az, 2
  store i8 %i.bb, ptr %i.ay, align 1, !tbaa !20
  %i.bc = load ptr, ptr %i.i, align 8, !tbaa !22
  %i.bd = sext i32 %.03137 to i64
  %i.be = getelementptr inbounds [8 x i8], ptr %i.bc, i64 %i.bd
  store ptr %i.ax, ptr %i.be, align 8, !tbaa !24
  %i.bf = add nsw i32 %.03137, 1
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph.split
  %i.bg = load ptr, ptr %i.m, align 8, !tbaa !42
  %i.bh = load i16, ptr %i.ax, align 4, !tbaa !19
  %i.bi = sext i16 %i.bh to i64
  %i.bj = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %i.bi ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !17
  %i.bl = add nsw i32 %i.bk, 1
  store i32 %i.bl, ptr %i.bj, align 4, !tbaa !17
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ax, i64 2
  %i.bn = load i8, ptr %i.bm, align 2, !tbaa !20
  %i.bo = zext i8 %i.bn to i32                    ; 2 uses
  %i.bp = lshr i32 %i.bo, 3
  %i.bq = and i32 %i.bo, 7
  %i.br = add nsw i32 %i.bp, -1
  %i.bs = shl nuw nsw i32 1, %i.br                ; 2 uses
  %i.bt = uitofp nneg i32 %i.bq to float
  %i.bu = fdiv nnan float %i.bt, 7.999000e+00
  %i.bv = uitofp nneg i32 %i.bs to float
  %i.bw = fmul float %i.bu, %i.bv
  %i.bx = fptosi float %i.bw to i32
  %i.by = add nsw i32 %i.bs, %i.bx
  %3 = sext i32 %i.by to i64
  %i.bz = load i64, ptr %i.n, align 8, !tbaa !16
  %i.ca = sub i64 %i.bz, %3
  store i64 %i.ca, ptr %i.n, align 8, !tbaa !16
  tail call void @PyObject__dtor(ptr noundef nonnull %i.ax) #10
  tail call void @free(ptr noundef nonnull %i.ax) #10
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.1 = phi i32 [ %i.bf, %bb.f ], [ %.03137, %bb.g ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cb = load i32, ptr %i.j, align 8, !tbaa !21  ; 2 uses
  %i.cc = sext i32 %i.cb to i64
  %i.cd = icmp slt i64 %indvars.iv.next, %i.cc
  br i1 %i.cd, label %.lr.ph.split, label %._crit_edge, !llvm.loop !49

bb.i:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %i.ce = phi i32 [ %i.k, %._crit_edge.thread ], [ %i.au, %._crit_edge ] ; 2 uses
  %i.cf = phi i32 [ %i.h, %._crit_edge.thread ], [ %i.at, %._crit_edge ] ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i32 %i.cf, ptr %i.cg, align 8, !tbaa !43
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 52
  store i32 %i.ce, ptr %i.ch, align 4, !tbaa !44
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge
  %i.ci = phi i32 [ %i.ce, %bb.i ], [ %i.au, %._crit_edge ]
  %i.cj = phi i32 [ %i.cf, %bb.i ], [ %i.at, %._crit_edge ]
  %i.ck = add nsw i32 %i.ci, %i.cj
  ret i32 %i.ck
}

; Function Attrs: nounwind uwtable
define internal fastcc void @ManagedHeap__fire_debug_callback_stop(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.c11_sbuf, align 8           ; 23 uses
  %i.a = alloca [256 x i8], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  call void @c11_sbuf__ctor(ptr noundef nonnull %2) #10
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !31   ; 2 uses
  %i.d = load i64, ptr %1, align 8, !tbaa !51
  %i.e = sub nsw i64 %i.c, %i.d
  %i.f = sdiv i64 %i.e, 1000000                   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !32
  %i.i = sub nsw i64 %i.h, %i.c
  %i.j = sdiv i64 %i.i, 1000000                   ; 2 uses
  call void @c11_sbuf__write_cstr(ptr noundef nonnull %2, ptr noundef nonnull @.str.3) #10
  %i.k = load i64, ptr %1, align 8, !tbaa !51
  %i.l = sitofp i64 %i.k to double
  %i.m = fdiv double %i.l, 1.000000e+09
  call void (ptr, ptr, ...) @pk_sprintf(ptr noundef nonnull %2, ptr noundef nonnull @.str.4, double noundef %i.m) #10
  call void (ptr, ptr, ...) @pk_sprintf(ptr noundef nonnull %2, ptr noundef nonnull @.str.5, i64 noundef %i.f) #10
  call void (ptr, ptr, ...) @pk_sprintf(ptr noundef nonnull %2, ptr noundef nonnull @.str.6, i64 noundef %i.j) #10
  %i.n = add nsw i64 %i.j, %i.f
  call void (ptr, ptr, ...) @pk_sprintf(ptr noundef nonnull %2, ptr noundef nonnull @.str.7, i64 noundef %i.n) #10
  call void @c11_sbuf__write_cstr(ptr noundef nonnull %2, ptr noundef nonnull @.str.3) #10
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !52
  call void (ptr, ptr, ...) @pk_sprintf(ptr noundef nonnull %2, ptr noundef nonnull @.str.8, i32 noundef %i.p) #10
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !43
  call void (ptr, ptr, ...) @pk_sprintf(ptr noundef nonnull %2, ptr noundef nonnull @.str.9, i32 noundef %i.r) #10
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 52 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !44
  call void (ptr, ptr, ...) @pk_sprintf(ptr noundef nonnull %2, ptr noundef nonnull @.str.10, i32 noundef %i.t) #10
  call void @c11_sbuf__write_cstr(ptr noundef nonnull %2, ptr noundef nonnull @.str.3) #10
  %i.u = load i32, ptr %i.q, align 8, !tbaa !43
  %.not = icmp eq i32 %i.u, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.v = load i32, ptr %i.s, align 4, !tbaa !44
  %.not42 = icmp eq i32 %i.v, 0
  br i1 %.not42, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.w = load i32, ptr %i.o, align 8, !tbaa !52
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 40
  br label %bb.d

._crit_edge:                                      ; preds = %bb.f, %bb.c
  call void @c11_sbuf__write_cstr(ptr noundef nonnull %2, ptr noundef nonnull @.str.3) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.g

bb.d:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 4 uses
  %i.aa = trunc i64 %indvars.iv to i16
  %i.ab = call ptr @py_tpname(i16 noundef signext %i.aa) #10
  %i.ac = load ptr, ptr %i.y, align 8, !tbaa !41
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %indvars.iv
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !17 ; 2 uses
  %i.af = load ptr, ptr %i.z, align 8, !tbaa !42
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !17 ; 2 uses
  %i.ai = icmp eq i32 %i.ae, 0
  %i.aj = icmp eq i32 %i.ah, 0
  %or.cond = select i1 %i.ai, i1 %i.aj, i1 false
  br i1 %or.cond, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ak = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 256, ptr noundef nonnull @.str.11, ptr noundef %i.ab, i32 noundef %i.ae, i32 noundef %i.ah) #10 ; 0 uses
  call void @c11_sbuf__write_cstr(ptr noundef nonnull %2, ptr noundef nonnull %i.a) #10
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.al = load i32, ptr %i.o, align 8, !tbaa !52
  %i.am = sext i32 %i.al to i64
  %i.an = icmp slt i64 %indvars.iv.next, %i.am
  br i1 %i.an, label %bb.d, label %._crit_edge, !llvm.loop !50

bb.g:                                             ; preds = %._crit_edge, %bb.b
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !33
  call void (ptr, ptr, ...) @pk_sprintf(ptr noundef nonnull %2, ptr noundef nonnull @.str.12, i32 noundef %i.ap) #10
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !34
  call void (ptr, ptr, ...) @pk_sprintf(ptr noundef nonnull %2, ptr noundef nonnull @.str.13, i32 noundef %i.ar) #10
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.at = load i32, ptr %i.as, align 8, !tbaa !35
  call void (ptr, ptr, ...) @pk_sprintf(ptr noundef nonnull %2, ptr noundef nonnull @.str.14, i32 noundef %i.at) #10
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.av = load i32, ptr %i.au, align 4, !tbaa !36
  call void (ptr, ptr, ...) @pk_sprintf(ptr noundef nonnull %2, ptr noundef nonnull @.str.15, i32 noundef %i.av) #10
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !37
  call void (ptr, ptr, ...) @pk_sprintf(ptr noundef nonnull %2, ptr noundef nonnull @.str.16, i32 noundef %i.ax) #10
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.az = load float, ptr %i.ay, align 4, !tbaa !38
  %i.ba = fpext float %i.az to double
  call void (ptr, ptr, ...) @pk_sprintf(ptr noundef nonnull %2, ptr noundef nonnull @.str.17, double noundef %i.ba) #10
  call void @c11_sbuf__write_cstr(ptr noundef nonnull %2, ptr noundef nonnull @.str.3) #10
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 240
  call void @py_push(ptr noundef nonnull %i.bb) #10
  call void (...) @py_pushnil() #10
  %i.bc = call ptr (...) @py_pushtmp() #10
  call void @py_newstr(ptr noundef %i.bc, ptr noundef nonnull @.str.18) #10
  %i.bd = call ptr (...) @py_pushtmp() #10
  call void @c11_sbuf__py_submit(ptr noundef nonnull %2, ptr noundef %i.bd) #10
  %i.be = call zeroext i1 @py_vectorcall(i16 noundef zeroext 2, i16 noundef zeroext 0) #10
  br i1 %i.be, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bf = call ptr (...) @py_formatexc() #10
  %i.bg = load ptr, ptr @stderr, align 8, !tbaa !40
  %i.bh = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bg, ptr noundef nonnull @.str.2, ptr noundef %i.bf) #11 ; 0 uses
  %i.bi = call i32 @putchar(i32 noundef 10)       ; 0 uses
  call void @abort() #12
  unreachable

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  ret void
}

declare void @ManagedHeapSwpetInfo__delete(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define i32 @ManagedHeap__collect(ptr noundef initializes((232, 236)) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i32 0, ptr %i.a, align 8, !tbaa !18
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.c = tail call zeroext i1 @py_istype(ptr noundef nonnull %i.b, i16 noundef signext 33) #10
  br i1 %i.c, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  tail call void @ManagedHeap__mark(ptr noundef nonnull %0) #10
  br label %.thread27

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr (...) @ManagedHeapSwpetInfo__new() #10 ; 7 uses
  tail call fastcc void @ManagedHeap__fire_debug_callback_start(ptr noundef nonnull %0)
  tail call void @ManagedHeap__mark(ptr noundef nonnull %0) #10
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %.thread27, label %bb.c

.thread27:                                        ; preds = %bb.b, %.thread
  %i.e = tail call i32 @ManagedHeap__sweep(ptr noundef nonnull %0, ptr noundef null)
  br label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i64 (...) @time_ns() #10
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.f, ptr %i.g, align 8, !tbaa !31
  %i.h = tail call i32 @ManagedHeap__sweep(ptr noundef nonnull %0, ptr noundef nonnull %i.d)
  %i.i = tail call i64 (...) @time_ns() #10
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %i.i, ptr %i.j, align 8, !tbaa !32
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.l = load i32, ptr %i.k, align 4, !tbaa !26   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 56
end_hunk_0
