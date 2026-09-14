Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/enc_palette?download=true
inline.NumInlined: 3168
inline.NumDeleted: 1664
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_ZN3jxl19FwdPaletteIterationERNS_5ImageEjjRjS2_bbRNS_9PredictorERKNS_8weighted6HeaderERNS_20PaletteIterationDataE:bb.a
  %i.jd = load i32, ptr %i.a, align 4, !tbaa !35  ; 2 uses
  %.not.not971.not = icmp eq i32 %i.jd, 0
  br i1 %.not.not971.not, label %.critedge597, label %.lr.ph974

.lr.ph974:                                        ; preds = %bb.aj, %.loopexit874
  %i.je = phi i32 [ %i.ko, %.loopexit874 ], [ %i.jd, %bb.aj ]
  %.0561972 = phi i64 [ %i.kp, %.loopexit874 ], [ 0, %bb.aj ] ; 3 uses
  %i.jf = load ptr, ptr %0, align 8, !tbaa !49
  %i.jg = getelementptr inbounds nuw [88 x i8], ptr %i.jf, i64 %.0561972
  %i.jh = getelementptr inbounds nuw [88 x i8], ptr %i.jg, i64 %i.p ; 5 uses
  %i.ji = load ptr, ptr %32, align 8, !tbaa !49
  %i.jj = getelementptr inbounds nuw [88 x i8], ptr %i.ji, i64 %.0561972 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !256)
  %i.jk = load i32, ptr %i.jh, align 8, !tbaa !257, !noalias !256 ; 2 uses
  %i.jl = load i32, ptr %i.jj, align 8, !tbaa !257, !alias.scope !256
  %i.jm = icmp eq i32 %i.jk, %i.jl
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jh, i64 4 ; 2 uses
  %i.jo = load i32, ptr %i.jn, align 4, !noalias !256 ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jj, i64 4
  %i.jq = load i32, ptr %i.jp, align 4, !alias.scope !256
  %i.jr = icmp eq i32 %i.jo, %i.jq
  %i.js = select i1 %i.jm, i1 %i.jr, i1 false
  br i1 %i.js, label %bb.ak, label %_ZN3jxl11CopyImageToIiEENS_6StatusERKNS_5PlaneIT_EEPS4_.exit

bb.ak:                                            ; preds = %.lr.ph974
  %i.jt = icmp ne i32 %i.jo, 0
  %i.ju = icmp ne i32 %i.jk, 0
  %or.cond.not20.i = and i1 %i.ju, %i.jt
  br i1 %or.cond.not20.i, label %.lr.ph.i, label %.loopexit874

.lr.ph.i:                                         ; preds = %bb.ak
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jh, i64 40
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jh, i64 16
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jj, i64 40
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !245, !alias.scope !256
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jj, i64 16
  %i.ka = load i64, ptr %i.jz, align 8, !tbaa !246, !alias.scope !256
  br label %bb.al

bb.al:                                            ; preds = %bb.al, %.lr.ph.i
  %.015.i = phi i64 [ 0, %.lr.ph.i ], [ %i.kk, %bb.al ] ; 3 uses
  %i.kb = load ptr, ptr %i.jv, align 8, !tbaa !245, !noalias !256
  %i.kc = load i64, ptr %i.jw, align 8, !tbaa !246, !noalias !256
  %i.kd = mul i64 %i.kc, %.015.i
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kb, i64 %i.kd ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ke, i64 64) ]
  %i.kf = mul i64 %.015.i, %i.ka
  %i.kg = getelementptr inbounds nuw i8, ptr %i.jy, i64 %i.kf ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.kg, i64 64) ]
  %i.kh = load i32, ptr %i.jh, align 8, !tbaa !257, !noalias !256
  %i.ki = zext i32 %i.kh to i64
  %i.kj = shl nuw nsw i64 %i.ki, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 64 %i.kg, ptr align 64 %i.ke, i64 %i.kj, i1 false), !noalias !256
  %i.kk = add nuw nsw i64 %.015.i, 1              ; 2 uses
  %i.kl = load i32, ptr %i.jn, align 4, !tbaa !258, !noalias !256
  %i.km = zext i32 %i.kl to i64
  %i.kn = icmp samesign ult i64 %i.kk, %i.km
  br i1 %i.kn, label %bb.al, label %.loopexit874.loopexit, !llvm.loop !181

_ZN3jxl11CopyImageToIiEENS_6StatusERKNS_5PlaneIT_EEPS4_.exit: ; preds = %.lr.ph974
  call void @_ZN3jxl8StatusOrINS_5ImageEED2Ev(ptr noundef nonnull align 8 dead_on_return(100) dereferenceable(100) %33) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #20
  br label %bb.fw

.loopexit874.loopexit:                            ; preds = %bb.al
  %.pre1287 = load i32, ptr %i.a, align 4, !tbaa !35
  br label %.loopexit874

.loopexit874:                                     ; preds = %.loopexit874.loopexit, %bb.ak
  %i.ko = phi i32 [ %.pre1287, %.loopexit874.loopexit ], [ %i.je, %bb.ak ] ; 2 uses
  %i.kp = add nuw nsw i64 %.0561972, 1            ; 2 uses
  %i.kq = zext i32 %i.ko to i64
  %.not.not = icmp samesign ult i64 %i.kp, %i.kq
  br i1 %.not.not, label %.lr.ph974, label %.critedge597, !llvm.loop !182

.critedge597:                                     ; preds = %.loopexit874, %bb.aj
  call void @_ZN3jxl8StatusOrINS_5ImageEED2Ev(ptr noundef nonnull align 8 dead_on_return(100) dereferenceable(100) %33) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #20
  br label %bb.am

bb.am:                                            ; preds = %bb.ah, %.critedge597
  store i32 0, ptr %4, align 4, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #20
  %i.kr = getelementptr inbounds nuw i8, ptr %35, i64 8 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.kr, i8 0, i64 16, i1 false)
  store ptr %i.kr, ptr %35, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %36, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #20
  %i.ks = load i32, ptr %i.a, align 4, !tbaa !35  ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %37, i64 8 ; 7 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %37, i64 16 ; 2 uses
  %.not.i606 = icmp eq i32 %i.ks, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %37, i8 0, i64 24, i1 false)
  br i1 %.not.i606, label %_ZNSt3__16vectorIiNS_9allocatorIiEEEC2Em.exit.thread, label %_ZNSt3__16vectorIiNS_9allocatorIiEEEC2Em.exit

_ZNSt3__16vectorIiNS_9allocatorIiEEEC2Em.exit.thread: ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #20
  %i.kv = getelementptr inbounds nuw i8, ptr %38, i64 8
  %i.kw = getelementptr inbounds nuw i8, ptr %38, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %38, i8 0, i64 24, i1 false)
  br label %_ZNSt3__16vectorIPKiNS_9allocatorIS2_EEEC2Em.exit

