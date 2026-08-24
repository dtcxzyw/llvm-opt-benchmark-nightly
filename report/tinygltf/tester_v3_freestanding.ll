Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tinygltf/original/tester_v3_freestanding?download=true
inline.NumInlined: 906
inline.NumDeleted: 109
loop-unroll.NumCompletelyUnrolled: 183
loop-unroll.NumRuntimeUnrolled: 103
loop-unroll.NumUnrolled: 287
begin_hunk_0_@tg3__error_push:bb.a
  %.pre = load ptr, ptr %0, align 8, !tbaa !137   ; 11 uses
  %.pre1 = ptrtoaddr ptr %.pre to i64
  br i1 %.not27, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not28 = icmp eq i32 %i.d, 0
  %i.e = shl i32 %i.d, 1
  %spec.select = select i1 %.not28, i32 16, i32 %i.e ; 2 uses
  %i.f = zext i32 %spec.select to i64
  %i.g = shl nuw nsw i64 %i.f, 5                  ; 4 uses
  %.not.i = icmp eq ptr %.pre, null
  %i.h = or disjoint i64 %i.g, 8
  %i.i = load i64, ptr @test_heap_used, align 8, !tbaa !21 ; 4 uses
  %i.j = add i64 %i.i, %i.h                       ; 3 uses
  %i.k = icmp ugt i64 %i.j, 524288                ; 2 uses
  br i1 %.not.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  br i1 %i.k, label %test_realloc.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr @test_heap, i64 %i.i ; 2 uses
  store i64 %i.g, ptr %i.l, align 8, !tbaa !21
  store i64 %i.j, ptr @test_heap_used, align 8, !tbaa !21
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  br label %.loopexit

