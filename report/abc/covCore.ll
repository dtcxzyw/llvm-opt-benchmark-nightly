Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/covCore?download=true
inline.NumInlined: 110
inline.NumDeleted: 41
begin_hunk_0_@Abc_NodeCovSupport:bb.a

bb.at:                                            ; preds = %bb.as
  %.not9.i10.i104 = icmp eq ptr %i.bo, null
  %i.fo = zext nneg i32 %spec.select.i102 to i64
  %i.fp = shl nuw nsw i64 %i.fo, 2                ; 2 uses
  br i1 %.not9.i10.i104, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.fq = tail call ptr @realloc(ptr noundef nonnull %i.bo, i64 noundef %i.fp) #16
  br label %Vec_IntGrow.exit11.sink.split.i105

bb.av:                                            ; preds = %bb.at
  %i.fr = tail call noalias ptr @malloc(i64 noundef %i.fp) #17
  br label %Vec_IntGrow.exit11.sink.split.i105

Vec_IntGrow.exit11.sink.split.i105:               ; preds = %bb.au, %bb.av, %bb.aq, %bb.ar
  %storemerge136 = phi ptr [ %i.fl, %bb.ar ], [ %i.fk, %bb.aq ], [ %i.fq, %bb.au ], [ %i.fr, %bb.av ] ; 3 uses
  %spec.select.sink.i106 = phi i32 [ 16, %bb.ar ], [ 16, %bb.aq ], [ %spec.select.i102, %bb.au ], [ %spec.select.i102, %bb.av ] ; 4 uses
  store ptr %storemerge136, ptr %i.be, align 8, !tbaa !48
  store i32 %spec.select.sink.i106, ptr %i.ax, align 8, !tbaa !47
  br label %Vec_IntPush.exit109

Vec_IntPush.exit109:                              ; preds = %bb.an, %bb.as, %Vec_IntGrow.exit11.sink.split.i105
  %.promoted146180 = phi i32 [ %.promoted146182225, %bb.an ], [ %.promoted146182225, %bb.as ], [ %spec.select.sink.i106, %Vec_IntGrow.exit11.sink.split.i105 ]
  %i.fs = phi ptr [ %i.bs, %bb.an ], [ %i.bs, %bb.as ], [ %storemerge136, %Vec_IntGrow.exit11.sink.split.i105 ]
  %i.ft = phi i32 [ %i.br, %bb.an ], [ %i.br, %bb.as ], [ %spec.select.sink.i106, %Vec_IntGrow.exit11.sink.split.i105 ]
  %i.fu = phi ptr [ %i.bq, %bb.an ], [ %i.bq, %bb.as ], [ %storemerge136, %Vec_IntGrow.exit11.sink.split.i105 ] ; 3 uses
  %i.fv = phi i32 [ %i.bp, %bb.an ], [ %i.bp, %bb.as ], [ %spec.select.sink.i106, %Vec_IntGrow.exit11.sink.split.i105 ] ; 2 uses
  %i.fw = add nsw i32 %i.bm, 1                    ; 2 uses
  store i32 %i.fw, ptr %i.az, align 4, !tbaa !46
  %i.fx = getelementptr inbounds [4 x i8], ptr %i.fu, i64 %i.fd
  store i32 %i.fh, ptr %i.fx, align 4, !tbaa !49
  %i.fy = add nsw i32 %.069138227, 1
  br label %bb.bf

bb.aw:                                            ; preds = %bb.am
  %i.fz = load ptr, ptr %i.v, align 8, !tbaa !50
  %i.ga = getelementptr i8, ptr %i.fz, i64 8
  %.val75 = load ptr, ptr %i.ga, align 8, !tbaa !48
  %i.gb = getelementptr inbounds [4 x i8], ptr %.val75, i64 %i.fd
  store i32 %.0139226, ptr %i.gb, align 4, !tbaa !49
  %i.gc = load i32, ptr %i.bz, align 4, !tbaa !49
  %i.gd = icmp eq i32 %i.bm, %i.bn
  br i1 %i.gd, label %bb.ax, label %Vec_IntPush.exit117

bb.ax:                                            ; preds = %bb.aw
  %i.ge = icmp slt i32 %i.bn, 16
  br i1 %i.ge, label %bb.ay, label %bb.bb

bb.ay:                                            ; preds = %bb.ax
  %.not9.i.i115 = icmp eq ptr %i.bo, null
  br i1 %.not9.i.i115, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.gf = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.bo, i64 noundef 64) #16
  br label %Vec_IntGrow.exit11.sink.split.i113

bb.ba:                                            ; preds = %bb.ay
  %i.gg = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #17
  br label %Vec_IntGrow.exit11.sink.split.i113

bb.bb:                                            ; preds = %bb.ax
  %i.gh = icmp samesign ult i32 %i.bn, 1073741823
  %i.gi = shl nuw nsw i32 %i.bn, 1
  %spec.select.i110 = select i1 %i.gh, i32 %i.gi, i32 2147483647 ; 4 uses
  %.not.i9.i111 = icmp samesign ult i32 %i.bn, %spec.select.i110
  br i1 %.not.i9.i111, label %bb.bc, label %Vec_IntPush.exit117

bb.bc:                                            ; preds = %bb.bb
  %.not9.i10.i112 = icmp eq ptr %i.bo, null
  %i.gj = zext nneg i32 %spec.select.i110 to i64
  %i.gk = shl nuw nsw i64 %i.gj, 2                ; 2 uses
  br i1 %.not9.i10.i112, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.gl = tail call ptr @realloc(ptr noundef nonnull %i.bo, i64 noundef %i.gk) #16
  br label %Vec_IntGrow.exit11.sink.split.i113

bb.be:                                            ; preds = %bb.bc
  %i.gm = tail call noalias ptr @malloc(i64 noundef %i.gk) #17
  br label %Vec_IntGrow.exit11.sink.split.i113

Vec_IntGrow.exit11.sink.split.i113:               ; preds = %bb.bd, %bb.be, %bb.az, %bb.ba
  %storemerge135 = phi ptr [ %i.gg, %bb.ba ], [ %i.gf, %bb.az ], [ %i.gl, %bb.bd ], [ %i.gm, %bb.be ] ; 4 uses
  %spec.select.sink.i114 = phi i32 [ 16, %bb.ba ], [ 16, %bb.az ], [ %spec.select.i110, %bb.bd ], [ %spec.select.i110, %bb.be ] ; 5 uses
  store ptr %storemerge135, ptr %i.be, align 8, !tbaa !48
  store i32 %spec.select.sink.i114, ptr %i.ax, align 8, !tbaa !47
  br label %Vec_IntPush.exit117

Vec_IntPush.exit117:                              ; preds = %bb.aw, %bb.bb, %Vec_IntGrow.exit11.sink.split.i113
  %.promoted146184 = phi i32 [ %.promoted146182225, %bb.aw ], [ %.promoted146182225, %bb.bb ], [ %spec.select.sink.i114, %Vec_IntGrow.exit11.sink.split.i113 ]
  %i.gn = phi ptr [ %i.bs, %bb.aw ], [ %i.bs, %bb.bb ], [ %storemerge135, %Vec_IntGrow.exit11.sink.split.i113 ]
  %i.go = phi i32 [ %i.br, %bb.aw ], [ %i.br, %bb.bb ], [ %spec.select.sink.i114, %Vec_IntGrow.exit11.sink.split.i113 ]
  %i.gp = phi ptr [ %i.bq, %bb.aw ], [ %i.bq, %bb.bb ], [ %storemerge135, %Vec_IntGrow.exit11.sink.split.i113 ]
  %i.gq = phi i32 [ %i.bp, %bb.aw ], [ %i.bp, %bb.bb ], [ %spec.select.sink.i114, %Vec_IntGrow.exit11.sink.split.i113 ]
  %i.gr = phi ptr [ %i.bo, %bb.aw ], [ %i.bo, %bb.bb ], [ %storemerge135, %Vec_IntGrow.exit11.sink.split.i113 ] ; 2 uses
  %i.gs = phi i32 [ %i.bn, %bb.aw ], [ %i.bn, %bb.bb ], [ %spec.select.sink.i114, %Vec_IntGrow.exit11.sink.split.i113 ]
  %i.gt = add nsw i32 %i.bm, 1                    ; 2 uses
  store i32 %i.gt, ptr %i.az, align 4, !tbaa !46
  %i.gu = getelementptr inbounds [4 x i8], ptr %i.gr, i64 %i.fd
  store i32 %i.gc, ptr %i.gu, align 4, !tbaa !49
  %i.gv = add nsw i32 %.0139226, 1
  br label %bb.bf

bb.bf:                                            ; preds = %Vec_IntPush.exit109, %Vec_IntPush.exit117, %Vec_IntPush.exit101
  %.promoted146183 = phi i32 [ %.promoted146181, %Vec_IntPush.exit101 ], [ %.promoted146180, %Vec_IntPush.exit109 ], [ %.promoted146184, %Vec_IntPush.exit117 ] ; 3 uses
  %i.gw = phi ptr [ %i.ew, %Vec_IntPush.exit101 ], [ %i.fs, %Vec_IntPush.exit109 ], [ %i.gn, %Vec_IntPush.exit117 ] ; 3 uses
  %i.gx = phi i32 [ %i.ex, %Vec_IntPush.exit101 ], [ %i.ft, %Vec_IntPush.exit109 ], [ %i.go, %Vec_IntPush.exit117 ]
  %i.gy = phi ptr [ %i.ew, %Vec_IntPush.exit101 ], [ %i.fu, %Vec_IntPush.exit109 ], [ %i.gp, %Vec_IntPush.exit117 ]
  %i.gz = phi i32 [ %i.ex, %Vec_IntPush.exit101 ], [ %i.fv, %Vec_IntPush.exit109 ], [ %i.gq, %Vec_IntPush.exit117 ]
  %i.ha = phi ptr [ %i.ew, %Vec_IntPush.exit101 ], [ %i.fu, %Vec_IntPush.exit109 ], [ %i.gr, %Vec_IntPush.exit117 ]
  %i.hb = phi i32 [ %i.ex, %Vec_IntPush.exit101 ], [ %i.fv, %Vec_IntPush.exit109 ], [ %i.gs, %Vec_IntPush.exit117 ]
  %i.hc = phi i32 [ %i.ey, %Vec_IntPush.exit101 ], [ %i.fw, %Vec_IntPush.exit109 ], [ %i.gt, %Vec_IntPush.exit117 ] ; 3 uses
  %.170 = phi i32 [ %i.fa, %Vec_IntPush.exit101 ], [ %i.fy, %Vec_IntPush.exit109 ], [ %.069138227, %Vec_IntPush.exit117 ] ; 5 uses
  %.1 = phi i32 [ %i.fb, %Vec_IntPush.exit101 ], [ %.0139226, %Vec_IntPush.exit109 ], [ %i.gv, %Vec_IntPush.exit117 ] ; 4 uses
  %i.hd = load i32, ptr %i.c, align 4, !tbaa !46  ; 2 uses
  %i.he = icmp slt i32 %.170, %i.hd
  br i1 %i.he, label %bb.k, label %..critedge_crit_edge234, !llvm.loop !53

