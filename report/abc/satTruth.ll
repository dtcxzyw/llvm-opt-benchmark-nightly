inline.NumInlined: 34
inline.NumDeleted: 22
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 8
begin_hunk_0_@Tru_ManInsert:bb.a
  store i64 %i.fs, ptr %i.fp, align 8, !tbaa !16
  %i.ft = shl i32 %i.fq, %i.fn
  %i.fu = trunc i64 %i.fs to i32
  %i.fv = sub i32 %i.fu, %i.ec
  %i.fw = add i32 %i.fv, %i.ft                    ; 5 uses
  store i32 %i.fw, ptr %.034.i70, align 4, !tbaa !18
  %.not.i49 = icmp eq i32 %i.fw, 0
  br i1 %.not.i49, label %Tru_ManReadOne.exit, label %bb.m

bb.m:                                             ; preds = %Vec_SetAppend.exit
  %i.fx = load ptr, ptr %i.l, align 8, !tbaa !24  ; 3 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 24
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !25
  %.val.i.i = load i32, ptr %i.fx, align 8, !tbaa !29
  %i.ga = ashr i32 %i.fw, %.val.i.i
  %i.gb = sext i32 %i.ga to i64
  %i.gc = getelementptr inbounds [8 x i8], ptr %i.fz, i64 %i.gb
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !30
  %i.ge = getelementptr i8, ptr %i.fx, i64 4
  %.val4.i.i = load i32, ptr %i.ge, align 4, !tbaa !31
  %i.gf = and i32 %.val4.i.i, %i.fw
  %i.gg = sext i32 %i.gf to i64
  %i.gh = getelementptr inbounds [8 x i8], ptr %i.gd, i64 %i.gg
  br label %Tru_ManReadOne.exit

Tru_ManReadOne.exit:                              ; preds = %Vec_SetAppend.exit, %bb.m
  %i.gi = phi ptr [ %i.gh, %bb.m ], [ null, %Vec_SetAppend.exit ] ; 4 uses
  %i.gj = ptrtoaddr ptr %i.gi to i64
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gi, i64 8 ; 6 uses
  %i.gl = load i32, ptr %i.b, align 4, !tbaa !14  ; 4 uses
  %i.gm = icmp sgt i32 %i.gl, 0
  br i1 %i.gm, label %.lr.ph.preheader.i50, label %Tru_ManCopy.exit

.lr.ph.preheader.i50:                             ; preds = %Tru_ManReadOne.exit
  %wide.trip.count.i51 = zext nneg i32 %i.gl to i64 ; 5 uses
  %min.iters.check128 = icmp ult i32 %i.gl, 10
  br i1 %min.iters.check128, label %.lr.ph.i52.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader.i50
  %i.gn = sub i64 %i.gj, %i.a
  %i.go = add i64 %i.gn, 7
  %diff.check = icmp ult i64 %i.go, 31
  br i1 %diff.check, label %.lr.ph.i52.preheader, label %vector.ph129

vector.ph129:                                     ; preds = %vector.memcheck
  %n.vec130 = and i64 %wide.trip.count.i51, 2147483644 ; 3 uses
  br label %vector.body131

vector.body131:                                   ; preds = %vector.body131, %vector.ph129
  %index132 = phi i64 [ 0, %vector.ph129 ], [ %index.next135, %vector.body131 ] ; 3 uses
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index132 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 16
  %wide.load133 = load <2 x i64>, ptr %i.gp, align 8, !tbaa !16
  %wide.load134 = load <2 x i64>, ptr %i.gq, align 8, !tbaa !16
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %i.gk, i64 %index132 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 16
  store <2 x i64> %wide.load133, ptr %i.gr, align 8, !tbaa !16
  store <2 x i64> %wide.load134, ptr %i.gs, align 8, !tbaa !16
  %index.next135 = add nuw i64 %index132, 4       ; 2 uses
  %i.gt = icmp eq i64 %index.next135, %n.vec130
  br i1 %i.gt, label %middle.block136, label %vector.body131, !llvm.loop !53

middle.block136:                                  ; preds = %vector.body131
  %cmp.n137 = icmp eq i64 %n.vec130, %wide.trip.count.i51
  br i1 %cmp.n137, label %Tru_ManCopy.exit, label %.lr.ph.i52.preheader