bb.f:                                             ; preds = %bb.c
  br i1 %i.k, label %test_realloc.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds i8, ptr %.pre, i64 -8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !21
  %i.p = getelementptr inbounds nuw i8, ptr @test_heap, i64 %i.i ; 2 uses
  store i64 %i.g, ptr %i.p, align 8, !tbaa !21
  store i64 %i.j, ptr @test_heap_used, align 8, !tbaa !21
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
  %wide.load = load <16 x i8>, ptr %i.v, align 1, !tbaa !12
  %wide.load3 = load <16 x i8>, ptr %i.w, align 1, !tbaa !12
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 %index ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store <16 x i8> %wide.load, ptr %i.x, align 1, !tbaa !12
  store <16 x i8> %wide.load3, ptr %i.y, align 1, !tbaa !12
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.z = icmp eq i64 %index.next, %n.vec
  br i1 %i.z, label %middle.block, label %vector.body, !llvm.loop !228

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.r, %n.vec
  br i1 %cmp.n, label %.loopexit.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.u, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !36

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec4 = and i64 %i.r, 137438953468            ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index5 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next7, %vec.epilog.vector.body ] ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.pre, i64 %index5
  %wide.load6 = load <4 x i8>, ptr %i.aa, align 1, !tbaa !12
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 %index5
  store <4 x i8> %wide.load6, ptr %i.ab, align 1, !tbaa !12
  %index.next7 = add nuw i64 %index5, 4           ; 2 uses
  %i.ac = icmp eq i64 %index.next7, %n.vec4
  br i1 %i.ac, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !229

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
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !12
  %i.af = getelementptr inbounds nuw i8, ptr %i.q, i64 %.026.i.prol
  store i8 %i.ae, ptr %i.af, align 1, !tbaa !12
  %i.ag = add nuw nsw i64 %.026.i.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !230

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.026.i.unr = phi i64 [ %.026.i.ph, %.lr.ph.i.preheader ], [ %i.ag, %.lr.ph.i.prol ]
  %i.ah = sub nsw i64 %.026.i.ph, %i.r
  %i.ai = icmp ugt i64 %i.ah, -4
  br i1 %i.ai, label %.loopexit.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.026.i = phi i64 [ %i.ay, %.lr.ph.i ], [ %.026.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.pre, i64 %.026.i
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !12
  %i.al = getelementptr inbounds nuw i8, ptr %i.q, i64 %.026.i
  store i8 %i.ak, ptr %i.al, align 1, !tbaa !12
  %i.am = add nuw nsw i64 %.026.i, 1              ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.am
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !12
  %i.ap = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.am
  store i8 %i.ao, ptr %i.ap, align 1, !tbaa !12
  %i.aq = add nuw nsw i64 %.026.i, 2              ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !12
  %i.at = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.aq
  store i8 %i.as, ptr %i.at, align 1, !tbaa !12
  %i.au = add nuw nsw i64 %.026.i, 3              ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !12
  %i.ax = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.au
  store i8 %i.aw, ptr %i.ax, align 1, !tbaa !12
  %i.ay = add nuw nsw i64 %.026.i, 4              ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.ay, %i.r
  br i1 %exitcond.not.i.3, label %.loopexit.loopexit, label %.lr.ph.i, !llvm.loop !231

.loopexit.loopexit:                               ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %vec.epilog.middle.block, %middle.block
  %.pre33.pre = load i32, ptr %i.a, align 8, !tbaa !136
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.e, %bb.g
  %.pre33 = phi i32 [ %i.b, %bb.e ], [ %i.b, %bb.g ], [ %.pre33.pre, %.loopexit.loopexit ]
  %.018.i.ph = phi ptr [ %i.m, %bb.e ], [ %i.q, %bb.g ], [ %i.q, %.loopexit.loopexit ] ; 2 uses
  store ptr %.018.i.ph, ptr %0, align 8, !tbaa !137
  store i32 %spec.select, ptr %i.c, align 4, !tbaa !191
  br label %bb.h

bb.h:                                             ; preds = %.loopexit, %bb.b
  %i.az = phi i32 [ %.pre33, %.loopexit ], [ %i.b, %bb.b ] ; 2 uses
  %i.ba = phi ptr [ %.018.i.ph, %.loopexit ], [ %.pre, %bb.b ]
  %i.bb = add i32 %i.az, 1
  store i32 %i.bb, ptr %i.a, align 8, !tbaa !136
  %i.bc = zext i32 %i.az to i64
  %i.bd = getelementptr inbounds nuw [32 x i8], ptr %i.ba, i64 %i.bc ; 5 uses
  store i32 2, ptr %i.bd, align 8, !tbaa !196
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  store i32 %1, ptr %i.be, align 4, !tbaa !198
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store ptr %2, ptr %i.bf, align 8, !tbaa !199
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  store ptr %3, ptr %i.bg, align 8, !tbaa !200
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  store i64 %4, ptr %i.bh, align 8, !tbaa !201
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 1, ptr %i.bi, align 8, !tbaa !133
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
  %i.j = alloca [64 x i8], align 16               ; 13 uses
  %i.k = alloca ptr, align 8                      ; 8 uses
  %i.l = alloca i64, align 8                      ; 11 uses
  %i.m = load i32, ptr %1, align 8, !tbaa !13
  %.not18.i.i = icmp eq i32 %i.m, 6
  br i1 %.not18.i.i, label %.preheader.i.i, label %tg3__json_is_object.exit.thread

.preheader.i.i:                                   ; preds = %tg3json__strlen_fallback.exit.i
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !12   ; 2 uses
  %.not27.i.i = icmp eq i64 %i.o, 0
  br i1 %.not27.i.i, label %tg3__json_is_object.exit.thread, label %.lr.ph.split.i.i.preheader

.lr.ph.split.i.i.preheader:                       ; preds = %.preheader.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !12   ; 2 uses
  br label %.lr.ph.split.i.i

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.split.i.i.preheader, %tg3json__memcmp_fallback.exit.i.i
  %.01425.i.i = phi i64 [ %i.af, %tg3json__memcmp_fallback.exit.i.i ], [ 0, %.lr.ph.split.i.i.preheader ] ; 3 uses
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %i.q, i64 %.01425.i.i ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !54
  %i.u = icmp eq i64 %i.t, 5
  br i1 %i.u, label %.lr.ph.i.preheader.i.i, label %tg3json__memcmp_fallback.exit.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %.lr.ph.split.i.i
  %i.v = load ptr, ptr %i.r, align 8, !tbaa !51   ; 5 uses
  %i.w = load i8, ptr %i.v, align 1, !tbaa !12
  %.not14.i.i.i = icmp eq i8 %i.w, 97
  br i1 %.not14.i.i.i, label %.lr.ph.i.i.i.1, label %tg3json__memcmp_fallback.exit.i.i

.lr.ph.i.i.i.1:                                   ; preds = %.lr.ph.i.preheader.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  %i.y = load i8, ptr %i.x, align 1, !tbaa !12
  %.not14.i.i.i.1 = icmp eq i8 %i.y, 115
  br i1 %.not14.i.i.i.1, label %.lr.ph.i.i.i.2, label %tg3json__memcmp_fallback.exit.i.i

.lr.ph.i.i.i.2:                                   ; preds = %.lr.ph.i.i.i.1
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 2
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !12
  %.not14.i.i.i.2 = icmp eq i8 %i.aa, 115
  br i1 %.not14.i.i.i.2, label %.lr.ph.i.i.i.3, label %tg3json__memcmp_fallback.exit.i.i

.lr.ph.i.i.i.3:                                   ; preds = %.lr.ph.i.i.i.2
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 3
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !12
  %.not14.i.i.i.3 = icmp eq i8 %i.ac, 101
  br i1 %.not14.i.i.i.3, label %.lr.ph.i.i.i.4, label %tg3json__memcmp_fallback.exit.i.i

.lr.ph.i.i.i.4:                                   ; preds = %.lr.ph.i.i.i.3
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !12
  %.not14.i.i.i.4 = icmp eq i8 %i.ae, 116
  br i1 %.not14.i.i.i.4, label %tg3json_object_get.exit, label %tg3json__memcmp_fallback.exit.i.i

tg3json__memcmp_fallback.exit.i.i:                ; preds = %.lr.ph.i.preheader.i.i, %.lr.ph.i.i.i.1, %.lr.ph.i.i.i.2, %.lr.ph.i.i.i.3, %.lr.ph.i.i.i.4, %.lr.ph.split.i.i
  %i.af = add nuw i64 %.01425.i.i, 1              ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.af, %i.o
  br i1 %exitcond.not.i.i, label %tg3__json_is_object.exit.thread, label %.lr.ph.split.i.i, !llvm.loop !83

tg3json_object_get.exit:                          ; preds = %.lr.ph.i.i.i.4
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %i.q, i64 %.01425.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !55 ; 7 uses
  %.not.i = icmp eq ptr %i.ai, null
  br i1 %.not.i, label %tg3__json_is_object.exit.thread, label %tg3__json_is_object.exit

tg3__json_is_object.exit:                         ; preds = %tg3json_object_get.exit
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !13
  %.not = icmp eq i32 %i.aj, 6
  br i1 %.not, label %bb.a, label %tg3__json_is_object.exit.thread

bb.a:                                             ; preds = %tg3__json_is_object.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 296 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 312 ; 2 uses
  store <16 x i8> zeroinitializer, ptr %i.ak, align 1, !tbaa !12
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 328 ; 2 uses
  store <16 x i8> zeroinitializer, ptr %i.al, align 1, !tbaa !12
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 344 ; 2 uses
  store <16 x i8> zeroinitializer, ptr %i.am, align 1, !tbaa !12
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 360 ; 2 uses
  store <16 x i8> zeroinitializer, ptr %i.an, align 1, !tbaa !12
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 376
  store <16 x i8> zeroinitializer, ptr %i.ao, align 1, !tbaa !12
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 392
  store <16 x i8> zeroinitializer, ptr %i.ap, align 1, !tbaa !12
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 408
  store <16 x i8> zeroinitializer, ptr %i.aq, align 1, !tbaa !12
  store <8 x i8> zeroinitializer, ptr %i.ar, align 1, !tbaa !12
  tail call fastcc void @tg3__parse_string(ptr noundef nonnull %0, ptr noundef nonnull readonly %i.ai, ptr noundef nonnull @.str.55, ptr noundef nonnull %i.ak, i32 noundef 0, ptr noundef nonnull @.str.56) #20
  tail call fastcc void @tg3__parse_string(ptr noundef nonnull %0, ptr noundef nonnull readonly %i.ai, ptr noundef nonnull @.str.57, ptr noundef %i.al, i32 noundef 0, ptr noundef nonnull @.str.56) #20
  tail call fastcc void @tg3__parse_string(ptr noundef nonnull %0, ptr noundef nonnull readonly %i.ai, ptr noundef nonnull @.str.58, ptr noundef %i.am, i32 noundef 0, ptr noundef nonnull @.str.56) #20
  tail call fastcc void @tg3__parse_string(ptr noundef nonnull %0, ptr noundef nonnull readonly %i.ai, ptr noundef nonnull @.str.59, ptr noundef %i.an, i32 noundef 0, ptr noundef nonnull @.str.56) #20
  tail call fastcc void @tg3__parse_extras_and_extensions(ptr noundef nonnull %0, ptr noundef nonnull readonly %i.ai, ptr noundef %i.ao) #20
  br label %bb.j

tg3__json_is_object.exit.thread:                  ; preds = %tg3json__memcmp_fallback.exit.i.i, %.preheader.i.i, %tg3json__strlen_fallback.exit.i, %tg3json_object_get.exit, %tg3__json_is_object.exit
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.at = load i32, ptr %i.as, align 8, !tbaa !232
  %i.au = and i32 %i.at, 1
  %.not749 = icmp eq i32 %i.au, 0
  br i1 %.not749, label %bb.j, label %bb.b

bb.b:                                             ; preds = %tg3__json_is_object.exit.thread
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !210 ; 6 uses
  %.not.i909 = icmp eq ptr %i.aw, null
  br i1 %.not.i909, label %.critedge908, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 3 uses
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !136 ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 12 ; 2 uses
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !191 ; 3 uses
  %.not27.i = icmp ult i32 %i.ay, %i.ba
  %.pre.i = load ptr, ptr %i.aw, align 8, !tbaa !137 ; 11 uses
  %.pre.i3933 = ptrtoaddr ptr %.pre.i to i64
  br i1 %.not27.i, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not28.i = icmp eq i32 %i.ba, 0
  %i.bb = shl i32 %i.ba, 1
  %spec.select.i = select i1 %.not28.i, i32 16, i32 %i.bb ; 2 uses
  %i.bc = zext i32 %spec.select.i to i64
  %i.bd = shl nuw nsw i64 %i.bc, 5                ; 4 uses
  %.not.i.i910 = icmp eq ptr %.pre.i, null
  %i.be = or disjoint i64 %i.bd, 8
  %i.bf = load i64, ptr @test_heap_used, align 8, !tbaa !21 ; 4 uses
  %i.bg = add i64 %i.bf, %i.be                    ; 3 uses
  %i.bh = icmp ugt i64 %i.bg, 524288              ; 2 uses
  br i1 %.not.i.i910, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  br i1 %i.bh, label %.critedge908, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bi = getelementptr inbounds nuw i8, ptr @test_heap, i64 %i.bf ; 2 uses
  store i64 %i.bd, ptr %i.bi, align 8, !tbaa !21
  store i64 %i.bg, ptr @test_heap_used, align 8, !tbaa !21
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  br label %.loopexit.i

bb.g:                                             ; preds = %bb.d
  br i1 %i.bh, label %.critedge908, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bk = getelementptr inbounds i8, ptr %.pre.i, i64 -8
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !21
  %i.bm = getelementptr inbounds nuw i8, ptr @test_heap, i64 %i.bf ; 2 uses
  store i64 %i.bd, ptr %i.bm, align 8, !tbaa !21
  store i64 %i.bg, ptr @test_heap_used, align 8, !tbaa !21
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 9 uses
  %i.bo = tail call i64 @llvm.umin.i64(i64 %i.bl, i64 %i.bd) ; 11 uses
  %.not27.i.i911 = icmp eq i64 %i.bo, 0
  br i1 %.not27.i.i911, label %.loopexit.i, label %iter.check

iter.check:                                       ; preds = %bb.h
  %min.iters.check = icmp samesign ult i64 %i.bo, 4
  br i1 %min.iters.check, label %.lr.ph.i.i912.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.bp = add i64 %i.bf, add (i64 ptrtoaddr (ptr @test_heap to i64), i64 8)
  %i.bq = sub i64 %.pre.i3933, %i.bp
  %diff.check = icmp ugt i64 %i.bq, -32
  br i1 %diff.check, label %.lr.ph.i.i912.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check3934 = icmp samesign ult i64 %i.bo, 32
  br i1 %min.iters.check3934, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.br = and i64 %i.bo, 28
  %n.vec = and i64 %i.bo, 137438953440            ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %index ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %wide.load = load <16 x i8>, ptr %i.bs, align 1, !tbaa !12
  %wide.load3935 = load <16 x i8>, ptr %i.bt, align 1, !tbaa !12
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bn, i64 %index ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  store <16 x i8> %wide.load, ptr %i.bu, align 1, !tbaa !12
  store <16 x i8> %wide.load3935, ptr %i.bv, align 1, !tbaa !12
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bw = icmp eq i64 %index.next, %n.vec
  br i1 %i.bw, label %middle.block, label %vector.body, !llvm.loop !233

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bo, %n.vec
  br i1 %cmp.n, label %.loopexit.loopexit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.br, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i912.preheader, label %vec.epilog.ph, !prof !36

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
end_hunk_0
begin_hunk_1_@tg3__parse_from_json:tg3json__strlen_fallback.exit.i
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eb, i64 4
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !12
  %.not14.i.i.i933.4 = icmp eq i8 %i.ek, 101
  br i1 %.not14.i.i.i933.4, label %.lr.ph.i.i.i929.5, label %tg3json__memcmp_fallback.exit.i.i926

.lr.ph.i.i.i929.5:                                ; preds = %.lr.ph.i.i.i929.4
  %i.el = getelementptr inbounds nuw i8, ptr %i.eb, i64 5
  %i.em = load i8, ptr %i.el, align 1, !tbaa !12
  %.not14.i.i.i933.5 = icmp eq i8 %i.em, 114
  br i1 %.not14.i.i.i933.5, label %.lr.ph.i.i.i929.6, label %tg3json__memcmp_fallback.exit.i.i926

.lr.ph.i.i.i929.6:                                ; preds = %.lr.ph.i.i.i929.5
  %i.en = getelementptr inbounds nuw i8, ptr %i.eb, i64 6
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !12
  %.not14.i.i.i933.6 = icmp eq i8 %i.eo, 115
  br i1 %.not14.i.i.i933.6, label %tg3json_object_get.exit940, label %tg3json__memcmp_fallback.exit.i.i926

tg3json__memcmp_fallback.exit.i.i926:             ; preds = %.lr.ph.i.preheader.i.i928, %.lr.ph.i.i.i929.1, %.lr.ph.i.i.i929.2, %.lr.ph.i.i.i929.3, %.lr.ph.i.i.i929.4, %.lr.ph.i.i.i929.5, %.lr.ph.i.i.i929.6, %.lr.ph.split.i.i924
  %i.ep = add nuw i64 %.01425.i.i925, 1           ; 2 uses
  %exitcond.not.i.i927 = icmp eq i64 %i.ep, %i.du
  br i1 %exitcond.not.i.i927, label %tg3__json_is_array.exit.thread, label %.lr.ph.split.i.i924, !llvm.loop !83

tg3json_object_get.exit940:                       ; preds = %.lr.ph.i.i.i929.6
  %i.eq = getelementptr inbounds nuw [24 x i8], ptr %i.dw, i64 %.01425.i.i925
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !55 ; 5 uses
  %.not.i941 = icmp eq ptr %i.es, null
  br i1 %.not.i941, label %tg3__json_is_array.exit.thread, label %tg3__json_is_array.exit

tg3__json_is_array.exit:                          ; preds = %tg3json_object_get.exit940
  %i.et = load i32, ptr %i.es, align 8, !tbaa !13
  %.not2703 = icmp eq i32 %i.et, 5
  br i1 %.not2703, label %tg3json_array_size.exit, label %tg3__json_is_array.exit.thread

tg3json_array_size.exit:                          ; preds = %tg3__json_is_array.exit
  %i.eu = getelementptr inbounds nuw i8, ptr %i.es, i64 16 ; 2 uses
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !12 ; 4 uses
  %.not754 = icmp eq i64 %i.ev, 0
  br i1 %.not754, label %tg3__json_is_array.exit.thread, label %bb.m

bb.m:                                             ; preds = %tg3json_array_size.exit
  %i.ew = load ptr, ptr %0, align 8, !tbaa !207   ; 9 uses
  %i.ex = mul i64 %i.ev, 112                      ; 6 uses
  %i.ey = icmp eq ptr %i.ew, null
  %i.ez = icmp eq i64 %i.ex, 0
  %or.cond.i = or i1 %i.ez, %i.ey
  br i1 %or.cond.i, label %tg3__json_is_array.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ew, i64 32
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !227 ; 3 uses
  %.not.i944 = icmp ne i64 %i.fb, 0               ; 2 uses
  %i.fc = icmp ugt i64 %i.ex, %i.fb
  %or.cond28.i = and i1 %.not.i944, %i.fc
  br i1 %or.cond28.i, label %tg3__json_is_array.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ew, i64 8 ; 3 uses
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !241 ; 5 uses
  %.not26.i = icmp eq ptr %i.fe, null
  br i1 %.not26.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 16
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !242 ; 3 uses
  %i.fh = add i64 %i.fg, %i.ex
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fe, i64 24
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !244
  %i.fk = icmp ugt i64 %i.fh, %i.fj
  br i1 %i.fk, label %bb.q, label %tg3__arena_alloc.exit

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ew, i64 40
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !223
  %spec.select.i.i = tail call i64 @llvm.umax.i64(i64 %i.fm, i64 range(i64 0, -7) %i.ex) ; 3 uses
  %i.fn = icmp ugt i64 %spec.select.i.i, %i.fb
  %or.cond.i.i = select i1 %.not.i944, i1 %i.fn, i1 false
  br i1 %or.cond.i.i, label %tg3__json_is_array.exit.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ew, i64 16 ; 3 uses
  %i.fp = load i64, ptr %i.fo, align 8, !tbaa !245
  %i.fq = add i64 %spec.select.i.i, 32            ; 3 uses
  %i.fr = add i64 %i.fp, %i.fq
  %i.fs = getelementptr inbounds nuw i8, ptr %i.ew, i64 24
  %i.ft = load i64, ptr %i.fs, align 8, !tbaa !226
  %i.fu = icmp ugt i64 %i.fr, %i.ft
  br i1 %i.fu, label %tg3__json_is_array.exit.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ew, i64 48
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !246
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ew, i64 72
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !247
  %i.fz = tail call ptr %i.fw(i64 noundef %i.fq, ptr noundef %i.fy) #21, !inline_history !248 ; 8 uses
  %.not37.i.i = icmp eq ptr %i.fz, null
  br i1 %.not37.i.i, label %tg3__json_is_array.exit.thread, label %tg3__arena_alloc.exit.thread

tg3__arena_alloc.exit.thread:                     ; preds = %bb.s
  store ptr null, ptr %i.fz, align 8, !tbaa !249
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 32 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  store ptr %i.ga, ptr %i.gb, align 8, !tbaa !250
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fz, i64 24
  store i64 %spec.select.i.i, ptr %i.gc, align 8, !tbaa !244
  %i.gd = load i64, ptr %i.fo, align 8, !tbaa !245
  %i.ge = add i64 %i.gd, %i.fq
  store i64 %i.ge, ptr %i.fo, align 8, !tbaa !245
  %i.gf = load ptr, ptr %i.fd, align 8, !tbaa !241 ; 2 uses
  %.not38.i.i = icmp eq ptr %i.gf, null
  %..i.i = select i1 %.not38.i.i, ptr %i.ew, ptr %i.gf
  store ptr %i.fz, ptr %..i.i, align 8, !tbaa !251
  store ptr %i.fz, ptr %i.fd, align 8, !tbaa !241
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fz, i64 16
  store i64 %i.ex, ptr %i.gg, align 8, !tbaa !242
  br label %.preheader2824

tg3__arena_alloc.exit:                            ; preds = %bb.p
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  %.pre.i945 = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !250 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fe, i64 16
  %i.gi = getelementptr inbounds nuw i8, ptr %.pre.i945, i64 %i.fg
  %i.gj = add i64 %i.fg, %i.ex
  store i64 %i.gj, ptr %i.gh, align 8, !tbaa !242
  %.not755 = icmp eq ptr %.pre.i945, null
  br i1 %.not755, label %tg3__json_is_array.exit.thread, label %.preheader2824

.preheader2824:                                   ; preds = %tg3__arena_alloc.exit.thread, %tg3__arena_alloc.exit
  %i.gk = phi ptr [ %i.ga, %tg3__arena_alloc.exit.thread ], [ %i.gi, %tg3__arena_alloc.exit ] ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.gv = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.gw = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.gx = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 11 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 224
  br label %bb.t

bb.t:                                             ; preds = %.preheader2824, %bb.eg
  %.06682926 = phi i64 [ 0, %.preheader2824 ], [ %i.aov, %bb.eg ] ; 6 uses
  %i.hc = load i32, ptr %i.es, align 8, !tbaa !13
  %.not8.i = icmp eq i32 %i.hc, 5
  br i1 %.not8.i, label %bb.u, label %tg3__json_is_object.exit950.thread

bb.u:                                             ; preds = %bb.t
  %i.hd = load i64, ptr %i.eu, align 8, !tbaa !12
  %.not9.i = icmp ult i64 %.06682926, %i.hd
  br i1 %.not9.i, label %tg3json_array_get.exit, label %tg3__json_is_object.exit950.thread

tg3json_array_get.exit:                           ; preds = %bb.u
  %i.he = load ptr, ptr %i.gl, align 8, !tbaa !12 ; 2 uses
  %i.hf = getelementptr inbounds nuw [24 x i8], ptr %i.he, i64 %.06682926 ; 6 uses
  %.not.i949 = icmp eq ptr %i.he, null
  br i1 %.not.i949, label %tg3__json_is_object.exit950.thread, label %tg3__json_is_object.exit950

tg3__json_is_object.exit950:                      ; preds = %tg3json_array_get.exit
  %i.hg = load i32, ptr %i.hf, align 8, !tbaa !13
  %.not2704 = icmp eq i32 %i.hg, 6
  br i1 %.not2704, label %bb.v, label %tg3__json_is_object.exit950.thread

tg3__json_is_object.exit950.thread:               ; preds = %bb.t, %bb.u, %tg3json_array_get.exit, %tg3__json_is_object.exit950
  %i.hh = load ptr, ptr %i.gs, align 8, !tbaa !210
  %i.hi = load ptr, ptr %0, align 8, !tbaa !207
  %i.hj = trunc i64 %.06682926 to i32
  call void (ptr, ptr, i32, i32, ptr, ptr, ...) @tg3__error_pushf(ptr noundef %i.hh, ptr noundef %i.hi, i32 poison, i32 noundef 11, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.49, i32 noundef %i.hj) #20
  br label %bb.eg

bb.v:                                             ; preds = %tg3__json_is_object.exit950
  %i.hk = getelementptr inbounds nuw [112 x i8], ptr %i.gk, i64 %.06682926 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #19
  store i64 0, ptr %i.i, align 8, !tbaa !21
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 16 ; 2 uses
  store <16 x i8> zeroinitializer, ptr %i.hk, align 1, !tbaa !12
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hk, i64 24 ; 4 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hk, i64 32 ; 5 uses
  store <16 x i8> zeroinitializer, ptr %i.hl, align 1, !tbaa !12
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hk, i64 40 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hk, i64 48 ; 2 uses
  store <16 x i8> zeroinitializer, ptr %i.hn, align 1, !tbaa !12
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hk, i64 56 ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hk, i64 64
  store <16 x i8> zeroinitializer, ptr %i.hp, align 1, !tbaa !12
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hk, i64 80
  store <16 x i8> zeroinitializer, ptr %i.hr, align 1, !tbaa !12
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hk, i64 96
  store <16 x i8> zeroinitializer, ptr %i.hs, align 1, !tbaa !12
  store <16 x i8> zeroinitializer, ptr %i.ht, align 1, !tbaa !12
  call fastcc void @tg3__parse_string(ptr noundef nonnull %0, ptr noundef nonnull readonly %i.hf, ptr noundef nonnull @.str.64, ptr noundef nonnull %i.hk, i32 noundef 0, ptr noundef nonnull @.str.65) #20
  call fastcc void @tg3__parse_string(ptr noundef nonnull %0, ptr noundef nonnull readonly %i.hf, ptr noundef nonnull @.str.66, ptr noundef %i.ho, i32 noundef 0, ptr noundef nonnull @.str.65) #20
  call fastcc void @tg3__parse_uint64(ptr noundef nonnull %0, ptr noundef nonnull readonly %i.hf, ptr noundef nonnull @.str.67, ptr noundef %i.i, i32 noundef 1, ptr noundef nonnull @.str.65) #20
  %i.hu = load i64, ptr %i.i, align 8, !tbaa !21  ; 18 uses
  store i64 %i.hu, ptr %i.hl, align 8, !tbaa !252
  %i.hv = load i32, ptr %i.gm, align 8, !tbaa !255
  %i.hw = icmp ne i32 %i.hv, 0
  %i.hx = and i64 %.06682926, 4294967295
  %i.hy = icmp eq i64 %i.hx, 0
  %or.cond.i951 = and i1 %i.hy, %i.hw
  %i.hz = load i32, ptr %i.hp, align 8, !tbaa !256 ; 13 uses
  %i.ia = icmp eq i32 %i.hz, 0                    ; 2 uses
  br i1 %or.cond.i951, label %bb.w, label %bb.ba

bb.w:                                             ; preds = %bb.v
  br i1 %i.ia, label %bb.x, label %.thread.i

bb.x:                                             ; preds = %bb.w
  %i.ib = load ptr, ptr %i.gz, align 8, !tbaa !257 ; 2 uses
  %.not96.i = icmp eq ptr %i.ib, null
  br i1 %.not96.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ic = load i64, ptr %i.ha, align 8, !tbaa !258
  %i.id = icmp ult i64 %i.ic, %i.hu
  br i1 %i.id, label %bb.z, label %bb.ah

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.ie = load ptr, ptr %i.gs, align 8, !tbaa !210 ; 6 uses
  %.not.i98.i = icmp eq ptr %i.ie, null
  br i1 %.not.i98.i, label %tg3__parse_buffer.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 8 ; 3 uses
  %i.ig = load i32, ptr %i.if, align 8, !tbaa !136 ; 4 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ie, i64 12 ; 2 uses
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !191 ; 3 uses
  %.not27.i.i958 = icmp ult i32 %i.ig, %i.ii
  %.pre.i.i = load ptr, ptr %i.ie, align 8, !tbaa !137 ; 11 uses
  %.pre.i.i3942 = ptrtoaddr ptr %.pre.i.i to i64
  br i1 %.not27.i.i958, label %bb.ag, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %.not28.i.i = icmp eq i32 %i.ii, 0
  %i.ij = shl i32 %i.ii, 1
  %spec.select.i.i959 = select i1 %.not28.i.i, i32 16, i32 %i.ij ; 2 uses
  %i.ik = zext i32 %spec.select.i.i959 to i64
  %i.il = shl nuw nsw i64 %i.ik, 5                ; 4 uses
  %.not.i.i.i960 = icmp eq ptr %.pre.i.i, null
  %i.im = or disjoint i64 %i.il, 8
  %i.in = load i64, ptr @test_heap_used, align 8, !tbaa !21 ; 4 uses
  %i.io = add i64 %i.in, %i.im                    ; 3 uses
  %i.ip = icmp ugt i64 %i.io, 524288              ; 2 uses
  br i1 %.not.i.i.i960, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  br i1 %i.ip, label %tg3__parse_buffer.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.iq = getelementptr inbounds nuw i8, ptr @test_heap, i64 %i.in ; 2 uses
  store i64 %i.il, ptr %i.iq, align 8, !tbaa !21
  store i64 %i.io, ptr @test_heap_used, align 8, !tbaa !21
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 8
  br label %.loopexit.i.i

bb.ae:                                            ; preds = %bb.ab
  br i1 %i.ip, label %tg3__parse_buffer.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.is = getelementptr inbounds i8, ptr %.pre.i.i, i64 -8
  %i.it = load i64, ptr %i.is, align 8, !tbaa !21
  %i.iu = getelementptr inbounds nuw i8, ptr @test_heap, i64 %i.in ; 2 uses
  store i64 %i.il, ptr %i.iu, align 8, !tbaa !21
  store i64 %i.io, ptr @test_heap_used, align 8, !tbaa !21
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 8 ; 9 uses
  %i.iw = call i64 @llvm.umin.i64(i64 %i.it, i64 %i.il) ; 11 uses
  %.not27.i.i.i = icmp eq i64 %i.iw, 0
  br i1 %.not27.i.i.i, label %.loopexit.i.i, label %iter.check3957

iter.check3957:                                   ; preds = %bb.af
  %min.iters.check3944 = icmp samesign ult i64 %i.iw, 4
  br i1 %min.iters.check3944, label %.lr.ph.i.i.i961.preheader, label %vector.memcheck3941

vector.memcheck3941:                              ; preds = %iter.check3957
  %i.ix = add i64 %i.in, add (i64 ptrtoaddr (ptr @test_heap to i64), i64 8)
  %i.iy = sub i64 %.pre.i.i3942, %i.ix
  %diff.check3943 = icmp ugt i64 %i.iy, -32
  br i1 %diff.check3943, label %.lr.ph.i.i.i961.preheader, label %vector.main.loop.iter.check3945

vector.main.loop.iter.check3945:                  ; preds = %vector.memcheck3941
  %min.iters.check3946 = icmp samesign ult i64 %i.iw, 32
  br i1 %min.iters.check3946, label %vec.epilog.ph3961, label %vector.ph3947

vector.ph3947:                                    ; preds = %vector.main.loop.iter.check3945
  %i.iz = and i64 %i.iw, 28
  %n.vec3948 = and i64 %i.iw, 137438953440        ; 4 uses
  br label %vector.body3949

vector.body3949:                                  ; preds = %vector.body3949, %vector.ph3947
  %index3950 = phi i64 [ 0, %vector.ph3947 ], [ %index.next3953, %vector.body3949 ] ; 3 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 %index3950 ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 16
  %wide.load3951 = load <16 x i8>, ptr %i.ja, align 1, !tbaa !12
  %wide.load3952 = load <16 x i8>, ptr %i.jb, align 1, !tbaa !12
  %i.jc = getelementptr inbounds nuw i8, ptr %i.iv, i64 %index3950 ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 16
  store <16 x i8> %wide.load3951, ptr %i.jc, align 1, !tbaa !12
  store <16 x i8> %wide.load3952, ptr %i.jd, align 1, !tbaa !12
  %index.next3953 = add nuw i64 %index3950, 32    ; 2 uses
  %i.je = icmp eq i64 %index.next3953, %n.vec3948
  br i1 %i.je, label %middle.block3954, label %vector.body3949, !llvm.loop !259

middle.block3954:                                 ; preds = %vector.body3949
  %cmp.n3955 = icmp eq i64 %i.iw, %n.vec3948
  br i1 %cmp.n3955, label %.loopexit.loopexit.i.i, label %vec.epilog.iter.check3959

vec.epilog.iter.check3959:                        ; preds = %middle.block3954
  %min.epilog.iters.check3960 = icmp eq i64 %i.iz, 0
  br i1 %min.epilog.iters.check3960, label %.lr.ph.i.i.i961.preheader, label %vec.epilog.ph3961, !prof !36

vec.epilog.ph3961:                                ; preds = %vector.main.loop.iter.check3945, %vec.epilog.iter.check3959
  %vec.epilog.resume.val3956 = phi i64 [ %n.vec3948, %vec.epilog.iter.check3959 ], [ 0, %vector.main.loop.iter.check3945 ]
  %n.vec3962 = and i64 %i.iw, 137438953468        ; 3 uses
  br label %vec.epilog.vector.body3963

vec.epilog.vector.body3963:                       ; preds = %vec.epilog.vector.body3963, %vec.epilog.ph3961
  %index3964 = phi i64 [ %vec.epilog.resume.val3956, %vec.epilog.ph3961 ], [ %index.next3966, %vec.epilog.vector.body3963 ] ; 3 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 %index3964
  %wide.load3965 = load <4 x i8>, ptr %i.jf, align 1, !tbaa !12
  %i.jg = getelementptr inbounds nuw i8, ptr %i.iv, i64 %index3964
  store <4 x i8> %wide.load3965, ptr %i.jg, align 1, !tbaa !12
  %index.next3966 = add nuw i64 %index3964, 4     ; 2 uses
  %i.jh = icmp eq i64 %index.next3966, %n.vec3962
  br i1 %i.jh, label %vec.epilog.middle.block3967, label %vec.epilog.vector.body3963, !llvm.loop !260

vec.epilog.middle.block3967:                      ; preds = %vec.epilog.vector.body3963
  %cmp.n3968 = icmp eq i64 %i.iw, %n.vec3962
  br i1 %cmp.n3968, label %.loopexit.loopexit.i.i, label %.lr.ph.i.i.i961.preheader

.lr.ph.i.i.i961.preheader:                        ; preds = %vector.memcheck3941, %iter.check3957, %vec.epilog.iter.check3959, %vec.epilog.middle.block3967
  %.026.i.i.i.ph = phi i64 [ 0, %iter.check3957 ], [ 0, %vector.memcheck3941 ], [ %n.vec3948, %vec.epilog.iter.check3959 ], [ %n.vec3962, %vec.epilog.middle.block3967 ] ; 3 uses
  %xtraiter4676 = and i64 %i.iw, 3                ; 2 uses
  %lcmp.mod4677.not = icmp eq i64 %xtraiter4676, 0
  br i1 %lcmp.mod4677.not, label %.lr.ph.i.i.i961.prol.loopexit, label %.lr.ph.i.i.i961.prol

.lr.ph.i.i.i961.prol:                             ; preds = %.lr.ph.i.i.i961.preheader, %.lr.ph.i.i.i961.prol
  %.026.i.i.i.prol = phi i64 [ %i.jl, %.lr.ph.i.i.i961.prol ], [ %.026.i.i.i.ph, %.lr.ph.i.i.i961.preheader ] ; 3 uses
  %prol.iter4678 = phi i64 [ %prol.iter4678.next, %.lr.ph.i.i.i961.prol ], [ 0, %.lr.ph.i.i.i961.preheader ]
  %i.ji = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 %.026.i.i.i.prol
  %i.jj = load i8, ptr %i.ji, align 1, !tbaa !12
  %i.jk = getelementptr inbounds nuw i8, ptr %i.iv, i64 %.026.i.i.i.prol
  store i8 %i.jj, ptr %i.jk, align 1, !tbaa !12
  %i.jl = add nuw nsw i64 %.026.i.i.i.prol, 1     ; 2 uses
  %prol.iter4678.next = add i64 %prol.iter4678, 1 ; 2 uses
  %prol.iter4678.cmp.not = icmp eq i64 %prol.iter4678.next, %xtraiter4676
  br i1 %prol.iter4678.cmp.not, label %.lr.ph.i.i.i961.prol.loopexit, label %.lr.ph.i.i.i961.prol, !llvm.loop !261

.lr.ph.i.i.i961.prol.loopexit:                    ; preds = %.lr.ph.i.i.i961.prol, %.lr.ph.i.i.i961.preheader
  %.026.i.i.i.unr = phi i64 [ %.026.i.i.i.ph, %.lr.ph.i.i.i961.preheader ], [ %i.jl, %.lr.ph.i.i.i961.prol ]
  %i.jm = sub nsw i64 %.026.i.i.i.ph, %i.iw
  %i.jn = icmp ugt i64 %i.jm, -4
  br i1 %i.jn, label %.loopexit.loopexit.i.i, label %.lr.ph.i.i.i961

.lr.ph.i.i.i961:                                  ; preds = %.lr.ph.i.i.i961.prol.loopexit, %.lr.ph.i.i.i961
  %.026.i.i.i = phi i64 [ %i.kd, %.lr.ph.i.i.i961 ], [ %.026.i.i.i.unr, %.lr.ph.i.i.i961.prol.loopexit ] ; 6 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 %.026.i.i.i
  %i.jp = load i8, ptr %i.jo, align 1, !tbaa !12
  %i.jq = getelementptr inbounds nuw i8, ptr %i.iv, i64 %.026.i.i.i
  store i8 %i.jp, ptr %i.jq, align 1, !tbaa !12
  %i.jr = add nuw nsw i64 %.026.i.i.i, 1          ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 %i.jr
  %i.jt = load i8, ptr %i.js, align 1, !tbaa !12
  %i.ju = getelementptr inbounds nuw i8, ptr %i.iv, i64 %i.jr
  store i8 %i.jt, ptr %i.ju, align 1, !tbaa !12
  %i.jv = add nuw nsw i64 %.026.i.i.i, 2          ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 %i.jv
  %i.jx = load i8, ptr %i.jw, align 1, !tbaa !12
  %i.jy = getelementptr inbounds nuw i8, ptr %i.iv, i64 %i.jv
  store i8 %i.jx, ptr %i.jy, align 1, !tbaa !12
  %i.jz = add nuw nsw i64 %.026.i.i.i, 3          ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 %i.jz
  %i.kb = load i8, ptr %i.ka, align 1, !tbaa !12
  %i.kc = getelementptr inbounds nuw i8, ptr %i.iv, i64 %i.jz
  store i8 %i.kb, ptr %i.kc, align 1, !tbaa !12
  %i.kd = add nuw nsw i64 %.026.i.i.i, 4          ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %i.kd, %i.iw
  br i1 %exitcond.not.i.i.i.3, label %.loopexit.loopexit.i.i, label %.lr.ph.i.i.i961, !llvm.loop !262

.loopexit.loopexit.i.i:                           ; preds = %.lr.ph.i.i.i961.prol.loopexit, %.lr.ph.i.i.i961, %vec.epilog.middle.block3967, %middle.block3954
  %.pre33.pre.i.i = load i32, ptr %i.if, align 8, !tbaa !136
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.loopexit.loopexit.i.i, %bb.af, %bb.ad
  %.pre33.i.i = phi i32 [ %i.ig, %bb.ad ], [ %i.ig, %bb.af ], [ %.pre33.pre.i.i, %.loopexit.loopexit.i.i ]
  %.018.i.ph.i.i = phi ptr [ %i.ir, %bb.ad ], [ %i.iv, %bb.af ], [ %i.iv, %.loopexit.loopexit.i.i ] ; 2 uses
  store ptr %.018.i.ph.i.i, ptr %i.ie, align 8, !tbaa !137
  store i32 %spec.select.i.i959, ptr %i.ih, align 4, !tbaa !191
  br label %bb.ag

bb.ag:                                            ; preds = %.loopexit.i.i, %bb.aa
  %i.ke = phi i32 [ %.pre33.i.i, %.loopexit.i.i ], [ %i.ig, %bb.aa ] ; 2 uses
  %i.kf = phi ptr [ %.018.i.ph.i.i, %.loopexit.i.i ], [ %.pre.i.i, %bb.aa ]
  %i.kg = add i32 %i.ke, 1
  store i32 %i.kg, ptr %i.if, align 8, !tbaa !136
end_hunk_1
begin_hunk_2_@tg3__parse_from_json:tg3json__strlen_fallback.exit.i
  %.010.i.i.i.ph = phi ptr [ %i.gx, %iter.check4083 ], [ %i.so, %vec.epilog.iter.check4085 ], [ %i.su, %vec.epilog.middle.block4095 ]
  %.059.i.i.i.ph = phi ptr [ %i.j, %iter.check4083 ], [ %i.sp, %vec.epilog.iter.check4085 ], [ %i.sv, %vec.epilog.middle.block4095 ]
  %.068.i.i.i.ph = phi i64 [ %gepdiff.i.i, %iter.check4083 ], [ %i.sq, %vec.epilog.iter.check4085 ], [ %i.sw, %vec.epilog.middle.block4095 ]
  br label %.lr.ph.i19.i.i

.lr.ph.i19.i.i:                                   ; preds = %.lr.ph.i19.i.i.preheader, %.lr.ph.i19.i.i
  %.010.i.i.i = phi ptr [ %i.sz, %.lr.ph.i19.i.i ], [ %.010.i.i.i.ph, %.lr.ph.i19.i.i.preheader ] ; 2 uses
  %.059.i.i.i = phi ptr [ %i.tb, %.lr.ph.i19.i.i ], [ %.059.i.i.i.ph, %.lr.ph.i19.i.i.preheader ] ; 2 uses
  %.068.i.i.i = phi i64 [ %i.sy, %.lr.ph.i19.i.i ], [ %.068.i.i.i.ph, %.lr.ph.i19.i.i.preheader ]
  %i.sy = add nsw i64 %.068.i.i.i, -1             ; 2 uses
  %i.sz = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 1
  %i.ta = load i8, ptr %.010.i.i.i, align 1, !tbaa !12
  %i.tb = getelementptr inbounds nuw i8, ptr %.059.i.i.i, i64 1
  store i8 %i.ta, ptr %.059.i.i.i, align 1, !tbaa !12
  %.not.i20.i.i = icmp eq i64 %i.sy, 0
  br i1 %.not.i20.i.i, label %tg3__memcpy.exit.i.i, label %.lr.ph.i19.i.i, !llvm.loop !286

tg3__memcpy.exit.i.i:                             ; preds = %.lr.ph.i19.i.i, %middle.block4077, %vec.epilog.middle.block4095, %tg3__strlen.exit.i.i
  %i.tc = getelementptr inbounds nuw i8, ptr %i.j, i64 %gepdiff.i.i
  store i8 0, ptr %i.tc, align 1, !tbaa !12
  %i.td = icmp eq i64 %gepdiff.i.i.i, 0
  br i1 %i.td, label %tg3__decode_data_uri.exit.i, label %.preheader48.i.i.i

.preheader48.i.i.i:                               ; preds = %tg3__memcpy.exit.i.i, %bb.bf
  %.03649.i.i.i = phi i64 [ %i.ti, %bb.bf ], [ %gepdiff.i.i.i, %tg3__memcpy.exit.i.i ] ; 3 uses
  %i.te = getelementptr i8, ptr %i.sl, i64 %.03649.i.i.i
  %i.tf = getelementptr i8, ptr %i.te, i64 -1
  %i.tg = load i8, ptr %i.tf, align 1, !tbaa !12
  %i.th = icmp eq i8 %i.tg, 61
  br i1 %i.th, label %bb.bf, label %.critedge.i.i.i

bb.bf:                                            ; preds = %.preheader48.i.i.i
  %i.ti = add i64 %.03649.i.i.i, -1               ; 2 uses
  %.not.i23.i.i = icmp eq i64 %i.ti, 0
  br i1 %.not.i23.i.i, label %.critedge.i.i.i, label %.preheader48.i.i.i, !llvm.loop !287

.critedge.i.i.i:                                  ; preds = %bb.bf, %.preheader48.i.i.i
  %.036.lcssa.i.i.i = phi i64 [ 0, %bb.bf ], [ %.03649.i.i.i, %.preheader48.i.i.i ] ; 3 uses
  %i.tj = mul i64 %.036.lcssa.i.i.i, 3
  %i.tk = lshr i64 %i.tj, 2                       ; 2 uses
  %i.tl = icmp eq ptr %i.qy, null
  br i1 %i.tl, label %tg3__decode_data_uri.exit.i, label %bb.bg

bb.bg:                                            ; preds = %.critedge.i.i.i
  %i.tm = getelementptr inbounds nuw i8, ptr %i.qy, i64 32
  %i.tn = load i64, ptr %i.tm, align 8, !tbaa !227 ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.tn, 0
  %i.to = add i64 %i.tn, -1
  %or.cond28.i.i.i.i = icmp ult i64 %i.to, %i.tk
  br i1 %or.cond28.i.i.i.i, label %tg3__decode_data_uri.exit.i, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.tp = add nuw nsw i64 %i.tk, 8
  %i.tq = and i64 %i.tp, 9223372036854775800      ; 3 uses
  %i.tr = getelementptr inbounds nuw i8, ptr %i.qy, i64 8 ; 3 uses
  %i.ts = load ptr, ptr %i.tr, align 8, !tbaa !241 ; 4 uses
  %.not26.i.i.i.i = icmp eq ptr %i.ts, null
  br i1 %.not26.i.i.i.i, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.tt = getelementptr inbounds nuw i8, ptr %i.ts, i64 16 ; 2 uses
  %i.tu = load i64, ptr %i.tt, align 8, !tbaa !242 ; 2 uses
  %i.tv = add i64 %i.tu, %i.tq                    ; 2 uses
  %i.tw = getelementptr inbounds nuw i8, ptr %i.ts, i64 24
  %i.tx = load i64, ptr %i.tw, align 8, !tbaa !244
  %i.ty = icmp ugt i64 %i.tv, %i.tx
  br i1 %i.ty, label %bb.bj, label %tg3__arena_alloc.exit.i.i.i

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %i.tz = getelementptr inbounds nuw i8, ptr %i.qy, i64 40
  %i.ua = load i64, ptr %i.tz, align 8, !tbaa !223
  %spec.select.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ua, i64 range(i64 0, -7) %i.tq) ; 3 uses
  %i.ub = icmp ugt i64 %spec.select.i.i.i.i.i, %i.tn
  %or.cond.i.i.i.i.i = select i1 %.not.i.i.i.i, i1 %i.ub, i1 false
  br i1 %or.cond.i.i.i.i.i, label %tg3__decode_data_uri.exit.i, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.uc = getelementptr inbounds nuw i8, ptr %i.qy, i64 16 ; 3 uses
  %i.ud = load i64, ptr %i.uc, align 8, !tbaa !245
  %i.ue = add i64 %spec.select.i.i.i.i.i, 32      ; 3 uses
  %i.uf = add i64 %i.ud, %i.ue
  %i.ug = getelementptr inbounds nuw i8, ptr %i.qy, i64 24
  %i.uh = load i64, ptr %i.ug, align 8, !tbaa !226
  %i.ui = icmp ugt i64 %i.uf, %i.uh
  br i1 %i.ui, label %tg3__decode_data_uri.exit.i, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.uj = getelementptr inbounds nuw i8, ptr %i.qy, i64 48
  %i.uk = load ptr, ptr %i.uj, align 8, !tbaa !246
  %i.ul = getelementptr inbounds nuw i8, ptr %i.qy, i64 72
  %i.um = load ptr, ptr %i.ul, align 8, !tbaa !247
  %i.un = call ptr %i.uk(i64 noundef %i.ue, ptr noundef %i.um) #21, !inline_history !288 ; 8 uses
  %.not37.i.i.i.i.i = icmp eq ptr %i.un, null
  br i1 %.not37.i.i.i.i.i, label %tg3__decode_data_uri.exit.i, label %tg3__arena_alloc.exit.thread62.i.i.i

tg3__arena_alloc.exit.thread62.i.i.i:             ; preds = %bb.bl
  store ptr null, ptr %i.un, align 8, !tbaa !249
  %i.uo = getelementptr inbounds nuw i8, ptr %i.un, i64 32 ; 2 uses
  %i.up = getelementptr inbounds nuw i8, ptr %i.un, i64 8
  store ptr %i.uo, ptr %i.up, align 8, !tbaa !250
  %i.uq = getelementptr inbounds nuw i8, ptr %i.un, i64 24
  store i64 %spec.select.i.i.i.i.i, ptr %i.uq, align 8, !tbaa !244
  %i.ur = load i64, ptr %i.uc, align 8, !tbaa !245
  %i.us = add i64 %i.ur, %i.ue
  store i64 %i.us, ptr %i.uc, align 8, !tbaa !245
  %i.ut = load ptr, ptr %i.tr, align 8, !tbaa !241 ; 2 uses
  %.not38.i.i.i.i.i = icmp eq ptr %i.ut, null
  %..i.i.i.i.i = select i1 %.not38.i.i.i.i.i, ptr %i.qy, ptr %i.ut
  store ptr %i.un, ptr %..i.i.i.i.i, align 8, !tbaa !251
  store ptr %i.un, ptr %i.tr, align 8, !tbaa !241
  %i.uu = getelementptr inbounds nuw i8, ptr %i.un, i64 16
  store i64 %i.tq, ptr %i.uu, align 8, !tbaa !242
  br label %.preheader.i.i.i

