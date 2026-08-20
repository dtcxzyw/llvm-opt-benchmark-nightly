inline.NumInlined: 346
inline.NumDeleted: 109
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@Bac_NtkDeriveFromPtr:bb.a
  %.not.i22.i.i203 = icmp slt i32 %i.bz, %spec.select.i.i202
  br i1 %.not.i22.i.i203, label %bb.af, label %Vec_IntGrow.exit.i.i196

bb.af:                                            ; preds = %bb.ae
  %i.ch = load ptr, ptr %i.q, align 8, !tbaa !82  ; 2 uses
  %.not9.i23.i.i204 = icmp eq ptr %i.ch, null
  %i.ci = sext i32 %spec.select.i.i202 to i64
  %i.cj = shl nsw i64 %i.ci, 2                    ; 2 uses
  br i1 %.not9.i23.i.i204, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ck = tail call ptr @realloc(ptr noundef nonnull %i.ch, i64 noundef %i.cj) #21
  br label %Vec_IntGrow.exit.sink.split.i.i193

bb.ah:                                            ; preds = %bb.af
  %i.cl = tail call noalias ptr @malloc(i64 noundef %i.cj) #20
  br label %Vec_IntGrow.exit.sink.split.i.i193

Vec_IntGrow.exit.sink.split.i.i193:               ; preds = %bb.ag, %bb.ah, %bb.ab, %bb.ac
  %storemerge399 = phi ptr [ %i.cf, %bb.ac ], [ %i.ce, %bb.ab ], [ %i.ck, %bb.ag ], [ %i.cl, %bb.ah ]
  %spec.select.sink.i.i194 = phi i32 [ %i.aa, %bb.ac ], [ %i.aa, %bb.ab ], [ %spec.select.i.i202, %bb.ag ], [ %spec.select.i.i202, %bb.ah ]
  store ptr %storemerge399, ptr %i.q, align 8, !tbaa !82
  store i32 %spec.select.sink.i.i194, ptr %2, align 8, !tbaa !79
  %.pre.i195 = load i32, ptr %i.p, align 4, !tbaa !81
  br label %Vec_IntGrow.exit.i.i196

Vec_IntGrow.exit.i.i196:                          ; preds = %Vec_IntGrow.exit.sink.split.i.i193, %bb.ae, %bb.ad, %bb.z
  %i.cm = phi i32 [ %.pre.i195, %Vec_IntGrow.exit.sink.split.i.i193 ], [ %i.by, %bb.ae ], [ %i.by, %bb.ad ], [ %i.by, %bb.z ] ; 2 uses
  %.not4.i = icmp sgt i32 %i.cm, %i.z
  br i1 %.not4.i, label %._crit_edge.i.i200, label %.lr.ph.i.i197

.lr.ph.i.i197:                                    ; preds = %Vec_IntGrow.exit.i.i196
  %i.cn = load ptr, ptr %i.q, align 8, !tbaa !82
  %i.co = sext i32 %i.cm to i64                   ; 2 uses
  %wide.trip.count.i.i198 = sext i32 %i.aa to i64
  %i.cp = shl nsw i64 %i.co, 2
  %scevgep.i199 = getelementptr i8, ptr %i.cn, i64 %i.cp
  %i.cq = sub nsw i64 %wide.trip.count.i.i198, %i.co
  %i.cr = shl nsw i64 %i.cq, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i199, i8 -1, i64 %i.cr, i1 false), !tbaa !33
  br label %._crit_edge.i.i200

._crit_edge.i.i200:                               ; preds = %.lr.ph.i.i197, %Vec_IntGrow.exit.i.i196
  store i32 %i.aa, ptr %i.p, align 4, !tbaa !81
  br label %Vec_IntSetEntryFull.exit

Vec_IntSetEntryFull.exit:                         ; preds = %Bac_ObjSetName.exit, %._crit_edge.i.i200
  %.val.i201 = load ptr, ptr %i.q, align 8, !tbaa !82
  %i.cs = getelementptr inbounds [4 x i8], ptr %.val.i201, i64 %i.av
  store i32 %i.az, ptr %i.cs, align 4, !tbaa !33
  %i.ct = or disjoint i32 %i.ba, 1
  tail call fastcc void @Bac_NtkAddInfo(ptr noundef nonnull %0, i32 noundef %i.ct)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.val179 = load i32, ptr %i.m, align 4, !tbaa !38
  %i.cu = sext i32 %.val179 to i64
  %i.cv = icmp slt i64 %indvars.iv.next, %i.cu
  br i1 %i.cv, label %bb.b, label %.critedge, !llvm.loop !83

.critedge:                                        ; preds = %Vec_IntSetEntryFull.exit, %bb.a
  %i.cw = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 4 uses
  store i32 0, ptr %i.cw, align 4, !tbaa !81
  %i.cx = getelementptr i8, ptr %i.h, i64 4       ; 3 uses
  %.val178412 = load i32, ptr %i.cx, align 4, !tbaa !38
  %i.cy = icmp sgt i32 %.val178412, 0
  br i1 %i.cy, label %.lr.ph414, label %.critedge6.preheader

.lr.ph414:                                        ; preds = %.critedge
  %i.cz = getelementptr i8, ptr %i.h, i64 8
  %i.da = ptrtoint ptr %0 to i64
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 4 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 6 uses
  %i.dd = getelementptr i8, ptr %0, i64 136       ; 10 uses
  %i.de = getelementptr i8, ptr %0, i64 84        ; 2 uses
  %i.df = getelementptr i8, ptr %0, i64 88
  %i.dg = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 6 uses
  %i.dh = getelementptr i8, ptr %2, i64 8         ; 10 uses
  %i.di = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  br label %bb.ai

.critedge2.preheader:                             ; preds = %Vec_IntPush.exit
  %i.dj = icmp sgt i32 %.val178, 0
  br i1 %i.dj, label %.lr.ph423, label %.critedge6.preheader

.lr.ph423:                                        ; preds = %.critedge2.preheader
  %i.dk = getelementptr i8, ptr %i.h, i64 8
  %i.dl = getelementptr i8, ptr %3, i64 8
  %i.dm = getelementptr i8, ptr %0, i64 88
  %i.dn = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 6 uses
  %i.do = getelementptr i8, ptr %2, i64 8         ; 10 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 3 uses
  %i.dr = getelementptr i8, ptr %0, i64 104       ; 6 uses
  br label %bb.cr

bb.ai:                                            ; preds = %.lr.ph414, %Vec_IntPush.exit
  %indvars.iv436 = phi i64 [ 0, %.lr.ph414 ], [ %indvars.iv.next437, %Vec_IntPush.exit ] ; 2 uses
  %.val168 = load ptr, ptr %i.cz, align 8, !tbaa !34
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %.val168, i64 %indvars.iv436
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !37 ; 2 uses
  %i.du = getelementptr i8, ptr %i.dt, i64 8      ; 2 uses
  %.val167 = load ptr, ptr %i.du, align 8, !tbaa !34 ; 2 uses
  %i.dv = load ptr, ptr %.val167, align 8, !tbaa !37 ; 12 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.val167, i64 8
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !37
  %i.dy = load ptr, ptr %0, align 8, !tbaa !68
  %i.dz = getelementptr i8, ptr %i.dy, i64 24
  %.val.i205 = load ptr, ptr %i.dz, align 8, !tbaa !72
  %i.ea = tail call i32 @Abc_NamStrFind(ptr noundef %.val.i205, ptr noundef %i.dv) #19 ; 4 uses
  %i.eb = icmp eq i32 %i.ea, 0
  %.pre = load ptr, ptr %0, align 8, !tbaa !68    ; 3 uses
  br i1 %i.eb, label %Bac_BoxCountOutputs.exit, label %Bac_ManNtkIsOk.exit.i.i

