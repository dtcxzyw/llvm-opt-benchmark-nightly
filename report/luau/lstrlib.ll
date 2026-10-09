Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/lstrlib?download=true
inline.NumInlined: 78
inline.NumDeleted: 41
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZL9str_splitP9lua_State:bb.a
.lr.ph.preheader:                                 ; preds = %bb.a
  %spec.select = getelementptr inbounds nuw i8, ptr %i.c, i64 %spec.select.idx
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %bb.c
  %i.j = add nsw i32 %.129, 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.lcssa = phi i64 [ %i.g, %bb.a ], [ %.pr, %._crit_edge.loopexit ]
  %.030.lcssa = phi ptr [ %i.c, %bb.a ], [ %.131, %._crit_edge.loopexit ] ; 2 uses
  %.028.lcssa = phi i32 [ 1, %bb.a ], [ %i.j, %._crit_edge.loopexit ]
  %.not34 = icmp eq i64 %.lcssa, 0
  br i1 %.not34, label %bb.e, label %bb.d

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %.pr43 = phi i64 [ %.pr, %bb.c ], [ %i.g, %.lr.ph.preheader ] ; 2 uses
  %.040 = phi ptr [ %i.s, %bb.c ], [ %spec.select, %.lr.ph.preheader ] ; 5 uses
  %.02839 = phi i32 [ %.129, %bb.c ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.03038 = phi ptr [ %.131, %bb.c ], [ %i.c, %.lr.ph.preheader ] ; 3 uses
  %bcmp = call i32 @bcmp(ptr %.040, ptr %i.d, i64 %.pr43)
  %i.k = icmp eq i32 %bcmp, 0
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.l = add nsw i32 %.02839, 1                   ; 2 uses
  call void @_Z15lua_pushintegerP9lua_Statei(ptr noundef %0, i32 noundef %i.l)
  %i.m = ptrtoint ptr %.040 to i64
  %i.n = ptrtoint ptr %.03038 to i64
  %i.o = sub i64 %i.m, %i.n
  call void @_Z15lua_pushlstringP9lua_StatePKcm(ptr noundef %0, ptr noundef %.03038, i64 noundef %i.o)
  call void @_Z12lua_settableP9lua_Statei(ptr noundef %0, i32 noundef -3)
  %i.p = load i64, ptr %i.b, align 8, !tbaa !12   ; 3 uses
  %i.q = getelementptr i8, ptr %.040, i64 %i.p    ; 2 uses
  %.not35 = icmp eq i64 %i.p, 0
  %i.r = getelementptr i8, ptr %i.q, i64 -1
  %spec.select36 = select i1 %.not35, ptr %.040, ptr %i.r
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %.pr = phi i64 [ %.pr43, %.lr.ph ], [ %i.p, %bb.b ] ; 3 uses
  %.131 = phi ptr [ %.03038, %.lr.ph ], [ %i.q, %bb.b ] ; 2 uses
  %.129 = phi i32 [ %.02839, %.lr.ph ], [ %i.l, %bb.b ] ; 2 uses
  %.1 = phi ptr [ %.040, %.lr.ph ], [ %spec.select36, %bb.b ]
  %i.s = getelementptr inbounds nuw i8, ptr %.1, i64 1 ; 2 uses
  %i.t = sub i64 0, %.pr
  %i.u = getelementptr inbounds i8, ptr %i.f, i64 %i.t
  %.not = icmp ugt ptr %i.s, %i.u
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !54

bb.d:                                             ; preds = %._crit_edge
  call void @_Z15lua_pushintegerP9lua_Statei(ptr noundef %0, i32 noundef %.028.lcssa)
  %i.v = ptrtoint ptr %i.f to i64
  %i.w = ptrtoint ptr %.030.lcssa to i64
  %i.x = sub i64 %i.v, %i.w
  call void @_Z15lua_pushlstringP9lua_StatePKcm(ptr noundef %0, ptr noundef %.030.lcssa, i64 noundef %i.x)
  call void @_Z12lua_settableP9lua_Statei(ptr noundef %0, i32 noundef -3)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i32 1
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL8str_packP9lua_State(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 14 uses
  %i.b = alloca [16 x i8], align 16               ; 14 uses
  %i.c = alloca [16 x i8], align 16               ; 15 uses
  %1 = alloca %struct.luaL_Strbuf, align 8        ; 28 uses
  %2 = alloca %struct.Header, align 8             ; 6 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %3 = alloca %union.Ftypes, align 8              ; 9 uses
  %i.g = alloca [16 x i8], align 16               ; 6 uses
  %i.h = alloca i64, align 8                      ; 8 uses
  %i.i = alloca i64, align 8                      ; 6 uses
  %i.j = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  %i.k = tail call noundef ptr @_Z17luaL_checklstringP9lua_StateiPm(ptr noundef %0, i32 noundef 1, ptr noundef null) ; 2 uses
  store ptr %i.k, ptr %i.d, align 8, !tbaa !36
  store ptr %0, ptr %2, align 8, !tbaa !38
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  store i32 1, ptr %i.l, align 8, !tbaa !39
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 1, ptr %i.m, align 4, !tbaa !40
  tail call void @_Z11lua_pushnilP9lua_State(ptr noundef %0)
  call void @_Z13luaL_buffinitP9lua_StateP11luaL_Strbuf(ptr noundef %0, ptr noundef nonnull %1)
  %i.n = load i8, ptr %i.k, align 1, !tbaa !13
  %.not123 = icmp eq i8 %i.n, 0
  br i1 %.not123, label %._crit_edge128, label %.lr.ph127

.lr.ph127:                                        ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph127, %bb.aj
  %.0125 = phi i64 [ 0, %.lr.ph127 ], [ %.1, %bb.aj ] ; 2 uses
  %.047124 = phi i32 [ 1, %.lr.ph127 ], [ %.148, %bb.aj ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #13
  %i.p = call fastcc noundef i32 @_ZL10getdetailsP6HeadermPPKcPiS4_(ptr noundef %2, i64 noundef %.0125, ptr noundef %i.d, ptr noundef %i.e, ptr noundef %i.f)
  %i.q = load i32, ptr %i.f, align 4, !tbaa !35   ; 3 uses
  %i.r = load i32, ptr %i.e, align 4, !tbaa !35   ; 45 uses
  %i.s = add nsw i32 %i.r, %i.q
  %i.t = sext i32 %i.s to i64
  %i.u = add i64 %.0125, %i.t                     ; 9 uses
  %i.v = icmp sgt i32 %i.q, 0
  br i1 %i.v, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b, %bb.d
  %.in = phi i32 [ %i.w, %bb.d ], [ %i.q, %bb.b ] ; 2 uses
  %i.w = add nsw i32 %.in, -1
  %i.x = load ptr, ptr %1, align 8, !tbaa !20     ; 2 uses
  %i.y = load ptr, ptr %i.o, align 8, !tbaa !21
  %i.z = icmp ult ptr %i.x, %i.y
  br i1 %i.z, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.aa = call noundef ptr @_Z17luaL_prepbuffsizeP11luaL_Strbufm(ptr noundef nonnull %1, i64 noundef 1) ; 0 uses
  %.pre = load ptr, ptr %1, align 8, !tbaa !20
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph
  %i.ab = phi ptr [ %.pre, %bb.c ], [ %i.x, %.lr.ph ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 1
  store ptr %i.ac, ptr %1, align 8, !tbaa !20
  store i8 0, ptr %i.ab, align 1, !tbaa !13
  %i.ad = icmp sgt i32 %.in, 1
  br i1 %i.ad, label %.lr.ph, label %._crit_edge, !llvm.loop !55

._crit_edge:                                      ; preds = %bb.d, %bb.b
  %i.ae = add nsw i32 %.047124, 1                 ; 17 uses
  switch i32 %i.p, label %default.unreachable152 [
    i32 0, label %bb.e
    i32 1, label %bb.i
    i32 2, label %bb.m
    i32 3, label %bb.s
    i32 4, label %bb.x
    i32 5, label %bb.ab
    i32 6, label %bb.ag
    i32 7, label %bb.aj
    i32 8, label %bb.aj
  ]

bb.e:                                             ; preds = %._crit_edge
  %i.af = call noundef double @_Z16luaL_checknumberP9lua_Statei(ptr noundef %0, i32 noundef %i.ae)
  %i.ag = fptosi double %i.af to i64              ; 9 uses
  %i.ah = icmp slt i32 %i.r, 8
  br i1 %i.ah, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ai = shl nsw i32 %i.r, 3
  %i.aj = add nsw i32 %i.ai, -1
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = shl nuw i64 1, %i.ak                    ; 2 uses
  %i.am = sub nsw i64 0, %i.al
  %.not58 = icmp sle i64 %i.am, %i.ag
  %i.an = icmp sgt i64 %i.al, %i.ag
  %or.cond = and i1 %.not58, %i.an
  br i1 %or.cond, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_Z14luaL_argerrorLP9lua_StateiPKc(ptr noundef %0, i32 noundef %i.ae, ptr noundef nonnull @.str.45) #14
  unreachable

bb.h:                                             ; preds = %bb.f, %bb.e
  %i.ao = load i32, ptr %i.l, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  %i.ap = trunc i64 %i.ag to i8
  %.not.i = icmp eq i32 %i.ao, 0                  ; 2 uses
  %i.aq = add i32 %i.r, -1                        ; 2 uses
  %i.ar = select i1 %.not.i, i32 %i.aq, i32 0
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr inbounds i8, ptr %i.c, i64 %i.as
  store i8 %i.ap, ptr %i.at, align 1, !tbaa !13
  %i.au = icmp sgt i32 %i.r, 1
  br i1 %i.au, label %.lr.ph.i, label %_ZL7packintP11luaL_Strbufyiii.exit

.lr.ph.i:                                         ; preds = %bb.h
  br i1 %.not.i, label %.lr.ph.split.us.preheader.i, label %.lr.ph.split.preheader.i

.lr.ph.split.preheader.i:                         ; preds = %.lr.ph.i
  %wide.trip.count.i = zext nneg i32 %i.r to i64
  %i.av = add nsw i64 %wide.trip.count.i, -1      ; 2 uses
  %xtraiter204 = and i64 %i.av, 3                 ; 3 uses
  %i.aw = add nsw i32 %i.r, -2
  %i.ax = icmp ult i32 %i.aw, 3
  br i1 %i.ax, label %.lr.ph.split.i.epil.preheader, label %.lr.ph.split.preheader.i.new

.lr.ph.split.preheader.i.new:                     ; preds = %.lr.ph.split.preheader.i
  %unroll_iter208 = and i64 %i.av, -4
  br label %.lr.ph.split.i

.lr.ph.split.us.preheader.i:                      ; preds = %.lr.ph.i
  %i.ay = zext nneg i32 %i.aq to i64              ; 6 uses
  %wide.trip.count34.i = zext nneg i32 %i.r to i64
  %i.az = add nsw i64 %wide.trip.count34.i, -1    ; 2 uses
  %xtraiter210 = and i64 %i.az, 3                 ; 3 uses
  %i.ba = add nsw i32 %i.r, -2
  %i.bb = icmp ult i32 %i.ba, 3
  br i1 %i.bb, label %.lr.ph.split.us.i.epil.preheader, label %.lr.ph.split.us.preheader.i.new

.lr.ph.split.us.preheader.i.new:                  ; preds = %.lr.ph.split.us.preheader.i
  %unroll_iter214 = and i64 %i.az, -4
  %invariant.gep235 = getelementptr i8, ptr %i.c, i64 %i.ay
  br label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.split.us.i, %.lr.ph.split.us.preheader.i.new
  %indvars.iv31.i = phi i64 [ 1, %.lr.ph.split.us.preheader.i.new ], [ %indvars.iv.next32.i.3, %.lr.ph.split.us.i ] ; 5 uses
  %.02325.us.i = phi i64 [ %i.ag, %.lr.ph.split.us.preheader.i.new ], [ %i.bl, %.lr.ph.split.us.i ] ; 4 uses
  %niter215 = phi i64 [ 0, %.lr.ph.split.us.preheader.i.new ], [ %niter215.next.3, %.lr.ph.split.us.i ]
  %i.bc = lshr i64 %.02325.us.i, 8
  %i.bd = trunc i64 %i.bc to i8
  %i.be = sub nuw nsw i64 %i.ay, %indvars.iv31.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.be
  store i8 %i.bd, ptr %i.bf, align 1, !tbaa !13
  %indvars.iv.next32.i.neg = xor i64 %indvars.iv31.i, -1
  %i.bg = lshr i64 %.02325.us.i, 16
  %i.bh = trunc i64 %i.bg to i8
  %gep236 = getelementptr i8, ptr %invariant.gep235, i64 %indvars.iv.next32.i.neg
  store i8 %i.bh, ptr %gep236, align 1, !tbaa !13
  %indvars.iv.next32.i.1 = add nuw nsw i64 %indvars.iv31.i, 2
  %i.bi = lshr i64 %.02325.us.i, 24
  %i.bj = trunc i64 %i.bi to i8
  %4 = sub nuw nsw i64 %i.ay, %indvars.iv.next32.i.1
  %i.bk = getelementptr inbounds nuw i8, ptr %i.c, i64 %4
  store i8 %i.bj, ptr %i.bk, align 1, !tbaa !13
  %indvars.iv.next32.i.2 = add nuw nsw i64 %indvars.iv31.i, 3
  %i.bl = lshr i64 %.02325.us.i, 32               ; 3 uses
  %i.bm = trunc i64 %i.bl to i8
  %5 = sub nuw nsw i64 %i.ay, %indvars.iv.next32.i.2
  %i.bn = getelementptr inbounds nuw i8, ptr %i.c, i64 %5
  store i8 %i.bm, ptr %i.bn, align 1, !tbaa !13
  %indvars.iv.next32.i.3 = add nuw nsw i64 %indvars.iv31.i, 4 ; 2 uses
  %niter215.next.3 = add nuw i64 %niter215, 4     ; 2 uses
  %niter215.ncmp.3 = icmp eq i64 %niter215.next.3, %unroll_iter214
  br i1 %niter215.ncmp.3, label %._crit_edge.i.unr-lcssa, label %.lr.ph.split.us.i, !llvm.loop !56

.lr.ph.split.i:                                   ; preds = %.lr.ph.split.i, %.lr.ph.split.preheader.i.new
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.split.preheader.i.new ], [ %indvars.iv.next.i.3, %.lr.ph.split.i ] ; 5 uses
  %.02325.i = phi i64 [ %i.ag, %.lr.ph.split.preheader.i.new ], [ %i.bz, %.lr.ph.split.i ] ; 4 uses
  %niter209 = phi i64 [ 0, %.lr.ph.split.preheader.i.new ], [ %niter209.next.3, %.lr.ph.split.i ]
  %i.bo = lshr i64 %.02325.i, 8
  %i.bp = trunc i64 %i.bo to i8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.i
  store i8 %i.bp, ptr %i.bq, align 1, !tbaa !13
  %i.br = lshr i64 %.02325.i, 16
  %i.bs = trunc i64 %i.br to i8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.i
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 1
  store i8 %i.bs, ptr %i.bu, align 1, !tbaa !13
  %i.bv = lshr i64 %.02325.i, 24
  %i.bw = trunc i64 %i.bv to i8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.i
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 2
  store i8 %i.bw, ptr %i.by, align 1, !tbaa !13
  %i.bz = lshr i64 %.02325.i, 32                  ; 3 uses
  %i.ca = trunc i64 %i.bz to i8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.i
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 3
  store i8 %i.ca, ptr %i.cc, align 1, !tbaa !13
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter209.next.3 = add nuw i64 %niter209, 4     ; 2 uses
  %niter209.ncmp.3 = icmp eq i64 %niter209.next.3, %unroll_iter208
  br i1 %niter209.ncmp.3, label %._crit_edge.thread44.i.unr-lcssa, label %.lr.ph.split.i, !llvm.loop !56

._crit_edge.i.unr-lcssa:                          ; preds = %.lr.ph.split.us.i
  %lcmp.mod212.not = icmp eq i64 %xtraiter210, 0
  br i1 %lcmp.mod212.not, label %._crit_edge.i, label %.lr.ph.split.us.i.epil.preheader

.lr.ph.split.us.i.epil.preheader:                 ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.split.us.preheader.i
  %indvars.iv31.i.epil.init = phi i64 [ 1, %.lr.ph.split.us.preheader.i ], [ %indvars.iv.next32.i.3, %._crit_edge.i.unr-lcssa ]
  %.02325.us.i.epil.init = phi i64 [ %i.ag, %.lr.ph.split.us.preheader.i ], [ %i.bl, %._crit_edge.i.unr-lcssa ]
  %lcmp.mod213 = icmp ne i64 %xtraiter210, 0
  call void @llvm.assume(i1 %lcmp.mod213)
  br label %.lr.ph.split.us.i.epil

.lr.ph.split.us.i.epil:                           ; preds = %.lr.ph.split.us.i.epil, %.lr.ph.split.us.i.epil.preheader
  %indvars.iv31.i.epil = phi i64 [ %indvars.iv31.i.epil.init, %.lr.ph.split.us.i.epil.preheader ], [ %indvars.iv.next32.i.epil, %.lr.ph.split.us.i.epil ] ; 2 uses
  %.02325.us.i.epil = phi i64 [ %.02325.us.i.epil.init, %.lr.ph.split.us.i.epil.preheader ], [ %i.cd, %.lr.ph.split.us.i.epil ]
  %epil.iter211 = phi i64 [ 0, %.lr.ph.split.us.i.epil.preheader ], [ %epil.iter211.next, %.lr.ph.split.us.i.epil ]
  %i.cd = lshr i64 %.02325.us.i.epil, 8           ; 2 uses
  %i.ce = trunc i64 %i.cd to i8
  %i.cf = sub nuw nsw i64 %i.ay, %indvars.iv31.i.epil
  %i.cg = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.cf
  store i8 %i.ce, ptr %i.cg, align 1, !tbaa !13
  %indvars.iv.next32.i.epil = add nuw nsw i64 %indvars.iv31.i.epil, 1
  %epil.iter211.next = add i64 %epil.iter211, 1   ; 2 uses
  %epil.iter211.cmp.not = icmp eq i64 %epil.iter211.next, %xtraiter210
  br i1 %epil.iter211.cmp.not, label %._crit_edge.i, label %.lr.ph.split.us.i.epil, !llvm.loop !57

._crit_edge.i:                                    ; preds = %.lr.ph.split.us.i.epil, %._crit_edge.i.unr-lcssa
  %i.ch = icmp slt i64 %i.ag, 0
  %i.ci = icmp samesign ugt i32 %i.r, 8
  %or.cond.i = and i1 %i.ci, %i.ch
  br i1 %or.cond.i, label %.preheader.i, label %_ZL7packintP11luaL_Strbufyiii.exit

._crit_edge.thread44.i.unr-lcssa:                 ; preds = %.lr.ph.split.i
  %lcmp.mod206.not = icmp eq i64 %xtraiter204, 0
  br i1 %lcmp.mod206.not, label %._crit_edge.thread44.i, label %.lr.ph.split.i.epil.preheader

.lr.ph.split.i.epil.preheader:                    ; preds = %._crit_edge.thread44.i.unr-lcssa, %.lr.ph.split.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 1, %.lr.ph.split.preheader.i ], [ %indvars.iv.next.i.3, %._crit_edge.thread44.i.unr-lcssa ]
  %.02325.i.epil.init = phi i64 [ %i.ag, %.lr.ph.split.preheader.i ], [ %i.bz, %._crit_edge.thread44.i.unr-lcssa ]
  %lcmp.mod207 = icmp ne i64 %xtraiter204, 0
  call void @llvm.assume(i1 %lcmp.mod207)
  br label %.lr.ph.split.i.epil

.lr.ph.split.i.epil:                              ; preds = %.lr.ph.split.i.epil, %.lr.ph.split.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.lr.ph.split.i.epil.preheader ], [ %indvars.iv.next.i.epil, %.lr.ph.split.i.epil ] ; 2 uses
  %.02325.i.epil = phi i64 [ %.02325.i.epil.init, %.lr.ph.split.i.epil.preheader ], [ %i.cj, %.lr.ph.split.i.epil ]
  %epil.iter205 = phi i64 [ 0, %.lr.ph.split.i.epil.preheader ], [ %epil.iter205.next, %.lr.ph.split.i.epil ]
  %i.cj = lshr i64 %.02325.i.epil, 8              ; 2 uses
  %i.ck = trunc i64 %i.cj to i8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.i.epil
  store i8 %i.ck, ptr %i.cl, align 1, !tbaa !13
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter205.next = add i64 %epil.iter205, 1   ; 2 uses
  %epil.iter205.cmp.not = icmp eq i64 %epil.iter205.next, %xtraiter204
  br i1 %epil.iter205.cmp.not, label %._crit_edge.thread44.i, label %.lr.ph.split.i.epil, !llvm.loop !58

._crit_edge.thread44.i:                           ; preds = %.lr.ph.split.i.epil, %._crit_edge.thread44.i.unr-lcssa
  %i.cm = icmp slt i64 %i.ag, 0
  %i.cn = icmp samesign ugt i32 %i.r, 8
  %or.cond45.i = and i1 %i.cn, %i.cm
  br i1 %or.cond45.i, label %.loopexit.sink.split.i, label %_ZL7packintP11luaL_Strbufyiii.exit

.preheader.i:                                     ; preds = %._crit_edge.i
  %i.co = add nsw i64 %i.ay, -8
  %i.cp = add nsw i32 %i.r, -9
  %i.cq = zext nneg i32 %i.cp to i64
  %i.cr = sub nsw i64 %i.co, %i.cq
  br label %.loopexit.sink.split.i

.loopexit.sink.split.i:                           ; preds = %.preheader.i, %._crit_edge.thread44.i
  %.sink.i = phi i64 [ %i.cr, %.preheader.i ], [ 8, %._crit_edge.thread44.i ]
  %scevgep.i = getelementptr i8, ptr %i.c, i64 %.sink.i
  %i.cs = add nsw i32 %i.r, -8
  %i.ct = zext nneg i32 %i.cs to i64
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.i, i8 -1, i64 %i.ct, i1 false), !tbaa !13
  br label %_ZL7packintP11luaL_Strbufyiii.exit

