Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tinygltf/original/tester_v3_freestanding?download=true
inline.NumInlined: 906
inline.NumDeleted: 109
loop-unroll.NumCompletelyUnrolled: 183
loop-unroll.NumRuntimeUnrolled: 103
loop-unroll.NumUnrolled: 287
begin_hunk_0_@tg3_parse:bb.a
  %i.ea = load i64, ptr @test_heap_used, align 8, !tbaa !21 ; 4 uses
  %i.eb = add i64 %i.ea, %i.dz                    ; 3 uses
  %i.ec = icmp ugt i64 %i.eb, 524288              ; 2 uses
  br i1 %.not.i.i45, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  br i1 %i.ec, label %tg3__error_push.exit55, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ed = getelementptr inbounds nuw i8, ptr @test_heap, i64 %i.ea ; 2 uses
  store i64 %i.dy, ptr %i.ed, align 8, !tbaa !21
  store i64 %i.eb, ptr @test_heap_used, align 8, !tbaa !21
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  br label %.loopexit.i52

bb.r:                                             ; preds = %bb.o
  br i1 %i.ec, label %tg3__error_push.exit55, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ef = getelementptr inbounds i8, ptr %.pre.i42, i64 -8
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !21
  %i.eh = getelementptr inbounds nuw i8, ptr @test_heap, i64 %i.ea ; 2 uses
  store i64 %i.dy, ptr %i.eh, align 8, !tbaa !21
  store i64 %i.eb, ptr @test_heap_used, align 8, !tbaa !21
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 8 ; 9 uses
  %i.ej = call i64 @llvm.umin.i64(i64 %i.eg, i64 %i.dy) ; 11 uses
  %.not27.i.i46 = icmp eq i64 %i.ej, 0
  br i1 %.not27.i.i46, label %.loopexit.i52, label %iter.check126

iter.check126:                                    ; preds = %bb.s
  %min.iters.check = icmp samesign ult i64 %i.ej, 4
  br i1 %min.iters.check, label %.lr.ph.i.i47.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check126
  %i.ek = add i64 %i.ea, add (i64 ptrtoaddr (ptr @test_heap to i64), i64 8)
  %i.el = sub i64 %.pre.i42116, %i.ek
  %diff.check = icmp ugt i64 %i.el, -32
  br i1 %diff.check, label %.lr.ph.i.i47.preheader, label %vector.main.loop.iter.check117

vector.main.loop.iter.check117:                   ; preds = %vector.memcheck
  %min.iters.check118 = icmp samesign ult i64 %i.ej, 32
  br i1 %min.iters.check118, label %vec.epilog.ph129, label %vector.ph119

vector.ph119:                                     ; preds = %vector.main.loop.iter.check117
  %i.em = and i64 %i.ej, 28
  %n.vec = and i64 %i.ej, 137438953440            ; 4 uses
  br label %vector.body120

vector.body120:                                   ; preds = %vector.body120, %vector.ph119
  %index121 = phi i64 [ 0, %vector.ph119 ], [ %index.next123, %vector.body120 ] ; 3 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.pre.i42, i64 %index121 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  %wide.load = load <16 x i8>, ptr %i.en, align 1, !tbaa !12
  %wide.load122 = load <16 x i8>, ptr %i.eo, align 1, !tbaa !12
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ei, i64 %index121 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  store <16 x i8> %wide.load, ptr %i.ep, align 1, !tbaa !12
  store <16 x i8> %wide.load122, ptr %i.eq, align 1, !tbaa !12
  %index.next123 = add nuw i64 %index121, 32      ; 2 uses
  %i.er = icmp eq i64 %index.next123, %n.vec
  br i1 %i.er, label %middle.block124, label %vector.body120, !llvm.loop !215

middle.block124:                                  ; preds = %vector.body120
  %cmp.n = icmp eq i64 %i.ej, %n.vec
  br i1 %cmp.n, label %.loopexit.loopexit.i50, label %vec.epilog.iter.check128

vec.epilog.iter.check128:                         ; preds = %middle.block124
  %min.epilog.iters.check = icmp eq i64 %i.em, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i47.preheader, label %vec.epilog.ph129, !prof !36

vec.epilog.ph129:                                 ; preds = %vector.main.loop.iter.check117, %vec.epilog.iter.check128
  %vec.epilog.resume.val125 = phi i64 [ %n.vec, %vec.epilog.iter.check128 ], [ 0, %vector.main.loop.iter.check117 ]
  %n.vec130 = and i64 %i.ej, 137438953468         ; 3 uses
  br label %vec.epilog.vector.body131

vec.epilog.vector.body131:                        ; preds = %vec.epilog.vector.body131, %vec.epilog.ph129
  %index132 = phi i64 [ %vec.epilog.resume.val125, %vec.epilog.ph129 ], [ %index.next134, %vec.epilog.vector.body131 ] ; 3 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.pre.i42, i64 %index132
  %wide.load133 = load <4 x i8>, ptr %i.es, align 1, !tbaa !12
  %i.et = getelementptr inbounds nuw i8, ptr %i.ei, i64 %index132
  store <4 x i8> %wide.load133, ptr %i.et, align 1, !tbaa !12
  %index.next134 = add nuw i64 %index132, 4       ; 2 uses
  %i.eu = icmp eq i64 %index.next134, %n.vec130
  br i1 %i.eu, label %vec.epilog.middle.block135, label %vec.epilog.vector.body131, !llvm.loop !216

vec.epilog.middle.block135:                       ; preds = %vec.epilog.vector.body131
  %cmp.n136 = icmp eq i64 %i.ej, %n.vec130
  br i1 %cmp.n136, label %.loopexit.loopexit.i50, label %.lr.ph.i.i47.preheader

.lr.ph.i.i47.preheader:                           ; preds = %vector.memcheck, %iter.check126, %vec.epilog.iter.check128, %vec.epilog.middle.block135
  %.026.i.i48.ph = phi i64 [ 0, %iter.check126 ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check128 ], [ %n.vec130, %vec.epilog.middle.block135 ] ; 3 uses
  %xtraiter = and i64 %i.ej, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i47.prol.loopexit, label %.lr.ph.i.i47.prol

.lr.ph.i.i47.prol:                                ; preds = %.lr.ph.i.i47.preheader, %.lr.ph.i.i47.prol
  %.026.i.i48.prol = phi i64 [ %i.ey, %.lr.ph.i.i47.prol ], [ %.026.i.i48.ph, %.lr.ph.i.i47.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i47.prol ], [ 0, %.lr.ph.i.i47.preheader ]
  %i.ev = getelementptr inbounds nuw i8, ptr %.pre.i42, i64 %.026.i.i48.prol
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !12
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ei, i64 %.026.i.i48.prol
  store i8 %i.ew, ptr %i.ex, align 1, !tbaa !12
  %i.ey = add nuw nsw i64 %.026.i.i48.prol, 1     ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i47.prol.loopexit, label %.lr.ph.i.i47.prol, !llvm.loop !217

.lr.ph.i.i47.prol.loopexit:                       ; preds = %.lr.ph.i.i47.prol, %.lr.ph.i.i47.preheader
  %.026.i.i48.unr = phi i64 [ %.026.i.i48.ph, %.lr.ph.i.i47.preheader ], [ %i.ey, %.lr.ph.i.i47.prol ]
  %i.ez = sub nsw i64 %.026.i.i48.ph, %i.ej
  %i.fa = icmp ugt i64 %i.ez, -4
  br i1 %i.fa, label %.loopexit.loopexit.i50, label %.lr.ph.i.i47

.lr.ph.i.i47:                                     ; preds = %.lr.ph.i.i47.prol.loopexit, %.lr.ph.i.i47
  %.026.i.i48 = phi i64 [ %i.fq, %.lr.ph.i.i47 ], [ %.026.i.i48.unr, %.lr.ph.i.i47.prol.loopexit ] ; 6 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.pre.i42, i64 %.026.i.i48
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !12
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ei, i64 %.026.i.i48
  store i8 %i.fc, ptr %i.fd, align 1, !tbaa !12
  %i.fe = add nuw nsw i64 %.026.i.i48, 1          ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.pre.i42, i64 %i.fe
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !12
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.fe
  store i8 %i.fg, ptr %i.fh, align 1, !tbaa !12
  %i.fi = add nuw nsw i64 %.026.i.i48, 2          ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %.pre.i42, i64 %i.fi
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !12
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.fi
  store i8 %i.fk, ptr %i.fl, align 1, !tbaa !12
  %i.fm = add nuw nsw i64 %.026.i.i48, 3          ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.pre.i42, i64 %i.fm
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !12
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.fm
  store i8 %i.fo, ptr %i.fp, align 1, !tbaa !12
  %i.fq = add nuw nsw i64 %.026.i.i48, 4          ; 2 uses
  %exitcond.not.i.i49.3 = icmp eq i64 %i.fq, %i.ej
  br i1 %exitcond.not.i.i49.3, label %.loopexit.loopexit.i50, label %.lr.ph.i.i47, !llvm.loop !218

.loopexit.loopexit.i50:                           ; preds = %.lr.ph.i.i47.prol.loopexit, %.lr.ph.i.i47, %vec.epilog.middle.block135, %middle.block124
  %.pre33.pre.i51 = load i32, ptr %i.ds, align 8, !tbaa !136
  br label %.loopexit.i52

.loopexit.i52:                                    ; preds = %.loopexit.loopexit.i50, %bb.s, %bb.q
  %.pre33.i53 = phi i32 [ %i.dt, %bb.q ], [ %i.dt, %bb.s ], [ %.pre33.pre.i51, %.loopexit.loopexit.i50 ]
  %.018.i.ph.i54 = phi ptr [ %i.ee, %bb.q ], [ %i.ei, %bb.s ], [ %i.ei, %.loopexit.loopexit.i50 ] ; 2 uses
  store ptr %.018.i.ph.i54, ptr %1, align 8, !tbaa !137
  store i32 %spec.select.i44, ptr %i.du, align 4, !tbaa !191
  br label %bb.t

bb.t:                                             ; preds = %.loopexit.i52, %bb.n
  %i.fr = phi i32 [ %.pre33.i53, %.loopexit.i52 ], [ %i.dt, %bb.n ] ; 2 uses
  %i.fs = phi ptr [ %.018.i.ph.i54, %.loopexit.i52 ], [ %.pre.i42, %bb.n ]
  %i.ft = add i32 %i.fr, 1
  store i32 %i.ft, ptr %i.ds, align 8, !tbaa !136
  %i.fu = zext i32 %i.fr to i64
  %i.fv = getelementptr inbounds nuw [32 x i8], ptr %i.fs, i64 %i.fu ; 5 uses
  store i32 2, ptr %i.fv, align 8, !tbaa !196
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 4
  store i32 10, ptr %i.fw, align 4, !tbaa !198
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  store ptr @.str.3, ptr %i.fx, align 8, !tbaa !199
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fv, i64 16
  store ptr null, ptr %i.fy, align 8, !tbaa !200
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fv, i64 24
  store i64 %i.dr, ptr %i.fz, align 8, !tbaa !201
  %i.ga = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 1, ptr %i.ga, align 8, !tbaa !133
  br label %tg3__error_push.exit55

tg3__error_push.exit55:                           ; preds = %bb.m, %bb.p, %bb.r, %bb.t
  br i1 %i.cw, label %tg3__error_push.exit, label %bb.u

bb.u:                                             ; preds = %tg3__error_push.exit55
  call void @tg3json_value_free(ptr noundef nonnull %9) #20
  br label %tg3__error_push.exit

tg3__error_push.exit:                             ; preds = %bb.k, %bb.i, %bb.g, %bb.d, %tg3__error_push.exit55, %bb.u, %vector.body, %bb.a, %vector.body111
  %.025 = phi i32 [ 10, %vector.body ], [ %i.dm, %vector.body111 ], [ 10, %tg3__error_push.exit55 ], [ 10, %bb.a ], [ 10, %bb.u ], [ 50, %bb.d ], [ 50, %bb.g ], [ 50, %bb.i ], [ 50, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  ret i32 %.025
}

; Function Attrs: nounwind
define internal fastcc ptr @tg3__arena_create(ptr nofree noundef readonly captures(address_is_null) %0) unnamed_addr #9 {
bb.a:
  %.not = icmp eq ptr %0, null                    ; 2 uses
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !219  ; 2 uses
  %.not33 = icmp eq ptr %i.b, null
  br i1 %.not33, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !71
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !71
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !71
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.8.0 = phi ptr [ %.sroa.8.0.copyload, %bb.c ], [ null, %bb.b ], [ null, %bb.a ] ; 2 uses
  %.sroa.7.0 = phi i64 [ %.sroa.7.0.copyload, %bb.c ], [ ptrtoint (ptr @tg3__default_free to i64), %bb.b ], [ ptrtoint (ptr @tg3__default_free to i64), %bb.a ]
  %.sroa.6.0 = phi i64 [ %.sroa.6.0.copyload, %bb.c ], [ ptrtoint (ptr @tg3__default_realloc to i64), %bb.b ], [ ptrtoint (ptr @tg3__default_realloc to i64), %bb.a ]
  %.sroa.0.0 = phi ptr [ %i.b, %bb.c ], [ @tg3__default_alloc, %bb.b ], [ @tg3__default_alloc, %bb.a ] ; 2 uses
  %i.c = tail call ptr %.sroa.0.0(i64 noundef 80, ptr noundef %.sroa.8.0) #21 ; 14 uses
  %.not34 = icmp eq ptr %i.c, null
  br i1 %.not34, label %bb.f, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.d
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store <16 x i8> zeroinitializer, ptr %i.c, align 1, !tbaa !12
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store <16 x i8> zeroinitializer, ptr %i.d, align 1, !tbaa !12
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store <16 x i8> zeroinitializer, ptr %i.e, align 1, !tbaa !12
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 49
  store i8 0, ptr %i.f, align 1, !tbaa !12
  store i8 0, ptr %i.g, align 1, !tbaa !12
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store ptr %.sroa.0.0, ptr %i.h, align 8, !tbaa !71
  %.sroa.6.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store i64 %.sroa.6.0, ptr %.sroa.6.0..sroa_idx8, align 8, !tbaa !71
  %.sroa.7.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store i64 %.sroa.7.0, ptr %.sroa.7.0..sroa_idx10, align 8, !tbaa !71
  %.sroa.8.0..sroa_idx12 = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  store ptr %.sroa.8.0, ptr %.sroa.8.0..sroa_idx12, align 8, !tbaa !71
  br i1 %.not, label %.thread, label %bb.e

bb.e:                                             ; preds = %.preheader.preheader
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load i32, ptr %i.i, align 8, !tbaa !220  ; 2 uses
  %.not35 = icmp eq i32 %i.j, 0
  %narrow = select i1 %.not35, i32 262144, i32 %i.j
  %spec.select = zext i32 %narrow to i64
  %i.k = load i64, ptr %0, align 8, !tbaa !221    ; 2 uses
  %.not36 = icmp eq i64 %i.k, 0
  %spec.select38 = select i1 %.not36, i64 1073741824, i64 %i.k
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !222
  br label %.thread

.thread:                                          ; preds = %.preheader.preheader, %bb.e
  %spec.select.sink = phi i64 [ %spec.select, %bb.e ], [ 262144, %.preheader.preheader ]
  %spec.select38.sink = phi i64 [ %spec.select38, %bb.e ], [ 1073741824, %.preheader.preheader ]
  %i.n = phi i64 [ %i.m, %bb.e ], [ 0, %.preheader.preheader ]
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i64 %spec.select.sink, ptr %i.o, align 8, !tbaa !223
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 %spec.select38.sink, ptr %i.p, align 8, !tbaa !226
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i64 %i.n, ptr %i.q, align 8, !tbaa !227
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %.thread
  ret ptr %i.c
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none)
define internal fastcc void @tg3__error_push(ptr nofree noundef captures(address_is_null) %0, i32 noundef range(i32 1, 62) %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) unnamed_addr #3 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %test_realloc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !136  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !191  ; 3 uses
  %.not27.a = icmp ult i32 %i.b, %i.d
  %.pre = load ptr, ptr %0, align 8, !tbaa !137   ; 11 uses
  %.pre1 = ptrtoaddr ptr %.pre to i64
  br i1 %.not27.a, label %bb.h, label %bb.c

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
end_hunk_0
begin_hunk_1_@tg3__parse_from_json:tg3json__strlen_fallback.exit.i
  %i.blg = load ptr, ptr %i.blf, align 8, !tbaa !12
  br label %.lr.ph.split.i.i.i.i.i1154

.lr.ph.split.i.i.i.i.i1154:                       ; preds = %tg3json__memcmp_fallback.exit.i.i.i.i.i1156, %.lr.ph.split.i.i.i.preheader.i.i1153
  %.01425.i.i.i.i.i1155 = phi i64 [ %i.bmf, %tg3json__memcmp_fallback.exit.i.i.i.i.i1156 ], [ 0, %.lr.ph.split.i.i.i.preheader.i.i1153 ] ; 2 uses
  %i.blh = getelementptr inbounds nuw [24 x i8], ptr %i.blg, i64 %.01425.i.i.i.i.i1155 ; 3 uses
  %i.bli = getelementptr inbounds nuw i8, ptr %i.blh, i64 8
  %i.blj = load i64, ptr %i.bli, align 8, !tbaa !54
  %i.blk = icmp eq i64 %i.blj, 10
  br i1 %i.blk, label %.lr.ph.i.preheader.i.i.i.i.i1175, label %tg3json__memcmp_fallback.exit.i.i.i.i.i1156

.lr.ph.i.preheader.i.i.i.i.i1175:                 ; preds = %.lr.ph.split.i.i.i.i.i1154
  %i.bll = load ptr, ptr %i.blh, align 8, !tbaa !51 ; 10 uses
  %i.blm = load i8, ptr %i.bll, align 1, !tbaa !12
  %.not14.i.i.i.i.i.i1176 = icmp eq i8 %i.blm, 97
  br i1 %.not14.i.i.i.i.i.i1176, label %.lr.ph.i.i.i.i.1.i.i1177, label %tg3json__memcmp_fallback.exit.i.i.i.i.i1156

.lr.ph.i.i.i.i.1.i.i1177:                         ; preds = %.lr.ph.i.preheader.i.i.i.i.i1175
  %i.bln = getelementptr inbounds nuw i8, ptr %i.bll, i64 1
  %i.blo = load i8, ptr %i.bln, align 1, !tbaa !12
  %.not14.i.i.i.i.1.i.i1178 = icmp eq i8 %i.blo, 116
  br i1 %.not14.i.i.i.i.1.i.i1178, label %.lr.ph.i.i.i.i.2.i.i1179, label %tg3json__memcmp_fallback.exit.i.i.i.i.i1156

.lr.ph.i.i.i.i.2.i.i1179:                         ; preds = %.lr.ph.i.i.i.i.1.i.i1177
  %i.blp = getelementptr inbounds nuw i8, ptr %i.bll, i64 2
  %i.blq = load i8, ptr %i.blp, align 1, !tbaa !12
  %.not14.i.i.i.i.2.i.i1180 = icmp eq i8 %i.blq, 116
  br i1 %.not14.i.i.i.i.2.i.i1180, label %.lr.ph.i.i.i.i.3.i.i1181, label %tg3json__memcmp_fallback.exit.i.i.i.i.i1156

.lr.ph.i.i.i.i.3.i.i1181:                         ; preds = %.lr.ph.i.i.i.i.2.i.i1179
  %i.blr = getelementptr inbounds nuw i8, ptr %i.bll, i64 3
  %i.bls = load i8, ptr %i.blr, align 1, !tbaa !12
  %.not14.i.i.i.i.3.i.i1182 = icmp eq i8 %i.bls, 114
  br i1 %.not14.i.i.i.i.3.i.i1182, label %.lr.ph.i.i.i.i.4.i.i1183, label %tg3json__memcmp_fallback.exit.i.i.i.i.i1156

.lr.ph.i.i.i.i.4.i.i1183:                         ; preds = %.lr.ph.i.i.i.i.3.i.i1181
  %i.blt = getelementptr inbounds nuw i8, ptr %i.bll, i64 4
  %i.blu = load i8, ptr %i.blt, align 1, !tbaa !12
  %.not14.i.i.i.i.4.i.i1184 = icmp eq i8 %i.blu, 105
  br i1 %.not14.i.i.i.i.4.i.i1184, label %.lr.ph.i.i.i.i.5.i.i1185, label %tg3json__memcmp_fallback.exit.i.i.i.i.i1156

.lr.ph.i.i.i.i.5.i.i1185:                         ; preds = %.lr.ph.i.i.i.i.4.i.i1183
  %i.blv = getelementptr inbounds nuw i8, ptr %i.bll, i64 5
  %i.blw = load i8, ptr %i.blv, align 1, !tbaa !12
  %.not14.i.i.i.i.5.i.i1186 = icmp eq i8 %i.blw, 98
  br i1 %.not14.i.i.i.i.5.i.i1186, label %.lr.ph.i.i.i.i.6.i.i, label %tg3json__memcmp_fallback.exit.i.i.i.i.i1156

.lr.ph.i.i.i.i.6.i.i:                             ; preds = %.lr.ph.i.i.i.i.5.i.i1185
  %i.blx = getelementptr inbounds nuw i8, ptr %i.bll, i64 6
  %i.bly = load i8, ptr %i.blx, align 1, !tbaa !12
  %.not14.i.i.i.i.6.i.i = icmp eq i8 %i.bly, 117
  br i1 %.not14.i.i.i.i.6.i.i, label %.lr.ph.i.i.i.i.7.i.i, label %tg3json__memcmp_fallback.exit.i.i.i.i.i1156

.lr.ph.i.i.i.i.7.i.i:                             ; preds = %.lr.ph.i.i.i.i.6.i.i
  %i.blz = getelementptr inbounds nuw i8, ptr %i.bll, i64 7
  %i.bma = load i8, ptr %i.blz, align 1, !tbaa !12
  %.not14.i.i.i.i.7.i.i = icmp eq i8 %i.bma, 116
  br i1 %.not14.i.i.i.i.7.i.i, label %.lr.ph.i.i.i.i.8.i.i, label %tg3json__memcmp_fallback.exit.i.i.i.i.i1156

.lr.ph.i.i.i.i.8.i.i:                             ; preds = %.lr.ph.i.i.i.i.7.i.i
  %i.bmb = getelementptr inbounds nuw i8, ptr %i.bll, i64 8
  %i.bmc = load i8, ptr %i.bmb, align 1, !tbaa !12
  %.not14.i.i.i.i.8.i.i = icmp eq i8 %i.bmc, 101
  br i1 %.not14.i.i.i.i.8.i.i, label %.lr.ph.i.i.i.i.9.i.i, label %tg3json__memcmp_fallback.exit.i.i.i.i.i1156

.lr.ph.i.i.i.i.9.i.i:                             ; preds = %.lr.ph.i.i.i.i.8.i.i
  %i.bmd = getelementptr inbounds nuw i8, ptr %i.bll, i64 9
  %i.bme = load i8, ptr %i.bmd, align 1, !tbaa !12
  %.not14.i.i.i.i.9.i.i = icmp eq i8 %i.bme, 115
  br i1 %.not14.i.i.i.i.9.i.i, label %tg3__json_get.exit.i.i1187, label %tg3json__memcmp_fallback.exit.i.i.i.i.i1156

tg3json__memcmp_fallback.exit.i.i.i.i.i1156:      ; preds = %.lr.ph.i.i.i.i.9.i.i, %.lr.ph.i.i.i.i.8.i.i, %.lr.ph.i.i.i.i.7.i.i, %.lr.ph.i.i.i.i.6.i.i, %.lr.ph.i.i.i.i.5.i.i1185, %.lr.ph.i.i.i.i.4.i.i1183, %.lr.ph.i.i.i.i.3.i.i1181, %.lr.ph.i.i.i.i.2.i.i1179, %.lr.ph.i.i.i.i.1.i.i1177, %.lr.ph.i.preheader.i.i.i.i.i1175, %.lr.ph.split.i.i.i.i.i1154
  %i.bmf = add nuw i64 %.01425.i.i.i.i.i1155, 1   ; 2 uses
  %exitcond.not.i.i.i.i.i1157 = icmp eq i64 %i.bmf, %i.ble
  br i1 %exitcond.not.i.i.i.i.i1157, label %tg3__json_is_object.exit.thread.thread.i.i, label %.lr.ph.split.i.i.i.i.i1154, !llvm.loop !83

tg3__json_get.exit.i.i1187:                       ; preds = %.lr.ph.i.i.i.i.9.i.i
  %i.bmg = getelementptr inbounds nuw i8, ptr %i.blh, i64 16
  %i.bmh = load ptr, ptr %i.bmg, align 8, !tbaa !55 ; 4 uses
  %.not.i126.i.i = icmp eq ptr %i.bmh, null
  br i1 %.not.i126.i.i, label %tg3__json_is_object.exit.thread.thread.i.i, label %tg3__json_is_object.exit.i.i1188

tg3__json_is_object.exit.i.i1188:                 ; preds = %tg3__json_get.exit.i.i1187
  %i.bmi = load i32, ptr %i.bmh, align 8, !tbaa !13
  %.not.i42.i = icmp eq i32 %i.bmi, 6
  br i1 %.not.i42.i, label %tg3json_object_size.exit.i.i, label %tg3__json_is_object.exit.thread.thread.i.i

tg3json_object_size.exit.i.i:                     ; preds = %tg3__json_is_object.exit.i.i1188
  %i.bmj = getelementptr inbounds nuw i8, ptr %i.bmh, i64 16 ; 2 uses
  %i.bmk = load i64, ptr %i.bmj, align 8, !tbaa !12 ; 4 uses
  %.not115.i.i1189 = icmp eq i64 %i.bmk, 0
  br i1 %.not115.i.i1189, label %tg3__json_is_object.exit.thread.thread.i.i, label %bb.gr

bb.gr:                                            ; preds = %tg3json_object_size.exit.i.i
  %i.bml = load ptr, ptr %0, align 8, !tbaa !207  ; 9 uses
  %i.bmm = mul i64 %i.bmk, 24                     ; 5 uses
  %i.bmn = icmp eq ptr %i.bml, null
  %i.bmo = icmp eq i64 %i.bmm, 0
  %or.cond.i.i43.i = or i1 %i.bmo, %i.bmn
  br i1 %or.cond.i.i43.i, label %tg3__json_is_object.exit.thread.thread.i.i, label %bb.gs

bb.gs:                                            ; preds = %bb.gr
  %i.bmp = getelementptr inbounds nuw i8, ptr %i.bml, i64 32
  %i.bmq = load i64, ptr %i.bmp, align 8, !tbaa !227 ; 3 uses
  %.not.i128.i.i = icmp ne i64 %i.bmq, 0          ; 2 uses
  %i.bmr = icmp ugt i64 %i.bmm, %i.bmq
  %or.cond28.i.i.i = and i1 %.not.i128.i.i, %i.bmr
  br i1 %or.cond28.i.i.i, label %tg3__json_is_object.exit.thread.thread.i.i, label %bb.gt

bb.gt:                                            ; preds = %bb.gs
  %i.bms = getelementptr inbounds nuw i8, ptr %i.bml, i64 8 ; 3 uses
  %i.bmt = load ptr, ptr %i.bms, align 8, !tbaa !241 ; 4 uses
  %.not26.i.i.i = icmp eq ptr %i.bmt, null
  br i1 %.not26.i.i.i, label %bb.gv, label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  %i.bmu = getelementptr inbounds nuw i8, ptr %i.bmt, i64 16 ; 2 uses
  %i.bmv = load i64, ptr %i.bmu, align 8, !tbaa !242 ; 2 uses
  %i.bmw = add i64 %i.bmv, %i.bmm                 ; 2 uses
  %i.bmx = getelementptr inbounds nuw i8, ptr %i.bmt, i64 24
  %i.bmy = load i64, ptr %i.bmx, align 8, !tbaa !244
  %i.bmz = icmp ugt i64 %i.bmw, %i.bmy
  br i1 %i.bmz, label %bb.gv, label %tg3__arena_alloc.exit.i.i

bb.gv:                                            ; preds = %bb.gu, %bb.gt
  %i.bna = getelementptr inbounds nuw i8, ptr %i.bml, i64 40
  %i.bnb = load i64, ptr %i.bna, align 8, !tbaa !223
  %spec.select.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.bnb, i64 range(i64 0, -7) %i.bmm) ; 3 uses
  %i.bnc = icmp ugt i64 %spec.select.i.i.i.i, %i.bmq
  %or.cond.i.i.i.i1193 = select i1 %.not.i128.i.i, i1 %i.bnc, i1 false
  br i1 %or.cond.i.i.i.i1193, label %tg3__json_is_object.exit.thread.thread.i.i, label %bb.gw

bb.gw:                                            ; preds = %bb.gv
  %i.bnd = getelementptr inbounds nuw i8, ptr %i.bml, i64 16 ; 3 uses
  %i.bne = load i64, ptr %i.bnd, align 8, !tbaa !245
  %i.bnf = add i64 %spec.select.i.i.i.i, 32       ; 3 uses
  %i.bng = add i64 %i.bne, %i.bnf
  %i.bnh = getelementptr inbounds nuw i8, ptr %i.bml, i64 24
  %i.bni = load i64, ptr %i.bnh, align 8, !tbaa !226
  %i.bnj = icmp ugt i64 %i.bng, %i.bni
  br i1 %i.bnj, label %tg3__json_is_object.exit.thread.thread.i.i, label %bb.gx

bb.gx:                                            ; preds = %bb.gw
  %i.bnk = getelementptr inbounds nuw i8, ptr %i.bml, i64 48
  %i.bnl = load ptr, ptr %i.bnk, align 8, !tbaa !246
  %i.bnm = getelementptr inbounds nuw i8, ptr %i.bml, i64 72
  %i.bnn = load ptr, ptr %i.bnm, align 8, !tbaa !247
  %i.bno = call ptr %i.bnl(i64 noundef %i.bnf, ptr noundef %i.bnn) #21, !inline_history !364 ; 8 uses
  %.not37.i.i.i.i = icmp eq ptr %i.bno, null
  br i1 %.not37.i.i.i.i, label %tg3__json_is_object.exit.thread.thread.i.i, label %tg3__arena_alloc.exit.thread.i.i

tg3__arena_alloc.exit.thread.i.i:                 ; preds = %bb.gx
  store ptr null, ptr %i.bno, align 8, !tbaa !249
  %i.bnp = getelementptr inbounds nuw i8, ptr %i.bno, i64 32 ; 2 uses
  %i.bnq = getelementptr inbounds nuw i8, ptr %i.bno, i64 8
  store ptr %i.bnp, ptr %i.bnq, align 8, !tbaa !250
  %i.bnr = getelementptr inbounds nuw i8, ptr %i.bno, i64 24
  store i64 %spec.select.i.i.i.i, ptr %i.bnr, align 8, !tbaa !244
  %i.bns = load i64, ptr %i.bnd, align 8, !tbaa !245
  %i.bnt = add i64 %i.bns, %i.bnf
  store i64 %i.bnt, ptr %i.bnd, align 8, !tbaa !245
  %i.bnu = load ptr, ptr %i.bms, align 8, !tbaa !241 ; 2 uses
  %.not38.i.i.i.i = icmp eq ptr %i.bnu, null
  %..i.i.i.i = select i1 %.not38.i.i.i.i, ptr %i.bml, ptr %i.bnu
  store ptr %i.bno, ptr %..i.i.i.i, align 8, !tbaa !251
  store ptr %i.bno, ptr %i.bms, align 8, !tbaa !241
  %i.bnv = getelementptr inbounds nuw i8, ptr %i.bno, i64 16
  store i64 %i.bmm, ptr %i.bnv, align 8, !tbaa !242
  br label %.preheader297.i.i

