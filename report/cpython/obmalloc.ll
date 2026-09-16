Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/obmalloc?download=true
inline.NumInlined: 1359
inline.NumDeleted: 295
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 45
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_mi_options_init:bb.a
  br i1 %.not3.i.i, label %mi_add_stderr_output.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @stderr, align 8, !tbaa !190
  %i.e = tail call i32 @fputs(ptr noundef nonnull readonly @out_buf, ptr noundef %i.d) #64 ; 0 uses
  br label %mi_add_stderr_output.exit

mi_add_stderr_output.exit:                        ; preds = %bb.a, %bb.b
  store i8 10, ptr %i.b, align 1, !tbaa !101
  store volatile ptr @mi_out_buf_stderr, ptr @mi_out_default, align 8, !tbaa !84
  br label %bb.f

bb.c:                                             ; preds = %mi_option_get.exit7
  %i.f = load i32, ptr getelementptr inbounds nuw (i8, ptr @options, i64 616), align 8, !tbaa !133
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.d, label %mi_option_get.exit, !prof !61

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @mi_option_init(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @options, i64 608)), !inline_history !134
  br label %mi_option_get.exit

mi_option_get.exit:                               ; preds = %bb.c, %bb.d
  %i.h = load i64, ptr getelementptr inbounds nuw (i8, ptr @options, i64 608), align 16, !tbaa !135
  store i64 %i.h, ptr @mi_max_error_count, align 8, !tbaa !128
  %i.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @options, i64 648), align 8, !tbaa !133
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.e, label %mi_option_get.exit6, !prof !61

bb.e:                                             ; preds = %mi_option_get.exit
  tail call fastcc void @mi_option_init(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @options, i64 640)), !inline_history !134
  br label %mi_option_get.exit6

mi_option_get.exit6:                              ; preds = %mi_option_get.exit, %bb.e
  %i.k = load i64, ptr getelementptr inbounds nuw (i8, ptr @options, i64 640), align 16, !tbaa !135
  store i64 %i.k, ptr @mi_max_warning_count, align 8, !tbaa !128
  ret void

bb.f:                                             ; preds = %mi_add_stderr_output.exit, %mi_option_get.exit7
  %indvars.iv = phi i64 [ 0, %mi_add_stderr_output.exit ], [ %indvars.iv.next, %mi_option_get.exit7 ] ; 2 uses
  %i.l = getelementptr [32 x i8], ptr @options, i64 %indvars.iv ; 4 uses
  %i.m = getelementptr i8, ptr %i.l, i64 8
  %i.n = load i32, ptr %i.m, align 8, !tbaa !133
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.g, label %mi_option_get.exit7, !prof !61

bb.g:                                             ; preds = %bb.f
  tail call fastcc void @mi_option_init(ptr noundef %i.l), !inline_history !134
  br label %mi_option_get.exit7

mi_option_get.exit7:                              ; preds = %bb.f, %bb.g
  %i.p = getelementptr i8, ptr %i.l, i64 16
  %i.q = load ptr, ptr %i.p, align 16, !tbaa !191
  %i.r = load i64, ptr %i.l, align 16, !tbaa !135
  tail call void (ptr, ...) @_mi_verbose_message(ptr noundef nonnull @.str.22, ptr noundef %i.q, i64 noundef %i.r)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 26
  br i1 %exitcond.not, label %bb.c, label %bb.f, !llvm.loop !537
}

; Function Attrs: nounwind uwtable
define internal fastcc void @mi_option_init(ptr nofree noundef captures(none) %0) unnamed_addr #2 {
.lr.ph.i:
  %i.a = alloca [65 x i8], align 16               ; 8 uses
  %i.b = alloca [65 x i8], align 16               ; 19 uses
  %i.c = alloca ptr, align 8                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #55
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store <8 x i8> <i8 109, i8 105, i8 109, i8 97, i8 108, i8 108, i8 111, i8 99>, ptr %i.b, align 16, !tbaa !101
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 9 ; 2 uses
  store i8 95, ptr %i.d, align 8, !tbaa !101
  store i8 0, ptr %i.e, align 1, !tbaa !101
  %i.f = getelementptr i8, ptr %0, i64 16         ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !191  ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %_mi_strlcat.exit, label %.lr.ph.i40

.lr.ph.i40:                                       ; preds = %.lr.ph.i, %.lr.ph.i40
  %.017.i = phi i64 [ %i.j, %.lr.ph.i40 ], [ 65, %.lr.ph.i ] ; 2 uses
  %.01216.i41 = phi ptr [ %i.i, %.lr.ph.i40 ], [ %i.b, %.lr.ph.i ]
  %i.i = getelementptr i8, ptr %.01216.i41, i64 1 ; 4 uses
  %i.j = add nsw i64 %.017.i, -1                  ; 2 uses
  %i.k = load i8, ptr %i.i, align 1, !tbaa !101
  %i.l = icmp ne i8 %i.k, 0
  %i.m = icmp samesign ugt i64 %.017.i, 2         ; 2 uses
  %i.n = select i1 %i.l, i1 %i.m, i1 false
  br i1 %i.n, label %.lr.ph.i40, label %.preheader.i.i, !llvm.loop !22

.preheader.i.i:                                   ; preds = %.lr.ph.i40
  %i.o = load i8, ptr %i.g, align 1, !tbaa !101   ; 2 uses
  %i.p = icmp ne i8 %i.o, 0
  %i.q = and i1 %i.m, %i.p
  br i1 %i.q, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %.lr.ph.i.i
  %i.r = phi i8 [ %i.v, %.lr.ph.i.i ], [ %i.o, %.preheader.i.i ]
  %.018.i.i = phi i64 [ %i.u, %.lr.ph.i.i ], [ %i.j, %.preheader.i.i ]
  %.01117.i.i = phi ptr [ %i.s, %.lr.ph.i.i ], [ %i.g, %.preheader.i.i ]
  %.01216.i.i = phi ptr [ %i.t, %.lr.ph.i.i ], [ %i.i, %.preheader.i.i ] ; 2 uses
  %i.s = getelementptr i8, ptr %.01117.i.i, i64 1 ; 2 uses
  %i.t = getelementptr i8, ptr %.01216.i.i, i64 1 ; 2 uses
  store i8 %i.r, ptr %.01216.i.i, align 1, !tbaa !101
  %i.u = add nsw i64 %.018.i.i, -1                ; 2 uses
  %i.v = load i8, ptr %i.s, align 1, !tbaa !101   ; 2 uses
  %i.w = icmp ne i8 %i.v, 0
  %i.x = icmp ugt i64 %i.u, 1
  %i.y = select i1 %i.w, i1 %i.x, i1 false
  br i1 %i.y, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !23

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %.preheader.i.i
  %.012.lcssa.i.i = phi ptr [ %i.i, %.preheader.i.i ], [ %i.t, %.lr.ph.i.i ]
  store i8 0, ptr %.012.lcssa.i.i, align 1, !tbaa !101
  br label %_mi_strlcat.exit

_mi_strlcat.exit:                                 ; preds = %.lr.ph.i, %._crit_edge.i.i
  %i.z = call noundef zeroext i1 @_mi_prim_getenv(ptr noundef nonnull readonly %i.b, ptr noundef nonnull %i.a, i64 noundef 65)
  br i1 %i.z, label %.preheader.i64.preheader, label %bb.a

bb.a:                                             ; preds = %_mi_strlcat.exit
  %i.aa = getelementptr i8, ptr %0, i64 24        ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !541 ; 3 uses
  %.not = icmp eq ptr %i.ab, null
  br i1 %.not, label %bb.t, label %.lr.ph.i60.preheader

.lr.ph.i60.preheader:                             ; preds = %bb.a
  store <8 x i8> <i8 109, i8 105, i8 109, i8 97, i8 108, i8 108, i8 111, i8 99>, ptr %i.b, align 16, !tbaa !101
  store i8 95, ptr %i.d, align 8, !tbaa !101
  store i8 0, ptr %i.e, align 1, !tbaa !101
  br label %.lr.ph.i60

.lr.ph.i60:                                       ; preds = %.lr.ph.i60.preheader, %.lr.ph.i60
  %.017.i61 = phi i64 [ %i.ad, %.lr.ph.i60 ], [ 65, %.lr.ph.i60.preheader ] ; 2 uses
  %.01216.i62 = phi ptr [ %i.ac, %.lr.ph.i60 ], [ %i.b, %.lr.ph.i60.preheader ]
  %i.ac = getelementptr i8, ptr %.01216.i62, i64 1 ; 4 uses
  %i.ad = add nsw i64 %.017.i61, -1               ; 2 uses
  %i.ae = load i8, ptr %i.ac, align 1, !tbaa !101
  %i.af = icmp ne i8 %i.ae, 0
  %i.ag = icmp samesign ugt i64 %.017.i61, 2      ; 2 uses
  %i.ah = select i1 %i.af, i1 %i.ag, i1 false
  br i1 %i.ah, label %.lr.ph.i60, label %.preheader.i.i50, !llvm.loop !22

.preheader.i.i50:                                 ; preds = %.lr.ph.i60
  %i.ai = load i8, ptr %i.ab, align 1, !tbaa !101 ; 2 uses
  %i.aj = icmp ne i8 %i.ai, 0
  %i.ak = and i1 %i.ag, %i.aj
  br i1 %i.ak, label %.lr.ph.i.i56, label %_mi_strlcat.exit63

.lr.ph.i.i56:                                     ; preds = %.preheader.i.i50, %.lr.ph.i.i56
  %i.al = phi i8 [ %i.ap, %.lr.ph.i.i56 ], [ %i.ai, %.preheader.i.i50 ]
  %.018.i.i57 = phi i64 [ %i.ao, %.lr.ph.i.i56 ], [ %i.ad, %.preheader.i.i50 ]
  %.01117.i.i58 = phi ptr [ %i.am, %.lr.ph.i.i56 ], [ %i.ab, %.preheader.i.i50 ]
  %.01216.i.i59 = phi ptr [ %i.an, %.lr.ph.i.i56 ], [ %i.ac, %.preheader.i.i50 ] ; 2 uses
  %i.am = getelementptr i8, ptr %.01117.i.i58, i64 1 ; 2 uses
  %i.an = getelementptr i8, ptr %.01216.i.i59, i64 1 ; 2 uses
  store i8 %i.al, ptr %.01216.i.i59, align 1, !tbaa !101
  %i.ao = add nsw i64 %.018.i.i57, -1             ; 2 uses
  %i.ap = load i8, ptr %i.am, align 1, !tbaa !101 ; 2 uses
  %i.aq = icmp ne i8 %i.ap, 0
  %i.ar = icmp ugt i64 %i.ao, 1
  %i.as = select i1 %i.aq, i1 %i.ar, i1 false
  br i1 %i.as, label %.lr.ph.i.i56, label %_mi_strlcat.exit63, !llvm.loop !23

_mi_strlcat.exit63:                               ; preds = %.lr.ph.i.i56, %.preheader.i.i50
  %.012.lcssa.i.i55 = phi ptr [ %i.ac, %.preheader.i.i50 ], [ %i.an, %.lr.ph.i.i56 ]
  store i8 0, ptr %.012.lcssa.i.i55, align 1, !tbaa !101
  %i.at = call noundef zeroext i1 @_mi_prim_getenv(ptr noundef nonnull readonly %i.b, ptr noundef nonnull %i.a, i64 noundef 65)
  br i1 %i.at, label %bb.b, label %bb.t

bb.b:                                             ; preds = %_mi_strlcat.exit63
  %i.au = load ptr, ptr %i.aa, align 8, !tbaa !541
  %i.av = load ptr, ptr %i.f, align 8, !tbaa !191
  call void (ptr, ...) @_mi_warning_message(ptr noundef nonnull @.str.89, ptr noundef %i.au, ptr noundef %i.av)
  br label %.preheader.i64.preheader

.preheader.i64.preheader:                         ; preds = %_mi_strlcat.exit, %bb.b
  br label %.preheader.i64

.preheader.i64:                                   ; preds = %.preheader.i64.preheader, %.preheader.i64
  %.0.i = phi i64 [ %i.bb, %.preheader.i64 ], [ 0, %.preheader.i64.preheader ] ; 13 uses
  %i.aw = getelementptr i8, ptr %i.a, i64 %.0.i
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !101
  %i.ay = icmp ne i8 %i.ax, 0
  %i.az = icmp samesign ult i64 %.0.i, 64
  %i.ba = and i1 %i.az, %i.ay
  %i.bb = add nuw nsw i64 %.0.i, 1
  br i1 %i.ba, label %.preheader.i64, label %_mi_strnlen.exit.preheader, !llvm.loop !24

_mi_strnlen.exit.preheader:                       ; preds = %.preheader.i64
  %.not80 = icmp eq i64 %.0.i, 0
  br i1 %.not80, label %_mi_strnlen.exit._crit_edge, label %iter.check

iter.check:                                       ; preds = %_mi_strnlen.exit.preheader
  %min.iters.check = icmp samesign ult i64 %.0.i, 8
  br i1 %min.iters.check, label %_mi_strnlen.exit.preheader119, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check112 = icmp samesign ult i64 %.0.i, 32
  br i1 %min.iters.check112, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %.0.i, 9223372036854775776     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bc = getelementptr i8, ptr %i.a, i64 %index  ; 2 uses
  %i.bd = getelementptr i8, ptr %i.bc, i64 16
  %wide.load = load <16 x i8>, ptr %i.bc, align 16, !tbaa !101 ; 3 uses
  %wide.load113 = load <16 x i8>, ptr %i.bd, align 16, !tbaa !101 ; 3 uses
  %i.be = add <16 x i8> %wide.load, splat (i8 -97)
  %i.bf = add <16 x i8> %wide.load113, splat (i8 -97)
  %i.bg = icmp ult <16 x i8> %i.be, splat (i8 26)
  %i.bh = icmp ult <16 x i8> %i.bf, splat (i8 26)
  %i.bi = add nsw <16 x i8> %wide.load, splat (i8 -32)
  %i.bj = add nsw <16 x i8> %wide.load113, splat (i8 -32)
  %i.bk = select <16 x i1> %i.bg, <16 x i8> %i.bi, <16 x i8> %wide.load
  %i.bl = select <16 x i1> %i.bh, <16 x i8> %i.bj, <16 x i8> %wide.load113
  %i.bm = getelementptr i8, ptr %i.b, i64 %index  ; 2 uses
  %i.bn = getelementptr i8, ptr %i.bm, i64 16
  store <16 x i8> %i.bk, ptr %i.bm, align 16, !tbaa !101
  store <16 x i8> %i.bl, ptr %i.bn, align 16, !tbaa !101
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bo = icmp eq i64 %index.next, %n.vec
  br i1 %i.bo, label %middle.block, label %vector.body, !llvm.loop !538

middle.block:                                     ; preds = %vector.body
  %1 = and i64 %.0.i, 24
  %cmp.n = icmp eq i64 %.0.i, %n.vec
  br i1 %cmp.n, label %_mi_strnlen.exit._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %1, 0
  br i1 %min.epilog.iters.check, label %_mi_strnlen.exit.preheader119, label %vec.epilog.ph, !prof !542

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec114 = and i64 %.0.i, 9223372036854775800  ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index115 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next117, %vec.epilog.vector.body ] ; 3 uses
  %i.bp = getelementptr i8, ptr %i.a, i64 %index115
  %wide.load116 = load <8 x i8>, ptr %i.bp, align 8, !tbaa !101 ; 3 uses
  %i.bq = add <8 x i8> %wide.load116, splat (i8 -97)
  %i.br = icmp ult <8 x i8> %i.bq, splat (i8 26)
  %i.bs = add nsw <8 x i8> %wide.load116, splat (i8 -32)
  %i.bt = select <8 x i1> %i.br, <8 x i8> %i.bs, <8 x i8> %wide.load116
  %i.bu = getelementptr i8, ptr %i.b, i64 %index115
  store <8 x i8> %i.bt, ptr %i.bu, align 8, !tbaa !101
  %index.next117 = add nuw i64 %index115, 8       ; 2 uses
  %i.bv = icmp eq i64 %index.next117, %n.vec114
  br i1 %i.bv, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !539

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n118 = icmp eq i64 %.0.i, %n.vec114
  br i1 %cmp.n118, label %_mi_strnlen.exit._crit_edge, label %_mi_strnlen.exit.preheader119

_mi_strnlen.exit.preheader119:                    ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.03379.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec114, %vec.epilog.middle.block ]
  br label %_mi_strnlen.exit

_mi_strnlen.exit._crit_edge:                      ; preds = %_mi_strnlen.exit, %middle.block, %vec.epilog.middle.block, %_mi_strnlen.exit.preheader
  %i.bw = getelementptr i8, ptr %i.b, i64 %.0.i
  store i8 0, ptr %i.bw, align 1, !tbaa !101
  %i.bx = load i8, ptr %i.b, align 16, !tbaa !101
  %i.by = icmp eq i8 %i.bx, 0
  br i1 %i.by, label %bb.d, label %bb.c

