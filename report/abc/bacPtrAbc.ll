inline.NumInlined: 346
inline.NumDeleted: 109
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@Bac_PtrTransformToCba:bb.a
  %i.cq = sext i32 %.val50 to i64
  %i.cr = shl nsw i64 %i.cq, 2                    ; 2 uses
  br i1 %.not9.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cs = call ptr @realloc(ptr noundef nonnull %i.cp, i64 noundef %i.cr) #21
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.ct = call noalias ptr @malloc(i64 noundef %i.cr) #20
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.cu = phi ptr [ %i.cs, %bb.f ], [ %i.ct, %bb.g ]
  store ptr %i.cu, ptr %i.co, align 8, !tbaa !82
  store i32 %.val50, ptr %i.cm, align 8, !tbaa !79
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %bb.h, %Ptr_ManCountNtk.exit
  %i.cv = getelementptr inbounds nuw i8, ptr %i.as, i64 48 ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !79
  %.not.i18.i = icmp slt i32 %i.cw, %.val49
  br i1 %.not.i18.i, label %bb.i, label %Vec_IntGrow.exit20.i

bb.i:                                             ; preds = %Vec_IntGrow.exit.i
  %i.cx = getelementptr inbounds nuw i8, ptr %i.as, i64 56 ; 2 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !82 ; 2 uses
  %.not9.i19.i = icmp eq ptr %i.cy, null
  %i.cz = sext i32 %.val49 to i64
  %i.da = shl nsw i64 %i.cz, 2                    ; 2 uses
  br i1 %.not9.i19.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.db = call ptr @realloc(ptr noundef nonnull %i.cy, i64 noundef %i.da) #21
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.dc = call noalias ptr @malloc(i64 noundef %i.da) #20
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.dd = phi ptr [ %i.db, %bb.j ], [ %i.dc, %bb.k ]
  store ptr %i.dd, ptr %i.cx, align 8, !tbaa !82
  store i32 %.val49, ptr %i.cv, align 8, !tbaa !79
  br label %Vec_IntGrow.exit20.i

Vec_IntGrow.exit20.i:                             ; preds = %bb.l, %Vec_IntGrow.exit.i
  %i.de = getelementptr inbounds nuw i8, ptr %i.as, i64 80 ; 3 uses
  %i.df = load i32, ptr %i.de, align 8, !tbaa !96
  %.not.i21.i = icmp slt i32 %i.df, %.0.lcssa.i
  br i1 %.not.i21.i, label %bb.m, label %Vec_StrGrow.exit.i

bb.m:                                             ; preds = %Vec_IntGrow.exit20.i
  %i.dg = getelementptr inbounds nuw i8, ptr %i.as, i64 88 ; 2 uses
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !89 ; 2 uses
  %.not9.i22.i = icmp eq ptr %i.dh, null
  %i.di = sext i32 %.0.lcssa.i to i64             ; 2 uses
  br i1 %.not9.i22.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dj = call ptr @realloc(ptr noundef nonnull %i.dh, i64 noundef %i.di) #21
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.dk = call noalias ptr @malloc(i64 noundef %i.di) #20
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.dl = phi ptr [ %i.dj, %bb.n ], [ %i.dk, %bb.o ]
  store ptr %i.dl, ptr %i.dg, align 8, !tbaa !89
  store i32 %.0.lcssa.i, ptr %i.de, align 8, !tbaa !96
  br label %Vec_StrGrow.exit.i

Vec_StrGrow.exit.i:                               ; preds = %bb.p, %Vec_IntGrow.exit20.i
  %i.dm = getelementptr inbounds nuw i8, ptr %i.as, i64 96 ; 2 uses
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !79
  %.not.i23.i = icmp slt i32 %i.dn, %.0.lcssa.i
  br i1 %.not.i23.i, label %bb.q, label %Vec_IntGrow.exit25.i

