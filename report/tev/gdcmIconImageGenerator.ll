Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/gdcmIconImageGenerator?download=true
inline.NumInlined: 1566
inline.NumDeleted: 662
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_ZN4gdcm12quantization5Block6shrinkEv:.preheader20
  %i.vk = insertelement <8 x i8> %i.vj, i8 %i.vc, i64 6
  %i.vl = insertelement <8 x i8> %i.vk, i8 %i.vd, i64 7
  %i.vm = tail call <8 x i8> @llvm.umin.v8i8(<8 x i8> %i.vl, <8 x i8> %vec.phi74) ; 2 uses
  %i.vn = load i8, ptr %i.uh, align 1, !tbaa !36, !alias.scope !119
  %i.vo = load i8, ptr %i.uj, align 1, !tbaa !36, !alias.scope !119
  %i.vp = load i8, ptr %i.ul, align 1, !tbaa !36, !alias.scope !119
  %i.vq = load i8, ptr %i.un, align 1, !tbaa !36, !alias.scope !119
  %i.vr = load i8, ptr %i.up, align 1, !tbaa !36, !alias.scope !119
  %i.vs = load i8, ptr %i.ur, align 1, !tbaa !36, !alias.scope !119
  %i.vt = load i8, ptr %i.ut, align 1, !tbaa !36, !alias.scope !119
  %i.vu = load i8, ptr %i.uv, align 1, !tbaa !36, !alias.scope !119
  %i.vv = insertelement <8 x i8> poison, i8 %i.vn, i64 0
  %i.vw = insertelement <8 x i8> %i.vv, i8 %i.vo, i64 1
  %i.vx = insertelement <8 x i8> %i.vw, i8 %i.vp, i64 2
  %i.vy = insertelement <8 x i8> %i.vx, i8 %i.vq, i64 3
  %i.vz = insertelement <8 x i8> %i.vy, i8 %i.vr, i64 4
  %i.wa = insertelement <8 x i8> %i.vz, i8 %i.vs, i64 5
  %i.wb = insertelement <8 x i8> %i.wa, i8 %i.vt, i64 6
  %i.wc = insertelement <8 x i8> %i.wb, i8 %i.vu, i64 7
  %i.wd = tail call <8 x i8> @llvm.umax.v8i8(<8 x i8> %vec.phi73, <8 x i8> %i.wc) ; 2 uses
  %i.we = getelementptr inbounds nuw i8, ptr %i.ug, i64 4 ; 2 uses
  %i.wf = getelementptr inbounds nuw i8, ptr %i.ui, i64 7 ; 2 uses
  %i.wg = getelementptr inbounds nuw i8, ptr %i.uk, i64 10 ; 2 uses
  %i.wh = getelementptr inbounds nuw i8, ptr %i.um, i64 13 ; 2 uses
  %i.wi = getelementptr inbounds nuw i8, ptr %i.uo, i64 16 ; 2 uses
  %i.wj = getelementptr inbounds nuw i8, ptr %i.uq, i64 19 ; 2 uses
  %i.wk = getelementptr inbounds nuw i8, ptr %i.us, i64 22 ; 2 uses
  %i.wl = getelementptr i8, ptr %i.uu, i64 25     ; 2 uses
  %i.wm = load i8, ptr %i.we, align 1, !tbaa !36, !alias.scope !119
  %i.wn = load i8, ptr %i.wf, align 1, !tbaa !36, !alias.scope !119
  %i.wo = load i8, ptr %i.wg, align 1, !tbaa !36, !alias.scope !119
  %i.wp = load i8, ptr %i.wh, align 1, !tbaa !36, !alias.scope !119
  %i.wq = load i8, ptr %i.wi, align 1, !tbaa !36, !alias.scope !119
  %i.wr = load i8, ptr %i.wj, align 1, !tbaa !36, !alias.scope !119
  %i.ws = load i8, ptr %i.wk, align 1, !tbaa !36, !alias.scope !119
  %i.wt = load i8, ptr %i.wl, align 1, !tbaa !36, !alias.scope !119
  %i.wu = insertelement <8 x i8> poison, i8 %i.wm, i64 0
  %i.wv = insertelement <8 x i8> %i.wu, i8 %i.wn, i64 1
  %i.ww = insertelement <8 x i8> %i.wv, i8 %i.wo, i64 2
  %i.wx = insertelement <8 x i8> %i.ww, i8 %i.wp, i64 3
  %i.wy = insertelement <8 x i8> %i.wx, i8 %i.wq, i64 4
  %i.wz = insertelement <8 x i8> %i.wy, i8 %i.wr, i64 5
  %i.xa = insertelement <8 x i8> %i.wz, i8 %i.ws, i64 6
  %i.xb = insertelement <8 x i8> %i.xa, i8 %i.wt, i64 7
  %i.xc = tail call <8 x i8> @llvm.umin.v8i8(<8 x i8> %i.xb, <8 x i8> %vec.phi72) ; 2 uses
  %i.xd = load i8, ptr %i.we, align 1, !tbaa !36, !alias.scope !119
  %i.xe = load i8, ptr %i.wf, align 1, !tbaa !36, !alias.scope !119
  %i.xf = load i8, ptr %i.wg, align 1, !tbaa !36, !alias.scope !119
  %i.xg = load i8, ptr %i.wh, align 1, !tbaa !36, !alias.scope !119
  %i.xh = load i8, ptr %i.wi, align 1, !tbaa !36, !alias.scope !119
  %i.xi = load i8, ptr %i.wj, align 1, !tbaa !36, !alias.scope !119
  %i.xj = load i8, ptr %i.wk, align 1, !tbaa !36, !alias.scope !119
  %i.xk = load i8, ptr %i.wl, align 1, !tbaa !36, !alias.scope !119
  %i.xl = insertelement <8 x i8> poison, i8 %i.xd, i64 0
  %i.xm = insertelement <8 x i8> %i.xl, i8 %i.xe, i64 1
  %i.xn = insertelement <8 x i8> %i.xm, i8 %i.xf, i64 2
  %i.xo = insertelement <8 x i8> %i.xn, i8 %i.xg, i64 3
  %i.xp = insertelement <8 x i8> %i.xo, i8 %i.xh, i64 4
  %i.xq = insertelement <8 x i8> %i.xp, i8 %i.xi, i64 5
  %i.xr = insertelement <8 x i8> %i.xq, i8 %i.xj, i64 6
  %i.xs = insertelement <8 x i8> %i.xr, i8 %i.xk, i64 7
  %i.xt = tail call <8 x i8> @llvm.umax.v8i8(<8 x i8> %vec.phi71, <8 x i8> %i.xs) ; 2 uses
  %i.xu = getelementptr inbounds nuw i8, ptr %i.ug, i64 5 ; 2 uses
  %i.xv = getelementptr inbounds nuw i8, ptr %i.ui, i64 8 ; 2 uses
  %i.xw = getelementptr inbounds nuw i8, ptr %i.uk, i64 11 ; 2 uses
  %i.xx = getelementptr inbounds nuw i8, ptr %i.um, i64 14 ; 2 uses
  %i.xy = getelementptr inbounds nuw i8, ptr %i.uo, i64 17 ; 2 uses
  %i.xz = getelementptr inbounds nuw i8, ptr %i.uq, i64 20 ; 2 uses
  %i.ya = getelementptr inbounds nuw i8, ptr %i.us, i64 23 ; 2 uses
  %i.yb = getelementptr i8, ptr %i.uu, i64 26     ; 2 uses
  %i.yc = load i8, ptr %i.xu, align 1, !tbaa !36, !alias.scope !119
  %i.yd = load i8, ptr %i.xv, align 1, !tbaa !36, !alias.scope !119
  %i.ye = load i8, ptr %i.xw, align 1, !tbaa !36, !alias.scope !119
  %i.yf = load i8, ptr %i.xx, align 1, !tbaa !36, !alias.scope !119
  %i.yg = load i8, ptr %i.xy, align 1, !tbaa !36, !alias.scope !119
  %i.yh = load i8, ptr %i.xz, align 1, !tbaa !36, !alias.scope !119
  %i.yi = load i8, ptr %i.ya, align 1, !tbaa !36, !alias.scope !119
  %i.yj = load i8, ptr %i.yb, align 1, !tbaa !36, !alias.scope !119
  %i.yk = insertelement <8 x i8> poison, i8 %i.yc, i64 0
  %i.yl = insertelement <8 x i8> %i.yk, i8 %i.yd, i64 1
  %i.ym = insertelement <8 x i8> %i.yl, i8 %i.ye, i64 2
  %i.yn = insertelement <8 x i8> %i.ym, i8 %i.yf, i64 3
  %i.yo = insertelement <8 x i8> %i.yn, i8 %i.yg, i64 4
  %i.yp = insertelement <8 x i8> %i.yo, i8 %i.yh, i64 5
  %i.yq = insertelement <8 x i8> %i.yp, i8 %i.yi, i64 6
  %i.yr = insertelement <8 x i8> %i.yq, i8 %i.yj, i64 7
  %i.ys = tail call <8 x i8> @llvm.umin.v8i8(<8 x i8> %i.yr, <8 x i8> %vec.phi70) ; 2 uses
  %i.yt = load i8, ptr %i.xu, align 1, !tbaa !36, !alias.scope !119
  %i.yu = load i8, ptr %i.xv, align 1, !tbaa !36, !alias.scope !119
  %i.yv = load i8, ptr %i.xw, align 1, !tbaa !36, !alias.scope !119
  %i.yw = load i8, ptr %i.xx, align 1, !tbaa !36, !alias.scope !119
  %i.yx = load i8, ptr %i.xy, align 1, !tbaa !36, !alias.scope !119
  %i.yy = load i8, ptr %i.xz, align 1, !tbaa !36, !alias.scope !119
  %i.yz = load i8, ptr %i.ya, align 1, !tbaa !36, !alias.scope !119
  %i.za = load i8, ptr %i.yb, align 1, !tbaa !36, !alias.scope !119
  %i.zb = insertelement <8 x i8> poison, i8 %i.yt, i64 0
  %i.zc = insertelement <8 x i8> %i.zb, i8 %i.yu, i64 1
  %i.zd = insertelement <8 x i8> %i.zc, i8 %i.yv, i64 2
  %i.ze = insertelement <8 x i8> %i.zd, i8 %i.yw, i64 3
  %i.zf = insertelement <8 x i8> %i.ze, i8 %i.yx, i64 4
  %i.zg = insertelement <8 x i8> %i.zf, i8 %i.yy, i64 5
  %i.zh = insertelement <8 x i8> %i.zg, i8 %i.yz, i64 6
  %i.zi = insertelement <8 x i8> %i.zh, i8 %i.za, i64 7
  %i.zj = tail call <8 x i8> @llvm.umax.v8i8(<8 x i8> %vec.phi69, <8 x i8> %i.zi) ; 2 uses
  %index.next75 = add nuw i64 %index68, 8         ; 2 uses
  %i.zk = icmp eq i64 %index.next75, %n.vec55
  br i1 %i.zk, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !117

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.zl = tail call i8 @llvm.vector.reduce.umax.v8i8(<8 x i8> %i.zj) ; 2 uses
  %i.zm = tail call i8 @llvm.vector.reduce.umin.v8i8(<8 x i8> %i.ys) ; 2 uses
  %i.zn = tail call i8 @llvm.vector.reduce.umax.v8i8(<8 x i8> %i.xt) ; 2 uses
  %i.zo = tail call i8 @llvm.vector.reduce.umin.v8i8(<8 x i8> %i.xc) ; 2 uses
  %i.zp = tail call i8 @llvm.vector.reduce.umax.v8i8(<8 x i8> %i.wd) ; 2 uses
  %i.zq = tail call i8 @llvm.vector.reduce.umin.v8i8(<8 x i8> %i.vm) ; 2 uses
  store i8 %i.zq, ptr %0, align 8, !tbaa !36, !alias.scope !120, !noalias !119
  store i8 %i.zp, ptr %i.b, align 1, !tbaa !36, !alias.scope !120, !noalias !119
  store i8 %i.zo, ptr %i.h, align 1, !tbaa !36, !alias.scope !120, !noalias !119
  store i8 %i.zn, ptr %i.g, align 4, !tbaa !36, !alias.scope !120, !noalias !119
  store i8 %i.zm, ptr %i.l, align 2, !tbaa !36, !alias.scope !120, !noalias !119
  store i8 %i.zl, ptr %i.k, align 1, !tbaa !36, !alias.scope !120, !noalias !119
  %cmp.n76 = icmp eq i64 %i.q, %n.vec55
  br i1 %cmp.n76, label %._crit_edge, label %.preheader.preheader

