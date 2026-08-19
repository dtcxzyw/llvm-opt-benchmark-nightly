inline.NumInlined: 273
inline.NumDeleted: 13
begin_hunk_0_@xgroupCommand:bb.a
bb.cc:                                            ; preds = %bb.by
  %i.lx = getelementptr inbounds i8, ptr %i.lj, i64 -9
  %i.ly = load i32, ptr %i.lx, align 1, !tbaa !9
  %i.lz = zext i32 %i.ly to i64
  br label %streamLookupConsumer.exit

bb.cd:                                            ; preds = %bb.by
  %i.ma = getelementptr inbounds i8, ptr %i.lj, i64 -17
  %i.mb = load i64, ptr %i.ma, align 1, !tbaa !13
  br label %streamLookupConsumer.exit

streamLookupConsumer.exit:                        ; preds = %bb.by, %bb.bz, %bb.ca, %bb.cb, %bb.cc, %bb.cd
  %.0.i.i219 = phi i64 [ %i.mb, %bb.cd ], [ %i.lq, %bb.bz ], [ %i.lt, %bb.ca ], [ %i.lw, %bb.cb ], [ %i.lz, %bb.cc ], [ 0, %bb.by ]
  %i.mc = call i32 @raxFind(ptr noundef %i.lm, ptr noundef nonnull %i.lj, i64 noundef %.0.i.i219, ptr noundef nonnull %i.a) #18 ; 0 uses
  %i.md = load ptr, ptr %i.a, align 8, !tbaa !80  ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %.not205 = icmp eq ptr %i.md, null
  br i1 %.not205, label %streamLookupConsumer.exit.thread, label %bb.ce

bb.ce:                                            ; preds = %streamLookupConsumer.exit
  %i.me = call i64 @kvobjAllocSize(ptr noundef %i.cx) #18
  %i.mf = getelementptr inbounds nuw i8, ptr %i.md, i64 24
  %i.mg = load ptr, ptr %i.mf, align 8, !tbaa !79
  %i.mh = call i64 @raxSize(ptr noundef %i.mg) #18
  call void @streamDelConsumer(ptr noundef %.2165226, ptr noundef nonnull %.0160, ptr noundef nonnull %i.md)
  %i.mi = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6644), align 4, !tbaa !215
  %.not206 = icmp eq i32 %i.mi, 0
  br i1 %.not206, label %._crit_edge259, label %bb.cf

._crit_edge259:                                   ; preds = %bb.ce
  %.pre260 = load ptr, ptr %i.d, align 8, !tbaa !144
  br label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.mj = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.mk = load ptr, ptr %i.mj, align 8, !tbaa !174
  %i.ml = load ptr, ptr %i.f, align 8, !tbaa !204
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 16
  %i.mn = load ptr, ptr %i.mm, align 8, !tbaa !144
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 8
  %i.mp = load ptr, ptr %i.mo, align 8, !tbaa !46
  %i.mq = call i32 @getKeySlot(ptr noundef %i.mp) #18
  %i.mr = load ptr, ptr %i.d, align 8, !tbaa !144 ; 3 uses
  %i.ms = call i64 @kvobjAllocSize(ptr noundef %i.mr) #18
  call void @updateSlotAllocSize(ptr noundef %i.mk, i32 noundef %i.mq, ptr noundef %i.mr, i64 noundef %i.me, i64 noundef %i.ms) #18
  br label %bb.cg

bb.cg:                                            ; preds = %._crit_edge259, %bb.cf
  %i.mt = phi ptr [ %.pre260, %._crit_edge259 ], [ %i.mr, %bb.cf ]
  %i.mu = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6888), align 8, !tbaa !217
  %i.mv = add nsw i64 %i.mu, 1
  store i64 %i.mv, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6888), align 8, !tbaa !217
  %i.mw = load ptr, ptr %i.f, align 8, !tbaa !204
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 16
  %i.my = load ptr, ptr %i.mx, align 8, !tbaa !144
  %i.mz = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.na = load ptr, ptr %i.mz, align 8, !tbaa !174
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 72
  %i.nc = load i32, ptr %i.nb, align 8, !tbaa !186
  call void @notifyKeyspaceEvent(i32 noundef 1024, ptr noundef nonnull @.str.84, ptr noundef %i.my, i32 noundef %i.nc) #18
  %i.nd = load ptr, ptr %i.mz, align 8, !tbaa !174
  %i.ne = load ptr, ptr %i.f, align 8, !tbaa !204
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 16
  %i.ng = load ptr, ptr %i.nf, align 8, !tbaa !144
  call void @keyModified(ptr noundef nonnull %0, ptr noundef %i.nd, ptr noundef %i.ng, ptr noundef %i.mt, i32 noundef 0) #18
  br label %streamLookupConsumer.exit.thread