bb.q:                                             ; preds = %Vec_StrGrow.exit.i
  %i.do = getelementptr inbounds nuw i8, ptr %i.as, i64 104 ; 2 uses
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !82 ; 2 uses
  %.not9.i24.i = icmp eq ptr %i.dp, null
  %i.dq = sext i32 %.0.lcssa.i to i64
  %i.dr = shl nsw i64 %i.dq, 2                    ; 2 uses
  br i1 %.not9.i24.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ds = call ptr @realloc(ptr noundef nonnull %i.dp, i64 noundef %i.dr) #21
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.dt = call noalias ptr @malloc(i64 noundef %i.dr) #20
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.du = phi ptr [ %i.ds, %bb.r ], [ %i.dt, %bb.s ]
  store ptr %i.du, ptr %i.do, align 8, !tbaa !82
  store i32 %.0.lcssa.i, ptr %i.dm, align 8, !tbaa !79
  br label %Vec_IntGrow.exit25.i

Vec_IntGrow.exit25.i:                             ; preds = %bb.t, %Vec_StrGrow.exit.i
  %i.dv = load ptr, ptr %i.as, align 8, !tbaa !68 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 24
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !72
  %i.dy = getelementptr i8, ptr %i.dv, i64 16
  %.val17.val.i = load ptr, ptr %i.dy, align 8, !tbaa !80
  %i.dz = call ptr @Abc_NamStr(ptr noundef %.val17.val.i, i32 noundef %i.bc) #19
  %i.ea = call i32 @Abc_NamStrFindOrAdd(ptr noundef %i.dx, ptr noundef %i.dz, ptr noundef nonnull %i.a) #19 ; 0 uses
  %i.eb = load i32, ptr %i.a, align 4, !tbaa !33
  %.not.i60 = icmp eq i32 %i.eb, 0
  br i1 %.not.i60, label %Bac_NtkAlloc.exit, label %bb.u

bb.u:                                             ; preds = %Vec_IntGrow.exit25.i
  %.val.i61 = load ptr, ptr %i.as, align 8, !tbaa !68
  %i.ec = getelementptr i8, ptr %.val.i61, i64 16
  %.val.val.i = load ptr, ptr %i.ec, align 8, !tbaa !80
  %i.ed = call ptr @Abc_NamStr(ptr noundef %.val.val.i, i32 noundef %i.bc) #19
  %i.ee = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.52, ptr noundef %i.ed) ; 0 uses
  br label %Bac_NtkAlloc.exit

Bac_NtkAlloc.exit:                                ; preds = %Vec_IntGrow.exit25.i, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.ef = getelementptr inbounds nuw i8, ptr %i.as, i64 128 ; 2 uses
  %.val.i62 = load i32, ptr %i.de, align 8, !tbaa !96 ; 6 uses
  %i.eg = load i32, ptr %i.ef, align 8, !tbaa !79
  %.not.i.i.i = icmp slt i32 %i.eg, %.val.i62
  br i1 %.not.i.i.i, label %bb.v, label %Vec_IntGrow.exit.i.i

bb.v:                                             ; preds = %Bac_NtkAlloc.exit
  %i.eh = getelementptr inbounds nuw i8, ptr %i.as, i64 136 ; 2 uses
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !82 ; 2 uses
  %.not9.i.i.i = icmp eq ptr %i.ei, null
  %i.ej = sext i32 %.val.i62 to i64
  %i.ek = shl nsw i64 %i.ej, 2                    ; 2 uses
  br i1 %.not9.i.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.el = call ptr @realloc(ptr noundef nonnull %i.ei, i64 noundef %i.ek) #21
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  %i.em = call noalias ptr @malloc(i64 noundef %i.ek) #20
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.en = phi ptr [ %i.el, %bb.w ], [ %i.em, %bb.x ]
  store ptr %i.en, ptr %i.eh, align 8, !tbaa !82
  store i32 %.val.i62, ptr %i.ef, align 8, !tbaa !79
  br label %Vec_IntGrow.exit.i.i

Vec_IntGrow.exit.i.i:                             ; preds = %bb.y, %Bac_NtkAlloc.exit
  %i.eo = icmp sgt i32 %.val.i62, 0
  br i1 %i.eo, label %.lr.ph.i.i, label %Bac_NtkStartNames.exit

.lr.ph.i.i:                                       ; preds = %Vec_IntGrow.exit.i.i
  %i.ep = getelementptr inbounds nuw i8, ptr %i.as, i64 136
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !82
  %i.er = zext nneg i32 %.val.i62 to i64
  %i.es = shl nuw nsw i64 %i.er, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.eq, i8 0, i64 %i.es, i1 false), !tbaa !33
  br label %Bac_NtkStartNames.exit