_mi_strnlen.exit:                                 ; preds = %_mi_strnlen.exit.preheader119, %_mi_strnlen.exit
  %.03379 = phi i64 [ %i.ce, %_mi_strnlen.exit ], [ %.03379.ph, %_mi_strnlen.exit.preheader119 ] ; 3 uses
  %i.bz = getelementptr i8, ptr %i.a, i64 %.03379
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !101 ; 3 uses
  %i.cb = add i8 %i.ca, -97
  %or.cond.i = icmp ult i8 %i.cb, 26
  %i.cc = add nsw i8 %i.ca, -32
  %.0.i65 = select i1 %or.cond.i, i8 %i.cc, i8 %i.ca
  %i.cd = getelementptr i8, ptr %i.b, i64 %.03379
  store i8 %.0.i65, ptr %i.cd, align 1, !tbaa !101
  %i.ce = add nuw nsw i64 %.03379, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.ce, %.0.i
  br i1 %exitcond.not, label %_mi_strnlen.exit._crit_edge, label %_mi_strnlen.exit, !llvm.loop !540

bb.c:                                             ; preds = %_mi_strnlen.exit._crit_edge
  %i.cf = call ptr @strstr(ptr noundef nonnull dereferenceable(1) @.str.90, ptr noundef nonnull dereferenceable(1) %i.b) #61
  %.not38 = icmp eq ptr %i.cf, null
  br i1 %.not38, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %_mi_strnlen.exit._crit_edge
  store i64 1, ptr %0, align 8, !tbaa !135
  %i.cg = getelementptr i8, ptr %0, i64 8
  store i32 2, ptr %i.cg, align 8, !tbaa !133
  br label %bb.v

bb.e:                                             ; preds = %bb.c
  %i.ch = call ptr @strstr(ptr noundef nonnull dereferenceable(1) @.str.91, ptr noundef nonnull dereferenceable(1) %i.b) #61
  %.not39 = icmp eq ptr %i.ch, null
  br i1 %.not39, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i64 0, ptr %0, align 8, !tbaa !135
  %i.ci = getelementptr i8, ptr %0, i64 8
  store i32 2, ptr %i.ci, align 8, !tbaa !133
  br label %bb.v

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #55
  store ptr %i.b, ptr %i.c, align 8, !tbaa !130
  %i.cj = call i64 @__isoc23_strtol(ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, i32 noundef 10) #55 ; 5 uses
  %i.ck = getelementptr i8, ptr %0, i64 12
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !543 ; 2 uses
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !130 ; 4 uses
  switch i32 %i.cl, label %.thread67 [
    i32 9, label %bb.h
    i32 23, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g, %bb.g
  %i.cm = load i8, ptr %.pre, align 1, !tbaa !101 ; 2 uses
  switch i8 %i.cm, label %bb.k [
    i8 75, label %thread-pre-split
    i8 77, label %bb.i
    i8 71, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  %i.cn = shl i64 %i.cj, 10
  br label %thread-pre-split

bb.j:                                             ; preds = %bb.h
  %i.co = shl i64 %i.cj, 20
  br label %thread-pre-split

bb.k:                                             ; preds = %bb.h
  %i.cp = add i64 %i.cj, 1023
  %i.cq = lshr i64 %i.cp, 10
  br label %bb.l

thread-pre-split:                                 ; preds = %bb.h, %bb.j, %bb.i
  %.0.ph = phi i64 [ %i.co, %bb.j ], [ %i.cn, %bb.i ], [ %i.cj, %bb.h ]
  %i.cr = getelementptr i8, ptr %.pre, i64 1      ; 3 uses
  store ptr %i.cr, ptr %i.c, align 8, !tbaa !130
  %.pr = load i8, ptr %i.cr, align 1, !tbaa !101
  br label %bb.l

bb.l:                                             ; preds = %thread-pre-split, %bb.k
  %i.cs = phi i8 [ %.pr, %thread-pre-split ], [ %i.cm, %bb.k ]
  %i.ct = phi ptr [ %i.cr, %thread-pre-split ], [ %.pre, %bb.k ] ; 4 uses
  %.0 = phi i64 [ %.0.ph, %thread-pre-split ], [ %i.cq, %bb.k ] ; 3 uses
  switch i8 %i.cs, label %.thread67 [
    i8 73, label %bb.m
    i8 66, label %.thread67.sink.split
  ]

bb.m:                                             ; preds = %bb.l
  %i.cu = getelementptr i8, ptr %i.ct, i64 1
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !101
  %i.cw = icmp eq i8 %i.cv, 66
  br i1 %i.cw, label %.thread67.sink.split, label %.thread67

.thread67.sink.split:                             ; preds = %bb.l, %bb.m
  %.sink103 = phi i64 [ 2, %bb.m ], [ 1, %bb.l ]
  %i.cx = getelementptr i8, ptr %i.ct, i64 %.sink103 ; 2 uses
  store ptr %i.cx, ptr %i.c, align 8, !tbaa !130
  br label %.thread67

.thread67:                                        ; preds = %.thread67.sink.split, %bb.g, %bb.l, %bb.m
  %i.cy = phi ptr [ %i.ct, %bb.m ], [ %.pre, %bb.g ], [ %i.ct, %bb.l ], [ %i.cx, %.thread67.sink.split ]
  %.1 = phi i64 [ %.0, %bb.m ], [ %i.cj, %bb.g ], [ %.0, %bb.l ], [ %.0, %.thread67.sink.split ]
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !101
  %i.da = icmp eq i8 %i.cz, 0
  br i1 %i.da, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.thread67
  store i64 %.1, ptr %0, align 8, !tbaa !135
  %i.db = getelementptr i8, ptr %0, i64 8
  store i32 2, ptr %i.db, align 8, !tbaa !133
  br label %bb.s

bb.o:                                             ; preds = %.thread67
  %i.dc = getelementptr i8, ptr %0, i64 8
  store i32 1, ptr %i.dc, align 8, !tbaa !133
  %i.dd = icmp eq i32 %i.cl, 2
  br i1 %i.dd, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.de = load i64, ptr %0, align 8, !tbaa !135
  %i.df = icmp eq i64 %i.de, 0
  br i1 %i.df, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i64 1, ptr %0, align 8, !tbaa !135
  %i.dg = load ptr, ptr %i.f, align 8, !tbaa !191
  call void (ptr, ...) @_mi_warning_message(ptr noundef nonnull @.str.92, ptr noundef %i.dg)
  store i64 0, ptr %0, align 8, !tbaa !135
  br label %bb.s

bb.r:                                             ; preds = %bb.p, %bb.o
  %i.dh = load ptr, ptr %i.f, align 8, !tbaa !191
  call void (ptr, ...) @_mi_warning_message(ptr noundef nonnull @.str.92, ptr noundef %i.dh)
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #55
  br label %bb.v

bb.t:                                             ; preds = %bb.a, %_mi_strlcat.exit63
  %i.di = call zeroext i1 @_mi_preloading()
  br i1 %i.di, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dj = getelementptr i8, ptr %0, i64 8
  store i32 1, ptr %i.dj, align 8, !tbaa !133
  br label %bb.v

bb.v:                                             ; preds = %bb.d, %bb.s, %bb.f, %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  ret void
}

; Function Attrs: nounwind uwtable
define hidden range(i64 0, -1023) i64 @mi_option_get_size(i32 noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp ugt i32 %0, 25
  br i1 %i.a, label %mi_option_get.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
end_hunk_0
begin_hunk_1_@_mi_page_queue_append:bb.a
.critedge.2.i:                                    ; preds = %bb.e, %.critedge.outer.2.i
  %i.t = load atomic i64, ptr %i.j acquire, align 8 ; 3 uses
  %i.u = trunc i64 %i.t to i32
  %i.v = and i32 %i.u, 3
  switch i32 %i.v, label %.critedge.2.i.unreachabledefault [
    i32 1, label %.critedge.outer.3.i
    i32 3, label %_mi_page_use_delayed_free.exit
    i32 0, label %_mi_page_use_delayed_free.exit
    i32 2, label %bb.e
  ], !prof !192

.critedge.outer.3.i:                              ; preds = %.critedge.2.i
  tail call void @llvm.x86.sse2.pause()
  br label %.critedge.3.i

bb.e:                                             ; preds = %.critedge.2.i
  %i.w = and i64 %i.t, -4
  %i.x = cmpxchg weak ptr %i.j, i64 %i.t, i64 %i.w release monotonic, align 8
  %i.y = extractvalue { i64, i1 } %i.x, 1
  br i1 %i.y, label %_mi_page_use_delayed_free.exit, label %.critedge.2.i, !llvm.loop !5

.critedge.3.i:                                    ; preds = %bb.f, %.critedge.outer.3.i
  %i.z = load atomic i64, ptr %i.j acquire, align 8 ; 3 uses
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.aa, 3
  switch i32 %i.ab, label %.critedge.3.i.unreachabledefault [
    i32 1, label %.critedge.outer.4.i
    i32 3, label %_mi_page_use_delayed_free.exit
    i32 0, label %_mi_page_use_delayed_free.exit
    i32 2, label %bb.f
  ], !prof !192

.critedge.outer.4.i:                              ; preds = %.critedge.3.i
  tail call void @llvm.x86.sse2.pause()
  br label %.critedge.4.i

bb.f:                                             ; preds = %.critedge.3.i
  %i.ac = and i64 %i.z, -4
  %i.ad = cmpxchg weak ptr %i.j, i64 %i.z, i64 %i.ac release monotonic, align 8
  %i.ae = extractvalue { i64, i1 } %i.ad, 1
  br i1 %i.ae, label %_mi_page_use_delayed_free.exit, label %.critedge.3.i, !llvm.loop !5

.critedge.4.i:                                    ; preds = %bb.g, %.critedge.outer.4.i
  %i.af = load atomic i64, ptr %i.j acquire, align 8 ; 3 uses
  %i.ag = trunc i64 %i.af to i32
  %i.ah = and i32 %i.ag, 3
  switch i32 %i.ah, label %.critedge.4.i.unreachabledefault [
    i32 1, label %.lr.ph.i
    i32 3, label %_mi_page_use_delayed_free.exit
    i32 0, label %_mi_page_use_delayed_free.exit
    i32 2, label %bb.g
  ], !prof !192

bb.g:                                             ; preds = %.critedge.4.i
  %i.ai = and i64 %i.af, -4
  %i.aj = cmpxchg weak ptr %i.j, i64 %i.af, i64 %i.ai release monotonic, align 8
  %i.ak = extractvalue { i64, i1 } %i.aj, 1
  br i1 %i.ak, label %_mi_page_use_delayed_free.exit, label %.critedge.4.i, !llvm.loop !5

.critedge.4.i.unreachabledefault:                 ; preds = %.critedge.4.i
  unreachable

.critedge.3.i.unreachabledefault:                 ; preds = %.critedge.3.i
  unreachable

.critedge.2.i.unreachabledefault:                 ; preds = %.critedge.2.i
  unreachable

.critedge.1.i.unreachabledefault:                 ; preds = %.critedge.1.i
  unreachable

.critedge.i.unreachabledefault:                   ; preds = %.critedge.i
  unreachable

bb.h:                                             ; preds = %.critedge.i
  %i.al = and i64 %i.k, -4
  %i.am = cmpxchg weak ptr %i.j, i64 %i.k, i64 %i.al release monotonic, align 8
  %i.an = extractvalue { i64, i1 } %i.am, 1
  br i1 %i.an, label %_mi_page_use_delayed_free.exit, label %.critedge.i, !llvm.loop !5

_mi_page_use_delayed_free.exit:                   ; preds = %.critedge.i, %.critedge.i, %bb.h, %.critedge.1.i, %.critedge.1.i, %bb.d, %.critedge.2.i, %.critedge.2.i, %bb.e, %.critedge.3.i, %.critedge.3.i, %bb.f, %.critedge.4.i, %.critedge.4.i, %bb.g, %bb.c
  %i.ao = add i64 %.02439, 1                      ; 7 uses
  %i.ap = getelementptr i8, ptr %.02340, i64 56
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !171 ; 2 uses
  %.not = icmp eq ptr %i.aq, null
  br i1 %.not, label %bb.b, label %bb.c, !llvm.loop !549

bb.i:                                             ; preds = %bb.b
  store ptr %i.g, ptr %1, align 8, !tbaa !105
  %i.ar = getelementptr i8, ptr %2, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !104
  store ptr %i.as, ptr %i.d, align 8, !tbaa !104
  %i.at = getelementptr i8, ptr %1, i64 16
  %i.au = load i64, ptr %i.at, align 8, !tbaa !103 ; 4 uses
  %i.av = icmp ugt i64 %i.au, 1024
  br i1 %i.av, label %mi_heap_queue_first_update.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aw = icmp eq ptr %i.g, null
  %spec.store.select.i = select i1 %i.aw, ptr @_mi_page_empty, ptr %i.g ; 3 uses
  %i.ax = add nuw nsw i64 %i.au, 7
  %i.ay = lshr i64 %i.ax, 3                       ; 8 uses
  %i.az = getelementptr i8, ptr %0, i64 8         ; 3 uses
  %i.ba = getelementptr [8 x i8], ptr %i.az, i64 %i.ay
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !94
  %i.bc = icmp eq ptr %i.bb, %spec.store.select.i
  br i1 %i.bc, label %mi_heap_queue_first_update.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bd = icmp samesign ult i64 %i.au, 9
  br i1 %i.bd, label %.lr.ph.preheader.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.be = icmp samesign ult i64 %i.au, 65
  br i1 %i.be, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bf = trunc nuw nsw i64 %i.ay to i8
  %i.bg = add nuw nsw i8 %i.bf, 1
  %i.bh = and i8 %i.bg, 30
  br label %mi_bin.exit.i

bb.n:                                             ; preds = %bb.l
  %i.bi = add nsw i64 %i.ay, -1                   ; 2 uses
  %i.bj = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bi, i1 false) ; 2 uses
  %i.bk = trunc nuw nsw i64 %i.bj to i8
  %i.bl = sub nsw i64 61, %i.bj
  %i.bm = lshr i64 %i.bi, %i.bl
  %i.bn = trunc nuw nsw i64 %i.bm to i8
  %i.bo = and i8 %i.bn, 3
  %i.bp = shl i8 %i.bk, 2
  %reass.sub = sub i8 %i.bo, %i.bp
  %i.bq = add i8 %reass.sub, -7
  br label %mi_bin.exit.i

mi_bin.exit.i:                                    ; preds = %bb.n, %bb.m
  %.0.i.i = phi i8 [ %i.bq, %bb.n ], [ %i.bh, %bb.m ]
  %i.br = getelementptr i8, ptr %0, i64 1040
  br label %bb.o

bb.o:                                             ; preds = %mi_bin.exit35.i, %mi_bin.exit.i
  %.pn.i = phi ptr [ %1, %mi_bin.exit.i ], [ %.027.i, %mi_bin.exit35.i ] ; 2 uses
  %.027.i = getelementptr i8, ptr %.pn.i, i64 -24 ; 2 uses
  %i.bs = getelementptr i8, ptr %.pn.i, i64 -8
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !103
  %i.bu = add i64 %i.bt, 7                        ; 4 uses
  %i.bv = lshr i64 %i.bu, 3                       ; 4 uses
  %i.bw = icmp ult i64 %i.bu, 16
  br i1 %i.bw, label %mi_bin.exit35.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bx = icmp ult i64 %i.bu, 72
  br i1 %i.bx, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.by = trunc nuw nsw i64 %i.bv to i8
  %i.bz = add nuw nsw i8 %i.by, 1
  %i.ca = and i8 %i.bz, 30
  br label %mi_bin.exit35.i

bb.r:                                             ; preds = %bb.p
  %i.cb = icmp ugt i64 %i.bu, 131079
  br i1 %i.cb, label %mi_bin.exit35.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cc = add nsw i64 %i.bv, -1                   ; 2 uses
  %i.cd = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.cc, i1 false) ; 2 uses
  %i.ce = trunc nuw nsw i64 %i.cd to i8
  %i.cf = sub nsw i64 61, %i.cd
  %i.cg = lshr i64 %i.cc, %i.cf
  %i.ch = trunc i64 %i.cg to i8
  %i.ci = and i8 %i.ch, 3
  %i.cj = shl i8 %i.ce, 2
  %reass.sub42 = sub i8 %i.ci, %i.cj
  %i.ck = add i8 %reass.sub42, -7
  br label %mi_bin.exit35.i

mi_bin.exit35.i:                                  ; preds = %bb.s, %bb.r, %bb.q, %bb.o
  %.0.i34.i = phi i8 [ %i.ck, %bb.s ], [ %i.ca, %bb.q ], [ 1, %bb.o ], [ 73, %bb.r ]
  %i.cl = icmp eq i8 %.0.i.i, %.0.i34.i
  %i.cm = icmp ugt ptr %.027.i, %i.br
  %i.cn = and i1 %i.cm, %i.cl
  br i1 %i.cn, label %bb.o, label %bb.t, !llvm.loop !28

