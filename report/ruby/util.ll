Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/util?download=true
inline.NumInlined: 87
inline.NumDeleted: 13
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@d2b:bb.a
  %.not2428.i = icmp slt i32 %.319.i, 0
  %.020.i = select i1 %.not2428.i, i32 %.3.i69, i32 %spec.select27.i
  %i.bv = sub nuw nsw i32 %i.bi, %.020.i
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.sink = phi i32 [ %i.bh, %bb.t ], [ %i.bf, %bb.s ]
  %storemerge41 = phi i32 [ %i.bv, %bb.t ], [ %i.bg, %bb.s ]
  store i32 %.sink, ptr %1, align 4, !tbaa !7
  store i32 %storemerge41, ptr %2, align 4, !tbaa !7
  br label %Balloc.exit.thread

Balloc.exit.thread:                               ; preds = %bb.a, %bb.u
  ret ptr %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc ptr @pow5mult(ptr noundef captures(address, ret: address, provenance) %0, i32 noundef range(i32 1, -2147483648) %1) unnamed_addr #2 {
bb.a:
  %i.a = and i32 %1, 3                            ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = zext nneg i32 %i.a to i64
  %i.c = getelementptr [4 x i8], ptr @pow5mult.p05, i64 %i.b
  %i.d = getelementptr i8, ptr %i.c, i64 -4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !7
  %i.f = tail call fastcc ptr @multadd(ptr noundef %0, i32 noundef %i.e, i32 noundef 0) ; 2 uses
  %.not23 = icmp eq ptr %i.f, null
  br i1 %.not23, label %Bclear.exit41, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.069 = phi ptr [ %0, %bb.a ], [ %i.f, %bb.b ]  ; 6 uses
  %i.g = lshr i32 %1, 2                           ; 4 uses
  %.not24 = icmp eq i32 %i.g, 0
  br i1 %.not24, label %Bclear.exit41, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr @p5s, align 8, !tbaa !52   ; 2 uses
  %.not25 = icmp eq ptr %i.h, null
  br i1 %.not25, label %bb.e, label %.preheader

bb.e:                                             ; preds = %bb.d
  %i.i = tail call noalias dereferenceable_or_null(36) ptr @malloc(i64 noundef 36) #26 ; 7 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr i8, ptr %i.i, i64 8
  %i.k = getelementptr i8, ptr %i.i, i64 24
  store i32 625, ptr %i.k, align 8, !tbaa !7
  store <4 x i32> <i32 1, i32 2, i32 0, i32 1>, ptr %i.j, align 8, !tbaa !7
  store ptr null, ptr %i.i, align 8, !tbaa !53
  %i.l = ptrtoint ptr %i.i to i64
  %i.m = cmpxchg volatile ptr @p5s, i64 0, i64 %i.l seq_cst seq_cst, align 8 ; 2 uses
  %.not28 = extractvalue { i64, i1 } %i.m, 1
  br i1 %.not28, label %.preheader, label %.sink.split, !prof !54

.critedge:                                        ; preds = %bb.e
  %.not.i40 = icmp eq ptr %.069, null
  br i1 %.not.i40, label %Bclear.exit41, label %Bclear.exit41.sink.split

.sink.split:                                      ; preds = %bb.m, %bb.f
  %.sink90 = phi { i64, i1 } [ %i.m, %bb.f ], [ %i.v, %bb.m ]
  %.sink = phi ptr [ %i.i, %bb.f ], [ %i.t, %bb.m ]
  %.170.ph = phi ptr [ %.069, %bb.f ], [ %.271, %bb.m ]
  %.015.ph = phi i32 [ %i.g, %bb.f ], [ %i.r, %bb.m ]
  %i.n = extractvalue { i64, i1 } %.sink90, 0
  %i.o = inttoptr i64 %i.n to ptr
  tail call void @free(ptr noundef nonnull %.sink) #24
  br label %.preheader

.preheader:                                       ; preds = %bb.f, %bb.d, %.sink.split
  %.170.ph91 = phi ptr [ %.170.ph, %.sink.split ], [ %.069, %bb.f ], [ %.069, %bb.d ]
  %.2.ph = phi ptr [ %i.o, %.sink.split ], [ %i.i, %bb.f ], [ %i.h, %bb.d ]
  %.015.ph92 = phi i32 [ %.015.ph, %.sink.split ], [ %i.g, %bb.f ], [ %i.g, %bb.d ]
  br label %bb.g

bb.g:                                             ; preds = %.backedge, %.preheader
  %.170 = phi ptr [ %.170.ph91, %.preheader ], [ %.271, %.backedge ] ; 4 uses
  %.2 = phi ptr [ %.2.ph, %.preheader ], [ %.2.be, %.backedge ] ; 5 uses
  %.015 = phi i32 [ %.015.ph92, %.preheader ], [ %i.r, %.backedge ] ; 2 uses
  %i.p = and i32 %.015, 1
  %.not30 = icmp eq i32 %i.p, 0
  br i1 %.not30, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = tail call fastcc ptr @mult(ptr noundef %.170, ptr noundef nonnull %.2) ; 2 uses
  %.not.i42 = icmp eq ptr %.170, null
  br i1 %.not.i42, label %Bclear.exit43, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @free(ptr noundef nonnull %.170) #24
  br label %Bclear.exit43