.preheader.preheader:                             ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i8 [ %i.j, %iter.check ], [ %i.j, %vector.memcheck ], [ %i.tz, %vec.epilog.iter.check ], [ %i.zl, %vec.epilog.middle.block ]
  %.ph84 = phi i8 [ %i.j, %iter.check ], [ %i.j, %vector.memcheck ], [ %i.ua, %vec.epilog.iter.check ], [ %i.zm, %vec.epilog.middle.block ]
  %.ph85 = phi i8 [ %i.f, %iter.check ], [ %i.f, %vector.memcheck ], [ %i.ub, %vec.epilog.iter.check ], [ %i.zn, %vec.epilog.middle.block ]
  %.ph86 = phi i8 [ %i.f, %iter.check ], [ %i.f, %vector.memcheck ], [ %i.uc, %vec.epilog.iter.check ], [ %i.zo, %vec.epilog.middle.block ]
  %.ph87 = phi i8 [ %i.d, %iter.check ], [ %i.d, %vector.memcheck ], [ %i.ud, %vec.epilog.iter.check ], [ %i.zp, %vec.epilog.middle.block ]
  %.ph88 = phi i8 [ %i.d, %iter.check ], [ %i.d, %vector.memcheck ], [ %i.ue, %vec.epilog.iter.check ], [ %i.zq, %vec.epilog.middle.block ]
  %indvars.iv.ph = phi i64 [ 1, %iter.check ], [ 1, %vector.memcheck ], [ %i.t, %vec.epilog.iter.check ], [ %i.uf, %vec.epilog.middle.block ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %i.zr = phi i8 [ %i.aal, %.preheader ], [ %.ph, %.preheader.preheader ]
  %i.zs = phi i8 [ %i.aaj, %.preheader ], [ %.ph84, %.preheader.preheader ]
  %i.zt = phi i8 [ %i.aag, %.preheader ], [ %.ph85, %.preheader.preheader ]
  %i.zu = phi i8 [ %i.aae, %.preheader ], [ %.ph86, %.preheader.preheader ]
  %i.zv = phi i8 [ %i.aab, %.preheader ], [ %.ph87, %.preheader.preheader ]
  %i.zw = phi i8 [ %i.zz, %.preheader ], [ %.ph88, %.preheader.preheader ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader ], [ %indvars.iv.ph, %.preheader.preheader ] ; 2 uses
  %i.zx = getelementptr inbounds nuw [3 x i8], ptr %i.c, i64 %indvars.iv ; 4 uses
  %i.zy = load i8, ptr %i.zx, align 1, !tbaa !36
  %i.zz = tail call i8 @llvm.umin.i8(i8 %i.zy, i8 %i.zw) ; 2 uses
  store i8 %i.zz, ptr %0, align 8, !tbaa !36
  %i.aaa = load i8, ptr %i.zx, align 1, !tbaa !36
  %i.aab = tail call i8 @llvm.umax.i8(i8 %i.zv, i8 %i.aaa) ; 2 uses
  store i8 %i.aab, ptr %i.b, align 1, !tbaa !36
  %i.aac = getelementptr inbounds nuw i8, ptr %i.zx, i64 1 ; 2 uses
  %i.aad = load i8, ptr %i.aac, align 1, !tbaa !36
  %i.aae = tail call i8 @llvm.umin.i8(i8 %i.aad, i8 %i.zu) ; 2 uses
  store i8 %i.aae, ptr %i.h, align 1, !tbaa !36
  %i.aaf = load i8, ptr %i.aac, align 1, !tbaa !36
  %i.aag = tail call i8 @llvm.umax.i8(i8 %i.zt, i8 %i.aaf) ; 2 uses
  store i8 %i.aag, ptr %i.g, align 4, !tbaa !36
  %i.aah = getelementptr inbounds nuw i8, ptr %i.zx, i64 2 ; 2 uses
  %i.aai = load i8, ptr %i.aah, align 1, !tbaa !36
  %i.aaj = tail call i8 @llvm.umin.i8(i8 %i.aai, i8 %i.zs) ; 2 uses
  store i8 %i.aaj, ptr %i.l, align 2, !tbaa !36
  %i.aak = load i8, ptr %i.aah, align 1, !tbaa !36
  %i.aal = tail call i8 @llvm.umax.i8(i8 %i.zr, i8 %i.aak) ; 2 uses
  store i8 %i.aal, ptr %i.k, align 1, !tbaa !36
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aam = icmp samesign ult i64 %indvars.iv.next, %i.p
  br i1 %i.aam, label %.preheader, label %._crit_edge, !llvm.loop !118

._crit_edge:                                      ; preds = %.preheader, %middle.block, %vec.epilog.middle.block, %.preheader20
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4gdcm12quantization9medianCutERKNS_11DataElementEijRNSt3__16vectorIhNS4_9allocatorIhEEEE(ptr dead_on_unwind noalias writable sret(%"class.std::__1::list") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.gdcm::quantization::CoordinatePointComparator.39", align 1 ; 3 uses
  %6 = alloca %"class.gdcm::quantization::CoordinatePointComparator.38", align 1 ; 3 uses
  %7 = alloca %"class.gdcm::quantization::CoordinatePointComparator", align 1 ; 3 uses
  %8 = alloca %"class.std::__1::priority_queue", align 8 ; 19 uses
  %9 = alloca %"class.gdcm::quantization::Block", align 8 ; 13 uses
  %10 = alloca %"class.gdcm::quantization::Block", align 8 ; 18 uses
  %11 = alloca %"class.gdcm::quantization::Block", align 8 ; 18 uses
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 40) #26 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 210, ptr noundef nonnull @.str.2)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN4gdcm9ExceptionE, ptr nonnull @_ZN4gdcm9ExceptionD2Ev) #27
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.b) #26
  br label %bb.bk

bb.e:                                             ; preds = %bb.a
  %i.d = zext nneg i32 %2 to i64                  ; 8 uses
  %i.e = mul nuw nsw i64 %i.d, 3                  ; 2 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.e) #25 ; 48 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !43   ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_ZNK4gdcm11DataElement12GetByteValueEv.exit.thread, label %_ZNK4gdcm11DataElement12GetByteValueEv.exit

