Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/cegis?download=true
inline.NumInlined: 2832
inline.NumDeleted: 941
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN4cvc58internal6theory11quantifiers5Cegis10initializeENS0_12NodeTemplateILb1EEES5_RKSt6vectorIS5_SaIS5_EE:bb.a
          to label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit232 unwind label %bb.fu

_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit232: ; preds = %bb.fo, %bb.fn, %bb.fj, %bb.fp
  %i.vu = load ptr, ptr %32, align 8, !tbaa !114  ; 3 uses
  %i.vv = load i64, ptr %i.vu, align 8            ; 3 uses
  %i.vw = and i64 %i.vv, 1152920405095219200
  %.not.i.i233 = icmp eq i64 %i.vw, 1152920405095219200
  br i1 %.not.i.i233, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit235, label %bb.fq, !prof !125

bb.fq:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit232
  %i.vx = add i64 %i.vv, 1152920405095219200
  %i.vy = and i64 %i.vx, 1152920405095219200      ; 2 uses
  %i.vz = and i64 %i.vv, -1152920405095219201
  %i.wa = or disjoint i64 %i.vy, %i.vz
  store i64 %i.wa, ptr %i.vu, align 8
  %i.wb = icmp eq i64 %i.vy, 0
  br i1 %i.wb, label %bb.fr, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit235, !prof !125

bb.fr:                                            ; preds = %bb.fq
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.vu)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit235 unwind label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  %i.wc = landingpad { ptr, i32 }
          catch ptr null
  %i.wd = extractvalue { ptr, i32 } %i.wc, 0
  call void @__clang_call_terminate(ptr %i.wd) #23
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit235: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit232, %bb.fq, %bb.fr
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #21
  br label %bb.fv

bb.ft:                                            ; preds = %bb.fi
  %i.we = landingpad { ptr, i32 }
          cleanup
  br label %.body224

bb.fu:                                            ; preds = %bb.fp, %bb.fm
  %i.wf = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %32) #21
  br label %.body224