.lr.ph.i52.preheader:                             ; preds = %vector.memcheck, %.lr.ph.preheader.i50, %middle.block136
  %indvars.iv.i53.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader.i50 ], [ %n.vec130, %middle.block136 ] ; 3 uses
  %xtraiter161 = and i64 %wide.trip.count.i51, 3  ; 2 uses
  %lcmp.mod162.not = icmp eq i64 %xtraiter161, 0
  br i1 %lcmp.mod162.not, label %.lr.ph.i52.prol.loopexit, label %.lr.ph.i52.prol

.lr.ph.i52.prol:                                  ; preds = %.lr.ph.i52.preheader, %.lr.ph.i52.prol
  %indvars.iv.i53.prol = phi i64 [ %indvars.iv.next.i54.prol, %.lr.ph.i52.prol ], [ %indvars.iv.i53.ph, %.lr.ph.i52.preheader ] ; 3 uses
  %prol.iter163 = phi i64 [ %prol.iter163.next, %.lr.ph.i52.prol ], [ 0, %.lr.ph.i52.preheader ]
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.i53.prol
  %i.gv = load i64, ptr %i.gu, align 8, !tbaa !16
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %i.gk, i64 %indvars.iv.i53.prol
  store i64 %i.gv, ptr %i.gw, align 8, !tbaa !16
  %indvars.iv.next.i54.prol = add nuw nsw i64 %indvars.iv.i53.prol, 1 ; 2 uses
  %prol.iter163.next = add i64 %prol.iter163, 1   ; 2 uses
  %prol.iter163.cmp.not = icmp eq i64 %prol.iter163.next, %xtraiter161
  br i1 %prol.iter163.cmp.not, label %.lr.ph.i52.prol.loopexit, label %.lr.ph.i52.prol, !llvm.loop !54

.lr.ph.i52.prol.loopexit:                         ; preds = %.lr.ph.i52.prol, %.lr.ph.i52.preheader
  %indvars.iv.i53.unr = phi i64 [ %indvars.iv.i53.ph, %.lr.ph.i52.preheader ], [ %indvars.iv.next.i54.prol, %.lr.ph.i52.prol ]
  %i.gx = sub nsw i64 %indvars.iv.i53.ph, %wide.trip.count.i51
  %i.gy = icmp ugt i64 %i.gx, -4
  br i1 %i.gy, label %Tru_ManCopy.exit, label %.lr.ph.i52

.lr.ph.i52:                                       ; preds = %.lr.ph.i52.prol.loopexit, %.lr.ph.i52
  %indvars.iv.i53 = phi i64 [ %indvars.iv.next.i54.3, %.lr.ph.i52 ], [ %indvars.iv.i53.unr, %.lr.ph.i52.prol.loopexit ] ; 6 uses
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.i53
  %i.ha = load i64, ptr %i.gz, align 8, !tbaa !16
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.gk, i64 %indvars.iv.i53
  store i64 %i.ha, ptr %i.hb, align 8, !tbaa !16
  %indvars.iv.next.i54 = add nuw nsw i64 %indvars.iv.i53, 1 ; 2 uses
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next.i54
  %i.hd = load i64, ptr %i.hc, align 8, !tbaa !16
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %i.gk, i64 %indvars.iv.next.i54
  store i64 %i.hd, ptr %i.he, align 8, !tbaa !16
  %indvars.iv.next.i54.1 = add nuw nsw i64 %indvars.iv.i53, 2 ; 2 uses
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next.i54.1
  %i.hg = load i64, ptr %i.hf, align 8, !tbaa !16
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %i.gk, i64 %indvars.iv.next.i54.1
  store i64 %i.hg, ptr %i.hh, align 8, !tbaa !16
  %indvars.iv.next.i54.2 = add nuw nsw i64 %indvars.iv.i53, 3 ; 2 uses
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next.i54.2
  %i.hj = load i64, ptr %i.hi, align 8, !tbaa !16
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %i.gk, i64 %indvars.iv.next.i54.2
  store i64 %i.hj, ptr %i.hk, align 8, !tbaa !16
  %indvars.iv.next.i54.3 = add nuw nsw i64 %indvars.iv.i53, 4 ; 2 uses
  %exitcond.not.i55.3 = icmp eq i64 %indvars.iv.next.i54.3, %wide.trip.count.i51
  br i1 %exitcond.not.i55.3, label %Tru_ManCopy.exit, label %.lr.ph.i52, !llvm.loop !55

