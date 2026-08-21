Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quickjs/original/quickjs?download=true
inline.NumInlined: 10959
inline.NumDeleted: 614
loop-unroll.NumCompletelyUnrolled: 86
loop-unroll.NumRuntimeUnrolled: 84
loop-unroll.NumUnrolled: 174
begin_hunk_0_@JS_GetFunctionProto:bb.a
  ret { i64, i64 } %.fca.1.insert.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef ptr @JS_DupContext(ptr nofree noundef returned captures(ret: address, provenance) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -4 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !8
  %i.c = add nsw i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 4, !tbaa !8
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @JS_GetRuntime(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !50
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @JS_SetMaxStackSize(ptr nofree noundef captures(none) initializes((1216, 1224), (1232, 1240)) %0, i64 noundef %1) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1216
  store i64 %1, ptr %i.a, align 8, !tbaa !99
  %i.b = icmp eq i64 %1, 0
  br i1 %i.b, label %update_stack_limit.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1224
  %i.d = load i64, ptr %i.c, align 8, !tbaa !100
  %i.e = sub i64 %i.d, %1
  br label %update_stack_limit.exit

update_stack_limit.exit:                          ; preds = %bb.a, %bb.b
  %.sink.i = phi i64 [ %i.e, %bb.b ], [ 0, %bb.a ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1232
  store i64 %.sink.i, ptr %i.f, align 8, !tbaa !101
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @JS_DupAtomRT(ptr nofree noundef readonly captures(none) %0, i32 noundef returned %1) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp slt i32 %1, 242
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1104
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !154
  %i.d = zext nneg i32 %1 to i64
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !155
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -4 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !8
  %i.i = add nsw i32 %i.h, 1
  store i32 %i.i, ptr %i.g, align 4, !tbaa !8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i32 %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @JS_DupAtom(ptr nofree noundef readonly captures(none) %0, i32 noundef returned %1) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp slt i32 %1, 242
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !50
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 1104
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !154
  %i.f = zext nneg i32 %1 to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.f
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !155
  %i.i = getelementptr inbounds i8, ptr %i.h, i64 -4 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !8
  %i.k = add nsw i32 %i.j, 1
  store i32 %i.k, ptr %i.i, align 4, !tbaa !8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define i32 @JS_NewAtomLen(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = icmp eq i64 %2, 0
  br i1 %i.b, label %.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr %1, align 1, !tbaa !35
  %i.d = add i8 %i.c, -58
  %i.e = icmp ult i8 %i.d, -10
  br i1 %i.e, label %.split, label %.split15

.split:                                           ; preds = %bb.b, %bb.a
  %.sink20 = phi i64 [ 0, %bb.a ], [ %2, %bb.b ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !50
  %i.h = tail call fastcc i32 @__JS_FindAtom(ptr noundef %i.g, ptr noundef %1, i64 noundef %.sink20) ; 2 uses
  %.not18 = icmp eq i32 %i.h, 0
  br i1 %.not18, label %.split15, label %bb.g

.split15:                                         ; preds = %.split, %bb.b
  %i.i = tail call { i64, i64 } @JS_NewStringLen(ptr noundef %0, ptr noundef %1, i64 noundef %2) ; 2 uses
  %i.j = extractvalue { i64, i64 } %i.i, 1
  %i.k = and i64 %i.j, 4294967295
  %i.l = icmp eq i64 %i.k, 6
  br i1 %i.l, label %bb.g, label %bb.c

bb.c:                                             ; preds = %.split15
  %i.m = extractvalue { i64, i64 } %i.i, 0
  %i.n = inttoptr i64 %i.m to ptr                 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !50   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #49
  %i.q = call fastcc zeroext i1 @is_num_string(ptr noundef %i.a, ptr noundef %i.n), !inline_history !288
  %i.r = load i32, ptr %i.a, align 4              ; 2 uses
  %i.s = icmp sgt i32 %i.r, -1
  %or.cond.i = select i1 %i.q, i1 %i.s, i1 false
  br i1 %or.cond.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds i8, ptr %i.n, i64 -4 ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !8    ; 2 uses
  %i.v = add nsw i32 %i.u, -1
  store i32 %i.v, ptr %i.t, align 4, !tbaa !8
  %i.w = icmp slt i32 %i.u, 2
  br i1 %i.w, label %bb.e, label %js_free_string.exit

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @js_free_string0(ptr noundef %i.p, ptr noundef nonnull %i.n), !inline_history !289
  br label %js_free_string.exit

js_free_string.exit:                              ; preds = %bb.d, %bb.e
  %i.x = or disjoint i32 %i.r, -2147483648
  br label %JS_NewAtomStr.exit

bb.f:                                             ; preds = %bb.c
  %i.y = tail call fastcc i32 @__JS_NewAtom(ptr noundef %i.p, ptr noundef %i.n, i32 noundef 1), !inline_history !288
  br label %JS_NewAtomStr.exit

JS_NewAtomStr.exit:                               ; preds = %js_free_string.exit, %bb.f
  %.0.i = phi i32 [ %i.x, %js_free_string.exit ], [ %i.y, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #49
  br label %bb.g

bb.g:                                             ; preds = %.split15, %.split, %JS_NewAtomStr.exit
  %.1 = phi i32 [ %i.h, %.split ], [ %.0.i, %JS_NewAtomStr.exit ], [ 0, %.split15 ]
  ret i32 %.1
}

; Function Attrs: nofree nounwind uwtable
define internal fastcc i32 @__JS_FindAtom(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) unnamed_addr #13 {
bb.a:
  %.not.i = icmp eq i64 %2, 0
  br i1 %.not.i, label %hash_string8.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %xtraiter = and i64 %2, 3                       ; 3 uses
  %i.a = icmp ult i64 %2, 4
  br i1 %i.a, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %2, -4
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.010.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.y, %.lr.ph.i ] ; 5 uses
  %.079.i = phi i32 [ 1, %.lr.ph.i.preheader.new ], [ %i.x, %.lr.ph.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.b = mul i32 %.079.i, 263
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %.010.i
  %i.d = load i8, ptr %i.c, align 1, !tbaa !35
  %i.e = zext i8 %i.d to i32
  %i.f = add i32 %i.b, %i.e
  %i.g = mul i32 %i.f, 263
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 %.010.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !35
  %i.k = zext i8 %i.j to i32
  %i.l = add i32 %i.g, %i.k
  %i.m = mul i32 %i.l, 263
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %.010.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 2
  %i.p = load i8, ptr %i.o, align 1, !tbaa !35
  %i.q = zext i8 %i.p to i32
  %i.r = add i32 %i.m, %i.q
  %i.s = mul i32 %i.r, 263
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 %.010.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 3
  %i.v = load i8, ptr %i.u, align 1, !tbaa !35
  %i.w = zext i8 %i.v to i32
  %i.x = add i32 %i.s, %i.w                       ; 3 uses
  %i.y = add nuw i64 %.010.i, 4                   ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %hash_string8.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !290

hash_string8.exit.loopexit.unr-lcssa:             ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %hash_string8.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %hash_string8.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.010.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.y, %hash_string8.exit.loopexit.unr-lcssa ]
  %.079.i.epil.init = phi i32 [ 1, %.lr.ph.i.preheader ], [ %i.x, %hash_string8.exit.loopexit.unr-lcssa ]
  %lcmp.mod14 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod14)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.010.i.epil = phi i64 [ %i.ae, %.lr.ph.i.epil ], [ %.010.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %.079.i.epil = phi i32 [ %i.ad, %.lr.ph.i.epil ], [ %.079.i.epil.init, %.lr.ph.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.z = mul i32 %.079.i.epil, 263
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 %.010.i.epil
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !35
  %i.ac = zext i8 %i.ab to i32
  %i.ad = add i32 %i.z, %i.ac                     ; 2 uses
  %i.ae = add nuw i64 %.010.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %hash_string8.exit, label %.lr.ph.i.epil, !llvm.loop !291

hash_string8.exit:                                ; preds = %hash_string8.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.a
  %.07.lcssa.i = phi i32 [ 1, %bb.a ], [ %i.x, %hash_string8.exit.loopexit.unr-lcssa ], [ %i.ad, %.lr.ph.i.epil ]
  %i.af = trunc i64 %2 to i32
  %i.ag = mul i32 %i.af, 29918791
  %i.ah = xor i32 %.07.lcssa.i, %i.ag
  %i.ai = and i32 %i.ah, 268435455                ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 1080
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !74
  %i.al = add nsw i32 %i.ak, -1
  %i.am = and i32 %i.ai, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 1096
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !75
  %i.ap = zext nneg i32 %i.am to i64
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.ap
  %.036 = load i32, ptr %i.aq, align 4, !tbaa !8  ; 2 uses
  %.not37 = icmp eq i32 %.036, 0
  br i1 %.not37, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %hash_string8.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 1104
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !154
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.j
  %.038 = phi i32 [ %.036, %.lr.ph ], [ %.0, %bb.j ] ; 4 uses
  %i.at = zext i32 %.038 to i64
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.at
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !155 ; 7 uses
  %i.aw = load i64, ptr %i.av, align 8            ; 5 uses
  %i.ax = lshr i64 %i.aw, 32
  %i.ay = trunc nuw i64 %i.ax to i32
  %i.az = and i32 %i.ay, 268435455
  %i.ba = icmp eq i32 %i.az, %i.ai
  %.mask = and i64 %i.aw, -4611686018427387904
  %i.bb = icmp eq i64 %.mask, 4611686018427387904
  %or.cond = and i1 %i.bb, %i.ba
  %i.bc = and i64 %i.aw, 2147483647
  %i.bd = icmp eq i64 %i.bc, %2
  %or.cond27 = and i1 %i.bd, %or.cond
  %i.be = and i64 %i.aw, 2147483648
  %i.bf = icmp eq i64 %i.be, 0
  %or.cond29 = and i1 %i.bf, %or.cond27
  br i1 %or.cond29, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.bg = lshr i64 %i.aw, 60
  %i.bh = trunc nuw nsw i64 %i.bg to i32
  %i.bi = and i32 %i.bh, 3
  switch i32 %i.bi, label %default.unreachable [
    i32 0, label %bb.d
    i32 1, label %bb.e
    i32 2, label %bb.f
    i32 3, label %bb.g
  ]

bb.d:                                             ; preds = %bb.c
  %i.bj = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  br label %str8.exit

bb.e:                                             ; preds = %bb.c
  %i.bk = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !292
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.bn = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !294
  %i.bp = zext i32 %i.bo to i64
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bp
  br label %str8.exit

bb.f:                                             ; preds = %bb.c
  %i.br = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !71
  br label %str8.exit

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.g:                                             ; preds = %bb.c
  tail call void @abort() #50
  unreachable

str8.exit:                                        ; preds = %bb.d, %bb.e, %bb.f
  %.0.i.i = phi ptr [ %i.bj, %bb.d ], [ %i.bq, %bb.e ], [ %i.bs, %bb.f ]
  %bcmp = tail call i32 @bcmp(ptr %.0.i.i, ptr %1, i64 %2)
  %i.bt = icmp eq i32 %bcmp, 0
  br i1 %i.bt, label %bb.h, label %bb.j

bb.h:                                             ; preds = %str8.exit
  %i.bu = icmp slt i32 %.038, 242
  br i1 %i.bu, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bv = getelementptr inbounds i8, ptr %i.av, i64 -4 ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !8
  %i.bx = add nsw i32 %i.bw, 1
  store i32 %i.bx, ptr %i.bv, align 4, !tbaa !8
  br label %.loopexit

bb.j:                                             ; preds = %str8.exit, %bb.b
  %i.by = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %.0 = load i32, ptr %i.by, align 8, !tbaa !8    ; 2 uses
  %.not = icmp eq i32 %.0, 0
  br i1 %.not, label %.loopexit, label %bb.b, !llvm.loop !295

.loopexit:                                        ; preds = %bb.j, %hash_string8.exit, %bb.h, %bb.i
  %.033 = phi i32 [ %.038, %bb.i ], [ %.038, %bb.h ], [ 0, %hash_string8.exit ], [ 0, %bb.j ]
  ret i32 %.033
}

; Function Attrs: nounwind uwtable
define { i64, i64 } @JS_NewStringLen(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = icmp eq i64 %2, 0
  br i1 %i.c, label %bb.b, label %bb.c, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !50
  %i.f = getelementptr i8, ptr %i.e, i64 1104
  %.val = load ptr, ptr %i.f, align 8, !tbaa !154
  %i.g = getelementptr i8, ptr %.val, i64 384
  %.val.val = load ptr, ptr %i.g, align 8, !tbaa !155 ; 2 uses
  %i.h = ptrtoint ptr %.val.val to i64
  %i.i = getelementptr inbounds i8, ptr %.val.val, i64 -4 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !8
  %i.k = add nsw i32 %i.j, 1
  store i32 %i.k, ptr %i.i, align 4, !tbaa !8
  br label %js_alloc_string.exit.thread

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #49
  %min.iters.check = icmp ult i64 %2, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.c
  %n.vec = and i64 %2, -8                         ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.p, %vector.body ]
  %vec.phi112 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.q, %vector.body ]
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %index ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %wide.load = load <4 x i8>, ptr %i.l, align 1, !tbaa !35
  %wide.load113 = load <4 x i8>, ptr %i.m, align 1, !tbaa !35
  %i.n = zext <4 x i8> %wide.load to <4 x i32>
  %i.o = zext <4 x i8> %wide.load113 to <4 x i32>
  %i.p = or <4 x i32> %vec.phi, %i.n              ; 2 uses
  %i.q = or <4 x i32> %vec.phi112, %i.o           ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.r = icmp eq i64 %index.next, %n.vec
  br i1 %i.r, label %middle.block, label %vector.body, !llvm.loop !296

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <4 x i32> %i.q, %i.p
  %i.s = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.c, %middle.block
  %.045.i.ph = phi i32 [ 0, %bb.c ], [ %i.s, %middle.block ]
  %.03244.i.ph = phi i64 [ 0, %bb.c ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.045.i = phi i32 [ %i.w, %scalar.ph ], [ %.045.i.ph, %scalar.ph.preheader ]
  %.03244.i = phi i64 [ %i.x, %scalar.ph ], [ %.03244.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 %.03244.i
  %i.u = load i8, ptr %i.t, align 1, !tbaa !35
end_hunk_0
begin_hunk_1_@JS_WriteObject2:bb.a
  %i.cb = icmp ult i64 %i.ca, 4
  br i1 %i.cb, label %bb.m, label %bb.n, !prof !9

bb.m:                                             ; preds = %bc_put_u8.exit33.i
  %i.cc = call fastcc i32 @__dbuf_put_u32(ptr noundef nonnull %i.u, i32 noundef %i.bq) ; 0 uses
  br label %bc_put_u32.exit34.i

bb.n:                                             ; preds = %bc_put_u8.exit33.i
  %i.cd = load ptr, ptr %i.u, align 8, !tbaa !458
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.bz
  store i32 %i.bq, ptr %i.ce, align 1
  %i.cf = load i64, ptr %.sroa.10.0..sroa_idx.i, align 8, !tbaa !457
  %i.cg = add i64 %i.cf, 4
  store i64 %i.cg, ptr %.sroa.10.0..sroa_idx.i, align 8, !tbaa !457
  br label %bc_put_u32.exit34.i

bb.o:                                             ; preds = %bb.i
  %i.ch = load ptr, ptr %i.bn, align 8, !tbaa !154
  %i.ci = zext nneg i32 %i.bq to i64
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.ci
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !155 ; 2 uses
  %i.cl = load i64, ptr %i.ck, align 8
  %i.cm = lshr i64 %i.cl, 62
  %i.cn = trunc nuw nsw i64 %i.cm to i8           ; 2 uses
  %i.co = load i64, ptr %.sroa.14.0..sroa_idx.i, align 8, !tbaa !456
  %i.cp = load i64, ptr %.sroa.10.0..sroa_idx.i, align 8, !tbaa !457 ; 3 uses
  %i.cq = icmp eq i64 %i.co, %i.cp
  br i1 %i.cq, label %bb.p, label %bb.q, !prof !9

bb.p:                                             ; preds = %bb.o
  call fastcc void @__dbuf_putc(ptr noundef nonnull %i.u, i8 noundef zeroext %i.cn)
  br label %bc_put_u8.exit35.i

bb.q:                                             ; preds = %bb.o
  %i.cr = load ptr, ptr %i.u, align 8, !tbaa !458
  %i.cs = add i64 %i.cp, 1
  store i64 %i.cs, ptr %.sroa.10.0..sroa_idx.i, align 8, !tbaa !457
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.cp
  store i8 %i.cn, ptr %i.ct, align 1, !tbaa !35
  br label %bc_put_u8.exit35.i

bc_put_u8.exit35.i:                               ; preds = %bb.q, %bb.p
  call fastcc void @JS_WriteString(ptr noundef nonnull %6, ptr noundef nonnull %i.ck)
  br label %bc_put_u32.exit34.i

bc_put_u32.exit34.i:                              ; preds = %bc_put_u8.exit35.i, %bb.n, %bb.m
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.cu = load i32, ptr %i.aq, align 8, !tbaa !933
  %i.cv = sext i32 %i.cu to i64
  %i.cw = icmp slt i64 %indvars.iv.next.i, %i.cv
  br i1 %i.cw, label %bb.i, label %._crit_edge.i, !llvm.loop !935

._crit_edge.i:                                    ; preds = %bc_put_u32.exit34.i, %bc_put_leb128.exit.i
  %i.cx = load i64, ptr %.sroa.10.0..sroa_idx.i, align 8, !tbaa !936
  %sext.i = shl i64 %i.cx, 32
  %i.cy = ashr exact i64 %sext.i, 32              ; 4 uses
  %i.cz = add i64 %i.cy, %.sroa.10.0.copyload.i   ; 5 uses
  %i.da = icmp ult i64 %i.cz, %i.cy
  br i1 %i.da, label %bb.v, label %bb.r

bb.r:                                             ; preds = %._crit_edge.i
  %i.db = icmp ugt i64 %i.cz, %.sroa.14.0.copyload.i
  br i1 %i.db, label %bb.s, label %dbuf_claim.exit.i

bb.s:                                             ; preds = %bb.r
  %i.dc = trunc nuw i8 %.sroa.16.0.copyload.i to i1
  br i1 %i.dc, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dd = lshr i64 %.sroa.14.0.copyload.i, 1
  %i.de = add i64 %i.dd, %.sroa.14.0.copyload.i   ; 2 uses
  %i.df = icmp ult i64 %i.de, %.sroa.14.0.copyload.i
  %i.dg = call i64 @llvm.umax.i64(i64 %i.de, i64 %i.cz)
  %.0.i.i = select i1 %i.df, i64 %i.cz, i64 %i.dg ; 2 uses
  %i.dh = call ptr %.sroa.1852.0.copyload.i(ptr noundef %.sroa.20.0.copyload.i, ptr noundef %.sroa.0.0.copyload.i, i64 noundef %.0.i.i) #49, !inline_history !937 ; 2 uses
  %.not.i.i = icmp eq ptr %i.dh, null
  br i1 %.not.i.i, label %bb.v, label %dbuf_claim.exit.i

dbuf_claim.exit.i:                                ; preds = %bb.t, %bb.r
  %.sroa.0.0.i = phi ptr [ %.sroa.0.0.copyload.i, %bb.r ], [ %i.dh, %bb.t ] ; 4 uses
  %.sroa.14.0.i = phi i64 [ %.sroa.14.0.copyload.i, %bb.r ], [ %.0.i.i, %bb.t ]
  %.sroa.16.0.i = phi i8 [ %.sroa.16.0.copyload.i, %bb.r ], [ 0, %bb.t ]
  %i.di = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 %i.cy
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.di, ptr align 1 %.sroa.0.0.i, i64 %.sroa.10.0.copyload.i, i1 false)
  %i.dj = load ptr, ptr %i.u, align 8, !tbaa !938
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.sroa.0.0.i, ptr align 1 %i.dj, i64 %i.cy, i1 false)
  %i.dk = load ptr, ptr %i.u, align 8, !tbaa !458 ; 2 uses
  %.not.i36.i = icmp eq ptr %i.dk, null
  br i1 %.not.i36.i, label %bb.x, label %bb.u

bb.u:                                             ; preds = %dbuf_claim.exit.i
  %i.dl = load ptr, ptr %i.w, align 8, !tbaa !455
  %i.dm = load ptr, ptr %i.v, align 8, !tbaa !453
  %i.dn = call ptr %i.dl(ptr noundef %i.dm, ptr noundef nonnull %i.dk, i64 noundef 0) #49, !inline_history !939 ; 0 uses
  br label %bb.x

bb.v:                                             ; preds = %bb.t, %bb.s, %._crit_edge.i
  %.not.i37.i = icmp eq ptr %.sroa.0.0.copyload.i, null
  br i1 %.not.i37.i, label %JS_WriteObjectAtoms.exit.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.do = call ptr %.sroa.1852.0.copyload.i(ptr noundef %.sroa.20.0.copyload.i, ptr noundef nonnull %.sroa.0.0.copyload.i, i64 noundef 0) #49, !inline_history !939 ; 0 uses
  br label %JS_WriteObjectAtoms.exit.thread

JS_WriteObjectAtoms.exit.thread:                  ; preds = %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.18.i)
  br label %bb.ae

bb.x:                                             ; preds = %bb.u, %dbuf_claim.exit.i
  store ptr %.sroa.0.0.i, ptr %i.u, align 8, !tbaa !255
  store i64 %i.cz, ptr %.sroa.10.0..sroa_idx.i, align 8, !tbaa !72
  store i64 %.sroa.14.0.i, ptr %.sroa.14.0..sroa_idx.i, align 8, !tbaa !72
  store i8 %.sroa.16.0.i, ptr %.sroa.16.0..sroa_idx.i, align 8, !tbaa !931
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.18.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.18.i, i64 7, i1 false), !tbaa.struct !932
  store ptr %.sroa.1852.0.copyload.i, ptr %i.w, align 8, !tbaa !71
  store ptr %.sroa.20.0.copyload.i, ptr %i.v, align 8, !tbaa !71
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.18.i)
  %i.dp = load ptr, ptr %i.x, align 8, !tbaa !940
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !50
  call void @js_free_rt(ptr noundef %i.dr, ptr noundef %i.dp)
  %i.ds = getelementptr inbounds nuw i8, ptr %6, i64 136
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !941
  %i.du = load ptr, ptr %i.dq, align 8, !tbaa !50
  call void @js_free_rt(ptr noundef %i.du, ptr noundef %i.dt)
  %i.dv = getelementptr inbounds nuw i8, ptr %6, i64 72
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !942
  %i.dx = load ptr, ptr %i.dq, align 8, !tbaa !50
  call void @js_free_rt(ptr noundef %i.dx, ptr noundef %i.dw)
  %i.dy = getelementptr inbounds nuw i8, ptr %6, i64 88
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !934
  %i.ea = load ptr, ptr %i.dq, align 8, !tbaa !50
  call void @js_free_rt(ptr noundef %i.ea, ptr noundef %i.dz)
  %i.eb = load i64, ptr %.sroa.10.0..sroa_idx.i, align 8, !tbaa !936 ; 2 uses
  store i64 %i.eb, ptr %1, align 8, !tbaa !72
  %.not55 = icmp eq ptr %5, null
  %i.ec = getelementptr inbounds nuw i8, ptr %6, i64 104
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !943 ; 2 uses
  br i1 %.not55, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  store ptr %i.ed, ptr %5, align 8, !tbaa !944
  %i.ee = getelementptr inbounds nuw i8, ptr %6, i64 112
  %i.ef = load i32, ptr %i.ee, align 8, !tbaa !946
  %i.eg = sext i32 %i.ef to i64
  %i.eh = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.eg, ptr %i.eh, align 8, !tbaa !947
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  %i.ei = load ptr, ptr %i.dq, align 8, !tbaa !50
  call void @js_free_rt(ptr noundef %i.ei, ptr noundef %i.ed)
  %.pre66 = load i64, ptr %.sroa.10.0..sroa_idx.i, align 8, !tbaa !457
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.ej = phi i64 [ %.pre66, %bb.z ], [ %i.eb, %bb.y ] ; 3 uses
  %i.ek = load ptr, ptr %i.u, align 8, !tbaa !458 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 5 ; 8 uses
  %i.em = add i64 %i.ej, -5                       ; 2 uses
  %i.en = icmp ugt i64 %i.em, 4
  br i1 %i.en, label %.lr.ph.i58.preheader, label %._crit_edge.i57

