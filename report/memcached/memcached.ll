Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/memcached/original/memcached?download=true
inline.NumInlined: 142
inline.NumDeleted: 37
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@drive_machine:bb.a

bb.gk:                                            ; preds = %bb.gj
  %i.wi = load ptr, ptr @stderr, align 8, !tbaa !59
  %i.wj = load i32, ptr %i.e, align 8, !tbaa !60
  %i.wk = zext nneg i32 %i.aw to i64
  %i.wl = getelementptr inbounds nuw [8 x i8], ptr @__const.state_text.statenames, i64 %i.wk
  %i.wm = load ptr, ptr %i.wl, align 8, !tbaa !62
  %i.wn = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.wi, ptr noundef nonnull @.str.15, i32 noundef %i.wj, ptr noundef %i.wm, ptr noundef nonnull @.str.381) #35 ; 0 uses
  br label %conn_set_state.exit259

conn_set_state.exit259:                           ; preds = %bb.gk, %bb.gj
  store i32 12, ptr %i.d, align 8, !tbaa !56
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wf, i64 352 ; 2 uses
  %i.wp = load i32, ptr %i.wo, align 8, !tbaa !93 ; 2 uses
  %i.wq = add nsw i32 %i.wp, 1
  store i32 %i.wq, ptr %i.wo, align 8, !tbaa !93
  %i.wr = icmp sgt i32 %i.wp, 20
  br i1 %i.wr, label %bb.gl, label %.outer._crit_edge

bb.gl:                                            ; preds = %conn_set_state.exit259
  %i.ws = load ptr, ptr %i.i, align 8, !tbaa !38  ; 3 uses
  %i.wt = getelementptr inbounds nuw i8, ptr %i.ws, i64 352
  store i32 0, ptr %i.wt, align 8, !tbaa !93
  %i.wu = getelementptr inbounds nuw i8, ptr %i.ws, i64 6840
  %i.wv = load i32, ptr %i.wu, align 8, !tbaa !95
  %.not7.i = icmp eq i32 %i.wv, 0
  br i1 %.not7.i, label %.outer._crit_edge, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.gl
  %i.ww = getelementptr inbounds nuw i8, ptr %i.ws, i64 6808
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.gn, %.lr.ph.preheader.i
  %.08.i = phi ptr [ %i.xc, %bb.gn ], [ %i.ww, %.lr.ph.preheader.i ] ; 5 uses
  %i.wx = getelementptr inbounds nuw i8, ptr %.08.i, i64 8
  %i.wy = load ptr, ptr %i.wx, align 8, !tbaa !96
  %i.wz = icmp eq ptr %i.wy, null
  br i1 %i.wz, label %bb.gn, label %bb.gm

bb.gm:                                            ; preds = %.lr.ph.i
  %i.xa = getelementptr inbounds nuw i8, ptr %.08.i, i64 24
  %i.xb = load ptr, ptr %i.xa, align 8, !tbaa !97
  call void %i.xb(ptr noundef nonnull %.08.i) #33, !inline_history !241
  br label %bb.gn

bb.gn:                                            ; preds = %bb.gm, %.lr.ph.i
  %i.xc = getelementptr inbounds nuw i8, ptr %.08.i, i64 40
  %i.xd = getelementptr inbounds nuw i8, ptr %.08.i, i64 72
  %i.xe = load i32, ptr %i.xd, align 8, !tbaa !95
  %.not.i260 = icmp eq i32 %i.xe, 0
  br i1 %.not.i260, label %.outer._crit_edge, label %.lr.ph.i, !llvm.loop !1

bb.go:                                            ; preds = %bb.gi
  %i.xf = load i32, ptr %i.h, align 8, !tbaa !71
  %i.xg = icmp eq i32 %i.xf, 2
  br i1 %i.xg, label %bb.hi, label %bb.gp

bb.gp:                                            ; preds = %bb.go
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false)
  store ptr %3, ptr %i.j, align 8, !tbaa !244
  %i.xh = call fastcc i32 @_transmit_pre(ptr noundef nonnull %0, ptr noundef %3, i32 noundef 0, i1 noundef zeroext false), !inline_history !230 ; 2 uses
  %i.xi = icmp eq i32 %i.xh, 0
  br i1 %i.xi, label %bb.gq, label %bb.gr

