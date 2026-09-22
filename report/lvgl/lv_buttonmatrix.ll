Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lvgl/original/lv_buttonmatrix?download=true
inline.NumInlined: 79
inline.NumDeleted: 25
begin_hunk_0_@lv_buttonmatrix_event:bb.a
  br i1 %i.ff, label %bb.bf, label %bb.bi

bb.bf:                                            ; preds = %bb.be
  store i32 0, ptr %i.dz, align 8, !tbaa !23
  %i.fg = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !25 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  %i.fj = load i32, ptr %i.fh, align 4, !tbaa !31
  %i.fk = and i32 %i.fj, 80
  %or.cond381.not504 = icmp eq i32 %i.fk, 0
  br i1 %or.cond381.not504, label %.critedge340, label %.critedge22.preheader

.critedge22.preheader:                            ; preds = %bb.bf
  %i.fl = load i32, ptr %i.fi, align 8, !tbaa !21
  %i.fm = zext i32 %i.fl to i64
  br label %.critedge22

bb.bg:                                            ; preds = %.critedge22
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.fh, i64 %indvars.iv.next443
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !31
  %i.fp = and i32 %i.fo, 80
  %or.cond381.not = icmp eq i32 %i.fp, 0
  br i1 %or.cond381.not, label %.critedge340, label %.critedge22, !llvm.loop !41

.critedge22:                                      ; preds = %.critedge22.preheader, %bb.bg
  %indvars.iv442505 = phi i64 [ %indvars.iv.next443, %bb.bg ], [ 0, %.critedge22.preheader ]
  %indvars.iv.next443 = add nuw nsw i64 %indvars.iv442505, 1 ; 4 uses
  %i.fq = trunc nuw i64 %indvars.iv.next443 to i32 ; 2 uses
  store i32 %i.fq, ptr %i.dz, align 8, !tbaa !23
  %.not318 = icmp samesign ult i64 %indvars.iv.next443, %i.fm
  br i1 %.not318, label %bb.bg, label %bb.bh, !llvm.loop !41

bb.bh:                                            ; preds = %.critedge22
  store i32 65535, ptr %i.dz, align 8, !tbaa !23
  br label %.critedge340

bb.bi:                                            ; preds = %bb.be
  %i.fr = getelementptr inbounds nuw i8, ptr %i.f, i64 80 ; 2 uses
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !24
  %i.ft = zext i32 %i.fe to i64
  %i.fu = getelementptr inbounds nuw [16 x i8], ptr %i.fs, i64 %i.ft ; 2 uses
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !32
  %i.fw = tail call i32 @lv_area_get_width(ptr noundef nonnull %i.fu) #7
  %i.fx = ashr i32 %i.fw, 1
  %i.fy = add nsw i32 %i.fx, %i.fv                ; 2 uses
  %i.fz = load i32, ptr %i.dz, align 8, !tbaa !23 ; 4 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  %i.gb = load i32, ptr %i.ga, align 8, !tbaa !21 ; 2 uses
  %i.gc = icmp ult i32 %i.fz, %i.gb
  br i1 %i.gc, label %.lr.ph412, label %.critedge340

.lr.ph412:                                        ; preds = %bb.bi
  %i.gd = load ptr, ptr %i.fr, align 8, !tbaa !24 ; 2 uses
  %i.ge = zext i32 %i.fz to i64                   ; 2 uses
  %i.gf = getelementptr inbounds nuw [16 x i8], ptr %i.gd, i64 %i.ge
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 4
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !33
  %i.gi = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  br label %bb.bj

bb.bj:                                            ; preds = %.lr.ph412, %bb.bn
  %indvars.iv438 = phi i64 [ %i.ge, %.lr.ph412 ], [ %indvars.iv.next439, %bb.bn ] ; 4 uses
  %i.gj = getelementptr inbounds nuw [16 x i8], ptr %i.gd, i64 %indvars.iv438 ; 3 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 4
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !33
  %i.gm = icmp sgt i32 %i.gl, %i.gh
  br i1 %i.gm, label %bb.bk, label %bb.bn

