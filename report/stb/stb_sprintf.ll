inline.NumInlined: 8
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 14
begin_hunk_0_@stbsp__real_to_parts
define range(i32 0, 2) i32 @stbsp__real_to_parts(ptr nofree noundef writeonly captures(none) initializes((0, 8)) %0, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %1, double noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = bitcast double %2 to i64                 ; 3 uses
  %i.b = and i64 %i.a, 4503599627370495
  store i64 %i.b, ptr %0, align 8, !tbaa !37
  %i.c = lshr i64 %i.a, 52
  %i.d = trunc nuw nsw i64 %i.c to i32
  %i.e = and i32 %i.d, 2047
  %i.f = add nsw i32 %i.e, -1023
  store i32 %i.f, ptr %1, align 4, !tbaa !9
  %i.g = lshr i64 %i.a, 63
  %i.h = trunc nuw nsw i64 %i.g to i32
  ret i32 %i.h
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @stbsp__real_to_str(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr noundef %2, ptr nofree noundef writeonly captures(none) %3, double noundef %4, i32 noundef %5) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca double, align 8                   ; 5 uses
  %i.b = alloca double, align 8                   ; 5 uses
  %i.c = bitcast double %4 to i64                 ; 5 uses
  %i.d = lshr i64 %i.c, 52
  %i.e = trunc nuw nsw i64 %i.d to i32
  %i.f = and i32 %i.e, 2047                       ; 2 uses
  %i.g = tail call double @llvm.fabs.f64(double %4)
  switch i32 %i.f, label %.loopexit132 [
    i32 2047, label %bb.b
    i32 0, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.h = and i64 %i.c, 4503599627370495
  %.not120 = icmp eq i64 %i.h, 0
  %i.i = select i1 %.not120, ptr @.str.4, ptr @.str.3
  store ptr %i.i, ptr %0, align 8, !tbaa !15
  store i32 28672, ptr %3, align 4, !tbaa !9
  br label %bb.s

bb.c:                                             ; preds = %bb.a
  %i.j = fcmp oeq double %4, 0.000000e+00
  br i1 %i.j, label %bb.d, label %.preheader131

.preheader131:                                    ; preds = %bb.c
  %i.k = and i64 %i.c, 2251799813685248
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %.lr.ph, label %.loopexit132.thread

.loopexit132.thread:                              ; preds = %.preheader131
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 1, ptr %3, align 4, !tbaa !9
  store ptr %2, ptr %0, align 8, !tbaa !15
  store i8 48, ptr %2, align 1, !tbaa !8
  br label %bb.s

.lr.ph:                                           ; preds = %.preheader131, %.lr.ph
  %.085139 = phi i32 [ %i.m, %.lr.ph ], [ 0, %.preheader131 ]
  %.087138 = phi i64 [ %i.n, %.lr.ph ], [ 2251799813685248, %.preheader131 ]
  %i.m = add nsw i32 %.085139, -1                 ; 2 uses
  %i.n = lshr i64 %.087138, 1                     ; 2 uses
  %i.o = and i64 %i.n, %i.c
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %.lr.ph, label %.loopexit132, !llvm.loop !65

.loopexit132:                                     ; preds = %.lr.ph, %bb.a
  %.186 = phi i32 [ %i.f, %bb.a ], [ %i.m, %.lr.ph ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.q = add nsw i32 %.186, -1023                 ; 2 uses
  %i.r = icmp slt i32 %.186, 1023
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.loopexit132.thread, %.loopexit132
  %i.s = phi i32 [ -1023, %.loopexit132.thread ], [ %i.q, %.loopexit132 ]
  %.neg129 = mul i32 %i.s, -617
  %i.t = lshr i32 %.neg129, 11
  %.neg = sub nsw i32 0, %i.t
  br label %bb.g

bb.f:                                             ; preds = %.loopexit132
  %i.u = mul nsw i32 %i.q, 1233
  %i.v = lshr i32 %i.u, 12
  %i.w = add nuw nsw i32 %i.v, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.x = phi i32 [ %.neg, %bb.e ], [ %i.w, %bb.f ] ; 2 uses
  %i.y = sub nsw i32 18, %i.x
  call void @stbsp__raise_to_power10(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, double noundef %i.g, i32 noundef %i.y)
  %i.z = load double, ptr %i.a, align 8, !tbaa !20 ; 4 uses
  %i.aa = fptosi double %i.z to i64               ; 2 uses
  %i.ab = sitofp i64 %i.aa to double              ; 2 uses
  %i.ac = fsub double %i.z, %i.ab                 ; 3 uses
  %i.ad = fsub double %i.ac, %i.z                 ; 2 uses
  %i.ae = fsub double %i.ac, %i.ad
  %i.af = fsub double %i.z, %i.ae
  %i.ag = fadd double %i.ad, %i.ab
  %i.ah = fsub double %i.af, %i.ag
  %i.ai = fadd double %i.ac, %i.ah
  %i.aj = load double, ptr %i.b, align 8, !tbaa !20
  %i.ak = fadd double %i.aj, %i.ai
  %i.al = fptosi double %i.ak to i64
  %i.am = add nsw i64 %i.al, %i.aa                ; 7 uses
  %i.an = icmp ugt i64 %i.am, 999999999999999999
  %i.ao = zext i1 %i.an to i32
  %spec.select = add nsw i32 %i.x, %i.ao          ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %i.ap = and i32 %5, 134217727
  %i.aq = add nuw nsw i32 %i.ap, 1
  %i.ar = add i32 %spec.select, %5
  %.not111130 = icmp slt i32 %5, 0
  %i.as = select i1 %.not111130, i32 %i.aq, i32 %i.ar ; 3 uses
  %i.at = icmp ult i32 %i.as, 24
  br i1 %i.at, label %bb.h, label %thread-pre-split

bb.h:                                             ; preds = %bb.g
  %i.au = icmp ugt i64 %i.am, 999999999
  %i.av = select i1 %i.au, i64 10, i64 1
  br label %bb.i

bb.i:                                             ; preds = %bb.j, %bb.h
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.j ], [ %i.av, %bb.h ] ; 3 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr @stbsp__powten, i64 %indvars.iv
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !37 ; 2 uses
  %.not112 = icmp ult i64 %i.am, %i.ax
  br i1 %.not112, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ay = icmp eq i64 %indvars.iv.next, 20
  br i1 %i.ay, label %thread-pre-split, label %bb.i, !llvm.loop !66

bb.k:                                             ; preds = %bb.i
  %i.az = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.ba = icmp ult i32 %i.as, %i.az
  br i1 %i.ba, label %bb.l, label %thread-pre-split

bb.l:                                             ; preds = %bb.k
  %i.bb = sub nuw i32 %i.az, %i.as
  %i.bc = zext nneg i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr @stbsp__powten, i64 %i.bc
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !37 ; 2 uses
  %i.bf = lshr i64 %i.be, 1
  %i.bg = add i64 %i.bf, %i.am                    ; 2 uses
  %.not113 = icmp uge i64 %i.bg, %i.ax
  %i.bh = zext i1 %.not113 to i32
  %spec.select121 = add nsw i32 %spec.select, %i.bh
  %i.bi = udiv i64 %i.bg, %i.be
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.j, %bb.k, %bb.g, %bb.l
  %.0186 = phi i64 [ %i.bi, %bb.l ], [ %i.am, %bb.k ], [ %i.am, %bb.g ], [ %i.am, %bb.j ] ; 4 uses
  %.494 = phi i32 [ %spec.select121, %bb.l ], [ %spec.select, %bb.k ], [ %spec.select, %bb.g ], [ %spec.select, %bb.j ]
  %.not114 = icmp eq i64 %.0186, 0
  br i1 %.not114, label %.loopexit, label %thread-pre-split122

thread-pre-split122:                              ; preds = %thread-pre-split
  %i.bj = icmp slt i64 %.0186, 4294967296
  br i1 %i.bj, label %._crit_edge, label %.lr.ph142

.lr.ph142:                                        ; preds = %thread-pre-split122, %bb.m
  %i.bk = phi i64 [ %i.bm, %bb.m ], [ %.0186, %thread-pre-split122 ] ; 4 uses
  %i.bl = urem i64 %i.bk, 1000
  %i.bm = udiv i64 %i.bk, 1000                    ; 2 uses
  %.not115 = icmp eq i64 %i.bl, 0
  br i1 %.not115, label %bb.m, label %.loopexit

bb.m:                                             ; preds = %.lr.ph142
  %i.bn = icmp samesign ult i64 %i.bk, 4294967296000
  br i1 %i.bn, label %._crit_edge, label %.lr.ph142

._crit_edge:                                      ; preds = %bb.m, %thread-pre-split122
  %.lcssa = phi i64 [ %.0186, %thread-pre-split122 ], [ %i.bm, %bb.m ]
  %i.bo = trunc i64 %.lcssa to i32                ; 3 uses
  %i.bp = urem i32 %i.bo, 1000
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %.lr.ph147, label %._crit_edge148

.lr.ph147:                                        ; preds = %._crit_edge, %.lr.ph147
  %.080145 = phi i32 [ %i.br, %.lr.ph147 ], [ %i.bo, %._crit_edge ]
  %i.br = udiv i32 %.080145, 1000                 ; 3 uses
  %i.bs = urem i32 %i.br, 1000
  %i.bt = icmp eq i32 %i.bs, 0
  br i1 %i.bt, label %.lr.ph147, label %._crit_edge148, !llvm.loop !67

._crit_edge148:                                   ; preds = %.lr.ph147, %._crit_edge
  %.080.lcssa = phi i32 [ %i.bo, %._crit_edge ], [ %i.br, %.lr.ph147 ]
  %i.bu = zext i32 %.080.lcssa to i64
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph142, %._crit_edge148, %thread-pre-split
  %.1 = phi i64 [ 0, %thread-pre-split ], [ %i.bu, %._crit_edge148 ], [ %i.bk, %.lr.ph142 ]
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 64
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge165, %.loopexit
  %storemerge169 = phi i64 [ %.1, %.loopexit ], [ %storemerge, %._crit_edge165 ] ; 4 uses
  %.095 = phi i32 [ 0, %.loopexit ], [ %10, %._crit_edge165 ] ; 2 uses
  %.083 = phi ptr [ %i.bv, %.loopexit ], [ %.3.ptr, %._crit_edge165 ] ; 4 uses
  %i.bw = icmp samesign ugt i64 %storemerge169, 99999999
  br i1 %i.bw, label %bb.o, label %.thread

bb.o:                                             ; preds = %bb.n
  %i.bx = urem i64 %storemerge169, 100000000
  %i.by = udiv i64 %storemerge169, 100000000
  br label %.thread

.thread:                                          ; preds = %bb.n, %bb.o
  %storemerge = phi i64 [ %i.by, %bb.o ], [ 0, %bb.n ] ; 2 uses
  %.0.in = phi i64 [ %i.bx, %bb.o ], [ %storemerge169, %bb.n ] ; 2 uses
  %.not116151206 = icmp eq i64 %.0.in, 0
  br i1 %.not116151206, label %.lr.ph164.preheader, label %.lr.ph156.preheader

.lr.ph156.preheader:                              ; preds = %.thread
  %.0 = trunc nuw nsw i64 %.0.in to i32
  %.ptr118 = getelementptr inbounds i8, ptr %.083, i64 -2
  br label %.lr.ph156

.lr.ph156:                                        ; preds = %.lr.ph156.preheader, %.lr.ph156
  %.1154 = phi i32 [ %i.ce, %.lr.ph156 ], [ %.0, %.lr.ph156.preheader ] ; 3 uses
  %.196152 = phi i32 [ %i.cf, %.lr.ph156 ], [ %.095, %.lr.ph156.preheader ]
  %i.bz = urem i32 %.1154, 100
  %i.ca = shl nuw nsw i32 %i.bz, 1
  %i.cb = zext nneg i32 %i.ca to i64
  %i.cc = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @stbsp__digitpair, i64 2), i64 %i.cb
  %i.cd = load i16, ptr %i.cc, align 2, !tbaa !39
  store i16 %i.cd, ptr %.ptr118, align 2, !tbaa !39
  %i.ce = udiv i32 %.1154, 100
  %i.cf = add nsw i32 %.196152, 2                 ; 2 uses
  %.not116 = icmp samesign ult i32 %.1154, 100
  br i1 %.not116, label %.lr.ph164.preheader, label %.lr.ph156, !llvm.loop !68

.lr.ph164.preheader:                              ; preds = %.lr.ph156, %.thread
  %.184.idx.lcssa150194202 = phi i64 [ 0, %.thread ], [ -2, %.lr.ph156 ] ; 3 uses
  %.196.lcssa196201 = phi i32 [ %.095, %.thread ], [ %i.cf, %.lr.ph156 ] ; 4 uses
  %6 = icmp eq i64 %storemerge, 0
  br i1 %6, label %._crit_edge157.thread.thread, label %._crit_edge165

._crit_edge157.thread.thread:                     ; preds = %.lr.ph164.preheader
  %.184.ptr.le.le = getelementptr inbounds i8, ptr %.083, i64 %.184.idx.lcssa150194202 ; 4 uses
  %.not119 = icmp eq i32 %.196.lcssa196201, 0
  br i1 %.not119, label %bb.r, label %bb.p

bb.p:                                             ; preds = %._crit_edge157.thread.thread
  %i.cg = load i8, ptr %.184.ptr.le.le, align 1, !tbaa !8
  %i.ch = icmp eq i8 %i.cg, 48
  br i1 %i.ch, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ci = getelementptr inbounds nuw i8, ptr %.184.ptr.le.le, i64 1
  %i.cj = add nsw i32 %.196.lcssa196201, -1
  br label %bb.r

._crit_edge165:                                   ; preds = %.lr.ph164.preheader
  %scevgep = getelementptr i8, ptr %.083, i64 -8
  %7 = add nsw i64 %.184.idx.lcssa150194202, 8
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep, i8 48, i64 %7, i1 false), !tbaa !8
  %8 = add i32 %.196.lcssa196201, 8
  %9 = trunc nsw i64 %.184.idx.lcssa150194202 to i32
  %10 = add i32 %8, %9
  %.3.ptr = getelementptr inbounds i8, ptr %.083, i64 -8
  br label %bb.n