Tru_ManCopy.exit:                                 ; preds = %.lr.ph.i52.prol.loopexit, %.lr.ph.i52, %middle.block136, %Tru_ManReadOne.exit
  store i32 %i.fw, ptr %i.gi, align 8, !tbaa !38
  %i.hl = getelementptr inbounds nuw i8, ptr %i.gi, i64 4
  store i32 0, ptr %i.hl, align 4, !tbaa !34
  br label %Tru_ManLookup.exit

Tru_ManLookup.exit:                               ; preds = %Tru_ManReadOne.exit29.us.i, %bb.g, %.lr.ph.i47, %Tru_ManReadOne.exit.i, %Tru_ManCopy.exit
  %i.hm = phi i32 [ %i.gl, %Tru_ManCopy.exit ], [ %.pr.pre, %bb.g ], [ %.pr.pre, %.lr.ph.i47 ], [ %.pr.pre, %Tru_ManReadOne.exit.i ], [ %.pr.pre, %Tru_ManReadOne.exit29.us.i ] ; 3 uses
  %.034.i71 = phi ptr [ %.034.i70, %Tru_ManCopy.exit ], [ %.037.us.i, %bb.g ], [ %i.db, %.lr.ph.i47 ], [ %i.db, %Tru_ManReadOne.exit.i ], [ %i.dq, %Tru_ManReadOne.exit29.us.i ]
  %i.hn = icmp sgt i32 %i.hm, 0
  %or.cond = select i1 %.not32, i1 %i.hn, i1 false
  br i1 %or.cond, label %.lr.ph.preheader.i56, label %Tru_ManNot.exit62

.lr.ph.preheader.i56:                             ; preds = %Tru_ManLookup.exit
  %wide.trip.count.i57 = zext nneg i32 %i.hm to i64 ; 3 uses
  %min.iters.check140 = icmp ult i32 %i.hm, 4
  br i1 %min.iters.check140, label %.lr.ph.i58.preheader, label %vector.ph141

vector.ph141:                                     ; preds = %.lr.ph.preheader.i56
  %n.vec142 = and i64 %wide.trip.count.i57, 2147483644 ; 3 uses
  br label %vector.body143

vector.body143:                                   ; preds = %vector.body143, %vector.ph141
  %index144 = phi i64 [ 0, %vector.ph141 ], [ %index.next147, %vector.body143 ] ; 2 uses
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index144 ; 3 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 16 ; 2 uses
  %wide.load145 = load <2 x i64>, ptr %i.ho, align 8, !tbaa !16
  %wide.load146 = load <2 x i64>, ptr %i.hp, align 8, !tbaa !16
  %i.hq = xor <2 x i64> %wide.load145, splat (i64 -1)
  %i.hr = xor <2 x i64> %wide.load146, splat (i64 -1)
  store <2 x i64> %i.hq, ptr %i.ho, align 8, !tbaa !16
  store <2 x i64> %i.hr, ptr %i.hp, align 8, !tbaa !16
  %index.next147 = add nuw i64 %index144, 4       ; 2 uses
  %i.hs = icmp eq i64 %index.next147, %n.vec142
  br i1 %i.hs, label %middle.block148, label %vector.body143, !llvm.loop !56

middle.block148:                                  ; preds = %vector.body143
  %cmp.n149 = icmp eq i64 %n.vec142, %wide.trip.count.i57
  br i1 %cmp.n149, label %Tru_ManNot.exit62, label %.lr.ph.i58.preheader

.lr.ph.i58.preheader:                             ; preds = %.lr.ph.preheader.i56, %middle.block148
  %indvars.iv.i59.ph = phi i64 [ 0, %.lr.ph.preheader.i56 ], [ %n.vec142, %middle.block148 ]
  br label %.lr.ph.i58

