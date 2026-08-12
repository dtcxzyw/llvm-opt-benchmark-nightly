inline.NumInlined: 134
inline.NumDeleted: 36
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@Aig_ManSpeedupNode_rec:bb.a
  %.pre = load i32, ptr %i.o, align 4, !tbaa !27
  br label %Vec_PtrPush.exit

Vec_PtrPush.exit:                                 ; preds = %bb.e, %bb.j, %Vec_PtrGrow.exit12.sink.split.i
  %i.ah = phi i32 [ %i.p, %bb.e ], [ %i.p, %bb.j ], [ %.pre, %Vec_PtrGrow.exit12.sink.split.i ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !30
  %i.ak = add nsw i32 %i.ah, 1
  store i32 %i.ak, ptr %i.o, align 4, !tbaa !27
  %i.al = sext i32 %i.ah to i64
  %i.am = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.al
  store ptr %1, ptr %i.am, align 8, !tbaa !31
  br label %bb.o

bb.o:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a, %Vec_PtrPush.exit
  %.0 = phi i32 [ 0, %bb.b ], [ 1, %bb.a ], [ 1, %Vec_PtrPush.exit ], [ 0, %bb.c ], [ 0, %bb.d ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define void @Aig_ManSpeedupNode(ptr nofree readnone captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [32 x ptr], align 16              ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.b = getelementptr i8, ptr %3, i64 4          ; 4 uses
  %.val120 = load i32, ptr %i.b, align 4, !tbaa !27 ; 2 uses
  %i.c = icmp sgt i32 %.val120, 0
  br i1 %i.c, label %.lr.ph144, label %.critedge

.lr.ph144:                                        ; preds = %bb.a
  %i.d = getelementptr i8, ptr %3, i64 8
  %.val127 = load ptr, ptr %i.d, align 8, !tbaa !30 ; 2 uses
  %wide.trip.count170 = zext nneg i32 %.val120 to i64 ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph144, %..critedge2_crit_edge
  %indvars.iv167 = phi i64 [ 0, %.lr.ph144 ], [ %indvars.iv.next168, %..critedge2_crit_edge ] ; 3 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %.val127, i64 %indvars.iv167
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !31
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %.not111 = icmp eq i64 %indvars.iv167, %indvars.iv
  br i1 %.not111, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %.val127, i64 %indvars.iv
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !31
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !32
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !32
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = xor i64 %i.n, %i.k
  %i.p = icmp ult i64 %i.o, 2
  br i1 %i.p, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count170
  br i1 %exitcond.not, label %..critedge2_crit_edge, label %bb.b, !llvm.loop !38

..critedge2_crit_edge:                            ; preds = %bb.d
  %indvars.iv.next168 = add nuw nsw i64 %indvars.iv167, 1 ; 2 uses
  %exitcond171.not = icmp eq i64 %indvars.iv.next168, %wide.trip.count170
  br i1 %exitcond171.not, label %.critedge, label %.lr.ph, !llvm.loop !40

.critedge:                                        ; preds = %..critedge2_crit_edge, %bb.a
  %i.q = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #14 ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 4 ; 3 uses
  store i32 0, ptr %i.r, align 4, !tbaa !27
  store i32 100, ptr %i.q, align 8, !tbaa !29
  %i.s = tail call noalias dereferenceable_or_null(800) ptr @malloc(i64 noundef 800) #14
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 4 uses
  store ptr %i.s, ptr %i.t, align 8, !tbaa !30
  tail call void @Aig_ManIncrementTravId(ptr noundef %1) #15
  %i.u = getelementptr i8, ptr %1, i64 48         ; 2 uses
  %.val129 = load ptr, ptr %i.u, align 8, !tbaa !41
  %i.v = getelementptr i8, ptr %1, i64 312
  %.val112 = load i32, ptr %i.v, align 8, !tbaa !8 ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.val129, i64 32
  store i32 %.val112, ptr %i.w, align 8, !tbaa !24
  %.val118 = load i32, ptr %i.b, align 4, !tbaa !27 ; 3 uses
  %i.x = icmp sgt i32 %.val118, 0
  br i1 %i.x, label %.lr.ph146, label %.critedge4

.lr.ph146:                                        ; preds = %.critedge
  %i.y = getelementptr i8, ptr %3, i64 8
  %.val125 = load ptr, ptr %i.y, align 8, !tbaa !30 ; 5 uses
  %wide.trip.count175 = zext nneg i32 %.val118 to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count175, 3      ; 3 uses
  %i.z = icmp ult i32 %.val118, 4
  br i1 %i.z, label %.epil.preheader, label %.lr.ph146.new

.lr.ph146.new:                                    ; preds = %.lr.ph146
  %unroll_iter = and i64 %wide.trip.count175, 2147483644
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph146.new
  %indvars.iv172 = phi i64 [ 0, %.lr.ph146.new ], [ %indvars.iv.next173.3, %bb.e ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph146.new ], [ %niter.next.3, %bb.e ]
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %.val125, i64 %indvars.iv172
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !31
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !32
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = and i64 %i.ae, -2
  %i.ag = inttoptr i64 %i.af to ptr
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  store i32 %.val112, ptr %i.ah, align 8, !tbaa !24
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %.val125, i64 %indvars.iv172
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !31
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !32
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = and i64 %i.an, -2
  %i.ap = inttoptr i64 %i.ao to ptr
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  store i32 %.val112, ptr %i.aq, align 8, !tbaa !24
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %.val125, i64 %indvars.iv172
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !31
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !32
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = and i64 %i.aw, -2
  %i.ay = inttoptr i64 %i.ax to ptr
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  store i32 %.val112, ptr %i.az, align 8, !tbaa !24
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %.val125, i64 %indvars.iv172
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !31
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !32
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = and i64 %i.bf, -2
  %i.bh = inttoptr i64 %i.bg to ptr
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  store i32 %.val112, ptr %i.bi, align 8, !tbaa !24
  %indvars.iv.next173.3 = add nuw nsw i64 %indvars.iv172, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.critedge4.loopexit.unr-lcssa, label %bb.e, !llvm.loop !42

.critedge4.loopexit.unr-lcssa:                    ; preds = %bb.e
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.critedge4, label %.epil.preheader

.epil.preheader:                                  ; preds = %.critedge4.loopexit.unr-lcssa, %.lr.ph146
  %indvars.iv172.epil.init = phi i64 [ 0, %.lr.ph146 ], [ %indvars.iv.next173.3, %.critedge4.loopexit.unr-lcssa ]
  %lcmp.mod200 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod200)
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.epil.preheader
  %indvars.iv172.epil = phi i64 [ %indvars.iv172.epil.init, %.epil.preheader ], [ %indvars.iv.next173.epil, %bb.f ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.f ]
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %.val125, i64 %indvars.iv172.epil
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !31
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !32
  %i.bn = ptrtoint ptr %i.bm to i64
  %i.bo = and i64 %i.bn, -2
  %i.bp = inttoptr i64 %i.bo to ptr
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 32
  store i32 %.val112, ptr %i.bq, align 8, !tbaa !24
  %indvars.iv.next173.epil = add nuw nsw i64 %indvars.iv172.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.critedge4, label %bb.f, !llvm.loop !43

.critedge4:                                       ; preds = %.critedge4.loopexit.unr-lcssa, %bb.f, %.critedge
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !32
  %i.bt = ptrtoint ptr %i.bs to i64
  %i.bu = and i64 %i.bt, -2
  %i.bv = inttoptr i64 %i.bu to ptr
  %i.bw = tail call i32 @Aig_ManSpeedupNode_rec(ptr noundef nonnull %1, ptr noundef %i.bv, ptr noundef nonnull %i.q)
  %.not = icmp eq i32 %i.bw, 0
  br i1 %.not, label %bb.g, label %bb.i

bb.g:                                             ; preds = %.critedge4
  %i.bx = load ptr, ptr %i.t, align 8, !tbaa !30  ; 2 uses
  %.not.i = icmp eq ptr %i.bx, null
  br i1 %.not.i, label %Vec_PtrFree.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @free(ptr noundef nonnull %i.bx) #15
  br label %Vec_PtrFree.exit

Vec_PtrFree.exit:                                 ; preds = %bb.g, %bb.h
  tail call void @free(ptr noundef nonnull %i.q) #15
  br label %.loopexit

bb.i:                                             ; preds = %.critedge4
  %i.by = getelementptr i8, ptr %4, i64 4         ; 5 uses
  %.val117 = load i32, ptr %i.by, align 4, !tbaa !27 ; 2 uses
  %i.bz = shl nuw nsw i32 1, %.val117             ; 2 uses
  %.not164 = icmp eq i32 %.val117, 31             ; 2 uses
  br i1 %.not164, label %._crit_edge, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.i
  %i.ca = getelementptr i8, ptr %3, i64 8
  %i.cb = getelementptr i8, ptr %4, i64 8
  %wide.trip.count189 = zext nneg i32 %i.bz to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.critedge10
  %indvars.iv186 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next187, %.critedge10 ] ; 3 uses
  %.val116147 = load i32, ptr %i.b, align 4, !tbaa !27
  %i.cc = icmp sgt i32 %.val116147, 0
  br i1 %i.cc, label %.lr.ph149, label %.critedge6.preheader

.critedge6.preheader:                             ; preds = %.lr.ph149, %.preheader
  %.val115150 = load i32, ptr %i.by, align 4, !tbaa !27
  %i.cd = icmp sgt i32 %.val115150, 0
  br i1 %i.cd, label %.lr.ph152, label %.critedge8.preheader

.lr.ph152:                                        ; preds = %.critedge6.preheader
  %i.ce = trunc nuw nsw i64 %indvars.iv186 to i32
  %i.cf = xor i32 %i.ce, -1
  br label %.critedge6

.lr.ph149:                                        ; preds = %.preheader, %.lr.ph149
  %indvars.iv177 = phi i64 [ %indvars.iv.next178, %.lr.ph149 ], [ 0, %.preheader ] ; 2 uses
  %.val124 = load ptr, ptr %i.ca, align 8, !tbaa !30
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %.val124, i64 %indvars.iv177
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !31
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !32
  %i.ck = ptrtoint ptr %i.cj to i64
  %i.cl = and i64 %i.ck, -2
  %i.cm = inttoptr i64 %i.cl to ptr               ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 40
  store ptr %i.cm, ptr %i.cn, align 8, !tbaa !45
  %indvars.iv.next178 = add nuw nsw i64 %indvars.iv177, 1 ; 2 uses
  %.val116 = load i32, ptr %i.b, align 4, !tbaa !27
  %i.co = sext i32 %.val116 to i64
  %i.cp = icmp slt i64 %indvars.iv.next178, %i.co
  br i1 %i.cp, label %.lr.ph149, label %.critedge6.preheader, !llvm.loop !46

.critedge8.preheader:                             ; preds = %.critedge6, %.critedge6.preheader
  %.val114153 = load i32, ptr %i.r, align 4, !tbaa !27
  %i.cq = icmp sgt i32 %.val114153, 0
  br i1 %i.cq, label %.lr.ph155, label %.critedge10

.critedge6:                                       ; preds = %.lr.ph152, %.critedge6
  %indvars.iv180 = phi i64 [ 0, %.lr.ph152 ], [ %indvars.iv.next181, %.critedge6 ] ; 3 uses
  %.val123 = load ptr, ptr %i.cb, align 8, !tbaa !30
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %.val123, i64 %indvars.iv180
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !31
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !32
  %.val128 = load ptr, ptr %i.u, align 8, !tbaa !41
  %i.cv = trunc nuw nsw i64 %indvars.iv180 to i32
  %i.cw = lshr i32 %i.cf, %i.cv
  %i.cx = and i32 %i.cw, 1
  %i.cy = ptrtoint ptr %.val128 to i64
  %i.cz = zext nneg i32 %i.cx to i64
  %i.da = xor i64 %i.cy, %i.cz
  %i.db = inttoptr i64 %i.da to ptr
  %i.dc = ptrtoint ptr %i.cu to i64
  %i.dd = and i64 %i.dc, -2
  %i.de = inttoptr i64 %i.dd to ptr
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 40
  store ptr %i.db, ptr %i.df, align 8, !tbaa !45
  %indvars.iv.next181 = add nuw nsw i64 %indvars.iv180, 1 ; 2 uses
  %.val115 = load i32, ptr %i.by, align 4, !tbaa !27
  %i.dg = sext i32 %.val115 to i64
  %i.dh = icmp slt i64 %indvars.iv.next181, %i.dg
  br i1 %i.dh, label %.critedge6, label %.critedge8.preheader, !llvm.loop !47

.lr.ph155:                                        ; preds = %.critedge8.preheader, %Aig_ObjChild1Copy.exit
  %indvars.iv183 = phi i64 [ %indvars.iv.next184, %Aig_ObjChild1Copy.exit ], [ 0, %.critedge8.preheader ] ; 2 uses
  %.val122 = load ptr, ptr %i.t, align 8, !tbaa !30
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %.val122, i64 %indvars.iv183
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !31 ; 3 uses
  %i.dk = getelementptr i8, ptr %i.dj, i64 8
  %.val130 = load ptr, ptr %i.dk, align 8, !tbaa !25
  %i.dl = ptrtoint ptr %.val130 to i64            ; 2 uses
  %i.dm = and i64 %i.dl, -2                       ; 2 uses
  %.not.i134 = icmp eq i64 %i.dm, 0
  br i1 %.not.i134, label %Aig_ObjChild0Copy.exit, label %bb.j

bb.j:                                             ; preds = %.lr.ph155
  %i.dn = inttoptr i64 %i.dm to ptr
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 40
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !45
  %i.dq = and i64 %i.dl, 1
  %i.dr = ptrtoint ptr %i.dp to i64
  %i.ds = xor i64 %i.dq, %i.dr
  %i.dt = inttoptr i64 %i.ds to ptr
  br label %Aig_ObjChild0Copy.exit

Aig_ObjChild0Copy.exit:                           ; preds = %.lr.ph155, %bb.j
  %i.du = phi ptr [ %i.dt, %bb.j ], [ null, %.lr.ph155 ]
  %i.dv = getelementptr i8, ptr %i.dj, i64 16
  %.val131 = load ptr, ptr %i.dv, align 8, !tbaa !26
  %i.dw = ptrtoint ptr %.val131 to i64            ; 2 uses
  %i.dx = and i64 %i.dw, -2                       ; 2 uses
  %.not.i135 = icmp eq i64 %i.dx, 0
  br i1 %.not.i135, label %Aig_ObjChild1Copy.exit, label %bb.k

bb.k:                                             ; preds = %Aig_ObjChild0Copy.exit
  %i.dy = inttoptr i64 %i.dx to ptr
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 40
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !45
  %i.eb = and i64 %i.dw, 1
  %i.ec = ptrtoint ptr %i.ea to i64
  %i.ed = xor i64 %i.eb, %i.ec
  %i.ee = inttoptr i64 %i.ed to ptr
  br label %Aig_ObjChild1Copy.exit

Aig_ObjChild1Copy.exit:                           ; preds = %Aig_ObjChild0Copy.exit, %bb.k
  %i.ef = phi ptr [ %i.ee, %bb.k ], [ null, %Aig_ObjChild0Copy.exit ]
  %i.eg = tail call ptr @Aig_And(ptr noundef nonnull %1, ptr noundef %i.du, ptr noundef %i.ef) #15
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dj, i64 40
  store ptr %i.eg, ptr %i.eh, align 8, !tbaa !45
  %indvars.iv.next184 = add nuw nsw i64 %indvars.iv183, 1 ; 2 uses
  %.val114 = load i32, ptr %i.r, align 4, !tbaa !27
  %i.ei = sext i32 %.val114 to i64
  %i.ej = icmp slt i64 %indvars.iv.next184, %i.ei
  br i1 %i.ej, label %.lr.ph155, label %.critedge10, !llvm.loop !48

.critedge10:                                      ; preds = %Aig_ObjChild1Copy.exit, %.critedge8.preheader
  %i.ek = load ptr, ptr %i.br, align 8, !tbaa !32
  %i.el = ptrtoint ptr %i.ek to i64               ; 2 uses
  %i.em = and i64 %i.el, -2
  %i.en = inttoptr i64 %i.em to ptr
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 40
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !45
  %i.eq = and i64 %i.el, 1
  %i.er = ptrtoint ptr %i.ep to i64
  %i.es = xor i64 %i.eq, %i.er
  %i.et = inttoptr i64 %i.es to ptr
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv186
  store ptr %i.et, ptr %i.eu, align 8, !tbaa !49
  %indvars.iv.next187 = add nuw nsw i64 %indvars.iv186, 1 ; 2 uses
  %exitcond190.not = icmp eq i64 %indvars.iv.next187, %wide.trip.count189
  br i1 %exitcond190.not, label %._crit_edge, label %.preheader, !llvm.loop !50

._crit_edge:                                      ; preds = %.critedge10, %bb.i
  %i.ev = load ptr, ptr %i.t, align 8, !tbaa !30  ; 2 uses
  %.not.i136 = icmp eq ptr %i.ev, null
  br i1 %.not.i136, label %Vec_PtrFree.exit137, label %bb.l

bb.l:                                             ; preds = %._crit_edge
  tail call void @free(ptr noundef nonnull %i.ev) #15
  br label %Vec_PtrFree.exit137

Vec_PtrFree.exit137:                              ; preds = %._crit_edge, %bb.l
  tail call void @free(ptr noundef nonnull %i.q) #15
  %.val113161 = load i32, ptr %i.by, align 4, !tbaa !27
  %i.ew = icmp sgt i32 %.val113161, 0
  br i1 %i.ew, label %.lr.ph163, label %.critedge12

.lr.ph163:                                        ; preds = %Vec_PtrFree.exit137
  %i.ex = getelementptr i8, ptr %4, i64 8
  br i1 %.not164, label %.critedge12, label %.lr.ph159.preheader

.lr.ph159.preheader:                              ; preds = %.lr.ph163
  %5 = zext nneg i32 %i.bz to i64
  br label %.lr.ph159

.lr.ph159:                                        ; preds = %.lr.ph159.preheader, %._crit_edge160
  %indvars.iv194 = phi i64 [ 0, %.lr.ph159.preheader ], [ %indvars.iv.next195, %._crit_edge160 ] ; 3 uses
  %.val121 = load ptr, ptr %i.ex, align 8, !tbaa !30
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %.val121, i64 %indvars.iv194
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !31
  %i.fa = trunc nuw nsw i64 %indvars.iv194 to i32 ; 2 uses
  %i.fb = shl nuw i32 1, %i.fa
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  %i.fd = shl i32 2, %i.fa
  %i.fe = sext i32 %i.fd to i64
  %i.ff = sext i32 %i.fb to i64
  %invariant.gep = getelementptr [8 x i8], ptr %i.a, i64 %i.ff
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph159, %bb.m
  %indvars.iv191 = phi i64 [ 0, %.lr.ph159 ], [ %indvars.iv.next192, %bb.m ] ; 3 uses
  %i.fg = load ptr, ptr %i.fc, align 8, !tbaa !32
  %i.fh = ptrtoint ptr %i.fg to i64
  %i.fi = and i64 %i.fh, -2
  %i.fj = inttoptr i64 %i.fi to ptr
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv191
  %i.fk = load ptr, ptr %gep, align 8, !tbaa !49
  %i.fl = getelementptr inbounds [8 x i8], ptr %i.a, i64 %indvars.iv191 ; 2 uses
  %i.fm = load ptr, ptr %i.fl, align 16, !tbaa !49
  %i.fn = tail call ptr @Aig_Mux(ptr noundef nonnull %1, ptr noundef %i.fj, ptr noundef %i.fk, ptr noundef %i.fm) #15
  store ptr %i.fn, ptr %i.fl, align 16, !tbaa !49
  %indvars.iv.next192 = add nsw i64 %indvars.iv191, %i.fe ; 2 uses
  %i.fo = icmp slt i64 %indvars.iv.next192, %5
  br i1 %i.fo, label %bb.m, label %._crit_edge160, !llvm.loop !51

._crit_edge160:                                   ; preds = %bb.m
  %indvars.iv.next195 = add nuw nsw i64 %indvars.iv194, 1 ; 2 uses
  %.val113 = load i32, ptr %i.by, align 4, !tbaa !27
  %i.fp = sext i32 %.val113 to i64
  %i.fq = icmp slt i64 %indvars.iv.next195, %i.fp
  br i1 %i.fq, label %.lr.ph159, label %.critedge12, !llvm.loop !52

.critedge12:                                      ; preds = %._crit_edge160, %.lr.ph163, %Vec_PtrFree.exit137
  %i.fr = load ptr, ptr %i.br, align 8, !tbaa !32
  %i.fs = ptrtoint ptr %i.fr to i64
  %i.ft = and i64 %i.fs, -2
  %i.fu = inttoptr i64 %i.ft to ptr               ; 3 uses
  %i.fv = load ptr, ptr %i.a, align 16, !tbaa !49
  %i.fw = ptrtoint ptr %i.fv to i64
  %i.fx = and i64 %i.fw, -2
  %i.fy = inttoptr i64 %i.fx to ptr               ; 3 uses
  %i.fz = getelementptr i8, ptr %1, i64 248       ; 2 uses
  %.val133 = load ptr, ptr %i.fz, align 8, !tbaa !53 ; 3 uses
  %.not.i138 = icmp eq ptr %.val133, null
  br i1 %.not.i138, label %Aig_ObjEquiv.exit140.thread, label %Aig_ObjEquiv.exit

Aig_ObjEquiv.exit:                                ; preds = %.critedge12
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fu, i64 36
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !54
  %i.gc = sext i32 %i.gb to i64
  %i.gd = getelementptr inbounds [8 x i8], ptr %.val133, i64 %i.gc
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !49
  %i.gf = icmp eq ptr %i.ge, null
  br i1 %i.gf, label %Aig_ObjEquiv.exit140, label %.loopexit

Aig_ObjEquiv.exit140:                             ; preds = %Aig_ObjEquiv.exit
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fy, i64 36
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !54
  %i.gi = sext i32 %i.gh to i64
  %i.gj = getelementptr inbounds [8 x i8], ptr %.val133, i64 %i.gi
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !49
  %i.gl = icmp eq ptr %i.gk, null
  br i1 %i.gl, label %Aig_ObjEquiv.exit140.thread, label %.loopexit

Aig_ObjEquiv.exit140.thread:                      ; preds = %.critedge12, %Aig_ObjEquiv.exit140
  %i.gm = tail call i32 @Aig_ObjCheckTfi(ptr noundef nonnull %1, ptr noundef %i.fy, ptr noundef %i.fu) #15
  %.not110 = icmp eq i32 %i.gm, 0
  br i1 %.not110, label %bb.n, label %.loopexit

bb.n:                                             ; preds = %Aig_ObjEquiv.exit140.thread
  %i.gn = load ptr, ptr %i.fz, align 8, !tbaa !53
  %i.go = getelementptr inbounds nuw i8, ptr %i.fu, i64 36
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !54
  %i.gq = sext i32 %i.gp to i64
  %i.gr = getelementptr inbounds [8 x i8], ptr %i.gn, i64 %i.gq
  store ptr %i.fy, ptr %i.gr, align 8, !tbaa !49
  br label %.loopexit

.loopexit:                                        ; preds = %bb.c, %Aig_ObjEquiv.exit, %Aig_ObjEquiv.exit140, %Aig_ObjEquiv.exit140.thread, %bb.n, %Vec_PtrFree.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare void @Aig_ManIncrementTravId(ptr noundef) local_unnamed_addr #3

declare ptr @Aig_And(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @Aig_Mux(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @Aig_ObjCheckTfi(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind uwtable
define i32 @Nwk_ManDelayTraceTCEdges(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, float noundef %2, i32 noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [32 x i32], align 16              ; 4 uses
  %i.b = alloca [32 x float], align 16            ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  %i.c = getelementptr i8, ptr %1, i64 52
  %.val101 = load float, ptr %i.c, align 4, !tbaa !55
  br label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !56   ; 3 uses
  %i.f = getelementptr i8, ptr %1, i64 52
  %.val = load float, ptr %i.f, align 4, !tbaa !55 ; 3 uses
  %i.g = icmp eq ptr %i.e, null
  br i1 %i.g, label %.preheader, label %bb.e

.preheader:                                       ; preds = %.thread, %bb.b
  %.val102 = phi float [ %.val101, %.thread ], [ %.val, %bb.b ]
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.i = load i32, ptr %i.h, align 4, !tbaa !62   ; 2 uses
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %.lr.ph78, label %.critedge

.lr.ph78:                                         ; preds = %.preheader
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !63
  %i.m = fpext float %.val102 to double
  %i.n = fpext float %2 to double
  %wide.trip.count95 = zext nneg i32 %i.i to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph78, %bb.d
  %indvars.iv92 = phi i64 [ 0, %.lr.ph78 ], [ %indvars.iv.next93, %bb.d ] ; 3 uses
  %.04876 = phi i32 [ 0, %.lr.ph78 ], [ %.149, %bb.d ] ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv92
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !64   ; 2 uses
  %.not57 = icmp eq ptr %i.p, null
  br i1 %.not57, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr i8, ptr %i.p, i64 48
  %.val60 = load float, ptr %i.q, align 8, !tbaa !66
  %i.r = fpext float %.val60 to double
  %i.s = fadd double %i.r, 1.000000e+00
  %i.t = fadd double %i.s, %i.n
  %i.u = fcmp ogt double %i.t, %i.m
  %i.v = trunc nuw nsw i64 %indvars.iv92 to i32
  %i.w = shl nuw i32 1, %i.v
  %i.x = select i1 %i.u, i32 %i.w, i32 0
  %.149 = or i32 %i.x, %.04876                    ; 2 uses
  %indvars.iv.next93 = add nuw nsw i64 %indvars.iv92, 1 ; 2 uses
  %exitcond96.not = icmp eq i64 %indvars.iv.next93, %wide.trip.count95
  br i1 %exitcond96.not, label %.critedge, label %bb.c, !llvm.loop !67

bb.e:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.z = load i32, ptr %i.y, align 4, !tbaa !68
  %.not54 = icmp eq i32 %i.z, 0
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 148
  %i.ab = getelementptr i8, ptr %1, i64 60        ; 2 uses
  %.val62 = load i32, ptr %i.ab, align 4, !tbaa !62 ; 3 uses
  %i.ac = sext i32 %.val62 to i64
  %i.ad = getelementptr inbounds [132 x i8], ptr %i.aa, i64 %i.ac ; 2 uses
  br i1 %.not54, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.ae = icmp sgt i32 %.val62, 0
  br i1 %i.ae, label %.lr.ph72, label %.critedge

.lr.ph72:                                         ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !63
  %wide.trip.count90 = zext nneg i32 %.val62 to i64
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph72, %bb.h
  %indvars.iv87 = phi i64 [ 0, %.lr.ph72 ], [ %indvars.iv.next88, %bb.h ] ; 3 uses
  %.25070 = phi i32 [ 0, %.lr.ph72 ], [ %.3, %bb.h ] ; 2 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv87
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !64 ; 2 uses
  %.not55 = icmp eq ptr %i.ai, null
  br i1 %.not55, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = getelementptr i8, ptr %i.ai, i64 48
  %.val59 = load float, ptr %i.aj, align 8, !tbaa !66
  %i.ak = load float, ptr %i.ad, align 4, !tbaa !70
  %i.al = fadd float %.val59, %i.ak
  %i.am = fadd float %2, %i.al
end_hunk_0
begin_hunk_1_@Nwk_ManSpeedup:bb.a
bb.bz:                                            ; preds = %bb.by, %bb.bx
  %.val325 = phi float [ %.val327, %bb.by ], [ %.val328, %bb.bx ]
  %i.le = phi ptr [ %i.la, %bb.by ], [ %i.ky, %bb.bx ]
  %i.lf = load ptr, ptr %.val312521, align 8, !tbaa !31 ; 2 uses
  %i.lg = getelementptr i8, ptr %i.lf, i64 56
  %.val326 = load float, ptr %i.lg, align 8, !tbaa !76
  %i.lh = fcmp olt float %.val326, %.val325
  br i1 %i.lh, label %bb.ca, label %.thread

bb.ca:                                            ; preds = %bb.bz
  store ptr %i.le, ptr %.val312521, align 8, !tbaa !31
  store ptr %i.lf, ptr %i.kx, align 8, !tbaa !31
  br label %.thread

.thread:                                          ; preds = %bb.bt, %bb.bz, %bb.ca, %bb.bw
  %.val314514 = phi ptr [ %.val314510, %bb.bt ], [ %.val312521, %bb.bz ], [ %.val312521, %bb.ca ], [ %.val314510, %bb.bw ]
  %i.li = phi ptr [ %i.gu, %bb.bt ], [ %.val312521, %bb.bz ], [ %.val312521, %bb.ca ], [ %.val314510, %bb.bw ]
  %i.lj = phi ptr [ %i.gw, %bb.bt ], [ %.val312521, %bb.bz ], [ %.val312521, %bb.ca ], [ %.val314510, %bb.bw ]
  tail call void @Aig_ManSpeedupNode(ptr nonnull poison, ptr noundef %i.bu, ptr noundef nonnull %i.cw, ptr noundef nonnull %i.ci, ptr noundef nonnull %i.ce)
  br label %.critedge11.thread

.critedge11.thread:                               ; preds = %.preheader404, %bb.ac, %.thread, %bb.w, %bb.v, %.critedge11, %.critedge8, %bb.x
  %.val312523 = phi ptr [ %.val312524, %bb.v ], [ %.val312524, %bb.x ], [ %.val312524, %.critedge8 ], [ %.val312521, %.critedge11 ], [ %.val312524, %bb.ac ], [ %.val312521, %.thread ], [ %.val312524, %bb.w ], [ %.val312524, %.preheader404 ] ; 2 uses
  %.val314513 = phi ptr [ %.val314512, %bb.v ], [ %.val314512, %bb.x ], [ %.val314512, %.critedge8 ], [ %.val314510, %.critedge11 ], [ %.val314512, %bb.ac ], [ %.val314514, %.thread ], [ %.val314512, %bb.w ], [ %.val314512, %.preheader404 ]
  %i.lk = phi ptr [ %i.cq, %bb.v ], [ %i.cq, %bb.x ], [ %i.cq, %.critedge8 ], [ %i.gu, %.critedge11 ], [ %i.cq, %bb.ac ], [ %i.li, %.thread ], [ %i.cq, %bb.w ], [ %i.cq, %.preheader404 ]
  %i.ll = phi i32 [ %i.cr, %bb.v ], [ %i.cr, %bb.x ], [ %i.cr, %.critedge8 ], [ %i.gv, %.critedge11 ], [ %i.cr, %bb.ac ], [ %i.gv, %.thread ], [ %i.cr, %bb.w ], [ %i.cr, %.preheader404 ]
  %i.lm = phi ptr [ %i.cs, %bb.v ], [ %i.cs, %bb.x ], [ %i.cs, %.critedge8 ], [ %i.gw, %.critedge11 ], [ %i.cs, %bb.ac ], [ %i.lj, %.thread ], [ %i.cs, %bb.w ], [ %i.cs, %.preheader404 ]
  %.5 = phi i32 [ %.4447, %bb.v ], [ %.4447, %bb.x ], [ %.4447, %.critedge8 ], [ %i.du, %.critedge11 ], [ %i.du, %bb.ac ], [ %i.du, %.thread ], [ %.4447, %bb.w ], [ %i.du, %.preheader404 ] ; 2 uses
  %.3 = phi i32 [ %.2448, %bb.v ], [ %.2448, %bb.x ], [ %.2448, %.critedge8 ], [ %.2448, %.critedge11 ], [ %.2448, %bb.ac ], [ %i.ha, %.thread ], [ %.2448, %bb.w ], [ %.2448, %.preheader404 ] ; 2 uses
  %indvars.iv.next486 = add nuw nsw i64 %indvars.iv485, 1 ; 2 uses
  %i.ln = load ptr, ptr %i.q, align 8, !tbaa !75  ; 2 uses
  %i.lo = getelementptr i8, ptr %i.ln, i64 4
  %.val305 = load i32, ptr %i.lo, align 4, !tbaa !27
  %i.lp = sext i32 %.val305 to i64
  %i.lq = icmp slt i64 %indvars.iv.next486, %i.lp
  br i1 %i.lq, label %bb.v, label %.critedge6, !llvm.loop !89

.critedge6:                                       ; preds = %.critedge11.thread, %bb.u
  %i.lr = phi ptr [ %i.cg, %bb.u ], [ %.val312523, %.critedge11.thread ] ; 2 uses
  %.4.lcssa = phi i32 [ 0, %bb.u ], [ %.5, %.critedge11.thread ] ; 3 uses
  %.2.lcssa = phi i32 [ 0, %bb.u ], [ %.3, %.critedge11.thread ] ; 2 uses
  %.not.i = icmp eq ptr %i.lr, null
  br i1 %.not.i, label %Vec_PtrFree.exit, label %bb.cb

bb.cb:                                            ; preds = %.critedge6
  tail call void @free(ptr noundef nonnull %i.lr) #15
  br label %Vec_PtrFree.exit

Vec_PtrFree.exit:                                 ; preds = %.critedge6, %bb.cb
  tail call void @free(ptr noundef nonnull %i.ce) #15
  %i.ls = load ptr, ptr %i.cl, align 8, !tbaa !30 ; 2 uses
  %.not.i384 = icmp eq ptr %i.ls, null
  br i1 %.not.i384, label %Vec_PtrFree.exit385, label %bb.cc

bb.cc:                                            ; preds = %Vec_PtrFree.exit
  tail call void @free(ptr noundef nonnull %i.ls) #15
  br label %Vec_PtrFree.exit385

Vec_PtrFree.exit385:                              ; preds = %Vec_PtrFree.exit, %bb.cc
  tail call void @free(ptr noundef nonnull %i.ci) #15
  %.not270 = icmp eq ptr %calloc, null
  br i1 %.not270, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %Vec_PtrFree.exit385
  tail call void @free(ptr noundef nonnull %calloc) #15
  br label %bb.ce

bb.ce:                                            ; preds = %Vec_PtrFree.exit385, %bb.cd
  br i1 %.not268, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.lt = getelementptr i8, ptr %0, i64 52
  %.val347 = load i32, ptr %i.lt, align 4, !tbaa !72
  %.not271 = icmp eq i32 %.4.lcssa, 0
  %i.lu = sitofp i32 %.2.lcssa to double
  %i.lv = sitofp i32 %.4.lcssa to double
  %i.lw = fdiv double %i.lu, %i.lv
  %i.lx = select i1 %.not271, double 0.000000e+00, double %i.lw
  %i.ly = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, i32 noundef %.val347, i32 noundef %.4.lcssa, i32 noundef %.2.lcssa, double noundef %i.lx) ; 0 uses
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce
  %i.lz = load ptr, ptr %i.bv, align 8, !tbaa !81 ; 2 uses
  %i.ma = getelementptr i8, ptr %i.lz, i64 4
  %.val = load i32, ptr %i.ma, align 4, !tbaa !27 ; 2 uses
  %i.mb = icmp sgt i32 %.val, 0
  br i1 %i.mb, label %.lr.ph453, label %.critedge21

.lr.ph453:                                        ; preds = %bb.cg
  %i.mc = getelementptr i8, ptr %i.lz, i64 8
  %.val308 = load ptr, ptr %i.mc, align 8, !tbaa !30
  %wide.trip.count491 = zext nneg i32 %.val to i64
  br label %bb.ch

bb.ch:                                            ; preds = %.lr.ph453, %Aig_ObjEquiv.exit.thread
  %indvars.iv488 = phi i64 [ 0, %.lr.ph453 ], [ %indvars.iv.next489, %Aig_ObjEquiv.exit.thread ] ; 2 uses
  %i.md = getelementptr inbounds nuw [8 x i8], ptr %.val308, i64 %indvars.iv488
  %i.me = load ptr, ptr %i.md, align 8, !tbaa !31 ; 3 uses
  %i.mf = icmp eq ptr %i.me, null
  br i1 %i.mf, label %Aig_ObjEquiv.exit.thread, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.mg = getelementptr i8, ptr %i.me, i64 24
  %.val348 = load i64, ptr %i.mg, align 8
  %i.mh = trunc i64 %.val348 to i32
  %i.mi = and i32 %i.mh, 7
  %i.mj = add nsw i32 %i.mi, -7
  %narrow.i = icmp ult i32 %i.mj, -2
  br i1 %narrow.i, label %Aig_ObjEquiv.exit.thread, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %.val319 = load ptr, ptr %i.cb, align 8, !tbaa !53 ; 2 uses
  %.not.i386 = icmp eq ptr %.val319, null
  br i1 %.not.i386, label %Aig_ObjEquiv.exit.thread, label %Aig_ObjEquiv.exit

Aig_ObjEquiv.exit:                                ; preds = %bb.cj
  %i.mk = getelementptr inbounds nuw i8, ptr %i.me, i64 36
  %i.ml = load i32, ptr %i.mk, align 4, !tbaa !54
  %i.mm = sext i32 %i.ml to i64
  %i.mn = getelementptr inbounds [8 x i8], ptr %.val319, i64 %i.mm ; 2 uses
  %i.mo = load ptr, ptr %i.mn, align 8, !tbaa !49 ; 2 uses
  %.not274 = icmp eq ptr %i.mo, null
  br i1 %.not274, label %Aig_ObjEquiv.exit.thread, label %Aig_ObjEquiv.exit388

Aig_ObjEquiv.exit388:                             ; preds = %Aig_ObjEquiv.exit
  %i.mp = getelementptr i8, ptr %i.mo, i64 24
  %.val349 = load i64, ptr %i.mp, align 8
  %i.mq = and i64 %.val349, 4294967232
  %.not275 = icmp eq i64 %i.mq, 0
  br i1 %.not275, label %Aig_ObjEquiv.exit.thread, label %bb.ck

bb.ck:                                            ; preds = %Aig_ObjEquiv.exit388
  store ptr null, ptr %i.mn, align 8, !tbaa !49
  br label %Aig_ObjEquiv.exit.thread

Aig_ObjEquiv.exit.thread:                         ; preds = %bb.cj, %bb.ci, %bb.ch, %Aig_ObjEquiv.exit388, %bb.ck, %Aig_ObjEquiv.exit
  %indvars.iv.next489 = add nuw nsw i64 %indvars.iv488, 1 ; 2 uses
  %exitcond492.not = icmp eq i64 %indvars.iv.next489, %wide.trip.count491
  br i1 %exitcond492.not, label %.critedge21, label %bb.ch, !llvm.loop !90

.critedge21:                                      ; preds = %Aig_ObjEquiv.exit.thread, %bb.cg
  br i1 %.not, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %.critedge21
  store ptr %i.b, ptr %i.a, align 8, !tbaa !56
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %.critedge21
  %.not272 = icmp eq ptr %.0251, null
  br i1 %.not272, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.mr = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ms = load ptr, ptr %i.mr, align 8, !tbaa !74
  tail call void @Tim_ManStop(ptr noundef %i.ms) #15
  store ptr %.0251, ptr %i.mr, align 8, !tbaa !74
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cm
  %i.mt = tail call ptr @Aig_ManDupDfs(ptr noundef nonnull %i.bu) #15 ; 2 uses
  tail call void @Aig_ManStop(ptr noundef nonnull %i.bu) #15
  %i.mu = tail call i32 @Aig_ManChoiceLevel(ptr noundef %i.mt) #15 ; 0 uses
  ret ptr %i.mt
}

declare ptr @Tim_ManDup(ptr noundef, i32 noundef) local_unnamed_addr #3

declare float @Nwk_ManDelayTraceLut(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

declare i32 @Nwk_ManGetTotalFanins(ptr noundef) local_unnamed_addr #3

declare ptr @Nwk_ManStrash(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #7

declare void @Tim_ManStop(ptr noundef) local_unnamed_addr #3

declare ptr @Aig_ManDupDfs(ptr noundef) local_unnamed_addr #3

declare void @Aig_ManStop(ptr noundef) local_unnamed_addr #3

declare i32 @Aig_ManChoiceLevel(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #10

; Function Attrs: nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

attributes #0 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { nounwind allocsize(1) }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !5, i64 312}
!9 = !{!"Aig_Man_t_", !10, i64 0, !10, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !13, i64 48, !14, i64 56, !5, i64 104, !5, i64 108, !5, i64 112, !5, i64 116, !5, i64 120, !5, i64 124, !6, i64 128, !5, i64 156, !15, i64 160, !5, i64 168, !17, i64 176, !5, i64 184, !18, i64 192, !5, i64 200, !5, i64 204, !5, i64 208, !17, i64 216, !5, i64 224, !5, i64 228, !5, i64 232, !5, i64 236, !5, i64 240, !15, i64 248, !15, i64 256, !5, i64 264, !19, i64 272, !20, i64 280, !5, i64 288, !11, i64 296, !11, i64 304, !5, i64 312, !5, i64 316, !5, i64 320, !15, i64 328, !11, i64 336, !11, i64 344, !11, i64 352, !11, i64 360, !17, i64 368, !17, i64 376, !12, i64 384, !20, i64 392, !20, i64 400, !21, i64 408, !12, i64 416, !22, i64 424, !12, i64 432, !5, i64 440, !20, i64 448, !18, i64 456, !20, i64 464, !20, i64 472, !5, i64 480, !23, i64 488, !23, i64 496, !23, i64 504, !12, i64 512, !12, i64 520}
!10 = !{!"p1 omnipotent char", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"p1 _ZTS10Vec_Ptr_t_", !11, i64 0}
!13 = !{!"p1 _ZTS10Aig_Obj_t_", !11, i64 0}
!14 = !{!"Aig_Obj_t_", !6, i64 0, !13, i64 8, !13, i64 16, !5, i64 24, !5, i64 24, !5, i64 24, !5, i64 24, !5, i64 24, !5, i64 28, !5, i64 31, !5, i64 32, !5, i64 36, !6, i64 40}
!15 = !{!"p2 _ZTS10Aig_Obj_t_", !16, i64 0}
!16 = !{!"any p2 pointer", !11, i64 0}
!17 = !{!"p1 int", !11, i64 0}
!18 = !{!"p1 _ZTS10Vec_Vec_t_", !11, i64 0}
!19 = !{!"p1 _ZTS14Aig_MmFixed_t_", !11, i64 0}
!20 = !{!"p1 _ZTS10Vec_Int_t_", !11, i64 0}
!21 = !{!"p1 _ZTS10Abc_Cex_t_", !11, i64 0}
!22 = !{!"p1 _ZTS10Aig_Man_t_", !11, i64 0}
!23 = !{!"long", !6, i64 0}
!24 = !{!14, !5, i64 32}
!25 = !{!14, !13, i64 8}
!26 = !{!14, !13, i64 16}
!27 = !{!28, !5, i64 4}
!28 = !{!"Vec_Ptr_t_", !5, i64 0, !5, i64 4, !16, i64 8}
!29 = !{!28, !5, i64 0}
!30 = !{!28, !16, i64 8}
!31 = !{!11, !11, i64 0}
!32 = !{!33, !11, i64 16}
!33 = !{!"Nwk_Obj_t_", !34, i64 0, !35, i64 8, !11, i64 16, !6, i64 24, !5, i64 32, !5, i64 32, !5, i64 32, !5, i64 32, !5, i64 32, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !36, i64 48, !36, i64 52, !36, i64 56, !5, i64 60, !5, i64 64, !5, i64 68, !37, i64 72}
!34 = !{!"p1 _ZTS10Nwk_Man_t_", !11, i64 0}
!35 = !{!"p1 _ZTS10Hop_Obj_t_", !11, i64 0}
!36 = !{!"float", !6, i64 0}
!37 = !{!"p2 _ZTS10Nwk_Obj_t_", !16, i64 0}
!38 = distinct !{!38, !39}
!39 = !{!"llvm.loop.mustprogress"}
!40 = distinct !{!40, !39}
!41 = !{!9, !13, i64 48}
!42 = distinct !{!42, !39}
!43 = distinct !{!43, !44}
!44 = !{!"llvm.loop.unroll.disable"}
!45 = !{!6, !6, i64 0}
!46 = distinct !{!46, !39}
!47 = distinct !{!47, !39}
!48 = distinct !{!48, !39}
!49 = !{!13, !13, i64 0}
!50 = distinct !{!50, !39}
!51 = distinct !{!51, !39}
!52 = distinct !{!52, !39}
!53 = !{!9, !15, i64 248}
!54 = !{!14, !5, i64 36}
!55 = !{!33, !36, i64 52}
!56 = !{!57, !60, i64 80}
!57 = !{!"Nwk_Man_t_", !10, i64 0, !10, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !6, i64 40, !5, i64 60, !58, i64 64, !59, i64 72, !60, i64 80, !61, i64 88, !12, i64 96, !5, i64 104, !5, i64 108, !5, i64 112, !5, i64 116, !5, i64 120}
!58 = !{!"p1 _ZTS10Hop_Man_t_", !11, i64 0}
!59 = !{!"p1 _ZTS10Tim_Man_t_", !11, i64 0}
!60 = !{!"p1 _ZTS12If_LibLut_t_", !11, i64 0}
!61 = !{!"p1 _ZTS13Aig_MmFlex_t_", !11, i64 0}
!62 = !{!33, !5, i64 60}
!63 = !{!33, !37, i64 72}
!64 = !{!65, !65, i64 0}
!65 = !{!"p1 _ZTS10Nwk_Obj_t_", !11, i64 0}
!66 = !{!33, !36, i64 48}
!67 = distinct !{!67, !39}
!68 = !{!69, !5, i64 12}
!69 = !{!"If_LibLut_t_", !10, i64 0, !5, i64 8, !5, i64 12, !6, i64 16, !6, i64 148}
!70 = !{!36, !36, i64 0}
!71 = distinct !{!71, !39}
!72 = !{!5, !5, i64 0}
!73 = distinct !{!73, !39}
!74 = !{!57, !59, i64 72}
!75 = !{!57, !12, i64 32}
!76 = !{!33, !36, i64 56}
!77 = !{!33, !5, i64 36}
!78 = distinct !{!78, !39}
!79 = distinct !{!79, !39}
!80 = distinct !{!80, !39}
!81 = !{!9, !12, i64 32}
!82 = distinct !{!82, !39}
!83 = distinct !{!83, !39}
!84 = distinct !{!84, !39}
!85 = distinct !{!85, !39}
!86 = distinct !{!86, !39}
!87 = distinct !{!87, !39}
!88 = distinct !{!88, !39}
!89 = distinct !{!89, !39}
!90 = distinct !{!90, !39}
end_hunk_1