.lr.ph.i58.preheader:                             ; preds = %bb.aa
  %i.eo = add i64 %i.ej, -10                      ; 2 uses
  %i.ep = lshr i64 %i.eo, 2
  %i.eq = add nuw nsw i64 %i.ep, 1                ; 2 uses
  %xtraiter = and i64 %i.eq, 3                    ; 3 uses
  %i.er = icmp ult i64 %i.eo, 12
  br i1 %i.er, label %.lr.ph.i58.epil.preheader, label %.lr.ph.i58.preheader.new

.lr.ph.i58.preheader.new:                         ; preds = %.lr.ph.i58.preheader
  %unroll_iter = and i64 %i.eq, 9223372036854775804
  br label %.lr.ph.i58

.lr.ph.i58:                                       ; preds = %.lr.ph.i58, %.lr.ph.i58.preheader.new
  %i.es = phi i64 [ 4, %.lr.ph.i58.preheader.new ], [ %i.fi, %.lr.ph.i58 ] ; 5 uses
  %.028.i = phi i64 [ 0, %.lr.ph.i58.preheader.new ], [ %i.fd, %.lr.ph.i58 ]
  %.02027.i = phi i32 [ 0, %.lr.ph.i58.preheader.new ], [ %i.fh, %.lr.ph.i58 ]
  %niter = phi i64 [ 0, %.lr.ph.i58.preheader.new ], [ %niter.next.3, %.lr.ph.i58 ]
  %i.et = getelementptr inbounds nuw i8, ptr %i.el, i64 %.028.i
  %.val.i = load i32, ptr %i.et, align 1
  %i.eu = add i32 %.val.i, %.02027.i
  %i.ev = mul i32 %i.eu, -1640562687
  %i.ew = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.es
  %.val.i.1 = load i32, ptr %i.ew, align 1
  %i.ex = add i32 %.val.i.1, %i.ev
  %i.ey = mul i32 %i.ex, -1640562687
  %i.ez = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.es
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 4
  %.val.i.2 = load i32, ptr %i.fa, align 1
  %i.fb = add i32 %.val.i.2, %i.ey
  %i.fc = mul i32 %i.fb, -1640562687
  %i.fd = add nuw i64 %i.es, 12                   ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.es
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  %.val.i.3 = load i32, ptr %i.ff, align 1
  %i.fg = add i32 %.val.i.3, %i.fc
  %i.fh = mul i32 %i.fg, -1640562687              ; 3 uses
  %i.fi = add nuw i64 %i.es, 16                   ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3.not = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %._crit_edge.loopexit.i.unr-lcssa, label %.lr.ph.i58, !llvm.loop !948

._crit_edge.loopexit.i.unr-lcssa:                 ; preds = %.lr.ph.i58
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit.i, label %.lr.ph.i58.epil.preheader

.lr.ph.i58.epil.preheader:                        ; preds = %._crit_edge.loopexit.i.unr-lcssa, %.lr.ph.i58.preheader
  %.epil.init = phi i64 [ 4, %.lr.ph.i58.preheader ], [ %i.fi, %._crit_edge.loopexit.i.unr-lcssa ]
  %.028.i.epil.init = phi i64 [ 0, %.lr.ph.i58.preheader ], [ %i.fd, %._crit_edge.loopexit.i.unr-lcssa ]
  %.02027.i.epil.init = phi i32 [ 0, %.lr.ph.i58.preheader ], [ %i.fh, %._crit_edge.loopexit.i.unr-lcssa ]
  %lcmp.mod86 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod86)
  br label %.lr.ph.i58.epil

.lr.ph.i58.epil:                                  ; preds = %.lr.ph.i58.epil, %.lr.ph.i58.epil.preheader
  %i.fj = phi i64 [ %i.fn, %.lr.ph.i58.epil ], [ %.epil.init, %.lr.ph.i58.epil.preheader ] ; 2 uses
  %.028.i.epil = phi i64 [ %i.fj, %.lr.ph.i58.epil ], [ %.028.i.epil.init, %.lr.ph.i58.epil.preheader ]
  %.02027.i.epil = phi i32 [ %i.fm, %.lr.ph.i58.epil ], [ %.02027.i.epil.init, %.lr.ph.i58.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i58.epil ], [ 0, %.lr.ph.i58.epil.preheader ]
  %i.fk = getelementptr inbounds nuw i8, ptr %i.el, i64 %.028.i.epil
  %.val.i.epil = load i32, ptr %i.fk, align 1
  %i.fl = add i32 %.val.i.epil, %.02027.i.epil
  %i.fm = mul i32 %i.fl, -1640562687              ; 2 uses
  %i.fn = add nuw i64 %i.fj, 4
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit.i, label %.lr.ph.i58.epil, !llvm.loop !949

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i58.epil, %._crit_edge.loopexit.i.unr-lcssa
  %.lcssa = phi i32 [ %i.fh, %._crit_edge.loopexit.i.unr-lcssa ], [ %i.fm, %.lr.ph.i58.epil ]
  %i.fo = add i64 %i.ej, -10
  %i.fp = and i64 %i.fo, -4
  %i.fq = add nuw i64 %i.fp, 4
  br label %._crit_edge.i57

._crit_edge.i57:                                  ; preds = %._crit_edge.loopexit.i, %bb.aa
  %.020.lcssa.i = phi i32 [ 0, %bb.aa ], [ %.lcssa, %._crit_edge.loopexit.i ]
  %.0.lcssa.i = phi i64 [ 0, %bb.aa ], [ %i.fq, %._crit_edge.loopexit.i ] ; 4 uses
  %i.fr = sub i64 %i.em, %.0.lcssa.i
  switch i64 %i.fr, label %bc_csum.exit [
    i64 3, label %bb.ab
    i64 2, label %bb.ac
    i64 1, label %bb.ad
  ]

bb.ab:                                            ; preds = %._crit_edge.i57
  %i.fs = getelementptr inbounds nuw i8, ptr %i.el, i64 %.0.lcssa.i
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 2
  %i.fu = load i8, ptr %i.ft, align 1, !tbaa !35
  %i.fv = zext i8 %i.fu to i32
  %i.fw = shl nuw nsw i32 %i.fv, 16
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %._crit_edge.i57
  %.021.i = phi i32 [ %i.fw, %bb.ab ], [ 0, %._crit_edge.i57 ]
  %i.fx = getelementptr inbounds nuw i8, ptr %i.el, i64 %.0.lcssa.i
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 1
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !35
  %i.ga = zext i8 %i.fz to i32
  %i.gb = shl nuw nsw i32 %i.ga, 8
  %i.gc = or disjoint i32 %i.gb, %.021.i
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %._crit_edge.i57
  %i.gd = phi i32 [ %i.gc, %bb.ac ], [ 0, %._crit_edge.i57 ]
  %i.ge = getelementptr inbounds nuw i8, ptr %i.el, i64 %.0.lcssa.i
  %i.gf = load i8, ptr %i.ge, align 1, !tbaa !35
  %i.gg = zext i8 %i.gf to i32
  %i.gh = or i32 %i.gd, %i.gg
  br label %bc_csum.exit

bc_csum.exit:                                     ; preds = %._crit_edge.i57, %bb.ad
  %i.gi = phi i32 [ 0, %._crit_edge.i57 ], [ %i.gh, %bb.ad ]
  %i.gj = add i32 %i.gi, %.020.lcssa.i
  %i.gk = mul i32 %i.gj, -1640562687
  %i.gl = getelementptr inbounds nuw i8, ptr %i.ek, i64 1
  store i32 %i.gk, ptr %i.gl, align 1
  %i.gm = load ptr, ptr %i.u, align 8, !tbaa !458
  br label %bb.ah