..critedge_crit_edge:                             ; preds = %bb.k
  %i.hf = icmp slt i32 %.170, %i.hd
  br label %.critedge

..critedge_crit_edge234:                          ; preds = %bb.bf
  br label %.critedge, !llvm.loop !53

.critedge:                                        ; preds = %..critedge_crit_edge234, %..critedge_crit_edge, %.lr.ph
  %.promoted149186 = phi ptr [ %i.gw, %..critedge_crit_edge ], [ %i.gw, %..critedge_crit_edge234 ], [ %i.bd, %.lr.ph ] ; 2 uses
  %.promoted146179 = phi i32 [ %.promoted146183, %..critedge_crit_edge ], [ %.promoted146183, %..critedge_crit_edge234 ], [ %spec.store.select.i, %.lr.ph ] ; 2 uses
  %.promoted177 = phi i32 [ %i.hc, %..critedge_crit_edge ], [ %i.hc, %..critedge_crit_edge234 ], [ 0, %.lr.ph ] ; 2 uses
  %i.hg = phi i1 [ %i.hf, %..critedge_crit_edge ], [ false, %..critedge_crit_edge234 ], [ true, %.lr.ph ]
  %.069.lcssa.ph = phi i32 [ %.170, %..critedge_crit_edge ], [ %.170, %..critedge_crit_edge234 ], [ 0, %.lr.ph ]
  %.0.lcssa.ph = phi i32 [ %.1, %..critedge_crit_edge ], [ %.1, %..critedge_crit_edge234 ], [ 0, %.lr.ph ] ; 2 uses
  br i1 %i.hg, label %.lr.ph145, label %.preheader

.lr.ph145:                                        ; preds = %.critedge
  %i.hh = sext i32 %.069.lcssa.ph to i64
  %i.hi = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.hj = sext i32 %.promoted177 to i64
  br label %bb.bg

..preheader_crit_edge:                            ; preds = %Vec_IntPush.exit125
  %i.hk = trunc nsw i64 %indvars.iv.next to i32   ; 2 uses
  store i32 %i.hk, ptr %i.az, align 4, !tbaa !46
  store i32 %spec.select.sink.i122147, ptr %i.ax, align 8
  store ptr %storemerge134151, ptr %i.be, align 8
  br label %.preheader

.preheader:                                       ; preds = %Vec_IntAlloc.exit, %..preheader_crit_edge, %.critedge
  %.0.lcssa224 = phi i32 [ %.0.lcssa.ph, %..preheader_crit_edge ], [ %.0.lcssa.ph, %.critedge ], [ 0, %Vec_IntAlloc.exit ] ; 2 uses
  %.promoted159 = phi ptr [ %storemerge134151, %..preheader_crit_edge ], [ %.promoted149186, %.critedge ], [ %i.bd, %Vec_IntAlloc.exit ]
  %.promoted156 = phi i32 [ %spec.select.sink.i122147, %..preheader_crit_edge ], [ %.promoted146179, %.critedge ], [ %spec.store.select.i, %Vec_IntAlloc.exit ]
  %.promoted154 = phi i32 [ %i.hk, %..preheader_crit_edge ], [ %.promoted177, %.critedge ], [ 0, %Vec_IntAlloc.exit ]
  %i.hl = load i32, ptr %i.e, align 4, !tbaa !46
  %i.hm = icmp slt i32 %.0.lcssa224, %i.hl
  br i1 %i.hm, label %.lr.ph153, label %bb.by

.lr.ph153:                                        ; preds = %.preheader
  %i.hn = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ho = sext i32 %.promoted154 to i64
  %i.hp = sext i32 %.0.lcssa224 to i64
  br label %bb.bp

bb.bg:                                            ; preds = %.lr.ph145, %Vec_IntPush.exit125
  %indvars.iv163 = phi i64 [ %i.hh, %.lr.ph145 ], [ %indvars.iv.next164, %Vec_IntPush.exit125 ] ; 3 uses
  %indvars.iv = phi i64 [ %i.hj, %.lr.ph145 ], [ %indvars.iv.next, %Vec_IntPush.exit125 ] ; 8 uses
  %storemerge134150 = phi ptr [ %.promoted149186, %.lr.ph145 ], [ %storemerge134151, %Vec_IntPush.exit125 ] ; 6 uses
  %spec.select.sink.i122148 = phi i32 [ %.promoted146179, %.lr.ph145 ], [ %spec.select.sink.i122147, %Vec_IntPush.exit125 ] ; 3 uses
  %i.hq = load ptr, ptr %i.a, align 8, !tbaa !45
  %i.hr = getelementptr i8, ptr %i.hq, i64 8
  %.val74 = load ptr, ptr %i.hr, align 8, !tbaa !48
  %i.hs = getelementptr inbounds [4 x i8], ptr %.val74, i64 %indvars.iv
  %i.ht = trunc nsw i64 %indvars.iv163 to i32
  store i32 %i.ht, ptr %i.hs, align 4, !tbaa !49
  %i.hu = load ptr, ptr %i.hi, align 8, !tbaa !48
  %i.hv = getelementptr inbounds [4 x i8], ptr %i.hu, i64 %indvars.iv163
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !49
  %i.hx = trunc nsw i64 %indvars.iv to i32
  %i.hy = icmp eq i32 %spec.select.sink.i122148, %i.hx
  br i1 %i.hy, label %bb.bh, label %Vec_IntPush.exit125

bb.bh:                                            ; preds = %bb.bg
  %i.hz = icmp slt i64 %indvars.iv, 16
  br i1 %i.hz, label %bb.bi, label %bb.bl

bb.bi:                                            ; preds = %bb.bh
  %.not9.i.i123 = icmp eq ptr %storemerge134150, null
  br i1 %.not9.i.i123, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.ia = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %storemerge134150, i64 noundef 64) #16
  br label %Vec_IntPush.exit125

bb.bk:                                            ; preds = %bb.bi
  %i.ib = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #17
  br label %Vec_IntPush.exit125

bb.bl:                                            ; preds = %bb.bh
  %i.ic = icmp samesign ult i64 %indvars.iv, 1073741823
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.id = shl i32 %indvars.iv.tr, 1
  %spec.select.i118 = select i1 %i.ic, i32 %i.id, i32 2147483647 ; 4 uses
  %i.ie = sext i32 %spec.select.i118 to i64
  %.not.i9.i119 = icmp samesign ult i64 %indvars.iv, %i.ie
  br i1 %.not.i9.i119, label %bb.bm, label %Vec_IntPush.exit125

bb.bm:                                            ; preds = %bb.bl
  %.not9.i10.i120 = icmp eq ptr %storemerge134150, null
  %i.if = zext nneg i32 %spec.select.i118 to i64
  %i.ig = shl nuw nsw i64 %i.if, 2                ; 2 uses
  br i1 %.not9.i10.i120, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ih = tail call ptr @realloc(ptr noundef nonnull %storemerge134150, i64 noundef %i.ig) #16
  br label %Vec_IntPush.exit125

bb.bo:                                            ; preds = %bb.bm
  %i.ii = tail call noalias ptr @malloc(i64 noundef %i.ig) #17
  br label %Vec_IntPush.exit125

Vec_IntPush.exit125:                              ; preds = %bb.bk, %bb.bj, %bb.bo, %bb.bn, %bb.bg, %bb.bl
  %storemerge134151 = phi ptr [ %storemerge134150, %bb.bg ], [ %storemerge134150, %bb.bl ], [ %i.ib, %bb.bk ], [ %i.ia, %bb.bj ], [ %i.ih, %bb.bn ], [ %i.ii, %bb.bo ] ; 4 uses
  %spec.select.sink.i122147 = phi i32 [ %spec.select.sink.i122148, %bb.bg ], [ %spec.select.sink.i122148, %bb.bl ], [ 16, %bb.bk ], [ 16, %bb.bj ], [ %spec.select.i118, %bb.bn ], [ %spec.select.i118, %bb.bo ] ; 3 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.ij = getelementptr inbounds [4 x i8], ptr %storemerge134151, i64 %indvars.iv
  store i32 %i.hw, ptr %i.ij, align 4, !tbaa !49
  %indvars.iv.next164 = add nsw i64 %indvars.iv163, 1 ; 2 uses
  %i.ik = load i32, ptr %i.c, align 4, !tbaa !46
  %i.il = sext i32 %i.ik to i64
  %i.im = icmp slt i64 %indvars.iv.next164, %i.il
  br i1 %i.im, label %bb.bg, label %..preheader_crit_edge, !llvm.loop !54

bb.bp:                                            ; preds = %.lr.ph153, %Vec_IntPush.exit133
  %indvars.iv170 = phi i64 [ %i.hp, %.lr.ph153 ], [ %indvars.iv.next171, %Vec_IntPush.exit133 ] ; 3 uses
  %indvars.iv168 = phi i64 [ %i.ho, %.lr.ph153 ], [ %indvars.iv.next169, %Vec_IntPush.exit133 ] ; 8 uses
  %storemerge160 = phi ptr [ %.promoted159, %.lr.ph153 ], [ %storemerge161, %Vec_IntPush.exit133 ] ; 6 uses
  %spec.select.sink.i130158 = phi i32 [ %.promoted156, %.lr.ph153 ], [ %spec.select.sink.i130157, %Vec_IntPush.exit133 ] ; 3 uses
  %i.in = load ptr, ptr %i.v, align 8, !tbaa !50
  %i.io = getelementptr i8, ptr %i.in, i64 8
  %.val = load ptr, ptr %i.io, align 8, !tbaa !48
  %i.ip = getelementptr inbounds [4 x i8], ptr %.val, i64 %indvars.iv168
  %i.iq = trunc nsw i64 %indvars.iv170 to i32
  store i32 %i.iq, ptr %i.ip, align 4, !tbaa !49
  %i.ir = load ptr, ptr %i.hn, align 8, !tbaa !48
  %i.is = getelementptr inbounds [4 x i8], ptr %i.ir, i64 %indvars.iv170
  %i.it = load i32, ptr %i.is, align 4, !tbaa !49
  %i.iu = trunc nsw i64 %indvars.iv168 to i32
  %i.iv = icmp eq i32 %spec.select.sink.i130158, %i.iu
  br i1 %i.iv, label %bb.bq, label %Vec_IntPush.exit133

