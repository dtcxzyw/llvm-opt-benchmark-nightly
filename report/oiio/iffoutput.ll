Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/iffoutput?download=true
inline.NumInlined: 3241
inline.NumDeleted: 853
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 42
loop-unroll.NumUnrolled: 47
begin_hunk_0_@_ZN11OpenImageIO4v3_19IffOutput5closeEv:bb.a
  %i.vp = zext i8 %i.vo to i64
  %i.vq = mul nuw nsw i64 %i.vn, %i.vp
  %i.vr = load i8, ptr %i.ae, align 8, !tbaa !207
  %.not.i.i599 = icmp eq i8 %i.vr, 0
  %i.vs = load i8, ptr %i.ag, align 1
  %i.vt = lshr i8 %i.vs, 3
  %narrow.i.i600 = select i1 %.not.i.i599, i8 0, i8 %i.vt
  %i.vu = zext nneg i8 %narrow.i.i600 to i64
  %i.vv = add nuw nsw i64 %i.vq, %i.vu
  %i.vw = mul nuw nsw i64 %i.vv, %i.ui
  %i.vx = getelementptr inbounds nuw i8, ptr %i.uf, i64 %i.vw
  %i.vy = mul nuw nsw i64 %i.vk, %i.vn
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vx, i64 %i.vy
  %i.wa = load i8, ptr %i.vz, align 1, !tbaa !152
  %i.wb = getelementptr inbounds nuw i8, ptr %.23272092, i64 1 ; 2 uses
  store i8 %i.wa, ptr %.23272092, align 1, !tbaa !152
  %.wide = icmp eq i64 %i.vk, 0
  br i1 %.wide, label %._crit_edge2096, label %bb.bj

._crit_edge2096:                                  ; preds = %bb.bt, %.lr.ph2102
  %.2327.lcssa = phi ptr [ %.13262100, %.lr.ph2102 ], [ %i.wb, %bb.bt ] ; 2 uses
  %i.wc = add i32 %storemerge5132099, 1           ; 2 uses
  %.not514 = icmp ugt i32 %i.wc, %i.ez
  br i1 %.not514, label %._crit_edge2103, label %.lr.ph2102, !llvm.loop !440

._crit_edge2103:                                  ; preds = %._crit_edge2096, %bb.bi
  %.1326.lcssa = phi ptr [ %.03252107, %bb.bi ], [ %.2327.lcssa, %._crit_edge2096 ]
  %i.wd = add i32 %storemerge5112106, 1           ; 2 uses
  %.not512 = icmp ugt i32 %i.wd, %i.fb
  br i1 %.not512, label %.thread1535, label %bb.bi, !llvm.loop !441

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i605: ; preds = %bb.br, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i604
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %23)
  br label %bb.ep

_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit.thread: ; preds = %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit557
  %i.we = icmp eq i8 %i.gn, 4
  %or.cond.i610 = select i1 %i.we, i1 %i.gq, i1 false
  br i1 %or.cond.i610, label %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit612, label %.thread1535

_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit612: ; preds = %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit.thread
  %i.wf = load i32, ptr %i.bf, align 4, !tbaa !192
  %.not.i611 = icmp eq i32 %i.wf, 0
  br i1 %.not.i611, label %bb.bu, label %.thread1535

bb.bu:                                            ; preds = %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit612
  br i1 %i.gg, label %bb.bv, label %.thread1602

bb.bv:                                            ; preds = %bb.bu
  %i.wg = load i8, ptr %i.aa, align 1, !tbaa !203
  %.not474 = icmp eq i8 %i.wg, 3
  br i1 %.not474, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.wh = invoke noalias noundef nonnull dereferenceable(6) ptr @_Znwm(i64 noundef 6) #31
          to label %.critedge550 unwind label %.body614.thread1564 ; 3 uses

bb.bx:                                            ; preds = %bb.bv
  %i.wi = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #31
          to label %.critedge unwind label %.body614.thread1564 ; 3 uses

.body614.thread1564:                              ; preds = %bb.n, %bb.bw, %bb.bx
  %i.wj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit596

.critedge:                                        ; preds = %bb.bx
  %i.wk = getelementptr inbounds nuw i8, ptr %i.wi, i64 8
  store i64 433756242058674688, ptr %i.wi, align 1
  br label %.critedge546

.critedge550:                                     ; preds = %bb.bw
  %i.wl = getelementptr inbounds nuw i8, ptr %i.wh, i64 6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.wh, ptr noundef nonnull align 1 dereferenceable(6) @__const._ZN11OpenImageIO4v3_19IffOutput5closeEv.rgb16, i64 6, i1 false)
  br label %.critedge546

.critedge546:                                     ; preds = %.critedge, %.critedge550
  %.sroa.15.01552 = phi ptr [ %i.wk, %.critedge ], [ %i.wl, %.critedge550 ] ; 2 uses
  %.sroa.01342.01541 = phi ptr [ %i.wi, %.critedge ], [ %i.wh, %.critedge550 ] ; 5 uses
  %i.wm = shl i32 %i.ga, 1                        ; 2 uses
  %i.wn = zext i32 %i.wm to i64                   ; 3 uses
  %.not.i.i.i.i625 = icmp eq i32 %i.wm, 0
  br i1 %.not.i.i.i.i625, label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit629, label %bb.by

bb.by:                                            ; preds = %.critedge546
  %i.wo = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.wn) #31
          to label %.noexc628 unwind label %_ZNSt6vectorIhSaIhEED2Ev.exit721.thread1590 ; 4 uses

.noexc628:                                        ; preds = %bb.by
  %i.wp = getelementptr i8, ptr %i.wo, i64 %i.wn
  store i8 0, ptr %i.wo, align 1, !tbaa !152
  %i.wq = getelementptr inbounds nuw i8, ptr %i.wo, i64 1
  %i.wr = add nsw i64 %i.wn, -1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.wq, i8 0, i64 %i.wr, i1 false)
  %i.ws = ptrtoint ptr %i.wp to i64
  br label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit629

_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit629:            ; preds = %.noexc628, %.critedge546
  %.sroa.01334.0 = phi ptr [ %i.wo, %.noexc628 ], [ null, %.critedge546 ] ; 7 uses
  %.sroa.121338.0 = phi i64 [ %i.ws, %.noexc628 ], [ 0, %.critedge546 ]
  %i.wt = ptrtoint ptr %.sroa.01334.0 to i64
  %i.wu = sub i64 %.sroa.121338.0, %i.wt          ; 4 uses
  %i.wv = ptrtoint ptr %.sroa.15.01552 to i64
  %i.ww = ptrtoint ptr %.sroa.01342.01541 to i64
  %i.wx = sub i64 %i.wv, %i.ww                    ; 5 uses
  %.not.i.i.i.i630 = icmp eq i32 %i.fs, 0
  %i.wy = add nsw i64 %i.ft, -1                   ; 2 uses
  %i.wz = icmp eq i64 %i.wy, 0
  %.not4752043 = icmp ugt i32 %i.eo, %i.fb
  %.not4772039 = icmp ugt i32 %i.ex, %i.ez
  %i.xa = sext i32 %i.fs to i64
  %i.xb = icmp sgt i32 %i.fs, 0
  %i.xc = trunc i64 %i.wx to i32
  %i.xd = icmp slt i32 %i.xc, 1
  br i1 %i.xd, label %._crit_edge2947, label %.lr.ph2946

.lr.ph2946:                                       ; preds = %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit629
  %i.xe = and i64 %i.wx, 2147483647
  %i.xf = zext i32 %i.ez to i64
  %i.xg = shl i64 %indvar, 6
  %i.xh = sub i64 %i.xf, %i.xg
  %i.xi = zext i32 %i.ez to i64
  %i.xj = shl i64 %indvar, 6
  %i.xk = sub i64 %i.xi, %i.xj
  %i.xl = zext i32 %i.ez to i64
  %i.xm = shl i64 %indvar, 6
  %i.xn = sub i64 %i.xl, %i.xm
  %i.xo = xor i32 %i.eu, -2
  br label %bb.ca

