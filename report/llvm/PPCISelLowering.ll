Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/PPCISelLowering?download=true
inline.NumInlined: 17285
inline.NumDeleted: 3532
loop-unroll.NumCompletelyUnrolled: 104
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 115
begin_hunk_0_@_ZL6CC_AIXjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE:bb.a
  %i.ty = and i8 %i.tx, 126
  %i.tz = or disjoint i8 %i.tv, %i.ty
  store i8 %i.tz, ptr %i.tt, align 4, !alias.scope !1122
  %i.ua = getelementptr inbounds nuw i8, ptr %12, i64 22
  store i16 %1, ptr %i.ua, align 2, !tbaa !195, !alias.scope !1122
  %i.ub = getelementptr inbounds nuw i8, ptr %12, i64 24
  store i16 %i.k, ptr %i.ub, align 8, !tbaa !195, !alias.scope !1122
  store i32 %i.tq, ptr %12, align 8, !tbaa !318, !alias.scope !1122
  %i.uc = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.ud = load ptr, ptr %i.uc, align 8, !tbaa !1110, !nonnull !24, !align !70 ; 4 uses
  %i.ue = getelementptr inbounds nuw i8, ptr %i.ud, i64 8 ; 3 uses
  %i.uf = load i32, ptr %i.ue, align 8, !tbaa !373 ; 2 uses
  %i.ug = getelementptr inbounds nuw i8, ptr %i.ud, i64 12
  %i.uh = load i32, ptr %i.ug, align 4, !tbaa !374
  %.not.i.i312 = icmp ult i32 %i.uf, %i.uh
  br i1 %.not.i.i312, label %bb.bq, label %bb.bp, !prof !871

bb.bp:                                            ; preds = %bb.bo
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.ud, ptr noundef nonnull align 8 dereferenceable(26) %12)
  br label %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit313

bb.bq:                                            ; preds = %bb.bo
  %i.ui = zext i32 %i.uf to i64
  %i.uj = load ptr, ptr %i.ud, align 8, !tbaa !26
  %i.uk = getelementptr inbounds nuw [32 x i8], ptr %i.uj, i64 %i.ui
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.uk, ptr noundef nonnull align 8 dereferenceable(32) %12, i64 32, i1 false)
  %i.ul = load i32, ptr %i.ue, align 8, !tbaa !373
  %i.um = add i32 %i.ul, 1
  store i32 %i.um, ptr %i.ue, align 8, !tbaa !373
  br label %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit313

_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit313: ; preds = %bb.bp, %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #31
  br label %.loopexit

_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit311.thread: ; preds = %bb.bn, %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit311
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #31
  %i.un = and i64 %.0.i299, 4294967295
  %i.uo = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.up = getelementptr inbounds nuw i8, ptr %13, i64 16
  store i32 %0, ptr %i.up, align 8, !tbaa !858, !alias.scope !1125
  %i.uq = getelementptr inbounds nuw i8, ptr %13, i64 20 ; 2 uses
  %i.ur = load i8, ptr %i.uq, align 4, !alias.scope !1125
  %i.us = and i8 %i.ur, -128
  %i.ut = trunc i32 %.0243 to i8
  %i.uu = shl i8 %i.ut, 1
  %i.uv = and i8 %i.uu, 126
  %i.uw = or disjoint i8 %i.us, %i.uv
  store i8 %i.uw, ptr %i.uq, align 4, !alias.scope !1125
  %i.ux = getelementptr inbounds nuw i8, ptr %13, i64 22
  store i16 %1, ptr %i.ux, align 2, !tbaa !195, !alias.scope !1125
  %i.uy = getelementptr inbounds nuw i8, ptr %13, i64 24
  store i16 %i.k, ptr %i.uy, align 8, !tbaa !195, !alias.scope !1125
  store i8 1, ptr %i.uo, align 8, !tbaa !869, !alias.scope !1125
  store i64 %i.un, ptr %13, align 8, !tbaa !610, !alias.scope !1125
  %i.uz = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.va = load ptr, ptr %i.uz, align 8, !tbaa !1110, !nonnull !24, !align !70 ; 4 uses
  %i.vb = getelementptr inbounds nuw i8, ptr %i.va, i64 8 ; 3 uses
  %i.vc = load i32, ptr %i.vb, align 8, !tbaa !373 ; 2 uses
  %i.vd = getelementptr inbounds nuw i8, ptr %i.va, i64 12
  %i.ve = load i32, ptr %i.vd, align 4, !tbaa !374
  %.not.i.i314 = icmp ult i32 %i.vc, %i.ve
  br i1 %.not.i.i314, label %bb.bs, label %bb.br, !prof !871

bb.br:                                            ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit311.thread
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.va, ptr noundef nonnull align 8 dereferenceable(26) %13)
  br label %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit315

bb.bs:                                            ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit311.thread
  %i.vf = zext i32 %i.vc to i64
  %i.vg = load ptr, ptr %i.va, align 8, !tbaa !26
  %i.vh = getelementptr inbounds nuw [32 x i8], ptr %i.vg, i64 %i.vf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.vh, ptr noundef nonnull align 8 dereferenceable(32) %13, i64 32, i1 false)
  %i.vi = load i32, ptr %i.vb, align 8, !tbaa !373
  %i.vj = add i32 %i.vi, 1
  store i32 %i.vj, ptr %i.vb, align 8, !tbaa !373
  br label %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit315

_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit315: ; preds = %bb.br, %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #31
  br label %.loopexit

bb.bt:                                            ; preds = %bb.bc, %bb.bc
  %i.vk = zext i16 %2 to i64
  %i.vl = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.vk ; 2 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr i8, ptr %i.vl, i64 -8
  %.sroa.2.0.copyload.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %i.vm = trunc nuw i8 %.sroa.2.0.copyload.i.i to i1
  br i1 %i.vm, label %bb.bu, label %_ZNK4llvm8TypeSizecvmEv.exit

bb.bu:                                            ; preds = %bb.bt
  tail call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.126) #32
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit:                     ; preds = %bb.bt
  %i.vn = getelementptr i8, ptr %i.vl, i64 -16
  %.sroa.0.0.copyload.i.i316 = load i64, ptr %i.vn, align 16
  %i.vo = add i64 %.sroa.0.0.copyload.i.i316, 7
  %i.vp = lshr i64 %i.vo, 3
  %i.vq = trunc i64 %i.vp to i32                  ; 3 uses
  %i.vr = select i1 %i.g, i32 8, i32 %i.vq        ; 2 uses
  %i.vs = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.vt = load i8, ptr %i.vs, align 8, !tbaa !833, !range !23, !noundef !24
  %i.vu = trunc nuw i8 %i.vt to i1
  %i.vv = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 2 uses
  %i.vw = load i64, ptr %i.vv, align 8, !tbaa !856 ; 2 uses
  br i1 %i.vu, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit
  %i.vx = zext i32 %i.vr to i64
  %i.vy = add i64 %i.vw, 3
  %i.vz = add i64 %i.vy, %i.vx
  %i.wa = and i64 %i.vz, -4                       ; 2 uses
  %i.wb = sub i64 0, %i.wa
  br label %_ZN4llvm7CCState13AllocateStackEjNS_5AlignE.exit320

bb.bw:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit
  %i.wc = add i64 %i.vw, 3
  %i.wd = and i64 %i.wc, -4                       ; 2 uses
  %i.we = zext i32 %i.vr to i64
  %i.wf = add nsw i64 %i.wd, %i.we
  br label %_ZN4llvm7CCState13AllocateStackEjNS_5AlignE.exit320

_ZN4llvm7CCState13AllocateStackEjNS_5AlignE.exit320: ; preds = %bb.bv, %bb.bw
  %.sink625 = phi i64 [ %i.wa, %bb.bv ], [ %i.wf, %bb.bw ]
  %.0.i317 = phi i64 [ %i.wb, %bb.bv ], [ %i.wd, %bb.bw ]
  store i64 %.sink625, ptr %i.vv, align 8, !tbaa !856
  %i.wg = getelementptr inbounds nuw i8, ptr %7, i64 56 ; 2 uses
  %.sroa.0.0.copyload.i.i318 = load i8, ptr %i.wg, align 8, !tbaa !184
  %.sroa.speculated.i319 = tail call i8 @llvm.umax.i8(i8 %.sroa.0.0.copyload.i.i318, i8 2)
  store i8 %.sroa.speculated.i319, ptr %i.wg, align 8, !tbaa !184
  tail call void @_ZN4llvm7CCState18ensureMaxAlignmentENS_5AlignE(ptr noundef nonnull align 8 dereferenceable(420) %7, i8 2) #31
  %i.wh = getelementptr inbounds nuw i8, ptr %7, i64 64 ; 2 uses
  %i.wi = load ptr, ptr %i.wh, align 8, !tbaa !26
  %i.wj = getelementptr inbounds nuw i8, ptr %i.wi, i64 16
  %i.wk = load i32, ptr %i.wj, align 4, !tbaa !318 ; 13 uses
  %i.wl = and i32 %i.wk, 1024
  %.not.i.i323 = icmp eq i32 %i.wl, 0
  br i1 %.not.i.i323, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit326, label %bb.bx

bb.bx:                                            ; preds = %_ZN4llvm7CCState13AllocateStackEjNS_5AlignE.exit320
  %i.wm = and i32 %i.wk, 2048
  %.not.i.i323.1 = icmp eq i32 %i.wm, 0
  br i1 %.not.i.i323.1, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit326, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.wn = and i32 %i.wk, 4096
  %.not.i.i323.2 = icmp eq i32 %i.wn, 0
  br i1 %.not.i.i323.2, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit326, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.wo = and i32 %i.wk, 8192
  %.not.i.i323.3 = icmp eq i32 %i.wo, 0
  br i1 %.not.i.i323.3, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit326, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.wp = and i32 %i.wk, 16384
  %.not.i.i323.4 = icmp eq i32 %i.wp, 0
  br i1 %.not.i.i323.4, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit326, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.wq = and i32 %i.wk, 32768
  %.not.i.i323.5 = icmp eq i32 %i.wq, 0
  br i1 %.not.i.i323.5, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit326, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.wr = and i32 %i.wk, 65536
  %.not.i.i323.6 = icmp eq i32 %i.wr, 0
  br i1 %.not.i.i323.6, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit326, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.ws = and i32 %i.wk, 131072
  %.not.i.i323.7 = icmp eq i32 %i.ws, 0
  br i1 %.not.i.i323.7, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit326, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.wt = and i32 %i.wk, 262144
  %.not.i.i323.8 = icmp eq i32 %i.wt, 0
  br i1 %.not.i.i323.8, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit326, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.wu = and i32 %i.wk, 524288
  %.not.i.i323.9 = icmp eq i32 %i.wu, 0
  br i1 %.not.i.i323.9, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit326, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.wv = and i32 %i.wk, 1048576
  %.not.i.i323.10 = icmp eq i32 %i.wv, 0
  br i1 %.not.i.i323.10, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit326, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.ww = and i32 %i.wk, 2097152
  %.not.i.i323.11 = icmp eq i32 %i.ww, 0
  br i1 %.not.i.i323.11, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit326, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.wx = and i32 %i.wk, 4194304
  %.not.i.i323.12 = icmp eq i32 %i.wx, 0
  br i1 %.not.i.i323.12, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit326, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit326.thread