_ZNSt3__16vectorIiNS_9allocatorIiEEEC2Em.exit:    ; preds = %bb.am
  %i.kx = zext i32 %i.ks to i64                   ; 2 uses
  %i.ky = shl nuw nsw i64 %i.kx, 2                ; 3 uses
  %i.kz = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ky) #21 ; 4 uses
  store ptr %i.kz, ptr %37, align 8, !tbaa !34
  %i.la = getelementptr inbounds nuw [4 x i8], ptr %i.kz, i64 %i.kx
  store ptr %i.la, ptr %i.ku, align 8, !tbaa !68
  %i.lb = getelementptr i8, ptr %i.kz, i64 %i.ky
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.kz, i8 0, i64 %i.ky, i1 false), !tbaa !35
  store ptr %i.lb, ptr %i.kt, align 8, !tbaa !67
  %.pre1288 = load i32, ptr %i.a, align 4, !tbaa !35 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #20
  %i.lc = getelementptr inbounds nuw i8, ptr %38, i64 8 ; 4 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %38, i64 16 ; 4 uses
  %.not.i607 = icmp eq i32 %.pre1288, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %38, i8 0, i64 24, i1 false)
  br i1 %.not.i607, label %_ZNSt3__16vectorIPKiNS_9allocatorIS2_EEEC2Em.exit, label %_ZNSt3__16vectorIfNS_9allocatorIfEEEC2Em.exit

_ZNSt3__16vectorIfNS_9allocatorIfEEEC2Em.exit:    ; preds = %_ZNSt3__16vectorIiNS_9allocatorIiEEEC2Em.exit
  %i.le = zext i32 %.pre1288 to i64               ; 2 uses
  %i.lf = shl nuw nsw i64 %i.le, 2                ; 3 uses
  %i.lg = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lf) #21 ; 4 uses
  store ptr %i.lg, ptr %38, align 8, !tbaa !27
  %i.lh = getelementptr inbounds nuw [4 x i8], ptr %i.lg, i64 %i.le
  store ptr %i.lh, ptr %i.ld, align 8, !tbaa !73
  %i.li = getelementptr i8, ptr %i.lg, i64 %i.lf
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.lg, i8 0, i64 %i.lf, i1 false), !tbaa !29
  store ptr %i.li, ptr %i.lc, align 8, !tbaa !26
  %.pre1289 = load i32, ptr %i.a, align 4, !tbaa !35 ; 2 uses
  %.not.i608 = icmp eq i32 %.pre1289, 0
  br i1 %.not.i608, label %_ZNSt3__16vectorIPKiNS_9allocatorIS2_EEEC2Em.exit, label %bb.an

bb.an:                                            ; preds = %_ZNSt3__16vectorIfNS_9allocatorIfEEEC2Em.exit
  %i.lj = zext i32 %.pre1289 to i64               ; 2 uses
  %i.lk = shl nuw nsw i64 %i.lj, 3                ; 2 uses
  %i.ll = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lk) #21 ; 3 uses
  %i.lm = getelementptr inbounds nuw [8 x i8], ptr %i.ll, i64 %i.lj
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ll, i8 0, i64 %i.lk, i1 false), !tbaa !68
  %i.ln = ptrtoint ptr %i.lm to i64
  br label %_ZNSt3__16vectorIPKiNS_9allocatorIS2_EEEC2Em.exit

_ZNSt3__16vectorIPKiNS_9allocatorIS2_EEEC2Em.exit: ; preds = %_ZNSt3__16vectorIiNS_9allocatorIiEEEC2Em.exit.thread, %_ZNSt3__16vectorIiNS_9allocatorIiEEEC2Em.exit, %_ZNSt3__16vectorIfNS_9allocatorIfEEEC2Em.exit, %bb.an
  %i.lo = phi ptr [ %i.lc, %_ZNSt3__16vectorIfNS_9allocatorIfEEEC2Em.exit ], [ %i.lc, %bb.an ], [ %i.kv, %_ZNSt3__16vectorIiNS_9allocatorIiEEEC2Em.exit.thread ], [ %i.lc, %_ZNSt3__16vectorIiNS_9allocatorIiEEEC2Em.exit ]
  %i.lp = phi ptr [ %i.ld, %_ZNSt3__16vectorIfNS_9allocatorIfEEEC2Em.exit ], [ %i.ld, %bb.an ], [ %i.kw, %_ZNSt3__16vectorIiNS_9allocatorIiEEEC2Em.exit.thread ], [ %i.ld, %_ZNSt3__16vectorIiNS_9allocatorIiEEEC2Em.exit ]
  %.sroa.14.0 = phi i64 [ 0, %_ZNSt3__16vectorIfNS_9allocatorIfEEEC2Em.exit ], [ %i.ln, %bb.an ], [ 0, %_ZNSt3__16vectorIiNS_9allocatorIiEEEC2Em.exit.thread ], [ 0, %_ZNSt3__16vectorIiNS_9allocatorIiEEEC2Em.exit ]
  %.sroa.0755.0 = phi ptr [ null, %_ZNSt3__16vectorIfNS_9allocatorIfEEEC2Em.exit ], [ %i.ll, %bb.an ], [ null, %_ZNSt3__16vectorIiNS_9allocatorIiEEEC2Em.exit.thread ], [ null, %_ZNSt3__16vectorIiNS_9allocatorIiEEEC2Em.exit ] ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #20
  %i.lq = getelementptr inbounds nuw i8, ptr %39, i64 8 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.lq, i8 0, i64 16, i1 false)
  store ptr %i.lq, ptr %39, align 8, !tbaa !56
  br i1 %6, label %bb.ao, label %bb.ay

bb.ao:                                            ; preds = %_ZNSt3__16vectorIPKiNS_9allocatorIS2_EEEC2Em.exit
  %i.lr = load i64, ptr %i.b, align 8, !tbaa !54
  %i.ls = load i64, ptr %i.c, align 8, !tbaa !54
  %i.lt = mul i64 %i.ls, %i.lr
  %i.lu = trunc i64 %i.lt to i32
  %i.lv = load i32, ptr %i.ab, align 8, !tbaa !244
  call void @_ZN3jxl20PaletteIterationData23FindFrequentColorDeltasEii(ptr noundef nonnull align 8 dereferenceable(176) %9, i32 noundef %i.lu, i32 noundef %i.lv) #22
  %i.lw = getelementptr inbounds nuw i8, ptr %9, i64 104
  %i.lx = getelementptr inbounds nuw i8, ptr %9, i64 112
  %i.ly = load ptr, ptr %i.lx, align 8, !tbaa !67
  %i.lz = load ptr, ptr %i.lw, align 8, !tbaa !34
  %i.ma = ptrtoint ptr %i.ly to i64
  %i.mb = ptrtoint ptr %i.lz to i64
  %i.mc = sub i64 %i.ma, %i.mb
  %i.md = lshr exact i64 %i.mc, 2
  %i.me = trunc i64 %i.md to i32
  store i32 %i.me, ptr %4, align 4, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #20
  %i.mf = getelementptr inbounds nuw i8, ptr %40, i64 8 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.mf, i8 0, i64 16, i1 false)
  store ptr %i.mf, ptr %40, align 8, !tbaa !56
  %i.mg = load i64, ptr %i.c, align 8, !tbaa !54  ; 2 uses
  %i.mh = icmp ugt i64 %i.mg, 2
  br i1 %i.mh, label %.preheader873.preheader, label %._crit_edge989

