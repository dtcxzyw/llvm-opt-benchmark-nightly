Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/guiButton?download=true
inline.NumInlined: 861
inline.NumDeleted: 333
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZN9StyleSpec28getStyleFromStatePropagationERKSt5arrayIS_Lm8EENS_5StateE:bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !93   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 %i.h, ptr %i.a, align 8, !tbaa !130
  %i.i = icmp ugt i64 %i.h, 15
  br i1 %i.i, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.b
  %i.j = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %.ptr7.i, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc.i.i unwind label %bb.f ; 2 uses

.noexc.i.i:                                       ; preds = %.noexc.i.i.i
  store ptr %i.j, ptr %.ptr7.i, align 8, !tbaa !129
  %i.k = load i64, ptr %i.a, align 8, !tbaa !130
  store i64 %i.k, ptr %i.e, align 8, !tbaa !94
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i.i, %bb.b
  %i.l = phi ptr [ %i.j, %.noexc.i.i ], [ %i.e, %bb.b ] ; 2 uses
  switch i64 %i.h, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  %i.m = load i8, ptr %i.f, align 1, !tbaa !94
  store i8 %i.m, ptr %i.l, align 1, !tbaa !94
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.l, ptr align 1 %i.f, i64 %i.h, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i.i.i
  %i.n = load i64, ptr %i.a, align 8, !tbaa !130  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.ptr7.i, i64 8
  store i64 %i.n, ptr %i.o, align 8, !tbaa !93
  %i.p = load ptr, ptr %.ptr7.i, align 8, !tbaa !129
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  store i8 0, ptr %i.q, align 1, !tbaa !94
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.r = add nuw nsw i64 %i.c, 1                  ; 2 uses
  %i.s = icmp eq i64 %i.r, 25
  br i1 %i.s, label %_ZN9StyleSpecC2ERKS_.exit, label %bb.b

bb.f:                                             ; preds = %.noexc.i.i.i
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.u = icmp eq i64 %i.c, 0
  br i1 %i.u, label %common.resume, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %.idx.i = phi i64 [ %.add.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.add4.i, %bb.f ] ; 2 uses
  %.ptr.i = getelementptr inbounds i8, ptr %0, i64 %.idx.i
  %.add.i = add nsw i64 %.idx.i, -32              ; 3 uses
  %.ptr5.i = getelementptr inbounds i8, ptr %0, i64 %.add.i
  %i.v = load ptr, ptr %.ptr5.i, align 8, !tbaa !129 ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %.ptr.i, i64 -16 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %.preheader.i.i
  %i.y = load i64, ptr %i.w, align 8, !tbaa !94
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.z) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %.preheader.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.aa = icmp eq i64 %.add.i, 32
  br i1 %i.aa, label %common.resume, label %.preheader.i.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %bb.f, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.am, %bb.j ], [ %i.t, %bb.f ], [ %i.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ]
  resume { ptr, i32 } %common.resume.op

_ZN9StyleSpecC2ERKS_.exit:                        ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 832 ; 2 uses
  store i8 %2, ptr %i.ab, align 8, !tbaa !99
  %i.ac = zext i8 %2 to i32                       ; 2 uses
  %.not15 = icmp eq i8 %2, 0
  br i1 %.not15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN9StyleSpecC2ERKS_.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 832
  %i.ag = add nuw nsw i32 %i.ac, 1
  %wide.trip.count = zext nneg i32 %i.ag to i64
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.k
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %bb.k ] ; 3 uses
  %i.ah = trunc nuw nsw i64 %indvars.iv to i32
  %i.ai = and i32 %i.ah, %i.ac
  %.not12 = icmp eq i32 %i.ai, 0
  br i1 %.not12, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.aj = getelementptr inbounds nuw [840 x i8], ptr %1, i64 %indvars.iv
  invoke void @_ZNK9StyleSpecorERKS_(ptr dead_on_unwind nonnull writable sret(%class.StyleSpec) align 8 %3, ptr noundef nonnull align 8 dereferenceable(833) %0, ptr noundef nonnull align 8 dereferenceable(833) %i.aj)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(833) %0, ptr noundef nonnull align 8 dereferenceable(833) %3, i64 25, i1 false), !tbaa.struct !128
  %i.ak = call noundef nonnull align 8 dereferenceable(800) ptr @_ZNSt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm25EEaSEOS6_(ptr noundef nonnull align 8 dereferenceable(800) %i.ad, ptr noundef nonnull align 8 dereferenceable(800) %i.ae) #28 ; 0 uses
  %i.al = load i8, ptr %i.af, align 8, !tbaa !99
  store i8 %i.al, ptr %i.ab, align 8, !tbaa !99
  call void @_ZNSt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm25EED2Ev(ptr noundef nonnull align 8 dead_on_return(800) dereferenceable(800) %i.ae) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.am = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @_ZNSt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm25EED2Ev(ptr noundef nonnull align 8 dead_on_return(800) dereferenceable(800) %i.ad) #28
  br label %common.resume

bb.k:                                             ; preds = %bb.g, %bb.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.g, !llvm.loop !223

