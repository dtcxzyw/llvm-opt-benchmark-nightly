Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/giaEquiv?download=true
inline.NumInlined: 1043
inline.NumDeleted: 101
loop-unroll.NumRuntimeUnrolled: 31
loop-unroll.NumUnrolled: 31
begin_hunk_0_@Gia_ManEquivReduce:bb.a
.critedge:                                        ; preds = %.critedge.loopexit, %.lr.ph166, %bb.z
  %.3.lcssa = phi i32 [ 0, %bb.z ], [ 0, %.lr.ph166 ], [ %i.dh, %.critedge.loopexit ]
  %i.di = icmp eq i32 %.3.lcssa, %i.da
  br i1 %i.di, label %.critedge.thread, label %bb.aa

.critedge.thread:                                 ; preds = %Gia_ObjReprObj.exit.thread, %.critedge
  %i.dj = tail call ptr @Gia_ManDup(ptr noundef nonnull %0) #32
  br label %bb.aj

bb.aa:                                            ; preds = %.critedge
  %.not121 = icmp eq i32 %3, 0
  br i1 %.not121, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  tail call void @Gia_ManSetPhase(ptr noundef nonnull %0) #32
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  br i1 %.not117, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dk = tail call i32 @Gia_ManEquivSetColors(ptr noundef nonnull %0, i32 noundef %4) ; 0 uses
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.val = load i32, ptr %i.cz, align 8, !tbaa !42
  %i.dl = tail call ptr @Gia_ManStart(i32 noundef %.val) #32 ; 9 uses
  %i.dm = load ptr, ptr %0, align 8, !tbaa !54    ; 3 uses
  %.not.i148 = icmp eq ptr %i.dm, null
  br i1 %.not.i148, label %Abc_UtilStrsav.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dn = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.dm) #34
  %i.do = add i64 %i.dn, 1
  %i.dp = tail call noalias ptr @malloc(i64 noundef %i.do) #33 ; 2 uses
  %i.dq = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.dp, ptr noundef nonnull readonly dereferenceable(1) %i.dm) #32 ; 0 uses
  br label %Abc_UtilStrsav.exit

Abc_UtilStrsav.exit:                              ; preds = %bb.ae, %bb.af
  %i.dr = phi ptr [ %i.dp, %bb.af ], [ null, %bb.ae ]
  store ptr %i.dr, ptr %i.dl, align 8, !tbaa !54
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !53 ; 3 uses
  %.not.i149 = icmp eq ptr %i.dt, null
  br i1 %.not.i149, label %Abc_UtilStrsav.exit150, label %bb.ag

bb.ag:                                            ; preds = %Abc_UtilStrsav.exit
  %i.du = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.dt) #34
  %i.dv = add i64 %i.du, 1
  %i.dw = tail call noalias ptr @malloc(i64 noundef %i.dv) #33 ; 2 uses
  %i.dx = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.dw, ptr noundef nonnull readonly dereferenceable(1) %i.dt) #32 ; 0 uses
  br label %Abc_UtilStrsav.exit150

Abc_UtilStrsav.exit150:                           ; preds = %Abc_UtilStrsav.exit, %bb.ag
  %i.dy = phi ptr [ %i.dw, %bb.ag ], [ null, %Abc_UtilStrsav.exit ]
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  store ptr %i.dy, ptr %i.dz, align 8, !tbaa !53
  tail call void @Gia_ManFillValue(ptr noundef nonnull %0) #32
  %i.ea = getelementptr i8, ptr %0, i64 32        ; 5 uses
  %.val136 = load ptr, ptr %i.ea, align 8, !tbaa !50
  %i.eb = getelementptr inbounds nuw i8, ptr %.val136, i64 8
  store i32 0, ptr %i.eb, align 4, !tbaa !52
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !55 ; 2 uses
  %i.ee = getelementptr i8, ptr %i.ed, i64 4
  %.val135175 = load i32, ptr %i.ee, align 4, !tbaa !44
  %i.ef = icmp sgt i32 %.val135175, 0
  br i1 %i.ef, label %.lr.ph177, label %.critedge2

