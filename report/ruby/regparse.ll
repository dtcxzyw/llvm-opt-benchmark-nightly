Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/regparse?download=true
inline.NumInlined: 253
inline.NumDeleted: 55
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 11
begin_hunk_0_@parse_exp:bb.a
  %i.vj = getelementptr i8, ptr %i.vg, i64 8
  %i.vk = getelementptr i8, ptr %i.vg, i64 16
  store i32 0, ptr %i.vk, align 8, !tbaa !67
  %i.vl = getelementptr i8, ptr %i.vg, i64 20
  store i32 -1, ptr %i.vl, align 4, !tbaa !67
  %i.vm = getelementptr i8, ptr %i.vg, i64 24
  store i32 1, ptr %i.vm, align 8, !tbaa !67
  %i.vn = getelementptr i8, ptr %i.vg, i64 28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.vn, i8 0, i64 24, i1 false)
  store ptr %i.ve, ptr %i.vj, align 8, !tbaa !67
  store ptr %i.vg, ptr %i.vc, align 8, !tbaa !130
  %i.vo = getelementptr inbounds nuw i8, ptr %i.g, i64 128
  %i.vp = call fastcc i32 @create_property_node(ptr noundef nonnull %i.vo, ptr noundef nonnull %5, ptr noundef nonnull @.str.18) ; 2 uses
  %.not350.i = icmp eq i32 %i.vp, 0
  br i1 %.not350.i, label %bb.gz, label %.thread479.i

bb.gz:                                            ; preds = %bb.gy
  %i.vq = call fastcc i32 @create_node_from_array(i32 noundef 0, ptr noundef nonnull %i.tq, ptr noundef nonnull %i.ua) ; 2 uses
  %.not351.i = icmp eq i32 %i.vq, 0
  br i1 %.not351.i, label %bb.ha, label %.thread479.i

bb.ha:                                            ; preds = %bb.gz
  %i.vr = call noalias noundef dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #26 ; 9 uses
  %i.vs = icmp eq ptr %i.vr, null
  br i1 %i.vs, label %.thread479.i, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  store i32 5, ptr %i.vr, align 1
  %i.vt = getelementptr i8, ptr %i.vr, i64 4
  store i32 0, ptr %i.vt, align 4, !tbaa !67
  %i.vu = getelementptr i8, ptr %i.vr, i64 8
  %i.vv = getelementptr i8, ptr %i.vr, i64 16
  store i32 1, ptr %i.vv, align 8, !tbaa !67
  %i.vw = getelementptr i8, ptr %i.vr, i64 20
  store i32 -1, ptr %i.vw, align 4, !tbaa !67
  %i.vx = getelementptr i8, ptr %i.vr, i64 24
  store i32 1, ptr %i.vx, align 8, !tbaa !67
  %i.vy = getelementptr i8, ptr %i.vr, i64 28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.vy, i8 0, i64 24, i1 false)
  %i.vz = load ptr, ptr %i.tq, align 16, !tbaa !130
  store ptr %i.vz, ptr %i.vu, align 8, !tbaa !67
  store ptr %i.vr, ptr %i.tq, align 16, !tbaa !130
  %i.wa = call fastcc i32 @create_node_from_array(i32 noundef 0, ptr noundef nonnull %i.tb, ptr noundef nonnull %i.td) ; 2 uses
  %.not353.i = icmp eq i32 %i.wa, 0
  br i1 %.not353.i, label %select.unfold455.i, label %.thread479.i

select.unfold455.i:                               ; preds = %bb.hb
  %i.wb = call noalias noundef dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #26 ; 8 uses
  %i.wc = icmp eq ptr %i.wb, null
  br i1 %i.wc, label %node_new_cclass.exit394.thread.i, label %bb.hc

node_new_cclass.exit394.thread.i:                 ; preds = %select.unfold455.i
  store ptr null, ptr %i.td, align 8, !tbaa !130
  br label %.thread479.i

bb.hc:                                            ; preds = %select.unfold455.i
  store i32 1, ptr %i.wb, align 1
  %i.wd = getelementptr i8, ptr %i.wb, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %i.wd, i8 0, i64 44, i1 false)
  store ptr %i.wb, ptr %i.td, align 8, !tbaa !130
  %i.we = load ptr, ptr %i.qr, align 8, !tbaa !136
  %i.wf = getelementptr i8, ptr %i.we, i64 20
  %i.wg = load i32, ptr %i.wf, align 4, !tbaa !98
  %i.wh = icmp sgt i32 %i.wg, 1
  br i1 %i.wh, label %bb.hd, label %bb.hi

bb.hd:                                            ; preds = %bb.hc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #25
  %i.wi = getelementptr i8, ptr %5, i64 180       ; 4 uses
  %i.wj = load i32, ptr %i.wi, align 4, !tbaa !150 ; 2 uses
  %i.wk = or i32 %i.wj, -67108865
  %i.wl = or i32 %i.wj, 67108864
  store i32 %i.wl, ptr %i.wi, align 4, !tbaa !150
  %i.wm = call fastcc i32 @add_property_to_cc(ptr noundef nonnull %i.wb, ptr noundef nonnull @.str.9, i32 noundef 0, ptr noundef nonnull %5) ; 2 uses
  %.not355.i = icmp eq i32 %i.wm, 0
  br i1 %.not355.i, label %bb.he, label %.thread462.i

bb.he:                                            ; preds = %bb.hd
  %i.wn = getelementptr i8, ptr %i.wb, i64 40     ; 5 uses
  %i.wo = call fastcc i32 @add_code_range_to_buf0(ptr noundef %i.wn, ptr noundef nonnull %5, i32 noundef 10, i32 noundef 10, i32 noundef 1) ; 2 uses
  %.not356.i = icmp eq i32 %i.wo, 0
  br i1 %.not356.i, label %bb.hf, label %.thread462.i

bb.hf:                                            ; preds = %bb.he
  %i.wp = call fastcc i32 @add_code_range_to_buf0(ptr noundef %i.wn, ptr noundef nonnull %5, i32 noundef 13, i32 noundef 13, i32 noundef 1) ; 2 uses
  %.not357.i = icmp eq i32 %i.wp, 0
  br i1 %.not357.i, label %bb.hg, label %.thread462.i

bb.hg:                                            ; preds = %bb.hf
  %i.wq = load ptr, ptr %i.qr, align 8, !tbaa !136
  %i.wr = load ptr, ptr %i.wn, align 8, !tbaa !109
  %i.ws = call fastcc i32 @not_code_range_buf(ptr noundef %i.wq, ptr noundef %i.wr, ptr noundef %i.h, ptr noundef nonnull %5) ; 2 uses
  %.not358.i = icmp eq i32 %i.ws, 0
  br i1 %.not358.i, label %bb.hh, label %.thread462.i