Bclear.exit43:                                    ; preds = %bb.h, %bb.i
  %.not31 = icmp eq ptr %i.q, null
  br i1 %.not31, label %Bclear.exit41, label %bb.j

bb.j:                                             ; preds = %Bclear.exit43, %bb.g
  %.271 = phi ptr [ %.170, %bb.g ], [ %i.q, %Bclear.exit43 ] ; 5 uses
  %i.r = lshr i32 %.015, 1                        ; 3 uses
  %.not32 = icmp eq i32 %i.r, 0
  br i1 %.not32, label %Bclear.exit41, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.s = load ptr, ptr %.2, align 8, !tbaa !53    ; 2 uses
  %.not33 = icmp eq ptr %i.s, null
  br i1 %.not33, label %bb.l, label %.backedge

bb.l:                                             ; preds = %bb.k
  %i.t = tail call fastcc ptr @mult(ptr noundef nonnull %.2, ptr noundef nonnull %.2) ; 5 uses
  %.not35 = icmp eq ptr %i.t, null
  br i1 %.not35, label %.critedge39, label %bb.m

bb.m:                                             ; preds = %bb.l
  store ptr null, ptr %i.t, align 8, !tbaa !53
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = cmpxchg volatile ptr %.2, i64 0, i64 %i.u seq_cst seq_cst, align 8 ; 2 uses
  %.not36 = extractvalue { i64, i1 } %i.v, 1
  br i1 %.not36, label %.backedge, label %.sink.split, !prof !55

.backedge:                                        ; preds = %bb.m, %bb.k
  %.2.be = phi ptr [ %i.s, %bb.k ], [ %i.t, %bb.m ]
  br label %bb.g

.critedge39:                                      ; preds = %bb.l
  %.not.i46 = icmp eq ptr %.271, null
  br i1 %.not.i46, label %Bclear.exit41, label %Bclear.exit41.sink.split

Bclear.exit41.sink.split:                         ; preds = %.critedge39, %.critedge
  %.271.lcssa.sink = phi ptr [ %.069, %.critedge ], [ %.271, %.critedge39 ]
  tail call void @free(ptr noundef nonnull %.271.lcssa.sink) #24
  br label %Bclear.exit41

Bclear.exit41:                                    ; preds = %bb.j, %Bclear.exit43, %Bclear.exit41.sink.split, %.critedge39, %.critedge, %bb.c, %bb.b
  %.5 = phi ptr [ null, %.critedge ], [ null, %Bclear.exit41.sink.split ], [ null, %bb.b ], [ %.069, %bb.c ], [ null, %.critedge39 ], [ %.271, %bb.j ], [ null, %Bclear.exit43 ]
  ret ptr %.5
}

; Function Attrs: nofree nounwind sspstrong memory(readwrite, argmem: read, target_mem: none) uwtable
define internal fastcc noundef ptr @mult(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef readonly captures(address) %1) unnamed_addr #15 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !7
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 20
  %i.d = load i32, ptr %i.c, align 4, !tbaa !49
  %i.e = icmp slt i32 %i.d, 2
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = getelementptr i8, ptr %1, i64 24
  %i.g = load i32, ptr %i.f, align 8, !tbaa !7
  %.not77 = icmp eq i32 %i.g, 0
  %i.h = getelementptr i8, ptr %1, i64 20
  %i.i = load i32, ptr %i.h, align 4, !tbaa !49   ; 2 uses
  %i.j = icmp slt i32 %i.i, 2
  %or.cond = select i1 %.not77, i1 %i.j, i1 false
  br i1 %or.cond, label %bb.d, label %._crit_edge98

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #26 ; 4 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %Balloc.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr i8, ptr %i.k, i64 8
  store <4 x i32> <i32 0, i32 1, i32 0, i32 1>, ptr %i.l, align 8, !tbaa !7
  %i.m = getelementptr i8, ptr %i.k, i64 24
  store i32 0, ptr %i.m, align 8, !tbaa !7
  br label %Balloc.exit.thread