_ZL7packintP11luaL_Strbufyiii.exit:               ; preds = %bb.h, %._crit_edge.i, %._crit_edge.thread44.i, %.loopexit.sink.split.i
  %i.cu = sext i32 %i.r to i64
  call void @_Z15luaL_addlstringP11luaL_StrbufPKcm(ptr noundef nonnull %1, ptr noundef nonnull %i.c, i64 noundef %i.cu)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  br label %bb.aj

bb.i:                                             ; preds = %._crit_edge
  %i.cv = call noundef double @_Z16luaL_checknumberP9lua_Statei(ptr noundef %0, i32 noundef %i.ae)
  %i.cw = fptosi double %i.cv to i64              ; 6 uses
  %i.cx = icmp slt i32 %i.r, 8
  br i1 %i.cx, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.cy = shl nsw i32 %i.r, 3
  %i.cz = zext nneg i32 %i.cy to i64
  %.highbits57 = lshr i64 %i.cw, %i.cz
  %i.da = icmp eq i64 %.highbits57, 0
  br i1 %i.da, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_Z14luaL_argerrorLP9lua_StateiPKc(ptr noundef %0, i32 noundef %i.ae, ptr noundef nonnull @.str.46) #14
  unreachable

bb.l:                                             ; preds = %bb.j, %bb.i
  %i.db = load i32, ptr %i.l, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.dc = trunc i64 %i.cw to i8
  %.not.i59 = icmp eq i32 %i.db, 0                ; 2 uses
  %i.dd = add i32 %i.r, -1                        ; 2 uses
  %i.de = select i1 %.not.i59, i32 %i.dd, i32 0
  %i.df = sext i32 %i.de to i64
  %i.dg = getelementptr inbounds i8, ptr %i.b, i64 %i.df
  store i8 %i.dc, ptr %i.dg, align 1, !tbaa !13
  %i.dh = icmp sgt i32 %i.r, 1
  br i1 %i.dh, label %.lr.ph.i60, label %_ZL7packintP11luaL_Strbufyiii.exit83

.lr.ph.i60:                                       ; preds = %bb.l
  br i1 %.not.i59, label %.lr.ph.split.us.preheader.i73, label %.lr.ph.split.preheader.i61

.lr.ph.split.preheader.i61:                       ; preds = %.lr.ph.i60
  %wide.trip.count.i62 = zext nneg i32 %i.r to i64
  %i.di = add nsw i64 %wide.trip.count.i62, -1    ; 2 uses
  %xtraiter192 = and i64 %i.di, 3                 ; 3 uses
  %i.dj = add nsw i32 %i.r, -2
  %i.dk = icmp ult i32 %i.dj, 3
  br i1 %i.dk, label %.lr.ph.split.i63.epil.preheader, label %.lr.ph.split.preheader.i61.new

.lr.ph.split.preheader.i61.new:                   ; preds = %.lr.ph.split.preheader.i61
  %unroll_iter196 = and i64 %i.di, -4
  br label %.lr.ph.split.i63

.lr.ph.split.us.preheader.i73:                    ; preds = %.lr.ph.i60
  %i.dl = zext nneg i32 %i.dd to i64              ; 5 uses
  %wide.trip.count34.i74 = zext nneg i32 %i.r to i64
  %i.dm = add nsw i64 %wide.trip.count34.i74, -1  ; 2 uses
  %xtraiter198 = and i64 %i.dm, 3                 ; 3 uses
  %i.dn = add nsw i32 %i.r, -2
  %i.do = icmp ult i32 %i.dn, 3
  br i1 %i.do, label %.lr.ph.split.us.i75.epil.preheader, label %.lr.ph.split.us.preheader.i73.new

.lr.ph.split.us.preheader.i73.new:                ; preds = %.lr.ph.split.us.preheader.i73
  %unroll_iter202 = and i64 %i.dm, -4
  %invariant.gep233 = getelementptr i8, ptr %i.b, i64 %i.dl
  br label %.lr.ph.split.us.i75

.lr.ph.split.us.i75:                              ; preds = %.lr.ph.split.us.i75, %.lr.ph.split.us.preheader.i73.new
  %indvars.iv31.i76 = phi i64 [ 1, %.lr.ph.split.us.preheader.i73.new ], [ %indvars.iv.next32.i78.3, %.lr.ph.split.us.i75 ] ; 5 uses
  %.02325.us.i77 = phi i64 [ %i.cw, %.lr.ph.split.us.preheader.i73.new ], [ %i.dy, %.lr.ph.split.us.i75 ] ; 4 uses
  %niter203 = phi i64 [ 0, %.lr.ph.split.us.preheader.i73.new ], [ %niter203.next.3, %.lr.ph.split.us.i75 ]
  %i.dp = lshr i64 %.02325.us.i77, 8
  %i.dq = trunc i64 %i.dp to i8
  %i.dr = sub nuw nsw i64 %i.dl, %indvars.iv31.i76
  %i.ds = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.dr
  store i8 %i.dq, ptr %i.ds, align 1, !tbaa !13
  %indvars.iv.next32.i78.neg = xor i64 %indvars.iv31.i76, -1
  %i.dt = lshr i64 %.02325.us.i77, 16
  %i.du = trunc i64 %i.dt to i8
  %gep234 = getelementptr i8, ptr %invariant.gep233, i64 %indvars.iv.next32.i78.neg
  store i8 %i.du, ptr %gep234, align 1, !tbaa !13
  %indvars.iv.next32.i78.1 = add nuw nsw i64 %indvars.iv31.i76, 2
  %i.dv = lshr i64 %.02325.us.i77, 24
  %i.dw = trunc i64 %i.dv to i8
  %6 = sub nuw nsw i64 %i.dl, %indvars.iv.next32.i78.1
  %i.dx = getelementptr inbounds nuw i8, ptr %i.b, i64 %6
  store i8 %i.dw, ptr %i.dx, align 1, !tbaa !13
  %indvars.iv.next32.i78.2 = add nuw nsw i64 %indvars.iv31.i76, 3
  %i.dy = lshr i64 %.02325.us.i77, 32             ; 3 uses
  %i.dz = trunc i64 %i.dy to i8
  %7 = sub nuw nsw i64 %i.dl, %indvars.iv.next32.i78.2
  %i.ea = getelementptr inbounds nuw i8, ptr %i.b, i64 %7
  store i8 %i.dz, ptr %i.ea, align 1, !tbaa !13
  %indvars.iv.next32.i78.3 = add nuw nsw i64 %indvars.iv31.i76, 4 ; 2 uses
  %niter203.next.3 = add nuw i64 %niter203, 4     ; 2 uses
  %niter203.ncmp.3 = icmp eq i64 %niter203.next.3, %unroll_iter202
  br i1 %niter203.ncmp.3, label %_ZL7packintP11luaL_Strbufyiii.exit83.loopexit.unr-lcssa, label %.lr.ph.split.us.i75, !llvm.loop !56

.lr.ph.split.i63:                                 ; preds = %.lr.ph.split.i63, %.lr.ph.split.preheader.i61.new
  %indvars.iv.i64 = phi i64 [ 1, %.lr.ph.split.preheader.i61.new ], [ %indvars.iv.next.i66.3, %.lr.ph.split.i63 ] ; 5 uses
  %.02325.i65 = phi i64 [ %i.cw, %.lr.ph.split.preheader.i61.new ], [ %i.em, %.lr.ph.split.i63 ] ; 4 uses
  %niter197 = phi i64 [ 0, %.lr.ph.split.preheader.i61.new ], [ %niter197.next.3, %.lr.ph.split.i63 ]
  %i.eb = lshr i64 %.02325.i65, 8
  %i.ec = trunc i64 %i.eb to i8
  %i.ed = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.i64
  store i8 %i.ec, ptr %i.ed, align 1, !tbaa !13
  %i.ee = lshr i64 %.02325.i65, 16
  %i.ef = trunc i64 %i.ee to i8
  %i.eg = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.i64
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 1
  store i8 %i.ef, ptr %i.eh, align 1, !tbaa !13
  %i.ei = lshr i64 %.02325.i65, 24
  %i.ej = trunc i64 %i.ei to i8
  %i.ek = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.i64
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 2
  store i8 %i.ej, ptr %i.el, align 1, !tbaa !13
  %i.em = lshr i64 %.02325.i65, 32                ; 3 uses
  %i.en = trunc i64 %i.em to i8
  %i.eo = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.i64
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 3
  store i8 %i.en, ptr %i.ep, align 1, !tbaa !13
  %indvars.iv.next.i66.3 = add nuw nsw i64 %indvars.iv.i64, 4 ; 2 uses
  %niter197.next.3 = add nuw i64 %niter197, 4     ; 2 uses
  %niter197.ncmp.3 = icmp eq i64 %niter197.next.3, %unroll_iter196
  br i1 %niter197.ncmp.3, label %_ZL7packintP11luaL_Strbufyiii.exit83.loopexit171.unr-lcssa, label %.lr.ph.split.i63, !llvm.loop !56

_ZL7packintP11luaL_Strbufyiii.exit83.loopexit.unr-lcssa: ; preds = %.lr.ph.split.us.i75
  %lcmp.mod200.not = icmp eq i64 %xtraiter198, 0
  br i1 %lcmp.mod200.not, label %_ZL7packintP11luaL_Strbufyiii.exit83, label %.lr.ph.split.us.i75.epil.preheader

.lr.ph.split.us.i75.epil.preheader:               ; preds = %_ZL7packintP11luaL_Strbufyiii.exit83.loopexit.unr-lcssa, %.lr.ph.split.us.preheader.i73
  %indvars.iv31.i76.epil.init = phi i64 [ 1, %.lr.ph.split.us.preheader.i73 ], [ %indvars.iv.next32.i78.3, %_ZL7packintP11luaL_Strbufyiii.exit83.loopexit.unr-lcssa ]
  %.02325.us.i77.epil.init = phi i64 [ %i.cw, %.lr.ph.split.us.preheader.i73 ], [ %i.dy, %_ZL7packintP11luaL_Strbufyiii.exit83.loopexit.unr-lcssa ]
  %lcmp.mod201 = icmp ne i64 %xtraiter198, 0
  call void @llvm.assume(i1 %lcmp.mod201)
  br label %.lr.ph.split.us.i75.epil

.lr.ph.split.us.i75.epil:                         ; preds = %.lr.ph.split.us.i75.epil, %.lr.ph.split.us.i75.epil.preheader
  %indvars.iv31.i76.epil = phi i64 [ %indvars.iv31.i76.epil.init, %.lr.ph.split.us.i75.epil.preheader ], [ %indvars.iv.next32.i78.epil, %.lr.ph.split.us.i75.epil ] ; 2 uses
  %.02325.us.i77.epil = phi i64 [ %.02325.us.i77.epil.init, %.lr.ph.split.us.i75.epil.preheader ], [ %i.eq, %.lr.ph.split.us.i75.epil ]
  %epil.iter199 = phi i64 [ 0, %.lr.ph.split.us.i75.epil.preheader ], [ %epil.iter199.next, %.lr.ph.split.us.i75.epil ]
  %i.eq = lshr i64 %.02325.us.i77.epil, 8         ; 2 uses
  %i.er = trunc i64 %i.eq to i8
  %i.es = sub nuw nsw i64 %i.dl, %indvars.iv31.i76.epil
  %i.et = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.es
  store i8 %i.er, ptr %i.et, align 1, !tbaa !13
  %indvars.iv.next32.i78.epil = add nuw nsw i64 %indvars.iv31.i76.epil, 1
  %epil.iter199.next = add i64 %epil.iter199, 1   ; 2 uses
  %epil.iter199.cmp.not = icmp eq i64 %epil.iter199.next, %xtraiter198
  br i1 %epil.iter199.cmp.not, label %_ZL7packintP11luaL_Strbufyiii.exit83, label %.lr.ph.split.us.i75.epil, !llvm.loop !59

_ZL7packintP11luaL_Strbufyiii.exit83.loopexit171.unr-lcssa: ; preds = %.lr.ph.split.i63
  %lcmp.mod194.not = icmp eq i64 %xtraiter192, 0
  br i1 %lcmp.mod194.not, label %_ZL7packintP11luaL_Strbufyiii.exit83, label %.lr.ph.split.i63.epil.preheader

.lr.ph.split.i63.epil.preheader:                  ; preds = %_ZL7packintP11luaL_Strbufyiii.exit83.loopexit171.unr-lcssa, %.lr.ph.split.preheader.i61
  %indvars.iv.i64.epil.init = phi i64 [ 1, %.lr.ph.split.preheader.i61 ], [ %indvars.iv.next.i66.3, %_ZL7packintP11luaL_Strbufyiii.exit83.loopexit171.unr-lcssa ]
  %.02325.i65.epil.init = phi i64 [ %i.cw, %.lr.ph.split.preheader.i61 ], [ %i.em, %_ZL7packintP11luaL_Strbufyiii.exit83.loopexit171.unr-lcssa ]
  %lcmp.mod195 = icmp ne i64 %xtraiter192, 0
  call void @llvm.assume(i1 %lcmp.mod195)
  br label %.lr.ph.split.i63.epil

.lr.ph.split.i63.epil:                            ; preds = %.lr.ph.split.i63.epil, %.lr.ph.split.i63.epil.preheader
  %indvars.iv.i64.epil = phi i64 [ %indvars.iv.i64.epil.init, %.lr.ph.split.i63.epil.preheader ], [ %indvars.iv.next.i66.epil, %.lr.ph.split.i63.epil ] ; 2 uses
  %.02325.i65.epil = phi i64 [ %.02325.i65.epil.init, %.lr.ph.split.i63.epil.preheader ], [ %i.eu, %.lr.ph.split.i63.epil ]
  %epil.iter193 = phi i64 [ 0, %.lr.ph.split.i63.epil.preheader ], [ %epil.iter193.next, %.lr.ph.split.i63.epil ]
  %i.eu = lshr i64 %.02325.i65.epil, 8            ; 2 uses
  %i.ev = trunc i64 %i.eu to i8
  %i.ew = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.i64.epil
  store i8 %i.ev, ptr %i.ew, align 1, !tbaa !13
  %indvars.iv.next.i66.epil = add nuw nsw i64 %indvars.iv.i64.epil, 1
  %epil.iter193.next = add i64 %epil.iter193, 1   ; 2 uses
  %epil.iter193.cmp.not = icmp eq i64 %epil.iter193.next, %xtraiter192
  br i1 %epil.iter193.cmp.not, label %_ZL7packintP11luaL_Strbufyiii.exit83, label %.lr.ph.split.i63.epil, !llvm.loop !60

_ZL7packintP11luaL_Strbufyiii.exit83:             ; preds = %_ZL7packintP11luaL_Strbufyiii.exit83.loopexit171.unr-lcssa, %.lr.ph.split.i63.epil, %_ZL7packintP11luaL_Strbufyiii.exit83.loopexit.unr-lcssa, %.lr.ph.split.us.i75.epil, %bb.l
  %i.ex = sext i32 %i.r to i64
  call void @_Z15luaL_addlstringP11luaL_StrbufPKcm(ptr noundef nonnull %1, ptr noundef nonnull %i.b, i64 noundef %i.ex)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  br label %bb.aj

