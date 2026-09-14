Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mquickjs/original/mquickjs?download=true
inline.NumInlined: 1970
inline.NumDeleted: 206
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@js_array_reduce:bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ak = icmp eq i32 %4, 1
  br label %bb.k

bb.j:                                             ; preds = %bb.m
  %i.al = add nuw nsw i32 %.175, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.al, %i.j
  br i1 %exitcond.not, label %.loopexit, label %bb.k, !llvm.loop !331

bb.k:                                             ; preds = %.lr.ph, %bb.j
  %.175 = phi i32 [ %.0, %.lr.ph ], [ %i.al, %bb.j ] ; 3 uses
  %.15374 = phi i64 [ %.052, %.lr.ph ], [ %i.bt, %bb.j ]
  %i.am = load ptr, ptr %i.ag, align 8, !tbaa !36
  store ptr %i.am, ptr %i.ah, align 8, !tbaa !39
  store ptr %5, ptr %i.ag, align 8, !tbaa !36
  store i64 %.15374, ptr %5, align 8, !tbaa !40
  %i.an = load ptr, ptr %i.ai, align 8, !tbaa !42
  %i.ao = getelementptr inbounds i8, ptr %i.an, i64 -176 ; 2 uses
  %i.ap = call fastcc i32 @check_free_mem(ptr noundef %0, ptr noundef nonnull %i.ao, i32 noundef 176) #28, !inline_history !80
  %.not.i64 = icmp eq i32 %i.ap, 0
  br i1 %.not.i64, label %bb.l, label %JS_StackCheck.exit

JS_StackCheck.exit:                               ; preds = %bb.k
  %i.aq = load ptr, ptr %i.ah, align 8, !tbaa !39
  store ptr %i.aq, ptr %i.ag, align 8, !tbaa !36
  br label %.loopexit

bb.l:                                             ; preds = %bb.k
  store ptr %i.ao, ptr %i.aj, align 8, !tbaa !42
  %i.ar = load i64, ptr %5, align 8, !tbaa !40    ; 2 uses
  %i.as = load ptr, ptr %i.ah, align 8, !tbaa !39
  store ptr %i.as, ptr %i.ag, align 8, !tbaa !36
  %i.at = xor i32 %.175, -1
  %i.au = add i32 %i.j, %i.at
  %i.av = select i1 %i.ak, i32 %i.au, i32 %.175   ; 3 uses
  %i.aw = load i64, ptr %1, align 8, !tbaa !46    ; 2 uses
  %i.ax = add i64 %i.aw, -1
  %i.ay = inttoptr i64 %i.ax to ptr               ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !51
  %.not61 = icmp ult i32 %i.av, %i.ba
  br i1 %.not61, label %bb.m, label %.loopexit

bb.m:                                             ; preds = %bb.l
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !51
  %i.bd = add i64 %i.bc, -1
  %i.be = inttoptr i64 %i.bd to ptr
  %i.bf = load ptr, ptr %i.ai, align 8, !tbaa !42 ; 6 uses
  %i.bg = getelementptr inbounds i8, ptr %i.bf, i64 -8
  store i64 %i.aw, ptr %i.bg, align 8, !tbaa !46
  %i.bh = shl i32 %i.av, 1
  %i.bi = sext i32 %i.bh to i64
  %i.bj = getelementptr inbounds i8, ptr %i.bf, i64 -16
  store i64 %i.bi, ptr %i.bj, align 8, !tbaa !46
  %i.bk = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bl = sext i32 %i.av to i64
  %i.bm = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %i.bl
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !46
  %i.bo = getelementptr inbounds i8, ptr %i.bf, i64 -24
  store i64 %i.bn, ptr %i.bo, align 8, !tbaa !46
  %i.bp = getelementptr inbounds i8, ptr %i.bf, i64 -32
  store i64 %i.ar, ptr %i.bp, align 8, !tbaa !46
  %i.bq = load i64, ptr %3, align 8, !tbaa !46
  %i.br = getelementptr inbounds i8, ptr %i.bf, i64 -40
  store i64 %i.bq, ptr %i.br, align 8, !tbaa !46
  %i.bs = getelementptr inbounds i8, ptr %i.bf, i64 -48 ; 2 uses
  store ptr %i.bs, ptr %i.ai, align 8, !tbaa !42
  store i64 11, ptr %i.bs, align 8, !tbaa !46
  %i.bt = call i64 @JS_Call(ptr noundef nonnull %0, i32 noundef 4) #28 ; 3 uses
  %.not = icmp eq i64 %i.bt, 15
  br i1 %.not, label %.loopexit, label %bb.j

.loopexit:                                        ; preds = %bb.m, %bb.l, %bb.j, %bb.i, %JS_StackCheck.exit, %js_get_array.exit.thread, %bb.g, %JS_IsFunction.exit.thread
  %.054 = phi i64 [ 15, %js_get_array.exit.thread ], [ %i.s, %JS_IsFunction.exit.thread ], [ 15, %JS_StackCheck.exit ], [ %i.w, %bb.g ], [ %.052, %bb.i ], [ %i.ar, %bb.l ], [ 15, %bb.m ], [ %i.bt, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  ret i64 %.054
}

