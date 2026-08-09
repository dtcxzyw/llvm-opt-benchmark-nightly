inline.NumInlined: 96
inline.NumDeleted: 45
begin_hunk_0_@brinbuild:bb.a

_brin_end_parallel.exit:                          ; preds = %._crit_edge.i, %bb.aw
  %i.ok = phi ptr [ %.pre.i, %bb.aw ], [ %i.of, %._crit_edge.i ]
  call void @DestroyParallelContext(ptr noundef %i.ok) #9
  call void @ExitParallelMode() #9
  br label %brin_fill_empty_ranges.exit

bb.ax:                                            ; preds = %_brin_begin_parallel.exit
  %i.ol = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.om = load ptr, ptr %i.ol, align 8
  %i.on = getelementptr inbounds nuw i8, ptr %i.om, i64 280
  %i.oo = load ptr, ptr %i.on, align 8
  %i.op = call double %i.oo(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true, i32 noundef 0, i32 noundef -1, ptr noundef nonnull @brinbuildCallback, ptr noundef nonnull %i.bk, ptr noundef null) #9, !inline_history !13 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.oq = load ptr, ptr %i.bq, align 8
  %i.or = load i32, ptr %i.bn, align 8
  %i.os = load ptr, ptr %i.bs, align 8
  %i.ot = call ptr @brin_form_tuple(ptr noundef %i.oq, i32 noundef %i.or, ptr noundef %i.os, ptr noundef nonnull %i.a) #9 ; 2 uses
  %i.ou = load ptr, ptr %i.bk, align 8
  %i.ov = load i32, ptr %i.bm, align 4
  %i.ow = load ptr, ptr %i.bo, align 8
  %i.ox = getelementptr inbounds nuw i8, ptr %i.bk, i64 24 ; 2 uses
  %i.oy = load i32, ptr %i.bn, align 8
  %i.oz = load i64, ptr %i.a, align 8
  %i.pa = call zeroext i16 @brin_doinsert(ptr noundef %i.ou, i32 noundef %i.ov, ptr noundef %i.ow, ptr noundef nonnull %i.ox, i32 noundef %i.oy, ptr noundef %i.ot, i64 noundef %i.oz) #9 ; 0 uses
  %i.pb = load double, ptr %i.bl, align 8
  %i.pc = fadd double %i.pb, 1.000000e+00
  store double %i.pc, ptr %i.bl, align 8
  call void @pfree(ptr noundef %i.ot) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  %i.pd = load i32, ptr %i.bn, align 8            ; 2 uses
  %i.pe = load i32, ptr %i.ce, align 4            ; 2 uses
  %i.pf = icmp eq i32 %i.pd, -1
  br i1 %i.pf, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.pg = load i32, ptr %i.bm, align 4
  %i.ph = add i32 %i.pg, %i.pd
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %i.pi = phi i32 [ %i.ph, %bb.ay ], [ 0, %bb.ax ] ; 2 uses
  %i.pj = icmp ult i32 %i.pi, %i.pe
  br i1 %i.pj, label %.lr.ph.i68, label %brin_fill_empty_ranges.exit

.lr.ph.i68:                                       ; preds = %bb.az
  %i.pk = getelementptr inbounds nuw i8, ptr %i.bk, i64 72 ; 2 uses
  br label %bb.ba

bb.ba:                                            ; preds = %brin_build_empty_tuple.exit.i, %.lr.ph.i68
  %.016.i = phi i32 [ %i.pi, %.lr.ph.i68 ], [ %i.qa, %brin_build_empty_tuple.exit.i ] ; 4 uses
  %i.pl = load ptr, ptr %i.by, align 8            ; 2 uses
  %i.pm = icmp eq ptr %i.pl, null
  br i1 %i.pm, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.pn = load ptr, ptr %i.bq, align 8
  %i.po = call ptr @brin_new_memtuple(ptr noundef %i.pn) #9
  %i.pp = load ptr, ptr %i.bx, align 8
  %i.pq = load ptr, ptr @CurrentMemoryContext, align 8
  store ptr %i.pp, ptr @CurrentMemoryContext, align 8
  %i.pr = load ptr, ptr %i.bq, align 8
  %i.ps = call ptr @brin_form_tuple(ptr noundef %i.pr, i32 noundef %.016.i, ptr noundef %i.po, ptr noundef nonnull %i.pk) #9 ; 2 uses
  store ptr %i.ps, ptr %i.by, align 8
  store ptr %i.pq, ptr @CurrentMemoryContext, align 8
  br label %brin_build_empty_tuple.exit.i

