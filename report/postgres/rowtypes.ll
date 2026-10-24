Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/rowtypes?download=true
inline.NumInlined: 145
inline.NumDeleted: 26
begin_hunk_0_@record_out:bb.a
  store i8 34, ptr %i.ef, align 1
  %i.eg = load ptr, ptr %2, align 8
  %i.eh = load i32, ptr %i.bd, align 8
  %i.ei = add i32 %i.eh, 1                        ; 2 uses
  store i32 %i.ei, ptr %i.bd, align 8
  %i.ej = sext i32 %i.ei to i64
  %i.ek = getelementptr inbounds i8, ptr %i.eg, i64 %i.ej
  store i8 0, ptr %i.ek, align 1
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ae, %bb.ah, %bb.ag, %bb.l, %bb.i
  %.1125 = phi i1 [ true, %bb.l ], [ %.0124150, %bb.i ], [ true, %bb.ag ], [ true, %bb.ah ], [ true, %bb.ae ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.i, !llvm.loop !15

._crit_edge:                                      ; preds = %bb.ai, %bb.h
  call void @appendStringInfoChar(ptr noundef nonnull %2, i8 noundef signext 41) #9
  call void @pfree(ptr noundef %i.az) #9
  call void @pfree(ptr noundef %i.ba) #9
  %i.el = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %i.em = load i32, ptr %i.el, align 4
  %i.en = icmp sgt i32 %i.em, -1
  br i1 %i.en, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %._crit_edge
  call void @DecrTupleDescRefCount(ptr noundef nonnull %i.g) #9
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %._crit_edge
  %i.eo = load ptr, ptr %2, align 8
  %i.ep = ptrtoint ptr %i.eo to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #9
  ret i64 %i.ep
}

declare ptr @pg_detoast_datum(ptr noundef) local_unnamed_addr #2