Bac_NtkStartNames.exit:                           ; preds = %Vec_IntGrow.exit.i.i, %.lr.ph.i.i
  %i.et = getelementptr inbounds nuw i8, ptr %i.as, i64 132
  store i32 %.val.i62, ptr %i.et, align 4, !tbaa !81
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.val54 = load i32, ptr %i.s, align 4, !tbaa !77 ; 3 uses
  %i.eu = sext i32 %.val54 to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.eu
  br i1 %.not.not, label %Bac_ManNtk.exit, label %.critedge.preheader, !llvm.loop !105

Bac_ManNtk.exit65:                                ; preds = %.critedge.preheader, %.critedge
  %indvars.iv88 = phi i64 [ %indvars.iv.next89, %.critedge ], [ 1, %.critedge.preheader ] ; 5 uses
  %i.ev = load ptr, ptr %i.v, align 8, !tbaa !78
  %i.ew = getelementptr inbounds nuw [208 x i8], ptr %i.ev, i64 %indvars.iv88
  %.val = load ptr, ptr %i.b, align 8, !tbaa !34
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %indvars.iv88
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !37
  %i.ez = call i32 @Bac_NtkDeriveFromPtr(ptr noundef nonnull %i.ew, ptr noundef %i.ey, ptr noundef nonnull %i.aj, ptr noundef nonnull %i.an)
  %.not42 = icmp eq i32 %i.ez, 0
  %.val52.pr = load i32, ptr %i.s, align 4, !tbaa !77 ; 3 uses
  br i1 %.not42, label %.critedge2thread-pre-split, label %.critedge

.critedge:                                        ; preds = %Bac_ManNtk.exit65
  %indvars.iv.next89 = add nuw nsw i64 %indvars.iv88, 1 ; 2 uses
  %i.fa = sext i32 %.val52.pr to i64
  %.not41.not = icmp slt i64 %indvars.iv88, %i.fa
  br i1 %.not41.not, label %Bac_ManNtk.exit65, label %.critedge2.loopexit, !llvm.loop !106

.critedge2thread-pre-split:                       ; preds = %Bac_ManNtk.exit65
  %i.fb = trunc nuw nsw i64 %indvars.iv88 to i32
  br label %.critedge2

.critedge2.loopexit:                              ; preds = %.critedge
  %i.fc = trunc nuw i64 %indvars.iv.next89 to i32
  br label %.critedge2

.critedge2:                                       ; preds = %Vec_IntStartFull.exit, %.critedge2.loopexit, %.critedge.preheader, %.critedge2thread-pre-split
  %.177 = phi i32 [ %i.fb, %.critedge2thread-pre-split ], [ 1, %.critedge.preheader ], [ %i.fc, %.critedge2.loopexit ], [ 1, %Vec_IntStartFull.exit ]
  %.val52 = phi i32 [ %.val52.pr, %.critedge2thread-pre-split ], [ %.val54, %.critedge.preheader ], [ %.val52.pr, %.critedge2.loopexit ], [ %.val5478, %Vec_IntStartFull.exit ] ; 2 uses
  %.not43 = icmp sgt i32 %.177, %.val52
  br i1 %.not43, label %bb.at, label %1

1:                                                ; preds = %.critedge2
  %.not35.i = icmp slt i32 %.val52, 1
  br i1 %.not35.i, label %.critedge.i, label %Bac_ManNtk.exit.i66

Bac_ManNtk.exit.i66:                              ; preds = %1, %Bac_NtkFree.exit.i
  %indvars.iv.i67 = phi i64 [ %indvars.iv.next.i69, %Bac_NtkFree.exit.i ], [ 1, %1 ] ; 3 uses
  %i.fd = load ptr, ptr %i.v, align 8, !tbaa !78
  %i.fe = getelementptr inbounds nuw [208 x i8], ptr %i.fd, i64 %indvars.iv.i67 ; 33 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 32
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fe, i64 40 ; 2 uses
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !82 ; 2 uses
  %.not.i.i.i68 = icmp eq ptr %i.fh, null
  br i1 %.not.i.i.i68, label %Vec_IntErase.exit.i.i, label %bb.z

bb.z:                                             ; preds = %Bac_ManNtk.exit.i66
  call void @free(ptr noundef nonnull %i.fh) #19
  store ptr null, ptr %i.fg, align 8, !tbaa !82
  br label %Vec_IntErase.exit.i.i

