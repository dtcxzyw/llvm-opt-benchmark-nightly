Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/sanitizing_filters?download=true
inline.NumInlined: 16
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 14
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
  br i1 %.not, label %bb.u, label %zend_string_alloc.exit

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
  %i.n = load i64, ptr %i.m, align 8, !tbaa !18   ; 49 uses
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
  br i1 %.not32, label %iter.check215, label %.lr.ph.split.us.split.us.split.preheader

.lr.ph.split.us.split.us.split.preheader:         ; preds = %.lr.ph.split.us.split.us
  %xtraiter244 = and i64 %i.n, 1
  %i.s = icmp eq i64 %i.n, 1
  br i1 %i.s, label %.lr.ph.split.split.split.us, label %.lr.ph.split.us.split.us.split.preheader.new

.lr.ph.split.us.split.us.split.preheader.new:     ; preds = %.lr.ph.split.us.split.us.split.preheader
  %unroll_iter248 = and i64 %i.n, -2
  br label %.lr.ph.split.us.split.us.split

iter.check215:                                    ; preds = %.lr.ph.split.us.split.us
  %min.iters.check203 = icmp ult i64 %i.n, 4
  br i1 %min.iters.check203, label %.lr.ph.split.us.split.us.split.us.preheader, label %vector.main.loop.iter.check204

vector.main.loop.iter.check204:                   ; preds = %iter.check215
  %min.iters.check205 = icmp ult i64 %i.n, 32
  br i1 %min.iters.check205, label %vec.epilog.ph219, label %vector.ph206

vector.ph206:                                     ; preds = %vector.main.loop.iter.check204
  %i.t = and i64 %i.n, 28
  %n.vec207 = and i64 %i.n, -32                   ; 5 uses
  br label %vector.body208

vector.body208:                                   ; preds = %vector.ph206, %vector.body208
  %index209 = phi i64 [ 0, %vector.ph206 ], [ %index.next212, %vector.body208 ] ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 %index209 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %wide.load210 = load <16 x i8>, ptr %i.u, align 1, !tbaa !14
  %wide.load211 = load <16 x i8>, ptr %i.v, align 1, !tbaa !14
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 %index209 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store <16 x i8> %wide.load210, ptr %i.w, align 1, !tbaa !14
  store <16 x i8> %wide.load211, ptr %i.x, align 1, !tbaa !14
  %index.next212 = add nuw i64 %index209, 32      ; 2 uses
  %i.y = icmp eq i64 %index.next212, %n.vec207
  br i1 %i.y, label %middle.block213, label %vector.body208, !llvm.loop !26

middle.block213:                                  ; preds = %vector.body208
  %cmp.n214 = icmp eq i64 %i.n, %n.vec207
  br i1 %cmp.n214, label %._crit_edge, label %vec.epilog.iter.check216

vec.epilog.iter.check216:                         ; preds = %middle.block213
  %min.epilog.iters.check218 = icmp eq i64 %i.t, 0
  br i1 %min.epilog.iters.check218, label %.lr.ph.split.us.split.us.split.us.preheader, label %vec.epilog.ph219, !prof !41

vec.epilog.ph219:                                 ; preds = %vector.main.loop.iter.check204, %vec.epilog.iter.check216
  %vec.epilog.resume.val220 = phi i64 [ %n.vec207, %vec.epilog.iter.check216 ], [ 0, %vector.main.loop.iter.check204 ]
  %n.vec221 = and i64 %i.n, -4                    ; 4 uses
  br label %vec.epilog.vector.body222

vec.epilog.vector.body222:                        ; preds = %vec.epilog.vector.body222, %vec.epilog.ph219
  %index223 = phi i64 [ %vec.epilog.resume.val220, %vec.epilog.ph219 ], [ %index.next225, %vec.epilog.vector.body222 ] ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 %index223
  %wide.load224 = load <4 x i8>, ptr %i.z, align 1, !tbaa !14
  %i.aa = getelementptr inbounds nuw i8, ptr %i.r, i64 %index223
  store <4 x i8> %wide.load224, ptr %i.aa, align 1, !tbaa !14
  %index.next225 = add nuw i64 %index223, 4       ; 2 uses
  %i.ab = icmp eq i64 %index.next225, %n.vec221
  br i1 %i.ab, label %vec.epilog.middle.block226, label %vec.epilog.vector.body222, !llvm.loop !27

vec.epilog.middle.block226:                       ; preds = %vec.epilog.vector.body222
  %cmp.n227 = icmp eq i64 %i.n, %n.vec221
  br i1 %cmp.n227, label %._crit_edge, label %.lr.ph.split.us.split.us.split.us.preheader

.lr.ph.split.us.split.us.split.us.preheader:      ; preds = %iter.check215, %vec.epilog.iter.check216, %vec.epilog.middle.block226
  %.036.us.us.us.ph = phi i64 [ 0, %iter.check215 ], [ %n.vec207, %vec.epilog.iter.check216 ], [ %n.vec221, %vec.epilog.middle.block226 ]
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
  %niter249 = phi i64 [ 0, %.lr.ph.split.us.split.us.split.preheader.new ], [ %niter249.next.1, %bb.d ]
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
  %niter249.next.1 = add nuw i64 %niter249, 2     ; 2 uses
  %niter249.ncmp.1.not = icmp eq i64 %niter249.next.1, %unroll_iter248
  br i1 %niter249.ncmp.1.not, label %vec.epilog.middle.block137, label %.lr.ph.split.us.split.us.split, !llvm.loop !29

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us
  br i1 %.not32, label %.lr.ph.split.us.split.split.us.preheader, label %iter.check185

.lr.ph.split.us.split.split.us.preheader:         ; preds = %.lr.ph.split.us.split
  %xtraiter238 = and i64 %i.n, 1
  %i.ar = icmp eq i64 %i.n, 1
  br i1 %i.ar, label %.lr.ph.split.us.split.us.split.epil.preheader, label %.lr.ph.split.us.split.split.us.preheader.new

.lr.ph.split.us.split.split.us.preheader.new:     ; preds = %.lr.ph.split.us.split.split.us.preheader
  %unroll_iter242 = and i64 %i.n, -2
  br label %.lr.ph.split.us.split.split.us

iter.check185:                                    ; preds = %.lr.ph.split.us.split
  %min.iters.check172 = icmp ult i64 %i.n, 8
  br i1 %min.iters.check172, label %.lr.ph.split.us.split.split.preheader, label %vector.main.loop.iter.check173

vector.main.loop.iter.check173:                   ; preds = %iter.check185
  %min.iters.check174 = icmp ult i64 %i.n, 16
  br i1 %min.iters.check174, label %vec.epilog.ph189, label %vector.ph175

vector.ph175:                                     ; preds = %vector.main.loop.iter.check173
  %i.as = and i64 %i.n, 8
  %n.vec176 = and i64 %i.n, -16                   ; 4 uses
  br label %vector.body177

vector.body177:                                   ; preds = %vector.ph175, %vector.body177
  %index178 = phi i64 [ 0, %vector.ph175 ], [ %index.next182, %vector.body177 ] ; 2 uses
  %conditional.iv179 = phi i64 [ 0, %vector.ph175 ], [ %conditional.step181, %vector.body177 ] ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 %index178
  %wide.load180 = load <16 x i8>, ptr %i.at, align 1, !tbaa !14 ; 3 uses
  %i.au = icmp ugt <16 x i8> %wide.load180, splat (i8 31)
  %i.av = icmp ne <16 x i8> %wide.load180, splat (i8 96)
  %i.aw = and <16 x i1> %i.au, %i.av              ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.r, i64 %conditional.iv179
  tail call void @llvm.masked.compressstore.v16i8.p0(<16 x i8> %wide.load180, ptr nonnull align 1 %i.ax, <16 x i1> %i.aw), !tbaa !14
  %i.ay = bitcast <16 x i1> %i.aw to i16
  %i.az = tail call range(i16 0, 17) i16 @llvm.ctpop.i16(i16 %i.ay)
  %i.ba = zext nneg i16 %i.az to i64
  %conditional.step181 = add i64 %conditional.iv179, %i.ba ; 4 uses
  %index.next182 = add nuw i64 %index178, 16      ; 2 uses
  %i.bb = icmp eq i64 %index.next182, %n.vec176
  br i1 %i.bb, label %middle.block183, label %vector.body177, !llvm.loop !30

middle.block183:                                  ; preds = %vector.body177
  %cmp.n184 = icmp eq i64 %i.n, %n.vec176
  br i1 %cmp.n184, label %._crit_edge, label %vec.epilog.iter.check186

vec.epilog.iter.check186:                         ; preds = %middle.block183
  %min.epilog.iters.check188.not.not = icmp eq i64 %i.as, 0
  br i1 %min.epilog.iters.check188.not.not, label %.lr.ph.split.us.split.split.preheader, label %vec.epilog.ph189, !prof !42