Bac_ManNtkIsOk.exit.i.i:                          ; preds = %bb.ai
  %i.ec = icmp sgt i32 %i.ea, 0
  tail call void @llvm.assume(i1 %i.ec)
  %i.ed = getelementptr i8, ptr %.pre, i64 36
  %.val.i.i.i = load i32, ptr %i.ed, align 4, !tbaa !77
  %.not4.i.i206 = icmp sle i32 %i.ea, %.val.i.i.i
  tail call void @llvm.assume(i1 %.not4.i.i206)
  %i.ee = getelementptr inbounds nuw i8, ptr %.pre, i64 40
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !78
  %i.eg = zext nneg i32 %i.ea to i64
  %i.eh = getelementptr inbounds nuw [208 x i8], ptr %i.ef, i64 %i.eg
  %i.ei = getelementptr i8, ptr %i.eh, i64 48
  %.val6.i = load i32, ptr %i.ei, align 8, !tbaa !79
  br label %Bac_BoxCountOutputs.exit

Bac_BoxCountOutputs.exit:                         ; preds = %bb.ai, %Bac_ManNtkIsOk.exit.i.i
  %.0.i = phi i32 [ %.val6.i, %Bac_ManNtkIsOk.exit.i.i ], [ 1, %bb.ai ] ; 4 uses
  %i.ej = getelementptr i8, ptr %i.dt, i64 4      ; 2 uses
  %.val177 = load i32, ptr %i.ej, align 4, !tbaa !38
  %i.ek = sdiv i32 %.val177, 2
  %i.el = xor i32 %.0.i, -1
  %i.em = add i32 %i.ek, %i.el                    ; 2 uses
  %i.en = getelementptr i8, ptr %.pre, i64 24
  %.val180 = load ptr, ptr %i.en, align 8, !tbaa !72
  %i.eo = tail call i32 @Abc_NamStrFind(ptr noundef %.val180, ptr noundef %i.dv) #19 ; 4 uses
  %i.ep = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.dv, ptr noundef nonnull dereferenceable(8) @.str) #22
  %.not.i207 = icmp eq i32 %i.ep, 0
  br i1 %.not.i207, label %Ptr_NameToType.exit, label %bb.aj

bb.aj:                                            ; preds = %Bac_BoxCountOutputs.exit
  %i.eq = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.dv, ptr noundef nonnull dereferenceable(8) @.str.1) #22
  %.not10.i = icmp eq i32 %i.eq, 0
  br i1 %.not10.i, label %Ptr_NameToType.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.er = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.dv, ptr noundef nonnull dereferenceable(5) @.str.2) #22
  %.not11.i = icmp eq i32 %i.er, 0
  br i1 %.not11.i, label %Ptr_NameToType.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.es = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.dv, ptr noundef nonnull dereferenceable(5) @.str.3) #22
  %.not12.i = icmp eq i32 %i.es, 0
  br i1 %.not12.i, label %Ptr_NameToType.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.et = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.dv, ptr noundef nonnull dereferenceable(5) @.str.4) #22
  %.not13.i = icmp eq i32 %i.et, 0
  br i1 %.not13.i, label %Ptr_NameToType.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.eu = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.dv, ptr noundef nonnull dereferenceable(6) @.str.5) #22
  %.not14.i = icmp eq i32 %i.eu, 0
  br i1 %.not14.i, label %Ptr_NameToType.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ev = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.dv, ptr noundef nonnull dereferenceable(4) @.str.6) #22
  %.not15.i = icmp eq i32 %i.ev, 0
  br i1 %.not15.i, label %Ptr_NameToType.exit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ew = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.dv, ptr noundef nonnull dereferenceable(5) @.str.7) #22
  %.not16.i = icmp eq i32 %i.ew, 0
  br i1 %.not16.i, label %Ptr_NameToType.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ex = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.dv, ptr noundef nonnull dereferenceable(5) @.str.8) #22
  %.not17.i = icmp eq i32 %i.ex, 0
  br i1 %.not17.i, label %Ptr_NameToType.exit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ey = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.dv, ptr noundef nonnull dereferenceable(6) @.str.9) #22
  %.not18.i = icmp eq i32 %i.ey, 0
  %..i = select i1 %.not18.i, i32 17, i32 5
  br label %Ptr_NameToType.exit

Ptr_NameToType.exit:                              ; preds = %Bac_BoxCountOutputs.exit, %bb.aj, %bb.ak, %bb.al, %bb.am, %bb.an, %bb.ao, %bb.ap, %bb.aq, %bb.ar
  %.0.i208 = phi i32 [ 16, %bb.aq ], [ %..i, %bb.ar ], [ 15, %bb.ap ], [ 14, %bb.ao ], [ 13, %bb.an ], [ 12, %bb.am ], [ 11, %bb.al ], [ 10, %bb.ak ], [ 7, %bb.aj ], [ 6, %Bac_BoxCountOutputs.exit ]
  %i.ez = icmp sgt i32 %i.em, 0
  br i1 %i.ez, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %Ptr_NameToType.exit, %.lr.ph.i
  %.0.in11.i = phi i32 [ %.0.i209, %.lr.ph.i ], [ %i.em, %Ptr_NameToType.exit ] ; 2 uses
  %.0.i209 = add nsw i32 %.0.in11.i, -1
  %i.fa = tail call fastcc i32 @Bac_ObjAlloc(ptr noundef nonnull %0, i32 noundef 3, i32 noundef -1) ; 0 uses
  %i.fb = icmp samesign ugt i32 %.0.in11.i, 1
  br i1 %i.fb, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !84

._crit_edge.i:                                    ; preds = %.lr.ph.i, %Ptr_NameToType.exit
  %i.fc = tail call fastcc i32 @Bac_ObjAlloc(ptr noundef nonnull %0, i32 noundef range(i32 5, 18) %.0.i208, i32 noundef %i.eo) ; 9 uses
  %i.fd = icmp sgt i32 %.0.i, 0
  br i1 %i.fd, label %.lr.ph14.i, label %Bac_BoxAlloc.exit

.lr.ph14.i:                                       ; preds = %._crit_edge.i, %.lr.ph14.i
  %.112.i = phi i32 [ %i.ff, %.lr.ph14.i ], [ 0, %._crit_edge.i ]
  %i.fe = tail call fastcc i32 @Bac_ObjAlloc(ptr noundef nonnull %0, i32 noundef 4, i32 noundef -1) ; 0 uses
  %i.ff = add nuw nsw i32 %.112.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.ff, %.0.i
  br i1 %exitcond.not.i, label %Bac_BoxAlloc.exit, label %.lr.ph14.i, !llvm.loop !85

