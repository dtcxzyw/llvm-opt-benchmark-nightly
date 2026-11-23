Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lvgl/original/lv_image?download=true
inline.NumInlined: 17
inline.NumDeleted: 7
begin_hunk_0_@lv_image_event:bb.a
  store i32 %.sroa.0.0.extract.trunc.i.i, ptr %i.gp, align 4, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #5
  %i.gq = load i16, ptr %i.fc, align 4
  %i.gr = lshr i16 %i.gq, 8
  %i.gs = and i16 %i.gr, 15                       ; 3 uses
  %i.gt = icmp samesign ult i16 %i.gs, 10
  br i1 %i.gt, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.gu = zext nneg i16 %i.gs to i32
  %i.gv = getelementptr inbounds nuw i8, ptr %i.cv, i64 88
  %i.gw = load i32, ptr %i.gv, align 8, !tbaa !35
  %i.gx = getelementptr inbounds nuw i8, ptr %i.cv, i64 92
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !36
  call void @lv_area_align(ptr noundef nonnull %i.gd, ptr noundef nonnull %i.gc, i32 noundef %i.gu, i32 noundef %i.gw, i32 noundef %i.gy) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %i.gc, i64 16, i1 false), !tbaa.struct !58
  br label %bb.az

bb.aw:                                            ; preds = %bb.au
  switch i16 %i.gs, label %bb.ay [
    i16 13, label %lv_image_get_scale.exit.i
    i16 14, label %lv_image_get_scale.exit.i
    i16 12, label %bb.ax
  ]

lv_image_get_scale.exit.i:                        ; preds = %bb.aw, %bb.aw
  %i.gz = load i32, ptr %i.es, align 4, !tbaa !22 ; 2 uses
  %i.ha = call i32 @lv_obj_get_width(ptr noundef nonnull %i.cv) #5
  %i.hb = load i32, ptr %i.ep, align 8, !tbaa !19
  %i.hc = mul nsw i32 %i.hb, %i.gz
  %.neg.i = sdiv i32 %i.hc, -256
  %i.hd = add i32 %.neg.i, %i.ha
  %i.he = sdiv i32 %i.hd, 2
  %i.hf = call i32 @lv_obj_get_height(ptr noundef nonnull %i.cv) #5
  %i.hg = load i32, ptr %i.em, align 4, !tbaa !20
  %i.hh = mul nsw i32 %i.hg, %i.gz
  %.neg129.i = sdiv i32 %i.hh, -256
  %i.hi = add i32 %.neg129.i, %i.hf
  %i.hj = sdiv i32 %i.hi, 2
  call void @lv_area_move(ptr noundef nonnull %i.gc, i32 noundef %i.he, i32 noundef %i.hj) #5
  %i.hk = getelementptr inbounds nuw i8, ptr %i.cv, i64 88
  %i.hl = load i32, ptr %i.hk, align 8, !tbaa !35
  %i.hm = getelementptr inbounds nuw i8, ptr %i.cv, i64 92
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !36
  call void @lv_area_move(ptr noundef nonnull %i.gc, i32 noundef %i.hl, i32 noundef %i.hn) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %i.gc, i64 16, i1 false), !tbaa.struct !58
  br label %bb.az

bb.ax:                                            ; preds = %bb.aw
  %i.ho = call zeroext i1 @lv_area_intersect(ptr noundef nonnull %i.fg, ptr noundef nonnull %i.fg, ptr noundef nonnull %i.gd) #5 ; 0 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.cv, i64 88
  %i.hq = load i32, ptr %i.hp, align 8, !tbaa !35
  %i.hr = getelementptr inbounds nuw i8, ptr %i.cv, i64 92
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !36
  call void @lv_area_move(ptr noundef nonnull %i.gc, i32 noundef %i.hq, i32 noundef %i.hs) #5
  %i.ht = load <2 x i32>, ptr %i.fg, align 8, !tbaa !28
  %i.hu = load <2 x i32>, ptr %i.gc, align 8, !tbaa !28
  %i.hv = load <2 x i32>, ptr %i.ep, align 8, !tbaa !28 ; 2 uses
  %i.hw = add <2 x i32> %i.ht, splat (i32 1)
  %i.hx = add <2 x i32> %i.hu, %i.hv
  %i.hy = sub <2 x i32> %i.hw, %i.hx
  %i.hz = freeze <2 x i32> %i.hy                  ; 2 uses
  %i.ia = srem <2 x i32> %i.hz, %i.hv
  %i.ib = sub nsw <2 x i32> %i.hz, %i.ia          ; 2 uses
  %i.ic = extractelement <2 x i32> %i.ib, i64 0
  %i.id = extractelement <2 x i32> %i.ib, i64 1
  call void @lv_area_move(ptr noundef nonnull %i.gc, i32 noundef %i.ic, i32 noundef %i.id) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %i.fg, i64 16, i1 false), !tbaa.struct !58
  %i.ie = load i8, ptr %i.fo, align 1
  %i.if = or i8 %i.ie, 32
  store i8 %i.if, ptr %i.fo, align 1
  br label %bb.az