bb.ae:                                            ; preds = %JS_WriteObjectAtoms.exit.thread, %bb.a
  %i.gn = load ptr, ptr %i.x, align 8, !tbaa !940
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !50
  call void @js_free_rt(ptr noundef %i.gp, ptr noundef %i.gn)
  %i.gq = getelementptr inbounds nuw i8, ptr %6, i64 136
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !941
  %i.gs = load ptr, ptr %i.go, align 8, !tbaa !50
  call void @js_free_rt(ptr noundef %i.gs, ptr noundef %i.gr)
  %i.gt = getelementptr inbounds nuw i8, ptr %6, i64 72
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !942
  %i.gv = load ptr, ptr %i.go, align 8, !tbaa !50
  call void @js_free_rt(ptr noundef %i.gv, ptr noundef %i.gu)
  %i.gw = getelementptr inbounds nuw i8, ptr %6, i64 88
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !934
  %i.gy = load ptr, ptr %i.go, align 8, !tbaa !50
  call void @js_free_rt(ptr noundef %i.gy, ptr noundef %i.gx)
  %i.gz = load ptr, ptr %i.u, align 8, !tbaa !458 ; 2 uses
  %.not.i = icmp eq ptr %i.gz, null
  br i1 %.not.i, label %dbuf_free.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ha = load ptr, ptr %i.w, align 8, !tbaa !455
  %i.hb = load ptr, ptr %i.v, align 8, !tbaa !453
  %i.hc = call ptr %i.ha(ptr noundef %i.hb, ptr noundef nonnull %i.gz, i64 noundef 0) #49, !inline_history !483 ; 0 uses
  br label %dbuf_free.exit

dbuf_free.exit:                                   ; preds = %bb.ae, %bb.af
  store i64 0, ptr %1, align 8, !tbaa !72
  %.not56 = icmp eq ptr %5, null
  br i1 %.not56, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %dbuf_free.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  br label %bb.ah

bb.ah:                                            ; preds = %dbuf_free.exit, %bb.ag, %bc_csum.exit
  %.0 = phi ptr [ %i.gm, %bc_csum.exit ], [ null, %bb.ag ], [ null, %dbuf_free.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #49
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef range(i32 -1, 1) i32 @JS_WriteObjectRec(ptr noundef nonnull %0, i64 %1, i64 %2) unnamed_addr #2 {
bb.a:
  %3 = alloca %struct.JSBigIntBuf, align 4        ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !921    ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !50   ; 4 uses
  %i.d = getelementptr i8, ptr %i.c, i64 1232
  %.val = load i64, ptr %i.d, align 8, !tbaa !101
  %i.e = tail call ptr @llvm.frameaddress.p0(i32 0)
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = icmp ugt i64 %.val, %i.f
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowRangeError(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.92), !inline_history !102 ; 0 uses
  br label %bc_put_u8.exit

bb.c:                                             ; preds = %bb.a
  %i.i = trunc i64 %2 to i32                      ; 2 uses
  switch i32 %i.i, label %bb.cs [
    i32 2, label %bb.d
    i32 3, label %bb.g
    i32 1, label %bb.j
    i32 0, label %bb.m
    i32 8, label %bb.t
    i32 -7, label %bb.y
    i32 -6, label %bb.ab
    i32 -2, label %bb.af
    i32 -3, label %bb.ah
    i32 -1, label %bb.aj
    i32 7, label %bb.bq
    i32 -9, label %bb.bq
    i32 -8, label %bb.cl
  ]

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load i64, ptr %i.k, align 8, !tbaa !456
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !457  ; 3 uses
  %i.o = icmp eq i64 %i.l, %i.n
  br i1 %i.o, label %bb.e, label %bb.f, !prof !9

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @__dbuf_putc(ptr noundef nonnull %i.j, i8 noundef zeroext 1)
  br label %bc_put_u8.exit

bb.f:                                             ; preds = %bb.d
  %i.p = load ptr, ptr %i.j, align 8, !tbaa !458
  %i.q = add i64 %i.n, 1
  store i64 %i.q, ptr %i.m, align 8, !tbaa !457
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  store i8 1, ptr %i.r, align 1, !tbaa !35
  br label %bc_put_u8.exit

bb.g:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = load i64, ptr %i.t, align 8, !tbaa !456
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !457  ; 3 uses
  %i.x = icmp eq i64 %i.u, %i.w
  br i1 %i.x, label %bb.h, label %bb.i, !prof !9

bb.h:                                             ; preds = %bb.g
  tail call fastcc void @__dbuf_putc(ptr noundef nonnull %i.s, i8 noundef zeroext 2)
  br label %bc_put_u8.exit

bb.i:                                             ; preds = %bb.g
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !458
  %i.z = add i64 %i.w, 1
  store i64 %i.z, ptr %i.v, align 8, !tbaa !457
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.w
  store i8 2, ptr %i.aa, align 1, !tbaa !35
  br label %bc_put_u8.exit
end_hunk_1
begin_hunk_2_@JS_WriteObjectRec:bb.a
  br i1 %switch.not, label %bb.cr, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lf, i64 8
  %i.li = load i32, ptr %i.lh, align 8, !tbaa !80
  %.not.i149 = icmp samesign ugt i64 %i.lg, -4611686018427387905
  br i1 %.not.i149, label %js_get_atom_index.exit, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.lj = getelementptr inbounds nuw i8, ptr %i.c, i64 1096
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !75
  %i.ll = lshr i64 %i.lg, 32
  %i.lm = trunc nuw i64 %i.ll to i32
  %i.ln = and i32 %i.lm, 268435455
  %i.lo = getelementptr inbounds nuw i8, ptr %i.c, i64 1080
  %i.lp = load i32, ptr %i.lo, align 8, !tbaa !74
  %i.lq = add nsw i32 %i.lp, -1
  %i.lr = and i32 %i.ln, %i.lq
  %i.ls = zext nneg i32 %i.lr to i64
  %i.lt = getelementptr inbounds nuw [4 x i8], ptr %i.lk, i64 %i.ls
  %i.lu = getelementptr inbounds nuw i8, ptr %i.c, i64 1104
  %i.lv = load ptr, ptr %i.lu, align 8, !tbaa !154
  br label %bb.co

bb.co:                                            ; preds = %bb.co, %bb.cn
  %.012.in.i = phi ptr [ %i.lt, %bb.cn ], [ %i.lw, %bb.co ]
  %.012.i = load i32, ptr %.012.in.i, align 4, !tbaa !8 ; 2 uses
  %.pn.i = zext i32 %.012.i to i64
  %.0.in.i = getelementptr inbounds nuw [8 x i8], ptr %i.lv, i64 %.pn.i
  %.0.i = load ptr, ptr %.0.in.i, align 8, !tbaa !155 ; 2 uses
  %.not13.i = icmp eq ptr %.0.i, %i.lf
  %i.lw = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  br i1 %.not13.i, label %js_get_atom_index.exit, label %bb.co, !llvm.loop !308

js_get_atom_index.exit:                           ; preds = %bb.co, %bb.cm
  %.1.i = phi i32 [ %i.li, %bb.cm ], [ %.012.i, %bb.co ]
  %i.lx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.lz = load i64, ptr %i.ly, align 8, !tbaa !456
  %i.ma = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.mb = load i64, ptr %i.ma, align 8, !tbaa !457 ; 3 uses
  %i.mc = icmp eq i64 %i.lz, %i.mb
  br i1 %i.mc, label %bb.cp, label %bb.cq, !prof !9

bb.cp:                                            ; preds = %js_get_atom_index.exit
  tail call fastcc void @__dbuf_putc(ptr noundef nonnull %i.lx, i8 noundef zeroext 23)
  br label %.thread166

bb.cq:                                            ; preds = %js_get_atom_index.exit
  %i.md = load ptr, ptr %i.lx, align 8, !tbaa !458
  %i.me = add i64 %i.mb, 1
  store i64 %i.me, ptr %i.ma, align 8, !tbaa !457
  %i.mf = getelementptr inbounds nuw i8, ptr %i.md, i64 %i.mb
  store i8 23, ptr %i.mf, align 1, !tbaa !35
  br label %.thread166

.thread166:                                       ; preds = %bb.cq, %bb.cp
  tail call fastcc void @bc_put_atom(ptr noundef %0, i32 noundef %.1.i)
  br label %bc_put_u8.exit

bb.cr:                                            ; preds = %bb.cl
  %i.mg = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowTypeError(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.218) ; 0 uses
  br label %.thread

bb.cs:                                            ; preds = %._crit_edge, %bb.c, %bb.ah, %bb.af
  %i.mh = phi ptr [ %.pre, %._crit_edge ], [ %i.a, %bb.c ], [ %i.a, %bb.ah ], [ %i.a, %bb.af ]
  %i.mi = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowInternalError(ptr noundef %i.mh, ptr noundef nonnull @.str.219, i32 noundef %i.i) ; 0 uses
  br label %.thread

.thread:                                          ; preds = %.thread156, %bb.bp, %bb.ao, %bb.aq, %JS_FreeValue.exit, %bb.ab, %bb.cr, %bb.ai, %bb.ag, %bb.cs
  br label %bc_put_u8.exit

bc_put_u8.exit:                                   ; preds = %bb.bp, %.thread152, %bc_put_u8.exit134, %.thread166, %JS_FreeValue.exit, %bb.x, %bb.w, %bb.s, %bb.r, %bb.l, %bb.k, %bb.i, %bb.h, %bb.f, %bb.e, %bc_put_u8.exit133, %bb.ag, %bb.ai, %JS_WriteBigInt.exit, %.thread, %bb.b
  %.0 = phi i32 [ -1, %bb.b ], [ -1, %.thread ], [ 0, %.thread166 ], [ 0, %bb.x ], [ 0, %JS_WriteBigInt.exit ], [ 0, %bb.w ], [ 0, %bb.ai ], [ 0, %bb.ag ], [ 0, %JS_FreeValue.exit ], [ 0, %bc_put_u8.exit133 ], [ 0, %bb.s ], [ 0, %bb.l ], [ 0, %bb.i ], [ 0, %bb.f ], [ 0, %bb.e ], [ 0, %bb.h ], [ 0, %bb.k ], [ 0, %bb.r ], [ 0, %bc_put_u8.exit134 ], [ 0, %.thread152 ], [ 0, %bb.bp ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define ptr @JS_WriteObject(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, i64 %2, i64 %3, i32 noundef %4) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call ptr @JS_WriteObject2(ptr noundef %0, ptr noundef %1, i64 %2, i64 %3, i32 noundef %4, ptr noundef null)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define { i64, i64 } @JS_ReadObject2(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, ptr nofree noundef writeonly captures(address_is_null) %4) local_unnamed_addr #2 {
bb.a:
  %5 = alloca %struct.BCReaderState, align 8      ; 24 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #49
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load i16, ptr %i.a, align 8, !tbaa !377
  %i.c = add i16 %i.b, 1
  store i16 %i.c, ptr %i.a, align 8, !tbaa !377
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4              ; 2 uses
  %i.f = trunc i64 %2 to i32
  %i.g = add i32 %i.e, %i.f
  %i.h = and i32 %i.g, 2147483647
  %i.i = and i32 %i.e, -2147483648
  %i.j = or disjoint i32 %i.h, %i.i
  store i32 %i.j, ptr %i.d, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.k, i8 0, i64 88, i1 false)
  store ptr %0, ptr %5, align 8, !tbaa !954
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %1, ptr %i.l, align 8, !tbaa !957
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  store ptr %i.m, ptr %i.n, align 8, !tbaa !958
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.p = trunc i32 %3 to i8                       ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 53
  %i.r = and i8 %i.p, 1
  store i8 %i.r, ptr %i.q, align 1, !tbaa !959
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 52
  %i.t = lshr i8 %i.p, 2
  %i.u = and i8 %i.t, 1
  store i8 %i.u, ptr %i.s, align 4, !tbaa !960
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 54
  %i.w = lshr i8 %i.p, 3
  %i.x = and i8 %i.w, 1
  store i8 %i.x, ptr %i.v, align 2, !tbaa !961
  %i.y = trunc i32 %3 to i1
  %spec.select = select i1 %i.y, i32 242, i32 1
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i32 %spec.select, ptr %i.z, align 8, !tbaa !962
  %i.aa = icmp slt i64 %2, 1
  br i1 %i.aa, label %bc_get_u8.exit.i, label %bb.b, !prof !9

bc_get_u8.exit.i:                                 ; preds = %bb.a
  %i.ab = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowSyntaxError(ptr noundef nonnull %0, ptr noundef nonnull @.str.226), !inline_history !963 ; 0 uses
  br label %JS_ReadObjectAtoms.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.ad = load i8, ptr %1, align 1, !tbaa !35     ; 2 uses
  %.not49.i = icmp eq i8 %i.ad, 27
  br i1 %.not49.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ae = zext i8 %i.ad to i32
  %i.af = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowSyntaxError(ptr noundef nonnull %0, ptr noundef nonnull @.str.221, i32 noundef %i.ae, i32 noundef 27), !inline_history !964 ; 0 uses
  br label %JS_ReadObjectAtoms.exit.thread

bb.d:                                             ; preds = %bb.b
  %i.ag = icmp samesign ult i64 %2, 5
  br i1 %i.ag, label %bc_get_u32.exit.i, label %bb.e, !prof !9

bc_get_u32.exit.i:                                ; preds = %bb.d
  %i.ah = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowSyntaxError(ptr noundef nonnull %0, ptr noundef nonnull @.str.226), !inline_history !965 ; 0 uses
  br label %JS_ReadObjectAtoms.exit.thread

bb.e:                                             ; preds = %bb.d
  %.val.i.i = load i32, ptr %i.ac, align 1        ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 5 ; 11 uses
  %.not51.i = icmp eq i32 %.val.i.i, -1
  br i1 %.not51.i, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %gepdiff = add nsw i64 %2, -5
  %i.aj = icmp sgt i64 %2, 9
  br i1 %i.aj, label %.lr.ph.i.i.preheader, label %._crit_edge.i.i

.lr.ph.i.i.preheader:                             ; preds = %bb.f
  %i.ak = add nsw i64 %2, -10                     ; 2 uses
  %i.al = lshr i64 %i.ak, 2
  %i.am = add nuw nsw i64 %i.al, 1                ; 2 uses
  %xtraiter = and i64 %i.am, 3                    ; 3 uses
  %i.an = icmp ult i64 %i.ak, 12
  br i1 %i.an, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i64 %i.am, 9223372036854775804
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %i.ao = phi i64 [ 4, %.lr.ph.i.i.preheader.new ], [ %i.be, %.lr.ph.i.i ] ; 5 uses
  %.028.i.i = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %i.az, %.lr.ph.i.i ]
  %.02027.i.i = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %i.bd, %.lr.ph.i.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.3, %.lr.ph.i.i ]
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.028.i.i
  %.val.i62.i = load i32, ptr %i.ap, align 1
  %i.aq = add i32 %.val.i62.i, %.02027.i.i
  %i.ar = mul i32 %i.aq, -1640562687
  %i.as = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ao
  %.val.i62.i.1 = load i32, ptr %i.as, align 1
  %i.at = add i32 %.val.i62.i.1, %i.ar
  %i.au = mul i32 %i.at, -1640562687
  %i.av = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ao
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  %.val.i62.i.2 = load i32, ptr %i.aw, align 1
  %i.ax = add i32 %.val.i62.i.2, %i.au
  %i.ay = mul i32 %i.ax, -1640562687
  %i.az = add nuw nsw i64 %i.ao, 12               ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ao
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %.val.i62.i.3 = load i32, ptr %i.bb, align 1
  %i.bc = add i32 %.val.i62.i.3, %i.ay
  %i.bd = mul i32 %i.bc, -1640562687              ; 3 uses
  %i.be = add nuw nsw i64 %i.ao, 16               ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3.not = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %._crit_edge.loopexit.i.i.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !948

