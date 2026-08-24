Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/satSolver3?download=true
inline.NumInlined: 540
inline.NumDeleted: 94
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 16
begin_hunk_0_@Sat_MemAppend:bb.a
  %i.y = tail call ptr @realloc(ptr noundef nonnull %i.b, i64 noundef %i.x) #27 ; 3 uses
  store ptr %i.y, ptr %i.a, align 8, !tbaa !45
  %i.z = load i32, ptr %i.t, align 4, !tbaa !52   ; 2 uses
  %i.aa = sext i32 %i.z to i64                    ; 2 uses
  %i.ab = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.aa
  %i.ac = shl nsw i64 %i.aa, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ab, i8 0, i64 %i.ac, i1 false)
  %i.ad = shl nsw i32 %i.z, 1
  store i32 %i.ad, ptr %i.t, align 4, !tbaa !52
  %.pre = load i32, ptr %i.e, align 4, !tbaa !32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ae = phi i32 [ %.pre, %bb.c ], [ %i.s, %bb.b ]
  %i.af = phi ptr [ %i.y, %bb.c ], [ %i.b, %bb.b ] ; 2 uses
  %i.ag = sext i32 %i.ae to i64
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.ag
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !46 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ak = load i32, ptr %i.p, align 8, !tbaa !43
  %i.al = zext nneg i32 %i.ak to i64
  %sext = shl i64 4294967296, %i.al
  %i.am = ashr exact i64 %sext, 30
  %i.an = tail call noalias ptr @malloc(i64 noundef %i.am) #28 ; 2 uses
  %i.ao = load i32, ptr %i.e, align 4, !tbaa !32
  %i.ap = sext i32 %i.ao to i64
  %i.aq = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.ap
  store ptr %i.an, ptr %i.aq, align 8, !tbaa !46
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ar = phi ptr [ %i.an, %bb.e ], [ %i.ai, %bb.d ] ; 2 uses
  store i32 2, ptr %i.ar, align 4, !tbaa !32
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.a
  %.0.val65 = phi i32 [ 2, %bb.f ], [ %.val, %bb.a ]
  %.0 = phi ptr [ %i.ar, %bb.f ], [ %i.i, %bb.a ] ; 5 uses
  %i.as = sext i32 %.0.val65 to i64
  %i.at = getelementptr inbounds [4 x i8], ptr %.0, i64 %i.as
  store i32 0, ptr %i.at, align 4, !tbaa !32
  %.0.val = load i32, ptr %.0, align 4, !tbaa !32
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
  %.pre67 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !32 ; 2 uses
  br i1 %.not64, label %._crit_edge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  %i.bg = and i32 %2, 2097151
  %i.bh = zext nneg i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %i.bh
  store i32 %.pre67, ptr %i.bi, align 4, !tbaa !32
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.i, %bb.j
  %i.bj = getelementptr inbounds [4 x i8], ptr %0, i64 %i.d
  %i.bk = add nsw i32 %.pre67, 1
  store i32 %i.bk, ptr %i.bj, align 4, !tbaa !32
  %i.bl = load i32, ptr %.0, align 4, !tbaa !32
  %i.bm = add nsw i32 %i.bl, %i.m
  store i32 %i.bm, ptr %.0, align 4, !tbaa !32
  %i.bn = load i32, ptr %i.e, align 4, !tbaa !32  ; 2 uses
  %i.bo = load i32, ptr %i.p, align 8, !tbaa !43
  %i.bp = shl i32 %i.bn, %i.bo
  %i.bq = load ptr, ptr %i.a, align 8, !tbaa !45
  %i.br = sext i32 %i.bn to i64
  %i.bs = getelementptr inbounds [8 x i8], ptr %i.bq, i64 %i.br
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !46
  %.val.i = load i32, ptr %i.bt, align 4, !tbaa !32
  %i.bu = or i32 %.val.i, %i.bp
  %i.bv = sub nsw i32 %i.bu, %i.m
  ret i32 %i.bv
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define i32 @sat_solver3_count_assigned(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 {
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
  br i1 %i.l, label %middle.block, label %vector.body, !llvm.loop !53

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
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !56

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.m, %middle.block ], [ %spec.select, %scalar.ph ]
  ret i32 %.0.lcssa
}

