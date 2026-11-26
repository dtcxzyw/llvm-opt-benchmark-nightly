Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/simdjson/original/simdjson?download=true
inline.NumInlined: 1188
inline.NumDeleted: 362
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN8simdjson8internal13parse_decimalERPKc:bb.a
  %.042 = phi i32 [ %spec.select, %.critedge ], [ 0, %bb.k ] ; 2 uses
  %.044 = getelementptr inbounds i8, ptr %.pn, i64 -1 ; 2 uses
  %i.bm = load i8, ptr %.044, align 1, !tbaa !36  ; 2 uses
  switch i8 %i.bm, label %bb.l [
    i8 48, label %.critedge
    i8 46, label %.critedge
  ]

.critedge:                                        ; preds = %.preheader119, %.preheader119
  %i.bn = icmp eq i8 %i.bm, 48
  %i.bo = zext i1 %i.bn to i32
  %spec.select = add nuw nsw i32 %.042, %i.bo
  br label %.preheader119, !llvm.loop !180

bb.l:                                             ; preds = %.preheader119
  %i.bp = add nsw i32 %i.bj, %i.bl                ; 3 uses
  store i32 %i.bp, ptr %i.a, align 4, !tbaa !44
  %i.bq = sub i32 %i.bl, %.042                    ; 2 uses
  store i32 %i.bq, ptr %0, align 4, !tbaa !43
  %i.br = icmp ugt i32 %i.bq, 768
  br i1 %i.br, label %bb.m, label %.thread

bb.m:                                             ; preds = %bb.l
  store i32 768, ptr %0, align 4, !tbaa !43
  store i8 1, ptr %i.b, align 1, !tbaa !45
  br label %.thread

.thread:                                          ; preds = %._crit_edge.thread, %bb.k, %bb.m, %bb.l
  %i.bs = phi ptr [ %i.bk, %bb.k ], [ %i.bk, %bb.m ], [ %i.bk, %bb.l ], [ %.promoted54, %._crit_edge.thread ] ; 3 uses
  %i.bt = phi i32 [ %i.bj, %bb.k ], [ %i.bp, %bb.m ], [ %i.bp, %bb.l ], [ 0, %._crit_edge.thread ]
  %i.bu = load i8, ptr %i.bs, align 1, !tbaa !36
  switch i8 %i.bu, label %bb.p [
    i8 101, label %bb.n
    i8 69, label %bb.n
  ]

bb.n:                                             ; preds = %.thread, %.thread
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 1 ; 3 uses
  store ptr %i.bv, ptr %1, align 8, !tbaa !48
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !36  ; 2 uses
  %i.bx = icmp eq i8 %i.bw, 45
  switch i8 %i.bw, label %bb.o [
    i8 45, label %.sink.split
    i8 43, label %.sink.split
  ]

.sink.split:                                      ; preds = %bb.n, %bb.n
  %i.by = getelementptr inbounds nuw i8, ptr %i.bs, i64 2 ; 2 uses
  store ptr %i.by, ptr %1, align 8, !tbaa !48
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.sink.split
  %.promoted70 = phi ptr [ %i.bv, %bb.n ], [ %i.by, %.sink.split ] ; 2 uses
  %i.bz = load i8, ptr %.promoted70, align 1, !tbaa !36
  %i.ca = add i8 %i.bz, -48                       ; 2 uses
  %i.cb = icmp ult i8 %i.ca, 10
  br i1 %i.cb, label %.lr.ph73, label %._crit_edge74

.lr.ph73:                                         ; preds = %bb.o, %.lr.ph73
  %i.cc = phi i8 [ %i.ck, %.lr.ph73 ], [ %i.ca, %bb.o ]
  %.071 = phi i32 [ %.1, %.lr.ph73 ], [ 0, %bb.o ] ; 3 uses
  %i.cd = phi ptr [ %i.ci, %.lr.ph73 ], [ %.promoted70, %bb.o ]
  %i.ce = icmp slt i32 %.071, 65536
  %i.cf = mul nsw i32 %.071, 10
  %i.cg = zext nneg i8 %i.cc to i32
  %i.ch = add nsw i32 %i.cf, %i.cg
  %.1 = select i1 %i.ce, i32 %i.ch, i32 %.071     ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cd, i64 1 ; 3 uses
  store ptr %i.ci, ptr %1, align 8, !tbaa !48
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !36
  %i.ck = add i8 %i.cj, -48                       ; 2 uses
  %i.cl = icmp ult i8 %i.ck, 10
  br i1 %i.cl, label %.lr.ph73, label %._crit_edge74, !llvm.loop !181

