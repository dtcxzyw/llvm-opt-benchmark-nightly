Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tinygltf/original/tester_v3_freestanding?download=true
inline.NumInlined: 896
inline.NumDeleted: 110
loop-unroll.NumCompletelyUnrolled: 183
loop-unroll.NumRuntimeUnrolled: 107
loop-unroll.NumUnrolled: 291
begin_hunk_0_@tg3__error_push:bb.a

bb.c:                                             ; preds = %bb.b
  %.not28 = icmp eq i32 %i.d, 0
  %i.e = shl i32 %i.d, 1
  %spec.select = select i1 %.not28, i32 16, i32 %i.e ; 2 uses
  %i.f = zext i32 %spec.select to i64
  %i.g = shl nuw nsw i64 %i.f, 5                  ; 4 uses
  %.not.i = icmp eq ptr %.pre, null
  %i.h = or disjoint i64 %i.g, 8
  %i.i = load i64, ptr @test_heap_used, align 8, !tbaa !30 ; 4 uses
  %i.j = add i64 %i.i, %i.h                       ; 3 uses
  %i.k = icmp ugt i64 %i.j, 524288                ; 2 uses
  br i1 %.not.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  br i1 %i.k, label %test_realloc.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr @test_heap, i64 %i.i ; 2 uses
  store i64 %i.g, ptr %i.l, align 8, !tbaa !30
  store i64 %i.j, ptr @test_heap_used, align 8, !tbaa !30
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  br label %.loopexit

bb.f:                                             ; preds = %bb.c
  br i1 %i.k, label %test_realloc.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds i8, ptr %.pre, i64 -8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !30
  %i.p = getelementptr inbounds nuw i8, ptr @test_heap, i64 %i.i ; 2 uses
  store i64 %i.g, ptr %i.p, align 8, !tbaa !30
  store i64 %i.j, ptr @test_heap_used, align 8, !tbaa !30
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 9 uses
  %i.r = tail call i64 @llvm.umin.i64(i64 %i.o, i64 %i.g) ; 11 uses
  %.not27.i = icmp eq i64 %i.r, 0
  br i1 %.not27.i, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %bb.g
  %min.iters.check = icmp samesign ult i64 %i.r, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.s = add i64 %i.i, add (i64 ptrtoaddr (ptr @test_heap to i64), i64 8)
  %i.t = sub i64 %.pre1, %i.s
  %diff.check = icmp ugt i64 %i.t, -32
  br i1 %diff.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check2 = icmp samesign ult i64 %i.r, 32
  br i1 %min.iters.check2, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.u = and i64 %i.r, 28
  %n.vec = and i64 %i.r, 137438953440             ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.pre, i64 %index ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %wide.load = load <16 x i8>, ptr %i.v, align 1, !tbaa !37
  %wide.load3 = load <16 x i8>, ptr %i.w, align 1, !tbaa !37
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 %index ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store <16 x i8> %wide.load, ptr %i.x, align 1, !tbaa !37
  store <16 x i8> %wide.load3, ptr %i.y, align 1, !tbaa !37
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.z = icmp eq i64 %index.next, %n.vec
  br i1 %i.z, label %middle.block, label %vector.body, !llvm.loop !400

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.r, %n.vec
  br i1 %cmp.n, label %.loopexit.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.u, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !46

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec4 = and i64 %i.r, 137438953468            ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index5 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next7, %vec.epilog.vector.body ] ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.pre, i64 %index5
  %wide.load6 = load <4 x i8>, ptr %i.aa, align 1, !tbaa !37
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 %index5
  store <4 x i8> %wide.load6, ptr %i.ab, align 1, !tbaa !37
  %index.next7 = add nuw i64 %index5, 4           ; 2 uses
  %i.ac = icmp eq i64 %index.next7, %n.vec4
  br i1 %i.ac, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !401

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n8 = icmp eq i64 %i.r, %n.vec4
  br i1 %cmp.n8, label %.loopexit.loopexit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.026.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec4, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %i.r, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.026.i.prol = phi i64 [ %i.ag, %.lr.ph.i.prol ], [ %.026.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.pre, i64 %.026.i.prol
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !37
  %i.af = getelementptr inbounds nuw i8, ptr %i.q, i64 %.026.i.prol
  store i8 %i.ae, ptr %i.af, align 1, !tbaa !37
  %i.ag = add nuw nsw i64 %.026.i.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !402

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.026.i.unr = phi i64 [ %.026.i.ph, %.lr.ph.i.preheader ], [ %i.ag, %.lr.ph.i.prol ]
  %i.ah = sub nsw i64 %.026.i.ph, %i.r
  %i.ai = icmp ugt i64 %i.ah, -4
  br i1 %i.ai, label %.loopexit.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.026.i = phi i64 [ %i.ay, %.lr.ph.i ], [ %.026.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.pre, i64 %.026.i
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !37
  %i.al = getelementptr inbounds nuw i8, ptr %i.q, i64 %.026.i
  store i8 %i.ak, ptr %i.al, align 1, !tbaa !37
  %i.am = add nuw nsw i64 %.026.i, 1              ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.am
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !37
  %i.ap = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.am
  store i8 %i.ao, ptr %i.ap, align 1, !tbaa !37
  %i.aq = add nuw nsw i64 %.026.i, 2              ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !37
  %i.at = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.aq
  store i8 %i.as, ptr %i.at, align 1, !tbaa !37
  %i.au = add nuw nsw i64 %.026.i, 3              ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !37
  %i.ax = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.au
  store i8 %i.aw, ptr %i.ax, align 1, !tbaa !37
  %i.ay = add nuw nsw i64 %.026.i, 4              ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.ay, %i.r
  br i1 %exitcond.not.i.3, label %.loopexit.loopexit, label %.lr.ph.i, !llvm.loop !403

.loopexit.loopexit:                               ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %vec.epilog.middle.block, %middle.block
  %.pre33.pre = load i32, ptr %i.a, align 8, !tbaa !68
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.e, %bb.g
  %.pre33 = phi i32 [ %i.b, %bb.e ], [ %i.b, %bb.g ], [ %.pre33.pre, %.loopexit.loopexit ]
  %.018.i.ph = phi ptr [ %i.m, %bb.e ], [ %i.q, %bb.g ], [ %i.q, %.loopexit.loopexit ] ; 2 uses
  store ptr %.018.i.ph, ptr %0, align 8, !tbaa !69
  store i32 %spec.select, ptr %i.c, align 4, !tbaa !122
  br label %bb.h

bb.h:                                             ; preds = %.loopexit, %bb.b
  %i.az = phi i32 [ %.pre33, %.loopexit ], [ %i.b, %bb.b ] ; 2 uses
  %i.ba = phi ptr [ %.018.i.ph, %.loopexit ], [ %.pre, %bb.b ]
  %i.bb = add i32 %i.az, 1
  store i32 %i.bb, ptr %i.a, align 8, !tbaa !68
  %i.bc = zext i32 %i.az to i64
  %i.bd = getelementptr inbounds nuw [32 x i8], ptr %i.ba, i64 %i.bc ; 5 uses
  store i32 2, ptr %i.bd, align 8, !tbaa !124
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  store i32 %1, ptr %i.be, align 4, !tbaa !125
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store ptr %2, ptr %i.bf, align 8, !tbaa !126
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  store ptr %3, ptr %i.bg, align 8, !tbaa !127
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  store i64 %4, ptr %i.bh, align 8, !tbaa !128
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 1, ptr %i.bi, align 8, !tbaa !67
  br label %test_realloc.exit

test_realloc.exit:                                ; preds = %bb.f, %bb.d, %bb.a, %bb.h
  ret void
}

; Function Attrs: nounwind
define internal fastcc range(i32 0, 71) i32 @tg3__parse_from_json(ptr noundef nonnull %0, ptr nofree noundef nonnull readonly captures(address_is_null) %1, ptr noundef nonnull %2) unnamed_addr #9 {
tg3json__strlen_fallback.exit.i:
  %3 = alloca %struct.tg3_str, align 8            ; 6 uses
  %4 = alloca %struct.tg3_str, align 8            ; 6 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %5 = alloca %struct.tg3_str, align 8            ; 6 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca i64, align 8                      ; 8 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %i.g = alloca [4096 x i8], align 16             ; 16 uses
  %i.h = ptrtoaddr ptr %i.g to i64                ; 2 uses
  %6 = alloca %struct.tg3__data_uri_result, align 8 ; 6 uses
  %i.i = alloca i64, align 8                      ; 6 uses
  %i.j = alloca [64 x i8], align 16               ; 8 uses
  %i.k = alloca ptr, align 8                      ; 8 uses
  %i.l = alloca i64, align 8                      ; 11 uses
  %i.m = load i32, ptr %1, align 8, !tbaa !40
  %.not18.i.i = icmp eq i32 %i.m, 6
  br i1 %.not18.i.i, label %.preheader.i.i, label %tg3__json_is_object.exit.thread

.preheader.i.i:                                   ; preds = %tg3json__strlen_fallback.exit.i
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !37   ; 2 uses
  %.not27.i.i = icmp eq i64 %i.o, 0
  br i1 %.not27.i.i, label %tg3__json_is_object.exit.thread, label %.lr.ph.split.i.i.preheader

.lr.ph.split.i.i.preheader:                       ; preds = %.preheader.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !37   ; 2 uses
  br label %.lr.ph.split.i.i

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.split.i.i.preheader, %tg3json__memcmp_fallback.exit.i.i
  %.01425.i.i = phi i64 [ %i.af, %tg3json__memcmp_fallback.exit.i.i ], [ 0, %.lr.ph.split.i.i.preheader ] ; 3 uses
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %i.q, i64 %.01425.i.i ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !53
  %i.u = icmp eq i64 %i.t, 5
  br i1 %i.u, label %.lr.ph.i.preheader.i.i, label %tg3json__memcmp_fallback.exit.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %.lr.ph.split.i.i
  %i.v = load ptr, ptr %i.r, align 8, !tbaa !52   ; 5 uses
  %i.w = load i8, ptr %i.v, align 1, !tbaa !37
  %.not14.i.i.i = icmp eq i8 %i.w, 97
  br i1 %.not14.i.i.i, label %.lr.ph.i.i.i.1, label %tg3json__memcmp_fallback.exit.i.i

.lr.ph.i.i.i.1:                                   ; preds = %.lr.ph.i.preheader.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  %i.y = load i8, ptr %i.x, align 1, !tbaa !37
  %.not14.i.i.i.1 = icmp eq i8 %i.y, 115
  br i1 %.not14.i.i.i.1, label %.lr.ph.i.i.i.2, label %tg3json__memcmp_fallback.exit.i.i

.lr.ph.i.i.i.2:                                   ; preds = %.lr.ph.i.i.i.1
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 2
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !37
  %.not14.i.i.i.2 = icmp eq i8 %i.aa, 115
  br i1 %.not14.i.i.i.2, label %.lr.ph.i.i.i.3, label %tg3json__memcmp_fallback.exit.i.i

.lr.ph.i.i.i.3:                                   ; preds = %.lr.ph.i.i.i.2
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 3
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !37
  %.not14.i.i.i.3 = icmp eq i8 %i.ac, 101
  br i1 %.not14.i.i.i.3, label %.lr.ph.i.i.i.4, label %tg3json__memcmp_fallback.exit.i.i

.lr.ph.i.i.i.4:                                   ; preds = %.lr.ph.i.i.i.3
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !37
  %.not14.i.i.i.4 = icmp eq i8 %i.ae, 116
  br i1 %.not14.i.i.i.4, label %tg3json_object_get.exit, label %tg3json__memcmp_fallback.exit.i.i

tg3json__memcmp_fallback.exit.i.i:                ; preds = %.lr.ph.i.preheader.i.i, %.lr.ph.i.i.i.1, %.lr.ph.i.i.i.2, %.lr.ph.i.i.i.3, %.lr.ph.i.i.i.4, %.lr.ph.split.i.i
  %i.af = add nuw i64 %.01425.i.i, 1              ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.af, %i.o
  br i1 %exitcond.not.i.i, label %tg3__json_is_object.exit.thread, label %.lr.ph.split.i.i, !llvm.loop !3

tg3json_object_get.exit:                          ; preds = %.lr.ph.i.i.i.4
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %i.q, i64 %.01425.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !54 ; 7 uses
  %.not.i = icmp eq ptr %i.ai, null
  br i1 %.not.i, label %tg3__json_is_object.exit.thread, label %tg3__json_is_object.exit

tg3__json_is_object.exit:                         ; preds = %tg3json_object_get.exit
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !40
  %.not = icmp eq i32 %i.aj, 6
  br i1 %.not, label %bb.a, label %tg3__json_is_object.exit.thread

bb.a:                                             ; preds = %tg3__json_is_object.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 296 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(120) %i.ak, i8 0, i64 120, i1 false)
  tail call fastcc void @tg3__parse_string(ptr noundef nonnull %0, ptr noundef nonnull readonly %i.ai, ptr noundef nonnull @.str.55, ptr noundef nonnull %i.ak, i32 noundef 0, ptr noundef nonnull @.str.56) #21
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 312
  tail call fastcc void @tg3__parse_string(ptr noundef nonnull %0, ptr noundef nonnull readonly %i.ai, ptr noundef nonnull @.str.57, ptr noundef %i.al, i32 noundef 0, ptr noundef nonnull @.str.56) #21
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 328
  tail call fastcc void @tg3__parse_string(ptr noundef nonnull %0, ptr noundef nonnull readonly %i.ai, ptr noundef nonnull @.str.58, ptr noundef %i.am, i32 noundef 0, ptr noundef nonnull @.str.56) #21
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 344
  tail call fastcc void @tg3__parse_string(ptr noundef nonnull %0, ptr noundef nonnull readonly %i.ai, ptr noundef nonnull @.str.59, ptr noundef %i.an, i32 noundef 0, ptr noundef nonnull @.str.56) #21
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 360
  tail call fastcc void @tg3__parse_extras_and_extensions(ptr noundef nonnull %0, ptr noundef nonnull readonly %i.ai, ptr noundef %i.ao) #21
  br label %bb.j

tg3__json_is_object.exit.thread:                  ; preds = %tg3json__memcmp_fallback.exit.i.i, %.preheader.i.i, %tg3json__strlen_fallback.exit.i, %tg3json_object_get.exit, %tg3__json_is_object.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !537
  %i.ar = and i32 %i.aq, 1
  %.not749 = icmp eq i32 %i.ar, 0
  br i1 %.not749, label %bb.j, label %bb.b

bb.b:                                             ; preds = %tg3__json_is_object.exit.thread
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !145 ; 6 uses
  %.not.i909 = icmp eq ptr %i.at, null
  br i1 %.not.i909, label %.critedge908, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 3 uses
  %i.av = load i32, ptr %i.au, align 8, !tbaa !68 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 12 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !122 ; 3 uses
  %.not27.i = icmp ult i32 %i.av, %i.ax
  %.pre.i = load ptr, ptr %i.at, align 8, !tbaa !69 ; 11 uses
  %.pre.i3936 = ptrtoaddr ptr %.pre.i to i64
  br i1 %.not27.i, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not28.i = icmp eq i32 %i.ax, 0
  %i.ay = shl i32 %i.ax, 1
  %spec.select.i = select i1 %.not28.i, i32 16, i32 %i.ay ; 2 uses
  %i.az = zext i32 %spec.select.i to i64
  %i.ba = shl nuw nsw i64 %i.az, 5                ; 4 uses
  %.not.i.i910 = icmp eq ptr %.pre.i, null
  %i.bb = or disjoint i64 %i.ba, 8
  %i.bc = load i64, ptr @test_heap_used, align 8, !tbaa !30 ; 4 uses
  %i.bd = add i64 %i.bc, %i.bb                    ; 3 uses
  %i.be = icmp ugt i64 %i.bd, 524288              ; 2 uses
  br i1 %.not.i.i910, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  br i1 %i.be, label %.critedge908, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bf = getelementptr inbounds nuw i8, ptr @test_heap, i64 %i.bc ; 2 uses
  store i64 %i.ba, ptr %i.bf, align 8, !tbaa !30
  store i64 %i.bd, ptr @test_heap_used, align 8, !tbaa !30
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  br label %.loopexit.i

bb.g:                                             ; preds = %bb.d
  br i1 %i.be, label %.critedge908, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bh = getelementptr inbounds i8, ptr %.pre.i, i64 -8
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !30
  %i.bj = getelementptr inbounds nuw i8, ptr @test_heap, i64 %i.bc ; 2 uses
  store i64 %i.ba, ptr %i.bj, align 8, !tbaa !30
  store i64 %i.bd, ptr @test_heap_used, align 8, !tbaa !30
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8 ; 9 uses
  %i.bl = tail call i64 @llvm.umin.i64(i64 %i.bi, i64 %i.ba) ; 11 uses
  %.not27.i.i911 = icmp eq i64 %i.bl, 0
  br i1 %.not27.i.i911, label %.loopexit.i, label %iter.check

iter.check:                                       ; preds = %bb.h
  %min.iters.check = icmp samesign ult i64 %i.bl, 4
  br i1 %min.iters.check, label %.lr.ph.i.i912.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.bm = add i64 %i.bc, add (i64 ptrtoaddr (ptr @test_heap to i64), i64 8)
  %i.bn = sub i64 %.pre.i3936, %i.bm
  %diff.check = icmp ugt i64 %i.bn, -32
  br i1 %diff.check, label %.lr.ph.i.i912.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check3937 = icmp samesign ult i64 %i.bl, 32
  br i1 %min.iters.check3937, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bo = and i64 %i.bl, 28
  %n.vec = and i64 %i.bl, 137438953440            ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %index ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %wide.load = load <16 x i8>, ptr %i.bp, align 1, !tbaa !37
  %wide.load3938 = load <16 x i8>, ptr %i.bq, align 1, !tbaa !37
  %i.br = getelementptr inbounds nuw i8, ptr %i.bk, i64 %index ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  store <16 x i8> %wide.load, ptr %i.br, align 1, !tbaa !37
  store <16 x i8> %wide.load3938, ptr %i.bs, align 1, !tbaa !37
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bt = icmp eq i64 %index.next, %n.vec
  br i1 %i.bt, label %middle.block, label %vector.body, !llvm.loop !404

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bl, %n.vec
  br i1 %cmp.n, label %.loopexit.loopexit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bo, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i912.preheader, label %vec.epilog.ph, !prof !46

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec3939 = and i64 %i.bl, 137438953468        ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index3940 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next3942, %vec.epilog.vector.body ] ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %index3940
  %wide.load3941 = load <4 x i8>, ptr %i.bu, align 1, !tbaa !37
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bk, i64 %index3940
  store <4 x i8> %wide.load3941, ptr %i.bv, align 1, !tbaa !37
  %index.next3942 = add nuw i64 %index3940, 4     ; 2 uses
  %i.bw = icmp eq i64 %index.next3942, %n.vec3939
  br i1 %i.bw, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !405

end_hunk_0
begin_hunk_1_@tg3__parse_from_json:tg3json__strlen_fallback.exit.i
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !37
  %.not14.i.i.i933.1 = icmp eq i8 %i.eb, 117
  br i1 %.not14.i.i.i933.1, label %.lr.ph.i.i.i929.2, label %tg3json__memcmp_fallback.exit.i.i926

.lr.ph.i.i.i929.2:                                ; preds = %.lr.ph.i.i.i929.1
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dy, i64 2
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !37
  %.not14.i.i.i933.2 = icmp eq i8 %i.ed, 102
  br i1 %.not14.i.i.i933.2, label %.lr.ph.i.i.i929.3, label %tg3json__memcmp_fallback.exit.i.i926

.lr.ph.i.i.i929.3:                                ; preds = %.lr.ph.i.i.i929.2
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dy, i64 3
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !37
  %.not14.i.i.i933.3 = icmp eq i8 %i.ef, 102
  br i1 %.not14.i.i.i933.3, label %.lr.ph.i.i.i929.4, label %tg3json__memcmp_fallback.exit.i.i926

.lr.ph.i.i.i929.4:                                ; preds = %.lr.ph.i.i.i929.3
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dy, i64 4
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !37
  %.not14.i.i.i933.4 = icmp eq i8 %i.eh, 101
  br i1 %.not14.i.i.i933.4, label %.lr.ph.i.i.i929.5, label %tg3json__memcmp_fallback.exit.i.i926