_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit326: ; preds = %_ZN4llvm7CCState13AllocateStackEjNS_5AlignE.exit320, %bb.bx, %bb.by, %bb.bz, %bb.ca, %bb.cb, %bb.cc, %bb.cd, %bb.ce, %bb.cf, %bb.cg, %bb.ch, %bb.ci
  %.0613.i.i322.lcssa.wide = phi i64 [ 0, %_ZN4llvm7CCState13AllocateStackEjNS_5AlignE.exit320 ], [ 1, %bb.bx ], [ 2, %bb.by ], [ 3, %bb.bz ], [ 4, %bb.ca ], [ 5, %bb.cb ], [ 6, %bb.cc ], [ 7, %bb.cd ], [ 8, %bb.ce ], [ 9, %bb.cf ], [ 10, %bb.cg ], [ 11, %bb.ch ], [ 12, %bb.ci ]
  %i.wy = getelementptr inbounds nuw [2 x i8], ptr @_ZL3FPR, i64 %.0613.i.i322.lcssa.wide
  %i.wz = load i16, ptr %i.wy, align 2, !tbaa !191 ; 2 uses
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %7, i16 noundef zeroext %i.wz) #31
  %i.xa = zext i16 %i.wz to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #31
  %i.xb = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i8 0, ptr %i.xb, align 8, !tbaa !869, !alias.scope !1128
  %i.xc = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i32 %0, ptr %i.xc, align 8, !tbaa !858, !alias.scope !1128
  %i.xd = getelementptr inbounds nuw i8, ptr %14, i64 20 ; 2 uses
  %i.xe = load i8, ptr %i.xd, align 4, !alias.scope !1128
  %i.xf = and i8 %i.xe, -128
  %i.xg = trunc i32 %3 to i8
  %i.xh = shl i8 %i.xg, 1
  %i.xi = and i8 %i.xh, 126
  %i.xj = or disjoint i8 %i.xf, %i.xi
  store i8 %i.xj, ptr %i.xd, align 4, !alias.scope !1128
  %i.xk = getelementptr inbounds nuw i8, ptr %14, i64 22
  store i16 %1, ptr %i.xk, align 2, !tbaa !195, !alias.scope !1128
  %i.xl = getelementptr inbounds nuw i8, ptr %14, i64 24
  store i16 %2, ptr %i.xl, align 8, !tbaa !195, !alias.scope !1128
  store i32 %i.xa, ptr %14, align 8, !tbaa !318, !alias.scope !1128
  %i.xm = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.xn = load ptr, ptr %i.xm, align 8, !tbaa !1110, !nonnull !24, !align !70 ; 4 uses
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xn, i64 8 ; 3 uses
  %i.xp = load i32, ptr %i.xo, align 8, !tbaa !373 ; 2 uses
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xn, i64 12
  %i.xr = load i32, ptr %i.xq, align 4, !tbaa !374
  %.not.i.i327 = icmp ult i32 %i.xp, %i.xr
  br i1 %.not.i.i327, label %bb.ck, label %bb.cj, !prof !871

bb.cj:                                            ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit326
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.xn, ptr noundef nonnull align 8 dereferenceable(26) %14)
  br label %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit328

bb.ck:                                            ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit326
  %i.xs = zext i32 %i.xp to i64
  %i.xt = load ptr, ptr %i.xn, align 8, !tbaa !26
  %i.xu = getelementptr inbounds nuw [32 x i8], ptr %i.xt, i64 %i.xs
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.xu, ptr noundef nonnull align 8 dereferenceable(32) %14, i64 32, i1 false)
  %i.xv = load i32, ptr %i.xo, align 8, !tbaa !373
  %i.xw = add i32 %i.xv, 1
  store i32 %i.xw, ptr %i.xo, align 8, !tbaa !373
  br label %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit328

_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit328: ; preds = %bb.cj, %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #31
  br label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit326.thread

_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit326.thread: ; preds = %bb.ci, %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit328
  %not..not260535 = phi i8 [ 1, %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit328 ], [ 0, %bb.ci ]
  %.not588 = icmp eq i32 %i.vq, 0
  br i1 %.not588, label %.loopexit, label %.lr.ph.i.i330.lr.ph

.lr.ph.i.i330.lr.ph:                              ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit326.thread
  %i.xx = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.xy = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.xz = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.ya = getelementptr inbounds nuw i8, ptr %15, i64 20 ; 2 uses
  %i.yb = trunc i32 %3 to i8
  %i.yc = shl i8 %i.yb, 1
  %i.yd = and i8 %i.yc, 126                       ; 2 uses
  %i.ye = getelementptr inbounds nuw i8, ptr %15, i64 22
  %i.yf = getelementptr inbounds nuw i8, ptr %15, i64 24
  %i.yg = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  %.pre632.a = load i16, ptr %_ZZL6CC_AIXjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE6GPR_64._ZZL6CC_AIXjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE6GPR_32, align 16, !tbaa !191 ; 3 uses
  %i.yh = zext i16 %.pre632.a to i32              ; 3 uses
  %i.yi = lshr i32 %i.yh, 5
  %i.yj = zext nneg i32 %i.yi to i64
  %i.yk = and i32 %i.yh, 31
  %i.yl = shl nuw i32 1, %i.yk
  %i.ym = select i1 %i.g, i16 535, i16 255        ; 2 uses
  %i.yn = zext nneg i16 %i.ym to i32              ; 3 uses
  %i.yo = lshr i32 %i.yn, 5
  %i.yp = zext nneg i32 %i.yo to i64
  %i.yq = and i32 %i.yn, 31
  %i.yr = shl nuw i32 1, %i.yq
  %i.ys = select i1 %i.g, i16 536, i16 256        ; 2 uses
  %i.yt = zext nneg i16 %i.ys to i32              ; 3 uses
  %i.yu = lshr i32 %i.yt, 5
  %i.yv = zext nneg i32 %i.yu to i64
  %i.yw = and i32 %i.yt, 24
  %i.yx = shl nuw nsw i32 1, %i.yw
  %i.yy = select i1 %i.g, i16 537, i16 257        ; 2 uses
  %i.yz = zext nneg i16 %i.yy to i32              ; 3 uses
  %i.za = lshr i32 %i.yz, 5
  %i.zb = zext nneg i32 %i.za to i64
  %i.zc = and i32 %i.yz, 25
  %i.zd = shl nuw nsw i32 1, %i.zc
  %i.ze = select i1 %i.g, i16 538, i16 258        ; 2 uses
  %i.zf = zext nneg i16 %i.ze to i32              ; 3 uses
  %i.zg = lshr i32 %i.zf, 5
  %i.zh = zext nneg i32 %i.zg to i64
  %i.zi = and i32 %i.zf, 26
  %i.zj = shl nuw nsw i32 1, %i.zi
  %i.zk = select i1 %i.g, i16 539, i16 259        ; 2 uses
  %i.zl = zext nneg i16 %i.zk to i32              ; 3 uses
  %i.zm = lshr i32 %i.zl, 5
  %i.zn = zext nneg i32 %i.zm to i64
  %i.zo = and i32 %i.zl, 27
  %i.zp = shl nuw nsw i32 1, %i.zo
  %i.zq = select i1 %i.g, i16 540, i16 260        ; 2 uses
  %i.zr = zext nneg i16 %i.zq to i32              ; 3 uses
  %i.zs = lshr i32 %i.zr, 5
  %i.zt = zext nneg i32 %i.zs to i64
  %i.zu = and i32 %i.zr, 28
  %i.zv = shl nuw nsw i32 1, %i.zu
  %i.zw = select i1 %i.g, i16 541, i16 261        ; 2 uses
  %i.zx = zext nneg i16 %i.zw to i32              ; 3 uses
  %i.zy = lshr i32 %i.zx, 5
  %i.zz = zext nneg i32 %i.zy to i64
  %i.aaa = and i32 %i.zx, 29
  %i.aab = shl nuw nsw i32 1, %i.aaa
  %.not261.not = icmp eq i16 %.pre632.a, 0
  %invariant.op764 = or disjoint i8 %i.yd, 1
  br label %.lr.ph.i.i330

.lr.ph.i.i330:                                    ; preds = %.lr.ph.i.i330.lr.ph, %bb.cz
  %.0251587 = phi i32 [ 0, %.lr.ph.i.i330.lr.ph ], [ %i.ach, %bb.cz ]
  %i.aac = load ptr, ptr %i.wh, align 8, !tbaa !26 ; 8 uses
  %i.aad = getelementptr inbounds nuw [4 x i8], ptr %i.aac, i64 %i.yj
  %i.aae = load i32, ptr %i.aad, align 4, !tbaa !318
  %i.aaf = and i32 %i.yl, %i.aae
  %.not.i.i332 = icmp eq i32 %i.aaf, 0
  br i1 %.not.i.i332, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit335, label %bb.cl

bb.cl:                                            ; preds = %.lr.ph.i.i330
  %i.aag = getelementptr inbounds nuw [4 x i8], ptr %i.aac, i64 %i.yp
  %i.aah = load i32, ptr %i.aag, align 4, !tbaa !318
  %i.aai = and i32 %i.yr, %i.aah
  %.not.i.i332.1 = icmp eq i32 %i.aai, 0
  br i1 %.not.i.i332.1, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit335.thread746, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.aaj = getelementptr inbounds nuw [4 x i8], ptr %i.aac, i64 %i.yv
  %i.aak = load i32, ptr %i.aaj, align 4, !tbaa !318
  %i.aal = and i32 %i.yx, %i.aak
  %.not.i.i332.2 = icmp eq i32 %i.aal, 0
  br i1 %.not.i.i332.2, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit335.thread746, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.aam = getelementptr inbounds nuw [4 x i8], ptr %i.aac, i64 %i.zb
  %i.aan = load i32, ptr %i.aam, align 4, !tbaa !318
  %i.aao = and i32 %i.zd, %i.aan
  %.not.i.i332.3 = icmp eq i32 %i.aao, 0
  br i1 %.not.i.i332.3, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit335.thread746, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.aap = getelementptr inbounds nuw [4 x i8], ptr %i.aac, i64 %i.zh
  %i.aaq = load i32, ptr %i.aap, align 4, !tbaa !318
  %i.aar = and i32 %i.zj, %i.aaq
  %.not.i.i332.4 = icmp eq i32 %i.aar, 0
  br i1 %.not.i.i332.4, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit335.thread746, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.aas = getelementptr inbounds nuw [4 x i8], ptr %i.aac, i64 %i.zn
  %i.aat = load i32, ptr %i.aas, align 4, !tbaa !318
  %i.aau = and i32 %i.zp, %i.aat
  %.not.i.i332.5 = icmp eq i32 %i.aau, 0
  br i1 %.not.i.i332.5, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit335.thread746, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.aav = getelementptr inbounds nuw [4 x i8], ptr %i.aac, i64 %i.zt
  %i.aaw = load i32, ptr %i.aav, align 4, !tbaa !318
  %i.aax = and i32 %i.zv, %i.aaw
  %.not.i.i332.6 = icmp eq i32 %i.aax, 0
  br i1 %.not.i.i332.6, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit335.thread746, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.aay = getelementptr inbounds nuw [4 x i8], ptr %i.aac, i64 %i.zz
  %i.aaz = load i32, ptr %i.aay, align 4, !tbaa !318
  %i.aba = and i32 %i.aab, %i.aaz
  %.not.i.i332.7 = icmp eq i32 %i.aba, 0
  br i1 %.not.i.i332.7, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit335.thread746, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit335.thread

