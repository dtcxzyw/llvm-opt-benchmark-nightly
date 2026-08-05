inline.NumInlined: 785
inline.NumDeleted: 130
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 20
begin_hunk_0_@Gla_ManCollect:bb.a
  store i32 %i.fs, ptr %i.gd, align 4, !tbaa !24
  %indvars.iv.next190 = add nuw nsw i64 %indvars.iv189, 1 ; 2 uses
  %.val94 = load i32, ptr %i.dx, align 4, !tbaa !8
  %i.ge = sext i32 %.val94 to i64
  %.not182 = icmp slt i64 %indvars.iv.next190, %i.ge
  br i1 %.not182, label %.lr.ph.split, label %.critedge4.preheader, !llvm.loop !86

.critedge6.preheader:                             ; preds = %.critedge4, %.critedge4.preheader
  %.val92174 = load i32, ptr %i.e, align 4, !tbaa !8 ; 3 uses
  %i.gf = icmp sgt i32 %.val92174, 0
  br i1 %i.gf, label %.lr.ph176, label %.critedge10

.lr.ph176:                                        ; preds = %.critedge6.preheader
  %i.gg = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 3 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %.not87.peel = icmp eq ptr %.val112.fr, null
  %.not237 = icmp eq i32 %.val92174, 1
  %or.cond = or i1 %.not87.peel, %.not237
  br i1 %or.cond, label %.lr.ph179.preheader, label %.peel.next.preheader

.peel.next.preheader:                             ; preds = %.lr.ph176
  %i.gi = load ptr, ptr %i.a, align 8, !tbaa !38  ; 2 uses
  %i.gj = getelementptr i8, ptr %i.gi, i64 32
  %.val102242 = load ptr, ptr %i.gj, align 8, !tbaa !39 ; 2 uses
  %.not87243 = icmp eq ptr %.val102242, null
  br i1 %.not87243, label %.critedge8, label %.lr.ph

.critedge4:                                       ; preds = %.critedge4.preheader184, %.critedge4
  %indvars.iv192 = phi i64 [ 0, %.critedge4.preheader184 ], [ %indvars.iv.next193, %.critedge4 ] ; 2 uses
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %.val98, i64 %indvars.iv192
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !24
  %i.gm = zext i32 %i.gl to i64
  %sext.i148 = shl nuw i64 %i.gm, 32
  %i.gn = ashr exact i64 %sext.i148, 30
  %i.go = getelementptr inbounds i8, ptr %i.fu, i64 %i.gn
  store i32 %i.fs, ptr %i.go, align 4, !tbaa !24
  %indvars.iv.next193 = add nuw nsw i64 %indvars.iv192, 1 ; 2 uses
  %.val93 = load i32, ptr %i.er, align 4, !tbaa !8
  %i.gp = sext i32 %.val93 to i64
  %.not183 = icmp slt i64 %indvars.iv.next193, %i.gp
  br i1 %.not183, label %.critedge4, label %.critedge6.preheader, !llvm.loop !87

.peel.next:                                       ; preds = %.critedge6
  %i.gq = load ptr, ptr %i.a, align 8, !tbaa !38  ; 2 uses
  %i.gr = getelementptr i8, ptr %i.gq, i64 32
  %.val102 = load ptr, ptr %i.gr, align 8, !tbaa !39 ; 2 uses
  %.not87 = icmp eq ptr %.val102, null
  br i1 %.not87, label %.critedge8, label %.lr.ph, !llvm.loop !88

.lr.ph:                                           ; preds = %.peel.next.preheader, %.peel.next
  %.val102245 = phi ptr [ %.val102, %.peel.next ], [ %.val102242, %.peel.next.preheader ]
  %i.gs = phi ptr [ %i.gq, %.peel.next ], [ %i.gi, %.peel.next.preheader ] ; 4 uses
  %indvars.iv195244 = phi i64 [ %indvars.iv.next196, %.peel.next ], [ 1, %.peel.next.preheader ] ; 2 uses
  %.val97 = load ptr, ptr %i.y, align 8, !tbaa !13
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %.val97, i64 %indvars.iv195244
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !24
  %i.gv = sext i32 %i.gu to i64
  %i.gw = getelementptr inbounds [12 x i8], ptr %.val102245, i64 %i.gv
  %.val113 = load i64, ptr %i.gw, align 4
  %i.gx = getelementptr i8, ptr %i.gs, i64 64
  %.val5.i = load ptr, ptr %i.gx, align 8, !tbaa !75 ; 2 uses
  %i.gy = getelementptr i8, ptr %.val5.i, i64 4
  %.val5.val.i149 = load i32, ptr %i.gy, align 4, !tbaa !8
  %i.gz = getelementptr i8, ptr %i.gs, i64 72
  %.val4.i150 = load ptr, ptr %i.gz, align 8, !tbaa !83
  %i.ha = getelementptr i8, ptr %.val4.i150, i64 4
  %.val4.val.i = load i32, ptr %i.ha, align 4, !tbaa !8
  %i.hb = lshr i64 %.val113, 32
  %i.hc = trunc nuw i64 %i.hb to i32
  %i.hd = and i32 %i.hc, 536870911
  %i.he = add i32 %i.hd, %.val5.val.i149
  %i.hf = sub i32 %i.he, %.val4.val.i
  %i.hg = getelementptr i8, ptr %.val5.i, i64 8
  %.val7.val.i152 = load ptr, ptr %i.hg, align 8, !tbaa !13
  %i.hh = sext i32 %i.hf to i64
  %i.hi = getelementptr inbounds [4 x i8], ptr %.val7.val.i152, i64 %i.hh
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !24 ; 2 uses
  %i.hk = sext i32 %i.hj to i64
  %i.hl = getelementptr inbounds nuw i8, ptr %i.gs, i64 176
  %i.hm = load i32, ptr %i.hl, align 8, !tbaa !82
  %i.hn = getelementptr inbounds nuw i8, ptr %i.gs, i64 624
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !81
  %i.hp = shl nsw i64 %i.hk, 2
  %i.hq = getelementptr inbounds i8, ptr %i.ho, i64 %i.hp
  store i32 %i.hm, ptr %i.hq, align 4, !tbaa !24
  %i.hr = load i32, ptr %i.gg, align 4, !tbaa !8  ; 7 uses
  %i.hs = load i32, ptr %4, align 8, !tbaa !12
  %i.ht = icmp eq i32 %i.hr, %i.hs
  br i1 %i.ht, label %bb.an, label %.Vec_IntPush.exit162_crit_edge