.lr.ph.i.i.i929.5:                                ; preds = %.lr.ph.i.i.i929.4
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dy, i64 5
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !37
  %.not14.i.i.i933.5 = icmp eq i8 %i.ej, 114
  br i1 %.not14.i.i.i933.5, label %.lr.ph.i.i.i929.6, label %tg3json__memcmp_fallback.exit.i.i926

.lr.ph.i.i.i929.6:                                ; preds = %.lr.ph.i.i.i929.5
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dy, i64 6
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !37
  %.not14.i.i.i933.6 = icmp eq i8 %i.el, 115
  br i1 %.not14.i.i.i933.6, label %tg3json_object_get.exit940, label %tg3json__memcmp_fallback.exit.i.i926

tg3json__memcmp_fallback.exit.i.i926:             ; preds = %.lr.ph.i.preheader.i.i928, %.lr.ph.i.i.i929.1, %.lr.ph.i.i.i929.2, %.lr.ph.i.i.i929.3, %.lr.ph.i.i.i929.4, %.lr.ph.i.i.i929.5, %.lr.ph.i.i.i929.6, %.lr.ph.split.i.i924
  %i.em = add nuw i64 %.01425.i.i925, 1           ; 2 uses
  %exitcond.not.i.i927 = icmp eq i64 %i.em, %i.dr
  br i1 %exitcond.not.i.i927, label %tg3__json_is_array.exit.thread, label %.lr.ph.split.i.i924, !llvm.loop !3

tg3json_object_get.exit940:                       ; preds = %.lr.ph.i.i.i929.6
  %i.en = getelementptr inbounds nuw [24 x i8], ptr %i.dt, i64 %.01425.i.i925
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !54 ; 5 uses
  %.not.i941 = icmp eq ptr %i.ep, null
  br i1 %.not.i941, label %tg3__json_is_array.exit.thread, label %tg3__json_is_array.exit

tg3__json_is_array.exit:                          ; preds = %tg3json_object_get.exit940
  %i.eq = load i32, ptr %i.ep, align 8, !tbaa !40
  %.not2704 = icmp eq i32 %i.eq, 5
  br i1 %.not2704, label %tg3json_array_size.exit, label %tg3__json_is_array.exit.thread

tg3json_array_size.exit:                          ; preds = %tg3__json_is_array.exit
  %i.er = getelementptr inbounds nuw i8, ptr %i.ep, i64 16 ; 2 uses
  %i.es = load i64, ptr %i.er, align 8, !tbaa !37 ; 4 uses
  %.not754 = icmp eq i64 %i.es, 0
  br i1 %.not754, label %tg3__json_is_array.exit.thread, label %bb.m

bb.m:                                             ; preds = %tg3json_array_size.exit
  %i.et = load ptr, ptr %0, align 8, !tbaa !144   ; 9 uses
  %i.eu = mul i64 %i.es, 112                      ; 6 uses
  %i.ev = icmp eq ptr %i.et, null
  %i.ew = icmp eq i64 %i.eu, 0
  %or.cond.i = or i1 %i.ew, %i.ev
  br i1 %or.cond.i, label %tg3__json_is_array.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ex = getelementptr inbounds nuw i8, ptr %i.et, i64 32
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !136 ; 3 uses
  %.not.i944 = icmp ne i64 %i.ey, 0               ; 2 uses
  %i.ez = icmp ugt i64 %i.eu, %i.ey
  %or.cond28.i = and i1 %.not.i944, %i.ez
  br i1 %or.cond28.i, label %tg3__json_is_array.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.fa = getelementptr inbounds nuw i8, ptr %i.et, i64 8 ; 3 uses
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !150 ; 5 uses
  %.not26.i = icmp eq ptr %i.fb, null
  br i1 %.not26.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !152 ; 3 uses
  %i.fe = add i64 %i.fd, %i.eu
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fb, i64 24
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !153
  %i.fh = icmp ugt i64 %i.fe, %i.fg
  br i1 %i.fh, label %bb.q, label %tg3__arena_alloc.exit

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.fi = getelementptr inbounds nuw i8, ptr %i.et, i64 40
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !134
  %spec.select.i.i = tail call i64 @llvm.umax.i64(i64 %i.fj, i64 range(i64 0, -7) %i.eu) ; 3 uses
  %i.fk = icmp ugt i64 %spec.select.i.i, %i.ey
  %or.cond.i.i = select i1 %.not.i944, i1 %i.fk, i1 false
  br i1 %or.cond.i.i, label %tg3__json_is_array.exit.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.fl = getelementptr inbounds nuw i8, ptr %i.et, i64 16 ; 3 uses
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !154
  %i.fn = add i64 %spec.select.i.i, 32            ; 3 uses
  %i.fo = add i64 %i.fm, %i.fn
  %i.fp = getelementptr inbounds nuw i8, ptr %i.et, i64 24
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !135
  %i.fr = icmp ugt i64 %i.fo, %i.fq
  br i1 %i.fr, label %tg3__json_is_array.exit.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.fs = getelementptr inbounds nuw i8, ptr %i.et, i64 48
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !155
  %i.fu = getelementptr inbounds nuw i8, ptr %i.et, i64 72
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !156
  %i.fw = tail call ptr %i.ft(i64 noundef %i.fn, ptr noundef %i.fv) #22, !inline_history !10 ; 8 uses
  %.not37.i.i = icmp eq ptr %i.fw, null
  br i1 %.not37.i.i, label %tg3__json_is_array.exit.thread, label %tg3__arena_alloc.exit.thread

tg3__arena_alloc.exit.thread:                     ; preds = %bb.s
  store ptr null, ptr %i.fw, align 8, !tbaa !157
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 32 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  store ptr %i.fx, ptr %i.fy, align 8, !tbaa !158
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fw, i64 24
  store i64 %spec.select.i.i, ptr %i.fz, align 8, !tbaa !153
  %i.ga = load i64, ptr %i.fl, align 8, !tbaa !154
  %i.gb = add i64 %i.ga, %i.fn
  store i64 %i.gb, ptr %i.fl, align 8, !tbaa !154
  %i.gc = load ptr, ptr %i.fa, align 8, !tbaa !150 ; 2 uses
  %.not38.i.i = icmp eq ptr %i.gc, null
  %..i.i = select i1 %.not38.i.i, ptr %i.et, ptr %i.gc
  store ptr %i.fw, ptr %..i.i, align 8, !tbaa !159
  store ptr %i.fw, ptr %i.fa, align 8, !tbaa !150
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fw, i64 16
  store i64 %i.eu, ptr %i.gd, align 8, !tbaa !152
  br label %.preheader2825

tg3__arena_alloc.exit:                            ; preds = %bb.p
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  %.pre.i945 = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !158 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  %i.gf = getelementptr inbounds nuw i8, ptr %.pre.i945, i64 %i.fd
  %i.gg = add i64 %i.fd, %i.eu
  store i64 %i.gg, ptr %i.ge, align 8, !tbaa !152
  %.not755 = icmp eq ptr %.pre.i945, null
  br i1 %.not755, label %tg3__json_is_array.exit.thread, label %.preheader2825

.preheader2825:                                   ; preds = %tg3__arena_alloc.exit.thread, %tg3__arena_alloc.exit
  %i.gh = phi ptr [ %i.fx, %tg3__arena_alloc.exit.thread ], [ %i.gf, %tg3__arena_alloc.exit ] ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 11 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 224
  br label %bb.t

bb.t:                                             ; preds = %.preheader2825, %bb.eg
  %.06682927 = phi i64 [ 0, %.preheader2825 ], [ %i.aor, %bb.eg ] ; 6 uses
  %i.gw = load i32, ptr %i.ep, align 8, !tbaa !40
  %.not8.i = icmp eq i32 %i.gw, 5
  br i1 %.not8.i, label %bb.u, label %tg3__json_is_object.exit950.thread

bb.u:                                             ; preds = %bb.t
  %i.gx = load i64, ptr %i.er, align 8, !tbaa !37
  %.not9.i = icmp ult i64 %.06682927, %i.gx
  br i1 %.not9.i, label %tg3json_array_get.exit, label %tg3__json_is_object.exit950.thread

tg3json_array_get.exit:                           ; preds = %bb.u
  %i.gy = load ptr, ptr %i.gi, align 8, !tbaa !37 ; 2 uses
  %i.gz = getelementptr inbounds nuw [24 x i8], ptr %i.gy, i64 %.06682927 ; 6 uses
  %.not.i949 = icmp eq ptr %i.gy, null
  br i1 %.not.i949, label %tg3__json_is_object.exit950.thread, label %tg3__json_is_object.exit950

tg3__json_is_object.exit950:                      ; preds = %tg3json_array_get.exit
  %i.ha = load i32, ptr %i.gz, align 8, !tbaa !40
  %.not2705 = icmp eq i32 %i.ha, 6
  br i1 %.not2705, label %bb.v, label %tg3__json_is_object.exit950.thread

tg3__json_is_object.exit950.thread:               ; preds = %bb.t, %bb.u, %tg3json_array_get.exit, %tg3__json_is_object.exit950
  %i.hb = load ptr, ptr %i.gp, align 8, !tbaa !145
  %i.hc = load ptr, ptr %0, align 8, !tbaa !144
  %i.hd = trunc i64 %.06682927 to i32
  call void (ptr, ptr, i32, i32, ptr, ptr, ...) @tg3__error_pushf(ptr noundef %i.hb, ptr noundef %i.hc, i32 poison, i32 noundef 11, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.49, i32 noundef %i.hd) #21
  br label %bb.eg

bb.v:                                             ; preds = %tg3__json_is_object.exit950
  %i.he = getelementptr inbounds nuw [112 x i8], ptr %i.gh, i64 %.06682927 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #20
  store i64 0, ptr %i.i, align 8, !tbaa !30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(112) %i.he, i8 0, i64 112, i1 false)
  call fastcc void @tg3__parse_string(ptr noundef nonnull %0, ptr noundef nonnull readonly %i.gz, ptr noundef nonnull @.str.64, ptr noundef nonnull %i.he, i32 noundef 0, ptr noundef nonnull @.str.65) #21
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 40 ; 2 uses
  call fastcc void @tg3__parse_string(ptr noundef nonnull %0, ptr noundef nonnull readonly %i.gz, ptr noundef nonnull @.str.66, ptr noundef %i.hf, i32 noundef 0, ptr noundef nonnull @.str.65) #21
  call fastcc void @tg3__parse_uint64(ptr noundef nonnull %0, ptr noundef nonnull readonly %i.gz, ptr noundef nonnull @.str.67, ptr noundef %i.i, i32 noundef 1, ptr noundef nonnull @.str.65) #21
  %i.hg = load i64, ptr %i.i, align 8, !tbaa !30  ; 18 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.he, i64 16
  store i64 %i.hg, ptr %i.hh, align 8, !tbaa !162
  %i.hi = load i32, ptr %i.gj, align 8, !tbaa !163
  %i.hj = icmp ne i32 %i.hi, 0
  %i.hk = and i64 %.06682927, 4294967295
  %i.hl = icmp eq i64 %i.hk, 0
  %or.cond.i951 = and i1 %i.hl, %i.hj
  %i.hm = getelementptr inbounds nuw i8, ptr %i.he, i64 48
  %i.hn = load i32, ptr %i.hm, align 8, !tbaa !164 ; 13 uses
  %i.ho = icmp eq i32 %i.hn, 0                    ; 2 uses
  br i1 %or.cond.i951, label %bb.w, label %bb.ba

bb.w:                                             ; preds = %bb.v
  br i1 %i.ho, label %bb.x, label %.thread.i

bb.x:                                             ; preds = %bb.w
  %i.hp = load ptr, ptr %i.gt, align 8, !tbaa !165 ; 2 uses
  %.not96.i = icmp eq ptr %i.hp, null
  br i1 %.not96.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.hq = load i64, ptr %i.gu, align 8, !tbaa !166
  %i.hr = icmp ult i64 %i.hq, %i.hg
  br i1 %i.hr, label %bb.z, label %bb.ah

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.hs = load ptr, ptr %i.gp, align 8, !tbaa !145 ; 6 uses
  %.not.i98.i = icmp eq ptr %i.hs, null
  br i1 %.not.i98.i, label %tg3__parse_buffer.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 8 ; 3 uses
  %i.hu = load i32, ptr %i.ht, align 8, !tbaa !68 ; 4 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hs, i64 12 ; 2 uses
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !122 ; 3 uses
  %.not27.i.i958 = icmp ult i32 %i.hu, %i.hw
  %.pre.i.i = load ptr, ptr %i.hs, align 8, !tbaa !69 ; 11 uses
  %.pre.i.i3945 = ptrtoaddr ptr %.pre.i.i to i64
  br i1 %.not27.i.i958, label %bb.ag, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %.not28.i.i = icmp eq i32 %i.hw, 0
  %i.hx = shl i32 %i.hw, 1
  %spec.select.i.i959 = select i1 %.not28.i.i, i32 16, i32 %i.hx ; 2 uses
  %i.hy = zext i32 %spec.select.i.i959 to i64
  %i.hz = shl nuw nsw i64 %i.hy, 5                ; 4 uses
  %.not.i.i.i960 = icmp eq ptr %.pre.i.i, null
  %i.ia = or disjoint i64 %i.hz, 8
  %i.ib = load i64, ptr @test_heap_used, align 8, !tbaa !30 ; 4 uses
  %i.ic = add i64 %i.ib, %i.ia                    ; 3 uses
  %i.id = icmp ugt i64 %i.ic, 524288              ; 2 uses
  br i1 %.not.i.i.i960, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  br i1 %i.id, label %tg3__parse_buffer.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ie = getelementptr inbounds nuw i8, ptr @test_heap, i64 %i.ib ; 2 uses
  store i64 %i.hz, ptr %i.ie, align 8, !tbaa !30
  store i64 %i.ic, ptr @test_heap_used, align 8, !tbaa !30
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 8
  br label %.loopexit.i.i

bb.ae:                                            ; preds = %bb.ab
  br i1 %i.id, label %tg3__parse_buffer.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ig = getelementptr inbounds i8, ptr %.pre.i.i, i64 -8
  %i.ih = load i64, ptr %i.ig, align 8, !tbaa !30
  %i.ii = getelementptr inbounds nuw i8, ptr @test_heap, i64 %i.ib ; 2 uses
  store i64 %i.hz, ptr %i.ii, align 8, !tbaa !30
  store i64 %i.ic, ptr @test_heap_used, align 8, !tbaa !30
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 8 ; 9 uses
  %i.ik = call i64 @llvm.umin.i64(i64 %i.ih, i64 %i.hz) ; 11 uses
  %.not27.i.i.i = icmp eq i64 %i.ik, 0
  br i1 %.not27.i.i.i, label %.loopexit.i.i, label %iter.check3960

iter.check3960:                                   ; preds = %bb.af
  %min.iters.check3947 = icmp samesign ult i64 %i.ik, 4
  br i1 %min.iters.check3947, label %.lr.ph.i.i.i961.preheader, label %vector.memcheck3944

vector.memcheck3944:                              ; preds = %iter.check3960
  %i.il = add i64 %i.ib, add (i64 ptrtoaddr (ptr @test_heap to i64), i64 8)
  %i.im = sub i64 %.pre.i.i3945, %i.il
  %diff.check3946 = icmp ugt i64 %i.im, -32
  br i1 %diff.check3946, label %.lr.ph.i.i.i961.preheader, label %vector.main.loop.iter.check3948

vector.main.loop.iter.check3948:                  ; preds = %vector.memcheck3944
  %min.iters.check3949 = icmp samesign ult i64 %i.ik, 32
  br i1 %min.iters.check3949, label %vec.epilog.ph3964, label %vector.ph3950

vector.ph3950:                                    ; preds = %vector.main.loop.iter.check3948
  %i.in = and i64 %i.ik, 28
  %n.vec3951 = and i64 %i.ik, 137438953440        ; 4 uses
  br label %vector.body3952

vector.body3952:                                  ; preds = %vector.body3952, %vector.ph3950
  %index3953 = phi i64 [ 0, %vector.ph3950 ], [ %index.next3956, %vector.body3952 ] ; 3 uses
  %i.io = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 %index3953 ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 16
  %wide.load3954 = load <16 x i8>, ptr %i.io, align 1, !tbaa !37
  %wide.load3955 = load <16 x i8>, ptr %i.ip, align 1, !tbaa !37
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ij, i64 %index3953 ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 16
  store <16 x i8> %wide.load3954, ptr %i.iq, align 1, !tbaa !37
  store <16 x i8> %wide.load3955, ptr %i.ir, align 1, !tbaa !37
  %index.next3956 = add nuw i64 %index3953, 32    ; 2 uses
  %i.is = icmp eq i64 %index.next3956, %n.vec3951
  br i1 %i.is, label %middle.block3957, label %vector.body3952, !llvm.loop !408

middle.block3957:                                 ; preds = %vector.body3952
  %cmp.n3958 = icmp eq i64 %i.ik, %n.vec3951
  br i1 %cmp.n3958, label %.loopexit.loopexit.i.i, label %vec.epilog.iter.check3962

vec.epilog.iter.check3962:                        ; preds = %middle.block3957
  %min.epilog.iters.check3963 = icmp eq i64 %i.in, 0
  br i1 %min.epilog.iters.check3963, label %.lr.ph.i.i.i961.preheader, label %vec.epilog.ph3964, !prof !46

vec.epilog.ph3964:                                ; preds = %vector.main.loop.iter.check3948, %vec.epilog.iter.check3962
  %vec.epilog.resume.val3959 = phi i64 [ %n.vec3951, %vec.epilog.iter.check3962 ], [ 0, %vector.main.loop.iter.check3948 ]
  %n.vec3965 = and i64 %i.ik, 137438953468        ; 3 uses
  br label %vec.epilog.vector.body3966

vec.epilog.vector.body3966:                       ; preds = %vec.epilog.vector.body3966, %vec.epilog.ph3964
  %index3967 = phi i64 [ %vec.epilog.resume.val3959, %vec.epilog.ph3964 ], [ %index.next3969, %vec.epilog.vector.body3966 ] ; 3 uses
  %i.it = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 %index3967
  %wide.load3968 = load <4 x i8>, ptr %i.it, align 1, !tbaa !37
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ij, i64 %index3967
  store <4 x i8> %wide.load3968, ptr %i.iu, align 1, !tbaa !37
  %index.next3969 = add nuw i64 %index3967, 4     ; 2 uses
  %i.iv = icmp eq i64 %index.next3969, %n.vec3965
  br i1 %i.iv, label %vec.epilog.middle.block3970, label %vec.epilog.vector.body3966, !llvm.loop !409

vec.epilog.middle.block3970:                      ; preds = %vec.epilog.vector.body3966
  %cmp.n3971 = icmp eq i64 %i.ik, %n.vec3965
  br i1 %cmp.n3971, label %.loopexit.loopexit.i.i, label %.lr.ph.i.i.i961.preheader

.lr.ph.i.i.i961.preheader:                        ; preds = %vector.memcheck3944, %iter.check3960, %vec.epilog.iter.check3962, %vec.epilog.middle.block3970
  %.026.i.i.i.ph = phi i64 [ 0, %iter.check3960 ], [ 0, %vector.memcheck3944 ], [ %n.vec3951, %vec.epilog.iter.check3962 ], [ %n.vec3965, %vec.epilog.middle.block3970 ] ; 3 uses
  %xtraiter4679 = and i64 %i.ik, 3                ; 2 uses
  %lcmp.mod4680.not = icmp eq i64 %xtraiter4679, 0
  br i1 %lcmp.mod4680.not, label %.lr.ph.i.i.i961.prol.loopexit, label %.lr.ph.i.i.i961.prol