bb.gq:                                            ; preds = %bb.gp
  call fastcc void @_transmit_post(ptr noundef nonnull %0, i64 noundef 0), !inline_history !230
  br label %transmit.exit

bb.gr:                                            ; preds = %bb.gp
  %i.xj = sext i32 %i.xh to i64
  store i64 %i.xj, ptr %i.k, align 8, !tbaa !245
  %i.xk = load ptr, ptr %i.l, align 8, !tbaa !98
  %i.xl = call i64 %i.xk(ptr noundef nonnull %0, ptr noundef nonnull %4, i32 noundef 0) #33, !inline_history !230 ; 4 uses
  %i.xm = icmp sgt i64 %i.xl, -1
  br i1 %i.xm, label %bb.gs, label %bb.gt

bb.gs:                                            ; preds = %bb.gr
  %i.xn = load ptr, ptr %i.i, align 8, !tbaa !38
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xn, i64 360
  %i.xp = call i32 @pthread_mutex_lock(ptr noundef nonnull %i.xo) #33, !inline_history !230 ; 0 uses
  %i.xq = load ptr, ptr %i.i, align 8, !tbaa !38  ; 2 uses
  %i.xr = getelementptr inbounds nuw i8, ptr %i.xq, i64 496 ; 2 uses
  %i.xs = load i64, ptr %i.xr, align 8, !tbaa !246
  %i.xt = add i64 %i.xs, %i.xl
  store i64 %i.xt, ptr %i.xr, align 8, !tbaa !246
  %i.xu = getelementptr inbounds nuw i8, ptr %i.xq, i64 360
  %i.xv = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.xu) #33, !inline_history !230 ; 0 uses
  call fastcc void @_transmit_post(ptr noundef nonnull %0, i64 noundef %i.xl), !inline_history !230
  %i.xw = load ptr, ptr %i.o, align 8, !tbaa !83
  %.not.i265 = icmp ne ptr %i.xw, null
  %..i = zext i1 %.not.i265 to i32
  br label %transmit.exit

bb.gt:                                            ; preds = %bb.gr
  %i.xx = icmp eq i64 %i.xl, -1
  br i1 %i.xx, label %bb.gu, label %bb.hc

bb.gu:                                            ; preds = %bb.gt
  %i.xy = tail call ptr @__errno_location() #36, !inline_history !230
  %i.xz = load i32, ptr %i.xy, align 4, !tbaa !16
  %i.ya = icmp eq i32 %i.xz, 11
  br i1 %i.ya, label %bb.gv, label %bb.hc

bb.gv:                                            ; preds = %bb.gu
  %i.yb = load ptr, ptr %i.m, align 8, !tbaa !74
  %i.yc = load i16, ptr %i.n, align 8, !tbaa !75
  %i.yd = icmp eq i16 %i.yc, 20
  br i1 %i.yd, label %transmit.exit, label %bb.gw

bb.gw:                                            ; preds = %bb.gv
  %i.ye = call i32 @event_del(ptr noundef nonnull %i.f) #33, !inline_history !231
  %i.yf = icmp eq i32 %i.ye, -1
  br i1 %i.yf, label %update_event.exit.thread25.i, label %update_event.exit.i

update_event.exit.i:                              ; preds = %bb.gw
  %i.yg = load i32, ptr %i.e, align 8, !tbaa !60
  call void @event_set(ptr noundef nonnull %i.f, i32 noundef %i.yg, i16 noundef signext 20, ptr noundef nonnull @event_handler, ptr noundef nonnull %0) #33, !inline_history !231
  %i.yh = call i32 @event_base_set(ptr noundef %i.yb, ptr noundef nonnull %i.f) #33, !inline_history !231 ; 0 uses
  store i16 20, ptr %i.n, align 8, !tbaa !75
  %i.yi = call i32 @event_add(ptr noundef nonnull %i.f, ptr noundef null) #33, !inline_history !231
  %.not27.i = icmp eq i32 %i.yi, -1
  br i1 %.not27.i, label %update_event.exit.thread25.i, label %transmit.exit

update_event.exit.thread25.i:                     ; preds = %update_event.exit.i, %bb.gw
  %i.yj = load i32, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 32), align 8, !tbaa !57
  %i.yk = icmp sgt i32 %i.yj, 0
  br i1 %i.yk, label %bb.gx, label %bb.gy