._crit_edge98:                                    ; preds = %bb.c
  %i.n = getelementptr i8, ptr %0, i64 20
  %i.o = load i32, ptr %i.n, align 4, !tbaa !49
  %i.p = icmp slt i32 %i.o, %i.i                  ; 2 uses
  %spec.select = select i1 %i.p, ptr %1, ptr %0   ; 4 uses
  %spec.select82 = select i1 %i.p, ptr %0, ptr %1 ; 2 uses
  %i.q = getelementptr i8, ptr %spec.select, i64 8
  %i.r = load i32, ptr %i.q, align 8, !tbaa !44
  %i.s = getelementptr i8, ptr %spec.select, i64 20
  %i.t = load i32, ptr %i.s, align 4, !tbaa !49   ; 2 uses
  %i.u = getelementptr i8, ptr %spec.select82, i64 20
  %i.v = load i32, ptr %i.u, align 4, !tbaa !49   ; 2 uses
  %i.w = add i32 %i.v, %i.t                       ; 5 uses
  %i.x = getelementptr i8, ptr %spec.select, i64 12
  %i.y = load i32, ptr %i.x, align 4, !tbaa !47
  %i.z = icmp sgt i32 %i.w, %i.y
  %i.aa = zext i1 %i.z to i32
  %.069 = add i32 %i.r, %i.aa                     ; 2 uses
  %i.ab = shl nuw i32 1, %.069                    ; 2 uses
  %i.ac = add i32 %i.ab, -1
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = shl nuw nsw i64 %i.ad, 2
  %i.af = add nuw nsw i64 %i.ae, 32
  %i.ag = tail call noalias ptr @malloc(i64 noundef %i.af) #26 ; 7 uses
  %.not.i83 = icmp eq ptr %i.ag, null
  br i1 %.not.i83, label %Balloc.exit.thread, label %bb.f

bb.f:                                             ; preds = %._crit_edge98
  %i.ah = getelementptr i8, ptr %i.ag, i64 8
  store i32 %.069, ptr %i.ah, align 8, !tbaa !44
  %i.ai = getelementptr i8, ptr %i.ag, i64 12
  store i32 %i.ab, ptr %i.ai, align 4, !tbaa !47
  %i.aj = getelementptr i8, ptr %i.ag, i64 20     ; 2 uses
  store i32 0, ptr %i.aj, align 4, !tbaa !49
  %i.ak = getelementptr i8, ptr %i.ag, i64 16
  store i32 0, ptr %i.ak, align 8, !tbaa !48
  %i.al = getelementptr i8, ptr %i.ag, i64 24     ; 4 uses
  %i.am = sext i32 %i.w to i64                    ; 2 uses
  %i.an = getelementptr [4 x i8], ptr %i.al, i64 %i.am ; 2 uses
  %i.ao = icmp ult ptr %i.al, %i.an
  br i1 %i.ao, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.f
  %i.ap = shl nsw i64 %i.am, 2
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.al, i8 0, i64 %i.ap, i1 false), !tbaa !7
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %bb.f
  %i.aq = getelementptr i8, ptr %spec.select, i64 24 ; 2 uses
  %i.ar = sext i32 %i.t to i64
  %i.as = getelementptr [4 x i8], ptr %i.aq, i64 %i.ar
  %i.at = getelementptr i8, ptr %spec.select82, i64 24 ; 3 uses
  %i.au = sext i32 %i.v to i64
  %i.av = getelementptr [4 x i8], ptr %i.at, i64 %i.au ; 2 uses
  %i.aw = icmp ult ptr %i.at, %i.av
  br i1 %i.aw, label %.lr.ph91, label %.preheader

.preheader:                                       ; preds = %bb.i, %._crit_edge
  %i.ax = icmp sgt i32 %i.w, 0
  br i1 %i.ax, label %.lr.ph94, label %.critedge

.lr.ph91:                                         ; preds = %._crit_edge, %bb.i
  %.06389 = phi ptr [ %i.bo, %bb.i ], [ %i.al, %._crit_edge ] ; 2 uses
  %.06588 = phi ptr [ %i.ay, %bb.i ], [ %i.at, %._crit_edge ] ; 2 uses
  %i.ay = getelementptr i8, ptr %.06588, i64 4    ; 2 uses
  %i.az = load i32, ptr %.06588, align 4, !tbaa !7 ; 2 uses
  %.not81 = icmp eq i32 %i.az, 0
  br i1 %.not81, label %bb.i, label %.preheader85

.preheader85:                                     ; preds = %.lr.ph91
  %i.ba = zext i32 %i.az to i64
  br label %bb.g

bb.g:                                             ; preds = %.preheader85, %bb.g
  %.167 = phi ptr [ %i.bb, %bb.g ], [ %i.aq, %.preheader85 ] ; 2 uses
  %.064 = phi ptr [ %i.bl, %bb.g ], [ %.06389, %.preheader85 ] ; 3 uses
  %.0 = phi i64 [ %i.bj, %bb.g ], [ 0, %.preheader85 ]
  %i.bb = getelementptr i8, ptr %.167, i64 4      ; 2 uses
  %i.bc = load i32, ptr %.167, align 4, !tbaa !7
  %i.bd = zext i32 %i.bc to i64
  %i.be = mul nuw i64 %i.bd, %i.ba
  %i.bf = load i32, ptr %.064, align 4, !tbaa !7
  %i.bg = zext i32 %i.bf to i64
  %i.bh = add nuw nsw i64 %.0, %i.bg
  %i.bi = add nuw i64 %i.bh, %i.be                ; 2 uses
  %i.bj = lshr i64 %i.bi, 32                      ; 2 uses
  %i.bk = trunc i64 %i.bi to i32
  %i.bl = getelementptr i8, ptr %.064, i64 4      ; 2 uses
  store i32 %i.bk, ptr %.064, align 4, !tbaa !7
  %i.bm = icmp ult ptr %i.bb, %i.as
  br i1 %i.bm, label %bb.g, label %bb.h, !llvm.loop !56

