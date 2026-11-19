Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/db?download=true
inline.NumInlined: 146
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 18
begin_hunk_0_@extractKeysAndSlot:bb.a
.lr.ph.split.us.i.i.preheader:                    ; preds = %.lr.ph.split.i.i.epil, %.lr.ph.split.us.i.i.preheader.unr-lcssa
  %.lcssa34 = phi i64 [ %i.aj, %.lr.ph.split.us.i.i.preheader.unr-lcssa ], [ %i.ao, %.lr.ph.split.i.i.epil ]
  %xtraiter38 = and i64 %wide.trip.count18.i.i, 3 ; 3 uses
  %i.ap = icmp ult i32 %i.o, 4
  br i1 %i.ap, label %.lr.ph.split.us.i.i.epil.preheader, label %.lr.ph.split.us.i.i.preheader.new

.lr.ph.split.us.i.i.preheader.new:                ; preds = %.lr.ph.split.us.i.i.preheader
  %unroll_iter43 = and i64 %wide.trip.count18.i.i, 2147483644
  br label %.lr.ph.split.us.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.split.us.i.i, %.lr.ph.split.us.i.i.preheader.new
  %indvars.iv15.i.i = phi i64 [ 0, %.lr.ph.split.us.i.i.preheader.new ], [ %indvars.iv.next16.i.i.3, %.lr.ph.split.us.i.i ] ; 5 uses
  %.0910.us.i.i = phi i64 [ 0, %.lr.ph.split.us.i.i.preheader.new ], [ %i.bf, %.lr.ph.split.us.i.i ]
  %niter44 = phi i64 [ 0, %.lr.ph.split.us.i.i.preheader.new ], [ %niter44.next.3, %.lr.ph.split.us.i.i ]
  %i.aq = getelementptr inbounds nuw [56 x i8], ptr %i.r, i64 %indvars.iv15.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !257
  %i.at = or i64 %i.as, %.0910.us.i.i
  %i.au = getelementptr inbounds nuw [56 x i8], ptr %i.r, i64 %indvars.iv15.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 64
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !257
  %i.ax = or i64 %i.aw, %i.at
  %i.ay = getelementptr inbounds nuw [56 x i8], ptr %i.r, i64 %indvars.iv15.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 120
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !257
  %i.bb = or i64 %i.ba, %i.ax
  %i.bc = getelementptr inbounds nuw [56 x i8], ptr %i.r, i64 %indvars.iv15.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 176
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !257
  %i.bf = or i64 %i.be, %i.bb                     ; 3 uses
  %indvars.iv.next16.i.i.3 = add nuw nsw i64 %indvars.iv15.i.i, 4 ; 2 uses
  %niter44.next.3 = add i64 %niter44, 4           ; 2 uses
  %niter44.ncmp.3 = icmp eq i64 %niter44.next.3, %unroll_iter43
  br i1 %niter44.ncmp.3, label %getAllKeySpecsFlags.exit30.i.unr-lcssa, label %.lr.ph.split.us.i.i, !llvm.loop !4

getAllKeySpecsFlags.exit30.i.unr-lcssa:           ; preds = %.lr.ph.split.us.i.i
  %lcmp.mod40.not = icmp eq i64 %xtraiter38, 0
  br i1 %lcmp.mod40.not, label %getAllKeySpecsFlags.exit30.i, label %.lr.ph.split.us.i.i.epil.preheader

.lr.ph.split.us.i.i.epil.preheader:               ; preds = %getAllKeySpecsFlags.exit30.i.unr-lcssa, %.lr.ph.split.us.i.i.preheader
  %indvars.iv15.i.i.epil.init = phi i64 [ 0, %.lr.ph.split.us.i.i.preheader ], [ %indvars.iv.next16.i.i.3, %getAllKeySpecsFlags.exit30.i.unr-lcssa ]
  %.0910.us.i.i.epil.init = phi i64 [ 0, %.lr.ph.split.us.i.i.preheader ], [ %i.bf, %getAllKeySpecsFlags.exit30.i.unr-lcssa ]
  %lcmp.mod42 = icmp ne i64 %xtraiter38, 0
  tail call void @llvm.assume(i1 %lcmp.mod42)
  br label %.lr.ph.split.us.i.i.epil