bb.gx:                                            ; preds = %update_event.exit.thread25.i
  %i.yl = load ptr, ptr @stderr, align 8, !tbaa !59
  %fwrite.i264 = call i64 @fwrite(ptr nonnull @.str.405, i64 22, i64 1, ptr %i.yl) #37, !inline_history !230 ; 0 uses
  br label %bb.gy

bb.gy:                                            ; preds = %bb.gx, %update_event.exit.thread25.i
  %i.ym = load i32, ptr %i.d, align 8, !tbaa !56  ; 2 uses
  %.not.i.i263 = icmp eq i32 %i.ym, 8
  br i1 %.not.i.i263, label %transmit.exit, label %bb.gz

bb.gz:                                            ; preds = %bb.gy
  %i.yn = load i32, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 32), align 8, !tbaa !57
  %i.yo = icmp sgt i32 %i.yn, 2
  br i1 %i.yo, label %bb.ha, label %bb.hb

bb.ha:                                            ; preds = %bb.gz
  %i.yp = load ptr, ptr @stderr, align 8, !tbaa !59
  %i.yq = load i32, ptr %i.e, align 8, !tbaa !60
  %i.yr = zext i32 %i.ym to i64
  %i.ys = getelementptr inbounds nuw [8 x i8], ptr @__const.state_text.statenames, i64 %i.yr
  %i.yt = load ptr, ptr %i.ys, align 8, !tbaa !62
  %i.yu = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.yp, ptr noundef nonnull @.str.15, i32 noundef %i.yq, ptr noundef %i.yt, ptr noundef nonnull @.str.377) #35, !inline_history !230 ; 0 uses
  br label %bb.hb

bb.hb:                                            ; preds = %bb.ha, %bb.gz
  store i32 8, ptr %i.d, align 8, !tbaa !56
  br label %transmit.exit

bb.hc:                                            ; preds = %bb.gu, %bb.gt
  %i.yv = load i32, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 32), align 8, !tbaa !57
  %i.yw = icmp sgt i32 %i.yv, 0
  br i1 %i.yw, label %bb.hd, label %bb.he

bb.hd:                                            ; preds = %bb.hc
  call void @perror(ptr noundef nonnull @.str.413) #37, !inline_history !230
  br label %bb.he

bb.he:                                            ; preds = %bb.hd, %bb.hc
  %i.yx = load i32, ptr %i.d, align 8, !tbaa !56  ; 2 uses
  %.not.i22.i = icmp eq i32 %i.yx, 8
  br i1 %.not.i22.i, label %transmit.exit, label %bb.hf

bb.hf:                                            ; preds = %bb.he
  %i.yy = load i32, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 32), align 8, !tbaa !57
  %i.yz = icmp sgt i32 %i.yy, 2
  br i1 %i.yz, label %bb.hg, label %bb.hh

bb.hg:                                            ; preds = %bb.hf
  %i.za = load ptr, ptr @stderr, align 8, !tbaa !59
  %i.zb = load i32, ptr %i.e, align 8, !tbaa !60
  %i.zc = zext i32 %i.yx to i64
  %i.zd = getelementptr inbounds nuw [8 x i8], ptr @__const.state_text.statenames, i64 %i.zc
  %i.ze = load ptr, ptr %i.zd, align 8, !tbaa !62
  %i.zf = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.za, ptr noundef nonnull @.str.15, i32 noundef %i.zb, ptr noundef %i.ze, ptr noundef nonnull @.str.377) #35, !inline_history !230 ; 0 uses
  br label %bb.hh

bb.hh:                                            ; preds = %bb.hg, %bb.hf
  store i32 8, ptr %i.d, align 8, !tbaa !56
  br label %transmit.exit