bb.t:                                             ; preds = %mi_bin.exit35.i
  %i.co = add nuw nsw i64 %i.bv, 1
  %.not.i = icmp samesign ult i64 %i.bv, %i.ay
  %spec.select.i = select i1 %.not.i, i64 %i.co, i64 %i.ay ; 2 uses
  %.not3237.i = icmp samesign ugt i64 %spec.select.i, %i.ay
  br i1 %.not3237.i, label %mi_heap_queue_first_update.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.t, %bb.k
  %.145.i = phi i64 [ %spec.select.i, %bb.t ], [ 0, %bb.k ] ; 4 uses
  %i.cp = add nuw nsw i64 %i.ay, 1
  %i.cq = sub nsw i64 %i.cp, %.145.i              ; 3 uses
  %min.iters.check = icmp ult i64 %i.cq, 4
  br i1 %min.iters.check, label %.lr.ph.i27.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %i.cq, -4                      ; 3 uses
  %broadcast.splatinsert = insertelement <2 x ptr> poison, ptr %spec.store.select.i, i64 0
  %broadcast.splat = shufflevector <2 x ptr> %broadcast.splatinsert, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cr = getelementptr [8 x i8], ptr %i.az, i64 %.145.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cs = getelementptr [8 x i8], ptr %i.cr, i64 %index ; 2 uses
  %i.ct = getelementptr i8, ptr %i.cs, i64 16
  store <2 x ptr> %broadcast.splat, ptr %i.cs, align 8, !tbaa !94
  store <2 x ptr> %broadcast.splat, ptr %i.ct, align 8, !tbaa !94
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cu = icmp eq i64 %index.next, %n.vec
  br i1 %i.cu, label %middle.block, label %vector.body, !llvm.loop !550

middle.block:                                     ; preds = %vector.body
  %3 = add i64 %.145.i, %n.vec
  %cmp.n = icmp eq i64 %i.cq, %n.vec
  br i1 %cmp.n, label %mi_heap_queue_first_update.exit, label %.lr.ph.i27.preheader

.lr.ph.i27.preheader:                             ; preds = %.lr.ph.preheader.i, %middle.block
  %.038.i.ph = phi i64 [ %.145.i, %.lr.ph.preheader.i ], [ %3, %middle.block ]
  br label %.lr.ph.i27

.lr.ph.i27:                                       ; preds = %.lr.ph.i27.preheader, %.lr.ph.i27
  %.038.i = phi i64 [ %i.cw, %.lr.ph.i27 ], [ %.038.i.ph, %.lr.ph.i27.preheader ] ; 3 uses
  %i.cv = getelementptr [8 x i8], ptr %i.az, i64 %.038.i
  store ptr %spec.store.select.i, ptr %i.cv, align 8, !tbaa !94
  %i.cw = add nuw nsw i64 %.038.i, 1
  %exitcond.not.i = icmp eq i64 %.038.i, %i.ay
  br i1 %exitcond.not.i, label %mi_heap_queue_first_update.exit, label %.lr.ph.i27, !llvm.loop !551

bb.u:                                             ; preds = %bb.b
  %i.cx = getelementptr i8, ptr %i.e, i64 56
  store ptr %i.g, ptr %i.cx, align 8, !tbaa !171
  %i.cy = getelementptr i8, ptr %i.g, i64 64
  store ptr %i.e, ptr %i.cy, align 8, !tbaa !193
  %i.cz = getelementptr i8, ptr %2, i64 8
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !104
  store ptr %i.da, ptr %i.d, align 8, !tbaa !104
  br label %mi_heap_queue_first_update.exit

mi_heap_queue_first_update.exit:                  ; preds = %.lr.ph.i27, %middle.block, %bb.t, %bb.j, %bb.i, %bb.u, %bb.a
  %.0 = phi i64 [ 0, %bb.a ], [ %i.ao, %bb.u ], [ %i.ao, %bb.i ], [ %i.ao, %bb.j ], [ %i.ao, %bb.t ], [ %i.ao, %middle.block ], [ %i.ao, %.lr.ph.i27 ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define hidden void @_mi_page_use_delayed_free(ptr nofree noundef captures(none) %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call zeroext i1 @_mi_page_try_use_delayed_free(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2)
  br i1 %i.a, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  tail call void @llvm.x86.sse2.pause()
  %i.b = tail call zeroext i1 @_mi_page_try_use_delayed_free(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2)
  br i1 %i.b, label %._crit_edge, label %.lr.ph, !llvm.loop !18

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_mi_page_reclaim(ptr nofree noundef captures(address) %0, ptr noundef initializes((56, 72)) %1) local_unnamed_addr #34 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 28
  %i.b = load i32, ptr %i.a, align 4, !tbaa !65   ; 2 uses
  %i.c = icmp sgt i32 %i.b, -1
  br i1 %i.c, label %bb.b, label %_mi_segment_page_start.exit.i, !prof !96

bb.b:                                             ; preds = %bb.a
  %i.d = zext nneg i32 %i.b to i64
  br label %mi_page_block_size.exit

_mi_segment_page_start.exit.i:                    ; preds = %bb.a
  %i.e = load i32, ptr %1, align 8, !tbaa !93
  %i.f = zext i32 %i.e to i64
  %i.g = shl nuw nsw i64 %i.f, 16
  br label %mi_page_block_size.exit

mi_page_block_size.exit:                          ; preds = %bb.b, %_mi_segment_page_start.exit.i
  %.0.i = phi i64 [ %i.d, %bb.b ], [ %i.g, %_mi_segment_page_start.exit.i ] ; 4 uses
  %i.h = add nuw nsw i64 %.0.i, 7
  %i.i = lshr i64 %i.h, 3                         ; 2 uses
  %i.j = icmp samesign ult i64 %.0.i, 9
  br i1 %i.j, label %mi_page_queue.exit, label %bb.c

bb.c:                                             ; preds = %mi_page_block_size.exit
  %i.k = icmp samesign ult i64 %.0.i, 65
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = add nuw nsw i64 %i.i, 1
  %i.m = and i64 %i.l, 30
  br label %mi_page_queue.exit

bb.e:                                             ; preds = %bb.c
  %i.n = icmp samesign ugt i64 %.0.i, 131072
  br i1 %i.n, label %mi_page_queue.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = add nsw i64 %i.i, -1                     ; 2 uses
  %i.p = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.o, i1 false) ; 2 uses
  %i.q = sub nsw i64 61, %i.p
  %i.r = lshr i64 %i.o, %i.q
  %i.s = and i64 %i.r, 3
  %i.t = shl nuw nsw i64 %i.p, 2
  %reass.sub = sub nsw i64 %i.s, %i.t
  %i.u = add nsw i64 %reass.sub, 249
  %i.v = and i64 %i.u, 255
  br label %mi_page_queue.exit

mi_page_queue.exit:                               ; preds = %mi_page_block_size.exit, %bb.d, %bb.e, %bb.f
  %.0.i.i.i = phi i64 [ %i.v, %bb.f ], [ %i.m, %bb.d ], [ 1, %mi_page_block_size.exit ], [ 73, %bb.e ]
  %i.w = getelementptr i8, ptr %0, i64 1040
  %i.x = getelementptr [24 x i8], ptr %i.w, i64 %.0.i.i.i
  tail call fastcc void @mi_page_queue_push(ptr noundef %0, ptr noundef %i.x, ptr noundef nonnull %1)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @mi_page_queue_push(ptr nofree noundef captures(address) %0, ptr nofree noundef captures(address) %1, ptr noundef initializes((56, 72)) %2) unnamed_addr #34 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 16         ; 2 uses
  %.val = load i64, ptr %i.a, align 8, !tbaa !103
  %i.b = icmp eq i64 %.val, 131088
  %i.c = zext i1 %i.b to i8
  %i.d = getelementptr i8, ptr %2, i64 14         ; 2 uses
  %i.e = load i8, ptr %i.d, align 2
  %i.f = and i8 %i.e, -2
  %i.g = or disjoint i8 %i.f, %i.c
  store i8 %i.g, ptr %i.d, align 2
  %i.h = load ptr, ptr %1, align 8, !tbaa !105    ; 3 uses
  %i.i = getelementptr i8, ptr %2, i64 56
  store ptr %i.h, ptr %i.i, align 8, !tbaa !171
  %i.j = getelementptr i8, ptr %2, i64 64
  store ptr null, ptr %i.j, align 8, !tbaa !193
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr i8, ptr %i.h, i64 64
  store ptr %2, ptr %i.k, align 8, !tbaa !193
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr i8, ptr %1, i64 8
  store ptr %2, ptr %i.l, align 8, !tbaa !104
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  store ptr %2, ptr %1, align 8, !tbaa !105
  %i.m = load i64, ptr %i.a, align 8, !tbaa !103  ; 4 uses
  %i.n = icmp ugt i64 %i.m, 1024
  br i1 %i.n, label %mi_heap_queue_first_update.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nuw nsw i64 %i.m, 7
  %i.p = lshr i64 %i.o, 3                         ; 8 uses
  %i.q = getelementptr i8, ptr %0, i64 8          ; 3 uses
  %i.r = getelementptr [8 x i8], ptr %i.q, i64 %i.p
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !94
  %i.t = icmp eq ptr %i.s, %2
  br i1 %i.t, label %mi_heap_queue_first_update.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = icmp samesign ult i64 %i.m, 9
  br i1 %i.u, label %.lr.ph.preheader.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = icmp samesign ult i64 %i.m, 65
  br i1 %i.v, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.w = trunc nuw nsw i64 %i.p to i8
  %i.x = add nuw nsw i8 %i.w, 1
  %i.y = and i8 %i.x, 30
  br label %mi_bin.exit.i

bb.i:                                             ; preds = %bb.g
  %i.z = add nsw i64 %i.p, -1                     ; 2 uses
  %i.aa = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.z, i1 false) ; 2 uses
  %i.ab = trunc nuw nsw i64 %i.aa to i8
  %i.ac = sub nsw i64 61, %i.aa
  %i.ad = lshr i64 %i.z, %i.ac
  %i.ae = trunc nuw nsw i64 %i.ad to i8
  %i.af = and i8 %i.ae, 3
  %i.ag = shl i8 %i.ab, 2
  %reass.sub = sub i8 %i.af, %i.ag
  %i.ah = add i8 %reass.sub, -7
  br label %mi_bin.exit.i

mi_bin.exit.i:                                    ; preds = %bb.i, %bb.h
  %.0.i.i = phi i8 [ %i.ah, %bb.i ], [ %i.y, %bb.h ]
  %i.ai = getelementptr i8, ptr %0, i64 1040
  br label %bb.j

bb.j:                                             ; preds = %mi_bin.exit35.i, %mi_bin.exit.i
  %.pn.i = phi ptr [ %1, %mi_bin.exit.i ], [ %.027.i, %mi_bin.exit35.i ] ; 2 uses
  %.027.i = getelementptr i8, ptr %.pn.i, i64 -24 ; 2 uses
  %i.aj = getelementptr i8, ptr %.pn.i, i64 -8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !103
  %i.al = add i64 %i.ak, 7                        ; 4 uses
  %i.am = lshr i64 %i.al, 3                       ; 4 uses
  %i.an = icmp ult i64 %i.al, 16
  br i1 %i.an, label %mi_bin.exit35.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ao = icmp ult i64 %i.al, 72
  br i1 %i.ao, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ap = trunc nuw nsw i64 %i.am to i8
  %i.aq = add nuw nsw i8 %i.ap, 1
  %i.ar = and i8 %i.aq, 30
  br label %mi_bin.exit35.i

bb.m:                                             ; preds = %bb.k
  %i.as = icmp ugt i64 %i.al, 131079
  br i1 %i.as, label %mi_bin.exit35.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.at = add nsw i64 %i.am, -1                   ; 2 uses
  %i.au = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.at, i1 false) ; 2 uses
  %i.av = trunc nuw nsw i64 %i.au to i8
  %i.aw = sub nsw i64 61, %i.au
  %i.ax = lshr i64 %i.at, %i.aw
  %i.ay = trunc i64 %i.ax to i8
  %i.az = and i8 %i.ay, 3
  %i.ba = shl i8 %i.av, 2
  %reass.sub18 = sub i8 %i.az, %i.ba
  %i.bb = add i8 %reass.sub18, -7
  br label %mi_bin.exit35.i

mi_bin.exit35.i:                                  ; preds = %bb.n, %bb.m, %bb.l, %bb.j
  %.0.i34.i = phi i8 [ %i.bb, %bb.n ], [ %i.ar, %bb.l ], [ 1, %bb.j ], [ 73, %bb.m ]
  %i.bc = icmp eq i8 %.0.i.i, %.0.i34.i
  %i.bd = icmp ugt ptr %.027.i, %i.ai
  %i.be = and i1 %i.bd, %i.bc
  br i1 %i.be, label %bb.j, label %bb.o, !llvm.loop !28

bb.o:                                             ; preds = %mi_bin.exit35.i
  %i.bf = add nuw nsw i64 %i.am, 1
  %.not.i = icmp samesign ult i64 %i.am, %i.p
  %spec.select.i = select i1 %.not.i, i64 %i.bf, i64 %i.p ; 2 uses
  %.not3237.i = icmp samesign ugt i64 %spec.select.i, %i.p
  br i1 %.not3237.i, label %mi_heap_queue_first_update.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.o, %bb.f
  %.145.i = phi i64 [ %spec.select.i, %bb.o ], [ 0, %bb.f ] ; 4 uses
  %i.bg = add nuw nsw i64 %i.p, 1
  %i.bh = sub nsw i64 %i.bg, %.145.i              ; 3 uses
  %min.iters.check = icmp ult i64 %i.bh, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %i.bh, -4                      ; 3 uses
  %broadcast.splatinsert = insertelement <2 x ptr> poison, ptr %2, i64 0
  %broadcast.splat = shufflevector <2 x ptr> %broadcast.splatinsert, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bi = getelementptr [8 x i8], ptr %i.q, i64 %.145.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bj = getelementptr [8 x i8], ptr %i.bi, i64 %index ; 2 uses
  %i.bk = getelementptr i8, ptr %i.bj, i64 16
  store <2 x ptr> %broadcast.splat, ptr %i.bj, align 8, !tbaa !94
  store <2 x ptr> %broadcast.splat, ptr %i.bk, align 8, !tbaa !94
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bl = icmp eq i64 %index.next, %n.vec
  br i1 %i.bl, label %middle.block, label %vector.body, !llvm.loop !552