tg3__arena_alloc.exit.i.i:                        ; preds = %bb.gu
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.bmt, i64 8
  %.pre.i.i.i1190 = load ptr, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !250 ; 2 uses
  %i.bnw = getelementptr inbounds nuw i8, ptr %.pre.i.i.i1190, i64 %i.bmv
  store i64 %i.bmw, ptr %i.bmu, align 8, !tbaa !242
  %.not116.i.i = icmp eq ptr %.pre.i.i.i1190, null
  br i1 %.not116.i.i, label %tg3__json_is_object.exit.thread.thread.i.i, label %.preheader297.i.i

.preheader297.i.i:                                ; preds = %tg3__arena_alloc.exit.i.i, %tg3__arena_alloc.exit.thread.i.i
  %i.bnx = phi ptr [ %i.bnp, %tg3__arena_alloc.exit.thread.i.i ], [ %i.bnw, %tg3__arena_alloc.exit.i.i ] ; 2 uses
  %i.bny = getelementptr inbounds nuw i8, ptr %i.bmh, i64 8
  br label %tg3json_object_at.exit.i.i

tg3json_object_at.exit.i.i:                       ; preds = %tg3__json_number_to_int32.exit.i.i, %.preheader297.i.i
  %.0106304.i.i = phi i64 [ 0, %.preheader297.i.i ], [ %i.bpf, %tg3__json_number_to_int32.exit.i.i ] ; 4 uses
  %i.bnz = load i64, ptr %i.bmj, align 8, !tbaa !12
  %.not9.i.i.i = icmp ult i64 %.0106304.i.i, %i.bnz
  call void @llvm.assume(i1 %.not9.i.i.i)
  %i.boa = load ptr, ptr %i.bny, align 8, !tbaa !12
  %i.bob = getelementptr inbounds nuw [24 x i8], ptr %i.boa, i64 %.0106304.i.i ; 4 uses
  %i.boc = getelementptr inbounds nuw [24 x i8], ptr %i.bnx, i64 %.0106304.i.i ; 3 uses
  %i.bod = load ptr, ptr %0, align 8, !tbaa !207
  %i.boe = load ptr, ptr %i.bob, align 8, !tbaa !51
  %i.bof = getelementptr inbounds nuw i8, ptr %i.bob, i64 8
  %i.bog = load i64, ptr %i.bof, align 8, !tbaa !54 ; 2 uses
  %i.boh = trunc i64 %i.bog to i32
  %i.boi = and i64 %i.bog, 4294967295
  %i.boj = call fastcc ptr @tg3__arena_strdup(ptr noundef %i.bod, ptr noundef readonly %i.boe, i64 noundef %i.boi) #20 ; 2 uses
  %.not.i132.i.i = icmp eq ptr %i.boj, null
  %i.bok = select i1 %.not.i132.i.i, i32 0, i32 %i.boh
  %7 = ptrtoint ptr %i.boj to i64
  store i64 %7, ptr %i.boc, align 8, !tbaa !9
  %.sroa.444.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.boc, i64 8
  store i32 %i.bok, ptr %.sroa.444.0..sroa_idx.i.i, align 8, !tbaa !43
  %i.bol = getelementptr inbounds nuw i8, ptr %i.bob, i64 16
  %i.bom = load ptr, ptr %i.bol, align 8, !tbaa !55 ; 4 uses
  %i.bon = getelementptr inbounds nuw i8, ptr %i.boc, i64 16
  %.not.i.i.i44.i = icmp eq ptr %i.bom, null
  br i1 %.not.i.i.i44.i, label %bb.hc, label %bb.gy

bb.gy:                                            ; preds = %tg3json_object_at.exit.i.i
  %i.boo = load i32, ptr %i.bom, align 8, !tbaa !13
  switch i32 %i.boo, label %bb.hc [
    i32 2, label %.thread.i.i.i
    i32 3, label %bb.ha
  ]

.thread.i.i.i:                                    ; preds = %bb.gy
  %i.bop = getelementptr inbounds nuw i8, ptr %i.bom, i64 8
  %i.boq = load i64, ptr %i.bop, align 8, !tbaa !12 ; 2 uses
  %i.bor = add i64 %i.boq, -2147483648
  %or.cond.i134.i.i = icmp ult i64 %i.bor, -4294967296
  br i1 %or.cond.i134.i.i, label %bb.hc, label %bb.gz

bb.gz:                                            ; preds = %.thread.i.i.i
  %i.bos = trunc nsw i64 %i.boq to i32
  br label %tg3__json_number_to_int32.exit.i.i

bb.ha:                                            ; preds = %bb.gy
  %i.bot = getelementptr inbounds nuw i8, ptr %i.bom, i64 8
  %i.bou = load double, ptr %i.bot, align 8, !tbaa !12 ; 5 uses
  %i.bov = call double @llvm.fabs.f64(double %i.bou)
  %i.bow = fcmp ueq double %i.bov, +inf
  %i.box = fcmp olt double %i.bou, f0xC1E0000000000000
  %or.cond3.i.i.i = or i1 %i.box, %i.bow
  %i.boy = fcmp ogt double %i.bou, f0x41DFFFFFFFC00000
  %or.cond5.i.i.i = or i1 %i.boy, %or.cond3.i.i.i
  br i1 %or.cond5.i.i.i, label %bb.hc, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  %i.boz = fptosi double %i.bou to i32            ; 2 uses
  %i.bpa = sitofp i32 %i.boz to double
  %i.bpb = fcmp une double %i.bou, %i.bpa
  br i1 %i.bpb, label %bb.hc, label %tg3__json_number_to_int32.exit.i.i

bb.hc:                                            ; preds = %bb.hb, %bb.ha, %.thread.i.i.i, %bb.gy, %tg3json_object_at.exit.i.i
  %i.bpc = load ptr, ptr %i.bgy, align 8, !tbaa !210
  %i.bpd = load ptr, ptr %0, align 8, !tbaa !207
  %i.bpe = load ptr, ptr %i.bob, align 8, !tbaa !51 ; 2 uses
  %.not124.i.i = icmp eq ptr %i.bpe, null
  %spec.select.i.i1192 = select i1 %.not124.i.i, ptr @.str, ptr %i.bpe
  call void (ptr, ptr, i32, i32, ptr, ptr, ...) @tg3__error_pushf(ptr noundef %i.bpc, ptr noundef %i.bpd, i32 poison, i32 noundef 11, ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.118, ptr noundef nonnull %spec.select.i.i1192) #20
  br label %tg3__json_number_to_int32.exit.i.i

tg3__json_number_to_int32.exit.i.i:               ; preds = %bb.gz, %bb.hb, %bb.hc
  %storemerge = phi i32 [ 0, %bb.hc ], [ %i.bos, %bb.gz ], [ %i.boz, %bb.hb ]
  store i32 %storemerge, ptr %i.bon, align 8, !tbaa !43
  %i.bpf = add nuw i64 %.0106304.i.i, 1           ; 2 uses
  %exitcond.not.i.i1191 = icmp eq i64 %i.bpf, %i.bmk
  br i1 %exitcond.not.i.i1191, label %bb.hd, label %tg3json_object_at.exit.i.i, !llvm.loop !365

bb.hd:                                            ; preds = %tg3__json_number_to_int32.exit.i.i
  store ptr %i.bnx, ptr %i.bkq, align 8, !tbaa !366
  %i.bpg = trunc i64 %i.bmk to i32
  store i32 %i.bpg, ptr %i.bkr, align 8, !tbaa !367
  br label %tg3__json_is_object.exit.thread.thread.i.i

tg3__json_is_object.exit.thread.thread.i.i:       ; preds = %tg3json__memcmp_fallback.exit.i.i.i.i.i1156, %bb.hd, %tg3__arena_alloc.exit.i.i, %bb.gx, %bb.gw, %bb.gv, %bb.gs, %bb.gr, %tg3json_object_size.exit.i.i, %tg3__json_is_object.exit.i.i1188, %tg3__json_get.exit.i.i1187, %.preheader.i.i.i.i.i1151
  %.pr.i.i = load i32, ptr %.0.i38.i, align 8, !tbaa !13
  %.not18.i.i.i140.i.i = icmp eq i32 %.pr.i.i, 6
  br i1 %.not18.i.i.i140.i.i, label %.preheader.i.i.i142.i.i, label %tg3__parse_primitive.exit.i

.preheader.i.i.i142.i.i:                          ; preds = %tg3__json_is_object.exit.thread.thread.i.i
  %i.bph = load i64, ptr %i.bld, align 8, !tbaa !12 ; 2 uses
  %.not27.i.i.i143.i.i = icmp eq i64 %i.bph, 0
  br i1 %.not27.i.i.i143.i.i, label %tg3__parse_primitive.exit.i, label %.lr.ph.split.i.i.i146.preheader.i.i

.lr.ph.split.i.i.i146.preheader.i.i:              ; preds = %.preheader.i.i.i142.i.i
  %i.bpi = getelementptr inbounds nuw i8, ptr %.0.i38.i, i64 8
  %i.bpj = load ptr, ptr %i.bpi, align 8, !tbaa !12
  br label %.lr.ph.split.i.i.i146.i.i

.lr.ph.split.i.i.i146.i.i:                        ; preds = %tg3json__memcmp_fallback.exit.i.i.i148.i.i, %.lr.ph.split.i.i.i146.preheader.i.i
  %.01425.i.i.i147.i.i = phi i64 [ %i.bqc, %tg3json__memcmp_fallback.exit.i.i.i148.i.i ], [ 0, %.lr.ph.split.i.i.i146.preheader.i.i ] ; 2 uses
  %i.bpk = getelementptr inbounds nuw [24 x i8], ptr %i.bpj, i64 %.01425.i.i.i147.i.i ; 3 uses
  %i.bpl = getelementptr inbounds nuw i8, ptr %i.bpk, i64 8
  %i.bpm = load i64, ptr %i.bpl, align 8, !tbaa !54
  %i.bpn = icmp eq i64 %i.bpm, 7
  br i1 %i.bpn, label %.lr.ph.i.preheader.i.i.i150.i.i, label %tg3json__memcmp_fallback.exit.i.i.i148.i.i

.lr.ph.i.preheader.i.i.i150.i.i:                  ; preds = %.lr.ph.split.i.i.i146.i.i
  %i.bpo = load ptr, ptr %i.bpk, align 8, !tbaa !51 ; 7 uses
  %i.bpp = load i8, ptr %i.bpo, align 1, !tbaa !12
  %.not14.i.i.i.i155.i.i = icmp eq i8 %i.bpp, 116
  br i1 %.not14.i.i.i.i155.i.i, label %.lr.ph.i.i.i.i151.1.i.i, label %tg3json__memcmp_fallback.exit.i.i.i148.i.i

.lr.ph.i.i.i.i151.1.i.i:                          ; preds = %.lr.ph.i.preheader.i.i.i150.i.i
  %i.bpq = getelementptr inbounds nuw i8, ptr %i.bpo, i64 1
  %i.bpr = load i8, ptr %i.bpq, align 1, !tbaa !12
  %.not14.i.i.i.i155.1.i.i = icmp eq i8 %i.bpr, 97
  br i1 %.not14.i.i.i.i155.1.i.i, label %.lr.ph.i.i.i.i151.2.i.i, label %tg3json__memcmp_fallback.exit.i.i.i148.i.i

.lr.ph.i.i.i.i151.2.i.i:                          ; preds = %.lr.ph.i.i.i.i151.1.i.i
  %i.bps = getelementptr inbounds nuw i8, ptr %i.bpo, i64 2
  %i.bpt = load i8, ptr %i.bps, align 1, !tbaa !12
  %.not14.i.i.i.i155.2.i.i = icmp eq i8 %i.bpt, 114
  br i1 %.not14.i.i.i.i155.2.i.i, label %.lr.ph.i.i.i.i151.3.i.i, label %tg3json__memcmp_fallback.exit.i.i.i148.i.i

.lr.ph.i.i.i.i151.3.i.i:                          ; preds = %.lr.ph.i.i.i.i151.2.i.i
  %i.bpu = getelementptr inbounds nuw i8, ptr %i.bpo, i64 3
  %i.bpv = load i8, ptr %i.bpu, align 1, !tbaa !12
  %.not14.i.i.i.i155.3.i.i = icmp eq i8 %i.bpv, 103
  br i1 %.not14.i.i.i.i155.3.i.i, label %.lr.ph.i.i.i.i151.4.i.i, label %tg3json__memcmp_fallback.exit.i.i.i148.i.i

.lr.ph.i.i.i.i151.4.i.i:                          ; preds = %.lr.ph.i.i.i.i151.3.i.i
  %i.bpw = getelementptr inbounds nuw i8, ptr %i.bpo, i64 4
  %i.bpx = load i8, ptr %i.bpw, align 1, !tbaa !12
  %.not14.i.i.i.i155.4.i.i = icmp eq i8 %i.bpx, 101
  br i1 %.not14.i.i.i.i155.4.i.i, label %.lr.ph.i.i.i.i151.5.i.i, label %tg3json__memcmp_fallback.exit.i.i.i148.i.i

.lr.ph.i.i.i.i151.5.i.i:                          ; preds = %.lr.ph.i.i.i.i151.4.i.i
  %i.bpy = getelementptr inbounds nuw i8, ptr %i.bpo, i64 5
  %i.bpz = load i8, ptr %i.bpy, align 1, !tbaa !12
  %.not14.i.i.i.i155.5.i.i = icmp eq i8 %i.bpz, 116
  br i1 %.not14.i.i.i.i155.5.i.i, label %.lr.ph.i.i.i.i151.6.i.i, label %tg3json__memcmp_fallback.exit.i.i.i148.i.i

.lr.ph.i.i.i.i151.6.i.i:                          ; preds = %.lr.ph.i.i.i.i151.5.i.i
  %i.bqa = getelementptr inbounds nuw i8, ptr %i.bpo, i64 6
  %i.bqb = load i8, ptr %i.bqa, align 1, !tbaa !12
  %.not14.i.i.i.i155.6.i.i = icmp eq i8 %i.bqb, 115
  br i1 %.not14.i.i.i.i155.6.i.i, label %tg3__json_get.exit162.i.i, label %tg3json__memcmp_fallback.exit.i.i.i148.i.i

tg3json__memcmp_fallback.exit.i.i.i148.i.i:       ; preds = %.lr.ph.i.i.i.i151.6.i.i, %.lr.ph.i.i.i.i151.5.i.i, %.lr.ph.i.i.i.i151.4.i.i, %.lr.ph.i.i.i.i151.3.i.i, %.lr.ph.i.i.i.i151.2.i.i, %.lr.ph.i.i.i.i151.1.i.i, %.lr.ph.i.preheader.i.i.i150.i.i, %.lr.ph.split.i.i.i146.i.i
  %i.bqc = add nuw i64 %.01425.i.i.i147.i.i, 1    ; 2 uses
  %exitcond.not.i.i.i149.i.i = icmp eq i64 %i.bqc, %i.bph
  br i1 %exitcond.not.i.i.i149.i.i, label %tg3__parse_primitive.exit.i, label %.lr.ph.split.i.i.i146.i.i, !llvm.loop !83

tg3__json_get.exit162.i.i:                        ; preds = %.lr.ph.i.i.i.i151.6.i.i
  %i.bqd = getelementptr inbounds nuw i8, ptr %i.bpk, i64 16
  %i.bqe = load ptr, ptr %i.bqd, align 8, !tbaa !55 ; 5 uses
  %.not.i163.i.i = icmp eq ptr %i.bqe, null
  br i1 %.not.i163.i.i, label %tg3__parse_primitive.exit.i, label %tg3__json_is_array.exit.i.i

tg3__json_is_array.exit.i.i:                      ; preds = %tg3__json_get.exit162.i.i
  %i.bqf = load i32, ptr %i.bqe, align 8, !tbaa !13
  %.not291.i.i = icmp eq i32 %i.bqf, 5
  br i1 %.not291.i.i, label %tg3json_array_size.exit.i.i, label %tg3__parse_primitive.exit.i

tg3json_array_size.exit.i.i:                      ; preds = %tg3__json_is_array.exit.i.i
  %i.bqg = getelementptr inbounds nuw i8, ptr %i.bqe, i64 16 ; 2 uses
  %i.bqh = load i64, ptr %i.bqg, align 8, !tbaa !12 ; 5 uses
  %.not118.i.i = icmp eq i64 %i.bqh, 0
  br i1 %.not118.i.i, label %tg3__parse_primitive.exit.i, label %bb.he

bb.he:                                            ; preds = %tg3json_array_size.exit.i.i
  %i.bqi = load ptr, ptr %0, align 8, !tbaa !207  ; 9 uses
  %i.bqj = shl i64 %i.bqh, 3                      ; 5 uses
  %i.bqk = icmp eq ptr %i.bqi, null
  %i.bql = icmp eq i64 %i.bqj, 0
  %or.cond.i167.i.i = or i1 %i.bql, %i.bqk
  br i1 %or.cond.i167.i.i, label %tg3__arena_alloc.exit182.i.i, label %bb.hf

bb.hf:                                            ; preds = %bb.he
  %i.bqm = getelementptr inbounds nuw i8, ptr %i.bqi, i64 32
  %i.bqn = load i64, ptr %i.bqm, align 8, !tbaa !227 ; 3 uses
  %.not.i168.i.i = icmp ne i64 %i.bqn, 0          ; 2 uses
  %i.bqo = icmp ugt i64 %i.bqj, %i.bqn
  %or.cond28.i169.i.i = and i1 %.not.i168.i.i, %i.bqo
  br i1 %or.cond28.i169.i.i, label %tg3__arena_alloc.exit182.i.i, label %bb.hg

bb.hg:                                            ; preds = %bb.hf
  %i.bqp = getelementptr inbounds nuw i8, ptr %i.bqi, i64 8 ; 3 uses
  %i.bqq = load ptr, ptr %i.bqp, align 8, !tbaa !241 ; 5 uses
  %.not26.i170.i.i = icmp eq ptr %i.bqq, null
  br i1 %.not26.i170.i.i, label %bb.hi, label %bb.hh

bb.hh:                                            ; preds = %bb.hg
  %i.bqr = getelementptr inbounds nuw i8, ptr %i.bqq, i64 16
  %i.bqs = load i64, ptr %i.bqr, align 8, !tbaa !242 ; 2 uses
  %i.bqt = add i64 %i.bqs, %i.bqj
  %i.bqu = getelementptr inbounds nuw i8, ptr %i.bqq, i64 24
  %i.bqv = load i64, ptr %i.bqu, align 8, !tbaa !244
  %i.bqw = icmp ugt i64 %i.bqt, %i.bqv
  br i1 %i.bqw, label %bb.hi, label %._crit_edge.i171.i.i

._crit_edge.i171.i.i:                             ; preds = %bb.hh
  %.phi.trans.insert.i172.i.i = getelementptr inbounds nuw i8, ptr %i.bqq, i64 8
  %.pre.i173.i.i = load ptr, ptr %.phi.trans.insert.i172.i.i, align 8, !tbaa !250
  br label %bb.hl

bb.hi:                                            ; preds = %bb.hh, %bb.hg
  %i.bqx = getelementptr inbounds nuw i8, ptr %i.bqi, i64 40
  %i.bqy = load i64, ptr %i.bqx, align 8, !tbaa !223
  %spec.select.i.i176.i.i = call i64 @llvm.umax.i64(i64 %i.bqy, i64 range(i64 0, -7) %i.bqj) ; 3 uses
  %i.bqz = icmp ugt i64 %spec.select.i.i176.i.i, %i.bqn
  %or.cond.i.i177.i.i = select i1 %.not.i168.i.i, i1 %i.bqz, i1 false
  br i1 %or.cond.i.i177.i.i, label %tg3__arena_alloc.exit182.i.i, label %bb.hj

bb.hj:                                            ; preds = %bb.hi
  %i.bra = getelementptr inbounds nuw i8, ptr %i.bqi, i64 16 ; 3 uses
  %i.brb = load i64, ptr %i.bra, align 8, !tbaa !245
  %i.brc = add i64 %spec.select.i.i176.i.i, 32    ; 3 uses
end_hunk_1
begin_hunk_2_@tg3__parse_from_json:tg3json__strlen_fallback.exit.i
  %i.bwp = load i64, ptr %i.bwo, align 8, !tbaa !223
  %spec.select.i.i.i.i.i1169 = call i64 @llvm.umax.i64(i64 %i.bwp, i64 range(i64 0, -7) %i.bwf) ; 3 uses
  %i.bwq = icmp ugt i64 %spec.select.i.i.i.i.i1169, %i.bwc
  %or.cond.i.i.i.i.i1170 = select i1 %.not.i.i244.i.i, i1 %i.bwq, i1 false
  br i1 %or.cond.i.i.i.i.i1170, label %tg3__arena_strdup.exit.i.i, label %bb.ie

bb.ie:                                            ; preds = %bb.id
  %i.bwr = getelementptr inbounds nuw i8, ptr %i.bvt, i64 16 ; 3 uses
  %i.bws = load i64, ptr %i.bwr, align 8, !tbaa !245
  %i.bwt = add i64 %spec.select.i.i.i.i.i1169, 32 ; 3 uses
  %i.bwu = add i64 %i.bws, %i.bwt
  %i.bwv = getelementptr inbounds nuw i8, ptr %i.bvt, i64 24
  %i.bww = load i64, ptr %i.bwv, align 8, !tbaa !226
  %i.bwx = icmp ugt i64 %i.bwu, %i.bww
  br i1 %i.bwx, label %tg3__arena_strdup.exit.i.i, label %bb.if

bb.if:                                            ; preds = %bb.ie
  %i.bwy = getelementptr inbounds nuw i8, ptr %i.bvt, i64 48
  %i.bwz = load ptr, ptr %i.bwy, align 8, !tbaa !246
  %i.bxa = getelementptr inbounds nuw i8, ptr %i.bvt, i64 72
  %i.bxb = load ptr, ptr %i.bxa, align 8, !tbaa !247
  %i.bxc = call ptr %i.bwz(i64 noundef %i.bwt, ptr noundef %i.bxb) #21, !inline_history !369 ; 8 uses
  %.not37.i.i.i.i.i1171 = icmp eq ptr %i.bxc, null
  br i1 %.not37.i.i.i.i.i1171, label %tg3__arena_strdup.exit.i.i, label %tg3__arena_alloc.exit.thread26.i.i.i

tg3__arena_alloc.exit.thread26.i.i.i:             ; preds = %bb.if
  store ptr null, ptr %i.bxc, align 8, !tbaa !249
  %i.bxd = getelementptr inbounds nuw i8, ptr %i.bxc, i64 32 ; 2 uses
  %i.bxe = getelementptr inbounds nuw i8, ptr %i.bxc, i64 8
  store ptr %i.bxd, ptr %i.bxe, align 8, !tbaa !250
  %i.bxf = getelementptr inbounds nuw i8, ptr %i.bxc, i64 24
  store i64 %spec.select.i.i.i.i.i1169, ptr %i.bxf, align 8, !tbaa !244
  %i.bxg = load i64, ptr %i.bwr, align 8, !tbaa !245
  %i.bxh = add i64 %i.bxg, %i.bwt
  store i64 %i.bxh, ptr %i.bwr, align 8, !tbaa !245
  %i.bxi = load ptr, ptr %i.bwg, align 8, !tbaa !241 ; 2 uses
  %.not38.i.i.i.i.i1172 = icmp eq ptr %i.bxi, null
  %..i.i.i.i.i1173 = select i1 %.not38.i.i.i.i.i1172, ptr %i.bvt, ptr %i.bxi
  store ptr %i.bxc, ptr %..i.i.i.i.i1173, align 8, !tbaa !251
  store ptr %i.bxc, ptr %i.bwg, align 8, !tbaa !241
  %i.bxj = getelementptr inbounds nuw i8, ptr %i.bxc, i64 16
  store i64 %i.bwf, ptr %i.bxj, align 8, !tbaa !242
  br label %bb.ig

tg3__arena_alloc.exit.i.i.i1161:                  ; preds = %bb.ic
  %.phi.trans.insert.i.i.i.i1162 = getelementptr inbounds nuw i8, ptr %i.bwh, i64 8
  %.pre.i.i.i.i1163 = load ptr, ptr %.phi.trans.insert.i.i.i.i1162, align 8, !tbaa !250 ; 2 uses
  %i.bxk = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i1163, i64 %i.bwj
  store i64 %i.bwk, ptr %i.bwi, align 8, !tbaa !242
  %.not14.i.i.i1164 = icmp eq ptr %.pre.i.i.i.i1163, null
  br i1 %.not14.i.i.i1164, label %tg3__arena_strdup.exit.i.i, label %bb.ig

bb.ig:                                            ; preds = %tg3__arena_alloc.exit.i.i.i1161, %tg3__arena_alloc.exit.thread26.i.i.i
  %i.bxl = phi ptr [ %i.bxd, %tg3__arena_alloc.exit.thread26.i.i.i ], [ %i.bxk, %tg3__arena_alloc.exit.i.i.i1161 ] ; 8 uses
  %.not15.i.i.i = icmp eq i64 %i.bvz, 0
  br i1 %.not15.i.i.i, label %tg3__memcpy.exit.i.i.i1168, label %iter.check4379

iter.check4379:                                   ; preds = %bb.ig
  %i.bxm = ptrtoaddr ptr %i.bxl to i64
  %min.iters.check4361 = icmp samesign ult i64 %i.bvz, 4
  %i.bxn = sub i64 %i.bvv, %i.bxm
  %diff.check4360 = icmp ugt i64 %i.bxn, -32
  %or.cond4537 = select i1 %min.iters.check4361, i1 true, i1 %diff.check4360
  br i1 %or.cond4537, label %.lr.ph.i.i.i40.i.preheader, label %vector.main.loop.iter.check4362

vector.main.loop.iter.check4362:                  ; preds = %iter.check4379
  %min.iters.check4363 = icmp samesign ult i64 %i.bvz, 32
  br i1 %min.iters.check4363, label %vec.epilog.ph4383, label %vector.ph4364

vector.ph4364:                                    ; preds = %vector.main.loop.iter.check4362
  %i.bxo = and i64 %i.bvx, 28
  %n.vec4365 = and i64 %i.bvx, 4294967264         ; 5 uses
  %i.bxp = getelementptr i8, ptr %i.bvu, i64 %n.vec4365
  %i.bxq = getelementptr i8, ptr %i.bxl, i64 %n.vec4365
  %i.bxr = and i64 %i.bvx, 31
  br label %vector.body4366

vector.body4366:                                  ; preds = %vector.body4366, %vector.ph4364
  %index4367 = phi i64 [ 0, %vector.ph4364 ], [ %index.next4372, %vector.body4366 ] ; 3 uses
  %next.gep4368 = getelementptr i8, ptr %i.bvu, i64 %index4367 ; 2 uses
  %next.gep4369 = getelementptr i8, ptr %i.bxl, i64 %index4367 ; 2 uses
  %i.bxs = getelementptr i8, ptr %next.gep4368, i64 16
  %wide.load4370 = load <16 x i8>, ptr %next.gep4368, align 1, !tbaa !12
  %wide.load4371 = load <16 x i8>, ptr %i.bxs, align 1, !tbaa !12
  %i.bxt = getelementptr i8, ptr %next.gep4369, i64 16
  store <16 x i8> %wide.load4370, ptr %next.gep4369, align 1, !tbaa !12
  store <16 x i8> %wide.load4371, ptr %i.bxt, align 1, !tbaa !12
  %index.next4372 = add nuw i64 %index4367, 32    ; 2 uses
  %i.bxu = icmp eq i64 %index.next4372, %n.vec4365
  br i1 %i.bxu, label %middle.block4373, label %vector.body4366, !llvm.loop !370

middle.block4373:                                 ; preds = %vector.body4366
  %cmp.n4374 = icmp eq i64 %i.bvz, %n.vec4365
  br i1 %cmp.n4374, label %tg3__memcpy.exit.i.i.i1168, label %vec.epilog.iter.check4381

vec.epilog.iter.check4381:                        ; preds = %middle.block4373
  %min.epilog.iters.check4382 = icmp eq i64 %i.bxo, 0
  br i1 %min.epilog.iters.check4382, label %.lr.ph.i.i.i40.i.preheader, label %vec.epilog.ph4383, !prof !36

vec.epilog.ph4383:                                ; preds = %vector.main.loop.iter.check4362, %vec.epilog.iter.check4381
  %vec.epilog.resume.val4375 = phi i64 [ %n.vec4365, %vec.epilog.iter.check4381 ], [ 0, %vector.main.loop.iter.check4362 ]
  %n.vec4384 = and i64 %i.bvx, 4294967292         ; 4 uses
  %i.bxv = getelementptr i8, ptr %i.bvu, i64 %n.vec4384
  %i.bxw = getelementptr i8, ptr %i.bxl, i64 %n.vec4384
  %i.bxx = and i64 %i.bvx, 3
  br label %vec.epilog.vector.body4385

vec.epilog.vector.body4385:                       ; preds = %vec.epilog.vector.body4385, %vec.epilog.ph4383
  %index4386 = phi i64 [ %vec.epilog.resume.val4375, %vec.epilog.ph4383 ], [ %index.next4390, %vec.epilog.vector.body4385 ] ; 3 uses
  %next.gep4387 = getelementptr i8, ptr %i.bvu, i64 %index4386
  %next.gep4388 = getelementptr i8, ptr %i.bxl, i64 %index4386
  %wide.load4389 = load <4 x i8>, ptr %next.gep4387, align 1, !tbaa !12
  store <4 x i8> %wide.load4389, ptr %next.gep4388, align 1, !tbaa !12
  %index.next4390 = add nuw i64 %index4386, 4     ; 2 uses
  %i.bxy = icmp eq i64 %index.next4390, %n.vec4384
  br i1 %i.bxy, label %vec.epilog.middle.block4391, label %vec.epilog.vector.body4385, !llvm.loop !371

vec.epilog.middle.block4391:                      ; preds = %vec.epilog.vector.body4385
  %cmp.n4392 = icmp eq i64 %i.bvz, %n.vec4384
  br i1 %cmp.n4392, label %tg3__memcpy.exit.i.i.i1168, label %.lr.ph.i.i.i40.i.preheader

.lr.ph.i.i.i40.i.preheader:                       ; preds = %iter.check4379, %vec.epilog.iter.check4381, %vec.epilog.middle.block4391
  %.010.i.i.i.i1165.ph = phi ptr [ %i.bvu, %iter.check4379 ], [ %i.bxp, %vec.epilog.iter.check4381 ], [ %i.bxv, %vec.epilog.middle.block4391 ] ; 2 uses
  %.059.i.i.i.i1166.ph = phi ptr [ %i.bxl, %iter.check4379 ], [ %i.bxq, %vec.epilog.iter.check4381 ], [ %i.bxw, %vec.epilog.middle.block4391 ] ; 2 uses
  %.068.i.i.i.i1167.ph = phi i64 [ %i.bvz, %iter.check4379 ], [ %i.bxr, %vec.epilog.iter.check4381 ], [ %i.bxx, %vec.epilog.middle.block4391 ] ; 4 uses
  %i.bxz = add nsw i64 %.068.i.i.i.i1167.ph, -1
  %xtraiter4679 = and i64 %.068.i.i.i.i1167.ph, 7 ; 2 uses
  %lcmp.mod4680.not = icmp eq i64 %xtraiter4679, 0
  br i1 %lcmp.mod4680.not, label %.lr.ph.i.i.i40.i.prol.loopexit, label %.lr.ph.i.i.i40.i.prol