bb.bz:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit692
  %i.xp = trunc nuw i64 %i.xs to i32
  %i.xq = icmp slt i32 %i.xp, 1
  br i1 %i.xq, label %._crit_edge2947, label %bb.ca, !llvm.loop !442

_ZNSt6vectorIhSaIhEED2Ev.exit721.thread1590:      ; preds = %bb.by
  %i.xr = landingpad { ptr, i32 }
          cleanup
  %.pre2416 = ptrtoint ptr %.sroa.15.01552 to i64
  %.pre2418 = ptrtoint ptr %.sroa.01342.01541 to i64
  %.pre2420 = sub i64 %.pre2416, %.pre2418
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit721

bb.ca:                                            ; preds = %.lr.ph2946, %bb.bz
  %.in = phi i64 [ %i.xe, %.lr.ph2946 ], [ %i.xs, %bb.bz ]
  %.03072945 = phi i32 [ 0, %.lr.ph2946 ], [ %.1308, %bb.bz ] ; 3 uses
  %i.xs = add nsw i64 %.in, -1                    ; 3 uses
  %i.xt = getelementptr inbounds nuw i8, ptr %.sroa.01342.01541, i64 %i.xs
  %i.xu = load i8, ptr %i.xt, align 1, !tbaa !152
  br i1 %.not.i.i.i.i630, label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit634, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.xv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ft) #31
          to label %.noexc633 unwind label %bb.cd ; 5 uses

.noexc633:                                        ; preds = %bb.cb
  %i.xw = getelementptr i8, ptr %i.xv, i64 %i.ft  ; 3 uses
  store i8 0, ptr %i.xv, align 1, !tbaa !152
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xv, i64 1 ; 2 uses
  br i1 %i.wz, label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit634, label %bb.cc

bb.cc:                                            ; preds = %.noexc633
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.xx, i8 0, i64 %i.wy, i1 false)
  br label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit634

_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit634:            ; preds = %bb.cc, %.noexc633, %bb.ca
  %.sroa.01327.0 = phi ptr [ %i.xv, %bb.cc ], [ %i.xv, %.noexc633 ], [ null, %bb.ca ] ; 12 uses
  %.sroa.111330.0 = phi ptr [ %i.xw, %bb.cc ], [ %i.xw, %.noexc633 ], [ null, %bb.ca ] ; 2 uses
  %.0.i.i.i.i.i631 = phi ptr [ %i.xw, %bb.cc ], [ %i.xx, %.noexc633 ], [ null, %bb.ca ]
  %i.xy = ptrtoint ptr %.0.i.i.i.i.i631 to i64
  %i.xz = ptrtoint ptr %.sroa.01327.0 to i64      ; 4 uses
  %i.ya = sub i64 %i.xy, %i.xz                    ; 3 uses
  br i1 %.not4752043, label %._crit_edge2048, label %.lr.ph2047

.lr.ph2047:                                       ; preds = %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit634
  %i.yb = load ptr, ptr %i.s, align 8, !tbaa !155 ; 3 uses
  %i.yc = load i32, ptr %i.al, align 4, !tbaa !208
  %i.yd = zext i32 %i.yc to i64                   ; 2 uses
  %i.ye = load i8, ptr %i.w, align 8, !tbaa !205
  %i.yf = lshr i8 %i.ye, 3
  %i.yg = zext nneg i8 %i.yf to i64
  %i.yh = load i8, ptr %i.aa, align 1, !tbaa !206
  %i.yi = zext i8 %i.yh to i64
  %i.yj = mul nuw nsw i64 %i.yg, %i.yi
  %i.yk = load i8, ptr %i.ae, align 8, !tbaa !207
  %.not.i.i.i635 = icmp eq i8 %i.yk, 0
  %i.yl = load i8, ptr %i.ag, align 1
  %i.ym = lshr i8 %i.yl, 3
  %narrow.i.i.i636 = select i1 %.not.i.i.i635, i8 0, i8 %i.ym
  %i.yn = zext nneg i8 %narrow.i.i.i636 to i64
  %i.yo = add nuw nsw i64 %i.yj, %i.yn            ; 20 uses
  %factor.op.mul = mul nuw nsw i64 %i.yo, %i.yd
  %i.yp = zext i8 %i.xu to i64                    ; 3 uses
  %invariant.gep2050 = getelementptr i8, ptr %i.yb, i64 %i.yp
  br i1 %.not4772039, label %._crit_edge2048, label %.lr.ph2042.preheader

.lr.ph2042.preheader:                             ; preds = %.lr.ph2047
  %invariant.gep = getelementptr i8, ptr %i.yb, i64 %i.yp
  %invariant.gep3412 = getelementptr i8, ptr %i.yb, i64 %i.yp
  %30 = getelementptr i8, ptr %invariant.gep3412, i64 1
  br label %.lr.ph2042

bb.cd:                                            ; preds = %bb.cb
  %i.yq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit695

.lr.ph2042:                                       ; preds = %.lr.ph2042.preheader, %._crit_edge
  %.03022045 = phi i64 [ %i.aev, %._crit_edge ], [ 0, %.lr.ph2042.preheader ] ; 11 uses
  %storemerge2044 = phi i32 [ %i.aey, %._crit_edge ], [ %i.eo, %.lr.ph2042.preheader ] ; 3 uses
  %i.yr = zext i32 %storemerge2044 to i64         ; 2 uses
  %.reass = mul i64 %factor.op.mul, %i.yr
  %gep2051 = getelementptr i8, ptr %invariant.gep2050, i64 %.reass ; 17 uses
  %umax = call i64 @llvm.umax.i64(i64 %.03022045, i64 %i.ya) ; 3 uses
  %exitcond.not2937.not = icmp ult i64 %.03022045, %i.ya
  br i1 %exitcond.not2937.not, label %.lr.ph2940, label %.lr.ph2042._crit_edge

.lr.ph2940:                                       ; preds = %.lr.ph2042
  %i.ys = xor i64 %.03022045, -1
  %i.yt = add i64 %umax, %i.ys
  %i.yu = freeze i64 %i.yt                        ; 2 uses
  %i.yv = call i64 @llvm.umin.i64(i64 %i.yu, i64 %i.xn)
  %i.yw = add i64 %i.yv, 1                        ; 3 uses
  %min.iters.check3019 = icmp ult i64 %i.yw, 17
  br i1 %min.iters.check3019, label %scalar.ph3018.preheader, label %vector.scevcheck3004

vector.scevcheck3004:                             ; preds = %.lr.ph2940
  %i.yx = xor i64 %.03022045, -1
  %i.yy = add i64 %umax, %i.yx
  %i.yz = freeze i64 %i.yy
  %umin3005 = call i64 @llvm.umin.i64(i64 %i.yz, i64 %i.xh) ; 2 uses
  %i.za = trunc i64 %umin3005 to i32
  %i.zb = icmp ult i32 %i.xo, %i.za
  %i.zc = icmp ugt i64 %umin3005, 4294967295
  %i.zd = or i1 %i.zb, %i.zc
  br i1 %i.zd, label %scalar.ph3018.preheader, label %vector.memcheck3020