.lr.ph.i.i.i961.prol:                             ; preds = %.lr.ph.i.i.i961.preheader, %.lr.ph.i.i.i961.prol
  %.026.i.i.i.prol = phi i64 [ %i.iz, %.lr.ph.i.i.i961.prol ], [ %.026.i.i.i.ph, %.lr.ph.i.i.i961.preheader ] ; 3 uses
  %prol.iter4681 = phi i64 [ %prol.iter4681.next, %.lr.ph.i.i.i961.prol ], [ 0, %.lr.ph.i.i.i961.preheader ]
  %i.iw = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 %.026.i.i.i.prol
  %i.ix = load i8, ptr %i.iw, align 1, !tbaa !37
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ij, i64 %.026.i.i.i.prol
  store i8 %i.ix, ptr %i.iy, align 1, !tbaa !37
  %i.iz = add nuw nsw i64 %.026.i.i.i.prol, 1     ; 2 uses
  %prol.iter4681.next = add i64 %prol.iter4681, 1 ; 2 uses
  %prol.iter4681.cmp.not = icmp eq i64 %prol.iter4681.next, %xtraiter4679
  br i1 %prol.iter4681.cmp.not, label %.lr.ph.i.i.i961.prol.loopexit, label %.lr.ph.i.i.i961.prol, !llvm.loop !410

.lr.ph.i.i.i961.prol.loopexit:                    ; preds = %.lr.ph.i.i.i961.prol, %.lr.ph.i.i.i961.preheader
  %.026.i.i.i.unr = phi i64 [ %.026.i.i.i.ph, %.lr.ph.i.i.i961.preheader ], [ %i.iz, %.lr.ph.i.i.i961.prol ]
  %i.ja = sub nsw i64 %.026.i.i.i.ph, %i.ik
  %i.jb = icmp ugt i64 %i.ja, -4
  br i1 %i.jb, label %.loopexit.loopexit.i.i, label %.lr.ph.i.i.i961

.lr.ph.i.i.i961:                                  ; preds = %.lr.ph.i.i.i961.prol.loopexit, %.lr.ph.i.i.i961
  %.026.i.i.i = phi i64 [ %i.jr, %.lr.ph.i.i.i961 ], [ %.026.i.i.i.unr, %.lr.ph.i.i.i961.prol.loopexit ] ; 6 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 %.026.i.i.i
  %i.jd = load i8, ptr %i.jc, align 1, !tbaa !37
  %i.je = getelementptr inbounds nuw i8, ptr %i.ij, i64 %.026.i.i.i
  store i8 %i.jd, ptr %i.je, align 1, !tbaa !37
  %i.jf = add nuw nsw i64 %.026.i.i.i, 1          ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 %i.jf
  %i.jh = load i8, ptr %i.jg, align 1, !tbaa !37
  %i.ji = getelementptr inbounds nuw i8, ptr %i.ij, i64 %i.jf
  store i8 %i.jh, ptr %i.ji, align 1, !tbaa !37
  %i.jj = add nuw nsw i64 %.026.i.i.i, 2          ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 %i.jj
  %i.jl = load i8, ptr %i.jk, align 1, !tbaa !37
  %i.jm = getelementptr inbounds nuw i8, ptr %i.ij, i64 %i.jj
  store i8 %i.jl, ptr %i.jm, align 1, !tbaa !37
  %i.jn = add nuw nsw i64 %.026.i.i.i, 3          ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 %i.jn
  %i.jp = load i8, ptr %i.jo, align 1, !tbaa !37
  %i.jq = getelementptr inbounds nuw i8, ptr %i.ij, i64 %i.jn
  store i8 %i.jp, ptr %i.jq, align 1, !tbaa !37
  %i.jr = add nuw nsw i64 %.026.i.i.i, 4          ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %i.jr, %i.ik
  br i1 %exitcond.not.i.i.i.3, label %.loopexit.loopexit.i.i, label %.lr.ph.i.i.i961, !llvm.loop !411

.loopexit.loopexit.i.i:                           ; preds = %.lr.ph.i.i.i961.prol.loopexit, %.lr.ph.i.i.i961, %vec.epilog.middle.block3970, %middle.block3957
  %.pre33.pre.i.i = load i32, ptr %i.ht, align 8, !tbaa !68
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.loopexit.loopexit.i.i, %bb.af, %bb.ad
  %.pre33.i.i = phi i32 [ %i.hu, %bb.ad ], [ %i.hu, %bb.af ], [ %.pre33.pre.i.i, %.loopexit.loopexit.i.i ]
  %.018.i.ph.i.i = phi ptr [ %i.if, %bb.ad ], [ %i.ij, %bb.af ], [ %i.ij, %.loopexit.loopexit.i.i ] ; 2 uses
  store ptr %.018.i.ph.i.i, ptr %i.hs, align 8, !tbaa !69
  store i32 %spec.select.i.i959, ptr %i.hv, align 4, !tbaa !122
  br label %bb.ag

bb.ag:                                            ; preds = %.loopexit.i.i, %bb.aa
  %i.js = phi i32 [ %.pre33.i.i, %.loopexit.i.i ], [ %i.hu, %bb.aa ] ; 2 uses
  %i.jt = phi ptr [ %.018.i.ph.i.i, %.loopexit.i.i ], [ %.pre.i.i, %bb.aa ]
  %i.ju = add i32 %i.js, 1
  store i32 %i.ju, ptr %i.ht, align 8, !tbaa !68
  %i.jv = zext i32 %i.js to i64
  %i.jw = getelementptr inbounds nuw [32 x i8], ptr %i.jt, i64 %i.jv ; 5 uses
  store i32 2, ptr %i.jw, align 8, !tbaa !124
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 4
  store i32 45, ptr %i.jx, align 4, !tbaa !125
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jw, i64 8
  store ptr @.str.68, ptr %i.jy, align 8, !tbaa !126
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jw, i64 16
  store ptr null, ptr %i.jz, align 8, !tbaa !127
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jw, i64 24
  store i64 -1, ptr %i.ka, align 8, !tbaa !128
  %i.kb = getelementptr inbounds nuw i8, ptr %i.hs, i64 16
  store i32 1, ptr %i.kb, align 8, !tbaa !67
  br label %tg3__parse_buffer.exit

bb.ah:                                            ; preds = %bb.y
  %i.kc = load i32, ptr %i.gv, align 8, !tbaa !542
  %.not97.i = icmp eq i32 %i.kc, 0
  br i1 %.not97.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.kd = getelementptr inbounds nuw i8, ptr %i.he, i64 24
  store ptr %i.hp, ptr %i.kd, align 8, !tbaa !167
  %i.ke = getelementptr inbounds nuw i8, ptr %i.he, i64 32
  store i64 %i.hg, ptr %i.ke, align 8, !tbaa !168
  %i.kf = getelementptr inbounds nuw i8, ptr %i.he, i64 56
  call fastcc void @tg3__parse_extras_and_extensions(ptr noundef nonnull %0, ptr noundef nonnull readonly %i.gz, ptr noundef %i.kf) #21
  br label %tg3__parse_buffer.exit

bb.aj:                                            ; preds = %bb.ah
  %i.kg = load ptr, ptr %0, align 8, !tbaa !144   ; 9 uses
  %i.kh = icmp eq ptr %i.kg, null
  %i.ki = icmp eq i64 %i.hg, 0
  %or.cond.i.i955 = or i1 %i.ki, %i.kh
  br i1 %or.cond.i.i955, label %tg3__arena_alloc.exit.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kg, i64 32
  %i.kk = load i64, ptr %i.kj, align 8, !tbaa !136 ; 3 uses
  %.not.i99.i = icmp ne i64 %i.kk, 0              ; 2 uses
  %i.kl = icmp ugt i64 %i.hg, %i.kk
  %or.cond28.i.i = and i1 %.not.i99.i, %i.kl
  br i1 %or.cond28.i.i, label %tg3__arena_alloc.exit.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.km = add i64 %i.hg, 7
  %i.kn = and i64 %i.km, -8                       ; 3 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kg, i64 8 ; 3 uses
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !150 ; 5 uses
  %.not26.i.i = icmp eq ptr %i.kp, null
  br i1 %.not26.i.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 16
  %i.kr = load i64, ptr %i.kq, align 8, !tbaa !152 ; 2 uses
  %i.ks = add i64 %i.kr, %i.kn
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kp, i64 24
  %i.ku = load i64, ptr %i.kt, align 8, !tbaa !153
  %i.kv = icmp ugt i64 %i.ks, %i.ku
  br i1 %i.kv, label %bb.an, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.am
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.kp, i64 8
  %.pre.i100.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !158
  br label %bb.aq

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kg, i64 40
  %i.kx = load i64, ptr %i.kw, align 8, !tbaa !134
  %spec.select.i.i.i = call i64 @llvm.umax.i64(i64 %i.kx, i64 range(i64 0, -7) %i.kn) ; 3 uses
  %i.ky = icmp ugt i64 %spec.select.i.i.i, %i.kk
  %or.cond.i.i.i = select i1 %.not.i99.i, i1 %i.ky, i1 false
  br i1 %or.cond.i.i.i, label %tg3__arena_alloc.exit.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kg, i64 16 ; 3 uses
  %i.la = load i64, ptr %i.kz, align 8, !tbaa !154
  %i.lb = add i64 %spec.select.i.i.i, 32          ; 3 uses
  %i.lc = add i64 %i.la, %i.lb
  %i.ld = getelementptr inbounds nuw i8, ptr %i.kg, i64 24
  %i.le = load i64, ptr %i.ld, align 8, !tbaa !135
  %i.lf = icmp ugt i64 %i.lc, %i.le
  br i1 %i.lf, label %tg3__arena_alloc.exit.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.lg = getelementptr inbounds nuw i8, ptr %i.kg, i64 48
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !155
  %i.li = getelementptr inbounds nuw i8, ptr %i.kg, i64 72
  %i.lj = load ptr, ptr %i.li, align 8, !tbaa !156
  %i.lk = call ptr %i.lh(i64 noundef %i.lb, ptr noundef %i.lj) #22, !inline_history !412 ; 9 uses
  %.not37.i.i.i = icmp eq ptr %i.lk, null
  br i1 %.not37.i.i.i, label %tg3__arena_alloc.exit.i, label %tg3__arena_new_block.exit.i.i

tg3__arena_new_block.exit.i.i:                    ; preds = %bb.ap
  store ptr null, ptr %i.lk, align 8, !tbaa !157
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 32 ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lk, i64 8
  store ptr %i.ll, ptr %i.lm, align 8, !tbaa !158
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lk, i64 16
  store i64 0, ptr %i.ln, align 8, !tbaa !152
  %i.lo = getelementptr inbounds nuw i8, ptr %i.lk, i64 24
  store i64 %spec.select.i.i.i, ptr %i.lo, align 8, !tbaa !153
  %i.lp = load i64, ptr %i.kz, align 8, !tbaa !154
  %i.lq = add i64 %i.lp, %i.lb
  store i64 %i.lq, ptr %i.kz, align 8, !tbaa !154
  %i.lr = load ptr, ptr %i.ko, align 8, !tbaa !150 ; 2 uses
  %.not38.i.i.i = icmp eq ptr %i.lr, null
  %..i.i.i = select i1 %.not38.i.i.i, ptr %i.kg, ptr %i.lr
  store ptr %i.lk, ptr %..i.i.i, align 8, !tbaa !159
  store ptr %i.lk, ptr %i.ko, align 8, !tbaa !150
  br label %bb.aq

bb.aq:                                            ; preds = %tg3__arena_new_block.exit.i.i, %._crit_edge.i.i
  %i.ls = phi i64 [ 0, %tg3__arena_new_block.exit.i.i ], [ %i.kr, %._crit_edge.i.i ] ; 2 uses
  %i.lt = phi ptr [ %i.ll, %tg3__arena_new_block.exit.i.i ], [ %.pre.i100.i, %._crit_edge.i.i ]
  %.0.i.i956 = phi ptr [ %i.lk, %tg3__arena_new_block.exit.i.i ], [ %i.kp, %._crit_edge.i.i ]
  %i.lu = getelementptr inbounds nuw i8, ptr %.0.i.i956, i64 16
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lt, i64 %i.ls
  %i.lw = add i64 %i.ls, %i.kn
  store i64 %i.lw, ptr %i.lu, align 8, !tbaa !152
  br label %tg3__arena_alloc.exit.i

tg3__arena_alloc.exit.i:                          ; preds = %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.ak, %bb.aj
  %.020.i.i = phi ptr [ null, %bb.ak ], [ null, %bb.aj ], [ %i.lv, %bb.aq ], [ null, %bb.ao ], [ null, %bb.an ], [ null, %bb.ap ] ; 8 uses
  %.020.i.i4003 = ptrtoaddr ptr %.020.i.i to i64
  %7 = icmp eq ptr %.020.i.i, null
  %i.lx = icmp ne i64 %i.hg, 0                    ; 2 uses
  %or.cond6.i = select i1 %7, i1 %i.lx, i1 false
  br i1 %or.cond6.i, label %bb.ar, label %bb.az

bb.ar:                                            ; preds = %tg3__arena_alloc.exit.i
  %i.ly = load ptr, ptr %i.gp, align 8, !tbaa !145 ; 6 uses
  %.not.i2350 = icmp eq ptr %i.ly, null
  br i1 %.not.i2350, label %tg3__parse_buffer.exit, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 8 ; 3 uses
  %i.ma = load i32, ptr %i.lz, align 8, !tbaa !68 ; 4 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ly, i64 12 ; 2 uses
  %i.mc = load i32, ptr %i.mb, align 4, !tbaa !122 ; 3 uses
  %.not27.i2351 = icmp ult i32 %i.ma, %i.mc
  %.pre.i2352 = load ptr, ptr %i.ly, align 8, !tbaa !69 ; 11 uses
  %.pre.i23523974 = ptrtoaddr ptr %.pre.i2352 to i64
  br i1 %.not27.i2351, label %bb.ay, label %bb.at

bb.at:                                            ; preds = %bb.as
  %.not28.i2353 = icmp eq i32 %i.mc, 0
  %i.md = shl i32 %i.mc, 1
  %spec.select.i2354 = select i1 %.not28.i2353, i32 16, i32 %i.md ; 2 uses
  %i.me = zext i32 %spec.select.i2354 to i64
  %i.mf = shl nuw nsw i64 %i.me, 5                ; 4 uses
  %.not.i.i2355 = icmp eq ptr %.pre.i2352, null
  %i.mg = or disjoint i64 %i.mf, 8
  %i.mh = load i64, ptr @test_heap_used, align 8, !tbaa !30 ; 4 uses
  %i.mi = add i64 %i.mh, %i.mg                    ; 3 uses
  %i.mj = icmp ugt i64 %i.mi, 524288              ; 2 uses
  br i1 %.not.i.i2355, label %bb.au, label %bb.aw

bb.au:                                            ; preds = %bb.at
  br i1 %i.mj, label %tg3__parse_buffer.exit, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.mk = getelementptr inbounds nuw i8, ptr @test_heap, i64 %i.mh ; 2 uses
  store i64 %i.mf, ptr %i.mk, align 8, !tbaa !30
  store i64 %i.mi, ptr @test_heap_used, align 8, !tbaa !30
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 8
  br label %.loopexit.i2362

bb.aw:                                            ; preds = %bb.at
  br i1 %i.mj, label %tg3__parse_buffer.exit, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.mm = getelementptr inbounds i8, ptr %.pre.i2352, i64 -8
  %i.mn = load i64, ptr %i.mm, align 8, !tbaa !30
  %i.mo = getelementptr inbounds nuw i8, ptr @test_heap, i64 %i.mh ; 2 uses
  store i64 %i.mf, ptr %i.mo, align 8, !tbaa !30
  store i64 %i.mi, ptr @test_heap_used, align 8, !tbaa !30
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 8 ; 9 uses
  %i.mq = call i64 @llvm.umin.i64(i64 %i.mn, i64 %i.mf) ; 11 uses
  %.not27.i.i2356 = icmp eq i64 %i.mq, 0
  br i1 %.not27.i.i2356, label %.loopexit.i2362, label %iter.check3989

iter.check3989:                                   ; preds = %bb.ax
  %min.iters.check3976.a = icmp samesign ult i64 %i.mq, 4
  br i1 %min.iters.check3976.a, label %.lr.ph.i.i2357.preheader, label %vector.memcheck3973

vector.memcheck3973:                              ; preds = %iter.check3989
  %i.mr = add i64 %i.mh, add (i64 ptrtoaddr (ptr @test_heap to i64), i64 8)
  %i.ms = sub i64 %.pre.i23523974, %i.mr
  %diff.check3975.a = icmp ugt i64 %i.ms, -32
  br i1 %diff.check3975.a, label %.lr.ph.i.i2357.preheader, label %vector.main.loop.iter.check3977.a

vector.main.loop.iter.check3977.a:                ; preds = %vector.memcheck3973
  %min.iters.check3978.a = icmp samesign ult i64 %i.mq, 32
  br i1 %min.iters.check3978.a, label %vec.epilog.ph3993, label %vector.ph3979.a

vector.ph3979.a:                                  ; preds = %vector.main.loop.iter.check3977.a
  %i.mt = and i64 %i.mq, 28
  %n.vec3980.a = and i64 %i.mq, 137438953440      ; 4 uses
  br label %vector.body3981.a

vector.body3981.a:                                ; preds = %vector.body3981.a, %vector.ph3979.a
  %index3982.a = phi i64 [ 0, %vector.ph3979.a ], [ %index.next3985, %vector.body3981.a ] ; 3 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %.pre.i2352, i64 %index3982.a ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 16
  %wide.load3983 = load <16 x i8>, ptr %i.mu, align 1, !tbaa !37
  %wide.load3984.a = load <16 x i8>, ptr %i.mv, align 1, !tbaa !37
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mp, i64 %index3982.a ; 2 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 16
  store <16 x i8> %wide.load3983, ptr %i.mw, align 1, !tbaa !37
  store <16 x i8> %wide.load3984.a, ptr %i.mx, align 1, !tbaa !37
  %index.next3985 = add nuw i64 %index3982.a, 32  ; 2 uses
  %i.my = icmp eq i64 %index.next3985, %n.vec3980.a
  br i1 %i.my, label %middle.block3986, label %vector.body3981.a, !llvm.loop !413

middle.block3986:                                 ; preds = %vector.body3981.a
  %cmp.n3987 = icmp eq i64 %i.mq, %n.vec3980.a
  br i1 %cmp.n3987, label %.loopexit.loopexit.i2360, label %vec.epilog.iter.check3991

vec.epilog.iter.check3991:                        ; preds = %middle.block3986
  %min.epilog.iters.check3992 = icmp eq i64 %i.mt, 0
  br i1 %min.epilog.iters.check3992, label %.lr.ph.i.i2357.preheader, label %vec.epilog.ph3993, !prof !46

vec.epilog.ph3993:                                ; preds = %vector.main.loop.iter.check3977.a, %vec.epilog.iter.check3991
  %vec.epilog.resume.val3988 = phi i64 [ %n.vec3980.a, %vec.epilog.iter.check3991 ], [ 0, %vector.main.loop.iter.check3977.a ]
  %n.vec3994 = and i64 %i.mq, 137438953468        ; 3 uses
  br label %vec.epilog.vector.body3995

vec.epilog.vector.body3995:                       ; preds = %vec.epilog.vector.body3995, %vec.epilog.ph3993
  %index3996 = phi i64 [ %vec.epilog.resume.val3988, %vec.epilog.ph3993 ], [ %index.next3998, %vec.epilog.vector.body3995 ] ; 3 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %.pre.i2352, i64 %index3996
  %wide.load3997 = load <4 x i8>, ptr %i.mz, align 1, !tbaa !37
  %i.na = getelementptr inbounds nuw i8, ptr %i.mp, i64 %index3996
  store <4 x i8> %wide.load3997, ptr %i.na, align 1, !tbaa !37
  %index.next3998 = add nuw i64 %index3996, 4     ; 2 uses
  %i.nb = icmp eq i64 %index.next3998, %n.vec3994
  br i1 %i.nb, label %vec.epilog.middle.block3999, label %vec.epilog.vector.body3995, !llvm.loop !414

vec.epilog.middle.block3999:                      ; preds = %vec.epilog.vector.body3995
  %cmp.n4000 = icmp eq i64 %i.mq, %n.vec3994
  br i1 %cmp.n4000, label %.loopexit.loopexit.i2360, label %.lr.ph.i.i2357.preheader