bb.bk:                                            ; preds = %bb.bj
  %i.gn = load i32, ptr %i.gj, align 4, !tbaa !32
  %.not316 = icmp slt i32 %i.fy, %i.gn
  br i1 %.not316, label %bb.bn, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.go = getelementptr inbounds nuw i8, ptr %i.gj, i64 8
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !34
  %i.gq = add nsw i32 %i.gp, %.sroa.0.0.extract.trunc.i
  %.not317 = icmp sgt i32 %i.fy, %i.gq
  br i1 %.not317, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.gr = load ptr, ptr %i.gi, align 8, !tbaa !25
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.gr, i64 %indvars.iv438
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !31
  %i.gu = and i32 %i.gt, 80
  %or.cond383.not = icmp eq i32 %i.gu, 0
  br i1 %or.cond383.not, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bj, %bb.bk, %bb.bl, %bb.bm
  %indvars.iv.next439 = add nuw nsw i64 %indvars.iv438, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next439 to i32
  %exitcond441.not = icmp eq i32 %i.gb, %lftr.wideiv
  br i1 %exitcond441.not, label %.critedge340, label %bb.bj, !llvm.loop !42

bb.bo:                                            ; preds = %bb.bm
  %i.gv = trunc nuw i64 %indvars.iv438 to i32     ; 2 uses
  store i32 %i.gv, ptr %i.dz, align 8, !tbaa !23
  br label %.critedge340

bb.bp:                                            ; preds = %bb.au
  %i.gw = tail call ptr @lv_obj_get_style_prop(ptr noundef nonnull %i.f, i32 noundef 0, i8 noundef zeroext 30) #7
  %i.gx = ptrtoint ptr %i.gw to i64
  %.sroa.0.0.extract.trunc.i342 = trunc i64 %i.gx to i32
  %i.gy = load i32, ptr %i.dz, align 8, !tbaa !23 ; 2 uses
  %i.gz = icmp eq i32 %i.gy, 65535
  br i1 %i.gz, label %bb.bq, label %bb.bt

bb.bq:                                            ; preds = %bb.bp
  store i32 0, ptr %i.dz, align 8, !tbaa !23
  %i.ha = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !25 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  %i.hd = load i32, ptr %i.hb, align 4, !tbaa !31
  %i.he = and i32 %i.hd, 80
  %or.cond385.not502 = icmp eq i32 %i.he, 0
  br i1 %or.cond385.not502, label %.critedge340, label %.critedge24.preheader

.critedge24.preheader:                            ; preds = %bb.bq
  %i.hf = load i32, ptr %i.hc, align 8, !tbaa !21
  %i.hg = zext i32 %i.hf to i64
  br label %.critedge24

bb.br:                                            ; preds = %.critedge24
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.hb, i64 %indvars.iv.next436
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !31
  %i.hj = and i32 %i.hi, 80
  %or.cond385.not = icmp eq i32 %i.hj, 0
  br i1 %or.cond385.not, label %.critedge340, label %.critedge24, !llvm.loop !43

.critedge24:                                      ; preds = %.critedge24.preheader, %bb.br
  %indvars.iv435503 = phi i64 [ %indvars.iv.next436, %bb.br ], [ 0, %.critedge24.preheader ]
  %indvars.iv.next436 = add nuw nsw i64 %indvars.iv435503, 1 ; 4 uses
  %i.hk = trunc nuw i64 %indvars.iv.next436 to i32 ; 2 uses
  store i32 %i.hk, ptr %i.dz, align 8, !tbaa !23
  %.not315 = icmp samesign ult i64 %indvars.iv.next436, %i.hg
  br i1 %.not315, label %bb.br, label %bb.bs, !llvm.loop !43

bb.bs:                                            ; preds = %.critedge24
  store i32 65535, ptr %i.dz, align 8, !tbaa !23
  br label %.critedge340

