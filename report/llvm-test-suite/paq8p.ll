inline.NumInlined: 1537
inline.NumDeleted: 102
begin_hunk_0_@_Z13contextModel2v:bb.a
  %i.ua = mul nuw nsw i32 %i.ts, %i.tz
  %i.ub = trunc i32 %i.ua to i16
  br label %_ZN13RunContextMap3mixER5Mixer.exit82

_ZN13RunContextMap3mixER5Mixer.exit82:            ; preds = %_ZN13RunContextMap3mixER5Mixer.exit80, %bb.bj
  %.0.i.i81 = phi i16 [ %i.ub, %bb.bj ], [ 0, %_ZN13RunContextMap3mixER5Mixer.exit80 ]
  %i.uc = add nsw i32 %i.se, 3
  store i32 %i.uc, ptr getelementptr inbounds nuw (i8, ptr @_ZZ13contextModel2vE1m, i64 96), align 8, !tbaa !69
  %i.ud = sext i32 %i.te to i64
  %i.ue = getelementptr inbounds [2 x i8], ptr %i.sg, i64 %i.ud
  store i16 %.0.i.i81, ptr %i.ue, align 2, !tbaa !33
  %i.uf = load i32, ptr @level, align 4, !tbaa !4
  %i.ug = icmp sgt i32 %i.uf, 3
  br i1 %i.ug, label %bb.bk, label %bb.bm