; Function Attrs: nounwind uwtable
define i32 @sat_solver3_propagate(ptr nofree noundef captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.d = getelementptr i8, ptr %0, i64 88         ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
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
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.outer._crit_edge
  %i.q = load i32, ptr %i.a, align 4, !tbaa !57
  %i.r = load i32, ptr %i.b, align 8, !tbaa !58   ; 3 uses
  %i.s = icmp sgt i32 %i.q, %i.r
  br i1 %i.s, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.t = load ptr, ptr %i.c, align 8, !tbaa !59
  %i.u = add nsw i32 %i.r, 1
  store i32 %i.u, ptr %i.b, align 8, !tbaa !58
  %i.v = sext i32 %i.r to i64
  %i.w = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !32   ; 3 uses
  %.val126 = load ptr, ptr %i.d, align 8, !tbaa !36
  %i.y = sext i32 %i.x to i64
  %i.z = getelementptr inbounds [16 x i8], ptr %.val126, i64 %i.y ; 2 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 8       ; 2 uses
  %.val124 = load ptr, ptr %i.aa, align 8, !tbaa !31 ; 5 uses
  %i.ab = getelementptr i8, ptr %i.z, i64 4       ; 2 uses
  %.val127 = load i32, ptr %i.ab, align 4, !tbaa !37 ; 2 uses
  %i.ac = sext i32 %.val127 to i64
  %.idx = shl nsw i64 %i.ac, 2                    ; 2 uses
  %i.ad = getelementptr inbounds i8, ptr %.val124, i64 %.idx ; 6 uses
  %i.ae = load i64, ptr %i.e, align 8, !tbaa !60
  %i.af = add nsw i64 %i.ae, 1
  store i64 %i.af, ptr %i.e, align 8, !tbaa !60
  %i.ag = icmp sgt i32 %.val127, 0
  br i1 %i.ag, label %.lr.ph.lr.ph, label %.outer._crit_edge

.lr.ph.lr.ph:                                     ; preds = %bb.c
  %.val124249 = ptrtoaddr ptr %.val124 to i64
  %i.ah = shl nsw i32 %i.x, 1
  %i.ai = or disjoint i32 %i.ah, 1
  %i.aj = xor i32 %i.x, 1                         ; 4 uses
  %i.ak = add i64 %.idx, %.val124249              ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.lr.ph, %.thread
  %.090.ph182 = phi ptr [ %.val124, %.lr.ph.lr.ph ], [ %.9, %.thread ] ; 2 uses
  %.092.ph181 = phi ptr [ %.val124, %.lr.ph.lr.ph ], [ %i.ip, %.thread ] ; 2 uses
  %.1103.ph180 = phi i32 [ 0, %.lr.ph.lr.ph ], [ %.8110, %.thread ] ; 7 uses
  %.090.ph182247 = ptrtoaddr ptr %.090.ph182 to i64 ; 2 uses
  %.092.ph181248 = ptrtoaddr ptr %.092.ph181 to i64 ; 6 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.j
  %indvar = phi i64 [ 0, %.lr.ph ], [ %indvar.next, %bb.j ] ; 5 uses
  %.090157 = phi ptr [ %.090.ph182, %.lr.ph ], [ %i.cp, %bb.j ] ; 9 uses
  %.092156 = phi ptr [ %.092.ph181, %.lr.ph ], [ %i.co, %bb.j ] ; 17 uses
  %i.al = load i32, ptr %.092156, align 4, !tbaa !32 ; 8 uses
  %i.am = and i32 %i.al, 1
  %.not = icmp eq i32 %i.am, 0
  br i1 %.not, label %clause_read.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.an = lshr i32 %i.al, 1
  %i.ao = ashr i32 %i.al, 2
  %.val121 = load ptr, ptr %i.f, align 8, !tbaa !8 ; 2 uses
  %i.ap = sext i32 %i.ao to i64
  %i.aq = getelementptr inbounds i8, ptr %.val121, i64 %i.ap
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !25
  %i.as = sext i8 %i.ar to i32
  %i.at = and i32 %i.an, 1
  %i.au = icmp eq i32 %i.at, %i.as
  br i1 %i.au, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.av = getelementptr inbounds nuw i8, ptr %.090157, i64 4 ; 6 uses
  store i32 %i.al, ptr %.090157, align 4, !tbaa !32
  %i.aw = load i32, ptr %.092156, align 4, !tbaa !32 ; 2 uses
  %i.ax = ashr i32 %i.aw, 1                       ; 3 uses
  %i.ay = ashr i32 %i.aw, 2
  %i.az = load ptr, ptr %i.g, align 8, !tbaa !61
  %i.ba = sext i32 %i.ay to i64                   ; 4 uses
  %i.bb = getelementptr inbounds i8, ptr %i.az, i64 %i.ba ; 2 uses
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !25
  %i.bd = icmp eq i8 %i.bc, 0
  br i1 %i.bd, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i8 1, ptr %i.bb, align 1, !tbaa !25
  %.val24.i.pre = load ptr, ptr %i.f, align 8, !tbaa !8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.val24.i = phi ptr [ %.val24.i.pre, %bb.g ], [ %.val121, %bb.f ]
  %i.be = getelementptr inbounds i8, ptr %.val24.i, i64 %i.ba ; 2 uses
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !25  ; 2 uses
  %.not.i = icmp eq i8 %i.bf, 3
  br i1 %.not.i, label %sat_solver3_enqueue.exit.thread, label %sat_solver3_enqueue.exit

sat_solver3_enqueue.exit.thread:                  ; preds = %bb.h
  %i.bg = trunc i32 %i.ax to i8
  %i.bh = and i8 %i.bg, 1
  store i8 %i.bh, ptr %i.be, align 1, !tbaa !25
  %.val26.i = load i32, ptr %i.j, align 4, !tbaa !37
  %.val27.i = load ptr, ptr %i.k, align 8, !tbaa !47
  %i.bi = getelementptr inbounds [4 x i8], ptr %.val27.i, i64 %i.ba
  store i32 %.val26.i, ptr %i.bi, align 4, !tbaa !32
  %i.bj = load ptr, ptr %i.l, align 8, !tbaa !62
  %i.bk = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %i.ba
  store i32 %i.ai, ptr %i.bk, align 4, !tbaa !32
  %i.bl = load ptr, ptr %i.c, align 8, !tbaa !59
  %i.bm = load i32, ptr %i.a, align 4, !tbaa !57  ; 2 uses
  %i.bn = add nsw i32 %i.bm, 1
  store i32 %i.bn, ptr %i.a, align 4, !tbaa !57
  %i.bo = sext i32 %i.bm to i64
  %i.bp = getelementptr inbounds [4 x i8], ptr %i.bl, i64 %i.bo
  store i32 %i.ax, ptr %i.bp, align 4, !tbaa !32
  br label %.thread

sat_solver3_enqueue.exit:                         ; preds = %bb.h
  %i.bq = sext i8 %i.bf to i32
  %i.br = and i32 %i.ax, 1
  %.not145 = icmp eq i32 %i.br, %i.bq
  br i1 %.not145, label %.thread, label %bb.i

bb.i:                                             ; preds = %sat_solver3_enqueue.exit
  %i.bs = load i32, ptr %i.h, align 4, !tbaa !63  ; 3 uses
  %i.bt = load ptr, ptr %i.i, align 8, !tbaa !64  ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  store i32 %i.aj, ptr %i.bv, align 4, !tbaa !32
  %i.bw = load i32, ptr %.092156, align 4, !tbaa !32
  %i.bx = ashr i32 %i.bw, 1
  store i32 %i.bx, ptr %i.bu, align 4, !tbaa !32
  %.193161 = getelementptr inbounds nuw i8, ptr %.092156, i64 4 ; 5 uses
  %i.by = icmp ult ptr %.193161, %i.ad
  br i1 %i.by, label %.lr.ph165.preheader, label %.thread

.lr.ph165.preheader:                              ; preds = %bb.i
  %1 = add i64 %.092.ph181248, 8
  %2 = shl i64 %indvar, 2
  %i.bz = add i64 %2, %1
  %umax255 = tail call i64 @llvm.umax.i64(i64 %i.bz, i64 %i.ak)
  %3 = mul i64 %indvar, -4
  %reass.sub = sub i64 %3, %.092.ph181248
  %4 = add i64 %reass.sub, -5
  %i.ca = add i64 %umax255, %4                    ; 2 uses
  %i.cb = lshr i64 %i.ca, 2
  %i.cc = add nuw nsw i64 %i.cb, 1                ; 2 uses
  %min.iters.check257 = icmp ult i64 %i.ca, 28
  %i.cd = sub i64 %.092.ph181248, %.090.ph182247
  %diff.check254 = icmp ugt i64 %i.cd, -32
  %or.cond = select i1 %min.iters.check257, i1 true, i1 %diff.check254
  br i1 %or.cond, label %.lr.ph165.preheader276, label %vector.ph258

vector.ph258:                                     ; preds = %.lr.ph165.preheader
  %n.vec259 = and i64 %i.cc, 9223372036854775800  ; 3 uses
  %i.ce = shl i64 %n.vec259, 2                    ; 2 uses
  %i.cf = getelementptr i8, ptr %.193161, i64 %i.ce ; 2 uses
  %i.cg = getelementptr i8, ptr %i.av, i64 %i.ce  ; 2 uses
  br label %vector.body260

vector.body260:                                   ; preds = %vector.body260, %vector.ph258
  %index261 = phi i64 [ 0, %vector.ph258 ], [ %index.next266, %vector.body260 ] ; 2 uses
  %i.ch = shl i64 %index261, 2                    ; 2 uses
  %next.gep262 = getelementptr i8, ptr %.193161, i64 %i.ch ; 2 uses
  %next.gep263 = getelementptr i8, ptr %i.av, i64 %i.ch ; 2 uses
  %i.ci = getelementptr i8, ptr %next.gep262, i64 16
  %wide.load264 = load <4 x i32>, ptr %next.gep262, align 4, !tbaa !32
  %wide.load265 = load <4 x i32>, ptr %i.ci, align 4, !tbaa !32
  %i.cj = getelementptr i8, ptr %next.gep263, i64 16
  store <4 x i32> %wide.load264, ptr %next.gep263, align 4, !tbaa !32
  store <4 x i32> %wide.load265, ptr %i.cj, align 4, !tbaa !32
  %index.next266 = add nuw i64 %index261, 8       ; 2 uses
  %i.ck = icmp eq i64 %index.next266, %n.vec259
  br i1 %i.ck, label %middle.block267, label %vector.body260, !llvm.loop !65

middle.block267:                                  ; preds = %vector.body260
  %cmp.n268 = icmp eq i64 %i.cc, %n.vec259
  br i1 %cmp.n268, label %.thread, label %.lr.ph165.preheader276

.lr.ph165.preheader276:                           ; preds = %.lr.ph165.preheader, %middle.block267
  %.193163.ph = phi ptr [ %.193161, %.lr.ph165.preheader ], [ %i.cf, %middle.block267 ]
  %.191162.ph = phi ptr [ %i.av, %.lr.ph165.preheader ], [ %i.cg, %middle.block267 ]
  br label %.lr.ph165

.lr.ph165:                                        ; preds = %.lr.ph165.preheader276, %.lr.ph165
  %.193163 = phi ptr [ %.193, %.lr.ph165 ], [ %.193163.ph, %.lr.ph165.preheader276 ] ; 2 uses
  %.191162 = phi ptr [ %i.cm, %.lr.ph165 ], [ %.191162.ph, %.lr.ph165.preheader276 ] ; 2 uses
  %i.cl = load i32, ptr %.193163, align 4, !tbaa !32
  %i.cm = getelementptr inbounds nuw i8, ptr %.191162, i64 4 ; 2 uses
  store i32 %i.cl, ptr %.191162, align 4, !tbaa !32
  %.193 = getelementptr inbounds nuw i8, ptr %.193163, i64 4 ; 3 uses
  %i.cn = icmp ult ptr %.193, %i.ad
  br i1 %i.cn, label %.lr.ph165, label %.thread, !llvm.loop !66

bb.j:                                             ; preds = %bb.e
  %i.co = getelementptr inbounds nuw i8, ptr %.092156, i64 4 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.090157, i64 4 ; 2 uses
  store i32 %i.al, ptr %.090157, align 4, !tbaa !32
  %i.cq = icmp ult ptr %i.co, %i.ad
  %indvar.next = add i64 %indvar, 1
  br i1 %i.cq, label %bb.d, label %.outer._crit_edge

clause_read.exit:                                 ; preds = %bb.d
  %.not.i.i = icmp ne i32 %i.al, 0
  tail call void @llvm.assume(i1 %.not.i.i)
  %.val.i.i = load i32, ptr %i.m, align 8, !tbaa !43
  %i.cr = ashr i32 %i.al, %.val.i.i
  %.val5.i.i = load i32, ptr %i.n, align 4, !tbaa !44
  %i.cs = and i32 %.val5.i.i, %i.al
  %.val6.i.i = load ptr, ptr %i.o, align 8, !tbaa !45
  %i.ct = sext i32 %i.cr to i64
  %i.cu = getelementptr inbounds [8 x i8], ptr %.val6.i.i, i64 %i.ct
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !46
  %i.cw = sext i32 %i.cs to i64
  %i.cx = getelementptr inbounds [4 x i8], ptr %i.cv, i64 %i.cw ; 7 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 4 ; 7 uses
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !32 ; 2 uses
  %i.da = icmp eq i32 %i.cz, %i.aj
  br i1 %i.da, label %bb.k, label %bb.l

bb.k:                                             ; preds = %clause_read.exit
  %i.db = getelementptr inbounds nuw i8, ptr %i.cx, i64 8 ; 2 uses
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !32 ; 2 uses
  store i32 %i.dc, ptr %i.cy, align 4, !tbaa !32
  store i32 %i.aj, ptr %i.db, align 4, !tbaa !32
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %clause_read.exit
  %i.dd = phi i32 [ %i.dc, %bb.k ], [ %i.cz, %clause_read.exit ] ; 2 uses
  %i.de = ashr i32 %i.dd, 1
  %.val120 = load ptr, ptr %i.f, align 8, !tbaa !8 ; 2 uses
  %i.df = sext i32 %i.de to i64
  %i.dg = getelementptr inbounds i8, ptr %.val120, i64 %i.df
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !25
  %i.di = sext i8 %i.dh to i32
  %i.dj = and i32 %i.dd, 1
  %i.dk = icmp eq i32 %i.dj, %i.di
  br i1 %i.dk, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.dl = load i32, ptr %.092156, align 4, !tbaa !32
  %i.dm = getelementptr inbounds nuw i8, ptr %.090157, i64 4
  store i32 %i.dl, ptr %.090157, align 4, !tbaa !32
  br label %.thread

bb.n:                                             ; preds = %bb.l
  %.val128 = load i32, ptr %i.cx, align 4         ; 2 uses
  %i.dn = lshr i32 %.val128, 9
  %i.do = and i32 %i.dn, 8388604
  %.idx186 = zext nneg i32 %i.do to i64
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cy, i64 %.idx186
  %.not117168 = icmp ugt i32 %.val128, 6143
  br i1 %.not117168, label %.lr.ph171.preheader, label %._crit_edge172

.lr.ph171.preheader:                              ; preds = %bb.n
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cx, i64 12
  br label %.lr.ph171

.lr.ph171:                                        ; preds = %.lr.ph171.preheader, %bb.v
  %.0169 = phi ptr [ %i.fk, %bb.v ], [ %i.dq, %.lr.ph171.preheader ] ; 3 uses
  %i.dr = load i32, ptr %.0169, align 4, !tbaa !32 ; 3 uses
  %i.ds = ashr i32 %i.dr, 1
  %i.dt = sext i32 %i.ds to i64
  %i.du = getelementptr inbounds i8, ptr %.val120, i64 %i.dt
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !25
  %i.dw = sext i8 %i.dv to i32
  %i.dx = and i32 %i.dr, 1
  %i.dy = xor i32 %i.dx, %i.dw
  %.not116 = icmp eq i32 %i.dy, 1
  br i1 %.not116, label %bb.v, label %bb.o

bb.o:                                             ; preds = %.lr.ph171
  %i.dz = getelementptr inbounds nuw i8, ptr %i.cx, i64 8 ; 2 uses
  store i32 %i.dr, ptr %i.dz, align 4, !tbaa !32
  store i32 %i.aj, ptr %.0169, align 4, !tbaa !32
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !32
  %i.eb = xor i32 %i.ea, 1
  %.val125 = load ptr, ptr %i.d, align 8, !tbaa !36
  %i.ec = sext i32 %i.eb to i64
  %i.ed = getelementptr inbounds [16 x i8], ptr %.val125, i64 %i.ec ; 6 uses
  %i.ee = load i32, ptr %.092156, align 4, !tbaa !32
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ed, i64 4 ; 3 uses
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !37 ; 5 uses
  %i.eh = load i32, ptr %i.ed, align 8, !tbaa !38
  %i.ei = icmp eq i32 %i.eg, %i.eh
  br i1 %i.ei, label %bb.p, label %veci_push.exit

bb.p:                                             ; preds = %bb.o
  %i.ej = icmp slt i32 %i.eg, 4
  %i.ek = shl nsw i32 %i.eg, 1
  %i.el = lshr i32 %i.eg, 1
  %i.em = mul nuw nsw i32 %i.el, 3
  %i.en = select i1 %i.ej, i32 %i.ek, i32 %i.em   ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ed, i64 8 ; 2 uses
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !31 ; 2 uses
  %.not.i129 = icmp eq ptr %i.ep, null
  %i.eq = sext i32 %i.en to i64
  %i.er = shl nsw i64 %i.eq, 2                    ; 2 uses
  br i1 %.not.i129, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.es = tail call ptr @realloc(ptr noundef nonnull %i.ep, i64 noundef %i.er) #27
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.et = tail call noalias ptr @malloc(i64 noundef %i.er) #28
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.eu = phi ptr [ %i.es, %bb.q ], [ %i.et, %bb.r ] ; 2 uses
  store ptr %i.eu, ptr %i.eo, align 8, !tbaa !31
  %i.ev = icmp eq ptr %i.eu, null
  br i1 %i.ev, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ew = load i32, ptr %i.ed, align 8, !tbaa !38
  %i.ex = sitofp i32 %i.ew to double
  %i.ey = fmul nnan double %i.ex, f0x3EB0000000000000
  %i.ez = sitofp i32 %i.en to double
  %i.fa = fmul nnan double %i.ez, f0x3EB0000000000000
  %i.fb = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, double noundef %i.ey, double noundef %i.fa) ; 0 uses
  %i.fc = load ptr, ptr @stdout, align 8, !tbaa !39
  %i.fd = tail call i32 @fflush(ptr noundef %i.fc) ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  store i32 %i.en, ptr %i.ed, align 8, !tbaa !38
  %.pre.i = load i32, ptr %i.ef, align 4, !tbaa !37
  br label %veci_push.exit