.Vec_IntPush.exit162_crit_edge:                   ; preds = %.lr.ph
  %.pre208 = load ptr, ptr %i.gh, align 8, !tbaa !13
  br label %.critedge6

bb.an:                                            ; preds = %.lr.ph
  %i.hu = icmp slt i32 %i.hr, 16
  br i1 %i.hu, label %bb.ao, label %bb.ar

bb.ao:                                            ; preds = %bb.an
  %i.hv = load ptr, ptr %i.gh, align 8, !tbaa !13 ; 2 uses
  %.not9.i.i160 = icmp eq ptr %i.hv, null
  br i1 %.not9.i.i160, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.hw = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.hv, i64 noundef 64) #28
  br label %Vec_IntGrow.exit11.sink.split.i158

bb.aq:                                            ; preds = %bb.ao
  %i.hx = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #27
  br label %Vec_IntGrow.exit11.sink.split.i158

bb.ar:                                            ; preds = %bb.an
  %i.hy = icmp samesign ult i32 %i.hr, 1073741823
  %i.hz = shl nuw nsw i32 %i.hr, 1
  %spec.select.i155 = select i1 %i.hy, i32 %i.hz, i32 2147483647 ; 4 uses
  %.not.i9.i156 = icmp samesign ult i32 %i.hr, %spec.select.i155
  %.pre209 = load ptr, ptr %i.gh, align 8, !tbaa !13 ; 3 uses
  br i1 %.not.i9.i156, label %bb.as, label %.critedge6

bb.as:                                            ; preds = %bb.ar
  %.not9.i10.i157 = icmp eq ptr %.pre209, null
  %i.ia = zext nneg i32 %spec.select.i155 to i64
  %i.ib = shl nuw nsw i64 %i.ia, 2                ; 2 uses
  br i1 %.not9.i10.i157, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ic = tail call ptr @realloc(ptr noundef nonnull %.pre209, i64 noundef %i.ib) #28
  br label %Vec_IntGrow.exit11.sink.split.i158

bb.au:                                            ; preds = %bb.as
  %i.id = tail call noalias ptr @malloc(i64 noundef %i.ib) #27
  br label %Vec_IntGrow.exit11.sink.split.i158

Vec_IntGrow.exit11.sink.split.i158:               ; preds = %bb.at, %bb.au, %bb.ap, %bb.aq
  %i.ie = phi ptr [ %i.hx, %bb.aq ], [ %i.hw, %bb.ap ], [ %i.ic, %bb.at ], [ %i.id, %bb.au ] ; 2 uses
  %spec.select.sink.i159 = phi i32 [ 16, %bb.aq ], [ 16, %bb.ap ], [ %spec.select.i155, %bb.at ], [ %spec.select.i155, %bb.au ]
  store ptr %i.ie, ptr %i.gh, align 8, !tbaa !13
  store i32 %spec.select.sink.i159, ptr %4, align 8, !tbaa !12
  %.pre210 = load i32, ptr %i.gg, align 4, !tbaa !8
  br label %.critedge6

.critedge6:                                       ; preds = %Vec_IntGrow.exit11.sink.split.i158, %bb.ar, %.Vec_IntPush.exit162_crit_edge
  %i.if = phi i32 [ %i.hr, %.Vec_IntPush.exit162_crit_edge ], [ %i.hr, %bb.ar ], [ %.pre210, %Vec_IntGrow.exit11.sink.split.i158 ] ; 2 uses
  %i.ig = phi ptr [ %.pre208, %.Vec_IntPush.exit162_crit_edge ], [ %.pre209, %bb.ar ], [ %i.ie, %Vec_IntGrow.exit11.sink.split.i158 ]
  %i.ih = add nsw i32 %i.if, 1
  store i32 %i.ih, ptr %i.gg, align 4, !tbaa !8
  %i.ii = sext i32 %i.if to i64
  %i.ij = getelementptr inbounds [4 x i8], ptr %i.ig, i64 %i.ii
  store i32 %i.hj, ptr %i.ij, align 4, !tbaa !24
  %.val92.pre = load i32, ptr %i.e, align 4, !tbaa !8 ; 3 uses
  %indvars.iv.next196 = add nuw nsw i64 %indvars.iv195244, 1 ; 2 uses
  %i.ik = sext i32 %.val92.pre to i64
  %i.il = icmp slt i64 %indvars.iv.next196, %i.ik
  br i1 %i.il, label %.peel.next, label %.critedge6..critedge8_crit_edge, !llvm.loop !88

