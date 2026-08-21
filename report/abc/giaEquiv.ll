Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/giaEquiv?download=true
inline.NumInlined: 1043
inline.NumDeleted: 101
loop-unroll.NumRuntimeUnrolled: 31
loop-unroll.NumUnrolled: 31
begin_hunk_0_@Gia_ManEquivReduce:bb.a
.critedge:                                        ; preds = %.critedge.loopexit, %.lr.ph166, %bb.z
  %.3.lcssa = phi i32 [ 0, %bb.z ], [ 0, %.lr.ph166 ], [ %i.dg, %.critedge.loopexit ]
  %i.dh = icmp eq i32 %.3.lcssa, %i.cz
  br i1 %i.dh, label %.critedge.thread, label %bb.aa

.critedge.thread:                                 ; preds = %Gia_ObjReprObj.exit.thread, %.critedge
  %i.di = tail call ptr @Gia_ManDup(ptr noundef nonnull %0) #32
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
  %i.dj = tail call i32 @Gia_ManEquivSetColors(ptr noundef nonnull %0, i32 noundef %4) ; 0 uses
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.val = load i32, ptr %i.cy, align 8, !tbaa !14
  %i.dk = tail call ptr @Gia_ManStart(i32 noundef %.val) #32 ; 9 uses
  %i.dl = load ptr, ptr %0, align 8, !tbaa !48    ; 3 uses
  %.not.i148 = icmp eq ptr %i.dl, null
  br i1 %.not.i148, label %Abc_UtilStrsav.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dm = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.dl) #34
  %i.dn = add i64 %i.dm, 1
  %i.do = tail call noalias ptr @malloc(i64 noundef %i.dn) #33 ; 2 uses
  %i.dp = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.do, ptr noundef nonnull readonly dereferenceable(1) %i.dl) #32 ; 0 uses
  br label %Abc_UtilStrsav.exit

Abc_UtilStrsav.exit:                              ; preds = %bb.ae, %bb.af
  %i.dq = phi ptr [ %i.do, %bb.af ], [ null, %bb.ae ]
  store ptr %i.dq, ptr %i.dk, align 8, !tbaa !48
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !47 ; 3 uses
  %.not.i149 = icmp eq ptr %i.ds, null
  br i1 %.not.i149, label %Abc_UtilStrsav.exit150, label %bb.ag

bb.ag:                                            ; preds = %Abc_UtilStrsav.exit
  %i.dt = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.ds) #34
  %i.du = add i64 %i.dt, 1
  %i.dv = tail call noalias ptr @malloc(i64 noundef %i.du) #33 ; 2 uses
  %i.dw = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.dv, ptr noundef nonnull readonly dereferenceable(1) %i.ds) #32 ; 0 uses
  br label %Abc_UtilStrsav.exit150

Abc_UtilStrsav.exit150:                           ; preds = %Abc_UtilStrsav.exit, %bb.ag
  %i.dx = phi ptr [ %i.dv, %bb.ag ], [ null, %Abc_UtilStrsav.exit ]
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  store ptr %i.dx, ptr %i.dy, align 8, !tbaa !47
  tail call void @Gia_ManFillValue(ptr noundef nonnull %0) #32
  %i.dz = getelementptr i8, ptr %0, i64 32        ; 5 uses
  %.val136 = load ptr, ptr %i.dz, align 8, !tbaa !41
  %i.ea = getelementptr inbounds nuw i8, ptr %.val136, i64 8
  store i32 0, ptr %i.ea, align 4, !tbaa !42
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !49 ; 2 uses
  %i.ed = getelementptr i8, ptr %i.ec, i64 4
  %.val135176 = load i32, ptr %i.ed, align 4, !tbaa !33
  %i.ee = icmp sgt i32 %.val135176, 0
  br i1 %i.ee, label %.lr.ph178, label %.critedge2

