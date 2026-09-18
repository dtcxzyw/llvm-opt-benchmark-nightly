Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/sky?download=true
inline.NumInlined: 1905
inline.NumDeleted: 597
loop-unroll.NumCompletelyUnrolled: 31
loop-unroll.NumUnrolled: 31
begin_hunk_0_@_ZN3Sky11updateStarsEv:bb.a
  %i.x = load ptr, ptr %i.v, align 8, !tbaa !195  ; 5 uses
  %.not.i49 = icmp eq ptr %i.x, null
  br i1 %.not.i49, label %_ZN11StreamProxylsIRjEERS_OT_.exit, label %bb.g

bb.g:                                             ; preds = %_ZTW13warningstream.exit
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !32
  %i.z = getelementptr i8, ptr %i.y, i64 -24
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = getelementptr inbounds i8, ptr %i.x, i64 %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !202
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.x)
  %.pre.i = load ptr, ptr %i.v, align 8, !tbaa !195
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.af = phi ptr [ %.pre.i, %bb.h ], [ %i.x, %bb.g ]
  %i.ag = load i32, ptr %i.n, align 4, !tbaa !111
  %i.ah = zext i32 %i.ag to i64
  %i.ai = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.af, i64 noundef %i.ah) ; 0 uses
  br label %_ZN11StreamProxylsIRjEERS_OT_.exit

_ZN11StreamProxylsIRjEERS_OT_.exit:               ; preds = %_ZTW13warningstream.exit, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @.str.9, ptr %i.b, align 8, !tbaa !194
  %i.aj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr noundef nonnull align 8 dereferenceable(8) %i.b) ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !195 ; 5 uses
  %.not.i50 = icmp eq ptr %i.ak, null
  br i1 %.not.i50, label %_ZN11StreamProxylsIiEERS_OT_.exit, label %bb.j

bb.j:                                             ; preds = %_ZN11StreamProxylsIRjEERS_OT_.exit
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !32
  %i.am = getelementptr i8, ptr %i.al, i64 -24
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = getelementptr inbounds i8, ptr %i.ak, i64 %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !202
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.ak)
  %.pre.i51 = load ptr, ptr %i.aj, align 8, !tbaa !195
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.as = phi ptr [ %.pre.i51, %bb.k ], [ %i.ak, %bb.j ]
  %i.at = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.as, i32 noundef 16384) ; 0 uses
  br label %_ZN11StreamProxylsIiEERS_OT_.exit

_ZN11StreamProxylsIiEERS_OT_.exit:                ; preds = %_ZN11StreamProxylsIRjEERS_OT_.exit, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @.str.10, ptr %i.a, align 8, !tbaa !194
  %i.au = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.aj, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i32 16384, ptr %i.n, align 4, !tbaa !156
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !157
  br label %bb.n

bb.m:                                             ; preds = %bb.a
  %i.av = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef 200) #30
  resume { ptr, i32 } %i.av

bb.n:                                             ; preds = %_ZN11StreamProxylsIiEERS_OT_.exit, %_ZN7irr_ptrIN5scene11CMeshBufferIN5video9S3DVertexEEEE5resetEPS4_.exit
  %i.aw = phi i32 [ 16384, %_ZN11StreamProxylsIiEERS_OT_.exit ], [ %i.o, %_ZN7irr_ptrIN5scene11CMeshBufferIN5video9S3DVertexEEEE5resetEPS4_.exit ] ; 2 uses
  %i.ax = phi ptr [ %.pre, %_ZN11StreamProxylsIiEERS_OT_.exit ], [ %i.e, %_ZN7irr_ptrIN5scene11CMeshBufferIN5video9S3DVertexEEEE5resetEPS4_.exit ] ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 136
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !209 ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 32 ; 11 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 144
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !210 ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 32 ; 15 uses
  %i.be = shl nuw nsw i32 %i.aw, 2
  %i.bf = zext nneg i32 %i.be to i64              ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.az, i64 48 ; 15 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !213
  %i.bi = load ptr, ptr %i.ba, align 8, !tbaa !214
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = ptrtoint ptr %i.bi to i64               ; 2 uses
  %i.bl = sub i64 %i.bj, %i.bk
  %i.bm = sdiv exact i64 %i.bl, 40
  %i.bn = icmp ult i64 %i.bm, %i.bf
  br i1 %i.bn, label %_ZNSt12_Vector_baseIN5video9S3DVertexESaIS1_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE7reserveEm.exit

_ZNSt12_Vector_baseIN5video9S3DVertexESaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.n
  %i.bo = getelementptr inbounds nuw i8, ptr %i.az, i64 40 ; 3 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !215
  %i.bq = ptrtoint ptr %i.bp to i64
  %i.br = sub i64 %i.bq, %i.bk
  %i.bs = mul nuw nsw i64 %i.bf, 40
  %i.bt = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bs) #33 ; 4 uses
  %i.bu = load ptr, ptr %i.ba, align 8, !tbaa !214 ; 5 uses
  %i.bv = load ptr, ptr %i.bo, align 8, !tbaa !215 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.bu, %i.bv
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt12_Vector_baseIN5video9S3DVertexESaIS1_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.bx, %.lr.ph.i.i.i.i ], [ %i.bt, %_ZNSt12_Vector_baseIN5video9S3DVertexESaIS1_EE11_M_allocateEm.exit.i ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.bw, %.lr.ph.i.i.i.i ], [ %i.bu, %_ZNSt12_Vector_baseIN5video9S3DVertexESaIS1_EE11_M_allocateEm.exit.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %.012.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(40) %.0911.i.i.i.i, i64 40, i1 false), !tbaa.struct !216, !alias.scope !372
  %i.bw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 40 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 40
  %.not.i.i.i.i = icmp eq ptr %i.bw, %i.bv
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !356

_ZNSt6vectorIN5video9S3DVertexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i: ; preds = %.lr.ph.i.i.i.i, %_ZNSt12_Vector_baseIN5video9S3DVertexESaIS1_EE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.bu, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIN5video9S3DVertexESaIS1_EE13_M_deallocateEPS1_m.exit.i, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  %i.by = load ptr, ptr %i.bg, align 8, !tbaa !213
  %i.bz = ptrtoint ptr %i.by to i64
  %i.ca = ptrtoint ptr %i.bu to i64
  %i.cb = sub i64 %i.bz, %i.ca
  call void @_ZdlPvm(ptr noundef nonnull %i.bu, i64 noundef %i.cb) #30
  br label %_ZNSt12_Vector_baseIN5video9S3DVertexESaIS1_EE13_M_deallocateEPS1_m.exit.i

_ZNSt12_Vector_baseIN5video9S3DVertexESaIS1_EE13_M_deallocateEPS1_m.exit.i: ; preds = %bb.o, %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  store ptr %i.bt, ptr %i.ba, align 8, !tbaa !214
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.br
  store ptr %i.cc, ptr %i.bo, align 8, !tbaa !215
  %i.cd = getelementptr inbounds nuw [40 x i8], ptr %i.bt, i64 %i.bf
  store ptr %i.cd, ptr %i.bg, align 8, !tbaa !213
  %.pre324 = load i32, ptr %i.n, align 4, !tbaa !156
  br label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE7reserveEm.exit

_ZNSt6vectorIN5video9S3DVertexESaIS1_EE7reserveEm.exit: ; preds = %bb.n, %_ZNSt12_Vector_baseIN5video9S3DVertexESaIS1_EE13_M_deallocateEPS1_m.exit.i
  %i.ce = phi i32 [ %i.aw, %bb.n ], [ %.pre324, %_ZNSt12_Vector_baseIN5video9S3DVertexESaIS1_EE13_M_deallocateEPS1_m.exit.i ]
  %i.cf = mul i32 %i.ce, 6
  %i.cg = zext i32 %i.cf to i64                   ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bc, i64 48 ; 16 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !218
  %i.cj = load ptr, ptr %i.bd, align 8, !tbaa !219
  %i.ck = ptrtoint ptr %i.ci to i64
  %i.cl = ptrtoint ptr %i.cj to i64               ; 2 uses
  %i.cm = sub i64 %i.ck, %i.cl
  %i.cn = ashr exact i64 %i.cm, 1
  %i.co = icmp ult i64 %i.cn, %i.cg
  br i1 %i.co, label %_ZNSt12_Vector_baseItSaItEE11_M_allocateEm.exit.i, label %_ZNSt6vectorItSaItEE7reserveEm.exit

_ZNSt12_Vector_baseItSaItEE11_M_allocateEm.exit.i: ; preds = %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE7reserveEm.exit
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bc, i64 40 ; 3 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !220
  %i.cr = ptrtoint ptr %i.cq to i64
  %i.cs = sub i64 %i.cr, %i.cl
  %i.ct = shl nuw nsw i64 %i.cg, 1
  %i.cu = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ct) #33 ; 4 uses
  %i.cv = load ptr, ptr %i.bd, align 8, !tbaa !219 ; 4 uses
  %i.cw = load ptr, ptr %i.cp, align 8, !tbaa !220
  %i.cx = ptrtoint ptr %i.cw to i64
  %i.cy = ptrtoint ptr %i.cv to i64               ; 2 uses
  %i.cz = sub i64 %i.cx, %i.cy                    ; 2 uses
  %i.da = icmp sgt i64 %i.cz, 0
  br i1 %i.da, label %bb.p, label %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit.i

