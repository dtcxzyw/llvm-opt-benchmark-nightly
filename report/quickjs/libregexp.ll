Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quickjs/original/libregexp?download=true
inline.NumInlined: 313
inline.NumDeleted: 50
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 11
begin_hunk_0_@get_class_atom:bb.a
  br label %bb.al

.thread:                                          ; preds = %bb.ae, %bb.ab, %bb.ac, %bb.z, %bb.ag
  %i.bn = phi ptr [ %.pre86, %bb.ag ], [ %i.b, %bb.ae ], [ %i.b, %bb.ab ], [ %i.b, %bb.ac ], [ %i.b, %bb.z ]
  %.285 = phi i32 [ %.2, %bb.ag ], [ %i.d, %bb.ae ], [ %i.d, %bb.ab ], [ %i.d, %bb.ac ], [ 0, %bb.z ]
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 1
  store ptr %i.bo, ptr %i.a, align 8, !tbaa !20
  br label %bb.ak

bb.ak:                                            ; preds = %bb.x, %bb.w, %bb.u, %.thread, %bb.ai, %bb.ah, %bb.k, %bb.q, %bb.o, %bb.s, %bb.r, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c
  %.3 = phi i32 [ %i.bi, %bb.ai ], [ %i.bi, %bb.ah ], [ %.285, %.thread ], [ 1073741824, %bb.w ], [ %i.m, %bb.k ], [ %i.w, %bb.o ], [ 92, %bb.q ], [ 45, %bb.r ], [ 45, %bb.s ], [ %i.j, %bb.c ], [ %i.j, %bb.c ], [ %i.j, %bb.c ], [ %i.j, %bb.c ], [ %i.j, %bb.c ], [ %i.j, %bb.c ], [ %i.j, %bb.c ], [ %i.j, %bb.c ], [ %i.j, %bb.c ], [ %i.j, %bb.c ], [ %i.j, %bb.c ], [ %i.j, %bb.c ], [ %i.j, %bb.c ], [ %i.j, %bb.c ], [ %i.j, %bb.c ], [ 1073741824, %bb.u ], [ %i.at, %bb.x ]
  %i.bp = load ptr, ptr %i.a, align 8, !tbaa !20
  store ptr %i.bp, ptr %2, align 8, !tbaa !20
  br label %bb.al

bb.al:                                            ; preds = %bb.w, %bb.u, %bb.j, %bb.ak, %bb.aj, %bb.af, %bb.ad, %bb.aa, %.thread97
  %.066 = phi i32 [ %.3, %bb.ak ], [ -1, %bb.aj ], [ -1, %bb.aa ], [ -1, %.thread97 ], [ -1, %bb.af ], [ -1, %bb.j ], [ -1, %bb.u ], [ -1, %bb.ad ], [ -1, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret i32 %.066
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @re_emit_string_list(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #2 {
bb.a:
  %2 = alloca [50 x %struct.anon.0], align 16     ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !73   ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call fastcc i32 @re_emit_range(ptr noundef %0, ptr noundef %1)
  %.not90 = icmp eq i32 %i.d, 0
  br i1 %.not90, label %bb.by, label %bb.ca

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !26
  %i.g = zext i32 %i.b to i64
  %i.h = shl nuw nsw i64 %i.g, 3
  %i.i = tail call ptr @lre_realloc(ptr noundef %i.f, ptr noundef null, i64 noundef %i.h) #20 ; 7 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.d, label %.preheader125

.preheader125:                                    ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.k = load i32, ptr %i.j, align 4, !tbaa !68   ; 2 uses
  %.not169 = icmp eq i32 %i.k, 0
  br i1 %.not169, label %._crit_edge153, label %.lr.ph152

.lr.ph152:                                        ; preds = %.preheader125
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !69
  %wide.trip.count = zext i32 %i.k to i64
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ptr, ...) @re_parse_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.40)
  br label %bb.ca