.preheader873.preheader:                          ; preds = %bb.ao
  %.pre1318.a = load i32, ptr %i.a, align 4, !tbaa !35 ; 2 uses
  br label %.preheader873

.loopexit872.loopexit:                            ; preds = %.critedge1814
  %.pre1295.a = load i64, ptr %i.c, align 8, !tbaa !54
  br label %.loopexit872

.loopexit872:                                     ; preds = %.loopexit872.loopexit, %.preheader871
  %.pre12911319 = phi i32 [ %.pre12911320, %.loopexit872.loopexit ], [ %.pre1291, %.preheader871 ]
  %i.mi = phi i32 [ %.pre12911320, %.loopexit872.loopexit ], [ %i.mm, %.preheader871 ]
  %i.mj = phi i64 [ %.pre1295.a, %.loopexit872.loopexit ], [ %i.mn, %.preheader871 ] ; 2 uses
  %i.mk = add nuw i64 %i.mo, 1                    ; 2 uses
  %i.ml = icmp ult i64 %i.mk, %i.mj
  br i1 %i.ml, label %.preheader873, label %._crit_edge989.loopexit, !llvm.loop !183

.preheader873:                                    ; preds = %.preheader873.preheader, %.loopexit872
  %.pre1291 = phi i32 [ %.pre12911319, %.loopexit872 ], [ %.pre1318.a, %.preheader873.preheader ] ; 2 uses
  %i.mm = phi i32 [ %i.mi, %.loopexit872 ], [ %.pre1318.a, %.preheader873.preheader ] ; 5 uses
  %i.mn = phi i64 [ %i.mj, %.loopexit872 ], [ %i.mg, %.preheader873.preheader ]
  %i.mo = phi i64 [ %i.mk, %.loopexit872 ], [ 2, %.preheader873.preheader ] ; 2 uses
  %.0555988 = phi i64 [ %i.mo, %.loopexit872 ], [ 1, %.preheader873.preheader ] ; 7 uses
  %.not1110 = icmp eq i32 %i.mm, 0
  br i1 %.not1110, label %.preheader871, label %.lr.ph976

.lr.ph976:                                        ; preds = %.preheader873
  %i.mp = load ptr, ptr %0, align 8, !tbaa !49    ; 3 uses
  %wide.trip.count1179 = zext i32 %i.mm to i64    ; 2 uses
  %xtraiter1749 = and i64 %wide.trip.count1179, 1
  %i.mq = icmp eq i32 %i.mm, 1
  br i1 %i.mq, label %.epil.preheader1748, label %.lr.ph976.new

.lr.ph976.new:                                    ; preds = %.lr.ph976
  %unroll_iter1752 = and i64 %wide.trip.count1179, 4294967294
  br label %bb.ap

._crit_edge989.loopexit:                          ; preds = %.loopexit872
  %.pre1296.a = load ptr, ptr %40, align 8, !tbaa !56
  br label %._crit_edge989

._crit_edge989:                                   ; preds = %._crit_edge989.loopexit, %bb.ao
  %i.mr = phi ptr [ %.pre1296.a, %._crit_edge989.loopexit ], [ %i.mf, %bb.ao ] ; 2 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.mt = load i64, ptr %i.ms, align 8, !tbaa !259
  %i.mu = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.mv = load i64, ptr %i.mu, align 8, !tbaa !260
  %i.mw = mul i64 %i.mv, %i.mt
  %i.mx = uitofp i64 %i.mw to float
  %i.my = call float @llvm.fmuladd.f32(float %i.mx, float f0x3C23D70A, float 5.000000e+00)
  %i.mz = fptoui float %i.my to i64
  %.not990 = icmp eq ptr %i.mr, %i.mf
  br i1 %.not990, label %._crit_edge994, label %.lr.ph993

.lr.ph993:                                        ; preds = %._crit_edge989
  %i.na = getelementptr inbounds nuw i8, ptr %36, i64 8 ; 2 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %36, i64 16
  br label %bb.ar

.preheader871.loopexit.unr-lcssa:                 ; preds = %bb.ap
  %lcmp.mod1750.not = icmp eq i64 %xtraiter1749, 0
  br i1 %lcmp.mod1750.not, label %.preheader871, label %.epil.preheader1748

.epil.preheader1748:                              ; preds = %.preheader871.loopexit.unr-lcssa, %.lr.ph976
  %indvars.iv1175.epil.init = phi i64 [ 0, %.lr.ph976 ], [ %indvars.iv.next1176.1, %.preheader871.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod1751 = trunc i32 %i.mm to i1
  call void @llvm.assume(i1 %lcmp.mod1751)
  %i.nc = trunc nuw i64 %indvars.iv1175.epil.init to i32
  %i.nd = add i32 %1, %i.nc
  %i.ne = zext i32 %i.nd to i64
  %i.nf = getelementptr inbounds nuw [88 x i8], ptr %i.mp, i64 %i.ne ; 2 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 40
  %i.nh = load ptr, ptr %i.ng, align 8, !tbaa !245
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nf, i64 16
  %i.nj = load i64, ptr %i.ni, align 8, !tbaa !246
  %i.nk = mul i64 %i.nj, %.0555988
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nh, i64 %i.nk ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.nl, i64 64) ]
  %i.nm = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0755.0, i64 %indvars.iv1175.epil.init
  store ptr %i.nl, ptr %i.nm, align 8, !tbaa !68
  br label %.preheader871

.preheader871:                                    ; preds = %.epil.preheader1748, %.preheader871.loopexit.unr-lcssa, %.preheader873
  %i.nn = load i64, ptr %i.b, align 8, !tbaa !54  ; 2 uses
  %i.no = icmp ugt i64 %i.nn, 2
  br i1 %i.no, label %.preheader870.preheader, label %.loopexit872

.preheader870.preheader:                          ; preds = %.preheader871
  %.pre1293.pre1324 = load ptr, ptr %37, align 8
  %56 = add i64 %.0555988, 1
  %i.np = add i64 %.0555988, -1
  br label %.preheader870