veci_push.exit:                                   ; preds = %bb.o, %bb.u
  %i.fe = phi i32 [ %.pre.i, %bb.u ], [ %i.eg, %bb.o ] ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !31
  %i.fh = add nsw i32 %i.fe, 1
  store i32 %i.fh, ptr %i.ef, align 4, !tbaa !37
  %i.fi = sext i32 %i.fe to i64
  %i.fj = getelementptr inbounds [4 x i8], ptr %i.fg, i64 %i.fi
  store i32 %i.ee, ptr %i.fj, align 4, !tbaa !32
  br label %.thread

bb.v:                                             ; preds = %.lr.ph171
  %i.fk = getelementptr inbounds nuw i8, ptr %.0169, i64 4 ; 2 uses
  %.not117 = icmp ult ptr %i.fk, %i.dp
  br i1 %.not117, label %.lr.ph171, label %._crit_edge172, !llvm.loop !67

._crit_edge172:                                   ; preds = %bb.v, %bb.n
  %i.fl = load i32, ptr %.092156, align 4, !tbaa !32 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %.090157, i64 4 ; 6 uses
  store i32 %i.fl, ptr %.090157, align 4, !tbaa !32
  %i.fn = load i32, ptr %i.cx, align 4            ; 3 uses
  %i.fo = and i32 %i.fn, 1
  %.not113 = icmp eq i32 %i.fo, 0
  br i1 %.not113, label %bb.y, label %bb.w

