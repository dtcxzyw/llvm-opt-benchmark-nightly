inline.NumInlined: 1012
inline.NumDeleted: 417
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN2cv11xfeatures2d15BriskScaleSpace12getKeypointsEiRSt6vectorINS_8KeyPointESaIS3_EE:bb.a
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !184
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = sub i64 %i.s, %i.o                       ; 2 uses
  %i.u = sdiv exact i64 %i.t, 28
  %i.v = icmp ult i64 %i.u, 2000
  br i1 %i.v, label %_ZNSt12_Vector_baseIN2cv8KeyPointESaIS1_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE7reserveEm.exit

_ZNSt12_Vector_baseIN2cv8KeyPointESaIS1_EE11_M_allocateEm.exit.i: ; preds = %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE6resizeEm.exit
  %i.w = ptrtoint ptr %i.p to i64
  %i.x = sub i64 %i.w, %i.o
  %i.y = tail call noalias noundef nonnull dereferenceable(56000) ptr @_Znwm(i64 noundef 56000) #25 ; 4 uses
  %.not10.i.i.i.i = icmp eq ptr %i.n, %i.p
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt12_Vector_baseIN2cv8KeyPointESaIS1_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i.i ], [ %i.y, %_ZNSt12_Vector_baseIN2cv8KeyPointESaIS1_EE11_M_allocateEm.exit.i ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i.i ], [ %i.n, %_ZNSt12_Vector_baseIN2cv8KeyPointESaIS1_EE11_M_allocateEm.exit.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.012.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(28) %.0911.i.i.i.i, i64 28, i1 false), !tbaa.struct !133, !alias.scope !185
  %i.z = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 28 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 28
  %.not.i.i.i.i = icmp eq ptr %i.z, %i.p
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !189

_ZNSt6vectorIN2cv8KeyPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i: ; preds = %.lr.ph.i.i.i.i, %_ZNSt12_Vector_baseIN2cv8KeyPointESaIS1_EE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.n, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIN2cv8KeyPointESaIS1_EE13_M_deallocateEPS1_m.exit.i, label %bb.b

bb.b:                                             ; preds = %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.t) #26
  br label %_ZNSt12_Vector_baseIN2cv8KeyPointESaIS1_EE13_M_deallocateEPS1_m.exit.i

_ZNSt12_Vector_baseIN2cv8KeyPointESaIS1_EE13_M_deallocateEPS1_m.exit.i: ; preds = %bb.b, %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  store ptr %i.y, ptr %2, align 8, !tbaa !123
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.x
  store ptr %i.ab, ptr %i.l, align 8, !tbaa !120
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 56000
  store ptr %i.ac, ptr %i.q, align 8, !tbaa !184
  br label %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE7reserveEm.exit

_ZNSt6vectorIN2cv8KeyPointESaIS1_EE7reserveEm.exit: ; preds = %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE6resizeEm.exit, %_ZNSt12_Vector_baseIN2cv8KeyPointESaIS1_EE13_M_deallocateEPS1_m.exit.i
  %i.ad = sitofp i32 %1 to float                  ; 2 uses
  %i.ae = fptosi float %i.ad to i32               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.af = load i32, ptr %0, align 8, !tbaa !153   ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.not = icmp eq i32 %i.af, 0
  br i1 %.not, label %.thread, label %bb.c

.thread:                                          ; preds = %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE7reserveEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #24
  br label %._crit_edge417

bb.c:                                             ; preds = %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE7reserveEm.exit
  %i.ah = sext i32 %i.af to i64                   ; 6 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.aj = icmp slt i32 %i.af, 0
  br i1 %i.aj, label %bb.d, label %_ZNKSt6vectorIS_IN2cv8KeyPointESaIS1_EESaIS3_EE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #27
          to label %.noexc255 unwind label %bb.e

.noexc255:                                        ; preds = %bb.d
  unreachable

_ZNKSt6vectorIS_IN2cv8KeyPointESaIS1_EESaIS3_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.c
  %i.ak = mul nuw nsw i64 %i.ah, 24               ; 2 uses
  %i.al = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ak) #25
          to label %.lr.ph unwind label %bb.e     ; 14 uses

.lr.ph:                                           ; preds = %_ZNKSt6vectorIS_IN2cv8KeyPointESaIS1_EESaIS3_EE12_M_check_lenEmPKc.exit.i
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.al, i8 0, i64 %i.ak, i1 false)
  store ptr %i.al, ptr %4, align 8, !tbaa !190
  %.idx = mul nuw nsw i64 %i.ah, 24
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %.idx ; 6 uses
  store ptr %i.am, ptr %i.ag, align 8, !tbaa !193
  store ptr %i.am, ptr %i.ai, align 8, !tbaa !194
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.f

._crit_edge:                                      ; preds = %_ZN2cv11xfeatures2d10BriskLayer14getAgastPointsEiRSt6vectorINS_8KeyPointESaIS3_EE.exit
  %i.ar = icmp eq i32 %i.cm, 1
  br i1 %i.ar, label %bb.i, label %bb.aj

bb.e:                                             ; preds = %_ZNKSt6vectorIS_IN2cv8KeyPointESaIS1_EESaIS3_EE12_M_check_lenEmPKc.exit.i, %bb.d
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.ch

bb.f:                                             ; preds = %.lr.ph, %_ZN2cv11xfeatures2d10BriskLayer14getAgastPointsEiRSt6vectorINS_8KeyPointESaIS3_EE.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN2cv11xfeatures2d10BriskLayer14getAgastPointsEiRSt6vectorINS_8KeyPointESaIS3_EE.exit ] ; 3 uses
  %i.at = load ptr, ptr %i.an, align 8, !tbaa !168
  %i.au = getelementptr inbounds nuw [640 x i8], ptr %i.at, i64 %indvars.iv ; 5 uses
  %i.av = getelementptr inbounds nuw [24 x i8], ptr %i.al, i64 %indvars.iv ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 424 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !178 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 128
  %i.ba = load ptr, ptr %i.az, align 8
  invoke void %i.ba(ptr noundef nonnull align 8 dereferenceable(8) %i.ax, i32 noundef %i.ae)
          to label %.noexc202 unwind label %bb.h, !inline_history !195

.noexc202:                                        ; preds = %bb.f
  %i.bb = load ptr, ptr %i.aw, align 8, !tbaa !178 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  store i32 0, ptr %i.ao, align 8, !tbaa !117
  store i32 0, ptr %i.ap, align 4, !tbaa !118
  store i32 16842752, ptr %3, align 8, !tbaa !119
  store ptr %i.au, ptr %i.aq, align 8, !tbaa !104
  %i.bc = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
          to label %.noexc203 unwind label %bb.h

.noexc203:                                        ; preds = %.noexc202
  %i.bd = load ptr, ptr %i.bb, align 8, !tbaa !8
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 64
  %i.bf = load ptr, ptr %i.be, align 8
  invoke void %i.bf(ptr noundef nonnull align 8 dereferenceable(8) %i.bb, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.av, ptr noundef nonnull align 8 dereferenceable(24) %i.bc)
          to label %.noexc204 unwind label %bb.h, !inline_history !195

.noexc204:                                        ; preds = %.noexc203
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %i.bg = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !120 ; 2 uses
  %i.bi = load ptr, ptr %i.av, align 8, !tbaa !123 ; 2 uses
  %.not.i = icmp eq ptr %i.bh, %i.bi
  br i1 %.not.i, label %_ZN2cv11xfeatures2d10BriskLayer14getAgastPointsEiRSt6vectorINS_8KeyPointESaIS3_EE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.noexc204
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = sub i64 %i.bj, %i.bk
  %i.bm = sdiv exact i64 %i.bl, 28
  %i.bn = getelementptr inbounds nuw i8, ptr %i.au, i64 212
  %i.bo = getelementptr inbounds nuw i8, ptr %i.au, i64 232
  %i.bp = getelementptr inbounds nuw i8, ptr %i.au, i64 336
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph.i
  %.014.i = phi i64 [ 0, %.lr.ph.i ], [ %i.cl, %bb.g ] ; 2 uses
  %i.bq = load ptr, ptr %i.av, align 8, !tbaa !123
  %i.br = getelementptr inbounds nuw [28 x i8], ptr %i.bq, i64 %.014.i ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !196
  %i.bu = insertelement <4 x float> poison, float %i.bt, i64 0
  %i.bv = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.bu)
  %i.bw = call i32 @llvm.smax.i32(i32 %i.bv, i32 0)
  %i.bx = call i32 @llvm.umin.i32(i32 %i.bw, i32 255)
  %i.by = trunc nuw i32 %i.bx to i8
  %i.bz = load i32, ptr %i.bn, align 4, !tbaa !160
  %i.ca = icmp slt i32 %i.bz, 2
  %i.cb = load ptr, ptr %i.bo, align 8, !tbaa !138
  %i.cc = load i64, ptr %i.bp, align 8
  %i.cd = load <2 x float>, ptr %i.br, align 4, !tbaa !32
  %i.ce = fptosi <2 x float> %i.cd to <2 x i32>   ; 2 uses
  %i.cf = extractelement <2 x i32> %i.ce, i64 1
  %i.cg = sext i32 %i.cf to i64
  %i.ch = mul i64 %i.cc, %i.cg
  %.sink.idx.i.i = select i1 %i.ca, i64 0, i64 %i.ch
  %.sink.i.i = getelementptr inbounds nuw i8, ptr %i.cb, i64 %.sink.idx.i.i
  %i.ci = extractelement <2 x i32> %i.ce, i64 0
  %i.cj = sext i32 %i.ci to i64
  %i.ck = getelementptr inbounds i8, ptr %.sink.i.i, i64 %i.cj
  store i8 %i.by, ptr %i.ck, align 1, !tbaa !43
  %i.cl = add nuw i64 %.014.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.cl, %i.bm
  br i1 %exitcond.not.i, label %_ZN2cv11xfeatures2d10BriskLayer14getAgastPointsEiRSt6vectorINS_8KeyPointESaIS3_EE.exit, label %bb.g, !llvm.loop !197

