Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/satSolver?download=true
inline.NumInlined: 548
inline.NumDeleted: 94
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 16
begin_hunk_0_@Sat_MemAppend:bb.a
  %i.y = tail call ptr @realloc(ptr noundef nonnull %i.b, i64 noundef %i.x) #29 ; 3 uses
  store ptr %i.y, ptr %i.a, align 8, !tbaa !52
  %i.z = load i32, ptr %i.t, align 4, !tbaa !58   ; 2 uses
  %i.aa = sext i32 %i.z to i64                    ; 2 uses
  %i.ab = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.aa
  %i.ac = shl nsw i64 %i.aa, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ab, i8 0, i64 %i.ac, i1 false)
  %i.ad = shl nsw i32 %i.z, 1
  store i32 %i.ad, ptr %i.t, align 4, !tbaa !58
  %.pre = load i32, ptr %i.e, align 4, !tbaa !40
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ae = phi i32 [ %.pre, %bb.c ], [ %i.s, %bb.b ]
  %i.af = phi ptr [ %i.y, %bb.c ], [ %i.b, %bb.b ] ; 2 uses
  %i.ag = sext i32 %i.ae to i64
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.ag
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !53 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ak = load i32, ptr %i.p, align 8, !tbaa !50
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = shl i64 4294967296, %i.al
  %i.an = ashr exact i64 %i.am, 30
  %i.ao = tail call noalias ptr @malloc(i64 noundef %i.an) #30 ; 2 uses
  %i.ap = load i32, ptr %i.e, align 4, !tbaa !40
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.aq
  store ptr %i.ao, ptr %i.ar, align 8, !tbaa !53
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.as = phi ptr [ %i.ao, %bb.e ], [ %i.ai, %bb.d ] ; 2 uses
  store i32 2, ptr %i.as, align 4, !tbaa !40
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.a
  %.0.val65 = phi i32 [ 2, %bb.f ], [ %.val, %bb.a ]
  %.0 = phi ptr [ %i.as, %bb.f ], [ %i.i, %bb.a ] ; 5 uses
  %i.at = sext i32 %.0.val65 to i64
  %i.au = getelementptr inbounds [4 x i8], ptr %.0, i64 %i.at
  store i32 0, ptr %i.au, align 4, !tbaa !40
  %.0.val = load i32, ptr %.0, align 4, !tbaa !40
  %i.av = sext i32 %.0.val to i64
  %i.aw = getelementptr inbounds [4 x i8], ptr %.0, i64 %i.av ; 4 uses
  %i.ax = load i32, ptr %i.aw, align 4
  %i.ay = shl i32 %2, 11
  %i.az = and i32 %i.ax, 2046
  %i.ba = and i32 %3, 1
  %i.bb = or disjoint i32 %i.az, %i.ba
  %i.bc = or disjoint i32 %i.bb, %i.ay
  store i32 %i.bc, ptr %i.aw, align 4
  %.not63 = icmp eq ptr %1, null
  br i1 %.not63, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  %i.be = sext i32 %2 to i64
  %i.bf = shl nsw i64 %i.be, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bd, ptr nonnull align 4 %1, i64 %i.bf, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.not64 = icmp eq i32 %3, 0
  %.phi.trans.insert = getelementptr inbounds [4 x i8], ptr %0, i64 %i.d
  %.pre67 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !40 ; 2 uses
  br i1 %.not64, label %._crit_edge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  %i.bh = and i32 %2, 2097151
  %i.bi = zext nneg i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %i.bi
  store i32 %.pre67, ptr %i.bj, align 4, !tbaa !40
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.i, %bb.j
  %i.bk = getelementptr inbounds [4 x i8], ptr %0, i64 %i.d
  %i.bl = add nsw i32 %.pre67, 1
  store i32 %i.bl, ptr %i.bk, align 4, !tbaa !40
  %i.bm = load i32, ptr %.0, align 4, !tbaa !40
  %i.bn = add nsw i32 %i.bm, %i.m
  store i32 %i.bn, ptr %.0, align 4, !tbaa !40
  %i.bo = load i32, ptr %i.e, align 4, !tbaa !40  ; 2 uses
  %i.bp = load i32, ptr %i.p, align 8, !tbaa !50
  %i.bq = shl i32 %i.bo, %i.bp
  %i.br = load ptr, ptr %i.a, align 8, !tbaa !52
  %i.bs = sext i32 %i.bo to i64
  %i.bt = getelementptr inbounds [8 x i8], ptr %i.br, i64 %i.bs
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !53
  %.val.i = load i32, ptr %i.bu, align 4, !tbaa !40
  %i.bv = or i32 %.val.i, %i.bq
  %i.bw = sub nsw i32 %i.bv, %i.m
  ret i32 %i.bw
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define i32 @sat_solver_count_assigned(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !33     ; 3 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 208
  %.val = load ptr, ptr %i.c, align 8, !tbaa !31  ; 2 uses
  %wide.trip.count = zext nneg i32 %i.a to i64    ; 3 uses
  %min.iters.check = icmp ult i32 %i.a, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.j, %vector.body ]
  %vec.phi10 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.k, %vector.body ]
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 %index ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %wide.load = load <4 x i8>, ptr %i.d, align 1, !tbaa !32
  %wide.load11 = load <4 x i8>, ptr %i.e, align 1, !tbaa !32
  %i.f = icmp ne <4 x i8> %wide.load, splat (i8 3)
  %i.g = icmp ne <4 x i8> %wide.load11, splat (i8 3)
  %i.h = zext <4 x i1> %i.f to <4 x i32>
  %i.i = zext <4 x i1> %i.g to <4 x i32>
  %i.j = add <4 x i32> %vec.phi, %i.h             ; 2 uses
  %i.k = add <4 x i32> %vec.phi10, %i.i           ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.l = icmp eq i64 %index.next, %n.vec
  br i1 %i.l, label %middle.block, label %vector.body, !llvm.loop !102

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.k, %i.j
  %i.m = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  %.08.ph = phi i32 [ 0, %.lr.ph ], [ %i.m, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.08 = phi i32 [ %spec.select, %scalar.ph ], [ %.08.ph, %scalar.ph.preheader ]
  %i.n = getelementptr inbounds nuw i8, ptr %.val, i64 %indvars.iv
  %i.o = load i8, ptr %i.n, align 1, !tbaa !32
  %.not = icmp ne i8 %i.o, 3
  %i.p = zext i1 %.not to i32
  %spec.select = add nuw nsw i32 %.08, %i.p       ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !103

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.m, %middle.block ], [ %spec.select, %scalar.ph ]
  ret i32 %.0.lcssa
}

