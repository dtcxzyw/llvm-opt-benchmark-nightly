Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/giaEsop?download=true
inline.NumInlined: 269
inline.NumDeleted: 76
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@Eso_ManMinimizeAdd:bb.a
  store ptr %i.kz, ptr %i.kv, align 8, !tbaa !45
  br label %Vec_IntGrow.exit11.sink.split.i237

bb.bq:                                            ; preds = %bb.bm
  %i.la = icmp samesign ult i32 %i.af, 1073741823
  %i.lb = shl nuw nsw i32 %i.af, 1
  %spec.select.i234 = select i1 %i.la, i32 %i.lb, i32 2147483647 ; 3 uses
  %.not.i9.i235 = icmp samesign ult i32 %i.af, %spec.select.i234
  br i1 %.not.i9.i235, label %bb.br, label %Vec_IntPush.exit241

bb.br:                                            ; preds = %bb.bq
  %i.lc = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !45 ; 2 uses
  %.not9.i10.i236 = icmp eq ptr %i.ld, null
  %i.le = zext nneg i32 %spec.select.i234 to i64
  %i.lf = shl nuw nsw i64 %i.le, 2                ; 2 uses
  br i1 %.not9.i10.i236, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.lg = tail call ptr @realloc(ptr noundef nonnull %i.ld, i64 noundef %i.lf) #24
  br label %bb.bu

bb.bt:                                            ; preds = %bb.br
  %i.lh = tail call noalias ptr @malloc(i64 noundef %i.lf) #23
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %i.li = phi ptr [ %i.lg, %bb.bs ], [ %i.lh, %bb.bt ]
  store ptr %i.li, ptr %i.lc, align 8, !tbaa !45
  br label %Vec_IntGrow.exit11.sink.split.i237

Vec_IntGrow.exit11.sink.split.i237:               ; preds = %bb.bu, %Vec_IntGrow.exit.i240
  %spec.select.sink.i238 = phi i32 [ %spec.select.i234, %bb.bu ], [ 16, %Vec_IntGrow.exit.i240 ]
  store i32 %spec.select.sink.i238, ptr %i.ad, align 8, !tbaa !44
  %.pre437 = load i32, ptr %i.ae, align 4, !tbaa !33
  br label %Vec_IntPush.exit241

Vec_IntPush.exit241:                              ; preds = %.critedge6, %bb.bq, %Vec_IntGrow.exit11.sink.split.i237
  %i.lj = phi i32 [ %i.af, %.critedge6 ], [ %i.af, %bb.bq ], [ %.pre437, %Vec_IntGrow.exit11.sink.split.i237 ] ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !45
  %i.lm = add nsw i32 %i.lj, 1
  store i32 %i.lm, ptr %i.ae, align 4, !tbaa !33
  %i.ln = sext i32 %i.lj to i64
  %i.lo = getelementptr inbounds [4 x i8], ptr %i.ll, i64 %i.ln
  store i32 %.5, ptr %i.lo, align 4, !tbaa !55
  br label %Vec_IntDrop.exit

Vec_IntDrop.exit:                                 ; preds = %.lr.ph.i157, %Vec_IntFind.exit, %Vec_IntPush.exit241, %Vec_IntPush.exit
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define void @Eso_ManMinimizeCopy(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) initializes((4, 8)) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 4 uses
  store i32 0, ptr %i.a, align 4, !tbaa !33
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !51   ; 2 uses
  %i.d = getelementptr i8, ptr %i.c, i64 4
  %.val1920 = load i32, ptr %i.d, align 4, !tbaa !40
  %i.e = icmp sgt i32 %.val1920, 0
  br i1 %i.e, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.critedge2
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.critedge2 ] ; 2 uses
  %i.g = phi ptr [ %i.c, %.lr.ph ], [ %i.aj, %.critedge2 ]
  %i.h = getelementptr i8, ptr %i.g, i64 8
  %.val18 = load ptr, ptr %i.h, align 8, !tbaa !39
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %.val18, i64 %indvars.iv ; 2 uses
  %i.j = getelementptr i8, ptr %i.i, i64 4        ; 3 uses
  %.val7.i = load i32, ptr %i.j, align 4, !tbaa !33
  %i.k = icmp sgt i32 %.val7.i, 0
  br i1 %i.k, label %.lr.ph.i, label %.critedge2

.lr.ph.i:                                         ; preds = %bb.b
  %i.l = getelementptr i8, ptr %i.i, i64 8
  br label %bb.c

bb.c:                                             ; preds = %Vec_IntPush.exit.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %Vec_IntPush.exit.i ] ; 2 uses
  %.val6.i = load ptr, ptr %i.l, align 8, !tbaa !45
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %.val6.i, i64 %indvars.iv.i
  %i.n = load i32, ptr %i.m, align 4, !tbaa !55
  %i.o = load i32, ptr %i.a, align 4, !tbaa !33   ; 7 uses
  %i.p = load i32, ptr %1, align 8, !tbaa !44
  %i.q = icmp eq i32 %i.o, %i.p
  br i1 %i.q, label %bb.d, label %.Vec_IntPush.exit_crit_edge.i

.Vec_IntPush.exit_crit_edge.i:                    ; preds = %bb.c
  %.pre.i = load ptr, ptr %i.f, align 8, !tbaa !45
  br label %Vec_IntPush.exit.i

bb.d:                                             ; preds = %bb.c
  %i.r = icmp slt i32 %i.o, 16
  br i1 %i.r, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.s = load ptr, ptr %i.f, align 8, !tbaa !45   ; 2 uses
  %.not9.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not9.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.s, i64 noundef 64) #24
  br label %Vec_IntGrow.exit11.sink.split.i.i

bb.g:                                             ; preds = %bb.e
  %i.u = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #23
  br label %Vec_IntGrow.exit11.sink.split.i.i

bb.h:                                             ; preds = %bb.d
  %i.v = icmp samesign ult i32 %i.o, 1073741823
  %i.w = shl nuw nsw i32 %i.o, 1
  %spec.select.i.i = select i1 %i.v, i32 %i.w, i32 2147483647 ; 4 uses
  %.not.i9.i.i = icmp samesign ult i32 %i.o, %spec.select.i.i
  %.pre10.i = load ptr, ptr %i.f, align 8, !tbaa !45 ; 3 uses
  br i1 %.not.i9.i.i, label %bb.i, label %Vec_IntPush.exit.i

bb.i:                                             ; preds = %bb.h
  %.not9.i10.i.i = icmp eq ptr %.pre10.i, null
  %i.x = zext nneg i32 %spec.select.i.i to i64
  %i.y = shl nuw nsw i64 %i.x, 2                  ; 2 uses
  br i1 %.not9.i10.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = tail call ptr @realloc(ptr noundef nonnull %.pre10.i, i64 noundef %i.y) #24
  br label %Vec_IntGrow.exit11.sink.split.i.i

bb.k:                                             ; preds = %bb.i
  %i.aa = tail call noalias ptr @malloc(i64 noundef %i.y) #23
  br label %Vec_IntGrow.exit11.sink.split.i.i

Vec_IntGrow.exit11.sink.split.i.i:                ; preds = %bb.k, %bb.j, %bb.g, %bb.f
  %i.ab = phi ptr [ %i.u, %bb.g ], [ %i.t, %bb.f ], [ %i.z, %bb.j ], [ %i.aa, %bb.k ] ; 2 uses
  %spec.select.sink.i.i = phi i32 [ 16, %bb.g ], [ 16, %bb.f ], [ %spec.select.i.i, %bb.j ], [ %spec.select.i.i, %bb.k ]
  store ptr %i.ab, ptr %i.f, align 8, !tbaa !45
  store i32 %spec.select.sink.i.i, ptr %1, align 8, !tbaa !44
  %.pre11.i = load i32, ptr %i.a, align 4, !tbaa !33
  br label %Vec_IntPush.exit.i