bb.bq:                                            ; preds = %bb.bp
  %i.iw = icmp slt i64 %indvars.iv168, 16
  br i1 %i.iw, label %bb.br, label %bb.bu

bb.br:                                            ; preds = %bb.bq
  %.not9.i.i131 = icmp eq ptr %storemerge160, null
  br i1 %.not9.i.i131, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.ix = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %storemerge160, i64 noundef 64) #16
  br label %Vec_IntPush.exit133

bb.bt:                                            ; preds = %bb.br
  %i.iy = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #17
  br label %Vec_IntPush.exit133

bb.bu:                                            ; preds = %bb.bq
  %i.iz = icmp samesign ult i64 %indvars.iv168, 1073741823
  %indvars.iv168.tr = trunc i64 %indvars.iv168 to i32
  %i.ja = shl i32 %indvars.iv168.tr, 1
  %spec.select.i126 = select i1 %i.iz, i32 %i.ja, i32 2147483647 ; 4 uses
  %i.jb = sext i32 %spec.select.i126 to i64
  %.not.i9.i127 = icmp samesign ult i64 %indvars.iv168, %i.jb
  br i1 %.not.i9.i127, label %bb.bv, label %Vec_IntPush.exit133

bb.bv:                                            ; preds = %bb.bu
  %.not9.i10.i128 = icmp eq ptr %storemerge160, null
  %i.jc = zext nneg i32 %spec.select.i126 to i64
  %i.jd = shl nuw nsw i64 %i.jc, 2                ; 2 uses
  br i1 %.not9.i10.i128, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.je = tail call ptr @realloc(ptr noundef nonnull %storemerge160, i64 noundef %i.jd) #16
  br label %Vec_IntPush.exit133

bb.bx:                                            ; preds = %bb.bv
  %i.jf = tail call noalias ptr @malloc(i64 noundef %i.jd) #17
  br label %Vec_IntPush.exit133

Vec_IntPush.exit133:                              ; preds = %bb.bt, %bb.bs, %bb.bx, %bb.bw, %bb.bp, %bb.bu
  %storemerge161 = phi ptr [ %storemerge160, %bb.bp ], [ %storemerge160, %bb.bu ], [ %i.iy, %bb.bt ], [ %i.ix, %bb.bs ], [ %i.je, %bb.bw ], [ %i.jf, %bb.bx ] ; 3 uses
  %spec.select.sink.i130157 = phi i32 [ %spec.select.sink.i130158, %bb.bp ], [ %spec.select.sink.i130158, %bb.bu ], [ 16, %bb.bt ], [ 16, %bb.bs ], [ %spec.select.i126, %bb.bw ], [ %spec.select.i126, %bb.bx ] ; 2 uses
  %indvars.iv.next169 = add nsw i64 %indvars.iv168, 1 ; 2 uses
  %i.jg = getelementptr inbounds [4 x i8], ptr %storemerge161, i64 %indvars.iv168
  store i32 %i.it, ptr %i.jg, align 4, !tbaa !49
  %indvars.iv.next171 = add nsw i64 %indvars.iv170, 1 ; 2 uses
  %i.jh = load i32, ptr %i.e, align 4, !tbaa !46
  %i.ji = sext i32 %i.jh to i64
  %i.jj = icmp slt i64 %indvars.iv.next171, %i.ji
  br i1 %i.jj, label %bb.bp, label %._crit_edge, !llvm.loop !55

._crit_edge:                                      ; preds = %Vec_IntPush.exit133
  %i.jk = trunc nsw i64 %indvars.iv.next169 to i32
  store i32 %i.jk, ptr %i.az, align 4, !tbaa !46
  store i32 %spec.select.sink.i130157, ptr %i.ax, align 8
  store ptr %storemerge161, ptr %i.be, align 8
  br label %bb.by

bb.by:                                            ; preds = %._crit_edge, %.preheader
  ret ptr %i.ax
}

declare ptr @Abc_NtkFanoutCounts(ptr noundef) local_unnamed_addr #2