Bac_BoxAlloc.exit:                                ; preds = %.lr.ph14.i, %._crit_edge.i
  %i.fg = icmp sgt i32 %i.eo, 0
  %.pre455 = load ptr, ptr %0, align 8, !tbaa !68 ; 3 uses
  br i1 %i.fg, label %Bac_ManNtkIsOk.exit.i, label %bb.as

Bac_ManNtkIsOk.exit.i:                            ; preds = %Bac_BoxAlloc.exit
  %i.fh = getelementptr i8, ptr %.pre455, i64 36
  %.val.i.i210 = load i32, ptr %i.fh, align 4, !tbaa !77
  %.not4.i211 = icmp sle i32 %i.eo, %.val.i.i210
  tail call void @llvm.assume(i1 %.not4.i211)
  %i.fi = getelementptr inbounds nuw i8, ptr %.pre455, i64 40
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !78 ; 2 uses
  %i.fk = zext nneg i32 %i.eo to i64
  %i.fl = getelementptr inbounds nuw [208 x i8], ptr %i.fj, i64 %i.fk ; 2 uses
  %i.fm = ptrtoint ptr %i.fj to i64
  %i.fn = sub i64 %i.da, %i.fm
  %i.fo = sdiv exact i64 %i.fn, 208
  %i.fp = trunc i64 %i.fo to i32
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fl, i64 16
  store i32 %i.fp, ptr %i.fq, align 8, !tbaa !86
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fl, i64 20
  store i32 %i.fc, ptr %i.fr, align 4, !tbaa !87
  br label %bb.as

bb.as:                                            ; preds = %Bac_ManNtkIsOk.exit.i, %Bac_BoxAlloc.exit
  %i.fs = getelementptr inbounds nuw i8, ptr %.pre455, i64 16
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !80
  %i.fu = tail call i32 @Abc_NamStrFindOrAdd(ptr noundef %i.ft, ptr noundef %i.dx, ptr noundef null) #19
  %i.fv = shl i32 %i.fu, 2
  %i.fw = add nsw i32 %i.fc, 1                    ; 7 uses
  %i.fx = load i32, ptr %i.dc, align 4, !tbaa !81 ; 4 uses
  %.not.i.not.i.i212 = icmp slt i32 %i.fc, %i.fx
  br i1 %.not.i.not.i.i212, label %Bac_ObjSetName.exit229, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fy = load i32, ptr %i.db, align 8, !tbaa !79 ; 4 uses
  %i.fz = shl nsw i32 %i.fy, 1                    ; 2 uses
  %.not.i.i213 = icmp slt i32 %i.fc, %i.fz
  %.not.i.i.not.i.i214 = icmp sgt i32 %i.fy, %i.fc ; 2 uses
  br i1 %.not.i.i213, label %bb.ay, label %bb.au

bb.au:                                            ; preds = %bb.at
  br i1 %.not.i.i.not.i.i214, label %Vec_IntGrow.exit.i.i.i219, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ga = load ptr, ptr %i.dd, align 8, !tbaa !82 ; 2 uses
  %.not9.i.i.i.i215 = icmp eq ptr %i.ga, null
  %i.gb = sext i32 %i.fw to i64
  %i.gc = shl nsw i64 %i.gb, 2                    ; 2 uses
  br i1 %.not9.i.i.i.i215, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.gd = tail call ptr @realloc(ptr noundef nonnull %i.ga, i64 noundef %i.gc) #21
  br label %Vec_IntGrow.exit.sink.split.i.i.i216

bb.ax:                                            ; preds = %bb.av
  %i.ge = tail call noalias ptr @malloc(i64 noundef %i.gc) #20
  br label %Vec_IntGrow.exit.sink.split.i.i.i216

bb.ay:                                            ; preds = %bb.at
  br i1 %.not.i.i.not.i.i214, label %Vec_IntGrow.exit.i.i.i219, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.gf = icmp slt i32 %i.fy, 1073741823
  %spec.select.i.i.i226 = select i1 %i.gf, i32 %i.fz, i32 2147483647 ; 4 uses
  %.not.i22.i.i.i227 = icmp slt i32 %i.fy, %spec.select.i.i.i226
  br i1 %.not.i22.i.i.i227, label %bb.ba, label %Vec_IntGrow.exit.i.i.i219

bb.ba:                                            ; preds = %bb.az
  %i.gg = load ptr, ptr %i.dd, align 8, !tbaa !82 ; 2 uses
  %.not9.i23.i.i.i228 = icmp eq ptr %i.gg, null
  %i.gh = sext i32 %spec.select.i.i.i226 to i64
  %i.gi = shl nsw i64 %i.gh, 2                    ; 2 uses
  br i1 %.not9.i23.i.i.i228, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.gj = tail call ptr @realloc(ptr noundef nonnull %i.gg, i64 noundef %i.gi) #21
  br label %Vec_IntGrow.exit.sink.split.i.i.i216

bb.bc:                                            ; preds = %bb.ba
  %i.gk = tail call noalias ptr @malloc(i64 noundef %i.gi) #20
  br label %Vec_IntGrow.exit.sink.split.i.i.i216

Vec_IntGrow.exit.sink.split.i.i.i216:             ; preds = %bb.bb, %bb.bc, %bb.aw, %bb.ax
  %storemerge560 = phi ptr [ %i.ge, %bb.ax ], [ %i.gd, %bb.aw ], [ %i.gj, %bb.bb ], [ %i.gk, %bb.bc ]
  %spec.select.sink.i.i.i217 = phi i32 [ %i.fw, %bb.ax ], [ %i.fw, %bb.aw ], [ %spec.select.i.i.i226, %bb.bb ], [ %spec.select.i.i.i226, %bb.bc ]
  store ptr %storemerge560, ptr %i.dd, align 8, !tbaa !82
  store i32 %spec.select.sink.i.i.i217, ptr %i.db, align 8, !tbaa !79
  %.pre.i.i218 = load i32, ptr %i.dc, align 4, !tbaa !81
  br label %Vec_IntGrow.exit.i.i.i219

Vec_IntGrow.exit.i.i.i219:                        ; preds = %Vec_IntGrow.exit.sink.split.i.i.i216, %bb.az, %bb.ay, %bb.au
  %i.gl = phi i32 [ %.pre.i.i218, %Vec_IntGrow.exit.sink.split.i.i.i216 ], [ %i.fx, %bb.az ], [ %i.fx, %bb.ay ], [ %i.fx, %bb.au ] ; 2 uses
  %.not4.i.i220 = icmp sgt i32 %i.gl, %i.fc
  br i1 %.not4.i.i220, label %._crit_edge.i.i.i224, label %.lr.ph.i.i.i221