.body224:                                         ; preds = %bb.ft, %.loopexit.split-lp.loopexit.split-lp.i218.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.fu
  %.pn76 = phi { ptr, i32 } [ %i.wf, %bb.fu ], [ %i.we, %bb.ft ], [ %lpad.loopexit.split-lp416, %.loopexit.split-lp.loopexit.split-lp.i218.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #21
  br label %bb.hw

bb.fv:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit235, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit214
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #21
  invoke void @_ZNK4cvc58internal12NodeTemplateILb1EE7getTypeEb(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::TypeNode") align 8 %33, ptr noundef nonnull align 8 dereferenceable(8) %28, i1 noundef zeroext false)
          to label %bb.fw unwind label %bb.gf

bb.fw:                                            ; preds = %bb.fv
  %i.wg = invoke noundef zeroext i1 @_ZNK4cvc58internal8TypeNode8isRegExpEv(ptr noundef nonnull align 8 dereferenceable(8) %33)
          to label %bb.fx unwind label %bb.gg

bb.fx:                                            ; preds = %bb.fw
  br i1 %i.wg, label %.thread301.thread, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.wh = load ptr, ptr %33, align 8, !tbaa !128
  %i.wi = getelementptr inbounds nuw i8, ptr %i.wh, i64 8
  %i.wj = load i64, ptr %i.wi, align 8
  %i.wk = and i64 %i.wj, 1023
  %i.wl = icmp eq i64 %i.wk, 27
  br i1 %i.wl, label %bb.fz, label %.thread301

bb.fz:                                            ; preds = %bb.fy
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #21
  invoke void @_ZNK4cvc58internal8TypeNode12getRangeTypeEv(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::TypeNode") align 8 %34, ptr noundef nonnull align 8 dereferenceable(8) %33)
          to label %bb.ga unwind label %bb.gh

bb.ga:                                            ; preds = %bb.fz
  %i.wm = invoke noundef zeroext i1 @_ZNK4cvc58internal8TypeNode8isRegExpEv(ptr noundef nonnull align 8 dereferenceable(8) %34)
          to label %bb.gb unwind label %bb.gi

bb.gb:                                            ; preds = %bb.ga
  %i.wn = load ptr, ptr %34, align 8, !tbaa !128  ; 3 uses
  %i.wo = load i64, ptr %i.wn, align 8            ; 3 uses
  %i.wp = and i64 %i.wo, 1152920405095219200
  %.not.i.i236 = icmp eq i64 %i.wp, 1152920405095219200
  br i1 %.not.i.i236, label %.critedge106, label %bb.gc, !prof !125

bb.gc:                                            ; preds = %bb.gb
  %i.wq = add i64 %i.wo, 1152920405095219200
  %i.wr = and i64 %i.wq, 1152920405095219200      ; 2 uses
  %i.ws = and i64 %i.wo, -1152920405095219201
  %i.wt = or disjoint i64 %i.wr, %i.ws
  store i64 %i.wt, ptr %i.wn, align 8
  %i.wu = icmp eq i64 %i.wr, 0
  br i1 %i.wu, label %bb.gd, label %.critedge106, !prof !125

bb.gd:                                            ; preds = %bb.gc
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.wn)
          to label %.critedge106 unwind label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  %i.wv = landingpad { ptr, i32 }
          catch ptr null
  %i.ww = extractvalue { ptr, i32 } %i.wv, 0
  call void @__clang_call_terminate(ptr %i.ww) #23
  unreachable

.critedge106:                                     ; preds = %bb.gd, %bb.gc, %bb.gb
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #21
  br i1 %i.wm, label %.thread301.thread, label %.thread301

.thread301.thread:                                ; preds = %bb.fx, %.critedge106
  store i8 0, ptr %i.mb, align 8, !tbaa !356
  br label %bb.gx

bb.gf:                                            ; preds = %bb.fv
  %i.wx = landingpad { ptr, i32 }
          cleanup
  br label %bb.hv

bb.gg:                                            ; preds = %bb.fw
  %i.wy = landingpad { ptr, i32 }
          cleanup
  br label %bb.hu

bb.gh:                                            ; preds = %bb.fz
  %i.wz = landingpad { ptr, i32 }
          cleanup
  br label %bb.gj

bb.gi:                                            ; preds = %bb.ga
  %i.xa = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal8TypeNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %34) #21
  br label %bb.gj

bb.gj:                                            ; preds = %bb.gh, %bb.gi
  %.pn78 = phi { ptr, i32 } [ %i.xa, %bb.gi ], [ %i.wz, %bb.gh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #21
  br label %bb.hu

.thread301:                                       ; preds = %bb.fy, %.critedge106
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #21
  call void @llvm.experimental.noalias.scope.decl(metadata !449)
  %i.xb = load ptr, ptr %1, align 8, !tbaa !114, !noalias !449 ; 2 uses
  %i.xc = getelementptr inbounds nuw i8, ptr %i.xb, i64 8
  %i.xd = load i64, ptr %i.xc, align 8, !noalias !449
  %i.xe = trunc i64 %i.xd to i32
  %i.xf = and i32 %i.xe, 1023                     ; 2 uses
  %i.xg = icmp eq i32 %i.xf, 1023
  %i.xh = select i1 %i.xg, i32 -1, i32 %i.xf
  %i.xi = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.xh)
          to label %.noexc240 unwind label %bb.hp

.noexc240:                                        ; preds = %.thread301
  %i.xj = icmp eq i32 %i.xi, 2
  %i.xk = getelementptr inbounds nuw i8, ptr %i.xb, i64 24
  %i.xl = zext i1 %i.xj to i64
  %i.xm = getelementptr inbounds nuw [8 x i8], ptr %i.xk, i64 %i.xl
  %i.xn = load ptr, ptr %i.xm, align 8, !tbaa !113, !noalias !449 ; 10 uses
  store ptr %i.xn, ptr %36, align 8, !tbaa !114, !alias.scope !449
  %i.xo = load i64, ptr %i.xn, align 8, !noalias !449 ; 3 uses
  %i.xp = lshr i64 %i.xo, 40
  %i.xq = trunc nuw nsw i64 %i.xp to i32
  %i.xr = and i32 %i.xq, 1048575                  ; 3 uses
  %i.xs = icmp samesign ult i32 %i.xr, 1048574
  br i1 %i.xs, label %bb.gk, label %bb.gl, !prof !129

bb.gk:                                            ; preds = %.noexc240
  %i.xt = add nuw nsw i32 %i.xr, 1
  %i.xu = zext nneg i32 %i.xt to i64
  %i.xv = shl nuw nsw i64 %i.xu, 40
  %i.xw = and i64 %i.xo, -1152920405095219201
  %i.xx = or i64 %i.xv, %i.xw
  store i64 %i.xx, ptr %i.xn, align 8, !noalias !449
  br label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit242

bb.gl:                                            ; preds = %.noexc240
  %i.xy = icmp eq i32 %i.xr, 1048574
  br i1 %i.xy, label %bb.gm, label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit242, !prof !125

bb.gm:                                            ; preds = %bb.gl
  %i.xz = or i64 %i.xo, 1152920405095219200
  store i64 %i.xz, ptr %i.xn, align 8, !noalias !449
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.xn)
          to label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit242 unwind label %bb.hp

_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit242: ; preds = %bb.gl, %bb.gk, %bb.gm
  call void @llvm.experimental.noalias.scope.decl(metadata !450)
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xn, i64 8
  %i.yb = load i64, ptr %i.ya, align 8, !noalias !450
  %i.yc = trunc i64 %i.yb to i32
  %i.yd = and i32 %i.yc, 1023                     ; 2 uses
  %i.ye = icmp eq i32 %i.yd, 1023
  %i.yf = select i1 %i.ye, i32 -1, i32 %i.yd
  %i.yg = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.yf)
          to label %.noexc244 unwind label %bb.hq