._crit_edge:                                      ; preds = %bb.k, %_ZN9StyleSpecC2ERKS_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN9GUIButton12setFromStyleERK9StyleSpec(ptr noundef nonnull align 8 dereferenceable(7452) initializes((7372, 7388), (7448, 7452)) %0, ptr noundef nonnull align 8 dereferenceable(833) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.core::vector2d.1", align 8  ; 6 uses
  %3 = alloca %"class.core::rect", align 16       ; 5 uses
  %4 = alloca %"class.core::rect", align 16       ; 5 uses
  %5 = alloca %"class.video::SColor", align 4     ; 5 uses
  %6 = alloca %"class.video::SColor", align 4     ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 832 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !99
  %.fr109 = freeze i8 %i.b                        ; 2 uses
  %i.c = and i8 %.fr109, 2
  %.not = icmp eq i8 %i.c, 0                      ; 2 uses
  %i.d = and i8 %.fr109, 4
  %.not55 = icmp eq i8 %i.d, 0                    ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.g = load i64, ptr %i.f, align 8, !tbaa !93
  %.not94 = icmp eq i64 %i.g, 0
  br i1 %.not94, label %bb.d, label %_ZNK9StyleSpec8getColorENS_8PropertyE.exit

_ZNK9StyleSpec8getColorENS_8PropertyE.exit:       ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 64
  store i32 0, ptr %6, align 4, !tbaa !29
  %i.i = call noundef zeroext i1 @_Z16parseColorStringRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERN5video6SColorEbh(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 4 dereferenceable(4) %6, i1 noundef zeroext false, i8 noundef zeroext -1) ; 0 uses
  %i.j = load i32, ptr %6, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @_ZN9GUIButton8setColorEN5video6SColorE(ptr noundef nonnull align 8 dereferenceable(7452) %0, i32 %i.j)
  %i.k = load i8, ptr %i.a, align 8, !tbaa !99
  %i.l = zext i8 %i.k to i64
  %i.m = getelementptr inbounds nuw [840 x i8], ptr %0, i64 %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 688
  %i.o = load i64, ptr %i.n, align 8, !tbaa !93
  %.not95 = icmp eq i64 %i.o, 0
  br i1 %.not95, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %_ZNK9StyleSpec8getColorENS_8PropertyE.exit
  br i1 %.not55, label %bb.c, label %.loopexit.loopexit113

.loopexit.loopexit113:                            ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 7448 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !29   ; 4 uses
  %i.r = and i32 %i.q, -16777216
  %i.s = lshr i32 %i.q, 16
  %i.t = and i32 %i.s, 255
  %i.u = uitofp nsz nneg i32 %i.t to float
  %i.v = fmul nnan nsz float %i.u, 8.500000e-01
  %i.w = fptoui float %i.v to i32
  %i.x = call noundef i32 @llvm.umin.i32(i32 %i.w, i32 255)
  %i.y = lshr i32 %i.q, 8
  %i.z = and i32 %i.y, 255
  %i.aa = uitofp nsz nneg i32 %i.z to float
  %i.ab = fmul nnan nsz float %i.aa, 8.500000e-01
  %i.ac = fptoui float %i.ab to i32
  %i.ad = call noundef i32 @llvm.umin.i32(i32 %i.ac, i32 255)
  %i.ae = and i32 %i.q, 255
  %i.af = uitofp nsz nneg i32 %i.ae to float
  %i.ag = fmul nnan nsz float %i.af, 8.500000e-01
  %i.ah = fptoui float %i.ag to i32
  %i.ai = call noundef i32 @llvm.umin.i32(i32 %i.ah, i32 255)
  %i.aj = shl nuw nsw i32 %i.x, 16
  %i.ak = or disjoint i32 %i.aj, %i.r
  %i.al = shl nuw nsw i32 %i.ad, 8
  %i.am = or disjoint i32 %i.ak, %i.al
  %i.an = or disjoint i32 %i.am, %i.ai
  store i32 %i.an, ptr %i.p, align 8, !tbaa !82
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 7372 ; 2 uses
  %i.ap = load <4 x i32>, ptr %i.ao, align 4, !tbaa !29 ; 4 uses
  %i.aq = and <4 x i32> %i.ap, splat (i32 -16777216)
  %i.ar = lshr <4 x i32> %i.ap, splat (i32 16)
  %i.as = and <4 x i32> %i.ar, splat (i32 255)
  %i.at = uitofp nneg <4 x i32> %i.as to <4 x float>
  %i.au = fmul nnan nsz <4 x float> %i.at, splat (float 8.500000e-01)
  %i.av = fptoui <4 x float> %i.au to <4 x i32>
  %i.aw = call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.av, <4 x i32> splat (i32 255))
  %i.ax = lshr <4 x i32> %i.ap, splat (i32 8)
  %i.ay = and <4 x i32> %i.ax, splat (i32 255)
  %i.az = uitofp nneg <4 x i32> %i.ay to <4 x float>
  %i.ba = fmul nnan nsz <4 x float> %i.az, splat (float 8.500000e-01)
  %i.bb = fptoui <4 x float> %i.ba to <4 x i32>
  %i.bc = call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.bb, <4 x i32> splat (i32 255))
  %i.bd = and <4 x i32> %i.ap, splat (i32 255)
  %i.be = uitofp nneg <4 x i32> %i.bd to <4 x float>
  %i.bf = fmul nnan nsz <4 x float> %i.be, splat (float 8.500000e-01)
  %i.bg = fptoui <4 x float> %i.bf to <4 x i32>
  %i.bh = call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.bg, <4 x i32> splat (i32 255))
  %i.bi = shl nuw nsw <4 x i32> %i.aw, splat (i32 16)
  %i.bj = or disjoint <4 x i32> %i.bi, %i.aq
  %i.bk = shl nuw nsw <4 x i32> %i.bc, splat (i32 8)
  %i.bl = or disjoint <4 x i32> %i.bj, %i.bk
  %i.bm = or disjoint <4 x i32> %i.bl, %i.bh
  store <4 x i32> %i.bm, ptr %i.ao, align 4, !tbaa !82
  br label %.loopexit

bb.c:                                             ; preds = %bb.b
  br i1 %.not, label %.loopexit, label %.loopexit.loopexit112

.loopexit.loopexit112:                            ; preds = %bb.c
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 7448 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !29 ; 4 uses
  %i.bp = and i32 %i.bo, -16777216
  %i.bq = lshr i32 %i.bo, 16
  %i.br = and i32 %i.bq, 255
  %i.bs = uitofp nsz nneg i32 %i.br to float
  %i.bt = fmul nnan nsz float %i.bs, 1.250000e+00
  %i.bu = fptoui float %i.bt to i32
  %i.bv = call noundef i32 @llvm.umin.i32(i32 %i.bu, i32 255)
  %i.bw = lshr i32 %i.bo, 8
  %i.bx = and i32 %i.bw, 255
  %i.by = uitofp nsz nneg i32 %i.bx to float
  %i.bz = fmul nnan nsz float %i.by, 1.250000e+00
  %i.ca = fptoui float %i.bz to i32
  %i.cb = call noundef i32 @llvm.umin.i32(i32 %i.ca, i32 255)
  %i.cc = and i32 %i.bo, 255
  %i.cd = uitofp nsz nneg i32 %i.cc to float
  %i.ce = fmul nnan nsz float %i.cd, 1.250000e+00
  %i.cf = fptoui float %i.ce to i32
  %i.cg = call noundef i32 @llvm.umin.i32(i32 %i.cf, i32 255)
  %i.ch = shl nuw nsw i32 %i.bv, 16
  %i.ci = or disjoint i32 %i.ch, %i.bp
  %i.cj = shl nuw nsw i32 %i.cb, 8
  %i.ck = or disjoint i32 %i.ci, %i.cj
  %i.cl = or disjoint i32 %i.ck, %i.cg
  store i32 %i.cl, ptr %i.bn, align 8, !tbaa !82
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 7372 ; 2 uses
  %i.cn = load <4 x i32>, ptr %i.cm, align 4, !tbaa !29 ; 4 uses
  %i.co = and <4 x i32> %i.cn, splat (i32 -16777216)
  %i.cp = lshr <4 x i32> %i.cn, splat (i32 16)
  %i.cq = and <4 x i32> %i.cp, splat (i32 255)
  %i.cr = uitofp nneg <4 x i32> %i.cq to <4 x float>
  %i.cs = fmul nnan nsz <4 x float> %i.cr, splat (float 1.250000e+00)
  %i.ct = fptoui <4 x float> %i.cs to <4 x i32>
  %i.cu = call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.ct, <4 x i32> splat (i32 255))
  %i.cv = lshr <4 x i32> %i.cn, splat (i32 8)
  %i.cw = and <4 x i32> %i.cv, splat (i32 255)
  %i.cx = uitofp nneg <4 x i32> %i.cw to <4 x float>
  %i.cy = fmul nnan nsz <4 x float> %i.cx, splat (float 1.250000e+00)
  %i.cz = fptoui <4 x float> %i.cy to <4 x i32>
  %i.da = call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.cz, <4 x i32> splat (i32 255))
  %i.db = and <4 x i32> %i.cn, splat (i32 255)
  %i.dc = uitofp nneg <4 x i32> %i.db to <4 x float>
  %i.dd = fmul nnan nsz <4 x float> %i.dc, splat (float 1.250000e+00)
  %i.de = fptoui <4 x float> %i.dd to <4 x i32>
  %i.df = call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.de, <4 x i32> splat (i32 255))
  %i.dg = shl nuw nsw <4 x i32> %i.cu, splat (i32 16)
  %i.dh = or disjoint <4 x i32> %i.dg, %i.co
  %i.di = shl nuw nsw <4 x i32> %i.da, splat (i32 8)
  %i.dj = or disjoint <4 x i32> %i.dh, %i.di
  %i.dk = or disjoint <4 x i32> %i.dj, %i.df
  store <4 x i32> %i.dk, ptr %i.cm, align 4, !tbaa !82
  br label %.loopexit