; Function Attrs: nounwind uwtable
define i32 @sat_solver_propagate(ptr nofree noundef captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.d = getelementptr i8, ptr %0, i64 88         ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 2 uses
  %i.f = getelementptr i8, ptr %0, i64 208        ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.j = getelementptr i8, ptr %0, i64 316        ; 2 uses
  %i.k = getelementptr i8, ptr %0, i64 200        ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.m = getelementptr i8, ptr %0, i64 48
  %i.n = getelementptr i8, ptr %0, i64 52
  %i.o = getelementptr i8, ptr %0, i64 64
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.outer._crit_edge
  %i.q = load i32, ptr %i.a, align 4, !tbaa !61
  %i.r = load i32, ptr %i.b, align 8, !tbaa !62   ; 3 uses
  %i.s = icmp sgt i32 %i.q, %i.r
  br i1 %i.s, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.t = load ptr, ptr %i.c, align 8, !tbaa !63
  %i.u = add nsw i32 %i.r, 1
  store i32 %i.u, ptr %i.b, align 8, !tbaa !62
  %i.v = sext i32 %i.r to i64
  %i.w = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !40   ; 3 uses
  %.val126 = load ptr, ptr %i.d, align 8, !tbaa !43
  %i.y = sext i32 %i.x to i64
  %i.z = getelementptr inbounds [16 x i8], ptr %.val126, i64 %i.y ; 2 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 8       ; 2 uses
  %.val124 = load ptr, ptr %i.aa, align 8, !tbaa !41 ; 5 uses
  %i.ab = getelementptr i8, ptr %i.z, i64 4       ; 2 uses
  %.val127 = load i32, ptr %i.ab, align 4, !tbaa !44 ; 2 uses
  %i.ac = sext i32 %.val127 to i64
  %.idx = shl nsw i64 %i.ac, 2                    ; 3 uses
  %i.ad = getelementptr inbounds i8, ptr %.val124, i64 %.idx ; 6 uses
  %i.ae = load i64, ptr %i.e, align 8, !tbaa !64
  %i.af = add nsw i64 %i.ae, 1
  store i64 %i.af, ptr %i.e, align 8, !tbaa !64
  %i.ag = icmp sgt i32 %.val127, 0
  br i1 %i.ag, label %.lr.ph.lr.ph, label %.outer._crit_edge

.lr.ph.lr.ph:                                     ; preds = %bb.c
  %.val124249 = ptrtoaddr ptr %.val124 to i64     ; 2 uses
  %i.ah = shl nsw i32 %i.x, 1
  %i.ai = or disjoint i32 %i.ah, 1
  %i.aj = xor i32 %i.x, 1                         ; 4 uses
  %i.ak = add i64 %.val124249, -5
  %i.al = add i64 %i.ak, %.idx
  %i.am = add i64 %.val124249, -5
  %i.an = add i64 %i.am, %.idx
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.lr.ph, %.thread
  %.090.ph182 = phi ptr [ %.val124, %.lr.ph.lr.ph ], [ %.9, %.thread ] ; 2 uses
  %.092.ph181 = phi ptr [ %.val124, %.lr.ph.lr.ph ], [ %i.iu, %.thread ] ; 2 uses
  %.1103.ph180 = phi i32 [ 0, %.lr.ph.lr.ph ], [ %.8110, %.thread ] ; 7 uses
  %.090.ph182247 = ptrtoaddr ptr %.090.ph182 to i64 ; 2 uses
  %.092.ph181248 = ptrtoaddr ptr %.092.ph181 to i64 ; 4 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.j
  %indvar = phi i64 [ 0, %.lr.ph ], [ %indvar.next, %bb.j ] ; 3 uses
  %.090157 = phi ptr [ %.090.ph182, %.lr.ph ], [ %i.ct, %bb.j ] ; 9 uses
  %.092156 = phi ptr [ %.092.ph181, %.lr.ph ], [ %i.cs, %bb.j ] ; 17 uses
  %i.ao = load i32, ptr %.092156, align 4, !tbaa !40 ; 8 uses
  %i.ap = and i32 %i.ao, 1
  %.not = icmp eq i32 %i.ap, 0
  br i1 %.not, label %clause_read.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aq = lshr i32 %i.ao, 1
  %i.ar = ashr i32 %i.ao, 2
  %.val121 = load ptr, ptr %i.f, align 8, !tbaa !31 ; 2 uses
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr inbounds i8, ptr %.val121, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1, !tbaa !32
  %i.av = sext i8 %i.au to i32
  %i.aw = and i32 %i.aq, 1
  %i.ax = icmp eq i32 %i.aw, %i.av
  br i1 %i.ax, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ay = getelementptr inbounds nuw i8, ptr %.090157, i64 4 ; 6 uses
  store i32 %i.ao, ptr %.090157, align 4, !tbaa !40
  %i.az = load i32, ptr %.092156, align 4, !tbaa !40 ; 2 uses
  %i.ba = ashr i32 %i.az, 1                       ; 3 uses
  %i.bb = ashr i32 %i.az, 2
  %i.bc = load ptr, ptr %i.g, align 8, !tbaa !65
  %i.bd = sext i32 %i.bb to i64                   ; 4 uses
  %i.be = getelementptr inbounds i8, ptr %i.bc, i64 %i.bd ; 2 uses
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !32
  %i.bg = icmp eq i8 %i.bf, 0
  br i1 %i.bg, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i8 1, ptr %i.be, align 1, !tbaa !32
  %.val24.i.pre = load ptr, ptr %i.f, align 8, !tbaa !31
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.val24.i = phi ptr [ %.val24.i.pre, %bb.g ], [ %.val121, %bb.f ]
  %i.bh = getelementptr inbounds i8, ptr %.val24.i, i64 %i.bd ; 2 uses
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !32  ; 2 uses
  %.not.i = icmp eq i8 %i.bi, 3
  br i1 %.not.i, label %sat_solver_enqueue.exit.thread, label %sat_solver_enqueue.exit

sat_solver_enqueue.exit.thread:                   ; preds = %bb.h
  %i.bj = trunc i32 %i.ba to i8
  %i.bk = and i8 %i.bj, 1
  store i8 %i.bk, ptr %i.bh, align 1, !tbaa !32
  %.val26.i = load i32, ptr %i.j, align 4, !tbaa !44
  %.val27.i = load ptr, ptr %i.k, align 8, !tbaa !54
  %i.bl = getelementptr inbounds [4 x i8], ptr %.val27.i, i64 %i.bd
  store i32 %.val26.i, ptr %i.bl, align 4, !tbaa !40
  %i.bm = load ptr, ptr %i.l, align 8, !tbaa !66
  %i.bn = getelementptr inbounds [4 x i8], ptr %i.bm, i64 %i.bd
  store i32 %i.ai, ptr %i.bn, align 4, !tbaa !40
  %i.bo = load ptr, ptr %i.c, align 8, !tbaa !63
  %i.bp = load i32, ptr %i.a, align 4, !tbaa !61  ; 2 uses
  %i.bq = add nsw i32 %i.bp, 1
  store i32 %i.bq, ptr %i.a, align 4, !tbaa !61
  %i.br = sext i32 %i.bp to i64
  %i.bs = getelementptr inbounds [4 x i8], ptr %i.bo, i64 %i.br
  store i32 %i.ba, ptr %i.bs, align 4, !tbaa !40
  br label %.thread

sat_solver_enqueue.exit:                          ; preds = %bb.h
  %i.bt = sext i8 %i.bi to i32
  %i.bu = and i32 %i.ba, 1
  %.not145 = icmp eq i32 %i.bu, %i.bt
  br i1 %.not145, label %.thread, label %bb.i

bb.i:                                             ; preds = %sat_solver_enqueue.exit
  %i.bv = load i32, ptr %i.h, align 4, !tbaa !67  ; 3 uses
  %i.bw = load ptr, ptr %i.i, align 8, !tbaa !68  ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 4
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store i32 %i.aj, ptr %i.by, align 4, !tbaa !40
  %i.bz = load i32, ptr %.092156, align 4, !tbaa !40
  %i.ca = ashr i32 %i.bz, 1
  store i32 %i.ca, ptr %i.bx, align 4, !tbaa !40
  %.193161 = getelementptr inbounds nuw i8, ptr %.092156, i64 4 ; 5 uses
  %i.cb = icmp ult ptr %.193161, %i.ad
  br i1 %i.cb, label %.lr.ph165.preheader, label %.thread

.lr.ph165.preheader:                              ; preds = %bb.i
  %i.cc = shl i64 %indvar, 2
  %i.cd = add i64 %i.cc, %.092.ph181248
  %i.ce = sub i64 %i.an, %i.cd                    ; 2 uses
  %i.cf = lshr i64 %i.ce, 2
  %i.cg = add nuw nsw i64 %i.cf, 1                ; 2 uses
  %min.iters.check256 = icmp ult i64 %i.ce, 28
  %i.ch = sub i64 %.092.ph181248, %.090.ph182247
  %diff.check254 = icmp ugt i64 %i.ch, -32
  %or.cond = select i1 %min.iters.check256, i1 true, i1 %diff.check254
  br i1 %or.cond, label %.lr.ph165.preheader274, label %vector.ph257

vector.ph257:                                     ; preds = %.lr.ph165.preheader
  %n.vec258 = and i64 %i.cg, 9223372036854775800  ; 3 uses
  %i.ci = shl i64 %n.vec258, 2                    ; 2 uses
  %i.cj = getelementptr i8, ptr %.193161, i64 %i.ci ; 2 uses
  %i.ck = getelementptr i8, ptr %i.ay, i64 %i.ci  ; 2 uses
  br label %vector.body259

vector.body259:                                   ; preds = %vector.body259, %vector.ph257
  %index260 = phi i64 [ 0, %vector.ph257 ], [ %index.next265, %vector.body259 ] ; 2 uses
  %i.cl = shl i64 %index260, 2                    ; 2 uses
  %next.gep261.a = getelementptr i8, ptr %.193161, i64 %i.cl ; 2 uses
  %next.gep262 = getelementptr i8, ptr %i.ay, i64 %i.cl ; 2 uses
  %i.cm = getelementptr i8, ptr %next.gep261.a, i64 16
  %wide.load263.a = load <4 x i32>, ptr %next.gep261.a, align 4, !tbaa !40
  %wide.load264 = load <4 x i32>, ptr %i.cm, align 4, !tbaa !40
  %i.cn = getelementptr i8, ptr %next.gep262, i64 16
  store <4 x i32> %wide.load263.a, ptr %next.gep262, align 4, !tbaa !40
  store <4 x i32> %wide.load264, ptr %i.cn, align 4, !tbaa !40
  %index.next265 = add nuw i64 %index260, 8       ; 2 uses
  %i.co = icmp eq i64 %index.next265, %n.vec258
  br i1 %i.co, label %middle.block266, label %vector.body259, !llvm.loop !104

middle.block266:                                  ; preds = %vector.body259
  %cmp.n267 = icmp eq i64 %i.cg, %n.vec258
  br i1 %cmp.n267, label %.thread, label %.lr.ph165.preheader274

.lr.ph165.preheader274:                           ; preds = %.lr.ph165.preheader, %middle.block266
  %.193163.ph = phi ptr [ %.193161, %.lr.ph165.preheader ], [ %i.cj, %middle.block266 ]
  %.191162.ph = phi ptr [ %i.ay, %.lr.ph165.preheader ], [ %i.ck, %middle.block266 ]
  br label %.lr.ph165

.lr.ph165:                                        ; preds = %.lr.ph165.preheader274, %.lr.ph165
  %.193163 = phi ptr [ %.193, %.lr.ph165 ], [ %.193163.ph, %.lr.ph165.preheader274 ] ; 2 uses
  %.191162 = phi ptr [ %i.cq, %.lr.ph165 ], [ %.191162.ph, %.lr.ph165.preheader274 ] ; 2 uses
  %i.cp = load i32, ptr %.193163, align 4, !tbaa !40
  %i.cq = getelementptr inbounds nuw i8, ptr %.191162, i64 4 ; 2 uses
  store i32 %i.cp, ptr %.191162, align 4, !tbaa !40
  %.193 = getelementptr inbounds nuw i8, ptr %.193163, i64 4 ; 3 uses
  %i.cr = icmp ult ptr %.193, %i.ad
  br i1 %i.cr, label %.lr.ph165, label %.thread, !llvm.loop !105

bb.j:                                             ; preds = %bb.e
  %i.cs = getelementptr inbounds nuw i8, ptr %.092156, i64 4 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.090157, i64 4 ; 2 uses
  store i32 %i.ao, ptr %.090157, align 4, !tbaa !40
  %i.cu = icmp ult ptr %i.cs, %i.ad
  %indvar.next = add i64 %indvar, 1
  br i1 %i.cu, label %bb.d, label %.outer._crit_edge

clause_read.exit:                                 ; preds = %bb.d
  %.not.i.i = icmp ne i32 %i.ao, 0
  tail call void @llvm.assume(i1 %.not.i.i)
  %.val.i.i = load i32, ptr %i.m, align 8, !tbaa !50
  %i.cv = ashr i32 %i.ao, %.val.i.i
  %.val5.i.i = load i32, ptr %i.n, align 4, !tbaa !51
  %i.cw = and i32 %.val5.i.i, %i.ao
  %.val6.i.i = load ptr, ptr %i.o, align 8, !tbaa !52
  %i.cx = sext i32 %i.cv to i64
  %i.cy = getelementptr inbounds [8 x i8], ptr %.val6.i.i, i64 %i.cx
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !53
  %i.da = sext i32 %i.cw to i64
  %i.db = getelementptr inbounds [4 x i8], ptr %i.cz, i64 %i.da ; 7 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 4 ; 7 uses
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !40 ; 2 uses
  %i.de = icmp eq i32 %i.dd, %i.aj
  br i1 %i.de, label %bb.k, label %bb.l

bb.k:                                             ; preds = %clause_read.exit
  %i.df = getelementptr inbounds nuw i8, ptr %i.db, i64 8 ; 2 uses
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !40 ; 2 uses
  store i32 %i.dg, ptr %i.dc, align 4, !tbaa !40
  store i32 %i.aj, ptr %i.df, align 4, !tbaa !40
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %clause_read.exit
  %i.dh = phi i32 [ %i.dg, %bb.k ], [ %i.dd, %clause_read.exit ] ; 2 uses
  %i.di = ashr i32 %i.dh, 1
  %.val120 = load ptr, ptr %i.f, align 8, !tbaa !31 ; 2 uses
  %i.dj = sext i32 %i.di to i64
  %i.dk = getelementptr inbounds i8, ptr %.val120, i64 %i.dj
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !32
  %i.dm = sext i8 %i.dl to i32
  %i.dn = and i32 %i.dh, 1
  %i.do = icmp eq i32 %i.dn, %i.dm
  br i1 %i.do, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.dp = load i32, ptr %.092156, align 4, !tbaa !40
  %i.dq = getelementptr inbounds nuw i8, ptr %.090157, i64 4
  store i32 %i.dp, ptr %.090157, align 4, !tbaa !40
  br label %.thread

bb.n:                                             ; preds = %bb.l
  %.val128 = load i32, ptr %i.db, align 4         ; 2 uses
  %i.dr = lshr i32 %.val128, 9
  %i.ds = and i32 %i.dr, 8388604
  %.idx186 = zext nneg i32 %i.ds to i64
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dc, i64 %.idx186
  %.not117168 = icmp ugt i32 %.val128, 6143
  br i1 %.not117168, label %.lr.ph171.preheader, label %._crit_edge172

.lr.ph171.preheader:                              ; preds = %bb.n
  %i.du = getelementptr inbounds nuw i8, ptr %i.db, i64 12
  br label %.lr.ph171

.lr.ph171:                                        ; preds = %.lr.ph171.preheader, %bb.v
  %.0169 = phi ptr [ %i.fo, %bb.v ], [ %i.du, %.lr.ph171.preheader ] ; 3 uses
  %i.dv = load i32, ptr %.0169, align 4, !tbaa !40 ; 3 uses
  %i.dw = ashr i32 %i.dv, 1
  %i.dx = sext i32 %i.dw to i64
  %i.dy = getelementptr inbounds i8, ptr %.val120, i64 %i.dx
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !32
  %i.ea = sext i8 %i.dz to i32
  %i.eb = and i32 %i.dv, 1
  %i.ec = xor i32 %i.eb, %i.ea
  %.not116 = icmp eq i32 %i.ec, 1
  br i1 %.not116, label %bb.v, label %bb.o

bb.o:                                             ; preds = %.lr.ph171
  %i.ed = getelementptr inbounds nuw i8, ptr %i.db, i64 8 ; 2 uses
  store i32 %i.dv, ptr %i.ed, align 4, !tbaa !40
  store i32 %i.aj, ptr %.0169, align 4, !tbaa !40
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !40
  %i.ef = xor i32 %i.ee, 1
  %.val125 = load ptr, ptr %i.d, align 8, !tbaa !43
  %i.eg = sext i32 %i.ef to i64
  %i.eh = getelementptr inbounds [16 x i8], ptr %.val125, i64 %i.eg ; 6 uses
  %i.ei = load i32, ptr %.092156, align 4, !tbaa !40
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eh, i64 4 ; 3 uses
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !44 ; 5 uses
  %i.el = load i32, ptr %i.eh, align 8, !tbaa !45
  %i.em = icmp eq i32 %i.ek, %i.el
  br i1 %i.em, label %bb.p, label %veci_push.exit

bb.p:                                             ; preds = %bb.o
  %i.en = icmp slt i32 %i.ek, 4
  %i.eo = shl nsw i32 %i.ek, 1
  %i.ep = lshr i32 %i.ek, 1
  %i.eq = mul nuw nsw i32 %i.ep, 3
  %i.er = select i1 %i.en, i32 %i.eo, i32 %i.eq   ; 3 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.eh, i64 8 ; 2 uses
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !41 ; 2 uses
  %.not.i129 = icmp eq ptr %i.et, null
  %i.eu = sext i32 %i.er to i64
  %i.ev = shl nsw i64 %i.eu, 2                    ; 2 uses
  br i1 %.not.i129, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ew = tail call ptr @realloc(ptr noundef nonnull %i.et, i64 noundef %i.ev) #29
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.ex = tail call noalias ptr @malloc(i64 noundef %i.ev) #30
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ey = phi ptr [ %i.ew, %bb.q ], [ %i.ex, %bb.r ] ; 2 uses
  store ptr %i.ey, ptr %i.es, align 8, !tbaa !41
  %i.ez = icmp eq ptr %i.ey, null
  br i1 %i.ez, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.fa = load i32, ptr %i.eh, align 8, !tbaa !45
  %i.fb = sitofp i32 %i.fa to double
  %i.fc = fmul nnan double %i.fb, f0x3EB0000000000000
  %i.fd = sitofp i32 %i.er to double
  %i.fe = fmul nnan double %i.fd, f0x3EB0000000000000
  %i.ff = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, double noundef %i.fc, double noundef %i.fe) ; 0 uses
  %i.fg = load ptr, ptr @stdout, align 8, !tbaa !46
  %i.fh = tail call i32 @fflush(ptr noundef %i.fg) ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  store i32 %i.er, ptr %i.eh, align 8, !tbaa !45
  %.pre.i = load i32, ptr %i.ej, align 4, !tbaa !44
  br label %veci_push.exit

