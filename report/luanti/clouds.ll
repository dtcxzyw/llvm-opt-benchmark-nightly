Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/clouds?download=true
inline.NumInlined: 1459
inline.NumDeleted: 513
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN6Clouds10updateMeshEv:bb.a
          to label %bb.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.i:                                             ; preds = %bb.h
  %i.fw = fdiv nsz float %i.fv, 1.750000e+00
  %i.fx = tail call nsz float @llvm.fmuladd.f32(float %i.fw, float 5.000000e-01, float 5.000000e-01)
  %i.fy = load float, ptr %i.dn, align 4, !tbaa !146
  %i.fz = fcmp nsz olt float %i.fx, %i.fy
  %i.ga = add i32 %i.fe, %i.fq                    ; 2 uses
  %i.gb = lshr i32 %i.ga, 6
  %.zext = zext nneg i32 %i.gb to i64
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0502.0, i64 %.zext ; 3 uses
  %i.gd = and i32 %i.ga, 63
  %i.ge = zext nneg i32 %i.gd to i64
  %i.gf = shl nuw i64 1, %i.ge                    ; 2 uses
  br i1 %i.fz, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.gg = load i64, ptr %i.gc, align 8, !tbaa !112
  %i.gh = or i64 %i.gg, %i.gf
  br label %_ZNSt14_Bit_referenceaSEb.exit

bb.k:                                             ; preds = %bb.i
  %i.gi = xor i64 %i.gf, -1
  %i.gj = load i64, ptr %i.gc, align 8, !tbaa !112
  %i.gk = and i64 %i.gj, %i.gi
  br label %_ZNSt14_Bit_referenceaSEb.exit

_ZNSt14_Bit_referenceaSEb.exit:                   ; preds = %bb.j, %bb.k
  %storemerge = phi i64 [ %i.gk, %bb.k ], [ %i.gh, %bb.j ]
  store i64 %storemerge, ptr %i.gc, align 8, !tbaa !112
  %i.gl = add i16 %.0257614, 1                    ; 2 uses
  %i.gm = sext i16 %i.gl to i32                   ; 2 uses
  %i.gn = load i16, ptr %i.cu, align 8, !tbaa !124 ; 2 uses
  %i.go = zext i16 %i.gn to i32                   ; 2 uses
  %i.gp = icmp slt i32 %i.gm, %i.go
  br i1 %i.gp, label %bb.h, label %._crit_edge, !llvm.loop !206

_ZNSt6vectorIN5video9S3DVertexESaIS1_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseIN5video9S3DVertexESaIS1_EE13_M_deallocateEPS1_m.exit.i, %._crit_edge617
  %i.gq = phi ptr [ %i.en, %_ZNSt12_Vector_baseIN5video9S3DVertexESaIS1_EE13_M_deallocateEPS1_m.exit.i ], [ %i.ec, %._crit_edge617 ]
  %i.gr = lshr exact i32 %i.dy, 2
  %i.gs = mul i32 %i.gr, 6
  %i.gt = zext i32 %i.gs to i64                   ; 3 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.du, i64 48 ; 16 uses
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !149
  %i.gw = load ptr, ptr %i.dv, align 8, !tbaa !150
  %i.gx = ptrtoint ptr %i.gv to i64
  %i.gy = ptrtoint ptr %i.gw to i64               ; 2 uses
  %i.gz = sub i64 %i.gx, %i.gy
  %i.ha = ashr exact i64 %i.gz, 1
  %i.hb = icmp ult i64 %i.ha, %i.gt
  br i1 %i.hb, label %_ZNSt12_Vector_baseItSaItEE11_M_allocateEm.exit.i, label %_ZNSt6vectorItSaItEE7reserveEm.exit

_ZNSt12_Vector_baseItSaItEE11_M_allocateEm.exit.i: ; preds = %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE7reserveEm.exit
  %i.hc = getelementptr inbounds nuw i8, ptr %i.du, i64 40 ; 3 uses
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !151
  %i.he = ptrtoint ptr %i.hd to i64
  %i.hf = sub i64 %i.he, %i.gy
  %i.hg = shl nuw nsw i64 %i.gt, 1
  %i.hh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hg) #25
          to label %.noexc344 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc344:                                        ; preds = %_ZNSt12_Vector_baseItSaItEE11_M_allocateEm.exit.i
  %i.hi = load ptr, ptr %i.dv, align 8, !tbaa !150 ; 4 uses
  %i.hj = load ptr, ptr %i.hc, align 8, !tbaa !151
  %i.hk = ptrtoint ptr %i.hj to i64
  %i.hl = ptrtoint ptr %i.hi to i64               ; 2 uses
  %i.hm = sub i64 %i.hk, %i.hl                    ; 2 uses
  %i.hn = icmp sgt i64 %i.hm, 0
  br i1 %i.hn, label %bb.l, label %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit.i

bb.l:                                             ; preds = %.noexc344
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.hh, ptr align 2 %i.hi, i64 %i.hm, i1 false)
  br label %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit.i

_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit.i: ; preds = %bb.l, %.noexc344
  %.not.i8.i343 = icmp eq ptr %i.hi, null
  br i1 %.not.i8.i343, label %_ZNSt12_Vector_baseItSaItEE13_M_deallocateEPtm.exit.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit.i
  %i.ho = load ptr, ptr %i.gu, align 8, !tbaa !149
  %i.hp = ptrtoint ptr %i.ho to i64
  %i.hq = sub i64 %i.hp, %i.hl
  tail call void @_ZdlPvm(ptr noundef nonnull %i.hi, i64 noundef %i.hq) #22
  br label %_ZNSt12_Vector_baseItSaItEE13_M_deallocateEPtm.exit.i

_ZNSt12_Vector_baseItSaItEE13_M_deallocateEPtm.exit.i: ; preds = %bb.m, %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit.i
  store ptr %i.hh, ptr %i.dv, align 8, !tbaa !150
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hh, i64 %i.hf
  store ptr %i.hr, ptr %i.hc, align 8, !tbaa !151
  %i.hs = getelementptr inbounds nuw [2 x i8], ptr %i.hh, i64 %i.gt
  store ptr %i.hs, ptr %i.gu, align 8, !tbaa !149
  %.pre735 = load ptr, ptr %i.ds, align 8, !tbaa !143
  br label %_ZNSt6vectorItSaItEE7reserveEm.exit

_ZNSt6vectorItSaItEE7reserveEm.exit:              ; preds = %_ZNSt12_Vector_baseItSaItEE13_M_deallocateEPtm.exit.i, %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE7reserveEm.exit
  %i.ht = phi ptr [ %.pre735, %_ZNSt12_Vector_baseItSaItEE13_M_deallocateEPtm.exit.i ], [ %i.gq, %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE7reserveEm.exit ] ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.dr, i64 40 ; 15 uses
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !144
  %.not.i.i = icmp eq ptr %i.hv, %i.ht
  br i1 %.not.i.i, label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE5clearEv.exit, label %_ZSt8_DestroyIPN5video9S3DVertexES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5video9S3DVertexES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZNSt6vectorItSaItEE7reserveEm.exit
  store ptr %i.ht, ptr %i.hu, align 8, !tbaa !144
  br label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE5clearEv.exit

_ZNSt6vectorIN5video9S3DVertexESaIS1_EE5clearEv.exit: ; preds = %_ZNSt6vectorItSaItEE7reserveEm.exit, %_ZSt8_DestroyIPN5video9S3DVertexES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.hw = load i16, ptr %i.cu, align 8, !tbaa !124 ; 3 uses
  %i.hx = sub i16 0, %i.hw                        ; 2 uses
  %i.hy = sext i16 %i.hx to i32
  %i.hz = zext i16 %i.hw to i32
  %i.ia = icmp slt i32 %i.hy, %i.hz
  br i1 %i.ia, label %.lr.ph635, label %._crit_edge636

.lr.ph635:                                        ; preds = %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE5clearEv.exit
  %i.ib = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.ie = getelementptr inbounds nuw i8, ptr %1, i64 27
  %i.if = extractelement <2 x float> %i.az, i64 0
  %i.ig = extractelement <2 x float> %i.az, i64 1
  %i.ih = shufflevector <3 x i32> %i.ct, <3 x i32> poison, <2 x i32> zeroinitializer ; 5 uses
  %i.ii = shufflevector <3 x i32> %i.ct, <3 x i32> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.ij = shufflevector <3 x i32> %i.ct, <3 x i32> poison, <2 x i32> <i32 2, i32 2> ; 2 uses
  %i.ik = extractelement <3 x i32> %i.ct, i64 0   ; 2 uses
  %i.il = extractelement <3 x i32> %i.ct, i64 1   ; 4 uses
  %i.im = extractelement <3 x i32> %i.ct, i64 2   ; 4 uses
  br label %bb.n

._crit_edge636:                                   ; preds = %._crit_edge633, %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE5clearEv.exit
  %i.in = load ptr, ptr %i.dp, align 8, !tbaa !19
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 24
  %i.ip = load ptr, ptr %i.io, align 8
  %i.iq = invoke noundef ptr %i.ip(ptr noundef nonnull align 8 dereferenceable(8) %i.dp)
          to label %.noexc345 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !207

.noexc345:                                        ; preds = %._crit_edge636
  invoke void @_ZN5scene8HWBuffer8setDirtyEv(ptr noundef nonnull align 8 dereferenceable(28) %i.iq)
          to label %_ZN5scene11IMeshBuffer8setDirtyENS_13E_BUFFER_TYPEE.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.n:                                             ; preds = %.lr.ph635, %._crit_edge633
  %i.ir = phi i16 [ %i.hw, %.lr.ph635 ], [ %i.iy, %._crit_edge633 ] ; 5 uses
  %.0261634 = phi i16 [ %i.hx, %.lr.ph635 ], [ %i.iz, %._crit_edge633 ] ; 4 uses
  %i.is = sub i16 0, %i.ir                        ; 2 uses
  %i.it = sext i16 %i.is to i32
  %i.iu = zext i16 %i.ir to i32                   ; 3 uses
  %i.iv = icmp slt i32 %i.it, %i.iu
  br i1 %i.iv, label %.lr.ph632, label %._crit_edge633