Vec_IntErase.exit.i.i:                            ; preds = %bb.z, %Bac_ManNtk.exit.i66
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fe, i64 36
  store i32 0, ptr %i.fi, align 4, !tbaa !81
  store i32 0, ptr %i.ff, align 8, !tbaa !79
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fe, i64 48
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fe, i64 56 ; 2 uses
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !82 ; 2 uses
  %.not.i11.i.i = icmp eq ptr %i.fl, null
  br i1 %.not.i11.i.i, label %Vec_IntErase.exit12.i.i, label %bb.aa

bb.aa:                                            ; preds = %Vec_IntErase.exit.i.i
  call void @free(ptr noundef nonnull %i.fl) #19
  store ptr null, ptr %i.fk, align 8, !tbaa !82
  br label %Vec_IntErase.exit12.i.i

Vec_IntErase.exit12.i.i:                          ; preds = %bb.aa, %Vec_IntErase.exit.i.i
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fe, i64 52
  store i32 0, ptr %i.fm, align 4, !tbaa !81
  store i32 0, ptr %i.fj, align 8, !tbaa !79
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fe, i64 64
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fe, i64 72 ; 2 uses
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !82 ; 2 uses
  %.not.i13.i.i = icmp eq ptr %i.fp, null
  br i1 %.not.i13.i.i, label %Vec_IntErase.exit14.i.i, label %bb.ab

bb.ab:                                            ; preds = %Vec_IntErase.exit12.i.i
  call void @free(ptr noundef nonnull %i.fp) #19
  store ptr null, ptr %i.fo, align 8, !tbaa !82
  br label %Vec_IntErase.exit14.i.i

Vec_IntErase.exit14.i.i:                          ; preds = %bb.ab, %Vec_IntErase.exit12.i.i
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fe, i64 68
  store i32 0, ptr %i.fq, align 4, !tbaa !81
  store i32 0, ptr %i.fn, align 8, !tbaa !79
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fe, i64 80
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fe, i64 88 ; 2 uses
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !89 ; 2 uses
  %.not.i15.i.i = icmp eq ptr %i.ft, null
  br i1 %.not.i15.i.i, label %Vec_StrErase.exit.i.i, label %bb.ac

bb.ac:                                            ; preds = %Vec_IntErase.exit14.i.i
  call void @free(ptr noundef nonnull %i.ft) #19
  store ptr null, ptr %i.fs, align 8, !tbaa !89
  br label %Vec_StrErase.exit.i.i

Vec_StrErase.exit.i.i:                            ; preds = %bb.ac, %Vec_IntErase.exit14.i.i
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fe, i64 84
  store i32 0, ptr %i.fu, align 4, !tbaa !88
  store i32 0, ptr %i.fr, align 8, !tbaa !96
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fe, i64 96
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fe, i64 104 ; 2 uses
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !82 ; 2 uses
  %.not.i16.i.i = icmp eq ptr %i.fx, null
  br i1 %.not.i16.i.i, label %Vec_IntErase.exit17.i.i, label %bb.ad

bb.ad:                                            ; preds = %Vec_StrErase.exit.i.i
  call void @free(ptr noundef nonnull %i.fx) #19
  store ptr null, ptr %i.fw, align 8, !tbaa !82
  br label %Vec_IntErase.exit17.i.i

Vec_IntErase.exit17.i.i:                          ; preds = %bb.ad, %Vec_StrErase.exit.i.i
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fe, i64 100
  store i32 0, ptr %i.fy, align 4, !tbaa !81
  store i32 0, ptr %i.fv, align 8, !tbaa !79
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fe, i64 112
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fe, i64 120 ; 2 uses
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !82 ; 2 uses
  %.not.i18.i.i = icmp eq ptr %i.gb, null
  br i1 %.not.i18.i.i, label %Vec_IntErase.exit19.i.i, label %bb.ae

bb.ae:                                            ; preds = %Vec_IntErase.exit17.i.i
  call void @free(ptr noundef nonnull %i.gb) #19
  store ptr null, ptr %i.ga, align 8, !tbaa !82
  br label %Vec_IntErase.exit19.i.i