_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit335.thread746: ; preds = %bb.cl, %bb.cr, %bb.cq, %bb.cp, %bb.co, %bb.cn, %bb.cm
  %.pre-phi.ph = phi i32 [ %i.yt, %bb.cm ], [ %i.yz, %bb.cn ], [ %i.zf, %bb.co ], [ %i.zl, %bb.cp ], [ %i.zr, %bb.cq ], [ %i.zx, %bb.cr ], [ %i.yn, %bb.cl ]
  %.ph745 = phi i16 [ %i.ys, %bb.cm ], [ %i.yy, %bb.cn ], [ %i.ze, %bb.co ], [ %i.zk, %bb.cp ], [ %i.zq, %bb.cq ], [ %i.zw, %bb.cr ], [ %i.ym, %bb.cl ]
  call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %7, i16 noundef zeroext %.ph745) #31
  br label %bb.cs

_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit335: ; preds = %.lr.ph.i.i330
  call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %7, i16 noundef zeroext %.pre632.a) #31
  br i1 %.not261.not, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit335.thread, label %bb.cs

bb.cs:                                            ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit335.thread746, %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit335
  %.pre-phi749 = phi i32 [ %.pre-phi.ph, %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit335.thread746 ], [ %i.yh, %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit335 ]
  %i.abb = load i8, ptr %i.xx, align 4, !tbaa !1131, !range !23, !noundef !24
  %i.abc = trunc nuw i8 %i.abb to i1
  br i1 %i.abc, label %bb.ct, label %bb.cz

bb.ct:                                            ; preds = %bb.cs
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #31
  store i8 0, ptr %i.xy, align 8, !tbaa !869, !alias.scope !1132
  store i32 %0, ptr %i.xz, align 8, !tbaa !858, !alias.scope !1132
  %i.abd = load i8, ptr %i.ya, align 4, !alias.scope !1132
  %i.abe = and i8 %i.abd, -128
  %.reass765 = or disjoint i8 %i.abe, %invariant.op764
  store i8 %.reass765, ptr %i.ya, align 4, !alias.scope !1132
  store i16 %1, ptr %i.ye, align 2, !tbaa !195, !alias.scope !1132
  store i16 %i.k, ptr %i.yf, align 8, !tbaa !195, !alias.scope !1132
  store i32 %.pre-phi749, ptr %15, align 8, !tbaa !318, !alias.scope !1132
  %i.abf = load ptr, ptr %i.yg, align 8, !tbaa !1110, !nonnull !24, !align !70 ; 4 uses
  %i.abg = getelementptr inbounds nuw i8, ptr %i.abf, i64 8 ; 3 uses
  %i.abh = load i32, ptr %i.abg, align 8, !tbaa !373 ; 2 uses
  %i.abi = getelementptr inbounds nuw i8, ptr %i.abf, i64 12
  %i.abj = load i32, ptr %i.abi, align 4, !tbaa !374
  %.not.i.i336 = icmp ult i32 %i.abh, %i.abj
  br i1 %.not.i.i336, label %bb.cv, label %bb.cu, !prof !871

bb.cu:                                            ; preds = %bb.ct
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.abf, ptr noundef nonnull align 8 dereferenceable(26) %15)
  br label %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit337

bb.cv:                                            ; preds = %bb.ct
  %i.abk = zext i32 %i.abh to i64
  %i.abl = load ptr, ptr %i.abf, align 8, !tbaa !26
  %i.abm = getelementptr inbounds nuw [32 x i8], ptr %i.abl, i64 %i.abk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.abm, ptr noundef nonnull align 8 dereferenceable(32) %15, i64 32, i1 false)
  %i.abn = load i32, ptr %i.abg, align 8, !tbaa !373
  %i.abo = add i32 %i.abn, 1
  store i32 %i.abo, ptr %i.abg, align 8, !tbaa !373
  br label %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit337

_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit337: ; preds = %bb.cu, %bb.cv
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #31
  br label %bb.cz

_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit335.thread: ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit335, %bb.cr
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #31
  %i.abp = getelementptr inbounds nuw i8, ptr %16, i64 16
  store i32 %0, ptr %i.abp, align 8, !tbaa !858
  %i.abq = getelementptr inbounds nuw i8, ptr %16, i64 20 ; 2 uses
  %i.abr = load i8, ptr %i.abq, align 4
  %i.abs = and i8 %i.abr, -128
  %i.abt = or disjoint i8 %i.abs, %not..not260535
  %.sink766 = or disjoint i8 %i.abt, %i.yd
  store i8 %.sink766, ptr %i.abq, align 4
  %i.abu = getelementptr inbounds nuw i8, ptr %16, i64 22
  store i16 %1, ptr %i.abu, align 2, !tbaa !195
  %i.abv = getelementptr inbounds nuw i8, ptr %16, i64 24
  store i16 %2, ptr %i.abv, align 8, !tbaa !195
  %i.abw = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i8 1, ptr %i.abw, align 8, !tbaa !869
  %storemerge552 = and i64 %.0.i317, 4294967295
  store i64 %storemerge552, ptr %16, align 8, !tbaa !610
  %i.abx = load ptr, ptr %i.yg, align 8, !tbaa !1110, !nonnull !24, !align !70 ; 4 uses
  %i.aby = getelementptr inbounds nuw i8, ptr %i.abx, i64 8 ; 3 uses
  %i.abz = load i32, ptr %i.aby, align 8, !tbaa !373 ; 2 uses
  %i.aca = getelementptr inbounds nuw i8, ptr %i.abx, i64 12
  %i.acb = load i32, ptr %i.aca, align 4, !tbaa !374
  %.not.i.i338 = icmp ult i32 %i.abz, %i.acb
  br i1 %.not.i.i338, label %bb.cx, label %bb.cw, !prof !871

bb.cw:                                            ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit335.thread
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.abx, ptr noundef nonnull align 8 dereferenceable(26) %16)
  br label %bb.cy

bb.cx:                                            ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit335.thread
  %i.acc = zext i32 %i.abz to i64
  %i.acd = load ptr, ptr %i.abx, align 8, !tbaa !26
  %i.ace = getelementptr inbounds nuw [32 x i8], ptr %i.acd, i64 %i.acc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.ace, ptr noundef nonnull align 8 dereferenceable(32) %16, i64 32, i1 false)
  %i.acf = load i32, ptr %i.aby, align 8, !tbaa !373
  %i.acg = add i32 %i.acf, 1
  store i32 %i.acg, ptr %i.aby, align 8, !tbaa !373
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.cw
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #31
  br label %.loopexit

bb.cz:                                            ; preds = %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit337, %bb.cs
  %i.ach = add i32 %.0251587, %i.h                ; 2 uses
  %i.aci = icmp ult i32 %i.ach, %i.vq
  br i1 %i.aci, label %.lr.ph.i.i330, label %.loopexit, !llvm.loop !1137

bb.da:                                            ; preds = %bb.bc, %bb.bc, %bb.bc, %bb.bc, %bb.bc, %bb.bc, %bb.bc
  %i.acj = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.ack = load i8, ptr %i.acj, align 4, !tbaa !1131, !range !23, !noundef !24
  %i.acl = trunc nuw i8 %i.ack to i1
  %i.acm = getelementptr inbounds nuw i8, ptr %7, i64 64 ; 6 uses
  %i.acn = load ptr, ptr %i.acm, align 8, !tbaa !26 ; 11 uses
  br i1 %i.acl, label %.lr.ph.i355, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.aco = getelementptr inbounds nuw i8, ptr %i.acn, i64 40
  %i.acp = load i32, ptr %i.aco, align 4, !tbaa !318 ; 12 uses
  %i.acq = and i32 %i.acp, 32
  %.not.i.i342 = icmp eq i32 %i.acq, 0
  br i1 %.not.i.i342, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit345, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.acr = and i32 %i.acp, 64
  %.not.i.i342.1 = icmp eq i32 %i.acr, 0
  br i1 %.not.i.i342.1, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit345, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.acs = and i32 %i.acp, 128
  %.not.i.i342.2 = icmp eq i32 %i.acs, 0
  br i1 %.not.i.i342.2, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit345, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.act = and i32 %i.acp, 256
  %.not.i.i342.3 = icmp eq i32 %i.act, 0
  br i1 %.not.i.i342.3, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit345, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.acu = and i32 %i.acp, 512
  %.not.i.i342.4 = icmp eq i32 %i.acu, 0
  br i1 %.not.i.i342.4, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit345, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.acv = and i32 %i.acp, 1024
  %.not.i.i342.5 = icmp eq i32 %i.acv, 0
  br i1 %.not.i.i342.5, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit345, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.acw = and i32 %i.acp, 2048
  %.not.i.i342.6 = icmp eq i32 %i.acw, 0
  br i1 %.not.i.i342.6, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit345, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.acx = and i32 %i.acp, 4096
  %.not.i.i342.7 = icmp eq i32 %i.acx, 0
  br i1 %.not.i.i342.7, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit345, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.acy = and i32 %i.acp, 8192
  %.not.i.i342.8 = icmp eq i32 %i.acy, 0
  br i1 %.not.i.i342.8, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit345, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.acz = and i32 %i.acp, 16384
  %.not.i.i342.9 = icmp eq i32 %i.acz, 0
  br i1 %.not.i.i342.9, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit345, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.ada = and i32 %i.acp, 32768
  %.not.i.i342.10 = icmp eq i32 %i.ada, 0
  br i1 %.not.i.i342.10, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit345, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.adb = and i32 %i.acp, 65536
  %.not.i.i342.11 = icmp eq i32 %i.adb, 0
  br i1 %.not.i.i342.11, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit345, label %.critedge268