vec.epilog.ph189:                                 ; preds = %vector.main.loop.iter.check173, %vec.epilog.iter.check186
  %vec.epilog.resume.val190 = phi i64 [ %n.vec176, %vec.epilog.iter.check186 ], [ 0, %vector.main.loop.iter.check173 ]
  %bc.resume.val191 = phi i64 [ %conditional.step181, %vec.epilog.iter.check186 ], [ 0, %vector.main.loop.iter.check173 ]
  %n.vec192 = and i64 %i.n, -8                    ; 3 uses
  br label %vec.epilog.vector.body193

vec.epilog.vector.body193:                        ; preds = %vec.epilog.vector.body193, %vec.epilog.ph189
  %index194 = phi i64 [ %vec.epilog.resume.val190, %vec.epilog.ph189 ], [ %index.next198, %vec.epilog.vector.body193 ] ; 2 uses
  %conditional.iv195 = phi i64 [ %bc.resume.val191, %vec.epilog.ph189 ], [ %conditional.step197, %vec.epilog.vector.body193 ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.c, i64 %index194
  %wide.load196 = load <8 x i8>, ptr %i.bc, align 1, !tbaa !14 ; 3 uses
  %i.bd = icmp ugt <8 x i8> %wide.load196, splat (i8 31)
  %i.be = icmp ne <8 x i8> %wide.load196, splat (i8 96)
  %i.bf = and <8 x i1> %i.bd, %i.be               ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.r, i64 %conditional.iv195
  tail call void @llvm.masked.compressstore.v8i8.p0(<8 x i8> %wide.load196, ptr nonnull align 1 %i.bg, <8 x i1> %i.bf), !tbaa !14
  %i.bh = bitcast <8 x i1> %i.bf to i8
  %i.bi = tail call range(i8 0, 9) i8 @llvm.ctpop.i8(i8 %i.bh)
  %i.bj = zext nneg i8 %i.bi to i64
  %conditional.step197 = add i64 %conditional.iv195, %i.bj ; 3 uses
  %index.next198 = add nuw i64 %index194, 8       ; 2 uses
  %i.bk = icmp eq i64 %index.next198, %n.vec192
  br i1 %i.bk, label %vec.epilog.middle.block199, label %vec.epilog.vector.body193, !llvm.loop !31

vec.epilog.middle.block199:                       ; preds = %vec.epilog.vector.body193
  %cmp.n200 = icmp eq i64 %i.n, %n.vec192
  br i1 %cmp.n200, label %._crit_edge, label %.lr.ph.split.us.split.split.preheader

.lr.ph.split.us.split.split.preheader:            ; preds = %iter.check185, %vec.epilog.iter.check186, %vec.epilog.middle.block199
  %.036.us.ph = phi i64 [ 0, %iter.check185 ], [ %conditional.step181, %vec.epilog.iter.check186 ], [ %conditional.step197, %vec.epilog.middle.block199 ]
  %.02935.us.ph = phi i64 [ 0, %iter.check185 ], [ %n.vec176, %vec.epilog.iter.check186 ], [ %n.vec192, %vec.epilog.middle.block199 ]
  br label %.lr.ph.split.us.split.split

.lr.ph.split.us.split.split.us:                   ; preds = %bb.g, %.lr.ph.split.us.split.split.us.preheader.new
  %.036.us.us52 = phi i64 [ 0, %.lr.ph.split.us.split.split.us.preheader.new ], [ %.1.us.us55.1, %bb.g ] ; 3 uses
  %.02935.us.us53 = phi i64 [ 0, %.lr.ph.split.us.split.split.us.preheader.new ], [ %i.bw, %bb.g ] ; 3 uses
  %niter243 = phi i64 [ 0, %.lr.ph.split.us.split.split.us.preheader.new ], [ %niter243.next.1, %bb.g ]
  %i.bl = getelementptr inbounds nuw i8, ptr %i.c, i64 %.02935.us.us53
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !14  ; 2 uses
  %i.bn = icmp ugt i8 %i.bm, 31
  br i1 %i.bn, label %bb.e, label %.lr.ph.split.us.split.split.us.1

bb.e:                                             ; preds = %.lr.ph.split.us.split.split.us
  %i.bo = getelementptr inbounds nuw i8, ptr %i.r, i64 %.036.us.us52
  store i8 %i.bm, ptr %i.bo, align 1, !tbaa !14
  %i.bp = add i64 %.036.us.us52, 1
  br label %.lr.ph.split.us.split.split.us.1

.lr.ph.split.us.split.split.us.1:                 ; preds = %bb.e, %.lr.ph.split.us.split.split.us
  %.1.us.us55 = phi i64 [ %i.bp, %bb.e ], [ %.036.us.us52, %.lr.ph.split.us.split.split.us ] ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.c, i64 %.02935.us.us53
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 1
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !14  ; 2 uses
  %i.bt = icmp ugt i8 %i.bs, 31
  br i1 %i.bt, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.split.us.split.split.us.1
  %i.bu = getelementptr inbounds nuw i8, ptr %i.r, i64 %.1.us.us55
  store i8 %i.bs, ptr %i.bu, align 1, !tbaa !14
  %i.bv = add i64 %.1.us.us55, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.split.us.split.split.us.1
  %.1.us.us55.1 = phi i64 [ %i.bv, %bb.f ], [ %.1.us.us55, %.lr.ph.split.us.split.split.us.1 ] ; 3 uses
  %i.bw = add nuw i64 %.02935.us.us53, 2          ; 2 uses
  %niter243.next.1 = add nuw i64 %niter243, 2     ; 2 uses
  %niter243.ncmp.1.not = icmp eq i64 %niter243.next.1, %unroll_iter242
  br i1 %niter243.ncmp.1.not, label %._crit_edge.loopexit229.unr-lcssa, label %.lr.ph.split.us.split.split.us, !llvm.loop !29

.lr.ph.split.us.split.split:                      ; preds = %.lr.ph.split.us.split.split.preheader, %bb.i
  %.036.us = phi i64 [ %.1.us, %bb.i ], [ %.036.us.ph, %.lr.ph.split.us.split.split.preheader ] ; 3 uses
  %.02935.us = phi i64 [ %i.cd, %bb.i ], [ %.02935.us.ph, %.lr.ph.split.us.split.split.preheader ] ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.c, i64 %.02935.us
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !14  ; 3 uses
  %i.bz = icmp ugt i8 %i.by, 31
  %i.ca = icmp ne i8 %i.by, 96
  %or.cond = and i1 %i.bz, %i.ca
  br i1 %or.cond, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph.split.us.split.split
  %i.cb = getelementptr inbounds nuw i8, ptr %i.r, i64 %.036.us
  store i8 %i.by, ptr %i.cb, align 1, !tbaa !14
  %i.cc = add i64 %.036.us, 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph.split.us.split.split
  %.1.us = phi i64 [ %i.cc, %bb.h ], [ %.036.us, %.lr.ph.split.us.split.split ] ; 2 uses
  %i.cd = add nuw i64 %.02935.us, 1               ; 2 uses
  %i.ce = icmp ult i64 %i.cd, %i.n
  br i1 %i.ce, label %.lr.ph.split.us.split.split, label %._crit_edge, !llvm.loop !32

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %.not31, label %.lr.ph.split.split.us, label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split
  br i1 %.not32, label %.lr.ph.split.split.us.split.us.preheader, label %iter.check154

.lr.ph.split.split.us.split.us.preheader:         ; preds = %.lr.ph.split.split.us
  %xtraiter.a = and i64 %i.n, 1
  %i.cf = icmp eq i64 %i.n, 1
  br i1 %i.cf, label %.lr.ph.split.us.split.split.us.epil.preheader, label %.lr.ph.split.split.us.split.us.preheader.new

.lr.ph.split.split.us.split.us.preheader.new:     ; preds = %.lr.ph.split.split.us.split.us.preheader
  %unroll_iter.a = and i64 %i.n, -2
  br label %.lr.ph.split.split.us.split.us

iter.check154:                                    ; preds = %.lr.ph.split.split.us
  %min.iters.check141 = icmp ult i64 %i.n, 8
  br i1 %min.iters.check141, label %.lr.ph.split.split.us.split.preheader, label %vector.main.loop.iter.check142

vector.main.loop.iter.check142:                   ; preds = %iter.check154
  %min.iters.check143 = icmp ult i64 %i.n, 16
  br i1 %min.iters.check143, label %vec.epilog.ph158, label %vector.ph144

vector.ph144:                                     ; preds = %vector.main.loop.iter.check142
  %i.cg = and i64 %i.n, 8
  %n.vec145 = and i64 %i.n, -16                   ; 4 uses
  br label %vector.body146

vector.body146:                                   ; preds = %vector.ph144, %vector.body146
  %index147 = phi i64 [ 0, %vector.ph144 ], [ %index.next151, %vector.body146 ] ; 2 uses
  %conditional.iv148 = phi i64 [ 0, %vector.ph144 ], [ %conditional.step150, %vector.body146 ] ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.c, i64 %index147
  %wide.load149 = load <16 x i8>, ptr %i.ch, align 1, !tbaa !14 ; 3 uses
  %i.ci = icmp ult <16 x i8> %wide.load149, splat (i8 127)
  %i.cj = icmp ne <16 x i8> %wide.load149, splat (i8 96)
  %i.ck = and <16 x i1> %i.ci, %i.cj              ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.r, i64 %conditional.iv148
  tail call void @llvm.masked.compressstore.v16i8.p0(<16 x i8> %wide.load149, ptr nonnull align 1 %i.cl, <16 x i1> %i.ck), !tbaa !14
  %i.cm = bitcast <16 x i1> %i.ck to i16
  %i.cn = tail call range(i16 0, 17) i16 @llvm.ctpop.i16(i16 %i.cm)
  %i.co = zext nneg i16 %i.cn to i64
  %conditional.step150 = add i64 %conditional.iv148, %i.co ; 4 uses
  %index.next151 = add nuw i64 %index147, 16      ; 2 uses
  %i.cp = icmp eq i64 %index.next151, %n.vec145
  br i1 %i.cp, label %middle.block152, label %vector.body146, !llvm.loop !33

middle.block152:                                  ; preds = %vector.body146
  %cmp.n153 = icmp eq i64 %i.n, %n.vec145
  br i1 %cmp.n153, label %._crit_edge, label %vec.epilog.iter.check155

vec.epilog.iter.check155:                         ; preds = %middle.block152
  %min.epilog.iters.check157.not.not = icmp eq i64 %i.cg, 0
  br i1 %min.epilog.iters.check157.not.not, label %.lr.ph.split.split.us.split.preheader, label %vec.epilog.ph158, !prof !42

vec.epilog.ph158:                                 ; preds = %vector.main.loop.iter.check142, %vec.epilog.iter.check155
  %vec.epilog.resume.val159 = phi i64 [ %n.vec145, %vec.epilog.iter.check155 ], [ 0, %vector.main.loop.iter.check142 ]
  %bc.resume.val160 = phi i64 [ %conditional.step150, %vec.epilog.iter.check155 ], [ 0, %vector.main.loop.iter.check142 ]
  %n.vec161 = and i64 %i.n, -8                    ; 3 uses
  br label %vec.epilog.vector.body162

vec.epilog.vector.body162:                        ; preds = %vec.epilog.vector.body162, %vec.epilog.ph158
  %index163 = phi i64 [ %vec.epilog.resume.val159, %vec.epilog.ph158 ], [ %index.next167, %vec.epilog.vector.body162 ] ; 2 uses
  %conditional.iv164 = phi i64 [ %bc.resume.val160, %vec.epilog.ph158 ], [ %conditional.step166, %vec.epilog.vector.body162 ] ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.c, i64 %index163
  %wide.load165 = load <8 x i8>, ptr %i.cq, align 1, !tbaa !14 ; 3 uses
  %i.cr = icmp ult <8 x i8> %wide.load165, splat (i8 127)
  %i.cs = icmp ne <8 x i8> %wide.load165, splat (i8 96)
  %i.ct = and <8 x i1> %i.cr, %i.cs               ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.r, i64 %conditional.iv164
  tail call void @llvm.masked.compressstore.v8i8.p0(<8 x i8> %wide.load165, ptr nonnull align 1 %i.cu, <8 x i1> %i.ct), !tbaa !14
  %i.cv = bitcast <8 x i1> %i.ct to i8
  %i.cw = tail call range(i8 0, 9) i8 @llvm.ctpop.i8(i8 %i.cv)
  %i.cx = zext nneg i8 %i.cw to i64
  %conditional.step166 = add i64 %conditional.iv164, %i.cx ; 3 uses
  %index.next167 = add nuw i64 %index163, 8       ; 2 uses
  %i.cy = icmp eq i64 %index.next167, %n.vec161
  br i1 %i.cy, label %vec.epilog.middle.block168, label %vec.epilog.vector.body162, !llvm.loop !34

vec.epilog.middle.block168:                       ; preds = %vec.epilog.vector.body162
  %cmp.n169 = icmp eq i64 %i.n, %n.vec161
  br i1 %cmp.n169, label %._crit_edge, label %.lr.ph.split.split.us.split.preheader

.lr.ph.split.split.us.split.preheader:            ; preds = %iter.check154, %vec.epilog.iter.check155, %vec.epilog.middle.block168
  %.036.us37.ph = phi i64 [ 0, %iter.check154 ], [ %conditional.step150, %vec.epilog.iter.check155 ], [ %conditional.step166, %vec.epilog.middle.block168 ]
  %.02935.us38.ph = phi i64 [ 0, %iter.check154 ], [ %n.vec145, %vec.epilog.iter.check155 ], [ %n.vec161, %vec.epilog.middle.block168 ]
  br label %.lr.ph.split.split.us.split

.lr.ph.split.split.us.split.us:                   ; preds = %bb.l, %.lr.ph.split.split.us.split.us.preheader.new
  %.036.us37.us = phi i64 [ 0, %.lr.ph.split.split.us.split.us.preheader.new ], [ %.1.us41.us.1, %bb.l ] ; 3 uses
  %.02935.us38.us = phi i64 [ 0, %.lr.ph.split.split.us.split.us.preheader.new ], [ %i.dk, %bb.l ] ; 3 uses
  %niter.a = phi i64 [ 0, %.lr.ph.split.split.us.split.us.preheader.new ], [ %niter.next.1.a, %bb.l ]
  %i.cz = getelementptr inbounds nuw i8, ptr %i.c, i64 %.02935.us38.us
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !14  ; 2 uses
  %i.db = icmp ult i8 %i.da, 127
  br i1 %i.db, label %bb.j, label %.lr.ph.split.split.us.split.us.1

bb.j:                                             ; preds = %.lr.ph.split.split.us.split.us
  %i.dc = getelementptr inbounds nuw i8, ptr %i.r, i64 %.036.us37.us
  store i8 %i.da, ptr %i.dc, align 1, !tbaa !14
  %i.dd = add i64 %.036.us37.us, 1
  br label %.lr.ph.split.split.us.split.us.1

.lr.ph.split.split.us.split.us.1:                 ; preds = %bb.j, %.lr.ph.split.split.us.split.us
  %.1.us41.us = phi i64 [ %.036.us37.us, %.lr.ph.split.split.us.split.us ], [ %i.dd, %bb.j ] ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.c, i64 %.02935.us38.us
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 1
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !14  ; 2 uses
  %i.dh = icmp ult i8 %i.dg, 127
  br i1 %i.dh, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph.split.split.us.split.us.1
  %i.di = getelementptr inbounds nuw i8, ptr %i.r, i64 %.1.us41.us
  store i8 %i.dg, ptr %i.di, align 1, !tbaa !14
  %i.dj = add i64 %.1.us41.us, 1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph.split.split.us.split.us.1
  %.1.us41.us.1 = phi i64 [ %.1.us41.us, %.lr.ph.split.split.us.split.us.1 ], [ %i.dj, %bb.k ] ; 3 uses
  %i.dk = add nuw i64 %.02935.us38.us, 2          ; 2 uses
  %niter.next.1.a = add nuw i64 %niter.a, 2       ; 2 uses
  %niter.ncmp.1.not.a = icmp eq i64 %niter.next.1.a, %unroll_iter.a
  br i1 %niter.ncmp.1.not.a, label %._crit_edge.loopexit230.unr-lcssa, label %.lr.ph.split.split.us.split.us, !llvm.loop !29

.lr.ph.split.split.us.split:                      ; preds = %.lr.ph.split.split.us.split.preheader, %bb.n
  %.036.us37 = phi i64 [ %.1.us41, %bb.n ], [ %.036.us37.ph, %.lr.ph.split.split.us.split.preheader ] ; 3 uses
  %.02935.us38 = phi i64 [ %i.dr, %bb.n ], [ %.02935.us38.ph, %.lr.ph.split.split.us.split.preheader ] ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.c, i64 %.02935.us38
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !14  ; 3 uses
  %i.dn = icmp ult i8 %i.dm, 127
  %i.do = icmp ne i8 %i.dm, 96
  %or.cond59 = and i1 %i.dn, %i.do
  br i1 %or.cond59, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.lr.ph.split.split.us.split
  %i.dp = getelementptr inbounds nuw i8, ptr %i.r, i64 %.036.us37
  store i8 %i.dm, ptr %i.dp, align 1, !tbaa !14
  %i.dq = add i64 %.036.us37, 1
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.lr.ph.split.split.us.split
  %.1.us41 = phi i64 [ %.036.us37, %.lr.ph.split.split.us.split ], [ %i.dq, %bb.m ] ; 2 uses
  %i.dr = add nuw i64 %.02935.us38, 1             ; 2 uses
  %i.ds = icmp ult i64 %i.dr, %i.n
  br i1 %i.ds, label %.lr.ph.split.split.us.split, label %._crit_edge, !llvm.loop !35

.lr.ph.split.split:                               ; preds = %.lr.ph.split
  br i1 %.not32, label %.lr.ph.split.split.a, label %iter.check

.lr.ph.split.split.a:                             ; preds = %.lr.ph.split.split
  %xtraiter = and i64 %i.n, 1
  %2 = icmp eq i64 %i.n, 1
  br i1 %2, label %.lr.ph.split.split.us.split.us.epil.preheader, label %.lr.ph.split.split.split.us.preheader.new

.lr.ph.split.split.split.us.preheader.new:        ; preds = %.lr.ph.split.split.a
  %unroll_iter = and i64 %i.n, -2
  br label %vector.main.loop.iter.check111

iter.check:                                       ; preds = %.lr.ph.split.split
  %min.iters.check = icmp ult i64 %i.n, 8
  br i1 %min.iters.check, label %.lr.ph.split.split.split.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check101 = icmp ult i64 %i.n, 16
  br i1 %min.iters.check101, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.dt = and i64 %i.n, 8
  %n.vec = and i64 %i.n, -16                      ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %conditional.iv = phi i64 [ 0, %vector.ph ], [ %conditional.step, %vector.body ] ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.c, i64 %index
  %wide.load = load <16 x i8>, ptr %i.du, align 1, !tbaa !14 ; 3 uses
  %i.dv = add <16 x i8> %wide.load, splat (i8 -32)
  %i.dw = icmp ult <16 x i8> %i.dv, splat (i8 95)
  %i.dx = icmp ne <16 x i8> %wide.load, splat (i8 96)
  %i.dy = and <16 x i1> %i.dw, %i.dx              ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.r, i64 %conditional.iv
  tail call void @llvm.masked.compressstore.v16i8.p0(<16 x i8> %wide.load, ptr nonnull align 1 %i.dz, <16 x i1> %i.dy), !tbaa !14
  %i.ea = bitcast <16 x i1> %i.dy to i16
  %i.eb = tail call range(i16 0, 17) i16 @llvm.ctpop.i16(i16 %i.ea)
  %i.ec = zext nneg i16 %i.eb to i64
  %conditional.step = add i64 %conditional.iv, %i.ec ; 4 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ed = icmp eq i64 %index.next, %n.vec
  br i1 %i.ed, label %middle.block, label %vector.body, !llvm.loop !36

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.n, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check.not.not = icmp eq i64 %i.dt, 0
  br i1 %min.epilog.iters.check.not.not, label %.lr.ph.split.split.split.preheader, label %vec.epilog.ph, !prof !42

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val = phi i64 [ %conditional.step, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec102 = and i64 %i.n, -8                    ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index103 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next107, %vec.epilog.vector.body ] ; 2 uses
  %conditional.iv104 = phi i64 [ %bc.resume.val, %vec.epilog.ph ], [ %conditional.step106, %vec.epilog.vector.body ] ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.c, i64 %index103
  %wide.load105 = load <8 x i8>, ptr %i.ee, align 1, !tbaa !14 ; 3 uses
  %i.ef = add <8 x i8> %wide.load105, splat (i8 -32)
  %i.eg = icmp ult <8 x i8> %i.ef, splat (i8 95)
  %i.eh = icmp ne <8 x i8> %wide.load105, splat (i8 96)
  %i.ei = and <8 x i1> %i.eg, %i.eh               ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.r, i64 %conditional.iv104
  tail call void @llvm.masked.compressstore.v8i8.p0(<8 x i8> %wide.load105, ptr nonnull align 1 %i.ej, <8 x i1> %i.ei), !tbaa !14
  %i.ek = bitcast <8 x i1> %i.ei to i8
  %i.el = tail call range(i8 0, 9) i8 @llvm.ctpop.i8(i8 %i.ek)
  %i.em = zext nneg i8 %i.el to i64
  %conditional.step106 = add i64 %conditional.iv104, %i.em ; 3 uses
  %index.next107 = add nuw i64 %index103, 8       ; 2 uses
  %i.en = icmp eq i64 %index.next107, %n.vec102
  br i1 %i.en, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !37

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n108 = icmp eq i64 %i.n, %n.vec102
  br i1 %cmp.n108, label %._crit_edge, label %.lr.ph.split.split.split.preheader

.lr.ph.split.split.split.preheader:               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.036.ph = phi i64 [ 0, %iter.check ], [ %conditional.step, %vec.epilog.iter.check ], [ %conditional.step106, %vec.epilog.middle.block ]
  %.02935.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec102, %vec.epilog.middle.block ]
  br label %.lr.ph.split.split.split