Vec_IntErase.exit19.i.i:                          ; preds = %bb.ae, %Vec_IntErase.exit17.i.i
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fe, i64 116
  store i32 0, ptr %i.gc, align 4, !tbaa !81
  store i32 0, ptr %i.fz, align 8, !tbaa !79
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fe, i64 128
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fe, i64 136 ; 2 uses
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !82 ; 2 uses
  %.not.i20.i.i = icmp eq ptr %i.gf, null
  br i1 %.not.i20.i.i, label %Vec_IntErase.exit21.i.i, label %bb.af

bb.af:                                            ; preds = %Vec_IntErase.exit19.i.i
  call void @free(ptr noundef nonnull %i.gf) #19
  store ptr null, ptr %i.ge, align 8, !tbaa !82
  br label %Vec_IntErase.exit21.i.i

Vec_IntErase.exit21.i.i:                          ; preds = %bb.af, %Vec_IntErase.exit19.i.i
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fe, i64 132
  store i32 0, ptr %i.gg, align 4, !tbaa !81
  store i32 0, ptr %i.gd, align 8, !tbaa !79
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fe, i64 144
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fe, i64 152 ; 2 uses
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !82 ; 2 uses
  %.not.i22.i.i = icmp eq ptr %i.gj, null
  br i1 %.not.i22.i.i, label %Vec_IntErase.exit23.i.i, label %bb.ag

bb.ag:                                            ; preds = %Vec_IntErase.exit21.i.i
  call void @free(ptr noundef nonnull %i.gj) #19
  store ptr null, ptr %i.gi, align 8, !tbaa !82
  br label %Vec_IntErase.exit23.i.i

Vec_IntErase.exit23.i.i:                          ; preds = %bb.ag, %Vec_IntErase.exit21.i.i
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fe, i64 148
  store i32 0, ptr %i.gk, align 4, !tbaa !81
  store i32 0, ptr %i.gh, align 8, !tbaa !79
  %i.gl = getelementptr inbounds nuw i8, ptr %i.fe, i64 160
  %i.gm = getelementptr inbounds nuw i8, ptr %i.fe, i64 168 ; 2 uses
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !82 ; 2 uses
  %.not.i24.i.i = icmp eq ptr %i.gn, null
  br i1 %.not.i24.i.i, label %Vec_IntErase.exit25.i.i, label %bb.ah

bb.ah:                                            ; preds = %Vec_IntErase.exit23.i.i
  call void @free(ptr noundef nonnull %i.gn) #19
  store ptr null, ptr %i.gm, align 8, !tbaa !82
  br label %Vec_IntErase.exit25.i.i

Vec_IntErase.exit25.i.i:                          ; preds = %bb.ah, %Vec_IntErase.exit23.i.i
  %i.go = getelementptr inbounds nuw i8, ptr %i.fe, i64 164
  store i32 0, ptr %i.go, align 4, !tbaa !81
  store i32 0, ptr %i.gl, align 8, !tbaa !79
  %i.gp = getelementptr inbounds nuw i8, ptr %i.fe, i64 176
  %i.gq = getelementptr inbounds nuw i8, ptr %i.fe, i64 184 ; 2 uses
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !82 ; 2 uses
  %.not.i26.i.i = icmp eq ptr %i.gr, null
  br i1 %.not.i26.i.i, label %Vec_IntErase.exit27.i.i, label %bb.ai

bb.ai:                                            ; preds = %Vec_IntErase.exit25.i.i
  call void @free(ptr noundef nonnull %i.gr) #19
  store ptr null, ptr %i.gq, align 8, !tbaa !82
  br label %Vec_IntErase.exit27.i.i

Vec_IntErase.exit27.i.i:                          ; preds = %bb.ai, %Vec_IntErase.exit25.i.i
  %i.gs = getelementptr inbounds nuw i8, ptr %i.fe, i64 180
  store i32 0, ptr %i.gs, align 4, !tbaa !81
  store i32 0, ptr %i.gp, align 8, !tbaa !79
  %i.gt = getelementptr inbounds nuw i8, ptr %i.fe, i64 200 ; 2 uses
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !82 ; 2 uses
  %.not.i28.i.i = icmp eq ptr %i.gu, null
  br i1 %.not.i28.i.i, label %Bac_NtkFree.exit.i, label %bb.aj