.lr.ph632:                                        ; preds = %bb.n
  %i.iw = xor i16 %.0261634, -1
  %i.ix = icmp slt i16 %.0261634, 0
  br label %bb.o

._crit_edge633.loopexit:                          ; preds = %bb.at
  %.pre746 = zext i16 %i.sj to i32
  br label %._crit_edge633

._crit_edge633:                                   ; preds = %._crit_edge633.loopexit, %bb.n
  %.pre-phi747 = phi i32 [ %.pre746, %._crit_edge633.loopexit ], [ %i.iu, %bb.n ]
  %i.iy = phi i16 [ %i.sj, %._crit_edge633.loopexit ], [ %i.ir, %bb.n ]
  %i.iz = add i16 %.0261634, 1                    ; 2 uses
  %i.ja = sext i16 %i.iz to i32
  %i.jb = icmp sgt i32 %.pre-phi747, %i.ja
  br i1 %i.jb, label %bb.n, label %._crit_edge636, !llvm.loop !208

bb.o:                                             ; preds = %.lr.ph632, %bb.at
  %i.jc = phi i16 [ %i.ir, %.lr.ph632 ], [ %i.sj, %bb.at ]
  %i.jd = phi i16 [ %i.ir, %.lr.ph632 ], [ %i.sk, %bb.at ] ; 3 uses
  %i.je = phi i32 [ %i.iu, %.lr.ph632 ], [ %i.sn, %bb.at ] ; 3 uses
  %.0260630 = phi i16 [ %i.is, %.lr.ph632 ], [ %i.sl, %bb.at ] ; 4 uses
  %i.jf = add i16 %i.jd, %i.iw
  %.0259 = select i1 %i.ix, i16 %.0261634, i16 %i.jf ; 2 uses
  %i.jg = xor i16 %.0260630, -1
  %i.jh = add i16 %i.jd, %i.jg
  %i.ji = icmp slt i16 %.0260630, 0
  %.0258 = select i1 %i.ji, i16 %.0260630, i16 %i.jh ; 2 uses
  %i.jj = sext i16 %.0259 to i32                  ; 11 uses
  %i.jk = add nsw i32 %i.je, %i.jj
  %i.jl = shl nuw nsw i32 %i.je, 1
  %i.jm = mul i32 %i.jl, %i.jk
  %i.jn = sext i16 %.0258 to i32                  ; 11 uses
  %i.jo = add nsw i32 %i.je, %i.jn
  %i.jp = add i32 %i.jo, %i.jm                    ; 2 uses
  %i.jq = lshr i32 %i.jp, 6
  %.zext559 = zext nneg i32 %i.jq to i64
  %i.jr = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0502.0, i64 %.zext559
  %i.js = and i32 %i.jp, 63
  %i.jt = zext nneg i32 %i.js to i64
  %i.ju = shl nuw i64 1, %i.jt
  %i.jv = load i64, ptr %i.jr, align 8, !tbaa !112
  %i.jw = and i64 %i.jv, %i.ju
  %.not570 = icmp eq i64 %i.jw, 0
  br i1 %.not570, label %bb.at, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.o
  %i.jx = sitofp nsz i16 %.0258 to float
  %i.jy = sitofp nsz i16 %.0259 to float
  %i.jz = fmul nnan nsz float %i.jx, 6.400000e+02
  %i.ka = fadd nsz float %i.if, %i.jz             ; 4 uses
  %i.kb = fmul nnan nsz float %i.jy, 6.400000e+02
  %i.kc = fadd nsz float %i.ig, %i.kb             ; 2 uses
  %i.kd = load i8, ptr %i.am, align 1, !tbaa !122, !range !123, !noundef !135
  %i.ke = trunc nuw i8 %i.kd to i1
  %i.kf = load float, ptr %i.ap, align 4          ; 2 uses
  %i.kg = fcmp nsz oge float %i.kf, f0x3C23D70A
  %i.kh = select i1 %i.ke, i1 %i.kg, i1 false
  %i.ki = fmul nsz float %i.kf, 1.000000e+01
  %i.kj = select nsz i1 %i.kh, float %i.ki, float 0.000000e+00 ; 10 uses
  %i.kk = load ptr, ptr @g_settings, align 8, !tbaa !111
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  store ptr %i.ib, ptr %1, align 8, !tbaa !87
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.ib, ptr noundef nonnull align 1 dereferenceable(11) @.str.2, i64 11, i1 false)
  store i64 11, ptr %i.ic, align 8, !tbaa !89
  store i8 0, ptr %i.ie, align 1, !tbaa !65
  %i.kl = invoke noundef zeroext i1 @_ZNK8Settings7getBoolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(236) %i.kk, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.p unwind label %bb.r       ; 4 uses

bb.p:                                             ; preds = %._crit_edge.i.i
  %i.km = load ptr, ptr %1, align 8, !tbaa !98    ; 2 uses
  %i.kn = icmp eq ptr %i.km, %i.ib
  br i1 %i.kn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.p
  %i.ko = load i64, ptr %i.ib, align 8, !tbaa !65
  %i.kp = add i64 %i.ko, 1
  call void @_ZdlPvm(ptr noundef %i.km, i64 noundef %i.kp) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  %i.kq = add nsw i32 %i.jn, -1
  %i.kr = add nsw i32 %i.jj, 1                    ; 3 uses
  %i.ks = add nsw i32 %i.jn, 1                    ; 3 uses
  %i.kt = add nsw i32 %i.jj, -1
  %2 = insertelement <4 x float> <float poison, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00>, float %i.kc, i64 0 ; 3 uses
  %i.ku = insertelement <2 x float> poison, float %i.ka, i64 0
  %i.kv = insertelement <2 x float> <float 3.200000e+02, float poison>, float %i.kj, i64 1
  br label %bb.s

bb.q:                                             ; preds = %.loopexit582
  %.pre739 = load i16, ptr %i.cu, align 8, !tbaa !124 ; 2 uses
  br label %bb.at

bb.r:                                             ; preds = %._crit_edge.i.i
  %i.kw = landingpad { ptr, i32 }
          cleanup
  %i.kx = load ptr, ptr %1, align 8, !tbaa !98    ; 2 uses
  %i.ky = icmp eq ptr %i.kx, %i.ib
  br i1 %i.ky, label %.loopexit.split-lp584.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i356

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i356: ; preds = %bb.r
  %i.kz = load i64, ptr %i.ib, align 8, !tbaa !65
  %i.la = add i64 %i.kz, 1
  call void @_ZdlPvm(ptr noundef %i.kx, i64 noundef %i.la) #22
  br label %.loopexit.split-lp584.thread

.loopexit.split-lp584.thread:                     ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i356
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br label %bb.cm

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %.loopexit582
  %.sroa.136.0 = phi i32 [ -1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.sroa.136.6, %.loopexit582 ] ; 9 uses
  %.sroa.65.0 = phi i32 [ -1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.sroa.65.6, %.loopexit582 ] ; 9 uses
  %.0255629 = phi i32 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.si, %.loopexit582 ] ; 2 uses
  %i.lb = phi <2 x i32> [ splat (i32 -1), %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.sh, %.loopexit582 ] ; 5 uses
  switch i32 %.0255629, label %default.unreachable [
    i32 0, label %.preheader.preheader
    i32 1, label %bb.t
    i32 2, label %bb.x
    i32 3, label %bb.aa
    i32 4, label %bb.ae
    i32 5, label %.preheader600.preheader
  ]

.preheader.preheader:                             ; preds = %bb.s
  br label %.preheader600.preheader

bb.t:                                             ; preds = %bb.s
  %i.lc = load i16, ptr %i.cu, align 8, !tbaa !124
  %i.ld = zext i16 %i.lc to i32                   ; 6 uses
  %i.le = sub nsw i32 0, %i.ld                    ; 2 uses
  %.not307 = icmp sge i32 %i.jn, %i.le
  %i.lf = icmp slt i32 %i.jn, %i.ld
  %or.cond = and i1 %.not307, %i.lf
  br i1 %or.cond, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %.not308.not = icmp sle i32 %i.jj, %i.le
  %.not309 = icmp sgt i32 %i.jj, %i.ld
  %or.cond325 = or i1 %.not308.not, %.not309
  br i1 %or.cond325, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.lg = add nsw i32 %i.kt, %i.ld
  %i.lh = shl nuw nsw i32 %i.ld, 1
  %i.li = mul i32 %i.lh, %i.lg
  %i.lj = add nsw i32 %i.ld, %i.jn
  %i.lk = add i32 %i.lj, %i.li                    ; 2 uses
  %i.ll = lshr i32 %i.lk, 6
  %.zext561 = zext nneg i32 %i.ll to i64
  %i.lm = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0502.0, i64 %.zext561
  %i.ln = and i32 %i.lk, 63
  %i.lo = zext nneg i32 %i.ln to i64
  %i.lp = shl nuw i64 1, %i.lo
  %i.lq = load i64, ptr %i.lm, align 8, !tbaa !112
  %i.lr = and i64 %i.lq, %i.lp
  %.not581 = icmp eq i64 %i.lr, 0
  br i1 %.not581, label %bb.w, label %.loopexit582

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t
  br i1 %i.kl, label %.preheader588.preheader, label %.preheader600.preheader

