Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/satSolver?download=true
inline.NumInlined: 548
inline.NumDeleted: 94
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 16
begin_hunk_0_@Sat_MemAppend:bb.a
  %i.y = tail call ptr @realloc(ptr noundef nonnull %i.b, i64 noundef %i.x) #29 ; 3 uses
  store ptr %i.y, ptr %i.a, align 8, !tbaa !48
  %i.z = load i32, ptr %i.t, align 4, !tbaa !55   ; 2 uses
  %i.aa = sext i32 %i.z to i64                    ; 2 uses
  %i.ab = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.aa
  %i.ac = shl nsw i64 %i.aa, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ab, i8 0, i64 %i.ac, i1 false)
  %i.ad = shl nsw i32 %i.z, 1
  store i32 %i.ad, ptr %i.t, align 4, !tbaa !55
  %.pre = load i32, ptr %i.e, align 4, !tbaa !33
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ae = phi i32 [ %.pre, %bb.c ], [ %i.s, %bb.b ]
  %i.af = phi ptr [ %i.y, %bb.c ], [ %i.b, %bb.b ] ; 2 uses
  %i.ag = sext i32 %i.ae to i64
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.ag
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !49 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ak = load i32, ptr %i.p, align 8, !tbaa !46
  %i.al = zext nneg i32 %i.ak to i64
  %sext = shl i64 4294967296, %i.al
  %i.am = ashr exact i64 %sext, 30
  %i.an = tail call noalias ptr @malloc(i64 noundef %i.am) #30 ; 2 uses
  %i.ao = load i32, ptr %i.e, align 4, !tbaa !33
  %i.ap = sext i32 %i.ao to i64
  %i.aq = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.ap
  store ptr %i.an, ptr %i.aq, align 8, !tbaa !49
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ar = phi ptr [ %i.an, %bb.e ], [ %i.ai, %bb.d ] ; 2 uses
  store i32 2, ptr %i.ar, align 4, !tbaa !33
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.a
  %.0.val65 = phi i32 [ 2, %bb.f ], [ %.val, %bb.a ]
  %.0 = phi ptr [ %i.ar, %bb.f ], [ %i.i, %bb.a ] ; 5 uses
  %i.as = sext i32 %.0.val65 to i64
  %i.at = getelementptr inbounds [4 x i8], ptr %.0, i64 %i.as
  store i32 0, ptr %i.at, align 4, !tbaa !33
  %.0.val = load i32, ptr %.0, align 4, !tbaa !33
  %i.au = sext i32 %.0.val to i64
  %i.av = getelementptr inbounds [4 x i8], ptr %.0, i64 %i.au ; 4 uses
  %i.aw = load i32, ptr %i.av, align 4
  %i.ax = shl i32 %2, 11
  %i.ay = and i32 %i.aw, 2046
  %i.az = and i32 %3, 1
  %i.ba = or disjoint i32 %i.ay, %i.az
  %i.bb = or disjoint i32 %i.ba, %i.ax
  store i32 %i.bb, ptr %i.av, align 4
  %.not63 = icmp eq ptr %1, null
  br i1 %.not63, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bc = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  %i.bd = sext i32 %2 to i64
  %i.be = shl nsw i64 %i.bd, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bc, ptr nonnull align 4 %1, i64 %i.be, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.not64 = icmp eq i32 %3, 0
  %.phi.trans.insert = getelementptr inbounds [4 x i8], ptr %0, i64 %i.d
  %.pre67 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !33 ; 2 uses
  br i1 %.not64, label %._crit_edge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  %i.bg = and i32 %2, 2097151
  %i.bh = zext nneg i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %i.bh
  store i32 %.pre67, ptr %i.bi, align 4, !tbaa !33
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.i, %bb.j
  %i.bj = getelementptr inbounds [4 x i8], ptr %0, i64 %i.d
  %i.bk = add nsw i32 %.pre67, 1
  store i32 %i.bk, ptr %i.bj, align 4, !tbaa !33
  %i.bl = load i32, ptr %.0, align 4, !tbaa !33
  %i.bm = add nsw i32 %i.bl, %i.m
  store i32 %i.bm, ptr %.0, align 4, !tbaa !33
  %i.bn = load i32, ptr %i.e, align 4, !tbaa !33  ; 2 uses
  %i.bo = load i32, ptr %i.p, align 8, !tbaa !46
  %i.bp = shl i32 %i.bn, %i.bo
  %i.bq = load ptr, ptr %i.a, align 8, !tbaa !48
  %i.br = sext i32 %i.bn to i64
  %i.bs = getelementptr inbounds [8 x i8], ptr %i.bq, i64 %i.br
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !49
  %.val.i = load i32, ptr %i.bt, align 4, !tbaa !33
  %i.bu = or i32 %.val.i, %i.bp
  %i.bv = sub nsw i32 %i.bu, %i.m
  ret i32 %i.bv
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define i32 @sat_solver_count_assigned(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !26     ; 3 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 208
  %.val = load ptr, ptr %i.c, align 8, !tbaa !8   ; 2 uses
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
  %wide.load = load <4 x i8>, ptr %i.d, align 1, !tbaa !25
  %wide.load11 = load <4 x i8>, ptr %i.e, align 1, !tbaa !25
  %i.f = icmp ne <4 x i8> %wide.load, splat (i8 3)
  %i.g = icmp ne <4 x i8> %wide.load11, splat (i8 3)
  %i.h = zext <4 x i1> %i.f to <4 x i32>
  %i.i = zext <4 x i1> %i.g to <4 x i32>
  %i.j = add <4 x i32> %vec.phi, %i.h             ; 2 uses
  %i.k = add <4 x i32> %vec.phi10, %i.i           ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.l = icmp eq i64 %index.next, %n.vec
  br i1 %i.l, label %middle.block, label %vector.body, !llvm.loop !56

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
  %i.o = load i8, ptr %i.n, align 1, !tbaa !25
  %.not = icmp ne i8 %i.o, 3
  %i.p = zext i1 %.not to i32
  %spec.select = add nuw nsw i32 %.08, %i.p       ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !59

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
  %i.q = load i32, ptr %i.a, align 4, !tbaa !60
  %i.r = load i32, ptr %i.b, align 8, !tbaa !61   ; 3 uses
  %i.s = icmp sgt i32 %i.q, %i.r
  br i1 %i.s, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.t = load ptr, ptr %i.c, align 8, !tbaa !62
  %i.u = add nsw i32 %i.r, 1
  store i32 %i.u, ptr %i.b, align 8, !tbaa !61
  %i.v = sext i32 %i.r to i64
  %i.w = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !33   ; 3 uses
  %.val126 = load ptr, ptr %i.d, align 8, !tbaa !39
  %i.y = sext i32 %i.x to i64
  %i.z = getelementptr inbounds [16 x i8], ptr %.val126, i64 %i.y ; 2 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 8       ; 2 uses
  %.val124 = load ptr, ptr %i.aa, align 8, !tbaa !34 ; 5 uses
  %i.ab = getelementptr i8, ptr %i.z, i64 4       ; 2 uses
  %.val127 = load i32, ptr %i.ab, align 4, !tbaa !40 ; 2 uses
  %i.ac = sext i32 %.val127 to i64
  %.idx = shl nsw i64 %i.ac, 2                    ; 3 uses
  %i.ad = getelementptr inbounds i8, ptr %.val124, i64 %.idx ; 6 uses
  %i.ae = load i64, ptr %i.e, align 8, !tbaa !63
  %i.af = add nsw i64 %i.ae, 1
  store i64 %i.af, ptr %i.e, align 8, !tbaa !63
  %i.ag = icmp sgt i32 %.val127, 0
  br i1 %i.ag, label %.lr.ph.lr.ph, label %.outer._crit_edge

.lr.ph.lr.ph:                                     ; preds = %bb.c
  %.val124249 = ptrtoaddr ptr %.val124 to i64     ; 2 uses
  %i.ah = shl nsw i32 %i.x, 1
  %i.ai = or disjoint i32 %i.ah, 1
  %i.aj = xor i32 %i.x, 1                         ; 4 uses
  %1 = add i64 %.val124249, -5
  %i.ak = add i64 %1, %.idx
  %2 = add i64 %.val124249, -5
  %i.al = add i64 %2, %.idx
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.lr.ph, %.thread
  %.090.ph182 = phi ptr [ %.val124, %.lr.ph.lr.ph ], [ %.9, %.thread ] ; 2 uses
  %.092.ph181 = phi ptr [ %.val124, %.lr.ph.lr.ph ], [ %i.iq, %.thread ] ; 2 uses
  %.1103.ph180 = phi i32 [ 0, %.lr.ph.lr.ph ], [ %.8110, %.thread ] ; 7 uses
  %.090.ph182247 = ptrtoaddr ptr %.090.ph182 to i64 ; 2 uses
  %.092.ph181248 = ptrtoaddr ptr %.092.ph181 to i64 ; 4 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.j
  %indvar = phi i64 [ 0, %.lr.ph ], [ %indvar.next, %bb.j ] ; 3 uses
  %.090157 = phi ptr [ %.090.ph182, %.lr.ph ], [ %i.cq, %bb.j ] ; 9 uses
  %.092156 = phi ptr [ %.092.ph181, %.lr.ph ], [ %i.cp, %bb.j ] ; 17 uses
  %i.am = load i32, ptr %.092156, align 4, !tbaa !33 ; 8 uses
  %i.an = and i32 %i.am, 1
  %.not = icmp eq i32 %i.an, 0
  br i1 %.not, label %clause_read.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ao = lshr i32 %i.am, 1
  %i.ap = ashr i32 %i.am, 2
  %.val121 = load ptr, ptr %i.f, align 8, !tbaa !8 ; 2 uses
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr inbounds i8, ptr %.val121, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !25
  %i.at = sext i8 %i.as to i32
  %i.au = and i32 %i.ao, 1
  %i.av = icmp eq i32 %i.au, %i.at
  br i1 %i.av, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aw = getelementptr inbounds nuw i8, ptr %.090157, i64 4 ; 6 uses
  store i32 %i.am, ptr %.090157, align 4, !tbaa !33
  %i.ax = load i32, ptr %.092156, align 4, !tbaa !33 ; 2 uses
  %i.ay = ashr i32 %i.ax, 1                       ; 3 uses
  %i.az = ashr i32 %i.ax, 2
  %i.ba = load ptr, ptr %i.g, align 8, !tbaa !64
  %i.bb = sext i32 %i.az to i64                   ; 4 uses
  %i.bc = getelementptr inbounds i8, ptr %i.ba, i64 %i.bb ; 2 uses
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !25
  %i.be = icmp eq i8 %i.bd, 0
  br i1 %i.be, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i8 1, ptr %i.bc, align 1, !tbaa !25
  %.val24.i.pre = load ptr, ptr %i.f, align 8, !tbaa !8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.val24.i = phi ptr [ %.val24.i.pre, %bb.g ], [ %.val121, %bb.f ]
  %i.bf = getelementptr inbounds i8, ptr %.val24.i, i64 %i.bb ; 2 uses
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !25  ; 2 uses
  %.not.i = icmp eq i8 %i.bg, 3
  br i1 %.not.i, label %sat_solver_enqueue.exit.thread, label %sat_solver_enqueue.exit

sat_solver_enqueue.exit.thread:                   ; preds = %bb.h
  %i.bh = trunc i32 %i.ay to i8
  %i.bi = and i8 %i.bh, 1
  store i8 %i.bi, ptr %i.bf, align 1, !tbaa !25
  %.val26.i = load i32, ptr %i.j, align 4, !tbaa !40
  %.val27.i = load ptr, ptr %i.k, align 8, !tbaa !50
  %i.bj = getelementptr inbounds [4 x i8], ptr %.val27.i, i64 %i.bb
  store i32 %.val26.i, ptr %i.bj, align 4, !tbaa !33
  %i.bk = load ptr, ptr %i.l, align 8, !tbaa !65
  %i.bl = getelementptr inbounds [4 x i8], ptr %i.bk, i64 %i.bb
  store i32 %i.ai, ptr %i.bl, align 4, !tbaa !33
  %i.bm = load ptr, ptr %i.c, align 8, !tbaa !62
  %i.bn = load i32, ptr %i.a, align 4, !tbaa !60  ; 2 uses
  %i.bo = add nsw i32 %i.bn, 1
  store i32 %i.bo, ptr %i.a, align 4, !tbaa !60
  %i.bp = sext i32 %i.bn to i64
  %i.bq = getelementptr inbounds [4 x i8], ptr %i.bm, i64 %i.bp
  store i32 %i.ay, ptr %i.bq, align 4, !tbaa !33
  br label %.thread

sat_solver_enqueue.exit:                          ; preds = %bb.h
  %i.br = sext i8 %i.bg to i32
  %i.bs = and i32 %i.ay, 1
  %.not145 = icmp eq i32 %i.bs, %i.br
  br i1 %.not145, label %.thread, label %bb.i

bb.i:                                             ; preds = %sat_solver_enqueue.exit
  %i.bt = load i32, ptr %i.h, align 4, !tbaa !66  ; 3 uses
  %i.bu = load ptr, ptr %i.i, align 8, !tbaa !67  ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 4
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store i32 %i.aj, ptr %i.bw, align 4, !tbaa !33
  %i.bx = load i32, ptr %.092156, align 4, !tbaa !33
  %i.by = ashr i32 %i.bx, 1
  store i32 %i.by, ptr %i.bv, align 4, !tbaa !33
  %.193161 = getelementptr inbounds nuw i8, ptr %.092156, i64 4 ; 5 uses
  %i.bz = icmp ult ptr %.193161, %i.ad
  br i1 %i.bz, label %.lr.ph165.preheader, label %.thread

.lr.ph165.preheader:                              ; preds = %bb.i
  %i.ca = shl i64 %indvar, 2
  %i.cb = add i64 %i.ca, %.092.ph181248
  %3 = sub i64 %i.al, %i.cb                       ; 2 uses
  %i.cc = lshr i64 %3, 2
  %i.cd = add nuw nsw i64 %i.cc, 1                ; 2 uses
  %min.iters.check255 = icmp ult i64 %3, 28
  %i.ce = sub i64 %.092.ph181248, %.090.ph182247
  %diff.check253 = icmp ugt i64 %i.ce, -32
  %or.cond = select i1 %min.iters.check255, i1 true, i1 %diff.check253
  br i1 %or.cond, label %.lr.ph165.preheader274, label %vector.ph256

vector.ph256:                                     ; preds = %.lr.ph165.preheader
  %n.vec257 = and i64 %i.cd, 9223372036854775800  ; 3 uses
  %i.cf = shl i64 %n.vec257, 2                    ; 2 uses
  %i.cg = getelementptr i8, ptr %.193161, i64 %i.cf ; 2 uses
  %i.ch = getelementptr i8, ptr %i.aw, i64 %i.cf  ; 2 uses
  br label %vector.body258

vector.body258:                                   ; preds = %vector.body258, %vector.ph256
  %index259 = phi i64 [ 0, %vector.ph256 ], [ %index.next264, %vector.body258 ] ; 2 uses
  %i.ci = shl i64 %index259, 2                    ; 2 uses
  %next.gep260 = getelementptr i8, ptr %.193161, i64 %i.ci ; 2 uses
  %next.gep261 = getelementptr i8, ptr %i.aw, i64 %i.ci ; 2 uses
  %i.cj = getelementptr i8, ptr %next.gep260, i64 16
  %wide.load262 = load <4 x i32>, ptr %next.gep260, align 4, !tbaa !33
  %wide.load263 = load <4 x i32>, ptr %i.cj, align 4, !tbaa !33
  %i.ck = getelementptr i8, ptr %next.gep261, i64 16
  store <4 x i32> %wide.load262, ptr %next.gep261, align 4, !tbaa !33
  store <4 x i32> %wide.load263, ptr %i.ck, align 4, !tbaa !33
  %index.next264 = add nuw i64 %index259, 8       ; 2 uses
  %i.cl = icmp eq i64 %index.next264, %n.vec257
  br i1 %i.cl, label %middle.block265, label %vector.body258, !llvm.loop !68

middle.block265:                                  ; preds = %vector.body258
  %cmp.n266 = icmp eq i64 %i.cd, %n.vec257
  br i1 %cmp.n266, label %.thread, label %.lr.ph165.preheader274

.lr.ph165.preheader274:                           ; preds = %.lr.ph165.preheader, %middle.block265
  %.193163.ph = phi ptr [ %.193161, %.lr.ph165.preheader ], [ %i.cg, %middle.block265 ]
  %.191162.ph = phi ptr [ %i.aw, %.lr.ph165.preheader ], [ %i.ch, %middle.block265 ]
  br label %.lr.ph165

.lr.ph165:                                        ; preds = %.lr.ph165.preheader274, %.lr.ph165
  %.193163 = phi ptr [ %.193, %.lr.ph165 ], [ %.193163.ph, %.lr.ph165.preheader274 ] ; 2 uses
  %.191162 = phi ptr [ %i.cn, %.lr.ph165 ], [ %.191162.ph, %.lr.ph165.preheader274 ] ; 2 uses
  %i.cm = load i32, ptr %.193163, align 4, !tbaa !33
  %i.cn = getelementptr inbounds nuw i8, ptr %.191162, i64 4 ; 2 uses
  store i32 %i.cm, ptr %.191162, align 4, !tbaa !33
  %.193 = getelementptr inbounds nuw i8, ptr %.193163, i64 4 ; 3 uses
  %i.co = icmp ult ptr %.193, %i.ad
  br i1 %i.co, label %.lr.ph165, label %.thread, !llvm.loop !69

bb.j:                                             ; preds = %bb.e
  %i.cp = getelementptr inbounds nuw i8, ptr %.092156, i64 4 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.090157, i64 4 ; 2 uses
  store i32 %i.am, ptr %.090157, align 4, !tbaa !33
  %i.cr = icmp ult ptr %i.cp, %i.ad
  %indvar.next = add i64 %indvar, 1
  br i1 %i.cr, label %bb.d, label %.outer._crit_edge

clause_read.exit:                                 ; preds = %bb.d
  %.not.i.i = icmp ne i32 %i.am, 0
  tail call void @llvm.assume(i1 %.not.i.i)
  %.val.i.i = load i32, ptr %i.m, align 8, !tbaa !46
  %i.cs = ashr i32 %i.am, %.val.i.i
  %.val5.i.i = load i32, ptr %i.n, align 4, !tbaa !47
  %i.ct = and i32 %.val5.i.i, %i.am
  %.val6.i.i = load ptr, ptr %i.o, align 8, !tbaa !48
  %i.cu = sext i32 %i.cs to i64
  %i.cv = getelementptr inbounds [8 x i8], ptr %.val6.i.i, i64 %i.cu
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !49
  %i.cx = sext i32 %i.ct to i64
  %i.cy = getelementptr inbounds [4 x i8], ptr %i.cw, i64 %i.cx ; 7 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 4 ; 7 uses
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !33 ; 2 uses
  %i.db = icmp eq i32 %i.da, %i.aj
  br i1 %i.db, label %bb.k, label %bb.l

bb.k:                                             ; preds = %clause_read.exit
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cy, i64 8 ; 2 uses
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !33 ; 2 uses
  store i32 %i.dd, ptr %i.cz, align 4, !tbaa !33
  store i32 %i.aj, ptr %i.dc, align 4, !tbaa !33
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %clause_read.exit
  %i.de = phi i32 [ %i.dd, %bb.k ], [ %i.da, %clause_read.exit ] ; 2 uses
  %i.df = ashr i32 %i.de, 1
  %.val120 = load ptr, ptr %i.f, align 8, !tbaa !8 ; 2 uses
  %i.dg = sext i32 %i.df to i64
  %i.dh = getelementptr inbounds i8, ptr %.val120, i64 %i.dg
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !25
  %i.dj = sext i8 %i.di to i32
  %i.dk = and i32 %i.de, 1
  %i.dl = icmp eq i32 %i.dk, %i.dj
  br i1 %i.dl, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.dm = load i32, ptr %.092156, align 4, !tbaa !33
  %i.dn = getelementptr inbounds nuw i8, ptr %.090157, i64 4
  store i32 %i.dm, ptr %.090157, align 4, !tbaa !33
  br label %.thread

bb.n:                                             ; preds = %bb.l
  %.val128 = load i32, ptr %i.cy, align 4         ; 2 uses
  %i.do = lshr i32 %.val128, 9
  %i.dp = and i32 %i.do, 8388604
  %.idx186 = zext nneg i32 %i.dp to i64
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cz, i64 %.idx186
  %.not117168 = icmp ugt i32 %.val128, 6143
  br i1 %.not117168, label %.lr.ph171.preheader, label %._crit_edge172

.lr.ph171.preheader:                              ; preds = %bb.n
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cy, i64 12
  br label %.lr.ph171

.lr.ph171:                                        ; preds = %.lr.ph171.preheader, %bb.v
  %.0169 = phi ptr [ %i.fl, %bb.v ], [ %i.dr, %.lr.ph171.preheader ] ; 3 uses
  %i.ds = load i32, ptr %.0169, align 4, !tbaa !33 ; 3 uses
  %i.dt = ashr i32 %i.ds, 1
  %i.du = sext i32 %i.dt to i64
  %i.dv = getelementptr inbounds i8, ptr %.val120, i64 %i.du
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !25
  %i.dx = sext i8 %i.dw to i32
  %i.dy = and i32 %i.ds, 1
  %i.dz = xor i32 %i.dy, %i.dx
  %.not116 = icmp eq i32 %i.dz, 1
  br i1 %.not116, label %bb.v, label %bb.o

bb.o:                                             ; preds = %.lr.ph171
  %i.ea = getelementptr inbounds nuw i8, ptr %i.cy, i64 8 ; 2 uses
  store i32 %i.ds, ptr %i.ea, align 4, !tbaa !33
  store i32 %i.aj, ptr %.0169, align 4, !tbaa !33
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !33
  %i.ec = xor i32 %i.eb, 1
  %.val125 = load ptr, ptr %i.d, align 8, !tbaa !39
  %i.ed = sext i32 %i.ec to i64
  %i.ee = getelementptr inbounds [16 x i8], ptr %.val125, i64 %i.ed ; 6 uses
  %i.ef = load i32, ptr %.092156, align 4, !tbaa !33
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ee, i64 4 ; 3 uses
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !40 ; 5 uses
  %i.ei = load i32, ptr %i.ee, align 8, !tbaa !41
  %i.ej = icmp eq i32 %i.eh, %i.ei
  br i1 %i.ej, label %bb.p, label %veci_push.exit

bb.p:                                             ; preds = %bb.o
  %i.ek = icmp slt i32 %i.eh, 4
  %i.el = shl nsw i32 %i.eh, 1
  %i.em = lshr i32 %i.eh, 1
  %i.en = mul nuw nsw i32 %i.em, 3
  %i.eo = select i1 %i.ek, i32 %i.el, i32 %i.en   ; 3 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ee, i64 8 ; 2 uses
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !34 ; 2 uses
  %.not.i129 = icmp eq ptr %i.eq, null
  %i.er = sext i32 %i.eo to i64
  %i.es = shl nsw i64 %i.er, 2                    ; 2 uses
  br i1 %.not.i129, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.et = tail call ptr @realloc(ptr noundef nonnull %i.eq, i64 noundef %i.es) #29
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.eu = tail call noalias ptr @malloc(i64 noundef %i.es) #30
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ev = phi ptr [ %i.et, %bb.q ], [ %i.eu, %bb.r ] ; 2 uses
  store ptr %i.ev, ptr %i.ep, align 8, !tbaa !34
  %i.ew = icmp eq ptr %i.ev, null
  br i1 %i.ew, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ex = load i32, ptr %i.ee, align 8, !tbaa !41
  %i.ey = sitofp i32 %i.ex to double
  %i.ez = fmul nnan double %i.ey, f0x3EB0000000000000
  %i.fa = sitofp i32 %i.eo to double
  %i.fb = fmul nnan double %i.fa, f0x3EB0000000000000
  %i.fc = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, double noundef %i.ez, double noundef %i.fb) ; 0 uses
  %i.fd = load ptr, ptr @stdout, align 8, !tbaa !42
  %i.fe = tail call i32 @fflush(ptr noundef %i.fd) ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  store i32 %i.eo, ptr %i.ee, align 8, !tbaa !41
  %.pre.i = load i32, ptr %i.eg, align 4, !tbaa !40
  br label %veci_push.exit