vector.memcheck3020:                              ; preds = %vector.scevcheck3004
  %i.ze = getelementptr i8, ptr %.sroa.01327.0, i64 %.03022045
  %i.zf = call i64 @llvm.umin.i64(i64 %i.yu, i64 %i.xk) ; 2 uses
  %i.zg = getelementptr i8, ptr %.sroa.01327.0, i64 %.03022045
  %i.zh = getelementptr i8, ptr %i.zg, i64 %i.zf
  %i.zi = getelementptr i8, ptr %i.zh, i64 1
  %i.zj = mul nuw i64 %i.yd, %i.yr                ; 2 uses
  %i.zk = add i64 %i.et, %i.zj
  %i.zl = mul i64 %i.zk, %i.yo
  %gep3411 = getelementptr i8, ptr %invariant.gep, i64 %i.zl
  %i.zm = add i64 %i.zf, %i.et
  %i.zn = add i64 %i.zm, %i.zj
  %i.zo = mul i64 %i.zn, %i.yo
  %i.zp = getelementptr i8, ptr %30, i64 %i.zo
  %bound03021 = icmp ult ptr %i.ze, %i.zp
  %bound13022 = icmp ult ptr %gep3411, %i.zi
  %found.conflict3023 = and i1 %bound03021, %bound13022
  br i1 %found.conflict3023, label %scalar.ph3018.preheader, label %vector.ph3024

vector.ph3024:                                    ; preds = %vector.memcheck3020
  %i.zq = and i64 %i.yw, 15                       ; 2 uses
  %i.zr = icmp eq i64 %i.zq, 0
  %i.zs = select i1 %i.zr, i64 16, i64 %i.zq
  %n.vec3025 = sub i64 %i.yw, %i.zs               ; 3 uses
  %i.zt = trunc i64 %n.vec3025 to i32
  %i.zu = add i32 %i.ex, %i.zt
  %i.zv = add i64 %.03022045, %n.vec3025
  %i.zw = getelementptr i8, ptr %.sroa.01327.0, i64 %.03022045
  br label %vector.body3026

vector.body3026:                                  ; preds = %vector.body3026, %vector.ph3024
  %index3027 = phi i64 [ 0, %vector.ph3024 ], [ %index.next3028, %vector.body3026 ] ; 3 uses
  %i.zx = trunc i64 %index3027 to i32
  %i.zy = add i32 %i.ex, %i.zx                    ; 16 uses
  %i.zz = or disjoint i32 %i.zy, 1
  %i.aaa = or disjoint i32 %i.zy, 2
  %i.aab = or disjoint i32 %i.zy, 3
  %i.aac = or disjoint i32 %i.zy, 4
  %i.aad = or disjoint i32 %i.zy, 5
  %i.aae = or disjoint i32 %i.zy, 6
  %i.aaf = or disjoint i32 %i.zy, 7
  %i.aag = or disjoint i32 %i.zy, 8
  %i.aah = or disjoint i32 %i.zy, 9
  %i.aai = or disjoint i32 %i.zy, 10
  %i.aaj = or disjoint i32 %i.zy, 11
  %i.aak = or disjoint i32 %i.zy, 12
  %i.aal = or disjoint i32 %i.zy, 13
  %i.aam = or disjoint i32 %i.zy, 14
  %i.aan = or disjoint i32 %i.zy, 15
  %i.aao = zext i32 %i.zy to i64
  %i.aap = zext i32 %i.zz to i64
  %i.aaq = zext i32 %i.aaa to i64
  %i.aar = zext i32 %i.aab to i64
  %i.aas = zext i32 %i.aac to i64
  %i.aat = zext i32 %i.aad to i64
  %i.aau = zext i32 %i.aae to i64
  %i.aav = zext i32 %i.aaf to i64
  %i.aaw = zext i32 %i.aag to i64
  %i.aax = zext i32 %i.aah to i64
  %i.aay = zext i32 %i.aai to i64
  %i.aaz = zext i32 %i.aaj to i64
  %i.aba = zext i32 %i.aak to i64
  %i.abb = zext i32 %i.aal to i64
  %i.abc = zext i32 %i.aam to i64
  %i.abd = zext i32 %i.aan to i64
  %i.abe = mul nuw nsw i64 %i.yo, %i.aao
  %i.abf = mul nuw nsw i64 %i.yo, %i.aap
  %i.abg = mul nuw nsw i64 %i.yo, %i.aaq
  %i.abh = mul nuw nsw i64 %i.yo, %i.aar
  %i.abi = mul nuw nsw i64 %i.yo, %i.aas
  %i.abj = mul nuw nsw i64 %i.yo, %i.aat
  %i.abk = mul nuw nsw i64 %i.yo, %i.aau
  %i.abl = mul nuw nsw i64 %i.yo, %i.aav
  %i.abm = mul nuw nsw i64 %i.yo, %i.aaw
  %i.abn = mul nuw nsw i64 %i.yo, %i.aax
  %i.abo = mul nuw nsw i64 %i.yo, %i.aay
  %i.abp = mul nuw nsw i64 %i.yo, %i.aaz
  %i.abq = mul nuw nsw i64 %i.yo, %i.aba
  %i.abr = mul nuw nsw i64 %i.yo, %i.abb
  %i.abs = mul nuw nsw i64 %i.yo, %i.abc
  %i.abt = mul nuw nsw i64 %i.yo, %i.abd
  %i.abu = getelementptr inbounds nuw i8, ptr %gep2051, i64 %i.abe
  %i.abv = getelementptr inbounds nuw i8, ptr %gep2051, i64 %i.abf
  %i.abw = getelementptr inbounds nuw i8, ptr %gep2051, i64 %i.abg
  %i.abx = getelementptr inbounds nuw i8, ptr %gep2051, i64 %i.abh
  %i.aby = getelementptr inbounds nuw i8, ptr %gep2051, i64 %i.abi
  %i.abz = getelementptr inbounds nuw i8, ptr %gep2051, i64 %i.abj
  %i.aca = getelementptr inbounds nuw i8, ptr %gep2051, i64 %i.abk
  %i.acb = getelementptr inbounds nuw i8, ptr %gep2051, i64 %i.abl
  %i.acc = getelementptr inbounds nuw i8, ptr %gep2051, i64 %i.abm
  %i.acd = getelementptr inbounds nuw i8, ptr %gep2051, i64 %i.abn
  %i.ace = getelementptr inbounds nuw i8, ptr %gep2051, i64 %i.abo
  %i.acf = getelementptr inbounds nuw i8, ptr %gep2051, i64 %i.abp
  %i.acg = getelementptr inbounds nuw i8, ptr %gep2051, i64 %i.abq
  %i.ach = getelementptr inbounds nuw i8, ptr %gep2051, i64 %i.abr
  %i.aci = getelementptr inbounds nuw i8, ptr %gep2051, i64 %i.abs
  %i.acj = getelementptr inbounds nuw i8, ptr %gep2051, i64 %i.abt
  %i.ack = load i8, ptr %i.abu, align 1, !tbaa !152, !alias.scope !504
  %i.acl = load i8, ptr %i.abv, align 1, !tbaa !152, !alias.scope !504
  %i.acm = load i8, ptr %i.abw, align 1, !tbaa !152, !alias.scope !504
  %i.acn = load i8, ptr %i.abx, align 1, !tbaa !152, !alias.scope !504
  %i.aco = load i8, ptr %i.aby, align 1, !tbaa !152, !alias.scope !504
  %i.acp = load i8, ptr %i.abz, align 1, !tbaa !152, !alias.scope !504
  %i.acq = load i8, ptr %i.aca, align 1, !tbaa !152, !alias.scope !504
  %i.acr = load i8, ptr %i.acb, align 1, !tbaa !152, !alias.scope !504
  %i.acs = load i8, ptr %i.acc, align 1, !tbaa !152, !alias.scope !504
  %i.act = load i8, ptr %i.acd, align 1, !tbaa !152, !alias.scope !504
  %i.acu = load i8, ptr %i.ace, align 1, !tbaa !152, !alias.scope !504
  %i.acv = load i8, ptr %i.acf, align 1, !tbaa !152, !alias.scope !504
  %i.acw = load i8, ptr %i.acg, align 1, !tbaa !152, !alias.scope !504
  %i.acx = load i8, ptr %i.ach, align 1, !tbaa !152, !alias.scope !504
  %i.acy = load i8, ptr %i.aci, align 1, !tbaa !152, !alias.scope !504
  %i.acz = load i8, ptr %i.acj, align 1, !tbaa !152, !alias.scope !504
  %i.ada = insertelement <16 x i8> poison, i8 %i.ack, i64 0
  %i.adb = insertelement <16 x i8> %i.ada, i8 %i.acl, i64 1
  %i.adc = insertelement <16 x i8> %i.adb, i8 %i.acm, i64 2
  %i.add = insertelement <16 x i8> %i.adc, i8 %i.acn, i64 3
  %i.ade = insertelement <16 x i8> %i.add, i8 %i.aco, i64 4
  %i.adf = insertelement <16 x i8> %i.ade, i8 %i.acp, i64 5
  %i.adg = insertelement <16 x i8> %i.adf, i8 %i.acq, i64 6
  %i.adh = insertelement <16 x i8> %i.adg, i8 %i.acr, i64 7
  %i.adi = insertelement <16 x i8> %i.adh, i8 %i.acs, i64 8
  %i.adj = insertelement <16 x i8> %i.adi, i8 %i.act, i64 9
  %i.adk = insertelement <16 x i8> %i.adj, i8 %i.acu, i64 10
  %i.adl = insertelement <16 x i8> %i.adk, i8 %i.acv, i64 11
  %i.adm = insertelement <16 x i8> %i.adl, i8 %i.acw, i64 12
  %i.adn = insertelement <16 x i8> %i.adm, i8 %i.acx, i64 13
  %i.ado = insertelement <16 x i8> %i.adn, i8 %i.acy, i64 14
  %i.adp = insertelement <16 x i8> %i.ado, i8 %i.acz, i64 15
  %i.adq = getelementptr i8, ptr %i.zw, i64 %index3027
  store <16 x i8> %i.adp, ptr %i.adq, align 1, !tbaa !152, !alias.scope !505, !noalias !504
  %index.next3028 = add nuw i64 %index3027, 16    ; 2 uses
  %i.adr = icmp eq i64 %index.next3028, %n.vec3025
  br i1 %i.adr, label %scalar.ph3018.preheader, label %vector.body3026, !llvm.loop !446

