Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/sanitizing_filters?download=true
inline.NumInlined: 16
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 17
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.smart_str = type { ptr, i64 }

@zend_empty_string = external local_unnamed_addr global ptr, align 8
@__const.php_filter_email.allowed_list = private unnamed_addr constant [85 x i8] c"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!#$%&'*+-=?^_`{|}~@.[]\00", align 16
@__const.php_filter_url.allowed_list = private unnamed_addr constant [95 x i8] c"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789$-_.+!*'(),{}|\\^~[]`<>#%\22;/?:@&=\00", align 16
@hexchars = internal unnamed_addr constant [17 x i8] c"0123456789ABCDEF\00", align 16

; Function Attrs: nounwind uwtable
define hidden noundef i32 @php_filter_string(ptr noundef %0, i64 noundef %1, ptr nofree noundef readnone captures(none) %2, ptr nofree noundef readnone captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.a, i8 0, i64 256, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.d = load i8, ptr %i.c, align 1, !tbaa !14
  %.not = icmp eq i8 %i.d, 0
  br i1 %.not, label %zend_string_alloc.exit, label %bb.b

zend_string_alloc.exit:                           ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !14     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !18   ; 4 uses
  %i.i = and i64 %i.h, -8
  %i.j = add i64 %i.i, 32
  %i.k = tail call noalias ptr @_emalloc(i64 noundef %i.j) #9 ; 6 uses
  store i32 1, ptr %i.k, align 4, !tbaa !19
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  store i32 22, ptr %i.l, align 4, !tbaa !14
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 0, ptr %i.m, align 8, !tbaa !20
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 %i.h, ptr %i.n, align 8, !tbaa !18
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.o, ptr nonnull align 8 %i.f, i64 %i.h, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.h
  store i8 0, ptr %i.p, align 1, !tbaa !14
  store ptr %i.k, ptr %0, align 8, !tbaa !14
  store i32 262, ptr %i.b, align 8, !tbaa !14
  br label %bb.b

bb.b:                                             ; preds = %zend_string_alloc.exit, %bb.a
  tail call fastcc void @php_filter_strip(ptr noundef nonnull %0, i64 noundef %1)
  %i.q = and i64 %1, 128
  %.not25 = icmp eq i64 %i.q, 0
  br i1 %.not25, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 34
  store i8 1, ptr %i.r, align 2, !tbaa !14
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 39
  store i8 1, ptr %i.s, align 1, !tbaa !14
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.t = and i64 %1, 64
  %.not26 = icmp eq i64 %i.t, 0
  br i1 %.not26, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 38
  store i8 1, ptr %i.u, align 2, !tbaa !14
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.v = and i64 %1, 16
  %.not27 = icmp eq i64 %i.v, 0
  br i1 %.not27, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, i8 1, i64 32, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.w = and i64 %1, 32
  %.not28 = icmp eq i64 %i.w, 0
  br i1 %.not28, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 127
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(129) %i.x, i8 1, i64 129, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  call fastcc void @php_filter_encode_html(ptr noundef nonnull %0, ptr noundef %i.a)
  %i.y = load ptr, ptr %0, align 8, !tbaa !14     ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !18
  %i.ac = tail call i64 @php_strip_tags_ex(ptr noundef nonnull %i.z, i64 noundef %i.ab, ptr noundef null, i64 noundef 0, i1 noundef zeroext true) #8 ; 2 uses
  %i.ad = load ptr, ptr %0, align 8, !tbaa !14
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store i64 %i.ac, ptr %i.ae, align 8, !tbaa !18
  %i.af = icmp eq i64 %i.ac, 0
  br i1 %i.af, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  tail call void @zval_ptr_dtor(ptr noundef nonnull %0) #8
  %i.ag = and i64 %1, 256
  %.not29 = icmp eq i64 %i.ag, 0
  br i1 %.not29, label %bb.l, label %.sink.split

bb.l:                                             ; preds = %bb.k
  %i.ah = load ptr, ptr @zend_empty_string, align 8, !tbaa !23
  store ptr %i.ah, ptr %0, align 8, !tbaa !14
  br label %.sink.split

.sink.split:                                      ; preds = %bb.k, %bb.l
  %.sink = phi i32 [ 6, %bb.l ], [ 1, %bb.k ]
  store i32 %.sink, ptr %i.b, align 8, !tbaa !14
  br label %bb.m

bb.m:                                             ; preds = %.sink.split, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define internal fastcc void @php_filter_strip(ptr noundef %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = and i64 %1, 524
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.ad, label %zend_string_alloc.exit

zend_string_alloc.exit:                           ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !14     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 24 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !18
  %i.f = and i64 %i.e, -8
  %i.g = add i64 %i.f, 32
  %i.h = tail call noalias ptr @_emalloc(i64 noundef %i.g) #9 ; 7 uses
  store i32 1, ptr %i.h, align 4, !tbaa !19
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  store i32 22, ptr %i.i, align 4, !tbaa !14
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 0, ptr %i.j, align 8, !tbaa !20
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.l = load ptr, ptr %0, align 8, !tbaa !14
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !18   ; 37 uses
  %.not63 = icmp eq i64 %i.n, 0
  br i1 %.not63, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %zend_string_alloc.exit
  %i.o = and i64 %1, 8
  %.not30 = icmp eq i64 %i.o, 0
  %i.p = and i64 %1, 4
  %.not31 = icmp eq i64 %i.p, 0                   ; 2 uses
  %i.q = and i64 %1, 512
  %.not32 = icmp eq i64 %i.q, 0                   ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 24 uses
  br i1 %.not30, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  br i1 %.not31, label %.lr.ph.split.us.split.us, label %.lr.ph.split.us.split

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph.split.us
  br i1 %.not32, label %iter.check, label %.lr.ph.split.us.split.us.split.preheader

.lr.ph.split.us.split.us.split.preheader:         ; preds = %.lr.ph.split.us.split.us
  %xtraiter148 = and i64 %i.n, 1
  %i.s = icmp eq i64 %i.n, 1
  br i1 %i.s, label %.lr.ph.split.us.split.us.split.epil.preheader, label %.lr.ph.split.us.split.us.split.preheader.new

.lr.ph.split.us.split.us.split.preheader.new:     ; preds = %.lr.ph.split.us.split.us.split.preheader
  %unroll_iter152 = and i64 %i.n, -2
  br label %.lr.ph.split.us.split.us.split

iter.check:                                       ; preds = %.lr.ph.split.us.split.us
  %min.iters.check = icmp ult i64 %i.n, 4
  br i1 %min.iters.check, label %.lr.ph.split.us.split.us.split.us.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check101 = icmp ult i64 %i.n, 32
  br i1 %min.iters.check101, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.t = and i64 %i.n, 28
  %n.vec = and i64 %i.n, -32                      ; 5 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 %index ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %wide.load = load <16 x i8>, ptr %i.u, align 1, !tbaa !14
  %wide.load102 = load <16 x i8>, ptr %i.v, align 1, !tbaa !14
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 %index ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store <16 x i8> %wide.load, ptr %i.w, align 1, !tbaa !14
  store <16 x i8> %wide.load102, ptr %i.x, align 1, !tbaa !14
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !26

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.n, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.t, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.split.us.split.us.split.us.preheader, label %vec.epilog.ph, !prof !32

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec103 = and i64 %i.n, -4                    ; 4 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index104 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next106, %vec.epilog.vector.body ] ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 %index104
  %wide.load105 = load <4 x i8>, ptr %i.z, align 1, !tbaa !14
  %i.aa = getelementptr inbounds nuw i8, ptr %i.r, i64 %index104
  store <4 x i8> %wide.load105, ptr %i.aa, align 1, !tbaa !14
  %index.next106 = add nuw i64 %index104, 4       ; 2 uses
  %i.ab = icmp eq i64 %index.next106, %n.vec103
  br i1 %i.ab, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !27

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n107 = icmp eq i64 %i.n, %n.vec103
  br i1 %cmp.n107, label %._crit_edge, label %.lr.ph.split.us.split.us.split.us.preheader

.lr.ph.split.us.split.us.split.us.preheader:      ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.036.us.us.us.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec103, %vec.epilog.middle.block ]
  br label %.lr.ph.split.us.split.us.split.us