.lr.ph178:                                        ; preds = %Abc_UtilStrsav.exit150, %bb.ah
  %indvars.iv201 = phi i64 [ %indvars.iv.next202, %bb.ah ], [ 0, %Abc_UtilStrsav.exit150 ] ; 2 uses
  %i.ef = phi ptr [ %i.en, %bb.ah ], [ %i.ec, %Abc_UtilStrsav.exit150 ]
  %.val137 = load ptr, ptr %i.dz, align 8, !tbaa !41 ; 2 uses
  %.not122 = icmp eq ptr %.val137, null
  br i1 %.not122, label %.critedge2, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph178
  %i.eg = getelementptr i8, ptr %i.ef, i64 8
  %.val138.val = load ptr, ptr %i.eg, align 8, !tbaa !11
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %.val138.val, i64 %indvars.iv201
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !34
  %i.ej = sext i32 %i.ei to i64
  %i.ek = getelementptr inbounds [12 x i8], ptr %.val137, i64 %i.ej
  %i.el = tail call fastcc i32 @Gia_ManAppendCi(ptr noundef nonnull %i.dk)
  %i.em = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  store i32 %i.el, ptr %i.em, align 4, !tbaa !42
  %indvars.iv.next202 = add nuw nsw i64 %indvars.iv201, 1 ; 2 uses
  %i.en = load ptr, ptr %i.eb, align 8, !tbaa !49 ; 2 uses
  %i.eo = getelementptr i8, ptr %i.en, i64 4
  %.val135 = load i32, ptr %i.eo, align 4, !tbaa !33
  %i.ep = sext i32 %.val135 to i64
  %i.eq = icmp slt i64 %indvars.iv.next202, %i.ep
  br i1 %i.eq, label %.lr.ph178, label %.critedge2, !llvm.loop !113

.critedge2:                                       ; preds = %.lr.ph178, %bb.ah, %Abc_UtilStrsav.exit150
  tail call void @Gia_ManHashAlloc(ptr noundef nonnull %i.dk) #32
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !52 ; 3 uses
  %i.et = getelementptr i8, ptr %i.es, i64 4
  %.val134180 = load i32, ptr %i.et, align 4, !tbaa !33 ; 2 uses
  %i.eu = icmp sgt i32 %.val134180, 0
  br i1 %i.eu, label %.lr.ph182.preheader, label %.critedge6

.lr.ph182.preheader:                              ; preds = %.critedge2
  %.val141231 = load ptr, ptr %i.dz, align 8, !tbaa !41 ; 2 uses
  %.not123232 = icmp eq ptr %.val141231, null
  br i1 %.not123232, label %.critedge4, label %.lr.ph235

.lr.ph182:                                        ; preds = %.lr.ph235
  %.val141 = load ptr, ptr %i.dz, align 8, !tbaa !41 ; 2 uses
  %.not123 = icmp eq ptr %.val141, null
  br i1 %.not123, label %.critedge4, label %.lr.ph235, !llvm.loop !114

.lr.ph235:                                        ; preds = %.lr.ph182.preheader, %.lr.ph182
  %.val141234 = phi ptr [ %.val141, %.lr.ph182 ], [ %.val141231, %.lr.ph182.preheader ]
  %i.ev = phi ptr [ %i.ff, %.lr.ph182 ], [ %i.es, %.lr.ph182.preheader ]
  %indvars.iv204233 = phi i64 [ %indvars.iv.next205, %.lr.ph182 ], [ 0, %.lr.ph182.preheader ] ; 2 uses
  %i.ew = getelementptr i8, ptr %i.ev, i64 8
  %.val142.val = load ptr, ptr %i.ew, align 8, !tbaa !11
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %.val142.val, i64 %indvars.iv204233
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !34
  %i.ez = sext i32 %i.ey to i64
  %i.fa = getelementptr inbounds [12 x i8], ptr %.val141234, i64 %i.ez ; 2 uses
  %i.fb = load i64, ptr %i.fa, align 4
  %i.fc = and i64 %i.fb, 536870911
  %i.fd = sub nsw i64 0, %i.fc
  %i.fe = getelementptr inbounds [12 x i8], ptr %i.fa, i64 %i.fd
  tail call void @Gia_ManEquivReduce_rec(ptr noundef nonnull %i.dk, ptr noundef nonnull %0, ptr noundef nonnull %i.fe, i32 noundef %1, i32 noundef %2)
  %indvars.iv.next205 = add nuw nsw i64 %indvars.iv204233, 1 ; 2 uses
  %i.ff = load ptr, ptr %i.er, align 8, !tbaa !52 ; 4 uses
  %i.fg = getelementptr i8, ptr %i.ff, i64 4
  %.val134 = load i32, ptr %i.fg, align 4, !tbaa !33 ; 3 uses
  %i.fh = sext i32 %.val134 to i64
  %i.fi = icmp slt i64 %indvars.iv.next205, %i.fh
  br i1 %i.fi, label %.lr.ph182, label %..critedge4_crit_edge, !llvm.loop !114