bb.ap:                                            ; preds = %bb.ap, %.lr.ph976.new
  %indvars.iv1175 = phi i64 [ 0, %.lr.ph976.new ], [ %indvars.iv.next1176.1, %bb.ap ] ; 4 uses
  %niter1753 = phi i64 [ 0, %.lr.ph976.new ], [ %niter1753.next.1, %bb.ap ]
  %i.nq = trunc nuw i64 %indvars.iv1175 to i32
  %i.nr = add i32 %1, %i.nq
  %i.ns = zext i32 %i.nr to i64
  %i.nt = getelementptr inbounds nuw [88 x i8], ptr %i.mp, i64 %i.ns ; 2 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nt, i64 40
  %i.nv = load ptr, ptr %i.nu, align 8, !tbaa !245
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nt, i64 16
  %i.nx = load i64, ptr %i.nw, align 8, !tbaa !246
  %i.ny = mul i64 %i.nx, %.0555988
  %i.nz = getelementptr inbounds nuw i8, ptr %i.nv, i64 %i.ny ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.nz, i64 64) ]
  %i.oa = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0755.0, i64 %indvars.iv1175
  store ptr %i.nz, ptr %i.oa, align 8, !tbaa !68
  %indvars.iv.next1176 = or disjoint i64 %indvars.iv1175, 1 ; 2 uses
  %i.ob = trunc nuw i64 %indvars.iv.next1176 to i32
  %i.oc = add i32 %1, %i.ob
  %i.od = zext i32 %i.oc to i64
  %i.oe = getelementptr inbounds nuw [88 x i8], ptr %i.mp, i64 %i.od ; 2 uses
  %i.of = getelementptr inbounds nuw i8, ptr %i.oe, i64 40
  %i.og = load ptr, ptr %i.of, align 8, !tbaa !245
  %i.oh = getelementptr inbounds nuw i8, ptr %i.oe, i64 16
  %i.oi = load i64, ptr %i.oh, align 8, !tbaa !246
  %i.oj = mul i64 %i.oi, %.0555988
  %i.ok = getelementptr inbounds nuw i8, ptr %i.og, i64 %i.oj ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ok, i64 64) ]
  %i.ol = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0755.0, i64 %indvars.iv.next1176
  store ptr %i.ok, ptr %i.ol, align 8, !tbaa !68
  %indvars.iv.next1176.1 = add nuw nsw i64 %indvars.iv1175, 2 ; 2 uses
  %niter1753.next.1 = add i64 %niter1753, 2       ; 2 uses
  %niter1753.ncmp.1 = icmp eq i64 %niter1753.next.1, %unroll_iter1752
  br i1 %niter1753.ncmp.1, label %.preheader871.loopexit.unr-lcssa, label %bb.ap, !llvm.loop !184

.preheader870:                                    ; preds = %.preheader870.preheader, %.critedge1814
  %.pre1293 = phi ptr [ %.pre12931325, %.critedge1814 ], [ %.pre1293.pre1324, %.preheader870.preheader ]
  %i.om = phi i64 [ %i.rr, %.critedge1814 ], [ %i.nn, %.preheader870.preheader ] ; 4 uses
  %i.on = phi i32 [ %.pre12911320, %.critedge1814 ], [ %.pre1291, %.preheader870.preheader ]
  %i.oo = phi i64 [ %i.rs, %.critedge1814 ], [ 2, %.preheader870.preheader ] ; 2 uses
  %.0553987 = phi i64 [ %i.oo, %.critedge1814 ], [ 1, %.preheader870.preheader ] ; 5 uses
  %.not1111 = icmp eq i32 %i.on, 0
  br i1 %.not1111, label %.critedge1104, label %.lr.ph978

.preheader869:                                    ; preds = %.lr.ph978
  %.pre1292.a = load ptr, ptr %37, align 8        ; 8 uses
  %.not1112 = icmp eq i32 %i.rk, 0
  br i1 %.not1112, label %.critedge1104, label %.preheader869.split.us

.preheader869.split.us:                           ; preds = %.preheader869
  %i.op = load ptr, ptr %0, align 8, !tbaa !49    ; 4 uses
  %i.oq = zext i32 %i.rk to i64                   ; 4 uses
  br label %bb.aq

bb.aq:                                            ; preds = %.preheader869.split.us, %bb.aq
  %indvars.iv1185 = phi i64 [ 0, %.preheader869.split.us ], [ %indvars.iv.next1186, %bb.aq ] ; 3 uses
  %i.or = trunc nuw i64 %indvars.iv1185 to i32
  %i.os = add i32 %1, %i.or
  %i.ot = zext i32 %i.os to i64
  %i.ou = getelementptr inbounds nuw [88 x i8], ptr %i.op, i64 %i.ot ; 2 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ou, i64 40
  %i.ow = load ptr, ptr %i.ov, align 8, !tbaa !245
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ou, i64 16
  %i.oy = load i64, ptr %i.ox, align 8, !tbaa !246
  %i.oz = mul i64 %i.oy, %.0555988
  %i.pa = getelementptr inbounds nuw i8, ptr %i.ow, i64 %i.oz ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.pa, i64 64) ]
  %i.pb = getelementptr [4 x i8], ptr %i.pa, i64 %.0553987
  %i.pc = getelementptr i8, ptr %i.pb, i64 4
  %i.pd = load i32, ptr %i.pc, align 4, !tbaa !35
  %i.pe = getelementptr inbounds nuw [4 x i8], ptr %.pre1292.a, i64 %indvars.iv1185
  %i.pf = load i32, ptr %i.pe, align 4, !tbaa !35
  %.not585.us = icmp eq i32 %i.pd, %i.pf          ; 2 uses
  %indvars.iv.next1186 = add nuw nsw i64 %indvars.iv1185, 1 ; 2 uses
  %i.pg = icmp samesign ult i64 %indvars.iv.next1186, %i.oq
  %i.ph = select i1 %i.pg, i1 %.not585.us, i1 false
  br i1 %i.ph, label %bb.aq, label %._crit_edge984.us, !llvm.loop !185

._crit_edge984.us:                                ; preds = %bb.aq
  br i1 %.not585.us, label %.lr.ph983.us.1, label %.critedge1814