.lr.ph.i.i.i40.i.prol:                            ; preds = %.lr.ph.i.i.i40.i.preheader, %.lr.ph.i.i.i40.i.prol
  %.010.i.i.i.i1165.prol = phi ptr [ %i.byb, %.lr.ph.i.i.i40.i.prol ], [ %.010.i.i.i.i1165.ph, %.lr.ph.i.i.i40.i.preheader ] ; 2 uses
  %.059.i.i.i.i1166.prol = phi ptr [ %i.byd, %.lr.ph.i.i.i40.i.prol ], [ %.059.i.i.i.i1166.ph, %.lr.ph.i.i.i40.i.preheader ] ; 2 uses
  %.068.i.i.i.i1167.prol = phi i64 [ %i.bya, %.lr.ph.i.i.i40.i.prol ], [ %.068.i.i.i.i1167.ph, %.lr.ph.i.i.i40.i.preheader ]
  %prol.iter4681 = phi i64 [ %prol.iter4681.next, %.lr.ph.i.i.i40.i.prol ], [ 0, %.lr.ph.i.i.i40.i.preheader ]
  %i.bya = add nsw i64 %.068.i.i.i.i1167.prol, -1 ; 2 uses
  %i.byb = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i1165.prol, i64 1 ; 2 uses
  %i.byc = load i8, ptr %.010.i.i.i.i1165.prol, align 1, !tbaa !12
  %i.byd = getelementptr inbounds nuw i8, ptr %.059.i.i.i.i1166.prol, i64 1 ; 2 uses
  store i8 %i.byc, ptr %.059.i.i.i.i1166.prol, align 1, !tbaa !12
  %prol.iter4681.next = add i64 %prol.iter4681, 1 ; 2 uses
  %prol.iter4681.cmp.not = icmp eq i64 %prol.iter4681.next, %xtraiter4679
  br i1 %prol.iter4681.cmp.not, label %.lr.ph.i.i.i40.i.prol.loopexit, label %.lr.ph.i.i.i40.i.prol, !llvm.loop !372

.lr.ph.i.i.i40.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i40.i.prol, %.lr.ph.i.i.i40.i.preheader
  %.010.i.i.i.i1165.unr = phi ptr [ %.010.i.i.i.i1165.ph, %.lr.ph.i.i.i40.i.preheader ], [ %i.byb, %.lr.ph.i.i.i40.i.prol ]
  %.059.i.i.i.i1166.unr = phi ptr [ %.059.i.i.i.i1166.ph, %.lr.ph.i.i.i40.i.preheader ], [ %i.byd, %.lr.ph.i.i.i40.i.prol ]
  %.068.i.i.i.i1167.unr = phi i64 [ %.068.i.i.i.i1167.ph, %.lr.ph.i.i.i40.i.preheader ], [ %i.bya, %.lr.ph.i.i.i40.i.prol ]
  %i.bye = icmp ult i64 %i.bxz, 7
  br i1 %i.bye, label %tg3__memcpy.exit.i.i.i1168, label %.lr.ph.i.i.i40.i

.lr.ph.i.i.i40.i:                                 ; preds = %.lr.ph.i.i.i40.i.prol.loopexit, %.lr.ph.i.i.i40.i
  %.010.i.i.i.i1165 = phi ptr [ %i.bzb, %.lr.ph.i.i.i40.i ], [ %.010.i.i.i.i1165.unr, %.lr.ph.i.i.i40.i.prol.loopexit ] ; 9 uses
  %.059.i.i.i.i1166 = phi ptr [ %i.bzd, %.lr.ph.i.i.i40.i ], [ %.059.i.i.i.i1166.unr, %.lr.ph.i.i.i40.i.prol.loopexit ] ; 9 uses
  %.068.i.i.i.i1167 = phi i64 [ %i.bza, %.lr.ph.i.i.i40.i ], [ %.068.i.i.i.i1167.unr, %.lr.ph.i.i.i40.i.prol.loopexit ]
  %i.byf = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i1165, i64 1
  %i.byg = load i8, ptr %.010.i.i.i.i1165, align 1, !tbaa !12
  %i.byh = getelementptr inbounds nuw i8, ptr %.059.i.i.i.i1166, i64 1
  store i8 %i.byg, ptr %.059.i.i.i.i1166, align 1, !tbaa !12
  %i.byi = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i1165, i64 2
  %i.byj = load i8, ptr %i.byf, align 1, !tbaa !12
  %i.byk = getelementptr inbounds nuw i8, ptr %.059.i.i.i.i1166, i64 2
  store i8 %i.byj, ptr %i.byh, align 1, !tbaa !12
  %i.byl = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i1165, i64 3
  %i.bym = load i8, ptr %i.byi, align 1, !tbaa !12
  %i.byn = getelementptr inbounds nuw i8, ptr %.059.i.i.i.i1166, i64 3
  store i8 %i.bym, ptr %i.byk, align 1, !tbaa !12
  %i.byo = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i1165, i64 4
  %i.byp = load i8, ptr %i.byl, align 1, !tbaa !12
  %i.byq = getelementptr inbounds nuw i8, ptr %.059.i.i.i.i1166, i64 4
  store i8 %i.byp, ptr %i.byn, align 1, !tbaa !12
  %i.byr = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i1165, i64 5
  %i.bys = load i8, ptr %i.byo, align 1, !tbaa !12
  %i.byt = getelementptr inbounds nuw i8, ptr %.059.i.i.i.i1166, i64 5
  store i8 %i.bys, ptr %i.byq, align 1, !tbaa !12
  %i.byu = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i1165, i64 6
  %i.byv = load i8, ptr %i.byr, align 1, !tbaa !12
  %i.byw = getelementptr inbounds nuw i8, ptr %.059.i.i.i.i1166, i64 6
  store i8 %i.byv, ptr %i.byt, align 1, !tbaa !12
  %i.byx = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i1165, i64 7
  %i.byy = load i8, ptr %i.byu, align 1, !tbaa !12
  %i.byz = getelementptr inbounds nuw i8, ptr %.059.i.i.i.i1166, i64 7
  store i8 %i.byy, ptr %i.byw, align 1, !tbaa !12
  %i.bza = add nsw i64 %.068.i.i.i.i1167, -8      ; 2 uses
  %i.bzb = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i1165, i64 8
  %i.bzc = load i8, ptr %i.byx, align 1, !tbaa !12
  %i.bzd = getelementptr inbounds nuw i8, ptr %.059.i.i.i.i1166, i64 8
  store i8 %i.bzc, ptr %i.byz, align 1, !tbaa !12
  %.not.i16.i.i.i.7 = icmp eq i64 %i.bza, 0
  br i1 %.not.i16.i.i.i.7, label %tg3__memcpy.exit.i.i.i1168, label %.lr.ph.i.i.i40.i, !llvm.loop !373

tg3__memcpy.exit.i.i.i1168:                       ; preds = %.lr.ph.i.i.i40.i.prol.loopexit, %.lr.ph.i.i.i40.i, %middle.block4373, %vec.epilog.middle.block4391, %bb.ig
  %i.bze = getelementptr inbounds nuw i8, ptr %i.bxl, i64 %i.bvz
  store i8 0, ptr %i.bze, align 1, !tbaa !12
  br label %tg3__arena_strdup.exit.i.i

tg3__arena_strdup.exit.i.i:                       ; preds = %tg3__memcpy.exit.i.i.i1168, %tg3__arena_alloc.exit.i.i.i1161, %bb.if, %bb.ie, %bb.id, %bb.ia, %tg3json_object_at.exit229.i.i
  %.0.i245.i.i = phi ptr [ %i.bxl, %tg3__memcpy.exit.i.i.i1168 ], [ null, %tg3json_object_at.exit229.i.i ], [ null, %tg3__arena_alloc.exit.i.i.i1161 ], [ null, %bb.ia ], [ null, %bb.if ], [ null, %bb.ie ], [ null, %bb.id ] ; 2 uses
  %.not.i230.i.i = icmp eq ptr %.0.i245.i.i, null
  %i.bzf = select i1 %.not.i230.i.i, i32 0, i32 %i.bvy
  %8 = ptrtoint ptr %.0.i245.i.i to i64
  store i64 %8, ptr %i.bvs, align 8, !tbaa !9
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bvs, i64 8
  store i32 %i.bzf, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !43
  %i.bzg = getelementptr inbounds nuw i8, ptr %i.bvr, i64 16
  %i.bzh = load ptr, ptr %i.bzg, align 8, !tbaa !55 ; 4 uses
  %i.bzi = getelementptr inbounds nuw i8, ptr %i.bvs, i64 16
  %.not.i.i233.i.i = icmp eq ptr %i.bzh, null
  br i1 %.not.i.i233.i.i, label %bb.il, label %bb.ih

bb.ih:                                            ; preds = %tg3__arena_strdup.exit.i.i
  %i.bzj = load i32, ptr %i.bzh, align 8, !tbaa !13
  switch i32 %i.bzj, label %bb.il [
    i32 2, label %.thread.i239.i.i
    i32 3, label %bb.ij
  ]

.thread.i239.i.i:                                 ; preds = %bb.ih
  %i.bzk = getelementptr inbounds nuw i8, ptr %i.bzh, i64 8
  %i.bzl = load i64, ptr %i.bzk, align 8, !tbaa !12 ; 2 uses
  %i.bzm = add i64 %i.bzl, -2147483648
  %or.cond.i240.i.i = icmp ult i64 %i.bzm, -4294967296
  br i1 %or.cond.i240.i.i, label %bb.il, label %bb.ii

bb.ii:                                            ; preds = %.thread.i239.i.i
  %i.bzn = trunc nsw i64 %i.bzl to i32
  br label %tg3__json_number_to_int32.exit241.i.i

bb.ij:                                            ; preds = %bb.ih
  %i.bzo = getelementptr inbounds nuw i8, ptr %i.bzh, i64 8
  %i.bzp = load double, ptr %i.bzo, align 8, !tbaa !12 ; 5 uses
  %i.bzq = call double @llvm.fabs.f64(double %i.bzp)
  %i.bzr = fcmp ueq double %i.bzq, +inf
  %i.bzs = fcmp olt double %i.bzp, f0xC1E0000000000000
  %or.cond3.i234.i.i = or i1 %i.bzs, %i.bzr
  %i.bzt = fcmp ogt double %i.bzp, f0x41DFFFFFFFC00000
  %or.cond5.i235.i.i = or i1 %i.bzt, %or.cond3.i234.i.i
  br i1 %or.cond5.i235.i.i, label %bb.il, label %bb.ik

bb.ik:                                            ; preds = %bb.ij
  %i.bzu = fptosi double %i.bzp to i32            ; 2 uses
  %i.bzv = sitofp i32 %i.bzu to double
  %i.bzw = fcmp une double %i.bzp, %i.bzv
  br i1 %i.bzw, label %bb.il, label %tg3__json_number_to_int32.exit241.i.i

bb.il:                                            ; preds = %bb.ik, %bb.ij, %.thread.i239.i.i, %bb.ih, %tg3__arena_strdup.exit.i.i
  %i.bzx = load ptr, ptr %i.bgy, align 8, !tbaa !210
  %i.bzy = load ptr, ptr %0, align 8, !tbaa !207
  %i.bzz = load ptr, ptr %i.bvr, align 8, !tbaa !51 ; 2 uses
  %.not122.i.i = icmp eq ptr %i.bzz, null
  %spec.select125.i.i = select i1 %.not122.i.i, ptr @.str, ptr %i.bzz
  call void (ptr, ptr, i32, i32, ptr, ptr, ...) @tg3__error_pushf(ptr noundef %i.bzx, ptr noundef %i.bzy, i32 poison, i32 noundef 11, ptr noundef nonnull @.str.120, ptr noundef nonnull @.str.121, ptr noundef nonnull %spec.select125.i.i) #20
  br label %tg3__json_number_to_int32.exit241.i.i

tg3__json_number_to_int32.exit241.i.i:            ; preds = %bb.ii, %bb.ik, %bb.il
  %storemerge4530 = phi i32 [ 0, %bb.il ], [ %i.bzn, %bb.ii ], [ %i.bzu, %bb.ik ]
  store i32 %storemerge4530, ptr %i.bzi, align 8, !tbaa !43
  %i.caa = add nuw i64 %.0305.i.i, 1              ; 2 uses
  %exitcond319.not.i.i = icmp eq i64 %i.caa, %i.bua
  br i1 %exitcond319.not.i.i, label %._crit_edge.i41.i, label %tg3json_object_at.exit229.i.i, !llvm.loop !374

.thread.i.i1174:                                  ; preds = %tg3__arena_alloc.exit224.i.i, %bb.hz, %bb.hy, %bb.hx, %bb.hu, %tg3json_object_size.exit208.i.i
  %i.cab = getelementptr inbounds nuw [8 x i8], ptr %.020.i175.i.i, i64 %.0105306.i.i
  store ptr null, ptr %i.cab, align 8, !tbaa !368
  br label %bb.im

._crit_edge.i41.i:                                ; preds = %tg3__json_number_to_int32.exit241.i.i, %.preheader.i.i1158
  %i.cac = getelementptr inbounds nuw [8 x i8], ptr %.020.i175.i.i, i64 %.0105306.i.i
  store ptr %i.bvn, ptr %i.cac, align 8, !tbaa !368
  %i.cad = trunc i64 %i.bua to i32
  br label %bb.im

bb.im:                                            ; preds = %._crit_edge.i41.i, %.thread.i.i1174, %tg3__json_is_object.exit204.thread.i.i
  %.sink.i.i = phi i32 [ 0, %tg3__json_is_object.exit204.thread.i.i ], [ 0, %.thread.i.i1174 ], [ %i.cad, %._crit_edge.i41.i ]
  %i.cae = getelementptr inbounds nuw [4 x i8], ptr %i.bto, i64 %.0105306.i.i
  store i32 %.sink.i.i, ptr %i.cae, align 4, !tbaa !43
  %i.caf = add nuw i64 %.0105306.i.i, 1           ; 2 uses
  %exitcond321.not.i.i = icmp eq i64 %i.caf, %i.bqh
  br i1 %exitcond321.not.i.i, label %bb.in, label %bb.hs, !llvm.loop !375

bb.in:                                            ; preds = %bb.im
  store ptr %.020.i175.i.i, ptr %i.bkv, align 8, !tbaa !376
  store ptr %i.bto, ptr %i.bkw, align 8, !tbaa !377
  %i.cag = trunc i64 %i.bqh to i32
  store i32 %i.cag, ptr %i.bkx, align 8, !tbaa !378
  br label %tg3__parse_primitive.exit.i

tg3__parse_primitive.exit.i:                      ; preds = %tg3json__memcmp_fallback.exit.i.i.i148.i.i, %bb.in, %tg3__arena_alloc.exit198.i.i, %bb.hr, %bb.hq, %bb.hp, %bb.hm, %tg3__arena_alloc.exit182.i.i, %tg3json_array_size.exit.i.i, %tg3__json_is_array.exit.i.i, %tg3__json_get.exit162.i.i, %.preheader.i.i.i142.i.i, %tg3__json_is_object.exit.thread.thread.i.i, %bb.gq, %tg3json_array_get.exit.i
  call fastcc void @tg3__parse_extras_and_extensions(ptr noundef nonnull %0, ptr noundef readonly %.0.i38.i, ptr noundef %i.bky) #20
  %i.cah = add nuw i64 %.057.i, 1                 ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.cah, %i.bix
  br i1 %exitcond.not.i, label %bb.io, label %bb.gn, !llvm.loop !379

bb.io:                                            ; preds = %tg3__parse_primitive.exit.i
  store ptr %i.bkk, ptr %i.bin, align 8, !tbaa !380
  %i.cai = trunc i64 %i.bix to i32
  store i32 %i.cai, ptr %i.bio, align 8, !tbaa !383
  br label %tg3__parse_mesh.exit

tg3__parse_mesh.exit:                             ; preds = %tg3__json_get.exit.i, %tg3__json_is_array.exit.i, %tg3json_array_size.exit.i, %bb.gg, %bb.gh, %bb.gk, %bb.gl, %bb.gm, %tg3__arena_alloc.exit.i1145, %bb.io
  call fastcc void @tg3__parse_number_array(ptr noundef nonnull %0, ptr noundef nonnull readonly %i.bhc, ptr noundef nonnull @.str.112, ptr noundef %i.bip, ptr noundef %i.biq, ptr noundef nonnull @.str.111) #20
  call fastcc void @tg3__parse_extras_and_extensions(ptr noundef nonnull %0, ptr noundef nonnull readonly %i.bhc, ptr noundef %i.bir) #20
  br label %bb.ip

bb.ip:                                            ; preds = %tg3__parse_mesh.exit, %tg3__json_is_object.exit1140.thread
  %i.caj = add nuw i64 %.06622940, 1              ; 2 uses
  %exitcond3172.not = icmp eq i64 %i.caj, %i.bfh
  br i1 %exitcond3172.not, label %bb.iq, label %bb.ge, !llvm.loop !384

bb.iq:                                            ; preds = %bb.ip
  %i.cak = getelementptr inbounds nuw i8, ptr %2, i64 88
  store ptr %i.bgw, ptr %i.cak, align 8, !tbaa !385
  %i.cal = trunc i64 %i.bfh to i32
  %i.cam = getelementptr inbounds nuw i8, ptr %2, i64 96
  store i32 %i.cal, ptr %i.cam, align 8, !tbaa !386
  br label %tg3__json_is_array.exit1113.thread

tg3__json_is_array.exit1113.thread:               ; preds = %tg3json__memcmp_fallback.exit.i.i1097, %bb.gd, %bb.gb, %bb.gc, %bb.fx, %bb.fy, %.preheader.i.i1091, %.critedge884, %tg3json_object_get.exit1111, %tg3json_array_size.exit1117, %bb.iq, %tg3__arena_alloc.exit1133, %tg3__json_is_array.exit1113
  %i.can = load ptr, ptr %i.dg, align 8, !tbaa !237 ; 2 uses
  %.not777 = icmp eq ptr %i.can, null
  br i1 %.not777, label %.critedge886, label %bb.ir

bb.ir:                                            ; preds = %tg3__json_is_array.exit1113.thread
  %i.cao = getelementptr inbounds nuw i8, ptr %i.can, i64 32
  %i.cap = load ptr, ptr %i.cao, align 8, !tbaa !387
  %.not778 = icmp eq ptr %i.cap, null
  br i1 %.not778, label %.critedge886, label %.preheader2805

.preheader2805:                                   ; preds = %bb.ir
  %i.caq = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.car = load i32, ptr %i.caq, align 8, !tbaa !386
  %.not7802942.not = icmp eq i32 %i.car, 0
  br i1 %.not7802942.not, label %.critedge886, label %.lr.ph2944

.lr.ph2944:                                       ; preds = %.preheader2805
  %i.cas = getelementptr inbounds nuw i8, ptr %2, i64 88
  br label %bb.it

bb.is:                                            ; preds = %bb.it
  %indvars.iv.next3174 = add nuw nsw i64 %indvars.iv3173, 1 ; 2 uses
  %i.cat = load i32, ptr %i.caq, align 8, !tbaa !386
  %i.cau = zext i32 %i.cat to i64
  %.not780 = icmp samesign ult i64 %indvars.iv.next3174, %i.cau
  br i1 %.not780, label %bb.it, label %.critedge886, !llvm.loop !388

bb.it:                                            ; preds = %.lr.ph2944, %bb.is
  %indvars.iv3173 = phi i64 [ 0, %.lr.ph2944 ], [ %indvars.iv.next3174, %bb.is ] ; 3 uses
  %i.cav = load ptr, ptr %i.dg, align 8, !tbaa !237 ; 2 uses
  %i.caw = getelementptr inbounds nuw i8, ptr %i.cav, i64 32
  %i.cax = load ptr, ptr %i.caw, align 8, !tbaa !387
  %i.cay = load ptr, ptr %i.cas, align 8, !tbaa !385
  %i.caz = getelementptr inbounds nuw [104 x i8], ptr %i.cay, i64 %indvars.iv3173
  %i.cba = getelementptr inbounds nuw i8, ptr %i.cav, i64 120
  %i.cbb = load ptr, ptr %i.cba, align 8, !tbaa !240
  %i.cbc = trunc nuw i64 %indvars.iv3173 to i32
  %i.cbd = call i32 %i.cax(ptr noundef %i.caz, i32 noundef %i.cbc, ptr noundef %i.cbb) #21
  %.not779 = icmp eq i32 %i.cbd, 1
  br i1 %.not779, label %.critedge908, label %bb.is

.critedge886:                                     ; preds = %bb.is, %.preheader2805, %tg3__json_is_array.exit1113.thread, %bb.ir
  %i.cbe = load i32, ptr %1, align 8, !tbaa !13
  %.not18.i.i1205 = icmp eq i32 %i.cbe, 6
  br i1 %.not18.i.i1205, label %.preheader.i.i1207, label %tg3__json_is_array.exit1229.thread

.preheader.i.i1207:                               ; preds = %.critedge886
  %i.cbf = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cbg = load i64, ptr %i.cbf, align 8, !tbaa !12 ; 2 uses
  %.not27.i.i1208 = icmp eq i64 %i.cbg, 0
  br i1 %.not27.i.i1208, label %tg3__json_is_array.exit1229.thread, label %.lr.ph.split.i.i1211.preheader

.lr.ph.split.i.i1211.preheader:                   ; preds = %.preheader.i.i1207
  %i.cbh = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cbi = load ptr, ptr %i.cbh, align 8, !tbaa !12 ; 2 uses
  br label %.lr.ph.split.i.i1211

.lr.ph.split.i.i1211:                             ; preds = %.lr.ph.split.i.i1211.preheader, %tg3json__memcmp_fallback.exit.i.i1213
  %.01425.i.i1212 = phi i64 [ %i.cbx, %tg3json__memcmp_fallback.exit.i.i1213 ], [ 0, %.lr.ph.split.i.i1211.preheader ] ; 3 uses
  %i.cbj = getelementptr inbounds nuw [24 x i8], ptr %i.cbi, i64 %.01425.i.i1212 ; 2 uses
  %i.cbk = getelementptr inbounds nuw i8, ptr %i.cbj, i64 8
  %i.cbl = load i64, ptr %i.cbk, align 8, !tbaa !54
  %i.cbm = icmp eq i64 %i.cbl, 5
  br i1 %i.cbm, label %.lr.ph.i.preheader.i.i1215, label %tg3json__memcmp_fallback.exit.i.i1213

.lr.ph.i.preheader.i.i1215:                       ; preds = %.lr.ph.split.i.i1211
  %i.cbn = load ptr, ptr %i.cbj, align 8, !tbaa !51 ; 5 uses
  %i.cbo = load i8, ptr %i.cbn, align 1, !tbaa !12
  %.not14.i.i.i1220 = icmp eq i8 %i.cbo, 110
  br i1 %.not14.i.i.i1220, label %.lr.ph.i.i.i1216.1, label %tg3json__memcmp_fallback.exit.i.i1213

.lr.ph.i.i.i1216.1:                               ; preds = %.lr.ph.i.preheader.i.i1215
  %i.cbp = getelementptr inbounds nuw i8, ptr %i.cbn, i64 1
  %i.cbq = load i8, ptr %i.cbp, align 1, !tbaa !12
  %.not14.i.i.i1220.1 = icmp eq i8 %i.cbq, 111
  br i1 %.not14.i.i.i1220.1, label %.lr.ph.i.i.i1216.2, label %tg3json__memcmp_fallback.exit.i.i1213

.lr.ph.i.i.i1216.2:                               ; preds = %.lr.ph.i.i.i1216.1
  %i.cbr = getelementptr inbounds nuw i8, ptr %i.cbn, i64 2
  %i.cbs = load i8, ptr %i.cbr, align 1, !tbaa !12
  %.not14.i.i.i1220.2 = icmp eq i8 %i.cbs, 100
  br i1 %.not14.i.i.i1220.2, label %.lr.ph.i.i.i1216.3, label %tg3json__memcmp_fallback.exit.i.i1213

.lr.ph.i.i.i1216.3:                               ; preds = %.lr.ph.i.i.i1216.2
end_hunk_2
begin_hunk_3_@tg3__parse_from_json:tg3json__strlen_fallback.exit.i
  %i.ctm = getelementptr i8, ptr %i.csn, i64 264
  store <16 x i8> zeroinitializer, ptr %next.gep4421.5, align 1, !tbaa !12
  store <16 x i8> zeroinitializer, ptr %i.ctm, align 1, !tbaa !12
  %next.gep4421.6 = getelementptr i8, ptr %i.csn, i64 280
  %i.ctn = getelementptr i8, ptr %i.csn, i64 296
  store <16 x i8> zeroinitializer, ptr %next.gep4421.6, align 1, !tbaa !12
  store <16 x i8> zeroinitializer, ptr %i.ctn, align 1, !tbaa !12
  %next.gep4433 = getelementptr i8, ptr %i.csn, i64 312
  store <8 x i8> zeroinitializer, ptr %next.gep4433, align 1, !tbaa !12
  store <2 x double> splat (double 1.000000e+00), ptr %i.ctg, align 8, !tbaa !116
  %i.cto = getelementptr inbounds nuw i8, ptr %i.csn, i64 104
  store <2 x double> splat (double 1.000000e+00), ptr %i.cto, align 8, !tbaa !116
  %i.ctp = getelementptr inbounds nuw i8, ptr %i.csn, i64 184 ; 2 uses
  %i.ctq = getelementptr inbounds nuw i8, ptr %i.csn, i64 192
  store <2 x double> splat (double 1.000000e+00), ptr %i.ctp, align 8, !tbaa !116
  %i.ctr = getelementptr inbounds nuw i8, ptr %i.csn, i64 120 ; 2 uses
  %i.cts = getelementptr inbounds nuw i8, ptr %i.csn, i64 124
  %i.ctt = getelementptr inbounds nuw i8, ptr %i.csn, i64 140
  store <16 x i8> zeroinitializer, ptr %i.cts, align 4, !tbaa !12
  %i.ctu = getelementptr inbounds nuw i8, ptr %i.csn, i64 156
  store <16 x i8> zeroinitializer, ptr %i.ctt, align 4, !tbaa !12
  %i.ctv = getelementptr inbounds nuw i8, ptr %i.csn, i64 172
  store <16 x i8> zeroinitializer, ptr %i.ctu, align 4, !tbaa !12
  %i.ctw = getelementptr inbounds nuw i8, ptr %i.csn, i64 180
  store <8 x i8> zeroinitializer, ptr %i.ctv, align 4, !tbaa !12
  store <4 x i8> zeroinitializer, ptr %i.ctw, align 4, !tbaa !12
  store i32 -1, ptr %i.ctr, align 8, !tbaa !397
  %i.ctx = getelementptr inbounds nuw i8, ptr %i.csn, i64 200 ; 2 uses
  %i.cty = getelementptr inbounds nuw i8, ptr %i.csn, i64 204
  %i.ctz = getelementptr inbounds nuw i8, ptr %i.csn, i64 220
  store <16 x i8> zeroinitializer, ptr %i.cty, align 4, !tbaa !12
  %i.cua = getelementptr inbounds nuw i8, ptr %i.csn, i64 236
  store <16 x i8> zeroinitializer, ptr %i.ctz, align 4, !tbaa !12
  %i.cub = getelementptr inbounds nuw i8, ptr %i.csn, i64 252
  store <16 x i8> zeroinitializer, ptr %i.cua, align 4, !tbaa !12
  %i.cuc = getelementptr inbounds nuw i8, ptr %i.csn, i64 260
  store <8 x i8> zeroinitializer, ptr %i.cub, align 4, !tbaa !12
  store <4 x i8> zeroinitializer, ptr %i.cuc, align 4, !tbaa !12
  store i32 -1, ptr %i.ctx, align 8, !tbaa !397
  %i.cud = getelementptr inbounds nuw i8, ptr %i.csn, i64 320 ; 3 uses
  %i.cue = getelementptr inbounds nuw i8, ptr %i.csn, i64 324 ; 3 uses
  %i.cuf = getelementptr inbounds nuw i8, ptr %i.csn, i64 328 ; 4 uses
  store <4 x i8> zeroinitializer, ptr %i.cue, align 4, !tbaa !12
  %i.cug = getelementptr inbounds nuw i8, ptr %i.csn, i64 329
  store i8 0, ptr %i.cuf, align 8, !tbaa !12
  store i8 0, ptr %i.cug, align 1, !tbaa !12
  %i.cuh = getelementptr inbounds nuw i8, ptr %i.csn, i64 336 ; 3 uses
  %i.cui = getelementptr inbounds nuw i8, ptr %i.csn, i64 352 ; 2 uses
  store <16 x i8> zeroinitializer, ptr %i.cuh, align 8, !tbaa !12
  %i.cuj = getelementptr inbounds nuw i8, ptr %i.csn, i64 368 ; 2 uses
  store <16 x i8> zeroinitializer, ptr %i.cui, align 8, !tbaa !12
  %i.cuk = getelementptr inbounds nuw i8, ptr %i.csn, i64 384 ; 2 uses
  store <16 x i8> zeroinitializer, ptr %i.cuj, align 8, !tbaa !12
  store <8 x i8> zeroinitializer, ptr %i.cuk, align 8, !tbaa !12
  store i32 -1, ptr %i.cud, align 8, !tbaa !399
  store double 1.000000e+00, ptr %i.cuf, align 8, !tbaa !401
  %i.cul = getelementptr inbounds nuw i8, ptr %i.csn, i64 392 ; 3 uses
  %i.cum = getelementptr inbounds nuw i8, ptr %i.csn, i64 396 ; 3 uses
  %i.cun = getelementptr inbounds nuw i8, ptr %i.csn, i64 400 ; 4 uses
  store <4 x i8> zeroinitializer, ptr %i.cum, align 4, !tbaa !12
  %i.cuo = getelementptr inbounds nuw i8, ptr %i.csn, i64 401
  store i8 0, ptr %i.cun, align 8, !tbaa !12
  store i8 0, ptr %i.cuo, align 1, !tbaa !12
  %i.cup = getelementptr inbounds nuw i8, ptr %i.csn, i64 408 ; 3 uses
  %i.cuq = getelementptr inbounds nuw i8, ptr %i.csn, i64 424 ; 2 uses
  store <16 x i8> zeroinitializer, ptr %i.cup, align 8, !tbaa !12
  %i.cur = getelementptr inbounds nuw i8, ptr %i.csn, i64 440 ; 2 uses
  store <16 x i8> zeroinitializer, ptr %i.cuq, align 8, !tbaa !12
  %i.cus = getelementptr inbounds nuw i8, ptr %i.csn, i64 456 ; 2 uses
  store <16 x i8> zeroinitializer, ptr %i.cur, align 8, !tbaa !12
  store <8 x i8> zeroinitializer, ptr %i.cus, align 8, !tbaa !12
  store i32 -1, ptr %i.cul, align 8, !tbaa !402
  store double 1.000000e+00, ptr %i.cun, align 8, !tbaa !404
  %i.cut = getelementptr inbounds nuw i8, ptr %i.csn, i64 464 ; 2 uses
  %i.cuu = getelementptr inbounds nuw i8, ptr %i.csn, i64 468
  %i.cuv = getelementptr inbounds nuw i8, ptr %i.csn, i64 484
  store <16 x i8> zeroinitializer, ptr %i.cuu, align 4, !tbaa !12
  %i.cuw = getelementptr inbounds nuw i8, ptr %i.csn, i64 500
  store <16 x i8> zeroinitializer, ptr %i.cuv, align 4, !tbaa !12
  %i.cux = getelementptr inbounds nuw i8, ptr %i.csn, i64 516
  store <16 x i8> zeroinitializer, ptr %i.cuw, align 4, !tbaa !12
  %i.cuy = getelementptr inbounds nuw i8, ptr %i.csn, i64 524
  store <8 x i8> zeroinitializer, ptr %i.cux, align 4, !tbaa !12
  store <4 x i8> zeroinitializer, ptr %i.cuy, align 4, !tbaa !12
  store i32 -1, ptr %i.cut, align 8, !tbaa !397
  %i.cuz = getelementptr inbounds nuw i8, ptr %i.csn, i64 56 ; 2 uses
  store double 5.000000e-01, ptr %i.cuz, align 8, !tbaa !405
  call fastcc void @tg3__parse_string(ptr noundef nonnull %0, ptr noundef nonnull readonly %i.csi, ptr noundef nonnull @.str.64, ptr noundef nonnull %i.csn, i32 noundef 0, ptr noundef nonnull @.str.140) #20
  %i.cva = getelementptr inbounds nuw i8, ptr %i.csn, i64 16
  call fastcc void @tg3__parse_number_to_fixed(ptr noundef nonnull readonly %i.csi, ptr noundef nonnull @.str.141, ptr noundef %i.cva, i32 noundef 3) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  store ptr null, ptr %4, align 8, !tbaa !343
  store i32 0, ptr %i.csd, align 8, !tbaa !344
  call fastcc void @tg3__parse_string(ptr noundef nonnull %0, ptr noundef nonnull readonly %i.csi, ptr noundef nonnull @.str.142, ptr noundef %4, i32 noundef 0, ptr noundef nonnull @.str.140) #20
  %i.cvb = getelementptr inbounds nuw i8, ptr %i.csn, i64 40 ; 2 uses
  %i.cvc = load i32, ptr %i.csd, align 8, !tbaa !344
  %.not.i1352 = icmp eq i32 %i.cvc, 0
  br i1 %.not.i1352, label %bb.jw, label %bb.jv