bb.bc:                                            ; preds = %bb.ba
  store i32 %.016.i, ptr %i.pl, align 4
  %.pre.i69 = load ptr, ptr %i.by, align 8
  br label %brin_build_empty_tuple.exit.i

brin_build_empty_tuple.exit.i:                    ; preds = %bb.bc, %bb.bb
  %i.pt = phi ptr [ %i.ps, %bb.bb ], [ %.pre.i69, %bb.bc ]
  %i.pu = load ptr, ptr %i.bk, align 8
  %i.pv = load i32, ptr %i.bm, align 4
  %i.pw = load ptr, ptr %i.bo, align 8
  %i.px = load i64, ptr %i.pk, align 8
  %i.py = call zeroext i16 @brin_doinsert(ptr noundef %i.pu, i32 noundef %i.pv, ptr noundef %i.pw, ptr noundef nonnull %i.ox, i32 noundef %.016.i, ptr noundef %i.pt, i64 noundef %i.px) #9 ; 0 uses
  %i.pz = load i32, ptr %i.bm, align 4
  %i.qa = add i32 %i.pz, %.016.i                  ; 2 uses
  %i.qb = icmp ult i32 %i.qa, %i.pe
  br i1 %i.qb, label %bb.ba, label %brin_fill_empty_ranges.exit, !llvm.loop !11

brin_fill_empty_ranges.exit:                      ; preds = %brin_build_empty_tuple.exit.i, %bb.az, %_brin_end_parallel.exit
  %.0 = phi double [ %i.io, %_brin_end_parallel.exit ], [ %i.op, %bb.az ], [ %i.op, %brin_build_empty_tuple.exit.i ]
  %i.qc = load double, ptr %i.bl, align 8
  %i.qd = load ptr, ptr %i.bo, align 8
  call void @brinRevmapTerminate(ptr noundef %i.qd) #9
  call fastcc void @terminate_brin_buildstate(ptr noundef nonnull %i.bk)
  %i.qe = call ptr @palloc(i64 noundef 16) #9     ; 3 uses
  store double %.0, ptr %i.qe, align 8
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qe, i64 8
  store double %i.qc, ptr %i.qf, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #9
  ret ptr %i.qe
}

; Function Attrs: nounwind uwtable
define dso_local void @brinbuildempty(ptr noundef %0) #1 {
bb.a:
  %1 = alloca %struct.BufferManagerRelation, align 8 ; 3 uses
  store ptr %0, ptr %1, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.b = tail call i32 @ExtendBufferedRel(ptr noundef nonnull byval(%struct.BufferManagerRelation) align 8 %1, i32 noundef 3, ptr noundef null, i32 noundef 9) #9 ; 6 uses
  %i.c = load volatile i32, ptr @CritSectionCount, align 4
  %i.d = add i32 %i.c, 1
  store volatile i32 %i.d, ptr @CritSectionCount, align 4
  %i.e = icmp slt i32 %i.b, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr @LocalBufferBlockPointers, align 8
  %i.g = xor i32 %i.b, -1
  %i.h = zext nneg i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  %i.j = load ptr, ptr %i.i, align 8
  br label %BufferGetPage.exit

bb.c:                                             ; preds = %bb.a
  %i.k = load ptr, ptr @BufferBlocks, align 8
  %i.l = add nsw i32 %i.b, -1
  %i.m = sext i32 %i.l to i64
  %i.n = shl nsw i64 %i.m, 13
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.n
  br label %BufferGetPage.exit