middle.block:                                     ; preds = %vector.body
  %3 = add i64 %.145.i, %n.vec
  %cmp.n = icmp eq i64 %i.bh, %n.vec
  br i1 %cmp.n, label %mi_heap_queue_first_update.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %.038.i.ph = phi i64 [ %.145.i, %.lr.ph.preheader.i ], [ %3, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.038.i = phi i64 [ %i.bn, %.lr.ph.i ], [ %.038.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %i.bm = getelementptr [8 x i8], ptr %i.q, i64 %.038.i
  store ptr %2, ptr %i.bm, align 8, !tbaa !94
  %i.bn = add nuw nsw i64 %.038.i, 1
  %exitcond.not.i = icmp eq i64 %.038.i, %i.p
  br i1 %exitcond.not.i, label %mi_heap_queue_first_update.exit, label %.lr.ph.i, !llvm.loop !553

mi_heap_queue_first_update.exit:                  ; preds = %.lr.ph.i, %middle.block, %bb.d, %bb.e, %bb.o
  %i.bo = getelementptr i8, ptr %0, i64 3024      ; 2 uses
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !170
  %i.bq = add i64 %i.bp, 1
  store i64 %i.bq, ptr %i.bo, align 8, !tbaa !170
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @_mi_heap_delayed_free_all(ptr nofree noundef captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 2840       ; 5 uses
  %i.b = load atomic ptr, ptr %i.a monotonic, align 8 ; 2 uses
  %.old1.not.i16 = icmp eq ptr %i.b, null
  br i1 %.old1.not.i16, label %_mi_heap_delayed_free_partial.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a, %.preheader.i.backedge
  %.0.i = phi ptr [ %.0.i.be, %.preheader.i.backedge ], [ %i.b, %bb.a ]
  %i.c = cmpxchg weak ptr %i.a, ptr %.0.i, ptr null acq_rel acquire, align 8 ; 2 uses
  %i.d = extractvalue { ptr, i1 } %i.c, 1
  %i.e = extractvalue { ptr, i1 } %i.c, 0         ; 3 uses
  %i.f = icmp eq ptr %i.e, null                   ; 2 uses
  %or.cond.not.i = select i1 %i.d, i1 true, i1 %i.f
  br i1 %or.cond.not.i, label %.critedge.i, label %.preheader.i.backedge

.preheader.i.backedge:                            ; preds = %.preheader.i, %_mi_heap_delayed_free_partial.exit.thread33
  %.0.i.be = phi ptr [ %i.e, %.preheader.i ], [ %i.dy, %_mi_heap_delayed_free_partial.exit.thread33 ]
  br label %.preheader.i, !llvm.loop !554

.critedge.i:                                      ; preds = %.preheader.i
  br i1 %i.f, label %_mi_heap_delayed_free_partial.exit.thread, label %.lr.ph.i.outer

.lr.ph.i.outer:                                   ; preds = %.critedge.i, %.loopexit.i.thread
  %.334.i.ph = phi ptr [ %i.h, %.loopexit.i.thread ], [ %i.e, %.critedge.i ]
  %.02533.i.ph = phi i1 [ false, %.loopexit.i.thread ], [ true, %.critedge.i ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.outer, %.loopexit.i
  %.334.i = phi ptr [ %i.h, %.loopexit.i ], [ %.334.i.ph, %.lr.ph.i.outer ] ; 6 uses
  %i.g = load atomic i64, ptr %.334.i monotonic, align 8 ; 3 uses
  %i.h = inttoptr i64 %i.g to ptr                 ; 2 uses
  %i.i = ptrtoint ptr %.334.i to i64              ; 2 uses
  %i.j = add i64 %i.i, -1
  %i.k = and i64 %i.j, -33554432                  ; 2 uses
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = sub i64 %i.i, %i.k
  %i.n = lshr i64 %i.m, 16
  %i.o = getelementptr i8, ptr %i.l, i64 264
  %i.p = getelementptr [80 x i8], ptr %i.o, i64 %i.n ; 2 uses
  %i.q = getelementptr i8, ptr %i.p, i64 4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !100
  %i.s = zext i32 %i.r to i64
  %i.t = sub nsw i64 0, %i.s
  %i.u = getelementptr i8, ptr %i.p, i64 %i.t     ; 13 uses
  %i.v = getelementptr i8, ptr %i.u, i64 40       ; 13 uses
  br label %.critedge.i1

.critedge.i1:                                     ; preds = %bb.f, %.lr.ph.i
  %i.w = load atomic i64, ptr %i.v acquire, align 8 ; 3 uses
  %i.x = trunc i64 %i.w to i32
  %i.y = and i32 %i.x, 3
  switch i32 %i.y, label %.critedge.i1.unreachabledefault [
    i32 1, label %.critedge.outer.1.i
    i32 3, label %.loopexit
    i32 0, label %.loopexit
    i32 2, label %bb.f
  ], !prof !192

.critedge.outer.1.i:                              ; preds = %.critedge.i1
  tail call void @llvm.x86.sse2.pause()
  br label %.critedge.1.i

.critedge.1.i:                                    ; preds = %bb.b, %.critedge.outer.1.i
  %i.z = load atomic i64, ptr %i.v acquire, align 8 ; 3 uses
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.aa, 3
  switch i32 %i.ab, label %.critedge.1.i.unreachabledefault [
    i32 1, label %.critedge.outer.2.i
    i32 3, label %.loopexit
    i32 0, label %.loopexit
    i32 2, label %bb.b
  ], !prof !192

.critedge.outer.2.i:                              ; preds = %.critedge.1.i
  tail call void @llvm.x86.sse2.pause()
  br label %.critedge.2.i

bb.b:                                             ; preds = %.critedge.1.i
  %i.ac = and i64 %i.z, -4
  %i.ad = cmpxchg weak ptr %i.v, i64 %i.z, i64 %i.ac release monotonic, align 8
  %i.ae = extractvalue { i64, i1 } %i.ad, 1
  br i1 %i.ae, label %.loopexit, label %.critedge.1.i, !llvm.loop !5

.critedge.2.i:                                    ; preds = %bb.c, %.critedge.outer.2.i
  %i.af = load atomic i64, ptr %i.v acquire, align 8 ; 3 uses
  %i.ag = trunc i64 %i.af to i32
  %i.ah = and i32 %i.ag, 3
  switch i32 %i.ah, label %.critedge.2.i.unreachabledefault [
    i32 1, label %.critedge.outer.3.i
    i32 3, label %.loopexit
    i32 0, label %.loopexit
    i32 2, label %bb.c
  ], !prof !192

.critedge.outer.3.i:                              ; preds = %.critedge.2.i
  tail call void @llvm.x86.sse2.pause()
  br label %.critedge.3.i

bb.c:                                             ; preds = %.critedge.2.i
  %i.ai = and i64 %i.af, -4
  %i.aj = cmpxchg weak ptr %i.v, i64 %i.af, i64 %i.ai release monotonic, align 8
  %i.ak = extractvalue { i64, i1 } %i.aj, 1
  br i1 %i.ak, label %.loopexit, label %.critedge.2.i, !llvm.loop !5

.critedge.3.i:                                    ; preds = %bb.d, %.critedge.outer.3.i
  %i.al = load atomic i64, ptr %i.v acquire, align 8 ; 3 uses
  %i.am = trunc i64 %i.al to i32
  %i.an = and i32 %i.am, 3
  switch i32 %i.an, label %.critedge.3.i.unreachabledefault [
    i32 1, label %.critedge.outer.4.i
    i32 3, label %.loopexit
    i32 0, label %.loopexit
    i32 2, label %bb.d
  ], !prof !192

.critedge.outer.4.i:                              ; preds = %.critedge.3.i
  tail call void @llvm.x86.sse2.pause()
  br label %.critedge.4.i

bb.d:                                             ; preds = %.critedge.3.i
  %i.ao = and i64 %i.al, -4
  %i.ap = cmpxchg weak ptr %i.v, i64 %i.al, i64 %i.ao release monotonic, align 8
  %i.aq = extractvalue { i64, i1 } %i.ap, 1
  br i1 %i.aq, label %.loopexit, label %.critedge.3.i, !llvm.loop !5

.critedge.4.i:                                    ; preds = %bb.e, %.critedge.outer.4.i
  %i.ar = load atomic i64, ptr %i.v acquire, align 8 ; 3 uses
  %i.as = trunc i64 %i.ar to i32
  %i.at = and i32 %i.as, 3
  switch i32 %i.at, label %.critedge.4.i.unreachabledefault [
    i32 1, label %_mi_free_delayed_block.exit
    i32 3, label %.loopexit
    i32 0, label %.loopexit
    i32 2, label %bb.e
  ], !prof !192

bb.e:                                             ; preds = %.critedge.4.i
  %i.au = and i64 %i.ar, -4
  %i.av = cmpxchg weak ptr %i.v, i64 %i.ar, i64 %i.au release monotonic, align 8
  %i.aw = extractvalue { i64, i1 } %i.av, 1
  br i1 %i.aw, label %.loopexit, label %.critedge.4.i, !llvm.loop !5

.critedge.4.i.unreachabledefault:                 ; preds = %.critedge.4.i
  unreachable

.critedge.3.i.unreachabledefault:                 ; preds = %.critedge.3.i
  unreachable

.critedge.2.i.unreachabledefault:                 ; preds = %.critedge.2.i
  unreachable

.critedge.1.i.unreachabledefault:                 ; preds = %.critedge.1.i
  unreachable

.critedge.i1.unreachabledefault:                  ; preds = %.critedge.i1
  unreachable

bb.f:                                             ; preds = %.critedge.i1
  %i.ax = and i64 %i.w, -4
  %i.ay = cmpxchg weak ptr %i.v, i64 %i.w, i64 %i.ax release monotonic, align 8
  %i.az = extractvalue { i64, i1 } %i.ay, 1
  br i1 %i.az, label %.loopexit, label %.critedge.i1, !llvm.loop !5

.loopexit:                                        ; preds = %.critedge.i1, %.critedge.i1, %bb.f, %.critedge.1.i, %.critedge.1.i, %bb.b, %.critedge.2.i, %.critedge.2.i, %bb.c, %.critedge.3.i, %.critedge.3.i, %bb.d, %.critedge.4.i, %.critedge.4.i, %bb.e
  %i.ba = load atomic i64, ptr %i.v monotonic, align 8
  %.not.i.i = icmp ult i64 %i.ba, 4
  br i1 %.not.i.i, label %_mi_page_thread_free_collect.exit.i.i, label %bb.g

bb.g:                                             ; preds = %.loopexit
  %i.bb = load atomic i64, ptr %i.v monotonic, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %bb.g
  %.029.i.i.i = phi i64 [ %i.bb, %bb.g ], [ %i.bf, %bb.h ] ; 3 uses
  %i.bc = and i64 %.029.i.i.i, 3
end_hunk_1
begin_hunk_2_@_mi_page_unfull:bb.a
  %i.d = load atomic i64, ptr %i.c monotonic, align 8
  %i.e = inttoptr i64 %i.d to ptr                 ; 2 uses
  %i.f = getelementptr i8, ptr %i.e, i64 2816
  %i.g = getelementptr i8, ptr %0, i64 28
  %i.h = load i32, ptr %i.g, align 4, !tbaa !65   ; 4 uses
  %i.i = zext i32 %i.h to i64
  %i.j = add nuw nsw i64 %i.i, 7
  %i.k = lshr i64 %i.j, 3                         ; 2 uses
  %i.l = icmp ult i32 %i.h, 9
  br i1 %i.l, label %mi_heap_page_queue_of.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = icmp ult i32 %i.h, 65
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = add nuw nsw i64 %i.k, 1
  %i.o = and i64 %i.n, 30
  br label %mi_heap_page_queue_of.exit

bb.e:                                             ; preds = %bb.c
  %i.p = icmp ugt i32 %i.h, 131072
  br i1 %i.p, label %mi_heap_page_queue_of.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = add nsw i64 %i.k, -1                     ; 2 uses
  %i.r = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.q, i1 false) ; 2 uses
  %i.s = sub nsw i64 61, %i.r
  %i.t = lshr i64 %i.q, %i.s
  %i.u = and i64 %i.t, 3
  %i.v = shl nuw nsw i64 %i.r, 2
  %reass.sub = sub nsw i64 %i.u, %i.v
  %i.w = add nsw i64 %reass.sub, 249
  %i.x = and i64 %i.w, 255
  br label %mi_heap_page_queue_of.exit

mi_heap_page_queue_of.exit:                       ; preds = %bb.b, %bb.d, %bb.e, %bb.f
  %i.y = phi i64 [ 73, %bb.e ], [ %i.x, %bb.f ], [ %i.o, %bb.d ], [ 1, %bb.b ]
  %i.z = getelementptr i8, ptr %i.e, i64 1040
  %i.aa = getelementptr [24 x i8], ptr %i.z, i64 %i.y
  tail call fastcc void @mi_page_queue_enqueue_from(ptr noundef %i.aa, ptr noundef %i.f, ptr noundef nonnull %0)
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %mi_heap_page_queue_of.exit
  ret void
}

; Function Attrs: norecurse nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @mi_page_queue_enqueue_from(ptr nofree noundef captures(address) %0, ptr nofree noundef captures(address) %1, ptr noundef %2) unnamed_addr #35 {
bb.a:
  %i.a = getelementptr i8, ptr %2, i64 48
  %i.b = load atomic i64, ptr %i.a monotonic, align 8
  %i.c = inttoptr i64 %i.b to ptr                 ; 4 uses
  %i.d = getelementptr i8, ptr %2, i64 64         ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !193  ; 3 uses
  %.not = icmp eq ptr %i.e, null
  %.phi.trans.insert = getelementptr i8, ptr %2, i64 56
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !171 ; 5 uses
  br i1 %.not, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %i.e, i64 56
  store ptr %.pre, ptr %i.f, align 8, !tbaa !171
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.a, %bb.b
  %i.g = getelementptr i8, ptr %2, i64 56
  %.not35 = icmp eq ptr %.pre, null               ; 2 uses
  br i1 %.not35, label %bb.d, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.h = getelementptr i8, ptr %.pre, i64 64
  store ptr %i.e, ptr %i.h, align 8, !tbaa !193
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %i.i = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !104
  %i.k = icmp eq ptr %2, %i.j
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = load ptr, ptr %i.d, align 8, !tbaa !193
  store ptr %i.l, ptr %i.i, align 8, !tbaa !104
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.m = load ptr, ptr %1, align 8, !tbaa !105
  %i.n = icmp eq ptr %2, %i.m
  br i1 %i.n, label %bb.g, label %mi_heap_queue_first_update.exit

bb.g:                                             ; preds = %bb.f
  store ptr %.pre, ptr %1, align 8, !tbaa !105
  %i.o = getelementptr i8, ptr %1, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !103  ; 4 uses
  %i.q = icmp ugt i64 %i.p, 1024
  br i1 %i.q, label %mi_heap_queue_first_update.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %spec.store.select.i = select i1 %.not35, ptr @_mi_page_empty, ptr %.pre ; 3 uses
  %i.r = add nuw nsw i64 %i.p, 7
  %i.s = lshr i64 %i.r, 3                         ; 8 uses
  %i.t = getelementptr i8, ptr %i.c, i64 8        ; 3 uses
  %i.u = getelementptr [8 x i8], ptr %i.t, i64 %i.s
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !94
  %i.w = icmp eq ptr %i.v, %spec.store.select.i
  br i1 %i.w, label %mi_heap_queue_first_update.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = icmp samesign ult i64 %i.p, 9
  br i1 %i.x, label %.lr.ph.preheader.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = icmp samesign ult i64 %i.p, 65
  br i1 %i.y, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.z = trunc nuw nsw i64 %i.s to i8
  %i.aa = add nuw nsw i8 %i.z, 1
  %i.ab = and i8 %i.aa, 30
  br label %mi_bin.exit.i

bb.l:                                             ; preds = %bb.j
  %i.ac = add nsw i64 %i.s, -1                    ; 2 uses
  %i.ad = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ac, i1 false) ; 2 uses
  %i.ae = trunc nuw nsw i64 %i.ad to i8
  %i.af = sub nsw i64 61, %i.ad
  %i.ag = lshr i64 %i.ac, %i.af
  %i.ah = trunc nuw nsw i64 %i.ag to i8
  %i.ai = and i8 %i.ah, 3
  %i.aj = shl i8 %i.ae, 2
  %reass.sub = sub i8 %i.ai, %i.aj
  %i.ak = add i8 %reass.sub, -7
  br label %mi_bin.exit.i

mi_bin.exit.i:                                    ; preds = %bb.l, %bb.k
  %.0.i.i = phi i8 [ %i.ak, %bb.l ], [ %i.ab, %bb.k ]
  %i.al = getelementptr i8, ptr %i.c, i64 1040
  br label %bb.m

bb.m:                                             ; preds = %mi_bin.exit35.i, %mi_bin.exit.i
  %.pn.i = phi ptr [ %1, %mi_bin.exit.i ], [ %.027.i, %mi_bin.exit35.i ] ; 2 uses
  %.027.i = getelementptr i8, ptr %.pn.i, i64 -24 ; 2 uses
  %i.am = getelementptr i8, ptr %.pn.i, i64 -8
  %i.an = load i64, ptr %i.am, align 8, !tbaa !103
  %i.ao = add i64 %i.an, 7                        ; 4 uses
  %i.ap = lshr i64 %i.ao, 3                       ; 4 uses
  %i.aq = icmp ult i64 %i.ao, 16
  br i1 %i.aq, label %mi_bin.exit35.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ar = icmp ult i64 %i.ao, 72
  br i1 %i.ar, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.as = trunc nuw nsw i64 %i.ap to i8
  %i.at = add nuw nsw i8 %i.as, 1
  %i.au = and i8 %i.at, 30
  br label %mi_bin.exit35.i

bb.p:                                             ; preds = %bb.n
  %i.av = icmp ugt i64 %i.ao, 131079
  br i1 %i.av, label %mi_bin.exit35.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aw = add nsw i64 %i.ap, -1                   ; 2 uses
  %i.ax = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.aw, i1 false) ; 2 uses
  %i.ay = trunc nuw nsw i64 %i.ax to i8
  %i.az = sub nsw i64 61, %i.ax
  %i.ba = lshr i64 %i.aw, %i.az
  %i.bb = trunc i64 %i.ba to i8
  %i.bc = and i8 %i.bb, 3
  %i.bd = shl i8 %i.ay, 2
  %reass.sub60 = sub i8 %i.bc, %i.bd
  %i.be = add i8 %reass.sub60, -7
  br label %mi_bin.exit35.i

mi_bin.exit35.i:                                  ; preds = %bb.q, %bb.p, %bb.o, %bb.m
  %.0.i34.i = phi i8 [ %i.be, %bb.q ], [ %i.au, %bb.o ], [ 1, %bb.m ], [ 73, %bb.p ]
  %i.bf = icmp eq i8 %.0.i.i, %.0.i34.i
  %i.bg = icmp ugt ptr %.027.i, %i.al
  %i.bh = and i1 %i.bg, %i.bf
  br i1 %i.bh, label %bb.m, label %bb.r, !llvm.loop !28