scalar.ph3018.preheader:                          ; preds = %vector.body3026, %vector.memcheck3020, %vector.scevcheck3004, %.lr.ph2940
  %storemerge47620402939.ph = phi i32 [ %i.ex, %vector.memcheck3020 ], [ %i.ex, %vector.scevcheck3004 ], [ %i.ex, %.lr.ph2940 ], [ %i.zu, %vector.body3026 ]
  %.130320412938.ph = phi i64 [ %.03022045, %vector.memcheck3020 ], [ %.03022045, %vector.scevcheck3004 ], [ %.03022045, %.lr.ph2940 ], [ %i.zv, %vector.body3026 ]
  br label %scalar.ph3018

bb.ce:                                            ; preds = %scalar.ph3018
  %exitcond.not = icmp eq i64 %i.aev, %umax
  br i1 %exitcond.not, label %.lr.ph2042._crit_edge, label %scalar.ph3018, !llvm.loop !447

.lr.ph2042._crit_edge:                            ; preds = %.lr.ph2042, %bb.ce
  %storemerge4762040.lcssa = phi i32 [ %i.aex, %bb.ce ], [ %i.ex, %.lr.ph2042 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %20)
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #29, !noalias !506
  store i32 %storemerge4762040.lcssa, ptr %19, align 16, !tbaa !152, !alias.scope !507, !noalias !506
  store i32 %storemerge2044, ptr %i.bg, align 16, !tbaa !152, !alias.scope !507, !noalias !506
  call void @llvm.experimental.noalias.scope.decl(metadata !508)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29, !noalias !508
  store i64 0, ptr %i.bj, align 8, !noalias !508
  store ptr @_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.bi, align 8, !tbaa !218, !noalias !508
  store ptr %i.bk, ptr %8, align 8, !tbaa !219, !noalias !508
  store i64 500, ptr %i.bh, align 8, !tbaa !220, !noalias !508
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29, !noalias !508
  store ptr @.str.28, ptr %3, align 8, !tbaa !221, !noalias !508
  store i64 28, ptr %.sroa.2.0..sroa_idx.i16.i1044, align 8, !tbaa !222, !noalias !508
  store i32 0, ptr %i.bl, align 8, !tbaa !225, !noalias !508
  store ptr %8, ptr %i.bm, align 8, !tbaa !227, !noalias !508
  store i64 34, ptr %i.bn, align 8, !tbaa !229, !noalias !508
  store ptr %19, ptr %.sroa.2.0..sroa_idx.i17.i1045, align 8, !tbaa !152, !noalias !508
  store ptr null, ptr %i.bo, align 8, !tbaa !230, !noalias !508
  invoke void @_ZN3fmt3v126detail19parse_format_stringIcNS1_14format_handlerIcEEEEvNS0_17basic_string_viewIT_EEOT0_(ptr nonnull @.str.28, i64 28, ptr noundef nonnull align 8 dereferenceable(56) %3)
          to label %.noexc1050 unwind label %.loopexit.split-lp1746.loopexit.split-lp

.noexc1050:                                       ; preds = %.lr.ph2042._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29, !noalias !508
  call void @llvm.experimental.noalias.scope.decl(metadata !509)
  %i.ads = load i64, ptr %i.bj, align 8, !tbaa !231, !noalias !510 ; 6 uses
  %i.adt = icmp ult i64 %i.ads, 4611686018427387903
  call void @llvm.assume(i1 %i.adt)
  %i.adu = load ptr, ptr %8, align 8, !tbaa !219, !noalias !510 ; 3 uses
  store ptr %i.bp, ptr %21, align 8, !tbaa !148, !alias.scope !510
  %i.adv = icmp eq ptr %i.adu, null
  %i.adw = icmp ne i64 %i.ads, 0
  %or.cond.i.i.i944 = and i1 %i.adw, %i.adv
  br i1 %or.cond.i.i.i944, label %.noexc.i.i949, label %bb.cf

.noexc.i.i949:                                    ; preds = %.noexc1050
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.75) #32
          to label %.noexc.i950 unwind label %.loopexit.split-lp1746.loopexit.split-lp

.noexc.i950:                                      ; preds = %.noexc.i.i949
  unreachable

bb.cf:                                            ; preds = %.noexc1050
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #29, !noalias !510
  store i64 %i.ads, ptr %i.c, align 8, !tbaa !222, !noalias !510
  %i.adx = icmp samesign ugt i64 %i.ads, 15
  br i1 %i.adx, label %.noexc.i.i.i947, label %._crit_edge.i.i.i.i945

.noexc.i.i.i947:                                  ; preds = %bb.cf
  %i.ady = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc7.i948 unwind label %.loopexit.split-lp1746.loopexit.split-lp ; 2 uses

.noexc7.i948:                                     ; preds = %.noexc.i.i.i947
  store ptr %i.ady, ptr %21, align 8, !tbaa !153, !alias.scope !510
  %i.adz = load i64, ptr %i.c, align 8, !tbaa !222, !noalias !510
  store i64 %i.adz, ptr %i.bp, align 8, !tbaa !152, !alias.scope !510
  br label %._crit_edge.i.i.i.i945

._crit_edge.i.i.i.i945:                           ; preds = %.noexc7.i948, %bb.cf
  %i.aea = phi ptr [ %i.ady, %.noexc7.i948 ], [ %i.bp, %bb.cf ] ; 2 uses
  switch i64 %i.ads, label %bb.ch [
    i64 1, label %bb.cg
    i64 0, label %bb.ci
  ]