bb.m:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #13
  %i.ey = call noundef double @_Z16luaL_checknumberP9lua_Statei(ptr noundef %0, i32 noundef %i.ae) ; 3 uses
  switch i32 %i.r, label %bb.p [
    i32 4, label %bb.n
    i32 8, label %bb.o
  ]

bb.n:                                             ; preds = %bb.m
  %i.ez = fptrunc double %i.ey to float
  store volatile float %i.ez, ptr %3, align 8, !tbaa !13
  br label %bb.q

bb.o:                                             ; preds = %bb.m
  store volatile double %i.ey, ptr %3, align 8, !tbaa !13
  br label %bb.q

bb.p:                                             ; preds = %bb.m
  store volatile double %i.ey, ptr %3, align 8, !tbaa !13
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p, %bb.n
  %i.fa = load i32, ptr %i.l, align 8, !tbaa !39
  %i.fb = icmp eq i32 %i.fa, 1
  %.not1218.i = icmp eq i32 %i.r, 0               ; 2 uses
  br i1 %i.fb, label %.preheader.i86, label %bb.r

.preheader.i86:                                   ; preds = %bb.q
  br i1 %.not1218.i, label %_ZL14copywithendianPVcPVKcii.exit, label %.lr.ph22.i.preheader

.lr.ph22.i.preheader:                             ; preds = %.preheader.i86
  %i.fc = add i32 %i.r, -1
  %xtraiter189 = and i32 %i.r, 7                  ; 2 uses
  %lcmp.mod190.not = icmp eq i32 %xtraiter189, 0
  br i1 %lcmp.mod190.not, label %.lr.ph22.i.prol.loopexit, label %.lr.ph22.i.prol

.lr.ph22.i.prol:                                  ; preds = %.lr.ph22.i.preheader, %.lr.ph22.i.prol
  %.021.i.prol = phi ptr [ %i.fg, %.lr.ph22.i.prol ], [ %i.g, %.lr.ph22.i.preheader ] ; 2 uses
  %.0820.i.prol = phi i32 [ %i.fd, %.lr.ph22.i.prol ], [ %i.r, %.lr.ph22.i.preheader ]
  %.01019.i.prol = phi ptr [ %i.fe, %.lr.ph22.i.prol ], [ %3, %.lr.ph22.i.preheader ] ; 2 uses
  %prol.iter191 = phi i32 [ %prol.iter191.next, %.lr.ph22.i.prol ], [ 0, %.lr.ph22.i.preheader ]
  %i.fd = add nsw i32 %.0820.i.prol, -1           ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.01019.i.prol, i64 1 ; 2 uses
  %i.ff = load volatile i8, ptr %.01019.i.prol, align 1, !tbaa !13
  %i.fg = getelementptr inbounds nuw i8, ptr %.021.i.prol, i64 1 ; 2 uses
  store volatile i8 %i.ff, ptr %.021.i.prol, align 1, !tbaa !13
  %prol.iter191.next = add i32 %prol.iter191, 1   ; 2 uses
  %prol.iter191.cmp.not = icmp eq i32 %prol.iter191.next, %xtraiter189
  br i1 %prol.iter191.cmp.not, label %.lr.ph22.i.prol.loopexit, label %.lr.ph22.i.prol, !llvm.loop !61

.lr.ph22.i.prol.loopexit:                         ; preds = %.lr.ph22.i.prol, %.lr.ph22.i.preheader
  %.021.i.unr = phi ptr [ %i.g, %.lr.ph22.i.preheader ], [ %i.fg, %.lr.ph22.i.prol ]
  %.0820.i.unr = phi i32 [ %i.r, %.lr.ph22.i.preheader ], [ %i.fd, %.lr.ph22.i.prol ]
  %.01019.i.unr = phi ptr [ %3, %.lr.ph22.i.preheader ], [ %i.fe, %.lr.ph22.i.prol ]
  %i.fh = icmp ult i32 %i.fc, 7
  br i1 %i.fh, label %_ZL14copywithendianPVcPVKcii.exit, label %.lr.ph22.i

.lr.ph22.i:                                       ; preds = %.lr.ph22.i.prol.loopexit, %.lr.ph22.i
  %.021.i = phi ptr [ %i.gg, %.lr.ph22.i ], [ %.021.i.unr, %.lr.ph22.i.prol.loopexit ] ; 9 uses
  %.0820.i = phi i32 [ %i.gd, %.lr.ph22.i ], [ %.0820.i.unr, %.lr.ph22.i.prol.loopexit ]
  %.01019.i = phi ptr [ %i.ge, %.lr.ph22.i ], [ %.01019.i.unr, %.lr.ph22.i.prol.loopexit ] ; 9 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %.01019.i, i64 1
  %i.fj = load volatile i8, ptr %.01019.i, align 1, !tbaa !13
  %i.fk = getelementptr inbounds nuw i8, ptr %.021.i, i64 1
  store volatile i8 %i.fj, ptr %.021.i, align 1, !tbaa !13
  %i.fl = getelementptr inbounds nuw i8, ptr %.01019.i, i64 2
  %i.fm = load volatile i8, ptr %i.fi, align 1, !tbaa !13
  %i.fn = getelementptr inbounds nuw i8, ptr %.021.i, i64 2
  store volatile i8 %i.fm, ptr %i.fk, align 1, !tbaa !13
  %i.fo = getelementptr inbounds nuw i8, ptr %.01019.i, i64 3
  %i.fp = load volatile i8, ptr %i.fl, align 1, !tbaa !13
  %i.fq = getelementptr inbounds nuw i8, ptr %.021.i, i64 3
  store volatile i8 %i.fp, ptr %i.fn, align 1, !tbaa !13
  %i.fr = getelementptr inbounds nuw i8, ptr %.01019.i, i64 4
  %i.fs = load volatile i8, ptr %i.fo, align 1, !tbaa !13
  %i.ft = getelementptr inbounds nuw i8, ptr %.021.i, i64 4
  store volatile i8 %i.fs, ptr %i.fq, align 1, !tbaa !13
  %i.fu = getelementptr inbounds nuw i8, ptr %.01019.i, i64 5
  %i.fv = load volatile i8, ptr %i.fr, align 1, !tbaa !13
  %i.fw = getelementptr inbounds nuw i8, ptr %.021.i, i64 5
  store volatile i8 %i.fv, ptr %i.ft, align 1, !tbaa !13
  %i.fx = getelementptr inbounds nuw i8, ptr %.01019.i, i64 6
  %i.fy = load volatile i8, ptr %i.fu, align 1, !tbaa !13
  %i.fz = getelementptr inbounds nuw i8, ptr %.021.i, i64 6
  store volatile i8 %i.fy, ptr %i.fw, align 1, !tbaa !13
  %i.ga = getelementptr inbounds nuw i8, ptr %.01019.i, i64 7
  %i.gb = load volatile i8, ptr %i.fx, align 1, !tbaa !13
  %i.gc = getelementptr inbounds nuw i8, ptr %.021.i, i64 7
  store volatile i8 %i.gb, ptr %i.fz, align 1, !tbaa !13
  %i.gd = add nsw i32 %.0820.i, -8                ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %.01019.i, i64 8
  %i.gf = load volatile i8, ptr %i.ga, align 1, !tbaa !13
  %i.gg = getelementptr inbounds nuw i8, ptr %.021.i, i64 8
  store volatile i8 %i.gf, ptr %i.gc, align 1, !tbaa !13
  %.not12.i.7 = icmp eq i32 %i.gd, 0
  br i1 %.not12.i.7, label %_ZL14copywithendianPVcPVKcii.exit, label %.lr.ph22.i, !llvm.loop !0

bb.r:                                             ; preds = %bb.q
  br i1 %.not1218.i, label %_ZL14copywithendianPVcPVKcii.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.r
  %i.gh = sext i32 %i.r to i64
  %i.gi = getelementptr i8, ptr %i.g, i64 %i.gh   ; 2 uses
  %i.gj = add i32 %i.r, -1
  %xtraiter187 = and i32 %i.r, 7                  ; 2 uses
  %lcmp.mod188.not = icmp eq i32 %xtraiter187, 0
  br i1 %lcmp.mod188.not, label %.lr.ph.i84.prol.loopexit, label %.lr.ph.i84.prol

.lr.ph.i84.prol:                                  ; preds = %.lr.ph.preheader.i, %.lr.ph.i84.prol
  %.pn17.i.prol = phi ptr [ %.1.i.prol, %.lr.ph.i84.prol ], [ %i.gi, %.lr.ph.preheader.i ]
  %.1916.i.prol = phi i32 [ %i.gk, %.lr.ph.i84.prol ], [ %i.r, %.lr.ph.preheader.i ]
  %.11115.i.prol = phi ptr [ %i.gl, %.lr.ph.i84.prol ], [ %3, %.lr.ph.preheader.i ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i84.prol ], [ 0, %.lr.ph.preheader.i ]
  %.1.i.prol = getelementptr i8, ptr %.pn17.i.prol, i64 -1 ; 3 uses
  %i.gk = add nsw i32 %.1916.i.prol, -1           ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %.11115.i.prol, i64 1 ; 2 uses
  %i.gm = load volatile i8, ptr %.11115.i.prol, align 1, !tbaa !13
  store volatile i8 %i.gm, ptr %.1.i.prol, align 1, !tbaa !13
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter187
  br i1 %prol.iter.cmp.not, label %.lr.ph.i84.prol.loopexit, label %.lr.ph.i84.prol, !llvm.loop !62

.lr.ph.i84.prol.loopexit:                         ; preds = %.lr.ph.i84.prol, %.lr.ph.preheader.i
  %.pn17.i.unr = phi ptr [ %i.gi, %.lr.ph.preheader.i ], [ %.1.i.prol, %.lr.ph.i84.prol ]
  %.1916.i.unr = phi i32 [ %i.r, %.lr.ph.preheader.i ], [ %i.gk, %.lr.ph.i84.prol ]
  %.11115.i.unr = phi ptr [ %3, %.lr.ph.preheader.i ], [ %i.gl, %.lr.ph.i84.prol ]
  %i.gn = icmp ult i32 %i.gj, 7
  br i1 %i.gn, label %_ZL14copywithendianPVcPVKcii.exit, label %.lr.ph.i84

.lr.ph.i84:                                       ; preds = %.lr.ph.i84.prol.loopexit, %.lr.ph.i84
  %.pn17.i = phi ptr [ %.1.i.7, %.lr.ph.i84 ], [ %.pn17.i.unr, %.lr.ph.i84.prol.loopexit ] ; 8 uses
  %.1916.i = phi i32 [ %i.hc, %.lr.ph.i84 ], [ %.1916.i.unr, %.lr.ph.i84.prol.loopexit ]
  %.11115.i = phi ptr [ %i.hd, %.lr.ph.i84 ], [ %.11115.i.unr, %.lr.ph.i84.prol.loopexit ] ; 9 uses
  %.1.i = getelementptr i8, ptr %.pn17.i, i64 -1
  %i.go = getelementptr inbounds nuw i8, ptr %.11115.i, i64 1
  %i.gp = load volatile i8, ptr %.11115.i, align 1, !tbaa !13
  store volatile i8 %i.gp, ptr %.1.i, align 1, !tbaa !13
  %.1.i.1 = getelementptr i8, ptr %.pn17.i, i64 -2
  %i.gq = getelementptr inbounds nuw i8, ptr %.11115.i, i64 2
  %i.gr = load volatile i8, ptr %i.go, align 1, !tbaa !13
  store volatile i8 %i.gr, ptr %.1.i.1, align 1, !tbaa !13
  %.1.i.2 = getelementptr i8, ptr %.pn17.i, i64 -3
  %i.gs = getelementptr inbounds nuw i8, ptr %.11115.i, i64 3
  %i.gt = load volatile i8, ptr %i.gq, align 1, !tbaa !13
  store volatile i8 %i.gt, ptr %.1.i.2, align 1, !tbaa !13
  %.1.i.3 = getelementptr i8, ptr %.pn17.i, i64 -4
  %i.gu = getelementptr inbounds nuw i8, ptr %.11115.i, i64 4
  %i.gv = load volatile i8, ptr %i.gs, align 1, !tbaa !13
  store volatile i8 %i.gv, ptr %.1.i.3, align 1, !tbaa !13
  %.1.i.4 = getelementptr i8, ptr %.pn17.i, i64 -5
  %i.gw = getelementptr inbounds nuw i8, ptr %.11115.i, i64 5
  %i.gx = load volatile i8, ptr %i.gu, align 1, !tbaa !13
  store volatile i8 %i.gx, ptr %.1.i.4, align 1, !tbaa !13
  %.1.i.5 = getelementptr i8, ptr %.pn17.i, i64 -6
  %i.gy = getelementptr inbounds nuw i8, ptr %.11115.i, i64 6
  %i.gz = load volatile i8, ptr %i.gw, align 1, !tbaa !13
  store volatile i8 %i.gz, ptr %.1.i.5, align 1, !tbaa !13
  %.1.i.6 = getelementptr i8, ptr %.pn17.i, i64 -7
  %i.ha = getelementptr inbounds nuw i8, ptr %.11115.i, i64 7
  %i.hb = load volatile i8, ptr %i.gy, align 1, !tbaa !13
  store volatile i8 %i.hb, ptr %.1.i.6, align 1, !tbaa !13
  %.1.i.7 = getelementptr i8, ptr %.pn17.i, i64 -8 ; 2 uses
  %i.hc = add nsw i32 %.1916.i, -8                ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %.11115.i, i64 8
  %i.he = load volatile i8, ptr %i.ha, align 1, !tbaa !13
  store volatile i8 %i.he, ptr %.1.i.7, align 1, !tbaa !13
  %.not.i85.7 = icmp eq i32 %i.hc, 0
  br i1 %.not.i85.7, label %_ZL14copywithendianPVcPVKcii.exit, label %.lr.ph.i84, !llvm.loop !1

_ZL14copywithendianPVcPVKcii.exit:                ; preds = %.lr.ph.i84.prol.loopexit, %.lr.ph.i84, %.lr.ph22.i.prol.loopexit, %.lr.ph22.i, %.preheader.i86, %bb.r
  %i.hf = sext i32 %i.r to i64
  call void @_Z15luaL_addlstringP11luaL_StrbufPKcm(ptr noundef nonnull %1, ptr noundef nonnull %i.g, i64 noundef %i.hf)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  br label %bb.aj

bb.s:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #13
  %i.hg = call noundef ptr @_Z17luaL_checklstringP9lua_StateiPm(ptr noundef %0, i32 noundef %i.ae, ptr noundef nonnull %i.h)
  %i.hh = load i64, ptr %i.h, align 8, !tbaa !12  ; 2 uses
  %i.hi = sext i32 %i.r to i64                    ; 3 uses
  %.not56 = icmp ugt i64 %i.hh, %i.hi
  br i1 %.not56, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  call void @_Z14luaL_argerrorLP9lua_StateiPKc(ptr noundef %0, i32 noundef %i.ae, ptr noundef nonnull @.str.47) #14
  unreachable

bb.u:                                             ; preds = %bb.s
  call void @_Z15luaL_addlstringP11luaL_StrbufPKcm(ptr noundef nonnull %1, ptr noundef %i.hg, i64 noundef %i.hh)
  %i.hj = load i64, ptr %i.h, align 8, !tbaa !12  ; 2 uses
  %i.hk = add i64 %i.hj, 1
  store i64 %i.hk, ptr %i.h, align 8, !tbaa !12
  %i.hl = icmp ult i64 %i.hj, %i.hi
  br i1 %i.hl, label %.lr.ph121, label %._crit_edge122

.lr.ph121:                                        ; preds = %bb.u, %bb.w
  %i.hm = load ptr, ptr %1, align 8, !tbaa !20    ; 2 uses
  %i.hn = load ptr, ptr %i.o, align 8, !tbaa !21
  %i.ho = icmp ult ptr %i.hm, %i.hn
  br i1 %i.ho, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.lr.ph121
  %i.hp = call noundef ptr @_Z17luaL_prepbuffsizeP11luaL_Strbufm(ptr noundef nonnull %1, i64 noundef 1) ; 0 uses
  %.pre143 = load ptr, ptr %1, align 8, !tbaa !20
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %.lr.ph121
  %i.hq = phi ptr [ %.pre143, %bb.v ], [ %i.hm, %.lr.ph121 ] ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 1
  store ptr %i.hr, ptr %1, align 8, !tbaa !20
  store i8 0, ptr %i.hq, align 1, !tbaa !13
  %i.hs = load i64, ptr %i.h, align 8, !tbaa !12  ; 2 uses
  %i.ht = add i64 %i.hs, 1
  store i64 %i.ht, ptr %i.h, align 8, !tbaa !12
  %i.hu = icmp ult i64 %i.hs, %i.hi
  br i1 %i.hu, label %.lr.ph121, label %._crit_edge122, !llvm.loop !63

._crit_edge122:                                   ; preds = %bb.w, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #13
  br label %bb.aj

bb.x:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #13
  %i.hv = call noundef ptr @_Z17luaL_checklstringP9lua_StateiPm(ptr noundef %0, i32 noundef %i.ae, ptr noundef nonnull %i.i)
  %i.hw = icmp sgt i32 %i.r, 7
  %.pre142 = load i64, ptr %i.i, align 8, !tbaa !12 ; 6 uses
  br i1 %i.hw, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.hx = shl nsw i32 %i.r, 3
  %i.hy = zext nneg i32 %i.hx to i64
  %.highbits = lshr i64 %.pre142, %i.hy
  %i.hz = icmp eq i64 %.highbits, 0
  br i1 %i.hz, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @_Z14luaL_argerrorLP9lua_StateiPKc(ptr noundef %0, i32 noundef %i.ae, ptr noundef nonnull @.str.48) #14
  unreachable

bb.aa:                                            ; preds = %bb.x, %bb.y
  %i.ia = load i32, ptr %i.l, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.ib = trunc i64 %.pre142 to i8
  %.not.i87 = icmp eq i32 %i.ia, 0                ; 2 uses
  %i.ic = add i32 %i.r, -1                        ; 2 uses
  %i.id = select i1 %.not.i87, i32 %i.ic, i32 0
  %i.ie = sext i32 %i.id to i64
  %i.if = getelementptr inbounds i8, ptr %i.a, i64 %i.ie
  store i8 %i.ib, ptr %i.if, align 1, !tbaa !13
  %i.ig = icmp sgt i32 %i.r, 1
  br i1 %i.ig, label %.lr.ph.i88, label %_ZL7packintP11luaL_Strbufyiii.exit111