_ZN2cv11xfeatures2d10BriskLayer14getAgastPointsEiRSt6vectorINS_8KeyPointESaIS3_EE.exit: ; preds = %bb.g, %.noexc204
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cm = load i32, ptr %0, align 8, !tbaa !153   ; 4 uses
  %i.cn = sext i32 %i.cm to i64
  %i.co = icmp slt i64 %indvars.iv.next, %i.cn
  br i1 %i.co, label %bb.f, label %._crit_edge, !llvm.loop !198

bb.h:                                             ; preds = %.noexc203, %.noexc202, %bb.f
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ch

bb.i:                                             ; preds = %._crit_edge
  %i.cq = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !120 ; 2 uses
  %i.cs = load ptr, ptr %i.al, align 8, !tbaa !123 ; 2 uses
  %.not423 = icmp eq ptr %i.cr, %i.cs
  br i1 %.not423, label %.loopexit, label %.lr.ph420

.lr.ph420:                                        ; preds = %bb.i
  %i.ct = ptrtoint ptr %i.cr to i64
  %i.cu = ptrtoint ptr %i.cs to i64
  %i.cv = sub i64 %i.ct, %i.cu
  %i.cw = sdiv exact i64 %i.cv, 28
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %_ZNSt6vectorIS_IN2cv8KeyPointESaIS1_EESaIS3_EE2atEm.exit

_ZNSt6vectorIS_IN2cv8KeyPointESaIS1_EESaIS3_EE2atEm.exit: ; preds = %.lr.ph420, %bb.y
  %.0166418 = phi i64 [ %i.fv, %bb.y ], [ 0, %.lr.ph420 ] ; 2 uses
  %i.cy = load ptr, ptr %i.al, align 8, !tbaa !123
  %i.cz = getelementptr inbounds nuw [28 x i8], ptr %i.cy, i64 %.0166418 ; 12 uses
  %i.da = load float, ptr %i.cz, align 4, !tbaa !129
  %i.db = fptosi float %i.da to i32
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cz, i64 4 ; 6 uses
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !131
  %i.de = fptosi float %i.dd to i32
  %i.df = invoke noundef zeroext i1 @_ZN2cv11xfeatures2d15BriskScaleSpace7isMax2DEiii(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 0, i32 noundef %i.db, i32 noundef %i.de)
          to label %bb.j unwind label %.loopexit311

bb.j:                                             ; preds = %_ZNSt6vectorIS_IN2cv8KeyPointESaIS1_EESaIS3_EE2atEm.exit
  br i1 %i.df, label %bb.k, label %bb.y

.loopexit311:                                     ; preds = %_ZNSt6vectorIS_IN2cv8KeyPointESaIS1_EESaIS3_EE2atEm.exit
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ch

bb.k:                                             ; preds = %bb.j
  %i.dg = load ptr, ptr %i.cx, align 8, !tbaa !168 ; 9 uses
  %i.dh = load <2 x float>, ptr %i.cz, align 4, !tbaa !32
  %i.di = fadd <2 x float> %i.dh, splat (float -1.000000e+00) ; 2 uses
  %i.dj = extractelement <2 x float> %i.di, i64 0
  %i.dk = extractelement <2 x float> %i.di, i64 1
  %i.dl = invoke noundef i32 @_ZNK2cv11xfeatures2d10BriskLayer13getAgastScoreEffif(ptr noundef nonnull align 8 dereferenceable(640) %i.dg, float noundef %i.dj, float noundef %i.dk, i32 noundef 1, float noundef 1.000000e+00)
          to label %bb.l unwind label %bb.z

bb.l:                                             ; preds = %bb.k
  %i.dm = load float, ptr %i.cz, align 4, !tbaa !129
  %i.dn = load float, ptr %i.dc, align 4, !tbaa !131
  %i.do = fadd float %i.dn, -1.000000e+00
  %i.dp = invoke noundef i32 @_ZNK2cv11xfeatures2d10BriskLayer13getAgastScoreEffif(ptr noundef nonnull align 8 dereferenceable(640) %i.dg, float noundef %i.dm, float noundef %i.do, i32 noundef 1, float noundef 1.000000e+00)
          to label %bb.m unwind label %bb.aa

bb.m:                                             ; preds = %bb.l
  %i.dq = load <2 x float>, ptr %i.cz, align 4, !tbaa !32
  %i.dr = fadd <2 x float> %i.dq, <float 1.000000e+00, float -1.000000e+00> ; 2 uses
  %i.ds = extractelement <2 x float> %i.dr, i64 0
  %i.dt = extractelement <2 x float> %i.dr, i64 1
  %i.du = invoke noundef i32 @_ZNK2cv11xfeatures2d10BriskLayer13getAgastScoreEffif(ptr noundef nonnull align 8 dereferenceable(640) %i.dg, float noundef %i.ds, float noundef %i.dt, i32 noundef 1, float noundef 1.000000e+00)
          to label %bb.n unwind label %bb.ab

bb.n:                                             ; preds = %bb.m
  %i.dv = load float, ptr %i.cz, align 4, !tbaa !129
  %i.dw = fadd float %i.dv, 1.000000e+00
  %i.dx = load float, ptr %i.dc, align 4, !tbaa !131
  %i.dy = invoke noundef i32 @_ZNK2cv11xfeatures2d10BriskLayer13getAgastScoreEffif(ptr noundef nonnull align 8 dereferenceable(640) %i.dg, float noundef %i.dw, float noundef %i.dx, i32 noundef 1, float noundef 1.000000e+00)
          to label %bb.o unwind label %bb.ac

bb.o:                                             ; preds = %bb.n
  %i.dz = load float, ptr %i.cz, align 4, !tbaa !129
  %i.ea = load float, ptr %i.dc, align 4, !tbaa !131
  %i.eb = invoke noundef i32 @_ZNK2cv11xfeatures2d10BriskLayer13getAgastScoreEffif(ptr noundef nonnull align 8 dereferenceable(640) %i.dg, float noundef %i.dz, float noundef %i.ea, i32 noundef 1, float noundef 1.000000e+00)
          to label %bb.p unwind label %bb.ad

bb.p:                                             ; preds = %bb.o
  %i.ec = load float, ptr %i.cz, align 4, !tbaa !129
  %i.ed = fadd float %i.ec, -1.000000e+00
  %i.ee = load float, ptr %i.dc, align 4, !tbaa !131
  %i.ef = invoke noundef i32 @_ZNK2cv11xfeatures2d10BriskLayer13getAgastScoreEffif(ptr noundef nonnull align 8 dereferenceable(640) %i.dg, float noundef %i.ed, float noundef %i.ee, i32 noundef 1, float noundef 1.000000e+00)
          to label %bb.q unwind label %bb.ae

bb.q:                                             ; preds = %bb.p
  %i.eg = load <2 x float>, ptr %i.cz, align 4, !tbaa !32
  %i.eh = fadd <2 x float> %i.eg, <float -1.000000e+00, float 1.000000e+00> ; 2 uses
  %i.ei = extractelement <2 x float> %i.eh, i64 0
  %i.ej = extractelement <2 x float> %i.eh, i64 1
  %i.ek = invoke noundef i32 @_ZNK2cv11xfeatures2d10BriskLayer13getAgastScoreEffif(ptr noundef nonnull align 8 dereferenceable(640) %i.dg, float noundef %i.ei, float noundef %i.ej, i32 noundef 1, float noundef 1.000000e+00)
          to label %bb.r unwind label %bb.af