bb.aj:                                            ; preds = %Vec_IntErase.exit27.i.i
  call void @free(ptr noundef nonnull %i.gu) #19
  store ptr null, ptr %i.gt, align 8, !tbaa !82
  br label %Bac_NtkFree.exit.i

Bac_NtkFree.exit.i:                               ; preds = %bb.aj, %Vec_IntErase.exit27.i.i
  %i.gv = getelementptr inbounds nuw i8, ptr %i.fe, i64 192
  %i.gw = getelementptr inbounds nuw i8, ptr %i.fe, i64 196
  store i32 0, ptr %i.gw, align 4, !tbaa !81
  store i32 0, ptr %i.gv, align 8, !tbaa !79
  %indvars.iv.next.i69 = add nuw nsw i64 %indvars.iv.i67, 1
  %.val.i70 = load i32, ptr %i.s, align 4, !tbaa !77
  %i.gx = sext i32 %.val.i70 to i64
  %.not.not.i = icmp slt i64 %indvars.iv.i67, %i.gx
  br i1 %.not.not.i, label %Bac_ManNtk.exit.i66, label %.critedge.i, !llvm.loop !107

.critedge.i:                                      ; preds = %Bac_NtkFree.exit.i, %1
  %i.gy = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  %i.gz = getelementptr inbounds nuw i8, ptr %i.f, i64 104 ; 2 uses
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !82 ; 2 uses
  %.not.i.i71 = icmp eq ptr %i.ha, null
  br i1 %.not.i.i71, label %Vec_IntErase.exit.i, label %bb.ak

bb.ak:                                            ; preds = %.critedge.i
  call void @free(ptr noundef nonnull %i.ha) #19
  store ptr null, ptr %i.gz, align 8, !tbaa !82
  br label %Vec_IntErase.exit.i

Vec_IntErase.exit.i:                              ; preds = %bb.ak, %.critedge.i
  %i.hb = getelementptr inbounds nuw i8, ptr %i.f, i64 100
  store i32 0, ptr %i.hb, align 4, !tbaa !81
  store i32 0, ptr %i.gy, align 8, !tbaa !79
  %i.hc = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  %i.hd = getelementptr inbounds nuw i8, ptr %i.f, i64 120 ; 2 uses
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !82 ; 2 uses
  %.not.i28.i = icmp eq ptr %i.he, null
  br i1 %.not.i28.i, label %Vec_IntErase.exit29.i, label %bb.al

bb.al:                                            ; preds = %Vec_IntErase.exit.i
  call void @free(ptr noundef nonnull %i.he) #19
  store ptr null, ptr %i.hd, align 8, !tbaa !82
  br label %Vec_IntErase.exit29.i

Vec_IntErase.exit29.i:                            ; preds = %bb.al, %Vec_IntErase.exit.i
  %i.hf = getelementptr inbounds nuw i8, ptr %i.f, i64 116
  store i32 0, ptr %i.hf, align 4, !tbaa !81
  store i32 0, ptr %i.hc, align 8, !tbaa !79
  %i.hg = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.hh = getelementptr inbounds nuw i8, ptr %i.f, i64 72 ; 2 uses
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !82 ; 2 uses
  %.not.i30.i = icmp eq ptr %i.hi, null
  br i1 %.not.i30.i, label %Vec_IntErase.exit31.i, label %bb.am

bb.am:                                            ; preds = %Vec_IntErase.exit29.i
  call void @free(ptr noundef nonnull %i.hi) #19
  store ptr null, ptr %i.hh, align 8, !tbaa !82
  br label %Vec_IntErase.exit31.i

Vec_IntErase.exit31.i:                            ; preds = %bb.am, %Vec_IntErase.exit29.i
  %i.hj = getelementptr inbounds nuw i8, ptr %i.f, i64 68
  store i32 0, ptr %i.hj, align 4, !tbaa !81
  store i32 0, ptr %i.hg, align 8, !tbaa !79
  %i.hk = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  %i.hl = getelementptr inbounds nuw i8, ptr %i.f, i64 88 ; 2 uses
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !82 ; 2 uses
  %.not.i32.i = icmp eq ptr %i.hm, null
  br i1 %.not.i32.i, label %Vec_IntErase.exit33.i, label %bb.an

