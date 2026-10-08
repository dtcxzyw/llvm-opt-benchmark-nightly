Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/ggml-backend?download=true
inline.NumInlined: 551
inline.NumDeleted: 237
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@ggml_backend_sched_reserve:bb.a
  br i1 %.not14, label %bb.d, label %.preheader.i

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 1981, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.63) #24
  unreachable

.preheader.i:                                     ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !120  ; 2 uses
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.e

._crit_edge.i:                                    ; preds = %ggml_backend_synchronize.exit.i, %.preheader.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.n = load i8, ptr %i.m, align 1, !tbaa !177, !range !165, !noundef !166
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %ggml_backend_sched_synchronize.exit, label %bb.i

bb.e:                                             ; preds = %ggml_backend_synchronize.exit.i, %.lr.ph.i
  %i.p = phi i32 [ %i.j, %.lr.ph.i ], [ %i.v, %ggml_backend_synchronize.exit.i ]
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %ggml_backend_synchronize.exit.i ] ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv.i
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !122  ; 3 uses
  %.not.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 426, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.7) #24
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 64
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !70   ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %ggml_backend_synchronize.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void %i.t(ptr noundef nonnull %i.r), !inline_history !181
  %.pre.i = load i32, ptr %i.i, align 4, !tbaa !120
  br label %ggml_backend_synchronize.exit.i

ggml_backend_synchronize.exit.i:                  ; preds = %bb.h, %bb.g
  %i.v = phi i32 [ %i.p, %bb.g ], [ %.pre.i, %bb.h ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.w = sext i32 %i.v to i64
  %i.x = icmp slt i64 %indvars.iv.next.i, %i.w
  br i1 %i.x, label %bb.e, label %._crit_edge.i, !llvm.loop !5

bb.i:                                             ; preds = %._crit_edge.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 464
  store i32 0, ptr %i.y, align 8, !tbaa !182
  br label %ggml_backend_sched_synchronize.exit

ggml_backend_sched_synchronize.exit:              ; preds = %._crit_edge.i, %bb.i
  tail call void @ggml_backend_sched_split_graph(ptr noundef nonnull %0, ptr noundef %1)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !176
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !159
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !162
  %i.ag = tail call zeroext i1 @ggml_gallocr_reserve_n(ptr noundef %i.aa, ptr noundef nonnull %i.ab, ptr noundef %i.ad, ptr noundef %i.af) ; 2 uses
  br i1 %i.ag, label %bb.j, label %bb.l

bb.j:                                             ; preds = %ggml_backend_sched_synchronize.exit
  %i.ah = load i8, ptr %0, align 8, !tbaa !106, !range !165, !noundef !166
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %ggml_backend_sched_reset.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @ggml_hash_set_reset(ptr noundef nonnull %i.a)
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !114
  %i.al = load i64, ptr %i.a, align 8, !tbaa !173
  %i.am = shl i64 %i.al, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ak, i8 -1, i64 %i.am, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !129
  %i.ap = load i64, ptr %i.a, align 8, !tbaa !173
  %i.aq = load i32, ptr %i.i, align 4, !tbaa !120
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.at = load i32, ptr %i.as, align 8, !tbaa !130
  %i.au = sext i32 %i.at to i64
  %i.av = shl i64 %i.ap, 3
  %i.aw = mul i64 %i.av, %i.ar
  %i.ax = mul i64 %i.aw, %i.au
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ao, i8 0, i64 %i.ax, i1 false)
  store i8 1, ptr %0, align 8, !tbaa !106
  br label %ggml_backend_sched_reset.exit

ggml_backend_sched_reset.exit:                    ; preds = %bb.j, %bb.k
  store i8 0, ptr %i.m, align 1, !tbaa !177
  br label %bb.l

bb.l:                                             ; preds = %ggml_backend_sched_synchronize.exit, %ggml_backend_sched_reset.exit
  ret i1 %i.ag
}

declare zeroext i1 @ggml_gallocr_reserve_n(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @ggml_backend_sched_alloc_graph(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 1997, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.62) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.b = load i64, ptr %i.a, align 8, !tbaa !173
  %i.c = trunc i64 %i.b to i32
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !112
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !111
  %i.h = add nsw i32 %i.g, %i.e
  %.not16 = icmp sgt i32 %i.h, %i.c
  br i1 %.not16, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 1998, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.65) #24
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !177, !range !165, !noundef !166
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 1999, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.66) #24
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 464 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !182  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 460
  store i32 %i.m, ptr %i.n, align 4, !tbaa !135
  %i.o = add nsw i32 %i.m, 1
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.q = load i32, ptr %i.p, align 8, !tbaa !130
  %i.r = srem i32 %i.o, %i.q
  store i32 %i.r, ptr %i.l, align 8, !tbaa !182
  tail call void @ggml_backend_sched_split_graph(ptr noundef nonnull %0, ptr noundef nonnull %1)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 348 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !157  ; 2 uses
  %i.u = icmp sgt i32 %i.t, 0
  br i1 %i.u, label %.lr.ph.i, label %.preheader.i