.thread462.i:                                     ; preds = %bb.hg, %bb.hf, %bb.he, %bb.hd
  %.7244.ph.i = phi i32 [ %i.ws, %bb.hg ], [ %i.wp, %bb.hf ], [ %i.wo, %bb.he ], [ %i.wm, %bb.hd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #25
  br label %.thread479.i

bb.hh:                                            ; preds = %bb.hg
  %i.wt = load ptr, ptr %i.wn, align 8, !tbaa !109
  call fastcc void @bbuf_free(ptr noundef %i.wt)
  %i.wu = load ptr, ptr %i.h, align 8, !tbaa !151
  store ptr %i.wu, ptr %i.wn, align 8, !tbaa !109
  %i.wv = load i32, ptr %i.wi, align 4, !tbaa !150
  %i.ww = and i32 %i.wv, %i.wk
  store i32 %i.ww, ptr %i.wi, align 4, !tbaa !150
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #25
  br label %bb.hk

bb.hi:                                            ; preds = %bb.hc
  %i.wx = call fastcc i32 @add_property_to_cc(ptr noundef nonnull %i.wb, ptr noundef nonnull @.str.9, i32 noundef 1, ptr noundef nonnull %5) ; 2 uses
  %.not354.i = icmp eq i32 %i.wx, 0
  br i1 %.not354.i, label %bb.hj, label %.thread479.i

bb.hj:                                            ; preds = %bb.hi
  %i.wy = getelementptr i8, ptr %i.wb, i64 8      ; 2 uses
  %i.wz = load i32, ptr %i.wy, align 8, !tbaa !18
  %i.xa = and i32 %i.wz, -9217
  store i32 %i.xa, ptr %i.wy, align 8, !tbaa !18
  br label %bb.hk

bb.hk:                                            ; preds = %bb.hj, %bb.hh
  %i.xb = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.xc = call fastcc i32 @create_node_from_array(i32 noundef 1, ptr noundef nonnull %i.xb, ptr noundef nonnull %i.sw) ; 2 uses
  %.not359.i = icmp eq i32 %i.xc, 0
  br i1 %.not359.i, label %bb.hl, label %.thread479.i

bb.hl:                                            ; preds = %bb.hk
  %i.xd = call fastcc i32 @create_property_node(ptr noundef nonnull %i.sw, ptr noundef nonnull %5, ptr noundef nonnull @.str.8) ; 2 uses
  %.not360.i = icmp eq i32 %i.xd, 0
  br i1 %.not360.i, label %bb.hm, label %.thread479.i

bb.hm:                                            ; preds = %bb.hl
  %i.xe = load ptr, ptr %i.sw, align 8, !tbaa !130 ; 3 uses
  %i.xf = call fastcc i32 @add_property_to_cc(ptr noundef %i.xe, ptr noundef nonnull @.str.21, i32 noundef 0, ptr noundef nonnull %5) ; 2 uses
  %.not361.i = icmp eq i32 %i.xf, 0
  br i1 %.not361.i, label %bb.hn, label %.thread479.i

bb.hn:                                            ; preds = %bb.hm
  %i.xg = getelementptr i8, ptr %i.xe, i64 40
  %i.xh = call fastcc i32 @add_code_range_to_buf0(ptr noundef %i.xg, ptr noundef nonnull %5, i32 noundef 8205, i32 noundef 8205, i32 noundef 1) ; 2 uses
  %.not362.i = icmp eq i32 %i.xh, 0
  br i1 %.not362.i, label %bb.ho, label %.thread479.i

bb.ho:                                            ; preds = %bb.hn
  %i.xi = call noalias noundef dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #26 ; 9 uses
  %i.xj = icmp eq ptr %i.xi, null
  br i1 %i.xj, label %.thread479.i, label %bb.hp

bb.hp:                                            ; preds = %bb.ho
  store i32 5, ptr %i.xi, align 1
  %i.xk = getelementptr i8, ptr %i.xi, i64 4
  store i32 0, ptr %i.xk, align 4, !tbaa !67
  %i.xl = getelementptr i8, ptr %i.xi, i64 8
  %i.xm = getelementptr i8, ptr %i.xi, i64 16
  store i32 0, ptr %i.xm, align 8, !tbaa !67
  %i.xn = getelementptr i8, ptr %i.xi, i64 20
  store i32 -1, ptr %i.xn, align 4, !tbaa !67
  %i.xo = getelementptr i8, ptr %i.xi, i64 24
  store i32 1, ptr %i.xo, align 8, !tbaa !67
  %i.xp = getelementptr i8, ptr %i.xi, i64 28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.xp, i8 0, i64 24, i1 false)
  store ptr %i.xe, ptr %i.xl, align 8, !tbaa !67
  store ptr %i.xi, ptr %i.sw, align 8, !tbaa !130
  %i.xq = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.xr = call fastcc i32 @create_node_from_array(i32 noundef 0, ptr noundef nonnull %i.xq, ptr noundef nonnull %.1234.sroa.gep.i) ; 2 uses
  %.not364.i = icmp eq i32 %i.xr, 0
  br i1 %.not364.i, label %.thread488.i, label %.thread479.i

.thread488.i:                                     ; preds = %bb.hp, %bb.fq
  %.11.i = phi i32 [ %i.rc, %bb.fq ], [ 0, %bb.hp ] ; 2 uses
  %.1234.sroa.phi.i = phi ptr [ %.1234.sroa.gep398.i, %bb.fq ], [ %.1234.sroa.gep.i, %bb.hp ]
  %i.xs = call noalias noundef dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #26 ; 4 uses
  %i.xt = icmp eq ptr %i.xs, null
  br i1 %i.xt, label %.thread479.i, label %bb.hq

bb.hq:                                            ; preds = %.thread488.i
  store i32 3, ptr %i.xs, align 1
  %i.xu = load i32, ptr %5, align 8, !tbaa !125
  %i.xv = call noalias noundef dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #26 ; 7 uses
  %i.xw = icmp eq ptr %i.xv, null
  br i1 %i.xw, label %.thread479.i, label %bb.hr

bb.hr:                                            ; preds = %bb.hq
  %i.xx = or i32 %i.xu, 4
  store <4 x i32> <i32 6, i32 0, i32 2, i32 0>, ptr %i.xv, align 1
  %i.xy = getelementptr i8, ptr %i.xv, i64 16
  %i.xz = getelementptr i8, ptr %i.xv, i64 24
  %i.ya = getelementptr i8, ptr %i.xv, i64 20
  store i32 -1, ptr %i.ya, align 4, !tbaa !67
  %i.yb = getelementptr i8, ptr %i.xv, i64 52
  store i32 0, ptr %i.yb, align 4, !tbaa !67
  store i32 %i.xx, ptr %i.xy, align 8, !tbaa !67
  store ptr %i.xs, ptr %i.xz, align 8, !tbaa !67
  store ptr %i.xv, ptr %.1234.sroa.phi.i, align 8, !tbaa !130
  br label %bb.hs