vector.main.loop.iter.check111:                   ; preds = %vec.epilog.vector.body131, %.lr.ph.split.split.split.us.preheader.new
  %.036.us44 = phi i64 [ 0, %.lr.ph.split.split.split.us.preheader.new ], [ %conditional.iv133, %vec.epilog.vector.body131 ] ; 3 uses
  %.02935.us45 = phi i64 [ 0, %.lr.ph.split.split.split.us.preheader.new ], [ %conditional.step135, %vec.epilog.vector.body131 ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.split.split.split.us.preheader.new ], [ %index.next136, %vec.epilog.vector.body131 ]
  %3 = getelementptr inbounds nuw i8, ptr %i.c, i64 %.02935.us45
  %4 = load i8, ptr %3, align 1, !tbaa !14        ; 2 uses
  %5 = add i8 %4, -32
  %min.iters.check112 = icmp ult i8 %5, 95
  br i1 %min.iters.check112, label %vector.ph113, label %vector.body115

vector.ph113:                                     ; preds = %vector.main.loop.iter.check111
  %6 = getelementptr inbounds nuw i8, ptr %i.r, i64 %.036.us44
  store i8 %4, ptr %6, align 1, !tbaa !14
  %7 = add i64 %.036.us44, 1
  br label %vector.body115

vector.body115:                                   ; preds = %vector.ph113, %vector.main.loop.iter.check111
  %conditional.iv117 = phi i64 [ %.036.us44, %vector.main.loop.iter.check111 ], [ %7, %vector.ph113 ] ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.c, i64 %.02935.us45
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 1
  %8 = load i8, ptr %i.ep, align 1, !tbaa !14     ; 2 uses
  %9 = add i8 %8, -32
  %or.cond60.1 = icmp ult i8 %9, 95
  br i1 %or.cond60.1, label %vec.epilog.ph127, label %vec.epilog.vector.body131