bb.cg:                                            ; preds = %._crit_edge.i.i.i.i945
  %i.aeb = load i8, ptr %i.adu, align 1, !tbaa !152
  store i8 %i.aeb, ptr %i.aea, align 1, !tbaa !152
end_hunk_0
begin_hunk_1_@_ZN11OpenImageIO4v3_19IffOutput5closeEv:bb.a
  %.not.i.i.i825 = icmp eq i8 %i.ark, 0
  %i.arl = load i8, ptr %i.ag, align 1
  %i.arm = lshr i8 %i.arl, 3
  %narrow.i.i.i826 = select i1 %.not.i.i.i825, i8 0, i8 %i.arm
  %i.arn = zext nneg i8 %narrow.i.i.i826 to i64
  %i.aro = add nuw nsw i64 %i.arj, %i.arn
  %i.arp = zext i32 %.02892120 to i64
  %i.arq = mul nuw i64 %i.ard, %i.arp
  %i.arr = mul i64 %i.arq, %i.aro
  %i.ars = getelementptr inbounds nuw i8, ptr %i.arb, i64 %i.arr
  br label %bb.fn

._crit_edge2116:                                  ; preds = %bb.fn
  %i.art = add i32 %.02892120, 1                  ; 2 uses
  %.not532 = icmp ugt i32 %i.art, %i.fb
  br i1 %.not532, label %._crit_edge2122.split, label %.lr.ph2115, !llvm.loop !470

bb.fn:                                            ; preds = %.lr.ph2115, %bb.fn
  %.02882113 = phi i32 [ %i.ex, %.lr.ph2115 ], [ %i.asl, %bb.fn ] ; 2 uses
  %.12912112 = phi ptr [ %.02902119, %.lr.ph2115 ], [ %i.ask, %bb.fn ] ; 2 uses
  %i.aru = load i8, ptr %i.w, align 8, !tbaa !205
  %i.arv = lshr i8 %i.aru, 3
  %i.arw = zext nneg i8 %i.arv to i64
  %i.arx = load i8, ptr %i.aa, align 1, !tbaa !206
  %i.ary = zext i8 %i.arx to i64
  %i.arz = mul nuw nsw i64 %i.arw, %i.ary         ; 2 uses
  %i.asa = load i8, ptr %i.ae, align 8, !tbaa !207
  %.not.i.i827 = icmp eq i8 %i.asa, 0
  %i.asb = load i8, ptr %i.ag, align 1
  %i.asc = lshr i8 %i.asb, 3
  %narrow.i.i828 = select i1 %.not.i.i827, i8 0, i8 %i.asc
  %i.asd = zext nneg i8 %narrow.i.i828 to i64
  %i.ase = add nuw nsw i64 %i.arz, %i.asd
  %i.asf = zext i32 %.02882113 to i64
  %i.asg = mul nuw nsw i64 %i.ase, %i.asf
  %i.ash = getelementptr inbounds nuw i8, ptr %i.ars, i64 %i.asg
  %i.asi = getelementptr inbounds nuw i8, ptr %i.ash, i64 %i.arz
  %i.asj = getelementptr inbounds nuw i8, ptr %i.asi, i64 %indvars.iv2398
  %.0.copyload = load i8, ptr %i.asj, align 1
  %i.ask = getelementptr inbounds nuw i8, ptr %.12912112, i64 1 ; 2 uses
  store i8 %.0.copyload, ptr %.12912112, align 1, !tbaa !152
  %i.asl = add i32 %.02882113, 1                  ; 2 uses
  %.not533 = icmp ugt i32 %i.asl, %i.ez
  br i1 %.not533, label %._crit_edge2116, label %bb.fn, !llvm.loop !471

.loopexit:                                        ; preds = %bb.fl, %._crit_edge2122.split
  %.0.lcssa.i787 = phi ptr [ %i.apb, %._crit_edge2122.split ], [ %.1.i794, %bb.fl ]
  %i.asm = ptrtoint ptr %.0.lcssa.i787 to i64
  %i.asn = ptrtoint ptr %i.apb to i64
  %i.aso = sub i64 %i.asm, %i.asn
  %i.asp = trunc i64 %i.aso to i32
  %i.asq = add i32 %.02932124, %i.asp             ; 2 uses
  %.not.i.i.i832 = icmp eq ptr %.sroa.01261.0, null
  br i1 %.not.i.i.i832, label %_ZNSt6vectorIhSaIhEED2Ev.exit834, label %bb.fo

bb.fo:                                            ; preds = %.loopexit
  %i.asr = ptrtoint ptr %.sroa.13.0 to i64
  %i.ass = sub i64 %i.asr, %i.apd
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.01261.0, i64 noundef %i.ass) #30
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit834

_ZNSt6vectorIhSaIhEED2Ev.exit834:                 ; preds = %.loopexit, %bb.fo
  %indvars.iv.next2399 = add nsw i64 %indvars.iv2398, -1 ; 2 uses
  %i.ast = and i64 %indvars.iv.next2399, 2147483648
  %i.asu = icmp eq i64 %i.ast, 0
  br i1 %i.asu, label %bb.ey, label %._crit_edge2127, !llvm.loop !472

bb.fp:                                            ; preds = %._crit_edge2127
  %i.asv = zext i32 %.0293.lcssa to i64           ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.sroa.01281.4, ptr align 1 %.sroa.01267.2, i64 %i.asv, i1 false)
  %i.asw = add i32 %.0293.lcssa, 8                ; 4 uses
  %i.asx = and i32 %.0293.lcssa, 3                ; 2 uses
  %.not.i835 = icmp eq i32 %i.asx, 0              ; 2 uses
  %i.asy = sub nuw nsw i32 4, %i.asx              ; 3 uses
  %i.asz = select i1 %.not.i835, i32 0, i32 %i.asy ; 2 uses
  %.0.i836 = add i32 %i.asz, %i.asw
  %i.ata = icmp ugt i32 %.0.i836, %i.asw
  br i1 %i.ata, label %bb.fq, label %.loopexit1742

bb.fq:                                            ; preds = %bb.fp
  %i.atb = ptrtoint ptr %.sroa.27.4 to i64
  %i.atc = ptrtoint ptr %.sroa.01281.4 to i64
  %i.atd = sub i64 %i.atb, %i.atc                 ; 7 uses
  %i.ate = add i32 %i.asz, %.0293.lcssa
  %i.atf = zext i32 %i.ate to i64                 ; 2 uses
  %i.atg = icmp ult i64 %i.atd, %i.atf
  br i1 %i.atg, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i1012, label %_ZNSt6vectorIhSaIhEE6resizeEm.exit840

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i1012: ; preds = %bb.fq
  %i.ath = sub nuw nsw i64 %i.atf, %i.atd         ; 2 uses
  %.sroa.speculated.i.i1013 = call i64 @llvm.umax.i64(i64 %i.atd, i64 %i.ath)
  %i.ati = add nuw nsw i64 %.sroa.speculated.i.i1013, %i.atd ; 2 uses
  %i.atj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ati) #31
          to label %.noexc1020 unwind label %bb.fu ; 4 uses

.noexc1020:                                       ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i1012
  %i.atk = getelementptr inbounds nuw i8, ptr %i.atj, i64 %i.atd ; 2 uses
  store i8 0, ptr %i.atk, align 1, !tbaa !152
  %i.atl = add nsw i64 %i.ath, -1                 ; 2 uses
  %i.atm = icmp eq i64 %i.atl, 0
  br i1 %i.atm, label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31.i1014, label %bb.fr

bb.fr:                                            ; preds = %.noexc1020
  %i.atn = getelementptr inbounds nuw i8, ptr %i.atk, i64 1
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.atn, i8 0, i64 %i.atl, i1 false)
  br label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31.i1014

_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31.i1014: ; preds = %bb.fr, %.noexc1020
  %.not35.i1015 = icmp eq ptr %.sroa.27.4, %.sroa.01281.4
  br i1 %.not35.i1015, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i1016, label %bb.fs

