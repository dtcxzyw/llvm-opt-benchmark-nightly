Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/NefDecoder?download=true
inline.NumInlined: 1271
inline.NumDeleted: 569
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZNK8rawspeed10NefDecoder15DecodeNikonSNefENS_10ByteStreamE:bb.a
  %wide.trip.count = zext nneg i32 %i.ea to i64
  br label %bb.ad

bb.v:                                             ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.fa = load ptr, ptr %i.c, align 8, !tbaa !52
  store ptr null, ptr %2, align 8, !tbaa !158
  invoke void @_ZN8rawspeed12RawImageData8setTableESt10unique_ptrINS_11TableLookUpESt14default_deleteIS2_EE(ptr noundef nonnull align 8 dereferenceable(624) %i.fa, ptr noundef nonnull align 8 %2)
          to label %bb.w unwind label %bb.z

bb.w:                                             ; preds = %bb.v
  %i.fb = load ptr, ptr %2, align 8, !tbaa !159   ; 4 uses
  %.not.i.i209 = icmp eq ptr %i.fb, null
  br i1 %.not.i.i209, label %_ZN8rawspeed18RawImageCurveGuardD2Ev.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !72 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.fd, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN8rawspeed11TableLookUpEEclEPS1_.exit.i.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fb, i64 24
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !73
  %i.fg = ptrtoint ptr %i.ff to i64
  %i.fh = ptrtoint ptr %i.fd to i64
  %i.fi = sub i64 %i.fg, %i.fh
  call void @_ZdlPvm(ptr noundef nonnull %i.fd, i64 noundef %i.fi) #28
  br label %_ZNKSt14default_deleteIN8rawspeed11TableLookUpEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN8rawspeed11TableLookUpEEclEPS1_.exit.i.i: ; preds = %bb.y, %bb.x
  call void @_ZdlPvm(ptr noundef nonnull %i.fb, i64 noundef 40) #28
  br label %_ZN8rawspeed18RawImageCurveGuardD2Ev.exit

bb.z:                                             ; preds = %bb.v
  %i.fj = landingpad { ptr, i32 }
          catch ptr null
  %i.fk = extractvalue { ptr, i32 } %i.fj, 0
  call void @__clang_call_terminate(ptr %i.fk) #32
  unreachable

_ZN8rawspeed18RawImageCurveGuardD2Ev.exit:        ; preds = %bb.w, %_ZNKSt14default_deleteIN8rawspeed11TableLookUpEEclEPS1_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %i.fl = load ptr, ptr %3, align 8, !tbaa !72    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.fl, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorItSaItEED2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %_ZN8rawspeed18RawImageCurveGuardD2Ev.exit
  %i.fm = load ptr, ptr %i.aa, align 8, !tbaa !73
  %i.fn = ptrtoint ptr %i.fm to i64
  %i.fo = ptrtoint ptr %i.fl to i64
  %i.fp = sub i64 %i.fn, %i.fo
  call void @_ZdlPvm(ptr noundef nonnull %i.fl, i64 noundef %i.fp) #28
  br label %_ZNSt6vectorItSaItEED2Ev.exit

_ZNSt6vectorItSaItEED2Ev.exit:                    ; preds = %_ZN8rawspeed18RawImageCurveGuardD2Ev.exit, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  ret void