bb.bk:                                            ; preds = %_ZN13RunContextMap3mixER5Mixer.exit82
  tail call void @_Z11sparseModelR5Mixerii(ptr noundef nonnull align 8 dereferenceable(136) @_ZZ13contextModel2vE1m, i32 noundef %i.el, i32 noundef %i.rf)
  tail call void @_Z13distanceModelR5Mixer(ptr noundef nonnull align 8 dereferenceable(136) @_ZZ13contextModel2vE1m)
  tail call void @_Z8picModelR5Mixer(ptr noundef nonnull align 8 dereferenceable(136) @_ZZ13contextModel2vE1m)
  tail call void @_Z11recordModelR5Mixer(ptr noundef nonnull align 8 dereferenceable(136) @_ZZ13contextModel2vE1m)
  tail call void @_Z9wordModelR5Mixer(ptr noundef nonnull align 8 dereferenceable(136) @_ZZ13contextModel2vE1m)
  tail call void @_Z13indirectModelR5Mixer(ptr noundef nonnull align 8 dereferenceable(136) @_ZZ13contextModel2vE1m)
  tail call void @_Z8dmcModelR5Mixer(ptr noundef nonnull align 8 dereferenceable(136) @_ZZ13contextModel2vE1m)
  %i.uh = load i32, ptr @_ZZ13contextModel2vE8filetype, align 4, !tbaa !226
  %i.ui = icmp eq i32 %i.uh, 8
  br i1 %i.ui, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  tail call void @_Z8exeModelR5Mixer(ptr noundef nonnull align 8 dereferenceable(136) @_ZZ13contextModel2vE1m)
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bk, %bb.bl, %_ZN13RunContextMap3mixER5Mixer.exit82
  %i.uj = tail call i32 @llvm.smax.i32(i32 %i.rf, i32 2)
  %spec.store.select4 = add nsw i32 %i.uj, -2
  %i.uk = load i32, ptr @pos, align 4, !tbaa !4   ; 3 uses
  %i.ul = add nsw i32 %i.uk, -1
  %i.um = load i32, ptr @buf, align 8, !tbaa !22
  %i.un = add nsw i32 %i.um, -1                   ; 3 uses
  %i.uo = and i32 %i.un, %i.ul
  %i.up = load ptr, ptr getelementptr inbounds nuw (i8, ptr @buf, i64 16), align 8, !tbaa !24 ; 3 uses
  %i.uq = sext i32 %i.uo to i64
  %i.ur = getelementptr inbounds i8, ptr %i.up, i64 %i.uq
  %i.us = load i8, ptr %i.ur, align 1, !tbaa !11  ; 2 uses
  %i.ut = zext i8 %i.us to i32                    ; 3 uses
  %i.uu = add nsw i32 %i.uk, -2
  %i.uv = and i32 %i.un, %i.uu
  %i.uw = sext i32 %i.uv to i64
  %i.ux = getelementptr inbounds i8, ptr %i.up, i64 %i.uw
  %i.uy = load i8, ptr %i.ux, align 1, !tbaa !11  ; 2 uses
  %i.uz = zext i8 %i.uy to i32                    ; 3 uses
  %i.va = add nsw i32 %i.uk, -3
  %i.vb = and i32 %i.un, %i.va
  %i.vc = sext i32 %i.vb to i64
  %i.vd = getelementptr inbounds i8, ptr %i.up, i64 %i.vc
  %i.ve = load i8, ptr %i.vd, align 1, !tbaa !11
  %i.vf = zext i8 %i.ve to i32                    ; 3 uses
  %i.vg = add nuw nsw i32 %i.ut, 8
  %i.vh = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZ13contextModel2vE1m, i64 92), align 4, !tbaa !68
  %i.vi = add nsw i32 %i.vg, %i.vh
  %i.vj = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZ13contextModel2vE1m, i64 88), align 8, !tbaa !67 ; 2 uses
  %i.vk = add nsw i32 %i.vj, 1
  store i32 %i.vk, ptr getelementptr inbounds nuw (i8, ptr @_ZZ13contextModel2vE1m, i64 88), align 8, !tbaa !67
  %i.vl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZ13contextModel2vE1m, i64 80), align 8, !tbaa !66 ; 7 uses
  %i.vm = sext i32 %i.vj to i64
  %i.vn = getelementptr inbounds [4 x i8], ptr %i.vl, i64 %i.vm
  store i32 %i.vi, ptr %i.vn, align 4, !tbaa !4
  %i.vo = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZ13contextModel2vE1m, i64 92), align 4, !tbaa !68
  %i.vp = add nsw i32 %i.vo, 264                  ; 2 uses
  store i32 %i.vp, ptr getelementptr inbounds nuw (i8, ptr @_ZZ13contextModel2vE1m, i64 92), align 4, !tbaa !68
  %i.vq = load i32, ptr @c0, align 4, !tbaa !4
  %i.vr = add nsw i32 %i.vq, %i.vp
  %i.vs = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZ13contextModel2vE1m, i64 88), align 8, !tbaa !67 ; 2 uses
  %i.vt = add nsw i32 %i.vs, 1
  store i32 %i.vt, ptr getelementptr inbounds nuw (i8, ptr @_ZZ13contextModel2vE1m, i64 88), align 8, !tbaa !67
  %i.vu = sext i32 %i.vs to i64
  %i.vv = getelementptr inbounds [4 x i8], ptr %i.vl, i64 %i.vu
  store i32 %i.vr, ptr %i.vv, align 4, !tbaa !4
  %i.vw = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZ13contextModel2vE1m, i64 92), align 4, !tbaa !68
  %i.vx = add nsw i32 %i.vw, 256                  ; 2 uses
  store i32 %i.vx, ptr getelementptr inbounds nuw (i8, ptr @_ZZ13contextModel2vE1m, i64 92), align 4, !tbaa !68
  %i.vy = load i32, ptr @c4, align 4, !tbaa !4
  %i.vz = lshr i32 %i.vy, 2
  %i.wa = and i32 %i.vz, 56
  %i.wb = icmp eq i8 %i.us, %i.uy
  %i.wc = select i1 %i.wb, i32 64, i32 0
  %i.wd = load i32, ptr @_ZZ13contextModel2vE8filetype, align 4, !tbaa !226
  %i.we = icmp eq i32 %i.wd, 8
  %i.wf = select i1 %i.we, i32 128, i32 0
  %i.wg = add nuw i32 %spec.store.select4, %i.wc
  %i.wh = add i32 %i.wg, %i.vx
  %i.wi = add i32 %i.wh, %i.wa
  %i.wj = add i32 %i.wi, %i.wf
  %i.wk = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZ13contextModel2vE1m, i64 88), align 8, !tbaa !67 ; 2 uses
  %i.wl = add nsw i32 %i.wk, 1
  store i32 %i.wl, ptr getelementptr inbounds nuw (i8, ptr @_ZZ13contextModel2vE1m, i64 88), align 8, !tbaa !67
  %i.wm = sext i32 %i.wk to i64
  %i.wn = getelementptr inbounds [4 x i8], ptr %i.vl, i64 %i.wm
  store i32 %i.wj, ptr %i.wn, align 4, !tbaa !4
  %i.wo = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZ13contextModel2vE1m, i64 92), align 4, !tbaa !68
  %i.wp = add nsw i32 %i.wo, 256                  ; 2 uses
  store i32 %i.wp, ptr getelementptr inbounds nuw (i8, ptr @_ZZ13contextModel2vE1m, i64 92), align 4, !tbaa !68
  %i.wq = add nsw i32 %i.wp, %i.uz
  %i.wr = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZ13contextModel2vE1m, i64 88), align 8, !tbaa !67 ; 2 uses
  %i.ws = add nsw i32 %i.wr, 1
  store i32 %i.ws, ptr getelementptr inbounds nuw (i8, ptr @_ZZ13contextModel2vE1m, i64 88), align 8, !tbaa !67
  %i.wt = sext i32 %i.wr to i64
  %i.wu = getelementptr inbounds [4 x i8], ptr %i.vl, i64 %i.wt
  store i32 %i.wq, ptr %i.wu, align 4, !tbaa !4
  %i.wv = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZ13contextModel2vE1m, i64 92), align 4, !tbaa !68
  %i.ww = add nsw i32 %i.wv, 256                  ; 2 uses
  store i32 %i.ww, ptr getelementptr inbounds nuw (i8, ptr @_ZZ13contextModel2vE1m, i64 92), align 4, !tbaa !68
  %i.wx = add nsw i32 %i.ww, %i.vf
  %i.wy = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZ13contextModel2vE1m, i64 88), align 8, !tbaa !67 ; 2 uses
  %i.wz = add nsw i32 %i.wy, 1
  store i32 %i.wz, ptr getelementptr inbounds nuw (i8, ptr @_ZZ13contextModel2vE1m, i64 88), align 8, !tbaa !67
  %i.xa = sext i32 %i.wy to i64
  %i.xb = getelementptr inbounds [4 x i8], ptr %i.vl, i64 %i.xa
  store i32 %i.wx, ptr %i.xb, align 4, !tbaa !4
  %i.xc = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZ13contextModel2vE1m, i64 92), align 4, !tbaa !68
  %i.xd = add nsw i32 %i.xc, 256                  ; 2 uses
  store i32 %i.xd, ptr getelementptr inbounds nuw (i8, ptr @_ZZ13contextModel2vE1m, i64 92), align 4, !tbaa !68
  %i.xe = add nsw i32 %i.xd, %i.el
  %i.xf = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZ13contextModel2vE1m, i64 88), align 8, !tbaa !67 ; 2 uses
  %i.xg = add nsw i32 %i.xf, 1
  store i32 %i.xg, ptr getelementptr inbounds nuw (i8, ptr @_ZZ13contextModel2vE1m, i64 88), align 8, !tbaa !67
  %i.xh = sext i32 %i.xf to i64
  %i.xi = getelementptr inbounds [4 x i8], ptr %i.vl, i64 %i.xh
  store i32 %i.xe, ptr %i.xi, align 4, !tbaa !4
  %i.xj = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZ13contextModel2vE1m, i64 92), align 4, !tbaa !68
  %i.xk = add nsw i32 %i.xj, 256                  ; 2 uses
  store i32 %i.xk, ptr getelementptr inbounds nuw (i8, ptr @_ZZ13contextModel2vE1m, i64 92), align 4, !tbaa !68
  %i.xl = load i32, ptr @bpos, align 4, !tbaa !4  ; 4 uses
  %.not70 = icmp eq i32 %i.xl, 0
  br i1 %.not70, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.xm = load i32, ptr @c0, align 4, !tbaa !4
  %i.xn = sub nsw i32 8, %i.xl
  %i.xo = shl i32 %i.xm, %i.xn
  %i.xp = icmp eq i32 %i.xl, 1
  %i.xq = lshr i32 %i.vf, 1
  %i.xr = select i1 %i.xp, i32 %i.xq, i32 0
  %.049 = add i32 %i.xo, %i.xr
  %i.xs = tail call noundef i32 @llvm.smin.i32(i32 %i.xl, i32 5)
  %i.xt = shl nsw i32 %i.xs, 8
  %i.xu = lshr i32 %i.ut, 5
  %i.xv = or disjoint i32 %i.xt, %i.xu
  %i.xw = lshr i32 %i.uz, 2
  %i.xx = and i32 %i.xw, 56
  %i.xy = or disjoint i32 %i.xv, %i.xx
  %i.xz = and i32 %.049, 192
  %i.ya = or disjoint i32 %i.xz, %i.xy
  br label %bb.bp

bb.bo:                                            ; preds = %bb.bm
  %i.yb = lshr i32 %i.vf, 7
  %i.yc = load i32, ptr @c4, align 4, !tbaa !4
  %i.yd = lshr i32 %i.yc, 30
  %i.ye = and i32 %i.yd, 2
  %i.yf = lshr i32 %i.uz, 4
  %i.yg = and i32 %i.yf, 12
  %i.yh = and i32 %i.ut, 240
  %i.yi = or disjoint i32 %i.yb, %i.yh
  %i.yj = or disjoint i32 %i.yi, %i.yg
  %i.yk = or disjoint i32 %i.yj, %i.ye
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %.150 = phi i32 [ %i.ya, %bb.bn ], [ %i.yk, %bb.bo ]
  %i.yl = add nsw i32 %.150, %i.xk
  br label %.sink.split