.lr.ph.split.us.split.us.split.us:                ; preds = %.lr.ph.split.us.split.us.split.us.preheader, %.lr.ph.split.us.split.us.split.us
  %.036.us.us.us = phi i64 [ %i.af, %.lr.ph.split.us.split.us.split.us ], [ %.036.us.us.us.ph, %.lr.ph.split.us.split.us.split.us.preheader ] ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 %.036.us.us.us
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !14
  %i.ae = getelementptr inbounds nuw i8, ptr %i.r, i64 %.036.us.us.us
  store i8 %i.ad, ptr %i.ae, align 1, !tbaa !14
  %i.af = add nuw i64 %.036.us.us.us, 1           ; 3 uses
  %i.ag = icmp ult i64 %i.af, %i.n
  br i1 %i.ag, label %.lr.ph.split.us.split.us.split.us, label %._crit_edge, !llvm.loop !28

.lr.ph.split.us.split.us.split:                   ; preds = %bb.d, %.lr.ph.split.us.split.us.split.preheader.new
  %.036.us.us = phi i64 [ 0, %.lr.ph.split.us.split.us.split.preheader.new ], [ %.1.us.us.1, %bb.d ] ; 3 uses
  %.02935.us.us = phi i64 [ 0, %.lr.ph.split.us.split.us.split.preheader.new ], [ %i.aq, %bb.d ] ; 3 uses
  %niter153 = phi i64 [ 0, %.lr.ph.split.us.split.us.split.preheader.new ], [ %niter153.next.1, %bb.d ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 %.02935.us.us
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !14  ; 2 uses
  %.not64 = icmp eq i8 %i.ai, 96
  br i1 %.not64, label %.lr.ph.split.us.split.us.split.1, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.us.split.us.split
  %i.aj = getelementptr inbounds nuw i8, ptr %i.r, i64 %.036.us.us
  store i8 %i.ai, ptr %i.aj, align 1, !tbaa !14
  %i.ak = add i64 %.036.us.us, 1
  br label %.lr.ph.split.us.split.us.split.1

.lr.ph.split.us.split.us.split.1:                 ; preds = %bb.b, %.lr.ph.split.us.split.us.split
  %.1.us.us = phi i64 [ %i.ak, %bb.b ], [ %.036.us.us, %.lr.ph.split.us.split.us.split ] ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 %.02935.us.us
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 1
  %i.an = load i8, ptr %i.am, align 1, !tbaa !14  ; 2 uses
  %.not64.1 = icmp eq i8 %i.an, 96
  br i1 %.not64.1, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.split.us.split.us.split.1
  %i.ao = getelementptr inbounds nuw i8, ptr %i.r, i64 %.1.us.us
  store i8 %i.an, ptr %i.ao, align 1, !tbaa !14
  %i.ap = add i64 %.1.us.us, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph.split.us.split.us.split.1
  %.1.us.us.1 = phi i64 [ %i.ap, %bb.c ], [ %.1.us.us, %.lr.ph.split.us.split.us.split.1 ] ; 3 uses
  %i.aq = add nuw i64 %.02935.us.us, 2            ; 2 uses
  %niter153.next.1 = add nuw i64 %niter153, 2     ; 2 uses
  %niter153.ncmp.1.not = icmp eq i64 %niter153.next.1, %unroll_iter152
  br i1 %niter153.ncmp.1.not, label %._crit_edge.loopexit109.unr-lcssa.a, label %.lr.ph.split.us.split.us.split, !llvm.loop !29

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us
  br i1 %.not32, label %.lr.ph.split.us.split.split.us.preheader, label %.lr.ph.split.us.split.split.preheader

.lr.ph.split.us.split.split.preheader:            ; preds = %.lr.ph.split.us.split
  %xtraiter136 = and i64 %i.n, 1
  %i.ar = icmp eq i64 %i.n, 1
  br i1 %i.ar, label %.lr.ph.split.us.split.split.epil.preheader, label %.lr.ph.split.us.split.split.preheader.new

.lr.ph.split.us.split.split.preheader.new:        ; preds = %.lr.ph.split.us.split.split.preheader
  %unroll_iter140 = and i64 %i.n, -2
  br label %.lr.ph.split.us.split.split

.lr.ph.split.us.split.split.us.preheader:         ; preds = %.lr.ph.split.us.split
  %xtraiter142 = and i64 %i.n, 1
  %i.as = icmp eq i64 %i.n, 1
  br i1 %i.as, label %.lr.ph.split.us.split.split.us.epil.preheader, label %.lr.ph.split.us.split.split.us.preheader.new

.lr.ph.split.us.split.split.us.preheader.new:     ; preds = %.lr.ph.split.us.split.split.us.preheader
  %unroll_iter146 = and i64 %i.n, -2
  br label %.lr.ph.split.us.split.split.us

.lr.ph.split.us.split.split.us:                   ; preds = %bb.g, %.lr.ph.split.us.split.split.us.preheader.new
  %.036.us.us52 = phi i64 [ 0, %.lr.ph.split.us.split.split.us.preheader.new ], [ %.1.us.us55.1, %bb.g ] ; 3 uses
  %.02935.us.us53 = phi i64 [ 0, %.lr.ph.split.us.split.split.us.preheader.new ], [ %i.be, %bb.g ] ; 3 uses
  %niter147 = phi i64 [ 0, %.lr.ph.split.us.split.split.us.preheader.new ], [ %niter147.next.1, %bb.g ]
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 %.02935.us.us53
  %i.au = load i8, ptr %i.at, align 1, !tbaa !14  ; 2 uses
  %i.av = icmp ugt i8 %i.au, 31
  br i1 %i.av, label %bb.e, label %.lr.ph.split.us.split.split.us.1

bb.e:                                             ; preds = %.lr.ph.split.us.split.split.us
  %i.aw = getelementptr inbounds nuw i8, ptr %i.r, i64 %.036.us.us52
  store i8 %i.au, ptr %i.aw, align 1, !tbaa !14
  %i.ax = add i64 %.036.us.us52, 1
  br label %.lr.ph.split.us.split.split.us.1

.lr.ph.split.us.split.split.us.1:                 ; preds = %bb.e, %.lr.ph.split.us.split.split.us
  %.1.us.us55 = phi i64 [ %i.ax, %bb.e ], [ %.036.us.us52, %.lr.ph.split.us.split.split.us ] ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.c, i64 %.02935.us.us53
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 1
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !14  ; 2 uses
  %i.bb = icmp ugt i8 %i.ba, 31
  br i1 %i.bb, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.split.us.split.split.us.1
  %i.bc = getelementptr inbounds nuw i8, ptr %i.r, i64 %.1.us.us55
  store i8 %i.ba, ptr %i.bc, align 1, !tbaa !14
  %i.bd = add i64 %.1.us.us55, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.split.us.split.split.us.1
  %.1.us.us55.1 = phi i64 [ %i.bd, %bb.f ], [ %.1.us.us55, %.lr.ph.split.us.split.split.us.1 ] ; 3 uses
  %i.be = add nuw i64 %.02935.us.us53, 2          ; 2 uses
  %niter147.next.1 = add nuw i64 %niter147, 2     ; 2 uses
  %niter147.ncmp.1.not = icmp eq i64 %niter147.next.1, %unroll_iter146
  br i1 %niter147.ncmp.1.not, label %._crit_edge.loopexit110.unr-lcssa.a, label %.lr.ph.split.us.split.split.us, !llvm.loop !29

.lr.ph.split.us.split.split:                      ; preds = %bb.j, %.lr.ph.split.us.split.split.preheader.new
  %.036.us = phi i64 [ 0, %.lr.ph.split.us.split.split.preheader.new ], [ %.1.us.1, %bb.j ] ; 3 uses
  %.02935.us = phi i64 [ 0, %.lr.ph.split.us.split.split.preheader.new ], [ %i.bs, %bb.j ] ; 3 uses
  %niter141 = phi i64 [ 0, %.lr.ph.split.us.split.split.preheader.new ], [ %niter141.next.1, %bb.j ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.c, i64 %.02935.us
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !14  ; 3 uses
  %i.bh = icmp ugt i8 %i.bg, 31
  %i.bi = icmp ne i8 %i.bg, 96
  %or.cond = and i1 %i.bh, %i.bi
  br i1 %or.cond, label %bb.h, label %.lr.ph.split.us.split.split.1

bb.h:                                             ; preds = %.lr.ph.split.us.split.split
  %i.bj = getelementptr inbounds nuw i8, ptr %i.r, i64 %.036.us
  store i8 %i.bg, ptr %i.bj, align 1, !tbaa !14
  %i.bk = add i64 %.036.us, 1
  br label %.lr.ph.split.us.split.split.1

.lr.ph.split.us.split.split.1:                    ; preds = %bb.h, %.lr.ph.split.us.split.split
  %.1.us = phi i64 [ %i.bk, %bb.h ], [ %.036.us, %.lr.ph.split.us.split.split ] ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.c, i64 %.02935.us
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 1
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !14  ; 3 uses
  %i.bo = icmp ugt i8 %i.bn, 31
  %i.bp = icmp ne i8 %i.bn, 96
  %or.cond.1 = and i1 %i.bo, %i.bp
  br i1 %or.cond.1, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph.split.us.split.split.1
  %i.bq = getelementptr inbounds nuw i8, ptr %i.r, i64 %.1.us
  store i8 %i.bn, ptr %i.bq, align 1, !tbaa !14
  %i.br = add i64 %.1.us, 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph.split.us.split.split.1
  %.1.us.1 = phi i64 [ %i.br, %bb.i ], [ %.1.us, %.lr.ph.split.us.split.split.1 ] ; 3 uses
  %i.bs = add nuw i64 %.02935.us, 2               ; 2 uses
  %niter141.next.1 = add nuw i64 %niter141, 2     ; 2 uses
  %niter141.ncmp.1.not = icmp eq i64 %niter141.next.1, %unroll_iter140
  br i1 %niter141.ncmp.1.not, label %._crit_edge.loopexit111.unr-lcssa.a, label %.lr.ph.split.us.split.split, !llvm.loop !29

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %.not31, label %.lr.ph.split.split.us, label %.lr.ph.split.split
end_hunk_0
begin_hunk_1_@php_filter_number_float:.lr.ph.i
filter_map_update.exit14:                         ; preds = %.lr.ph.i11.preheader, %filter_map_update.exit9
  %i.l = and i64 %1, 16384
  %.not4 = icmp eq i64 %i.l, 0
  br i1 %.not4, label %filter_map_update.exit19, label %.lr.ph.i16.preheader

.lr.ph.i16.preheader:                             ; preds = %filter_map_update.exit14
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 808
  store i64 4, ptr %i.m, align 8, !tbaa !25
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 552
  store i64 4, ptr %i.n, align 8, !tbaa !25
  br label %filter_map_update.exit19

filter_map_update.exit19:                         ; preds = %.lr.ph.i16.preheader, %filter_map_update.exit14
  %i.o = load ptr, ptr %0, align 8, !tbaa !14     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.r = load i64, ptr %i.q, align 8, !tbaa !18
  %i.s = and i64 %i.r, -8
  %i.t = add i64 %i.s, 32
  %i.u = tail call noalias ptr @_emalloc(i64 noundef %i.t) #9 ; 7 uses
  store i32 1, ptr %i.u, align 4, !tbaa !19
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  store i32 22, ptr %i.v, align 4, !tbaa !14
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i64 0, ptr %i.w, align 8, !tbaa !20
  %i.x = load ptr, ptr %0, align 8, !tbaa !14
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load i64, ptr %i.y, align 8, !tbaa !18   ; 5 uses
  %.not25.i = icmp eq i64 %i.z, 0
  br i1 %.not25.i, label %filter_map_apply.exit, label %.lr.ph.i20

.lr.ph.i20:                                       ; preds = %filter_map_update.exit19
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 24 ; 3 uses
  %xtraiter = and i64 %i.z, 1
  %i.ab = icmp eq i64 %i.z, 1
  br i1 %i.ab, label %.epil.preheader, label %.lr.ph.i20.new

.lr.ph.i20.new:                                   ; preds = %.lr.ph.i20
  %unroll_iter = and i64 %i.z, -2
  br label %bb.a

bb.a:                                             ; preds = %bb.e, %.lr.ph.i20.new
  %.024.i = phi i64 [ 0, %.lr.ph.i20.new ], [ %i.ar, %bb.e ] ; 3 uses
  %.02223.i = phi i64 [ 0, %.lr.ph.i20.new ], [ %.1.i.1, %bb.e ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i20.new ], [ %niter.next.1, %bb.e ]
  %i.ac = getelementptr inbounds nuw i8, ptr %i.p, i64 %.024.i
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !14  ; 2 uses
  %i.ae = zext i8 %i.ad to i64
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ae
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !25
  %.not.i21 = icmp eq i64 %i.ag, 0
  br i1 %.not.i21, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.02223.i
  store i8 %i.ad, ptr %i.ah, align 1, !tbaa !14
  %i.ai = add i64 %.02223.i, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.1.i = phi i64 [ %i.ai, %bb.b ], [ %.02223.i, %bb.a ] ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.p, i64 %.024.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 1
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !14  ; 2 uses
  %i.am = zext i8 %i.al to i64
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.am
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !25
  %.not.i21.1 = icmp eq i64 %i.ao, 0
  br i1 %.not.i21.1, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.1.i
  store i8 %i.al, ptr %i.ap, align 1, !tbaa !14
  %i.aq = add i64 %.1.i, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.1.i.1 = phi i64 [ %i.aq, %bb.d ], [ %.1.i, %bb.c ] ; 3 uses
  %i.ar = add nuw i64 %.024.i, 2                  ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %filter_map_apply.exit.loopexit.unr-lcssa, label %bb.a, !llvm.loop !1

filter_map_apply.exit.loopexit.unr-lcssa:         ; preds = %bb.e
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %filter_map_apply.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %filter_map_apply.exit.loopexit.unr-lcssa, %.lr.ph.i20
  %.024.i.epil.init = phi i64 [ 0, %.lr.ph.i20 ], [ %i.ar, %filter_map_apply.exit.loopexit.unr-lcssa ]
  %.02223.i.epil.init = phi i64 [ 0, %.lr.ph.i20 ], [ %.1.i.1, %filter_map_apply.exit.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod25 = trunc i64 %i.z to i1
  tail call void @llvm.assume(i1 %lcmp.mod25)
  %i.as = getelementptr inbounds nuw i8, ptr %i.p, i64 %.024.i.epil.init
  %i.at = load i8, ptr %i.as, align 1, !tbaa !14  ; 2 uses
  %i.au = zext i8 %i.at to i64
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.au
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !25
  %.not.i21.epil = icmp eq i64 %i.aw, 0
  br i1 %.not.i21.epil, label %filter_map_apply.exit, label %bb.f

bb.f:                                             ; preds = %.epil.preheader
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.02223.i.epil.init
  store i8 %i.at, ptr %i.ax, align 1, !tbaa !14
  %i.ay = add i64 %.02223.i.epil.init, 1
  br label %filter_map_apply.exit

filter_map_apply.exit:                            ; preds = %filter_map_apply.exit.loopexit.unr-lcssa, %bb.f, %.epil.preheader, %filter_map_update.exit19
  %.022.lcssa.i = phi i64 [ 0, %filter_map_update.exit19 ], [ %.1.i.1, %filter_map_apply.exit.loopexit.unr-lcssa ], [ %i.ay, %bb.f ], [ %.02223.i.epil.init, %.epil.preheader ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.ba = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %.022.lcssa.i
  store i8 0, ptr %i.bb, align 1, !tbaa !14
  store i64 %.022.lcssa.i, ptr %i.az, align 8, !tbaa !18
  tail call void @zval_ptr_dtor(ptr noundef nonnull %0) #8
  store ptr %i.u, ptr %0, align 8, !tbaa !14
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 262, ptr %i.bc, align 8, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 0
}

; Function Attrs: nounwind uwtable
define hidden noundef i32 @php_filter_add_slashes(ptr noundef %0, i64 noundef %1, ptr nofree noundef readnone captures(none) %2, ptr nofree noundef readnone captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !14
  %i.b = tail call ptr @php_addslashes(ptr noundef %i.a) #8 ; 2 uses
  tail call void @zval_ptr_dtor(ptr noundef nonnull %0) #8
  store ptr %i.b, ptr %0, align 8, !tbaa !14
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !14
  %i.e = and i32 %i.d, 64
  %.not = icmp eq i32 %i.e, 0
  %i.f = select i1 %.not, i32 262, i32 6
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.f, ptr %i.g, align 8, !tbaa !14
  ret i32 0
}

declare ptr @php_addslashes(ptr noundef) local_unnamed_addr #3

; Function Attrs: allocsize(0)
declare noalias ptr @_emalloc(i64 noundef) local_unnamed_addr #4

declare void @smart_str_erealloc(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: allocsize(1)
declare ptr @_erealloc(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

declare noalias ptr @_safe_emalloc(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(0) }
attributes #10 = { nounwind allocsize(1) }

!llvm.module.flags = !{!2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}
!llvm.errno.tbaa = !{!13}

!0 = distinct !{!0, !24}
!1 = distinct !{!1, !24}
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"PIE Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 2}
!7 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!8 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"omnipotent char", !9, i64 0}
!11 = !{!"int", !10, i64 0}
!12 = !{!"__libc_errno", !11, i64 0}
!13 = !{!12, !11, i64 0}
!14 = !{!10, !10, i64 0}
!15 = !{!"_zend_refcounted_h", !11, i64 0, !10, i64 4}
!16 = !{!"long", !10, i64 0}
!17 = !{!"_zend_string", !15, i64 0, !16, i64 8, !16, i64 16, !10, i64 24}
!18 = !{!17, !16, i64 16}
!19 = !{!15, !11, i64 0}
!20 = !{!17, !16, i64 8}
!21 = !{!"any pointer", !10, i64 0}
!22 = !{!"p1 _ZTS12_zend_string", !21, i64 0}
!23 = !{!22, !22, i64 0}
!24 = !{!"llvm.loop.mustprogress"}
!25 = !{!16, !16, i64 0}
!26 = distinct !{!26, !24, !30, !31}
!27 = distinct !{!27, !24, !30, !31}
!28 = distinct !{!28, !24, !31, !30}
!29 = distinct !{!29, !24}
!30 = !{!"llvm.loop.isvectorized", i32 1}
!31 = !{!"llvm.loop.unroll.runtime.disable"}
!32 = !{!"branch_weights", i32 4, i32 28}
!33 = distinct !{!33, !24}
!34 = distinct !{!34, !24}
!35 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!36 = !{!"", !22, i64 0, !16, i64 8}
!37 = !{!36, !16, i64 8}
!38 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!39 = !{!36, !22, i64 0}
!40 = distinct !{!40, !24}
end_hunk_1