bb.r:                                             ; preds = %bb.q
  %i.el = load float, ptr %i.cz, align 4, !tbaa !129
  %i.em = load float, ptr %i.dc, align 4, !tbaa !131
  %i.en = fadd float %i.em, 1.000000e+00
  %i.eo = invoke noundef i32 @_ZNK2cv11xfeatures2d10BriskLayer13getAgastScoreEffif(ptr noundef nonnull align 8 dereferenceable(640) %i.dg, float noundef %i.el, float noundef %i.en, i32 noundef 1, float noundef 1.000000e+00)
          to label %bb.s unwind label %bb.ag

bb.s:                                             ; preds = %bb.r
  %i.ep = load <2 x float>, ptr %i.cz, align 4, !tbaa !32
  %i.eq = fadd <2 x float> %i.ep, splat (float 1.000000e+00) ; 2 uses
  %i.er = extractelement <2 x float> %i.eq, i64 0
  %i.es = extractelement <2 x float> %i.eq, i64 1
  %i.et = invoke noundef i32 @_ZNK2cv11xfeatures2d10BriskLayer13getAgastScoreEffif(ptr noundef nonnull align 8 dereferenceable(640) %i.dg, float noundef %i.er, float noundef %i.es, i32 noundef 1, float noundef 1.000000e+00)
          to label %bb.t unwind label %bb.ah

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  %i.eu = call noundef float @_ZNK2cv11xfeatures2d15BriskScaleSpace10subpixel2DEiiiiiiiiiRfS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %i.dl, i32 noundef %i.ef, i32 noundef %i.ek, i32 noundef %i.dp, i32 noundef %i.eb, i32 noundef %i.eo, i32 noundef %i.du, i32 noundef %i.dy, i32 noundef %i.et, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b) ; 2 uses
  %i.ev = load float, ptr %i.a, align 4, !tbaa !32
  %i.ew = load <2 x float>, ptr %i.cz, align 4, !tbaa !32
  %i.ex = load float, ptr %i.b, align 4, !tbaa !32
  %i.ey = insertelement <2 x float> poison, float %i.ev, i64 0
  %i.ez = insertelement <2 x float> %i.ey, float %i.ex, i64 1
  %i.fa = fadd <2 x float> %i.ew, %i.ez           ; 2 uses
  %i.fb = load ptr, ptr %i.l, align 8, !tbaa !120 ; 10 uses
  %i.fc = load ptr, ptr %i.q, align 8, !tbaa !184
  %.not.i.i207 = icmp eq ptr %i.fb, %i.fc
  br i1 %.not.i.i207, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  store <2 x float> %i.fa, ptr %i.fb, align 4, !tbaa !32
  %.sroa.7295.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  store <2 x float> <float 1.200000e+01, float -1.000000e+00>, ptr %.sroa.7295.0..sroa_idx, align 4, !tbaa !32
  %.sroa.9301.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  store float %i.eu, ptr %.sroa.9301.0..sroa_idx, align 4, !tbaa !32
  %.sroa.10304.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fb, i64 20
  store i32 0, ptr %.sroa.10304.0..sroa_idx, align 4, !tbaa !33
  %.sroa.11307.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fb, i64 24
  store i32 -1, ptr %.sroa.11307.0..sroa_idx, align 4, !tbaa !33
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fb, i64 28
  store ptr %i.fd, ptr %i.l, align 8, !tbaa !120
  br label %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE9push_backEOS1_.exit

bb.v:                                             ; preds = %bb.t
  %i.fe = load ptr, ptr %2, align 8, !tbaa !123   ; 5 uses
  %i.ff = ptrtoint ptr %i.fb to i64
  %i.fg = ptrtoint ptr %i.fe to i64
  %i.fh = sub i64 %i.ff, %i.fg                    ; 4 uses
  %i.fi = icmp eq i64 %i.fh, 9223372036854775800
  br i1 %i.fi, label %bb.w, label %_ZNKSt6vectorIN2cv8KeyPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.w:                                             ; preds = %bb.v
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #27
          to label %.noexc209 unwind label %.loopexit.split-lp313

.noexc209:                                        ; preds = %bb.w
  unreachable

_ZNKSt6vectorIN2cv8KeyPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.v
  %i.fj = sdiv exact i64 %i.fh, 28                ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.fj, i64 1)
  %i.fk = add nsw i64 %.sroa.speculated.i.i.i.i, %i.fj ; 2 uses
  %i.fl = icmp ult i64 %i.fk, %i.fj
  %i.fm = call i64 @llvm.umin.i64(i64 %i.fk, i64 329406144173384850)
  %i.fn = select i1 %i.fl, i64 329406144173384850, i64 %i.fm ; 3 uses
  %.not.i.i.i.i208 = icmp ne i64 %i.fn, 0
  call void @llvm.assume(i1 %.not.i.i.i.i208)
  %i.fo = mul nuw nsw i64 %i.fn, 28
  %i.fp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fo) #25
          to label %.noexc210 unwind label %.loopexit312 ; 5 uses

.noexc210:                                        ; preds = %_ZNKSt6vectorIN2cv8KeyPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 %i.fh ; 5 uses
  store <2 x float> %i.fa, ptr %i.fq, align 4, !tbaa !32
  %.sroa.7295.0..sroa_idx296 = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  store <2 x float> <float 1.200000e+01, float -1.000000e+00>, ptr %.sroa.7295.0..sroa_idx296, align 4, !tbaa !32
  %.sroa.9301.0..sroa_idx302 = getelementptr inbounds nuw i8, ptr %i.fq, i64 16
  store float %i.eu, ptr %.sroa.9301.0..sroa_idx302, align 4, !tbaa !32
  %.sroa.10304.0..sroa_idx305 = getelementptr inbounds nuw i8, ptr %i.fq, i64 20
  store i32 0, ptr %.sroa.10304.0..sroa_idx305, align 4, !tbaa !33
  %.sroa.11307.0..sroa_idx308 = getelementptr inbounds nuw i8, ptr %i.fq, i64 24
  store i32 -1, ptr %.sroa.11307.0..sroa_idx308, align 4, !tbaa !33
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.fe, %i.fb
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc210, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.fs, %.lr.ph.i.i.i.i.i.i ], [ %i.fp, %.noexc210 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.fr, %.lr.ph.i.i.i.i.i.i ], [ %i.fe, %.noexc210 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.012.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(28) %.0911.i.i.i.i.i.i, i64 28, i1 false), !tbaa.struct !133, !alias.scope !199
  %i.fr = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 28 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 28 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.fr, %i.fb
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !189

_ZNSt6vectorIN2cv8KeyPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc210
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.fp, %.noexc210 ], [ %i.fs, %.lr.ph.i.i.i.i.i.i ]
  %i.ft = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 28
  %.not.i23.i.i.i = icmp eq ptr %i.fe, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.fe, i64 noundef %i.fh) #26
  br label %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIN2cv8KeyPointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.x, %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  store ptr %i.fp, ptr %2, align 8, !tbaa !123
  store ptr %i.ft, ptr %i.l, align 8, !tbaa !120
  %i.fu = getelementptr inbounds nuw [28 x i8], ptr %i.fp, i64 %i.fn
  store ptr %i.fu, ptr %i.q, align 8, !tbaa !184
  br label %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorIN2cv8KeyPointESaIS1_EE9push_backEOS1_.exit: ; preds = %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %bb.y

bb.y:                                             ; preds = %bb.j, %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE9push_backEOS1_.exit
  %i.fv = add nuw i64 %.0166418, 1                ; 2 uses
  %exitcond504.not = icmp eq i64 %i.fv, %i.cw
  br i1 %exitcond504.not, label %.loopexit, label %_ZNSt6vectorIS_IN2cv8KeyPointESaIS1_EESaIS3_EE2atEm.exit, !llvm.loop !203

bb.z:                                             ; preds = %bb.k
  %i.fw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ch

bb.aa:                                            ; preds = %bb.l
  %i.fx = landingpad { ptr, i32 }
          cleanup
  br label %bb.ch

bb.ab:                                            ; preds = %bb.m
  %i.fy = landingpad { ptr, i32 }
          cleanup
  br label %bb.ch

bb.ac:                                            ; preds = %bb.n
  %i.fz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ch

bb.ad:                                            ; preds = %bb.o
  %i.ga = landingpad { ptr, i32 }
          cleanup
  br label %bb.ch

bb.ae:                                            ; preds = %bb.p
  %i.gb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ch

bb.af:                                            ; preds = %bb.q
  %i.gc = landingpad { ptr, i32 }
          cleanup
  br label %bb.ch

bb.ag:                                            ; preds = %bb.r
  %i.gd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ch

bb.ah:                                            ; preds = %bb.s
  %i.ge = landingpad { ptr, i32 }
          cleanup
  br label %bb.ch

.loopexit312:                                     ; preds = %_ZNKSt6vectorIN2cv8KeyPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit314 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

