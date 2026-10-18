Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/wtest?download=true
inline.NumInlined: 90
inline.NumDeleted: 46
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@main:bb.a

.noexc131:                                        ; preds = %bb.m
  %i.cu = load ptr, ptr %i.h, align 8, !tbaa !11
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 80
  %i.cw = load ptr, ptr %i.cv, align 8
  invoke void %i.cw(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull @.str.1, ptr noundef nonnull %i.a, i32 noundef 3)
          to label %.noexc132 unwind label %bb.v, !inline_history !57

.noexc132:                                        ; preds = %.noexc131
  %i.cx = load ptr, ptr %i.h, align 8, !tbaa !11
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 56
  %i.cz = load ptr, ptr %i.cy, align 8
  invoke void %i.cz(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull @.str.2, ptr noundef nonnull %i.b, i32 noundef 4)
          to label %_Z9writeMetaPN4Ptex4v2_410PtexWriterEPKcPdiPsiS4_.exit unwind label %bb.v, !inline_history !57

bb.n:                                             ; preds = %.preheader190.preheader, %bb.o
  %indvars.iv204 = phi i64 [ 0, %.preheader190.preheader ], [ %indvars.iv.next205, %bb.o ] ; 5 uses
  call void @llvm.memset.p0.i64(ptr align 1 %i.bm, i8 0, i64 %i.bl, i1 false)
  %i.da = getelementptr inbounds nuw [2 x i8], ptr @_ZZ4mainE3res, i64 %indvars.iv204 ; 3 uses
  %i.db = load i8, ptr %i.da, align 2, !tbaa !55  ; 4 uses
  %i.dc = zext nneg i8 %i.db to i32               ; 2 uses
  %i.dd = shl nuw i32 1, %i.dc                    ; 4 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.da, i64 1
  %i.df = load i8, ptr %i.de, align 1, !tbaa !56  ; 2 uses
  %i.dg = zext nneg i8 %i.df to i32
  %i.dh = shl nuw i32 1, %i.dg                    ; 2 uses
  %.not198 = icmp eq i8 %i.df, 31
  br i1 %.not198, label %._crit_edge195.split, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.n
  %.not199 = icmp eq i8 %i.db, 31
  %i.di = add nsw i32 %i.dd, -1
  %i.dj = uitofp nneg i32 %i.di to float          ; 7 uses
  %i.dk = add nsw i32 %i.dh, -1
  %i.dl = uitofp nneg i32 %i.dk to float
  br i1 %.not199, label %._crit_edge195.split, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %smax = call i32 @llvm.smax.i32(i32 %i.dd, i32 1)
  %smax202 = call i32 @llvm.smax.i32(i32 %i.dh, i32 1)
  %min.iters.check = icmp slt i32 %i.dd, 8
  %i.dm = and i32 %smax, 2147483640
  %n.vec = zext nneg i32 %i.dm to i64
  %broadcast.splatinsert229 = insertelement <8 x float> poison, float %i.dj, i64 0
  %broadcast.splat230 = shufflevector <8 x float> %broadcast.splatinsert229, <8 x float> poison, <8 x i32> zeroinitializer
  %exitcond.not = icmp slt i32 %i.dd, 2
  %i.dn = fdiv nnan float 1.000000e+00, %i.dj
  %i.do = fmul nnan float %i.dn, 6.553500e+04
  %i.dp = fptoui float %i.do to i16
  %exitcond.not.1 = icmp eq i8 %i.db, 1
  %i.dq = fdiv nnan float 2.000000e+00, %i.dj
  %i.dr = fmul nnan float %i.dq, 6.553500e+04
  %i.ds = fptoui float %i.dr to i16
  %i.dt = fdiv nnan float 3.000000e+00, %i.dj
  %i.du = fmul nnan float %i.dt, 6.553500e+04
  %i.dv = fptoui float %i.du to i16
  %exitcond.not.3 = icmp eq i8 %i.db, 2
  %i.dw = fdiv nnan float 4.000000e+00, %i.dj
  %i.dx = fmul nnan float %i.dw, 6.553500e+04
  %i.dy = fptoui float %i.dx to i16
  %i.dz = fdiv nnan float 5.000000e+00, %i.dj
  %i.ea = fmul nnan float %i.dz, 6.553500e+04
  %i.eb = fptoui float %i.ea to i16
  %i.ec = fdiv nnan float 6.000000e+00, %i.dj
  %i.ed = fmul nnan float %i.ec, 6.553500e+04
  %i.ee = fptoui float %i.ed to i16
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.0115194 = phi i32 [ %i.ey, %._crit_edge ], [ 0, %.preheader.preheader ] ; 11 uses
  %i.ef = shl i32 %.0115194, %i.dc
  %i.eg = uitofp nneg i32 %.0115194 to float
  %i.eh = fdiv float %i.eg, %i.dl
  %i.ei = fmul float %i.eh, 6.553500e+04
  %i.ej = fptoui float %i.ei to i16               ; 8 uses
  %i.ek = sext i32 %i.ef to i64                   ; 8 uses
  br i1 %min.iters.check, label %scalar.ph, label %vector.ph