transmit.exit:                                    ; preds = %bb.gq, %bb.gs, %bb.gv, %update_event.exit.i, %bb.gy, %bb.hb, %bb.he, %bb.hh
  %.1.i262 = phi i32 [ 0, %bb.gq ], [ %..i, %bb.gs ], [ 3, %bb.hb ], [ 3, %bb.hh ], [ 2, %update_event.exit.i ], [ 3, %bb.gy ], [ 3, %bb.he ], [ 2, %bb.gv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  br label %bb.il

bb.hi:                                            ; preds = %bb.go
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  %i.zg = load ptr, ptr %i.o, align 8, !tbaa !83  ; 17 uses
  %.not.i266 = icmp eq ptr %i.zg, null
  br i1 %.not.i266, label %transmit_udp.exit, label %bb.hj

bb.hj:                                            ; preds = %bb.hi
  %i.zh = getelementptr inbounds nuw i8, ptr %i.zg, i64 118
  %i.zi = load i8, ptr %i.zh, align 2, !tbaa !101, !range !66, !noundef !67
  %i.zj = trunc nuw i8 %i.zi to i1
  br i1 %i.zj, label %bb.hk, label %bb.hu

bb.hk:                                            ; preds = %bb.hj
  %i.zk = getelementptr inbounds nuw i8, ptr %i.zg, i64 8
  %i.zl = load ptr, ptr %i.zk, align 8, !tbaa !102
  %i.zm = getelementptr inbounds nuw i8, ptr %i.zg, i64 40 ; 2 uses
  %i.zn = load ptr, ptr %i.zm, align 8, !tbaa !103 ; 2 uses
  %.not.i.i274 = icmp eq ptr %i.zn, null
  br i1 %.not.i.i274, label %bb.hm, label %bb.hl

bb.hl:                                            ; preds = %bb.hk
  call void @item_remove(ptr noundef nonnull %i.zn) #33, !inline_history !232
  store ptr null, ptr %i.zm, align 8, !tbaa !103
  br label %bb.hm

bb.hm:                                            ; preds = %bb.hl, %bb.hk
  %i.zo = getelementptr inbounds nuw i8, ptr %i.zg, i64 24
  %i.zp = load ptr, ptr %i.zo, align 8, !tbaa !104 ; 2 uses
  %.not25.i.i = icmp eq ptr %i.zp, null
  br i1 %.not25.i.i, label %bb.ho, label %bb.hn

bb.hn:                                            ; preds = %bb.hm
  call void @free(ptr noundef nonnull %i.zp) #33, !inline_history !232
  br label %bb.ho

bb.ho:                                            ; preds = %bb.hn, %bb.hm
  %i.zq = getelementptr inbounds nuw i8, ptr %i.zg, i64 32 ; 2 uses
  %i.zr = load ptr, ptr %i.zq, align 8, !tbaa !105 ; 4 uses
  %.not26.i.i = icmp eq ptr %i.zr, null
  br i1 %.not26.i.i, label %bb.hq, label %bb.hp

bb.hp:                                            ; preds = %bb.ho
  %i.zs = getelementptr inbounds nuw i8, ptr %i.zr, i64 40
  %i.zt = load ptr, ptr %i.zs, align 8, !tbaa !108
  call void %i.zt(ptr noundef nonnull %i.zr) #33, !inline_history !233
  %i.zu = load ptr, ptr %i.i, align 8, !tbaa !38
  %i.zv = getelementptr inbounds nuw i8, ptr %i.zu, i64 6952
  %i.zw = load ptr, ptr %i.zv, align 8, !tbaa !109
  call void @do_cache_free(ptr noundef %i.zw, ptr noundef nonnull %i.zr) #33, !inline_history !232
  store ptr null, ptr %i.zq, align 8, !tbaa !105
  br label %bb.hq

bb.hq:                                            ; preds = %bb.hp, %bb.ho
  %i.zx = load ptr, ptr %i.o, align 8, !tbaa !83
  %i.zy = icmp eq ptr %i.zx, %i.zg
  br i1 %i.zy, label %bb.hr, label %bb.hs

bb.hr:                                            ; preds = %bb.hq
  store ptr %i.zl, ptr %i.o, align 8, !tbaa !83
  br label %bb.hs

bb.hs:                                            ; preds = %bb.hr, %bb.hq
  %i.zz = load ptr, ptr %i.aa, align 8, !tbaa !110
  %i.aaa = icmp eq ptr %i.zz, %i.zg
  br i1 %i.aaa, label %bb.ht, label %resp_finish.exit.i

bb.ht:                                            ; preds = %bb.hs
  store ptr null, ptr %i.aa, align 8, !tbaa !110
  br label %resp_finish.exit.i

resp_finish.exit.i:                               ; preds = %bb.ht, %bb.hs
  %i.aab = load ptr, ptr %i.i, align 8, !tbaa !38
  call void @resp_free(ptr noundef %i.aab, ptr noundef nonnull %i.zg), !inline_history !232
  br label %transmit_udp.exit

bb.hu:                                            ; preds = %bb.hj
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.p, i8 0, i64 48, i1 false)
  store ptr %1, ptr %i.q, align 8, !tbaa !244
  %i.aac = getelementptr inbounds nuw i8, ptr %i.zg, i64 132
  store ptr %i.aac, ptr %2, align 8, !tbaa !247
  %i.aad = getelementptr inbounds nuw i8, ptr %i.zg, i64 160
  %i.aae = load i32, ptr %i.aad, align 8, !tbaa !111
  store i32 %i.aae, ptr %i.p, align 8, !tbaa !248
  store ptr %i.a, ptr %1, align 16, !tbaa !113
  store i64 8, ptr %i.r, align 8, !tbaa !114
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.zg, i64 130 ; 2 uses
  %i.aag = load i16, ptr %i.aaf, align 2          ; 3 uses
  %.not.i45.i = icmp eq i16 %i.aag, 0
  %6 = lshr i16 %i.aag, 8
  %7 = trunc nuw i16 %6 to i8
  br i1 %.not.i45.i, label %bb.hv, label %build_udp_header.exit.i