.lr.ph.i58:                                       ; preds = %.lr.ph.i58.preheader, %.lr.ph.i58
  %indvars.iv.i59 = phi i64 [ %indvars.iv.next.i60, %.lr.ph.i58 ], [ %indvars.iv.i59.ph, %.lr.ph.i58.preheader ] ; 2 uses
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.i59 ; 2 uses
  %i.hu = load i64, ptr %i.ht, align 8, !tbaa !16
  %i.hv = xor i64 %i.hu, -1
  store i64 %i.hv, ptr %i.ht, align 8, !tbaa !16
  %indvars.iv.next.i60 = add nuw nsw i64 %indvars.iv.i59, 1 ; 2 uses
  %exitcond.not.i61 = icmp eq i64 %indvars.iv.next.i60, %wide.trip.count.i57
  br i1 %exitcond.not.i61, label %Tru_ManNot.exit62, label %.lr.ph.i58, !llvm.loop !57

Tru_ManNot.exit62:                                ; preds = %.lr.ph.i58, %middle.block148, %Tru_ManLookup.exit
  %i.hw = load i32, ptr %.034.i71, align 4, !tbaa !18
  %i.hx = xor i32 %i.hw, %i.u
  br label %Tru_ManEqual0.exit.thread

Tru_ManEqual0.exit.thread:                        ; preds = %bb.b, %bb.c, %bb.a, %Tru_ManNot.exit62
  %.0 = phi i32 [ %i.hx, %Tru_ManNot.exit62 ], [ 1, %bb.c ], [ 0, %bb.a ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define noalias noundef ptr @Tru_ManAlloc(i32 noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [6 x i64], align 16               ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store i64 -6148914691236517206, ptr %i.a, align 16
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 -3689348814741910324, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 -1085102592571150096, ptr %i.c, align 16
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 -71777214294589696, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 -281470681808896, ptr %i.e, align 16
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 -4294967296, ptr %i.f, align 8
  %i.g = tail call noalias dereferenceable_or_null(112) ptr @calloc(i64 noundef 1, i64 noundef 112) #13 ; 10 uses
  store i32 %0, ptr %i.g, align 8, !tbaa !58
  %i.h = icmp slt i32 %0, 6
  %i.i = add nsw i32 %0, -6
  %i.j = shl nuw i32 1, %i.i
  %i.k = select i1 %i.h, i32 1, i32 %i.j          ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 4 ; 3 uses
  store i32 %i.k, ptr %i.l, align 4, !tbaa !14
  %1 = shl i32 %i.k, 1
  %2 = add i32 %1, 2
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i32 %2, ptr %i.m, align 8, !tbaa !50
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  store i32 8147, ptr %i.n, align 4, !tbaa !15
  %i.o = tail call noalias dereferenceable_or_null(32588) ptr @calloc(i64 noundef 8147, i64 noundef 4) #13
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.o, ptr %i.p, align 8, !tbaa !8
  %i.q = tail call noalias dereferenceable_or_null(32) ptr @calloc(i64 noundef 1, i64 noundef 32) #13 ; 5 uses
  store i32 16, ptr %i.q, align 8, !tbaa !29
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  store i32 65535, ptr %i.r, align 4, !tbaa !31
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 20
  store i32 256, ptr %i.s, align 4, !tbaa !52
  %i.t = tail call noalias dereferenceable_or_null(2048) ptr @calloc(i64 noundef 256, i64 noundef 8) #13 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store ptr %i.t, ptr %i.u, align 8, !tbaa !25
  %i.v = tail call noalias dereferenceable_or_null(524288) ptr @malloc(i64 noundef 524288) #16 ; 3 uses
  store ptr %i.v, ptr %i.t, align 8, !tbaa !30
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i64 -1, ptr %i.w, align 8
  store i64 2, ptr %i.v, align 8, !tbaa !16
  %i.x = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr %i.q, ptr %i.x, align 8, !tbaa !24
  %3 = sext i32 %i.k to i64
  %4 = shl nsw i64 %3, 3
  %i.y = tail call noalias ptr @malloc(i64 noundef %4) #16
  %i.z = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 6 uses
  store ptr %i.y, ptr %i.z, align 8, !tbaa !59
  %i.aa = icmp sgt i32 %0, 0
  br i1 %i.aa, label %.preheader.lr.ph, label %._crit_edge38

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %wide.trip.count49 = zext nneg i32 %0 to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %indvars.iv46 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next47, %._crit_edge ] ; 5 uses
  %i.ac = load i32, ptr %i.l, align 4, !tbaa !14  ; 6 uses
  %i.ad = icmp sgt i32 %i.ac, 0
  br i1 %i.ad, label %.lr.ph, label %.preheader.._crit_edge_crit_edge

.preheader.._crit_edge_crit_edge:                 ; preds = %.preheader
  %.pre = load ptr, ptr %i.z, align 8, !tbaa !59
  br label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.ae = icmp samesign ult i64 %indvars.iv46, 6
  %i.af = trunc i64 %indvars.iv46 to i32
  %i.ag = add i32 %i.af, -6
  %i.ah = shl nuw i32 1, %i.ag                    ; 3 uses
  br i1 %i.ae, label %.lr.ph.split.us, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %wide.trip.count = zext nneg i32 %i.ac to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.ai = icmp eq i32 %i.ac, 1
  br i1 %i.ai, label %.lr.ph.split.epil.preheader, label %.lr.ph.split.preheader.new

.lr.ph.split.preheader.new:                       ; preds = %.lr.ph.split.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  %i.aj = load ptr, ptr %i.z, align 8, !tbaa !59  ; 3 uses
  br label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv46
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !16 ; 2 uses
  %i.am = load ptr, ptr %i.z, align 8, !tbaa !59  ; 4 uses
  %wide.trip.count44 = zext nneg i32 %i.ac to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %i.ac, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.split.us
  %n.vec = and i64 %wide.trip.count44, 2147483644 ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.al, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %index ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store <2 x i64> %broadcast.splat, ptr %i.an, align 8, !tbaa !16
  store <2 x i64> %broadcast.splat, ptr %i.ao, align 8, !tbaa !16
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ap = icmp eq i64 %index.next, %n.vec
  br i1 %i.ap, label %middle.block, label %vector.body, !llvm.loop !60

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count44
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.split.us, %middle.block
  %indvars.iv41.ph = phi i64 [ 0, %.lr.ph.split.us ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv41 = phi i64 [ %indvars.iv.next42, %scalar.ph ], [ %indvars.iv41.ph, %scalar.ph.preheader ] ; 2 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv41
  store i64 %i.al, ptr %i.aq, align 8, !tbaa !16
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 1 ; 2 uses
  %exitcond45.not = icmp eq i64 %indvars.iv.next42, %wide.trip.count44
  br i1 %exitcond45.not, label %._crit_edge, label %scalar.ph, !llvm.loop !61

.lr.ph.split:                                     ; preds = %.lr.ph.split, %.lr.ph.split.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.preheader.new ], [ %indvars.iv.next.1, %.lr.ph.split ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.split.preheader.new ], [ %niter.next.1, %.lr.ph.split ]
  %i.ar = trunc nuw nsw i64 %indvars.iv to i32
  %i.as = and i32 %i.ah, %i.ar
  %.not = icmp ne i32 %i.as, 0
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv
  %. = sext i1 %.not to i64
  store i64 %., ptr %i.at, align 8, !tbaa !16
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.au = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.av = and i32 %i.ah, %i.au
  %.not.1 = icmp ne i32 %i.av, 0
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv.next
  %..1 = sext i1 %.not.1 to i64
  store i64 %..1, ptr %i.aw, align 8, !tbaa !16
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit56.unr-lcssa, label %.lr.ph.split, !llvm.loop !62

._crit_edge.loopexit56.unr-lcssa:                 ; preds = %.lr.ph.split
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.split.epil.preheader

.lr.ph.split.epil.preheader:                      ; preds = %._crit_edge.loopexit56.unr-lcssa, %.lr.ph.split.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.split.preheader ], [ %indvars.iv.next.1, %._crit_edge.loopexit56.unr-lcssa ] ; 2 uses
  %lcmp.mod58 = trunc i32 %i.ac to i1
  tail call void @llvm.assume(i1 %lcmp.mod58)
  %i.ax = trunc nuw nsw i64 %indvars.iv.epil.init to i32
  %i.ay = and i32 %i.ah, %i.ax
  %.not.epil = icmp ne i32 %i.ay, 0
  %i.az = load ptr, ptr %i.z, align 8, !tbaa !59  ; 2 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %indvars.iv.epil.init
  %..epil = sext i1 %.not.epil to i64
  store i64 %..epil, ptr %i.ba, align 8, !tbaa !16
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.split.epil.preheader, %._crit_edge.loopexit56.unr-lcssa, %scalar.ph, %middle.block, %.preheader.._crit_edge_crit_edge
  %i.bb = phi ptr [ %.pre, %.preheader.._crit_edge_crit_edge ], [ %i.am, %middle.block ], [ %i.am, %scalar.ph ], [ %i.aj, %._crit_edge.loopexit56.unr-lcssa ], [ %i.az, %.lr.ph.split.epil.preheader ]
  %i.bc = tail call i32 @Tru_ManInsert(ptr noundef nonnull %i.g, ptr noundef %i.bb)
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv46
  store i32 %i.bc, ptr %i.bd, align 4, !tbaa !18
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 1 ; 2 uses
  %exitcond50.not = icmp eq i64 %indvars.iv.next47, %wide.trip.count49
  br i1 %exitcond50.not, label %._crit_edge38.loopexit, label %.preheader, !llvm.loop !63