.loopexit.split-lp313:                            ; preds = %bb.w
  %lpad.loopexit.split-lp315 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.ai:                                            ; preds = %.loopexit.split-lp313, %.loopexit312
  %lpad.phi316 = phi { ptr, i32 } [ %lpad.loopexit314, %.loopexit312 ], [ %lpad.loopexit.split-lp315, %.loopexit.split-lp313 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %bb.ch

bb.aj:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #24
  %i.gf = icmp sgt i32 %i.cm, 0
  br i1 %i.gf, label %.lr.ph416, label %._crit_edge417

.lr.ph416:                                        ; preds = %bb.aj
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.ak

._crit_edge417:                                   ; preds = %.loopexit317, %.thread, %bb.aj
  %.pr.i539542544 = phi ptr [ null, %.thread ], [ %i.al, %bb.aj ], [ %i.al, %.loopexit317 ]
  %i.gh = phi ptr [ null, %.thread ], [ %i.am, %bb.aj ], [ %i.am, %.loopexit317 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  br label %.loopexit

bb.ak:                                            ; preds = %.lr.ph416, %.loopexit317
  %indvars.iv500 = phi i64 [ 0, %.lr.ph416 ], [ %indvars.iv.next501, %.loopexit317 ] ; 12 uses
  %i.gi = phi i32 [ %i.cm, %.lr.ph416 ], [ %i.mp, %.loopexit317 ]
  %i.gj = load ptr, ptr %i.gg, align 8, !tbaa !168
  %i.gk = getelementptr inbounds nuw [640 x i8], ptr %i.gj, i64 %indvars.iv500 ; 12 uses
  %i.gl = getelementptr inbounds nuw [24 x i8], ptr %i.al, i64 %indvars.iv500 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 8
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !120 ; 2 uses
  %i.go = load ptr, ptr %i.gl, align 8, !tbaa !123 ; 2 uses
  %i.gp = ptrtoint ptr %i.gn to i64
  %i.gq = ptrtoint ptr %i.go to i64
  %i.gr = sub i64 %i.gp, %i.gq
  %i.gs = sdiv exact i64 %i.gr, 28                ; 2 uses
  %i.gt = add nsw i32 %i.gi, -1
  %i.gu = zext i32 %i.gt to i64
  %i.gv = icmp eq i64 %indvars.iv500, %i.gu
  %.not422 = icmp eq ptr %i.gn, %i.go             ; 2 uses
  br i1 %i.gv, label %.preheader, label %.preheader328

.preheader328:                                    ; preds = %bb.ak
  br i1 %.not422, label %.loopexit317, label %.lr.ph410.preheader

.lr.ph410.preheader:                              ; preds = %.preheader328
  %.not.i.i230 = icmp ult i64 %indvars.iv500, %i.ah
  %i.gw = getelementptr inbounds nuw [24 x i8], ptr %i.al, i64 %indvars.iv500
  %i.gx = trunc nuw nsw i64 %indvars.iv500 to i32 ; 4 uses
  br i1 %.not.i.i230, label %bb.bs, label %6

.preheader:                                       ; preds = %bb.ak
  br i1 %.not422, label %.loopexit317, label %.lr.ph412

.lr.ph412:                                        ; preds = %.preheader
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gk, i64 416
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gk, i64 420
  %.not.i.i211 = icmp ult i64 %indvars.iv500, %i.ah
  %i.ha = getelementptr inbounds nuw [24 x i8], ptr %i.al, i64 %indvars.iv500
  %i.hb = trunc nuw nsw i64 %indvars.iv500 to i32 ; 4 uses
  br i1 %.not.i.i211, label %bb.al, label %5

bb.al:                                            ; preds = %.lr.ph412, %bb.bg
  %.0168411 = phi i64 [ %i.kp, %bb.bg ], [ 0, %.lr.ph412 ] ; 2 uses
  %i.hc = load ptr, ptr %i.ha, align 8, !tbaa !123
  %i.hd = getelementptr inbounds nuw [28 x i8], ptr %i.hc, i64 %.0168411 ; 13 uses
  %i.he = load float, ptr %i.hd, align 4, !tbaa !129
  %i.hf = fptosi float %i.he to i32
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hd, i64 4 ; 7 uses
  %i.hh = load float, ptr %i.hg, align 4, !tbaa !131
  %i.hi = fptosi float %i.hh to i32
  %i.hj = invoke noundef zeroext i1 @_ZN2cv11xfeatures2d15BriskScaleSpace7isMax2DEiii(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %i.hb, i32 noundef %i.hf, i32 noundef %i.hi)
          to label %bb.am unwind label %.loopexit318

5:                                                ; preds = %.lr.ph412
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.26, i64 noundef %indvars.iv500, i64 noundef %i.ah) #27
          to label %.noexc212 unwind label %.loopexit.split-lp319

.noexc212:                                        ; preds = %5
  unreachable

bb.am:                                            ; preds = %bb.al
  br i1 %i.hj, label %bb.an, label %bb.bg

.loopexit318:                                     ; preds = %bb.al
  %lpad.loopexit320 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ce

.loopexit.split-lp319:                            ; preds = %5
  %lpad.loopexit.split-lp321 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ce

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #24
  %i.hk = load float, ptr %i.hd, align 4, !tbaa !129 ; 2 uses
  %i.hl = load float, ptr %i.hg, align 4, !tbaa !131 ; 2 uses
  %i.hm = invoke noundef i32 @_ZNK2cv11xfeatures2d10BriskLayer13getAgastScoreEffif(ptr noundef nonnull align 8 dereferenceable(640) %i.gk, float noundef %i.hk, float noundef %i.hl, i32 noundef %i.ae, float noundef 1.000000e+00)
          to label %bb.ao unwind label %bb.aq

bb.ao:                                            ; preds = %bb.an
  %i.hn = fptosi float %i.hl to i32
  %i.ho = fptosi float %i.hk to i32
  %i.hp = invoke noundef float @_ZNK2cv11xfeatures2d15BriskScaleSpace16getScoreMaxBelowEiiiiRbRfS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %i.hb, i32 noundef %i.ho, i32 noundef %i.hn, i32 noundef %i.hm, ptr noundef nonnull align 1 dereferenceable(1) %i.f, ptr noundef nonnull align 4 dereferenceable(4) %i.g, ptr noundef nonnull align 4 dereferenceable(4) %i.h)
          to label %bb.ap unwind label %bb.aq     ; 0 uses

bb.ap:                                            ; preds = %bb.ao
  %i.hq = load i8, ptr %i.f, align 1, !tbaa !204, !range !206, !noundef !207
  %i.hr = trunc nuw i8 %i.hq to i1
  br i1 %i.hr, label %bb.ar, label %bb.bf

bb.aq:                                            ; preds = %bb.ao, %bb.an
  %i.hs = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.ar:                                            ; preds = %bb.ap
  %i.ht = load <2 x float>, ptr %i.hd, align 4, !tbaa !32
  %i.hu = fadd <2 x float> %i.ht, splat (float -1.000000e+00) ; 2 uses
  %i.hv = extractelement <2 x float> %i.hu, i64 0
  %i.hw = extractelement <2 x float> %i.hu, i64 1
  %i.hx = invoke noundef i32 @_ZNK2cv11xfeatures2d10BriskLayer13getAgastScoreEffif(ptr noundef nonnull align 8 dereferenceable(640) %i.gk, float noundef %i.hv, float noundef %i.hw, i32 noundef 1, float noundef 1.000000e+00)
          to label %bb.as unwind label %bb.bh

bb.as:                                            ; preds = %bb.ar
  %i.hy = load float, ptr %i.hd, align 4, !tbaa !129
  %i.hz = load float, ptr %i.hg, align 4, !tbaa !131
  %i.ia = fadd float %i.hz, -1.000000e+00
  %i.ib = invoke noundef i32 @_ZNK2cv11xfeatures2d10BriskLayer13getAgastScoreEffif(ptr noundef nonnull align 8 dereferenceable(640) %i.gk, float noundef %i.hy, float noundef %i.ia, i32 noundef 1, float noundef 1.000000e+00)
          to label %bb.at unwind label %bb.bi

bb.at:                                            ; preds = %bb.as
  %i.ic = load <2 x float>, ptr %i.hd, align 4, !tbaa !32
  %i.id = fadd <2 x float> %i.ic, <float 1.000000e+00, float -1.000000e+00> ; 2 uses
  %i.ie = extractelement <2 x float> %i.id, i64 0
  %i.if = extractelement <2 x float> %i.id, i64 1
  %i.ig = invoke noundef i32 @_ZNK2cv11xfeatures2d10BriskLayer13getAgastScoreEffif(ptr noundef nonnull align 8 dereferenceable(640) %i.gk, float noundef %i.ie, float noundef %i.if, i32 noundef 1, float noundef 1.000000e+00)
          to label %bb.au unwind label %bb.bj

