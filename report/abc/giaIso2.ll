Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/giaIso2?download=true
inline.NumInlined: 422
inline.NumDeleted: 93
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@Gia_Iso2ManCheckIsoClassesSkip:bb.a
  br label %Vec_IntGrow.exit11.sink.split.i.i

Vec_IntGrow.exit11.sink.split.i.i:                ; preds = %bb.l, %bb.k
  %.pre34.i = phi i32 [ 0, %bb.l ], [ %.pre34.i.pre, %bb.k ]
  %i.bx = phi ptr [ %i.bw, %bb.l ], [ %i.bv, %bb.k ] ; 2 uses
  store ptr %i.bx, ptr %i.e, align 8, !tbaa !34
  store i32 16, ptr %i.b, align 8, !tbaa !33
  br label %Vec_IntPush.exit.i

Vec_IntPush.exit.i:                               ; preds = %.lr.ph.i, %Vec_IntGrow.exit11.sink.split.i.i
  %i.by = phi i32 [ %.pre34.i, %Vec_IntGrow.exit11.sink.split.i.i ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.bz = phi ptr [ %i.bx, %Vec_IntGrow.exit11.sink.split.i.i ], [ %i.bu, %.lr.ph.i ]
  %i.ca = add nsw i32 %i.by, 1
  store i32 %i.ca, ptr %i.c, align 4, !tbaa !30
  %i.cb = sext i32 %i.by to i64
  %i.cc = getelementptr inbounds [4 x i8], ptr %i.bz, i64 %i.cb
  store i32 %i.br, ptr %i.cc, align 4, !tbaa !36
  store i32 0, ptr %i.k, align 4, !tbaa !30
  tail call void @Gia_ManIncrementTravId(ptr noundef nonnull %0) #27
  %.val25.i86 = load i32, ptr %i.c, align 4, !tbaa !30
  %i.cd = icmp sgt i32 %.val25.i86, 0
  br i1 %i.cd, label %.lr.ph28.i, label %Gia_Iso2ManCollectOrder.exit

.lr.ph28.i:                                       ; preds = %Vec_IntPush.exit.i, %.lr.ph28.i
  %indvars.iv30.i = phi i64 [ %indvars.iv.next31.i, %.lr.ph28.i ], [ 0, %Vec_IntPush.exit.i ] ; 2 uses
  %.val20.i = load ptr, ptr %i.e, align 8, !tbaa !34
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %.val20.i, i64 %indvars.iv30.i
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !36
  tail call void @Gia_Iso2ManCollectOrder_rec(ptr noundef nonnull %0, i32 noundef %i.cf, ptr noundef nonnull %i.b, ptr noundef nonnull %i.j, ptr noundef nonnull %i.ah)
  %indvars.iv.next31.i = add nuw nsw i64 %indvars.iv30.i, 1 ; 2 uses
  %.val.i87 = load i32, ptr %i.c, align 4, !tbaa !30
  %i.cg = sext i32 %.val.i87 to i64
  %i.ch = icmp slt i64 %indvars.iv.next31.i, %i.cg
  br i1 %i.ch, label %.lr.ph28.i, label %Gia_Iso2ManCollectOrder.exit, !llvm.loop !109

Gia_Iso2ManCollectOrder.exit:                     ; preds = %.lr.ph28.i, %Vec_IntPush.exit.i
  %.val23.i = load i32, ptr %i.g, align 4, !tbaa !30
  %.val.i = load i32, ptr %i.k, align 4, !tbaa !30
  %.not.i62 = icmp eq i32 %.val23.i, %.val.i
  br i1 %.not.i62, label %bb.m, label %Gia_Iso2ManCheckIsoClassOneSkip.exit

bb.m:                                             ; preds = %Gia_Iso2ManCollectOrder.exit
  %i.ci = tail call i32 @Gia_Iso2ManCheckIsoPair(ptr noundef nonnull %0, ptr noundef nonnull %i.f, ptr noundef nonnull %i.j, ptr noundef nonnull %i.o, ptr noundef nonnull %i.ah)
  %.not22.i = icmp eq i32 %i.ci, 0
  br i1 %.not22.i, label %Gia_Iso2ManCheckIsoClassOneSkip.exit, label %bb.i

Gia_Iso2ManCheckIsoClassOneSkip.exit.thread:      ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  br label %bb.n

Gia_Iso2ManCheckIsoClassOneSkip.exit:             ; preds = %Gia_Iso2ManCollectOrder.exit, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %.val90 = load i32, ptr %i.be, align 4, !tbaa !30
  %i.cj = icmp sgt i32 %.val90, 0
  br i1 %i.cj, label %.lr.ph, label %.critedge2

.lr.ph:                                           ; preds = %Gia_Iso2ManCheckIsoClassOneSkip.exit
  %.promoted = load i32, ptr %i.am, align 4, !tbaa !105
  %i.ck = sext i32 %.promoted to i64
  %.pre = load i32, ptr %i.ak, align 8, !tbaa !102
  br label %bb.w

bb.n:                                             ; preds = %Gia_Iso2ManCheckIsoClassOneSkip.exit.thread, %bb.g
  %i.cl = load i32, ptr %i.am, align 4, !tbaa !105 ; 8 uses
  %i.cm = load i32, ptr %i.ak, align 8, !tbaa !102
  %i.cn = icmp eq i32 %i.cl, %i.cm
  br i1 %i.cn, label %bb.o, label %.Vec_WecGrow.exit12_crit_edge.i

.Vec_WecGrow.exit12_crit_edge.i:                  ; preds = %bb.n
  %.val8.pre.i = load ptr, ptr %i.aq, align 8, !tbaa !104
  br label %Vec_WecPushLevel.exit

bb.o:                                             ; preds = %bb.n
  %i.co = icmp slt i32 %i.cl, 16
  br i1 %i.co, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.cp = load ptr, ptr %i.aq, align 8, !tbaa !104 ; 2 uses
  %.not13.i.i = icmp eq ptr %i.cp, null
  br i1 %.not13.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cq = tail call dereferenceable_or_null(256) ptr @realloc(ptr noundef nonnull %i.cp, i64 noundef 256) #26
  br label %Vec_WecGrow.exit.i

bb.r:                                             ; preds = %bb.p
  %i.cr = tail call noalias dereferenceable_or_null(256) ptr @malloc(i64 noundef 256) #25
  br label %Vec_WecGrow.exit.i

Vec_WecGrow.exit.i:                               ; preds = %bb.r, %bb.q
  %i.cs = phi ptr [ %i.cq, %bb.q ], [ %i.cr, %bb.r ] ; 3 uses
  store ptr %i.cs, ptr %i.aq, align 8, !tbaa !104
  %i.ct = sext i32 %i.cl to i64
  %i.cu = getelementptr inbounds [16 x i8], ptr %i.cs, i64 %i.ct
  %i.cv = sub nsw i32 16, %i.cl
  %i.cw = zext nneg i32 %i.cv to i64
  %i.cx = shl nuw nsw i64 %i.cw, 4
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.cu, i8 0, i64 %i.cx, i1 false)
  store i32 16, ptr %i.ak, align 8, !tbaa !102
  br label %Vec_WecPushLevel.exit