bb.d:                                             ; preds = %bb.a
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 7448
  store i32 -1, ptr %i.dl, align 8, !tbaa !82
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 10 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 7372 ; 3 uses
  %i.do = load ptr, ptr %i.dm, align 8, !tbaa !81 ; 2 uses
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !24
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 96
  %i.dr = load ptr, ptr %i.dq, align 8
  %i.ds = tail call noundef ptr %i.dr(ptr noundef nonnull align 8 dereferenceable(8) %i.do) ; 2 uses
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !24
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  %i.dv = load ptr, ptr %i.du, align 8
  %i.dw = tail call i32 %i.dv(ptr noundef nonnull align 8 dereferenceable(8) %i.ds, i32 noundef 0) ; 9 uses
  br i1 %.not55, label %.split.us, label %.split.preheader

.split.preheader:                                 ; preds = %bb.d
  %i.dx = and i32 %i.dw, -16777216
  %i.dy = lshr i32 %i.dw, 16
  %i.dz = and i32 %i.dy, 255
  %i.ea = uitofp nsz nneg i32 %i.dz to float
  %i.eb = fmul nnan nsz float %i.ea, 8.500000e-01
  %i.ec = fptoui float %i.eb to i32
  %i.ed = tail call noundef i32 @llvm.umin.i32(i32 %i.ec, i32 255)
  %i.ee = lshr i32 %i.dw, 8
  %i.ef = and i32 %i.ee, 255
  %i.eg = uitofp nsz nneg i32 %i.ef to float
  %i.eh = fmul nnan nsz float %i.eg, 8.500000e-01
  %i.ei = fptoui float %i.eh to i32
  %i.ej = tail call noundef i32 @llvm.umin.i32(i32 %i.ei, i32 255)
  %i.ek = and i32 %i.dw, 255
  %i.el = uitofp nsz nneg i32 %i.ek to float
  %i.em = fmul nnan nsz float %i.el, 8.500000e-01
  %i.en = fptoui float %i.em to i32
  %i.eo = tail call noundef i32 @llvm.umin.i32(i32 %i.en, i32 255)
  %i.ep = shl nuw nsw i32 %i.ed, 16
  %i.eq = or disjoint i32 %i.ep, %i.dx
  %i.er = shl nuw nsw i32 %i.ej, 8
  %i.es = or disjoint i32 %i.eq, %i.er
  %i.et = or disjoint i32 %i.es, %i.eo
  store i32 %i.et, ptr %i.dn, align 4, !tbaa !82
  %i.eu = load ptr, ptr %i.dm, align 8, !tbaa !81 ; 2 uses
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !24
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 96
  %i.ex = load ptr, ptr %i.ew, align 8
  %i.ey = tail call noundef ptr %i.ex(ptr noundef nonnull align 8 dereferenceable(8) %i.eu) ; 2 uses
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !24
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  %i.fb = load ptr, ptr %i.fa, align 8
  %i.fc = tail call i32 %i.fb(ptr noundef nonnull align 8 dereferenceable(8) %i.ey, i32 noundef 1) ; 4 uses
  %i.fd = and i32 %i.fc, -16777216
  %i.fe = lshr i32 %i.fc, 16
  %i.ff = and i32 %i.fe, 255
  %i.fg = uitofp nsz nneg i32 %i.ff to float
  %i.fh = fmul nnan nsz float %i.fg, 8.500000e-01
  %i.fi = fptoui float %i.fh to i32
  %i.fj = tail call noundef i32 @llvm.umin.i32(i32 %i.fi, i32 255)
  %i.fk = lshr i32 %i.fc, 8
  %i.fl = and i32 %i.fk, 255
  %i.fm = uitofp nsz nneg i32 %i.fl to float
  %i.fn = fmul nnan nsz float %i.fm, 8.500000e-01
  %i.fo = fptoui float %i.fn to i32
  %i.fp = tail call noundef i32 @llvm.umin.i32(i32 %i.fo, i32 255)
  %i.fq = and i32 %i.fc, 255
  %i.fr = uitofp nsz nneg i32 %i.fq to float
  %i.fs = fmul nnan nsz float %i.fr, 8.500000e-01
  %i.ft = fptoui float %i.fs to i32
  %i.fu = tail call noundef i32 @llvm.umin.i32(i32 %i.ft, i32 255)
  %i.fv = shl nuw nsw i32 %i.fj, 16
  %i.fw = or disjoint i32 %i.fv, %i.fd
  %i.fx = shl nuw nsw i32 %i.fp, 8
  %i.fy = or disjoint i32 %i.fw, %i.fx
  %i.fz = or disjoint i32 %i.fy, %i.fu
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 7376
  store i32 %i.fz, ptr %i.ga, align 8, !tbaa !82
  %i.gb = load ptr, ptr %i.dm, align 8, !tbaa !81 ; 2 uses
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !24
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 96
  %i.ge = load ptr, ptr %i.gd, align 8
  %i.gf = tail call noundef ptr %i.ge(ptr noundef nonnull align 8 dereferenceable(8) %i.gb) ; 2 uses
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !24
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 16
  %i.gi = load ptr, ptr %i.gh, align 8
  %i.gj = tail call i32 %i.gi(ptr noundef nonnull align 8 dereferenceable(8) %i.gf, i32 noundef 2) ; 4 uses
  %i.gk = and i32 %i.gj, -16777216
  %i.gl = lshr i32 %i.gj, 16
  %i.gm = and i32 %i.gl, 255
  %i.gn = uitofp nsz nneg i32 %i.gm to float
  %i.go = fmul nnan nsz float %i.gn, 8.500000e-01
  %i.gp = fptoui float %i.go to i32
  %i.gq = tail call noundef i32 @llvm.umin.i32(i32 %i.gp, i32 255)
  %i.gr = lshr i32 %i.gj, 8
  %i.gs = and i32 %i.gr, 255
  %i.gt = uitofp nsz nneg i32 %i.gs to float
  %i.gu = fmul nnan nsz float %i.gt, 8.500000e-01
  %i.gv = fptoui float %i.gu to i32
  %i.gw = tail call noundef i32 @llvm.umin.i32(i32 %i.gv, i32 255)
  %i.gx = and i32 %i.gj, 255
  %i.gy = uitofp nsz nneg i32 %i.gx to float
  %i.gz = fmul nnan nsz float %i.gy, 8.500000e-01
  %i.ha = fptoui float %i.gz to i32
  %i.hb = tail call noundef i32 @llvm.umin.i32(i32 %i.ha, i32 255)
  %i.hc = shl nuw nsw i32 %i.gq, 16
  %i.hd = or disjoint i32 %i.hc, %i.gk
  %i.he = shl nuw nsw i32 %i.gw, 8
  %i.hf = or disjoint i32 %i.hd, %i.he
  %i.hg = or disjoint i32 %i.hf, %i.hb
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 7380
  store i32 %i.hg, ptr %i.hh, align 4, !tbaa !82
  %i.hi = load ptr, ptr %i.dm, align 8, !tbaa !81 ; 2 uses
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !24
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 96
  %i.hl = load ptr, ptr %i.hk, align 8
  %i.hm = tail call noundef ptr %i.hl(ptr noundef nonnull align 8 dereferenceable(8) %i.hi) ; 2 uses
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !24
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 16
  %i.hp = load ptr, ptr %i.ho, align 8
  %i.hq = tail call i32 %i.hp(ptr noundef nonnull align 8 dereferenceable(8) %i.hm, i32 noundef 3) ; 4 uses
  %i.hr = and i32 %i.hq, -16777216
  %i.hs = lshr i32 %i.hq, 16
  %i.ht = and i32 %i.hs, 255
  %i.hu = uitofp nsz nneg i32 %i.ht to float
  %i.hv = fmul nnan nsz float %i.hu, 8.500000e-01
  %i.hw = fptoui float %i.hv to i32
  %i.hx = tail call noundef i32 @llvm.umin.i32(i32 %i.hw, i32 255)
  %i.hy = lshr i32 %i.hq, 8
  %i.hz = and i32 %i.hy, 255
  %i.ia = uitofp nsz nneg i32 %i.hz to float
  %i.ib = fmul nnan nsz float %i.ia, 8.500000e-01
  %i.ic = fptoui float %i.ib to i32
  %i.id = tail call noundef i32 @llvm.umin.i32(i32 %i.ic, i32 255)
  %i.ie = and i32 %i.hq, 255
  %i.if = uitofp nsz nneg i32 %i.ie to float
  %i.ig = fmul nnan nsz float %i.if, 8.500000e-01
  %i.ih = fptoui float %i.ig to i32
  %i.ii = tail call noundef i32 @llvm.umin.i32(i32 %i.ih, i32 255)
  %i.ij = shl nuw nsw i32 %i.hx, 16
  %i.ik = or disjoint i32 %i.ij, %i.hr
  %i.il = shl nuw nsw i32 %i.id, 8
  %i.im = or disjoint i32 %i.ik, %i.il
  %i.in = or disjoint i32 %i.im, %i.ii
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 7384
  store i32 %i.in, ptr %i.io, align 8, !tbaa !82
  br label %.loopexit