bb.hv:                                            ; preds = %bb.hu
  %i.aah = getelementptr inbounds nuw i8, ptr %i.zg, i64 20
  %i.aai = load i32, ptr %i.aah, align 4, !tbaa !115 ; 2 uses
  %i.aaj = sdiv i32 %i.aai, 1392
  %i.aak = srem i32 %i.aai, 1392
  %.not21.i.i = icmp ne i32 %i.aak, 0
  %i.aal = zext i1 %.not21.i.i to i32
  %spec.select.i.i = add nsw i32 %i.aaj, %i.aal
  %spec.store.select.i.i = call i32 @llvm.umin.i32(i32 %spec.select.i.i, i32 65535) ; 2 uses
  %i.aam = trunc nuw i32 %spec.store.select.i.i to i16 ; 2 uses
  store i16 %i.aam, ptr %i.aaf, align 2, !tbaa !249
  %8 = lshr i32 %spec.store.select.i.i, 8
  %9 = trunc nuw i32 %8 to i8
  br label %build_udp_header.exit.i

build_udp_header.exit.i:                          ; preds = %bb.hv, %bb.hu
  %i.aan = phi i16 [ %i.aag, %bb.hu ], [ %i.aam, %bb.hv ]
  %10 = phi i8 [ %7, %bb.hu ], [ %9, %bb.hv ]
  %i.aao = getelementptr inbounds nuw i8, ptr %i.zg, i64 126
  %11 = getelementptr i8, ptr %i.zg, i64 127
  %12 = load i8, ptr %11, align 1, !tbaa !116
  store i8 %12, ptr %i.a, align 1, !tbaa !80
  %13 = load i16, ptr %i.aao, align 2, !tbaa !116
  %i.aap = trunc i16 %13 to i8
  store i8 %i.aap, ptr %i.s, align 1, !tbaa !80
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.zg, i64 128 ; 2 uses
  %14 = getelementptr i8, ptr %i.zg, i64 129
  %15 = load i8, ptr %14, align 1, !tbaa !250
  store i8 %15, ptr %i.t, align 1, !tbaa !80
  %16 = load i16, ptr %i.aaq, align 8, !tbaa !250 ; 2 uses
  %i.aar = trunc i16 %16 to i8
  store i8 %i.aar, ptr %i.u, align 1, !tbaa !80
  store i8 %10, ptr %i.v, align 1, !tbaa !80
  %i.aas = trunc i16 %i.aan to i8
  store i8 %i.aas, ptr %i.w, align 1, !tbaa !80
  store i8 0, ptr %i.x, align 1, !tbaa !80
  store i8 0, ptr %i.y, align 1, !tbaa !80
  %i.aat = add i16 %16, 1
  store i16 %i.aat, ptr %i.aaq, align 8, !tbaa !250
  %i.aau = call fastcc i32 @_transmit_pre(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 1, i1 noundef zeroext true), !inline_history !232 ; 3 uses
  %i.aav = icmp sgt i32 %i.aau, 0
  br i1 %i.aav, label %.lr.ph.preheader.i272, label %.loopexit.i267