..critedge4_crit_edge:                            ; preds = %.lr.ph235
  br label %.critedge4, !llvm.loop !114

.critedge4:                                       ; preds = %.lr.ph182, %..critedge4_crit_edge, %.lr.ph182.preheader
  %.val133184.pre = phi i32 [ %.val134180, %.lr.ph182.preheader ], [ %.val134, %..critedge4_crit_edge ], [ %.val134, %.lr.ph182 ]
  %i.fj = phi ptr [ %i.es, %.lr.ph182.preheader ], [ %i.ff, %..critedge4_crit_edge ], [ %i.ff, %.lr.ph182 ]
  %i.fk = icmp sgt i32 %.val133184.pre, 0
  br i1 %i.fk, label %.lr.ph186, label %.critedge6

.lr.ph186:                                        ; preds = %.critedge4, %bb.ai
  %indvars.iv207 = phi i64 [ %indvars.iv.next208, %bb.ai ], [ 0, %.critedge4 ] ; 2 uses
  %i.fl = phi ptr [ %i.gd, %bb.ai ], [ %i.fj, %.critedge4 ]
  %.val139 = load ptr, ptr %i.dz, align 8, !tbaa !41 ; 2 uses
  %.not124 = icmp eq ptr %.val139, null
  br i1 %.not124, label %.critedge6, label %bb.ai

bb.ai:                                            ; preds = %.lr.ph186
  %i.fm = getelementptr i8, ptr %i.fl, i64 8
  %.val140.val = load ptr, ptr %i.fm, align 8, !tbaa !11
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %.val140.val, i64 %indvars.iv207
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !34
  %i.fp = sext i32 %i.fo to i64
  %i.fq = getelementptr inbounds [12 x i8], ptr %.val139, i64 %i.fp ; 3 uses
  %i.fr = load i64, ptr %i.fq, align 4            ; 2 uses
  %i.fs = and i64 %i.fr, 536870911
  %i.ft = sub nsw i64 0, %i.fs
  %i.fu = getelementptr inbounds [12 x i8], ptr %i.fq, i64 %i.ft
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !42
  %i.fx = trunc i64 %i.fr to i32
  %i.fy = lshr i32 %i.fx, 29
  %i.fz = and i32 %i.fy, 1
  %i.ga = xor i32 %i.fz, %i.fw
  %i.gb = tail call fastcc i32 @Gia_ManAppendCo(ptr noundef nonnull %i.dk, i32 noundef %i.ga)
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  store i32 %i.gb, ptr %i.gc, align 4, !tbaa !42
  %indvars.iv.next208 = add nuw nsw i64 %indvars.iv207, 1 ; 2 uses
  %i.gd = load ptr, ptr %i.er, align 8, !tbaa !52 ; 2 uses
  %i.ge = getelementptr i8, ptr %i.gd, i64 4
  %.val133 = load i32, ptr %i.ge, align 4, !tbaa !33
  %i.gf = sext i32 %.val133 to i64
  %i.gg = icmp slt i64 %indvars.iv.next208, %i.gf
  br i1 %i.gg, label %.lr.ph186, label %.critedge6, !llvm.loop !115

.critedge6:                                       ; preds = %.lr.ph186, %bb.ai, %.critedge2, %.critedge4
  tail call void @Gia_ManHashStop(ptr noundef nonnull %i.dk) #32
  %i.gh = getelementptr i8, ptr %0, i64 16
  %.val147 = load i32, ptr %i.gh, align 8, !tbaa !111
  tail call void @Gia_ManSetRegNum(ptr noundef nonnull %i.dk, i32 noundef %.val147) #32
  br label %bb.aj