_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit345: ; preds = %bb.db, %bb.dc, %bb.dd, %bb.de, %bb.df, %bb.dg, %bb.dh, %bb.di, %bb.dj, %bb.dk, %bb.dl, %bb.dm
  %.0613.i.i341.lcssa.wide = phi i64 [ 0, %bb.db ], [ 1, %bb.dc ], [ 2, %bb.dd ], [ 3, %bb.de ], [ 4, %bb.df ], [ 5, %bb.dg ], [ 6, %bb.dh ], [ 7, %bb.di ], [ 8, %bb.dj ], [ 9, %bb.dk ], [ 10, %bb.dl ], [ 11, %bb.dm ]
  %i.adc = getelementptr inbounds nuw [2 x i8], ptr @_ZZL6CC_AIXjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE2VR, i64 %.0613.i.i341.lcssa.wide
  %i.add = load i16, ptr %i.adc, align 2, !tbaa !191 ; 2 uses
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %7, i16 noundef zeroext %i.add) #31
  %i.ade = zext i16 %i.add to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #31
  %i.adf = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i8 0, ptr %i.adf, align 8, !tbaa !869, !alias.scope !1138
  %i.adg = getelementptr inbounds nuw i8, ptr %17, i64 16
  store i32 %0, ptr %i.adg, align 8, !tbaa !858, !alias.scope !1138
  %i.adh = getelementptr inbounds nuw i8, ptr %17, i64 20 ; 2 uses
  %i.adi = load i8, ptr %i.adh, align 4, !alias.scope !1138
  %i.adj = and i8 %i.adi, -128
  %i.adk = trunc i32 %3 to i8
  %i.adl = shl i8 %i.adk, 1
  %i.adm = and i8 %i.adl, 126
  %i.adn = or disjoint i8 %i.adj, %i.adm
  store i8 %i.adn, ptr %i.adh, align 4, !alias.scope !1138
  %i.ado = getelementptr inbounds nuw i8, ptr %17, i64 22
  store i16 %1, ptr %i.ado, align 2, !tbaa !195, !alias.scope !1138
  %i.adp = getelementptr inbounds nuw i8, ptr %17, i64 24
  store i16 %2, ptr %i.adp, align 8, !tbaa !195, !alias.scope !1138
  store i32 %i.ade, ptr %17, align 8, !tbaa !318, !alias.scope !1138
  %i.adq = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.adr = load ptr, ptr %i.adq, align 8, !tbaa !1110, !nonnull !24, !align !70 ; 4 uses
  %i.ads = getelementptr inbounds nuw i8, ptr %i.adr, i64 8 ; 3 uses
  %i.adt = load i32, ptr %i.ads, align 8, !tbaa !373 ; 2 uses
  %i.adu = getelementptr inbounds nuw i8, ptr %i.adr, i64 12
  %i.adv = load i32, ptr %i.adu, align 4, !tbaa !374
  %.not.i.i346 = icmp ult i32 %i.adt, %i.adv
  br i1 %.not.i.i346, label %bb.do, label %bb.dn, !prof !871

bb.dn:                                            ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit345
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.adr, ptr noundef nonnull align 8 dereferenceable(26) %17)
  br label %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit347

bb.do:                                            ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit345
  %i.adw = zext i32 %i.adt to i64
  %i.adx = load ptr, ptr %i.adr, align 8, !tbaa !26
  %i.ady = getelementptr inbounds nuw [32 x i8], ptr %i.adx, i64 %i.adw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.ady, ptr noundef nonnull align 8 dereferenceable(32) %17, i64 32, i1 false)
  %i.adz = load i32, ptr %i.ads, align 8, !tbaa !373
  %i.aea = add i32 %i.adz, 1
  store i32 %i.aea, ptr %i.ads, align 8, !tbaa !373
  br label %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit347

_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit347: ; preds = %bb.dn, %bb.do
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #31
  br label %.loopexit

.critedge268:                                     ; preds = %bb.dm
  %27 = getelementptr inbounds nuw i8, ptr %7, i64 40
  %28 = load i8, ptr %27, align 8, !tbaa !833, !range !23, !noundef !24
  %29 = trunc nuw i8 %28 to i1
  %30 = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 2 uses
  %31 = load i64, ptr %30, align 8, !tbaa !856    ; 2 uses
  br i1 %29, label %bb.dp, label %bb.dq

bb.dp:                                            ; preds = %.critedge268
  %i.aeb = add i64 %31, 31
  %i.aec = and i64 %i.aeb, -16                    ; 2 uses
  %i.aed = sub i64 0, %i.aec
  br label %_ZN4llvm7CCState13AllocateStackEjNS_5AlignE.exit351

bb.dq:                                            ; preds = %.critedge268
  %i.aee = add i64 %31, 15
  %i.aef = and i64 %i.aee, -16                    ; 2 uses
  %i.aeg = add nsw i64 %i.aef, 16
  br label %_ZN4llvm7CCState13AllocateStackEjNS_5AlignE.exit351

_ZN4llvm7CCState13AllocateStackEjNS_5AlignE.exit351: ; preds = %bb.dp, %bb.dq
  %.sink626 = phi i64 [ %i.aec, %bb.dp ], [ %i.aeg, %bb.dq ]
  %.0.i348 = phi i64 [ %i.aed, %bb.dp ], [ %i.aef, %bb.dq ]
  store i64 %.sink626, ptr %30, align 8, !tbaa !856
  %i.aeh = getelementptr inbounds nuw i8, ptr %7, i64 56 ; 2 uses
  %.sroa.0.0.copyload.i.i349 = load i8, ptr %i.aeh, align 8, !tbaa !184
  %.sroa.speculated.i350 = tail call i8 @llvm.umax.i8(i8 %.sroa.0.0.copyload.i.i349, i8 4)
  store i8 %.sroa.speculated.i350, ptr %i.aeh, align 8, !tbaa !184
  tail call void @_ZN4llvm7CCState18ensureMaxAlignmentENS_5AlignE(ptr noundef nonnull align 8 dereferenceable(420) %7, i8 4) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #31
  %i.aei = and i64 %.0.i348, 4294967295
  %i.aej = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.aek = getelementptr inbounds nuw i8, ptr %18, i64 16
  store i32 %0, ptr %i.aek, align 8, !tbaa !858, !alias.scope !1141
  %i.ael = getelementptr inbounds nuw i8, ptr %18, i64 20 ; 2 uses
  %i.aem = load i8, ptr %i.ael, align 4, !alias.scope !1141
  %i.aen = and i8 %i.aem, -128
  %i.aeo = trunc i32 %3 to i8
  %i.aep = shl i8 %i.aeo, 1
  %i.aeq = and i8 %i.aep, 126
  %i.aer = or disjoint i8 %i.aen, %i.aeq
  store i8 %i.aer, ptr %i.ael, align 4, !alias.scope !1141
  %i.aes = getelementptr inbounds nuw i8, ptr %18, i64 22
  store i16 %1, ptr %i.aes, align 2, !tbaa !195, !alias.scope !1141
  %i.aet = getelementptr inbounds nuw i8, ptr %18, i64 24
  store i16 %2, ptr %i.aet, align 8, !tbaa !195, !alias.scope !1141
  store i8 1, ptr %i.aej, align 8, !tbaa !869, !alias.scope !1141
  store i64 %i.aei, ptr %18, align 8, !tbaa !610, !alias.scope !1141
  %i.aeu = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.aev = load ptr, ptr %i.aeu, align 8, !tbaa !1110, !nonnull !24, !align !70 ; 4 uses
  %i.aew = getelementptr inbounds nuw i8, ptr %i.aev, i64 8 ; 3 uses
  %i.aex = load i32, ptr %i.aew, align 8, !tbaa !373 ; 2 uses
  %i.aey = getelementptr inbounds nuw i8, ptr %i.aev, i64 12
  %i.aez = load i32, ptr %i.aey, align 4, !tbaa !374
  %.not.i.i352 = icmp ult i32 %i.aex, %i.aez
  br i1 %.not.i.i352, label %bb.ds, label %bb.dr, !prof !871

bb.dr:                                            ; preds = %_ZN4llvm7CCState13AllocateStackEjNS_5AlignE.exit351
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.aev, ptr noundef nonnull align 8 dereferenceable(26) %18)
  br label %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit353

bb.ds:                                            ; preds = %_ZN4llvm7CCState13AllocateStackEjNS_5AlignE.exit351
  %i.afa = zext i32 %i.aex to i64
  %i.afb = load ptr, ptr %i.aev, align 8, !tbaa !26
  %i.afc = getelementptr inbounds nuw [32 x i8], ptr %i.afb, i64 %i.afa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.afc, ptr noundef nonnull align 8 dereferenceable(32) %18, i64 32, i1 false)
  %i.afd = load i32, ptr %i.aew, align 8, !tbaa !373
  %i.afe = add i32 %i.afd, 1
  store i32 %i.afe, ptr %i.aew, align 8, !tbaa !373
  br label %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit353

_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit353: ; preds = %bb.dr, %bb.ds
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #31
  br label %.loopexit

.lr.ph.i355:                                      ; preds = %bb.da
  %i.aff = load i16, ptr %_ZZL6CC_AIXjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE6GPR_64._ZZL6CC_AIXjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE6GPR_32, align 16, !tbaa !191 ; 4 uses
  %i.afg = zext i16 %i.aff to i32                 ; 3 uses
  %i.afh = lshr i32 %i.afg, 5
  %i.afi = zext nneg i32 %i.afh to i64            ; 4 uses
  %i.afj = getelementptr inbounds nuw [4 x i8], ptr %i.acn, i64 %i.afi
  %i.afk = load i32, ptr %i.afj, align 4, !tbaa !318 ; 2 uses
  %i.afl = and i32 %i.afg, 31
  %i.afm = shl nuw i32 1, %i.afl                  ; 5 uses
  %i.afn = and i32 %i.afm, %i.afk
  %.not.i357 = icmp eq i32 %i.afn, 0
  br i1 %.not.i357, label %.lr.ph584, label %bb.dt