bb.hs:                                            ; preds = %bb.hs, %bb.hr
  %.0.i397.i = phi i32 [ 0, %bb.hr ], [ %indvars.iv.next.i.i.a, %bb.hs ] ; 3 uses
  %i.yc = sext i32 %.0.i397.i to i64
  %i.yd = getelementptr [8 x i8], ptr %i.g, i64 %i.yc
  %i.ye = load ptr, ptr %i.yd, align 8, !tbaa !130
  %.not.i.i = icmp eq ptr %i.ye, null
  %indvars.iv.next.i.i.a = add i32 %.0.i397.i, 1
  br i1 %.not.i.i, label %.preheader.i.i, label %bb.hs, !llvm.loop !1

.preheader.i.i:                                   ; preds = %bb.hs
  %i.yf = add i32 %.0.i397.i, -1                  ; 2 uses
  %i.yg = icmp sgt i32 %i.yf, -1
  br i1 %i.yg, label %.lr.ph.i.i, label %.loopexit.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %i.yh = zext nneg i32 %i.yf to i64
  br label %.lr.ph.split.i.i

.lr.ph.split.i.i:                                 ; preds = %bb.ht, %.lr.ph.i.i
  %indvars.iv40.i.i = phi i64 [ %indvars.iv.next41.i.i, %bb.ht ], [ %i.yh, %.lr.ph.i.i ] ; 5 uses
  %.02227.i.i = phi ptr [ %i.yk, %bb.ht ], [ null, %.lr.ph.i.i ] ; 2 uses
  %i.yi = getelementptr [8 x i8], ptr %i.g, i64 %indvars.iv40.i.i ; 2 uses
  %i.yj = load ptr, ptr %i.yi, align 8, !tbaa !130
  %i.yk = call noalias noundef dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #26 ; 6 uses
  %i.yl = icmp eq ptr %i.yk, null
  br i1 %i.yl, label %node_new_list.exit.i.i, label %bb.ht

bb.ht:                                            ; preds = %.lr.ph.split.i.i
  store i32 9, ptr %i.yk, align 1
  %i.ym = getelementptr i8, ptr %i.yk, i64 8
  store ptr %i.yj, ptr %i.ym, align 8, !tbaa !67
  %i.yn = getelementptr i8, ptr %i.yk, i64 16
  store ptr %.02227.i.i, ptr %i.yn, align 8, !tbaa !67
  store ptr null, ptr %i.yi, align 8, !tbaa !130
  %indvars.iv.next41.i.i = add nsw i64 %indvars.iv40.i.i, -1
  %i.yo = icmp sgt i64 %indvars.iv40.i.i, 0
  br i1 %i.yo, label %.lr.ph.split.i.i, label %.loopexit.i, !llvm.loop !2

node_new_list.exit.i.i:                           ; preds = %.lr.ph.split.i.i
  %i.yp = and i64 %indvars.iv40.i.i, 2147483648
  %i.yq = icmp eq i64 %i.yp, 0
  br i1 %i.yq, label %.lr.ph32.preheader.i.i, label %create_node_from_array.exit.i

.lr.ph32.preheader.i.i:                           ; preds = %node_new_list.exit.i.i
  %i.yr = and i64 %indvars.iv40.i.i, 2147483647
  br label %.lr.ph32.i.i

.lr.ph32.i.i:                                     ; preds = %.lr.ph32.i.i, %.lr.ph32.preheader.i.i
  %indvars.iv47.i.i = phi i64 [ %i.yr, %.lr.ph32.preheader.i.i ], [ %indvars.iv.next48.i.i, %.lr.ph32.i.i ] ; 3 uses
  %i.ys = getelementptr [8 x i8], ptr %i.g, i64 %indvars.iv47.i.i ; 2 uses
  %i.yt = load ptr, ptr %i.ys, align 8, !tbaa !130
  call void @onig_node_free(ptr noundef %i.yt)
  %indvars.iv.next48.i.i = add nsw i64 %indvars.iv47.i.i, -1
  store ptr null, ptr %i.ys, align 8, !tbaa !130
  %.not58.i.i = icmp eq i64 %indvars.iv47.i.i, 0
  br i1 %.not58.i.i, label %create_node_from_array.exit.i, label %.lr.ph32.i.i, !llvm.loop !3

create_node_from_array.exit.i:                    ; preds = %.lr.ph32.i.i, %node_new_list.exit.i.i
  call void @onig_node_free(ptr noundef %.02227.i.i)
  br label %.thread479.i

.loopexit.i:                                      ; preds = %bb.ht, %.preheader.i.i
  %.0400.ph.i = phi ptr [ null, %.preheader.i.i ], [ %i.yk, %bb.ht ]
  %i.yu = call noalias noundef dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #26 ; 9 uses
  %i.yv = icmp eq ptr %i.yu, null
  br i1 %i.yv, label %.thread479.i, label %bb.hu

bb.hu:                                            ; preds = %.loopexit.i
  store <4 x i32> <i32 6, i32 0, i32 4, i32 0>, ptr %i.yu, align 1
  %i.yw = getelementptr i8, ptr %i.yu, i64 16
  store i32 0, ptr %i.yw, align 8, !tbaa !67
  %i.yx = getelementptr i8, ptr %i.yu, i64 24
  %i.yy = getelementptr i8, ptr %i.yu, i64 20
  store i32 -1, ptr %i.yy, align 4, !tbaa !67
  %i.yz = getelementptr i8, ptr %i.yu, i64 52
  store i32 0, ptr %i.yz, align 4, !tbaa !67
  store ptr %.0400.ph.i, ptr %i.yx, align 8, !tbaa !67
  %i.za = load ptr, ptr %i.qr, align 8, !tbaa !136
  %i.zb = getelementptr i8, ptr %i.za, i64 132
  %i.zc = load i32, ptr %i.zb, align 4, !tbaa !260
  %i.zd = and i32 %i.zc, 1
  %.not366.i = icmp eq i32 %i.zd, 0
  br i1 %.not366.i, label %bb.hx, label %bb.hv

bb.hv:                                            ; preds = %bb.hu
  %i.ze = load i32, ptr %5, align 8, !tbaa !125
  %i.zf = and i32 %i.ze, -2
  %i.zg = call fastcc ptr @node_new_option(i32 noundef %i.zf) ; 3 uses
  store ptr %i.zg, ptr %0, align 8, !tbaa !130
  %i.zh = icmp eq ptr %i.zg, null
  br i1 %i.zh, label %.thread479.i, label %bb.hw