bb.aj:                                            ; preds = %.critedge6, %.critedge.thread, %bb.y, %bb.w
  %.0106 = phi ptr [ null, %bb.y ], [ %i.di, %.critedge.thread ], [ %i.dk, %.critedge6 ], [ null, %bb.w ]
  ret ptr %.0106
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #15

declare ptr @Gia_ManDup(ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define range(i32 -1073741824, 1073741824) i32 @Gia_ManEquivSetColors(ptr noundef %0, i32 noundef %1) local_unnamed_addr #6 {
bb.a:
  %2 = alloca [2 x i32], align 4                  ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54   ; 2 uses
  %i.c = load i32, ptr %i.b, align 4
  %i.d = or i32 %i.c, 1073741824
  store i32 %i.d, ptr %i.b, align 4
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !54   ; 2 uses
  %i.f = load i32, ptr %i.e, align 4
  %i.g = or i32 %i.f, -2147483648
  store i32 %i.g, ptr %i.e, align 4
  %i.h = getelementptr i8, ptr %0, i64 32         ; 4 uses
  %i.i = getelementptr i8, ptr %0, i64 16         ; 3 uses
  %i.j = getelementptr i8, ptr %0, i64 64         ; 3 uses
  %.val4156 = load i32, ptr %i.i, align 8, !tbaa !111 ; 3 uses
  %.val4257 = load ptr, ptr %i.j, align 8, !tbaa !49 ; 4 uses
  %i.k = getelementptr i8, ptr %.val4257, i64 4
  %.val42.val58 = load i32, ptr %i.k, align 4, !tbaa !33
  %i.l = sub nsw i32 %.val42.val58, %.val4156     ; 3 uses
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %bb.a
  %.val84 = load ptr, ptr %i.h, align 8, !tbaa !41
  %.not85 = icmp eq ptr %.val84, null
  br i1 %.not85, label %.critedge, label %.lr.ph88

.lr.ph:                                           ; preds = %.lr.ph88
  %.val = load ptr, ptr %i.h, align 8, !tbaa !41
  %.not = icmp eq ptr %.val, null
  br i1 %.not, label %.critedge, label %.lr.ph88, !llvm.loop !116

.lr.ph88:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %.val426087 = phi ptr [ %.val42, %.lr.ph ], [ %.val4257, %.lr.ph.preheader ]
  %indvars.iv86 = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.n = getelementptr i8, ptr %.val426087, i64 8
  %.val33.val = load ptr, ptr %i.n, align 8, !tbaa !11
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %.val33.val, i64 %indvars.iv86
  %i.p = load i32, ptr %i.o, align 4, !tbaa !34
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !54
  %i.r = sext i32 %i.p to i64                     ; 2 uses
  %i.s = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.r ; 2 uses
  %i.t = load i32, ptr %i.s, align 4
  %i.u = or i32 %i.t, 1073741824
  store i32 %i.u, ptr %i.s, align 4
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !54
  %i.w = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.r ; 2 uses
  %i.x = load i32, ptr %i.w, align 4
  %i.y = or i32 %i.x, -2147483648
  store i32 %i.y, ptr %i.w, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv86, 1 ; 2 uses
  %.val41 = load i32, ptr %i.i, align 8, !tbaa !111 ; 3 uses
  %.val42 = load ptr, ptr %i.j, align 8, !tbaa !49 ; 4 uses
  %i.z = getelementptr i8, ptr %.val42, i64 4
  %.val42.val = load i32, ptr %i.z, align 4, !tbaa !33
  %i.aa = sub nsw i32 %.val42.val, %.val41        ; 3 uses
  %i.ab = sext i32 %i.aa to i64
  %i.ac = icmp slt i64 %indvars.iv.next, %i.ab
  br i1 %i.ac, label %.lr.ph, label %..critedge.loopexit_crit_edge, !llvm.loop !116

..critedge.loopexit_crit_edge:                    ; preds = %.lr.ph88
  br label %.critedge, !llvm.loop !116

.critedge:                                        ; preds = %.lr.ph, %.lr.ph.preheader, %..critedge.loopexit_crit_edge, %bb.a
  %.val.i81 = phi ptr [ %.val4257, %bb.a ], [ %.val4257, %.lr.ph.preheader ], [ %.val42, %..critedge.loopexit_crit_edge ], [ %.val42, %.lr.ph ]
  %.val3763 = phi i32 [ %.val4156, %bb.a ], [ %.val4156, %.lr.ph.preheader ], [ %.val41, %..critedge.loopexit_crit_edge ], [ %.val41, %.lr.ph ]
  %.lcssa = phi i32 [ %i.l, %bb.a ], [ %i.l, %.lr.ph.preheader ], [ %i.aa, %..critedge.loopexit_crit_edge ], [ %i.aa, %.lr.ph ] ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  store i32 %.lcssa, ptr %i.ad, align 4, !tbaa !34
  store i32 %.lcssa, ptr %2, align 4, !tbaa !34
  %i.ae = getelementptr i8, ptr %0, i64 72        ; 2 uses
  %.val3864 = load ptr, ptr %i.ae, align 8, !tbaa !52 ; 2 uses
  %i.af = getelementptr i8, ptr %.val3864, i64 4
  %.val38.val65 = load i32, ptr %i.af, align 4, !tbaa !33 ; 3 uses
  %i.ag = icmp sgt i32 %.val38.val65, %.val3763
  br i1 %i.ag, label %.lr.ph69.preheader, label %.critedge2

.lr.ph69.preheader:                               ; preds = %.critedge
  %.val3594 = load ptr, ptr %i.h, align 8, !tbaa !41 ; 2 uses
  %.not3195 = icmp eq ptr %.val3594, null
  br i1 %.not3195, label %.critedge2.loopexit, label %.lr.ph99

.lr.ph69:                                         ; preds = %.lr.ph99
  %.val35 = load ptr, ptr %i.h, align 8, !tbaa !41 ; 2 uses
  %.not31 = icmp eq ptr %.val35, null
  br i1 %.not31, label %.critedge2.loopexit, label %.lr.ph99, !llvm.loop !117

.lr.ph99:                                         ; preds = %.lr.ph69.preheader, %.lr.ph69
  %.val3598 = phi ptr [ %.val35, %.lr.ph69 ], [ %.val3594, %.lr.ph69.preheader ]
  %.val386797 = phi ptr [ %.val38, %.lr.ph69 ], [ %.val3864, %.lr.ph69.preheader ]
  %indvars.iv7496 = phi i64 [ %indvars.iv.next75, %.lr.ph69 ], [ 0, %.lr.ph69.preheader ] ; 4 uses
  %i.ah = getelementptr i8, ptr %.val386797, i64 8
  %.val36.val = load ptr, ptr %i.ah, align 8, !tbaa !11
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %.val36.val, i64 %indvars.iv7496
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !34
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds [12 x i8], ptr %.val3598, i64 %i.ak ; 2 uses
  %i.am = load i64, ptr %i.al, align 4
  %i.an = and i64 %i.am, 536870911
  %i.ao = sub nsw i64 0, %i.an
  %i.ap = getelementptr inbounds [12 x i8], ptr %i.al, i64 %i.ao
  %i.aq = trunc nuw nsw i64 %indvars.iv7496 to i32
  %i.ar = and i32 %i.aq, 1
  %i.as = tail call i32 @Gia_ManEquivSetColor_rec(ptr noundef nonnull %0, ptr noundef nonnull %i.ap, i32 noundef %i.ar)
  %i.at = and i64 %indvars.iv7496, 1
  %3 = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.at ; 2 uses
  %i.au = load i32, ptr %3, align 4, !tbaa !34
  %i.av = add nsw i32 %i.au, %i.as
  store i32 %i.av, ptr %3, align 4, !tbaa !34
  %indvars.iv.next75 = add nuw nsw i64 %indvars.iv7496, 1 ; 2 uses
  %.val37 = load i32, ptr %i.i, align 8, !tbaa !111
  %.val38 = load ptr, ptr %i.ae, align 8, !tbaa !52 ; 2 uses
  %i.aw = getelementptr i8, ptr %.val38, i64 4
  %.val38.val = load i32, ptr %i.aw, align 4, !tbaa !33 ; 3 uses
  %i.ax = sub nsw i32 %.val38.val, %.val37
  %i.ay = sext i32 %i.ax to i64
  %i.az = icmp slt i64 %indvars.iv.next75, %i.ay
  br i1 %i.az, label %.lr.ph69, label %..critedge2.loopexit_crit_edge, !llvm.loop !117

..critedge2.loopexit_crit_edge:                   ; preds = %.lr.ph99
  br label %.critedge2.loopexit, !llvm.loop !117

.critedge2.loopexit:                              ; preds = %.lr.ph69, %..critedge2.loopexit_crit_edge, %.lr.ph69.preheader
  %.val38.val.lcssa.ph = phi i32 [ %.val38.val65, %.lr.ph69.preheader ], [ %.val38.val, %..critedge2.loopexit_crit_edge ], [ %.val38.val, %.lr.ph69 ]
  %.val.i.pre = load ptr, ptr %i.j, align 8, !tbaa !49
  %.pre = load i32, ptr %2, align 4, !tbaa !34
  %.pre83 = load i32, ptr %i.ad, align 4, !tbaa !34
  br label %.critedge2

.critedge2:                                       ; preds = %.critedge2.loopexit, %.critedge
  %i.ba = phi i32 [ %.lcssa, %.critedge ], [ %.pre83, %.critedge2.loopexit ] ; 3 uses
  %i.bb = phi i32 [ %.lcssa, %.critedge ], [ %.pre, %.critedge2.loopexit ] ; 2 uses
  %.val.i = phi ptr [ %.val.i81, %.critedge ], [ %.val.i.pre, %.critedge2.loopexit ]
  %.val38.val.lcssa = phi i32 [ %.val38.val65, %.critedge ], [ %.val38.val.lcssa.ph, %.critedge2.loopexit ]
  %i.bc = getelementptr i8, ptr %.val.i, i64 4
  %.val.val.i = load i32, ptr %i.bc, align 4, !tbaa !33 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !14
  %i.bf = add i32 %.val.val.i, %.val38.val.lcssa
  %i.bg = xor i32 %i.bf, -1
  %i.bh = add i32 %i.be, %.val.val.i
  %i.bi = add i32 %i.bh, %i.bg                    ; 3 uses
  %i.bj = sub nsw i32 %i.bi, %i.bb                ; 3 uses
  %i.bk = sub nsw i32 %i.bi, %i.ba                ; 2 uses
  %.not32 = icmp eq i32 %1, 0
  br i1 %.not32, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.critedge2
  %i.bl = sub i32 %i.ba, %i.bj
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef 1, ptr noundef nonnull @.str.12, i32 noundef %i.bi, i32 noundef %i.bb, i32 noundef %i.ba, i32 noundef %i.bj, i32 noundef %i.bk, i32 noundef %i.bl)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.critedge2
  %i.bm = add nsw i32 %i.bj, %i.bk
  %i.bn = sdiv i32 %i.bm, 2
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  ret i32 %i.bn
}