.preheader588.preheader:                          ; preds = %bb.w
  br label %.preheader600.preheader

bb.x:                                             ; preds = %bb.s
  %i.ls = load i16, ptr %i.cu, align 8, !tbaa !124
  %i.lt = zext i16 %i.ls to i32                   ; 6 uses
  %i.lu = sub nsw i32 0, %i.lt                    ; 2 uses
  %.not303 = icmp sge i32 %i.ks, %i.lu
  %i.lv = icmp slt i32 %i.ks, %i.lt
  %or.cond326.not576.not579 = and i1 %.not303, %i.lv
  %.not304 = icmp sge i32 %i.jj, %i.lu
  %or.cond327.not577 = and i1 %.not304, %or.cond326.not576.not579
  %i.lw = icmp slt i32 %i.jj, %i.lt
  %or.cond328 = and i1 %i.lw, %or.cond327.not577
  br i1 %or.cond328, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.lx = add nsw i32 %i.lt, %i.jj
  %i.ly = shl nuw nsw i32 %i.lt, 1
  %i.lz = mul i32 %i.ly, %i.lx
  %i.ma = add nsw i32 %i.ks, %i.lt
  %i.mb = add i32 %i.ma, %i.lz                    ; 2 uses
  %i.mc = lshr i32 %i.mb, 6
  %.zext563 = zext nneg i32 %i.mc to i64
  %i.md = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0502.0, i64 %.zext563
  %i.me = and i32 %i.mb, 63
  %i.mf = zext nneg i32 %i.me to i64
  %i.mg = shl nuw i64 1, %i.mf
  %i.mh = load i64, ptr %i.md, align 8, !tbaa !112
  %i.mi = and i64 %i.mh, %i.mg
  %.not580 = icmp eq i64 %i.mi, 0
  br i1 %.not580, label %bb.z, label %.loopexit582

bb.z:                                             ; preds = %bb.y, %bb.x
  br i1 %i.kl, label %.preheader591.preheader, label %.preheader600.preheader

.preheader591.preheader:                          ; preds = %bb.z
  br label %.preheader600.preheader

bb.aa:                                            ; preds = %bb.s
  %i.mj = load i16, ptr %i.cu, align 8, !tbaa !124
  %i.mk = zext i16 %i.mj to i32                   ; 6 uses
  %i.ml = sub nsw i32 0, %i.mk                    ; 2 uses
  %.not299 = icmp sge i32 %i.jn, %i.ml
  %i.mm = icmp slt i32 %i.jn, %i.mk
  %or.cond330 = and i1 %.not299, %i.mm
  br i1 %or.cond330, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %.not300 = icmp sge i32 %i.kr, %i.ml
  %i.mn = icmp slt i32 %i.kr, %i.mk
  %or.cond331 = and i1 %.not300, %i.mn
  br i1 %or.cond331, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.mo = add nsw i32 %i.kr, %i.mk
  %i.mp = shl nuw nsw i32 %i.mk, 1
  %i.mq = mul i32 %i.mp, %i.mo
  %i.mr = add nsw i32 %i.mk, %i.jn
  %i.ms = add i32 %i.mr, %i.mq                    ; 2 uses
  %i.mt = lshr i32 %i.ms, 6
  %.zext565 = zext nneg i32 %i.mt to i64
  %i.mu = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0502.0, i64 %.zext565
  %i.mv = and i32 %i.ms, 63
  %i.mw = zext nneg i32 %i.mv to i64
  %i.mx = shl nuw i64 1, %i.mw
  %i.my = load i64, ptr %i.mu, align 8, !tbaa !112
  %i.mz = and i64 %i.my, %i.mx
  %.not574 = icmp eq i64 %i.mz, 0
  br i1 %.not574, label %bb.ad, label %.loopexit582

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %bb.aa
  br i1 %i.kl, label %.preheader594.preheader, label %.preheader600.preheader

.preheader594.preheader:                          ; preds = %bb.ad
  br label %.preheader600.preheader

bb.ae:                                            ; preds = %bb.s
  %i.na = load i16, ptr %i.cu, align 8, !tbaa !124
  %i.nb = zext i16 %i.na to i32                   ; 6 uses
  %i.nc = sub nsw i32 0, %i.nb                    ; 2 uses
  %.not294.not = icmp sgt i32 %i.jn, %i.nc
  %.not295 = icmp sle i32 %i.jn, %i.nb
  %or.cond333.not572 = and i1 %.not294.not, %.not295
  %.not296 = icmp sge i32 %i.jj, %i.nc
  %or.cond334.not571 = and i1 %.not296, %or.cond333.not572
  %i.nd = icmp slt i32 %i.jj, %i.nb
  %or.cond335 = and i1 %i.nd, %or.cond334.not571
  br i1 %or.cond335, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.ne = add nsw i32 %i.nb, %i.jj
  %i.nf = shl nuw nsw i32 %i.nb, 1
  %i.ng = mul i32 %i.nf, %i.ne
  %i.nh = add nsw i32 %i.kq, %i.nb
  %i.ni = add i32 %i.nh, %i.ng                    ; 2 uses
  %i.nj = lshr i32 %i.ni, 6
  %.zext567 = zext nneg i32 %i.nj to i64
  %i.nk = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0502.0, i64 %.zext567
  %i.nl = and i32 %i.ni, 63
  %i.nm = zext nneg i32 %i.nl to i64
  %i.nn = shl nuw i64 1, %i.nm
  %i.no = load i64, ptr %i.nk, align 8, !tbaa !112
  %i.np = and i64 %i.no, %i.nn
  %.not573 = icmp eq i64 %i.np, 0
  br i1 %.not573, label %bb.ag, label %.loopexit582

bb.ag:                                            ; preds = %bb.af, %bb.ae
  br i1 %i.kl, label %.preheader597.preheader, label %.preheader600.preheader

.preheader597.preheader:                          ; preds = %bb.ag
  br label %.preheader600.preheader

default.unreachable:                              ; preds = %bb.s
  unreachable