_ZNK4gdcm11DataElement12GetByteValueEv.exit:      ; preds = %bb.e
  %i.j = tail call ptr @__dynamic_cast(ptr nonnull %i.h, ptr nonnull @_ZTIN4gdcm5ValueE, ptr nonnull @_ZTIN4gdcm9ByteValueE, i64 0) #26 ; 5 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %_ZNK4gdcm11DataElement12GetByteValueEv.exit.thread, label %bb.h

_ZNK4gdcm11DataElement12GetByteValueEv.exit.thread: ; preds = %bb.e, %_ZNK4gdcm11DataElement12GetByteValueEv.exit
  %i.k = tail call ptr @__cxa_allocate_exception(i64 40) #26 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.k, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 215, ptr noundef nonnull @.str.2)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %_ZNK4gdcm11DataElement12GetByteValueEv.exit.thread
  tail call void @__cxa_throw(ptr nonnull %i.k, ptr nonnull @_ZTIN4gdcm9ExceptionE, ptr nonnull @_ZN4gdcm9ExceptionD2Ev) #27
  unreachable

bb.g:                                             ; preds = %_ZNK4gdcm11DataElement12GetByteValueEv.exit.thread
  %i.l = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.k) #26
  br label %bb.bk

bb.h:                                             ; preds = %_ZNK4gdcm11DataElement12GetByteValueEv.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !48   ; 7 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !49
  %i.q = icmp eq ptr %i.n, %i.p
  %.not111171 = icmp eq ptr %i.n, null
  %.not111 = or i1 %.not111171, %i.q
  br i1 %.not111, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.r = tail call ptr @__cxa_allocate_exception(i64 40) #26 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.r, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 217, ptr noundef nonnull @.str.2)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @__cxa_throw(ptr nonnull %i.r, ptr nonnull @_ZTIN4gdcm9ExceptionE, ptr nonnull @_ZN4gdcm9ExceptionD2Ev) #27
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.s = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.r) #26
  br label %bb.bk

bb.l:                                             ; preds = %bb.h
  %i.t = load ptr, ptr %i.j, align 8, !tbaa !29
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = tail call i32 %i.v(ptr noundef nonnull align 8 dereferenceable(44) %i.j)
  %i.x = zext i32 %i.w to i64
  %i.y = icmp eq i64 %i.e, %i.x
  br i1 %i.y, label %.lr.ph.preheader, label %bb.m

.lr.ph.preheader:                                 ; preds = %bb.l
  %xtraiter = and i64 %i.d, 1
  %i.z = icmp eq i32 %2, 1
  br i1 %i.z, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.d, 2147483646
  br label %.lr.ph

bb.m:                                             ; preds = %bb.l
  %i.aa = tail call ptr @__cxa_allocate_exception(i64 40) #26 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.aa, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 219, ptr noundef nonnull @.str.2)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  tail call void @__cxa_throw(ptr nonnull %i.aa, ptr nonnull @_ZTIN4gdcm9ExceptionE, ptr nonnull @_ZN4gdcm9ExceptionD2Ev) #27
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.ab = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.aa) #26
  br label %bb.bk

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.ac = mul nuw nsw i64 %indvars.iv, 3
  %i.ad = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.ac ; 3 uses
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !36
  %i.af = getelementptr inbounds nuw [3 x i8], ptr %i.f, i64 %indvars.iv ; 3 uses
  store i8 %i.ae, ptr %i.af, align 1, !tbaa !36
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 1
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !36
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 1
  store i8 %i.ah, ptr %i.ai, align 1, !tbaa !36
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 2
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !36
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 2
  store i8 %i.ak, ptr %i.al, align 1, !tbaa !36
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.am = mul nuw nsw i64 %indvars.iv.next, 3
  %i.an = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.am ; 3 uses
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !36
  %i.ap = getelementptr inbounds nuw [3 x i8], ptr %i.f, i64 %indvars.iv.next ; 3 uses
  store i8 %i.ao, ptr %i.ap, align 1, !tbaa !36
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 1
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !36
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 1
  store i8 %i.ar, ptr %i.as, align 1, !tbaa !36
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 2
  %i.au = load i8, ptr %i.at, align 1, !tbaa !36
  %i.av = getelementptr inbounds nuw i8, ptr %i.ap, i64 2
  store i8 %i.au, ptr %i.av, align 1, !tbaa !36
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.lr.ph, !llvm.loop !121

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ] ; 2 uses
  %lcmp.mod599 = trunc i32 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod599)
  %i.aw = mul nuw nsw i64 %indvars.iv.epil.init, 3
  %i.ax = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.aw ; 3 uses
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !36
  %i.az = getelementptr inbounds nuw [3 x i8], ptr %i.f, i64 %indvars.iv.epil.init ; 3 uses
  store i8 %i.ay, ptr %i.az, align 1, !tbaa !36
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 1
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !36
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 1
  store i8 %i.bb, ptr %i.bc, align 1, !tbaa !36
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ax, i64 2
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !36
  %i.bf = getelementptr inbounds nuw i8, ptr %i.az, i64 2
  store i8 %i.be, ptr %i.bf, align 1, !tbaa !36
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.lr.ph.epil.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %8, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  %i.bg = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %i.f, ptr %i.bg, align 8, !tbaa !34
  %i.bh = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i32 %2, ptr %i.bh, align 8, !tbaa !35
  %i.bi = getelementptr inbounds nuw i8, ptr %9, i64 3 ; 2 uses
  %i.bj = load <2 x i8>, ptr %i.f, align 1, !tbaa !36 ; 5 uses
  %i.bk = shufflevector <2 x i8> %i.bj, <2 x i8> poison, <4 x i32> <i32 1, i32 1, i32 0, i32 0>
  %i.bl = extractelement <2 x i8> %i.bj, i64 1    ; 4 uses
  %i.bm = extractelement <2 x i8> %i.bj, i64 0    ; 4 uses
  store i8 %i.bm, ptr %i.bi, align 1, !tbaa !36
  store i8 %i.bm, ptr %9, align 8, !tbaa !36
  %i.bn = getelementptr inbounds nuw i8, ptr %9, i64 4 ; 2 uses
  store i8 %i.bl, ptr %i.bn, align 4, !tbaa !36
  %i.bo = getelementptr inbounds nuw i8, ptr %9, i64 1 ; 2 uses
  store i8 %i.bl, ptr %i.bo, align 1, !tbaa !36
  %i.bp = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !36  ; 7 uses
  %i.br = getelementptr inbounds nuw i8, ptr %9, i64 5 ; 2 uses
  store i8 %i.bq, ptr %i.br, align 1, !tbaa !36
  %i.bs = getelementptr inbounds nuw i8, ptr %9, i64 2 ; 2 uses
  store i8 %i.bq, ptr %i.bs, align 2, !tbaa !36
  %.not172 = icmp eq i32 %2, 1
  br i1 %.not172, label %_ZN4gdcm12quantization5Block6shrinkEv.exit, label %iter.check