bb.e:                                             ; preds = %.lr.ph152, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph152 ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %.071151 = phi i8 [ 0, %.lr.ph152 ], [ %.1.lcssa, %._crit_edge ] ; 2 uses
  %.072150 = phi i32 [ 0, %.lr.ph152 ], [ %.173.lcssa, %._crit_edge ] ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv
  %.083143 = load ptr, ptr %i.n, align 8, !tbaa !71 ; 2 uses
  %.not89144 = icmp eq ptr %.083143, null
  br i1 %.not89144, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %bb.g
  %.083147 = phi ptr [ %.083, %bb.g ], [ %.083143, %bb.e ] ; 3 uses
  %.1146 = phi i8 [ %.2, %bb.g ], [ %.071151, %bb.e ]
  %.173145 = phi i32 [ %.274, %bb.g ], [ %.072150, %bb.e ] ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.083147, i64 12
  %i.p = load i32, ptr %i.o, align 4, !tbaa !45
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.r = add nsw i32 %.173145, 1
  %i.s = sext i32 %.173145 to i64
  %i.t = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.s
  store ptr %.083147, ptr %i.t, align 8, !tbaa !71
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.f
  %.274 = phi i32 [ %i.r, %bb.f ], [ %.173145, %.lr.ph ] ; 2 uses
  %.2 = phi i8 [ %.1146, %bb.f ], [ 1, %.lr.ph ]  ; 2 uses
  %.083 = load ptr, ptr %.083147, align 8, !tbaa !71 ; 2 uses
  %.not89 = icmp eq ptr %.083, null
  br i1 %.not89, label %._crit_edge, label %.lr.ph, !llvm.loop !108