Vec_IntPush.exit.i:                               ; preds = %Vec_IntGrow.exit11.sink.split.i.i, %bb.h, %.Vec_IntPush.exit_crit_edge.i
  %i.ac = phi i32 [ %i.o, %.Vec_IntPush.exit_crit_edge.i ], [ %i.o, %bb.h ], [ %.pre11.i, %Vec_IntGrow.exit11.sink.split.i.i ] ; 2 uses
  %i.ad = phi ptr [ %.pre.i, %.Vec_IntPush.exit_crit_edge.i ], [ %.pre10.i, %bb.h ], [ %i.ab, %Vec_IntGrow.exit11.sink.split.i.i ]
  %i.ae = add nsw i32 %i.ac, 1
  store i32 %i.ae, ptr %i.a, align 4, !tbaa !33
  %i.af = sext i32 %i.ac to i64
  %i.ag = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %i.af
  store i32 %i.n, ptr %i.ag, align 4, !tbaa !55
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.val.i = load i32, ptr %i.j, align 4, !tbaa !33
  %i.ah = sext i32 %.val.i to i64
  %i.ai = icmp slt i64 %indvars.iv.next.i, %i.ah
  br i1 %i.ai, label %bb.c, label %.critedge2, !llvm.loop !114

.critedge2:                                       ; preds = %Vec_IntPush.exit.i, %bb.b
  store i32 0, ptr %i.j, align 4, !tbaa !33
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aj = load ptr, ptr %i.b, align 8, !tbaa !51  ; 2 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 4
  %.val19 = load i32, ptr %i.ak, align 4, !tbaa !40
  %i.al = sext i32 %.val19 to i64
  %i.am = icmp slt i64 %indvars.iv.next, %i.al
  br i1 %i.am, label %bb.b, label %.critedge, !llvm.loop !115