.lr.ph.preheader.i272:                            ; preds = %build_udp_header.exit.i
  %wide.trip.count.i = zext nneg i32 %i.aau to i64
  br label %.lr.ph.i273

.lr.ph.i273:                                      ; preds = %bb.hx, %.lr.ph.preheader.i272
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i272 ], [ %indvars.iv.next.i, %bb.hx ] ; 3 uses
  %.055.i = phi i32 [ 0, %.lr.ph.preheader.i272 ], [ %i.abh, %bb.hx ] ; 2 uses
  %i.aaw = zext nneg i32 %.055.i to i64
  %i.aax = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv.i ; 2 uses
  %i.aay = getelementptr inbounds nuw i8, ptr %i.aax, i64 8
  %i.aaz = load i64, ptr %i.aay, align 8, !tbaa !114
  %i.aba = add i64 %i.aaz, %i.aaw                 ; 2 uses
  %i.abb = icmp ugt i64 %i.aba, 1399
  br i1 %i.abb, label %bb.hw, label %bb.hx

bb.hw:                                            ; preds = %.lr.ph.i273
  %i.abc = getelementptr inbounds nuw i8, ptr %i.aax, i64 8
  %i.abd = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.abe = sub nuw nsw i32 1400, %.055.i
  %i.abf = zext nneg i32 %i.abe to i64
  store i64 %i.abf, ptr %i.abc, align 8, !tbaa !114
  %i.abg = add nuw nsw i32 %i.abd, 1
  br label %.loopexit.i267

bb.hx:                                            ; preds = %.lr.ph.i273
  %i.abh = trunc nuw nsw i64 %i.aba to i32
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.loopexit.i267, label %.lr.ph.i273, !llvm.loop !234

.loopexit.i267:                                   ; preds = %bb.hx, %bb.hw, %build_udp_header.exit.i
  %.1.i268 = phi i32 [ %i.abg, %bb.hw ], [ 0, %build_udp_header.exit.i ], [ %i.aau, %bb.hx ]
  %i.abi = sext i32 %.1.i268 to i64
  store i64 %i.abi, ptr %i.z, align 8, !tbaa !245
  %i.abj = load i32, ptr %i.e, align 8, !tbaa !60
  %i.abk = call i64 @sendmsg(i32 noundef %i.abj, ptr noundef nonnull %2, i32 noundef 0) #33, !inline_history !232 ; 4 uses
  %i.abl = icmp sgt i64 %i.abk, -1
  br i1 %i.abl, label %bb.hy, label %bb.hz

bb.hy:                                            ; preds = %.loopexit.i267
  %i.abm = load ptr, ptr %i.i, align 8, !tbaa !38
  %i.abn = getelementptr inbounds nuw i8, ptr %i.abm, i64 360
  %i.abo = call i32 @pthread_mutex_lock(ptr noundef nonnull %i.abn) #33, !inline_history !232 ; 0 uses
  %i.abp = load ptr, ptr %i.i, align 8, !tbaa !38 ; 2 uses
  %i.abq = getelementptr inbounds nuw i8, ptr %i.abp, i64 496 ; 2 uses
  %i.abr = load i64, ptr %i.abq, align 8, !tbaa !246
  %i.abs = add i64 %i.abr, %i.abk
  store i64 %i.abs, ptr %i.abq, align 8, !tbaa !246
  %i.abt = getelementptr inbounds nuw i8, ptr %i.abp, i64 360
  %i.abu = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.abt) #33, !inline_history !232 ; 0 uses
  %i.abv = add nsw i64 %i.abk, -8
  call fastcc void @_transmit_post(ptr noundef nonnull %0, i64 noundef %i.abv), !inline_history !232
  %i.abw = load ptr, ptr %i.o, align 8, !tbaa !83
  %.not44.i = icmp ne ptr %i.abw, null
  %..i271 = zext i1 %.not44.i to i32
  br label %transmit_udp.exit

bb.hz:                                            ; preds = %.loopexit.i267
  %i.abx = icmp eq i64 %i.abk, -1
  br i1 %i.abx, label %bb.ia, label %bb.if