bb.au:                                            ; preds = %bb.at
  %i.ih = load float, ptr %i.hd, align 4, !tbaa !129
  %i.ii = fadd float %i.ih, 1.000000e+00
  %i.ij = load float, ptr %i.hg, align 4, !tbaa !131
  %i.ik = invoke noundef i32 @_ZNK2cv11xfeatures2d10BriskLayer13getAgastScoreEffif(ptr noundef nonnull align 8 dereferenceable(640) %i.gk, float noundef %i.ii, float noundef %i.ij, i32 noundef 1, float noundef 1.000000e+00)
          to label %bb.av unwind label %bb.bk

bb.av:                                            ; preds = %bb.au
  %i.il = load float, ptr %i.hd, align 4, !tbaa !129
  %i.im = load float, ptr %i.hg, align 4, !tbaa !131
  %i.in = invoke noundef i32 @_ZNK2cv11xfeatures2d10BriskLayer13getAgastScoreEffif(ptr noundef nonnull align 8 dereferenceable(640) %i.gk, float noundef %i.il, float noundef %i.im, i32 noundef 1, float noundef 1.000000e+00)
          to label %bb.aw unwind label %bb.bl

bb.aw:                                            ; preds = %bb.av
  %i.io = load float, ptr %i.hd, align 4, !tbaa !129
  %i.ip = fadd float %i.io, -1.000000e+00
  %i.iq = load float, ptr %i.hg, align 4, !tbaa !131
  %i.ir = invoke noundef i32 @_ZNK2cv11xfeatures2d10BriskLayer13getAgastScoreEffif(ptr noundef nonnull align 8 dereferenceable(640) %i.gk, float noundef %i.ip, float noundef %i.iq, i32 noundef 1, float noundef 1.000000e+00)
          to label %bb.ax unwind label %bb.bm

bb.ax:                                            ; preds = %bb.aw
  %i.is = load <2 x float>, ptr %i.hd, align 4, !tbaa !32
  %i.it = fadd <2 x float> %i.is, <float -1.000000e+00, float 1.000000e+00> ; 2 uses
  %i.iu = extractelement <2 x float> %i.it, i64 0
  %i.iv = extractelement <2 x float> %i.it, i64 1
  %i.iw = invoke noundef i32 @_ZNK2cv11xfeatures2d10BriskLayer13getAgastScoreEffif(ptr noundef nonnull align 8 dereferenceable(640) %i.gk, float noundef %i.iu, float noundef %i.iv, i32 noundef 1, float noundef 1.000000e+00)
          to label %bb.ay unwind label %bb.bn

bb.ay:                                            ; preds = %bb.ax
  %i.ix = load float, ptr %i.hd, align 4, !tbaa !129
  %i.iy = load float, ptr %i.hg, align 4, !tbaa !131
  %i.iz = fadd float %i.iy, 1.000000e+00
  %i.ja = invoke noundef i32 @_ZNK2cv11xfeatures2d10BriskLayer13getAgastScoreEffif(ptr noundef nonnull align 8 dereferenceable(640) %i.gk, float noundef %i.ix, float noundef %i.iz, i32 noundef 1, float noundef 1.000000e+00)
          to label %bb.az unwind label %bb.bo

bb.az:                                            ; preds = %bb.ay
  %i.jb = load <2 x float>, ptr %i.hd, align 4, !tbaa !32
  %i.jc = fadd <2 x float> %i.jb, splat (float 1.000000e+00) ; 2 uses
  %i.jd = extractelement <2 x float> %i.jc, i64 0
  %i.je = extractelement <2 x float> %i.jc, i64 1
  %i.jf = invoke noundef i32 @_ZNK2cv11xfeatures2d10BriskLayer13getAgastScoreEffif(ptr noundef nonnull align 8 dereferenceable(640) %i.gk, float noundef %i.jd, float noundef %i.je, i32 noundef 1, float noundef 1.000000e+00)
          to label %bb.ba unwind label %bb.bp

bb.ba:                                            ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #24
  %i.jg = call noundef float @_ZNK2cv11xfeatures2d15BriskScaleSpace10subpixel2DEiiiiiiiiiRfS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %i.hx, i32 noundef %i.ir, i32 noundef %i.iw, i32 noundef %i.ib, i32 noundef %i.in, i32 noundef %i.ja, i32 noundef %i.ig, i32 noundef %i.ik, i32 noundef %i.jf, ptr noundef nonnull align 4 dereferenceable(4) %i.i, ptr noundef nonnull align 4 dereferenceable(4) %i.j) ; 2 uses
  %i.jh = load float, ptr %i.i, align 4, !tbaa !32
  %i.ji = load float, ptr %i.gy, align 8, !tbaa !208 ; 2 uses
  %i.jj = load float, ptr %i.gz, align 4, !tbaa !213
  %i.jk = load float, ptr %i.j, align 4, !tbaa !32
  %i.jl = load <2 x float>, ptr %i.hd, align 4, !tbaa !32
  %i.jm = insertelement <2 x float> poison, float %i.jh, i64 0
  %i.jn = insertelement <2 x float> %i.jm, float %i.jk, i64 1
  %i.jo = fadd <2 x float> %i.jl, %i.jn
  %i.jp = insertelement <2 x float> poison, float %i.ji, i64 0
  %i.jq = shufflevector <2 x float> %i.jp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jr = insertelement <2 x float> poison, float %i.jj, i64 0
  %i.js = shufflevector <2 x float> %i.jr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jt = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jo, <2 x float> %i.jq, <2 x float> %i.js) ; 2 uses
  %i.ju = fmul float %i.ji, 1.200000e+01          ; 2 uses
  %i.jv = load ptr, ptr %i.l, align 8, !tbaa !120 ; 11 uses
  %i.jw = load ptr, ptr %i.q, align 8, !tbaa !184
  %.not.i.i214 = icmp eq ptr %i.jv, %i.jw
  br i1 %.not.i.i214, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  store <2 x float> %i.jt, ptr %i.jv, align 4, !tbaa !32
  %.sroa.7275.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jv, i64 8
  store float %i.ju, ptr %.sroa.7275.0..sroa_idx, align 4, !tbaa !32
  %.sroa.8278.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jv, i64 12
  store float -1.000000e+00, ptr %.sroa.8278.0..sroa_idx, align 4, !tbaa !32
  %.sroa.9281.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jv, i64 16
  store float %i.jg, ptr %.sroa.9281.0..sroa_idx, align 4, !tbaa !32
  %.sroa.10284.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jv, i64 20
  store i32 %i.hb, ptr %.sroa.10284.0..sroa_idx, align 4, !tbaa !33
  %.sroa.11287.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jv, i64 24
  store i32 -1, ptr %.sroa.11287.0..sroa_idx, align 4, !tbaa !33
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jv, i64 28
  store ptr %i.jx, ptr %i.l, align 8, !tbaa !120
  br label %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE9push_backEOS1_.exit229

bb.bc:                                            ; preds = %bb.ba
  %i.jy = load ptr, ptr %2, align 8, !tbaa !123   ; 5 uses
  %i.jz = ptrtoint ptr %i.jv to i64
  %i.ka = ptrtoint ptr %i.jy to i64
  %i.kb = sub i64 %i.jz, %i.ka                    ; 4 uses
  %i.kc = icmp eq i64 %i.kb, 9223372036854775800
  br i1 %i.kc, label %bb.bd, label %_ZNKSt6vectorIN2cv8KeyPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i215

bb.bd:                                            ; preds = %bb.bc
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #27
          to label %.noexc227 unwind label %.loopexit.split-lp324

.noexc227:                                        ; preds = %bb.bd
  unreachable

_ZNKSt6vectorIN2cv8KeyPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i215: ; preds = %bb.bc
  %i.kd = sdiv exact i64 %i.kb, 28                ; 3 uses
  %.sroa.speculated.i.i.i.i216 = call i64 @llvm.umax.i64(i64 %i.kd, i64 1)
  %i.ke = add nsw i64 %.sroa.speculated.i.i.i.i216, %i.kd ; 2 uses
  %i.kf = icmp ult i64 %i.ke, %i.kd
  %i.kg = call i64 @llvm.umin.i64(i64 %i.ke, i64 329406144173384850)
  %i.kh = select i1 %i.kf, i64 329406144173384850, i64 %i.kg ; 3 uses
  %.not.i.i.i.i217 = icmp ne i64 %i.kh, 0
  call void @llvm.assume(i1 %.not.i.i.i.i217)
  %i.ki = mul nuw nsw i64 %i.kh, 28
  %i.kj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ki) #25
          to label %.noexc228 unwind label %.loopexit323 ; 5 uses