.sink.split:                                      ; preds = %bb.as, %bb.bp, %bb.ag, %bb.ai
  %.sink115 = phi ptr [ %i.gd, %bb.ai ], [ %i.eu, %bb.ag ], [ %i.vl, %bb.bp ], [ %i.is, %bb.as ]
  %.sink = phi i32 [ %i.hp, %bb.ai ], [ %i.fr, %bb.ag ], [ %i.yl, %bb.bp ], [ %i.iy, %bb.as ]
  %.sink113 = phi i32 [ 256, %bb.ai ], [ 256, %bb.ag ], [ 1536, %bb.bp ], [ 256, %bb.as ]
  %i.ym = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZ13contextModel2vE1m, i64 88), align 8, !tbaa !67 ; 2 uses
  %i.yn = add nsw i32 %i.ym, 1
  store i32 %i.yn, ptr getelementptr inbounds nuw (i8, ptr @_ZZ13contextModel2vE1m, i64 88), align 8, !tbaa !67
  %i.yo = sext i32 %i.ym to i64
  %i.yp = getelementptr inbounds [4 x i8], ptr %.sink115, i64 %i.yo
  store i32 %.sink, ptr %i.yp, align 4, !tbaa !4
  %i.yq = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZ13contextModel2vE1m, i64 92), align 4, !tbaa !68
  %i.yr = add nsw i32 %i.yq, %.sink113
  store i32 %i.yr, ptr getelementptr inbounds nuw (i8, ptr @_ZZ13contextModel2vE1m, i64 92), align 4, !tbaa !68
  br label %bb.bq

bb.bq:                                            ; preds = %.sink.split, %bb.ao, %bb.am, %bb.ak
  %i.ys = tail call noundef i32 @_ZN5Mixer1pEv(ptr noundef nonnull align 8 dereferenceable(136) @_ZZ13contextModel2vE1m)
  ret i32 %i.ys