tg3__arena_alloc.exit.i.i.i:                      ; preds = %bb.bi
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ts, i64 8
  %.pre.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !250 ; 2 uses
  %i.uv = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i, i64 %i.tu
  store i64 %i.tv, ptr %i.tt, align 8, !tbaa !242
  %.not42.i.i.i = icmp eq ptr %.pre.i.i.i.i, null
  br i1 %.not42.i.i.i, label %tg3__decode_data_uri.exit.i, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %tg3__arena_alloc.exit.i.i.i, %tg3__arena_alloc.exit.thread62.i.i.i
  %i.uw = phi ptr [ %i.uo, %tg3__arena_alloc.exit.thread62.i.i.i ], [ %i.uv, %tg3__arena_alloc.exit.i.i.i ] ; 3 uses
  %.not54.i.i.i = icmp eq i64 %.036.lcssa.i.i.i, 0
  br i1 %.not54.i.i.i, label %tg3__decode_data_uri.exit.i, label %.lr.ph.i21.i.i

.lr.ph.i21.i.i:                                   ; preds = %.preheader.i.i.i, %bb.bt
  %.053.i.i.i = phi i32 [ %.2.i.i.i, %bb.bt ], [ 0, %.preheader.i.i.i ] ; 4 uses
  %.02952.i.i.i = phi i32 [ %.130.i.i.i, %bb.bt ], [ 0, %.preheader.i.i.i ] ; 2 uses
  %.03151.i.i.i = phi i64 [ %.233.i.i.i, %bb.bt ], [ 0, %.preheader.i.i.i ] ; 4 uses
  %.03450.i.i.i = phi i64 [ %i.vp, %bb.bt ], [ 0, %.preheader.i.i.i ] ; 2 uses
  %i.ux = getelementptr inbounds nuw i8, ptr %i.sl, i64 %.03450.i.i.i
  %i.uy = load i8, ptr %i.ux, align 1, !tbaa !12  ; 5 uses
  %i.uz = zext i8 %i.uy to i32                    ; 3 uses
  %i.va = add i8 %i.uy, -65
  %or.cond.i.i.i.i = icmp ult i8 %i.va, 26
  br i1 %or.cond.i.i.i.i, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %.lr.ph.i21.i.i
  %i.vb = add nsw i32 %i.uz, -65
  br label %tg3__b64_decode_char.exit.thread.i.i.i

bb.bn:                                            ; preds = %.lr.ph.i21.i.i
  %i.vc = add i8 %i.uy, -97
  %or.cond5.i.i.i.i = icmp ult i8 %i.vc, 26
  br i1 %or.cond5.i.i.i.i, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.vd = add nsw i32 %i.uz, -71
  br label %tg3__b64_decode_char.exit.thread.i.i.i

bb.bp:                                            ; preds = %bb.bn
  %i.ve = add i8 %i.uy, -48
  %or.cond8.i.i.i.i = icmp ult i8 %i.ve, 10
  br i1 %or.cond8.i.i.i.i, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.vf = add nuw nsw i32 %i.uz, 4
  br label %tg3__b64_decode_char.exit.thread.i.i.i

bb.br:                                            ; preds = %bb.bp
  switch i8 %i.uy, label %bb.bt [
    i8 43, label %tg3__b64_decode_char.exit.thread.i.i.i
    i8 47, label %tg3__b64_decode_char.exit.thread.fold.split.i.i.i
  ]

tg3__b64_decode_char.exit.thread.fold.split.i.i.i: ; preds = %bb.br
  br label %tg3__b64_decode_char.exit.thread.i.i.i

tg3__b64_decode_char.exit.thread.i.i.i:           ; preds = %tg3__b64_decode_char.exit.thread.fold.split.i.i.i, %bb.br, %bb.bq, %bb.bo, %bb.bm
  %.0.i4347.i.i.i = phi i32 [ 62, %bb.br ], [ %i.vb, %bb.bm ], [ %i.vf, %bb.bq ], [ %i.vd, %bb.bo ], [ 63, %tg3__b64_decode_char.exit.thread.fold.split.i.i.i ]
  %i.vg = shl i32 %.02952.i.i.i, 6
  %i.vh = or i32 %.0.i4347.i.i.i, %i.vg           ; 3 uses
  %i.vi = add nuw nsw i32 %.053.i.i.i, 6
  %i.vj = icmp sgt i32 %.053.i.i.i, 1
  br i1 %i.vj, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %tg3__b64_decode_char.exit.thread.i.i.i
  %i.vk = add nsw i32 %.053.i.i.i, -2             ; 2 uses
  %i.vl = lshr i32 %i.vh, %i.vk
  %i.vm = trunc i32 %i.vl to i8
  %i.vn = add i64 %.03151.i.i.i, 1
  %i.vo = getelementptr inbounds nuw i8, ptr %i.uw, i64 %.03151.i.i.i
  store i8 %i.vm, ptr %i.vo, align 1, !tbaa !12
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %tg3__b64_decode_char.exit.thread.i.i.i, %bb.br
  %.233.i.i.i = phi i64 [ %.03151.i.i.i, %bb.br ], [ %i.vn, %bb.bs ], [ %.03151.i.i.i, %tg3__b64_decode_char.exit.thread.i.i.i ] ; 2 uses
  %.130.i.i.i = phi i32 [ %.02952.i.i.i, %bb.br ], [ %i.vh, %bb.bs ], [ %i.vh, %tg3__b64_decode_char.exit.thread.i.i.i ]
  %.2.i.i.i = phi i32 [ %.053.i.i.i, %bb.br ], [ %i.vk, %bb.bs ], [ %i.vi, %tg3__b64_decode_char.exit.thread.i.i.i ]
  %i.vp = add nuw i64 %.03450.i.i.i, 1            ; 2 uses
  %exitcond.not.i22.i.i = icmp eq i64 %i.vp, %.036.lcssa.i.i.i
  br i1 %exitcond.not.i22.i.i, label %tg3__decode_data_uri.exit.i, label %.lr.ph.i21.i.i, !llvm.loop !289

tg3__decode_data_uri.exit.i:                      ; preds = %bb.bb, %bb.bt, %.preheader.i.i.i, %tg3__arena_alloc.exit.i.i.i, %bb.bl, %bb.bk, %bb.bj, %bb.bg, %.critedge.i.i.i, %tg3__memcpy.exit.i.i, %.preheader.6.i.i.i, %.preheader.5.i.i.i, %.preheader.4.i.i.i, %.preheader.3.i.i.i, %.preheader.2.i.i.i, %.preheader.1.i.i.i, %.preheader.preheader.i.i.i, %tg3__memcpy.exit.i.i.i, %tg3__memcmp.exit.thread.i.i.i, %.preheader53.4.i.i.i, %.preheader53.3.i.i.i, %.preheader53.2.i.i.i, %.preheader53.1.i.i.i, %tg3__memset.exit108.i
  %storemerge.i.i = phi i64 [ 0, %.preheader.i.i.i ], [ %.233.i.i.i, %bb.bt ], [ 0, %tg3__memcpy.exit.i.i.i ], [ 0, %tg3__memcmp.exit.thread.i.i.i ], [ 0, %.preheader.preheader.i.i.i ], [ 0, %tg3__memset.exit108.i ], [ 0, %.preheader.6.i.i.i ], [ 0, %.preheader.5.i.i.i ], [ 0, %.preheader.4.i.i.i ], [ 0, %.preheader.3.i.i.i ], [ 0, %.preheader.2.i.i.i ], [ 0, %.preheader.1.i.i.i ], [ 0, %.preheader53.4.i.i.i ], [ 0, %.preheader53.3.i.i.i ], [ 0, %.preheader53.2.i.i.i ], [ 0, %.preheader53.1.i.i.i ], [ 0, %tg3__arena_alloc.exit.i.i.i ], [ 0, %tg3__memcpy.exit.i.i ], [ 0, %bb.bl ], [ 0, %bb.bj ], [ 0, %bb.bk ], [ 0, %.critedge.i.i.i ], [ 0, %bb.bg ], [ 0, %bb.bb ]
  %.015.i.i = phi ptr [ %i.uw, %.preheader.i.i.i ], [ %i.uw, %bb.bt ], [ null, %tg3__memcpy.exit.i.i.i ], [ null, %tg3__memcmp.exit.thread.i.i.i ], [ null, %.preheader.preheader.i.i.i ], [ null, %tg3__memset.exit108.i ], [ null, %.preheader.6.i.i.i ], [ null, %.preheader.5.i.i.i ], [ null, %.preheader.4.i.i.i ], [ null, %.preheader.3.i.i.i ], [ null, %.preheader.2.i.i.i ], [ null, %.preheader.1.i.i.i ], [ null, %.preheader53.4.i.i.i ], [ null, %.preheader53.3.i.i.i ], [ null, %.preheader53.2.i.i.i ], [ null, %.preheader53.1.i.i.i ], [ null, %tg3__arena_alloc.exit.i.i.i ], [ null, %tg3__memcpy.exit.i.i ], [ null, %bb.bl ], [ null, %bb.bj ], [ null, %bb.bk ], [ null, %.critedge.i.i.i ], [ null, %bb.bg ], [ null, %bb.bb ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  %i.vq = icmp ne ptr %.015.i.i, null
  %7 = load i64, ptr %i.i, align 8
  %i.vr = icmp eq i64 %7, 0
  %or.cond8.not.i = select i1 %i.vq, i1 true, i1 %i.vr
  br i1 %or.cond8.not.i, label %tg3__error_push.exit129.i, label %bb.bu

bb.bu:                                            ; preds = %tg3__decode_data_uri.exit.i
  %i.vs = load ptr, ptr %i.gs, align 8, !tbaa !210 ; 6 uses
  %.not.i114.i = icmp eq ptr %i.vs, null
  br i1 %.not.i114.i, label %tg3__error_push.exit129.thread.i, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vs, i64 8 ; 3 uses
  %i.vu = load i32, ptr %i.vt, align 8, !tbaa !136 ; 4 uses
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vs, i64 12 ; 2 uses
  %i.vw = load i32, ptr %i.vv, align 4, !tbaa !191 ; 3 uses
  %.not27.i115.i = icmp ult i32 %i.vu, %i.vw
  %.pre.i116.i = load ptr, ptr %i.vs, align 8, !tbaa !137 ; 11 uses
  %.pre.i116.i4037 = ptrtoaddr ptr %.pre.i116.i to i64
  br i1 %.not27.i115.i, label %bb.cb, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %.not28.i117.i = icmp eq i32 %i.vw, 0
  %i.vx = shl i32 %i.vw, 1
  %spec.select.i118.i = select i1 %.not28.i117.i, i32 16, i32 %i.vx ; 2 uses
  %i.vy = zext i32 %spec.select.i118.i to i64
  %i.vz = shl nuw nsw i64 %i.vy, 5                ; 4 uses
  %.not.i.i119.i = icmp eq ptr %.pre.i116.i, null
  %i.wa = or disjoint i64 %i.vz, 8
  %i.wb = load i64, ptr @test_heap_used, align 8, !tbaa !21 ; 4 uses
  %i.wc = add i64 %i.wb, %i.wa                    ; 3 uses
  %i.wd = icmp ugt i64 %i.wc, 524288              ; 2 uses
  br i1 %.not.i.i119.i, label %bb.bx, label %bb.bz

bb.bx:                                            ; preds = %bb.bw
  br i1 %i.wd, label %tg3__error_push.exit129.thread.i, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.we = getelementptr inbounds nuw i8, ptr @test_heap, i64 %i.wb ; 2 uses
  store i64 %i.vz, ptr %i.we, align 8, !tbaa !21
  store i64 %i.wc, ptr @test_heap_used, align 8, !tbaa !21
  %i.wf = getelementptr inbounds nuw i8, ptr %i.we, i64 8
  br label %.loopexit.i126.i

bb.bz:                                            ; preds = %bb.bw
  br i1 %i.wd, label %tg3__error_push.exit129.thread.i, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.wg = getelementptr inbounds i8, ptr %.pre.i116.i, i64 -8
  %i.wh = load i64, ptr %i.wg, align 8, !tbaa !21
  %i.wi = getelementptr inbounds nuw i8, ptr @test_heap, i64 %i.wb ; 2 uses
  store i64 %i.vz, ptr %i.wi, align 8, !tbaa !21
  store i64 %i.wc, ptr @test_heap_used, align 8, !tbaa !21
  %i.wj = getelementptr inbounds nuw i8, ptr %i.wi, i64 8 ; 9 uses
  %i.wk = call i64 @llvm.umin.i64(i64 %i.wh, i64 %i.vz) ; 11 uses
  %.not27.i.i120.i = icmp eq i64 %i.wk, 0
  br i1 %.not27.i.i120.i, label %.loopexit.i126.i, label %iter.check4052

iter.check4052:                                   ; preds = %bb.ca
  %min.iters.check4039 = icmp samesign ult i64 %i.wk, 4
  br i1 %min.iters.check4039, label %.lr.ph.i.i121.i.preheader, label %vector.memcheck4036

vector.memcheck4036:                              ; preds = %iter.check4052
  %i.wl = add i64 %i.wb, add (i64 ptrtoaddr (ptr @test_heap to i64), i64 8)
  %i.wm = sub i64 %.pre.i116.i4037, %i.wl
  %diff.check4038 = icmp ugt i64 %i.wm, -32
  br i1 %diff.check4038, label %.lr.ph.i.i121.i.preheader, label %vector.main.loop.iter.check4040

vector.main.loop.iter.check4040:                  ; preds = %vector.memcheck4036
  %min.iters.check4041 = icmp samesign ult i64 %i.wk, 32
  br i1 %min.iters.check4041, label %vec.epilog.ph4056, label %vector.ph4042

vector.ph4042:                                    ; preds = %vector.main.loop.iter.check4040
  %i.wn = and i64 %i.wk, 28
  %n.vec4043 = and i64 %i.wk, 137438953440        ; 4 uses
  br label %vector.body4044

vector.body4044:                                  ; preds = %vector.body4044, %vector.ph4042
  %index4045 = phi i64 [ 0, %vector.ph4042 ], [ %index.next4048, %vector.body4044 ] ; 3 uses
  %i.wo = getelementptr inbounds nuw i8, ptr %.pre.i116.i, i64 %index4045 ; 2 uses
  %i.wp = getelementptr inbounds nuw i8, ptr %i.wo, i64 16
  %wide.load4046 = load <16 x i8>, ptr %i.wo, align 1, !tbaa !12
  %wide.load4047 = load <16 x i8>, ptr %i.wp, align 1, !tbaa !12
  %i.wq = getelementptr inbounds nuw i8, ptr %i.wj, i64 %index4045 ; 2 uses
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wq, i64 16
  store <16 x i8> %wide.load4046, ptr %i.wq, align 1, !tbaa !12
  store <16 x i8> %wide.load4047, ptr %i.wr, align 1, !tbaa !12
  %index.next4048 = add nuw i64 %index4045, 32    ; 2 uses
  %i.ws = icmp eq i64 %index.next4048, %n.vec4043
  br i1 %i.ws, label %middle.block4049, label %vector.body4044, !llvm.loop !290

middle.block4049:                                 ; preds = %vector.body4044
  %cmp.n4050 = icmp eq i64 %i.wk, %n.vec4043
  br i1 %cmp.n4050, label %.loopexit.loopexit.i124.i, label %vec.epilog.iter.check4054

vec.epilog.iter.check4054:                        ; preds = %middle.block4049
  %min.epilog.iters.check4055 = icmp eq i64 %i.wn, 0
  br i1 %min.epilog.iters.check4055, label %.lr.ph.i.i121.i.preheader, label %vec.epilog.ph4056, !prof !36

vec.epilog.ph4056:                                ; preds = %vector.main.loop.iter.check4040, %vec.epilog.iter.check4054
  %vec.epilog.resume.val4051 = phi i64 [ %n.vec4043, %vec.epilog.iter.check4054 ], [ 0, %vector.main.loop.iter.check4040 ]
  %n.vec4057 = and i64 %i.wk, 137438953468        ; 3 uses
  br label %vec.epilog.vector.body4058

vec.epilog.vector.body4058:                       ; preds = %vec.epilog.vector.body4058, %vec.epilog.ph4056
  %index4059 = phi i64 [ %vec.epilog.resume.val4051, %vec.epilog.ph4056 ], [ %index.next4061, %vec.epilog.vector.body4058 ] ; 3 uses
  %i.wt = getelementptr inbounds nuw i8, ptr %.pre.i116.i, i64 %index4059
  %wide.load4060 = load <4 x i8>, ptr %i.wt, align 1, !tbaa !12
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wj, i64 %index4059
  store <4 x i8> %wide.load4060, ptr %i.wu, align 1, !tbaa !12
  %index.next4061 = add nuw i64 %index4059, 4     ; 2 uses
  %i.wv = icmp eq i64 %index.next4061, %n.vec4057
  br i1 %i.wv, label %vec.epilog.middle.block4062, label %vec.epilog.vector.body4058, !llvm.loop !291

vec.epilog.middle.block4062:                      ; preds = %vec.epilog.vector.body4058
  %cmp.n4063 = icmp eq i64 %i.wk, %n.vec4057
  br i1 %cmp.n4063, label %.loopexit.loopexit.i124.i, label %.lr.ph.i.i121.i.preheader

.lr.ph.i.i121.i.preheader:                        ; preds = %vector.memcheck4036, %iter.check4052, %vec.epilog.iter.check4054, %vec.epilog.middle.block4062
  %.026.i.i122.i.ph = phi i64 [ 0, %iter.check4052 ], [ 0, %vector.memcheck4036 ], [ %n.vec4043, %vec.epilog.iter.check4054 ], [ %n.vec4057, %vec.epilog.middle.block4062 ] ; 3 uses
  %xtraiter4667 = and i64 %i.wk, 3                ; 2 uses
  %lcmp.mod4668.not = icmp eq i64 %xtraiter4667, 0
  br i1 %lcmp.mod4668.not, label %.lr.ph.i.i121.i.prol.loopexit, label %.lr.ph.i.i121.i.prol

.lr.ph.i.i121.i.prol:                             ; preds = %.lr.ph.i.i121.i.preheader, %.lr.ph.i.i121.i.prol
  %.026.i.i122.i.prol = phi i64 [ %i.wz, %.lr.ph.i.i121.i.prol ], [ %.026.i.i122.i.ph, %.lr.ph.i.i121.i.preheader ] ; 3 uses
  %prol.iter4669 = phi i64 [ %prol.iter4669.next, %.lr.ph.i.i121.i.prol ], [ 0, %.lr.ph.i.i121.i.preheader ]
  %i.ww = getelementptr inbounds nuw i8, ptr %.pre.i116.i, i64 %.026.i.i122.i.prol
  %i.wx = load i8, ptr %i.ww, align 1, !tbaa !12
  %i.wy = getelementptr inbounds nuw i8, ptr %i.wj, i64 %.026.i.i122.i.prol
  store i8 %i.wx, ptr %i.wy, align 1, !tbaa !12
  %i.wz = add nuw nsw i64 %.026.i.i122.i.prol, 1  ; 2 uses
  %prol.iter4669.next = add i64 %prol.iter4669, 1 ; 2 uses
  %prol.iter4669.cmp.not = icmp eq i64 %prol.iter4669.next, %xtraiter4667
  br i1 %prol.iter4669.cmp.not, label %.lr.ph.i.i121.i.prol.loopexit, label %.lr.ph.i.i121.i.prol, !llvm.loop !292

.lr.ph.i.i121.i.prol.loopexit:                    ; preds = %.lr.ph.i.i121.i.prol, %.lr.ph.i.i121.i.preheader
  %.026.i.i122.i.unr = phi i64 [ %.026.i.i122.i.ph, %.lr.ph.i.i121.i.preheader ], [ %i.wz, %.lr.ph.i.i121.i.prol ]
  %i.xa = sub nsw i64 %.026.i.i122.i.ph, %i.wk
  %i.xb = icmp ugt i64 %i.xa, -4
  br i1 %i.xb, label %.loopexit.loopexit.i124.i, label %.lr.ph.i.i121.i

.lr.ph.i.i121.i:                                  ; preds = %.lr.ph.i.i121.i.prol.loopexit, %.lr.ph.i.i121.i
  %.026.i.i122.i = phi i64 [ %i.xr, %.lr.ph.i.i121.i ], [ %.026.i.i122.i.unr, %.lr.ph.i.i121.i.prol.loopexit ] ; 6 uses
  %i.xc = getelementptr inbounds nuw i8, ptr %.pre.i116.i, i64 %.026.i.i122.i
  %i.xd = load i8, ptr %i.xc, align 1, !tbaa !12
  %i.xe = getelementptr inbounds nuw i8, ptr %i.wj, i64 %.026.i.i122.i
  store i8 %i.xd, ptr %i.xe, align 1, !tbaa !12
  %i.xf = add nuw nsw i64 %.026.i.i122.i, 1       ; 2 uses
  %i.xg = getelementptr inbounds nuw i8, ptr %.pre.i116.i, i64 %i.xf
  %i.xh = load i8, ptr %i.xg, align 1, !tbaa !12
  %i.xi = getelementptr inbounds nuw i8, ptr %i.wj, i64 %i.xf
  store i8 %i.xh, ptr %i.xi, align 1, !tbaa !12
  %i.xj = add nuw nsw i64 %.026.i.i122.i, 2       ; 2 uses
  %i.xk = getelementptr inbounds nuw i8, ptr %.pre.i116.i, i64 %i.xj
  %i.xl = load i8, ptr %i.xk, align 1, !tbaa !12
  %i.xm = getelementptr inbounds nuw i8, ptr %i.wj, i64 %i.xj
  store i8 %i.xl, ptr %i.xm, align 1, !tbaa !12
  %i.xn = add nuw nsw i64 %.026.i.i122.i, 3       ; 2 uses
  %i.xo = getelementptr inbounds nuw i8, ptr %.pre.i116.i, i64 %i.xn
  %i.xp = load i8, ptr %i.xo, align 1, !tbaa !12
  %i.xq = getelementptr inbounds nuw i8, ptr %i.wj, i64 %i.xn
  store i8 %i.xp, ptr %i.xq, align 1, !tbaa !12
  %i.xr = add nuw nsw i64 %.026.i.i122.i, 4       ; 2 uses
  %exitcond.not.i.i123.i.3 = icmp eq i64 %i.xr, %i.wk
  br i1 %exitcond.not.i.i123.i.3, label %.loopexit.loopexit.i124.i, label %.lr.ph.i.i121.i, !llvm.loop !293

.loopexit.loopexit.i124.i:                        ; preds = %.lr.ph.i.i121.i.prol.loopexit, %.lr.ph.i.i121.i, %vec.epilog.middle.block4062, %middle.block4049
  %.pre33.pre.i125.i = load i32, ptr %i.vt, align 8, !tbaa !136
  br label %.loopexit.i126.i

.loopexit.i126.i:                                 ; preds = %.loopexit.loopexit.i124.i, %bb.ca, %bb.by
  %.pre33.i127.i = phi i32 [ %i.vu, %bb.by ], [ %i.vu, %bb.ca ], [ %.pre33.pre.i125.i, %.loopexit.loopexit.i124.i ]
  %.018.i.ph.i128.i = phi ptr [ %i.wf, %bb.by ], [ %i.wj, %bb.ca ], [ %i.wj, %.loopexit.loopexit.i124.i ] ; 2 uses
  store ptr %.018.i.ph.i128.i, ptr %i.vs, align 8, !tbaa !137
  store i32 %spec.select.i118.i, ptr %i.vv, align 4, !tbaa !191
  br label %bb.cb

bb.cb:                                            ; preds = %.loopexit.i126.i, %bb.bv
  %i.xs = phi i32 [ %.pre33.i127.i, %.loopexit.i126.i ], [ %i.vu, %bb.bv ] ; 2 uses
  %i.xt = phi ptr [ %.018.i.ph.i128.i, %.loopexit.i126.i ], [ %.pre.i116.i, %bb.bv ]
  %i.xu = add i32 %i.xs, 1
  store i32 %i.xu, ptr %i.vt, align 8, !tbaa !136
  %i.xv = zext i32 %i.xs to i64
  %i.xw = getelementptr inbounds nuw [32 x i8], ptr %i.xt, i64 %i.xv ; 5 uses
  store i32 2, ptr %i.xw, align 8, !tbaa !196
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xw, i64 4
  store i32 51, ptr %i.xx, align 4, !tbaa !198
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xw, i64 8
  store ptr @.str.71, ptr %i.xy, align 8, !tbaa !199
  %i.xz = getelementptr inbounds nuw i8, ptr %i.xw, i64 16
  store ptr null, ptr %i.xz, align 8, !tbaa !200
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xw, i64 24
  store i64 -1, ptr %i.ya, align 8, !tbaa !201
  %i.yb = getelementptr inbounds nuw i8, ptr %i.vs, i64 16
  store i32 1, ptr %i.yb, align 8, !tbaa !133
  br label %tg3__error_push.exit129.thread.i

tg3__error_push.exit129.thread.i:                 ; preds = %bb.cb, %bb.bz, %bb.bx, %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #19
  br label %tg3__parse_buffer.exit

tg3__error_push.exit129.i:                        ; preds = %tg3__decode_data_uri.exit.i
end_hunk_2
begin_hunk_3_@tg3__parse_from_json:tg3json__strlen_fallback.exit.i
  %i.gsg = icmp ugt i64 %i.gse, %i.gsf
  br i1 %i.gsg, label %.tg3__u64_add_overflow.exit_crit_edge.i.i, label %bb.xm

.tg3__u64_add_overflow.exit_crit_edge.i.i:        ; preds = %bb.xl
  %.phi.trans.insert.i.i2347 = getelementptr inbounds nuw i8, ptr %i.grm, i64 32
  %.pre.i.i2348 = load i64, ptr %.phi.trans.insert.i.i2347, align 8, !tbaa !334
  br label %bb.xn

bb.xm:                                            ; preds = %bb.xl
  %i.gsh = add i64 %i.gse, %i.gsc                 ; 2 uses
  %i.gsi = getelementptr inbounds nuw i8, ptr %i.grm, i64 32
  %i.gsj = load i64, ptr %i.gsi, align 8, !tbaa !334 ; 2 uses
  %i.gsk = icmp ugt i64 %i.gsh, %i.gsj
  br i1 %i.gsk, label %bb.xn, label %tg3__validate_range_in_buffer_view.exit.i

bb.xn:                                            ; preds = %bb.xm, %.tg3__u64_add_overflow.exit_crit_edge.i.i
  %i.gsl = phi i64 [ %.pre.i.i2348, %.tg3__u64_add_overflow.exit_crit_edge.i.i ], [ %i.gsj, %bb.xm ]
  %i.gsm = phi i64 [ -1, %.tg3__u64_add_overflow.exit_crit_edge.i.i ], [ %i.gsh, %bb.xm ]
  %i.gsn = load ptr, ptr %.in.i.i, align 8, !tbaa !210
  %i.gso = load ptr, ptr %0, align 8, !tbaa !207
  call void (ptr, ptr, i32, i32, ptr, ptr, ...) @tg3__error_pushf(ptr noundef %i.gsn, ptr noundef %i.gso, i32 poison, i32 noundef 34, ptr noundef nonnull @.str.224, ptr noundef nonnull @.str.276, ptr noundef nonnull @.str.271, i64 noundef %i.gse, i64 noundef %i.gsm, i64 noundef %i.gsl) #20
  br label %tg3__validate_range_in_buffer_view.exit.i

tg3__validate_range_in_buffer_view.exit.i:        ; preds = %bb.xn, %bb.xm, %tg3__u64_mul_overflow.exit155.i, %bb.xf, %bb.xe
  %.7.i = phi i32 [ %.5247.i, %bb.xe ], [ %.5247.i, %bb.xf ], [ 0, %tg3__u64_mul_overflow.exit155.i ], [ 0, %bb.xn ], [ %.5247.i, %bb.xm ] ; 4 uses
  %i.gsp = getelementptr inbounds nuw i8, ptr %i.gqo, i64 92
  %i.gsq = load i32, ptr %i.gsp, align 4, !tbaa !506
  %.not137.i = icmp eq i32 %i.gsq, 0
  br i1 %.not137.i, label %tg3__validate_range_in_buffer_view.exit184.i, label %bb.xo

bb.xo:                                            ; preds = %tg3__validate_range_in_buffer_view.exit.i
  %i.gsr = getelementptr inbounds nuw i8, ptr %i.gqo, i64 88
  %i.gss = load i32, ptr %i.gsr, align 8, !tbaa !554 ; 3 uses
  %i.gst = icmp slt i32 %i.gss, 0
  br i1 %i.gst, label %bb.xq, label %bb.xp

bb.xp:                                            ; preds = %bb.xo
  %i.gsu = zext nneg i32 %i.gss to i64            ; 3 uses
  %i.gsv = getelementptr inbounds nuw i8, ptr %i.gqo, i64 40
  %i.gsw = load i64, ptr %i.gsv, align 8, !tbaa !342
  %i.gsx = icmp ult i64 %i.gsw, %i.gsu
  br i1 %i.gsx, label %bb.xq, label %bb.xr

bb.xq:                                            ; preds = %bb.xp, %bb.xo
  %i.gsy = load ptr, ptr %.in.i.i, align 8, !tbaa !210
  %i.gsz = load ptr, ptr %0, align 8, !tbaa !207
  %i.gta = trunc nuw i64 %indvars.iv256.i to i32
  call void (ptr, ptr, i32, i32, ptr, ptr, ...) @tg3__error_pushf(ptr noundef %i.gsy, ptr noundef %i.gsz, i32 poison, i32 noundef 34, ptr noundef nonnull @.str.224, ptr noundef nonnull @.str.272, i32 noundef %i.gta, i32 noundef %i.gss) #20
  br label %tg3__validate_range_in_buffer_view.exit184.i

bb.xr:                                            ; preds = %bb.xp
  %i.gtb = getelementptr inbounds nuw i8, ptr %i.gqo, i64 96
  %i.gtc = getelementptr inbounds nuw i8, ptr %i.gqo, i64 108 ; 2 uses
  %i.gtd = load i32, ptr %i.gtc, align 4, !tbaa !555 ; 2 uses
  switch i32 %i.gtd, label %bb.xs [
    i32 5125, label %bb.xt
    i32 5123, label %bb.xt
    i32 5121, label %bb.xt
  ]

bb.xs:                                            ; preds = %bb.xr
  %i.gte = load ptr, ptr %.in.i.i, align 8, !tbaa !210
  %i.gtf = load ptr, ptr %0, align 8, !tbaa !207
  %i.gtg = trunc nuw i64 %indvars.iv256.i to i32
  call void (ptr, ptr, i32, i32, ptr, ptr, ...) @tg3__error_pushf(ptr noundef %i.gte, ptr noundef %i.gtf, i32 poison, i32 noundef 34, ptr noundef nonnull @.str.224, ptr noundef nonnull @.str.273, i32 noundef %i.gtg, i32 noundef %i.gtd) #20
  br label %bb.xt

bb.xt:                                            ; preds = %bb.xs, %bb.xr, %bb.xr, %bb.xr
  %.8.i = phi i32 [ %.7.i, %bb.xr ], [ 0, %bb.xs ], [ %.7.i, %bb.xr ], [ %.7.i, %bb.xr ] ; 3 uses
  %i.gth = getelementptr inbounds nuw i8, ptr %i.gqo, i64 104
  %i.gti = load i32, ptr %i.gth, align 8, !tbaa !507 ; 3 uses
  %i.gtj = icmp sgt i32 %i.gti, -1
  br i1 %i.gtj, label %bb.xu, label %tg3__validate_range_in_buffer_view.exit172.i

bb.xu:                                            ; preds = %bb.xt
  %i.gtk = load i32, ptr %i.gon, align 8, !tbaa !337
  %i.gtl = icmp ult i32 %i.gti, %i.gtk
  br i1 %i.gtl, label %bb.xv, label %tg3__validate_range_in_buffer_view.exit172.i

bb.xv:                                            ; preds = %bb.xu
  %i.gtm = load ptr, ptr %i.gpj, align 8, !tbaa !336
  %i.gtn = zext nneg i32 %i.gti to i64
  %i.gto = getelementptr inbounds nuw [112 x i8], ptr %i.gtm, i64 %i.gtn ; 2 uses
  %i.gtp = load i32, ptr %i.gtc, align 4, !tbaa !555
  %switch.tableidx4542 = add i32 %i.gtp, -5120    ; 3 uses
  %i.gtq = icmp ult i32 %switch.tableidx4542, 11
  %switch.maskindex4545 = trunc i32 %switch.tableidx4542 to i16
  %switch.shifted4546 = lshr i16 1151, %switch.maskindex4545
  %switch.lobit4547 = trunc i16 %switch.shifted4546 to i1
  %or.cond4551 = select i1 %i.gtq, i1 %switch.lobit4547, i1 false
  br i1 %or.cond4551, label %switch.lookup4544, label %tg3__validate_range_in_buffer_view.exit172.i

switch.lookup4544:                                ; preds = %bb.xv
  %i.gtr = zext nneg i32 %switch.tableidx4542 to i64
  %switch.gep4548 = getelementptr inbounds nuw i8, ptr @switch.table.tg3__parse_from_json.12, i64 %i.gtr
  %switch.load4549 = load i8, ptr %switch.gep4548, align 1
  %switch.ext4550 = zext i8 %switch.load4549 to i64
  %i.gts = mul nuw nsw i64 %switch.ext4550, %i.gsu ; 2 uses
  %i.gtt = load i64, ptr %i.gtb, align 8, !tbaa !556 ; 3 uses
  %i.gtu = xor i64 %i.gts, -1
  %i.gtv = icmp ugt i64 %i.gtt, %i.gtu
  br i1 %i.gtv, label %.tg3__u64_add_overflow.exit_crit_edge.i169.i, label %bb.xw

.tg3__u64_add_overflow.exit_crit_edge.i169.i:     ; preds = %switch.lookup4544
  %.phi.trans.insert.i170.i = getelementptr inbounds nuw i8, ptr %i.gto, i64 32
  %.pre.i171.i = load i64, ptr %.phi.trans.insert.i170.i, align 8, !tbaa !334
  br label %tg3__validate_range_in_buffer_view.exit172.thread.i

bb.xw:                                            ; preds = %switch.lookup4544
  %i.gtw = add i64 %i.gts, %i.gtt                 ; 2 uses
  %i.gtx = getelementptr inbounds nuw i8, ptr %i.gto, i64 32
  %i.gty = load i64, ptr %i.gtx, align 8, !tbaa !334 ; 2 uses
  %i.gtz = icmp ugt i64 %i.gtw, %i.gty
  br i1 %i.gtz, label %tg3__validate_range_in_buffer_view.exit172.thread.i, label %tg3__validate_range_in_buffer_view.exit172.i

tg3__validate_range_in_buffer_view.exit172.thread.i: ; preds = %bb.xw, %.tg3__u64_add_overflow.exit_crit_edge.i169.i
  %i.gua = phi i64 [ %.pre.i171.i, %.tg3__u64_add_overflow.exit_crit_edge.i169.i ], [ %i.gty, %bb.xw ]
  %i.gub = phi i64 [ -1, %.tg3__u64_add_overflow.exit_crit_edge.i169.i ], [ %i.gtw, %bb.xw ]
  %i.guc = load ptr, ptr %.in.i.i, align 8, !tbaa !210
  %i.gud = load ptr, ptr %0, align 8, !tbaa !207
  call void (ptr, ptr, i32, i32, ptr, ptr, ...) @tg3__error_pushf(ptr noundef %i.guc, ptr noundef %i.gud, i32 poison, i32 noundef 34, ptr noundef nonnull @.str.224, ptr noundef nonnull @.str.276, ptr noundef nonnull @.str.274, i64 noundef %i.gtt, i64 noundef %i.gub, i64 noundef %i.gua) #20
  br label %tg3__validate_range_in_buffer_view.exit172.i

tg3__validate_range_in_buffer_view.exit172.i:     ; preds = %bb.xv, %tg3__validate_range_in_buffer_view.exit172.thread.i, %bb.xw, %bb.xu, %bb.xt
  %.10.i2343 = phi i32 [ %.8.i, %bb.xt ], [ %.8.i, %bb.xu ], [ %.8.i, %bb.xw ], [ 0, %tg3__validate_range_in_buffer_view.exit172.thread.i ], [ 0, %bb.xv ] ; 3 uses
  %i.gue = getelementptr inbounds nuw i8, ptr %i.gqo, i64 168
  %i.guf = load i32, ptr %i.gue, align 8, !tbaa !508 ; 3 uses
  %i.gug = icmp sgt i32 %i.guf, -1
  br i1 %i.gug, label %bb.xx, label %tg3__validate_range_in_buffer_view.exit184.i

bb.xx:                                            ; preds = %tg3__validate_range_in_buffer_view.exit172.i
  %i.guh = load i32, ptr %i.gon, align 8, !tbaa !337
  %i.gui = icmp ult i32 %i.guf, %i.guh
  br i1 %i.gui, label %bb.xy, label %tg3__validate_range_in_buffer_view.exit184.i

bb.xy:                                            ; preds = %bb.xx
  %i.guj = load ptr, ptr %i.gpj, align 8, !tbaa !336
  %i.guk = mul nuw nsw i64 %i.gre, %i.gsu         ; 2 uses
  %i.gul = zext nneg i32 %i.guf to i64
  %i.gum = getelementptr inbounds nuw [112 x i8], ptr %i.guj, i64 %i.gul ; 2 uses
  %i.gun = getelementptr inbounds nuw i8, ptr %i.gqo, i64 176
  %i.guo = load i64, ptr %i.gun, align 8, !tbaa !557 ; 3 uses
  %i.gup = xor i64 %i.guk, -1
  %i.guq = icmp ugt i64 %i.guo, %i.gup
  br i1 %i.guq, label %.tg3__u64_add_overflow.exit_crit_edge.i181.i, label %bb.xz

.tg3__u64_add_overflow.exit_crit_edge.i181.i:     ; preds = %bb.xy
  %.phi.trans.insert.i182.i = getelementptr inbounds nuw i8, ptr %i.gum, i64 32
  %.pre.i183.i = load i64, ptr %.phi.trans.insert.i182.i, align 8, !tbaa !334
  br label %tg3__validate_range_in_buffer_view.exit184.thread.i

bb.xz:                                            ; preds = %bb.xy
  %i.gur = add i64 %i.guo, %i.guk                 ; 2 uses
  %i.gus = getelementptr inbounds nuw i8, ptr %i.gum, i64 32
  %i.gut = load i64, ptr %i.gus, align 8, !tbaa !334 ; 2 uses
  %i.guu = icmp ugt i64 %i.gur, %i.gut
  br i1 %i.guu, label %tg3__validate_range_in_buffer_view.exit184.thread.i, label %tg3__validate_range_in_buffer_view.exit184.i

tg3__validate_range_in_buffer_view.exit184.thread.i: ; preds = %bb.xz, %.tg3__u64_add_overflow.exit_crit_edge.i181.i
  %i.guv = phi i64 [ %.pre.i183.i, %.tg3__u64_add_overflow.exit_crit_edge.i181.i ], [ %i.gut, %bb.xz ]
  %i.guw = phi i64 [ -1, %.tg3__u64_add_overflow.exit_crit_edge.i181.i ], [ %i.gur, %bb.xz ]
  %i.gux = load ptr, ptr %.in.i.i, align 8, !tbaa !210
  %i.guy = load ptr, ptr %0, align 8, !tbaa !207
  call void (ptr, ptr, i32, i32, ptr, ptr, ...) @tg3__error_pushf(ptr noundef %i.gux, ptr noundef %i.guy, i32 poison, i32 noundef 34, ptr noundef nonnull @.str.224, ptr noundef nonnull @.str.276, ptr noundef nonnull @.str.275, i64 noundef %i.guo, i64 noundef %i.guw, i64 noundef %i.guv) #20
  br label %tg3__validate_range_in_buffer_view.exit184.i

tg3__validate_range_in_buffer_view.exit184.i:     ; preds = %tg3__validate_range_in_buffer_view.exit184.thread.i, %bb.xz, %bb.xx, %tg3__validate_range_in_buffer_view.exit172.i, %bb.xq, %tg3__validate_range_in_buffer_view.exit.i, %bb.xd, %bb.xc
  %.15.i2344 = phi i32 [ 0, %bb.xd ], [ 0, %tg3__validate_range_in_buffer_view.exit184.thread.i ], [ 0, %bb.xc ], [ %.7.i, %tg3__validate_range_in_buffer_view.exit.i ], [ 0, %bb.xq ], [ %.10.i2343, %tg3__validate_range_in_buffer_view.exit172.i ], [ %.10.i2343, %bb.xx ], [ %.10.i2343, %bb.xz ] ; 2 uses
  %indvars.iv.next257.i = add nuw nsw i64 %indvars.iv256.i, 1 ; 2 uses
  %i.guz = load i32, ptr %i.gpg, align 8, !tbaa !352
  %i.gva = zext i32 %i.guz to i64
  %i.gvb = icmp samesign ult i64 %indvars.iv.next257.i, %i.gva
  br i1 %i.gvb, label %bb.xb, label %tg3__validate_resources.exit, !llvm.loop !558

tg3__validate_resources.exit:                     ; preds = %tg3__validate_range_in_buffer_view.exit184.i, %.preheader.i2342
  %.5.lcssa.i = phi i32 [ %.2.lcssa.i, %.preheader.i2342 ], [ %.15.i2344, %tg3__validate_range_in_buffer_view.exit184.i ]
  %.not862 = icmp eq i32 %.5.lcssa.i, 0
  br i1 %.not862, label %.critedge908, label %bb.ya

bb.ya:                                            ; preds = %tg3__validate_resources.exit
  %i.gvc = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.gvd = load ptr, ptr %i.gvc, align 8, !tbaa !210 ; 2 uses
  %.not863 = icmp eq ptr %i.gvd, null
  br i1 %.not863, label %.critedge908, label %bb.yb

bb.yb:                                            ; preds = %bb.ya
  %i.gve = getelementptr inbounds nuw i8, ptr %i.gvd, i64 16
  %i.gvf = load i32, ptr %i.gve, align 8, !tbaa !133
  %.not864 = icmp eq i32 %i.gvf, 0
  %i.gvg = select i1 %.not864, i32 0, i32 10
  br label %.critedge908

.critedge908:                                     ; preds = %bb.ek, %bb.fb, %bb.fw, %bb.it, %bb.jl, %bb.kl, %bb.la, %bb.lp, %bb.me, %bb.mt, %bb.oo, %bb.pg, %bb.pw, %bb.ql, %bb.i, %bb.g, %bb.e, %bb.b, %bb.ya, %bb.yb, %tg3__validate_resources.exit, %tg3__validate_indices.exit, %bb.l
  %.59 = phi i32 [ 34, %tg3__validate_resources.exit ], [ 31, %tg3__validate_indices.exit ], [ 70, %bb.mt ], [ %i.gvg, %bb.yb ], [ 70, %bb.me ], [ 70, %bb.lp ], [ 70, %bb.la ], [ 70, %bb.kl ], [ 70, %bb.jl ], [ 70, %bb.it ], [ 70, %bb.fw ], [ 70, %bb.fb ], [ 70, %bb.ql ], [ 70, %bb.pw ], [ 70, %bb.pg ], [ 70, %bb.oo ], [ 30, %bb.i ], [ 70, %bb.l ], [ 0, %bb.ya ], [ 30, %bb.b ], [ 30, %bb.e ], [ 30, %bb.g ], [ 70, %bb.ek ]
  ret i32 %.59
}