vec.epilog.ph127:                                 ; preds = %vector.body115
  %10 = getelementptr inbounds nuw i8, ptr %i.r, i64 %conditional.iv117
  store i8 %8, ptr %10, align 1, !tbaa !14
  %11 = add i64 %conditional.iv117, 1
  br label %vec.epilog.vector.body131

vec.epilog.vector.body131:                        ; preds = %vec.epilog.ph127, %vector.body115
  %conditional.iv133 = phi i64 [ %conditional.iv117, %vector.body115 ], [ %11, %vec.epilog.ph127 ] ; 3 uses
  %conditional.step135 = add nuw i64 %.02935.us45, 2 ; 2 uses
  %index.next136 = add nuw i64 %niter, 2          ; 2 uses
  %i.eq = icmp eq i64 %index.next136, %unroll_iter
  br i1 %i.eq, label %._crit_edge.loopexit232.unr-lcssa, label %vector.main.loop.iter.check111, !llvm.loop !29

vec.epilog.middle.block137:                       ; preds = %bb.d
  %cmp.n138 = icmp eq i64 %xtraiter244, 0
  br i1 %cmp.n138, label %._crit_edge, label %.lr.ph.split.split.split.us

.lr.ph.split.split.split.us:                      ; preds = %vec.epilog.middle.block137, %.lr.ph.split.us.split.us.split.preheader
  %.036.us44.a = phi i64 [ 0, %.lr.ph.split.us.split.us.split.preheader ], [ %.1.us.us.1, %vec.epilog.middle.block137 ] ; 3 uses
  %.02935.us45.a = phi i64 [ 0, %.lr.ph.split.us.split.us.split.preheader ], [ %i.aq, %vec.epilog.middle.block137 ]
  %lcmp.mod222 = trunc i64 %i.n to i1
  tail call void @llvm.assume(i1 %lcmp.mod222)
  %12 = getelementptr inbounds nuw i8, ptr %i.c, i64 %.02935.us45.a
  %13 = load i8, ptr %12, align 1, !tbaa !14      ; 2 uses
  %.not64.epil = icmp eq i8 %13, 96
  br i1 %.not64.epil, label %._crit_edge, label %bb.o

bb.o:                                             ; preds = %.lr.ph.split.split.split.us
  %i.er = getelementptr inbounds nuw i8, ptr %i.r, i64 %.036.us44.a
  store i8 %13, ptr %i.er, align 1, !tbaa !14
  %i.es = add i64 %.036.us44.a, 1
  br label %._crit_edge

._crit_edge.loopexit229.unr-lcssa:                ; preds = %bb.g
  %lcmp.mod245.not = icmp eq i64 %xtraiter238, 0
  br i1 %lcmp.mod245.not, label %._crit_edge, label %.lr.ph.split.us.split.us.split.epil.preheader