.split.us:                                        ; preds = %bb.d
  br i1 %.not, label %.split.us.split.us.preheader, label %.split.us.split.preheader

.split.us.split.preheader:                        ; preds = %.split.us
  %i.ip = and i32 %i.dw, -16777216
  %i.iq = lshr i32 %i.dw, 16
  %i.ir = and i32 %i.iq, 255
  %i.is = uitofp nsz nneg i32 %i.ir to float
  %i.it = fmul nnan nsz float %i.is, 1.250000e+00
  %i.iu = fptoui float %i.it to i32
  %i.iv = tail call noundef i32 @llvm.umin.i32(i32 %i.iu, i32 255)
  %i.iw = lshr i32 %i.dw, 8
  %i.ix = and i32 %i.iw, 255
  %i.iy = uitofp nsz nneg i32 %i.ix to float
  %i.iz = fmul nnan nsz float %i.iy, 1.250000e+00
  %i.ja = fptoui float %i.iz to i32
  %i.jb = tail call noundef i32 @llvm.umin.i32(i32 %i.ja, i32 255)
  %i.jc = and i32 %i.dw, 255
  %i.jd = uitofp nsz nneg i32 %i.jc to float
  %i.je = fmul nnan nsz float %i.jd, 1.250000e+00
  %i.jf = fptoui float %i.je to i32
  %i.jg = tail call noundef i32 @llvm.umin.i32(i32 %i.jf, i32 255)
  %i.jh = shl nuw nsw i32 %i.iv, 16
  %i.ji = or disjoint i32 %i.jh, %i.ip
  %i.jj = shl nuw nsw i32 %i.jb, 8
  %i.jk = or disjoint i32 %i.ji, %i.jj
  %i.jl = or disjoint i32 %i.jk, %i.jg
  store i32 %i.jl, ptr %i.dn, align 4, !tbaa !82
  %i.jm = load ptr, ptr %i.dm, align 8, !tbaa !81 ; 2 uses
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !24
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 96
  %i.jp = load ptr, ptr %i.jo, align 8
  %i.jq = tail call noundef ptr %i.jp(ptr noundef nonnull align 8 dereferenceable(8) %i.jm) ; 2 uses
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !24
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 16
  %i.jt = load ptr, ptr %i.js, align 8
  %i.ju = tail call i32 %i.jt(ptr noundef nonnull align 8 dereferenceable(8) %i.jq, i32 noundef 1) ; 4 uses
  %i.jv = and i32 %i.ju, -16777216
  %i.jw = lshr i32 %i.ju, 16
  %i.jx = and i32 %i.jw, 255
  %i.jy = uitofp nsz nneg i32 %i.jx to float
  %i.jz = fmul nnan nsz float %i.jy, 1.250000e+00
  %i.ka = fptoui float %i.jz to i32
  %i.kb = tail call noundef i32 @llvm.umin.i32(i32 %i.ka, i32 255)