declare ptr @Abc_AigConst1(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @Abc_NtkCovCoversOne(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.timespec, align 8           ; 5 uses
  %4 = alloca %struct.timespec, align 8           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  %i.a = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %4) #15
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %Abc_Clock.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %4, align 8, !tbaa !30
  %.neg72 = mul i64 %i.c, -1000000
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !33
  %.neg = sdiv i64 %i.e, -1000
  %.neg73 = add i64 %.neg, %.neg72
  br label %Abc_Clock.exit

Abc_Clock.exit:                                   ; preds = %bb.a, %bb.b
  %.0.i.neg = phi i64 [ %.neg73, %bb.b ], [ 1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  %i.f = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #17 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 3 uses
  store i32 0, ptr %i.g, align 4, !tbaa !36
  store i32 100, ptr %i.f, align 8, !tbaa !56
  %i.h = call noalias dereferenceable_or_null(800) ptr @malloc(i64 noundef 800) #17
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  store ptr %i.h, ptr %i.i, align 8, !tbaa !39
  %i.j = load ptr, ptr @stdout, align 8, !tbaa !57
  %i.k = getelementptr i8, ptr %1, i64 64         ; 4 uses
  %.val59 = load ptr, ptr %i.k, align 8, !tbaa !59
  %i.l = getelementptr i8, ptr %.val59, i64 4
  %.val59.val = load i32, ptr %i.l, align 4, !tbaa !36
  %i.m = call ptr @Extra_ProgressBarStart(ptr noundef %i.j, i32 noundef %.val59.val) #15 ; 4 uses
  %.val5874 = load ptr, ptr %i.k, align 8, !tbaa !59 ; 2 uses
  %i.n = getelementptr i8, ptr %.val5874, i64 4
  %.val58.val75 = load i32, ptr %i.n, align 4, !tbaa !36
  %i.o = icmp sgt i32 %.val58.val75, 0
  br i1 %i.o, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %Abc_Clock.exit
  %.not.i = icmp eq ptr %i.m, null
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.i
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.i ] ; 4 uses
  %.val5879 = phi ptr [ %.val5874, %.lr.ph ], [ %.val58, %bb.i ]
  %.078 = phi i32 [ 1, %.lr.ph ], [ %.1, %bb.i ]  ; 3 uses
  %.04777 = phi i32 [ 0, %.lr.ph ], [ %.148, %bb.i ] ; 3 uses
  %i.p = getelementptr i8, ptr %.val5879, i64 8
  %.val60.val = load ptr, ptr %i.p, align 8, !tbaa !39
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.val60.val, i64 %indvars.iv
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !40   ; 2 uses
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = load i32, ptr %i.m, align 4, !tbaa !49
  %i.t = sext i32 %i.s to i64
  %i.u = icmp slt i64 %indvars.iv, %i.t
  br i1 %i.u, label %Extra_ProgressBarUpdate.exit, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.v = trunc nuw nsw i64 %indvars.iv to i32
  call void @Extra_ProgressBarUpdate_int(ptr noundef %i.m, i32 noundef %i.v, ptr noundef null) #15
  br label %Extra_ProgressBarUpdate.exit

Extra_ProgressBarUpdate.exit:                     ; preds = %bb.d, %bb.e
  %.val61 = load ptr, ptr %i.r, align 8, !tbaa !60
  %i.w = getelementptr i8, ptr %i.r, i64 32
  %.val62 = load ptr, ptr %i.w, align 8, !tbaa !63
  %i.x = getelementptr i8, ptr %.val61, i64 32
  %.val61.val = load ptr, ptr %i.x, align 8, !tbaa !43
  %.val62.val = load i32, ptr %.val62, align 4, !tbaa !49
  %i.y = getelementptr i8, ptr %.val61.val, i64 8
  %.val61.val.val = load ptr, ptr %i.y, align 8, !tbaa !39
  %i.z = sext i32 %.val62.val to i64
  %i.aa = getelementptr inbounds [8 x i8], ptr %.val61.val.val, i64 %i.z
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !40 ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 20
  %i.ad = load i32, ptr %i.ac, align 4
  %i.ae = and i32 %i.ad, 16
  %.not53 = icmp eq i32 %i.ae, 0
  br i1 %.not53, label %bb.g, label %bb.f

bb.f:                                             ; preds = %Extra_ProgressBarUpdate.exit
  %i.af = add nsw i32 %.04777, 1
  br label %bb.i

bb.g:                                             ; preds = %Extra_ProgressBarUpdate.exit
  %.val65 = load ptr, ptr %i.ab, align 8, !tbaa !60
  %i.ag = getelementptr i8, ptr %i.ab, i64 16     ; 2 uses
  %.val66 = load i32, ptr %i.ag, align 8, !tbaa !64
  %i.ah = getelementptr i8, ptr %.val65, i64 272
  %.val65.val = load ptr, ptr %i.ah, align 8, !tbaa !15
  %i.ai = getelementptr i8, ptr %.val65.val, i64 24
  %.val65.val.val = load ptr, ptr %i.ai, align 8, !tbaa !65
  %i.aj = getelementptr i8, ptr %.val65.val.val, i64 8
  %.val65.val.val.val = load ptr, ptr %i.aj, align 8, !tbaa !39
  %i.ak = sext i32 %.val66 to i64
  %i.al = getelementptr inbounds [8 x i8], ptr %.val65.val.val.val, i64 %i.ak
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !40
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !66
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %bb.h, label %.thread

.thread:                                          ; preds = %bb.g
  %spec.select111 = add nsw i32 %.04777, 1
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  call fastcc void @Abc_NtkCovCovers_rec(ptr noundef %0, ptr noundef nonnull %i.ab, ptr noundef nonnull %i.f)
  %.val63.pre = load ptr, ptr %i.ab, align 8, !tbaa !60
  %.val64.pre = load i32, ptr %i.ag, align 8, !tbaa !64
  %.phi.trans.insert = getelementptr i8, ptr %.val63.pre, i64 272
  %.val63.val.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !15
  %.phi.trans.insert97 = getelementptr i8, ptr %.val63.val.pre, i64 24
  %.val63.val.val.pre = load ptr, ptr %.phi.trans.insert97, align 8, !tbaa !65
  %.phi.trans.insert99 = getelementptr i8, ptr %.val63.val.val.pre, i64 8
  %.val63.val.val.val.pre = load ptr, ptr %.phi.trans.insert99, align 8, !tbaa !39
  %.phi.trans.insert101 = sext i32 %.val64.pre to i64
  %.phi.trans.insert102 = getelementptr inbounds [8 x i8], ptr %.val63.val.val.val.pre, i64 %.phi.trans.insert101
  %.pre = load ptr, ptr %.phi.trans.insert102, align 8, !tbaa !40
  %.phi.trans.insert103 = getelementptr inbounds nuw i8, ptr %.pre, i64 24
  %.pre104 = load ptr, ptr %.phi.trans.insert103, align 8, !tbaa !66
  %.pre104.fr = freeze ptr %.pre104
  %i.aq = icmp ne ptr %.pre104.fr, null           ; 2 uses
  %i.ar = zext i1 %i.aq to i32
  %spec.select = add nsw i32 %.04777, %i.ar
  %spec.select115 = select i1 %i.aq, i32 %.078, i32 0
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.thread, %bb.f
  %.148 = phi i32 [ %i.af, %bb.f ], [ %spec.select, %bb.h ], [ %spec.select111, %.thread ] ; 2 uses
  %.1 = phi i32 [ %.078, %bb.f ], [ %spec.select115, %bb.h ], [ %.078, %.thread ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.val58 = load ptr, ptr %i.k, align 8, !tbaa !59 ; 2 uses
  %i.as = getelementptr i8, ptr %.val58, i64 4
  %.val58.val = load i32, ptr %i.as, align 4, !tbaa !36
  %i.at = sext i32 %.val58.val to i64
  %i.au = icmp slt i64 %indvars.iv.next, %i.at
  br i1 %i.au, label %bb.c, label %.critedge, !llvm.loop !68

.critedge:                                        ; preds = %bb.i, %Abc_Clock.exit
  %.047.lcssa = phi i32 [ 0, %Abc_Clock.exit ], [ %.148, %bb.i ]
  %.0.lcssa = phi i32 [ 1, %Abc_Clock.exit ], [ %.1, %bb.i ]
  call void @Extra_ProgressBarStop(ptr noundef %i.m) #15
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !43 ; 2 uses
  %i.ax = getelementptr i8, ptr %i.aw, i64 4
  %.val5581 = load i32, ptr %i.ax, align 4, !tbaa !36
  %i.ay = icmp sgt i32 %.val5581, 0
  br i1 %i.ay, label %.lr.ph83, label %.critedge2
end_hunk_0
begin_hunk_1_@Abc_NtkCovCovers_rec:bb.a
  %.val158.val.i = load ptr, ptr %i.ez, align 8, !tbaa !15
  %i.fa = getelementptr i8, ptr %.val158.val.i, i64 24
  %.val158.val.val.i = load ptr, ptr %i.fa, align 8, !tbaa !65
  %i.fb = getelementptr i8, ptr %.val158.val.val.i, i64 8
  %.val158.val.val.val.i = load ptr, ptr %i.fb, align 8, !tbaa !39
  %i.fc = sext i32 %.val159.i to i64
  %i.fd = getelementptr inbounds [8 x i8], ptr %.val158.val.val.val.i, i64 %i.fc
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !40
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.sink.i = phi ptr [ %i.fe, %bb.al ], [ %i.ex, %bb.ak ]
  %i.ff = zext nneg i32 %i.cr to i64
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %.sink.i, i64 %i.ff
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !83 ; 2 uses
  %i.fi = load i32, ptr %i.bd, align 4
  %i.fj = and i32 %i.fi, 16
  %.not130.i = icmp eq i32 %i.fj, 0
  br i1 %.not130.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !82
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 48
  br label %bb.ap

bb.ao:                                            ; preds = %bb.am
  %.val156.i = load ptr, ptr %i.au, align 8, !tbaa !60
  %i.fn = getelementptr i8, ptr %i.au, i64 16
  %.val157.i = load i32, ptr %i.fn, align 8, !tbaa !64
  %i.fo = getelementptr i8, ptr %.val156.i, i64 272
  %.val156.val.i = load ptr, ptr %i.fo, align 8, !tbaa !15
  %i.fp = getelementptr i8, ptr %.val156.val.i, i64 24
  %.val156.val.val.i = load ptr, ptr %i.fp, align 8, !tbaa !65
  %i.fq = getelementptr i8, ptr %.val156.val.val.i, i64 8
  %.val156.val.val.val.i = load ptr, ptr %i.fq, align 8, !tbaa !39
  %i.fr = sext i32 %.val157.i to i64
  %i.fs = getelementptr inbounds [8 x i8], ptr %.val156.val.val.val.i, i64 %i.fr
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !40
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %.sink218.i = phi ptr [ %i.ft, %bb.ao ], [ %i.fm, %bb.an ]
  %i.fu = zext nneg i32 %i.ct to i64
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %.sink218.i, i64 %i.fu
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !83 ; 2 uses
  %i.fx = icmp ne ptr %i.fh, null
  %i.fy = icmp ne ptr %i.fw, null
  %or.cond3.i = select i1 %i.fx, i1 %i.fy, i1 false
  br i1 %or.cond3.i, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.fz = tail call fastcc ptr @Abc_NodeCovProduct(ptr noundef nonnull %0, ptr noundef nonnull %i.fh, ptr noundef nonnull %i.fw, i32 noundef 0, i32 noundef %i.cl)
  %.pre.i = load i32, ptr %i.av, align 4
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.ga = phi i32 [ %.pre.i, %bb.aq ], [ %i.et, %bb.ap ]
  %.0112.i = phi ptr [ %i.fz, %bb.aq ], [ null, %bb.ap ] ; 8 uses
  %i.gb = and i32 %i.ga, 16
  %.not131.i = icmp eq i32 %i.gb, 0
  br i1 %.not131.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !82
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 32
  br label %bb.au

bb.at:                                            ; preds = %bb.ar
  %.val154.i = load ptr, ptr %i.aq, align 8, !tbaa !60
  %i.gf = getelementptr i8, ptr %i.aq, i64 16
  %.val155.i = load i32, ptr %i.gf, align 8, !tbaa !64
  %i.gg = getelementptr i8, ptr %.val154.i, i64 272
  %.val154.val.i = load ptr, ptr %i.gg, align 8, !tbaa !15
  %i.gh = getelementptr i8, ptr %.val154.val.i, i64 24
  %.val154.val.val.i = load ptr, ptr %i.gh, align 8, !tbaa !65
  %i.gi = getelementptr i8, ptr %.val154.val.val.i, i64 8
  %.val154.val.val.val.i = load ptr, ptr %i.gi, align 8, !tbaa !39
  %i.gj = sext i32 %.val155.i to i64
  %i.gk = getelementptr inbounds [8 x i8], ptr %.val154.val.val.val.i, i64 %i.gj
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !40
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %.sink220.i = phi ptr [ %i.gl, %bb.at ], [ %i.ge, %bb.as ]
  %.sink222.i = xor i32 %i.cr, 1
  %i.gm = zext nneg i32 %.sink222.i to i64
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %.sink220.i, i64 %i.gm
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !83 ; 2 uses
  %i.gp = load i32, ptr %i.bd, align 4
  %i.gq = and i32 %i.gp, 16
  %.not134.i = icmp eq i32 %i.gq, 0
  br i1 %.not134.i, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !82
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 48
  br label %bb.ax

bb.aw:                                            ; preds = %bb.au
  %.val152.i = load ptr, ptr %i.au, align 8, !tbaa !60
  %i.gu = getelementptr i8, ptr %i.au, i64 16
  %.val153.i = load i32, ptr %i.gu, align 8, !tbaa !64
  %i.gv = getelementptr i8, ptr %.val152.i, i64 272
  %.val152.val.i = load ptr, ptr %i.gv, align 8, !tbaa !15
  %i.gw = getelementptr i8, ptr %.val152.val.i, i64 24
  %.val152.val.val.i = load ptr, ptr %i.gw, align 8, !tbaa !65
  %i.gx = getelementptr i8, ptr %.val152.val.val.i, i64 8
  %.val152.val.val.val.i = load ptr, ptr %i.gx, align 8, !tbaa !39
  %i.gy = sext i32 %.val153.i to i64
  %i.gz = getelementptr inbounds [8 x i8], ptr %.val152.val.val.val.i, i64 %i.gy
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !40
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %.sink223.i = phi ptr [ %i.ha, %bb.aw ], [ %i.gt, %bb.av ]
  %.sink225.i = xor i32 %i.ct, 1
  %i.hb = zext nneg i32 %.sink225.i to i64
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %.sink223.i, i64 %i.hb
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !83 ; 2 uses
  %i.he = icmp ne ptr %i.go, null
  %i.hf = icmp ne ptr %i.hd, null
  %or.cond5.i = select i1 %i.he, i1 %i.hf, i1 false
  br i1 %or.cond5.i, label %bb.ay, label %Abc_NodeCovSum.exit.i

bb.ay:                                            ; preds = %bb.ax
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 10 uses
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !82
  tail call void @Min_ManClean(ptr noundef %i.hh, i32 noundef %i.cl) #15
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  br label %bb.az

.preheader.i.i:                                   ; preds = %bb.bg
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  br label %bb.bh

bb.az:                                            ; preds = %bb.bg, %bb.ay
  %.07199.i.i = phi ptr [ %i.go, %bb.ay ], [ %i.ka, %bb.bg ] ; 2 uses
  %i.hl = load ptr, ptr %i.hg, align 8, !tbaa !82 ; 3 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 8
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !92
  %i.ho = tail call ptr @Extra_MmFixedEntryFetch(ptr noundef %i.hn) #15 ; 4 uses
  store ptr null, ptr %i.ho, align 8, !tbaa !85
  %i.hp = load i32, ptr %i.hl, align 8, !tbaa !93
  %i.hq = getelementptr inbounds nuw i8, ptr %i.ho, i64 8 ; 5 uses
  %i.hr = load i32, ptr %i.hq, align 8
  %i.hs = and i32 %i.hp, 1023                     ; 2 uses
  %i.ht = and i32 %i.hr, -1024
  %i.hu = or disjoint i32 %i.ht, %i.hs
  store i32 %i.hu, ptr %i.hq, align 8
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hl, i64 4 ; 2 uses
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !94
  %i.hx = shl i32 %i.hw, 10
  %.masked.i.i.i = and i32 %i.hx, 4193280
  %i.hy = or disjoint i32 %.masked.i.i.i, %i.hs   ; 3 uses
  store i32 %i.hy, ptr %i.hq, align 8
  %i.hz = getelementptr inbounds nuw i8, ptr %i.ho, i64 12 ; 2 uses
  %i.ia = load i32, ptr %i.hv, align 4, !tbaa !94
  %i.ib = sext i32 %i.ia to i64
  %i.ic = shl nsw i64 %i.ib, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.hz, i8 -1, i64 %i.ic, i1 false)
  store i32 %i.hy, ptr %i.hq, align 8
  %i.id = load ptr, ptr %i.hi, align 8, !tbaa !45 ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 4
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !46
  %i.ig = icmp sgt i32 %i.if, 0
  br i1 %i.ig, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.az
  %i.ih = getelementptr inbounds nuw i8, ptr %.07199.i.i, i64 12
  br label %bb.ba

bb.ba:                                            ; preds = %bb.bd, %.lr.ph.i.i
  %i.ii = phi ptr [ %i.id, %.lr.ph.i.i ], [ %i.jl, %bb.bd ] ; 3 uses
  %i.ij = phi i32 [ %i.hy, %.lr.ph.i.i ], [ %i.jm, %bb.bd ] ; 4 uses
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.bd ] ; 4 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ii, i64 8
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !48
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %i.il, i64 %indvars.iv.i.i
  %i.in = load i32, ptr %i.im, align 4, !tbaa !49 ; 3 uses
  %i.io = icmp eq i32 %i.in, -1
  br i1 %i.io, label %bb.bd, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ip = shl nsw i32 %i.in, 1
  %i.iq = ashr i32 %i.in, 4
  %i.ir = sext i32 %i.iq to i64
  %i.is = getelementptr inbounds [4 x i8], ptr %i.ih, i64 %i.ir
  %i.it = load i32, ptr %i.is, align 4, !tbaa !49
  %i.iu = and i32 %i.ip, 30
  %i.iv = lshr i32 %i.it, %i.iu
  %i.iw = and i32 %i.iv, 3                        ; 2 uses
  %i.ix = icmp eq i32 %i.iw, 3
  br i1 %i.ix, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.iy = xor i32 %i.iw, 3
  %indvars.iv.tr.i.i = trunc i64 %indvars.iv.i.i to i32
  %i.iz = shl i32 %indvars.iv.tr.i.i, 1
  %i.ja = and i32 %i.iz, 30
  %i.jb = shl nuw i32 %i.iy, %i.ja
  %i.jc = lshr i64 %indvars.iv.i.i, 4
  %i.jd = and i64 %i.jc, 268435455
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %i.hz, i64 %i.jd ; 2 uses
  %i.jf = load i32, ptr %i.je, align 4, !tbaa !49
  %i.jg = xor i32 %i.jf, %i.jb
  store i32 %i.jg, ptr %i.je, align 4, !tbaa !49
  %i.jh = and i32 %i.ij, -4194304
  %i.ji = add i32 %i.jh, 4194304
  %i.jj = and i32 %i.ij, 4194303
  %i.jk = or disjoint i32 %i.ji, %i.jj            ; 2 uses
  store i32 %i.jk, ptr %i.hq, align 8
  %.pre.i.i = load ptr, ptr %i.hi, align 8, !tbaa !45
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb, %bb.ba
  %i.jl = phi ptr [ %i.ii, %bb.bb ], [ %i.ii, %bb.ba ], [ %.pre.i.i, %bb.bc ] ; 2 uses
  %i.jm = phi i32 [ %i.ij, %bb.bb ], [ %i.ij, %bb.ba ], [ %i.jk, %bb.bc ]
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jl, i64 4
  %i.jo = load i32, ptr %i.jn, align 4, !tbaa !46
  %i.jp = sext i32 %i.jo to i64
  %i.jq = icmp slt i64 %indvars.iv.next.i.i, %i.jp
  br i1 %i.jq, label %bb.ba, label %._crit_edge.i.i, !llvm.loop !95