bb.jv:                                            ; preds = %iter.check4448
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cvb, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !408
  br label %bb.kd

bb.jw:                                            ; preds = %iter.check4448
  %i.cvd = load ptr, ptr %0, align 8, !tbaa !207  ; 9 uses
  %i.cve = icmp eq ptr %i.cvd, null
  br i1 %i.cve, label %tg3__arena_strdup.exit.i, label %bb.jx

bb.jx:                                            ; preds = %bb.jw
  %i.cvf = getelementptr inbounds nuw i8, ptr %i.cvd, i64 32
  %i.cvg = load i64, ptr %i.cvf, align 8, !tbaa !227 ; 3 uses
  %.not.i.i147.i = icmp ne i64 %i.cvg, 0
  %i.cvh = add i64 %i.cvg, -1
  %or.cond28.i.i.i1431 = icmp ult i64 %i.cvh, 6
  br i1 %or.cond28.i.i.i1431, label %tg3__arena_strdup.exit.i, label %bb.jy

bb.jy:                                            ; preds = %bb.jx
  %i.cvi = getelementptr inbounds nuw i8, ptr %i.cvd, i64 8 ; 3 uses
  %i.cvj = load ptr, ptr %i.cvi, align 8, !tbaa !241 ; 4 uses
  %.not26.i.i.i1432 = icmp eq ptr %i.cvj, null
  br i1 %.not26.i.i.i1432, label %bb.ka, label %bb.jz

bb.jz:                                            ; preds = %bb.jy
  %i.cvk = getelementptr inbounds nuw i8, ptr %i.cvj, i64 16 ; 2 uses
  %i.cvl = load i64, ptr %i.cvk, align 8, !tbaa !242 ; 2 uses
  %i.cvm = add i64 %i.cvl, 8                      ; 2 uses
  %i.cvn = getelementptr inbounds nuw i8, ptr %i.cvj, i64 24
  %i.cvo = load i64, ptr %i.cvn, align 8, !tbaa !244
  %i.cvp = icmp ugt i64 %i.cvm, %i.cvo
  br i1 %i.cvp, label %bb.ka, label %tg3__arena_alloc.exit.i.i1433

bb.ka:                                            ; preds = %bb.jz, %bb.jy
  %i.cvq = getelementptr inbounds nuw i8, ptr %i.cvd, i64 40
  %i.cvr = load i64, ptr %i.cvq, align 8, !tbaa !223
  %spec.select.i.i.i.i1436 = call i64 @llvm.umax.i64(i64 %i.cvr, i64 range(i64 0, -7) 8) ; 3 uses
  %i.cvs = icmp ugt i64 %spec.select.i.i.i.i1436, %i.cvg
  %or.cond.i.i.i.i1437 = select i1 %.not.i.i147.i, i1 %i.cvs, i1 false
  br i1 %or.cond.i.i.i.i1437, label %tg3__arena_strdup.exit.i, label %bb.kb

bb.kb:                                            ; preds = %bb.ka
  %i.cvt = getelementptr inbounds nuw i8, ptr %i.cvd, i64 16 ; 3 uses
  %i.cvu = load i64, ptr %i.cvt, align 8, !tbaa !245
  %i.cvv = add i64 %spec.select.i.i.i.i1436, 32   ; 3 uses
  %i.cvw = add i64 %i.cvu, %i.cvv
  %i.cvx = getelementptr inbounds nuw i8, ptr %i.cvd, i64 24
  %i.cvy = load i64, ptr %i.cvx, align 8, !tbaa !226
  %i.cvz = icmp ugt i64 %i.cvw, %i.cvy
  br i1 %i.cvz, label %tg3__arena_strdup.exit.i, label %bb.kc

bb.kc:                                            ; preds = %bb.kb
  %i.cwa = getelementptr inbounds nuw i8, ptr %i.cvd, i64 48
  %i.cwb = load ptr, ptr %i.cwa, align 8, !tbaa !246
  %i.cwc = getelementptr inbounds nuw i8, ptr %i.cvd, i64 72
  %i.cwd = load ptr, ptr %i.cwc, align 8, !tbaa !247
  %i.cwe = call ptr %i.cwb(i64 noundef %i.cvv, ptr noundef %i.cwd) #21, !inline_history !409 ; 8 uses
  %.not37.i.i.i.i1438 = icmp eq ptr %i.cwe, null
  br i1 %.not37.i.i.i.i1438, label %tg3__arena_strdup.exit.i, label %tg3__arena_alloc.exit.thread26.i.i

tg3__arena_alloc.exit.thread26.i.i:               ; preds = %bb.kc
  store ptr null, ptr %i.cwe, align 8, !tbaa !249
  %i.cwf = getelementptr inbounds nuw i8, ptr %i.cwe, i64 32 ; 2 uses
  %i.cwg = getelementptr inbounds nuw i8, ptr %i.cwe, i64 8
  store ptr %i.cwf, ptr %i.cwg, align 8, !tbaa !250
  %i.cwh = getelementptr inbounds nuw i8, ptr %i.cwe, i64 24
  store i64 %spec.select.i.i.i.i1436, ptr %i.cwh, align 8, !tbaa !244
  %i.cwi = load i64, ptr %i.cvt, align 8, !tbaa !245
  %i.cwj = add i64 %i.cwi, %i.cvv
  store i64 %i.cwj, ptr %i.cvt, align 8, !tbaa !245
  %i.cwk = load ptr, ptr %i.cvi, align 8, !tbaa !241 ; 2 uses
  %.not38.i.i.i.i1439 = icmp eq ptr %i.cwk, null
  %..i.i.i.i1440 = select i1 %.not38.i.i.i.i1439, ptr %i.cvd, ptr %i.cwk
  store ptr %i.cwe, ptr %..i.i.i.i1440, align 8, !tbaa !251
  store ptr %i.cwe, ptr %i.cvi, align 8, !tbaa !241
  %i.cwl = getelementptr inbounds nuw i8, ptr %i.cwe, i64 16
  store i64 8, ptr %i.cwl, align 8, !tbaa !242
  br label %.lr.ph.i.i148.i

tg3__arena_alloc.exit.i.i1433:                    ; preds = %bb.jz
  %.phi.trans.insert.i.i.i1434 = getelementptr inbounds nuw i8, ptr %i.cvj, i64 8
  %.pre.i.i.i1435 = load ptr, ptr %.phi.trans.insert.i.i.i1434, align 8, !tbaa !250 ; 2 uses
  %i.cwm = getelementptr inbounds nuw i8, ptr %.pre.i.i.i1435, i64 %i.cvl
  store i64 %i.cvm, ptr %i.cvk, align 8, !tbaa !242
  %.not14.i.i = icmp eq ptr %.pre.i.i.i1435, null
  br i1 %.not14.i.i, label %tg3__arena_strdup.exit.i, label %.lr.ph.i.i148.i

.lr.ph.i.i148.i:                                  ; preds = %tg3__arena_alloc.exit.i.i1433, %tg3__arena_alloc.exit.thread26.i.i
  %i.cwn = phi ptr [ %i.cwf, %tg3__arena_alloc.exit.thread26.i.i ], [ %i.cwm, %tg3__arena_alloc.exit.i.i1433 ] ; 5 uses
  %i.cwo = getelementptr inbounds nuw i8, ptr %i.cwn, i64 4
  store <4 x i8> <i8 79, i8 80, i8 65, i8 81>, ptr %i.cwn, align 1, !tbaa !12
  %i.cwp = getelementptr inbounds nuw i8, ptr %i.cwn, i64 5
  store i8 85, ptr %i.cwo, align 1, !tbaa !12
  store i8 69, ptr %i.cwp, align 1, !tbaa !12
  %i.cwq = getelementptr inbounds nuw i8, ptr %i.cwn, i64 6
  store i8 0, ptr %i.cwq, align 1, !tbaa !12
  br label %tg3__arena_strdup.exit.i

tg3__arena_strdup.exit.i:                         ; preds = %.lr.ph.i.i148.i, %tg3__arena_alloc.exit.i.i1433, %bb.kc, %bb.kb, %bb.ka, %bb.jx, %bb.jw
  %.0.i149.i = phi ptr [ %i.cwn, %.lr.ph.i.i148.i ], [ null, %bb.kc ], [ null, %tg3__arena_alloc.exit.i.i1433 ], [ null, %bb.jx ], [ null, %bb.jw ], [ null, %bb.kb ], [ null, %bb.ka ] ; 2 uses
  %.not.i63.i = icmp eq ptr %.0.i149.i, null
  %i.cwr = select i1 %.not.i63.i, i32 0, i32 6
  %9 = ptrtoint ptr %.0.i149.i to i64
  store i64 %9, ptr %i.cvb, align 8, !tbaa !9
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.csn, i64 48
  store i32 %i.cwr, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !43
  br label %bb.kd

bb.kd:                                            ; preds = %bb.jv, %tg3__arena_strdup.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call fastcc void @tg3__parse_double(ptr noundef nonnull %0, ptr noundef nonnull readonly %i.csi, ptr noundef nonnull @.str.144, ptr noundef %i.cuz, i32 noundef 0, ptr noundef nonnull @.str.140) #20
  %i.cws = getelementptr inbounds nuw i8, ptr %i.csn, i64 64
  call fastcc void @tg3__parse_bool(ptr noundef nonnull %0, ptr noundef nonnull readonly %i.csi, ptr noundef nonnull @.str.145, ptr noundef %i.cws, ptr noundef nonnull @.str.140) #20
  %i.cwt = load i32, ptr %i.csi, align 8, !tbaa !13
  %.not18.i.i.i.i1354 = icmp eq i32 %i.cwt, 6
  br i1 %.not18.i.i.i.i1354, label %.preheader.i.i.i.i1372, label %tg3__json_get.exit.i.i1355

.preheader.i.i.i.i1372:                           ; preds = %bb.kd
  %i.cwu = getelementptr inbounds nuw i8, ptr %i.csi, i64 16 ; 2 uses
  %i.cwv = load i64, ptr %i.cwu, align 8, !tbaa !12 ; 5 uses
  %.not27.i.i.i.i1373 = icmp eq i64 %i.cwv, 0
  br i1 %.not27.i.i.i.i1373, label %tg3__json_get.exit.i.i1355, label %.lr.ph.split.i.i.i.preheader.i1374

.lr.ph.split.i.i.i.preheader.i1374:               ; preds = %.preheader.i.i.i.i1372
  %i.cww = getelementptr inbounds nuw i8, ptr %i.csi, i64 8 ; 2 uses
  %i.cwx = load ptr, ptr %i.cww, align 8, !tbaa !12
  br label %.lr.ph.split.i.i.i.i1375

.lr.ph.split.i.i.i.i1375:                         ; preds = %tg3json__memcmp_fallback.exit.i.i.i.i1377, %.lr.ph.split.i.i.i.preheader.i1374
  %.01425.i.i.i.i1376 = phi i64 [ %i.cyq, %tg3json__memcmp_fallback.exit.i.i.i.i1377 ], [ 0, %.lr.ph.split.i.i.i.preheader.i1374 ] ; 2 uses
  %i.cwy = getelementptr inbounds nuw [24 x i8], ptr %i.cwx, i64 %.01425.i.i.i.i1376 ; 3 uses
  %i.cwz = getelementptr inbounds nuw i8, ptr %i.cwy, i64 8
  %i.cxa = load i64, ptr %i.cwz, align 8, !tbaa !54
  %i.cxb = icmp eq i64 %i.cxa, 20
  br i1 %i.cxb, label %.lr.ph.i.preheader.i.i.i.i1408, label %tg3json__memcmp_fallback.exit.i.i.i.i1377

.lr.ph.i.preheader.i.i.i.i1408:                   ; preds = %.lr.ph.split.i.i.i.i1375
  %i.cxc = load ptr, ptr %i.cwy, align 8, !tbaa !51 ; 20 uses
  %i.cxd = load i8, ptr %i.cxc, align 1, !tbaa !12
  %.not14.i.i.i.i.i1409 = icmp eq i8 %i.cxd, 112
  br i1 %.not14.i.i.i.i.i1409, label %.lr.ph.i.i.i.i.1.i1410, label %tg3json__memcmp_fallback.exit.i.i.i.i1377

.lr.ph.i.i.i.i.1.i1410:                           ; preds = %.lr.ph.i.preheader.i.i.i.i1408
  %i.cxe = getelementptr inbounds nuw i8, ptr %i.cxc, i64 1
  %i.cxf = load i8, ptr %i.cxe, align 1, !tbaa !12
  %.not14.i.i.i.i.1.i1411 = icmp eq i8 %i.cxf, 98
  br i1 %.not14.i.i.i.i.1.i1411, label %.lr.ph.i.i.i.i.2.i1412, label %tg3json__memcmp_fallback.exit.i.i.i.i1377

.lr.ph.i.i.i.i.2.i1412:                           ; preds = %.lr.ph.i.i.i.i.1.i1410
  %i.cxg = getelementptr inbounds nuw i8, ptr %i.cxc, i64 2
  %i.cxh = load i8, ptr %i.cxg, align 1, !tbaa !12
  %.not14.i.i.i.i.2.i1413 = icmp eq i8 %i.cxh, 114
  br i1 %.not14.i.i.i.i.2.i1413, label %.lr.ph.i.i.i.i.3.i1414, label %tg3json__memcmp_fallback.exit.i.i.i.i1377

.lr.ph.i.i.i.i.3.i1414:                           ; preds = %.lr.ph.i.i.i.i.2.i1412
  %i.cxi = getelementptr inbounds nuw i8, ptr %i.cxc, i64 3
  %i.cxj = load i8, ptr %i.cxi, align 1, !tbaa !12
  %.not14.i.i.i.i.3.i1415 = icmp eq i8 %i.cxj, 77
  br i1 %.not14.i.i.i.i.3.i1415, label %.lr.ph.i.i.i.i.4.i1416, label %tg3json__memcmp_fallback.exit.i.i.i.i1377

.lr.ph.i.i.i.i.4.i1416:                           ; preds = %.lr.ph.i.i.i.i.3.i1414
  %i.cxk = getelementptr inbounds nuw i8, ptr %i.cxc, i64 4
  %i.cxl = load i8, ptr %i.cxk, align 1, !tbaa !12
  %.not14.i.i.i.i.4.i1417 = icmp eq i8 %i.cxl, 101
  br i1 %.not14.i.i.i.i.4.i1417, label %.lr.ph.i.i.i.i.5.i1418, label %tg3json__memcmp_fallback.exit.i.i.i.i1377

.lr.ph.i.i.i.i.5.i1418:                           ; preds = %.lr.ph.i.i.i.i.4.i1416
  %i.cxm = getelementptr inbounds nuw i8, ptr %i.cxc, i64 5
  %i.cxn = load i8, ptr %i.cxm, align 1, !tbaa !12
  %.not14.i.i.i.i.5.i1419 = icmp eq i8 %i.cxn, 116
  br i1 %.not14.i.i.i.i.5.i1419, label %.lr.ph.i.i.i.i.6.i1420, label %tg3json__memcmp_fallback.exit.i.i.i.i1377

.lr.ph.i.i.i.i.6.i1420:                           ; preds = %.lr.ph.i.i.i.i.5.i1418
  %i.cxo = getelementptr inbounds nuw i8, ptr %i.cxc, i64 6
  %i.cxp = load i8, ptr %i.cxo, align 1, !tbaa !12
  %.not14.i.i.i.i.6.i1421 = icmp eq i8 %i.cxp, 97
  br i1 %.not14.i.i.i.i.6.i1421, label %.lr.ph.i.i.i.i.7.i1422, label %tg3json__memcmp_fallback.exit.i.i.i.i1377

.lr.ph.i.i.i.i.7.i1422:                           ; preds = %.lr.ph.i.i.i.i.6.i1420
  %i.cxq = getelementptr inbounds nuw i8, ptr %i.cxc, i64 7
  %i.cxr = load i8, ptr %i.cxq, align 1, !tbaa !12
  %.not14.i.i.i.i.7.i1423 = icmp eq i8 %i.cxr, 108
  br i1 %.not14.i.i.i.i.7.i1423, label %.lr.ph.i.i.i.i.8.i1424, label %tg3json__memcmp_fallback.exit.i.i.i.i1377

.lr.ph.i.i.i.i.8.i1424:                           ; preds = %.lr.ph.i.i.i.i.7.i1422
  %i.cxs = getelementptr inbounds nuw i8, ptr %i.cxc, i64 8
  %i.cxt = load i8, ptr %i.cxs, align 1, !tbaa !12
  %.not14.i.i.i.i.8.i1425 = icmp eq i8 %i.cxt, 108
  br i1 %.not14.i.i.i.i.8.i1425, label %.lr.ph.i.i.i.i.9.i1426, label %tg3json__memcmp_fallback.exit.i.i.i.i1377

.lr.ph.i.i.i.i.9.i1426:                           ; preds = %.lr.ph.i.i.i.i.8.i1424
  %i.cxu = getelementptr inbounds nuw i8, ptr %i.cxc, i64 9
  %i.cxv = load i8, ptr %i.cxu, align 1, !tbaa !12
  %.not14.i.i.i.i.9.i1427 = icmp eq i8 %i.cxv, 105
  br i1 %.not14.i.i.i.i.9.i1427, label %.lr.ph.i.i.i.i.10.i, label %tg3json__memcmp_fallback.exit.i.i.i.i1377

.lr.ph.i.i.i.i.10.i:                              ; preds = %.lr.ph.i.i.i.i.9.i1426
  %i.cxw = getelementptr inbounds nuw i8, ptr %i.cxc, i64 10
  %i.cxx = load i8, ptr %i.cxw, align 1, !tbaa !12
  %.not14.i.i.i.i.10.i = icmp eq i8 %i.cxx, 99
  br i1 %.not14.i.i.i.i.10.i, label %.lr.ph.i.i.i.i.11.i, label %tg3json__memcmp_fallback.exit.i.i.i.i1377

.lr.ph.i.i.i.i.11.i:                              ; preds = %.lr.ph.i.i.i.i.10.i
  %i.cxy = getelementptr inbounds nuw i8, ptr %i.cxc, i64 11
  %i.cxz = load i8, ptr %i.cxy, align 1, !tbaa !12
  %.not14.i.i.i.i.11.i = icmp eq i8 %i.cxz, 82
  br i1 %.not14.i.i.i.i.11.i, label %.lr.ph.i.i.i.i.12.i, label %tg3json__memcmp_fallback.exit.i.i.i.i1377

.lr.ph.i.i.i.i.12.i:                              ; preds = %.lr.ph.i.i.i.i.11.i
  %i.cya = getelementptr inbounds nuw i8, ptr %i.cxc, i64 12
  %i.cyb = load i8, ptr %i.cya, align 1, !tbaa !12
  %.not14.i.i.i.i.12.i = icmp eq i8 %i.cyb, 111
  br i1 %.not14.i.i.i.i.12.i, label %.lr.ph.i.i.i.i.13.i, label %tg3json__memcmp_fallback.exit.i.i.i.i1377

.lr.ph.i.i.i.i.13.i:                              ; preds = %.lr.ph.i.i.i.i.12.i
  %i.cyc = getelementptr inbounds nuw i8, ptr %i.cxc, i64 13
  %i.cyd = load i8, ptr %i.cyc, align 1, !tbaa !12
  %.not14.i.i.i.i.13.i = icmp eq i8 %i.cyd, 117
  br i1 %.not14.i.i.i.i.13.i, label %.lr.ph.i.i.i.i.14.i, label %tg3json__memcmp_fallback.exit.i.i.i.i1377

.lr.ph.i.i.i.i.14.i:                              ; preds = %.lr.ph.i.i.i.i.13.i
  %i.cye = getelementptr inbounds nuw i8, ptr %i.cxc, i64 14
  %i.cyf = load i8, ptr %i.cye, align 1, !tbaa !12
  %.not14.i.i.i.i.14.i = icmp eq i8 %i.cyf, 103
  br i1 %.not14.i.i.i.i.14.i, label %.lr.ph.i.i.i.i.15.i, label %tg3json__memcmp_fallback.exit.i.i.i.i1377

.lr.ph.i.i.i.i.15.i:                              ; preds = %.lr.ph.i.i.i.i.14.i
  %i.cyg = getelementptr inbounds nuw i8, ptr %i.cxc, i64 15
  %i.cyh = load i8, ptr %i.cyg, align 1, !tbaa !12
  %.not14.i.i.i.i.15.i = icmp eq i8 %i.cyh, 104
  br i1 %.not14.i.i.i.i.15.i, label %.lr.ph.i.i.i.i.16.i, label %tg3json__memcmp_fallback.exit.i.i.i.i1377

.lr.ph.i.i.i.i.16.i:                              ; preds = %.lr.ph.i.i.i.i.15.i
  %i.cyi = getelementptr inbounds nuw i8, ptr %i.cxc, i64 16
  %i.cyj = load i8, ptr %i.cyi, align 1, !tbaa !12
  %.not14.i.i.i.i.16.i = icmp eq i8 %i.cyj, 110
  br i1 %.not14.i.i.i.i.16.i, label %.lr.ph.i.i.i.i.17.i, label %tg3json__memcmp_fallback.exit.i.i.i.i1377

.lr.ph.i.i.i.i.17.i:                              ; preds = %.lr.ph.i.i.i.i.16.i
  %i.cyk = getelementptr inbounds nuw i8, ptr %i.cxc, i64 17
  %i.cyl = load i8, ptr %i.cyk, align 1, !tbaa !12
  %.not14.i.i.i.i.17.i = icmp eq i8 %i.cyl, 101
  br i1 %.not14.i.i.i.i.17.i, label %.lr.ph.i.i.i.i.18.i, label %tg3json__memcmp_fallback.exit.i.i.i.i1377

.lr.ph.i.i.i.i.18.i:                              ; preds = %.lr.ph.i.i.i.i.17.i
  %i.cym = getelementptr inbounds nuw i8, ptr %i.cxc, i64 18
  %i.cyn = load i8, ptr %i.cym, align 1, !tbaa !12
  %.not14.i.i.i.i.18.i = icmp eq i8 %i.cyn, 115
  br i1 %.not14.i.i.i.i.18.i, label %.lr.ph.i.i.i.i.19.i, label %tg3json__memcmp_fallback.exit.i.i.i.i1377

.lr.ph.i.i.i.i.19.i:                              ; preds = %.lr.ph.i.i.i.i.18.i
  %i.cyo = getelementptr inbounds nuw i8, ptr %i.cxc, i64 19
  %i.cyp = load i8, ptr %i.cyo, align 1, !tbaa !12
  %.not14.i.i.i.i.19.i = icmp eq i8 %i.cyp, 115
  br i1 %.not14.i.i.i.i.19.i, label %tg3__json_get.exit.i1428, label %tg3json__memcmp_fallback.exit.i.i.i.i1377

tg3json__memcmp_fallback.exit.i.i.i.i1377:        ; preds = %.lr.ph.i.i.i.i.19.i, %.lr.ph.i.i.i.i.18.i, %.lr.ph.i.i.i.i.17.i, %.lr.ph.i.i.i.i.16.i, %.lr.ph.i.i.i.i.15.i, %.lr.ph.i.i.i.i.14.i, %.lr.ph.i.i.i.i.13.i, %.lr.ph.i.i.i.i.12.i, %.lr.ph.i.i.i.i.11.i, %.lr.ph.i.i.i.i.10.i, %.lr.ph.i.i.i.i.9.i1426, %.lr.ph.i.i.i.i.8.i1424, %.lr.ph.i.i.i.i.7.i1422, %.lr.ph.i.i.i.i.6.i1420, %.lr.ph.i.i.i.i.5.i1418, %.lr.ph.i.i.i.i.4.i1416, %.lr.ph.i.i.i.i.3.i1414, %.lr.ph.i.i.i.i.2.i1412, %.lr.ph.i.i.i.i.1.i1410, %.lr.ph.i.preheader.i.i.i.i1408, %.lr.ph.split.i.i.i.i1375
  %i.cyq = add nuw i64 %.01425.i.i.i.i1376, 1     ; 2 uses
  %exitcond.not.i.i.i.i1378 = icmp eq i64 %i.cyq, %i.cwv
  br i1 %exitcond.not.i.i.i.i1378, label %.lr.ph.split.i.i.i.preheader.i.i1382, label %.lr.ph.split.i.i.i.i1375, !llvm.loop !83

tg3__json_get.exit.i1428:                         ; preds = %.lr.ph.i.i.i.i.19.i
  %i.cyr = getelementptr inbounds nuw i8, ptr %i.cwy, i64 16
  %i.cys = load ptr, ptr %i.cyr, align 8, !tbaa !55 ; 8 uses
  %.not.i64.i = icmp eq ptr %i.cys, null
  br i1 %.not.i64.i, label %.preheader.i.i.i.i.i1379, label %tg3__json_is_object.exit.i1429

tg3__json_is_object.exit.i1429:                   ; preds = %tg3__json_get.exit.i1428
  %i.cyt = load i32, ptr %i.cys, align 8, !tbaa !13
  %.not169.i = icmp eq i32 %i.cyt, 6
  br i1 %.not169.i, label %tg3__json_is_object.exit.thread.thread.i, label %.preheader.i.i.i.i.i1379

tg3__json_is_object.exit.thread.thread.i:         ; preds = %tg3__json_is_object.exit.i1429
  call fastcc void @tg3__parse_number_to_fixed(ptr noundef nonnull %i.cys, ptr noundef nonnull @.str.147, ptr noundef %i.ctg, i32 noundef 4) #20
  call fastcc void @tg3__parse_double(ptr noundef nonnull %0, ptr noundef nonnull %i.cys, ptr noundef nonnull @.str.148, ptr noundef %i.ctp, i32 noundef 0, ptr noundef nonnull @.str.149) #20
  call fastcc void @tg3__parse_double(ptr noundef nonnull %0, ptr noundef nonnull %i.cys, ptr noundef nonnull @.str.150, ptr noundef %i.ctq, i32 noundef 0, ptr noundef nonnull @.str.149) #20
  call fastcc void @tg3__parse_texture_info(ptr noundef nonnull %0, ptr noundef nonnull %i.cys, ptr noundef nonnull @.str.151, ptr noundef %i.ctr) #20
  call fastcc void @tg3__parse_texture_info(ptr noundef nonnull %0, ptr noundef nonnull %i.cys, ptr noundef nonnull @.str.152, ptr noundef %i.ctx) #20
  %i.cyu = getelementptr inbounds nuw i8, ptr %i.csn, i64 264
  call fastcc void @tg3__parse_extras_and_extensions(ptr noundef nonnull %0, ptr noundef nonnull %i.cys, ptr noundef %i.cyu) #20
  %.pr.pre.i1430 = load i32, ptr %i.csi, align 8, !tbaa !13
  %i.cyv = icmp eq i32 %.pr.pre.i1430, 6
  br i1 %i.cyv, label %tg3__json_is_object.exit.thread.thread.i..preheader.i.i.i.i.i1379_crit_edge, label %tg3__json_get.exit.i.i1355

tg3__json_is_object.exit.thread.thread.i..preheader.i.i.i.i.i1379_crit_edge: ; preds = %tg3__json_is_object.exit.thread.thread.i
  %.pr.i1380.pre = load i64, ptr %i.cwu, align 8, !tbaa !12
  br label %.preheader.i.i.i.i.i1379

.preheader.i.i.i.i.i1379:                         ; preds = %tg3__json_is_object.exit.thread.thread.i..preheader.i.i.i.i.i1379_crit_edge, %tg3__json_is_object.exit.i1429, %tg3__json_get.exit.i1428
  %.pr.i1380 = phi i64 [ %.pr.i1380.pre, %tg3__json_is_object.exit.thread.thread.i..preheader.i.i.i.i.i1379_crit_edge ], [ %i.cwv, %tg3__json_get.exit.i1428 ], [ %i.cwv, %tg3__json_is_object.exit.i1429 ] ; 2 uses
  %.not27.i.i.i.i.i1381 = icmp eq i64 %.pr.i1380, 0
  br i1 %.not27.i.i.i.i.i1381, label %tg3__json_get.exit.i.i1355, label %.lr.ph.split.i.i.i.preheader.i.i1382

.lr.ph.split.i.i.i.preheader.i.i1382:             ; preds = %tg3json__memcmp_fallback.exit.i.i.i.i1377, %.preheader.i.i.i.i.i1379
  %.pr.i13803710 = phi i64 [ %.pr.i1380, %.preheader.i.i.i.i.i1379 ], [ %i.cwv, %tg3json__memcmp_fallback.exit.i.i.i.i1377 ]
  %i.cyw = load ptr, ptr %i.cww, align 8, !tbaa !12
  br label %.lr.ph.split.i.i.i.i.i1383