.critedge:                                        ; preds = %.critedge2, %bb.a
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define i32 @Eso_ManComputeAnd(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !45   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !45   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !45   ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !33   ; 2 uses
  %i.i = sext i32 %i.h to i64
  %.idx = shl nsw i64 %i.i, 2                     ; 2 uses
  %i.j = getelementptr inbounds i8, ptr %i.d, i64 %.idx ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !33   ; 2 uses
  %i.m = sext i32 %i.l to i64
  %.idx65 = shl nsw i64 %i.m, 2                   ; 2 uses
  %i.n = getelementptr inbounds i8, ptr %i.f, i64 %.idx65 ; 3 uses
  %i.o = icmp sgt i32 %i.h, 0
  %i.p = icmp sgt i32 %i.l, 0
  %i.q = select i1 %i.o, i1 %i.p, i1 false
  br i1 %i.q, label %.lr.ph, label %.preheader48

.preheader48:                                     ; preds = %bb.g, %bb.a
  %.040.lcssa = phi ptr [ %i.b, %bb.a ], [ %.141, %bb.g ] ; 5 uses
  %.037.lcssa = phi ptr [ %i.d, %bb.a ], [ %.138, %bb.g ] ; 5 uses
  %.0.lcssa = phi ptr [ %i.f, %bb.a ], [ %.1, %bb.g ] ; 5 uses
  %.0.lcssa80 = ptrtoaddr ptr %.0.lcssa to i64    ; 2 uses
  %i.r = icmp ult ptr %.037.lcssa, %i.j
  br i1 %i.r, label %.lr.ph59.preheader, label %.preheader

.lr.ph59.preheader:                               ; preds = %.preheader48
  %.037.lcssa74 = ptrtoaddr ptr %.037.lcssa to i64 ; 2 uses
  %.040.lcssa73 = ptrtoaddr ptr %.040.lcssa to i64
  %i.s = ptrtoaddr ptr %i.d to i64
  %i.t = add i64 %.idx, %i.s
  %i.u = xor i64 %.037.lcssa74, -1
  %i.v = add i64 %i.t, %i.u                       ; 2 uses
  %i.w = lshr i64 %i.v, 2
  %i.x = add nuw nsw i64 %i.w, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.v, 44
  %i.y = sub i64 %.037.lcssa74, %.040.lcssa73
  %diff.check = icmp ugt i64 %i.y, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph59.preheader99, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph59.preheader
  %n.vec = and i64 %i.x, 9223372036854775800      ; 3 uses
  %i.z = shl i64 %n.vec, 2                        ; 2 uses
  %i.aa = getelementptr i8, ptr %.037.lcssa, i64 %i.z
  %i.ab = getelementptr i8, ptr %.040.lcssa, i64 %i.z ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ac = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.037.lcssa, i64 %i.ac ; 2 uses
  %next.gep75 = getelementptr i8, ptr %.040.lcssa, i64 %i.ac ; 2 uses
  %i.ad = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !55
  %wide.load76 = load <4 x i32>, ptr %i.ad, align 4, !tbaa !55
  %i.ae = getelementptr i8, ptr %next.gep75, i64 16
  store <4 x i32> %wide.load, ptr %next.gep75, align 4, !tbaa !55
  store <4 x i32> %wide.load76, ptr %i.ae, align 4, !tbaa !55
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !116

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.x, %n.vec
  br i1 %cmp.n, label %.preheader, label %.lr.ph59.preheader99

.lr.ph59.preheader99:                             ; preds = %.lr.ph59.preheader, %middle.block
  %.23958.ph = phi ptr [ %.037.lcssa, %.lr.ph59.preheader ], [ %i.aa, %middle.block ]
  %.24257.ph = phi ptr [ %.040.lcssa, %.lr.ph59.preheader ], [ %i.ab, %middle.block ]
  br label %.lr.ph59

.lr.ph:                                           ; preds = %bb.a, %bb.g
  %.054 = phi ptr [ %.1, %bb.g ], [ %i.f, %bb.a ] ; 4 uses
  %.03753 = phi ptr [ %.138, %bb.g ], [ %i.d, %bb.a ] ; 4 uses
  %.04052 = phi ptr [ %.141, %bb.g ], [ %i.b, %bb.a ] ; 4 uses
  %i.ag = load i32, ptr %.03753, align 4, !tbaa !55 ; 5 uses
  %i.ah = load i32, ptr %.054, align 4, !tbaa !55 ; 4 uses
  %i.ai = icmp eq i32 %i.ag, %i.ah
  br i1 %i.ai, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.aj = getelementptr inbounds nuw i8, ptr %.03753, i64 4
  store i32 %i.ag, ptr %.04052, align 4, !tbaa !55
  %i.ak = getelementptr inbounds nuw i8, ptr %.054, i64 4
  br label %bb.g

bb.c:                                             ; preds = %.lr.ph
  %.unshifted = xor i32 %i.ah, %i.ag
  %i.al = icmp ult i32 %.unshifted, 2
  br i1 %i.al, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.am = icmp slt i32 %i.ag, %i.ah
  br i1 %i.am, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.an = getelementptr inbounds nuw i8, ptr %.03753, i64 4
  store i32 %i.ag, ptr %.04052, align 4, !tbaa !55
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.ao = getelementptr inbounds nuw i8, ptr %.054, i64 4
  store i32 %i.ah, ptr %.04052, align 4, !tbaa !55
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.b
  %.138 = phi ptr [ %i.aj, %bb.b ], [ %i.an, %bb.e ], [ %.03753, %bb.f ] ; 3 uses
  %.1 = phi ptr [ %i.ak, %bb.b ], [ %.054, %bb.e ], [ %i.ao, %bb.f ] ; 3 uses
  %.141 = getelementptr inbounds nuw i8, ptr %.04052, i64 4 ; 2 uses
  %i.ap = icmp ult ptr %.138, %i.j
  %i.aq = icmp ult ptr %.1, %i.n
  %i.ar = select i1 %i.ap, i1 %i.aq, i1 false
  br i1 %i.ar, label %.lr.ph, label %.preheader48, !llvm.loop !119

.preheader:                                       ; preds = %.lr.ph59, %middle.block, %.preheader48
  %.242.lcssa = phi ptr [ %.040.lcssa, %.preheader48 ], [ %i.ab, %middle.block ], [ %i.bj, %.lr.ph59 ] ; 5 uses
  %i.as = icmp ult ptr %.0.lcssa, %i.n
  br i1 %i.as, label %.lr.ph63.preheader, label %._crit_edge

.lr.ph63.preheader:                               ; preds = %.preheader
  %.242.lcssa79 = ptrtoaddr ptr %.242.lcssa to i64
  %i.at = ptrtoaddr ptr %i.f to i64
  %i.au = add i64 %.idx65, %i.at
  %i.av = xor i64 %.0.lcssa80, -1
  %i.aw = add i64 %i.au, %i.av                    ; 2 uses
  %i.ax = lshr i64 %i.aw, 2
  %i.ay = add nuw nsw i64 %i.ax, 1                ; 2 uses
  %min.iters.check83 = icmp ult i64 %i.aw, 44
  %i.az = sub i64 %.0.lcssa80, %.242.lcssa79
  %diff.check81 = icmp ugt i64 %i.az, -32
  %or.cond97 = select i1 %min.iters.check83, i1 true, i1 %diff.check81
  br i1 %or.cond97, label %.lr.ph63.preheader98, label %vector.ph84

vector.ph84:                                      ; preds = %.lr.ph63.preheader
  %n.vec85 = and i64 %i.ay, 9223372036854775800   ; 3 uses
  %i.ba = shl i64 %n.vec85, 2                     ; 2 uses
  %i.bb = getelementptr i8, ptr %.0.lcssa, i64 %i.ba
  %i.bc = getelementptr i8, ptr %.242.lcssa, i64 %i.ba ; 2 uses
  br label %vector.body86

vector.body86:                                    ; preds = %vector.body86, %vector.ph84
  %index87 = phi i64 [ 0, %vector.ph84 ], [ %index.next92, %vector.body86 ] ; 2 uses
  %i.bd = shl i64 %index87, 2                     ; 2 uses
  %next.gep88 = getelementptr i8, ptr %.0.lcssa, i64 %i.bd ; 2 uses
  %next.gep89 = getelementptr i8, ptr %.242.lcssa, i64 %i.bd ; 2 uses
  %i.be = getelementptr i8, ptr %next.gep88, i64 16
  %wide.load90 = load <4 x i32>, ptr %next.gep88, align 4, !tbaa !55
  %wide.load91 = load <4 x i32>, ptr %i.be, align 4, !tbaa !55
  %i.bf = getelementptr i8, ptr %next.gep89, i64 16
  store <4 x i32> %wide.load90, ptr %next.gep89, align 4, !tbaa !55
  store <4 x i32> %wide.load91, ptr %i.bf, align 4, !tbaa !55
  %index.next92 = add nuw i64 %index87, 8         ; 2 uses
  %i.bg = icmp eq i64 %index.next92, %n.vec85
  br i1 %i.bg, label %middle.block93, label %vector.body86, !llvm.loop !120

middle.block93:                                   ; preds = %vector.body86
  %cmp.n94 = icmp eq i64 %i.ay, %n.vec85
  br i1 %cmp.n94, label %._crit_edge, label %.lr.ph63.preheader98

.lr.ph63.preheader98:                             ; preds = %.lr.ph63.preheader, %middle.block93
  %.262.ph = phi ptr [ %.0.lcssa, %.lr.ph63.preheader ], [ %i.bb, %middle.block93 ]
  %.361.ph = phi ptr [ %.242.lcssa, %.lr.ph63.preheader ], [ %i.bc, %middle.block93 ]
  br label %.lr.ph63

.lr.ph59:                                         ; preds = %.lr.ph59.preheader99, %.lr.ph59
  %.23958 = phi ptr [ %i.bh, %.lr.ph59 ], [ %.23958.ph, %.lr.ph59.preheader99 ] ; 2 uses
  %.24257 = phi ptr [ %i.bj, %.lr.ph59 ], [ %.24257.ph, %.lr.ph59.preheader99 ] ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.23958, i64 4 ; 2 uses
  %i.bi = load i32, ptr %.23958, align 4, !tbaa !55
  %i.bj = getelementptr inbounds nuw i8, ptr %.24257, i64 4 ; 2 uses
  store i32 %i.bi, ptr %.24257, align 4, !tbaa !55
  %i.bk = icmp ult ptr %i.bh, %i.j
  br i1 %i.bk, label %.lr.ph59, label %.preheader, !llvm.loop !121

.lr.ph63:                                         ; preds = %.lr.ph63.preheader98, %.lr.ph63
  %.262 = phi ptr [ %i.bl, %.lr.ph63 ], [ %.262.ph, %.lr.ph63.preheader98 ] ; 2 uses
  %.361 = phi ptr [ %i.bn, %.lr.ph63 ], [ %.361.ph, %.lr.ph63.preheader98 ] ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.262, i64 4 ; 2 uses
  %i.bm = load i32, ptr %.262, align 4, !tbaa !55
  %i.bn = getelementptr inbounds nuw i8, ptr %.361, i64 4 ; 2 uses
  store i32 %i.bm, ptr %.361, align 4, !tbaa !55
  %i.bo = icmp ult ptr %i.bl, %i.n
  br i1 %i.bo, label %.lr.ph63, label %._crit_edge, !llvm.loop !122

._crit_edge:                                      ; preds = %.lr.ph63, %middle.block93, %.preheader
  %.3.lcssa = phi ptr [ %.242.lcssa, %.preheader ], [ %i.bc, %middle.block93 ], [ %i.bn, %.lr.ph63 ]
  %i.bp = ptrtoint ptr %.3.lcssa to i64
  %i.bq = ptrtoint ptr %i.b to i64
  %i.br = sub i64 %i.bp, %i.bq
  %i.bs = lshr exact i64 %i.br, 2
  %i.bt = trunc i64 %i.bs to i32
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %i.bt, ptr %i.bu, align 4, !tbaa !33
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !50
  %i.bx = tail call fastcc i32 @Hsh_VecManAdd(ptr noundef %i.bw, ptr noundef %3)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.c, %._crit_edge
  %.043 = phi i32 [ %i.bx, %._crit_edge ], [ -1, %bb.c ]
  ret i32 %.043
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define void @Eso_ManComputeOne(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) initializes((4, 8)) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 0, ptr %i.a, align 4, !tbaa !33
  %i.b = getelementptr i8, ptr %1, i64 4          ; 2 uses
  %.val49 = load i32, ptr %i.b, align 4, !tbaa !33 ; 2 uses
  %i.c = icmp eq i32 %.val49, 0
  br i1 %i.c, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %2, i64 4          ; 3 uses
  %.val48 = load i32, ptr %i.d, align 4, !tbaa !33 ; 3 uses
  %i.e = icmp eq i32 %.val48, 0
  br i1 %i.e, label %bb.m, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %1, i64 8
  %i.g = getelementptr i8, ptr %2, i64 8          ; 2 uses
  %i.h = icmp sgt i32 %.val49, 0
  br i1 %i.h, label %.lr.ph71, label %.critedge

.lr.ph71:                                         ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph71, %.critedge2
  %.val4666 = phi i32 [ %.val48, %.lr.ph71 ], [ %.val466684, %.critedge2 ] ; 4 uses
  %.val64 = phi i32 [ %.val48, %.lr.ph71 ], [ %.val6482, %.critedge2 ] ; 2 uses
  %indvars.iv78 = phi i64 [ 0, %.lr.ph71 ], [ %indvars.iv.next79, %.critedge2 ] ; 2 uses
  %.val52 = load ptr, ptr %i.f, align 8, !tbaa !45
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %.val52, i64 %indvars.iv78
  %i.m = load i32, ptr %i.l, align 4, !tbaa !55   ; 4 uses
  %i.n = load i32, ptr %i.i, align 4, !tbaa !35
  %i.o = icmp eq i32 %i.m, %i.n
  br i1 %i.o, label %.preheader, label %.preheader61

.preheader61:                                     ; preds = %bb.d
  %i.p = icmp sgt i32 %.val64, 0
  br i1 %i.p, label %.lr.ph, label %.critedge2

.lr.ph:                                           ; preds = %.preheader61
  %i.q = icmp ne i32 %i.m, -1
  %i.r = sext i32 %i.m to i64
  br label %bb.e

.preheader:                                       ; preds = %bb.d
  %i.s = icmp sgt i32 %.val4666, 0
  br i1 %i.s, label %.lr.ph68, label %.critedge2

.lr.ph68:                                         ; preds = %.preheader, %.lr.ph68
  %indvars.iv75 = phi i64 [ %indvars.iv.next76, %.lr.ph68 ], [ 0, %.preheader ] ; 2 uses
  %.val51 = load ptr, ptr %i.g, align 8, !tbaa !45
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %.val51, i64 %indvars.iv75
  %i.u = load i32, ptr %i.t, align 4, !tbaa !55
  tail call void @Eso_ManMinimizeAdd(ptr noundef nonnull %0, i32 noundef %i.u)
  %indvars.iv.next76 = add nuw nsw i64 %indvars.iv75, 1 ; 2 uses
  %.val46 = load i32, ptr %i.d, align 4, !tbaa !33 ; 3 uses
  %i.v = sext i32 %.val46 to i64
  %i.w = icmp slt i64 %indvars.iv.next76, %i.v
  br i1 %i.w, label %.lr.ph68, label %.critedge2, !llvm.loop !123

bb.e:                                             ; preds = %.lr.ph, %Eso_ManComputeAnd.exit.thread
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %Eso_ManComputeAnd.exit.thread ] ; 2 uses
  %.val50 = load ptr, ptr %i.g, align 8, !tbaa !45
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %.val50, i64 %indvars.iv
  %i.y = load i32, ptr %i.x, align 4, !tbaa !55   ; 3 uses
  %i.z = load i32, ptr %i.i, align 4, !tbaa !35
  %i.aa = icmp eq i32 %i.y, %i.z
  br i1 %i.aa, label %Eso_ManComputeAnd.exit.thread.sink.split, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = load ptr, ptr %i.j, align 8, !tbaa !50  ; 6 uses
  tail call void @llvm.assume(i1 %i.q)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !48
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !49
  %i.ag = getelementptr i8, ptr %i.af, i64 8      ; 2 uses
  %.val.i.i = load ptr, ptr %i.ag, align 8, !tbaa !45
  %i.ah = getelementptr inbounds [4 x i8], ptr %.val.i.i, i64 %i.r
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !55
  %i.aj = getelementptr i8, ptr %i.ad, i64 8      ; 2 uses
  %.val3.i.i = load ptr, ptr %i.aj, align 8, !tbaa !45 ; 2 uses
  %i.ak = sext i32 %i.ai to i64                   ; 2 uses
  %i.al = getelementptr inbounds [4 x i8], ptr %.val3.i.i, i64 %i.ak ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !57 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ab, i64 40 ; 2 uses
  store i32 %i.am, ptr %i.an, align 8, !tbaa !59
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ab, i64 44 ; 2 uses
  store i32 %i.am, ptr %i.ao, align 4, !tbaa !60
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ab, i64 48 ; 2 uses
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !61
  %i.ar = icmp ne i32 %i.y, -1
  tail call void @llvm.assume(i1 %i.ar)
  %.val.i.i55 = load ptr, ptr %i.ag, align 8, !tbaa !45
  %i.as = sext i32 %i.y to i64
  %i.at = getelementptr inbounds [4 x i8], ptr %.val.i.i55, i64 %i.as
  %i.au = load i32, ptr %i.at, align 4, !tbaa !55
  %.val3.i.i56 = load ptr, ptr %i.aj, align 8, !tbaa !45 ; 2 uses
  %i.av = sext i32 %i.au to i64                   ; 2 uses
  %i.aw = getelementptr inbounds [4 x i8], ptr %.val3.i.i56, i64 %i.av ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !57 ; 4 uses
  store i32 %i.ax, ptr %i.an, align 8, !tbaa !59
  store i32 %i.ax, ptr %i.ao, align 4, !tbaa !60
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 4 uses
  store ptr %i.ay, ptr %i.aq, align 8, !tbaa !61
  %i.az = load ptr, ptr %i.k, align 8, !tbaa !54  ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !45 ; 3 uses
  %i.bc = sext i32 %i.am to i64
  %.idx.i = shl nsw i64 %i.bc, 2                  ; 2 uses
  %i.bd = getelementptr inbounds i8, ptr %i.ap, i64 %.idx.i ; 3 uses
  %i.be = sext i32 %i.ax to i64
  %.idx65.i = shl nsw i64 %i.be, 2                ; 2 uses
  %i.bf = getelementptr inbounds i8, ptr %i.ay, i64 %.idx65.i ; 3 uses
  %i.bg = icmp sgt i32 %i.am, 0
  %i.bh = icmp sgt i32 %i.ax, 0
  %i.bi = select i1 %i.bg, i1 %i.bh, i1 false
  br i1 %i.bi, label %.lr.ph.i, label %.preheader48.i