bb.h:                                             ; preds = %bb.g
  %i.bn = trunc nuw i64 %i.bj to i32
  store i32 %i.bn, ptr %i.bl, align 4, !tbaa !7
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph91, %bb.h
  %i.bo = getelementptr i8, ptr %.06389, i64 4
  %i.bp = icmp ult ptr %i.ay, %i.av
  br i1 %i.bp, label %.lr.ph91, label %.preheader, !llvm.loop !57

.lr.ph94:                                         ; preds = %.preheader, %bb.j
  %.193 = phi ptr [ %i.bq, %bb.j ], [ %i.an, %.preheader ]
  %.06892 = phi i32 [ %i.bs, %bb.j ], [ %i.w, %.preheader ] ; 3 uses
  %i.bq = getelementptr i8, ptr %.193, i64 -4     ; 2 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !7
  %.not80 = icmp eq i32 %i.br, 0
  br i1 %.not80, label %bb.j, label %.critedge

bb.j:                                             ; preds = %.lr.ph94
  %i.bs = add nsw i32 %.06892, -1
  %i.bt = icmp sgt i32 %.06892, 1
  br i1 %i.bt, label %.lr.ph94, label %.critedge, !llvm.loop !58

.critedge:                                        ; preds = %.lr.ph94, %bb.j, %.preheader
  %.068.lcssa = phi i32 [ %i.w, %.preheader ], [ 0, %bb.j ], [ %.06892, %.lr.ph94 ]
  store i32 %.068.lcssa, ptr %i.aj, align 4, !tbaa !49
  br label %Balloc.exit.thread

Balloc.exit.thread:                               ; preds = %._crit_edge98, %bb.d, %.critedge, %bb.e
  %.072 = phi ptr [ %i.ag, %.critedge ], [ null, %bb.d ], [ %i.k, %bb.e ], [ null, %._crit_edge98 ]
  ret ptr %.072
}

; Function Attrs: nounwind sspstrong memory(readwrite, target_mem: none) uwtable
define internal fastcc noundef ptr @lshift(ptr noundef captures(address, ret: address, provenance) %0, i32 noundef range(i32 1, -2147483648) %1) unnamed_addr #16 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 3 uses
  %i.b = getelementptr i8, ptr %0, i64 24         ; 4 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !7
  %.not = icmp eq i32 %i.c, 0
  %i.d = getelementptr i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !49   ; 2 uses
  %i.f = icmp slt i32 %i.e, 2
  %or.cond = select i1 %.not, i1 %i.f, i1 false
  br i1 %or.cond, label %Bclear.exit, label %._crit_edge70

._crit_edge70:                                    ; preds = %bb.a
  %i.g = lshr i32 %1, 5                           ; 3 uses
  %i.h = getelementptr i8, ptr %0, i64 8
  %i.i = load i32, ptr %i.h, align 8, !tbaa !44   ; 2 uses
  %i.j = getelementptr i8, ptr %0, i64 20
  %i.k = add i32 %i.e, %i.g                       ; 3 uses
  %i.l = add i32 %i.k, 1                          ; 3 uses
  %i.m = getelementptr i8, ptr %0, i64 12
  %i.n = load i32, ptr %i.m, align 4, !tbaa !47   ; 2 uses
  %i.o = icmp sgt i32 %i.l, %i.n
  br i1 %i.o, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %._crit_edge70, %.lr.ph
  %.03959 = phi i32 [ %i.p, %.lr.ph ], [ %i.i, %._crit_edge70 ]
  %.04058 = phi i32 [ %i.q, %.lr.ph ], [ %i.n, %._crit_edge70 ]
  %i.p = add i32 %.03959, 1                       ; 2 uses
  %i.q = shl i32 %.04058, 1                       ; 2 uses
  %i.r = icmp sgt i32 %i.l, %i.q
  br i1 %i.r, label %.lr.ph, label %._crit_edge, !llvm.loop !59