vector.ph:                                        ; preds = %.preheader
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %.0115194, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert227 = insertelement <8 x i16> poison, i16 %i.ej, i64 0
  %broadcast.splat228 = shufflevector <8 x i16> %broadcast.splatinsert227, <8 x i16> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %i.el = xor <8 x i32> %broadcast.splat, %vec.ind
  %i.em = uitofp nneg <8 x i32> %vec.ind to <8 x float>
  %i.en = fdiv <8 x float> %i.em, %broadcast.splat230
  %i.eo = fmul <8 x float> %i.en, splat (float 6.553500e+04)
  %i.ep = fptoui <8 x float> %i.eo to <8 x i16>
  %i.eq = add nsw i64 %index, %i.ek
  %i.er = mul nsw i64 %i.eq, 6
  %i.es = getelementptr inbounds i8, ptr %i.bm, i64 %i.er
  %i.et = trunc <8 x i32> %i.el to <8 x i1>
  %i.eu = sext <8 x i1> %i.et to <8 x i16>
  %i.ev = shufflevector <8 x i16> %i.ep, <8 x i16> %broadcast.splat228, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ew = shufflevector <8 x i16> %i.eu, <8 x i16> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <16 x i16> %i.ev, <16 x i16> %i.ew, <24 x i32> <i32 0, i32 8, i32 16, i32 1, i32 9, i32 17, i32 2, i32 10, i32 18, i32 3, i32 11, i32 19, i32 4, i32 12, i32 20, i32 5, i32 13, i32 21, i32 6, i32 14, i32 22, i32 7, i32 15, i32 23>
  store <24 x i16> %interleaved.vec, ptr %i.es, align 2, !tbaa !59
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <8 x i32> %vec.ind, splat (i32 8)
  %i.ex = icmp eq i64 %index.next, %n.vec
  br i1 %i.ex, label %._crit_edge, label %vector.body, !llvm.loop !49

._crit_edge:                                      ; preds = %vector.body, %scalar.ph, %scalar.ph.1, %scalar.ph.2, %scalar.ph.4
  %i.ey = add nuw nsw i32 %.0115194, 1            ; 2 uses
  %exitcond203.not = icmp eq i32 %i.ey, %smax202
  br i1 %exitcond203.not, label %._crit_edge195.split, label %.preheader, !llvm.loop !50

scalar.ph:                                        ; preds = %.preheader
  %.idx = mul nsw i64 %i.ek, 6
  %i.ez = getelementptr inbounds i8, ptr %i.bm, i64 %.idx ; 3 uses
  store i16 0, ptr %i.ez, align 2, !tbaa !59
  %i.fa = getelementptr i8, ptr %i.ez, i64 2
  store i16 %i.ej, ptr %i.fa, align 2, !tbaa !59
  %i.fb = trunc i32 %.0115194 to i1
  %i.fc = sext i1 %i.fb to i16
  %i.fd = getelementptr i8, ptr %i.ez, i64 4
  store i16 %i.fc, ptr %i.fd, align 2, !tbaa !59
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph.1

scalar.ph.1:                                      ; preds = %scalar.ph
  %i.fe = mul nsw i64 %i.ek, 6
  %i.ff = getelementptr i8, ptr %i.bm, i64 %i.fe  ; 3 uses
  %i.fg = getelementptr i8, ptr %i.ff, i64 6
  store i16 %i.dp, ptr %i.fg, align 2, !tbaa !59
  %i.fh = getelementptr i8, ptr %i.ff, i64 8
  store i16 %i.ej, ptr %i.fh, align 2, !tbaa !59
  %i.fi = trunc i32 %.0115194 to i16
  %i.fj = or i16 %i.fi, -2
  %.neg = add nsw i16 %i.fj, 1
  %i.fk = getelementptr i8, ptr %i.ff, i64 10
  store i16 %.neg, ptr %i.fk, align 2, !tbaa !59
  br i1 %exitcond.not.1, label %._crit_edge, label %scalar.ph.2