bb.p:                                             ; preds = %_ZNSt12_Vector_baseItSaItEE11_M_allocateEm.exit.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.cu, ptr align 2 %i.cv, i64 %i.cz, i1 false)
  br label %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit.i

_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit.i: ; preds = %bb.p, %_ZNSt12_Vector_baseItSaItEE11_M_allocateEm.exit.i
  %.not.i8.i52 = icmp eq ptr %i.cv, null
  br i1 %.not.i8.i52, label %_ZNSt12_Vector_baseItSaItEE13_M_deallocateEPtm.exit.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit.i
  %i.db = load ptr, ptr %i.ch, align 8, !tbaa !218
  %i.dc = ptrtoint ptr %i.db to i64
  %i.dd = sub i64 %i.dc, %i.cy
  call void @_ZdlPvm(ptr noundef nonnull %i.cv, i64 noundef %i.dd) #30
  br label %_ZNSt12_Vector_baseItSaItEE13_M_deallocateEPtm.exit.i

_ZNSt12_Vector_baseItSaItEE13_M_deallocateEPtm.exit.i: ; preds = %bb.q, %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit.i
  store ptr %i.cu, ptr %i.bd, align 8, !tbaa !219
  %i.de = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.cs
  store ptr %i.de, ptr %i.cp, align 8, !tbaa !220
  %i.df = getelementptr inbounds nuw [2 x i8], ptr %i.cu, i64 %i.cg
  store ptr %i.df, ptr %i.ch, align 8, !tbaa !218
  br label %_ZNSt6vectorItSaItEE7reserveEm.exit

_ZNSt6vectorItSaItEE7reserveEm.exit:              ; preds = %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE7reserveEm.exit, %_ZNSt12_Vector_baseItSaItEE13_M_deallocateEPtm.exit.i
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 2304
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !221 ; 2 uses
  %i.di = icmp eq i64 %i.dh, 0
  br i1 %i.di, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZNSt6vectorItSaItEE7reserveEm.exit
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 2320
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !110
  br label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorItSaItEE7reserveEm.exit, %bb.r
  %i.dl = phi i64 [ %i.dk, %bb.r ], [ %i.dh, %_ZNSt6vectorItSaItEE7reserveEm.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #31
  call void @_ZN9PcgRandomC1Emm(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %i.dl, i64 noundef -2720673578348880933)
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 2292
  %6 = load float, ptr %5, align 4, !tbaa !373
  %7 = fpext nsz float %6 to double
  %8 = fmul nsz double %7, 3.000000e-03
  %9 = fptrunc nsz double %8 to float             ; 5 uses
  %i.dm = load i32, ptr %i.n, align 4, !tbaa !156
  %.not = icmp eq i32 %i.dm, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.s
  %i.dn = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.do = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.dp = getelementptr inbounds nuw i8, ptr %3, i64 60
  %i.dq = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.ds = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.dt = fneg nsz float %9                       ; 4 uses
  %i.du = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.dv = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.dw = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.dx = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.dy = getelementptr inbounds nuw i8, ptr %i.az, i64 40 ; 13 uses
  %i.dz = insertelement <2 x float> poison, float %9, i64 0
  %i.ea = shufflevector <2 x float> %i.dz, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.eb = insertelement <2 x float> poison, float %i.dt, i64 0
  %i.ec = shufflevector <2 x float> %i.eb, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  br label %bb.t

.preheader:                                       ; preds = %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE9push_backEOS1_.exit108
  %i.ed = icmp eq i32 %i.it, 0
  br i1 %i.ed, label %._crit_edge, label %.lr.ph319

.lr.ph319:                                        ; preds = %.preheader
  %i.ee = getelementptr inbounds nuw i8, ptr %i.bc, i64 40 ; 13 uses
  %.pre328 = load ptr, ptr %i.ee, align 8, !tbaa !220
  %.pre329 = load ptr, ptr %i.ch, align 8, !tbaa !218
  br label %bb.ak

bb.t:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE9push_backEOS1_.exit108
  %.045317 = phi i16 [ 0, %.lr.ph ], [ %i.ir, %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE9push_backEOS1_.exit108 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  %i.ef = call noundef i32 @_ZN9PcgRandom5rangeEii(ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef -10000, i32 noundef 10000)
  %i.eg = call noundef i32 @_ZN9PcgRandom5rangeEii(ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef -10000, i32 noundef 10000)
  %i.eh = call noundef i32 @_ZN9PcgRandom5rangeEii(ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef -10000, i32 noundef 10000)
  %i.ei = sitofp nsz i32 %i.eh to float
  %i.ej = insertelement <2 x i32> poison, i32 %i.ef, i64 0
  %i.ek = insertelement <2 x i32> %i.ej, i32 %i.eg, i64 1
  %i.el = sitofp <2 x i32> %i.ek to <2 x float>
  store <2 x float> %i.el, ptr %2, align 8, !tbaa !37
  store float %i.ei, ptr %i.dn, align 8, !tbaa !177
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %i.do, i8 0, i64 56, i1 false)
  store float 1.000000e+00, ptr %i.dp, align 4, !tbaa !37
  store float 1.000000e+00, ptr %i.dq, align 8, !tbaa !37
  store float 1.000000e+00, ptr %i.dr, align 4, !tbaa !37
  store float 1.000000e+00, ptr %3, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %4, align 8, !tbaa !37
  store float 0.000000e+00, ptr %i.ds, align 8, !tbaa !177
  %i.em = call noundef nonnull align 4 dereferenceable(64) ptr @_ZN4core8CMatrix4IfE17buildRotateFromToERKNS_8vector3dIfEES5_(ptr noundef nonnull align 4 dereferenceable(64) %3, ptr noundef nonnull align 4 dereferenceable(12) %4, ptr noundef nonnull align 4 dereferenceable(12) %2) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  %i.en = load float, ptr %i.dw, align 8, !tbaa !37 ; 2 uses
  %10 = load float, ptr %i.dx, align 8, !tbaa !37 ; 2 uses
  %11 = call nsz float @llvm.fmuladd.f32(float %i.dt, float %i.en, float %10) ; 2 uses
  %12 = load float, ptr %i.dq, align 8, !tbaa !37 ; 4 uses
  %13 = call nsz float @llvm.fmuladd.f32(float %i.dt, float %12, float %11) ; 2 uses
  %i.eo = call nsz float @llvm.fmuladd.f32(float %9, float %i.en, float %10) ; 2 uses
  %14 = call nsz float @llvm.fmuladd.f32(float %i.dt, float %12, float %i.eo) ; 2 uses
  %i.ep = call nsz float @llvm.fmuladd.f32(float %9, float %12, float %i.eo) ; 2 uses
  %i.eq = load <2 x float>, ptr %3, align 8, !tbaa !37 ; 2 uses
  %i.er = load <2 x float>, ptr %i.du, align 8, !tbaa !37 ; 2 uses
  %i.es = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ec, <2 x float> %i.eq, <2 x float> %i.er) ; 2 uses
  %i.et = load <2 x float>, ptr %i.dv, align 8, !tbaa !37 ; 4 uses
  %i.eu = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ec, <2 x float> %i.et, <2 x float> %i.es) ; 2 uses
  %i.ev = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ea, <2 x float> %i.eq, <2 x float> %i.er) ; 2 uses
  %i.ew = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ec, <2 x float> %i.et, <2 x float> %i.ev) ; 2 uses
  %i.ex = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ea, <2 x float> %i.et, <2 x float> %i.ev) ; 2 uses
  %i.ey = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ea, <2 x float> %i.et, <2 x float> %i.es) ; 2 uses
  %15 = call nsz float @llvm.fmuladd.f32(float %9, float %12, float %11) ; 2 uses
  %i.ez = load ptr, ptr %i.dy, align 8, !tbaa !215 ; 7 uses
  %i.fa = load ptr, ptr %i.bg, align 8, !tbaa !213
  %.not.i.i65 = icmp eq ptr %i.ez, %i.fa
  br i1 %.not.i.i65, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  store <2 x float> %i.eu, ptr %i.ez, align 4
  %.sroa.0256.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  store float %13, ptr %.sroa.0256.sroa.5.0..sroa_idx, align 4, !tbaa !37
  %.sroa.5257.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ez, i64 12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(26) %.sroa.5257.0..sroa_idx, i8 0, i64 26, i1 false)
  %i.fb = load ptr, ptr %i.dy, align 8, !tbaa !215
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 40 ; 2 uses
  store ptr %i.fc, ptr %i.dy, align 8, !tbaa !215
  %.pre325 = load ptr, ptr %i.bg, align 8, !tbaa !213
  br label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE9push_backEOS1_.exit

bb.v:                                             ; preds = %bb.t
  %i.fd = load ptr, ptr %i.ba, align 8, !tbaa !214 ; 5 uses
  %i.fe = ptrtoint ptr %i.ez to i64
  %i.ff = ptrtoint ptr %i.fd to i64               ; 2 uses
  %i.fg = sub i64 %i.fe, %i.ff                    ; 3 uses
  %i.fh = icmp eq i64 %i.fg, 9223372036854775800
  br i1 %i.fh, label %bb.w, label %_ZNKSt6vectorIN5video9S3DVertexESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.w:                                             ; preds = %bb.v
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.26) #34
  unreachable