._crit_edge.i.i:                                  ; preds = %bb.bd, %bb.az
  %i.jr = load ptr, ptr %i.hg, align 8, !tbaa !82 ; 3 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 80
  %i.jt = load i32, ptr %i.js, align 8, !tbaa !96
  %i.ju = load i32, ptr %i.hj, align 4, !tbaa !97
  %i.jv = icmp sgt i32 %i.jt, %i.ju
  br i1 %i.jv, label %bb.be, label %bb.bg

bb.be:                                            ; preds = %._crit_edge.i.i
  %i.jw = tail call ptr @Min_CoverCollect(ptr noundef nonnull %i.jr, i32 noundef %i.cl) #15 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.jw, null
  br i1 %.not.i.i.i, label %Abc_NodeCovSum.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.be
  %i.jx = load ptr, ptr %i.hg, align 8, !tbaa !82
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 8
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bf, %.lr.ph.i.i.i
  %.0914.i.i.i = phi ptr [ %i.jw, %.lr.ph.i.i.i ], [ %.015.i.i.i, %bb.bf ] ; 2 uses
  %.015.i.i.i = load ptr, ptr %.0914.i.i.i, align 8, !tbaa !85 ; 2 uses
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !92
  tail call void @Extra_MmFixedEntryRecycle(ptr noundef %i.jz, ptr noundef nonnull %.0914.i.i.i) #15
  %.not12.i.i.i = icmp eq ptr %.015.i.i.i, null
  br i1 %.not12.i.i.i, label %Abc_NodeCovSum.exit.i, label %bb.bf, !llvm.loop !98

bb.bg:                                            ; preds = %._crit_edge.i.i
  tail call void @Min_SopAddCube(ptr noundef nonnull %i.jr, ptr noundef nonnull %i.ho) #15
  %i.ka = load ptr, ptr %.07199.i.i, align 8, !tbaa !85 ; 2 uses
  %.not.i168.i = icmp eq ptr %i.ka, null
  br i1 %.not.i168.i, label %.preheader.i.i, label %bb.az, !llvm.loop !99

bb.bh:                                            ; preds = %bb.bo, %.preheader.i.i
  %.070104.i.i = phi ptr [ %i.hd, %.preheader.i.i ], [ %i.mq, %bb.bo ] ; 2 uses
  %i.kb = load ptr, ptr %i.hg, align 8, !tbaa !82 ; 3 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 8
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !92
  %i.ke = tail call ptr @Extra_MmFixedEntryFetch(ptr noundef %i.kd) #15 ; 4 uses
  store ptr null, ptr %i.ke, align 8, !tbaa !85
  %i.kf = load i32, ptr %i.kb, align 8, !tbaa !93
  %i.kg = getelementptr inbounds nuw i8, ptr %i.ke, i64 8 ; 5 uses
  %i.kh = load i32, ptr %i.kg, align 8
  %i.ki = and i32 %i.kf, 1023                     ; 2 uses
  %i.kj = and i32 %i.kh, -1024
  %i.kk = or disjoint i32 %i.kj, %i.ki
  store i32 %i.kk, ptr %i.kg, align 8
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kb, i64 4 ; 2 uses
  %i.km = load i32, ptr %i.kl, align 4, !tbaa !94
  %i.kn = shl i32 %i.km, 10
  %.masked.i78.i.i = and i32 %i.kn, 4193280
  %i.ko = or disjoint i32 %.masked.i78.i.i, %i.ki ; 3 uses
  store i32 %i.ko, ptr %i.kg, align 8
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ke, i64 12 ; 2 uses
  %i.kq = load i32, ptr %i.kl, align 4, !tbaa !94
  %i.kr = sext i32 %i.kq to i64
  %i.ks = shl nsw i64 %i.kr, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.kp, i8 -1, i64 %i.ks, i1 false)
  store i32 %i.ko, ptr %i.kg, align 8
  %i.kt = load ptr, ptr %i.hk, align 8, !tbaa !50 ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 4
  %i.kv = load i32, ptr %i.ku, align 4, !tbaa !46
  %i.kw = icmp sgt i32 %i.kv, 0
  br i1 %i.kw, label %.lr.ph102.i.i, label %._crit_edge103.i.i

.lr.ph102.i.i:                                    ; preds = %bb.bh
  %i.kx = getelementptr inbounds nuw i8, ptr %.070104.i.i, i64 12
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bl, %.lr.ph102.i.i
  %i.ky = phi ptr [ %i.kt, %.lr.ph102.i.i ], [ %i.mb, %bb.bl ] ; 3 uses
  %i.kz = phi i32 [ %i.ko, %.lr.ph102.i.i ], [ %i.mc, %bb.bl ] ; 4 uses
  %indvars.iv111.i.i = phi i64 [ 0, %.lr.ph102.i.i ], [ %indvars.iv.next112.i.i, %bb.bl ] ; 4 uses
  %i.la = getelementptr inbounds nuw i8, ptr %i.ky, i64 8
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !48
  %i.lc = getelementptr inbounds nuw [4 x i8], ptr %i.lb, i64 %indvars.iv111.i.i
  %i.ld = load i32, ptr %i.lc, align 4, !tbaa !49 ; 3 uses
  %i.le = icmp eq i32 %i.ld, -1
  br i1 %i.le, label %bb.bl, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.lf = shl nsw i32 %i.ld, 1
  %i.lg = ashr i32 %i.ld, 4
  %i.lh = sext i32 %i.lg to i64
  %i.li = getelementptr inbounds [4 x i8], ptr %i.kx, i64 %i.lh
  %i.lj = load i32, ptr %i.li, align 4, !tbaa !49
  %i.lk = and i32 %i.lf, 30
  %i.ll = lshr i32 %i.lj, %i.lk
  %i.lm = and i32 %i.ll, 3                        ; 2 uses
  %i.ln = icmp eq i32 %i.lm, 3
  br i1 %i.ln, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.lo = xor i32 %i.lm, 3
  %indvars.iv111.tr.i.i = trunc i64 %indvars.iv111.i.i to i32
  %i.lp = shl i32 %indvars.iv111.tr.i.i, 1
  %i.lq = and i32 %i.lp, 30
  %i.lr = shl nuw i32 %i.lo, %i.lq
  %i.ls = lshr i64 %indvars.iv111.i.i, 4
  %i.lt = and i64 %i.ls, 268435455
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %i.kp, i64 %i.lt ; 2 uses
  %i.lv = load i32, ptr %i.lu, align 4, !tbaa !49
  %i.lw = xor i32 %i.lv, %i.lr
  store i32 %i.lw, ptr %i.lu, align 4, !tbaa !49
  %i.lx = and i32 %i.kz, -4194304
  %i.ly = add i32 %i.lx, 4194304
  %i.lz = and i32 %i.kz, 4194303
  %i.ma = or disjoint i32 %i.ly, %i.lz            ; 2 uses
  store i32 %i.ma, ptr %i.kg, align 8
  %.pre114.i.i = load ptr, ptr %i.hk, align 8, !tbaa !50
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj, %bb.bi
  %i.mb = phi ptr [ %i.ky, %bb.bj ], [ %i.ky, %bb.bi ], [ %.pre114.i.i, %bb.bk ] ; 2 uses
  %i.mc = phi i32 [ %i.kz, %bb.bj ], [ %i.kz, %bb.bi ], [ %i.ma, %bb.bk ]
  %indvars.iv.next112.i.i = add nuw nsw i64 %indvars.iv111.i.i, 1 ; 2 uses
  %i.md = getelementptr inbounds nuw i8, ptr %i.mb, i64 4
  %i.me = load i32, ptr %i.md, align 4, !tbaa !46
  %i.mf = sext i32 %i.me to i64
  %i.mg = icmp slt i64 %indvars.iv.next112.i.i, %i.mf
  br i1 %i.mg, label %bb.bi, label %._crit_edge103.i.i, !llvm.loop !100