iter.check:                                       ; preds = %._crit_edge
  %umax = tail call i64 @llvm.umax.i64(i64 %i.d, i64 2) ; 2 uses
  %i.bt = add nsw i64 %umax, -1                   ; 5 uses
  %min.iters.check = icmp ult i32 %2, 9
  br i1 %min.iters.check, label %.preheader.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check298 = icmp ult i32 %2, 33
  br i1 %min.iters.check298, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bu = and i64 %i.bt, 24
  %n.vec = and i64 %i.bt, -32                     ; 4 uses
  %i.bv = or disjoint i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %i.bq, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer ; 4 uses
  %broadcast.splat300 = shufflevector <2 x i8> %i.bj, <2 x i8> poison, <16 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1> ; 4 uses
  %broadcast.splat302 = shufflevector <2 x i8> %i.bj, <2 x i8> poison, <16 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 33 uses
  %vec.phi = phi <16 x i8> [ %broadcast.splat, %vector.ph ], [ %i.oo, %vector.body ]
  %vec.phi303.a = phi <16 x i8> [ %broadcast.splat, %vector.ph ], [ %i.op, %vector.body ]
  %vec.phi304.a = phi <16 x i8> [ %broadcast.splat, %vector.ph ], [ %i.om, %vector.body ]
  %vec.phi305.a = phi <16 x i8> [ %broadcast.splat, %vector.ph ], [ %i.on, %vector.body ]
  %vec.phi306.a = phi <16 x i8> [ %broadcast.splat300, %vector.ph ], [ %i.ks, %vector.body ]
  %vec.phi307.a = phi <16 x i8> [ %broadcast.splat300, %vector.ph ], [ %i.kt, %vector.body ]
  %vec.phi308.a = phi <16 x i8> [ %broadcast.splat300, %vector.ph ], [ %i.kq, %vector.body ]
  %vec.phi309.a = phi <16 x i8> [ %broadcast.splat300, %vector.ph ], [ %i.kr, %vector.body ]
  %vec.phi310.a = phi <16 x i8> [ %broadcast.splat302, %vector.ph ], [ %i.gw, %vector.body ]
  %vec.phi311.a = phi <16 x i8> [ %broadcast.splat302, %vector.ph ], [ %i.gx, %vector.body ]
  %vec.phi312.a = phi <16 x i8> [ %broadcast.splat302, %vector.ph ], [ %i.gu, %vector.body ]
  %vec.phi313 = phi <16 x i8> [ %broadcast.splat302, %vector.ph ], [ %i.gv, %vector.body ]
  %i.bw = getelementptr inbounds nuw [3 x i8], ptr %i.f, i64 %index ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 3
  %i.by = getelementptr inbounds nuw [3 x i8], ptr %i.f, i64 %index ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 6
  %i.ca = getelementptr inbounds nuw [3 x i8], ptr %i.f, i64 %index ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 9
  %i.cc = getelementptr inbounds nuw [3 x i8], ptr %i.f, i64 %index ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 12
  %i.ce = getelementptr inbounds nuw [3 x i8], ptr %i.f, i64 %index ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 15
  %i.cg = getelementptr inbounds nuw [3 x i8], ptr %i.f, i64 %index ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 18
  %i.ci = getelementptr inbounds nuw [3 x i8], ptr %i.f, i64 %index ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 21
  %i.ck = getelementptr inbounds nuw [3 x i8], ptr %i.f, i64 %index ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  %i.cm = getelementptr inbounds nuw [3 x i8], ptr %i.f, i64 %index ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 27
  %i.co = getelementptr inbounds nuw [3 x i8], ptr %i.f, i64 %index ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 30
  %i.cq = getelementptr inbounds nuw [3 x i8], ptr %i.f, i64 %index ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 33
  %i.cs = getelementptr inbounds nuw [3 x i8], ptr %i.f, i64 %index ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 36
  %i.cu = getelementptr inbounds nuw [3 x i8], ptr %i.f, i64 %index ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 39
  %i.cw = getelementptr inbounds nuw [3 x i8], ptr %i.f, i64 %index ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 42
  %i.cy = getelementptr inbounds nuw [3 x i8], ptr %i.f, i64 %index ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 45
  %i.da = getelementptr inbounds nuw [3 x i8], ptr %i.f, i64 %index ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 48
  %i.dc = getelementptr inbounds nuw [3 x i8], ptr %i.f, i64 %index ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 51
  %i.de = getelementptr inbounds nuw [3 x i8], ptr %i.f, i64 %index ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 54
  %i.dg = getelementptr inbounds nuw [3 x i8], ptr %i.f, i64 %index ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 57
  %i.di = getelementptr inbounds nuw [3 x i8], ptr %i.f, i64 %index ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 60
  %i.dk = getelementptr inbounds nuw [3 x i8], ptr %i.f, i64 %index ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 63
  %i.dm = getelementptr inbounds nuw [3 x i8], ptr %i.f, i64 %index ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 66
  %i.do = getelementptr inbounds nuw [3 x i8], ptr %i.f, i64 %index ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 69
  %i.dq = getelementptr inbounds nuw [3 x i8], ptr %i.f, i64 %index ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 72
  %i.ds = getelementptr inbounds nuw [3 x i8], ptr %i.f, i64 %index ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 75
  %i.du = getelementptr inbounds nuw [3 x i8], ptr %i.f, i64 %index ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 78
  %i.dw = getelementptr inbounds nuw [3 x i8], ptr %i.f, i64 %index ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 81
  %i.dy = getelementptr inbounds nuw [3 x i8], ptr %i.f, i64 %index ; 3 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 84
  %i.ea = getelementptr inbounds nuw [3 x i8], ptr %i.f, i64 %index ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 87
  %i.ec = getelementptr inbounds nuw [3 x i8], ptr %i.f, i64 %index ; 3 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 90
  %i.ee = getelementptr inbounds nuw [3 x i8], ptr %i.f, i64 %index ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 93
  %i.eg = getelementptr [3 x i8], ptr %i.f, i64 %index ; 3 uses
  %i.eh = getelementptr i8, ptr %i.eg, i64 96
  %i.ei = load i8, ptr %i.bx, align 1, !tbaa !36
  %i.ej = load i8, ptr %i.bz, align 1, !tbaa !36
  %i.ek = load i8, ptr %i.cb, align 1, !tbaa !36
  %i.el = load i8, ptr %i.cd, align 1, !tbaa !36
  %i.em = load i8, ptr %i.cf, align 1, !tbaa !36
  %i.en = load i8, ptr %i.ch, align 1, !tbaa !36
  %i.eo = load i8, ptr %i.cj, align 1, !tbaa !36
  %i.ep = load i8, ptr %i.cl, align 1, !tbaa !36
  %i.eq = load i8, ptr %i.cn, align 1, !tbaa !36
  %i.er = load i8, ptr %i.cp, align 1, !tbaa !36
  %i.es = load i8, ptr %i.cr, align 1, !tbaa !36
  %i.et = load i8, ptr %i.ct, align 1, !tbaa !36
  %i.eu = load i8, ptr %i.cv, align 1, !tbaa !36
  %i.ev = load i8, ptr %i.cx, align 1, !tbaa !36
  %i.ew = load i8, ptr %i.cz, align 1, !tbaa !36
  %i.ex = load i8, ptr %i.db, align 1, !tbaa !36
  %i.ey = insertelement <16 x i8> poison, i8 %i.ei, i64 0
  %i.ez = insertelement <16 x i8> %i.ey, i8 %i.ej, i64 1
  %i.fa = insertelement <16 x i8> %i.ez, i8 %i.ek, i64 2
  %i.fb = insertelement <16 x i8> %i.fa, i8 %i.el, i64 3
  %i.fc = insertelement <16 x i8> %i.fb, i8 %i.em, i64 4
  %i.fd = insertelement <16 x i8> %i.fc, i8 %i.en, i64 5
  %i.fe = insertelement <16 x i8> %i.fd, i8 %i.eo, i64 6
  %i.ff = insertelement <16 x i8> %i.fe, i8 %i.ep, i64 7
  %i.fg = insertelement <16 x i8> %i.ff, i8 %i.eq, i64 8
  %i.fh = insertelement <16 x i8> %i.fg, i8 %i.er, i64 9
  %i.fi = insertelement <16 x i8> %i.fh, i8 %i.es, i64 10
  %i.fj = insertelement <16 x i8> %i.fi, i8 %i.et, i64 11
  %i.fk = insertelement <16 x i8> %i.fj, i8 %i.eu, i64 12
  %i.fl = insertelement <16 x i8> %i.fk, i8 %i.ev, i64 13
  %i.fm = insertelement <16 x i8> %i.fl, i8 %i.ew, i64 14
  %i.fn = insertelement <16 x i8> %i.fm, i8 %i.ex, i64 15 ; 2 uses
  %i.fo = load i8, ptr %i.dd, align 1, !tbaa !36
  %i.fp = load i8, ptr %i.df, align 1, !tbaa !36
  %i.fq = load i8, ptr %i.dh, align 1, !tbaa !36
  %i.fr = load i8, ptr %i.dj, align 1, !tbaa !36
  %i.fs = load i8, ptr %i.dl, align 1, !tbaa !36
  %i.ft = load i8, ptr %i.dn, align 1, !tbaa !36
  %i.fu = load i8, ptr %i.dp, align 1, !tbaa !36
  %i.fv = load i8, ptr %i.dr, align 1, !tbaa !36
  %i.fw = load i8, ptr %i.dt, align 1, !tbaa !36
  %i.fx = load i8, ptr %i.dv, align 1, !tbaa !36
  %i.fy = load i8, ptr %i.dx, align 1, !tbaa !36
  %i.fz = load i8, ptr %i.dz, align 1, !tbaa !36
  %i.ga = load i8, ptr %i.eb, align 1, !tbaa !36
  %i.gb = load i8, ptr %i.ed, align 1, !tbaa !36
  %i.gc = load i8, ptr %i.ef, align 1, !tbaa !36
  %i.gd = load i8, ptr %i.eh, align 1, !tbaa !36
  %i.ge = insertelement <16 x i8> poison, i8 %i.fo, i64 0
  %i.gf = insertelement <16 x i8> %i.ge, i8 %i.fp, i64 1
  %i.gg = insertelement <16 x i8> %i.gf, i8 %i.fq, i64 2
  %i.gh = insertelement <16 x i8> %i.gg, i8 %i.fr, i64 3
  %i.gi = insertelement <16 x i8> %i.gh, i8 %i.fs, i64 4
  %i.gj = insertelement <16 x i8> %i.gi, i8 %i.ft, i64 5
  %i.gk = insertelement <16 x i8> %i.gj, i8 %i.fu, i64 6
  %i.gl = insertelement <16 x i8> %i.gk, i8 %i.fv, i64 7
  %i.gm = insertelement <16 x i8> %i.gl, i8 %i.fw, i64 8
  %i.gn = insertelement <16 x i8> %i.gm, i8 %i.fx, i64 9
  %i.go = insertelement <16 x i8> %i.gn, i8 %i.fy, i64 10
  %i.gp = insertelement <16 x i8> %i.go, i8 %i.fz, i64 11
  %i.gq = insertelement <16 x i8> %i.gp, i8 %i.ga, i64 12
  %i.gr = insertelement <16 x i8> %i.gq, i8 %i.gb, i64 13
  %i.gs = insertelement <16 x i8> %i.gr, i8 %i.gc, i64 14
  %i.gt = insertelement <16 x i8> %i.gs, i8 %i.gd, i64 15 ; 2 uses
  %i.gu = tail call <16 x i8> @llvm.umin.v16i8(<16 x i8> %i.fn, <16 x i8> %vec.phi312.a) ; 2 uses
  %i.gv = tail call <16 x i8> @llvm.umin.v16i8(<16 x i8> %i.gt, <16 x i8> %vec.phi313) ; 2 uses
  %i.gw = tail call <16 x i8> @llvm.umax.v16i8(<16 x i8> %vec.phi310.a, <16 x i8> %i.fn) ; 2 uses
  %i.gx = tail call <16 x i8> @llvm.umax.v16i8(<16 x i8> %vec.phi311.a, <16 x i8> %i.gt) ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.bw, i64 4
  %i.gz = getelementptr inbounds nuw i8, ptr %i.by, i64 7
  %i.ha = getelementptr inbounds nuw i8, ptr %i.ca, i64 10
  %i.hb = getelementptr inbounds nuw i8, ptr %i.cc, i64 13
  %i.hc = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.hd = getelementptr inbounds nuw i8, ptr %i.cg, i64 19
  %i.he = getelementptr inbounds nuw i8, ptr %i.ci, i64 22
  %i.hf = getelementptr inbounds nuw i8, ptr %i.ck, i64 25
  %i.hg = getelementptr inbounds nuw i8, ptr %i.cm, i64 28
  %i.hh = getelementptr inbounds nuw i8, ptr %i.co, i64 31
  %i.hi = getelementptr inbounds nuw i8, ptr %i.cq, i64 34
  %i.hj = getelementptr inbounds nuw i8, ptr %i.cs, i64 37
  %i.hk = getelementptr inbounds nuw i8, ptr %i.cu, i64 40
  %i.hl = getelementptr inbounds nuw i8, ptr %i.cw, i64 43
  %i.hm = getelementptr inbounds nuw i8, ptr %i.cy, i64 46
  %i.hn = getelementptr inbounds nuw i8, ptr %i.da, i64 49
  %i.ho = getelementptr inbounds nuw i8, ptr %i.dc, i64 52
  %i.hp = getelementptr inbounds nuw i8, ptr %i.de, i64 55
  %i.hq = getelementptr inbounds nuw i8, ptr %i.dg, i64 58
  %i.hr = getelementptr inbounds nuw i8, ptr %i.di, i64 61
  %i.hs = getelementptr inbounds nuw i8, ptr %i.dk, i64 64
  %i.ht = getelementptr inbounds nuw i8, ptr %i.dm, i64 67
  %i.hu = getelementptr inbounds nuw i8, ptr %i.do, i64 70
  %i.hv = getelementptr inbounds nuw i8, ptr %i.dq, i64 73
  %i.hw = getelementptr inbounds nuw i8, ptr %i.ds, i64 76
  %i.hx = getelementptr inbounds nuw i8, ptr %i.du, i64 79
  %i.hy = getelementptr inbounds nuw i8, ptr %i.dw, i64 82
  %i.hz = getelementptr inbounds nuw i8, ptr %i.dy, i64 85
  %i.ia = getelementptr inbounds nuw i8, ptr %i.ea, i64 88
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ec, i64 91
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ee, i64 94
  %i.id = getelementptr i8, ptr %i.eg, i64 97
  %i.ie = load i8, ptr %i.gy, align 1, !tbaa !36
  %i.if = load i8, ptr %i.gz, align 1, !tbaa !36
  %i.ig = load i8, ptr %i.ha, align 1, !tbaa !36
  %i.ih = load i8, ptr %i.hb, align 1, !tbaa !36
  %i.ii = load i8, ptr %i.hc, align 1, !tbaa !36