BufferGetPage.exit:                               ; preds = %bb.b, %bb.c
  %.0.i.i = phi ptr [ %i.j, %bb.b ], [ %i.o, %bb.c ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %BufferGetPage.exit
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.s = load i32, ptr %i.r, align 4
  br label %bb.e

bb.e:                                             ; preds = %BufferGetPage.exit, %bb.d
  %i.t = phi i32 [ %i.s, %bb.d ], [ 128, %BufferGetPage.exit ]
  tail call void @brin_metapage_init(ptr noundef %.0.i.i, i32 noundef %i.t, i16 noundef zeroext 1) #9
  tail call void @MarkBufferDirty(i32 noundef %i.b) #9
  %i.u = tail call i64 @log_newpage_buffer(i32 noundef %i.b, i1 noundef zeroext true) #9 ; 0 uses
  %i.v = load volatile i32, ptr @CritSectionCount, align 4
  %i.w = add i32 %i.v, -1
  store volatile i32 %i.w, ptr @CritSectionCount, align 4
  tail call void @UnlockReleaseBuffer(i32 noundef %i.b) #9
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i1 @brininsert(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree readnone captures(none) %4, i32 %5, i1 zeroext %6, ptr nofree noundef captures(none) %7) #1 {
bb.a:
  %i.a = alloca i32, align 4                      ; 11 uses
  %i.b = alloca i16, align 2                      ; 7 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 184 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 0, ptr %i.a, align 4
  %i.f = load ptr, ptr @CurrentMemoryContext, align 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load i8, ptr %i.i, align 4, !range !4, !noundef !5
  %i.k = icmp ne i8 %i.j, 0
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.l = phi i1 [ %i.k, %bb.b ], [ false, %bb.a ]
  %.not69 = icmp eq ptr %i.e, null
  br i1 %.not69, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 192
  %i.n = load ptr, ptr %i.m, align 8
  store ptr %i.n, ptr @CurrentMemoryContext, align 8
  %i.o = tail call ptr @palloc0(i64 noundef 24) #9 ; 5 uses
  %i.p = tail call ptr @brin_build_desc(ptr noundef nonnull %0)
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.p, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.s = tail call ptr @brinRevmapInitialize(ptr noundef nonnull %0, ptr noundef nonnull %i.r) #9
  store ptr %i.s, ptr %i.o, align 8
  store ptr %i.o, ptr %i.d, align 8
  store ptr %i.f, ptr @CurrentMemoryContext, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi ptr [ %i.e, %bb.c ], [ %i.o, %bb.d ]  ; 3 uses
  %i.t = load ptr, ptr %.0, align 8               ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.v = load ptr, ptr %i.u, align 8              ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.0, i64 16
  %i.x = load i32, ptr %i.w, align 8              ; 3 uses
  %.val = load i16, ptr %3, align 2
  %i.y = getelementptr i8, ptr %3, i64 2
  %.val75 = load i16, ptr %i.y, align 2
  %i.z = zext i16 %.val to i32
  %i.aa = shl nuw i32 %i.z, 16
  %i.ab = zext i16 %.val75 to i32
  %i.ac = or disjoint i32 %i.aa, %i.ab
  %.fr = freeze i32 %i.ac                         ; 3 uses
  %i.ad = urem i32 %.fr, %i.x                     ; 2 uses
  %i.ae = sub nuw i32 %.fr, %i.ad                 ; 4 uses
  %8 = icmp uge i32 %.fr, %i.x
  %or.cond = and i1 %i.l, %8
  %9 = icmp eq i32 %i.ad, 0
  %or.cond74 = and i1 %9, %or.cond
  %i.af = getelementptr i8, ptr %3, i64 4
  %i.ag = add i32 %i.ae, -1                       ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aj = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.am = ptrtoint ptr %i.v to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.ai, %bb.e
  %.062 = phi ptr [ null, %bb.e ], [ %.1, %bb.ai ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  %i.an = load volatile i32, ptr @InterruptPending, align 4
  %.not70 = icmp eq i32 %i.an, 0
  br i1 %.not70, label %bb.h, label %bb.g, !prof !14

bb.g:                                             ; preds = %bb.f
  call void @ProcessInterrupts() #9
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  br i1 %or.cond74, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %.val76 = load i16, ptr %i.af, align 2
  %i.ao = icmp eq i16 %.val76, 1
  br i1 %i.ao, label %bb.j, label %bb.o

bb.j:                                             ; preds = %bb.i
  %i.ap = call ptr @brinGetTupleForHeapBlock(ptr noundef %i.t, i32 noundef %i.ag, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef null, i32 noundef 1) #9
  %.not71 = icmp eq ptr %i.ap, null
  br i1 %.not71, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.aq = load i32, ptr %i.ah, align 8
  %i.ar = call zeroext i1 @AutoVacuumRequestWork(i32 noundef 0, i32 noundef %i.aq, i32 noundef %i.ag) #9
  br i1 %i.ar, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.as = call zeroext i1 @errstart(i32 noundef 15, ptr noundef null) #9
  br i1 %i.as, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.at = call i32 @errcode(i32 noundef 261) #9   ; 0 uses
  %i.au = load ptr, ptr %i.ai, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  %i.aw = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str, ptr noundef nonnull %i.av, i32 noundef %i.ag) #9 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 421, ptr noundef nonnull @__func__.brininsert) #9
  br label %bb.o

bb.n:                                             ; preds = %bb.j
  %i.ax = load i32, ptr %i.a, align 4
  call void @UnlockBuffer(i32 noundef %i.ax) #9
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.l, %bb.m, %bb.k, %bb.i, %bb.h
  %i.ay = call ptr @brinGetTupleForHeapBlock(ptr noundef %i.t, i32 noundef %i.ae, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef null, i32 noundef 1) #9 ; 3 uses
  %.not72 = icmp eq ptr %i.ay, null
  br i1 %.not72, label %.loopexit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.az = icmp eq ptr %.062, null
  br i1 %i.az, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ba = load ptr, ptr @CurrentMemoryContext, align 8
  %i.bb = call ptr @AllocSetContextCreateInternal(ptr noundef %i.ba, ptr noundef nonnull @.str.2, i64 noundef 0, i64 noundef 8192, i64 noundef 8388608) #9 ; 2 uses
  store ptr %i.bb, ptr @CurrentMemoryContext, align 8
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.1 = phi ptr [ %i.bb, %bb.q ], [ %.062, %bb.p ] ; 4 uses
  %i.bc = call ptr @brin_deform_tuple(ptr noundef %i.v, ptr noundef nonnull %i.ay, ptr noundef null) #9 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 1 ; 3 uses
  %i.be = load i8, ptr %i.bd, align 1, !range !4, !noundef !5 ; 2 uses
  %i.bf = load ptr, ptr %i.aj, align 8
  %i.bg = load i32, ptr %i.bf, align 8
  %i.bh = icmp sgt i32 %i.bg, 0
  br i1 %i.bh, label %.lr.ph.i, label %add_values_to_range.exit

.lr.ph.i:                                         ; preds = %bb.r
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bc, i64 40
  br label %bb.s

bb.s:                                             ; preds = %bb.ad, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.ad ] ; 8 uses
  %.03334.i = phi i8 [ %i.be, %.lr.ph.i ], [ %.2.i, %bb.ad ] ; 2 uses
  %i.bj = getelementptr inbounds nuw [40 x i8], ptr %i.bi, i64 %indvars.iv.i ; 6 uses
  %i.bk = load i8, ptr %i.bd, align 1, !range !4, !noundef !5
  %i.bl = trunc nuw i8 %i.bk to i1
  br i1 %i.bl, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 2
  %i.bn = load i8, ptr %i.bm, align 2, !range !4, !noundef !5
  %i.bo = trunc nuw i8 %i.bn to i1
  br i1 %i.bo, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bj, i64 3
  %i.bq = load i8, ptr %i.bp, align 1, !range !4, !noundef !5
  %i.br = trunc nuw i8 %i.bq to i1
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s
  %i.bs = phi i1 [ false, %bb.s ], [ true, %bb.t ], [ %i.br, %bb.u ]
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv.i
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 2
  %i.bw = load i8, ptr %i.bv, align 2, !range !4, !noundef !5
  %i.bx = trunc nuw i8 %i.bw to i1
  br i1 %i.bx, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.i
  %i.bz = load i8, ptr %i.by, align 1, !range !4, !noundef !5
  %i.ca = trunc nuw i8 %i.bz to i1
  br i1 %i.ca, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bj, i64 2 ; 2 uses
  %i.cc = load i8, ptr %i.cb, align 2, !range !4, !noundef !5
  %i.cd = trunc nuw i8 %i.cc to i1
  br i1 %i.cd, label %bb.ad, label %bb.y