end_hunk_0
begin_hunk_1_@_ZN9GUIButton12setFromStyleERK9StyleSpec:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %i.qj = call noundef zeroext i1 @_ZNK9StyleSpec9parseRectERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN4core4rectIiEE(ptr noundef nonnull align 8 dereferenceable(833) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.qi, ptr noundef nonnull %4)
  %i.qk = load <2 x i64>, ptr %4, align 16
  %i.ql = insertelement <2 x i1> poison, i1 %i.qj, i64 0
  %i.qm = shufflevector <2 x i1> %i.ql, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.qn = select <2 x i1> %i.qm, <2 x i64> %i.qk, <2 x i64> %i.qe
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %_ZNK9StyleSpec7getRectENS_8PropertyEN4core4rectIiEE.exit

_ZNK9StyleSpec7getRectENS_8PropertyEN4core4rectIiEE.exit: ; preds = %_ZNK9StyleSpec7getBoolENS_8PropertyEb.exit60, %bb.j
  %i.qo = phi <2 x i64> [ %i.qn, %bb.j ], [ %i.qe, %_ZNK9StyleSpec7getBoolENS_8PropertyEb.exit60 ]
  store <2 x i64> %i.qo, ptr %i.qd, align 8, !tbaa !82
  %i.qp = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.qq = load i64, ptr %i.qp, align 8, !tbaa !93
  %.not97 = icmp eq i64 %i.qq, 0
  br i1 %.not97, label %bb.m, label %_ZNK9StyleSpec10getTextureENS_8PropertyEP20ISimpleTextureSource.exit

_ZNK9StyleSpec10getTextureENS_8PropertyEP20ISimpleTextureSource.exit: ; preds = %_ZNK9StyleSpec7getRectENS_8PropertyEN4core4rectIiEE.exit
  %i.qr = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.qs = getelementptr inbounds nuw i8, ptr %0, i64 7392
  %i.qt = load ptr, ptr %i.qs, align 8, !tbaa !71 ; 2 uses
  %i.qu = load ptr, ptr %i.qt, align 8, !tbaa !24
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qu, i64 16
  %i.qw = load ptr, ptr %i.qv, align 8
  %i.qx = call noundef ptr %i.qw(ptr noundef nonnull align 8 dereferenceable(8) %i.qt, ptr noundef nonnull align 8 dereferenceable(32) %i.qr, ptr noundef null), !inline_history !224 ; 2 uses
  %i.qy = load i32, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !122
  %i.qz = load i32, ptr %i.qd, align 8, !tbaa !115
  %i.ra = sub nsw i32 %i.qy, %i.qz
  %i.rb = getelementptr inbounds nuw i8, ptr %0, i64 7420
  %i.rc = load i32, ptr %i.rb, align 4, !tbaa !117
  %i.rd = getelementptr inbounds nuw i8, ptr %0, i64 7412
  %i.re = load i32, ptr %i.rd, align 4, !tbaa !116
  %i.rf = sub nsw i32 %i.rc, %i.re
  %i.rg = mul nsw i32 %i.rf, %i.ra
  %i.rh = icmp eq i32 %i.rg, 0
  br i1 %i.rh, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZNK9StyleSpec10getTextureENS_8PropertyEP20ISimpleTextureSource.exit
  %i.ri = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.rj = load ptr, ptr %i.ri, align 8, !tbaa !81 ; 2 uses
  %i.rk = load ptr, ptr %i.rj, align 8, !tbaa !24
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rk, i64 48
  %i.rm = load ptr, ptr %i.rl, align 8
  %i.rn = call noundef ptr %i.rm(ptr noundef nonnull align 8 dereferenceable(8) %i.rj)
  %i.ro = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.rp = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.rq = load i32, ptr %i.rp, align 8, !tbaa !122
  %i.rr = load i32, ptr %i.ro, align 8, !tbaa !115
  %i.rs = sub nsw i32 %i.rq, %i.rr
  %i.rt = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.ru = load i32, ptr %i.rt, align 4, !tbaa !117
  %i.rv = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.rw = load i32, ptr %i.rv, align 4, !tbaa !116
  %i.rx = sub nsw i32 %i.ru, %i.rw
  %i.ry = call noundef ptr @_Z21guiScalingImageButtonPN5video12IVideoDriverEPNS_8ITextureEii(ptr noundef %i.rn, ptr noundef %i.qx, i32 noundef %i.rs, i32 noundef %i.rx)
  br label %bb.l

bb.l:                                             ; preds = %_ZNK9StyleSpec10getTextureENS_8PropertyEP20ISimpleTextureSource.exit, %bb.k
  %.sink = phi ptr [ %i.ry, %bb.k ], [ %i.qx, %_ZNK9StyleSpec10getTextureENS_8PropertyEP20ISimpleTextureSource.exit ]
  %i.rz = load ptr, ptr %0, align 8, !tbaa !24
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rz, i64 352
  %i.sb = load ptr, ptr %i.sa, align 8
  call void %i.sb(ptr noundef nonnull align 8 dereferenceable(7452) %0, ptr noundef %.sink)
  %i.sc = load ptr, ptr %0, align 8, !tbaa !24
  %i.sd = getelementptr inbounds nuw i8, ptr %i.sc, i64 488
  %i.se = load ptr, ptr %i.sd, align 8
  call void %i.se(ptr noundef nonnull align 8 dereferenceable(7452) %0, i1 noundef zeroext true)
  br label %bb.n