bb.r:                                             ; preds = %mi_bin.exit35.i
  %i.bi = add nuw nsw i64 %i.ap, 1
  %.not.i = icmp samesign ult i64 %i.ap, %i.s
  %spec.select.i = select i1 %.not.i, i64 %i.bi, i64 %i.s ; 2 uses
  %.not3237.i = icmp samesign ugt i64 %spec.select.i, %i.s
  br i1 %.not3237.i, label %mi_heap_queue_first_update.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.r, %bb.i
  %.145.i = phi i64 [ %spec.select.i, %bb.r ], [ 0, %bb.i ] ; 4 uses
  %i.bj = add nuw nsw i64 %i.s, 1
  %i.bk = sub nsw i64 %i.bj, %.145.i              ; 3 uses
  %min.iters.check = icmp ult i64 %i.bk, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %i.bk, -4                      ; 3 uses
  %broadcast.splatinsert = insertelement <2 x ptr> poison, ptr %spec.store.select.i, i64 0
  %broadcast.splat = shufflevector <2 x ptr> %broadcast.splatinsert, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bl = getelementptr [8 x i8], ptr %i.t, i64 %.145.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bm = getelementptr [8 x i8], ptr %i.bl, i64 %index ; 2 uses
  %i.bn = getelementptr i8, ptr %i.bm, i64 16
  store <2 x ptr> %broadcast.splat, ptr %i.bm, align 8, !tbaa !94
  store <2 x ptr> %broadcast.splat, ptr %i.bn, align 8, !tbaa !94
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bo = icmp eq i64 %index.next, %n.vec
  br i1 %i.bo, label %middle.block, label %vector.body, !llvm.loop !555

middle.block:                                     ; preds = %vector.body
  %3 = add i64 %.145.i, %n.vec
  %cmp.n = icmp eq i64 %i.bk, %n.vec
  br i1 %cmp.n, label %mi_heap_queue_first_update.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %.038.i.ph = phi i64 [ %.145.i, %.lr.ph.preheader.i ], [ %3, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.038.i = phi i64 [ %i.bq, %.lr.ph.i ], [ %.038.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %i.bp = getelementptr [8 x i8], ptr %i.t, i64 %.038.i
  store ptr %spec.store.select.i, ptr %i.bp, align 8, !tbaa !94
  %i.bq = add nuw nsw i64 %.038.i, 1
  %exitcond.not.i = icmp eq i64 %.038.i, %i.s
  br i1 %exitcond.not.i, label %mi_heap_queue_first_update.exit, label %.lr.ph.i, !llvm.loop !556

mi_heap_queue_first_update.exit:                  ; preds = %.lr.ph.i, %middle.block, %bb.r, %bb.h, %bb.g, %bb.f
  %i.br = getelementptr i8, ptr %0, i64 8         ; 3 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !104 ; 3 uses
  store ptr %i.bs, ptr %i.d, align 8, !tbaa !193
  store ptr null, ptr %i.g, align 8, !tbaa !171
  %.not36 = icmp eq ptr %i.bs, null
  br i1 %.not36, label %bb.t, label %bb.s

bb.s:                                             ; preds = %mi_heap_queue_first_update.exit
  %i.bt = getelementptr i8, ptr %i.bs, i64 56
  store ptr %2, ptr %i.bt, align 8, !tbaa !171
  store ptr %2, ptr %i.br, align 8, !tbaa !104
  %.phi.trans.insert64 = getelementptr i8, ptr %0, i64 16
  %.val.pre = load i64, ptr %.phi.trans.insert64, align 8, !tbaa !103
  br label %mi_heap_queue_first_update.exit54

bb.t:                                             ; preds = %mi_heap_queue_first_update.exit
  store ptr %2, ptr %0, align 8, !tbaa !105
  store ptr %2, ptr %i.br, align 8, !tbaa !104
  %i.bu = getelementptr i8, ptr %0, i64 16
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !103 ; 9 uses
  %i.bw = icmp ugt i64 %i.bv, 1024
  br i1 %i.bw, label %mi_heap_queue_first_update.exit54, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bx = add nuw nsw i64 %i.bv, 7
  %i.by = lshr i64 %i.bx, 3                       ; 8 uses
  %i.bz = getelementptr i8, ptr %i.c, i64 8       ; 3 uses
  %i.ca = getelementptr [8 x i8], ptr %i.bz, i64 %i.by
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !94
  %i.cc = icmp eq ptr %i.cb, %2
  br i1 %i.cc, label %mi_heap_queue_first_update.exit54, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cd = icmp samesign ult i64 %i.bv, 9
  br i1 %i.cd, label %.lr.ph.preheader.i49, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ce = icmp samesign ult i64 %i.bv, 65
  br i1 %i.ce, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.cf = trunc nuw nsw i64 %i.by to i8
  %i.cg = add nuw nsw i8 %i.cf, 1
  %i.ch = and i8 %i.cg, 30
  br label %mi_bin.exit.i39

bb.y:                                             ; preds = %bb.w
  %i.ci = add nsw i64 %i.by, -1                   ; 2 uses
  %i.cj = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ci, i1 false) ; 2 uses
  %i.ck = trunc nuw nsw i64 %i.cj to i8
  %i.cl = sub nsw i64 61, %i.cj
  %i.cm = lshr i64 %i.ci, %i.cl
  %i.cn = trunc nuw nsw i64 %i.cm to i8
  %i.co = and i8 %i.cn, 3
  %i.cp = shl i8 %i.ck, 2
  %reass.sub61 = sub i8 %i.co, %i.cp
  %i.cq = add i8 %reass.sub61, -7
  br label %mi_bin.exit.i39

mi_bin.exit.i39:                                  ; preds = %bb.y, %bb.x
  %.0.i.i40 = phi i8 [ %i.cq, %bb.y ], [ %i.ch, %bb.x ]
  %i.cr = getelementptr i8, ptr %i.c, i64 1040
  br label %bb.z

bb.z:                                             ; preds = %mi_bin.exit35.i44, %mi_bin.exit.i39
  %.pn.i41 = phi ptr [ %0, %mi_bin.exit.i39 ], [ %.027.i42, %mi_bin.exit35.i44 ] ; 2 uses
  %.027.i42 = getelementptr i8, ptr %.pn.i41, i64 -24 ; 2 uses
  %i.cs = getelementptr i8, ptr %.pn.i41, i64 -8
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !103
  %i.cu = add i64 %i.ct, 7                        ; 4 uses
  %i.cv = lshr i64 %i.cu, 3                       ; 4 uses
  %i.cw = icmp ult i64 %i.cu, 16
  br i1 %i.cw, label %mi_bin.exit35.i44, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cx = icmp ult i64 %i.cu, 72
  br i1 %i.cx, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.cy = trunc nuw nsw i64 %i.cv to i8
  %i.cz = add nuw nsw i8 %i.cy, 1
  %i.da = and i8 %i.cz, 30
  br label %mi_bin.exit35.i44

bb.ac:                                            ; preds = %bb.aa
  %i.db = icmp ugt i64 %i.cu, 131079
  br i1 %i.db, label %mi_bin.exit35.i44, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dc = add nsw i64 %i.cv, -1                   ; 2 uses
  %i.dd = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.dc, i1 false) ; 2 uses
  %i.de = trunc nuw nsw i64 %i.dd to i8
  %i.df = sub nsw i64 61, %i.dd
  %i.dg = lshr i64 %i.dc, %i.df
  %i.dh = trunc i64 %i.dg to i8
  %i.di = and i8 %i.dh, 3
  %i.dj = shl i8 %i.de, 2
  %reass.sub62 = sub i8 %i.di, %i.dj
  %i.dk = add i8 %reass.sub62, -7
  br label %mi_bin.exit35.i44

mi_bin.exit35.i44:                                ; preds = %bb.ad, %bb.ac, %bb.ab, %bb.z
  %.0.i34.i45 = phi i8 [ %i.dk, %bb.ad ], [ %i.da, %bb.ab ], [ 1, %bb.z ], [ 73, %bb.ac ]
  %i.dl = icmp eq i8 %.0.i.i40, %.0.i34.i45
  %i.dm = icmp ugt ptr %.027.i42, %i.cr
  %i.dn = and i1 %i.dm, %i.dl
  br i1 %i.dn, label %bb.z, label %bb.ae, !llvm.loop !28

bb.ae:                                            ; preds = %mi_bin.exit35.i44
  %i.do = add nuw nsw i64 %i.cv, 1
  %.not.i46 = icmp samesign ult i64 %i.cv, %i.by
  %spec.select.i47 = select i1 %.not.i46, i64 %i.do, i64 %i.by ; 2 uses
  %.not3237.i48 = icmp samesign ugt i64 %spec.select.i47, %i.by
  br i1 %.not3237.i48, label %mi_heap_queue_first_update.exit54, label %.lr.ph.preheader.i49

.lr.ph.preheader.i49:                             ; preds = %bb.ae, %bb.v
  %.145.i50 = phi i64 [ %spec.select.i47, %bb.ae ], [ 0, %bb.v ] ; 4 uses
  %i.dp = add nuw nsw i64 %i.by, 1
  %i.dq = sub nsw i64 %i.dp, %.145.i50            ; 3 uses
  %min.iters.check76 = icmp ult i64 %i.dq, 4
  br i1 %min.iters.check76, label %.lr.ph.i51.preheader, label %vector.ph77

vector.ph77:                                      ; preds = %.lr.ph.preheader.i49
  %n.vec78 = and i64 %i.dq, -4                    ; 3 uses
  %broadcast.splatinsert79 = insertelement <2 x ptr> poison, ptr %2, i64 0
  %broadcast.splat80 = shufflevector <2 x ptr> %broadcast.splatinsert79, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dr = getelementptr [8 x i8], ptr %i.bz, i64 %.145.i50
  br label %vector.body81

vector.body81:                                    ; preds = %vector.body81, %vector.ph77
  %index82 = phi i64 [ 0, %vector.ph77 ], [ %index.next83, %vector.body81 ] ; 2 uses
  %i.ds = getelementptr [8 x i8], ptr %i.dr, i64 %index82 ; 2 uses
  %i.dt = getelementptr i8, ptr %i.ds, i64 16
  store <2 x ptr> %broadcast.splat80, ptr %i.ds, align 8, !tbaa !94
  store <2 x ptr> %broadcast.splat80, ptr %i.dt, align 8, !tbaa !94
  %index.next83 = add nuw i64 %index82, 4         ; 2 uses
  %i.du = icmp eq i64 %index.next83, %n.vec78
  br i1 %i.du, label %middle.block84, label %vector.body81, !llvm.loop !557

middle.block84:                                   ; preds = %vector.body81
  %4 = add i64 %.145.i50, %n.vec78
  %cmp.n85 = icmp eq i64 %i.dq, %n.vec78
  br i1 %cmp.n85, label %mi_heap_queue_first_update.exit54, label %.lr.ph.i51.preheader

.lr.ph.i51.preheader:                             ; preds = %.lr.ph.preheader.i49, %middle.block84
  %.038.i52.ph = phi i64 [ %.145.i50, %.lr.ph.preheader.i49 ], [ %4, %middle.block84 ]
  br label %.lr.ph.i51

.lr.ph.i51:                                       ; preds = %.lr.ph.i51.preheader, %.lr.ph.i51
  %.038.i52 = phi i64 [ %i.dw, %.lr.ph.i51 ], [ %.038.i52.ph, %.lr.ph.i51.preheader ] ; 3 uses
  %i.dv = getelementptr [8 x i8], ptr %i.bz, i64 %.038.i52
  store ptr %2, ptr %i.dv, align 8, !tbaa !94
  %i.dw = add nuw nsw i64 %.038.i52, 1
  %exitcond.not.i53 = icmp eq i64 %.038.i52, %i.by
  br i1 %exitcond.not.i53, label %mi_heap_queue_first_update.exit54, label %.lr.ph.i51, !llvm.loop !558

mi_heap_queue_first_update.exit54:                ; preds = %.lr.ph.i51, %middle.block84, %bb.ae, %bb.u, %bb.t, %bb.s
  %.val = phi i64 [ %.val.pre, %bb.s ], [ %i.bv, %bb.ae ], [ %i.bv, %bb.u ], [ %i.bv, %bb.t ], [ %i.bv, %middle.block84 ], [ %i.bv, %.lr.ph.i51 ]
  %i.dx = icmp eq i64 %.val, 131088
  %i.dy = zext i1 %i.dx to i8
  %i.dz = getelementptr i8, ptr %2, i64 14        ; 2 uses
  %i.ea = load i8, ptr %i.dz, align 2
  %i.eb = and i8 %i.ea, -2
  %i.ec = or disjoint i8 %i.eb, %i.dy
  store i8 %i.ec, ptr %i.dz, align 2
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @_mi_page_abandon(ptr noundef %0, ptr nofree noundef captures(address) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 48         ; 2 uses
  %i.b = load atomic i64, ptr %i.a monotonic, align 8
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !72   ; 2 uses
  %i.e = getelementptr i8, ptr %i.d, i64 32
  tail call fastcc void @mi_page_queue_remove(ptr noundef %1, ptr noundef %0)
  store atomic i64 0, ptr %i.a release, align 8
  %i.f = ptrtoint ptr %0 to i64
  %i.g = add i64 %i.f, -1
  %i.h = and i64 %i.g, -33554432
  %i.i = inttoptr i64 %i.h to ptr                 ; 3 uses
  %i.j = getelementptr i8, ptr %i.i, i64 192      ; 3 uses
  %i.k = load i64, ptr %i.j, align 64, !tbaa !113
  %i.l = add i64 %i.k, 1                          ; 2 uses
  store i64 %i.l, ptr %i.j, align 64, !tbaa !113
  %i.m = getelementptr i8, ptr %i.d, i64 928
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !172  ; 4 uses
  %i.o = getelementptr i8, ptr %i.n, i64 256      ; 5 uses
  %i.p = icmp uge ptr %i.o, @_mi_stats_main
  %i.q = icmp ult ptr %i.o, getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 640)
  %i.r = select i1 %i.p, i1 %i.q, i1 false
  %i.s = getelementptr i8, ptr %i.n, i64 280      ; 3 uses
  br i1 %i.r, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.t = atomicrmw add ptr %i.s, i64 1 monotonic, align 8
  %i.u = getelementptr i8, ptr %i.n, i64 272      ; 2 uses
  %i.v = add i64 %i.t, 1                          ; 2 uses
  %i.w = load atomic i64, ptr %i.u monotonic, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.0.i.i.i.i = phi i64 [ %i.w, %bb.b ], [ %i.aa, %bb.d ] ; 2 uses
  %i.x = icmp slt i64 %.0.i.i.i.i, %i.v
  br i1 %i.x, label %bb.d, label %mi_atomic_maxi64_relaxed.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.y = cmpxchg weak ptr %i.u, i64 %.0.i.i.i.i, i64 %i.v release monotonic, align 8 ; 2 uses
  %i.z = extractvalue { i64, i1 } %i.y, 1
  %i.aa = extractvalue { i64, i1 } %i.y, 0
  br i1 %i.z, label %mi_atomic_maxi64_relaxed.exit.i.i.i, label %bb.c, !llvm.loop !10

mi_atomic_maxi64_relaxed.exit.i.i.i:              ; preds = %bb.d, %bb.c
  %i.ab = atomicrmw add ptr %i.o, i64 1 monotonic, align 8 ; 0 uses
  %.pre.i = load i64, ptr %i.j, align 64, !tbaa !113
  br label %_mi_stat_increase.exit.i

bb.e:                                             ; preds = %bb.a
  %i.ac = load i64, ptr %i.s, align 8, !tbaa !144
  %i.ad = add i64 %i.ac, 1                        ; 3 uses
  store i64 %i.ad, ptr %i.s, align 8, !tbaa !144
  %i.ae = getelementptr i8, ptr %i.n, i64 272     ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !145
  %i.ag = icmp sgt i64 %i.ad, %i.af
  br i1 %i.ag, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !145
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ah = load i64, ptr %i.o, align 8, !tbaa !146
  %i.ai = add i64 %i.ah, 1
  store i64 %i.ai, ptr %i.o, align 8, !tbaa !146
  br label %_mi_stat_increase.exit.i

_mi_stat_increase.exit.i:                         ; preds = %bb.g, %mi_atomic_maxi64_relaxed.exit.i.i.i
  %i.aj = phi i64 [ %.pre.i, %mi_atomic_maxi64_relaxed.exit.i.i.i ], [ %i.l, %bb.g ]
  %i.ak = getelementptr i8, ptr %i.i, i64 208
  %i.al = load i64, ptr %i.ak, align 16, !tbaa !112
  %i.am = icmp eq i64 %i.al, %i.aj
  br i1 %i.am, label %bb.h, label %_mi_segment_page_abandon.exit