.lr.ph177:                                        ; preds = %Abc_UtilStrsav.exit150, %bb.ah
  %indvars.iv200 = phi i64 [ %indvars.iv.next201, %bb.ah ], [ 0, %Abc_UtilStrsav.exit150 ] ; 2 uses
  %i.eg = phi ptr [ %i.eo, %bb.ah ], [ %i.ed, %Abc_UtilStrsav.exit150 ]
  %.val137 = load ptr, ptr %i.ea, align 8, !tbaa !50 ; 2 uses
  %.not122 = icmp eq ptr %.val137, null
  br i1 %.not122, label %.critedge2, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph177
  %i.eh = getelementptr i8, ptr %i.eg, i64 8
  %.val138.val = load ptr, ptr %i.eh, align 8, !tbaa !24
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %.val138.val, i64 %indvars.iv200
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !45
  %i.ek = sext i32 %i.ej to i64
  %i.el = getelementptr inbounds [12 x i8], ptr %.val137, i64 %i.ek
  %i.em = tail call fastcc i32 @Gia_ManAppendCi(ptr noundef nonnull %i.dl)
  %i.en = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  store i32 %i.em, ptr %i.en, align 4, !tbaa !52
  %indvars.iv.next201 = add nuw nsw i64 %indvars.iv200, 1 ; 2 uses
  %i.eo = load ptr, ptr %i.ec, align 8, !tbaa !55 ; 2 uses
  %i.ep = getelementptr i8, ptr %i.eo, i64 4
  %.val135 = load i32, ptr %i.ep, align 4, !tbaa !44
  %i.eq = sext i32 %.val135 to i64
  %i.er = icmp slt i64 %indvars.iv.next201, %i.eq
  br i1 %i.er, label %.lr.ph177, label %.critedge2, !llvm.loop !128

.critedge2:                                       ; preds = %.lr.ph177, %bb.ah, %Abc_UtilStrsav.exit150
  tail call void @Gia_ManHashAlloc(ptr noundef nonnull %i.dl) #32
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !56 ; 3 uses
  %i.eu = getelementptr i8, ptr %i.et, i64 4
  %.val134179 = load i32, ptr %i.eu, align 4, !tbaa !44 ; 2 uses
  %i.ev = icmp sgt i32 %.val134179, 0
  br i1 %i.ev, label %.lr.ph181.preheader, label %.critedge6

.lr.ph181.preheader:                              ; preds = %.critedge2
  %.val141231 = load ptr, ptr %i.ea, align 8, !tbaa !50 ; 2 uses
  %.not123232 = icmp eq ptr %.val141231, null
  br i1 %.not123232, label %.critedge4, label %.lr.ph235

.lr.ph181:                                        ; preds = %.lr.ph235
  %.val141 = load ptr, ptr %i.ea, align 8, !tbaa !50 ; 2 uses
  %.not123 = icmp eq ptr %.val141, null
  br i1 %.not123, label %.critedge4, label %.lr.ph235, !llvm.loop !129

.lr.ph235:                                        ; preds = %.lr.ph181.preheader, %.lr.ph181
  %.val141234 = phi ptr [ %.val141, %.lr.ph181 ], [ %.val141231, %.lr.ph181.preheader ]
  %i.ew = phi ptr [ %i.fg, %.lr.ph181 ], [ %i.et, %.lr.ph181.preheader ]
  %indvars.iv203233 = phi i64 [ %indvars.iv.next204, %.lr.ph181 ], [ 0, %.lr.ph181.preheader ] ; 2 uses
  %i.ex = getelementptr i8, ptr %i.ew, i64 8
  %.val142.val = load ptr, ptr %i.ex, align 8, !tbaa !24
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %.val142.val, i64 %indvars.iv203233
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !45
  %i.fa = sext i32 %i.ez to i64
  %i.fb = getelementptr inbounds [12 x i8], ptr %.val141234, i64 %i.fa ; 2 uses
  %i.fc = load i64, ptr %i.fb, align 4
  %i.fd = and i64 %i.fc, 536870911
  %i.fe = sub nsw i64 0, %i.fd
  %i.ff = getelementptr inbounds [12 x i8], ptr %i.fb, i64 %i.fe
  tail call void @Gia_ManEquivReduce_rec(ptr noundef nonnull %i.dl, ptr noundef nonnull %0, ptr noundef nonnull %i.ff, i32 noundef %1, i32 noundef %2)
  %indvars.iv.next204 = add nuw nsw i64 %indvars.iv203233, 1 ; 2 uses
  %i.fg = load ptr, ptr %i.es, align 8, !tbaa !56 ; 4 uses
  %i.fh = getelementptr i8, ptr %i.fg, i64 4
  %.val134 = load i32, ptr %i.fh, align 4, !tbaa !44 ; 3 uses
  %i.fi = sext i32 %.val134 to i64
  %i.fj = icmp slt i64 %indvars.iv.next204, %i.fi
  br i1 %i.fj, label %.lr.ph181, label %..critedge4_crit_edge, !llvm.loop !129