end_hunk_0
begin_hunk_1_@_ZN4gdcm12quantization9medianCutERKNS_11DataElementEijRNSt3__16vectorIhNS4_9allocatorIhEEEE:bb.a
  %i.oa = insertelement <16 x i8> %i.nz, i8 %i.nk, i64 4
  %i.ob = insertelement <16 x i8> %i.oa, i8 %i.nl, i64 5
  %i.oc = insertelement <16 x i8> %i.ob, i8 %i.nm, i64 6
  %i.od = insertelement <16 x i8> %i.oc, i8 %i.nn, i64 7
  %i.oe = insertelement <16 x i8> %i.od, i8 %i.no, i64 8
  %i.of = insertelement <16 x i8> %i.oe, i8 %i.np, i64 9
  %i.og = insertelement <16 x i8> %i.of, i8 %i.nq, i64 10
  %i.oh = insertelement <16 x i8> %i.og, i8 %i.nr, i64 11
  %i.oi = insertelement <16 x i8> %i.oh, i8 %i.ns, i64 12
  %i.oj = insertelement <16 x i8> %i.oi, i8 %i.nt, i64 13
  %i.ok = insertelement <16 x i8> %i.oj, i8 %i.nu, i64 14
  %i.ol = insertelement <16 x i8> %i.ok, i8 %i.nv, i64 15 ; 2 uses
  %i.om = tail call <16 x i8> @llvm.umin.v16i8(<16 x i8> %i.nf, <16 x i8> %vec.phi304.a) ; 2 uses
  %i.on = tail call <16 x i8> @llvm.umin.v16i8(<16 x i8> %i.ol, <16 x i8> %vec.phi305.a) ; 2 uses
  %i.oo = tail call <16 x i8> @llvm.umax.v16i8(<16 x i8> %vec.phi, <16 x i8> %i.nf) ; 2 uses
  %i.op = tail call <16 x i8> @llvm.umax.v16i8(<16 x i8> %vec.phi303.a, <16 x i8> %i.ol) ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.oq = icmp eq i64 %index.next, %n.vec
  br i1 %i.oq, label %middle.block, label %vector.body, !llvm.loop !122

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <16 x i8> @llvm.umax.v16i8(<16 x i8> %i.oo, <16 x i8> %i.op)
  %i.or = tail call i8 @llvm.vector.reduce.umax.v16i8(<16 x i8> %rdx.minmax) ; 3 uses
  %rdx.minmax314.a = tail call <16 x i8> @llvm.umin.v16i8(<16 x i8> %i.om, <16 x i8> %i.on)
  %i.os = tail call i8 @llvm.vector.reduce.umin.v16i8(<16 x i8> %rdx.minmax314.a) ; 3 uses
  %rdx.minmax315.a = tail call <16 x i8> @llvm.umax.v16i8(<16 x i8> %i.ks, <16 x i8> %i.kt)
  %i.ot = tail call i8 @llvm.vector.reduce.umax.v16i8(<16 x i8> %rdx.minmax315.a) ; 3 uses
  %rdx.minmax316.a = tail call <16 x i8> @llvm.umin.v16i8(<16 x i8> %i.kq, <16 x i8> %i.kr)
  %i.ou = tail call i8 @llvm.vector.reduce.umin.v16i8(<16 x i8> %rdx.minmax316.a) ; 3 uses
  %rdx.minmax317.a = tail call <16 x i8> @llvm.umax.v16i8(<16 x i8> %i.gw, <16 x i8> %i.gx)
  %i.ov = tail call i8 @llvm.vector.reduce.umax.v16i8(<16 x i8> %rdx.minmax317.a) ; 3 uses
  %rdx.minmax318 = tail call <16 x i8> @llvm.umin.v16i8(<16 x i8> %i.gu, <16 x i8> %i.gv)
  %i.ow = tail call i8 @llvm.vector.reduce.umin.v16i8(<16 x i8> %rdx.minmax318) ; 3 uses
  %cmp.n = icmp eq i64 %i.bt, %n.vec
  br i1 %cmp.n, label %_ZN4gdcm12quantization5Block6shrinkEv.exit.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bu, 0
  %i.ox = insertelement <4 x i8> poison, i8 %i.ot, i64 0
  %i.oy = insertelement <4 x i8> %i.ox, i8 %i.ou, i64 1
  %i.oz = insertelement <4 x i8> %i.oy, i8 %i.ov, i64 2
  %i.pa = insertelement <4 x i8> %i.oz, i8 %i.ow, i64 3
  br i1 %min.epilog.iters.check, label %.preheader.i.preheader, label %vec.epilog.ph, !prof !40

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i8 [ %i.or, %vec.epilog.iter.check ], [ %i.bq, %vector.main.loop.iter.check ]
  %bc.merge.rdx319 = phi i8 [ %i.os, %vec.epilog.iter.check ], [ %i.bq, %vector.main.loop.iter.check ]
  %i.pb = phi <4 x i8> [ %i.pa, %vec.epilog.iter.check ], [ %i.bk, %vector.main.loop.iter.check ] ; 4 uses
  %n.vec324 = and i64 %i.bt, -8                   ; 3 uses
  %i.pc = or disjoint i64 %n.vec324, 1
  %broadcast.splatinsert325 = insertelement <8 x i8> poison, i8 %bc.merge.rdx, i64 0
  %broadcast.splat326 = shufflevector <8 x i8> %broadcast.splatinsert325, <8 x i8> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert327 = insertelement <8 x i8> poison, i8 %bc.merge.rdx319, i64 0
  %broadcast.splat328 = shufflevector <8 x i8> %broadcast.splatinsert327, <8 x i8> poison, <8 x i32> zeroinitializer
  %broadcast.splat330 = shufflevector <4 x i8> %i.pb, <4 x i8> poison, <8 x i32> zeroinitializer
  %broadcast.splat332 = shufflevector <4 x i8> %i.pb, <4 x i8> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat334 = shufflevector <4 x i8> %i.pb, <4 x i8> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %broadcast.splat336 = shufflevector <4 x i8> %i.pb, <4 x i8> poison, <8 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index337 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next344, %vec.epilog.vector.body ] ; 9 uses
  %vec.phi338.a = phi <8 x i8> [ %broadcast.splat326, %vec.epilog.ph ], [ %i.sk, %vec.epilog.vector.body ]
  %vec.phi339.a = phi <8 x i8> [ %broadcast.splat328, %vec.epilog.ph ], [ %i.sj, %vec.epilog.vector.body ]
  %vec.phi340.a = phi <8 x i8> [ %broadcast.splat330, %vec.epilog.ph ], [ %i.rk, %vec.epilog.vector.body ]
  %vec.phi341.a = phi <8 x i8> [ %broadcast.splat332, %vec.epilog.ph ], [ %i.rj, %vec.epilog.vector.body ]
  %vec.phi342.a = phi <8 x i8> [ %broadcast.splat334, %vec.epilog.ph ], [ %i.qk, %vec.epilog.vector.body ]
  %vec.phi343 = phi <8 x i8> [ %broadcast.splat336, %vec.epilog.ph ], [ %i.qj, %vec.epilog.vector.body ]
  %i.pd = getelementptr inbounds nuw [3 x i8], ptr %i.f, i64 %index337 ; 3 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pd, i64 3
  %i.pf = getelementptr inbounds nuw [3 x i8], ptr %i.f, i64 %index337 ; 3 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pf, i64 6
  %i.ph = getelementptr inbounds nuw [3 x i8], ptr %i.f, i64 %index337 ; 3 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ph, i64 9
  %i.pj = getelementptr inbounds nuw [3 x i8], ptr %i.f, i64 %index337 ; 3 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pj, i64 12
  %i.pl = getelementptr inbounds nuw [3 x i8], ptr %i.f, i64 %index337 ; 3 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pl, i64 15
  %i.pn = getelementptr inbounds nuw [3 x i8], ptr %i.f, i64 %index337 ; 3 uses
  %i.po = getelementptr inbounds nuw i8, ptr %i.pn, i64 18
  %i.pp = getelementptr inbounds nuw [3 x i8], ptr %i.f, i64 %index337 ; 3 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pp, i64 21
  %i.pr = getelementptr [3 x i8], ptr %i.f, i64 %index337 ; 3 uses
  %i.ps = getelementptr i8, ptr %i.pr, i64 24
  %i.pt = load i8, ptr %i.pe, align 1, !tbaa !36
  %i.pu = load i8, ptr %i.pg, align 1, !tbaa !36
  %i.pv = load i8, ptr %i.pi, align 1, !tbaa !36
  %i.pw = load i8, ptr %i.pk, align 1, !tbaa !36
  %i.px = load i8, ptr %i.pm, align 1, !tbaa !36
  %i.py = load i8, ptr %i.po, align 1, !tbaa !36
  %i.pz = load i8, ptr %i.pq, align 1, !tbaa !36
  %i.qa = load i8, ptr %i.ps, align 1, !tbaa !36
  %i.qb = insertelement <8 x i8> poison, i8 %i.pt, i64 0
  %i.qc = insertelement <8 x i8> %i.qb, i8 %i.pu, i64 1
  %i.qd = insertelement <8 x i8> %i.qc, i8 %i.pv, i64 2
  %i.qe = insertelement <8 x i8> %i.qd, i8 %i.pw, i64 3
  %i.qf = insertelement <8 x i8> %i.qe, i8 %i.px, i64 4
  %i.qg = insertelement <8 x i8> %i.qf, i8 %i.py, i64 5
  %i.qh = insertelement <8 x i8> %i.qg, i8 %i.pz, i64 6
  %i.qi = insertelement <8 x i8> %i.qh, i8 %i.qa, i64 7 ; 2 uses
  %i.qj = tail call <8 x i8> @llvm.umin.v8i8(<8 x i8> %i.qi, <8 x i8> %vec.phi343) ; 2 uses
  %i.qk = tail call <8 x i8> @llvm.umax.v8i8(<8 x i8> %vec.phi342.a, <8 x i8> %i.qi) ; 2 uses
  %i.ql = getelementptr inbounds nuw i8, ptr %i.pd, i64 4
  %i.qm = getelementptr inbounds nuw i8, ptr %i.pf, i64 7
  %i.qn = getelementptr inbounds nuw i8, ptr %i.ph, i64 10
  %i.qo = getelementptr inbounds nuw i8, ptr %i.pj, i64 13
  %i.qp = getelementptr inbounds nuw i8, ptr %i.pl, i64 16
  %i.qq = getelementptr inbounds nuw i8, ptr %i.pn, i64 19
  %i.qr = getelementptr inbounds nuw i8, ptr %i.pp, i64 22
  %i.qs = getelementptr i8, ptr %i.pr, i64 25
  %i.qt = load i8, ptr %i.ql, align 1, !tbaa !36
  %i.qu = load i8, ptr %i.qm, align 1, !tbaa !36
  %i.qv = load i8, ptr %i.qn, align 1, !tbaa !36
  %i.qw = load i8, ptr %i.qo, align 1, !tbaa !36
  %i.qx = load i8, ptr %i.qp, align 1, !tbaa !36
  %i.qy = load i8, ptr %i.qq, align 1, !tbaa !36
  %i.qz = load i8, ptr %i.qr, align 1, !tbaa !36
  %i.ra = load i8, ptr %i.qs, align 1, !tbaa !36
  %i.rb = insertelement <8 x i8> poison, i8 %i.qt, i64 0
  %i.rc = insertelement <8 x i8> %i.rb, i8 %i.qu, i64 1
  %i.rd = insertelement <8 x i8> %i.rc, i8 %i.qv, i64 2
  %i.re = insertelement <8 x i8> %i.rd, i8 %i.qw, i64 3
  %i.rf = insertelement <8 x i8> %i.re, i8 %i.qx, i64 4
  %i.rg = insertelement <8 x i8> %i.rf, i8 %i.qy, i64 5
  %i.rh = insertelement <8 x i8> %i.rg, i8 %i.qz, i64 6
  %i.ri = insertelement <8 x i8> %i.rh, i8 %i.ra, i64 7 ; 2 uses
  %i.rj = tail call <8 x i8> @llvm.umin.v8i8(<8 x i8> %i.ri, <8 x i8> %vec.phi341.a) ; 2 uses
  %i.rk = tail call <8 x i8> @llvm.umax.v8i8(<8 x i8> %vec.phi340.a, <8 x i8> %i.ri) ; 2 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %i.pd, i64 5
  %i.rm = getelementptr inbounds nuw i8, ptr %i.pf, i64 8
  %i.rn = getelementptr inbounds nuw i8, ptr %i.ph, i64 11
  %i.ro = getelementptr inbounds nuw i8, ptr %i.pj, i64 14
  %i.rp = getelementptr inbounds nuw i8, ptr %i.pl, i64 17
  %i.rq = getelementptr inbounds nuw i8, ptr %i.pn, i64 20
  %i.rr = getelementptr inbounds nuw i8, ptr %i.pp, i64 23
  %i.rs = getelementptr i8, ptr %i.pr, i64 26
  %i.rt = load i8, ptr %i.rl, align 1, !tbaa !36
  %i.ru = load i8, ptr %i.rm, align 1, !tbaa !36
  %i.rv = load i8, ptr %i.rn, align 1, !tbaa !36
  %i.rw = load i8, ptr %i.ro, align 1, !tbaa !36
  %i.rx = load i8, ptr %i.rp, align 1, !tbaa !36
  %i.ry = load i8, ptr %i.rq, align 1, !tbaa !36
  %i.rz = load i8, ptr %i.rr, align 1, !tbaa !36
  %i.sa = load i8, ptr %i.rs, align 1, !tbaa !36
  %i.sb = insertelement <8 x i8> poison, i8 %i.rt, i64 0
  %i.sc = insertelement <8 x i8> %i.sb, i8 %i.ru, i64 1
  %i.sd = insertelement <8 x i8> %i.sc, i8 %i.rv, i64 2
  %i.se = insertelement <8 x i8> %i.sd, i8 %i.rw, i64 3
  %i.sf = insertelement <8 x i8> %i.se, i8 %i.rx, i64 4
  %i.sg = insertelement <8 x i8> %i.sf, i8 %i.ry, i64 5
  %i.sh = insertelement <8 x i8> %i.sg, i8 %i.rz, i64 6
  %i.si = insertelement <8 x i8> %i.sh, i8 %i.sa, i64 7 ; 2 uses
  %i.sj = tail call <8 x i8> @llvm.umin.v8i8(<8 x i8> %i.si, <8 x i8> %vec.phi339.a) ; 2 uses
  %i.sk = tail call <8 x i8> @llvm.umax.v8i8(<8 x i8> %vec.phi338.a, <8 x i8> %i.si) ; 2 uses
  %index.next344 = add nuw i64 %index337, 8       ; 2 uses
  %i.sl = icmp eq i64 %index.next344, %n.vec324
  br i1 %i.sl, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !123

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.sm = tail call i8 @llvm.vector.reduce.umax.v8i8(<8 x i8> %i.sk) ; 2 uses
  %i.sn = tail call i8 @llvm.vector.reduce.umin.v8i8(<8 x i8> %i.sj) ; 2 uses
  %i.so = tail call i8 @llvm.vector.reduce.umax.v8i8(<8 x i8> %i.rk) ; 2 uses
  %i.sp = tail call i8 @llvm.vector.reduce.umin.v8i8(<8 x i8> %i.rj) ; 2 uses
  %i.sq = tail call i8 @llvm.vector.reduce.umax.v8i8(<8 x i8> %i.qk) ; 2 uses
  %i.sr = tail call i8 @llvm.vector.reduce.umin.v8i8(<8 x i8> %i.qj) ; 2 uses
  %cmp.n345 = icmp eq i64 %i.bt, %n.vec324
  br i1 %cmp.n345, label %_ZN4gdcm12quantization5Block6shrinkEv.exit.loopexit, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph569.a = phi i8 [ %i.bq, %iter.check ], [ %i.or, %vec.epilog.iter.check ], [ %i.sm, %vec.epilog.middle.block ]
  %.ph570.a = phi i8 [ %i.bq, %iter.check ], [ %i.os, %vec.epilog.iter.check ], [ %i.sn, %vec.epilog.middle.block ]
  %.ph571.a = phi i8 [ %i.bl, %iter.check ], [ %i.ot, %vec.epilog.iter.check ], [ %i.so, %vec.epilog.middle.block ]
  %.ph572.a = phi i8 [ %i.bl, %iter.check ], [ %i.ou, %vec.epilog.iter.check ], [ %i.sp, %vec.epilog.middle.block ]
  %.ph573.a = phi i8 [ %i.bm, %iter.check ], [ %i.ov, %vec.epilog.iter.check ], [ %i.sq, %vec.epilog.middle.block ]
  %.ph574 = phi i8 [ %i.bm, %iter.check ], [ %i.ow, %vec.epilog.iter.check ], [ %i.sr, %vec.epilog.middle.block ]
  %indvars.iv.i.ph = phi i64 [ 1, %iter.check ], [ %i.bv, %vec.epilog.iter.check ], [ %i.pc, %vec.epilog.middle.block ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %.preheader.i
  %i.ss = phi i8 [ %i.tj, %.preheader.i ], [ %.ph569.a, %.preheader.i.preheader ]
  %i.st = phi i8 [ %i.ti, %.preheader.i ], [ %.ph570.a, %.preheader.i.preheader ]
  %i.su = phi i8 [ %i.tf, %.preheader.i ], [ %.ph571.a, %.preheader.i.preheader ]
  %i.sv = phi i8 [ %i.te, %.preheader.i ], [ %.ph572.a, %.preheader.i.preheader ]
  %i.sw = phi i8 [ %i.tb, %.preheader.i ], [ %.ph573.a, %.preheader.i.preheader ]
  %i.sx = phi i8 [ %i.ta, %.preheader.i ], [ %.ph574, %.preheader.i.preheader ]
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.preheader.i ], [ %indvars.iv.i.ph, %.preheader.i.preheader ] ; 2 uses
  %i.sy = getelementptr inbounds nuw [3 x i8], ptr %i.f, i64 %indvars.iv.i ; 3 uses
  %i.sz = load i8, ptr %i.sy, align 1, !tbaa !36  ; 2 uses
  %i.ta = tail call i8 @llvm.umin.i8(i8 %i.sz, i8 %i.sx) ; 2 uses
  %i.tb = tail call i8 @llvm.umax.i8(i8 %i.sw, i8 %i.sz) ; 2 uses
  %i.tc = getelementptr inbounds nuw i8, ptr %i.sy, i64 1
  %i.td = load i8, ptr %i.tc, align 1, !tbaa !36  ; 2 uses
  %i.te = tail call i8 @llvm.umin.i8(i8 %i.td, i8 %i.sv) ; 2 uses
  %i.tf = tail call i8 @llvm.umax.i8(i8 %i.su, i8 %i.td) ; 2 uses
  %i.tg = getelementptr inbounds nuw i8, ptr %i.sy, i64 2
  %i.th = load i8, ptr %i.tg, align 1, !tbaa !36  ; 2 uses
  %i.ti = tail call i8 @llvm.umin.i8(i8 %i.th, i8 %i.st) ; 2 uses
  %i.tj = tail call i8 @llvm.umax.i8(i8 %i.ss, i8 %i.th) ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond215.not = icmp eq i64 %indvars.iv.next.i, %umax
  br i1 %exitcond215.not, label %_ZN4gdcm12quantization5Block6shrinkEv.exit.loopexit, label %.preheader.i, !llvm.loop !124