bb.m:                                             ; preds = %_ZNK9StyleSpec7getRectENS_8PropertyEN4core4rectIiEE.exit
  %i.sf = load ptr, ptr %0, align 8, !tbaa !24
  %i.sg = getelementptr inbounds nuw i8, ptr %i.sf, i64 352
  %i.sh = load ptr, ptr %i.sg, align 8
  call void %i.sh(ptr noundef nonnull align 8 dereferenceable(7452) %0, ptr noundef null)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.si = getelementptr inbounds nuw i8, ptr %1, i64 552
  %i.sj = load i64, ptr %i.si, align 8, !tbaa !93
  %i.sk = icmp eq i64 %i.sj, 0
  br i1 %i.sk, label %_ZNK9StyleSpec7getRectENS_8PropertyEN4core4rectIiEE.exit70, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.sl = getelementptr inbounds nuw i8, ptr %1, i64 544
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %i.sm = call noundef zeroext i1 @_ZNK9StyleSpec9parseRectERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN4core4rectIiEE(ptr noundef nonnull align 8 dereferenceable(833) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.sl, ptr noundef nonnull %3)
  %i.sn = load <2 x i64>, ptr %3, align 16
  %i.so = insertelement <2 x i1> poison, i1 %i.sm, i64 0
  %i.sp = shufflevector <2 x i1> %i.so, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.sq = select <2 x i1> %i.sp, <2 x i64> %i.sn, <2 x i64> zeroinitializer
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %_ZNK9StyleSpec7getRectENS_8PropertyEN4core4rectIiEE.exit70

_ZNK9StyleSpec7getRectENS_8PropertyEN4core4rectIiEE.exit70: ; preds = %bb.n, %bb.o
  %i.sr = phi <2 x i64> [ %i.sq, %bb.o ], [ zeroinitializer, %bb.n ] ; 2 uses
  %i.ss = getelementptr inbounds nuw i8, ptr %0, i64 7424 ; 2 uses
  %i.st = trunc <2 x i64> %i.sr to <2 x i32>
  %i.su = lshr <2 x i64> %i.sr, splat (i64 32)
  %i.sv = load <4 x i32>, ptr %i.qd, align 8, !tbaa !82 ; 2 uses
  %i.sw = shufflevector <4 x i32> %i.sv, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %i.sx = add nsw <2 x i32> %i.sw, %i.st
  %i.sy = trunc nuw <2 x i64> %i.su to <2 x i32>
  %i.sz = shufflevector <4 x i32> %i.sv, <4 x i32> poison, <2 x i32> <i32 1, i32 3>
  %i.ta = add nsw <2 x i32> %i.sz, %i.sy
  %i.tb = zext <2 x i32> %i.ta to <2 x i64>
  %i.tc = shl nuw <2 x i64> %i.tb, splat (i64 32)
  %i.td = zext <2 x i32> %i.sx to <2 x i64>
  %i.te = or disjoint <2 x i64> %i.tc, %i.td
  store <2 x i64> %i.te, ptr %i.ss, align 8, !tbaa !82
  %i.tf = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.tg = load ptr, ptr %i.tf, align 8, !tbaa !81 ; 2 uses
  %i.th = load ptr, ptr %i.tg, align 8, !tbaa !24
  %i.ti = getelementptr inbounds nuw i8, ptr %i.th, i64 96
  %i.tj = load ptr, ptr %i.ti, align 8
  %i.tk = call noundef ptr %i.tj(ptr noundef nonnull align 8 dereferenceable(8) %i.tg) ; 4 uses
  %i.tl = load ptr, ptr %i.tk, align 8, !tbaa !24
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tl, i64 32
  %i.tn = load ptr, ptr %i.tm, align 8
  %i.to = call noundef i32 %i.tn(ptr noundef nonnull align 8 dereferenceable(8) %i.tk, i32 noundef 17)
  %i.tp = load ptr, ptr %i.tk, align 8, !tbaa !24
  %i.tq = getelementptr inbounds nuw i8, ptr %i.tp, i64 32
  %i.tr = load ptr, ptr %i.tq, align 8
  %i.ts = call noundef i32 %i.tr(ptr noundef nonnull align 8 dereferenceable(8) %i.tk, i32 noundef 18)
  %i.tt = load ptr, ptr %0, align 8, !tbaa !24
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tt, i64 440
  %i.tv = load ptr, ptr %i.tu, align 8
  %i.tw = call noundef zeroext i1 %i.tv(ptr noundef nonnull align 8 dereferenceable(7452) %0)
  %i.tx = zext i32 %i.ts to i64
  %i.ty = shl nuw i64 %i.tx, 32
  %i.tz = zext i32 %i.to to i64
  %i.ua = or disjoint i64 %i.ty, %i.tz
  %.sroa.083.0.insert.insert = select i1 %i.tw, i64 %i.ua, i64 0 ; 4 uses
  %i.ub = getelementptr inbounds nuw i8, ptr %1, i64 520
  %i.uc = load i64, ptr %i.ub, align 8, !tbaa !93
  %i.ud = icmp eq i64 %i.uc, 0
  br i1 %i.ud, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZNK9StyleSpec7getRectENS_8PropertyEN4core4rectIiEE.exit70
  %.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.083.0.insert.insert to i32
  %.sroa.4.0.extract.shift.i = lshr i64 %.sroa.083.0.insert.insert, 32
  br label %_ZNK9StyleSpec11getVector2iENS_8PropertyEN4core8vector2dIiEE.exit