veci_push.exit:                                   ; preds = %bb.o, %bb.u
  %i.ff = phi i32 [ %.pre.i, %bb.u ], [ %i.eh, %bb.o ] ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !34
  %i.fi = add nsw i32 %i.ff, 1
  store i32 %i.fi, ptr %i.eg, align 4, !tbaa !40
  %i.fj = sext i32 %i.ff to i64
  %i.fk = getelementptr inbounds [4 x i8], ptr %i.fh, i64 %i.fj
  store i32 %i.ef, ptr %i.fk, align 4, !tbaa !33
  br label %.thread

bb.v:                                             ; preds = %.lr.ph171
  %i.fl = getelementptr inbounds nuw i8, ptr %.0169, i64 4 ; 2 uses
  %.not117 = icmp ult ptr %i.fl, %i.dq
  br i1 %.not117, label %.lr.ph171, label %._crit_edge172, !llvm.loop !70

._crit_edge172:                                   ; preds = %bb.v, %bb.n
  %i.fm = load i32, ptr %.092156, align 4, !tbaa !33 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.090157, i64 4 ; 6 uses
  store i32 %i.fm, ptr %.090157, align 4, !tbaa !33
  %i.fo = load i32, ptr %i.cy, align 4            ; 3 uses
  %i.fp = and i32 %i.fo, 1
  %.not113 = icmp eq i32 %i.fp, 0
  br i1 %.not113, label %bb.y, label %bb.w