_ZN4gdcm12quantization5Block6shrinkEv.exit.loopexit: ; preds = %.preheader.i, %vec.epilog.middle.block, %middle.block
  %.lcssa297 = phi i8 [ %i.sr, %vec.epilog.middle.block ], [ %i.ow, %middle.block ], [ %i.ta, %.preheader.i ]
  %.lcssa296 = phi i8 [ %i.sq, %vec.epilog.middle.block ], [ %i.ov, %middle.block ], [ %i.tb, %.preheader.i ]
  %.lcssa295 = phi i8 [ %i.sp, %vec.epilog.middle.block ], [ %i.ou, %middle.block ], [ %i.te, %.preheader.i ]
  %.lcssa294 = phi i8 [ %i.so, %vec.epilog.middle.block ], [ %i.ot, %middle.block ], [ %i.tf, %.preheader.i ]
  %.lcssa293 = phi i8 [ %i.sn, %vec.epilog.middle.block ], [ %i.os, %middle.block ], [ %i.ti, %.preheader.i ]
  %.lcssa292 = phi i8 [ %i.sm, %vec.epilog.middle.block ], [ %i.or, %middle.block ], [ %i.tj, %.preheader.i ]
  store i8 %.lcssa297, ptr %9, align 8, !tbaa !36
  store i8 %.lcssa296, ptr %i.bi, align 1, !tbaa !36
  store i8 %.lcssa295, ptr %i.bo, align 1, !tbaa !36
  store i8 %.lcssa294, ptr %i.bn, align 4, !tbaa !36
  store i8 %.lcssa293, ptr %i.bs, align 2, !tbaa !36
  store i8 %.lcssa292, ptr %i.br, align 1, !tbaa !36
  br label %_ZN4gdcm12quantization5Block6shrinkEv.exit