bb.q:                                             ; preds = %_ZNK9StyleSpec7getRectENS_8PropertyEN4core4rectIiEE.exit70
  %i.ue = getelementptr inbounds nuw i8, ptr %1, i64 512
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  store <2 x float> zeroinitializer, ptr %2, align 8, !tbaa !131
  %i.uf = call noundef zeroext i1 @_ZNK9StyleSpec13parseVector2fERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN4core8vector2dIfEE(ptr noundef nonnull align 8 dereferenceable(833) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.ue, ptr noundef nonnull %2)
  br i1 %i.uf, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.sroa.0.0.extract.trunc4.i = trunc i64 %.sroa.083.0.insert.insert to i32
  %.sroa.4.0.extract.shift5.i = lshr i64 %.sroa.083.0.insert.insert, 32
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.ug = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.uh = load float, ptr %2, align 8, !tbaa !225
  %i.ui = fptosi float %i.uh to i32
  %i.uj = load float, ptr %i.ug, align 4, !tbaa !226
  %i.uk = fptosi float %i.uj to i32
  %i.ul = zext i32 %i.uk to i64
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.sroa.4.0.i75 = phi i64 [ %i.ul, %bb.s ], [ %.sroa.4.0.extract.shift5.i, %bb.r ]
  %.sroa.0.0.i = phi i32 [ %i.ui, %bb.s ], [ %.sroa.0.0.extract.trunc4.i, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %_ZNK9StyleSpec11getVector2iENS_8PropertyEN4core8vector2dIiEE.exit

_ZNK9StyleSpec11getVector2iENS_8PropertyEN4core8vector2dIiEE.exit: ; preds = %bb.p, %bb.t
  %.sroa.4.1.i76 = phi i64 [ %.sroa.4.0.extract.shift.i, %bb.p ], [ %.sroa.4.0.i75, %bb.t ] ; 2 uses
  %.sroa.0.1.i = phi i32 [ %.sroa.0.0.extract.trunc.i, %bb.p ], [ %.sroa.0.0.i, %bb.t ] ; 2 uses
  %.sroa.4.0.insert.shift.i = shl nuw i64 %.sroa.4.1.i76, 32
  %.sroa.0.0.insert.ext.i77 = zext i32 %.sroa.0.1.i to i64
  %.sroa.0.0.insert.insert.i78 = or disjoint i64 %.sroa.4.0.insert.shift.i, %.sroa.0.0.insert.ext.i77
  %i.um = getelementptr inbounds nuw i8, ptr %0, i64 7440
  store i64 %.sroa.0.0.insert.insert.i78, ptr %i.um, align 8, !tbaa !82
  %i.un = trunc i64 %.sroa.4.1.i76 to i32
  %i.uo = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.up = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.uq = load <4 x i32>, ptr %i.ss, align 8, !tbaa !82
  %i.ur = load <2 x i32>, ptr %i.up, align 8, !tbaa !82
  %i.us = load <2 x i32>, ptr %i.uo, align 8, !tbaa !82
  %i.ut = insertelement <2 x i32> poison, i32 %.sroa.0.1.i, i64 0
  %i.uu = insertelement <2 x i32> %i.ut, i32 %i.un, i64 1 ; 2 uses
  %i.uv = add <2 x i32> %i.ur, %i.uu
  %i.uw = sub <2 x i32> %i.uv, %i.us
  %i.ux = shufflevector <2 x i32> %i.uu, <2 x i32> %i.uw, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.uy = add <4 x i32> %i.ux, %i.uq              ; 2 uses
  %i.uz = load ptr, ptr %0, align 8, !tbaa !24
  %i.va = getelementptr inbounds nuw i8, ptr %i.uz, i64 224
  %i.vb = load ptr, ptr %i.va, align 8
  %i.vc = call noundef nonnull align 8 dereferenceable(24) ptr %i.vb(ptr noundef nonnull align 8 dereferenceable(308) %0) ; 3 uses
  %.sroa.079.0106 = load ptr, ptr %i.vc, align 8, !tbaa !127 ; 2 uses
  %.not99107 = icmp eq ptr %.sroa.079.0106, %i.vc
  br i1 %.not99107, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK9StyleSpec11getVector2iENS_8PropertyEN4core8vector2dIiEE.exit
  %i.vd = sitofp <4 x i32> %i.uy to <4 x float>   ; 4 uses
  %i.ve = extractelement <4 x float> %i.vd, i64 0
  %i.vf = extractelement <4 x float> %i.vd, i64 1
  %i.vg = extractelement <4 x float> %i.vd, i64 2
  %i.vh = extractelement <4 x float> %i.vd, i64 3
  br label %bb.u

._crit_edge:                                      ; preds = %_ZN3gui11IGUIElement19setRelativePositionERKN4core4rectIiEE.exit, %_ZNK9StyleSpec11getVector2iENS_8PropertyEN4core8vector2dIiEE.exit
  ret void

bb.u:                                             ; preds = %.lr.ph, %_ZN3gui11IGUIElement19setRelativePositionERKN4core4rectIiEE.exit
  %.sroa.079.0108 = phi ptr [ %.sroa.079.0106, %.lr.ph ], [ %.sroa.079.0, %_ZN3gui11IGUIElement19setRelativePositionERKN4core4rectIiEE.exit ] ; 2 uses
  %i.vi = getelementptr inbounds nuw i8, ptr %.sroa.079.0108, i64 16
  %i.vj = load ptr, ptr %i.vi, align 8, !tbaa !80 ; 12 uses
  %i.vk = getelementptr inbounds nuw i8, ptr %i.vj, i64 32
  %i.vl = load ptr, ptr %i.vk, align 8, !tbaa !78 ; 3 uses
  %.not.i = icmp eq ptr %i.vl, null
  br i1 %.not.i, label %_ZN3gui11IGUIElement19setRelativePositionERKN4core4rectIiEE.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.vm = getelementptr inbounds nuw i8, ptr %i.vl, i64 64
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.vm, align 8, !tbaa !82 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.vl, i64 72
  %.sroa.2.0.copyload.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !82 ; 2 uses
  %i.vn = sub i64 %.sroa.2.0.copyload.i.i, %.sroa.0.0.copyload.i.i
  %.sroa.7.12.extract.shift.i = lshr i64 %.sroa.2.0.copyload.i.i, 32
  %.sroa.7.12.extract.trunc.i = trunc nuw i64 %.sroa.7.12.extract.shift.i to i32
  %.sroa.016.4.extract.shift.i = lshr i64 %.sroa.0.0.copyload.i.i, 32
  %.sroa.016.4.extract.trunc.i = trunc nuw i64 %.sroa.016.4.extract.shift.i to i32
  %i.vo = sub nsw i32 %.sroa.7.12.extract.trunc.i, %.sroa.016.4.extract.trunc.i
  %.sroa.01.0.extract.trunc.i = trunc i64 %i.vn to i32
  %i.vp = sitofp nsz i32 %.sroa.01.0.extract.trunc.i to float ; 2 uses
  %i.vq = sitofp nsz i32 %i.vo to float           ; 2 uses
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vj, i64 280
  %i.vs = load i32, ptr %i.vr, align 8, !tbaa !132
  %i.vt = icmp eq i32 %i.vs, 3
  br i1 %i.vt, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.vu = fdiv nsz float %i.ve, %i.vp
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vj, i64 128
  store float %i.vu, ptr %i.vv, align 8, !tbaa !133
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vj, i64 284
  %i.vx = load i32, ptr %i.vw, align 4, !tbaa !134
  %i.vy = icmp eq i32 %i.vx, 3
  br i1 %i.vy, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.vz = fdiv nsz float %i.vg, %i.vp
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vj, i64 136
  store float %i.vz, ptr %i.wa, align 8, !tbaa !135
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.wb = getelementptr inbounds nuw i8, ptr %i.vj, i64 288
  %i.wc = load i32, ptr %i.wb, align 8, !tbaa !136
  %i.wd = icmp eq i32 %i.wc, 3
  br i1 %i.wd, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.we = fdiv nsz float %i.vf, %i.vq
  %i.wf = getelementptr inbounds nuw i8, ptr %i.vj, i64 132
  store float %i.we, ptr %i.wf, align 4, !tbaa !137
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.wg = getelementptr inbounds nuw i8, ptr %i.vj, i64 292
  %i.wh = load i32, ptr %i.wg, align 4, !tbaa !138
  %i.wi = icmp eq i32 %i.wh, 3
  br i1 %i.wi, label %bb.ac, label %_ZN3gui11IGUIElement19setRelativePositionERKN4core4rectIiEE.exit

bb.ac:                                            ; preds = %bb.ab
  %i.wj = fdiv nsz float %i.vh, %i.vq
  %i.wk = getelementptr inbounds nuw i8, ptr %i.vj, i64 140
  store float %i.wj, ptr %i.wk, align 4, !tbaa !139
  br label %_ZN3gui11IGUIElement19setRelativePositionERKN4core4rectIiEE.exit

_ZN3gui11IGUIElement19setRelativePositionERKN4core4rectIiEE.exit: ; preds = %bb.u, %bb.ab, %bb.ac
  %i.wl = getelementptr inbounds nuw i8, ptr %i.vj, i64 96
  store <4 x i32> %i.uy, ptr %i.wl, align 8, !tbaa !82
  %i.wm = load ptr, ptr %i.vj, align 8, !tbaa !24
  %i.wn = getelementptr inbounds nuw i8, ptr %i.wm, i64 24
  %i.wo = load ptr, ptr %i.wn, align 8
  call void %i.wo(ptr noundef nonnull align 8 dereferenceable(308) %i.vj), !inline_history !6
  %.sroa.079.0 = load ptr, ptr %.sroa.079.0108, align 8, !tbaa !127 ; 2 uses
  %.not99 = icmp eq ptr %.sroa.079.0, %i.vc
  br i1 %.not99, label %._crit_edge, label %bb.u
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK9StyleSpec7getFontEv(ptr noundef nonnull align 8 dereferenceable(833) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %1 = alloca %"class.std::vector.45", align 8    ; 10 uses
  %2 = alloca %"class.std::__cxx11::basic_string.6", align 8 ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.d = load i64, ptr %i.c, align 8, !tbaa !93
  %i.e = icmp eq i64 %i.d, 0
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 616 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8
  %i.h = icmp eq i64 %i.g, 0
  %or.cond = select i1 %i.e, i1 %i.h, i1 false
  br i1 %or.cond, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 576
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  call void @_Z5splitIcESt6vectorINSt7__cxx1112basic_stringIT_St11char_traitsIS3_ESaIS3_EEESaIS7_EERKS7_S3_(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.45") align 8 %1, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i8 noundef signext 44)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !142  ; 2 uses
  %i.l = load ptr, ptr %1, align 8, !tbaa !143    ; 3 uses
  %.not = icmp eq ptr %i.k, %i.l
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = ashr exact i64 %i.o, 5
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.q = zext nneg i8 %.sroa.15.1 to i64
  %i.r = shl nuw nsw i64 %i.q, 56
  %i.s = zext nneg i8 %.sroa.13.1 to i64
  %i.t = shl nuw nsw i64 %i.s, 48
  %i.u = or disjoint i64 %i.r, %i.t
  %i.v = zext nneg i8 %.sroa.11.1 to i64
  %i.w = shl nuw nsw i64 %i.v, 40
  %i.x = or disjoint i64 %i.u, %i.w
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %.sroa.6.0.lcssa = phi i8 [ 0, %bb.b ], [ %.sroa.6.1, %._crit_edge.loopexit ] ; 3 uses
  %.sroa.15.0.lcssa = phi i64 [ 72057594037927936, %bb.b ], [ %i.x, %._crit_edge.loopexit ]
  %i.y = load i64, ptr %i.f, align 8, !tbaa !93   ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %bb.n, label %bb.c

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %.02463 = phi i64 [ %i.av, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.sroa.15.062 = phi i8 [ %.sroa.15.1, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ], [ 1, %.lr.ph.preheader ] ; 6 uses
  %.sroa.13.061 = phi i8 [ %.sroa.13.1, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ], [ 0, %.lr.ph.preheader ] ; 6 uses
  %.sroa.6.060 = phi i8 [ %.sroa.6.1, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ], [ 0, %.lr.ph.preheader ] ; 4 uses
  %.sroa.11.059 = phi i8 [ %.sroa.11.1, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ], [ 0, %.lr.ph.preheader ] ; 6 uses
  %i.aa = getelementptr inbounds nuw [32 x i8], ptr %i.l, i64 %.02463 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !93 ; 4 uses
  switch i64 %i.ac, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread [
    i64 6, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
    i64 4, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit30
    i64 16, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit36
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %.lr.ph
  %i.ad = load ptr, ptr %i.aa, align 8, !tbaa !129 ; 3 uses
  %i.ae = load i32, ptr %i.ad, align 1
  %i.af = xor i32 %i.ae, 1836216174
  %i.ag = getelementptr i8, ptr %i.ad, i64 4
  %i.ah = load i16, ptr %i.ag, align 1
  %i.ai = zext i16 %i.ah to i32
  %i.aj = xor i32 %i.ai, 27745
  %i.ak = or i32 %i.af, %i.aj
  %i.al = icmp ne i32 %i.ak, 0
  %i.am = zext i1 %i.al to i32
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit34

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit30: ; preds = %.lr.ph
  %.pre = load ptr, ptr %i.aa, align 8, !tbaa !129 ; 2 uses
  %bcmp.i29 = call i32 @bcmp(ptr %.pre, ptr nonnull @.str.10, i64 %i.ac)
  %i.ao = icmp eq i32 %bcmp.i29, 0
  br i1 %i.ao, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit32

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit32: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit30
  %i.ap = load i32, ptr %.pre, align 1
  %i.aq = icmp ne i32 %i.ap, 1684828002
  %i.ar = zext i1 %i.aq to i32
  %i.as = icmp eq i32 %i.ar, 0
  %spec.select81 = select i1 %i.as, i8 1, i8 %.sroa.11.059
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit34: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %bcmp.i33 = call i32 @bcmp(ptr nonnull %i.ad, ptr nonnull @.str.12, i64 %i.ac)
  %i.at = icmp eq i32 %bcmp.i33, 0
  %spec.select82 = select i1 %i.at, i8 1, i8 %.sroa.13.061
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit36: ; preds = %.lr.ph
  %.pre67 = load ptr, ptr %i.aa, align 8, !tbaa !129
  %bcmp.i35 = call i32 @bcmp(ptr %.pre67, ptr nonnull @.str.13, i64 %i.ac)
  %i.au = icmp eq i32 %bcmp.i35, 0
  %spec.select = select i1 %i.au, i8 0, i8 %.sroa.15.062
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit34, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit32, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit36, %.lr.ph, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit30, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %.sroa.11.1 = phi i8 [ %.sroa.11.059, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit36 ], [ %.sroa.11.059, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ %.sroa.11.059, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit30 ], [ %.sroa.11.059, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit34 ], [ %.sroa.11.059, %.lr.ph ], [ %spec.select81, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit32 ] ; 2 uses
end_hunk_1