.lr.ph.i:                                         ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !159
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !174
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %wide.trip.count.i = zext nneg i32 %i.t to i64
  br label %bb.h

.preheader.i:                                     ; preds = %bb.j, %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !158 ; 2 uses
  %i.ad = icmp sgt i32 %i.ac, 0
  br i1 %i.ad, label %.lr.ph73.i, label %._crit_edge.i.a

.lr.ph73.i:                                       ; preds = %.preheader.i
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !162
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !175
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %wide.trip.count82.i = zext nneg i32 %i.ac to i64
  br label %bb.k

bb.h:                                             ; preds = %bb.j, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.j ] ; 3 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.i
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !117 ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv.i
  %i.am = load i32, ptr %i.al, align 4, !tbaa !117 ; 2 uses
  %.not.i = icmp eq i32 %i.ak, %i.am
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.an = sext i32 %i.ak to i64
  %i.ao = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.an
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !124
  %i.aq = sext i32 %i.am to i64
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.aq
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !124
  %.not59.i = icmp eq ptr %i.ap, %i.as
  br i1 %.not59.i, label %bb.j, label %.thread65.loopexit67.i

bb.j:                                             ; preds = %bb.i, %bb.h
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.preheader.i, label %bb.h, !llvm.loop !323

bb.k:                                             ; preds = %bb.m, %.lr.ph73.i
  %indvars.iv79.i = phi i64 [ 0, %.lr.ph73.i ], [ %indvars.iv.next80.i, %bb.m ] ; 3 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv79.i
  %i.au = load i32, ptr %i.at, align 4, !tbaa !117 ; 2 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv79.i
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !117 ; 2 uses
  %.not60.i = icmp eq i32 %i.au, %i.aw
  br i1 %.not60.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ax = sext i32 %i.au to i64
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.ax
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !124
  %i.ba = sext i32 %i.aw to i64
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.ba
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !124
  %.not61.i = icmp eq ptr %i.az, %i.bc
  br i1 %.not61.i, label %bb.m, label %.thread65.i

bb.m:                                             ; preds = %bb.l, %bb.k
  %indvars.iv.next80.i = add nuw nsw i64 %indvars.iv79.i, 1 ; 2 uses
  %exitcond83.not.i = icmp eq i64 %indvars.iv.next80.i, %wide.trip.count82.i
  br i1 %exitcond83.not.i, label %._crit_edge.i.a, label %bb.k, !llvm.loop !324

._crit_edge.i.a:                                  ; preds = %bb.m, %.preheader.i
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !176
  %i.bf = tail call zeroext i1 @ggml_gallocr_alloc_graph(ptr noundef %i.be, ptr noundef nonnull %i.aa)
  br i1 %i.bf, label %bb.v, label %bb.n

bb.n:                                             ; preds = %._crit_edge.i.a
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 1048
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !172 ; 3 uses
  %i.bi = icmp sgt i32 %i.bh, 0
  br i1 %i.bi, label %bb.o, label %bb.q

.thread65.loopexit67.i:                           ; preds = %bb.i
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 344
  br label %.thread65.i

.thread65.i:                                      ; preds = %bb.l, %.thread65.loopexit67.i
  %3 = phi ptr [ %2, %.thread65.loopexit67.i ], [ %i.aa, %bb.l ] ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 1048
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !172 ; 2 uses
  %i.bl = icmp sgt i32 %i.bk, 0
  br i1 %i.bl, label %.critedge.i, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 1056
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !154 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 1052
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !153
  %i.bq = icmp eq i32 %i.bn, %i.bp
  br i1 %i.bq, label %bb.p, label %.critedge.i

.critedge.i:                                      ; preds = %bb.o, %.thread65.i
  %i.br = phi ptr [ %i.aa, %bb.o ], [ %3, %.thread65.i ]
  %i.bs = phi i32 [ %i.bh, %bb.o ], [ %i.bk, %.thread65.i ] ; 2 uses
  %i.bt = icmp samesign ugt i32 %i.bs, 1
  br i1 %i.bt, label %.critedge._crit_edge.i, label %bb.q