bb.br:                                            ; preds = %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w
  %_ZGVZ13contextModel2vE1m.sink = phi ptr [ @_ZGVZ13contextModel2vE1m, %bb.aa ], [ @_ZGVZ13contextModel2vE5rcm10, %bb.z ], [ @_ZGVZ13contextModel2vE4rcm9, %bb.y ], [ @_ZGVZ13contextModel2vE4rcm7, %bb.x ], [ @_ZGVZ13contextModel2vE2cm, %bb.w ]
  %.pn = phi { ptr, i32 } [ %i.av, %bb.aa ], [ %i.au, %bb.z ], [ %i.at, %bb.y ], [ %i.as, %bb.x ], [ %i.ar, %bb.w ]
  tail call void @__cxa_guard_abort(ptr nonnull %_ZGVZ13contextModel2vE1m.sink) #38
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN13RunContextMapC2Ei(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = sdiv i32 %1, 4                             ; 2 uses
  %4 = shl nsw i32 %3, 2                          ; 3 uses
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %4, ptr %5, align 4, !tbaa !159
  store i32 %4, ptr %0, align 8, !tbaa !161
  %6 = icmp slt i32 %1, 4
  br i1 %6, label %7, label %bb.a

7:                                                ; preds = %2
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  br label %_ZN2BHILi4EEC2Ei.exit

bb.a:                                             ; preds = %2
  %narrow.i.i.i = add nuw i32 %4, 64              ; 2 uses
  %i.a = load i32, ptr @programChecker, align 8, !tbaa !15
  %i.b = add nsw i32 %i.a, %narrow.i.i.i          ; 3 uses
  store i32 %i.b, ptr @programChecker, align 8, !tbaa !15
  %i.c = load i32, ptr getelementptr inbounds nuw (i8, ptr @programChecker, i64 4), align 4, !tbaa !18
  %i.d = icmp sgt i32 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %_ZN14ProgramChecker5allocEi.exit.i.i.i

bb.b:                                             ; preds = %bb.a
  store i32 %i.b, ptr getelementptr inbounds nuw (i8, ptr @programChecker, i64 4), align 4, !tbaa !18
  br label %_ZN14ProgramChecker5allocEi.exit.i.i.i

_ZN14ProgramChecker5allocEi.exit.i.i.i:           ; preds = %bb.b, %bb.a
  %i.e = sext i32 %narrow.i.i.i to i64
  %i.f = tail call noalias ptr @calloc(i64 noundef %i.e, i64 noundef 1) #40 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %i.g, align 8, !tbaa !162
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %bb.c, label %9

bb.c:                                             ; preds = %_ZN14ProgramChecker5allocEi.exit.i.i.i
  tail call void @_Z4quitPKc(ptr noundef nonnull @.str.59)
  unreachable

9:                                                ; preds = %_ZN14ProgramChecker5allocEi.exit.i.i.i
  %10 = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %11 = ptrtoint ptr %i.f to i64
  %12 = and i64 %11, 63
  %13 = sub nsw i64 0, %12
  %14 = getelementptr inbounds i8, ptr %10, i64 %13 ; 2 uses
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %14, ptr %15, align 8, !tbaa !163
  br label %_ZN2BHILi4EEC2Ei.exit

_ZN2BHILi4EEC2Ei.exit:                            ; preds = %7, %9
  %16 = phi ptr [ null, %7 ], [ %14, %9 ]         ; 19 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = add nsw i32 %3, -1
  store i32 %i.i, ptr %i.h, align 8, !tbaa !238
  %i.j = getelementptr i8, ptr %16, i64 2         ; 2 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !11
  %i.l = icmp eq i8 %i.k, 0
  br i1 %i.l, label %.loopexit.i, label %bb.d

bb.d:                                             ; preds = %_ZN2BHILi4EEC2Ei.exit
  %i.m = load i16, ptr %16, align 2, !tbaa !33
  %i.n = icmp eq i16 %i.m, 0
  br i1 %i.n, label %bb.u, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr i8, ptr %16, i64 4         ; 4 uses
  %i.p = getelementptr i8, ptr %16, i64 6
  %i.q = load i8, ptr %i.p, align 2, !tbaa !11
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %.loopexit.thread48.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load i16, ptr %i.o, align 2, !tbaa !33
  %i.t = icmp eq i16 %i.s, 0
  br i1 %i.t, label %.loopexit.thread.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr i8, ptr %16, i64 8         ; 3 uses
  %i.v = getelementptr i8, ptr %16, i64 10
  %i.w = load i8, ptr %i.v, align 2, !tbaa !11
  %i.x = icmp eq i8 %i.w, 0
  br i1 %i.x, label %.loopexit.thread48.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = load i16, ptr %i.u, align 2, !tbaa !33
  %i.z = icmp eq i16 %i.y, 0
  br i1 %i.z, label %.loopexit.thread.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr i8, ptr %16, i64 12       ; 3 uses
  %i.ab = getelementptr i8, ptr %16, i64 14
  %i.ac = load i8, ptr %i.ab, align 2, !tbaa !11
  %i.ad = icmp eq i8 %i.ac, 0
  br i1 %i.ad, label %.loopexit.thread48.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = load i16, ptr %i.aa, align 2, !tbaa !33
  %i.af = icmp eq i16 %i.ae, 0
  br i1 %i.af, label %.loopexit.thread.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = getelementptr i8, ptr %16, i64 16       ; 3 uses
  %i.ah = getelementptr i8, ptr %16, i64 18
  %i.ai = load i8, ptr %i.ah, align 2, !tbaa !11
  %i.aj = icmp eq i8 %i.ai, 0
  br i1 %i.aj, label %.loopexit.thread48.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ak = load i16, ptr %i.ag, align 2, !tbaa !33
  %i.al = icmp eq i16 %i.ak, 0
  br i1 %i.al, label %.loopexit.thread.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.am = getelementptr i8, ptr %16, i64 20       ; 3 uses
  %i.an = getelementptr i8, ptr %16, i64 22
  %i.ao = load i8, ptr %i.an, align 2, !tbaa !11
  %i.ap = icmp eq i8 %i.ao, 0
  br i1 %i.ap, label %.loopexit.thread48.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aq = load i16, ptr %i.am, align 2, !tbaa !33
  %i.ar = icmp eq i16 %i.aq, 0
  br i1 %i.ar, label %.loopexit.thread.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.as = getelementptr i8, ptr %16, i64 24       ; 3 uses
  %i.at = getelementptr i8, ptr %16, i64 26
  %i.au = load i8, ptr %i.at, align 2, !tbaa !11  ; 2 uses
  %i.av = icmp eq i8 %i.au, 0
  br i1 %i.av, label %.loopexit.thread48.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aw = load i16, ptr %i.as, align 2, !tbaa !33
  %i.ax = icmp eq i16 %i.aw, 0
  br i1 %i.ax, label %.loopexit.thread.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ay = getelementptr i8, ptr %16, i64 28       ; 3 uses
  %i.az = getelementptr i8, ptr %16, i64 30
  %i.ba = load i8, ptr %i.az, align 2, !tbaa !11  ; 2 uses
  %i.bb = icmp eq i8 %i.ba, 0
  br i1 %i.bb, label %.loopexit.thread48.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bc = load i16, ptr %i.ay, align 2, !tbaa !33
  %i.bd = icmp eq i16 %i.bc, 0
  br i1 %i.bd, label %.loopexit.thread.i, label %bb.s

.loopexit.thread48.i:                             ; preds = %bb.q, %bb.o, %bb.m, %bb.k, %bb.i, %bb.g, %bb.e
  %.037.lcssa.wide.ph.i = phi i64 [ 28, %bb.q ], [ 24, %bb.o ], [ 20, %bb.m ], [ 16, %bb.k ], [ 12, %bb.i ], [ 8, %bb.g ], [ 4, %bb.e ]
  %.lcssa.ph.i = phi ptr [ %i.ay, %bb.q ], [ %i.as, %bb.o ], [ %i.am, %bb.m ], [ %i.ag, %bb.k ], [ %i.aa, %bb.i ], [ %i.u, %bb.g ], [ %i.o, %bb.e ] ; 2 uses
  store i16 0, ptr %.lcssa.ph.i, align 2, !tbaa !33
  br label %.loopexit.thread.i

.loopexit.i:                                      ; preds = %_ZN2BHILi4EEC2Ei.exit
  store i16 0, ptr %16, align 2, !tbaa !33
  br label %bb.u

bb.s:                                             ; preds = %bb.r
  store i32 0, ptr @_ZZN2BHILi4EEixEjE3tmp, align 1
  %i.be = icmp ugt i8 %i.ba, %i.au
  %spec.select.i = select i1 %i.be, i64 24, i64 28
  br label %bb.t

.loopexit.thread.i:                               ; preds = %.loopexit.thread48.i, %bb.r, %bb.p, %bb.n, %bb.l, %bb.j, %bb.h, %bb.f
  %.03642.i = phi i64 [ %.037.lcssa.wide.ph.i, %.loopexit.thread48.i ], [ 16, %bb.l ], [ 24, %bb.p ], [ 12, %bb.j ], [ 20, %bb.n ], [ 8, %bb.h ], [ 28, %bb.r ], [ 4, %bb.f ]
  %i.bf = phi ptr [ %.lcssa.ph.i, %.loopexit.thread48.i ], [ %i.ag, %bb.l ], [ %i.as, %bb.p ], [ %i.aa, %bb.j ], [ %i.am, %bb.n ], [ %i.u, %bb.h ], [ %i.ay, %bb.r ], [ %i.o, %bb.f ]
  %i.bg = load i32, ptr %i.bf, align 2            ; 2 uses
  store i32 %i.bg, ptr @_ZZN2BHILi4EEixEjE3tmp, align 1
  br label %bb.t

bb.t:                                             ; preds = %.loopexit.thread.i, %bb.s
  %i.bh = phi i32 [ %i.bg, %.loopexit.thread.i ], [ 0, %bb.s ]
  %.1.i = phi i64 [ %.03642.i, %.loopexit.thread.i ], [ %spec.select.i, %bb.s ]
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.o, ptr nonnull align 1 %16, i64 %.1.i, i1 false)
  store i32 %i.bh, ptr %16, align 2
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.loopexit.i, %bb.d
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.j, ptr %i.bi, align 8, !tbaa !235
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN13RunContextMapD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !161
  %i.b = load i32, ptr @programChecker, align 8, !tbaa !15
  %reass.sub.i.i = sub i32 %i.b, %i.a
  %i.c = add i32 %reass.sub.i.i, -64              ; 3 uses
  store i32 %i.c, ptr @programChecker, align 8, !tbaa !15
  %i.d = load i32, ptr getelementptr inbounds nuw (i8, ptr @programChecker, i64 4), align 4, !tbaa !18
  %i.e = icmp sgt i32 %i.c, %i.d
  br i1 %i.e, label %bb.b, label %_ZN2BHILi4EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  store i32 %i.c, ptr getelementptr inbounds nuw (i8, ptr @programChecker, i64 4), align 4, !tbaa !18
  br label %_ZN2BHILi4EED2Ev.exit

_ZN2BHILi4EED2Ev.exit:                            ; preds = %bb.a, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !162
  tail call void @free(ptr noundef %i.g) #38
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN9PredictorC2Ev(ptr noundef nonnull writeonly align 4 captures(none) dereferenceable(4) initializes((0, 4)) %0) unnamed_addr #24 align 2 {
bb.a:
  store i32 2048, ptr %0, align 4, !tbaa !239
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN9Predictor6updateEv(ptr noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %0) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN9Predictor6updateEvE1a acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.e, !prof !119

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN9Predictor6updateEvE1a) #38
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN4APM1C2Ei(ptr noundef nonnull align 8 dereferenceable(32) @_ZZN9Predictor6updateEvE1a, i32 noundef 256)
          to label %bb.d unwind label %bb.ae

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4APM1D2Ev, ptr nonnull @_ZZN9Predictor6updateEvE1a, ptr nonnull @__dso_handle) #38 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN9Predictor6updateEvE1a) #38
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b, %bb.a
  %i.e = load atomic i8, ptr @_ZGVZN9Predictor6updateEvE2a1 acquire, align 8
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.f, label %bb.i, !prof !119