.lr.ph.i.i.i221:                                  ; preds = %Vec_IntGrow.exit.i.i.i219
  %i.gm = load ptr, ptr %i.dd, align 8, !tbaa !82
  %i.gn = sext i32 %i.gl to i64                   ; 2 uses
  %wide.trip.count.i.i.i222 = sext i32 %i.fw to i64
  %i.go = shl nsw i64 %i.gn, 2
  %scevgep.i.i223 = getelementptr i8, ptr %i.gm, i64 %i.go
  %i.gp = sub nsw i64 %wide.trip.count.i.i.i222, %i.gn
  %i.gq = shl nsw i64 %i.gp, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i.i223, i8 0, i64 %i.gq, i1 false), !tbaa !33
  br label %._crit_edge.i.i.i224

._crit_edge.i.i.i224:                             ; preds = %.lr.ph.i.i.i221, %Vec_IntGrow.exit.i.i.i219
  store i32 %i.fw, ptr %i.dc, align 4, !tbaa !81
  br label %Bac_ObjSetName.exit229

Bac_ObjSetName.exit229:                           ; preds = %bb.as, %._crit_edge.i.i.i224
  %.val.i.i225 = load ptr, ptr %i.dd, align 8, !tbaa !82
  %i.gr = sext i32 %i.fc to i64
  %i.gs = getelementptr inbounds [4 x i8], ptr %.val.i.i225, i64 %i.gr
  store i32 %i.fv, ptr %i.gs, align 4, !tbaa !33
  %.val184406 = load i32, ptr %i.de, align 4, !tbaa !88
  %i.gt = icmp slt i32 %i.fw, %.val184406
  br i1 %i.gt, label %.lr.ph410.preheader, label %.critedge4

.lr.ph410.preheader:                              ; preds = %Bac_ObjSetName.exit229
  %i.gu = sext i32 %i.fw to i64
  br label %.lr.ph410

.lr.ph410:                                        ; preds = %.lr.ph410.preheader, %Vec_IntSetEntryFull.exit283
  %indvars.iv433.a = phi i64 [ %i.gu, %.lr.ph410.preheader ], [ %indvars.iv.next434, %Vec_IntSetEntryFull.exit283 ] ; 8 uses
  %.0146.in408 = phi i32 [ %i.fc, %.lr.ph410.preheader ], [ %i.jv, %Vec_IntSetEntryFull.exit283 ]
  %.0148407 = phi i32 [ 0, %.lr.ph410.preheader ], [ %i.jw, %Vec_IntSetEntryFull.exit283 ] ; 2 uses
  %.val185 = load ptr, ptr %i.df, align 8, !tbaa !89
  %i.gv = getelementptr inbounds i8, ptr %.val185, i64 %indvars.iv433.a
  %i.gw = load i8, ptr %i.gv, align 1, !tbaa !29
  %.mask.i = and i8 %i.gw, -2
  %.not396 = icmp eq i8 %.mask.i, 8
  br i1 %.not396, label %bb.bd, label %.critedge4

bb.bd:                                            ; preds = %.lr.ph410
  %.val176 = load i32, ptr %i.ej, align 4, !tbaa !38
  %.neg = sub i32 %.0148407, %.0.i
  %.neg158 = shl i32 %.neg, 1
  %i.gx = add i32 %.val176, %.neg158
  %.val165 = load ptr, ptr %i.du, align 8, !tbaa !34
  %i.gy = sext i32 %i.gx to i64
  %i.gz = getelementptr [8 x i8], ptr %.val165, i64 %i.gy
  %i.ha = getelementptr i8, ptr %i.gz, i64 8
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !37 ; 2 uses
  %i.hc = load ptr, ptr %0, align 8, !tbaa !68
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 16
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !80
  %i.hf = tail call i32 @Abc_NamStrFindOrAdd(ptr noundef %i.he, ptr noundef %i.hb, ptr noundef null) #19 ; 11 uses
  %i.hg = add nsw i32 %i.hf, 1                    ; 10 uses
  %i.hh = load i32, ptr %i.dg, align 4, !tbaa !81 ; 4 uses
  %.not.i.not.i230 = icmp slt i32 %i.hf, %i.hh
  br i1 %.not.i.not.i230, label %Vec_IntGetEntryFull.exit247, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.hi = load i32, ptr %2, align 8, !tbaa !79    ; 4 uses
  %i.hj = shl nsw i32 %i.hi, 1                    ; 2 uses
  %.not.i231 = icmp slt i32 %i.hf, %i.hj
  %.not.i.i.not.i232 = icmp sgt i32 %i.hi, %i.hf  ; 2 uses
  br i1 %.not.i231, label %bb.bj, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  br i1 %.not.i.i.not.i232, label %Vec_IntGrow.exit.i.i237, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.hk = load ptr, ptr %i.dh, align 8, !tbaa !82 ; 2 uses
  %.not9.i.i.i233 = icmp eq ptr %i.hk, null
  %i.hl = sext i32 %i.hg to i64
  %i.hm = shl nsw i64 %i.hl, 2                    ; 2 uses
  br i1 %.not9.i.i.i233, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.hn = tail call ptr @realloc(ptr noundef nonnull %i.hk, i64 noundef %i.hm) #21
  br label %Vec_IntGrow.exit.sink.split.i.i234

bb.bi:                                            ; preds = %bb.bg
  %i.ho = tail call noalias ptr @malloc(i64 noundef %i.hm) #20
  br label %Vec_IntGrow.exit.sink.split.i.i234

bb.bj:                                            ; preds = %bb.be
  br i1 %.not.i.i.not.i232, label %Vec_IntGrow.exit.i.i237, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.hp = icmp slt i32 %i.hi, 1073741823
  %spec.select.i.i244 = select i1 %i.hp, i32 %i.hj, i32 2147483647 ; 4 uses
  %.not.i22.i.i245 = icmp slt i32 %i.hi, %spec.select.i.i244
  br i1 %.not.i22.i.i245, label %bb.bl, label %Vec_IntGrow.exit.i.i237

bb.bl:                                            ; preds = %bb.bk
  %i.hq = load ptr, ptr %i.dh, align 8, !tbaa !82 ; 2 uses
  %.not9.i23.i.i246 = icmp eq ptr %i.hq, null
  %i.hr = sext i32 %spec.select.i.i244 to i64
  %i.hs = shl nsw i64 %i.hr, 2                    ; 2 uses
  br i1 %.not9.i23.i.i246, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.ht = tail call ptr @realloc(ptr noundef nonnull %i.hq, i64 noundef %i.hs) #21
  br label %Vec_IntGrow.exit.sink.split.i.i234

bb.bn:                                            ; preds = %bb.bl
  %i.hu = tail call noalias ptr @malloc(i64 noundef %i.hs) #20
  br label %Vec_IntGrow.exit.sink.split.i.i234

Vec_IntGrow.exit.sink.split.i.i234:               ; preds = %bb.bm, %bb.bn, %bb.bh, %bb.bi
  %storemerge561 = phi ptr [ %i.ho, %bb.bi ], [ %i.hn, %bb.bh ], [ %i.ht, %bb.bm ], [ %i.hu, %bb.bn ]
  %spec.select.sink.i.i235 = phi i32 [ %i.hg, %bb.bi ], [ %i.hg, %bb.bh ], [ %spec.select.i.i244, %bb.bm ], [ %spec.select.i.i244, %bb.bn ]
  store ptr %storemerge561, ptr %i.dh, align 8, !tbaa !82
  store i32 %spec.select.sink.i.i235, ptr %2, align 8, !tbaa !79
  %.pre.i236 = load i32, ptr %i.dg, align 4, !tbaa !81
  br label %Vec_IntGrow.exit.i.i237