._crit_edge:                                      ; preds = %bb.g, %bb.e
  %.173.lcssa = phi i32 [ %.072150, %bb.e ], [ %.274, %bb.g ] ; 2 uses
  %.1.lcssa = phi i8 [ %.071151, %bb.e ], [ %.2, %bb.g ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge153.loopexit, label %bb.e, !llvm.loop !109

._crit_edge153.loopexit:                          ; preds = %._crit_edge
  %i.u = trunc nuw i8 %.1.lcssa to i1
  br label %._crit_edge153

._crit_edge153:                                   ; preds = %._crit_edge153.loopexit, %.preheader125
  %.072.lcssa = phi i32 [ 0, %.preheader125 ], [ %.173.lcssa, %._crit_edge153.loopexit ] ; 5 uses
  %.071.lcssa = phi i1 [ false, %.preheader125 ], [ %i.u, %._crit_edge153.loopexit ] ; 2 uses
  %i.v = sext i32 %.072.lcssa to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.w = ptrtoint ptr %i.i to i64
  %i.x = and i64 %i.w, 7
  %i.y = or disjoint i64 %i.x, 8                  ; 2 uses
  switch i64 %i.y, label %bb.h [
    i64 14, label %exchange_func.exit.i
    i64 8, label %exchange_func.exit.thread.i
    i64 10, label %exchange_func.exit.i
    i64 12, label %exchange_func.exit210.i
  ]

exchange_func.exit.thread.i:                      ; preds = %._crit_edge153
  br label %exchange_func.exit210.i

bb.h:                                             ; preds = %._crit_edge153
  br label %exchange_func.exit.i

exchange_func.exit.i:                             ; preds = %bb.h, %._crit_edge153, %._crit_edge153
  %.0.i.i = phi ptr [ @exchange_bytes, %bb.h ], [ @exchange_int16s, %._crit_edge153 ], [ @exchange_int16s, %._crit_edge153 ] ; 4 uses
  switch i64 %i.y, label %bb.k [
    i64 14, label %bb.j
    i64 8, label %bb.i
    i64 10, label %bb.j
    i64 12, label %exchange_func.exit210.i
  ]

bb.i:                                             ; preds = %exchange_func.exit.i
  br label %exchange_func.exit210.i

bb.j:                                             ; preds = %exchange_func.exit.i, %exchange_func.exit.i
  br label %exchange_func.exit210.i

bb.k:                                             ; preds = %exchange_func.exit.i
  br label %exchange_func.exit210.i

exchange_func.exit210.i:                          ; preds = %bb.k, %bb.j, %bb.i, %exchange_func.exit.i, %exchange_func.exit.thread.i, %._crit_edge153
  %.0.i104.i = phi ptr [ %.0.i.i, %bb.i ], [ %.0.i.i, %bb.k ], [ %.0.i.i, %exchange_func.exit.i ], [ %.0.i.i, %bb.j ], [ @exchange_one_int64, %exchange_func.exit.thread.i ], [ @exchange_int32s, %._crit_edge153 ] ; 5 uses
  %.0.i209.i = phi ptr [ @exchange_int64s, %bb.i ], [ @exchange_bytes, %bb.k ], [ @exchange_int32s, %exchange_func.exit.i ], [ @exchange_int16s, %bb.j ], [ @exchange_int64s, %exchange_func.exit.thread.i ], [ @exchange_int32s, %._crit_edge153 ] ; 2 uses
  %i.z = icmp ult i32 %.072.lcssa, 2
  br i1 %i.z, label %rqsort.exit, label %bb.l

bb.l:                                             ; preds = %exchange_func.exit210.i
  store ptr %i.i, ptr %2, align 16, !tbaa !126
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.v, ptr %i.aa, align 8, !tbaa !127
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 0, ptr %i.ab, align 16, !tbaa !128
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 24
  br label %bb.m

.loopexit.i:                                      ; preds = %.critedge5.i.loopexit, %._crit_edge11.i.i, %heapsortx.exit.i, %.preheader.i.i
  %.118910111.i = phi ptr [ %.118910.i, %heapsortx.exit.i ], [ %.118940.i.lcssa, %._crit_edge11.i.i ], [ %.118940.i.lcssa, %.preheader.i.i ], [ %.118910.i, %.critedge5.i.loopexit ] ; 2 uses
  %i.ad = icmp ugt ptr %.118910111.i, %2
  br i1 %i.ad, label %bb.m, label %rqsort.exit, !llvm.loop !110

bb.m:                                             ; preds = %.loopexit.i, %bb.l
  %.018852.i = phi ptr [ %i.ac, %bb.l ], [ %.118910111.i, %.loopexit.i ] ; 3 uses
  %i.ae = getelementptr inbounds i8, ptr %.018852.i, i64 -24 ; 4 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !126 ; 3 uses
  %i.ag = getelementptr inbounds i8, ptr %.018852.i, i64 -16
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !127 ; 4 uses
  %i.ai = icmp ugt i64 %i.ah, 6
  br i1 %i.ai, label %.lr.ph43.preheader.i, label %heapsortx.exit.i

.lr.ph43.preheader.i:                             ; preds = %bb.m
  %i.aj = getelementptr inbounds i8, ptr %.018852.i, i64 -8
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !128 ; 3 uses
  %smax.i = call i32 @llvm.smax.i32(i32 %i.ak, i32 50)
  %exitcond.i284 = icmp sgt i32 %i.ak, 49
  br i1 %exitcond.i284, label %.lr.ph43.i._crit_edge, label %.lr.ph288

.lr.ph43.i:                                       ; preds = %bb.ah
  %exitcond.i = icmp eq i32 %i.cs, %smax.i
  br i1 %exitcond.i, label %.lr.ph43.i._crit_edge, label %.lr.ph288, !llvm.loop !111

.lr.ph43.i._crit_edge:                            ; preds = %.lr.ph43.i, %.lr.ph43.preheader.i
  %.018641.i.lcssa = phi ptr [ %i.af, %.lr.ph43.preheader.i ], [ %.1187.i, %.lr.ph43.i ] ; 9 uses
  %.118940.i.lcssa = phi ptr [ %i.ae, %.lr.ph43.preheader.i ], [ %.2190.i, %.lr.ph43.i ] ; 2 uses
  %.019139.i.lcssa = phi i64 [ %i.ah, %.lr.ph43.preheader.i ], [ %.1192.i, %.lr.ph43.i ] ; 2 uses
  %i.al = ptrtoint ptr %.018641.i.lcssa to i64
  %i.am = and i64 %i.al, 7                        ; 2 uses
  %.not291 = icmp eq i64 %i.am, 7
  br i1 %.not291, label %exchange_func.exit.i.i, label %switch.lookup

switch.lookup:                                    ; preds = %.lr.ph43.i._crit_edge
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.re_emit_string_list, i64 %i.am
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %exchange_func.exit.i.i

exchange_func.exit.i.i:                           ; preds = %.lr.ph43.i._crit_edge, %switch.lookup
  %.0.i.i.i = phi ptr [ %switch.load, %switch.lookup ], [ @exchange_bytes, %.lr.ph43.i._crit_edge ] ; 3 uses
  %i.an = shl i64 %.019139.i.lcssa, 2
  %i.ao = and i64 %i.an, -8                       ; 2 uses
  %i.ap = shl i64 %.019139.i.lcssa, 3             ; 3 uses
  %.not5.i.i = icmp eq i64 %i.ao, 0
  %.pre.i.i = add i64 %i.ap, -8                   ; 3 uses
  br i1 %.not5.i.i, label %.preheader.i.i, label %.lr.ph7.i.i

.preheader.i.i:                                   ; preds = %._crit_edge.i.i, %exchange_func.exit.i.i
  %.not8514.i.i = icmp eq i64 %.pre.i.i, 0
  br i1 %.not8514.i.i, label %.loopexit.i, label %.lr.ph17.i.i

.lr.ph7.i.i:                                      ; preds = %exchange_func.exit.i.i, %._crit_edge.i.i
  %.0796.i.i = phi i64 [ %i.aq, %._crit_edge.i.i ], [ %i.ao, %exchange_func.exit.i.i ]
  %i.aq = add i64 %.0796.i.i, -8                  ; 4 uses
  %i.ar = shl i64 %i.aq, 1                        ; 2 uses
  %i.as = or disjoint i64 %i.ar, 8                ; 2 uses
  %i.at = icmp ult i64 %i.as, %i.ap
  br i1 %i.at, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph7.i.i, %bb.p
  %i.au = phi i64 [ %i.bq, %bb.p ], [ %i.as, %.lr.ph7.i.i ] ; 4 uses
  %i.av = phi i64 [ %i.bp, %bb.p ], [ %i.ar, %.lr.ph7.i.i ]
  %.03.i.i = phi i64 [ %.077.i.i, %bb.p ], [ %i.aq, %.lr.ph7.i.i ]
  %i.aw = icmp ult i64 %i.au, %.pre.i.i
  br i1 %i.aw, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %.018641.i.lcssa, i64 %i.au ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load ptr, ptr %i.ax, align 8, !tbaa !71
  %i.ba = load ptr, ptr %i.ay, align 8, !tbaa !71
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 12
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !45
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 12
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !45
  %.not1.i.i = icmp ugt i32 %i.be, %i.bc
  %i.bf = add i64 %i.av, 16
  %spec.select.i.i = select i1 %.not1.i.i, i64 %i.au, i64 %i.bf
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.lr.ph.i.i
  %.077.i.i = phi i64 [ %i.au, %.lr.ph.i.i ], [ %spec.select.i.i, %bb.n ] ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.018641.i.lcssa, i64 %.03.i.i ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.018641.i.lcssa, i64 %.077.i.i ; 2 uses
  %i.bi = load ptr, ptr %i.bg, align 8, !tbaa !71
  %i.bj = load ptr, ptr %i.bh, align 8, !tbaa !71
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 12
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !45
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 12
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !45
  %i.bo = icmp ugt i32 %i.bn, %i.bl
  br i1 %i.bo, label %._crit_edge.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void %.0.i.i.i(ptr noundef nonnull %i.bg, ptr noundef nonnull %i.bh, i64 noundef 8) #20, !inline_history !112
  %i.bp = shl i64 %.077.i.i, 1                    ; 2 uses
  %i.bq = add i64 %i.bp, 8                        ; 2 uses
  %i.br = icmp ult i64 %i.bq, %i.ap
  br i1 %i.br, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !113

._crit_edge.i.i:                                  ; preds = %bb.p, %bb.o, %.lr.ph7.i.i
  %.not.i.i = icmp eq i64 %i.aq, 0
  br i1 %.not.i.i, label %.preheader.i.i, label %.lr.ph7.i.i, !llvm.loop !114

.lr.ph17.i.i:                                     ; preds = %.preheader.i.i, %._crit_edge11.i.i
  %.180.in15.i.i = phi i64 [ %3, %._crit_edge11.i.i ], [ %.pre.i.i, %.preheader.i.i ] ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.018641.i.lcssa, i64 %.180.in15.i.i
  call void %.0.i.i.i(ptr noundef %.018641.i.lcssa, ptr noundef nonnull %i.bs, i64 noundef 8) #20, !inline_history !112
  %i.bt = icmp ugt i64 %.180.in15.i.i, 8
  %3 = add i64 %.180.in15.i.i, -8                 ; 3 uses
  br i1 %i.bt, label %bb.q, label %._crit_edge11.i.i

bb.q:                                             ; preds = %.lr.ph17.i.i, %bb.t
  %i.bu = phi i64 [ %i.cq, %bb.t ], [ 8, %.lr.ph17.i.i ] ; 4 uses
  %i.bv = phi i64 [ %i.cp, %bb.t ], [ 0, %.lr.ph17.i.i ]
  %.18.i.i = phi i64 [ %.178.i.i, %bb.t ], [ 0, %.lr.ph17.i.i ]
  %i.bw = icmp ult i64 %i.bu, %3
  br i1 %i.bw, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bx = getelementptr inbounds nuw i8, ptr %.018641.i.lcssa, i64 %i.bu ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = load ptr, ptr %i.bx, align 8, !tbaa !71
  %i.ca = load ptr, ptr %i.by, align 8, !tbaa !71
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 12
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !45
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 12
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !45
  %.not2.i.i = icmp ugt i32 %i.ce, %i.cc
  %i.cf = add i64 %i.bv, 16
  %spec.select86.i.i = select i1 %.not2.i.i, i64 %i.bu, i64 %i.cf
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.178.i.i = phi i64 [ %i.bu, %bb.q ], [ %spec.select86.i.i, %bb.r ] ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.018641.i.lcssa, i64 %.18.i.i ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.018641.i.lcssa, i64 %.178.i.i ; 2 uses
  %i.ci = load ptr, ptr %i.cg, align 8, !tbaa !71
  %i.cj = load ptr, ptr %i.ch, align 8, !tbaa !71
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 12
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !45
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 12
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !45
  %i.co = icmp ugt i32 %i.cn, %i.cl
  br i1 %i.co, label %._crit_edge11.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void %.0.i.i.i(ptr noundef nonnull %i.cg, ptr noundef nonnull %i.ch, i64 noundef 8) #20, !inline_history !112
  %i.cp = shl i64 %.178.i.i, 1                    ; 2 uses
  %i.cq = add i64 %i.cp, 8                        ; 2 uses
  %i.cr = icmp ult i64 %i.cq, %.180.in15.i.i
  br i1 %i.cr, label %bb.q, label %._crit_edge11.i.i, !llvm.loop !115

._crit_edge11.i.i:                                ; preds = %bb.t, %bb.s, %.lr.ph17.i.i
  %.not85.i.i = icmp eq i64 %3, 0
  br i1 %.not85.i.i, label %.loopexit.i, label %.lr.ph17.i.i, !llvm.loop !116

.lr.ph288:                                        ; preds = %.lr.ph43.preheader.i, %.lr.ph43.i
  %.in = phi i32 [ %i.cs, %.lr.ph43.i ], [ %i.ak, %.lr.ph43.preheader.i ]
  %.019139.i287 = phi i64 [ %.1192.i, %.lr.ph43.i ], [ %i.ah, %.lr.ph43.preheader.i ] ; 3 uses
  %.118940.i286 = phi ptr [ %.2190.i, %.lr.ph43.i ], [ %i.ae, %.lr.ph43.preheader.i ] ; 4 uses
  %.018641.i285 = phi ptr [ %.1187.i, %.lr.ph43.i ], [ %i.af, %.lr.ph43.preheader.i ] ; 12 uses
  %i.cs = add nsw i32 %.in, 1                     ; 3 uses
  %i.ct = shl i64 %.019139.i287, 1
  %i.cu = and i64 %i.ct, -8                       ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.018641.i285, i64 %i.cu ; 3 uses
  %i.cw = shl i64 %i.cu, 1
  %i.cx = getelementptr inbounds nuw i8, ptr %.018641.i285, i64 %i.cw ; 3 uses
  %i.cy = mul i64 %i.cu, 3
  %i.cz = getelementptr inbounds nuw i8, ptr %.018641.i285, i64 %i.cy ; 3 uses
  %i.da = load ptr, ptr %i.cv, align 8, !tbaa !71
  %i.db = load ptr, ptr %i.cx, align 8, !tbaa !71
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 12
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !45 ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 12
  %i.df = load i32, ptr %i.de, align 4, !tbaa !45 ; 3 uses
  %i.dg = icmp ult i32 %i.df, %i.dd
  %i.dh = load ptr, ptr %i.cz, align 8, !tbaa !71
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 12
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !45 ; 4 uses
  br i1 %i.dg, label %bb.u, label %bb.w

bb.u:                                             ; preds = %.lr.ph288
  %i.dk = icmp ult i32 %i.dj, %i.df
  br i1 %i.dk, label %med3.exit.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dl = icmp ult i32 %i.dj, %i.dd
  %i.dm = select i1 %i.dl, ptr %i.cz, ptr %i.cv
  br label %med3.exit.i

bb.w:                                             ; preds = %.lr.ph288
  %i.dn = icmp ugt i32 %i.dj, %i.df
  br i1 %i.dn, label %med3.exit.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.do = icmp ult i32 %i.dj, %i.dd
  %i.dp = select i1 %i.do, ptr %i.cv, ptr %i.cz
  br label %med3.exit.i

med3.exit.i:                                      ; preds = %bb.x, %bb.w, %bb.v, %bb.u
  %i.dq = phi ptr [ %i.dm, %bb.v ], [ %i.dp, %bb.x ], [ %i.cx, %bb.u ], [ %i.cx, %bb.w ]
  call void %.0.i104.i(ptr noundef nonnull %.018641.i285, ptr noundef nonnull %i.dq, i64 noundef 8) #20, !inline_history !117
  %i.dr = getelementptr inbounds nuw i8, ptr %.018641.i285, i64 8 ; 2 uses
  %i.ds = shl i64 %.019139.i287, 3
  %i.dt = getelementptr inbounds nuw i8, ptr %.018641.i285, i64 %i.ds ; 5 uses
  br label %bb.y

bb.y:                                             ; preds = %bb.af, %med3.exit.i
  %.0183.i = phi ptr [ %i.dr, %med3.exit.i ], [ %i.ew, %bb.af ] ; 3 uses
  %.0180.i = phi ptr [ %i.dt, %med3.exit.i ], [ %i.ej, %bb.af ] ; 3 uses
  %.0177.i = phi ptr [ %i.dr, %med3.exit.i ], [ %.1178.lcssa.i, %bb.af ] ; 2 uses
  %.0174.i = phi ptr [ %i.dt, %med3.exit.i ], [ %.117524.i, %bb.af ] ; 2 uses
  %.0172.i = phi i64 [ 1, %med3.exit.i ], [ %i.ev, %bb.af ] ; 2 uses
  %.0169.i = phi i64 [ 1, %med3.exit.i ], [ %.1170.lcssa.i, %bb.af ] ; 2 uses
  %.0167.i = phi i64 [ %.019139.i287, %med3.exit.i ], [ %.116825.i, %bb.af ] ; 2 uses
  %i.du = icmp ult ptr %.0183.i, %.0180.i
  br i1 %i.du, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %bb.y, %bb.ab
  %.117015.i = phi i64 [ %.2171.i, %bb.ab ], [ %.0169.i, %bb.y ] ; 3 uses
  %.117314.i = phi i64 [ %i.ee, %bb.ab ], [ %.0172.i, %bb.y ] ; 2 uses
  %.117813.i = phi ptr [ %.2179.i, %bb.ab ], [ %.0177.i, %bb.y ] ; 4 uses
  %.118412.i = phi ptr [ %i.ef, %bb.ab ], [ %.0183.i, %bb.y ] ; 4 uses
  %i.dv = load ptr, ptr %.018641.i285, align 8, !tbaa !71
  %i.dw = load ptr, ptr %.118412.i, align 8, !tbaa !71
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dv, i64 12
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !45 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dw, i64 12
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !45 ; 2 uses
  %.not.i = icmp ult i32 %i.ea, %i.dy
  br i1 %.not.i, label %.critedge.i, label %bb.z

bb.z:                                             ; preds = %.lr.ph.i
  %i.eb = icmp eq i32 %i.ea, %i.dy
  br i1 %i.eb, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  call void %.0.i104.i(ptr noundef %.117813.i, ptr noundef nonnull %.118412.i, i64 noundef 8) #20, !inline_history !117
  %i.ec = add i64 %.117015.i, 1
  %i.ed = getelementptr inbounds nuw i8, ptr %.117813.i, i64 8
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.2179.i = phi ptr [ %i.ed, %bb.aa ], [ %.117813.i, %bb.z ] ; 2 uses
  %.2171.i = phi i64 [ %i.ec, %bb.aa ], [ %.117015.i, %bb.z ] ; 2 uses
  %i.ee = add i64 %.117314.i, 1                   ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.118412.i, i64 8 ; 3 uses
  %i.eg = icmp ult ptr %i.ef, %.0180.i
  br i1 %i.eg, label %.lr.ph.i, label %.critedge.i, !llvm.loop !118

.critedge.i:                                      ; preds = %bb.ab, %.lr.ph.i, %bb.y
  %.1184.lcssa.i = phi ptr [ %.0183.i, %bb.y ], [ %.118412.i, %.lr.ph.i ], [ %i.ef, %bb.ab ] ; 7 uses
  %.1178.lcssa.i = phi ptr [ %.0177.i, %bb.y ], [ %.117813.i, %.lr.ph.i ], [ %.2179.i, %bb.ab ] ; 2 uses
  %.1173.lcssa.i = phi i64 [ %.0172.i, %bb.y ], [ %.117314.i, %.lr.ph.i ], [ %i.ee, %bb.ab ] ; 3 uses
  %.1170.lcssa.i = phi i64 [ %.0169.i, %bb.y ], [ %.117015.i, %.lr.ph.i ], [ %.2171.i, %bb.ab ] ; 2 uses
  %i.eh = getelementptr inbounds i8, ptr %.0180.i, i64 -8 ; 2 uses
  %i.ei = icmp ult ptr %.1184.lcssa.i, %i.eh
  br i1 %i.ei, label %.lr.ph26.i, label %.critedge3.i

.lr.ph26.i:                                       ; preds = %.critedge.i, %bb.ae
  %i.ej = phi ptr [ %i.et, %bb.ae ], [ %i.eh, %.critedge.i ] ; 5 uses
  %.116825.i = phi i64 [ %.2.i, %bb.ae ], [ %.0167.i, %.critedge.i ] ; 3 uses
  %.117524.i = phi ptr [ %.2176.i, %bb.ae ], [ %.0174.i, %.critedge.i ] ; 3 uses
  %i.ek = load ptr, ptr %.018641.i285, align 8, !tbaa !71
  %i.el = load ptr, ptr %i.ej, align 8, !tbaa !71
  %i.em = getelementptr inbounds nuw i8, ptr %i.ek, i64 12
  %i.en = load i32, ptr %i.em, align 4, !tbaa !45 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.el, i64 12
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !45 ; 2 uses
  %.not1.i = icmp ugt i32 %i.ep, %i.en
  br i1 %.not1.i, label %bb.af, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph26.i
  %i.eq = icmp eq i32 %i.ep, %i.en
  br i1 %i.eq, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.er = add i64 %.116825.i, -1
  %i.es = getelementptr inbounds i8, ptr %.117524.i, i64 -8 ; 2 uses
  call void %.0.i104.i(ptr noundef nonnull %i.es, ptr noundef nonnull %i.ej, i64 noundef 8) #20, !inline_history !117
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.2176.i = phi ptr [ %i.es, %bb.ad ], [ %.117524.i, %bb.ac ] ; 2 uses
  %.2.i = phi i64 [ %i.er, %bb.ad ], [ %.116825.i, %bb.ac ] ; 2 uses
  %i.et = getelementptr inbounds i8, ptr %i.ej, i64 -8 ; 2 uses
  %i.eu = icmp ult ptr %.1184.lcssa.i, %i.et
  br i1 %i.eu, label %.lr.ph26.i, label %.critedge3.i, !llvm.loop !119

bb.af:                                            ; preds = %.lr.ph26.i
  call void %.0.i104.i(ptr noundef %.1184.lcssa.i, ptr noundef nonnull %i.ej, i64 noundef 8) #20, !inline_history !117
  %i.ev = add i64 %.1173.lcssa.i, 1
  %i.ew = getelementptr inbounds nuw i8, ptr %.1184.lcssa.i, i64 8
  br label %bb.y

.critedge3.i:                                     ; preds = %.critedge.i, %bb.ae
  %.1175.lcssa.i = phi ptr [ %.2176.i, %bb.ae ], [ %.0174.i, %.critedge.i ]
  %.1168.lcssa.i = phi i64 [ %.2.i, %bb.ae ], [ %.0167.i, %.critedge.i ]
  %i.ex = ptrtoint ptr %.1178.lcssa.i to i64      ; 2 uses
  %i.ey = ptrtoint ptr %.018641.i285 to i64
  %i.ez = sub i64 %i.ex, %i.ey
  %i.fa = ptrtoint ptr %.1184.lcssa.i to i64      ; 2 uses
  %i.fb = sub i64 %i.fa, %i.ex
  %i.fc = sub i64 %.1173.lcssa.i, %.1170.lcssa.i  ; 3 uses
  %spec.select.i = call i64 @llvm.umin.i64(i64 %i.ez, i64 %i.fb) ; 2 uses
  %i.fd = sub i64 0, %spec.select.i
  %i.fe = getelementptr inbounds i8, ptr %.1184.lcssa.i, i64 %i.fd
  call void %.0.i209.i(ptr noundef nonnull %.018641.i285, ptr noundef %i.fe, i64 noundef %spec.select.i) #20, !inline_history !117
  %i.ff = ptrtoint ptr %i.dt to i64
  %i.fg = ptrtoint ptr %.1175.lcssa.i to i64      ; 2 uses
  %i.fh = sub i64 %i.ff, %i.fg
  %i.fi = sub i64 %i.fg, %i.fa                    ; 2 uses
  %i.fj = sub i64 0, %i.fi
  %i.fk = getelementptr inbounds i8, ptr %i.dt, i64 %i.fj ; 2 uses
  %i.fl = sub i64 %.1168.lcssa.i, %.1173.lcssa.i  ; 3 uses
  %.1.i = call i64 @llvm.umin.i64(i64 %i.fh, i64 %i.fi) ; 2 uses
  %i.fm = sub i64 0, %.1.i
  %i.fn = getelementptr inbounds i8, ptr %i.dt, i64 %i.fm
  call void %.0.i209.i(ptr noundef %.1184.lcssa.i, ptr noundef nonnull %i.fn, i64 noundef %.1.i) #20, !inline_history !117
  %i.fo = icmp ugt i64 %i.fc, %i.fl
  br i1 %i.fo, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %.critedge3.i
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %.critedge3.i
  %.sink71.i = phi ptr [ %i.fk, %bb.ag ], [ %.018641.i285, %.critedge3.i ]
  %.sink.i = phi i64 [ %i.fl, %bb.ag ], [ %i.fc, %.critedge3.i ]
  %.1192.i = phi i64 [ %i.fc, %bb.ag ], [ %i.fl, %.critedge3.i ] ; 4 uses
  %.1187.i = phi ptr [ %.018641.i285, %bb.ag ], [ %i.fk, %.critedge3.i ] ; 3 uses
  store ptr %.sink71.i, ptr %.118940.i286, align 8, !tbaa !126
  %i.fp = getelementptr inbounds nuw i8, ptr %.118940.i286, i64 8
  store i64 %.sink.i, ptr %i.fp, align 8, !tbaa !127
  %i.fq = getelementptr inbounds nuw i8, ptr %.118940.i286, i64 16
  store i32 %i.cs, ptr %i.fq, align 8, !tbaa !128
  %.2190.i = getelementptr inbounds nuw i8, ptr %.118940.i286, i64 24 ; 3 uses
  %i.fr = icmp ugt i64 %.1192.i, 6
  br i1 %i.fr, label %.lr.ph43.i, label %heapsortx.exit.i, !llvm.loop !111

heapsortx.exit.i:                                 ; preds = %bb.ah, %bb.m
  %.118910.i = phi ptr [ %i.ae, %bb.m ], [ %.2190.i, %bb.ah ] ; 2 uses
  %.01868.i = phi ptr [ %i.af, %bb.m ], [ %.1187.i, %bb.ah ] ; 3 uses
  %.2193.i = phi i64 [ %i.ah, %bb.m ], [ %.1192.i, %bb.ah ] ; 2 uses
  %i.fs = shl nuw nsw i64 %.2193.i, 3
  %i.ft = getelementptr inbounds nuw i8, ptr %.01868.i, i64 %i.fs
  %i.fu = icmp samesign ugt i64 %.2193.i, 1
  br i1 %i.fu, label %.preheader.preheader.i, label %.loopexit.i

.preheader.preheader.i:                           ; preds = %heapsortx.exit.i
  %.218550.i = getelementptr inbounds nuw i8, ptr %.01868.i, i64 8
  br label %.preheader.i

.preheader.i:                                     ; preds = %.critedge5.i.loopexit, %.preheader.preheader.i
  %.218551.i = phi ptr [ %.2185.i, %.critedge5.i.loopexit ], [ %.218550.i, %.preheader.preheader.i ] ; 2 uses
end_hunk_0