._crit_edge:                                      ; preds = %.lr.ph, %._crit_edge70
  %.039.lcssa = phi i32 [ %i.i, %._crit_edge70 ], [ %i.p, %.lr.ph ] ; 2 uses
  %i.s = shl nuw i32 1, %.039.lcssa               ; 2 uses
  %i.t = add i32 %i.s, -1
  %i.u = zext nneg i32 %i.t to i64
  %i.v = shl nuw nsw i64 %i.u, 2
  %i.w = add nuw nsw i64 %i.v, 32
  %i.x = tail call noalias ptr @malloc(i64 noundef %i.w) #26 ; 8 uses
  %.not.i = icmp eq ptr %i.x, null
  br i1 %.not.i, label %Bclear.exit.sink.split, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.y = getelementptr i8, ptr %i.x, i64 8
  store i32 %.039.lcssa, ptr %i.y, align 8, !tbaa !44
  %i.z = getelementptr i8, ptr %i.x, i64 12
  store i32 %i.s, ptr %i.z, align 4, !tbaa !47
  %i.aa = getelementptr i8, ptr %i.x, i64 20
  %i.ab = getelementptr i8, ptr %i.x, i64 16
  store i32 0, ptr %i.ab, align 8, !tbaa !48
  %i.ac = getelementptr i8, ptr %i.x, i64 24      ; 2 uses
  %.not66 = icmp eq i32 %i.g, 0
  br i1 %.not66, label %._crit_edge64, label %.lr.ph63.preheader

.lr.ph63.preheader:                               ; preds = %bb.b
  %i.ad = add nsw i32 %i.g, -1
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = shl nuw nsw i64 %i.ae, 2                ; 2 uses
  %i.ag = add nuw nsw i64 %i.af, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ac, i8 0, i64 %i.ag, i1 false), !tbaa !7
  %i.ah = getelementptr i8, ptr %i.x, i64 %i.af
  %scevgep = getelementptr i8, ptr %i.ah, i64 28
  br label %._crit_edge64

._crit_edge64:                                    ; preds = %.lr.ph63.preheader, %bb.b
  %.035.lcssa = phi ptr [ %i.ac, %bb.b ], [ %scevgep, %.lr.ph63.preheader ] ; 2 uses
  %i.ai = load i32, ptr %i.j, align 4, !tbaa !49
  %i.aj = sext i32 %i.ai to i64                   ; 2 uses
  %i.ak = getelementptr [4 x i8], ptr %i.b, i64 %i.aj
  %i.al = and i32 %1, 31                          ; 3 uses
  %.not48 = icmp eq i32 %i.al, 0
  br i1 %.not48, label %.preheader.preheader, label %bb.c

.preheader.preheader:                             ; preds = %._crit_edge64
  %i.am = shl nsw i64 %i.aj, 2
  %i.an = add i64 %i.am, %i.a
  %i.ao = add i64 %i.an, 24
  %i.ap = add i64 %i.a, 28
  %umax = tail call i64 @llvm.umax.i64(i64 %i.ao, i64 %i.ap)
  %i.aq = add i64 %umax, -25
  %i.ar = sub i64 %i.aq, %i.a
  %i.as = and i64 %i.ar, -4
  %i.at = add i64 %i.as, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %.035.lcssa, ptr nonnull align 8 %i.b, i64 %i.at, i1 false), !tbaa !7
  br label %Bclear.exit52

bb.c:                                             ; preds = %._crit_edge64
  %i.au = sub nuw nsw i32 32, %i.al
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %.036 = phi ptr [ %i.b, %bb.c ], [ %i.az, %bb.d ] ; 2 uses
  %.1 = phi ptr [ %.035.lcssa, %bb.c ], [ %i.ay, %bb.d ] ; 2 uses
  %.0 = phi i32 [ 0, %bb.c ], [ %i.ba, %bb.d ]
  %i.av = load i32, ptr %.036, align 4, !tbaa !7  ; 2 uses
  %i.aw = shl i32 %i.av, %i.al
  %i.ax = or i32 %i.aw, %.0
  %i.ay = getelementptr i8, ptr %.1, i64 4        ; 2 uses
  store i32 %i.ax, ptr %.1, align 4, !tbaa !7
  %i.az = getelementptr i8, ptr %.036, i64 4      ; 2 uses
  %i.ba = lshr i32 %i.av, %i.au                   ; 3 uses
  %i.bb = icmp ult ptr %i.az, %i.ak
  br i1 %i.bb, label %bb.d, label %bb.e, !llvm.loop !60

bb.e:                                             ; preds = %bb.d
  store i32 %i.ba, ptr %i.ay, align 4, !tbaa !7
  %.not49 = icmp eq i32 %i.ba, 0
  %spec.select = select i1 %.not49, i32 %i.k, i32 %i.l
  br label %Bclear.exit52

Bclear.exit52:                                    ; preds = %.preheader.preheader, %bb.e
  %.038 = phi i32 [ %spec.select, %bb.e ], [ %i.k, %.preheader.preheader ]
  store i32 %.038, ptr %i.aa, align 4, !tbaa !49
  br label %Bclear.exit.sink.split

Bclear.exit.sink.split:                           ; preds = %._crit_edge, %Bclear.exit52
  %.042.ph = phi ptr [ %i.x, %Bclear.exit52 ], [ null, %._crit_edge ]
  tail call void @free(ptr noundef nonnull %0) #24