.noexc228:                                        ; preds = %_ZNKSt6vectorIN2cv8KeyPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i215
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 %i.kb ; 6 uses
  store <2 x float> %i.jt, ptr %i.kk, align 4, !tbaa !32
  %.sroa.7275.0..sroa_idx276 = getelementptr inbounds nuw i8, ptr %i.kk, i64 8
  store float %i.ju, ptr %.sroa.7275.0..sroa_idx276, align 4, !tbaa !32
  %.sroa.8278.0..sroa_idx279 = getelementptr inbounds nuw i8, ptr %i.kk, i64 12
  store float -1.000000e+00, ptr %.sroa.8278.0..sroa_idx279, align 4, !tbaa !32
  %.sroa.9281.0..sroa_idx282 = getelementptr inbounds nuw i8, ptr %i.kk, i64 16
  store float %i.jg, ptr %.sroa.9281.0..sroa_idx282, align 4, !tbaa !32
  %.sroa.10284.0..sroa_idx285 = getelementptr inbounds nuw i8, ptr %i.kk, i64 20
  store i32 %i.hb, ptr %.sroa.10284.0..sroa_idx285, align 4, !tbaa !33
  %.sroa.11287.0..sroa_idx288 = getelementptr inbounds nuw i8, ptr %i.kk, i64 24
  store i32 -1, ptr %.sroa.11287.0..sroa_idx288, align 4, !tbaa !33
  %.not10.i.i.i.i.i.i218 = icmp eq ptr %i.jy, %i.jv
  br i1 %.not10.i.i.i.i.i.i218, label %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i223, label %.lr.ph.i.i.i.i.i.i219

.lr.ph.i.i.i.i.i.i219:                            ; preds = %.noexc228, %.lr.ph.i.i.i.i.i.i219
  %.012.i.i.i.i.i.i220 = phi ptr [ %i.km, %.lr.ph.i.i.i.i.i.i219 ], [ %i.kj, %.noexc228 ] ; 2 uses
  %.0911.i.i.i.i.i.i221 = phi ptr [ %i.kl, %.lr.ph.i.i.i.i.i.i219 ], [ %i.jy, %.noexc228 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.012.i.i.i.i.i.i220, ptr noundef nonnull align 4 dereferenceable(28) %.0911.i.i.i.i.i.i221, i64 28, i1 false), !tbaa.struct !133, !alias.scope !214
  %i.kl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i221, i64 28 ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i220, i64 28 ; 2 uses
  %.not.i.i.i.i.i.i222 = icmp eq ptr %i.kl, %i.jv
  br i1 %.not.i.i.i.i.i.i222, label %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i223, label %.lr.ph.i.i.i.i.i.i219, !llvm.loop !189

_ZNSt6vectorIN2cv8KeyPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i223: ; preds = %.lr.ph.i.i.i.i.i.i219, %.noexc228
  %.0.lcssa.i.i.i.i.i.i224 = phi ptr [ %i.kj, %.noexc228 ], [ %i.km, %.lr.ph.i.i.i.i.i.i219 ]
  %i.kn = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i224, i64 28
  %.not.i23.i.i.i225 = icmp eq ptr %i.jy, null
  br i1 %.not.i23.i.i.i225, label %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i226, label %bb.be

bb.be:                                            ; preds = %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i223
  call void @_ZdlPvm(ptr noundef nonnull %i.jy, i64 noundef %i.kb) #26
  br label %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i226

_ZNSt6vectorIN2cv8KeyPointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i226: ; preds = %bb.be, %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i223
  store ptr %i.kj, ptr %2, align 8, !tbaa !123
  store ptr %i.kn, ptr %i.l, align 8, !tbaa !120
  %i.ko = getelementptr inbounds nuw [28 x i8], ptr %i.kj, i64 %i.kh
  store ptr %i.ko, ptr %i.q, align 8, !tbaa !184
  br label %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE9push_backEOS1_.exit229

_ZNSt6vectorIN2cv8KeyPointESaIS1_EE9push_backEOS1_.exit229: ; preds = %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i226, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #24
  br label %bb.bf

bb.bf:                                            ; preds = %bb.ap, %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE9push_backEOS1_.exit229
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #24
  br label %bb.bg

bb.bg:                                            ; preds = %bb.am, %bb.bf
  %i.kp = add nuw i64 %.0168411, 1                ; 2 uses
  %exitcond499.not = icmp eq i64 %i.kp, %i.gs
  br i1 %exitcond499.not, label %.loopexit317, label %bb.al, !llvm.loop !218

bb.bh:                                            ; preds = %bb.ar
  %i.kq = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.bi:                                            ; preds = %bb.as
  %i.kr = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.bj:                                            ; preds = %bb.at
  %i.ks = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.bk:                                            ; preds = %bb.au
  %i.kt = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.bl:                                            ; preds = %bb.av
  %i.ku = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.bm:                                            ; preds = %bb.aw
  %i.kv = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.bn:                                            ; preds = %bb.ax
  %i.kw = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.bo:                                            ; preds = %bb.ay
  %i.kx = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.bp:                                            ; preds = %bb.az
  %i.ky = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

.loopexit323:                                     ; preds = %_ZNKSt6vectorIN2cv8KeyPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i215
  %lpad.loopexit325 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

.loopexit.split-lp324:                            ; preds = %bb.bd
  %lpad.loopexit.split-lp326 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

bb.bq:                                            ; preds = %.loopexit.split-lp324, %.loopexit323
  %lpad.phi327 = phi { ptr, i32 } [ %lpad.loopexit325, %.loopexit323 ], [ %lpad.loopexit.split-lp326, %.loopexit.split-lp324 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #24
  br label %bb.br

bb.br:                                            ; preds = %bb.bh, %bb.bj, %bb.bl, %bb.bn, %bb.bp, %bb.bq, %bb.bo, %bb.bm, %bb.bk, %bb.bi, %bb.aq
  %.pn173.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.hs, %bb.aq ], [ %i.kq, %bb.bh ], [ %i.kr, %bb.bi ], [ %i.ks, %bb.bj ], [ %i.kt, %bb.bk ], [ %i.ku, %bb.bl ], [ %i.kv, %bb.bm ], [ %i.kw, %bb.bn ], [ %i.kx, %bb.bo ], [ %lpad.phi327, %bb.bq ], [ %i.ky, %bb.bp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #24
  br label %bb.ce

bb.bs:                                            ; preds = %.lr.ph410.preheader, %bb.cc
  %.0139409 = phi i64 [ %i.mo, %bb.cc ], [ 0, %.lr.ph410.preheader ] ; 2 uses
  %i.kz = load ptr, ptr %i.gw, align 8, !tbaa !123
  %i.la = getelementptr inbounds nuw [28 x i8], ptr %i.kz, i64 %.0139409 ; 3 uses
  %i.lb = load float, ptr %i.la, align 4, !tbaa !129
  %i.lc = fptosi float %i.lb to i32
  %i.ld = getelementptr inbounds nuw i8, ptr %i.la, i64 4 ; 2 uses
  %i.le = load float, ptr %i.ld, align 4, !tbaa !131
  %i.lf = fptosi float %i.le to i32
  %i.lg = invoke noundef zeroext i1 @_ZN2cv11xfeatures2d15BriskScaleSpace7isMax2DEiii(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %i.gx, i32 noundef %i.lc, i32 noundef %i.lf)
          to label %bb.bt unwind label %.loopexit330

6:                                                ; preds = %.lr.ph410.preheader
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.26, i64 noundef %indvars.iv500, i64 noundef %i.ah) #27
          to label %.noexc231 unwind label %.loopexit.split-lp331

.noexc231:                                        ; preds = %6
  unreachable

bb.bt:                                            ; preds = %bb.bs
  br i1 %i.lg, label %bb.bu, label %bb.cc

.loopexit330:                                     ; preds = %bb.bs
  %lpad.loopexit332 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ce

.loopexit.split-lp331:                            ; preds = %6
  %lpad.loopexit.split-lp333 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ce

bb.bu:                                            ; preds = %bb.bt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #24
  store i8 0, ptr %i.k, align 1, !tbaa !204
  %i.lh = load float, ptr %i.la, align 4, !tbaa !129
  %i.li = fptosi float %i.lh to i32
  %i.lj = load float, ptr %i.ld, align 4, !tbaa !131
  %i.lk = fptosi float %i.lj to i32
  %i.ll = invoke noundef float @_ZNK2cv11xfeatures2d15BriskScaleSpace8refine3DEiiiRfS2_S2_Rb(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %i.gx, i32 noundef %i.li, i32 noundef %i.lk, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull align 4 dereferenceable(4) %i.e, ptr noundef nonnull align 1 dereferenceable(1) %i.k)
          to label %bb.bv unwind label %bb.bw     ; 3 uses