bb.w:                                             ; preds = %._crit_edge172
  %i.fp = lshr i32 %i.fn, 11                      ; 4 uses
  %.not17.i = icmp eq i32 %i.fp, 0
  br i1 %.not17.i, label %sat_clause_compute_lbd.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.w
  %.val.i = load ptr, ptr %i.k, align 8, !tbaa !47 ; 3 uses
  %wide.trip.count.i = zext nneg i32 %i.fp to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.fq = icmp eq i32 %i.fp, 1
  br i1 %i.fq, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %wide.trip.count.i, 2097150
  br label %bb.x

bb.x:                                             ; preds = %bb.x, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.1, %bb.x ] ; 3 uses
  %.016.i = phi i32 [ 0, %.lr.ph.i.new ], [ %.1.i.1, %bb.x ]
  %.01115.i = phi i32 [ 0, %.lr.ph.i.new ], [ %.112.i.1, %bb.x ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.x ]
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %indvars.iv.i
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !32
  %i.ft = ashr i32 %i.fs, 1
  %i.fu = sext i32 %i.ft to i64
  %i.fv = getelementptr inbounds [4 x i8], ptr %.val.i, i64 %i.fu
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !32
  %i.fx = and i32 %i.fw, 31
  %i.fy = shl nuw i32 1, %i.fx                    ; 2 uses
  %i.fz = and i32 %i.fy, %.01115.i
  %.not.i130 = icmp eq i32 %i.fz, 0               ; 2 uses
  %i.ga = select i1 %.not.i130, i32 %i.fy, i32 0
  %.112.i = or i32 %i.ga, %.01115.i               ; 2 uses
  %i.gb = zext i1 %.not.i130 to i32
  %.1.i = add nuw nsw i32 %.016.i, %i.gb
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %indvars.iv.i
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 4
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !32
  %i.gf = ashr i32 %i.ge, 1
  %i.gg = sext i32 %i.gf to i64
  %i.gh = getelementptr inbounds [4 x i8], ptr %.val.i, i64 %i.gg
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !32
  %i.gj = and i32 %i.gi, 31
  %i.gk = shl nuw i32 1, %i.gj                    ; 2 uses
  %i.gl = and i32 %i.gk, %.112.i
  %.not.i130.1 = icmp eq i32 %i.gl, 0             ; 2 uses
  %i.gm = select i1 %.not.i130.1, i32 %i.gk, i32 0
  %.112.i.1 = or i32 %i.gm, %.112.i               ; 2 uses
  %i.gn = zext i1 %.not.i130.1 to i32
  %.1.i.1 = add nuw nsw i32 %.1.i, %i.gn          ; 3 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %sat_clause_compute_lbd.exit.loopexit.unr-lcssa, label %bb.x, !llvm.loop !48