streamLookupConsumer.exit.thread:                 ; preds = %bb.bx, %bb.cg, %streamLookupConsumer.exit
  %.0 = phi i64 [ %i.mh, %bb.cg ], [ 0, %streamLookupConsumer.exit ], [ 0, %bb.bx ]
  call void @addReplyLongLong(ptr noundef nonnull %0, i64 noundef %.0) #18
  br label %.critedge208

bb.ch:                                            ; preds = %bb.bw
  call void @addReplySubcommandSyntaxError(ptr noundef nonnull %0) #18
  br label %.critedge208

.critedge210:                                     ; preds = %.tail.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  br label %.critedge208

.critedge208:                                     ; preds = %bb.j, %bb.d, %.split.us, %.split251.us, %bb.m, %bb.ab, %bb.bv, %bb.ch, %streamLookupConsumer.exit.thread, %bb.bq, %bb.br, %bb.av, %streamUpdateCGroupLastId.exit, %bb.bg, %.critedge210, %bb.z, %.thread229
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  ret void
}

declare void @addReplySubcommandSyntaxError(ptr noundef) local_unnamed_addr #2

declare ptr @lookupKeyWrite(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @addReplyHelp(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @dbAdd(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @addReply(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @xsetidCommand(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.streamID, align 8           ; 9 uses
  %2 = alloca %struct.streamID, align 8           ; 8 uses
  %i.a = alloca i64, align 8                      ; 7 uses
  %3 = alloca %struct.streamID, align 8           ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i64 -1, ptr %i.a, align 8, !tbaa !21
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !204
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !144
  %i.f = call range(i32 -1, 1) i32 @streamGenericParseIDOrReply(ptr noundef %0, ptr noundef readonly %i.e, ptr noundef nonnull %1, i64 noundef 0, i32 noundef 1, ptr noundef null)
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %.preheader, label %.critedge

.preheader:                                       ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !202  ; 2 uses
  %i.i = icmp sgt i32 %i.h, 3
  br i1 %i.i, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.j = load i64, ptr %1, align 8                ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i64, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %streamCompareID.exit.thread
  %i.n = phi i64 [ 0, %.lr.ph ], [ %i.ap, %streamCompareID.exit.thread ]
  %indvars.iv = phi i64 [ 3, %.lr.ph ], [ %indvars.iv.next, %streamCompareID.exit.thread ] ; 3 uses
  %i.o = phi i32 [ %i.h, %.lr.ph ], [ %i.aq, %streamCompareID.exit.thread ]
  %i.p = add nuw nsw i64 %indvars.iv, 1
  %i.q = load ptr, ptr %i.b, align 8, !tbaa !204
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !144
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !46   ; 2 uses
  %i.v = call i32 @strcasecmp(ptr noundef %i.u, ptr noundef nonnull @.str.85) #22
  %i.w = icmp eq i32 %i.v, 0
  %i.x = zext i32 %i.o to i64
  %i.y = icmp ne i64 %i.p, %i.x                   ; 2 uses
  %or.cond = and i1 %i.y, %i.w
  br i1 %or.cond, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.z = getelementptr i8, ptr %i.r, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !144
  %i.ab = call i32 @getLongLongFromObjectOrReply(ptr noundef nonnull %0, ptr noundef %i.aa, ptr noundef nonnull %i.a, ptr noundef null) #18
  %.not63 = icmp eq i32 %i.ab, 0
  br i1 %.not63, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.ac = load i64, ptr %i.a, align 8, !tbaa !21
  %i.ad = icmp slt i64 %i.ac, 0
  br i1 %i.ad, label %bb.e, label %streamCompareID.exit.thread

bb.e:                                             ; preds = %bb.d
  call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.86) #18
  br label %.critedge

bb.f:                                             ; preds = %bb.b
  %i.ae = call i32 @strcasecmp(ptr noundef %i.u, ptr noundef nonnull @.str.87) #22
  %i.af = icmp eq i32 %i.ae, 0
  %or.cond4 = and i1 %i.y, %i.af
  br i1 %or.cond4, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.ag = getelementptr i8, ptr %i.r, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !144
  %i.ai = call range(i32 -1, 1) i32 @streamGenericParseIDOrReply(ptr noundef nonnull %0, ptr noundef readonly %i.ah, ptr noundef nonnull %2, i64 noundef 0, i32 noundef 1, ptr noundef null)
  %.not62 = icmp eq i32 %i.ai, 0
  br i1 %.not62, label %bb.h, label %.critedge

bb.h:                                             ; preds = %bb.g
  %i.aj = load i64, ptr %2, align 8, !tbaa !50    ; 4 uses
  %i.ak = icmp ugt i64 %i.j, %i.aj
  br i1 %i.ak, label %streamCompareID.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.al = icmp ult i64 %i.j, %i.aj
  %i.am = load i64, ptr %i.m, align 8
  %i.an = icmp ult i64 %i.l, %i.am
  %or.cond90 = select i1 %i.al, i1 true, i1 %i.an
  br i1 %or.cond90, label %streamCompareID.exit.thread73, label %streamCompareID.exit.thread

streamCompareID.exit.thread73:                    ; preds = %bb.i
  call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.88) #18
  br label %.critedge

bb.j:                                             ; preds = %bb.f
  %i.ao = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 216), align 8, !tbaa !218
  call void @addReplyErrorObject(ptr noundef nonnull %0, ptr noundef %i.ao) #18
  br label %.critedge

streamCompareID.exit.thread:                      ; preds = %bb.i, %bb.h, %bb.d
  %i.ap = phi i64 [ %i.aj, %bb.i ], [ %i.aj, %bb.h ], [ %i.n, %bb.d ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.aq = load i32, ptr %i.g, align 8, !tbaa !202 ; 2 uses
  %4 = sext i32 %i.aq to i64
  %5 = icmp slt i64 %indvars.iv.next, %4
  br i1 %5, label %bb.b, label %._crit_edge.loopexit, !llvm.loop !251

._crit_edge.loopexit:                             ; preds = %streamCompareID.exit.thread
  %i.ar = icmp eq i64 %i.ap, 0
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %.not.i = phi i1 [ %i.ar, %._crit_edge.loopexit ], [ true, %.preheader ]
  %i.as = load ptr, ptr %i.b, align 8, !tbaa !204
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !144
  %i.av = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 208), align 8, !tbaa !252
  %i.aw = call ptr @lookupKeyWriteOrReply(ptr noundef nonnull %0, ptr noundef %i.au, ptr noundef %i.av) #18 ; 4 uses
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %.critedge, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  %i.ay = call i32 @checkType(ptr noundef nonnull %0, ptr noundef nonnull %i.aw, i32 noundef 6) #18
  %.not57 = icmp eq i32 %i.ay, 0
  br i1 %.not57, label %bb.l, label %.critedge

bb.l:                                             ; preds = %bb.k
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !46 ; 6 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 48 ; 2 uses
  %i.bc = load i64, ptr %1, align 8, !tbaa !50    ; 4 uses
  %i.bd = load i64, ptr %i.bb, align 8, !tbaa !50 ; 2 uses
  %i.be = icmp ugt i64 %i.bc, %i.bd
  br i1 %i.be, label %streamCompareID.exit68.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bf = icmp ult i64 %i.bc, %i.bd
  br i1 %i.bf, label %streamCompareID.exit68.thread76, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !49
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ba, i64 56
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !49
  %i.bk = icmp ult i64 %i.bh, %i.bj
  br i1 %i.bk, label %streamCompareID.exit68.thread76, label %streamCompareID.exit68.thread

streamCompareID.exit68.thread76:                  ; preds = %bb.n, %bb.m
  call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.89) #18
  br label %.critedge

streamCompareID.exit68.thread:                    ; preds = %bb.l, %bb.n
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 2 uses
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !48
  %.not58 = icmp eq i64 %i.bm, 0
  br i1 %.not58, label %streamCompareID.exit68.thread._crit_edge, label %bb.o

streamCompareID.exit68.thread._crit_edge:         ; preds = %streamCompareID.exit68.thread
  %.pre = load i64, ptr %i.a, align 8, !tbaa !21
  br label %bb.t

bb.o:                                             ; preds = %streamCompareID.exit68.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @streamLastValidID(ptr noundef nonnull %i.ba, ptr noundef nonnull %3)
  %i.bn = load i64, ptr %3, align 8, !tbaa !50    ; 2 uses
  %i.bo = icmp ugt i64 %i.bc, %i.bn
  br i1 %i.bo, label %streamCompareID.exit71.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bp = icmp ult i64 %i.bc, %i.bn
  br i1 %i.bp, label %.critedge65, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !49
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !49
  %i.bu = icmp ult i64 %i.br, %i.bt
  br i1 %i.bu, label %.critedge65, label %streamCompareID.exit71.thread

streamCompareID.exit71.thread:                    ; preds = %bb.o, %bb.q
  %i.bv = load i64, ptr %i.a, align 8, !tbaa !21  ; 3 uses
  %.not59 = icmp eq i64 %i.bv, -1
  br i1 %.not59, label %bb.s, label %bb.r

bb.r:                                             ; preds = %streamCompareID.exit71.thread
  %i.bw = load i64, ptr %i.bl, align 8, !tbaa !48
  %i.bx = icmp ugt i64 %i.bw, %i.bv
  br i1 %i.bx, label %.critedge65, label %bb.s

bb.s:                                             ; preds = %streamCompareID.exit71.thread, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %bb.t

bb.t:                                             ; preds = %streamCompareID.exit68.thread._crit_edge, %bb.s
  %i.by = phi i64 [ %.pre, %streamCompareID.exit68.thread._crit_edge ], [ %i.bv, %bb.s ] ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bz, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !51
  %.not60 = icmp eq i64 %i.by, -1
  br i1 %.not60, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ba, i64 64
  store i64 %i.by, ptr %i.ca, align 8, !tbaa !61
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cc = load i64, ptr %i.cb, align 8
  %.not82 = icmp eq i64 %i.cc, 0
  %or.cond87 = select i1 %.not.i, i1 %.not82, i1 false
  br i1 %or.cond87, label %bb.w, label %streamIDEqZero.exit.thread

streamIDEqZero.exit.thread:                       ; preds = %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bb, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !51
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %streamIDEqZero.exit.thread
  %i.cd = load ptr, ptr @shared, align 8, !tbaa !249
  call void @addReply(ptr noundef nonnull %0, ptr noundef %i.cd) #18
  %i.ce = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6888), align 8, !tbaa !217
  %i.cf = add nsw i64 %i.ce, 1
  store i64 %i.cf, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6888), align 8, !tbaa !217
  %i.cg = load ptr, ptr %i.b, align 8, !tbaa !204
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !144
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !174
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 72
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !186
  call void @notifyKeyspaceEvent(i32 noundef 1024, ptr noundef nonnull @.str.92, ptr noundef %i.ci, i32 noundef %i.cm) #18
  %i.cn = load ptr, ptr %i.cj, align 8, !tbaa !174
  %i.co = load ptr, ptr %i.b, align 8, !tbaa !204
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !144
  call void @keyModified(ptr noundef nonnull %0, ptr noundef %i.cn, ptr noundef %i.cq, ptr noundef nonnull %i.aw, i32 noundef 0) #18
  br label %.critedge

