Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quickjs/original/quickjs?download=true
inline.NumInlined: 10959
inline.NumDeleted: 614
loop-unroll.NumCompletelyUnrolled: 86
loop-unroll.NumRuntimeUnrolled: 87
loop-unroll.NumUnrolled: 177
begin_hunk_0_@js_array_buffer_transfer:bb.a
bb.r:                                             ; preds = %bb.q
  %i.bc = zext nneg i32 %.val to i64              ; 2 uses
  store i64 %i.bc, ptr %i.b, align 8, !tbaa !240
  %i.bd = icmp ugt i64 %.0115, %i.bc
  br i1 %i.bd, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.be = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowTypeError(ptr noundef %0, ptr noundef nonnull @.str.963) ; 0 uses
  br label %JS_ThrowOutOfMemory.exit

bb.t:                                             ; preds = %bb.r, %bb.q, %bb.p
  %.0 = phi ptr [ null, %bb.p ], [ null, %bb.q ], [ %i.b, %bb.r ] ; 2 uses
  %i.bf = icmp eq i64 %.0115, 0
  br i1 %i.bf, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  tail call void @JS_DetachArrayBuffer(ptr noundef %0, i64 %1, i64 %2)
  %i.bg = call fastcc { i64, i64 } @js_array_buffer_constructor3(ptr noundef %0, i64 0, i64 3, i64 noundef 0, ptr noundef readonly %.0, i32 noundef 20, ptr noundef null, ptr noundef nonnull @js_array_buffer_realloc, ptr noundef null, i1 noundef zeroext true), !inline_history !182
  br label %bb.ag

bb.v:                                             ; preds = %bb.t
  %i.bh = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !447 ; 2 uses
  %i.bj = load i32, ptr %i.h, align 8, !tbaa !448
  %i.bk = sext i32 %i.bj to i64                   ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !743 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.h, i64 40 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !742 ; 2 uses
  %.not100 = icmp eq i64 %.0115, %i.bk
  br i1 %.not100, label %bb.af, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.not101 = icmp eq ptr %i.bm, null
  br i1 %.not101, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.bp = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowTypeError(ptr noundef %0, ptr noundef nonnull @.str.986) ; 0 uses
  br label %JS_ThrowOutOfMemory.exit

bb.y:                                             ; preds = %bb.w
  %i.bq = icmp ugt i64 %.0115, 2147483647
  br i1 %i.bq, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.br = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowRangeError(ptr noundef %0, ptr noundef nonnull @.str.963) ; 0 uses
  br label %JS_ThrowOutOfMemory.exit

bb.aa:                                            ; preds = %bb.y
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !232
  %i.bu = tail call ptr %i.bm(ptr noundef %i.bt, ptr noundef %i.bo, ptr noundef %i.bi, i64 noundef %.0115) #49 ; 4 uses
  %.not102 = icmp eq ptr %i.bu, null
  br i1 %.not102, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.bv = load ptr, ptr %i.bs, align 8, !tbaa !232
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 1256 ; 3 uses
  %i.bx = load i8, ptr %i.bw, align 8, !tbaa !233, !range !234, !noundef !235
  %i.by = trunc nuw i8 %i.bx to i1
  br i1 %i.by, label %JS_ThrowOutOfMemory.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  store i8 1, ptr %i.bw, align 8, !tbaa !233
  %i.bz = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowInternalError(ptr noundef nonnull %0, ptr noundef nonnull @.str.46), !inline_history !236 ; 0 uses
  store i8 0, ptr %i.bw, align 8, !tbaa !233
  br label %JS_ThrowOutOfMemory.exit