bb.h:                                             ; preds = %_mi_stat_increase.exit.i
  tail call fastcc void @mi_segment_abandon(ptr noundef nonnull %i.i, ptr noundef %i.e)
  br label %_mi_segment_page_abandon.exit

_mi_segment_page_abandon.exit:                    ; preds = %_mi_stat_increase.exit.i, %bb.h
  ret void
}

; Function Attrs: norecurse nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @mi_page_queue_remove(ptr nofree noundef captures(address) %0, ptr nofree noundef captures(address) %1) unnamed_addr #35 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 48
  %i.b = load atomic i64, ptr %i.a monotonic, align 8
  %i.c = inttoptr i64 %i.b to ptr                 ; 3 uses
  %i.d = getelementptr i8, ptr %1, i64 64         ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !193  ; 3 uses
  %.not = icmp eq ptr %i.e, null
  %.phi.trans.insert = getelementptr i8, ptr %1, i64 56
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !171 ; 5 uses
  br i1 %.not, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %i.e, i64 56
  store ptr %.pre, ptr %i.f, align 8, !tbaa !171
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.a, %bb.b
  %.not22 = icmp eq ptr %.pre, null               ; 2 uses
  br i1 %.not22, label %bb.d, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.g = getelementptr i8, ptr %.pre, i64 64
  store ptr %i.e, ptr %i.g, align 8, !tbaa !193
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %i.h = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !104
  %i.j = icmp eq ptr %1, %i.i
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !193
  store ptr %i.k, ptr %i.h, align 8, !tbaa !104
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.l = load ptr, ptr %0, align 8, !tbaa !105
  %i.m = icmp eq ptr %1, %i.l
  br i1 %i.m, label %bb.g, label %mi_heap_queue_first_update.exit

bb.g:                                             ; preds = %bb.f
  store ptr %.pre, ptr %0, align 8, !tbaa !105
  %i.n = getelementptr i8, ptr %0, i64 16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !103  ; 4 uses
  %i.p = icmp ugt i64 %i.o, 1024
  br i1 %i.p, label %mi_heap_queue_first_update.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %spec.store.select.i = select i1 %.not22, ptr @_mi_page_empty, ptr %.pre ; 3 uses
  %i.q = add nuw nsw i64 %i.o, 7
  %i.r = lshr i64 %i.q, 3                         ; 8 uses
  %i.s = getelementptr i8, ptr %i.c, i64 8        ; 3 uses
  %i.t = getelementptr [8 x i8], ptr %i.s, i64 %i.r
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !94
  %i.v = icmp eq ptr %i.u, %spec.store.select.i
  br i1 %i.v, label %mi_heap_queue_first_update.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = icmp samesign ult i64 %i.o, 9
  br i1 %i.w, label %.lr.ph.preheader.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = icmp samesign ult i64 %i.o, 65
  br i1 %i.x, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.y = trunc nuw nsw i64 %i.r to i8
  %i.z = add nuw nsw i8 %i.y, 1
  %i.aa = and i8 %i.z, 30
  br label %mi_bin.exit.i

bb.l:                                             ; preds = %bb.j
  %i.ab = add nsw i64 %i.r, -1                    ; 2 uses
  %i.ac = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ab, i1 false) ; 2 uses
  %i.ad = trunc nuw nsw i64 %i.ac to i8
  %i.ae = sub nsw i64 61, %i.ac
  %i.af = lshr i64 %i.ab, %i.ae
  %i.ag = trunc nuw nsw i64 %i.af to i8
  %i.ah = and i8 %i.ag, 3
  %i.ai = shl i8 %i.ad, 2
  %reass.sub = sub i8 %i.ah, %i.ai
  %i.aj = add i8 %reass.sub, -7
  br label %mi_bin.exit.i

mi_bin.exit.i:                                    ; preds = %bb.l, %bb.k
  %.0.i.i = phi i8 [ %i.aj, %bb.l ], [ %i.aa, %bb.k ]
  %i.ak = getelementptr i8, ptr %i.c, i64 1040
  br label %bb.m

bb.m:                                             ; preds = %mi_bin.exit35.i, %mi_bin.exit.i
  %.pn.i = phi ptr [ %0, %mi_bin.exit.i ], [ %.027.i, %mi_bin.exit35.i ] ; 2 uses
  %.027.i = getelementptr i8, ptr %.pn.i, i64 -24 ; 2 uses
  %i.al = getelementptr i8, ptr %.pn.i, i64 -8
  %i.am = load i64, ptr %i.al, align 8, !tbaa !103
  %i.an = add i64 %i.am, 7                        ; 4 uses
  %i.ao = lshr i64 %i.an, 3                       ; 4 uses
  %i.ap = icmp ult i64 %i.an, 16
  br i1 %i.ap, label %mi_bin.exit35.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aq = icmp ult i64 %i.an, 72
  br i1 %i.aq, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ar = trunc nuw nsw i64 %i.ao to i8
  %i.as = add nuw nsw i8 %i.ar, 1
  %i.at = and i8 %i.as, 30
  br label %mi_bin.exit35.i

bb.p:                                             ; preds = %bb.n
  %i.au = icmp ugt i64 %i.an, 131079
  br i1 %i.au, label %mi_bin.exit35.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.av = add nsw i64 %i.ao, -1                   ; 2 uses
  %i.aw = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.av, i1 false) ; 2 uses
  %i.ax = trunc nuw nsw i64 %i.aw to i8
  %i.ay = sub nsw i64 61, %i.aw
  %i.az = lshr i64 %i.av, %i.ay
  %i.ba = trunc i64 %i.az to i8
  %i.bb = and i8 %i.ba, 3
  %i.bc = shl i8 %i.ax, 2
  %reass.sub25 = sub i8 %i.bb, %i.bc
  %i.bd = add i8 %reass.sub25, -7
  br label %mi_bin.exit35.i

mi_bin.exit35.i:                                  ; preds = %bb.q, %bb.p, %bb.o, %bb.m
  %.0.i34.i = phi i8 [ %i.bd, %bb.q ], [ %i.at, %bb.o ], [ 1, %bb.m ], [ 73, %bb.p ]
  %i.be = icmp eq i8 %.0.i.i, %.0.i34.i
  %i.bf = icmp ugt ptr %.027.i, %i.ak
  %i.bg = and i1 %i.bf, %i.be
  br i1 %i.bg, label %bb.m, label %bb.r, !llvm.loop !28

bb.r:                                             ; preds = %mi_bin.exit35.i
  %i.bh = add nuw nsw i64 %i.ao, 1
  %.not.i = icmp samesign ult i64 %i.ao, %i.r
  %spec.select.i = select i1 %.not.i, i64 %i.bh, i64 %i.r ; 2 uses
  %.not3237.i = icmp samesign ugt i64 %spec.select.i, %i.r
  br i1 %.not3237.i, label %mi_heap_queue_first_update.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.r, %bb.i
  %.145.i = phi i64 [ %spec.select.i, %bb.r ], [ 0, %bb.i ] ; 4 uses
  %i.bi = add nuw nsw i64 %i.r, 1
  %i.bj = sub nsw i64 %i.bi, %.145.i              ; 3 uses
  %min.iters.check = icmp ult i64 %i.bj, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %i.bj, -4                      ; 3 uses
  %broadcast.splatinsert = insertelement <2 x ptr> poison, ptr %spec.store.select.i, i64 0
  %broadcast.splat = shufflevector <2 x ptr> %broadcast.splatinsert, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bk = getelementptr [8 x i8], ptr %i.s, i64 %.145.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bl = getelementptr [8 x i8], ptr %i.bk, i64 %index ; 2 uses
  %i.bm = getelementptr i8, ptr %i.bl, i64 16
  store <2 x ptr> %broadcast.splat, ptr %i.bl, align 8, !tbaa !94
  store <2 x ptr> %broadcast.splat, ptr %i.bm, align 8, !tbaa !94
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bn = icmp eq i64 %index.next, %n.vec
  br i1 %i.bn, label %middle.block, label %vector.body, !llvm.loop !559