.noexc244:                                        ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit242
  %i.yh = icmp eq i32 %i.yg, 2
  %i.yi = zext i1 %i.yh to i64
  %spec.select.i.i243 = add nuw i64 %.037323, %i.yi
  %i.yj = getelementptr inbounds nuw i8, ptr %i.xn, i64 24
  %sext = shl i64 %spec.select.i.i243, 32
  %i.yk = ashr exact i64 %sext, 29
  %i.yl = getelementptr inbounds i8, ptr %i.yj, i64 %i.yk
  %i.ym = load ptr, ptr %i.yl, align 8, !tbaa !113, !noalias !450 ; 5 uses
  store ptr %i.ym, ptr %35, align 8, !tbaa !114, !alias.scope !450
  %i.yn = load i64, ptr %i.ym, align 8, !noalias !450 ; 3 uses
  %i.yo = lshr i64 %i.yn, 40
  %i.yp = trunc nuw nsw i64 %i.yo to i32
  %i.yq = and i32 %i.yp, 1048575                  ; 3 uses
  %i.yr = icmp samesign ult i32 %i.yq, 1048574
  br i1 %i.yr, label %bb.gn, label %bb.go, !prof !129

bb.gn:                                            ; preds = %.noexc244
  %i.ys = add nuw nsw i32 %i.yq, 1
  %i.yt = zext nneg i32 %i.ys to i64
  %i.yu = shl nuw nsw i64 %i.yt, 40
  %i.yv = and i64 %i.yn, -1152920405095219201
  %i.yw = or i64 %i.yu, %i.yv
  store i64 %i.yw, ptr %i.ym, align 8, !noalias !450
  br label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit246

bb.go:                                            ; preds = %.noexc244
  %i.yx = icmp eq i32 %i.yq, 1048574
  br i1 %i.yx, label %bb.gp, label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit246, !prof !125

bb.gp:                                            ; preds = %bb.go
  %i.yy = or i64 %i.yn, 1152920405095219200
  store i64 %i.yy, ptr %i.ym, align 8, !noalias !450
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ym)
          to label %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit246 unwind label %bb.hq

_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit246: ; preds = %bb.go, %bb.gn, %bb.gp
  invoke void @_ZN4cvc58internal4Subs3addERKNS0_12NodeTemplateILb1EEES5_(ptr noundef nonnull align 8 dereferenceable(56) %i.oe, ptr noundef nonnull align 8 dereferenceable(8) %35, ptr noundef nonnull align 8 dereferenceable(8) %28)
          to label %bb.gq unwind label %bb.hr

bb.gq:                                            ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EEixEi.exit246
  %i.yz = load ptr, ptr %35, align 8, !tbaa !114  ; 3 uses
  %i.za = load i64, ptr %i.yz, align 8            ; 3 uses
  %i.zb = and i64 %i.za, 1152920405095219200
  %.not.i.i247 = icmp eq i64 %i.zb, 1152920405095219200
  br i1 %.not.i.i247, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit249, label %bb.gr, !prof !125

bb.gr:                                            ; preds = %bb.gq
  %i.zc = add i64 %i.za, 1152920405095219200
  %i.zd = and i64 %i.zc, 1152920405095219200      ; 2 uses
  %i.ze = and i64 %i.za, -1152920405095219201
  %i.zf = or disjoint i64 %i.zd, %i.ze
  store i64 %i.zf, ptr %i.yz, align 8
  %i.zg = icmp eq i64 %i.zd, 0
  br i1 %i.zg, label %bb.gs, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit249, !prof !125

bb.gs:                                            ; preds = %bb.gr
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.yz)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit249 unwind label %bb.gt

bb.gt:                                            ; preds = %bb.gs
  %i.zh = landingpad { ptr, i32 }
          catch ptr null
  %i.zi = extractvalue { ptr, i32 } %i.zh, 0
  call void @__clang_call_terminate(ptr %i.zi) #23
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit249: ; preds = %bb.gq, %bb.gr, %bb.gs
  %i.zj = load i64, ptr %i.xn, align 8            ; 3 uses
  %i.zk = and i64 %i.zj, 1152920405095219200
  %.not.i.i250 = icmp eq i64 %i.zk, 1152920405095219200
  br i1 %.not.i.i250, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit252, label %bb.gu, !prof !125

bb.gu:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit249
  %i.zl = add i64 %i.zj, 1152920405095219200
  %i.zm = and i64 %i.zl, 1152920405095219200      ; 2 uses
  %i.zn = and i64 %i.zj, -1152920405095219201
  %i.zo = or disjoint i64 %i.zm, %i.zn
  store i64 %i.zo, ptr %i.xn, align 8
  %i.zp = icmp eq i64 %i.zm, 0
  br i1 %i.zp, label %bb.gv, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit252, !prof !125

bb.gv:                                            ; preds = %bb.gu
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.xn)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit252 unwind label %bb.gw

bb.gw:                                            ; preds = %bb.gv
  %i.zq = landingpad { ptr, i32 }
          catch ptr null
  %i.zr = extractvalue { ptr, i32 } %i.zq, 0
  call void @__clang_call_terminate(ptr %i.zr) #23
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit252: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit249, %bb.gu, %bb.gv
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #21
  br label %bb.gx

