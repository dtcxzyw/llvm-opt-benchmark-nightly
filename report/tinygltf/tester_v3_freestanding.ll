Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tinygltf/original/tester_v3_freestanding?download=true
inline.NumInlined: 906
inline.NumDeleted: 109
loop-unroll.NumCompletelyUnrolled: 183
loop-unroll.NumRuntimeUnrolled: 103
loop-unroll.NumUnrolled: 287
begin_hunk_0_@tg3json_object_get_mut:bb.a
.lr.ph.i:                                         ; preds = %.preheader.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !12   ; 3 uses
  %.not16.i.i = icmp eq i64 %i.e, 0
  br i1 %.not16.i.i, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %tg3json__memcmp_fallback.exit.us.i
  %.01425.us.i = phi i64 [ %i.o, %tg3json__memcmp_fallback.exit.us.i ], [ 0, %.lr.ph.i ] ; 3 uses
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %i.j, i64 %.01425.us.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !54
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %tg3json__memcmp_fallback.exit.thread.i, label %tg3json__memcmp_fallback.exit.us.i

tg3json__memcmp_fallback.exit.us.i:               ; preds = %.lr.ph.split.us.i
  %i.o = add nuw i64 %.01425.us.i, 1              ; 2 uses
  %exitcond31.not.i = icmp eq i64 %i.o, %i.h
  br i1 %exitcond31.not.i, label %tg3json_object_get_mut_n.exit, label %.lr.ph.split.us.i, !llvm.loop !85

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %tg3json__memcmp_fallback.exit.i
  %.01425.i = phi i64 [ %i.ad, %tg3json__memcmp_fallback.exit.i ], [ 0, %.lr.ph.i ] ; 3 uses
  %i.p = getelementptr inbounds nuw [24 x i8], ptr %i.j, i64 %.01425.i ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !54
  %i.s = icmp eq i64 %i.r, %i.e
  br i1 %i.s, label %.lr.ph.i.preheader.i, label %tg3json__memcmp_fallback.exit.i

.lr.ph.i.preheader.i:                             ; preds = %.lr.ph.split.i
  %i.t = load ptr, ptr %i.p, align 8, !tbaa !51
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.preheader.i
  %.in.i.i = phi i64 [ %i.w, %bb.c ], [ %i.e, %.lr.ph.i.preheader.i ]
  %.018.i.i = phi ptr [ %i.y, %bb.c ], [ %1, %.lr.ph.i.preheader.i ] ; 2 uses
  %.0917.i.i = phi ptr [ %i.x, %bb.c ], [ %i.t, %.lr.ph.i.preheader.i ] ; 2 uses
  %i.u = load i8, ptr %.0917.i.i, align 1, !tbaa !12
  %i.v = load i8, ptr %.018.i.i, align 1, !tbaa !12
  %.not14.i.i = icmp eq i8 %i.u, %i.v
  br i1 %.not14.i.i, label %bb.c, label %tg3json__memcmp_fallback.exit.i

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.w = add i64 %.in.i.i, -1                     ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.0917.i.i, i64 1
  %i.y = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 1
  %.not.i.i = icmp eq i64 %i.w, 0
  br i1 %.not.i.i, label %tg3json__memcmp_fallback.exit.thread.i, label %.lr.ph.i.i, !llvm.loop !84

tg3json__memcmp_fallback.exit.thread.i:           ; preds = %bb.c, %.lr.ph.split.us.i
  %i.z = phi i64 [ %.01425.us.i, %.lr.ph.split.us.i ], [ %.01425.i, %bb.c ]
  %i.aa = getelementptr inbounds nuw [24 x i8], ptr %i.j, i64 %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !55
  br label %tg3json_object_get_mut_n.exit

tg3json__memcmp_fallback.exit.i:                  ; preds = %.lr.ph.i.i, %.lr.ph.split.i
  %i.ad = add nuw i64 %.01425.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ad, %i.h
  br i1 %exitcond.not.i, label %tg3json_object_get_mut_n.exit, label %.lr.ph.split.i, !llvm.loop !85