.preheader48.i:                                   ; preds = %bb.l, %bb.f
  %.040.lcssa.i = phi ptr [ %i.bb, %bb.f ], [ %.141.i, %bb.l ] ; 5 uses
  %.037.lcssa.i = phi ptr [ %i.ap, %bb.f ], [ %.138.i, %bb.l ] ; 5 uses
  %.0.lcssa.i = phi ptr [ %i.ay, %bb.f ], [ %.1.i, %bb.l ] ; 5 uses
  %.0.lcssa.i96 = ptrtoaddr ptr %.0.lcssa.i to i64 ; 2 uses
  %i.bj = icmp ult ptr %.037.lcssa.i, %i.bd
  br i1 %i.bj, label %.lr.ph59.i.preheader, label %.preheader.i

.lr.ph59.i.preheader:                             ; preds = %.preheader48.i
  %.037.lcssa.i102 = ptrtoaddr ptr %.037.lcssa.i to i64 ; 2 uses
  %.040.lcssa.i101 = ptrtoaddr ptr %.040.lcssa.i to i64
  %i.bk = ptrtoaddr ptr %.val3.i.i to i64
  %i.bl = shl nsw i64 %i.ak, 2
  %i.bm = add i64 %i.bl, %i.bk
  %i.bn = add i64 %i.bm, %.idx.i
  %i.bo = add i64 %i.bn, 7
  %4 = sub i64 %i.bo, %.037.lcssa.i102            ; 2 uses
  %i.bp = lshr i64 %4, 2
  %i.bq = add nuw nsw i64 %i.bp, 1                ; 2 uses
  %min.iters.check105 = icmp ult i64 %4, 28
  %i.br = sub i64 %.037.lcssa.i102, %.040.lcssa.i101
  %diff.check103 = icmp ugt i64 %i.br, -32
  %or.cond = select i1 %min.iters.check105, i1 true, i1 %diff.check103
  br i1 %or.cond, label %.lr.ph59.i.preheader121, label %vector.ph106

vector.ph106:                                     ; preds = %.lr.ph59.i.preheader
  %n.vec107 = and i64 %i.bq, 9223372036854775800  ; 3 uses
  %i.bs = shl i64 %n.vec107, 2                    ; 2 uses
  %i.bt = getelementptr i8, ptr %.037.lcssa.i, i64 %i.bs
  %i.bu = getelementptr i8, ptr %.040.lcssa.i, i64 %i.bs ; 2 uses
  br label %vector.body108

vector.body108:                                   ; preds = %vector.body108, %vector.ph106
  %index109 = phi i64 [ 0, %vector.ph106 ], [ %index.next114, %vector.body108 ] ; 2 uses
  %i.bv = shl i64 %index109, 2                    ; 2 uses
  %next.gep110 = getelementptr i8, ptr %.037.lcssa.i, i64 %i.bv ; 2 uses
  %next.gep111 = getelementptr i8, ptr %.040.lcssa.i, i64 %i.bv ; 2 uses
  %i.bw = getelementptr i8, ptr %next.gep110, i64 16
  %wide.load112 = load <4 x i32>, ptr %next.gep110, align 4, !tbaa !55
  %wide.load113 = load <4 x i32>, ptr %i.bw, align 4, !tbaa !55
  %i.bx = getelementptr i8, ptr %next.gep111, i64 16
  store <4 x i32> %wide.load112, ptr %next.gep111, align 4, !tbaa !55
  store <4 x i32> %wide.load113, ptr %i.bx, align 4, !tbaa !55
  %index.next114 = add nuw i64 %index109, 8       ; 2 uses
  %i.by = icmp eq i64 %index.next114, %n.vec107
  br i1 %i.by, label %middle.block115, label %vector.body108, !llvm.loop !124

middle.block115:                                  ; preds = %vector.body108
  %cmp.n116 = icmp eq i64 %i.bq, %n.vec107
  br i1 %cmp.n116, label %.preheader.i, label %.lr.ph59.i.preheader121