bb.f:                                             ; preds = %bb.e
  %i.g = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN9Predictor6updateEvE2a1) #38
  %.not16 = icmp eq i32 %i.g, 0
  br i1 %.not16, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN4APM1C2Ei(ptr noundef nonnull align 8 dereferenceable(32) @_ZZN9Predictor6updateEvE2a1, i32 noundef 65536)
          to label %bb.h unwind label %bb.af

bb.h:                                             ; preds = %bb.g
  %i.h = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4APM1D2Ev, ptr nonnull @_ZZN9Predictor6updateEvE2a1, ptr nonnull @__dso_handle) #38 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN9Predictor6updateEvE2a1) #38
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f, %bb.e
  %i.i = load atomic i8, ptr @_ZGVZN9Predictor6updateEvE2a2 acquire, align 8
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %bb.j, label %bb.m, !prof !119

bb.j:                                             ; preds = %bb.i
  %i.k = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN9Predictor6updateEvE2a2) #38
  %.not17 = icmp eq i32 %i.k, 0
  br i1 %.not17, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN4APM1C2Ei(ptr noundef nonnull align 8 dereferenceable(32) @_ZZN9Predictor6updateEvE2a2, i32 noundef 65536)
          to label %bb.l unwind label %bb.ag

bb.l:                                             ; preds = %bb.k
  %i.l = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4APM1D2Ev, ptr nonnull @_ZZN9Predictor6updateEvE2a2, ptr nonnull @__dso_handle) #38 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN9Predictor6updateEvE2a2) #38
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.j, %bb.i
  %i.m = load atomic i8, ptr @_ZGVZN9Predictor6updateEvE2a3 acquire, align 8
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %bb.n, label %bb.q, !prof !119

bb.n:                                             ; preds = %bb.m
  %i.o = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN9Predictor6updateEvE2a3) #38
  %.not18 = icmp eq i32 %i.o, 0
  br i1 %.not18, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN4APM1C2Ei(ptr noundef nonnull align 8 dereferenceable(32) @_ZZN9Predictor6updateEvE2a3, i32 noundef 65536)
          to label %bb.p unwind label %bb.ah

bb.p:                                             ; preds = %bb.o
  %i.p = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4APM1D2Ev, ptr nonnull @_ZZN9Predictor6updateEvE2a3, ptr nonnull @__dso_handle) #38 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN9Predictor6updateEvE2a3) #38
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.n, %bb.m
  %i.q = load atomic i8, ptr @_ZGVZN9Predictor6updateEvE2a4 acquire, align 8
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.r, label %bb.u, !prof !119

bb.r:                                             ; preds = %bb.q
  %i.s = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN9Predictor6updateEvE2a4) #38
  %.not19 = icmp eq i32 %i.s, 0
  br i1 %.not19, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN4APM1C2Ei(ptr noundef nonnull align 8 dereferenceable(32) @_ZZN9Predictor6updateEvE2a4, i32 noundef 65536)
          to label %bb.t unwind label %bb.ai

bb.t:                                             ; preds = %bb.s
  %i.t = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4APM1D2Ev, ptr nonnull @_ZZN9Predictor6updateEvE2a4, ptr nonnull @__dso_handle) #38 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN9Predictor6updateEvE2a4) #38
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.r, %bb.q
  %i.u = load atomic i8, ptr @_ZGVZN9Predictor6updateEvE2a5 acquire, align 8
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %bb.v, label %bb.y, !prof !119

bb.v:                                             ; preds = %bb.u
  %i.w = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN9Predictor6updateEvE2a5) #38
  %.not20 = icmp eq i32 %i.w, 0
  br i1 %.not20, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  invoke void @_ZN4APM1C2Ei(ptr noundef nonnull align 8 dereferenceable(32) @_ZZN9Predictor6updateEvE2a5, i32 noundef 65536)
          to label %bb.x unwind label %bb.aj

bb.x:                                             ; preds = %bb.w
  %i.x = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4APM1D2Ev, ptr nonnull @_ZZN9Predictor6updateEvE2a5, ptr nonnull @__dso_handle) #38 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN9Predictor6updateEvE2a5) #38
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.v, %bb.u
  %i.y = load atomic i8, ptr @_ZGVZN9Predictor6updateEvE2a6 acquire, align 8
  %i.z = icmp eq i8 %i.y, 0
  br i1 %i.z, label %bb.z, label %bb.ac, !prof !119

bb.z:                                             ; preds = %bb.y
  %i.aa = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN9Predictor6updateEvE2a6) #38
  %.not21 = icmp eq i32 %i.aa, 0
  br i1 %.not21, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZN4APM1C2Ei(ptr noundef nonnull align 8 dereferenceable(32) @_ZZN9Predictor6updateEvE2a6, i32 noundef 65536)
          to label %bb.ab unwind label %bb.ak

bb.ab:                                            ; preds = %bb.aa
  %i.ab = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4APM1D2Ev, ptr nonnull @_ZZN9Predictor6updateEvE2a6, ptr nonnull @__dso_handle) #38 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN9Predictor6updateEvE2a6) #38
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.z, %bb.y
  %i.ac = load i32, ptr @c0, align 4, !tbaa !4
  %i.ad = load i32, ptr @y, align 4, !tbaa !4
  %reass.add = shl i32 %i.ac, 1
  %i.ae = add i32 %i.ad, %reass.add               ; 3 uses
  store i32 %i.ae, ptr @c0, align 4, !tbaa !4
  %i.af = icmp sgt i32 %i.ae, 255
  br i1 %i.af, label %bb.ad, label %bb.al

bb.ad:                                            ; preds = %bb.ac
  %i.ag = trunc i32 %i.ae to i8
  %i.ah = load i32, ptr @pos, align 4, !tbaa !4   ; 2 uses
  %i.ai = add nsw i32 %i.ah, 1
  store i32 %i.ai, ptr @pos, align 4, !tbaa !4
  %i.aj = load i32, ptr @buf, align 8, !tbaa !22
  %i.ak = add nsw i32 %i.aj, -1
  %i.al = and i32 %i.ak, %i.ah
  %i.am = load ptr, ptr getelementptr inbounds nuw (i8, ptr @buf, i64 16), align 8, !tbaa !24
  %i.an = sext i32 %i.al to i64
  %i.ao = getelementptr inbounds i8, ptr %i.am, i64 %i.an
  store i8 %i.ag, ptr %i.ao, align 1, !tbaa !11
  %i.ap = load i32, ptr @c4, align 4, !tbaa !4
  %i.aq = shl i32 %i.ap, 8
  %i.ar = load i32, ptr @c0, align 4, !tbaa !4
  %i.as = add i32 %i.ar, -256
  %i.at = add i32 %i.as, %i.aq
  store i32 %i.at, ptr @c4, align 4, !tbaa !4