._crit_edge103.i.i:                               ; preds = %bb.bl, %bb.bh
  %i.mh = load ptr, ptr %i.hg, align 8, !tbaa !82 ; 3 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 80
  %i.mj = load i32, ptr %i.mi, align 8, !tbaa !96
  %i.mk = load i32, ptr %i.hj, align 4, !tbaa !97
  %i.ml = icmp sgt i32 %i.mj, %i.mk
  br i1 %i.ml, label %bb.bm, label %bb.bo

bb.bm:                                            ; preds = %._crit_edge103.i.i
  %i.mm = tail call ptr @Min_CoverCollect(ptr noundef nonnull %i.mh, i32 noundef %i.cl) #15 ; 2 uses
  %.not.i79.i.i = icmp eq ptr %i.mm, null
  br i1 %.not.i79.i.i, label %Abc_NodeCovSum.exit.i, label %.lr.ph.i80.i.i

.lr.ph.i80.i.i:                                   ; preds = %bb.bm
  %i.mn = load ptr, ptr %i.hg, align 8, !tbaa !82
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 8
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bn, %.lr.ph.i80.i.i
  %.0914.i81.i.i = phi ptr [ %i.mm, %.lr.ph.i80.i.i ], [ %.015.i82.i.i, %bb.bn ] ; 2 uses
  %.015.i82.i.i = load ptr, ptr %.0914.i81.i.i, align 8, !tbaa !85 ; 2 uses
  %i.mp = load ptr, ptr %i.mo, align 8, !tbaa !92
  tail call void @Extra_MmFixedEntryRecycle(ptr noundef %i.mp, ptr noundef nonnull %.0914.i81.i.i) #15
  %.not12.i83.i.i = icmp eq ptr %.015.i82.i.i, null
  br i1 %.not12.i83.i.i, label %Abc_NodeCovSum.exit.i, label %bb.bn, !llvm.loop !98

bb.bo:                                            ; preds = %._crit_edge103.i.i
  tail call void @Min_SopAddCube(ptr noundef nonnull %i.mh, ptr noundef nonnull %i.ke) #15
  %i.mq = load ptr, ptr %.070104.i.i, align 8, !tbaa !85 ; 2 uses
  %.not77.i.i = icmp eq ptr %i.mq, null
  br i1 %.not77.i.i, label %bb.bp, label %bb.bh, !llvm.loop !101

bb.bp:                                            ; preds = %bb.bo
  %i.mr = load ptr, ptr %i.hg, align 8, !tbaa !82
  tail call void @Min_SopMinimize(ptr noundef %i.mr) #15
  %i.ms = load ptr, ptr %i.hg, align 8, !tbaa !82
  %i.mt = tail call ptr @Min_CoverCollect(ptr noundef %i.ms, i32 noundef %i.cl) #15 ; 4 uses
  %.not5.i.i.i = icmp eq ptr %i.mt, null
  br i1 %.not5.i.i.i, label %Abc_NodeCovSum.exit.i, label %.lr.ph.i85.i.i

.lr.ph.i85.i.i:                                   ; preds = %bb.bp, %.lr.ph.i85.i.i
  %.07.i.i.i = phi i32 [ %i.mu, %.lr.ph.i85.i.i ], [ 0, %bb.bp ] ; 2 uses
  %.046.i.i.i = phi ptr [ %i.mv, %.lr.ph.i85.i.i ], [ %i.mt, %bb.bp ]
  %i.mu = add nuw nsw i32 %.07.i.i.i, 1
  %i.mv = load ptr, ptr %.046.i.i.i, align 8, !tbaa !85 ; 2 uses
  %.not.i86.i.i = icmp eq ptr %i.mv, null
  br i1 %.not.i86.i.i, label %Min_CoverCountCubes.exit.thread.i.i, label %.lr.ph.i85.i.i, !llvm.loop !102

Min_CoverCountCubes.exit.thread.i.i:              ; preds = %.lr.ph.i85.i.i
  %i.mw = load i32, ptr %0, align 8, !tbaa !81
  %.not94.i.i = icmp slt i32 %.07.i.i.i, %i.mw
  br i1 %.not94.i.i, label %Abc_NodeCovPropagate.exit, label %.lr.ph.i88.i.i

.lr.ph.i88.i.i:                                   ; preds = %Min_CoverCountCubes.exit.thread.i.i
  %i.mx = load ptr, ptr %i.hg, align 8, !tbaa !82
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 8
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bq, %.lr.ph.i88.i.i
  %.0914.i89.i.i = phi ptr [ %i.mt, %.lr.ph.i88.i.i ], [ %.015.i90.i.i, %bb.bq ] ; 2 uses
  %.015.i90.i.i = load ptr, ptr %.0914.i89.i.i, align 8, !tbaa !85 ; 2 uses
  %i.mz = load ptr, ptr %i.my, align 8, !tbaa !92
  tail call void @Extra_MmFixedEntryRecycle(ptr noundef %i.mz, ptr noundef nonnull %.0914.i89.i.i) #15
  %.not12.i91.i.i = icmp eq ptr %.015.i90.i.i, null
  br i1 %.not12.i91.i.i, label %Abc_NodeCovSum.exit.i, label %bb.bq, !llvm.loop !98

Abc_NodeCovSum.exit.i:                            ; preds = %bb.bq, %bb.bn, %bb.bf, %bb.bp, %bb.bm, %bb.be, %bb.ax, %bb.ai
  %.1.i = phi ptr [ null, %bb.ai ], [ %.0112.i, %bb.ax ], [ %.0112.i, %bb.be ], [ %.0112.i, %bb.bf ], [ %.0112.i, %bb.bm ], [ %.0112.i, %bb.bn ], [ %.0112.i, %bb.bp ], [ %.0112.i, %bb.bq ] ; 2 uses
  %i.na = icmp ne ptr %.0110.i, null
  %i.nb = icmp ne ptr %.1.i, null
  %or.cond7.i = select i1 %i.na, i1 true, i1 %i.nb
  br i1 %or.cond7.i, label %Abc_NodeCovPropagate.exit, label %bb.br

bb.br:                                            ; preds = %Abc_NodeCovSum.exit.i
  %i.nc = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.nd = load ptr, ptr %i.nc, align 8, !tbaa !48 ; 2 uses
  %.not.i169.i = icmp eq ptr %i.nd, null
  br i1 %.not.i169.i, label %Abc_NodeCovPropagate.exit.thread.sink.split, label %Abc_NodeCovPropagate.exit.thread.sink.split.sink.split

Abc_NodeCovPropagate.exit:                        ; preds = %Min_CoverCountCubes.exit.thread.i.i, %Abc_NodeCovSum.exit.i
  %.0111176.i = phi ptr [ null, %Abc_NodeCovSum.exit.i ], [ %i.mt, %Min_CoverCountCubes.exit.thread.i.i ]
  %.1175.i = phi ptr [ %.1.i, %Abc_NodeCovSum.exit.i ], [ %.0112.i, %Min_CoverCountCubes.exit.thread.i.i ]
  %.val160.i = load ptr, ptr %1, align 8, !tbaa !60
  %i.ne = getelementptr i8, ptr %1, i64 16
  %.val161.i = load i32, ptr %i.ne, align 8, !tbaa !64
  %i.nf = getelementptr i8, ptr %.val160.i, i64 272
  %.val160.val.i = load ptr, ptr %i.nf, align 8, !tbaa !15
  %i.ng = getelementptr i8, ptr %.val160.val.i, i64 24
  %.val160.val.val.i = load ptr, ptr %i.ng, align 8, !tbaa !65
  %i.nh = getelementptr i8, ptr %.val160.val.val.i, i64 8
  %.val160.val.val.val.i = load ptr, ptr %i.nh, align 8, !tbaa !39
  %i.ni = sext i32 %.val161.i to i64
  %i.nj = getelementptr inbounds [8 x i8], ptr %.val160.val.val.val.i, i64 %i.ni ; 4 uses
  %i.nk = load ptr, ptr %i.nj, align 8, !tbaa !40
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nk, i64 24
  store ptr %i.cj, ptr %i.nl, align 8, !tbaa !66
  %i.nm = load ptr, ptr %i.nj, align 8, !tbaa !40
  store ptr %.1175.i, ptr %i.nm, align 8, !tbaa !83
  %i.nn = load ptr, ptr %i.nj, align 8, !tbaa !40
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 8
  store ptr %.0111176.i, ptr %i.no, align 8, !tbaa !83
  %i.np = load ptr, ptr %i.nj, align 8, !tbaa !40
  %i.nq = getelementptr inbounds nuw i8, ptr %i.np, i64 16
  store ptr %.0110.i, ptr %i.nq, align 8, !tbaa !83
  %i.nr = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ns = load i32, ptr %i.nr, align 8, !tbaa !72
  %i.nt = add nsw i32 %i.ns, 1                    ; 2 uses
  store i32 %i.nt, ptr %i.nr, align 8, !tbaa !72
  %i.nu = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 2 uses
  %i.nv = load i32, ptr %i.nu, align 4, !tbaa !73
  %i.nw = tail call range(i32 -2147483647, -2147483648) i32 @llvm.smax.i32(i32 %i.nv, i32 range(i32 -2147483647, -2147483648) %i.nt)
  store i32 %i.nw, ptr %i.nu, align 4, !tbaa !73
  br label %bb.cp

