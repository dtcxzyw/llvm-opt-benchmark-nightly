Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tinygltf/original/tester_v3_freestanding?download=true
inline.NumInlined: 896
inline.NumDeleted: 110
loop-unroll.NumCompletelyUnrolled: 183
loop-unroll.NumRuntimeUnrolled: 107
loop-unroll.NumUnrolled: 291
begin_hunk_0_@tg3__error_push:bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !122  ; 3 uses
  %.not27 = icmp ult i32 %i.b, %i.d
  %.pre = load ptr, ptr %0, align 8, !tbaa !69    ; 11 uses
  %.pre2 = ptrtoaddr ptr %.pre to i64
  br i1 %.not27, label %bb.h, label %bb.c

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
  %i.t = sub i64 %.pre2, %i.s
  %diff.check = icmp ugt i64 %i.t, -32
  br i1 %diff.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check3 = icmp samesign ult i64 %i.r, 32
  br i1 %min.iters.check3, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.u = and i64 %i.r, 28
  %n.vec = and i64 %i.r, 137438953440             ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.pre, i64 %index ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %wide.load = load <16 x i8>, ptr %i.v, align 1, !tbaa !37
  %wide.load4 = load <16 x i8>, ptr %i.w, align 1, !tbaa !37
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 %index ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store <16 x i8> %wide.load, ptr %i.x, align 1, !tbaa !37
  store <16 x i8> %wide.load4, ptr %i.y, align 1, !tbaa !37
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
  %n.vec5 = and i64 %i.r, 137438953468            ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index6 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next8, %vec.epilog.vector.body ] ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.pre, i64 %index6
  %wide.load7 = load <4 x i8>, ptr %i.aa, align 1, !tbaa !37
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 %index6
  store <4 x i8> %wide.load7, ptr %i.ab, align 1, !tbaa !37
  %index.next8 = add nuw i64 %index6, 4           ; 2 uses
  %i.ac = icmp eq i64 %index.next8, %n.vec5
  br i1 %i.ac, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !401

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n9 = icmp eq i64 %i.r, %n.vec5
  br i1 %cmp.n9, label %.loopexit.loopexit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.026.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec5, %vec.epilog.middle.block ] ; 3 uses
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
  %i.l = alloca i64, align 8                      ; 10 uses
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
  %.pre.i3922 = ptrtoaddr ptr %.pre.i to i64
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
  %i.bn = sub i64 %.pre.i3922, %i.bm
  %diff.check = icmp ugt i64 %i.bn, -32
  br i1 %diff.check, label %.lr.ph.i.i912.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check3923 = icmp samesign ult i64 %i.bl, 32
  br i1 %min.iters.check3923, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bo = and i64 %i.bl, 28
  %n.vec = and i64 %i.bl, 137438953440            ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %index ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %wide.load = load <16 x i8>, ptr %i.bp, align 1, !tbaa !37
  %wide.load3924 = load <16 x i8>, ptr %i.bq, align 1, !tbaa !37
  %i.br = getelementptr inbounds nuw i8, ptr %i.bk, i64 %index ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  store <16 x i8> %wide.load, ptr %i.br, align 1, !tbaa !37
  store <16 x i8> %wide.load3924, ptr %i.bs, align 1, !tbaa !37
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
  %n.vec3925 = and i64 %i.bl, 137438953468        ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index3926 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next3928, %vec.epilog.vector.body ] ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %index3926
  %wide.load3927 = load <4 x i8>, ptr %i.bu, align 1, !tbaa !37
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bk, i64 %index3926
  store <4 x i8> %wide.load3927, ptr %i.bv, align 1, !tbaa !37
  %index.next3928 = add nuw i64 %index3926, 4     ; 2 uses
  %i.bw = icmp eq i64 %index.next3928, %n.vec3925
  br i1 %i.bw, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !405

end_hunk_0
begin_hunk_1_@tg3__parse_from_json:tg3json__strlen_fallback.exit.i
  %.not751 = icmp eq ptr %i.df, null
  br i1 %.not751, label %tg3json__strlen_fallback.exit.i917, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dg = getelementptr inbounds nuw i8, ptr %2, i64 296
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 120
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !541
  %i.dj = tail call i32 %i.df(ptr noundef nonnull %i.dg, ptr noundef %i.di) #22
  %.not752 = icmp eq i32 %i.dj, 1
  br i1 %.not752, label %.critedge908, label %tg3json__strlen_fallback.exit.i917

tg3json__strlen_fallback.exit.i917:               ; preds = %bb.l, %bb.k, %bb.j
  %i.dk = getelementptr inbounds nuw i8, ptr %2, i64 264
  %i.dl = getelementptr inbounds nuw i8, ptr %2, i64 272
  tail call fastcc void @tg3__parse_string_array(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.46, ptr noundef %i.dk, ptr noundef %i.dl) #21
  %i.dm = getelementptr inbounds nuw i8, ptr %2, i64 280
  %i.dn = getelementptr inbounds nuw i8, ptr %2, i64 288
  tail call fastcc void @tg3__parse_string_array(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.47, ptr noundef %i.dm, ptr noundef %i.dn) #21
  %i.do = getelementptr inbounds nuw i8, ptr %2, i64 260 ; 3 uses
  store i32 -1, ptr %i.do, align 4, !tbaa !120
  tail call fastcc void @tg3__parse_int(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.48, ptr noundef %i.do, i32 noundef 0, ptr noundef nonnull @.str.45) #21
  %i.dp = load i32, ptr %1, align 8, !tbaa !40
  %.not18.i.i918 = icmp eq i32 %i.dp, 6
  br i1 %.not18.i.i918, label %.preheader.i.i920, label %tg3__json_is_array.exit.thread

.preheader.i.i920:                                ; preds = %tg3json__strlen_fallback.exit.i917
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !37 ; 2 uses
  %.not27.i.i921 = icmp eq i64 %i.dr, 0
  br i1 %.not27.i.i921, label %tg3__json_is_array.exit.thread, label %.lr.ph.split.i.i924.preheader

.lr.ph.split.i.i924.preheader:                    ; preds = %.preheader.i.i920
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !37 ; 2 uses
  br label %.lr.ph.split.i.i924

.lr.ph.split.i.i924:                              ; preds = %.lr.ph.split.i.i924.preheader, %tg3json__memcmp_fallback.exit.i.i926
  %.01425.i.i925 = phi i64 [ %i.em, %tg3json__memcmp_fallback.exit.i.i926 ], [ 0, %.lr.ph.split.i.i924.preheader ] ; 3 uses
  %i.du = getelementptr inbounds nuw [24 x i8], ptr %i.dt, i64 %.01425.i.i925 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !53
  %i.dx = icmp eq i64 %i.dw, 7
  br i1 %i.dx, label %.lr.ph.i.preheader.i.i928, label %tg3json__memcmp_fallback.exit.i.i926

.lr.ph.i.preheader.i.i928:                        ; preds = %.lr.ph.split.i.i924
  %i.dy = load ptr, ptr %i.du, align 8, !tbaa !52 ; 7 uses
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !37
  %.not14.i.i.i933 = icmp eq i8 %i.dz, 98
  br i1 %.not14.i.i.i933, label %.lr.ph.i.i.i929.1, label %tg3json__memcmp_fallback.exit.i.i926

.lr.ph.i.i.i929.1:                                ; preds = %.lr.ph.i.preheader.i.i928
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dy, i64 1
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
  %i.hg = load i64, ptr %i.i, align 8, !tbaa !30  ; 17 uses
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
  %.pre.i.i3931 = ptrtoaddr ptr %.pre.i.i to i64
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
  br i1 %.not27.i.i.i, label %.loopexit.i.i, label %iter.check3945

iter.check3945:                                   ; preds = %bb.af
  %min.iters.check3933 = icmp samesign ult i64 %i.ik, 4
  br i1 %min.iters.check3933, label %.lr.ph.i.i.i961.preheader, label %vector.memcheck3930

vector.memcheck3930:                              ; preds = %iter.check3945
  %i.il = add i64 %i.ib, add (i64 ptrtoaddr (ptr @test_heap to i64), i64 8)
  %i.im = sub i64 %.pre.i.i3931, %i.il
  %diff.check3932 = icmp ugt i64 %i.im, -32
  br i1 %diff.check3932, label %.lr.ph.i.i.i961.preheader, label %vector.main.loop.iter.check3934

vector.main.loop.iter.check3934:                  ; preds = %vector.memcheck3930
  %min.iters.check3935 = icmp samesign ult i64 %i.ik, 32
  br i1 %min.iters.check3935, label %vec.epilog.ph3949, label %vector.ph3936

vector.ph3936:                                    ; preds = %vector.main.loop.iter.check3934
  %i.in = and i64 %i.ik, 28
  %n.vec3937 = and i64 %i.ik, 137438953440        ; 4 uses
  br label %vector.body3938

vector.body3938:                                  ; preds = %vector.ph3936, %vector.body3938
  %index3939 = phi i64 [ 0, %vector.ph3936 ], [ %index.next3942, %vector.body3938 ] ; 3 uses
  %i.io = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 %index3939 ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 16
  %wide.load3940 = load <16 x i8>, ptr %i.io, align 1, !tbaa !37
  %wide.load3941 = load <16 x i8>, ptr %i.ip, align 1, !tbaa !37
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ij, i64 %index3939 ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 16
  store <16 x i8> %wide.load3940, ptr %i.iq, align 1, !tbaa !37
  store <16 x i8> %wide.load3941, ptr %i.ir, align 1, !tbaa !37
  %index.next3942 = add nuw i64 %index3939, 32    ; 2 uses
  %i.is = icmp eq i64 %index.next3942, %n.vec3937
  br i1 %i.is, label %middle.block3943, label %vector.body3938, !llvm.loop !408

middle.block3943:                                 ; preds = %vector.body3938
  %cmp.n3944 = icmp eq i64 %i.ik, %n.vec3937
  br i1 %cmp.n3944, label %.loopexit.loopexit.i.i, label %vec.epilog.iter.check3946

vec.epilog.iter.check3946:                        ; preds = %middle.block3943
  %min.epilog.iters.check3948 = icmp eq i64 %i.in, 0
  br i1 %min.epilog.iters.check3948, label %.lr.ph.i.i.i961.preheader, label %vec.epilog.ph3949, !prof !46

vec.epilog.ph3949:                                ; preds = %vector.main.loop.iter.check3934, %vec.epilog.iter.check3946
  %vec.epilog.resume.val3950 = phi i64 [ %n.vec3937, %vec.epilog.iter.check3946 ], [ 0, %vector.main.loop.iter.check3934 ]
  %n.vec3951 = and i64 %i.ik, 137438953468        ; 3 uses
  br label %vec.epilog.vector.body3952