bb.w:                                             ; preds = %._crit_edge172
  %i.fq = lshr i32 %i.fo, 11                      ; 4 uses
  %.not17.i = icmp eq i32 %i.fq, 0
  br i1 %.not17.i, label %sat_clause_compute_lbd.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.w
  %.val.i = load ptr, ptr %i.k, align 8, !tbaa !50 ; 3 uses
  %wide.trip.count.i = zext nneg i32 %i.fq to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.fr = icmp eq i32 %i.fq, 1
  br i1 %i.fr, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %wide.trip.count.i, 2097150
  br label %bb.x

bb.x:                                             ; preds = %bb.x, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.1, %bb.x ] ; 3 uses
  %.016.i = phi i32 [ 0, %.lr.ph.i.new ], [ %.1.i.1, %bb.x ]
  %.01115.i = phi i32 [ 0, %.lr.ph.i.new ], [ %.112.i.1, %bb.x ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.x ]
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %indvars.iv.i
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !33
  %i.fu = ashr i32 %i.ft, 1
  %i.fv = sext i32 %i.fu to i64
  %i.fw = getelementptr inbounds [4 x i8], ptr %.val.i, i64 %i.fv
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !33
  %i.fy = and i32 %i.fx, 31
  %i.fz = shl nuw i32 1, %i.fy                    ; 2 uses
  %i.ga = and i32 %i.fz, %.01115.i
  %.not.i130 = icmp eq i32 %i.ga, 0               ; 2 uses
  %i.gb = select i1 %.not.i130, i32 %i.fz, i32 0
  %.112.i = or i32 %i.gb, %.01115.i               ; 2 uses
  %i.gc = zext i1 %.not.i130 to i32
  %.1.i = add nuw nsw i32 %.016.i, %i.gc
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %indvars.iv.i
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 4
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !33
  %i.gg = ashr i32 %i.gf, 1
  %i.gh = sext i32 %i.gg to i64
  %i.gi = getelementptr inbounds [4 x i8], ptr %.val.i, i64 %i.gh
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !33
  %i.gk = and i32 %i.gj, 31
  %i.gl = shl nuw i32 1, %i.gk                    ; 2 uses
  %i.gm = and i32 %i.gl, %.112.i
  %.not.i130.1 = icmp eq i32 %i.gm, 0             ; 2 uses
  %i.gn = select i1 %.not.i130.1, i32 %i.gl, i32 0
  %.112.i.1 = or i32 %i.gn, %.112.i               ; 2 uses
  %i.go = zext i1 %.not.i130.1 to i32
  %.1.i.1 = add nuw nsw i32 %.1.i, %i.go          ; 3 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %sat_clause_compute_lbd.exit.loopexit.unr-lcssa, label %bb.x, !llvm.loop !51