bb.s:                                             ; preds = %bb.o
  %i.cy = shl nuw nsw i32 %i.cl, 1                ; 2 uses
  %i.cz = load ptr, ptr %i.aq, align 8, !tbaa !104 ; 2 uses
  %.not13.i10.i = icmp eq ptr %i.cz, null
  %i.da = zext nneg i32 %i.cy to i64
  %i.db = shl nuw nsw i64 %i.da, 4                ; 2 uses
  br i1 %.not13.i10.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dc = tail call ptr @realloc(ptr noundef nonnull %i.cz, i64 noundef %i.db) #26
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.dd = tail call noalias ptr @malloc(i64 noundef %i.db) #25
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.de = phi ptr [ %i.dc, %bb.t ], [ %i.dd, %bb.u ] ; 3 uses
  store ptr %i.de, ptr %i.aq, align 8, !tbaa !104
  %i.df = zext nneg i32 %i.cl to i64
  %i.dg = getelementptr inbounds nuw [16 x i8], ptr %i.de, i64 %i.df
  %i.dh = zext nneg i32 %i.cl to i64
  %i.di = shl nuw nsw i64 %i.dh, 4
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.dg, i8 0, i64 %i.di, i1 false)
  store i32 %i.cy, ptr %i.ak, align 8, !tbaa !102
  br label %Vec_WecPushLevel.exit

Vec_WecPushLevel.exit:                            ; preds = %.Vec_WecGrow.exit12_crit_edge.i, %Vec_WecGrow.exit.i, %bb.v
  %.val8.i = phi ptr [ %.val8.pre.i, %.Vec_WecGrow.exit12_crit_edge.i ], [ %i.de, %bb.v ], [ %i.cs, %Vec_WecGrow.exit.i ]
  %i.dj = add nsw i32 %i.cl, 1                    ; 2 uses
  store i32 %i.dj, ptr %i.am, align 4, !tbaa !105
  %i.dk = sext i32 %i.dj to i64
  %i.dl = getelementptr inbounds [16 x i8], ptr %.val8.i, i64 %i.dk
  %i.dm = getelementptr inbounds i8, ptr %i.dl, i64 -16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dm, ptr noundef nonnull align 8 dereferenceable(16) %i.av, i64 16, i1 false), !tbaa.struct !112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.av, i8 0, i64 16, i1 false)
  br label %.critedge2

bb.w:                                             ; preds = %.lr.ph, %Vec_IntPush.exit
  %i.dn = phi i32 [ %.pre, %.lr.ph ], [ %i.ei, %Vec_IntPush.exit ] ; 3 uses
  %indvars.iv96 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next97, %Vec_IntPush.exit ] ; 2 uses
  %indvars.iv = phi i64 [ %i.ck, %.lr.ph ], [ %indvars.iv.next, %Vec_IntPush.exit ] ; 8 uses
  %.val48 = load ptr, ptr %i.bh, align 8, !tbaa !34
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %.val48, i64 %indvars.iv96
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !36
  %i.dq = trunc nsw i64 %indvars.iv to i32
  %i.dr = icmp eq i32 %i.dn, %i.dq
  br i1 %i.dr, label %bb.x, label %.Vec_WecGrow.exit12_crit_edge.i63

.Vec_WecGrow.exit12_crit_edge.i63:                ; preds = %bb.w
  %.val8.pre.i65 = load ptr, ptr %i.aq, align 8, !tbaa !104
  br label %Vec_WecPushLevel.exit72

bb.x:                                             ; preds = %bb.w
  %i.ds = icmp slt i64 %indvars.iv, 16
  %i.dt = load ptr, ptr %i.aq, align 8, !tbaa !104 ; 3 uses
  %.not13.i.i69 = icmp eq ptr %i.dt, null         ; 2 uses
  br i1 %i.ds, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %bb.x
  br i1 %.not13.i.i69, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.du = tail call dereferenceable_or_null(256) ptr @realloc(ptr noundef nonnull %i.dt, i64 noundef 256) #26
  br label %Vec_WecGrow.exit.i71

bb.aa:                                            ; preds = %bb.y
  %i.dv = tail call noalias dereferenceable_or_null(256) ptr @malloc(i64 noundef 256) #25
  br label %Vec_WecGrow.exit.i71