_ZNKSt6vectorIN5video9S3DVertexESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.v
  %i.fi = sdiv exact i64 %i.fg, 40                ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.fi, i64 1)
  %i.fj = add nsw i64 %.sroa.speculated.i.i.i.i, %i.fi ; 2 uses
  %i.fk = icmp ult i64 %i.fj, %i.fi
  %i.fl = call i64 @llvm.umin.i64(i64 %i.fj, i64 230584300921369395)
  %i.fm = select i1 %i.fk, i64 230584300921369395, i64 %i.fl ; 3 uses
  %.not.i.i.i.i66 = icmp ne i64 %i.fm, 0
  call void @llvm.assume(i1 %.not.i.i.i.i66)
  %i.fn = mul nuw nsw i64 %i.fm, 40
  %i.fo = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fn) #33 ; 5 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 %i.fg ; 3 uses
  store <2 x float> %i.eu, ptr %i.fp, align 4
  %.sroa.0256.sroa.5.0..sroa_idx311 = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  store float %13, ptr %.sroa.0256.sroa.5.0..sroa_idx311, align 4, !tbaa !37
  %.sroa.5257.0..sroa_idx258 = getelementptr inbounds nuw i8, ptr %i.fp, i64 12
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.fd, %i.ez
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(26) %.sroa.5257.0..sroa_idx258, i8 0, i64 26, i1 false)
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNKSt6vectorIN5video9S3DVertexESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.fr, %.lr.ph.i.i.i.i.i.i ], [ %i.fo, %_ZNKSt6vectorIN5video9S3DVertexESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.fq, %.lr.ph.i.i.i.i.i.i ], [ %i.fd, %_ZNKSt6vectorIN5video9S3DVertexESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %.012.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(40) %.0911.i.i.i.i.i.i, i64 40, i1 false), !tbaa.struct !216, !alias.scope !374
  %i.fq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 40 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.fq, %i.ez
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !356

_ZNSt6vectorIN5video9S3DVertexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt6vectorIN5video9S3DVertexESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.fo, %_ZNKSt6vectorIN5video9S3DVertexESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.fr, %.lr.ph.i.i.i.i.i.i ]
  %i.fs = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 40 ; 2 uses
  %.not.i23.i.i.i = icmp eq ptr %i.fd, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  %i.ft = load ptr, ptr %i.bg, align 8, !tbaa !213
  %i.fu = ptrtoint ptr %i.ft to i64
  %i.fv = sub i64 %i.fu, %i.ff
  call void @_ZdlPvm(ptr noundef nonnull %i.fd, i64 noundef %i.fv) #30
  br label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIN5video9S3DVertexESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.x, %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  store ptr %i.fo, ptr %i.ba, align 8, !tbaa !214
  store ptr %i.fs, ptr %i.dy, align 8, !tbaa !215
  %i.fw = getelementptr inbounds nuw [40 x i8], ptr %i.fo, i64 %i.fm ; 2 uses
  store ptr %i.fw, ptr %i.bg, align 8, !tbaa !213
  br label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorIN5video9S3DVertexESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.u, %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i
  %i.fx = phi ptr [ %.pre325, %bb.u ], [ %i.fw, %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ] ; 4 uses
  %i.fy = phi ptr [ %i.fc, %bb.u ], [ %i.fs, %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ] ; 4 uses
  %.not.i.i67 = icmp eq ptr %i.fy, %i.fx
  br i1 %.not.i.i67, label %bb.z, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE9push_backEOS1_.exit
  store <2 x float> %i.ew, ptr %i.fy, align 4
  %.sroa.0224.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  store float %14, ptr %.sroa.0224.sroa.5.0..sroa_idx, align 4, !tbaa !37
  %.sroa.5225.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fy, i64 12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(26) %.sroa.5225.0..sroa_idx, i8 0, i64 26, i1 false)
  %i.fz = load ptr, ptr %i.dy, align 8, !tbaa !215
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 40 ; 2 uses
  store ptr %i.ga, ptr %i.dy, align 8, !tbaa !215
  %.pre326 = load ptr, ptr %i.bg, align 8, !tbaa !213
  br label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE9push_backEOS1_.exit80

bb.z:                                             ; preds = %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE9push_backEOS1_.exit
  %i.gb = load ptr, ptr %i.ba, align 8, !tbaa !214 ; 5 uses
  %i.gc = ptrtoint ptr %i.fx to i64
  %i.gd = ptrtoint ptr %i.gb to i64               ; 2 uses
  %i.ge = sub i64 %i.gc, %i.gd                    ; 3 uses
  %i.gf = icmp eq i64 %i.ge, 9223372036854775800
  br i1 %i.gf, label %bb.aa, label %_ZNKSt6vectorIN5video9S3DVertexESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i68

bb.aa:                                            ; preds = %bb.z
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.26) #34
  unreachable

_ZNKSt6vectorIN5video9S3DVertexESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i68: ; preds = %bb.z
  %i.gg = sdiv exact i64 %i.ge, 40                ; 3 uses
  %.sroa.speculated.i.i.i.i69 = call i64 @llvm.umax.i64(i64 %i.gg, i64 1)
  %i.gh = add nsw i64 %.sroa.speculated.i.i.i.i69, %i.gg ; 2 uses
  %i.gi = icmp ult i64 %i.gh, %i.gg
  %i.gj = call i64 @llvm.umin.i64(i64 %i.gh, i64 230584300921369395)
  %i.gk = select i1 %i.gi, i64 230584300921369395, i64 %i.gj ; 3 uses
  %.not.i.i.i.i70 = icmp ne i64 %i.gk, 0
  call void @llvm.assume(i1 %.not.i.i.i.i70)
  %i.gl = mul nuw nsw i64 %i.gk, 40
  %i.gm = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gl) #33 ; 5 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 %i.ge ; 3 uses
  store <2 x float> %i.ew, ptr %i.gn, align 4
  %.sroa.0224.sroa.5.0..sroa_idx303 = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  store float %14, ptr %.sroa.0224.sroa.5.0..sroa_idx303, align 4, !tbaa !37
  %.sroa.5225.0..sroa_idx226 = getelementptr inbounds nuw i8, ptr %i.gn, i64 12
  %.not10.i.i.i.i.i.i71 = icmp eq ptr %i.gb, %i.fx
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(26) %.sroa.5225.0..sroa_idx226, i8 0, i64 26, i1 false)
  br i1 %.not10.i.i.i.i.i.i71, label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i76, label %.lr.ph.i.i.i.i.i.i72

.lr.ph.i.i.i.i.i.i72:                             ; preds = %_ZNKSt6vectorIN5video9S3DVertexESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i68, %.lr.ph.i.i.i.i.i.i72
  %.012.i.i.i.i.i.i73 = phi ptr [ %i.gp, %.lr.ph.i.i.i.i.i.i72 ], [ %i.gm, %_ZNKSt6vectorIN5video9S3DVertexESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i68 ] ; 2 uses
  %.0911.i.i.i.i.i.i74 = phi ptr [ %i.go, %.lr.ph.i.i.i.i.i.i72 ], [ %i.gb, %_ZNKSt6vectorIN5video9S3DVertexESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i68 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %.012.i.i.i.i.i.i73, ptr noundef nonnull align 4 dereferenceable(40) %.0911.i.i.i.i.i.i74, i64 40, i1 false), !tbaa.struct !216, !alias.scope !375
  %i.go = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i74, i64 40 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i73, i64 40 ; 2 uses
  %.not.i.i.i.i.i.i75 = icmp eq ptr %i.go, %i.fx
  br i1 %.not.i.i.i.i.i.i75, label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i76, label %.lr.ph.i.i.i.i.i.i72, !llvm.loop !356

_ZNSt6vectorIN5video9S3DVertexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i76: ; preds = %.lr.ph.i.i.i.i.i.i72, %_ZNKSt6vectorIN5video9S3DVertexESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i68
  %.0.lcssa.i.i.i.i.i.i77 = phi ptr [ %i.gm, %_ZNKSt6vectorIN5video9S3DVertexESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i68 ], [ %i.gp, %.lr.ph.i.i.i.i.i.i72 ]
  %i.gq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i77, i64 40 ; 2 uses
  %.not.i23.i.i.i78 = icmp eq ptr %i.gb, null
  br i1 %.not.i23.i.i.i78, label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i79, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i76
  %i.gr = load ptr, ptr %i.bg, align 8, !tbaa !213
  %i.gs = ptrtoint ptr %i.gr to i64
  %i.gt = sub i64 %i.gs, %i.gd
  call void @_ZdlPvm(ptr noundef nonnull %i.gb, i64 noundef %i.gt) #30
  br label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i79

_ZNSt6vectorIN5video9S3DVertexESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i79: ; preds = %bb.ab, %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i76
  store ptr %i.gm, ptr %i.ba, align 8, !tbaa !214
  store ptr %i.gq, ptr %i.dy, align 8, !tbaa !215
  %i.gu = getelementptr inbounds nuw [40 x i8], ptr %i.gm, i64 %i.gk ; 2 uses
  store ptr %i.gu, ptr %i.bg, align 8, !tbaa !213
  br label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE9push_backEOS1_.exit80