.lr.ph983.us.1:                                   ; preds = %._crit_edge984.us, %.lr.ph983.us.1
  %indvars.iv1185.1 = phi i64 [ %indvars.iv.next1186.1, %.lr.ph983.us.1 ], [ 0, %._crit_edge984.us ] ; 3 uses
  %i.pi = trunc nuw i64 %indvars.iv1185.1 to i32
  %i.pj = add i32 %1, %i.pi
  %i.pk = zext i32 %i.pj to i64
  %i.pl = getelementptr inbounds nuw [88 x i8], ptr %i.op, i64 %i.pk ; 2 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pl, i64 40
  %i.pn = load ptr, ptr %i.pm, align 8, !tbaa !245
  %i.po = getelementptr inbounds nuw i8, ptr %i.pl, i64 16
  %i.pp = load i64, ptr %i.po, align 8, !tbaa !246
  %i.pq = mul i64 %i.pp, %.0555988
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pn, i64 %i.pq ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.pr, i64 64) ]
  %i.ps = getelementptr [4 x i8], ptr %i.pr, i64 %.0553987
  %i.pt = getelementptr i8, ptr %i.ps, i64 -4
  %i.pu = load i32, ptr %i.pt, align 4, !tbaa !35
  %i.pv = getelementptr inbounds nuw [4 x i8], ptr %.pre1292.a, i64 %indvars.iv1185.1
  %i.pw = load i32, ptr %i.pv, align 4, !tbaa !35
  %.not585.us.1 = icmp eq i32 %i.pu, %i.pw        ; 2 uses
  %indvars.iv.next1186.1 = add nuw nsw i64 %indvars.iv1185.1, 1 ; 2 uses
  %i.px = icmp samesign ult i64 %indvars.iv.next1186.1, %i.oq
  %i.py = select i1 %i.px, i1 %.not585.us.1, i1 false
  br i1 %i.py, label %.lr.ph983.us.1, label %._crit_edge984.us.1, !llvm.loop !185

._crit_edge984.us.1:                              ; preds = %.lr.ph983.us.1
  br i1 %.not585.us.1, label %.lr.ph983.us.2, label %.critedge1814

.lr.ph983.us.2:                                   ; preds = %._crit_edge984.us.1, %.lr.ph983.us.2
  %indvars.iv1185.2 = phi i64 [ %indvars.iv.next1186.2, %.lr.ph983.us.2 ], [ 0, %._crit_edge984.us.1 ] ; 3 uses
  %i.pz = trunc nuw i64 %indvars.iv1185.2 to i32
  %i.qa = add i32 %1, %i.pz
  %i.qb = zext i32 %i.qa to i64
  %i.qc = getelementptr inbounds nuw [88 x i8], ptr %i.op, i64 %i.qb ; 2 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qc, i64 40
  %i.qe = load ptr, ptr %i.qd, align 8, !tbaa !245
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qc, i64 16
  %i.qg = load i64, ptr %i.qf, align 8, !tbaa !246
  %i.qh = mul i64 %i.qg, %56
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qe, i64 %i.qh ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.qi, i64 64) ]
  %i.qj = getelementptr [4 x i8], ptr %i.qi, i64 %.0553987
  %i.qk = load i32, ptr %i.qj, align 4, !tbaa !35
  %i.ql = getelementptr inbounds nuw [4 x i8], ptr %.pre1292.a, i64 %indvars.iv1185.2
  %i.qm = load i32, ptr %i.ql, align 4, !tbaa !35
  %.not585.us.2 = icmp eq i32 %i.qk, %i.qm        ; 2 uses
  %indvars.iv.next1186.2 = add nuw nsw i64 %indvars.iv1185.2, 1 ; 2 uses
  %i.qn = icmp samesign ult i64 %indvars.iv.next1186.2, %i.oq
  %i.qo = select i1 %i.qn, i1 %.not585.us.2, i1 false
  br i1 %i.qo, label %.lr.ph983.us.2, label %._crit_edge984.us.2, !llvm.loop !185

._crit_edge984.us.2:                              ; preds = %.lr.ph983.us.2
  br i1 %.not585.us.2, label %.lr.ph983.us.3, label %.critedge1814

.lr.ph983.us.3:                                   ; preds = %._crit_edge984.us.2, %.lr.ph983.us.3
  %indvars.iv1185.3 = phi i64 [ %indvars.iv.next1186.3, %.lr.ph983.us.3 ], [ 0, %._crit_edge984.us.2 ] ; 3 uses
  %i.qp = trunc nuw i64 %indvars.iv1185.3 to i32
  %i.qq = add i32 %1, %i.qp
  %i.qr = zext i32 %i.qq to i64
  %i.qs = getelementptr inbounds nuw [88 x i8], ptr %i.op, i64 %i.qr ; 2 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qs, i64 40
  %i.qu = load ptr, ptr %i.qt, align 8, !tbaa !245
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qs, i64 16
  %i.qw = load i64, ptr %i.qv, align 8, !tbaa !246
  %i.qx = mul i64 %i.qw, %i.np
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qu, i64 %i.qx ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.qy, i64 64) ]
  %i.qz = getelementptr [4 x i8], ptr %i.qy, i64 %.0553987
  %i.ra = load i32, ptr %i.qz, align 4, !tbaa !35
  %i.rb = getelementptr inbounds nuw [4 x i8], ptr %.pre1292.a, i64 %indvars.iv1185.3
  %i.rc = load i32, ptr %i.rb, align 4, !tbaa !35
  %.not585.us.3 = icmp eq i32 %i.ra, %i.rc        ; 2 uses
  %indvars.iv.next1186.3 = add nuw nsw i64 %indvars.iv1185.3, 1 ; 2 uses
  %i.rd = icmp samesign ult i64 %indvars.iv.next1186.3, %i.oq
  %i.re = select i1 %i.rd, i1 %.not585.us.3, i1 false
  br i1 %i.re, label %.lr.ph983.us.3, label %.split.us, !llvm.loop !185

.lr.ph978:                                        ; preds = %.preheader870, %.lr.ph978
  %indvars.iv1181 = phi i64 [ %indvars.iv.next1182, %.lr.ph978 ], [ 0, %.preheader870 ] ; 3 uses
  %i.rf = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0755.0, i64 %indvars.iv1181
  %i.rg = load ptr, ptr %i.rf, align 8, !tbaa !68
  %i.rh = getelementptr inbounds nuw [4 x i8], ptr %i.rg, i64 %.0553987
  %i.ri = load i32, ptr %i.rh, align 4, !tbaa !35
  %i.rj = getelementptr inbounds nuw [4 x i8], ptr %.pre1293, i64 %indvars.iv1181
  store i32 %i.ri, ptr %i.rj, align 4, !tbaa !35
  %indvars.iv.next1182 = add nuw nsw i64 %indvars.iv1181, 1 ; 2 uses
  %i.rk = load i32, ptr %i.a, align 4, !tbaa !35  ; 7 uses
  %i.rl = zext i32 %i.rk to i64
  %i.rm = icmp samesign ult i64 %indvars.iv.next1182, %i.rl
  br i1 %i.rm, label %.lr.ph978, label %.preheader869, !llvm.loop !186

.split.us:                                        ; preds = %.lr.ph983.us.3
  br i1 %.not585.us.3, label %.critedge1104, label %.critedge1814