_ZN4gdcm12quantization5Block6shrinkEv.exit:       ; preds = %_ZN4gdcm12quantization5Block6shrinkEv.exit.loopexit, %._crit_edge
  invoke void @_ZNSt3__114priority_queueIN4gdcm12quantization5BlockENS_6vectorIS3_NS_9allocatorIS3_EEEENS_4lessIS3_EEE4pushERKS3_(ptr noundef nonnull align 8 dereferenceable(25) %8, ptr noundef nonnull align 8 dereferenceable(20) %9)
          to label %.preheader175 unwind label %.body

.preheader175:                                    ; preds = %_ZN4gdcm12quantization5Block6shrinkEv.exit
  %i.tk = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 5 uses
  %i.tl = zext i32 %3 to i64                      ; 2 uses
  %i.tm = load ptr, ptr %i.tk, align 8, !tbaa !54 ; 2 uses
  %i.tn = load ptr, ptr %8, align 8, !tbaa !55    ; 3 uses
  %i.to = ptrtoint ptr %i.tm to i64
  %i.tp = ptrtoint ptr %i.tn to i64
  %i.tq = sub i64 %i.to, %i.tp
  %i.tr = sdiv exact i64 %i.tq, 24
  %i.ts = icmp ult i64 %i.tr, %i.tl
  br i1 %i.ts, label %.lr.ph190, label %._crit_edge191