bb.ad:                                            ; preds = %bb.aa
  %i.ca = icmp ugt i64 %.0115, %i.bk
  br i1 %i.ca, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.bk
  %i.cc = sub nuw nsw i64 %.0115, %i.bk
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.cb, i8 0, i64 %i.cc, i1 false)
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.ae, %bb.v
  %.088 = phi ptr [ %i.bu, %bb.ae ], [ %i.bu, %bb.ad ], [ %i.bi, %bb.v ]
  store ptr null, ptr %i.bh, align 8, !tbaa !447
  store i32 0, ptr %i.h, align 8, !tbaa !448
  store i8 1, ptr %i.aw, align 8, !tbaa !511
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bn, i8 0, i64 16, i1 false)
  tail call fastcc void @js_array_buffer_update_typed_arrays(ptr noundef %i.h)
  %i.cd = call fastcc { i64, i64 } @js_array_buffer_constructor3(ptr noundef %0, i64 0, i64 3, i64 noundef %.0115, ptr noundef %.0, i32 noundef 20, ptr noundef %.088, ptr noundef %i.bm, ptr noundef %i.bo, i1 noundef zeroext false)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.u
  %.pn = phi { i64, i64 } [ %i.bg, %bb.u ], [ %i.cd, %bb.af ] ; 2 uses
  %.sroa.07.0 = extractvalue { i64, i64 } %.pn, 0 ; 3 uses
  %.sroa.7.0 = extractvalue { i64, i64 } %.pn, 1  ; 3 uses
  %i.ce = icmp eq i32 %5, 1
  br i1 %i.ce, label %bb.ah, label %JS_ThrowOutOfMemory.exit

bb.ah:                                            ; preds = %bb.ag
  %trunc = trunc i64 %.sroa.7.0 to i32
  switch i32 %trunc, label %JS_GetOpaque2.exit111.thread [
    i32 6, label %JS_ThrowOutOfMemory.exit
    i32 -1, label %bb.ai
  ]

bb.ai:                                            ; preds = %bb.ah
  %i.cf = inttoptr i64 %.sroa.07.0 to ptr         ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 18
  %i.ch = load i16, ptr %i.cg, align 2, !tbaa !276
  %.not3.i.i108 = icmp eq i16 %i.ch, 20
  br i1 %.not3.i.i108, label %JS_GetOpaque.exit.i109, label %JS_GetOpaque2.exit111.thread

JS_GetOpaque.exit.i109:                           ; preds = %bb.ai
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 48
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !218 ; 2 uses
  %.not.i110 = icmp eq ptr %i.cj, null
  br i1 %.not.i110, label %JS_GetOpaque2.exit111.thread, label %JS_GetOpaque2.exit111, !prof !404

JS_GetOpaque2.exit111.thread:                     ; preds = %bb.ah, %bb.ai, %JS_GetOpaque.exit.i109
  call fastcc void @JS_ThrowTypeErrorInvalidClass(ptr noundef %0, i32 noundef 20)
  br label %JS_ThrowOutOfMemory.exit

JS_GetOpaque2.exit111:                            ; preds = %JS_GetOpaque.exit.i109
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 9
  store i8 1, ptr %i.ck, align 1, !tbaa !509
  br label %JS_ThrowOutOfMemory.exit