.preheader600.preheader:                          ; preds = %.preheader597.preheader, %bb.ag, %.preheader594.preheader, %bb.ad, %.preheader591.preheader, %bb.z, %.preheader588.preheader, %bb.w, %bb.s, %.preheader.preheader
  %.sroa.220713.0 = phi nsz float [ 3.200000e+02, %.preheader.preheader ], [ 3.200000e+02, %bb.s ], [ -3.200000e+02, %bb.w ], [ 3.200000e+02, %bb.z ], [ 3.200000e+02, %bb.ad ], [ -3.200000e+02, %.preheader588.preheader ], [ 3.200000e+02, %.preheader591.preheader ], [ 3.200000e+02, %.preheader594.preheader ], [ -3.200000e+02, %.preheader597.preheader ], [ -3.200000e+02, %bb.ag ]
  %.sroa.165.0 = phi nsz float [ 3.200000e+02, %.preheader.preheader ], [ -3.200000e+02, %bb.s ], [ -3.200000e+02, %bb.w ], [ 3.200000e+02, %bb.z ], [ 3.200000e+02, %bb.ad ], [ -3.200000e+02, %.preheader588.preheader ], [ 3.200000e+02, %.preheader591.preheader ], [ 3.200000e+02, %.preheader594.preheader ], [ -3.200000e+02, %.preheader597.preheader ], [ -3.200000e+02, %bb.ag ]
  %.sroa.136.5 = phi i32 [ %.sroa.136.0, %.preheader.preheader ], [ %i.ik, %bb.s ], [ %i.il, %bb.w ], [ %i.im, %bb.z ], [ %i.il, %bb.ad ], [ %.sroa.136.0, %.preheader588.preheader ], [ %.sroa.136.0, %.preheader591.preheader ], [ %.sroa.136.0, %.preheader594.preheader ], [ %.sroa.136.0, %.preheader597.preheader ], [ %i.im, %bb.ag ] ; 4 uses
  %.sroa.85.0 = phi nsz float [ %i.kj, %.preheader.preheader ], [ 0.000000e+00, %bb.s ], [ %i.kj, %bb.w ], [ %i.kj, %bb.z ], [ %i.kj, %bb.ad ], [ %i.kj, %.preheader588.preheader ], [ %i.kj, %.preheader591.preheader ], [ %i.kj, %.preheader594.preheader ], [ %i.kj, %.preheader597.preheader ], [ %i.kj, %bb.ag ]
  %.sroa.74669.0 = phi nsz float [ -3.200000e+02, %.preheader.preheader ], [ -3.200000e+02, %bb.s ], [ 3.200000e+02, %bb.w ], [ 3.200000e+02, %bb.z ], [ -3.200000e+02, %bb.ad ], [ 3.200000e+02, %.preheader588.preheader ], [ 3.200000e+02, %.preheader591.preheader ], [ -3.200000e+02, %.preheader594.preheader ], [ -3.200000e+02, %.preheader597.preheader ], [ -3.200000e+02, %bb.ag ]
  %.sroa.65.5 = phi i32 [ %.sroa.65.0, %.preheader.preheader ], [ %i.ik, %bb.s ], [ %i.il, %bb.w ], [ %i.im, %bb.z ], [ %i.il, %bb.ad ], [ %.sroa.65.0, %.preheader588.preheader ], [ %.sroa.65.0, %.preheader591.preheader ], [ %.sroa.65.0, %.preheader594.preheader ], [ %.sroa.65.0, %.preheader597.preheader ], [ %i.im, %bb.ag ] ; 4 uses
  %.sroa.0.0 = phi nsz float [ -3.200000e+02, %.preheader.preheader ], [ 3.200000e+02, %bb.s ], [ -3.200000e+02, %bb.w ], [ 3.200000e+02, %bb.z ], [ 3.200000e+02, %bb.ad ], [ -3.200000e+02, %.preheader588.preheader ], [ 3.200000e+02, %.preheader591.preheader ], [ 3.200000e+02, %.preheader594.preheader ], [ -3.200000e+02, %.preheader597.preheader ], [ -3.200000e+02, %bb.ag ]
  %i.nq = phi <2 x i32> [ %i.lb, %.preheader.preheader ], [ %i.ih, %bb.s ], [ %i.ii, %bb.w ], [ %i.ij, %bb.z ], [ %i.ii, %bb.ad ], [ %i.ih, %.preheader588.preheader ], [ %i.ih, %.preheader591.preheader ], [ %i.ih, %.preheader594.preheader ], [ %i.ih, %.preheader597.preheader ], [ %i.ij, %bb.ag ] ; 6 uses
  %3 = phi <4 x float> [ <float -3.200000e+02, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>, %.preheader.preheader ], [ <float -3.200000e+02, float 0.000000e+00, float -1.000000e+00, float 0.000000e+00>, %bb.s ], [ <float -3.200000e+02, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, %bb.w ], [ <float -3.200000e+02, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>, %bb.z ], [ <float 3.200000e+02, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, %bb.ad ], [ <float -3.200000e+02, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, %.preheader588.preheader ], [ <float -3.200000e+02, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>, %.preheader591.preheader ], [ <float 3.200000e+02, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, %.preheader594.preheader ], [ <float 3.200000e+02, float -1.000000e+00, float 0.000000e+00, float 0.000000e+00>, %.preheader597.preheader ], [ <float 3.200000e+02, float -1.000000e+00, float 0.000000e+00, float 0.000000e+00>, %bb.ag ]
  %i.nr = phi <2 x float> [ %i.kv, %.preheader.preheader ], [ <float -3.200000e+02, float 0.000000e+00>, %bb.s ], [ <float 3.200000e+02, float 0.000000e+00>, %bb.w ], [ <float 3.200000e+02, float 0.000000e+00>, %bb.z ], [ <float -3.200000e+02, float 0.000000e+00>, %bb.ad ], [ <float 3.200000e+02, float 0.000000e+00>, %.preheader588.preheader ], [ <float 3.200000e+02, float 0.000000e+00>, %.preheader591.preheader ], [ <float -3.200000e+02, float 0.000000e+00>, %.preheader594.preheader ], [ <float -3.200000e+02, float 0.000000e+00>, %.preheader597.preheader ], [ <float -3.200000e+02, float 0.000000e+00>, %bb.ag ]
  %4 = phi <4 x float> [ <float 3.200000e+02, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>, %.preheader.preheader ], [ <float 3.200000e+02, float 0.000000e+00, float -1.000000e+00, float 0.000000e+00>, %bb.s ], [ <float -3.200000e+02, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, %bb.w ], [ <float 3.200000e+02, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>, %bb.z ], [ <float 3.200000e+02, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, %bb.ad ], [ <float -3.200000e+02, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, %.preheader588.preheader ], [ <float 3.200000e+02, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>, %.preheader591.preheader ], [ <float 3.200000e+02, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, %.preheader594.preheader ], [ <float -3.200000e+02, float -1.000000e+00, float 0.000000e+00, float 0.000000e+00>, %.preheader597.preheader ], [ <float -3.200000e+02, float -1.000000e+00, float 0.000000e+00, float 0.000000e+00>, %bb.ag ]
  %i.ns = phi <4 x float> [ <float -3.200000e+02, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>, %.preheader.preheader ], [ <float 3.200000e+02, float 0.000000e+00, float -1.000000e+00, float 0.000000e+00>, %bb.s ], [ <float -3.200000e+02, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, %bb.w ], [ <float -3.200000e+02, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>, %bb.z ], [ <float 3.200000e+02, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, %bb.ad ], [ <float -3.200000e+02, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, %.preheader588.preheader ], [ <float -3.200000e+02, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>, %.preheader591.preheader ], [ <float 3.200000e+02, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, %.preheader594.preheader ], [ <float 3.200000e+02, float -1.000000e+00, float 0.000000e+00, float 0.000000e+00>, %.preheader597.preheader ], [ <float 3.200000e+02, float -1.000000e+00, float 0.000000e+00, float 0.000000e+00>, %bb.ag ]
  %i.nt = load float, ptr %i.id, align 8, !tbaa !113
  %i.nu = fmul nsz float %i.nt, 1.000000e+01      ; 2 uses
  %i.nv = fadd nsz float %i.ka, %.sroa.0.0        ; 2 uses
  %i.nw = fadd nsz float %i.nu, %.sroa.85.0       ; 4 uses
  %i.nx = fadd nsz <4 x float> %2, %i.ns          ; 2 uses
  %i.ny = load ptr, ptr %i.hu, align 8, !tbaa !144 ; 10 uses
  %i.nz = load ptr, ptr %i.ea, align 8, !tbaa !142
  %.not.i = icmp eq ptr %i.ny, %i.nz
  br i1 %.not.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %.preheader600.preheader
  store float %i.nv, ptr %i.ny, align 4, !tbaa !24
  %.sroa.14.0..sroa_idx649 = getelementptr inbounds nuw i8, ptr %i.ny, i64 4
  store float %i.nw, ptr %.sroa.14.0..sroa_idx649, align 4, !tbaa !24
  %.sroa.23.0..sroa_idx651 = getelementptr inbounds nuw i8, ptr %i.ny, i64 8
  store <4 x float> %i.nx, ptr %.sroa.23.0..sroa_idx651, align 4, !tbaa !24
  %.sroa.65.0..sroa_idx659 = getelementptr inbounds nuw i8, ptr %i.ny, i64 24
  store i32 %.sroa.65.5, ptr %.sroa.65.0..sroa_idx659, align 4, !tbaa !109
  %.sroa.71.0..sroa_idx661 = getelementptr inbounds nuw i8, ptr %i.ny, i64 28
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %.sroa.71.0..sroa_idx661, align 4, !tbaa !24
  %.sroa.73.0..sroa_idx665 = getelementptr inbounds nuw i8, ptr %i.ny, i64 36
  store i16 0, ptr %.sroa.73.0..sroa_idx665, align 4, !tbaa !115
  %i.oa = load ptr, ptr %i.hu, align 8, !tbaa !144
  %i.ob = getelementptr inbounds nuw i8, ptr %i.oa, i64 40 ; 2 uses
  store ptr %i.ob, ptr %i.hu, align 8, !tbaa !144
  %.pre736 = load ptr, ptr %i.ea, align 8, !tbaa !142
  br label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE9push_backERKS1_.exit

bb.ai:                                            ; preds = %.preheader600.preheader
  %i.oc = load ptr, ptr %i.ds, align 8, !tbaa !143 ; 5 uses
  %i.od = ptrtoint ptr %i.ny to i64
  %i.oe = ptrtoint ptr %i.oc to i64               ; 2 uses
  %i.of = sub i64 %i.od, %i.oe                    ; 3 uses
  %i.og = icmp eq i64 %i.of, 9223372036854775800
  br i1 %i.og, label %.invoke, label %_ZNKSt6vectorIN5video9S3DVertexESaIS1_EE12_M_check_lenEmPKc.exit.i.i

.invoke:                                          ; preds = %bb.ai, %bb.al, %bb.ao, %bb.ar, %bb.bc, %bb.bg, %bb.bk, %bb.bo, %bb.bs, %bb.bw
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #26
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorIN5video9S3DVertexESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ai
  %i.oh = sdiv exact i64 %i.of, 40                ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.oh, i64 1)
  %i.oi = add nsw i64 %.sroa.speculated.i.i.i, %i.oh ; 2 uses
  %i.oj = icmp ult i64 %i.oi, %i.oh
  %i.ok = call i64 @llvm.umin.i64(i64 %i.oi, i64 230584300921369395)
  %i.ol = select i1 %i.oj, i64 230584300921369395, i64 %i.ok ; 3 uses
  %.not.i.i.i375 = icmp ne i64 %i.ol, 0
  call void @llvm.assume(i1 %.not.i.i.i375)
  %i.om = mul nuw nsw i64 %i.ol, 40
  %i.on = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.om) #25
          to label %.noexc377 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc377:                                        ; preds = %_ZNKSt6vectorIN5video9S3DVertexESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.oo = getelementptr inbounds nuw i8, ptr %i.on, i64 %i.of ; 6 uses
  store float %i.nv, ptr %i.oo, align 4, !tbaa !24
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.oo, i64 4
  store float %i.nw, ptr %.sroa.14.0..sroa_idx, align 4, !tbaa !24
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.oo, i64 8
  store <4 x float> %i.nx, ptr %.sroa.23.0..sroa_idx, align 4, !tbaa !24
  %.sroa.65.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.oo, i64 24
  store i32 %.sroa.65.5, ptr %.sroa.65.0..sroa_idx, align 4, !tbaa !109
  %.sroa.71.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.oo, i64 28
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %.sroa.71.0..sroa_idx, align 4, !tbaa !24
  %.sroa.73.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.oo, i64 36
  store i16 0, ptr %.sroa.73.0..sroa_idx, align 4, !tbaa !115
  %.not10.i.i.i.i.i = icmp eq ptr %i.oc, %i.ny
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc377, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.oq, %.lr.ph.i.i.i.i.i ], [ %i.on, %.noexc377 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.op, %.lr.ph.i.i.i.i.i ], [ %i.oc, %.noexc377 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %.012.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(40) %.0911.i.i.i.i.i, i64 40, i1 false), !tbaa.struct !145, !alias.scope !219
  %i.op = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 40 ; 2 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.op, %i.ny
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !204