.lr.ph190:                                        ; preds = %.preheader175
  %i.tt = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.tu = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.tv = getelementptr inbounds nuw i8, ptr %10, i64 3 ; 5 uses
  %i.tw = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.tx = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.ty = getelementptr inbounds nuw i8, ptr %11, i64 3 ; 5 uses
  %i.tz = getelementptr inbounds nuw i8, ptr %10, i64 4 ; 4 uses
  %i.ua = getelementptr inbounds nuw i8, ptr %10, i64 1 ; 4 uses
  %i.ub = getelementptr inbounds nuw i8, ptr %10, i64 5 ; 4 uses
  %i.uc = getelementptr inbounds nuw i8, ptr %10, i64 2 ; 4 uses
  %i.ud = getelementptr inbounds nuw i8, ptr %11, i64 4 ; 4 uses
  %i.ue = getelementptr inbounds nuw i8, ptr %11, i64 1 ; 4 uses
  %i.uf = getelementptr inbounds nuw i8, ptr %11, i64 5 ; 4 uses
  %i.ug = getelementptr inbounds nuw i8, ptr %11, i64 2 ; 4 uses
  %scevgep = getelementptr inbounds nuw i8, ptr %11, i64 6
  %scevgep434.a = getelementptr inbounds nuw i8, ptr %10, i64 6
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph190, %bb.aj
  %i.uh = phi ptr [ %i.tn, %.lr.ph190 ], [ %i.bxs, %bb.aj ] ; 8 uses
  %.sroa.0162.0.copyload = load i8, ptr %i.uh, align 8
  %.sroa.5163.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.uh, i64 1
  %.sroa.5163.0.copyload = load i8, ptr %.sroa.5163.0..sroa_idx, align 1
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.uh, i64 2
  %.sroa.6.0.copyload = load i8, ptr %.sroa.6.0..sroa_idx, align 2, !tbaa !36
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.uh, i64 3
  %.sroa.7.0.copyload = load i8, ptr %.sroa.7.0..sroa_idx, align 1
  %.sroa.8164.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.uh, i64 4
  %.sroa.8164.0.copyload = load i8, ptr %.sroa.8164.0..sroa_idx, align 4
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.uh, i64 5
  %.sroa.9.0.copyload = load i8, ptr %.sroa.9.0..sroa_idx, align 1, !tbaa !36
  %.sroa.10165.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.uh, i64 8
  %.sroa.10165.0.copyload = load ptr, ptr %.sroa.10165.0..sroa_idx, align 8, !tbaa !56 ; 54 uses
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.uh, i64 16
  %.sroa.13.0.copyload = load i32, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !30 ; 5 uses
  invoke void @_ZNSt3__114priority_queueIN4gdcm12quantization5BlockENS_6vectorIS3_NS_9allocatorIS3_EEEENS_4lessIS3_EEE3popEv(ptr noundef nonnull align 8 dereferenceable(25) %8)
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ui = add nsw i32 %.sroa.13.0.copyload, 1     ; 3 uses
  %i.uj = sdiv i32 %i.ui, 2                       ; 4 uses
  %i.uk = sext i32 %i.uj to i64                   ; 2 uses
  %.idx173 = mul nsw i64 %i.uk, 3                 ; 3 uses
  %i.ul = getelementptr inbounds i8, ptr %.sroa.10165.0.copyload, i64 %.idx173 ; 48 uses
  %i.um = sext i32 %.sroa.13.0.copyload to i64
  %.idx = mul nsw i64 %i.um, 3                    ; 2 uses
  %i.un = getelementptr inbounds i8, ptr %.sroa.10165.0.copyload, i64 %.idx ; 3 uses
  %i.uo = zext i8 %.sroa.7.0.copyload to i32
  %i.up = zext i8 %.sroa.0162.0.copyload to i32
  %i.uq = sub nsw i32 %i.uo, %i.up                ; 2 uses
  %i.ur = zext i8 %.sroa.8164.0.copyload to i32
  %i.us = zext i8 %.sroa.5163.0.copyload to i32
  %i.ut = sub nsw i32 %i.ur, %i.us                ; 2 uses
  %i.uu = icmp sgt i32 %i.ut, %i.uq
  %spec.select.i128 = call i32 @llvm.smax.i32(i32 %i.ut, i32 %i.uq)
  %spec.select13.i = zext i1 %i.uu to i32
  %i.uv = zext i8 %.sroa.9.0.copyload to i32
  %i.uw = zext i8 %.sroa.6.0.copyload to i32
  %i.ux = sub nsw i32 %i.uv, %i.uw
  %i.uy = icmp sgt i32 %i.ux, %spec.select.i128
  %spec.select13.1.i = select i1 %i.uy, i32 2, i32 %spec.select13.i
  %i.uz = icmp eq i32 %i.uj, %.sroa.13.0.copyload ; 3 uses
  switch i32 %spec.select13.1.i, label %default.unreachable275 [
    i32 0, label %bb.s
    i32 1, label %bb.v
    i32 2, label %bb.x
  ]

.body:                                            ; preds = %_ZN4gdcm12quantization5Block6shrinkEv.exit
  %i.va = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt3__110__list_impIN4gdcm12quantization5PointENS_9allocatorIS3_EEED2Ev.exit

bb.r:                                             ; preds = %bb.p
  %i.vb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt3__110__list_impIN4gdcm12quantization5PointENS_9allocatorIS3_EEED2Ev.exit

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  br i1 %i.uz, label %_ZNSt3__111nth_elementB8ne180100IPN4gdcm12quantization5PointENS2_25CoordinatePointComparatorILi0EEEEEvT_S7_S7_T0_.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  invoke void @_ZNSt3__113__nth_elementB8ne180100INS_17_ClassicAlgPolicyERN4gdcm12quantization25CoordinatePointComparatorILi0EEEPNS3_5PointEEEvT1_S9_S9_T0_(ptr noundef %.sroa.10165.0.copyload, ptr noundef %i.ul, ptr noundef %i.un, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %_ZNSt3__111nth_elementB8ne180100IPN4gdcm12quantization5PointENS2_25CoordinatePointComparatorILi0EEEEEvT_S7_S7_T0_.exit unwind label %bb.u

_ZNSt3__111nth_elementB8ne180100IPN4gdcm12quantization5PointENS2_25CoordinatePointComparatorILi0EEEEEvT_S7_S7_T0_.exit: ; preds = %bb.t, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %bb.z

bb.u:                                             ; preds = %bb.y, %bb.w, %bb.t
  %i.vc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt3__110__list_impIN4gdcm12quantization5PointENS_9allocatorIS3_EEED2Ev.exit

bb.v:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  br i1 %i.uz, label %_ZNSt3__111nth_elementB8ne180100IPN4gdcm12quantization5PointENS2_25CoordinatePointComparatorILi1EEEEEvT_S7_S7_T0_.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  invoke void @_ZNSt3__113__nth_elementB8ne180100INS_17_ClassicAlgPolicyERN4gdcm12quantization25CoordinatePointComparatorILi1EEEPNS3_5PointEEEvT1_S9_S9_T0_(ptr noundef %.sroa.10165.0.copyload, ptr noundef %i.ul, ptr noundef %i.un, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %_ZNSt3__111nth_elementB8ne180100IPN4gdcm12quantization5PointENS2_25CoordinatePointComparatorILi1EEEEEvT_S7_S7_T0_.exit unwind label %bb.u

_ZNSt3__111nth_elementB8ne180100IPN4gdcm12quantization5PointENS2_25CoordinatePointComparatorILi1EEEEEvT_S7_S7_T0_.exit: ; preds = %bb.w, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %bb.z

bb.x:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  br i1 %i.uz, label %_ZNSt3__111nth_elementB8ne180100IPN4gdcm12quantization5PointENS2_25CoordinatePointComparatorILi2EEEEEvT_S7_S7_T0_.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  invoke void @_ZNSt3__113__nth_elementB8ne180100INS_17_ClassicAlgPolicyERN4gdcm12quantization25CoordinatePointComparatorILi2EEEPNS3_5PointEEEvT1_S9_S9_T0_(ptr noundef %.sroa.10165.0.copyload, ptr noundef %i.ul, ptr noundef %i.un, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %_ZNSt3__111nth_elementB8ne180100IPN4gdcm12quantization5PointENS2_25CoordinatePointComparatorILi2EEEEEvT_S7_S7_T0_.exit unwind label %bb.u

_ZNSt3__111nth_elementB8ne180100IPN4gdcm12quantization5PointENS2_25CoordinatePointComparatorILi2EEEEEvT_S7_S7_T0_.exit: ; preds = %bb.y, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %bb.z

default.unreachable275:                           ; preds = %bb.q
  unreachable

bb.z:                                             ; preds = %_ZNSt3__111nth_elementB8ne180100IPN4gdcm12quantization5PointENS2_25CoordinatePointComparatorILi2EEEEEvT_S7_S7_T0_.exit, %_ZNSt3__111nth_elementB8ne180100IPN4gdcm12quantization5PointENS2_25CoordinatePointComparatorILi1EEEEEvT_S7_S7_T0_.exit, %_ZNSt3__111nth_elementB8ne180100IPN4gdcm12quantization5PointENS2_25CoordinatePointComparatorILi0EEEEEvT_S7_S7_T0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  %i.vd = icmp sgt i32 %.sroa.13.0.copyload, 0
  br i1 %i.vd, label %bb.ad, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ve = call ptr @__cxa_allocate_exception(i64 40) #26 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.ve, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 143, ptr noundef nonnull @.str.2)
          to label %bb.ab unwind label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  invoke void @__cxa_throw(ptr nonnull %i.ve, ptr nonnull @_ZTIN4gdcm9ExceptionE, ptr nonnull @_ZN4gdcm9ExceptionD2Ev) #27
          to label %.noexc132 unwind label %bb.ak

.noexc132:                                        ; preds = %bb.ab
  unreachable

bb.ac:                                            ; preds = %bb.aa
  %i.vf = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ve) #26
  br label %.body133

bb.ad:                                            ; preds = %bb.z
  store ptr %.sroa.10165.0.copyload, ptr %i.tt, align 8, !tbaa !34
  store i32 %i.uj, ptr %i.tu, align 8, !tbaa !35
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %10, i8 0, i64 3, i1 false), !tbaa !36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.tv, i8 -1, i64 3, i1 false), !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  %gepdiff = sub nsw i64 %.idx, %.idx173          ; 2 uses
  %i.vg = icmp sgt i64 %gepdiff, 0
  br i1 %i.vg, label %bb.ah, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.vh = call ptr @__cxa_allocate_exception(i64 40) #26 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.vh, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 143, ptr noundef nonnull @.str.2)
          to label %bb.af unwind label %bb.ag

bb.af:                                            ; preds = %bb.ae
  invoke void @__cxa_throw(ptr nonnull %i.vh, ptr nonnull @_ZTIN4gdcm9ExceptionE, ptr nonnull @_ZN4gdcm9ExceptionD2Ev) #27
          to label %.noexc136 unwind label %.loopexit.split-lp

.noexc136:                                        ; preds = %bb.af
  unreachable
end_hunk_1