bb.an:                                            ; preds = %Vec_IntErase.exit31.i
  call void @free(ptr noundef nonnull %i.hm) #19
  store ptr null, ptr %i.hl, align 8, !tbaa !82
  br label %Vec_IntErase.exit33.i

Vec_IntErase.exit33.i:                            ; preds = %bb.an, %Vec_IntErase.exit31.i
  %i.hn = getelementptr inbounds nuw i8, ptr %i.f, i64 84
  store i32 0, ptr %i.hn, align 4, !tbaa !81
  store i32 0, ptr %i.hk, align 8, !tbaa !79
  %i.ho = load ptr, ptr %i.o, align 8, !tbaa !80
  call void @Abc_NamDeref(ptr noundef %i.ho) #19
  %i.hp = load ptr, ptr %i.q, align 8, !tbaa !72
  call void @Abc_NamDeref(ptr noundef %i.hp) #19
  %i.hq = load ptr, ptr %i.f, align 8, !tbaa !97  ; 2 uses
  %.not25.i = icmp eq ptr %i.hq, null
  br i1 %.not25.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %Vec_IntErase.exit33.i
  call void @free(ptr noundef nonnull %i.hq) #19
  store ptr null, ptr %i.f, align 8, !tbaa !97
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %Vec_IntErase.exit33.i
  %i.hr = load ptr, ptr %i.m, align 8, !tbaa !98  ; 2 uses
  %.not26.i = icmp eq ptr %i.hr, null
  br i1 %.not26.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void @free(ptr noundef nonnull %i.hr) #19
  store ptr null, ptr %i.m, align 8, !tbaa !98
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.hs = load ptr, ptr %i.v, align 8, !tbaa !78  ; 2 uses
  %.not27.i = icmp eq ptr %i.hs, null
  br i1 %.not27.i, label %Bac_ManFree.exit, label %bb.as

bb.as:                                            ; preds = %bb.ar
  call void @free(ptr noundef nonnull %i.hs) #19
  br label %Bac_ManFree.exit

Bac_ManFree.exit:                                 ; preds = %bb.ar, %bb.as
  call void @free(ptr noundef nonnull %i.f) #19
  br label %bb.at

bb.at:                                            ; preds = %Bac_ManFree.exit, %.critedge2
  %.039 = phi ptr [ null, %Bac_ManFree.exit ], [ %i.f, %.critedge2 ]
  %i.ht = load ptr, ptr %i.aq, align 8, !tbaa !82 ; 2 uses
  %.not.i72 = icmp eq ptr %i.ht, null
  br i1 %.not.i72, label %Vec_IntFree.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void @free(ptr noundef nonnull %i.ht) #19
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %bb.at, %bb.au
  call void @free(ptr noundef nonnull %i.an) #19
  %i.hu = load ptr, ptr %i.am, align 8, !tbaa !82 ; 2 uses
  %.not.i73 = icmp eq ptr %i.hu, null
  br i1 %.not.i73, label %Vec_IntFree.exit74, label %bb.av

bb.av:                                            ; preds = %Vec_IntFree.exit
  call void @free(ptr noundef nonnull %i.hu) #19
  br label %Vec_IntFree.exit74

Vec_IntFree.exit74:                               ; preds = %Vec_IntFree.exit, %bb.av
  call void @free(ptr noundef nonnull %i.aj) #19
  ret ptr %.039
}