..critedge4_crit_edge:                            ; preds = %.lr.ph235
  br label %.critedge4, !llvm.loop !129

.critedge4:                                       ; preds = %.lr.ph181, %..critedge4_crit_edge, %.lr.ph181.preheader
  %.val133183.pre = phi i32 [ %.val134179, %.lr.ph181.preheader ], [ %.val134, %..critedge4_crit_edge ], [ %.val134, %.lr.ph181 ]
  %i.fk = phi ptr [ %i.et, %.lr.ph181.preheader ], [ %i.fg, %..critedge4_crit_edge ], [ %i.fg, %.lr.ph181 ]
  %i.fl = icmp sgt i32 %.val133183.pre, 0
  br i1 %i.fl, label %.lr.ph185, label %.critedge6

.lr.ph185:                                        ; preds = %.critedge4, %bb.ai
  %indvars.iv206 = phi i64 [ %indvars.iv.next207, %bb.ai ], [ 0, %.critedge4 ] ; 2 uses
  %i.fm = phi ptr [ %i.ge, %bb.ai ], [ %i.fk, %.critedge4 ]
  %.val139 = load ptr, ptr %i.ea, align 8, !tbaa !50 ; 2 uses
  %.not124 = icmp eq ptr %.val139, null
  br i1 %.not124, label %.critedge6, label %bb.ai

bb.ai:                                            ; preds = %.lr.ph185
  %i.fn = getelementptr i8, ptr %i.fm, i64 8
  %.val140.val = load ptr, ptr %i.fn, align 8, !tbaa !24
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %.val140.val, i64 %indvars.iv206
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !45
  %i.fq = sext i32 %i.fp to i64
  %i.fr = getelementptr inbounds [12 x i8], ptr %.val139, i64 %i.fq ; 3 uses
  %i.fs = load i64, ptr %i.fr, align 4            ; 2 uses
  %i.ft = and i64 %i.fs, 536870911
  %i.fu = sub nsw i64 0, %i.ft
  %i.fv = getelementptr inbounds [12 x i8], ptr %i.fr, i64 %i.fu
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !52
  %i.fy = trunc i64 %i.fs to i32
  %i.fz = lshr i32 %i.fy, 29
  %i.ga = and i32 %i.fz, 1
  %i.gb = xor i32 %i.ga, %i.fx
  %i.gc = tail call fastcc i32 @Gia_ManAppendCo(ptr noundef nonnull %i.dl, i32 noundef %i.gb)
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  store i32 %i.gc, ptr %i.gd, align 4, !tbaa !52
  %indvars.iv.next207 = add nuw nsw i64 %indvars.iv206, 1 ; 2 uses
  %i.ge = load ptr, ptr %i.es, align 8, !tbaa !56 ; 2 uses
  %i.gf = getelementptr i8, ptr %i.ge, i64 4
  %.val133 = load i32, ptr %i.gf, align 4, !tbaa !44
  %i.gg = sext i32 %.val133 to i64
  %i.gh = icmp slt i64 %indvars.iv.next207, %i.gg
  br i1 %i.gh, label %.lr.ph185, label %.critedge6, !llvm.loop !130

.critedge6:                                       ; preds = %.lr.ph185, %bb.ai, %.critedge2, %.critedge4
  tail call void @Gia_ManHashStop(ptr noundef nonnull %i.dl) #32
  %i.gi = getelementptr i8, ptr %0, i64 16
  %.val147 = load i32, ptr %i.gi, align 8, !tbaa !63
  tail call void @Gia_ManSetRegNum(ptr noundef nonnull %i.dl, i32 noundef %.val147) #32
  br label %bb.aj

bb.aj:                                            ; preds = %.critedge6, %.critedge.thread, %bb.y, %bb.w
  %.0106 = phi ptr [ null, %bb.y ], [ %i.dj, %.critedge.thread ], [ %i.dl, %.critedge6 ], [ null, %bb.w ]
  ret ptr %.0106
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #15