.critedge1104:                                    ; preds = %.preheader870, %.preheader869, %.split.us
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #20
  store ptr %37, ptr %24, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #20
  %i.rn = call { ptr, i8 } @_ZNSt3__16__treeINS_12__value_typeINS_6vectorIiNS_9allocatorIiEEEEmEENS_19__map_value_compareIS5_S6_NS_4lessIS5_EELb1EEENS3_IS6_EEE25__emplace_unique_key_argsIS5_JRKNS_21piecewise_construct_tENS_5tupleIJRKS5_EEENSH_IJEEEEEENS_4pairINS_15__tree_iteratorIS6_PNS_11__tree_nodeIS6_PvEElEEbEERKT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(24) %40, ptr noundef nonnull align 8 dereferenceable(24) %37, ptr noundef nonnull align 1 dereferenceable(1) @_ZNSt3__119piecewise_constructE, ptr noundef nonnull align 8 dereferenceable(8) %24, ptr noundef nonnull align 1 dereferenceable(1) %25) #22
  %.fca.0.extract.i = extractvalue { ptr, i8 } %i.rn, 0
  %i.ro = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i, i64 56 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #20
  %i.rp = load i64, ptr %i.ro, align 8, !tbaa !54
  %i.rq = add i64 %i.rp, 1
  store i64 %i.rq, ptr %i.ro, align 8, !tbaa !54
  %.pre1290 = load i32, ptr %i.a, align 4, !tbaa !35
  %.pre1294 = load i64, ptr %i.b, align 8, !tbaa !54
  %.pre1293.pre = load ptr, ptr %37, align 8
  br label %.critedge1814

.critedge1814:                                    ; preds = %._crit_edge984.us, %._crit_edge984.us.1, %._crit_edge984.us.2, %.critedge1104, %.split.us
  %.pre12931325 = phi ptr [ %.pre1293.pre, %.critedge1104 ], [ %.pre1292.a, %.split.us ], [ %.pre1292.a, %._crit_edge984.us.2 ], [ %.pre1292.a, %._crit_edge984.us.1 ], [ %.pre1292.a, %._crit_edge984.us ]
  %.pre12911320 = phi i32 [ %.pre1290, %.critedge1104 ], [ %i.rk, %.split.us ], [ %i.rk, %._crit_edge984.us.2 ], [ %i.rk, %._crit_edge984.us.1 ], [ %i.rk, %._crit_edge984.us ] ; 3 uses
  %i.rr = phi i64 [ %.pre1294, %.critedge1104 ], [ %i.om, %.split.us ], [ %i.om, %._crit_edge984.us.2 ], [ %i.om, %._crit_edge984.us.1 ], [ %i.om, %._crit_edge984.us ] ; 2 uses
  %i.rs = add nuw i64 %i.oo, 1                    ; 2 uses
  %i.rt = icmp ult i64 %i.rs, %i.rr
  br i1 %i.rt, label %.preheader870, label %.loopexit872.loopexit, !llvm.loop !187

._crit_edge994:                                   ; preds = %_ZNSt3__114__map_iteratorINS_15__tree_iteratorINS_12__value_typeINS_6vectorIiNS_9allocatorIiEEEEmEEPNS_11__tree_nodeIS7_PvEElEEEppB8nn180100Ev.exit, %._crit_edge989
  %i.ru = load ptr, ptr %i.mf, align 8, !tbaa !62
  call void @_ZNSt3__16__treeINS_12__value_typeINS_6vectorIiNS_9allocatorIiEEEEmEENS_19__map_value_compareIS5_S6_NS_4lessIS5_EELb1EEENS3_IS6_EEE7destroyEPNS_11__tree_nodeIS6_PvEE(ptr noundef nonnull align 8 dereferenceable(24) %40, ptr noundef %i.ru) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #20
  br label %bb.ay

bb.ar:                                            ; preds = %.lr.ph993, %_ZNSt3__114__map_iteratorINS_15__tree_iteratorINS_12__value_typeINS_6vectorIiNS_9allocatorIiEEEEmEEPNS_11__tree_nodeIS7_PvEElEEEppB8nn180100Ev.exit
  %.sroa.0752.0991 = phi ptr [ %i.mr, %.lr.ph993 ], [ %.06.i.i.i, %_ZNSt3__114__map_iteratorINS_15__tree_iteratorINS_12__value_typeINS_6vectorIiNS_9allocatorIiEEEEmEEPNS_11__tree_nodeIS7_PvEElEEEppB8nn180100Ev.exit ] ; 5 uses
  %i.rv = getelementptr inbounds nuw i8, ptr %.sroa.0752.0991, i64 32 ; 4 uses
  %i.rw = getelementptr inbounds nuw i8, ptr %.sroa.0752.0991, i64 56
  %i.rx = load i64, ptr %i.rw, align 8, !tbaa !75
  %i.ry = icmp ugt i64 %i.rx, %i.mz
  br i1 %i.ry, label %bb.as, label %bb.ax

bb.as:                                            ; preds = %bb.ar
  %i.rz = call { ptr, i8 } @_ZNSt3__16__treeINS_6vectorIiNS_9allocatorIiEEEENS_4lessIS4_EENS2_IS4_EEE25__emplace_unique_key_argsIS4_JRKS4_EEENS_4pairINS_15__tree_iteratorIS4_PNS_11__tree_nodeIS4_PvEElEEbEERKT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(24) %35, ptr noundef nonnull align 8 dereferenceable(24) %i.rv, ptr noundef nonnull align 8 dereferenceable(24) %i.rv) #22 ; 0 uses
  %i.sa = load ptr, ptr %i.na, align 8, !tbaa !80 ; 7 uses
  %i.sb = load ptr, ptr %i.nb, align 8, !tbaa !81
  %i.sc = icmp ult ptr %i.sa, %i.sb
  br i1 %i.sc, label %bb.at, label %bb.aw

bb.at:                                            ; preds = %bb.as
  %i.sd = getelementptr inbounds nuw i8, ptr %i.sa, i64 8 ; 2 uses
  %i.se = getelementptr inbounds nuw i8, ptr %i.sa, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.sa, i8 0, i64 24, i1 false)
  %i.sf = load ptr, ptr %i.rv, align 8, !tbaa !34 ; 3 uses
  %i.sg = getelementptr inbounds nuw i8, ptr %.sroa.0752.0991, i64 40
  %i.sh = load ptr, ptr %i.sg, align 8, !tbaa !67 ; 2 uses
  %i.si = ptrtoint ptr %i.sh to i64
  %i.sj = ptrtoint ptr %i.sf to i64
  %i.sk = sub i64 %i.si, %i.sj                    ; 4 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.sh, %i.sf
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt3__16vectorINS0_IiNS_9allocatorIiEEEENS1_IS3_EEE22__construct_one_at_endB8nn180100IJRKS3_EEEvDpOT_.exit.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.sl = icmp slt i64 %i.sk, 0
  br i1 %i.sl, label %bb.av, label %_ZNSt3__16vectorIiNS_9allocatorIiEEE11__vallocateB8nn180100Em.exit.i.i.i.i.i.i

bb.av:                                            ; preds = %bb.au
  call void @_ZNKSt3__16vectorIiNS_9allocatorIiEEE20__throw_length_errorB8nn180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.sa) #24
  unreachable