bb.gx:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit252, %.thread301.thread
  %i.zs = phi i1 [ false, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit252 ], [ true, %.thread301.thread ]
  %i.zt = load ptr, ptr %33, align 8, !tbaa !128  ; 3 uses
  %i.zu = load i64, ptr %i.zt, align 8            ; 3 uses
  %i.zv = and i64 %i.zu, 1152920405095219200
  %.not.i.i253 = icmp eq i64 %i.zv, 1152920405095219200
  br i1 %.not.i.i253, label %_ZN4cvc58internal8TypeNodeD2Ev.exit255, label %bb.gy, !prof !125

bb.gy:                                            ; preds = %bb.gx
  %i.zw = add i64 %i.zu, 1152920405095219200
  %i.zx = and i64 %i.zw, 1152920405095219200      ; 2 uses
  %i.zy = and i64 %i.zu, -1152920405095219201
  %i.zz = or disjoint i64 %i.zx, %i.zy
  store i64 %i.zz, ptr %i.zt, align 8
  %i.aaa = icmp eq i64 %i.zx, 0
  br i1 %i.aaa, label %bb.gz, label %_ZN4cvc58internal8TypeNodeD2Ev.exit255, !prof !125

bb.gz:                                            ; preds = %bb.gy
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.zt)
          to label %_ZN4cvc58internal8TypeNodeD2Ev.exit255 unwind label %bb.ha

bb.ha:                                            ; preds = %bb.gz
  %i.aab = landingpad { ptr, i32 }
          catch ptr null
  %i.aac = extractvalue { ptr, i32 } %i.aab, 0
  call void @__clang_call_terminate(ptr %i.aac) #23
  unreachable

_ZN4cvc58internal8TypeNodeD2Ev.exit255:           ; preds = %bb.gx, %bb.gy, %bb.gz
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #21
  %i.aad = load ptr, ptr %28, align 8, !tbaa !114 ; 3 uses
  %i.aae = load i64, ptr %i.aad, align 8          ; 3 uses
  %i.aaf = and i64 %i.aae, 1152920405095219200
  %.not.i.i256 = icmp eq i64 %i.aaf, 1152920405095219200
  br i1 %.not.i.i256, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit258, label %bb.hb, !prof !125

bb.hb:                                            ; preds = %_ZN4cvc58internal8TypeNodeD2Ev.exit255
  %i.aag = add i64 %i.aae, 1152920405095219200
  %i.aah = and i64 %i.aag, 1152920405095219200    ; 2 uses
  %i.aai = and i64 %i.aae, -1152920405095219201
  %i.aaj = or disjoint i64 %i.aah, %i.aai
  store i64 %i.aaj, ptr %i.aad, align 8
  %i.aak = icmp eq i64 %i.aah, 0
  br i1 %i.aak, label %bb.hc, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit258, !prof !125

bb.hc:                                            ; preds = %bb.hb
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.aad)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit258 unwind label %bb.hd

bb.hd:                                            ; preds = %bb.hc
  %i.aal = landingpad { ptr, i32 }
          catch ptr null
  %i.aam = extractvalue { ptr, i32 } %i.aal, 0
  call void @__clang_call_terminate(ptr %i.aam) #23
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit258: ; preds = %_ZN4cvc58internal8TypeNodeD2Ev.exit255, %bb.hb, %bb.hc
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #21
  %i.aan = load ptr, ptr %27, align 8, !tbaa !123 ; 3 uses
  %i.aao = load ptr, ptr %i.oc, align 8, !tbaa !124 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.aan, %i.aao
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i259

.lr.ph.i.i.i259:                                  ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit258, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.aaz, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i ], [ %i.aan, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit258 ] ; 2 uses
  %i.aap = load ptr, ptr %.05.i.i.i, align 8, !tbaa !114 ; 3 uses
  %i.aaq = load i64, ptr %i.aap, align 8          ; 3 uses
  %i.aar = and i64 %i.aaq, 1152920405095219200
  %.not.i.i.i.i.i.i = icmp eq i64 %i.aar, 1152920405095219200
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i, label %bb.he, !prof !125

bb.he:                                            ; preds = %.lr.ph.i.i.i259
  %i.aas = add i64 %i.aaq, 1152920405095219200
  %i.aat = and i64 %i.aas, 1152920405095219200    ; 2 uses
  %i.aau = and i64 %i.aaq, -1152920405095219201
  %i.aav = or disjoint i64 %i.aat, %i.aau
  store i64 %i.aav, ptr %i.aap, align 8
  %i.aaw = icmp eq i64 %i.aat, 0
  br i1 %i.aaw, label %bb.hf, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i, !prof !125

bb.hf:                                            ; preds = %bb.he
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.aap)
          to label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i unwind label %bb.hg

bb.hg:                                            ; preds = %bb.hf
  %i.aax = landingpad { ptr, i32 }
          catch ptr null
  %i.aay = extractvalue { ptr, i32 } %i.aax, 0
  call void @__clang_call_terminate(ptr %i.aay) #23
  unreachable