scalar.ph.2:                                      ; preds = %scalar.ph.1
  %i.fl = mul nsw i64 %i.ek, 6
  %i.fm = getelementptr i8, ptr %i.bm, i64 %i.fl  ; 3 uses
  %i.fn = getelementptr i8, ptr %i.fm, i64 12
  store i16 %i.ds, ptr %i.fn, align 2, !tbaa !59
  %i.fo = getelementptr i8, ptr %i.fm, i64 14
  store i16 %i.ej, ptr %i.fo, align 2, !tbaa !59
  %i.fp = trunc i32 %.0115194 to i1
  %i.fq = sext i1 %i.fp to i16
  %i.fr = getelementptr i8, ptr %i.fm, i64 16
  store i16 %i.fq, ptr %i.fr, align 2, !tbaa !59
  %i.fs = mul nsw i64 %i.ek, 6
  %i.ft = getelementptr i8, ptr %i.bm, i64 %i.fs  ; 3 uses
  %i.fu = getelementptr i8, ptr %i.ft, i64 18
  store i16 %i.dv, ptr %i.fu, align 2, !tbaa !59
  %i.fv = getelementptr i8, ptr %i.ft, i64 20
  store i16 %i.ej, ptr %i.fv, align 2, !tbaa !59
  %i.fw = trunc i32 %.0115194 to i16
  %i.fx = or i16 %i.fw, -2
  %.neg240 = add nsw i16 %i.fx, 1
  %i.fy = getelementptr i8, ptr %i.ft, i64 22
  store i16 %.neg240, ptr %i.fy, align 2, !tbaa !59
  br i1 %exitcond.not.3, label %._crit_edge, label %scalar.ph.4

scalar.ph.4:                                      ; preds = %scalar.ph.2
  %i.fz = mul nsw i64 %i.ek, 6
  %i.ga = getelementptr i8, ptr %i.bm, i64 %i.fz  ; 3 uses
  %i.gb = getelementptr i8, ptr %i.ga, i64 24
  store i16 %i.dy, ptr %i.gb, align 2, !tbaa !59
  %i.gc = getelementptr i8, ptr %i.ga, i64 26
  store i16 %i.ej, ptr %i.gc, align 2, !tbaa !59
  %i.gd = trunc i32 %.0115194 to i1
  %i.ge = sext i1 %i.gd to i16
  %i.gf = getelementptr i8, ptr %i.ga, i64 28
  store i16 %i.ge, ptr %i.gf, align 2, !tbaa !59
  %i.gg = mul nsw i64 %i.ek, 6
  %i.gh = getelementptr i8, ptr %i.bm, i64 %i.gg  ; 3 uses
  %i.gi = getelementptr i8, ptr %i.gh, i64 30
  store i16 %i.eb, ptr %i.gi, align 2, !tbaa !59
  %i.gj = getelementptr i8, ptr %i.gh, i64 32
  store i16 %i.ej, ptr %i.gj, align 2, !tbaa !59
  %i.gk = trunc i32 %.0115194 to i16
  %i.gl = or i16 %i.gk, -2
  %.neg241 = add nsw i16 %i.gl, 1
  %i.gm = getelementptr i8, ptr %i.gh, i64 34
  store i16 %.neg241, ptr %i.gm, align 2, !tbaa !59
  %i.gn = mul nsw i64 %i.ek, 6
  %i.go = getelementptr i8, ptr %i.bm, i64 %i.gn  ; 3 uses
  %i.gp = getelementptr i8, ptr %i.go, i64 36
  store i16 %i.ee, ptr %i.gp, align 2, !tbaa !59
  %i.gq = getelementptr i8, ptr %i.go, i64 38
  store i16 %i.ej, ptr %i.gq, align 2, !tbaa !59
  %i.gr = trunc i32 %.0115194 to i1
  %i.gs = sext i1 %i.gr to i16
  %i.gt = getelementptr i8, ptr %i.go, i64 40
  store i16 %i.gs, ptr %i.gt, align 2, !tbaa !59
  br label %._crit_edge

._crit_edge195.split:                             ; preds = %._crit_edge, %.preheader.lr.ph, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %.sroa.0.0.copyload = load i16, ptr %i.da, align 2, !tbaa !19
  %i.gu = getelementptr inbounds nuw [16 x i8], ptr @_ZZ4mainE8adjfaces, i64 %indvars.iv204
  %i.gv = getelementptr inbounds nuw [16 x i8], ptr @_ZZ4mainE8adjedges, i64 %indvars.iv204
  store i16 %.sroa.0.0.copyload, ptr %3, align 4, !tbaa !19
  store i8 0, ptr %i.bn, align 1, !tbaa !64
  %i.gw = load <4 x i32>, ptr %i.gu, align 16, !tbaa !44
  store <4 x i32> %i.gw, ptr %i.bo, align 4, !tbaa !44
  %4 = load <4 x i32>, ptr %i.gv, align 16, !tbaa !44
  %5 = shl <4 x i32> %4, <i32 0, i32 2, i32 4, i32 6>
  %6 = and <4 x i32> %5, <i32 3, i32 12, i32 48, i32 -1>
  %7 = call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %6)
  %i.gx = trunc i32 %7 to i8
  store i8 %i.gx, ptr %i.bp, align 2, !tbaa !65
  %i.gy = load ptr, ptr %i.h, align 8, !tbaa !11
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 96
  %i.ha = load ptr, ptr %i.gz, align 8
  %i.hb = trunc nuw nsw i64 %indvars.iv204 to i32
  %i.hc = invoke noundef zeroext i1 %i.ha(ptr noundef nonnull align 8 dereferenceable(8) %i.h, i32 noundef %i.hb, ptr noundef nonnull align 4 dereferenceable(20) %3, ptr noundef %i.bm, i32 noundef 0)
          to label %bb.o unwind label %bb.p       ; 0 uses