.lr.ph59.i.preheader121:                          ; preds = %.lr.ph59.i.preheader, %middle.block115
  %.23958.i.ph = phi ptr [ %.037.lcssa.i, %.lr.ph59.i.preheader ], [ %i.bt, %middle.block115 ]
  %.24257.i.ph = phi ptr [ %.040.lcssa.i, %.lr.ph59.i.preheader ], [ %i.bu, %middle.block115 ]
  br label %.lr.ph59.i

.lr.ph.i:                                         ; preds = %bb.f, %bb.l
  %.054.i = phi ptr [ %.1.i, %bb.l ], [ %i.ay, %bb.f ] ; 4 uses
  %.03753.i = phi ptr [ %.138.i, %bb.l ], [ %i.ap, %bb.f ] ; 4 uses
  %.04052.i = phi ptr [ %.141.i, %bb.l ], [ %i.bb, %bb.f ] ; 4 uses
  %i.bz = load i32, ptr %.03753.i, align 4, !tbaa !55 ; 5 uses
  %i.ca = load i32, ptr %.054.i, align 4, !tbaa !55 ; 4 uses
  %i.cb = icmp eq i32 %i.bz, %i.ca
  br i1 %i.cb, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph.i
  %i.cc = getelementptr inbounds nuw i8, ptr %.03753.i, i64 4
  store i32 %i.bz, ptr %.04052.i, align 4, !tbaa !55
  %i.cd = getelementptr inbounds nuw i8, ptr %.054.i, i64 4
  br label %bb.l

bb.h:                                             ; preds = %.lr.ph.i
  %.unshifted.i = xor i32 %i.ca, %i.bz
  %i.ce = icmp ult i32 %.unshifted.i, 2
  br i1 %i.ce, label %Eso_ManComputeAnd.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cf = icmp slt i32 %i.bz, %i.ca
  br i1 %i.cf, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.cg = getelementptr inbounds nuw i8, ptr %.03753.i, i64 4
  store i32 %i.bz, ptr %.04052.i, align 4, !tbaa !55
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.ch = getelementptr inbounds nuw i8, ptr %.054.i, i64 4
  store i32 %i.ca, ptr %.04052.i, align 4, !tbaa !55
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.g
  %.138.i = phi ptr [ %i.cc, %bb.g ], [ %i.cg, %bb.j ], [ %.03753.i, %bb.k ] ; 3 uses
  %.1.i = phi ptr [ %i.cd, %bb.g ], [ %.054.i, %bb.j ], [ %i.ch, %bb.k ] ; 3 uses
  %.141.i = getelementptr inbounds nuw i8, ptr %.04052.i, i64 4 ; 2 uses
  %i.ci = icmp ult ptr %.138.i, %i.bd
  %i.cj = icmp ult ptr %.1.i, %i.bf
  %i.ck = select i1 %i.ci, i1 %i.cj, i1 false
  br i1 %i.ck, label %.lr.ph.i, label %.preheader48.i, !llvm.loop !119

.preheader.i:                                     ; preds = %.lr.ph59.i, %middle.block115, %.preheader48.i
  %.242.lcssa.i = phi ptr [ %.040.lcssa.i, %.preheader48.i ], [ %i.bu, %middle.block115 ], [ %i.dd, %.lr.ph59.i ] ; 5 uses
  %i.cl = icmp ult ptr %.0.lcssa.i, %i.bf
  br i1 %i.cl, label %.lr.ph63.i.preheader, label %Eso_ManComputeAnd.exit

.lr.ph63.i.preheader:                             ; preds = %.preheader.i
  %.242.lcssa.i95 = ptrtoaddr ptr %.242.lcssa.i to i64
  %i.cm = ptrtoaddr ptr %.val3.i.i56 to i64
  %i.cn = shl nsw i64 %i.av, 2
  %i.co = add i64 %i.cn, %i.cm
  %i.cp = add i64 %i.co, %.idx65.i
  %i.cq = add i64 %i.cp, 7
  %5 = sub i64 %i.cq, %.0.lcssa.i96               ; 2 uses
  %i.cr = lshr i64 %5, 2
  %i.cs = add nuw nsw i64 %i.cr, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %5, 28
  %i.ct = sub i64 %.0.lcssa.i96, %.242.lcssa.i95
  %diff.check = icmp ugt i64 %i.ct, -32
  %or.cond119 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond119, label %.lr.ph63.i.preheader120, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph63.i.preheader
  %n.vec = and i64 %i.cs, 9223372036854775800     ; 3 uses
  %i.cu = shl i64 %n.vec, 2                       ; 2 uses
  %i.cv = getelementptr i8, ptr %.0.lcssa.i, i64 %i.cu
  %i.cw = getelementptr i8, ptr %.242.lcssa.i, i64 %i.cu ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cx = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.0.lcssa.i, i64 %i.cx ; 2 uses
  %next.gep97 = getelementptr i8, ptr %.242.lcssa.i, i64 %i.cx ; 2 uses
  %i.cy = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !55
  %wide.load98 = load <4 x i32>, ptr %i.cy, align 4, !tbaa !55
  %i.cz = getelementptr i8, ptr %next.gep97, i64 16
  store <4 x i32> %wide.load, ptr %next.gep97, align 4, !tbaa !55
  store <4 x i32> %wide.load98, ptr %i.cz, align 4, !tbaa !55
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.da = icmp eq i64 %index.next, %n.vec
  br i1 %i.da, label %middle.block, label %vector.body, !llvm.loop !125

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cs, %n.vec
  br i1 %cmp.n, label %Eso_ManComputeAnd.exit, label %.lr.ph63.i.preheader120

.lr.ph63.i.preheader120:                          ; preds = %.lr.ph63.i.preheader, %middle.block
  %.262.i.ph = phi ptr [ %.0.lcssa.i, %.lr.ph63.i.preheader ], [ %i.cv, %middle.block ]
  %.361.i.ph = phi ptr [ %.242.lcssa.i, %.lr.ph63.i.preheader ], [ %i.cw, %middle.block ]
  br label %.lr.ph63.i

.lr.ph59.i:                                       ; preds = %.lr.ph59.i.preheader121, %.lr.ph59.i
  %.23958.i = phi ptr [ %i.db, %.lr.ph59.i ], [ %.23958.i.ph, %.lr.ph59.i.preheader121 ] ; 2 uses
  %.24257.i = phi ptr [ %i.dd, %.lr.ph59.i ], [ %.24257.i.ph, %.lr.ph59.i.preheader121 ] ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.23958.i, i64 4 ; 2 uses
  %i.dc = load i32, ptr %.23958.i, align 4, !tbaa !55
  %i.dd = getelementptr inbounds nuw i8, ptr %.24257.i, i64 4 ; 2 uses
  store i32 %i.dc, ptr %.24257.i, align 4, !tbaa !55
  %i.de = icmp ult ptr %i.db, %i.bd
  br i1 %i.de, label %.lr.ph59.i, label %.preheader.i, !llvm.loop !126

.lr.ph63.i:                                       ; preds = %.lr.ph63.i.preheader120, %.lr.ph63.i
  %.262.i = phi ptr [ %i.df, %.lr.ph63.i ], [ %.262.i.ph, %.lr.ph63.i.preheader120 ] ; 2 uses
  %.361.i = phi ptr [ %i.dh, %.lr.ph63.i ], [ %.361.i.ph, %.lr.ph63.i.preheader120 ] ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.262.i, i64 4 ; 2 uses
  %i.dg = load i32, ptr %.262.i, align 4, !tbaa !55
  %i.dh = getelementptr inbounds nuw i8, ptr %.361.i, i64 4 ; 2 uses
  store i32 %i.dg, ptr %.361.i, align 4, !tbaa !55
  %i.di = icmp ult ptr %i.df, %i.bf
  br i1 %i.di, label %.lr.ph63.i, label %Eso_ManComputeAnd.exit, !llvm.loop !127