_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i: ; preds = %bb.hf, %bb.he, %.lr.ph.i.i.i259
  %i.aaz = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i260 = icmp eq ptr %i.aaz, %i.aao
  br i1 %.not.i.i.i260, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i259, !llvm.loop !0

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %27, align 8, !tbaa !123
  br label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit258
  %i.aba = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.aan, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit258 ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.aba, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit, label %bb.hh

bb.hh:                                            ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i
end_hunk_0
begin_hunk_1_@_ZN4cvc58internal6theory11quantifiers5Cegis24sampleAddRefinementLemmaERKSt6vectorINS0_12NodeTemplateILb1EEESaIS6_EESA_:bb.a
  store ptr %i.i, ptr %8, align 8, !tbaa !376, !noalias !542
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  store i64 1, ptr %i.j, align 8, !tbaa !377, !noalias !542
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false), !noalias !542
  store float 1.000000e+00, ptr %i.l, align 8, !tbaa !117, !noalias !542
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false), !noalias !542
  invoke void @_ZNK4cvc58internal12NodeTemplateILb1EE10substituteIN9__gnu_cxx17__normal_iteratorIPKS2_St6vectorIS2_SaIS2_EEEESB_EES2_T_SC_T0_SD_RSt13unordered_mapINS1_ILb0EEESF_St4hashISF_ESt8equal_toISF_ESaISt4pairIKSF_SF_EEE(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr %i.c, ptr %i.e, ptr %i.f, ptr %i.h, ptr noundef nonnull align 8 dereferenceable(56) %8)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !378, !noalias !542 ; 2 uses
  %.not5.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not5.i.i.i.i.i, label %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb0EEESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %.lr.ph.i.i.i.i.i
  %.06.i.i.i.i.i = phi ptr [ %i.o, %.lr.ph.i.i.i.i.i ], [ %i.n, %bb.b ] ; 2 uses
  %i.o = load ptr, ptr %.06.i.i.i.i.i, align 8, !tbaa !371 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i.i, i64 noundef 32) #24
  %.not.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb0EEESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !4

_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb0EEESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %bb.b
  %i.p = load ptr, ptr %8, align 8, !tbaa !376, !noalias !542
  %i.q = load i64, ptr %i.j, align 8, !tbaa !377, !noalias !542
  %i.r = shl i64 %i.q, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.p, i8 0, i64 %i.r, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false), !noalias !542
  %i.s = load ptr, ptr %8, align 8, !tbaa !376, !noalias !542 ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.i
  br i1 %i.t, label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit155, label %bb.c

bb.c:                                             ; preds = %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb0EEESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i
  %i.u = load i64, ptr %i.j, align 8, !tbaa !377, !noalias !542
  %i.v = shl i64 %i.u, 3
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.v) #24
  br label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit155

common.resume:                                    ; preds = %bb.dy, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.w, %bb.d ], [ %.pn102.pn.pn.pn.pn.pn.pn.pn, %bb.dy ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.a
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb0EEES3_St4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S3_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21, !noalias !542
  br label %common.resume

_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit155: ; preds = %bb.c, %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb0EEESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21, !noalias !542
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  %i.x = load ptr, ptr %9, align 8, !tbaa !114
  store ptr %i.x, ptr %11, align 8, !tbaa !360
  invoke void @_ZNK4cvc58internal6EnvObj7rewriteENS0_12NodeTemplateILb0EEE(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %10, ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 %11)
          to label %bb.e unwind label %bb.p

bb.e:                                             ; preds = %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit155
  %i.y = load ptr, ptr %9, align 8, !tbaa !114    ; 4 uses
  %i.z = load ptr, ptr %10, align 8, !tbaa !114
  %.not.i156 = icmp eq ptr %i.y, %i.z
  br i1 %.not.i156, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit, label %bb.f, !prof !125

bb.f:                                             ; preds = %bb.e
  %i.aa = load i64, ptr %i.y, align 8             ; 3 uses
  %i.ab = and i64 %i.aa, 1152920405095219200
  %.not.i.i = icmp eq i64 %i.ab, 1152920405095219200
  br i1 %.not.i.i, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i, label %bb.g, !prof !125

bb.g:                                             ; preds = %bb.f
  %i.ac = add i64 %i.aa, 1152920405095219200
  %i.ad = and i64 %i.ac, 1152920405095219200      ; 2 uses
  %i.ae = and i64 %i.aa, -1152920405095219201
  %i.af = or disjoint i64 %i.ad, %i.ae
  store i64 %i.af, ptr %i.y, align 8
  %i.ag = icmp eq i64 %i.ad, 0
  br i1 %i.ag, label %bb.h, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i, !prof !125

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i unwind label %bb.q

_ZN4cvc58internal4expr9NodeValue3decEv.exit.i:    ; preds = %bb.h, %bb.g, %bb.f
  %i.ah = load ptr, ptr %10, align 8, !tbaa !114  ; 5 uses
  store ptr %i.ah, ptr %9, align 8, !tbaa !114
  %i.ai = load i64, ptr %i.ah, align 8            ; 3 uses
  %i.aj = lshr i64 %i.ai, 40
  %i.ak = trunc nuw nsw i64 %i.aj to i32
  %i.al = and i32 %i.ak, 1048575                  ; 3 uses
  %i.am = icmp samesign ult i32 %i.al, 1048574
  br i1 %i.am, label %bb.i, label %bb.j, !prof !129

bb.i:                                             ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i
  %i.an = add nuw nsw i32 %i.al, 1
  %i.ao = zext nneg i32 %i.an to i64
  %i.ap = shl nuw nsw i64 %i.ao, 40
  %i.aq = and i64 %i.ai, -1152920405095219201
  %i.ar = or i64 %i.ap, %i.aq
  store i64 %i.ar, ptr %i.ah, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit

bb.j:                                             ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i
  %i.as = icmp eq i32 %i.al, 1048574
  br i1 %i.as, label %bb.k, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit, !prof !125

bb.k:                                             ; preds = %bb.j
  %i.at = or i64 %i.ai, 1152920405095219200
  store i64 %i.at, ptr %i.ah, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ah)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit unwind label %bb.q