bb.o:                                             ; preds = %._crit_edge195.split
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  %indvars.iv.next205 = add nuw nsw i64 %indvars.iv204, 1 ; 2 uses
  %exitcond207.not = icmp eq i64 %indvars.iv.next205, 9
  br i1 %exitcond207.not, label %bb.m, label %bb.n, !llvm.loop !51

bb.p:                                             ; preds = %._crit_edge195.split
  %i.hd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  br label %bb.ar

_Z9writeMetaPN4Ptex4v2_410PtexWriterEPKcPdiPsiS4_.exit: ; preds = %.noexc132
  %i.he = load ptr, ptr %i.h, align 8, !tbaa !11
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 112
  %i.hg = load ptr, ptr %i.hf, align 8
  %i.hh = invoke noundef zeroext i1 %i.hg(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.q unwind label %bb.v

bb.q:                                             ; preds = %_Z9writeMetaPN4Ptex4v2_410PtexWriterEPKcPdiPsiS4_.exit
  br i1 %i.hh, label %bb.w, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.hi = load ptr, ptr %2, align 8, !tbaa !20    ; 3 uses
  %.not.i134 = icmp eq ptr %i.hi, null
  br i1 %.not.i134, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.hj = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !11
  %i.hk = getelementptr i8, ptr %i.hj, i64 -24
  %i.hl = load i64, ptr %i.hk, align 8
  %i.hm = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.hl ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 32
  %i.ho = load i32, ptr %i.hn, align 8, !tbaa !29
  %i.hp = or i32 %i.ho, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.hm, i32 noundef %i.hp)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit137 unwind label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.hq = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.hi) #16
  %i.hr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull %i.hi, i64 noundef %i.hq)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit137 unwind label %bb.v ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit137: ; preds = %bb.s, %bb.t
  %i.hs = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !11
  %i.ht = getelementptr i8, ptr %i.hs, i64 -24
  %i.hu = load i64, ptr %i.ht, align 8
  %i.hv = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.hu
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 240
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !37 ; 5 uses
  %.not.i.i.i162 = icmp eq ptr %i.hx, null
  br i1 %.not.i.i.i162, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i163

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i163: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit137
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 56
  %i.hz = load i8, ptr %i.hy, align 8, !tbaa !43
  %.not.i1.i.i164 = icmp eq i8 %i.hz, 0
  br i1 %.not.i1.i.i164, label %bb.u, label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i176.invoke.sink.split

bb.u:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i163
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.hx)
          to label %.noexc179.invoke unwind label %bb.v

bb.v:                                             ; preds = %.noexc179.invoke, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i176.invoke, %.invoke, %.noexc181.invoke, %bb.af, %bb.u, %bb.am, %.noexc149, %bb.aj, %bb.ae, %bb.ad, %.noexc140, %bb.aa, %bb.t, %bb.s, %.noexc132, %.noexc131, %bb.m, %bb.ao, %bb.an, %bb.al, %_Z9writeMetaPN4Ptex4v2_410PtexWriterEPKcPdiPsiS4_.exit151, %middle.block238, %bb.ah, %bb.ag, %_Z9writeMetaPN4Ptex4v2_410PtexWriterEPKcPdiPsiS4_.exit142, %bb.z, %bb.x, %bb.w, %_Z9writeMetaPN4Ptex4v2_410PtexWriterEPKcPdiPsiS4_.exit
  %i.ia = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.ar

bb.w:                                             ; preds = %bb.q
  %i.ib = load ptr, ptr %i.h, align 8, !tbaa !11
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 16
  %i.id = load ptr, ptr %i.ic, align 8
  invoke void %i.id(ptr noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %bb.x unwind label %bb.v

bb.x:                                             ; preds = %bb.w
  %i.ie = invoke noundef zeroext i1 @_Z9checkMetaPKcS0_PdiPsiS0_(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull %i.a, i32 noundef 3, ptr noundef nonnull %i.b, i32 noundef 4, ptr noundef null)
          to label %bb.y unwind label %bb.v

bb.y:                                             ; preds = %bb.x
  br i1 %i.ie, label %bb.z, label %_ZNSolsEPFRSoS_E.exit139

bb.z:                                             ; preds = %bb.y
  %i.if = invoke noundef ptr @_ZN4Ptex4v2_410PtexWriter4editEPKcbNS0_8MeshTypeENS0_8DataTypeEiiiRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull @.str.5, i1 noundef zeroext true, i32 noundef 1, i32 noundef 1, i32 noundef 3, i32 noundef -1, i32 noundef 9, ptr noundef nonnull align 8 dereferenceable(32) %2, i1 noundef zeroext true)
          to label %bb.aa unwind label %bb.v      ; 8 uses