; Function Attrs: nounwind
define dso_local range(i32 0, 71) i32 @tg3_parse_glb(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, i32 noundef %5, ptr nofree noundef readonly captures(address_is_null) %6) local_unnamed_addr #9 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %7 = alloca %struct.tg3_parse_options, align 16 ; 26 uses
  %8 = alloca %struct.tg3__parse_ctx, align 16    ; 29 uses
  %9 = alloca %struct.tg3json_value, align 8      ; 7 uses
  %10 = alloca %struct.tg3json_parse_options, align 8 ; 11 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #19
  store ptr null, ptr %i.e, align 8, !tbaa !9
  %.not = icmp eq ptr %0, null
  %.0.sroa.gep = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.0.sroa.gep28 = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %.0.sroa.gep71 = getelementptr inbounds nuw i8, ptr %6, i64 16
  %.0.sroa.gep72 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %.0.sroa.gep74 = getelementptr inbounds nuw i8, ptr %6, i64 212
  %.0.sroa.gep75 = getelementptr inbounds nuw i8, ptr %7, i64 212
  br i1 %.not, label %tg3__error_push.exit, label %vector.body

vector.body:                                      ; preds = %bb.a
  %i.f = getelementptr i8, ptr %0, i64 16
  store <16 x i8> zeroinitializer, ptr %0, align 1, !tbaa !12
  store <16 x i8> zeroinitializer, ptr %i.f, align 1, !tbaa !12
  %next.gep.1 = getelementptr i8, ptr %0, i64 32
  %i.g = getelementptr i8, ptr %0, i64 48
  store <16 x i8> zeroinitializer, ptr %next.gep.1, align 1, !tbaa !12
  store <16 x i8> zeroinitializer, ptr %i.g, align 1, !tbaa !12
  %next.gep.2 = getelementptr i8, ptr %0, i64 64
  %i.h = getelementptr i8, ptr %0, i64 80
  store <16 x i8> zeroinitializer, ptr %next.gep.2, align 1, !tbaa !12
  store <16 x i8> zeroinitializer, ptr %i.h, align 1, !tbaa !12
  %next.gep.3 = getelementptr i8, ptr %0, i64 96
  %i.i = getelementptr i8, ptr %0, i64 112
  store <16 x i8> zeroinitializer, ptr %next.gep.3, align 1, !tbaa !12
  store <16 x i8> zeroinitializer, ptr %i.i, align 1, !tbaa !12
  %next.gep.4 = getelementptr i8, ptr %0, i64 128
  %i.j = getelementptr i8, ptr %0, i64 144
  store <16 x i8> zeroinitializer, ptr %next.gep.4, align 1, !tbaa !12
  store <16 x i8> zeroinitializer, ptr %i.j, align 1, !tbaa !12
  %next.gep.5 = getelementptr i8, ptr %0, i64 160
  %i.k = getelementptr i8, ptr %0, i64 176
  store <16 x i8> zeroinitializer, ptr %next.gep.5, align 1, !tbaa !12
  store <16 x i8> zeroinitializer, ptr %i.k, align 1, !tbaa !12
  %next.gep.6 = getelementptr i8, ptr %0, i64 192
  %i.l = getelementptr i8, ptr %0, i64 208
  store <16 x i8> zeroinitializer, ptr %next.gep.6, align 1, !tbaa !12
  store <16 x i8> zeroinitializer, ptr %i.l, align 1, !tbaa !12
  %next.gep.7 = getelementptr i8, ptr %0, i64 224
  %i.m = getelementptr i8, ptr %0, i64 240
  store <16 x i8> zeroinitializer, ptr %next.gep.7, align 1, !tbaa !12
  store <16 x i8> zeroinitializer, ptr %i.m, align 1, !tbaa !12
  %next.gep.8 = getelementptr i8, ptr %0, i64 256
  %i.n = getelementptr i8, ptr %0, i64 272
  store <16 x i8> zeroinitializer, ptr %next.gep.8, align 1, !tbaa !12
  store <16 x i8> zeroinitializer, ptr %i.n, align 1, !tbaa !12
  %next.gep.9 = getelementptr i8, ptr %0, i64 288
  %i.o = getelementptr i8, ptr %0, i64 304
  store <16 x i8> zeroinitializer, ptr %next.gep.9, align 1, !tbaa !12
  store <16 x i8> zeroinitializer, ptr %i.o, align 1, !tbaa !12
  %next.gep.10 = getelementptr i8, ptr %0, i64 320
  %i.p = getelementptr i8, ptr %0, i64 336
  store <16 x i8> zeroinitializer, ptr %next.gep.10, align 1, !tbaa !12
  store <16 x i8> zeroinitializer, ptr %i.p, align 1, !tbaa !12
  %next.gep.11 = getelementptr i8, ptr %0, i64 352
  %i.q = getelementptr i8, ptr %0, i64 368
  store <16 x i8> zeroinitializer, ptr %next.gep.11, align 1, !tbaa !12
  store <16 x i8> zeroinitializer, ptr %i.q, align 1, !tbaa !12
  %next.gep.12 = getelementptr i8, ptr %0, i64 384
  %i.r = getelementptr i8, ptr %0, i64 400
  store <16 x i8> zeroinitializer, ptr %next.gep.12, align 1, !tbaa !12
  store <16 x i8> zeroinitializer, ptr %i.r, align 1, !tbaa !12
  %next.gep.13 = getelementptr i8, ptr %0, i64 416
  %i.s = getelementptr i8, ptr %0, i64 432
  store <16 x i8> zeroinitializer, ptr %next.gep.13, align 1, !tbaa !12
  store <16 x i8> zeroinitializer, ptr %i.s, align 1, !tbaa !12
  %next.gep127 = getelementptr i8, ptr %0, i64 448
  store <8 x i8> zeroinitializer, ptr %next.gep127, align 1, !tbaa !12
  %next.gep127.1 = getelementptr i8, ptr %0, i64 456
  store <8 x i8> zeroinitializer, ptr %next.gep127.1, align 1, !tbaa !12
  %next.gep127.2 = getelementptr i8, ptr %0, i64 464
  store <8 x i8> zeroinitializer, ptr %next.gep127.2, align 1, !tbaa !12
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 260
  store i32 -1, ptr %i.t, align 4, !tbaa !170
  %.not34 = icmp eq ptr %2, null
  br i1 %.not34, label %tg3__error_push.exit, label %bb.b

bb.b:                                             ; preds = %vector.body
  store ptr null, ptr %i.a, align 8, !tbaa !9
  store i64 0, ptr %i.b, align 8, !tbaa !21
  store ptr null, ptr %i.c, align 8, !tbaa !9
  store i64 0, ptr %i.d, align 8, !tbaa !21
  %i.u = icmp ult i64 %3, 12
  br i1 %i.u, label %bb.c, label %bb.k

bb.c:                                             ; preds = %bb.b
  %.not.i.i40 = icmp eq ptr %1, null
  br i1 %.not.i.i40, label %tg3__error_push.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !136  ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !191  ; 3 uses
  %.not27.i.i = icmp ult i32 %i.w, %i.y
  %.pre.i.i = load ptr, ptr %1, align 8, !tbaa !137 ; 11 uses
  %.pre.i.i267 = ptrtoaddr ptr %.pre.i.i to i64
  br i1 %.not27.i.i, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not28.i.i = icmp eq i32 %i.y, 0
  %i.z = shl i32 %i.y, 1
  %spec.select.i.i = select i1 %.not28.i.i, i32 16, i32 %i.z ; 2 uses
  %i.aa = zext i32 %spec.select.i.i to i64
  %i.ab = shl nuw nsw i64 %i.aa, 5                ; 4 uses
  %.not.i.i.i = icmp eq ptr %.pre.i.i, null
  %i.ac = or disjoint i64 %i.ab, 8
  %i.ad = load i64, ptr @test_heap_used, align 8, !tbaa !21 ; 4 uses
  %i.ae = add i64 %i.ad, %i.ac                    ; 3 uses
  %i.af = icmp ugt i64 %i.ae, 524288              ; 2 uses
  br i1 %.not.i.i.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  br i1 %i.af, label %tg3__error_push.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr @test_heap, i64 %i.ad ; 2 uses
  store i64 %i.ab, ptr %i.ag, align 8, !tbaa !21
  store i64 %i.ae, ptr @test_heap_used, align 8, !tbaa !21
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  br label %.loopexit.i.i