_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit: ; preds = %bb.j, %bb.i, %bb.e, %bb.k
  %i.au = load ptr, ptr %10, align 8, !tbaa !114  ; 3 uses
  %i.av = load i64, ptr %i.au, align 8            ; 3 uses
  %i.aw = and i64 %i.av, 1152920405095219200
  %.not.i.i159 = icmp eq i64 %i.aw, 1152920405095219200
  br i1 %.not.i.i159, label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit175, label %bb.l, !prof !125

bb.l:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit
  %i.ax = add i64 %i.av, 1152920405095219200
  %i.ay = and i64 %i.ax, 1152920405095219200      ; 2 uses
  %i.az = and i64 %i.av, -1152920405095219201
  %i.ba = or disjoint i64 %i.ay, %i.az
  store i64 %i.ba, ptr %i.au, align 8
  %i.bb = icmp eq i64 %i.ay, 0
  br i1 %i.bb, label %bb.m, label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit175, !prof !125

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.au)
          to label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit175 unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bc = landingpad { ptr, i32 }
          catch ptr null
  %i.bd = extractvalue { ptr, i32 } %i.bc, 0
  call void @__clang_call_terminate(ptr %i.bd) #23
  unreachable

_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit175: ; preds = %bb.m, %bb.l, %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  %i.be = invoke noundef ptr @_ZNK4cvc58internal6EnvObj11nodeManagerEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.o unwind label %bb.s       ; 0 uses

bb.o:                                             ; preds = %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit175
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !391
  %i.bj = load ptr, ptr %i.bg, align 8, !tbaa !392
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = sub i64 %i.bk, %i.bl
  %i.bn = sdiv exact i64 %i.bm, 24
  %i.bo = and i64 %i.bn, 4294967295               ; 2 uses
  %.not112476.not = icmp eq i64 %i.bo, 0
  br i1 %.not112476.not, label %.critedge122, label %.lr.ph

.lr.ph:                                           ; preds = %bb.o
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 1128 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 1152
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 1136
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 1144
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bv = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.bz = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.t