.critedge._crit_edge.i:                           ; preds = %.critedge.i
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 1052
  %.pre87.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !153
  br label %bb.p

bb.p:                                             ; preds = %.critedge._crit_edge.i, %bb.o
  %i.bu = phi i32 [ %.pre87.i, %.critedge._crit_edge.i ], [ %i.bn, %bb.o ]
  %i.bv = phi i32 [ %i.bs, %.critedge._crit_edge.i ], [ %i.bh, %bb.o ]
  %i.bw = load i32, ptr %i.s, align 4, !tbaa !157
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !158
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 1634, ptr noundef nonnull @.str.67, ptr noundef nonnull @__func__._ZL31ggml_backend_sched_alloc_splitsP18ggml_backend_sched, i32 noundef %i.bu, i32 noundef %i.bw, i32 noundef %i.by, i32 noundef %i.bv) #24
  unreachable

bb.q:                                             ; preds = %.critedge.i, %.thread65.i, %bb.n
  %i.bz = phi ptr [ %3, %.thread65.i ], [ %i.br, %.critedge.i ], [ %i.aa, %bb.n ] ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !120 ; 2 uses
  %i.cc = icmp sgt i32 %i.cb, 0
  br i1 %i.cc, label %.lr.ph76.i, label %._crit_edge77.i

.lr.ph76.i:                                       ; preds = %bb.q
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.r

._crit_edge77.i:                                  ; preds = %ggml_backend_synchronize.exit.i, %bb.q
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !176
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !159
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !162
  %i.ck = tail call zeroext i1 @ggml_gallocr_reserve_n(ptr noundef %i.cf, ptr noundef nonnull %i.bz, ptr noundef %i.ch, ptr noundef %i.cj) ; 0 uses
  %i.cl = load ptr, ptr %i.ce, align 8, !tbaa !176
  %i.cm = tail call zeroext i1 @ggml_gallocr_alloc_graph(ptr noundef %i.cl, ptr noundef nonnull %i.bz)
  br i1 %i.cm, label %bb.v, label %_ZL31ggml_backend_sched_alloc_splitsP18ggml_backend_sched.exit

bb.r:                                             ; preds = %ggml_backend_synchronize.exit.i, %.lr.ph76.i
  %i.cn = phi i32 [ %i.cb, %.lr.ph76.i ], [ %i.ct, %ggml_backend_synchronize.exit.i ]
  %indvars.iv84.i = phi i64 [ 0, %.lr.ph76.i ], [ %indvars.iv.next85.i, %ggml_backend_synchronize.exit.i ] ; 2 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %indvars.iv84.i
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !122 ; 3 uses
  %.not.i.i = icmp eq ptr %i.cp, null
  br i1 %.not.i.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 426, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.7) #24
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 64
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !70 ; 2 uses
  %i.cs = icmp eq ptr %i.cr, null
  br i1 %i.cs, label %ggml_backend_synchronize.exit.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void %i.cr(ptr noundef nonnull %i.cp), !inline_history !325
  %.pre.i = load i32, ptr %i.ca, align 4, !tbaa !120
  br label %ggml_backend_synchronize.exit.i

ggml_backend_synchronize.exit.i:                  ; preds = %bb.u, %bb.t
  %i.ct = phi i32 [ %i.cn, %bb.t ], [ %.pre.i, %bb.u ] ; 2 uses
  %indvars.iv.next85.i = add nuw nsw i64 %indvars.iv84.i, 1 ; 2 uses
  %i.cu = sext i32 %i.ct to i64
  %i.cv = icmp slt i64 %indvars.iv.next85.i, %i.cu
  br i1 %i.cv, label %bb.r, label %._crit_edge77.i, !llvm.loop !326

_ZL31ggml_backend_sched_alloc_splitsP18ggml_backend_sched.exit: ; preds = %._crit_edge77.i
  tail call void (i32, ptr, ...) @ggml_log_internal(i32 noundef 4, ptr noundef nonnull @.str.68, ptr noundef nonnull @__func__._ZL31ggml_backend_sched_alloc_splitsP18ggml_backend_sched)
  br label %bb.w

bb.v:                                             ; preds = %._crit_edge77.i, %._crit_edge.i.a
  store i8 1, ptr %i.i, align 1, !tbaa !177
  br label %bb.w