sat_clause_compute_lbd.exit.loopexit.unr-lcssa:   ; preds = %bb.x
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %sat_clause_compute_lbd.exit.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %sat_clause_compute_lbd.exit.loopexit.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.1, %sat_clause_compute_lbd.exit.loopexit.unr-lcssa ]
  %.016.i.epil.init = phi i32 [ 0, %.lr.ph.i ], [ %.1.i.1, %sat_clause_compute_lbd.exit.loopexit.unr-lcssa ]
  %.01115.i.epil.init = phi i32 [ 0, %.lr.ph.i ], [ %.112.i.1, %sat_clause_compute_lbd.exit.loopexit.unr-lcssa ]
  %lcmp.mod294 = trunc i32 %i.fq to i1
  tail call void @llvm.assume(i1 %lcmp.mod294)
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %indvars.iv.i.epil.init
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !33
  %i.gr = ashr i32 %i.gq, 1
  %i.gs = sext i32 %i.gr to i64
  %i.gt = getelementptr inbounds [4 x i8], ptr %.val.i, i64 %i.gs
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !33
  %i.gv = and i32 %i.gu, 31
  %i.gw = xor i32 %.01115.i.epil.init, -1
  %i.gx = lshr i32 %i.gw, %i.gv
  %i.gy = and i32 %i.gx, 1
  %.1.i.epil = add nuw nsw i32 %.016.i.epil.init, %i.gy
  br label %sat_clause_compute_lbd.exit.loopexit