declare void @heap_deform_tuple(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @getTypeOutputInfo(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @OutputFunctionCall(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i64 @record_recv(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.StringInfoData, align 8     ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr                 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load i64, ptr %i.d, align 8
  %i.f = trunc i64 %i.e to i32                    ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.h = load i64, ptr %i.g, align 8
  %i.i = trunc i64 %i.h to i32                    ; 4 uses
  tail call void @check_stack_depth() #9
  %i.j = icmp eq i32 %i.f, 2249
  %i.k = icmp slt i32 %i.i, 0
  %or.cond = select i1 %i.j, i1 %i.k, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #11 ; 0 uses
  %i.m = tail call i32 @errcode(i32 noundef 1088) #9 ; 0 uses
  %i.n = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str) #9 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 509, ptr noundef nonnull @__func__.record_recv) #9
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.o = tail call ptr @lookup_rowtype_tupdesc(i32 noundef %i.f, i32 noundef %i.i) #9 ; 8 uses
  %i.p = load i32, ptr %i.o, align 8              ; 9 uses
  %i.q = load ptr, ptr %0, align 8                ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8              ; 4 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.v = load i32, ptr %i.u, align 8
  %.not = icmp eq i32 %i.v, %i.p
  br i1 %.not, label %._crit_edge186, label %bb.e

._crit_edge186:                                   ; preds = %bb.d
  %.pre = load i32, ptr %i.s, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = sext i32 %i.p to i64
  %i.z = shl nsw i64 %i.y, 6
  %i.aa = or disjoint i64 %i.z, 16
  %i.ab = tail call ptr @MemoryContextAlloc(ptr noundef %i.x, i64 noundef %i.aa) #9
  %i.ac = load ptr, ptr %0, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  store ptr %i.ab, ptr %i.ad, align 8
  %i.ae = load ptr, ptr %0, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load ptr, ptr %i.af, align 8            ; 3 uses
  store i32 0, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  store i32 0, ptr %i.ah, align 4
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge186, %bb.e
  %i.ai = phi i32 [ 0, %bb.e ], [ %.pre, %._crit_edge186 ]
  %.0139 = phi ptr [ %i.ag, %bb.e ], [ %i.s, %._crit_edge186 ] ; 8 uses
  %.not147 = icmp eq i32 %i.ai, %i.f
  br i1 %.not147, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %.0139, i64 4
  %i.ak = load i32, ptr %i.aj, align 4
  %.not148 = icmp eq i32 %i.ak, %i.i
  br i1 %.not148, label %._crit_edge187, label %bb.h

._crit_edge187:                                   ; preds = %bb.g
  %.pre188 = sext i32 %i.p to i64
  br label %bb.j

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.al = sext i32 %i.p to i64                    ; 2 uses
  %i.am = shl nsw i64 %i.al, 6                    ; 2 uses
  %i.an = or disjoint i64 %i.am, 16               ; 2 uses
  %i.ao = ptrtoint ptr %.0139 to i64              ; 4 uses
  %i.ap = and i64 %i.ao, 7
  %i.aq = icmp eq i64 %i.ap, 0
  %i.ar = icmp ult i64 %i.an, 1025
  %or.cond153 = select i1 %i.aq, i1 %i.ar, i1 false
  br i1 %or.cond153, label %.lr.ph.preheader, label %bb.i

.lr.ph.preheader:                                 ; preds = %bb.h
  %i.as = add i64 %i.am, %i.ao
  %i.at = add i64 %i.as, 16
  %i.au = add i64 %i.ao, 8
  %umax = tail call i64 @llvm.umax.i64(i64 %i.at, i64 %i.au)
  %i.av = xor i64 %i.ao, -1
  %i.aw = add i64 %umax, %i.av
  %i.ax = and i64 %i.aw, -8
  %i.ay = add i64 %i.ax, 8
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %.0139, i8 0, i64 %i.ay, i1 false)
  br label %.loopexit

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.0139, i8 0, i64 %i.an, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.preheader, %bb.i
  store i32 %i.f, ptr %.0139, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %.0139, i64 4
  store i32 %i.i, ptr %i.az, align 4
  %i.ba = getelementptr inbounds nuw i8, ptr %.0139, i64 8
  store i32 %i.p, ptr %i.ba, align 8
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge187, %.loopexit
  %.pre-phi = phi i64 [ %.pre188, %._crit_edge187 ], [ %i.al, %.loopexit ] ; 2 uses
  %i.bb = tail call ptr @palloc_mul(i64 noundef 8, i64 noundef %.pre-phi) #9 ; 4 uses
  %i.bc = tail call ptr @palloc_mul(i64 noundef 1, i64 noundef %.pre-phi) #9 ; 4 uses
  %i.bd = tail call i32 @pq_getmsgint(ptr noundef %i.c, i32 noundef 4) #9 ; 3 uses
  %i.be = icmp sgt i32 %i.p, 0
  br i1 %i.be, label %.lr.ph167, label %._crit_edge.thread

.lr.ph167:                                        ; preds = %bb.j
  %i.bf = load i32, ptr %i.o, align 8
  %i.bg = sext i32 %i.bf to i64
  %i.bh = shl nsw i64 %i.bg, 3
  %i.bi = getelementptr i8, ptr %i.o, i64 %i.bh   ; 9 uses
  %wide.trip.count = zext nneg i32 %i.p to i64    ; 3 uses
  %min.iters.check = icmp ult i32 %i.p, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph167
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 9 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ct, %vector.body ]
  %vec.phi216 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.cu, %vector.body ]
  %i.bj = getelementptr [100 x i8], ptr %i.bi, i64 %index
  %i.bk = getelementptr [100 x i8], ptr %i.bi, i64 %index
  %i.bl = getelementptr [100 x i8], ptr %i.bi, i64 %index
  %i.bm = getelementptr [100 x i8], ptr %i.bi, i64 %index
  %i.bn = getelementptr [100 x i8], ptr %i.bi, i64 %index
  %i.bo = getelementptr [100 x i8], ptr %i.bi, i64 %index
  %i.bp = getelementptr [100 x i8], ptr %i.bi, i64 %index
  %i.bq = getelementptr [100 x i8], ptr %i.bi, i64 %index
  %i.br = getelementptr i8, ptr %i.bj, i64 123
  %i.bs = getelementptr i8, ptr %i.bk, i64 223
  %i.bt = getelementptr i8, ptr %i.bl, i64 323
  %i.bu = getelementptr i8, ptr %i.bm, i64 423
  %i.bv = getelementptr i8, ptr %i.bn, i64 523
  %i.bw = getelementptr i8, ptr %i.bo, i64 623
  %i.bx = getelementptr i8, ptr %i.bp, i64 723
  %i.by = getelementptr i8, ptr %i.bq, i64 823
  %i.bz = load i8, ptr %i.br, align 1, !range !5, !noundef !6
  %i.ca = load i8, ptr %i.bs, align 1, !range !5, !noundef !6
  %i.cb = load i8, ptr %i.bt, align 1, !range !5, !noundef !6
  %i.cc = load i8, ptr %i.bu, align 1, !range !5, !noundef !6
  %i.cd = insertelement <4 x i8> poison, i8 %i.bz, i64 0
  %i.ce = insertelement <4 x i8> %i.cd, i8 %i.ca, i64 1
  %i.cf = insertelement <4 x i8> %i.ce, i8 %i.cb, i64 2
  %i.cg = insertelement <4 x i8> %i.cf, i8 %i.cc, i64 3
  %i.ch = load i8, ptr %i.bv, align 1, !range !5, !noundef !6
  %i.ci = load i8, ptr %i.bw, align 1, !range !5, !noundef !6
  %i.cj = load i8, ptr %i.bx, align 1, !range !5, !noundef !6
  %i.ck = load i8, ptr %i.by, align 1, !range !5, !noundef !6
  %i.cl = insertelement <4 x i8> poison, i8 %i.ch, i64 0
  %i.cm = insertelement <4 x i8> %i.cl, i8 %i.ci, i64 1
  %i.cn = insertelement <4 x i8> %i.cm, i8 %i.cj, i64 2
  %i.co = insertelement <4 x i8> %i.cn, i8 %i.ck, i64 3
  %i.cp = xor <4 x i8> %i.cg, splat (i8 1)
  %i.cq = xor <4 x i8> %i.co, splat (i8 1)
  %i.cr = zext nneg <4 x i8> %i.cp to <4 x i32>
  %i.cs = zext nneg <4 x i8> %i.cq to <4 x i32>
  %i.ct = add <4 x i32> %vec.phi, %i.cr           ; 2 uses
  %i.cu = add <4 x i32> %vec.phi216, %i.cs        ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cv = icmp eq i64 %index.next, %n.vec
  br i1 %i.cv, label %middle.block, label %vector.body, !llvm.loop !16

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.cu, %i.ct
  %i.cw = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph167, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph167 ], [ %n.vec, %middle.block ]
  %.0137165.ph = phi i32 [ 0, %.lr.ph167 ], [ %i.cw, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.0137165 = phi i32 [ %spec.select, %scalar.ph ], [ %.0137165.ph, %scalar.ph.preheader ]
  %i.cx = getelementptr [100 x i8], ptr %i.bi, i64 %indvars.iv
  %i.cy = getelementptr i8, ptr %i.cx, i64 123
  %i.cz = load i8, ptr %i.cy, align 1, !range !5, !noundef !6
  %i.da = xor i8 %i.cz, 1
  %i.db = zext nneg i8 %i.da to i32
  %spec.select = add i32 %.0137165, %i.db         ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !17

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %spec.select.lcssa = phi i32 [ %i.cw, %middle.block ], [ %spec.select, %scalar.ph ] ; 2 uses
  %.not149 = icmp eq i32 %i.bd, %spec.select.lcssa
  br i1 %.not149, label %.lr.ph169, label %bb.k

._crit_edge.thread:                               ; preds = %bb.j
  %.not149196 = icmp eq i32 %i.bd, 0
  br i1 %.not149196, label %._crit_edge170, label %bb.k

.lr.ph169:                                        ; preds = %._crit_edge
  %i.dc = getelementptr inbounds nuw i8, ptr %.0139, i64 16
  %i.dd = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %wide.trip.count184 = zext nneg i32 %i.p to i64
  br label %bb.l

bb.k:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %.0137.lcssa197 = phi i32 [ 0, %._crit_edge.thread ], [ %spec.select.lcssa, %._crit_edge ]
  %i.di = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #11 ; 0 uses
  %i.dj = tail call i32 @errcode(i32 noundef 67141764) #9 ; 0 uses
  %i.dk = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.8, i32 noundef %i.bd, i32 noundef %.0137.lcssa197) #9 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 559, ptr noundef nonnull @__func__.record_recv) #9
  unreachable