._crit_edge.loopexit.i.i.unr-lcssa:               ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %._crit_edge.loopexit.i.i.unr-lcssa, %.lr.ph.i.i.preheader
  %.epil.init = phi i64 [ 4, %.lr.ph.i.i.preheader ], [ %i.be, %._crit_edge.loopexit.i.i.unr-lcssa ]
  %.028.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %i.az, %._crit_edge.loopexit.i.i.unr-lcssa ]
  %.02027.i.i.epil.init = phi i32 [ 0, %.lr.ph.i.i.preheader ], [ %i.bd, %._crit_edge.loopexit.i.i.unr-lcssa ]
  %lcmp.mod126 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod126)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %i.bf = phi i64 [ %i.bj, %.lr.ph.i.i.epil ], [ %.epil.init, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %.028.i.i.epil = phi i64 [ %i.bf, %.lr.ph.i.i.epil ], [ %.028.i.i.epil.init, %.lr.ph.i.i.epil.preheader ]
  %.02027.i.i.epil = phi i32 [ %i.bi, %.lr.ph.i.i.epil ], [ %.02027.i.i.epil.init, %.lr.ph.i.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.epil ], [ 0, %.lr.ph.i.i.epil.preheader ]
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.028.i.i.epil
  %.val.i62.i.epil = load i32, ptr %i.bg, align 1
  %i.bh = add i32 %.val.i62.i.epil, %.02027.i.i.epil
  %i.bi = mul i32 %i.bh, -1640562687              ; 2 uses
  %i.bj = add nuw nsw i64 %i.bf, 4
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.epil, !llvm.loop !966

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i.epil, %._crit_edge.loopexit.i.i.unr-lcssa
  %.lcssa124 = phi i32 [ %i.bd, %._crit_edge.loopexit.i.i.unr-lcssa ], [ %i.bi, %.lr.ph.i.i.epil ]
  %i.bk = add nsw i64 %2, -10
  %i.bl = and i64 %i.bk, -4
  %i.bm = add nuw nsw i64 %i.bl, 4
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.f
  %.020.lcssa.i.i = phi i32 [ 0, %bb.f ], [ %.lcssa124, %._crit_edge.loopexit.i.i ]
  %.0.lcssa.i.i = phi i64 [ 0, %bb.f ], [ %i.bm, %._crit_edge.loopexit.i.i ] ; 4 uses
  %i.bn = sub nsw i64 %gepdiff, %.0.lcssa.i.i
  switch i64 %i.bn, label %bc_csum.exit.i [
    i64 3, label %bb.g
    i64 2, label %bb.h
    i64 1, label %bb.i
  ]

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.0.lcssa.i.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 2
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !35
  %i.br = zext i8 %i.bq to i32
  %i.bs = shl nuw nsw i32 %i.br, 16
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i
  %.021.i.i = phi i32 [ %i.bs, %bb.g ], [ 0, %._crit_edge.i.i ]
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.0.lcssa.i.i
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 1
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !35
  %i.bw = zext i8 %i.bv to i32
  %i.bx = shl nuw nsw i32 %i.bw, 8
  %i.by = or disjoint i32 %i.bx, %.021.i.i
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge.i.i
  %i.bz = phi i32 [ %i.by, %bb.h ], [ 0, %._crit_edge.i.i ]
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.0.lcssa.i.i
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !35
  %i.cc = zext i8 %i.cb to i32
  %i.cd = or i32 %i.bz, %i.cc
  br label %bc_csum.exit.i

bc_csum.exit.i:                                   ; preds = %bb.i, %._crit_edge.i.i
  %i.ce = phi i32 [ 0, %._crit_edge.i.i ], [ %i.cd, %bb.i ]
  %i.cf = add i32 %i.ce, %.020.lcssa.i.i
  %i.cg = mul i32 %i.cf, -1640562687
  %.not52.i = icmp eq i32 %.val.i.i, %i.cg
  br i1 %.not52.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bc_csum.exit.i
  %i.ch = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowSyntaxError(ptr noundef nonnull %0, ptr noundef nonnull @.str.222), !inline_history !964 ; 0 uses
  br label %JS_ReadObjectAtoms.exit.thread

bb.k:                                             ; preds = %bc_csum.exit.i, %bb.e
  %i.ci = getelementptr inbounds nuw i8, ptr %5, i64 36 ; 3 uses
  %.not20.i.i.i.not = icmp eq i64 %2, 5
  br i1 %.not20.i.i.i.not, label %get_leb128.exit.thread.i.i, label %.lr.ph.i.i.i, !prof !967

bb.l:                                             ; preds = %.lr.ph.i.i.i
  %.not.i.i65.i = icmp samesign ugt i64 %2, 6
  br i1 %.not.i.i65.i, label %.lr.ph.i.i.i.1, label %get_leb128.exit.thread.i.i, !prof !968

.lr.ph.i.i.i.1:                                   ; preds = %bb.l
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 7 ; 2 uses
  %i.ck = load i8, ptr %i.dg, align 1, !tbaa !35  ; 2 uses
  %i.cl = and i8 %i.ck, 127
  %i.cm = zext nneg i8 %i.cl to i32
  %i.cn = shl nuw nsw i32 %i.cm, 7
  %i.co = or disjoint i32 %i.cn, %i.dj            ; 2 uses
  %.not18.i.i.i.1 = icmp sgt i8 %i.ck, -1
  br i1 %.not18.i.i.i.1, label %get_leb128.exit.i.i, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i.i.1
  %.not.i.i65.i.1.not = icmp eq i64 %2, 7
  br i1 %.not.i.i65.i.1.not, label %get_leb128.exit.thread.i.i, label %.lr.ph.i.i.i.2, !prof !969

.lr.ph.i.i.i.2:                                   ; preds = %bb.m
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.cq = load i8, ptr %i.cj, align 1, !tbaa !35  ; 2 uses
  %i.cr = and i8 %i.cq, 127
  %i.cs = zext nneg i8 %i.cr to i32
  %i.ct = shl nuw nsw i32 %i.cs, 14
  %i.cu = or disjoint i32 %i.ct, %i.co            ; 2 uses
  %.not18.i.i.i.2 = icmp sgt i8 %i.cq, -1
  br i1 %.not18.i.i.i.2, label %get_leb128.exit.i.i, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i.i.2
  %.not.i.i65.i.2 = icmp samesign ugt i64 %2, 8
  br i1 %.not.i.i65.i.2, label %.lr.ph.i.i.i.3, label %get_leb128.exit.thread.i.i, !prof !968

.lr.ph.i.i.i.3:                                   ; preds = %bb.n
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 9 ; 2 uses
  %i.cw = load i8, ptr %i.cp, align 1, !tbaa !35  ; 2 uses
  %i.cx = and i8 %i.cw, 127
  %i.cy = zext nneg i8 %i.cx to i32
  %i.cz = shl nuw nsw i32 %i.cy, 21
  %i.da = or disjoint i32 %i.cz, %i.cu            ; 2 uses
  %.not18.i.i.i.3 = icmp sgt i8 %i.cw, -1
  br i1 %.not18.i.i.i.3, label %get_leb128.exit.i.i, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i.i.i.3
  %.not.i.i65.i.3.not = icmp eq i64 %2, 9
  br i1 %.not.i.i65.i.3.not, label %get_leb128.exit.thread.i.i, label %.lr.ph.i.i.i.4, !prof !969

.lr.ph.i.i.i.4:                                   ; preds = %bb.o
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.dc = load i8, ptr %i.cv, align 1, !tbaa !35  ; 2 uses
  %i.dd = zext i8 %i.dc to i32
  %i.de = shl i32 %i.dd, 28
  %i.df = or disjoint i32 %i.de, %i.da
  %.not18.i.i.i.4 = icmp sgt i8 %i.dc, -1
  br i1 %.not18.i.i.i.4, label %get_leb128.exit.i.i, label %get_leb128.exit.thread.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.k
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 6 ; 2 uses
  %i.dh = load i8, ptr %i.ai, align 1, !tbaa !35  ; 2 uses
  %i.di = and i8 %i.dh, 127
  %i.dj = zext nneg i8 %i.di to i32               ; 2 uses
  %.not18.i.i.i = icmp sgt i8 %i.dh, -1
  br i1 %.not18.i.i.i, label %get_leb128.exit.i.i, label %bb.l

get_leb128.exit.thread.i.i:                       ; preds = %bb.l, %bb.m, %bb.n, %bb.o, %.lr.ph.i.i.i.4, %bb.k
  store i32 0, ptr %i.ci, align 4, !tbaa !8
  br label %bc_get_leb128.exit.i

get_leb128.exit.i.i:                              ; preds = %.lr.ph.i.i.i.4, %.lr.ph.i.i.i.3, %.lr.ph.i.i.i.2, %.lr.ph.i.i.i.1, %.lr.ph.i.i.i
  %.lcssa122 = phi ptr [ %i.dg, %.lr.ph.i.i.i ], [ %i.cj, %.lr.ph.i.i.i.1 ], [ %i.cp, %.lr.ph.i.i.i.2 ], [ %i.cv, %.lr.ph.i.i.i.3 ], [ %i.db, %.lr.ph.i.i.i.4 ]
  %.lcssa120 = phi i32 [ %i.dj, %.lr.ph.i.i.i ], [ %i.co, %.lr.ph.i.i.i.1 ], [ %i.cu, %.lr.ph.i.i.i.2 ], [ %i.da, %.lr.ph.i.i.i.3 ], [ %i.df, %.lr.ph.i.i.i.4 ] ; 5 uses
  store i32 %.lcssa120, ptr %i.ci, align 4, !tbaa !8
  %i.dk = ptrtoint ptr %.lcssa122 to i64
  %i.dl = ptrtoint ptr %i.ai to i64
  %i.dm = sub i64 %i.dk, %i.dl                    ; 2 uses
  %i.dn = and i64 %i.dm, 2147483648
  %.not.i.i = icmp eq i64 %i.dn, 0
  br i1 %.not.i.i, label %bb.p, label %bc_get_leb128.exit.i, !prof !970

bc_get_leb128.exit.i:                             ; preds = %get_leb128.exit.i.i, %get_leb128.exit.thread.i.i
  %i.do = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowSyntaxError(ptr noundef %0, ptr noundef nonnull @.str.226), !inline_history !971 ; 0 uses
  br label %JS_ReadObjectAtoms.exit.thread

bb.p:                                             ; preds = %get_leb128.exit.i.i
  %i.dp = and i64 %i.dm, 2147483647
  %i.dq = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.dp
  store ptr %i.dq, ptr %i.o, align 8, !tbaa !972
  %i.dr = icmp ugt i32 %.lcssa120, 1000000
  br i1 %i.dr, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ds = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowInternalError(ptr noundef %0, ptr noundef nonnull @.str.223, i32 noundef %.lcssa120), !inline_history !964 ; 0 uses
  br label %JS_ReadObjectAtoms.exit.thread

bb.r:                                             ; preds = %bb.p
  %.not54.i = icmp eq i32 %.lcssa120, 0
  br i1 %.not54.i, label %JS_ReadObjectAtoms.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dt = shl nuw nsw i32 %.lcssa120, 2
  %i.du = zext nneg i32 %i.dt to i64
  %i.dv = tail call ptr @js_mallocz(ptr noundef %0, i64 noundef %i.du), !inline_history !964 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 2 uses
  store ptr %i.dv, ptr %i.dw, align 8, !tbaa !973
  %.not55.i = icmp eq ptr %i.dv, null
  br i1 %.not55.i, label %JS_ReadObjectAtoms.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.s, %bb.ag
  %i.dx = phi ptr [ %i.fb, %bb.ag ], [ %0, %bb.s ] ; 5 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.ag ], [ 0, %bb.s ] ; 2 uses
  %i.dy = load ptr, ptr %i.n, align 8, !tbaa !958
  %i.dz = load ptr, ptr %i.o, align 8, !tbaa !972 ; 4 uses
  %i.ea = ptrtoint ptr %i.dy to i64               ; 2 uses
end_hunk_2
begin_hunk_3_@js_proxy_get_own_property_names:bb.a
  %i.ax = extractvalue { i64, i64 } %i.aw, 1      ; 2 uses
  %i.ay = and i64 %i.ax, 4294967295
  %i.az = icmp eq i64 %i.ay, 6
  br i1 %i.az, label %js_get_length32.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %bb.m, %bb.s
  %.pn.i = phi { i64, i64 } [ %i.br, %bb.s ], [ %i.aw, %bb.m ]
  %.sroa.6.0.i.i = phi i64 [ %i.bs, %bb.s ], [ %i.ax, %bb.m ] ; 2 uses
  %.sroa.017.0.in.i.i = extractvalue { i64, i64 } %.pn.i, 0 ; 6 uses
  %i.ba = trunc i64 %.sroa.6.0.i.i to i32
  switch i32 %i.ba, label %bb.s [
    i32 0, label %bb.n
    i32 1, label %bb.n
    i32 2, label %bb.n
    i32 3, label %bb.n
    i32 8, label %bb.o
  ]

bb.n:                                             ; preds = %.preheader.i, %.preheader.i, %.preheader.i, %.preheader.i
  %.sroa.017.0.extract.trunc.i.i = trunc i64 %.sroa.017.0.in.i.i to i32
  br label %js_get_length32.exit

bb.o:                                             ; preds = %.preheader.i
  %i.bb = lshr i64 %.sroa.017.0.in.i.i, 52
  %i.bc = trunc nuw nsw i64 %i.bb to i32
  %i.bd = and i32 %i.bc, 2047                     ; 3 uses
  %i.be = icmp samesign ult i32 %i.bd, 1054
  br i1 %i.be, label %bb.p, label %bb.q, !prof !195

bb.p:                                             ; preds = %bb.o
  %.sroa.017.0.i.le.i = bitcast i64 %.sroa.017.0.in.i.i to double
  %i.bf = fptosi double %.sroa.017.0.i.le.i to i32
  br label %js_get_length32.exit

bb.q:                                             ; preds = %bb.o
  %i.bg = icmp samesign ult i32 %i.bd, 1107
  br i1 %i.bg, label %bb.r, label %._crit_edge

bb.r:                                             ; preds = %bb.q
  %i.bh = and i64 %.sroa.017.0.in.i.i, 4503599627370495
  %i.bi = or disjoint i64 %i.bh, 4503599627370496
  %i.bj = add nsw i32 %i.bd, -1043
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = shl i64 %i.bi, %i.bk
  %i.bm = lshr i64 %i.bl, 32                      ; 2 uses
  %i.bn = trunc nuw i64 %i.bm to i32              ; 2 uses
  %i.bo = icmp slt i64 %.sroa.017.0.in.i.i, 0
  %i.bp = icmp ne i64 %i.bm, 2147483648
  %or.cond.i.i = select i1 %i.bo, i1 %i.bp, i1 false
  %i.bq = sub nsw i32 0, %i.bn
  %spec.select.i.i = select i1 %or.cond.i.i, i32 %i.bq, i32 %i.bn
  br label %js_get_length32.exit

bb.s:                                             ; preds = %.preheader.i
  %i.br = tail call fastcc { i64, i64 } @JS_ToNumberHintFree(ptr noundef nonnull %0, i64 %.sroa.017.0.in.i.i, i64 %.sroa.6.0.i.i, i32 noundef 0) #51, !inline_history !1554 ; 2 uses
  %i.bs = extractvalue { i64, i64 } %i.br, 1      ; 2 uses
  %i.bt = and i64 %i.bs, 4294967295
  %i.bu = icmp eq i64 %i.bt, 6
  br i1 %i.bu, label %js_get_length32.exit.thread, label %.preheader.i

js_get_length32.exit:                             ; preds = %bb.n, %bb.p, %bb.r
  %storemerge.i = phi i32 [ %spec.select.i.i, %bb.r ], [ %i.bf, %bb.p ], [ %.sroa.017.0.extract.trunc.i.i, %bb.n ]
  %i.bv = freeze i32 %storemerge.i                ; 7 uses
  %.not = icmp eq i32 %i.bv, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %js_get_length32.exit
  %i.bw = zext i32 %i.bv to i64                   ; 2 uses
  br label %bb.t

.preheader195:                                    ; preds = %bb.ah
  %.not342 = icmp eq i32 %i.bv, 1
  br i1 %.not342, label %._crit_edge, label %.lr.ph227.preheader

.lr.ph227.preheader:                              ; preds = %.preheader195
  %wide.trip.count276 = zext i32 %i.bv to i64
  br label %.lr.ph227