bb.fs:                                            ; preds = %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31.i1014
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.atj, ptr align 1 %.sroa.01281.4, i64 %i.atd, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i1016

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i1016: ; preds = %bb.fs, %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31.i1014
  %.not.i33.i1017 = icmp eq ptr %.sroa.01281.4, null
  br i1 %.not.i33.i1017, label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34.i1018, label %bb.ft

bb.ft:                                            ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i1016
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.01281.4, i64 noundef %i.atd) #30
  br label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34.i1018

_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34.i1018: ; preds = %bb.ft, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i1016
  %i.ato = getelementptr inbounds nuw i8, ptr %i.atj, i64 %i.ati
  br label %_ZNSt6vectorIhSaIhEE6resizeEm.exit840

bb.fu:                                            ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i1012, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i998
  %.sroa.01267.0 = phi ptr [ null, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i998 ], [ %.sroa.01267.2, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i1012 ]
  %.sroa.18.0 = phi ptr [ null, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i998 ], [ %.sroa.12.0, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i1012 ]
  %i.atp = landingpad { ptr, i32 }
          cleanup
  br label %bb.fv

_ZNSt6vectorIhSaIhEE6resizeEm.exit840:            ; preds = %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34.i1018, %bb.fq
  %.sroa.01281.0 = phi ptr [ %.sroa.01281.4, %bb.fq ], [ %i.atj, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34.i1018 ] ; 3 uses
  %.sroa.27.0 = phi ptr [ %.sroa.27.4, %bb.fq ], [ %i.ato, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34.i1018 ] ; 2 uses
  br i1 %.not.i835, label %.loopexit1742, label %.lr.ph2152.preheader

.lr.ph2152.preheader:                             ; preds = %_ZNSt6vectorIhSaIhEE6resizeEm.exit840
  %i.atq = getelementptr i8, ptr %.sroa.01281.0, i64 %i.asv
  %umax2409 = zext nneg i32 %i.asy to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.atq, i8 0, i64 range(i64 0, 8) %umax2409, i1 false), !tbaa !152
  %i.atr = add i32 %.0293.lcssa, %i.asy
  br label %.loopexit1742

.loopexit1742:                                    ; preds = %.lr.ph2152.preheader, %_ZNSt6vectorIhSaIhEE6resizeEm.exit840, %bb.fp
  %.sroa.01281.1 = phi ptr [ %.sroa.01281.4, %bb.fp ], [ %.sroa.01281.0, %_ZNSt6vectorIhSaIhEE6resizeEm.exit840 ], [ %.sroa.01281.0, %.lr.ph2152.preheader ] ; 2 uses
  %.sroa.27.1 = phi ptr [ %.sroa.27.4, %bb.fp ], [ %.sroa.27.0, %_ZNSt6vectorIhSaIhEE6resizeEm.exit840 ], [ %.sroa.27.0, %.lr.ph2152.preheader ] ; 2 uses
  %.2299 = phi i32 [ %.0293.lcssa, %bb.fp ], [ %.0293.lcssa, %_ZNSt6vectorIhSaIhEE6resizeEm.exit840 ], [ %i.atr, %.lr.ph2152.preheader ] ; 2 uses
  %.not.i.i.i841 = icmp eq ptr %.sroa.01267.2, null
  br i1 %.not.i.i.i841, label %.thread1687, label %.split

.thread1709:                                      ; preds = %._crit_edge2127
  %.not.i.i.i8411716 = icmp eq ptr %.sroa.01267.2, null
  br i1 %.not.i.i.i8411716, label %_ZNSt6vectorIhSaIhEED2Ev.exit843.thread, label %.split.thread

.split.thread:                                    ; preds = %.thread1709
  %i.ats = ptrtoint ptr %.sroa.12.0 to i64
  %i.att = ptrtoint ptr %.sroa.01267.2 to i64
  %i.atu = sub i64 %i.ats, %i.att
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.01267.2, i64 noundef %i.atu) #30
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit843.thread

.split:                                           ; preds = %.loopexit1742
  %i.atv = ptrtoint ptr %.sroa.12.0 to i64
  %i.atw = ptrtoint ptr %.sroa.01267.2 to i64
  %i.atx = sub i64 %i.atv, %i.atw
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.01267.2, i64 noundef %i.atx) #30
  br label %.thread1687

bb.fv:                                            ; preds = %bb.fm, %bb.fu
  %.sroa.01267.1 = phi ptr [ %.sroa.01267.0, %bb.fu ], [ %.sroa.01267.2, %bb.fm ] ; 3 uses
  %.sroa.18.1 = phi ptr [ %.sroa.18.0, %bb.fu ], [ %.sroa.12.0, %bb.fm ]
  %.pn534.pn.pn.pn = phi { ptr, i32 } [ %i.atp, %bb.fu ], [ %i.ara, %bb.fm ] ; 2 uses
  %.not.i.i.i844 = icmp eq ptr %.sroa.01267.1, null
  br i1 %.not.i.i.i844, label %_ZNSt6vectorIhSaIhEED2Ev.exit846, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  %i.aty = ptrtoint ptr %.sroa.18.1 to i64
  %i.atz = ptrtoint ptr %.sroa.01267.1 to i64
  %i.aua = sub i64 %i.aty, %i.atz
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.01267.1, i64 noundef %i.aua) #30
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit846

_ZNSt6vectorIhSaIhEED2Ev.exit843.thread:          ; preds = %.thread1709, %.split.thread, %_ZNSt6vectorIhSaIhEEC2EmRKhRKS0_.exit
  %i.aub = ptrtoint ptr %.sroa.27.4 to i64
  %i.auc = ptrtoint ptr %.sroa.01281.4 to i64
  %i.aud = sub i64 %i.aub, %i.auc
  %.not5242144 = icmp ugt i32 %i.eo, %i.fb
  br i1 %.not5242144, label %.thread1687, label %.lr.ph2148

.lr.ph2148:                                       ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit843.thread
  %i.aue = load ptr, ptr %i.s, align 8, !tbaa !155 ; 3 uses
  %i.auf = load i32, ptr %i.al, align 4, !tbaa !212
  %i.aug = load i8, ptr %i.w, align 8, !tbaa !205
  %i.auh = lshr i8 %i.aug, 3
  %i.aui = zext nneg i8 %i.auh to i64
  %i.auj = load i8, ptr %i.aa, align 1, !tbaa !206
  %i.auk = zext i8 %i.auj to i64
  %i.aul = mul nuw nsw i64 %i.aui, %i.auk         ; 4 uses
  %i.aum = load i8, ptr %i.ae, align 8, !tbaa !207 ; 2 uses
  %.not.i.i847 = icmp eq i8 %i.aum, 0
  %i.aun = load i8, ptr %i.ag, align 1            ; 2 uses
  %i.auo = lshr i8 %i.aun, 3
  %narrow.i.i848 = select i1 %.not.i.i847, i8 0, i8 %i.auo
  %i.aup = zext nneg i8 %narrow.i.i848 to i64
  %i.auq = add nuw nsw i64 %i.aul, %i.aup         ; 3 uses
  %.not5262136 = icmp ugt i32 %i.ex, %i.ez
  %.not.i849 = icmp eq i8 %i.aum, 0
  %i.aur = lshr i8 %i.aun, 3
  %narrow.i850 = select i1 %.not.i849, i8 0, i8 %i.aur
  %narrow.i850.fr = freeze i8 %narrow.i850        ; 2 uses
  %i.aus = zext i8 %narrow.i850.fr to i32         ; 2 uses
  %i.aut = icmp eq i8 %narrow.i850.fr, 0
  %.02129 = add nsw i32 %i.aus, -1
  %i.auu = zext i32 %.02129 to i64                ; 7 uses
  %invariant.gep2741 = getelementptr inbounds nuw i8, ptr %i.aue, i64 %i.aul
  %brmerge2743 = or i1 %.not5262136, %i.aut
  %31 = getelementptr i8, ptr %i.aue, i64 %i.aul
  %32 = getelementptr i8, ptr %31, i64 %i.auu
  %33 = getelementptr i8, ptr %i.aue, i64 %i.aul
  %34 = getelementptr i8, ptr %33, i64 1
  %35 = getelementptr i8, ptr %34, i64 %i.auu
  br label %bb.fx