; Function Attrs: nounwind optsize uwtable
define dso_local i64 @js_array_sort(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #4 {
bb.a:
  %4 = alloca %struct.JSGCRef, align 8            ; 7 uses
  %5 = alloca %struct.JSArraySortContext, align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  %i.a = load i64, ptr %3, align 8, !tbaa !46     ; 4 uses
  %.not = icmp eq i64 %i.a, 11
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = and i64 %i.a, 7
  %.not.i = icmp eq i64 %i.b, 1
  br i1 %.not.i, label %bb.c, label %.split

.split:                                           ; preds = %bb.b
  %i.c = and i64 %i.a, 31
  %i.d = icmp eq i64 %i.c, 19
  br i1 %i.d, label %bb.d, label %JS_IsFunction.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.e = add nsw i64 %i.a, -1
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load i64, ptr %i.f, align 8
  %i.h = and i64 %i.g, 4078
  %or.cond = icmp eq i64 %i.h, 34
  br i1 %or.cond, label %bb.d, label %JS_IsFunction.exit.thread

JS_IsFunction.exit.thread:                        ; preds = %.split, %bb.c
  %i.i = tail call i64 (ptr, i32, ptr, ...) @JS_ThrowError(ptr noundef %0, i32 noundef 14, ptr noundef nonnull @.str.14) #28
  br label %js_free.exit

bb.d:                                             ; preds = %bb.c, %.split, %bb.a
  %.060 = phi ptr [ %3, %bb.c ], [ null, %bb.a ], [ %3, %.split ]
  %i.j = load i64, ptr %1, align 8, !tbaa !46     ; 2 uses
  %i.k = and i64 %i.j, 7
  %.not.i.i = icmp eq i64 %i.k, 1
  br i1 %.not.i.i, label %bb.e, label %js_get_array.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.l = add nsw i64 %i.j, -1
  %i.m = inttoptr i64 %i.l to ptr                 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8
  %i.o = and i64 %i.n, 4094
  %or.cond.i = icmp eq i64 %i.o, 18
  br i1 %or.cond.i, label %js_get_array.exit, label %js_get_array.exit.thread

js_get_array.exit.thread:                         ; preds = %bb.d, %bb.e
  %i.p = tail call i64 (ptr, i32, ptr, ...) @JS_ThrowError(ptr noundef %0, i32 noundef 14, ptr noundef nonnull @.str.63) #28 ; 0 uses
  br label %js_free.exit

js_get_array.exit:                                ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.r = load i32, ptr %i.q, align 8, !tbaa !51   ; 4 uses
  %i.s = shl nsw i32 %i.r, 1
  %i.t = tail call fastcc ptr @js_alloc_value_array(ptr noundef %0, i32 noundef 0, i32 noundef %i.s) #28 ; 3 uses
  %.not67 = icmp eq ptr %i.t, null
  br i1 %.not67, label %js_free.exit, label %bb.f

bb.f:                                             ; preds = %js_get_array.exit
  %i.u = icmp sgt i32 %i.r, 0
  br i1 %i.u, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.f
  %i.v = load i64, ptr %1, align 8, !tbaa !46
  %i.w = add i64 %i.v, -1
  %i.x = inttoptr i64 %i.w to ptr
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load i64, ptr %i.y, align 8, !tbaa !51
  %i.aa = add i64 %i.z, -1
  %i.ab = inttoptr i64 %i.aa to ptr
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %wide.trip.count = zext nneg i32 %i.r to i64
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.i
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.i ] ; 3 uses
  %.087 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.i ]  ; 3 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !46 ; 2 uses
  %.not85 = icmp eq i64 %i.af, 11
  br i1 %.not85, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ag = shl nsw i32 %.087, 1
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.ah ; 2 uses
  store i64 %i.af, ptr %i.ai, align 8, !tbaa !46
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.aj = shl nuw i32 %indvars.iv.tr, 1
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr i8, ptr %i.ai, i64 8
  store i64 %i.ak, ptr %i.al, align 8, !tbaa !46
  %i.am = add nsw i32 %.087, 1
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %.1 = phi i32 [ %.087, %bb.g ], [ %i.am, %bb.h ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.g, !llvm.loop !332

._crit_edge:                                      ; preds = %bb.i, %bb.f
  %.0.lcssa = phi i32 [ 0, %bb.f ], [ %.1, %bb.i ] ; 2 uses
  %i.an = ptrtoint ptr %i.t to i64
  %i.ao = add i64 %i.an, 1
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !36
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !39
  store ptr %4, ptr %i.ap, align 8, !tbaa !36
  store i64 %i.ao, ptr %4, align 8, !tbaa !40
  store ptr %0, ptr %5, align 8, !tbaa !157
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i32 0, ptr %i.as, align 8, !tbaa !158
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  store ptr %4, ptr %i.at, align 8, !tbaa !159
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %.060, ptr %i.au, align 8, !tbaa !160
  %i.av = sext i32 %.0.lcssa to i64               ; 5 uses
  %i.aw = icmp ugt i32 %.0.lcssa, 1
  br i1 %i.aw, label %bb.j, label %rqsort_idx.exit

bb.j:                                             ; preds = %._crit_edge
  %i.ax = lshr i64 %i.av, 1                       ; 2 uses
  %.not71.i = icmp eq i64 %i.ax, 0
  %.pre.i = add nsw i64 %i.av, -1                 ; 5 uses
  br i1 %.not71.i, label %.preheader.i, label %.lr.ph74.i

.preheader.i:                                     ; preds = %._crit_edge.i, %bb.j
  %.not6781.i = icmp eq i64 %.pre.i, 0
  br i1 %.not6781.i, label %rqsort_idx.exit, label %.lr.ph84.i.preheader

.lr.ph84.i.preheader:                             ; preds = %.preheader.i
  %i.ay = load ptr, ptr %i.at, align 8, !tbaa !159
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !46
  %i.ba = add i64 %i.az, -1
  %i.bb = inttoptr i64 %i.ba to ptr
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8 ; 3 uses
  %.idx20.i7788 = shl nsw i64 %.pre.i, 4
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %.idx20.i7788 ; 2 uses
  %i.be = load <2 x i64>, ptr %i.bc, align 8, !tbaa !46
  %i.bf = load <2 x i64>, ptr %i.bd, align 8, !tbaa !46
  store <2 x i64> %i.bf, ptr %i.bc, align 8, !tbaa !46
  store <2 x i64> %i.be, ptr %i.bd, align 8, !tbaa !46
  %.not95 = icmp eq i64 %.pre.i, 1
  br i1 %.not95, label %rqsort_idx.exit, label %.lr.ph77.i

.lr.ph74.i:                                       ; preds = %bb.j, %._crit_edge.i
  %.06272.i = phi i64 [ %i.bg, %._crit_edge.i ], [ %i.ax, %bb.j ]
  %i.bg = add nsw i64 %.06272.i, -1               ; 4 uses
  %i.bh = shl nuw i64 %i.bg, 1                    ; 2 uses
  %i.bi = or disjoint i64 %i.bh, 1                ; 2 uses
  %i.bj = icmp ult i64 %i.bi, %i.av
  br i1 %i.bj, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.lr.ph74.i, %bb.m
  %i.bk = phi i64 [ %i.cc, %bb.m ], [ %i.bi, %.lr.ph74.i ] ; 4 uses
  %i.bl = phi i64 [ %i.cb, %bb.m ], [ %i.bh, %.lr.ph74.i ]
  %.069.i = phi i64 [ %.060.i, %bb.m ], [ %i.bg, %.lr.ph74.i ] ; 2 uses
  %i.bm = icmp ult i64 %i.bk, %.pre.i
  br i1 %i.bm, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph.i
  %i.bn = add nuw i64 %i.bl, 2                    ; 2 uses
  %i.bo = call fastcc i32 @js_array_sort_cmp(i64 noundef %i.bk, i64 noundef %i.bn, ptr noundef nonnull %5) #31, !callees !333, !inline_history !334
  %i.bp = icmp slt i32 %i.bo, 1
  %spec.select.i72 = select i1 %i.bp, i64 %i.bn, i64 %i.bk
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph.i
  %.060.i = phi i64 [ %i.bk, %.lr.ph.i ], [ %spec.select.i72, %bb.k ] ; 4 uses
  %i.bq = call fastcc i32 @js_array_sort_cmp(i64 noundef %.069.i, i64 noundef %.060.i, ptr noundef nonnull %5) #31, !callees !333, !inline_history !334
  %i.br = icmp sgt i32 %i.bq, 0
  br i1 %i.br, label %._crit_edge.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bs = load ptr, ptr %i.at, align 8, !tbaa !159
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !46
  %i.bu = add i64 %i.bt, -1
  %i.bv = inttoptr i64 %i.bu to ptr
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8 ; 2 uses
  %.idx.i78 = shl i64 %.069.i, 4
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 %.idx.i78 ; 2 uses
  %.idx20.i79 = shl i64 %.060.i, 4
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 %.idx20.i79 ; 2 uses
  %i.bz = load <2 x i64>, ptr %i.bx, align 8, !tbaa !46
  %i.ca = load <2 x i64>, ptr %i.by, align 8, !tbaa !46
  store <2 x i64> %i.ca, ptr %i.bx, align 8, !tbaa !46
  store <2 x i64> %i.bz, ptr %i.by, align 8, !tbaa !46
  %i.cb = shl i64 %.060.i, 1                      ; 2 uses
  %i.cc = or disjoint i64 %i.cb, 1                ; 2 uses
  %i.cd = icmp ult i64 %i.cc, %i.av
  br i1 %i.cd, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !16

._crit_edge.i:                                    ; preds = %bb.m, %bb.l, %.lr.ph74.i
  %.not.i71 = icmp eq i64 %i.bg, 0
  br i1 %.not.i71, label %.preheader.i, label %.lr.ph74.i, !llvm.loop !17

.lr.ph77.i:                                       ; preds = %.lr.ph84.i.preheader, %._crit_edge78.i
  %.163.in82.i90 = phi i64 [ %.16383.i89, %._crit_edge78.i ], [ %i.av, %.lr.ph84.i.preheader ]
  %.16383.i89 = phi i64 [ %.163.i, %._crit_edge78.i ], [ %.pre.i, %.lr.ph84.i.preheader ] ; 3 uses
  %i.ce = add i64 %.163.in82.i90, -2
  br label %bb.n

bb.n:                                             ; preds = %bb.q, %.lr.ph77.i
  %i.cf = phi i64 [ 1, %.lr.ph77.i ], [ %i.cw, %bb.q ] ; 4 uses
  %i.cg = phi i64 [ 0, %.lr.ph77.i ], [ %i.cv, %bb.q ]
  %.175.i = phi i64 [ 0, %.lr.ph77.i ], [ %.161.i, %bb.q ] ; 2 uses
  %i.ch = icmp ult i64 %i.cf, %i.ce
  br i1 %i.ch, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ci = add i64 %i.cg, 2                        ; 2 uses
  %i.cj = call fastcc i32 @js_array_sort_cmp(i64 noundef %i.cf, i64 noundef %i.ci, ptr noundef nonnull %5) #31, !callees !333, !inline_history !334
  %i.ck = icmp slt i32 %i.cj, 1
  %spec.select68.i = select i1 %i.ck, i64 %i.ci, i64 %i.cf
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.161.i = phi i64 [ %i.cf, %bb.n ], [ %spec.select68.i, %bb.o ] ; 4 uses
  %i.cl = call fastcc i32 @js_array_sort_cmp(i64 noundef %.175.i, i64 noundef %.161.i, ptr noundef nonnull %5) #31, !callees !333, !inline_history !334
  %i.cm = icmp sgt i32 %i.cl, 0
  %.pre = load ptr, ptr %i.at, align 8, !tbaa !159 ; 2 uses
  br i1 %i.cm, label %._crit_edge78.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cn = load i64, ptr %.pre, align 8, !tbaa !46
  %i.co = add i64 %i.cn, -1
  %i.cp = inttoptr i64 %i.co to ptr
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8 ; 2 uses
  %.idx.i = shl i64 %.175.i, 4
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 %.idx.i ; 2 uses
  %.idx20.i = shl i64 %.161.i, 4
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 %.idx20.i ; 2 uses
  %i.ct = load <2 x i64>, ptr %i.cr, align 8, !tbaa !46
  %i.cu = load <2 x i64>, ptr %i.cs, align 8, !tbaa !46
  store <2 x i64> %i.cu, ptr %i.cr, align 8, !tbaa !46
  store <2 x i64> %i.ct, ptr %i.cs, align 8, !tbaa !46
  %i.cv = shl i64 %.161.i, 1                      ; 2 uses
  %i.cw = or disjoint i64 %i.cv, 1                ; 2 uses
  %i.cx = icmp ult i64 %i.cw, %.16383.i89
  br i1 %i.cx, label %bb.n, label %._crit_edge78.i, !llvm.loop !18

._crit_edge78.i:                                  ; preds = %bb.q, %bb.p
  %.163.i = add i64 %.16383.i89, -1               ; 3 uses
  %i.cy = load i64, ptr %.pre, align 8, !tbaa !46
  %i.cz = add i64 %i.cy, -1
  %i.da = inttoptr i64 %i.cz to ptr
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8 ; 3 uses
  %.idx20.i77 = shl i64 %.163.i, 4
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 %.idx20.i77 ; 2 uses
  %i.dd = load <2 x i64>, ptr %i.db, align 8, !tbaa !46
  %i.de = load <2 x i64>, ptr %i.dc, align 8, !tbaa !46
  store <2 x i64> %i.de, ptr %i.db, align 8, !tbaa !46
  store <2 x i64> %i.dd, ptr %i.dc, align 8, !tbaa !46
  %i.df = icmp ugt i64 %.163.i, 1
  br i1 %i.df, label %.lr.ph77.i, label %rqsort_idx.exit

rqsort_idx.exit:                                  ; preds = %._crit_edge78.i, %.lr.ph84.i.preheader, %._crit_edge, %.preheader.i
  %i.dg = load i64, ptr %4, align 8, !tbaa !40
  %i.dh = load ptr, ptr %i.ar, align 8, !tbaa !39
  store ptr %i.dh, ptr %i.ap, align 8, !tbaa !36
  %i.di = add i64 %i.dg, -1                       ; 3 uses
  %i.dj = inttoptr i64 %i.di to ptr               ; 7 uses
  %i.dk = load i32, ptr %i.as, align 8, !tbaa !158
  %.not68 = icmp eq i32 %i.dk, 0
  br i1 %.not68, label %bb.u, label %bb.r

bb.r:                                             ; preds = %rqsort_idx.exit
  %.not.i73 = icmp eq i64 %i.di, 0
  br i1 %.not.i73, label %js_free.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.val.i = load i64, ptr %i.dj, align 8
  %i.dl = call fastcc i32 @get_mblock_size(i64 %.val.i) #28
  %i.dm = sext i32 %i.dl to i64
  %i.dn = getelementptr inbounds i8, ptr %i.dj, i64 %i.dm
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !44
  %i.dq = icmp eq ptr %i.dn, %i.dp
  br i1 %i.dq, label %bb.t, label %js_free.exit

bb.t:                                             ; preds = %bb.s
  store ptr %i.dj, ptr %i.do, align 8, !tbaa !44
  br label %js_free.exit

bb.u:                                             ; preds = %rqsort_idx.exit
  %i.dr = load i64, ptr %1, align 8, !tbaa !46
  %i.ds = add i64 %i.dr, -1
  %i.dt = inttoptr i64 %i.ds to ptr               ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 32
  %i.dv = load i32, ptr %i.du, align 8, !tbaa !51
  %..i = call noundef i32 @llvm.smin.i32(i32 %i.r, i32 %i.dv) ; 2 uses
  %i.dw = icmp sgt i32 %..i, 0
  br i1 %i.dw, label %.lr.ph93, label %._crit_edge94

.lr.ph93:                                         ; preds = %bb.u
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dt, i64 24
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !51
  %i.dz = add i64 %i.dy, -1
  %i.ea = inttoptr i64 %i.dz to ptr
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %wide.trip.count100 = zext nneg i32 %..i to i64
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph93, %bb.v
  %indvars.iv97 = phi i64 [ 0, %.lr.ph93 ], [ %indvars.iv.next98, %bb.v ] ; 3 uses
  %.idx = shl nuw nsw i64 %indvars.iv97, 4
  %i.ed = getelementptr inbounds nuw i8, ptr %i.eb, i64 %.idx
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !46
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %indvars.iv97
  store i64 %i.ee, ptr %i.ef, align 8, !tbaa !46
  %indvars.iv.next98 = add nuw nsw i64 %indvars.iv97, 1 ; 2 uses
  %exitcond101.not = icmp eq i64 %indvars.iv.next98, %wide.trip.count100
  br i1 %exitcond101.not, label %._crit_edge94, label %bb.v, !llvm.loop !335

._crit_edge94:                                    ; preds = %bb.v, %bb.u
  %.not.i74 = icmp eq i64 %i.di, 0
  br i1 %.not.i74, label %js_free.exit76, label %bb.w

bb.w:                                             ; preds = %._crit_edge94
  %.val.i75 = load i64, ptr %i.dj, align 8
  %i.eg = call fastcc i32 @get_mblock_size(i64 %.val.i75) #28
  %i.eh = sext i32 %i.eg to i64
  %i.ei = getelementptr inbounds i8, ptr %i.dj, i64 %i.eh
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !44
  %i.el = icmp eq ptr %i.ei, %i.ek
  br i1 %i.el, label %bb.x, label %js_free.exit76

bb.x:                                             ; preds = %bb.w
  store ptr %i.dj, ptr %i.ej, align 8, !tbaa !44
  br label %js_free.exit76

js_free.exit76:                                   ; preds = %._crit_edge94, %bb.w, %bb.x
  %i.em = load i64, ptr %1, align 8, !tbaa !46
  br label %js_free.exit

js_free.exit:                                     ; preds = %bb.t, %bb.s, %bb.r, %js_get_array.exit.thread, %js_get_array.exit, %js_free.exit76, %JS_IsFunction.exit.thread
  %.061 = phi i64 [ 15, %js_get_array.exit ], [ %i.em, %js_free.exit76 ], [ 15, %js_get_array.exit.thread ], [ %i.i, %JS_IsFunction.exit.thread ], [ 15, %bb.r ], [ 15, %bb.s ], [ 15, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  ret i64 %.061
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc range(i32 -1, 16) i32 @js_array_sort_cmp(i64 noundef %0, i64 noundef %1, ptr nofree noundef captures(none) %2) unnamed_addr #4 {
bb.a:
  %i.a = alloca double, align 8                   ; 5 uses
  %3 = alloca %struct.JSGCRef, align 8            ; 7 uses
  %i.b = load ptr, ptr %2, align 8, !tbaa !157    ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !158
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.b, label %JS_StackCheck.exit.thread100

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !159
  %i.g = load i64, ptr %i.f, align 8, !tbaa !46
  %i.h = add i64 %i.g, -1
  %i.i = inttoptr i64 %i.h to ptr                 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !160
  %.not74 = icmp eq ptr %i.k, null
  br i1 %.not74, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.m = shl i64 %0, 1                            ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.m
  %i.o = load i64, ptr %i.n, align 8, !tbaa !46
  %i.p = shl i64 %1, 1                            ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.p
  %i.r = load i64, ptr %i.q, align 8, !tbaa !46
  %i.s = icmp eq i64 %i.o, %i.r
  br i1 %i.s, label %JS_StackCheck.exit.thread103, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 4 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !42
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -160 ; 2 uses
  %i.w = tail call fastcc i32 @check_free_mem(ptr noundef %i.b, ptr noundef nonnull %i.v, i32 noundef 160) #28, !inline_history !80
  %.not.i = icmp eq i32 %i.w, 0
  br i1 %.not.i, label %bb.e, label %JS_StackCheck.exit.thread106

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.v, ptr %i.x, align 8, !tbaa !42
  %i.y = load ptr, ptr %i.e, align 8, !tbaa !159
  %i.z = load i64, ptr %i.y, align 8, !tbaa !46
  %i.aa = add i64 %i.z, -1
  %i.ab = inttoptr i64 %i.aa to ptr
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.p
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !46
  %i.af = load ptr, ptr %i.t, align 8, !tbaa !42  ; 4 uses
  %i.ag = getelementptr inbounds i8, ptr %i.af, i64 -8
  store i64 %i.ae, ptr %i.ag, align 8, !tbaa !46
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.m
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !46
  %i.aj = getelementptr inbounds i8, ptr %i.af, i64 -16 ; 2 uses
  store ptr %i.aj, ptr %i.t, align 8, !tbaa !42
  store i64 %i.ai, ptr %i.aj, align 8, !tbaa !46
  %i.ak = load ptr, ptr %i.j, align 8, !tbaa !160
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !46
  %i.am = getelementptr inbounds i8, ptr %i.af, i64 -24
  store i64 %i.al, ptr %i.am, align 8, !tbaa !46
  %i.an = getelementptr inbounds i8, ptr %i.af, i64 -32 ; 2 uses
  store ptr %i.an, ptr %i.t, align 8, !tbaa !42
  store i64 11, ptr %i.an, align 8, !tbaa !46
  %i.ao = tail call i64 @JS_Call(ptr noundef nonnull %i.b, i32 noundef 2) #28 ; 3 uses
  %.not115 = icmp eq i64 %i.ao, 15
  br i1 %.not115, label %JS_StackCheck.exit.thread100, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ap = trunc i64 %i.ao to i32                  ; 3 uses
  %i.aq = and i32 %i.ap, 1
  %.not82.not = icmp eq i32 %i.aq, 0
  br i1 %.not82.not, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ar = icmp sgt i32 %i.ap, 1
  %i.as = zext i1 %i.ar to i32
  %.lobit.neg = ashr i32 %i.ap, 31
  %i.at = add nsw i32 %.lobit.neg, %i.as
  br label %JS_StackCheck.exit.thread97

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  %i.au = call i32 @JS_ToNumber(ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, i64 noundef %i.ao) #28
  %.not83 = icmp eq i32 %i.au, 0
  br i1 %.not83, label %select.unfold, label %JS_StackCheck.exit

select.unfold:                                    ; preds = %bb.h
  %i.av = load double, ptr %i.a, align 8, !tbaa !73 ; 2 uses
  %i.aw = fcmp ogt double %i.av, 0.000000e+00
  %i.ax = zext i1 %i.aw to i32
  %i.ay = fcmp olt double %i.av, 0.000000e+00
  %.neg = sext i1 %i.ay to i32
  %i.az = add nsw i32 %.neg, %i.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  br label %JS_StackCheck.exit.thread97

JS_StackCheck.exit:                               ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  br label %JS_StackCheck.exit.thread106

bb.i:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  %i.ba = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.idx = shl i64 %0, 4
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %.idx
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !46 ; 6 uses
  %i.bd = and i64 %i.bc, 7
end_hunk_0
begin_hunk_1_@get_class_atom:bb.a
  call void (ptr, ptr, ...) @js_parse_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.209) #34
  unreachable

bb.v:                                             ; preds = %unicode_from_utf8.exit._crit_edge, %unicode_from_utf8.exit.thread
  %.15678 = phi ptr [ %.15679, %unicode_from_utf8.exit.thread ], [ %.156, %unicode_from_utf8.exit._crit_edge ]
  %.pre70 = phi ptr [ %i.c, %unicode_from_utf8.exit.thread ], [ %.pre70.pre, %unicode_from_utf8.exit._crit_edge ]
  %i.au = phi i64 [ 1, %unicode_from_utf8.exit.thread ], [ %.pre69, %unicode_from_utf8.exit._crit_edge ]
  %.0.i67 = phi i32 [ %i.ar, %unicode_from_utf8.exit.thread ], [ %i.as, %unicode_from_utf8.exit._crit_edge ]
  %i.av = getelementptr inbounds nuw i8, ptr %.15678, i64 %i.au
  br label %bb.w

bb.w:                                             ; preds = %bb.m, %bb.h, %bb.r, %bb.l, %bb.o, %bb.n, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.v
  %i.aw = phi ptr [ %.pre70, %bb.v ], [ %i.c, %bb.r ], [ %i.c, %bb.h ], [ %i.c, %bb.l ], [ %i.c, %bb.b ], [ %i.c, %bb.n ], [ %i.c, %bb.o ], [ %i.c, %bb.b ], [ %i.c, %bb.b ], [ %i.c, %bb.b ], [ %i.c, %bb.b ], [ %i.c, %bb.b ], [ %i.c, %bb.b ], [ %i.c, %bb.b ], [ %i.c, %bb.b ], [ %i.c, %bb.b ], [ %i.c, %bb.b ], [ %i.c, %bb.b ], [ %i.c, %bb.b ], [ %i.c, %bb.b ], [ %i.c, %bb.b ], [ %i.c, %bb.m ]
  %.2 = phi ptr [ %i.av, %bb.v ], [ %i.al, %bb.r ], [ %i.j, %bb.h ], [ %i.x, %bb.l ], [ %i.j, %bb.b ], [ %i.j, %bb.n ], [ %i.j, %bb.o ], [ %i.j, %bb.b ], [ %i.j, %bb.b ], [ %i.j, %bb.b ], [ %i.j, %bb.b ], [ %i.j, %bb.b ], [ %i.j, %bb.b ], [ %i.j, %bb.b ], [ %i.j, %bb.b ], [ %i.j, %bb.b ], [ %i.j, %bb.b ], [ %i.j, %bb.b ], [ %i.j, %bb.b ], [ %i.j, %bb.b ], [ %i.j, %bb.b ], [ %i.i, %bb.m ]
  %.1 = phi i32 [ %.0.i67, %bb.v ], [ %i.ab, %bb.r ], [ %.0, %bb.h ], [ %i.w, %bb.l ], [ %i.l, %bb.b ], [ 45, %bb.n ], [ 45, %bb.o ], [ %i.l, %bb.b ], [ %i.l, %bb.b ], [ %i.l, %bb.b ], [ %i.l, %bb.b ], [ %i.l, %bb.b ], [ %i.l, %bb.b ], [ %i.l, %bb.b ], [ %i.l, %bb.b ], [ %i.l, %bb.b ], [ %i.l, %bb.b ], [ %i.l, %bb.b ], [ %i.l, %bb.b ], [ %i.l, %bb.b ], [ %i.l, %bb.b ], [ 92, %bb.m ]
  %i.ax = ptrtoaddr ptr %.2 to i64
  %i.ay = ptrtoaddr ptr %i.aw to i64
  %i.az = sub i64 %i.ax, %i.ay
  %i.ba = trunc i64 %i.az to i32
  store i32 %i.ba, ptr %i.d, align 8, !tbaa !116
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  ret i32 %.1
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @re_emit_op_u16(ptr noundef %0) unnamed_addr #4 {
bb.a:
  tail call fastcc void @emit_claim_size(ptr noundef %0, i32 noundef 1) #28
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !121
  %i.c = add i64 %i.b, -1
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !128  ; 2 uses
  %i.h = add i32 %i.g, 1
  store i32 %i.h, ptr %i.f, align 8, !tbaa !128
  %i.i = zext i32 %i.g to i64
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.i
  store i8 33, ptr %i.j, align 1, !tbaa !51
  tail call fastcc void @emit_claim_size(ptr noundef %0, i32 noundef 2) #28
  %i.k = load i64, ptr %i.a, align 8, !tbaa !121
  %i.l = add i64 %i.k, -1
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load i32, ptr %i.f, align 8, !tbaa !128  ; 2 uses
  %i.p = zext i32 %i.o to i64
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.p
  store i16 0, ptr %i.q, align 1, !tbaa !89
  %i.r = add i32 %i.o, 2
  store i32 %i.r, ptr %i.f, align 8, !tbaa !128
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @re_emit_range_base(ptr noundef %0, i32 noundef range(i32 0, -1073741824) %1) unnamed_addr #4 {
bb.a:
  %i.a = and i32 %1, 1
  %.not = icmp eq i32 %i.a, 0                     ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @emit_claim_size(ptr noundef %0, i32 noundef 4) #28
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.c = load i64, ptr %i.b, align 8, !tbaa !121
  %i.d = add i64 %i.c, -1
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !128  ; 2 uses
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.i
  store i32 0, ptr %i.j, align 1, !tbaa !91
  %i.k = add i32 %i.h, 4
  store i32 %i.k, ptr %i.g, align 8, !tbaa !128
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.l = and i32 %1, -2
  switch i32 %i.l, label %bb.i [
    i32 0, label %bb.d
    i32 2, label %bb.e
    i32 4, label %bb.g
  ]

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @emit_claim_size(ptr noundef %0, i32 noundef 4) #28
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !121
  %i.o = add i64 %i.n, -1
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !128  ; 2 uses
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.t
  store i32 48, ptr %i.u, align 1, !tbaa !91
  %i.v = add i32 %i.s, 4
  store i32 %i.v, ptr %i.r, align 8, !tbaa !128
  tail call fastcc void @emit_claim_size(ptr noundef %0, i32 noundef 4) #28
  %i.w = load i64, ptr %i.m, align 8, !tbaa !121
  %i.x = add i64 %i.w, -1
  %i.y = inttoptr i64 %i.x to ptr
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load i32, ptr %i.r, align 8, !tbaa !128 ; 2 uses
  %i.ab = zext i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ab
  store i32 58, ptr %i.ac, align 1, !tbaa !91
  %i.ad = add i32 %i.aa, 4
  store i32 %i.ad, ptr %i.r, align 8, !tbaa !128
  br label %re_emit_range_base1.exit

bb.e:                                             ; preds = %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %indvars.iv.i = phi i64 [ 0, %bb.e ], [ %indvars.iv.next.i, %bb.f ] ; 2 uses
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr @char_range_s, i64 %indvars.iv.i
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !75
  %i.ai = zext i16 %i.ah to i32
  tail call fastcc void @emit_claim_size(ptr noundef %0, i32 noundef 4) #28
  %i.aj = load i64, ptr %i.ae, align 8, !tbaa !121
  %i.ak = add i64 %i.aj, -1
  %i.al = inttoptr i64 %i.ak to ptr
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load i32, ptr %i.af, align 8, !tbaa !128 ; 2 uses
  %i.ao = zext i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ao
  store i32 %i.ai, ptr %i.ap, align 1, !tbaa !91
  %i.aq = add i32 %i.an, 4
  store i32 %i.aq, ptr %i.af, align 8, !tbaa !128
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 20
  br i1 %exitcond.not.i, label %re_emit_range_base1.exit, label %bb.f, !llvm.loop !411

bb.g:                                             ; preds = %bb.c
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %bb.g
  %indvars.iv.i9 = phi i64 [ 0, %bb.g ], [ %indvars.iv.next.i10, %bb.h ] ; 2 uses
  %i.at = getelementptr inbounds nuw [2 x i8], ptr @char_range_w, i64 %indvars.iv.i9
  %i.au = load i16, ptr %i.at, align 2, !tbaa !75
  %i.av = zext i16 %i.au to i32
  tail call fastcc void @emit_claim_size(ptr noundef %0, i32 noundef 4) #28
  %i.aw = load i64, ptr %i.ar, align 8, !tbaa !121
  %i.ax = add i64 %i.aw, -1
  %i.ay = inttoptr i64 %i.ax to ptr
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load i32, ptr %i.as, align 8, !tbaa !128 ; 2 uses
  %i.bb = zext i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.bb
  store i32 %i.av, ptr %i.bc, align 1, !tbaa !91
  %i.bd = add i32 %i.ba, 4
  store i32 %i.bd, ptr %i.as, align 8, !tbaa !128
  %indvars.iv.next.i10 = add nuw nsw i64 %indvars.iv.i9, 1 ; 2 uses
  %exitcond.not.i11 = icmp eq i64 %indvars.iv.next.i10, 8
  br i1 %exitcond.not.i11, label %re_emit_range_base1.exit, label %bb.h, !llvm.loop !411

bb.i:                                             ; preds = %bb.c
  tail call void @abort() #27
  unreachable

re_emit_range_base1.exit:                         ; preds = %bb.h, %bb.f, %bb.d
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %re_emit_range_base1.exit
  tail call fastcc void @emit_claim_size(ptr noundef nonnull %0, i32 noundef 4) #28
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !121
  %i.bg = add i64 %i.bf, -1
  %i.bh = inttoptr i64 %i.bg to ptr
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !128 ; 2 uses
  %i.bl = zext i32 %i.bk to i64
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bl
  store i32 1114112, ptr %i.bm, align 1, !tbaa !91
  %i.bn = add i32 %i.bk, 4
  store i32 %i.bn, ptr %i.bj, align 8, !tbaa !128
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %re_emit_range_base1.exit
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @re_range_optimize(ptr noundef %0, i32 noundef %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 13 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !128
  %i.c = sub i32 %i.b, %1                         ; 2 uses
  %i.d = lshr i32 %i.c, 3                         ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 5 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !121
  %i.g = add i64 %i.f, -1
  %i.h = inttoptr i64 %i.g to ptr                 ; 2 uses
  %i.i = zext nneg i32 %i.d to i64                ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.k = sext i32 %1 to i64                       ; 6 uses
  %i.l = getelementptr inbounds i8, ptr %i.j, i64 %i.k ; 15 uses
  %i.m = icmp ugt i32 %i.c, 15
  br i1 %i.m, label %bb.b, label %rqsort_idx.exit

bb.b:                                             ; preds = %bb.a
  %i.n = lshr i64 %i.i, 1
  %.pre.i = add nsw i64 %i.i, -1                  ; 5 uses
  br label %.lr.ph74.i

.preheader.i:                                     ; preds = %._crit_edge.i
  %.not6781.i = icmp eq i64 %.pre.i, 0
  br i1 %.not6781.i, label %rqsort_idx.exit, label %.lr.ph84.i.preheader

.lr.ph84.i.preheader:                             ; preds = %.preheader.i
  %.val9.i6877 = load i64, ptr %i.l, align 1, !tbaa !414
  %i.o = shl nsw i64 %.pre.i, 3
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.o ; 2 uses
  %.val.i6978 = load i64, ptr %i.p, align 1, !tbaa !414
  store i64 %.val.i6978, ptr %i.l, align 1, !tbaa !414
  store i64 %.val9.i6877, ptr %i.p, align 1, !tbaa !414
  %.not82 = icmp eq i64 %.pre.i, 1
  br i1 %.not82, label %rqsort_idx.exit, label %.lr.ph77.i

.lr.ph74.i:                                       ; preds = %bb.b, %._crit_edge.i
  %.06272.i = phi i64 [ %i.q, %._crit_edge.i ], [ %i.n, %bb.b ]
  %i.q = add nsw i64 %.06272.i, -1                ; 4 uses
  %i.r = shl nuw nsw i64 %i.q, 1                  ; 2 uses
  %i.s = or disjoint i64 %i.r, 1                  ; 2 uses
  %i.t = icmp samesign ult i64 %i.s, %i.i
  br i1 %i.t, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.lr.ph74.i, %bb.e
  %i.u = phi i64 [ %i.al, %bb.e ], [ %i.s, %.lr.ph74.i ] ; 4 uses
  %i.v = phi i64 [ %i.ak, %bb.e ], [ %i.r, %.lr.ph74.i ]
  %.069.i = phi i64 [ %.060.i, %bb.e ], [ %i.q, %.lr.ph74.i ]
  %i.w = icmp ult i64 %i.u, %.pre.i
  br i1 %i.w, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.i
  %i.x = add nuw i64 %i.v, 2                      ; 2 uses
  %i.y = shl nuw nsw i64 %i.u, 3
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.y
  %.val4.i74 = load i32, ptr %i.z, align 1, !tbaa !91
  %i.aa = shl i64 %i.x, 3
  %i.ab = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.aa
  %.val.i75 = load i32, ptr %i.ab, align 1, !tbaa !91
  %i.ac = sub i32 %.val4.i74, %.val.i75
  %i.ad = icmp slt i32 %i.ac, 1
  %spec.select.i = select i1 %i.ad, i64 %i.x, i64 %i.u
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph.i
  %.060.i = phi i64 [ %i.u, %.lr.ph.i ], [ %spec.select.i, %bb.c ] ; 3 uses
  %i.ae = shl i64 %.069.i, 3
  %i.af = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ae ; 3 uses
  %.val4.i72 = load i32, ptr %i.af, align 1, !tbaa !91
  %i.ag = shl i64 %.060.i, 3
  %i.ah = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ag ; 3 uses
  %.val.i73 = load i32, ptr %i.ah, align 1, !tbaa !91
  %i.ai = sub i32 %.val4.i72, %.val.i73
  %i.aj = icmp sgt i32 %i.ai, 0
  br i1 %i.aj, label %._crit_edge.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.val9.i70 = load i64, ptr %i.af, align 1, !tbaa !414
  %.val.i71 = load i64, ptr %i.ah, align 1, !tbaa !414
  store i64 %.val.i71, ptr %i.af, align 1, !tbaa !414
  store i64 %.val9.i70, ptr %i.ah, align 1, !tbaa !414
  %i.ak = shl i64 %.060.i, 1                      ; 2 uses
  %i.al = or disjoint i64 %i.ak, 1                ; 2 uses
  %i.am = icmp ult i64 %i.al, %i.i
  br i1 %i.am, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !16

._crit_edge.i:                                    ; preds = %bb.e, %bb.d, %.lr.ph74.i
  %.not.i = icmp eq i64 %i.q, 0
  br i1 %.not.i, label %.preheader.i, label %.lr.ph74.i, !llvm.loop !17

.lr.ph77.i:                                       ; preds = %.lr.ph84.i.preheader, %._crit_edge78.i
  %.163.in82.i80 = phi i64 [ %.16383.i79, %._crit_edge78.i ], [ %i.i, %.lr.ph84.i.preheader ]
  %.16383.i79 = phi i64 [ %.163.i, %._crit_edge78.i ], [ %.pre.i, %.lr.ph84.i.preheader ] ; 3 uses
  %i.an = add i64 %.163.in82.i80, -2
  br label %bb.f

bb.f:                                             ; preds = %bb.i, %.lr.ph77.i
  %i.ao = phi i64 [ 1, %.lr.ph77.i ], [ %i.bf, %bb.i ] ; 4 uses
  %i.ap = phi i64 [ 0, %.lr.ph77.i ], [ %i.be, %bb.i ]
  %.175.i = phi i64 [ 0, %.lr.ph77.i ], [ %.161.i, %bb.i ]
  %i.aq = icmp ult i64 %i.ao, %i.an
  br i1 %i.aq, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ar = add i64 %i.ap, 2                        ; 2 uses
  %i.as = shl i64 %i.ao, 3
  %i.at = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.as
  %.val4.i66 = load i32, ptr %i.at, align 1, !tbaa !91
  %i.au = shl i64 %i.ar, 3
  %i.av = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.au
  %.val.i67 = load i32, ptr %i.av, align 1, !tbaa !91
  %i.aw = sub i32 %.val4.i66, %.val.i67
  %i.ax = icmp slt i32 %i.aw, 1
  %spec.select68.i = select i1 %i.ax, i64 %i.ar, i64 %i.ao
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.161.i = phi i64 [ %i.ao, %bb.f ], [ %spec.select68.i, %bb.g ] ; 3 uses
  %i.ay = shl i64 %.175.i, 3
  %i.az = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ay ; 3 uses
  %.val4.i = load i32, ptr %i.az, align 1, !tbaa !91
  %i.ba = shl i64 %.161.i, 3
  %i.bb = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ba ; 3 uses
  %.val.i65 = load i32, ptr %i.bb, align 1, !tbaa !91
  %i.bc = sub i32 %.val4.i, %.val.i65
  %i.bd = icmp sgt i32 %i.bc, 0
  br i1 %i.bd, label %._crit_edge78.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.val9.i = load i64, ptr %i.az, align 1, !tbaa !414
  %.val.i = load i64, ptr %i.bb, align 1, !tbaa !414
  store i64 %.val.i, ptr %i.az, align 1, !tbaa !414
  store i64 %.val9.i, ptr %i.bb, align 1, !tbaa !414
  %i.be = shl i64 %.161.i, 1                      ; 2 uses
  %i.bf = or disjoint i64 %i.be, 1                ; 2 uses
  %i.bg = icmp ult i64 %i.bf, %.16383.i79
  br i1 %i.bg, label %bb.f, label %._crit_edge78.i, !llvm.loop !18

._crit_edge78.i:                                  ; preds = %bb.i, %bb.h
  %.163.i = add i64 %.16383.i79, -1               ; 3 uses
  %.val9.i68 = load i64, ptr %i.l, align 1, !tbaa !414
  %i.bh = shl i64 %.163.i, 3
  %i.bi = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.bh ; 2 uses
  %.val.i69 = load i64, ptr %i.bi, align 1, !tbaa !414
  store i64 %.val.i69, ptr %i.l, align 1, !tbaa !414
  store i64 %.val9.i68, ptr %i.bi, align 1, !tbaa !414
  %i.bj = icmp ugt i64 %.163.i, 1
  br i1 %i.bj, label %.lr.ph77.i, label %rqsort_idx.exit

rqsort_idx.exit:                                  ; preds = %._crit_edge78.i, %.lr.ph84.i.preheader, %bb.a, %.preheader.i
  %i.bk = tail call fastcc i32 @range_compress(ptr noundef nonnull %i.l, i32 noundef %i.d) #28 ; 3 uses
  %.neg = sub i32 %i.bk, %i.d
  %.neg60 = shl i32 %.neg, 3
  %i.bl = load i32, ptr %i.a, align 8, !tbaa !128
  %i.bm = add i32 %.neg60, %i.bl
  store i32 %i.bm, ptr %i.a, align 8, !tbaa !128
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %rqsort_idx.exit
  tail call fastcc void @emit_claim_size(ptr noundef nonnull %0, i32 noundef 4) #28
  %i.bn = load i64, ptr %i.e, align 8, !tbaa !121
  %i.bo = add i64 %i.bn, -1
  %i.bp = inttoptr i64 %i.bo to ptr
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.br = getelementptr inbounds i8, ptr %i.bq, i64 %i.k ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  %i.bt = load i32, ptr %i.a, align 8, !tbaa !128
  %i.bu = sub i32 %i.bt, %1
  %i.bv = zext i32 %i.bu to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bs, ptr nonnull align 1 %i.br, i64 %i.bv, i1 false)
  %i.bw = load i32, ptr %i.a, align 8, !tbaa !128
  %i.bx = add i32 %i.bw, 4
  store i32 %i.bx, ptr %i.a, align 8, !tbaa !128
  %i.by = load i64, ptr %i.e, align 8, !tbaa !121
  %i.bz = add i64 %i.by, -1
  %i.ca = inttoptr i64 %i.bz to ptr
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cc = getelementptr inbounds i8, ptr %i.cb, i64 %i.k
  store i32 0, ptr %i.cc, align 1, !tbaa !91
  tail call fastcc void @emit_claim_size(ptr noundef nonnull %0, i32 noundef 4) #28
  %i.cd = load i64, ptr %i.e, align 8, !tbaa !121
  %i.ce = add i64 %i.cd, -1
  %i.cf = inttoptr i64 %i.ce to ptr               ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8 ; 2 uses
  %i.ch = load i32, ptr %i.a, align 8, !tbaa !128 ; 2 uses
  %i.ci = zext i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.ci
  store i32 1114112, ptr %i.cj, align 1, !tbaa !91
  %i.ck = add i32 %i.ch, 4
  store i32 %i.ck, ptr %i.a, align 8, !tbaa !128
  %i.cl = add nsw i32 %i.bk, 1                    ; 2 uses
  %i.cm = getelementptr inbounds i8, ptr %i.cg, i64 %i.k
  %i.cn = tail call fastcc i32 @range_compress(ptr noundef nonnull %i.cm, i32 noundef %i.cl) #28 ; 2 uses
  %.neg61 = sub i32 %i.cn, %i.cl
  %.neg62 = shl i32 %.neg61, 3
  %i.co = load i32, ptr %i.a, align 8, !tbaa !128
  %i.cp = add i32 %.neg62, %i.co
  store i32 %i.cp, ptr %i.a, align 8, !tbaa !128
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %rqsort_idx.exit
  %.058 = phi i32 [ %i.cn, %bb.j ], [ %i.bk, %rqsort_idx.exit ] ; 6 uses
  %.057 = phi ptr [ %i.cf, %bb.j ], [ %i.h, %rqsort_idx.exit ] ; 2 uses
  %i.cq = icmp sgt i32 %.058, 65534
  br i1 %i.cq, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void (ptr, ptr, ...) @js_parse_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.210) #34
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.cr = add i32 %.058, -1
  %or.cond = icmp ult i32 %i.cr, 15
  br i1 %or.cond, label %bb.n, label %.thread