veci_push.exit:                                   ; preds = %bb.o, %bb.u
  %i.fi = phi i32 [ %.pre.i, %bb.u ], [ %i.ek, %bb.o ] ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !41
  %i.fl = add nsw i32 %i.fi, 1
  store i32 %i.fl, ptr %i.ej, align 4, !tbaa !44
  %i.fm = sext i32 %i.fi to i64
  %i.fn = getelementptr inbounds [4 x i8], ptr %i.fk, i64 %i.fm
  store i32 %i.ei, ptr %i.fn, align 4, !tbaa !40
  br label %.thread

bb.v:                                             ; preds = %.lr.ph171
  %i.fo = getelementptr inbounds nuw i8, ptr %.0169, i64 4 ; 2 uses
  %.not117 = icmp ult ptr %i.fo, %i.dt
  br i1 %.not117, label %.lr.ph171, label %._crit_edge172, !llvm.loop !106

._crit_edge172:                                   ; preds = %bb.v, %bb.n
  %i.fp = load i32, ptr %.092156, align 4, !tbaa !40 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %.090157, i64 4 ; 6 uses
  store i32 %i.fp, ptr %.090157, align 4, !tbaa !40
  %i.fr = load i32, ptr %i.db, align 4            ; 3 uses
  %i.fs = and i32 %i.fr, 1
  %.not113 = icmp eq i32 %i.fs, 0
  br i1 %.not113, label %bb.y, label %bb.w