Vec_WecGrow.exit.i71:                             ; preds = %bb.aa, %bb.z
  %i.dw = phi ptr [ %i.du, %bb.z ], [ %i.dv, %bb.aa ] ; 3 uses
  store ptr %i.dw, ptr %i.aq, align 8, !tbaa !104
  %i.dx = getelementptr inbounds [16 x i8], ptr %i.dw, i64 %indvars.iv
  %i.dy = sub nsw i32 16, %i.dn
  %i.dz = sext i32 %i.dy to i64
  %i.ea = shl nsw i64 %i.dz, 4
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.dx, i8 0, i64 %i.ea, i1 false)
  store i32 16, ptr %i.ak, align 8, !tbaa !102
  br label %Vec_WecPushLevel.exit72

bb.ab:                                            ; preds = %bb.x
  %i.eb = shl nuw nsw i64 %indvars.iv, 5          ; 2 uses
  br i1 %.not13.i.i69, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ec = tail call ptr @realloc(ptr noundef nonnull %i.dt, i64 noundef %i.eb) #26
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  %i.ed = tail call noalias ptr @malloc(i64 noundef %i.eb) #25
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.ee = phi ptr [ %i.ec, %bb.ac ], [ %i.ed, %bb.ad ] ; 3 uses
  store ptr %i.ee, ptr %i.aq, align 8, !tbaa !104
  %i.ef = getelementptr inbounds nuw [16 x i8], ptr %i.ee, i64 %indvars.iv
  %i.eg = shl nsw i64 %indvars.iv, 4
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ef, i8 0, i64 %i.eg, i1 false)
  %indvars.iv.tr = trunc nsw i64 %indvars.iv to i32
  %i.eh = shl nsw i32 %indvars.iv.tr, 1           ; 2 uses
  store i32 %i.eh, ptr %i.ak, align 8, !tbaa !102
  br label %Vec_WecPushLevel.exit72

Vec_WecPushLevel.exit72:                          ; preds = %.Vec_WecGrow.exit12_crit_edge.i63, %Vec_WecGrow.exit.i71, %bb.ae
  %i.ei = phi i32 [ %i.dn, %.Vec_WecGrow.exit12_crit_edge.i63 ], [ %i.eh, %bb.ae ], [ 16, %Vec_WecGrow.exit.i71 ]
  %.val8.i66 = phi ptr [ %.val8.pre.i65, %.Vec_WecGrow.exit12_crit_edge.i63 ], [ %i.ee, %bb.ae ], [ %i.dw, %Vec_WecGrow.exit.i71 ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 3 uses
  %i.ej = getelementptr inbounds [16 x i8], ptr %.val8.i66, i64 %indvars.iv.next ; 5 uses
  %i.ek = getelementptr inbounds i8, ptr %i.ej, i64 -16 ; 2 uses
  %i.el = getelementptr inbounds i8, ptr %i.ej, i64 -12 ; 3 uses
  %i.em = load i32, ptr %i.el, align 4, !tbaa !30 ; 7 uses
  %i.en = load i32, ptr %i.ek, align 8, !tbaa !33
  %i.eo = icmp eq i32 %i.em, %i.en
  br i1 %i.eo, label %bb.af, label %Vec_IntPush.exit

bb.af:                                            ; preds = %Vec_WecPushLevel.exit72
  %i.ep = icmp slt i32 %i.em, 16
  br i1 %i.ep, label %bb.ag, label %bb.aj

bb.ag:                                            ; preds = %bb.af
  %i.eq = getelementptr inbounds i8, ptr %i.ej, i64 -8 ; 2 uses
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !34 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.er, null
  br i1 %.not9.i.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.es = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.er, i64 noundef 64) #26
  br label %Vec_IntGrow.exit.i

bb.ai:                                            ; preds = %bb.ag
  %i.et = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #25
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %bb.ai, %bb.ah
  %i.eu = phi ptr [ %i.es, %bb.ah ], [ %i.et, %bb.ai ]
  store ptr %i.eu, ptr %i.eq, align 8, !tbaa !34
  br label %Vec_IntGrow.exit11.sink.split.i

bb.aj:                                            ; preds = %bb.af
  %i.ev = icmp samesign ult i32 %i.em, 1073741823
  %i.ew = shl nuw nsw i32 %i.em, 1
  %spec.select.i = select i1 %i.ev, i32 %i.ew, i32 2147483647 ; 3 uses
  %.not.i9.i = icmp samesign ult i32 %i.em, %spec.select.i
  br i1 %.not.i9.i, label %bb.ak, label %Vec_IntPush.exit

bb.ak:                                            ; preds = %bb.aj
  %i.ex = getelementptr inbounds i8, ptr %i.ej, i64 -8 ; 2 uses
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !34 ; 2 uses
  %.not9.i10.i = icmp eq ptr %i.ey, null
  %i.ez = zext nneg i32 %spec.select.i to i64
  %i.fa = shl nuw nsw i64 %i.ez, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fb = tail call ptr @realloc(ptr noundef nonnull %i.ey, i64 noundef %i.fa) #26
  br label %bb.an