_ZNSt6vectorIN5video9S3DVertexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc377
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.on, %.noexc377 ], [ %i.oq, %.lr.ph.i.i.i.i.i ]
  %i.or = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 40 ; 2 uses
  %.not.i23.i.i = icmp eq ptr %i.oc, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  %i.os = load ptr, ptr %i.ea, align 8, !tbaa !142
  %i.ot = ptrtoint ptr %i.os to i64
  %i.ou = sub i64 %i.ot, %i.oe
  call void @_ZdlPvm(ptr noundef nonnull %i.oc, i64 noundef %i.ou) #22
  br label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIN5video9S3DVertexESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.aj, %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  store ptr %i.on, ptr %i.ds, align 8, !tbaa !143
  store ptr %i.or, ptr %i.hu, align 8, !tbaa !144
  %i.ov = getelementptr inbounds nuw [40 x i8], ptr %i.on, i64 %i.ol ; 2 uses
  store ptr %i.ov, ptr %i.ea, align 8, !tbaa !142
  br label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIN5video9S3DVertexESaIS1_EE9push_backERKS1_.exit: ; preds = %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.ah
  %i.ow = phi ptr [ %i.ov, %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.pre736, %bb.ah ] ; 4 uses
  %i.ox = phi ptr [ %i.or, %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %i.ob, %bb.ah ] ; 7 uses
  %i.oy = fadd nsz float %i.ka, %.sroa.74669.0    ; 2 uses
  %5 = fadd nsz <4 x float> %2, %4                ; 8 uses
  %.not.i.1 = icmp eq ptr %i.ox, %i.ow
  br i1 %.not.i.1, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE9push_backERKS1_.exit
  store float %i.oy, ptr %i.ox, align 4, !tbaa !24
  %.sroa.85.40..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ox, i64 4
  store float %i.nw, ptr %.sroa.85.40..sroa_idx, align 4, !tbaa !24
  %.sroa.94.40..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ox, i64 8
  store <4 x float> %5, ptr %.sroa.94.40..sroa_idx, align 4, !tbaa !24
  %.sroa.136.40..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ox, i64 24
  store i32 %.sroa.136.5, ptr %.sroa.136.40..sroa_idx, align 4, !tbaa !109
  %.sroa.142.40..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ox, i64 28
  store <2 x float> splat (float 1.000000e+00), ptr %.sroa.142.40..sroa_idx, align 4, !tbaa !24
  %.sroa.144.40..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ox, i64 36
  store i16 0, ptr %.sroa.144.40..sroa_idx, align 4, !tbaa !115
  %i.oz = load ptr, ptr %i.hu, align 8, !tbaa !144
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oz, i64 40 ; 2 uses
  store ptr %i.pa, ptr %i.hu, align 8, !tbaa !144
  %.pre737 = load ptr, ptr %i.ea, align 8, !tbaa !142
  br label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE9push_backERKS1_.exit.1

bb.al:                                            ; preds = %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE9push_backERKS1_.exit
  %i.pb = load ptr, ptr %i.ds, align 8, !tbaa !143 ; 5 uses
  %i.pc = ptrtoint ptr %i.ow to i64
  %i.pd = ptrtoint ptr %i.pb to i64               ; 2 uses
  %i.pe = sub i64 %i.pc, %i.pd                    ; 3 uses
  %i.pf = icmp eq i64 %i.pe, 9223372036854775800
  br i1 %i.pf, label %.invoke, label %_ZNKSt6vectorIN5video9S3DVertexESaIS1_EE12_M_check_lenEmPKc.exit.i.i.1

_ZNKSt6vectorIN5video9S3DVertexESaIS1_EE12_M_check_lenEmPKc.exit.i.i.1: ; preds = %bb.al
  %i.pg = sdiv exact i64 %i.pe, 40                ; 3 uses
  %.sroa.speculated.i.i.i.1 = call i64 @llvm.umax.i64(i64 %i.pg, i64 1)
  %i.ph = add nsw i64 %.sroa.speculated.i.i.i.1, %i.pg ; 2 uses
  %i.pi = icmp ult i64 %i.ph, %i.pg
  %i.pj = call i64 @llvm.umin.i64(i64 %i.ph, i64 230584300921369395)
  %i.pk = select i1 %i.pi, i64 230584300921369395, i64 %i.pj ; 3 uses
  %.not.i.i.i375.1 = icmp ne i64 %i.pk, 0
  call void @llvm.assume(i1 %.not.i.i.i375.1)
  %i.pl = mul nuw nsw i64 %i.pk, 40
  %i.pm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.pl) #25
          to label %.noexc377.1 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc377.1:                                      ; preds = %_ZNKSt6vectorIN5video9S3DVertexESaIS1_EE12_M_check_lenEmPKc.exit.i.i.1
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pm, i64 %i.pe ; 6 uses
  store float %i.oy, ptr %i.pn, align 4, !tbaa !24
  %.sroa.85.40..sroa_idx671.a = getelementptr inbounds nuw i8, ptr %i.pn, i64 4
  store float %i.nw, ptr %.sroa.85.40..sroa_idx671.a, align 4, !tbaa !24
  %.sroa.94.40..sroa_idx673.a = getelementptr inbounds nuw i8, ptr %i.pn, i64 8
  store <4 x float> %5, ptr %.sroa.94.40..sroa_idx673.a, align 4, !tbaa !24
  %.sroa.136.40..sroa_idx681 = getelementptr inbounds nuw i8, ptr %i.pn, i64 24
  store i32 %.sroa.136.5, ptr %.sroa.136.40..sroa_idx681, align 4, !tbaa !109
  %.sroa.142.40..sroa_idx683 = getelementptr inbounds nuw i8, ptr %i.pn, i64 28
  store <2 x float> splat (float 1.000000e+00), ptr %.sroa.142.40..sroa_idx683, align 4, !tbaa !24
  %.sroa.144.40..sroa_idx687 = getelementptr inbounds nuw i8, ptr %i.pn, i64 36
  store i16 0, ptr %.sroa.144.40..sroa_idx687, align 4, !tbaa !115
  %.not10.i.i.i.i.i.1 = icmp eq ptr %i.pb, %i.ow
  br i1 %.not10.i.i.i.i.i.1, label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.1, label %.lr.ph.i.i.i.i.i.1

.lr.ph.i.i.i.i.i.1:                               ; preds = %.noexc377.1, %.lr.ph.i.i.i.i.i.1
  %.012.i.i.i.i.i.1 = phi ptr [ %i.pp, %.lr.ph.i.i.i.i.i.1 ], [ %i.pm, %.noexc377.1 ] ; 2 uses
  %.0911.i.i.i.i.i.1 = phi ptr [ %i.po, %.lr.ph.i.i.i.i.i.1 ], [ %i.pb, %.noexc377.1 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %.012.i.i.i.i.i.1, ptr noundef nonnull align 4 dereferenceable(40) %.0911.i.i.i.i.i.1, i64 40, i1 false), !tbaa.struct !145, !alias.scope !219
  %i.po = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.1, i64 40 ; 2 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.1, i64 40 ; 2 uses
  %.not.i.i.i.i.i.1 = icmp eq ptr %i.po, %i.ow
  br i1 %.not.i.i.i.i.i.1, label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.1, label %.lr.ph.i.i.i.i.i.1, !llvm.loop !204

_ZNSt6vectorIN5video9S3DVertexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.1: ; preds = %.lr.ph.i.i.i.i.i.1, %.noexc377.1
  %.0.lcssa.i.i.i.i.i.1 = phi ptr [ %i.pm, %.noexc377.1 ], [ %i.pp, %.lr.ph.i.i.i.i.i.1 ]
  %i.pq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.1, i64 40 ; 2 uses
  %.not.i23.i.i.1 = icmp eq ptr %i.pb, null
  br i1 %.not.i23.i.i.1, label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.1, label %bb.am

bb.am:                                            ; preds = %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.1
  %i.pr = load ptr, ptr %i.ea, align 8, !tbaa !142
  %i.ps = ptrtoint ptr %i.pr to i64
  %i.pt = sub i64 %i.ps, %i.pd
  call void @_ZdlPvm(ptr noundef nonnull %i.pb, i64 noundef %i.pt) #22
  br label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.1

_ZNSt6vectorIN5video9S3DVertexESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.1: ; preds = %bb.am, %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.1
  store ptr %i.pm, ptr %i.ds, align 8, !tbaa !143
  store ptr %i.pq, ptr %i.hu, align 8, !tbaa !144
  %i.pu = getelementptr inbounds nuw [40 x i8], ptr %i.pm, i64 %i.pk ; 2 uses
  store ptr %i.pu, ptr %i.ea, align 8, !tbaa !142
  br label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE9push_backERKS1_.exit.1