sat_clause_compute_lbd.exit.loopexit:             ; preds = %sat_clause_compute_lbd.exit.loopexit.unr-lcssa, %.epil.preheader
  %.1.i.lcssa = phi i32 [ %.1.i.1, %sat_clause_compute_lbd.exit.loopexit.unr-lcssa ], [ %.1.i.epil, %.epil.preheader ]
  %i.gz = shl i32 %.1.i.lcssa, 3
  %i.ha = and i32 %i.gz, 2040
  br label %sat_clause_compute_lbd.exit

sat_clause_compute_lbd.exit:                      ; preds = %sat_clause_compute_lbd.exit.loopexit, %bb.w
  %.0.lcssa.i = phi i32 [ 0, %bb.w ], [ %i.ha, %sat_clause_compute_lbd.exit.loopexit ]
  %i.hb = and i32 %i.fo, -2041
  %i.hc = or disjoint i32 %.0.lcssa.i, %i.hb
  store i32 %i.hc, ptr %i.cy, align 4
  %.pre = load i32, ptr %.092156, align 4, !tbaa !33
  br label %bb.y

bb.y:                                             ; preds = %sat_clause_compute_lbd.exit, %._crit_edge172
  %i.hd = phi i32 [ %.pre, %sat_clause_compute_lbd.exit ], [ %i.fm, %._crit_edge172 ]
  %i.he = load i32, ptr %i.cz, align 4, !tbaa !33 ; 4 uses
  %i.hf = ashr i32 %i.he, 1
  %i.hg = load ptr, ptr %i.g, align 8, !tbaa !64
  %i.hh = sext i32 %i.hf to i64                   ; 4 uses
  %i.hi = getelementptr inbounds i8, ptr %i.hg, i64 %i.hh ; 2 uses
  %i.hj = load i8, ptr %i.hi, align 1, !tbaa !25
  %i.hk = icmp eq i8 %i.hj, 0
  br i1 %i.hk, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i8 1, ptr %i.hi, align 1, !tbaa !25
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.val24.i131 = load ptr, ptr %i.f, align 8, !tbaa !8
  %i.hl = getelementptr inbounds i8, ptr %.val24.i131, i64 %i.hh ; 2 uses
  %i.hm = load i8, ptr %i.hl, align 1, !tbaa !25  ; 2 uses
  %.not.i132 = icmp eq i8 %i.hm, 3
  br i1 %.not.i132, label %sat_solver_enqueue.exit136.thread, label %sat_solver_enqueue.exit136