_ZNSt6vectorIN5video9S3DVertexESaIS1_EE9push_backEOS1_.exit80: ; preds = %bb.y, %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i79
  %i.gv = phi ptr [ %.pre326, %bb.y ], [ %i.gu, %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i79 ] ; 4 uses
  %i.gw = phi ptr [ %i.ga, %bb.y ], [ %i.gq, %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i79 ] ; 4 uses
  %.not.i.i81 = icmp eq ptr %i.gw, %i.gv
  br i1 %.not.i.i81, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE9push_backEOS1_.exit80
  store <2 x float> %i.ex, ptr %i.gw, align 4
  %.sroa.0192.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gw, i64 8
  store float %i.ep, ptr %.sroa.0192.sroa.5.0..sroa_idx, align 4, !tbaa !37
  %.sroa.5193.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gw, i64 12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(26) %.sroa.5193.0..sroa_idx, i8 0, i64 26, i1 false)
  %i.gx = load ptr, ptr %i.dy, align 8, !tbaa !215
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 40 ; 2 uses
  store ptr %i.gy, ptr %i.dy, align 8, !tbaa !215
  %.pre327 = load ptr, ptr %i.bg, align 8, !tbaa !213
  br label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE9push_backEOS1_.exit94

bb.ad:                                            ; preds = %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE9push_backEOS1_.exit80
  %i.gz = load ptr, ptr %i.ba, align 8, !tbaa !214 ; 5 uses
  %i.ha = ptrtoint ptr %i.gv to i64
  %i.hb = ptrtoint ptr %i.gz to i64               ; 2 uses
  %i.hc = sub i64 %i.ha, %i.hb                    ; 3 uses
  %i.hd = icmp eq i64 %i.hc, 9223372036854775800
  br i1 %i.hd, label %bb.ae, label %_ZNKSt6vectorIN5video9S3DVertexESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i82

bb.ae:                                            ; preds = %bb.ad
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.26) #34
  unreachable

_ZNKSt6vectorIN5video9S3DVertexESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i82: ; preds = %bb.ad
  %i.he = sdiv exact i64 %i.hc, 40                ; 3 uses
  %.sroa.speculated.i.i.i.i83 = call i64 @llvm.umax.i64(i64 %i.he, i64 1)
  %i.hf = add nsw i64 %.sroa.speculated.i.i.i.i83, %i.he ; 2 uses
  %i.hg = icmp ult i64 %i.hf, %i.he
  %i.hh = call i64 @llvm.umin.i64(i64 %i.hf, i64 230584300921369395)
  %i.hi = select i1 %i.hg, i64 230584300921369395, i64 %i.hh ; 3 uses
  %.not.i.i.i.i84 = icmp ne i64 %i.hi, 0
  call void @llvm.assume(i1 %.not.i.i.i.i84)
  %i.hj = mul nuw nsw i64 %i.hi, 40
  %i.hk = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hj) #33 ; 5 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 %i.hc ; 3 uses
  store <2 x float> %i.ex, ptr %i.hl, align 4
  %.sroa.0192.sroa.5.0..sroa_idx295 = getelementptr inbounds nuw i8, ptr %i.hl, i64 8
  store float %i.ep, ptr %.sroa.0192.sroa.5.0..sroa_idx295, align 4, !tbaa !37
  %.sroa.5193.0..sroa_idx194 = getelementptr inbounds nuw i8, ptr %i.hl, i64 12
  %.not10.i.i.i.i.i.i85 = icmp eq ptr %i.gz, %i.gv
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(26) %.sroa.5193.0..sroa_idx194, i8 0, i64 26, i1 false)
  br i1 %.not10.i.i.i.i.i.i85, label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i90, label %.lr.ph.i.i.i.i.i.i86

.lr.ph.i.i.i.i.i.i86:                             ; preds = %_ZNKSt6vectorIN5video9S3DVertexESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i82, %.lr.ph.i.i.i.i.i.i86
  %.012.i.i.i.i.i.i87 = phi ptr [ %i.hn, %.lr.ph.i.i.i.i.i.i86 ], [ %i.hk, %_ZNKSt6vectorIN5video9S3DVertexESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i82 ] ; 2 uses
  %.0911.i.i.i.i.i.i88 = phi ptr [ %i.hm, %.lr.ph.i.i.i.i.i.i86 ], [ %i.gz, %_ZNKSt6vectorIN5video9S3DVertexESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i82 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %.012.i.i.i.i.i.i87, ptr noundef nonnull align 4 dereferenceable(40) %.0911.i.i.i.i.i.i88, i64 40, i1 false), !tbaa.struct !216, !alias.scope !376
  %i.hm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i88, i64 40 ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i87, i64 40 ; 2 uses
  %.not.i.i.i.i.i.i89 = icmp eq ptr %i.hm, %i.gv
  br i1 %.not.i.i.i.i.i.i89, label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i90, label %.lr.ph.i.i.i.i.i.i86, !llvm.loop !356

_ZNSt6vectorIN5video9S3DVertexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i90: ; preds = %.lr.ph.i.i.i.i.i.i86, %_ZNKSt6vectorIN5video9S3DVertexESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i82
  %.0.lcssa.i.i.i.i.i.i91 = phi ptr [ %i.hk, %_ZNKSt6vectorIN5video9S3DVertexESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i82 ], [ %i.hn, %.lr.ph.i.i.i.i.i.i86 ]
  %i.ho = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i91, i64 40 ; 2 uses
  %.not.i23.i.i.i92 = icmp eq ptr %i.gz, null
  br i1 %.not.i23.i.i.i92, label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i93, label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i90
  %i.hp = load ptr, ptr %i.bg, align 8, !tbaa !213
  %i.hq = ptrtoint ptr %i.hp to i64
  %i.hr = sub i64 %i.hq, %i.hb
  call void @_ZdlPvm(ptr noundef nonnull %i.gz, i64 noundef %i.hr) #30
  br label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i93

_ZNSt6vectorIN5video9S3DVertexESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i93: ; preds = %bb.af, %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i90
  store ptr %i.hk, ptr %i.ba, align 8, !tbaa !214
  store ptr %i.ho, ptr %i.dy, align 8, !tbaa !215
  %i.hs = getelementptr inbounds nuw [40 x i8], ptr %i.hk, i64 %i.hi ; 2 uses
  store ptr %i.hs, ptr %i.bg, align 8, !tbaa !213
  br label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE9push_backEOS1_.exit94

_ZNSt6vectorIN5video9S3DVertexESaIS1_EE9push_backEOS1_.exit94: ; preds = %bb.ac, %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i93
  %i.ht = phi ptr [ %.pre327, %bb.ac ], [ %i.hs, %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i93 ] ; 4 uses
  %i.hu = phi ptr [ %i.gy, %bb.ac ], [ %i.ho, %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i93 ] ; 4 uses
  %.not.i.i95 = icmp eq ptr %i.hu, %i.ht
  br i1 %.not.i.i95, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE9push_backEOS1_.exit94
  store <2 x float> %i.ey, ptr %i.hu, align 4
  %.sroa.0167.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hu, i64 8
  store float %15, ptr %.sroa.0167.sroa.5.0..sroa_idx, align 4, !tbaa !37
  %.sroa.5168.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hu, i64 12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(26) %.sroa.5168.0..sroa_idx, i8 0, i64 26, i1 false)
  %i.hv = load ptr, ptr %i.dy, align 8, !tbaa !215
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 40
  store ptr %i.hw, ptr %i.dy, align 8, !tbaa !215
  br label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE9push_backEOS1_.exit108

bb.ah:                                            ; preds = %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE9push_backEOS1_.exit94
  %i.hx = load ptr, ptr %i.ba, align 8, !tbaa !214 ; 5 uses
  %i.hy = ptrtoint ptr %i.ht to i64
  %i.hz = ptrtoint ptr %i.hx to i64               ; 2 uses
  %i.ia = sub i64 %i.hy, %i.hz                    ; 3 uses
  %i.ib = icmp eq i64 %i.ia, 9223372036854775800
  br i1 %i.ib, label %bb.ai, label %_ZNKSt6vectorIN5video9S3DVertexESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i96

bb.ai:                                            ; preds = %bb.ah
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.26) #34
  unreachable

_ZNKSt6vectorIN5video9S3DVertexESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i96: ; preds = %bb.ah
  %i.ic = sdiv exact i64 %i.ia, 40                ; 3 uses
  %.sroa.speculated.i.i.i.i97 = call i64 @llvm.umax.i64(i64 %i.ic, i64 1)
  %i.id = add nsw i64 %.sroa.speculated.i.i.i.i97, %i.ic ; 2 uses
  %i.ie = icmp ult i64 %i.id, %i.ic
  %i.if = call i64 @llvm.umin.i64(i64 %i.id, i64 230584300921369395)
  %i.ig = select i1 %i.ie, i64 230584300921369395, i64 %i.if ; 3 uses
  %.not.i.i.i.i98 = icmp ne i64 %i.ig, 0
  call void @llvm.assume(i1 %.not.i.i.i.i98)
  %i.ih = mul nuw nsw i64 %i.ig, 40
  %i.ii = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ih) #33 ; 5 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 %i.ia ; 3 uses
  store <2 x float> %i.ey, ptr %i.ij, align 4
  %.sroa.0167.sroa.5.0..sroa_idx287 = getelementptr inbounds nuw i8, ptr %i.ij, i64 8
  store float %15, ptr %.sroa.0167.sroa.5.0..sroa_idx287, align 4, !tbaa !37
  %.sroa.5168.0..sroa_idx169 = getelementptr inbounds nuw i8, ptr %i.ij, i64 12
  %.not10.i.i.i.i.i.i99 = icmp eq ptr %i.hx, %i.ht
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(26) %.sroa.5168.0..sroa_idx169, i8 0, i64 26, i1 false)
  br i1 %.not10.i.i.i.i.i.i99, label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i104, label %.lr.ph.i.i.i.i.i.i100