bb.bt:                                            ; preds = %bb.bp
  %i.hl = getelementptr inbounds nuw i8, ptr %i.f, i64 80 ; 2 uses
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !24
  %i.hn = zext i32 %i.gy to i64
  %i.ho = getelementptr inbounds nuw [16 x i8], ptr %i.hm, i64 %i.hn ; 2 uses
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !32
  %i.hq = tail call i32 @lv_area_get_width(ptr noundef nonnull %i.ho) #7
  %i.hr = ashr i32 %i.hq, 1
  %i.hs = add nsw i32 %i.hr, %i.hp                ; 2 uses
  %i.ht = load i32, ptr %i.dz, align 8, !tbaa !23 ; 5 uses
  %i.hu = and i32 %i.ht, 32768
  %i.hv = icmp eq i32 %i.hu, 0
  br i1 %i.hv, label %.lr.ph410, label %.critedge340

.lr.ph410:                                        ; preds = %bb.bt
  %i.hw = load ptr, ptr %i.hl, align 8, !tbaa !24 ; 2 uses
  %i.hx = zext i32 %i.ht to i64
  %i.hy = getelementptr inbounds nuw [16 x i8], ptr %i.hw, i64 %i.hx
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 4
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !33
  %i.ib = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  %.mask = and i32 %i.ht, 32767
  %i.ic = zext nneg i32 %.mask to i64
  br label %bb.bu

bb.bu:                                            ; preds = %.lr.ph410, %bb.by
  %indvars.iv432 = phi i64 [ %i.ic, %.lr.ph410 ], [ %indvars.iv.next433, %bb.by ] ; 5 uses
  %i.id = getelementptr inbounds nuw [16 x i8], ptr %i.hw, i64 %indvars.iv432 ; 3 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 4
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !33
  %i.ig = icmp slt i32 %i.if, %i.ia
  br i1 %i.ig, label %bb.bv, label %bb.by

bb.bv:                                            ; preds = %bb.bu
  %i.ih = load i32, ptr %i.id, align 4, !tbaa !32
  %i.ii = sub nsw i32 %i.ih, %.sroa.0.0.extract.trunc.i342
  %.not313 = icmp slt i32 %i.hs, %i.ii
  br i1 %.not313, label %bb.by, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.ij = getelementptr inbounds nuw i8, ptr %i.id, i64 8
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !34
  %.not314 = icmp sgt i32 %i.hs, %i.ik
  br i1 %.not314, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.il = load ptr, ptr %i.ib, align 8, !tbaa !25
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %i.il, i64 %indvars.iv432
  %i.in = load i32, ptr %i.im, align 4, !tbaa !31
  %i.io = and i32 %i.in, 80
  %or.cond387.not = icmp eq i32 %i.io, 0
  br i1 %or.cond387.not, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bu, %bb.bv, %bb.bw, %bb.bx
  %indvars.iv.next433 = add nsw i64 %indvars.iv432, -1
  %i.ip = icmp sgt i64 %indvars.iv432, 0
  br i1 %i.ip, label %bb.bu, label %.critedge340, !llvm.loop !44

bb.bz:                                            ; preds = %bb.bx
  %i.iq = trunc nuw nsw i64 %indvars.iv432 to i32
  %3 = and i32 %i.iq, 65535                       ; 2 uses
  store i32 %3, ptr %i.dz, align 8, !tbaa !23
  br label %.critedge340

.critedge340:                                     ; preds = %bb.by, %bb.br, %bb.bn, %bb.bg, %bb.ba, %bb.aw, %bb.bq, %bb.bf, %..critedge340_crit_edge, %bb.bt, %bb.bi, %bb.bs, %bb.bz, %bb.bh, %bb.bo, %bb.bd, %bb.ax
  %i.ir = phi i32 [ %.pre449, %..critedge340_crit_edge ], [ %i.fz, %bb.bn ], [ %i.fq, %bb.bg ], [ %i.ev, %bb.ba ], [ %i.ei, %bb.aw ], [ %i.hk, %bb.br ], [ 65535, %bb.ax ], [ %i.ht, %bb.bt ], [ %i.fz, %bb.bi ], [ 65535, %bb.bs ], [ %3, %bb.bz ], [ 65535, %bb.bh ], [ %i.gv, %bb.bo ], [ 65535, %bb.bd ], [ 0, %bb.bf ], [ 0, %bb.bq ], [ %i.ht, %bb.by ]
  tail call fastcc void @invalidate_button_area(ptr noundef nonnull %i.f, i32 noundef %i.ir)
  br label %.critedge337