sat_clause_compute_lbd.exit.loopexit.unr-lcssa:   ; preds = %bb.x
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %sat_clause_compute_lbd.exit.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %sat_clause_compute_lbd.exit.loopexit.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.1, %sat_clause_compute_lbd.exit.loopexit.unr-lcssa ]
  %.016.i.epil.init = phi i32 [ 0, %.lr.ph.i ], [ %.1.i.1, %sat_clause_compute_lbd.exit.loopexit.unr-lcssa ]
  %.01115.i.epil.init = phi i32 [ 0, %.lr.ph.i ], [ %.112.i.1, %sat_clause_compute_lbd.exit.loopexit.unr-lcssa ]
  %lcmp.mod296 = trunc i32 %i.fp to i1
  tail call void @llvm.assume(i1 %lcmp.mod296)
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %indvars.iv.i.epil.init
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !32
  %i.gq = ashr i32 %i.gp, 1
  %i.gr = sext i32 %i.gq to i64
  %i.gs = getelementptr inbounds [4 x i8], ptr %.val.i, i64 %i.gr
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !32
  %i.gu = and i32 %i.gt, 31
  %i.gv = xor i32 %.01115.i.epil.init, -1
  %i.gw = lshr i32 %i.gv, %i.gu
  %i.gx = and i32 %i.gw, 1
  %.1.i.epil = add nuw nsw i32 %.016.i.epil.init, %i.gx
  br label %sat_clause_compute_lbd.exit.loopexit