.lr.ph.i.i.i.i.i.i100:                            ; preds = %_ZNKSt6vectorIN5video9S3DVertexESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i96, %.lr.ph.i.i.i.i.i.i100
  %.012.i.i.i.i.i.i101 = phi ptr [ %i.il, %.lr.ph.i.i.i.i.i.i100 ], [ %i.ii, %_ZNKSt6vectorIN5video9S3DVertexESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i96 ] ; 2 uses
  %.0911.i.i.i.i.i.i102 = phi ptr [ %i.ik, %.lr.ph.i.i.i.i.i.i100 ], [ %i.hx, %_ZNKSt6vectorIN5video9S3DVertexESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i96 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %.012.i.i.i.i.i.i101, ptr noundef nonnull align 4 dereferenceable(40) %.0911.i.i.i.i.i.i102, i64 40, i1 false), !tbaa.struct !216, !alias.scope !377
  %i.ik = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i102, i64 40 ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i101, i64 40 ; 2 uses
  %.not.i.i.i.i.i.i103 = icmp eq ptr %i.ik, %i.ht
  br i1 %.not.i.i.i.i.i.i103, label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i104, label %.lr.ph.i.i.i.i.i.i100, !llvm.loop !356

_ZNSt6vectorIN5video9S3DVertexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i104: ; preds = %.lr.ph.i.i.i.i.i.i100, %_ZNKSt6vectorIN5video9S3DVertexESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i96
  %.0.lcssa.i.i.i.i.i.i105 = phi ptr [ %i.ii, %_ZNKSt6vectorIN5video9S3DVertexESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i96 ], [ %i.il, %.lr.ph.i.i.i.i.i.i100 ]
  %i.im = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i105, i64 40
  %.not.i23.i.i.i106 = icmp eq ptr %i.hx, null
  br i1 %.not.i23.i.i.i106, label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i107, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i104
  %i.in = load ptr, ptr %i.bg, align 8, !tbaa !213
  %i.io = ptrtoint ptr %i.in to i64
  %i.ip = sub i64 %i.io, %i.hz
  call void @_ZdlPvm(ptr noundef nonnull %i.hx, i64 noundef %i.ip) #30
  br label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i107

_ZNSt6vectorIN5video9S3DVertexESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i107: ; preds = %bb.aj, %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i104
  store ptr %i.ii, ptr %i.ba, align 8, !tbaa !214
  store ptr %i.im, ptr %i.dy, align 8, !tbaa !215
  %i.iq = getelementptr inbounds nuw [40 x i8], ptr %i.ii, i64 %i.ig
  store ptr %i.iq, ptr %i.bg, align 8, !tbaa !213
  br label %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE9push_backEOS1_.exit108

_ZNSt6vectorIN5video9S3DVertexESaIS1_EE9push_backEOS1_.exit108: ; preds = %bb.ag, %_ZNSt6vectorIN5video9S3DVertexESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i107
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  %i.ir = add i16 %.045317, 1                     ; 2 uses
  %i.is = zext i16 %i.ir to i32
  %i.it = load i32, ptr %i.n, align 4, !tbaa !156 ; 2 uses
  %i.iu = icmp ugt i32 %i.it, %i.is
  br i1 %i.iu, label %bb.t, label %.preheader, !llvm.loop !369

._crit_edge:                                      ; preds = %_ZNSt6vectorItSaItEE9push_backEOt.exit151, %bb.s, %.preheader
  %i.iv = load ptr, ptr %i.d, align 8, !tbaa !157 ; 4 uses
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !32
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 24
  %i.iy = load ptr, ptr %i.ix, align 8
  %i.iz = call noundef ptr %i.iy(ptr noundef nonnull align 8 dereferenceable(8) %i.iv), !inline_history !370
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 8
  store i32 1, ptr %i.ja, align 8, !tbaa !224
  %i.jb = load ptr, ptr %i.iv, align 8, !tbaa !32
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 40
  %i.jd = load ptr, ptr %i.jc, align 8
  %i.je = call noundef ptr %i.jd(ptr noundef nonnull align 8 dereferenceable(8) %i.iv), !inline_history !370
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 8
  store i32 1, ptr %i.jf, align 8, !tbaa !224
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  ret void

bb.ak:                                            ; preds = %.lr.ph319, %_ZNSt6vectorItSaItEE9push_backEOt.exit151
  %i.jg = phi ptr [ %.pre329, %.lr.ph319 ], [ %i.om, %_ZNSt6vectorItSaItEE9push_backEOt.exit151 ] ; 3 uses
  %i.jh = phi ptr [ %.pre328, %.lr.ph319 ], [ %i.on, %_ZNSt6vectorItSaItEE9push_backEOt.exit151 ] ; 3 uses
  %.0318 = phi i16 [ 0, %.lr.ph319 ], [ %i.oo, %_ZNSt6vectorItSaItEE9push_backEOt.exit151 ] ; 2 uses
  %i.ji = shl i16 %.0318, 2                       ; 7 uses
  %.not.i.i109 = icmp eq ptr %i.jh, %i.jg
  br i1 %.not.i.i109, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  store i16 %i.ji, ptr %i.jh, align 2, !tbaa !176
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jh, i64 2 ; 2 uses
  store ptr %i.jj, ptr %i.ee, align 8, !tbaa !220
  br label %_ZNSt6vectorItSaItEE9push_backEOt.exit

bb.am:                                            ; preds = %bb.ak
  %i.jk = load ptr, ptr %i.bd, align 8, !tbaa !219 ; 4 uses
  %i.jl = ptrtoint ptr %i.jg to i64
  %i.jm = ptrtoint ptr %i.jk to i64               ; 2 uses
  %i.jn = sub i64 %i.jl, %i.jm                    ; 5 uses
  %i.jo = icmp eq i64 %i.jn, 9223372036854775806
  br i1 %i.jo, label %bb.an, label %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i

bb.an:                                            ; preds = %bb.am
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.26) #34
  unreachable

_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.am
  %i.jp = ashr exact i64 %i.jn, 1                 ; 3 uses
  %.sroa.speculated.i.i.i.i110 = call i64 @llvm.umax.i64(i64 %i.jp, i64 1)
  %i.jq = add i64 %.sroa.speculated.i.i.i.i110, %i.jp ; 2 uses
  %i.jr = icmp ult i64 %i.jq, %i.jp
  %i.js = call i64 @llvm.umin.i64(i64 %i.jq, i64 4611686018427387903)
  %i.jt = select i1 %i.jr, i64 4611686018427387903, i64 %i.js ; 3 uses
  %.not.i.i.i.i111 = icmp ne i64 %i.jt, 0
  call void @llvm.assume(i1 %.not.i.i.i.i111)
  %i.ju = shl nuw nsw i64 %i.jt, 1
  %i.jv = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ju) #33 ; 4 uses
  %i.jw = getelementptr inbounds i8, ptr %i.jv, i64 %i.jn ; 2 uses
  store i16 %i.ji, ptr %i.jw, align 2, !tbaa !176
  %i.jx = icmp sgt i64 %i.jn, 0
  br i1 %i.jx, label %bb.ao, label %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i

bb.ao:                                            ; preds = %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.jv, ptr align 2 %i.jk, i64 %i.jn, i1 false)
  br label %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.ao, %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jw, i64 2 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.jk, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i, label %bb.ap

bb.ap:                                            ; preds = %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i
  %i.jz = load ptr, ptr %i.ch, align 8, !tbaa !218
  %i.ka = ptrtoint ptr %i.jz to i64
  %i.kb = sub i64 %i.ka, %i.jm
  call void @_ZdlPvm(ptr noundef nonnull %i.jk, i64 noundef %i.kb) #30
  br label %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i

_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i: ; preds = %bb.ap, %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i
  store ptr %i.jv, ptr %i.bd, align 8, !tbaa !219
  store ptr %i.jy, ptr %i.ee, align 8, !tbaa !220
  %i.kc = getelementptr inbounds nuw [2 x i8], ptr %i.jv, i64 %i.jt ; 2 uses
  store ptr %i.kc, ptr %i.ch, align 8, !tbaa !218
  br label %_ZNSt6vectorItSaItEE9push_backEOt.exit

_ZNSt6vectorItSaItEE9push_backEOt.exit:           ; preds = %bb.al, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i
  %i.kd = phi ptr [ %i.jg, %bb.al ], [ %i.kc, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i ] ; 3 uses
  %i.ke = phi ptr [ %i.jj, %bb.al ], [ %i.jy, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i ] ; 3 uses
  %i.kf = or disjoint i16 %i.ji, 1                ; 2 uses
  %.not.i.i112 = icmp eq ptr %i.ke, %i.kd
  br i1 %.not.i.i112, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %_ZNSt6vectorItSaItEE9push_backEOt.exit
  store i16 %i.kf, ptr %i.ke, align 2, !tbaa !176
  %i.kg = getelementptr inbounds nuw i8, ptr %i.ke, i64 2 ; 2 uses
  store ptr %i.kg, ptr %i.ee, align 8, !tbaa !220
  br label %_ZNSt6vectorItSaItEE9push_backEOt.exit119