bb.bv:                                            ; preds = %bb.bu
  %i.lm = load i8, ptr %i.k, align 1, !tbaa !204, !range !206, !noundef !207
  %i.ln = trunc nuw i8 %i.lm to i1
  %i.lo = fcmp ogt float %i.ll, %i.ad
  %or.cond = and i1 %i.lo, %i.ln
  br i1 %or.cond, label %bb.bx, label %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE9push_backEOS1_.exit248

bb.bw:                                            ; preds = %bb.bu
  %i.lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.cd

bb.bx:                                            ; preds = %bb.bv
  %i.lq = load float, ptr %i.c, align 4, !tbaa !32 ; 2 uses
  %i.lr = load float, ptr %i.d, align 4, !tbaa !32 ; 2 uses
  %i.ls = load float, ptr %i.e, align 4, !tbaa !32
  %i.lt = fmul float %i.ls, 1.200000e+01          ; 2 uses
  %i.lu = load ptr, ptr %i.l, align 8, !tbaa !120 ; 12 uses
  %i.lv = load ptr, ptr %i.q, align 8, !tbaa !184
  %.not.i.i233 = icmp eq ptr %i.lu, %i.lv
  br i1 %.not.i.i233, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  store float %i.lq, ptr %i.lu, align 4, !tbaa !32
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.lu, i64 4
  store float %i.lr, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !32
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.lu, i64 8
  store float %i.lt, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !32
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.lu, i64 12
  store float -1.000000e+00, ptr %.sroa.8.0..sroa_idx, align 4, !tbaa !32
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.lu, i64 16
  store float %i.ll, ptr %.sroa.9.0..sroa_idx, align 4, !tbaa !32
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.lu, i64 20
  store i32 %i.gx, ptr %.sroa.10.0..sroa_idx, align 4, !tbaa !33
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.lu, i64 24
  store i32 -1, ptr %.sroa.11.0..sroa_idx, align 4, !tbaa !33
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lu, i64 28
  store ptr %i.lw, ptr %i.l, align 8, !tbaa !120
  br label %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE9push_backEOS1_.exit248

bb.bz:                                            ; preds = %bb.bx
  %i.lx = load ptr, ptr %2, align 8, !tbaa !123   ; 5 uses
  %i.ly = ptrtoint ptr %i.lu to i64
  %i.lz = ptrtoint ptr %i.lx to i64
  %i.ma = sub i64 %i.ly, %i.lz                    ; 4 uses
  %i.mb = icmp eq i64 %i.ma, 9223372036854775800
  br i1 %i.mb, label %bb.ca, label %_ZNKSt6vectorIN2cv8KeyPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i234

bb.ca:                                            ; preds = %bb.bz
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #27
          to label %.noexc246 unwind label %.loopexit.split-lp336

.noexc246:                                        ; preds = %bb.ca
  unreachable

_ZNKSt6vectorIN2cv8KeyPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i234: ; preds = %bb.bz
  %i.mc = sdiv exact i64 %i.ma, 28                ; 3 uses
  %.sroa.speculated.i.i.i.i235 = call i64 @llvm.umax.i64(i64 %i.mc, i64 1)
  %i.md = add nsw i64 %.sroa.speculated.i.i.i.i235, %i.mc ; 2 uses
  %i.me = icmp ult i64 %i.md, %i.mc
  %i.mf = call i64 @llvm.umin.i64(i64 %i.md, i64 329406144173384850)
  %i.mg = select i1 %i.me, i64 329406144173384850, i64 %i.mf ; 3 uses
  %.not.i.i.i.i236 = icmp ne i64 %i.mg, 0
  call void @llvm.assume(i1 %.not.i.i.i.i236)
  %i.mh = mul nuw nsw i64 %i.mg, 28
  %i.mi = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.mh) #25
          to label %.noexc247 unwind label %.loopexit335 ; 5 uses

.noexc247:                                        ; preds = %_ZNKSt6vectorIN2cv8KeyPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i234
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 %i.ma ; 7 uses
  store float %i.lq, ptr %i.mj, align 4, !tbaa !32
  %.sroa.6.0..sroa_idx258 = getelementptr inbounds nuw i8, ptr %i.mj, i64 4
  store float %i.lr, ptr %.sroa.6.0..sroa_idx258, align 4, !tbaa !32
  %.sroa.7.0..sroa_idx260 = getelementptr inbounds nuw i8, ptr %i.mj, i64 8
  store float %i.lt, ptr %.sroa.7.0..sroa_idx260, align 4, !tbaa !32
  %.sroa.8.0..sroa_idx262 = getelementptr inbounds nuw i8, ptr %i.mj, i64 12
  store float -1.000000e+00, ptr %.sroa.8.0..sroa_idx262, align 4, !tbaa !32
  %.sroa.9.0..sroa_idx264 = getelementptr inbounds nuw i8, ptr %i.mj, i64 16
  store float %i.ll, ptr %.sroa.9.0..sroa_idx264, align 4, !tbaa !32
  %.sroa.10.0..sroa_idx266 = getelementptr inbounds nuw i8, ptr %i.mj, i64 20
  store i32 %i.gx, ptr %.sroa.10.0..sroa_idx266, align 4, !tbaa !33
  %.sroa.11.0..sroa_idx268 = getelementptr inbounds nuw i8, ptr %i.mj, i64 24
  store i32 -1, ptr %.sroa.11.0..sroa_idx268, align 4, !tbaa !33
  %.not10.i.i.i.i.i.i237 = icmp eq ptr %i.lx, %i.lu
  br i1 %.not10.i.i.i.i.i.i237, label %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i242, label %.lr.ph.i.i.i.i.i.i238

.lr.ph.i.i.i.i.i.i238:                            ; preds = %.noexc247, %.lr.ph.i.i.i.i.i.i238
  %.012.i.i.i.i.i.i239 = phi ptr [ %i.ml, %.lr.ph.i.i.i.i.i.i238 ], [ %i.mi, %.noexc247 ] ; 2 uses
  %.0911.i.i.i.i.i.i240 = phi ptr [ %i.mk, %.lr.ph.i.i.i.i.i.i238 ], [ %i.lx, %.noexc247 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.012.i.i.i.i.i.i239, ptr noundef nonnull align 4 dereferenceable(28) %.0911.i.i.i.i.i.i240, i64 28, i1 false), !tbaa.struct !133, !alias.scope !219
  %i.mk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i240, i64 28 ; 2 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i239, i64 28 ; 2 uses
  %.not.i.i.i.i.i.i241 = icmp eq ptr %i.mk, %i.lu
  br i1 %.not.i.i.i.i.i.i241, label %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i242, label %.lr.ph.i.i.i.i.i.i238, !llvm.loop !189

_ZNSt6vectorIN2cv8KeyPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i242: ; preds = %.lr.ph.i.i.i.i.i.i238, %.noexc247
  %.0.lcssa.i.i.i.i.i.i243 = phi ptr [ %i.mi, %.noexc247 ], [ %i.ml, %.lr.ph.i.i.i.i.i.i238 ]
  %i.mm = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i243, i64 28
  %.not.i23.i.i.i244 = icmp eq ptr %i.lx, null
  br i1 %.not.i23.i.i.i244, label %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i245, label %bb.cb

bb.cb:                                            ; preds = %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i242
  call void @_ZdlPvm(ptr noundef nonnull %i.lx, i64 noundef %i.ma) #26
  br label %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i245

_ZNSt6vectorIN2cv8KeyPointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i245: ; preds = %bb.cb, %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i242
  store ptr %i.mi, ptr %2, align 8, !tbaa !123
  store ptr %i.mm, ptr %i.l, align 8, !tbaa !120
  %i.mn = getelementptr inbounds nuw [28 x i8], ptr %i.mi, i64 %i.mg
  store ptr %i.mn, ptr %i.q, align 8, !tbaa !184
  br label %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE9push_backEOS1_.exit248

.loopexit335:                                     ; preds = %_ZNKSt6vectorIN2cv8KeyPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i234
  %lpad.loopexit337 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cd

.loopexit.split-lp336:                            ; preds = %bb.ca
  %lpad.loopexit.split-lp338 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cd

_ZNSt6vectorIN2cv8KeyPointESaIS1_EE9push_backEOS1_.exit248: ; preds = %bb.by, %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i245, %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #24
  br label %bb.cc

bb.cc:                                            ; preds = %bb.bt, %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE9push_backEOS1_.exit248
  %i.mo = add nuw i64 %.0139409, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.mo, %i.gs
  br i1 %exitcond.not, label %.loopexit317, label %bb.bs, !llvm.loop !223