bb.h:                                             ; preds = %bb.e
  br i1 %i.af, label %tg3__error_push.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = getelementptr inbounds i8, ptr %.pre.i.i, i64 -8
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !21
  %i.ak = getelementptr inbounds nuw i8, ptr @test_heap, i64 %i.ad ; 2 uses
  store i64 %i.ab, ptr %i.ak, align 8, !tbaa !21
  store i64 %i.ae, ptr @test_heap_used, align 8, !tbaa !21
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 9 uses
  %i.am = tail call i64 @llvm.umin.i64(i64 %i.aj, i64 %i.ab) ; 11 uses
  %.not27.i.i.i = icmp eq i64 %i.am, 0
  br i1 %.not27.i.i.i, label %.loopexit.i.i, label %iter.check282

iter.check282:                                    ; preds = %bb.i
  %min.iters.check269 = icmp samesign ult i64 %i.am, 4
  br i1 %min.iters.check269, label %.lr.ph.i.i.i.preheader, label %vector.memcheck266

vector.memcheck266:                               ; preds = %iter.check282
  %i.an = add i64 %i.ad, add (i64 ptrtoaddr (ptr @test_heap to i64), i64 8)
  %i.ao = sub i64 %.pre.i.i267, %i.an
  %diff.check268 = icmp ugt i64 %i.ao, -32
  br i1 %diff.check268, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check270

vector.main.loop.iter.check270:                   ; preds = %vector.memcheck266
  %min.iters.check271 = icmp samesign ult i64 %i.am, 32
  br i1 %min.iters.check271, label %vec.epilog.ph286, label %vector.ph272

vector.ph272:                                     ; preds = %vector.main.loop.iter.check270
  %i.ap = and i64 %i.am, 28
  %n.vec273 = and i64 %i.am, 137438953440         ; 4 uses
  br label %vector.body274

vector.body274:                                   ; preds = %vector.body274, %vector.ph272
  %index275 = phi i64 [ 0, %vector.ph272 ], [ %index.next278, %vector.body274 ] ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 %index275 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %wide.load276 = load <16 x i8>, ptr %i.aq, align 1, !tbaa !12
  %wide.load277 = load <16 x i8>, ptr %i.ar, align 1, !tbaa !12
  %i.as = getelementptr inbounds nuw i8, ptr %i.al, i64 %index275 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  store <16 x i8> %wide.load276, ptr %i.as, align 1, !tbaa !12
  store <16 x i8> %wide.load277, ptr %i.at, align 1, !tbaa !12
  %index.next278 = add nuw i64 %index275, 32      ; 2 uses
  %i.au = icmp eq i64 %index.next278, %n.vec273
  br i1 %i.au, label %middle.block279, label %vector.body274, !llvm.loop !559

middle.block279:                                  ; preds = %vector.body274
  %cmp.n280 = icmp eq i64 %i.am, %n.vec273
  br i1 %cmp.n280, label %.loopexit.loopexit.i.i, label %vec.epilog.iter.check284

vec.epilog.iter.check284:                         ; preds = %middle.block279
  %min.epilog.iters.check285 = icmp eq i64 %i.ap, 0
  br i1 %min.epilog.iters.check285, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph286, !prof !36

vec.epilog.ph286:                                 ; preds = %vector.main.loop.iter.check270, %vec.epilog.iter.check284
  %vec.epilog.resume.val281 = phi i64 [ %n.vec273, %vec.epilog.iter.check284 ], [ 0, %vector.main.loop.iter.check270 ]
  %n.vec287 = and i64 %i.am, 137438953468         ; 3 uses
  br label %vec.epilog.vector.body288

vec.epilog.vector.body288:                        ; preds = %vec.epilog.vector.body288, %vec.epilog.ph286
end_hunk_3
begin_hunk_4_@tg3_parse_glb:bb.a
  %i.fs = load i64, ptr @test_heap_used, align 8, !tbaa !21 ; 4 uses
  %i.ft = add i64 %i.fs, %i.fr                    ; 3 uses
  %i.fu = icmp ugt i64 %i.ft, 524288              ; 2 uses
  br i1 %.not.i.i95.i, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  br i1 %i.fu, label %tg3__error_push.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fv = getelementptr inbounds nuw i8, ptr @test_heap, i64 %i.fs ; 2 uses
  store i64 %i.fq, ptr %i.fv, align 8, !tbaa !21
  store i64 %i.ft, ptr @test_heap_used, align 8, !tbaa !21
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  br label %.loopexit.i102.i

bb.ad:                                            ; preds = %bb.aa
  br i1 %i.fu, label %tg3__error_push.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.fx = getelementptr inbounds i8, ptr %.pre.i92.i, i64 -8
  %i.fy = load i64, ptr %i.fx, align 8, !tbaa !21
  %i.fz = getelementptr inbounds nuw i8, ptr @test_heap, i64 %i.fs ; 2 uses
  store i64 %i.fq, ptr %i.fz, align 8, !tbaa !21
  store i64 %i.ft, ptr @test_heap_used, align 8, !tbaa !21
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 8 ; 9 uses
  %i.gb = tail call i64 @llvm.umin.i64(i64 %i.fy, i64 %i.fq) ; 11 uses
  %.not27.i.i96.i = icmp eq i64 %i.gb, 0
  br i1 %.not27.i.i96.i, label %.loopexit.i102.i, label %iter.check253

iter.check253:                                    ; preds = %bb.ae
  %min.iters.check240 = icmp samesign ult i64 %i.gb, 4
  br i1 %min.iters.check240, label %.lr.ph.i.i97.i.preheader, label %vector.memcheck237

vector.memcheck237:                               ; preds = %iter.check253
  %i.gc = add i64 %i.fs, add (i64 ptrtoaddr (ptr @test_heap to i64), i64 8)
  %i.gd = sub i64 %.pre.i92.i238, %i.gc
  %diff.check239 = icmp ugt i64 %i.gd, -32
  br i1 %diff.check239, label %.lr.ph.i.i97.i.preheader, label %vector.main.loop.iter.check241

vector.main.loop.iter.check241:                   ; preds = %vector.memcheck237
  %min.iters.check242 = icmp samesign ult i64 %i.gb, 32
  br i1 %min.iters.check242, label %vec.epilog.ph257, label %vector.ph243

vector.ph243:                                     ; preds = %vector.main.loop.iter.check241
  %i.ge = and i64 %i.gb, 28
  %n.vec244 = and i64 %i.gb, 137438953440         ; 4 uses
  br label %vector.body245

vector.body245:                                   ; preds = %vector.body245, %vector.ph243
  %index246 = phi i64 [ 0, %vector.ph243 ], [ %index.next249, %vector.body245 ] ; 3 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %.pre.i92.i, i64 %index246 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 16
  %wide.load247 = load <16 x i8>, ptr %i.gf, align 1, !tbaa !12
  %wide.load248 = load <16 x i8>, ptr %i.gg, align 1, !tbaa !12
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ga, i64 %index246 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 16
  store <16 x i8> %wide.load247, ptr %i.gh, align 1, !tbaa !12
  store <16 x i8> %wide.load248, ptr %i.gi, align 1, !tbaa !12
  %index.next249 = add nuw i64 %index246, 32      ; 2 uses
  %i.gj = icmp eq i64 %index.next249, %n.vec244
  br i1 %i.gj, label %middle.block250, label %vector.body245, !llvm.loop !567

middle.block250:                                  ; preds = %vector.body245
  %cmp.n251 = icmp eq i64 %i.gb, %n.vec244
  br i1 %cmp.n251, label %.loopexit.loopexit.i100.i, label %vec.epilog.iter.check255

vec.epilog.iter.check255:                         ; preds = %middle.block250
  %min.epilog.iters.check256 = icmp eq i64 %i.ge, 0
  br i1 %min.epilog.iters.check256, label %.lr.ph.i.i97.i.preheader, label %vec.epilog.ph257, !prof !36

vec.epilog.ph257:                                 ; preds = %vector.main.loop.iter.check241, %vec.epilog.iter.check255
  %vec.epilog.resume.val252 = phi i64 [ %n.vec244, %vec.epilog.iter.check255 ], [ 0, %vector.main.loop.iter.check241 ]
  %n.vec258 = and i64 %i.gb, 137438953468         ; 3 uses
  br label %vec.epilog.vector.body259

vec.epilog.vector.body259:                        ; preds = %vec.epilog.vector.body259, %vec.epilog.ph257
  %index260 = phi i64 [ %vec.epilog.resume.val252, %vec.epilog.ph257 ], [ %index.next262, %vec.epilog.vector.body259 ] ; 3 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %.pre.i92.i, i64 %index260
  %wide.load261 = load <4 x i8>, ptr %i.gk, align 1, !tbaa !12
  %i.gl = getelementptr inbounds nuw i8, ptr %i.ga, i64 %index260
  store <4 x i8> %wide.load261, ptr %i.gl, align 1, !tbaa !12
  %index.next262 = add nuw i64 %index260, 4       ; 2 uses
  %i.gm = icmp eq i64 %index.next262, %n.vec258
  br i1 %i.gm, label %vec.epilog.middle.block263, label %vec.epilog.vector.body259, !llvm.loop !568

vec.epilog.middle.block263:                       ; preds = %vec.epilog.vector.body259
  %cmp.n264 = icmp eq i64 %i.gb, %n.vec258
  br i1 %cmp.n264, label %.loopexit.loopexit.i100.i, label %.lr.ph.i.i97.i.preheader

.lr.ph.i.i97.i.preheader:                         ; preds = %vector.memcheck237, %iter.check253, %vec.epilog.iter.check255, %vec.epilog.middle.block263
  %.026.i.i98.i.ph = phi i64 [ 0, %iter.check253 ], [ 0, %vector.memcheck237 ], [ %n.vec244, %vec.epilog.iter.check255 ], [ %n.vec258, %vec.epilog.middle.block263 ] ; 3 uses
  %xtraiter301 = and i64 %i.gb, 3                 ; 2 uses
  %lcmp.mod302.not = icmp eq i64 %xtraiter301, 0
  br i1 %lcmp.mod302.not, label %.lr.ph.i.i97.i.prol.loopexit, label %.lr.ph.i.i97.i.prol

.lr.ph.i.i97.i.prol:                              ; preds = %.lr.ph.i.i97.i.preheader, %.lr.ph.i.i97.i.prol
  %.026.i.i98.i.prol = phi i64 [ %i.gq, %.lr.ph.i.i97.i.prol ], [ %.026.i.i98.i.ph, %.lr.ph.i.i97.i.preheader ] ; 3 uses
  %prol.iter303 = phi i64 [ %prol.iter303.next, %.lr.ph.i.i97.i.prol ], [ 0, %.lr.ph.i.i97.i.preheader ]
  %i.gn = getelementptr inbounds nuw i8, ptr %.pre.i92.i, i64 %.026.i.i98.i.prol
  %i.go = load i8, ptr %i.gn, align 1, !tbaa !12
  %i.gp = getelementptr inbounds nuw i8, ptr %i.ga, i64 %.026.i.i98.i.prol
  store i8 %i.go, ptr %i.gp, align 1, !tbaa !12
  %i.gq = add nuw nsw i64 %.026.i.i98.i.prol, 1   ; 2 uses
  %prol.iter303.next = add i64 %prol.iter303, 1   ; 2 uses
  %prol.iter303.cmp.not = icmp eq i64 %prol.iter303.next, %xtraiter301
  br i1 %prol.iter303.cmp.not, label %.lr.ph.i.i97.i.prol.loopexit, label %.lr.ph.i.i97.i.prol, !llvm.loop !569

.lr.ph.i.i97.i.prol.loopexit:                     ; preds = %.lr.ph.i.i97.i.prol, %.lr.ph.i.i97.i.preheader
  %.026.i.i98.i.unr = phi i64 [ %.026.i.i98.i.ph, %.lr.ph.i.i97.i.preheader ], [ %i.gq, %.lr.ph.i.i97.i.prol ]
  %i.gr = sub nsw i64 %.026.i.i98.i.ph, %i.gb
  %i.gs = icmp ugt i64 %i.gr, -4
  br i1 %i.gs, label %.loopexit.loopexit.i100.i, label %.lr.ph.i.i97.i

.lr.ph.i.i97.i:                                   ; preds = %.lr.ph.i.i97.i.prol.loopexit, %.lr.ph.i.i97.i
  %.026.i.i98.i = phi i64 [ %i.hi, %.lr.ph.i.i97.i ], [ %.026.i.i98.i.unr, %.lr.ph.i.i97.i.prol.loopexit ] ; 6 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %.pre.i92.i, i64 %.026.i.i98.i
  %i.gu = load i8, ptr %i.gt, align 1, !tbaa !12
  %i.gv = getelementptr inbounds nuw i8, ptr %i.ga, i64 %.026.i.i98.i
  store i8 %i.gu, ptr %i.gv, align 1, !tbaa !12
  %i.gw = add nuw nsw i64 %.026.i.i98.i, 1        ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %.pre.i92.i, i64 %i.gw
  %i.gy = load i8, ptr %i.gx, align 1, !tbaa !12
  %i.gz = getelementptr inbounds nuw i8, ptr %i.ga, i64 %i.gw
  store i8 %i.gy, ptr %i.gz, align 1, !tbaa !12
  %i.ha = add nuw nsw i64 %.026.i.i98.i, 2        ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %.pre.i92.i, i64 %i.ha
  %i.hc = load i8, ptr %i.hb, align 1, !tbaa !12
  %i.hd = getelementptr inbounds nuw i8, ptr %i.ga, i64 %i.ha
  store i8 %i.hc, ptr %i.hd, align 1, !tbaa !12
  %i.he = add nuw nsw i64 %.026.i.i98.i, 3        ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %.pre.i92.i, i64 %i.he
  %i.hg = load i8, ptr %i.hf, align 1, !tbaa !12
  %i.hh = getelementptr inbounds nuw i8, ptr %i.ga, i64 %i.he
  store i8 %i.hg, ptr %i.hh, align 1, !tbaa !12
  %i.hi = add nuw nsw i64 %.026.i.i98.i, 4        ; 2 uses
  %exitcond.not.i.i99.i.3 = icmp eq i64 %i.hi, %i.gb
  br i1 %exitcond.not.i.i99.i.3, label %.loopexit.loopexit.i100.i, label %.lr.ph.i.i97.i, !llvm.loop !570

.loopexit.loopexit.i100.i:                        ; preds = %.lr.ph.i.i97.i.prol.loopexit, %.lr.ph.i.i97.i, %vec.epilog.middle.block263, %middle.block250
  %.pre33.pre.i101.i = load i32, ptr %i.fk, align 8, !tbaa !136
  br label %.loopexit.i102.i

.loopexit.i102.i:                                 ; preds = %.loopexit.loopexit.i100.i, %bb.ae, %bb.ac
  %.pre33.i103.i = phi i32 [ %i.fl, %bb.ac ], [ %i.fl, %bb.ae ], [ %.pre33.pre.i101.i, %.loopexit.loopexit.i100.i ]
  %.018.i.ph.i104.i = phi ptr [ %i.fw, %bb.ac ], [ %i.ga, %bb.ae ], [ %i.ga, %.loopexit.loopexit.i100.i ] ; 2 uses
  store ptr %.018.i.ph.i104.i, ptr %1, align 8, !tbaa !137
  store i32 %spec.select.i94.i, ptr %i.fm, align 4, !tbaa !191
  br label %bb.af

bb.af:                                            ; preds = %.loopexit.i102.i, %bb.z
  %i.hj = phi i32 [ %.pre33.i103.i, %.loopexit.i102.i ], [ %i.fl, %bb.z ] ; 2 uses
  %i.hk = phi ptr [ %.018.i.ph.i104.i, %.loopexit.i102.i ], [ %.pre.i92.i, %bb.z ]
  %i.hl = add i32 %i.hj, 1
  store i32 %i.hl, ptr %i.fk, align 8, !tbaa !136
  %i.hm = zext i32 %i.hj to i64
  %i.hn = getelementptr inbounds nuw [32 x i8], ptr %i.hk, i64 %i.hm ; 5 uses
  store i32 2, ptr %i.hn, align 8, !tbaa !196
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 4
  store i32 23, ptr %i.ho, align 4, !tbaa !198
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hn, i64 8
  store ptr @.str.281, ptr %i.hp, align 8, !tbaa !199
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hn, i64 16
  store ptr null, ptr %i.hq, align 8, !tbaa !200
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hn, i64 24
  store i64 -1, ptr %i.hr, align 8, !tbaa !201
  %i.hs = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 1, ptr %i.hs, align 8, !tbaa !133
  br label %tg3__error_push.exit

bb.ag:                                            ; preds = %.lr.ph.i
  %i.ht = getelementptr i8, ptr %i.fa, i64 4
  %i.hu = load i32, ptr %i.ht, align 1
  switch i32 %i.hu, label %tg3__error_push.exit105.i [
    i32 1313821514, label %tg3__error_push.exit105.sink.split.i
    i32 5130562, label %bb.ah
  ]

bb.ah:                                            ; preds = %bb.ag
  br label %tg3__error_push.exit105.sink.split.i

tg3__error_push.exit105.sink.split.i:             ; preds = %bb.ah, %bb.ag
  %.sink161.i = phi ptr [ %i.c, %bb.ah ], [ %i.a, %bb.ag ]
  %.sink.i = phi ptr [ %i.d, %bb.ah ], [ %i.b, %bb.ag ]
  %i.hv = getelementptr inbounds nuw i8, ptr %2, i64 %i.ez
  store ptr %i.hv, ptr %.sink161.i, align 8, !tbaa !9
  store i64 %.sroa.0109.0.insert.insert.i, ptr %.sink.i, align 8, !tbaa !21
  br label %tg3__error_push.exit105.i

tg3__error_push.exit105.i:                        ; preds = %tg3__error_push.exit105.sink.split.i, %bb.ag
  %i.hw = tail call i64 @llvm.usub.sat.i64(i64 %3, i64 %i.fj)
  %i.hx = add nuw nsw i64 %i.ez, %.sroa.0109.0.insert.ext.i
  %i.hy = sub nsw i64 0, %i.hx
  %i.hz = and i64 %i.hy, 3
  %umin.i = tail call i64 @llvm.umin.i64(i64 %i.hw, i64 %i.hz)
  %i.ia = add nuw nsw i64 %i.fj, %umin.i          ; 2 uses
  %i.ib = add nuw nsw i64 %i.ia, 8                ; 2 uses
  %.not52.i = icmp ugt i64 %i.ib, %3
  br i1 %.not52.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !571

._crit_edge.i:                                    ; preds = %tg3__error_push.exit105.i
  %.0..0..0.80.pre = load ptr, ptr %i.a, align 8, !tbaa !9 ; 2 uses
  %.not53.i = icmp eq ptr %.0..0..0.80.pre, null
  br i1 %.not53.i, label %._crit_edge.i.thread, label %tg3__parse_glb_header.exit

._crit_edge.i.thread:                             ; preds = %.preheader.i, %._crit_edge.i
  tail call fastcc void @tg3__error_push(ptr noundef %1, i32 noundef 23, ptr noundef nonnull @.str.282, ptr noundef null, i64 noundef -1) #20
  br label %tg3__error_push.exit

tg3__parse_glb_header.exit:                       ; preds = %._crit_edge.i
  %.not36 = icmp eq ptr %6, null
  br i1 %.not36, label %vector.body154, label %bb.ai

vector.body154:                                   ; preds = %tg3__parse_glb_header.exit
  %i.ic = getelementptr inbounds nuw i8, ptr %7, i64 16
  store <16 x i8> zeroinitializer, ptr %7, align 16, !tbaa !12
  store <16 x i8> zeroinitializer, ptr %i.ic, align 16, !tbaa !12
  %next.gep156.1 = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.id = getelementptr inbounds nuw i8, ptr %7, i64 48
  store <16 x i8> zeroinitializer, ptr %next.gep156.1, align 16, !tbaa !12
  store <16 x i8> zeroinitializer, ptr %i.id, align 16, !tbaa !12
  %next.gep156.2 = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.ie = getelementptr inbounds nuw i8, ptr %7, i64 80
  store <16 x i8> zeroinitializer, ptr %next.gep156.2, align 16, !tbaa !12
  store <16 x i8> zeroinitializer, ptr %i.ie, align 16, !tbaa !12
  %next.gep156.3 = getelementptr inbounds nuw i8, ptr %7, i64 96
  %i.if = getelementptr inbounds nuw i8, ptr %7, i64 112
  store <16 x i8> zeroinitializer, ptr %next.gep156.3, align 16, !tbaa !12
  store <16 x i8> zeroinitializer, ptr %i.if, align 16, !tbaa !12
  %next.gep156.4 = getelementptr inbounds nuw i8, ptr %7, i64 128
  %i.ig = getelementptr inbounds nuw i8, ptr %7, i64 144
  store <16 x i8> zeroinitializer, ptr %next.gep156.4, align 16, !tbaa !12
  store <16 x i8> zeroinitializer, ptr %i.ig, align 16, !tbaa !12
  %next.gep156.5 = getelementptr inbounds nuw i8, ptr %7, i64 160
  %i.ih = getelementptr inbounds nuw i8, ptr %7, i64 176
  store <16 x i8> zeroinitializer, ptr %next.gep156.5, align 16, !tbaa !12
  store <16 x i8> zeroinitializer, ptr %i.ih, align 16, !tbaa !12
  %next.gep156.6 = getelementptr inbounds nuw i8, ptr %7, i64 192
  %i.ii = getelementptr inbounds nuw i8, ptr %7, i64 208
  store <16 x i8> zeroinitializer, ptr %next.gep156.6, align 16, !tbaa !12
  store <16 x i8> zeroinitializer, ptr %i.ii, align 16, !tbaa !12
  %next.gep168 = getelementptr inbounds nuw i8, ptr %7, i64 224
  store <8 x i8> zeroinitializer, ptr %next.gep168, align 16, !tbaa !12
  store i32 1, ptr %7, align 16, !tbaa !138
  %i.ij = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 0, ptr %i.ij, align 4, !tbaa !146
  store i64 1073741824, ptr %.0.sroa.gep28, align 8, !tbaa !147
  %i.ik = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i32 262144, ptr %i.ik, align 8, !tbaa !148
  %i.il = getelementptr inbounds nuw i8, ptr %7, i64 224
  store i64 0, ptr %i.il, align 16, !tbaa !149
  %i.im = getelementptr inbounds nuw i8, ptr %7, i64 216
  store i32 1, ptr %i.im, align 8, !tbaa !150
  br label %bb.ai

bb.ai:                                            ; preds = %vector.body154, %tg3__parse_glb_header.exit
  %.0.sroa.phi = phi ptr [ %.0.sroa.gep, %tg3__parse_glb_header.exit ], [ %.0.sroa.gep28, %vector.body154 ] ; 2 uses
  %.0.sroa.phi70 = phi ptr [ %.0.sroa.gep71, %tg3__parse_glb_header.exit ], [ %.0.sroa.gep72, %vector.body154 ]
  %.0.sroa.phi73 = phi ptr [ %.0.sroa.gep74, %tg3__parse_glb_header.exit ], [ %.0.sroa.gep75, %vector.body154 ]
  %.0 = phi ptr [ %6, %tg3__parse_glb_header.exit ], [ %7, %vector.body154 ]
  %i.in = call fastcc ptr @tg3__arena_create(ptr noundef nonnull %.0.sroa.phi) #20 ; 3 uses
  %.not37 = icmp eq ptr %i.in, null
  br i1 %.not37, label %bb.aj, label %bb.ar

bb.aj:                                            ; preds = %bb.ai
  %.not.i46 = icmp eq ptr %1, null
  br i1 %.not.i46, label %tg3__error_push.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.io = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.ip = load i32, ptr %i.io, align 8, !tbaa !136 ; 4 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !191 ; 3 uses
  %.not27.i = icmp ult i32 %i.ip, %i.ir
  %.pre.i = load ptr, ptr %1, align 8, !tbaa !137 ; 11 uses
  %.pre.i209 = ptrtoaddr ptr %.pre.i to i64
  br i1 %.not27.i, label %bb.aq, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %.not28.i = icmp eq i32 %i.ir, 0
  %i.is = shl i32 %i.ir, 1
  %spec.select.i = select i1 %.not28.i, i32 16, i32 %i.is ; 2 uses
  %i.it = zext i32 %spec.select.i to i64
  %i.iu = shl nuw nsw i64 %i.it, 5                ; 4 uses
  %.not.i.i47 = icmp eq ptr %.pre.i, null
  %i.iv = or disjoint i64 %i.iu, 8
  %i.iw = load i64, ptr @test_heap_used, align 8, !tbaa !21 ; 4 uses
  %i.ix = add i64 %i.iw, %i.iv                    ; 3 uses
  %i.iy = icmp ugt i64 %i.ix, 524288              ; 2 uses
  br i1 %.not.i.i47, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %bb.al
  br i1 %i.iy, label %tg3__error_push.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.iz = getelementptr inbounds nuw i8, ptr @test_heap, i64 %i.iw ; 2 uses
  store i64 %i.iu, ptr %i.iz, align 8, !tbaa !21
  store i64 %i.ix, ptr @test_heap_used, align 8, !tbaa !21
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 8
  br label %.loopexit.i

bb.ao:                                            ; preds = %bb.al
  br i1 %i.iy, label %tg3__error_push.exit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.jb = getelementptr inbounds i8, ptr %.pre.i, i64 -8
  %i.jc = load i64, ptr %i.jb, align 8, !tbaa !21
  %i.jd = getelementptr inbounds nuw i8, ptr @test_heap, i64 %i.iw ; 2 uses
  store i64 %i.iu, ptr %i.jd, align 8, !tbaa !21
  store i64 %i.ix, ptr @test_heap_used, align 8, !tbaa !21
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 8 ; 9 uses
  %i.jf = call i64 @llvm.umin.i64(i64 %i.jc, i64 %i.iu) ; 11 uses
  %.not27.i.i48 = icmp eq i64 %i.jf, 0
  br i1 %.not27.i.i48, label %.loopexit.i, label %iter.check224