.lr.ph.i88:                                       ; preds = %bb.aa
  br i1 %.not.i87, label %.lr.ph.split.us.preheader.i101, label %.lr.ph.split.preheader.i89

.lr.ph.split.preheader.i89:                       ; preds = %.lr.ph.i88
  %wide.trip.count.i90 = zext nneg i32 %i.r to i64
  %i.ih = add nsw i64 %wide.trip.count.i90, -1    ; 2 uses
  %xtraiter = and i64 %i.ih, 3                    ; 3 uses
  %i.ii = add nsw i32 %i.r, -2
  %i.ij = icmp ult i32 %i.ii, 3
  br i1 %i.ij, label %.lr.ph.split.i91.epil.preheader, label %.lr.ph.split.preheader.i89.new

.lr.ph.split.preheader.i89.new:                   ; preds = %.lr.ph.split.preheader.i89
  %unroll_iter = and i64 %i.ih, -4
  br label %.lr.ph.split.i91

.lr.ph.split.us.preheader.i101:                   ; preds = %.lr.ph.i88
  %i.ik = zext nneg i32 %i.ic to i64              ; 5 uses
  %wide.trip.count34.i102 = zext nneg i32 %i.r to i64
  %i.il = add nsw i64 %wide.trip.count34.i102, -1 ; 2 uses
  %xtraiter181 = and i64 %i.il, 3                 ; 3 uses
  %i.im = add nsw i32 %i.r, -2
  %i.in = icmp ult i32 %i.im, 3
  br i1 %i.in, label %.lr.ph.split.us.i103.epil.preheader, label %.lr.ph.split.us.preheader.i101.new

.lr.ph.split.us.preheader.i101.new:               ; preds = %.lr.ph.split.us.preheader.i101
  %unroll_iter185 = and i64 %i.il, -4
  %invariant.gep = getelementptr i8, ptr %i.a, i64 %i.ik
  br label %.lr.ph.split.us.i103

.lr.ph.split.us.i103:                             ; preds = %.lr.ph.split.us.i103, %.lr.ph.split.us.preheader.i101.new
  %indvars.iv31.i104 = phi i64 [ 1, %.lr.ph.split.us.preheader.i101.new ], [ %indvars.iv.next32.i106.3, %.lr.ph.split.us.i103 ] ; 5 uses
  %.02325.us.i105 = phi i64 [ %.pre142, %.lr.ph.split.us.preheader.i101.new ], [ %i.ix, %.lr.ph.split.us.i103 ] ; 4 uses
  %niter186 = phi i64 [ 0, %.lr.ph.split.us.preheader.i101.new ], [ %niter186.next.3, %.lr.ph.split.us.i103 ]
  %i.io = lshr i64 %.02325.us.i105, 8
  %i.ip = trunc i64 %i.io to i8
  %i.iq = sub nuw nsw i64 %i.ik, %indvars.iv31.i104
  %i.ir = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.iq
  store i8 %i.ip, ptr %i.ir, align 1, !tbaa !13
  %indvars.iv.next32.i106.neg = xor i64 %indvars.iv31.i104, -1
  %i.is = lshr i64 %.02325.us.i105, 16
  %i.it = trunc i64 %i.is to i8
  %gep = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv.next32.i106.neg
  store i8 %i.it, ptr %gep, align 1, !tbaa !13
  %indvars.iv.next32.i106.1 = add nuw nsw i64 %indvars.iv31.i104, 2
  %i.iu = lshr i64 %.02325.us.i105, 24
  %i.iv = trunc i64 %i.iu to i8
  %8 = sub nuw nsw i64 %i.ik, %indvars.iv.next32.i106.1
  %i.iw = getelementptr inbounds nuw i8, ptr %i.a, i64 %8
  store i8 %i.iv, ptr %i.iw, align 1, !tbaa !13
  %indvars.iv.next32.i106.2 = add nuw nsw i64 %indvars.iv31.i104, 3
  %i.ix = lshr i64 %.02325.us.i105, 32            ; 3 uses
  %i.iy = trunc i64 %i.ix to i8
  %9 = sub nuw nsw i64 %i.ik, %indvars.iv.next32.i106.2
  %i.iz = getelementptr inbounds nuw i8, ptr %i.a, i64 %9
  store i8 %i.iy, ptr %i.iz, align 1, !tbaa !13
  %indvars.iv.next32.i106.3 = add nuw nsw i64 %indvars.iv31.i104, 4 ; 2 uses
  %niter186.next.3 = add nuw i64 %niter186, 4     ; 2 uses
  %niter186.ncmp.3 = icmp eq i64 %niter186.next.3, %unroll_iter185
  br i1 %niter186.ncmp.3, label %_ZL7packintP11luaL_Strbufyiii.exit111.loopexit.unr-lcssa, label %.lr.ph.split.us.i103, !llvm.loop !56

.lr.ph.split.i91:                                 ; preds = %.lr.ph.split.i91, %.lr.ph.split.preheader.i89.new
  %indvars.iv.i92 = phi i64 [ 1, %.lr.ph.split.preheader.i89.new ], [ %indvars.iv.next.i94.3, %.lr.ph.split.i91 ] ; 5 uses
  %.02325.i93 = phi i64 [ %.pre142, %.lr.ph.split.preheader.i89.new ], [ %i.jl, %.lr.ph.split.i91 ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.split.preheader.i89.new ], [ %niter.next.3, %.lr.ph.split.i91 ]
  %i.ja = lshr i64 %.02325.i93, 8
  %i.jb = trunc i64 %i.ja to i8
  %i.jc = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i92
  store i8 %i.jb, ptr %i.jc, align 1, !tbaa !13
  %i.jd = lshr i64 %.02325.i93, 16
  %i.je = trunc i64 %i.jd to i8
  %i.jf = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i92
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 1
  store i8 %i.je, ptr %i.jg, align 1, !tbaa !13
  %i.jh = lshr i64 %.02325.i93, 24
  %i.ji = trunc i64 %i.jh to i8
  %i.jj = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i92
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 2
  store i8 %i.ji, ptr %i.jk, align 1, !tbaa !13
  %i.jl = lshr i64 %.02325.i93, 32                ; 3 uses
  %i.jm = trunc i64 %i.jl to i8
  %i.jn = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i92
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 3
  store i8 %i.jm, ptr %i.jo, align 1, !tbaa !13
  %indvars.iv.next.i94.3 = add nuw nsw i64 %indvars.iv.i92, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZL7packintP11luaL_Strbufyiii.exit111.loopexit173.unr-lcssa, label %.lr.ph.split.i91, !llvm.loop !56

_ZL7packintP11luaL_Strbufyiii.exit111.loopexit.unr-lcssa: ; preds = %.lr.ph.split.us.i103
  %lcmp.mod183.not = icmp eq i64 %xtraiter181, 0
  br i1 %lcmp.mod183.not, label %_ZL7packintP11luaL_Strbufyiii.exit111, label %.lr.ph.split.us.i103.epil.preheader

.lr.ph.split.us.i103.epil.preheader:              ; preds = %_ZL7packintP11luaL_Strbufyiii.exit111.loopexit.unr-lcssa, %.lr.ph.split.us.preheader.i101
  %indvars.iv31.i104.epil.init = phi i64 [ 1, %.lr.ph.split.us.preheader.i101 ], [ %indvars.iv.next32.i106.3, %_ZL7packintP11luaL_Strbufyiii.exit111.loopexit.unr-lcssa ]
  %.02325.us.i105.epil.init = phi i64 [ %.pre142, %.lr.ph.split.us.preheader.i101 ], [ %i.ix, %_ZL7packintP11luaL_Strbufyiii.exit111.loopexit.unr-lcssa ]
  %lcmp.mod184 = icmp ne i64 %xtraiter181, 0
  call void @llvm.assume(i1 %lcmp.mod184)
  br label %.lr.ph.split.us.i103.epil

.lr.ph.split.us.i103.epil:                        ; preds = %.lr.ph.split.us.i103.epil, %.lr.ph.split.us.i103.epil.preheader
  %indvars.iv31.i104.epil = phi i64 [ %indvars.iv31.i104.epil.init, %.lr.ph.split.us.i103.epil.preheader ], [ %indvars.iv.next32.i106.epil, %.lr.ph.split.us.i103.epil ] ; 2 uses
  %.02325.us.i105.epil = phi i64 [ %.02325.us.i105.epil.init, %.lr.ph.split.us.i103.epil.preheader ], [ %i.jp, %.lr.ph.split.us.i103.epil ]
  %epil.iter182 = phi i64 [ 0, %.lr.ph.split.us.i103.epil.preheader ], [ %epil.iter182.next, %.lr.ph.split.us.i103.epil ]
  %i.jp = lshr i64 %.02325.us.i105.epil, 8        ; 2 uses
  %i.jq = trunc i64 %i.jp to i8
  %i.jr = sub nuw nsw i64 %i.ik, %indvars.iv31.i104.epil
  %i.js = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.jr
  store i8 %i.jq, ptr %i.js, align 1, !tbaa !13
  %indvars.iv.next32.i106.epil = add nuw nsw i64 %indvars.iv31.i104.epil, 1
  %epil.iter182.next = add i64 %epil.iter182, 1   ; 2 uses
  %epil.iter182.cmp.not = icmp eq i64 %epil.iter182.next, %xtraiter181
  br i1 %epil.iter182.cmp.not, label %_ZL7packintP11luaL_Strbufyiii.exit111, label %.lr.ph.split.us.i103.epil, !llvm.loop !64

_ZL7packintP11luaL_Strbufyiii.exit111.loopexit173.unr-lcssa: ; preds = %.lr.ph.split.i91
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZL7packintP11luaL_Strbufyiii.exit111, label %.lr.ph.split.i91.epil.preheader

.lr.ph.split.i91.epil.preheader:                  ; preds = %_ZL7packintP11luaL_Strbufyiii.exit111.loopexit173.unr-lcssa, %.lr.ph.split.preheader.i89
  %indvars.iv.i92.epil.init = phi i64 [ 1, %.lr.ph.split.preheader.i89 ], [ %indvars.iv.next.i94.3, %_ZL7packintP11luaL_Strbufyiii.exit111.loopexit173.unr-lcssa ]
  %.02325.i93.epil.init = phi i64 [ %.pre142, %.lr.ph.split.preheader.i89 ], [ %i.jl, %_ZL7packintP11luaL_Strbufyiii.exit111.loopexit173.unr-lcssa ]
  %lcmp.mod180 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod180)
  br label %.lr.ph.split.i91.epil

.lr.ph.split.i91.epil:                            ; preds = %.lr.ph.split.i91.epil, %.lr.ph.split.i91.epil.preheader
  %indvars.iv.i92.epil = phi i64 [ %indvars.iv.i92.epil.init, %.lr.ph.split.i91.epil.preheader ], [ %indvars.iv.next.i94.epil, %.lr.ph.split.i91.epil ] ; 2 uses
  %.02325.i93.epil = phi i64 [ %.02325.i93.epil.init, %.lr.ph.split.i91.epil.preheader ], [ %i.jt, %.lr.ph.split.i91.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph.split.i91.epil.preheader ], [ %epil.iter.next, %.lr.ph.split.i91.epil ]
  %i.jt = lshr i64 %.02325.i93.epil, 8            ; 2 uses
  %i.ju = trunc i64 %i.jt to i8
  %i.jv = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i92.epil
  store i8 %i.ju, ptr %i.jv, align 1, !tbaa !13
  %indvars.iv.next.i94.epil = add nuw nsw i64 %indvars.iv.i92.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZL7packintP11luaL_Strbufyiii.exit111, label %.lr.ph.split.i91.epil, !llvm.loop !65

_ZL7packintP11luaL_Strbufyiii.exit111:            ; preds = %_ZL7packintP11luaL_Strbufyiii.exit111.loopexit173.unr-lcssa, %.lr.ph.split.i91.epil, %_ZL7packintP11luaL_Strbufyiii.exit111.loopexit.unr-lcssa, %.lr.ph.split.us.i103.epil, %bb.aa
  %i.jw = sext i32 %i.r to i64
  call void @_Z15luaL_addlstringP11luaL_StrbufPKcm(ptr noundef nonnull %1, ptr noundef nonnull %i.a, i64 noundef %i.jw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %i.jx = load i64, ptr %i.i, align 8, !tbaa !12
  call void @_Z15luaL_addlstringP11luaL_StrbufPKcm(ptr noundef nonnull %1, ptr noundef %i.hv, i64 noundef %i.jx)
  %i.jy = load i64, ptr %i.i, align 8, !tbaa !12
  %i.jz = add i64 %i.jy, %i.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #13
  br label %bb.aj

bb.ab:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #13
  %i.ka = call noundef ptr @_Z17luaL_checklstringP9lua_StateiPm(ptr noundef %0, i32 noundef %i.ae, ptr noundef nonnull %i.j) ; 2 uses
  %i.kb = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ka) #15 ; 2 uses
  %i.kc = load i64, ptr %i.j, align 8, !tbaa !12
  %i.kd = icmp eq i64 %i.kb, %i.kc
  br i1 %i.kd, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @_Z14luaL_argerrorLP9lua_StateiPKc(ptr noundef %0, i32 noundef %i.ae, ptr noundef nonnull @.str.49) #14
  unreachable

bb.ad:                                            ; preds = %bb.ab
  call void @_Z15luaL_addlstringP11luaL_StrbufPKcm(ptr noundef nonnull %1, ptr noundef nonnull %i.ka, i64 noundef %i.kb)
  %i.ke = load ptr, ptr %1, align 8, !tbaa !20    ; 2 uses
  %i.kf = load ptr, ptr %i.o, align 8, !tbaa !21
  %i.kg = icmp ult ptr %i.ke, %i.kf
  br i1 %i.kg, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.kh = call noundef ptr @_Z17luaL_prepbuffsizeP11luaL_Strbufm(ptr noundef nonnull %1, i64 noundef 1) ; 0 uses
  %.pre141 = load ptr, ptr %1, align 8, !tbaa !20
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.ki = phi ptr [ %.pre141, %bb.ae ], [ %i.ke, %bb.ad ] ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 1
  store ptr %i.kj, ptr %1, align 8, !tbaa !20
  store i8 0, ptr %i.ki, align 1, !tbaa !13
  %i.kk = load i64, ptr %i.j, align 8, !tbaa !12
  %i.kl = add i64 %i.u, 1
  %i.km = add i64 %i.kl, %i.kk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #13
  br label %bb.aj

bb.ag:                                            ; preds = %._crit_edge
  %i.kn = load ptr, ptr %1, align 8, !tbaa !20    ; 2 uses
  %i.ko = load ptr, ptr %i.o, align 8, !tbaa !21
  %i.kp = icmp ult ptr %i.kn, %i.ko
  br i1 %i.kp, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.kq = call noundef ptr @_Z17luaL_prepbuffsizeP11luaL_Strbufm(ptr noundef nonnull %1, i64 noundef 1) ; 0 uses
  %.pre140 = load ptr, ptr %1, align 8, !tbaa !20
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.kr = phi ptr [ %.pre140, %bb.ah ], [ %i.kn, %bb.ag ] ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 1
  store ptr %i.ks, ptr %1, align 8, !tbaa !20
  store i8 0, ptr %i.kr, align 1, !tbaa !13
  br label %bb.aj

default.unreachable152:                           ; preds = %._crit_edge
  unreachable