sat_clause_compute_lbd.exit.loopexit:             ; preds = %sat_clause_compute_lbd.exit.loopexit.unr-lcssa, %.epil.preheader
  %.1.i.lcssa = phi i32 [ %.1.i.1, %sat_clause_compute_lbd.exit.loopexit.unr-lcssa ], [ %.1.i.epil, %.epil.preheader ]
  %i.gy = shl i32 %.1.i.lcssa, 3
  %i.gz = and i32 %i.gy, 2040
  br label %sat_clause_compute_lbd.exit

sat_clause_compute_lbd.exit:                      ; preds = %sat_clause_compute_lbd.exit.loopexit, %bb.w
  %.0.lcssa.i = phi i32 [ 0, %bb.w ], [ %i.gz, %sat_clause_compute_lbd.exit.loopexit ]
  %i.ha = and i32 %i.fn, -2041
  %i.hb = or disjoint i32 %.0.lcssa.i, %i.ha
  store i32 %i.hb, ptr %i.cx, align 4
  %.pre = load i32, ptr %.092156, align 4, !tbaa !32
  br label %bb.y

bb.y:                                             ; preds = %sat_clause_compute_lbd.exit, %._crit_edge172
  %i.hc = phi i32 [ %.pre, %sat_clause_compute_lbd.exit ], [ %i.fl, %._crit_edge172 ]
  %i.hd = load i32, ptr %i.cy, align 4, !tbaa !32 ; 4 uses
  %i.he = ashr i32 %i.hd, 1
  %i.hf = load ptr, ptr %i.g, align 8, !tbaa !61
  %i.hg = sext i32 %i.he to i64                   ; 4 uses
  %i.hh = getelementptr inbounds i8, ptr %i.hf, i64 %i.hg ; 2 uses
  %i.hi = load i8, ptr %i.hh, align 1, !tbaa !25
  %i.hj = icmp eq i8 %i.hi, 0
  br i1 %i.hj, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i8 1, ptr %i.hh, align 1, !tbaa !25
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.val24.i131 = load ptr, ptr %i.f, align 8, !tbaa !8
  %i.hk = getelementptr inbounds i8, ptr %.val24.i131, i64 %i.hg ; 2 uses
  %i.hl = load i8, ptr %i.hk, align 1, !tbaa !25  ; 2 uses
  %.not.i132 = icmp eq i8 %i.hl, 3
  br i1 %.not.i132, label %sat_solver3_enqueue.exit136.thread, label %sat_solver3_enqueue.exit136

sat_solver3_enqueue.exit136.thread:               ; preds = %bb.aa
  %i.hm = trunc i32 %i.hd to i8
  %i.hn = and i8 %i.hm, 1
  store i8 %i.hn, ptr %i.hk, align 1, !tbaa !25
  %.val26.i134 = load i32, ptr %i.j, align 4, !tbaa !37
  %.val27.i135 = load ptr, ptr %i.k, align 8, !tbaa !47
  %i.ho = getelementptr inbounds [4 x i8], ptr %.val27.i135, i64 %i.hg
  store i32 %.val26.i134, ptr %i.ho, align 4, !tbaa !32
  %i.hp = load ptr, ptr %i.l, align 8, !tbaa !62
  %i.hq = getelementptr inbounds [4 x i8], ptr %i.hp, i64 %i.hg
  store i32 %i.hc, ptr %i.hq, align 4, !tbaa !32
  %i.hr = load ptr, ptr %i.c, align 8, !tbaa !59
  %i.hs = load i32, ptr %i.a, align 4, !tbaa !57  ; 2 uses
  %i.ht = add nsw i32 %i.hs, 1
  store i32 %i.ht, ptr %i.a, align 4, !tbaa !57
  %i.hu = sext i32 %i.hs to i64
  %i.hv = getelementptr inbounds [4 x i8], ptr %i.hr, i64 %i.hu
  store i32 %i.hd, ptr %i.hv, align 4, !tbaa !32
  br label %.thread

sat_solver3_enqueue.exit136:                      ; preds = %bb.aa
  %i.hw = sext i8 %i.hl to i32
  %i.hx = and i32 %i.hd, 1
  %.not146 = icmp eq i32 %i.hx, %i.hw
  br i1 %.not146, label %.thread, label %bb.ab

bb.ab:                                            ; preds = %sat_solver3_enqueue.exit136
  %i.hy = load i32, ptr %.092156, align 4, !tbaa !32 ; 3 uses
  %.496173 = getelementptr inbounds nuw i8, ptr %.092156, i64 4 ; 5 uses
  %i.hz = icmp ult ptr %.496173, %i.ad
  br i1 %i.hz, label %.lr.ph177.preheader, label %.thread

.lr.ph177.preheader:                              ; preds = %bb.ab
  %5 = add i64 %.092.ph181248, 8
  %6 = shl i64 %indvar, 2
  %i.ia = add i64 %6, %5
  %umax = tail call i64 @llvm.umax.i64(i64 %i.ia, i64 %i.ak)
  %7 = mul i64 %indvar, -4
  %reass.sub273 = sub i64 %7, %.092.ph181248
  %8 = add i64 %reass.sub273, -5
  %i.ib = add i64 %umax, %8                       ; 2 uses
  %i.ic = lshr i64 %i.ib, 2
  %i.id = add nuw nsw i64 %i.ic, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ib, 28
  %i.ie = sub i64 %.092.ph181248, %.090.ph182247
  %diff.check = icmp ugt i64 %i.ie, -32
  %or.cond274 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond274, label %.lr.ph177.preheader275, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph177.preheader
  %n.vec = and i64 %i.id, 9223372036854775800     ; 3 uses
  %i.if = shl i64 %n.vec, 2                       ; 2 uses
  %i.ig = getelementptr i8, ptr %.496173, i64 %i.if ; 2 uses
  %i.ih = getelementptr i8, ptr %i.fm, i64 %i.if  ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ii = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.496173, i64 %i.ii ; 2 uses
  %next.gep250 = getelementptr i8, ptr %i.fm, i64 %i.ii ; 2 uses
  %i.ij = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !32
  %wide.load251 = load <4 x i32>, ptr %i.ij, align 4, !tbaa !32
  %i.ik = getelementptr i8, ptr %next.gep250, i64 16
  store <4 x i32> %wide.load, ptr %next.gep250, align 4, !tbaa !32
  store <4 x i32> %wide.load251, ptr %i.ik, align 4, !tbaa !32
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.il = icmp eq i64 %index.next, %n.vec
  br i1 %i.il, label %middle.block, label %vector.body, !llvm.loop !68

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.id, %n.vec
  br i1 %cmp.n, label %.thread, label %.lr.ph177.preheader275