.lr.ph.split.us.split.us.split.epil.preheader:    ; preds = %._crit_edge.loopexit229.unr-lcssa, %.lr.ph.split.us.split.split.us.preheader
  %.036.us.us.epil.init = phi i64 [ 0, %.lr.ph.split.us.split.split.us.preheader ], [ %.1.us.us55.1, %._crit_edge.loopexit229.unr-lcssa ] ; 3 uses
  %.02935.us.us.epil.init = phi i64 [ 0, %.lr.ph.split.us.split.split.us.preheader ], [ %i.bw, %._crit_edge.loopexit229.unr-lcssa ]
  %lcmp.mod247 = trunc i64 %i.n to i1
  tail call void @llvm.assume(i1 %lcmp.mod247)
  %i.et = getelementptr inbounds nuw i8, ptr %i.c, i64 %.02935.us.us.epil.init
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !14  ; 2 uses
  %14 = icmp ugt i8 %i.eu, 31
  br i1 %14, label %bb.p, label %._crit_edge

bb.p:                                             ; preds = %.lr.ph.split.us.split.us.split.epil.preheader
  %i.ev = getelementptr inbounds nuw i8, ptr %i.r, i64 %.036.us.us.epil.init
  store i8 %i.eu, ptr %i.ev, align 1, !tbaa !14
  %i.ew = add i64 %.036.us.us.epil.init, 1
  br label %._crit_edge

._crit_edge.loopexit230.unr-lcssa:                ; preds = %bb.l
  %lcmp.mod239.not = icmp eq i64 %xtraiter.a, 0
  br i1 %lcmp.mod239.not, label %._crit_edge, label %.lr.ph.split.us.split.split.us.epil.preheader

.lr.ph.split.us.split.split.us.epil.preheader:    ; preds = %._crit_edge.loopexit230.unr-lcssa, %.lr.ph.split.split.us.split.us.preheader
  %.036.us.us52.epil.init = phi i64 [ 0, %.lr.ph.split.split.us.split.us.preheader ], [ %.1.us41.us.1, %._crit_edge.loopexit230.unr-lcssa ] ; 3 uses
  %.02935.us.us53.epil.init = phi i64 [ 0, %.lr.ph.split.split.us.split.us.preheader ], [ %i.dk, %._crit_edge.loopexit230.unr-lcssa ]
  %lcmp.mod241 = trunc i64 %i.n to i1
  tail call void @llvm.assume(i1 %lcmp.mod241)
  %i.ex = getelementptr inbounds nuw i8, ptr %i.c, i64 %.02935.us.us53.epil.init
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !14  ; 2 uses
  %15 = icmp ult i8 %i.ey, 127
  br i1 %15, label %bb.q, label %._crit_edge

bb.q:                                             ; preds = %.lr.ph.split.us.split.split.us.epil.preheader
  %i.ez = getelementptr inbounds nuw i8, ptr %i.r, i64 %.036.us.us52.epil.init
  store i8 %i.ey, ptr %i.ez, align 1, !tbaa !14
  %i.fa = add i64 %.036.us.us52.epil.init, 1
  br label %._crit_edge

._crit_edge.loopexit232.unr-lcssa:                ; preds = %vec.epilog.vector.body131
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.split.split.us.split.us.epil.preheader

.lr.ph.split.split.us.split.us.epil.preheader:    ; preds = %._crit_edge.loopexit232.unr-lcssa, %.lr.ph.split.split.a
  %.036.us37.us.epil.init = phi i64 [ 0, %.lr.ph.split.split.a ], [ %conditional.iv133, %._crit_edge.loopexit232.unr-lcssa ] ; 3 uses
  %.02935.us38.us.epil.init = phi i64 [ 0, %.lr.ph.split.split.a ], [ %conditional.step135, %._crit_edge.loopexit232.unr-lcssa ]
  %lcmp.mod237 = trunc i64 %i.n to i1
  tail call void @llvm.assume(i1 %lcmp.mod237)
  %i.fb = getelementptr inbounds nuw i8, ptr %i.c, i64 %.02935.us38.us.epil.init
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !14  ; 2 uses
  %16 = add i8 %i.fc, -32
  %i.fd = icmp ult i8 %16, 95
  br i1 %i.fd, label %bb.r, label %._crit_edge

bb.r:                                             ; preds = %.lr.ph.split.split.us.split.us.epil.preheader
  %i.fe = getelementptr inbounds nuw i8, ptr %i.r, i64 %.036.us37.us.epil.init
  store i8 %i.fc, ptr %i.fe, align 1, !tbaa !14
  %i.ff = add i64 %.036.us37.us.epil.init, 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.t, %._crit_edge.loopexit232.unr-lcssa, %bb.r, %.lr.ph.split.split.us.split.us.epil.preheader, %bb.n, %._crit_edge.loopexit230.unr-lcssa, %bb.q, %.lr.ph.split.us.split.split.us.epil.preheader, %bb.i, %._crit_edge.loopexit229.unr-lcssa, %bb.p, %.lr.ph.split.us.split.us.split.epil.preheader, %vec.epilog.middle.block137, %bb.o, %.lr.ph.split.split.split.us, %.lr.ph.split.us.split.us.split.us, %middle.block, %vec.epilog.middle.block, %middle.block152, %vec.epilog.middle.block168, %middle.block183, %vec.epilog.middle.block199, %middle.block213, %vec.epilog.middle.block226, %zend_string_alloc.exit
  %.0.lcssa = phi i64 [ 0, %zend_string_alloc.exit ], [ %.036.us.us.epil.init, %.lr.ph.split.us.split.us.split.epil.preheader ], [ %i.af, %.lr.ph.split.us.split.us.split.us ], [ %i.ff, %bb.r ], [ %.036.us44.a, %.lr.ph.split.split.split.us ], [ %i.fa, %bb.q ], [ %.1.us, %bb.i ], [ %.1.us41, %bb.n ], [ %n.vec221, %vec.epilog.middle.block226 ], [ %n.vec207, %middle.block213 ], [ %conditional.step197, %vec.epilog.middle.block199 ], [ %conditional.step181, %middle.block183 ], [ %conditional.step166, %vec.epilog.middle.block168 ], [ %conditional.step150, %middle.block152 ], [ %conditional.step106, %vec.epilog.middle.block ], [ %conditional.step, %middle.block ], [ %.1.us.us.1, %vec.epilog.middle.block137 ], [ %i.es, %bb.o ], [ %.1.us.us55.1, %._crit_edge.loopexit229.unr-lcssa ], [ %i.ew, %bb.p ], [ %.1.us41.us.1, %._crit_edge.loopexit230.unr-lcssa ], [ %.036.us.us52.epil.init, %.lr.ph.split.us.split.split.us.epil.preheader ], [ %conditional.iv133, %._crit_edge.loopexit232.unr-lcssa ], [ %.036.us37.us.epil.init, %.lr.ph.split.split.us.split.us.epil.preheader ], [ %.1, %bb.t ] ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 %.0.lcssa
  store i8 0, ptr %i.fh, align 1, !tbaa !14
  store i64 %.0.lcssa, ptr %i.k, align 8, !tbaa !18
  tail call void @zval_ptr_dtor(ptr noundef nonnull %0) #8
  store ptr %i.h, ptr %0, align 8, !tbaa !14
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 262, ptr %i.fi, align 8, !tbaa !14
  br label %bb.u

.lr.ph.split.split.split:                         ; preds = %.lr.ph.split.split.split.preheader, %bb.t
  %.036 = phi i64 [ %.1, %bb.t ], [ %.036.ph, %.lr.ph.split.split.split.preheader ] ; 3 uses
  %.02935 = phi i64 [ %i.fp, %bb.t ], [ %.02935.ph, %.lr.ph.split.split.split.preheader ] ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.c, i64 %.02935
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !14  ; 3 uses
  %i.fl = add i8 %i.fk, -32
  %or.cond61 = icmp ult i8 %i.fl, 95
  %i.fm = icmp ne i8 %i.fk, 96
  %or.cond62 = and i1 %or.cond61, %i.fm
  br i1 %or.cond62, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.lr.ph.split.split.split
  %i.fn = getelementptr inbounds nuw i8, ptr %i.r, i64 %.036
  store i8 %i.fk, ptr %i.fn, align 1, !tbaa !14
  %i.fo = add i64 %.036, 1
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph.split.split.split, %bb.s
  %.1 = phi i64 [ %.036, %.lr.ph.split.split.split ], [ %i.fo, %bb.s ] ; 2 uses
  %i.fp = add nuw i64 %.02935, 1                  ; 2 uses
  %i.fq = icmp ult i64 %i.fp, %i.n
  br i1 %i.fq, label %.lr.ph.split.split.split, label %._crit_edge, !llvm.loop !38