sat_solver_enqueue.exit136.thread:                ; preds = %bb.aa
  %i.hn = trunc i32 %i.he to i8
  %i.ho = and i8 %i.hn, 1
  store i8 %i.ho, ptr %i.hl, align 1, !tbaa !25
  %.val26.i134 = load i32, ptr %i.j, align 4, !tbaa !40
  %.val27.i135 = load ptr, ptr %i.k, align 8, !tbaa !50
  %i.hp = getelementptr inbounds [4 x i8], ptr %.val27.i135, i64 %i.hh
  store i32 %.val26.i134, ptr %i.hp, align 4, !tbaa !33
  %i.hq = load ptr, ptr %i.l, align 8, !tbaa !65
  %i.hr = getelementptr inbounds [4 x i8], ptr %i.hq, i64 %i.hh
  store i32 %i.hd, ptr %i.hr, align 4, !tbaa !33
  %i.hs = load ptr, ptr %i.c, align 8, !tbaa !62
  %i.ht = load i32, ptr %i.a, align 4, !tbaa !60  ; 2 uses
  %i.hu = add nsw i32 %i.ht, 1
  store i32 %i.hu, ptr %i.a, align 4, !tbaa !60
  %i.hv = sext i32 %i.ht to i64
  %i.hw = getelementptr inbounds [4 x i8], ptr %i.hs, i64 %i.hv
  store i32 %i.he, ptr %i.hw, align 4, !tbaa !33
  br label %.thread

sat_solver_enqueue.exit136:                       ; preds = %bb.aa
  %i.hx = sext i8 %i.hm to i32
  %i.hy = and i32 %i.he, 1
  %.not146 = icmp eq i32 %i.hy, %i.hx
  br i1 %.not146, label %.thread, label %bb.ab

bb.ab:                                            ; preds = %sat_solver_enqueue.exit136
  %i.hz = load i32, ptr %.092156, align 4, !tbaa !33 ; 3 uses
  %.496173 = getelementptr inbounds nuw i8, ptr %.092156, i64 4 ; 5 uses
  %i.ia = icmp ult ptr %.496173, %i.ad
  br i1 %i.ia, label %.lr.ph177.preheader, label %.thread