bb.aa:                                            ; preds = %bb.z
  %i.ig = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store double 0.000000e+00, ptr %i.ig, align 16, !tbaa !67
  %i.ih = load ptr, ptr %i.if, align 8, !tbaa !11
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 40
  %i.ij = load ptr, ptr %i.ii, align 8
  invoke void %i.ij(ptr noundef nonnull align 8 dereferenceable(8) %i.if, ptr noundef nonnull @.str, ptr noundef nonnull @.str.7)
          to label %.noexc140 unwind label %bb.v, !inline_history !57

.noexc140:                                        ; preds = %bb.aa
  %i.ik = load ptr, ptr %i.if, align 8, !tbaa !11
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 80
  %i.im = load ptr, ptr %i.il, align 8
  invoke void %i.im(ptr noundef nonnull align 8 dereferenceable(8) %i.if, ptr noundef nonnull @.str.1, ptr noundef nonnull %i.a, i32 noundef 3)
          to label %_Z9writeMetaPN4Ptex4v2_410PtexWriterEPKcPdiPsiS4_.exit142 unwind label %bb.v, !inline_history !57

_Z9writeMetaPN4Ptex4v2_410PtexWriterEPKcPdiPsiS4_.exit142: ; preds = %.noexc140
  %i.in = load ptr, ptr %i.if, align 8, !tbaa !11
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 112
  %i.ip = load ptr, ptr %i.io, align 8
  %i.iq = invoke noundef zeroext i1 %i.ip(ptr noundef nonnull align 8 dereferenceable(8) %i.if, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.ab unwind label %bb.v

bb.ab:                                            ; preds = %_Z9writeMetaPN4Ptex4v2_410PtexWriterEPKcPdiPsiS4_.exit142
  br i1 %i.iq, label %bb.ag, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ir = load ptr, ptr %2, align 8, !tbaa !20    ; 3 uses
  %.not.i143 = icmp eq ptr %i.ir, null
  br i1 %.not.i143, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.is = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !11
  %i.it = getelementptr i8, ptr %i.is, i64 -24
  %i.iu = load i64, ptr %i.it, align 8
  %i.iv = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.iu ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 32
  %i.ix = load i32, ptr %i.iw, align 8, !tbaa !29
  %i.iy = or i32 %i.ix, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.iv, i32 noundef %i.iy)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit146 unwind label %bb.v

bb.ae:                                            ; preds = %bb.ac
  %i.iz = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ir) #16
  %i.ja = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull %i.ir, i64 noundef %i.iz)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit146 unwind label %bb.v ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit146: ; preds = %bb.ad, %bb.ae
  %i.jb = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !11
  %i.jc = getelementptr i8, ptr %i.jb, i64 -24
  %i.jd = load i64, ptr %i.jc, align 8
  %i.je = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.jd
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 240
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !37 ; 5 uses
  %.not.i.i.i173 = icmp eq ptr %i.jg, null
  br i1 %.not.i.i.i173, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i174

.invoke:                                          ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit137, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit146
  invoke void @_ZSt16__throw_bad_castv() #17
          to label %.cont unwind label %bb.v

.cont:                                            ; preds = %.invoke
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i174: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit146
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 56
  %i.ji = load i8, ptr %i.jh, align 8, !tbaa !43
  %.not.i1.i.i175 = icmp eq i8 %i.ji, 0
  br i1 %.not.i1.i.i175, label %bb.af, label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i176.invoke.sink.split

bb.af:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i174
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.jg)
          to label %.noexc179.invoke unwind label %bb.v

.noexc179.invoke:                                 ; preds = %bb.af, %bb.u
  %.sink = phi ptr [ %i.hx, %bb.u ], [ %i.jg, %bb.af ] ; 2 uses
  %i.jj = load ptr, ptr %.sink, align 8, !tbaa !11
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 48
  %i.jl = load ptr, ptr %i.jk, align 8
  %i.jm = invoke noundef signext i8 %i.jl(ptr noundef nonnull align 8 dereferenceable(570) %.sink, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i176.invoke unwind label %bb.v, !inline_history !0

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i176.invoke.sink.split: ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i174, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i163
  %.sink226 = phi ptr [ %i.hx, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i163 ], [ %i.jg, %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i174 ]
  %i.jn = getelementptr inbounds nuw i8, ptr %.sink226, i64 67
  %i.jo = load i8, ptr %i.jn, align 1, !tbaa !19
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i176.invoke

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i176.invoke: ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i176.invoke.sink.split, %.noexc179.invoke
  %i.jp = phi i8 [ %i.jm, %.noexc179.invoke ], [ %i.jo, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i176.invoke.sink.split ]
  %i.jq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i8 noundef signext %i.jp)
          to label %.noexc181.invoke unwind label %bb.v