bb.ay:                                            ; preds = %bb.aw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %i.gc, i64 16, i1 false), !tbaa.struct !58
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax, %lv_image_get_scale.exit.i, %bb.av
  call void @lv_draw_image(ptr noundef nonnull %i.fb, ptr noundef nonnull %4, ptr noundef nonnull %5) #5
  store <4 x i32> %.sroa.0.0.copyload, ptr %i.fg, align 8, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #5
  br label %draw_image.exit

bb.ba:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #5
  call void @lv_draw_label_dsc_init(ptr noundef nonnull %6) #5
  %i.ig = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %i.fb, ptr %i.ig, align 8, !tbaa !62
  call void @lv_obj_init_draw_label_dsc(ptr noundef nonnull %i.cv, i32 noundef 0, ptr noundef nonnull %6) #5
  %i.ih = load ptr, ptr %i.ey, align 8, !tbaa !18
  %i.ii = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 2 uses
  store ptr %i.ih, ptr %i.ii, align 8, !tbaa !63
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #5
  %i.ij = load i32, ptr %i.ep, align 8, !tbaa !19
  %i.ik = getelementptr inbounds nuw i8, ptr %i.cv, i64 40 ; 4 uses
  %i.il = call i32 @lv_area_get_width(ptr noundef nonnull %i.ik) #5
  %i.im = icmp eq i32 %i.ij, %i.il
  br i1 %i.im, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.in = load i32, ptr %i.em, align 4, !tbaa !20
  %i.io = call i32 @lv_area_get_height(ptr noundef nonnull %i.ik) #5
  %i.ip = icmp ne i32 %i.in, %i.io
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %i.iq = phi i1 [ true, %bb.ba ], [ %i.ip, %bb.bb ]
  %i.ir = load i16, ptr %i.fc, align 4
  %i.is = and i16 %i.ir, 3584                     ; 2 uses
  %i.it = icmp ne i16 %i.is, 0
  %i.iu = select i1 %i.it, i1 %i.iq, i1 false
  %i.iv = getelementptr inbounds nuw i8, ptr %i.cv, i64 88 ; 2 uses
  %i.iw = load i32, ptr %i.iv, align 8, !tbaa !35
  %.not.i103 = icmp eq i32 %i.iw, 0
  br i1 %.not.i103, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.ix = getelementptr inbounds nuw i8, ptr %i.cv, i64 92
  %i.iy = load i32, ptr %i.ix, align 4, !tbaa !36
  %i.iz = icmp ne i32 %i.iy, 0
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.ja = phi i1 [ true, %bb.bc ], [ %i.iz, %bb.bd ]
  %i.jb = icmp samesign ult i16 %i.is, 2305
  %or.cond.i = select i1 %i.iu, i1 true, i1 %i.ja
  %or.cond4.not.i = select i1 %or.cond.i, i1 %i.jb, i1 false
  br i1 %or.cond4.not.i, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #5
  %i.jc = getelementptr inbounds nuw i8, ptr %6, i64 92
  %i.jd = load <2 x i32>, ptr %i.jc, align 4, !tbaa !28
  %i.je = shufflevector <2 x i32> %i.jd, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.je, ptr %9, align 8, !tbaa !28
  %i.jf = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 536870911, ptr %i.jf, align 8, !tbaa !31
  %i.jg = getelementptr inbounds nuw i8, ptr %9, i64 12
  store i32 0, ptr %i.jg, align 4, !tbaa !32
  %i.jh = load ptr, ptr %i.ii, align 8, !tbaa !63
  %i.ji = getelementptr inbounds nuw i8, ptr %6, i64 80
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !64
  call void @lv_text_get_size_attributes(ptr noundef nonnull %8, ptr noundef %i.jh, ptr noundef %i.jj, ptr noundef nonnull %9) #5
  %i.jk = load i32, ptr %8, align 4, !tbaa !25
  %i.jl = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.jm = load i32, ptr %i.jl, align 4, !tbaa !27
  call void @lv_area_set(ptr noundef nonnull %7, i32 noundef 0, i32 noundef 0, i32 noundef %i.jk, i32 noundef %i.jm) #5
  %i.jn = load i16, ptr %i.fc, align 4
  %i.jo = lshr i16 %i.jn, 8
  %i.jp = and i16 %i.jo, 15
  %i.jq = zext nneg i16 %i.jp to i32
  %i.jr = load i32, ptr %i.iv, align 8, !tbaa !35
  %i.js = getelementptr inbounds nuw i8, ptr %i.cv, i64 92
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !36
  call void @lv_area_align(ptr noundef nonnull %i.ik, ptr noundef nonnull %7, i32 noundef %i.jq, i32 noundef %i.jr, i32 noundef %i.jt) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #5
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %.0.i = phi ptr [ %7, %bb.bf ], [ %i.ik, %bb.be ]
  call void @lv_draw_label(ptr noundef %i.fb, ptr noundef nonnull %6, ptr noundef nonnull %.0.i) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #5
  br label %draw_image.exit