bb.t:                                             ; preds = %.lr.ph, %bb.ah
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.ah ] ; 7 uses
  %.0133223 = phi i32 [ 0, %.lr.ph ], [ %.2, %bb.ah ] ; 2 uses
  %.0138221 = phi ptr [ null, %.lr.ph ], [ %.2140, %bb.ah ] ; 5 uses
  %i.bx = tail call { i64, i64 } @JS_GetPropertyInt64(ptr noundef nonnull %0, i64 %i.as, i64 %i.at, i64 noundef %indvars.iv), !inline_history !512 ; 2 uses
  %i.by = extractvalue { i64, i64 } %i.bx, 0      ; 6 uses
  %i.bz = extractvalue { i64, i64 } %i.bx, 1      ; 6 uses
  %i.ca = and i64 %i.bz, 4294967295               ; 2 uses
  %i.cb = icmp eq i64 %i.ca, 6
  br i1 %i.cb, label %js_get_length32.exit.thread.loopexit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cc = trunc i64 %i.bz to i32                  ; 3 uses
  %i.cd = add i32 %i.cc, 7
  %i.ce = icmp ult i32 %i.cd, 2
  br i1 %i.ce, label %.thread, label %bb.v

.thread:                                          ; preds = %bb.u
  %i.cf = tail call fastcc i32 @JS_ValueToAtomInternal(ptr noundef nonnull %0, i64 %i.by, i64 %i.bz, i32 noundef 0), !inline_history !582
  br label %bb.aa

bb.v:                                             ; preds = %bb.u
  %i.cg = icmp eq i64 %i.ca, 4294967288
  br i1 %i.cg, label %bb.z, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ch = trunc nuw i64 %indvars.iv to i32
  %i.ci = load ptr, ptr %i.j, align 8, !tbaa !50
  %i.cj = icmp ugt i32 %i.cc, -10
  br i1 %i.cj, label %bb.x, label %JS_FreeValue.exit

bb.x:                                             ; preds = %bb.w
  %i.ck = inttoptr i64 %i.by to ptr
  %i.cl = getelementptr inbounds i8, ptr %i.ck, i64 -4 ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !8  ; 2 uses
  %i.cn = add nsw i32 %i.cm, -1
  store i32 %i.cn, ptr %i.cl, align 4, !tbaa !8
  %i.co = icmp slt i32 %i.cm, 2
  br i1 %i.co, label %bb.y, label %JS_FreeValue.exit

bb.y:                                             ; preds = %bb.x
  tail call fastcc void @js_free_value_rt(ptr noundef %i.ci, i64 %i.by, i64 %i.bz), !inline_history !143
  br label %JS_FreeValue.exit

JS_FreeValue.exit:                                ; preds = %bb.w, %bb.x, %bb.y
  %i.cp = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowTypeError(ptr noundef nonnull %0, ptr noundef nonnull @.str.326) ; 0 uses
  br label %js_get_length32.exit.thread

bb.z:                                             ; preds = %bb.v
  %i.cq = tail call fastcc i32 @JS_ValueToAtomInternal(ptr noundef nonnull %0, i64 %i.by, i64 %i.bz, i32 noundef 0), !inline_history !582 ; 2 uses
  %i.cr = icmp ugt i32 %i.cc, -10
  br i1 %i.cr, label %bb.aa, label %JS_FreeValue.exit161

bb.aa:                                            ; preds = %.thread, %bb.z
  %i.cs = phi i32 [ %i.cf, %.thread ], [ %i.cq, %bb.z ] ; 2 uses
  %i.ct = load ptr, ptr %i.j, align 8, !tbaa !50
  %i.cu = inttoptr i64 %i.by to ptr
  %i.cv = getelementptr inbounds i8, ptr %i.cu, i64 -4 ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !8  ; 2 uses
  %i.cx = add nsw i32 %i.cw, -1
  store i32 %i.cx, ptr %i.cv, align 4, !tbaa !8
  %i.cy = icmp slt i32 %i.cw, 2
  br i1 %i.cy, label %bb.ab, label %JS_FreeValue.exit161

bb.ab:                                            ; preds = %bb.aa
  tail call fastcc void @js_free_value_rt(ptr noundef %i.ct, i64 %i.by, i64 %i.bz), !inline_history !143
  br label %JS_FreeValue.exit161

JS_FreeValue.exit161:                             ; preds = %bb.z, %bb.aa, %bb.ab
  %i.cz = phi i32 [ %i.cq, %bb.z ], [ %i.cs, %bb.aa ], [ %i.cs, %bb.ab ] ; 3 uses
  %i.da = icmp eq i32 %i.cz, 0
  br i1 %i.da, label %js_get_length32.exit.thread.loopexit, label %bb.ac

bb.ac:                                            ; preds = %JS_FreeValue.exit161
  %i.db = zext i32 %.0133223 to i64               ; 3 uses
  %.not157 = icmp samesign ult i64 %indvars.iv, %i.db
  br i1 %.not157, label %bb.ah, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dc = lshr i64 %i.db, 1
  %i.dd = add nuw nsw i64 %i.dc, %i.db
  %i.de = tail call i64 @llvm.umax.i64(i64 %i.dd, i64 8)
  %i.df = tail call i64 @llvm.umin.i64(i64 %i.de, i64 %i.bw) ; 2 uses
  %i.dg = shl nuw nsw i64 %i.df, 3
  %i.dh = load ptr, ptr %i.j, align 8, !tbaa !50
  %i.di = tail call ptr @js_realloc_rt(ptr noundef %i.dh, ptr noundef %.0138221, i64 noundef %i.dg), !inline_history !346 ; 2 uses
  %.not.i163 = icmp eq ptr %i.di, null
  br i1 %.not.i163, label %bb.ae, label %JS_ThrowOutOfMemory.exit, !prof !9

bb.ae:                                            ; preds = %bb.ad
  %i.dj = trunc nuw i64 %indvars.iv to i32
  %i.dk = load ptr, ptr %i.j, align 8, !tbaa !50
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 1256 ; 3 uses
  %i.dm = load i8, ptr %i.dl, align 8, !tbaa !57, !range !58, !noundef !59
  %i.dn = trunc nuw i8 %i.dm to i1
  br i1 %i.dn, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  store i8 1, ptr %i.dl, align 8, !tbaa !57
  %i.do = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowInternalError(ptr noundef nonnull %0, ptr noundef nonnull @.str.46) #51, !inline_history !1464 ; 0 uses
  store i8 0, ptr %i.dl, align 8, !tbaa !57
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ae, %bb.af
  tail call void @JS_FreeAtom(ptr noundef nonnull %0, i32 noundef %i.cz)
  br label %js_get_length32.exit.thread

JS_ThrowOutOfMemory.exit:                         ; preds = %bb.ad
  %i.dp = trunc nuw i64 %i.df to i32
  br label %bb.ah

bb.ah:                                            ; preds = %JS_ThrowOutOfMemory.exit, %bb.ac
  %.2140 = phi ptr [ %i.di, %JS_ThrowOutOfMemory.exit ], [ %.0138221, %bb.ac ] ; 7 uses
  %.2 = phi i32 [ %i.dp, %JS_ThrowOutOfMemory.exit ], [ %.0133223, %bb.ac ]
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %.2140, i64 %indvars.iv ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 4
  store i32 %i.cz, ptr %i.dr, align 4, !tbaa !522
  store i8 0, ptr %i.dq, align 4, !tbaa !527
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.bw
  br i1 %exitcond.not, label %.preheader195, label %bb.t, !llvm.loop !1778

.lr.ph227:                                        ; preds = %.lr.ph227.preheader, %find_prop_key.exit.thread
  %indvars.iv273 = phi i64 [ 1, %.lr.ph227.preheader ], [ %indvars.iv.next274, %find_prop_key.exit.thread ] ; 4 uses
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %.2140, i64 %indvars.iv273
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 4
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !522
  %5 = trunc nuw i64 %indvars.iv273 to i32
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %.lr.ph.i, label %find_prop_key.exit.thread

.lr.ph.i:                                         ; preds = %.lr.ph227, %bb.ai
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.ai ], [ 0, %.lr.ph227 ] ; 2 uses
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %.2140, i64 %indvars.iv.i
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 4
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !522
  %i.dy = icmp eq i32 %i.dx, %i.du
  br i1 %i.dy, label %find_prop_key.exit, label %bb.ai

bb.ai:                                            ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %indvars.iv273
  br i1 %exitcond.not.i, label %find_prop_key.exit.thread, label %.lr.ph.i, !llvm.loop !1779

find_prop_key.exit:                               ; preds = %.lr.ph.i
  %i.dz = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowTypeError(ptr noundef nonnull %0, ptr noundef nonnull @.str.327) ; 0 uses
  br label %js_get_length32.exit.thread

find_prop_key.exit.thread:                        ; preds = %bb.ai, %.lr.ph227
  %indvars.iv.next274 = add nuw nsw i64 %indvars.iv273, 1 ; 2 uses
  %exitcond277.not = icmp eq i64 %indvars.iv.next274, %wide.trip.count276
  br i1 %exitcond277.not, label %._crit_edge, label %.lr.ph227, !llvm.loop !1780

._crit_edge:                                      ; preds = %find_prop_key.exit.thread, %bb.q, %js_get_length32.exit, %.preheader195
  %.0132.lcssa310 = phi i32 [ 0, %bb.q ], [ %i.bv, %.preheader195 ], [ 0, %js_get_length32.exit ], [ %i.bv, %find_prop_key.exit.thread ] ; 11 uses
  %.0138.lcssa308 = phi ptr [ null, %bb.q ], [ %.2140, %.preheader195 ], [ null, %js_get_length32.exit ], [ %.2140, %find_prop_key.exit.thread ] ; 9 uses
  %i.ea = load i64, ptr %.0.i.i, align 8
  %i.eb = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  %i.ec = load i64, ptr %i.eb, align 8
  %i.ed = tail call i32 @JS_IsExtensible(ptr noundef nonnull %0, i64 %i.ea, i64 %i.ec) ; 3 uses
  %i.ee = icmp slt i32 %i.ed, 0
  br i1 %i.ee, label %js_get_length32.exit.thread, label %bb.aj

bb.aj:                                            ; preds = %._crit_edge
  %i.ef = load i8, ptr %i.q, align 1, !tbaa !497
  %.not152 = icmp eq i8 %i.ef, 0
  br i1 %.not152, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.eg = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowTypeError(ptr noundef nonnull %0, ptr noundef nonnull @.str.110), !inline_history !1121 ; 0 uses
  br label %js_get_length32.exit.thread

bb.al:                                            ; preds = %bb.aj
  %i.eh = load ptr, ptr %.0.i.i, align 8, !tbaa !35
  %i.ei = call fastcc i32 @JS_GetOwnPropertyNamesInternal(ptr noundef nonnull %0, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, ptr noundef %i.eh, i32 noundef 3)
  %.not153 = icmp eq i32 %i.ei, 0
  br i1 %.not153, label %.preheader192, label %js_get_length32.exit.thread

.preheader192:                                    ; preds = %bb.al
  %i.ej = load i32, ptr %i.a, align 4, !tbaa !8   ; 3 uses
  %.not243 = icmp eq i32 %i.ej, 0
  br i1 %.not243, label %._crit_edge230, label %.lr.ph229

.lr.ph229:                                        ; preds = %.preheader192
  %i.ek = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.el = icmp ne i32 %i.ed, 0                    ; 3 uses
  %i.em = icmp sgt i32 %.0132.lcssa310, 0
  %wide.trip.count.i166 = zext nneg i32 %.0132.lcssa310 to i64
  %wide.trip.count286 = zext i32 %i.ej to i64     ; 2 uses
  br i1 %i.em, label %.lr.ph229.split.us, label %.lr.ph229.split

.lr.ph229.split.us:                               ; preds = %.lr.ph229, %bb.aq
  %indvars.iv283 = phi i64 [ %indvars.iv.next284, %bb.aq ], [ 0, %.lr.ph229 ] ; 2 uses
  %i.en = load i8, ptr %i.q, align 1, !tbaa !497
  %.not155.us = icmp eq i8 %i.en, 0
  br i1 %.not155.us, label %bb.am, label %.split.us

bb.am:                                            ; preds = %.lr.ph229.split.us
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #49
  %i.eo = load ptr, ptr %.0.i.i, align 8, !tbaa !35
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %indvars.iv283
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 4 ; 2 uses
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !522
  %i.es = call fastcc i32 @JS_GetOwnPropertyInternal2(ptr noundef nonnull %0, ptr noundef null, ptr noundef %i.eo, i32 noundef %i.er, ptr noundef nonnull %i.c), !inline_history !524 ; 2 uses
  %i.et = icmp slt i32 %i.es, 0
  br i1 %i.et, label %.loopexit193, label %bb.an

bb.an:                                            ; preds = %bb.am
  %.not156.us = icmp eq i32 %i.es, 0
  %i.eu = load i32, ptr %i.c, align 4
  %i.ev = trunc i32 %i.eu to i1
  %or.cond.us = and i1 %i.el, %i.ev
  %or.cond239 = select i1 %.not156.us, i1 true, i1 %or.cond.us
  br i1 %or.cond239, label %bb.aq, label %.lr.ph.preheader.i165.us

.lr.ph.preheader.i165.us:                         ; preds = %bb.an
  %i.ew = load i32, ptr %i.eq, align 4, !tbaa !522
  br label %.lr.ph.i167.us

.lr.ph.i167.us:                                   ; preds = %bb.ao, %.lr.ph.preheader.i165.us
  %indvars.iv.i168.us = phi i64 [ 0, %.lr.ph.preheader.i165.us ], [ %indvars.iv.next.i169.us, %bb.ao ] ; 2 uses
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %.0138.lcssa308, i64 %indvars.iv.i168.us ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 4
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !522
  %i.fa = icmp eq i32 %i.ez, %i.ew
  br i1 %i.fa, label %find_prop_key.exit172.us, label %bb.ao

bb.ao:                                            ; preds = %.lr.ph.i167.us
  %indvars.iv.next.i169.us = add nuw nsw i64 %indvars.iv.i168.us, 1 ; 2 uses
  %exitcond.not.i170.us = icmp eq i64 %indvars.iv.next.i169.us, %wide.trip.count.i166
  br i1 %exitcond.not.i170.us, label %find_prop_key.exit172.thread, label %.lr.ph.i167.us, !llvm.loop !1779

find_prop_key.exit172.us:                         ; preds = %.lr.ph.i167.us
  br i1 %i.el, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %find_prop_key.exit172.us
  store i8 1, ptr %i.ex, align 4, !tbaa !527
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %find_prop_key.exit172.us, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #49
  %indvars.iv.next284 = add nuw nsw i64 %indvars.iv283, 1 ; 2 uses
  %exitcond287.not = icmp eq i64 %indvars.iv.next284, %wide.trip.count286
  br i1 %exitcond287.not, label %._crit_edge230, label %.lr.ph229.split.us, !llvm.loop !1781

.lr.ph229.split:                                  ; preds = %.lr.ph229, %bb.at
  %indvars.iv278 = phi i64 [ %indvars.iv.next279, %bb.at ], [ 0, %.lr.ph229 ] ; 2 uses
  %i.fb = load i8, ptr %i.q, align 1, !tbaa !497
  %.not155 = icmp eq i8 %i.fb, 0
  br i1 %.not155, label %bb.ar, label %.split.us

.split.us:                                        ; preds = %.lr.ph229.split, %.lr.ph229.split.us
  %i.fc = call { i64, i64 } (ptr, ptr, ...) @JS_ThrowTypeError(ptr noundef nonnull %0, ptr noundef nonnull @.str.110), !inline_history !1121 ; 0 uses
  br label %js_get_length32.exit.thread

bb.ar:                                            ; preds = %.lr.ph229.split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #49
  %i.fd = load ptr, ptr %.0.i.i, align 8, !tbaa !35
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %indvars.iv278
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 4
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !522
  %i.fh = call fastcc i32 @JS_GetOwnPropertyInternal2(ptr noundef nonnull %0, ptr noundef null, ptr noundef %i.fd, i32 noundef %i.fg, ptr noundef nonnull %i.c), !inline_history !524 ; 2 uses
  %i.fi = icmp slt i32 %i.fh, 0
  br i1 %i.fi, label %.loopexit193, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %.not156 = icmp eq i32 %i.fh, 0
  %i.fj = load i32, ptr %i.c, align 4
  %i.fk = trunc i32 %i.fj to i1
  %or.cond = and i1 %i.el, %i.fk
  %or.cond241 = select i1 %.not156, i1 true, i1 %or.cond
  br i1 %or.cond241, label %bb.at, label %find_prop_key.exit172.thread

find_prop_key.exit172.thread:                     ; preds = %bb.as, %bb.ao
  %i.fl = call { i64, i64 } (ptr, ptr, ...) @JS_ThrowTypeError(ptr noundef nonnull %0, ptr noundef nonnull @.str.328) ; 0 uses
  br label %.loopexit193