bb.ar:                                            ; preds = %_ZNSt6vectorItSaItEE9push_backEOt.exit
  %i.kh = load ptr, ptr %i.bd, align 8, !tbaa !219 ; 4 uses
  %i.ki = ptrtoint ptr %i.kd to i64
  %i.kj = ptrtoint ptr %i.kh to i64               ; 2 uses
  %i.kk = sub i64 %i.ki, %i.kj                    ; 5 uses
  %i.kl = icmp eq i64 %i.kk, 9223372036854775806
  br i1 %i.kl, label %bb.as, label %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i113

bb.as:                                            ; preds = %bb.ar
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.26) #34
  unreachable

_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i113: ; preds = %bb.ar
  %i.km = ashr exact i64 %i.kk, 1                 ; 3 uses
  %.sroa.speculated.i.i.i.i114 = call i64 @llvm.umax.i64(i64 %i.km, i64 1)
  %i.kn = add i64 %.sroa.speculated.i.i.i.i114, %i.km ; 2 uses
  %i.ko = icmp ult i64 %i.kn, %i.km
  %i.kp = call i64 @llvm.umin.i64(i64 %i.kn, i64 4611686018427387903)
  %i.kq = select i1 %i.ko, i64 4611686018427387903, i64 %i.kp ; 3 uses
  %.not.i.i.i.i115 = icmp ne i64 %i.kq, 0
  call void @llvm.assume(i1 %.not.i.i.i.i115)
  %i.kr = shl nuw nsw i64 %i.kq, 1
  %i.ks = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kr) #33 ; 4 uses
  %i.kt = getelementptr inbounds i8, ptr %i.ks, i64 %i.kk ; 2 uses
  store i16 %i.kf, ptr %i.kt, align 2, !tbaa !176
  %i.ku = icmp sgt i64 %i.kk, 0
  br i1 %i.ku, label %bb.at, label %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i116

bb.at:                                            ; preds = %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i113
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.ks, ptr align 2 %i.kh, i64 %i.kk, i1 false)
  br label %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i116

_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i116: ; preds = %bb.at, %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i113
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kt, i64 2 ; 2 uses
  %.not.i17.i.i.i117 = icmp eq ptr %i.kh, null
  br i1 %.not.i17.i.i.i117, label %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i118, label %bb.au

bb.au:                                            ; preds = %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i116
  %i.kw = load ptr, ptr %i.ch, align 8, !tbaa !218
  %i.kx = ptrtoint ptr %i.kw to i64
  %i.ky = sub i64 %i.kx, %i.kj
  call void @_ZdlPvm(ptr noundef nonnull %i.kh, i64 noundef %i.ky) #30
  br label %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i118

_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i118: ; preds = %bb.au, %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i116
  store ptr %i.ks, ptr %i.bd, align 8, !tbaa !219
  store ptr %i.kv, ptr %i.ee, align 8, !tbaa !220
  %i.kz = getelementptr inbounds nuw [2 x i8], ptr %i.ks, i64 %i.kq ; 2 uses
  store ptr %i.kz, ptr %i.ch, align 8, !tbaa !218
  br label %_ZNSt6vectorItSaItEE9push_backEOt.exit119

_ZNSt6vectorItSaItEE9push_backEOt.exit119:        ; preds = %bb.aq, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i118
  %i.la = phi ptr [ %i.kd, %bb.aq ], [ %i.kz, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i118 ] ; 3 uses
  %i.lb = phi ptr [ %i.kg, %bb.aq ], [ %i.kv, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i118 ] ; 3 uses
  %i.lc = or disjoint i16 %i.ji, 2                ; 4 uses
  %.not.i.i120 = icmp eq ptr %i.lb, %i.la
  br i1 %.not.i.i120, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %_ZNSt6vectorItSaItEE9push_backEOt.exit119
  store i16 %i.lc, ptr %i.lb, align 2, !tbaa !176
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lb, i64 2 ; 2 uses
  store ptr %i.ld, ptr %i.ee, align 8, !tbaa !220