.lr.ph.split.i.i.i.i.i1383:                       ; preds = %tg3json__memcmp_fallback.exit.i.i.i.i.i1385, %.lr.ph.split.i.i.i.preheader.i.i1382
  %.01425.i.i.i.i.i1384 = phi i64 [ %i.dad, %tg3json__memcmp_fallback.exit.i.i.i.i.i1385 ], [ 0, %.lr.ph.split.i.i.i.preheader.i.i1382 ] ; 2 uses
  %i.cyx = getelementptr inbounds nuw [24 x i8], ptr %i.cyw, i64 %.01425.i.i.i.i.i1384 ; 3 uses
  %i.cyy = getelementptr inbounds nuw i8, ptr %i.cyx, i64 8
  %i.cyz = load i64, ptr %i.cyy, align 8, !tbaa !54
  %i.cza = icmp eq i64 %i.cyz, 13
end_hunk_3
begin_hunk_4_@tg3__parse_from_json:tg3json__strlen_fallback.exit.i
  %i.efy = icmp ugt i64 %spec.select.i.i183.i, %i.efm
  %or.cond.i.i184.i = select i1 %.not.i175.i, i1 %i.efy, i1 false
  br i1 %or.cond.i.i184.i, label %tg3__parse_animation.exit, label %bb.nv

bb.nv:                                            ; preds = %bb.nu
  %i.efz = getelementptr inbounds nuw i8, ptr %i.efh, i64 16 ; 3 uses
  %i.ega = load i64, ptr %i.efz, align 8, !tbaa !245
  %i.egb = add i64 %spec.select.i.i183.i, 32      ; 3 uses
  %i.egc = add i64 %i.ega, %i.egb
  %i.egd = getelementptr inbounds nuw i8, ptr %i.efh, i64 24
  %i.ege = load i64, ptr %i.egd, align 8, !tbaa !226
  %i.egf = icmp ugt i64 %i.egc, %i.ege
  br i1 %i.egf, label %tg3__parse_animation.exit, label %bb.nw

bb.nw:                                            ; preds = %bb.nv
  %i.egg = getelementptr inbounds nuw i8, ptr %i.efh, i64 48
  %i.egh = load ptr, ptr %i.egg, align 8, !tbaa !246
  %i.egi = getelementptr inbounds nuw i8, ptr %i.efh, i64 72
  %i.egj = load ptr, ptr %i.egi, align 8, !tbaa !247
  %i.egk = call ptr %i.egh(i64 noundef %i.egb, ptr noundef %i.egj) #21, !inline_history !446 ; 8 uses
  %.not37.i.i185.i = icmp eq ptr %i.egk, null
  br i1 %.not37.i.i185.i, label %tg3__parse_animation.exit, label %tg3__arena_alloc.exit189.thread.i

tg3__arena_alloc.exit189.thread.i:                ; preds = %bb.nw
  store ptr null, ptr %i.egk, align 8, !tbaa !249
  %i.egl = getelementptr inbounds nuw i8, ptr %i.egk, i64 32 ; 2 uses
  %i.egm = getelementptr inbounds nuw i8, ptr %i.egk, i64 8
  store ptr %i.egl, ptr %i.egm, align 8, !tbaa !250
  %i.egn = getelementptr inbounds nuw i8, ptr %i.egk, i64 24
  store i64 %spec.select.i.i183.i, ptr %i.egn, align 8, !tbaa !244
  %i.ego = load i64, ptr %i.efz, align 8, !tbaa !245
  %i.egp = add i64 %i.ego, %i.egb
  store i64 %i.egp, ptr %i.efz, align 8, !tbaa !245
  %i.egq = load ptr, ptr %i.efo, align 8, !tbaa !241 ; 2 uses
  %.not38.i.i187.i = icmp eq ptr %i.egq, null
  %..i.i188.i = select i1 %.not38.i.i187.i, ptr %i.efh, ptr %i.egq
  store ptr %i.egk, ptr %..i.i188.i, align 8, !tbaa !251
  store ptr %i.egk, ptr %i.efo, align 8, !tbaa !241
  %i.egr = getelementptr inbounds nuw i8, ptr %i.egk, i64 16
  store i64 %i.efi, ptr %i.egr, align 8, !tbaa !242
  br label %.preheader.i1736

tg3__arena_alloc.exit189.i:                       ; preds = %bb.nt
  %.phi.trans.insert.i179.i = getelementptr inbounds nuw i8, ptr %i.efp, i64 8
  %.pre.i180.i = load ptr, ptr %.phi.trans.insert.i179.i, align 8, !tbaa !250 ; 2 uses
  %i.egs = getelementptr inbounds nuw i8, ptr %.pre.i180.i, i64 %i.efr
  store i64 %i.efs, ptr %i.efq, align 8, !tbaa !242
  %.not98.i = icmp eq ptr %.pre.i180.i, null
  br i1 %.not98.i, label %tg3__parse_animation.exit, label %.preheader.i1736

.preheader.i1736:                                 ; preds = %tg3__arena_alloc.exit189.i, %tg3__arena_alloc.exit189.thread.i
  %i.egt = phi ptr [ %i.egl, %tg3__arena_alloc.exit189.thread.i ], [ %i.egs, %tg3__arena_alloc.exit189.i ] ; 2 uses
  %i.egu = getelementptr inbounds nuw i8, ptr %.0.i.i107.i, i64 8
  br label %bb.nx

bb.nx:                                            ; preds = %bb.oi, %.preheader.i1736
  %.0233.i = phi i64 [ 0, %.preheader.i1736 ], [ %i.eix, %bb.oi ] ; 4 uses
  %i.egv = load i32, ptr %.0.i.i107.i, align 8, !tbaa !13
  %.not8.i191.i = icmp eq i32 %i.egv, 5
  br i1 %.not8.i191.i, label %bb.ny, label %tg3json_array_get.exit194.i

bb.ny:                                            ; preds = %bb.nx
  %i.egw = load i64, ptr %i.eff, align 8, !tbaa !12
  %.not9.i193.i = icmp ult i64 %.0233.i, %i.egw
  br i1 %.not9.i193.i, label %bb.nz, label %tg3json_array_get.exit194.i

bb.nz:                                            ; preds = %bb.ny
  %i.egx = load ptr, ptr %i.egu, align 8, !tbaa !12
  %i.egy = getelementptr inbounds nuw [24 x i8], ptr %i.egx, i64 %.0233.i
  br label %tg3json_array_get.exit194.i

tg3json_array_get.exit194.i:                      ; preds = %bb.nz, %bb.ny, %bb.nx
  %.0.i192.i = phi ptr [ %i.egy, %bb.nz ], [ null, %bb.ny ], [ null, %bb.nx ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.egz = getelementptr inbounds nuw [80 x i8], ptr %i.egt, i64 %.0233.i ; 10 uses
  store i8 0, ptr %i.egz, align 1, !tbaa !12
  %i.eha = getelementptr inbounds nuw i8, ptr %i.egz, i64 4 ; 2 uses
  %i.ehb = getelementptr inbounds nuw i8, ptr %i.egz, i64 8 ; 3 uses
  %i.ehc = getelementptr inbounds nuw i8, ptr %i.egz, i64 16
  %i.ehd = getelementptr inbounds nuw i8, ptr %i.egz, i64 24 ; 2 uses
  store <16 x i8> zeroinitializer, ptr %i.ehb, align 1, !tbaa !12
  %i.ehe = getelementptr inbounds nuw i8, ptr %i.egz, i64 40
  store <16 x i8> zeroinitializer, ptr %i.ehd, align 1, !tbaa !12
  %i.ehf = getelementptr inbounds nuw i8, ptr %i.egz, i64 56
  store <16 x i8> zeroinitializer, ptr %i.ehe, align 1, !tbaa !12
  %i.ehg = getelementptr inbounds nuw i8, ptr %i.egz, i64 72
  store <16 x i8> zeroinitializer, ptr %i.ehf, align 1, !tbaa !12
  store <8 x i8> zeroinitializer, ptr %i.ehg, align 1, !tbaa !12
  store i32 -1, ptr %i.egz, align 8, !tbaa !457
  store i32 -1, ptr %i.eha, align 4, !tbaa !459
  call fastcc void @tg3__parse_int(ptr noundef nonnull %0, ptr noundef %.0.i192.i, ptr noundef nonnull @.str.180, ptr noundef %i.egz, i32 noundef 1, ptr noundef nonnull @.str.181) #20
  call fastcc void @tg3__parse_int(ptr noundef nonnull %0, ptr noundef %.0.i192.i, ptr noundef nonnull @.str.182, ptr noundef %i.eha, i32 noundef 1, ptr noundef nonnull @.str.181) #20
  store ptr null, ptr %3, align 8, !tbaa !343
  store i32 0, ptr %i.dzg, align 8, !tbaa !344
  call fastcc void @tg3__parse_string(ptr noundef nonnull %0, ptr noundef %.0.i192.i, ptr noundef nonnull @.str.183, ptr noundef %3, i32 noundef 0, ptr noundef nonnull @.str.181) #20
  %i.ehh = load i32, ptr %i.dzg, align 8, !tbaa !344
  %.not99.i = icmp eq i32 %i.ehh, 0
  br i1 %.not99.i, label %bb.ob, label %bb.oa

bb.oa:                                            ; preds = %tg3json_array_get.exit194.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ehb, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !408
  br label %bb.oi

bb.ob:                                            ; preds = %tg3json_array_get.exit194.i
  %i.ehi = load ptr, ptr %0, align 8, !tbaa !207  ; 9 uses
  %i.ehj = icmp eq ptr %i.ehi, null
  br i1 %i.ehj, label %tg3__arena_strdup.exit.i1745, label %bb.oc

bb.oc:                                            ; preds = %bb.ob
  %i.ehk = getelementptr inbounds nuw i8, ptr %i.ehi, i64 32
  %i.ehl = load i64, ptr %i.ehk, align 8, !tbaa !227 ; 3 uses
  %.not.i.i.i1737 = icmp ne i64 %i.ehl, 0
  %i.ehm = add i64 %i.ehl, -1
  %or.cond28.i.i.i1738 = icmp ult i64 %i.ehm, 6
  br i1 %or.cond28.i.i.i1738, label %tg3__arena_strdup.exit.i1745, label %bb.od

bb.od:                                            ; preds = %bb.oc
  %i.ehn = getelementptr inbounds nuw i8, ptr %i.ehi, i64 8 ; 3 uses
  %i.eho = load ptr, ptr %i.ehn, align 8, !tbaa !241 ; 4 uses
  %.not26.i.i.i1739 = icmp eq ptr %i.eho, null
  br i1 %.not26.i.i.i1739, label %bb.of, label %bb.oe

bb.oe:                                            ; preds = %bb.od
  %i.ehp = getelementptr inbounds nuw i8, ptr %i.eho, i64 16 ; 2 uses
  %i.ehq = load i64, ptr %i.ehp, align 8, !tbaa !242 ; 2 uses
  %i.ehr = add i64 %i.ehq, 8                      ; 2 uses
  %i.ehs = getelementptr inbounds nuw i8, ptr %i.eho, i64 24
  %i.eht = load i64, ptr %i.ehs, align 8, !tbaa !244
  %i.ehu = icmp ugt i64 %i.ehr, %i.eht
  br i1 %i.ehu, label %bb.of, label %tg3__arena_alloc.exit.i.i1740

bb.of:                                            ; preds = %bb.oe, %bb.od
  %i.ehv = getelementptr inbounds nuw i8, ptr %i.ehi, i64 40
  %i.ehw = load i64, ptr %i.ehv, align 8, !tbaa !223
  %spec.select.i.i.i.i1747 = call i64 @llvm.umax.i64(i64 %i.ehw, i64 range(i64 0, -7) 8) ; 3 uses
  %i.ehx = icmp ugt i64 %spec.select.i.i.i.i1747, %i.ehl
  %or.cond.i.i.i.i1748 = select i1 %.not.i.i.i1737, i1 %i.ehx, i1 false
  br i1 %or.cond.i.i.i.i1748, label %tg3__arena_strdup.exit.i1745, label %bb.og

bb.og:                                            ; preds = %bb.of
  %i.ehy = getelementptr inbounds nuw i8, ptr %i.ehi, i64 16 ; 3 uses
  %i.ehz = load i64, ptr %i.ehy, align 8, !tbaa !245
  %i.eia = add i64 %spec.select.i.i.i.i1747, 32   ; 3 uses
  %i.eib = add i64 %i.ehz, %i.eia
  %i.eic = getelementptr inbounds nuw i8, ptr %i.ehi, i64 24
  %i.eid = load i64, ptr %i.eic, align 8, !tbaa !226
  %i.eie = icmp ugt i64 %i.eib, %i.eid
  br i1 %i.eie, label %tg3__arena_strdup.exit.i1745, label %bb.oh

bb.oh:                                            ; preds = %bb.og
  %i.eif = getelementptr inbounds nuw i8, ptr %i.ehi, i64 48
  %i.eig = load ptr, ptr %i.eif, align 8, !tbaa !246
  %i.eih = getelementptr inbounds nuw i8, ptr %i.ehi, i64 72
  %i.eii = load ptr, ptr %i.eih, align 8, !tbaa !247
  %i.eij = call ptr %i.eig(i64 noundef %i.eia, ptr noundef %i.eii) #21, !inline_history !460 ; 8 uses
  %.not37.i.i.i.i1749 = icmp eq ptr %i.eij, null
  br i1 %.not37.i.i.i.i1749, label %tg3__arena_strdup.exit.i1745, label %tg3__arena_alloc.exit.thread26.i.i1750

tg3__arena_alloc.exit.thread26.i.i1750:           ; preds = %bb.oh
  store ptr null, ptr %i.eij, align 8, !tbaa !249
  %i.eik = getelementptr inbounds nuw i8, ptr %i.eij, i64 32 ; 2 uses
  %i.eil = getelementptr inbounds nuw i8, ptr %i.eij, i64 8
  store ptr %i.eik, ptr %i.eil, align 8, !tbaa !250
  %i.eim = getelementptr inbounds nuw i8, ptr %i.eij, i64 24
  store i64 %spec.select.i.i.i.i1747, ptr %i.eim, align 8, !tbaa !244
  %i.ein = load i64, ptr %i.ehy, align 8, !tbaa !245
  %i.eio = add i64 %i.ein, %i.eia
  store i64 %i.eio, ptr %i.ehy, align 8, !tbaa !245
  %i.eip = load ptr, ptr %i.ehn, align 8, !tbaa !241 ; 2 uses
  %.not38.i.i.i.i1751 = icmp eq ptr %i.eip, null
  %..i.i.i.i1752 = select i1 %.not38.i.i.i.i1751, ptr %i.ehi, ptr %i.eip
  store ptr %i.eij, ptr %..i.i.i.i1752, align 8, !tbaa !251
  store ptr %i.eij, ptr %i.ehn, align 8, !tbaa !241
  %i.eiq = getelementptr inbounds nuw i8, ptr %i.eij, i64 16
  store i64 8, ptr %i.eiq, align 8, !tbaa !242
  br label %.lr.ph.i.i.i1744

tg3__arena_alloc.exit.i.i1740:                    ; preds = %bb.oe
  %.phi.trans.insert.i.i.i1741 = getelementptr inbounds nuw i8, ptr %i.eho, i64 8
  %.pre.i.i.i1742 = load ptr, ptr %.phi.trans.insert.i.i.i1741, align 8, !tbaa !250 ; 2 uses
  %i.eir = getelementptr inbounds nuw i8, ptr %.pre.i.i.i1742, i64 %i.ehq
  store i64 %i.ehr, ptr %i.ehp, align 8, !tbaa !242
  %.not14.i.i1743 = icmp eq ptr %.pre.i.i.i1742, null
  br i1 %.not14.i.i1743, label %tg3__arena_strdup.exit.i1745, label %.lr.ph.i.i.i1744

.lr.ph.i.i.i1744:                                 ; preds = %tg3__arena_alloc.exit.i.i1740, %tg3__arena_alloc.exit.thread26.i.i1750
  %i.eis = phi ptr [ %i.eik, %tg3__arena_alloc.exit.thread26.i.i1750 ], [ %i.eir, %tg3__arena_alloc.exit.i.i1740 ] ; 5 uses
  %i.eit = getelementptr inbounds nuw i8, ptr %i.eis, i64 4
  store <4 x i8> <i8 76, i8 73, i8 78, i8 69>, ptr %i.eis, align 1, !tbaa !12
  %i.eiu = getelementptr inbounds nuw i8, ptr %i.eis, i64 5
  store i8 65, ptr %i.eit, align 1, !tbaa !12
  store i8 82, ptr %i.eiu, align 1, !tbaa !12
  %i.eiv = getelementptr inbounds nuw i8, ptr %i.eis, i64 6
  store i8 0, ptr %i.eiv, align 1, !tbaa !12
  br label %tg3__arena_strdup.exit.i1745

tg3__arena_strdup.exit.i1745:                     ; preds = %.lr.ph.i.i.i1744, %tg3__arena_alloc.exit.i.i1740, %bb.oh, %bb.og, %bb.of, %bb.oc, %bb.ob
  %.0.i201.i = phi ptr [ %i.eis, %.lr.ph.i.i.i1744 ], [ null, %bb.oh ], [ null, %tg3__arena_alloc.exit.i.i1740 ], [ null, %bb.oc ], [ null, %bb.ob ], [ null, %bb.og ], [ null, %bb.of ] ; 2 uses
  %.not.i199.i = icmp eq ptr %.0.i201.i, null
  %i.eiw = select i1 %.not.i199.i, i32 0, i32 6
  %10 = ptrtoint ptr %.0.i201.i to i64
  store i64 %10, ptr %i.ehb, align 8, !tbaa !9
  store i32 %i.eiw, ptr %i.ehc, align 8, !tbaa !43
  br label %bb.oi

bb.oi:                                            ; preds = %tg3__arena_strdup.exit.i1745, %bb.oa
  call fastcc void @tg3__parse_extras_and_extensions(ptr noundef nonnull %0, ptr noundef %.0.i192.i, ptr noundef %i.ehd) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  %i.eix = add nuw i64 %.0233.i, 1                ; 2 uses
  %exitcond250.not.i = icmp eq i64 %i.eix, %i.efg
  br i1 %exitcond250.not.i, label %bb.oj, label %bb.nx, !llvm.loop !461

bb.oj:                                            ; preds = %bb.oi
  store ptr %i.egt, ptr %i.ebr, align 8, !tbaa !462
  %i.eiy = trunc i64 %i.efg to i32
  store i32 %i.eiy, ptr %i.ebs, align 8, !tbaa !463
  br label %tg3__parse_animation.exit

tg3__parse_animation.exit:                        ; preds = %tg3__json_is_array.exit.thread.i, %tg3__json_is_array.exit169.i, %tg3json_array_size.exit173.i, %bb.nq, %bb.nr, %bb.nu, %bb.nv, %bb.nw, %tg3__arena_alloc.exit189.i, %bb.oj
  call fastcc void @tg3__parse_extras_and_extensions(ptr noundef nonnull %0, ptr noundef nonnull readonly %i.dzl, ptr noundef %i.ebt) #20
  br label %bb.ok

bb.ok:                                            ; preds = %tg3__parse_animation.exit, %tg3__json_is_object.exit1728.thread
  %i.eiz = add nuw i64 %.06482975, 1              ; 2 uses
  %exitcond3214.not = icmp eq i64 %i.eiz, %i.dxp
  br i1 %exitcond3214.not, label %bb.ol, label %bb.nb, !llvm.loop !464

bb.ol:                                            ; preds = %bb.ok
  %i.eja = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.dze, ptr %i.eja, align 8, !tbaa !465
  %i.ejb = trunc i64 %i.dxp to i32
  %i.ejc = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i32 %i.ejb, ptr %i.ejc, align 8, !tbaa !466
  br label %tg3__json_is_array.exit1701.thread

tg3__json_is_array.exit1701.thread:               ; preds = %tg3json__memcmp_fallback.exit.i.i1685, %bb.na, %bb.my, %bb.mz, %bb.mu, %bb.mv, %.preheader.i.i1679, %.critedge898, %tg3json_object_get.exit1699, %tg3json_array_size.exit1705, %bb.ol, %tg3__arena_alloc.exit1721, %tg3__json_is_array.exit1701
  %i.ejd = load ptr, ptr %i.dg, align 8, !tbaa !237 ; 2 uses
  %.not826 = icmp eq ptr %i.ejd, null
  br i1 %.not826, label %.critedge900, label %bb.om

bb.om:                                            ; preds = %tg3__json_is_array.exit1701.thread
  %i.eje = getelementptr inbounds nuw i8, ptr %i.ejd, i64 80
  %i.ejf = load ptr, ptr %i.eje, align 8, !tbaa !467
  %.not827 = icmp eq ptr %i.ejf, null
  br i1 %.not827, label %.critedge900, label %.preheader2769

.preheader2769:                                   ; preds = %bb.om
  %i.ejg = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.ejh = load i32, ptr %i.ejg, align 8, !tbaa !466
  %.not8292977.not = icmp eq i32 %i.ejh, 0
  br i1 %.not8292977.not, label %.critedge900, label %.lr.ph2979

.lr.ph2979:                                       ; preds = %.preheader2769
  %i.eji = getelementptr inbounds nuw i8, ptr %2, i64 24
  br label %bb.oo

bb.on:                                            ; preds = %bb.oo
  %indvars.iv.next3216 = add nuw nsw i64 %indvars.iv3215, 1 ; 2 uses
  %i.ejj = load i32, ptr %i.ejg, align 8, !tbaa !466
  %i.ejk = zext i32 %i.ejj to i64
  %.not829 = icmp samesign ult i64 %indvars.iv.next3216, %i.ejk
  br i1 %.not829, label %bb.oo, label %.critedge900, !llvm.loop !468

bb.oo:                                            ; preds = %.lr.ph2979, %bb.on
  %indvars.iv3215 = phi i64 [ 0, %.lr.ph2979 ], [ %indvars.iv.next3216, %bb.on ] ; 3 uses
  %i.ejl = load ptr, ptr %i.dg, align 8, !tbaa !237 ; 2 uses
  %i.ejm = getelementptr inbounds nuw i8, ptr %i.ejl, i64 80
  %i.ejn = load ptr, ptr %i.ejm, align 8, !tbaa !467
  %i.ejo = load ptr, ptr %i.eji, align 8, !tbaa !465
  %i.ejp = getelementptr inbounds nuw [104 x i8], ptr %i.ejo, i64 %indvars.iv3215
  %i.ejq = getelementptr inbounds nuw i8, ptr %i.ejl, i64 120
  %i.ejr = load ptr, ptr %i.ejq, align 8, !tbaa !240
  %i.ejs = trunc nuw i64 %indvars.iv3215 to i32
  %i.ejt = call i32 %i.ejn(ptr noundef %i.ejp, i32 noundef %i.ejs, ptr noundef %i.ejr) #21
  %.not828 = icmp eq i32 %i.ejt, 1
  br i1 %.not828, label %.critedge908, label %bb.on

.critedge900:                                     ; preds = %bb.on, %.preheader2769, %tg3__json_is_array.exit1701.thread, %bb.om
  %i.eju = load i32, ptr %1, align 8, !tbaa !13
  %.not18.i.i1802 = icmp eq i32 %i.eju, 6
  br i1 %.not18.i.i1802, label %.preheader.i.i1804, label %tg3__json_is_array.exit1826.thread

.preheader.i.i1804:                               ; preds = %.critedge900
  %i.ejv = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ejw = load i64, ptr %i.ejv, align 8, !tbaa !12 ; 2 uses
  %.not27.i.i1805 = icmp eq i64 %i.ejw, 0
  br i1 %.not27.i.i1805, label %tg3__json_is_array.exit1826.thread, label %.lr.ph.split.i.i1808.preheader

.lr.ph.split.i.i1808.preheader:                   ; preds = %.preheader.i.i1804
  %i.ejx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ejy = load ptr, ptr %i.ejx, align 8, !tbaa !12 ; 2 uses
  br label %.lr.ph.split.i.i1808

.lr.ph.split.i.i1808:                             ; preds = %.lr.ph.split.i.i1808.preheader, %tg3json__memcmp_fallback.exit.i.i1810
  %.01425.i.i1809 = phi i64 [ %i.ekr, %tg3json__memcmp_fallback.exit.i.i1810 ], [ 0, %.lr.ph.split.i.i1808.preheader ] ; 3 uses
  %i.ejz = getelementptr inbounds nuw [24 x i8], ptr %i.ejy, i64 %.01425.i.i1809 ; 2 uses
  %i.eka = getelementptr inbounds nuw i8, ptr %i.ejz, i64 8
  %i.ekb = load i64, ptr %i.eka, align 8, !tbaa !54
  %i.ekc = icmp eq i64 %i.ekb, 7
  br i1 %i.ekc, label %.lr.ph.i.preheader.i.i1812, label %tg3json__memcmp_fallback.exit.i.i1810

.lr.ph.i.preheader.i.i1812:                       ; preds = %.lr.ph.split.i.i1808
  %i.ekd = load ptr, ptr %i.ejz, align 8, !tbaa !51 ; 7 uses
  %i.eke = load i8, ptr %i.ekd, align 1, !tbaa !12
  %.not14.i.i.i1817 = icmp eq i8 %i.eke, 99
  br i1 %.not14.i.i.i1817, label %.lr.ph.i.i.i1813.1, label %tg3json__memcmp_fallback.exit.i.i1810

.lr.ph.i.i.i1813.1:                               ; preds = %.lr.ph.i.preheader.i.i1812
  %i.ekf = getelementptr inbounds nuw i8, ptr %i.ekd, i64 1
  %i.ekg = load i8, ptr %i.ekf, align 1, !tbaa !12
  %.not14.i.i.i1817.1 = icmp eq i8 %i.ekg, 97
  br i1 %.not14.i.i.i1817.1, label %.lr.ph.i.i.i1813.2, label %tg3json__memcmp_fallback.exit.i.i1810

.lr.ph.i.i.i1813.2:                               ; preds = %.lr.ph.i.i.i1813.1
  %i.ekh = getelementptr inbounds nuw i8, ptr %i.ekd, i64 2
  %i.eki = load i8, ptr %i.ekh, align 1, !tbaa !12
  %.not14.i.i.i1817.2 = icmp eq i8 %i.eki, 109
  br i1 %.not14.i.i.i1817.2, label %.lr.ph.i.i.i1813.3, label %tg3json__memcmp_fallback.exit.i.i1810

.lr.ph.i.i.i1813.3:                               ; preds = %.lr.ph.i.i.i1813.2
  %i.ekj = getelementptr inbounds nuw i8, ptr %i.ekd, i64 3
  %i.ekk = load i8, ptr %i.ekj, align 1, !tbaa !12
  %.not14.i.i.i1817.3 = icmp eq i8 %i.ekk, 101
  br i1 %.not14.i.i.i1817.3, label %.lr.ph.i.i.i1813.4, label %tg3json__memcmp_fallback.exit.i.i1810

.lr.ph.i.i.i1813.4:                               ; preds = %.lr.ph.i.i.i1813.3
  %i.ekl = getelementptr inbounds nuw i8, ptr %i.ekd, i64 4
  %i.ekm = load i8, ptr %i.ekl, align 1, !tbaa !12
  %.not14.i.i.i1817.4 = icmp eq i8 %i.ekm, 114
  br i1 %.not14.i.i.i1817.4, label %.lr.ph.i.i.i1813.5, label %tg3json__memcmp_fallback.exit.i.i1810

.lr.ph.i.i.i1813.5:                               ; preds = %.lr.ph.i.i.i1813.4
  %i.ekn = getelementptr inbounds nuw i8, ptr %i.ekd, i64 5
  %i.eko = load i8, ptr %i.ekn, align 1, !tbaa !12
  %.not14.i.i.i1817.5 = icmp eq i8 %i.eko, 97
  br i1 %.not14.i.i.i1817.5, label %.lr.ph.i.i.i1813.6, label %tg3json__memcmp_fallback.exit.i.i1810

.lr.ph.i.i.i1813.6:                               ; preds = %.lr.ph.i.i.i1813.5
  %i.ekp = getelementptr inbounds nuw i8, ptr %i.ekd, i64 6
  %i.ekq = load i8, ptr %i.ekp, align 1, !tbaa !12
  %.not14.i.i.i1817.6 = icmp eq i8 %i.ekq, 115
  br i1 %.not14.i.i.i1817.6, label %tg3json_object_get.exit1824, label %tg3json__memcmp_fallback.exit.i.i1810

tg3json__memcmp_fallback.exit.i.i1810:            ; preds = %.lr.ph.i.preheader.i.i1812, %.lr.ph.i.i.i1813.1, %.lr.ph.i.i.i1813.2, %.lr.ph.i.i.i1813.3, %.lr.ph.i.i.i1813.4, %.lr.ph.i.i.i1813.5, %.lr.ph.i.i.i1813.6, %.lr.ph.split.i.i1808
  %i.ekr = add nuw i64 %.01425.i.i1809, 1         ; 2 uses
  %exitcond.not.i.i1811 = icmp eq i64 %i.ekr, %i.ejw
  br i1 %exitcond.not.i.i1811, label %tg3__json_is_array.exit1826.thread, label %.lr.ph.split.i.i1808, !llvm.loop !83

tg3json_object_get.exit1824:                      ; preds = %.lr.ph.i.i.i1813.6
  %i.eks = getelementptr inbounds nuw [24 x i8], ptr %i.ejy, i64 %.01425.i.i1809
  %i.ekt = getelementptr inbounds nuw i8, ptr %i.eks, i64 16
  %i.eku = load ptr, ptr %i.ekt, align 8, !tbaa !55 ; 5 uses
  %.not.i1825 = icmp eq ptr %i.eku, null
  br i1 %.not.i1825, label %tg3__json_is_array.exit1826.thread, label %tg3__json_is_array.exit1826

tg3__json_is_array.exit1826:                      ; preds = %tg3json_object_get.exit1824
  %i.ekv = load i32, ptr %i.eku, align 8, !tbaa !13
  %.not2725 = icmp eq i32 %i.ekv, 5
  br i1 %.not2725, label %tg3json_array_size.exit1830, label %tg3__json_is_array.exit1826.thread

tg3json_array_size.exit1830:                      ; preds = %tg3__json_is_array.exit1826
  %i.ekw = getelementptr inbounds nuw i8, ptr %i.eku, i64 16 ; 2 uses
  %i.ekx = load i64, ptr %i.ekw, align 8, !tbaa !12 ; 4 uses
  %.not831 = icmp eq i64 %i.ekx, 0
  br i1 %.not831, label %tg3__json_is_array.exit1826.thread, label %bb.op

bb.op:                                            ; preds = %tg3json_array_size.exit1830
  %i.eky = load ptr, ptr %0, align 8, !tbaa !207  ; 9 uses
  %i.ekz = mul i64 %i.ekx, 264                    ; 6 uses
  %i.ela = icmp eq ptr %i.eky, null
  %i.elb = icmp eq i64 %i.ekz, 0
  %or.cond.i1831 = or i1 %i.elb, %i.ela
  br i1 %or.cond.i1831, label %tg3__json_is_array.exit1826.thread, label %bb.oq

bb.oq:                                            ; preds = %bb.op
  %i.elc = getelementptr inbounds nuw i8, ptr %i.eky, i64 32
  %i.eld = load i64, ptr %i.elc, align 8, !tbaa !227 ; 3 uses
  %.not.i1832 = icmp ne i64 %i.eld, 0             ; 2 uses
  %i.ele = icmp ugt i64 %i.ekz, %i.eld
  %or.cond28.i1833 = and i1 %.not.i1832, %i.ele
  br i1 %or.cond28.i1833, label %tg3__json_is_array.exit1826.thread, label %bb.or

bb.or:                                            ; preds = %bb.oq
  %i.elf = getelementptr inbounds nuw i8, ptr %i.eky, i64 8 ; 3 uses
  %i.elg = load ptr, ptr %i.elf, align 8, !tbaa !241 ; 5 uses
  %.not26.i1834 = icmp eq ptr %i.elg, null
  br i1 %.not26.i1834, label %bb.ot, label %bb.os

bb.os:                                            ; preds = %bb.or
  %i.elh = getelementptr inbounds nuw i8, ptr %i.elg, i64 16
  %i.eli = load i64, ptr %i.elh, align 8, !tbaa !242 ; 3 uses
  %i.elj = add i64 %i.eli, %i.ekz
  %i.elk = getelementptr inbounds nuw i8, ptr %i.elg, i64 24
  %i.ell = load i64, ptr %i.elk, align 8, !tbaa !244
  %i.elm = icmp ugt i64 %i.elj, %i.ell
  br i1 %i.elm, label %bb.ot, label %tg3__arena_alloc.exit1846

bb.ot:                                            ; preds = %bb.os, %bb.or
  %i.eln = getelementptr inbounds nuw i8, ptr %i.eky, i64 40
  %i.elo = load i64, ptr %i.eln, align 8, !tbaa !223
  %spec.select.i.i1840 = call i64 @llvm.umax.i64(i64 %i.elo, i64 range(i64 0, -7) %i.ekz) ; 3 uses
  %i.elp = icmp ugt i64 %spec.select.i.i1840, %i.eld
end_hunk_4
begin_hunk_5_@tg3__parse_string_array:bb.a
tg3__json_get.exit:                               ; preds = %bb.b, %.lr.ph.split.us.i.i.i
  %i.aa = phi i64 [ %.01425.us.i.i.i, %.lr.ph.split.us.i.i.i ], [ %.01425.i.i.i, %bb.b ]
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %i.j, i64 %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !55 ; 6 uses
  %.not = icmp eq ptr %i.ad, null
  br i1 %.not, label %tg3__json_get.exit.thread, label %tg3__json_is_array.exit

tg3__json_get.exit.thread:                        ; preds = %tg3json__memcmp_fallback.exit.i.i.i, %tg3json__memcmp_fallback.exit.us.i.i.i, %.preheader.i.i.i, %tg3json__strlen_fallback.exit.i.i, %bb.a, %tg3__json_get.exit
  store ptr null, ptr %3, align 8, !tbaa !941
  br label %tg3__arena_alloc.exit.thread.sink.split

tg3__json_is_array.exit:                          ; preds = %tg3__json_get.exit
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !13
  %.not8 = icmp eq i32 %i.ae, 5
  br i1 %.not8, label %tg3json_array_size.exit, label %tg3__arena_alloc.exit.thread

tg3json_array_size.exit:                          ; preds = %tg3__json_is_array.exit
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !12 ; 7 uses
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %tg3json_array_size.exit.thread, label %bb.c

tg3json_array_size.exit.thread:                   ; preds = %tg3json_array_size.exit
  store ptr null, ptr %3, align 8, !tbaa !941
  br label %tg3__arena_alloc.exit.thread.sink.split

bb.c:                                             ; preds = %tg3json_array_size.exit
  %i.ai = load ptr, ptr %0, align 8, !tbaa !207   ; 9 uses
  %i.aj = shl i64 %i.ag, 4                        ; 6 uses
  %i.ak = icmp eq ptr %i.ai, null
  %i.al = icmp eq i64 %i.aj, 0
  %or.cond.i = or i1 %i.al, %i.ak
  br i1 %or.cond.i, label %tg3__arena_alloc.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.an = load i64, ptr %i.am, align 8, !tbaa !227 ; 3 uses
  %.not.i48 = icmp ne i64 %i.an, 0                ; 2 uses
  %i.ao = icmp ugt i64 %i.aj, %i.an
  %or.cond28.i = and i1 %.not.i48, %i.ao
  br i1 %or.cond28.i, label %tg3__arena_alloc.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 3 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !241 ; 5 uses
  %.not26.i = icmp eq ptr %i.aq, null
  br i1 %.not26.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !242 ; 3 uses
  %i.at = add i64 %i.as, %i.aj
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.av = load i64, ptr %i.au, align 8, !tbaa !244
  %i.aw = icmp ugt i64 %i.at, %i.av
  br i1 %i.aw, label %bb.g, label %tg3__arena_alloc.exit

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ai, i64 40
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !223
  %spec.select.i.i = tail call i64 @llvm.umax.i64(i64 %i.ay, i64 range(i64 0, -7) %i.aj) ; 3 uses
  %i.az = icmp ugt i64 %spec.select.i.i, %i.an
  %or.cond.i.i = select i1 %.not.i48, i1 %i.az, i1 false
  br i1 %or.cond.i.i, label %tg3__arena_alloc.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 3 uses
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !245
  %i.bc = add i64 %spec.select.i.i, 32            ; 3 uses
  %i.bd = add i64 %i.bb, %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !226
  %i.bg = icmp ugt i64 %i.bd, %i.bf
  br i1 %i.bg, label %tg3__arena_alloc.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ai, i64 48
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !246
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ai, i64 72
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !247
  %i.bl = tail call ptr %i.bi(i64 noundef %i.bc, ptr noundef %i.bk) #21, !inline_history !248 ; 8 uses
  %.not37.i.i = icmp eq ptr %i.bl, null
  br i1 %.not37.i.i, label %tg3__arena_alloc.exit.thread, label %tg3__arena_alloc.exit.thread34

tg3__arena_alloc.exit.thread34:                   ; preds = %bb.i
  store ptr null, ptr %i.bl, align 8, !tbaa !249
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 32 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store ptr %i.bm, ptr %i.bn, align 8, !tbaa !250
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  store i64 %spec.select.i.i, ptr %i.bo, align 8, !tbaa !244
  %i.bp = load i64, ptr %i.ba, align 8, !tbaa !245
  %i.bq = add i64 %i.bp, %i.bc
  store i64 %i.bq, ptr %i.ba, align 8, !tbaa !245
  %i.br = load ptr, ptr %i.ap, align 8, !tbaa !241 ; 2 uses
  %.not38.i.i = icmp eq ptr %i.br, null
  %..i.i = select i1 %.not38.i.i, ptr %i.ai, ptr %i.br
  store ptr %i.bl, ptr %..i.i, align 8, !tbaa !251
  store ptr %i.bl, ptr %i.ap, align 8, !tbaa !241
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  store i64 %i.aj, ptr %i.bs, align 8, !tbaa !242
  br label %.preheader

tg3__arena_alloc.exit:                            ; preds = %bb.f
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !250 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.bu = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %i.as
  %i.bv = add i64 %i.as, %i.aj
  store i64 %i.bv, ptr %i.bt, align 8, !tbaa !242
  %.not44 = icmp eq ptr %.pre.i, null
  br i1 %.not44, label %tg3__arena_alloc.exit.thread, label %.preheader

.preheader:                                       ; preds = %tg3__arena_alloc.exit.thread34, %tg3__arena_alloc.exit
  %i.bw = phi ptr [ %i.bm, %tg3__arena_alloc.exit.thread34 ], [ %i.bu, %tg3__arena_alloc.exit ] ; 9 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.by = load i32, ptr %i.ad, align 8, !tbaa !13
  %i.bz = icmp eq i32 %i.by, 5
  br i1 %i.bz, label %.preheader.split, label %tg3json_array_get.exit.thread.us.preheader

tg3json_array_get.exit.thread.us.preheader:       ; preds = %.preheader
  %xtraiter = and i64 %i.ag, 3                    ; 3 uses
  %i.ca = icmp ult i64 %i.ag, 4
  br i1 %i.ca, label %tg3json_array_get.exit.thread.us.epil.preheader, label %tg3json_array_get.exit.thread.us.preheader.new

tg3json_array_get.exit.thread.us.preheader.new:   ; preds = %tg3json_array_get.exit.thread.us.preheader
  %unroll_iter = and i64 %i.ag, -4
  br label %tg3json_array_get.exit.thread.us

tg3json_array_get.exit.thread.us:                 ; preds = %tg3json_array_get.exit.thread.us, %tg3json_array_get.exit.thread.us.preheader.new
  %.03813.us = phi i64 [ 0, %tg3json_array_get.exit.thread.us.preheader.new ], [ %i.cm, %tg3json_array_get.exit.thread.us ] ; 5 uses
  %niter = phi i64 [ 0, %tg3json_array_get.exit.thread.us.preheader.new ], [ %niter.next.3, %tg3json_array_get.exit.thread.us ]
  %i.cb = getelementptr inbounds nuw [16 x i8], ptr %i.bw, i64 %.03813.us ; 2 uses
  store ptr null, ptr %i.cb, align 8, !tbaa !343
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  store i32 0, ptr %i.cc, align 8, !tbaa !344
  %i.cd = getelementptr inbounds nuw [16 x i8], ptr %i.bw, i64 %.03813.us ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  store ptr null, ptr %i.ce, align 8, !tbaa !343
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  store i32 0, ptr %i.cf, align 8, !tbaa !344
  %i.cg = getelementptr inbounds nuw [16 x i8], ptr %i.bw, i64 %.03813.us ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 32
  store ptr null, ptr %i.ch, align 8, !tbaa !343
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 40
  store i32 0, ptr %i.ci, align 8, !tbaa !344
  %i.cj = getelementptr inbounds nuw [16 x i8], ptr %i.bw, i64 %.03813.us ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 48
  store ptr null, ptr %i.ck, align 8, !tbaa !343
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 56
  store i32 0, ptr %i.cl, align 8, !tbaa !344
  %i.cm = add nuw i64 %.03813.us, 4               ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.split.us.loopexit6.unr-lcssa, label %tg3json_array_get.exit.thread.us, !llvm.loop !942

.preheader.splitthread-pre-split:                 ; preds = %bb.m
  %.pr = load i32, ptr %i.ad, align 8, !tbaa !13
  br label %.preheader.split

.preheader.split:                                 ; preds = %.preheader, %.preheader.splitthread-pre-split
  %i.cn = phi i32 [ %.pr, %.preheader.splitthread-pre-split ], [ 5, %.preheader ]
  %.03813 = phi i64 [ %i.de, %.preheader.splitthread-pre-split ], [ 0, %.preheader ] ; 6 uses
  %.not8.i = icmp eq i32 %i.cn, 5
  br i1 %.not8.i, label %bb.j, label %tg3json_array_get.exit.thread

bb.j:                                             ; preds = %.preheader.split
  %i.co = load i64, ptr %i.af, align 8, !tbaa !12
  %.not9.i = icmp ult i64 %.03813, %i.co
  br i1 %.not9.i, label %tg3json_array_get.exit, label %tg3json_array_get.exit.thread

tg3json_array_get.exit:                           ; preds = %bb.j
  %i.cp = load ptr, ptr %i.bx, align 8, !tbaa !12 ; 2 uses
  %i.cq = getelementptr inbounds nuw [24 x i8], ptr %i.cp, i64 %.03813 ; 3 uses
  %.not45 = icmp eq ptr %i.cp, null
  br i1 %.not45, label %tg3json_array_get.exit.thread, label %bb.k

bb.k:                                             ; preds = %tg3json_array_get.exit
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !13
  %.not46 = icmp eq i32 %i.cr, 4
  br i1 %.not46, label %bb.l, label %tg3json_array_get.exit.thread

tg3json_array_get.exit.thread:                    ; preds = %.preheader.split, %bb.j, %bb.k, %tg3json_array_get.exit
  %i.cs = getelementptr inbounds nuw [16 x i8], ptr %i.bw, i64 %.03813
  store ptr null, ptr %i.cs, align 8, !tbaa !343
  br label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ct = getelementptr inbounds nuw [16 x i8], ptr %i.bw, i64 %.03813
  %i.cu = load ptr, ptr %0, align 8, !tbaa !207
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !12
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !12 ; 2 uses
  %i.cz = trunc i64 %i.cy to i32
  %i.da = and i64 %i.cy, 4294967295
  %i.db = tail call fastcc ptr @tg3__arena_strdup(ptr noundef %i.cu, ptr noundef readonly %i.cw, i64 noundef %i.da) #20 ; 2 uses
  %.not.i52 = icmp eq ptr %i.db, null
  %i.dc = select i1 %.not.i52, i32 0, i32 %i.cz
  %5 = ptrtoint ptr %i.db to i64
  store i64 %5, ptr %i.ct, align 8, !tbaa !9
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %tg3json_array_get.exit.thread
  %.sink = phi i32 [ %i.dc, %bb.l ], [ 0, %tg3json_array_get.exit.thread ]
  %i.dd = getelementptr inbounds nuw [16 x i8], ptr %i.bw, i64 %.03813
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  store i32 %.sink, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !43
  %i.de = add nuw i64 %.03813, 1                  ; 2 uses
  %exitcond20.not = icmp eq i64 %i.de, %i.ag
  br i1 %exitcond20.not, label %.split.us, label %.preheader.splitthread-pre-split, !llvm.loop !943

.split.us.loopexit6.unr-lcssa:                    ; preds = %tg3json_array_get.exit.thread.us
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.split.us, label %tg3json_array_get.exit.thread.us.epil.preheader

tg3json_array_get.exit.thread.us.epil.preheader:  ; preds = %.split.us.loopexit6.unr-lcssa, %tg3json_array_get.exit.thread.us.preheader
  %.03813.us.epil.init = phi i64 [ 0, %tg3json_array_get.exit.thread.us.preheader ], [ %i.cm, %.split.us.loopexit6.unr-lcssa ]
  %lcmp.mod11 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod11)
  br label %tg3json_array_get.exit.thread.us.epil