.loopexit193:                                     ; preds = %bb.ar, %bb.am, %find_prop_key.exit172.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #49
  br label %js_get_length32.exit.thread

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #49
  %indvars.iv.next279 = add nuw nsw i64 %indvars.iv278, 1 ; 2 uses
  %exitcond282.not = icmp eq i64 %indvars.iv.next279, %wide.trip.count286
  br i1 %exitcond282.not, label %._crit_edge230, label %.lr.ph229.split, !llvm.loop !1781

._crit_edge230:                                   ; preds = %bb.at, %bb.aq, %.preheader192
  %.not154 = icmp eq i32 %i.ed, 0
  %i.fm = icmp ne i32 %.0132.lcssa310, 0
  %or.cond242 = and i1 %.not154, %i.fm
  br i1 %or.cond242, label %.lr.ph237.preheader, label %.loopexit

.lr.ph237.preheader:                              ; preds = %._crit_edge230
  %wide.trip.count291 = zext i32 %.0132.lcssa310 to i64
  br label %.lr.ph237

bb.au:                                            ; preds = %.lr.ph237
  %indvars.iv.next289 = add nuw nsw i64 %indvars.iv288, 1 ; 2 uses
  %exitcond292.not = icmp eq i64 %indvars.iv.next289, %wide.trip.count291
  br i1 %exitcond292.not, label %.loopexit, label %.lr.ph237, !llvm.loop !1782

.lr.ph237:                                        ; preds = %.lr.ph237.preheader, %bb.au
  %indvars.iv288 = phi i64 [ 0, %.lr.ph237.preheader ], [ %indvars.iv.next289, %bb.au ] ; 2 uses
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %.0138.lcssa308, i64 %indvars.iv288
  %i.fo = load i8, ptr %i.fn, align 4, !tbaa !527, !range !58, !noundef !59
  %i.fp = trunc nuw i8 %i.fo to i1
  br i1 %i.fp, label %bb.au, label %bb.av

bb.av:                                            ; preds = %.lr.ph237
  %i.fq = call { i64, i64 } (ptr, ptr, ...) @JS_ThrowTypeError(ptr noundef nonnull %0, ptr noundef nonnull @.str.329) ; 0 uses
  br label %js_get_length32.exit.thread

.loopexit:                                        ; preds = %bb.au, %._crit_edge230
  %i.fr = load ptr, ptr %i.b, align 8, !tbaa !518
  call fastcc void @js_free_prop_enum(ptr noundef nonnull %0, ptr noundef %i.fr, i32 noundef %i.ej)
  %i.fs = load ptr, ptr %i.j, align 8, !tbaa !50
  %i.ft = trunc i64 %i.at to i32
  %i.fu = icmp ugt i32 %i.ft, -10
  br i1 %i.fu, label %bb.aw, label %JS_FreeValue.exit173

bb.aw:                                            ; preds = %.loopexit
  %i.fv = inttoptr i64 %i.as to ptr
  %i.fw = getelementptr inbounds i8, ptr %i.fv, i64 -4 ; 2 uses
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !8  ; 2 uses
  %i.fy = add nsw i32 %i.fx, -1
  store i32 %i.fy, ptr %i.fw, align 4, !tbaa !8
  %i.fz = icmp slt i32 %i.fx, 2
  br i1 %i.fz, label %bb.ax, label %JS_FreeValue.exit173

bb.ax:                                            ; preds = %bb.aw
  call fastcc void @js_free_value_rt(ptr noundef %i.fs, i64 %i.as, i64 %i.at), !inline_history !143
  br label %JS_FreeValue.exit173

JS_FreeValue.exit173:                             ; preds = %.loopexit, %bb.aw, %bb.ax
  store ptr %.0138.lcssa308, ptr %1, align 8, !tbaa !518
  store i32 %.0132.lcssa310, ptr %2, align 4, !tbaa !8
  br label %JS_FreeValue.exit174

js_get_length32.exit.thread.loopexit:             ; preds = %bb.t, %JS_FreeValue.exit161
  %i.ga = trunc nuw i64 %indvars.iv to i32
  br label %js_get_length32.exit.thread

js_get_length32.exit.thread:                      ; preds = %bb.s, %js_get_length32.exit.thread.loopexit, %bb.ag, %bb.m, %.loopexit193, %bb.al, %._crit_edge, %bb.av, %.split.us, %bb.ak, %find_prop_key.exit, %JS_FreeValue.exit
  %.3141 = phi ptr [ %.0138.lcssa308, %bb.av ], [ null, %bb.m ], [ %.0138221, %bb.ag ], [ %.0138221, %js_get_length32.exit.thread.loopexit ], [ %.0138221, %JS_FreeValue.exit ], [ %.2140, %find_prop_key.exit ], [ %.0138.lcssa308, %._crit_edge ], [ %.0138.lcssa308, %bb.ak ], [ %.0138.lcssa308, %bb.al ], [ %.0138.lcssa308, %.split.us ], [ %.0138.lcssa308, %.loopexit193 ], [ null, %bb.s ]
  %.1 = phi i32 [ %.0132.lcssa310, %bb.av ], [ 0, %bb.m ], [ %i.dj, %bb.ag ], [ %i.ga, %js_get_length32.exit.thread.loopexit ], [ %i.ch, %JS_FreeValue.exit ], [ %i.bv, %find_prop_key.exit ], [ %.0132.lcssa310, %._crit_edge ], [ %.0132.lcssa310, %bb.ak ], [ %.0132.lcssa310, %bb.al ], [ %.0132.lcssa310, %.split.us ], [ %.0132.lcssa310, %.loopexit193 ], [ 0, %bb.s ]
  %i.gb = load ptr, ptr %i.b, align 8, !tbaa !518
  %i.gc = load i32, ptr %i.a, align 4, !tbaa !8
  call fastcc void @js_free_prop_enum(ptr noundef nonnull %0, ptr noundef %i.gb, i32 noundef %i.gc)
end_hunk_3
begin_hunk_4_@js_array_at:bb.a
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define internal { i64, i64 } @js_array_with(ptr noundef %0, i64 %1, i64 %2, i32 %3, ptr nofree noundef readonly captures(none) %4) #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #49
  %i.b = tail call { i64, i64 } @JS_ToObject(ptr noundef %0, i64 %1, i64 %2) ; 2 uses
  %i.c = extractvalue { i64, i64 } %i.b, 0        ; 6 uses
  %i.d = extractvalue { i64, i64 } %i.b, 1        ; 6 uses
  %i.e = call fastcc i32 @js_get_length64(ptr noundef %0, ptr noundef nonnull %i.a, i64 %i.c, i64 %i.d)
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.b, label %JS_ToInt64Sat.exit.thread131

bb.b:                                             ; preds = %bb.a
  %i.f = load i64, ptr %4, align 8                ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.h = load i64, ptr %i.g, align 8              ; 2 uses
  %i.i = trunc i64 %i.h to i32
  %i.j = icmp ugt i32 %i.i, -10
  br i1 %i.j, label %bb.c, label %js_dup.exit.i.preheader

bb.c:                                             ; preds = %bb.b
  %i.k = inttoptr i64 %i.f to ptr
  %i.l = getelementptr inbounds i8, ptr %i.k, i64 -4 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !8
  %i.n = add nsw i32 %i.m, 1
  store i32 %i.n, ptr %i.l, align 4, !tbaa !8
  br label %js_dup.exit.i.preheader

js_dup.exit.i.preheader:                          ; preds = %bb.c, %bb.b
  br label %js_dup.exit.i

js_dup.exit.i:                                    ; preds = %js_dup.exit.i.preheader, %bb.i
  %.sroa.012.0.in.i.i = phi i64 [ %i.v, %bb.i ], [ %i.f, %js_dup.exit.i.preheader ] ; 3 uses
  %.sroa.6.0.i.i = phi i64 [ %i.w, %bb.i ], [ %i.h, %js_dup.exit.i.preheader ] ; 2 uses
  %i.o = trunc i64 %.sroa.6.0.i.i to i32
  switch i32 %i.o, label %bb.i [
    i32 0, label %bb.d
    i32 1, label %bb.d
    i32 2, label %bb.d
    i32 3, label %bb.d
    i32 6, label %JS_ToInt64Sat.exit.thread131
    i32 8, label %bb.e
  ]

bb.d:                                             ; preds = %js_dup.exit.i, %js_dup.exit.i, %js_dup.exit.i, %js_dup.exit.i
  %sext.i.i = shl i64 %.sroa.012.0.in.i.i, 32
  %i.p = ashr exact i64 %sext.i.i, 32
  br label %bb.j

bb.e:                                             ; preds = %js_dup.exit.i
  %.sroa.012.0.le.i.i = bitcast i64 %.sroa.012.0.in.i.i to double ; 4 uses
  %i.q = fcmp uno double %.sroa.012.0.le.i.i, 0.000000e+00
  br i1 %i.q, label %.thread123, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = fcmp olt double %.sroa.012.0.le.i.i, f0xC3E0000000000000
  br i1 %i.r, label %.thread119, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = fcmp ult double %.sroa.012.0.le.i.i, f0x43E0000000000000
  br i1 %i.s, label %bb.h, label %.thread123.thread

bb.h:                                             ; preds = %bb.g
  %i.t = fptosi double %.sroa.012.0.le.i.i to i64
  br label %bb.j

bb.i:                                             ; preds = %js_dup.exit.i
  %i.u = tail call fastcc { i64, i64 } @JS_ToNumberHintFree(ptr noundef %0, i64 %.sroa.012.0.in.i.i, i64 %.sroa.6.0.i.i, i32 noundef 0), !inline_history !635 ; 2 uses
  %i.v = extractvalue { i64, i64 } %i.u, 0
  %i.w = extractvalue { i64, i64 } %i.u, 1        ; 2 uses
  %i.x = and i64 %i.w, 4294967295
  %i.y = icmp eq i64 %i.x, 6
  br i1 %i.y, label %JS_ToInt64Sat.exit.thread131, label %js_dup.exit.i

bb.j:                                             ; preds = %bb.d, %bb.h
  %.sink.i.i.ph = phi i64 [ %i.t, %bb.h ], [ %i.p, %bb.d ] ; 3 uses
  %i.z = icmp slt i64 %.sink.i.i.ph, 0
  br i1 %i.z, label %.thread119, label %.thread123

.thread119:                                       ; preds = %bb.f, %bb.j
  %.sink.i.i.ph121 = phi i64 [ %.sink.i.i.ph, %bb.j ], [ -9223372036854775808, %bb.f ]
  %i.aa = load i64, ptr %i.a, align 8, !tbaa !72
  %i.ab = add nsw i64 %i.aa, %.sink.i.i.ph121     ; 3 uses
  %i.ac = icmp slt i64 %i.ab, 0
  br i1 %i.ac, label %.thread123.thread, label %.thread123

.thread123:                                       ; preds = %bb.e, %bb.j, %.thread119
  %.0112125 = phi i64 [ %i.ab, %.thread119 ], [ %.sink.i.i.ph, %bb.j ], [ 0, %bb.e ] ; 13 uses
  %i.ad = load i64, ptr %i.a, align 8, !tbaa !72  ; 9 uses
  %.not85 = icmp slt i64 %.0112125, %i.ad
  br i1 %.not85, label %bb.k, label %.thread123.thread

.thread123.thread:                                ; preds = %bb.g, %.thread123, %.thread119
  %.0112126 = phi i64 [ %.0112125, %.thread123 ], [ %i.ab, %.thread119 ], [ 9223372036854775807, %bb.g ]
  %i.ae = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowRangeError(ptr noundef %0, ptr noundef nonnull @.str.773, i64 noundef %.0112126) ; 0 uses
  br label %JS_ToInt64Sat.exit.thread131

bb.k:                                             ; preds = %.thread123
  %i.af = tail call fastcc { i64, i64 } @js_allocate_fast_array(ptr noundef %0, i64 noundef %i.ad) ; 2 uses
  %i.ag = extractvalue { i64, i64 } %i.af, 0      ; 8 uses
  %i.ah = extractvalue { i64, i64 } %i.af, 1      ; 8 uses
  %i.ai = and i64 %i.ah, 4294967295
  %i.aj = icmp eq i64 %i.ai, 6
  br i1 %i.aj, label %JS_ToInt64Sat.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ak = inttoptr i64 %i.ag to ptr
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 56
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !35 ; 5 uses
  %i.an = and i64 %i.d, 4294967295
  %i.ao = icmp eq i64 %i.an, 4294967295
  br i1 %i.ao, label %bb.m, label %js_get_fast_array.exit.thread

bb.m:                                             ; preds = %bb.l
  %i.ap = inttoptr i64 %i.c to ptr                ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 18
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !117
  %i.as = icmp eq i16 %i.ar, 2
  br i1 %i.as, label %bb.n, label %js_get_fast_array.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.au = load i16, ptr %i.at, align 8
  %i.av = and i16 %i.au, 16
  %.not.i = icmp eq i16 %i.av, 0
  br i1 %.not.i, label %js_get_fast_array.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ap, i64 64
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !35
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ap, i64 56
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !35 ; 6 uses
  %i.ba = zext i32 %i.ax to i64
  %i.bb = icmp eq i64 %i.ad, %i.ba
  br i1 %i.bb, label %.preheader, label %js_get_fast_array.exit.thread

.preheader:                                       ; preds = %bb.o
  %.not159 = icmp eq i64 %.0112125, 0
  br i1 %.not159, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %xtraiter = and i64 %.0112125, 1
  %i.bc = icmp eq i64 %.0112125, 1
  br i1 %i.bc, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %.0112125, 9223372036854775806
  br label %.lr.ph

.lr.ph:                                           ; preds = %js_dup.exit.1, %.lr.ph.preheader.new
  %.0147 = phi ptr [ %i.am, %.lr.ph.preheader.new ], [ %i.ca, %js_dup.exit.1 ] ; 5 uses
  %.077146 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.bz, %js_dup.exit.1 ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %js_dup.exit.1 ]
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %i.az, i64 %.077146 ; 2 uses
  %i.be = load i64, ptr %i.bd, align 8            ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bg = load i64, ptr %i.bf, align 8            ; 2 uses
  %i.bh = trunc i64 %i.bg to i32
  %i.bi = icmp ugt i32 %i.bh, -10
  br i1 %i.bi, label %bb.p, label %js_dup.exit

bb.p:                                             ; preds = %.lr.ph
  %i.bj = inttoptr i64 %i.be to ptr
  %i.bk = getelementptr inbounds i8, ptr %i.bj, i64 -4 ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !8
  %i.bm = add nsw i32 %i.bl, 1
  store i32 %i.bm, ptr %i.bk, align 4, !tbaa !8
  br label %js_dup.exit

js_dup.exit:                                      ; preds = %.lr.ph, %bb.p
  store i64 %i.be, ptr %.0147, align 8, !tbaa !35
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0147, i64 8
  store i64 %i.bg, ptr %.sroa.47.0..sroa_idx, align 8, !tbaa !72
  %i.bn = getelementptr inbounds nuw i8, ptr %.0147, i64 16
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %i.az, i64 %.077146 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bq = load i64, ptr %i.bp, align 8            ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.bs = load i64, ptr %i.br, align 8            ; 2 uses
  %i.bt = trunc i64 %i.bs to i32
  %i.bu = icmp ugt i32 %i.bt, -10
  br i1 %i.bu, label %bb.q, label %js_dup.exit.1

bb.q:                                             ; preds = %js_dup.exit
  %i.bv = inttoptr i64 %i.bq to ptr
  %i.bw = getelementptr inbounds i8, ptr %i.bv, i64 -4 ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !8
  %i.by = add nsw i32 %i.bx, 1
  store i32 %i.by, ptr %i.bw, align 4, !tbaa !8
  br label %js_dup.exit.1

js_dup.exit.1:                                    ; preds = %bb.q, %js_dup.exit
  store i64 %i.bq, ptr %i.bn, align 8, !tbaa !35
  %.sroa.47.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %.0147, i64 24
  store i64 %i.bs, ptr %.sroa.47.0..sroa_idx.1, align 8, !tbaa !72
  %i.bz = add nuw nsw i64 %.077146, 2             ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.0147, i64 32 ; 3 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !2114