bb.l:                                             ; preds = %.lr.ph169, %bb.y
  %indvars.iv181 = phi i64 [ 0, %.lr.ph169 ], [ %indvars.iv.next182, %bb.y ] ; 9 uses
  %i.dl = load i32, ptr %i.o, align 8
  %i.dm = sext i32 %i.dl to i64
  %i.dn = shl nsw i64 %i.dm, 3
  %i.do = getelementptr i8, ptr %i.o, i64 %i.dn
  %i.dp = getelementptr i8, ptr %i.do, i64 32
  %i.dq = getelementptr inbounds nuw [100 x i8], ptr %i.dp, i64 %indvars.iv181 ; 3 uses
  %i.dr = getelementptr inbounds nuw [64 x i8], ptr %i.dc, i64 %indvars.iv181 ; 7 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 68
  %i.dt = load i32, ptr %i.ds, align 4            ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #9
  %i.du = getelementptr inbounds nuw i8, ptr %i.dq, i64 91
  %i.dv = load i8, ptr %i.du, align 1, !range !5, !noundef !6
  %i.dw = trunc nuw i8 %i.dv to i1
  br i1 %i.dw, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv181
  store i64 0, ptr %i.dx, align 8
  %i.dy = getelementptr inbounds nuw i8, ptr %i.bc, i64 %indvars.iv181
  store i8 1, ptr %i.dy, align 1
  br label %bb.y