.lr.ph.split.us.i.i.epil:                         ; preds = %.lr.ph.split.us.i.i.epil, %.lr.ph.split.us.i.i.epil.preheader
  %indvars.iv15.i.i.epil = phi i64 [ %indvars.iv.next16.i.i.epil, %.lr.ph.split.us.i.i.epil ], [ %indvars.iv15.i.i.epil.init, %.lr.ph.split.us.i.i.epil.preheader ] ; 2 uses
  %.0910.us.i.i.epil = phi i64 [ %i.bj, %.lr.ph.split.us.i.i.epil ], [ %.0910.us.i.i.epil.init, %.lr.ph.split.us.i.i.epil.preheader ]
  %epil.iter39 = phi i64 [ %epil.iter39.next, %.lr.ph.split.us.i.i.epil ], [ 0, %.lr.ph.split.us.i.i.epil.preheader ]
  %i.bg = getelementptr inbounds nuw [56 x i8], ptr %i.r, i64 %indvars.iv15.i.i.epil
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !257
  %i.bj = or i64 %i.bi, %.0910.us.i.i.epil        ; 2 uses
  %indvars.iv.next16.i.i.epil = add nuw nsw i64 %indvars.iv15.i.i.epil, 1
  %epil.iter39.next = add i64 %epil.iter39, 1     ; 2 uses
  %epil.iter39.cmp.not = icmp eq i64 %epil.iter39.next, %xtraiter38
  br i1 %epil.iter39.cmp.not, label %getAllKeySpecsFlags.exit30.i, label %.lr.ph.split.us.i.i.epil, !llvm.loop !460

getAllKeySpecsFlags.exit30.i:                     ; preds = %.lr.ph.split.us.i.i.epil, %getAllKeySpecsFlags.exit30.i.unr-lcssa
  %.lcssa = phi i64 [ %i.bf, %getAllKeySpecsFlags.exit30.i.unr-lcssa ], [ %i.bj, %.lr.ph.split.us.i.i.epil ]
  %i.bk = and i64 %.lcssa34, 256
  %i.bl = icmp eq i64 %i.bk, 0
  %i.bm = and i64 %.lcssa, 1024
  %i.bn = icmp ne i64 %i.bm, 0
  %or.cond.i = select i1 %i.bl, i1 true, i1 %i.bn
  br i1 %or.cond.i, label %getAllKeySpecsFlags.exit30.thread.i, label %bb.d

bb.d:                                             ; preds = %getAllKeySpecsFlags.exit30.i
  %i.bo = tail call i32 @getKeysUsingKeySpecs(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, i32 noundef 0, ptr noundef %3) ; 2 uses
  %i.bp = icmp slt i32 %i.bo, 0
  br i1 %i.bp, label %.getAllKeySpecsFlags.exit30.thread.i_crit_edge, label %getKeysFromCommandWithSpecs.exit

.getAllKeySpecsFlags.exit30.thread.i_crit_edge:   ; preds = %bb.d
  %.pre = load i64, ptr %i.a, align 8, !tbaa !200
  br label %getAllKeySpecsFlags.exit30.thread.i

getAllKeySpecsFlags.exit30.thread.i:              ; preds = %.getAllKeySpecsFlags.exit30.thread.i_crit_edge, %getAllKeySpecsFlags.exit30.i, %doesCommandHaveChannelsWithFlags.exit.thread
  %i.bq = phi i64 [ %.pre, %.getAllKeySpecsFlags.exit30.thread.i_crit_edge ], [ %i.b, %getAllKeySpecsFlags.exit30.i ], [ %i.b, %doesCommandHaveChannelsWithFlags.exit.thread ]
  %i.br = and i64 %i.bq, 2097152
  %.not.i13 = icmp eq i64 %i.br, 0
  br i1 %.not.i13, label %bb.f, label %bb.e