.noexc181.invoke:                                 ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i176.invoke
  %i.jr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.jq)
          to label %_ZNSolsEPFRSoS_E.exit139 unwind label %bb.v ; 0 uses

bb.ag:                                            ; preds = %bb.ab
  %i.js = load ptr, ptr %i.if, align 8, !tbaa !11
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 16
  %i.ju = load ptr, ptr %i.jt, align 8
  invoke void %i.ju(ptr noundef nonnull align 8 dereferenceable(8) %i.if)
          to label %bb.ah unwind label %bb.v

bb.ah:                                            ; preds = %bb.ag
  %i.jv = invoke noundef zeroext i1 @_Z9checkMetaPKcS0_PdiPsiS0_(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.7, ptr noundef nonnull %i.a, i32 noundef 3, ptr noundef nonnull %i.b, i32 noundef 4, ptr noundef null)
          to label %bb.ai unwind label %bb.v

bb.ai:                                            ; preds = %bb.ah
  br i1 %i.jv, label %vector.ph232, label %_ZNSolsEPFRSoS_E.exit139

vector.ph232:                                     ; preds = %bb.ai
  %i.jw = call noalias dereferenceable_or_null(4000) ptr @malloc(i64 noundef 4000) #21 ; 5 uses
  br label %vector.body233

vector.body233:                                   ; preds = %vector.body233.1, %vector.ph232
  %index234 = phi i64 [ 0, %vector.ph232 ], [ %index.next236.1, %vector.body233.1 ] ; 4 uses
  %vec.ind235 = phi <2 x i32> [ <i32 0, i32 1>, %vector.ph232 ], [ %vec.ind.next237.1, %vector.body233.1 ] ; 5 uses
  %step.add = add <2 x i32> %vec.ind235, splat (i32 2)
  %i.jx = uitofp nneg <2 x i32> %vec.ind235 to <2 x double>
  %i.jy = uitofp nneg <2 x i32> %step.add to <2 x double>
  %i.jz = getelementptr inbounds nuw [8 x i8], ptr %i.jw, i64 %index234 ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 16
  store <2 x double> %i.jx, ptr %i.jz, align 8, !tbaa !67
  store <2 x double> %i.jy, ptr %i.ka, align 8, !tbaa !67
  %i.kb = icmp eq i64 %index234, 496
  br i1 %i.kb, label %middle.block238, label %vector.body233.1

vector.body233.1:                                 ; preds = %vector.body233
  %vec.ind.next237 = add <2 x i32> %vec.ind235, splat (i32 4)
  %step.add.1 = add <2 x i32> %vec.ind235, splat (i32 6)
  %i.kc = uitofp nneg <2 x i32> %vec.ind.next237 to <2 x double>
  %i.kd = uitofp nneg <2 x i32> %step.add.1 to <2 x double>
  %i.ke = getelementptr inbounds nuw [8 x i8], ptr %i.jw, i64 %index234 ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 32
  %i.kg = getelementptr inbounds nuw i8, ptr %i.ke, i64 48
  store <2 x double> %i.kc, ptr %i.kf, align 8, !tbaa !67
  store <2 x double> %i.kd, ptr %i.kg, align 8, !tbaa !67
  %index.next236.1 = add nuw nsw i64 %index234, 8
  %vec.ind.next237.1 = add <2 x i32> %vec.ind235, splat (i32 8)
  br label %vector.body233

middle.block238:                                  ; preds = %vector.body233
  %i.kh = invoke noundef ptr @_ZN4Ptex4v2_410PtexWriter4editEPKcbNS0_8MeshTypeENS0_8DataTypeEiiiRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull @.str.5, i1 noundef zeroext false, i32 noundef 1, i32 noundef 1, i32 noundef 3, i32 noundef -1, i32 noundef 9, ptr noundef nonnull align 8 dereferenceable(32) %2, i1 noundef zeroext true)
          to label %bb.aj unwind label %bb.v      ; 8 uses

bb.aj:                                            ; preds = %middle.block238
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !11
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 80
  %i.kk = load ptr, ptr %i.kj, align 8
  invoke void %i.kk(ptr noundef nonnull align 8 dereferenceable(8) %i.kh, ptr noundef nonnull @.str.1, ptr noundef nonnull %i.jw, i32 noundef 500)
          to label %.noexc149 unwind label %bb.v, !inline_history !57