bb.n:                                             ; preds = %bb.l
  %i.dz = call i32 @pq_getmsgint(ptr noundef %i.c, i32 noundef 4) #9 ; 4 uses
  %i.ea = icmp ne i32 %i.dz, %i.dt
  %i.eb = icmp ult i32 %i.dz, 10000
  %or.cond7 = and i1 %i.ea, %i.eb
  %i.ec = icmp ult i32 %i.dt, 10000
  %or.cond9 = and i1 %i.ec, %or.cond7
  br i1 %or.cond9, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ed = trunc nuw nsw i64 %indvars.iv181 to i32
  %i.ee = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #11 ; 0 uses
  %i.ef = call i32 @errcode(i32 noundef 67141764) #9 ; 0 uses
  %i.eg = call ptr @format_type_extended(i32 noundef %i.dz, i32 noundef -1, i16 noundef zeroext 2) #9
  %i.eh = call ptr @format_type_extended(i32 noundef %i.dt, i32 noundef -1, i16 noundef zeroext 2) #9
  %i.ei = add nuw nsw i32 %i.ed, 1
  %i.ej = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.9, i32 noundef %i.dz, ptr noundef %i.eg, i32 noundef %i.dt, ptr noundef %i.eh, i32 noundef %i.ei) #9 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 606, ptr noundef nonnull @__func__.record_recv) #9
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.ek = call i32 @pq_getmsgint(ptr noundef %i.c, i32 noundef 4) #9 ; 6 uses
  %i.el = icmp slt i32 %i.ek, -1
  br i1 %i.el, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.em = load i32, ptr %i.dd, align 8
  %i.en = load i32, ptr %i.de, align 8            ; 3 uses
  %i.eo = sub i32 %i.em, %i.en
  %i.ep = icmp sgt i32 %i.ek, %i.eo
  br i1 %i.ep, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.eq = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #11 ; 0 uses
  %i.er = call i32 @errcode(i32 noundef 50462850) #9 ; 0 uses
  %i.es = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.10) #9 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 613, ptr noundef nonnull @__func__.record_recv) #9
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.et = icmp eq i32 %i.ek, -1
  br i1 %i.et, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.eu = load ptr, ptr %i.c, align 8
  %i.ev = sext i32 %i.en to i64
  %i.ew = getelementptr inbounds i8, ptr %i.eu, i64 %i.ev
  %i.ex = add i32 %i.en, %i.ek
  store i32 %i.ex, ptr %i.de, align 8
  store ptr %i.ew, ptr %1, align 8
  store i32 %i.ek, ptr %i.df, align 8
  store i32 0, ptr %i.dg, align 4
  store i32 0, ptr %i.dh, align 8
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t
  %.sink = phi i8 [ 0, %bb.t ], [ 1, %bb.s ]
  %.0 = phi ptr [ %1, %bb.t ], [ null, %bb.s ]    ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.bc, i64 %indvars.iv181
  store i8 %.sink, ptr %i.ey, align 1
  %i.ez = load i32, ptr %i.dr, align 8
  %.not150 = icmp eq i32 %i.ez, %i.dt
  br i1 %.not150, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fa = getelementptr inbounds nuw i8, ptr %i.dr, i64 4 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  call void @getTypeBinaryInputInfo(i32 noundef %i.dt, ptr noundef nonnull %i.fa, ptr noundef nonnull %i.fb) #9
  %i.fc = load i32, ptr %i.fa, align 4
  %i.fd = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  %i.fe = load ptr, ptr %0, align 8
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 32
  %i.fg = load ptr, ptr %i.ff, align 8
  call void @fmgr_info_cxt(i32 noundef %i.fc, ptr noundef nonnull %i.fd, ptr noundef %i.fg) #9
  store i32 %i.dt, ptr %i.dr, align 8
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.fh = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  %i.fi = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.fj = load i32, ptr %i.fi, align 8
  %i.fk = getelementptr inbounds nuw i8, ptr %i.dq, i64 76
  %i.fl = load i32, ptr %i.fk, align 4
  %i.fm = call i64 @ReceiveFunctionCall(ptr noundef nonnull %i.fh, ptr noundef %.0, i32 noundef %i.fj, i32 noundef %i.fl) #9
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv181
  store i64 %i.fm, ptr %i.fn, align 8
  %.not151 = icmp eq ptr %.0, null
  %i.fo = load i32, ptr %i.dh, align 8
  %.not152 = icmp eq i32 %i.fo, %i.ek
  %or.cond155 = select i1 %.not151, i1 true, i1 %.not152
  br i1 %or.cond155, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fp = trunc nuw nsw i64 %indvars.iv181 to i32
  %i.fq = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #11 ; 0 uses
  %i.fr = call i32 @errcode(i32 noundef 50462850) #9 ; 0 uses
  %i.fs = add nuw nsw i32 %i.fp, 1
  %i.ft = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.11, i32 noundef %i.fs) #9 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 661, ptr noundef nonnull @__func__.record_recv) #9
  unreachable

bb.y:                                             ; preds = %bb.w, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #9
  %indvars.iv.next182 = add nuw nsw i64 %indvars.iv181, 1 ; 2 uses
  %exitcond185.not = icmp eq i64 %indvars.iv.next182, %wide.trip.count184
  br i1 %exitcond185.not, label %._crit_edge170, label %bb.l, !llvm.loop !18