tg3json_array_get.exit.thread.us.epil:            ; preds = %tg3json_array_get.exit.thread.us.epil, %tg3json_array_get.exit.thread.us.epil.preheader
  %.03813.us.epil = phi i64 [ %i.dh, %tg3json_array_get.exit.thread.us.epil ], [ %.03813.us.epil.init, %tg3json_array_get.exit.thread.us.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %tg3json_array_get.exit.thread.us.epil ], [ 0, %tg3json_array_get.exit.thread.us.epil.preheader ]
  %i.df = getelementptr inbounds nuw [16 x i8], ptr %i.bw, i64 %.03813.us.epil ; 2 uses
  store ptr null, ptr %i.df, align 8, !tbaa !343
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  store i32 0, ptr %i.dg, align 8, !tbaa !344
  %i.dh = add nuw i64 %.03813.us.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.split.us, label %tg3json_array_get.exit.thread.us.epil, !llvm.loop !945

.split.us:                                        ; preds = %.split.us.loopexit6.unr-lcssa, %tg3json_array_get.exit.thread.us.epil, %bb.m
  store ptr %i.bw, ptr %3, align 8, !tbaa !941
  %i.di = trunc i64 %i.ag to i32
  br label %tg3__arena_alloc.exit.thread.sink.split

tg3__arena_alloc.exit.thread.sink.split:          ; preds = %tg3__json_get.exit.thread, %tg3json_array_size.exit.thread, %.split.us
  %.sink43 = phi i32 [ %i.di, %.split.us ], [ 0, %tg3json_array_size.exit.thread ], [ 0, %tg3__json_get.exit.thread ]
  store i32 %.sink43, ptr %4, align 4, !tbaa !43
  br label %tg3__arena_alloc.exit.thread

tg3__arena_alloc.exit.thread:                     ; preds = %tg3__arena_alloc.exit.thread.sink.split, %bb.i, %bb.g, %bb.h, %bb.c, %bb.d, %tg3__arena_alloc.exit, %tg3__json_is_array.exit
  ret void
}

; Function Attrs: nounwind
define internal fastcc void @tg3__parse_int(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr noundef %2, ptr nofree noundef nonnull writeonly captures(none) %3, i32 noundef range(i32 0, 2) %4, ptr noundef %5) unnamed_addr #9 {
bb.a:
  %.not.i.i = icmp eq ptr %2, null
  br i1 %.not.i.i, label %tg3__json_get.exit.thread, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.a, %.preheader.i.i
  %.0.i.i.i = phi ptr [ %i.b, %.preheader.i.i ], [ %2, %bb.a ] ; 3 uses
  %i.a = load i8, ptr %.0.i.i.i, align 1, !tbaa !12
  %.not.i.i.i = icmp eq i8 %i.a, 0
  %i.b = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 1
  br i1 %.not.i.i.i, label %tg3json__strlen_fallback.exit.i.i, label %.preheader.i.i, !llvm.loop !68

tg3json__strlen_fallback.exit.i.i:                ; preds = %.preheader.i.i
  %i.c = ptrtoint ptr %.0.i.i.i to i64
  %i.d = ptrtoint ptr %2 to i64
  %i.e = sub i64 %i.c, %i.d                       ; 3 uses
  %.not.i6.i.i = icmp eq ptr %1, null
  br i1 %.not.i6.i.i, label %tg3__json_get.exit.thread, label %bb.b

bb.b:                                             ; preds = %tg3json__strlen_fallback.exit.i.i
  %i.f = load i32, ptr %1, align 8, !tbaa !13
  %.not18.i.i.i = icmp eq i32 %i.f, 6
  br i1 %.not18.i.i.i, label %.preheader.i.i.i, label %tg3__json_get.exit.thread

.preheader.i.i.i:                                 ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !12   ; 3 uses
  %.not27.i.i.i = icmp eq i64 %i.h, 0
  br i1 %.not27.i.i.i, label %tg3__json_get.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !12   ; 3 uses
  %.not16.i.i.i.i = icmp eq i64 %i.e, 0
  br i1 %.not16.i.i.i.i, label %.lr.ph.split.us.i.i.i, label %.lr.ph.split.i.i.i

.lr.ph.split.us.i.i.i:                            ; preds = %.lr.ph.i.i.i, %tg3json__memcmp_fallback.exit.us.i.i.i
  %.01425.us.i.i.i = phi i64 [ %i.o, %tg3json__memcmp_fallback.exit.us.i.i.i ], [ 0, %.lr.ph.i.i.i ] ; 3 uses
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %i.j, i64 %.01425.us.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !54
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %tg3__json_get.exit, label %tg3json__memcmp_fallback.exit.us.i.i.i

tg3json__memcmp_fallback.exit.us.i.i.i:           ; preds = %.lr.ph.split.us.i.i.i
  %i.o = add nuw i64 %.01425.us.i.i.i, 1          ; 2 uses
  %exitcond31.not.i.i.i = icmp eq i64 %i.o, %i.h
  br i1 %exitcond31.not.i.i.i, label %tg3__json_get.exit.thread, label %.lr.ph.split.us.i.i.i, !llvm.loop !83

.lr.ph.split.i.i.i:                               ; preds = %.lr.ph.i.i.i, %tg3json__memcmp_fallback.exit.i.i.i
  %.01425.i.i.i = phi i64 [ %i.z, %tg3json__memcmp_fallback.exit.i.i.i ], [ 0, %.lr.ph.i.i.i ] ; 3 uses
  %i.p = getelementptr inbounds nuw [24 x i8], ptr %i.j, i64 %.01425.i.i.i ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !54
  %i.s = icmp eq i64 %i.r, %i.e
  br i1 %i.s, label %.lr.ph.i.preheader.i.i.i, label %tg3json__memcmp_fallback.exit.i.i.i

.lr.ph.i.preheader.i.i.i:                         ; preds = %.lr.ph.split.i.i.i
  %i.t = load ptr, ptr %i.p, align 8, !tbaa !51
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %.lr.ph.i.preheader.i.i.i
  %.in.i.i.i.i = phi i64 [ %i.w, %bb.c ], [ %i.e, %.lr.ph.i.preheader.i.i.i ]
  %.018.i.i.i.i = phi ptr [ %i.y, %bb.c ], [ %2, %.lr.ph.i.preheader.i.i.i ] ; 2 uses
  %.0917.i.i.i.i = phi ptr [ %i.x, %bb.c ], [ %i.t, %.lr.ph.i.preheader.i.i.i ] ; 2 uses
  %i.u = load i8, ptr %.0917.i.i.i.i, align 1, !tbaa !12
  %i.v = load i8, ptr %.018.i.i.i.i, align 1, !tbaa !12
  %.not14.i.i.i.i = icmp eq i8 %i.u, %i.v
  br i1 %.not14.i.i.i.i, label %bb.c, label %tg3json__memcmp_fallback.exit.i.i.i

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.w = add i64 %.in.i.i.i.i, -1                 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.0917.i.i.i.i, i64 1
  %i.y = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i, i64 1
  %.not.i.i.i.i = icmp eq i64 %i.w, 0
  br i1 %.not.i.i.i.i, label %tg3__json_get.exit, label %.lr.ph.i.i.i.i, !llvm.loop !84

tg3json__memcmp_fallback.exit.i.i.i:              ; preds = %.lr.ph.i.i.i.i, %.lr.ph.split.i.i.i
  %i.z = add nuw i64 %.01425.i.i.i, 1             ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.z, %i.h
  br i1 %exitcond.not.i.i.i, label %tg3__json_get.exit.thread, label %.lr.ph.split.i.i.i, !llvm.loop !83

tg3__json_get.exit:                               ; preds = %bb.c, %.lr.ph.split.us.i.i.i
  %i.aa = phi i64 [ %.01425.us.i.i.i, %.lr.ph.split.us.i.i.i ], [ %.01425.i.i.i, %bb.c ]
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %i.j, i64 %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !55 ; 4 uses
  %.not = icmp eq ptr %i.ad, null
  br i1 %.not, label %tg3__json_get.exit.thread, label %bb.e

tg3__json_get.exit.thread:                        ; preds = %tg3json__memcmp_fallback.exit.i.i.i, %tg3json__memcmp_fallback.exit.us.i.i.i, %.preheader.i.i.i, %bb.b, %tg3json__strlen_fallback.exit.i.i, %bb.a, %tg3__json_get.exit
  %.not20 = icmp eq i32 %4, 0
  br i1 %.not20, label %bb.k, label %bb.d

bb.d:                                             ; preds = %tg3__json_get.exit.thread
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !210
  %i.ag = load ptr, ptr %0, align 8, !tbaa !207
  tail call void (ptr, ptr, i32, i32, ptr, ptr, ...) @tg3__error_pushf(ptr noundef %i.af, ptr noundef %i.ag, i32 poison, i32 noundef 12, ptr noundef %5, ptr noundef nonnull @.str.60, ptr noundef %2) #20
  br label %bb.k

bb.e:                                             ; preds = %tg3__json_get.exit
  %i.ah = load i32, ptr %i.ad, align 8, !tbaa !13
  switch i32 %i.ah, label %bb.f [
    i32 2, label %.thread.i
    i32 3, label %bb.h
  ]

bb.f:                                             ; preds = %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !210
  %i.ak = load ptr, ptr %0, align 8, !tbaa !207
  tail call void (ptr, ptr, i32, i32, ptr, ptr, ...) @tg3__error_pushf(ptr noundef %i.aj, ptr noundef %i.ak, i32 poison, i32 noundef 11, ptr noundef %5, ptr noundef nonnull @.str.62, ptr noundef nonnull %2) #20
  br label %bb.k

.thread.i:                                        ; preds = %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.am = load i64, ptr %i.al, align 8, !tbaa !12 ; 2 uses
  %i.an = add i64 %i.am, -2147483648
  %or.cond.i = icmp ult i64 %i.an, -4294967296
  br i1 %or.cond.i, label %bb.j, label %bb.g

bb.g:                                             ; preds = %.thread.i
  %i.ao = trunc nsw i64 %i.am to i32
  br label %tg3__json_number_to_int32.exit

bb.h:                                             ; preds = %bb.e
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !12 ; 5 uses
  %i.ar = tail call double @llvm.fabs.f64(double %i.aq)
  %i.as = fcmp ueq double %i.ar, +inf
  %i.at = fcmp olt double %i.aq, f0xC1E0000000000000
  %or.cond3.i = or i1 %i.at, %i.as
  %i.au = fcmp ogt double %i.aq, f0x41DFFFFFFFC00000
  %or.cond5.i = or i1 %i.au, %or.cond3.i
  br i1 %or.cond5.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.av = fptosi double %i.aq to i32              ; 2 uses
  %i.aw = sitofp i32 %i.av to double
  %i.ax = fcmp une double %i.aq, %i.aw
  br i1 %i.ax, label %bb.j, label %tg3__json_number_to_int32.exit

tg3__json_number_to_int32.exit:                   ; preds = %bb.g, %bb.i
  %.sink.i = phi i32 [ %i.ao, %bb.g ], [ %i.av, %bb.i ]
  store i32 %.sink.i, ptr %3, align 4, !tbaa !43
  br label %bb.k

bb.j:                                             ; preds = %bb.i, %.thread.i, %bb.h
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !210
  %i.ba = load ptr, ptr %0, align 8, !tbaa !207
end_hunk_5
begin_hunk_6_@tg3__parse_extras_and_extensions:.preheader.i.i.preheader
  br i1 %i.m, label %.lr.ph.i.preheader.i.i.i, label %tg3json__memcmp_fallback.exit.i.i.i

.lr.ph.i.preheader.i.i.i:                         ; preds = %.lr.ph.split.i.i.i
  %i.n = load ptr, ptr %i.j, align 8, !tbaa !51   ; 6 uses
  %i.o = load i8, ptr %i.n, align 1, !tbaa !12
  %.not14.i.i.i.i = icmp eq i8 %i.o, 101
  br i1 %.not14.i.i.i.i, label %.lr.ph.i.i.i.i.1, label %tg3json__memcmp_fallback.exit.i.i.i

.lr.ph.i.i.i.i.1:                                 ; preds = %.lr.ph.i.preheader.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  %i.q = load i8, ptr %i.p, align 1, !tbaa !12
  %.not14.i.i.i.i.1 = icmp eq i8 %i.q, 120
  br i1 %.not14.i.i.i.i.1, label %.lr.ph.i.i.i.i.2, label %tg3json__memcmp_fallback.exit.i.i.i

.lr.ph.i.i.i.i.2:                                 ; preds = %.lr.ph.i.i.i.i.1
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 2
  %i.s = load i8, ptr %i.r, align 1, !tbaa !12
  %.not14.i.i.i.i.2 = icmp eq i8 %i.s, 116
  br i1 %.not14.i.i.i.i.2, label %.lr.ph.i.i.i.i.3, label %tg3json__memcmp_fallback.exit.i.i.i

.lr.ph.i.i.i.i.3:                                 ; preds = %.lr.ph.i.i.i.i.2
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 3
  %i.u = load i8, ptr %i.t, align 1, !tbaa !12
  %.not14.i.i.i.i.3 = icmp eq i8 %i.u, 114
  br i1 %.not14.i.i.i.i.3, label %.lr.ph.i.i.i.i.4, label %tg3json__memcmp_fallback.exit.i.i.i

.lr.ph.i.i.i.i.4:                                 ; preds = %.lr.ph.i.i.i.i.3
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.w = load i8, ptr %i.v, align 1, !tbaa !12
  %.not14.i.i.i.i.4 = icmp eq i8 %i.w, 97
  br i1 %.not14.i.i.i.i.4, label %.lr.ph.i.i.i.i.5, label %tg3json__memcmp_fallback.exit.i.i.i

.lr.ph.i.i.i.i.5:                                 ; preds = %.lr.ph.i.i.i.i.4
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 5
  %i.y = load i8, ptr %i.x, align 1, !tbaa !12
  %.not14.i.i.i.i.5 = icmp eq i8 %i.y, 115
  br i1 %.not14.i.i.i.i.5, label %tg3__json_get.exit, label %tg3json__memcmp_fallback.exit.i.i.i

tg3json__memcmp_fallback.exit.i.i.i:              ; preds = %.lr.ph.i.preheader.i.i.i, %.lr.ph.i.i.i.i.1, %.lr.ph.i.i.i.i.2, %.lr.ph.i.i.i.i.3, %.lr.ph.i.i.i.i.4, %.lr.ph.i.i.i.i.5, %.lr.ph.split.i.i.i
  %i.z = add nuw i64 %.01425.i.i.i, 1             ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.z, %i.g
  br i1 %exitcond.not.i.i.i, label %tg3__json_get.exit.thread.thread, label %.lr.ph.split.i.i.i, !llvm.loop !83

tg3__json_get.exit:                               ; preds = %.lr.ph.i.i.i.i.5
  %i.aa = getelementptr inbounds nuw [24 x i8], ptr %i.i, i64 %.01425.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !55 ; 3 uses
  %.not = icmp eq ptr %i.ac, null
  br i1 %.not, label %tg3__json_get.exit.thread.thread, label %bb.b

bb.b:                                             ; preds = %tg3__json_get.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !951
  %.not66 = icmp eq i32 %i.ae, 0
  br i1 %.not66, label %bb.c, label %tg3__arena_alloc.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.af = load ptr, ptr %0, align 8, !tbaa !207   ; 9 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %tg3__arena_alloc.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !227 ; 3 uses
  %.not.i76 = icmp ne i64 %i.ai, 0
  %i.aj = add i64 %i.ai, -1
  %or.cond28.i = icmp ult i64 %i.aj, 79
  br i1 %or.cond28.i, label %tg3__arena_alloc.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 3 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !241 ; 5 uses
  %.not26.i = icmp eq ptr %i.al, null
  br i1 %.not26.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load i64, ptr %i.am, align 8, !tbaa !242 ; 3 uses
  %i.ao = add i64 %i.an, 80
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !244
  %i.ar = icmp ugt i64 %i.ao, %i.aq
  br i1 %i.ar, label %bb.g, label %tg3__arena_alloc.exit

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.as = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  %i.at = load i64, ptr %i.as, align 8, !tbaa !223
  %spec.select.i.i = tail call i64 @llvm.umax.i64(i64 %i.at, i64 range(i64 0, -7) 80) ; 3 uses
  %i.au = icmp ugt i64 %spec.select.i.i, %i.ai
  %or.cond.i.i = select i1 %.not.i76, i1 %i.au, i1 false
  br i1 %or.cond.i.i, label %tg3__arena_alloc.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.av = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 3 uses
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !245
  %i.ax = add i64 %spec.select.i.i, 32            ; 3 uses
  %i.ay = add i64 %i.aw, %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !226
  %i.bb = icmp ugt i64 %i.ay, %i.ba
  br i1 %i.bb, label %tg3__arena_alloc.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bc = getelementptr inbounds nuw i8, ptr %i.af, i64 48
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !246
  %i.be = getelementptr inbounds nuw i8, ptr %i.af, i64 72
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !247
  %i.bg = tail call ptr %i.bd(i64 noundef %i.ax, ptr noundef %i.bf) #21, !inline_history !248 ; 8 uses
  %.not37.i.i = icmp eq ptr %i.bg, null
  br i1 %.not37.i.i, label %tg3__arena_alloc.exit.thread, label %tg3__arena_alloc.exit.thread195