.lr.ph177.preheader275:                           ; preds = %.lr.ph177.preheader, %middle.block
  %.496175.ph = phi ptr [ %.496173, %.lr.ph177.preheader ], [ %i.ig, %middle.block ]
  %.4174.ph = phi ptr [ %i.fm, %.lr.ph177.preheader ], [ %i.ih, %middle.block ]
  br label %.lr.ph177

.lr.ph177:                                        ; preds = %.lr.ph177.preheader275, %.lr.ph177
  %.496175 = phi ptr [ %.496, %.lr.ph177 ], [ %.496175.ph, %.lr.ph177.preheader275 ] ; 2 uses
  %.4174 = phi ptr [ %i.in, %.lr.ph177 ], [ %.4174.ph, %.lr.ph177.preheader275 ] ; 2 uses
  %i.im = load i32, ptr %.496175, align 4, !tbaa !32
  %i.in = getelementptr inbounds nuw i8, ptr %.4174, i64 4 ; 2 uses
  store i32 %i.im, ptr %.4174, align 4, !tbaa !32
  %.496 = getelementptr inbounds nuw i8, ptr %.496175, i64 4 ; 3 uses
  %i.io = icmp ult ptr %.496, %i.ad
  br i1 %i.io, label %.lr.ph177, label %.thread, !llvm.loop !69

.thread:                                          ; preds = %.lr.ph165, %.lr.ph177, %middle.block267, %middle.block, %bb.i, %bb.ab, %sat_solver3_enqueue.exit.thread, %sat_solver3_enqueue.exit, %sat_solver3_enqueue.exit136.thread, %veci_push.exit, %sat_solver3_enqueue.exit136, %bb.m
  %.8110 = phi i32 [ %.1103.ph180, %sat_solver3_enqueue.exit136.thread ], [ %.1103.ph180, %bb.m ], [ %.1103.ph180, %veci_push.exit ], [ %.1103.ph180, %sat_solver3_enqueue.exit136 ], [ %.1103.ph180, %sat_solver3_enqueue.exit ], [ %.1103.ph180, %sat_solver3_enqueue.exit.thread ], [ %i.hy, %bb.ab ], [ %i.bs, %bb.i ], [ %i.hy, %middle.block ], [ %i.bs, %middle.block267 ], [ %i.hy, %.lr.ph177 ], [ %i.bs, %.lr.ph165 ] ; 2 uses
  %.9101 = phi ptr [ %.092156, %sat_solver3_enqueue.exit136.thread ], [ %.092156, %bb.m ], [ %.092156, %veci_push.exit ], [ %.092156, %sat_solver3_enqueue.exit136 ], [ %.092156, %sat_solver3_enqueue.exit ], [ %.092156, %sat_solver3_enqueue.exit.thread ], [ %.496173, %bb.ab ], [ %.193161, %bb.i ], [ %i.ig, %middle.block ], [ %i.cf, %middle.block267 ], [ %.496, %.lr.ph177 ], [ %.193, %.lr.ph165 ]
  %.9 = phi ptr [ %i.fm, %sat_solver3_enqueue.exit136.thread ], [ %i.dm, %bb.m ], [ %.090157, %veci_push.exit ], [ %i.fm, %sat_solver3_enqueue.exit136 ], [ %i.av, %sat_solver3_enqueue.exit ], [ %i.av, %sat_solver3_enqueue.exit.thread ], [ %i.fm, %bb.ab ], [ %i.av, %bb.i ], [ %i.ih, %middle.block ], [ %i.cg, %middle.block267 ], [ %i.in, %.lr.ph177 ], [ %i.cm, %.lr.ph165 ] ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %.9101, i64 4 ; 2 uses
  %i.iq = icmp ult ptr %i.ip, %i.ad
  br i1 %i.iq, label %.lr.ph, label %.outer._crit_edge, !llvm.loop !70

.outer._crit_edge:                                ; preds = %.thread, %bb.j, %bb.c
  %.1103.ph.lcssa = phi i32 [ %.1103.ph180, %bb.j ], [ 0, %bb.c ], [ %.8110, %.thread ] ; 2 uses
  %.090.lcssa = phi ptr [ %i.cp, %bb.j ], [ %.val124, %bb.c ], [ %.9, %.thread ]
  %.val123 = load ptr, ptr %i.aa, align 8, !tbaa !31
  %i.ir = ptrtoint ptr %.090.lcssa to i64
  %i.is = ptrtoint ptr %.val123 to i64
  %i.it = sub i64 %i.ir, %i.is                    ; 2 uses
  %i.iu = ashr exact i64 %i.it, 2
  %i.iv = load i64, ptr %i.p, align 8, !tbaa !71
  %i.iw = add nsw i64 %i.iu, %i.iv
  store i64 %i.iw, ptr %i.p, align 8, !tbaa !71
  %i.ix = lshr exact i64 %i.it, 2
  %i.iy = trunc i64 %i.ix to i32
  store i32 %i.iy, ptr %i.ab, align 4, !tbaa !37
  %i.iz = icmp eq i32 %.1103.ph.lcssa, 0
  br i1 %i.iz, label %bb.b, label %.critedge, !llvm.loop !72