bb.w:                                             ; preds = %._crit_edge172
  %i.ft = lshr i32 %i.fr, 11                      ; 4 uses
  %.not17.i = icmp eq i32 %i.ft, 0
  br i1 %.not17.i, label %sat_clause_compute_lbd.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.w
  %.val.i = load ptr, ptr %i.k, align 8, !tbaa !54 ; 3 uses
  %wide.trip.count.i = zext nneg i32 %i.ft to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.fu = icmp eq i32 %i.ft, 1
  br i1 %i.fu, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %wide.trip.count.i, 2097150
  br label %bb.x

bb.x:                                             ; preds = %bb.x, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.1, %bb.x ] ; 3 uses
  %.016.i = phi i32 [ 0, %.lr.ph.i.new ], [ %.1.i.1, %bb.x ]
  %.01115.i = phi i32 [ 0, %.lr.ph.i.new ], [ %.112.i.1, %bb.x ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.x ]
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv.i
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !40
  %i.fx = ashr i32 %i.fw, 1
  %i.fy = sext i32 %i.fx to i64
  %i.fz = getelementptr inbounds [4 x i8], ptr %.val.i, i64 %i.fy
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !40
  %i.gb = and i32 %i.ga, 31
  %i.gc = shl nuw i32 1, %i.gb                    ; 2 uses
  %i.gd = and i32 %i.gc, %.01115.i
  %.not.i130 = icmp eq i32 %i.gd, 0               ; 2 uses
  %i.ge = select i1 %.not.i130, i32 %i.gc, i32 0
  %.112.i = or i32 %i.ge, %.01115.i               ; 2 uses
  %i.gf = zext i1 %.not.i130 to i32
  %.1.i = add nuw nsw i32 %.016.i, %i.gf
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv.i
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 4
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !40
  %i.gj = ashr i32 %i.gi, 1
  %i.gk = sext i32 %i.gj to i64
  %i.gl = getelementptr inbounds [4 x i8], ptr %.val.i, i64 %i.gk
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !40
  %i.gn = and i32 %i.gm, 31
  %i.go = shl nuw i32 1, %i.gn                    ; 2 uses
  %i.gp = and i32 %i.go, %.112.i
  %.not.i130.1 = icmp eq i32 %i.gp, 0             ; 2 uses
  %i.gq = select i1 %.not.i130.1, i32 %i.go, i32 0
  %.112.i.1 = or i32 %i.gq, %.112.i               ; 2 uses
  %i.gr = zext i1 %.not.i130.1 to i32
  %.1.i.1 = add nuw nsw i32 %.1.i, %i.gr          ; 3 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %sat_clause_compute_lbd.exit.loopexit.unr-lcssa, label %bb.x, !llvm.loop !1