Eso_ManComputeAnd.exit:                           ; preds = %.lr.ph63.i, %middle.block, %.preheader.i
  %.3.lcssa.i = phi ptr [ %.242.lcssa.i, %.preheader.i ], [ %i.cw, %middle.block ], [ %i.dh, %.lr.ph63.i ]
  %i.dj = ptrtoint ptr %.3.lcssa.i to i64
  %i.dk = ptrtoint ptr %i.bb to i64
  %i.dl = sub i64 %i.dj, %i.dk
  %i.dm = lshr exact i64 %i.dl, 2
  %i.dn = trunc i64 %i.dm to i32
  %i.do = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  store i32 %i.dn, ptr %i.do, align 4, !tbaa !33
  %i.dp = tail call fastcc i32 @Hsh_VecManAdd(ptr noundef %i.ab, ptr noundef %i.az) ; 2 uses
  %i.dq = icmp sgt i32 %i.dp, -1
  br i1 %i.dq, label %Eso_ManComputeAnd.exit.thread.sink.split, label %Eso_ManComputeAnd.exit.thread

Eso_ManComputeAnd.exit.thread.sink.split:         ; preds = %Eso_ManComputeAnd.exit, %bb.e
  %.sink = phi i32 [ %i.m, %bb.e ], [ %i.dp, %Eso_ManComputeAnd.exit ]
  tail call void @Eso_ManMinimizeAdd(ptr noundef %0, i32 noundef %.sink)
  br label %Eso_ManComputeAnd.exit.thread

Eso_ManComputeAnd.exit.thread:                    ; preds = %bb.h, %Eso_ManComputeAnd.exit.thread.sink.split, %Eso_ManComputeAnd.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.val = load i32, ptr %i.d, align 4, !tbaa !33  ; 3 uses
  %i.dr = sext i32 %.val to i64
  %i.ds = icmp slt i64 %indvars.iv.next, %i.dr
  br i1 %i.ds, label %bb.e, label %.critedge2, !llvm.loop !128

.critedge2:                                       ; preds = %Eso_ManComputeAnd.exit.thread, %.lr.ph68, %.preheader61, %.preheader
  %.val466684 = phi i32 [ %.val46, %.lr.ph68 ], [ %.val4666, %.preheader ], [ %.val4666, %.preheader61 ], [ %.val, %Eso_ManComputeAnd.exit.thread ]
  %.val6482 = phi i32 [ %.val46, %.lr.ph68 ], [ %.val4666, %.preheader ], [ %.val64, %.preheader61 ], [ %.val, %Eso_ManComputeAnd.exit.thread ]
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 1 ; 2 uses
  %.val47 = load i32, ptr %i.b, align 4, !tbaa !33
  %i.dt = sext i32 %.val47 to i64
  %i.du = icmp slt i64 %indvars.iv.next79, %i.dt
  br i1 %i.du, label %bb.d, label %.critedge, !llvm.loop !129

.critedge:                                        ; preds = %.critedge2, %bb.c
  tail call void @Eso_ManMinimizeCopy(ptr noundef %0, ptr noundef %3)
  br label %bb.m

bb.m:                                             ; preds = %bb.a, %bb.b, %.critedge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define noundef ptr @Eso_ManTransformOne(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef returned captures(ret: address, provenance) initializes((4, 8)) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 8 uses
  store i32 0, ptr %i.a, align 4, !tbaa !33
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %1, i64 4
  %.val25 = load i32, ptr %i.b, align 4, !tbaa !33
  %i.c = icmp eq i32 %.val25, 0
  br i1 %i.c, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.e = load i32, ptr %i.d, align 4, !tbaa !35   ; 2 uses
  %i.f = load i32, ptr %3, align 8, !tbaa !44
  %i.g = icmp eq i32 %i.f, 0
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !45   ; 3 uses
  br i1 %i.g, label %bb.d, label %.sink.split

bb.d:                                             ; preds = %bb.c
  %.not9.i.i = icmp eq ptr %i.i, null
  br i1 %.not9.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.i, i64 noundef 64) #24
  %.pre61.pre = load i32, ptr %i.a, align 4, !tbaa !33
  br label %Vec_IntGrow.exit11.sink.split.i

bb.f:                                             ; preds = %bb.d
  %i.k = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #23
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.e, %bb.f
  %.pre61 = phi i32 [ %.pre61.pre, %bb.e ], [ 0, %bb.f ]
  %i.l = phi ptr [ %i.j, %bb.e ], [ %i.k, %bb.f ] ; 2 uses
  store ptr %i.l, ptr %i.h, align 8, !tbaa !45
  br label %.sink.split.sink.split

bb.g:                                             ; preds = %bb.b
  %i.m = getelementptr i8, ptr %1, i64 8
  %.val27 = load ptr, ptr %i.m, align 8, !tbaa !45
  %i.n = load i32, ptr %.val27, align 4, !tbaa !55 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.p = load i32, ptr %i.o, align 4, !tbaa !35   ; 3 uses
  %i.q = icmp eq i32 %i.n, %i.p
  br i1 %i.q, label %bb.q, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load i32, ptr %i.r, align 8, !tbaa !34
  %i.t = shl nsw i32 %i.s, 1
  %i.u = icmp slt i32 %i.n, %i.t
  br i1 %i.u, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.v = xor i32 %i.n, 1                          ; 2 uses
  %i.w = load i32, ptr %3, align 8, !tbaa !44
  %i.x = icmp eq i32 %i.w, 0
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !45   ; 3 uses
  br i1 %i.x, label %bb.j, label %.sink.split

bb.j:                                             ; preds = %bb.i
  %.not9.i.i33 = icmp eq ptr %i.z, null
  br i1 %.not9.i.i33, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aa = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.z, i64 noundef 64) #24
  %.pre58.pre = load i32, ptr %i.a, align 4, !tbaa !33
  br label %Vec_IntGrow.exit11.sink.split.i31

bb.l:                                             ; preds = %bb.j
  %i.ab = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #23
  br label %Vec_IntGrow.exit11.sink.split.i31

Vec_IntGrow.exit11.sink.split.i31:                ; preds = %bb.k, %bb.l
  %.pre58 = phi i32 [ %.pre58.pre, %bb.k ], [ 0, %bb.l ]
  %i.ac = phi ptr [ %i.aa, %bb.k ], [ %i.ab, %bb.l ] ; 2 uses
  store ptr %i.ac, ptr %i.y, align 8, !tbaa !45
  br label %.sink.split.sink.split

bb.m:                                             ; preds = %bb.h
  %i.ad = load i32, ptr %3, align 8, !tbaa !44
  %i.ae = icmp eq i32 %i.ad, 0
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !45 ; 3 uses
  br i1 %i.ae, label %bb.n, label %.sink.split

bb.n:                                             ; preds = %bb.m
  %.not9.i.i41 = icmp eq ptr %i.ag, null
  br i1 %.not9.i.i41, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ah = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.ag, i64 noundef 64) #24
  %.pre55.pre = load i32, ptr %i.a, align 4, !tbaa !33
end_hunk_0
begin_hunk_1_@Gia_ManAppendObj:bb.a
  %i.s = load i32, ptr %i.c, align 4, !tbaa !140  ; 2 uses
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds [12 x i8], ptr %i.r, i64 %i.t
  %i.v = sub nsw i32 %i.g, %i.s
  %i.w = sext i32 %i.v to i64
  %i.x = mul nsw i64 %i.w, 12
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.u, i8 0, i64 %i.x, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !142  ; 2 uses
  %.not34 = icmp eq ptr %i.z, null
  br i1 %.not34, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = sext i32 %i.g to i64
  %i.ab = shl nsw i64 %i.aa, 2
  %i.ac = tail call ptr @realloc(ptr noundef nonnull %i.z, i64 noundef %i.ab) #24 ; 2 uses
  store ptr %i.ac, ptr %i.y, align 8, !tbaa !142
  %i.ad = load i32, ptr %i.c, align 4, !tbaa !140 ; 2 uses
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.ae
  %i.ag = sub nsw i32 %i.g, %i.ad
  %i.ah = sext i32 %i.ag to i64
  %i.ai = shl nsw i64 %i.ah, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.af, i8 0, i64 %i.ai, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  store i32 %i.g, ptr %i.c, align 4, !tbaa !140
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.a
  %i.aj = getelementptr i8, ptr %0, i64 100
  %.val = load i32, ptr %i.aj, align 4, !tbaa !33
  %.not35 = icmp eq i32 %.val, 0
  br i1 %.not35, label %bb.w, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 3 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !33 ; 7 uses
  %i.an = load i32, ptr %i.ak, align 8, !tbaa !44
  %i.ao = icmp eq i32 %i.am, %i.an
  br i1 %i.ao, label %bb.n, label %Vec_IntPush.exit