_ZNSt6vectorIN5video9S3DVertexESaIS1_EE9push_backERKS1_.exit.1: ; preds = %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.1, %bb.ak
  %i.pv = phi ptr [ %i.pu, %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.1 ], [ %.pre737, %bb.ak ] ; 4 uses
  %i.pw = phi ptr [ %i.pq, %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.1 ], [ %i.pa, %bb.ak ] ; 9 uses
  %i.px = insertelement <2 x float> %i.ku, float %i.nu, i64 1
  %i.py = fadd nsz <2 x float> %i.px, %i.nr       ; 4 uses
  %i.pz = fadd nsz float %i.kc, %.sroa.165.0      ; 2 uses
  %.not.i.2 = icmp eq ptr %i.pw, %i.pv
  br i1 %.not.i.2, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE9push_backERKS1_.exit.1
  store <2 x float> %i.py, ptr %i.pw, align 4, !tbaa !24
  %.sroa.165.80..sroa_idx = getelementptr inbounds nuw i8, ptr %i.pw, i64 8
  store float %i.pz, ptr %.sroa.165.80..sroa_idx, align 4, !tbaa !24
  %.sroa.174.80..sroa_idx = getelementptr inbounds nuw i8, ptr %i.pw, i64 12
  %i.qa = extractelement <4 x float> %5, i64 1
  store float %i.qa, ptr %.sroa.174.80..sroa_idx, align 4, !tbaa !24
  %.sroa.185.80..sroa_idx = getelementptr inbounds nuw i8, ptr %i.pw, i64 16
  %i.qb = extractelement <4 x float> %5, i64 2
  store float %i.qb, ptr %.sroa.185.80..sroa_idx, align 4, !tbaa !24
  %.sroa.196.80..sroa_idx = getelementptr inbounds nuw i8, ptr %i.pw, i64 20
  %i.qc = extractelement <4 x float> %5, i64 3
  store float %i.qc, ptr %.sroa.196.80..sroa_idx, align 4, !tbaa !24
  %.sroa.207.80..sroa_idx = getelementptr inbounds nuw i8, ptr %i.pw, i64 24
  %i.qd = extractelement <2 x i32> %i.nq, i64 1
  store i32 %i.qd, ptr %.sroa.207.80..sroa_idx, align 4, !tbaa !109
  %.sroa.217.80..sroa_idx = getelementptr inbounds nuw i8, ptr %i.pw, i64 28
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %.sroa.217.80..sroa_idx, align 4, !tbaa !24
  %.sroa.219.80..sroa_idx = getelementptr inbounds nuw i8, ptr %i.pw, i64 36
  store i16 0, ptr %.sroa.219.80..sroa_idx, align 4, !tbaa !115
  %i.qe = load ptr, ptr %i.hu, align 8, !tbaa !144
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qe, i64 40 ; 2 uses
  store ptr %i.qf, ptr %i.hu, align 8, !tbaa !144
  %.pre738 = load ptr, ptr %i.ea, align 8, !tbaa !142
  br label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE9push_backERKS1_.exit.2

bb.ao:                                            ; preds = %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE9push_backERKS1_.exit.1
  %i.qg = load ptr, ptr %i.ds, align 8, !tbaa !143 ; 5 uses
  %i.qh = ptrtoint ptr %i.pv to i64
  %i.qi = ptrtoint ptr %i.qg to i64               ; 2 uses
  %i.qj = sub i64 %i.qh, %i.qi                    ; 3 uses
  %i.qk = icmp eq i64 %i.qj, 9223372036854775800
  br i1 %i.qk, label %.invoke, label %_ZNKSt6vectorIN5video9S3DVertexESaIS1_EE12_M_check_lenEmPKc.exit.i.i.2

_ZNKSt6vectorIN5video9S3DVertexESaIS1_EE12_M_check_lenEmPKc.exit.i.i.2: ; preds = %bb.ao
  %i.ql = sdiv exact i64 %i.qj, 40                ; 3 uses
  %.sroa.speculated.i.i.i.2 = call i64 @llvm.umax.i64(i64 %i.ql, i64 1)
  %i.qm = add nsw i64 %.sroa.speculated.i.i.i.2, %i.ql ; 2 uses
  %i.qn = icmp ult i64 %i.qm, %i.ql
  %i.qo = call i64 @llvm.umin.i64(i64 %i.qm, i64 230584300921369395)
  %i.qp = select i1 %i.qn, i64 230584300921369395, i64 %i.qo ; 3 uses
  %.not.i.i.i375.2 = icmp ne i64 %i.qp, 0
  call void @llvm.assume(i1 %.not.i.i.i375.2)
  %i.qq = mul nuw nsw i64 %i.qp, 40
  %i.qr = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.qq) #25
          to label %.noexc377.2 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc377.2:                                      ; preds = %_ZNKSt6vectorIN5video9S3DVertexESaIS1_EE12_M_check_lenEmPKc.exit.i.i.2
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qr, i64 %i.qj ; 8 uses
  store <2 x float> %i.py, ptr %i.qs, align 4, !tbaa !24
  %.sroa.165.80..sroa_idx695 = getelementptr inbounds nuw i8, ptr %i.qs, i64 8
  store float %i.pz, ptr %.sroa.165.80..sroa_idx695, align 4, !tbaa !24
  %.sroa.174.80..sroa_idx697 = getelementptr inbounds nuw i8, ptr %i.qs, i64 12
  %i.qt = extractelement <4 x float> %5, i64 1
  store float %i.qt, ptr %.sroa.174.80..sroa_idx697, align 4, !tbaa !24
  %.sroa.185.80..sroa_idx699 = getelementptr inbounds nuw i8, ptr %i.qs, i64 16
  %i.qu = extractelement <4 x float> %5, i64 2
  store float %i.qu, ptr %.sroa.185.80..sroa_idx699, align 4, !tbaa !24
  %.sroa.196.80..sroa_idx701 = getelementptr inbounds nuw i8, ptr %i.qs, i64 20
  %i.qv = extractelement <4 x float> %5, i64 3
  store float %i.qv, ptr %.sroa.196.80..sroa_idx701, align 4, !tbaa !24
  %.sroa.207.80..sroa_idx703 = getelementptr inbounds nuw i8, ptr %i.qs, i64 24
  %i.qw = extractelement <2 x i32> %i.nq, i64 1
  store i32 %i.qw, ptr %.sroa.207.80..sroa_idx703, align 4, !tbaa !109
  %.sroa.217.80..sroa_idx705 = getelementptr inbounds nuw i8, ptr %i.qs, i64 28
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %.sroa.217.80..sroa_idx705, align 4, !tbaa !24
  %.sroa.219.80..sroa_idx709 = getelementptr inbounds nuw i8, ptr %i.qs, i64 36
  store i16 0, ptr %.sroa.219.80..sroa_idx709, align 4, !tbaa !115
  %.not10.i.i.i.i.i.2 = icmp eq ptr %i.qg, %i.pv
  br i1 %.not10.i.i.i.i.i.2, label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.2, label %.lr.ph.i.i.i.i.i.2

.lr.ph.i.i.i.i.i.2:                               ; preds = %.noexc377.2, %.lr.ph.i.i.i.i.i.2
  %.012.i.i.i.i.i.2 = phi ptr [ %i.qy, %.lr.ph.i.i.i.i.i.2 ], [ %i.qr, %.noexc377.2 ] ; 2 uses
  %.0911.i.i.i.i.i.2 = phi ptr [ %i.qx, %.lr.ph.i.i.i.i.i.2 ], [ %i.qg, %.noexc377.2 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %.012.i.i.i.i.i.2, ptr noundef nonnull align 4 dereferenceable(40) %.0911.i.i.i.i.i.2, i64 40, i1 false), !tbaa.struct !145, !alias.scope !219
  %i.qx = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.2, i64 40 ; 2 uses
  %i.qy = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.2, i64 40 ; 2 uses
  %.not.i.i.i.i.i.2 = icmp eq ptr %i.qx, %i.pv
  br i1 %.not.i.i.i.i.i.2, label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.2, label %.lr.ph.i.i.i.i.i.2, !llvm.loop !204

_ZNSt6vectorIN5video9S3DVertexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.2: ; preds = %.lr.ph.i.i.i.i.i.2, %.noexc377.2
  %.0.lcssa.i.i.i.i.i.2 = phi ptr [ %i.qr, %.noexc377.2 ], [ %i.qy, %.lr.ph.i.i.i.i.i.2 ]
  %i.qz = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.2, i64 40 ; 2 uses
  %.not.i23.i.i.2 = icmp eq ptr %i.qg, null
  br i1 %.not.i23.i.i.2, label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.2, label %bb.ap

bb.ap:                                            ; preds = %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.2
  %i.ra = load ptr, ptr %i.ea, align 8, !tbaa !142
  %i.rb = ptrtoint ptr %i.ra to i64
  %i.rc = sub i64 %i.rb, %i.qi
  call void @_ZdlPvm(ptr noundef nonnull %i.qg, i64 noundef %i.rc) #22
  br label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.2

_ZNSt6vectorIN5video9S3DVertexESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.2: ; preds = %bb.ap, %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.2
  store ptr %i.qr, ptr %i.ds, align 8, !tbaa !143
  store ptr %i.qz, ptr %i.hu, align 8, !tbaa !144
  %i.rd = getelementptr inbounds nuw [40 x i8], ptr %i.qr, i64 %i.qp ; 2 uses
  store ptr %i.rd, ptr %i.ea, align 8, !tbaa !142
  br label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE9push_backERKS1_.exit.2

_ZNSt6vectorIN5video9S3DVertexESaIS1_EE9push_backERKS1_.exit.2: ; preds = %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.2, %bb.an
  %i.re = phi ptr [ %i.rd, %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.2 ], [ %.pre738, %bb.an ] ; 4 uses
  %i.rf = phi ptr [ %i.qz, %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.2 ], [ %i.qf, %bb.an ] ; 7 uses
  %i.rg = fadd nsz float %i.ka, %.sroa.220713.0   ; 2 uses
  %6 = fadd nsz <4 x float> %2, %3                ; 2 uses
  %.not.i.3 = icmp eq ptr %i.rf, %i.re
  br i1 %.not.i.3, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE9push_backERKS1_.exit.2
  store float %i.rg, ptr %i.rf, align 4, !tbaa !24
  %.sroa.231.120..sroa_idx = getelementptr inbounds nuw i8, ptr %i.rf, i64 4
  %i.rh = extractelement <2 x float> %i.py, i64 1
  store float %i.rh, ptr %.sroa.231.120..sroa_idx, align 4, !tbaa !24
  %.sroa.240.120..sroa_idx = getelementptr inbounds nuw i8, ptr %i.rf, i64 8
  store <4 x float> %6, ptr %.sroa.240.120..sroa_idx, align 4, !tbaa !24
  %.sroa.282.120..sroa_idx = getelementptr inbounds nuw i8, ptr %i.rf, i64 24
  %i.ri = extractelement <2 x i32> %i.nq, i64 0
  store i32 %i.ri, ptr %.sroa.282.120..sroa_idx, align 4, !tbaa !109
  %.sroa.292.120..sroa_idx = getelementptr inbounds nuw i8, ptr %i.rf, i64 28
  store <2 x float> zeroinitializer, ptr %.sroa.292.120..sroa_idx, align 4, !tbaa !24
  %.sroa.294.120..sroa_idx = getelementptr inbounds nuw i8, ptr %i.rf, i64 36
  store i16 0, ptr %.sroa.294.120..sroa_idx, align 4, !tbaa !115
  %i.rj = load ptr, ptr %i.hu, align 8, !tbaa !144
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rj, i64 40
  store ptr %i.rk, ptr %i.hu, align 8, !tbaa !144
  br label %.loopexit582