Abc_NodeCovPropagate.exit.thread.sink.split.sink.split: ; preds = %bb.br, %bb.q
  %.sink = phi ptr [ %i.cp, %bb.q ], [ %i.nd, %bb.br ]
  tail call void @free(ptr noundef nonnull %.sink) #15
  br label %Abc_NodeCovPropagate.exit.thread.sink.split

Abc_NodeCovPropagate.exit.thread.sink.split:      ; preds = %Abc_NodeCovPropagate.exit.thread.sink.split.sink.split, %bb.br, %bb.q
  tail call void @free(ptr noundef nonnull %i.cj) #15
  br label %Abc_NodeCovPropagate.exit.thread

Abc_NodeCovPropagate.exit.thread:                 ; preds = %Abc_NodeCovPropagate.exit.thread.sink.split, %bb.e, %bb.c
  %i.nx = load i32, ptr %i.o, align 4
  %i.ny = and i32 %i.nx, 16
  %.not31 = icmp eq i32 %i.ny, 0
  br i1 %.not31, label %bb.bs, label %bb.cd

bb.bs:                                            ; preds = %Abc_NodeCovPropagate.exit.thread
  %.val38 = load ptr, ptr %i.j, align 8, !tbaa !60
  %i.nz = getelementptr i8, ptr %i.j, i64 16
  %.val39 = load i32, ptr %i.nz, align 8, !tbaa !64
  %i.oa = getelementptr i8, ptr %.val38, i64 272
  %.val38.val = load ptr, ptr %i.oa, align 8, !tbaa !15
  %i.ob = getelementptr i8, ptr %.val38.val, i64 24
  %.val38.val.val = load ptr, ptr %i.ob, align 8, !tbaa !65
  %i.oc = getelementptr i8, ptr %.val38.val.val, i64 8
  %.val38.val.val.val = load ptr, ptr %i.oc, align 8, !tbaa !39
  %i.od = sext i32 %.val39 to i64
  %i.oe = getelementptr inbounds [8 x i8], ptr %.val38.val.val.val, i64 %i.od
  %i.of = load ptr, ptr %i.oe, align 8, !tbaa !40
  %i.og = getelementptr inbounds nuw i8, ptr %i.of, i64 24
  %i.oh = load ptr, ptr %i.og, align 8, !tbaa !66
  %.not32 = icmp eq ptr %i.oh, null
  br i1 %.not32, label %bb.cd, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.oi = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  %i.oj = load i32, ptr %i.oi, align 4, !tbaa !36 ; 7 uses
  %i.ok = load i32, ptr %2, align 8, !tbaa !56
  %i.ol = icmp eq i32 %i.oj, %i.ok
  br i1 %i.ol, label %bb.bu, label %Vec_PtrPush.exit

bb.bu:                                            ; preds = %bb.bt
  %i.om = icmp slt i32 %i.oj, 16
  br i1 %i.om, label %bb.bv, label %bb.by

bb.bv:                                            ; preds = %bb.bu
  %i.on = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.oo = load ptr, ptr %i.on, align 8, !tbaa !39 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.oo, null
  br i1 %.not9.i.i, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.op = tail call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %i.oo, i64 noundef 128) #16
  br label %Vec_PtrGrow.exit.i

bb.bx:                                            ; preds = %bb.bv
  %i.oq = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #17
  br label %Vec_PtrGrow.exit.i

Vec_PtrGrow.exit.i:                               ; preds = %bb.bx, %bb.bw
  %i.or = phi ptr [ %i.op, %bb.bw ], [ %i.oq, %bb.bx ]
end_hunk_1
begin_hunk_2_@Abc_NtkCovCovers_rec:bb.a
  store i32 %i.qp, ptr %i.pt, align 4, !tbaa !36
  %i.qq = sext i32 %i.qm to i64
  %i.qr = getelementptr inbounds [8 x i8], ptr %i.qo, i64 %i.qq
  store ptr %i.n, ptr %i.qr, align 8, !tbaa !40
  br label %bb.cp

bb.cp:                                            ; preds = %Abc_NodeCovPropagate.exit, %bb.cd, %bb.ce, %Vec_PtrPush.exit53, %bb.a
  ret void
}