bb.hw:                                            ; preds = %bb.hv
  %i.zi = getelementptr i8, ptr %i.zg, i64 24
  store ptr %i.yu, ptr %i.zi, align 8, !tbaa !67
  br label %node_extended_grapheme_cluster.exit.thread

bb.hx:                                            ; preds = %bb.hu
  store ptr %i.yu, ptr %0, align 8, !tbaa !130
  br label %node_extended_grapheme_cluster.exit.thread

.thread479.i:                                     ; preds = %bb.hv, %.loopexit.i, %create_node_from_array.exit.i, %bb.hq, %.thread488.i, %bb.hp, %bb.ho, %bb.hn, %bb.hm, %bb.hl, %bb.hk, %bb.hi, %.thread462.i, %node_new_cclass.exit394.thread.i, %bb.hb, %bb.ha, %bb.gz, %bb.gy, %bb.gx, %bb.gw, %bb.gv, %bb.gu, %bb.gt, %bb.gs, %bb.gr, %quantify_node.exit.thread438.i, %bb.gq, %bb.gp, %bb.go, %bb.gn, %bb.gm, %bb.gl, %bb.gk, %bb.gj, %bb.gi, %bb.gh, %bb.gg, %bb.gf, %.thread412.i, %bb.ge, %bb.gd, %bb.gc, %bb.gb, %bb.ga, %bb.fz, %bb.fy, %bb.fx, %bb.fv, %bb.fu, %add_property_to_cc.exit.i, %add_property_to_cc.exit.thread.i, %node_new_cclass.exit.thread.i, %propname2ctype.exit.thread.i, %node_new_str_raw.exit.thread.i347, %bb.fm, %bb.fl
  %.0248.i = phi ptr [ null, %bb.fl ], [ null, %bb.fm ], [ null, %node_new_str_raw.exit.thread.i347 ], [ null, %.loopexit.i ], [ null, %.thread488.i ], [ null, %create_node_from_array.exit.i ], [ %i.xs, %bb.hq ], [ %i.yu, %bb.hv ], [ null, %bb.ha ], [ null, %add_property_to_cc.exit.thread.i ], [ null, %propname2ctype.exit.thread.i ], [ null, %node_new_cclass.exit.thread.i ], [ null, %add_property_to_cc.exit.i ], [ null, %bb.fu ], [ null, %bb.fv ], [ null, %bb.fx ], [ null, %bb.hl ], [ null, %bb.hm ], [ null, %bb.hn ], [ null, %bb.hp ], [ null, %bb.ho ], [ null, %bb.gg ], [ null, %bb.gh ], [ null, %bb.gi ], [ null, %bb.hk ], [ null, %bb.hi ], [ null, %.thread462.i ], [ null, %node_new_cclass.exit394.thread.i ], [ null, %bb.fy ], [ null, %bb.gf ], [ null, %.thread412.i ], [ null, %bb.fz ], [ null, %bb.ge ], [ null, %bb.gd ], [ null, %bb.gb ], [ null, %bb.ga ], [ null, %bb.gj ], [ null, %bb.gq ], [ null, %bb.gp ], [ null, %bb.gn ], [ null, %bb.gk ], [ null, %bb.gl ], [ null, %bb.gm ], [ null, %bb.hb ], [ null, %quantify_node.exit.thread438.i ], [ null, %bb.gz ], [ null, %bb.gr ], [ null, %bb.gs ], [ null, %bb.gu ], [ null, %bb.gv ], [ null, %bb.gw ], [ null, %bb.gt ], [ null, %bb.gy ], [ null, %bb.gx ], [ null, %bb.go ], [ null, %bb.gc ]
  %.12.i = phi i32 [ %i.qv, %bb.fl ], [ %i.rc, %bb.fm ], [ %i.rc, %node_new_str_raw.exit.thread.i347 ], [ 0, %.loopexit.i ], [ %.11.i, %.thread488.i ], [ -5, %create_node_from_array.exit.i ], [ %.11.i, %bb.hq ], [ 0, %bb.hv ], [ -5, %bb.ha ], [ %i.sg, %add_property_to_cc.exit.thread.i ], [ %i.rc, %propname2ctype.exit.thread.i ], [ %i.rc, %node_new_cclass.exit.thread.i ], [ %i.sk, %add_property_to_cc.exit.i ], [ %i.sq, %bb.fu ], [ %i.sr, %bb.fv ], [ %i.sv, %bb.fx ], [ %i.xd, %bb.hl ], [ %i.xf, %bb.hm ], [ %i.xh, %bb.hn ], [ %i.xr, %bb.hp ], [ -5, %bb.ho ], [ %i.tm, %bb.gg ], [ %i.tn, %bb.gh ], [ %i.to, %bb.gi ], [ %i.xc, %bb.hk ], [ %i.wx, %bb.hi ], [ %.7244.ph.i, %.thread462.i ], [ 0, %node_new_cclass.exit394.thread.i ], [ %i.sy, %bb.fy ], [ %i.tl, %bb.gf ], [ %i.tk, %.thread412.i ], [ %i.ta, %bb.fz ], [ %i.tj, %bb.ge ], [ %i.th, %bb.gd ], [ %i.te, %bb.gb ], [ %i.tc, %bb.ga ], [ %i.tp, %bb.gj ], [ %i.uo, %bb.gq ], [ -5, %bb.gp ], [ %i.ud, %bb.gn ], [ %i.tr, %bb.gk ], [ %i.tv, %bb.gl ], [ %i.tv, %bb.gm ], [ %i.wa, %bb.hb ], [ %i.up, %quantify_node.exit.thread438.i ], [ %i.vq, %bb.gz ], [ %i.uq, %bb.gr ], [ %i.us, %bb.gs ], [ %i.vb, %bb.gu ], [ %i.vd, %bb.gv ], [ %i.vf, %bb.gw ], [ -5, %bb.gt ], [ %i.vp, %bb.gy ], [ -5, %bb.gx ], [ %i.ue, %bb.go ], [ %i.tg, %bb.gc ]
  %.12.fr.i = freeze i32 %.12.i                   ; 3 uses
  call void @onig_node_free(ptr noundef %.0248.i)
  %i.zj = load ptr, ptr %i.g, align 16, !tbaa !130
  call void @onig_node_free(ptr noundef %i.zj)
  %i.zk = load ptr, ptr %.1234.sroa.gep398.i, align 8, !tbaa !130
  call void @onig_node_free(ptr noundef %i.zk)
  %i.zl = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.zm = load ptr, ptr %i.zl, align 16, !tbaa !130
  call void @onig_node_free(ptr noundef %i.zm)
  %i.zn = load ptr, ptr %.1234.sroa.gep.i, align 8, !tbaa !130
  call void @onig_node_free(ptr noundef %i.zn)
  %i.zo = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.zp = load ptr, ptr %i.zo, align 16, !tbaa !130
  call void @onig_node_free(ptr noundef %i.zp)
  %i.zq = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.zr = load ptr, ptr %i.zq, align 8, !tbaa !130
  call void @onig_node_free(ptr noundef %i.zr)
  %i.zs = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.zt = load ptr, ptr %i.zs, align 16, !tbaa !130
  call void @onig_node_free(ptr noundef %i.zt)
  %i.zu = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.zv = load ptr, ptr %i.zu, align 8, !tbaa !130
  call void @onig_node_free(ptr noundef %i.zv)
  %i.zw = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.zx = load ptr, ptr %i.zw, align 16, !tbaa !130
  call void @onig_node_free(ptr noundef %i.zx)
  %i.zy = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %i.zz = load ptr, ptr %i.zy, align 8, !tbaa !130
  call void @onig_node_free(ptr noundef %i.zz)
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  %i.aab = load ptr, ptr %i.aaa, align 16, !tbaa !130
  call void @onig_node_free(ptr noundef %i.aab)
  %i.aac = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  %i.aad = load ptr, ptr %i.aac, align 8, !tbaa !130
  call void @onig_node_free(ptr noundef %i.aad)
  %i.aae = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  %i.aaf = load ptr, ptr %i.aae, align 16, !tbaa !130
  call void @onig_node_free(ptr noundef %i.aaf)
  %i.aag = getelementptr inbounds nuw i8, ptr %i.g, i64 104
  %i.aah = load ptr, ptr %i.aag, align 8, !tbaa !130
  call void @onig_node_free(ptr noundef %i.aah)
  %i.aai = getelementptr inbounds nuw i8, ptr %i.g, i64 112
  %i.aaj = load ptr, ptr %i.aai, align 16, !tbaa !130
  call void @onig_node_free(ptr noundef %i.aaj)
  %i.aak = getelementptr inbounds nuw i8, ptr %i.g, i64 120
  %i.aal = load ptr, ptr %i.aak, align 8, !tbaa !130
  call void @onig_node_free(ptr noundef %i.aal)
  %i.aam = getelementptr inbounds nuw i8, ptr %i.g, i64 128
  %i.aan = load ptr, ptr %i.aam, align 16, !tbaa !130
  call void @onig_node_free(ptr noundef %i.aan)
  %i.aao = getelementptr inbounds nuw i8, ptr %i.g, i64 136
  %i.aap = load ptr, ptr %i.aao, align 8, !tbaa !130
  call void @onig_node_free(ptr noundef %i.aap)
  %i.aaq = icmp eq i32 %.12.fr.i, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #25
  br i1 %i.aaq, label %node_new_quantifier.exit379, label %node_extended_grapheme_cluster.exit