.lr.ph177.preheader:                              ; preds = %bb.ab
  %i.ib = shl i64 %indvar, 2
  %i.ic = add i64 %i.ib, %.092.ph181248
  %4 = sub i64 %i.ak, %i.ic                       ; 2 uses
  %i.id = lshr i64 %4, 2
  %i.ie = add nuw nsw i64 %i.id, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %4, 28
  %i.if = sub i64 %.092.ph181248, %.090.ph182247
  %diff.check = icmp ugt i64 %i.if, -32
  %or.cond272 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond272, label %.lr.ph177.preheader273, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph177.preheader
  %n.vec = and i64 %i.ie, 9223372036854775800     ; 3 uses
  %i.ig = shl i64 %n.vec, 2                       ; 2 uses
  %i.ih = getelementptr i8, ptr %.496173, i64 %i.ig ; 2 uses
  %i.ii = getelementptr i8, ptr %i.fn, i64 %i.ig  ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ij = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.496173, i64 %i.ij ; 2 uses
  %next.gep249 = getelementptr i8, ptr %i.fn, i64 %i.ij ; 2 uses
  %i.ik = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !33
  %wide.load250 = load <4 x i32>, ptr %i.ik, align 4, !tbaa !33
  %i.il = getelementptr i8, ptr %next.gep249, i64 16
  store <4 x i32> %wide.load, ptr %next.gep249, align 4, !tbaa !33
  store <4 x i32> %wide.load250, ptr %i.il, align 4, !tbaa !33
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.im = icmp eq i64 %index.next, %n.vec
  br i1 %i.im, label %middle.block, label %vector.body, !llvm.loop !71

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ie, %n.vec
  br i1 %cmp.n, label %.thread, label %.lr.ph177.preheader273

.lr.ph177.preheader273:                           ; preds = %.lr.ph177.preheader, %middle.block
  %.496175.ph = phi ptr [ %.496173, %.lr.ph177.preheader ], [ %i.ih, %middle.block ]
  %.4174.ph = phi ptr [ %i.fn, %.lr.ph177.preheader ], [ %i.ii, %middle.block ]
  br label %.lr.ph177

.lr.ph177:                                        ; preds = %.lr.ph177.preheader273, %.lr.ph177
  %.496175 = phi ptr [ %.496, %.lr.ph177 ], [ %.496175.ph, %.lr.ph177.preheader273 ] ; 2 uses
  %.4174 = phi ptr [ %i.io, %.lr.ph177 ], [ %.4174.ph, %.lr.ph177.preheader273 ] ; 2 uses
  %i.in = load i32, ptr %.496175, align 4, !tbaa !33
  %i.io = getelementptr inbounds nuw i8, ptr %.4174, i64 4 ; 2 uses
  store i32 %i.in, ptr %.4174, align 4, !tbaa !33
  %.496 = getelementptr inbounds nuw i8, ptr %.496175, i64 4 ; 3 uses
  %i.ip = icmp ult ptr %.496, %i.ad
  br i1 %i.ip, label %.lr.ph177, label %.thread, !llvm.loop !72

.thread:                                          ; preds = %.lr.ph165, %.lr.ph177, %middle.block265, %middle.block, %bb.i, %bb.ab, %sat_solver_enqueue.exit.thread, %sat_solver_enqueue.exit, %sat_solver_enqueue.exit136.thread, %veci_push.exit, %sat_solver_enqueue.exit136, %bb.m
  %.8110 = phi i32 [ %.1103.ph180, %sat_solver_enqueue.exit136.thread ], [ %.1103.ph180, %bb.m ], [ %.1103.ph180, %veci_push.exit ], [ %.1103.ph180, %sat_solver_enqueue.exit136 ], [ %.1103.ph180, %sat_solver_enqueue.exit ], [ %.1103.ph180, %sat_solver_enqueue.exit.thread ], [ %i.hz, %bb.ab ], [ %i.bt, %bb.i ], [ %i.hz, %middle.block ], [ %i.bt, %middle.block265 ], [ %i.hz, %.lr.ph177 ], [ %i.bt, %.lr.ph165 ] ; 2 uses
  %.9101 = phi ptr [ %.092156, %sat_solver_enqueue.exit136.thread ], [ %.092156, %bb.m ], [ %.092156, %veci_push.exit ], [ %.092156, %sat_solver_enqueue.exit136 ], [ %.092156, %sat_solver_enqueue.exit ], [ %.092156, %sat_solver_enqueue.exit.thread ], [ %.496173, %bb.ab ], [ %.193161, %bb.i ], [ %i.ih, %middle.block ], [ %i.cg, %middle.block265 ], [ %.496, %.lr.ph177 ], [ %.193, %.lr.ph165 ]
  %.9 = phi ptr [ %i.fn, %sat_solver_enqueue.exit136.thread ], [ %i.dn, %bb.m ], [ %.090157, %veci_push.exit ], [ %i.fn, %sat_solver_enqueue.exit136 ], [ %i.aw, %sat_solver_enqueue.exit ], [ %i.aw, %sat_solver_enqueue.exit.thread ], [ %i.fn, %bb.ab ], [ %i.aw, %bb.i ], [ %i.ii, %middle.block ], [ %i.ch, %middle.block265 ], [ %i.io, %.lr.ph177 ], [ %i.cn, %.lr.ph165 ] ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %.9101, i64 4 ; 2 uses
  %i.ir = icmp ult ptr %i.iq, %i.ad
  br i1 %i.ir, label %.lr.ph, label %.outer._crit_edge, !llvm.loop !73