Vec_IntGrow.exit.i.i237:                          ; preds = %Vec_IntGrow.exit.sink.split.i.i234, %bb.bk, %bb.bj, %bb.bf
  %i.hv = phi i32 [ %.pre.i236, %Vec_IntGrow.exit.sink.split.i.i234 ], [ %i.hh, %bb.bk ], [ %i.hh, %bb.bj ], [ %i.hh, %bb.bf ] ; 2 uses
  %.not3.i238 = icmp sgt i32 %i.hv, %i.hf
  br i1 %.not3.i238, label %._crit_edge.i.i242, label %.lr.ph.i.i239

.lr.ph.i.i239:                                    ; preds = %Vec_IntGrow.exit.i.i237
  %i.hw = load ptr, ptr %i.dh, align 8, !tbaa !82
  %i.hx = sext i32 %i.hv to i64                   ; 2 uses
  %wide.trip.count.i.i240 = sext i32 %i.hg to i64
  %i.hy = shl nsw i64 %i.hx, 2
  %scevgep.i241 = getelementptr i8, ptr %i.hw, i64 %i.hy
  %i.hz = sub nsw i64 %wide.trip.count.i.i240, %i.hx
  %i.ia = shl nsw i64 %i.hz, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i241, i8 -1, i64 %i.ia, i1 false), !tbaa !33
  br label %._crit_edge.i.i242

._crit_edge.i.i242:                               ; preds = %.lr.ph.i.i239, %Vec_IntGrow.exit.i.i237
  store i32 %i.hg, ptr %i.dg, align 4, !tbaa !81
  br label %Vec_IntGetEntryFull.exit247

Vec_IntGetEntryFull.exit247:                      ; preds = %bb.bd, %._crit_edge.i.i242
  %.val.i243 = load ptr, ptr %i.dh, align 8, !tbaa !82
  %i.ib = sext i32 %i.hf to i64                   ; 2 uses
  %i.ic = getelementptr inbounds [4 x i8], ptr %.val.i243, i64 %i.ib
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !33
  %.not159 = icmp eq i32 %i.id, -1
  br i1 %.not159, label %bb.bo, label %.critedge162

.critedge162:                                     ; preds = %Vec_IntGetEntryFull.exit247
  %i.ie = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18, ptr noundef %i.hb, ptr noundef %i.b) ; 0 uses
  br label %.critedge12

bb.bo:                                            ; preds = %Vec_IntGetEntryFull.exit247
  %i.if = shl i32 %i.hf, 2
  %4 = add nsw i32 %.0146.in408, 2                ; 5 uses
  %i.ig = load i32, ptr %i.dc, align 4, !tbaa !81
  %i.ih = sext i32 %i.ig to i64                   ; 4 uses
  %.not.i.not.i.i248 = icmp slt i64 %indvars.iv433.a, %i.ih
  br i1 %.not.i.not.i.i248, label %Bac_ObjSetName.exit265, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.ii = load i32, ptr %i.db, align 8, !tbaa !79 ; 4 uses
  %i.ij = shl nsw i32 %i.ii, 1                    ; 2 uses
  %i.ik = sext i32 %i.ij to i64
  %.not.i.i249 = icmp slt i64 %indvars.iv433.a, %i.ik
  %i.il = sext i32 %i.ii to i64
  %.not.i.i.not.i.i250 = icmp slt i64 %indvars.iv433.a, %i.il ; 2 uses
  br i1 %.not.i.i249, label %bb.bu, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  br i1 %.not.i.i.not.i.i250, label %Vec_IntGrow.exit.i.i.i255, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.im = load ptr, ptr %i.dd, align 8, !tbaa !82 ; 2 uses
  %.not9.i.i.i.i251 = icmp eq ptr %i.im, null
  %5 = sext i32 %4 to i64
  %6 = shl nsw i64 %5, 2                          ; 2 uses
  br i1 %.not9.i.i.i.i251, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.in = tail call ptr @realloc(ptr noundef nonnull %i.im, i64 noundef %6) #21
  br label %Vec_IntGrow.exit.sink.split.i.i.i252

bb.bt:                                            ; preds = %bb.br
  %i.io = tail call noalias ptr @malloc(i64 noundef %6) #20
  br label %Vec_IntGrow.exit.sink.split.i.i.i252

bb.bu:                                            ; preds = %bb.bp
  br i1 %.not.i.i.not.i.i250, label %Vec_IntGrow.exit.i.i.i255, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.ip = icmp slt i32 %i.ii, 1073741823
  %spec.select.i.i.i262 = select i1 %i.ip, i32 %i.ij, i32 2147483647 ; 4 uses
  %.not.i22.i.i.i263 = icmp slt i32 %i.ii, %spec.select.i.i.i262
  br i1 %.not.i22.i.i.i263, label %bb.bw, label %Vec_IntGrow.exit.i.i.i255

bb.bw:                                            ; preds = %bb.bv
  %i.iq = load ptr, ptr %i.dd, align 8, !tbaa !82 ; 2 uses
  %.not9.i23.i.i.i264 = icmp eq ptr %i.iq, null
  %i.ir = sext i32 %spec.select.i.i.i262 to i64
  %i.is = shl nsw i64 %i.ir, 2                    ; 2 uses
  br i1 %.not9.i23.i.i.i264, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.it = tail call ptr @realloc(ptr noundef nonnull %i.iq, i64 noundef %i.is) #21
  br label %Vec_IntGrow.exit.sink.split.i.i.i252

bb.by:                                            ; preds = %bb.bw
  %i.iu = tail call noalias ptr @malloc(i64 noundef %i.is) #20
  br label %Vec_IntGrow.exit.sink.split.i.i.i252

Vec_IntGrow.exit.sink.split.i.i.i252:             ; preds = %bb.bx, %bb.by, %bb.bs, %bb.bt
  %storemerge397 = phi ptr [ %i.io, %bb.bt ], [ %i.in, %bb.bs ], [ %i.it, %bb.bx ], [ %i.iu, %bb.by ]
  %spec.select.sink.i.i.i253 = phi i32 [ %4, %bb.bt ], [ %4, %bb.bs ], [ %spec.select.i.i.i262, %bb.bx ], [ %spec.select.i.i.i262, %bb.by ]
  store ptr %storemerge397, ptr %i.dd, align 8, !tbaa !82
  store i32 %spec.select.sink.i.i.i253, ptr %i.db, align 8, !tbaa !79
  %.pre.i.i254 = load i32, ptr %i.dc, align 4, !tbaa !81
  %.pre467.a = sext i32 %.pre.i.i254 to i64
  br label %Vec_IntGrow.exit.i.i.i255