tg3json_object_get_mut_n.exit:                    ; preds = %tg3json__memcmp_fallback.exit.i, %tg3json__memcmp_fallback.exit.us.i, %tg3json__memcmp_fallback.exit.thread.i, %.preheader.i, %bb.b, %tg3json__strlen_fallback.exit, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ null, %tg3json__strlen_fallback.exit ], [ %i.ac, %tg3json__memcmp_fallback.exit.thread.i ], [ null, %bb.b ], [ null, %.preheader.i ], [ null, %tg3json__memcmp_fallback.exit.us.i ], [ null, %tg3json__memcmp_fallback.exit.i ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read)
define dso_local ptr @tg3json_object_at(ptr nofree noundef readonly captures(address_is_null) %0, i64 noundef %1) local_unnamed_addr #5 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr %0, align 8, !tbaa !13
  %.not8 = icmp eq i32 %i.a, 6
  br i1 %.not8, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !12
  %.not9 = icmp ult i64 %1, %i.c
  br i1 %.not9, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %1
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %.0 = phi ptr [ %i.f, %bb.d ], [ null, %bb.c ], [ null, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read)
define dso_local i64 @tg3json_object_size(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #5 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr %0, align 8, !tbaa !13
  %.not4 = icmp eq i32 %i.a, 6
  br i1 %.not4, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !12
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i64 [ %i.c, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i64 %.0
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none)
define dso_local range(i32 0, 2) i32 @tg3json_object_set_take_n(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, i64 noundef %2, ptr nofree noundef captures(address_is_null) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %tg3json__reserve_bytes.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 8, !tbaa !13
  %i.c = icmp eq i32 %i.b, 6
  %i.d = icmp ne ptr %3, null
  %or.cond = and i1 %i.d, %i.c
  %i.e = icmp ne ptr %1, null
  %or.cond3 = and i1 %i.e, %or.cond
  br i1 %or.cond3, label %.preheader.i, label %tg3json__reserve_bytes.exit.thread

.preheader.i:                                     ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !12   ; 6 uses
  %.not27.i = icmp eq i64 %i.g, 0
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %.not27.i, label %tg3json_object_get_mut_n.exit.thread.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !12   ; 3 uses
  %.not16.i.i = icmp eq i64 %2, 0
  br i1 %.not16.i.i, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %tg3json__memcmp_fallback.exit.us.i
  %.01425.us.i = phi i64 [ %i.n, %tg3json__memcmp_fallback.exit.us.i ], [ 0, %.lr.ph.i ] ; 3 uses
  %i.j = getelementptr inbounds nuw [24 x i8], ptr %i.i, i64 %.01425.us.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !54
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %tg3json_object_get_mut_n.exit, label %tg3json__memcmp_fallback.exit.us.i

tg3json__memcmp_fallback.exit.us.i:               ; preds = %.lr.ph.split.us.i
  %i.n = add nuw i64 %.01425.us.i, 1              ; 2 uses
  %exitcond31.not.i = icmp eq i64 %i.n, %i.g
  br i1 %exitcond31.not.i, label %tg3json_object_get_mut_n.exit.thread, label %.lr.ph.split.us.i, !llvm.loop !85

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %tg3json__memcmp_fallback.exit.i
  %.01425.i = phi i64 [ %i.y, %tg3json__memcmp_fallback.exit.i ], [ 0, %.lr.ph.i ] ; 3 uses
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %i.i, i64 %.01425.i ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !54
  %i.r = icmp eq i64 %i.q, %2
  br i1 %i.r, label %.lr.ph.i.preheader.i, label %tg3json__memcmp_fallback.exit.i

.lr.ph.i.preheader.i:                             ; preds = %.lr.ph.split.i
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !51
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.preheader.i
  %.in.i.i = phi i64 [ %i.v, %bb.c ], [ %2, %.lr.ph.i.preheader.i ]
  %.018.i.i = phi ptr [ %i.x, %bb.c ], [ %1, %.lr.ph.i.preheader.i ] ; 2 uses
  %.0917.i.i = phi ptr [ %i.w, %bb.c ], [ %i.s, %.lr.ph.i.preheader.i ] ; 2 uses
  %i.t = load i8, ptr %.0917.i.i, align 1, !tbaa !12
  %i.u = load i8, ptr %.018.i.i, align 1, !tbaa !12
  %.not14.i.i = icmp eq i8 %i.t, %i.u
  br i1 %.not14.i.i, label %bb.c, label %tg3json__memcmp_fallback.exit.i

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.v = add i64 %.in.i.i, -1                     ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.0917.i.i, i64 1
  %i.x = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 1
  %.not.i.i = icmp eq i64 %i.v, 0
  br i1 %.not.i.i, label %tg3json_object_get_mut_n.exit, label %.lr.ph.i.i, !llvm.loop !84

tg3json__memcmp_fallback.exit.i:                  ; preds = %.lr.ph.i.i, %.lr.ph.split.i
  %i.y = add nuw i64 %.01425.i, 1                 ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.y, %i.g
  br i1 %exitcond.not.i, label %tg3json_object_get_mut_n.exit.thread, label %.lr.ph.split.i, !llvm.loop !85

tg3json_object_get_mut_n.exit:                    ; preds = %bb.c, %.lr.ph.split.us.i
  %i.z = phi i64 [ %.01425.us.i, %.lr.ph.split.us.i ], [ %.01425.i, %bb.c ]
  %i.aa = getelementptr inbounds nuw [24 x i8], ptr %i.i, i64 %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !55 ; 3 uses
  %.not40 = icmp eq ptr %i.ac, null
  br i1 %.not40, label %tg3json_object_get_mut_n.exit.thread, label %tg3json__init_value.exit

tg3json__init_value.exit:                         ; preds = %tg3json_object_get_mut_n.exit
  tail call void @tg3json_value_free(ptr noundef nonnull %i.ac) #20
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !42
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 20
  store <16 x i8> zeroinitializer, ptr %i.ad, align 4, !tbaa !12
  store <4 x i8> zeroinitializer, ptr %i.ae, align 4, !tbaa !12
  store i32 0, ptr %3, align 8, !tbaa !13
  br label %tg3json__reserve_bytes.exit.thread

tg3json_object_get_mut_n.exit.thread:             ; preds = %tg3json__memcmp_fallback.exit.i, %tg3json__memcmp_fallback.exit.us.i, %tg3json_object_get_mut_n.exit
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ag = add nuw i64 %i.g, 1
  %.not.i45.not = icmp eq i64 %i.g, -1
  br i1 %.not.i45.not, label %tg3json_object_get_mut_n.exit.thread.tg3json__reserve_bytes.exit_crit_edge, label %tg3json_object_get_mut_n.exit.thread.thread

tg3json_object_get_mut_n.exit.thread.tg3json__reserve_bytes.exit_crit_edge: ; preds = %tg3json_object_get_mut_n.exit.thread
  %.pre = load ptr, ptr %i.af, align 8, !tbaa !12
  %.pre72 = load i64, ptr @test_heap_used, align 8, !tbaa !21
  br label %tg3json__reserve_bytes.exit

tg3json_object_get_mut_n.exit.thread.thread:      ; preds = %.preheader.i, %tg3json_object_get_mut_n.exit.thread
  %spec.select.i = phi i64 [ %i.g, %tg3json_object_get_mut_n.exit.thread ], [ 8, %.preheader.i ] ; 3 uses
  %i.ah = phi i64 [ %i.ag, %tg3json_object_get_mut_n.exit.thread ], [ 1, %.preheader.i ] ; 3 uses
  %i.ai = phi ptr [ %i.af, %tg3json_object_get_mut_n.exit.thread ], [ %i.h, %.preheader.i ] ; 2 uses
  %i.aj = icmp ult i64 %spec.select.i, %i.ah
  br i1 %i.aj, label %.lr.ph.i48, label %._crit_edge.i

.lr.ph.i48:                                       ; preds = %tg3json_object_get_mut_n.exit.thread.thread, %bb.d
  %.030.i = phi i64 [ %i.al, %bb.d ], [ %spec.select.i, %tg3json_object_get_mut_n.exit.thread.thread ] ; 2 uses
  %i.ak = icmp slt i64 %.030.i, 0
  br i1 %i.ak, label %._crit_edge.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i48
  %i.al = shl nuw i64 %.030.i, 1                  ; 3 uses
  %i.am = icmp ult i64 %i.al, %i.ah
  br i1 %i.am, label %.lr.ph.i48, label %._crit_edge.i, !llvm.loop !70

._crit_edge.i:                                    ; preds = %bb.d, %.lr.ph.i48, %tg3json_object_get_mut_n.exit.thread.thread
  %.1.i = phi i64 [ %spec.select.i, %tg3json_object_get_mut_n.exit.thread.thread ], [ %i.ah, %.lr.ph.i48 ], [ %i.al, %bb.d ] ; 2 uses
  %i.an = icmp ugt i64 %.1.i, 768614336404564650
  br i1 %i.an, label %tg3json__reserve_bytes.exit.thread, label %bb.e

bb.e:                                             ; preds = %._crit_edge.i
  %i.ao = load ptr, ptr %i.ai, align 8, !tbaa !71 ; 10 uses
  %i.ap = ptrtoaddr ptr %i.ao to i64
  %i.aq = mul nuw i64 %.1.i, 24                   ; 4 uses
  %.not.i.i46 = icmp eq ptr %i.ao, null
  %i.ar = add nuw i64 %i.aq, 8
  %i.as = load i64, ptr @test_heap_used, align 8, !tbaa !21 ; 4 uses
  %i.at = add i64 %i.ar, %i.as                    ; 4 uses
  %i.au = icmp ugt i64 %i.at, 524288              ; 2 uses
  br i1 %.not.i.i46, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  br i1 %i.au, label %tg3json__reserve_bytes.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.av = getelementptr inbounds nuw i8, ptr @test_heap, i64 %i.as ; 2 uses
  store i64 %i.aq, ptr %i.av, align 8, !tbaa !21
  store i64 %i.at, ptr @test_heap_used, align 8, !tbaa !21
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  br label %.loopexit.i

bb.h:                                             ; preds = %bb.e
  br i1 %i.au, label %tg3json__reserve_bytes.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ax = getelementptr inbounds i8, ptr %i.ao, i64 -8
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !21
  %i.az = getelementptr inbounds nuw i8, ptr @test_heap, i64 %i.as ; 2 uses
  store i64 %i.aq, ptr %i.az, align 8, !tbaa !21
  store i64 %i.at, ptr @test_heap_used, align 8, !tbaa !21
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 12 uses
  %i.bb = tail call i64 @llvm.umin.i64(i64 %i.ay, i64 %i.aq) ; 11 uses
  %.not27.i.i = icmp eq i64 %i.bb, 0
  br i1 %.not27.i.i, label %.loopexit.i, label %iter.check

iter.check:                                       ; preds = %bb.i
  %min.iters.check = icmp ult i64 %i.bb, 4
  br i1 %min.iters.check, label %.lr.ph.i.i47.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.bc = add i64 %i.as, add (i64 ptrtoaddr (ptr @test_heap to i64), i64 8)
  %i.bd = sub i64 %i.ap, %i.bc
  %diff.check = icmp ugt i64 %i.bd, -32
  br i1 %diff.check, label %.lr.ph.i.i47.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check101 = icmp ult i64 %i.bb, 32
  br i1 %min.iters.check101, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.be = and i64 %i.bb, 28
  %n.vec = and i64 %i.bb, -32                     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ao, i64 %index ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %wide.load = load <16 x i8>, ptr %i.bf, align 1, !tbaa !12
  %wide.load102 = load <16 x i8>, ptr %i.bg, align 1, !tbaa !12
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ba, i64 %index ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  store <16 x i8> %wide.load, ptr %i.bh, align 1, !tbaa !12
  store <16 x i8> %wide.load102, ptr %i.bi, align 1, !tbaa !12
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bj = icmp eq i64 %index.next, %n.vec
  br i1 %i.bj, label %middle.block, label %vector.body, !llvm.loop !86

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bb, %n.vec
  br i1 %cmp.n, label %.loopexit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.be, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i47.preheader, label %vec.epilog.ph, !prof !36

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec103 = and i64 %i.bb, -4                   ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index104 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next106, %vec.epilog.vector.body ] ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ao, i64 %index104
  %wide.load105 = load <4 x i8>, ptr %i.bk, align 1, !tbaa !12
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ba, i64 %index104
  store <4 x i8> %wide.load105, ptr %i.bl, align 1, !tbaa !12
  %index.next106 = add nuw i64 %index104, 4       ; 2 uses
  %i.bm = icmp eq i64 %index.next106, %n.vec103
  br i1 %i.bm, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !87

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n107 = icmp eq i64 %i.bb, %n.vec103
  br i1 %cmp.n107, label %.loopexit.i, label %.lr.ph.i.i47.preheader

.lr.ph.i.i47.preheader:                           ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.026.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec103, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %i.bb, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i47.prol.loopexit, label %.lr.ph.i.i47.prol

.lr.ph.i.i47.prol:                                ; preds = %.lr.ph.i.i47.preheader, %.lr.ph.i.i47.prol
  %.026.i.i.prol = phi i64 [ %i.bq, %.lr.ph.i.i47.prol ], [ %.026.i.i.ph, %.lr.ph.i.i47.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i47.prol ], [ 0, %.lr.ph.i.i47.preheader ]
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.026.i.i.prol
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !12
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ba, i64 %.026.i.i.prol
  store i8 %i.bo, ptr %i.bp, align 1, !tbaa !12
  %i.bq = add nuw i64 %.026.i.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i47.prol.loopexit, label %.lr.ph.i.i47.prol, !llvm.loop !88

.lr.ph.i.i47.prol.loopexit:                       ; preds = %.lr.ph.i.i47.prol, %.lr.ph.i.i47.preheader
  %.026.i.i.unr = phi i64 [ %.026.i.i.ph, %.lr.ph.i.i47.preheader ], [ %i.bq, %.lr.ph.i.i47.prol ]
  %i.br = sub i64 %.026.i.i.ph, %i.bb
  %i.bs = icmp ugt i64 %i.br, -4
  br i1 %i.bs, label %.loopexit.i, label %.lr.ph.i.i47

.lr.ph.i.i47:                                     ; preds = %.lr.ph.i.i47.prol.loopexit, %.lr.ph.i.i47
  %.026.i.i = phi i64 [ %i.ci, %.lr.ph.i.i47 ], [ %.026.i.i.unr, %.lr.ph.i.i47.prol.loopexit ] ; 6 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.026.i.i
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !12
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ba, i64 %.026.i.i
  store i8 %i.bu, ptr %i.bv, align 1, !tbaa !12
  %i.bw = add nuw i64 %.026.i.i, 1                ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.bw
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !12
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.bw
  store i8 %i.by, ptr %i.bz, align 1, !tbaa !12
  %i.ca = add nuw i64 %.026.i.i, 2                ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ca
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !12
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.ca
  store i8 %i.cc, ptr %i.cd, align 1, !tbaa !12
  %i.ce = add nuw i64 %.026.i.i, 3                ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ce
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !12
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.ce
  store i8 %i.cg, ptr %i.ch, align 1, !tbaa !12
  %i.ci = add nuw i64 %.026.i.i, 4                ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.ci, %i.bb
  br i1 %exitcond.not.i.i.3, label %.loopexit.i, label %.lr.ph.i.i47, !llvm.loop !89

.loopexit.i:                                      ; preds = %.lr.ph.i.i47.prol.loopexit, %.lr.ph.i.i47, %middle.block, %vec.epilog.middle.block, %bb.i, %bb.g
  %.018.i.ph.i = phi ptr [ %i.aw, %bb.g ], [ %i.ba, %bb.i ], [ %i.ba, %middle.block ], [ %i.ba, %vec.epilog.middle.block ], [ %i.ba, %.lr.ph.i.i47 ], [ %i.ba, %.lr.ph.i.i47.prol.loopexit ] ; 2 uses
  store ptr %.018.i.ph.i, ptr %i.ai, align 8, !tbaa !71
  %.pre71 = load i64, ptr %i.f, align 8, !tbaa !12
  br label %tg3json__reserve_bytes.exit

tg3json__reserve_bytes.exit:                      ; preds = %tg3json_object_get_mut_n.exit.thread.tg3json__reserve_bytes.exit_crit_edge, %.loopexit.i
  %i.cj = phi i64 [ %.pre72, %tg3json_object_get_mut_n.exit.thread.tg3json__reserve_bytes.exit_crit_edge ], [ %i.at, %.loopexit.i ] ; 3 uses
  %i.ck = phi i64 [ -1, %tg3json_object_get_mut_n.exit.thread.tg3json__reserve_bytes.exit_crit_edge ], [ %.pre71, %.loopexit.i ]
  %i.cl = phi ptr [ %.pre, %tg3json_object_get_mut_n.exit.thread.tg3json__reserve_bytes.exit_crit_edge ], [ %.018.i.ph.i, %.loopexit.i ]
  %i.cm = getelementptr inbounds nuw [24 x i8], ptr %i.cl, i64 %i.ck ; 6 uses
  %i.cn = and i64 %2, -8
  %i.co = add i64 %i.cn, 16
  %i.cp = add i64 %i.co, %i.cj                    ; 5 uses
  %i.cq = icmp ugt i64 %i.cp, 524288
  br i1 %i.cq, label %tg3json__strndup_local.exit.thread, label %bb.j

tg3json__strndup_local.exit.thread:               ; preds = %tg3json__reserve_bytes.exit
  store ptr null, ptr %i.cm, align 8, !tbaa !51
  br label %tg3json__reserve_bytes.exit.thread

bb.j:                                             ; preds = %tg3json__reserve_bytes.exit
  %i.cr = add i64 %2, 1
  %i.cs = getelementptr inbounds nuw i8, ptr @test_heap, i64 %i.cj ; 2 uses
  store i64 %i.cr, ptr %i.cs, align 8, !tbaa !21
  store i64 %i.cp, ptr @test_heap_used, align 8, !tbaa !21
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8 ; 8 uses
  %.not11.i = icmp eq i64 %2, 0
  br i1 %.not11.i, label %.loopexit, label %iter.check127

iter.check127:                                    ; preds = %bb.j
  %min.iters.check110 = icmp ult i64 %2, 4
  br i1 %min.iters.check110, label %.lr.ph.i.i49.preheader, label %vector.memcheck108

vector.memcheck108:                               ; preds = %iter.check127
  %i.cu = add i64 %i.cj, add (i64 ptrtoaddr (ptr @test_heap to i64), i64 8)
  %i.cv = sub i64 %i.a, %i.cu
  %diff.check109 = icmp ugt i64 %i.cv, -32
  br i1 %diff.check109, label %.lr.ph.i.i49.preheader, label %vector.main.loop.iter.check111

vector.main.loop.iter.check111:                   ; preds = %vector.memcheck108
  %min.iters.check112 = icmp ult i64 %2, 32
  br i1 %min.iters.check112, label %vec.epilog.ph131, label %vector.ph113

vector.ph113:                                     ; preds = %vector.main.loop.iter.check111
  %i.cw = and i64 %2, 28
  %n.vec114 = and i64 %2, -32                     ; 5 uses
  %i.cx = getelementptr i8, ptr %1, i64 %n.vec114
  %i.cy = getelementptr i8, ptr %i.ct, i64 %n.vec114
  %i.cz = and i64 %2, 31
  br label %vector.body115

vector.body115:                                   ; preds = %vector.body115, %vector.ph113
  %index116 = phi i64 [ 0, %vector.ph113 ], [ %index.next120, %vector.body115 ] ; 3 uses
  %next.gep = getelementptr i8, ptr %1, i64 %index116 ; 2 uses
  %next.gep117 = getelementptr i8, ptr %i.ct, i64 %index116 ; 2 uses
  %i.da = getelementptr i8, ptr %next.gep, i64 16
  %wide.load118 = load <16 x i8>, ptr %next.gep, align 1, !tbaa !12
  %wide.load119 = load <16 x i8>, ptr %i.da, align 1, !tbaa !12
  %i.db = getelementptr i8, ptr %next.gep117, i64 16
  store <16 x i8> %wide.load118, ptr %next.gep117, align 1, !tbaa !12
  store <16 x i8> %wide.load119, ptr %i.db, align 1, !tbaa !12
  %index.next120 = add nuw i64 %index116, 32      ; 2 uses
  %i.dc = icmp eq i64 %index.next120, %n.vec114
  br i1 %i.dc, label %middle.block121, label %vector.body115, !llvm.loop !90

middle.block121:                                  ; preds = %vector.body115
  %cmp.n122 = icmp eq i64 %2, %n.vec114
  br i1 %cmp.n122, label %.loopexit, label %vec.epilog.iter.check129

vec.epilog.iter.check129:                         ; preds = %middle.block121
  %min.epilog.iters.check130 = icmp eq i64 %i.cw, 0
  br i1 %min.epilog.iters.check130, label %.lr.ph.i.i49.preheader, label %vec.epilog.ph131, !prof !36

vec.epilog.ph131:                                 ; preds = %vector.main.loop.iter.check111, %vec.epilog.iter.check129
  %vec.epilog.resume.val123 = phi i64 [ %n.vec114, %vec.epilog.iter.check129 ], [ 0, %vector.main.loop.iter.check111 ]
  %n.vec132 = and i64 %2, -4                      ; 4 uses
  %i.dd = getelementptr i8, ptr %1, i64 %n.vec132
  %i.de = getelementptr i8, ptr %i.ct, i64 %n.vec132
  %i.df = and i64 %2, 3
  br label %vec.epilog.vector.body133

vec.epilog.vector.body133:                        ; preds = %vec.epilog.vector.body133, %vec.epilog.ph131
  %index134 = phi i64 [ %vec.epilog.resume.val123, %vec.epilog.ph131 ], [ %index.next138, %vec.epilog.vector.body133 ] ; 3 uses
  %next.gep135 = getelementptr i8, ptr %1, i64 %index134
  %next.gep136 = getelementptr i8, ptr %i.ct, i64 %index134
  %wide.load137 = load <4 x i8>, ptr %next.gep135, align 1, !tbaa !12
  store <4 x i8> %wide.load137, ptr %next.gep136, align 1, !tbaa !12
  %index.next138 = add nuw i64 %index134, 4       ; 2 uses
  %i.dg = icmp eq i64 %index.next138, %n.vec132
  br i1 %i.dg, label %vec.epilog.middle.block139, label %vec.epilog.vector.body133, !llvm.loop !91

vec.epilog.middle.block139:                       ; preds = %vec.epilog.vector.body133
  %cmp.n140 = icmp eq i64 %2, %n.vec132
  br i1 %cmp.n140, label %.loopexit, label %.lr.ph.i.i49.preheader

.lr.ph.i.i49.preheader:                           ; preds = %vector.memcheck108, %iter.check127, %vec.epilog.iter.check129, %vec.epilog.middle.block139
  %.010.i.i.ph = phi ptr [ %1, %iter.check127 ], [ %1, %vector.memcheck108 ], [ %i.cx, %vec.epilog.iter.check129 ], [ %i.dd, %vec.epilog.middle.block139 ] ; 2 uses
  %.059.i.i.ph = phi ptr [ %i.ct, %iter.check127 ], [ %i.ct, %vector.memcheck108 ], [ %i.cy, %vec.epilog.iter.check129 ], [ %i.de, %vec.epilog.middle.block139 ] ; 2 uses
  %.068.i.i.ph = phi i64 [ %2, %iter.check127 ], [ %2, %vector.memcheck108 ], [ %i.cz, %vec.epilog.iter.check129 ], [ %i.df, %vec.epilog.middle.block139 ] ; 4 uses
  %i.dh = add i64 %.068.i.i.ph, -1
  %xtraiter148 = and i64 %.068.i.i.ph, 7          ; 2 uses
  %lcmp.mod149.not = icmp eq i64 %xtraiter148, 0
  br i1 %lcmp.mod149.not, label %.lr.ph.i.i49.prol.loopexit, label %.lr.ph.i.i49.prol

.lr.ph.i.i49.prol:                                ; preds = %.lr.ph.i.i49.preheader, %.lr.ph.i.i49.prol
  %.010.i.i.prol = phi ptr [ %i.dj, %.lr.ph.i.i49.prol ], [ %.010.i.i.ph, %.lr.ph.i.i49.preheader ] ; 2 uses
  %.059.i.i.prol = phi ptr [ %i.dl, %.lr.ph.i.i49.prol ], [ %.059.i.i.ph, %.lr.ph.i.i49.preheader ] ; 2 uses
  %.068.i.i.prol = phi i64 [ %i.di, %.lr.ph.i.i49.prol ], [ %.068.i.i.ph, %.lr.ph.i.i49.preheader ]
  %prol.iter150 = phi i64 [ %prol.iter150.next, %.lr.ph.i.i49.prol ], [ 0, %.lr.ph.i.i49.preheader ]
  %i.di = add i64 %.068.i.i.prol, -1              ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.010.i.i.prol, i64 1 ; 2 uses
  %i.dk = load i8, ptr %.010.i.i.prol, align 1, !tbaa !12
  %i.dl = getelementptr inbounds nuw i8, ptr %.059.i.i.prol, i64 1 ; 2 uses
  store i8 %i.dk, ptr %.059.i.i.prol, align 1, !tbaa !12
  %prol.iter150.next = add i64 %prol.iter150, 1   ; 2 uses
  %prol.iter150.cmp.not = icmp eq i64 %prol.iter150.next, %xtraiter148
  br i1 %prol.iter150.cmp.not, label %.lr.ph.i.i49.prol.loopexit, label %.lr.ph.i.i49.prol, !llvm.loop !92

.lr.ph.i.i49.prol.loopexit:                       ; preds = %.lr.ph.i.i49.prol, %.lr.ph.i.i49.preheader
  %.010.i.i.unr = phi ptr [ %.010.i.i.ph, %.lr.ph.i.i49.preheader ], [ %i.dj, %.lr.ph.i.i49.prol ]
  %.059.i.i.unr = phi ptr [ %.059.i.i.ph, %.lr.ph.i.i49.preheader ], [ %i.dl, %.lr.ph.i.i49.prol ]
  %.068.i.i.unr = phi i64 [ %.068.i.i.ph, %.lr.ph.i.i49.preheader ], [ %i.di, %.lr.ph.i.i49.prol ]
  %i.dm = icmp ult i64 %i.dh, 7
  br i1 %i.dm, label %.loopexit, label %.lr.ph.i.i49

.lr.ph.i.i49:                                     ; preds = %.lr.ph.i.i49.prol.loopexit, %.lr.ph.i.i49
  %.010.i.i = phi ptr [ %i.ej, %.lr.ph.i.i49 ], [ %.010.i.i.unr, %.lr.ph.i.i49.prol.loopexit ] ; 9 uses
  %.059.i.i = phi ptr [ %i.el, %.lr.ph.i.i49 ], [ %.059.i.i.unr, %.lr.ph.i.i49.prol.loopexit ] ; 9 uses
  %.068.i.i = phi i64 [ %i.ei, %.lr.ph.i.i49 ], [ %.068.i.i.unr, %.lr.ph.i.i49.prol.loopexit ]
  %i.dn = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 1
  %i.do = load i8, ptr %.010.i.i, align 1, !tbaa !12
  %i.dp = getelementptr inbounds nuw i8, ptr %.059.i.i, i64 1
  store i8 %i.do, ptr %.059.i.i, align 1, !tbaa !12
  %i.dq = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 2
  %i.dr = load i8, ptr %i.dn, align 1, !tbaa !12
  %i.ds = getelementptr inbounds nuw i8, ptr %.059.i.i, i64 2
  store i8 %i.dr, ptr %i.dp, align 1, !tbaa !12
  %i.dt = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 3
  %i.du = load i8, ptr %i.dq, align 1, !tbaa !12
  %i.dv = getelementptr inbounds nuw i8, ptr %.059.i.i, i64 3
  store i8 %i.du, ptr %i.ds, align 1, !tbaa !12
  %i.dw = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4
  %i.dx = load i8, ptr %i.dt, align 1, !tbaa !12
  %i.dy = getelementptr inbounds nuw i8, ptr %.059.i.i, i64 4
  store i8 %i.dx, ptr %i.dv, align 1, !tbaa !12
  %i.dz = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 5
  %i.ea = load i8, ptr %i.dw, align 1, !tbaa !12
  %i.eb = getelementptr inbounds nuw i8, ptr %.059.i.i, i64 5
  store i8 %i.ea, ptr %i.dy, align 1, !tbaa !12
  %i.ec = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 6
  %i.ed = load i8, ptr %i.dz, align 1, !tbaa !12
  %i.ee = getelementptr inbounds nuw i8, ptr %.059.i.i, i64 6
  store i8 %i.ed, ptr %i.eb, align 1, !tbaa !12
  %i.ef = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 7
  %i.eg = load i8, ptr %i.ec, align 1, !tbaa !12
  %i.eh = getelementptr inbounds nuw i8, ptr %.059.i.i, i64 7
  store i8 %i.eg, ptr %i.ee, align 1, !tbaa !12
  %i.ei = add i64 %.068.i.i, -8                   ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 8
  %i.ek = load i8, ptr %i.ef, align 1, !tbaa !12
  %i.el = getelementptr inbounds nuw i8, ptr %.059.i.i, i64 8
  store i8 %i.ek, ptr %i.eh, align 1, !tbaa !12
  %.not.i.i50.7 = icmp eq i64 %i.ei, 0
  br i1 %.not.i.i50.7, label %.loopexit, label %.lr.ph.i.i49, !llvm.loop !93

.loopexit:                                        ; preds = %.lr.ph.i.i49.prol.loopexit, %.lr.ph.i.i49, %middle.block121, %vec.epilog.middle.block139, %bb.j
  %i.em = getelementptr inbounds nuw i8, ptr %i.ct, i64 %2
  store i8 0, ptr %i.em, align 1, !tbaa !12
  store ptr %i.ct, ptr %i.cm, align 8, !tbaa !51
  %i.en = getelementptr inbounds nuw i8, ptr %i.cm, i64 8 ; 2 uses
  store i64 %2, ptr %i.en, align 8, !tbaa !54
  %i.eo = icmp samesign ugt i64 %i.cp, 524256
  br i1 %i.eo, label %bb.k, label %tg3json__init_value.exit54

bb.k:                                             ; preds = %.loopexit
  %i.ep = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  store ptr null, ptr %i.ep, align 8, !tbaa !55
  store ptr null, ptr %i.cm, align 8, !tbaa !51
  store i64 0, ptr %i.en, align 8, !tbaa !54
  br label %tg3json__reserve_bytes.exit.thread

tg3json__init_value.exit54:                       ; preds = %.loopexit
  %i.eq = add nuw nsw i64 %i.cp, 32
  %i.er = getelementptr inbounds nuw i8, ptr @test_heap, i64 %i.cp ; 2 uses
  store i64 24, ptr %i.er, align 8, !tbaa !21
  store i64 %i.eq, ptr @test_heap_used, align 8, !tbaa !21
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 8 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  store ptr %i.es, ptr %i.et, align 8, !tbaa !55
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.es, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !42
  %i.eu = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ev = getelementptr inbounds nuw i8, ptr %3, i64 20
  store <16 x i8> zeroinitializer, ptr %i.eu, align 4, !tbaa !12
  store <4 x i8> zeroinitializer, ptr %i.ev, align 4, !tbaa !12
  store i32 0, ptr %3, align 8, !tbaa !13
  %i.ew = load i64, ptr %i.f, align 8, !tbaa !12
  %i.ex = add i64 %i.ew, 1
  store i64 %i.ex, ptr %i.f, align 8, !tbaa !12
  br label %tg3json__reserve_bytes.exit.thread

tg3json__reserve_bytes.exit.thread:               ; preds = %bb.h, %bb.f, %._crit_edge.i, %tg3json__strndup_local.exit.thread, %bb.a, %bb.b, %tg3json__init_value.exit54, %bb.k, %tg3json__init_value.exit
  %.0 = phi i32 [ 1, %tg3json__init_value.exit ], [ 1, %tg3json__init_value.exit54 ], [ 0, %bb.k ], [ 0, %tg3json__strndup_local.exit.thread ], [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %._crit_edge.i ], [ 0, %bb.f ], [ 0, %bb.h ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none)
define dso_local range(i32 0, 2) i32 @tg3json_object_set_take(ptr nofree noundef captures(address_is_null) %0, ptr noundef %1, ptr nofree noundef captures(address_is_null) %2) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a, %.preheader
  %.0.i = phi ptr [ %i.b, %.preheader ], [ %1, %bb.a ] ; 3 uses
  %i.a = load i8, ptr %.0.i, align 1, !tbaa !12
  %.not.i = icmp eq i8 %i.a, 0
  %i.b = getelementptr inbounds nuw i8, ptr %.0.i, i64 1
  br i1 %.not.i, label %tg3json__strlen_fallback.exit, label %.preheader, !llvm.loop !68

tg3json__strlen_fallback.exit:                    ; preds = %.preheader
  %i.c = ptrtoint ptr %.0.i to i64
  %i.d = ptrtoint ptr %1 to i64
  %i.e = sub i64 %i.c, %i.d
  %i.f = tail call i32 @tg3json_object_set_take_n(ptr noundef %0, ptr noundef nonnull %1, i64 noundef %i.e, ptr noundef %2) #20
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %tg3json__strlen_fallback.exit
  %.0 = phi i32 [ %i.f, %tg3json__strlen_fallback.exit ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none)
define dso_local range(i32 0, 2) i32 @tg3json_object_set_copy(ptr nofree noundef captures(address_is_null) %0, ptr noundef %1, ptr nofree noundef readonly captures(address_is_null) %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.tg3json_value, align 8      ; 8 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.d, label %.preheader

.preheader:                                       ; preds = %bb.a, %.preheader
  %.0.i = phi ptr [ %i.b, %.preheader ], [ %1, %bb.a ] ; 3 uses
  %i.a = load i8, ptr %.0.i, align 1, !tbaa !12
  %.not.i = icmp eq i8 %i.a, 0
  %i.b = getelementptr inbounds nuw i8, ptr %.0.i, i64 1
  br i1 %.not.i, label %tg3json__strlen_fallback.exit, label %.preheader, !llvm.loop !68

tg3json__strlen_fallback.exit:                    ; preds = %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 20
  store <16 x i8> zeroinitializer, ptr %i.c, align 4, !tbaa !12
  store <4 x i8> zeroinitializer, ptr %i.d, align 4, !tbaa !12
  store i32 0, ptr %3, align 8, !tbaa !13
  %i.e = call i32 @tg3json_value_copy(ptr noundef nonnull %3, ptr noundef readonly %2) #20, !inline_history !77
  %.not.i6 = icmp eq i32 %i.e, 0
  br i1 %.not.i6, label %tg3json_object_set_copy_n.exit, label %bb.b

bb.b:                                             ; preds = %tg3json__strlen_fallback.exit
  %i.f = ptrtoint ptr %.0.i to i64
  %i.g = ptrtoint ptr %1 to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = call i32 @tg3json_object_set_take_n(ptr noundef %0, ptr noundef nonnull readonly %1, i64 noundef %i.h, ptr noundef nonnull %3) #20, !inline_history !77
  %.not4.i = icmp eq i32 %i.i, 0
  br i1 %.not4.i, label %bb.c, label %tg3json_object_set_copy_n.exit

bb.c:                                             ; preds = %bb.b
  call void @tg3json_value_free(ptr noundef nonnull %3) #20, !inline_history !77
  br label %tg3json_object_set_copy_n.exit

tg3json_object_set_copy_n.exit:                   ; preds = %tg3json__strlen_fallback.exit, %bb.b, %bb.c
  %.0.i7 = phi i32 [ 0, %tg3json__strlen_fallback.exit ], [ 0, %bb.c ], [ 1, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %tg3json_object_set_copy_n.exit
  %.0 = phi i32 [ %.0.i7, %tg3json_object_set_copy_n.exit ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read)
define dso_local ptr @tg3json_array_get(ptr nofree noundef readonly captures(address_is_null) %0, i64 noundef %1) local_unnamed_addr #5 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr %0, align 8, !tbaa !13
  %.not8 = icmp eq i32 %i.a, 5
  br i1 %.not8, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !12
  %.not9 = icmp ult i64 %1, %i.c
  br i1 %.not9, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %1
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %.0 = phi ptr [ %i.f, %bb.d ], [ null, %bb.c ], [ null, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read)
define dso_local i64 @tg3json_array_size(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #5 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr %0, align 8, !tbaa !13
  %.not4 = icmp eq i32 %i.a, 5
  br i1 %.not4, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !12
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i64 [ %i.c, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i64 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none)
define dso_local range(i32 0, 2) i32 @tg3json_array_append_take(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef captures(address_is_null) %1) local_unnamed_addr #3 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %tg3json__reserve_bytes.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr %0, align 8, !tbaa !13
  %i.b = icmp eq i32 %i.a, 5
  %i.c = icmp ne ptr %1, null
  %or.cond = and i1 %i.c, %i.b
  br i1 %or.cond, label %bb.c, label %tg3json__reserve_bytes.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !12   ; 4 uses
  %i.g = add i64 %i.f, 1                          ; 3 uses
  %.not.i.not = icmp eq i64 %i.f, -1
  br i1 %.not.i.not, label %.tg3json__init_value.exit_crit_edge, label %bb.d

.tg3json__init_value.exit_crit_edge:              ; preds = %bb.c
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !12
  br label %tg3json__init_value.exit

bb.d:                                             ; preds = %bb.c
  %.not25.i = icmp eq i64 %i.f, 0
  %spec.select.i = select i1 %.not25.i, i64 8, i64 %i.f ; 3 uses
  %i.h = icmp ult i64 %spec.select.i, %i.g
  br i1 %i.h, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.d, %bb.e
  %.030.i = phi i64 [ %i.j, %bb.e ], [ %spec.select.i, %bb.d ] ; 2 uses
  %i.i = icmp slt i64 %.030.i, 0
  br i1 %i.i, label %._crit_edge.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i
  %i.j = shl nuw i64 %.030.i, 1                   ; 3 uses
  %i.k = icmp ult i64 %i.j, %i.g
  br i1 %i.k, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !70

._crit_edge.i:                                    ; preds = %bb.e, %.lr.ph.i, %bb.d
  %.1.i = phi i64 [ %spec.select.i, %bb.d ], [ %i.g, %.lr.ph.i ], [ %i.j, %bb.e ] ; 2 uses
  %i.l = icmp ugt i64 %.1.i, 768614336404564650
  br i1 %i.l, label %tg3json__reserve_bytes.exit.thread, label %bb.f

bb.f:                                             ; preds = %._crit_edge.i
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !71   ; 10 uses
  %i.n = ptrtoaddr ptr %i.m to i64
  %i.o = mul nuw i64 %.1.i, 24                    ; 4 uses
  %.not.i.i = icmp eq ptr %i.m, null
  %i.p = add nuw i64 %i.o, 8
  %i.q = load i64, ptr @test_heap_used, align 8, !tbaa !21 ; 4 uses
  %i.r = add i64 %i.p, %i.q                       ; 3 uses
  %i.s = icmp ugt i64 %i.r, 524288                ; 2 uses
  br i1 %.not.i.i, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  br i1 %i.s, label %tg3json__reserve_bytes.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr @test_heap, i64 %i.q ; 2 uses
  store i64 %i.o, ptr %i.t, align 8, !tbaa !21
  store i64 %i.r, ptr @test_heap_used, align 8, !tbaa !21
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  br label %.loopexit.i

bb.i:                                             ; preds = %bb.f
  br i1 %i.s, label %tg3json__reserve_bytes.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = getelementptr inbounds i8, ptr %i.m, i64 -8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !21
  %i.x = getelementptr inbounds nuw i8, ptr @test_heap, i64 %i.q ; 2 uses
  store i64 %i.o, ptr %i.x, align 8, !tbaa !21
  store i64 %i.r, ptr @test_heap_used, align 8, !tbaa !21
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 12 uses
  %i.z = tail call i64 @llvm.umin.i64(i64 %i.w, i64 %i.o) ; 11 uses
  %.not27.i.i = icmp eq i64 %i.z, 0
  br i1 %.not27.i.i, label %.loopexit.i, label %iter.check

iter.check:                                       ; preds = %bb.j
  %min.iters.check = icmp ult i64 %i.z, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.aa = add i64 %i.q, add (i64 ptrtoaddr (ptr @test_heap to i64), i64 8)
  %i.ab = sub i64 %i.n, %i.aa
  %diff.check = icmp ugt i64 %i.ab, -32
  br i1 %diff.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check27 = icmp ult i64 %i.z, 32
  br i1 %min.iters.check27, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ac = and i64 %i.z, 28
  %n.vec = and i64 %i.z, -32                      ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.m, i64 %index ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %wide.load = load <16 x i8>, ptr %i.ad, align 1, !tbaa !12
  %wide.load28 = load <16 x i8>, ptr %i.ae, align 1, !tbaa !12
  %i.af = getelementptr inbounds nuw i8, ptr %i.y, i64 %index ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store <16 x i8> %wide.load, ptr %i.af, align 1, !tbaa !12
  store <16 x i8> %wide.load28, ptr %i.ag, align 1, !tbaa !12
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !94

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.z, %n.vec
  br i1 %cmp.n, label %.loopexit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ac, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !36

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec29 = and i64 %i.z, -4                     ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index30 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next32, %vec.epilog.vector.body ] ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.m, i64 %index30
  %wide.load31 = load <4 x i8>, ptr %i.ai, align 1, !tbaa !12
  %i.aj = getelementptr inbounds nuw i8, ptr %i.y, i64 %index30
  store <4 x i8> %wide.load31, ptr %i.aj, align 1, !tbaa !12
  %index.next32 = add nuw i64 %index30, 4         ; 2 uses
  %i.ak = icmp eq i64 %index.next32, %n.vec29
  br i1 %i.ak, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !95

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n33 = icmp eq i64 %i.z, %n.vec29
  br i1 %cmp.n33, label %.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.026.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec29, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %i.z, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.026.i.i.prol = phi i64 [ %i.ao, %.lr.ph.i.i.prol ], [ %.026.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.al = getelementptr inbounds nuw i8, ptr %i.m, i64 %.026.i.i.prol
  %i.am = load i8, ptr %i.al, align 1, !tbaa !12
  %i.an = getelementptr inbounds nuw i8, ptr %i.y, i64 %.026.i.i.prol
  store i8 %i.am, ptr %i.an, align 1, !tbaa !12
  %i.ao = add nuw i64 %.026.i.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !96

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.026.i.i.unr = phi i64 [ %.026.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.ao, %.lr.ph.i.i.prol ]
  %i.ap = sub i64 %.026.i.i.ph, %i.z
  %i.aq = icmp ugt i64 %i.ap, -4
  br i1 %i.aq, label %.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.026.i.i = phi i64 [ %i.bg, %.lr.ph.i.i ], [ %.026.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.m, i64 %.026.i.i
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !12
  %i.at = getelementptr inbounds nuw i8, ptr %i.y, i64 %.026.i.i
  store i8 %i.as, ptr %i.at, align 1, !tbaa !12
  %i.au = add nuw i64 %.026.i.i, 1                ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !12
  %i.ax = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.au
  store i8 %i.aw, ptr %i.ax, align 1, !tbaa !12
  %i.ay = add nuw i64 %.026.i.i, 2                ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !12
  %i.bb = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ay
  store i8 %i.ba, ptr %i.bb, align 1, !tbaa !12
  %i.bc = add nuw i64 %.026.i.i, 3                ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !12
  %i.bf = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.bc
  store i8 %i.be, ptr %i.bf, align 1, !tbaa !12
  %i.bg = add nuw i64 %.026.i.i, 4                ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.bg, %i.z
  br i1 %exitcond.not.i.i.3, label %.loopexit.i, label %.lr.ph.i.i, !llvm.loop !97

.loopexit.i:                                      ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %middle.block, %vec.epilog.middle.block, %bb.j, %bb.h
  %.018.i.ph.i = phi ptr [ %i.u, %bb.h ], [ %i.y, %bb.j ], [ %i.y, %middle.block ], [ %i.y, %vec.epilog.middle.block ], [ %i.y, %.lr.ph.i.i ], [ %i.y, %.lr.ph.i.i.prol.loopexit ] ; 2 uses
  store ptr %.018.i.ph.i, ptr %i.d, align 8, !tbaa !71
  %.pre17 = load i64, ptr %i.e, align 8, !tbaa !12
  br label %tg3json__init_value.exit

tg3json__init_value.exit:                         ; preds = %.tg3json__init_value.exit_crit_edge, %.loopexit.i
  %i.bh = phi i64 [ -1, %.tg3json__init_value.exit_crit_edge ], [ %.pre17, %.loopexit.i ] ; 2 uses
  %i.bi = phi ptr [ %.pre, %.tg3json__init_value.exit_crit_edge ], [ %.018.i.ph.i, %.loopexit.i ]
  %i.bj = add i64 %i.bh, 1
  store i64 %i.bj, ptr %i.e, align 8, !tbaa !12
  %i.bk = getelementptr inbounds nuw [24 x i8], ptr %i.bi, i64 %i.bh
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bk, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !42
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 20
  store <16 x i8> zeroinitializer, ptr %i.bl, align 4, !tbaa !12
  store <4 x i8> zeroinitializer, ptr %i.bm, align 4, !tbaa !12
  store i32 0, ptr %1, align 8, !tbaa !13
  br label %tg3json__reserve_bytes.exit.thread

tg3json__reserve_bytes.exit.thread:               ; preds = %bb.i, %bb.g, %._crit_edge.i, %bb.a, %bb.b, %tg3json__init_value.exit
  %.0 = phi i32 [ 1, %tg3json__init_value.exit ], [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %._crit_edge.i ], [ 0, %bb.g ], [ 0, %bb.i ]
  ret i32 %.0
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none)
define dso_local ptr @tg3json_stringify(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #0 {
tg3json__memset_fallback.exit:
  %2 = alloca %struct.tg3json__buffer, align 16   ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  store <16 x i8> zeroinitializer, ptr %2, align 16, !tbaa !12
  store <16 x i8> zeroinitializer, ptr %i.a, align 16, !tbaa !12
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %bb.a

bb.a:                                             ; preds = %tg3json__memset_fallback.exit
  %i.b = call fastcc i32 @tg3json__stringify_value_ex(ptr noundef %2, ptr noundef nonnull %0, i32 noundef -1, i32 noundef 0) #20
  %.not12 = icmp eq i32 %i.b, 0
  br i1 %.not12, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a, %tg3json__memset_fallback.exit
  %.not13 = icmp eq ptr %1, null
  br i1 %.not13, label %bb.i, label %.sink.split

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !98   ; 2 uses
  %.not14 = icmp eq ptr %i.d, null
  br i1 %.not14, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.e = load i64, ptr @test_heap_used, align 8, !tbaa !21 ; 2 uses
  %i.f = add i64 %i.e, 16                         ; 2 uses
  %i.g = icmp ugt i64 %i.f, 524288
  br i1 %i.g, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %.not16 = icmp eq ptr %1, null
  br i1 %.not16, label %bb.i, label %.sink.split

bb.f:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr @test_heap, i64 %i.e ; 2 uses
  store i64 1, ptr %i.h, align 8, !tbaa !21
  store i64 %i.f, ptr @test_heap_used, align 8, !tbaa !21
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store i8 0, ptr %i.i, align 8, !tbaa !12
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c
  %i.j = phi ptr [ %i.i, %bb.f ], [ %i.d, %bb.c ] ; 2 uses
  %.not17 = icmp eq ptr %1, null
  br i1 %.not17, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.l = load i64, ptr %i.k, align 16, !tbaa !101
  br label %.sink.split

.sink.split:                                      ; preds = %bb.e, %bb.b, %bb.h
  %.sink = phi i64 [ %i.l, %bb.h ], [ 0, %bb.b ], [ 0, %bb.e ]
  %.0.ph = phi ptr [ %i.j, %bb.h ], [ null, %bb.b ], [ null, %bb.e ]
  store i64 %.sink, ptr %1, align 8, !tbaa !21
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %bb.g, %bb.e, %bb.b
  %.0 = phi ptr [ null, %bb.e ], [ null, %bb.b ], [ %i.j, %bb.g ], [ %.0.ph, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret ptr %.0
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none)
define internal fastcc range(i32 0, 2) i32 @tg3json__stringify_value_ex(ptr noundef nonnull %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 16               ; 24 uses
  %i.b = alloca [80 x i8], align 16               ; 14 uses
  %i.c = alloca [80 x i8], align 16               ; 11 uses
  %i.d = alloca double, align 8                   ; 6 uses
  %i.e = alloca [24 x i8], align 16               ; 6 uses
  %i.f = alloca [64 x i8], align 16               ; 57 uses
  %4 = alloca %struct.tg3json_value, align 8      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #19
  %i.g = load i32, ptr %1, align 8, !tbaa !13
  switch i32 %i.g, label %tg3json__buf_append.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.f
    i32 3, label %bb.k
    i32 4, label %bb.an
    i32 5, label %bb.ba
    i32 6, label %bb.bj
  ]

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %0, align 8, !tbaa !102
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !101
  %i.l = add i64 %i.k, 5
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = tail call fastcc i32 @tg3json__reserve_bytes_parser(ptr noundef %i.h, ptr noundef %i.i, i64 noundef 1, i64 noundef %i.l, ptr noundef %i.m) #20
  %.not.i = icmp eq i32 %i.n, 0
  br i1 %.not.i, label %tg3json__buf_append.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.o = load ptr, ptr %i.i, align 8, !tbaa !98
  %i.p = load i64, ptr %i.j, align 8, !tbaa !101
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.p
  store <4 x i8> <i8 110, i8 117, i8 108, i8 108>, ptr %i.q, align 1, !tbaa !12
  %i.r = load i64, ptr %i.j, align 8, !tbaa !101
  %i.s = add i64 %i.r, 4                          ; 2 uses
  store i64 %i.s, ptr %i.j, align 8, !tbaa !101
  %i.t = load ptr, ptr %i.i, align 8, !tbaa !98
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.s
  store i8 0, ptr %i.u, align 1, !tbaa !12
  br label %tg3json__buf_append.exit

bb.c:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = load i32, ptr %i.v, align 8, !tbaa !12
  %.not136 = icmp eq i32 %i.w, 0
  %i.x = load ptr, ptr %0, align 8, !tbaa !102    ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !101 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br i1 %.not136, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ac = add i64 %i.aa, 5
  %i.ad = tail call fastcc i32 @tg3json__reserve_bytes_parser(ptr noundef %i.x, ptr noundef %i.y, i64 noundef 1, i64 noundef %i.ac, ptr noundef %i.ab) #20
  %.not.i140 = icmp eq i32 %i.ad, 0
  br i1 %.not.i140, label %tg3json__buf_append.exit, label %.lr.ph.i.i141

.lr.ph.i.i141:                                    ; preds = %bb.d
  %i.ae = load ptr, ptr %i.y, align 8, !tbaa !98
  %i.af = load i64, ptr %i.z, align 8, !tbaa !101
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.af
  store <4 x i8> <i8 116, i8 114, i8 117, i8 101>, ptr %i.ag, align 1, !tbaa !12
  %i.ah = load i64, ptr %i.z, align 8, !tbaa !101
  %i.ai = add i64 %i.ah, 4                        ; 2 uses
  store i64 %i.ai, ptr %i.z, align 8, !tbaa !101
  %i.aj = load ptr, ptr %i.y, align 8, !tbaa !98
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ai
  store i8 0, ptr %i.ak, align 1, !tbaa !12
  br label %tg3json__buf_append.exit

bb.e:                                             ; preds = %bb.c
  %i.al = add i64 %i.aa, 6
  %i.am = tail call fastcc i32 @tg3json__reserve_bytes_parser(ptr noundef %i.x, ptr noundef %i.y, i64 noundef 1, i64 noundef %i.al, ptr noundef %i.ab) #20
  %.not.i149 = icmp eq i32 %i.am, 0
  br i1 %.not.i149, label %tg3json__buf_append.exit, label %.lr.ph.i.i150

.lr.ph.i.i150:                                    ; preds = %bb.e
  %i.an = load ptr, ptr %i.y, align 8, !tbaa !98
  %i.ao = load i64, ptr %i.z, align 8, !tbaa !101
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ao ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  store <4 x i8> <i8 102, i8 97, i8 108, i8 115>, ptr %i.ap, align 1, !tbaa !12
  store i8 101, ptr %i.aq, align 1, !tbaa !12
  %i.ar = load i64, ptr %i.z, align 8, !tbaa !101
  %i.as = add i64 %i.ar, 5                        ; 2 uses
  store i64 %i.as, ptr %i.z, align 8, !tbaa !101
  %i.at = load ptr, ptr %i.y, align 8, !tbaa !98
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.as
  store i8 0, ptr %i.au, align 1, !tbaa !12
  br label %tg3json__buf_append.exit

bb.f:                                             ; preds = %bb.a
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !12 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #19
  %i.ax = icmp slt i64 %i.aw, 0
  br i1 %i.ax, label %.thread.i, label %bb.g

.thread.i:                                        ; preds = %bb.f
  %i.ay = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  store i8 45, ptr %i.f, align 16, !tbaa !12
  %i.az = sub i64 0, %i.aw
  br label %.preheader28.preheader.i

bb.g:                                             ; preds = %bb.f
  %i.ba = icmp eq i64 %i.aw, 0
  br i1 %i.ba, label %bb.h, label %.preheader28.preheader.i

.preheader28.preheader.i:                         ; preds = %bb.g, %.thread.i
  %.02143.i = phi i64 [ %i.az, %.thread.i ], [ %i.aw, %bb.g ]
  %.02342.i = phi ptr [ %i.ay, %.thread.i ], [ %i.f, %bb.g ] ; 5 uses
  br label %.preheader28.i

bb.h:                                             ; preds = %bb.g
  %i.bb = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  store i8 48, ptr %i.f, align 16, !tbaa !12
  store i8 0, ptr %i.bb, align 1, !tbaa !12
  br label %tg3json__itoa.exit

.preheader28.i:                                   ; preds = %.preheader28.i, %.preheader28.preheader.i
end_hunk_0