iter.check224:                                    ; preds = %bb.ap
  %min.iters.check211 = icmp samesign ult i64 %i.jf, 4
  br i1 %min.iters.check211, label %.lr.ph.i.i49.preheader, label %vector.memcheck208

vector.memcheck208:                               ; preds = %iter.check224
  %i.jg = add i64 %i.iw, add (i64 ptrtoaddr (ptr @test_heap to i64), i64 8)
  %i.jh = sub i64 %.pre.i209, %i.jg
  %diff.check210 = icmp ugt i64 %i.jh, -32
  br i1 %diff.check210, label %.lr.ph.i.i49.preheader, label %vector.main.loop.iter.check212

vector.main.loop.iter.check212:                   ; preds = %vector.memcheck208
  %min.iters.check213 = icmp samesign ult i64 %i.jf, 32
  br i1 %min.iters.check213, label %vec.epilog.ph228, label %vector.ph214

vector.ph214:                                     ; preds = %vector.main.loop.iter.check212
  %i.ji = and i64 %i.jf, 28
  %n.vec215 = and i64 %i.jf, 137438953440         ; 4 uses
  br label %vector.body216

vector.body216:                                   ; preds = %vector.body216, %vector.ph214
  %index217 = phi i64 [ 0, %vector.ph214 ], [ %index.next220, %vector.body216 ] ; 3 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %index217 ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 16
  %wide.load218 = load <16 x i8>, ptr %i.jj, align 1, !tbaa !12
  %wide.load219 = load <16 x i8>, ptr %i.jk, align 1, !tbaa !12
  %i.jl = getelementptr inbounds nuw i8, ptr %i.je, i64 %index217 ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 16
  store <16 x i8> %wide.load218, ptr %i.jl, align 1, !tbaa !12
  store <16 x i8> %wide.load219, ptr %i.jm, align 1, !tbaa !12
  %index.next220 = add nuw i64 %index217, 32      ; 2 uses
  %i.jn = icmp eq i64 %index.next220, %n.vec215
  br i1 %i.jn, label %middle.block221, label %vector.body216, !llvm.loop !572

middle.block221:                                  ; preds = %vector.body216
  %cmp.n222 = icmp eq i64 %i.jf, %n.vec215
  br i1 %cmp.n222, label %.loopexit.loopexit.i, label %vec.epilog.iter.check226

vec.epilog.iter.check226:                         ; preds = %middle.block221
  %min.epilog.iters.check227 = icmp eq i64 %i.ji, 0
  br i1 %min.epilog.iters.check227, label %.lr.ph.i.i49.preheader, label %vec.epilog.ph228, !prof !36

vec.epilog.ph228:                                 ; preds = %vector.main.loop.iter.check212, %vec.epilog.iter.check226
  %vec.epilog.resume.val223 = phi i64 [ %n.vec215, %vec.epilog.iter.check226 ], [ 0, %vector.main.loop.iter.check212 ]
  %n.vec229 = and i64 %i.jf, 137438953468         ; 3 uses
  br label %vec.epilog.vector.body230

vec.epilog.vector.body230:                        ; preds = %vec.epilog.vector.body230, %vec.epilog.ph228
  %index231 = phi i64 [ %vec.epilog.resume.val223, %vec.epilog.ph228 ], [ %index.next233, %vec.epilog.vector.body230 ] ; 3 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %index231
  %wide.load232 = load <4 x i8>, ptr %i.jo, align 1, !tbaa !12
  %i.jp = getelementptr inbounds nuw i8, ptr %i.je, i64 %index231
  store <4 x i8> %wide.load232, ptr %i.jp, align 1, !tbaa !12
  %index.next233 = add nuw i64 %index231, 4       ; 2 uses
  %i.jq = icmp eq i64 %index.next233, %n.vec229
  br i1 %i.jq, label %vec.epilog.middle.block234, label %vec.epilog.vector.body230, !llvm.loop !573

vec.epilog.middle.block234:                       ; preds = %vec.epilog.vector.body230
  %cmp.n235 = icmp eq i64 %i.jf, %n.vec229
  br i1 %cmp.n235, label %.loopexit.loopexit.i, label %.lr.ph.i.i49.preheader

.lr.ph.i.i49.preheader:                           ; preds = %vector.memcheck208, %iter.check224, %vec.epilog.iter.check226, %vec.epilog.middle.block234
  %.026.i.i.ph = phi i64 [ 0, %iter.check224 ], [ 0, %vector.memcheck208 ], [ %n.vec215, %vec.epilog.iter.check226 ], [ %n.vec229, %vec.epilog.middle.block234 ] ; 3 uses
  %xtraiter298 = and i64 %i.jf, 3                 ; 2 uses
  %lcmp.mod299.not = icmp eq i64 %xtraiter298, 0
  br i1 %lcmp.mod299.not, label %.lr.ph.i.i49.prol.loopexit, label %.lr.ph.i.i49.prol

.lr.ph.i.i49.prol:                                ; preds = %.lr.ph.i.i49.preheader, %.lr.ph.i.i49.prol
  %.026.i.i.prol = phi i64 [ %i.ju, %.lr.ph.i.i49.prol ], [ %.026.i.i.ph, %.lr.ph.i.i49.preheader ] ; 3 uses
  %prol.iter300 = phi i64 [ %prol.iter300.next, %.lr.ph.i.i49.prol ], [ 0, %.lr.ph.i.i49.preheader ]
  %i.jr = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %.026.i.i.prol
  %i.js = load i8, ptr %i.jr, align 1, !tbaa !12
  %i.jt = getelementptr inbounds nuw i8, ptr %i.je, i64 %.026.i.i.prol
  store i8 %i.js, ptr %i.jt, align 1, !tbaa !12
  %i.ju = add nuw nsw i64 %.026.i.i.prol, 1       ; 2 uses
  %prol.iter300.next = add i64 %prol.iter300, 1   ; 2 uses
  %prol.iter300.cmp.not = icmp eq i64 %prol.iter300.next, %xtraiter298
  br i1 %prol.iter300.cmp.not, label %.lr.ph.i.i49.prol.loopexit, label %.lr.ph.i.i49.prol, !llvm.loop !574

.lr.ph.i.i49.prol.loopexit:                       ; preds = %.lr.ph.i.i49.prol, %.lr.ph.i.i49.preheader
  %.026.i.i.unr = phi i64 [ %.026.i.i.ph, %.lr.ph.i.i49.preheader ], [ %i.ju, %.lr.ph.i.i49.prol ]
  %i.jv = sub nsw i64 %.026.i.i.ph, %i.jf
  %i.jw = icmp ugt i64 %i.jv, -4
  br i1 %i.jw, label %.loopexit.loopexit.i, label %.lr.ph.i.i49

.lr.ph.i.i49:                                     ; preds = %.lr.ph.i.i49.prol.loopexit, %.lr.ph.i.i49
  %.026.i.i = phi i64 [ %i.km, %.lr.ph.i.i49 ], [ %.026.i.i.unr, %.lr.ph.i.i49.prol.loopexit ] ; 6 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %.026.i.i
  %i.jy = load i8, ptr %i.jx, align 1, !tbaa !12
  %i.jz = getelementptr inbounds nuw i8, ptr %i.je, i64 %.026.i.i
  store i8 %i.jy, ptr %i.jz, align 1, !tbaa !12
  %i.ka = add nuw nsw i64 %.026.i.i, 1            ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %i.ka
  %i.kc = load i8, ptr %i.kb, align 1, !tbaa !12
  %i.kd = getelementptr inbounds nuw i8, ptr %i.je, i64 %i.ka
  store i8 %i.kc, ptr %i.kd, align 1, !tbaa !12
  %i.ke = add nuw nsw i64 %.026.i.i, 2            ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %i.ke
  %i.kg = load i8, ptr %i.kf, align 1, !tbaa !12
  %i.kh = getelementptr inbounds nuw i8, ptr %i.je, i64 %i.ke
  store i8 %i.kg, ptr %i.kh, align 1, !tbaa !12
  %i.ki = add nuw nsw i64 %.026.i.i, 3            ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %i.ki
  %i.kk = load i8, ptr %i.kj, align 1, !tbaa !12
  %i.kl = getelementptr inbounds nuw i8, ptr %i.je, i64 %i.ki
  store i8 %i.kk, ptr %i.kl, align 1, !tbaa !12
  %i.km = add nuw nsw i64 %.026.i.i, 4            ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.km, %i.jf
  br i1 %exitcond.not.i.i.3, label %.loopexit.loopexit.i, label %.lr.ph.i.i49, !llvm.loop !575

.loopexit.loopexit.i:                             ; preds = %.lr.ph.i.i49.prol.loopexit, %.lr.ph.i.i49, %vec.epilog.middle.block234, %middle.block221
  %.pre33.pre.i = load i32, ptr %i.io, align 8, !tbaa !136
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.loopexit.i, %bb.ap, %bb.an
  %.pre33.i = phi i32 [ %i.ip, %bb.an ], [ %i.ip, %bb.ap ], [ %.pre33.pre.i, %.loopexit.loopexit.i ]
  %.018.i.ph.i = phi ptr [ %i.ja, %bb.an ], [ %i.je, %bb.ap ], [ %i.je, %.loopexit.loopexit.i ] ; 2 uses
  store ptr %.018.i.ph.i, ptr %1, align 8, !tbaa !137
  store i32 %spec.select.i, ptr %i.iq, align 4, !tbaa !191
  br label %bb.aq

bb.aq:                                            ; preds = %.loopexit.i, %bb.ak
  %i.kn = phi i32 [ %.pre33.i, %.loopexit.i ], [ %i.ip, %bb.ak ] ; 2 uses
  %i.ko = phi ptr [ %.018.i.ph.i, %.loopexit.i ], [ %.pre.i, %bb.ak ]
  %i.kp = add i32 %i.kn, 1
  store i32 %i.kp, ptr %i.io, align 8, !tbaa !136
  %i.kq = zext i32 %i.kn to i64
  %i.kr = getelementptr inbounds nuw [32 x i8], ptr %i.ko, i64 %i.kq ; 5 uses
  store i32 2, ptr %i.kr, align 8, !tbaa !196
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 4
  store i32 50, ptr %i.ks, align 4, !tbaa !198
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kr, i64 8
  store ptr @.str.2, ptr %i.kt, align 8, !tbaa !199
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kr, i64 16
  store ptr null, ptr %i.ku, align 8, !tbaa !200
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kr, i64 24
  store i64 -1, ptr %i.kv, align 8, !tbaa !201
  %i.kw = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 1, ptr %i.kw, align 8, !tbaa !133
  br label %tg3__error_push.exit

bb.ar:                                            ; preds = %bb.ai
  store ptr %i.in, ptr %0, align 8, !tbaa !202
  %i.kx = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %10, i64 9
  store i8 0, ptr %i.kx, align 8, !tbaa !12
  %i.kz = getelementptr inbounds nuw i8, ptr %10, i64 10
  store i8 0, ptr %i.ky, align 1, !tbaa !12
  store i8 0, ptr %i.kz, align 2, !tbaa !12
  %i.la = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  store i8 0, ptr %i.la, align 8, !tbaa !12
  %i.lb = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.lc = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.ld = getelementptr inbounds nuw i8, ptr %10, i64 36
  store <4 x i8> zeroinitializer, ptr %i.ld, align 4, !tbaa !12
  store i64 512, ptr %10, align 8, !tbaa !19
  %i.le = load i64, ptr %.0.sroa.phi, align 8, !tbaa !147
  store i64 %i.le, ptr %i.kx, align 8, !tbaa !203
  %i.lf = load i64, ptr %.0.sroa.phi70, align 8, !tbaa !204
  store i64 %i.lf, ptr %i.la, align 8, !tbaa !205
  store i64 67108864, ptr %i.lb, align 8, !tbaa !22
  %i.lg = load i32, ptr %.0.sroa.phi73, align 4, !tbaa !206
  store i32 %i.lg, ptr %i.lc, align 8, !tbaa !23
  %.0..0..0.77 = load i64, ptr %i.b, align 8, !tbaa !21
  %i.lh = call i32 @tg3json_parse_n_opts(ptr noundef nonnull %.0..0..0.80.pre, i64 noundef %.0..0..0.77, ptr noundef nonnull %10, ptr noundef nonnull %9, ptr noundef nonnull %i.e) #20
  %i.li = icmp eq i32 %i.lh, 0                    ; 2 uses
  %i.lj = load i32, ptr %9, align 8
  %i.lk = icmp ne i32 %i.lj, 6
  %or.cond = select i1 %i.li, i1 true, i1 %i.lk
  br i1 %or.cond, label %bb.as, label %vector.body174

vector.body174:                                   ; preds = %bb.ar
  %i.ll = getelementptr inbounds nuw i8, ptr %8, i64 16
  store <16 x i8> zeroinitializer, ptr %8, align 16, !tbaa !12
  store <16 x i8> zeroinitializer, ptr %i.ll, align 16, !tbaa !12
  %next.gep176.1 = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.lm = getelementptr inbounds nuw i8, ptr %8, i64 48
  store <16 x i8> zeroinitializer, ptr %next.gep176.1, align 16, !tbaa !12
  store <16 x i8> zeroinitializer, ptr %i.lm, align 16, !tbaa !12
  %next.gep176.2 = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.ln = getelementptr inbounds nuw i8, ptr %8, i64 80
  store <16 x i8> zeroinitializer, ptr %next.gep176.2, align 16, !tbaa !12
  store <16 x i8> zeroinitializer, ptr %i.ln, align 16, !tbaa !12
  %next.gep176.3 = getelementptr inbounds nuw i8, ptr %8, i64 96
  %i.lo = getelementptr inbounds nuw i8, ptr %8, i64 112
  store <16 x i8> zeroinitializer, ptr %next.gep176.3, align 16, !tbaa !12
  store <16 x i8> zeroinitializer, ptr %i.lo, align 16, !tbaa !12
  %next.gep176.4 = getelementptr inbounds nuw i8, ptr %8, i64 128
  %i.lp = getelementptr inbounds nuw i8, ptr %8, i64 144
  store <16 x i8> zeroinitializer, ptr %next.gep176.4, align 16, !tbaa !12
  store <16 x i8> zeroinitializer, ptr %i.lp, align 16, !tbaa !12
  %next.gep176.5 = getelementptr inbounds nuw i8, ptr %8, i64 160
  %i.lq = getelementptr inbounds nuw i8, ptr %8, i64 176
  store <16 x i8> zeroinitializer, ptr %next.gep176.5, align 16, !tbaa !12
  store <16 x i8> zeroinitializer, ptr %i.lq, align 16, !tbaa !12
  %next.gep176.6 = getelementptr inbounds nuw i8, ptr %8, i64 192
  %i.lr = getelementptr inbounds nuw i8, ptr %8, i64 208
  store <16 x i8> zeroinitializer, ptr %next.gep176.6, align 16, !tbaa !12
  store <16 x i8> zeroinitializer, ptr %i.lr, align 16, !tbaa !12
  %next.gep176.7 = getelementptr inbounds nuw i8, ptr %8, i64 224
  %i.ls = getelementptr inbounds nuw i8, ptr %8, i64 240
  store <16 x i8> zeroinitializer, ptr %next.gep176.7, align 16, !tbaa !12
  store <16 x i8> zeroinitializer, ptr %i.ls, align 16, !tbaa !12
  %next.gep176.8 = getelementptr inbounds nuw i8, ptr %8, i64 256
  %i.lt = getelementptr inbounds nuw i8, ptr %8, i64 272
  store <16 x i8> zeroinitializer, ptr %next.gep176.8, align 16, !tbaa !12
  store <16 x i8> zeroinitializer, ptr %i.lt, align 16, !tbaa !12
  store ptr %i.in, ptr %8, align 16, !tbaa !207
  %i.lu = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %1, ptr %i.lu, align 8, !tbaa !210
  %i.lv = getelementptr inbounds nuw i8, ptr %8, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(232) %i.lv, ptr noundef nonnull align 8 dereferenceable(232) %.0, i64 232, i1 false), !tbaa.struct !211
  %i.lw = getelementptr inbounds nuw i8, ptr %8, i64 248
  store ptr %4, ptr %i.lw, align 8, !tbaa !213
  %i.lx = getelementptr inbounds nuw i8, ptr %8, i64 256
  store i32 %5, ptr %i.lx, align 16, !tbaa !214
  %i.ly = getelementptr inbounds nuw i8, ptr %8, i64 280
  store i32 1, ptr %i.ly, align 8, !tbaa !255
  %.0..0..0.76 = load ptr, ptr %i.c, align 8, !tbaa !9
  %i.lz = getelementptr inbounds nuw i8, ptr %8, i64 264
  store ptr %.0..0..0.76, ptr %i.lz, align 8, !tbaa !257
  %.0..0..0. = load i64, ptr %i.d, align 8, !tbaa !21
  %i.ma = getelementptr inbounds nuw i8, ptr %8, i64 272
  store i64 %.0..0..0., ptr %i.ma, align 16, !tbaa !258
  %i.mb = call fastcc i32 @tg3__parse_from_json(ptr noundef %8, ptr noundef %9, ptr noundef %0) #20
  call void @tg3json_value_free(ptr noundef nonnull %9) #20
  br label %tg3__error_push.exit

bb.as:                                            ; preds = %bb.ar
  %i.mc = load ptr, ptr %i.e, align 8, !tbaa !9   ; 2 uses
  %.not38 = icmp eq ptr %i.mc, null
  %.0..0..0.79 = load ptr, ptr %i.a, align 8
  %i.md = ptrtoint ptr %i.mc to i64
  %i.me = ptrtoint ptr %.0..0..0.79 to i64
  %i.mf = sub i64 %i.md, %i.me
  %i.mg = select i1 %.not38, i64 -1, i64 %i.mf
  %.not.i50 = icmp eq ptr %1, null
  br i1 %.not.i50, label %tg3__error_push.exit65, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.mh = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.mi = load i32, ptr %i.mh, align 8, !tbaa !136 ; 4 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.mk = load i32, ptr %i.mj, align 4, !tbaa !191 ; 3 uses
  %.not27.i51 = icmp ult i32 %i.mi, %i.mk
  %.pre.i52 = load ptr, ptr %1, align 8, !tbaa !137 ; 11 uses
  %.pre.i52180 = ptrtoaddr ptr %.pre.i52 to i64
  br i1 %.not27.i51, label %bb.az, label %bb.au

bb.au:                                            ; preds = %bb.at
  %.not28.i53 = icmp eq i32 %i.mk, 0
  %i.ml = shl i32 %i.mk, 1
  %spec.select.i54 = select i1 %.not28.i53, i32 16, i32 %i.ml ; 2 uses
  %i.mm = zext i32 %spec.select.i54 to i64
  %i.mn = shl nuw nsw i64 %i.mm, 5                ; 4 uses
  %.not.i.i55 = icmp eq ptr %.pre.i52, null
  %i.mo = or disjoint i64 %i.mn, 8
  %i.mp = load i64, ptr @test_heap_used, align 8, !tbaa !21 ; 4 uses
  %i.mq = add i64 %i.mp, %i.mo                    ; 3 uses
  %i.mr = icmp ugt i64 %i.mq, 524288              ; 2 uses
  br i1 %.not.i.i55, label %bb.av, label %bb.ax

bb.av:                                            ; preds = %bb.au
  br i1 %i.mr, label %tg3__error_push.exit65, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ms = getelementptr inbounds nuw i8, ptr @test_heap, i64 %i.mp ; 2 uses
  store i64 %i.mn, ptr %i.ms, align 8, !tbaa !21
  store i64 %i.mq, ptr @test_heap_used, align 8, !tbaa !21
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 8
  br label %.loopexit.i62

bb.ax:                                            ; preds = %bb.au
  br i1 %i.mr, label %tg3__error_push.exit65, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.mu = getelementptr inbounds i8, ptr %.pre.i52, i64 -8
  %i.mv = load i64, ptr %i.mu, align 8, !tbaa !21
  %i.mw = getelementptr inbounds nuw i8, ptr @test_heap, i64 %i.mp ; 2 uses
  store i64 %i.mn, ptr %i.mw, align 8, !tbaa !21
  store i64 %i.mq, ptr @test_heap_used, align 8, !tbaa !21
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 8 ; 9 uses
  %i.my = call i64 @llvm.umin.i64(i64 %i.mv, i64 %i.mn) ; 11 uses
  %.not27.i.i56 = icmp eq i64 %i.my, 0
  br i1 %.not27.i.i56, label %.loopexit.i62, label %iter.check195

iter.check195:                                    ; preds = %bb.ay
  %min.iters.check182 = icmp samesign ult i64 %i.my, 4
  br i1 %min.iters.check182, label %.lr.ph.i.i57.preheader, label %vector.memcheck179

vector.memcheck179:                               ; preds = %iter.check195
  %i.mz = add i64 %i.mp, add (i64 ptrtoaddr (ptr @test_heap to i64), i64 8)
  %i.na = sub i64 %.pre.i52180, %i.mz
  %diff.check181 = icmp ugt i64 %i.na, -32
  br i1 %diff.check181, label %.lr.ph.i.i57.preheader, label %vector.main.loop.iter.check183

vector.main.loop.iter.check183:                   ; preds = %vector.memcheck179
  %min.iters.check184 = icmp samesign ult i64 %i.my, 32
  br i1 %min.iters.check184, label %vec.epilog.ph199, label %vector.ph185

vector.ph185:                                     ; preds = %vector.main.loop.iter.check183
  %i.nb = and i64 %i.my, 28
  %n.vec186 = and i64 %i.my, 137438953440         ; 4 uses
  br label %vector.body187

vector.body187:                                   ; preds = %vector.body187, %vector.ph185
  %index188 = phi i64 [ 0, %vector.ph185 ], [ %index.next191, %vector.body187 ] ; 3 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %.pre.i52, i64 %index188 ; 2 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 16
  %wide.load189 = load <16 x i8>, ptr %i.nc, align 1, !tbaa !12
  %wide.load190 = load <16 x i8>, ptr %i.nd, align 1, !tbaa !12
  %i.ne = getelementptr inbounds nuw i8, ptr %i.mx, i64 %index188 ; 2 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 16
  store <16 x i8> %wide.load189, ptr %i.ne, align 1, !tbaa !12
  store <16 x i8> %wide.load190, ptr %i.nf, align 1, !tbaa !12
  %index.next191 = add nuw i64 %index188, 32      ; 2 uses
  %i.ng = icmp eq i64 %index.next191, %n.vec186
  br i1 %i.ng, label %middle.block192, label %vector.body187, !llvm.loop !576

middle.block192:                                  ; preds = %vector.body187
  %cmp.n193 = icmp eq i64 %i.my, %n.vec186
  br i1 %cmp.n193, label %.loopexit.loopexit.i60, label %vec.epilog.iter.check197

vec.epilog.iter.check197:                         ; preds = %middle.block192
  %min.epilog.iters.check198 = icmp eq i64 %i.nb, 0
  br i1 %min.epilog.iters.check198, label %.lr.ph.i.i57.preheader, label %vec.epilog.ph199, !prof !36

vec.epilog.ph199:                                 ; preds = %vector.main.loop.iter.check183, %vec.epilog.iter.check197
  %vec.epilog.resume.val194 = phi i64 [ %n.vec186, %vec.epilog.iter.check197 ], [ 0, %vector.main.loop.iter.check183 ]
  %n.vec200 = and i64 %i.my, 137438953468         ; 3 uses
  br label %vec.epilog.vector.body201

vec.epilog.vector.body201:                        ; preds = %vec.epilog.vector.body201, %vec.epilog.ph199
  %index202 = phi i64 [ %vec.epilog.resume.val194, %vec.epilog.ph199 ], [ %index.next204, %vec.epilog.vector.body201 ] ; 3 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %.pre.i52, i64 %index202
  %wide.load203 = load <4 x i8>, ptr %i.nh, align 1, !tbaa !12
  %i.ni = getelementptr inbounds nuw i8, ptr %i.mx, i64 %index202
  store <4 x i8> %wide.load203, ptr %i.ni, align 1, !tbaa !12
  %index.next204 = add nuw i64 %index202, 4       ; 2 uses
  %i.nj = icmp eq i64 %index.next204, %n.vec200
  br i1 %i.nj, label %vec.epilog.middle.block205, label %vec.epilog.vector.body201, !llvm.loop !577

vec.epilog.middle.block205:                       ; preds = %vec.epilog.vector.body201
  %cmp.n206 = icmp eq i64 %i.my, %n.vec200
  br i1 %cmp.n206, label %.loopexit.loopexit.i60, label %.lr.ph.i.i57.preheader

.lr.ph.i.i57.preheader:                           ; preds = %vector.memcheck179, %iter.check195, %vec.epilog.iter.check197, %vec.epilog.middle.block205
  %.026.i.i58.ph = phi i64 [ 0, %iter.check195 ], [ 0, %vector.memcheck179 ], [ %n.vec186, %vec.epilog.iter.check197 ], [ %n.vec200, %vec.epilog.middle.block205 ] ; 3 uses
  %xtraiter295 = and i64 %i.my, 3                 ; 2 uses
  %lcmp.mod296.not = icmp eq i64 %xtraiter295, 0
  br i1 %lcmp.mod296.not, label %.lr.ph.i.i57.prol.loopexit, label %.lr.ph.i.i57.prol