._crit_edge38.loopexit:                           ; preds = %._crit_edge
  %.pre51 = load i32, ptr %i.l, align 4, !tbaa !14
  br label %._crit_edge38

._crit_edge38:                                    ; preds = %._crit_edge38.loopexit, %bb.a
  %i.be = phi i32 [ %.pre51, %._crit_edge38.loopexit ], [ %i.k, %bb.a ] ; 2 uses
  %i.bf = icmp sgt i32 %i.be, 0
  br i1 %i.bf, label %.lr.ph.preheader.i, label %Tru_ManClear.exit

.lr.ph.preheader.i:                               ; preds = %._crit_edge38
  %i.bg = load ptr, ptr %i.z, align 8, !tbaa !59
  %i.bh = zext nneg i32 %i.be to i64
  %i.bi = shl nuw nsw i64 %i.bh, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bg, i8 0, i64 %i.bi, i1 false), !tbaa !16
  br label %Tru_ManClear.exit

Tru_ManClear.exit:                                ; preds = %._crit_edge38, %.lr.ph.preheader.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret ptr %i.g
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define void @Tru_ManFree(ptr noundef captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load i32, ptr %i.a, align 8, !tbaa !43
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !24
  %i.e = getelementptr i8, ptr %i.d, i64 8
  %.val = load i32, ptr %i.e, align 8, !tbaa !44
  %i.f = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.b, i32 noundef %.val) ; 0 uses
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !24   ; 4 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %Vec_SetFree.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 20 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !52   ; 2 uses
  %i.k = icmp sgt i32 %i.j, 0
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  %.pre.i.i = load ptr, ptr %i.l, align 8, !tbaa !25 ; 3 uses
  br i1 %i.k, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.d
  %i.m = phi i32 [ %i.s, %bb.d ], [ %i.j, %bb.b ]
  %i.n = phi ptr [ %i.t, %bb.d ], [ %.pre.i.i, %bb.b ] ; 2 uses
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.d ], [ 0, %bb.b ] ; 3 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.i.i
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !30   ; 2 uses
  %.not15.i.i = icmp eq ptr %i.p, null
  br i1 %.not15.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  tail call void @free(ptr noundef nonnull %i.p) #14
  %i.q = load ptr, ptr %i.l, align 8, !tbaa !25   ; 2 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.i.i
  store ptr null, ptr %i.r, align 8, !tbaa !30
  %.pre18.i.i = load i32, ptr %i.i, align 4, !tbaa !52
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph.i.i
  %i.s = phi i32 [ %.pre18.i.i, %bb.c ], [ %i.m, %.lr.ph.i.i ] ; 2 uses
  %i.t = phi ptr [ %i.q, %bb.c ], [ %i.n, %.lr.ph.i.i ] ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.u = sext i32 %i.s to i64
  %i.v = icmp slt i64 %indvars.iv.next.i.i, %i.u
  br i1 %i.v, label %.lr.ph.i.i, label %._crit_edge.thread.i.i, !llvm.loop !64

._crit_edge.i.i:                                  ; preds = %bb.b
end_hunk_0