bb.aj:                                            ; preds = %._crit_edge, %._crit_edge, %bb.ai, %bb.af, %_ZL7packintP11luaL_Strbufyiii.exit111, %._crit_edge122, %_ZL14copywithendianPVcPVKcii.exit, %_ZL7packintP11luaL_Strbufyiii.exit83, %_ZL7packintP11luaL_Strbufyiii.exit
  %.148 = phi i32 [ %i.ae, %bb.af ], [ %i.ae, %_ZL7packintP11luaL_Strbufyiii.exit ], [ %i.ae, %_ZL7packintP11luaL_Strbufyiii.exit83 ], [ %i.ae, %_ZL14copywithendianPVcPVKcii.exit ], [ %i.ae, %._crit_edge122 ], [ %i.ae, %_ZL7packintP11luaL_Strbufyiii.exit111 ], [ %.047124, %bb.ai ], [ %.047124, %._crit_edge ], [ %.047124, %._crit_edge ]
  %.1 = phi i64 [ %i.km, %bb.af ], [ %i.u, %_ZL7packintP11luaL_Strbufyiii.exit ], [ %i.u, %_ZL7packintP11luaL_Strbufyiii.exit83 ], [ %i.u, %_ZL14copywithendianPVcPVKcii.exit ], [ %i.u, %._crit_edge122 ], [ %i.jz, %_ZL7packintP11luaL_Strbufyiii.exit111 ], [ %i.u, %bb.ai ], [ %i.u, %._crit_edge ], [ %i.u, %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  %i.kt = load ptr, ptr %i.d, align 8, !tbaa !36
  %i.ku = load i8, ptr %i.kt, align 1, !tbaa !13
  %.not = icmp eq i8 %i.ku, 0
  br i1 %.not, label %._crit_edge128, label %bb.b, !llvm.loop !66

._crit_edge128:                                   ; preds = %bb.aj, %bb.a
  call void @_Z15luaL_pushresultP11luaL_Strbuf(ptr noundef nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  ret i32 1
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL12str_packsizeP9lua_State(ptr noundef %0) #0 {
bb.a:
  %1 = alloca %struct.Header, align 8             ; 6 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.d = tail call noundef ptr @_Z17luaL_checklstringP9lua_StateiPm(ptr noundef %0, i32 noundef 1, ptr noundef null) ; 2 uses
  store ptr %i.d, ptr %i.a, align 8, !tbaa !36
  store ptr %0, ptr %1, align 8, !tbaa !38
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 1, ptr %i.e, align 8, !tbaa !39
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 1, ptr %i.f, align 4, !tbaa !40
  %i.g = load i8, ptr %i.d, align 1, !tbaa !13
  %.not14 = icmp eq i8 %i.g, 0
  br i1 %.not14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.e
  %.015 = phi i32 [ %i.o, %bb.e ], [ 0, %bb.a ]   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  %i.h = sext i32 %.015 to i64
  %i.i = call fastcc noundef i32 @_ZL10getdetailsP6HeadermPPKcPiS4_(ptr noundef %1, i64 noundef %i.h, ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.c)
  %i.j = add nsw i32 %i.i, -6
  %or.cond = icmp ult i32 %i.j, -2
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  tail call void @_Z14luaL_argerrorLP9lua_StateiPKc(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.56) #14
  unreachable

bb.c:                                             ; preds = %.lr.ph
  %i.k = load i32, ptr %i.c, align 4, !tbaa !35
  %i.l = load i32, ptr %i.b, align 4, !tbaa !35
  %i.m = add nsw i32 %i.l, %i.k                   ; 2 uses
  %i.n = sub nsw i32 1073741824, %i.m
  %.not11 = icmp sgt i32 %.015, %i.n
  br i1 %.not11, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_Z14luaL_argerrorLP9lua_StateiPKc(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.57) #14
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.o = add nsw i32 %i.m, %.015                  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !36
  %i.q = load i8, ptr %i.p, align 1, !tbaa !13
  %.not = icmp eq i8 %i.q, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !67

._crit_edge:                                      ; preds = %bb.e, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.o, %bb.e ]
  tail call void @_Z15lua_pushintegerP9lua_Statei(ptr noundef %0, i32 noundef %.0.lcssa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  ret i32 1
}

; Function Attrs: mustprogress uwtable
define internal noundef range(i32 -2147483647, -2147483648) i32 @_ZL10str_unpackP9lua_State(ptr noundef %0) #0 {
bb.a:
  %1 = alloca %struct.Header, align 8             ; 6 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %2 = alloca %union.Ftypes, align 8              ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.e = tail call noundef ptr @_Z17luaL_checklstringP9lua_StateiPm(ptr noundef %0, i32 noundef 1, ptr noundef null) ; 2 uses
  store ptr %i.e, ptr %i.a, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.f = call noundef ptr @_Z17luaL_checklstringP9lua_StateiPm(ptr noundef %0, i32 noundef 2, ptr noundef nonnull %i.b) ; 6 uses
  %i.g = call noundef i32 @_Z15luaL_optintegerP9lua_Stateii(ptr noundef %0, i32 noundef 3, i32 noundef 1) ; 2 uses
  %i.h = load i64, ptr %i.b, align 8, !tbaa !12   ; 2 uses
  %i.i = icmp slt i32 %i.g, 0
  %i.j = trunc i64 %i.h to i32
  %i.k = add nsw i32 %i.j, 1
  %i.l = select i1 %i.i, i32 %i.k, i32 0
  %.0.i = add nsw i32 %i.l, %i.g
  %i.m = call i32 @llvm.smax.i32(i32 %.0.i, i32 1) ; 2 uses
  %spec.store.select = add nsw i32 %i.m, -1       ; 2 uses
  %i.n = zext nneg i32 %spec.store.select to i64
  %.not = icmp ult i64 %i.h, %i.n
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_Z14luaL_argerrorLP9lua_StateiPKc(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.58) #14
  unreachable

bb.c:                                             ; preds = %bb.a
  store ptr %0, ptr %1, align 8, !tbaa !38
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  store i32 1, ptr %i.o, align 8, !tbaa !39
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 1, ptr %i.p, align 4, !tbaa !40
  %i.q = load i8, ptr %i.e, align 1, !tbaa !13
  %.not63178 = icmp eq i8 %i.q, 0
  br i1 %.not63178, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.z
  %.058180 = phi i32 [ %i.pw, %bb.z ], [ %spec.store.select, %bb.c ] ; 2 uses
  %.059179 = phi i32 [ %.160, %bb.z ], [ 0, %bb.c ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  %i.r = sext i32 %.058180 to i64                 ; 2 uses
  %i.s = call fastcc noundef i32 @_ZL10getdetailsP6HeadermPPKcPiS4_(ptr noundef %1, i64 noundef %i.r, ptr noundef %i.a, ptr noundef %i.c, ptr noundef %i.d)
  %i.t = load i32, ptr %i.d, align 4, !tbaa !35   ; 2 uses
  %i.u = sext i32 %i.t to i64
  %i.v = load i32, ptr %i.c, align 4, !tbaa !35
  %i.w = freeze i32 %i.v                          ; 76 uses
  %i.x = sext i32 %i.w to i64                     ; 5 uses
  %i.y = add nsw i64 %i.x, %i.u
  %i.z = load i64, ptr %i.b, align 8, !tbaa !12
  %i.aa = sub i64 %i.z, %i.r
  %.not64 = icmp ugt i64 %i.y, %i.aa
  br i1 %.not64, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph
  call void @_Z14luaL_argerrorLP9lua_StateiPKc(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.59) #14
  unreachable

bb.e:                                             ; preds = %.lr.ph
  %i.ab = add nsw i32 %i.t, %.058180              ; 15 uses
  call void @_Z15luaL_checkstackP9lua_StateiPKc(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.60)
  %i.ac = add nsw i32 %.059179, 1                 ; 6 uses
  switch i32 %i.s, label %default.unreachable219 [
    i32 0, label %bb.f
    i32 1, label %bb.j
    i32 2, label %bb.m
    i32 3, label %bb.r
    i32 4, label %bb.s
    i32 5, label %bb.w
    i32 7, label %bb.z
    i32 6, label %bb.z
    i32 8, label %bb.z
  ]

bb.f:                                             ; preds = %bb.e
  %i.ad = sext i32 %i.ab to i64
  %i.ae = getelementptr inbounds i8, ptr %i.f, i64 %i.ad ; 18 uses
  %i.af = icmp sgt i32 %i.w, 0
  br i1 %i.af, label %.lr.ph.i, label %._crit_edge.thread.i

.lr.ph.i:                                         ; preds = %bb.f
  %i.ag = load i32, ptr %i.o, align 8, !tbaa !39
  %.not41.i = icmp eq i32 %i.ag, 0                ; 2 uses
  %i.ah = zext nneg i32 %i.w to i64               ; 10 uses
  %i.ai = call i64 @llvm.umin.i64(i64 %i.ah, i64 8) ; 16 uses
  br i1 %.not41.i, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i
  %i.aj = sub nsw i64 %i.ah, %i.ai
  %i.ak = getelementptr inbounds i8, ptr %i.ae, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !13
  %i.am = zext i8 %i.al to i64                    ; 2 uses
  %.not327 = icmp eq i32 %i.w, 1
  br i1 %.not327, label %._crit_edge.i, label %.lr.ph.split.us.i.1

.lr.ph.split.us.i.1:                              ; preds = %.lr.ph.split.us.i
  %indvars.iv.next53.i = add nsw i64 %i.ai, -1
  %i.an = shl nuw nsw i64 %i.am, 8
  %3 = sub nsw i64 %i.ah, %indvars.iv.next53.i
  %i.ao = getelementptr inbounds i8, ptr %i.ae, i64 %3
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !13
  %i.aq = zext i8 %i.ap to i64
  %i.ar = or disjoint i64 %i.an, %i.aq            ; 2 uses
  %i.as = icmp ugt i32 %i.w, 2
  br i1 %i.as, label %.lr.ph.split.us.i.2, label %._crit_edge.i

.lr.ph.split.us.i.2:                              ; preds = %.lr.ph.split.us.i.1
  %indvars.iv.next53.i.1 = add nsw i64 %i.ai, -2
  %i.at = shl nuw nsw i64 %i.ar, 8
  %4 = sub nsw i64 %i.ah, %indvars.iv.next53.i.1
  %i.au = getelementptr inbounds i8, ptr %i.ae, i64 %4
  %i.av = load i8, ptr %i.au, align 1, !tbaa !13
  %i.aw = zext i8 %i.av to i64
  %i.ax = or disjoint i64 %i.at, %i.aw            ; 2 uses
  %.not328 = icmp eq i32 %i.w, 3
  br i1 %.not328, label %._crit_edge.i, label %.lr.ph.split.us.i.3

.lr.ph.split.us.i.3:                              ; preds = %.lr.ph.split.us.i.2
  %indvars.iv.next53.i.2 = add nsw i64 %i.ai, -3
  %i.ay = shl nuw nsw i64 %i.ax, 8
  %5 = sub nsw i64 %i.ah, %indvars.iv.next53.i.2
  %i.az = getelementptr inbounds i8, ptr %i.ae, i64 %5
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !13
  %i.bb = zext i8 %i.ba to i64
  %i.bc = or disjoint i64 %i.ay, %i.bb            ; 2 uses
  %i.bd = icmp ugt i32 %i.w, 4
  br i1 %i.bd, label %.lr.ph.split.us.i.4, label %._crit_edge.i

.lr.ph.split.us.i.4:                              ; preds = %.lr.ph.split.us.i.3
  %indvars.iv.next53.i.3 = add nsw i64 %i.ai, -4
  %i.be = shl i64 %i.bc, 8
  %6 = sub nsw i64 %i.ah, %indvars.iv.next53.i.3
  %i.bf = getelementptr inbounds i8, ptr %i.ae, i64 %6
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !13
  %i.bh = zext i8 %i.bg to i64
  %i.bi = or disjoint i64 %i.be, %i.bh            ; 2 uses
  %.not329 = icmp eq i32 %i.w, 5
  br i1 %.not329, label %._crit_edge.i, label %.lr.ph.split.us.i.5

.lr.ph.split.us.i.5:                              ; preds = %.lr.ph.split.us.i.4
  %indvars.iv.next53.i.4 = add nsw i64 %i.ai, -5
  %i.bj = shl i64 %i.bi, 8
  %7 = sub nsw i64 %i.ah, %indvars.iv.next53.i.4
  %i.bk = getelementptr inbounds i8, ptr %i.ae, i64 %7
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !13
  %i.bm = zext i8 %i.bl to i64
  %i.bn = or disjoint i64 %i.bj, %i.bm            ; 2 uses
  %i.bo = icmp ugt i32 %i.w, 6
  br i1 %i.bo, label %.lr.ph.split.us.i.6, label %._crit_edge.i

.lr.ph.split.us.i.6:                              ; preds = %.lr.ph.split.us.i.5
  %indvars.iv.next53.i.5 = add nsw i64 %i.ai, -6
  %i.bp = shl i64 %i.bn, 8
  %8 = sub nsw i64 %i.ah, %indvars.iv.next53.i.5
  %i.bq = getelementptr inbounds i8, ptr %i.ae, i64 %8
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !13
  %i.bs = zext i8 %i.br to i64
  %i.bt = or disjoint i64 %i.bp, %i.bs            ; 2 uses
  %.not330 = icmp eq i32 %i.w, 7
  br i1 %.not330, label %._crit_edge.i, label %.lr.ph.split.us.i.7

.lr.ph.split.us.i.7:                              ; preds = %.lr.ph.split.us.i.6
  %indvars.iv.next53.i.6 = add nsw i64 %i.ai, -7
  %i.bu = shl i64 %i.bt, 8
  %9 = sub nsw i64 %i.ah, %indvars.iv.next53.i.6
  %i.bv = getelementptr inbounds i8, ptr %i.ae, i64 %9
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !13
  %i.bx = zext i8 %i.bw to i64
  %i.by = or disjoint i64 %i.bu, %i.bx
  br label %._crit_edge.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  %i.bz = getelementptr i8, ptr %i.ae, i64 %i.ai
  %i.ca = getelementptr i8, ptr %i.bz, i64 -1
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !13
  %i.cc = zext i8 %i.cb to i64                    ; 2 uses
  %.not323 = icmp eq i32 %i.w, 1
  br i1 %.not323, label %._crit_edge.i, label %.lr.ph.split.i.1

.lr.ph.split.i.1:                                 ; preds = %.lr.ph.split.i
  %i.cd = shl nuw nsw i64 %i.cc, 8
  %i.ce = getelementptr i8, ptr %i.ae, i64 %i.ai
  %i.cf = getelementptr i8, ptr %i.ce, i64 -2
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !13
  %i.ch = zext i8 %i.cg to i64
  %i.ci = or disjoint i64 %i.cd, %i.ch            ; 2 uses
  %i.cj = icmp ugt i32 %i.w, 2
  br i1 %i.cj, label %.lr.ph.split.i.2, label %._crit_edge.i

.lr.ph.split.i.2:                                 ; preds = %.lr.ph.split.i.1
  %i.ck = shl nuw nsw i64 %i.ci, 8
  %i.cl = getelementptr i8, ptr %i.ae, i64 %i.ai
  %i.cm = getelementptr i8, ptr %i.cl, i64 -3
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !13
  %i.co = zext i8 %i.cn to i64
  %i.cp = or disjoint i64 %i.ck, %i.co            ; 2 uses
  %.not324 = icmp eq i32 %i.w, 3
  br i1 %.not324, label %._crit_edge.i, label %.lr.ph.split.i.3

.lr.ph.split.i.3:                                 ; preds = %.lr.ph.split.i.2
  %i.cq = shl nuw nsw i64 %i.cp, 8
  %i.cr = getelementptr i8, ptr %i.ae, i64 %i.ai
  %i.cs = getelementptr i8, ptr %i.cr, i64 -4
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !13
  %i.cu = zext i8 %i.ct to i64
  %i.cv = or disjoint i64 %i.cq, %i.cu            ; 2 uses
  %i.cw = icmp ugt i32 %i.w, 4
  br i1 %i.cw, label %.lr.ph.split.i.4, label %._crit_edge.i

.lr.ph.split.i.4:                                 ; preds = %.lr.ph.split.i.3
  %i.cx = shl i64 %i.cv, 8
  %i.cy = getelementptr i8, ptr %i.ae, i64 %i.ai
  %i.cz = getelementptr i8, ptr %i.cy, i64 -5
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !13
  %i.db = zext i8 %i.da to i64
  %i.dc = or disjoint i64 %i.cx, %i.db            ; 2 uses
  %.not325 = icmp eq i32 %i.w, 5
  br i1 %.not325, label %._crit_edge.i, label %.lr.ph.split.i.5

.lr.ph.split.i.5:                                 ; preds = %.lr.ph.split.i.4
  %i.dd = shl i64 %i.dc, 8
  %i.de = getelementptr i8, ptr %i.ae, i64 %i.ai
  %i.df = getelementptr i8, ptr %i.de, i64 -6
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !13
  %i.dh = zext i8 %i.dg to i64
  %i.di = or disjoint i64 %i.dd, %i.dh            ; 2 uses
  %i.dj = icmp ugt i32 %i.w, 6
  br i1 %i.dj, label %.lr.ph.split.i.6, label %._crit_edge.i

.lr.ph.split.i.6:                                 ; preds = %.lr.ph.split.i.5
  %i.dk = shl i64 %i.di, 8
  %i.dl = getelementptr i8, ptr %i.ae, i64 %i.ai
  %i.dm = getelementptr i8, ptr %i.dl, i64 -7
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !13
  %i.do = zext i8 %i.dn to i64
  %i.dp = or disjoint i64 %i.dk, %i.do            ; 2 uses
  %.not326 = icmp eq i32 %i.w, 7
  br i1 %.not326, label %._crit_edge.i, label %.lr.ph.split.i.7

.lr.ph.split.i.7:                                 ; preds = %.lr.ph.split.i.6
  %i.dq = shl i64 %i.dp, 8
  %i.dr = getelementptr i8, ptr %i.ae, i64 %i.ai
  %i.ds = getelementptr i8, ptr %i.dr, i64 -8
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !13
  %i.du = zext i8 %i.dt to i64
  %i.dv = or disjoint i64 %i.dq, %i.du
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.split.i, %.lr.ph.split.i.1, %.lr.ph.split.i.2, %.lr.ph.split.i.3, %.lr.ph.split.i.4, %.lr.ph.split.i.5, %.lr.ph.split.i.6, %.lr.ph.split.i.7, %.lr.ph.split.us.i, %.lr.ph.split.us.i.1, %.lr.ph.split.us.i.2, %.lr.ph.split.us.i.3, %.lr.ph.split.us.i.4, %.lr.ph.split.us.i.5, %.lr.ph.split.us.i.6, %.lr.ph.split.us.i.7
  %.0.lcssa.i = phi i64 [ %i.by, %.lr.ph.split.us.i.7 ], [ %i.am, %.lr.ph.split.us.i ], [ %i.ar, %.lr.ph.split.us.i.1 ], [ %i.ax, %.lr.ph.split.us.i.2 ], [ %i.bc, %.lr.ph.split.us.i.3 ], [ %i.bi, %.lr.ph.split.us.i.4 ], [ %i.bn, %.lr.ph.split.us.i.5 ], [ %i.bt, %.lr.ph.split.us.i.6 ], [ %i.cc, %.lr.ph.split.i ], [ %i.ci, %.lr.ph.split.i.1 ], [ %i.cp, %.lr.ph.split.i.2 ], [ %i.cv, %.lr.ph.split.i.3 ], [ %i.dc, %.lr.ph.split.i.4 ], [ %i.di, %.lr.ph.split.i.5 ], [ %i.dp, %.lr.ph.split.i.6 ], [ %i.dv, %.lr.ph.split.i.7 ] ; 5 uses
  %i.dw = icmp samesign ult i32 %i.w, 8
  br i1 %i.dw, label %._crit_edge.thread.i, label %bb.g

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.f
  %.0.lcssa62.i = phi i64 [ %.0.lcssa.i, %._crit_edge.i ], [ 0, %bb.f ]
  %i.dx = shl nsw i32 %i.w, 3
  %i.dy = add nsw i32 %i.dx, -1
  %i.dz = zext nneg i32 %i.dy to i64
  %i.ea = shl nuw i64 1, %i.dz                    ; 2 uses
  %i.eb = xor i64 %.0.lcssa62.i, %i.ea
  %i.ec = sub i64 %i.eb, %i.ea
  br label %_ZL9unpackintP9lua_StatePKciii.exit

bb.g:                                             ; preds = %._crit_edge.i
  %.not.i = icmp eq i32 %i.w, 8
  br i1 %.not.i, label %_ZL9unpackintP9lua_StatePKciii.exit, label %.lr.ph46.i

.lr.ph46.i:                                       ; preds = %bb.g
  %i.ed = icmp sgt i64 %.0.lcssa.i, -1
  %i.ee = select i1 %i.ed, i32 0, i32 255         ; 2 uses
  br i1 %.not41.i, label %.lr.ph46.split.us.i, label %.lr.ph46.split.i.preheader

.lr.ph46.split.i.preheader:                       ; preds = %.lr.ph46.i
  %wide.trip.count215 = zext nneg i32 %i.w to i64
  br label %.lr.ph46.split.i

.lr.ph46.split.us.i:                              ; preds = %.lr.ph46.i, %bb.h
  %indvars.iv58.i = phi i64 [ %indvars.iv.next59.i, %bb.h ], [ 8, %.lr.ph46.i ] ; 2 uses
  %i.ef = trunc nuw nsw i64 %indvars.iv58.i to i32
  %i.eg = xor i32 %i.ef, -1
  %i.eh = add nsw i32 %i.w, %i.eg
  %i.ei = sext i32 %i.eh to i64
  %i.ej = getelementptr inbounds i8, ptr %i.ae, i64 %i.ei
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !13
  %i.el = zext i8 %i.ek to i32
  %.not39.us.i = icmp eq i32 %i.ee, %i.el
  br i1 %.not39.us.i, label %bb.h, label %.split.us.i

bb.h:                                             ; preds = %.lr.ph46.split.us.i
  %indvars.iv.next59.i = add nuw nsw i64 %indvars.iv58.i, 1 ; 2 uses
  %exitcond217.not = icmp eq i64 %indvars.iv.next59.i, %i.ah
  br i1 %exitcond217.not, label %_ZL9unpackintP9lua_StatePKciii.exit, label %.lr.ph46.split.us.i, !llvm.loop !68

bb.i:                                             ; preds = %.lr.ph46.split.i
  %indvars.iv.next55.i = add nuw nsw i64 %indvars.iv54.i, 1 ; 2 uses
  %exitcond216.not = icmp eq i64 %indvars.iv.next55.i, %wide.trip.count215
  br i1 %exitcond216.not, label %_ZL9unpackintP9lua_StatePKciii.exit, label %.lr.ph46.split.i, !llvm.loop !68

.lr.ph46.split.i:                                 ; preds = %.lr.ph46.split.i.preheader, %bb.i
  %indvars.iv54.i = phi i64 [ %indvars.iv.next55.i, %bb.i ], [ 8, %.lr.ph46.split.i.preheader ] ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.ae, i64 %indvars.iv54.i
  %i.en = load i8, ptr %i.em, align 1, !tbaa !13
  %i.eo = zext i8 %i.en to i32
  %.not39.i = icmp eq i32 %i.ee, %i.eo
  br i1 %.not39.i, label %bb.i, label %.split.us.i

.split.us.i:                                      ; preds = %.lr.ph46.split.i, %.lr.ph46.split.us.i
  call void (ptr, ptr, ...) @_Z11luaL_errorLP9lua_StatePKcz(ptr noundef %0, ptr noundef nonnull @.str.62, i32 noundef %i.w) #14
  unreachable

_ZL9unpackintP9lua_StatePKciii.exit:              ; preds = %bb.i, %bb.h, %._crit_edge.thread.i, %bb.g
  %.1.i = phi i64 [ %i.ec, %._crit_edge.thread.i ], [ %.0.lcssa.i, %bb.h ], [ %.0.lcssa.i, %bb.g ], [ %.0.lcssa.i, %bb.i ]
  %i.ep = sitofp i64 %.1.i to double
  call void @_Z14lua_pushnumberP9lua_Stated(ptr noundef %0, double noundef %i.ep)
  br label %bb.z

bb.j:                                             ; preds = %bb.e
  %i.eq = sext i32 %i.ab to i64
  %i.er = getelementptr inbounds i8, ptr %i.f, i64 %i.eq ; 18 uses
  %i.es = icmp sgt i32 %i.w, 0
  br i1 %i.es, label %.lr.ph.i69, label %_ZL9unpackintP9lua_StatePKciii.exit94

.lr.ph.i69:                                       ; preds = %bb.j
  %i.et = load i32, ptr %i.o, align 8, !tbaa !39
  %.not41.i70 = icmp eq i32 %i.et, 0
  %i.eu = zext nneg i32 %i.w to i64               ; 10 uses
  %i.ev = call i64 @llvm.umin.i64(i64 %i.eu, i64 8) ; 16 uses
  br i1 %.not41.i70, label %.lr.ph.split.us.i90, label %.lr.ph.split.i71

.lr.ph.split.us.i90:                              ; preds = %.lr.ph.i69
  %i.ew = sub nsw i64 %i.eu, %i.ev
  %i.ex = getelementptr inbounds i8, ptr %i.er, i64 %i.ew
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !13
  %i.ez = zext i8 %i.ey to i64                    ; 2 uses
  %.not319 = icmp eq i32 %i.w, 1
  br i1 %.not319, label %._crit_edge.i75, label %.lr.ph.split.us.i90.1

.lr.ph.split.us.i90.1:                            ; preds = %.lr.ph.split.us.i90
  %indvars.iv.next53.i93 = add nsw i64 %i.ev, -1
  %i.fa = shl nuw nsw i64 %i.ez, 8
  %10 = sub nsw i64 %i.eu, %indvars.iv.next53.i93
  %i.fb = getelementptr inbounds i8, ptr %i.er, i64 %10
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !13
  %i.fd = zext i8 %i.fc to i64
  %i.fe = or disjoint i64 %i.fa, %i.fd            ; 2 uses
  %i.ff = icmp ugt i32 %i.w, 2
  br i1 %i.ff, label %.lr.ph.split.us.i90.2, label %._crit_edge.i75

.lr.ph.split.us.i90.2:                            ; preds = %.lr.ph.split.us.i90.1
  %indvars.iv.next53.i93.1 = add nsw i64 %i.ev, -2
  %i.fg = shl nuw nsw i64 %i.fe, 8
  %11 = sub nsw i64 %i.eu, %indvars.iv.next53.i93.1
  %i.fh = getelementptr inbounds i8, ptr %i.er, i64 %11
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !13
  %i.fj = zext i8 %i.fi to i64
  %i.fk = or disjoint i64 %i.fg, %i.fj            ; 2 uses
  %.not320 = icmp eq i32 %i.w, 3
  br i1 %.not320, label %._crit_edge.i75, label %.lr.ph.split.us.i90.3

.lr.ph.split.us.i90.3:                            ; preds = %.lr.ph.split.us.i90.2
  %indvars.iv.next53.i93.2 = add nsw i64 %i.ev, -3
  %i.fl = shl nuw nsw i64 %i.fk, 8
  %12 = sub nsw i64 %i.eu, %indvars.iv.next53.i93.2
  %i.fm = getelementptr inbounds i8, ptr %i.er, i64 %12
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !13
  %i.fo = zext i8 %i.fn to i64
  %i.fp = or disjoint i64 %i.fl, %i.fo            ; 2 uses
  %i.fq = icmp ugt i32 %i.w, 4
  br i1 %i.fq, label %.lr.ph.split.us.i90.4, label %._crit_edge.i75

.lr.ph.split.us.i90.4:                            ; preds = %.lr.ph.split.us.i90.3
  %indvars.iv.next53.i93.3 = add nsw i64 %i.ev, -4
  %i.fr = shl i64 %i.fp, 8
  %13 = sub nsw i64 %i.eu, %indvars.iv.next53.i93.3
  %i.fs = getelementptr inbounds i8, ptr %i.er, i64 %13
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !13
  %i.fu = zext i8 %i.ft to i64
  %i.fv = or disjoint i64 %i.fr, %i.fu            ; 2 uses
  %.not321 = icmp eq i32 %i.w, 5
  br i1 %.not321, label %._crit_edge.i75, label %.lr.ph.split.us.i90.5

.lr.ph.split.us.i90.5:                            ; preds = %.lr.ph.split.us.i90.4
  %indvars.iv.next53.i93.4 = add nsw i64 %i.ev, -5
  %i.fw = shl i64 %i.fv, 8
  %14 = sub nsw i64 %i.eu, %indvars.iv.next53.i93.4
  %i.fx = getelementptr inbounds i8, ptr %i.er, i64 %14
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !13
  %i.fz = zext i8 %i.fy to i64
  %i.ga = or disjoint i64 %i.fw, %i.fz            ; 2 uses
  %i.gb = icmp ugt i32 %i.w, 6
  br i1 %i.gb, label %.lr.ph.split.us.i90.6, label %._crit_edge.i75

.lr.ph.split.us.i90.6:                            ; preds = %.lr.ph.split.us.i90.5
  %indvars.iv.next53.i93.5 = add nsw i64 %i.ev, -6
  %i.gc = shl i64 %i.ga, 8
  %15 = sub nsw i64 %i.eu, %indvars.iv.next53.i93.5
  %i.gd = getelementptr inbounds i8, ptr %i.er, i64 %15
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !13
  %i.gf = zext i8 %i.ge to i64
  %i.gg = or disjoint i64 %i.gc, %i.gf            ; 2 uses
  %.not322 = icmp eq i32 %i.w, 7
  br i1 %.not322, label %._crit_edge.i75, label %.lr.ph.split.us.i90.7

.lr.ph.split.us.i90.7:                            ; preds = %.lr.ph.split.us.i90.6
  %indvars.iv.next53.i93.6 = add nsw i64 %i.ev, -7
  %i.gh = shl i64 %i.gg, 8
  %16 = sub nsw i64 %i.eu, %indvars.iv.next53.i93.6
  %i.gi = getelementptr inbounds i8, ptr %i.er, i64 %16
  %i.gj = load i8, ptr %i.gi, align 1, !tbaa !13
  %i.gk = zext i8 %i.gj to i64
  %i.gl = or disjoint i64 %i.gh, %i.gk
  br label %._crit_edge.i75

.lr.ph.split.i71:                                 ; preds = %.lr.ph.i69
  %i.gm = getelementptr i8, ptr %i.er, i64 %i.ev
  %i.gn = getelementptr i8, ptr %i.gm, i64 -1
  %i.go = load i8, ptr %i.gn, align 1, !tbaa !13
  %i.gp = zext i8 %i.go to i64                    ; 2 uses
  %.not315 = icmp eq i32 %i.w, 1
  br i1 %.not315, label %._crit_edge.i75.thread, label %.lr.ph.split.i71.1

.lr.ph.split.i71.1:                               ; preds = %.lr.ph.split.i71
  %i.gq = shl nuw nsw i64 %i.gp, 8
  %i.gr = getelementptr i8, ptr %i.er, i64 %i.ev
  %i.gs = getelementptr i8, ptr %i.gr, i64 -2
  %i.gt = load i8, ptr %i.gs, align 1, !tbaa !13
  %i.gu = zext i8 %i.gt to i64
  %i.gv = or disjoint i64 %i.gq, %i.gu            ; 2 uses
  %i.gw = icmp ugt i32 %i.w, 2
  br i1 %i.gw, label %.lr.ph.split.i71.2, label %._crit_edge.i75.thread

.lr.ph.split.i71.2:                               ; preds = %.lr.ph.split.i71.1
  %i.gx = shl nuw nsw i64 %i.gv, 8
  %i.gy = getelementptr i8, ptr %i.er, i64 %i.ev
  %i.gz = getelementptr i8, ptr %i.gy, i64 -3
  %i.ha = load i8, ptr %i.gz, align 1, !tbaa !13
  %i.hb = zext i8 %i.ha to i64
  %i.hc = or disjoint i64 %i.gx, %i.hb            ; 2 uses
  %.not316 = icmp eq i32 %i.w, 3
  br i1 %.not316, label %._crit_edge.i75.thread, label %.lr.ph.split.i71.3

.lr.ph.split.i71.3:                               ; preds = %.lr.ph.split.i71.2
  %i.hd = shl nuw nsw i64 %i.hc, 8
  %i.he = getelementptr i8, ptr %i.er, i64 %i.ev
  %i.hf = getelementptr i8, ptr %i.he, i64 -4
  %i.hg = load i8, ptr %i.hf, align 1, !tbaa !13
  %i.hh = zext i8 %i.hg to i64
  %i.hi = or disjoint i64 %i.hd, %i.hh            ; 2 uses
  %i.hj = icmp ugt i32 %i.w, 4
  br i1 %i.hj, label %.lr.ph.split.i71.4, label %._crit_edge.i75.thread

.lr.ph.split.i71.4:                               ; preds = %.lr.ph.split.i71.3
  %i.hk = shl i64 %i.hi, 8
  %i.hl = getelementptr i8, ptr %i.er, i64 %i.ev
  %i.hm = getelementptr i8, ptr %i.hl, i64 -5
  %i.hn = load i8, ptr %i.hm, align 1, !tbaa !13
  %i.ho = zext i8 %i.hn to i64
  %i.hp = or disjoint i64 %i.hk, %i.ho            ; 2 uses
  %.not317 = icmp eq i32 %i.w, 5
  br i1 %.not317, label %._crit_edge.i75.thread, label %.lr.ph.split.i71.5

.lr.ph.split.i71.5:                               ; preds = %.lr.ph.split.i71.4
  %i.hq = shl i64 %i.hp, 8
  %i.hr = getelementptr i8, ptr %i.er, i64 %i.ev
  %i.hs = getelementptr i8, ptr %i.hr, i64 -6
  %i.ht = load i8, ptr %i.hs, align 1, !tbaa !13
  %i.hu = zext i8 %i.ht to i64
  %i.hv = or disjoint i64 %i.hq, %i.hu            ; 2 uses
  %i.hw = icmp ugt i32 %i.w, 6
  br i1 %i.hw, label %.lr.ph.split.i71.6, label %._crit_edge.i75.thread

.lr.ph.split.i71.6:                               ; preds = %.lr.ph.split.i71.5
  %i.hx = shl i64 %i.hv, 8
  %i.hy = getelementptr i8, ptr %i.er, i64 %i.ev
  %i.hz = getelementptr i8, ptr %i.hy, i64 -7
  %i.ia = load i8, ptr %i.hz, align 1, !tbaa !13
  %i.ib = zext i8 %i.ia to i64
  %i.ic = or disjoint i64 %i.hx, %i.ib            ; 2 uses
  %.not318 = icmp eq i32 %i.w, 7
  br i1 %.not318, label %._crit_edge.i75.thread, label %.lr.ph.split.i71.7

.lr.ph.split.i71.7:                               ; preds = %.lr.ph.split.i71.6
  %i.id = shl i64 %i.ic, 8
  %i.ie = getelementptr i8, ptr %i.er, i64 %i.ev
  %i.if = getelementptr i8, ptr %i.ie, i64 -8
  %i.ig = load i8, ptr %i.if, align 1, !tbaa !13
  %i.ih = zext i8 %i.ig to i64
  %i.ii = or disjoint i64 %i.id, %i.ih
  br label %._crit_edge.i75.thread

._crit_edge.i75:                                  ; preds = %.lr.ph.split.us.i90.7, %.lr.ph.split.us.i90.6, %.lr.ph.split.us.i90.5, %.lr.ph.split.us.i90.4, %.lr.ph.split.us.i90.3, %.lr.ph.split.us.i90.2, %.lr.ph.split.us.i90.1, %.lr.ph.split.us.i90
  %.lcssa289 = phi i64 [ %i.ez, %.lr.ph.split.us.i90 ], [ %i.fe, %.lr.ph.split.us.i90.1 ], [ %i.fk, %.lr.ph.split.us.i90.2 ], [ %i.fp, %.lr.ph.split.us.i90.3 ], [ %i.fv, %.lr.ph.split.us.i90.4 ], [ %i.ga, %.lr.ph.split.us.i90.5 ], [ %i.gg, %.lr.ph.split.us.i90.6 ], [ %i.gl, %.lr.ph.split.us.i90.7 ] ; 2 uses
  %i.ij = icmp samesign ult i32 %i.w, 9
  br i1 %i.ij, label %_ZL9unpackintP9lua_StatePKciii.exit94, label %.lr.ph46.split.us.i86

._crit_edge.i75.thread:                           ; preds = %.lr.ph.split.i71.7, %.lr.ph.split.i71.6, %.lr.ph.split.i71.5, %.lr.ph.split.i71.4, %.lr.ph.split.i71.3, %.lr.ph.split.i71.2, %.lr.ph.split.i71.1, %.lr.ph.split.i71
  %.lcssa288 = phi i64 [ %i.gp, %.lr.ph.split.i71 ], [ %i.gv, %.lr.ph.split.i71.1 ], [ %i.hc, %.lr.ph.split.i71.2 ], [ %i.hi, %.lr.ph.split.i71.3 ], [ %i.hp, %.lr.ph.split.i71.4 ], [ %i.hv, %.lr.ph.split.i71.5 ], [ %i.ic, %.lr.ph.split.i71.6 ], [ %i.ii, %.lr.ph.split.i71.7 ] ; 2 uses
  %i.ik = icmp samesign ult i32 %i.w, 9
  br i1 %i.ik, label %_ZL9unpackintP9lua_StatePKciii.exit94, label %.lr.ph46.split.i80.preheader

.lr.ph46.split.i80.preheader:                     ; preds = %._crit_edge.i75.thread
  %wide.trip.count211 = zext nneg i32 %i.w to i64
  br label %.lr.ph46.split.i80

.lr.ph46.split.us.i86:                            ; preds = %._crit_edge.i75, %bb.k
  %indvars.iv58.i87 = phi i64 [ %indvars.iv.next59.i89, %bb.k ], [ 8, %._crit_edge.i75 ] ; 2 uses
  %i.il = trunc nuw nsw i64 %indvars.iv58.i87 to i32
  %i.im = xor i32 %i.il, -1
  %i.in = add nsw i32 %i.w, %i.im
  %i.io = sext i32 %i.in to i64
  %i.ip = getelementptr inbounds i8, ptr %i.er, i64 %i.io
  %i.iq = load i8, ptr %i.ip, align 1, !tbaa !13
  %.not39.us.i88 = icmp eq i8 %i.iq, 0
  br i1 %.not39.us.i88, label %bb.k, label %.split.us.i83

bb.k:                                             ; preds = %.lr.ph46.split.us.i86
  %indvars.iv.next59.i89 = add nuw nsw i64 %indvars.iv58.i87, 1 ; 2 uses
  %exitcond213.not = icmp eq i64 %indvars.iv.next59.i89, %i.eu
  br i1 %exitcond213.not, label %_ZL9unpackintP9lua_StatePKciii.exit94, label %.lr.ph46.split.us.i86, !llvm.loop !68

bb.l:                                             ; preds = %.lr.ph46.split.i80
  %indvars.iv.next55.i84 = add nuw nsw i64 %indvars.iv54.i81, 1 ; 2 uses
  %exitcond212.not = icmp eq i64 %indvars.iv.next55.i84, %wide.trip.count211
  br i1 %exitcond212.not, label %_ZL9unpackintP9lua_StatePKciii.exit94, label %.lr.ph46.split.i80, !llvm.loop !68

.lr.ph46.split.i80:                               ; preds = %.lr.ph46.split.i80.preheader, %bb.l
  %indvars.iv54.i81 = phi i64 [ %indvars.iv.next55.i84, %bb.l ], [ 8, %.lr.ph46.split.i80.preheader ] ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.er, i64 %indvars.iv54.i81
  %i.is = load i8, ptr %i.ir, align 1, !tbaa !13
  %.not39.i82 = icmp eq i8 %i.is, 0
  br i1 %.not39.i82, label %bb.l, label %.split.us.i83

.split.us.i83:                                    ; preds = %.lr.ph46.split.i80, %.lr.ph46.split.us.i86
  call void (ptr, ptr, ...) @_Z11luaL_errorLP9lua_StatePKcz(ptr noundef %0, ptr noundef nonnull @.str.62, i32 noundef %i.w) #14
  unreachable

_ZL9unpackintP9lua_StatePKciii.exit94:            ; preds = %bb.l, %bb.k, %._crit_edge.i75.thread, %._crit_edge.i75, %bb.j
  %.1.i68 = phi i64 [ %.lcssa288, %._crit_edge.i75.thread ], [ %.lcssa289, %._crit_edge.i75 ], [ 0, %bb.j ], [ %.lcssa289, %bb.k ], [ %.lcssa288, %bb.l ]
  %i.it = uitofp i64 %.1.i68 to double
  call void @_Z14lua_pushnumberP9lua_Stated(ptr noundef %0, double noundef %i.it)
  br label %bb.z

bb.m:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  %i.iu = sext i32 %i.ab to i64
  %i.iv = getelementptr inbounds i8, ptr %i.f, i64 %i.iu ; 4 uses
  %i.iw = load i32, ptr %i.o, align 8, !tbaa !39
  %i.ix = icmp eq i32 %i.iw, 1
  %.not1218.i = icmp eq i32 %i.w, 0               ; 2 uses
  br i1 %i.ix, label %.preheader.i, label %bb.n

.preheader.i:                                     ; preds = %bb.m
  br i1 %.not1218.i, label %_ZL14copywithendianPVcPVKcii.exit.thread, label %.lr.ph22.i.preheader

.lr.ph22.i.preheader:                             ; preds = %.preheader.i
  %xtraiter304 = and i32 %i.w, 7                  ; 2 uses
  %lcmp.mod305.not = icmp eq i32 %xtraiter304, 0
  br i1 %lcmp.mod305.not, label %.lr.ph22.i.prol.loopexit, label %.lr.ph22.i.prol

.lr.ph22.i.prol:                                  ; preds = %.lr.ph22.i.preheader, %.lr.ph22.i.prol
  %.021.i.prol = phi ptr [ %i.jb, %.lr.ph22.i.prol ], [ %2, %.lr.ph22.i.preheader ] ; 2 uses
  %.0820.i.prol = phi i32 [ %i.iy, %.lr.ph22.i.prol ], [ %i.w, %.lr.ph22.i.preheader ]
  %.01019.i.prol = phi ptr [ %i.iz, %.lr.ph22.i.prol ], [ %i.iv, %.lr.ph22.i.preheader ] ; 2 uses
  %prol.iter306 = phi i32 [ %prol.iter306.next, %.lr.ph22.i.prol ], [ 0, %.lr.ph22.i.preheader ]
  %i.iy = add nsw i32 %.0820.i.prol, -1           ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %.01019.i.prol, i64 1 ; 2 uses
  %i.ja = load volatile i8, ptr %.01019.i.prol, align 1, !tbaa !13
  %i.jb = getelementptr inbounds nuw i8, ptr %.021.i.prol, i64 1 ; 2 uses
  store volatile i8 %i.ja, ptr %.021.i.prol, align 1, !tbaa !13
  %prol.iter306.next = add i32 %prol.iter306, 1   ; 2 uses
  %prol.iter306.cmp.not = icmp eq i32 %prol.iter306.next, %xtraiter304
  br i1 %prol.iter306.cmp.not, label %.lr.ph22.i.prol.loopexit, label %.lr.ph22.i.prol, !llvm.loop !69

.lr.ph22.i.prol.loopexit:                         ; preds = %.lr.ph22.i.prol, %.lr.ph22.i.preheader
  %.021.i.unr = phi ptr [ %2, %.lr.ph22.i.preheader ], [ %i.jb, %.lr.ph22.i.prol ]
  %.0820.i.unr = phi i32 [ %i.w, %.lr.ph22.i.preheader ], [ %i.iy, %.lr.ph22.i.prol ]
  %.01019.i.unr = phi ptr [ %i.iv, %.lr.ph22.i.preheader ], [ %i.iz, %.lr.ph22.i.prol ]
  %i.jc = icmp ult i32 %i.w, 8
  br i1 %i.jc, label %_ZL14copywithendianPVcPVKcii.exit, label %.lr.ph22.i

.lr.ph22.i:                                       ; preds = %.lr.ph22.i.prol.loopexit, %.lr.ph22.i
  %.021.i = phi ptr [ %i.kb, %.lr.ph22.i ], [ %.021.i.unr, %.lr.ph22.i.prol.loopexit ] ; 9 uses
  %.0820.i = phi i32 [ %i.jy, %.lr.ph22.i ], [ %.0820.i.unr, %.lr.ph22.i.prol.loopexit ]
  %.01019.i = phi ptr [ %i.jz, %.lr.ph22.i ], [ %.01019.i.unr, %.lr.ph22.i.prol.loopexit ] ; 9 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %.01019.i, i64 1
  %i.je = load volatile i8, ptr %.01019.i, align 1, !tbaa !13
  %i.jf = getelementptr inbounds nuw i8, ptr %.021.i, i64 1
  store volatile i8 %i.je, ptr %.021.i, align 1, !tbaa !13
  %i.jg = getelementptr inbounds nuw i8, ptr %.01019.i, i64 2
  %i.jh = load volatile i8, ptr %i.jd, align 1, !tbaa !13
  %i.ji = getelementptr inbounds nuw i8, ptr %.021.i, i64 2
  store volatile i8 %i.jh, ptr %i.jf, align 1, !tbaa !13
  %i.jj = getelementptr inbounds nuw i8, ptr %.01019.i, i64 3
  %i.jk = load volatile i8, ptr %i.jg, align 1, !tbaa !13
  %i.jl = getelementptr inbounds nuw i8, ptr %.021.i, i64 3
  store volatile i8 %i.jk, ptr %i.ji, align 1, !tbaa !13
  %i.jm = getelementptr inbounds nuw i8, ptr %.01019.i, i64 4
  %i.jn = load volatile i8, ptr %i.jj, align 1, !tbaa !13
  %i.jo = getelementptr inbounds nuw i8, ptr %.021.i, i64 4
  store volatile i8 %i.jn, ptr %i.jl, align 1, !tbaa !13
  %i.jp = getelementptr inbounds nuw i8, ptr %.01019.i, i64 5
  %i.jq = load volatile i8, ptr %i.jm, align 1, !tbaa !13
  %i.jr = getelementptr inbounds nuw i8, ptr %.021.i, i64 5
  store volatile i8 %i.jq, ptr %i.jo, align 1, !tbaa !13
  %i.js = getelementptr inbounds nuw i8, ptr %.01019.i, i64 6
  %i.jt = load volatile i8, ptr %i.jp, align 1, !tbaa !13
  %i.ju = getelementptr inbounds nuw i8, ptr %.021.i, i64 6
  store volatile i8 %i.jt, ptr %i.jr, align 1, !tbaa !13
  %i.jv = getelementptr inbounds nuw i8, ptr %.01019.i, i64 7
  %i.jw = load volatile i8, ptr %i.js, align 1, !tbaa !13
  %i.jx = getelementptr inbounds nuw i8, ptr %.021.i, i64 7
  store volatile i8 %i.jw, ptr %i.ju, align 1, !tbaa !13
  %i.jy = add nsw i32 %.0820.i, -8                ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %.01019.i, i64 8
  %i.ka = load volatile i8, ptr %i.jv, align 1, !tbaa !13
  %i.kb = getelementptr inbounds nuw i8, ptr %.021.i, i64 8
  store volatile i8 %i.ka, ptr %i.jx, align 1, !tbaa !13
  %.not12.i.7 = icmp eq i32 %i.jy, 0
  br i1 %.not12.i.7, label %_ZL14copywithendianPVcPVKcii.exit, label %.lr.ph22.i, !llvm.loop !0

bb.n:                                             ; preds = %bb.m
  br i1 %.not1218.i, label %_ZL14copywithendianPVcPVKcii.exit.thread, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.n
  %i.kc = getelementptr i8, ptr %2, i64 %i.x      ; 2 uses
  %xtraiter = and i32 %i.w, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i95.prol.loopexit, label %.lr.ph.i95.prol

.lr.ph.i95.prol:                                  ; preds = %.lr.ph.preheader.i, %.lr.ph.i95.prol
  %.pn17.i.prol = phi ptr [ %.1.i96.prol, %.lr.ph.i95.prol ], [ %i.kc, %.lr.ph.preheader.i ]
  %.1916.i.prol = phi i32 [ %i.kd, %.lr.ph.i95.prol ], [ %i.w, %.lr.ph.preheader.i ]
  %.11115.i.prol = phi ptr [ %i.ke, %.lr.ph.i95.prol ], [ %i.iv, %.lr.ph.preheader.i ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i95.prol ], [ 0, %.lr.ph.preheader.i ]
  %.1.i96.prol = getelementptr i8, ptr %.pn17.i.prol, i64 -1 ; 3 uses
  %i.kd = add nsw i32 %.1916.i.prol, -1           ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %.11115.i.prol, i64 1 ; 2 uses
  %i.kf = load volatile i8, ptr %.11115.i.prol, align 1, !tbaa !13
  store volatile i8 %i.kf, ptr %.1.i96.prol, align 1, !tbaa !13
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i95.prol.loopexit, label %.lr.ph.i95.prol, !llvm.loop !70

.lr.ph.i95.prol.loopexit:                         ; preds = %.lr.ph.i95.prol, %.lr.ph.preheader.i
  %.pn17.i.unr = phi ptr [ %i.kc, %.lr.ph.preheader.i ], [ %.1.i96.prol, %.lr.ph.i95.prol ]
  %.1916.i.unr = phi i32 [ %i.w, %.lr.ph.preheader.i ], [ %i.kd, %.lr.ph.i95.prol ]
  %.11115.i.unr = phi ptr [ %i.iv, %.lr.ph.preheader.i ], [ %i.ke, %.lr.ph.i95.prol ]
  %i.kg = icmp ult i32 %i.w, 8
  br i1 %i.kg, label %_ZL14copywithendianPVcPVKcii.exit, label %.lr.ph.i95

.lr.ph.i95:                                       ; preds = %.lr.ph.i95.prol.loopexit, %.lr.ph.i95
  %.pn17.i = phi ptr [ %.1.i96.7, %.lr.ph.i95 ], [ %.pn17.i.unr, %.lr.ph.i95.prol.loopexit ] ; 8 uses
  %.1916.i = phi i32 [ %i.kv, %.lr.ph.i95 ], [ %.1916.i.unr, %.lr.ph.i95.prol.loopexit ]
  %.11115.i = phi ptr [ %i.kw, %.lr.ph.i95 ], [ %.11115.i.unr, %.lr.ph.i95.prol.loopexit ] ; 9 uses
  %.1.i96 = getelementptr i8, ptr %.pn17.i, i64 -1
  %i.kh = getelementptr inbounds nuw i8, ptr %.11115.i, i64 1
  %i.ki = load volatile i8, ptr %.11115.i, align 1, !tbaa !13
  store volatile i8 %i.ki, ptr %.1.i96, align 1, !tbaa !13
  %.1.i96.1 = getelementptr i8, ptr %.pn17.i, i64 -2
  %i.kj = getelementptr inbounds nuw i8, ptr %.11115.i, i64 2
  %i.kk = load volatile i8, ptr %i.kh, align 1, !tbaa !13
  store volatile i8 %i.kk, ptr %.1.i96.1, align 1, !tbaa !13
  %.1.i96.2 = getelementptr i8, ptr %.pn17.i, i64 -3
  %i.kl = getelementptr inbounds nuw i8, ptr %.11115.i, i64 3
  %i.km = load volatile i8, ptr %i.kj, align 1, !tbaa !13
  store volatile i8 %i.km, ptr %.1.i96.2, align 1, !tbaa !13
  %.1.i96.3 = getelementptr i8, ptr %.pn17.i, i64 -4
  %i.kn = getelementptr inbounds nuw i8, ptr %.11115.i, i64 4
  %i.ko = load volatile i8, ptr %i.kl, align 1, !tbaa !13
  store volatile i8 %i.ko, ptr %.1.i96.3, align 1, !tbaa !13
  %.1.i96.4 = getelementptr i8, ptr %.pn17.i, i64 -5
  %i.kp = getelementptr inbounds nuw i8, ptr %.11115.i, i64 5
  %i.kq = load volatile i8, ptr %i.kn, align 1, !tbaa !13
  store volatile i8 %i.kq, ptr %.1.i96.4, align 1, !tbaa !13
  %.1.i96.5 = getelementptr i8, ptr %.pn17.i, i64 -6
  %i.kr = getelementptr inbounds nuw i8, ptr %.11115.i, i64 6
  %i.ks = load volatile i8, ptr %i.kp, align 1, !tbaa !13
  store volatile i8 %i.ks, ptr %.1.i96.5, align 1, !tbaa !13
  %.1.i96.6 = getelementptr i8, ptr %.pn17.i, i64 -7
  %i.kt = getelementptr inbounds nuw i8, ptr %.11115.i, i64 7
  %i.ku = load volatile i8, ptr %i.kr, align 1, !tbaa !13
  store volatile i8 %i.ku, ptr %.1.i96.6, align 1, !tbaa !13
  %.1.i96.7 = getelementptr i8, ptr %.pn17.i, i64 -8 ; 2 uses
  %i.kv = add nsw i32 %.1916.i, -8                ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %.11115.i, i64 8
  %i.kx = load volatile i8, ptr %i.kt, align 1, !tbaa !13
  store volatile i8 %i.kx, ptr %.1.i96.7, align 1, !tbaa !13
  %.not.i97.7 = icmp eq i32 %i.kv, 0
  br i1 %.not.i97.7, label %_ZL14copywithendianPVcPVKcii.exit, label %.lr.ph.i95, !llvm.loop !1

_ZL14copywithendianPVcPVKcii.exit:                ; preds = %.lr.ph.i95.prol.loopexit, %.lr.ph.i95, %.lr.ph22.i.prol.loopexit, %.lr.ph22.i
  switch i32 %i.w, label %_ZL14copywithendianPVcPVKcii.exit.thread [
    i32 4, label %bb.o
    i32 8, label %bb.p
  ]

bb.o:                                             ; preds = %_ZL14copywithendianPVcPVKcii.exit
  %i.ky = load volatile float, ptr %2, align 8, !tbaa !13
  %i.kz = fpext float %i.ky to double
  br label %bb.q

bb.p:                                             ; preds = %_ZL14copywithendianPVcPVKcii.exit
  %i.la = load volatile double, ptr %2, align 8, !tbaa !13
  br label %bb.q

_ZL14copywithendianPVcPVKcii.exit.thread:         ; preds = %bb.n, %.preheader.i, %_ZL14copywithendianPVcPVKcii.exit
  %i.lb = load volatile double, ptr %2, align 8, !tbaa !13
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %_ZL14copywithendianPVcPVKcii.exit.thread, %bb.o
  %.0 = phi double [ %i.kz, %bb.o ], [ %i.la, %bb.p ], [ %i.lb, %_ZL14copywithendianPVcPVKcii.exit.thread ]
  call void @_Z14lua_pushnumberP9lua_Stated(ptr noundef %0, double noundef %.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  br label %bb.z

bb.r:                                             ; preds = %bb.e
  %i.lc = sext i32 %i.ab to i64
  %i.ld = getelementptr inbounds i8, ptr %i.f, i64 %i.lc
  call void @_Z15lua_pushlstringP9lua_StatePKcm(ptr noundef %0, ptr noundef %i.ld, i64 noundef %i.x)
  br label %bb.z

bb.s:                                             ; preds = %bb.e
  %i.le = sext i32 %i.ab to i64                   ; 2 uses
  %i.lf = getelementptr inbounds i8, ptr %i.f, i64 %i.le ; 19 uses
  %i.lg = icmp sgt i32 %i.w, 0
  br i1 %i.lg, label %.lr.ph.i101, label %_ZL9unpackintP9lua_StatePKciii.exit126.thread

.lr.ph.i101:                                      ; preds = %bb.s
  %i.lh = load i32, ptr %i.o, align 8, !tbaa !39
  %.not41.i102 = icmp eq i32 %i.lh, 0
  %i.li = zext nneg i32 %i.w to i64               ; 10 uses
  %i.lj = call i64 @llvm.umin.i64(i64 %i.li, i64 8) ; 16 uses
  br i1 %.not41.i102, label %.lr.ph.split.us.i122, label %.lr.ph.split.i103

.lr.ph.split.us.i122:                             ; preds = %.lr.ph.i101
  %i.lk = sub nsw i64 %i.li, %i.lj
  %i.ll = getelementptr inbounds i8, ptr %i.lf, i64 %i.lk
  %i.lm = load i8, ptr %i.ll, align 1, !tbaa !13
  %i.ln = zext i8 %i.lm to i64                    ; 2 uses
  %.not311 = icmp eq i32 %i.w, 1
  br i1 %.not311, label %._crit_edge.i107, label %.lr.ph.split.us.i122.1

.lr.ph.split.us.i122.1:                           ; preds = %.lr.ph.split.us.i122
  %indvars.iv.next53.i125 = add nsw i64 %i.lj, -1
  %i.lo = shl nuw nsw i64 %i.ln, 8
  %17 = sub nsw i64 %i.li, %indvars.iv.next53.i125
  %i.lp = getelementptr inbounds i8, ptr %i.lf, i64 %17
  %i.lq = load i8, ptr %i.lp, align 1, !tbaa !13
  %i.lr = zext i8 %i.lq to i64
  %i.ls = or disjoint i64 %i.lo, %i.lr            ; 2 uses
  %i.lt = icmp ugt i32 %i.w, 2
  br i1 %i.lt, label %.lr.ph.split.us.i122.2, label %._crit_edge.i107

.lr.ph.split.us.i122.2:                           ; preds = %.lr.ph.split.us.i122.1
  %indvars.iv.next53.i125.1 = add nsw i64 %i.lj, -2
  %i.lu = shl nuw nsw i64 %i.ls, 8
  %18 = sub nsw i64 %i.li, %indvars.iv.next53.i125.1
  %i.lv = getelementptr inbounds i8, ptr %i.lf, i64 %18
  %i.lw = load i8, ptr %i.lv, align 1, !tbaa !13
  %i.lx = zext i8 %i.lw to i64
  %i.ly = or disjoint i64 %i.lu, %i.lx            ; 2 uses
  %.not312 = icmp eq i32 %i.w, 3
  br i1 %.not312, label %._crit_edge.i107, label %.lr.ph.split.us.i122.3

.lr.ph.split.us.i122.3:                           ; preds = %.lr.ph.split.us.i122.2
  %indvars.iv.next53.i125.2 = add nsw i64 %i.lj, -3
  %i.lz = shl nuw nsw i64 %i.ly, 8
  %19 = sub nsw i64 %i.li, %indvars.iv.next53.i125.2
  %i.ma = getelementptr inbounds i8, ptr %i.lf, i64 %19
  %i.mb = load i8, ptr %i.ma, align 1, !tbaa !13
  %i.mc = zext i8 %i.mb to i64
  %i.md = or disjoint i64 %i.lz, %i.mc            ; 2 uses
  %i.me = icmp ugt i32 %i.w, 4
  br i1 %i.me, label %.lr.ph.split.us.i122.4, label %._crit_edge.i107

.lr.ph.split.us.i122.4:                           ; preds = %.lr.ph.split.us.i122.3
  %indvars.iv.next53.i125.3 = add nsw i64 %i.lj, -4
  %i.mf = shl i64 %i.md, 8
  %20 = sub nsw i64 %i.li, %indvars.iv.next53.i125.3
  %i.mg = getelementptr inbounds i8, ptr %i.lf, i64 %20
  %i.mh = load i8, ptr %i.mg, align 1, !tbaa !13
  %i.mi = zext i8 %i.mh to i64
  %i.mj = or disjoint i64 %i.mf, %i.mi            ; 2 uses
  %.not313 = icmp eq i32 %i.w, 5
  br i1 %.not313, label %._crit_edge.i107, label %.lr.ph.split.us.i122.5

.lr.ph.split.us.i122.5:                           ; preds = %.lr.ph.split.us.i122.4
  %indvars.iv.next53.i125.4 = add nsw i64 %i.lj, -5
  %i.mk = shl i64 %i.mj, 8
  %21 = sub nsw i64 %i.li, %indvars.iv.next53.i125.4
  %i.ml = getelementptr inbounds i8, ptr %i.lf, i64 %21
  %i.mm = load i8, ptr %i.ml, align 1, !tbaa !13
  %i.mn = zext i8 %i.mm to i64
  %i.mo = or disjoint i64 %i.mk, %i.mn            ; 2 uses
  %i.mp = icmp ugt i32 %i.w, 6
  br i1 %i.mp, label %.lr.ph.split.us.i122.6, label %._crit_edge.i107

.lr.ph.split.us.i122.6:                           ; preds = %.lr.ph.split.us.i122.5
  %indvars.iv.next53.i125.5 = add nsw i64 %i.lj, -6
  %i.mq = shl i64 %i.mo, 8
  %22 = sub nsw i64 %i.li, %indvars.iv.next53.i125.5
  %i.mr = getelementptr inbounds i8, ptr %i.lf, i64 %22
  %i.ms = load i8, ptr %i.mr, align 1, !tbaa !13
  %i.mt = zext i8 %i.ms to i64
  %i.mu = or disjoint i64 %i.mq, %i.mt            ; 2 uses
  %.not314 = icmp eq i32 %i.w, 7
  br i1 %.not314, label %._crit_edge.i107, label %.lr.ph.split.us.i122.7

.lr.ph.split.us.i122.7:                           ; preds = %.lr.ph.split.us.i122.6
  %indvars.iv.next53.i125.6 = add nsw i64 %i.lj, -7
  %i.mv = shl i64 %i.mu, 8
  %23 = sub nsw i64 %i.li, %indvars.iv.next53.i125.6
  %i.mw = getelementptr inbounds i8, ptr %i.lf, i64 %23
  %i.mx = load i8, ptr %i.mw, align 1, !tbaa !13
  %i.my = zext i8 %i.mx to i64
  %i.mz = or disjoint i64 %i.mv, %i.my
  br label %._crit_edge.i107

.lr.ph.split.i103:                                ; preds = %.lr.ph.i101
  %i.na = getelementptr i8, ptr %i.lf, i64 %i.lj
  %i.nb = getelementptr i8, ptr %i.na, i64 -1
  %i.nc = load i8, ptr %i.nb, align 1, !tbaa !13
  %i.nd = zext i8 %i.nc to i64                    ; 2 uses
  %.not307 = icmp eq i32 %i.w, 1
  br i1 %.not307, label %._crit_edge.i107.thread, label %.lr.ph.split.i103.1

.lr.ph.split.i103.1:                              ; preds = %.lr.ph.split.i103
  %i.ne = shl nuw nsw i64 %i.nd, 8
  %i.nf = getelementptr i8, ptr %i.lf, i64 %i.lj
  %i.ng = getelementptr i8, ptr %i.nf, i64 -2
  %i.nh = load i8, ptr %i.ng, align 1, !tbaa !13
  %i.ni = zext i8 %i.nh to i64
  %i.nj = or disjoint i64 %i.ne, %i.ni            ; 2 uses
  %i.nk = icmp ugt i32 %i.w, 2
  br i1 %i.nk, label %.lr.ph.split.i103.2, label %._crit_edge.i107.thread

.lr.ph.split.i103.2:                              ; preds = %.lr.ph.split.i103.1
  %i.nl = shl nuw nsw i64 %i.nj, 8
  %i.nm = getelementptr i8, ptr %i.lf, i64 %i.lj
  %i.nn = getelementptr i8, ptr %i.nm, i64 -3
  %i.no = load i8, ptr %i.nn, align 1, !tbaa !13
  %i.np = zext i8 %i.no to i64
  %i.nq = or disjoint i64 %i.nl, %i.np            ; 2 uses
  %.not308 = icmp eq i32 %i.w, 3
  br i1 %.not308, label %._crit_edge.i107.thread, label %.lr.ph.split.i103.3

.lr.ph.split.i103.3:                              ; preds = %.lr.ph.split.i103.2
  %i.nr = shl nuw nsw i64 %i.nq, 8
  %i.ns = getelementptr i8, ptr %i.lf, i64 %i.lj
  %i.nt = getelementptr i8, ptr %i.ns, i64 -4
  %i.nu = load i8, ptr %i.nt, align 1, !tbaa !13
  %i.nv = zext i8 %i.nu to i64
  %i.nw = or disjoint i64 %i.nr, %i.nv            ; 2 uses
  %i.nx = icmp ugt i32 %i.w, 4
  br i1 %i.nx, label %.lr.ph.split.i103.4, label %._crit_edge.i107.thread

.lr.ph.split.i103.4:                              ; preds = %.lr.ph.split.i103.3
  %i.ny = shl i64 %i.nw, 8
  %i.nz = getelementptr i8, ptr %i.lf, i64 %i.lj
  %i.oa = getelementptr i8, ptr %i.nz, i64 -5
  %i.ob = load i8, ptr %i.oa, align 1, !tbaa !13
  %i.oc = zext i8 %i.ob to i64
  %i.od = or disjoint i64 %i.ny, %i.oc            ; 2 uses
  %.not309 = icmp eq i32 %i.w, 5
  br i1 %.not309, label %._crit_edge.i107.thread, label %.lr.ph.split.i103.5

.lr.ph.split.i103.5:                              ; preds = %.lr.ph.split.i103.4
  %i.oe = shl i64 %i.od, 8
  %i.of = getelementptr i8, ptr %i.lf, i64 %i.lj
  %i.og = getelementptr i8, ptr %i.of, i64 -6
  %i.oh = load i8, ptr %i.og, align 1, !tbaa !13
  %i.oi = zext i8 %i.oh to i64
  %i.oj = or disjoint i64 %i.oe, %i.oi            ; 2 uses
  %i.ok = icmp ugt i32 %i.w, 6
  br i1 %i.ok, label %.lr.ph.split.i103.6, label %._crit_edge.i107.thread

.lr.ph.split.i103.6:                              ; preds = %.lr.ph.split.i103.5
  %i.ol = shl i64 %i.oj, 8
  %i.om = getelementptr i8, ptr %i.lf, i64 %i.lj
  %i.on = getelementptr i8, ptr %i.om, i64 -7
  %i.oo = load i8, ptr %i.on, align 1, !tbaa !13
  %i.op = zext i8 %i.oo to i64
  %i.oq = or disjoint i64 %i.ol, %i.op            ; 2 uses
  %.not310 = icmp eq i32 %i.w, 7
  br i1 %.not310, label %._crit_edge.i107.thread, label %.lr.ph.split.i103.7

.lr.ph.split.i103.7:                              ; preds = %.lr.ph.split.i103.6
  %i.or = shl i64 %i.oq, 8
  %i.os = getelementptr i8, ptr %i.lf, i64 %i.lj
  %i.ot = getelementptr i8, ptr %i.os, i64 -8
  %i.ou = load i8, ptr %i.ot, align 1, !tbaa !13
  %i.ov = zext i8 %i.ou to i64
  %i.ow = or disjoint i64 %i.or, %i.ov
  br label %._crit_edge.i107.thread

._crit_edge.i107:                                 ; preds = %.lr.ph.split.us.i122.7, %.lr.ph.split.us.i122.6, %.lr.ph.split.us.i122.5, %.lr.ph.split.us.i122.4, %.lr.ph.split.us.i122.3, %.lr.ph.split.us.i122.2, %.lr.ph.split.us.i122.1, %.lr.ph.split.us.i122
  %.lcssa287 = phi i64 [ %i.ln, %.lr.ph.split.us.i122 ], [ %i.ls, %.lr.ph.split.us.i122.1 ], [ %i.ly, %.lr.ph.split.us.i122.2 ], [ %i.md, %.lr.ph.split.us.i122.3 ], [ %i.mj, %.lr.ph.split.us.i122.4 ], [ %i.mo, %.lr.ph.split.us.i122.5 ], [ %i.mu, %.lr.ph.split.us.i122.6 ], [ %i.mz, %.lr.ph.split.us.i122.7 ] ; 2 uses
  %i.ox = icmp samesign ult i32 %i.w, 9
  br i1 %i.ox, label %_ZL9unpackintP9lua_StatePKciii.exit126, label %.lr.ph46.split.us.i118

._crit_edge.i107.thread:                          ; preds = %.lr.ph.split.i103.7, %.lr.ph.split.i103.6, %.lr.ph.split.i103.5, %.lr.ph.split.i103.4, %.lr.ph.split.i103.3, %.lr.ph.split.i103.2, %.lr.ph.split.i103.1, %.lr.ph.split.i103
  %.lcssa = phi i64 [ %i.nd, %.lr.ph.split.i103 ], [ %i.nj, %.lr.ph.split.i103.1 ], [ %i.nq, %.lr.ph.split.i103.2 ], [ %i.nw, %.lr.ph.split.i103.3 ], [ %i.od, %.lr.ph.split.i103.4 ], [ %i.oj, %.lr.ph.split.i103.5 ], [ %i.oq, %.lr.ph.split.i103.6 ], [ %i.ow, %.lr.ph.split.i103.7 ] ; 2 uses
  %i.oy = icmp samesign ult i32 %i.w, 9
  br i1 %i.oy, label %_ZL9unpackintP9lua_StatePKciii.exit126, label %.lr.ph46.split.i112.preheader

.lr.ph46.split.i112.preheader:                    ; preds = %._crit_edge.i107.thread
  %wide.trip.count = zext nneg i32 %i.w to i64
  br label %.lr.ph46.split.i112

.lr.ph46.split.us.i118:                           ; preds = %._crit_edge.i107, %bb.t
  %indvars.iv58.i119 = phi i64 [ %indvars.iv.next59.i121, %bb.t ], [ 8, %._crit_edge.i107 ] ; 2 uses
  %i.oz = trunc nuw nsw i64 %indvars.iv58.i119 to i32
  %i.pa = xor i32 %i.oz, -1
  %i.pb = add nsw i32 %i.w, %i.pa
  %i.pc = sext i32 %i.pb to i64
  %i.pd = getelementptr inbounds i8, ptr %i.lf, i64 %i.pc
  %i.pe = load i8, ptr %i.pd, align 1, !tbaa !13
  %.not39.us.i120 = icmp eq i8 %i.pe, 0
  br i1 %.not39.us.i120, label %bb.t, label %.split.us.i115

bb.t:                                             ; preds = %.lr.ph46.split.us.i118
  %indvars.iv.next59.i121 = add nuw nsw i64 %indvars.iv58.i119, 1 ; 2 uses
  %exitcond209.not = icmp eq i64 %indvars.iv.next59.i121, %i.li
  br i1 %exitcond209.not, label %_ZL9unpackintP9lua_StatePKciii.exit126, label %.lr.ph46.split.us.i118, !llvm.loop !68

bb.u:                                             ; preds = %.lr.ph46.split.i112
  %indvars.iv.next55.i116 = add nuw nsw i64 %indvars.iv54.i113, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next55.i116, %wide.trip.count
  br i1 %exitcond.not, label %_ZL9unpackintP9lua_StatePKciii.exit126, label %.lr.ph46.split.i112, !llvm.loop !68

.lr.ph46.split.i112:                              ; preds = %.lr.ph46.split.i112.preheader, %bb.u
  %indvars.iv54.i113 = phi i64 [ %indvars.iv.next55.i116, %bb.u ], [ 8, %.lr.ph46.split.i112.preheader ] ; 2 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %i.lf, i64 %indvars.iv54.i113
  %i.pg = load i8, ptr %i.pf, align 1, !tbaa !13
  %.not39.i114 = icmp eq i8 %i.pg, 0
  br i1 %.not39.i114, label %bb.u, label %.split.us.i115

.split.us.i115:                                   ; preds = %.lr.ph46.split.i112, %.lr.ph46.split.us.i118
  call void (ptr, ptr, ...) @_Z11luaL_errorLP9lua_StatePKcz(ptr noundef %0, ptr noundef nonnull @.str.62, i32 noundef %i.w) #14
  unreachable

_ZL9unpackintP9lua_StatePKciii.exit126:           ; preds = %bb.u, %bb.t, %._crit_edge.i107.thread, %._crit_edge.i107
  %.0.lcssa.i108226 = phi i64 [ %.lcssa, %._crit_edge.i107.thread ], [ %.lcssa287, %bb.t ], [ %.lcssa287, %._crit_edge.i107 ], [ %.lcssa, %bb.u ] ; 2 uses
  %i.ph = load i64, ptr %i.b, align 8, !tbaa !12
  %i.pi = add nsw i64 %i.le, %i.x
  %i.pj = sub i64 %i.ph, %i.pi
  %.not65 = icmp ugt i64 %.0.lcssa.i108226, %i.pj
  br i1 %.not65, label %bb.v, label %_ZL9unpackintP9lua_StatePKciii.exit126.thread

bb.v:                                             ; preds = %_ZL9unpackintP9lua_StatePKciii.exit126
  call void @_Z14luaL_argerrorLP9lua_StateiPKc(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.59) #14
  unreachable

_ZL9unpackintP9lua_StatePKciii.exit126.thread:    ; preds = %bb.s, %_ZL9unpackintP9lua_StatePKciii.exit126
  %.1.i100129 = phi i64 [ %.0.lcssa.i108226, %_ZL9unpackintP9lua_StatePKciii.exit126 ], [ 0, %bb.s ] ; 2 uses
  %i.pk = getelementptr inbounds i8, ptr %i.lf, i64 %i.x
  call void @_Z15lua_pushlstringP9lua_StatePKcm(ptr noundef %0, ptr noundef %i.pk, i64 noundef %.1.i100129)
  %i.pl = trunc i64 %.1.i100129 to i32
  %i.pm = add nsw i32 %i.ab, %i.pl
  br label %bb.z

bb.w:                                             ; preds = %bb.e
  %i.pn = sext i32 %i.ab to i64                   ; 2 uses
  %i.po = getelementptr inbounds i8, ptr %i.f, i64 %i.pn ; 2 uses
  %i.pp = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.po) #15 ; 3 uses
  %i.pq = add i64 %i.pp, %i.pn
  %i.pr = load i64, ptr %i.b, align 8, !tbaa !12
  %i.ps = icmp ult i64 %i.pq, %i.pr
  br i1 %i.ps, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @_Z14luaL_argerrorLP9lua_StateiPKc(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.61) #14
  unreachable

bb.y:                                             ; preds = %bb.w
  call void @_Z15lua_pushlstringP9lua_StatePKcm(ptr noundef %0, ptr noundef nonnull %i.po, i64 noundef %i.pp)
  %i.pt = trunc i64 %i.pp to i32
  %i.pu = add i32 %i.ab, 1
  %i.pv = add i32 %i.pu, %i.pt
  br label %bb.z

default.unreachable219:                           ; preds = %bb.e
  unreachable

bb.z:                                             ; preds = %bb.e, %bb.e, %bb.e, %bb.y, %_ZL9unpackintP9lua_StatePKciii.exit126.thread, %bb.r, %bb.q, %_ZL9unpackintP9lua_StatePKciii.exit94, %_ZL9unpackintP9lua_StatePKciii.exit
  %.160 = phi i32 [ %i.ac, %bb.y ], [ %i.ac, %_ZL9unpackintP9lua_StatePKciii.exit ], [ %i.ac, %_ZL9unpackintP9lua_StatePKciii.exit94 ], [ %i.ac, %bb.q ], [ %i.ac, %bb.r ], [ %i.ac, %_ZL9unpackintP9lua_StatePKciii.exit126.thread ], [ %.059179, %bb.e ], [ %.059179, %bb.e ], [ %.059179, %bb.e ] ; 2 uses
  %.1 = phi i32 [ %i.pv, %bb.y ], [ %i.ab, %_ZL9unpackintP9lua_StatePKciii.exit ], [ %i.ab, %_ZL9unpackintP9lua_StatePKciii.exit94 ], [ %i.ab, %bb.q ], [ %i.ab, %bb.r ], [ %i.pm, %_ZL9unpackintP9lua_StatePKciii.exit126.thread ], [ %i.ab, %bb.e ], [ %i.ab, %bb.e ], [ %i.ab, %bb.e ]
  %i.pw = add nsw i32 %.1, %i.w                   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  %i.px = load ptr, ptr %i.a, align 8, !tbaa !36
  %i.py = load i8, ptr %i.px, align 1, !tbaa !13
  %.not63 = icmp eq i8 %i.py, 0
  br i1 %.not63, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !71

._crit_edge.loopexit:                             ; preds = %bb.z
  %i.pz = add nsw i32 %i.pw, 1
  %i.qa = add nsw i32 %.160, 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.c
  %.059.lcssa = phi i32 [ 1, %bb.c ], [ %i.qa, %._crit_edge.loopexit ]
  %.058.lcssa = phi i32 [ %i.m, %bb.c ], [ %i.pz, %._crit_edge.loopexit ]
  call void @_Z15lua_pushintegerP9lua_Statei(ptr noundef %0, i32 noundef %.058.lcssa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  ret i32 %.059.lcssa
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

end_hunk_0