tg3__arena_alloc.exit.thread195:                  ; preds = %bb.i
  store ptr null, ptr %i.bg, align 8, !tbaa !249
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 32 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !250
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  store i64 %spec.select.i.i, ptr %i.bj, align 8, !tbaa !244
  %i.bk = load i64, ptr %i.av, align 8, !tbaa !245
  %i.bl = add i64 %i.bk, %i.ax
  store i64 %i.bl, ptr %i.av, align 8, !tbaa !245
  %i.bm = load ptr, ptr %i.ak, align 8, !tbaa !241 ; 2 uses
  %.not38.i.i = icmp eq ptr %i.bm, null
  %..i.i = select i1 %.not38.i.i, ptr %i.af, ptr %i.bm
  store ptr %i.bg, ptr %..i.i, align 8, !tbaa !251
  store ptr %i.bg, ptr %i.ak, align 8, !tbaa !241
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  store i64 80, ptr %i.bn, align 8, !tbaa !242
  br label %bb.j

tg3__arena_alloc.exit:                            ; preds = %bb.f
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !250 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.bp = add i64 %i.an, 80
  store i64 %i.bp, ptr %i.bo, align 8, !tbaa !242
  %.not67 = icmp eq ptr %.pre.i, null
  br i1 %.not67, label %tg3__arena_alloc.exit.thread, label %bb.j

bb.j:                                             ; preds = %tg3__arena_alloc.exit.thread195, %tg3__arena_alloc.exit
  %i.bq = phi ptr [ %i.bh, %tg3__arena_alloc.exit.thread195 ], [ %.pre.i, %tg3__arena_alloc.exit ]
  %i.br = phi i64 [ 0, %tg3__arena_alloc.exit.thread195 ], [ %i.an, %tg3__arena_alloc.exit ]
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.br ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call fastcc void @tg3__json_to_value(ptr dead_on_unwind noalias writable align 8 %4, ptr noundef %0, ptr noundef nonnull %i.ac) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.bs, ptr noundef nonnull align 8 dereferenceable(80) %4, i64 80, i1 false), !tbaa.struct !952
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  store ptr %i.bs, ptr %2, align 8, !tbaa !956
  br label %tg3__arena_alloc.exit.thread

tg3__arena_alloc.exit.thread:                     ; preds = %bb.i, %bb.g, %bb.h, %bb.c, %bb.d, %tg3__arena_alloc.exit, %bb.j, %bb.b
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !957
  %.not68 = icmp eq i32 %i.bu, 0
  br i1 %.not68, label %tg3__json_get.exit.thread.thread, label %bb.k

bb.k:                                             ; preds = %tg3__arena_alloc.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store <16 x i8> zeroinitializer, ptr %3, align 16, !tbaa !12
  store <16 x i8> zeroinitializer, ptr %i.bv, align 16, !tbaa !12
  %i.bw = call fastcc i32 @tg3json__stringify_value_ex(ptr noundef %3, ptr noundef nonnull readonly %i.ac, i32 noundef -1, i32 noundef 0) #20
  %.not12.i = icmp eq i32 %i.bw, 0
  br i1 %.not12.i, label %tg3json_stringify.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !98 ; 2 uses
  %.not14.i = icmp eq ptr %i.by, null
  br i1 %.not14.i, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.bz = load i64, ptr @test_heap_used, align 8, !tbaa !21 ; 2 uses
  %i.ca = add i64 %i.bz, 16                       ; 2 uses
  %i.cb = icmp ugt i64 %i.ca, 524288
  br i1 %i.cb, label %tg3json_stringify.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cc = getelementptr inbounds nuw i8, ptr @test_heap, i64 %i.bz ; 2 uses
  store i64 1, ptr %i.cc, align 8, !tbaa !21
  store i64 %i.ca, ptr @test_heap_used, align 8, !tbaa !21
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8 ; 2 uses
  store i8 0, ptr %i.cd, align 8, !tbaa !12
  br label %bb.o

tg3json_stringify.exit.thread:                    ; preds = %bb.k, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %tg3__json_get.exit.thread.thread

bb.o:                                             ; preds = %bb.n, %bb.l
  %i.ce = phi ptr [ %i.cd, %bb.n ], [ %i.by, %bb.l ]
  %i.cf = load i64, ptr %i.bv, align 16, !tbaa !101 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ch = load ptr, ptr %0, align 8, !tbaa !207
  %i.ci = trunc i64 %i.cf to i32
  %i.cj = and i64 %i.cf, 4294967295
  %i.ck = call fastcc ptr @tg3__arena_strdup(ptr noundef %i.ch, ptr noundef nonnull readonly %i.ce, i64 noundef %i.cj) #20 ; 2 uses
  %.not.i79 = icmp eq ptr %i.ck, null
  %i.cl = select i1 %.not.i79, i32 0, i32 %i.ci
  %6 = ptrtoint ptr %i.ck to i64
  store i64 %6, ptr %i.cg, align 8, !tbaa !9
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i32 %i.cl, ptr %.sroa.426.0..sroa_idx, align 8, !tbaa !43
  br label %tg3__json_get.exit.thread.thread

tg3__json_get.exit.thread.thread:                 ; preds = %tg3json__memcmp_fallback.exit.i.i.i, %tg3__json_get.exit, %tg3__arena_alloc.exit.thread, %tg3json_stringify.exit.thread, %bb.o, %.preheader.i.i.i
  %.pr = load i32, ptr %1, align 8, !tbaa !13
  %.not18.i.i.i85 = icmp eq i32 %.pr, 6
  br i1 %.not18.i.i.i85, label %.preheader.i.i.i87, label %tg3__json_is_object.exit.thread

.preheader.i.i.i87:                               ; preds = %tg3__json_get.exit.thread.thread
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !12 ; 2 uses
  %.not27.i.i.i88 = icmp eq i64 %i.cn, 0
  br i1 %.not27.i.i.i88, label %tg3__json_is_object.exit.thread, label %.lr.ph.split.i.i.i91.preheader

.lr.ph.split.i.i.i91.preheader:                   ; preds = %.preheader.i.i.i87
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !12 ; 2 uses
  br label %.lr.ph.split.i.i.i91

.lr.ph.split.i.i.i91:                             ; preds = %.lr.ph.split.i.i.i91.preheader, %tg3json__memcmp_fallback.exit.i.i.i93
  %.01425.i.i.i92 = phi i64 [ %i.do, %tg3json__memcmp_fallback.exit.i.i.i93 ], [ 0, %.lr.ph.split.i.i.i91.preheader ] ; 3 uses
  %i.cq = getelementptr inbounds nuw [24 x i8], ptr %i.cp, i64 %.01425.i.i.i92 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !54
  %i.ct = icmp eq i64 %i.cs, 10
  br i1 %i.ct, label %.lr.ph.i.preheader.i.i.i95, label %tg3json__memcmp_fallback.exit.i.i.i93

.lr.ph.i.preheader.i.i.i95:                       ; preds = %.lr.ph.split.i.i.i91
  %i.cu = load ptr, ptr %i.cq, align 8, !tbaa !51 ; 10 uses
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !12
  %.not14.i.i.i.i100 = icmp eq i8 %i.cv, 101
  br i1 %.not14.i.i.i.i100, label %.lr.ph.i.i.i.i96.1, label %tg3json__memcmp_fallback.exit.i.i.i93

.lr.ph.i.i.i.i96.1:                               ; preds = %.lr.ph.i.preheader.i.i.i95
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 1
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !12
  %.not14.i.i.i.i100.1 = icmp eq i8 %i.cx, 120
  br i1 %.not14.i.i.i.i100.1, label %.lr.ph.i.i.i.i96.2, label %tg3json__memcmp_fallback.exit.i.i.i93

.lr.ph.i.i.i.i96.2:                               ; preds = %.lr.ph.i.i.i.i96.1
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cu, i64 2
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !12
  %.not14.i.i.i.i100.2 = icmp eq i8 %i.cz, 116
  br i1 %.not14.i.i.i.i100.2, label %.lr.ph.i.i.i.i96.3, label %tg3json__memcmp_fallback.exit.i.i.i93

.lr.ph.i.i.i.i96.3:                               ; preds = %.lr.ph.i.i.i.i96.2
  %i.da = getelementptr inbounds nuw i8, ptr %i.cu, i64 3
  %i.db = load i8, ptr %i.da, align 1, !tbaa !12
  %.not14.i.i.i.i100.3 = icmp eq i8 %i.db, 101
  br i1 %.not14.i.i.i.i100.3, label %.lr.ph.i.i.i.i96.4, label %tg3json__memcmp_fallback.exit.i.i.i93

.lr.ph.i.i.i.i96.4:                               ; preds = %.lr.ph.i.i.i.i96.3
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cu, i64 4
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !12
  %.not14.i.i.i.i100.4 = icmp eq i8 %i.dd, 110
  br i1 %.not14.i.i.i.i100.4, label %.lr.ph.i.i.i.i96.5, label %tg3json__memcmp_fallback.exit.i.i.i93

.lr.ph.i.i.i.i96.5:                               ; preds = %.lr.ph.i.i.i.i96.4
  %i.de = getelementptr inbounds nuw i8, ptr %i.cu, i64 5
  %i.df = load i8, ptr %i.de, align 1, !tbaa !12
  %.not14.i.i.i.i100.5 = icmp eq i8 %i.df, 115
  br i1 %.not14.i.i.i.i100.5, label %.lr.ph.i.i.i.i96.6, label %tg3json__memcmp_fallback.exit.i.i.i93

.lr.ph.i.i.i.i96.6:                               ; preds = %.lr.ph.i.i.i.i96.5
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cu, i64 6
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !12
  %.not14.i.i.i.i100.6 = icmp eq i8 %i.dh, 105
  br i1 %.not14.i.i.i.i100.6, label %.lr.ph.i.i.i.i96.7, label %tg3json__memcmp_fallback.exit.i.i.i93

.lr.ph.i.i.i.i96.7:                               ; preds = %.lr.ph.i.i.i.i96.6
  %i.di = getelementptr inbounds nuw i8, ptr %i.cu, i64 7
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !12
  %.not14.i.i.i.i100.7 = icmp eq i8 %i.dj, 111
  br i1 %.not14.i.i.i.i100.7, label %.lr.ph.i.i.i.i96.8, label %tg3json__memcmp_fallback.exit.i.i.i93

.lr.ph.i.i.i.i96.8:                               ; preds = %.lr.ph.i.i.i.i96.7
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !12
  %.not14.i.i.i.i100.8 = icmp eq i8 %i.dl, 110
  br i1 %.not14.i.i.i.i100.8, label %.lr.ph.i.i.i.i96.9, label %tg3json__memcmp_fallback.exit.i.i.i93

.lr.ph.i.i.i.i96.9:                               ; preds = %.lr.ph.i.i.i.i96.8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cu, i64 9
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !12
  %.not14.i.i.i.i100.9 = icmp eq i8 %i.dn, 115
  br i1 %.not14.i.i.i.i100.9, label %tg3__json_get.exit107, label %tg3json__memcmp_fallback.exit.i.i.i93

tg3json__memcmp_fallback.exit.i.i.i93:            ; preds = %.lr.ph.i.preheader.i.i.i95, %.lr.ph.i.i.i.i96.1, %.lr.ph.i.i.i.i96.2, %.lr.ph.i.i.i.i96.3, %.lr.ph.i.i.i.i96.4, %.lr.ph.i.i.i.i96.5, %.lr.ph.i.i.i.i96.6, %.lr.ph.i.i.i.i96.7, %.lr.ph.i.i.i.i96.8, %.lr.ph.i.i.i.i96.9, %.lr.ph.split.i.i.i91
  %i.do = add nuw i64 %.01425.i.i.i92, 1          ; 2 uses
  %exitcond.not.i.i.i94 = icmp eq i64 %i.do, %i.cn
  br i1 %exitcond.not.i.i.i94, label %tg3__json_is_object.exit.thread, label %.lr.ph.split.i.i.i91, !llvm.loop !83

tg3__json_get.exit107:                            ; preds = %.lr.ph.i.i.i.i96.9
  %i.dp = getelementptr inbounds nuw [24 x i8], ptr %i.cp, i64 %.01425.i.i.i92
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !55 ; 5 uses
  %.not.i108 = icmp eq ptr %i.dr, null
  br i1 %.not.i108, label %tg3__json_is_object.exit.thread, label %tg3__json_is_object.exit

tg3__json_is_object.exit:                         ; preds = %tg3__json_get.exit107
  %i.ds = load i32, ptr %i.dr, align 8, !tbaa !13
  %.not156 = icmp eq i32 %i.ds, 6
  br i1 %.not156, label %tg3json_object_size.exit, label %tg3__json_is_object.exit.thread

tg3json_object_size.exit:                         ; preds = %tg3__json_is_object.exit
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 16 ; 2 uses
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !12 ; 4 uses
  %.not71 = icmp eq i64 %i.du, 0
  br i1 %.not71, label %tg3json_object_size.exit.thread, label %bb.p

bb.p:                                             ; preds = %tg3json_object_size.exit
  %i.dv = load ptr, ptr %0, align 8, !tbaa !207   ; 9 uses
  %i.dw = mul i64 %i.du, 96                       ; 6 uses
  %i.dx = icmp eq ptr %i.dv, null
  %i.dy = icmp eq i64 %i.dw, 0
  %or.cond.i = or i1 %i.dy, %i.dx
  br i1 %or.cond.i, label %tg3json_object_size.exit.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dv, i64 32
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !227 ; 3 uses
  %.not.i111 = icmp ne i64 %i.ea, 0               ; 2 uses
  %i.eb = icmp ugt i64 %i.dw, %i.ea
  %or.cond28.i112 = and i1 %.not.i111, %i.eb
  br i1 %or.cond28.i112, label %tg3json_object_size.exit.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dv, i64 8 ; 3 uses
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !241 ; 5 uses
  %.not26.i113 = icmp eq ptr %i.ed, null
  br i1 %.not26.i113, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !242 ; 3 uses
  %i.eg = add i64 %i.ef, %i.dw
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ed, i64 24
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !244
  %i.ej = icmp ugt i64 %i.eg, %i.ei
  br i1 %i.ej, label %bb.t, label %tg3__arena_alloc.exit125

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dv, i64 40
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !223
  %spec.select.i.i119 = call i64 @llvm.umax.i64(i64 %i.el, i64 range(i64 0, -7) %i.dw) ; 3 uses
  %i.em = icmp ugt i64 %spec.select.i.i119, %i.ea
  %or.cond.i.i120 = select i1 %.not.i111, i1 %i.em, i1 false
  br i1 %or.cond.i.i120, label %tg3json_object_size.exit.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.en = getelementptr inbounds nuw i8, ptr %i.dv, i64 16 ; 3 uses
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !245
  %i.ep = add i64 %spec.select.i.i119, 32         ; 3 uses
  %i.eq = add i64 %i.eo, %i.ep
  %i.er = getelementptr inbounds nuw i8, ptr %i.dv, i64 24
  %i.es = load i64, ptr %i.er, align 8, !tbaa !226
  %i.et = icmp ugt i64 %i.eq, %i.es
  br i1 %i.et, label %tg3json_object_size.exit.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.eu = getelementptr inbounds nuw i8, ptr %i.dv, i64 48
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !246
  %i.ew = getelementptr inbounds nuw i8, ptr %i.dv, i64 72
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !247
  %i.ey = call ptr %i.ev(i64 noundef %i.ep, ptr noundef %i.ex) #21, !inline_history !248 ; 8 uses
  %.not37.i.i121 = icmp eq ptr %i.ey, null
  br i1 %.not37.i.i121, label %tg3json_object_size.exit.thread, label %tg3__arena_alloc.exit125.thread

tg3__arena_alloc.exit125.thread:                  ; preds = %bb.v
  store ptr null, ptr %i.ey, align 8, !tbaa !249
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 32 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  store ptr %i.ez, ptr %i.fa, align 8, !tbaa !250
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ey, i64 24
  store i64 %spec.select.i.i119, ptr %i.fb, align 8, !tbaa !244
  %i.fc = load i64, ptr %i.en, align 8, !tbaa !245
  %i.fd = add i64 %i.fc, %i.ep
  store i64 %i.fd, ptr %i.en, align 8, !tbaa !245
  %i.fe = load ptr, ptr %i.ec, align 8, !tbaa !241 ; 2 uses
  %.not38.i.i123 = icmp eq ptr %i.fe, null
  %..i.i124 = select i1 %.not38.i.i123, ptr %i.dv, ptr %i.fe
  store ptr %i.ey, ptr %..i.i124, align 8, !tbaa !251
  store ptr %i.ey, ptr %i.ec, align 8, !tbaa !241
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  store i64 %i.dw, ptr %i.ff, align 8, !tbaa !242
  br label %.preheader

tg3__arena_alloc.exit125:                         ; preds = %bb.s
  %.phi.trans.insert.i115 = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  %.pre.i116 = load ptr, ptr %.phi.trans.insert.i115, align 8, !tbaa !250 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  %i.fh = getelementptr inbounds nuw i8, ptr %.pre.i116, i64 %i.ef
  %i.fi = add i64 %i.ef, %i.dw
  store i64 %i.fi, ptr %i.fg, align 8, !tbaa !242
  %.not72 = icmp eq ptr %.pre.i116, null
  br i1 %.not72, label %tg3json_object_size.exit.thread, label %.preheader

.preheader:                                       ; preds = %tg3__arena_alloc.exit125.thread, %tg3__arena_alloc.exit125
  %i.fj = phi ptr [ %i.ez, %tg3__arena_alloc.exit125.thread ], [ %i.fh, %tg3__arena_alloc.exit125 ] ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 220
  br label %tg3json_object_at.exit

tg3json_object_at.exit:                           ; preds = %.preheader, %bb.y
  %.0165 = phi i64 [ 0, %.preheader ], [ %i.gh, %bb.y ] ; 4 uses
  %i.fm = load i64, ptr %i.dt, align 8, !tbaa !12
  %.not9.i = icmp ult i64 %.0165, %i.fm
  call void @llvm.assume(i1 %.not9.i)
  %i.fn = load ptr, ptr %i.fk, align 8, !tbaa !12
  %i.fo = getelementptr inbounds nuw [24 x i8], ptr %i.fn, i64 %.0165 ; 3 uses
  %i.fp = getelementptr inbounds nuw [96 x i8], ptr %i.fj, i64 %.0165 ; 9 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  store <16 x i8> zeroinitializer, ptr %i.fp, align 1, !tbaa !12
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fp, i64 32
  store <16 x i8> zeroinitializer, ptr %i.fq, align 1, !tbaa !12
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fp, i64 48
  store <16 x i8> zeroinitializer, ptr %i.fr, align 1, !tbaa !12
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fp, i64 64
  store <16 x i8> zeroinitializer, ptr %i.fs, align 1, !tbaa !12
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fp, i64 80
  store <16 x i8> zeroinitializer, ptr %i.ft, align 1, !tbaa !12
  store <16 x i8> zeroinitializer, ptr %i.fu, align 1, !tbaa !12
  %i.fv = load ptr, ptr %0, align 8, !tbaa !207
  %i.fw = load ptr, ptr %i.fo, align 8, !tbaa !51
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  %i.fy = load i64, ptr %i.fx, align 8, !tbaa !54 ; 2 uses
  %i.fz = trunc i64 %i.fy to i32
  %i.ga = and i64 %i.fy, 4294967295
  %i.gb = call fastcc ptr @tg3__arena_strdup(ptr noundef %i.fv, ptr noundef readonly %i.fw, i64 noundef %i.ga) #20 ; 2 uses
  %.not.i132 = icmp eq ptr %i.gb, null
  %i.gc = select i1 %.not.i132, i32 0, i32 %i.fz
  %7 = ptrtoint ptr %i.gb to i64
  store i64 %7, ptr %i.fp, align 8, !tbaa !9
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  store i32 %i.gc, ptr %.sroa.44.0..sroa_idx, align 8, !tbaa !43
  %i.gd = load i32, ptr %i.fl, align 4, !tbaa !951
  %.not75 = icmp eq i32 %i.gd, 0
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fp, i64 16 ; 2 uses
  br i1 %.not75, label %bb.w, label %bb.x

bb.w:                                             ; preds = %tg3json_object_at.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fo, i64 16
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !55
  call fastcc void @tg3__json_to_value(ptr dead_on_unwind noalias writable align 8 %5, ptr noundef %0, ptr noundef %i.gg) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.ge, ptr noundef nonnull align 8 dereferenceable(80) %5, i64 80, i1 false), !tbaa.struct !952
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %bb.y

bb.x:                                             ; preds = %tg3json_object_at.exit
  store i32 0, ptr %i.ge, align 8, !tbaa !958
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.gh = add nuw i64 %.0165, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.gh, %i.du
  br i1 %exitcond.not, label %bb.z, label %tg3json_object_at.exit, !llvm.loop !961

bb.z:                                             ; preds = %bb.y
  %i.gi = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.fj, ptr %i.gi, align 8, !tbaa !962
  %i.gj = trunc i64 %i.du to i32
  %i.gk = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 %i.gj, ptr %i.gk, align 8, !tbaa !963
  br label %tg3json_object_size.exit.thread

tg3json_object_size.exit.thread:                  ; preds = %bb.v, %bb.t, %bb.u, %bb.p, %bb.q, %tg3__arena_alloc.exit125, %bb.z, %tg3json_object_size.exit
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.gm = load i32, ptr %i.gl, align 8, !tbaa !957
  %.not73 = icmp eq i32 %i.gm, 0
  br i1 %.not73, label %tg3__json_is_object.exit.thread, label %bb.aa

bb.aa:                                            ; preds = %tg3json_object_size.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 0, ptr %i.a, align 8, !tbaa !21
  %i.gn = call ptr @tg3json_stringify(ptr noundef nonnull %i.dr, ptr noundef nonnull %i.a) #20 ; 2 uses
  %.not74 = icmp eq ptr %i.gn, null
  br i1 %.not74, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.go = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.gp = load ptr, ptr %0, align 8, !tbaa !207
  %i.gq = load i64, ptr %i.a, align 8, !tbaa !21  ; 2 uses
  %i.gr = trunc i64 %i.gq to i32
  %i.gs = and i64 %i.gq, 4294967295
  %i.gt = call fastcc ptr @tg3__arena_strdup(ptr noundef %i.gp, ptr noundef nonnull readonly %i.gn, i64 noundef %i.gs) #20 ; 2 uses
  %.not.i135 = icmp eq ptr %i.gt, null
  %i.gu = select i1 %.not.i135, i32 0, i32 %i.gr
  %8 = ptrtoint ptr %i.gt to i64
  store i64 %8, ptr %i.go, align 8, !tbaa !9
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i32 %i.gu, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !43
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %tg3__json_is_object.exit.thread

tg3__json_is_object.exit.thread:                  ; preds = %tg3json__memcmp_fallback.exit.i.i.i93, %bb.a, %.preheader.i.i.preheader, %.preheader.i.i.i87, %tg3__json_get.exit.thread.thread, %tg3__json_get.exit107, %tg3json_object_size.exit.thread, %bb.ac, %tg3__json_is_object.exit
  ret void
}

; Function Attrs: nounwind
define internal fastcc void @tg3__parse_string(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr noundef %2, ptr nofree noundef nonnull writeonly captures(none) %3, i32 noundef range(i32 0, 2) %4, ptr noundef %5) unnamed_addr #9 {
bb.a:
  %.not.i.i = icmp eq ptr %2, null
  br i1 %.not.i.i, label %tg3__json_get.exit.thread, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.a, %.preheader.i.i
  %.0.i.i.i = phi ptr [ %i.b, %.preheader.i.i ], [ %2, %bb.a ] ; 3 uses
  %i.a = load i8, ptr %.0.i.i.i, align 1, !tbaa !12
  %.not.i.i.i = icmp eq i8 %i.a, 0
  %i.b = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 1
  br i1 %.not.i.i.i, label %tg3json__strlen_fallback.exit.i.i, label %.preheader.i.i, !llvm.loop !68

tg3json__strlen_fallback.exit.i.i:                ; preds = %.preheader.i.i
  %i.c = ptrtoint ptr %.0.i.i.i to i64
  %i.d = ptrtoint ptr %2 to i64
  %i.e = sub i64 %i.c, %i.d                       ; 3 uses
  %.not.i6.i.i = icmp eq ptr %1, null
  br i1 %.not.i6.i.i, label %tg3__json_get.exit.thread, label %bb.b

bb.b:                                             ; preds = %tg3json__strlen_fallback.exit.i.i
  %i.f = load i32, ptr %1, align 8, !tbaa !13
  %.not18.i.i.i = icmp eq i32 %i.f, 6
  br i1 %.not18.i.i.i, label %.preheader.i.i.i, label %tg3__json_get.exit.thread

.preheader.i.i.i:                                 ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !12   ; 3 uses
  %.not27.i.i.i = icmp eq i64 %i.h, 0
  br i1 %.not27.i.i.i, label %tg3__json_get.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !12   ; 3 uses
  %.not16.i.i.i.i = icmp eq i64 %i.e, 0
  br i1 %.not16.i.i.i.i, label %.lr.ph.split.us.i.i.i, label %.lr.ph.split.i.i.i

.lr.ph.split.us.i.i.i:                            ; preds = %.lr.ph.i.i.i, %tg3json__memcmp_fallback.exit.us.i.i.i
  %.01425.us.i.i.i = phi i64 [ %i.o, %tg3json__memcmp_fallback.exit.us.i.i.i ], [ 0, %.lr.ph.i.i.i ] ; 3 uses
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %i.j, i64 %.01425.us.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !54
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %tg3__json_get.exit, label %tg3json__memcmp_fallback.exit.us.i.i.i

tg3json__memcmp_fallback.exit.us.i.i.i:           ; preds = %.lr.ph.split.us.i.i.i
  %i.o = add nuw i64 %.01425.us.i.i.i, 1          ; 2 uses
  %exitcond31.not.i.i.i = icmp eq i64 %i.o, %i.h
  br i1 %exitcond31.not.i.i.i, label %tg3__json_get.exit.thread, label %.lr.ph.split.us.i.i.i, !llvm.loop !83

.lr.ph.split.i.i.i:                               ; preds = %.lr.ph.i.i.i, %tg3json__memcmp_fallback.exit.i.i.i
  %.01425.i.i.i = phi i64 [ %i.z, %tg3json__memcmp_fallback.exit.i.i.i ], [ 0, %.lr.ph.i.i.i ] ; 3 uses
  %i.p = getelementptr inbounds nuw [24 x i8], ptr %i.j, i64 %.01425.i.i.i ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !54
  %i.s = icmp eq i64 %i.r, %i.e
  br i1 %i.s, label %.lr.ph.i.preheader.i.i.i, label %tg3json__memcmp_fallback.exit.i.i.i

.lr.ph.i.preheader.i.i.i:                         ; preds = %.lr.ph.split.i.i.i
  %i.t = load ptr, ptr %i.p, align 8, !tbaa !51
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %.lr.ph.i.preheader.i.i.i
  %.in.i.i.i.i = phi i64 [ %i.w, %bb.c ], [ %i.e, %.lr.ph.i.preheader.i.i.i ]
  %.018.i.i.i.i = phi ptr [ %i.y, %bb.c ], [ %2, %.lr.ph.i.preheader.i.i.i ] ; 2 uses
  %.0917.i.i.i.i = phi ptr [ %i.x, %bb.c ], [ %i.t, %.lr.ph.i.preheader.i.i.i ] ; 2 uses
  %i.u = load i8, ptr %.0917.i.i.i.i, align 1, !tbaa !12
  %i.v = load i8, ptr %.018.i.i.i.i, align 1, !tbaa !12
  %.not14.i.i.i.i = icmp eq i8 %i.u, %i.v
  br i1 %.not14.i.i.i.i, label %bb.c, label %tg3json__memcmp_fallback.exit.i.i.i

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.w = add i64 %.in.i.i.i.i, -1                 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.0917.i.i.i.i, i64 1
  %i.y = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i, i64 1
  %.not.i.i.i.i = icmp eq i64 %i.w, 0
  br i1 %.not.i.i.i.i, label %tg3__json_get.exit, label %.lr.ph.i.i.i.i, !llvm.loop !84

tg3json__memcmp_fallback.exit.i.i.i:              ; preds = %.lr.ph.i.i.i.i, %.lr.ph.split.i.i.i
  %i.z = add nuw i64 %.01425.i.i.i, 1             ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.z, %i.h
  br i1 %exitcond.not.i.i.i, label %tg3__json_get.exit.thread, label %.lr.ph.split.i.i.i, !llvm.loop !83

tg3__json_get.exit:                               ; preds = %bb.c, %.lr.ph.split.us.i.i.i
  %i.aa = phi i64 [ %.01425.us.i.i.i, %.lr.ph.split.us.i.i.i ], [ %.01425.i.i.i, %bb.c ]
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %i.j, i64 %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !55 ; 4 uses
  %.not = icmp eq ptr %i.ad, null
  br i1 %.not, label %tg3__json_get.exit.thread, label %bb.f

tg3__json_get.exit.thread:                        ; preds = %tg3json__memcmp_fallback.exit.i.i.i, %tg3json__memcmp_fallback.exit.us.i.i.i, %.preheader.i.i.i, %bb.b, %tg3json__strlen_fallback.exit.i.i, %bb.a, %tg3__json_get.exit
  %.not22 = icmp eq i32 %4, 0
  br i1 %.not22, label %bb.e, label %bb.d

bb.d:                                             ; preds = %tg3__json_get.exit.thread
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !210
  %i.ag = load ptr, ptr %0, align 8, !tbaa !207
  tail call void (ptr, ptr, i32, i32, ptr, ptr, ...) @tg3__error_pushf(ptr noundef %i.af, ptr noundef %i.ag, i32 poison, i32 noundef 12, ptr noundef %5, ptr noundef nonnull @.str.60, ptr noundef %2) #20
  br label %bb.i

bb.e:                                             ; preds = %tg3__json_get.exit.thread
  store ptr null, ptr %3, align 8, !tbaa !343
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 0, ptr %i.ah, align 8, !tbaa !344
  br label %bb.i

bb.f:                                             ; preds = %tg3__json_get.exit
  %i.ai = load i32, ptr %i.ad, align 8, !tbaa !13
  %.not23 = icmp eq i32 %i.ai, 4
  br i1 %.not23, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !210
  %i.al = load ptr, ptr %0, align 8, !tbaa !207
  tail call void (ptr, ptr, i32, i32, ptr, ptr, ...) @tg3__error_pushf(ptr noundef %i.ak, ptr noundef %i.al, i32 poison, i32 noundef 11, ptr noundef %5, ptr noundef nonnull @.str.61, ptr noundef nonnull %2) #20
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.am = load ptr, ptr %0, align 8, !tbaa !207
  %i.an = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !12
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !12 ; 2 uses
  %i.ar = trunc i64 %i.aq to i32
  %i.as = and i64 %i.aq, 4294967295
  %i.at = tail call fastcc ptr @tg3__arena_strdup(ptr noundef %i.am, ptr noundef readonly %i.ao, i64 noundef %i.as) #20 ; 2 uses
  %.not.i = icmp eq ptr %i.at, null
  %i.au = select i1 %.not.i, i32 0, i32 %i.ar
  %6 = ptrtoint ptr %i.at to i64
  store i64 %6, ptr %3, align 8, !tbaa !9
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.au, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !43
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.e, %bb.d
  ret void
}