bb.ia:                                            ; preds = %bb.hz
  %i.aby = tail call ptr @__errno_location() #36, !inline_history !232
  %i.abz = load i32, ptr %i.aby, align 4, !tbaa !16
  %i.aca = icmp eq i32 %i.abz, 11
  br i1 %i.aca, label %bb.ib, label %bb.if

bb.ib:                                            ; preds = %bb.ia
  %i.acb = load ptr, ptr %i.m, align 8, !tbaa !74
  %i.acc = load i16, ptr %i.n, align 8, !tbaa !75
  %i.acd = icmp eq i16 %i.acc, 20
  br i1 %i.acd, label %transmit_udp.exit, label %bb.ic

bb.ic:                                            ; preds = %bb.ib
  %i.ace = call i32 @event_del(ptr noundef nonnull %i.f) #33, !inline_history !235
  %i.acf = icmp eq i32 %i.ace, -1
  br i1 %i.acf, label %update_event.exit.thread48.i, label %update_event.exit.i269

update_event.exit.i269:                           ; preds = %bb.ic
  %i.acg = load i32, ptr %i.e, align 8, !tbaa !60
  call void @event_set(ptr noundef nonnull %i.f, i32 noundef %i.acg, i16 noundef signext 20, ptr noundef nonnull @event_handler, ptr noundef nonnull %0) #33, !inline_history !235
  %i.ach = call i32 @event_base_set(ptr noundef %i.acb, ptr noundef nonnull %i.f) #33, !inline_history !235 ; 0 uses
  store i16 20, ptr %i.n, align 8, !tbaa !75
  %i.aci = call i32 @event_add(ptr noundef nonnull %i.f, ptr noundef null) #33, !inline_history !235
  %.not50.i = icmp eq i32 %i.aci, -1
  br i1 %.not50.i, label %update_event.exit.thread48.i, label %transmit_udp.exit

update_event.exit.thread48.i:                     ; preds = %update_event.exit.i269, %bb.ic
  %i.acj = load i32, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 32), align 8, !tbaa !57
  %i.ack = icmp sgt i32 %i.acj, 0
  br i1 %i.ack, label %bb.id, label %bb.ie

bb.id:                                            ; preds = %update_event.exit.thread48.i
  %i.acl = load ptr, ptr @stderr, align 8, !tbaa !59
  %fwrite.i270 = call i64 @fwrite(ptr nonnull @.str.405, i64 22, i64 1, ptr %i.acl) #37, !inline_history !232 ; 0 uses
  br label %bb.ie

bb.ie:                                            ; preds = %bb.id, %update_event.exit.thread48.i
  call void @conn_set_state(ptr noundef nonnull %0, i32 noundef 8), !inline_history !232
  br label %transmit_udp.exit

bb.if:                                            ; preds = %bb.ia, %bb.hz
  %i.acm = load i32, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 32), align 8, !tbaa !57
  %i.acn = icmp sgt i32 %i.acm, 0
  br i1 %i.acn, label %bb.ig, label %bb.ih

bb.ig:                                            ; preds = %bb.if
  call void @perror(ptr noundef nonnull @.str.413) #37, !inline_history !232
  br label %bb.ih

bb.ih:                                            ; preds = %bb.ig, %bb.if
  %i.aco = load i32, ptr %i.d, align 8, !tbaa !56 ; 2 uses
  %.not.i46.i = icmp eq i32 %i.aco, 3
  br i1 %.not.i46.i, label %transmit_udp.exit, label %bb.ii

bb.ii:                                            ; preds = %bb.ih
  %i.acp = load i32, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 32), align 8, !tbaa !57
  %i.acq = icmp sgt i32 %i.acp, 2
  br i1 %i.acq, label %bb.ij, label %bb.ik

bb.ij:                                            ; preds = %bb.ii
  %i.acr = load ptr, ptr @stderr, align 8, !tbaa !59
  %i.acs = load i32, ptr %i.e, align 8, !tbaa !60
  %i.act = zext i32 %i.aco to i64
  %i.acu = getelementptr inbounds nuw [8 x i8], ptr @__const.state_text.statenames, i64 %i.act
  %i.acv = load ptr, ptr %i.acu, align 8, !tbaa !62
  %i.acw = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.acr, ptr noundef nonnull @.str.15, i32 noundef %i.acs, ptr noundef %i.acv, ptr noundef nonnull @.str.372) #35, !inline_history !232 ; 0 uses
  br label %bb.ik