node_extended_grapheme_cluster.exit.thread:       ; preds = %bb.hw, %bb.hx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #25
  br label %.thread426

node_extended_grapheme_cluster.exit:              ; preds = %.thread479.i
  %i.aar = icmp slt i32 %.12.fr.i, 0
  br i1 %i.aar, label %node_new_quantifier.exit379, label %.thread426

bb.hy:                                            ; preds = %bb.b
  %i.aas = tail call noalias noundef dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #26 ; 7 uses
  %i.aat = icmp eq ptr %i.aas, null
  br i1 %i.aat, label %onig_node_new_anchor.exit.thread, label %onig_node_new_anchor.exit

onig_node_new_anchor.exit.thread:                 ; preds = %bb.hy
  store ptr null, ptr %0, align 8, !tbaa !130
  br label %node_new_quantifier.exit379

onig_node_new_anchor.exit:                        ; preds = %bb.hy
  store i32 7, ptr %i.aas, align 1
  %i.aau = getelementptr i8, ptr %i.aas, i64 4
  store i32 65536, ptr %i.aau, align 4, !tbaa !67
  %i.aav = getelementptr i8, ptr %i.aas, i64 8
  store ptr null, ptr %i.aav, align 8, !tbaa !67
  %i.aaw = getelementptr i8, ptr %i.aas, i64 16
  store i32 -1, ptr %i.aaw, align 8, !tbaa !67
  %i.aax = getelementptr i8, ptr %i.aas, i64 20
  store i32 0, ptr %i.aax, align 4, !tbaa !67
  store ptr %i.aas, ptr %0, align 8, !tbaa !130
  br label %.thread426

bb.hz:                                            ; preds = %bb.ln, %bb.b, %bb.ex
  %i.aay = getelementptr i8, ptr %1, i64 16
  %i.aaz = load ptr, ptr %i.aay, align 8, !tbaa !141
  %i.aba = load ptr, ptr %3, align 8, !tbaa !112
  %i.abb = tail call noalias noundef dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #26 ; 10 uses
  %i.abc = icmp eq ptr %i.abb, null
  br i1 %i.abc, label %node_new_str.exit.thread, label %bb.ia

bb.ia:                                            ; preds = %bb.hz
  store i32 0, ptr %i.abb, align 1
  %i.abd = getelementptr i8, ptr %i.abb, i64 28
  store i32 0, ptr %i.abd, align 4, !tbaa !67
  %i.abe = getelementptr i8, ptr %i.abb, i64 24
  store i32 0, ptr %i.abe, align 8, !tbaa !67
  %i.abf = getelementptr i8, ptr %i.abb, i64 32   ; 2 uses
  %i.abg = getelementptr i8, ptr %i.abb, i64 8
  store ptr %i.abf, ptr %i.abg, align 8, !tbaa !67
  %i.abh = getelementptr i8, ptr %i.abb, i64 16
  store ptr %i.abf, ptr %i.abh, align 8, !tbaa !67
  %i.abi = tail call i32 @onig_node_str_cat(ptr noundef nonnull %i.abb, ptr noundef %i.aaz, ptr noundef %i.aba)
  %.not.i350 = icmp eq i32 %i.abi, 0
  br i1 %.not.i350, label %node_new_str.exit, label %bb.ib

end_hunk_0
begin_hunk_1_@CC_DUP_WARN:bb.a
  %i.e = and i64 %i.d, -5
  %.not5 = icmp eq i64 %i.e, 0
  br i1 %.not5, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !137
  %i.h = getelementptr i8, ptr %i.g, i64 8
  %i.i = load i32, ptr %i.h, align 4, !tbaa !106
  %i.j = and i32 %i.i, 67108864
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr i8, ptr %0, i64 180        ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !150  ; 2 uses
  %i.m = and i32 %i.l, 67108864
  %.not4 = icmp eq i32 %i.m, 0
  br i1 %.not4, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.n = or disjoint i32 %i.l, 67108864
  store i32 %i.n, ptr %i.k, align 4, !tbaa !150
  tail call void (ptr, ptr, ...) @onig_syntax_warn(ptr noundef nonnull %0, ptr noundef nonnull @.str.7)
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.b, %bb.e, %bb.d, %bb.c
  ret void
}