; Function Attrs: nounwind
define internal fastcc ptr @tg3__arena_strdup(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, i64 noundef range(i64 -2147483648, 4294967296) %2) unnamed_addr #9 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %tg3__arena_alloc.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = add nsw i64 %2, 1                        ; 2 uses
  %i.c = icmp eq ptr %0, null
  %i.d = icmp eq i64 %i.b, 0
  %or.cond.i = or i1 %i.c, %i.d
  br i1 %or.cond.i, label %tg3__arena_alloc.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load i64, ptr %i.e, align 8, !tbaa !227  ; 3 uses
  %.not.i = icmp ne i64 %i.f, 0                   ; 2 uses
  %i.g = icmp ugt i64 %i.b, %i.f
  %or.cond28.i = and i1 %.not.i, %i.g
  br i1 %or.cond28.i, label %tg3__arena_alloc.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = and i64 %2, -8
  %i.i = add nsw i64 %i.h, 8                      ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !241  ; 5 uses
  %.not26.i = icmp eq ptr %i.k, null
  br i1 %.not26.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load i64, ptr %i.l, align 8, !tbaa !242  ; 3 uses
  %i.n = add i64 %i.m, %i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.p = load i64, ptr %i.o, align 8, !tbaa !244
  %i.q = icmp ugt i64 %i.n, %i.p
  br i1 %i.q, label %bb.f, label %tg3__arena_alloc.exit

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.s = load i64, ptr %i.r, align 8, !tbaa !223
  %spec.select.i.i = tail call i64 @llvm.umax.i64(i64 %i.s, i64 range(i64 0, -7) %i.i) ; 3 uses
  %i.t = icmp ugt i64 %spec.select.i.i, %i.f
  %or.cond.i.i = select i1 %.not.i, i1 %i.t, i1 false
  br i1 %or.cond.i.i, label %tg3__arena_alloc.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !245
  %i.w = add i64 %spec.select.i.i, 32             ; 3 uses
  %i.x = add i64 %i.v, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.z = load i64, ptr %i.y, align 8, !tbaa !226
  %i.aa = icmp ugt i64 %i.x, %i.z
  br i1 %i.aa, label %tg3__arena_alloc.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !246
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !247
  %i.af = tail call ptr %i.ac(i64 noundef %i.w, ptr noundef %i.ae) #21, !inline_history !248 ; 8 uses
  %.not37.i.i = icmp eq ptr %i.af, null
  br i1 %.not37.i.i, label %tg3__arena_alloc.exit.thread, label %tg3__arena_alloc.exit.thread26

tg3__arena_alloc.exit.thread26:                   ; preds = %bb.h
  store ptr null, ptr %i.af, align 8, !tbaa !249
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 32 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !250
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  store i64 %spec.select.i.i, ptr %i.ai, align 8, !tbaa !244
  %i.aj = load i64, ptr %i.u, align 8, !tbaa !245
  %i.ak = add i64 %i.aj, %i.w
  store i64 %i.ak, ptr %i.u, align 8, !tbaa !245
  %i.al = load ptr, ptr %i.j, align 8, !tbaa !241 ; 2 uses
  %.not38.i.i = icmp eq ptr %i.al, null
  %..i.i = select i1 %.not38.i.i, ptr %0, ptr %i.al
  store ptr %i.af, ptr %..i.i, align 8, !tbaa !251
  store ptr %i.af, ptr %i.j, align 8, !tbaa !241
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store i64 %i.i, ptr %i.am, align 8, !tbaa !242
  br label %bb.i

tg3__arena_alloc.exit:                            ; preds = %bb.e
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !250 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %i.m
  %i.ap = add i64 %i.m, %i.i
  store i64 %i.ap, ptr %i.an, align 8, !tbaa !242
  %.not14 = icmp eq ptr %.pre.i, null
  br i1 %.not14, label %tg3__arena_alloc.exit.thread, label %bb.i

bb.i:                                             ; preds = %tg3__arena_alloc.exit.thread26, %tg3__arena_alloc.exit
  %i.aq = phi ptr [ %i.ag, %tg3__arena_alloc.exit.thread26 ], [ %i.ao, %tg3__arena_alloc.exit ] ; 8 uses
  %.not15 = icmp eq i64 %2, 0
  br i1 %.not15, label %tg3__memcpy.exit, label %iter.check

iter.check:                                       ; preds = %bb.i
  %i.ar = ptrtoaddr ptr %i.aq to i64
  %min.iters.check = icmp ult i64 %2, 4
  %i.as = sub i64 %i.a, %i.ar
  %diff.check = icmp ugt i64 %i.as, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check29 = icmp ult i64 %2, 32
  br i1 %min.iters.check29, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.at = and i64 %2, 28
  %n.vec = and i64 %2, -32                        ; 5 uses
  %i.au = getelementptr i8, ptr %1, i64 %n.vec
  %i.av = getelementptr i8, ptr %i.aq, i64 %n.vec
  %i.aw = and i64 %2, 31
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %1, i64 %index ; 2 uses
  %next.gep30 = getelementptr i8, ptr %i.aq, i64 %index ; 2 uses
  %i.ax = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !12
  %wide.load31 = load <16 x i8>, ptr %i.ax, align 1, !tbaa !12
  %i.ay = getelementptr i8, ptr %next.gep30, i64 16
  store <16 x i8> %wide.load, ptr %next.gep30, align 1, !tbaa !12
  store <16 x i8> %wide.load31, ptr %i.ay, align 1, !tbaa !12
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !964

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %tg3__memcpy.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.at, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !36

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec34 = and i64 %2, -4                       ; 4 uses
  %i.ba = getelementptr i8, ptr %1, i64 %n.vec34
  %i.bb = getelementptr i8, ptr %i.aq, i64 %n.vec34
  %i.bc = and i64 %2, 3
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index35 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next39, %vec.epilog.vector.body ] ; 3 uses
  %next.gep36 = getelementptr i8, ptr %1, i64 %index35
  %next.gep37 = getelementptr i8, ptr %i.aq, i64 %index35
  %wide.load38 = load <4 x i8>, ptr %next.gep36, align 1, !tbaa !12
  store <4 x i8> %wide.load38, ptr %next.gep37, align 1, !tbaa !12
  %index.next39 = add nuw i64 %index35, 4         ; 2 uses
  %i.bd = icmp eq i64 %index.next39, %n.vec34
  br i1 %i.bd, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !965

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n40 = icmp eq i64 %2, %n.vec34
  br i1 %cmp.n40, label %tg3__memcpy.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.010.i.ph = phi ptr [ %1, %iter.check ], [ %i.au, %vec.epilog.iter.check ], [ %i.ba, %vec.epilog.middle.block ] ; 2 uses
  %.059.i.ph = phi ptr [ %i.aq, %iter.check ], [ %i.av, %vec.epilog.iter.check ], [ %i.bb, %vec.epilog.middle.block ] ; 2 uses
  %.068.i.ph = phi i64 [ %2, %iter.check ], [ %i.aw, %vec.epilog.iter.check ], [ %i.bc, %vec.epilog.middle.block ] ; 4 uses
  %i.be = add i64 %.068.i.ph, -1
  %xtraiter = and i64 %.068.i.ph, 7               ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.010.i.prol = phi ptr [ %i.bg, %.lr.ph.i.prol ], [ %.010.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.059.i.prol = phi ptr [ %i.bi, %.lr.ph.i.prol ], [ %.059.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.068.i.prol = phi i64 [ %i.bf, %.lr.ph.i.prol ], [ %.068.i.ph, %.lr.ph.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.bf = add i64 %.068.i.prol, -1                ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.010.i.prol, i64 1 ; 2 uses
  %i.bh = load i8, ptr %.010.i.prol, align 1, !tbaa !12
  %i.bi = getelementptr inbounds nuw i8, ptr %.059.i.prol, i64 1 ; 2 uses
  store i8 %i.bh, ptr %.059.i.prol, align 1, !tbaa !12
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !966

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.010.i.unr = phi ptr [ %.010.i.ph, %.lr.ph.i.preheader ], [ %i.bg, %.lr.ph.i.prol ]
  %.059.i.unr = phi ptr [ %.059.i.ph, %.lr.ph.i.preheader ], [ %i.bi, %.lr.ph.i.prol ]
  %.068.i.unr = phi i64 [ %.068.i.ph, %.lr.ph.i.preheader ], [ %i.bf, %.lr.ph.i.prol ]
  %i.bj = icmp ult i64 %i.be, 7
end_hunk_6
begin_hunk_7_@tg3__parse_double:bb.a
  br label %bb.h

bb.h:                                             ; preds = %tg3__json_get.exit.thread, %tg3__json_number_to_double.exit, %bb.f, %bb.d
  ret void
}

; Function Attrs: nounwind
define internal fastcc void @tg3__parse_texture_info(ptr noundef nonnull %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr noundef %2, ptr nofree noundef nonnull writeonly %3) unnamed_addr #9 {
bb.a:
  %.not.i.i = icmp eq ptr %2, null
  br i1 %.not.i.i, label %tg3__json_get.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.a, %.preheader.i.i
  %.0.i.i.i = phi ptr [ %i.b, %.preheader.i.i ], [ %2, %bb.a ] ; 3 uses
  %i.a = load i8, ptr %.0.i.i.i, align 1, !tbaa !12
  %.not.i.i.i = icmp eq i8 %i.a, 0
  %i.b = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 1
  br i1 %.not.i.i.i, label %tg3json__strlen_fallback.exit.i.i, label %.preheader.i.i, !llvm.loop !68

tg3json__strlen_fallback.exit.i.i:                ; preds = %.preheader.i.i
  %i.c = ptrtoint ptr %.0.i.i.i to i64
  %i.d = ptrtoint ptr %2 to i64
  %i.e = sub i64 %i.c, %i.d                       ; 3 uses
  %.not.i6.i.i = icmp eq ptr %1, null
  br i1 %.not.i6.i.i, label %tg3__json_get.exit, label %bb.b

bb.b:                                             ; preds = %tg3json__strlen_fallback.exit.i.i
  %i.f = load i32, ptr %1, align 8, !tbaa !13
  %.not18.i.i.i = icmp eq i32 %i.f, 6
  br i1 %.not18.i.i.i, label %.preheader.i.i.i, label %tg3__json_get.exit

.preheader.i.i.i:                                 ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !12   ; 3 uses
  %.not27.i.i.i = icmp eq i64 %i.h, 0
  br i1 %.not27.i.i.i, label %tg3__json_get.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !12   ; 3 uses
  %.not16.i.i.i.i = icmp eq i64 %i.e, 0
  br i1 %.not16.i.i.i.i, label %.lr.ph.split.us.i.i.i, label %.lr.ph.split.i.i.i

.lr.ph.split.us.i.i.i:                            ; preds = %.lr.ph.i.i.i, %tg3json__memcmp_fallback.exit.us.i.i.i
  %.01425.us.i.i.i = phi i64 [ %i.o, %tg3json__memcmp_fallback.exit.us.i.i.i ], [ 0, %.lr.ph.i.i.i ] ; 3 uses
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %i.j, i64 %.01425.us.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !54
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %tg3json__memcmp_fallback.exit.thread.i.i.i, label %tg3json__memcmp_fallback.exit.us.i.i.i

tg3json__memcmp_fallback.exit.us.i.i.i:           ; preds = %.lr.ph.split.us.i.i.i
  %i.o = add nuw i64 %.01425.us.i.i.i, 1          ; 2 uses
  %exitcond31.not.i.i.i = icmp eq i64 %i.o, %i.h
  br i1 %exitcond31.not.i.i.i, label %tg3__json_get.exit, label %.lr.ph.split.us.i.i.i, !llvm.loop !83

.lr.ph.split.i.i.i:                               ; preds = %.lr.ph.i.i.i, %tg3json__memcmp_fallback.exit.i.i.i
  %.01425.i.i.i = phi i64 [ %i.ad, %tg3json__memcmp_fallback.exit.i.i.i ], [ 0, %.lr.ph.i.i.i ] ; 3 uses
  %i.p = getelementptr inbounds nuw [24 x i8], ptr %i.j, i64 %.01425.i.i.i ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !54
  %i.s = icmp eq i64 %i.r, %i.e
  br i1 %i.s, label %.lr.ph.i.preheader.i.i.i, label %tg3json__memcmp_fallback.exit.i.i.i

.lr.ph.i.preheader.i.i.i:                         ; preds = %.lr.ph.split.i.i.i
  %i.t = load ptr, ptr %i.p, align 8, !tbaa !51
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %.lr.ph.i.preheader.i.i.i
  %.in.i.i.i.i = phi i64 [ %i.w, %bb.c ], [ %i.e, %.lr.ph.i.preheader.i.i.i ]
  %.018.i.i.i.i = phi ptr [ %i.y, %bb.c ], [ %2, %.lr.ph.i.preheader.i.i.i ] ; 2 uses
  %.0917.i.i.i.i = phi ptr [ %i.x, %bb.c ], [ %i.t, %.lr.ph.i.preheader.i.i.i ] ; 2 uses
  %i.u = load i8, ptr %.0917.i.i.i.i, align 1, !tbaa !12
  %i.v = load i8, ptr %.018.i.i.i.i, align 1, !tbaa !12
  %.not14.i.i.i.i = icmp eq i8 %i.u, %i.v
  br i1 %.not14.i.i.i.i, label %bb.c, label %tg3json__memcmp_fallback.exit.i.i.i

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.w = add i64 %.in.i.i.i.i, -1                 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.0917.i.i.i.i, i64 1
  %i.y = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i, i64 1
  %.not.i.i.i.i = icmp eq i64 %i.w, 0
  br i1 %.not.i.i.i.i, label %tg3json__memcmp_fallback.exit.thread.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !84

tg3json__memcmp_fallback.exit.thread.i.i.i:       ; preds = %bb.c, %.lr.ph.split.us.i.i.i
  %i.z = phi i64 [ %.01425.us.i.i.i, %.lr.ph.split.us.i.i.i ], [ %.01425.i.i.i, %bb.c ]
  %i.aa = getelementptr inbounds nuw [24 x i8], ptr %i.j, i64 %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !55
  br label %tg3__json_get.exit

tg3json__memcmp_fallback.exit.i.i.i:              ; preds = %.lr.ph.i.i.i.i, %.lr.ph.split.i.i.i
  %i.ad = add nuw i64 %.01425.i.i.i, 1            ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.ad, %i.h
  br i1 %exitcond.not.i.i.i, label %tg3__json_get.exit, label %.lr.ph.split.i.i.i, !llvm.loop !83

tg3__json_get.exit:                               ; preds = %tg3json__memcmp_fallback.exit.i.i.i, %tg3json__memcmp_fallback.exit.us.i.i.i, %bb.a, %tg3json__strlen_fallback.exit.i.i, %bb.b, %.preheader.i.i.i, %tg3json__memcmp_fallback.exit.thread.i.i.i
  %.0.i.i = phi ptr [ null, %bb.a ], [ null, %tg3json__strlen_fallback.exit.i.i ], [ %i.ac, %tg3json__memcmp_fallback.exit.thread.i.i.i ], [ null, %bb.b ], [ null, %.preheader.i.i.i ], [ null, %tg3json__memcmp_fallback.exit.us.i.i.i ], [ null, %tg3json__memcmp_fallback.exit.i.i.i ] ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 20
  store <16 x i8> zeroinitializer, ptr %i.ae, align 1, !tbaa !12
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 36
  store <16 x i8> zeroinitializer, ptr %i.ag, align 1, !tbaa !12
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 52
  store <16 x i8> zeroinitializer, ptr %i.ah, align 1, !tbaa !12
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 60
  store <8 x i8> zeroinitializer, ptr %i.ai, align 1, !tbaa !12
  store <4 x i8> zeroinitializer, ptr %i.aj, align 1, !tbaa !12
  store i32 -1, ptr %3, align 8, !tbaa !397
  %.not = icmp eq ptr %.0.i.i, null
  br i1 %.not, label %bb.e, label %tg3__json_is_object.exit

tg3__json_is_object.exit:                         ; preds = %tg3__json_get.exit
  %i.ak = load i32, ptr %.0.i.i, align 8, !tbaa !13
  %.not18 = icmp eq i32 %i.ak, 6
  br i1 %.not18, label %bb.d, label %bb.e

bb.d:                                             ; preds = %tg3__json_is_object.exit
  tail call fastcc void @tg3__parse_int(ptr noundef %0, ptr noundef nonnull %.0.i.i, ptr noundef nonnull @.str.157, ptr noundef %3, i32 noundef 0, ptr noundef %2) #20
  tail call fastcc void @tg3__parse_int(ptr noundef %0, ptr noundef nonnull %.0.i.i, ptr noundef nonnull @.str.158, ptr noundef %i.ae, i32 noundef 0, ptr noundef %2) #20
  tail call fastcc void @tg3__parse_extras_and_extensions(ptr noundef %0, ptr noundef nonnull %.0.i.i, ptr noundef %i.af) #20
  br label %bb.e

bb.e:                                             ; preds = %tg3__json_is_object.exit, %tg3__json_get.exit, %bb.d
  ret void
}

; Function Attrs: nounwind
define internal fastcc void @tg3__json_to_value(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) initializes((0, 80)) %0, ptr noundef nonnull %1, ptr nofree noundef readonly captures(address_is_null) %2) unnamed_addr #9 {
tg3__memset.exit:
  %3 = alloca %struct.tg3_value, align 8          ; 4 uses
  %4 = alloca %struct.tg3_value, align 8          ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <16 x i8> zeroinitializer, ptr %0, align 8, !tbaa !12
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <16 x i8> zeroinitializer, ptr %i.a, align 8, !tbaa !12
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <16 x i8> zeroinitializer, ptr %i.b, align 8, !tbaa !12
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <16 x i8> zeroinitializer, ptr %i.c, align 8, !tbaa !12
  store <16 x i8> zeroinitializer, ptr %i.d, align 8, !tbaa !12
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %tg3__arena_alloc.exit.thread, label %bb.a

bb.a:                                             ; preds = %tg3__memset.exit
  %i.e = load i32, ptr %2, align 8, !tbaa !13
  switch i32 %i.e, label %tg3__arena_alloc.exit.thread [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
    i32 4, label %bb.f
    i32 5, label %bb.g
    i32 6, label %bb.o
  ]

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %0, align 8, !tbaa !983
  br label %tg3__arena_alloc.exit.thread

bb.c:                                             ; preds = %bb.a
  store i32 1, ptr %0, align 8, !tbaa !983
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !12
  %.not54 = icmp ne i32 %i.g, 0
  %i.h = zext i1 %.not54 to i32
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.h, ptr %i.i, align 8, !tbaa !12
  br label %tg3__arena_alloc.exit.thread

bb.d:                                             ; preds = %bb.a
  store i32 2, ptr %0, align 8, !tbaa !983
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !12
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !12
  br label %tg3__arena_alloc.exit.thread

bb.e:                                             ; preds = %bb.a
  store i32 3, ptr %0, align 8, !tbaa !983
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.n = load double, ptr %i.m, align 8, !tbaa !12
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.n, ptr %i.o, align 8, !tbaa !12
  br label %tg3__arena_alloc.exit.thread

bb.f:                                             ; preds = %bb.a
  store i32 4, ptr %0, align 8, !tbaa !983
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %1, align 8, !tbaa !207
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !12
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !12   ; 2 uses
  %i.v = trunc i64 %i.u to i32
  %i.w = and i64 %i.u, 4294967295
  %i.x = tail call fastcc ptr @tg3__arena_strdup(ptr noundef %i.q, ptr noundef readonly %i.s, i64 noundef %i.w) #20 ; 2 uses
  %.not.i55 = icmp eq ptr %i.x, null
  %i.y = select i1 %.not.i55, i32 0, i32 %i.v
  %5 = ptrtoint ptr %i.x to i64
  store i64 %5, ptr %i.p, align 8, !tbaa !9
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.y, ptr %.sroa.48.0..sroa_idx, align 8, !tbaa !43
  br label %tg3__arena_alloc.exit.thread

bb.g:                                             ; preds = %bb.a
  store i32 5, ptr %0, align 8, !tbaa !983
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !12 ; 2 uses
  %.not52 = icmp eq i64 %i.ab, 0
  br i1 %.not52, label %tg3__arena_alloc.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = load ptr, ptr %1, align 8, !tbaa !207   ; 9 uses
  %i.ad = mul i64 %i.ab, 80                       ; 6 uses
  %i.ae = icmp eq ptr %i.ac, null
  %i.af = icmp eq i64 %i.ad, 0
  %or.cond.i = or i1 %i.af, %i.ae
  br i1 %or.cond.i, label %tg3__arena_alloc.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !227 ; 3 uses
  %.not.i56 = icmp ne i64 %i.ah, 0                ; 2 uses
  %i.ai = icmp ugt i64 %i.ad, %i.ah
  %or.cond28.i = and i1 %.not.i56, %i.ai
  br i1 %or.cond28.i, label %tg3__arena_alloc.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 3 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !241 ; 5 uses
  %.not26.i = icmp eq ptr %i.ak, null
  br i1 %.not26.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load i64, ptr %i.al, align 8, !tbaa !242 ; 3 uses
  %i.an = add i64 %i.am, %i.ad
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !244
  %i.aq = icmp ugt i64 %i.an, %i.ap
  br i1 %i.aq, label %bb.l, label %tg3__arena_alloc.exit

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !223
  %spec.select.i.i = tail call i64 @llvm.umax.i64(i64 %i.as, i64 range(i64 0, -7) %i.ad) ; 3 uses
  %i.at = icmp ugt i64 %spec.select.i.i, %i.ah
  %or.cond.i.i = select i1 %.not.i56, i1 %i.at, i1 false
  br i1 %or.cond.i.i, label %tg3__arena_alloc.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.au = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 3 uses
  %i.av = load i64, ptr %i.au, align 8, !tbaa !245
  %i.aw = add i64 %spec.select.i.i, 32            ; 3 uses
  %i.ax = add i64 %i.av, %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !226
  %i.ba = icmp ugt i64 %i.ax, %i.az
  br i1 %i.ba, label %tg3__arena_alloc.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !246
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ac, i64 72
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !247
  %i.bf = tail call ptr %i.bc(i64 noundef %i.aw, ptr noundef %i.be) #21, !inline_history !248 ; 8 uses
  %.not37.i.i = icmp eq ptr %i.bf, null
  br i1 %.not37.i.i, label %tg3__arena_alloc.exit.thread, label %tg3__arena_alloc.exit.thread103

tg3__arena_alloc.exit.thread103:                  ; preds = %bb.n
  store ptr null, ptr %i.bf, align 8, !tbaa !249
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 32 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !250
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  store i64 %spec.select.i.i, ptr %i.bi, align 8, !tbaa !244
  %i.bj = load i64, ptr %i.au, align 8, !tbaa !245
  %i.bk = add i64 %i.bj, %i.aw
  store i64 %i.bk, ptr %i.au, align 8, !tbaa !245
  %i.bl = load ptr, ptr %i.aj, align 8, !tbaa !241 ; 2 uses
  %.not38.i.i = icmp eq ptr %i.bl, null
  %..i.i = select i1 %.not38.i.i, ptr %i.ac, ptr %i.bl
  store ptr %i.bf, ptr %..i.i, align 8, !tbaa !251
  store ptr %i.bf, ptr %i.aj, align 8, !tbaa !241
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  store i64 %i.ad, ptr %i.bm, align 8, !tbaa !242
  br label %.preheader

tg3__arena_alloc.exit:                            ; preds = %bb.k
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !250 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.bo = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %i.am
  %i.bp = add i64 %i.am, %i.ad
  store i64 %i.bp, ptr %i.bn, align 8, !tbaa !242
  %.not53 = icmp eq ptr %.pre.i, null
  br i1 %.not53, label %tg3__arena_alloc.exit.thread, label %.preheader

.preheader:                                       ; preds = %tg3__arena_alloc.exit.thread103, %tg3__arena_alloc.exit
  %i.bq = phi ptr [ %i.bg, %tg3__arena_alloc.exit.thread103 ], [ %i.bo, %tg3__arena_alloc.exit ] ; 2 uses
  %i.br = load i64, ptr %i.aa, align 8, !tbaa !12
  %.not88 = icmp eq i64 %i.br, 0
  br i1 %.not88, label %._crit_edge85, label %.lr.ph84

.lr.ph84:                                         ; preds = %.preheader, %.lr.ph84
  %.083 = phi i64 [ %i.bv, %.lr.ph84 ], [ 0, %.preheader ] ; 3 uses
  %i.bs = getelementptr inbounds nuw [80 x i8], ptr %i.bq, i64 %.083
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.bt = load ptr, ptr %i.z, align 8, !tbaa !12
  %i.bu = getelementptr inbounds nuw [24 x i8], ptr %i.bt, i64 %.083
  call fastcc void @tg3__json_to_value(ptr dead_on_unwind noalias writable align 8 %3, ptr noundef %1, ptr noundef %i.bu) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.bs, ptr noundef nonnull align 8 dereferenceable(80) %3, i64 80, i1 false), !tbaa.struct !952
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  %i.bv = add nuw i64 %.083, 1                    ; 2 uses
  %i.bw = load i64, ptr %i.aa, align 8, !tbaa !12 ; 2 uses
  %i.bx = icmp ult i64 %i.bv, %i.bw
  br i1 %i.bx, label %.lr.ph84, label %._crit_edge85.loopexit, !llvm.loop !984

._crit_edge85.loopexit:                           ; preds = %.lr.ph84
  %i.by = trunc i64 %i.bw to i32
  br label %._crit_edge85

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
  %6 = ptrtoint ptr %i.ed to i64
  store i64 %6, ptr %i.du, align 8, !tbaa !9
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
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 10
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 11
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 21
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 22
  %wide.trip.count.i = zext i32 %3 to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.o, %bb.b
  %indvars.iv.i = phi i64 [ 0, %bb.b ], [ %indvars.iv.next.i, %bb.o ] ; 2 uses
  %i.o = phi i64 [ %test_heap_used.promoted.i, %bb.b ], [ %i.ec, %bb.o ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv.i ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !343  ; 8 uses
  %i.r = ptrtoaddr ptr %i.q to i64
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %bb.o, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.t = load i32, ptr %i.s, align 8, !tbaa !344  ; 4 uses
  %i.u = zext i32 %i.t to i64                     ; 13 uses
  store <4 x i8> zeroinitializer, ptr %i.g, align 4, !tbaa !12
  store i8 0, ptr %i.i, align 2, !tbaa !12
  store i8 0, ptr %i.j, align 1, !tbaa !12
  store i8 0, ptr %i.k, align 8, !tbaa !12
  store i32 4, ptr %4, align 8, !tbaa !13
  %i.v = and i64 %i.u, 4294967288                 ; 2 uses
  %i.w = add i64 %i.o, 16
  %i.x = add i64 %i.w, %i.v                       ; 6 uses
  %i.y = icmp ugt i64 %i.x, 524288
  br i1 %i.y, label %tg3__json_from_string_array.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = add nuw nsw i64 %i.u, 1
  %i.aa = getelementptr inbounds nuw i8, ptr @test_heap, i64 %i.o ; 2 uses
  store i64 %i.z, ptr %i.aa, align 8, !tbaa !21
  store i64 %i.x, ptr @test_heap_used, align 8, !tbaa !21
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 8 uses
  %.not11.i.i.i = icmp eq i32 %i.t, 0
  br i1 %.not11.i.i.i, label %.loopexit.i, label %iter.check50

iter.check50:                                     ; preds = %bb.e
  %min.iters.check33 = icmp ult i32 %i.t, 4
  br i1 %min.iters.check33, label %.lr.ph.i.i.i.i.preheader, label %vector.memcheck31

vector.memcheck31:                                ; preds = %iter.check50
  %i.ac = add i64 %i.o, add (i64 ptrtoaddr (ptr @test_heap to i64), i64 8)
  %i.ad = sub i64 %i.r, %i.ac
  %diff.check32 = icmp ugt i64 %i.ad, -32
  br i1 %diff.check32, label %.lr.ph.i.i.i.i.preheader, label %vector.main.loop.iter.check34

vector.main.loop.iter.check34:                    ; preds = %vector.memcheck31
  %min.iters.check35 = icmp ult i32 %i.t, 32
  br i1 %min.iters.check35, label %vec.epilog.ph54, label %vector.ph36

vector.ph36:                                      ; preds = %vector.main.loop.iter.check34
  %i.ae = and i64 %i.u, 28
  %n.vec37 = and i64 %i.u, 4294967264             ; 5 uses
  %i.af = getelementptr i8, ptr %i.q, i64 %n.vec37
  %i.ag = getelementptr i8, ptr %i.ab, i64 %n.vec37
  %i.ah = and i64 %i.u, 31
  br label %vector.body38

vector.body38:                                    ; preds = %vector.body38, %vector.ph36
  %index39 = phi i64 [ 0, %vector.ph36 ], [ %index.next43, %vector.body38 ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.q, i64 %index39 ; 2 uses
  %next.gep40 = getelementptr i8, ptr %i.ab, i64 %index39 ; 2 uses
  %i.ai = getelementptr i8, ptr %next.gep, i64 16
  %wide.load41 = load <16 x i8>, ptr %next.gep, align 1, !tbaa !12
  %wide.load42 = load <16 x i8>, ptr %i.ai, align 1, !tbaa !12
  %i.aj = getelementptr i8, ptr %next.gep40, i64 16
  store <16 x i8> %wide.load41, ptr %next.gep40, align 1, !tbaa !12
  store <16 x i8> %wide.load42, ptr %i.aj, align 1, !tbaa !12
  %index.next43 = add nuw i64 %index39, 32        ; 2 uses
  %i.ak = icmp eq i64 %index.next43, %n.vec37
  br i1 %i.ak, label %middle.block44, label %vector.body38, !llvm.loop !990

middle.block44:                                   ; preds = %vector.body38
  %cmp.n45 = icmp eq i64 %n.vec37, %i.u
  br i1 %cmp.n45, label %.loopexit.i, label %vec.epilog.iter.check52

vec.epilog.iter.check52:                          ; preds = %middle.block44
  %min.epilog.iters.check53 = icmp eq i64 %i.ae, 0
  br i1 %min.epilog.iters.check53, label %.lr.ph.i.i.i.i.preheader, label %vec.epilog.ph54, !prof !36

vec.epilog.ph54:                                  ; preds = %vector.main.loop.iter.check34, %vec.epilog.iter.check52
  %vec.epilog.resume.val46 = phi i64 [ %n.vec37, %vec.epilog.iter.check52 ], [ 0, %vector.main.loop.iter.check34 ]
  %n.vec55 = and i64 %i.u, 4294967292             ; 4 uses
  %i.al = getelementptr i8, ptr %i.q, i64 %n.vec55
  %i.am = getelementptr i8, ptr %i.ab, i64 %n.vec55
  %i.an = and i64 %i.u, 3
  br label %vec.epilog.vector.body56

vec.epilog.vector.body56:                         ; preds = %vec.epilog.vector.body56, %vec.epilog.ph54
  %index57 = phi i64 [ %vec.epilog.resume.val46, %vec.epilog.ph54 ], [ %index.next61, %vec.epilog.vector.body56 ] ; 3 uses
  %next.gep58 = getelementptr i8, ptr %i.q, i64 %index57
  %next.gep59 = getelementptr i8, ptr %i.ab, i64 %index57
  %wide.load60 = load <4 x i8>, ptr %next.gep58, align 1, !tbaa !12
  store <4 x i8> %wide.load60, ptr %next.gep59, align 1, !tbaa !12
  %index.next61 = add nuw i64 %index57, 4         ; 2 uses
  %i.ao = icmp eq i64 %index.next61, %n.vec55
  br i1 %i.ao, label %vec.epilog.middle.block62, label %vec.epilog.vector.body56, !llvm.loop !991

vec.epilog.middle.block62:                        ; preds = %vec.epilog.vector.body56
end_hunk_7