bb.w:                                             ; preds = %_ZL31ggml_backend_sched_alloc_splitsP18ggml_backend_sched.exit, %bb.v
  %.054.i18 = phi i1 [ false, %_ZL31ggml_backend_sched_alloc_splitsP18ggml_backend_sched.exit ], [ true, %bb.v ]
  ret i1 %.054.i18
}

declare zeroext i1 @ggml_gallocr_alloc_graph(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define noundef i32 @ggml_backend_sched_graph_compute(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @ggml_backend_sched_graph_compute_async(ptr noundef %0, ptr noundef %1)
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %bb.b, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !120  ; 2 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 2037, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.62) #24
  unreachable

._crit_edge.i:                                    ; preds = %ggml_backend_synchronize.exit.i, %.preheader.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.g = load i8, ptr %i.f, align 1, !tbaa !177, !range !165, !noundef !166
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %ggml_backend_sched_synchronize.exit, label %bb.g

bb.c:                                             ; preds = %ggml_backend_synchronize.exit.i, %.lr.ph.i
  %i.i = phi i32 [ %i.c, %.lr.ph.i ], [ %i.o, %ggml_backend_synchronize.exit.i ]
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %ggml_backend_synchronize.exit.i ] ; 2 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.i
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !122  ; 3 uses
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 426, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.7) #24
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !70   ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %ggml_backend_synchronize.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void %i.m(ptr noundef nonnull %i.k), !inline_history !181
  %.pre.i = load i32, ptr %i.b, align 4, !tbaa !120
  br label %ggml_backend_synchronize.exit.i

ggml_backend_synchronize.exit.i:                  ; preds = %bb.f, %bb.e
  %i.o = phi i32 [ %i.i, %bb.e ], [ %.pre.i, %bb.f ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.p = sext i32 %i.o to i64
  %i.q = icmp slt i64 %indvars.iv.next.i, %i.p
  br i1 %i.q, label %bb.c, label %._crit_edge.i, !llvm.loop !5

bb.g:                                             ; preds = %._crit_edge.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 464
  store i32 0, ptr %i.r, align 8, !tbaa !182
  br label %ggml_backend_sched_synchronize.exit

ggml_backend_sched_synchronize.exit:              ; preds = %._crit_edge.i, %bb.g
  ret i32 %i.a
}

; Function Attrs: mustprogress uwtable
define noundef i32 @ggml_backend_sched_graph_compute_async(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %struct.ggml_cgraph, align 8        ; 9 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 2022, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.62) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = load i8, ptr %0, align 8, !tbaa !106, !range !165, !noundef !166
  %i.b = trunc nuw i8 %i.a to i1
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !tbaa !177, !range !165
  %i.c = trunc nuw i8 %.pre to i1                 ; 2 uses
  br i1 %i.b, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  br i1 %i.c, label %.thread, label %.thread879

.thread879:                                       ; preds = %bb.d
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 3 uses
  tail call void @ggml_hash_set_reset(ptr noundef nonnull %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !114
  %i.g = load i64, ptr %i.d, align 8, !tbaa !173
  %i.h = shl i64 %i.g, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.f, i8 -1, i64 %i.h, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !129
  %i.k = load i64, ptr %i.d, align 8, !tbaa !173
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !120
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.p = load i32, ptr %i.o, align 8, !tbaa !130
  %i.q = sext i32 %i.p to i64
  %i.r = shl i64 %i.k, 3
  %i.s = mul i64 %i.r, %i.n
  %i.t = mul i64 %i.s, %i.q
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.j, i8 0, i64 %i.t, i1 false)
  store i8 1, ptr %0, align 8, !tbaa !106
  store i8 0, ptr %.phi.trans.insert, align 1, !tbaa !177
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  br i1 %i.c, label %.thread, label %bb.f

bb.f:                                             ; preds = %.thread879, %bb.e
  %i.u = tail call zeroext i1 @ggml_backend_sched_alloc_graph(ptr noundef nonnull %0, ptr noundef %1)
  br i1 %i.u, label %.thread, label %_ZL33ggml_backend_sched_compute_splitsP18ggml_backend_sched.exit

.thread:                                          ; preds = %bb.d, %bb.f, %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !125
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 2 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !105
  %.not2401117.i = icmp sgt i32 %i.y, 0
  br i1 %.not2401117.i, label %.lr.ph1128.i, label %_ZL33ggml_backend_sched_compute_splitsP18ggml_backend_sched.exit

.lr.ph1128.i:                                     ; preds = %.thread
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 460 ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
end_hunk_0