sat_clause_compute_lbd.exit.loopexit.unr-lcssa:   ; preds = %bb.x
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %sat_clause_compute_lbd.exit.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %sat_clause_compute_lbd.exit.loopexit.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.1, %sat_clause_compute_lbd.exit.loopexit.unr-lcssa ]
  %.016.i.epil.init = phi i32 [ 0, %.lr.ph.i ], [ %.1.i.1, %sat_clause_compute_lbd.exit.loopexit.unr-lcssa ]
  %.01115.i.epil.init = phi i32 [ 0, %.lr.ph.i ], [ %.112.i.1, %sat_clause_compute_lbd.exit.loopexit.unr-lcssa ]
  %lcmp.mod294 = trunc i32 %i.ft to i1
  tail call void @llvm.assume(i1 %lcmp.mod294)
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv.i.epil.init
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !40
  %i.gu = ashr i32 %i.gt, 1
  %i.gv = sext i32 %i.gu to i64
  %i.gw = getelementptr inbounds [4 x i8], ptr %.val.i, i64 %i.gv
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !40
  %i.gy = and i32 %i.gx, 31
  %i.gz = xor i32 %.01115.i.epil.init, -1
  %i.ha = lshr i32 %i.gz, %i.gy
  %i.hb = and i32 %i.ha, 1
  %.1.i.epil = add nuw nsw i32 %.016.i.epil.init, %i.hb
  br label %sat_clause_compute_lbd.exit.loopexit