bb.n:                                             ; preds = %bb.m
  %i.ap = icmp slt i32 %i.am, 16
  br i1 %i.ap, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !45 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.ar, null
  br i1 %.not9.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.as = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.ar, i64 noundef 64) #24
  br label %Vec_IntGrow.exit.i

bb.q:                                             ; preds = %bb.o
  %i.at = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #23
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %bb.q, %bb.p
  %i.au = phi ptr [ %i.as, %bb.p ], [ %i.at, %bb.q ]
  store ptr %i.au, ptr %i.aq, align 8, !tbaa !45
  br label %Vec_IntGrow.exit11.sink.split.i

bb.r:                                             ; preds = %bb.n
  %i.av = icmp samesign ult i32 %i.am, 1073741823
  %i.aw = shl nuw nsw i32 %i.am, 1
  %spec.select.i = select i1 %i.av, i32 %i.aw, i32 2147483647 ; 3 uses
  %.not.i9.i = icmp samesign ult i32 %i.am, %spec.select.i
  br i1 %.not.i9.i, label %bb.s, label %Vec_IntPush.exit

bb.s:                                             ; preds = %bb.r
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !45 ; 2 uses
  %.not9.i10.i = icmp eq ptr %i.ay, null
  %i.az = zext nneg i32 %spec.select.i to i64
  %i.ba = shl nuw nsw i64 %i.az, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bb = tail call ptr @realloc(ptr noundef nonnull %i.ay, i64 noundef %i.ba) #24
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.bc = tail call noalias ptr @malloc(i64 noundef %i.ba) #23
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.bd = phi ptr [ %i.bb, %bb.t ], [ %i.bc, %bb.u ]
  store ptr %i.bd, ptr %i.ax, align 8, !tbaa !45
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.v, %Vec_IntGrow.exit.i
  %spec.select.sink.i = phi i32 [ %spec.select.i, %bb.v ], [ 16, %Vec_IntGrow.exit.i ]
  store i32 %spec.select.sink.i, ptr %i.ak, align 8, !tbaa !44
  %.pre = load i32, ptr %i.al, align 4, !tbaa !33
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.m, %bb.r, %Vec_IntGrow.exit11.sink.split.i
  %i.be = phi i32 [ %i.am, %bb.m ], [ %i.am, %bb.r ], [ %.pre, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !45
  %i.bh = add nsw i32 %i.be, 1
  store i32 %i.bh, ptr %i.al, align 4, !tbaa !33
  %i.bi = sext i32 %i.be to i64
  %i.bj = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %i.bi
  store i32 0, ptr %i.bj, align 4, !tbaa !55
  br label %bb.w

bb.w:                                             ; preds = %Vec_IntPush.exit, %bb.l
  %i.bk = load i32, ptr %i.a, align 8, !tbaa !36  ; 2 uses
  %i.bl = add nsw i32 %i.bk, 1
  store i32 %i.bl, ptr %i.a, align 8, !tbaa !36
  %i.bm = getelementptr i8, ptr %0, i64 32
  %.val36 = load ptr, ptr %i.bm, align 8, !tbaa !95
  %i.bn = sext i32 %i.bk to i64
  %i.bo = getelementptr inbounds [12 x i8], ptr %.val36, i64 %i.bn
  ret ptr %i.bo
}

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #15

declare void @Gia_ObjAddFanout(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare i32 @clock_gettime(i32 noundef, ptr noundef) local_unnamed_addr #16

; Function Attrs: inlinehint nounwind uwtable
define internal void @Abc_Print(i32 %0, ptr noundef %1, ...) unnamed_addr #8 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.a = load i32, ptr @enable_dbg_outs, align 4, !tbaa !55
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 (...) @Abc_FrameIsBridgeMode() #25 ; 0 uses
  call void @llvm.va_start.p0(ptr nonnull %2)
  %i.c = call i32 (...) @Abc_FrameIsBridgeMode() #25
  %.not9 = icmp eq i32 %i.c, 0
  br i1 %.not9, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = call ptr @vnsprintf(ptr noundef %1, ptr noundef nonnull %2) #25 ; 3 uses
  %i.e = load ptr, ptr @stdout, align 8, !tbaa !143
  %i.f = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.d) #26
  %i.g = trunc i64 %i.f to i32
  %i.h = call i32 @Gia_ManToBridgeText(ptr noundef %i.e, i32 noundef %i.g, ptr noundef nonnull %i.d) #25 ; 0 uses
  call void @free(ptr noundef %i.d) #25
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = load ptr, ptr @stdout, align 8, !tbaa !143, !noalias !145
  %i.j = call i32 @vfprintf(ptr noundef %i.i, ptr noundef %1, ptr noundef nonnull %2) #25, !inline_history !148 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.va_end.p0(ptr nonnull %2)
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret void
}

declare i32 @Abc_FrameIsBridgeMode(...) local_unnamed_addr #7