declare ptr @Gia_ManDup(ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define range(i32 -1073741824, 1073741824) i32 @Gia_ManEquivSetColors(ptr noundef %0, i32 noundef %1) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !57   ; 2 uses
  %i.c = load i32, ptr %i.b, align 4
  %i.d = or i32 %i.c, 1073741824
  store i32 %i.d, ptr %i.b, align 4
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !57   ; 2 uses
  %i.f = load i32, ptr %i.e, align 4
  %i.g = or i32 %i.f, -2147483648
  store i32 %i.g, ptr %i.e, align 4
  %i.h = getelementptr i8, ptr %0, i64 32         ; 4 uses
  %i.i = getelementptr i8, ptr %0, i64 16         ; 3 uses
  %i.j = getelementptr i8, ptr %0, i64 64         ; 3 uses
  %.val4156 = load i32, ptr %i.i, align 8, !tbaa !63 ; 3 uses
  %.val4257 = load ptr, ptr %i.j, align 8, !tbaa !55 ; 4 uses
  %i.k = getelementptr i8, ptr %.val4257, i64 4
  %.val42.val58 = load i32, ptr %i.k, align 4, !tbaa !44
  %i.l = sub nsw i32 %.val42.val58, %.val4156     ; 3 uses
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %bb.a
  %.val84 = load ptr, ptr %i.h, align 8, !tbaa !50
  %.not85 = icmp eq ptr %.val84, null
  br i1 %.not85, label %.critedge, label %.lr.ph88

.lr.ph:                                           ; preds = %.lr.ph88
  %.val = load ptr, ptr %i.h, align 8, !tbaa !50
  %.not = icmp eq ptr %.val, null
  br i1 %.not, label %.critedge, label %.lr.ph88, !llvm.loop !131

.lr.ph88:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %.val426087 = phi ptr [ %.val42, %.lr.ph ], [ %.val4257, %.lr.ph.preheader ]
  %indvars.iv86 = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.n = getelementptr i8, ptr %.val426087, i64 8
  %.val33.val = load ptr, ptr %i.n, align 8, !tbaa !24
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %.val33.val, i64 %indvars.iv86
  %i.p = load i32, ptr %i.o, align 4, !tbaa !45
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !57
  %i.r = sext i32 %i.p to i64                     ; 2 uses
  %i.s = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.r ; 2 uses
  %i.t = load i32, ptr %i.s, align 4
  %i.u = or i32 %i.t, 1073741824
  store i32 %i.u, ptr %i.s, align 4
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !57
  %i.w = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.r ; 2 uses
  %i.x = load i32, ptr %i.w, align 4
  %i.y = or i32 %i.x, -2147483648
  store i32 %i.y, ptr %i.w, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv86, 1 ; 2 uses
  %.val41 = load i32, ptr %i.i, align 8, !tbaa !63 ; 3 uses
  %.val42 = load ptr, ptr %i.j, align 8, !tbaa !55 ; 4 uses
  %i.z = getelementptr i8, ptr %.val42, i64 4
  %.val42.val = load i32, ptr %i.z, align 4, !tbaa !44
  %i.aa = sub nsw i32 %.val42.val, %.val41        ; 3 uses
  %i.ab = sext i32 %i.aa to i64
  %i.ac = icmp slt i64 %indvars.iv.next, %i.ab
  br i1 %i.ac, label %.lr.ph, label %..critedge.loopexit_crit_edge, !llvm.loop !131

..critedge.loopexit_crit_edge:                    ; preds = %.lr.ph88
  br label %.critedge, !llvm.loop !131

.critedge:                                        ; preds = %.lr.ph, %.lr.ph.preheader, %..critedge.loopexit_crit_edge, %bb.a
  %.val.i81 = phi ptr [ %.val4257, %bb.a ], [ %.val4257, %.lr.ph.preheader ], [ %.val42, %..critedge.loopexit_crit_edge ], [ %.val42, %.lr.ph ]
  %.val3763 = phi i32 [ %.val4156, %bb.a ], [ %.val4156, %.lr.ph.preheader ], [ %.val41, %..critedge.loopexit_crit_edge ], [ %.val41, %.lr.ph ]
  %.lcssa = phi i32 [ %i.l, %bb.a ], [ %i.l, %.lr.ph.preheader ], [ %i.aa, %..critedge.loopexit_crit_edge ], [ %i.aa, %.lr.ph ] ; 6 uses
  %i.ad = getelementptr i8, ptr %0, i64 72        ; 2 uses
  %.val3864 = load ptr, ptr %i.ad, align 8, !tbaa !56 ; 2 uses
  %i.ae = getelementptr i8, ptr %.val3864, i64 4
  %.val38.val65 = load i32, ptr %i.ae, align 4, !tbaa !44 ; 3 uses
  %i.af = icmp sgt i32 %.val38.val65, %.val3763
  br i1 %i.af, label %.lr.ph69.preheader, label %.critedge2

.lr.ph69.preheader:                               ; preds = %.critedge
  %.val3594 = load ptr, ptr %i.h, align 8, !tbaa !50 ; 2 uses
  %.not3195 = icmp eq ptr %.val3594, null
  br i1 %.not3195, label %.critedge2.loopexit, label %.lr.ph99

.lr.ph69:                                         ; preds = %.lr.ph99
  %.val35 = load ptr, ptr %i.h, align 8, !tbaa !50 ; 2 uses
  %.not31 = icmp eq ptr %.val35, null
  br i1 %.not31, label %.critedge2.loopexit, label %.lr.ph99, !llvm.loop !132

.lr.ph99:                                         ; preds = %.lr.ph69.preheader, %.lr.ph69
  %.val3598 = phi ptr [ %.val35, %.lr.ph69 ], [ %.val3594, %.lr.ph69.preheader ]
  %.val386797 = phi ptr [ %.val38, %.lr.ph69 ], [ %.val3864, %.lr.ph69.preheader ]
  %indvars.iv7496 = phi i64 [ %indvars.iv.next75, %.lr.ph69 ], [ 0, %.lr.ph69.preheader ] ; 4 uses
  %.sroa.5.099 = phi i32 [ %spec.select85, %.lr.ph69 ], [ %.lcssa, %.lr.ph69.preheader ] ; 2 uses
  %.sroa.0.098 = phi i32 [ %spec.select, %.lr.ph69 ], [ %.lcssa, %.lr.ph69.preheader ] ; 2 uses
  %i.ag = getelementptr i8, ptr %.val386797, i64 8
  %.val36.val = load ptr, ptr %i.ag, align 8, !tbaa !24
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %.val36.val, i64 %indvars.iv7496
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !45
  %i.aj = sext i32 %i.ai to i64
  %i.ak = getelementptr inbounds [12 x i8], ptr %.val3598, i64 %i.aj ; 2 uses
  %i.al = load i64, ptr %i.ak, align 4
  %i.am = and i64 %i.al, 536870911
  %i.an = sub nsw i64 0, %i.am
  %i.ao = getelementptr inbounds [12 x i8], ptr %i.ak, i64 %i.an
  %i.ap = trunc nuw nsw i64 %indvars.iv7496 to i32
  %i.aq = and i32 %i.ap, 1
  %i.ar = tail call i32 @Gia_ManEquivSetColor_rec(ptr noundef nonnull %0, ptr noundef nonnull %i.ao, i32 noundef %i.aq)
  %i.as = and i64 %indvars.iv7496, 1
  %.sroa.idx.not = icmp eq i64 %i.as, 0           ; 3 uses
  %.sroa.speculated = select i1 %.sroa.idx.not, i32 %.sroa.0.098, i32 %.sroa.5.099
  %i.at = add nsw i32 %.sroa.speculated, %i.ar    ; 2 uses
  %spec.select = select i1 %.sroa.idx.not, i32 %i.at, i32 %.sroa.0.098 ; 3 uses
  %spec.select85 = select i1 %.sroa.idx.not, i32 %.sroa.5.099, i32 %i.at ; 3 uses
  %indvars.iv.next75 = add nuw nsw i64 %indvars.iv7496, 1 ; 2 uses
  %.val37 = load i32, ptr %i.i, align 8, !tbaa !63
  %.val38 = load ptr, ptr %i.ad, align 8, !tbaa !56 ; 2 uses
  %i.au = getelementptr i8, ptr %.val38, i64 4
  %.val38.val = load i32, ptr %i.au, align 4, !tbaa !44 ; 3 uses
  %i.av = sub nsw i32 %.val38.val, %.val37
  %i.aw = sext i32 %i.av to i64
  %i.ax = icmp slt i64 %indvars.iv.next75, %i.aw
  br i1 %i.ax, label %.lr.ph69, label %..critedge2.loopexit_crit_edge, !llvm.loop !132

..critedge2.loopexit_crit_edge:                   ; preds = %.lr.ph99
  br label %.critedge2.loopexit, !llvm.loop !132

.critedge2.loopexit:                              ; preds = %.lr.ph69, %..critedge2.loopexit_crit_edge, %.lr.ph69.preheader
  %.val38.val.lcssa.ph.a = phi i32 [ %.lcssa, %.lr.ph69.preheader ], [ %spec.select, %..critedge2.loopexit_crit_edge ], [ %spec.select, %.lr.ph69 ]
  %.sroa.5.2 = phi i32 [ %.lcssa, %.lr.ph69.preheader ], [ %spec.select85, %..critedge2.loopexit_crit_edge ], [ %spec.select85, %.lr.ph69 ]
  %.val38.val.lcssa.ph = phi i32 [ %.val38.val65, %.lr.ph69.preheader ], [ %.val38.val, %..critedge2.loopexit_crit_edge ], [ %.val38.val, %.lr.ph69 ]
  %.val.i.pre = load ptr, ptr %i.j, align 8, !tbaa !55
  br label %.critedge2

.critedge2:                                       ; preds = %.critedge2.loopexit, %.critedge
  %.val.i = phi ptr [ %.val.i.pre, %.critedge2.loopexit ], [ %.val.i81, %.critedge ]
  %i.ay = phi i32 [ %.val38.val.lcssa.ph.a, %.critedge2.loopexit ], [ %.lcssa, %.critedge ] ; 2 uses
  %.sroa.5.1 = phi i32 [ %.sroa.5.2, %.critedge2.loopexit ], [ %.lcssa, %.critedge ] ; 3 uses
  %.val38.val.lcssa = phi i32 [ %.val38.val.lcssa.ph, %.critedge2.loopexit ], [ %.val38.val65, %.critedge ]
  %i.az = getelementptr i8, ptr %.val.i, i64 4
  %.val.val.i = load i32, ptr %i.az, align 4, !tbaa !44 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !42
  %i.bc = add i32 %.val.val.i, %.val38.val.lcssa
  %i.bd = xor i32 %i.bc, -1
  %i.be = add i32 %i.bb, %.val.val.i
  %i.bf = add i32 %i.be, %i.bd                    ; 3 uses
  %i.bg = sub nsw i32 %i.bf, %i.ay                ; 3 uses
  %i.bh = sub nsw i32 %i.bf, %.sroa.5.1           ; 2 uses
  %.not32 = icmp eq i32 %1, 0
  br i1 %.not32, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.critedge2
  %i.bi = sub i32 %.sroa.5.1, %i.bg
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef 1, ptr noundef nonnull @.str.12, i32 noundef %i.bf, i32 noundef %i.ay, i32 noundef %.sroa.5.1, i32 noundef %i.bg, i32 noundef %i.bh, i32 noundef %i.bi)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.critedge2
  %i.bj = add nsw i32 %i.bg, %i.bh
  %i.bk = sdiv i32 %i.bj, 2
  ret i32 %i.bk
}