bb.fx:                                            ; preds = %.lr.ph2148, %._crit_edge2141
  %.02862147 = phi i64 [ 0, %.lr.ph2148 ], [ %.1.lcssa, %._crit_edge2141 ] ; 2 uses
  %storemerge5232145 = phi i32 [ %i.eo, %.lr.ph2148 ], [ %i.axe, %._crit_edge2141 ] ; 3 uses
  br i1 %brmerge2743, label %._crit_edge2141, label %.lr.ph2133.preheader

.lr.ph2133.preheader:                             ; preds = %bb.fx
  %i.auv = mul i32 %i.auf, %storemerge5232145
  %i.auw = zext i32 %i.auv to i64                 ; 2 uses
  %i.aux = mul nuw nsw i64 %i.auq, %i.auw
  %gep2742 = getelementptr inbounds nuw i8, ptr %invariant.gep2741, i64 %i.aux
  br label %.lr.ph2133

.lr.ph2133:                                       ; preds = %.lr.ph2133.preheader, %._crit_edge2134
  %.12138 = phi i64 [ %i.axb, %._crit_edge2134 ], [ %.02862147, %.lr.ph2133.preheader ] ; 9 uses
  %storemerge5252137 = phi i32 [ %i.axd, %._crit_edge2134 ], [ %i.ex, %.lr.ph2133.preheader ] ; 3 uses
  %i.auy = zext i32 %storemerge5252137 to i64     ; 2 uses
  %umax2406 = call i64 @llvm.umax.i64(i64 %.12138, i64 %i.aud) ; 2 uses
  %i.auz = trunc i64 %.12138 to i32
  %i.ava = add i32 %i.aus, %i.auz
  %i.avb = mul nuw nsw i64 %i.auq, %i.auy
  %gep2740 = getelementptr inbounds nuw i8, ptr %gep2742, i64 %i.avb ; 2 uses
  %i.avc = sub i64 %umax2406, %.12138
  %i.avd = call i64 @llvm.umin.i64(i64 %i.auu, i64 %i.avc) ; 4 uses
  %i.ave = add nuw nsw i64 %i.avd, 1              ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.avd, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph2133
  %i.avf = getelementptr i8, ptr %.sroa.01281.4, i64 %.12138
  %i.avg = getelementptr i8, ptr %.sroa.01281.4, i64 %.12138
  %i.avh = getelementptr i8, ptr %i.avg, i64 %i.avd
  %i.avi = getelementptr i8, ptr %i.avh, i64 1
  %i.avj = add nuw nsw i64 %i.auw, %i.auy
  %i.avk = mul nuw nsw i64 %i.auq, %i.avj         ; 2 uses
  %i.avl = sub nsw i64 %i.avk, %i.avd
  %i.avm = getelementptr i8, ptr %32, i64 %i.avl
  %i.avn = getelementptr i8, ptr %35, i64 %i.avk
  %bound0 = icmp ult ptr %i.avf, %i.avn
  %bound1 = icmp ult ptr %i.avm, %i.avi
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.avo = and i64 %i.ave, 7                      ; 2 uses
  %i.avp = icmp eq i64 %i.avo, 0
  %i.avq = select i1 %i.avp, i64 8, i64 %i.avo
  %n.vec = sub nsw i64 %i.ave, %i.avq             ; 3 uses
  %i.avr = sub nsw i64 %i.auu, %n.vec
  %i.avs = add i64 %.12138, %n.vec
  %i.avt = getelementptr i8, ptr %.sroa.01281.4, i64 %.12138
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.avu = sub i64 %i.auu, %index
  %i.avv = getelementptr inbounds nuw i8, ptr %gep2740, i64 %i.avu
  %i.avw = getelementptr inbounds i8, ptr %i.avv, i64 -7
  %wide.load = load <8 x i8>, ptr %i.avw, align 1, !tbaa !152, !alias.scope !517
  %reverse = shufflevector <8 x i8> %wide.load, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.avx = getelementptr i8, ptr %i.avt, i64 %index
  store <8 x i8> %reverse, ptr %i.avx, align 1, !tbaa !152, !alias.scope !518, !noalias !517
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.avy = icmp eq i64 %index.next, %n.vec
  br i1 %i.avy, label %scalar.ph.preheader, label %vector.body, !llvm.loop !476

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %.lr.ph2133
  %indvars.iv2402.ph = phi i64 [ %i.auu, %vector.memcheck ], [ %i.auu, %.lr.ph2133 ], [ %i.avr, %vector.body ]
  %.22130.ph = phi i64 [ %.12138, %vector.memcheck ], [ %.12138, %.lr.ph2133 ], [ %i.avs, %vector.body ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.gh
  %indvars.iv2402 = phi i64 [ %indvars.iv.next2403, %bb.gh ], [ %indvars.iv2402.ph, %scalar.ph.preheader ] ; 2 uses
  %.22130 = phi i64 [ %i.axb, %bb.gh ], [ %.22130.ph, %scalar.ph.preheader ] ; 3 uses
  %exitcond2407.not = icmp eq i64 %.22130, %umax2406
  br i1 %exitcond2407.not, label %bb.fy, label %bb.gh

bb.fy:                                            ; preds = %scalar.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #29, !noalias !519
  store i32 %storemerge5252137, ptr %11, align 16, !tbaa !152, !alias.scope !520, !noalias !519
  store i32 %storemerge5232145, ptr %i.de, align 16, !tbaa !152, !alias.scope !520, !noalias !519
  call void @llvm.experimental.noalias.scope.decl(metadata !521)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29, !noalias !521
  store i64 0, ptr %i.dh, align 8, !noalias !521
  store ptr @_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.dg, align 8, !tbaa !218, !noalias !521
  store ptr %i.di, ptr %6, align 8, !tbaa !219, !noalias !521
  store i64 500, ptr %i.df, align 8, !tbaa !220, !noalias !521
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #29, !noalias !521
  store ptr @.str.31, ptr %1, align 8, !tbaa !221, !noalias !521
  store i64 70, ptr %.sroa.2.0..sroa_idx.i16.i1060, align 8, !tbaa !222, !noalias !521
  store i32 0, ptr %i.dj, align 8, !tbaa !225, !noalias !521
  store ptr %6, ptr %i.dk, align 8, !tbaa !227, !noalias !521
  store i64 34, ptr %i.dl, align 8, !tbaa !229, !noalias !521
  store ptr %11, ptr %.sroa.2.0..sroa_idx.i17.i1061, align 8, !tbaa !152, !noalias !521
  store ptr null, ptr %i.dm, align 8, !tbaa !230, !noalias !521
  invoke void @_ZN3fmt3v126detail19parse_format_stringIcNS1_14format_handlerIcEEEEvNS0_17basic_string_viewIT_EEOT0_(ptr nonnull @.str.31, i64 70, ptr noundef nonnull align 8 dereferenceable(56) %1)
          to label %.noexc1066 unwind label %.loopexit.split-lp1766.loopexit.split-lp

.noexc1066:                                       ; preds = %bb.fy
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29, !noalias !521
  call void @llvm.experimental.noalias.scope.decl(metadata !522)
  %i.avz = load i64, ptr %i.dh, align 8, !tbaa !231, !noalias !523 ; 6 uses
  %i.awa = icmp ult i64 %i.avz, 4611686018427387903
  call void @llvm.assume(i1 %i.awa)
  %i.awb = load ptr, ptr %6, align 8, !tbaa !219, !noalias !523 ; 3 uses
  store ptr %i.dn, ptr %13, align 8, !tbaa !148, !alias.scope !523
  %i.awc = icmp eq ptr %i.awb, null
  %i.awd = icmp ne i64 %i.avz, 0
  %or.cond.i.i.i1024 = and i1 %i.awd, %i.awc
  br i1 %or.cond.i.i.i1024, label %.noexc.i.i1029, label %bb.fz

.noexc.i.i1029:                                   ; preds = %.noexc1066
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.75) #32
          to label %.noexc.i1030 unwind label %.loopexit.split-lp1766.loopexit.split-lp