end_hunk_0
begin_hunk_1_@_ZNK5scene10ISceneNode30getTransformedBoundingBoxEdgesERN4core5arrayINS1_8vector3dIfEEEE:bb.a
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hr, i64 76
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hr, i64 80 ; 2 uses
  %i.hv = load float, ptr %i.ht, align 4, !tbaa !179 ; 2 uses
  %i.hw = load float, ptr %i.hs, align 4, !tbaa !178 ; 2 uses
  %i.hx = load float, ptr %i.hu, align 4, !tbaa !177 ; 2 uses
  %i.hy = load <2 x float>, ptr %i.bb, align 8, !tbaa !37
  %i.hz = load <2 x float>, ptr %i.bc, align 8, !tbaa !37
  %i.ia = insertelement <2 x float> poison, float %i.hv, i64 0
  %i.ib = shufflevector <2 x float> %i.ia, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ic = fmul nsz <2 x float> %i.ib, %i.hz
  %i.id = insertelement <2 x float> poison, float %i.hw, i64 0
  %i.ie = shufflevector <2 x float> %i.id, <2 x float> poison, <2 x i32> zeroinitializer
  %i.if = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ie, <2 x float> %i.hy, <2 x float> %i.ic)
  %i.ig = load <2 x float>, ptr %i.bd, align 8, !tbaa !37
  %i.ih = insertelement <2 x float> poison, float %i.hx, i64 0
  %i.ii = shufflevector <2 x float> %i.ih, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ij = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ii, <2 x float> %i.ig, <2 x float> %i.if)
  %i.ik = load <2 x float>, ptr %i.be, align 8, !tbaa !37
  %i.il = fadd nsz <2 x float> %i.ij, %i.ik
  %i.im = load float, ptr %i.bf, align 8, !tbaa !37
  %i.in = load float, ptr %i.bg, align 8, !tbaa !37
  %i.io = fmul nsz float %i.hv, %i.in
  %i.ip = tail call nsz float @llvm.fmuladd.f32(float %i.hw, float %i.im, float %i.io)
  %i.iq = load float, ptr %i.bh, align 8, !tbaa !37
  %i.ir = tail call nsz float @llvm.fmuladd.f32(float %i.hx, float %i.iq, float %i.ip)
  %i.is = load float, ptr %i.bi, align 8, !tbaa !37
  %i.it = fadd nsz float %i.is, %i.ir
  store <2 x float> %i.il, ptr %i.hs, align 4
  store float %i.it, ptr %i.hu, align 4, !tbaa !37
  %i.iu = load ptr, ptr %1, align 8, !tbaa !230   ; 3 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 84 ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iu, i64 88
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iu, i64 92 ; 2 uses
  %i.iy = load float, ptr %i.iw, align 4, !tbaa !179 ; 2 uses
  %i.iz = load float, ptr %i.iv, align 4, !tbaa !178 ; 2 uses
  %i.ja = load float, ptr %i.ix, align 4, !tbaa !177 ; 2 uses
  %i.jb = load <2 x float>, ptr %i.bb, align 8, !tbaa !37
  %i.jc = load <2 x float>, ptr %i.bc, align 8, !tbaa !37
  %i.jd = insertelement <2 x float> poison, float %i.iy, i64 0
  %i.je = shufflevector <2 x float> %i.jd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jf = fmul nsz <2 x float> %i.je, %i.jc
  %i.jg = insertelement <2 x float> poison, float %i.iz, i64 0
  %i.jh = shufflevector <2 x float> %i.jg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ji = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jh, <2 x float> %i.jb, <2 x float> %i.jf)
  %i.jj = load <2 x float>, ptr %i.bd, align 8, !tbaa !37
  %i.jk = insertelement <2 x float> poison, float %i.ja, i64 0
  %i.jl = shufflevector <2 x float> %i.jk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jm = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jl, <2 x float> %i.jj, <2 x float> %i.ji)
  %i.jn = load <2 x float>, ptr %i.be, align 8, !tbaa !37
  %i.jo = fadd nsz <2 x float> %i.jm, %i.jn
  %i.jp = load float, ptr %i.bf, align 8, !tbaa !37
  %i.jq = load float, ptr %i.bg, align 8, !tbaa !37
  %i.jr = fmul nsz float %i.iy, %i.jq
  %i.js = tail call nsz float @llvm.fmuladd.f32(float %i.iz, float %i.jp, float %i.jr)
  %i.jt = load float, ptr %i.bh, align 8, !tbaa !37
  %i.ju = tail call nsz float @llvm.fmuladd.f32(float %i.ja, float %i.jt, float %i.js)
  %i.jv = load float, ptr %i.bi, align 8, !tbaa !37
  %i.jw = fadd nsz float %i.jv, %i.ju
  store <2 x float> %i.jo, ptr %i.iv, align 4
  store float %i.jw, ptr %i.ix, align 4, !tbaa !37
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(64) ptr @_ZNK5scene10ISceneNode25getAbsoluteTransformationEv(ptr noundef nonnull align 8 dereferenceable(218) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK5scene10ISceneNode25getRelativeTransformationEv(ptr dead_on_unwind noalias writable sret(%"class.core::CMatrix4") align 4 %0, ptr noundef nonnull align 8 dereferenceable(218) %1) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %i.a, i8 0, i64 36, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  store float 1.000000e+00, ptr %i.b, align 4, !tbaa !37
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.g = load float, ptr %i.f, align 4, !tbaa !177
  %i.h = fmul nsz float %i.g, f0x3C8EFA35
  %i.i = fpext nsz float %i.h to double
  %sincos39.i.i = tail call nsz { double, double } @llvm.sincos.f64(double %i.i) ; 2 uses
  %sin40.i.i = extractvalue { double, double } %sincos39.i.i, 0 ; 2 uses
  %cos41.i.i = extractvalue { double, double } %sincos39.i.i, 1 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = fneg nsz double %sin40.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.o = fneg nsz double %cos41.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.r = load float, ptr %i.d, align 4, !tbaa !178
  %i.s = load float, ptr %i.e, align 8, !tbaa !179
  %i.t = fmul nsz float %i.r, f0x3C8EFA35
  %i.u = fmul nsz float %i.s, f0x3C8EFA35
  %i.v = fpext nsz float %i.t to double
  %i.w = fpext nsz float %i.u to double
  %sincos.i.i = tail call nsz { double, double } @llvm.sincos.f64(double %i.v) ; 2 uses
  %sincos36.i.i = tail call nsz { double, double } @llvm.sincos.f64(double %i.w) ; 2 uses
  %sin.i.i = extractvalue { double, double } %sincos.i.i, 0 ; 3 uses
  %cos.i.i = extractvalue { double, double } %sincos.i.i, 1 ; 3 uses
  %sin37.i.i = extractvalue { double, double } %sincos36.i.i, 0 ; 3 uses
  %cos38.i.i = extractvalue { double, double } %sincos36.i.i, 1 ; 3 uses
  %i.x = insertelement <2 x double> poison, double %cos38.i.i, i64 0
  %i.y = shufflevector <2 x double> %i.x, <2 x double> poison, <2 x i32> zeroinitializer
  %i.z = insertelement <2 x double> poison, double %cos41.i.i, i64 0
  %i.aa = insertelement <2 x double> %i.z, double %sin40.i.i, i64 1 ; 4 uses
  %i.ab = fmul nsz <2 x double> %i.y, %i.aa
  %i.ac = fptrunc <2 x double> %i.ab to <2 x float> ; 4 uses
  store <2 x float> %i.ac, ptr %0, align 4, !tbaa !37
  %i.ad = fptrunc nsz double %sin37.i.i to float
  %i.ae = fneg nsz float %i.ad                    ; 4 uses
  store float %i.ae, ptr %i.j, align 4, !tbaa !37
  %i.af = fmul nsz double %sin.i.i, %sin37.i.i
  %i.ag = fmul nsz double %cos.i.i, %sin37.i.i
  %i.ah = insertelement <2 x double> poison, double %cos.i.i, i64 0
  %i.ai = shufflevector <2 x double> %i.ah, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aj = shufflevector <2 x double> %i.aa, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ak = insertelement <2 x double> %i.aj, double %i.k, i64 0
  %i.al = fmul nsz <2 x double> %i.ai, %i.ak
  %i.am = insertelement <2 x double> poison, double %i.af, i64 0
  %i.an = shufflevector <2 x double> %i.am, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ao = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.an, <2 x double> %i.aa, <2 x double> %i.al)
  %i.ap = fptrunc <2 x double> %i.ao to <2 x float> ; 3 uses
  store <2 x float> %i.ap, ptr %i.l, align 4, !tbaa !37
  %i.aq = fmul nsz double %sin.i.i, %cos38.i.i
  %i.ar = fptrunc nsz double %i.aq to float       ; 3 uses
  store float %i.ar, ptr %i.m, align 4, !tbaa !37
  %i.as = insertelement <2 x double> poison, double %sin.i.i, i64 0
  %i.at = shufflevector <2 x double> %i.as, <2 x double> poison, <2 x i32> zeroinitializer
  %i.au = insertelement <2 x double> %i.aj, double %i.o, i64 1
  %i.av = fmul nsz <2 x double> %i.at, %i.au
  %i.aw = insertelement <2 x double> poison, double %i.ag, i64 0
  %i.ax = shufflevector <2 x double> %i.aw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ay = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ax, <2 x double> %i.aa, <2 x double> %i.av)
  %i.az = fptrunc <2 x double> %i.ay to <2 x float> ; 5 uses
  store <2 x float> %i.az, ptr %i.n, align 4, !tbaa !37
  %i.ba = fmul nsz double %cos.i.i, %cos38.i.i
  %i.bb = fptrunc nsz double %i.ba to float       ; 5 uses
  store float %i.bb, ptr %i.c, align 4, !tbaa !37
  %i.bc = load <2 x float>, ptr %i.p, align 8, !tbaa !37 ; 5 uses
  store <2 x float> %i.bc, ptr %i.q, align 4, !tbaa !37
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.be = load float, ptr %i.bd, align 8, !tbaa !177 ; 5 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store float %i.be, ptr %i.bf, align 4, !tbaa !37
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.bh = load float, ptr %i.bg, align 8, !tbaa !178 ; 4 uses
  %i.bi = fcmp nsz oeq float %i.bh, 1.000000e+00
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 140
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !179 ; 2 uses
  %i.bl = fcmp nsz oeq float %i.bk, 1.000000e+00
  %or.cond = select i1 %i.bi, i1 %i.bl, i1 false
  br i1 %or.cond, label %_ZNK4core8vector3dIfEneERKS1_.exit, label %_ZNK4core8vector3dIfEneERKS1_.exit.thread

_ZNK4core8vector3dIfEneERKS1_.exit:               ; preds = %bb.a
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.bn = load float, ptr %i.bm, align 8, !tbaa !177
  %i.bo = fcmp nsz une float %i.bn, 1.000000e+00
  br i1 %i.bo, label %_ZNK4core8vector3dIfEneERKS1_.exit.thread, label %bb.b

_ZNK4core8vector3dIfEneERKS1_.exit.thread:        ; preds = %bb.a, %_ZNK4core8vector3dIfEneERKS1_.exit
  %i.bp = phi float [ 1.000000e+00, %_ZNK4core8vector3dIfEneERKS1_.exit ], [ %i.bk, %bb.a ] ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.br = load float, ptr %i.bq, align 8, !tbaa !177 ; 3 uses
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.sroa.3172.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  %.sroa.4788.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.bs = fmul nsz <2 x float> %i.ap, zeroinitializer ; 2 uses
  %i.bt = insertelement <2 x float> poison, float %i.bh, i64 0
  %i.bu = shufflevector <2 x float> %i.bt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bv = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ac, <2 x float> %i.bu, <2 x float> %i.bs)
  %i.bw = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.az, <2 x float> zeroinitializer, <2 x float> %i.bv)
  %i.bx = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bc, <2 x float> zeroinitializer, <2 x float> %i.bw)
  store <2 x float> %i.bx, ptr %0, align 4, !tbaa !37
  %i.by = fmul nsz float %i.ar, 0.000000e+00      ; 2 uses
  %i.bz = tail call nsz float @llvm.fmuladd.f32(float %i.ae, float %i.bh, float %i.by)
  %i.ca = tail call nsz float @llvm.fmuladd.f32(float %i.bb, float 0.000000e+00, float %i.bz)
  %i.cb = tail call nsz float @llvm.fmuladd.f32(float %i.be, float 0.000000e+00, float %i.ca)
  store float %i.cb, ptr %i.j, align 4, !tbaa !37
  %i.cc = fmul nsz float %i.bh, 0.000000e+00
  store float %i.cc, ptr %.sroa.15.0..sroa_idx, align 4, !tbaa !37
  %i.cd = insertelement <2 x float> poison, float %i.bp, i64 0
  %i.ce = shufflevector <2 x float> %i.cd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cf = fmul nsz <2 x float> %i.ce, %i.ap
  %i.cg = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ac, <2 x float> zeroinitializer, <2 x float> %i.cf)
  %i.ch = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.az, <2 x float> zeroinitializer, <2 x float> %i.cg)
  %i.ci = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bc, <2 x float> zeroinitializer, <2 x float> %i.ch)
  store <2 x float> %i.ci, ptr %i.l, align 4, !tbaa !37
  %i.cj = fmul nsz float %i.bp, %i.ar
  %i.ck = tail call nsz float @llvm.fmuladd.f32(float %i.ae, float 0.000000e+00, float %i.cj)
  %i.cl = tail call nsz float @llvm.fmuladd.f32(float %i.bb, float 0.000000e+00, float %i.ck)
  %i.cm = tail call nsz float @llvm.fmuladd.f32(float %i.be, float 0.000000e+00, float %i.cl)
  store float %i.cm, ptr %i.m, align 4, !tbaa !37
  %i.cn = fmul nsz float %i.bp, 0.000000e+00
  store float %i.cn, ptr %.sroa.3172.0..sroa_idx, align 4, !tbaa !37
  %2 = tail call nsz float @llvm.fmuladd.f32(float %i.ae, float 0.000000e+00, float %i.by) ; 2 uses
  %i.co = tail call nsz float @llvm.fmuladd.f32(float %i.bb, float %i.br, float %2)
  %i.cp = tail call nsz float @llvm.fmuladd.f32(float %i.be, float 0.000000e+00, float %i.co)
  store float %i.cp, ptr %i.c, align 4, !tbaa !37
  %i.cq = fmul nsz float %i.br, 0.000000e+00
  store float %i.cq, ptr %.sroa.4788.0..sroa_idx, align 4, !tbaa !37
  %i.cr = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ac, <2 x float> zeroinitializer, <2 x float> %i.bs) ; 2 uses
  %i.cs = insertelement <2 x float> poison, float %i.br, i64 0
  %i.ct = shufflevector <2 x float> %i.cs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cu = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.az, <2 x float> %i.ct, <2 x float> %i.cr)
  %i.cv = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bc, <2 x float> zeroinitializer, <2 x float> %i.cu)
  store <2 x float> %i.cv, ptr %i.n, align 4, !tbaa !37
  %i.cw = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.az, <2 x float> zeroinitializer, <2 x float> %i.cr)
  %i.cx = fadd nsz <2 x float> %i.bc, %i.cw
  store <2 x float> %i.cx, ptr %i.q, align 4, !tbaa !37
  %3 = tail call nsz float @llvm.fmuladd.f32(float %i.bb, float 0.000000e+00, float %2)
  %i.cy = fadd nsz float %3, %i.be
  store float %i.cy, ptr %i.bf, align 4, !tbaa !37
  store float 1.000000e+00, ptr %i.b, align 4, !tbaa !37
  br label %bb.b