.lr.ph.i.i57.prol:                                ; preds = %.lr.ph.i.i57.preheader, %.lr.ph.i.i57.prol
  %.026.i.i58.prol = phi i64 [ %i.nn, %.lr.ph.i.i57.prol ], [ %.026.i.i58.ph, %.lr.ph.i.i57.preheader ] ; 3 uses
  %prol.iter297 = phi i64 [ %prol.iter297.next, %.lr.ph.i.i57.prol ], [ 0, %.lr.ph.i.i57.preheader ]
  %i.nk = getelementptr inbounds nuw i8, ptr %.pre.i52, i64 %.026.i.i58.prol
  %i.nl = load i8, ptr %i.nk, align 1, !tbaa !12
  %i.nm = getelementptr inbounds nuw i8, ptr %i.mx, i64 %.026.i.i58.prol
  store i8 %i.nl, ptr %i.nm, align 1, !tbaa !12
  %i.nn = add nuw nsw i64 %.026.i.i58.prol, 1     ; 2 uses
  %prol.iter297.next = add i64 %prol.iter297, 1   ; 2 uses
  %prol.iter297.cmp.not = icmp eq i64 %prol.iter297.next, %xtraiter295
  br i1 %prol.iter297.cmp.not, label %.lr.ph.i.i57.prol.loopexit, label %.lr.ph.i.i57.prol, !llvm.loop !578

.lr.ph.i.i57.prol.loopexit:                       ; preds = %.lr.ph.i.i57.prol, %.lr.ph.i.i57.preheader
  %.026.i.i58.unr = phi i64 [ %.026.i.i58.ph, %.lr.ph.i.i57.preheader ], [ %i.nn, %.lr.ph.i.i57.prol ]
  %i.no = sub nsw i64 %.026.i.i58.ph, %i.my
  %i.np = icmp ugt i64 %i.no, -4
  br i1 %i.np, label %.loopexit.loopexit.i60, label %.lr.ph.i.i57

.lr.ph.i.i57:                                     ; preds = %.lr.ph.i.i57.prol.loopexit, %.lr.ph.i.i57
  %.026.i.i58 = phi i64 [ %i.of, %.lr.ph.i.i57 ], [ %.026.i.i58.unr, %.lr.ph.i.i57.prol.loopexit ] ; 6 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %.pre.i52, i64 %.026.i.i58
  %i.nr = load i8, ptr %i.nq, align 1, !tbaa !12
  %i.ns = getelementptr inbounds nuw i8, ptr %i.mx, i64 %.026.i.i58
  store i8 %i.nr, ptr %i.ns, align 1, !tbaa !12
  %i.nt = add nuw nsw i64 %.026.i.i58, 1          ; 2 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %.pre.i52, i64 %i.nt
  %i.nv = load i8, ptr %i.nu, align 1, !tbaa !12
  %i.nw = getelementptr inbounds nuw i8, ptr %i.mx, i64 %i.nt
  store i8 %i.nv, ptr %i.nw, align 1, !tbaa !12
  %i.nx = add nuw nsw i64 %.026.i.i58, 2          ; 2 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %.pre.i52, i64 %i.nx
  %i.nz = load i8, ptr %i.ny, align 1, !tbaa !12
  %i.oa = getelementptr inbounds nuw i8, ptr %i.mx, i64 %i.nx
  store i8 %i.nz, ptr %i.oa, align 1, !tbaa !12
  %i.ob = add nuw nsw i64 %.026.i.i58, 3          ; 2 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %.pre.i52, i64 %i.ob
  %i.od = load i8, ptr %i.oc, align 1, !tbaa !12
  %i.oe = getelementptr inbounds nuw i8, ptr %i.mx, i64 %i.ob
  store i8 %i.od, ptr %i.oe, align 1, !tbaa !12
  %i.of = add nuw nsw i64 %.026.i.i58, 4          ; 2 uses
  %exitcond.not.i.i59.3 = icmp eq i64 %i.of, %i.my
  br i1 %exitcond.not.i.i59.3, label %.loopexit.loopexit.i60, label %.lr.ph.i.i57, !llvm.loop !579

.loopexit.loopexit.i60:                           ; preds = %.lr.ph.i.i57.prol.loopexit, %.lr.ph.i.i57, %vec.epilog.middle.block205, %middle.block192
  %.pre33.pre.i61 = load i32, ptr %i.mh, align 8, !tbaa !136
  br label %.loopexit.i62

.loopexit.i62:                                    ; preds = %.loopexit.loopexit.i60, %bb.ay, %bb.aw
  %.pre33.i63 = phi i32 [ %i.mi, %bb.aw ], [ %i.mi, %bb.ay ], [ %.pre33.pre.i61, %.loopexit.loopexit.i60 ]
  %.018.i.ph.i64 = phi ptr [ %i.mt, %bb.aw ], [ %i.mx, %bb.ay ], [ %i.mx, %.loopexit.loopexit.i60 ] ; 2 uses
  store ptr %.018.i.ph.i64, ptr %1, align 8, !tbaa !137
  store i32 %spec.select.i54, ptr %i.mj, align 4, !tbaa !191
  br label %bb.az

bb.az:                                            ; preds = %.loopexit.i62, %bb.at
  %i.og = phi i32 [ %.pre33.i63, %.loopexit.i62 ], [ %i.mi, %bb.at ] ; 2 uses
  %i.oh = phi ptr [ %.018.i.ph.i64, %.loopexit.i62 ], [ %.pre.i52, %bb.at ]
  %i.oi = add i32 %i.og, 1
  store i32 %i.oi, ptr %i.mh, align 8, !tbaa !136
  %i.oj = zext i32 %i.og to i64
  %i.ok = getelementptr inbounds nuw [32 x i8], ptr %i.oh, i64 %i.oj ; 5 uses
  store i32 2, ptr %i.ok, align 8, !tbaa !196
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 4
  store i32 10, ptr %i.ol, align 4, !tbaa !198
  %i.om = getelementptr inbounds nuw i8, ptr %i.ok, i64 8
  store ptr @.str.4, ptr %i.om, align 8, !tbaa !199
  %i.on = getelementptr inbounds nuw i8, ptr %i.ok, i64 16
  store ptr null, ptr %i.on, align 8, !tbaa !200
  %i.oo = getelementptr inbounds nuw i8, ptr %i.ok, i64 24
  store i64 %i.mg, ptr %i.oo, align 8, !tbaa !201
  %i.op = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 1, ptr %i.op, align 8, !tbaa !133
  br label %tg3__error_push.exit65

tg3__error_push.exit65:                           ; preds = %bb.as, %bb.av, %bb.ax, %bb.az
  br i1 %i.li, label %tg3__error_push.exit, label %bb.ba

bb.ba:                                            ; preds = %tg3__error_push.exit65
  call void @tg3json_value_free(ptr noundef nonnull %9) #20
  br label %tg3__error_push.exit

tg3__error_push.exit:                             ; preds = %bb.y, %bb.ab, %bb.ad, %bb.af, %bb.t, %bb.r, %bb.o, %bb.h, %bb.f, %bb.c, %._crit_edge.i.thread, %bb.v, %bb.x, %bb.w, %bb.j, %bb.aq, %bb.ao, %bb.am, %bb.aj, %tg3__error_push.exit65, %bb.ba, %vector.body, %bb.a, %vector.body174
end_hunk_4
begin_hunk_5_@tg3__json_to_value:tg3__memset.exit

._crit_edge85:                                    ; preds = %._crit_edge85.loopexit, %.preheader
  %.lcssa = phi i32 [ 0, %.preheader ], [ %i.by, %._crit_edge85.loopexit ]
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.bq, ptr %i.bz, align 8, !tbaa !985
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %.lcssa, ptr %i.ca, align 8, !tbaa !986
  br label %tg3__arena_alloc.exit.thread

bb.o:                                             ; preds = %bb.a
  store i32 7, ptr %0, align 8, !tbaa !983
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !12 ; 2 uses
  %.not50 = icmp eq i64 %i.cd, 0
  br i1 %.not50, label %tg3__arena_alloc.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ce = load ptr, ptr %1, align 8, !tbaa !207   ; 9 uses
  %i.cf = mul i64 %i.cd, 96                       ; 6 uses
  %i.cg = icmp eq ptr %i.ce, null
  %i.ch = icmp eq i64 %i.cf, 0
  %or.cond.i57 = or i1 %i.ch, %i.cg
  br i1 %or.cond.i57, label %tg3__arena_alloc.exit.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ce, i64 32
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !227 ; 3 uses
  %.not.i58 = icmp ne i64 %i.cj, 0                ; 2 uses
  %i.ck = icmp ugt i64 %i.cf, %i.cj
  %or.cond28.i59 = and i1 %.not.i58, %i.ck
  br i1 %or.cond28.i59, label %tg3__arena_alloc.exit.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ce, i64 8 ; 3 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !241 ; 5 uses
  %.not26.i60 = icmp eq ptr %i.cm, null
  br i1 %.not26.i60, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !242 ; 3 uses
  %i.cp = add i64 %i.co, %i.cf
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !244
  %i.cs = icmp ugt i64 %i.cp, %i.cr
  br i1 %i.cs, label %bb.t, label %tg3__arena_alloc.exit72

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ce, i64 40
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !223
  %spec.select.i.i66 = tail call i64 @llvm.umax.i64(i64 %i.cu, i64 range(i64 0, -7) %i.cf) ; 3 uses
  %i.cv = icmp ugt i64 %spec.select.i.i66, %i.cj
  %or.cond.i.i67 = select i1 %.not.i58, i1 %i.cv, i1 false
  br i1 %or.cond.i.i67, label %tg3__arena_alloc.exit.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ce, i64 16 ; 3 uses
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !245
  %i.cy = add i64 %spec.select.i.i66, 32          ; 3 uses
  %i.cz = add i64 %i.cx, %i.cy
  %i.da = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  %i.db = load i64, ptr %i.da, align 8, !tbaa !226
  %i.dc = icmp ugt i64 %i.cz, %i.db
  br i1 %i.dc, label %tg3__arena_alloc.exit.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ce, i64 48
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !246
  %i.df = getelementptr inbounds nuw i8, ptr %i.ce, i64 72
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !247
  %i.dh = tail call ptr %i.de(i64 noundef %i.cy, ptr noundef %i.dg) #21, !inline_history !248 ; 8 uses
  %.not37.i.i68 = icmp eq ptr %i.dh, null
  br i1 %.not37.i.i68, label %tg3__arena_alloc.exit.thread, label %tg3__arena_alloc.exit72.thread

tg3__arena_alloc.exit72.thread:                   ; preds = %bb.v
  store ptr null, ptr %i.dh, align 8, !tbaa !249
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 32 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  store ptr %i.di, ptr %i.dj, align 8, !tbaa !250
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dh, i64 24
  store i64 %spec.select.i.i66, ptr %i.dk, align 8, !tbaa !244
  %i.dl = load i64, ptr %i.cw, align 8, !tbaa !245
  %i.dm = add i64 %i.dl, %i.cy
  store i64 %i.dm, ptr %i.cw, align 8, !tbaa !245
  %i.dn = load ptr, ptr %i.cl, align 8, !tbaa !241 ; 2 uses
  %.not38.i.i70 = icmp eq ptr %i.dn, null
  %..i.i71 = select i1 %.not38.i.i70, ptr %i.ce, ptr %i.dn
  store ptr %i.dh, ptr %..i.i71, align 8, !tbaa !251
  store ptr %i.dh, ptr %i.cl, align 8, !tbaa !241
  %i.do = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  store i64 %i.cf, ptr %i.do, align 8, !tbaa !242
  br label %.preheader80

tg3__arena_alloc.exit72:                          ; preds = %bb.s
  %.phi.trans.insert.i62 = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %.pre.i63 = load ptr, ptr %.phi.trans.insert.i62, align 8, !tbaa !250 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %i.dq = getelementptr inbounds nuw i8, ptr %.pre.i63, i64 %i.co
  %i.dr = add i64 %i.co, %i.cf
  store i64 %i.dr, ptr %i.dp, align 8, !tbaa !242
  %.not51 = icmp eq ptr %.pre.i63, null
  br i1 %.not51, label %tg3__arena_alloc.exit.thread, label %.preheader80

.preheader80:                                     ; preds = %tg3__arena_alloc.exit72.thread, %tg3__arena_alloc.exit72
  %i.ds = phi ptr [ %i.di, %tg3__arena_alloc.exit72.thread ], [ %i.dq, %tg3__arena_alloc.exit72 ] ; 2 uses
  %i.dt = load i64, ptr %i.cc, align 8, !tbaa !12
  %.not87 = icmp eq i64 %i.dt, 0
  br i1 %.not87, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader80, %.lr.ph
  %.182 = phi i64 [ %i.ek, %.lr.ph ], [ 0, %.preheader80 ] ; 4 uses
  %i.du = getelementptr inbounds nuw [96 x i8], ptr %i.ds, i64 %.182 ; 3 uses
  %i.dv = load ptr, ptr %1, align 8, !tbaa !207
  %i.dw = load ptr, ptr %i.cb, align 8, !tbaa !12
  %i.dx = getelementptr inbounds nuw [24 x i8], ptr %i.dw, i64 %.182 ; 2 uses
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !51
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !54 ; 2 uses
  %i.eb = trunc i64 %i.ea to i32
  %i.ec = and i64 %i.ea, 4294967295
  %i.ed = tail call fastcc ptr @tg3__arena_strdup(ptr noundef %i.dv, ptr noundef readonly %i.dy, i64 noundef %i.ec) #20 ; 2 uses
  %.not.i73 = icmp eq ptr %i.ed, null
  %i.ee = select i1 %.not.i73, i32 0, i32 %i.eb
  store ptr %i.ed, ptr %i.du, align 8, !tbaa !9
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  store i32 %i.ee, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !43
  %i.ef = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.eg = load ptr, ptr %i.cb, align 8, !tbaa !12
  %i.eh = getelementptr inbounds nuw [24 x i8], ptr %i.eg, i64 %.182
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !55
  call fastcc void @tg3__json_to_value(ptr dead_on_unwind noalias writable align 8 %4, ptr noundef %1, ptr noundef %i.ej) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.ef, ptr noundef nonnull align 8 dereferenceable(80) %4, i64 80, i1 false), !tbaa.struct !952
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %i.ek = add nuw i64 %.182, 1                    ; 2 uses
  %i.el = load i64, ptr %i.cc, align 8, !tbaa !12 ; 2 uses
  %i.em = icmp ult i64 %i.ek, %i.el
  br i1 %i.em, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !987

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.en = trunc i64 %i.el to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader80
  %.lcssa81 = phi i32 [ 0, %.preheader80 ], [ %i.en, %._crit_edge.loopexit ]
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.ds, ptr %i.eo, align 8, !tbaa !988
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %.lcssa81, ptr %i.ep, align 8, !tbaa !989
  br label %tg3__arena_alloc.exit.thread