._crit_edge74:                                    ; preds = %.lr.ph73, %bb.o
  %.0.lcssa = phi i32 [ 0, %bb.o ], [ %.1, %.lr.ph73 ] ; 2 uses
  %i.cm = sub nsw i32 0, %.0.lcssa
  %i.cn = select i1 %i.bx, i32 %i.cm, i32 %.0.lcssa
  %i.co = add nsw i32 %i.bt, %i.cn
  store i32 %i.co, ptr %i.a, align 4, !tbaa !44
  br label %bb.p

bb.p:                                             ; preds = %.thread, %._crit_edge74
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN8simdjson8internal13parse_decimalERPKcS2_(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.simdjson::internal::decimal") align 4 captures(none) initializes((0, 8), (9, 10)) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef readnone captures(address) %2) local_unnamed_addr #3 {
bb.a:
  store i32 0, ptr %0, align 4, !tbaa !43
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  store i32 0, ptr %i.a, align 4, !tbaa !44
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 2 uses
  store i8 0, ptr %i.b, align 1, !tbaa !45
  %i.c = load ptr, ptr %1, align 8, !tbaa !48     ; 4 uses
  %i.d = icmp eq ptr %i.c, %2
  br i1 %i.d, label %bb.v, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i8, ptr %i.c, align 1, !tbaa !36    ; 2 uses
  %i.f = icmp eq i8 %i.e, 45
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = zext i1 %i.f to i8
  store i8 %i.h, ptr %i.g, align 4, !tbaa !49
  switch i8 %i.e, label %bb.d [
    i8 45, label %bb.c
    i8 43, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 2 uses
  store ptr %i.i, ptr %1, align 8, !tbaa !48
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.promoted = phi ptr [ %i.c, %bb.b ], [ %i.i, %bb.c ] ; 3 uses
  %.not95 = icmp eq ptr %.promoted, %2
  br i1 %.not95, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %bb.e
  %i.j = phi ptr [ %i.m, %bb.e ], [ %.promoted, %bb.d ] ; 3 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !36
  %i.l = icmp eq i8 %i.k, 48
  br i1 %i.l, label %bb.e, label %.critedge

bb.e:                                             ; preds = %.lr.ph
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 1 ; 4 uses
  store ptr %i.m, ptr %1, align 8, !tbaa !48
  %.not = icmp eq ptr %i.m, %2
  br i1 %.not, label %.critedge, label %.lr.ph, !llvm.loop !182

.critedge:                                        ; preds = %.lr.ph, %bb.e, %bb.d
  %.promoted97 = phi ptr [ %.promoted, %bb.d ], [ %i.j, %.lr.ph ], [ %i.m, %bb.e ] ; 3 uses
  %.not87101 = icmp eq ptr %.promoted97, %2
  br i1 %.not87101, label %.critedge2.thread.loopexit, label %.lr.ph102

.lr.ph102:                                        ; preds = %.critedge
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph102, %bb.i
  %i.o = phi ptr [ %.promoted97, %.lr.ph102 ], [ %i.w, %bb.i ] ; 5 uses
  %.promoted106 = phi i32 [ 0, %.lr.ph102 ], [ %i.v, %bb.i ] ; 8 uses
  %i.p = load i8, ptr %i.o, align 1, !tbaa !36
  %i.q = add i8 %i.p, -48                         ; 2 uses
  %i.r = icmp ult i8 %i.q, 10
  br i1 %i.r, label %bb.g, label %.critedge2

bb.g:                                             ; preds = %bb.f
  %i.s = icmp ult i32 %.promoted106, 768
  br i1 %i.s, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.t = zext nneg i32 %.promoted106 to i64
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.t
  store i8 %i.q, ptr %i.u, align 1, !tbaa !36
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.v = add i32 %.promoted106, 1                 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 1 ; 4 uses
  store ptr %i.w, ptr %1, align 8, !tbaa !48
  %.not87 = icmp eq ptr %i.w, %2
  br i1 %.not87, label %.critedge2.thread.loopexit, label %bb.f, !llvm.loop !183

.critedge2:                                       ; preds = %bb.f
  store i32 %.promoted106, ptr %0, align 4
  %i.x = load i8, ptr %i.o, align 1, !tbaa !36
  %i.y = icmp eq i8 %i.x, 46
  br i1 %i.y, label %bb.j, label %.critedge2.thread

bb.j:                                             ; preds = %.critedge2
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 1 ; 7 uses
  store ptr %i.z, ptr %1, align 8, !tbaa !48
  %i.aa = icmp eq ptr %i.z, %2
  br i1 %i.aa, label %bb.v, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = icmp eq i32 %.promoted106, 0
  br i1 %i.ab, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.k
  %i.ac = load i8, ptr %i.z, align 1, !tbaa !36
  %i.ad = icmp eq i8 %i.ac, 48
  br i1 %i.ad, label %.lr.ph104, label %.loopexit

.lr.ph104:                                        ; preds = %.preheader, %.lr.ph104
  %i.ae = phi ptr [ %i.af, %.lr.ph104 ], [ %i.z, %.preheader ]
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 1 ; 4 uses
  store ptr %i.af, ptr %1, align 8, !tbaa !48
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !36
  %i.ah = icmp eq i8 %i.ag, 48
  br i1 %i.ah, label %.lr.ph104, label %.loopexit, !llvm.loop !184

.loopexit:                                        ; preds = %.lr.ph104, %.preheader, %bb.k
  %.promoted105 = phi ptr [ %i.z, %bb.k ], [ %i.z, %.preheader ], [ %i.af, %.lr.ph104 ] ; 3 uses
  %.not89108 = icmp eq ptr %.promoted105, %2
  br i1 %.not89108, label %.critedge4, label %.lr.ph109

.lr.ph109:                                        ; preds = %.loopexit, %bb.n
  %i.ai = phi ptr [ %i.ar, %bb.n ], [ %.promoted105, %.loopexit ] ; 4 uses
  %i.aj = phi i32 [ %i.aq, %bb.n ], [ %.promoted106, %.loopexit ] ; 4 uses
  %i.ak = load i8, ptr %i.ai, align 1, !tbaa !36
  %i.al = add i8 %i.ak, -48                       ; 2 uses
  %i.am = icmp ult i8 %i.al, 10
  br i1 %i.am, label %bb.l, label %.critedge4

bb.l:                                             ; preds = %.lr.ph109
  %i.an = icmp ult i32 %i.aj, 768
  br i1 %i.an, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ao = zext nneg i32 %i.aj to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.ao
  store i8 %i.al, ptr %i.ap, align 1, !tbaa !36
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.aq = add i32 %i.aj, 1                        ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ai, i64 1 ; 4 uses
  store ptr %i.ar, ptr %1, align 8, !tbaa !48
  %.not89 = icmp eq ptr %i.ar, %2
  br i1 %.not89, label %.critedge4, label %.lr.ph109, !llvm.loop !185

.critedge4:                                       ; preds = %.lr.ph109, %bb.n, %.loopexit
  %3 = phi ptr [ %.promoted105, %.loopexit ], [ %i.ar, %bb.n ], [ %i.ai, %.lr.ph109 ]
  %.lcssa107 = phi i32 [ %.promoted106, %.loopexit ], [ %i.aq, %bb.n ], [ %i.aj, %.lr.ph109 ] ; 2 uses
  %.lcssa = phi ptr [ %2, %.loopexit ], [ %2, %bb.n ], [ %i.ai, %.lr.ph109 ]
  store i32 %.lcssa107, ptr %0, align 4
  %i.as = ptrtoint ptr %i.z to i64
  %i.at = ptrtoint ptr %.lcssa to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = trunc i64 %i.au to i32                  ; 2 uses
  store i32 %i.av, ptr %i.a, align 4, !tbaa !44
  br label %.critedge2.thread

.critedge2.thread.loopexit:                       ; preds = %bb.i, %.critedge
  %i.aw = phi ptr [ %.promoted97, %.critedge ], [ %i.w, %bb.i ]
  %.lcssa99 = phi i32 [ 0, %.critedge ], [ %i.v, %bb.i ] ; 2 uses
  store i32 %.lcssa99, ptr %0, align 4
  br label %.critedge2.thread

.critedge2.thread:                                ; preds = %.critedge2.thread.loopexit, %.critedge4, %.critedge2
  %i.ax = phi i32 [ 0, %.critedge2.thread.loopexit ], [ %i.av, %.critedge4 ], [ 0, %.critedge2 ] ; 2 uses
  %i.ay = phi ptr [ %i.aw, %.critedge2.thread.loopexit ], [ %3, %.critedge4 ], [ %i.o, %.critedge2 ] ; 5 uses
  %i.az = phi i32 [ %.lcssa99, %.critedge2.thread.loopexit ], [ %.lcssa107, %.critedge4 ], [ %.promoted106, %.critedge2 ] ; 3 uses
  %.not90 = icmp eq i32 %i.az, 0
  br i1 %.not90, label %.thread, label %.preheader155

.preheader155:                                    ; preds = %.critedge2.thread, %.critedge6
  %.pn = phi ptr [ %.070, %.critedge6 ], [ %i.ay, %.critedge2.thread ]
  %.068 = phi i32 [ %spec.select, %.critedge6 ], [ 0, %.critedge2.thread ] ; 2 uses
  %.070 = getelementptr inbounds i8, ptr %.pn, i64 -1 ; 2 uses
  %i.ba = load i8, ptr %.070, align 1, !tbaa !36  ; 2 uses
  switch i8 %i.ba, label %bb.o [
    i8 48, label %.critedge6
    i8 46, label %.critedge6
  ]

.critedge6:                                       ; preds = %.preheader155, %.preheader155
  %i.bb = icmp eq i8 %i.ba, 48
  %i.bc = zext i1 %i.bb to i32
  %spec.select = add nuw nsw i32 %.068, %i.bc
  br label %.preheader155, !llvm.loop !186

bb.o:                                             ; preds = %.preheader155
  %i.bd = add nsw i32 %i.ax, %i.az                ; 3 uses
  store i32 %i.bd, ptr %i.a, align 4, !tbaa !44
  %i.be = sub i32 %i.az, %.068                    ; 2 uses
  store i32 %i.be, ptr %0, align 4, !tbaa !43
  %i.bf = icmp ugt i32 %i.be, 768
  br i1 %i.bf, label %bb.p, label %.thread

bb.p:                                             ; preds = %bb.o
  store i32 768, ptr %0, align 4, !tbaa !43
  store i8 1, ptr %i.b, align 1, !tbaa !45
  br label %.thread

.thread:                                          ; preds = %.critedge2.thread, %bb.p, %bb.o
  %i.bg = phi i32 [ %i.ax, %.critedge2.thread ], [ %i.bd, %bb.p ], [ %i.bd, %bb.o ]
  %.not91 = icmp eq ptr %i.ay, %2
  br i1 %.not91, label %bb.v, label %bb.q

bb.q:                                             ; preds = %.thread
  %i.bh = load i8, ptr %i.ay, align 1, !tbaa !36
  switch i8 %i.bh, label %bb.v [
    i8 101, label %bb.r
    i8 69, label %bb.r
  ]

bb.r:                                             ; preds = %bb.q, %bb.q
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ay, i64 1 ; 4 uses
  store ptr %i.bi, ptr %1, align 8, !tbaa !48
  %i.bj = icmp eq ptr %i.bi, %2
  br i1 %i.bj, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bk = load i8, ptr %i.bi, align 1, !tbaa !36  ; 2 uses
  %i.bl = icmp eq i8 %i.bk, 45
  switch i8 %i.bk, label %bb.t [
    i8 45, label %.sink.split
    i8 43, label %.sink.split
  ]

.sink.split:                                      ; preds = %bb.s, %bb.s
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ay, i64 2 ; 2 uses
  store ptr %i.bm, ptr %1, align 8, !tbaa !48
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.sink.split
  %.promoted115 = phi ptr [ %i.bi, %bb.s ], [ %i.bm, %.sink.split ] ; 2 uses
  %.not92116 = icmp eq ptr %.promoted115, %2
  br i1 %.not92116, label %.critedge8, label %.lr.ph118

.lr.ph118:                                        ; preds = %bb.t, %bb.u
  %.0117 = phi i32 [ %.1, %bb.u ], [ 0, %bb.t ]   ; 4 uses
  %i.bn = phi ptr [ %i.bv, %bb.u ], [ %.promoted115, %bb.t ] ; 2 uses
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !36
  %i.bp = add i8 %i.bo, -48                       ; 2 uses
  %i.bq = icmp ult i8 %i.bp, 10
  br i1 %i.bq, label %bb.u, label %.critedge8

bb.u:                                             ; preds = %.lr.ph118
  %i.br = icmp slt i32 %.0117, 65536
  %i.bs = mul nsw i32 %.0117, 10
  %i.bt = zext nneg i8 %i.bp to i32
  %i.bu = add nsw i32 %i.bs, %i.bt
  %.1 = select i1 %i.br, i32 %i.bu, i32 %.0117    ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bn, i64 1 ; 3 uses
  store ptr %i.bv, ptr %1, align 8, !tbaa !48
  %.not92 = icmp eq ptr %i.bv, %2
  br i1 %.not92, label %.critedge8, label %.lr.ph118, !llvm.loop !187

.critedge8:                                       ; preds = %.lr.ph118, %bb.u, %bb.t
  %.0.lcssa = phi i32 [ 0, %bb.t ], [ %.1, %bb.u ], [ %.0117, %.lr.ph118 ] ; 2 uses
  %i.bw = sub nsw i32 0, %.0.lcssa
  %i.bx = select i1 %i.bl, i32 %i.bw, i32 %.0.lcssa
  %i.by = add nsw i32 %i.bg, %i.bx
  store i32 %i.by, ptr %i.a, align 4, !tbaa !44
  br label %bb.v

bb.v:                                             ; preds = %bb.q, %.thread, %.critedge8, %bb.r, %bb.j, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i64 @_ZN8simdjson8internal5roundERNS0_7decimalE(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(780) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !43     ; 4 uses
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !44   ; 9 uses
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = icmp samesign ugt i32 %i.d, 18
  br i1 %i.f, label %.thread, label %.preheader

.preheader:                                       ; preds = %bb.c
  %.not42 = icmp eq i32 %i.d, 0                   ; 2 uses
  br i1 %.not42, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 3 uses
  %i.h = zext i32 %i.a to i64                     ; 3 uses
  %wide.trip.count = zext nneg i32 %i.d to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.i = icmp eq i32 %i.d, 1
  br i1 %i.i, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 30
  br label %bb.e

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.02840.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.ae, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod46 = trunc i32 %i.d to i1
  tail call void @llvm.assume(i1 %lcmp.mod46)
  %i.j = mul i64 %.02840.epil.init, 10
  %i.k = icmp samesign ult i64 %indvars.iv.epil.init, %i.h
  br i1 %i.k, label %bb.d, label %._crit_edge.loopexit.epilog-lcssa

bb.d:                                             ; preds = %.epil.preheader
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv.epil.init
  %i.m = load i8, ptr %i.l, align 1, !tbaa !36
  %i.n = zext i8 %i.m to i64
  br label %._crit_edge.loopexit.epilog-lcssa

._crit_edge.loopexit.epilog-lcssa:                ; preds = %bb.d, %.epil.preheader
  %i.o = phi i64 [ %i.n, %bb.d ], [ 0, %.epil.preheader ]
  %i.p = add i64 %i.o, %i.j
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.epilog-lcssa, %._crit_edge.loopexit.unr-lcssa, %.preheader
  %.028.lcssa = phi i64 [ 0, %.preheader ], [ %i.ae, %._crit_edge.loopexit.unr-lcssa ], [ %i.p, %._crit_edge.loopexit.epilog-lcssa ] ; 5 uses
  %i.q = icmp ult i32 %i.d, %i.a
  br i1 %i.q, label %bb.j, label %.thread

bb.e:                                             ; preds = %bb.i, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.i ] ; 4 uses
  %.02840 = phi i64 [ 0, %.lr.ph.new ], [ %i.ae, %bb.i ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.i ]
  %i.r = mul i64 %.02840, 10
  %i.s = icmp samesign ult i64 %indvars.iv, %i.h
  br i1 %i.s, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv
  %i.u = load i8, ptr %i.t, align 2, !tbaa !36
  %i.v = zext i8 %i.u to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.w = phi i64 [ %i.v, %bb.f ], [ 0, %bb.e ]
  %i.x = add i64 %i.w, %i.r
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.y = mul i64 %i.x, 10
  %i.z = icmp samesign ult i64 %indvars.iv.next, %i.h
  br i1 %i.z, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv.next
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !36
  %i.ac = zext i8 %i.ab to i64
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ad = phi i64 [ %i.ac, %bb.h ], [ 0, %bb.g ]
  %i.ae = add i64 %i.ad, %i.y                     ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.e, !llvm.loop !0

bb.j:                                             ; preds = %._crit_edge
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 10
end_hunk_0