.lr.ph.i.i2357.preheader:                         ; preds = %vector.memcheck3973, %iter.check3989, %vec.epilog.iter.check3991, %vec.epilog.middle.block3999
  %.026.i.i2358.ph = phi i64 [ 0, %iter.check3989 ], [ 0, %vector.memcheck3973 ], [ %n.vec3980.a, %vec.epilog.iter.check3991 ], [ %n.vec3994, %vec.epilog.middle.block3999 ] ; 3 uses
  %xtraiter4676.a = and i64 %i.mq, 3              ; 2 uses
  %lcmp.mod4677.not.a = icmp eq i64 %xtraiter4676.a, 0
  br i1 %lcmp.mod4677.not.a, label %.lr.ph.i.i2357.prol.loopexit, label %.lr.ph.i.i2357.prol

.lr.ph.i.i2357.prol:                              ; preds = %.lr.ph.i.i2357.preheader, %.lr.ph.i.i2357.prol
  %.026.i.i2358.prol = phi i64 [ %i.nf, %.lr.ph.i.i2357.prol ], [ %.026.i.i2358.ph, %.lr.ph.i.i2357.preheader ] ; 3 uses
  %prol.iter4678.a = phi i64 [ %prol.iter4678.next.a, %.lr.ph.i.i2357.prol ], [ 0, %.lr.ph.i.i2357.preheader ]
  %i.nc = getelementptr inbounds nuw i8, ptr %.pre.i2352, i64 %.026.i.i2358.prol
  %i.nd = load i8, ptr %i.nc, align 1, !tbaa !37
  %i.ne = getelementptr inbounds nuw i8, ptr %i.mp, i64 %.026.i.i2358.prol
  store i8 %i.nd, ptr %i.ne, align 1, !tbaa !37
  %i.nf = add nuw nsw i64 %.026.i.i2358.prol, 1   ; 2 uses
  %prol.iter4678.next.a = add i64 %prol.iter4678.a, 1 ; 2 uses
  %prol.iter4678.cmp.not.a = icmp eq i64 %prol.iter4678.next.a, %xtraiter4676.a
  br i1 %prol.iter4678.cmp.not.a, label %.lr.ph.i.i2357.prol.loopexit, label %.lr.ph.i.i2357.prol, !llvm.loop !415

.lr.ph.i.i2357.prol.loopexit:                     ; preds = %.lr.ph.i.i2357.prol, %.lr.ph.i.i2357.preheader
  %.026.i.i2358.unr = phi i64 [ %.026.i.i2358.ph, %.lr.ph.i.i2357.preheader ], [ %i.nf, %.lr.ph.i.i2357.prol ]
  %i.ng = sub nsw i64 %.026.i.i2358.ph, %i.mq
  %i.nh = icmp ugt i64 %i.ng, -4
  br i1 %i.nh, label %.loopexit.loopexit.i2360, label %.lr.ph.i.i2357

.lr.ph.i.i2357:                                   ; preds = %.lr.ph.i.i2357.prol.loopexit, %.lr.ph.i.i2357
  %.026.i.i2358 = phi i64 [ %i.nx, %.lr.ph.i.i2357 ], [ %.026.i.i2358.unr, %.lr.ph.i.i2357.prol.loopexit ] ; 6 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %.pre.i2352, i64 %.026.i.i2358
  %i.nj = load i8, ptr %i.ni, align 1, !tbaa !37
  %i.nk = getelementptr inbounds nuw i8, ptr %i.mp, i64 %.026.i.i2358
  store i8 %i.nj, ptr %i.nk, align 1, !tbaa !37
  %i.nl = add nuw nsw i64 %.026.i.i2358, 1        ; 2 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %.pre.i2352, i64 %i.nl
  %i.nn = load i8, ptr %i.nm, align 1, !tbaa !37
  %i.no = getelementptr inbounds nuw i8, ptr %i.mp, i64 %i.nl
  store i8 %i.nn, ptr %i.no, align 1, !tbaa !37
  %i.np = add nuw nsw i64 %.026.i.i2358, 2        ; 2 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %.pre.i2352, i64 %i.np
  %i.nr = load i8, ptr %i.nq, align 1, !tbaa !37
  %i.ns = getelementptr inbounds nuw i8, ptr %i.mp, i64 %i.np
  store i8 %i.nr, ptr %i.ns, align 1, !tbaa !37
  %i.nt = add nuw nsw i64 %.026.i.i2358, 3        ; 2 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %.pre.i2352, i64 %i.nt
  %i.nv = load i8, ptr %i.nu, align 1, !tbaa !37
  %i.nw = getelementptr inbounds nuw i8, ptr %i.mp, i64 %i.nt
  store i8 %i.nv, ptr %i.nw, align 1, !tbaa !37
  %i.nx = add nuw nsw i64 %.026.i.i2358, 4        ; 2 uses
  %exitcond.not.i.i2359.3 = icmp eq i64 %i.nx, %i.mq
  br i1 %exitcond.not.i.i2359.3, label %.loopexit.loopexit.i2360, label %.lr.ph.i.i2357, !llvm.loop !416

.loopexit.loopexit.i2360:                         ; preds = %.lr.ph.i.i2357.prol.loopexit, %.lr.ph.i.i2357, %vec.epilog.middle.block3999, %middle.block3986
  %.pre33.pre.i2361 = load i32, ptr %i.lz, align 8, !tbaa !68
  br label %.loopexit.i2362

.loopexit.i2362:                                  ; preds = %.loopexit.loopexit.i2360, %bb.ax, %bb.av
  %.pre33.i2363 = phi i32 [ %i.ma, %bb.av ], [ %i.ma, %bb.ax ], [ %.pre33.pre.i2361, %.loopexit.loopexit.i2360 ]
  %.018.i.ph.i2364 = phi ptr [ %i.ml, %bb.av ], [ %i.mp, %bb.ax ], [ %i.mp, %.loopexit.loopexit.i2360 ] ; 2 uses
  store ptr %.018.i.ph.i2364, ptr %i.ly, align 8, !tbaa !69
  store i32 %spec.select.i2354, ptr %i.mb, align 4, !tbaa !122
  br label %bb.ay

bb.ay:                                            ; preds = %.loopexit.i2362, %bb.as
  %i.ny = phi i32 [ %.pre33.i2363, %.loopexit.i2362 ], [ %i.ma, %bb.as ] ; 2 uses
  %i.nz = phi ptr [ %.018.i.ph.i2364, %.loopexit.i2362 ], [ %.pre.i2352, %bb.as ]
  %i.oa = add i32 %i.ny, 1
  store i32 %i.oa, ptr %i.lz, align 8, !tbaa !68
  %i.ob = zext i32 %i.ny to i64
  %i.oc = getelementptr inbounds nuw [32 x i8], ptr %i.nz, i64 %i.ob ; 5 uses
  store i32 2, ptr %i.oc, align 8, !tbaa !124
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 4
  store i32 50, ptr %i.od, align 4, !tbaa !125
  %i.oe = getelementptr inbounds nuw i8, ptr %i.oc, i64 8
  store ptr @.str.70, ptr %i.oe, align 8, !tbaa !126
  %i.of = getelementptr inbounds nuw i8, ptr %i.oc, i64 16
  store ptr null, ptr %i.of, align 8, !tbaa !127
  %i.og = getelementptr inbounds nuw i8, ptr %i.oc, i64 24
  store i64 -1, ptr %i.og, align 8, !tbaa !128
  %i.oh = getelementptr inbounds nuw i8, ptr %i.ly, i64 16
  store i32 1, ptr %i.oh, align 8, !tbaa !67
  br label %tg3__parse_buffer.exit

bb.az:                                            ; preds = %tg3__arena_alloc.exit.i
  br i1 %i.lx, label %iter.check4022, label %tg3__error_push.exit.i

iter.check4022:                                   ; preds = %bb.az
  %i.oi = load ptr, ptr %i.gt, align 8, !tbaa !165 ; 6 uses
  %min.iters.check4005 = icmp ult i64 %i.hg, 4
  %i.oj = ptrtoaddr ptr %i.oi to i64
  %i.ok = sub i64 %i.oj, %.020.i.i4003
  %diff.check4004 = icmp ugt i64 %i.ok, -32
  %or.cond = select i1 %min.iters.check4005, i1 true, i1 %diff.check4004
  br i1 %or.cond, label %.lr.ph.i.i957.preheader, label %vector.main.loop.iter.check4006

vector.main.loop.iter.check4006:                  ; preds = %iter.check4022
  %min.iters.check4007 = icmp ult i64 %i.hg, 32
  br i1 %min.iters.check4007, label %vec.epilog.ph4026, label %vector.ph4008

vector.ph4008:                                    ; preds = %vector.main.loop.iter.check4006
  %i.ol = and i64 %i.hg, 28
  %n.vec4009 = and i64 %i.hg, -32                 ; 5 uses
  %i.om = getelementptr i8, ptr %i.oi, i64 %n.vec4009
  %i.on = getelementptr i8, ptr %.020.i.i, i64 %n.vec4009
  %i.oo = and i64 %i.hg, 31
  br label %vector.body4010