bb.ar:                                            ; preds = %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE9push_backERKS1_.exit.2
  %i.rl = load ptr, ptr %i.ds, align 8, !tbaa !143 ; 5 uses
  %i.rm = ptrtoint ptr %i.re to i64
  %i.rn = ptrtoint ptr %i.rl to i64               ; 2 uses
  %i.ro = sub i64 %i.rm, %i.rn                    ; 3 uses
  %i.rp = icmp eq i64 %i.ro, 9223372036854775800
  br i1 %i.rp, label %.invoke, label %_ZNKSt6vectorIN5video9S3DVertexESaIS1_EE12_M_check_lenEmPKc.exit.i.i.3

_ZNKSt6vectorIN5video9S3DVertexESaIS1_EE12_M_check_lenEmPKc.exit.i.i.3: ; preds = %bb.ar
  %i.rq = sdiv exact i64 %i.ro, 40                ; 3 uses
  %.sroa.speculated.i.i.i.3 = call i64 @llvm.umax.i64(i64 %i.rq, i64 1)
  %i.rr = add nsw i64 %.sroa.speculated.i.i.i.3, %i.rq ; 2 uses
  %i.rs = icmp ult i64 %i.rr, %i.rq
  %i.rt = call i64 @llvm.umin.i64(i64 %i.rr, i64 230584300921369395)
  %i.ru = select i1 %i.rs, i64 230584300921369395, i64 %i.rt ; 3 uses
  %.not.i.i.i375.3 = icmp ne i64 %i.ru, 0
  call void @llvm.assume(i1 %.not.i.i.i375.3)
  %i.rv = mul nuw nsw i64 %i.ru, 40
  %i.rw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.rv) #25
          to label %.noexc377.3 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc377.3:                                      ; preds = %_ZNKSt6vectorIN5video9S3DVertexESaIS1_EE12_M_check_lenEmPKc.exit.i.i.3
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rw, i64 %i.ro ; 6 uses
  store float %i.rg, ptr %i.rx, align 4, !tbaa !24
  %.sroa.231.120..sroa_idx715 = getelementptr inbounds nuw i8, ptr %i.rx, i64 4
  %i.ry = extractelement <2 x float> %i.py, i64 1
  store float %i.ry, ptr %.sroa.231.120..sroa_idx715, align 4, !tbaa !24
  %.sroa.240.120..sroa_idx717.a = getelementptr inbounds nuw i8, ptr %i.rx, i64 8
  store <4 x float> %6, ptr %.sroa.240.120..sroa_idx717.a, align 4, !tbaa !24
  %.sroa.282.120..sroa_idx725 = getelementptr inbounds nuw i8, ptr %i.rx, i64 24
  %i.rz = extractelement <2 x i32> %i.nq, i64 0
  store i32 %i.rz, ptr %.sroa.282.120..sroa_idx725, align 4, !tbaa !109
  %.sroa.292.120..sroa_idx727 = getelementptr inbounds nuw i8, ptr %i.rx, i64 28
  store <2 x float> zeroinitializer, ptr %.sroa.292.120..sroa_idx727, align 4, !tbaa !24
  %.sroa.294.120..sroa_idx731 = getelementptr inbounds nuw i8, ptr %i.rx, i64 36
  store i16 0, ptr %.sroa.294.120..sroa_idx731, align 4, !tbaa !115
  %.not10.i.i.i.i.i.3 = icmp eq ptr %i.rl, %i.re
  br i1 %.not10.i.i.i.i.i.3, label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.3, label %.lr.ph.i.i.i.i.i.3

.lr.ph.i.i.i.i.i.3:                               ; preds = %.noexc377.3, %.lr.ph.i.i.i.i.i.3
  %.012.i.i.i.i.i.3 = phi ptr [ %i.sb, %.lr.ph.i.i.i.i.i.3 ], [ %i.rw, %.noexc377.3 ] ; 2 uses
  %.0911.i.i.i.i.i.3 = phi ptr [ %i.sa, %.lr.ph.i.i.i.i.i.3 ], [ %i.rl, %.noexc377.3 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %.012.i.i.i.i.i.3, ptr noundef nonnull align 4 dereferenceable(40) %.0911.i.i.i.i.i.3, i64 40, i1 false), !tbaa.struct !145, !alias.scope !219
  %i.sa = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.3, i64 40 ; 2 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.3, i64 40 ; 2 uses
  %.not.i.i.i.i.i.3 = icmp eq ptr %i.sa, %i.re
  br i1 %.not.i.i.i.i.i.3, label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.3, label %.lr.ph.i.i.i.i.i.3, !llvm.loop !204

_ZNSt6vectorIN5video9S3DVertexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.3: ; preds = %.lr.ph.i.i.i.i.i.3, %.noexc377.3
  %.0.lcssa.i.i.i.i.i.3 = phi ptr [ %i.rw, %.noexc377.3 ], [ %i.sb, %.lr.ph.i.i.i.i.i.3 ]
  %i.sc = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.3, i64 40
  %.not.i23.i.i.3 = icmp eq ptr %i.rl, null
  br i1 %.not.i23.i.i.3, label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.3, label %bb.as

bb.as:                                            ; preds = %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.3
  %i.sd = load ptr, ptr %i.ea, align 8, !tbaa !142
  %i.se = ptrtoint ptr %i.sd to i64
  %i.sf = sub i64 %i.se, %i.rn
  call void @_ZdlPvm(ptr noundef nonnull %i.rl, i64 noundef %i.sf) #22
  br label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.3

_ZNSt6vectorIN5video9S3DVertexESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.3: ; preds = %bb.as, %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.3
  store ptr %i.rw, ptr %i.ds, align 8, !tbaa !143
  store ptr %i.sc, ptr %i.hu, align 8, !tbaa !144
  %i.sg = getelementptr inbounds nuw [40 x i8], ptr %i.rw, i64 %i.ru
  store ptr %i.sg, ptr %i.ea, align 8, !tbaa !142
  br label %.loopexit582

.loopexit582:                                     ; preds = %bb.aq, %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.3, %bb.af, %bb.ac, %bb.y, %bb.v
  %.sroa.136.6 = phi i32 [ %.sroa.136.0, %bb.af ], [ %.sroa.136.0, %bb.v ], [ %.sroa.136.0, %bb.y ], [ %.sroa.136.0, %bb.ac ], [ %.sroa.136.5, %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.3 ], [ %.sroa.136.5, %bb.aq ]
  %.sroa.65.6 = phi i32 [ %.sroa.65.0, %bb.af ], [ %.sroa.65.0, %bb.v ], [ %.sroa.65.0, %bb.y ], [ %.sroa.65.0, %bb.ac ], [ %.sroa.65.5, %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.3 ], [ %.sroa.65.5, %bb.aq ]
  %i.sh = phi <2 x i32> [ %i.lb, %bb.af ], [ %i.lb, %bb.v ], [ %i.lb, %bb.y ], [ %i.lb, %bb.ac ], [ %i.nq, %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.3 ], [ %i.nq, %bb.aq ]
  %i.si = add nuw nsw i32 %.0255629, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.si, %i.at
  br i1 %exitcond.not, label %bb.q, label %bb.s, !llvm.loop !212

bb.at:                                            ; preds = %bb.o, %bb.q
  %i.sj = phi i16 [ %i.jc, %bb.o ], [ %.pre739, %bb.q ] ; 3 uses
  %i.sk = phi i16 [ %i.jd, %bb.o ], [ %.pre739, %bb.q ] ; 2 uses
  %i.sl = add i16 %.0260630, 1                    ; 2 uses
  %i.sm = sext i16 %i.sl to i32
  %i.sn = zext i16 %i.sk to i32                   ; 2 uses
  %i.so = icmp slt i32 %i.sm, %i.sn
  br i1 %i.so, label %bb.o, label %._crit_edge633.loopexit, !llvm.loop !213

_ZN5scene11IMeshBuffer8setDirtyENS_13E_BUFFER_TYPEE.exit: ; preds = %.noexc345
  %i.sp = load ptr, ptr %i.dp, align 8, !tbaa !19
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sp, i64 16
  %i.sr = load ptr, ptr %i.sq, align 8
  %i.ss = invoke noundef ptr %i.sr(ptr noundef nonnull align 8 dereferenceable(8) %i.dp)
          to label %.noexc378 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !5 ; 2 uses

.noexc378:                                        ; preds = %_ZN5scene11IMeshBuffer8setDirtyENS_13E_BUFFER_TYPEE.exit
  %i.st = load ptr, ptr %i.ss, align 8, !tbaa !19
  %i.su = getelementptr inbounds nuw i8, ptr %i.st, i64 16
  %i.sv = load ptr, ptr %i.su, align 8
  %i.sw = invoke noundef i32 %i.sv(ptr noundef nonnull align 8 dereferenceable(28) %i.ss)
          to label %_ZNK5scene11IMeshBuffer14getVertexCountEv.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !5