bb.am:                                            ; preds = %bb.ak
  %i.fc = tail call noalias ptr @malloc(i64 noundef %i.fa) #25
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.fd = phi ptr [ %i.fb, %bb.al ], [ %i.fc, %bb.am ]
  store ptr %i.fd, ptr %i.ex, align 8, !tbaa !34
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.an, %Vec_IntGrow.exit.i
  %spec.select.sink.i = phi i32 [ %spec.select.i, %bb.an ], [ 16, %Vec_IntGrow.exit.i ]
  store i32 %spec.select.sink.i, ptr %i.ek, align 8, !tbaa !33
  %.pre105 = load i32, ptr %i.el, align 4, !tbaa !30
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %Vec_WecPushLevel.exit72, %bb.aj, %Vec_IntGrow.exit11.sink.split.i
  %i.fe = phi i32 [ %i.em, %Vec_WecPushLevel.exit72 ], [ %i.em, %bb.aj ], [ %.pre105, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.ff = getelementptr inbounds i8, ptr %i.ej, i64 -8
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !34
  %i.fh = add nsw i32 %i.fe, 1
  store i32 %i.fh, ptr %i.el, align 4, !tbaa !30
  %i.fi = sext i32 %i.fe to i64
  %i.fj = getelementptr inbounds [4 x i8], ptr %i.fg, i64 %i.fi
  store i32 %i.dp, ptr %i.fj, align 4, !tbaa !36
  %indvars.iv.next97 = add nuw nsw i64 %indvars.iv96, 1 ; 2 uses
  %.val = load i32, ptr %i.be, align 4, !tbaa !30
  %i.fk = sext i32 %.val to i64
  %i.fl = icmp slt i64 %indvars.iv.next97, %i.fk
  br i1 %i.fl, label %bb.w, label %..critedge2.loopexit_crit_edge, !llvm.loop !114

..critedge2.loopexit_crit_edge:                   ; preds = %Vec_IntPush.exit
  %i.fm = trunc nsw i64 %indvars.iv.next to i32
  store i32 %i.fm, ptr %i.am, align 4, !tbaa !105
  br label %.critedge2

.critedge2:                                       ; preds = %Gia_Iso2ManCheckIsoClassOneSkip.exit, %..critedge2.loopexit_crit_edge, %Vec_WecPushLevel.exit
  %indvars.iv.next102 = add nuw nsw i64 %indvars.iv101, 1 ; 2 uses
  %.val52 = load i32, ptr %i.ai, align 4, !tbaa !105
  %i.fn = sext i32 %.val52 to i64
  %i.fo = icmp slt i64 %indvars.iv.next102, %i.fn
  br i1 %i.fo, label %bb.e, label %.critedge.loopexit, !llvm.loop !115

.critedge.loopexit:                               ; preds = %.critedge2
  %.pre106 = load ptr, ptr %i.e, align 8, !tbaa !34
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %Vec_WecAlloc.exit
  %i.fp = phi ptr [ %.pre106, %.critedge.loopexit ], [ %i.d, %Vec_WecAlloc.exit ] ; 2 uses
  %.not.i73 = icmp eq ptr %i.fp, null
  br i1 %.not.i73, label %Vec_IntFree.exit, label %bb.ao

bb.ao:                                            ; preds = %.critedge
  tail call void @free(ptr noundef nonnull %i.fp) #27
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %.critedge, %bb.ao
  tail call void @free(ptr noundef nonnull %i.b) #27
  %i.fq = load ptr, ptr %i.i, align 8, !tbaa !34  ; 2 uses
  %.not.i74 = icmp eq ptr %i.fq, null
  br i1 %.not.i74, label %Vec_IntFree.exit75, label %bb.ap

bb.ap:                                            ; preds = %Vec_IntFree.exit
  tail call void @free(ptr noundef nonnull %i.fq) #27
  br label %Vec_IntFree.exit75

Vec_IntFree.exit75:                               ; preds = %Vec_IntFree.exit, %bb.ap
  tail call void @free(ptr noundef nonnull %i.f) #27
  %i.fr = load ptr, ptr %i.m, align 8, !tbaa !34  ; 2 uses
  %.not.i76 = icmp eq ptr %i.fr, null
  br i1 %.not.i76, label %Vec_IntFree.exit77, label %bb.aq

bb.aq:                                            ; preds = %Vec_IntFree.exit75
  tail call void @free(ptr noundef nonnull %i.fr) #27
  br label %Vec_IntFree.exit77

Vec_IntFree.exit77:                               ; preds = %Vec_IntFree.exit75, %bb.aq
  tail call void @free(ptr noundef nonnull %i.j) #27
  %i.fs = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !34 ; 2 uses
  %.not.i78 = icmp eq ptr %i.ft, null
  br i1 %.not.i78, label %Vec_IntFree.exit79, label %bb.ar

bb.ar:                                            ; preds = %Vec_IntFree.exit77
  tail call void @free(ptr noundef nonnull %i.ft) #27
  br label %Vec_IntFree.exit79

Vec_IntFree.exit79:                               ; preds = %Vec_IntFree.exit77, %bb.ar
  tail call void @free(ptr noundef nonnull %i.o) #27
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !34 ; 2 uses
  %.not.i80 = icmp eq ptr %i.fv, null
  br i1 %.not.i80, label %Vec_IntFree.exit81, label %bb.as

bb.as:                                            ; preds = %Vec_IntFree.exit79
  tail call void @free(ptr noundef nonnull %i.fv) #27
  br label %Vec_IntFree.exit81

Vec_IntFree.exit81:                               ; preds = %Vec_IntFree.exit79, %bb.as
  tail call void @free(ptr noundef nonnull %i.ah) #27
  ret ptr %i.ak
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define void @Gia_Iso2ManCheckIsoClassOne(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr nofree noundef captures(none) initializes((4, 8)) %7) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 4 uses
  store i32 0, ptr %i.b, align 4, !tbaa !30
  %i.c = getelementptr i8, ptr %1, i64 4          ; 4 uses
  %.val30 = load i32, ptr %i.c, align 4, !tbaa !30
  %i.d = icmp slt i32 %.val30, 2
  br i1 %i.d, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %1, i64 8          ; 3 uses
  %.val32 = load ptr, ptr %i.e, align 8, !tbaa !34
  %i.f = load i32, ptr %.val32, align 4, !tbaa !36
  store i32 %i.f, ptr %i.a, align 4, !tbaa !36
  call void @Gia_Iso2ManCollectOrder(ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef 1, ptr noundef %2, ptr noundef %3, ptr noundef %5)
  %.val2934 = load i32, ptr %i.c, align 4, !tbaa !30
  %i.g = icmp sgt i32 %.val2934, 1
  br i1 %i.g, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.b
  %i.h = getelementptr i8, ptr %3, i64 4
  %i.i = getelementptr i8, ptr %4, i64 4
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.o
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %bb.o ] ; 2 uses
  %.036 = phi i32 [ 1, %.lr.ph ], [ %.1, %bb.o ]  ; 3 uses
  %.val31 = load ptr, ptr %i.e, align 8, !tbaa !34
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %.val31, i64 %indvars.iv
  %i.l = load i32, ptr %i.k, align 4, !tbaa !36   ; 2 uses
  store i32 %i.l, ptr %i.a, align 4, !tbaa !36
  call void @Gia_Iso2ManCollectOrder(ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef 1, ptr noundef %2, ptr noundef %4, ptr noundef %6)
  %.val28 = load i32, ptr %i.h, align 4, !tbaa !30
  %.val = load i32, ptr %i.i, align 4, !tbaa !30