declare void @Gia_ManSetRegNum(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define ptr @Gia_MakeRandomChoice(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 200
  %.val16 = load ptr, ptr %i.b, align 8, !tbaa !58
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.018 = phi i32 [ 0, %.lr.ph ], [ %i.c, %bb.b ]
  %.01317 = phi i32 [ %1, %.lr.ph ], [ %i.f, %bb.b ]
  %i.c = add nuw nsw i32 %.018, 1                 ; 2 uses
  %i.d = zext nneg i32 %.01317 to i64
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %.val16, i64 %i.d
  %i.f = load i32, ptr %i.e, align 4, !tbaa !45   ; 2 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %bb.b, label %._crit_edge, !llvm.loop !5

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.c, %bb.b ]
  %i.h = tail call i32 @rand() #32
  %i.i = srem i32 %i.h, %.0.lcssa                 ; 2 uses
  %i.j = icmp slt i32 %1, 1
  %i.k = icmp eq i32 %i.i, 0
  %or.cond19 = select i1 %i.j, i1 true, i1 %i.k
  br i1 %or.cond19, label %._crit_edge24, label %.lr.ph23

.lr.ph23:                                         ; preds = %._crit_edge
  %i.l = getelementptr i8, ptr %0, i64 200
  %.val15 = load ptr, ptr %i.l, align 8, !tbaa !58
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph23, %bb.c
  %.121 = phi i32 [ 0, %.lr.ph23 ], [ %i.m, %bb.c ]
  %.11420 = phi i32 [ %1, %.lr.ph23 ], [ %i.p, %bb.c ]
  %i.m = add nuw nsw i32 %.121, 1                 ; 2 uses
  %i.n = zext nneg i32 %.11420 to i64
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %.val15, i64 %i.n
  %i.p = load i32, ptr %i.o, align 4, !tbaa !45   ; 3 uses
  %i.q = icmp slt i32 %i.p, 1
  %i.r = icmp eq i32 %i.m, %i.i
  %or.cond = select i1 %i.q, i1 true, i1 %i.r
  br i1 %or.cond, label %._crit_edge24, label %bb.c, !llvm.loop !6

._crit_edge24:                                    ; preds = %bb.c, %._crit_edge
  %.114.lcssa = phi i32 [ %1, %._crit_edge ], [ %i.p, %bb.c ]
  %i.s = getelementptr i8, ptr %0, i64 32
  %.val = load ptr, ptr %i.s, align 8, !tbaa !50
  %i.t = sext i32 %.114.lcssa to i64
  %i.u = getelementptr inbounds [12 x i8], ptr %.val, i64 %i.t
  ret ptr %i.u
}