_ZNSt3__16vectorIiNS_9allocatorIiEEE11__vallocateB8nn180100Em.exit.i.i.i.i.i.i: ; preds = %bb.au
  %i.sm = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.sk) #21 ; 4 uses
  store ptr %i.sm, ptr %i.sa, align 8, !tbaa !34
  store ptr %i.sm, ptr %i.sd, align 8, !tbaa !67
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sm, i64 %i.sk ; 2 uses
  store ptr %i.sn, ptr %i.se, align 8, !tbaa !68
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.sm, ptr align 4 %i.sf, i64 %i.sk, i1 false)
  store ptr %i.sn, ptr %i.sd, align 8, !tbaa !67
  br label %_ZNSt3__16vectorINS0_IiNS_9allocatorIiEEEENS1_IS3_EEE22__construct_one_at_endB8nn180100IJRKS3_EEEvDpOT_.exit.i

_ZNSt3__16vectorINS0_IiNS_9allocatorIiEEEENS1_IS3_EEE22__construct_one_at_endB8nn180100IJRKS3_EEEvDpOT_.exit.i: ; preds = %_ZNSt3__16vectorIiNS_9allocatorIiEEE11__vallocateB8nn180100Em.exit.i.i.i.i.i.i, %bb.at
  %i.so = getelementptr inbounds nuw i8, ptr %i.sa, i64 24
  br label %_ZNSt3__16vectorINS0_IiNS_9allocatorIiEEEENS1_IS3_EEE9push_backB8nn180100ERKS3_.exit

bb.aw:                                            ; preds = %bb.as
  %i.sp = call noundef ptr @_ZNSt3__16vectorINS0_IiNS_9allocatorIiEEEENS1_IS3_EEE21__push_back_slow_pathIRKS3_EEPS3_OT_(ptr noundef nonnull align 8 dereferenceable(24) %36, ptr noundef nonnull align 8 dereferenceable(24) %i.rv) #22
  br label %_ZNSt3__16vectorINS0_IiNS_9allocatorIiEEEENS1_IS3_EEE9push_backB8nn180100ERKS3_.exit

_ZNSt3__16vectorINS0_IiNS_9allocatorIiEEEENS1_IS3_EEE9push_backB8nn180100ERKS3_.exit: ; preds = %_ZNSt3__16vectorINS0_IiNS_9allocatorIiEEEENS1_IS3_EEE22__construct_one_at_endB8nn180100IJRKS3_EEEvDpOT_.exit.i, %bb.aw
  %.0.i609 = phi ptr [ %i.so, %_ZNSt3__16vectorINS0_IiNS_9allocatorIiEEEENS1_IS3_EEE22__construct_one_at_endB8nn180100IJRKS3_EEEvDpOT_.exit.i ], [ %i.sp, %bb.aw ]
  store ptr %.0.i609, ptr %i.na, align 8, !tbaa !80
  br label %bb.ax

bb.ax:                                            ; preds = %_ZNSt3__16vectorINS0_IiNS_9allocatorIiEEEENS1_IS3_EEE9push_backB8nn180100ERKS3_.exit, %bb.ar
  %i.sq = getelementptr inbounds nuw i8, ptr %.sroa.0752.0991, i64 8
  %i.sr = load ptr, ptr %i.sq, align 8, !tbaa !65 ; 2 uses
  %.not.i.i.i610 = icmp eq ptr %i.sr, null
  br i1 %.not.i.i.i610, label %.preheader.i.i.i, label %.preheader8.i.i.i

.preheader8.i.i.i:                                ; preds = %bb.ax, %.preheader8.i.i.i
  %.0.i.i.i.i = phi ptr [ %i.ss, %.preheader8.i.i.i ], [ %i.sr, %bb.ax ] ; 2 uses
  %i.ss = load ptr, ptr %.0.i.i.i.i, align 8, !tbaa !62 ; 2 uses
  %.not.i.i.i.i611 = icmp eq ptr %i.ss, null
  br i1 %.not.i.i.i.i611, label %_ZNSt3__114__map_iteratorINS_15__tree_iteratorINS_12__value_typeINS_6vectorIiNS_9allocatorIiEEEEmEEPNS_11__tree_nodeIS7_PvEElEEEppB8nn180100Ev.exit, label %.preheader8.i.i.i, !llvm.loop !0

.preheader.i.i.i:                                 ; preds = %bb.ax, %.preheader.i.i.i
  %.0.i.i.i612 = phi ptr [ %i.su, %.preheader.i.i.i ], [ %.sroa.0752.0991, %bb.ax ] ; 2 uses
  %i.st = getelementptr inbounds nuw i8, ptr %.0.i.i.i612, i64 16
  %i.su = load ptr, ptr %i.st, align 8, !tbaa !61 ; 3 uses
  %i.sv = load ptr, ptr %i.su, align 8, !tbaa !62
  %i.sw = icmp eq ptr %.0.i.i.i612, %i.sv
  br i1 %i.sw, label %_ZNSt3__114__map_iteratorINS_15__tree_iteratorINS_12__value_typeINS_6vectorIiNS_9allocatorIiEEEEmEEPNS_11__tree_nodeIS7_PvEElEEEppB8nn180100Ev.exit, label %.preheader.i.i.i, !llvm.loop !1

_ZNSt3__114__map_iteratorINS_15__tree_iteratorINS_12__value_typeINS_6vectorIiNS_9allocatorIiEEEEmEEPNS_11__tree_nodeIS7_PvEElEEEppB8nn180100Ev.exit: ; preds = %.preheader8.i.i.i, %.preheader.i.i.i
  %.06.i.i.i = phi ptr [ %i.su, %.preheader.i.i.i ], [ %.0.i.i.i.i, %.preheader8.i.i.i ] ; 2 uses
  %.not = icmp eq ptr %.06.i.i.i, %i.mf
  br i1 %.not, label %._crit_edge994, label %bb.ar