declare i32 @onig_bbuf_init(ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @add_property_to_cc(ptr nofree noundef captures(address) %0, ptr noundef %1, i32 noundef range(i32 0, 2) %2, ptr nofree noundef captures(none) %3) unnamed_addr #5 !guid !304 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #29
  %i.b = getelementptr i8, ptr %1, i64 %i.a       ; 2 uses
  %i.c = getelementptr i8, ptr %3, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !136
  %i.e = getelementptr i8, ptr %i.d, i64 80
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !149
  %i.g = tail call i32 %i.f(ptr noundef nonnull @OnigEncodingASCII, ptr noundef nonnull %1, ptr noundef %i.b) #25, !inline_history !303 ; 3 uses
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %propname2ctype.exit.thread, label %propname2ctype.exit

propname2ctype.exit.thread:                       ; preds = %bb.a
  %i.i = getelementptr i8, ptr %3, i64 56
  store ptr %1, ptr %i.i, align 8, !tbaa !134
  %i.j = getelementptr i8, ptr %3, i64 64
  store ptr %i.b, ptr %i.j, align 8, !tbaa !135
  br label %bb.b

propname2ctype.exit:                              ; preds = %bb.a
  %i.k = tail call fastcc i32 @add_ctype_to_cc(ptr noundef %0, i32 noundef %i.g, i32 noundef %2, i32 noundef 0, ptr noundef nonnull %3)
  br label %bb.b

bb.b:                                             ; preds = %propname2ctype.exit.thread, %propname2ctype.exit
  %.0 = phi i32 [ %i.k, %propname2ctype.exit ], [ %i.g, %propname2ctype.exit.thread ]
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @quantify_property_node(ptr nofree noundef captures(none) initializes((0, 8)) %0, ptr nofree noundef captures(none) %1, ptr noundef %2, i8 noundef signext range(i8 42, 51) %3) unnamed_addr #5 !guid !306 {
bb.a:
  %i.a = tail call noalias noundef dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #26 ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %node_new_cclass.exit.thread.i, label %bb.b

node_new_cclass.exit.thread.i:                    ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !130
  br label %quantify_node.exit

bb.b:                                             ; preds = %bb.a
  store i32 1, ptr %i.a, align 1
  %i.c = getelementptr i8, ptr %i.a, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %i.c, i8 0, i64 44, i1 false)
  store ptr %i.a, ptr %0, align 8, !tbaa !130
  %i.d = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #29
  %i.e = getelementptr i8, ptr %2, i64 %i.d       ; 2 uses
  %i.f = getelementptr i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !136
  %i.h = getelementptr i8, ptr %i.g, i64 80
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !149
  %i.j = tail call i32 %i.i(ptr noundef nonnull @OnigEncodingASCII, ptr noundef nonnull %2, ptr noundef %i.e) #25, !inline_history !305 ; 3 uses
  %i.k = icmp slt i32 %i.j, 0
  br i1 %i.k, label %add_property_to_cc.exit.thread.i, label %add_property_to_cc.exit.i

add_property_to_cc.exit.thread.i:                 ; preds = %bb.b
  %i.l = getelementptr i8, ptr %1, i64 56
  store ptr %2, ptr %i.l, align 8, !tbaa !134
  %i.m = getelementptr i8, ptr %1, i64 64
  store ptr %i.e, ptr %i.m, align 8, !tbaa !135
  br label %bb.c

add_property_to_cc.exit.i:                        ; preds = %bb.b
  %i.n = tail call fastcc i32 @add_ctype_to_cc(ptr noundef nonnull %i.a, i32 noundef %i.j, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %1) ; 2 uses
  %.not.i = icmp eq i32 %i.n, 0
  br i1 %.not.i, label %create_property_node.exit, label %bb.c

bb.c:                                             ; preds = %add_property_to_cc.exit.i, %add_property_to_cc.exit.thread.i
  %.0.i12.i = phi i32 [ %i.j, %add_property_to_cc.exit.thread.i ], [ %i.n, %add_property_to_cc.exit.i ]
  %i.o = load ptr, ptr %0, align 8, !tbaa !130
  tail call void @onig_node_free(ptr noundef %i.o)
  br label %quantify_node.exit

create_property_node.exit:                        ; preds = %add_property_to_cc.exit.i
  switch i8 %3, label %quantify_node.exit [
    i8 50, label %bb.e
    i8 43, label %bb.d
    i8 42, label %bb.f
  ]

bb.d:                                             ; preds = %create_property_node.exit
  br label %bb.f

bb.e:                                             ; preds = %create_property_node.exit
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %create_property_node.exit
  %i.p = phi <2 x i32> [ splat (i32 2), %bb.e ], [ <i32 1, i32 -1>, %bb.d ], [ <i32 0, i32 -1>, %create_property_node.exit ]
  %i.q = tail call noalias noundef dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #26 ; 8 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %quantify_node.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 5, ptr %i.q, align 1
  %i.s = getelementptr i8, ptr %i.q, i64 4
  store i32 0, ptr %i.s, align 4, !tbaa !67
  %i.t = getelementptr i8, ptr %i.q, i64 8
  %i.u = getelementptr i8, ptr %i.q, i64 16
  store <2 x i32> %i.p, ptr %i.u, align 8, !tbaa !67
  %i.v = getelementptr i8, ptr %i.q, i64 24
  store i32 1, ptr %i.v, align 8, !tbaa !67
  %i.w = getelementptr i8, ptr %i.q, i64 28
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.w, i8 0, i64 24, i1 false)
  %i.x = load ptr, ptr %0, align 8, !tbaa !130
  store ptr %i.x, ptr %i.t, align 8, !tbaa !67
  store ptr %i.q, ptr %0, align 8, !tbaa !130
  br label %quantify_node.exit

quantify_node.exit:                               ; preds = %bb.c, %node_new_cclass.exit.thread.i, %bb.g, %bb.f, %create_property_node.exit
  %.010 = phi i32 [ -11, %create_property_node.exit ], [ -5, %bb.f ], [ 0, %bb.g ], [ %.0.i12.i, %bb.c ], [ -5, %node_new_cclass.exit.thread.i ]
  ret i32 %.010
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @create_property_node(ptr nofree noundef captures(none) initializes((0, 8)) %0, ptr nofree noundef captures(none) %1, ptr noundef %2) unnamed_addr #5 !guid !308 {
bb.a:
  %i.a = tail call noalias noundef dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #26 ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %node_new_cclass.exit.thread, label %bb.b