.noexc.i1030:                                     ; preds = %.noexc.i.i1029
  unreachable

bb.fz:                                            ; preds = %.noexc1066
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29, !noalias !523
  store i64 %i.avz, ptr %i.a, align 8, !tbaa !222, !noalias !523
  %i.awe = icmp samesign ugt i64 %i.avz, 15
  br i1 %i.awe, label %.noexc.i.i.i1027, label %._crit_edge.i.i.i.i1025

.noexc.i.i.i1027:                                 ; preds = %bb.fz
  %i.awf = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc7.i1028 unwind label %.loopexit.split-lp1766.loopexit.split-lp ; 2 uses

.noexc7.i1028:                                    ; preds = %.noexc.i.i.i1027
  store ptr %i.awf, ptr %13, align 8, !tbaa !153, !alias.scope !523
  %i.awg = load i64, ptr %i.a, align 8, !tbaa !222, !noalias !523
  store i64 %i.awg, ptr %i.dn, align 8, !tbaa !152, !alias.scope !523
  br label %._crit_edge.i.i.i.i1025

._crit_edge.i.i.i.i1025:                          ; preds = %.noexc7.i1028, %bb.fz
  %i.awh = phi ptr [ %i.awf, %.noexc7.i1028 ], [ %i.dn, %bb.fz ] ; 2 uses
  switch i64 %i.avz, label %bb.gb [
    i64 1, label %bb.ga
    i64 0, label %bb.gc
  ]

bb.ga:                                            ; preds = %._crit_edge.i.i.i.i1025
  %i.awi = load i8, ptr %i.awb, align 1, !tbaa !152
  store i8 %i.awi, ptr %i.awh, align 1, !tbaa !152
  br label %bb.gc

bb.gb:                                            ; preds = %._crit_edge.i.i.i.i1025
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.awh, ptr align 1 %i.awb, i64 %i.avz, i1 false)
  br label %bb.gc

bb.gc:                                            ; preds = %bb.gb, %bb.ga, %._crit_edge.i.i.i.i1025
  %i.awj = load i64, ptr %i.a, align 8, !tbaa !222, !noalias !523 ; 2 uses
  store i64 %i.awj, ptr %i.do, align 8, !tbaa !151, !alias.scope !523
  %i.awk = load ptr, ptr %13, align 8, !tbaa !153, !alias.scope !523
  %i.awl = getelementptr inbounds nuw i8, ptr %i.awk, i64 %i.awj
  store i8 0, ptr %i.awl, align 1, !tbaa !152
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29, !noalias !523
  %i.awm = load ptr, ptr %6, align 8, !tbaa !219, !noalias !521 ; 2 uses
  %.not.i.i.i1026 = icmp eq ptr %i.awm, %i.di
  br i1 %.not.i.i.i1026, label %.noexc858, label %bb.gd

bb.gd:                                            ; preds = %bb.gc
  call void @free(ptr noundef %i.awm) #29
  br label %.noexc858

.loopexit.split-lp1766.loopexit.split-lp:         ; preds = %bb.fy, %.noexc.i.i.i1027, %.noexc.i.i1029
  %lpad.loopexit.split-lp3049 = landingpad { ptr, i32 }
          cleanup
  %i.awn = load ptr, ptr %6, align 8, !tbaa !219, !noalias !521 ; 2 uses
  %.not.i.i8.i1022 = icmp eq ptr %i.awn, %i.di
  br i1 %.not.i.i8.i1022, label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit9.i1023, label %bb.ge

bb.ge:                                            ; preds = %.loopexit.split-lp1766.loopexit.split-lp
  call void @free(ptr noundef %i.awn) #29
  br label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit9.i1023

_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit9.i1023: ; preds = %bb.ge, %.loopexit.split-lp1766.loopexit.split-lp
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29, !noalias !521
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit846

.noexc858:                                        ; preds = %bb.gd, %bb.gc
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29, !noalias !521
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29, !noalias !519
  %i.awo = load ptr, ptr %13, align 8, !tbaa !153
  store ptr %i.awo, ptr %12, align 8, !tbaa !158
  %i.awp = load i64, ptr %i.do, align 8, !tbaa !151
  store i64 %i.awp, ptr %i.dp, align 8, !tbaa !159
  invoke void @_ZNK11OpenImageIO4v3_111ImageOutput12append_errorENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull dead_on_return %12)
          to label %bb.gf unwind label %bb.gg

bb.gf:                                            ; preds = %.noexc858
  %i.awq = load ptr, ptr %13, align 8, !tbaa !153 ; 2 uses
  %i.awr = icmp eq ptr %i.awq, %i.dn
  br i1 %i.awr, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i857, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i856

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i856: ; preds = %bb.gf
  %i.aws = load i64, ptr %i.dn, align 8, !tbaa !152
  %i.awt = add i64 %i.aws, 1
  call void @_ZdlPvm(ptr noundef %i.awq, i64 noundef %i.awt) #30
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i857

bb.gg:                                            ; preds = %.noexc858
  %i.awu = landingpad { ptr, i32 }
          cleanup
  %i.awv = load ptr, ptr %13, align 8, !tbaa !153 ; 2 uses
  %i.aww = icmp eq ptr %i.awv, %i.dn
  br i1 %i.aww, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i854, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i853

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i853: ; preds = %bb.gg
  %i.awx = load i64, ptr %i.dn, align 8, !tbaa !152
  %i.awy = add i64 %i.awx, 1
  call void @_ZdlPvm(ptr noundef %i.awv, i64 noundef %i.awy) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i854

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i854: ; preds = %bb.gg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i853
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #29
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit846

bb.gh:                                            ; preds = %scalar.ph
  %i.awz = getelementptr inbounds nuw i8, ptr %gep2740, i64 %indvars.iv2402
  %i.axa = load i8, ptr %i.awz, align 1, !tbaa !152
  %i.axb = add i64 %.22130, 1                     ; 4 uses
  %i.axc = getelementptr inbounds nuw i8, ptr %.sroa.01281.4, i64 %.22130
  store i8 %i.axa, ptr %i.axc, align 1, !tbaa !152
  %indvars.iv.next2403 = add nsw i64 %indvars.iv2402, -1
  %lftr.wideiv = trunc i64 %i.axb to i32
  %exitcond2408 = icmp eq i32 %i.ava, %lftr.wideiv
  br i1 %exitcond2408, label %._crit_edge2134, label %scalar.ph, !llvm.loop !485

._crit_edge2134:                                  ; preds = %bb.gh
  %i.axd = add i32 %storemerge5252137, 1          ; 2 uses
  %.not526 = icmp ugt i32 %i.axd, %i.ez
  br i1 %.not526, label %._crit_edge2141, label %.lr.ph2133, !llvm.loop !486

._crit_edge2141:                                  ; preds = %._crit_edge2134, %bb.fx
  %.1.lcssa = phi i64 [ %.02862147, %bb.fx ], [ %i.axb, %._crit_edge2134 ]
  %i.axe = add i32 %storemerge5232145, 1          ; 2 uses
  %.not524 = icmp ugt i32 %i.axe, %i.fb
end_hunk_1