.noexc149:                                        ; preds = %bb.aj
  %i.kl = load ptr, ptr %i.kh, align 8, !tbaa !11
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 40
  %i.kn = load ptr, ptr %i.km, align 8
  invoke void %i.kn(ptr noundef nonnull align 8 dereferenceable(8) %i.kh, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.8)
          to label %_Z9writeMetaPN4Ptex4v2_410PtexWriterEPKcPdiPsiS4_.exit151 unwind label %bb.v, !inline_history !57

_Z9writeMetaPN4Ptex4v2_410PtexWriterEPKcPdiPsiS4_.exit151: ; preds = %.noexc149
  %i.ko = load ptr, ptr %i.kh, align 8, !tbaa !11
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 112
  %i.kq = load ptr, ptr %i.kp, align 8
  %i.kr = invoke noundef zeroext i1 %i.kq(ptr noundef nonnull align 8 dereferenceable(8) %i.kh, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.ak unwind label %bb.v

bb.ak:                                            ; preds = %_Z9writeMetaPN4Ptex4v2_410PtexWriterEPKcPdiPsiS4_.exit151
  br i1 %i.kr, label %bb.an, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ks = load ptr, ptr %2, align 8, !tbaa !20
  %i.kt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef %i.ks)
          to label %bb.am unwind label %bb.v

bb.am:                                            ; preds = %bb.al
  %i.ku = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %i.kt)
          to label %_ZNSolsEPFRSoS_E.exit139 unwind label %bb.v, !inline_history !52 ; 0 uses

bb.an:                                            ; preds = %bb.ak
  %i.kv = load ptr, ptr %i.kh, align 8, !tbaa !11
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 16
  %i.kx = load ptr, ptr %i.kw, align 8
  invoke void %i.kx(ptr noundef nonnull align 8 dereferenceable(8) %i.kh)
          to label %bb.ao unwind label %bb.v

bb.ao:                                            ; preds = %bb.an
  %i.ky = invoke noundef zeroext i1 @_Z9checkMetaPKcS0_PdiPsiS0_(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.7, ptr noundef nonnull %i.jw, i32 noundef 500, ptr noundef nonnull %i.b, i32 noundef 4, ptr noundef nonnull @.str.8)
          to label %bb.ap unwind label %bb.v

bb.ap:                                            ; preds = %bb.ao
  br i1 %i.ky, label %bb.aq, label %_ZNSolsEPFRSoS_E.exit139

bb.aq:                                            ; preds = %bb.ap
  call void @free(ptr noundef nonnull %i.jw) #16
  br label %_ZNSolsEPFRSoS_E.exit139