node_new_cclass.exit.thread:                      ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !130
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  store i32 1, ptr %i.a, align 1
  %i.c = getelementptr i8, ptr %i.a, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %i.c, i8 0, i64 44, i1 false)
  store ptr %i.a, ptr %0, align 8, !tbaa !130
  %i.d = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #29
  %i.e = getelementptr i8, ptr %2, i64 %i.d       ; 2 uses
  %i.f = getelementptr i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !136
  %i.h = getelementptr i8, ptr %i.g, i64 80
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !149
  %i.j = tail call i32 %i.i(ptr noundef nonnull @OnigEncodingASCII, ptr noundef nonnull %2, ptr noundef %i.e) #25, !inline_history !307 ; 3 uses
  %i.k = icmp slt i32 %i.j, 0
  br i1 %i.k, label %add_property_to_cc.exit.thread, label %add_property_to_cc.exit

add_property_to_cc.exit.thread:                   ; preds = %bb.b
  %i.l = getelementptr i8, ptr %1, i64 56
  store ptr %2, ptr %i.l, align 8, !tbaa !134
  %i.m = getelementptr i8, ptr %1, i64 64
  store ptr %i.e, ptr %i.m, align 8, !tbaa !135
  br label %bb.c

add_property_to_cc.exit:                          ; preds = %bb.b
  %i.n = tail call fastcc i32 @add_ctype_to_cc(ptr noundef nonnull %i.a, i32 noundef %i.j, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %1) ; 2 uses
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %add_property_to_cc.exit.thread, %add_property_to_cc.exit
  %.0.i12 = phi i32 [ %i.j, %add_property_to_cc.exit.thread ], [ %i.n, %add_property_to_cc.exit ]
  %i.o = load ptr, ptr %0, align 8, !tbaa !130
  tail call void @onig_node_free(ptr noundef %i.o)
  br label %bb.d

bb.d:                                             ; preds = %node_new_cclass.exit.thread, %add_property_to_cc.exit, %bb.c
  %.0 = phi i32 [ -5, %node_new_cclass.exit.thread ], [ %.0.i12, %bb.c ], [ 0, %add_property_to_cc.exit ]
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong memory(readwrite, target_mem: none) uwtable
define internal fastcc range(i32 -5, 1) i32 @create_node_from_array(i32 noundef range(i32 0, 2) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2) unnamed_addr #12 !guid !309 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ %indvars.iv.next.a, %bb.b ] ; 3 uses
  %i.a = sext i32 %.0 to i64
  %i.b = getelementptr [8 x i8], ptr %2, i64 %i.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !130
  %.not = icmp eq ptr %i.c, null
  %indvars.iv.next.a = add i32 %.0, 1
  br i1 %.not, label %.preheader, label %bb.b, !llvm.loop !1

.preheader:                                       ; preds = %bb.b
  %i.d = add i32 %.0, -1                          ; 2 uses
  %i.e = icmp sgt i32 %i.d, -1
  br i1 %i.e, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.f = icmp eq i32 %0, 0
  %i.g = zext nneg i32 %i.d to i64                ; 2 uses
  br i1 %i.f, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.c
  %indvars.iv44.a = phi i64 [ %indvars.iv.next45.a, %bb.c ], [ %i.g, %.lr.ph ] ; 4 uses
  %.02227.us = phi ptr [ %i.n, %bb.c ], [ null, %.lr.ph ] ; 2 uses
  %i.h = getelementptr [8 x i8], ptr %2, i64 %indvars.iv44.a ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !130
  %i.j = tail call noalias noundef dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #26 ; 5 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %node_new_list.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.split.us
  store i32 8, ptr %i.j, align 1
  %i.l = getelementptr i8, ptr %i.j, i64 8
  store ptr %i.i, ptr %i.l, align 8, !tbaa !67
  %i.m = getelementptr i8, ptr %i.j, i64 16
  store ptr %.02227.us, ptr %i.m, align 8, !tbaa !67
  store ptr %i.j, ptr %1, align 8, !tbaa !130
  store ptr null, ptr %i.h, align 8, !tbaa !130
  %i.n = load ptr, ptr %1, align 8, !tbaa !130
  %indvars.iv.next45.a = add nsw i64 %indvars.iv44.a, -1
  %i.o = icmp sgt i64 %indvars.iv44.a, 0
  br i1 %i.o, label %.lr.ph.split.us, label %.loopexit, !llvm.loop !2

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.d
  %indvars.iv40 = phi i64 [ %indvars.iv.next41, %bb.d ], [ %i.g, %.lr.ph ] ; 4 uses
  %.02227 = phi ptr [ %i.v, %bb.d ], [ null, %.lr.ph ] ; 2 uses
  %i.p = getelementptr [8 x i8], ptr %2, i64 %indvars.iv40 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !130
  %i.r = tail call noalias noundef dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #26 ; 5 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %node_new_list.exit, label %bb.d

bb.d:                                             ; preds = %.lr.ph.split
  store i32 9, ptr %i.r, align 1
  %i.t = getelementptr i8, ptr %i.r, i64 8
  store ptr %i.q, ptr %i.t, align 8, !tbaa !67
  %i.u = getelementptr i8, ptr %i.r, i64 16
  store ptr %.02227, ptr %i.u, align 8, !tbaa !67
  store ptr %i.r, ptr %1, align 8, !tbaa !130
  store ptr null, ptr %i.p, align 8, !tbaa !130
  %i.v = load ptr, ptr %1, align 8, !tbaa !130
  %indvars.iv.next41 = add nsw i64 %indvars.iv40, -1
  %i.w = icmp sgt i64 %indvars.iv40, 0
  br i1 %i.w, label %.lr.ph.split, label %.loopexit, !llvm.loop !2

node_new_list.exit:                               ; preds = %.lr.ph.split, %.lr.ph.split.us
  %.us-phi = phi ptr [ %.02227.us, %.lr.ph.split.us ], [ %.02227, %.lr.ph.split ]
  %.us-phi28.in = phi i64 [ %indvars.iv44.a, %.lr.ph.split.us ], [ %indvars.iv40, %.lr.ph.split ] ; 2 uses
  store ptr null, ptr %1, align 8, !tbaa !130
  %i.x = and i64 %.us-phi28.in, 2147483648
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %.lr.ph32.preheader, label %._crit_edge

.lr.ph32.preheader:                               ; preds = %node_new_list.exit
  %i.z = and i64 %.us-phi28.in, 2147483647
  br label %.lr.ph32