._crit_edge170:                                   ; preds = %bb.y, %._crit_edge.thread
  %i.fu = call ptr @heap_form_tuple(ptr noundef nonnull %i.o, ptr noundef %i.bb, ptr noundef %i.bc) #9 ; 4 uses
  %i.fv = load i32, ptr %i.fu, align 8
  %i.fw = zext i32 %i.fv to i64
  %i.fx = call ptr @palloc(i64 noundef %i.fw) #9  ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fu, i64 16
  %i.fz = load ptr, ptr %i.fy, align 8
  %i.ga = load i32, ptr %i.fu, align 8
  %i.gb = zext i32 %i.ga to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.fx, ptr align 4 %i.fz, i64 %i.gb, i1 false)
  call void @heap_freetuple(ptr noundef nonnull %i.fu) #9
  call void @pfree(ptr noundef %i.bb) #9
  call void @pfree(ptr noundef %i.bc) #9
  %i.gc = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  %i.gd = load i32, ptr %i.gc, align 4
  %i.ge = icmp sgt i32 %i.gd, -1
  br i1 %i.ge, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %._crit_edge170
  call void @DecrTupleDescRefCount(ptr noundef nonnull %i.o) #9
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %._crit_edge170
  %i.gf = call i64 @HeapTupleHeaderGetDatum(ptr noundef %i.fx) #9
  ret i64 %i.gf
}

; Function Attrs: cold
declare zeroext i1 @errstart_cold(i32 noundef, ptr noundef) local_unnamed_addr #5