bb.b:                                             ; preds = %_ZNK4core8vector3dIfEneERKS1_.exit.thread, %_ZNK4core8vector3dIfEneERKS1_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK5scene10ISceneNode9isVisibleEv(ptr noundef nonnull align 8 dereferenceable(218) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.b = load i8, ptr %i.a, align 8, !tbaa !68, !range !119, !noundef !120
  %i.c = trunc nuw i8 %i.b to i1
  ret i1 %i.c
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK5scene10ISceneNode14isTrulyVisibleEv(ptr noundef nonnull align 8 dereferenceable(218) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.b = load i8, ptr %i.a, align 8, !tbaa !68, !range !119, !noundef !120
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !63   ; 3 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !32
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef zeroext i1 %i.h(ptr noundef nonnull align 8 dereferenceable(218) %i.e)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i1 [ %i.i, %bb.c ], [ false, %bb.a ], [ true, %bb.b ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5scene10ISceneNode10setVisibleEb(ptr noundef nonnull align 8 dereferenceable(218) %0, i1 noundef zeroext %1) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = zext i1 %1 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i8 %i.a, ptr %i.b, align 8, !tbaa !68
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK5scene10ISceneNode5getIDEv(ptr noundef nonnull align 8 dereferenceable(218) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.b = load i32, ptr %i.a, align 8, !tbaa !65
  ret i32 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5scene10ISceneNode5setIDEi(ptr noundef nonnull align 8 dereferenceable(218) %0, i32 noundef %1) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i32 %1, ptr %i.a, align 8, !tbaa !65
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5scene10ISceneNode8addChildEPS0_(ptr noundef nonnull align 8 dereferenceable(218) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ne ptr %1, null
  %i.b = icmp ne ptr %1, %0
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !64   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !64
  %.not = icmp eq ptr %i.d, %i.f
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5scene10ISceneNode15setSceneManagerEPNS_13ISceneManagerE(ptr noundef nonnull align 8 dereferenceable(218) %1, ptr noundef %i.d)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = load ptr, ptr %1, align 8, !tbaa !32     ; 2 uses
  %i.h = getelementptr i8, ptr %i.g, i64 -24
  %i.i = load i64, ptr %i.h, align 8
  %i.j = getelementptr inbounds i8, ptr %1, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !159
  %i.m = add nsw i32 %i.l, 1
  store i32 %i.m, ptr %i.k, align 8, !tbaa !159
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 160
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(218) %1)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.q = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #33 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store ptr %1, ptr %i.r, align 8, !tbaa !166
  tail call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull %i.p) #31
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !231
  %i.u = add i64 %i.t, 1
  store i64 %i.u, ptr %i.s, align 8, !tbaa !231
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 2 uses
  %i.x = load i8, ptr %i.w, align 8, !tbaa !46, !range !119, !noundef !120
  %i.y = trunc nuw i8 %i.x to i1
  %i.z = ptrtoint ptr %i.q to i64
  br i1 %i.y, label %_ZNSt8optionalISt14_List_iteratorIPN5scene10ISceneNodeEEEaSIS4_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS5_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES8_ISt6__and_IJSt9is_scalarIS4_ES9_IS4_NSt5decayISC_E4typeEEEEESt16is_constructibleIS4_JSC_EESt13is_assignableIRS4_SC_EEERS5_E4typeEOSC_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i8 1, ptr %i.w, align 8, !tbaa !46
  br label %_ZNSt8optionalISt14_List_iteratorIPN5scene10ISceneNodeEEEaSIS4_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS5_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES8_ISt6__and_IJSt9is_scalarIS4_ES9_IS4_NSt5decayISC_E4typeEEEEESt16is_constructibleIS4_JSC_EESt13is_assignableIRS4_SC_EEERS5_E4typeEOSC_.exit

_ZNSt8optionalISt14_List_iteratorIPN5scene10ISceneNodeEEEaSIS4_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS5_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES8_ISt6__and_IJSt9is_scalarIS4_ES9_IS4_NSt5decayISC_E4typeEEEEESt16is_constructibleIS4_JSC_EESt13is_assignableIRS4_SC_EEERS5_E4typeEOSC_.exit: ; preds = %bb.d, %bb.e
  store i64 %i.z, ptr %i.v, align 8, !tbaa !232
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 192
  store ptr %0, ptr %i.aa, align 8, !tbaa !63
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt8optionalISt14_List_iteratorIPN5scene10ISceneNodeEEEaSIS4_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS5_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES8_ISt6__and_IJSt9is_scalarIS4_ES9_IS4_NSt5decayISC_E4typeEEEEESt16is_constructibleIS4_JSC_EESt13is_assignableIRS4_SC_EEERS5_E4typeEOSC_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN5scene10ISceneNode11removeChildEPS0_(ptr noundef nonnull align 8 dereferenceable(218) %0, ptr noundef %1) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !63
  %.not = icmp eq ptr %i.b, %0                    ; 2 uses
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.d = load i64, ptr %i.c, align 8, !tbaa !232
  %i.e = inttoptr i64 %i.d to ptr                 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 184
  store i8 0, ptr %i.f, align 8, !tbaa !46
  store ptr null, ptr %i.a, align 8, !tbaa !63
  %i.g = load ptr, ptr %1, align 8, !tbaa !32
  %i.h = getelementptr i8, ptr %i.g, i64 -24
  %i.i = load i64, ptr %i.h, align 8
  %i.j = getelementptr inbounds i8, ptr %1, i64 %i.i ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !159
  %i.m = add nsw i32 %i.l, -1                     ; 2 uses
  store i32 %i.m, ptr %i.k, align 8, !tbaa !159
  %.not.i = icmp eq i32 %i.m, 0
  br i1 %.not.i, label %bb.c, label %_ZNK17IReferenceCounted4dropEv.exit

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.j, align 8, !tbaa !32
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(12) %i.j) #31, !inline_history !6
  br label %_ZNK17IReferenceCounted4dropEv.exit

_ZNK17IReferenceCounted4dropEv.exit:              ; preds = %bb.b, %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !231
  %i.s = add i64 %i.r, -1
  store i64 %i.s, ptr %i.q, align 8, !tbaa !231
  tail call void @_ZNSt8__detail15_List_node_base9_M_unhookEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #31
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef 24) #30
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_ZNK17IReferenceCounted4dropEv.exit
  ret i1 %.not
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5scene10ISceneNode9removeAllEv(ptr noundef nonnull align 8 dereferenceable(218) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 9 uses
  %.sroa.06.09 = load ptr, ptr %i.a, align 8, !tbaa !41 ; 3 uses
  %.not10 = icmp eq ptr %.sroa.06.09, %i.a
  br i1 %.not10, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %_ZNK17IReferenceCounted4dropEv.exit
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !41
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.b = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %.sroa.06.09, %bb.a ] ; 2 uses
  %.not8.i.i = icmp eq ptr %i.b, %i.a
  br i1 %.not8.i.i, label %_ZNSt7__cxx114listIPN5scene10ISceneNodeESaIS3_EE5clearEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge, %.lr.ph.i.i
  %.09.i.i = phi ptr [ %i.c, %.lr.ph.i.i ], [ %i.b, %._crit_edge ] ; 2 uses
  %i.c = load ptr, ptr %.09.i.i, align 8, !tbaa !41 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.09.i.i, i64 noundef 24) #30
  %.not.i.i = icmp eq ptr %i.c, %i.a
  br i1 %.not.i.i, label %_ZNSt7__cxx114listIPN5scene10ISceneNodeESaIS3_EE5clearEv.exit, label %.lr.ph.i.i, !llvm.loop !1

end_hunk_1