end_hunk_0
begin_hunk_1_@ruby_hdtoa:bb.a
  store ptr %i.i, ptr %5, align 8, !tbaa !17
  br label %nrv_alloc.exit

bb.i:                                             ; preds = %bb.f
  %i.j = bitcast double %.pre-phi to i64
  %sum.shift = lshr i64 %i.j, 52                  ; 2 uses
  %.not86 = icmp eq i64 %sum.shift, 0             ; 3 uses
  %i.k = fmul nnan double %.pre-phi, f0x6010000000000000 ; 2 uses
  %i.l = bitcast double %i.k to i64
  %sum.shift87 = lshr i64 %i.l, 52
  %sum.shift.sink = select i1 %.not86, i64 %sum.shift87, i64 %sum.shift
  %.sink118 = select i1 %.not86, i32 -1536, i32 -1022
  %.sroa.0.1 = select i1 %.not86, double %i.k, double %.pre-phi ; 2 uses
  %i.m = trunc nuw nsw i64 %sum.shift.sink to i32
  %i.n = add nsw i32 %.sink118, %i.m
  store i32 %i.n, ptr %3, align 4, !tbaa !7
  %spec.store.select = tail call i32 @llvm.umax.i32(i32 %2, i32 1) ; 6 uses
  %i.o = icmp sgt i32 %spec.store.select, 0
  %i.p = select i1 %i.o, i32 %spec.store.select, i32 15 ; 3 uses
  %i.q = add nuw i32 %i.p, 1
  %i.r = sext i32 %i.q to i64
  %i.s = tail call noalias ptr @malloc(i64 noundef %i.r) #26 ; 8 uses
  %.not88 = icmp eq ptr %i.s, null
  br i1 %.not88, label %nrv_alloc.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %or.cond = icmp ult i32 %2, 15
  br i1 %or.cond, label %bb.k, label %._crit_edge107