; Function Attrs: nounwind uwtable
define noalias noundef ptr @Bac_NtkTransformToPtrBox(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 88         ; 8 uses
  %.val60 = load ptr, ptr %i.a, align 8, !tbaa !89
  %i.b = sext i32 %1 to i64                       ; 8 uses
  %i.c = getelementptr inbounds i8, ptr %.val60, i64 %i.b
  %i.d = load i8, ptr %i.c, align 1, !tbaa !29
  %.mask.i = and i8 %i.d, -2
  %.not151 = icmp eq i8 %.mask.i, 10              ; 2 uses
  %.val61 = load ptr, ptr %0, align 8, !tbaa !68  ; 4 uses
  %i.e = getelementptr i8, ptr %0, i64 104        ; 5 uses
  %.val62 = load ptr, ptr %i.e, align 8, !tbaa !82
  %i.f = getelementptr inbounds [4 x i8], ptr %.val62, i64 %i.b
  %i.g = load i32, ptr %i.f, align 4, !tbaa !33   ; 4 uses
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %Bac_ManNtkIsOk.exit.i.i, label %Bac_BoxNtk.exit

Bac_ManNtkIsOk.exit.i.i:                          ; preds = %bb.a
  %i.i = getelementptr i8, ptr %.val61, i64 36
  %.val.i.i.i = load i32, ptr %i.i, align 4, !tbaa !77
  %.not4.i.i = icmp sgt i32 %i.g, %.val.i.i.i
  br i1 %.not4.i.i, label %Bac_BoxNtk.exit, label %bb.b

bb.b:                                             ; preds = %Bac_ManNtkIsOk.exit.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.val61, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !78
  %i.l = zext nneg i32 %i.g to i64
  %i.m = getelementptr inbounds nuw [208 x i8], ptr %i.k, i64 %i.l
  br label %Bac_BoxNtk.exit

Bac_BoxNtk.exit:                                  ; preds = %bb.a, %Bac_ManNtkIsOk.exit.i.i, %bb.b
  %i.n = phi ptr [ %i.m, %bb.b ], [ null, %Bac_ManNtkIsOk.exit.i.i ], [ null, %bb.a ] ; 10 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.val61, i64 128
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !108  ; 2 uses
  %.not = icmp eq ptr %i.p, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %Bac_BoxNtk.exit
  %i.q = getelementptr i8, ptr %.val61, i64 24
  %.val65.val = load ptr, ptr %i.q, align 8, !tbaa !72
  %i.r = tail call ptr @Abc_NamStr(ptr noundef %.val65.val, i32 noundef %i.g) #19
  %i.s = tail call ptr @Mio_LibraryReadGateByName(ptr noundef nonnull %i.p, ptr noundef %i.r, ptr noundef null) #19
  br label %bb.d

bb.d:                                             ; preds = %Bac_BoxNtk.exit, %bb.c
  %i.t = phi ptr [ %i.s, %bb.c ], [ null, %Bac_BoxNtk.exit ] ; 2 uses
  %i.u = zext i32 %1 to i64                       ; 3 uses
  %smin.i.i = tail call i32 @llvm.smin.i32(i32 %1, i32 0) ; 2 uses
  %i.v = icmp sgt i32 %1, 0
  br i1 %i.v, label %.lr.ph207.preheader, label %Bac_BoxBiNum.exit.i

.lr.ph207.preheader:                              ; preds = %bb.d
  %.val.i.i = load ptr, ptr %i.a, align 8, !tbaa !89
  br label %.lr.ph207

bb.e:                                             ; preds = %.lr.ph207
  %i.w = trunc nuw i64 %i.z to i32                ; 2 uses
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %.lr.ph207, label %Bac_BoxBiNum.exit.i, !llvm.loop !109

.lr.ph207:                                        ; preds = %.lr.ph207.preheader, %bb.e
  %i.y = phi i32 [ %i.w, %bb.e ], [ %1, %.lr.ph207.preheader ]
  %indvars.iv.i.i206 = phi i64 [ %i.z, %bb.e ], [ %i.u, %.lr.ph207.preheader ]
  %i.z = add nsw i64 %indvars.iv.i.i206, -1       ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !29
  %.mask.i.i.i = and i8 %i.ab, -2
  %.not.i.i = icmp eq i8 %.mask.i.i.i, 6
  br i1 %.not.i.i, label %bb.e, label %.Bac_BoxBiNum.exit.i_crit_edge, !llvm.loop !109

.Bac_BoxBiNum.exit.i_crit_edge:                   ; preds = %.lr.ph207
  br label %Bac_BoxBiNum.exit.i, !llvm.loop !109

Bac_BoxBiNum.exit.i:                              ; preds = %bb.e, %.Bac_BoxBiNum.exit.i_crit_edge, %bb.d
  %.0.lcssa.i.i = phi i32 [ %smin.i.i, %bb.d ], [ %i.y, %.Bac_BoxBiNum.exit.i_crit_edge ], [ %smin.i.i, %bb.e ]
  %i.ac = getelementptr i8, ptr %0, i64 84        ; 3 uses
  %.val.i3.i = load i32, ptr %i.ac, align 4, !tbaa !88 ; 2 uses
  %i.ad = sext i32 %.val.i3.i to i64              ; 2 uses
end_hunk_0