bb.p:                                             ; preds = %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit155
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.q:                                             ; preds = %bb.k, %bb.h
  %i.cf = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #21
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.pn90 = phi { ptr, i32 } [ %i.cf, %bb.q ], [ %i.ce, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  br label %bb.dy

bb.s:                                             ; preds = %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit175
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %bb.dy

bb.t:                                             ; preds = %.lr.ph, %_ZNSt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEE4findERKj.exit
  %.0477 = phi i64 [ 0, %.lr.ph ], [ %i.ni, %_ZNSt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEE4findERKj.exit ] ; 4 uses
  %i.ch = trunc i64 %.0477 to i32                 ; 5 uses
  %i.ci = load i64, ptr %i.bq, align 8, !tbaa !393
  %.not.not.i.i = icmp eq i64 %i.ci, 0
  br i1 %.not.not.i.i, label %.preheader, label %bb.v

.preheader:                                       ; preds = %bb.t, %bb.u
  %.sroa.06.0.in.i.i = phi ptr [ %.sroa.06.0.i.i, %bb.u ], [ %i.bs, %bb.t ]
  %.sroa.06.0.i.i = load ptr, ptr %.sroa.06.0.in.i.i, align 8, !tbaa !371 ; 3 uses
  %.not.i.i176 = icmp eq ptr %.sroa.06.0.i.i, null
  br i1 %.not.i.i176, label %.loopexit, label %bb.u

bb.u:                                             ; preds = %.preheader
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 8
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !394
  %i.cl = icmp eq i32 %i.ck, %i.ch
  br i1 %i.cl, label %_ZNSt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEE4findERKj.exit, label %.preheader, !llvm.loop !533

bb.v:                                             ; preds = %bb.t
  %i.cm = load i64, ptr %i.br, align 8, !tbaa !119 ; 2 uses
  %i.cn = urem i64 %.0477, %i.cm                  ; 2 uses
  %i.co = load ptr, ptr %i.bp, align 8, !tbaa !118
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %i.cn
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !372 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.cq, null
  br i1 %.not.i.i.i.i, label %.loopexit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !371 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !394
  %i.cu = icmp eq i32 %i.ct, %i.ch
  br i1 %i.cu, label %_ZNSt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEE4findERKj.exit, label %.lr.ph.i.i.i.i

bb.x:                                             ; preds = %bb.y
  %i.cv = icmp eq i32 %i.cy, %i.ch
  br i1 %i.cv, label %_ZNSt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEE4findERKj.exit, label %.lr.ph.i.i.i.i, !llvm.loop !534

.lr.ph.i.i.i.i:                                   ; preds = %bb.w, %bb.x
  %.020.i.i.i.i = phi ptr [ %i.cw, %bb.x ], [ %i.cr, %bb.w ]
  %i.cw = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !371 ; 3 uses
  %.not18.i.i.i.i = icmp eq ptr %i.cw, null
  br i1 %.not18.i.i.i.i, label %.loopexit, label %bb.y

bb.y:                                             ; preds = %.lr.ph.i.i.i.i
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !394 ; 2 uses
  %i.cz = zext i32 %i.cy to i64
  %i.da = urem i64 %i.cz, %i.cm
  %.not19.i.i.i.i = icmp eq i64 %i.da, %i.cn
  br i1 %.not19.i.i.i.i, label %bb.x, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !534

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.y
  br label %.loopexit, !llvm.loop !534

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i, %.preheader, %..loopexit_crit_edge21.i.i.i.i, %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #21
  %i.db = load ptr, ptr %9, align 8, !tbaa !114   ; 5 uses
  store ptr %i.db, ptr %13, align 8, !tbaa !114
  %i.dc = load i64, ptr %i.db, align 8            ; 3 uses
  %i.dd = lshr i64 %i.dc, 40
  %i.de = trunc nuw nsw i64 %i.dd to i32
  %i.df = and i32 %i.de, 1048575                  ; 3 uses
  %i.dg = icmp samesign ult i32 %i.df, 1048574
  br i1 %i.dg, label %bb.z, label %bb.aa, !prof !129

bb.z:                                             ; preds = %.loopexit
  %i.dh = add nuw nsw i32 %i.df, 1
  %i.di = zext nneg i32 %i.dh to i64
  %i.dj = shl nuw nsw i64 %i.di, 40
  %i.dk = and i64 %i.dc, -1152920405095219201
  %i.dl = or i64 %i.dj, %i.dk
  store i64 %i.dl, ptr %i.db, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit

bb.aa:                                            ; preds = %.loopexit
  %i.dm = icmp eq i32 %i.df, 1048574
  br i1 %i.dm, label %bb.ab, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit, !prof !125

bb.ab:                                            ; preds = %bb.aa
  %i.dn = or i64 %i.dc, 1152920405095219200
  store i64 %i.dn, ptr %i.db, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.db)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit unwind label %bb.bi

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit: ; preds = %bb.aa, %bb.z, %bb.ab
  invoke void @_ZN4cvc58internal6theory11quantifiers12SygusSampler8evaluateENS0_12NodeTemplateILb1EEEj(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %12, ptr noundef nonnull align 8 dereferenceable(792) %i.bf, ptr noundef nonnull align 8 %13, i32 noundef %i.ch)
          to label %bb.ac unwind label %bb.bj

bb.ac:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit
  %i.do = load ptr, ptr %13, align 8, !tbaa !114  ; 3 uses
  %i.dp = load i64, ptr %i.do, align 8            ; 3 uses
  %i.dq = and i64 %i.dp, 1152920405095219200
  %.not.i.i178 = icmp eq i64 %i.dq, 1152920405095219200
  br i1 %.not.i.i178, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit180, label %bb.ad, !prof !125