bb.dt:                                            ; preds = %.lr.ph.i355
  %i.afo = select i1 %i.g, i32 535, i32 255       ; 2 uses
  %i.afp = lshr i32 %i.afo, 5
  %i.afq = zext nneg i32 %i.afp to i64
  %i.afr = getelementptr inbounds nuw [4 x i8], ptr %i.acn, i64 %i.afq
  %i.afs = load i32, ptr %i.afr, align 4, !tbaa !318
  %i.aft = and i32 %i.afo, 31
  %i.afu = shl nuw i32 1, %i.aft
  %i.afv = and i32 %i.afu, %i.afs
  %.not.i357.1 = icmp eq i32 %i.afv, 0
  br i1 %.not.i357.1, label %.lr.ph584, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.afw = select i1 %i.g, i32 536, i32 256       ; 2 uses
  %i.afx = lshr i32 %i.afw, 5
  %i.afy = zext nneg i32 %i.afx to i64
  %i.afz = getelementptr inbounds nuw [4 x i8], ptr %i.acn, i64 %i.afy
  %i.aga = load i32, ptr %i.afz, align 4, !tbaa !318
  %i.agb = and i32 %i.afw, 24
  %i.agc = shl nuw nsw i32 1, %i.agb
  %i.agd = and i32 %i.agc, %i.aga
  %.not.i357.2 = icmp eq i32 %i.agd, 0
  br i1 %.not.i357.2, label %.lr.ph584, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.age = select i1 %i.g, i32 537, i32 257       ; 2 uses
  %i.agf = lshr i32 %i.age, 5
  %i.agg = zext nneg i32 %i.agf to i64
  %i.agh = getelementptr inbounds nuw [4 x i8], ptr %i.acn, i64 %i.agg
  %i.agi = load i32, ptr %i.agh, align 4, !tbaa !318
  %i.agj = and i32 %i.age, 25
  %i.agk = shl nuw nsw i32 1, %i.agj
  %i.agl = and i32 %i.agk, %i.agi
  %.not.i357.3 = icmp eq i32 %i.agl, 0
  br i1 %.not.i357.3, label %.lr.ph584, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.agm = select i1 %i.g, i32 538, i32 258       ; 2 uses
  %i.agn = lshr i32 %i.agm, 5
  %i.ago = zext nneg i32 %i.agn to i64
  %i.agp = getelementptr inbounds nuw [4 x i8], ptr %i.acn, i64 %i.ago
  %i.agq = load i32, ptr %i.agp, align 4, !tbaa !318
  %i.agr = and i32 %i.agm, 26
  %i.ags = shl nuw nsw i32 1, %i.agr
  %i.agt = and i32 %i.ags, %i.agq
  %.not.i357.4 = icmp eq i32 %i.agt, 0
  br i1 %.not.i357.4, label %.lr.ph584, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.agu = select i1 %i.g, i32 539, i32 259       ; 2 uses
  %i.agv = lshr i32 %i.agu, 5
  %i.agw = zext nneg i32 %i.agv to i64
  %i.agx = getelementptr inbounds nuw [4 x i8], ptr %i.acn, i64 %i.agw
  %i.agy = load i32, ptr %i.agx, align 4, !tbaa !318
  %i.agz = and i32 %i.agu, 27
  %i.aha = shl nuw nsw i32 1, %i.agz
  %i.ahb = and i32 %i.aha, %i.agy
  %.not.i357.5 = icmp eq i32 %i.ahb, 0
  br i1 %.not.i357.5, label %.lr.ph584, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.ahc = select i1 %i.g, i32 540, i32 260       ; 2 uses
  %i.ahd = lshr i32 %i.ahc, 5
  %i.ahe = zext nneg i32 %i.ahd to i64
  %i.ahf = getelementptr inbounds nuw [4 x i8], ptr %i.acn, i64 %i.ahe
  %i.ahg = load i32, ptr %i.ahf, align 4, !tbaa !318
  %i.ahh = and i32 %i.ahc, 28
  %i.ahi = shl nuw nsw i32 1, %i.ahh
  %i.ahj = and i32 %i.ahi, %i.ahg
  %.not.i357.6 = icmp eq i32 %i.ahj, 0
  br i1 %.not.i357.6, label %.lr.ph584, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.ahk = select i1 %i.g, i32 541, i32 261       ; 2 uses
  %i.ahl = lshr i32 %i.ahk, 5
  %i.ahm = zext nneg i32 %i.ahl to i64
  %i.ahn = getelementptr inbounds nuw [4 x i8], ptr %i.acn, i64 %i.ahm
  %i.aho = load i32, ptr %i.ahn, align 4, !tbaa !318
  %i.ahp = and i32 %i.ahk, 29
  %i.ahq = shl nuw nsw i32 1, %i.ahp
  %i.ahr = and i32 %i.ahq, %i.aho
  %.not.i357.7 = icmp eq i32 %i.ahr, 0
  br i1 %.not.i357.7, label %.lr.ph584, label %.critedge5.thread

.lr.ph584:                                        ; preds = %.lr.ph.i355, %bb.dt, %bb.dz, %bb.du, %bb.dx, %bb.dv, %bb.dy, %bb.dw
  %.1.i359.ph = phi i64 [ 4, %bb.dw ], [ 6, %bb.dy ], [ 3, %bb.dv ], [ 5, %bb.dx ], [ 2, %bb.du ], [ 7, %bb.dz ], [ 1, %bb.dt ], [ 0, %.lr.ph.i355 ]
  %i.ahs = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.aht = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 2 uses
  %i.ahu = zext nneg i8 %i.j to i64
  %i.ahv = shl nuw nsw i64 1, %i.ahu              ; 3 uses
  %i.ahw = add nsw i64 %i.ahv, -1
  %i.ahx = sub nsw i64 0, %i.ahv                  ; 2 uses
  %i.ahy = add nsw i64 %i.i, -1
  %i.ahz = add nuw nsw i64 %i.ahy, %i.ahv
  %i.aia = getelementptr inbounds nuw i8, ptr %7, i64 56 ; 2 uses
  %i.aib = select i1 %i.g, i16 535, i16 255       ; 2 uses
  %i.aic = zext nneg i16 %i.aib to i32            ; 2 uses
  %i.aid = lshr i32 %i.aic, 5
  %i.aie = zext nneg i32 %i.aid to i64
  %i.aif = and i32 %i.aic, 31
  %i.aig = shl nuw i32 1, %i.aif
  %i.aih = select i1 %i.g, i16 536, i16 256       ; 2 uses
  %i.aii = zext nneg i16 %i.aih to i32            ; 2 uses
  %i.aij = lshr i32 %i.aii, 5
  %i.aik = zext nneg i32 %i.aij to i64
  %i.ail = and i32 %i.aii, 24
  %i.aim = shl nuw nsw i32 1, %i.ail
  %i.ain = select i1 %i.g, i16 537, i16 257       ; 2 uses
  %i.aio = zext nneg i16 %i.ain to i32            ; 2 uses
  %i.aip = lshr i32 %i.aio, 5
  %i.aiq = zext nneg i32 %i.aip to i64
  %i.air = and i32 %i.aio, 25
  %i.ais = shl nuw nsw i32 1, %i.air
  %i.ait = select i1 %i.g, i16 538, i16 258       ; 2 uses
  %i.aiu = zext nneg i16 %i.ait to i32            ; 2 uses
  %i.aiv = lshr i32 %i.aiu, 5
  %i.aiw = zext nneg i32 %i.aiv to i64
  %i.aix = and i32 %i.aiu, 26
  %i.aiy = shl nuw nsw i32 1, %i.aix
  %i.aiz = select i1 %i.g, i16 539, i16 259       ; 2 uses
end_hunk_0
begin_hunk_1_@_ZL6CC_AIXjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateE:bb.a
  br i1 %.not.i.i366.2, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i368, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.all = getelementptr inbounds nuw [4 x i8], ptr %i.alb, i64 %i.aiq
  %i.alm = load i32, ptr %i.all, align 4, !tbaa !318
  %i.aln = and i32 %i.ais, %i.alm
  %.not.i.i366.3 = icmp eq i32 %i.aln, 0
  br i1 %.not.i.i366.3, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i368, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.alo = getelementptr inbounds nuw [4 x i8], ptr %i.alb, i64 %i.aiw
  %i.alp = load i32, ptr %i.alo, align 4, !tbaa !318
  %i.alq = and i32 %i.aiy, %i.alp
  %.not.i.i366.4 = icmp eq i32 %i.alq, 0
  br i1 %.not.i.i366.4, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i368, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.alr = getelementptr inbounds nuw [4 x i8], ptr %i.alb, i64 %i.ajc
  %i.als = load i32, ptr %i.alr, align 4, !tbaa !318
  %i.alt = and i32 %i.aje, %i.als
  %.not.i.i366.5 = icmp eq i32 %i.alt, 0
  br i1 %.not.i.i366.5, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i368, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.alu = getelementptr inbounds nuw [4 x i8], ptr %i.alb, i64 %i.aji
  %i.alv = load i32, ptr %i.alu, align 4, !tbaa !318
  %i.alw = and i32 %i.ajk, %i.alv
  %.not.i.i366.6 = icmp eq i32 %i.alw, 0
  br i1 %.not.i.i366.6, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i368, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.alx = getelementptr inbounds nuw [4 x i8], ptr %i.alb, i64 %i.ajo
  %i.aly = load i32, ptr %i.alx, align 4, !tbaa !318
  %i.alz = and i32 %i.ajq, %i.aly
  %.not.i.i366.7 = icmp eq i32 %i.alz, 0
  br i1 %.not.i.i366.7, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i368, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit369

_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i368: ; preds = %bb.eh, %bb.eg, %bb.ef, %bb.ee, %bb.ed, %bb.ec, %bb.eb, %.lr.ph.i.i364
  %i.ama = phi i16 [ %i.aff, %.lr.ph.i.i364 ], [ %i.aib, %bb.eb ], [ %i.aih, %bb.ec ], [ %i.ain, %bb.ed ], [ %i.ait, %bb.ee ], [ %i.aiz, %bb.ef ], [ %i.ajf, %bb.eg ], [ %i.ajl, %bb.eh ]
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %7, i16 noundef zeroext %i.ama) #31
  br label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit369

_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit369: ; preds = %bb.eh, %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i368
  %i.amb = load i8, ptr %i.ahs, align 8, !tbaa !833, !range !23, !noundef !24
  %i.amc = trunc nuw i8 %i.amb to i1
  %i.amd = load i64, ptr %i.aht, align 8, !tbaa !856 ; 2 uses
  br i1 %i.amc, label %bb.ei, label %bb.ej

bb.ei:                                            ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit369
  %i.ame = add i64 %i.ahz, %i.amd
  %i.amf = and i64 %i.ame, %i.ahx
  br label %.lr.ph.i375

bb.ej:                                            ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit369
  %i.amg = add i64 %i.ahw, %i.amd
  %i.amh = and i64 %i.amg, %i.ahx
  %i.ami = add nsw i64 %i.amh, %i.i
  br label %.lr.ph.i375

.lr.ph.i375:                                      ; preds = %bb.ej, %bb.ei
  %storemerge = phi i64 [ %i.ami, %bb.ej ], [ %i.amf, %bb.ei ]
  store i64 %storemerge, ptr %i.aht, align 8, !tbaa !856
  %.sroa.0.0.copyload.i.i371 = load i8, ptr %i.aia, align 8, !tbaa !184
  %.sroa.speculated.i372 = tail call i8 @llvm.umax.i8(i8 %i.j, i8 %.sroa.0.0.copyload.i.i371)
  store i8 %.sroa.speculated.i372, ptr %i.aia, align 8, !tbaa !184
  tail call void @_ZN4llvm7CCState18ensureMaxAlignmentENS_5AlignE(ptr noundef nonnull align 8 dereferenceable(420) %7, i8 %i.j) #31
  %i.amj = load ptr, ptr %i.acm, align 8, !tbaa !26 ; 10 uses
  %i.amk = getelementptr inbounds nuw [4 x i8], ptr %i.amj, i64 %i.afi
  %i.aml = load i32, ptr %i.amk, align 4, !tbaa !318 ; 2 uses
  %i.amm = and i32 %i.afm, %i.aml
  %.not.i377 = icmp eq i32 %i.amm, 0
  br i1 %.not.i377, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit380.backedge, label %bb.ek