bb.y:                                             ; preds = %bb.x
  store i8 1, ptr %i.cb, align 2
  br label %bb.ad

bb.z:                                             ; preds = %bb.w, %bb.v
  %i.ce = trunc i64 %indvars.iv.i to i16
  %i.cf = add i16 %i.ce, 1
  %i.cg = call ptr @index_getprocinfo(ptr noundef %0, i16 noundef signext %i.cf, i16 noundef zeroext 2) #9
  %i.ch = load ptr, ptr %i.al, align 8
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %indvars.iv.i
  %i.cj = load i32, ptr %i.ci, align 4
  %i.ck = ptrtoint ptr %i.bj to i64
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.i
  %i.cm = load i64, ptr %i.cl, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.i
  %i.co = load i8, ptr %i.cn, align 1, !range !4, !noundef !5
  %i.cp = zext nneg i8 %i.co to i64
  %i.cq = call i64 @FunctionCall4Coll(ptr noundef %i.cg, i32 noundef %i.cj, i64 noundef %i.am, i64 noundef %i.ck, i64 noundef %i.cm, i64 noundef %i.cp) #9
  %i.cr = icmp ne i64 %i.cq, 0
  %i.cs = zext i1 %i.cr to i8
  %i.ct = or i8 %.03334.i, %i.cs                  ; 4 uses
  br i1 %i.bs, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %bb.z
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bj, i64 2 ; 2 uses
  %i.cv = load i8, ptr %i.cu, align 2, !range !4, !noundef !5
  %i.cw = trunc nuw i8 %i.cv to i1
  br i1 %i.cw, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bj, i64 3
  %i.cy = load i8, ptr %i.cx, align 1, !range !4, !noundef !5
  %i.cz = trunc nuw i8 %i.cy to i1
  br i1 %i.cz, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  store i8 1, ptr %i.cu, align 2
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x
  %.2.i = phi i8 [ 1, %bb.y ], [ %.03334.i, %bb.x ], [ %i.ct, %bb.ac ], [ %i.ct, %bb.ab ], [ %i.ct, %bb.aa ], [ %i.ct, %bb.z ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.da = load ptr, ptr %i.aj, align 8
  %i.db = load i32, ptr %i.da, align 8
  %i.dc = sext i32 %i.db to i64
  %i.dd = icmp slt i64 %indvars.iv.next.i, %i.dc
  br i1 %i.dd, label %bb.s, label %add_values_to_range.exit, !llvm.loop !15

add_values_to_range.exit:                         ; preds = %bb.ad, %bb.r
  %.033.lcssa.i = phi i8 [ %i.be, %bb.r ], [ %.2.i, %bb.ad ]
  store i8 0, ptr %i.bd, align 1
  %i.de = trunc nuw i8 %.033.lcssa.i to i1
  %i.df = load i32, ptr %i.a, align 4             ; 4 uses
  br i1 %i.de, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %add_values_to_range.exit
  call void @UnlockBuffer(i32 noundef %i.df) #9
  br label %.loopexit

bb.af:                                            ; preds = %add_values_to_range.exit
  %i.dg = icmp slt i32 %i.df, 0
  br i1 %i.dg, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.dh = load ptr, ptr @LocalBufferBlockPointers, align 8
  %i.di = xor i32 %i.df, -1
  %i.dj = zext nneg i32 %i.di to i64
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %i.dj
  %i.dl = load ptr, ptr %i.dk, align 8
  br label %BufferGetPage.exit

bb.ah:                                            ; preds = %bb.af
  %i.dm = load ptr, ptr @BufferBlocks, align 8
  %i.dn = add nsw i32 %i.df, -1
end_hunk_0