end_hunk_0
begin_hunk_1_@Gia_ManIsoReduce2:bb.a
  %.1.i80.1 = add nuw nsw i32 %.1.i80, %i.ds      ; 3 uses
  %indvars.iv.next.i81.1 = add nuw nsw i64 %indvars.iv.i75, 2 ; 2 uses
  %niter141.next.1 = add i64 %niter141, 2         ; 2 uses
  %niter141.ncmp.1 = icmp eq i64 %niter141.next.1, %unroll_iter140
  br i1 %niter141.ncmp.1, label %Vec_WecCountNonTrivial.exit82.loopexit.unr-lcssa, label %bb.z, !llvm.loop !123

Vec_WecCountNonTrivial.exit82.loopexit.unr-lcssa: ; preds = %bb.z
  %lcmp.mod136.not = icmp eq i64 %xtraiter133, 0
  br i1 %lcmp.mod136.not, label %Vec_WecCountNonTrivial.exit82, label %.epil.preheader132

.epil.preheader132:                               ; preds = %Vec_WecCountNonTrivial.exit82.loopexit.unr-lcssa, %.lr.ph.i72
  %.3.epil.init = phi i32 [ 0, %.lr.ph.i72 ], [ %.4.1, %Vec_WecCountNonTrivial.exit82.loopexit.unr-lcssa ]
  %.epil.init135 = phi i32 [ 0, %.lr.ph.i72 ], [ %i.dr, %Vec_WecCountNonTrivial.exit82.loopexit.unr-lcssa ]
  %indvars.iv.i75.epil.init = phi i64 [ 0, %.lr.ph.i72 ], [ %indvars.iv.next.i81.1, %Vec_WecCountNonTrivial.exit82.loopexit.unr-lcssa ]
  %.016.i76.epil.init = phi i32 [ 0, %.lr.ph.i72 ], [ %.1.i80.1, %Vec_WecCountNonTrivial.exit82.loopexit.unr-lcssa ]
  %lcmp.mod139 = trunc i32 %.val1314.i70 to i1
  call void @llvm.assume(i1 %lcmp.mod139)
  %i.dt = getelementptr inbounds nuw [16 x i8], ptr %.val12.i73, i64 %indvars.iv.i75.epil.init
  %i.du = getelementptr i8, ptr %i.dt, i64 4
  %.val11.i77.epil = load i32, ptr %i.du, align 4, !tbaa !30 ; 2 uses
  %i.dv = icmp sgt i32 %.val11.i77.epil, 1        ; 2 uses
  %i.dw = add nuw nsw i32 %.val11.i77.epil, %.epil.init135
  %.4.epil = select i1 %i.dv, i32 %i.dw, i32 %.3.epil.init
  %i.dx = zext i1 %i.dv to i32
  %.1.i80.epil = add nuw nsw i32 %.016.i76.epil.init, %i.dx
  br label %Vec_WecCountNonTrivial.exit82

Vec_WecCountNonTrivial.exit82:                    ; preds = %.epil.preheader132, %Vec_WecCountNonTrivial.exit82.loopexit.unr-lcssa, %Vec_IntFree.exit
  %.5 = phi i32 [ 0, %Vec_IntFree.exit ], [ %.4.1, %Vec_WecCountNonTrivial.exit82.loopexit.unr-lcssa ], [ %.4.epil, %.epil.preheader132 ]
  %.0.lcssa.i71 = phi i32 [ 0, %Vec_IntFree.exit ], [ %.1.i80.1, %Vec_WecCountNonTrivial.exit82.loopexit.unr-lcssa ], [ %.1.i80.epil, %.epil.preheader132 ]
  %.val44 = load i32, ptr %i.ag, align 8, !tbaa !42
  %.val45 = load ptr, ptr %i.ah, align 8, !tbaa !32
  %i.dy = getelementptr i8, ptr %.val45, i64 4
  %.val45.val = load i32, ptr %i.dy, align 4, !tbaa !30
  %i.dz = sub nsw i32 %.val45.val, %.val44
  %i.ea = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef %i.dz, i32 noundef %.val1314.i70, i32 noundef %.5, i32 noundef %.0.lcssa.i71) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  %i.eb = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %8) #27
  %i.ec = icmp slt i32 %i.eb, 0
  br i1 %i.ec, label %Abc_Clock.exit84, label %bb.aa

bb.aa:                                            ; preds = %Vec_WecCountNonTrivial.exit82
  %i.ed = load i64, ptr %8, align 8, !tbaa !119
  %i.ee = mul nsw i64 %i.ed, 1000000
  %i.ef = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !121
  %i.eh = sdiv i64 %i.eg, 1000
  %i.ei = add nsw i64 %i.eh, %i.ee
  br label %Abc_Clock.exit84

Abc_Clock.exit84:                                 ; preds = %Vec_WecCountNonTrivial.exit82, %bb.aa
  %.0.i83 = phi i64 [ %i.ei, %bb.aa ], [ -1, %Vec_WecCountNonTrivial.exit82 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  %i.ej = sub nsw i64 %.0.i83, %.0.i
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.8)
  %i.ek = sitofp i64 %i.ej to double
  %i.el = fdiv double %i.ek, 1.000000e+06
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.12, double noundef %i.el)
  %.not41 = icmp eq i32 %6, 0
  br i1 %.not41, label %Vec_WecPrint.exit, label %bb.ab