tg3__arena_alloc.exit.thread:                     ; preds = %bb.v, %bb.t, %bb.u, %bb.p, %bb.q, %bb.n, %bb.l, %bb.m, %bb.h, %bb.i, %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.o, %._crit_edge85, %tg3__arena_alloc.exit, %._crit_edge, %tg3__arena_alloc.exit72, %tg3__memset.exit
  ret void
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none)
define internal fastcc range(i32 0, 2) i32 @tg3__json_set_int(ptr nofree noundef nonnull captures(address_is_null) %0, ptr noundef %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.tg3json_value, align 8      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 4
  store <4 x i8> zeroinitializer, ptr %i.a, align 4, !tbaa !12
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  store <8 x i8> zeroinitializer, ptr %i.b, align 8, !tbaa !12
  store i32 2, ptr %3, align 8, !tbaa !13
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %2, ptr %i.c, align 8, !tbaa !12
  %.not.i.i = icmp eq ptr %1, null
  br i1 %.not.i.i, label %tg3json_object_set_take.exit.thread.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.a, %.preheader.i.i
  %.0.i.i.i = phi ptr [ %i.e, %.preheader.i.i ], [ %1, %bb.a ] ; 3 uses
  %i.d = load i8, ptr %.0.i.i.i, align 1, !tbaa !12
  %.not.i.i.i = icmp eq i8 %i.d, 0
  %i.e = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 1
  br i1 %.not.i.i.i, label %tg3json_object_set_take.exit.i, label %.preheader.i.i, !llvm.loop !68

tg3json_object_set_take.exit.i:                   ; preds = %.preheader.i.i
  %i.f = ptrtoint ptr %.0.i.i.i to i64
  %i.g = ptrtoint ptr %1 to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = call i32 @tg3json_object_set_take_n(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef %i.h, ptr noundef nonnull %3) #20
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %tg3json_object_set_take.exit.thread.i, label %tg3__json_set_take.exit

tg3json_object_set_take.exit.thread.i:            ; preds = %tg3json_object_set_take.exit.i, %bb.a
  call void @tg3json_value_free(ptr noundef nonnull %3) #20
  br label %tg3__json_set_take.exit

tg3__json_set_take.exit:                          ; preds = %tg3json_object_set_take.exit.i, %tg3json_object_set_take.exit.thread.i
  %.0.i = phi i32 [ 0, %tg3json_object_set_take.exit.thread.i ], [ 1, %tg3json_object_set_take.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  ret i32 %.0.i
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none)
define internal fastcc range(i32 0, 2) i32 @tg3__serialize_string_array(ptr nofree noundef nonnull captures(address_is_null) %0, ptr noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.tg3json_value, align 8      ; 14 uses
  %5 = alloca %struct.tg3json_value, align 8      ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.a = icmp eq ptr %2, null
  %i.b = icmp eq i32 %3, 0
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %tg3__json_set_take.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 20
  store <16 x i8> zeroinitializer, ptr %i.c, align 4, !tbaa !12
  store <4 x i8> zeroinitializer, ptr %i.f, align 4, !tbaa !12
  store i32 5, ptr %5, align 8, !tbaa !13
  %test_heap_used.promoted.i = load i64, ptr @test_heap_used, align 8
  %6 = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %7 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 10
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 11
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 21
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 22
  %wide.trip.count.i = zext i32 %3 to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.o, %bb.b
  %indvars.iv.i = phi i64 [ 0, %bb.b ], [ %indvars.iv.next.i, %bb.o ] ; 2 uses
  %i.m = phi i64 [ %test_heap_used.promoted.i, %bb.b ], [ %i.ea, %bb.o ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv.i ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !343  ; 8 uses
  %i.p = ptrtoaddr ptr %i.o to i64
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %bb.o, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.r = load i32, ptr %i.q, align 8, !tbaa !344  ; 4 uses
  %i.s = zext i32 %i.r to i64                     ; 13 uses
  store <4 x i8> zeroinitializer, ptr %6, align 4, !tbaa !12
  store i8 0, ptr %i.g, align 2, !tbaa !12
  store i8 0, ptr %i.h, align 1, !tbaa !12
  store i8 0, ptr %i.i, align 8, !tbaa !12
  store i32 4, ptr %4, align 8, !tbaa !13
  %i.t = and i64 %i.s, 4294967288                 ; 2 uses
  %i.u = add i64 %i.m, 16
  %i.v = add i64 %i.u, %i.t                       ; 6 uses
  %i.w = icmp ugt i64 %i.v, 524288
  br i1 %i.w, label %tg3__json_from_string_array.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = add nuw nsw i64 %i.s, 1
  %i.y = getelementptr inbounds nuw i8, ptr @test_heap, i64 %i.m ; 2 uses
  store i64 %i.x, ptr %i.y, align 8, !tbaa !21
  store i64 %i.v, ptr @test_heap_used, align 8, !tbaa !21
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 8 uses
  %.not11.i.i.i = icmp eq i32 %i.r, 0
  br i1 %.not11.i.i.i, label %.loopexit.i, label %iter.check50

iter.check50:                                     ; preds = %bb.e
  %min.iters.check33 = icmp ult i32 %i.r, 4
  br i1 %min.iters.check33, label %.lr.ph.i.i.i.i.preheader, label %vector.memcheck31

vector.memcheck31:                                ; preds = %iter.check50
  %i.aa = add i64 %i.m, add (i64 ptrtoaddr (ptr @test_heap to i64), i64 8)
  %i.ab = sub i64 %i.p, %i.aa
  %diff.check32 = icmp ugt i64 %i.ab, -32
  br i1 %diff.check32, label %.lr.ph.i.i.i.i.preheader, label %vector.main.loop.iter.check34

vector.main.loop.iter.check34:                    ; preds = %vector.memcheck31
  %min.iters.check35 = icmp ult i32 %i.r, 32
  br i1 %min.iters.check35, label %vec.epilog.ph54, label %vector.ph36

vector.ph36:                                      ; preds = %vector.main.loop.iter.check34
  %i.ac = and i64 %i.s, 28
  %n.vec37 = and i64 %i.s, 4294967264             ; 5 uses
  %i.ad = getelementptr i8, ptr %i.o, i64 %n.vec37
  %i.ae = getelementptr i8, ptr %i.z, i64 %n.vec37
  %i.af = and i64 %i.s, 31
  br label %vector.body38

vector.body38:                                    ; preds = %vector.body38, %vector.ph36
  %index39 = phi i64 [ 0, %vector.ph36 ], [ %index.next43, %vector.body38 ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.o, i64 %index39 ; 2 uses
  %next.gep40 = getelementptr i8, ptr %i.z, i64 %index39 ; 2 uses
  %i.ag = getelementptr i8, ptr %next.gep, i64 16
  %wide.load41 = load <16 x i8>, ptr %next.gep, align 1, !tbaa !12
  %wide.load42 = load <16 x i8>, ptr %i.ag, align 1, !tbaa !12
  %i.ah = getelementptr i8, ptr %next.gep40, i64 16
  store <16 x i8> %wide.load41, ptr %next.gep40, align 1, !tbaa !12
  store <16 x i8> %wide.load42, ptr %i.ah, align 1, !tbaa !12
  %index.next43 = add nuw i64 %index39, 32        ; 2 uses
  %i.ai = icmp eq i64 %index.next43, %n.vec37
  br i1 %i.ai, label %middle.block44, label %vector.body38, !llvm.loop !990

middle.block44:                                   ; preds = %vector.body38
  %cmp.n45 = icmp eq i64 %n.vec37, %i.s
  br i1 %cmp.n45, label %.loopexit.i, label %vec.epilog.iter.check52

vec.epilog.iter.check52:                          ; preds = %middle.block44
  %min.epilog.iters.check53 = icmp eq i64 %i.ac, 0
  br i1 %min.epilog.iters.check53, label %.lr.ph.i.i.i.i.preheader, label %vec.epilog.ph54, !prof !36

vec.epilog.ph54:                                  ; preds = %vector.main.loop.iter.check34, %vec.epilog.iter.check52
  %vec.epilog.resume.val46 = phi i64 [ %n.vec37, %vec.epilog.iter.check52 ], [ 0, %vector.main.loop.iter.check34 ]
  %n.vec55 = and i64 %i.s, 4294967292             ; 4 uses
  %i.aj = getelementptr i8, ptr %i.o, i64 %n.vec55
  %i.ak = getelementptr i8, ptr %i.z, i64 %n.vec55
  %i.al = and i64 %i.s, 3
  br label %vec.epilog.vector.body56

vec.epilog.vector.body56:                         ; preds = %vec.epilog.vector.body56, %vec.epilog.ph54
  %index57 = phi i64 [ %vec.epilog.resume.val46, %vec.epilog.ph54 ], [ %index.next61, %vec.epilog.vector.body56 ] ; 3 uses
  %next.gep58 = getelementptr i8, ptr %i.o, i64 %index57
  %next.gep59 = getelementptr i8, ptr %i.z, i64 %index57
  %wide.load60 = load <4 x i8>, ptr %next.gep58, align 1, !tbaa !12
  store <4 x i8> %wide.load60, ptr %next.gep59, align 1, !tbaa !12
  %index.next61 = add nuw i64 %index57, 4         ; 2 uses
  %i.am = icmp eq i64 %index.next61, %n.vec55
  br i1 %i.am, label %vec.epilog.middle.block62, label %vec.epilog.vector.body56, !llvm.loop !991

vec.epilog.middle.block62:                        ; preds = %vec.epilog.vector.body56
  %cmp.n63 = icmp eq i64 %n.vec55, %i.s
  br i1 %cmp.n63, label %.loopexit.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %vector.memcheck31, %iter.check50, %vec.epilog.iter.check52, %vec.epilog.middle.block62
  %.010.i.i.i.i.ph = phi ptr [ %i.o, %iter.check50 ], [ %i.o, %vector.memcheck31 ], [ %i.ad, %vec.epilog.iter.check52 ], [ %i.aj, %vec.epilog.middle.block62 ] ; 2 uses
  %.059.i.i.i.i.ph = phi ptr [ %i.z, %iter.check50 ], [ %i.z, %vector.memcheck31 ], [ %i.ae, %vec.epilog.iter.check52 ], [ %i.ak, %vec.epilog.middle.block62 ] ; 2 uses
  %.068.i.i.i.i.ph = phi i64 [ %i.s, %iter.check50 ], [ %i.s, %vector.memcheck31 ], [ %i.af, %vec.epilog.iter.check52 ], [ %i.al, %vec.epilog.middle.block62 ] ; 4 uses
  %i.an = add nsw i64 %.068.i.i.i.i.ph, -1
  %xtraiter = and i64 %.068.i.i.i.i.ph, 7         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %.010.i.i.i.i.prol = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.prol ], [ %.010.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %.059.i.i.i.i.prol = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.prol ], [ %.059.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %.068.i.i.i.i.prol = phi i64 [ %i.ao, %.lr.ph.i.i.i.i.prol ], [ %.068.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  %i.ao = add nsw i64 %.068.i.i.i.i.prol, -1      ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.prol, i64 1 ; 2 uses
  %i.aq = load i8, ptr %.010.i.i.i.i.prol, align 1, !tbaa !12
  %i.ar = getelementptr inbounds nuw i8, ptr %.059.i.i.i.i.prol, i64 1 ; 2 uses
  store i8 %i.aq, ptr %.059.i.i.i.i.prol, align 1, !tbaa !12
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !992

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.010.i.i.i.i.unr = phi ptr [ %.010.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ], [ %i.ap, %.lr.ph.i.i.i.i.prol ]
  %.059.i.i.i.i.unr = phi ptr [ %.059.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ], [ %i.ar, %.lr.ph.i.i.i.i.prol ]
  %.068.i.i.i.i.unr = phi i64 [ %.068.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ], [ %i.ao, %.lr.ph.i.i.i.i.prol ]
  %i.as = icmp ult i64 %i.an, 7
  br i1 %i.as, label %.loopexit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.010.i.i.i.i = phi ptr [ %i.bp, %.lr.ph.i.i.i.i ], [ %.010.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 9 uses
  %.059.i.i.i.i = phi ptr [ %i.br, %.lr.ph.i.i.i.i ], [ %.059.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 9 uses
  %.068.i.i.i.i = phi i64 [ %i.bo, %.lr.ph.i.i.i.i ], [ %.068.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %i.at = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 1
  %i.au = load i8, ptr %.010.i.i.i.i, align 1, !tbaa !12
  %i.av = getelementptr inbounds nuw i8, ptr %.059.i.i.i.i, i64 1
  store i8 %i.au, ptr %.059.i.i.i.i, align 1, !tbaa !12
  %i.aw = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 2
  %i.ax = load i8, ptr %i.at, align 1, !tbaa !12
  %i.ay = getelementptr inbounds nuw i8, ptr %.059.i.i.i.i, i64 2
  store i8 %i.ax, ptr %i.av, align 1, !tbaa !12
  %i.az = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 3
  %i.ba = load i8, ptr %i.aw, align 1, !tbaa !12
  %i.bb = getelementptr inbounds nuw i8, ptr %.059.i.i.i.i, i64 3
  store i8 %i.ba, ptr %i.ay, align 1, !tbaa !12
  %i.bc = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 4
  %i.bd = load i8, ptr %i.az, align 1, !tbaa !12
  %i.be = getelementptr inbounds nuw i8, ptr %.059.i.i.i.i, i64 4
  store i8 %i.bd, ptr %i.bb, align 1, !tbaa !12
  %i.bf = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 5
  %i.bg = load i8, ptr %i.bc, align 1, !tbaa !12
  %i.bh = getelementptr inbounds nuw i8, ptr %.059.i.i.i.i, i64 5
  store i8 %i.bg, ptr %i.be, align 1, !tbaa !12
  %i.bi = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 6
  %i.bj = load i8, ptr %i.bf, align 1, !tbaa !12
  %i.bk = getelementptr inbounds nuw i8, ptr %.059.i.i.i.i, i64 6
  store i8 %i.bj, ptr %i.bh, align 1, !tbaa !12
  %i.bl = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 7
  %i.bm = load i8, ptr %i.bi, align 1, !tbaa !12
  %i.bn = getelementptr inbounds nuw i8, ptr %.059.i.i.i.i, i64 7
  store i8 %i.bm, ptr %i.bk, align 1, !tbaa !12
  %i.bo = add nsw i64 %.068.i.i.i.i, -8           ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 8
  %i.bq = load i8, ptr %i.bl, align 1, !tbaa !12
  %i.br = getelementptr inbounds nuw i8, ptr %.059.i.i.i.i, i64 8
  store i8 %i.bq, ptr %i.bn, align 1, !tbaa !12
  %.not.i.i.i.i.7 = icmp eq i64 %i.bo, 0
  br i1 %.not.i.i.i.i.7, label %.loopexit.i, label %.lr.ph.i.i.i.i, !llvm.loop !993

.loopexit.i:                                      ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %middle.block44, %vec.epilog.middle.block62, %bb.e
  %i.bs = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.s
  store i8 0, ptr %i.bs, align 1, !tbaa !12
  store ptr %i.z, ptr %7, align 8, !tbaa !12
  store i64 %i.s, ptr %i.i, align 8, !tbaa !12
  %i.bt = load i32, ptr %5, align 8, !tbaa !13
  %i.bu = icmp eq i32 %i.bt, 5
  br i1 %i.bu, label %bb.f, label %bb.n

bb.f:                                             ; preds = %.loopexit.i
  %i.bv = load i64, ptr %i.e, align 8, !tbaa !12  ; 5 uses
  %i.bw = add i64 %i.bv, 1                        ; 4 uses
  %.not.i.not.i.i = icmp eq i64 %i.bv, -1
  br i1 %.not.i.not.i.i, label %.tg3json__init_value.exit_crit_edge.i.i, label %bb.g

.tg3json__init_value.exit_crit_edge.i.i:          ; preds = %bb.f
  %.pre.i.i = load ptr, ptr %i.d, align 8, !tbaa !12
  br label %tg3__json_push_take.exit.i

bb.g:                                             ; preds = %bb.f
  %.not25.i.i.i = icmp eq i64 %i.bv, 0
  %spec.select.i.i.i = select i1 %.not25.i.i.i, i64 8, i64 %i.bv ; 3 uses
  %i.bx = icmp ult i64 %spec.select.i.i.i, %i.bw
  br i1 %i.bx, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.g, %bb.h
  %.030.i.i.i = phi i64 [ %i.bz, %bb.h ], [ %spec.select.i.i.i, %bb.g ] ; 2 uses
  %i.by = icmp slt i64 %.030.i.i.i, 0
  br i1 %i.by, label %._crit_edge.i.i.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i
  %i.bz = shl nuw i64 %.030.i.i.i, 1              ; 3 uses
  %i.ca = icmp ult i64 %i.bz, %i.bw
  br i1 %i.ca, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !70

._crit_edge.i.i.i:                                ; preds = %bb.h, %.lr.ph.i.i.i, %bb.g
  %.1.i.i.i = phi i64 [ %spec.select.i.i.i, %bb.g ], [ %i.bw, %.lr.ph.i.i.i ], [ %i.bz, %bb.h ] ; 2 uses
  %i.cb = icmp ugt i64 %.1.i.i.i, 768614336404564650
  br i1 %i.cb, label %bb.n, label %bb.i

bb.i:                                             ; preds = %._crit_edge.i.i.i
  %i.cc = load ptr, ptr %i.d, align 8, !tbaa !71  ; 10 uses
  %i.cd = ptrtoaddr ptr %i.cc to i64
  %i.ce = mul nuw i64 %.1.i.i.i, 24               ; 4 uses
  %.not.i.i.i23.i = icmp eq ptr %i.cc, null
  %i.cf = add nuw nsw i64 %i.v, 8
  %i.cg = add i64 %i.cf, %i.ce                    ; 4 uses
  %i.ch = icmp ugt i64 %i.cg, 524288              ; 2 uses
  br i1 %.not.i.i.i23.i, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  br i1 %i.ch, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ci = getelementptr inbounds nuw i8, ptr @test_heap, i64 %i.v ; 2 uses
  store i64 %i.ce, ptr %i.ci, align 8, !tbaa !21
  store i64 %i.cg, ptr @test_heap_used, align 8, !tbaa !21
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  br label %.loopexit.i.i.i

bb.l:                                             ; preds = %bb.i
  br i1 %i.ch, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ck = getelementptr inbounds i8, ptr %i.cc, i64 -8
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !21
  %i.cm = getelementptr inbounds nuw i8, ptr @test_heap, i64 %i.v ; 2 uses
  store i64 %i.ce, ptr %i.cm, align 8, !tbaa !21
  store i64 %i.cg, ptr @test_heap_used, align 8, !tbaa !21
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8 ; 12 uses
  %i.co = tail call i64 @llvm.umin.i64(i64 %i.cl, i64 %i.ce) ; 11 uses
  %.not27.i.i.i.i = icmp eq i64 %i.co, 0
  br i1 %.not27.i.i.i.i, label %.loopexit.i.i.i, label %iter.check

iter.check:                                       ; preds = %bb.m
  %min.iters.check = icmp ult i64 %i.co, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i24.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.cp = add i64 %i.m, add (i64 ptrtoaddr (ptr @test_heap to i64), i64 24)
  %i.cq = add i64 %i.cp, %i.t
  %i.cr = sub i64 %i.cd, %i.cq
  %diff.check = icmp ugt i64 %i.cr, -32
  br i1 %diff.check, label %.lr.ph.i.i.i24.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check24 = icmp ult i64 %i.co, 32
  br i1 %min.iters.check24, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.cs = and i64 %i.co, 28
  %n.vec = and i64 %i.co, -32                     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cc, i64 %index ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %wide.load = load <16 x i8>, ptr %i.ct, align 1, !tbaa !12
  %wide.load25 = load <16 x i8>, ptr %i.cu, align 1, !tbaa !12
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cn, i64 %index ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  store <16 x i8> %wide.load, ptr %i.cv, align 1, !tbaa !12
  store <16 x i8> %wide.load25, ptr %i.cw, align 1, !tbaa !12
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.cx = icmp eq i64 %index.next, %n.vec
  br i1 %i.cx, label %middle.block, label %vector.body, !llvm.loop !994

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.co, %n.vec
  br i1 %cmp.n, label %.loopexit.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.cs, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i24.i.preheader, label %vec.epilog.ph, !prof !36

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec26 = and i64 %i.co, -4                    ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index27 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next29, %vec.epilog.vector.body ] ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cc, i64 %index27
  %wide.load28 = load <4 x i8>, ptr %i.cy, align 1, !tbaa !12
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cn, i64 %index27
  store <4 x i8> %wide.load28, ptr %i.cz, align 1, !tbaa !12
  %index.next29 = add nuw i64 %index27, 4         ; 2 uses
  %i.da = icmp eq i64 %index.next29, %n.vec26
  br i1 %i.da, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !995

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n30 = icmp eq i64 %i.co, %n.vec26
  br i1 %cmp.n30, label %.loopexit.i.i.i, label %.lr.ph.i.i.i24.i.preheader

.lr.ph.i.i.i24.i.preheader:                       ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.026.i.i.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec26, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter67 = and i64 %i.co, 3                  ; 2 uses
  %lcmp.mod68.not = icmp eq i64 %xtraiter67, 0
  br i1 %lcmp.mod68.not, label %.lr.ph.i.i.i24.i.prol.loopexit, label %.lr.ph.i.i.i24.i.prol

.lr.ph.i.i.i24.i.prol:                            ; preds = %.lr.ph.i.i.i24.i.preheader, %.lr.ph.i.i.i24.i.prol
  %.026.i.i.i.i.prol = phi i64 [ %i.de, %.lr.ph.i.i.i24.i.prol ], [ %.026.i.i.i.i.ph, %.lr.ph.i.i.i24.i.preheader ] ; 3 uses
  %prol.iter69 = phi i64 [ %prol.iter69.next, %.lr.ph.i.i.i24.i.prol ], [ 0, %.lr.ph.i.i.i24.i.preheader ]
  %i.db = getelementptr inbounds nuw i8, ptr %i.cc, i64 %.026.i.i.i.i.prol
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !12
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cn, i64 %.026.i.i.i.i.prol
  store i8 %i.dc, ptr %i.dd, align 1, !tbaa !12
  %i.de = add nuw i64 %.026.i.i.i.i.prol, 1       ; 2 uses
  %prol.iter69.next = add i64 %prol.iter69, 1     ; 2 uses
  %prol.iter69.cmp.not = icmp eq i64 %prol.iter69.next, %xtraiter67
  br i1 %prol.iter69.cmp.not, label %.lr.ph.i.i.i24.i.prol.loopexit, label %.lr.ph.i.i.i24.i.prol, !llvm.loop !996

.lr.ph.i.i.i24.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i24.i.prol, %.lr.ph.i.i.i24.i.preheader
  %.026.i.i.i.i.unr = phi i64 [ %.026.i.i.i.i.ph, %.lr.ph.i.i.i24.i.preheader ], [ %i.de, %.lr.ph.i.i.i24.i.prol ]
  %i.df = sub i64 %.026.i.i.i.i.ph, %i.co
  %i.dg = icmp ugt i64 %i.df, -4
  br i1 %i.dg, label %.loopexit.i.i.i, label %.lr.ph.i.i.i24.i

.lr.ph.i.i.i24.i:                                 ; preds = %.lr.ph.i.i.i24.i.prol.loopexit, %.lr.ph.i.i.i24.i
  %.026.i.i.i.i = phi i64 [ %i.dw, %.lr.ph.i.i.i24.i ], [ %.026.i.i.i.i.unr, %.lr.ph.i.i.i24.i.prol.loopexit ] ; 6 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cc, i64 %.026.i.i.i.i
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !12
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cn, i64 %.026.i.i.i.i
  store i8 %i.di, ptr %i.dj, align 1, !tbaa !12
  %i.dk = add nuw i64 %.026.i.i.i.i, 1            ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.dk
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !12
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.dk
  store i8 %i.dm, ptr %i.dn, align 1, !tbaa !12
  %i.do = add nuw i64 %.026.i.i.i.i, 2            ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.do
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !12
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.do
  store i8 %i.dq, ptr %i.dr, align 1, !tbaa !12
  %i.ds = add nuw i64 %.026.i.i.i.i, 3            ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.ds
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !12
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.ds
  store i8 %i.du, ptr %i.dv, align 1, !tbaa !12
  %i.dw = add nuw i64 %.026.i.i.i.i, 4            ; 2 uses
  %exitcond.not.i.i.i.i.3 = icmp eq i64 %i.dw, %i.co
  br i1 %exitcond.not.i.i.i.i.3, label %.loopexit.i.i.i, label %.lr.ph.i.i.i24.i, !llvm.loop !997

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.i.i24.i.prol.loopexit, %.lr.ph.i.i.i24.i, %middle.block, %vec.epilog.middle.block, %bb.m, %bb.k
  %.018.i.ph.i.i.i = phi ptr [ %i.cj, %bb.k ], [ %i.cn, %bb.m ], [ %i.cn, %middle.block ], [ %i.cn, %vec.epilog.middle.block ], [ %i.cn, %.lr.ph.i.i.i24.i ], [ %i.cn, %.lr.ph.i.i.i24.i.prol.loopexit ] ; 2 uses
  store ptr %.018.i.ph.i.i.i, ptr %i.d, align 8, !tbaa !71
  br label %tg3__json_push_take.exit.i

tg3__json_push_take.exit.i:                       ; preds = %.loopexit.i.i.i, %.tg3json__init_value.exit_crit_edge.i.i
  %i.dx = phi i64 [ %i.v, %.tg3json__init_value.exit_crit_edge.i.i ], [ %i.cg, %.loopexit.i.i.i ]
  %i.dy = phi ptr [ %.pre.i.i, %.tg3json__init_value.exit_crit_edge.i.i ], [ %.018.i.ph.i.i.i, %.loopexit.i.i.i ]
  store i64 %i.bw, ptr %i.e, align 8, !tbaa !12
  %i.dz = getelementptr inbounds nuw [24 x i8], ptr %i.dy, i64 %i.bv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dz, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !42
  store <16 x i8> zeroinitializer, ptr %6, align 4, !tbaa !12
  store i8 0, ptr %i.j, align 4, !tbaa !12
  store i8 0, ptr %i.k, align 1, !tbaa !12
  store i8 0, ptr %i.l, align 2, !tbaa !12
  br label %bb.o

bb.n:                                             ; preds = %bb.l, %bb.j, %._crit_edge.i.i.i, %.loopexit.i
  call void @tg3json_value_free(ptr noundef nonnull %4) #20
  br label %tg3__json_from_string_array.exit.thread

tg3__json_from_string_array.exit.thread:          ; preds = %bb.d, %bb.n
  call void @tg3json_value_free(ptr noundef nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %tg3__json_set_take.exit

bb.o:                                             ; preds = %tg3__json_push_take.exit.i, %bb.c
  %i.ea = phi i64 [ %i.m, %bb.c ], [ %i.dx, %tg3__json_push_take.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %tg3__json_from_string_array.exit, label %bb.c, !llvm.loop !998

tg3__json_from_string_array.exit:                 ; preds = %bb.o
  %.not.i.i = icmp eq ptr %1, null
  br i1 %.not.i.i, label %tg3json_object_set_take.exit.thread.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %tg3__json_from_string_array.exit, %.preheader.i.i
  %.0.i.i.i = phi ptr [ %i.ec, %.preheader.i.i ], [ %1, %tg3__json_from_string_array.exit ] ; 3 uses
  %i.eb = load i8, ptr %.0.i.i.i, align 1, !tbaa !12
  %.not.i.i.i = icmp eq i8 %i.eb, 0
  %i.ec = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 1
  br i1 %.not.i.i.i, label %tg3json_object_set_take.exit.i, label %.preheader.i.i, !llvm.loop !68

tg3json_object_set_take.exit.i:                   ; preds = %.preheader.i.i
  %i.ed = ptrtoint ptr %.0.i.i.i to i64
  %i.ee = ptrtoint ptr %1 to i64
  %i.ef = sub i64 %i.ed, %i.ee
  %i.eg = call i32 @tg3json_object_set_take_n(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef %i.ef, ptr noundef nonnull %5) #20
  %.not.i9 = icmp eq i32 %i.eg, 0
  br i1 %.not.i9, label %tg3json_object_set_take.exit.thread.i, label %tg3__json_set_take.exit

tg3json_object_set_take.exit.thread.i:            ; preds = %tg3json_object_set_take.exit.i, %tg3__json_from_string_array.exit
  call void @tg3json_value_free(ptr noundef nonnull %5) #20
  br label %tg3__json_set_take.exit

tg3__json_set_take.exit:                          ; preds = %tg3json_object_set_take.exit.thread.i, %tg3json_object_set_take.exit.i, %tg3__json_from_string_array.exit.thread, %bb.a
  %.0 = phi i32 [ 1, %bb.a ], [ 0, %tg3__json_from_string_array.exit.thread ], [ 0, %tg3json_object_set_take.exit.thread.i ], [ 1, %tg3json_object_set_take.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  ret i32 %.0
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none)
define internal fastcc range(i32 0, 2) i32 @tg3__json_push_take(ptr nofree noundef nonnull captures(address_is_null) %0, ptr nofree noundef nonnull captures(address_is_null) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @tg3json_array_append_take(ptr noundef nonnull %0, ptr noundef nonnull %1) #20
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @tg3json_value_free(ptr noundef nonnull %1) #20
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none)
define internal fastcc range(i32 0, 2) i32 @tg3__json_ensure_object(ptr nofree noundef nonnull captures(address_is_null) %0, ptr nofree noundef nonnull writeonly captures(none) %1) unnamed_addr #0 {
tg3json__strlen_fallback.exit.i:
  %2 = alloca %struct.tg3json_value, align 8      ; 8 uses
  %i.a = load i32, ptr %0, align 8, !tbaa !13
  %.not18.i.i = icmp eq i32 %i.a, 6
  br i1 %.not18.i.i, label %.preheader.i.i, label %tg3json_object_get_mut.exit.thread

.preheader.i.i:                                   ; preds = %tg3json__strlen_fallback.exit.i
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !12   ; 2 uses
  %.not27.i.i = icmp eq i64 %i.c, 0
  br i1 %.not27.i.i, label %tg3json_object_get_mut.exit.thread, label %.lr.ph.split.i.i.preheader

.lr.ph.split.i.i.preheader:                       ; preds = %.preheader.i.i
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !12   ; 2 uses
  br label %.lr.ph.split.i.i

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.split.i.i.preheader, %tg3json__memcmp_fallback.exit.i.i
  %.01425.i.i = phi i64 [ %i.ad, %tg3json__memcmp_fallback.exit.i.i ], [ 0, %.lr.ph.split.i.i.preheader ] ; 3 uses
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %.01425.i.i ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !54
  %i.i = icmp eq i64 %i.h, 10
  br i1 %i.i, label %.lr.ph.i.preheader.i.i, label %tg3json__memcmp_fallback.exit.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %.lr.ph.split.i.i
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !51   ; 10 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !12
  %.not14.i.i.i = icmp eq i8 %i.k, 101
  br i1 %.not14.i.i.i, label %.lr.ph.i.i.i.1, label %tg3json__memcmp_fallback.exit.i.i

.lr.ph.i.i.i.1:                                   ; preds = %.lr.ph.i.preheader.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.m = load i8, ptr %i.l, align 1, !tbaa !12
  %.not14.i.i.i.1 = icmp eq i8 %i.m, 120
  br i1 %.not14.i.i.i.1, label %.lr.ph.i.i.i.2, label %tg3json__memcmp_fallback.exit.i.i

.lr.ph.i.i.i.2:                                   ; preds = %.lr.ph.i.i.i.1
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  %i.o = load i8, ptr %i.n, align 1, !tbaa !12
  %.not14.i.i.i.2 = icmp eq i8 %i.o, 116
  br i1 %.not14.i.i.i.2, label %.lr.ph.i.i.i.3, label %tg3json__memcmp_fallback.exit.i.i

.lr.ph.i.i.i.3:                                   ; preds = %.lr.ph.i.i.i.2
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 3
  %i.q = load i8, ptr %i.p, align 1, !tbaa !12
  %.not14.i.i.i.3 = icmp eq i8 %i.q, 101
  br i1 %.not14.i.i.i.3, label %.lr.ph.i.i.i.4, label %tg3json__memcmp_fallback.exit.i.i

.lr.ph.i.i.i.4:                                   ; preds = %.lr.ph.i.i.i.3
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.s = load i8, ptr %i.r, align 1, !tbaa !12
  %.not14.i.i.i.4 = icmp eq i8 %i.s, 110
  br i1 %.not14.i.i.i.4, label %.lr.ph.i.i.i.5, label %tg3json__memcmp_fallback.exit.i.i

.lr.ph.i.i.i.5:                                   ; preds = %.lr.ph.i.i.i.4
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 5
  %i.u = load i8, ptr %i.t, align 1, !tbaa !12
  %.not14.i.i.i.5 = icmp eq i8 %i.u, 115
  br i1 %.not14.i.i.i.5, label %.lr.ph.i.i.i.6, label %tg3json__memcmp_fallback.exit.i.i

.lr.ph.i.i.i.6:                                   ; preds = %.lr.ph.i.i.i.5
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 6
  %i.w = load i8, ptr %i.v, align 1, !tbaa !12
  %.not14.i.i.i.6 = icmp eq i8 %i.w, 105
  br i1 %.not14.i.i.i.6, label %.lr.ph.i.i.i.7, label %tg3json__memcmp_fallback.exit.i.i

.lr.ph.i.i.i.7:                                   ; preds = %.lr.ph.i.i.i.6
  %i.x = getelementptr inbounds nuw i8, ptr %i.j, i64 7
  %i.y = load i8, ptr %i.x, align 1, !tbaa !12
  %.not14.i.i.i.7 = icmp eq i8 %i.y, 111
  br i1 %.not14.i.i.i.7, label %.lr.ph.i.i.i.8, label %tg3json__memcmp_fallback.exit.i.i

.lr.ph.i.i.i.8:                                   ; preds = %.lr.ph.i.i.i.7
  %i.z = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !12
  %.not14.i.i.i.8 = icmp eq i8 %i.aa, 110
  br i1 %.not14.i.i.i.8, label %.lr.ph.i.i.i.9, label %tg3json__memcmp_fallback.exit.i.i

.lr.ph.i.i.i.9:                                   ; preds = %.lr.ph.i.i.i.8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.j, i64 9
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !12
  %.not14.i.i.i.9 = icmp eq i8 %i.ac, 115
  br i1 %.not14.i.i.i.9, label %tg3json_object_get_mut.exit, label %tg3json__memcmp_fallback.exit.i.i

tg3json__memcmp_fallback.exit.i.i:                ; preds = %.lr.ph.i.preheader.i.i, %.lr.ph.i.i.i.1, %.lr.ph.i.i.i.2, %.lr.ph.i.i.i.3, %.lr.ph.i.i.i.4, %.lr.ph.i.i.i.5, %.lr.ph.i.i.i.6, %.lr.ph.i.i.i.7, %.lr.ph.i.i.i.8, %.lr.ph.i.i.i.9, %.lr.ph.split.i.i
  %i.ad = add nuw i64 %.01425.i.i, 1              ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ad, %i.c
  br i1 %exitcond.not.i.i, label %tg3json_object_get_mut.exit.thread, label %.lr.ph.split.i.i, !llvm.loop !85

tg3json_object_get_mut.exit:                      ; preds = %.lr.ph.i.i.i.9
  %i.ae = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %.01425.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !55 ; 3 uses
  %.not = icmp eq ptr %i.ag, null
  br i1 %.not, label %tg3json_object_get_mut.exit.thread, label %bb.a

bb.a:                                             ; preds = %tg3json_object_get_mut.exit
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !13
  %.not21 = icmp eq i32 %i.ah, 6
  br i1 %.not21, label %bb.b, label %tg3json_object_get_mut.exit52.thread

bb.b:                                             ; preds = %bb.a
  store ptr %i.ag, ptr %1, align 8, !tbaa !656
  br label %tg3json_object_get_mut.exit52.thread

tg3json_object_get_mut.exit.thread:               ; preds = %tg3json__memcmp_fallback.exit.i.i, %.preheader.i.i, %tg3json__strlen_fallback.exit.i, %tg3json_object_get_mut.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 20
  store <16 x i8> zeroinitializer, ptr %i.ai, align 4, !tbaa !12
  store <4 x i8> zeroinitializer, ptr %i.aj, align 4, !tbaa !12
  store i32 6, ptr %2, align 8, !tbaa !13
  %i.ak = call i32 @tg3json_object_set_take_n(ptr noundef nonnull %0, ptr noundef nonnull @.str.50, i64 noundef 10, ptr noundef nonnull %2) #20
  %.not.i = icmp eq i32 %i.ak, 0
  br i1 %.not.i, label %tg3__json_set_take.exit.thread, label %tg3json__strlen_fallback.exit.i29

tg3__json_set_take.exit.thread:                   ; preds = %tg3json_object_get_mut.exit.thread
  call void @tg3json_value_free(ptr noundef nonnull %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %tg3json_object_get_mut.exit52.thread

tg3json__strlen_fallback.exit.i29:                ; preds = %tg3json_object_get_mut.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  %i.al = load i32, ptr %0, align 8, !tbaa !13
  %.not18.i.i30 = icmp eq i32 %i.al, 6
  br i1 %.not18.i.i30, label %.preheader.i.i32, label %tg3json_object_get_mut.exit52.thread

.preheader.i.i32:                                 ; preds = %tg3json__strlen_fallback.exit.i29
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.an = load i64, ptr %i.am, align 8, !tbaa !12 ; 2 uses
  %.not27.i.i33 = icmp eq i64 %i.an, 0
end_hunk_5