sat_clause_compute_lbd.exit.loopexit:             ; preds = %sat_clause_compute_lbd.exit.loopexit.unr-lcssa, %.epil.preheader
  %.1.i.lcssa = phi i32 [ %.1.i.1, %sat_clause_compute_lbd.exit.loopexit.unr-lcssa ], [ %.1.i.epil, %.epil.preheader ]
  %i.hc = shl i32 %.1.i.lcssa, 3
  %i.hd = and i32 %i.hc, 2040
  br label %sat_clause_compute_lbd.exit

sat_clause_compute_lbd.exit:                      ; preds = %sat_clause_compute_lbd.exit.loopexit, %bb.w
  %.0.lcssa.i = phi i32 [ 0, %bb.w ], [ %i.hd, %sat_clause_compute_lbd.exit.loopexit ]
  %i.he = and i32 %i.fr, -2041
  %i.hf = or disjoint i32 %.0.lcssa.i, %i.he
  store i32 %i.hf, ptr %i.db, align 4
  %.pre = load i32, ptr %.092156, align 4, !tbaa !40
  br label %bb.y

bb.y:                                             ; preds = %sat_clause_compute_lbd.exit, %._crit_edge172
  %i.hg = phi i32 [ %.pre, %sat_clause_compute_lbd.exit ], [ %i.fp, %._crit_edge172 ]
  %i.hh = load i32, ptr %i.dc, align 4, !tbaa !40 ; 4 uses
  %i.hi = ashr i32 %i.hh, 1
  %i.hj = load ptr, ptr %i.g, align 8, !tbaa !65
  %i.hk = sext i32 %i.hi to i64                   ; 4 uses
  %i.hl = getelementptr inbounds i8, ptr %i.hj, i64 %i.hk ; 2 uses
  %i.hm = load i8, ptr %i.hl, align 1, !tbaa !32
  %i.hn = icmp eq i8 %i.hm, 0
  br i1 %i.hn, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i8 1, ptr %i.hl, align 1, !tbaa !32
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.val24.i131 = load ptr, ptr %i.f, align 8, !tbaa !31
  %i.ho = getelementptr inbounds i8, ptr %.val24.i131, i64 %i.hk ; 2 uses
  %i.hp = load i8, ptr %i.ho, align 1, !tbaa !32  ; 2 uses
  %.not.i132 = icmp eq i8 %i.hp, 3
  br i1 %.not.i132, label %sat_solver_enqueue.exit136.thread, label %sat_solver_enqueue.exit136

sat_solver_enqueue.exit136.thread:                ; preds = %bb.aa
  %i.hq = trunc i32 %i.hh to i8
  %i.hr = and i8 %i.hq, 1
  store i8 %i.hr, ptr %i.ho, align 1, !tbaa !32
  %.val26.i134 = load i32, ptr %i.j, align 4, !tbaa !44
  %.val27.i135 = load ptr, ptr %i.k, align 8, !tbaa !54
  %i.hs = getelementptr inbounds [4 x i8], ptr %.val27.i135, i64 %i.hk
  store i32 %.val26.i134, ptr %i.hs, align 4, !tbaa !40
  %i.ht = load ptr, ptr %i.l, align 8, !tbaa !66
  %i.hu = getelementptr inbounds [4 x i8], ptr %i.ht, i64 %i.hk
  store i32 %i.hg, ptr %i.hu, align 4, !tbaa !40
  %i.hv = load ptr, ptr %i.c, align 8, !tbaa !63
  %i.hw = load i32, ptr %i.a, align 4, !tbaa !61  ; 2 uses
  %i.hx = add nsw i32 %i.hw, 1
  store i32 %i.hx, ptr %i.a, align 4, !tbaa !61
  %i.hy = sext i32 %i.hw to i64
  %i.hz = getelementptr inbounds [4 x i8], ptr %i.hv, i64 %i.hy
  store i32 %i.hh, ptr %i.hz, align 4, !tbaa !40
  br label %.thread

sat_solver_enqueue.exit136:                       ; preds = %bb.aa
  %i.ia = sext i8 %i.hp to i32
  %i.ib = and i32 %i.hh, 1
  %.not146 = icmp eq i32 %i.ib, %i.ia
  br i1 %.not146, label %.thread, label %bb.ab

bb.ab:                                            ; preds = %sat_solver_enqueue.exit136
  %i.ic = load i32, ptr %.092156, align 4, !tbaa !40 ; 3 uses
  %.496173 = getelementptr inbounds nuw i8, ptr %.092156, i64 4 ; 5 uses
  %i.id = icmp ult ptr %.496173, %i.ad
  br i1 %i.id, label %.lr.ph177.preheader, label %.thread