bb.ek:                                            ; preds = %.lr.ph.i375
  %i.amn = getelementptr inbounds nuw [4 x i8], ptr %i.amj, i64 %i.ajt
  %i.amo = load i32, ptr %i.amn, align 4, !tbaa !318
  %i.amp = and i32 %i.ajv, %i.amo
  %.not.i377.1 = icmp eq i32 %i.amp, 0
  br i1 %.not.i377.1, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit380.backedge, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.amq = getelementptr inbounds nuw [4 x i8], ptr %i.amj, i64 %i.ajy
  %i.amr = load i32, ptr %i.amq, align 4, !tbaa !318
  %i.ams = and i32 %i.aka, %i.amr
  %.not.i377.2 = icmp eq i32 %i.ams, 0
  br i1 %.not.i377.2, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit380.backedge, label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.amt = getelementptr inbounds nuw [4 x i8], ptr %i.amj, i64 %i.akd
  %i.amu = load i32, ptr %i.amt, align 4, !tbaa !318
  %i.amv = and i32 %i.akf, %i.amu
  %.not.i377.3 = icmp eq i32 %i.amv, 0
  br i1 %.not.i377.3, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit380.backedge, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.amw = getelementptr inbounds nuw [4 x i8], ptr %i.amj, i64 %i.aki
  %i.amx = load i32, ptr %i.amw, align 4, !tbaa !318
  %i.amy = and i32 %i.akk, %i.amx
  %.not.i377.4 = icmp eq i32 %i.amy, 0
  br i1 %.not.i377.4, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit380.backedge, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.amz = getelementptr inbounds nuw [4 x i8], ptr %i.amj, i64 %i.akn
  %i.ana = load i32, ptr %i.amz, align 4, !tbaa !318
  %i.anb = and i32 %i.akp, %i.ana
  %.not.i377.5 = icmp eq i32 %i.anb, 0
  br i1 %.not.i377.5, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit380.backedge, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.anc = getelementptr inbounds nuw [4 x i8], ptr %i.amj, i64 %i.aks
  %i.and = load i32, ptr %i.anc, align 4, !tbaa !318
  %i.ane = and i32 %i.aku, %i.and
  %.not.i377.6 = icmp eq i32 %i.ane, 0
  br i1 %.not.i377.6, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit380.backedge, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.anf = getelementptr inbounds nuw [4 x i8], ptr %i.amj, i64 %i.akx
  %i.ang = load i32, ptr %i.anf, align 4, !tbaa !318
  %i.anh = and i32 %i.akz, %i.ang
  %.not.i377.7 = icmp eq i32 %i.anh, 0
  br i1 %.not.i377.7, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit380.backedge, label %.critedge5.thread

_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit380.backedge: ; preds = %bb.eq, %bb.ep, %bb.eo, %bb.en, %bb.em, %bb.el, %bb.ek, %.lr.ph.i375
  %.in.be = phi i64 [ 7, %bb.eq ], [ 6, %bb.ep ], [ 5, %bb.eo ], [ 4, %bb.en ], [ 3, %bb.em ], [ 2, %bb.el ], [ 1, %bb.ek ], [ 0, %.lr.ph.i375 ]
  br label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit380, !llvm.loop !1144

.critedge5:                                       ; preds = %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit380, %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit380, %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit380, %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit380, %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit380, %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit380
  %i.ani = and i64 %4, 34359738368
  %.not = icmp eq i64 %i.ani, 0
  br i1 %.not, label %bb.er, label %bb.ft

.critedge5.thread:                                ; preds = %bb.eq, %bb.dz
  %i.anj = phi ptr [ %i.acn, %bb.dz ], [ %i.amj, %bb.eq ]
  %i.ank = and i64 %4, 34359738368
  %.not550 = icmp eq i64 %i.ank, 0
  br i1 %.not550, label %bb.er, label %.thread547

bb.er:                                            ; preds = %.critedge5.thread, %.critedge5
  %i.anl = phi ptr [ %i.anj, %.critedge5.thread ], [ %i.alb, %.critedge5 ]
  %i.anm = getelementptr inbounds nuw i8, ptr %i.anl, i64 40
  %i.ann = load i32, ptr %i.anm, align 4, !tbaa !318 ; 12 uses
  %i.ano = and i32 %i.ann, 32
  %.not.i.i383 = icmp eq i32 %i.ano, 0
  br i1 %.not.i.i383, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit386, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.anp = and i32 %i.ann, 64
  %.not.i.i383.1 = icmp eq i32 %i.anp, 0
  br i1 %.not.i.i383.1, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit386, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.anq = and i32 %i.ann, 128
  %.not.i.i383.2 = icmp eq i32 %i.anq, 0
  br i1 %.not.i.i383.2, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit386, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.anr = and i32 %i.ann, 256
  %.not.i.i383.3 = icmp eq i32 %i.anr, 0
  br i1 %.not.i.i383.3, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit386, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.ans = and i32 %i.ann, 512
  %.not.i.i383.4 = icmp eq i32 %i.ans, 0
  br i1 %.not.i.i383.4, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit386, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.ant = and i32 %i.ann, 1024
  %.not.i.i383.5 = icmp eq i32 %i.ant, 0
  br i1 %.not.i.i383.5, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit386, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.anu = and i32 %i.ann, 2048
  %.not.i.i383.6 = icmp eq i32 %i.anu, 0
  br i1 %.not.i.i383.6, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit386, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.anv = and i32 %i.ann, 4096
  %.not.i.i383.7 = icmp eq i32 %i.anv, 0
  br i1 %.not.i.i383.7, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit386, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.anw = and i32 %i.ann, 8192
  %.not.i.i383.8 = icmp eq i32 %i.anw, 0
  br i1 %.not.i.i383.8, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit386, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.anx = and i32 %i.ann, 16384
  %.not.i.i383.9 = icmp eq i32 %i.anx, 0
  br i1 %.not.i.i383.9, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit386, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %i.any = and i32 %i.ann, 32768
  %.not.i.i383.10 = icmp eq i32 %i.any, 0
  br i1 %.not.i.i383.10, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit386, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.anz = and i32 %i.ann, 65536
  %.not.i.i383.11 = icmp eq i32 %i.anz, 0
  br i1 %.not.i.i383.11, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit386, label %.critedge270

_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit386: ; preds = %bb.er, %bb.es, %bb.et, %bb.eu, %bb.ev, %bb.ew, %bb.ex, %bb.ey, %bb.ez, %bb.fa, %bb.fb, %bb.fc
  %.0613.i.i382.lcssa.wide = phi i64 [ 0, %bb.er ], [ 1, %bb.es ], [ 2, %bb.et ], [ 3, %bb.eu ], [ 4, %bb.ev ], [ 5, %bb.ew ], [ 6, %bb.ex ], [ 7, %bb.ey ], [ 8, %bb.ez ], [ 9, %bb.fa ], [ 10, %bb.fb ], [ 11, %bb.fc ]
  %i.aoa = getelementptr inbounds nuw [2 x i8], ptr @_ZZL6CC_AIXjN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEE2VR, i64 %.0613.i.i382.lcssa.wide
  %i.aob = load i16, ptr %i.aoa, align 2, !tbaa !191 ; 2 uses
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %7, i16 noundef zeroext %i.aob) #31
  %i.aoc = zext i16 %i.aob to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #31
  %i.aod = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i8 0, ptr %i.aod, align 8, !tbaa !869, !alias.scope !1145
  %i.aoe = getelementptr inbounds nuw i8, ptr %19, i64 16
  store i32 %0, ptr %i.aoe, align 8, !tbaa !858, !alias.scope !1145
  %i.aof = getelementptr inbounds nuw i8, ptr %19, i64 20 ; 2 uses
  %i.aog = load i8, ptr %i.aof, align 4, !alias.scope !1145
  %i.aoh = and i8 %i.aog, -128
  %i.aoi = trunc i32 %3 to i8
  %i.aoj = shl i8 %i.aoi, 1
  %i.aok = and i8 %i.aoj, 126
  %i.aol = or disjoint i8 %i.aoh, %i.aok
  store i8 %i.aol, ptr %i.aof, align 4, !alias.scope !1145
  %i.aom = getelementptr inbounds nuw i8, ptr %19, i64 22
  store i16 %1, ptr %i.aom, align 2, !tbaa !195, !alias.scope !1145
  %i.aon = getelementptr inbounds nuw i8, ptr %19, i64 24
  store i16 %2, ptr %i.aon, align 8, !tbaa !195, !alias.scope !1145
  store i32 %i.aoc, ptr %19, align 8, !tbaa !318, !alias.scope !1145
  %i.aoo = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.aop = load ptr, ptr %i.aoo, align 8, !tbaa !1110, !nonnull !24, !align !70 ; 4 uses
  %i.aoq = getelementptr inbounds nuw i8, ptr %i.aop, i64 8 ; 3 uses
  %i.aor = load i32, ptr %i.aoq, align 8, !tbaa !373 ; 2 uses
  %i.aos = getelementptr inbounds nuw i8, ptr %i.aop, i64 12
  %i.aot = load i32, ptr %i.aos, align 4, !tbaa !374
  %.not.i.i387 = icmp ult i32 %i.aor, %i.aot
  br i1 %.not.i.i387, label %bb.fe, label %bb.fd, !prof !871

bb.fd:                                            ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit386
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.aop, ptr noundef nonnull align 8 dereferenceable(26) %19)
  br label %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit388

bb.fe:                                            ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit386
  %i.aou = zext i32 %i.aor to i64
  %i.aov = load ptr, ptr %i.aop, align 8, !tbaa !26
  %i.aow = getelementptr inbounds nuw [32 x i8], ptr %i.aov, i64 %i.aou
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.aow, ptr noundef nonnull align 8 dereferenceable(32) %19, i64 32, i1 false)
  %i.aox = load i32, ptr %i.aoq, align 8, !tbaa !373
  %i.aoy = add i32 %i.aox, 1
  store i32 %i.aoy, ptr %i.aoq, align 8, !tbaa !373
  br label %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit388

_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit388: ; preds = %bb.fd, %bb.fe
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #31
  %i.aoz = select i1 %i.g, i16 535, i16 255       ; 2 uses
  %i.apa = zext nneg i16 %i.aoz to i32            ; 2 uses
  %i.apb = lshr i32 %i.apa, 5
  %i.apc = zext nneg i32 %i.apb to i64
  %i.apd = and i32 %i.apa, 31
  %i.ape = shl nuw i32 1, %i.apd
  %i.apf = select i1 %i.g, i16 536, i16 256       ; 2 uses
  %i.apg = zext nneg i16 %i.apf to i32            ; 2 uses
  %i.aph = lshr i32 %i.apg, 5
  %i.api = zext nneg i32 %i.aph to i64
  %i.apj = and i32 %i.apg, 24
  %i.apk = shl nuw nsw i32 1, %i.apj
  %i.apl = select i1 %i.g, i16 537, i16 257       ; 2 uses
  %i.apm = zext nneg i16 %i.apl to i32            ; 2 uses
  %i.apn = lshr i32 %i.apm, 5
  %i.apo = zext nneg i32 %i.apn to i64
  %i.app = and i32 %i.apm, 25
  %i.apq = shl nuw nsw i32 1, %i.app
  %i.apr = select i1 %i.g, i16 538, i16 258       ; 2 uses
  %i.aps = zext nneg i16 %i.apr to i32            ; 2 uses
  %i.apt = lshr i32 %i.aps, 5
  %i.apu = zext nneg i32 %i.apt to i64
  %i.apv = and i32 %i.aps, 26
  %i.apw = shl nuw nsw i32 1, %i.apv
  %i.apx = select i1 %i.g, i16 539, i16 259       ; 2 uses
  %i.apy = zext nneg i16 %i.apx to i32            ; 2 uses
  %i.apz = lshr i32 %i.apy, 5
  %i.aqa = zext nneg i32 %i.apz to i64
  %i.aqb = and i32 %i.apy, 27
  %i.aqc = shl nuw nsw i32 1, %i.aqb
  %i.aqd = select i1 %i.g, i16 540, i16 260       ; 2 uses
  %i.aqe = zext nneg i16 %i.aqd to i32            ; 2 uses
  %i.aqf = lshr i32 %i.aqe, 5
  %i.aqg = zext nneg i32 %i.aqf to i64
  %i.aqh = and i32 %i.aqe, 28
  %i.aqi = shl nuw nsw i32 1, %i.aqh
  %i.aqj = select i1 %i.g, i16 541, i16 261       ; 2 uses
  %i.aqk = zext nneg i16 %i.aqj to i32            ; 2 uses
  %i.aql = lshr i32 %i.aqk, 5
  %i.aqm = zext nneg i32 %i.aql to i64
  %i.aqn = and i32 %i.aqk, 29
  %i.aqo = shl nuw nsw i32 1, %i.aqn
  br label %.lr.ph.i.i394