; Function Attrs: nounwind
declare i32 @rand() local_unnamed_addr #16

; Function Attrs: nounwind uwtable
define void @Gia_ManEquivReduce2_rec(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !52
  %.not = icmp eq i32 %i.b, -1
  br i1 %.not, label %bb.b, label %common.ret63

bb.b:                                             ; preds = %bb.a
  %.not41 = icmp eq i32 %4, 0
  br i1 %.not41, label %Gia_ManEquivRepr.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr i8, ptr %1, i64 32         ; 3 uses
  %.val24.i = load ptr, ptr %i.c, align 8, !tbaa !50 ; 3 uses
  %i.d = ptrtoint ptr %2 to i64
  %i.e = ptrtoint ptr %.val24.i to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 12
  %i.h = getelementptr i8, ptr %1, i64 192
  %.val29.i = load ptr, ptr %i.h, align 8, !tbaa !57
  %i.i = shl i64 %i.g, 32
  %i.j = ashr exact i64 %i.i, 30
  %i.k = getelementptr inbounds i8, ptr %.val29.i, i64 %i.j
  %i.l = load i32, ptr %i.k, align 4
  %i.m = and i32 %i.l, 268435455                  ; 8 uses
  %i.n = icmp eq i32 %i.m, 268435455
  %.not42 = icmp eq ptr %.val24.i, null
  %or.cond = or i1 %.not42, %i.n
  br i1 %or.cond, label %Gia_ManEquivRepr.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not43 = icmp eq ptr %3, null
  br i1 %.not43, label %.split38, label %.split

.split:                                           ; preds = %bb.d
  %i.o = getelementptr i8, ptr %3, i64 8
  %.val45 = load ptr, ptr %i.o, align 8, !tbaa !24
  %i.p = zext nneg i32 %i.m to i64
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %.val45, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !45
  br label %bb.g

.split38:                                         ; preds = %bb.d
  %.not50 = icmp eq i32 %i.m, 0                   ; 2 uses
  br i1 %.not50, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.split38
  %i.s = getelementptr i8, ptr %1, i64 200
  %.val16.i = load ptr, ptr %i.s, align 8, !tbaa !58
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i
  %.018.i = phi i32 [ 0, %.lr.ph.i ], [ %i.t, %bb.e ]
  %.01317.i = phi i32 [ %i.m, %.lr.ph.i ], [ %i.w, %bb.e ]
  %i.t = add nuw nsw i32 %.018.i, 1               ; 2 uses
  %i.u = zext nneg i32 %.01317.i to i64
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %.val16.i, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !45   ; 2 uses
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %bb.e, label %._crit_edge.i, !llvm.loop !5

._crit_edge.i:                                    ; preds = %bb.e, %.split38
  %.0.lcssa.i = phi i32 [ 0, %.split38 ], [ %i.t, %bb.e ]
  %i.y = tail call i32 @rand() #32
  %i.z = srem i32 %i.y, %.0.lcssa.i               ; 2 uses
  %i.aa = icmp eq i32 %i.z, 0
  %or.cond19.i = select i1 %.not50, i1 true, i1 %i.aa
  br i1 %or.cond19.i, label %Gia_MakeRandomChoice.exit, label %.lr.ph23.i

.lr.ph23.i:                                       ; preds = %._crit_edge.i
  %i.ab = getelementptr i8, ptr %1, i64 200
  %.val15.i = load ptr, ptr %i.ab, align 8, !tbaa !58
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph23.i
  %.121.i = phi i32 [ 0, %.lr.ph23.i ], [ %i.ac, %bb.f ]
  %.11420.i = phi i32 [ %i.m, %.lr.ph23.i ], [ %i.af, %bb.f ]
  %i.ac = add nuw nsw i32 %.121.i, 1              ; 2 uses
  %i.ad = zext nneg i32 %.11420.i to i64
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %.val15.i, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !45 ; 3 uses
  %i.ag = icmp slt i32 %i.af, 1
  %i.ah = icmp eq i32 %i.ac, %i.z
  %or.cond.i = select i1 %i.ag, i1 true, i1 %i.ah
  br i1 %or.cond.i, label %Gia_MakeRandomChoice.exit, label %bb.f, !llvm.loop !6

Gia_MakeRandomChoice.exit:                        ; preds = %bb.f, %._crit_edge.i
  %.114.lcssa.i = phi i32 [ %i.m, %._crit_edge.i ], [ %i.af, %bb.f ]
  %.val.i = load ptr, ptr %i.c, align 8, !tbaa !50
  br label %bb.g

bb.g:                                             ; preds = %Gia_MakeRandomChoice.exit, %.split
  %.114.lcssa.i.sink = phi i32 [ %.114.lcssa.i, %Gia_MakeRandomChoice.exit ], [ %i.r, %.split ]
  %.val.i.sink = phi ptr [ %.val.i, %Gia_MakeRandomChoice.exit ], [ %.val24.i, %.split ]
  %.sink58 = phi ptr [ null, %Gia_MakeRandomChoice.exit ], [ %3, %.split ]
  %i.ai = sext i32 %.114.lcssa.i.sink to i64
  %i.aj = getelementptr inbounds [12 x i8], ptr %.val.i.sink, i64 %i.ai ; 3 uses
  tail call void @Gia_ManEquivReduce2_rec(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %i.aj, ptr noundef %.sink58, i32 noundef 0)
  %.not53 = icmp eq i32 %i.m, 0
  br i1 %.not53, label %common.ret63, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g
  %.val = load ptr, ptr %i.c, align 8, !tbaa !50
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = ptrtoint ptr %i.aj to i64               ; 2 uses
  %i.am = and i64 %i.al, -2
  %i.an = inttoptr i64 %i.am to ptr
  %i.ao = trunc i64 %i.al to i32
  %i.ap = and i32 %i.ao, 1
  %i.aq = getelementptr i8, ptr %1, i64 200
  %.val47 = load ptr, ptr %i.aq, align 8, !tbaa !58
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.h
  %.052 = phi i32 [ %i.m, %.lr.ph ], [ %i.bl, %bb.h ]
  %i.ar = zext nneg i32 %.052 to i64              ; 2 uses
  %i.as = getelementptr inbounds nuw [12 x i8], ptr %.val, i64 %i.ar ; 2 uses
  %i.at = load i32, ptr %i.ak, align 4, !tbaa !52
  %i.au = load i64, ptr %i.an, align 4
  %i.av = lshr i64 %i.au, 63
  %i.aw = trunc nuw nsw i64 %i.av to i32
  %i.ax = ptrtoint ptr %i.as to i64               ; 2 uses
  %i.ay = and i64 %i.ax, -2
  %i.az = inttoptr i64 %i.ay to ptr
  %i.ba = load i64, ptr %i.az, align 4
  %i.bb = lshr i64 %i.ba, 63
  %i.bc = trunc nuw nsw i64 %i.bb to i32
  %i.bd = trunc i64 %i.ax to i32
  %i.be = and i32 %i.bd, 1
  %i.bf = xor i32 %i.at, %i.ap
  %i.bg = xor i32 %i.bf, %i.aw
  %i.bh = xor i32 %i.bg, %i.be
  %i.bi = xor i32 %i.bh, %i.bc
  %i.bj = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store i32 %i.bi, ptr %i.bj, align 4, !tbaa !52
end_hunk_0