._crit_edge.loopexit.unr-lcssa:                   ; preds = %js_dup.exit.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.0147.epil.init = phi ptr [ %i.am, %.lr.ph.preheader ], [ %i.ca, %._crit_edge.loopexit.unr-lcssa ] ; 3 uses
  %.077146.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.bz, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod198 = trunc i64 %.0112125 to i1
  tail call void @llvm.assume(i1 %lcmp.mod198)
  %i.cb = getelementptr inbounds nuw [16 x i8], ptr %i.az, i64 %.077146.epil.init ; 2 uses
  %i.cc = load i64, ptr %i.cb, align 8            ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.ce = load i64, ptr %i.cd, align 8            ; 2 uses
  %i.cf = trunc i64 %i.ce to i32
  %i.cg = icmp ugt i32 %i.cf, -10
  br i1 %i.cg, label %bb.r, label %js_dup.exit.epil

bb.r:                                             ; preds = %.lr.ph.epil.preheader
  %i.ch = inttoptr i64 %i.cc to ptr
  %i.ci = getelementptr inbounds i8, ptr %i.ch, i64 -4 ; 2 uses
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !8
  %i.ck = add nsw i32 %i.cj, 1
  store i32 %i.ck, ptr %i.ci, align 4, !tbaa !8
  br label %js_dup.exit.epil

js_dup.exit.epil:                                 ; preds = %bb.r, %.lr.ph.epil.preheader
  store i64 %i.cc, ptr %.0147.epil.init, align 8, !tbaa !35
  %.sroa.47.0..sroa_idx.epil = getelementptr inbounds nuw i8, ptr %.0147.epil.init, i64 8
  store i64 %i.ce, ptr %.sroa.47.0..sroa_idx.epil, align 8, !tbaa !72
  %i.cl = getelementptr inbounds nuw i8, ptr %.0147.epil.init, i64 16
  br label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %._crit_edge.loopexit.unr-lcssa, %js_dup.exit.epil
  %.lcssa193 = phi ptr [ %i.ca, %._crit_edge.loopexit.unr-lcssa ], [ %i.cl, %js_dup.exit.epil ]
  %i.cm = add nuw nsw i64 %.0112125, 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %.077.lcssa = phi i64 [ 1, %.preheader ], [ %i.cm, %._crit_edge.loopexit ] ; 4 uses
  %.0.lcssa = phi ptr [ %i.am, %.preheader ], [ %.lcssa193, %._crit_edge.loopexit ] ; 5 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.co = load i64, ptr %i.cn, align 8            ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.cq = load i64, ptr %i.cp, align 8            ; 2 uses
  %i.cr = trunc i64 %i.cq to i32
  %i.cs = icmp ugt i32 %i.cr, -10
  br i1 %i.cs, label %bb.s, label %js_dup.exit90

bb.s:                                             ; preds = %._crit_edge
  %i.ct = inttoptr i64 %i.co to ptr
  %i.cu = getelementptr inbounds i8, ptr %i.ct, i64 -4 ; 2 uses
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !8
  %i.cw = add nsw i32 %i.cv, 1
  store i32 %i.cw, ptr %i.cu, align 4, !tbaa !8
  br label %js_dup.exit90

js_dup.exit90:                                    ; preds = %._crit_edge, %bb.s
  store i64 %i.co, ptr %.0.lcssa, align 8, !tbaa !35
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 8
  store i64 %i.cq, ptr %.sroa.45.0..sroa_idx, align 8, !tbaa !72
  %i.cx = icmp slt i64 %.077.lcssa, %i.ad
  br i1 %i.cx, label %.lr.ph152.preheader, label %JS_ToInt64Sat.exit.thread131

.lr.ph152.preheader:                              ; preds = %js_dup.exit90
  %i.cy = add i64 %i.ad, -2
  %i.cz = sub i64 %.0112125, %i.ad
  %i.da = and i64 %i.cz, 1
  %lcmp.mod200.not.not = icmp eq i64 %i.da, 0
  br i1 %lcmp.mod200.not.not, label %.lr.ph152.prol, label %.lr.ph152.prol.loopexit

.lr.ph152.prol:                                   ; preds = %.lr.ph152.preheader
  %.1.prol = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 16 ; 2 uses
  %i.db = getelementptr inbounds nuw [16 x i8], ptr %i.az, i64 %.077.lcssa ; 2 uses
  %i.dc = load i64, ptr %i.db, align 8            ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.de = load i64, ptr %i.dd, align 8            ; 2 uses
  %i.df = trunc i64 %i.de to i32
  %i.dg = icmp ugt i32 %i.df, -10
  br i1 %i.dg, label %bb.t, label %js_dup.exit93.prol

bb.t:                                             ; preds = %.lr.ph152.prol
  %i.dh = inttoptr i64 %i.dc to ptr
  %i.di = getelementptr inbounds i8, ptr %i.dh, i64 -4 ; 2 uses
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !8
  %i.dk = add nsw i32 %i.dj, 1
  store i32 %i.dk, ptr %i.di, align 4, !tbaa !8
  br label %js_dup.exit93.prol

js_dup.exit93.prol:                               ; preds = %bb.t, %.lr.ph152.prol
  store i64 %i.dc, ptr %.1.prol, align 8, !tbaa !35
  %.sroa.43.0..sroa_idx.prol = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 24
  store i64 %i.de, ptr %.sroa.43.0..sroa_idx.prol, align 8, !tbaa !72
  %.178.prol = add nuw nsw i64 %.077.lcssa, 1
  br label %.lr.ph152.prol.loopexit

.lr.ph152.prol.loopexit:                          ; preds = %js_dup.exit93.prol, %.lr.ph152.preheader
  %.178151.unr = phi i64 [ %.077.lcssa, %.lr.ph152.preheader ], [ %.178.prol, %js_dup.exit93.prol ]
  %.0.pn150.unr = phi ptr [ %.0.lcssa, %.lr.ph152.preheader ], [ %.1.prol, %js_dup.exit93.prol ]
  %i.dl = icmp eq i64 %i.cy, %.0112125
  br i1 %i.dl, label %JS_ToInt64Sat.exit.thread131, label %.lr.ph152

.lr.ph152:                                        ; preds = %.lr.ph152.prol.loopexit, %js_dup.exit93.1
  %.178151 = phi i64 [ %.178.1, %js_dup.exit93.1 ], [ %.178151.unr, %.lr.ph152.prol.loopexit ] ; 3 uses
  %.0.pn150 = phi ptr [ %.1.1, %js_dup.exit93.1 ], [ %.0.pn150.unr, %.lr.ph152.prol.loopexit ] ; 4 uses
  %.1 = getelementptr inbounds nuw i8, ptr %.0.pn150, i64 16
  %i.dm = getelementptr inbounds nuw [16 x i8], ptr %i.az, i64 %.178151 ; 2 uses
  %i.dn = load i64, ptr %i.dm, align 8            ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.dp = load i64, ptr %i.do, align 8            ; 2 uses
  %i.dq = trunc i64 %i.dp to i32
  %i.dr = icmp ugt i32 %i.dq, -10
  br i1 %i.dr, label %bb.u, label %js_dup.exit93

bb.u:                                             ; preds = %.lr.ph152
  %i.ds = inttoptr i64 %i.dn to ptr
  %i.dt = getelementptr inbounds i8, ptr %i.ds, i64 -4 ; 2 uses
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !8
  %i.dv = add nsw i32 %i.du, 1
  store i32 %i.dv, ptr %i.dt, align 4, !tbaa !8
  br label %js_dup.exit93

js_dup.exit93:                                    ; preds = %.lr.ph152, %bb.u
  store i64 %i.dn, ptr %.1, align 8, !tbaa !35
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0.pn150, i64 24
  store i64 %i.dp, ptr %.sroa.43.0..sroa_idx, align 8, !tbaa !72
  %.1.1 = getelementptr inbounds nuw i8, ptr %.0.pn150, i64 32 ; 2 uses
  %i.dw = getelementptr inbounds nuw [16 x i8], ptr %i.az, i64 %.178151 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  %i.dy = load i64, ptr %i.dx, align 8            ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dw, i64 24
  %i.ea = load i64, ptr %i.dz, align 8            ; 2 uses
  %i.eb = trunc i64 %i.ea to i32
  %i.ec = icmp ugt i32 %i.eb, -10
  br i1 %i.ec, label %bb.v, label %js_dup.exit93.1

bb.v:                                             ; preds = %js_dup.exit93
  %i.ed = inttoptr i64 %i.dy to ptr
  %i.ee = getelementptr inbounds i8, ptr %i.ed, i64 -4 ; 2 uses
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !8
  %i.eg = add nsw i32 %i.ef, 1
  store i32 %i.eg, ptr %i.ee, align 4, !tbaa !8
  br label %js_dup.exit93.1

js_dup.exit93.1:                                  ; preds = %bb.v, %js_dup.exit93
  store i64 %i.dy, ptr %.1.1, align 8, !tbaa !35
  %.sroa.43.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %.0.pn150, i64 40
  store i64 %i.ea, ptr %.sroa.43.0..sroa_idx.1, align 8, !tbaa !72
  %.178.1 = add nuw nsw i64 %.178151, 2           ; 2 uses
  %exitcond169.not.1 = icmp eq i64 %.178.1, %i.ad
  br i1 %exitcond169.not.1, label %JS_ToInt64Sat.exit.thread131, label %.lr.ph152, !llvm.loop !2115

js_get_fast_array.exit.thread:                    ; preds = %bb.m, %bb.n, %bb.l, %bb.o
  %.not160 = icmp eq i64 %.0112125, 0
  br i1 %.not160, label %._crit_edge156, label %.lr.ph155

.lr.ph155:                                        ; preds = %js_get_fast_array.exit.thread, %bb.w
  %.2154 = phi ptr [ %i.ek, %bb.w ], [ %i.am, %js_get_fast_array.exit.thread ] ; 2 uses
  %.279153 = phi i64 [ %i.ej, %bb.w ], [ 0, %js_get_fast_array.exit.thread ] ; 2 uses
  %i.eh = tail call fastcc i32 @JS_TryGetPropertyInt64(ptr noundef %0, i64 %i.c, i64 %i.d, i64 noundef %.279153, ptr noundef %.2154)
  %i.ei = icmp eq i32 %i.eh, -1
  br i1 %i.ei, label %JS_ToInt64Sat.exit, label %bb.w

bb.w:                                             ; preds = %.lr.ph155
  %i.ej = add nuw nsw i64 %.279153, 1             ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.2154, i64 16 ; 2 uses
  %exitcond170.not = icmp eq i64 %i.ej, %.0112125
  br i1 %exitcond170.not, label %._crit_edge156, label %.lr.ph155, !llvm.loop !2116

._crit_edge156:                                   ; preds = %bb.w, %js_get_fast_array.exit.thread
  %.2.lcssa = phi ptr [ %i.am, %js_get_fast_array.exit.thread ], [ %i.ek, %bb.w ] ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.em = load i64, ptr %i.el, align 8            ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.eo = load i64, ptr %i.en, align 8            ; 2 uses
  %i.ep = trunc i64 %i.eo to i32
  %i.eq = icmp ugt i32 %i.ep, -10
  br i1 %i.eq, label %bb.x, label %js_dup.exit96

bb.x:                                             ; preds = %._crit_edge156
  %i.er = inttoptr i64 %i.em to ptr
  %i.es = getelementptr inbounds i8, ptr %i.er, i64 -4 ; 2 uses
  %i.et = load i32, ptr %i.es, align 4, !tbaa !8
  %i.eu = add nsw i32 %i.et, 1
  store i32 %i.eu, ptr %i.es, align 4, !tbaa !8
  br label %js_dup.exit96

js_dup.exit96:                                    ; preds = %._crit_edge156, %bb.x
  store i64 %i.em, ptr %.2.lcssa, align 8, !tbaa !35
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.2.lcssa, i64 8
  store i64 %i.eo, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !72
  %.380187 = add nuw nsw i64 %.0112125, 1         ; 2 uses
  %i.ev = icmp slt i64 %.380187, %i.ad
  br i1 %i.ev, label %.lr.ph190, label %JS_ToInt64Sat.exit.thread131

bb.y:                                             ; preds = %.lr.ph190
  %.380 = add nuw nsw i64 %.380189, 1             ; 2 uses
  %i.ew = icmp slt i64 %.380, %i.ad