bb.cd:                                            ; preds = %.loopexit335, %.loopexit.split-lp336, %bb.bw
  %.pn = phi { ptr, i32 } [ %i.lp, %bb.bw ], [ %lpad.loopexit337, %.loopexit335 ], [ %lpad.loopexit.split-lp338, %.loopexit.split-lp336 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #24
  br label %bb.ce

.loopexit317:                                     ; preds = %bb.cc, %bb.bg, %.preheader328, %.preheader
  %indvars.iv.next501 = add nuw nsw i64 %indvars.iv500, 1 ; 2 uses
  %i.mp = load i32, ptr %0, align 8, !tbaa !153   ; 2 uses
  %i.mq = sext i32 %i.mp to i64
  %i.mr = icmp slt i64 %indvars.iv.next501, %i.mq
  br i1 %i.mr, label %bb.ak, label %._crit_edge417, !llvm.loop !224

bb.ce:                                            ; preds = %.loopexit330, %.loopexit.split-lp331, %.loopexit318, %.loopexit.split-lp319, %bb.cd, %bb.br
  %.pn173.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp321, %.loopexit.split-lp319 ], [ %.pn173.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.br ], [ %.pn, %bb.cd ], [ %lpad.loopexit320, %.loopexit318 ], [ %lpad.loopexit332, %.loopexit330 ], [ %lpad.loopexit.split-lp333, %.loopexit.split-lp331 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  br label %bb.ch

.loopexit:                                        ; preds = %bb.y, %bb.i, %._crit_edge417
  %.pr.i540 = phi ptr [ %.pr.i539542544, %._crit_edge417 ], [ %i.al, %bb.i ], [ %i.al, %bb.y ] ; 5 uses
  %i.ms = phi ptr [ %i.gh, %._crit_edge417 ], [ %i.am, %bb.i ], [ %i.am, %bb.y ] ; 3 uses
  %.not4.i.i.i = icmp eq ptr %.pr.i540, %i.ms
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6vectorIN2cv8KeyPointESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.loopexit, %_ZSt8_DestroyISt6vectorIN2cv8KeyPointESaIS2_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.mz, %_ZSt8_DestroyISt6vectorIN2cv8KeyPointESaIS2_EEEvPT_.exit.i.i.i ], [ %.pr.i540, %.loopexit ] ; 3 uses
  %i.mt = load ptr, ptr %.05.i.i.i, align 8, !tbaa !123 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.mt, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIN2cv8KeyPointESaIS2_EEEvPT_.exit.i.i.i, label %bb.cf

bb.cf:                                            ; preds = %.lr.ph.i.i.i
  %i.mu = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.mv = load ptr, ptr %i.mu, align 8, !tbaa !184
  %i.mw = ptrtoint ptr %i.mv to i64
  %i.mx = ptrtoint ptr %i.mt to i64
  %i.my = sub i64 %i.mw, %i.mx
  call void @_ZdlPvm(ptr noundef nonnull %i.mt, i64 noundef %i.my) #26
  br label %_ZSt8_DestroyISt6vectorIN2cv8KeyPointESaIS2_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorIN2cv8KeyPointESaIS2_EEEvPT_.exit.i.i.i: ; preds = %bb.cf, %.lr.ph.i.i.i
  %i.mz = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.mz, %i.ms
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt6vectorIN2cv8KeyPointESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !225

_ZSt8_DestroyIPSt6vectorIN2cv8KeyPointESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyISt6vectorIN2cv8KeyPointESaIS2_EEEvPT_.exit.i.i.i, %.loopexit
  %.not.i.i1.i = icmp eq ptr %.pr.i540, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIS_IN2cv8KeyPointESaIS1_EESaIS3_EED2Ev.exit, label %bb.cg

bb.cg:                                            ; preds = %_ZSt8_DestroyIPSt6vectorIN2cv8KeyPointESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i
  %i.na = ptrtoint ptr %i.ms to i64
  %i.nb = ptrtoint ptr %.pr.i540 to i64
  %i.nc = sub i64 %i.na, %i.nb
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i540, i64 noundef %i.nc) #26
  br label %_ZNSt6vectorIS_IN2cv8KeyPointESaIS1_EESaIS3_EED2Ev.exit

_ZNSt6vectorIS_IN2cv8KeyPointESaIS1_EESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIN2cv8KeyPointESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i, %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  ret void

bb.ch:                                            ; preds = %.loopexit311, %bb.aa, %bb.ac, %bb.ae, %bb.ag, %bb.ai, %bb.ah, %bb.af, %bb.ad, %bb.ab, %bb.z, %bb.ce, %bb.h, %bb.e
  %.pn197 = phi { ptr, i32 } [ %i.cp, %bb.h ], [ %i.as, %bb.e ], [ %.pn173.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.ce ], [ %i.ge, %bb.ah ], [ %i.fw, %bb.z ], [ %i.fx, %bb.aa ], [ %i.fy, %bb.ab ], [ %i.fz, %bb.ac ], [ %i.ga, %bb.ad ], [ %i.gb, %bb.ae ], [ %i.gc, %bb.af ], [ %i.gd, %bb.ag ], [ %lpad.phi316, %bb.ai ], [ %lpad.loopexit, %.loopexit311 ]
  call void @_ZNSt6vectorIS_IN2cv8KeyPointESaIS1_EESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  resume { ptr, i32 } %.pn197
}

declare void @_ZN2cv15KeyPointsFilter15runByPixelsMaskERSt6vectorINS_8KeyPointESaIS2_EERKNS_3MatE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN2cv11xfeatures2d15BriskScaleSpaceC2Ei(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(32) initializes((0, 4), (8, 32)) %0, i32 noundef %1) unnamed_addr #13 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %i.b = icmp eq i32 %1, 0
  %i.c = shl nsw i32 %1, 1
  %storemerge = select i1 %i.b, i32 1, i32 %i.c
  store i32 %storemerge, ptr %0, align 8, !tbaa !153
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2cv11xfeatures2d15BriskScaleSpaceD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZNSt6vectorIN2cv11xfeatures2d10BriskLayerESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.a) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN2cv11xfeatures2d10BriskLayerESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !168    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !169  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN2cv11xfeatures2d10BriskLayerES2_EvT_S4_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN2cv11xfeatures2d10BriskLayerEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.v, %_ZSt8_DestroyIN2cv11xfeatures2d10BriskLayerEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 432
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !170  ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIN2cv11xfeatures2d10BriskLayerEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load atomic i64, ptr %i.f acquire, align 8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967297
  %i.i = trunc i64 %i.g to i32                    ; 2 uses
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.f, align 8, !tbaa !171
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.j, align 4, !tbaa !173
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #24, !inline_history !226
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #24, !inline_history !226
  br label %_ZSt8_DestroyIN2cv11xfeatures2d10BriskLayerEEvPT_.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = add nsw i32 %i.i, -1
  store i32 %i.r, ptr %i.f, align 8, !tbaa !33
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.s = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.i, %bb.e ], [ %i.s, %bb.f ]
  %i.t = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.t, label %bb.g, label %_ZSt8_DestroyIN2cv11xfeatures2d10BriskLayerEEvPT_.exit.i.i, !prof !34

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #24
  br label %_ZSt8_DestroyIN2cv11xfeatures2d10BriskLayerEEvPT_.exit.i.i

_ZSt8_DestroyIN2cv11xfeatures2d10BriskLayerEEvPT_.exit.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.c, %.lr.ph.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 208
  tail call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.u) #24
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(640) %.05.i.i) #24
  %i.v = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 640 ; 2 uses
  %.not.i.i = icmp eq ptr %i.v, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN2cv11xfeatures2d10BriskLayerES2_EvT_S4_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !175

_ZSt8_DestroyIPN2cv11xfeatures2d10BriskLayerES2_EvT_S4_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN2cv11xfeatures2d10BriskLayerEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !168
  br label %_ZSt8_DestroyIPN2cv11xfeatures2d10BriskLayerES2_EvT_S4_RSaIT0_E.exit

_ZSt8_DestroyIPN2cv11xfeatures2d10BriskLayerES2_EvT_S4_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN2cv11xfeatures2d10BriskLayerES2_EvT_S4_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.w = phi ptr [ %.pr, %_ZSt8_DestroyIPN2cv11xfeatures2d10BriskLayerES2_EvT_S4_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.w, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN2cv11xfeatures2d10BriskLayerESaIS2_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPN2cv11xfeatures2d10BriskLayerES2_EvT_S4_RSaIT0_E.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !176
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ab) #26
  br label %_ZNSt12_Vector_baseIN2cv11xfeatures2d10BriskLayerESaIS2_EED2Ev.exit

_ZNSt12_Vector_baseIN2cv11xfeatures2d10BriskLayerESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN2cv11xfeatures2d10BriskLayerES2_EvT_S4_RSaIT0_E.exit, %bb.h
  ret void
}

declare void @_ZNK2cv3Mat5cloneEv(ptr dead_on_unwind writable sret(%"class.cv::Mat") align 8, ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv11xfeatures2d10BriskLayerD2Ev(ptr noundef nonnull align 8 dead_on_return(640) dereferenceable(640) %0) unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !170  ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN2cv11xfeatures2d20AgastFeatureDetectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !171
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
end_hunk_0