bb.e:                                             ; preds = %getAllKeySpecsFlags.exit30.thread.i
  %i.bs = tail call i32 @moduleGetCommandKeysViaAPI(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #20
  br label %getKeysFromCommandWithSpecs.exit

bb.f:                                             ; preds = %getAllKeySpecsFlags.exit30.thread.i
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !213 ; 2 uses
  %.not26.i = icmp eq ptr %i.bu, null
  br i1 %.not26.i, label %getKeysFromCommandWithSpecs.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bv = tail call i32 %i.bu(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #20, !inline_history !462
  br label %getKeysFromCommandWithSpecs.exit

doesCommandHaveChannelsWithFlags.exit.thread17:   ; preds = %bb.a, %doesCommandHaveChannelsWithFlags.exit
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !255
  %i.by = icmp sgt i32 %i.bx, 0
  br i1 %i.by, label %bb.h, label %getKeysFromCommandWithSpecs.exit

bb.h:                                             ; preds = %doesCommandHaveChannelsWithFlags.exit.thread17
  %i.bz = tail call i32 @getChannelsFromCommand(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, ptr noundef %3)
  br label %getKeysFromCommandWithSpecs.exit

getKeysFromCommandWithSpecs.exit:                 ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %doesCommandHaveChannelsWithFlags.exit.thread17, %bb.h
  %.0 = phi i32 [ %i.bz, %bb.h ], [ 0, %doesCommandHaveChannelsWithFlags.exit.thread17 ], [ %i.bs, %bb.e ], [ %i.bv, %bb.g ], [ %i.bo, %bb.d ], [ 0, %bb.f ]
  %i.ca = tail call i32 @extractSlotFromKeysResult(ptr noundef %1, ptr noundef %3) #20
  store i32 %i.ca, ptr %4, align 4, !tbaa !18
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @getKeysUsingLegacyRangeSpec(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 !guid !464 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.b = load i32, ptr %i.a, align 8, !tbaa !465
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.e = load i32, ptr %i.d, align 8, !tbaa !209  ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 276
  %i.g = load i32, ptr %i.f, align 4, !tbaa !209  ; 2 uses
  %i.h = icmp slt i32 %i.g, 0
  %i.i = select i1 %i.h, i32 0, i32 %i.e
  %spec.select = add nsw i32 %i.i, %i.g           ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.k = load i32, ptr %i.j, align 8, !tbaa !209
  %i.l = icmp slt i32 %spec.select, 0
  %i.m = select i1 %i.l, i32 %2, i32 0
  %.1 = add nsw i32 %i.m, %spec.select            ; 3 uses
  %i.n = sub nsw i32 %.1, %i.e                    ; 2 uses
  %i.o = add nsw i32 %i.n, 1                      ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 4 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !215  ; 2 uses
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.r = load i32, ptr %3, align 8, !tbaa !253
  %.not22.i = icmp eq i32 %i.r, 0
  br i1 %.not22.i, label %bb.e, label %bb.d, !prof !201

bb.d:                                             ; preds = %bb.c
  tail call void @_serverAssert(ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.2, i32 noundef 3038) #20
  tail call void @abort() #21
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr %i.s, ptr %i.p, align 8, !tbaa !215
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  %i.t = phi ptr [ %i.s, %bb.e ], [ %i.q, %bb.b ] ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !254
  %.not44 = icmp slt i32 %i.n, %i.v
  br i1 %.not44, label %getKeysPrepareResult.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %.not23.i = icmp eq ptr %i.t, %i.w
  %i.x = sext i32 %i.o to i64
  %i.y = shl nsw i64 %i.x, 3                      ; 2 uses
  br i1 %.not23.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = tail call ptr @zrealloc(ptr noundef nonnull %i.t, i64 noundef %i.y) #25 ; 2 uses
  store ptr %i.z, ptr %i.p, align 8, !tbaa !215
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.aa = tail call noalias ptr @zmalloc(i64 noundef %i.y) #23 ; 4 uses
  store ptr %i.aa, ptr %i.p, align 8, !tbaa !215
  %i.ab = load i32, ptr %3, align 8, !tbaa !253   ; 2 uses
  %.not24.i = icmp eq i32 %i.ab, 0
  br i1 %.not24.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = sext i32 %i.ab to i64
  %i.ad = shl nsw i64 %i.ac, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.aa, ptr nonnull align 8 %i.w, i64 %i.ad, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %i.ae = phi ptr [ %i.aa, %bb.i ], [ %i.aa, %bb.j ], [ %i.z, %bb.h ]
  store i32 %i.o, ptr %i.u, align 4, !tbaa !254
  br label %getKeysPrepareResult.exit

getKeysPrepareResult.exit:                        ; preds = %bb.f, %bb.k
  %i.af = phi ptr [ %i.ae, %bb.k ], [ %i.t, %bb.f ]
  %.not46 = icmp sgt i32 %i.e, %.1
  br i1 %.not46, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %getKeysPrepareResult.exit, %bb.o
  %.03548 = phi i32 [ %5, %bb.o ], [ 0, %getKeysPrepareResult.exit ] ; 2 uses
  %.03647 = phi i32 [ %i.ap, %bb.o ], [ %i.e, %getKeysPrepareResult.exit ] ; 4 uses
  %.not41 = icmp sge i32 %.03647, %2
  %i.ag = icmp slt i32 %.03647, %i.e
  %or.cond = or i1 %.not41, %i.ag
  br i1 %or.cond, label %bb.l, label %bb.o

bb.l:                                             ; preds = %.lr.ph
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !200
  %i.aj = and i64 %i.ai, 8
  %.not42 = icmp eq i64 %i.aj, 0
  br i1 %.not42, label %bb.m, label %.loopexit

bb.m:                                             ; preds = %bb.l
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !259
  %i.am = icmp slt i32 %i.al, 0
  br i1 %i.am, label %.loopexit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.2, i32 noundef 3385, ptr noundef nonnull @.str.72) #20
  tail call void @abort() #21
  unreachable

bb.o:                                             ; preds = %.lr.ph
  %4 = zext nneg i32 %.03548 to i64
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %4 ; 2 uses
  store i32 %.03647, ptr %i.an, align 4, !tbaa !261
  %5 = add nuw nsw i32 %.03548, 1                 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  store i32 0, ptr %i.ao, align 4, !tbaa !262
  %i.ap = add nsw i32 %.03647, %i.k               ; 2 uses
  %.not = icmp sgt i32 %i.ap, %.1
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !463

.loopexit:                                        ; preds = %bb.o, %getKeysPrepareResult.exit, %bb.m, %bb.l, %bb.a
  %storemerge43 = phi i32 [ 0, %bb.a ], [ 0, %bb.l ], [ 0, %bb.m ], [ 0, %getKeysPrepareResult.exit ], [ %5, %bb.o ] ; 2 uses
  store i32 %storemerge43, ptr %3, align 8, !tbaa !253
  ret i32 %storemerge43
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, -2147483648) i32 @genericGetKeys(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5, ptr noundef %6) local_unnamed_addr #0 !guid !469 {
bb.a:
  %i.a = sext i32 %1 to i64
  %i.b = getelementptr inbounds [8 x i8], ptr %4, i64 %i.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !203
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !168
  %i.f = tail call i64 @__isoc23_strtol(ptr noundef nonnull %i.e, ptr noundef null, i32 noundef 10) #20, !inline_history !466 ; 5 uses
  %i.g = trunc i64 %i.f to i32                    ; 3 uses
  %i.h = icmp slt i32 %i.g, 1
  br i1 %i.h, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = sub nsw i32 %5, %2
  %i.j = sdiv i32 %i.i, %3
  %i.k = icmp slt i32 %i.j, %i.g
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  store i32 0, ptr %6, align 8, !tbaa !253
  br label %bb.o

bb.d:                                             ; preds = %bb.b
  %.not = icmp ne i32 %0, 0                       ; 2 uses
  %i.l = zext i1 %.not to i32
  %i.m = add nuw nsw i32 %i.g, %i.l               ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 4 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !215  ; 2 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.p = load i32, ptr %6, align 8, !tbaa !253
  %.not22.i = icmp eq i32 %i.p, 0
  br i1 %.not22.i, label %bb.g, label %bb.f, !prof !201

bb.f:                                             ; preds = %bb.e
  tail call void @_serverAssert(ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.2, i32 noundef 3038) #20
  tail call void @abort() #21
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store ptr %i.q, ptr %i.n, align 8, !tbaa !215
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  %i.r = phi ptr [ %i.q, %bb.g ], [ %i.o, %bb.d ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !254
  %i.u = icmp sgt i32 %i.m, %i.t
  br i1 %i.u, label %bb.i, label %.lr.ph.preheader

bb.i:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %.not23.i = icmp eq ptr %i.r, %i.v
  %i.w = zext nneg i32 %i.m to i64
  %i.x = shl nuw nsw i64 %i.w, 3                  ; 2 uses
  br i1 %.not23.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = tail call ptr @zrealloc(ptr noundef nonnull %i.r, i64 noundef %i.x) #25 ; 2 uses
  store ptr %i.y, ptr %i.n, align 8, !tbaa !215
  br label %bb.m

bb.k:                                             ; preds = %bb.i
  %i.z = tail call noalias ptr @zmalloc(i64 noundef %i.x) #23 ; 4 uses
  store ptr %i.z, ptr %i.n, align 8, !tbaa !215
  %i.aa = load i32, ptr %6, align 8, !tbaa !253   ; 2 uses
  %.not24.i = icmp eq i32 %i.aa, 0
  br i1 %.not24.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ab = sext i32 %i.aa to i64
  %i.ac = shl nsw i64 %i.ab, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.z, ptr nonnull align 8 %i.v, i64 %i.ac, i1 false)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  %i.ad = phi ptr [ %i.z, %bb.k ], [ %i.z, %bb.l ], [ %i.y, %bb.j ]
  store i32 %i.m, ptr %i.s, align 4, !tbaa !254
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.m, %bb.h
  %i.ae = phi ptr [ %i.ad, %bb.m ], [ %i.r, %bb.h ] ; 6 uses
  store i32 %i.m, ptr %6, align 8, !tbaa !253
  %wide.trip.count = and i64 %i.f, 2147483647
  %i.af = add nsw i64 %wide.trip.count, -1
  %xtraiter = and i64 %i.f, 3                     ; 3 uses
  %i.ag = icmp ult i64 %i.af, 3
  br i1 %i.ag, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.f, 2147483644
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv ; 2 uses
  %i.ai = trunc i64 %indvars.iv to i32
  %i.aj = mul i32 %3, %i.ai
  %i.ak = add i32 %i.aj, %2
  store i32 %i.ak, ptr %i.ah, align 4, !tbaa !261
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  store i32 0, ptr %i.al, align 4, !tbaa !262
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv.next ; 2 uses
  %i.an = trunc i64 %indvars.iv.next to i32
  %i.ao = mul i32 %3, %i.an
  %i.ap = add i32 %i.ao, %2
  store i32 %i.ap, ptr %i.am, align 4, !tbaa !261
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  store i32 0, ptr %i.aq, align 4, !tbaa !262
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv.next.1 ; 2 uses
  %i.as = trunc i64 %indvars.iv.next.1 to i32
  %i.at = mul i32 %3, %i.as
  %i.au = add i32 %i.at, %2
  store i32 %i.au, ptr %i.ar, align 4, !tbaa !261
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  store i32 0, ptr %i.av, align 4, !tbaa !262
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv.next.2 ; 2 uses
  %i.ax = trunc i64 %indvars.iv.next.2 to i32
  %i.ay = mul i32 %3, %i.ax
  %i.az = add i32 %i.ay, %2
  store i32 %i.az, ptr %i.aw, align 4, !tbaa !261
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  store i32 0, ptr %i.ba, align 4, !tbaa !262
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.unr-lcssa, label %.lr.ph, !llvm.loop !467

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.3, %._crit_edge.unr-lcssa ]
  %lcmp.mod43 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod43)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv.epil ; 2 uses
  %i.bc = trunc i64 %indvars.iv.epil to i32
  %i.bd = mul i32 %3, %i.bc
  %i.be = add i32 %i.bd, %2
  store i32 %i.be, ptr %i.bb, align 4, !tbaa !261
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  store i32 0, ptr %i.bf, align 4, !tbaa !262
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !468