Vec_IntGrow.exit.i.i.i255:                        ; preds = %Vec_IntGrow.exit.sink.split.i.i.i252, %bb.bv, %bb.bu, %bb.bq
  %.pre-phi468 = phi i64 [ %.pre467.a, %Vec_IntGrow.exit.sink.split.i.i.i252 ], [ %i.ih, %bb.bv ], [ %i.ih, %bb.bu ], [ %i.ih, %bb.bq ] ; 3 uses
  %.not4.i.i256 = icmp sgt i64 %.pre-phi468, %indvars.iv433.a
  br i1 %.not4.i.i256, label %._crit_edge.i.i.i260, label %.lr.ph.i.i.i257

.lr.ph.i.i.i257:                                  ; preds = %Vec_IntGrow.exit.i.i.i255
  %i.iv = load ptr, ptr %i.dd, align 8, !tbaa !82
  %wide.trip.count.i.i.i258 = sext i32 %4 to i64
  %i.iw = shl nsw i64 %.pre-phi468, 2
  %scevgep.i.i259 = getelementptr i8, ptr %i.iv, i64 %i.iw
  %i.ix = sub nsw i64 %wide.trip.count.i.i.i258, %.pre-phi468
  %i.iy = shl nsw i64 %i.ix, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i.i259, i8 0, i64 %i.iy, i1 false), !tbaa !33
  br label %._crit_edge.i.i.i260

._crit_edge.i.i.i260:                             ; preds = %.lr.ph.i.i.i257, %Vec_IntGrow.exit.i.i.i255
  store i32 %4, ptr %i.dc, align 4, !tbaa !81
  br label %Bac_ObjSetName.exit265

Bac_ObjSetName.exit265:                           ; preds = %bb.bo, %._crit_edge.i.i.i260
  %.val.i.i261 = load ptr, ptr %i.dd, align 8, !tbaa !82
  %i.iz = getelementptr inbounds [4 x i8], ptr %.val.i.i261, i64 %indvars.iv433.a
  store i32 %i.if, ptr %i.iz, align 4, !tbaa !33
  %i.ja = load i32, ptr %i.dg, align 4, !tbaa !81 ; 4 uses
  %.not.i.not.i266 = icmp slt i32 %i.hf, %i.ja
  br i1 %.not.i.not.i266, label %Vec_IntSetEntryFull.exit283, label %bb.bz

bb.bz:                                            ; preds = %Bac_ObjSetName.exit265
  %i.jb = load i32, ptr %2, align 8, !tbaa !79    ; 4 uses
  %i.jc = shl nsw i32 %i.jb, 1                    ; 2 uses
  %.not.i267 = icmp slt i32 %i.hf, %i.jc
  %.not.i.i.not.i268 = icmp sgt i32 %i.jb, %i.hf  ; 2 uses
  br i1 %.not.i267, label %bb.ce, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  br i1 %.not.i.i.not.i268, label %Vec_IntGrow.exit.i.i273, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.jd = load ptr, ptr %i.dh, align 8, !tbaa !82 ; 2 uses
  %.not9.i.i.i269 = icmp eq ptr %i.jd, null
  %i.je = sext i32 %i.hg to i64
  %i.jf = shl nsw i64 %i.je, 2                    ; 2 uses
  br i1 %.not9.i.i.i269, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.jg = tail call ptr @realloc(ptr noundef nonnull %i.jd, i64 noundef %i.jf) #21
  br label %Vec_IntGrow.exit.sink.split.i.i270

bb.cd:                                            ; preds = %bb.cb
  %i.jh = tail call noalias ptr @malloc(i64 noundef %i.jf) #20
  br label %Vec_IntGrow.exit.sink.split.i.i270

bb.ce:                                            ; preds = %bb.bz
  br i1 %.not.i.i.not.i268, label %Vec_IntGrow.exit.i.i273, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.ji = icmp slt i32 %i.jb, 1073741823
  %spec.select.i.i280 = select i1 %i.ji, i32 %i.jc, i32 2147483647 ; 4 uses
  %.not.i22.i.i281 = icmp slt i32 %i.jb, %spec.select.i.i280
  br i1 %.not.i22.i.i281, label %bb.cg, label %Vec_IntGrow.exit.i.i273

bb.cg:                                            ; preds = %bb.cf
  %i.jj = load ptr, ptr %i.dh, align 8, !tbaa !82 ; 2 uses
  %.not9.i23.i.i282 = icmp eq ptr %i.jj, null
  %i.jk = sext i32 %spec.select.i.i280 to i64
  %i.jl = shl nsw i64 %i.jk, 2                    ; 2 uses
  br i1 %.not9.i23.i.i282, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.jm = tail call ptr @realloc(ptr noundef nonnull %i.jj, i64 noundef %i.jl) #21
  br label %Vec_IntGrow.exit.sink.split.i.i270

bb.ci:                                            ; preds = %bb.cg
  %i.jn = tail call noalias ptr @malloc(i64 noundef %i.jl) #20
  br label %Vec_IntGrow.exit.sink.split.i.i270

Vec_IntGrow.exit.sink.split.i.i270:               ; preds = %bb.ch, %bb.ci, %bb.cc, %bb.cd
  %storemerge398 = phi ptr [ %i.jh, %bb.cd ], [ %i.jg, %bb.cc ], [ %i.jm, %bb.ch ], [ %i.jn, %bb.ci ]
  %spec.select.sink.i.i271 = phi i32 [ %i.hg, %bb.cd ], [ %i.hg, %bb.cc ], [ %spec.select.i.i280, %bb.ch ], [ %spec.select.i.i280, %bb.ci ]
  store ptr %storemerge398, ptr %i.dh, align 8, !tbaa !82
  store i32 %spec.select.sink.i.i271, ptr %2, align 8, !tbaa !79
  %.pre.i272 = load i32, ptr %i.dg, align 4, !tbaa !81
  br label %Vec_IntGrow.exit.i.i273

Vec_IntGrow.exit.i.i273:                          ; preds = %Vec_IntGrow.exit.sink.split.i.i270, %bb.cf, %bb.ce, %bb.ca
  %i.jo = phi i32 [ %.pre.i272, %Vec_IntGrow.exit.sink.split.i.i270 ], [ %i.ja, %bb.cf ], [ %i.ja, %bb.ce ], [ %i.ja, %bb.ca ] ; 2 uses
  %.not4.i274 = icmp sgt i32 %i.jo, %i.hf
  br i1 %.not4.i274, label %._crit_edge.i.i278, label %.lr.ph.i.i275

.lr.ph.i.i275:                                    ; preds = %Vec_IntGrow.exit.i.i273
  %i.jp = load ptr, ptr %i.dh, align 8, !tbaa !82
  %i.jq = sext i32 %i.jo to i64                   ; 2 uses
  %wide.trip.count.i.i276 = sext i32 %i.hg to i64
  %i.jr = shl nsw i64 %i.jq, 2
  %scevgep.i277 = getelementptr i8, ptr %i.jp, i64 %i.jr
  %i.js = sub nsw i64 %wide.trip.count.i.i276, %i.jq
  %i.jt = shl nsw i64 %i.js, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i277, i8 -1, i64 %i.jt, i1 false), !tbaa !33
  br label %._crit_edge.i.i278

._crit_edge.i.i278:                               ; preds = %.lr.ph.i.i275, %Vec_IntGrow.exit.i.i273
  store i32 %i.hg, ptr %i.dg, align 4, !tbaa !81
  br label %Vec_IntSetEntryFull.exit283