bb.ab:                                            ; preds = %Abc_Clock.exit84
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  %.val1922.i = load i32, ptr %i.bn, align 4, !tbaa !105 ; 2 uses
  %i.em = icmp sgt i32 %.val1922.i, 0
  br i1 %i.em, label %.lr.ph24.i, label %Vec_WecPrint.exit

.lr.ph24.i:                                       ; preds = %bb.ab, %bb.ae
  %.val1929.i = phi i32 [ %.val19.i, %bb.ae ], [ %.val1922.i, %bb.ab ]
  %indvars.iv26.i = phi i64 [ %indvars.iv.next27.i, %bb.ae ], [ 0, %bb.ab ] ; 3 uses
  %.val18.i = load ptr, ptr %i.bo, align 8, !tbaa !104
  %i.en = getelementptr inbounds nuw [16 x i8], ptr %.val18.i, i64 %indvars.iv26.i ; 2 uses
  %i.eo = getelementptr i8, ptr %i.en, i64 4      ; 3 uses
  %.val16.i = load i32, ptr %i.eo, align 4, !tbaa !30
  %i.ep = icmp eq i32 %.val16.i, 1
  br i1 %i.ep, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph24.i
  %i.eq = trunc nuw nsw i64 %indvars.iv26.i to i32
  %i.er = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, i32 noundef %i.eq) ; 0 uses
  %.val20.i = load i32, ptr %i.eo, align 4, !tbaa !30
  %i.es = icmp sgt i32 %.val20.i, 0
  br i1 %i.es, label %.lr.ph.i85, label %.critedge2.i

.lr.ph.i85:                                       ; preds = %bb.ac
  %i.et = getelementptr i8, ptr %i.en, i64 8
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ad, %.lr.ph.i85
  %indvars.iv.i86 = phi i64 [ 0, %.lr.ph.i85 ], [ %indvars.iv.next.i87, %bb.ad ] ; 2 uses
  %.val17.i = load ptr, ptr %i.et, align 8, !tbaa !34
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %.val17.i, i64 %indvars.iv.i86
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !36
  %i.ew = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, i32 noundef %i.ev) ; 0 uses
  %indvars.iv.next.i87 = add nuw nsw i64 %indvars.iv.i86, 1 ; 2 uses
  %.val.i88 = load i32, ptr %i.eo, align 4, !tbaa !30
  %i.ex = sext i32 %.val.i88 to i64
  %i.ey = icmp slt i64 %indvars.iv.next.i87, %i.ex
  br i1 %i.ey, label %bb.ad, label %.critedge2.i, !llvm.loop !126

.critedge2.i:                                     ; preds = %bb.ad, %bb.ac
  %puts.i = call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  %.val19.pre.i = load i32, ptr %i.bn, align 4, !tbaa !105
  br label %bb.ae

bb.ae:                                            ; preds = %.critedge2.i, %.lr.ph24.i
  %.val19.i = phi i32 [ %.val1929.i, %.lr.ph24.i ], [ %.val19.pre.i, %.critedge2.i ] ; 2 uses
  %indvars.iv.next27.i = add nuw nsw i64 %indvars.iv26.i, 1 ; 2 uses
  %i.ez = sext i32 %.val19.i to i64
  %i.fa = icmp slt i64 %indvars.iv.next27.i, %i.ez
  br i1 %i.fa, label %.lr.ph24.i, label %Vec_WecPrint.exit, !llvm.loop !127

Vec_WecPrint.exit:                                ; preds = %bb.ae, %bb.ab, %Abc_Clock.exit84
  %.not42 = icmp eq ptr %2, null
  br i1 %.not42, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %Vec_WecPrint.exit
  store ptr null, ptr %2, align 8, !tbaa !128
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %Vec_WecPrint.exit
  %.not43 = icmp eq ptr %1, null
  br i1 %.not43, label %bb.as, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %.val9.i89 = load i32, ptr %i.bn, align 4, !tbaa !105 ; 3 uses
  %i.fb = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #25 ; 5 uses
  %i.fc = add i32 %.val9.i89, -1
  %or.cond.i.i90 = icmp ult i32 %i.fc, 7
  %spec.store.select.i.i91 = select i1 %or.cond.i.i90, i32 8, i32 %.val9.i89 ; 4 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fb, i64 4 ; 2 uses
  store i32 0, ptr %i.fd, align 4, !tbaa !57
  store i32 %spec.store.select.i.i91, ptr %i.fb, align 8, !tbaa !60
  %.not.i.i92 = icmp eq i32 %spec.store.select.i.i91, 0
  br i1 %.not.i.i92, label %Vec_PtrAlloc.exit.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fe = sext i32 %spec.store.select.i.i91 to i64
  %i.ff = shl nsw i64 %i.fe, 3
  %i.fg = call noalias ptr @malloc(i64 noundef %i.ff) #25
  br label %Vec_PtrAlloc.exit.i

Vec_PtrAlloc.exit.i:                              ; preds = %bb.ai, %bb.ah
  %.promoted16.i = phi ptr [ %i.fg, %bb.ai ], [ null, %bb.ah ] ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fb, i64 8 ; 2 uses
  store ptr %.promoted16.i, ptr %i.fh, align 8, !tbaa !61
  %i.fi = icmp sgt i32 %.val9.i89, 0
  br i1 %i.fi, label %.lr.ph.i93, label %Vec_WecConvertToVecPtr.exit