.critedge:                                        ; preds = %.outer._crit_edge, %bb.b
  %.0102.lcssa = phi i32 [ %.1103.ph.lcssa, %.outer._crit_edge ], [ 0, %bb.b ]
  ret i32 %.0102.lcssa
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable
define noalias noundef ptr @sat_solver3_new() local_unnamed_addr #6 {
clause_read.exit:
  %i.a = tail call noalias dereferenceable_or_null(672) ptr @calloc(i64 noundef 672, i64 noundef 1) #29 ; 32 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 60
  store i32 256, ptr %i.c, align 4, !tbaa !52
  %i.d = tail call noalias dereferenceable_or_null(2048) ptr @calloc(i64 noundef 256, i64 noundef 8) #29 ; 3 uses
  %i.e = getelementptr i8, ptr %i.a, i64 64
  store ptr %i.d, ptr %i.e, align 8, !tbaa !45
  %i.f = tail call noalias dereferenceable_or_null(524288) ptr @malloc(i64 noundef 524288) #28 ; 3 uses
  store ptr %i.f, ptr %i.d, align 8, !tbaa !46
  %i.g = tail call noalias dereferenceable_or_null(524288) ptr @malloc(i64 noundef 524288) #28 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.g, ptr %i.h, align 8, !tbaa !46
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  store <4 x i32> <i32 1, i32 17, i32 131071, i32 131072>, ptr %i.i, align 4, !tbaa !32
  store i32 2, ptr %i.g, align 4, !tbaa !32
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i32 -1, ptr %i.j, align 8, !tbaa !42
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  store i32 4096, ptr %i.k, align 4
  store i32 1, ptr %i.b, align 8, !tbaa !32
  store i32 6, ptr %i.f, align 4, !tbaa !32
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 76
  store i32 2, ptr %i.l, align 4, !tbaa !63
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store ptr %i.k, ptr %i.m, align 8, !tbaa !64
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 464
  store <4 x i32> <i32 10000, i32 10000, i32 1000, i32 50>, ptr %i.n, align 8, !tbaa !32
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 296
  store i32 4, ptr %i.o, align 8, !tbaa !38
  %i.p = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #28
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 304
  store ptr %i.p, ptr %i.q, align 8, !tbaa !31
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 312
  store i32 4, ptr %i.r, align 8, !tbaa !38
  %i.s = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #28
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 320
  store ptr %i.s, ptr %i.t, align 8, !tbaa !31
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 264
  store i32 4, ptr %i.u, align 8, !tbaa !38
  %i.v = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #28
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 272
  store ptr %i.v, ptr %i.w, align 8, !tbaa !31
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  store i32 4, ptr %i.x, align 8, !tbaa !38
  %i.y = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #28
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  store ptr %i.y, ptr %i.z, align 8, !tbaa !31
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 280
  store i32 4, ptr %i.aa, align 8, !tbaa !38
  %i.ab = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #28
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 288
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !31
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 552
  store i32 4, ptr %i.ad, align 8, !tbaa !38
  %i.ae = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #28
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 560
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !31
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 640
  store i32 4, ptr %i.ag, align 8, !tbaa !38
  %i.ah = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #28
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 648
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !31
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 336
  store i32 4, ptr %i.aj, align 8, !tbaa !38
  %i.ak = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #28
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 344
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !31
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  store i64 32, ptr %i.am, align 8, !tbaa !29
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  store i64 -1, ptr %i.an, align 8, !tbaa !73
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  store i32 2048, ptr %i.ao, align 8, !tbaa !50
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 164
  store i32 -1, ptr %i.ap, align 4, !tbaa !74
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 512
  store i32 4, ptr %i.aq, align 8, !tbaa !38
  %i.ar = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #28
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 520
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !31
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 368
  store double f0x4195D9C3F4000000, ptr %i.at, align 8, !tbaa !75
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable
define noalias noundef ptr @zsat_solver3_new_seed(double noundef %0) local_unnamed_addr #6 {
clause_read.exit:
  %i.a = tail call noalias dereferenceable_or_null(672) ptr @calloc(i64 noundef 672, i64 noundef 1) #29 ; 32 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 60
  store i32 256, ptr %i.c, align 4, !tbaa !52
  %i.d = tail call noalias dereferenceable_or_null(2048) ptr @calloc(i64 noundef 256, i64 noundef 8) #29 ; 3 uses
  %i.e = getelementptr i8, ptr %i.a, i64 64
  store ptr %i.d, ptr %i.e, align 8, !tbaa !45
  %i.f = tail call noalias dereferenceable_or_null(131072) ptr @malloc(i64 noundef 131072) #28 ; 3 uses
  store ptr %i.f, ptr %i.d, align 8, !tbaa !46
  %i.g = tail call noalias dereferenceable_or_null(131072) ptr @malloc(i64 noundef 131072) #28 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.g, ptr %i.h, align 8, !tbaa !46
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  store <4 x i32> <i32 1, i32 15, i32 32767, i32 32768>, ptr %i.i, align 4, !tbaa !32
  store i32 2, ptr %i.g, align 4, !tbaa !32
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i32 -1, ptr %i.j, align 8, !tbaa !42
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  store i32 4096, ptr %i.k, align 4
  store i32 1, ptr %i.b, align 8, !tbaa !32
  store i32 6, ptr %i.f, align 4, !tbaa !32
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 76
  store i32 2, ptr %i.l, align 4, !tbaa !63
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store ptr %i.k, ptr %i.m, align 8, !tbaa !64
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 464
  store <4 x i32> <i32 10000, i32 10000, i32 1000, i32 50>, ptr %i.n, align 8, !tbaa !32
end_hunk_0