declare i32 @Gia_ManToBridgeText(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #17

declare ptr @vnsprintf(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #17

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #18

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #19

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #21

attributes #0 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #19 = { nofree nounwind }
attributes #20 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #22 = { nounwind allocsize(0,1) }
attributes #23 = { nounwind allocsize(0) }
attributes #24 = { nounwind allocsize(1) }
attributes #25 = { nounwind }
attributes #26 = { nounwind willreturn memory(read) }
attributes #27 = { cold noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !10, i64 0}
!9 = !{!"Eso_Man_t_", !10, i64 0, !5, i64 8, !5, i64 12, !12, i64 16, !13, i64 24, !12, i64 32, !14, i64 40, !14, i64 48, !14, i64 56}
!10 = !{!"p1 _ZTS10Gia_Man_t_", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"p1 _ZTS10Vec_Wec_t_", !11, i64 0}
!13 = !{!"p1 _ZTS13Hsh_VecMan_t_", !11, i64 0}
!14 = !{!"p1 _ZTS10Vec_Int_t_", !11, i64 0}
!15 = !{!16, !14, i64 64}
!16 = !{!"Gia_Man_t_", !17, i64 0, !17, i64 8, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !18, i64 32, !19, i64 40, !5, i64 48, !5, i64 52, !5, i64 56, !14, i64 64, !14, i64 72, !20, i64 80, !20, i64 96, !5, i64 112, !5, i64 116, !5, i64 120, !20, i64 128, !19, i64 144, !19, i64 152, !14, i64 160, !5, i64 168, !5, i64 172, !5, i64 176, !5, i64 180, !19, i64 184, !21, i64 192, !19, i64 200, !19, i64 208, !19, i64 216, !5, i64 224, !5, i64 228, !19, i64 232, !5, i64 240, !14, i64 248, !14, i64 256, !14, i64 264, !12, i64 272, !12, i64 280, !14, i64 288, !11, i64 296, !14, i64 304, !14, i64 312, !22, i64 320, !17, i64 328, !14, i64 336, !14, i64 344, !14, i64 352, !14, i64 360, !14, i64 368, !23, i64 376, !23, i64 384, !24, i64 392, !20, i64 400, !20, i64 416, !14, i64 432, !14, i64 440, !14, i64 448, !14, i64 456, !14, i64 464, !14, i64 472, !14, i64 480, !14, i64 488, !14, i64 496, !14, i64 504, !14, i64 512, !17, i64 520, !25, i64 528, !10, i64 536, !26, i64 544, !26, i64 552, !14, i64 560, !14, i64 568, !14, i64 576, !14, i64 584, !14, i64 592, !5, i64 600, !27, i64 604, !27, i64 608, !14, i64 616, !19, i64 624, !5, i64 632, !24, i64 640, !24, i64 648, !24, i64 656, !14, i64 664, !14, i64 672, !14, i64 680, !14, i64 688, !14, i64 696, !14, i64 704, !14, i64 712, !14, i64 720, !14, i64 728, !28, i64 736, !26, i64 744, !11, i64 752, !11, i64 760, !11, i64 768, !29, i64 776, !29, i64 784, !11, i64 792, !19, i64 800, !5, i64 808, !5, i64 812, !5, i64 816, !5, i64 820, !5, i64 824, !5, i64 828, !5, i64 832, !5, i64 836, !5, i64 840, !5, i64 844, !5, i64 848, !5, i64 852, !30, i64 856, !30, i64 864, !30, i64 872, !30, i64 880, !14, i64 888, !14, i64 896, !14, i64 904, !31, i64 912, !5, i64 920, !5, i64 924, !5, i64 928, !14, i64 936, !5, i64 944, !5, i64 948, !14, i64 952, !14, i64 960, !24, i64 968, !30, i64 976, !14, i64 984, !14, i64 992, !5, i64 1000, !5, i64 1004, !30, i64 1008, !20, i64 1016, !20, i64 1032, !20, i64 1048, !32, i64 1064, !22, i64 1072, !22, i64 1080, !5, i64 1088, !5, i64 1092, !5, i64 1096, !5, i64 1100, !22, i64 1104, !14, i64 1112, !14, i64 1120, !14, i64 1128, !24, i64 1136}
!17 = !{!"p1 omnipotent char", !11, i64 0}
!18 = !{!"p1 _ZTS10Gia_Obj_t_", !11, i64 0}
!19 = !{!"p1 int", !11, i64 0}
!20 = !{!"Vec_Int_t_", !5, i64 0, !5, i64 4, !19, i64 8}
!21 = !{!"p1 _ZTS10Gia_Rpr_t_", !11, i64 0}
!22 = !{!"p1 _ZTS10Vec_Str_t_", !11, i64 0}
!23 = !{!"p1 _ZTS10Abc_Cex_t_", !11, i64 0}
!24 = !{!"p1 _ZTS10Vec_Ptr_t_", !11, i64 0}
!25 = !{!"p1 _ZTS10Gia_Plc_t_", !11, i64 0}
!26 = !{!"p1 _ZTS10Vec_Flt_t_", !11, i64 0}
!27 = !{!"float", !6, i64 0}
!28 = !{!"p1 _ZTS10Vec_Vec_t_", !11, i64 0}
!29 = !{!"long", !6, i64 0}
!30 = !{!"p1 _ZTS10Vec_Wrd_t_", !11, i64 0}
!31 = !{!"p1 _ZTS10Vec_Bit_t_", !11, i64 0}
!32 = !{!"p1 _ZTS10Gia_Dat_t_", !11, i64 0}
!33 = !{!20, !5, i64 4}
!34 = !{!9, !5, i64 8}
!35 = !{!9, !5, i64 12}
!36 = !{!16, !5, i64 24}
!37 = !{!38, !5, i64 0}
!38 = !{!"Vec_Wec_t_", !5, i64 0, !5, i64 4, !14, i64 8}
!39 = !{!38, !14, i64 8}
!40 = !{!38, !5, i64 4}
!41 = !{!9, !12, i64 16}
!42 = distinct !{!42, !43}
!43 = !{!"llvm.loop.mustprogress"}
!44 = !{!20, !5, i64 0}
!45 = !{!20, !19, i64 8}
!46 = !{!47, !14, i64 0}
!47 = !{!"Hsh_VecMan_t_", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !20, i64 40, !20, i64 56, !20, i64 72}
!48 = !{!47, !14, i64 8}
!49 = !{!47, !14, i64 16}
!50 = !{!9, !13, i64 24}
!51 = !{!9, !12, i64 32}
!52 = !{!9, !14, i64 40}
!53 = !{!9, !14, i64 48}
!54 = !{!9, !14, i64 56}
!55 = !{!5, !5, i64 0}
!56 = distinct !{!56, !43}
!57 = !{!58, !5, i64 0}
!58 = !{!"Hsh_VecObj_t_", !5, i64 0, !5, i64 4, !6, i64 8}
!59 = !{!47, !5, i64 40}
!60 = !{!47, !5, i64 44}
!61 = !{!47, !19, i64 48}
!62 = distinct !{!62, !43}
!63 = !{!58, !5, i64 4}
!64 = distinct !{!64, !43}
!65 = distinct !{!65, !43}
!66 = distinct !{!66, !43}
!67 = distinct !{!67, !43}
!68 = !{!14, !14, i64 0}
!69 = !{!70, !5, i64 4}
!70 = !{!"Vec_Str_t_", !5, i64 0, !5, i64 4, !17, i64 8}
!71 = !{!70, !5, i64 0}
!72 = !{!70, !17, i64 8}
!73 = !{!6, !6, i64 0}
!74 = distinct !{!74, !43}
!75 = distinct !{!75, !76}
!76 = !{!"llvm.loop.unroll.disable"}
!77 = distinct !{!77, !43}
!78 = distinct !{!78, !43}
!79 = distinct !{!79, !43}
!80 = !{!81, !5, i64 4}
!81 = !{!"Vec_Vec_t_", !5, i64 0, !5, i64 4, !82, i64 8}
!82 = !{!"any p2 pointer", !11, i64 0}
!83 = !{!81, !82, i64 8}
!84 = !{!11, !11, i64 0}
!85 = !{!86, !5, i64 4}
!86 = !{!"Vec_Ptr_t_", !5, i64 0, !5, i64 4, !82, i64 8}
!87 = distinct !{!87, !43}
!88 = distinct !{!88, !76}
!89 = !{!86, !82, i64 8}
!90 = distinct !{!90, !43}
!91 = distinct !{!91, !43}
!92 = distinct !{!92, !43}
!93 = !{!16, !17, i64 0}
!94 = !{!16, !17, i64 8}
!95 = !{!16, !18, i64 32}
!96 = !{!97, !5, i64 8}
!97 = !{!"Gia_Obj_t_", !5, i64 0, !5, i64 3, !5, i64 3, !5, i64 3, !5, i64 4, !5, i64 7, !5, i64 7, !5, i64 7, !5, i64 8}
!98 = distinct !{!98, !43}
!99 = distinct !{!99, !43}
!100 = distinct !{!100, !43}
!101 = distinct !{!101, !43}
!102 = !{!16, !14, i64 72}
!103 = !{!16, !19, i64 232}
!104 = distinct !{!104, !43}
!105 = distinct !{!105, !43}
!106 = distinct !{!106, !43}
!107 = distinct !{!107, !43}
!108 = distinct !{!108, !43}
!109 = distinct !{!109, !43}
!110 = distinct !{!110, !43}
!111 = distinct !{!111, !43}
!112 = distinct !{!112, !43}
!113 = distinct !{!113, !43}
!114 = distinct !{!114, !43}
!115 = distinct !{!115, !43}
!116 = distinct !{!116, !43, !117, !118}
!117 = !{!"llvm.loop.isvectorized", i32 1}
!118 = !{!"llvm.loop.unroll.runtime.disable"}
!119 = distinct !{!119, !43}
!120 = distinct !{!120, !43, !117, !118}
!121 = distinct !{!121, !43, !117}
!122 = distinct !{!122, !43, !117}
!123 = distinct !{!123, !43}
!124 = distinct !{!124, !43, !117, !118}
!125 = distinct !{!125, !43, !117, !118}
!126 = distinct !{!126, !43, !117}
!127 = distinct !{!127, !43, !117}
!128 = distinct !{!128, !43}
!129 = distinct !{!129, !43}
!130 = distinct !{!130, !43}
!131 = !{!132, !29, i64 0}
!132 = !{!"timespec", !29, i64 0, !29, i64 8}
!133 = !{!132, !29, i64 8}
!134 = distinct !{!134, !43}
!135 = !{!86, !5, i64 0}
!136 = distinct !{!136, !43}
!137 = !{!12, !12, i64 0}
!138 = !{!82, !82, i64 0}
!139 = distinct !{!139, !43}
!140 = !{!16, !5, i64 28}
!141 = !{!16, !5, i64 820}
!142 = !{!16, !19, i64 40}
!143 = !{!144, !144, i64 0}
!144 = !{!"p1 _ZTS8_IO_FILE", !11, i64 0}
!145 = !{!146}
!146 = distinct !{!146, !147, !"vprintf: argument 0"}
!147 = distinct !{!147, !"vprintf"}
!148 = distinct !{null}
end_hunk_1