default.unreachable:                              ; preds = %bb.at
  unreachable

draw_image.exit:                                  ; preds = %bb.bg, %bb.az, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.aj, %bb.af, %bb.ad, %bb.ab, %bb.z, %bb.x, %bb.w, %lv_image_get_pivot.exit, %bb.t, %bb.u, %bb.j, %bb.h, %bb.i, %bb.v, %bb.n, %bb.m, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #5
  br label %bb.bh

bb.bh:                                            ; preds = %bb.a, %draw_image.exit
  ret void
}

; Function Attrs: nounwind uwtable
define noundef ptr @lv_image_create(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @lv_obj_class_create_obj(ptr noundef nonnull @lv_image_class, ptr noundef %0) #5 ; 2 uses
  tail call void @lv_obj_class_init_obj(ptr noundef %i.a) #5
  ret ptr %i.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @lv_obj_class_create_obj(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @lv_obj_class_init_obj(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define void @lv_image_set_src(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.lv_image_header_t, align 8  ; 6 uses
  %3 = alloca %struct.lv_text_attributes_t, align 4 ; 7 uses
  %4 = alloca %struct.lv_point_t, align 4         ; 5 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a, %.preheader
  br label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @lv_obj_invalidate(ptr noundef nonnull %0) #5 ; 0 uses
  %i.b = tail call i32 @lv_image_src_get_type(ptr noundef %1) #5 ; 5 uses
  %i.c = icmp eq i32 %i.b, 3
  br i1 %i.c, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 3 uses
  %i.e = load i16, ptr %i.d, align 4              ; 2 uses
  %i.f = and i16 %i.e, 3
  %.off.i = add nsw i16 %i.f, -1
  %switch.i = icmp ult i16 %.off.i, 2
  br i1 %switch.i, label %bb.d, label %reset_image_attributes.exit

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !18
  tail call void @lv_free(ptr noundef %i.h) #5
  %.pre.i = load i16, ptr %i.d, align 4
  br label %reset_image_attributes.exit

reset_image_attributes.exit:                      ; preds = %bb.c, %bb.d
  %i.i = phi i16 [ %i.e, %bb.c ], [ %.pre.i, %bb.d ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr null, ptr %i.j, align 8, !tbaa !18
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 0, ptr %i.k, align 8, !tbaa !19
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i32 0, ptr %i.l, align 4, !tbaa !20
  %i.m = and i16 %i.i, -128
  %i.n = or disjoint i16 %i.m, 3
  store i16 %i.n, ptr %i.d, align 4
  %i.o = tail call zeroext i1 @lv_obj_refresh_self_size(ptr noundef nonnull %0) #5 ; 0 uses
  br label %bb.z

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #5
  %i.p = call i32 @lv_image_decoder_get_info(ptr noundef %1, ptr noundef nonnull %2) #5
  %.not62 = icmp eq i32 %i.p, 1
  br i1 %.not62, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 3 uses
  %i.r = load i16, ptr %i.q, align 4              ; 2 uses
  %i.s = and i16 %i.r, 3
  %.off.i74 = add nsw i16 %i.s, -1
  %switch.i75 = icmp ult i16 %.off.i74, 2
  br i1 %switch.i75, label %bb.g, label %reset_image_attributes.exit77

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !18
  call void @lv_free(ptr noundef %i.u) #5
  %.pre.i76 = load i16, ptr %i.q, align 4
  br label %reset_image_attributes.exit77

reset_image_attributes.exit77:                    ; preds = %bb.f, %bb.g
  %i.v = phi i16 [ %i.r, %bb.f ], [ %.pre.i76, %bb.g ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr null, ptr %i.w, align 8, !tbaa !18
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 0, ptr %i.x, align 8, !tbaa !19
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i32 0, ptr %i.y, align 4, !tbaa !20
  %i.z = and i16 %i.v, -128
  %i.aa = or disjoint i16 %i.z, 3
  store i16 %i.aa, ptr %i.q, align 4
  %i.ab = call zeroext i1 @lv_obj_refresh_self_size(ptr noundef nonnull %0) #5 ; 0 uses
  br label %bb.y

bb.h:                                             ; preds = %bb.e
  %i.ac = icmp eq i32 %i.b, 0
  br i1 %i.ac, label %bb.i, label %bb.n

bb.i:                                             ; preds = %bb.h
  %i.ad = load i64, ptr %2, align 8
  %i.ae = and i64 %i.ad, 1048576
  %.not66 = icmp eq i64 %i.ae, 0
  br i1 %.not66, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !67
  %.not67 = icmp eq ptr %i.ag, null
  br i1 %.not67, label %bb.y, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !68
  %.not68 = icmp eq ptr %i.ai, null
  br i1 %.not68, label %bb.y, label %.critedge

.critedge:                                        ; preds = %bb.k, %bb.i
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.ak = load i16, ptr %i.aj, align 4
  %i.al = and i16 %i.ak, 3
  %.off = add nsw i16 %i.al, -1
  %switch = icmp ult i16 %.off, 2
  br i1 %switch, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.critedge
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !18
  call void @lv_free(ptr noundef %i.an) #5
  br label %bb.m

bb.m:                                             ; preds = %.critedge, %bb.l
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %1, ptr %i.ao, align 8, !tbaa !18
  br label %.thread

bb.n:                                             ; preds = %bb.h
  %or.cond = icmp ult i32 %i.b, 3
  br i1 %or.cond, label %bb.o, label %.thread

bb.o:                                             ; preds = %bb.n
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !18 ; 3 uses
  %.not63 = icmp eq ptr %i.aq, %1
  br i1 %.not63, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.as = load i16, ptr %i.ar, align 4
  %i.at = call ptr @lv_strdup(ptr noundef %1) #5  ; 2 uses
  %.not64 = icmp eq ptr %i.at, null
  br i1 %.not64, label %.preheader80, label %bb.q

.preheader80:                                     ; preds = %bb.p, %.preheader80
  br label %.preheader80

bb.q:                                             ; preds = %bb.p
  %i.au = and i16 %i.as, 3
  %i.av = add nsw i16 %i.au, -3
  %switch73 = icmp ult i16 %i.av, -2
  store ptr %i.at, ptr %i.ap, align 8, !tbaa !18
  %.not6579 = icmp eq ptr %i.aq, null
  %.not65 = or i1 %.not6579, %switch73
  br i1 %.not65, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @lv_free(ptr noundef nonnull %i.aq) #5
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.o
  %i.aw = icmp eq i32 %i.b, 2
  br i1 %i.aw, label %bb.t, label %.thread

bb.t:                                             ; preds = %bb.s
  %i.ax = call ptr @lv_obj_get_style_prop(ptr noundef nonnull %0, i32 noundef 0, i8 noundef zeroext 77) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #5
  %i.ay = call ptr @lv_obj_get_style_prop(ptr noundef nonnull %0, i32 noundef 0, i8 noundef zeroext 102) #5
  %i.az = ptrtoint ptr %i.ay to i64
  %.sroa.0.0.extract.trunc.i = trunc i64 %i.az to i32
  store i32 %.sroa.0.0.extract.trunc.i, ptr %3, align 4, !tbaa !29
  %i.ba = call ptr @lv_obj_get_style_prop(ptr noundef nonnull %0, i32 noundef 0, i8 noundef zeroext 103) #5
  %i.bb = ptrtoint ptr %i.ba to i64
  %.sroa.0.0.extract.trunc.i78 = trunc i64 %i.bb to i32
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %.sroa.0.0.extract.trunc.i78, ptr %i.bc, align 4, !tbaa !30
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 536870911, ptr %i.bd, align 4, !tbaa !31
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 0, ptr %i.be, align 4, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #5
  call void @lv_text_get_size_attributes(ptr noundef nonnull %4, ptr noundef %1, ptr noundef %i.ax, ptr noundef nonnull %3) #5
  %i.bf = load i32, ptr %4, align 4, !tbaa !25
  %i.bg = and i32 %i.bf, 65535
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !27
  %5 = shl i32 %i.bi, 16
  %6 = or disjoint i32 %i.bg, %5
  %7 = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %6, ptr %7, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #5
  br label %.thread

.thread:                                          ; preds = %bb.m, %bb.n, %bb.t, %bb.s
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 2 uses
  %i.bk = trunc i32 %i.b to i16
  %i.bl = load i16, ptr %i.bj, align 4
  %i.bm = and i16 %i.bk, 3
  %i.bn = and i16 %i.bl, -128
  %i.bo = or disjoint i16 %i.bn, %i.bm
  %i.bp = load i64, ptr %2, align 8               ; 3 uses
  %i.bq = lshr i64 %i.bp, 32
  %i.br = trunc nuw i64 %i.bq to i32
  %i.bs = and i32 %i.br, 65535
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 %i.bs, ptr %i.bt, align 8, !tbaa !19
  %i.bu = lshr i64 %i.bp, 48
  %i.bv = trunc nuw nsw i64 %i.bu to i32
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i32 %i.bv, ptr %i.bw, align 4, !tbaa !20
  %i.bx = trunc i64 %i.bp to i16
  %i.by = lshr i16 %i.bx, 6
  %i.bz = and i16 %i.by, 124
  %i.ca = or disjoint i16 %i.bz, %i.bo
  store i16 %i.ca, ptr %i.bj, align 4
  %i.cb = call zeroext i1 @lv_obj_refresh_self_size(ptr noundef nonnull %0) #5 ; 0 uses
  call fastcc void @update_align(ptr noundef nonnull %0)
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !21
  %.not69 = icmp eq i32 %i.cd, 0
  br i1 %.not69, label %bb.u, label %bb.w

bb.u:                                             ; preds = %.thread
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !22
  %.not70 = icmp eq i32 %i.cf, 256
  br i1 %.not70, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !23
  %.not71 = icmp eq i32 %i.ch, 256
  br i1 %.not71, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %.thread
  call void @lv_obj_refresh_ext_draw_size(ptr noundef nonnull %0) #5
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.ci = call i32 @lv_obj_invalidate(ptr noundef nonnull %0) #5 ; 0 uses
  br label %bb.y

bb.y:                                             ; preds = %bb.j, %bb.k, %bb.x, %reset_image_attributes.exit77
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #5
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %reset_image_attributes.exit
  ret void
}

declare i32 @lv_obj_invalidate(ptr noundef) local_unnamed_addr #2

declare i32 @lv_image_src_get_type(ptr noundef) local_unnamed_addr #2

declare i32 @lv_image_decoder_get_info(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @lv_free(ptr noundef) local_unnamed_addr #2

declare ptr @lv_strdup(ptr noundef) local_unnamed_addr #2

declare void @lv_text_get_size_attributes(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i1 @lv_obj_refresh_self_size(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @update_align(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.b = load i16, ptr %i.a, align 4
  %i.c = lshr i16 %i.b, 8
  %i.d = and i16 %i.c, 15
  switch i16 %i.d, label %bb.l [
    i16 11, label %bb.b
    i16 13, label %bb.e
    i16 14, label %bb.h
    i16 12, label %bb.k
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @lv_image_set_rotation(ptr noundef nonnull %0, i32 noundef 0)
  tail call void @lv_image_set_pivot(ptr noundef nonnull %0, i32 noundef 0, i32 noundef 0)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !19
  %.not54 = icmp eq i32 %i.f, 0
  br i1 %.not54, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !20
  %.not55 = icmp eq i32 %i.h, 0
  br i1 %.not55, label %bb.l, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @lv_obj_update_layout(ptr noundef nonnull %0) #5
  %i.i = tail call i32 @lv_obj_get_width(ptr noundef nonnull %0) #5
  %i.j = shl nsw i32 %i.i, 8
  %i.k = load i32, ptr %i.e, align 8, !tbaa !19
  %i.l = sdiv i32 %i.j, %i.k
  %i.m = tail call i32 @lv_obj_get_height(ptr noundef nonnull %0) #5
  %i.n = shl nsw i32 %i.m, 8
  %i.o = load i32, ptr %i.g, align 4, !tbaa !20
  %i.p = sdiv i32 %i.n, %i.o
  tail call fastcc void @scale_update(ptr noundef nonnull %0, i32 noundef %i.l, i32 noundef %i.p)
  br label %bb.l

bb.e:                                             ; preds = %bb.a
  tail call void @lv_image_set_rotation(ptr noundef nonnull %0, i32 noundef 0)
  tail call void @lv_image_set_pivot(ptr noundef nonnull %0, i32 noundef 0, i32 noundef 0)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !19
  %.not52 = icmp eq i32 %i.r, 0
  br i1 %.not52, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !20
  %.not53 = icmp eq i32 %i.t, 0
  br i1 %.not53, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @lv_obj_update_layout(ptr noundef nonnull %0) #5
  %i.u = tail call i32 @lv_obj_get_width(ptr noundef nonnull %0) #5
  %i.v = shl nsw i32 %i.u, 8
  %i.w = load i32, ptr %i.q, align 8, !tbaa !19
  %i.x = sdiv i32 %i.v, %i.w
  %i.y = tail call i32 @lv_obj_get_height(ptr noundef nonnull %0) #5
  %i.z = shl nsw i32 %i.y, 8
  %i.aa = load i32, ptr %i.s, align 4, !tbaa !20
  %i.ab = sdiv i32 %i.z, %i.aa
  %i.ac = tail call i32 @llvm.smin.i32(i32 %i.x, i32 %i.ab) ; 2 uses
  tail call fastcc void @scale_update(ptr noundef nonnull %0, i32 noundef %i.ac, i32 noundef %i.ac)
  br label %bb.l

bb.h:                                             ; preds = %bb.a
  tail call void @lv_image_set_rotation(ptr noundef nonnull %0, i32 noundef 0)
  tail call void @lv_image_set_pivot(ptr noundef nonnull %0, i32 noundef 0, i32 noundef 0)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !19
  %.not = icmp eq i32 %i.ae, 0
  br i1 %.not, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !20
  %.not51 = icmp eq i32 %i.ag, 0
  br i1 %.not51, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @lv_obj_update_layout(ptr noundef nonnull %0) #5
  %i.ah = tail call i32 @lv_obj_get_width(ptr noundef nonnull %0) #5
  %i.ai = shl nsw i32 %i.ah, 8
  %i.aj = load i32, ptr %i.ad, align 8, !tbaa !19
  %i.ak = sdiv i32 %i.ai, %i.aj
  %i.al = tail call i32 @lv_obj_get_height(ptr noundef nonnull %0) #5
  %i.am = shl nsw i32 %i.al, 8
  %i.an = load i32, ptr %i.af, align 4, !tbaa !20
  %i.ao = sdiv i32 %i.am, %i.an
  %i.ap = tail call i32 @llvm.smax.i32(i32 %i.ak, i32 %i.ao) ; 2 uses
  tail call fastcc void @scale_update(ptr noundef nonnull %0, i32 noundef %i.ap, i32 noundef %i.ap)
  br label %bb.l

bb.k:                                             ; preds = %bb.a
  tail call void @lv_image_set_rotation(ptr noundef nonnull %0, i32 noundef 0)
  tail call void @lv_image_set_pivot(ptr noundef nonnull %0, i32 noundef 0, i32 noundef 0)
  tail call fastcc void @scale_update(ptr noundef nonnull %0, i32 noundef 256, i32 noundef 256)
  br label %bb.l

bb.l:                                             ; preds = %bb.a, %bb.g, %bb.f, %bb.e, %bb.k, %bb.h, %bb.i, %bb.j, %bb.b, %bb.c, %bb.d
  ret void
}

declare void @lv_obj_refresh_ext_draw_size(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @lv_image_set_offset_x(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a, %.preheader
  br label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 %1, ptr %i.a, align 8, !tbaa !35
  %i.b = tail call i32 @lv_obj_invalidate(ptr noundef nonnull %0) #5 ; 0 uses
  ret void
}

end_hunk_0