middle.block:                                     ; preds = %vector.body
  %2 = add i64 %.145.i, %n.vec
  %cmp.n = icmp eq i64 %i.bj, %n.vec
  br i1 %cmp.n, label %mi_heap_queue_first_update.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %.038.i.ph = phi i64 [ %.145.i, %.lr.ph.preheader.i ], [ %2, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.038.i = phi i64 [ %i.bp, %.lr.ph.i ], [ %.038.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %i.bo = getelementptr [8 x i8], ptr %i.s, i64 %.038.i
  store ptr %spec.store.select.i, ptr %i.bo, align 8, !tbaa !94
  %i.bp = add nuw nsw i64 %.038.i, 1
  %exitcond.not.i = icmp eq i64 %.038.i, %i.r
  br i1 %exitcond.not.i, label %mi_heap_queue_first_update.exit, label %.lr.ph.i, !llvm.loop !560

mi_heap_queue_first_update.exit:                  ; preds = %.lr.ph.i, %middle.block, %bb.r, %bb.h, %bb.g, %bb.f
  %i.bq = getelementptr i8, ptr %1, i64 56
  %i.br = getelementptr i8, ptr %i.c, i64 3024    ; 2 uses
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !170
  %i.bt = add i64 %i.bs, -1
  store i64 %i.bt, ptr %i.br, align 8, !tbaa !170
  %i.bu = getelementptr i8, ptr %1, i64 14        ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bq, i8 0, i64 16, i1 false)
  %i.bv = load i8, ptr %i.bu, align 2
  %i.bw = and i8 %i.bv, -2
  store i8 %i.bw, ptr %i.bu, align 2
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @_mi_segment_page_abandon(ptr noundef %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = add i64 %i.a, -1
  %i.c = and i64 %i.b, -33554432
  %i.d = inttoptr i64 %i.c to ptr                 ; 3 uses
  %i.e = getelementptr i8, ptr %i.d, i64 192      ; 3 uses
  %i.f = load i64, ptr %i.e, align 64, !tbaa !113
  %i.g = add i64 %i.f, 1                          ; 2 uses
  store i64 %i.g, ptr %i.e, align 64, !tbaa !113
  %i.h = getelementptr i8, ptr %1, i64 896
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !172  ; 4 uses
  %i.j = getelementptr i8, ptr %i.i, i64 256      ; 5 uses
  %i.k = icmp uge ptr %i.j, @_mi_stats_main
  %i.l = icmp ult ptr %i.j, getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 640)
  %i.m = select i1 %i.k, i1 %i.l, i1 false
  %i.n = getelementptr i8, ptr %i.i, i64 280      ; 3 uses
  br i1 %i.m, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.o = atomicrmw add ptr %i.n, i64 1 monotonic, align 8
  %i.p = getelementptr i8, ptr %i.i, i64 272      ; 2 uses
  %i.q = add i64 %i.o, 1                          ; 2 uses
  %i.r = load atomic i64, ptr %i.p monotonic, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.0.i.i.i = phi i64 [ %i.r, %bb.b ], [ %i.v, %bb.d ] ; 2 uses
  %i.s = icmp slt i64 %.0.i.i.i, %i.q
  br i1 %i.s, label %bb.d, label %mi_atomic_maxi64_relaxed.exit.i.i

bb.d:                                             ; preds = %bb.c
  %i.t = cmpxchg weak ptr %i.p, i64 %.0.i.i.i, i64 %i.q release monotonic, align 8 ; 2 uses
  %i.u = extractvalue { i64, i1 } %i.t, 1
  %i.v = extractvalue { i64, i1 } %i.t, 0
  br i1 %i.u, label %mi_atomic_maxi64_relaxed.exit.i.i, label %bb.c, !llvm.loop !10

mi_atomic_maxi64_relaxed.exit.i.i:                ; preds = %bb.d, %bb.c
  %i.w = atomicrmw add ptr %i.j, i64 1 monotonic, align 8 ; 0 uses
  %.pre = load i64, ptr %i.e, align 64, !tbaa !113
  br label %_mi_stat_increase.exit

bb.e:                                             ; preds = %bb.a
  %i.x = load i64, ptr %i.n, align 8, !tbaa !144
  %i.y = add i64 %i.x, 1                          ; 3 uses
  store i64 %i.y, ptr %i.n, align 8, !tbaa !144
  %i.z = getelementptr i8, ptr %i.i, i64 272      ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !145
  %i.ab = icmp sgt i64 %i.y, %i.aa
  br i1 %i.ab, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i64 %i.y, ptr %i.z, align 8, !tbaa !145
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ac = load i64, ptr %i.j, align 8, !tbaa !146
  %i.ad = add i64 %i.ac, 1
  store i64 %i.ad, ptr %i.j, align 8, !tbaa !146
  br label %_mi_stat_increase.exit

_mi_stat_increase.exit:                           ; preds = %mi_atomic_maxi64_relaxed.exit.i.i, %bb.g
  %i.ae = phi i64 [ %.pre, %mi_atomic_maxi64_relaxed.exit.i.i ], [ %i.g, %bb.g ]
  %i.af = getelementptr i8, ptr %i.d, i64 208
  %i.ag = load i64, ptr %i.af, align 16, !tbaa !112
  %i.ah = icmp eq i64 %i.ag, %i.ae
  br i1 %i.ah, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_mi_stat_increase.exit
  tail call fastcc void @mi_segment_abandon(ptr noundef nonnull %i.d, ptr noundef %1)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_mi_stat_increase.exit
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @_mi_page_free(ptr noundef %0, ptr nofree noundef captures(address) %1, i1 noundef zeroext %2) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 14         ; 2 uses
  %i.b = load i8, ptr %i.a, align 2
  %i.c = and i8 %i.b, -3
  store i8 %i.c, ptr %i.a, align 2
  %i.d = getelementptr i8, ptr %0, i64 48         ; 2 uses
  %i.e = load atomic i64, ptr %i.d monotonic, align 8
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !72
  %i.h = getelementptr i8, ptr %i.g, i64 32       ; 3 uses
  tail call fastcc void @mi_page_queue_remove(ptr noundef %1, ptr noundef %0)
  store atomic i64 0, ptr %i.d release, align 8
  %i.i = ptrtoint ptr %0 to i64
  %i.j = add i64 %i.i, -1
  %i.k = and i64 %i.j, -33554432
  %i.l = inttoptr i64 %i.k to ptr                 ; 4 uses
  %i.m = tail call fastcc ptr @mi_segment_page_clear(ptr noundef %0, ptr noundef %i.h) ; 0 uses
  %i.n = getelementptr i8, ptr %i.l, i64 208
  %i.o = load i64, ptr %i.n, align 16, !tbaa !112 ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @mi_segment_free(ptr noundef nonnull %i.l, ptr noundef %i.h)
  br label %_mi_segment_page_free.exit

bb.c:                                             ; preds = %bb.a
  %i.q = getelementptr i8, ptr %i.l, i64 192
  %i.r = load i64, ptr %i.q, align 64, !tbaa !113
  %i.s = icmp eq i64 %i.o, %i.r
  br i1 %i.s, label %bb.d, label %_mi_segment_page_free.exit

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @mi_segment_abandon(ptr noundef nonnull %i.l, ptr noundef %i.h)
  br label %_mi_segment_page_free.exit

_mi_segment_page_free.exit:                       ; preds = %bb.b, %bb.c, %bb.d
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @_mi_segment_page_free(ptr noundef %0, i1 noundef zeroext %1, ptr nofree noundef captures(address) %2) local_unnamed_addr #2 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = add i64 %i.a, -1
  %i.c = and i64 %i.b, -33554432
  %i.d = inttoptr i64 %i.c to ptr                 ; 4 uses
  %i.e = tail call fastcc ptr @mi_segment_page_clear(ptr noundef %0, ptr noundef %2) ; 0 uses
  %i.f = getelementptr i8, ptr %i.d, i64 208
  %i.g = load i64, ptr %i.f, align 16, !tbaa !112 ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @mi_segment_free(ptr noundef nonnull %i.d, ptr noundef %2)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr i8, ptr %i.d, i64 192
  %i.j = load i64, ptr %i.i, align 64, !tbaa !113
  %i.k = icmp eq i64 %i.g, %i.j
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @mi_segment_abandon(ptr noundef nonnull %i.d, ptr noundef %2)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @_mi_heap_collect_retired(ptr nofree noundef captures(address) %0, i1 noundef zeroext %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 3032       ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !106  ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 3040       ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !107
  %.not33 = icmp ugt i64 %i.b, %i.d
  br i1 %.not33, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 1040
  br label %bb.b

._crit_edge:                                      ; preds = %_PyMem_mi_page_maybe_free.exit, %bb.a
  %.027.lcssa = phi i64 [ 74, %bb.a ], [ %.2, %_PyMem_mi_page_maybe_free.exit ]
  %.026.lcssa = phi i64 [ 0, %bb.a ], [ %.1, %_PyMem_mi_page_maybe_free.exit ]
  store i64 %.027.lcssa, ptr %i.a, align 8, !tbaa !106
  store i64 %.026.lcssa, ptr %i.c, align 8, !tbaa !107
  ret void

end_hunk_2
begin_hunk_3_@_PyObject_DebugMallocStats:bb.a
  %i.at = and i64 %.029.i.i.i, 3
  %i.au = cmpxchg weak ptr %i.ar, i64 %.029.i.i.i, i64 %i.at acq_rel acquire, align 8 ; 2 uses
  %i.av = extractvalue { i64, i1 } %i.au, 1
  %i.aw = extractvalue { i64, i1 } %i.au, 0
  br i1 %i.av, label %bb.i, label %bb.h, !llvm.loop !3

bb.i:                                             ; preds = %bb.h
  %i.ax = and i64 %.029.i.i.i, -4                 ; 2 uses
  %i.ay = inttoptr i64 %i.ax to ptr               ; 3 uses
  %i.az = icmp eq i64 %i.ax, 0
  br i1 %i.az, label %_mi_page_thread_free_collect.exit.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ba = getelementptr i8, ptr %.0.i4.i.i.i, i64 10
  %i.bb = load i16, ptr %i.ba, align 2, !tbaa !114 ; 2 uses
  %i.bc = zext i16 %i.bb to i32                   ; 2 uses
  %i.bd = load atomic i64, ptr %i.ay monotonic, align 8 ; 2 uses
  %i.be = icmp ne i64 %i.bd, 0
  %i.bf = icmp ne i16 %i.bb, 0
  %i.bg = select i1 %i.be, i1 %i.bf, i1 false
  br i1 %i.bg, label %.lr.ph.i.i.i11, label %._crit_edge.i.i.i

.lr.ph.i.i.i11:                                   ; preds = %bb.j, %.lr.ph.i.i.i11
  %i.bh = phi i64 [ %i.bk, %.lr.ph.i.i.i11 ], [ %i.bd, %bb.j ]
  %.02834.i.i.i = phi i32 [ %i.bj, %.lr.ph.i.i.i11 ], [ 1, %bb.j ] ; 2 uses
  %i.bi = inttoptr i64 %i.bh to ptr               ; 2 uses
  %i.bj = add nuw nsw i32 %.02834.i.i.i, 1        ; 2 uses
  %i.bk = load atomic i64, ptr %i.bi monotonic, align 8 ; 2 uses
  %i.bl = icmp ne i64 %i.bk, 0
  %i.bm = icmp samesign ult i32 %.02834.i.i.i, %i.bc
  %i.bn = select i1 %i.bl, i1 %i.bm, i1 false
  br i1 %i.bn, label %.lr.ph.i.i.i11, label %._crit_edge.i.i.i, !llvm.loop !4

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i11, %bb.j
  %.028.lcssa.i.i.i = phi i32 [ 1, %bb.j ], [ %i.bj, %.lr.ph.i.i.i11 ] ; 2 uses
  %.0.lcssa.i.i.i = phi ptr [ %i.ay, %bb.j ], [ %i.bi, %.lr.ph.i.i.i11 ]
  %i.bo = icmp samesign ugt i32 %.028.lcssa.i.i.i, %i.bc
  br i1 %i.bo, label %bb.k, label %bb.l

bb.k:                                             ; preds = %._crit_edge.i.i.i
  tail call void (i32, ptr, ...) @_mi_error_message(i32 noundef 14, ptr noundef nonnull @.str.100)
  br label %_mi_page_thread_free_collect.exit.i.i

bb.l:                                             ; preds = %._crit_edge.i.i.i
  %i.bp = getelementptr i8, ptr %.0.i4.i.i.i, i64 32 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !98
  %i.br = ptrtoint ptr %i.bq to i64
  store atomic i64 %i.br, ptr %.0.lcssa.i.i.i monotonic, align 8
  store ptr %i.ay, ptr %i.bp, align 8, !tbaa !98
  %i.bs = getelementptr i8, ptr %.0.i4.i.i.i, i64 24 ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !62
  %i.bu = sub i32 %i.bt, %.028.lcssa.i.i.i
  store i32 %i.bu, ptr %i.bs, align 8, !tbaa !62
  br label %_mi_page_thread_free_collect.exit.i.i

_mi_page_thread_free_collect.exit.i.i:            ; preds = %bb.l, %bb.k, %bb.i
  %i.bv = getelementptr i8, ptr %.0.i4.i.i.i, i64 32 ; 3 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !98 ; 3 uses
  %.not22.i.i = icmp eq ptr %i.bw, null
  br i1 %.not22.i.i, label %_mi_page_free_collect.exit.i, label %bb.m

bb.m:                                             ; preds = %_mi_page_thread_free_collect.exit.i.i
  %i.bx = getelementptr i8, ptr %.0.i4.i.i.i, i64 16 ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !60 ; 2 uses
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %.sink.split.i.i, label %.preheader.i.i, !prof !96

.preheader.i.i:                                   ; preds = %bb.m, %.preheader.i.i
  %.0.i.i = phi ptr [ %i.cb, %.preheader.i.i ], [ %i.bw, %bb.m ] ; 2 uses
  %i.ca = load atomic i64, ptr %.0.i.i monotonic, align 8 ; 2 uses
  %i.cb = inttoptr i64 %i.ca to ptr
  %.not23.i.i = icmp eq i64 %i.ca, 0
  br i1 %.not23.i.i, label %bb.n, label %.preheader.i.i, !llvm.loop !6

bb.n:                                             ; preds = %.preheader.i.i
  %i.cc = ptrtoint ptr %i.by to i64
  store atomic i64 %i.cc, ptr %.0.i.i monotonic, align 8
  %i.cd = load ptr, ptr %i.bv, align 8, !tbaa !98
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.n, %bb.m
  %.sink.i.i = phi ptr [ %i.cd, %bb.n ], [ %i.bw, %bb.m ]
  store ptr %.sink.i.i, ptr %i.bx, align 8, !tbaa !60
  store ptr null, ptr %i.bv, align 8, !tbaa !98
  %i.ce = getelementptr i8, ptr %.0.i4.i.i.i, i64 15 ; 2 uses
  %i.cf = load i8, ptr %i.ce, align 1
  %i.cg = and i8 %i.cf, -2
  store i8 %i.cg, ptr %i.ce, align 1
  br label %_mi_page_free_collect.exit.i

_mi_page_free_collect.exit.i:                     ; preds = %.sink.split.i.i, %_mi_page_thread_free_collect.exit.i.i
  %i.ch = getelementptr i8, ptr %.0.i4.i.i.i, i64 28
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !65 ; 2 uses
  %i.cj = icmp sgt i32 %i.ci, -1
  br i1 %i.cj, label %mi_page_usable_block_size.exit.i, label %.thread, !prof !96

.thread:                                          ; preds = %_mi_page_free_collect.exit.i
  %i.ck = load i32, ptr %.0.i4.i.i.i, align 8, !tbaa !93
  %i.cl = zext i32 %i.ck to i64
  %i.cm = shl nuw nsw i64 %i.cl, 16               ; 3 uses
  %i.cn = getelementptr i8, ptr %.0.i4.i.i.i, i64 12
  %i.co = load i16, ptr %i.cn, align 4, !tbaa !181
  %i.cp = zext i16 %i.co to i64
  %i.cq = mul nuw i64 %i.cm, %i.cp
  %i.cr = getelementptr i8, ptr %.0.i4.i.i.i, i64 10
  %i.cs = load i16, ptr %i.cr, align 2, !tbaa !114
  %i.ct = zext i16 %i.cs to i64
  %i.cu = mul nuw i64 %i.cm, %i.ct
  br label %_mi_heap_area_init.exit

mi_page_usable_block_size.exit.i:                 ; preds = %_mi_page_free_collect.exit.i
  %i.cv = zext nneg i32 %i.ci to i64              ; 3 uses
  %i.cw = getelementptr i8, ptr %.0.i4.i.i.i, i64 12
  %i.cx = load i16, ptr %i.cw, align 4, !tbaa !181
  %i.cy = zext i16 %i.cx to i64
  %i.cz = mul nuw nsw i64 %i.cy, %i.cv
  %i.da = getelementptr i8, ptr %.0.i4.i.i.i, i64 10
  %i.db = load i16, ptr %i.da, align 2, !tbaa !114
  %i.dc = zext i16 %i.db to i64
  %i.dd = mul nuw nsw i64 %i.dc, %i.cv
  br label %_mi_heap_area_init.exit

_mi_heap_area_init.exit:                          ; preds = %mi_page_usable_block_size.exit.i, %.thread
  %i.de = phi i64 [ %i.cu, %.thread ], [ %i.dd, %mi_page_usable_block_size.exit.i ]
  %i.df = phi i64 [ %i.cq, %.thread ], [ %i.cz, %mi_page_usable_block_size.exit.i ]
  %.0.i1720.i15 = phi i64 [ %i.cm, %.thread ], [ %i.cv, %mi_page_usable_block_size.exit.i ]
  %i.dg = getelementptr i8, ptr %.0.i4.i.i.i, i64 24
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !62
  %i.di = zext i32 %i.dh to i64                   ; 2 uses
  %i.dj = add i64 %.sroa.0.1.i, %i.di             ; 2 uses
  %i.dk = mul i64 %.0.i1720.i15, %i.di            ; 2 uses
  %i.dl = add i64 %i.dk, %.sroa.6.1.i             ; 2 uses
  %i.dm = add i64 %i.dk, %.sroa.9.1.i             ; 2 uses
  %i.dn = add i64 %i.df, %.sroa.12.1.i            ; 2 uses
  %i.do = add i64 %i.de, %.sroa.15.1.i            ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i.i, label %.critedge.i.i.i.i, label %mi_heap_area_visitor.exit.i.i.i, !llvm.loop !19

.critedge.i.i.i.i:                                ; preds = %_mi_heap_area_init.exit, %.preheader.i.i.split.i.i
  %.sroa.0.2.i = phi i64 [ %.sroa.0.0.i, %.preheader.i.i.split.i.i ], [ %i.dj, %_mi_heap_area_init.exit ] ; 2 uses
  %.sroa.6.2.i = phi i64 [ %.sroa.6.0.i, %.preheader.i.i.split.i.i ], [ %i.dl, %_mi_heap_area_init.exit ] ; 2 uses
  %.sroa.9.2.i = phi i64 [ %.sroa.9.0.i, %.preheader.i.i.split.i.i ], [ %i.dm, %_mi_heap_area_init.exit ] ; 2 uses
  %.sroa.12.2.i = phi i64 [ %.sroa.12.0.i, %.preheader.i.i.split.i.i ], [ %i.dn, %_mi_heap_area_init.exit ] ; 2 uses
  %.sroa.15.2.i = phi i64 [ %.sroa.15.0.i, %.preheader.i.i.split.i.i ], [ %i.do, %_mi_heap_area_init.exit ] ; 2 uses
  %i.dp = add nuw nsw i64 %.02229.i.i.i.i, 1      ; 2 uses
  %exitcond.i.i.i.i = icmp eq i64 %i.dp, 75
  br i1 %exitcond.i.i.i.i, label %py_mimalloc_print_stats.exit, label %.preheader.i.i.split.i.i, !llvm.loop !20

py_mimalloc_print_stats.exit:                     ; preds = %.critedge.i.i.i.i, %_mi_heap_delayed_free_partial.exit.i.i, %_mi_heap_delayed_free_partial.exit.thread.i.i
  %.sroa.0.3.i = phi i64 [ 0, %_mi_heap_delayed_free_partial.exit.thread.i.i ], [ 0, %_mi_heap_delayed_free_partial.exit.i.i ], [ %.sroa.0.2.i, %.critedge.i.i.i.i ]
  %.sroa.6.3.i = phi i64 [ 0, %_mi_heap_delayed_free_partial.exit.thread.i.i ], [ 0, %_mi_heap_delayed_free_partial.exit.i.i ], [ %.sroa.6.2.i, %.critedge.i.i.i.i ]
  %.sroa.9.3.i = phi i64 [ 0, %_mi_heap_delayed_free_partial.exit.thread.i.i ], [ 0, %_mi_heap_delayed_free_partial.exit.i.i ], [ %.sroa.9.2.i, %.critedge.i.i.i.i ]
  %.sroa.12.3.i = phi i64 [ 0, %_mi_heap_delayed_free_partial.exit.thread.i.i ], [ 0, %_mi_heap_delayed_free_partial.exit.i.i ], [ %.sroa.12.2.i, %.critedge.i.i.i.i ]
  %.sroa.15.3.i = phi i64 [ 0, %_mi_heap_delayed_free_partial.exit.thread.i.i ], [ 0, %_mi_heap_delayed_free_partial.exit.i.i ], [ %.sroa.15.2.i, %.critedge.i.i.i.i ]
  %i.dq = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.184, i64 noundef %.sroa.0.3.i) #55 ; 0 uses
  %i.dr = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.185, i64 noundef %.sroa.6.3.i) #55 ; 0 uses
  %i.ds = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.186, i64 noundef %.sroa.9.3.i) #55 ; 0 uses
  %i.dt = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.187, i64 noundef %.sroa.12.3.i) #55 ; 0 uses
  %i.du = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.188, i64 noundef %.sroa.15.3.i) #55 ; 0 uses
  br label %bb.x

bb.o:                                             ; preds = %bb.a
  %.0.in.i7.not = icmp eq ptr %.0.in.in.i, @_PyObject_Malloc
  br i1 %.0.in.i7.not, label %bb.p, label %bb.x

bb.p:                                             ; preds = %bb.o
  %i.dv = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !435
  %i.dx = getelementptr i8, ptr %i.dw, i64 10952
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !416 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #55
  %i.dz = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.189, i32 noundef 512, i32 noundef 32) #55 ; 0 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.c, i8 0, i64 256, i1 false), !tbaa !128
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.b, i8 0, i64 256, i1 false), !tbaa !128
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.a, i8 0, i64 256, i1 false), !tbaa !128
  %i.ea = getelementptr i8, ptr %i.dy, i64 520
  %i.eb = load i32, ptr %i.ea, align 8, !tbaa !424 ; 2 uses
  %.not143.i = icmp eq i32 %i.eb, 0
  br i1 %.not143.i, label %._crit_edge.i, label %.lr.ph135.i

.lr.ph135.i:                                      ; preds = %bb.p
  %i.ec = getelementptr i8, ptr %i.dy, i64 512
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !425
  %wide.trip.count.i = zext i32 %i.eb to i64
  br label %bb.q

bb.q:                                             ; preds = %.loopexit.i.a, %.lr.ph135.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph135.i ], [ %indvars.iv.next.i, %.loopexit.i.a ] ; 2 uses
  %.0109134.i = phi i64 [ 0, %.lr.ph135.i ], [ %.1110.i, %.loopexit.i.a ] ; 2 uses
  %.0115133.i = phi i64 [ 0, %.lr.ph135.i ], [ %.2.i, %.loopexit.i.a ] ; 3 uses
  %.0117132.i = phi i32 [ 0, %.lr.ph135.i ], [ %.1118.i, %.loopexit.i.a ] ; 2 uses
  %i.ee = getelementptr [48 x i8], ptr %i.ed, i64 %indvars.iv.i ; 3 uses
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !428 ; 3 uses
  %i.eg = icmp eq i64 %i.ef, 0
  br i1 %i.eg, label %.loopexit.i.a, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.eh = getelementptr i8, ptr %i.ee, i64 16
  %i.ei = load i32, ptr %i.eh, align 8, !tbaa !453
  %.biased.i = add i64 %i.ef, 16383
  %.0.i10 = and i64 %.biased.i, -16384            ; 2 uses
  %i.ej = getelementptr i8, ptr %i.ee, i64 8
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !429
  %i.el = ptrtoint ptr %i.ek to i64               ; 2 uses
  %i.em = icmp ult i64 %.0.i10, %i.el
  br i1 %i.em, label %.lr.ph.i, label %.loopexit.i