declare void @errfinish(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @pq_getmsgint(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @format_type_extended(i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

declare void @getTypeBinaryInputInfo(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @ReceiveFunctionCall(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i64 @record_send(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.HeapTupleData, align 8      ; 9 uses
  %2 = alloca %struct.StringInfoData, align 8     ; 17 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = tail call ptr @pg_detoast_datum(ptr noundef %i.c) #9 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  tail call void @check_stack_depth() #9
  %i.e = getelementptr i8, ptr %i.d, i64 8
  %.val = load i32, ptr %i.e, align 4             ; 3 uses
  %i.f = getelementptr i8, ptr %i.d, i64 4
  %.val101 = load i32, ptr %i.f, align 4          ; 3 uses
  %i.g = tail call ptr @lookup_rowtype_tupdesc(i32 noundef %.val, i32 noundef %.val101) #9 ; 8 uses
  %i.h = load i32, ptr %i.g, align 8              ; 9 uses
  %.val104 = load i32, ptr %i.d, align 4
  %i.i = lshr i32 %.val104, 2
  store i32 %i.i, ptr %1, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i16 -1, ptr %i.j, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 6
  store i16 -1, ptr %i.k, align 2
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i16 0, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 0, ptr %i.m, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.d, ptr %i.n, align 8
  %i.o = load ptr, ptr %0, align 8                ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8              ; 4 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.t = load i32, ptr %i.s, align 8
  %.not = icmp eq i32 %i.t, %i.h
  br i1 %.not, label %._crit_edge119, label %bb.c

._crit_edge119:                                   ; preds = %bb.b
  %.pre = load i32, ptr %i.q, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = sext i32 %i.h to i64
  %i.x = shl nsw i64 %i.w, 6
  %i.y = or disjoint i64 %i.x, 16
  %i.z = tail call ptr @MemoryContextAlloc(ptr noundef %i.v, i64 noundef %i.y) #9
  %i.aa = load ptr, ptr %0, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  store ptr %i.z, ptr %i.ab, align 8
  %i.ac = load ptr, ptr %0, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8            ; 3 uses
  store i32 0, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  store i32 0, ptr %i.af, align 4
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge119, %bb.c
  %i.ag = phi i32 [ 0, %bb.c ], [ %.pre, %._crit_edge119 ]
  %.093 = phi ptr [ %i.ae, %bb.c ], [ %i.q, %._crit_edge119 ] ; 8 uses
  %.not98 = icmp eq i32 %i.ag, %.val
  br i1 %.not98, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ah = getelementptr inbounds nuw i8, ptr %.093, i64 4
  %i.ai = load i32, ptr %i.ah, align 4
  %.not99 = icmp eq i32 %i.ai, %.val101
  br i1 %.not99, label %._crit_edge120, label %bb.f

._crit_edge120:                                   ; preds = %bb.e
  %.pre121 = sext i32 %i.h to i64
  br label %bb.h

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.aj = sext i32 %i.h to i64                    ; 2 uses
  %i.ak = shl nsw i64 %i.aj, 6                    ; 2 uses
  %i.al = or disjoint i64 %i.ak, 16               ; 2 uses
  %i.am = ptrtoint ptr %.093 to i64               ; 4 uses
  %i.an = and i64 %i.am, 7
  %i.ao = icmp eq i64 %i.an, 0
  %i.ap = icmp ult i64 %i.al, 1025
  %or.cond = select i1 %i.ao, i1 %i.ap, i1 false
  br i1 %or.cond, label %.lr.ph.preheader, label %bb.g

.lr.ph.preheader:                                 ; preds = %bb.f
  %i.aq = add i64 %i.ak, %i.am
  %i.ar = add i64 %i.aq, 16
  %i.as = add i64 %i.am, 8
  %umax = tail call i64 @llvm.umax.i64(i64 %i.ar, i64 %i.as)
  %i.at = xor i64 %i.am, -1
  %i.au = add i64 %umax, %i.at
  %i.av = and i64 %i.au, -8
  %i.aw = add i64 %i.av, 8
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %.093, i8 0, i64 %i.aw, i1 false)
  br label %.loopexit

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.093, i8 0, i64 %i.al, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.preheader, %bb.g
  store i32 %.val, ptr %.093, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %.093, i64 4
  store i32 %.val101, ptr %i.ax, align 4
  %i.ay = getelementptr inbounds nuw i8, ptr %.093, i64 8
  store i32 %i.h, ptr %i.ay, align 8
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge120, %.loopexit
  %.pre-phi = phi i64 [ %.pre121, %._crit_edge120 ], [ %i.aj, %.loopexit ] ; 2 uses
  %i.az = tail call ptr @palloc_mul(i64 noundef 8, i64 noundef %.pre-phi) #9 ; 3 uses
  %i.ba = tail call ptr @palloc_mul(i64 noundef 1, i64 noundef %.pre-phi) #9 ; 3 uses
  call void @heap_deform_tuple(ptr noundef nonnull %1, ptr noundef nonnull %i.g, ptr noundef %i.az, ptr noundef %i.ba) #9
  call void @pq_begintypsend(ptr noundef nonnull %2) #9
  %i.bb = icmp sgt i32 %i.h, 0
  br i1 %i.bb, label %.lr.ph108, label %._crit_edge112.critedge

.lr.ph108:                                        ; preds = %bb.h
  %i.bc = load i32, ptr %i.g, align 8
  %i.bd = sext i32 %i.bc to i64
  %i.be = shl nsw i64 %i.bd, 3
  %i.bf = getelementptr i8, ptr %i.g, i64 %i.be   ; 9 uses
  %wide.trip.count = zext nneg i32 %i.h to i64    ; 3 uses
  %min.iters.check = icmp ult i32 %i.h, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph108
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 9 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.cq, %vector.body ]
  %vec.phi124 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.cr, %vector.body ]
  %i.bg = getelementptr [100 x i8], ptr %i.bf, i64 %index
  %i.bh = getelementptr [100 x i8], ptr %i.bf, i64 %index
  %i.bi = getelementptr [100 x i8], ptr %i.bf, i64 %index
  %i.bj = getelementptr [100 x i8], ptr %i.bf, i64 %index
  %i.bk = getelementptr [100 x i8], ptr %i.bf, i64 %index
  %i.bl = getelementptr [100 x i8], ptr %i.bf, i64 %index
  %i.bm = getelementptr [100 x i8], ptr %i.bf, i64 %index
  %i.bn = getelementptr [100 x i8], ptr %i.bf, i64 %index
  %i.bo = getelementptr i8, ptr %i.bg, i64 123
  %i.bp = getelementptr i8, ptr %i.bh, i64 223
  %i.bq = getelementptr i8, ptr %i.bi, i64 323
  %i.br = getelementptr i8, ptr %i.bj, i64 423
  %i.bs = getelementptr i8, ptr %i.bk, i64 523
  %i.bt = getelementptr i8, ptr %i.bl, i64 623
  %i.bu = getelementptr i8, ptr %i.bm, i64 723
  %i.bv = getelementptr i8, ptr %i.bn, i64 823
  %i.bw = load i8, ptr %i.bo, align 1, !range !5, !noundef !6
  %i.bx = load i8, ptr %i.bp, align 1, !range !5, !noundef !6
  %i.by = load i8, ptr %i.bq, align 1, !range !5, !noundef !6
  %i.bz = load i8, ptr %i.br, align 1, !range !5, !noundef !6
  %i.ca = insertelement <4 x i8> poison, i8 %i.bw, i64 0
  %i.cb = insertelement <4 x i8> %i.ca, i8 %i.bx, i64 1
  %i.cc = insertelement <4 x i8> %i.cb, i8 %i.by, i64 2
  %i.cd = insertelement <4 x i8> %i.cc, i8 %i.bz, i64 3
  %i.ce = load i8, ptr %i.bs, align 1, !range !5, !noundef !6
  %i.cf = load i8, ptr %i.bt, align 1, !range !5, !noundef !6
  %i.cg = load i8, ptr %i.bu, align 1, !range !5, !noundef !6
  %i.ch = load i8, ptr %i.bv, align 1, !range !5, !noundef !6
  %i.ci = insertelement <4 x i8> poison, i8 %i.ce, i64 0
  %i.cj = insertelement <4 x i8> %i.ci, i8 %i.cf, i64 1
  %i.ck = insertelement <4 x i8> %i.cj, i8 %i.cg, i64 2
  %i.cl = insertelement <4 x i8> %i.ck, i8 %i.ch, i64 3
  %i.cm = xor <4 x i8> %i.cd, splat (i8 1)
  %i.cn = xor <4 x i8> %i.cl, splat (i8 1)
  %i.co = zext nneg <4 x i8> %i.cm to <4 x i32>
  %i.cp = zext nneg <4 x i8> %i.cn to <4 x i32>
  %i.cq = add <4 x i32> %vec.phi, %i.co           ; 2 uses
  %i.cr = add <4 x i32> %vec.phi124, %i.cp        ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cs = icmp eq i64 %index.next, %n.vec
  br i1 %i.cs, label %middle.block, label %vector.body, !llvm.loop !19

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.cr, %i.cq
  %i.ct = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph108, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph108 ], [ %n.vec, %middle.block ]
  %.091106.ph = phi i32 [ 0, %.lr.ph108 ], [ %i.ct, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.091106 = phi i32 [ %spec.select, %scalar.ph ], [ %.091106.ph, %scalar.ph.preheader ]
  %i.cu = getelementptr [100 x i8], ptr %i.bf, i64 %indvars.iv
  %i.cv = getelementptr i8, ptr %i.cu, i64 123
  %i.cw = load i8, ptr %i.cv, align 1, !range !5, !noundef !6
  %i.cx = xor i8 %i.cw, 1
  %i.cy = zext nneg i8 %i.cx to i32
  %spec.select = add i32 %.091106, %i.cy          ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %scalar.ph, !llvm.loop !20

._crit_edge.loopexit:                             ; preds = %scalar.ph, %middle.block
  %spec.select.lcssa = phi i32 [ %i.ct, %middle.block ], [ %spec.select, %scalar.ph ]
  %i.cz = call i32 @llvm.bswap.i32(i32 %spec.select.lcssa)
  call void @enlargeStringInfo(ptr noundef nonnull %2, i32 noundef 4) #9
  call void @llvm.experimental.noalias.scope.decl(metadata !30)
  %i.da = load ptr, ptr %2, align 8, !alias.scope !30
  %i.db = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 8 uses
  %i.dc = load i32, ptr %i.db, align 8, !alias.scope !30 ; 2 uses
  %i.dd = sext i32 %i.dc to i64
  %i.de = getelementptr inbounds i8, ptr %i.da, i64 %i.dd
  store i32 %i.cz, ptr %i.de, align 1, !noalias !30
  %i.df = add i32 %i.dc, 4
  store i32 %i.df, ptr %i.db, align 8, !alias.scope !30
  %i.dg = getelementptr inbounds nuw i8, ptr %.093, i64 16
  %wide.trip.count117 = zext nneg i32 %i.h to i64
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge.loopexit, %bb.o
  %indvars.iv114 = phi i64 [ 0, %._crit_edge.loopexit ], [ %indvars.iv.next115, %bb.o ] ; 5 uses
  %i.dh = load i32, ptr %i.g, align 8
  %i.di = sext i32 %i.dh to i64
  %i.dj = shl nsw i64 %i.di, 3
  %i.dk = getelementptr i8, ptr %i.g, i64 %i.dj
  %i.dl = getelementptr i8, ptr %i.dk, i64 32
  %i.dm = getelementptr inbounds nuw [100 x i8], ptr %i.dl, i64 %indvars.iv114 ; 2 uses
  %i.dn = getelementptr inbounds nuw [64 x i8], ptr %i.dg, i64 %indvars.iv114 ; 6 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 68
  %i.dp = load i32, ptr %i.do, align 4            ; 4 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dm, i64 91
  %i.dr = load i8, ptr %i.dq, align 1, !range !5, !noundef !6
  %i.ds = trunc nuw i8 %i.dr to i1
  br i1 %i.ds, label %bb.o, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @enlargeStringInfo(ptr noundef nonnull %2, i32 noundef 4) #9
  call void @llvm.experimental.noalias.scope.decl(metadata !31)
  %i.dt = call i32 @llvm.bswap.i32(i32 %i.dp)
  %i.du = load ptr, ptr %2, align 8, !alias.scope !31
  %i.dv = load i32, ptr %i.db, align 8, !alias.scope !31 ; 2 uses
  %i.dw = sext i32 %i.dv to i64
  %i.dx = getelementptr inbounds i8, ptr %i.du, i64 %i.dw
  store i32 %i.dt, ptr %i.dx, align 1, !noalias !31
  %i.dy = add i32 %i.dv, 4
  store i32 %i.dy, ptr %i.db, align 8, !alias.scope !31
  %i.dz = getelementptr inbounds nuw i8, ptr %i.ba, i64 %indvars.iv114
  %i.ea = load i8, ptr %i.dz, align 1, !range !5, !noundef !6
  %i.eb = trunc nuw i8 %i.ea to i1
  br i1 %i.eb, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @enlargeStringInfo(ptr noundef nonnull %2, i32 noundef 4) #9
  call void @llvm.experimental.noalias.scope.decl(metadata !32)
  %i.ec = load ptr, ptr %2, align 8, !alias.scope !32
  %i.ed = load i32, ptr %i.db, align 8, !alias.scope !32 ; 2 uses
  %i.ee = sext i32 %i.ed to i64
  %i.ef = getelementptr inbounds i8, ptr %i.ec, i64 %i.ee
  store i32 -1, ptr %i.ef, align 1, !noalias !32
  %i.eg = add i32 %i.ed, 4
  store i32 %i.eg, ptr %i.db, align 8, !alias.scope !32
  br label %bb.o

bb.l:                                             ; preds = %bb.j
  %i.eh = load i32, ptr %i.dn, align 8
  %.not100 = icmp eq i32 %i.eh, %i.dp
  br i1 %.not100, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dn, i64 4 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dn, i64 12
  call void @getTypeBinaryOutputInfo(i32 noundef %i.dp, ptr noundef nonnull %i.ei, ptr noundef nonnull %i.ej) #9
  %i.ek = load i32, ptr %i.ei, align 4
  %i.el = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %i.em = load ptr, ptr %0, align 8
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 32
  %i.eo = load ptr, ptr %i.en, align 8
  call void @fmgr_info_cxt(i32 noundef %i.ek, ptr noundef nonnull %i.el, ptr noundef %i.eo) #9
  store i32 %i.dp, ptr %i.dn, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %indvars.iv114
  %i.eq = load i64, ptr %i.ep, align 8
  %i.er = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %i.es = call ptr @SendFunctionCall(ptr noundef nonnull %i.er, i64 noundef %i.eq) #9 ; 3 uses
  %.val103 = load i32, ptr %i.es, align 4
  %i.et = lshr i32 %.val103, 2
  %i.eu = add nsw i32 %i.et, -4
  call void @enlargeStringInfo(ptr noundef nonnull %2, i32 noundef 4) #9
  call void @llvm.experimental.noalias.scope.decl(metadata !33)
  %i.ev = call i32 @llvm.bswap.i32(i32 %i.eu)
  %i.ew = load ptr, ptr %2, align 8, !alias.scope !33
  %i.ex = load i32, ptr %i.db, align 8, !alias.scope !33 ; 2 uses
  %i.ey = sext i32 %i.ex to i64
  %i.ez = getelementptr inbounds i8, ptr %i.ew, i64 %i.ey
  store i32 %i.ev, ptr %i.ez, align 1, !noalias !33
  %i.fa = add i32 %i.ex, 4
  store i32 %i.fa, ptr %i.db, align 8, !alias.scope !33
  %i.fb = getelementptr inbounds nuw i8, ptr %i.es, i64 4
  %.val102 = load i32, ptr %i.es, align 4
  %i.fc = lshr i32 %.val102, 2
  %i.fd = add nsw i32 %i.fc, -4
  call void @pq_sendbytes(ptr noundef nonnull %2, ptr noundef nonnull %i.fb, i32 noundef %i.fd) #9
  br label %bb.o

bb.o:                                             ; preds = %bb.i, %bb.n, %bb.k
  %indvars.iv.next115 = add nuw nsw i64 %indvars.iv114, 1 ; 2 uses
  %exitcond118.not = icmp eq i64 %indvars.iv.next115, %wide.trip.count117
  br i1 %exitcond118.not, label %._crit_edge112, label %bb.i, !llvm.loop !29

._crit_edge112.critedge:                          ; preds = %bb.h
  call void @enlargeStringInfo(ptr noundef nonnull %2, i32 noundef 4) #9
  call void @llvm.experimental.noalias.scope.decl(metadata !30)
  %i.fe = load ptr, ptr %2, align 8, !alias.scope !30
  %i.ff = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.fg = load i32, ptr %i.ff, align 8, !alias.scope !30 ; 2 uses
  %i.fh = sext i32 %i.fg to i64
  %i.fi = getelementptr inbounds i8, ptr %i.fe, i64 %i.fh
  store i32 0, ptr %i.fi, align 1, !noalias !30
  %i.fj = add i32 %i.fg, 4
  store i32 %i.fj, ptr %i.ff, align 8, !alias.scope !30
  br label %._crit_edge112

._crit_edge112:                                   ; preds = %bb.o, %._crit_edge112.critedge
  call void @pfree(ptr noundef %i.az) #9
  call void @pfree(ptr noundef %i.ba) #9
  %i.fk = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %i.fl = load i32, ptr %i.fk, align 4
  %i.fm = icmp sgt i32 %i.fl, -1
  br i1 %i.fm, label %bb.p, label %bb.q

bb.p:                                             ; preds = %._crit_edge112
  call void @DecrTupleDescRefCount(ptr noundef nonnull %i.g) #9
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %._crit_edge112
  %i.fn = call ptr @pq_endtypsend(ptr noundef nonnull %2) #9
  %i.fo = ptrtoint ptr %i.fn to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #9
  ret i64 %i.fo
}

declare void @pq_begintypsend(ptr noundef) local_unnamed_addr #2

declare void @getTypeBinaryOutputInfo(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @SendFunctionCall(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @pq_sendbytes(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @pq_endtypsend(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local range(i64 0, 2) i64 @record_eq(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.HeapTupleData, align 8      ; 9 uses
  %2 = alloca %struct.HeapTupleData, align 8      ; 9 uses
  %3 = alloca %union.anon.1, align 8              ; 14 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = tail call ptr @pg_detoast_datum(ptr noundef %i.c) #9 ; 6 uses
end_hunk_0