end_hunk_4
begin_hunk_5_@js_uint8array_from_base64:bb.a
  %.sroa.9.0 = phi i64 [ 0, %bb.c ], [ 0, %bb.g ], [ 0, %bb.i ], [ 0, %bb.y ], [ %i.db, %bb.z ], [ 0, %bb.l ], [ 0, %bb.b ], [ 0, %bb.f ], [ 0, %bb.h ], [ 0, %bb.k ], [ 0, %bb.u ], [ 0, %bb.v ]
  %.sroa.14.0 = phi i64 [ 6, %bb.c ], [ 6, %bb.g ], [ 6, %bb.i ], [ 6, %bb.y ], [ %i.dc, %bb.z ], [ 6, %bb.l ], [ 6, %bb.b ], [ 6, %bb.f ], [ 6, %bb.h ], [ 6, %bb.k ], [ 6, %bb.u ], [ 6, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #49
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.9.0, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.14.0, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define internal { i64, i64 } @js_uint8array_from_hex(ptr noundef %0, i64 %1, i64 %2, i32 %3, ptr nofree noundef readonly captures(none) %4) #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #49
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %i.d = trunc i64 %i.c to i32
  %i.e = add i32 %i.d, 7
  %i.f = icmp ult i32 %i.e, 2
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowTypeError(ptr noundef %0, ptr noundef nonnull @.str.1131) ; 0 uses
  br label %JS_FreeCString.exit

bb.c:                                             ; preds = %bb.a
  %i.h = load i64, ptr %4, align 8
  %i.i = call ptr @JS_ToCStringLen2(ptr noundef %0, ptr noundef nonnull %i.a, i64 %i.h, i64 %i.c, i1 noundef zeroext false), !inline_history !321 ; 6 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %JS_FreeCString.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load i64, ptr %i.a, align 8, !tbaa !72   ; 4 uses
  %i.k = lshr i64 %i.j, 1                         ; 2 uses
  %i.l = add nuw i64 %i.k, 1                      ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !50   ; 7 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 40 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 48 ; 3 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !10
  %i.r = add i64 %i.q, %i.l
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  %i.t = load i64, ptr %i.s, align 8, !tbaa !14
  %i.u = add i64 %i.t, -1
  %i.v = icmp ugt i64 %i.r, %i.u
  br i1 %i.v, label %bb.j, label %bb.e, !prof !9

bb.e:                                             ; preds = %bb.d
  %i.w = call fastcc ptr @js_arena_malloc(ptr noundef nonnull %i.n, i64 noundef %i.l), !inline_history !63 ; 7 uses
  %.not.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i, label %._crit_edge.i, label %bb.f

._crit_edge.i:                                    ; preds = %bb.e
  %.pre.i = load ptr, ptr %i.m, align 8, !tbaa !50
  br label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.x = load i64, ptr %i.o, align 8, !tbaa !34
  %i.y = add i64 %i.x, 1
  store i64 %i.y, ptr %i.o, align 8, !tbaa !34
  %i.z = getelementptr inbounds i8, ptr %i.w, i64 -8 ; 3 uses
  %i.aa = load i16, ptr %i.z, align 8, !tbaa !35
  %i.ab = icmp eq i16 %i.aa, -1
  br i1 %i.ab, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %i.n, i64 1064
  %i.ad = icmp eq ptr %i.z, %i.ac
  br i1 %i.ad, label %bb.n, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !36
  %i.ag = call i64 %i.af(ptr noundef nonnull %i.z) #49, !inline_history !64 ; 2 uses
  %.not15.i.i.i = icmp eq i64 %i.ag, 0
  %i.ah = select i1 %.not15.i.i.i, i64 8, i64 %i.ag
  br label %bb.n

bb.i:                                             ; preds = %bb.f
  %i.ai = getelementptr inbounds i8, ptr %i.w, i64 -6
  %i.aj = load i8, ptr %i.ai, align 2, !tbaa !35
  %i.ak = zext i8 %i.aj to i64
  %i.al = getelementptr inbounds nuw [2 x i8], ptr @arena_block_sizes, i64 %i.ak
  %i.am = load i16, ptr %i.al, align 2, !tbaa !38
  %i.an = zext i16 %i.am to i64
  br label %bb.n

bb.j:                                             ; preds = %._crit_edge.i, %bb.d
  %i.ao = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.n, %bb.d ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 1256 ; 3 uses
  %i.aq = load i8, ptr %i.ap, align 8, !tbaa !57, !range !58, !noundef !59
  %i.ar = trunc nuw i8 %i.aq to i1
  br i1 %i.ar, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i8 1, ptr %i.ap, align 8, !tbaa !57
  %i.as = call { i64, i64 } (ptr, ptr, ...) @JS_ThrowInternalError(ptr noundef nonnull %0, ptr noundef nonnull @.str.46) #51, !inline_history !65 ; 0 uses
  store i8 0, ptr %i.ap, align 8, !tbaa !57
  %.pre = load ptr, ptr %i.m, align 8, !tbaa !50
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.at = phi ptr [ %.pre, %bb.k ], [ %i.ao, %bb.j ]
  %i.au = getelementptr inbounds i8, ptr %i.i, i64 -28 ; 2 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !8  ; 2 uses
  %i.aw = add nsw i32 %i.av, -1
  store i32 %i.aw, ptr %i.au, align 4, !tbaa !8
  %i.ax = icmp slt i32 %i.av, 2
  br i1 %i.ax, label %bb.m, label %JS_FreeCString.exit

bb.m:                                             ; preds = %bb.l
  %i.ay = getelementptr inbounds i8, ptr %i.i, i64 -24
  %i.az = ptrtoint ptr %i.ay to i64
  call fastcc void @js_free_value_rt(ptr noundef %i.at, i64 %i.az, i64 -7), !inline_history !1076
  br label %JS_FreeCString.exit

bb.n:                                             ; preds = %bb.i, %bb.h, %bb.g
  %.011.i.i.i = phi i64 [ 8, %bb.g ], [ %i.ah, %bb.h ], [ %i.an, %bb.i ]
  %i.ba = load i64, ptr %i.p, align 8, !tbaa !10
  %i.bb = add i64 %i.ba, %.011.i.i.i
  store i64 %i.bb, ptr %i.p, align 8, !tbaa !10
  %i.bc = and i64 %i.j, 1
  %.not.i = icmp eq i64 %i.bc, 0
  br i1 %.not.i, label %.preheader.i, label %.loopexit

.preheader.i:                                     ; preds = %bb.n
  %.not43 = icmp eq i64 %i.j, 0
  br i1 %.not43, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.w
  %.02444.i = phi i64 [ %i.cc, %bb.w ], [ 0, %.preheader.i ] ; 2 uses
  %.02543.i = phi i64 [ %i.ca, %bb.w ], [ 0, %.preheader.i ] ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.i, i64 %.02444.i ; 2 uses
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !35  ; 4 uses
  %i.bf = zext i8 %i.be to i32                    ; 3 uses
  %i.bg = add i8 %i.be, -48
  %or.cond.i.i = icmp ult i8 %i.bg, 10
  br i1 %or.cond.i.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.lr.ph.i
  %i.bh = add nsw i32 %i.bf, -48
  br label %u8a_hex_nibble.exit.i

bb.p:                                             ; preds = %.lr.ph.i
  %i.bi = add i8 %i.be, -97
  %or.cond5.i.i = icmp ult i8 %i.bi, 6
  br i1 %or.cond5.i.i, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bj = add nsw i32 %i.bf, -87
  br label %u8a_hex_nibble.exit.i

bb.r:                                             ; preds = %bb.p
  %i.bk = add i8 %i.be, -65
  %or.cond8.i.i = icmp ult i8 %i.bk, 6
  %i.bl = add nsw i32 %i.bf, -55
  %spec.select.i.i = select i1 %or.cond8.i.i, i32 %i.bl, i32 -1
  br label %u8a_hex_nibble.exit.i

u8a_hex_nibble.exit.i:                            ; preds = %bb.r, %bb.q, %bb.o
  %.0.i.i = phi i32 [ %i.bh, %bb.o ], [ %i.bj, %bb.q ], [ %spec.select.i.i, %bb.r ] ; 2 uses
  %i.bm = getelementptr i8, ptr %i.bd, i64 1
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !35  ; 4 uses
  %i.bo = zext i8 %i.bn to i32                    ; 3 uses
  %i.bp = add i8 %i.bn, -48
  %or.cond.i33.i = icmp ult i8 %i.bp, 10
  br i1 %or.cond.i33.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %u8a_hex_nibble.exit.i
  %i.bq = add nsw i32 %i.bo, -48
  br label %u8a_hex_nibble.exit38.i

bb.t:                                             ; preds = %u8a_hex_nibble.exit.i
  %i.br = add i8 %i.bn, -97
  %or.cond5.i34.i = icmp ult i8 %i.br, 6
  br i1 %or.cond5.i34.i, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bs = add nsw i32 %i.bo, -87
  br label %u8a_hex_nibble.exit38.i

bb.v:                                             ; preds = %bb.t
  %i.bt = add i8 %i.bn, -65
  %or.cond8.i35.i = icmp ult i8 %i.bt, 6
  %i.bu = add nsw i32 %i.bo, -55
  %spec.select.i36.i = select i1 %or.cond8.i35.i, i32 %i.bu, i32 -1
  br label %u8a_hex_nibble.exit38.i

u8a_hex_nibble.exit38.i:                          ; preds = %bb.v, %bb.u, %bb.s
  %.0.i37.i = phi i32 [ %i.bq, %bb.s ], [ %i.bs, %bb.u ], [ %spec.select.i36.i, %bb.v ] ; 2 uses
  %i.bv = icmp sgt i32 %.0.i.i, -1
  %i.bw = icmp sgt i32 %.0.i37.i, -1
  %or.cond.not.i = select i1 %i.bv, i1 %i.bw, i1 false ; 3 uses
  br i1 %or.cond.not.i, label %bb.w, label %.loopexit

bb.w:                                             ; preds = %u8a_hex_nibble.exit38.i
  %i.bx = shl nuw nsw i32 %.0.i.i, 4
  %i.by = or i32 %.0.i37.i, %i.bx
  %i.bz = trunc i32 %i.by to i8
  %i.ca = add nuw i64 %.02543.i, 1                ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.w, i64 %.02543.i
  store i8 %i.bz, ptr %i.cb, align 1, !tbaa !35
  %i.cc = add i64 %.02444.i, 2                    ; 2 uses
  %i.cd = icmp ult i64 %i.cc, %i.j
  %i.ce = icmp samesign ult i64 %.02543.i, %i.k
  %i.cf = select i1 %i.cd, i1 %i.ce, i1 false
  br i1 %i.cf, label %.lr.ph.i, label %.loopexit

.loopexit:                                        ; preds = %u8a_hex_nibble.exit38.i, %bb.w, %bb.n, %.preheader.i
  %.not35 = phi i1 [ true, %.preheader.i ], [ false, %bb.n ], [ %or.cond.not.i, %bb.w ], [ %or.cond.not.i, %u8a_hex_nibble.exit38.i ]
  %.2.i = phi i64 [ 0, %.preheader.i ], [ 0, %bb.n ], [ 0, %u8a_hex_nibble.exit38.i ], [ %i.ca, %bb.w ]
  %i.cg = load ptr, ptr %i.m, align 8, !tbaa !50
  %i.ch = getelementptr inbounds i8, ptr %i.i, i64 -28 ; 2 uses
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !8  ; 2 uses
  %i.cj = add nsw i32 %i.ci, -1
  store i32 %i.cj, ptr %i.ch, align 4, !tbaa !8
  %i.ck = icmp slt i32 %i.ci, 2
  br i1 %i.ck, label %bb.x, label %JS_FreeCString.exit39

bb.x:                                             ; preds = %.loopexit
  %i.cl = getelementptr inbounds i8, ptr %i.i, i64 -24
  %i.cm = ptrtoint ptr %i.cl to i64
  call fastcc void @js_free_value_rt(ptr noundef %i.cg, i64 %i.cm, i64 -7), !inline_history !1076
  br label %JS_FreeCString.exit39

JS_FreeCString.exit39:                            ; preds = %.loopexit, %bb.x
  br i1 %.not35, label %bb.z, label %bb.y

bb.y:                                             ; preds = %JS_FreeCString.exit39
  %i.cn = load ptr, ptr %i.m, align 8, !tbaa !50
  call void @js_free_rt(ptr noundef %i.cn, ptr noundef nonnull %i.w)
  %i.co = call { i64, i64 } (ptr, ptr, ...) @JS_ThrowSyntaxError(ptr noundef nonnull %0, ptr noundef nonnull @.str.1144) ; 0 uses
  br label %JS_FreeCString.exit

bb.z:                                             ; preds = %JS_FreeCString.exit39
  %i.cp = call fastcc { i64, i64 } @js_array_buffer_constructor3(ptr noundef nonnull %0, i64 0, i64 3, i64 noundef %.2.i, ptr noundef null, i32 noundef 20, ptr noundef nonnull %i.w, ptr noundef nonnull @js_array_buffer_realloc, ptr noundef null, i1 noundef zeroext true) ; 2 uses
  %i.cq = extractvalue { i64, i64 } %i.cp, 0
  %i.cr = extractvalue { i64, i64 } %i.cp, 1
  %i.cs = call fastcc { i64, i64 } @js_new_uint8array(ptr noundef nonnull %0, i64 %i.cq, i64 %i.cr) ; 2 uses
  %i.ct = extractvalue { i64, i64 } %i.cs, 0
  %i.cu = extractvalue { i64, i64 } %i.cs, 1
  %i.cv = load ptr, ptr %i.m, align 8, !tbaa !50
  call void @js_free_rt(ptr noundef %i.cv, ptr noundef nonnull %i.w)
  br label %JS_FreeCString.exit

JS_FreeCString.exit:                              ; preds = %bb.m, %bb.l, %bb.c, %bb.z, %bb.y, %bb.b
  %.sroa.6.0 = phi i64 [ 0, %bb.y ], [ %i.ct, %bb.z ], [ 0, %bb.c ], [ 0, %bb.b ], [ 0, %bb.l ], [ 0, %bb.m ]
  %.sroa.8.0 = phi i64 [ 6, %bb.y ], [ %i.cu, %bb.z ], [ 6, %bb.c ], [ 6, %bb.b ], [ 6, %bb.l ], [ 6, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #49
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.6.0, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.8.0, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define internal { i64, i64 } @js_btoa(ptr noundef %0, i64 %1, i64 %2, i32 %3, ptr nofree noundef readonly captures(none) %4) #2 {
bb.a:
  %i.a = load i64, ptr %4, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = tail call fastcc { i64, i64 } @JS_ToStringInternal(ptr noundef %0, i64 %i.a, i64 %i.c, i32 noundef 0), !inline_history !335 ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0        ; 2 uses
  %i.f = extractvalue { i64, i64 } %i.d, 1        ; 3 uses
  %i.g = and i64 %i.f, 4294967295
  %i.h = icmp eq i64 %i.g, 6
  br i1 %i.h, label %JS_FreeValue.exit, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.i = inttoptr i64 %i.e to ptr                 ; 7 uses
  %i.j = load i64, ptr %i.i, align 8
  %.fr = freeze i64 %i.j                          ; 5 uses
  %i.k = and i64 %.fr, 2147483647                 ; 6 uses
  %i.l = and i64 %.fr, 2147483648
  %.not = icmp eq i64 %i.l, 0
  br i1 %.not, label %bb.c, label %bb.h, !prof !195

bb.c:                                             ; preds = %bb.b
  %i.m = lshr i64 %.fr, 60
  %i.n = trunc nuw nsw i64 %i.m to i32
  %i.o = and i32 %i.n, 3
  switch i32 %i.o, label %default.unreachable [
    i32 0, label %bb.d
    i32 1, label %bb.e
    i32 2, label %bb.f
    i32 3, label %bb.g
  ]

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  br label %str8.exit

bb.e:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !292
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.u = load i32, ptr %i.t, align 8, !tbaa !294
  %i.v = zext i32 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.v
  br label %str8.exit

bb.f:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !71
  br label %str8.exit

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.g:                                             ; preds = %bb.c
  tail call void @abort() #50
  unreachable

bb.h:                                             ; preds = %bb.b
  %i.z = tail call fastcc ptr @str16(ptr noundef nonnull %i.i) ; 5 uses
  %i.aa = tail call i64 @llvm.umax.i64(i64 %i.k, i64 1)
  %i.ab = tail call ptr @js_malloc(ptr noundef %0, i64 noundef %i.aa) ; 13 uses
  %.not68 = icmp eq ptr %i.ab, null
  br i1 %.not68, label %.thread78.thread, label %.preheader, !prof !9

.preheader:                                       ; preds = %bb.h
  %.not97 = icmp eq i64 %i.k, 0
  br i1 %.not97, label %str8.exit.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %xtraiter = and i64 %.fr, 3                     ; 3 uses
  %i.ac = icmp samesign ult i64 %i.k, 4
  br i1 %i.ac, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %.fr, 2147483644
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.i, %.lr.ph.preheader.new
  %.06396 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.ba, %bb.i ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %bb.i ]
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %i.z, i64 %.06396
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !38 ; 2 uses
  %i.af = icmp ult i16 %i.ae, 256
  br i1 %i.af, label %.lr.ph.1, label %.thread78.thread88, !prof !195

.lr.ph.1:                                         ; preds = %.lr.ph
  %i.ag = trunc nuw i16 %i.ae to i8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.06396
  store i8 %i.ag, ptr %i.ah, align 1, !tbaa !35
  %i.ai = or disjoint i64 %.06396, 1              ; 2 uses
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %i.z, i64 %i.ai
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !38 ; 2 uses
  %i.al = icmp ult i16 %i.ak, 256
  br i1 %i.al, label %.lr.ph.2, label %.thread78.thread88, !prof !195

.lr.ph.2:                                         ; preds = %.lr.ph.1
  %i.am = trunc nuw i16 %i.ak to i8
  %i.an = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ai
  store i8 %i.am, ptr %i.an, align 1, !tbaa !35
  %i.ao = or disjoint i64 %.06396, 2              ; 2 uses
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr %i.z, i64 %i.ao
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !38 ; 2 uses
  %i.ar = icmp ult i16 %i.aq, 256
  br i1 %i.ar, label %.lr.ph.3, label %.thread78.thread88, !prof !195

.lr.ph.3:                                         ; preds = %.lr.ph.2
  %i.as = trunc nuw i16 %i.aq to i8
  %i.at = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ao
  store i8 %i.as, ptr %i.at, align 1, !tbaa !35
  %i.au = or disjoint i64 %.06396, 3              ; 2 uses
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %i.z, i64 %i.au
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !38 ; 2 uses
  %i.ax = icmp ult i16 %i.aw, 256
  br i1 %i.ax, label %bb.i, label %.thread78.thread88, !prof !195

bb.i:                                             ; preds = %.lr.ph.3
  %i.ay = trunc nuw i16 %i.aw to i8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.au
  store i8 %i.ay, ptr %i.az, align 1, !tbaa !35
  %i.ba = add nuw nsw i64 %.06396, 4              ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %str8.exit.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !2275

.thread78.thread88:                               ; preds = %.lr.ph.epil, %.lr.ph, %.lr.ph.1, %.lr.ph.2, %.lr.ph.3
  %i.bb = tail call { i64, i64 } (ptr, ptr, ptr, ...) @JS_ThrowDOMException(ptr noundef %0, ptr noundef nonnull @.str.1080, ptr noundef nonnull @.str.1151) ; 0 uses
  br label %bb.s

str8.exit.loopexit.unr-lcssa:                     ; preds = %bb.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %str8.exit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %str8.exit.loopexit.unr-lcssa, %.lr.ph.preheader
  %.06396.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.ba, %str8.exit.loopexit.unr-lcssa ]
  %lcmp.mod109 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod109)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %bb.j, %.lr.ph.epil.preheader
  %.06396.epil = phi i64 [ %i.bh, %bb.j ], [ %.06396.epil.init, %.lr.ph.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %bb.j ], [ 0, %.lr.ph.epil.preheader ]
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %i.z, i64 %.06396.epil
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !38 ; 2 uses
  %i.be = icmp ult i16 %i.bd, 256
end_hunk_5