bb.ay:                                            ; preds = %._crit_edge994, %_ZNSt3__16vectorIPKiNS_9allocatorIS2_EEEC2Em.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #20
  %i.sx = getelementptr inbounds nuw i8, ptr %41, i64 8 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.sx, i8 0, i64 16, i1 false)
  store ptr %i.sx, ptr %41, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %42, i8 0, i64 24, i1 false)
  %i.sy = getelementptr inbounds nuw i8, ptr %42, i64 16 ; 4 uses
  %i.sz = getelementptr inbounds nuw i8, ptr %42, i64 8 ; 7 uses
  %i.ta = call noalias noundef nonnull dereferenceable(4536) ptr @_Znwm(i64 noundef 4536) #21 ; 4 uses
  %i.tb = getelementptr inbounds nuw i8, ptr %i.ta, i64 4536
  %i.tc = load ptr, ptr %i.sz, align 8, !tbaa !80 ; 3 uses
  %i.td = load ptr, ptr %42, align 8, !tbaa !81   ; 3 uses
  %.not13.i.i.i = icmp eq ptr %i.tc, %i.td
  br i1 %.not13.i.i.i, label %_ZNSt3__16vectorINS0_IiNS_9allocatorIiEEEENS1_IS3_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS3_RS4_EE.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ay, %.lr.ph.i.i.i
  %i.te = phi ptr [ %i.tf, %.lr.ph.i.i.i ], [ %i.ta, %bb.ay ] ; 2 uses
  %.sroa.18.014.i.i.i = phi ptr [ %i.tg, %.lr.ph.i.i.i ], [ %i.tc, %bb.ay ] ; 2 uses
  %i.tf = getelementptr inbounds i8, ptr %i.te, i64 -24 ; 3 uses
  %i.tg = getelementptr inbounds i8, ptr %.sroa.18.014.i.i.i, i64 -24 ; 4 uses
  %i.th = getelementptr inbounds i8, ptr %i.te, i64 -8
  %i.ti = load <2 x ptr>, ptr %i.tg, align 8, !tbaa !68
  store <2 x ptr> %i.ti, ptr %i.tf, align 8, !tbaa !68
  %i.tj = getelementptr inbounds i8, ptr %.sroa.18.014.i.i.i, i64 -8
  %i.tk = load ptr, ptr %i.tj, align 8, !tbaa !68
  store ptr %i.tk, ptr %i.th, align 8, !tbaa !68
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.tg, i8 0, i64 24, i1 false)
  %.not.i.i.i613 = icmp eq ptr %i.tg, %i.td
  br i1 %.not.i.i.i613, label %_ZNSt3__16vectorINS0_IiNS_9allocatorIiEEEENS1_IS3_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS3_RS4_EE.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !2

_ZNSt3__16vectorINS0_IiNS_9allocatorIiEEEENS1_IS3_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS3_RS4_EE.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %42, align 8, !tbaa !81
  %.pre.i = load ptr, ptr %i.sz, align 8, !tbaa !81
  br label %_ZNSt3__16vectorINS0_IiNS_9allocatorIiEEEENS1_IS3_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS3_RS4_EE.exit.i

_ZNSt3__16vectorINS0_IiNS_9allocatorIiEEEENS1_IS3_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS3_RS4_EE.exit.i: ; preds = %_ZNSt3__16vectorINS0_IiNS_9allocatorIiEEEENS1_IS3_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS3_RS4_EE.exitthread-pre-split.i, %bb.ay
  %i.tl = phi ptr [ %.pre.i, %_ZNSt3__16vectorINS0_IiNS_9allocatorIiEEEENS1_IS3_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS3_RS4_EE.exitthread-pre-split.i ], [ %i.tc, %bb.ay ] ; 2 uses
  %i.tm = phi ptr [ %.pr.i, %_ZNSt3__16vectorINS0_IiNS_9allocatorIiEEEENS1_IS3_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS3_RS4_EE.exitthread-pre-split.i ], [ %i.td, %bb.ay ] ; 5 uses
  %.sroa.2.0.copyload.i.i.i = phi ptr [ %i.tf, %_ZNSt3__16vectorINS0_IiNS_9allocatorIiEEEENS1_IS3_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS3_RS4_EE.exitthread-pre-split.i ], [ %i.ta, %bb.ay ]
  store ptr %.sroa.2.0.copyload.i.i.i, ptr %42, align 8, !tbaa !81
  store ptr %i.ta, ptr %i.sz, align 8, !tbaa !81
  %i.tn = load ptr, ptr %i.sy, align 8, !tbaa !81
  store ptr %i.tb, ptr %i.sy, align 8, !tbaa !81
  %.not2.i.i.i.i.i = icmp eq ptr %i.tm, %i.tl
  br i1 %.not2.i.i.i.i.i, label %_ZNSt3__114__split_bufferINS_6vectorIiNS_9allocatorIiEEEERNS2_IS4_EEE5clearB8nn180100Ev.exit.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt3__16vectorINS0_IiNS_9allocatorIiEEEENS1_IS3_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS3_RS4_EE.exit.i, %_ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorIiNS1_IiEEEEEEE7destroyB8nn180100IS4_vEEvRS5_PT_.exit.i.i.i.i.i
  %i.to = phi ptr [ %i.tp, %_ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorIiNS1_IiEEEEEEE7destroyB8nn180100IS4_vEEvRS5_PT_.exit.i.i.i.i.i ], [ %i.tl, %_ZNSt3__16vectorINS0_IiNS_9allocatorIiEEEENS1_IS3_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS3_RS4_EE.exit.i ] ; 3 uses
  %i.tp = getelementptr inbounds i8, ptr %i.to, i64 -24 ; 3 uses
  %i.tq = load ptr, ptr %i.tp, align 8, !tbaa !34 ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.tq, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorIiNS1_IiEEEEEEE7destroyB8nn180100IS4_vEEvRS5_PT_.exit.i.i.i.i.i, label %bb.az

bb.az:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.tr = getelementptr inbounds i8, ptr %i.to, i64 -16
  store ptr %i.tq, ptr %i.tr, align 8, !tbaa !67
  %i.ts = getelementptr inbounds i8, ptr %i.to, i64 -8
  %i.tt = load ptr, ptr %i.ts, align 8, !tbaa !68
  %i.tu = ptrtoint ptr %i.tt to i64
  %i.tv = ptrtoint ptr %i.tq to i64
  %i.tw = sub i64 %i.tu, %i.tv
  call void @_ZdlPvm(ptr noundef nonnull %i.tq, i64 noundef %i.tw) #23
  br label %_ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorIiNS1_IiEEEEEEE7destroyB8nn180100IS4_vEEvRS5_PT_.exit.i.i.i.i.i

_ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorIiNS1_IiEEEEEEE7destroyB8nn180100IS4_vEEvRS5_PT_.exit.i.i.i.i.i: ; preds = %bb.az, %.lr.ph.i.i.i.i.i
  %.not.i.i.i.i.i = icmp eq ptr %i.tm, %i.tp
  br i1 %.not.i.i.i.i.i, label %_ZNSt3__114__split_bufferINS_6vectorIiNS_9allocatorIiEEEERNS2_IS4_EEE5clearB8nn180100Ev.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !3

_ZNSt3__114__split_bufferINS_6vectorIiNS_9allocatorIiEEEERNS2_IS4_EEE5clearB8nn180100Ev.exit.i.i: ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorIiNS1_IiEEEEEEE7destroyB8nn180100IS4_vEEvRS5_PT_.exit.i.i.i.i.i, %_ZNSt3__16vectorINS0_IiNS_9allocatorIiEEEENS1_IS3_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS3_RS4_EE.exit.i
  %.not.i.i614 = icmp eq ptr %i.tm, null
  br i1 %.not.i.i614, label %.preheader867.preheader, label %bb.ba

end_hunk_0