bb.ff:                                            ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit399
  %i.aqp = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.aqq = load i8, ptr %i.aqp, align 8, !tbaa !833, !range !23, !noundef !24
  %i.aqr = trunc nuw i8 %i.aqq to i1
  %i.aqs = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 2 uses
  %i.aqt = load i64, ptr %i.aqs, align 8, !tbaa !856 ; 2 uses
  br i1 %i.aqr, label %bb.fg, label %bb.fh

bb.fg:                                            ; preds = %bb.ff
  %i.aqu = add i64 %i.aqt, 31
  %i.aqv = and i64 %i.aqu, -16
  br label %_ZN4llvm7CCState13AllocateStackEjNS_5AlignE.exit392

bb.fh:                                            ; preds = %bb.ff
  %i.aqw = add i64 %i.aqt, 15
  %i.aqx = and i64 %i.aqw, -16
  %i.aqy = add nsw i64 %i.aqx, 16
  br label %_ZN4llvm7CCState13AllocateStackEjNS_5AlignE.exit392

_ZN4llvm7CCState13AllocateStackEjNS_5AlignE.exit392: ; preds = %bb.fg, %bb.fh
  %storemerge551 = phi i64 [ %i.aqy, %bb.fh ], [ %i.aqv, %bb.fg ]
  store i64 %storemerge551, ptr %i.aqs, align 8, !tbaa !856
  %i.aqz = getelementptr inbounds nuw i8, ptr %7, i64 56 ; 2 uses
  %.sroa.0.0.copyload.i.i390 = load i8, ptr %i.aqz, align 8, !tbaa !184
  %.sroa.speculated.i391 = call i8 @llvm.umax.i8(i8 %.sroa.0.0.copyload.i.i390, i8 4)
  store i8 %.sroa.speculated.i391, ptr %i.aqz, align 8, !tbaa !184
  call void @_ZN4llvm7CCState18ensureMaxAlignmentENS_5AlignE(ptr noundef nonnull align 8 dereferenceable(420) %7, i8 4) #31
  br label %.loopexit

.lr.ph.i.i394:                                    ; preds = %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit388, %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit399
  %.0253586 = phi i32 [ 0, %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit388 ], [ %i.asa, %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit399 ]
  %i.ara = load ptr, ptr %i.acm, align 8, !tbaa !26 ; 8 uses
  %i.arb = getelementptr inbounds nuw [4 x i8], ptr %i.ara, i64 %i.afi
  %i.arc = load i32, ptr %i.arb, align 4, !tbaa !318
  %i.ard = and i32 %i.afm, %i.arc
  %.not.i.i396 = icmp eq i32 %i.ard, 0
  br i1 %.not.i.i396, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i398, label %bb.fi

bb.fi:                                            ; preds = %.lr.ph.i.i394
  %i.are = getelementptr inbounds nuw [4 x i8], ptr %i.ara, i64 %i.apc
  %i.arf = load i32, ptr %i.are, align 4, !tbaa !318
  %i.arg = and i32 %i.ape, %i.arf
  %.not.i.i396.1 = icmp eq i32 %i.arg, 0
  br i1 %.not.i.i396.1, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i398, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.arh = getelementptr inbounds nuw [4 x i8], ptr %i.ara, i64 %i.api
  %i.ari = load i32, ptr %i.arh, align 4, !tbaa !318
  %i.arj = and i32 %i.apk, %i.ari
  %.not.i.i396.2 = icmp eq i32 %i.arj, 0
  br i1 %.not.i.i396.2, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i398, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.ark = getelementptr inbounds nuw [4 x i8], ptr %i.ara, i64 %i.apo
  %i.arl = load i32, ptr %i.ark, align 4, !tbaa !318
  %i.arm = and i32 %i.apq, %i.arl
  %.not.i.i396.3 = icmp eq i32 %i.arm, 0
  br i1 %.not.i.i396.3, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i398, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.arn = getelementptr inbounds nuw [4 x i8], ptr %i.ara, i64 %i.apu
  %i.aro = load i32, ptr %i.arn, align 4, !tbaa !318
  %i.arp = and i32 %i.apw, %i.aro
  %.not.i.i396.4 = icmp eq i32 %i.arp, 0
  br i1 %.not.i.i396.4, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i398, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  %i.arq = getelementptr inbounds nuw [4 x i8], ptr %i.ara, i64 %i.aqa
  %i.arr = load i32, ptr %i.arq, align 4, !tbaa !318
  %i.ars = and i32 %i.aqc, %i.arr
  %.not.i.i396.5 = icmp eq i32 %i.ars, 0
  br i1 %.not.i.i396.5, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i398, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  %i.art = getelementptr inbounds nuw [4 x i8], ptr %i.ara, i64 %i.aqg
  %i.aru = load i32, ptr %i.art, align 4, !tbaa !318
  %i.arv = and i32 %i.aqi, %i.aru
  %.not.i.i396.6 = icmp eq i32 %i.arv, 0
  br i1 %.not.i.i396.6, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i398, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.arw = getelementptr inbounds nuw [4 x i8], ptr %i.ara, i64 %i.aqm
  %i.arx = load i32, ptr %i.arw, align 4, !tbaa !318
  %i.ary = and i32 %i.aqo, %i.arx
  %.not.i.i396.7 = icmp eq i32 %i.ary, 0
  br i1 %.not.i.i396.7, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i398, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit399

_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i398: ; preds = %.lr.ph.i.i394, %bb.fo, %bb.fn, %bb.fm, %bb.fl, %bb.fk, %bb.fj, %bb.fi
  %i.arz = phi i16 [ %i.aqj, %bb.fo ], [ %i.aoz, %bb.fi ], [ %i.apf, %bb.fj ], [ %i.apl, %bb.fk ], [ %i.apr, %bb.fl ], [ %i.apx, %bb.fm ], [ %i.aqd, %bb.fn ], [ %i.aff, %.lr.ph.i.i394 ]
  call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %7, i16 noundef zeroext %i.arz) #31
  br label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit399

_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit399: ; preds = %bb.fo, %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i398
  %i.asa = add i32 %.0253586, %i.h                ; 2 uses
  %.not258 = icmp eq i32 %i.asa, 16
  br i1 %.not258, label %bb.ff, label %.lr.ph.i.i394, !llvm.loop !1148

.critedge270:                                     ; preds = %bb.fc
  %32 = getelementptr inbounds nuw i8, ptr %7, i64 40
  %33 = load i8, ptr %32, align 8, !tbaa !833, !range !23, !noundef !24
  %34 = trunc nuw i8 %33 to i1
  %35 = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 2 uses
  %36 = load i64, ptr %35, align 8, !tbaa !856    ; 2 uses
  br i1 %34, label %bb.fp, label %bb.fq

bb.fp:                                            ; preds = %.critedge270
  %i.asb = add i64 %36, 31
  %i.asc = and i64 %i.asb, -16                    ; 2 uses
  %i.asd = sub i64 0, %i.asc
  br label %_ZN4llvm7CCState13AllocateStackEjNS_5AlignE.exit403

bb.fq:                                            ; preds = %.critedge270
  %i.ase = add i64 %36, 15
  %i.asf = and i64 %i.ase, -16                    ; 2 uses
  %i.asg = add nsw i64 %i.asf, 16
  br label %_ZN4llvm7CCState13AllocateStackEjNS_5AlignE.exit403

_ZN4llvm7CCState13AllocateStackEjNS_5AlignE.exit403: ; preds = %bb.fp, %bb.fq
  %.sink627 = phi i64 [ %i.asc, %bb.fp ], [ %i.asg, %bb.fq ]
  %.0.i400 = phi i64 [ %i.asd, %bb.fp ], [ %i.asf, %bb.fq ]
  store i64 %.sink627, ptr %35, align 8, !tbaa !856
  %i.ash = getelementptr inbounds nuw i8, ptr %7, i64 56 ; 2 uses
  %.sroa.0.0.copyload.i.i401 = load i8, ptr %i.ash, align 8, !tbaa !184
  %.sroa.speculated.i402 = tail call i8 @llvm.umax.i8(i8 %.sroa.0.0.copyload.i.i401, i8 4)
  store i8 %.sroa.speculated.i402, ptr %i.ash, align 8, !tbaa !184
  tail call void @_ZN4llvm7CCState18ensureMaxAlignmentENS_5AlignE(ptr noundef nonnull align 8 dereferenceable(420) %7, i8 4) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #31
  %i.asi = and i64 %.0.i400, 4294967295
  %i.asj = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.ask = getelementptr inbounds nuw i8, ptr %20, i64 16
  store i32 %0, ptr %i.ask, align 8, !tbaa !858, !alias.scope !1149
  %i.asl = getelementptr inbounds nuw i8, ptr %20, i64 20 ; 2 uses
  %i.asm = load i8, ptr %i.asl, align 4, !alias.scope !1149
  %i.asn = and i8 %i.asm, -128
  %i.aso = trunc i32 %3 to i8
  %i.asp = shl i8 %i.aso, 1
  %i.asq = and i8 %i.asp, 126
  %i.asr = or disjoint i8 %i.asn, %i.asq
  store i8 %i.asr, ptr %i.asl, align 4, !alias.scope !1149
  %i.ass = getelementptr inbounds nuw i8, ptr %20, i64 22
  store i16 %1, ptr %i.ass, align 2, !tbaa !195, !alias.scope !1149
  %i.ast = getelementptr inbounds nuw i8, ptr %20, i64 24
  store i16 %2, ptr %i.ast, align 8, !tbaa !195, !alias.scope !1149
  store i8 1, ptr %i.asj, align 8, !tbaa !869, !alias.scope !1149
  store i64 %i.asi, ptr %20, align 8, !tbaa !610, !alias.scope !1149
  %i.asu = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.asv = load ptr, ptr %i.asu, align 8, !tbaa !1110, !nonnull !24, !align !70 ; 4 uses
  %i.asw = getelementptr inbounds nuw i8, ptr %i.asv, i64 8 ; 3 uses
  %i.asx = load i32, ptr %i.asw, align 8, !tbaa !373 ; 2 uses
  %i.asy = getelementptr inbounds nuw i8, ptr %i.asv, i64 12
  %i.asz = load i32, ptr %i.asy, align 4, !tbaa !374
  %.not.i.i404 = icmp ult i32 %i.asx, %i.asz
  br i1 %.not.i.i404, label %bb.fs, label %bb.fr, !prof !871