bb.n:                                             ; preds = %bb.m
  %i.cs = getelementptr inbounds nuw i8, ptr %.057, i64 8
  %i.ct = getelementptr inbounds i8, ptr %i.cs, i64 %i.k ; 2 uses
  %i.cu = shl nuw nsw i32 %.058, 3
  %i.cv = zext nneg i32 %i.cu to i64
  %i.cw = getelementptr i8, ptr %i.ct, i64 %i.cv  ; 2 uses
  %i.cx = getelementptr i8, ptr %i.cw, i64 -4
  %.val64 = load i32, ptr %i.cx, align 1, !tbaa !91 ; 2 uses
  %i.cy = icmp slt i32 %.val64, 254
  br i1 %i.cy, label %.lr.ph.preheader, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cz = icmp eq i32 %.val64, 1114112
  br i1 %i.cz, label %bb.p, label %.thread

bb.p:                                             ; preds = %bb.o
  %i.da = getelementptr i8, ptr %i.cw, i64 -8
  %.val63 = load i32, ptr %i.da, align 1, !tbaa !91
  %i.db = icmp ult i32 %.val63, 254
  br i1 %i.db, label %.lr.ph.preheader, label %.thread

.lr.ph.preheader:                                 ; preds = %bb.n, %bb.p
  %i.dc = add nsw i32 %1, -3
  store i32 %i.dc, ptr %i.a, align 8, !tbaa !128
  tail call fastcc void @re_emit_op_u8(ptr noundef nonnull %0, i32 noundef 32, i32 noundef %.058) #28
  %i.dd = shl nuw nsw i32 %.058, 1
  %wide.trip.count = zext nneg i32 %i.dd to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.de = shl nuw nsw i64 %indvars.iv, 2
  %i.df = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.de
  %.val = load i32, ptr %i.df, align 1, !tbaa !91 ; 2 uses
  %i.dg = icmp eq i32 %.val, 1114112
  %i.dh = trunc i32 %.val to i8
  %i.di = select i1 %i.dg, i8 -1, i8 %i.dh
  tail call fastcc void @emit_claim_size(ptr noundef nonnull %0, i32 noundef 1) #28
  %i.dj = load i64, ptr %i.e, align 8, !tbaa !121
  %i.dk = add i64 %i.dj, -1
  %i.dl = inttoptr i64 %i.dk to ptr
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %i.dn = load i32, ptr %i.a, align 8, !tbaa !128 ; 2 uses
  %i.do = add i32 %i.dn, 1
  store i32 %i.do, ptr %i.a, align 8, !tbaa !128
  %i.dp = zext i32 %i.dn to i64
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dm, i64 %i.dp
  store i8 %i.di, ptr %i.dq, align 1, !tbaa !51
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !412