declare void @Extra_ProgressBarStop(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #7

declare void @Extra_ProgressBarUpdate_int(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @Abc_NodeCovProduct(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef readonly captures(address_is_null) %2, i32 noundef range(i32 0, 2) %3, i32 noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 7 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !82
  tail call void @Min_ManClean(ptr noundef %i.b, i32 noundef %4) #15
  %.not97 = icmp eq ptr %1, null
  br i1 %.not97, label %._crit_edge99, label %.preheader87.lr.ph

.preheader87.lr.ph:                               ; preds = %bb.a
  %.not7393 = icmp eq ptr %2, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = icmp sgt i32 %4, 0
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.not74 = icmp eq i32 %3, 0
  br i1 %.not7393, label %._crit_edge99, label %.preheader87.preheader

.preheader87.preheader:                           ; preds = %.preheader87.lr.ph
  %wide.trip.count106 = zext nneg i32 %4 to i64
  br label %.preheader87

.preheader87:                                     ; preds = %.preheader87.preheader, %._crit_edge96
  %.06798 = phi ptr [ %i.dj, %._crit_edge96 ], [ %1, %.preheader87.preheader ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.06798, i64 12 ; 2 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader87, %.thread
  %.06694 = phi ptr [ %2, %.preheader87 ], [ %i.di, %.thread ] ; 3 uses
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !51   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !46   ; 2 uses
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !48
  %i.p = load ptr, ptr %i.d, align 8, !tbaa !52
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !48
  %i.s = getelementptr inbounds nuw i8, ptr %.06694, i64 12
  %wide.trip.count = zext nneg i32 %i.l to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !103

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv
  %i.u = load i32, ptr %i.t, align 4, !tbaa !49   ; 2 uses
  %i.v = shl nsw i32 %i.u, 1
  %i.w = ashr i32 %i.u, 4
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4, !tbaa !49
  %i.aa = and i32 %i.v, 30
  %i.ab = lshr i32 %i.z, %i.aa
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !49 ; 2 uses
  %i.ae = shl nsw i32 %i.ad, 1
  %i.af = ashr i32 %i.ad, 4
  %i.ag = sext i32 %i.af to i64
  %i.ah = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !49
  %i.aj = and i32 %i.ae, 30
  %i.ak = lshr i32 %i.ai, %i.aj
  %i.al = and i32 %i.ab, 3
  %i.am = and i32 %i.al, %i.ak
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %.thread, label %bb.b

._crit_edge:                                      ; preds = %bb.b, %.preheader
  %i.ao = load ptr, ptr %i.a, align 8, !tbaa !82  ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 80
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !96
  %i.ar = load i32, ptr %i.e, align 4, !tbaa !97
  %i.as = icmp sgt i32 %i.aq, %i.ar
  br i1 %i.as, label %bb.d, label %bb.f

bb.d:                                             ; preds = %._crit_edge
  %i.at = tail call ptr @Min_CoverCollect(ptr noundef nonnull %i.ao, i32 noundef %4) #15 ; 2 uses
  %.not.i = icmp eq ptr %i.at, null
  br i1 %.not.i, label %Min_CoverRecycle.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.au = load ptr, ptr %i.a, align 8, !tbaa !82
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i
  %.0914.i = phi ptr [ %i.at, %.lr.ph.i ], [ %.015.i, %bb.e ] ; 2 uses
  %.015.i = load ptr, ptr %.0914.i, align 8, !tbaa !85 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !92
  tail call void @Extra_MmFixedEntryRecycle(ptr noundef %i.aw, ptr noundef nonnull %.0914.i) #15
  %.not12.i = icmp eq ptr %.015.i, null
  br i1 %.not12.i, label %Min_CoverRecycle.exit, label %bb.e, !llvm.loop !98

bb.f:                                             ; preds = %._crit_edge
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !92
  %i.az = tail call ptr @Extra_MmFixedEntryFetch(ptr noundef %i.ay) #15 ; 5 uses
  store ptr null, ptr %i.az, align 8, !tbaa !85
  %i.ba = load i32, ptr %i.ao, align 8, !tbaa !93
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 5 uses
  %i.bc = load i32, ptr %i.bb, align 8
  %i.bd = and i32 %i.ba, 1023                     ; 2 uses
  %i.be = and i32 %i.bc, -1024
  %i.bf = or disjoint i32 %i.be, %i.bd
  store i32 %i.bf, ptr %i.bb, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ao, i64 4 ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !94
  %i.bi = shl i32 %i.bh, 10
  %.masked.i = and i32 %i.bi, 4193280
  %i.bj = or disjoint i32 %.masked.i, %i.bd       ; 3 uses
  store i32 %i.bj, ptr %i.bb, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.az, i64 12 ; 2 uses
  %i.bl = load i32, ptr %i.bg, align 4, !tbaa !94
  %i.bm = sext i32 %i.bl to i64
  %i.bn = shl nsw i64 %i.bm, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.bk, i8 -1, i64 %i.bn, i1 false)
  store i32 %i.bj, ptr %i.bb, align 8
  br i1 %i.f, label %.lr.ph91, label %._crit_edge92

.lr.ph91:                                         ; preds = %bb.f
  %i.bo = getelementptr inbounds nuw i8, ptr %.06694, i64 12
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph91, %bb.m
  %i.bp = phi i32 [ %i.bj, %.lr.ph91 ], [ %i.dg, %bb.m ] ; 3 uses
  %indvars.iv103 = phi i64 [ 0, %.lr.ph91 ], [ %indvars.iv.next104, %bb.m ] ; 5 uses
  %i.bq = load ptr, ptr %i.g, align 8, !tbaa !45
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !48
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %indvars.iv103
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !49 ; 3 uses
  %i.bv = icmp eq i32 %i.bu, -1
  br i1 %i.bv, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bw = shl nsw i32 %i.bu, 1
  %i.bx = ashr i32 %i.bu, 4
  %i.by = sext i32 %i.bx to i64
  %i.bz = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.by
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !49
  %i.cb = and i32 %i.bw, 30
  %i.cc = lshr i32 %i.ca, %i.cb
  %i.cd = and i32 %i.cc, 3
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %.064 = phi i32 [ %i.cd, %bb.h ], [ 3, %bb.g ]
  %i.ce = load ptr, ptr %i.h, align 8, !tbaa !50
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !48
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %indvars.iv103
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !49 ; 3 uses
  %i.cj = icmp eq i32 %i.ci, -1
  br i1 %i.cj, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ck = shl nsw i32 %i.ci, 1
  %i.cl = ashr i32 %i.ci, 4
  %i.cm = sext i32 %i.cl to i64
  %i.cn = getelementptr inbounds [4 x i8], ptr %i.bo, i64 %i.cm
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !49
  %i.cp = and i32 %i.ck, 30
  %i.cq = lshr i32 %i.co, %i.cp
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %.0 = phi i32 [ %i.cq, %bb.j ], [ 3, %bb.i ]
  %i.cr = and i32 %.0, %.064                      ; 2 uses
  %i.cs = icmp eq i32 %i.cr, 3
  br i1 %i.cs, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ct = xor i32 %i.cr, 3
  %indvars.iv103.tr = trunc i64 %indvars.iv103 to i32
  %i.cu = shl i32 %indvars.iv103.tr, 1
  %i.cv = and i32 %i.cu, 30
  %i.cw = shl nuw i32 %i.ct, %i.cv
  %i.cx = lshr i64 %indvars.iv103, 4
  %i.cy = and i64 %i.cx, 268435455
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.cy ; 2 uses
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !49
  %i.db = xor i32 %i.da, %i.cw
  store i32 %i.db, ptr %i.cz, align 4, !tbaa !49
  %i.dc = and i32 %i.bp, -4194304
  %i.dd = add i32 %i.dc, 4194304
  %i.de = and i32 %i.bp, 4194303
  %i.df = or disjoint i32 %i.dd, %i.de            ; 2 uses
  store i32 %i.df, ptr %i.bb, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %i.dg = phi i32 [ %i.bp, %bb.k ], [ %i.df, %bb.l ]
  %indvars.iv.next104 = add nuw nsw i64 %indvars.iv103, 1 ; 2 uses
  %exitcond107.not = icmp eq i64 %indvars.iv.next104, %wide.trip.count106
  br i1 %exitcond107.not, label %._crit_edge92, label %bb.g, !llvm.loop !104

._crit_edge92:                                    ; preds = %bb.m, %bb.f
  %i.dh = load ptr, ptr %i.a, align 8, !tbaa !82  ; 2 uses
  br i1 %.not74, label %bb.o, label %bb.n

bb.n:                                             ; preds = %._crit_edge92
  tail call void @Min_EsopAddCube(ptr noundef %i.dh, ptr noundef nonnull %i.az) #15
  br label %.thread

bb.o:                                             ; preds = %._crit_edge92
  tail call void @Min_SopAddCube(ptr noundef %i.dh, ptr noundef nonnull %i.az) #15
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.n, %bb.o
  %i.di = load ptr, ptr %.06694, align 8, !tbaa !85 ; 2 uses
  %.not73 = icmp eq ptr %i.di, null
  br i1 %.not73, label %._crit_edge96, label %.preheader, !llvm.loop !105

._crit_edge96:                                    ; preds = %.thread
  %i.dj = load ptr, ptr %.06798, align 8, !tbaa !85 ; 2 uses
  %.not = icmp eq ptr %i.dj, null
  br i1 %.not, label %._crit_edge99, label %.preheader87, !llvm.loop !106

._crit_edge99:                                    ; preds = %._crit_edge96, %.preheader87.lr.ph, %bb.a
  %.not72 = icmp eq i32 %3, 0
  %i.dk = load ptr, ptr %i.a, align 8, !tbaa !82  ; 2 uses
  br i1 %.not72, label %bb.q, label %bb.p

bb.p:                                             ; preds = %._crit_edge99
  tail call void @Min_EsopMinimize(ptr noundef %i.dk) #15
  br label %bb.r

bb.q:                                             ; preds = %._crit_edge99
  tail call void @Min_SopMinimize(ptr noundef %i.dk) #15
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.dl = load ptr, ptr %i.a, align 8, !tbaa !82
  %i.dm = tail call ptr @Min_CoverCollect(ptr noundef %i.dl, i32 noundef %4) #15 ; 4 uses
  %.not5.i = icmp eq ptr %i.dm, null
  br i1 %.not5.i, label %Min_CoverRecycle.exit, label %.lr.ph.i75

.lr.ph.i75:                                       ; preds = %bb.r, %.lr.ph.i75
  %.07.i = phi i32 [ %i.dn, %.lr.ph.i75 ], [ 0, %bb.r ] ; 2 uses
  %.046.i = phi ptr [ %i.do, %.lr.ph.i75 ], [ %i.dm, %bb.r ]
  %i.dn = add nuw nsw i32 %.07.i, 1
  %i.do = load ptr, ptr %.046.i, align 8, !tbaa !85 ; 2 uses
  %.not.i76 = icmp eq ptr %i.do, null
  br i1 %.not.i76, label %Min_CoverCountCubes.exit.thread, label %.lr.ph.i75, !llvm.loop !102

Min_CoverCountCubes.exit.thread:                  ; preds = %.lr.ph.i75
  %i.dp = load i32, ptr %0, align 8, !tbaa !81
  %.not85 = icmp slt i32 %.07.i, %i.dp
  br i1 %.not85, label %Min_CoverRecycle.exit, label %.lr.ph.i78

.lr.ph.i78:                                       ; preds = %Min_CoverCountCubes.exit.thread
  %i.dq = load ptr, ptr %i.a, align 8, !tbaa !82
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %.lr.ph.i78
  %.0914.i79 = phi ptr [ %i.dm, %.lr.ph.i78 ], [ %.015.i80, %bb.s ] ; 2 uses
  %.015.i80 = load ptr, ptr %.0914.i79, align 8, !tbaa !85 ; 2 uses
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !92
  tail call void @Extra_MmFixedEntryRecycle(ptr noundef %i.ds, ptr noundef nonnull %.0914.i79) #15
  %.not12.i81 = icmp eq ptr %.015.i80, null
  br i1 %.not12.i81, label %Min_CoverRecycle.exit, label %bb.s, !llvm.loop !98

Min_CoverRecycle.exit:                            ; preds = %bb.e, %bb.s, %bb.r, %Min_CoverCountCubes.exit.thread, %bb.d
  %.068 = phi ptr [ null, %bb.s ], [ %i.dm, %Min_CoverCountCubes.exit.thread ], [ null, %bb.d ], [ null, %bb.r ], [ null, %bb.e ]
  ret ptr %.068
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #8

declare void @Min_ManClean(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Min_CoverCollect(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @Min_EsopAddCube(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @Min_SopAddCube(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @Min_EsopMinimize(ptr noundef) local_unnamed_addr #2

declare void @Min_SopMinimize(ptr noundef) local_unnamed_addr #2

declare void @Extra_MmFixedEntryRecycle(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @Extra_MmFixedEntryFetch(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #10

declare i32 @Abc_FrameIsBridgeMode(...) local_unnamed_addr #2

declare i32 @Gia_ManToBridgeText(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #11

declare ptr @vnsprintf(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #11

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #14

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn }
attributes #12 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nounwind }
attributes #16 = { nounwind allocsize(1) }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { nounwind willreturn memory(read) }

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
!8 = !{!9, !5, i64 48}
!9 = !{!"Cov_Man_t_", !5, i64 0, !5, i64 4, !5, i64 8, !10, i64 16, !12, i64 24, !11, i64 32, !13, i64 40, !5, i64 48, !5, i64 52, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !5, i64 104, !5, i64 108, !5, i64 112, !5, i64 116}
!10 = !{!"p1 _ZTS10Vec_Int_t_", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"p1 _ZTS10Vec_Ptr_t_", !11, i64 0}
!13 = !{!"p1 _ZTS10Min_Man_t_", !11, i64 0}
!14 = !{!9, !5, i64 52}
!15 = !{!16, !11, i64 272}
!16 = !{!"Abc_Ntk_t_", !5, i64 0, !5, i64 4, !17, i64 8, !17, i64 16, !18, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !12, i64 72, !12, i64 80, !12, i64 88, !6, i64 96, !5, i64 140, !5, i64 144, !5, i64 148, !5, i64 152, !19, i64 160, !5, i64 168, !20, i64 176, !19, i64 184, !5, i64 192, !5, i64 196, !5, i64 200, !21, i64 208, !5, i64 216, !22, i64 224, !24, i64 240, !25, i64 248, !11, i64 256, !26, i64 264, !11, i64 272, !27, i64 280, !5, i64 284, !10, i64 288, !12, i64 296, !23, i64 304, !28, i64 312, !12, i64 320, !19, i64 328, !11, i64 336, !11, i64 344, !19, i64 352, !11, i64 360, !11, i64 368, !10, i64 376, !10, i64 384, !17, i64 392, !29, i64 400, !12, i64 408, !10, i64 416, !10, i64 424, !12, i64 432, !10, i64 440, !10, i64 448, !10, i64 456}
!17 = !{!"p1 omnipotent char", !11, i64 0}
!18 = !{!"p1 _ZTS9Nm_Man_t_", !11, i64 0}
!19 = !{!"p1 _ZTS10Abc_Ntk_t_", !11, i64 0}
!20 = !{!"p1 _ZTS10Abc_Des_t_", !11, i64 0}
!21 = !{!"double", !6, i64 0}
!22 = !{!"Vec_Int_t_", !5, i64 0, !5, i64 4, !23, i64 8}
!23 = !{!"p1 int", !11, i64 0}
!24 = !{!"p1 _ZTS12Mem_Fixed_t_", !11, i64 0}
!25 = !{!"p1 _ZTS11Mem_Step_t_", !11, i64 0}
!26 = !{!"p1 _ZTS14Abc_ManTime_t_", !11, i64 0}
!27 = !{!"float", !6, i64 0}
!28 = !{!"p1 _ZTS10Abc_Cex_t_", !11, i64 0}
!29 = !{!"p1 float", !11, i64 0}
!30 = !{!31, !32, i64 0}
!31 = !{!"timespec", !32, i64 0, !32, i64 8}
!32 = !{!"long", !6, i64 0}
!33 = !{!31, !32, i64 8}
end_hunk_2