end_hunk_0
begin_hunk_1_@_GLOBAL__sub_I_paq8p.cpp:bb.a
  tail call void @_Z4quitPKc(ptr noundef nonnull @.str.59)
  unreachable

_ZN5ArrayIhLi0EEC2Ei.exit.i.i:                    ; preds = %_ZN14ProgramChecker5allocEi.exit.i.i.i.i1
  store ptr %i.aa, ptr getelementptr inbounds nuw (i8, ptr @ilog, i64 16), align 8, !tbaa !24
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %_ZN5ArrayIhLi0EEC2Ei.exit.i.i
  %indvars.iv.i.i3 = phi i64 [ 2, %_ZN5ArrayIhLi0EEC2Ei.exit.i.i ], [ %indvars.iv.next.i.i4.1, %bb.g ] ; 4 uses
  %.067.i.i = phi i32 [ 14155776, %_ZN5ArrayIhLi0EEC2Ei.exit.i.i ], [ %i.ak, %bb.g ]
  %indvars.iv.tr.i.i = trunc i64 %indvars.iv.i.i3 to i32
  %i.ab = shl i32 %indvars.iv.tr.i.i, 1
  %i.ac = add nsw i32 %i.ab, -1
  %.udiv.i.i = udiv i32 774541002, %i.ac
  %i.ad = add i32 %.udiv.i.i, %.067.i.i           ; 2 uses
  %i.ae = lshr i32 %i.ad, 24
  %i.af = trunc nuw i32 %i.ae to i8
  %i.ag = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ilog, i64 16), align 8, !tbaa !24
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %indvars.iv.i.i3
  store i8 %i.af, ptr %i.ah, align 1, !tbaa !11
  %indvars.iv.next.i.i4 = or disjoint i64 %indvars.iv.i.i3, 1 ; 2 uses
  %indvars.iv.tr.i.i.1 = trunc i64 %indvars.iv.next.i.i4 to i32
  %i.ai = shl i32 %indvars.iv.tr.i.i.1, 1
  %i.aj = add nsw i32 %i.ai, -1
  %.udiv.i.i.1 = udiv i32 774541002, %i.aj
  %i.ak = add i32 %.udiv.i.i.1, %i.ad             ; 2 uses
  %i.al = lshr i32 %i.ak, 24
  %i.am = trunc nuw i32 %i.al to i8
  %i.an = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ilog, i64 16), align 8, !tbaa !24
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %indvars.iv.next.i.i4
  store i8 %i.am, ptr %i.ao, align 1, !tbaa !11
  %indvars.iv.next.i.i4.1 = add nuw nsw i64 %indvars.iv.i.i3, 2 ; 2 uses
  %exitcond.not.i.i5.1 = icmp eq i64 %indvars.iv.next.i.i4.1, 65536
  br i1 %exitcond.not.i.i5.1, label %__cxx_global_var_init.3.exit, label %bb.g, !llvm.loop !25

__cxx_global_var_init.3.exit:                     ; preds = %bb.g
  %i.ap = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4IlogD2Ev, ptr nonnull @ilog, ptr nonnull @__dso_handle) #38 ; 0 uses
  store i32 4096, ptr getelementptr inbounds nuw (i8, ptr @stretch, i64 4), align 4, !tbaa !31
  store i32 4096, ptr @stretch, align 8, !tbaa !27
  %i.aq = load i32, ptr @programChecker, align 8, !tbaa !15
  %i.ar = add nsw i32 %i.aq, 8192                 ; 3 uses
  store i32 %i.ar, ptr @programChecker, align 8, !tbaa !15
  %i.as = load i32, ptr getelementptr inbounds nuw (i8, ptr @programChecker, i64 4), align 4, !tbaa !18
  %i.at = icmp sgt i32 %i.ar, %i.as
  br i1 %i.at, label %bb.h, label %_ZN14ProgramChecker5allocEi.exit.i.i.i.i6

bb.h:                                             ; preds = %__cxx_global_var_init.3.exit
  store i32 %i.ar, ptr getelementptr inbounds nuw (i8, ptr @programChecker, i64 4), align 4, !tbaa !18
  br label %_ZN14ProgramChecker5allocEi.exit.i.i.i.i6

_ZN14ProgramChecker5allocEi.exit.i.i.i.i6:        ; preds = %bb.h, %__cxx_global_var_init.3.exit
  %i.au = tail call noalias dereferenceable_or_null(8192) ptr @calloc(i64 noundef 8192, i64 noundef 1) #40 ; 7 uses
  store ptr %i.au, ptr getelementptr inbounds nuw (i8, ptr @stretch, i64 8), align 8, !tbaa !30
  %.not.i.i.i.i7 = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i7, label %bb.i, label %_ZN5ArrayIsLi0EEC2Ei.exit.i.i

bb.i:                                             ; preds = %_ZN14ProgramChecker5allocEi.exit.i.i.i.i6
  tail call void @_Z4quitPKc(ptr noundef nonnull @.str.59)
  unreachable

_ZN5ArrayIsLi0EEC2Ei.exit.i.i:                    ; preds = %_ZN14ProgramChecker5allocEi.exit.i.i.i.i6
  store ptr %i.au, ptr getelementptr inbounds nuw (i8, ptr @stretch, i64 16), align 8, !tbaa !32
  br label %_Z6squashi.exit.i.i

_Z6squashi.exit.i.i:                              ; preds = %._crit_edge.i.i, %_ZN5ArrayIsLi0EEC2Ei.exit.i.i
  %.01016.i.i = phi i32 [ 0, %_ZN5ArrayIsLi0EEC2Ei.exit.i.i ], [ %.pre-phi.i.i, %._crit_edge.i.i ] ; 3 uses
  %.01115.i.i = phi i32 [ -2047, %_ZN5ArrayIsLi0EEC2Ei.exit.i.i ], [ %i.bs, %._crit_edge.i.i ] ; 4 uses
  %i.av = and i32 %.01115.i.i, 127                ; 2 uses
  %i.aw = ashr i32 %.01115.i.i, 7
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr [4 x i8], ptr @_ZZ6squashiE1t, i64 %i.ax ; 2 uses
  %i.az = getelementptr i8, ptr %i.ay, i64 64
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !4
  %i.bb = sub nuw nsw i32 128, %i.av
  %i.bc = mul nsw i32 %i.bb, %i.ba
  %i.bd = getelementptr i8, ptr %i.ay, i64 68
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !4
  %i.bf = mul nsw i32 %i.be, %i.av
  %i.bg = add i32 %i.bc, 64
  %i.bh = add i32 %i.bg, %i.bf
  %i.bi = ashr i32 %i.bh, 7                       ; 4 uses
  %.not13.i.i = icmp sgt i32 %.01016.i.i, %i.bi
  br i1 %.not13.i.i, label %_Z6squashi.exit.._crit_edge_crit_edge.i.i, label %iter.check