bb.u:                                             ; preds = %bb.a, %._crit_edge
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @php_filter_encode_html(ptr noundef %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 3 uses
  %2 = alloca %struct.smart_str, align 8          ; 23 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.b = load ptr, ptr %0, align 8, !tbaa !14     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !18   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.d
  %i.g = icmp eq i64 %i.d, 0
  br i1 %i.g, label %bb.v, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 31 ; 3 uses
  %i.j = ptrtoint ptr %i.i to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.m
  %i.k = phi ptr [ null, %.lr.ph ], [ %i.bl, %bb.m ] ; 4 uses
  %.047 = phi ptr [ %i.e, %.lr.ph ], [ %i.bm, %bb.m ] ; 5 uses
  %.02346 = phi ptr [ %i.e, %.lr.ph ], [ %.1, %bb.m ] ; 3 uses
  %i.l = load i8, ptr %.047, align 1, !tbaa !14
  %i.m = zext i8 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1, !tbaa !14
  %.not = icmp eq i8 %i.o, 0
  br i1 %.not, label %bb.m, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = ptrtoint ptr %.047 to i64
  %i.q = ptrtoint ptr %.02346 to i64
  %i.r = sub i64 %i.p, %i.q                       ; 3 uses
  %.not.i29 = icmp eq ptr %i.k, null
  br i1 %.not.i29, label %bb.e, label %bb.d, !prof !45

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.t = load i64, ptr %i.s, align 8, !tbaa !18   ; 2 uses
  %i.u = add i64 %i.t, %i.r                       ; 3 uses
  %i.v = load i64, ptr %i.h, align 8, !tbaa !47
  %.not12.i30 = icmp ult i64 %i.u, %i.v
  br i1 %.not12.i30, label %bb.f, label %bb.e, !prof !48

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i31 = phi i64 [ %i.r, %bb.c ], [ %i.u, %bb.d ] ; 2 uses
  call void @smart_str_erealloc(ptr noundef nonnull %2, i64 noundef %.0.i31) #8
  %.pre = load ptr, ptr %2, align 8, !tbaa !49    ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %.pre50 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !18
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.w = phi i64 [ %i.t, %bb.d ], [ %.pre50, %bb.e ]
  %i.x = phi ptr [ %i.k, %bb.d ], [ %.pre, %bb.e ]
  %.1.i32 = phi i64 [ %i.u, %bb.d ], [ %.0.i31, %bb.e ] ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.w
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.z, ptr align 1 %.02346, i64 %i.r, i1 false)
  %i.aa = load ptr, ptr %2, align 8, !tbaa !49    ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store i64 %.1.i32, ptr %i.ab, align 8, !tbaa !18
  %i.ac = add i64 %.1.i32, 2                      ; 3 uses
  %i.ad = load i64, ptr %i.h, align 8, !tbaa !47
  %.not12.i25 = icmp ult i64 %i.ac, %i.ad
  br i1 %.not12.i25, label %smart_str_alloc.exit28, label %bb.g, !prof !48

bb.g:                                             ; preds = %bb.f
  call void @smart_str_erealloc(ptr noundef nonnull %2, i64 noundef %i.ac) #8
  %.pre51 = load ptr, ptr %2, align 8, !tbaa !49  ; 2 uses
  %.phi.trans.insert52 = getelementptr inbounds nuw i8, ptr %.pre51, i64 16
  %.pre53 = load i64, ptr %.phi.trans.insert52, align 8, !tbaa !18
  br label %smart_str_alloc.exit28

smart_str_alloc.exit28:                           ; preds = %bb.f, %bb.g
  %i.ae = phi i64 [ %.1.i32, %bb.f ], [ %.pre53, %bb.g ]
  %i.af = phi ptr [ %i.aa, %bb.f ], [ %.pre51, %bb.g ]
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ae
  store i16 8998, ptr %i.ah, align 1
  %i.ai = load ptr, ptr %2, align 8, !tbaa !49    ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 2 uses
  store i64 %i.ac, ptr %i.aj, align 8, !tbaa !18
  %i.ak = load i8, ptr %.047, align 1, !tbaa !14
  %i.al = zext i8 %i.ak to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store i8 0, ptr %i.i, align 1, !tbaa !14
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %smart_str_alloc.exit28
  %.05.i = phi ptr [ %i.i, %smart_str_alloc.exit28 ], [ %i.ap, %bb.h ]
  %.0.i34 = phi i64 [ %i.al, %smart_str_alloc.exit28 ], [ %i.aq, %bb.h ] ; 3 uses
  %i.am = urem i64 %.0.i34, 10
  %i.an = trunc nuw nsw i64 %i.am to i8
  %i.ao = or disjoint i8 %i.an, 48
  %i.ap = getelementptr inbounds i8, ptr %.05.i, i64 -1 ; 4 uses
  store i8 %i.ao, ptr %i.ap, align 1, !tbaa !14
  %i.aq = udiv i64 %.0.i34, 10
  %.not.i35 = icmp samesign ult i64 %.0.i34, 10
  br i1 %.not.i35, label %bb.i, label %bb.h, !llvm.loop !43

bb.i:                                             ; preds = %bb.h
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = sub i64 %i.j, %i.ar                     ; 2 uses
  %i.at = load i64, ptr %i.aj, align 8, !tbaa !18 ; 2 uses
  %i.au = add i64 %i.at, %i.as                    ; 3 uses
  %i.av = load i64, ptr %i.h, align 8, !tbaa !47
  %.not12.i.i = icmp ult i64 %i.au, %i.av
  br i1 %.not12.i.i, label %bb.k, label %bb.j, !prof !48

bb.j:                                             ; preds = %bb.i
  call void @smart_str_erealloc(ptr noundef nonnull %2, i64 noundef %i.au) #8
  %.pre54 = load ptr, ptr %2, align 8, !tbaa !49  ; 2 uses
  %.phi.trans.insert55 = getelementptr inbounds nuw i8, ptr %.pre54, i64 16
  %.pre56 = load i64, ptr %.phi.trans.insert55, align 8, !tbaa !18
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.aw = phi i64 [ %.pre56, %bb.j ], [ %i.at, %bb.i ]
  %i.ax = phi ptr [ %.pre54, %bb.j ], [ %i.ai, %bb.i ]
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.aw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.az, ptr noundef nonnull align 1 dereferenceable(1) %i.ap, i64 %i.as, i1 false)
  %i.ba = load ptr, ptr %2, align 8, !tbaa !49    ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16 ; 2 uses
  store i64 %i.au, ptr %i.bb, align 8, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !18
  %i.bd = add i64 %i.bc, 1                        ; 4 uses
  %i.be = load i64, ptr %i.h, align 8, !tbaa !47
  %.not12.i.i37 = icmp ult i64 %i.bd, %i.be
  br i1 %.not12.i.i37, label %smart_str_appendc_ex.exit, label %bb.l, !prof !48

bb.l:                                             ; preds = %bb.k
  call void @smart_str_erealloc(ptr noundef nonnull %2, i64 noundef %i.bd) #8
  %.pre57 = load ptr, ptr %2, align 8, !tbaa !49
  br label %smart_str_appendc_ex.exit

smart_str_appendc_ex.exit:                        ; preds = %bb.k, %bb.l
  %i.bf = phi ptr [ %i.ba, %bb.k ], [ %.pre57, %bb.l ]
  %i.bg = getelementptr i8, ptr %i.bf, i64 23
  %i.bh = getelementptr i8, ptr %i.bg, i64 %i.bd
  store i8 59, ptr %i.bh, align 1, !tbaa !14
  %i.bi = load ptr, ptr %2, align 8, !tbaa !49    ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  store i64 %i.bd, ptr %i.bj, align 8, !tbaa !18
  %i.bk = getelementptr inbounds nuw i8, ptr %.047, i64 1
  br label %bb.m

bb.m:                                             ; preds = %smart_str_appendc_ex.exit, %bb.b
  %i.bl = phi ptr [ %i.bi, %smart_str_appendc_ex.exit ], [ %i.k, %bb.b ] ; 4 uses
  %.1 = phi ptr [ %i.bk, %smart_str_appendc_ex.exit ], [ %.02346, %bb.b ] ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.047, i64 1 ; 3 uses
  %i.bn = icmp ult ptr %i.bm, %i.f
  br i1 %i.bn, label %bb.b, label %._crit_edge, !llvm.loop !44

._crit_edge:                                      ; preds = %bb.m
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = ptrtoint ptr %.1 to i64
  %i.bq = sub i64 %i.bo, %i.bp                    ; 3 uses
  %.not.i = icmp eq ptr %i.bl, null
  br i1 %.not.i, label %bb.o, label %bb.n, !prof !45

bb.n:                                             ; preds = %._crit_edge
  %i.br = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !18 ; 2 uses
  %i.bt = add i64 %i.bs, %i.bq                    ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !47
  %.not12.i = icmp ult i64 %i.bt, %i.bv
  br i1 %.not12.i, label %smart_str_alloc.exit, label %bb.o, !prof !48

bb.o:                                             ; preds = %bb.n, %._crit_edge
  %.0.i = phi i64 [ %i.bq, %._crit_edge ], [ %i.bt, %bb.n ] ; 2 uses
  call void @smart_str_erealloc(ptr noundef nonnull %2, i64 noundef %.0.i) #8
  %.pre58 = load ptr, ptr %2, align 8, !tbaa !49  ; 2 uses
  %.phi.trans.insert59 = getelementptr inbounds nuw i8, ptr %.pre58, i64 16
  %.pre60 = load i64, ptr %.phi.trans.insert59, align 8, !tbaa !18
  br label %smart_str_alloc.exit