Vec_IntSetEntryFull.exit283:                      ; preds = %Bac_ObjSetName.exit265, %._crit_edge.i.i278
  %.val.i279 = load ptr, ptr %i.dh, align 8, !tbaa !82
  %i.ju = getelementptr inbounds [4 x i8], ptr %.val.i279, i64 %i.ib
  %i.jv = trunc nsw i64 %indvars.iv433.a to i32   ; 2 uses
  store i32 %i.jv, ptr %i.ju, align 4, !tbaa !33
  %i.jw = add nuw nsw i32 %.0148407, 1
  %indvars.iv.next434 = add nsw i64 %indvars.iv433.a, 1 ; 2 uses
  %.val184 = load i32, ptr %i.de, align 4, !tbaa !88
  %i.jx = sext i32 %.val184 to i64
  %i.jy = icmp slt i64 %indvars.iv.next434, %i.jx
  br i1 %i.jy, label %.lr.ph410, label %.critedge4, !llvm.loop !90

.critedge4:                                       ; preds = %.lr.ph410, %Vec_IntSetEntryFull.exit283, %Bac_ObjSetName.exit229
  %i.jz = load i32, ptr %i.cw, align 4, !tbaa !81 ; 7 uses
  %i.ka = load i32, ptr %3, align 8, !tbaa !79
  %i.kb = icmp eq i32 %i.jz, %i.ka
  br i1 %i.kb, label %bb.cj, label %.critedge4.Vec_IntPush.exit_crit_edge

.critedge4.Vec_IntPush.exit_crit_edge:            ; preds = %.critedge4
  %.pre456 = load ptr, ptr %i.di, align 8, !tbaa !82
  br label %Vec_IntPush.exit

bb.cj:                                            ; preds = %.critedge4
  %i.kc = icmp slt i32 %i.jz, 16
  br i1 %i.kc, label %bb.ck, label %bb.cn

bb.ck:                                            ; preds = %bb.cj
  %i.kd = load ptr, ptr %i.di, align 8, !tbaa !82 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.kd, null
  br i1 %.not9.i.i, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.ke = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.kd, i64 noundef 64) #21
  br label %Vec_IntGrow.exit11.sink.split.i

bb.cm:                                            ; preds = %bb.ck
  %i.kf = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #20
  br label %Vec_IntGrow.exit11.sink.split.i

bb.cn:                                            ; preds = %bb.cj
  %i.kg = icmp samesign ult i32 %i.jz, 1073741823
  %i.kh = shl nuw nsw i32 %i.jz, 1
  %spec.select.i = select i1 %i.kg, i32 %i.kh, i32 2147483647 ; 4 uses
  %.not.i9.i = icmp samesign ult i32 %i.jz, %spec.select.i
  %.pre457 = load ptr, ptr %i.di, align 8, !tbaa !82 ; 3 uses
  br i1 %.not.i9.i, label %bb.co, label %Vec_IntPush.exit

bb.co:                                            ; preds = %bb.cn
  %.not9.i10.i = icmp eq ptr %.pre457, null
  %i.ki = zext nneg i32 %spec.select.i to i64
  %i.kj = shl nuw nsw i64 %i.ki, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.kk = tail call ptr @realloc(ptr noundef nonnull %.pre457, i64 noundef %i.kj) #21
  br label %Vec_IntGrow.exit11.sink.split.i