bb.fr:                                            ; preds = %_ZN4llvm7CCState13AllocateStackEjNS_5AlignE.exit403
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.asv, ptr noundef nonnull align 8 dereferenceable(26) %20)
  br label %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit405

bb.fs:                                            ; preds = %_ZN4llvm7CCState13AllocateStackEjNS_5AlignE.exit403
  %i.ata = zext i32 %i.asx to i64
  %i.atb = load ptr, ptr %i.asv, align 8, !tbaa !26
  %i.atc = getelementptr inbounds nuw [32 x i8], ptr %i.atb, i64 %i.ata
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.atc, ptr noundef nonnull align 8 dereferenceable(32) %20, i64 32, i1 false)
  %i.atd = load i32, ptr %i.asw, align 8, !tbaa !373
  %i.ate = add i32 %i.atd, 1
  store i32 %i.ate, ptr %i.asw, align 8, !tbaa !373
  br label %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit405

_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit405: ; preds = %bb.fr, %bb.fs
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #31
  br label %.loopexit

.thread547:                                       ; preds = %.critedge5.thread
  %i.atf = tail call noundef i64 @_ZN4llvm7CCState13AllocateStackEjNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(420) %7, i32 noundef 16, i8 4)
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #31
  %i.atg = and i64 %i.atf, 4294967295
  %i.ath = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.ati = getelementptr inbounds nuw i8, ptr %21, i64 16
  store i32 %0, ptr %i.ati, align 8, !tbaa !858, !alias.scope !1152
  %i.atj = getelementptr inbounds nuw i8, ptr %21, i64 20 ; 2 uses
  %i.atk = load i8, ptr %i.atj, align 4, !alias.scope !1152
  %i.atl = and i8 %i.atk, -128
  %i.atm = trunc i32 %3 to i8
  %i.atn = shl i8 %i.atm, 1
  %i.ato = and i8 %i.atn, 126
  %i.atp = or disjoint i8 %i.atl, %i.ato
  store i8 %i.atp, ptr %i.atj, align 4, !alias.scope !1152
  %i.atq = getelementptr inbounds nuw i8, ptr %21, i64 22
  store i16 %1, ptr %i.atq, align 2, !tbaa !195, !alias.scope !1152
  %i.atr = getelementptr inbounds nuw i8, ptr %21, i64 24
  store i16 %2, ptr %i.atr, align 8, !tbaa !195, !alias.scope !1152
  store i8 1, ptr %i.ath, align 8, !tbaa !869, !alias.scope !1152
  store i64 %i.atg, ptr %21, align 8, !tbaa !610, !alias.scope !1152
  call void @_ZN4llvm7CCState6addLocERKNS_11CCValAssignE(ptr noundef nonnull align 8 dereferenceable(420) %7, ptr noundef nonnull align 8 dereferenceable(26) %21)
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #31
  br label %.loopexit

bb.ft:                                            ; preds = %.critedge5
  %i.ats = icmp eq i16 %i.ald, 260
  %i.att = tail call noundef i64 @_ZN4llvm7CCState13AllocateStackEjNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(420) %7, i32 noundef 16, i8 4)
  %i.atu = and i64 %i.att, 4294967295             ; 2 uses
  %i.atv = trunc i32 %3 to i8
  %i.atw = shl i8 %i.atv, 1
  %i.atx = and i8 %i.atw, 126                     ; 5 uses
  br i1 %i.ats, label %bb.fu, label %bb.fx

bb.fu:                                            ; preds = %bb.ft
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #31
  %i.aty = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.atz = getelementptr inbounds nuw i8, ptr %22, i64 16
  store i32 %0, ptr %i.atz, align 8, !tbaa !858, !alias.scope !1155
  %i.aua = getelementptr inbounds nuw i8, ptr %22, i64 20 ; 2 uses
  %i.aub = load i8, ptr %i.aua, align 4, !alias.scope !1155
  %i.auc = and i8 %i.aub, -128
  %i.aud = or disjoint i8 %i.atx, %i.auc
  %i.aue = or disjoint i8 %i.aud, 1
  store i8 %i.aue, ptr %i.aua, align 4, !alias.scope !1155
  %i.auf = getelementptr inbounds nuw i8, ptr %22, i64 22
  store i16 %1, ptr %i.auf, align 2, !tbaa !195, !alias.scope !1155
  %i.aug = getelementptr inbounds nuw i8, ptr %22, i64 24
  store i16 %2, ptr %i.aug, align 8, !tbaa !195, !alias.scope !1155
  store i8 1, ptr %i.aty, align 8, !tbaa !869, !alias.scope !1155
  store i64 %i.atu, ptr %22, align 8, !tbaa !610, !alias.scope !1155
  call void @_ZN4llvm7CCState6addLocERKNS_11CCValAssignE(ptr noundef nonnull align 8 dereferenceable(420) %7, ptr noundef nonnull align 8 dereferenceable(26) %22)
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #31
  %i.auh = load ptr, ptr %i.acm, align 8, !tbaa !26
  %i.aui = getelementptr inbounds nuw i8, ptr %i.auh, i64 32
  %i.auj = load i32, ptr %i.aui, align 4, !tbaa !318 ; 2 uses
  %i.auk = and i32 %i.auj, 16
  %.not.i406 = icmp eq i32 %i.auk, 0
  br i1 %.not.i406, label %bb.fv, label %_ZN4llvm7CCState11AllocateRegEt.exit408

bb.fv:                                            ; preds = %bb.fu
  call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %7, i16 noundef zeroext 260) #31
  %.pre629 = load ptr, ptr %i.acm, align 8, !tbaa !26
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre629, i64 32
  %.pre630 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !318
  br label %_ZN4llvm7CCState11AllocateRegEt.exit408

_ZN4llvm7CCState11AllocateRegEt.exit408:          ; preds = %bb.fu, %bb.fv
  %i.aul = phi i32 [ %.pre630, %bb.fv ], [ %i.auj, %bb.fu ]
  %.sroa.03.0.i407 = phi i32 [ 260, %bb.fv ], [ 0, %bb.fu ]
  %i.aum = and i32 %i.aul, 32
  %.not.i409 = icmp eq i32 %i.aum, 0
  br i1 %.not.i409, label %bb.fw, label %_ZN4llvm7CCState11AllocateRegEt.exit411

bb.fw:                                            ; preds = %_ZN4llvm7CCState11AllocateRegEt.exit408
  call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %7, i16 noundef zeroext 261) #31
  br label %_ZN4llvm7CCState11AllocateRegEt.exit411

_ZN4llvm7CCState11AllocateRegEt.exit411:          ; preds = %_ZN4llvm7CCState11AllocateRegEt.exit408, %bb.fw
  %.sroa.03.0.i410 = phi i32 [ 261, %bb.fw ], [ 0, %_ZN4llvm7CCState11AllocateRegEt.exit408 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #31
  %i.aun = getelementptr inbounds nuw i8, ptr %23, i64 8
  store i8 0, ptr %i.aun, align 8, !tbaa !869, !alias.scope !1160
  %i.auo = getelementptr inbounds nuw i8, ptr %23, i64 16
  store i32 %0, ptr %i.auo, align 8, !tbaa !858, !alias.scope !1160
  %i.aup = getelementptr inbounds nuw i8, ptr %23, i64 20 ; 2 uses
  %i.auq = load i8, ptr %i.aup, align 4, !alias.scope !1160
  %i.aur = and i8 %i.auq, -128
  %i.aus = or disjoint i8 %i.atx, %i.aur
  %i.aut = or disjoint i8 %i.aus, 1
  store i8 %i.aut, ptr %i.aup, align 4, !alias.scope !1160
  %i.auu = getelementptr inbounds nuw i8, ptr %23, i64 22
  store i16 %1, ptr %i.auu, align 2, !tbaa !195, !alias.scope !1160
  %i.auv = getelementptr inbounds nuw i8, ptr %23, i64 24
  store i16 %i.k, ptr %i.auv, align 8, !tbaa !195, !alias.scope !1160
  store i32 %.sroa.03.0.i407, ptr %23, align 8, !tbaa !318, !alias.scope !1160
  call void @_ZN4llvm7CCState6addLocERKNS_11CCValAssignE(ptr noundef nonnull align 8 dereferenceable(420) %7, ptr noundef nonnull align 8 dereferenceable(26) %23)
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #31
  %i.auw = getelementptr inbounds nuw i8, ptr %24, i64 8
  store i8 0, ptr %i.auw, align 8, !tbaa !869, !alias.scope !1165
  %i.aux = getelementptr inbounds nuw i8, ptr %24, i64 16
  store i32 %0, ptr %i.aux, align 8, !tbaa !858, !alias.scope !1165
  %i.auy = getelementptr inbounds nuw i8, ptr %24, i64 20 ; 2 uses
  %i.auz = load i8, ptr %i.auy, align 4, !alias.scope !1165
  %i.ava = and i8 %i.auz, -128
  %i.avb = or disjoint i8 %i.atx, %i.ava
  %i.avc = or disjoint i8 %i.avb, 1
  store i8 %i.avc, ptr %i.auy, align 4, !alias.scope !1165
  %i.avd = getelementptr inbounds nuw i8, ptr %24, i64 22
  store i16 %1, ptr %i.avd, align 2, !tbaa !195, !alias.scope !1165
  %i.ave = getelementptr inbounds nuw i8, ptr %24, i64 24
  store i16 %i.k, ptr %i.ave, align 8, !tbaa !195, !alias.scope !1165
  store i32 %.sroa.03.0.i410, ptr %24, align 8, !tbaa !318, !alias.scope !1165
  call void @_ZN4llvm7CCState6addLocERKNS_11CCValAssignE(ptr noundef nonnull align 8 dereferenceable(420) %7, ptr noundef nonnull align 8 dereferenceable(26) %24)
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #31
  br label %.loopexit

bb.fx:                                            ; preds = %bb.ft
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #31
  %i.avf = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.avg = getelementptr inbounds nuw i8, ptr %25, i64 16
  store i32 %0, ptr %i.avg, align 8, !tbaa !858, !alias.scope !1170
  %i.avh = getelementptr inbounds nuw i8, ptr %25, i64 20 ; 2 uses
  %i.avi = load i8, ptr %i.avh, align 4, !alias.scope !1170
  %i.avj = and i8 %i.avi, -128
  %i.avk = or disjoint i8 %i.atx, %i.avj
  %i.avl = or disjoint i8 %i.avk, 1
  store i8 %i.avl, ptr %i.avh, align 4, !alias.scope !1170
  %i.avm = getelementptr inbounds nuw i8, ptr %25, i64 22
  store i16 %1, ptr %i.avm, align 2, !tbaa !195, !alias.scope !1170
  %i.avn = getelementptr inbounds nuw i8, ptr %25, i64 24
  store i16 %2, ptr %i.avn, align 8, !tbaa !195, !alias.scope !1170
end_hunk_1