JS_ThrowOutOfMemory.exit:                         ; preds = %bb.l, %js_dup.exit.i.i, %bb.ah, %.thread.i, %JS_GetOpaque2.exit111.thread, %bb.ac, %bb.ab, %JS_GetOpaque2.exit.thread, %bb.ag, %JS_GetOpaque2.exit111, %bb.z, %bb.x, %bb.s, %bb.o, %bb.m, %bb.c
  %.sroa.13.0 = phi i64 [ 0, %bb.c ], [ 0, %bb.m ], [ 0, %bb.o ], [ 0, %bb.s ], [ 0, %bb.ac ], [ 0, %JS_GetOpaque2.exit111.thread ], [ 0, %bb.ah ], [ 0, %bb.z ], [ %.sroa.07.0, %bb.ag ], [ 0, %bb.x ], [ 0, %JS_GetOpaque2.exit.thread ], [ %.sroa.07.0, %JS_GetOpaque2.exit111 ], [ 0, %bb.ab ], [ 0, %.thread.i ], [ 0, %js_dup.exit.i.i ], [ 0, %bb.l ]
  %.sroa.17.0 = phi i64 [ 6, %bb.c ], [ 6, %bb.m ], [ 6, %bb.o ], [ 6, %bb.s ], [ 6, %bb.ac ], [ 6, %JS_GetOpaque2.exit111.thread ], [ 6, %bb.ah ], [ 6, %bb.z ], [ %.sroa.7.0, %bb.ag ], [ 6, %bb.x ], [ 6, %JS_GetOpaque2.exit.thread ], [ %.sroa.7.0, %JS_GetOpaque2.exit111 ], [ 6, %bb.ab ], [ 6, %.thread.i ], [ 6, %js_dup.exit.i.i ], [ 6, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #49
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.13.0, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.17.0, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @js_array_buffer_update_typed_arrays(ptr nofree noundef nonnull readonly captures(address) %0) unnamed_addr #21 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !448    ; 2 uses
  %i.b = sext i32 %i.a to i64                     ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !447  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.042 = load ptr, ptr %i.f, align 8, !tbaa !222 ; 2 uses
  %.not43 = icmp eq ptr %.042, %i.e
  br i1 %.not43, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.j
  %.044 = phi ptr [ %.0, %bb.j ], [ %.042, %bb.a ] ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.044, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !744  ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 18
  %i.j = load i16, ptr %i.i, align 2, !tbaa !276  ; 2 uses
  %i.k = icmp eq i16 %i.j, 34
  br i1 %i.k, label %bb.b, label %bb.e

bb.b:                                             ; preds = %.lr.ph
  %i.l = getelementptr inbounds nuw i8, ptr %.044, i64 40
  %i.m = load i8, ptr %i.l, align 8, !tbaa !513, !range !234, !noundef !235
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %.044, i64 32
  %i.p = load i32, ptr %i.o, align 8, !tbaa !512  ; 2 uses
  %i.q = zext i32 %i.p to i64
  %i.r = icmp slt i64 %i.q, %i.b
  br i1 %i.r, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.s = sub i32 %i.a, %i.p
  %i.t = getelementptr inbounds nuw i8, ptr %.044, i64 36
  store i32 %i.s, ptr %i.t, align 4, !tbaa !514
  br label %bb.j

bb.e:                                             ; preds = %.lr.ph
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 64 ; 3 uses
  store i32 0, ptr %i.u, align 8, !tbaa !218
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 56 ; 3 uses
  store ptr null, ptr %i.v, align 8, !tbaa !218
  %i.w = zext i16 %i.j to i64
  %i.x = getelementptr i8, ptr @typed_array_size_log2, i64 %i.w
  %i.y = getelementptr i8, ptr %i.x, i64 -22
  %i.z = load i8, ptr %i.y, align 1, !tbaa !218   ; 2 uses
  %i.aa = zext i8 %i.z to i32                     ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.044, i64 40
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !513, !range !234, !noundef !235
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ae = shl nuw i32 1, %i.aa
  %i.af = getelementptr inbounds nuw i8, ptr %.044, i64 32 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !512
  %i.ah = zext i32 %i.ag to i64                   ; 2 uses
  %i.ai = zext i32 %i.ae to i64
  %i.aj = add nuw nsw i64 %i.ah, %i.ai
  %.not41 = icmp sgt i64 %i.aj, %i.b
  br i1 %.not41, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ak = sub nsw i64 %i.b, %i.ah
  %i.al = zext nneg i8 %i.z to i64
  %1 = ashr i64 %i.ak, %i.al
  %i.am = trunc i64 %1 to i32
  store i32 %i.am, ptr %i.u, align 8, !tbaa !218
  %i.an = load i32, ptr %i.af, align 8, !tbaa !512
  %i.ao = zext i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ao
  store ptr %i.ap, ptr %i.v, align 8, !tbaa !218
  br label %bb.j

bb.h:                                             ; preds = %bb.e
  %i.aq = getelementptr inbounds nuw i8, ptr %.044, i64 32 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !512
  %i.as = zext i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw i8, ptr %.044, i64 36
  %i.au = load i32, ptr %i.at, align 4, !tbaa !514 ; 2 uses
  %i.av = zext i32 %i.au to i64
  %i.aw = add nuw nsw i64 %i.av, %i.as
  %.not40 = icmp sgt i64 %i.aw, %i.b
  br i1 %.not40, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ax = lshr i32 %i.au, %i.aa
  store i32 %i.ax, ptr %i.u, align 8, !tbaa !218
  %i.ay = load i32, ptr %i.aq, align 8, !tbaa !512
  %i.az = zext i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.az
  store ptr %i.ba, ptr %i.v, align 8, !tbaa !218
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.f, %bb.i, %bb.h, %bb.b, %bb.c, %bb.d
  %i.bb = getelementptr inbounds nuw i8, ptr %.044, i64 8
  %.0 = load ptr, ptr %i.bb, align 8, !tbaa !222  ; 2 uses
  %.not = icmp eq ptr %.0, %i.e
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !2219

._crit_edge:                                      ; preds = %bb.j, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal { i64, i64 } @js_typed_array_from(ptr noundef %0, i64 %1, i64 %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4) #2 {
bb.a:
  %5 = alloca %struct.JSValue, align 8            ; 5 uses
  %6 = alloca [2 x %struct.JSValue], align 16     ; 6 uses
  %7 = alloca %struct.JSValue, align 8            ; 14 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %.sroa.0112.0.copyload = load i64, ptr %4, align 8, !tbaa !218 ; 4 uses
  %.sroa.6115.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.6115.0.copyload = load i64, ptr %.sroa.6115.0..sroa_idx, align 8, !tbaa !240 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #49
  %i.c = icmp sgt i32 %3, 1
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.093.0.copyload = load i64, ptr %i.d, align 8, !tbaa !218 ; 5 uses
  %.sroa.093.sroa.7.0.extract.shift = lshr i64 %.sroa.093.0.copyload, 32 ; 3 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.8.0.copyload = load i64, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !240 ; 4 uses
  %trunc = trunc i64 %.sroa.8.0.copyload to i32
  switch i32 %trunc, label %check_function.exit [
    i32 3, label %bb.f
    i32 -1, label %bb.c
  ], !prof !846

bb.c:                                             ; preds = %bb.b
  %i.e = inttoptr i64 %.sroa.093.0.copyload to ptr ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 18
  %i.g = load i16, ptr %i.f, align 2, !tbaa !276  ; 2 uses
  switch i16 %i.g, label %JS_IsFunction.exit.i [
    i16 13, label %bb.d
    i16 51, label %.split.i
  ]

.split.i:                                         ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !218
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.k = load i8, ptr %i.j, align 8, !tbaa !458
  %.not.i = icmp eq i8 %i.k, 0
  br i1 %.not.i, label %check_function.exit, label %bb.d, !prof !404

JS_IsFunction.exit.i:                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !232
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 1128
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !251
  %i.p = zext i16 %i.g to i64
  %i.q = getelementptr inbounds nuw [40 x i8], ptr %i.o, i64 %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !255
  %.not6.i = icmp eq ptr %i.s, null
  br i1 %.not6.i, label %check_function.exit, label %bb.d, !prof !404

check_function.exit:                              ; preds = %bb.b, %.split.i, %JS_IsFunction.exit.i
  %i.t = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowTypeError(ptr noundef %0, ptr noundef nonnull @.str.165), !inline_history !117 ; 0 uses
  br label %JS_FreeValue.exit195

bb.d:                                             ; preds = %JS_IsFunction.exit.i, %.split.i, %bb.c
  %.not180 = icmp eq i32 %3, 2
  br i1 %.not180, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.sroa.092.0.copyload = load i64, ptr %i.u, align 8, !tbaa !218
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 40
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !240
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.e, %bb.d, %bb.a
  %.not182 = phi i1 [ true, %bb.b ], [ false, %bb.e ], [ false, %bb.d ], [ true, %bb.a ]
  %.sroa.6.0 = phi i64 [ 3, %bb.b ], [ %.sroa.6.0.copyload, %bb.e ], [ 3, %bb.d ], [ 3, %bb.a ]
  %.sroa.092.sroa.5.0 = phi i64 [ 0, %bb.b ], [ %.sroa.092.0.copyload, %bb.e ], [ 0, %bb.d ], [ 0, %bb.a ]
  %.sroa.8.0 = phi i64 [ %.sroa.8.0.copyload, %bb.b ], [ %.sroa.8.0.copyload, %bb.e ], [ %.sroa.8.0.copyload, %bb.d ], [ 3, %bb.a ]
  %.sroa.093.sroa.0.0 = phi i64 [ %.sroa.093.0.copyload, %bb.b ], [ %.sroa.093.0.copyload, %bb.e ], [ %.sroa.093.0.copyload, %bb.d ], [ 0, %bb.a ]
  %.sroa.093.sroa.7.0 = phi i64 [ %.sroa.093.sroa.7.0.extract.shift, %bb.b ], [ %.sroa.093.sroa.7.0.extract.shift, %bb.e ], [ %.sroa.093.sroa.7.0.extract.shift, %bb.d ], [ 0, %bb.a ]
  %i.v = tail call fastcc { i64, i64 } @JS_GetPropertyInternal(ptr noundef %0, i64 %.sroa.0112.0.copyload, i64 %.sroa.6115.0.copyload, i32 noundef 228, i64 %.sroa.0112.0.copyload, i64 %.sroa.6115.0.copyload, i1 noundef zeroext false), !inline_history !373 ; 2 uses
  %i.w = extractvalue { i64, i64 } %i.v, 0        ; 6 uses
  %i.x = extractvalue { i64, i64 } %i.v, 1        ; 5 uses
  %trunc255 = trunc i64 %i.x to i32               ; 2 uses
  switch i32 %trunc255, label %JS_IsFunction.exit.thread199 [
    i32 6, label %JS_FreeValue.exit195
    i32 3, label %bb.u
    i32 2, label %bb.u
    i32 -1, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  %i.y = inttoptr i64 %i.w to ptr                 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 18
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !276 ; 2 uses
  switch i16 %i.aa, label %JS_IsFunction.exit [
    i16 13, label %JS_IsFunction.exit.thread
    i16 51, label %.split
  ]

.split:                                           ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !218
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ae = load i8, ptr %i.ad, align 8, !tbaa !458
  %.not = icmp eq i8 %i.ae, 0
  br i1 %.not, label %JS_IsFunction.exit.thread199.thread, label %JS_IsFunction.exit.thread

JS_IsFunction.exit:                               ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !232
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 1128
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !251
  %i.aj = zext i16 %i.aa to i64
  %i.ak = getelementptr inbounds nuw [40 x i8], ptr %i.ai, i64 %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !255
  %.not256 = icmp eq ptr %i.am, null
  br i1 %.not256, label %JS_IsFunction.exit.thread199.thread, label %JS_IsFunction.exit.thread

JS_IsFunction.exit.thread199:                     ; preds = %bb.f
  %i.an = icmp ugt i32 %trunc255, -10
  br i1 %i.an, label %JS_IsFunction.exit.thread199.thread, label %JS_FreeValue.exit

JS_IsFunction.exit.thread199.thread:              ; preds = %JS_IsFunction.exit, %.split, %JS_IsFunction.exit.thread199
  %.in = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ao = load ptr, ptr %.in, align 8, !tbaa !232
  %i.ap = inttoptr i64 %i.w to ptr
  %i.aq = getelementptr inbounds i8, ptr %i.ap, i64 -4 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !191 ; 2 uses
  %i.as = add nsw i32 %i.ar, -1
  store i32 %i.as, ptr %i.aq, align 4, !tbaa !191
  %i.at = icmp slt i32 %i.ar, 2
  br i1 %i.at, label %bb.h, label %JS_FreeValue.exit

bb.h:                                             ; preds = %JS_IsFunction.exit.thread199.thread
  tail call fastcc void @js_free_value_rt(ptr noundef %i.ao, i64 %i.w, i64 %i.x), !inline_history !291
  br label %JS_FreeValue.exit

JS_FreeValue.exit:                                ; preds = %JS_IsFunction.exit.thread199, %JS_IsFunction.exit.thread199.thread, %bb.h
  %i.au = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowTypeError(ptr noundef nonnull %0, ptr noundef nonnull @.str.179) ; 0 uses
  br label %JS_FreeValue.exit195

JS_IsFunction.exit.thread:                        ; preds = %bb.g, %.split, %JS_IsFunction.exit
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !351 ; 2 uses
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 -4 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !191
  %i.az = add nsw i32 %i.ay, 1
  store i32 %i.az, ptr %i.ax, align 4, !tbaa !191
  %i.ba = tail call fastcc { i64, i64 } @JS_NewObjectFromShape(ptr noundef %0, ptr noundef %i.aw, i32 noundef 2, ptr noundef null), !inline_history !405 ; 2 uses
  %i.bb = extractvalue { i64, i64 } %i.ba, 0      ; 7 uses
  %i.bc = extractvalue { i64, i64 } %i.ba, 1      ; 8 uses
  %i.bd = and i64 %i.bc, 4294967295
  %i.be = icmp eq i64 %i.bd, 6
  br i1 %i.be, label %bb.i, label %bb.k

bb.i:                                             ; preds = %JS_IsFunction.exit.thread
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !232
  %i.bh = getelementptr inbounds i8, ptr %i.y, i64 -4 ; 2 uses
end_hunk_0