smart_str_alloc.exit:                             ; preds = %bb.n, %bb.o
  %i.bw = phi i64 [ %i.bs, %bb.n ], [ %.pre60, %bb.o ]
  %i.bx = phi ptr [ %i.bl, %bb.n ], [ %.pre58, %bb.o ]
  %.1.i = phi i64 [ %i.bt, %bb.n ], [ %.0.i, %bb.o ]
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.bw
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bz, ptr align 1 %.1, i64 %i.bq, i1 false)
  %i.ca = load ptr, ptr %2, align 8, !tbaa !49
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  store i64 %.1.i, ptr %i.cb, align 8, !tbaa !18
  call void @zval_ptr_dtor(ptr noundef nonnull %0) #8
  %i.cc = load ptr, ptr %2, align 8, !tbaa !49    ; 3 uses
  %.not.i40 = icmp eq ptr %i.cc, null
  br i1 %.not.i40, label %bb.u, label %smart_str_0.exit

smart_str_0.exit:                                 ; preds = %smart_str_alloc.exit
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !18
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.cf
  store i8 0, ptr %i.cg, align 1, !tbaa !14
  %i.ch = load ptr, ptr %2, align 8, !tbaa !49    ; 9 uses
  %.not.i43 = icmp eq ptr %i.ch, null
  br i1 %.not.i43, label %smart_str_extract_ex.exit, label %bb.p

bb.p:                                             ; preds = %smart_str_0.exit
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !47
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 16 ; 2 uses
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !18 ; 6 uses
  %i.cm = icmp ugt i64 %i.cj, %i.cl
  br i1 %i.cm, label %bb.q, label %smart_str_extract_ex.exit

bb.q:                                             ; preds = %bb.p
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ch, i64 4 ; 2 uses
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !14
  %i.cp = and i32 %i.co, 64
  %.not.i44 = icmp eq i32 %i.cp, 0
  br i1 %.not.i44, label %bb.r, label %zend_string_alloc.exit.i

bb.r:                                             ; preds = %bb.q
  %i.cq = load i32, ptr %i.ch, align 8, !tbaa !19
  %i.cr = icmp eq i32 %i.cq, 1
  br i1 %i.cr, label %bb.s, label %zend_string_alloc.exit.i, !prof !48

bb.s:                                             ; preds = %bb.r
  %i.cs = and i64 %i.cl, -8
  %i.ct = add i64 %i.cs, 32
  %i.cu = call ptr @_erealloc(ptr noundef nonnull %i.ch, i64 noundef %i.ct) #10 ; 4 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  store i64 %i.cl, ptr %i.cv, align 8, !tbaa !18
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  store i64 0, ptr %i.cw, align 8, !tbaa !20
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 4 ; 2 uses
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !14
  %i.cz = and i32 %i.cy, -513
  store i32 %i.cz, ptr %i.cx, align 4, !tbaa !14
  br label %smart_str_extract_ex.exit

zend_string_alloc.exit.i:                         ; preds = %bb.q, %bb.r
  %i.da = and i64 %i.cl, -8
  %i.db = add i64 %i.da, 32
  %i.dc = call noalias ptr @_emalloc(i64 noundef %i.db) #9 ; 7 uses
  store i32 1, ptr %i.dc, align 4, !tbaa !19
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 4
  store i32 22, ptr %i.dd, align 4, !tbaa !14
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  store i64 0, ptr %i.de, align 8, !tbaa !20
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  store i64 %i.cl, ptr %i.df, align 8, !tbaa !18
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dc, i64 24
  %i.dh = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  %i.di = load i64, ptr %i.ck, align 8, !tbaa !18
  %..i = call i64 @llvm.umin.i64(i64 %i.cl, i64 %i.di)
  %i.dj = add nuw i64 %..i, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.dg, ptr noundef nonnull align 8 dereferenceable(1) %i.dh, i64 %i.dj, i1 false)
  %i.dk = load i32, ptr %i.cn, align 4, !tbaa !14
  %i.dl = and i32 %i.dk, 64
  %.not24.i = icmp eq i32 %i.dl, 0
  br i1 %.not24.i, label %bb.t, label %smart_str_extract_ex.exit

bb.t:                                             ; preds = %zend_string_alloc.exit.i
  %i.dm = load i32, ptr %i.ch, align 8, !tbaa !19 ; 2 uses
  %i.dn = icmp ne i32 %i.dm, 0
  call void @llvm.assume(i1 %i.dn)
  %i.do = add i32 %i.dm, -1
  store i32 %i.do, ptr %i.ch, align 8, !tbaa !19
  br label %smart_str_extract_ex.exit

bb.u:                                             ; preds = %smart_str_alloc.exit
  %i.dp = load ptr, ptr @zend_empty_string, align 8, !tbaa !23
  br label %smart_str_extract_ex.exit

smart_str_extract_ex.exit:                        ; preds = %bb.p, %smart_str_0.exit, %bb.s, %zend_string_alloc.exit.i, %bb.t, %bb.u
  %.0.i41 = phi ptr [ %i.dp, %bb.u ], [ null, %smart_str_0.exit ], [ %i.ch, %bb.p ], [ %i.cu, %bb.s ], [ %i.dc, %bb.t ], [ %i.dc, %zend_string_alloc.exit.i ]
  store ptr %.0.i41, ptr %0, align 8, !tbaa !14
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 262, ptr %i.dq, align 8, !tbaa !14
  br label %bb.v

bb.v:                                             ; preds = %bb.a, %smart_str_extract_ex.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  ret void
}