bb.cq:                                            ; preds = %bb.co
  %i.kl = tail call noalias ptr @malloc(i64 noundef %i.kj) #20
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.cp, %bb.cq, %bb.cl, %bb.cm
  %i.km = phi ptr [ %i.kf, %bb.cm ], [ %i.ke, %bb.cl ], [ %i.kk, %bb.cp ], [ %i.kl, %bb.cq ] ; 2 uses
  %spec.select.sink.i = phi i32 [ 16, %bb.cm ], [ 16, %bb.cl ], [ %spec.select.i, %bb.cp ], [ %spec.select.i, %bb.cq ]
  store ptr %i.km, ptr %i.di, align 8, !tbaa !82
  store i32 %spec.select.sink.i, ptr %3, align 8, !tbaa !79
  %.pre458 = load i32, ptr %i.cw, align 4, !tbaa !81
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %.critedge4.Vec_IntPush.exit_crit_edge, %bb.cn, %Vec_IntGrow.exit11.sink.split.i
  %i.kn = phi i32 [ %i.jz, %.critedge4.Vec_IntPush.exit_crit_edge ], [ %i.jz, %bb.cn ], [ %.pre458, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.ko = phi ptr [ %.pre456, %.critedge4.Vec_IntPush.exit_crit_edge ], [ %.pre457, %bb.cn ], [ %i.km, %Vec_IntGrow.exit11.sink.split.i ]
  %i.kp = add nsw i32 %i.kn, 1
  store i32 %i.kp, ptr %i.cw, align 4, !tbaa !81
  %i.kq = sext i32 %i.kn to i64
  %i.kr = getelementptr inbounds [4 x i8], ptr %i.ko, i64 %i.kq
  store i32 %i.fc, ptr %i.kr, align 4, !tbaa !33
  %indvars.iv.next437 = add nuw nsw i64 %indvars.iv436, 1 ; 2 uses
  %.val178 = load i32, ptr %i.cx, align 4, !tbaa !38 ; 3 uses
  %i.ks = sext i32 %.val178 to i64
  %i.kt = icmp slt i64 %indvars.iv.next437, %i.ks
  br i1 %i.kt, label %bb.ai, label %.critedge2.preheader, !llvm.loop !91

.critedge6.preheader:                             ; preds = %.critedge8, %.critedge, %.critedge2.preheader
  %i.ku = getelementptr i8, ptr %i.f, i64 4       ; 2 uses
  %.val174424 = load i32, ptr %i.ku, align 4, !tbaa !38
  %i.kv = icmp sgt i32 %.val174424, 0
  br i1 %i.kv, label %.lr.ph426, label %.critedge10.preheader

.lr.ph426:                                        ; preds = %.critedge6.preheader
  %i.kw = getelementptr i8, ptr %i.f, i64 8
  %i.kx = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 6 uses
  %i.ky = getelementptr i8, ptr %2, i64 8         ; 10 uses
  br label %bb.eb

bb.cr:                                            ; preds = %.lr.ph423, %.critedge8
  %.val175461 = phi i32 [ %.val178, %.lr.ph423 ], [ %.val175, %.critedge8 ]
  %indvars.iv446 = phi i64 [ 0, %.lr.ph423 ], [ %indvars.iv.next447, %.critedge8 ] ; 3 uses
  %.val182 = load ptr, ptr %i.dl, align 8, !tbaa !82
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %.val182, i64 %indvars.iv446
  %i.la = load i32, ptr %i.kz, align 4, !tbaa !33 ; 2 uses
  %i.lb = icmp sgt i32 %i.la, 0
  br i1 %i.lb, label %.lr.ph419, label %.critedge8

.lr.ph419:                                        ; preds = %bb.cr
  %.val164 = load ptr, ptr %i.dk, align 8, !tbaa !34
  %i.lc = getelementptr inbounds nuw [8 x i8], ptr %.val164, i64 %indvars.iv446
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !37
  %i.le = getelementptr i8, ptr %i.ld, i64 8
  %i.lf = zext nneg i32 %i.la to i64              ; 2 uses
  br label %bb.cs

bb.cs:                                            ; preds = %.lr.ph419, %Bac_ObjSetFanin.exit
  %indvars.iv441 = phi i64 [ 0, %.lr.ph419 ], [ %indvars.iv.next442, %Bac_ObjSetFanin.exit ]
  %indvars.iv439 = phi i64 [ %i.lf, %.lr.ph419 ], [ %indvars.iv.next440, %Bac_ObjSetFanin.exit ] ; 9 uses
  %indvars.iv.next440 = add nsw i64 %indvars.iv439, -1 ; 3 uses
  %.val186 = load ptr, ptr %i.dm, align 8, !tbaa !89
  %i.lg = getelementptr inbounds nuw i8, ptr %.val186, i64 %indvars.iv.next440
  %i.lh = load i8, ptr %i.lg, align 1, !tbaa !29
  %.mask.i284 = and i8 %i.lh, -2
  %.not = icmp eq i8 %.mask.i284, 6
  br i1 %.not, label %bb.ct, label %.critedge8.loopexit

bb.ct:                                            ; preds = %bb.cs
  %indvars.iv.next442 = add nuw nsw i64 %indvars.iv441, 1 ; 3 uses
  %.val163 = load ptr, ptr %i.le, align 8, !tbaa !34
  %.idx = shl nuw nsw i64 %indvars.iv.next442, 4
  %i.li = getelementptr inbounds nuw i8, ptr %.val163, i64 %.idx
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 8
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !37 ; 2 uses
  %i.ll = load ptr, ptr %0, align 8, !tbaa !68
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 16
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !80
  %i.lo = tail call i32 @Abc_NamStrFindOrAdd(ptr noundef %i.ln, ptr noundef %i.lk, ptr noundef null) #19 ; 10 uses
  %i.lp = add nsw i32 %i.lo, 1                    ; 11 uses
  %i.lq = load i32, ptr %i.dn, align 4, !tbaa !81 ; 5 uses
  %.not.i.not.i285 = icmp slt i32 %i.lo, %i.lq
  br i1 %.not.i.not.i285, label %Vec_IntGetEntryFull.exit302, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.lr = load i32, ptr %2, align 8, !tbaa !79    ; 4 uses
  %i.ls = shl nsw i32 %i.lr, 1                    ; 2 uses
  %.not.i286 = icmp slt i32 %i.lo, %i.ls
  %.not.i.i.not.i287 = icmp sgt i32 %i.lr, %i.lo  ; 2 uses
  br i1 %.not.i286, label %bb.cz, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  br i1 %.not.i.i.not.i287, label %Vec_IntGrow.exit.i.i292, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.lt = load ptr, ptr %i.do, align 8, !tbaa !82 ; 2 uses
  %.not9.i.i.i288 = icmp eq ptr %i.lt, null
  %i.lu = sext i32 %i.lp to i64
  %i.lv = shl nsw i64 %i.lu, 2                    ; 2 uses
  br i1 %.not9.i.i.i288, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.lw = tail call ptr @realloc(ptr noundef nonnull %i.lt, i64 noundef %i.lv) #21
  br label %Vec_IntGrow.exit.sink.split.i.i289

bb.cy:                                            ; preds = %bb.cw
  %i.lx = tail call noalias ptr @malloc(i64 noundef %i.lv) #20
  br label %Vec_IntGrow.exit.sink.split.i.i289

bb.cz:                                            ; preds = %bb.cu
  br i1 %.not.i.i.not.i287, label %Vec_IntGrow.exit.i.i292, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.ly = icmp slt i32 %i.lr, 1073741823
  %spec.select.i.i299 = select i1 %i.ly, i32 %i.ls, i32 2147483647 ; 4 uses
  %.not.i22.i.i300 = icmp slt i32 %i.lr, %spec.select.i.i299
  br i1 %.not.i22.i.i300, label %bb.db, label %Vec_IntGrow.exit.i.i292

bb.db:                                            ; preds = %bb.da
  %i.lz = load ptr, ptr %i.do, align 8, !tbaa !82 ; 2 uses
  %.not9.i23.i.i301 = icmp eq ptr %i.lz, null
  %i.ma = sext i32 %spec.select.i.i299 to i64
  %i.mb = shl nsw i64 %i.ma, 2                    ; 2 uses
  br i1 %.not9.i23.i.i301, label %bb.dd, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.mc = tail call ptr @realloc(ptr noundef nonnull %i.lz, i64 noundef %i.mb) #21
  br label %Vec_IntGrow.exit.sink.split.i.i289

bb.dd:                                            ; preds = %bb.db
  %i.md = tail call noalias ptr @malloc(i64 noundef %i.mb) #20
  br label %Vec_IntGrow.exit.sink.split.i.i289

Vec_IntGrow.exit.sink.split.i.i289:               ; preds = %bb.dc, %bb.dd, %bb.cx, %bb.cy
  %storemerge563 = phi ptr [ %i.lx, %bb.cy ], [ %i.lw, %bb.cx ], [ %i.mc, %bb.dc ], [ %i.md, %bb.dd ]
  %spec.select.sink.i.i290 = phi i32 [ %i.lp, %bb.cy ], [ %i.lp, %bb.cx ], [ %spec.select.i.i299, %bb.dc ], [ %spec.select.i.i299, %bb.dd ]
  store ptr %storemerge563, ptr %i.do, align 8, !tbaa !82
  store i32 %spec.select.sink.i.i290, ptr %2, align 8, !tbaa !79
  %.pre.i291 = load i32, ptr %i.dn, align 4, !tbaa !81
  br label %Vec_IntGrow.exit.i.i292

Vec_IntGrow.exit.i.i292:                          ; preds = %Vec_IntGrow.exit.sink.split.i.i289, %bb.da, %bb.cz, %bb.cv
  %i.me = phi i32 [ %.pre.i291, %Vec_IntGrow.exit.sink.split.i.i289 ], [ %i.lq, %bb.da ], [ %i.lq, %bb.cz ], [ %i.lq, %bb.cv ] ; 2 uses
  %.not3.i293 = icmp sgt i32 %i.me, %i.lo
  br i1 %.not3.i293, label %._crit_edge.i.i297, label %.lr.ph.i.i294

.lr.ph.i.i294:                                    ; preds = %Vec_IntGrow.exit.i.i292
  %i.mf = load ptr, ptr %i.do, align 8, !tbaa !82
  %i.mg = sext i32 %i.me to i64                   ; 2 uses
  %wide.trip.count.i.i295 = sext i32 %i.lp to i64
  %i.mh = shl nsw i64 %i.mg, 2
  %scevgep.i296 = getelementptr i8, ptr %i.mf, i64 %i.mh
  %i.mi = sub nsw i64 %wide.trip.count.i.i295, %i.mg
  %i.mj = shl nsw i64 %i.mi, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i296, i8 -1, i64 %i.mj, i1 false), !tbaa !33
end_hunk_0