declare void @Gia_ManSetRegNum(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define ptr @Gia_MakeRandomChoice(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 200
  %.val16 = load ptr, ptr %i.b, align 8, !tbaa !60
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.018 = phi i32 [ 0, %.lr.ph ], [ %i.c, %bb.b ]
  %.01317 = phi i32 [ %1, %.lr.ph ], [ %i.f, %bb.b ]
  %i.c = add nuw nsw i32 %.018, 1                 ; 2 uses
  %i.d = zext nneg i32 %.01317 to i64
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %.val16, i64 %i.d
  %i.f = load i32, ptr %i.e, align 4, !tbaa !34   ; 2 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %bb.b, label %._crit_edge, !llvm.loop !118

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
  %.val15 = load ptr, ptr %i.l, align 8, !tbaa !60
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph23, %bb.c
  %.121 = phi i32 [ 0, %.lr.ph23 ], [ %i.m, %bb.c ]
  %.11420 = phi i32 [ %1, %.lr.ph23 ], [ %i.p, %bb.c ]
  %i.m = add nuw nsw i32 %.121, 1                 ; 2 uses
  %i.n = zext nneg i32 %.11420 to i64
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %.val15, i64 %i.n
  %i.p = load i32, ptr %i.o, align 4, !tbaa !34   ; 3 uses
  %i.q = icmp slt i32 %i.p, 1
  %i.r = icmp eq i32 %i.m, %i.i
  %or.cond = select i1 %i.q, i1 true, i1 %i.r
  br i1 %or.cond, label %._crit_edge24, label %bb.c, !llvm.loop !119

._crit_edge24:                                    ; preds = %bb.c, %._crit_edge
  %.114.lcssa = phi i32 [ %1, %._crit_edge ], [ %i.p, %bb.c ]
  %i.s = getelementptr i8, ptr %0, i64 32
  %.val = load ptr, ptr %i.s, align 8, !tbaa !41
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
  %i.b = load i32, ptr %i.a, align 4, !tbaa !42
  %.not = icmp eq i32 %i.b, -1
  br i1 %.not, label %bb.b, label %common.ret63

bb.b:                                             ; preds = %bb.a
  %.not41 = icmp eq i32 %4, 0
  br i1 %.not41, label %Gia_ManEquivRepr.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr i8, ptr %1, i64 32         ; 3 uses
  %.val24.i = load ptr, ptr %i.c, align 8, !tbaa !41 ; 3 uses
  %i.d = ptrtoint ptr %2 to i64
  %i.e = ptrtoint ptr %.val24.i to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 12
  %i.h = getelementptr i8, ptr %1, i64 192
  %.val29.i = load ptr, ptr %i.h, align 8, !tbaa !54
  %sext31.i = shl i64 %i.g, 32
  %i.i = ashr exact i64 %sext31.i, 30
  %i.j = getelementptr inbounds i8, ptr %.val29.i, i64 %i.i
  %i.k = load i32, ptr %i.j, align 4
  %i.l = and i32 %i.k, 268435455                  ; 8 uses
  %i.m = icmp eq i32 %i.l, 268435455
  %.not42 = icmp eq ptr %.val24.i, null
  %or.cond = or i1 %.not42, %i.m
  br i1 %or.cond, label %Gia_ManEquivRepr.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not43 = icmp eq ptr %3, null
  br i1 %.not43, label %.split38, label %.split

.split:                                           ; preds = %bb.d
  %i.n = getelementptr i8, ptr %3, i64 8
  %.val45 = load ptr, ptr %i.n, align 8, !tbaa !11
  %i.o = zext nneg i32 %i.l to i64
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %.val45, i64 %i.o
  %i.q = load i32, ptr %i.p, align 4, !tbaa !34
  br label %bb.g

.split38:                                         ; preds = %bb.d
  %.not50 = icmp eq i32 %i.l, 0                   ; 2 uses
  br i1 %.not50, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.split38
  %i.r = getelementptr i8, ptr %1, i64 200
  %.val16.i = load ptr, ptr %i.r, align 8, !tbaa !60
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i
  %.018.i = phi i32 [ 0, %.lr.ph.i ], [ %i.s, %bb.e ]
  %.01317.i = phi i32 [ %i.l, %.lr.ph.i ], [ %i.v, %bb.e ]
  %i.s = add nuw nsw i32 %.018.i, 1               ; 2 uses
  %i.t = zext nneg i32 %.01317.i to i64
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %.val16.i, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !34   ; 2 uses
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %bb.e, label %._crit_edge.i, !llvm.loop !118

._crit_edge.i:                                    ; preds = %bb.e, %.split38
  %.0.lcssa.i = phi i32 [ 0, %.split38 ], [ %i.s, %bb.e ]
  %i.x = tail call i32 @rand() #32
  %i.y = srem i32 %i.x, %.0.lcssa.i               ; 2 uses
  %i.z = icmp eq i32 %i.y, 0
  %or.cond19.i = select i1 %.not50, i1 true, i1 %i.z
  br i1 %or.cond19.i, label %Gia_MakeRandomChoice.exit, label %.lr.ph23.i

.lr.ph23.i:                                       ; preds = %._crit_edge.i
  %i.aa = getelementptr i8, ptr %1, i64 200
  %.val15.i = load ptr, ptr %i.aa, align 8, !tbaa !60
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph23.i
  %.121.i = phi i32 [ 0, %.lr.ph23.i ], [ %i.ab, %bb.f ]
  %.11420.i = phi i32 [ %i.l, %.lr.ph23.i ], [ %i.ae, %bb.f ]
  %i.ab = add nuw nsw i32 %.121.i, 1              ; 2 uses
  %i.ac = zext nneg i32 %.11420.i to i64
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %.val15.i, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !34 ; 3 uses
  %i.af = icmp slt i32 %i.ae, 1
  %i.ag = icmp eq i32 %i.ab, %i.y
  %or.cond.i = select i1 %i.af, i1 true, i1 %i.ag
  br i1 %or.cond.i, label %Gia_MakeRandomChoice.exit, label %bb.f, !llvm.loop !119

Gia_MakeRandomChoice.exit:                        ; preds = %bb.f, %._crit_edge.i
  %.114.lcssa.i = phi i32 [ %i.l, %._crit_edge.i ], [ %i.ae, %bb.f ]
  %.val.i = load ptr, ptr %i.c, align 8, !tbaa !41
  br label %bb.g

bb.g:                                             ; preds = %Gia_MakeRandomChoice.exit, %.split
  %.114.lcssa.i.sink = phi i32 [ %.114.lcssa.i, %Gia_MakeRandomChoice.exit ], [ %i.q, %.split ]
  %.val.i.sink = phi ptr [ %.val.i, %Gia_MakeRandomChoice.exit ], [ %.val24.i, %.split ]
  %.sink58 = phi ptr [ null, %Gia_MakeRandomChoice.exit ], [ %3, %.split ]
  %i.ah = sext i32 %.114.lcssa.i.sink to i64
  %i.ai = getelementptr inbounds [12 x i8], ptr %.val.i.sink, i64 %i.ah ; 3 uses
  tail call void @Gia_ManEquivReduce2_rec(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %i.ai, ptr noundef %.sink58, i32 noundef 0)
  %.not53 = icmp eq i32 %i.l, 0
  br i1 %.not53, label %common.ret63, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g
  %.val = load ptr, ptr %i.c, align 8, !tbaa !41
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = ptrtoint ptr %i.ai to i64               ; 2 uses
  %i.al = and i64 %i.ak, -2
  %i.am = inttoptr i64 %i.al to ptr
  %i.an = trunc i64 %i.ak to i32
  %i.ao = and i32 %i.an, 1
  %i.ap = getelementptr i8, ptr %1, i64 200
  %.val47 = load ptr, ptr %i.ap, align 8, !tbaa !60
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.h
  %.052 = phi i32 [ %i.l, %.lr.ph ], [ %i.bk, %bb.h ]
  %i.aq = zext nneg i32 %.052 to i64              ; 2 uses
  %i.ar = getelementptr inbounds nuw [12 x i8], ptr %.val, i64 %i.aq ; 2 uses
  %i.as = load i32, ptr %i.aj, align 4, !tbaa !42
  %i.at = load i64, ptr %i.am, align 4
  %i.au = lshr i64 %i.at, 63
  %i.av = trunc nuw nsw i64 %i.au to i32
  %i.aw = ptrtoint ptr %i.ar to i64               ; 2 uses
  %i.ax = and i64 %i.aw, -2
  %i.ay = inttoptr i64 %i.ax to ptr
  %i.az = load i64, ptr %i.ay, align 4
  %i.ba = lshr i64 %i.az, 63
  %i.bb = trunc nuw nsw i64 %i.ba to i32
  %i.bc = trunc i64 %i.aw to i32
  %i.bd = and i32 %i.bc, 1
  %i.be = xor i32 %i.as, %i.ao
  %i.bf = xor i32 %i.be, %i.av
  %i.bg = xor i32 %i.bf, %i.bd
  %i.bh = xor i32 %i.bg, %i.bb
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store i32 %i.bh, ptr %i.bi, align 4, !tbaa !42
end_hunk_0