declare i64 @php_strip_tags_ex(ptr noundef, i64 noundef, ptr noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #3

declare void @zval_ptr_dtor(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden noundef i32 @php_filter_encoded(ptr noundef %0, i64 noundef %1, ptr nofree noundef readnone captures(none) %2, ptr nofree noundef readnone captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 10 uses
  tail call fastcc void @php_filter_strip(ptr noundef %0, i64 noundef %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(255) %i.a, i8 1, i64 255, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 97
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 65
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 45
  store i8 0, ptr %i.e, align 1, !tbaa !14
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 46
  store i8 0, ptr %i.f, align 2, !tbaa !14
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 95
  store i8 0, ptr %i.g, align 1, !tbaa !14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(10) %i.d, i8 0, i64 10, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(26) %i.c, i8 0, i64 26, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(26) %i.b, i8 0, i64 26, i1 false)
  %i.h = load ptr, ptr %0, align 8, !tbaa !14
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !18
  %i.k = tail call noalias ptr @_safe_emalloc(i64 noundef %i.j, i64 noundef 3, i64 noundef 32) #8 ; 6 uses
  store i32 1, ptr %i.k, align 4, !tbaa !19
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  store i32 22, ptr %i.l, align 4, !tbaa !14
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 0, ptr %i.m, align 8, !tbaa !20
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 3 uses
  %i.o = load ptr, ptr %0, align 8, !tbaa !14     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.r = load i64, ptr %i.q, align 8, !tbaa !18   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.r
  %.not4.i = icmp eq i64 %i.r, 0
  br i1 %.not4.i, label %php_filter_encode_url.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.d
  %.03.i = phi ptr [ %.1.i, %bb.d ], [ %i.n, %bb.a ] ; 5 uses
  %.1322.i = phi ptr [ %i.ak, %bb.d ], [ %i.p, %bb.a ] ; 4 uses
  %i.t = load i8, ptr %.1322.i, align 1, !tbaa !14 ; 2 uses
  %i.u = zext i8 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.u
  %i.w = load i8, ptr %i.v, align 1, !tbaa !14
  %.not.i = icmp eq i8 %i.w, 0
  %i.x = getelementptr inbounds nuw i8, ptr %.03.i, i64 1 ; 2 uses
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  store i8 37, ptr %.03.i, align 1, !tbaa !14
  %i.y = load i8, ptr %.1322.i, align 1, !tbaa !14
  %i.z = lshr i8 %i.y, 4
  %i.aa = zext nneg i8 %i.z to i64
  %i.ab = getelementptr inbounds nuw i8, ptr @hexchars, i64 %i.aa
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !14
  %i.ad = getelementptr inbounds nuw i8, ptr %.03.i, i64 2
  store i8 %i.ac, ptr %i.x, align 1, !tbaa !14
  %i.ae = load i8, ptr %.1322.i, align 1, !tbaa !14
  %i.af = and i8 %i.ae, 15
  %i.ag = zext nneg i8 %i.af to i64
  %i.ah = getelementptr inbounds nuw i8, ptr @hexchars, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !14
  %i.aj = getelementptr inbounds nuw i8, ptr %.03.i, i64 3
  store i8 %i.ai, ptr %i.ad, align 1, !tbaa !14
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph.i
  store i8 %i.t, ptr %.03.i, align 1, !tbaa !14
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.1.i = phi ptr [ %i.aj, %bb.b ], [ %i.x, %bb.c ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.1322.i, i64 1 ; 2 uses
  %i.al = icmp ult ptr %i.ak, %i.s
  br i1 %i.al, label %.lr.ph.i, label %php_filter_encode_url.exit, !llvm.loop !50

php_filter_encode_url.exit:                       ; preds = %bb.d, %bb.a
  %.0.lcssa.i = phi ptr [ %i.n, %bb.a ], [ %.1.i, %bb.d ] ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i8 0, ptr %.0.lcssa.i, align 1, !tbaa !14
  %i.an = ptrtoint ptr %.0.lcssa.i to i64
  %i.ao = ptrtoint ptr %i.n to i64
  %i.ap = sub i64 %i.an, %i.ao
  store i64 %i.ap, ptr %i.am, align 8, !tbaa !18
  tail call void @zval_ptr_dtor(ptr noundef nonnull %0) #8
  store ptr %i.k, ptr %0, align 8, !tbaa !14
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 262, ptr %i.aq, align 8, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 0
}

; Function Attrs: nounwind uwtable
define hidden noundef i32 @php_filter_special_chars(ptr noundef %0, i64 noundef %1, ptr nofree noundef readnone captures(none) %2, ptr nofree noundef readnone captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(224) %i.b, i8 0, i64 224, i1 false)
  tail call fastcc void @php_filter_strip(ptr noundef %0, i64 noundef %1)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 38
  store i8 1, ptr %i.c, align 2, !tbaa !14
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 62
  store i8 1, ptr %i.d, align 2, !tbaa !14
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 60
  store i8 1, ptr %i.e, align 4, !tbaa !14
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 34
  store i8 1, ptr %i.f, align 2, !tbaa !14
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 39
  store i8 1, ptr %i.g, align 1, !tbaa !14
  %i.h = and i64 %1, 32
  %.not = icmp eq i64 %i.h, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, i8 1, i64 32, i1 false)
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 127
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(129) %i.i, i8 1, i64 129, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call fastcc void @php_filter_encode_html(ptr noundef %0, ptr noundef %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 0
}

; Function Attrs: nounwind uwtable
define hidden noundef i32 @php_filter_full_special_chars(ptr noundef %0, i64 noundef %1, ptr nofree noundef readnone captures(none) %2, ptr nofree noundef readnone captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = and i64 %1, 128
  %.not = icmp eq i64 %i.a, 0
  %. = select i1 %.not, i32 3, i32 0
  %i.b = load ptr, ptr %0, align 8, !tbaa !14     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !18
  %i.f = tail call ptr @php_escape_html_entities_ex(ptr noundef nonnull %i.c, i64 noundef %i.e, i32 noundef 1, i32 noundef %., ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8 ; 2 uses
  tail call void @zval_ptr_dtor(ptr noundef nonnull %0) #8
  store ptr %i.f, ptr %0, align 8, !tbaa !14
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !14
  %i.i = and i32 %i.h, 64
  %.not10 = icmp eq i32 %i.i, 0
  %i.j = select i1 %.not10, i32 262, i32 6
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.j, ptr %i.k, align 8, !tbaa !14
  ret i32 0
}

declare ptr @php_escape_html_entities_ex(ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden noundef i32 @php_filter_unsafe_raw(ptr noundef %0, i64 noundef %1, ptr nofree noundef readnone captures(none) %2, ptr nofree noundef readnone captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 7 uses
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !14
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !18
  %.not11 = icmp eq i64 %i.d, 0
  br i1 %.not11, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.a, i8 0, i64 256, i1 false)
  tail call fastcc void @php_filter_strip(ptr noundef nonnull %0, i64 noundef %1)
  %i.e = and i64 %1, 64
  %.not13 = icmp eq i64 %i.e, 0
  br i1 %.not13, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 38
  store i8 1, ptr %i.f, align 2, !tbaa !14
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = and i64 %1, 16
  %.not14 = icmp eq i64 %i.g, 0
  br i1 %.not14, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, i8 1, i64 32, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.h = and i64 %1, 32
  %.not15 = icmp eq i64 %i.h, 0
  br i1 %.not15, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 127
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(129) %i.i, i8 1, i64 129, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  call fastcc void @php_filter_encode_html(ptr noundef nonnull %0, ptr noundef %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %.thread

bb.j:                                             ; preds = %bb.b
  %i.j = and i64 %1, 256
  %.not12 = icmp eq i64 %i.j, 0
  br i1 %.not12, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @zval_ptr_dtor(ptr noundef nonnull %0) #8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.k, align 8, !tbaa !14
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.j, %bb.k, %bb.i
  ret i32 0
}

; Function Attrs: nounwind uwtable
define hidden noundef i32 @php_filter_email(ptr noundef %0, i64 noundef %1, ptr nofree noundef readnone captures(none) %2, ptr nofree noundef readnone captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [256 x i64], align 16             ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2048) %i.a, i8 0, i64 2048, i1 false)
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %bb.a
  %.07.i = phi i64 [ 0, %bb.a ], [ %i.ae, %.lr.ph.i ] ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr @__const.php_filter_email.allowed_list, i64 %.07.i
  %i.c = load i8, ptr %i.b, align 2, !tbaa !14
  %i.d = zext i8 %i.c to i64
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.d
  store i64 1, ptr %i.e, align 8, !tbaa !25
  %i.f = getelementptr inbounds nuw i8, ptr @__const.php_filter_email.allowed_list, i64 %.07.i
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %i.h = load i8, ptr %i.g, align 1, !tbaa !14
  %i.i = zext i8 %i.h to i64
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.i
  store i64 1, ptr %i.j, align 8, !tbaa !25
  %i.k = getelementptr inbounds nuw i8, ptr @__const.php_filter_email.allowed_list, i64 %.07.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 2
  %i.m = load i8, ptr %i.l, align 2, !tbaa !14
  %i.n = zext i8 %i.m to i64
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.n
  store i64 1, ptr %i.o, align 8, !tbaa !25
  %i.p = getelementptr inbounds nuw i8, ptr @__const.php_filter_email.allowed_list, i64 %.07.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 3
  %i.r = load i8, ptr %i.q, align 1, !tbaa !14
  %i.s = zext i8 %i.r to i64
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.s
  store i64 1, ptr %i.t, align 8, !tbaa !25
  %i.u = getelementptr inbounds nuw i8, ptr @__const.php_filter_email.allowed_list, i64 %.07.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.w = load i8, ptr %i.v, align 2, !tbaa !14
  %i.x = zext i8 %i.w to i64
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.x
  store i64 1, ptr %i.y, align 8, !tbaa !25
  %i.z = getelementptr inbounds nuw i8, ptr @__const.php_filter_email.allowed_list, i64 %.07.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 5
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !14
  %i.ac = zext i8 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ac
  store i64 1, ptr %i.ad, align 8, !tbaa !25
  %i.ae = add nuw nsw i64 %.07.i, 6               ; 2 uses
  %exitcond.not.i.5 = icmp eq i64 %i.ae, 84
  br i1 %exitcond.not.i.5, label %filter_map_update.exit, label %.lr.ph.i, !llvm.loop !0

filter_map_update.exit:                           ; preds = %.lr.ph.i
  %i.af = load ptr, ptr %0, align 8, !tbaa !14    ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !18
  %i.aj = and i64 %i.ai, -8
  %i.ak = add i64 %i.aj, 32
  %i.al = tail call noalias ptr @_emalloc(i64 noundef %i.ak) #9 ; 7 uses
  store i32 1, ptr %i.al, align 4, !tbaa !19
end_hunk_0
begin_hunk_1_@php_filter_number_float:.lr.ph.i
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

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.compressstore.v16i8.p0(<16 x i8>, ptr captures(none), <16 x i1>) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.compressstore.v8i8.p0(<8 x i8>, ptr captures(none), <8 x i1>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.ctpop.i16(i16) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.ctpop.i8(i8) #7

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
!26 = distinct !{!26, !24, !39, !40}
!27 = distinct !{!27, !24, !39, !40}
!28 = distinct !{!28, !24, !40, !39}
!29 = distinct !{!29, !24}
!30 = distinct !{!30, !24, !39, !40}
!31 = distinct !{!31, !24, !39, !40}
!32 = distinct !{!32, !24, !40, !39}
!33 = distinct !{!33, !24, !39, !40}
!34 = distinct !{!34, !24, !39, !40}
!35 = distinct !{!35, !24, !40, !39}
!36 = distinct !{!36, !24, !39, !40}
!37 = distinct !{!37, !24, !39, !40}
!38 = distinct !{!38, !24, !40, !39}
!39 = !{!"llvm.loop.isvectorized", i32 1}
!40 = !{!"llvm.loop.unroll.runtime.disable"}
!41 = !{!"branch_weights", i32 4, i32 28}
!42 = !{!"branch_weights", i32 8, i32 8}
!43 = distinct !{!43, !24}
!44 = distinct !{!44, !24}
!45 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!46 = !{!"", !22, i64 0, !16, i64 8}
!47 = !{!46, !16, i64 8}
!48 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!49 = !{!46, !22, i64 0}
!50 = distinct !{!50, !24}
end_hunk_1