bb.ab:                                            ; preds = %middle.block
  %i.fq = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.ac:                                            ; preds = %bb.t
  %i.fr = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.ad:                                            ; preds = %bb.u, %bb.ae
  %indvars.iv709 = phi i64 [ 0, %bb.u ], [ %indvars.iv.next710, %bb.ae ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  %i.fs = mul nuw nsw i64 %indvars.iv709, %i.ey   ; 2 uses
  %i.ft = add nuw nsw i64 %i.fs, %i.ey
  %i.fu = icmp samesign ule i64 %i.ft, %i.en
  call void @llvm.assume(i1 %i.fu)
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ew, i64 %i.fs ; 9 uses
  %i.fw = load i16, ptr %i.fv, align 1
  %i.fx = zext i16 %i.fw to i32
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fv, i64 2
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !24
  %i.ga = zext i8 %i.fz to i32
  %i.gb = shl nuw nsw i32 %i.ga, 16
  %i.gc = or disjoint i32 %i.gb, %i.fx
  store i32 %i.gc, ptr %i.b, align 4, !tbaa !33
  %i.gd = mul nuw nsw i64 %indvars.iv709, %i.ez
  %i.ge = getelementptr inbounds nuw [2 x i8], ptr %i.dt, i64 %i.gd ; 6 uses
  br label %bb.af

bb.ae:                                            ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  %indvars.iv.next710 = add nuw nsw i64 %indvars.iv709, 1 ; 2 uses
  %exitcond712.not = icmp eq i64 %indvars.iv.next710, %wide.trip.count
  br i1 %exitcond712.not, label %bb.v, label %bb.ad, !llvm.loop !227

bb.af:                                            ; preds = %bb.ad, %bb.ao
  %indvars.iv706 = phi i64 [ 0, %bb.ad ], [ %indvars.iv.next707, %bb.ao ] ; 9 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fv, i64 %indvars.iv706 ; 3 uses
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !24
  %i.gh = zext i8 %i.gg to i32
  %i.gi = or disjoint i64 %indvars.iv706, 1       ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fv, i64 %i.gi
  %i.gk = load i8, ptr %i.gj, align 1, !tbaa !24
  %i.gl = zext i8 %i.gk to i32                    ; 2 uses
  %i.gm = add nuw nsw i64 %indvars.iv706, 2       ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.fv, i64 %i.gm
  %i.go = load i8, ptr %i.gn, align 1, !tbaa !24
  %i.gp = zext i8 %i.go to i32
  %i.gq = add nuw nsw i64 %indvars.iv706, 3       ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.fv, i64 %i.gq
  %i.gs = load i8, ptr %i.gr, align 1, !tbaa !24
  %i.gt = zext i8 %i.gs to i32
  %i.gu = add nuw nsw i64 %indvars.iv706, 4       ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.fv, i64 %i.gu
  %i.gw = load i8, ptr %i.gv, align 1, !tbaa !24
  %i.gx = add nuw nsw i64 %indvars.iv706, 5       ; 3 uses
  %i.gy = icmp samesign ult i64 %i.gx, %i.ey
  call void @llvm.assume(i1 %i.gy)
  %i.gz = getelementptr inbounds nuw i8, ptr %i.fv, i64 %i.gx
  %i.ha = zext i8 %i.gw to i32                    ; 2 uses
  %i.hb = load i8, ptr %i.gz, align 1, !tbaa !24
  %i.hc = zext i8 %i.hb to i32
  %i.hd = shl nuw nsw i32 %i.gl, 8
  %i.he = and i32 %i.hd, 3840
  %i.hf = or disjoint i32 %i.he, %i.gh
  %i.hg = lshr i32 %i.gl, 4
  %i.hh = shl nuw nsw i32 %i.gp, 4
  %i.hi = or disjoint i32 %i.hh, %i.hg
  %i.hj = shl nuw nsw i32 %i.ha, 8
  %i.hk = and i32 %i.hj, 3840
  %i.hl = or disjoint i32 %i.hk, %i.gt            ; 3 uses
  %i.hm = uitofp nneg i32 %i.hl to float
  %i.hn = lshr i32 %i.ha, 4
  %i.ho = shl nuw nsw i32 %i.hc, 4
  %i.hp = or disjoint i32 %i.ho, %i.hn            ; 3 uses
  %i.hq = uitofp nneg i32 %i.hp to float
  %indvars.iv.next707 = add nuw nsw i64 %indvars.iv706, 6 ; 2 uses
  %i.hr = icmp samesign ult i64 %indvars.iv.next707, %i.ey ; 2 uses
  br i1 %i.hr, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %bb.af
  %i.hs = getelementptr inbounds nuw i8, ptr %i.gf, i64 9
  %i.ht = load i8, ptr %i.hs, align 1, !tbaa !24
  %i.hu = zext i8 %i.ht to i32
  %i.hv = getelementptr inbounds nuw i8, ptr %i.gf, i64 10
  %i.hw = load i8, ptr %i.hv, align 1, !tbaa !24
  %i.hx = add nuw nsw i64 %indvars.iv706, 11      ; 2 uses
  %i.hy = icmp samesign ult i64 %i.hx, %i.ey
  call void @llvm.assume(i1 %i.hy)
  %i.hz = getelementptr inbounds nuw i8, ptr %i.fv, i64 %i.hx
  %i.ia = zext i8 %i.hw to i32                    ; 2 uses
  %i.ib = load i8, ptr %i.hz, align 1, !tbaa !24
  %i.ic = zext i8 %i.ib to i32
  %i.id = shl nuw nsw i32 %i.ia, 8
  %i.ie = and i32 %i.id, 3840
  %i.if = add nuw nsw i32 %i.hl, %i.hu
  %i.ig = add nuw nsw i32 %i.if, %i.ie
  %i.ih = uitofp nneg i32 %i.ig to float
  %i.ii = fmul nnan float %i.ih, 5.000000e-01
  %i.ij = lshr i32 %i.ia, 4
  %i.ik = shl nuw nsw i32 %i.ic, 4
  %i.il = add nuw nsw i32 %i.ij, %i.hp
  %i.im = add nuw nsw i32 %i.il, %i.ik
  %i.in = uitofp nneg i32 %i.im to float
  %i.io = fmul nnan float %i.in, 5.000000e-01
  br label %bb.ai

bb.ah:                                            ; preds = %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai
  %i.ip = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  br label %bb.ap

bb.ai:                                            ; preds = %bb.ag, %bb.af
  %.0106 = phi float [ %i.ii, %bb.ag ], [ %i.hm, %bb.af ]
  %.0 = phi float [ %i.io, %bb.ag ], [ %i.hq, %bb.af ]
  %i.iq = add nsw i32 %i.hp, -2048
  %i.ir = fadd float %.0106, -2.048000e+03
  %i.is = fadd float %.0, -2.048000e+03
  %i.it = load ptr, ptr %i.c, align 8, !tbaa !52  ; 2 uses
  %i.iu = uitofp nneg i32 %i.hf to double         ; 3 uses
  %i.iv = sitofp i32 %i.iq to double              ; 2 uses
  %i.iw = call double @llvm.fmuladd.f64(double %i.iv, double f0x3FF5EE685DB76B3C, double %i.iu)
  %i.ix = fptosi double %i.iw to i32
  %.sroa.speculate.load.false.sroa.speculated.i = call i32 @llvm.smax.i32(i32 %i.ix, i32 0)
  %i.iy = call i32 @llvm.umin.i32(i32 %.sroa.speculate.load.false.sroa.speculated.i, i32 4095)
  %i.iz = trunc nuw nsw i32 %i.iy to i16
  %i.ja = load ptr, ptr %i.it, align 8, !tbaa !58
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 40
  %i.jc = load ptr, ptr %i.jb, align 8
  invoke void %i.jc(ptr noundef nonnull align 8 dereferenceable(624) %i.it, i16 noundef zeroext %i.iz, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
          to label %bb.aj unwind label %bb.ah, !call_target !250

bb.aj:                                            ; preds = %bb.ai
  %i.jd = add nsw i32 %i.hl, -2048
  %i.je = load i16, ptr %i.a, align 2, !tbaa !150
  %i.jf = getelementptr inbounds nuw [2 x i8], ptr %i.ge, i64 %indvars.iv706
  %i.jg = zext i16 %i.je to i32
  %i.jh = mul nuw nsw i32 %i.jg, %i.dk
  %i.ji = add nuw nsw i32 %i.jh, 512
  %5 = lshr i32 %i.ji, 10
  %i.jj = call i32 @llvm.umin.i32(i32 %5, i32 32767)
  %i.jk = trunc nuw nsw i32 %i.jj to i16
  store i16 %i.jk, ptr %i.jf, align 2, !tbaa !150
  %i.jl = load ptr, ptr %i.c, align 8, !tbaa !52  ; 2 uses
  %i.jm = sitofp i32 %i.jd to double              ; 2 uses
  %i.jn = getelementptr inbounds nuw [2 x i8], ptr %i.ge, i64 %i.gi
  %i.jo = call double @llvm.fmuladd.f64(double %i.jm, double -3.376330e-01, double %i.iu)
  %i.jp = call double @llvm.fmuladd.f64(double %i.iv, double -6.980010e-01, double %i.jo)
  %i.jq = fptosi double %i.jp to i32
  %.sroa.speculate.load.false.sroa.speculated.i252 = call i32 @llvm.smax.i32(i32 %i.jq, i32 0)
  %i.jr = call i32 @llvm.umin.i32(i32 %.sroa.speculate.load.false.sroa.speculated.i252, i32 4095)
  %i.js = trunc nuw nsw i32 %i.jr to i16
  %i.jt = load ptr, ptr %i.jl, align 8, !tbaa !58
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 40
  %i.jv = load ptr, ptr %i.ju, align 8
  invoke void %i.jv(ptr noundef nonnull align 8 dereferenceable(624) %i.jl, i16 noundef zeroext %i.js, ptr noundef nonnull %i.jn, ptr noundef nonnull %i.b)
          to label %bb.ak unwind label %bb.ah, !call_target !250

bb.ak:                                            ; preds = %bb.aj
  %i.jw = load ptr, ptr %i.c, align 8, !tbaa !52  ; 2 uses
  %i.jx = call double @llvm.fmuladd.f64(double %i.jm, double f0x3FFBB8194C016052, double %i.iu)
  %i.jy = fptosi double %i.jx to i32
  %.sroa.speculate.load.false.sroa.speculated.i254 = call i32 @llvm.smax.i32(i32 %i.jy, i32 0)
  %i.jz = call i32 @llvm.umin.i32(i32 %.sroa.speculate.load.false.sroa.speculated.i254, i32 4095)
  %i.ka = trunc nuw nsw i32 %i.jz to i16
  %i.kb = load ptr, ptr %i.jw, align 8, !tbaa !58
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 40
  %i.kd = load ptr, ptr %i.kc, align 8
  invoke void %i.kd(ptr noundef nonnull align 8 dereferenceable(624) %i.jw, i16 noundef zeroext %i.ka, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
          to label %bb.al unwind label %bb.ah, !call_target !250

bb.al:                                            ; preds = %bb.ak
  %i.ke = load i16, ptr %i.a, align 2, !tbaa !150
  %i.kf = getelementptr inbounds nuw [2 x i8], ptr %i.ge, i64 %i.gm
  %i.kg = zext i16 %i.ke to i32
  %i.kh = mul nuw nsw i32 %i.kg, %i.dm
  %i.ki = add nuw nsw i32 %i.kh, 512
  %6 = lshr i32 %i.ki, 10
  %i.kj = call i32 @llvm.umin.i32(i32 %6, i32 32767)
  %i.kk = trunc nuw nsw i32 %i.kj to i16
  store i16 %i.kk, ptr %i.kf, align 2, !tbaa !150
  %i.kl = load ptr, ptr %i.c, align 8, !tbaa !52  ; 2 uses
  %i.km = uitofp nneg i32 %i.hi to double         ; 3 uses
  %i.kn = fpext float %i.is to double             ; 2 uses
  %i.ko = call double @llvm.fmuladd.f64(double %i.kn, double f0x3FF5EE685DB76B3C, double %i.km)
  %i.kp = fptosi double %i.ko to i32
  %.sroa.speculate.load.false.sroa.speculated.i261 = call i32 @llvm.smax.i32(i32 %i.kp, i32 0)
  %i.kq = call i32 @llvm.umin.i32(i32 %.sroa.speculate.load.false.sroa.speculated.i261, i32 4095)
  %i.kr = trunc nuw nsw i32 %i.kq to i16
  %i.ks = load ptr, ptr %i.kl, align 8, !tbaa !58
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 40
  %i.ku = load ptr, ptr %i.kt, align 8
  invoke void %i.ku(ptr noundef nonnull align 8 dereferenceable(624) %i.kl, i16 noundef zeroext %i.kr, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
          to label %bb.am unwind label %bb.ah, !call_target !250

bb.am:                                            ; preds = %bb.al
  %i.kv = load i16, ptr %i.a, align 2, !tbaa !150
  %i.kw = getelementptr inbounds nuw [2 x i8], ptr %i.ge, i64 %i.gq
  %i.kx = zext i16 %i.kv to i32
  %i.ky = mul nuw nsw i32 %i.kx, %i.dk
  %i.kz = add nuw nsw i32 %i.ky, 512
  %7 = lshr i32 %i.kz, 10
  %i.la = call i32 @llvm.umin.i32(i32 %7, i32 32767)
  %i.lb = trunc nuw nsw i32 %i.la to i16
  store i16 %i.lb, ptr %i.kw, align 2, !tbaa !150
  %i.lc = load ptr, ptr %i.c, align 8, !tbaa !52  ; 2 uses
  %i.ld = fpext float %i.ir to double             ; 2 uses
  %i.le = getelementptr inbounds nuw [2 x i8], ptr %i.ge, i64 %i.gu
  %i.lf = call double @llvm.fmuladd.f64(double %i.ld, double -3.376330e-01, double %i.km)
  %i.lg = call double @llvm.fmuladd.f64(double %i.kn, double -6.980010e-01, double %i.lf)
  %i.lh = fptosi double %i.lg to i32
  %.sroa.speculate.load.false.sroa.speculated.i271 = call i32 @llvm.smax.i32(i32 %i.lh, i32 0)
  %i.li = call i32 @llvm.umin.i32(i32 %.sroa.speculate.load.false.sroa.speculated.i271, i32 4095)
  %i.lj = trunc nuw nsw i32 %i.li to i16
  %i.lk = load ptr, ptr %i.lc, align 8, !tbaa !58
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 40
  %i.lm = load ptr, ptr %i.ll, align 8
  invoke void %i.lm(ptr noundef nonnull align 8 dereferenceable(624) %i.lc, i16 noundef zeroext %i.lj, ptr noundef nonnull %i.le, ptr noundef nonnull %i.b)
          to label %bb.an unwind label %bb.ah, !call_target !250

bb.an:                                            ; preds = %bb.am
  %i.ln = load ptr, ptr %i.c, align 8, !tbaa !52  ; 2 uses
  %i.lo = call double @llvm.fmuladd.f64(double %i.ld, double f0x3FFBB8194C016052, double %i.km)
  %i.lp = fptosi double %i.lo to i32
  %.sroa.speculate.load.false.sroa.speculated.i273 = call i32 @llvm.smax.i32(i32 %i.lp, i32 0)
  %i.lq = call i32 @llvm.umin.i32(i32 %.sroa.speculate.load.false.sroa.speculated.i273, i32 4095)
  %i.lr = trunc nuw nsw i32 %i.lq to i16
  %i.ls = load ptr, ptr %i.ln, align 8, !tbaa !58
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 40
  %i.lu = load ptr, ptr %i.lt, align 8
  invoke void %i.lu(ptr noundef nonnull align 8 dereferenceable(624) %i.ln, i16 noundef zeroext %i.lr, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
          to label %bb.ao unwind label %bb.ah, !call_target !250

bb.ao:                                            ; preds = %bb.an
  %i.lv = load i16, ptr %i.a, align 2, !tbaa !150
  %i.lw = getelementptr inbounds nuw [2 x i8], ptr %i.ge, i64 %i.gx
  %i.lx = zext i16 %i.lv to i32
  %i.ly = mul nuw nsw i32 %i.lx, %i.dm
  %i.lz = add nuw nsw i32 %i.ly, 512
  %8 = lshr i32 %i.lz, 10
  %i.ma = call i32 @llvm.umin.i32(i32 %8, i32 32767)
  %i.mb = trunc nuw nsw i32 %i.ma to i16
  store i16 %i.mb, ptr %i.lw, align 2, !tbaa !150
  br i1 %i.hr, label %bb.af, label %bb.ae, !llvm.loop !230

bb.ap:                                            ; preds = %bb.ah, %bb.ac
  %.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ip, %bb.ah ], [ %i.fr, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  call void @_ZN8rawspeed18RawImageCurveGuardD2Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(24) %4) #27
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ab, %bb.ap
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn, %bb.ap ], [ %i.fq, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %i.mc = load ptr, ptr %3, align 8, !tbaa !72    ; 3 uses
  %.not.i.i.i280 = icmp eq ptr %i.mc, null
  br i1 %.not.i.i.i280, label %_ZNSt6vectorItSaItEED2Ev.exit281, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.md = load ptr, ptr %i.aa, align 8, !tbaa !73
  %i.me = ptrtoint ptr %i.md to i64
  %i.mf = ptrtoint ptr %i.mc to i64
  %i.mg = sub i64 %i.me, %i.mf
  call void @_ZdlPvm(ptr noundef nonnull %i.mc, i64 noundef %i.mg) #28
  br label %_ZNSt6vectorItSaItEED2Ev.exit281

_ZNSt6vectorItSaItEED2Ev.exit281:                 ; preds = %bb.aq, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8rawspeed10NefDecoder20checkSupportInternalEPKNS_14CameraMetaDataE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.rawspeed::TiffID", align 8 ; 11 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26
  call void @_ZNK8rawspeed11TiffRootIFD5getIDEv(ptr dead_on_unwind nonnull writable sret(%"struct.rawspeed::TiffID") align 8 %2, ptr noundef nonnull align 8 dereferenceable(120) %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  invoke void @_ZNK8rawspeed10NefDecoder7getModeB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(104) %0)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  invoke void @_ZNK8rawspeed10NefDecoder15getExtendedModeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %i.d = invoke noundef zeroext i1 @_ZNK8rawspeed14CameraMetaData9hasCameraERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_S8_(ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %.invoke unwind label %bb.f

.invoke:                                          ; preds = %bb.c
  %i.e = select i1 %i.d, ptr %4, ptr %3
  %i.f = invoke noundef zeroext i1 @_ZN8rawspeed10RawDecoder20checkCameraSupportedEPKNS_14CameraMetaDataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_SB_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.e)
          to label %_ZN8rawspeed19AbstractTiffDecoder20checkCameraSupportedEPKNS_14CameraMetaDataERKNS_6TiffIDERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.f ; 0 uses

bb.d:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

bb.e:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %.invoke, %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.j = load ptr, ptr %4, align 8, !tbaa !23     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.m = load i64, ptr %i.k, align 8, !tbaa !24
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN8rawspeed19AbstractTiffDecoder20checkCameraSupportedEPKNS_14CameraMetaDataERKNS_6TiffIDERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %.invoke
  %i.o = load ptr, ptr %4, align 8, !tbaa !23     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10: ; preds = %_ZN8rawspeed19AbstractTiffDecoder20checkCameraSupportedEPKNS_14CameraMetaDataERKNS_6TiffIDERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.r = load i64, ptr %i.p, align 8, !tbaa !24
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12: ; preds = %_ZN8rawspeed19AbstractTiffDecoder20checkCameraSupportedEPKNS_14CameraMetaDataERKNS_6TiffIDERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %i.t = load ptr, ptr %3, align 8, !tbaa !23     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12
  %i.w = load i64, ptr %i.u, align 8, !tbaa !24
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %i.y = load ptr, ptr %i.c, align 8, !tbaa !23   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !24
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ad = load ptr, ptr %2, align 8, !tbaa !23    ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZN8rawspeed6TiffIDD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !24
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ah) #28
  br label %_ZN8rawspeed6TiffIDD2Ev.exit

_ZN8rawspeed6TiffIDD2Ev.exit:                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  ret void

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.h, %bb.e ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.i, %bb.f ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %i.ai = load ptr, ptr %3, align 8, !tbaa !23    ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.al = load i64, ptr %i.aj, align 8, !tbaa !24
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.am) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16, %bb.d
  %.pn.pn = phi { ptr, i32 } [ %i.g, %bb.d ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @_ZN8rawspeed6TiffIDD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK8rawspeed10NefDecoder7getModeB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(104) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2)
  %i.a = invoke noundef ptr @_ZNK8rawspeed19AbstractTiffDecoder22getIFDWithLargestImageENS_7TiffTagE(ptr noundef nonnull align 8 dereferenceable(104) %1, i16 noundef zeroext -32114)
          to label %bb.b unwind label %bb.g       ; 6 uses

bb.b:                                             ; preds = %bb.a
  %i.b = invoke noundef ptr @_ZNK8rawspeed7TiffIFD8getEntryENS_7TiffTagE(ptr noundef nonnull align 8 dereferenceable(104) %i.a, i16 noundef zeroext 259)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.c = invoke noundef i32 @_ZNK8rawspeed9TiffEntry6getU32Ej(ptr noundef nonnull align 8 dereferenceable(48) %i.b, i32 noundef 0)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.d = invoke noundef ptr @_ZNK8rawspeed7TiffIFD8getEntryENS_7TiffTagE(ptr noundef nonnull align 8 dereferenceable(104) %i.a, i16 noundef zeroext 258)
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.e = invoke noundef i32 @_ZNK8rawspeed9TiffEntry6getU32Ej(ptr noundef nonnull align 8 dereferenceable(48) %i.d, i32 noundef 0)
          to label %bb.f unwind label %bb.i       ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.f = invoke noundef ptr @_ZNK8rawspeed7TiffIFD8getEntryENS_7TiffTagE(ptr noundef nonnull align 8 dereferenceable(104) %i.a, i16 noundef zeroext 279)
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.f
  %i.g = invoke noundef i32 @_ZNK8rawspeed9TiffEntry6getU32Ej(ptr noundef nonnull align 8 dereferenceable(48) %i.f, i32 noundef 0)
          to label %.noexc13 unwind label %bb.i   ; 2 uses

.noexc13:                                         ; preds = %.noexc
  %i.h = invoke noundef ptr @_ZNK8rawspeed7TiffIFD8getEntryENS_7TiffTagE(ptr noundef nonnull align 8 dereferenceable(104) %i.a, i16 noundef zeroext 256)
          to label %.noexc14 unwind label %bb.i

.noexc14:                                         ; preds = %.noexc13
  %i.i = invoke noundef i32 @_ZNK8rawspeed9TiffEntry6getU32Ej(ptr noundef nonnull align 8 dereferenceable(48) %i.h, i32 noundef 0)
          to label %.noexc15 unwind label %bb.i

end_hunk_0