.critedge6..critedge8_crit_edge:                  ; preds = %.critedge6
  br label %.critedge8, !llvm.loop !88

.critedge8:                                       ; preds = %.peel.next, %.critedge6..critedge8_crit_edge, %.peel.next.preheader
  %.val177214 = phi i32 [ %.val92174, %.peel.next.preheader ], [ %.val92.pre, %.critedge6..critedge8_crit_edge ], [ %.val92.pre, %.peel.next ]
  %i.im = icmp sgt i32 %.val177214, 0
  br i1 %i.im, label %.lr.ph179.preheader, label %.critedge10

.lr.ph179.preheader:                              ; preds = %.lr.ph176, %.critedge8
  br label %.lr.ph179

.lr.ph179:                                        ; preds = %.lr.ph179.preheader, %bb.av
  %indvars.iv199 = phi i64 [ %indvars.iv.next200, %bb.av ], [ 0, %.lr.ph179.preheader ] ; 2 uses
  %i.in = load ptr, ptr %i.a, align 8, !tbaa !38  ; 2 uses
  %i.io = getelementptr i8, ptr %i.in, i64 32
  %.val101 = load ptr, ptr %i.io, align 8, !tbaa !39 ; 2 uses
  %.not88 = icmp eq ptr %.val101, null
  br i1 %.not88, label %.critedge10, label %bb.av

bb.av:                                            ; preds = %.lr.ph179
  %.val96 = load ptr, ptr %i.y, align 8, !tbaa !13
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %.val96, i64 %indvars.iv199
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !24
  %i.ir = sext i32 %i.iq to i64
  %i.is = getelementptr inbounds [12 x i8], ptr %.val101, i64 %i.ir ; 2 uses
  %i.it = load i64, ptr %i.is, align 4
  %i.iu = and i64 %i.it, 536870911
  %i.iv = sub nsw i64 0, %i.iu
  %i.iw = getelementptr inbounds [12 x i8], ptr %i.is, i64 %i.iv
  tail call void @Gla_ManCollectInternal_rec(ptr noundef nonnull %i.in, ptr noundef nonnull %i.iw, ptr noundef %4)
  %indvars.iv.next200 = add nuw nsw i64 %indvars.iv199, 1 ; 2 uses
  %.val = load i32, ptr %i.e, align 4, !tbaa !8
  %i.ix = sext i32 %.val to i64
  %i.iy = icmp slt i64 %indvars.iv.next200, %i.ix
  br i1 %i.iy, label %.lr.ph179, label %.critedge10, !llvm.loop !90

.critedge10:                                      ; preds = %.lr.ph179, %bb.av, %.critedge6.preheader, %.critedge8
  ret void
}