.lr.ph.i:                                         ; preds = %bb.r, %bb.t
  %.1130.i = phi i64 [ %i.fi, %bb.t ], [ %.0.i10, %bb.r ] ; 2 uses
  %i.en = inttoptr i64 %.1130.i to ptr            ; 2 uses
  %i.eo = load i32, ptr %i.en, align 16384, !tbaa !101 ; 3 uses
  %i.ep = icmp eq i32 %i.eo, 0
  br i1 %i.ep, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i
  %i.eq = getelementptr i8, ptr %i.en, i64 36
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !446 ; 2 uses
  %i.es = zext i32 %i.er to i64                   ; 3 uses
  %i.et = getelementptr [8 x i8], ptr %i.a, i64 %i.es ; 2 uses
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !128
  %i.ev = add i64 %i.eu, 1
  store i64 %i.ev, ptr %i.et, align 8, !tbaa !128
  %i.ew = zext i32 %i.eo to i64
  %i.ex = getelementptr [8 x i8], ptr %i.b, i64 %i.es ; 2 uses
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !128
  %i.ez = add i64 %i.ey, %i.ew
  store i64 %i.ez, ptr %i.ex, align 8, !tbaa !128
  %i.fa = shl i32 %i.er, 4
  %i.fb = add i32 %i.fa, 16
  %i.fc = udiv i32 16336, %i.fb
  %i.fd = sub i32 %i.fc, %i.eo
  %i.fe = zext i32 %i.fd to i64
  %i.ff = getelementptr [8 x i8], ptr %i.c, i64 %i.es ; 2 uses
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !128
  %i.fh = add i64 %i.fg, %i.fe
  store i64 %i.fh, ptr %i.ff, align 8, !tbaa !128
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.lr.ph.i
  %i.fi = add i64 %.1130.i, 16384                 ; 2 uses
  %i.fj = icmp ult i64 %i.fi, %i.el
  br i1 %i.fj, label %.lr.ph.i, label %.loopexit.i, !llvm.loop !627

.loopexit.i:                                      ; preds = %bb.t, %bb.r
  %1 = add i64 %.0109134.i, 1
  %2 = add i32 %i.ei, %.0117132.i
  %3 = and i64 %i.ef, 16383
  %.not.i10 = icmp eq i64 %3, 0
  %4 = add i64 %.0115133.i, 16384
  %.1116.i = select i1 %.not.i10, i64 %.0115133.i, i64 %4
  br label %.loopexit.i.a

.loopexit.i.a:                                    ; preds = %.loopexit.i, %bb.q
  %.1118.i = phi i32 [ %.0117132.i, %bb.q ], [ %2, %.loopexit.i ] ; 2 uses
  %.2.i = phi i64 [ %.0115133.i, %bb.q ], [ %.1116.i, %.loopexit.i ] ; 2 uses
  %.1110.i = phi i64 [ %.0109134.i, %bb.q ], [ %1, %.loopexit.i ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.q, !llvm.loop !628

._crit_edge.i:                                    ; preds = %.loopexit.i.a, %bb.p
  %.0117.lcssa.i = phi i32 [ 0, %bb.p ], [ %.1118.i, %.loopexit.i.a ] ; 2 uses
  %.0115.lcssa.i = phi i64 [ 0, %bb.p ], [ %.2.i, %.loopexit.i.a ] ; 2 uses
  %.0109.lcssa.i = phi i64 [ 0, %bb.p ], [ %.1110.i, %.loopexit.i.a ] ; 4 uses
  %i.fk = tail call i32 @fputc(i32 noundef 10, ptr noundef %0) ; 0 uses
  %fwrite.i = tail call i64 @fwrite(ptr nonnull @.str.190, i64 110, i64 1, ptr %0) ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.w, %._crit_edge.i
  %indvars.iv146.i = phi i64 [ 0, %._crit_edge.i ], [ %indvars.iv.next147.i, %bb.w ] ; 5 uses
  %.0111142.i = phi i64 [ 0, %._crit_edge.i ], [ %.1112.i, %bb.w ] ; 2 uses
  %.0113141.i = phi i64 [ 0, %._crit_edge.i ], [ %.1114.i, %bb.w ] ; 2 uses
  %.0119140.i = phi i64 [ 0, %._crit_edge.i ], [ %.1120.i, %bb.w ] ; 2 uses
  %.0121139.i = phi i64 [ 0, %._crit_edge.i ], [ %.1122.i, %bb.w ] ; 2 uses
  %i.fl = getelementptr [8 x i8], ptr %i.a, i64 %indvars.iv146.i
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !128 ; 4 uses
  %indvars.iv.next147.i = add nuw nsw i64 %indvars.iv146.i, 1 ; 4 uses
  %i.fn = icmp eq i64 %i.fm, 0
  br i1 %i.fn, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %indvars.i = trunc i64 %indvars.iv.next147.i to i32
  %i.fo = shl nuw nsw i64 %indvars.iv.next147.i, 4 ; 3 uses
  %i.fp = shl nuw nsw i32 %indvars.i, 4
  %i.fq = getelementptr [8 x i8], ptr %i.c, i64 %indvars.iv146.i
  %i.fr = load i64, ptr %i.fq, align 8, !tbaa !128 ; 2 uses
  %i.fs = getelementptr [8 x i8], ptr %i.b, i64 %indvars.iv146.i
  %i.ft = load i64, ptr %i.fs, align 8, !tbaa !128 ; 2 uses
  %i.fu = trunc nuw nsw i64 %indvars.iv146.i to i32
  %i.fv = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.191, i32 noundef %i.fu, i32 noundef %i.fp, i64 noundef %i.fm, i64 noundef %i.ft, i64 noundef %i.fr) #55 ; 0 uses
  %i.fw = mul i64 %i.ft, %i.fo
  %i.fx = add i64 %i.fw, %.0121139.i
  %i.fy = mul i64 %i.fr, %i.fo
  %i.fz = add i64 %i.fy, %.0119140.i
  %i.ga = mul i64 %i.fm, 48
  %i.gb = add i64 %i.ga, %.0113141.i
  %.rhs.trunc.i = trunc i64 %i.fo to i16
  %i.gc = urem i16 16336, %.rhs.trunc.i
  %.zext.i = zext nneg i16 %i.gc to i64
  %i.gd = mul i64 %i.fm, %.zext.i
  %i.ge = add i64 %i.gd, %.0111142.i
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.1122.i = phi i64 [ %i.fx, %bb.v ], [ %.0121139.i, %bb.u ] ; 3 uses
  %.1120.i = phi i64 [ %i.fz, %bb.v ], [ %.0119140.i, %bb.u ] ; 3 uses
  %.1114.i = phi i64 [ %i.gb, %bb.v ], [ %.0113141.i, %bb.u ] ; 3 uses
  %.1112.i = phi i64 [ %i.ge, %bb.v ], [ %.0111142.i, %bb.u ] ; 3 uses
  %exitcond149.not.i = icmp eq i64 %indvars.iv.next147.i, 32
  br i1 %exitcond149.not.i, label %pymalloc_print_stats.exit, label %bb.u, !llvm.loop !629

pymalloc_print_stats.exit:                        ; preds = %bb.w
  %i.gf = tail call i32 @fputc(i32 noundef 10, ptr noundef %0) ; 0 uses
  %i.gg = getelementptr i8, ptr %i.dy, i64 1072   ; 2 uses
  %i.gh = load i64, ptr %i.gg, align 8, !tbaa !630
  %i.gi = tail call fastcc i64 @printone(ptr noundef %0, ptr noundef nonnull @.str.192, i64 noundef %i.gh) ; 0 uses
  %i.gj = load i64, ptr %i.gg, align 8, !tbaa !630
  %i.gk = sub i64 %i.gj, %.0109.lcssa.i
  %i.gl = tail call fastcc i64 @printone(ptr noundef %0, ptr noundef nonnull @.str.193, i64 noundef %i.gk) ; 0 uses
  %i.gm = getelementptr i8, ptr %i.dy, i64 1080
  %i.gn = load i64, ptr %i.gm, align 8, !tbaa !454
  %i.go = tail call fastcc i64 @printone(ptr noundef %0, ptr noundef nonnull @.str.194, i64 noundef %i.gn) ; 0 uses
  %i.gp = tail call fastcc i64 @printone(ptr noundef %0, ptr noundef nonnull @.str.195, i64 noundef %.0109.lcssa.i) ; 0 uses
  %i.gq = call i32 (ptr, i64, ptr, ...) @PyOS_snprintf(ptr noundef nonnull %i.d, i64 noundef 128, ptr noundef nonnull @.str.196, i64 noundef %.0109.lcssa.i, i32 noundef 1048576) #55 ; 0 uses
  %i.gr = shl i64 %.0109.lcssa.i, 20
  %i.gs = call fastcc i64 @printone(ptr noundef %0, ptr noundef nonnull %i.d, i64 noundef %i.gr) ; 0 uses
  %i.gt = call i32 @fputc(i32 noundef 10, ptr noundef %0) ; 0 uses
  %i.gu = call fastcc i64 @printone(ptr noundef %0, ptr noundef nonnull @.str.197, i64 noundef %.1122.i) ; 0 uses
  %i.gv = call fastcc i64 @printone(ptr noundef %0, ptr noundef nonnull @.str.198, i64 noundef %.1120.i) ; 0 uses
  %i.gw = call i32 (ptr, i64, ptr, ...) @PyOS_snprintf(ptr noundef nonnull %i.d, i64 noundef 128, ptr noundef nonnull @.str.199, i32 noundef %.0117.lcssa.i, i32 noundef 16384) #55 ; 0 uses
  %i.gx = zext i32 %.0117.lcssa.i to i64
  %i.gy = shl nuw nsw i64 %i.gx, 14               ; 2 uses
  %i.gz = call fastcc i64 @printone(ptr noundef %0, ptr noundef nonnull %i.d, i64 noundef %i.gy) ; 0 uses
  %i.ha = call fastcc i64 @printone(ptr noundef %0, ptr noundef nonnull @.str.200, i64 noundef %.1114.i) ; 0 uses
  %i.hb = call fastcc i64 @printone(ptr noundef %0, ptr noundef nonnull @.str.201, i64 noundef %.1112.i) ; 0 uses
  %i.hc = call fastcc i64 @printone(ptr noundef %0, ptr noundef nonnull @.str.202, i64 noundef %.0115.lcssa.i) ; 0 uses
  %i.hd = add i64 %i.gy, %.0115.lcssa.i
  %i.he = add i64 %i.hd, %.1122.i
  %i.hf = add i64 %i.he, %.1120.i
  %i.hg = add i64 %i.hf, %.1114.i
  %i.hh = add i64 %i.hg, %.1112.i
  %i.hi = call fastcc i64 @printone(ptr noundef %0, ptr noundef nonnull @.str.203, i64 noundef %i.hh) ; 0 uses
  %fwrite128.i = call i64 @fwrite(ptr nonnull @.str.204, i64 18, i64 1, ptr %0) ; 0 uses
  %i.hj = getelementptr i8, ptr %i.dy, i64 263240 ; 2 uses
  %i.hk = load i32, ptr %i.hj, align 8, !tbaa !455
  %i.hl = sext i32 %i.hk to i64
  %i.hm = call fastcc i64 @printone(ptr noundef %0, ptr noundef nonnull @.str.205, i64 noundef %i.hl) ; 0 uses
  %i.hn = getelementptr i8, ptr %i.dy, i64 263244 ; 2 uses
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !456
  %i.hp = sext i32 %i.ho to i64
  %i.hq = call fastcc i64 @printone(ptr noundef %0, ptr noundef nonnull @.str.206, i64 noundef %i.hp) ; 0 uses
  %i.hr = call i32 @fputc(i32 noundef 10, ptr noundef %0) ; 0 uses
  %i.hs = call fastcc i64 @printone(ptr noundef %0, ptr noundef nonnull @.str.207, i64 noundef 262144) ; 0 uses
  %i.ht = load i32, ptr %i.hj, align 8, !tbaa !455
  %i.hu = sext i32 %i.ht to i64
  %i.hv = shl nsw i64 %i.hu, 18                   ; 2 uses
  %i.hw = call fastcc i64 @printone(ptr noundef %0, ptr noundef nonnull @.str.208, i64 noundef %i.hv) ; 0 uses
  %i.hx = add nsw i64 %i.hv, 262144
  %i.hy = load i32, ptr %i.hn, align 4, !tbaa !456
  %i.hz = sext i32 %i.hy to i64
  %i.ia = shl nsw i64 %i.hz, 17                   ; 2 uses
  %i.ib = call fastcc i64 @printone(ptr noundef %0, ptr noundef nonnull @.str.209, i64 noundef %i.ia) ; 0 uses
  %i.ic = add nsw i64 %i.hx, %i.ia
  %i.id = call fastcc i64 @printone(ptr noundef %0, ptr noundef nonnull @.str.203, i64 noundef %i.ic) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  br label %bb.x

bb.x:                                             ; preds = %bb.o, %pymalloc_print_stats.exit, %py_mimalloc_print_stats.exit
  %.0 = phi i32 [ 1, %py_mimalloc_print_stats.exit ], [ 1, %pymalloc_print_stats.exit ], [ 0, %bb.o ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #49

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @_mi_free_block_mt(ptr noundef %0, ptr noundef %1) unnamed_addr #5 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = add i64 %i.a, -1
  %i.c = and i64 %i.b, -33554432
  %i.d = inttoptr i64 %i.c to ptr                 ; 2 uses
  %i.e = getelementptr i8, ptr %i.d, i64 240
  %i.f = load i32, ptr %i.e, align 16, !tbaa !196
  %i.g = icmp eq i32 %i.f, 1
  br i1 %i.g, label %bb.b, label %_mi_segment_huge_page_reset.exit

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr i8, ptr %i.d, i64 24
  %i.i = load i8, ptr %i.h, align 8, !tbaa !194, !range !86, !noundef !87
  %i.j = trunc nuw i8 %i.i to i1
  %i.k = icmp ne ptr %1, null
  %or.cond.not.i = and i1 %i.k, %i.j
  br i1 %or.cond.not.i, label %bb.c, label %_mi_segment_huge_page_reset.exit

bb.c:                                             ; preds = %bb.b
  %i.l = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.m = add i64 %i.l, -1
  %i.n = and i64 %i.m, -33554432                  ; 2 uses
  %i.o = inttoptr i64 %i.n to ptr                 ; 2 uses
  %i.p = sub i64 %i.l, %i.n
  %i.q = lshr i64 %i.p, 16
  %i.r = getelementptr i8, ptr %i.o, i64 264
  %i.s = getelementptr [80 x i8], ptr %i.r, i64 %i.q ; 2 uses
  %i.t = getelementptr i8, ptr %i.s, i64 4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !100
  %i.v = zext i32 %i.u to i64
  %i.w = sub nsw i64 0, %i.v
  %i.x = getelementptr i8, ptr %i.s, i64 %i.w     ; 4 uses
  %i.y = getelementptr i8, ptr %i.x, i64 14
  %.val.i.i.i = load i8, ptr %i.y, align 2
  %i.z = and i8 %.val.i.i.i, 2
  %.not.i.i.i = icmp eq i8 %i.z, 0
  br i1 %.not.i.i.i, label %bb.d, label %bb.f, !prof !96

bb.d:                                             ; preds = %bb.c
  %i.aa = getelementptr i8, ptr %i.x, i64 28
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !65 ; 2 uses
  %i.ac = icmp sgt i32 %i.ab, -1
  br i1 %i.ac, label %bb.e, label %_mi_segment_page_start.exit.i.i.i.i.i.i, !prof !96

bb.e:                                             ; preds = %bb.d
  %i.ad = zext nneg i32 %i.ab to i64
  br label %mi_usable_size.exit.i

_mi_segment_page_start.exit.i.i.i.i.i.i:          ; preds = %bb.d
  %i.ae = load i32, ptr %i.x, align 8, !tbaa !93
  %i.af = zext i32 %i.ae to i64
  %i.ag = shl nuw nsw i64 %i.af, 16
  br label %mi_usable_size.exit.i

bb.f:                                             ; preds = %bb.c
  %i.ah = tail call fastcc i64 @mi_page_usable_aligned_size_of(ptr noundef nonnull %i.o, ptr noundef %i.x, ptr noundef %1)
  br label %mi_usable_size.exit.i

mi_usable_size.exit.i:                            ; preds = %bb.f, %_mi_segment_page_start.exit.i.i.i.i.i.i, %bb.e
  %.1.i.i.i = phi i64 [ %i.ag, %_mi_segment_page_start.exit.i.i.i.i.i.i ], [ %i.ah, %bb.f ], [ %i.ad, %bb.e ] ; 2 uses
  %i.ai = icmp ugt i64 %.1.i.i.i, 8
  br i1 %i.ai, label %bb.g, label %_mi_segment_huge_page_reset.exit

bb.g:                                             ; preds = %mi_usable_size.exit.i
  %i.aj = add i64 %.1.i.i.i, -8
  %i.ak = getelementptr i8, ptr %1, i64 8
  %i.al = tail call zeroext i1 @_mi_os_reset(ptr noundef %i.ak, i64 noundef %i.aj, ptr noundef nonnull @_mi_stats_main) ; 0 uses
  br label %_mi_segment_huge_page_reset.exit

_mi_segment_huge_page_reset.exit:                 ; preds = %bb.g, %mi_usable_size.exit.i, %bb.b, %bb.a
  %i.am = getelementptr i8, ptr %0, i64 40        ; 5 uses
  %i.an = load atomic i64, ptr %i.am monotonic, align 8
  %i.ao = ptrtoint ptr %1 to i64
  br label %bb.h

bb.h:                                             ; preds = %.backedge, %_mi_segment_huge_page_reset.exit
end_hunk_3