bb.r:                                             ; preds = %bb.q, %bb.p, %._crit_edge157.thread.thread
  %.499.ph = phi i32 [ 0, %._crit_edge157.thread.thread ], [ %.196.lcssa196201, %bb.p ], [ %i.cj, %bb.q ]
  %.4.ph = phi ptr [ %.184.ptr.le.le, %._crit_edge157.thread.thread ], [ %.184.ptr.le.le, %bb.p ], [ %i.ci, %bb.q ]
  store i32 %.494, ptr %3, align 4, !tbaa !9
  store ptr %.4.ph, ptr %0, align 8, !tbaa !15
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.d, %bb.b
  %.499.ph.sink = phi i32 [ %.499.ph, %bb.r ], [ 1, %bb.d ], [ 3, %bb.b ]
  store i32 %.499.ph.sink, ptr %1, align 4, !tbaa !9
  %i.ck = lshr i64 %i.c, 63
  %i.cl = trunc nuw nsw i64 %i.ck to i32
  ret i32 %i.cl
}

; Function Attrs: nounwind uwtable
define i32 @stbsp_sprintf(ptr noundef %0, ptr noundef %1, ...) local_unnamed_addr #4 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  call void @llvm.va_start.p0(ptr nonnull %2)
  %i.a = call i32 @stbsp_vsprintfcb(ptr noundef null, ptr noundef null, ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2)
  call void @llvm.va_end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  ret i32 %i.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #6

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define ptr @stbsp__clamp_callback(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef captures(ret: address, provenance) %1, i32 noundef %2) #7 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !69
  %i.d = add nsw i32 %i.c, %2
  store i32 %i.d, ptr %i.b, align 4, !tbaa !69
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !71   ; 3 uses
  %spec.select = tail call i32 @llvm.smin.i32(i32 %2, i32 %i.f) ; 3 uses
  %.not = icmp eq i32 %spec.select, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %1, align 8, !tbaa !72     ; 8 uses
  %.not34 = icmp eq ptr %0, %i.g
  %.pre36 = sext i32 %spec.select to i64          ; 3 uses
  br i1 %.not34, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %bb.b
  %i.h = ptrtoaddr ptr %i.g to i64
  %i.i = getelementptr inbounds i8, ptr %0, i64 %.pre36
  %i.j = add i64 %i.a, %.pre36
  %i.k = add i64 %i.a, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.j, i64 %i.k)
  %i.l = sub i64 %umax, %i.a                      ; 7 uses
  %min.iters.check = icmp ult i64 %i.l, 4
  %i.m = sub i64 %i.a, %i.h
  %diff.check = icmp ugt i64 %i.m, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check40 = icmp ult i64 %i.l, 32
  br i1 %min.iters.check40, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.n = and i64 %i.l, 28
  %n.vec = and i64 %i.l, -32                      ; 5 uses
  %i.o = getelementptr i8, ptr %0, i64 %n.vec
  %i.p = getelementptr i8, ptr %i.g, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %0, i64 %index ; 2 uses
  %next.gep41 = getelementptr i8, ptr %i.g, i64 %index ; 2 uses
  %i.q = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !8
  %wide.load42 = load <16 x i8>, ptr %i.q, align 1, !tbaa !8
  %i.r = getelementptr i8, ptr %next.gep41, i64 16
  store <16 x i8> %wide.load, ptr %next.gep41, align 1, !tbaa !8
  store <16 x i8> %wide.load42, ptr %i.r, align 1, !tbaa !8
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.s = icmp eq i64 %index.next, %n.vec
  br i1 %i.s, label %middle.block, label %vector.body, !llvm.loop !73

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.l, %n.vec
  br i1 %cmp.n, label %.loopexit.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.n, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !54

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec44 = and i64 %i.l, -4                     ; 4 uses
  %i.t = getelementptr i8, ptr %0, i64 %n.vec44
  %i.u = getelementptr i8, ptr %i.g, i64 %n.vec44
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index45 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next49, %vec.epilog.vector.body ] ; 3 uses
  %next.gep46 = getelementptr i8, ptr %0, i64 %index45
  %next.gep47 = getelementptr i8, ptr %i.g, i64 %index45
  %wide.load48 = load <4 x i8>, ptr %next.gep46, align 1, !tbaa !8
  store <4 x i8> %wide.load48, ptr %next.gep47, align 1, !tbaa !8
  %index.next49 = add nuw i64 %index45, 4         ; 2 uses
  %i.v = icmp eq i64 %index.next49, %n.vec44
  br i1 %i.v, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !74

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n50 = icmp eq i64 %i.l, %n.vec44
  br i1 %cmp.n50, label %.loopexit.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.026.ph = phi ptr [ %0, %iter.check ], [ %i.o, %vec.epilog.iter.check ], [ %i.t, %vec.epilog.middle.block ]
  %.0.ph = phi ptr [ %i.g, %iter.check ], [ %i.p, %vec.epilog.iter.check ], [ %i.u, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.026 = phi ptr [ %i.w, %vec.epilog.scalar.ph ], [ %.026.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.0 = phi ptr [ %i.y, %vec.epilog.scalar.ph ], [ %.0.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.026, i64 1 ; 2 uses
  %i.x = load i8, ptr %.026, align 1, !tbaa !8
  %i.y = getelementptr inbounds nuw i8, ptr %.0, i64 1
  store i8 %i.x, ptr %.0, align 1, !tbaa !8
  %i.z = icmp ult ptr %i.w, %i.i
  br i1 %i.z, label %vec.epilog.scalar.ph, label %.loopexit.loopexit, !llvm.loop !75

.loopexit.loopexit:                               ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.pre = load ptr, ptr %1, align 8, !tbaa !72
  %.pre35 = load i32, ptr %i.e, align 8, !tbaa !71
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %.loopexit.loopexit
  %i.aa = phi i32 [ %.pre35, %.loopexit.loopexit ], [ %i.f, %bb.b ]
  %i.ab = phi ptr [ %.pre, %.loopexit.loopexit ], [ %i.g, %bb.b ]
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 %.pre36
  store ptr %i.ac, ptr %1, align 8, !tbaa !72
  %i.ad = sub nsw i32 %i.aa, %spec.select         ; 2 uses
  store i32 %i.ad, ptr %i.e, align 8, !tbaa !71
  br label %bb.c

bb.c:                                             ; preds = %.loopexit, %bb.a
  %i.ae = phi i32 [ %i.ad, %.loopexit ], [ %i.f, %bb.a ] ; 2 uses
  %i.af = icmp slt i32 %i.ae, 1
  br i1 %i.af, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.ah = icmp samesign ugt i32 %i.ae, 511
  br i1 %i.ah, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ai = load ptr, ptr %1, align 8, !tbaa !72
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.d
  %.028 = phi ptr [ %i.ag, %bb.d ], [ %i.ai, %bb.f ], [ %i.aj, %bb.g ]
  ret ptr %.028
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define nonnull ptr @stbsp__count_clamp_callback(ptr nofree readnone captures(none) %0, ptr nofree noundef captures(ret: address, provenance) %1, i32 noundef %2) #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !69
  %i.c = add nsw i32 %i.b, %2
  store i32 %i.c, ptr %i.a, align 4, !tbaa !69
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  ret ptr %i.d
}

; Function Attrs: nounwind uwtable
define i32 @stbsp_vsnprintf(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #4 {
bb.a:
  %4 = alloca %struct.stbsp__context, align 8     ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %i.a = icmp ne i32 %1, 0
  %i.b = icmp ne ptr %0, null
  %or.cond = or i1 %i.b, %i.a
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 0, ptr %i.c, align 4, !tbaa !69
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.e = call i32 @stbsp_vsprintfcb(ptr noundef nonnull @stbsp__count_clamp_callback, ptr noundef nonnull %4, ptr noundef nonnull %i.d, ptr noundef %2, ptr noundef %3) ; 0 uses
  br label %bb.g
end_hunk_0