._crit_edge:                                      ; preds = %.lr.ph.epil, %._crit_edge.unr-lcssa
  br i1 %.not, label %bb.n, label %bb.o

bb.n:                                             ; preds = %._crit_edge
  %i.bg = and i64 %i.f, 2147483647
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.bg ; 2 uses
  store i32 %0, ptr %i.bh, align 4, !tbaa !261
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  store i32 0, ptr %i.bi, align 4, !tbaa !262
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge, %bb.n, %bb.c
  %.032 = phi i32 [ 0, %bb.c ], [ %i.m, %bb.n ], [ %i.m, %._crit_edge ]
  ret i32 %.032
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, -2147483648) i32 @sintercardGetKeys(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 !guid !470 {
bb.a:
  %i.a = tail call i32 @genericGetKeys(i32 noundef 0, i32 noundef 1, i32 noundef 2, i32 noundef 1, ptr noundef %1, i32 noundef %2, ptr noundef %3)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, -2147483648) i32 @zunionInterDiffStoreGetKeys(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 !guid !471 {
bb.a:
  %i.a = tail call i32 @genericGetKeys(i32 noundef 1, i32 noundef 2, i32 noundef 3, i32 noundef 1, ptr noundef %1, i32 noundef %2, ptr noundef %3)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, -2147483648) i32 @zunionInterDiffGetKeys(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 !guid !472 {
bb.a:
  %i.a = tail call i32 @genericGetKeys(i32 noundef 0, i32 noundef 1, i32 noundef 2, i32 noundef 1, ptr noundef %1, i32 noundef %2, ptr noundef %3)
  ret i32 %i.a
end_hunk_0