bb.ik:                                            ; preds = %bb.ij, %bb.ii
  store i32 3, ptr %i.d, align 8, !tbaa !56
  br label %transmit_udp.exit

transmit_udp.exit:                                ; preds = %bb.hi, %resp_finish.exit.i, %bb.hy, %bb.ib, %update_event.exit.i269, %bb.ie, %bb.ih, %bb.ik
  %.139.i = phi i32 [ 1, %resp_finish.exit.i ], [ 0, %bb.hi ], [ %..i271, %bb.hy ], [ 3, %bb.ik ], [ 3, %bb.ie ], [ 2, %update_event.exit.i269 ], [ 3, %bb.ih ], [ 2, %bb.ib ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33
  br label %bb.il

bb.il:                                            ; preds = %transmit_udp.exit, %transmit.exit
  %i.acx = phi i32 [ %.1.i262, %transmit.exit ], [ %.139.i, %transmit_udp.exit ]
  switch i32 %i.acx, label %.lr.ph.backedge [
    i32 0, label %bb.im
    i32 2, label %.outer._crit_edge
  ]

bb.im:                                            ; preds = %bb.il
  %i.acy = load i32, ptr %i.d, align 8, !tbaa !56 ; 3 uses
  %i.acz = icmp eq i32 %i.acy, 9
  br i1 %i.acz, label %bb.in, label %bb.iu

bb.in:                                            ; preds = %bb.im
  call void @conn_release_items(ptr noundef nonnull %0)
  %i.ada = load i32, ptr %i.d, align 8, !tbaa !56 ; 2 uses
  %.not.i275 = icmp eq i32 %i.ada, 1
  br i1 %.not.i275, label %conn_set_state.exit276, label %bb.io

bb.io:                                            ; preds = %bb.in
  %i.adb = load i32, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 32), align 8, !tbaa !57
  %i.adc = icmp sgt i32 %i.adb, 2
  br i1 %i.adc, label %bb.ip, label %bb.iq

bb.ip:                                            ; preds = %bb.io
  %i.add = load ptr, ptr @stderr, align 8, !tbaa !59
  %i.ade = load i32, ptr %i.e, align 8, !tbaa !60
  %i.adf = zext i32 %i.ada to i64
  %i.adg = getelementptr inbounds nuw [8 x i8], ptr @__const.state_text.statenames, i64 %i.adf
  %i.adh = load ptr, ptr %i.adg, align 8, !tbaa !62
  %i.adi = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.add, ptr noundef nonnull @.str.15, i32 noundef %i.ade, ptr noundef %i.adh, ptr noundef nonnull @.str.370) #35 ; 0 uses
  br label %bb.iq

bb.iq:                                            ; preds = %bb.ip, %bb.io
  store i32 1, ptr %i.d, align 8, !tbaa !56
  br label %conn_set_state.exit276

conn_set_state.exit276:                           ; preds = %bb.in, %bb.iq
  %i.adj = load i8, ptr %i.ab, align 2, !tbaa !77, !range !66, !noundef !67
  %i.adk = trunc nuw i8 %i.adj to i1
  br i1 %i.adk, label %bb.ir, label %.lr.ph.backedge

bb.ir:                                            ; preds = %conn_set_state.exit276
  %i.adl = load i32, ptr getelementptr inbounds nuw (i8, ptr @settings, i64 32), align 8, !tbaa !57
  %i.adm = icmp sgt i32 %i.adl, 2
  br i1 %i.adm, label %bb.is, label %bb.it

bb.is:                                            ; preds = %bb.ir
  %i.adn = load ptr, ptr @stderr, align 8, !tbaa !59
  %i.ado = load i32, ptr %i.e, align 8, !tbaa !60
  %i.adp = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.adn, ptr noundef nonnull @.str.15, i32 noundef %i.ado, ptr noundef nonnull @.str.370, ptr noundef nonnull @.str.377) #35 ; 0 uses
  br label %bb.it

bb.it:                                            ; preds = %bb.is, %bb.ir
  store i32 8, ptr %i.d, align 8, !tbaa !56
  br label %.lr.ph.backedge
end_hunk_0