vec.epilog.vector.body3952:                       ; preds = %vec.epilog.vector.body3952, %vec.epilog.ph3949
  %index3953 = phi i64 [ %vec.epilog.resume.val3950, %vec.epilog.ph3949 ], [ %index.next3955, %vec.epilog.vector.body3952 ] ; 3 uses
  %i.it = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 %index3953
  %wide.load3954 = load <4 x i8>, ptr %i.it, align 1, !tbaa !37
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ij, i64 %index3953
  store <4 x i8> %wide.load3954, ptr %i.iu, align 1, !tbaa !37
  %index.next3955 = add nuw i64 %index3953, 4     ; 2 uses
  %i.iv = icmp eq i64 %index.next3955, %n.vec3951
  br i1 %i.iv, label %vec.epilog.middle.block3956, label %vec.epilog.vector.body3952, !llvm.loop !409

vec.epilog.middle.block3956:                      ; preds = %vec.epilog.vector.body3952
  %cmp.n3957 = icmp eq i64 %i.ik, %n.vec3951
  br i1 %cmp.n3957, label %.loopexit.loopexit.i.i, label %.lr.ph.i.i.i961.preheader

.lr.ph.i.i.i961.preheader:                        ; preds = %iter.check3945, %vector.memcheck3930, %vec.epilog.iter.check3946, %vec.epilog.middle.block3956
  %.026.i.i.i.ph = phi i64 [ 0, %iter.check3945 ], [ 0, %vector.memcheck3930 ], [ %n.vec3937, %vec.epilog.iter.check3946 ], [ %n.vec3951, %vec.epilog.middle.block3956 ] ; 3 uses
  %xtraiter4630 = and i64 %i.ik, 3                ; 2 uses
  %lcmp.mod4631.not = icmp eq i64 %xtraiter4630, 0
  br i1 %lcmp.mod4631.not, label %.lr.ph.i.i.i961.prol.loopexit, label %.lr.ph.i.i.i961.prol

.lr.ph.i.i.i961.prol:                             ; preds = %.lr.ph.i.i.i961.preheader, %.lr.ph.i.i.i961.prol
  %.026.i.i.i.prol = phi i64 [ %i.iz, %.lr.ph.i.i.i961.prol ], [ %.026.i.i.i.ph, %.lr.ph.i.i.i961.preheader ] ; 3 uses
  %prol.iter4632 = phi i64 [ %prol.iter4632.next, %.lr.ph.i.i.i961.prol ], [ 0, %.lr.ph.i.i.i961.preheader ]
  %i.iw = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 %.026.i.i.i.prol
  %i.ix = load i8, ptr %i.iw, align 1, !tbaa !37
end_hunk_1
begin_hunk_2_@tg3__parse_from_json:tg3json__strlen_fallback.exit.i
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

.loopexit.loopexit.i2360:                         ; preds = %.lr.ph.i.i2357.prol.loopexit, %.lr.ph.i.i2357, %vec.epilog.middle.block4019, %middle.block4006
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
  br i1 %i.ki, label %tg3__error_push.exit.i, label %iter.check3975

iter.check3975:                                   ; preds = %bb.az
  %i.oi = load ptr, ptr %i.gt, align 8, !tbaa !165 ; 6 uses
  %min.iters.check3962 = icmp ult i64 %i.hg, 4
  %i.oj = ptrtoaddr ptr %i.oi to i64
  %i.ok = sub i64 %i.oj, %.020.i.i3960
  %diff.check3961 = icmp ugt i64 %i.ok, -32
  %or.cond = select i1 %min.iters.check3962, i1 true, i1 %diff.check3961
  br i1 %or.cond, label %.lr.ph.i.i957.preheader, label %vector.main.loop.iter.check3963

vector.main.loop.iter.check3963:                  ; preds = %iter.check3975
  %min.iters.check3964 = icmp ult i64 %i.hg, 32
  br i1 %min.iters.check3964, label %vec.epilog.ph3979, label %vector.ph3965

vector.ph3965:                                    ; preds = %vector.main.loop.iter.check3963
  %i.ol = and i64 %i.hg, 28
  %n.vec3966 = and i64 %i.hg, -32                 ; 5 uses
  %i.om = getelementptr i8, ptr %i.oi, i64 %n.vec3966
  %i.on = getelementptr i8, ptr %.020.i.i, i64 %n.vec3966
  %i.oo = and i64 %i.hg, 31
  br label %vector.body3967