declare void @Gia_ManIncrementTravId(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define void @Gia_ManRefSetAndPropFanout_rec(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8          ; 8 uses
  %i.b = getelementptr i8, ptr %0, i64 144        ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %tailrecurse

tailrecurse:                                      ; preds = %Gia_ObjIsRi.exit, %bb.a
  %.tr138 = phi ptr [ %1, %bb.a ], [ %i.ca, %Gia_ObjIsRi.exit ] ; 6 uses
  %.tr139 = phi i32 [ %2, %bb.a ], [ %i.cb, %Gia_ObjIsRi.exit ] ; 7 uses
  %.val103 = load ptr, ptr %i.a, align 8, !tbaa !38
  %.val104 = load ptr, ptr %i.b, align 8, !tbaa !91
  %i.d = getelementptr i8, ptr %.val103, i64 32
  %.val103.val = load ptr, ptr %i.d, align 8, !tbaa !39
  %i.e = tail call fastcc ptr @Gla_ObjRef(ptr %.val103.val, ptr %.val104, ptr noundef %.tr138, i32 noundef %.tr139) ; 2 uses
  %i.f = load i32, ptr %i.e, align 4              ; 3 uses
  %i.g = lshr i32 %i.f, 19
  %i.h = and i32 %i.g, 4095
  %.not = icmp eq i32 %i.h, %4
  br i1 %.not, label %bb.b, label %.critedge

bb.b:                                             ; preds = %tailrecurse
  %i.i = or i32 %i.f, 2
  store i32 %i.i, ptr %i.e, align 4
  %i.j = and i32 %i.f, 4
  %.not78 = icmp eq i32 %i.j, 0
  br i1 %.not78, label %bb.o, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !32
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 136
  %i.m = load i32, ptr %i.l, align 8, !tbaa !33   ; 2 uses
  %i.n = icmp sgt i32 %i.m, -1
  br i1 %i.n, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c, %bb.e
  %.076153 = phi i32 [ %i.s, %bb.e ], [ %i.m, %bb.c ] ; 4 uses
  %.val101 = load ptr, ptr %i.a, align 8, !tbaa !38
  %.val102 = load ptr, ptr %i.b, align 8, !tbaa !91
  %i.o = getelementptr i8, ptr %.val101, i64 32
  %.val101.val = load ptr, ptr %i.o, align 8, !tbaa !39
  %i.p = tail call fastcc ptr @Gla_ObjRef(ptr %.val101.val, ptr %.val102, ptr noundef %.tr138, i32 noundef %.076153)
  %i.q = load i32, ptr %i.p, align 4
  %i.r = and i32 %i.q, 2
  %.not91 = icmp eq i32 %i.r, 0
  br i1 %.not91, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph
  tail call void @Gia_ManRefSetAndPropFanout_rec(ptr noundef nonnull %0, ptr noundef %.tr138, i32 noundef %.076153, ptr noundef %3, i32 noundef %4)
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.d
  %i.s = add nsw i32 %.076153, -1
  %i.t = icmp sgt i32 %.076153, 0
  br i1 %i.t, label %.lr.ph, label %._crit_edge, !llvm.loop !92

._crit_edge:                                      ; preds = %bb.e, %bb.c
  %i.u = load ptr, ptr %i.a, align 8, !tbaa !38
  %i.v = getelementptr i8, ptr %i.u, i64 32
  %.val = load ptr, ptr %i.v, align 8, !tbaa !39
  %i.w = ptrtoint ptr %.tr138 to i64
  %i.x = ptrtoint ptr %.val to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = sdiv exact i64 %i.y, 12
  %i.aa = trunc i64 %i.z to i32
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !8  ; 7 uses
  %i.ad = load i32, ptr %3, align 8, !tbaa !12
  %i.ae = icmp eq i32 %i.ac, %i.ad
  br i1 %i.ae, label %bb.f, label %Vec_IntPush.exit

bb.f:                                             ; preds = %._crit_edge
  %i.af = icmp slt i32 %i.ac, 16
  br i1 %i.af, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !13 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.ah, null
  br i1 %.not9.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.ah, i64 noundef 64) #28
  br label %Vec_IntGrow.exit.i

bb.i:                                             ; preds = %bb.g
  %i.aj = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #27
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %bb.i, %bb.h
  %i.ak = phi ptr [ %i.ai, %bb.h ], [ %i.aj, %bb.i ]
  store ptr %i.ak, ptr %i.ag, align 8, !tbaa !13
  br label %Vec_IntGrow.exit11.sink.split.i

bb.j:                                             ; preds = %bb.f
  %i.al = icmp samesign ult i32 %i.ac, 1073741823
  %i.am = shl nuw nsw i32 %i.ac, 1
  %spec.select.i = select i1 %i.al, i32 %i.am, i32 2147483647 ; 3 uses
  %.not.i9.i = icmp samesign ult i32 %i.ac, %spec.select.i
  br i1 %.not.i9.i, label %bb.k, label %Vec_IntPush.exit

bb.k:                                             ; preds = %bb.j
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !13 ; 2 uses
  %.not9.i10.i = icmp eq ptr %i.ao, null
  %i.ap = zext nneg i32 %spec.select.i to i64
  %i.aq = shl nuw nsw i64 %i.ap, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ar = tail call ptr @realloc(ptr noundef nonnull %i.ao, i64 noundef %i.aq) #28
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.as = tail call noalias ptr @malloc(i64 noundef %i.aq) #27
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.at = phi ptr [ %i.ar, %bb.l ], [ %i.as, %bb.m ]
  store ptr %i.at, ptr %i.an, align 8, !tbaa !13
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.n, %Vec_IntGrow.exit.i
  %spec.select.sink.i = phi i32 [ %spec.select.i, %bb.n ], [ 16, %Vec_IntGrow.exit.i ]
  store i32 %spec.select.sink.i, ptr %3, align 8, !tbaa !12
  %.pre = load i32, ptr %i.ab, align 4, !tbaa !8
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %._crit_edge, %bb.j, %Vec_IntGrow.exit11.sink.split.i
  %i.au = phi i32 [ %i.ac, %._crit_edge ], [ %i.ac, %bb.j ], [ %.pre, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !13
  %i.ax = add nsw i32 %i.au, 1
  store i32 %i.ax, ptr %i.ab, align 4, !tbaa !8
  %i.ay = sext i32 %i.au to i64
  %i.az = getelementptr inbounds [4 x i8], ptr %i.aw, i64 %i.ay
  store i32 %i.aa, ptr %i.az, align 4, !tbaa !24
  br label %.critedge

bb.o:                                             ; preds = %bb.b
  %.val106 = load i64, ptr %.tr138, align 4       ; 3 uses
  %i.ba = and i64 %.val106, 2147483648
  %.not.i = icmp eq i64 %i.ba, 0
  %i.bb = and i64 %.val106, 536870911
  %i.bc = icmp eq i64 %i.bb, 536870911
  %narrow.i.not = or i1 %.not.i, %i.bc
  br i1 %narrow.i.not, label %.critedge142.preheader, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bd = load ptr, ptr %i.c, align 8, !tbaa !32
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 136
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !33
  %i.bg = icmp eq i32 %.tr139, %i.bf
  br i1 %i.bg, label %.critedge, label %Gia_ObjIsPo.exit

.critedge142.preheader:                           ; preds = %bb.o
  %5 = load ptr, ptr %i.a, align 8, !tbaa !38     ; 3 uses
  %i.bh = ptrtoint ptr %.tr138 to i64             ; 2 uses
  %6 = getelementptr i8, ptr %5, i64 32
  %.val109154 = load ptr, ptr %6, align 8, !tbaa !39 ; 2 uses
  %7 = getelementptr i8, ptr %5, i64 248
  %.val110155 = load ptr, ptr %7, align 8, !tbaa !93
  %8 = getelementptr i8, ptr %.val110155, i64 8
  %.val110.val156 = load ptr, ptr %8, align 8, !tbaa !13
  %9 = ptrtoint ptr %.val109154 to i64
  %10 = sub i64 %i.bh, %9
  %11 = sdiv exact i64 %10, 12
  %sext.i157 = shl i64 %11, 32
  %12 = ashr exact i64 %sext.i157, 30             ; 2 uses
  %13 = getelementptr inbounds i8, ptr %.val110.val156, i64 %12
  %14 = load i32, ptr %13, align 4, !tbaa !24
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %.lr.ph160, label %.critedge

Gia_ObjIsPo.exit:                                 ; preds = %bb.p
  %i.bi = load ptr, ptr %i.a, align 8, !tbaa !38  ; 4 uses
  %i.bj = lshr i64 %.val106, 32
  %i.bk = trunc nuw i64 %i.bj to i32
  %i.bl = and i32 %i.bk, 536870911                ; 2 uses
  %i.bm = getelementptr i8, ptr %i.bi, i64 16
  %.val4.i = load i32, ptr %i.bm, align 8, !tbaa !74
  %i.bn = getelementptr i8, ptr %i.bi, i64 72
  %.val5.i = load ptr, ptr %i.bn, align 8, !tbaa !83
  %i.bo = getelementptr i8, ptr %.val5.i, i64 4
  %.val5.val.i = load i32, ptr %i.bo, align 4, !tbaa !8 ; 2 uses
  %i.bp = sub nsw i32 %.val5.val.i, %.val4.i
  %.not135 = icmp slt i32 %i.bl, %i.bp
  br i1 %.not135, label %.critedge, label %Gia_ObjIsRi.exit

Gia_ObjIsRi.exit:                                 ; preds = %Gia_ObjIsPo.exit
  %i.bq = getelementptr i8, ptr %i.bi, i64 64
  %.val5.i122 = load ptr, ptr %i.bq, align 8, !tbaa !75 ; 2 uses
  %i.br = getelementptr i8, ptr %.val5.i122, i64 4
  %.val5.val.i123 = load i32, ptr %i.br, align 4, !tbaa !8
  %i.bs = add i32 %.val5.val.i123, %i.bl
  %i.bt = sub i32 %i.bs, %.val5.val.i
  %i.bu = getelementptr i8, ptr %i.bi, i64 32
  %.val6.i = load ptr, ptr %i.bu, align 8, !tbaa !39 ; 2 uses
  %i.bv = getelementptr i8, ptr %.val5.i122, i64 8
  %.val7.val.i = load ptr, ptr %i.bv, align 8, !tbaa !13
  %i.bw = sext i32 %i.bt to i64
  %i.bx = getelementptr inbounds [4 x i8], ptr %.val7.val.i, i64 %i.bw
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !24
  %i.bz = sext i32 %i.by to i64
  %i.ca = getelementptr inbounds [12 x i8], ptr %.val6.i, i64 %i.bz ; 2 uses
  %i.cb = add nsw i32 %.tr139, 1                  ; 2 uses
  %.val100 = load ptr, ptr %i.b, align 8, !tbaa !91
  %i.cc = tail call fastcc ptr @Gla_ObjRef(ptr %.val6.i, ptr %.val100, ptr noundef %i.ca, i32 noundef %i.cb)
  %i.cd = load i32, ptr %i.cc, align 4
  %i.ce = and i32 %i.cd, 2
  %.not90 = icmp eq i32 %i.ce, 0
  br i1 %.not90, label %tailrecurse, label %.critedge

.lr.ph160:                                        ; preds = %.critedge142.preheader, %.critedge142.a
  %16 = phi i64 [ %25, %.critedge142.a ], [ %12, %.critedge142.preheader ]
  %.val109159 = phi ptr [ %.val109, %.critedge142.a ], [ %.val109154, %.critedge142.preheader ] ; 2 uses
  %17 = phi ptr [ %18, %.critedge142.a ], [ %5, %.critedge142.preheader ]
  %.0158 = phi i32 [ %i.dy, %.critedge142.a ], [ 0, %.critedge142.preheader ] ; 2 uses
  %i.cf = getelementptr i8, ptr %17, i64 256
  %.val112 = load ptr, ptr %i.cf, align 8, !tbaa !94
  %i.cg = getelementptr i8, ptr %.val112, i64 8
  %.val112.val = load ptr, ptr %i.cg, align 8, !tbaa !13 ; 2 uses
  %i.ch = getelementptr inbounds i8, ptr %.val112.val, i64 %16
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !24
  %i.cj = add nsw i32 %i.ci, %.0158
  %i.ck = sext i32 %i.cj to i64
  %i.cl = getelementptr inbounds [4 x i8], ptr %.val112.val, i64 %i.ck
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !24
  %i.cn = sext i32 %i.cm to i64
  %i.co = getelementptr inbounds [12 x i8], ptr %.val109159, i64 %i.cn ; 7 uses
  %.val98 = load ptr, ptr %i.b, align 8, !tbaa !91
  %i.cp = tail call fastcc ptr @Gla_ObjRef(ptr %.val109159, ptr %.val98, ptr noundef %i.co, i32 noundef %.tr139)
  %i.cq = load i32, ptr %i.cp, align 4
  %i.cr = and i32 %i.cq, 2
  %.not82 = icmp eq i32 %i.cr, 0
  br i1 %.not82, label %bb.q, label %.critedge142.a

bb.q:                                             ; preds = %.lr.ph160
  %.val105 = load i64, ptr %i.co, align 4         ; 2 uses
  %i.cs = and i64 %.val105, 2147483648
  %.not.i126 = icmp eq i64 %i.cs, 0
  %i.ct = and i64 %.val105, 536870911             ; 2 uses
  %i.cu = icmp eq i64 %i.ct, 536870911
  %narrow.i127.not = or i1 %.not.i126, %i.cu
  br i1 %narrow.i127.not, label %bb.r, label %.critedge142.sink.split

bb.r:                                             ; preds = %bb.q
  %i.cv = sub nsw i64 0, %i.ct
  %i.cw = getelementptr inbounds [12 x i8], ptr %i.co, i64 %i.cv
  %.val95 = load ptr, ptr %i.a, align 8, !tbaa !38
  %.val96 = load ptr, ptr %i.b, align 8, !tbaa !91
  %i.cx = getelementptr i8, ptr %.val95, i64 32
  %.val95.val = load ptr, ptr %i.cx, align 8, !tbaa !39
  %i.cy = tail call fastcc ptr @Gla_ObjRef(ptr %.val95.val, ptr %.val96, ptr noundef nonnull %i.cw, i32 noundef %.tr139)
  %i.cz = load i64, ptr %i.co, align 4
  %i.da = lshr i64 %i.cz, 32
  %i.db = and i64 %i.da, 536870911
  %i.dc = sub nsw i64 0, %i.db
  %i.dd = getelementptr inbounds [12 x i8], ptr %i.co, i64 %i.dc
  %.val93 = load ptr, ptr %i.a, align 8, !tbaa !38
  %.val94 = load ptr, ptr %i.b, align 8, !tbaa !91
  %i.de = getelementptr i8, ptr %.val93, i64 32
  %.val93.val = load ptr, ptr %i.de, align 8, !tbaa !39
  %i.df = tail call fastcc ptr @Gla_ObjRef(ptr %.val93.val, ptr %.val94, ptr noundef nonnull %i.dd, i32 noundef %.tr139)
  %i.dg = load i32, ptr %i.cy, align 4            ; 2 uses
  %.val114 = load i64, ptr %i.co, align 4         ; 2 uses
  %i.dh = trunc i64 %.val114 to i32
  %i.di = lshr i32 %i.dh, 29
  %i.dj = xor i32 %i.di, %i.dg
  %i.dk = and i32 %i.dj, 1                        ; 2 uses
  %i.dl = icmp eq i32 %i.dk, 0
  %i.dm = and i32 %i.dg, 2                        ; 2 uses
  %.not84 = icmp ne i32 %i.dm, 0
  %or.cond.not = and i1 %.not84, %i.dl
  br i1 %or.cond.not, label %.critedge142.sink.split, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dn = load i32, ptr %i.df, align 4            ; 3 uses
  %i.do = lshr i64 %.val114, 61
  %i.dp = trunc nuw nsw i64 %i.do to i32
  %i.dq = xor i32 %i.dn, %i.dp                    ; 2 uses
  %i.dr = and i32 %i.dq, 1
  %i.ds = icmp eq i32 %i.dr, 0
  %i.dt = and i32 %i.dn, 2
  %.not85 = icmp ne i32 %i.dt, 0
  %or.cond131.not = and i1 %.not85, %i.ds
  br i1 %or.cond131.not, label %.critedge142.sink.split, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.du = and i32 %i.dk, %i.dq
  %i.dv = icmp eq i32 %i.du, 0
  %i.dw = and i32 %i.dm, %i.dn
  %i.dx = icmp eq i32 %i.dw, 0
  %or.cond133 = or i1 %i.dx, %i.dv
  br i1 %or.cond133, label %.critedge142.a, label %.critedge142.sink.split

.critedge142.sink.split:                          ; preds = %bb.r, %bb.s, %bb.t, %bb.q
  tail call void @Gia_ManRefSetAndPropFanout_rec(ptr noundef nonnull %0, ptr noundef nonnull %i.co, i32 noundef %.tr139, ptr noundef %3, i32 noundef %4)
  br label %.critedge142.a

.critedge142.a:                                   ; preds = %.critedge142.sink.split, %bb.t, %.lr.ph160
  %i.dy = add nuw nsw i32 %.0158, 1               ; 2 uses
  %18 = load ptr, ptr %i.a, align 8, !tbaa !38    ; 3 uses
  %19 = getelementptr i8, ptr %18, i64 32
  %.val109 = load ptr, ptr %19, align 8, !tbaa !39 ; 2 uses
  %20 = getelementptr i8, ptr %18, i64 248
  %.val110 = load ptr, ptr %20, align 8, !tbaa !93
  %21 = getelementptr i8, ptr %.val110, i64 8
  %.val110.val = load ptr, ptr %21, align 8, !tbaa !13
  %22 = ptrtoint ptr %.val109 to i64
  %23 = sub i64 %i.bh, %22
  %24 = sdiv exact i64 %23, 12
  %sext.i = shl i64 %24, 32
  %25 = ashr exact i64 %sext.i, 30                ; 2 uses
  %26 = getelementptr inbounds i8, ptr %.val110.val, i64 %25
  %27 = load i32, ptr %26, align 4, !tbaa !24
  %28 = icmp slt i32 %i.dy, %27
  br i1 %28, label %.lr.ph160, label %.critedge, !llvm.loop !95

.critedge:                                        ; preds = %Gia_ObjIsRi.exit, %bb.p, %Gia_ObjIsPo.exit, %tailrecurse, %.critedge142.a, %.critedge142.preheader, %Vec_IntPush.exit
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define internal fastcc ptr @Gla_ObjRef(ptr %.8.val.32.val, ptr nofree captures(none) %.144.val, ptr noundef %0, i32 noundef %1) unnamed_addr #4 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = ptrtoint ptr %.8.val.32.val to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = sdiv exact i64 %i.c, 12
  %sext = shl i64 %i.d, 32
  %i.e = ashr exact i64 %sext, 28
  %i.f = getelementptr inbounds i8, ptr %.144.val, i64 %i.e ; 7 uses
  %i.g = add nsw i32 %1, 1                        ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 3 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !8    ; 4 uses
  %.not.i.not.i = icmp slt i32 %1, %i.i
  br i1 %.not.i.not.i, label %Vec_IntGetEntryP.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load i32, ptr %i.f, align 8, !tbaa !12   ; 4 uses
  %i.k = shl nsw i32 %i.j, 1                      ; 2 uses
  %.not.i = icmp slt i32 %1, %i.k
  %.not.i.i.not.i = icmp sgt i32 %i.j, %1         ; 2 uses
  br i1 %.not.i, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %.not.i.i.not.i, label %Vec_IntGrow.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !13   ; 2 uses
  %.not9.i.i.i = icmp eq ptr %i.m, null
  %i.n = sext i32 %i.g to i64
  %i.o = shl nsw i64 %i.n, 2                      ; 2 uses
  br i1 %.not9.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = tail call ptr @realloc(ptr noundef nonnull %i.m, i64 noundef %i.o) #28
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.q = tail call noalias ptr @malloc(i64 noundef %i.o) #27
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.r = phi ptr [ %i.p, %bb.e ], [ %i.q, %bb.f ]
  store ptr %i.r, ptr %i.l, align 8, !tbaa !13
  br label %Vec_IntGrow.exit.sink.split.i.i

bb.h:                                             ; preds = %bb.b
  br i1 %.not.i.i.not.i, label %Vec_IntGrow.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = icmp slt i32 %i.j, 1073741823
  %spec.select.i.i = select i1 %i.s, i32 %i.k, i32 2147483647 ; 3 uses
  %.not.i22.i.i = icmp slt i32 %i.j, %spec.select.i.i
  br i1 %.not.i22.i.i, label %bb.j, label %Vec_IntGrow.exit.i.i

bb.j:                                             ; preds = %bb.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !13   ; 2 uses
  %.not9.i23.i.i = icmp eq ptr %i.u, null
  %i.v = sext i32 %spec.select.i.i to i64
  %i.w = shl nsw i64 %i.v, 2                      ; 2 uses
  br i1 %.not9.i23.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.x = tail call ptr @realloc(ptr noundef nonnull %i.u, i64 noundef %i.w) #28
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.y = tail call noalias ptr @malloc(i64 noundef %i.w) #27
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.z = phi ptr [ %i.x, %bb.k ], [ %i.y, %bb.l ]
  store ptr %i.z, ptr %i.t, align 8, !tbaa !13
  br label %Vec_IntGrow.exit.sink.split.i.i

Vec_IntGrow.exit.sink.split.i.i:                  ; preds = %bb.m, %bb.g
  %spec.select.sink.i.i = phi i32 [ %spec.select.i.i, %bb.m ], [ %i.g, %bb.g ]
  store i32 %spec.select.sink.i.i, ptr %i.f, align 8, !tbaa !12
  %.pre.i = load i32, ptr %i.h, align 4, !tbaa !8
  br label %Vec_IntGrow.exit.i.i

Vec_IntGrow.exit.i.i:                             ; preds = %Vec_IntGrow.exit.sink.split.i.i, %bb.i, %bb.h, %bb.c
  %i.aa = phi i32 [ %.pre.i, %Vec_IntGrow.exit.sink.split.i.i ], [ %i.i, %bb.i ], [ %i.i, %bb.h ], [ %i.i, %bb.c ] ; 3 uses
  %.not3.i = icmp sgt i32 %i.aa, %1
  br i1 %.not3.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %Vec_IntGrow.exit.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !13
  %i.ad = sext i32 %i.aa to i64
  %i.ae = shl nsw i64 %i.ad, 2
  %scevgep.i.i = getelementptr i8, ptr %i.ac, i64 %i.ae
  %i.af = sub i32 %1, %i.aa
  %i.ag = zext i32 %i.af to i64
  %i.ah = shl nuw nsw i64 %i.ag, 2
  %i.ai = add nuw nsw i64 %i.ah, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i.i, i8 0, i64 %i.ai, i1 false), !tbaa !24
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %Vec_IntGrow.exit.i.i
  store i32 %i.g, ptr %i.h, align 4, !tbaa !8
  br label %Vec_IntGetEntryP.exit

Vec_IntGetEntryP.exit:                            ; preds = %bb.a, %._crit_edge.i.i
  %i.aj = getelementptr i8, ptr %i.f, i64 8
  %.val.i = load ptr, ptr %i.aj, align 8, !tbaa !13
  %i.ak = sext i32 %1 to i64
  %i.al = getelementptr inbounds [4 x i8], ptr %.val.i, i64 %i.ak
  ret ptr %i.al
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define void @Gla_ManRefSelect_rec(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8          ; 6 uses
  %i.b = getelementptr i8, ptr %0, i64 144        ; 6 uses
  %.val121164173 = load ptr, ptr %i.a, align 8, !tbaa !38
  %.val122165174 = load ptr, ptr %i.b, align 8, !tbaa !91
  %i.c = getelementptr i8, ptr %.val121164173, i64 32
  %.val121.val166175 = load ptr, ptr %i.c, align 8, !tbaa !39
  %i.d = tail call fastcc ptr @Gla_ObjRef(ptr %.val121.val166175, ptr %.val122165174, ptr noundef %1, i32 noundef %2) ; 2 uses
  %i.e = load i32, ptr %i.d, align 4              ; 2 uses
  %i.f = and i32 %i.e, 2
  %.not167176 = icmp eq i32 %i.f, 0
  br i1 %.not167176, label %.lr.ph.lr.ph, label %.loopexit

.lr.ph.lr.ph:                                     ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.lr.ph, %tailrecurse.outer
  %i.h = phi i32 [ %i.e, %.lr.ph.lr.ph ], [ %i.ct, %tailrecurse.outer ]
  %i.i = phi ptr [ %i.d, %.lr.ph.lr.ph ], [ %i.cs, %tailrecurse.outer ]
  %.tr146.ph178 = phi i32 [ %2, %.lr.ph.lr.ph ], [ %i.cr, %tailrecurse.outer ] ; 8 uses
  %.tr145.ph177 = phi ptr [ %1, %.lr.ph.lr.ph ], [ %i.cq, %tailrecurse.outer ]
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %tailrecurse.backedge
  %i.j = phi i32 [ %i.h, %.lr.ph ], [ %i.ea, %tailrecurse.backedge ]
  %i.k = phi ptr [ %i.i, %.lr.ph ], [ %i.dz, %tailrecurse.backedge ] ; 3 uses
  %.tr145168 = phi ptr [ %.tr145.ph177, %.lr.ph ], [ %i.dx, %tailrecurse.backedge ] ; 13 uses
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !32
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  %i.n = load i32, ptr %i.m, align 8, !tbaa !96
  %.not97 = icmp eq i32 %i.n, 0
  br i1 %.not97, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @Gia_ManRefSetAndPropFanout_rec(ptr noundef nonnull %0, ptr noundef %.tr145168, i32 noundef %.tr146.ph178, ptr noundef %3, i32 noundef %4)
  %.pre = load i32, ptr %i.k, align 4
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.o = or disjoint i32 %i.j, 2                  ; 2 uses
  store i32 %i.o, ptr %i.k, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.p = phi i32 [ %i.o, %bb.d ], [ %.pre, %bb.c ]
  %i.q = and i32 %i.p, 4
  %.not98 = icmp eq i32 %i.q, 0
  br i1 %.not98, label %bb.t, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = load ptr, ptr %i.g, align 8, !tbaa !32   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  %i.t = load i32, ptr %i.s, align 8, !tbaa !96
  %.not111 = icmp eq i32 %i.t, 0
  br i1 %.not111, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 136
  %i.v = load i32, ptr %i.u, align 8, !tbaa !33   ; 2 uses
  %i.w = icmp sgt i32 %i.v, -1
  br i1 %i.w, label %.lr.ph180, label %.loopexit

.lr.ph180:                                        ; preds = %bb.g, %bb.i
  %.0179 = phi i32 [ %i.ab, %bb.i ], [ %i.v, %bb.g ] ; 4 uses
  %.val119 = load ptr, ptr %i.a, align 8, !tbaa !38
  %.val120 = load ptr, ptr %i.b, align 8, !tbaa !91
  %i.x = getelementptr i8, ptr %.val119, i64 32
  %.val119.val = load ptr, ptr %i.x, align 8, !tbaa !39
  %i.y = tail call fastcc ptr @Gla_ObjRef(ptr %.val119.val, ptr %.val120, ptr noundef %.tr145168, i32 noundef %.0179)
  %i.z = load i32, ptr %i.y, align 4
  %i.aa = and i32 %i.z, 2
  %.not112 = icmp eq i32 %i.aa, 0
  br i1 %.not112, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph180
  tail call void @Gia_ManRefSetAndPropFanout_rec(ptr noundef nonnull %0, ptr noundef %.tr145168, i32 noundef %.0179, ptr noundef %3, i32 noundef %4)
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph180, %bb.h
  %i.ab = add nsw i32 %.0179, -1
  %i.ac = icmp sgt i32 %.0179, 0
end_hunk_0