.outer._crit_edge:                                ; preds = %.thread, %bb.j, %bb.c
  %.1103.ph.lcssa = phi i32 [ %.1103.ph180, %bb.j ], [ 0, %bb.c ], [ %.8110, %.thread ] ; 2 uses
  %.090.lcssa = phi ptr [ %i.cq, %bb.j ], [ %.val124, %bb.c ], [ %.9, %.thread ]
  %.val123 = load ptr, ptr %i.aa, align 8, !tbaa !34
  %i.is = ptrtoint ptr %.090.lcssa to i64
  %i.it = ptrtoint ptr %.val123 to i64
  %i.iu = sub i64 %i.is, %i.it                    ; 2 uses
  %i.iv = ashr exact i64 %i.iu, 2
  %i.iw = load i64, ptr %i.p, align 8, !tbaa !74
  %i.ix = add nsw i64 %i.iv, %i.iw
  store i64 %i.ix, ptr %i.p, align 8, !tbaa !74
  %i.iy = lshr exact i64 %i.iu, 2
  %i.iz = trunc i64 %i.iy to i32
  store i32 %i.iz, ptr %i.ab, align 4, !tbaa !40
  %i.ja = icmp eq i32 %.1103.ph.lcssa, 0
  br i1 %i.ja, label %bb.b, label %.critedge, !llvm.loop !75

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
  store i32 256, ptr %i.c, align 4, !tbaa !55
  %i.d = tail call noalias dereferenceable_or_null(2048) ptr @calloc(i64 noundef 256, i64 noundef 8) #31 ; 3 uses
  %i.e = getelementptr i8, ptr %i.a, i64 64
  store ptr %i.d, ptr %i.e, align 8, !tbaa !48
  %i.f = tail call noalias dereferenceable_or_null(524288) ptr @malloc(i64 noundef 524288) #30 ; 3 uses
  store ptr %i.f, ptr %i.d, align 8, !tbaa !49
  %i.g = tail call noalias dereferenceable_or_null(524288) ptr @malloc(i64 noundef 524288) #30 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.g, ptr %i.h, align 8, !tbaa !49
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  store <4 x i32> <i32 1, i32 17, i32 131071, i32 131072>, ptr %i.i, align 4, !tbaa !33
  store i32 2, ptr %i.g, align 4, !tbaa !33
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i32 -1, ptr %i.j, align 8, !tbaa !45
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  store i32 4096, ptr %i.k, align 4
  store i32 1, ptr %i.b, align 8, !tbaa !33
  store i32 6, ptr %i.f, align 4, !tbaa !33
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 76
  store i32 2, ptr %i.l, align 4, !tbaa !66
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store ptr %i.k, ptr %i.m, align 8, !tbaa !67
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 472
  store <4 x i32> <i32 10000, i32 10000, i32 1000, i32 50>, ptr %i.n, align 8, !tbaa !33
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 296
  store i32 4, ptr %i.o, align 8, !tbaa !41
  %i.p = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #30
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 304
  store ptr %i.p, ptr %i.q, align 8, !tbaa !34
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 312
  store i32 4, ptr %i.r, align 8, !tbaa !41
  %i.s = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #30
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 320
  store ptr %i.s, ptr %i.t, align 8, !tbaa !34
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 264
  store i32 4, ptr %i.u, align 8, !tbaa !41
  %i.v = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #30
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 272
  store ptr %i.v, ptr %i.w, align 8, !tbaa !34
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  store i32 4, ptr %i.x, align 8, !tbaa !41
  %i.y = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #30
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  store ptr %i.y, ptr %i.z, align 8, !tbaa !34
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 280
  store i32 4, ptr %i.aa, align 8, !tbaa !41
  %i.ab = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #30
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 288
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !34
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 560
  store i32 4, ptr %i.ad, align 8, !tbaa !41
  %i.ae = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #30
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 568
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !34
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 648
  store i32 4, ptr %i.ag, align 8, !tbaa !41
  %i.ah = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #30
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 656
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !34
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 336
  store i32 4, ptr %i.aj, align 8, !tbaa !41
  %i.ak = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #30
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 344
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !34
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  store i64 32, ptr %i.am, align 8, !tbaa !30
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  store i64 -1, ptr %i.an, align 8, !tbaa !31
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  store i32 2048, ptr %i.ao, align 8, !tbaa !53
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 164
  store i32 -1, ptr %i.ap, align 4, !tbaa !76
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 520
  store i32 4, ptr %i.aq, align 8, !tbaa !41
  %i.ar = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #30
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 528
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !34
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 368
  store double f0x4195D9C3F4000000, ptr %i.at, align 8, !tbaa !77
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
  store i32 256, ptr %i.c, align 4, !tbaa !55
  %i.d = tail call noalias dereferenceable_or_null(2048) ptr @calloc(i64 noundef 256, i64 noundef 8) #31 ; 3 uses
  %i.e = getelementptr i8, ptr %i.a, i64 64
  store ptr %i.d, ptr %i.e, align 8, !tbaa !48
  %i.f = tail call noalias dereferenceable_or_null(131072) ptr @malloc(i64 noundef 131072) #30 ; 3 uses
  store ptr %i.f, ptr %i.d, align 8, !tbaa !49
  %i.g = tail call noalias dereferenceable_or_null(131072) ptr @malloc(i64 noundef 131072) #30 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.g, ptr %i.h, align 8, !tbaa !49
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  store <4 x i32> <i32 1, i32 15, i32 32767, i32 32768>, ptr %i.i, align 4, !tbaa !33
  store i32 2, ptr %i.g, align 4, !tbaa !33
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i32 -1, ptr %i.j, align 8, !tbaa !45
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  store i32 4096, ptr %i.k, align 4
  store i32 1, ptr %i.b, align 8, !tbaa !33
  store i32 6, ptr %i.f, align 4, !tbaa !33
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 76
  store i32 2, ptr %i.l, align 4, !tbaa !66
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store ptr %i.k, ptr %i.m, align 8, !tbaa !67
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 472
  store <4 x i32> <i32 10000, i32 10000, i32 1000, i32 50>, ptr %i.n, align 8, !tbaa !33
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 296
  store i32 4, ptr %i.o, align 8, !tbaa !41
  %i.p = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #30
end_hunk_0