.lr.ph.i93:                                       ; preds = %Vec_PtrAlloc.exit.i, %Vec_PtrPush.exit.i
  %indvars.iv19.i = phi i64 [ %indvars.iv.next20.i, %Vec_PtrPush.exit.i ], [ 0, %Vec_PtrAlloc.exit.i ] ; 7 uses
  %storemerge17.i = phi ptr [ %storemerge18.i, %Vec_PtrPush.exit.i ], [ %.promoted16.i, %Vec_PtrAlloc.exit.i ] ; 6 uses
  %spec.select.sink.i15.i = phi i32 [ %spec.select.sink.i14.i, %Vec_PtrPush.exit.i ], [ %spec.store.select.i.i91, %Vec_PtrAlloc.exit.i ] ; 4 uses
  %.val.i95 = load ptr, ptr %i.bo, align 8, !tbaa !104
  %i.fj = getelementptr inbounds nuw [16 x i8], ptr %.val.i95, i64 %indvars.iv19.i ; 2 uses
  %i.fk = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #25 ; 4 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fj, i64 4
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !30 ; 4 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fk, i64 4
  store i32 %i.fm, ptr %i.fn, align 4, !tbaa !30
  store i32 %i.fm, ptr %i.fk, align 8, !tbaa !33
  %.not.i10.i = icmp eq i32 %i.fm, 0
  br i1 %.not.i10.i, label %Vec_IntDup.exit.i, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph.i93
  %i.fo = sext i32 %i.fm to i64
  %i.fp = shl nsw i64 %i.fo, 2                    ; 2 uses
  %i.fq = call noalias ptr @malloc(i64 noundef %i.fp) #25
  br label %Vec_IntDup.exit.i

Vec_IntDup.exit.i:                                ; preds = %bb.aj, %.lr.ph.i93
  %.pre-phi12.i.i = phi i64 [ %i.fp, %bb.aj ], [ 0, %.lr.ph.i93 ]
  %i.fr = phi ptr [ %i.fq, %bb.aj ], [ null, %.lr.ph.i93 ] ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  store ptr %i.fr, ptr %i.fs, align 8, !tbaa !34
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !34
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.fr, ptr align 4 %i.fu, i64 %.pre-phi12.i.i, i1 false)
  %i.fv = trunc nsw i64 %indvars.iv19.i to i32
  %i.fw = icmp eq i32 %spec.select.sink.i15.i, %i.fv
  br i1 %i.fw, label %bb.ak, label %Vec_PtrPush.exit.i

bb.ak:                                            ; preds = %Vec_IntDup.exit.i
  %i.fx = icmp samesign ult i64 %indvars.iv19.i, 16
  br i1 %i.fx, label %bb.al, label %bb.ao

bb.al:                                            ; preds = %bb.ak
  %.not9.i.i.i98 = icmp eq ptr %storemerge17.i, null
  br i1 %.not9.i.i.i98, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fy = call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %storemerge17.i, i64 noundef 128) #26
  br label %Vec_PtrPush.exit.i

bb.an:                                            ; preds = %bb.al
  %i.fz = call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #25
  br label %Vec_PtrPush.exit.i

bb.ao:                                            ; preds = %bb.ak
  %i.ga = icmp samesign ult i64 %indvars.iv19.i, 1073741823
  %i.gb = shl nsw i32 %spec.select.sink.i15.i, 1
  %spec.select.i.i97 = select i1 %i.ga, i32 %i.gb, i32 2147483647 ; 4 uses
  %i.gc = sext i32 %spec.select.i.i97 to i64
  %.not.i10.i.i = icmp samesign ult i64 %indvars.iv19.i, %i.gc
  br i1 %.not.i10.i.i, label %bb.ap, label %Vec_PtrPush.exit.i

bb.ap:                                            ; preds = %bb.ao
  %.not9.i11.i.i = icmp eq ptr %storemerge17.i, null
  %i.gd = zext nneg i32 %spec.select.i.i97 to i64
  %i.ge = shl nuw nsw i64 %i.gd, 3                ; 2 uses
  br i1 %.not9.i11.i.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.gf = call ptr @realloc(ptr noundef nonnull %storemerge17.i, i64 noundef %i.ge) #26
  br label %Vec_PtrPush.exit.i

bb.ar:                                            ; preds = %bb.ap
  %i.gg = call noalias ptr @malloc(i64 noundef %i.ge) #25
  br label %Vec_PtrPush.exit.i

Vec_PtrPush.exit.i:                               ; preds = %bb.ar, %bb.aq, %bb.ao, %bb.an, %bb.am, %Vec_IntDup.exit.i
  %storemerge18.i = phi ptr [ %storemerge17.i, %Vec_IntDup.exit.i ], [ %storemerge17.i, %bb.ao ], [ %i.fz, %bb.an ], [ %i.fy, %bb.am ], [ %i.gf, %bb.aq ], [ %i.gg, %bb.ar ] ; 3 uses
  %spec.select.sink.i14.i = phi i32 [ %spec.select.sink.i15.i, %Vec_IntDup.exit.i ], [ %spec.select.sink.i15.i, %bb.ao ], [ 16, %bb.an ], [ 16, %bb.am ], [ %spec.select.i.i97, %bb.aq ], [ %spec.select.i.i97, %bb.ar ] ; 2 uses
  %indvars.iv.next20.i = add nuw nsw i64 %indvars.iv19.i, 1 ; 3 uses
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %storemerge18.i, i64 %indvars.iv19.i
  store ptr %i.fk, ptr %i.gh, align 8, !tbaa !75
  %.val8.i = load i32, ptr %i.bn, align 4, !tbaa !105
  %i.gi = sext i32 %.val8.i to i64
  %i.gj = icmp slt i64 %indvars.iv.next20.i, %i.gi
  br i1 %i.gj, label %.lr.ph.i93, label %..critedge_crit_edge.i, !llvm.loop !129

..critedge_crit_edge.i:                           ; preds = %Vec_PtrPush.exit.i
  %i.gk = trunc nsw i64 %indvars.iv.next20.i to i32
  store i32 %i.gk, ptr %i.fd, align 4, !tbaa !57
  store i32 %spec.select.sink.i14.i, ptr %i.fb, align 8
  store ptr %storemerge18.i, ptr %i.fh, align 8
  br label %Vec_WecConvertToVecPtr.exit