bb.ad:                                            ; preds = %bb.ac
  %i.dr = add i64 %i.dp, 1152920405095219200
  %i.ds = and i64 %i.dr, 1152920405095219200      ; 2 uses
  %i.dt = and i64 %i.dp, -1152920405095219201
  %i.du = or disjoint i64 %i.ds, %i.dt
  store i64 %i.du, ptr %i.do, align 8
  %i.dv = icmp eq i64 %i.ds, 0
  br i1 %i.dv, label %bb.ae, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit180, !prof !125

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.do)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit180 unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dw = landingpad { ptr, i32 }
          catch ptr null
  %i.dx = extractvalue { ptr, i32 } %i.dw, 0
  call void @__clang_call_terminate(ptr %i.dx) #23
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit180: ; preds = %bb.ac, %bb.ad, %bb.ae
  %i.dy = invoke noundef zeroext i1 @_ZNK4cvc58internal12NodeTemplateILb1EE7isConstEv(ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %bb.ag unwind label %bb.bl

bb.ag:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit180
  br i1 %i.dy, label %bb.ah, label %.critedge120

bb.ah:                                            ; preds = %bb.ag
  %i.dz = load ptr, ptr %12, align 8, !tbaa !114
  %i.ea = invoke noundef nonnull align 1 dereferenceable(1) ptr @_ZNK4cvc58internal4expr9NodeValue8getConstIbEERKT_v(ptr noundef nonnull align 8 dereferenceable(24) %i.dz)
          to label %_ZNK4cvc58internal12NodeTemplateILb1EE8getConstIbEERKT_v.exit unwind label %bb.bl

_ZNK4cvc58internal12NodeTemplateILb1EE8getConstIbEERKT_v.exit: ; preds = %bb.ah
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !369, !range !365, !noundef !315
  %i.ec = trunc nuw i8 %i.eb to i1
  br i1 %i.ec, label %.critedge120, label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit219

_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit219: ; preds = %_ZNK4cvc58internal12NodeTemplateILb1EE8getConstIbEERKT_v.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i32 %i.ch, ptr %i.a, align 4, !tbaa !394
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  store ptr %i.bp, ptr %7, align 8, !tbaa !544
  %i.ed = invoke { ptr, i8 } @_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE16_M_insert_uniqueIjjNS1_10_AllocNodeISaINS1_10_Hash_nodeIjLb0EEEEEEEESt4pairINS1_14_Node_iteratorIjLb1ELb0EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %i.bp, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.ai unwind label %bb.bk     ; 0 uses

bb.ai:                                            ; preds = %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit219
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.ee = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK4cvc58internal6theory11quantifiers12SygusSampler14getSamplePointEm(ptr noundef nonnull align 8 dereferenceable(792) %i.bf, i64 noundef %.0477)
          to label %bb.aj unwind label %bb.bl     ; 2 uses

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #21
  %i.ef = load ptr, ptr %i.bt, align 8, !tbaa !358
  %i.eg = load ptr, ptr %i.bu, align 8, !tbaa !358
  %i.eh = load ptr, ptr %i.ee, align 8, !tbaa !358
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !358
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21, !noalias !545
  store ptr %i.bv, ptr %6, align 8, !tbaa !376, !noalias !545
  store i64 1, ptr %i.bw, align 8, !tbaa !377, !noalias !545
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bx, i8 0, i64 16, i1 false), !noalias !545
  store float 1.000000e+00, ptr %i.by, align 8, !tbaa !117, !noalias !545
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bz, i8 0, i64 16, i1 false), !noalias !545
  invoke void @_ZNK4cvc58internal12NodeTemplateILb1EE10substituteIN9__gnu_cxx17__normal_iteratorIPS2_St6vectorIS2_SaIS2_EEEENS5_IPKS2_S9_EEEES2_T_SE_T0_SF_RSt13unordered_mapINS1_ILb0EEESH_St4hashISH_ESt8equal_toISH_ESaISt4pairIKSH_SH_EEE(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %14, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr %i.ef, ptr %i.eg, ptr %i.eh, ptr %i.ej, ptr noundef nonnull align 8 dereferenceable(56) %6)
          to label %bb.ak unwind label %bb.am

bb.ak:                                            ; preds = %bb.aj
  %i.ek = load ptr, ptr %i.bx, align 8, !tbaa !378, !noalias !545 ; 2 uses
  %.not5.i.i.i.i.i221 = icmp eq ptr %i.ek, null
  br i1 %.not5.i.i.i.i.i221, label %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb0EEESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i225, label %.lr.ph.i.i.i.i.i222

.lr.ph.i.i.i.i.i222:                              ; preds = %bb.ak, %.lr.ph.i.i.i.i.i222
  %.06.i.i.i.i.i223 = phi ptr [ %i.el, %.lr.ph.i.i.i.i.i222 ], [ %i.ek, %bb.ak ] ; 2 uses
  %i.el = load ptr, ptr %.06.i.i.i.i.i223, align 8, !tbaa !371 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i.i223, i64 noundef 32) #24
  %.not.i.i.i.i.i224 = icmp eq ptr %i.el, null
  br i1 %.not.i.i.i.i.i224, label %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb0EEESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i225, label %.lr.ph.i.i.i.i.i222, !llvm.loop !4

_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb0EEESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i225: ; preds = %.lr.ph.i.i.i.i.i222, %bb.ak
  %i.em = load ptr, ptr %6, align 8, !tbaa !376, !noalias !545
  %i.en = load i64, ptr %i.bw, align 8, !tbaa !377, !noalias !545
  %i.eo = shl i64 %i.en, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.em, i8 0, i64 %i.eo, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bx, i8 0, i64 16, i1 false), !noalias !545
  %i.ep = load ptr, ptr %6, align 8, !tbaa !376, !noalias !545 ; 2 uses
  %i.eq = icmp eq ptr %i.ep, %i.bv
  br i1 %i.eq, label %bb.an, label %bb.al

bb.al:                                            ; preds = %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb0EEESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i225
  %i.er = load i64, ptr %i.bw, align 8, !tbaa !377, !noalias !545
  %i.es = shl i64 %i.er, 3
  call void @_ZdlPvm(ptr noundef %i.ep, i64 noundef %i.es) #24
  br label %bb.an

bb.am:                                            ; preds = %bb.aj
  %i.et = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb0EEES3_St4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S3_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21, !noalias !545
  br label %.body

bb.an:                                            ; preds = %bb.al, %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb0EEESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i225
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21, !noalias !545
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #21
  %i.eu = load ptr, ptr %14, align 8, !tbaa !114
end_hunk_1