_ZNK5scene11IMeshBuffer14getVertexCountEv.exit:   ; preds = %.noexc378
  %i.sx = lshr i32 %i.sw, 2                       ; 3 uses
  %i.sy = mul i32 %i.sx, 6                        ; 3 uses
  %i.sz = load ptr, ptr %i.dp, align 8, !tbaa !19
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sz, i64 32
  %i.tb = load ptr, ptr %i.ta, align 8
  %i.tc = invoke noundef ptr %i.tb(ptr noundef nonnull align 8 dereferenceable(8) %i.dp)
          to label %.noexc380 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !6 ; 2 uses

.noexc380:                                        ; preds = %_ZNK5scene11IMeshBuffer14getVertexCountEv.exit
  %i.td = load ptr, ptr %i.tc, align 8, !tbaa !19
  %i.te = getelementptr inbounds nuw i8, ptr %i.td, i64 16
  %i.tf = load ptr, ptr %i.te, align 8
  %i.tg = invoke noundef i32 %i.tf(ptr noundef nonnull align 8 dereferenceable(28) %i.tc)
          to label %_ZNK5scene11IMeshBuffer13getIndexCountEv.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !6

_ZNK5scene11IMeshBuffer13getIndexCountEv.exit:    ; preds = %.noexc380
  %i.th = icmp ugt i32 %i.tg, %i.sy
  br i1 %i.th, label %bb.au, label %bb.ay

bb.au:                                            ; preds = %_ZNK5scene11IMeshBuffer13getIndexCountEv.exit
  %i.ti = zext i32 %i.sy to i64                   ; 4 uses
  %i.tj = getelementptr inbounds nuw i8, ptr %i.du, i64 40 ; 2 uses
  %i.tk = load ptr, ptr %i.tj, align 8, !tbaa !151 ; 2 uses
  %i.tl = load ptr, ptr %i.dv, align 8, !tbaa !150 ; 2 uses
  %i.tm = ptrtoint ptr %i.tk to i64
  %i.tn = ptrtoint ptr %i.tl to i64
  %i.to = sub i64 %i.tm, %i.tn
  %i.tp = ashr exact i64 %i.to, 1                 ; 3 uses
  %i.tq = icmp ult i64 %i.tp, %i.ti
  br i1 %i.tq, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.tr = sub nuw nsw i64 %i.ti, %i.tp
  invoke void @_ZNSt6vectorItSaItEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.dv, i64 noundef %i.tr)
          to label %_ZNSt6vectorItSaItEE6resizeEm.exit.invoke unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.aw:                                            ; preds = %bb.au
  %i.ts = icmp ugt i64 %i.tp, %i.ti
  br i1 %i.ts, label %bb.ax, label %_ZNSt6vectorItSaItEE6resizeEm.exit.invoke

bb.ax:                                            ; preds = %bb.aw
  %i.tt = getelementptr inbounds nuw [2 x i8], ptr %i.tl, i64 %i.ti ; 2 uses
  %.not.i.i382 = icmp eq ptr %i.tk, %i.tt
  br i1 %.not.i.i382, label %_ZNSt6vectorItSaItEE6resizeEm.exit.invoke, label %_ZSt8_DestroyIPttEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPttEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.ax
  store ptr %i.tt, ptr %i.tj, align 8, !tbaa !151
  br label %_ZNSt6vectorItSaItEE6resizeEm.exit.invoke

_ZNSt6vectorItSaItEE6resizeEm.exit.invoke:        ; preds = %_ZNSt6vectorItSaItEE9push_backEOt.exit449, %bb.av, %bb.aw, %bb.ax, %_ZSt8_DestroyIPttEvT_S1_RSaIT0_E.exit.i.i, %_ZNK5scene11IMeshBuffer13getIndexCountEv.exit392
  %i.tu = load ptr, ptr %i.dp, align 8, !tbaa !19
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tu, i64 40
  %i.tw = load ptr, ptr %i.tv, align 8
  %i.tx = invoke noundef ptr %i.tw(ptr noundef nonnull align 8 dereferenceable(8) %i.dp)
          to label %.noexc384.invoke unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !207

.noexc384.invoke:                                 ; preds = %_ZNSt6vectorItSaItEE6resizeEm.exit.invoke
  invoke void @_ZN5scene8HWBuffer8setDirtyEv(ptr noundef nonnull align 8 dereferenceable(28) %i.tx)
          to label %_ZN5scene11IMeshBuffer8setDirtyENS_13E_BUFFER_TYPEE.exit386 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ay:                                            ; preds = %_ZNK5scene11IMeshBuffer13getIndexCountEv.exit
  %i.ty = load ptr, ptr %i.dp, align 8, !tbaa !19
  %i.tz = getelementptr inbounds nuw i8, ptr %i.ty, i64 32
  %i.ua = load ptr, ptr %i.tz, align 8
  %i.ub = invoke noundef ptr %i.ua(ptr noundef nonnull align 8 dereferenceable(8) %i.dp)
          to label %.noexc387 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !6 ; 2 uses

.noexc387:                                        ; preds = %bb.ay
  %i.uc = load ptr, ptr %i.ub, align 8, !tbaa !19
  %i.ud = getelementptr inbounds nuw i8, ptr %i.uc, i64 16
  %i.ue = load ptr, ptr %i.ud, align 8
  %i.uf = invoke noundef i32 %i.ue(ptr noundef nonnull align 8 dereferenceable(28) %i.ub)
          to label %_ZNK5scene11IMeshBuffer13getIndexCountEv.exit389 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !6

_ZNK5scene11IMeshBuffer13getIndexCountEv.exit389: ; preds = %.noexc387
  %i.ug = icmp ult i32 %i.uf, %i.sy
  br i1 %i.ug, label %bb.az, label %_ZN5scene11IMeshBuffer8setDirtyENS_13E_BUFFER_TYPEE.exit386

bb.az:                                            ; preds = %_ZNK5scene11IMeshBuffer13getIndexCountEv.exit389
  %i.uh = load ptr, ptr %i.dp, align 8, !tbaa !19
  %i.ui = getelementptr inbounds nuw i8, ptr %i.uh, i64 32
  %i.uj = load ptr, ptr %i.ui, align 8
  %i.uk = invoke noundef ptr %i.uj(ptr noundef nonnull align 8 dereferenceable(8) %i.dp)
          to label %.noexc390 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !6 ; 2 uses

.noexc390:                                        ; preds = %bb.az
  %i.ul = load ptr, ptr %i.uk, align 8, !tbaa !19
  %i.um = getelementptr inbounds nuw i8, ptr %i.ul, i64 16
  %i.un = load ptr, ptr %i.um, align 8
  %i.uo = invoke noundef i32 %i.un(ptr noundef nonnull align 8 dereferenceable(28) %i.uk)
          to label %_ZNK5scene11IMeshBuffer13getIndexCountEv.exit392 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !6

_ZNK5scene11IMeshBuffer13getIndexCountEv.exit392: ; preds = %.noexc390
  %i.up = udiv i32 %i.uo, 6                       ; 2 uses
  %i.uq = icmp samesign ult i32 %i.up, %i.sx
  br i1 %i.uq, label %.lr.ph638, label %_ZNSt6vectorItSaItEE6resizeEm.exit.invoke

.lr.ph638:                                        ; preds = %_ZNK5scene11IMeshBuffer13getIndexCountEv.exit392
  %i.ur = getelementptr inbounds nuw i8, ptr %i.du, i64 40 ; 13 uses
  %.pre740 = load ptr, ptr %i.ur, align 8, !tbaa !151
  %.pre741 = load ptr, ptr %i.gu, align 8, !tbaa !149
  br label %bb.ba

bb.ba:                                            ; preds = %.lr.ph638, %_ZNSt6vectorItSaItEE9push_backEOt.exit449
  %i.us = phi ptr [ %.pre741, %.lr.ph638 ], [ %i.zy, %_ZNSt6vectorItSaItEE9push_backEOt.exit449 ] ; 3 uses
  %i.ut = phi ptr [ %.pre740, %.lr.ph638 ], [ %i.zz, %_ZNSt6vectorItSaItEE9push_backEOt.exit449 ] ; 3 uses
  %.0637 = phi i32 [ %i.up, %.lr.ph638 ], [ %i.aaa, %_ZNSt6vectorItSaItEE9push_backEOt.exit449 ] ; 2 uses
  %.0.tr = trunc i32 %.0637 to i16
  %i.uu = shl i16 %.0.tr, 2                       ; 7 uses
  %.not.i.i396 = icmp eq ptr %i.ut, %i.us
  br i1 %.not.i.i396, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  store i16 %i.uu, ptr %i.ut, align 2, !tbaa !115
  %i.uv = getelementptr inbounds nuw i8, ptr %i.ut, i64 2 ; 2 uses
  store ptr %i.uv, ptr %i.ur, align 8, !tbaa !151
  br label %_ZNSt6vectorItSaItEE9push_backEOt.exit

bb.bc:                                            ; preds = %bb.ba
  %i.uw = load ptr, ptr %i.dv, align 8, !tbaa !150 ; 4 uses
  %i.ux = ptrtoint ptr %i.us to i64
  %i.uy = ptrtoint ptr %i.uw to i64               ; 2 uses
  %i.uz = sub i64 %i.ux, %i.uy                    ; 5 uses
  %i.va = icmp eq i64 %i.uz, 9223372036854775806
  br i1 %i.va, label %.invoke, label %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i

_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.bc
  %i.vb = ashr exact i64 %i.uz, 1                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.vb, i64 1)
end_hunk_0