.critedge65:                                      ; preds = %bb.r, %bb.p, %bb.q
  %.str.91.sink = phi ptr [ @.str.90, %bb.p ], [ @.str.90, %bb.q ], [ @.str.91, %bb.r ]
  call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull %.str.91.sink) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %.critedge

.critedge:                                        ; preds = %bb.g, %bb.c, %streamCompareID.exit68.thread76, %bb.w, %.critedge65, %._crit_edge, %bb.k, %streamCompareID.exit.thread73, %bb.e, %bb.j, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  ret void
}

declare ptr @lookupKeyWriteOrReply(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @xackCommand(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %1 = alloca [8 x %struct.streamID], align 16    ; 4 uses
  %i.b = alloca [16 x i8], align 16               ; 8 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !174
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 5 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !204
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !144
  %i.j = tail call ptr @lookupKeyRead(ptr noundef %i.e, ptr noundef %i.i) #18 ; 7 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %streamLookupCG.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = tail call i32 @checkType(ptr noundef nonnull %0, ptr noundef nonnull %i.j, i32 noundef 6) #18
  %.not57 = icmp eq i32 %i.k, 0
  br i1 %.not57, label %bb.c, label %bb.z

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !46
  %i.n = load ptr, ptr %i.f, align 8, !tbaa !204
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !144
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !46   ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 80
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !31   ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %streamLookupCG.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store ptr null, ptr %i.a, align 8, !tbaa !80
  %i.v = getelementptr i8, ptr %i.r, i64 -1
  %.val.i.i = load i8, ptr %i.v, align 1, !tbaa !69 ; 2 uses
  %i.w = and i8 %.val.i.i, 7
  switch i8 %i.w, label %streamLookupCG.exit [
    i8 0, label %bb.e
    i8 1, label %bb.f
    i8 2, label %bb.g
    i8 3, label %bb.h
    i8 4, label %bb.i
  ]

bb.e:                                             ; preds = %bb.d
  %i.x = lshr i8 %.val.i.i, 3
  %i.y = zext nneg i8 %i.x to i64
end_hunk_0