_Z6squashi.exit.._crit_edge_crit_edge.i.i:        ; preds = %_Z6squashi.exit.i.i
  %.pre.i.i = add nsw i32 %i.bi, 1
  br label %._crit_edge.i.i

iter.check:                                       ; preds = %_Z6squashi.exit.i.i
  %i.bj = trunc i32 %.01115.i.i to i16            ; 3 uses
  %i.bk = sext i32 %.01016.i.i to i64             ; 5 uses
  %i.bl = add nsw i32 %i.bi, 1                    ; 4 uses
  %wide.trip.count.i.i = sext i32 %i.bl to i64
  %narrow = add nsw i32 %i.bi, 1
  %narrow27 = sub nsw i32 %narrow, %.01016.i.i    ; 3 uses
  %i.bm = zext nneg i32 %narrow27 to i64          ; 5 uses
  %min.iters.check = icmp ult i32 %narrow27, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check18 = icmp ult i32 %narrow27, 16
  br i1 %min.iters.check18, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.bm, 12
  %n.vec = and i64 %i.bm, 2147483632              ; 4 uses
  %i.bn = add nsw i64 %n.vec, %i.bk
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.bj, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %invariant.gep = getelementptr [2 x i8], ptr %i.au, i64 %i.bk
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <8 x i16> %broadcast.splat, ptr %gep, align 2, !tbaa !33
  store <8 x i16> %broadcast.splat, ptr %i.bo, align 2, !tbaa !33
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bp = icmp eq i64 %index.next, %n.vec
  br i1 %i.bp, label %middle.block, label %vector.body, !llvm.loop !302

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.bm
  br i1 %cmp.n, label %._crit_edge.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !38

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec20 = and i64 %i.bm, 2147483644            ; 3 uses
  %i.bq = add nsw i64 %n.vec20, %i.bk
  %broadcast.splatinsert21 = insertelement <4 x i16> poison, i16 %i.bj, i64 0
  %broadcast.splat22 = shufflevector <4 x i16> %broadcast.splatinsert21, <4 x i16> poison, <4 x i32> zeroinitializer
  %invariant.gep28 = getelementptr [2 x i8], ptr %i.au, i64 %i.bk
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index23 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next24, %vec.epilog.vector.body ] ; 2 uses
  %gep29 = getelementptr [2 x i8], ptr %invariant.gep28, i64 %index23
  store <4 x i16> %broadcast.splat22, ptr %gep29, align 2, !tbaa !33
  %index.next24 = add nuw i64 %index23, 4         ; 2 uses
  %i.br = icmp eq i64 %index.next24, %n.vec20
  br i1 %i.br, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !303

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n25 = icmp eq i64 %n.vec20, %i.bm
  br i1 %cmp.n25, label %._crit_edge.i.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.i8.ph = phi i64 [ %i.bk, %iter.check ], [ %i.bn, %vec.epilog.iter.check ], [ %i.bq, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

._crit_edge.i.i:                                  ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %_Z6squashi.exit.._crit_edge_crit_edge.i.i
  %.pre-phi.i.i = phi i32 [ %.pre.i.i, %_Z6squashi.exit.._crit_edge_crit_edge.i.i ], [ %i.bl, %middle.block ], [ %i.bl, %vec.epilog.middle.block ], [ %i.bl, %vec.epilog.scalar.ph ]
  %i.bs = add nsw i32 %.01115.i.i, 1              ; 2 uses
  %exitcond18.not.i.i = icmp eq i32 %i.bs, 2048
  br i1 %exitcond18.not.i.i, label %__cxx_global_var_init.4.exit, label %_Z6squashi.exit.i.i, !llvm.loop !40

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv.i.i8 = phi i64 [ %indvars.iv.next.i.i9, %vec.epilog.scalar.ph ], [ %indvars.iv.i.i8.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.bt = getelementptr inbounds [2 x i8], ptr %i.au, i64 %indvars.iv.i.i8
  store i16 %i.bj, ptr %i.bt, align 2, !tbaa !33
  %indvars.iv.next.i.i9 = add nsw i64 %indvars.iv.i.i8, 1 ; 2 uses
  %exitcond.not.i.i10 = icmp eq i64 %indvars.iv.next.i.i9, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i10, label %._crit_edge.i.i, label %vec.epilog.scalar.ph, !llvm.loop !304

__cxx_global_var_init.4.exit:                     ; preds = %._crit_edge.i.i
  %i.bu = getelementptr inbounds nuw i8, ptr %i.au, i64 8190
  store i16 2047, ptr %i.bu, align 2, !tbaa !33
  %i.bv = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7StretchD2Ev, ptr nonnull @stretch, ptr nonnull @__dso_handle) #38 ; 0 uses
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #21

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.abs.i16(i16, i1 immarg) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.fshl.i8(i8, i8, i8) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.smax.v8i32(<8 x i32>, <8 x i32>) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.smin.v8i32(<8 x i32>, <8 x i32>) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #37

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #21

attributes #0 = { cold mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold noreturn }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #20 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { cold nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { nounwind memory(none) }
attributes #28 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #33 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #34 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #35 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #36 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #37 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #38 = { nounwind }
attributes #39 = { noreturn }
attributes #40 = { nounwind allocsize(0,1) }
attributes #41 = { builtin nounwind }
attributes #42 = { builtin allocsize(0) }
attributes #43 = { nounwind willreturn memory(read) }
attributes #44 = { cold }
attributes #45 = { noreturn nounwind }
attributes #46 = { cold noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"p1 omnipotent char", !10, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!6, !6, i64 0}
!12 = !{!13, !5, i64 0}
!13 = !{!"_ZTS5ArrayIjLi0EE", !5, i64 0, !5, i64 4, !9, i64 8, !14, i64 16}
!14 = !{!"p1 int", !10, i64 0}
!15 = !{!16, !5, i64 0}
!16 = !{!"_ZTS14ProgramChecker", !5, i64 0, !5, i64 4, !17, i64 8}
!17 = !{!"long", !6, i64 0}
!18 = !{!16, !5, i64 4}
!19 = !{!13, !9, i64 8}
!20 = !{!21, !5, i64 4}
!21 = !{!"_ZTS5ArrayIhLi0EE", !5, i64 0, !5, i64 4, !9, i64 8, !9, i64 16}
!22 = !{!21, !5, i64 0}
!23 = !{!21, !9, i64 8}
!24 = !{!21, !9, i64 16}
!25 = distinct !{!25, !26}
!26 = !{!"llvm.loop.mustprogress"}
!27 = !{!28, !5, i64 0}
!28 = !{!"_ZTS5ArrayIsLi0EE", !5, i64 0, !5, i64 4, !9, i64 8, !29, i64 16}
!29 = !{!"p1 short", !10, i64 0}
!30 = !{!28, !9, i64 8}
!31 = !{!28, !5, i64 4}
!32 = !{!28, !29, i64 16}
!33 = !{!34, !34, i64 0}
!34 = !{!"short", !6, i64 0}
!35 = distinct !{!35, !26, !36, !37}
!36 = !{!"llvm.loop.isvectorized", i32 1}
!37 = !{!"llvm.loop.unroll.runtime.disable"}
!38 = !{!"branch_weights", i32 4, i32 12}
!39 = distinct !{!39, !26, !36, !37}
!40 = distinct !{!40, !26}
!41 = distinct !{!41, !26, !37, !36}
!42 = distinct !{!42, !26, !36, !37}
!43 = distinct !{!43, !26, !37, !36}
!44 = !{!45}
!45 = distinct !{!45, !46}
!46 = distinct !{!46, !"LVerDomain"}
!47 = !{!48}
!48 = distinct !{!48, !46}
!49 = distinct !{!49, !26, !36, !37}
!50 = distinct !{!50, !26, !36}
!51 = !{!52, !55, i64 128}
!52 = !{!"_ZTS5Mixer", !5, i64 0, !5, i64 4, !5, i64 8, !53, i64 16, !53, i64 40, !54, i64 64, !5, i64 88, !5, i64 92, !5, i64 96, !54, i64 104, !55, i64 128}
!53 = !{!"_ZTS5ArrayIsLi16EE", !5, i64 0, !5, i64 4, !9, i64 8, !29, i64 16}
!54 = !{!"_ZTS5ArrayIiLi0EE", !5, i64 0, !5, i64 4, !9, i64 8, !14, i64 16}
!55 = !{!"p1 _ZTS5Mixer", !10, i64 0}
!56 = !{!54, !5, i64 0}
!57 = !{!54, !9, i64 8}
!58 = !{!53, !5, i64 0}
!59 = !{!53, !9, i64 8}
!60 = !{!52, !5, i64 0}
!61 = !{!52, !5, i64 4}
!62 = !{!52, !5, i64 8}
!63 = !{!53, !5, i64 4}
!64 = !{!53, !29, i64 16}
!65 = !{!54, !5, i64 4}
!66 = !{!54, !14, i64 16}
!67 = !{!52, !5, i64 88}
!68 = !{!52, !5, i64 92}
!69 = !{!52, !5, i64 96}
!70 = distinct !{!70, !26, !36, !37}
!71 = distinct !{!71, !26, !36, !37}
!72 = distinct !{!72, !26, !36, !37}
!73 = distinct !{!73, !26, !37, !36}
!74 = distinct !{!74, !26, !37, !36}
!75 = !{!76, !5, i64 0}
!76 = !{!"_ZTS4APM1", !5, i64 0, !5, i64 4, !77, i64 8}
!77 = !{!"_ZTS5ArrayItLi0EE", !5, i64 0, !5, i64 4, !9, i64 8, !29, i64 16}
!78 = !{!76, !5, i64 4}
!79 = !{!77, !5, i64 4}
!80 = !{!77, !5, i64 0}
!81 = !{!77, !9, i64 8}
!82 = !{!77, !29, i64 16}
!83 = distinct !{!83, !26}
!84 = !{!85, !5, i64 0}
!85 = !{!"_ZTS8StateMap", !5, i64 0, !5, i64 4, !13, i64 8}
!86 = !{!85, !5, i64 4}
!87 = !{!13, !5, i64 4}
!88 = !{!13, !14, i64 16}
!89 = distinct !{!89, !26, !36, !37}
!90 = distinct !{!90, !26, !37, !36}
!91 = distinct !{!91, !26, !36, !37}
!92 = distinct !{!92, !26, !37, !36}
!93 = distinct !{!93, !26}
!94 = !{!95, !5, i64 0}
!95 = !{!"_ZTS10ContextMap", !5, i64 0, !96, i64 8, !98, i64 32, !98, i64 56, !13, i64 80, !98, i64 104, !101, i64 128, !5, i64 136}
!96 = !{!"_ZTS5ArrayIN10ContextMap1EELi64EE", !5, i64 0, !5, i64 4, !9, i64 8, !97, i64 16}
!97 = !{!"p1 _ZTSN10ContextMap1EE", !10, i64 0}
!98 = !{!"_ZTS5ArrayIPhLi0EE", !5, i64 0, !5, i64 4, !9, i64 8, !99, i64 16}
!99 = !{!"p2 omnipotent char", !100, i64 0}
!100 = !{!"any p2 pointer", !10, i64 0}
!101 = !{!"p1 _ZTS8StateMap", !10, i64 0}
!102 = !{!96, !5, i64 4}
!103 = !{!96, !5, i64 0}
!104 = !{!96, !9, i64 8}
!105 = !{!96, !97, i64 16}
!106 = !{!98, !5, i64 4}
!107 = !{!98, !5, i64 0}
!108 = !{!98, !9, i64 8}
!109 = !{!98, !99, i64 16}
!110 = !{!95, !5, i64 136}
!111 = !{!95, !101, i64 128}
!112 = distinct !{!112, !26, !36, !37}
!113 = distinct !{!113, !26, !37, !36}
!114 = !{!115, !5, i64 24}
!115 = !{!"_ZTS6Random", !13, i64 0, !5, i64 24}
!116 = distinct !{!116, !26}
!117 = !{!118, !6, i64 14}
!118 = !{!"_ZTSN10ContextMap1EE", !6, i64 0, !6, i64 14, !6, i64 15}
!119 = !{!"branch_weights", i32 1, i32 1048575}
!120 = distinct !{!120, !26}
!121 = !{!122, !5, i64 24}
!122 = !{!"_ZTS25SmallStationaryContextMap", !77, i64 0, !5, i64 24, !29, i64 32}
!123 = !{!122, !29, i64 32}
!124 = distinct !{!124, !26, !36, !37}
!125 = distinct !{!125, !26, !36, !37}
!126 = distinct !{!126, !26, !37, !36}
!127 = distinct !{!127, !26}
!128 = distinct !{!128, !26}
!129 = distinct !{!129, !26}
!130 = distinct !{!130, !26}
!131 = distinct !{!131, !26}
!132 = distinct !{null}
!133 = distinct !{!133, !26}
!134 = distinct !{!134, !26}
!135 = !{!136, !137, i64 16}
!136 = !{!"_ZTS5ArrayI3HUFLi0EE", !5, i64 0, !5, i64 4, !9, i64 8, !137, i64 16}
!137 = !{!"p1 _ZTS3HUF", !10, i64 0}
!138 = !{!136, !5, i64 0}
!139 = distinct !{!139, !26}
!140 = !{!141, !5, i64 0}
!141 = !{!"_ZTS3HUF", !5, i64 0, !5, i64 4, !5, i64 8}
!142 = !{!141, !5, i64 4}
!143 = !{!141, !5, i64 8}
!144 = distinct !{!144, !26}
end_hunk_1