.lr.ph177.preheader:                              ; preds = %bb.ab
  %i.ie = shl i64 %indvar, 2
  %i.if = add i64 %i.ie, %.092.ph181248
  %i.ig = sub i64 %i.al, %i.if                    ; 2 uses
  %i.ih = lshr i64 %i.ig, 2
  %i.ii = add nuw nsw i64 %i.ih, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ig, 28
  %i.ij = sub i64 %.092.ph181248, %.090.ph182247
  %diff.check = icmp ugt i64 %i.ij, -32
  %or.cond272 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond272, label %.lr.ph177.preheader273, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph177.preheader
  %n.vec = and i64 %i.ii, 9223372036854775800     ; 3 uses
  %i.ik = shl i64 %n.vec, 2                       ; 2 uses
  %i.il = getelementptr i8, ptr %.496173, i64 %i.ik ; 2 uses
  %i.im = getelementptr i8, ptr %i.fq, i64 %i.ik  ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.in = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.496173, i64 %i.in ; 2 uses
  %next.gep250 = getelementptr i8, ptr %i.fq, i64 %i.in ; 2 uses
  %i.io = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !40
  %wide.load251 = load <4 x i32>, ptr %i.io, align 4, !tbaa !40
  %i.ip = getelementptr i8, ptr %next.gep250, i64 16
  store <4 x i32> %wide.load, ptr %next.gep250, align 4, !tbaa !40
  store <4 x i32> %wide.load251, ptr %i.ip, align 4, !tbaa !40
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.iq = icmp eq i64 %index.next, %n.vec
  br i1 %i.iq, label %middle.block, label %vector.body, !llvm.loop !107

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ii, %n.vec
  br i1 %cmp.n, label %.thread, label %.lr.ph177.preheader273

.lr.ph177.preheader273:                           ; preds = %.lr.ph177.preheader, %middle.block
  %.496175.ph = phi ptr [ %.496173, %.lr.ph177.preheader ], [ %i.il, %middle.block ]
  %.4174.ph = phi ptr [ %i.fq, %.lr.ph177.preheader ], [ %i.im, %middle.block ]
  br label %.lr.ph177

.lr.ph177:                                        ; preds = %.lr.ph177.preheader273, %.lr.ph177
  %.496175 = phi ptr [ %.496, %.lr.ph177 ], [ %.496175.ph, %.lr.ph177.preheader273 ] ; 2 uses
  %.4174 = phi ptr [ %i.is, %.lr.ph177 ], [ %.4174.ph, %.lr.ph177.preheader273 ] ; 2 uses
  %i.ir = load i32, ptr %.496175, align 4, !tbaa !40
  %i.is = getelementptr inbounds nuw i8, ptr %.4174, i64 4 ; 2 uses
  store i32 %i.ir, ptr %.4174, align 4, !tbaa !40
  %.496 = getelementptr inbounds nuw i8, ptr %.496175, i64 4 ; 3 uses
  %i.it = icmp ult ptr %.496, %i.ad
  br i1 %i.it, label %.lr.ph177, label %.thread, !llvm.loop !108

.thread:                                          ; preds = %.lr.ph165, %.lr.ph177, %middle.block266, %middle.block, %bb.i, %bb.ab, %sat_solver_enqueue.exit.thread, %sat_solver_enqueue.exit, %sat_solver_enqueue.exit136.thread, %veci_push.exit, %sat_solver_enqueue.exit136, %bb.m
  %.8110 = phi i32 [ %.1103.ph180, %sat_solver_enqueue.exit136.thread ], [ %.1103.ph180, %bb.m ], [ %.1103.ph180, %veci_push.exit ], [ %.1103.ph180, %sat_solver_enqueue.exit136 ], [ %.1103.ph180, %sat_solver_enqueue.exit ], [ %.1103.ph180, %sat_solver_enqueue.exit.thread ], [ %i.ic, %bb.ab ], [ %i.bv, %bb.i ], [ %i.ic, %middle.block ], [ %i.bv, %middle.block266 ], [ %i.ic, %.lr.ph177 ], [ %i.bv, %.lr.ph165 ] ; 2 uses
  %.9101 = phi ptr [ %.092156, %sat_solver_enqueue.exit136.thread ], [ %.092156, %bb.m ], [ %.092156, %veci_push.exit ], [ %.092156, %sat_solver_enqueue.exit136 ], [ %.092156, %sat_solver_enqueue.exit ], [ %.092156, %sat_solver_enqueue.exit.thread ], [ %.496173, %bb.ab ], [ %.193161, %bb.i ], [ %i.il, %middle.block ], [ %i.cj, %middle.block266 ], [ %.496, %.lr.ph177 ], [ %.193, %.lr.ph165 ]
  %.9 = phi ptr [ %i.fq, %sat_solver_enqueue.exit136.thread ], [ %i.dq, %bb.m ], [ %.090157, %veci_push.exit ], [ %i.fq, %sat_solver_enqueue.exit136 ], [ %i.ay, %sat_solver_enqueue.exit ], [ %i.ay, %sat_solver_enqueue.exit.thread ], [ %i.fq, %bb.ab ], [ %i.ay, %bb.i ], [ %i.im, %middle.block ], [ %i.ck, %middle.block266 ], [ %i.is, %.lr.ph177 ], [ %i.cq, %.lr.ph165 ] ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %.9101, i64 4 ; 2 uses
  %i.iv = icmp ult ptr %i.iu, %i.ad
  br i1 %i.iv, label %.lr.ph, label %.outer._crit_edge, !llvm.loop !109

.outer._crit_edge:                                ; preds = %.thread, %bb.j, %bb.c
  %.1103.ph.lcssa = phi i32 [ %.1103.ph180, %bb.j ], [ 0, %bb.c ], [ %.8110, %.thread ] ; 2 uses
  %.090.lcssa = phi ptr [ %i.ct, %bb.j ], [ %.val124, %bb.c ], [ %.9, %.thread ]
  %.val123 = load ptr, ptr %i.aa, align 8, !tbaa !41
  %i.iw = ptrtoint ptr %.090.lcssa to i64
  %i.ix = ptrtoint ptr %.val123 to i64
  %i.iy = sub i64 %i.iw, %i.ix                    ; 2 uses
  %i.iz = ashr exact i64 %i.iy, 2
  %i.ja = load i64, ptr %i.p, align 8, !tbaa !111
  %i.jb = add nsw i64 %i.iz, %i.ja
  store i64 %i.jb, ptr %i.p, align 8, !tbaa !111
  %i.jc = lshr exact i64 %i.iy, 2
  %i.jd = trunc i64 %i.jc to i32
  store i32 %i.jd, ptr %i.ab, align 4, !tbaa !44
  %i.je = icmp eq i32 %.1103.ph.lcssa, 0
  br i1 %i.je, label %bb.b, label %.critedge, !llvm.loop !110