.lr.ph32:                                         ; preds = %.lr.ph32.preheader, %.lr.ph32
  %indvars.iv47 = phi i64 [ %i.z, %.lr.ph32.preheader ], [ %indvars.iv.next48, %.lr.ph32 ] ; 3 uses
  %i.aa = getelementptr [8 x i8], ptr %2, i64 %indvars.iv47 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !130
  tail call void @onig_node_free(ptr noundef %i.ab)
  %indvars.iv.next48 = add nsw i64 %indvars.iv47, -1
  store ptr null, ptr %i.aa, align 8, !tbaa !130
  %.not58 = icmp eq i64 %indvars.iv47, 0
  br i1 %.not58, label %._crit_edge, label %.lr.ph32, !llvm.loop !3

._crit_edge:                                      ; preds = %.lr.ph32, %node_new_list.exit
  tail call void @onig_node_free(ptr noundef %.us-phi)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %bb.c, %.preheader, %._crit_edge
  %.023 = phi i32 [ -5, %._crit_edge ], [ 0, %.preheader ], [ 0, %bb.c ], [ 0, %bb.d ]
  ret i32 %.023
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @not_code_range_buf(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef nonnull captures(none) initializes((0, 8)) %2, ptr nofree noundef captures(none) %3) unnamed_addr #5 !guid !310 {
bb.a:
  store ptr null, ptr %2, align 8, !tbaa !151
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.b = getelementptr i8, ptr %0, i64 20
  %i.c = load i32, ptr %i.b, align 4, !tbaa !98
  %i.d = icmp sgt i32 %i.c, 1
  %i.e = select i1 %i.d, i32 0, i32 128
  br label %.thread.sink.split

bb.c:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %1, align 8, !tbaa !111    ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !18   ; 2 uses
  %i.h = getelementptr i8, ptr %i.f, i64 4
  %i.i = icmp slt i32 %i.g, 1
  br i1 %i.i, label %bb.b, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr i8, ptr %0, i64 20
  %i.k = load i32, ptr %i.j, align 4, !tbaa !98
  %i.l = icmp sgt i32 %i.k, 1
  %i.m = select i1 %i.l, i32 0, i32 128
  %wide.trip.count = zext nneg i32 %i.g to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.h
  %indvars.iv = phi i64 [ 0, %bb.d ], [ %indvars.iv.next, %bb.h ] ; 2 uses
  %.03250 = phi i32 [ %i.m, %bb.d ], [ %i.w, %bb.h ] ; 2 uses
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.n = shl nuw i32 %indvars.iv.tr, 1
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr [4 x i8], ptr %i.h, i64 %i.o ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !18
  %i.r = getelementptr i8, ptr %i.p, i64 4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !18   ; 2 uses
  %i.t = add i32 %i.q, -1                         ; 2 uses
  %.not = icmp ugt i32 %.03250, %i.t
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = tail call fastcc i32 @add_code_range_to_buf0(ptr noundef nonnull %2, ptr noundef %3, i32 noundef %.03250, i32 noundef %i.t, i32 noundef 1) ; 2 uses
  %.not44 = icmp eq i32 %i.u, 0
  br i1 %.not44, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.v = icmp eq i32 %i.s, -1
  br i1 %i.v, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = add nuw i32 %i.s, 1                      ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.thread.sink.split, label %bb.e, !llvm.loop !5

.thread.sink.split:                               ; preds = %bb.h, %bb.b
  %.lcssa.sink = phi i32 [ %i.e, %bb.b ], [ %i.w, %bb.h ]
  %i.x = tail call fastcc i32 @add_code_range_to_buf0(ptr noundef nonnull %2, ptr noundef %3, i32 noundef %.lcssa.sink, i32 noundef -1, i32 noundef 1)
  br label %.thread

.thread:                                          ; preds = %bb.g, %bb.f, %.thread.sink.split
  %.036 = phi i32 [ %i.x, %.thread.sink.split ], [ 0, %bb.g ], [ %i.u, %bb.f ]
  ret i32 %.036
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #21

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @add_ctype_to_cc_by_range(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef captures(none) %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4) unnamed_addr #5 !guid !318 {
bb.a:
  %i.a = load i32, ptr %4, align 4, !tbaa !18     ; 6 uses
  %i.b = icmp eq i32 %1, 0
  %i.c = icmp sgt i32 %i.a, 0                     ; 3 uses
  br i1 %i.b, label %.preheader, label %.preheader144

.preheader144:                                    ; preds = %bb.a
  br i1 %i.c, label %.preheader142.lr.ph, label %.preheader140

.preheader142.lr.ph:                              ; preds = %.preheader144
  %i.d = getelementptr i8, ptr %0, i64 8
  %i.e = getelementptr i8, ptr %2, i64 16
  %i.f = getelementptr i8, ptr %2, i64 180        ; 2 uses
  %wide.trip.count = zext nneg i32 %i.a to i64
  br label %.preheader142

.preheader:                                       ; preds = %bb.a
  br i1 %i.c, label %.lr.ph171, label %.loopexit

.lr.ph171:                                        ; preds = %.preheader
  %i.g = getelementptr i8, ptr %0, i64 8
  %i.h = getelementptr i8, ptr %2, i64 16
  %i.i = getelementptr i8, ptr %2, i64 180        ; 2 uses
  %wide.trip.count203 = zext nneg i32 %i.a to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph171, %._crit_edge168
  %indvars.iv200 = phi i64 [ 0, %.lr.ph171 ], [ %indvars.iv.next201, %._crit_edge168 ] ; 4 uses
  %i.j = shl i64 %indvars.iv200, 33
  %i.k = ashr exact i64 %i.j, 30
  %i.l = getelementptr i8, ptr %4, i64 %i.k       ; 2 uses
  %i.m = getelementptr i8, ptr %i.l, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !18   ; 4 uses
  %indvars.iv200.tr = trunc i64 %indvars.iv200 to i32
  %i.o = shl i32 %indvars.iv200.tr, 1
  %i.p = add i32 %i.o, 2
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr [4 x i8], ptr %4, i64 %i.q ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !18   ; 2 uses
  %.not119164 = icmp ugt i32 %i.n, %i.s
  br i1 %.not119164, label %._crit_edge168, label %.lr.ph167.preheader

.lr.ph167.preheader:                              ; preds = %bb.b
  %umax198 = tail call i32 @llvm.umax.i32(i32 %i.n, i32 %3) ; 3 uses
  %exitcond199.not14.not = icmp ult i32 %i.n, %3
  br i1 %exitcond199.not14.not, label %.lr.ph16, label %.lr.ph167.preheader._crit_edge

.lr.ph167:                                        ; preds = %CC_DUP_WARN.exit
  %i.t = add nuw i32 %.010216515, 1               ; 2 uses
  %exitcond199.not = icmp eq i32 %i.t, %umax198
end_hunk_1