_ZNSolsEPFRSoS_E.exit139:                         ; preds = %.noexc181.invoke, %bb.am, %bb.ap, %bb.ai, %bb.y, %bb.aq
  %.0111 = phi i32 [ 0, %bb.aq ], [ 1, %.noexc181.invoke ], [ 1, %bb.ai ], [ 1, %bb.am ], [ 1, %bb.y ], [ 1, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %_ZNSolsEPFRSoS_E.exit

_ZNSolsEPFRSoS_E.exit:                            ; preds = %.noexc160, %_ZNSolsEPFRSoS_E.exit139
  %.1 = phi i32 [ %.0111, %_ZNSolsEPFRSoS_E.exit139 ], [ 1, %.noexc160 ]
  %i.kz = load ptr, ptr %2, align 8, !tbaa !20    ; 2 uses
  %i.la = icmp eq ptr %i.kz, %i.f
  br i1 %i.la, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSolsEPFRSoS_E.exit
  %i.lb = load i64, ptr %i.f, align 8, !tbaa !19
  %i.lc = add i64 %i.lb, 1
  call void @_ZdlPvm(ptr noundef %i.kz, i64 noundef %i.lc) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSolsEPFRSoS_E.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  ret i32 %.1

bb.ar:                                            ; preds = %bb.v, %bb.p, %bb.l
  %.pn126.pn = phi { ptr, i32 } [ %i.cq, %bb.l ], [ %i.ia, %bb.v ], [ %i.hd, %bb.p ]
  %i.ld = load ptr, ptr %2, align 8, !tbaa !20    ; 2 uses
  %i.le = icmp eq ptr %i.ld, %i.f
  br i1 %i.le, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i154

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i154: ; preds = %bb.ar
  %i.lf = load i64, ptr %i.f, align 8, !tbaa !19
  %i.lg = add i64 %i.lf, 1
  call void @_ZdlPvm(ptr noundef %i.ld, i64 noundef %i.lg) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156: ; preds = %bb.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i154
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  resume { ptr, i32 } %.pn126.pn
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #6

declare noundef ptr @_ZN4Ptex4v2_410PtexWriter4openEPKcNS0_8MeshTypeENS0_8DataTypeEiiiRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(32), i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #9

declare noundef ptr @_ZN4Ptex4v2_410PtexWriter4editEPKcbNS0_8MeshTypeENS0_8DataTypeEiiiRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef, i1 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(32), i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #10 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #16 ; 0 uses
  tail call void @_ZSt9terminatev() #19
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #11

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #12

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #13

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v4i32(<4 x i32>) #15

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold nofree noreturn }
attributes #12 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nounwind }
attributes #17 = { noreturn }
attributes #18 = { nounwind willreturn memory(read) }
attributes #19 = { noreturn nounwind }
attributes #20 = { builtin nounwind }
attributes #21 = { nounwind allocsize(0) }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, null}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"vtable pointer", !5, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!"any pointer", !6, i64 0}
!13 = !{!"p1 omnipotent char", !12, i64 0}
!14 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !13, i64 0}
!15 = !{!14, !13, i64 0}
!16 = !{!"long", !6, i64 0}
!17 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !14, i64 0, !16, i64 8, !6, i64 16}
!18 = !{!17, !16, i64 8}
!19 = !{!6, !6, i64 0}
!20 = !{!17, !13, i64 0}
!21 = !{!"_ZTSSt13_Ios_Fmtflags", !6, i64 0}
!22 = !{!"_ZTSSt12_Ios_Iostate", !6, i64 0}
!23 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !12, i64 0}
!24 = !{!"_ZTSNSt8ios_base6_WordsE", !12, i64 0, !16, i64 8}
!25 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !12, i64 0}
!26 = !{!"p1 _ZTSNSt6locale5_ImplE", !12, i64 0}
!27 = !{!"_ZTSSt6locale", !26, i64 0}
!28 = !{!"_ZTSSt8ios_base", !16, i64 8, !16, i64 16, !21, i64 24, !22, i64 28, !22, i64 32, !23, i64 40, !24, i64 48, !6, i64 64, !7, i64 192, !25, i64 200, !27, i64 208}
!29 = !{!28, !22, i64 32}
!30 = !{!"p1 _ZTSSo", !12, i64 0}
!31 = !{!"bool", !6, i64 0}
!32 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !12, i64 0}
!33 = !{!"p1 _ZTSSt5ctypeIcE", !12, i64 0}
!34 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !12, i64 0}
!35 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !12, i64 0}
!36 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !28, i64 0, !30, i64 216, !6, i64 224, !31, i64 225, !32, i64 232, !33, i64 240, !34, i64 248, !35, i64 256}
!37 = !{!36, !33, i64 240}
!38 = !{!"_ZTSNSt6locale5facetE", !7, i64 8}
!39 = !{!"p1 _ZTS15__locale_struct", !12, i64 0}
!40 = !{!"p1 int", !12, i64 0}
!41 = !{!"p1 short", !12, i64 0}
!42 = !{!"_ZTSSt5ctypeIcE", !38, i64 0, !39, i64 16, !31, i64 24, !40, i64 32, !40, i64 40, !41, i64 48, !6, i64 56, !6, i64 57, !6, i64 313, !6, i64 569}
!43 = !{!42, !6, i64 56}
!44 = !{!7, !7, i64 0}
!45 = !{!13, !13, i64 0}
!46 = !{!"p1 double", !12, i64 0}
!47 = !{!46, !46, i64 0}
!48 = !{!41, !41, i64 0}
!49 = distinct !{!49, !60, !61, !62}
!50 = distinct !{!50, !60}
!51 = distinct !{!51, !60}
!52 = distinct !{null}
!53 = !{!"branch_weights", i32 1, i32 1048575}
!54 = !{!"_ZTSN4Ptex4v2_43ResE", !6, i64 0, !6, i64 1}
!55 = !{!54, !6, i64 0}
!56 = !{!54, !6, i64 1}
!57 = !{ptr @_Z9writeMetaPN4Ptex4v2_410PtexWriterEPKcPdiPsiS4_}
!58 = !{!"short", !6, i64 0}
!59 = !{!58, !58, i64 0}
!60 = !{!"llvm.loop.mustprogress"}
!61 = !{!"llvm.loop.isvectorized", i32 1}
!62 = !{!"llvm.loop.unroll.runtime.disable"}
!63 = !{!"_ZTSN4Ptex4v2_48FaceInfoE", !54, i64 0, !6, i64 2, !6, i64 3, !6, i64 4}
!64 = !{!63, !6, i64 3}
!65 = !{!63, !6, i64 2}
!66 = !{!"double", !6, i64 0}
!67 = !{!66, !66, i64 0}
end_hunk_0