.critedge:                                        ; preds = %.outer._crit_edge, %bb.b
  %.0102.lcssa = phi i32 [ %.1103.ph.lcssa, %.outer._crit_edge ], [ 0, %bb.b ]
  ret i32 %.0102.lcssa
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable
define noalias noundef ptr @sat_solver_new() local_unnamed_addr #6 {
clause_read.exit:
  %i.a = tail call noalias dereferenceable_or_null(728) ptr @calloc(i64 noundef 728, i64 noundef 1) #31 ; 32 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 60
  store i32 256, ptr %i.c, align 4, !tbaa !58
  %i.d = tail call noalias dereferenceable_or_null(2048) ptr @calloc(i64 noundef 256, i64 noundef 8) #31 ; 3 uses
  %i.e = getelementptr i8, ptr %i.a, i64 64
  store ptr %i.d, ptr %i.e, align 8, !tbaa !52
  %i.f = tail call noalias dereferenceable_or_null(524288) ptr @malloc(i64 noundef 524288) #30 ; 3 uses
  store ptr %i.f, ptr %i.d, align 8, !tbaa !53
  %i.g = tail call noalias dereferenceable_or_null(524288) ptr @malloc(i64 noundef 524288) #30 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.g, ptr %i.h, align 8, !tbaa !53
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  store <4 x i32> <i32 1, i32 17, i32 131071, i32 131072>, ptr %i.i, align 4, !tbaa !40
  store i32 2, ptr %i.g, align 4, !tbaa !40
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i32 -1, ptr %i.j, align 8, !tbaa !49
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  store i32 4096, ptr %i.k, align 4
  store i32 1, ptr %i.b, align 8, !tbaa !40
  store i32 6, ptr %i.f, align 4, !tbaa !40
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 76
  store i32 2, ptr %i.l, align 4, !tbaa !67
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store ptr %i.k, ptr %i.m, align 8, !tbaa !68
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 472
  store <4 x i32> <i32 10000, i32 10000, i32 1000, i32 50>, ptr %i.n, align 8, !tbaa !40
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 296
  store i32 4, ptr %i.o, align 8, !tbaa !45
  %i.p = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #30
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 304
  store ptr %i.p, ptr %i.q, align 8, !tbaa !41
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 312
  store i32 4, ptr %i.r, align 8, !tbaa !45
  %i.s = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #30
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 320
  store ptr %i.s, ptr %i.t, align 8, !tbaa !41
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 264
  store i32 4, ptr %i.u, align 8, !tbaa !45
  %i.v = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #30
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 272
  store ptr %i.v, ptr %i.w, align 8, !tbaa !41
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  store i32 4, ptr %i.x, align 8, !tbaa !45
  %i.y = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #30
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  store ptr %i.y, ptr %i.z, align 8, !tbaa !41
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 280
  store i32 4, ptr %i.aa, align 8, !tbaa !45
  %i.ab = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #30
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 288
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !41
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 560
  store i32 4, ptr %i.ad, align 8, !tbaa !45
  %i.ae = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #30
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 568
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !41
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 648
  store i32 4, ptr %i.ag, align 8, !tbaa !45
  %i.ah = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #30
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 656
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !41
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 336
  store i32 4, ptr %i.aj, align 8, !tbaa !45
  %i.ak = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #30
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 344
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !41
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  store i64 32, ptr %i.am, align 8, !tbaa !37
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  store i64 -1, ptr %i.an, align 8, !tbaa !38
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  store i32 2048, ptr %i.ao, align 8, !tbaa !56
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 164
  store i32 -1, ptr %i.ap, align 4, !tbaa !69
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 520
  store i32 4, ptr %i.aq, align 8, !tbaa !45
  %i.ar = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #30
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 528
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !41
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 368
  store double f0x4195D9C3F4000000, ptr %i.at, align 8, !tbaa !70
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable
define noalias noundef ptr @zsat_solver_new_seed(double noundef %0) local_unnamed_addr #6 {
clause_read.exit:
  %i.a = tail call noalias dereferenceable_or_null(728) ptr @calloc(i64 noundef 728, i64 noundef 1) #31 ; 32 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 60
  store i32 256, ptr %i.c, align 4, !tbaa !58
  %i.d = tail call noalias dereferenceable_or_null(2048) ptr @calloc(i64 noundef 256, i64 noundef 8) #31 ; 3 uses
  %i.e = getelementptr i8, ptr %i.a, i64 64
  store ptr %i.d, ptr %i.e, align 8, !tbaa !52
  %i.f = tail call noalias dereferenceable_or_null(131072) ptr @malloc(i64 noundef 131072) #30 ; 3 uses
  store ptr %i.f, ptr %i.d, align 8, !tbaa !53
  %i.g = tail call noalias dereferenceable_or_null(131072) ptr @malloc(i64 noundef 131072) #30 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.g, ptr %i.h, align 8, !tbaa !53
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  store <4 x i32> <i32 1, i32 15, i32 32767, i32 32768>, ptr %i.i, align 4, !tbaa !40
  store i32 2, ptr %i.g, align 4, !tbaa !40
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i32 -1, ptr %i.j, align 8, !tbaa !49
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  store i32 4096, ptr %i.k, align 4
  store i32 1, ptr %i.b, align 8, !tbaa !40
  store i32 6, ptr %i.f, align 4, !tbaa !40
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 76
  store i32 2, ptr %i.l, align 4, !tbaa !67
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store ptr %i.k, ptr %i.m, align 8, !tbaa !68
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 472
  store <4 x i32> <i32 10000, i32 10000, i32 1000, i32 50>, ptr %i.n, align 8, !tbaa !40
end_hunk_0