._crit_edge107:                                   ; preds = %bb.j
  %.pre108 = bitcast double %.sroa.0.1 to i64
  br label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.t = shl nuw nsw i32 %spec.store.select, 2
  %i.u = bitcast double %.sroa.0.1 to i64         ; 2 uses
  %.sroa.0.4.extract.shift37 = lshr i64 %i.u, 32
  %.sroa.0.4.extract.trunc38 = trunc nuw nsw i64 %.sroa.0.4.extract.shift37 to i32
  %i.v = and i32 %.sroa.0.4.extract.trunc38, -2146435073
  %i.w = shl nuw nsw i32 %spec.store.select, 22
  %i.x = add nuw nsw i32 %i.w, 1013972992
  %i.y = or disjoint i32 %i.v, %i.x
  %.sroa.0.4.insert.ext40 = zext i32 %i.y to i64
  %.sroa.0.4.insert.shift41 = shl nuw i64 %.sroa.0.4.insert.ext40, 32
  %.sroa.0.4.insert.mask42 = and i64 %i.u, 4294967295
  %.sroa.0.4.insert.insert43 = or disjoint i64 %.sroa.0.4.insert.shift41, %.sroa.0.4.insert.mask42
  %i.z = bitcast i64 %.sroa.0.4.insert.insert43 to double
  %i.aa = fadd double %i.z, 1.000000e+00
  %i.ab = fadd double %i.aa, -1.000000e+00
  %i.ac = bitcast double %i.ab to i64             ; 2 uses
  %sum.shift89 = lshr i64 %i.ac, 52
  %i.ad = trunc nuw nsw i64 %sum.shift89 to i32
  %reass.sub = sub nsw i32 %i.ad, %i.t
  %i.ae = add nsw i32 %reass.sub, -967
  %i.af = load i32, ptr %3, align 4, !tbaa !7
  %i.ag = add i32 %i.ae, %i.af
  store i32 %i.ag, ptr %3, align 4, !tbaa !7
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge107, %bb.k
  %.pre-phi109 = phi i64 [ %.pre108, %._crit_edge107 ], [ %i.ac, %bb.k ] ; 2 uses
  store i8 49, ptr %i.s, align 1, !tbaa !11
  %i.ah = zext nneg i32 %i.p to i64               ; 2 uses
  %i.ai = getelementptr i8, ptr %i.s, i64 %i.ah   ; 2 uses
  %.082101 = getelementptr i8, ptr %i.s, i64 1    ; 3 uses
  %i.aj = icmp ult ptr %.082101, %i.ai
  br i1 %i.aj, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.l
  %.sroa.0.0.extract.trunc = trunc i64 %.pre-phi109 to i32 ; 2 uses
  %.sroa.0.4.extract.shift48 = lshr i64 %.pre-phi109, 32
  %.sroa.0.4.extract.trunc49 = trunc nuw i64 %.sroa.0.4.extract.shift48 to i32 ; 2 uses
  %i.ak = add nuw nsw i64 %i.ah, 3
  %xtraiter = and i64 %i.ak, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.082104.prol = phi ptr [ %.082.prol, %.lr.ph.prol ], [ %.082101, %.lr.ph.preheader ] ; 2 uses
  %.080103.prol = phi i32 [ %i.ar, %.lr.ph.prol ], [ %.sroa.0.0.extract.trunc, %.lr.ph.preheader ] ; 2 uses
  %.081102.prol = phi i32 [ %i.aq, %.lr.ph.prol ], [ %.sroa.0.4.extract.trunc49, %.lr.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.al = lshr i32 %.081102.prol, 16
  %i.am = and i32 %i.al, 15
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = getelementptr i8, ptr %1, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !11
  store i8 %i.ap, ptr %.082104.prol, align 1, !tbaa !11
  %i.aq = tail call i32 @llvm.fshl.i32(i32 %.081102.prol, i32 %.080103.prol, i32 4) ; 2 uses
  %i.ar = shl i32 %.080103.prol, 4                ; 2 uses
  %.082.prol = getelementptr i8, ptr %.082104.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !78

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.082104.unr = phi ptr [ %.082101, %.lr.ph.preheader ], [ %.082.prol, %.lr.ph.prol ]
  %.080103.unr = phi i32 [ %.sroa.0.0.extract.trunc, %.lr.ph.preheader ], [ %i.ar, %.lr.ph.prol ]
  %.081102.unr = phi i32 [ %.sroa.0.4.extract.trunc49, %.lr.ph.preheader ], [ %i.aq, %.lr.ph.prol ]
  %i.as = add nsw i32 %i.p, -2
  %i.at = icmp ult i32 %i.as, 3
  br i1 %i.at, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.082104 = phi ptr [ %.082.3, %.lr.ph ], [ %.082104.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %.080103 = phi i32 [ %i.bv, %.lr.ph ], [ %.080103.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %.081102 = phi i32 [ %i.bu, %.lr.ph ], [ %.081102.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %i.au = lshr i32 %.081102, 16
  %i.av = and i32 %i.au, 15
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = getelementptr i8, ptr %1, i64 %i.aw
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !11
  store i8 %i.ay, ptr %.082104, align 1, !tbaa !11
  %i.az = tail call i32 @llvm.fshl.i32(i32 %.081102, i32 %.080103, i32 4) ; 2 uses
  %i.ba = shl i32 %.080103, 4
  %.082 = getelementptr i8, ptr %.082104, i64 1
  %i.bb = lshr i32 %i.az, 16
  %i.bc = and i32 %i.bb, 15
  %i.bd = zext nneg i32 %i.bc to i64
  %i.be = getelementptr i8, ptr %1, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !11
  store i8 %i.bf, ptr %.082, align 1, !tbaa !11
  %i.bg = tail call i32 @llvm.fshl.i32(i32 %i.az, i32 %i.ba, i32 4) ; 2 uses
  %i.bh = shl i32 %.080103, 8
  %.082.1 = getelementptr i8, ptr %.082104, i64 2
  %i.bi = lshr i32 %i.bg, 16
  %i.bj = and i32 %i.bi, 15
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = getelementptr i8, ptr %1, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !11
  store i8 %i.bm, ptr %.082.1, align 1, !tbaa !11
  %i.bn = tail call i32 @llvm.fshl.i32(i32 %i.bg, i32 %i.bh, i32 4) ; 2 uses
  %i.bo = shl i32 %.080103, 12
  %.082.2 = getelementptr i8, ptr %.082104, i64 3
  %i.bp = lshr i32 %i.bn, 16
  %i.bq = and i32 %i.bp, 15
  %i.br = zext nneg i32 %i.bq to i64
  %i.bs = getelementptr i8, ptr %1, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !11
  store i8 %i.bt, ptr %.082.2, align 1, !tbaa !11
  %i.bu = tail call i32 @llvm.fshl.i32(i32 %i.bn, i32 %i.bo, i32 4)
  %i.bv = shl i32 %.080103, 16
  %.082.3 = getelementptr i8, ptr %.082104, i64 4 ; 2 uses
  %exitcond.not.3 = icmp eq ptr %.082.3, %i.ai
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !79

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.l
  %i.bw = icmp slt i32 %spec.store.select, 0
  br i1 %i.bw, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %._crit_edge, %.preheader
  %.079 = phi i32 [ %i.bx, %.preheader ], [ 15, %._crit_edge ] ; 2 uses
  %i.bx = add i32 %.079, -1                       ; 2 uses
  %i.by = sext i32 %i.bx to i64
  %i.bz = getelementptr i8, ptr %i.s, i64 %i.by
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !11
  %i.cb = icmp eq i8 %i.ca, 48
  br i1 %i.cb, label %.preheader, label %.loopexit, !llvm.loop !80

.loopexit:                                        ; preds = %.preheader, %._crit_edge
  %.1 = phi i32 [ %spec.store.select, %._crit_edge ], [ %.079, %.preheader ]
  %i.cc = sext i32 %.1 to i64
  %i.cd = getelementptr i8, ptr %i.s, i64 %i.cc   ; 2 uses
  store i8 0, ptr %i.cd, align 1, !tbaa !11
  %.not90 = icmp eq ptr %5, null
  br i1 %.not90, label %nrv_alloc.exit, label %bb.m

bb.m:                                             ; preds = %.loopexit
  store ptr %i.cd, ptr %5, align 8, !tbaa !17
  br label %nrv_alloc.exit

nrv_alloc.exit:                                   ; preds = %bb.h, %.preheader.i92, %bb.g, %bb.c, %.preheader.i, %bb.b, %.loopexit, %bb.m, %bb.i, %bb.e
  %.0 = phi ptr [ %i.s, %.loopexit ], [ %i.f, %bb.e ], [ %i.d, %bb.c ], [ null, %bb.i ], [ %i.s, %bb.m ], [ null, %bb.b ], [ %i.d, %.preheader.i ], [ null, %bb.g ], [ %i.h, %.preheader.i92 ], [ %i.h, %bb.h ]
  ret ptr %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i1 @llvm.is.fpclass.f64(double, i32 immarg) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr, i32, i64) local_unnamed_addr #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #23

attributes #0 = { nofree norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #13 = { mustprogress nofree nounwind sspstrong willreturn memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind sspstrong willreturn memory(readwrite, argmem: write, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nounwind sspstrong memory(readwrite, argmem: read, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nounwind sspstrong memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree nounwind sspstrong memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree nounwind sspstrong memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #24 = { nounwind }
attributes #25 = { nounwind willreturn memory(read) }
attributes #26 = { nounwind allocsize(0) }
attributes #27 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!9, !9, i64 0}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!15, !15, i64 0}
!15 = !{!"long", !9, i64 0}
!16 = distinct !{!16, !13}
!17 = !{!18, !18, i64 0}
!18 = !{!"p1 omnipotent char", !19, i64 0}
!19 = !{!"any pointer", !9, i64 0}
!20 = !{!21, !19, i64 32}
!21 = !{!"RTypedData", !22, i64 0, !15, i64 16, !15, i64 24, !19, i64 32}
!22 = !{!"RBasic", !15, i64 0, !15, i64 8}
!23 = !{!24, !24, i64 0}
!24 = !{!"p1 long", !19, i64 0}
!25 = !{i64 2150843125}
!26 = distinct !{!26, !13}
!27 = distinct !{!27, !13}
!28 = distinct !{!28, !13}
!29 = distinct !{!29, !13}
!30 = distinct !{!30, !13}
!31 = distinct !{!31, !13}
!32 = distinct !{!32, !13}
!33 = distinct !{!33, !13}
!34 = distinct !{!34, !13}
!35 = distinct !{!35, !13}
!36 = distinct !{!36, !13}
!37 = distinct !{!37, !13}
!38 = distinct !{!38, !13}
!39 = !{!40, !40, i64 0}
!40 = !{!"double", !9, i64 0}
!41 = distinct !{!41, !13}
!42 = distinct !{!42, !13}
!43 = distinct !{!43, !13}
!44 = !{!45, !8, i64 8}
!45 = !{!"Bigint", !46, i64 0, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !9, i64 24}
!46 = !{!"p1 _ZTS6Bigint", !19, i64 0}
!47 = !{!45, !8, i64 12}
!48 = !{!45, !8, i64 16}
!49 = !{!45, !8, i64 20}
!50 = distinct !{!50, !13}
!51 = distinct !{!51, !13}
!52 = !{!46, !46, i64 0}
!53 = !{!45, !46, i64 0}
!54 = !{!"branch_weights", !"expected", i32 2145766520, i32 1717128}
!55 = !{!"branch_weights", !"expected", i32 2146162781, i32 1320867}
!56 = distinct !{!56, !13}
!57 = distinct !{!57, !13}
!58 = distinct !{!58, !13}
!59 = distinct !{!59, !13}
!60 = distinct !{!60, !13}
!61 = distinct !{!61, !13}
!62 = distinct !{!62, !13}
!63 = distinct !{!63, !13}
!64 = distinct !{!64, !13}
!65 = distinct !{!65, !13}
!66 = distinct !{!66, !13}
!67 = distinct !{!67, !13}
!68 = distinct !{!68, !13}
!69 = distinct !{!69, !13}
!70 = distinct !{!70, !13}
!71 = distinct !{!71, !13}
!72 = distinct !{!72, !73}
!73 = !{!"llvm.loop.unroll.disable"}
!74 = distinct !{!74, !13}
!75 = distinct !{!75, !13}
!76 = distinct !{!76, !13}
!77 = distinct !{!77, !13}
!78 = distinct !{!78, !73}
!79 = distinct !{!79, !13}
!80 = distinct !{!80, !13}
end_hunk_1