bb.ca:                                            ; preds = %bb.at
  tail call fastcc void @draw_main(ptr noundef %1)
  br label %.critedge337

bb.cb:                                            ; preds = %bb.at
  %i.is = getelementptr inbounds nuw i8, ptr %i.f, i64 108
  %i.it = load i8, ptr %i.is, align 4
  %i.iu = and i8 %i.it, 2
  %.not312 = icmp eq i8 %i.iu, 0
  br i1 %.not312, label %.critedge337, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  tail call fastcc void @free_map(ptr noundef nonnull %i.f)
  br label %.critedge337

.critedge337:                                     ; preds = %bb.ap, %bb.m, %bb.c, %bb.d, %bb.r, %bb.aj, %bb.p, %bb.q, %bb.j, %bb.ag, %bb.ak, %has_popovers_in_top_row.exit.thread, %bb.ca, %bb.cb, %bb.cc, %.critedge340, %bb.ah, %bb.ai, %bb.s, %bb.k, %bb.u, %bb.v, %bb.t, %.critedge, %bb.ao, %bb.at, %bb.al, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  br label %bb.cd

bb.cd:                                            ; preds = %bb.a, %.critedge337
  ret void
}

; Function Attrs: nounwind uwtable
define noundef ptr @lv_buttonmatrix_create(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @lv_obj_class_create_obj(ptr noundef nonnull @lv_buttonmatrix_class, ptr noundef %0) #7 ; 2 uses
  tail call void @lv_obj_class_init_obj(ptr noundef %i.a) #7
  ret ptr %i.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @lv_obj_class_create_obj(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @lv_obj_class_init_obj(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define void @lv_buttonmatrix_set_map(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a, %.preheader
  br label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.q, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 3 uses
  %i.c = load i8, ptr %i.b, align 4               ; 2 uses
  %i.d = and i8 %i.c, 2
  %.not12 = icmp eq i8 %i.d, 0
  br i1 %.not12, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !26   ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !28   ; 2 uses
  %.not8.i = icmp eq ptr %i.g, null
  br i1 %.not8.i, label %free_map.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.i
  %i.h = phi ptr [ %i.m, %.lr.ph.i ], [ %i.g, %bb.d ]
  %.09.i = phi i32 [ %i.i, %.lr.ph.i ], [ 0, %bb.d ]
  tail call void @lv_free(ptr noundef nonnull %i.h) #7
  %i.i = add i32 %.09.i, 1                        ; 2 uses
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !26   ; 2 uses
  %i.k = zext i32 %i.i to i64
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.k
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !28   ; 2 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %free_map.exit, label %.lr.ph.i, !llvm.loop !0

free_map.exit:                                    ; preds = %.lr.ph.i, %bb.d
  %.lcssa.i = phi ptr [ %i.f, %bb.d ], [ %i.j, %.lr.ph.i ]
  tail call void @lv_free(ptr noundef nonnull %.lcssa.i) #7
  store ptr null, ptr %i.e, align 8, !tbaa !26
  %.pre = load i8, ptr %i.b, align 4
  br label %bb.e

bb.e:                                             ; preds = %free_map.exit, %bb.c
  %i.n = phi i8 [ %.pre, %free_map.exit ], [ %i.c, %bb.c ]
  %i.o = and i8 %i.n, -3
  store i8 %i.o, ptr %i.b, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 3 uses
  store i32 1, ptr %i.p, align 4, !tbaa !22
  %i.q = load ptr, ptr %1, align 8, !tbaa !28     ; 2 uses
  %.not41.i = icmp eq ptr %i.q, null
  br i1 %.not41.i, label %.critedge.i, label %.lr.ph.i13

.lr.ph.i13:                                       ; preds = %bb.e, %bb.i
  %i.r = phi ptr [ %i.aa, %bb.i ], [ %i.q, %bb.e ] ; 2 uses
  %.043.i = phi i32 [ %i.x, %bb.i ], [ 0, %bb.e ]
  %.03042.i = phi i32 [ %.1.i, %bb.i ], [ 0, %bb.e ] ; 3 uses
  %i.s = load i8, ptr %i.r, align 1, !tbaa !30
  %.not34.i = icmp eq i8 %i.s, 0
  br i1 %.not34.i, label %.critedge.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i13
  %i.t = tail call i32 @lv_strcmp(ptr noundef nonnull %i.r, ptr noundef nonnull @.str.1) #7
  %.not39.i = icmp eq i32 %i.t, 0
  br i1 %.not39.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = add i32 %.03042.i, 1
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.v = load i32, ptr %i.p, align 4, !tbaa !22
  %i.w = add i32 %i.v, 1
  store i32 %i.w, ptr %i.p, align 4, !tbaa !22
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.1.i = phi i32 [ %i.u, %bb.g ], [ %.03042.i, %bb.h ] ; 2 uses
  %i.x = add i32 %.043.i, 1                       ; 2 uses
  %i.y = zext i32 %i.x to i64
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.y
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !28  ; 2 uses
  %.not.i14 = icmp eq ptr %i.aa, null
  br i1 %.not.i14, label %.critedge.i, label %.lr.ph.i13, !llvm.loop !45

.critedge.i:                                      ; preds = %bb.i, %.lr.ph.i13, %bb.e
  %.030.lcssa.i = phi i32 [ 0, %bb.e ], [ %.03042.i, %.lr.ph.i13 ], [ %.1.i, %bb.i ] ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !21
  %i.ad = icmp eq i32 %.030.lcssa.i, %i.ac
  br i1 %i.ad, label %allocate_button_areas_and_controls.exit, label %bb.j

bb.j:                                             ; preds = %.critedge.i
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !24 ; 2 uses
  %.not35.i = icmp eq ptr %i.af, null
  br i1 %.not35.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @lv_free(ptr noundef nonnull %i.af) #7
  store ptr null, ptr %i.ae, align 8, !tbaa !24
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !25 ; 2 uses
  %.not36.i = icmp eq ptr %i.ah, null
  br i1 %.not36.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @lv_free(ptr noundef nonnull %i.ah) #7
  store ptr null, ptr %i.ag, align 8, !tbaa !25
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ai = zext i32 %.030.lcssa.i to i64           ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 4
  %i.ak = tail call ptr @lv_malloc(i64 noundef %i.aj) #7 ; 2 uses
  store ptr %i.ak, ptr %i.ae, align 8, !tbaa !24
  %.not37.i = icmp eq ptr %i.ak, null
  br i1 %.not37.i, label %.preheader.i, label %bb.o

.preheader.i:                                     ; preds = %bb.n, %.preheader.i
  br label %.preheader.i

bb.o:                                             ; preds = %bb.n
  %i.al = shl nuw nsw i64 %i.ai, 2
  %i.am = tail call ptr @lv_malloc(i64 noundef %i.al) #7 ; 3 uses
  store ptr %i.am, ptr %i.ag, align 8, !tbaa !25
  %.not38.i = icmp eq ptr %i.am, null
  br i1 %.not38.i, label %.preheader40.i, label %bb.p

.preheader40.i:                                   ; preds = %bb.o, %.preheader40.i
  br label %.preheader40.i

bb.p:                                             ; preds = %bb.o
  %i.an = load ptr, ptr %i.ae, align 8, !tbaa !24
  %i.ao = icmp eq ptr %i.an, null
  %..030.i = select i1 %i.ao, i32 0, i32 %.030.lcssa.i ; 2 uses
  %i.ap = zext i32 %..030.i to i64
  %i.aq = shl nuw nsw i64 %i.ap, 2
  tail call void @lv_memset(ptr noundef nonnull %i.am, i8 noundef zeroext 0, i64 noundef range(i64 0, 17179869181) %i.aq) #7
  store i32 %..030.i, ptr %i.ab, align 8, !tbaa !21
  br label %allocate_button_areas_and_controls.exit

allocate_button_areas_and_controls.exit:          ; preds = %.critedge.i, %bb.p
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %1, ptr %i.ar, align 8, !tbaa !26
  tail call fastcc void @update_map(ptr noundef nonnull %0)
  br label %bb.q

bb.q:                                             ; preds = %bb.b, %allocate_button_areas_and_controls.exit
  ret void
end_hunk_0