Vec_WecConvertToVecPtr.exit:                      ; preds = %Vec_PtrAlloc.exit.i, %..critedge_crit_edge.i
  store ptr %i.fb, ptr %1, align 8, !tbaa !128
  br label %bb.as

bb.as:                                            ; preds = %Vec_WecConvertToVecPtr.exit, %bb.ag
  %i.gl = load i32, ptr %.0, align 8, !tbaa !102  ; 2 uses
  %i.gm = icmp sgt i32 %i.gl, 0
  %.pre.i.i99 = load ptr, ptr %i.bo, align 8, !tbaa !104 ; 3 uses
  br i1 %i.gm, label %.lr.ph.i.i103.preheader, label %._crit_edge.i.i100

.lr.ph.i.i103.preheader:                          ; preds = %bb.as
  %i.gn = zext nneg i32 %i.gl to i64
  br label %.lr.ph.i.i103

.lr.ph.i.i103:                                    ; preds = %.lr.ph.i.i103.preheader, %bb.au
  %indvars.iv.i.i104 = phi i64 [ %indvars.iv.next.i.i107, %bb.au ], [ 0, %.lr.ph.i.i103.preheader ] ; 2 uses
  %i.go = getelementptr inbounds nuw [16 x i8], ptr %.pre.i.i99, i64 %indvars.iv.i.i104
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 8 ; 2 uses
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !34 ; 2 uses
  %.not15.i.i105 = icmp eq ptr %i.gq, null
  br i1 %.not15.i.i105, label %bb.au, label %bb.at

bb.at:                                            ; preds = %.lr.ph.i.i103
  call void @free(ptr noundef nonnull %i.gq) #27
  store ptr null, ptr %i.gp, align 8, !tbaa !34
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %.lr.ph.i.i103
  %indvars.iv.next.i.i107 = add nuw nsw i64 %indvars.iv.i.i104, 1 ; 2 uses
  %exitcond114.not = icmp eq i64 %indvars.iv.next.i.i107, %i.gn
  br i1 %exitcond114.not, label %._crit_edge.thread.i.i102, label %.lr.ph.i.i103, !llvm.loop !124

._crit_edge.i.i100:                               ; preds = %bb.as
  %.not.i.i101 = icmp eq ptr %.pre.i.i99, null
  br i1 %.not.i.i101, label %Vec_WecFree.exit108, label %._crit_edge.thread.i.i102

._crit_edge.thread.i.i102:                        ; preds = %bb.au, %._crit_edge.i.i100
  call void @free(ptr noundef nonnull %.pre.i.i99) #27
  br label %Vec_WecFree.exit108

Vec_WecFree.exit108:                              ; preds = %._crit_edge.i.i100, %._crit_edge.thread.i.i102
  call void @free(ptr noundef nonnull %.0) #27
  br label %bb.av

bb.av:                                            ; preds = %Vec_WecFree.exit108, %Vec_WecFree.exit
  %.037 = phi ptr [ %i.bd, %Vec_WecFree.exit ], [ %i.dc, %Vec_WecFree.exit108 ]
  ret ptr %.037
}

declare ptr @Gia_ManDup(ptr noundef) local_unnamed_addr #5

declare ptr @Gia_ManDupCones(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #15

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #16

; Function Attrs: nounwind
declare i32 @clock_gettime(i32 noundef, ptr noundef) local_unnamed_addr #17

; Function Attrs: inlinehint nounwind uwtable
define internal void @Abc_Print(i32 %0, ptr noundef %1, ...) unnamed_addr #18 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.a = load i32, ptr @enable_dbg_outs, align 4, !tbaa !36
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 (...) @Abc_FrameIsBridgeMode() #27 ; 0 uses
  call void @llvm.va_start.p0(ptr nonnull %2)
  %i.c = call i32 (...) @Abc_FrameIsBridgeMode() #27
  %.not9 = icmp eq i32 %i.c, 0
  br i1 %.not9, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = call ptr @vnsprintf(ptr noundef %1, ptr noundef nonnull %2) #27 ; 3 uses
  %i.e = load ptr, ptr @stdout, align 8, !tbaa !69
  %i.f = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.d) #29
  %i.g = trunc i64 %i.f to i32
  %i.h = call i32 @Gia_ManToBridgeText(ptr noundef %i.e, i32 noundef %i.g, ptr noundef nonnull %i.d) #27 ; 0 uses
  call void @free(ptr noundef %i.d) #27
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = load ptr, ptr @stdout, align 8, !tbaa !69, !noalias !130
  %i.j = call i32 @vfprintf(ptr noundef %i.i, ptr noundef %1, ptr noundef nonnull %2) #27, !inline_history !133 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.va_end.p0(ptr nonnull %2)
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  ret void
}

declare i32 @Abc_FrameIsBridgeMode(...) local_unnamed_addr #5

declare i32 @Gia_ManToBridgeText(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #19

declare ptr @vnsprintf(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #20

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #19

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 -1, 2) i32 @Vec_WecSortCompare3(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #11 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val6 = load ptr, ptr %i.a, align 8, !tbaa !34
  %i.b = load i32, ptr %.val6, align 4, !tbaa !36
  %i.c = getelementptr i8, ptr %1, i64 8
  %.val5 = load ptr, ptr %i.c, align 8, !tbaa !34
  %i.d = load i32, ptr %.val5, align 4, !tbaa !36
  %.0 = tail call i32 @llvm.scmp.i32.i32(i32 %i.b, i32 %i.d)
  ret i32 %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #21

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #22

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.scmp.i32.i32(i32, i32) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smax.v4i32(<4 x i32>) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #24

attributes #0 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
end_hunk_1