vector.body4010:                                  ; preds = %vector.body4010, %vector.ph4008
  %index4011 = phi i64 [ 0, %vector.ph4008 ], [ %index.next4015, %vector.body4010 ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.oi, i64 %index4011 ; 2 uses
  %next.gep4012 = getelementptr i8, ptr %.020.i.i, i64 %index4011 ; 2 uses
  %i.op = getelementptr i8, ptr %next.gep, i64 16
  %wide.load4013 = load <16 x i8>, ptr %next.gep, align 1, !tbaa !37
  %wide.load4014 = load <16 x i8>, ptr %i.op, align 1, !tbaa !37
  %i.oq = getelementptr i8, ptr %next.gep4012, i64 16
  store <16 x i8> %wide.load4013, ptr %next.gep4012, align 1, !tbaa !37
  store <16 x i8> %wide.load4014, ptr %i.oq, align 1, !tbaa !37
  %index.next4015 = add nuw i64 %index4011, 32    ; 2 uses
  %i.or = icmp eq i64 %index.next4015, %n.vec4009
  br i1 %i.or, label %middle.block4016, label %vector.body4010, !llvm.loop !417

middle.block4016:                                 ; preds = %vector.body4010
  %cmp.n4017 = icmp eq i64 %i.hg, %n.vec4009
  br i1 %cmp.n4017, label %tg3__error_push.exit.i, label %vec.epilog.iter.check4024

vec.epilog.iter.check4024:                        ; preds = %middle.block4016
  %min.epilog.iters.check4025 = icmp eq i64 %i.ol, 0
  br i1 %min.epilog.iters.check4025, label %.lr.ph.i.i957.preheader, label %vec.epilog.ph4026, !prof !46

vec.epilog.ph4026:                                ; preds = %vector.main.loop.iter.check4006, %vec.epilog.iter.check4024
  %vec.epilog.resume.val4018 = phi i64 [ %n.vec4009, %vec.epilog.iter.check4024 ], [ 0, %vector.main.loop.iter.check4006 ]
  %n.vec4027 = and i64 %i.hg, -4                  ; 4 uses
  %i.os = getelementptr i8, ptr %i.oi, i64 %n.vec4027
  %i.ot = getelementptr i8, ptr %.020.i.i, i64 %n.vec4027
  %i.ou = and i64 %i.hg, 3
  br label %vec.epilog.vector.body4028

vec.epilog.vector.body4028:                       ; preds = %vec.epilog.vector.body4028, %vec.epilog.ph4026
  %index4029 = phi i64 [ %vec.epilog.resume.val4018, %vec.epilog.ph4026 ], [ %index.next4033, %vec.epilog.vector.body4028 ] ; 3 uses
  %next.gep4030 = getelementptr i8, ptr %i.oi, i64 %index4029
  %next.gep4031 = getelementptr i8, ptr %.020.i.i, i64 %index4029
  %wide.load4032 = load <4 x i8>, ptr %next.gep4030, align 1, !tbaa !37
  store <4 x i8> %wide.load4032, ptr %next.gep4031, align 1, !tbaa !37
  %index.next4033 = add nuw i64 %index4029, 4     ; 2 uses
  %i.ov = icmp eq i64 %index.next4033, %n.vec4027
  br i1 %i.ov, label %vec.epilog.middle.block4034, label %vec.epilog.vector.body4028, !llvm.loop !418

vec.epilog.middle.block4034:                      ; preds = %vec.epilog.vector.body4028
  %cmp.n4035 = icmp eq i64 %i.hg, %n.vec4027
  br i1 %cmp.n4035, label %tg3__error_push.exit.i, label %.lr.ph.i.i957.preheader

.lr.ph.i.i957.preheader:                          ; preds = %iter.check4022, %vec.epilog.iter.check4024, %vec.epilog.middle.block4034
  %.010.i.i.ph = phi ptr [ %i.oi, %iter.check4022 ], [ %i.om, %vec.epilog.iter.check4024 ], [ %i.os, %vec.epilog.middle.block4034 ] ; 2 uses
  %.059.i.i.ph = phi ptr [ %.020.i.i, %iter.check4022 ], [ %i.on, %vec.epilog.iter.check4024 ], [ %i.ot, %vec.epilog.middle.block4034 ] ; 2 uses
  %.068.i.i.ph = phi i64 [ %i.hg, %iter.check4022 ], [ %i.oo, %vec.epilog.iter.check4024 ], [ %i.ou, %vec.epilog.middle.block4034 ] ; 4 uses
  %i.ow = add i64 %.068.i.i.ph, -1
  %xtraiter4673 = and i64 %.068.i.i.ph, 7         ; 2 uses
  %lcmp.mod4674.not = icmp eq i64 %xtraiter4673, 0
  br i1 %lcmp.mod4674.not, label %.lr.ph.i.i957.prol.loopexit, label %.lr.ph.i.i957.prol

.lr.ph.i.i957.prol:                               ; preds = %.lr.ph.i.i957.preheader, %.lr.ph.i.i957.prol
  %.010.i.i.prol = phi ptr [ %i.oy, %.lr.ph.i.i957.prol ], [ %.010.i.i.ph, %.lr.ph.i.i957.preheader ] ; 2 uses
  %.059.i.i.prol = phi ptr [ %i.pa, %.lr.ph.i.i957.prol ], [ %.059.i.i.ph, %.lr.ph.i.i957.preheader ] ; 2 uses
  %.068.i.i.prol = phi i64 [ %i.ox, %.lr.ph.i.i957.prol ], [ %.068.i.i.ph, %.lr.ph.i.i957.preheader ]
  %prol.iter4675 = phi i64 [ %prol.iter4675.next, %.lr.ph.i.i957.prol ], [ 0, %.lr.ph.i.i957.preheader ]
  %i.ox = add i64 %.068.i.i.prol, -1              ; 2 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %.010.i.i.prol, i64 1 ; 2 uses
  %i.oz = load i8, ptr %.010.i.i.prol, align 1, !tbaa !37
  %i.pa = getelementptr inbounds nuw i8, ptr %.059.i.i.prol, i64 1 ; 2 uses
  store i8 %i.oz, ptr %.059.i.i.prol, align 1, !tbaa !37
  %prol.iter4675.next = add i64 %prol.iter4675, 1 ; 2 uses
  %prol.iter4675.cmp.not = icmp eq i64 %prol.iter4675.next, %xtraiter4673
  br i1 %prol.iter4675.cmp.not, label %.lr.ph.i.i957.prol.loopexit, label %.lr.ph.i.i957.prol, !llvm.loop !419

.lr.ph.i.i957.prol.loopexit:                      ; preds = %.lr.ph.i.i957.prol, %.lr.ph.i.i957.preheader
  %.010.i.i.unr = phi ptr [ %.010.i.i.ph, %.lr.ph.i.i957.preheader ], [ %i.oy, %.lr.ph.i.i957.prol ]
  %.059.i.i.unr = phi ptr [ %.059.i.i.ph, %.lr.ph.i.i957.preheader ], [ %i.pa, %.lr.ph.i.i957.prol ]
  %.068.i.i.unr = phi i64 [ %.068.i.i.ph, %.lr.ph.i.i957.preheader ], [ %i.ox, %.lr.ph.i.i957.prol ]
  %i.pb = icmp ult i64 %i.ow, 7
  br i1 %i.pb, label %tg3__error_push.exit.i, label %.lr.ph.i.i957

.lr.ph.i.i957:                                    ; preds = %.lr.ph.i.i957.prol.loopexit, %.lr.ph.i.i957
  %.010.i.i = phi ptr [ %i.py, %.lr.ph.i.i957 ], [ %.010.i.i.unr, %.lr.ph.i.i957.prol.loopexit ] ; 9 uses
  %.059.i.i = phi ptr [ %i.qa, %.lr.ph.i.i957 ], [ %.059.i.i.unr, %.lr.ph.i.i957.prol.loopexit ] ; 9 uses
  %.068.i.i = phi i64 [ %i.px, %.lr.ph.i.i957 ], [ %.068.i.i.unr, %.lr.ph.i.i957.prol.loopexit ]
  %i.pc = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 1
  %i.pd = load i8, ptr %.010.i.i, align 1, !tbaa !37
  %i.pe = getelementptr inbounds nuw i8, ptr %.059.i.i, i64 1
  store i8 %i.pd, ptr %.059.i.i, align 1, !tbaa !37
  %i.pf = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 2
  %i.pg = load i8, ptr %i.pc, align 1, !tbaa !37
  %i.ph = getelementptr inbounds nuw i8, ptr %.059.i.i, i64 2
  store i8 %i.pg, ptr %i.pe, align 1, !tbaa !37
  %i.pi = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 3
  %i.pj = load i8, ptr %i.pf, align 1, !tbaa !37
  %i.pk = getelementptr inbounds nuw i8, ptr %.059.i.i, i64 3
  store i8 %i.pj, ptr %i.ph, align 1, !tbaa !37
  %i.pl = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4
  %i.pm = load i8, ptr %i.pi, align 1, !tbaa !37
  %i.pn = getelementptr inbounds nuw i8, ptr %.059.i.i, i64 4
  store i8 %i.pm, ptr %i.pk, align 1, !tbaa !37
  %i.po = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 5
  %i.pp = load i8, ptr %i.pl, align 1, !tbaa !37
  %i.pq = getelementptr inbounds nuw i8, ptr %.059.i.i, i64 5
  store i8 %i.pp, ptr %i.pn, align 1, !tbaa !37
  %i.pr = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 6
  %i.ps = load i8, ptr %i.po, align 1, !tbaa !37
  %i.pt = getelementptr inbounds nuw i8, ptr %.059.i.i, i64 6
  store i8 %i.ps, ptr %i.pq, align 1, !tbaa !37
  %i.pu = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 7
  %i.pv = load i8, ptr %i.pr, align 1, !tbaa !37
  %i.pw = getelementptr inbounds nuw i8, ptr %.059.i.i, i64 7
  store i8 %i.pv, ptr %i.pt, align 1, !tbaa !37
  %i.px = add i64 %.068.i.i, -8                   ; 2 uses
  %i.py = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 8
  %i.pz = load i8, ptr %i.pu, align 1, !tbaa !37
  %i.qa = getelementptr inbounds nuw i8, ptr %.059.i.i, i64 8
  store i8 %i.pz, ptr %i.pw, align 1, !tbaa !37
  %.not.i101.i.7 = icmp eq i64 %i.px, 0
  br i1 %.not.i101.i.7, label %tg3__error_push.exit.i, label %.lr.ph.i.i957, !llvm.loop !420

tg3__error_push.exit.i:                           ; preds = %.lr.ph.i.i957.prol.loopexit, %.lr.ph.i.i957, %middle.block4016, %vec.epilog.middle.block4034, %bb.az
  %i.qb = getelementptr inbounds nuw i8, ptr %i.he, i64 24
  store ptr %.020.i.i, ptr %i.qb, align 8, !tbaa !167
  %i.qc = getelementptr inbounds nuw i8, ptr %i.he, i64 32
  store i64 %i.hg, ptr %i.qc, align 8, !tbaa !168
  br label %bb.ef

bb.ba:                                            ; preds = %bb.v
  br i1 %i.ho, label %bb.ef, label %.thread.i

.thread.i:                                        ; preds = %bb.ba, %bb.w
  %i.qd = load ptr, ptr %i.hf, align 8, !tbaa !169 ; 28 uses
  %i.qe = ptrtoaddr ptr %i.qd to i64
  %i.qf = icmp ne ptr %i.qd, null
  %i.qg = icmp ugt i32 %i.hn, 4
  %or.cond.i103.i = and i1 %i.qg, %i.qf
  br i1 %or.cond.i103.i, label %.preheader.i.i952, label %tg3_is_data_uri.exit.thread.i

.preheader.i.i952:                                ; preds = %.thread.i
  %i.qh = load i8, ptr %i.qd, align 1, !tbaa !37
  %.not14.i.i.i954 = icmp eq i8 %i.qh, 100
  br i1 %.not14.i.i.i954, label %.preheader.i.i952.1, label %tg3_is_data_uri.exit.thread.i

.preheader.i.i952.1:                              ; preds = %.preheader.i.i952
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qd, i64 1
  %i.qj = load i8, ptr %i.qi, align 1, !tbaa !37
  %.not14.i.i.i954.1 = icmp eq i8 %i.qj, 97
  br i1 %.not14.i.i.i954.1, label %.preheader.i.i952.2, label %tg3_is_data_uri.exit.thread.i

.preheader.i.i952.2:                              ; preds = %.preheader.i.i952.1
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qd, i64 2
  %i.ql = load i8, ptr %i.qk, align 1, !tbaa !37
  %.not14.i.i.i954.2 = icmp eq i8 %i.ql, 116
  br i1 %.not14.i.i.i954.2, label %.preheader.i.i952.3, label %tg3_is_data_uri.exit.thread.i

.preheader.i.i952.3:                              ; preds = %.preheader.i.i952.2
  %i.qm = getelementptr inbounds nuw i8, ptr %i.qd, i64 3
  %i.qn = load i8, ptr %i.qm, align 1, !tbaa !37
  %.not14.i.i.i954.3 = icmp eq i8 %i.qn, 97
  br i1 %.not14.i.i.i954.3, label %.preheader.i.i952.4, label %tg3_is_data_uri.exit.thread.i

.preheader.i.i952.4:                              ; preds = %.preheader.i.i952.3
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qd, i64 4
  %i.qp = load i8, ptr %i.qo, align 1, !tbaa !37
  %.not14.i.i.i954.4 = icmp eq i8 %i.qp, 58
  br i1 %.not14.i.i.i954.4, label %tg3__memset.exit108.i, label %tg3_is_data_uri.exit.thread.i

tg3__memset.exit108.i:                            ; preds = %.preheader.i.i952.4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #20
  %i.qq = load ptr, ptr %0, align 8, !tbaa !144   ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  %i.qr = load i8, ptr %i.qd, align 1, !tbaa !37
  %.not14.i.i.i.i = icmp eq i8 %i.qr, 100
  br i1 %.not14.i.i.i.i, label %.preheader53.1.i.i.i, label %tg3__decode_data_uri.exit.i

.preheader53.1.i.i.i:                             ; preds = %tg3__memset.exit108.i
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qd, i64 1
  %i.qt = load i8, ptr %i.qs, align 1, !tbaa !37
  %.not14.i.1.i.i.i = icmp eq i8 %i.qt, 97
  br i1 %.not14.i.1.i.i.i, label %.preheader53.2.i.i.i, label %tg3__decode_data_uri.exit.i

.preheader53.2.i.i.i:                             ; preds = %.preheader53.1.i.i.i
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qd, i64 2
  %i.qv = load i8, ptr %i.qu, align 1, !tbaa !37
  %.not14.i.2.i.i.i = icmp eq i8 %i.qv, 116
  br i1 %.not14.i.2.i.i.i, label %.preheader53.3.i.i.i, label %tg3__decode_data_uri.exit.i

.preheader53.3.i.i.i:                             ; preds = %.preheader53.2.i.i.i
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qd, i64 3
  %i.qx = load i8, ptr %i.qw, align 1, !tbaa !37
  %.not14.i.3.i.i.i = icmp eq i8 %i.qx, 97
  br i1 %.not14.i.3.i.i.i, label %.preheader53.4.i.i.i, label %tg3__decode_data_uri.exit.i

.preheader53.4.i.i.i:                             ; preds = %.preheader53.3.i.i.i
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qd, i64 4
  %i.qz = load i8, ptr %i.qy, align 1, !tbaa !37
  %.not14.i.4.i.i.i = icmp eq i8 %i.qz, 58
  br i1 %.not14.i.4.i.i.i, label %tg3__memcmp.exit.thread.i.i.i, label %tg3__decode_data_uri.exit.i

tg3__memcmp.exit.thread.i.i.i:                    ; preds = %.preheader53.4.i.i.i
  %.ptr51.i.i.i = getelementptr i8, ptr %i.qd, i64 5 ; 7 uses
  %i.ra = zext i32 %i.hn to i64                   ; 3 uses
  %i.rb = icmp ugt i32 %i.hn, 5
  br i1 %i.rb, label %.lr.ph.i.i110.i, label %tg3__decode_data_uri.exit.i

.lr.ph.i.i110.i:                                  ; preds = %tg3__memcmp.exit.thread.i.i.i, %bb.bb
  %.0.ptr59.i.i.i = phi ptr [ %.0.ptr.i.i.i, %bb.bb ], [ %.ptr51.i.i.i, %tg3__memcmp.exit.thread.i.i.i ] ; 10 uses
  %.0.idx58.i.i.i = phi i64 [ %.0.add.i.i.i, %bb.bb ], [ 5, %tg3__memcmp.exit.thread.i.i.i ] ; 4 uses
  %i.rc = load i8, ptr %.0.ptr59.i.i.i, align 1, !tbaa !37
  %.not36.i.i.i = icmp eq i8 %i.rc, 59
  br i1 %.not36.i.i.i, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %.lr.ph.i.i110.i
  %.0.add.i.i.i = add nuw nsw i64 %.0.idx58.i.i.i, 1 ; 3 uses
  %.0.ptr.i.i.i = getelementptr inbounds nuw i8, ptr %i.qd, i64 %.0.add.i.i.i
  %exitcond.not.i.i111.i = icmp eq i64 %.0.add.i.i.i, %i.ra
  br i1 %exitcond.not.i.i111.i, label %tg3__decode_data_uri.exit.i, label %.lr.ph.i.i110.i, !llvm.loop !421

bb.bc:                                            ; preds = %.lr.ph.i.i110.i
  %i.rd = ptrtoint ptr %.0.ptr59.i.i.i to i64
  %i.re = ptrtoint ptr %.ptr51.i.i.i to i64
  %i.rf = sub i64 %i.rd, %i.re                    ; 5 uses
  %spec.store.select.i.i.i = call i64 @llvm.umin.i64(i64 %i.rf, i64 63) ; 7 uses
  %.not7.i.i.i.i = icmp eq i64 %.0.idx58.i.i.i, 5
  br i1 %.not7.i.i.i.i, label %tg3__memcpy.exit.i.i.i, label %iter.check4120

iter.check4120:                                   ; preds = %bb.bc
  %min.iters.check4103 = icmp ult i64 %i.rf, 4
  br i1 %min.iters.check4103, label %.lr.ph.i.i.i.i.preheader, label %vector.main.loop.iter.check4104

vector.main.loop.iter.check4104:                  ; preds = %iter.check4120
  %min.iters.check4105 = icmp ult i64 %i.rf, 16
  br i1 %min.iters.check4105, label %vec.epilog.ph4124, label %vector.ph4106

vector.ph4106:                                    ; preds = %vector.main.loop.iter.check4104
  %i.rg = and i64 %spec.store.select.i.i.i, 12
  %n.vec4107 = and i64 %spec.store.select.i.i.i, 48 ; 5 uses
  %i.rh = getelementptr i8, ptr %.ptr51.i.i.i, i64 %n.vec4107
  %i.ri = getelementptr i8, ptr %i.gr, i64 %n.vec4107
  %i.rj = and i64 %spec.store.select.i.i.i, 15
  br label %vector.body4108

vector.body4108:                                  ; preds = %vector.body4108, %vector.ph4106
  %index4109 = phi i64 [ 0, %vector.ph4106 ], [ %index.next4113, %vector.body4108 ] ; 3 uses
  %next.gep4110 = getelementptr i8, ptr %.ptr51.i.i.i, i64 %index4109
  %next.gep4111 = getelementptr i8, ptr %i.gr, i64 %index4109
  %wide.load4112 = load <16 x i8>, ptr %next.gep4110, align 1, !tbaa !37
  store <16 x i8> %wide.load4112, ptr %next.gep4111, align 8, !tbaa !37
  %index.next4113 = add nuw i64 %index4109, 16    ; 2 uses
  %i.rk = icmp eq i64 %index.next4113, %n.vec4107
  br i1 %i.rk, label %middle.block4114, label %vector.body4108, !llvm.loop !422

middle.block4114:                                 ; preds = %vector.body4108
  %cmp.n4115 = icmp eq i64 %i.rf, %n.vec4107
  br i1 %cmp.n4115, label %tg3__memcpy.exit.i.i.i, label %vec.epilog.iter.check4122

vec.epilog.iter.check4122:                        ; preds = %middle.block4114
  %min.epilog.iters.check4123 = icmp eq i64 %i.rg, 0
  br i1 %min.epilog.iters.check4123, label %.lr.ph.i.i.i.i.preheader, label %vec.epilog.ph4124, !prof !543

vec.epilog.ph4124:                                ; preds = %vector.main.loop.iter.check4104, %vec.epilog.iter.check4122
  %vec.epilog.resume.val4116 = phi i64 [ %n.vec4107, %vec.epilog.iter.check4122 ], [ 0, %vector.main.loop.iter.check4104 ]
  %n.vec4125 = and i64 %spec.store.select.i.i.i, 60 ; 4 uses
  %i.rl = getelementptr i8, ptr %.ptr51.i.i.i, i64 %n.vec4125
  %i.rm = getelementptr i8, ptr %i.gr, i64 %n.vec4125
  %i.rn = and i64 %spec.store.select.i.i.i, 3
  br label %vec.epilog.vector.body4126

vec.epilog.vector.body4126:                       ; preds = %vec.epilog.vector.body4126, %vec.epilog.ph4124
  %index4127 = phi i64 [ %vec.epilog.resume.val4116, %vec.epilog.ph4124 ], [ %index.next4131, %vec.epilog.vector.body4126 ] ; 3 uses
  %next.gep4128 = getelementptr i8, ptr %.ptr51.i.i.i, i64 %index4127
  %next.gep4129 = getelementptr i8, ptr %i.gr, i64 %index4127
  %wide.load4130 = load <4 x i8>, ptr %next.gep4128, align 1, !tbaa !37
  store <4 x i8> %wide.load4130, ptr %next.gep4129, align 4, !tbaa !37
  %index.next4131 = add nuw i64 %index4127, 4     ; 2 uses
  %i.ro = icmp eq i64 %index.next4131, %n.vec4125
  br i1 %i.ro, label %vec.epilog.middle.block4132, label %vec.epilog.vector.body4126, !llvm.loop !423

vec.epilog.middle.block4132:                      ; preds = %vec.epilog.vector.body4126
  %cmp.n4133 = icmp eq i64 %i.rf, %n.vec4125
  br i1 %cmp.n4133, label %tg3__memcpy.exit.i.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %iter.check4120, %vec.epilog.iter.check4122, %vec.epilog.middle.block4132
  %.010.i.i.i.i.ph = phi ptr [ %.ptr51.i.i.i, %iter.check4120 ], [ %i.rh, %vec.epilog.iter.check4122 ], [ %i.rl, %vec.epilog.middle.block4132 ]
  %.059.i.i.i.i.ph = phi ptr [ %i.gr, %iter.check4120 ], [ %i.ri, %vec.epilog.iter.check4122 ], [ %i.rm, %vec.epilog.middle.block4132 ]
  %.068.i.i.i.i.ph = phi i64 [ %spec.store.select.i.i.i, %iter.check4120 ], [ %i.rj, %vec.epilog.iter.check4122 ], [ %i.rn, %vec.epilog.middle.block4132 ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %.010.i.i.i.i = phi ptr [ %i.rq, %.lr.ph.i.i.i.i ], [ %.010.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %.059.i.i.i.i = phi ptr [ %i.rs, %.lr.ph.i.i.i.i ], [ %.059.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %.068.i.i.i.i = phi i64 [ %i.rp, %.lr.ph.i.i.i.i ], [ %.068.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ]
  %i.rp = add i64 %.068.i.i.i.i, -1               ; 2 uses
  %i.rq = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 1
  %i.rr = load i8, ptr %.010.i.i.i.i, align 1, !tbaa !37
  %i.rs = getelementptr inbounds nuw i8, ptr %.059.i.i.i.i, i64 1
  store i8 %i.rr, ptr %.059.i.i.i.i, align 1, !tbaa !37
  %.not.i39.i.i.i = icmp eq i64 %i.rp, 0
  br i1 %.not.i39.i.i.i, label %tg3__memcpy.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !424

tg3__memcpy.exit.i.i.i:                           ; preds = %.lr.ph.i.i.i.i, %middle.block4114, %vec.epilog.middle.block4132, %bb.bc
  %i.rt = getelementptr inbounds nuw i8, ptr %i.gr, i64 %spec.store.select.i.i.i
  store i8 0, ptr %i.rt, align 1, !tbaa !37
  %i.ru = sub nsw i64 %.0.idx58.i.i.i, %i.ra
  %i.rv = icmp ugt i64 %i.ru, -8
  br i1 %i.rv, label %tg3__decode_data_uri.exit.i, label %.preheader.preheader.i.i.i

.preheader.preheader.i.i.i:                       ; preds = %tg3__memcpy.exit.i.i.i
  %.0916.i42.i.i.i = getelementptr inbounds nuw i8, ptr %.0.ptr59.i.i.i, i64 1
  %i.rw = load i8, ptr %.0916.i42.i.i.i, align 1, !tbaa !37
  %.not14.i43.i.i.i = icmp eq i8 %i.rw, 98
  br i1 %.not14.i43.i.i.i, label %.preheader.1.i.i.i, label %tg3__decode_data_uri.exit.i

.preheader.1.i.i.i:                               ; preds = %.preheader.preheader.i.i.i
  %.0916.i42.1.i.i.i = getelementptr inbounds nuw i8, ptr %.0.ptr59.i.i.i, i64 2
  %i.rx = load i8, ptr %.0916.i42.1.i.i.i, align 1, !tbaa !37
  %.not14.i43.1.i.i.i = icmp eq i8 %i.rx, 97
  br i1 %.not14.i43.1.i.i.i, label %.preheader.2.i.i.i, label %tg3__decode_data_uri.exit.i

.preheader.2.i.i.i:                               ; preds = %.preheader.1.i.i.i
  %.0916.i42.2.i.i.i = getelementptr inbounds nuw i8, ptr %.0.ptr59.i.i.i, i64 3
  %i.ry = load i8, ptr %.0916.i42.2.i.i.i, align 1, !tbaa !37
  %.not14.i43.2.i.i.i = icmp eq i8 %i.ry, 115
  br i1 %.not14.i43.2.i.i.i, label %.preheader.3.i.i.i, label %tg3__decode_data_uri.exit.i

.preheader.3.i.i.i:                               ; preds = %.preheader.2.i.i.i
  %.0916.i42.3.i.i.i = getelementptr inbounds nuw i8, ptr %.0.ptr59.i.i.i, i64 4
  %i.rz = load i8, ptr %.0916.i42.3.i.i.i, align 1, !tbaa !37
  %.not14.i43.3.i.i.i = icmp eq i8 %i.rz, 101
  br i1 %.not14.i43.3.i.i.i, label %.preheader.4.i.i.i, label %tg3__decode_data_uri.exit.i

.preheader.4.i.i.i:                               ; preds = %.preheader.3.i.i.i
  %.0916.i42.4.i.i.i = getelementptr inbounds nuw i8, ptr %.0.ptr59.i.i.i, i64 5
  %i.sa = load i8, ptr %.0916.i42.4.i.i.i, align 1, !tbaa !37
end_hunk_1
begin_hunk_2_@tg3__parse_from_json:tg3json__strlen_fallback.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #20
  store i64 0, ptr %i.l, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #20
  %i.xw = load ptr, ptr %i.gk, align 8, !tbaa !547 ; 2 uses
  %.not.i130.i = icmp eq ptr %i.xw, null
  br i1 %.not.i130.i, label %bb.cc, label %bb.ck

bb.cc:                                            ; preds = %tg3_is_data_uri.exit.thread.i
  %i.xx = load ptr, ptr %i.gp, align 8, !tbaa !145 ; 6 uses
  %.not.i.i142.i = icmp eq ptr %i.xx, null
  br i1 %.not.i.i142.i, label %tg3__load_external_file.exit.thread.i, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xx, i64 8 ; 3 uses
  %i.xz = load i32, ptr %i.xy, align 8, !tbaa !68 ; 4 uses
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xx, i64 12 ; 2 uses
  %i.yb = load i32, ptr %i.ya, align 4, !tbaa !122 ; 3 uses
  %.not27.i.i143.i = icmp ult i32 %i.xz, %i.yb
  %.pre.i.i.i = load ptr, ptr %i.xx, align 8, !tbaa !69 ; 11 uses
  %.pre.i.i.i4138 = ptrtoaddr ptr %.pre.i.i.i to i64
  br i1 %.not27.i.i143.i, label %bb.cj, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %.not28.i.i.i = icmp eq i32 %i.yb, 0
  %i.yc = shl i32 %i.yb, 1
  %spec.select.i.i144.i = select i1 %.not28.i.i.i, i32 16, i32 %i.yc ; 2 uses
  %i.yd = zext i32 %spec.select.i.i144.i to i64
  %i.ye = shl nuw nsw i64 %i.yd, 5                ; 4 uses
  %.not.i.i.i145.i = icmp eq ptr %.pre.i.i.i, null
  %i.yf = or disjoint i64 %i.ye, 8
  %i.yg = load i64, ptr @test_heap_used, align 8, !tbaa !30 ; 4 uses
  %i.yh = add i64 %i.yg, %i.yf                    ; 3 uses
  %i.yi = icmp ugt i64 %i.yh, 524288              ; 2 uses
  br i1 %.not.i.i.i145.i, label %bb.cf, label %bb.ch

bb.cf:                                            ; preds = %bb.ce
  br i1 %i.yi, label %tg3__load_external_file.exit.thread.i, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.yj = getelementptr inbounds nuw i8, ptr @test_heap, i64 %i.yg ; 2 uses
  store i64 %i.ye, ptr %i.yj, align 8, !tbaa !30
  store i64 %i.yh, ptr @test_heap_used, align 8, !tbaa !30
  %i.yk = getelementptr inbounds nuw i8, ptr %i.yj, i64 8
  br label %.loopexit.i.i.i

bb.ch:                                            ; preds = %bb.ce
  br i1 %i.yi, label %tg3__load_external_file.exit.thread.i, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.yl = getelementptr inbounds i8, ptr %.pre.i.i.i, i64 -8
  %i.ym = load i64, ptr %i.yl, align 8, !tbaa !30
  %i.yn = getelementptr inbounds nuw i8, ptr @test_heap, i64 %i.yg ; 2 uses
  store i64 %i.ye, ptr %i.yn, align 8, !tbaa !30
  store i64 %i.yh, ptr @test_heap_used, align 8, !tbaa !30
  %i.yo = getelementptr inbounds nuw i8, ptr %i.yn, i64 8 ; 9 uses
  %i.yp = call i64 @llvm.umin.i64(i64 %i.ym, i64 %i.ye) ; 11 uses
  %.not27.i.i.i.i = icmp eq i64 %i.yp, 0
  br i1 %.not27.i.i.i.i, label %.loopexit.i.i.i, label %iter.check4153

iter.check4153:                                   ; preds = %bb.ci
  %min.iters.check4140 = icmp samesign ult i64 %i.yp, 4
  br i1 %min.iters.check4140, label %.lr.ph.i.i.i146.i.preheader, label %vector.memcheck4137

vector.memcheck4137:                              ; preds = %iter.check4153
  %i.yq = add i64 %i.yg, add (i64 ptrtoaddr (ptr @test_heap to i64), i64 8)
  %i.yr = sub i64 %.pre.i.i.i4138, %i.yq
  %diff.check4139 = icmp ugt i64 %i.yr, -32
  br i1 %diff.check4139, label %.lr.ph.i.i.i146.i.preheader, label %vector.main.loop.iter.check4141

vector.main.loop.iter.check4141:                  ; preds = %vector.memcheck4137
  %min.iters.check4142 = icmp samesign ult i64 %i.yp, 32
  br i1 %min.iters.check4142, label %vec.epilog.ph4157, label %vector.ph4143

vector.ph4143:                                    ; preds = %vector.main.loop.iter.check4141
  %i.ys = and i64 %i.yp, 28
  %n.vec4144 = and i64 %i.yp, 137438953440        ; 4 uses
  br label %vector.body4145

vector.body4145:                                  ; preds = %vector.body4145, %vector.ph4143
  %index4146 = phi i64 [ 0, %vector.ph4143 ], [ %index.next4149, %vector.body4145 ] ; 3 uses
  %i.yt = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 %index4146 ; 2 uses
  %i.yu = getelementptr inbounds nuw i8, ptr %i.yt, i64 16
  %wide.load4147 = load <16 x i8>, ptr %i.yt, align 1, !tbaa !37
  %wide.load4148 = load <16 x i8>, ptr %i.yu, align 1, !tbaa !37
  %i.yv = getelementptr inbounds nuw i8, ptr %i.yo, i64 %index4146 ; 2 uses
  %i.yw = getelementptr inbounds nuw i8, ptr %i.yv, i64 16
  store <16 x i8> %wide.load4147, ptr %i.yv, align 1, !tbaa !37
  store <16 x i8> %wide.load4148, ptr %i.yw, align 1, !tbaa !37
  %index.next4149 = add nuw i64 %index4146, 32    ; 2 uses
  %i.yx = icmp eq i64 %index.next4149, %n.vec4144
  br i1 %i.yx, label %middle.block4150, label %vector.body4145, !llvm.loop !435

middle.block4150:                                 ; preds = %vector.body4145
  %cmp.n4151 = icmp eq i64 %i.yp, %n.vec4144
  br i1 %cmp.n4151, label %.loopexit.loopexit.i.i.i, label %vec.epilog.iter.check4155

vec.epilog.iter.check4155:                        ; preds = %middle.block4150
  %min.epilog.iters.check4156 = icmp eq i64 %i.ys, 0
  br i1 %min.epilog.iters.check4156, label %.lr.ph.i.i.i146.i.preheader, label %vec.epilog.ph4157, !prof !46

vec.epilog.ph4157:                                ; preds = %vector.main.loop.iter.check4141, %vec.epilog.iter.check4155
  %vec.epilog.resume.val4152 = phi i64 [ %n.vec4144, %vec.epilog.iter.check4155 ], [ 0, %vector.main.loop.iter.check4141 ]
  %n.vec4158 = and i64 %i.yp, 137438953468        ; 3 uses
  br label %vec.epilog.vector.body4159

vec.epilog.vector.body4159:                       ; preds = %vec.epilog.vector.body4159, %vec.epilog.ph4157
  %index4160 = phi i64 [ %vec.epilog.resume.val4152, %vec.epilog.ph4157 ], [ %index.next4162, %vec.epilog.vector.body4159 ] ; 3 uses
  %i.yy = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 %index4160
  %wide.load4161 = load <4 x i8>, ptr %i.yy, align 1, !tbaa !37
  %i.yz = getelementptr inbounds nuw i8, ptr %i.yo, i64 %index4160
  store <4 x i8> %wide.load4161, ptr %i.yz, align 1, !tbaa !37
  %index.next4162 = add nuw i64 %index4160, 4     ; 2 uses
  %i.za = icmp eq i64 %index.next4162, %n.vec4158
  br i1 %i.za, label %vec.epilog.middle.block4163, label %vec.epilog.vector.body4159, !llvm.loop !436

vec.epilog.middle.block4163:                      ; preds = %vec.epilog.vector.body4159
  %cmp.n4164 = icmp eq i64 %i.yp, %n.vec4158
  br i1 %cmp.n4164, label %.loopexit.loopexit.i.i.i, label %.lr.ph.i.i.i146.i.preheader

.lr.ph.i.i.i146.i.preheader:                      ; preds = %vector.memcheck4137, %iter.check4153, %vec.epilog.iter.check4155, %vec.epilog.middle.block4163
  %.026.i.i.i.i.ph = phi i64 [ 0, %iter.check4153 ], [ 0, %vector.memcheck4137 ], [ %n.vec4144, %vec.epilog.iter.check4155 ], [ %n.vec4158, %vec.epilog.middle.block4163 ] ; 3 uses
  %xtraiter4667 = and i64 %i.yp, 3                ; 2 uses
  %lcmp.mod4668.not = icmp eq i64 %xtraiter4667, 0
  br i1 %lcmp.mod4668.not, label %.lr.ph.i.i.i146.i.prol.loopexit, label %.lr.ph.i.i.i146.i.prol

.lr.ph.i.i.i146.i.prol:                           ; preds = %.lr.ph.i.i.i146.i.preheader, %.lr.ph.i.i.i146.i.prol
  %.026.i.i.i.i.prol = phi i64 [ %i.ze, %.lr.ph.i.i.i146.i.prol ], [ %.026.i.i.i.i.ph, %.lr.ph.i.i.i146.i.preheader ] ; 3 uses
  %prol.iter4669 = phi i64 [ %prol.iter4669.next, %.lr.ph.i.i.i146.i.prol ], [ 0, %.lr.ph.i.i.i146.i.preheader ]
  %i.zb = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 %.026.i.i.i.i.prol
  %i.zc = load i8, ptr %i.zb, align 1, !tbaa !37
  %i.zd = getelementptr inbounds nuw i8, ptr %i.yo, i64 %.026.i.i.i.i.prol
  store i8 %i.zc, ptr %i.zd, align 1, !tbaa !37
  %i.ze = add nuw nsw i64 %.026.i.i.i.i.prol, 1   ; 2 uses
  %prol.iter4669.next = add i64 %prol.iter4669, 1 ; 2 uses
  %prol.iter4669.cmp.not = icmp eq i64 %prol.iter4669.next, %xtraiter4667
  br i1 %prol.iter4669.cmp.not, label %.lr.ph.i.i.i146.i.prol.loopexit, label %.lr.ph.i.i.i146.i.prol, !llvm.loop !437

.lr.ph.i.i.i146.i.prol.loopexit:                  ; preds = %.lr.ph.i.i.i146.i.prol, %.lr.ph.i.i.i146.i.preheader
  %.026.i.i.i.i.unr = phi i64 [ %.026.i.i.i.i.ph, %.lr.ph.i.i.i146.i.preheader ], [ %i.ze, %.lr.ph.i.i.i146.i.prol ]
  %i.zf = sub nsw i64 %.026.i.i.i.i.ph, %i.yp
  %i.zg = icmp ugt i64 %i.zf, -4
  br i1 %i.zg, label %.loopexit.loopexit.i.i.i, label %.lr.ph.i.i.i146.i

.lr.ph.i.i.i146.i:                                ; preds = %.lr.ph.i.i.i146.i.prol.loopexit, %.lr.ph.i.i.i146.i
  %.026.i.i.i.i = phi i64 [ %i.zw, %.lr.ph.i.i.i146.i ], [ %.026.i.i.i.i.unr, %.lr.ph.i.i.i146.i.prol.loopexit ] ; 6 uses
  %i.zh = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 %.026.i.i.i.i
  %i.zi = load i8, ptr %i.zh, align 1, !tbaa !37
  %i.zj = getelementptr inbounds nuw i8, ptr %i.yo, i64 %.026.i.i.i.i
  store i8 %i.zi, ptr %i.zj, align 1, !tbaa !37
  %i.zk = add nuw nsw i64 %.026.i.i.i.i, 1        ; 2 uses
  %i.zl = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 %i.zk
  %i.zm = load i8, ptr %i.zl, align 1, !tbaa !37
  %i.zn = getelementptr inbounds nuw i8, ptr %i.yo, i64 %i.zk
  store i8 %i.zm, ptr %i.zn, align 1, !tbaa !37
  %i.zo = add nuw nsw i64 %.026.i.i.i.i, 2        ; 2 uses
  %i.zp = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 %i.zo
  %i.zq = load i8, ptr %i.zp, align 1, !tbaa !37
  %i.zr = getelementptr inbounds nuw i8, ptr %i.yo, i64 %i.zo
  store i8 %i.zq, ptr %i.zr, align 1, !tbaa !37
  %i.zs = add nuw nsw i64 %.026.i.i.i.i, 3        ; 2 uses
  %i.zt = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 %i.zs
  %i.zu = load i8, ptr %i.zt, align 1, !tbaa !37
  %i.zv = getelementptr inbounds nuw i8, ptr %i.yo, i64 %i.zs
  store i8 %i.zu, ptr %i.zv, align 1, !tbaa !37
  %i.zw = add nuw nsw i64 %.026.i.i.i.i, 4        ; 2 uses
  %exitcond.not.i.i.i.i.3 = icmp eq i64 %i.zw, %i.yp
  br i1 %exitcond.not.i.i.i.i.3, label %.loopexit.loopexit.i.i.i, label %.lr.ph.i.i.i146.i, !llvm.loop !438

.loopexit.loopexit.i.i.i:                         ; preds = %.lr.ph.i.i.i146.i.prol.loopexit, %.lr.ph.i.i.i146.i, %vec.epilog.middle.block4163, %middle.block4150
  %.pre33.pre.i.i.i = load i32, ptr %i.xy, align 8, !tbaa !68
  br label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %.loopexit.loopexit.i.i.i, %bb.ci, %bb.cg
  %.pre33.i.i.i = phi i32 [ %i.xz, %bb.cg ], [ %i.xz, %bb.ci ], [ %.pre33.pre.i.i.i, %.loopexit.loopexit.i.i.i ]
  %.018.i.ph.i.i.i = phi ptr [ %i.yk, %bb.cg ], [ %i.yo, %bb.ci ], [ %i.yo, %.loopexit.loopexit.i.i.i ] ; 2 uses
  store ptr %.018.i.ph.i.i.i, ptr %i.xx, align 8, !tbaa !69
  store i32 %spec.select.i.i144.i, ptr %i.ya, align 4, !tbaa !122
  br label %bb.cj

bb.cj:                                            ; preds = %.loopexit.i.i.i, %bb.cd
  %i.zx = phi i32 [ %.pre33.i.i.i, %.loopexit.i.i.i ], [ %i.xz, %bb.cd ] ; 2 uses
  %i.zy = phi ptr [ %.018.i.ph.i.i.i, %.loopexit.i.i.i ], [ %.pre.i.i.i, %bb.cd ]
  %i.zz = add i32 %i.zx, 1
  store i32 %i.zz, ptr %i.xy, align 8, !tbaa !68
  %i.aaa = zext i32 %i.zx to i64
  %i.aab = getelementptr inbounds nuw [32 x i8], ptr %i.zy, i64 %i.aaa ; 5 uses
  store i32 2, ptr %i.aab, align 8, !tbaa !124
  %i.aac = getelementptr inbounds nuw i8, ptr %i.aab, i64 4
  store i32 61, ptr %i.aac, align 4, !tbaa !125
  %i.aad = getelementptr inbounds nuw i8, ptr %i.aab, i64 8
  store ptr @.str.76, ptr %i.aad, align 8, !tbaa !126
  %i.aae = getelementptr inbounds nuw i8, ptr %i.aab, i64 16
  store ptr null, ptr %i.aae, align 8, !tbaa !127
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.aab, i64 24
  store i64 -1, ptr %i.aaf, align 8, !tbaa !128
  %i.aag = getelementptr inbounds nuw i8, ptr %i.xx, i64 16
  store i32 1, ptr %i.aag, align 8, !tbaa !67
  br label %tg3__load_external_file.exit.thread.i

bb.ck:                                            ; preds = %tg3_is_data_uri.exit.thread.i
  %8 = icmp eq ptr %i.qd, null
  br i1 %8, label %.loopexit.i132.i, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.aah = zext i32 %i.hn to i64                  ; 12 uses
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cn, %bb.cl
  %.in.i.i.i.i = phi i64 [ %i.aah, %bb.cl ], [ %i.aak, %bb.cn ]
  %.09.i.i.i.i = phi ptr [ %i.qd, %bb.cl ], [ %i.aal, %bb.cn ] ; 2 uses
  %i.aai = load i8, ptr %.09.i.i.i.i, align 1, !tbaa !37
  %i.aaj = icmp eq i8 %i.aai, 0
  br i1 %i.aaj, label %.loopexit.i132.i, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.aak = add nsw i64 %.in.i.i.i.i, -1           ; 2 uses
  %i.aal = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 1
  %.not.i.i65.i.i = icmp eq i64 %i.aak, 0
  br i1 %.not.i.i65.i.i, label %bb.co, label %bb.cm, !llvm.loop !439

bb.co:                                            ; preds = %bb.cn
  %i.aam = load i8, ptr %i.qd, align 1, !tbaa !37 ; 3 uses
  switch i8 %i.aam, label %bb.cp [
    i8 47, label %.loopexit.i132.i
    i8 92, label %.loopexit.i132.i
  ]

bb.cp:                                            ; preds = %bb.co
  %.not194.i = icmp eq i32 %i.hn, 1
  br i1 %.not194.i, label %tg3__uri_is_safe.exit.thread99.i.i, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.aan = getelementptr inbounds nuw i8, ptr %i.qd, i64 1
  %i.aao = load i8, ptr %i.aan, align 1, !tbaa !37 ; 2 uses
  %i.aap = icmp eq i8 %i.aao, 58
  br i1 %i.aap, label %bb.cr, label %.lr.ph.preheader.i.i.i

bb.cr:                                            ; preds = %bb.cq
  %i.aaq = and i8 %i.aam, -33
  %i.aar = add i8 %i.aaq, -65
  %or.cond50.i.i.i = icmp ult i8 %i.aar, 26
  br i1 %or.cond50.i.i.i, label %.loopexit.i132.i, label %.lr.ph.preheader.i.thread.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.cq
  %i.aas = add i32 %i.hn, -1                      ; 2 uses
  %wide.trip.count.i.i.i = zext i32 %i.aas to i64 ; 2 uses
  %i.aat = icmp eq i8 %i.aam, 46
  %i.aau = icmp eq i8 %i.aao, 46
  %or.cond.i139.i = and i1 %i.aat, %i.aau
  br i1 %or.cond.i139.i, label %bb.cs, label %.thread.i.i

.lr.ph.preheader.i.thread.i.i:                    ; preds = %bb.cr
  %i.aav = add i32 %i.hn, -1                      ; 2 uses
  %wide.trip.count.i92.i.i = zext i32 %i.aav to i64
  br label %.thread.i.i

bb.cs:                                            ; preds = %.lr.ph.preheader.i.i.i
  %i.aaw = icmp eq i32 %i.hn, 2
  br i1 %i.aaw, label %.loopexit.i132.i, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.aax = getelementptr inbounds nuw i8, ptr %i.qd, i64 2
  %i.aay = load i8, ptr %i.aax, align 1, !tbaa !37
  switch i8 %i.aay, label %.lr.ph.peel.next.i.i.i [
    i8 47, label %.loopexit.i132.i
    i8 92, label %.loopexit.i132.i
  ]

.thread.i.i:                                      ; preds = %.lr.ph.preheader.i.thread.i.i, %.lr.ph.preheader.i.i.i
  %wide.trip.count.i94.i.i = phi i64 [ %wide.trip.count.i92.i.i, %.lr.ph.preheader.i.thread.i.i ], [ %wide.trip.count.i.i.i, %.lr.ph.preheader.i.i.i ]
  %i.aaz = phi i32 [ %i.aav, %.lr.ph.preheader.i.thread.i.i ], [ %i.aas, %.lr.ph.preheader.i.i.i ]
  %exitcond.peel.not.i.i.i = icmp eq i32 %i.aaz, 1
  br i1 %exitcond.peel.not.i.i.i, label %tg3__uri_is_safe.exit.i.i, label %.lr.ph.peel.next.i.i.i

.lr.ph.peel.next.i.i.i:                           ; preds = %.thread.i.i, %bb.ct
  %wide.trip.count.i93.i.i = phi i64 [ %wide.trip.count.i94.i.i, %.thread.i.i ], [ %wide.trip.count.i.i.i, %bb.ct ]
  br label %.lr.ph.i.i140.i

.lr.ph.i.i140.i:                                  ; preds = %bb.cy, %.lr.ph.peel.next.i.i.i
  %indvars.iv57.i.i.i = phi i64 [ 1, %.lr.ph.peel.next.i.i.i ], [ %indvars.iv.next58.i.i.i, %bb.cy ] ; 3 uses
  %indvars.iv.i.i.i = phi i64 [ 2, %.lr.ph.peel.next.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.cy ] ; 2 uses
  %i.aba = getelementptr inbounds nuw i8, ptr %i.qd, i64 %indvars.iv57.i.i.i ; 2 uses
  %i.abb = load i8, ptr %i.aba, align 1, !tbaa !37
  %i.abc = icmp eq i8 %i.abb, 46
  br i1 %i.abc, label %bb.cu, label %bb.cy

bb.cu:                                            ; preds = %.lr.ph.i.i140.i
  %i.abd = getelementptr inbounds nuw i8, ptr %i.qd, i64 %indvars.iv.i.i.i
  %i.abe = load i8, ptr %i.abd, align 1, !tbaa !37
  %i.abf = icmp eq i8 %i.abe, 46
  br i1 %i.abf, label %bb.cv, label %bb.cy

bb.cv:                                            ; preds = %bb.cu
  %i.abg = getelementptr i8, ptr %i.aba, i64 -1
  %i.abh = load i8, ptr %i.abg, align 1, !tbaa !37 ; 3 uses
  %i.abi = icmp eq i8 %i.abh, 47
  %i.abj = icmp eq i8 %i.abh, 92
  %spec.select.i66.i.i = or i1 %i.abi, %i.abj
  %i.abk = add nuw nsw i64 %indvars.iv57.i.i.i, 2 ; 2 uses
  %i.abl = icmp eq i64 %i.abk, %i.aah
  br i1 %i.abl, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.abm = getelementptr inbounds nuw i8, ptr %i.qd, i64 %i.abk
  %i.abn = load i8, ptr %i.abm, align 1, !tbaa !37 ; 2 uses
  %i.abo = icmp eq i8 %i.abn, 47
  br i1 %i.abo, label %bb.cx, label %.split.i.i.i

.split.i.i.i:                                     ; preds = %bb.cw
  %i.abp = icmp eq i8 %i.abn, 92
  %i.abq = and i1 %spec.select.i66.i.i, %i.abp
  br i1 %i.abq, label %.loopexit.i132.i, label %bb.cy

bb.cx:                                            ; preds = %bb.cw, %bb.cv
  switch i8 %i.abh, label %bb.cy [
    i8 92, label %.loopexit.i132.i
    i8 47, label %.loopexit.i132.i
  ]

bb.cy:                                            ; preds = %bb.cx, %.split.i.i.i, %bb.cu, %.lr.ph.i.i140.i
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1
  %indvars.iv.next58.i.i.i = add nuw nsw i64 %indvars.iv57.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i141.i = icmp eq i64 %indvars.iv.next58.i.i.i, %wide.trip.count.i93.i.i
  br i1 %exitcond.not.i.i141.i, label %tg3__uri_is_safe.exit.i.i, label %.lr.ph.i.i140.i, !llvm.loop !440

.loopexit.i132.i:                                 ; preds = %bb.cm, %bb.cx, %bb.cx, %.split.i.i.i, %bb.ct, %bb.ct, %bb.cs, %bb.cr, %bb.co, %bb.co, %bb.ck
  %i.abr = load ptr, ptr %i.gp, align 8, !tbaa !145 ; 6 uses
  %.not.i67.i.i = icmp eq ptr %i.abr, null
  br i1 %.not.i67.i.i, label %tg3__load_external_file.exit.thread.i, label %bb.cz

bb.cz:                                            ; preds = %.loopexit.i132.i
  %i.abs = getelementptr inbounds nuw i8, ptr %i.abr, i64 8 ; 3 uses
  %i.abt = load i32, ptr %i.abs, align 8, !tbaa !68 ; 4 uses
  %i.abu = getelementptr inbounds nuw i8, ptr %i.abr, i64 12 ; 2 uses
  %i.abv = load i32, ptr %i.abu, align 4, !tbaa !122 ; 3 uses
  %.not27.i68.i.i = icmp ult i32 %i.abt, %i.abv
  %.pre.i69.i.i = load ptr, ptr %i.abr, align 8, !tbaa !69 ; 11 uses
  %.pre.i69.i.i4167 = ptrtoaddr ptr %.pre.i69.i.i to i64
  br i1 %.not27.i68.i.i, label %bb.df, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %.not28.i70.i.i = icmp eq i32 %i.abv, 0
  %i.abw = shl i32 %i.abv, 1
  %spec.select.i71.i.i = select i1 %.not28.i70.i.i, i32 16, i32 %i.abw ; 2 uses
  %i.abx = zext i32 %spec.select.i71.i.i to i64
  %i.aby = shl nuw nsw i64 %i.abx, 5              ; 4 uses
  %.not.i.i72.i.i = icmp eq ptr %.pre.i69.i.i, null
  %i.abz = or disjoint i64 %i.aby, 8
  %i.aca = load i64, ptr @test_heap_used, align 8, !tbaa !30 ; 4 uses
  %i.acb = add i64 %i.aca, %i.abz                 ; 3 uses
  %i.acc = icmp ugt i64 %i.acb, 524288            ; 2 uses
  br i1 %.not.i.i72.i.i, label %bb.db, label %bb.dd

bb.db:                                            ; preds = %bb.da
  br i1 %i.acc, label %tg3__load_external_file.exit.thread.i, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.acd = getelementptr inbounds nuw i8, ptr @test_heap, i64 %i.aca ; 2 uses
  store i64 %i.aby, ptr %i.acd, align 8, !tbaa !30
  store i64 %i.acb, ptr @test_heap_used, align 8, !tbaa !30
  %i.ace = getelementptr inbounds nuw i8, ptr %i.acd, i64 8
  br label %.loopexit.i79.i.i

bb.dd:                                            ; preds = %bb.da
  br i1 %i.acc, label %tg3__load_external_file.exit.thread.i, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.acf = getelementptr inbounds i8, ptr %.pre.i69.i.i, i64 -8
  %i.acg = load i64, ptr %i.acf, align 8, !tbaa !30
  %i.ach = getelementptr inbounds nuw i8, ptr @test_heap, i64 %i.aca ; 2 uses
  store i64 %i.aby, ptr %i.ach, align 8, !tbaa !30
  store i64 %i.acb, ptr @test_heap_used, align 8, !tbaa !30
  %i.aci = getelementptr inbounds nuw i8, ptr %i.ach, i64 8 ; 9 uses
  %i.acj = call i64 @llvm.umin.i64(i64 %i.acg, i64 %i.aby) ; 11 uses
  %.not27.i.i73.i.i = icmp eq i64 %i.acj, 0
  br i1 %.not27.i.i73.i.i, label %.loopexit.i79.i.i, label %iter.check4182

iter.check4182:                                   ; preds = %bb.de
  %min.iters.check4169 = icmp samesign ult i64 %i.acj, 4
  br i1 %min.iters.check4169, label %.lr.ph.i.i74.i.i.preheader, label %vector.memcheck4166

vector.memcheck4166:                              ; preds = %iter.check4182
  %i.ack = add i64 %i.aca, add (i64 ptrtoaddr (ptr @test_heap to i64), i64 8)
  %i.acl = sub i64 %.pre.i69.i.i4167, %i.ack
  %diff.check4168 = icmp ugt i64 %i.acl, -32
  br i1 %diff.check4168, label %.lr.ph.i.i74.i.i.preheader, label %vector.main.loop.iter.check4170

vector.main.loop.iter.check4170:                  ; preds = %vector.memcheck4166
  %min.iters.check4171 = icmp samesign ult i64 %i.acj, 32
  br i1 %min.iters.check4171, label %vec.epilog.ph4186, label %vector.ph4172

vector.ph4172:                                    ; preds = %vector.main.loop.iter.check4170
  %i.acm = and i64 %i.acj, 28
  %n.vec4173 = and i64 %i.acj, 137438953440       ; 4 uses
  br label %vector.body4174

vector.body4174:                                  ; preds = %vector.body4174, %vector.ph4172
  %index4175 = phi i64 [ 0, %vector.ph4172 ], [ %index.next4178, %vector.body4174 ] ; 3 uses
  %i.acn = getelementptr inbounds nuw i8, ptr %.pre.i69.i.i, i64 %index4175 ; 2 uses
  %i.aco = getelementptr inbounds nuw i8, ptr %i.acn, i64 16
  %wide.load4176 = load <16 x i8>, ptr %i.acn, align 1, !tbaa !37
  %wide.load4177 = load <16 x i8>, ptr %i.aco, align 1, !tbaa !37
end_hunk_2
begin_hunk_3_@tg3__parse_from_json:tg3json__strlen_fallback.exit.i
  %i.aga = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.afz
  %i.agb = load i8, ptr %i.aga, align 1, !tbaa !37
  switch i8 %i.agb, label %bb.dh [
    i8 47, label %bb.di
    i8 92, label %bb.di
  ]

bb.dh:                                            ; preds = %tg3__memcpy.exit.i136.i
  %i.agc = add nuw i32 %i.aec, 1
  %i.agd = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.aed
  store i8 47, ptr %i.agd, align 1, !tbaa !37
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %tg3__memcpy.exit.i136.i, %tg3__memcpy.exit.i136.i, %tg3__uri_is_safe.exit.thread99.i.i
  %.0.i137.i = phi i32 [ %i.agc, %bb.dh ], [ %i.aec, %tg3__memcpy.exit.i136.i ], [ %i.aec, %tg3__memcpy.exit.i136.i ], [ 0, %tg3__uri_is_safe.exit.thread99.i.i ] ; 2 uses
  %i.age = add i32 %.0.i137.i, %i.hn              ; 3 uses
  %i.agf = icmp ugt i32 %i.age, 4095
  br i1 %i.agf, label %tg3__load_external_file.exit.thread.i, label %iter.check4281

iter.check4281:                                   ; preds = %bb.di
  %i.agg = zext i32 %.0.i137.i to i64             ; 2 uses
  %i.agh = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.agg ; 6 uses
  %min.iters.check4263 = icmp ult i32 %i.hn, 4
  br i1 %min.iters.check4263, label %.lr.ph.i86.i.i.preheader, label %vector.memcheck4261

vector.memcheck4261:                              ; preds = %iter.check4281
  %i.agi = add i64 %i.h, %i.agg
  %i.agj = sub i64 %i.qe, %i.agi
  %diff.check4262 = icmp ugt i64 %i.agj, -32
  br i1 %diff.check4262, label %.lr.ph.i86.i.i.preheader, label %vector.main.loop.iter.check4264

vector.main.loop.iter.check4264:                  ; preds = %vector.memcheck4261
  %min.iters.check4265 = icmp ult i32 %i.hn, 32
  br i1 %min.iters.check4265, label %vec.epilog.ph4285, label %vector.ph4266

vector.ph4266:                                    ; preds = %vector.main.loop.iter.check4264
  %i.agk = and i64 %i.aah, 28
  %n.vec4267 = and i64 %i.aah, 4294967264         ; 5 uses
  %i.agl = getelementptr i8, ptr %i.qd, i64 %n.vec4267
  %i.agm = getelementptr i8, ptr %i.agh, i64 %n.vec4267
  %i.agn = and i64 %i.aah, 31
  br label %vector.body4268

vector.body4268:                                  ; preds = %vector.body4268, %vector.ph4266
  %index4269 = phi i64 [ 0, %vector.ph4266 ], [ %index.next4274, %vector.body4268 ] ; 3 uses
  %next.gep4270 = getelementptr i8, ptr %i.qd, i64 %index4269 ; 2 uses
  %next.gep4271 = getelementptr i8, ptr %i.agh, i64 %index4269 ; 2 uses
  %i.ago = getelementptr i8, ptr %next.gep4270, i64 16
  %wide.load4272 = load <16 x i8>, ptr %next.gep4270, align 1, !tbaa !37
  %wide.load4273 = load <16 x i8>, ptr %i.ago, align 1, !tbaa !37
  %i.agp = getelementptr i8, ptr %next.gep4271, i64 16
  store <16 x i8> %wide.load4272, ptr %next.gep4271, align 1, !tbaa !37
  store <16 x i8> %wide.load4273, ptr %i.agp, align 1, !tbaa !37
  %index.next4274 = add nuw i64 %index4269, 32    ; 2 uses
  %i.agq = icmp eq i64 %index.next4274, %n.vec4267
  br i1 %i.agq, label %middle.block4275, label %vector.body4268, !llvm.loop !449

middle.block4275:                                 ; preds = %vector.body4268
  %cmp.n4276 = icmp eq i64 %n.vec4267, %i.aah
  br i1 %cmp.n4276, label %tg3__memcpy.exit91.i.i, label %vec.epilog.iter.check4283

vec.epilog.iter.check4283:                        ; preds = %middle.block4275
  %min.epilog.iters.check4284 = icmp eq i64 %i.agk, 0
  br i1 %min.epilog.iters.check4284, label %.lr.ph.i86.i.i.preheader, label %vec.epilog.ph4285, !prof !46

vec.epilog.ph4285:                                ; preds = %vector.main.loop.iter.check4264, %vec.epilog.iter.check4283
  %vec.epilog.resume.val4277 = phi i64 [ %n.vec4267, %vec.epilog.iter.check4283 ], [ 0, %vector.main.loop.iter.check4264 ]
  %n.vec4286 = and i64 %i.aah, 4294967292         ; 4 uses
  %i.agr = getelementptr i8, ptr %i.qd, i64 %n.vec4286
  %i.ags = getelementptr i8, ptr %i.agh, i64 %n.vec4286
  %i.agt = and i64 %i.aah, 3
  br label %vec.epilog.vector.body4287

vec.epilog.vector.body4287:                       ; preds = %vec.epilog.vector.body4287, %vec.epilog.ph4285
  %index4288 = phi i64 [ %vec.epilog.resume.val4277, %vec.epilog.ph4285 ], [ %index.next4292, %vec.epilog.vector.body4287 ] ; 3 uses
  %next.gep4289 = getelementptr i8, ptr %i.qd, i64 %index4288
  %next.gep4290 = getelementptr i8, ptr %i.agh, i64 %index4288
  %wide.load4291 = load <4 x i8>, ptr %next.gep4289, align 1, !tbaa !37
  store <4 x i8> %wide.load4291, ptr %next.gep4290, align 1, !tbaa !37
  %index.next4292 = add nuw i64 %index4288, 4     ; 2 uses
  %i.agu = icmp eq i64 %index.next4292, %n.vec4286
  br i1 %i.agu, label %vec.epilog.middle.block4293, label %vec.epilog.vector.body4287, !llvm.loop !450

vec.epilog.middle.block4293:                      ; preds = %vec.epilog.vector.body4287
  %cmp.n4294 = icmp eq i64 %n.vec4286, %i.aah
  br i1 %cmp.n4294, label %tg3__memcpy.exit91.i.i, label %.lr.ph.i86.i.i.preheader

.lr.ph.i86.i.i.preheader:                         ; preds = %vector.memcheck4261, %iter.check4281, %vec.epilog.iter.check4283, %vec.epilog.middle.block4293
  %.010.i87.i.i.ph = phi ptr [ %i.qd, %iter.check4281 ], [ %i.qd, %vector.memcheck4261 ], [ %i.agl, %vec.epilog.iter.check4283 ], [ %i.agr, %vec.epilog.middle.block4293 ] ; 2 uses
  %.059.i88.i.i.ph = phi ptr [ %i.agh, %iter.check4281 ], [ %i.agh, %vector.memcheck4261 ], [ %i.agm, %vec.epilog.iter.check4283 ], [ %i.ags, %vec.epilog.middle.block4293 ] ; 2 uses
  %.068.i89.i.i.ph = phi i64 [ %i.aah, %iter.check4281 ], [ %i.aah, %vector.memcheck4261 ], [ %i.agn, %vec.epilog.iter.check4283 ], [ %i.agt, %vec.epilog.middle.block4293 ] ; 4 uses
  %i.agv = add nsw i64 %.068.i89.i.i.ph, -1
  %xtraiter4655 = and i64 %.068.i89.i.i.ph, 7     ; 2 uses
  %lcmp.mod4656.not = icmp eq i64 %xtraiter4655, 0
  br i1 %lcmp.mod4656.not, label %.lr.ph.i86.i.i.prol.loopexit, label %.lr.ph.i86.i.i.prol

.lr.ph.i86.i.i.prol:                              ; preds = %.lr.ph.i86.i.i.preheader, %.lr.ph.i86.i.i.prol
  %.010.i87.i.i.prol = phi ptr [ %i.agx, %.lr.ph.i86.i.i.prol ], [ %.010.i87.i.i.ph, %.lr.ph.i86.i.i.preheader ] ; 2 uses
  %.059.i88.i.i.prol = phi ptr [ %i.agz, %.lr.ph.i86.i.i.prol ], [ %.059.i88.i.i.ph, %.lr.ph.i86.i.i.preheader ] ; 2 uses
  %.068.i89.i.i.prol = phi i64 [ %i.agw, %.lr.ph.i86.i.i.prol ], [ %.068.i89.i.i.ph, %.lr.ph.i86.i.i.preheader ]
  %prol.iter4657 = phi i64 [ %prol.iter4657.next, %.lr.ph.i86.i.i.prol ], [ 0, %.lr.ph.i86.i.i.preheader ]
  %i.agw = add i64 %.068.i89.i.i.prol, -1         ; 2 uses
  %i.agx = getelementptr inbounds nuw i8, ptr %.010.i87.i.i.prol, i64 1 ; 2 uses
  %i.agy = load i8, ptr %.010.i87.i.i.prol, align 1, !tbaa !37
  %i.agz = getelementptr inbounds nuw i8, ptr %.059.i88.i.i.prol, i64 1 ; 2 uses
  store i8 %i.agy, ptr %.059.i88.i.i.prol, align 1, !tbaa !37
  %prol.iter4657.next = add i64 %prol.iter4657, 1 ; 2 uses
  %prol.iter4657.cmp.not = icmp eq i64 %prol.iter4657.next, %xtraiter4655
  br i1 %prol.iter4657.cmp.not, label %.lr.ph.i86.i.i.prol.loopexit, label %.lr.ph.i86.i.i.prol, !llvm.loop !451

.lr.ph.i86.i.i.prol.loopexit:                     ; preds = %.lr.ph.i86.i.i.prol, %.lr.ph.i86.i.i.preheader
  %.010.i87.i.i.unr = phi ptr [ %.010.i87.i.i.ph, %.lr.ph.i86.i.i.preheader ], [ %i.agx, %.lr.ph.i86.i.i.prol ]
  %.059.i88.i.i.unr = phi ptr [ %.059.i88.i.i.ph, %.lr.ph.i86.i.i.preheader ], [ %i.agz, %.lr.ph.i86.i.i.prol ]
  %.068.i89.i.i.unr = phi i64 [ %.068.i89.i.i.ph, %.lr.ph.i86.i.i.preheader ], [ %i.agw, %.lr.ph.i86.i.i.prol ]
  %i.aha = icmp ult i64 %i.agv, 7
  br i1 %i.aha, label %tg3__memcpy.exit91.i.i, label %.lr.ph.i86.i.i

.lr.ph.i86.i.i:                                   ; preds = %.lr.ph.i86.i.i.prol.loopexit, %.lr.ph.i86.i.i
  %.010.i87.i.i = phi ptr [ %i.ahx, %.lr.ph.i86.i.i ], [ %.010.i87.i.i.unr, %.lr.ph.i86.i.i.prol.loopexit ] ; 9 uses
  %.059.i88.i.i = phi ptr [ %i.ahz, %.lr.ph.i86.i.i ], [ %.059.i88.i.i.unr, %.lr.ph.i86.i.i.prol.loopexit ] ; 9 uses
  %.068.i89.i.i = phi i64 [ %i.ahw, %.lr.ph.i86.i.i ], [ %.068.i89.i.i.unr, %.lr.ph.i86.i.i.prol.loopexit ]
  %i.ahb = getelementptr inbounds nuw i8, ptr %.010.i87.i.i, i64 1
  %i.ahc = load i8, ptr %.010.i87.i.i, align 1, !tbaa !37
  %i.ahd = getelementptr inbounds nuw i8, ptr %.059.i88.i.i, i64 1
  store i8 %i.ahc, ptr %.059.i88.i.i, align 1, !tbaa !37
  %i.ahe = getelementptr inbounds nuw i8, ptr %.010.i87.i.i, i64 2
  %i.ahf = load i8, ptr %i.ahb, align 1, !tbaa !37
  %i.ahg = getelementptr inbounds nuw i8, ptr %.059.i88.i.i, i64 2
  store i8 %i.ahf, ptr %i.ahd, align 1, !tbaa !37
  %i.ahh = getelementptr inbounds nuw i8, ptr %.010.i87.i.i, i64 3
  %i.ahi = load i8, ptr %i.ahe, align 1, !tbaa !37
  %i.ahj = getelementptr inbounds nuw i8, ptr %.059.i88.i.i, i64 3
  store i8 %i.ahi, ptr %i.ahg, align 1, !tbaa !37
  %i.ahk = getelementptr inbounds nuw i8, ptr %.010.i87.i.i, i64 4
  %i.ahl = load i8, ptr %i.ahh, align 1, !tbaa !37
  %i.ahm = getelementptr inbounds nuw i8, ptr %.059.i88.i.i, i64 4
  store i8 %i.ahl, ptr %i.ahj, align 1, !tbaa !37
  %i.ahn = getelementptr inbounds nuw i8, ptr %.010.i87.i.i, i64 5
  %i.aho = load i8, ptr %i.ahk, align 1, !tbaa !37
  %i.ahp = getelementptr inbounds nuw i8, ptr %.059.i88.i.i, i64 5
  store i8 %i.aho, ptr %i.ahm, align 1, !tbaa !37
  %i.ahq = getelementptr inbounds nuw i8, ptr %.010.i87.i.i, i64 6
  %i.ahr = load i8, ptr %i.ahn, align 1, !tbaa !37
  %i.ahs = getelementptr inbounds nuw i8, ptr %.059.i88.i.i, i64 6
  store i8 %i.ahr, ptr %i.ahp, align 1, !tbaa !37
  %i.aht = getelementptr inbounds nuw i8, ptr %.010.i87.i.i, i64 7
  %i.ahu = load i8, ptr %i.ahq, align 1, !tbaa !37
  %i.ahv = getelementptr inbounds nuw i8, ptr %.059.i88.i.i, i64 7
  store i8 %i.ahu, ptr %i.ahs, align 1, !tbaa !37
  %i.ahw = add i64 %.068.i89.i.i, -8              ; 2 uses
  %i.ahx = getelementptr inbounds nuw i8, ptr %.010.i87.i.i, i64 8
  %i.ahy = load i8, ptr %i.aht, align 1, !tbaa !37
  %i.ahz = getelementptr inbounds nuw i8, ptr %.059.i88.i.i, i64 8
  store i8 %i.ahy, ptr %i.ahv, align 1, !tbaa !37
  %.not.i90.i.i.7 = icmp eq i64 %i.ahw, 0
  br i1 %.not.i90.i.i.7, label %tg3__memcpy.exit91.i.i, label %.lr.ph.i86.i.i, !llvm.loop !452

tg3__memcpy.exit91.i.i:                           ; preds = %.lr.ph.i86.i.i.prol.loopexit, %.lr.ph.i86.i.i, %vec.epilog.middle.block4293, %middle.block4275
  %i.aia = zext nneg i32 %i.age to i64
  %i.aib = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.aia
  store i8 0, ptr %i.aib, align 1, !tbaa !37
  %i.aic = load ptr, ptr %i.gn, align 8, !tbaa !549
  %i.aid = call i32 %i.xw(ptr noundef nonnull %i.k, ptr noundef nonnull %i.l, ptr noundef nonnull %i.g, i32 noundef %i.age, ptr noundef %i.aic) #22, !inline_history !453
  %.not62.i.i = icmp eq i32 %i.aid, 0
  br i1 %.not62.i.i, label %bb.dj, label %bb.dk

bb.dj:                                            ; preds = %tg3__memcpy.exit91.i.i
  %i.aie = load ptr, ptr %i.gp, align 8, !tbaa !145
  %i.aif = load ptr, ptr %0, align 8, !tbaa !144
  call void (ptr, ptr, i32, i32, ptr, ptr, ...) @tg3__error_pushf(ptr noundef %i.aie, ptr noundef %i.aif, i32 poison, i32 noundef 2, ptr noundef null, ptr noundef nonnull @.str.78, ptr noundef nonnull %i.g) #21
  br label %tg3__load_external_file.exit.thread.i

bb.dk:                                            ; preds = %tg3__memcpy.exit91.i.i
  %i.aig = load i64, ptr %i.go, align 8, !tbaa !550 ; 3 uses
  %.not63.i.i = icmp ne i64 %i.aig, 0
  %.pre203.i = load i64, ptr %i.l, align 8, !tbaa !30 ; 8 uses
  %i.aih = icmp ugt i64 %.pre203.i, %i.aig
  %or.cond286.i = select i1 %.not63.i.i, i1 %i.aih, i1 false
  br i1 %or.cond286.i, label %bb.dl, label %bb.do

bb.dl:                                            ; preds = %bb.dk
  %i.aii = load ptr, ptr %i.gq, align 8, !tbaa !551 ; 2 uses
  %.not64.i.i = icmp eq ptr %i.aii, null
  br i1 %.not64.i.i, label %bb.dn, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.aij = load ptr, ptr %i.k, align 8, !tbaa !23
  %i.aik = load ptr, ptr %i.gn, align 8, !tbaa !549
  call void %i.aii(ptr noundef %i.aij, i64 noundef %.pre203.i, ptr noundef %i.aik) #22, !inline_history !453
  %.pre.i138.i = load i64, ptr %i.l, align 8, !tbaa !30
  %.pre103.i.i = load i64, ptr %i.go, align 8, !tbaa !550
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dm, %bb.dl
  %i.ail = phi i64 [ %.pre103.i.i, %bb.dm ], [ %i.aig, %bb.dl ]
  %i.aim = phi i64 [ %.pre.i138.i, %bb.dm ], [ %.pre203.i, %bb.dl ]
  %i.ain = load ptr, ptr %i.gp, align 8, !tbaa !145
  %i.aio = load ptr, ptr %0, align 8, !tbaa !144
  call void (ptr, ptr, i32, i32, ptr, ptr, ...) @tg3__error_pushf(ptr noundef %i.ain, ptr noundef %i.aio, i32 poison, i32 noundef 4, ptr noundef null, ptr noundef nonnull @.str.79, ptr noundef nonnull %i.g, i64 noundef %i.aim, i64 noundef %i.ail) #21
  store ptr null, ptr %i.k, align 8, !tbaa !23
  store i64 0, ptr %i.l, align 8, !tbaa !30
  br label %tg3__load_external_file.exit.thread.i

tg3__load_external_file.exit.thread.i:            ; preds = %bb.dn, %bb.dj, %bb.di, %bb.dg, %tg3__uri_is_safe.exit.i.i, %bb.df, %bb.dd, %bb.db, %.loopexit.i132.i, %bb.cj, %bb.ch, %bb.cf, %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #20
  br label %bb.ee

bb.do:                                            ; preds = %bb.dk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #20
  %i.aip = load ptr, ptr %0, align 8, !tbaa !144  ; 9 uses
  %i.aiq = icmp eq ptr %i.aip, null
  %i.air = icmp eq i64 %.pre203.i, 0
  %or.cond.i147.i = or i1 %i.air, %i.aiq
  br i1 %or.cond.i147.i, label %tg3__arena_alloc.exit162.thread.i, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.ais = getelementptr inbounds nuw i8, ptr %i.aip, i64 32
  %i.ait = load i64, ptr %i.ais, align 8, !tbaa !136 ; 3 uses
  %.not.i148.i = icmp ne i64 %i.ait, 0            ; 2 uses
  %i.aiu = icmp ugt i64 %.pre203.i, %i.ait
  %or.cond28.i149.i = and i1 %.not.i148.i, %i.aiu
  br i1 %or.cond28.i149.i, label %tg3__arena_alloc.exit162.thread.thread.i, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.aiv = add i64 %.pre203.i, 7
  %i.aiw = and i64 %i.aiv, -8                     ; 3 uses
  %i.aix = getelementptr inbounds nuw i8, ptr %i.aip, i64 8 ; 3 uses
  %i.aiy = load ptr, ptr %i.aix, align 8, !tbaa !150 ; 4 uses
  %.not26.i150.i = icmp eq ptr %i.aiy, null
  br i1 %.not26.i150.i, label %bb.ds, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.aiz = getelementptr inbounds nuw i8, ptr %i.aiy, i64 16 ; 2 uses
  %i.aja = load i64, ptr %i.aiz, align 8, !tbaa !152 ; 2 uses
  %i.ajb = add i64 %i.aja, %i.aiw                 ; 2 uses
  %i.ajc = getelementptr inbounds nuw i8, ptr %i.aiy, i64 24
  %i.ajd = load i64, ptr %i.ajc, align 8, !tbaa !153
  %i.aje = icmp ugt i64 %i.ajb, %i.ajd
  br i1 %i.aje, label %bb.ds, label %tg3__arena_alloc.exit162.i

bb.ds:                                            ; preds = %bb.dr, %bb.dq
  %i.ajf = getelementptr inbounds nuw i8, ptr %i.aip, i64 40
  %i.ajg = load i64, ptr %i.ajf, align 8, !tbaa !134
  %spec.select.i.i156.i = call i64 @llvm.umax.i64(i64 %i.ajg, i64 range(i64 0, -7) %i.aiw) ; 3 uses
  %i.ajh = icmp ugt i64 %spec.select.i.i156.i, %i.ait
  %or.cond.i.i157.i = select i1 %.not.i148.i, i1 %i.ajh, i1 false
  br i1 %or.cond.i.i157.i, label %tg3__arena_alloc.exit162.thread.thread.i, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.aji = getelementptr inbounds nuw i8, ptr %i.aip, i64 16 ; 3 uses
  %i.ajj = load i64, ptr %i.aji, align 8, !tbaa !154
  %i.ajk = add i64 %spec.select.i.i156.i, 32      ; 3 uses
  %i.ajl = add i64 %i.ajj, %i.ajk
  %i.ajm = getelementptr inbounds nuw i8, ptr %i.aip, i64 24
  %i.ajn = load i64, ptr %i.ajm, align 8, !tbaa !135
  %i.ajo = icmp ugt i64 %i.ajl, %i.ajn
  br i1 %i.ajo, label %tg3__arena_alloc.exit162.thread.thread.i, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.ajp = getelementptr inbounds nuw i8, ptr %i.aip, i64 48
  %i.ajq = load ptr, ptr %i.ajp, align 8, !tbaa !155
  %i.ajr = getelementptr inbounds nuw i8, ptr %i.aip, i64 72
  %i.ajs = load ptr, ptr %i.ajr, align 8, !tbaa !156
  %i.ajt = call ptr %i.ajq(i64 noundef %i.ajk, ptr noundef %i.ajs) #22, !inline_history !412 ; 8 uses
  %.not37.i.i158.i = icmp eq ptr %i.ajt, null
  br i1 %.not37.i.i158.i, label %.tg3__arena_alloc.exit162.threadthread-pre-split_crit_edge.i, label %bb.dv

.tg3__arena_alloc.exit162.threadthread-pre-split_crit_edge.i: ; preds = %bb.du
  %.pr.pre.i = load i64, ptr %i.l, align 8, !tbaa !30
  br label %tg3__arena_alloc.exit162.thread.i

tg3__arena_alloc.exit162.i:                       ; preds = %bb.dr
  %.phi.trans.insert.i152.i = getelementptr inbounds nuw i8, ptr %i.aiy, i64 8
  %.pre.i153.i = load ptr, ptr %.phi.trans.insert.i152.i, align 8, !tbaa !158 ; 2 uses
  %i.aju = getelementptr inbounds nuw i8, ptr %.pre.i153.i, i64 %i.aja
  store i64 %i.ajb, ptr %i.aiz, align 8, !tbaa !152
  %.not91.i = icmp eq ptr %.pre.i153.i, null
  br i1 %.not91.i, label %tg3__arena_alloc.exit162.thread.thread.i, label %iter.check4244

bb.dv:                                            ; preds = %bb.du
  store ptr null, ptr %i.ajt, align 8, !tbaa !157
  %i.ajv = getelementptr inbounds nuw i8, ptr %i.ajt, i64 32 ; 3 uses
  %i.ajw = getelementptr inbounds nuw i8, ptr %i.ajt, i64 8
  store ptr %i.ajv, ptr %i.ajw, align 8, !tbaa !158
  %i.ajx = getelementptr inbounds nuw i8, ptr %i.ajt, i64 24
  store i64 %spec.select.i.i156.i, ptr %i.ajx, align 8, !tbaa !153
  %i.ajy = load i64, ptr %i.aji, align 8, !tbaa !154
  %i.ajz = add i64 %i.ajy, %i.ajk
  store i64 %i.ajz, ptr %i.aji, align 8, !tbaa !154
  %i.aka = load ptr, ptr %i.aix, align 8, !tbaa !150 ; 2 uses
  %.not38.i.i160.i = icmp eq ptr %i.aka, null
  %..i.i161.i = select i1 %.not38.i.i160.i, ptr %i.aip, ptr %i.aka
  store ptr %i.ajt, ptr %..i.i161.i, align 8, !tbaa !159
  store ptr %i.ajt, ptr %i.aix, align 8, !tbaa !150
  %.pr.pre205.pre.i = load i64, ptr %i.l, align 8, !tbaa !30 ; 2 uses
  %i.akb = getelementptr inbounds nuw i8, ptr %i.ajt, i64 16
  store i64 %i.aiw, ptr %i.akb, align 8, !tbaa !152
  %.not7.i163.i = icmp eq i64 %.pr.pre205.pre.i, 0
  br i1 %.not7.i163.i, label %tg3__memcpy.exit170.i, label %iter.check4244

iter.check4244:                                   ; preds = %bb.dv, %tg3__arena_alloc.exit162.i
  %.pr.pre205276280.i = phi i64 [ %.pr.pre205.pre.i, %bb.dv ], [ %.pre203.i, %tg3__arena_alloc.exit162.i ] ; 10 uses
  %i.akc = phi ptr [ %i.ajv, %bb.dv ], [ %i.aju, %tg3__arena_alloc.exit162.i ] ; 7 uses
  %i.akd = load ptr, ptr %i.k, align 8, !tbaa !23 ; 6 uses
  %min.iters.check4226 = icmp ult i64 %.pr.pre205276280.i, 4
  %i.ake = ptrtoaddr ptr %i.akd to i64
  %i.akf = ptrtoaddr ptr %i.akc to i64
  %i.akg = sub i64 %i.ake, %i.akf
  %diff.check4225 = icmp ugt i64 %i.akg, -32
  %or.cond4539 = select i1 %min.iters.check4226, i1 true, i1 %diff.check4225
  br i1 %or.cond4539, label %.lr.ph.i164.i.preheader, label %vector.main.loop.iter.check4227

vector.main.loop.iter.check4227:                  ; preds = %iter.check4244
  %min.iters.check4228 = icmp ult i64 %.pr.pre205276280.i, 32
  br i1 %min.iters.check4228, label %vec.epilog.ph4248, label %vector.ph4229

vector.ph4229:                                    ; preds = %vector.main.loop.iter.check4227
  %i.akh = and i64 %.pr.pre205276280.i, 28
  %n.vec4230 = and i64 %.pr.pre205276280.i, -32   ; 5 uses
  %i.aki = getelementptr i8, ptr %i.akd, i64 %n.vec4230
  %i.akj = getelementptr i8, ptr %i.akc, i64 %n.vec4230
  %i.akk = and i64 %.pr.pre205276280.i, 31
  br label %vector.body4231

vector.body4231:                                  ; preds = %vector.body4231, %vector.ph4229
  %index4232 = phi i64 [ 0, %vector.ph4229 ], [ %index.next4237, %vector.body4231 ] ; 3 uses
  %next.gep4233 = getelementptr i8, ptr %i.akd, i64 %index4232 ; 2 uses
  %next.gep4234 = getelementptr i8, ptr %i.akc, i64 %index4232 ; 2 uses
  %i.akl = getelementptr i8, ptr %next.gep4233, i64 16
  %wide.load4235 = load <16 x i8>, ptr %next.gep4233, align 1, !tbaa !37
  %wide.load4236 = load <16 x i8>, ptr %i.akl, align 1, !tbaa !37
  %i.akm = getelementptr i8, ptr %next.gep4234, i64 16
  store <16 x i8> %wide.load4235, ptr %next.gep4234, align 1, !tbaa !37
  store <16 x i8> %wide.load4236, ptr %i.akm, align 1, !tbaa !37
  %index.next4237 = add nuw i64 %index4232, 32    ; 2 uses
  %i.akn = icmp eq i64 %index.next4237, %n.vec4230
  br i1 %i.akn, label %middle.block4238, label %vector.body4231, !llvm.loop !454

middle.block4238:                                 ; preds = %vector.body4231
  %cmp.n4239 = icmp eq i64 %.pr.pre205276280.i, %n.vec4230
  br i1 %cmp.n4239, label %tg3__memcpy.exit170.loopexit.i, label %vec.epilog.iter.check4246

vec.epilog.iter.check4246:                        ; preds = %middle.block4238
  %min.epilog.iters.check4247 = icmp eq i64 %i.akh, 0
  br i1 %min.epilog.iters.check4247, label %.lr.ph.i164.i.preheader, label %vec.epilog.ph4248, !prof !46

vec.epilog.ph4248:                                ; preds = %vector.main.loop.iter.check4227, %vec.epilog.iter.check4246
  %vec.epilog.resume.val4240 = phi i64 [ %n.vec4230, %vec.epilog.iter.check4246 ], [ 0, %vector.main.loop.iter.check4227 ]
  %n.vec4249 = and i64 %.pr.pre205276280.i, -4    ; 4 uses
  %i.ako = getelementptr i8, ptr %i.akd, i64 %n.vec4249
  %i.akp = getelementptr i8, ptr %i.akc, i64 %n.vec4249
  %i.akq = and i64 %.pr.pre205276280.i, 3
  br label %vec.epilog.vector.body4250

vec.epilog.vector.body4250:                       ; preds = %vec.epilog.vector.body4250, %vec.epilog.ph4248
  %index4251 = phi i64 [ %vec.epilog.resume.val4240, %vec.epilog.ph4248 ], [ %index.next4255, %vec.epilog.vector.body4250 ] ; 3 uses
  %next.gep4252 = getelementptr i8, ptr %i.akd, i64 %index4251
  %next.gep4253 = getelementptr i8, ptr %i.akc, i64 %index4251
  %wide.load4254 = load <4 x i8>, ptr %next.gep4252, align 1, !tbaa !37
  store <4 x i8> %wide.load4254, ptr %next.gep4253, align 1, !tbaa !37
  %index.next4255 = add nuw i64 %index4251, 4     ; 2 uses
  %i.akr = icmp eq i64 %index.next4255, %n.vec4249
  br i1 %i.akr, label %vec.epilog.middle.block4256, label %vec.epilog.vector.body4250, !llvm.loop !455

vec.epilog.middle.block4256:                      ; preds = %vec.epilog.vector.body4250
  %cmp.n4257 = icmp eq i64 %.pr.pre205276280.i, %n.vec4249
  br i1 %cmp.n4257, label %tg3__memcpy.exit170.loopexit.i, label %.lr.ph.i164.i.preheader

.lr.ph.i164.i.preheader:                          ; preds = %iter.check4244, %vec.epilog.iter.check4246, %vec.epilog.middle.block4256
  %.010.i165.i.ph = phi ptr [ %i.akd, %iter.check4244 ], [ %i.aki, %vec.epilog.iter.check4246 ], [ %i.ako, %vec.epilog.middle.block4256 ] ; 2 uses
  %.059.i166.i.ph = phi ptr [ %i.akc, %iter.check4244 ], [ %i.akj, %vec.epilog.iter.check4246 ], [ %i.akp, %vec.epilog.middle.block4256 ] ; 2 uses
  %.068.i167.i.ph = phi i64 [ %.pr.pre205276280.i, %iter.check4244 ], [ %i.akk, %vec.epilog.iter.check4246 ], [ %i.akq, %vec.epilog.middle.block4256 ] ; 4 uses
  %i.aks = add i64 %.068.i167.i.ph, -1
  %xtraiter4658 = and i64 %.068.i167.i.ph, 7      ; 2 uses
  %lcmp.mod4659.not = icmp eq i64 %xtraiter4658, 0
  br i1 %lcmp.mod4659.not, label %.lr.ph.i164.i.prol.loopexit, label %.lr.ph.i164.i.prol

.lr.ph.i164.i.prol:                               ; preds = %.lr.ph.i164.i.preheader, %.lr.ph.i164.i.prol
  %.010.i165.i.prol = phi ptr [ %i.aku, %.lr.ph.i164.i.prol ], [ %.010.i165.i.ph, %.lr.ph.i164.i.preheader ] ; 2 uses
  %.059.i166.i.prol = phi ptr [ %i.akw, %.lr.ph.i164.i.prol ], [ %.059.i166.i.ph, %.lr.ph.i164.i.preheader ] ; 2 uses
  %.068.i167.i.prol = phi i64 [ %i.akt, %.lr.ph.i164.i.prol ], [ %.068.i167.i.ph, %.lr.ph.i164.i.preheader ]
  %prol.iter4660 = phi i64 [ %prol.iter4660.next, %.lr.ph.i164.i.prol ], [ 0, %.lr.ph.i164.i.preheader ]
  %i.akt = add i64 %.068.i167.i.prol, -1          ; 2 uses
  %i.aku = getelementptr inbounds nuw i8, ptr %.010.i165.i.prol, i64 1 ; 2 uses
  %i.akv = load i8, ptr %.010.i165.i.prol, align 1, !tbaa !37
  %i.akw = getelementptr inbounds nuw i8, ptr %.059.i166.i.prol, i64 1 ; 2 uses
  store i8 %i.akv, ptr %.059.i166.i.prol, align 1, !tbaa !37
  %prol.iter4660.next = add i64 %prol.iter4660, 1 ; 2 uses
  %prol.iter4660.cmp.not = icmp eq i64 %prol.iter4660.next, %xtraiter4658
  br i1 %prol.iter4660.cmp.not, label %.lr.ph.i164.i.prol.loopexit, label %.lr.ph.i164.i.prol, !llvm.loop !456

.lr.ph.i164.i.prol.loopexit:                      ; preds = %.lr.ph.i164.i.prol, %.lr.ph.i164.i.preheader
  %.010.i165.i.unr = phi ptr [ %.010.i165.i.ph, %.lr.ph.i164.i.preheader ], [ %i.aku, %.lr.ph.i164.i.prol ]
  %.059.i166.i.unr = phi ptr [ %.059.i166.i.ph, %.lr.ph.i164.i.preheader ], [ %i.akw, %.lr.ph.i164.i.prol ]
  %.068.i167.i.unr = phi i64 [ %.068.i167.i.ph, %.lr.ph.i164.i.preheader ], [ %i.akt, %.lr.ph.i164.i.prol ]
  %i.akx = icmp ult i64 %i.aks, 7
  br i1 %i.akx, label %tg3__memcpy.exit170.loopexit.i, label %.lr.ph.i164.i

.lr.ph.i164.i:                                    ; preds = %.lr.ph.i164.i.prol.loopexit, %.lr.ph.i164.i
  %.010.i165.i = phi ptr [ %i.alu, %.lr.ph.i164.i ], [ %.010.i165.i.unr, %.lr.ph.i164.i.prol.loopexit ] ; 9 uses
  %.059.i166.i = phi ptr [ %i.alw, %.lr.ph.i164.i ], [ %.059.i166.i.unr, %.lr.ph.i164.i.prol.loopexit ] ; 9 uses
end_hunk_3