vector.body3967:                                  ; preds = %vector.ph3965, %vector.body3967
  %index3968 = phi i64 [ 0, %vector.ph3965 ], [ %index.next3972, %vector.body3967 ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.oi, i64 %index3968 ; 2 uses
  %next.gep3969 = getelementptr i8, ptr %.020.i.i, i64 %index3968 ; 2 uses
  %i.op = getelementptr i8, ptr %next.gep, i64 16
  %wide.load3970 = load <16 x i8>, ptr %next.gep, align 1, !tbaa !37
  %wide.load3971 = load <16 x i8>, ptr %i.op, align 1, !tbaa !37
  %i.oq = getelementptr i8, ptr %next.gep3969, i64 16
  store <16 x i8> %wide.load3970, ptr %next.gep3969, align 1, !tbaa !37
  store <16 x i8> %wide.load3971, ptr %i.oq, align 1, !tbaa !37
  %index.next3972 = add nuw i64 %index3968, 32    ; 2 uses
  %i.or = icmp eq i64 %index.next3972, %n.vec3966
  br i1 %i.or, label %middle.block3973, label %vector.body3967, !llvm.loop !417

middle.block3973:                                 ; preds = %vector.body3967
  %cmp.n3974 = icmp eq i64 %i.hg, %n.vec3966
  br i1 %cmp.n3974, label %tg3__error_push.exit.i, label %vec.epilog.iter.check3976

vec.epilog.iter.check3976:                        ; preds = %middle.block3973
  %min.epilog.iters.check3978 = icmp eq i64 %i.ol, 0
  br i1 %min.epilog.iters.check3978, label %.lr.ph.i.i957.preheader, label %vec.epilog.ph3979, !prof !46

vec.epilog.ph3979:                                ; preds = %vector.main.loop.iter.check3963, %vec.epilog.iter.check3976
  %vec.epilog.resume.val3980 = phi i64 [ %n.vec3966, %vec.epilog.iter.check3976 ], [ 0, %vector.main.loop.iter.check3963 ]
  %n.vec3981 = and i64 %i.hg, -4                  ; 4 uses
  %i.os = getelementptr i8, ptr %i.oi, i64 %n.vec3981
  %i.ot = getelementptr i8, ptr %.020.i.i, i64 %n.vec3981
  %i.ou = and i64 %i.hg, 3
  br label %vec.epilog.vector.body3982

vec.epilog.vector.body3982:                       ; preds = %vec.epilog.vector.body3982, %vec.epilog.ph3979
  %index3983 = phi i64 [ %vec.epilog.resume.val3980, %vec.epilog.ph3979 ], [ %index.next3987, %vec.epilog.vector.body3982 ] ; 3 uses
  %next.gep3984 = getelementptr i8, ptr %i.oi, i64 %index3983
  %next.gep3985 = getelementptr i8, ptr %.020.i.i, i64 %index3983
  %wide.load3986 = load <4 x i8>, ptr %next.gep3984, align 1, !tbaa !37
  store <4 x i8> %wide.load3986, ptr %next.gep3985, align 1, !tbaa !37
  %index.next3987 = add nuw i64 %index3983, 4     ; 2 uses
  %i.ov = icmp eq i64 %index.next3987, %n.vec3981
  br i1 %i.ov, label %vec.epilog.middle.block3988, label %vec.epilog.vector.body3982, !llvm.loop !418

vec.epilog.middle.block3988:                      ; preds = %vec.epilog.vector.body3982
  %cmp.n3989 = icmp eq i64 %i.hg, %n.vec3981
  br i1 %cmp.n3989, label %tg3__error_push.exit.i, label %.lr.ph.i.i957.preheader

.lr.ph.i.i957.preheader:                          ; preds = %iter.check3975, %vec.epilog.iter.check3976, %vec.epilog.middle.block3988
  %.010.i.i.ph = phi ptr [ %i.oi, %iter.check3975 ], [ %i.om, %vec.epilog.iter.check3976 ], [ %i.os, %vec.epilog.middle.block3988 ] ; 2 uses
  %.059.i.i.ph = phi ptr [ %.020.i.i, %iter.check3975 ], [ %i.on, %vec.epilog.iter.check3976 ], [ %i.ot, %vec.epilog.middle.block3988 ] ; 2 uses
  %.068.i.i.ph = phi i64 [ %i.hg, %iter.check3975 ], [ %i.oo, %vec.epilog.iter.check3976 ], [ %i.ou, %vec.epilog.middle.block3988 ] ; 4 uses
  %i.ow = add i64 %.068.i.i.ph, -1
  %xtraiter4627 = and i64 %.068.i.i.ph, 7         ; 2 uses
  %lcmp.mod4628.not = icmp eq i64 %xtraiter4627, 0
  br i1 %lcmp.mod4628.not, label %.lr.ph.i.i957.prol.loopexit, label %.lr.ph.i.i957.prol

.lr.ph.i.i957.prol:                               ; preds = %.lr.ph.i.i957.preheader, %.lr.ph.i.i957.prol
  %.010.i.i.prol = phi ptr [ %i.oy, %.lr.ph.i.i957.prol ], [ %.010.i.i.ph, %.lr.ph.i.i957.preheader ] ; 2 uses
  %.059.i.i.prol = phi ptr [ %i.pa, %.lr.ph.i.i957.prol ], [ %.059.i.i.ph, %.lr.ph.i.i957.preheader ] ; 2 uses
  %.068.i.i.prol = phi i64 [ %i.ox, %.lr.ph.i.i957.prol ], [ %.068.i.i.ph, %.lr.ph.i.i957.preheader ]
  %prol.iter4629 = phi i64 [ %prol.iter4629.next, %.lr.ph.i.i957.prol ], [ 0, %.lr.ph.i.i957.preheader ]
  %i.ox = add i64 %.068.i.i.prol, -1              ; 2 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %.010.i.i.prol, i64 1 ; 2 uses
  %i.oz = load i8, ptr %.010.i.i.prol, align 1, !tbaa !37
  %i.pa = getelementptr inbounds nuw i8, ptr %.059.i.i.prol, i64 1 ; 2 uses
  store i8 %i.oz, ptr %.059.i.i.prol, align 1, !tbaa !37
  %prol.iter4629.next = add i64 %prol.iter4629, 1 ; 2 uses
  %prol.iter4629.cmp.not = icmp eq i64 %prol.iter4629.next, %xtraiter4627
  br i1 %prol.iter4629.cmp.not, label %.lr.ph.i.i957.prol.loopexit, label %.lr.ph.i.i957.prol, !llvm.loop !419

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

tg3__error_push.exit.i:                           ; preds = %.lr.ph.i.i957.prol.loopexit, %.lr.ph.i.i957, %middle.block3973, %vec.epilog.middle.block3988, %bb.az
  %i.qb = getelementptr inbounds nuw i8, ptr %i.he, i64 24
  store ptr %.020.i.i, ptr %i.qb, align 8, !tbaa !167
  %i.qc = getelementptr inbounds nuw i8, ptr %i.he, i64 32
  store i64 %i.hg, ptr %i.qc, align 8, !tbaa !168
  br label %bb.ef

bb.ba:                                            ; preds = %bb.v
  br i1 %i.ho, label %bb.ef, label %.thread.i

.thread.i:                                        ; preds = %bb.ba, %bb.w
  %i.qd = load ptr, ptr %i.hf, align 8, !tbaa !169 ; 27 uses
  %i.qe = ptrtoaddr ptr %i.qd to i64
  %i.qf = icmp ne ptr %i.qd, null                 ; 2 uses
  %i.qg = icmp ugt i32 %i.hn, 4
  %or.cond.i103.i = and i1 %i.qg, %i.qf
  br i1 %or.cond.i103.i, label %.preheader.i.i952, label %tg3_is_data_uri.exit.thread.i.a

.preheader.i.i952:                                ; preds = %.thread.i
  %i.qh = load i8, ptr %i.qd, align 1, !tbaa !37
  %.not14.i.i.i954 = icmp eq i8 %i.qh, 100
  br i1 %.not14.i.i.i954, label %.preheader.i.i952.1, label %tg3_is_data_uri.exit.thread.i.a

.preheader.i.i952.1:                              ; preds = %.preheader.i.i952
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qd, i64 1
  %i.qj = load i8, ptr %i.qi, align 1, !tbaa !37
  %.not14.i.i.i954.1 = icmp eq i8 %i.qj, 97
  br i1 %.not14.i.i.i954.1, label %.preheader.i.i952.2, label %tg3_is_data_uri.exit.thread.i.a

.preheader.i.i952.2:                              ; preds = %.preheader.i.i952.1
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qd, i64 2
  %i.ql = load i8, ptr %i.qk, align 1, !tbaa !37
  %.not14.i.i.i954.2 = icmp eq i8 %i.ql, 116
  br i1 %.not14.i.i.i954.2, label %.preheader.i.i952.3, label %tg3_is_data_uri.exit.thread.i.a

.preheader.i.i952.3:                              ; preds = %.preheader.i.i952.2
  %i.qm = getelementptr inbounds nuw i8, ptr %i.qd, i64 3
  %i.qn = load i8, ptr %i.qm, align 1, !tbaa !37
  %.not14.i.i.i954.3 = icmp eq i8 %i.qn, 97
  br i1 %.not14.i.i.i954.3, label %.preheader.i.i952.4, label %tg3_is_data_uri.exit.thread.i.a

.preheader.i.i952.4:                              ; preds = %.preheader.i.i952.3
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qd, i64 4
  %i.qp = load i8, ptr %i.qo, align 1, !tbaa !37
  %.not14.i.i.i954.4 = icmp eq i8 %i.qp, 58
  br i1 %.not14.i.i.i954.4, label %tg3__memset.exit108.i, label %tg3_is_data_uri.exit.thread.i.a

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
  br i1 %.not7.i.i.i.i, label %tg3__memcpy.exit.i.i.i, label %iter.check4096

iter.check4096:                                   ; preds = %bb.bc
  %min.iters.check4083 = icmp ult i64 %i.rf, 4
  br i1 %min.iters.check4083, label %.lr.ph.i.i.i.i.preheader, label %vector.main.loop.iter.check4084

vector.main.loop.iter.check4084:                  ; preds = %iter.check4096
  %min.iters.check4085 = icmp ult i64 %i.rf, 16
  br i1 %min.iters.check4085, label %vec.epilog.ph4100, label %vector.ph4086

vector.ph4086:                                    ; preds = %vector.main.loop.iter.check4084
  %i.rg = and i64 %spec.store.select.i.i.i, 12
  %n.vec4087 = and i64 %spec.store.select.i.i.i, 48 ; 5 uses
  %i.rh = getelementptr i8, ptr %.ptr51.i.i.i, i64 %n.vec4087
  %i.ri = getelementptr i8, ptr %i.gr, i64 %n.vec4087
  %i.rj = and i64 %spec.store.select.i.i.i, 15
  br label %vector.body4088

vector.body4088:                                  ; preds = %vector.ph4086, %vector.body4088
  %index4089 = phi i64 [ 0, %vector.ph4086 ], [ %index.next4093, %vector.body4088 ] ; 3 uses
  %next.gep4090 = getelementptr i8, ptr %.ptr51.i.i.i, i64 %index4089
  %next.gep4091 = getelementptr i8, ptr %i.gr, i64 %index4089
  %wide.load4092 = load <16 x i8>, ptr %next.gep4090, align 1, !tbaa !37
  store <16 x i8> %wide.load4092, ptr %next.gep4091, align 8, !tbaa !37
  %index.next4093 = add nuw i64 %index4089, 16    ; 2 uses
  %i.rk = icmp eq i64 %index.next4093, %n.vec4087
  br i1 %i.rk, label %middle.block4094, label %vector.body4088, !llvm.loop !422

middle.block4094:                                 ; preds = %vector.body4088
  %cmp.n4095 = icmp eq i64 %i.rf, %n.vec4087
  br i1 %cmp.n4095, label %tg3__memcpy.exit.i.i.i, label %vec.epilog.iter.check4097

vec.epilog.iter.check4097:                        ; preds = %middle.block4094
  %min.epilog.iters.check4099 = icmp eq i64 %i.rg, 0
  br i1 %min.epilog.iters.check4099, label %.lr.ph.i.i.i.i.preheader, label %vec.epilog.ph4100, !prof !543

vec.epilog.ph4100:                                ; preds = %vector.main.loop.iter.check4084, %vec.epilog.iter.check4097
  %vec.epilog.resume.val4101 = phi i64 [ %n.vec4087, %vec.epilog.iter.check4097 ], [ 0, %vector.main.loop.iter.check4084 ]
  %n.vec4102 = and i64 %spec.store.select.i.i.i, 60 ; 4 uses
  %i.rl = getelementptr i8, ptr %.ptr51.i.i.i, i64 %n.vec4102
  %i.rm = getelementptr i8, ptr %i.gr, i64 %n.vec4102
  %i.rn = and i64 %spec.store.select.i.i.i, 3
  br label %vec.epilog.vector.body4103

vec.epilog.vector.body4103:                       ; preds = %vec.epilog.vector.body4103, %vec.epilog.ph4100
  %index4104 = phi i64 [ %vec.epilog.resume.val4101, %vec.epilog.ph4100 ], [ %index.next4108, %vec.epilog.vector.body4103 ] ; 3 uses
  %next.gep4105 = getelementptr i8, ptr %.ptr51.i.i.i, i64 %index4104
  %next.gep4106 = getelementptr i8, ptr %i.gr, i64 %index4104
  %wide.load4107 = load <4 x i8>, ptr %next.gep4105, align 1, !tbaa !37
  store <4 x i8> %wide.load4107, ptr %next.gep4106, align 4, !tbaa !37
  %index.next4108 = add nuw i64 %index4104, 4     ; 2 uses
  %i.ro = icmp eq i64 %index.next4108, %n.vec4102
  br i1 %i.ro, label %vec.epilog.middle.block4109, label %vec.epilog.vector.body4103, !llvm.loop !423

vec.epilog.middle.block4109:                      ; preds = %vec.epilog.vector.body4103
  %cmp.n4110 = icmp eq i64 %i.rf, %n.vec4102
  br i1 %cmp.n4110, label %tg3__memcpy.exit.i.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %iter.check4096, %vec.epilog.iter.check4097, %vec.epilog.middle.block4109
  %.010.i.i.i.i.ph = phi ptr [ %.ptr51.i.i.i, %iter.check4096 ], [ %i.rh, %vec.epilog.iter.check4097 ], [ %i.rl, %vec.epilog.middle.block4109 ]
  %.059.i.i.i.i.ph = phi ptr [ %i.gr, %iter.check4096 ], [ %i.ri, %vec.epilog.iter.check4097 ], [ %i.rm, %vec.epilog.middle.block4109 ]
  %.068.i.i.i.i.ph = phi i64 [ %spec.store.select.i.i.i, %iter.check4096 ], [ %i.rj, %vec.epilog.iter.check4097 ], [ %i.rn, %vec.epilog.middle.block4109 ]
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

tg3__memcpy.exit.i.i.i:                           ; preds = %.lr.ph.i.i.i.i, %middle.block4094, %vec.epilog.middle.block4109, %bb.bc
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
  %.not14.i43.4.i.i.i = icmp eq i8 %i.sa, 54
  br i1 %.not14.i43.4.i.i.i, label %.preheader.5.i.i.i, label %tg3__decode_data_uri.exit.i

end_hunk_2
begin_hunk_3_@tg3__parse_from_json:tg3json__strlen_fallback.exit.i

bb.bv:                                            ; preds = %bb.bu
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vk, i64 8 ; 3 uses
  %i.vm = load i32, ptr %i.vl, align 8, !tbaa !68 ; 4 uses
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vk, i64 12 ; 2 uses
  %i.vo = load i32, ptr %i.vn, align 4, !tbaa !122 ; 3 uses
  %.not27.i115.i = icmp ult i32 %i.vm, %i.vo
  %.pre.i116.i = load ptr, ptr %i.vk, align 8, !tbaa !69 ; 11 uses
  %.pre.i116.i4023 = ptrtoaddr ptr %.pre.i116.i to i64
  br i1 %.not27.i115.i, label %bb.cb, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %.not28.i117.i = icmp eq i32 %i.vo, 0
  %i.vp = shl i32 %i.vo, 1
  %spec.select.i118.i = select i1 %.not28.i117.i, i32 16, i32 %i.vp ; 2 uses
  %i.vq = zext i32 %spec.select.i118.i to i64
  %i.vr = shl nuw nsw i64 %i.vq, 5                ; 4 uses
  %.not.i.i119.i = icmp eq ptr %.pre.i116.i, null
  %i.vs = or disjoint i64 %i.vr, 8
  %i.vt = load i64, ptr @test_heap_used, align 8, !tbaa !30 ; 4 uses
  %i.vu = add i64 %i.vt, %i.vs                    ; 3 uses
  %i.vv = icmp ugt i64 %i.vu, 524288              ; 2 uses
  br i1 %.not.i.i119.i, label %bb.bx, label %bb.bz

bb.bx:                                            ; preds = %bb.bw
  br i1 %i.vv, label %tg3__error_push.exit129.thread.i, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.vw = getelementptr inbounds nuw i8, ptr @test_heap, i64 %i.vt ; 2 uses
  store i64 %i.vr, ptr %i.vw, align 8, !tbaa !30
  store i64 %i.vu, ptr @test_heap_used, align 8, !tbaa !30
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vw, i64 8
  br label %.loopexit.i126.i

bb.bz:                                            ; preds = %bb.bw
  br i1 %i.vv, label %tg3__error_push.exit129.thread.i, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.vy = getelementptr inbounds i8, ptr %.pre.i116.i, i64 -8
  %i.vz = load i64, ptr %i.vy, align 8, !tbaa !30
  %i.wa = getelementptr inbounds nuw i8, ptr @test_heap, i64 %i.vt ; 2 uses
  store i64 %i.vr, ptr %i.wa, align 8, !tbaa !30
  store i64 %i.vu, ptr @test_heap_used, align 8, !tbaa !30
  %i.wb = getelementptr inbounds nuw i8, ptr %i.wa, i64 8 ; 9 uses
  %i.wc = call i64 @llvm.umin.i64(i64 %i.vz, i64 %i.vr) ; 11 uses
  %.not27.i.i120.i = icmp eq i64 %i.wc, 0
  br i1 %.not27.i.i120.i, label %.loopexit.i126.i, label %iter.check4037

iter.check4037:                                   ; preds = %bb.ca
  %min.iters.check4025 = icmp samesign ult i64 %i.wc, 4
  br i1 %min.iters.check4025, label %.lr.ph.i.i121.i.preheader, label %vector.memcheck4022

vector.memcheck4022:                              ; preds = %iter.check4037
  %i.wd = add i64 %i.vt, add (i64 ptrtoaddr (ptr @test_heap to i64), i64 8)
  %i.we = sub i64 %.pre.i116.i4023, %i.wd
  %diff.check4024 = icmp ugt i64 %i.we, -32
  br i1 %diff.check4024, label %.lr.ph.i.i121.i.preheader, label %vector.main.loop.iter.check4026

vector.main.loop.iter.check4026:                  ; preds = %vector.memcheck4022
  %min.iters.check4027 = icmp samesign ult i64 %i.wc, 32
  br i1 %min.iters.check4027, label %vec.epilog.ph4041, label %vector.ph4028

vector.ph4028:                                    ; preds = %vector.main.loop.iter.check4026
  %i.wf = and i64 %i.wc, 28
  %n.vec4029 = and i64 %i.wc, 137438953440        ; 4 uses
  br label %vector.body4030

vector.body4030:                                  ; preds = %vector.ph4028, %vector.body4030
  %index4031 = phi i64 [ 0, %vector.ph4028 ], [ %index.next4034, %vector.body4030 ] ; 3 uses
  %i.wg = getelementptr inbounds nuw i8, ptr %.pre.i116.i, i64 %index4031 ; 2 uses
  %i.wh = getelementptr inbounds nuw i8, ptr %i.wg, i64 16
  %wide.load4032 = load <16 x i8>, ptr %i.wg, align 1, !tbaa !37
  %wide.load4033 = load <16 x i8>, ptr %i.wh, align 1, !tbaa !37
  %i.wi = getelementptr inbounds nuw i8, ptr %i.wb, i64 %index4031 ; 2 uses
  %i.wj = getelementptr inbounds nuw i8, ptr %i.wi, i64 16
  store <16 x i8> %wide.load4032, ptr %i.wi, align 1, !tbaa !37
  store <16 x i8> %wide.load4033, ptr %i.wj, align 1, !tbaa !37
  %index.next4034 = add nuw i64 %index4031, 32    ; 2 uses
  %i.wk = icmp eq i64 %index.next4034, %n.vec4029
  br i1 %i.wk, label %middle.block4035, label %vector.body4030, !llvm.loop !431

middle.block4035:                                 ; preds = %vector.body4030
  %cmp.n4036 = icmp eq i64 %i.wc, %n.vec4029
  br i1 %cmp.n4036, label %.loopexit.loopexit.i124.i, label %vec.epilog.iter.check4038

vec.epilog.iter.check4038:                        ; preds = %middle.block4035
  %min.epilog.iters.check4040 = icmp eq i64 %i.wf, 0
  br i1 %min.epilog.iters.check4040, label %.lr.ph.i.i121.i.preheader, label %vec.epilog.ph4041, !prof !46

vec.epilog.ph4041:                                ; preds = %vector.main.loop.iter.check4026, %vec.epilog.iter.check4038
  %vec.epilog.resume.val4042 = phi i64 [ %n.vec4029, %vec.epilog.iter.check4038 ], [ 0, %vector.main.loop.iter.check4026 ]
  %n.vec4043 = and i64 %i.wc, 137438953468        ; 3 uses
  br label %vec.epilog.vector.body4044

vec.epilog.vector.body4044:                       ; preds = %vec.epilog.vector.body4044, %vec.epilog.ph4041
  %index4045 = phi i64 [ %vec.epilog.resume.val4042, %vec.epilog.ph4041 ], [ %index.next4047, %vec.epilog.vector.body4044 ] ; 3 uses
  %i.wl = getelementptr inbounds nuw i8, ptr %.pre.i116.i, i64 %index4045
  %wide.load4046 = load <4 x i8>, ptr %i.wl, align 1, !tbaa !37
  %i.wm = getelementptr inbounds nuw i8, ptr %i.wb, i64 %index4045
  store <4 x i8> %wide.load4046, ptr %i.wm, align 1, !tbaa !37
  %index.next4047 = add nuw i64 %index4045, 4     ; 2 uses
  %i.wn = icmp eq i64 %index.next4047, %n.vec4043
  br i1 %i.wn, label %vec.epilog.middle.block4048, label %vec.epilog.vector.body4044, !llvm.loop !432

vec.epilog.middle.block4048:                      ; preds = %vec.epilog.vector.body4044
  %cmp.n4049 = icmp eq i64 %i.wc, %n.vec4043
  br i1 %cmp.n4049, label %.loopexit.loopexit.i124.i, label %.lr.ph.i.i121.i.preheader

.lr.ph.i.i121.i.preheader:                        ; preds = %iter.check4037, %vector.memcheck4022, %vec.epilog.iter.check4038, %vec.epilog.middle.block4048
  %.026.i.i122.i.ph = phi i64 [ 0, %iter.check4037 ], [ 0, %vector.memcheck4022 ], [ %n.vec4029, %vec.epilog.iter.check4038 ], [ %n.vec4043, %vec.epilog.middle.block4048 ] ; 3 uses
  %xtraiter4621 = and i64 %i.wc, 3                ; 2 uses
  %lcmp.mod4622.not = icmp eq i64 %xtraiter4621, 0
  br i1 %lcmp.mod4622.not, label %.lr.ph.i.i121.i.prol.loopexit, label %.lr.ph.i.i121.i.prol

.lr.ph.i.i121.i.prol:                             ; preds = %.lr.ph.i.i121.i.preheader, %.lr.ph.i.i121.i.prol
  %.026.i.i122.i.prol = phi i64 [ %i.wr, %.lr.ph.i.i121.i.prol ], [ %.026.i.i122.i.ph, %.lr.ph.i.i121.i.preheader ] ; 3 uses
  %prol.iter4623 = phi i64 [ %prol.iter4623.next, %.lr.ph.i.i121.i.prol ], [ 0, %.lr.ph.i.i121.i.preheader ]
  %i.wo = getelementptr inbounds nuw i8, ptr %.pre.i116.i, i64 %.026.i.i122.i.prol
  %i.wp = load i8, ptr %i.wo, align 1, !tbaa !37
  %i.wq = getelementptr inbounds nuw i8, ptr %i.wb, i64 %.026.i.i122.i.prol
  store i8 %i.wp, ptr %i.wq, align 1, !tbaa !37
  %i.wr = add nuw nsw i64 %.026.i.i122.i.prol, 1  ; 2 uses
  %prol.iter4623.next = add i64 %prol.iter4623, 1 ; 2 uses
  %prol.iter4623.cmp.not = icmp eq i64 %prol.iter4623.next, %xtraiter4621
  br i1 %prol.iter4623.cmp.not, label %.lr.ph.i.i121.i.prol.loopexit, label %.lr.ph.i.i121.i.prol, !llvm.loop !433

.lr.ph.i.i121.i.prol.loopexit:                    ; preds = %.lr.ph.i.i121.i.prol, %.lr.ph.i.i121.i.preheader
  %.026.i.i122.i.unr = phi i64 [ %.026.i.i122.i.ph, %.lr.ph.i.i121.i.preheader ], [ %i.wr, %.lr.ph.i.i121.i.prol ]
  %i.ws = sub nsw i64 %.026.i.i122.i.ph, %i.wc
  %i.wt = icmp ugt i64 %i.ws, -4
  br i1 %i.wt, label %.loopexit.loopexit.i124.i, label %.lr.ph.i.i121.i

.lr.ph.i.i121.i:                                  ; preds = %.lr.ph.i.i121.i.prol.loopexit, %.lr.ph.i.i121.i
  %.026.i.i122.i = phi i64 [ %i.xj, %.lr.ph.i.i121.i ], [ %.026.i.i122.i.unr, %.lr.ph.i.i121.i.prol.loopexit ] ; 6 uses
  %i.wu = getelementptr inbounds nuw i8, ptr %.pre.i116.i, i64 %.026.i.i122.i
  %i.wv = load i8, ptr %i.wu, align 1, !tbaa !37
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wb, i64 %.026.i.i122.i
  store i8 %i.wv, ptr %i.ww, align 1, !tbaa !37
  %i.wx = add nuw nsw i64 %.026.i.i122.i, 1       ; 2 uses
  %i.wy = getelementptr inbounds nuw i8, ptr %.pre.i116.i, i64 %i.wx
  %i.wz = load i8, ptr %i.wy, align 1, !tbaa !37
  %i.xa = getelementptr inbounds nuw i8, ptr %i.wb, i64 %i.wx
  store i8 %i.wz, ptr %i.xa, align 1, !tbaa !37
  %i.xb = add nuw nsw i64 %.026.i.i122.i, 2       ; 2 uses
  %i.xc = getelementptr inbounds nuw i8, ptr %.pre.i116.i, i64 %i.xb
  %i.xd = load i8, ptr %i.xc, align 1, !tbaa !37
  %i.xe = getelementptr inbounds nuw i8, ptr %i.wb, i64 %i.xb
  store i8 %i.xd, ptr %i.xe, align 1, !tbaa !37
  %i.xf = add nuw nsw i64 %.026.i.i122.i, 3       ; 2 uses
  %i.xg = getelementptr inbounds nuw i8, ptr %.pre.i116.i, i64 %i.xf
  %i.xh = load i8, ptr %i.xg, align 1, !tbaa !37
  %i.xi = getelementptr inbounds nuw i8, ptr %i.wb, i64 %i.xf
  store i8 %i.xh, ptr %i.xi, align 1, !tbaa !37
  %i.xj = add nuw nsw i64 %.026.i.i122.i, 4       ; 2 uses
  %exitcond.not.i.i123.i.3 = icmp eq i64 %i.xj, %i.wc
  br i1 %exitcond.not.i.i123.i.3, label %.loopexit.loopexit.i124.i, label %.lr.ph.i.i121.i, !llvm.loop !434

.loopexit.loopexit.i124.i:                        ; preds = %.lr.ph.i.i121.i.prol.loopexit, %.lr.ph.i.i121.i, %vec.epilog.middle.block4048, %middle.block4035
  %.pre33.pre.i125.i = load i32, ptr %i.vl, align 8, !tbaa !68
  br label %.loopexit.i126.i

.loopexit.i126.i:                                 ; preds = %.loopexit.loopexit.i124.i, %bb.ca, %bb.by
  %.pre33.i127.i = phi i32 [ %i.vm, %bb.by ], [ %i.vm, %bb.ca ], [ %.pre33.pre.i125.i, %.loopexit.loopexit.i124.i ]
  %.018.i.ph.i128.i = phi ptr [ %i.vx, %bb.by ], [ %i.wb, %bb.ca ], [ %i.wb, %.loopexit.loopexit.i124.i ] ; 2 uses
  store ptr %.018.i.ph.i128.i, ptr %i.vk, align 8, !tbaa !69
  store i32 %spec.select.i118.i, ptr %i.vn, align 4, !tbaa !122
  br label %bb.cb

bb.cb:                                            ; preds = %.loopexit.i126.i, %bb.bv
  %i.xk = phi i32 [ %.pre33.i127.i, %.loopexit.i126.i ], [ %i.vm, %bb.bv ] ; 2 uses
  %i.xl = phi ptr [ %.018.i.ph.i128.i, %.loopexit.i126.i ], [ %.pre.i116.i, %bb.bv ]
  %i.xm = add i32 %i.xk, 1
  store i32 %i.xm, ptr %i.vl, align 8, !tbaa !68
  %i.xn = zext i32 %i.xk to i64
  %i.xo = getelementptr inbounds nuw [32 x i8], ptr %i.xl, i64 %i.xn ; 5 uses
  store i32 2, ptr %i.xo, align 8, !tbaa !124
  %i.xp = getelementptr inbounds nuw i8, ptr %i.xo, i64 4
  store i32 51, ptr %i.xp, align 4, !tbaa !125
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xo, i64 8
  store ptr @.str.71, ptr %i.xq, align 8, !tbaa !126
  %i.xr = getelementptr inbounds nuw i8, ptr %i.xo, i64 16
  store ptr null, ptr %i.xr, align 8, !tbaa !127
  %i.xs = getelementptr inbounds nuw i8, ptr %i.xo, i64 24
  store i64 -1, ptr %i.xs, align 8, !tbaa !128
  %i.xt = getelementptr inbounds nuw i8, ptr %i.vk, i64 16
  store i32 1, ptr %i.xt, align 8, !tbaa !67
  br label %tg3__error_push.exit129.thread.i

tg3__error_push.exit129.thread.i:                 ; preds = %bb.cb, %bb.bz, %bb.bx, %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #20
  br label %tg3__parse_buffer.exit

tg3__error_push.exit129.i:                        ; preds = %tg3__decode_data_uri.exit.i
  %i.xu = getelementptr inbounds nuw i8, ptr %i.he, i64 24
  store ptr %.015.i.i, ptr %i.xu, align 8, !tbaa !167
  %i.xv = getelementptr inbounds nuw i8, ptr %i.he, i64 32
  store i64 %storemerge.i.i, ptr %i.xv, align 8, !tbaa !168
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #20
  br label %bb.ef

tg3_is_data_uri.exit.thread.i.a:                  ; preds = %.preheader.i.i952, %.preheader.i.i952.1, %.preheader.i.i952.2, %.preheader.i.i952.3, %.preheader.i.i952.4, %.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #20
  store ptr null, ptr %i.k, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #20
  store i64 0, ptr %i.l, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #20
  %i.xw = load ptr, ptr %i.gk, align 8, !tbaa !547 ; 2 uses
  %.not.i130.i.a = icmp eq ptr %i.xw, null
  br i1 %.not.i130.i.a, label %bb.cc, label %bb.ck

bb.cc:                                            ; preds = %tg3_is_data_uri.exit.thread.i.a
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
  %.pre.i.i.i4115 = ptrtoaddr ptr %.pre.i.i.i to i64
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
  br i1 %.not27.i.i.i.i, label %.loopexit.i.i.i, label %iter.check4129

iter.check4129:                                   ; preds = %bb.ci
  %min.iters.check4117 = icmp samesign ult i64 %i.yp, 4
  br i1 %min.iters.check4117, label %.lr.ph.i.i.i146.i.preheader, label %vector.memcheck4114

vector.memcheck4114:                              ; preds = %iter.check4129
  %i.yq = add i64 %i.yg, add (i64 ptrtoaddr (ptr @test_heap to i64), i64 8)
  %i.yr = sub i64 %.pre.i.i.i4115, %i.yq
  %diff.check4116 = icmp ugt i64 %i.yr, -32
  br i1 %diff.check4116, label %.lr.ph.i.i.i146.i.preheader, label %vector.main.loop.iter.check4118

vector.main.loop.iter.check4118:                  ; preds = %vector.memcheck4114
  %min.iters.check4119 = icmp samesign ult i64 %i.yp, 32
  br i1 %min.iters.check4119, label %vec.epilog.ph4133, label %vector.ph4120

vector.ph4120:                                    ; preds = %vector.main.loop.iter.check4118
  %i.ys = and i64 %i.yp, 28
  %n.vec4121 = and i64 %i.yp, 137438953440        ; 4 uses
  br label %vector.body4122

vector.body4122:                                  ; preds = %vector.ph4120, %vector.body4122
  %index4123 = phi i64 [ 0, %vector.ph4120 ], [ %index.next4126, %vector.body4122 ] ; 3 uses
  %i.yt = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 %index4123 ; 2 uses
  %i.yu = getelementptr inbounds nuw i8, ptr %i.yt, i64 16
  %wide.load4124 = load <16 x i8>, ptr %i.yt, align 1, !tbaa !37
  %wide.load4125 = load <16 x i8>, ptr %i.yu, align 1, !tbaa !37
  %i.yv = getelementptr inbounds nuw i8, ptr %i.yo, i64 %index4123 ; 2 uses
  %i.yw = getelementptr inbounds nuw i8, ptr %i.yv, i64 16
  store <16 x i8> %wide.load4124, ptr %i.yv, align 1, !tbaa !37
  store <16 x i8> %wide.load4125, ptr %i.yw, align 1, !tbaa !37
  %index.next4126 = add nuw i64 %index4123, 32    ; 2 uses
  %i.yx = icmp eq i64 %index.next4126, %n.vec4121
  br i1 %i.yx, label %middle.block4127, label %vector.body4122, !llvm.loop !435

middle.block4127:                                 ; preds = %vector.body4122
  %cmp.n4128 = icmp eq i64 %i.yp, %n.vec4121
  br i1 %cmp.n4128, label %.loopexit.loopexit.i.i.i, label %vec.epilog.iter.check4130

vec.epilog.iter.check4130:                        ; preds = %middle.block4127
  %min.epilog.iters.check4132 = icmp eq i64 %i.ys, 0
  br i1 %min.epilog.iters.check4132, label %.lr.ph.i.i.i146.i.preheader, label %vec.epilog.ph4133, !prof !46

vec.epilog.ph4133:                                ; preds = %vector.main.loop.iter.check4118, %vec.epilog.iter.check4130
  %vec.epilog.resume.val4134 = phi i64 [ %n.vec4121, %vec.epilog.iter.check4130 ], [ 0, %vector.main.loop.iter.check4118 ]
  %n.vec4135 = and i64 %i.yp, 137438953468        ; 3 uses
  br label %vec.epilog.vector.body4136

vec.epilog.vector.body4136:                       ; preds = %vec.epilog.vector.body4136, %vec.epilog.ph4133
  %index4137 = phi i64 [ %vec.epilog.resume.val4134, %vec.epilog.ph4133 ], [ %index.next4139, %vec.epilog.vector.body4136 ] ; 3 uses
  %i.yy = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 %index4137
  %wide.load4138 = load <4 x i8>, ptr %i.yy, align 1, !tbaa !37
  %i.yz = getelementptr inbounds nuw i8, ptr %i.yo, i64 %index4137
  store <4 x i8> %wide.load4138, ptr %i.yz, align 1, !tbaa !37
  %index.next4139 = add nuw i64 %index4137, 4     ; 2 uses
  %i.za = icmp eq i64 %index.next4139, %n.vec4135
  br i1 %i.za, label %vec.epilog.middle.block4140, label %vec.epilog.vector.body4136, !llvm.loop !436

vec.epilog.middle.block4140:                      ; preds = %vec.epilog.vector.body4136
  %cmp.n4141 = icmp eq i64 %i.yp, %n.vec4135
  br i1 %cmp.n4141, label %.loopexit.loopexit.i.i.i, label %.lr.ph.i.i.i146.i.preheader

.lr.ph.i.i.i146.i.preheader:                      ; preds = %iter.check4129, %vector.memcheck4114, %vec.epilog.iter.check4130, %vec.epilog.middle.block4140
  %.026.i.i.i.i.ph = phi i64 [ 0, %iter.check4129 ], [ 0, %vector.memcheck4114 ], [ %n.vec4121, %vec.epilog.iter.check4130 ], [ %n.vec4135, %vec.epilog.middle.block4140 ] ; 3 uses
  %xtraiter4618 = and i64 %i.yp, 3                ; 2 uses
  %lcmp.mod4619.not = icmp eq i64 %xtraiter4618, 0
  br i1 %lcmp.mod4619.not, label %.lr.ph.i.i.i146.i.prol.loopexit, label %.lr.ph.i.i.i146.i.prol

.lr.ph.i.i.i146.i.prol:                           ; preds = %.lr.ph.i.i.i146.i.preheader, %.lr.ph.i.i.i146.i.prol
  %.026.i.i.i.i.prol = phi i64 [ %i.ze, %.lr.ph.i.i.i146.i.prol ], [ %.026.i.i.i.i.ph, %.lr.ph.i.i.i146.i.preheader ] ; 3 uses
  %prol.iter4620 = phi i64 [ %prol.iter4620.next, %.lr.ph.i.i.i146.i.prol ], [ 0, %.lr.ph.i.i.i146.i.preheader ]
  %i.zb = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 %.026.i.i.i.i.prol
  %i.zc = load i8, ptr %i.zb, align 1, !tbaa !37
  %i.zd = getelementptr inbounds nuw i8, ptr %i.yo, i64 %.026.i.i.i.i.prol
  store i8 %i.zc, ptr %i.zd, align 1, !tbaa !37
  %i.ze = add nuw nsw i64 %.026.i.i.i.i.prol, 1   ; 2 uses
  %prol.iter4620.next = add i64 %prol.iter4620, 1 ; 2 uses
  %prol.iter4620.cmp.not = icmp eq i64 %prol.iter4620.next, %xtraiter4618
  br i1 %prol.iter4620.cmp.not, label %.lr.ph.i.i.i146.i.prol.loopexit, label %.lr.ph.i.i.i146.i.prol, !llvm.loop !437

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

.loopexit.loopexit.i.i.i:                         ; preds = %.lr.ph.i.i.i146.i.prol.loopexit, %.lr.ph.i.i.i146.i, %vec.epilog.middle.block4140, %middle.block4127
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

bb.ck:                                            ; preds = %tg3_is_data_uri.exit.thread.i.a
  br i1 %i.qf, label %bb.cl, label %.loopexit.i132.i

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
  %.pre.i69.i.i4144 = ptrtoaddr ptr %.pre.i69.i.i to i64
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
  br i1 %.not27.i.i73.i.i, label %.loopexit.i79.i.i, label %iter.check4158

iter.check4158:                                   ; preds = %bb.de
  %min.iters.check4146 = icmp samesign ult i64 %i.acj, 4
  br i1 %min.iters.check4146, label %.lr.ph.i.i74.i.i.preheader, label %vector.memcheck4143

vector.memcheck4143:                              ; preds = %iter.check4158
  %i.ack = add i64 %i.aca, add (i64 ptrtoaddr (ptr @test_heap to i64), i64 8)
  %i.acl = sub i64 %.pre.i69.i.i4144, %i.ack
  %diff.check4145 = icmp ugt i64 %i.acl, -32
  br i1 %diff.check4145, label %.lr.ph.i.i74.i.i.preheader, label %vector.main.loop.iter.check4147

vector.main.loop.iter.check4147:                  ; preds = %vector.memcheck4143
  %min.iters.check4148 = icmp samesign ult i64 %i.acj, 32
  br i1 %min.iters.check4148, label %vec.epilog.ph4162, label %vector.ph4149

vector.ph4149:                                    ; preds = %vector.main.loop.iter.check4147
  %i.acm = and i64 %i.acj, 28
  %n.vec4150 = and i64 %i.acj, 137438953440       ; 4 uses
  br label %vector.body4151

vector.body4151:                                  ; preds = %vector.ph4149, %vector.body4151
  %index4152 = phi i64 [ 0, %vector.ph4149 ], [ %index.next4155, %vector.body4151 ] ; 3 uses
  %i.acn = getelementptr inbounds nuw i8, ptr %.pre.i69.i.i, i64 %index4152 ; 2 uses
  %i.aco = getelementptr inbounds nuw i8, ptr %i.acn, i64 16
  %wide.load4153 = load <16 x i8>, ptr %i.acn, align 1, !tbaa !37
  %wide.load4154 = load <16 x i8>, ptr %i.aco, align 1, !tbaa !37
  %i.acp = getelementptr inbounds nuw i8, ptr %i.aci, i64 %index4152 ; 2 uses
  %i.acq = getelementptr inbounds nuw i8, ptr %i.acp, i64 16
end_hunk_3
begin_hunk_4_@tg3__parse_from_json:tg3json__strlen_fallback.exit.i
  %i.afa = load i8, ptr %.010.i.i133.i, align 1, !tbaa !37
  %i.afb = getelementptr inbounds nuw i8, ptr %.059.i.i134.i, i64 1
  store i8 %i.afa, ptr %.059.i.i134.i, align 1, !tbaa !37
  %i.afc = getelementptr inbounds nuw i8, ptr %.010.i.i133.i, i64 2
  %i.afd = load i8, ptr %i.aez, align 1, !tbaa !37
  %i.afe = getelementptr inbounds nuw i8, ptr %.059.i.i134.i, i64 2
  store i8 %i.afd, ptr %i.afb, align 1, !tbaa !37
  %i.aff = getelementptr inbounds nuw i8, ptr %.010.i.i133.i, i64 3
  %i.afg = load i8, ptr %i.afc, align 1, !tbaa !37
  %i.afh = getelementptr inbounds nuw i8, ptr %.059.i.i134.i, i64 3
  store i8 %i.afg, ptr %i.afe, align 1, !tbaa !37
  %i.afi = getelementptr inbounds nuw i8, ptr %.010.i.i133.i, i64 4
  %i.afj = load i8, ptr %i.aff, align 1, !tbaa !37
  %i.afk = getelementptr inbounds nuw i8, ptr %.059.i.i134.i, i64 4
  store i8 %i.afj, ptr %i.afh, align 1, !tbaa !37
  %i.afl = getelementptr inbounds nuw i8, ptr %.010.i.i133.i, i64 5
  %i.afm = load i8, ptr %i.afi, align 1, !tbaa !37
  %i.afn = getelementptr inbounds nuw i8, ptr %.059.i.i134.i, i64 5
  store i8 %i.afm, ptr %i.afk, align 1, !tbaa !37
  %i.afo = getelementptr inbounds nuw i8, ptr %.010.i.i133.i, i64 6
  %i.afp = load i8, ptr %i.afl, align 1, !tbaa !37
  %i.afq = getelementptr inbounds nuw i8, ptr %.059.i.i134.i, i64 6
  store i8 %i.afp, ptr %i.afn, align 1, !tbaa !37
  %i.afr = getelementptr inbounds nuw i8, ptr %.010.i.i133.i, i64 7
  %i.afs = load i8, ptr %i.afo, align 1, !tbaa !37
  %i.aft = getelementptr inbounds nuw i8, ptr %.059.i.i134.i, i64 7
  store i8 %i.afs, ptr %i.afq, align 1, !tbaa !37
  %i.afu = add nsw i64 %.068.i.i135.i, -8         ; 2 uses
  %i.afv = getelementptr inbounds nuw i8, ptr %.010.i.i133.i, i64 8
  %i.afw = load i8, ptr %i.afr, align 1, !tbaa !37
  %i.afx = getelementptr inbounds nuw i8, ptr %.059.i.i134.i, i64 8
  store i8 %i.afw, ptr %i.aft, align 1, !tbaa !37
  %.not.i84.i.i.7 = icmp eq i64 %i.afu, 0
  br i1 %.not.i84.i.i.7, label %tg3__memcpy.exit.i136.i, label %.lr.ph.i83.i.i, !llvm.loop !448

tg3__memcpy.exit.i136.i:                          ; preds = %.lr.ph.i83.i.i.prol.loopexit, %.lr.ph.i83.i.i, %vec.epilog.middle.block4298, %middle.block4283
  %i.afy = add i32 %i.aec, -1
  %i.afz = zext i32 %i.afy to i64
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
  br i1 %i.agf, label %tg3__load_external_file.exit.thread.i, label %iter.check4251

iter.check4251:                                   ; preds = %bb.di
  %i.agg = zext i32 %.0.i137.i to i64             ; 2 uses
  %i.agh = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.agg ; 6 uses
  %min.iters.check4237 = icmp ult i32 %i.hn, 4
  br i1 %min.iters.check4237, label %.lr.ph.i86.i.i.preheader, label %vector.memcheck4235

vector.memcheck4235:                              ; preds = %iter.check4251
  %i.agi = add i64 %i.h, %i.agg
  %i.agj = sub i64 %i.qe, %i.agi
  %diff.check4236 = icmp ugt i64 %i.agj, -32
  br i1 %diff.check4236, label %.lr.ph.i86.i.i.preheader, label %vector.main.loop.iter.check4238

vector.main.loop.iter.check4238:                  ; preds = %vector.memcheck4235
  %min.iters.check4239 = icmp ult i32 %i.hn, 32
  br i1 %min.iters.check4239, label %vec.epilog.ph4255, label %vector.ph4240

vector.ph4240:                                    ; preds = %vector.main.loop.iter.check4238
  %i.agk = and i64 %i.aah, 28
  %n.vec4241 = and i64 %i.aah, 4294967264         ; 5 uses
  %i.agl = getelementptr i8, ptr %i.qd, i64 %n.vec4241
  %i.agm = getelementptr i8, ptr %i.agh, i64 %n.vec4241
  %i.agn = and i64 %i.aah, 31
  br label %vector.body4242

vector.body4242:                                  ; preds = %vector.ph4240, %vector.body4242
  %index4243 = phi i64 [ 0, %vector.ph4240 ], [ %index.next4248, %vector.body4242 ] ; 3 uses
  %next.gep4244 = getelementptr i8, ptr %i.qd, i64 %index4243 ; 2 uses
  %next.gep4245 = getelementptr i8, ptr %i.agh, i64 %index4243 ; 2 uses
  %i.ago = getelementptr i8, ptr %next.gep4244, i64 16
  %wide.load4246 = load <16 x i8>, ptr %next.gep4244, align 1, !tbaa !37
  %wide.load4247 = load <16 x i8>, ptr %i.ago, align 1, !tbaa !37
  %i.agp = getelementptr i8, ptr %next.gep4245, i64 16
  store <16 x i8> %wide.load4246, ptr %next.gep4245, align 1, !tbaa !37
  store <16 x i8> %wide.load4247, ptr %i.agp, align 1, !tbaa !37
  %index.next4248 = add nuw i64 %index4243, 32    ; 2 uses
  %i.agq = icmp eq i64 %index.next4248, %n.vec4241
  br i1 %i.agq, label %middle.block4249, label %vector.body4242, !llvm.loop !449

middle.block4249:                                 ; preds = %vector.body4242
  %cmp.n4250 = icmp eq i64 %n.vec4241, %i.aah
  br i1 %cmp.n4250, label %tg3__memcpy.exit91.i.i, label %vec.epilog.iter.check4252

vec.epilog.iter.check4252:                        ; preds = %middle.block4249
  %min.epilog.iters.check4254 = icmp eq i64 %i.agk, 0
  br i1 %min.epilog.iters.check4254, label %.lr.ph.i86.i.i.preheader, label %vec.epilog.ph4255, !prof !46

vec.epilog.ph4255:                                ; preds = %vector.main.loop.iter.check4238, %vec.epilog.iter.check4252
  %vec.epilog.resume.val4256 = phi i64 [ %n.vec4241, %vec.epilog.iter.check4252 ], [ 0, %vector.main.loop.iter.check4238 ]
  %n.vec4257 = and i64 %i.aah, 4294967292         ; 4 uses
  %i.agr = getelementptr i8, ptr %i.qd, i64 %n.vec4257
  %i.ags = getelementptr i8, ptr %i.agh, i64 %n.vec4257
  %i.agt = and i64 %i.aah, 3
  br label %vec.epilog.vector.body4258

vec.epilog.vector.body4258:                       ; preds = %vec.epilog.vector.body4258, %vec.epilog.ph4255
  %index4259 = phi i64 [ %vec.epilog.resume.val4256, %vec.epilog.ph4255 ], [ %index.next4263, %vec.epilog.vector.body4258 ] ; 3 uses
  %next.gep4260 = getelementptr i8, ptr %i.qd, i64 %index4259
  %next.gep4261 = getelementptr i8, ptr %i.agh, i64 %index4259
  %wide.load4262 = load <4 x i8>, ptr %next.gep4260, align 1, !tbaa !37
  store <4 x i8> %wide.load4262, ptr %next.gep4261, align 1, !tbaa !37
  %index.next4263 = add nuw i64 %index4259, 4     ; 2 uses
  %i.agu = icmp eq i64 %index.next4263, %n.vec4257
  br i1 %i.agu, label %vec.epilog.middle.block4264, label %vec.epilog.vector.body4258, !llvm.loop !450

vec.epilog.middle.block4264:                      ; preds = %vec.epilog.vector.body4258
  %cmp.n4265 = icmp eq i64 %n.vec4257, %i.aah
  br i1 %cmp.n4265, label %tg3__memcpy.exit91.i.i, label %.lr.ph.i86.i.i.preheader

.lr.ph.i86.i.i.preheader:                         ; preds = %iter.check4251, %vector.memcheck4235, %vec.epilog.iter.check4252, %vec.epilog.middle.block4264
  %.010.i87.i.i.ph = phi ptr [ %i.qd, %iter.check4251 ], [ %i.qd, %vector.memcheck4235 ], [ %i.agl, %vec.epilog.iter.check4252 ], [ %i.agr, %vec.epilog.middle.block4264 ] ; 2 uses
  %.059.i88.i.i.ph = phi ptr [ %i.agh, %iter.check4251 ], [ %i.agh, %vector.memcheck4235 ], [ %i.agm, %vec.epilog.iter.check4252 ], [ %i.ags, %vec.epilog.middle.block4264 ] ; 2 uses
  %.068.i89.i.i.ph = phi i64 [ %i.aah, %iter.check4251 ], [ %i.aah, %vector.memcheck4235 ], [ %i.agn, %vec.epilog.iter.check4252 ], [ %i.agt, %vec.epilog.middle.block4264 ] ; 4 uses
  %i.agv = add nsw i64 %.068.i89.i.i.ph, -1
  %xtraiter4606 = and i64 %.068.i89.i.i.ph, 7     ; 2 uses
  %lcmp.mod4607.not = icmp eq i64 %xtraiter4606, 0
  br i1 %lcmp.mod4607.not, label %.lr.ph.i86.i.i.prol.loopexit, label %.lr.ph.i86.i.i.prol

.lr.ph.i86.i.i.prol:                              ; preds = %.lr.ph.i86.i.i.preheader, %.lr.ph.i86.i.i.prol
  %.010.i87.i.i.prol = phi ptr [ %i.agx, %.lr.ph.i86.i.i.prol ], [ %.010.i87.i.i.ph, %.lr.ph.i86.i.i.preheader ] ; 2 uses
  %.059.i88.i.i.prol = phi ptr [ %i.agz, %.lr.ph.i86.i.i.prol ], [ %.059.i88.i.i.ph, %.lr.ph.i86.i.i.preheader ] ; 2 uses
  %.068.i89.i.i.prol = phi i64 [ %i.agw, %.lr.ph.i86.i.i.prol ], [ %.068.i89.i.i.ph, %.lr.ph.i86.i.i.preheader ]
  %prol.iter4608 = phi i64 [ %prol.iter4608.next, %.lr.ph.i86.i.i.prol ], [ 0, %.lr.ph.i86.i.i.preheader ]
  %i.agw = add nsw i64 %.068.i89.i.i.prol, -1     ; 2 uses
  %i.agx = getelementptr inbounds nuw i8, ptr %.010.i87.i.i.prol, i64 1 ; 2 uses
  %i.agy = load i8, ptr %.010.i87.i.i.prol, align 1, !tbaa !37
  %i.agz = getelementptr inbounds nuw i8, ptr %.059.i88.i.i.prol, i64 1 ; 2 uses
  store i8 %i.agy, ptr %.059.i88.i.i.prol, align 1, !tbaa !37
  %prol.iter4608.next = add i64 %prol.iter4608, 1 ; 2 uses
  %prol.iter4608.cmp.not = icmp eq i64 %prol.iter4608.next, %xtraiter4606
  br i1 %prol.iter4608.cmp.not, label %.lr.ph.i86.i.i.prol.loopexit, label %.lr.ph.i86.i.i.prol, !llvm.loop !451

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
  %i.ahw = add nsw i64 %.068.i89.i.i, -8          ; 2 uses
  %i.ahx = getelementptr inbounds nuw i8, ptr %.010.i87.i.i, i64 8
  %i.ahy = load i8, ptr %i.aht, align 1, !tbaa !37
  %i.ahz = getelementptr inbounds nuw i8, ptr %.059.i88.i.i, i64 8
  store i8 %i.ahy, ptr %i.ahv, align 1, !tbaa !37
  %.not.i90.i.i.7 = icmp eq i64 %i.ahw, 0
  br i1 %.not.i90.i.i.7, label %tg3__memcpy.exit91.i.i, label %.lr.ph.i86.i.i, !llvm.loop !452

tg3__memcpy.exit91.i.i:                           ; preds = %.lr.ph.i86.i.i.prol.loopexit, %.lr.ph.i86.i.i, %vec.epilog.middle.block4264, %middle.block4249
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
  %.pre204.i = load i64, ptr %i.l, align 8, !tbaa !30 ; 8 uses
  %i.aih = icmp ugt i64 %.pre204.i, %i.aig
  %or.cond288.i = select i1 %.not63.i.i, i1 %i.aih, i1 false
  br i1 %or.cond288.i, label %bb.dl, label %bb.do

bb.dl:                                            ; preds = %bb.dk
  %i.aii = load ptr, ptr %i.gq, align 8, !tbaa !551 ; 2 uses
  %.not64.i.i = icmp eq ptr %i.aii, null
  br i1 %.not64.i.i, label %bb.dn, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.aij = load ptr, ptr %i.k, align 8, !tbaa !23
  %i.aik = load ptr, ptr %i.gn, align 8, !tbaa !549
  call void %i.aii(ptr noundef %i.aij, i64 noundef %.pre204.i, ptr noundef %i.aik) #22, !inline_history !453
  %.pre.i138.i = load i64, ptr %i.l, align 8, !tbaa !30
  %.pre103.i.i = load i64, ptr %i.go, align 8, !tbaa !550
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dm, %bb.dl
  %i.ail = phi i64 [ %.pre103.i.i, %bb.dm ], [ %i.aig, %bb.dl ]
  %i.aim = phi i64 [ %.pre.i138.i, %bb.dm ], [ %.pre204.i, %bb.dl ]
  %i.ain = load ptr, ptr %i.gp, align 8, !tbaa !145
  %i.aio = load ptr, ptr %0, align 8, !tbaa !144
  call void (ptr, ptr, i32, i32, ptr, ptr, ...) @tg3__error_pushf(ptr noundef %i.ain, ptr noundef %i.aio, i32 poison, i32 noundef 4, ptr noundef null, ptr noundef nonnull @.str.79, ptr noundef nonnull %i.g, i64 noundef %i.aim, i64 noundef %i.ail) #21
  store ptr null, ptr %i.k, align 8, !tbaa !23
  br label %tg3__load_external_file.exit.thread.i

tg3__load_external_file.exit.thread.i:            ; preds = %bb.dn, %bb.dj, %bb.di, %bb.dg, %tg3__uri_is_safe.exit.i.i, %bb.df, %bb.dd, %bb.db, %.loopexit.i132.i, %bb.cj, %bb.ch, %bb.cf, %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #20
  br label %bb.ee

bb.do:                                            ; preds = %bb.dk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #20
  %i.aip = load ptr, ptr %0, align 8, !tbaa !144  ; 9 uses
  %i.aiq = icmp eq ptr %i.aip, null
  %i.air = icmp eq i64 %.pre204.i, 0
  %or.cond.i147.i = or i1 %i.air, %i.aiq
  br i1 %or.cond.i147.i, label %tg3__arena_alloc.exit162.thread.i, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.ais = getelementptr inbounds nuw i8, ptr %i.aip, i64 32
  %i.ait = load i64, ptr %i.ais, align 8, !tbaa !136 ; 3 uses
  %.not.i148.i = icmp ne i64 %i.ait, 0            ; 2 uses
  %i.aiu = icmp ugt i64 %.pre204.i, %i.ait
  %or.cond28.i149.i = and i1 %.not.i148.i, %i.aiu
  br i1 %or.cond28.i149.i, label %tg3__arena_alloc.exit162.thread.thread.i, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.aiv = add i64 %.pre204.i, 7
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
  br i1 %.not91.i, label %tg3__arena_alloc.exit162.thread.thread.i, label %iter.check4217

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
  %.pr.pre206.pre.i = load i64, ptr %i.l, align 8, !tbaa !30 ; 2 uses
  %i.akb = getelementptr inbounds nuw i8, ptr %i.ajt, i64 16
  store i64 %i.aiw, ptr %i.akb, align 8, !tbaa !152
  %.not7.i163.i = icmp eq i64 %.pr.pre206.pre.i, 0
  br i1 %.not7.i163.i, label %tg3__memcpy.exit170.i, label %iter.check4217

iter.check4217:                                   ; preds = %bb.dv, %tg3__arena_alloc.exit162.i
  %.pr.pre206278282.i = phi i64 [ %.pr.pre206.pre.i, %bb.dv ], [ %.pre204.i, %tg3__arena_alloc.exit162.i ] ; 10 uses
  %i.akc = phi ptr [ %i.ajv, %bb.dv ], [ %i.aju, %tg3__arena_alloc.exit162.i ] ; 7 uses
  %i.akd = load ptr, ptr %i.k, align 8, !tbaa !23 ; 6 uses
  %min.iters.check4203 = icmp ult i64 %.pr.pre206278282.i, 4
  %i.ake = ptrtoaddr ptr %i.akd to i64
  %i.akf = ptrtoaddr ptr %i.akc to i64
  %i.akg = sub i64 %i.ake, %i.akf
  %diff.check4202 = icmp ugt i64 %i.akg, -32
  %or.cond4490 = select i1 %min.iters.check4203, i1 true, i1 %diff.check4202
  br i1 %or.cond4490, label %.lr.ph.i164.i.preheader, label %vector.main.loop.iter.check4204

vector.main.loop.iter.check4204:                  ; preds = %iter.check4217
  %min.iters.check4205 = icmp ult i64 %.pr.pre206278282.i, 32
  br i1 %min.iters.check4205, label %vec.epilog.ph4221, label %vector.ph4206

vector.ph4206:                                    ; preds = %vector.main.loop.iter.check4204
  %i.akh = and i64 %.pr.pre206278282.i, 28
  %n.vec4207 = and i64 %.pr.pre206278282.i, -32   ; 5 uses
  %i.aki = getelementptr i8, ptr %i.akd, i64 %n.vec4207
  %i.akj = getelementptr i8, ptr %i.akc, i64 %n.vec4207
  %i.akk = and i64 %.pr.pre206278282.i, 31
  br label %vector.body4208

vector.body4208:                                  ; preds = %vector.ph4206, %vector.body4208
  %index4209 = phi i64 [ 0, %vector.ph4206 ], [ %index.next4214, %vector.body4208 ] ; 3 uses
  %next.gep4210 = getelementptr i8, ptr %i.akd, i64 %index4209 ; 2 uses
  %next.gep4211 = getelementptr i8, ptr %i.akc, i64 %index4209 ; 2 uses
  %i.akl = getelementptr i8, ptr %next.gep4210, i64 16
  %wide.load4212 = load <16 x i8>, ptr %next.gep4210, align 1, !tbaa !37
  %wide.load4213 = load <16 x i8>, ptr %i.akl, align 1, !tbaa !37
  %i.akm = getelementptr i8, ptr %next.gep4211, i64 16
  store <16 x i8> %wide.load4212, ptr %next.gep4211, align 1, !tbaa !37
  store <16 x i8> %wide.load4213, ptr %i.akm, align 1, !tbaa !37
  %index.next4214 = add nuw i64 %index4209, 32    ; 2 uses
  %i.akn = icmp eq i64 %index.next4214, %n.vec4207
  br i1 %i.akn, label %middle.block4215, label %vector.body4208, !llvm.loop !454

middle.block4215:                                 ; preds = %vector.body4208
  %cmp.n4216 = icmp eq i64 %.pr.pre206278282.i, %n.vec4207
  br i1 %cmp.n4216, label %tg3__memcpy.exit170.loopexit.i, label %vec.epilog.iter.check4218

vec.epilog.iter.check4218:                        ; preds = %middle.block4215
  %min.epilog.iters.check4220 = icmp eq i64 %i.akh, 0
  br i1 %min.epilog.iters.check4220, label %.lr.ph.i164.i.preheader, label %vec.epilog.ph4221, !prof !46

vec.epilog.ph4221:                                ; preds = %vector.main.loop.iter.check4204, %vec.epilog.iter.check4218
  %vec.epilog.resume.val4222 = phi i64 [ %n.vec4207, %vec.epilog.iter.check4218 ], [ 0, %vector.main.loop.iter.check4204 ]
  %n.vec4223 = and i64 %.pr.pre206278282.i, -4    ; 4 uses
  %i.ako = getelementptr i8, ptr %i.akd, i64 %n.vec4223
  %i.akp = getelementptr i8, ptr %i.akc, i64 %n.vec4223
  %i.akq = and i64 %.pr.pre206278282.i, 3
  br label %vec.epilog.vector.body4224

vec.epilog.vector.body4224:                       ; preds = %vec.epilog.vector.body4224, %vec.epilog.ph4221
  %index4225 = phi i64 [ %vec.epilog.resume.val4222, %vec.epilog.ph4221 ], [ %index.next4229, %vec.epilog.vector.body4224 ] ; 3 uses
  %next.gep4226 = getelementptr i8, ptr %i.akd, i64 %index4225
  %next.gep4227 = getelementptr i8, ptr %i.akc, i64 %index4225
  %wide.load4228 = load <4 x i8>, ptr %next.gep4226, align 1, !tbaa !37
  store <4 x i8> %wide.load4228, ptr %next.gep4227, align 1, !tbaa !37
  %index.next4229 = add nuw i64 %index4225, 4     ; 2 uses
  %i.akr = icmp eq i64 %index.next4229, %n.vec4223
  br i1 %i.akr, label %vec.epilog.middle.block4230, label %vec.epilog.vector.body4224, !llvm.loop !455

vec.epilog.middle.block4230:                      ; preds = %vec.epilog.vector.body4224
  %cmp.n4231 = icmp eq i64 %.pr.pre206278282.i, %n.vec4223
  br i1 %cmp.n4231, label %tg3__memcpy.exit170.loopexit.i, label %.lr.ph.i164.i.preheader

.lr.ph.i164.i.preheader:                          ; preds = %iter.check4217, %vec.epilog.iter.check4218, %vec.epilog.middle.block4230
  %.010.i165.i.ph = phi ptr [ %i.akd, %iter.check4217 ], [ %i.aki, %vec.epilog.iter.check4218 ], [ %i.ako, %vec.epilog.middle.block4230 ] ; 2 uses
  %.059.i166.i.ph = phi ptr [ %i.akc, %iter.check4217 ], [ %i.akj, %vec.epilog.iter.check4218 ], [ %i.akp, %vec.epilog.middle.block4230 ] ; 2 uses
  %.068.i167.i.ph = phi i64 [ %.pr.pre206278282.i, %iter.check4217 ], [ %i.akk, %vec.epilog.iter.check4218 ], [ %i.akq, %vec.epilog.middle.block4230 ] ; 4 uses
  %i.aks = add i64 %.068.i167.i.ph, -1
  %xtraiter4609 = and i64 %.068.i167.i.ph, 7      ; 2 uses
  %lcmp.mod4610.not = icmp eq i64 %xtraiter4609, 0
  br i1 %lcmp.mod4610.not, label %.lr.ph.i164.i.prol.loopexit, label %.lr.ph.i164.i.prol

.lr.ph.i164.i.prol:                               ; preds = %.lr.ph.i164.i.preheader, %.lr.ph.i164.i.prol
  %.010.i165.i.prol = phi ptr [ %i.aku, %.lr.ph.i164.i.prol ], [ %.010.i165.i.ph, %.lr.ph.i164.i.preheader ] ; 2 uses
  %.059.i166.i.prol = phi ptr [ %i.akw, %.lr.ph.i164.i.prol ], [ %.059.i166.i.ph, %.lr.ph.i164.i.preheader ] ; 2 uses
  %.068.i167.i.prol = phi i64 [ %i.akt, %.lr.ph.i164.i.prol ], [ %.068.i167.i.ph, %.lr.ph.i164.i.preheader ]
  %prol.iter4611 = phi i64 [ %prol.iter4611.next, %.lr.ph.i164.i.prol ], [ 0, %.lr.ph.i164.i.preheader ]
  %i.akt = add i64 %.068.i167.i.prol, -1          ; 2 uses
  %i.aku = getelementptr inbounds nuw i8, ptr %.010.i165.i.prol, i64 1 ; 2 uses
  %i.akv = load i8, ptr %.010.i165.i.prol, align 1, !tbaa !37
  %i.akw = getelementptr inbounds nuw i8, ptr %.059.i166.i.prol, i64 1 ; 2 uses
  store i8 %i.akv, ptr %.059.i166.i.prol, align 1, !tbaa !37
  %prol.iter4611.next = add i64 %prol.iter4611, 1 ; 2 uses
  %prol.iter4611.cmp.not = icmp eq i64 %prol.iter4611.next, %xtraiter4609
  br i1 %prol.iter4611.cmp.not, label %.lr.ph.i164.i.prol.loopexit, label %.lr.ph.i164.i.prol, !llvm.loop !456

.lr.ph.i164.i.prol.loopexit:                      ; preds = %.lr.ph.i164.i.prol, %.lr.ph.i164.i.preheader
  %.010.i165.i.unr = phi ptr [ %.010.i165.i.ph, %.lr.ph.i164.i.preheader ], [ %i.aku, %.lr.ph.i164.i.prol ]
  %.059.i166.i.unr = phi ptr [ %.059.i166.i.ph, %.lr.ph.i164.i.preheader ], [ %i.akw, %.lr.ph.i164.i.prol ]
  %.068.i167.i.unr = phi i64 [ %.068.i167.i.ph, %.lr.ph.i164.i.preheader ], [ %i.akt, %.lr.ph.i164.i.prol ]
  %i.akx = icmp ult i64 %i.aks, 7
  br i1 %i.akx, label %tg3__memcpy.exit170.loopexit.i, label %.lr.ph.i164.i

.lr.ph.i164.i:                                    ; preds = %.lr.ph.i164.i.prol.loopexit, %.lr.ph.i164.i
  %.010.i165.i = phi ptr [ %i.alu, %.lr.ph.i164.i ], [ %.010.i165.i.unr, %.lr.ph.i164.i.prol.loopexit ] ; 9 uses
  %.059.i166.i = phi ptr [ %i.alw, %.lr.ph.i164.i ], [ %.059.i166.i.unr, %.lr.ph.i164.i.prol.loopexit ] ; 9 uses
end_hunk_4