.thread:                                          ; preds = %bb.o, %bb.p, %bb.m
  %i.dr = getelementptr i8, ptr %.057, i64 %i.k
  %i.ds = getelementptr i8, ptr %i.dr, i64 6
  %i.dt = trunc i32 %.058 to i16
  store i16 %i.dt, ptr %i.ds, align 1, !tbaa !89
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %.thread
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @add_interval_intersect(ptr noundef %0, i32 noundef %1, i32 noundef range(i32 1, 1073741825) %2, i32 noundef range(i32 0, 124) %3, i32 noundef range(i32 65, -2147483648) %4, i32 noundef range(i32 -32, 33) %5) unnamed_addr #4 {
bb.a:
  %..i = tail call noundef i32 @llvm.umax.i32(i32 %1, i32 %3) ; 3 uses
  %..i18 = tail call range(i32 1, 1073741825) i32 @llvm.umin.i32(i32 range(i32 1, 1073741825) %2, i32 range(i32 65, -2147483648) %4) ; 3 uses
  %i.a = icmp ult i32 %..i, %..i18
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @emit_claim_size(ptr noundef %0, i32 noundef 4) #28
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !121
  %i.d = add i64 %i.c, -1
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 8 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !128  ; 2 uses
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.i
  store i32 %..i, ptr %i.j, align 1, !tbaa !91
  %i.k = add i32 %i.h, 4
  store i32 %i.k, ptr %i.g, align 8, !tbaa !128
  tail call fastcc void @emit_claim_size(ptr noundef %0, i32 noundef 4) #28
  %i.l = load i64, ptr %i.b, align 8, !tbaa !121
  %i.m = add i64 %i.l, -1
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load i32, ptr %i.g, align 8, !tbaa !128  ; 2 uses
  %i.q = zext i32 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.q
  store i32 %..i18, ptr %i.r, align 1, !tbaa !91
  %i.s = add i32 %i.p, 4
  store i32 %i.s, ptr %i.g, align 8, !tbaa !128
  %.not = icmp eq i32 %5, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = add nsw i32 %5, %..i
  tail call fastcc void @emit_claim_size(ptr noundef nonnull %0, i32 noundef 4) #28
  %i.u = load i64, ptr %i.b, align 8, !tbaa !121
  %i.v = add i64 %i.u, -1
  %i.w = inttoptr i64 %i.v to ptr
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load i32, ptr %i.g, align 8, !tbaa !128  ; 2 uses
  %i.z = zext i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.z
  store i32 %i.t, ptr %i.aa, align 1, !tbaa !91
  %i.ab = add i32 %i.y, 4
  store i32 %i.ab, ptr %i.g, align 8, !tbaa !128
  %i.ac = add nsw i32 %..i18, %5
  tail call fastcc void @emit_claim_size(ptr noundef nonnull %0, i32 noundef 4) #28
  %i.ad = load i64, ptr %i.b, align 8, !tbaa !121
  %i.ae = add i64 %i.ad, -1
  %i.af = inttoptr i64 %i.ae to ptr
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load i32, ptr %i.g, align 8, !tbaa !128 ; 2 uses
  %i.ai = zext i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ai
  store i32 %i.ac, ptr %i.aj, align 1, !tbaa !91
  %i.ak = add i32 %i.ah, 4
  store i32 %i.ak, ptr %i.g, align 8, !tbaa !128
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
end_hunk_1
