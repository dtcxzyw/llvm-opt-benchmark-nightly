Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/stereosgbm?download=true
inline.NumInlined: 570
inline.NumDeleted: 149
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_ZN2cv14StereoSGBMImpl7computeERKNS_11_InputArrayES3_RKNS_12_OutputArrayE:bb.a
  store i32 %.sroa.speculated24.i.i, ptr %i.hj, align 4, !tbaa !143
  %i.hk = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 2 uses
  %i.hl = load i32, ptr %i.hk, align 8, !tbaa !39
  %i.hm = getelementptr inbounds nuw i8, ptr %11, i64 68
  store i32 %i.hl, ptr %i.hm, align 4, !tbaa !144
  %i.hn = getelementptr inbounds nuw i8, ptr %22, i64 12 ; 2 uses
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !37 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %11, i64 60
  store i32 %i.ho, ptr %i.hp, align 4, !tbaa !145
  %.sroa.speculated20.i.i = call i32 @llvm.smax.i32(i32 %i.gu, i32 0)
  %.sroa.speculated.i.i = call i32 @llvm.smin.i32(i32 %i.gr, i32 0)
  %i.hq = getelementptr inbounds nuw i8, ptr %11, i64 40
  %i.hr = add i32 %i.gt, 7
  %i.hs = and i32 %i.hr, -8                       ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %11, i64 44
  store i32 %i.hs, ptr %i.ht, align 4, !tbaa !146
  %i.hu = add nsw i32 %i.hs, 8
  %i.hv = getelementptr inbounds nuw i8, ptr %11, i64 48
  store i32 %i.hu, ptr %i.hv, align 8, !tbaa !453
  %i.hw = sub i32 %.sroa.speculated.i.i, %.sroa.speculated20.i.i
  %i.hx = add i32 %i.hw, %i.ho
  %i.hy = getelementptr inbounds nuw i8, ptr %11, i64 64
  store i32 %i.hx, ptr %i.hy, align 8, !tbaa !147
  store i32 %i.gt, ptr %i.hq, align 8, !tbaa !148
  invoke void @_ZN2cv13parallel_for_ERKNS_5RangeERKNS_16ParallelLoopBodyEd(ptr noundef nonnull align 4 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %11, double noundef 8.000000e+00)
          to label %bb.ay unwind label %bb.bc

bb.ay:                                            ; preds = %.loopexit.i
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %11) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  store i32 0, ptr %12, align 4, !tbaa !87
  %i.hz = getelementptr inbounds nuw i8, ptr %12, i64 4
  store i32 %i.eu, ptr %i.hz, align 4, !tbaa !86
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv18CalcHorizontalSumsE, i64 16), ptr %13, align 8, !tbaa !9
  %i.ia = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %22, ptr %i.ia, align 8, !tbaa !451
  %i.ib = getelementptr inbounds nuw i8, ptr %13, i64 16
  store ptr %23, ptr %i.ib, align 8, !tbaa !451
  %i.ic = getelementptr inbounds nuw i8, ptr %13, i64 24
  store ptr %26, ptr %i.ic, align 8, !tbaa !451
  %i.id = getelementptr inbounds nuw i8, ptr %13, i64 32
  store ptr %9, ptr %i.id, align 8, !tbaa !452
  %i.ie = load i32, ptr %i.ca, align 8, !tbaa !42 ; 4 uses
  %i.if = getelementptr inbounds nuw i8, ptr %13, i64 40
  store i32 %i.ie, ptr %i.if, align 8, !tbaa !150
  %i.ig = load i32, ptr %i.el, align 4, !tbaa !44 ; 3 uses
  %i.ih = add nsw i32 %i.ig, %i.ie                ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %13, i64 44
  store i32 %i.ih, ptr %i.ii, align 4, !tbaa !454
  %i.ij = load i32, ptr %i.ep, align 4, !tbaa !54 ; 2 uses
  %i.ik = icmp sgt i32 %i.ij, 0
  %spec.select.i51.i = select i1 %i.ik, i32 %i.ij, i32 2 ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %13, i64 72
  store i32 %spec.select.i51.i, ptr %i.il, align 8, !tbaa !151
  %i.im = load i32, ptr %i.eq, align 8, !tbaa !56 ; 2 uses
  %i.in = icmp sgt i32 %i.im, 0
  %i.io = select i1 %i.in, i32 %i.im, i32 5
  %i.ip = add nsw i32 %spec.select.i51.i, 1
  %.sroa.speculated26.i.i = call i32 @llvm.smax.i32(i32 %i.io, i32 %i.ip)
  %i.iq = getelementptr inbounds nuw i8, ptr %13, i64 76
  store i32 %.sroa.speculated26.i.i, ptr %i.iq, align 4, !tbaa !152
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.is = load i32, ptr %i.ir, align 8, !tbaa !58 ; 2 uses
  %i.it = icmp sgt i32 %i.is, -1
  %i.iu = select i1 %i.it, i32 %i.is, i32 10
  %i.iv = getelementptr inbounds nuw i8, ptr %13, i64 96
  store i32 %i.iu, ptr %i.iv, align 8, !tbaa !153
  %i.iw = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !60
  %i.iy = call i32 @llvm.smax.i32(i32 %i.ix, i32 1)
  %i.iz = getelementptr inbounds nuw i8, ptr %13, i64 100
  store i32 %i.iy, ptr %i.iz, align 4, !tbaa !154
  %i.ja = load i32, ptr %i.hk, align 8, !tbaa !39
  %i.jb = getelementptr inbounds nuw i8, ptr %13, i64 68
  store i32 %i.ja, ptr %i.jb, align 4, !tbaa !455
  %i.jc = load i32, ptr %i.hn, align 4, !tbaa !37 ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %13, i64 60
  store i32 %i.jc, ptr %i.jd, align 4, !tbaa !155
  %.sroa.speculated22.i.i = call i32 @llvm.smax.i32(i32 %i.ih, i32 0) ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %13, i64 80
  store i32 %.sroa.speculated22.i.i, ptr %i.je, align 8, !tbaa !156
  %.sroa.speculated.i52.i = call i32 @llvm.smin.i32(i32 %i.ie, i32 0)
  %i.jf = add nsw i32 %i.jc, %.sroa.speculated.i52.i ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %13, i64 84
  store i32 %i.jf, ptr %i.jg, align 4, !tbaa !157
  %i.jh = add nsw i32 %i.ie, -1                   ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %13, i64 88
  store i32 %i.jh, ptr %i.ji, align 8, !tbaa !456
  %i.jj = shl nsw i32 %i.jh, 4
  %i.jk = getelementptr inbounds nuw i8, ptr %13, i64 92
  store i32 %i.jj, ptr %i.jk, align 4, !tbaa !158
  %i.jl = getelementptr inbounds nuw i8, ptr %13, i64 48
  store i32 %i.ig, ptr %i.jl, align 8, !tbaa !159
  %i.jm = add i32 %i.ig, 7
  %i.jn = and i32 %i.jm, -8                       ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %13, i64 52
  store i32 %i.jn, ptr %i.jo, align 4, !tbaa !160
  %i.jp = add nsw i32 %i.jn, 8
  %i.jq = getelementptr inbounds nuw i8, ptr %13, i64 56
  store i32 %i.jp, ptr %i.jq, align 8, !tbaa !161
  %i.jr = sub nsw i32 %i.jf, %.sroa.speculated22.i.i
  %i.js = getelementptr inbounds nuw i8, ptr %13, i64 64
  store i32 %i.jr, ptr %i.js, align 8, !tbaa !162
  invoke void @_ZN2cv13parallel_for_ERKNS_5RangeERKNS_16ParallelLoopBodyEd(ptr noundef nonnull align 4 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %13, double noundef 8.000000e+00)
          to label %bb.az unwind label %bb.bd

bb.az:                                            ; preds = %bb.ay
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %13) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  %i.jt = getelementptr inbounds nuw i8, ptr %9, i64 168
  call void @_ZN2cv5utils10BufferAreaD1Ev(ptr noundef nonnull align 8 dead_on_return(41) dereferenceable(41) %i.jt) #23
  %i.ju = getelementptr inbounds nuw i8, ptr %9, i64 136
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !163 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.jv, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIPsSaIS0_EED2Ev.exit.i.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.jw = getelementptr inbounds nuw i8, ptr %9, i64 152
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !164
  %i.jy = ptrtoint ptr %i.jx to i64
  %i.jz = ptrtoint ptr %i.jv to i64
  %i.ka = sub i64 %i.jy, %i.jz
  call void @_ZdlPvm(ptr noundef nonnull %i.jv, i64 noundef %i.ka) #25
  br label %_ZNSt6vectorIPsSaIS0_EED2Ev.exit.i.i

_ZNSt6vectorIPsSaIS0_EED2Ev.exit.i.i:             ; preds = %bb.ba, %bb.az
  %i.kb = getelementptr inbounds nuw i8, ptr %9, i64 112
  %i.kc = load ptr, ptr %i.kb, align 8, !tbaa !163 ; 3 uses
  %.not.i.i.i1.i.i = icmp eq ptr %i.kc, null
  br i1 %.not.i.i.i1.i.i, label %_ZN2cv10BufferSGBMD2Ev.exit.i, label %bb.bb

bb.bb:                                            ; preds = %_ZNSt6vectorIPsSaIS0_EED2Ev.exit.i.i
  %i.kd = getelementptr inbounds nuw i8, ptr %9, i64 128
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !164
  %i.kf = ptrtoint ptr %i.ke to i64
  %i.kg = ptrtoint ptr %i.kc to i64
  %i.kh = sub i64 %i.kf, %i.kg
  call void @_ZdlPvm(ptr noundef nonnull %i.kc, i64 noundef %i.kh) #25
  br label %_ZN2cv10BufferSGBMD2Ev.exit.i

_ZN2cv10BufferSGBMD2Ev.exit.i:                    ; preds = %bb.bb, %_ZNSt6vectorIPsSaIS0_EED2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %bb.cw

bb.bc:                                            ; preds = %.loopexit.i
  %i.ki = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %11) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.be

bb.bd:                                            ; preds = %bb.ay
  %i.kj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %13) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %.pn46.pn.i = phi { ptr, i32 } [ %i.kj, %bb.bd ], [ %i.ki, %bb.bc ]
  call void @_ZN2cv10BufferSGBMD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216) %9) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %.body68

bb.bf:                                            ; preds = %_ZNK2cv11_InputArray6getMatEi.exit67
  %i.kk = load i32, ptr %i.ca, align 8, !tbaa !42 ; 8 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.km = load i32, ptr %i.kl, align 4, !tbaa !44 ; 12 uses
  %i.kn = add i32 %i.km, %i.kk                    ; 3 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.kp = load i32, ptr %i.ko, align 8, !tbaa !58 ; 2 uses
  %i.kq = icmp sgt i32 %i.kp, -1
  %i.kr = sub nsw i32 100, %i.kp
  %spec.select.i = select i1 %i.kq, i32 %i.kr, i32 90
  %i.ks = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.kt = load i32, ptr %i.ks, align 4, !tbaa !60
  %i.ku = call i32 @llvm.smax.i32(i32 %i.kt, i32 1) ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.kw = load i32, ptr %i.kv, align 4, !tbaa !54 ; 2 uses
  %i.kx = icmp sgt i32 %i.kw, 0
  %i.ky = select i1 %i.kx, i32 %i.kw, i32 2       ; 11 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.la = load i32, ptr %i.kz, align 8, !tbaa !56 ; 2 uses
  %i.lb = icmp sgt i32 %i.la, 0
  %i.lc = select i1 %i.lb, i32 %i.la, i32 5
  %i.ld = add nuw nsw i32 %i.ky, 1
  %.sroa.speculated938.i = call i32 @llvm.smax.i32(i32 %i.lc, i32 %i.ld) ; 6 uses
  %i.le = getelementptr inbounds nuw i8, ptr %26, i64 12
  %i.lf = load i32, ptr %i.le, align 4, !tbaa !37 ; 9 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.lh = load i32, ptr %i.lg, align 8, !tbaa !39 ; 4 uses
  %.sroa.speculated927.i = call i32 @llvm.smax.i32(i32 %i.kn, i32 0) ; 3 uses
  %.sroa.speculated921.i = call i32 @llvm.smin.i32(i32 %i.kk, i32 0)
  %i.li = add i32 %i.lf, %.sroa.speculated921.i   ; 3 uses
  %i.lj = sub i32 %i.li, %.sroa.speculated927.i   ; 8 uses
  %i.lk = sext i32 %i.km to i64                   ; 6 uses
  %i.ll = add nsw i64 %i.lk, 7                    ; 5 uses
  %i.lm = and i64 %i.ll, -8                       ; 4 uses
  %i.ln = trunc i64 %i.lm to i32                  ; 7 uses
  %i.lo = add nsw i32 %i.ln, 8                    ; 3 uses
  %i.lp = shl i32 %i.kk, 4                        ; 2 uses
  %i.lq = add i32 %i.lp, -16                      ; 3 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ls = load i32, ptr %i.lr, align 8, !tbaa !51 ; 2 uses
  %i.lt = icmp sgt i32 %i.ls, 0
  %i.lu = sdiv i32 %i.ls, 2
  %i.lv = select i1 %i.lt, i32 %i.lu, i32 2       ; 11 uses
  %i.lw = and i32 %i.cc, -3
  %spec.select.i618.i = icmp eq i32 %i.lw, 1      ; 2 uses
  %i.lx = select i1 %spec.select.i618.i, i32 2, i32 1 ; 2 uses
  %i.ly = sub nsw i32 %i.lf, %i.kn                ; 2 uses
  %i.lz = icmp sgt i32 %i.ly, %i.lv
  br i1 %i.lz, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  invoke void @_ZN2cv6detail17check_failed_autoEiiRKNS0_12CheckContextE(i32 noundef %i.ly, i32 noundef %i.lv, ptr noundef nonnull align 8 dereferenceable(48) @_ZZN2cvL20computeDisparitySGBMERKNS_3MatES2_RS0_RKNS_16StereoSGBMParamsEE15__cv_check__511) #24
          to label %.noexc89 unwind label %bb.au

.noexc89:                                         ; preds = %bb.bg
  unreachable

bb.bh:                                            ; preds = %bb.bf
  %.not.i74 = icmp slt i32 %.sroa.speculated927.i, %i.li
  br i1 %.not.i74, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.ma = sitofp i32 %i.lq to double
  %i.mb = insertelement <4 x double> poison, double %i.ma, i64 0
  %i.mc = shufflevector <4 x double> %i.mb, <4 x double> poison, <4 x i32> zeroinitializer
  store <4 x double> %i.mc, ptr %6, align 8, !tbaa !89, !alias.scope !457
  %i.md = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKNS_7Scalar_IdEE(ptr noundef nonnull align 8 dereferenceable(208) %26, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %.noexc90 unwind label %bb.au  ; 0 uses

.noexc90:                                         ; preds = %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.cw

bb.bj:                                            ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  %i.me = zext nneg i32 %i.lj to i64
  %sext.i75 = shl i64 %i.lm, 32                   ; 13 uses
  %i.mf = ashr exact i64 %sext.i75, 32            ; 39 uses
  %i.mg = sext i32 %i.lo to i64                   ; 2 uses
  %i.mh = load i32, ptr %22, align 8, !tbaa !82
  %i.mi = lshr i32 %i.mh, 5
  %i.mj = and i32 %i.mi, 127
  %i.mk = add nuw nsw i32 %i.mj, 1
  %i.ml = zext nneg i32 %i.mk to i64
  %i.mm = sext i32 %i.lf to i64
  %i.mn = sext i32 %i.lh to i64
  invoke void @_ZN2cv10BufferSGBMC2EmmmmmmRKNS_16StereoSGBMParamsE(ptr noundef nonnull align 8 dereferenceable(216) %7, i64 noundef %i.me, i64 noundef %i.mf, i64 noundef %i.mg, i64 noundef %i.ml, i64 noundef %i.mm, i64 noundef %i.mn, ptr noundef nonnull align 4 dereferenceable(44) %i.ca)
          to label %.noexc91 unwind label %bb.au

.noexc91:                                         ; preds = %bb.bj
  %i.mo = trunc i32 %.sroa.speculated938.i to i16 ; 3 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 5 uses
  %i.mq = load i64, ptr %i.mp, align 8, !tbaa !133
  %i.mr = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.ms = load i64, ptr %i.mr, align 8, !tbaa !134
  %i.mt = mul i64 %i.ms, %i.mq                    ; 9 uses
  %.not.i.i76 = icmp eq i64 %i.mt, 0
  br i1 %.not.i.i76, label %_ZNK2cv10BufferSGBM8initCBufEs.exit.i, label %iter.check192

iter.check192:                                    ; preds = %.noexc91
  %i.mu = getelementptr inbounds nuw i8, ptr %7, i64 56
  %i.mv = load ptr, ptr %i.mu, align 8, !tbaa !135 ; 3 uses
  %min.iters.check179 = icmp ult i64 %i.mt, 4
  br i1 %min.iters.check179, label %vec.epilog.scalar.ph193.preheader, label %vector.main.loop.iter.check180

vector.main.loop.iter.check180:                   ; preds = %iter.check192
  %min.iters.check181 = icmp ult i64 %i.mt, 16
  br i1 %min.iters.check181, label %vec.epilog.ph196, label %vector.ph182

vector.ph182:                                     ; preds = %vector.main.loop.iter.check180
  %i.mw = and i64 %i.mt, 12
  %n.vec183 = and i64 %i.mt, -16                  ; 4 uses
  %broadcast.splatinsert184 = insertelement <8 x i16> poison, i16 %i.mo, i64 0
  %broadcast.splat185 = shufflevector <8 x i16> %broadcast.splatinsert184, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body186

vector.body186:                                   ; preds = %vector.ph182, %vector.body186
  %index187 = phi i64 [ 0, %vector.ph182 ], [ %index.next188, %vector.body186 ] ; 2 uses
  %i.mx = getelementptr inbounds nuw [2 x i8], ptr %i.mv, i64 %index187 ; 2 uses
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 16
  store <8 x i16> %broadcast.splat185, ptr %i.mx, align 2, !tbaa !77
  store <8 x i16> %broadcast.splat185, ptr %i.my, align 2, !tbaa !77
  %index.next188 = add nuw i64 %index187, 16      ; 2 uses
  %i.mz = icmp eq i64 %index.next188, %n.vec183
  br i1 %i.mz, label %middle.block189, label %vector.body186, !llvm.loop !393

middle.block189:                                  ; preds = %vector.body186
  %cmp.n190 = icmp eq i64 %i.mt, %n.vec183
  br i1 %cmp.n190, label %_ZNK2cv10BufferSGBM8initCBufEs.exit.i, label %vec.epilog.iter.check194

vec.epilog.iter.check194:                         ; preds = %middle.block189
  %min.epilog.iters.check195 = icmp eq i64 %i.mw, 0
  br i1 %min.epilog.iters.check195, label %vec.epilog.scalar.ph193.preheader, label %vec.epilog.ph196, !prof !80

vec.epilog.ph196:                                 ; preds = %vector.main.loop.iter.check180, %vec.epilog.iter.check194
  %vec.epilog.resume.val191 = phi i64 [ %n.vec183, %vec.epilog.iter.check194 ], [ 0, %vector.main.loop.iter.check180 ]
  %n.vec197 = and i64 %i.mt, -4                   ; 3 uses
  %broadcast.splatinsert198 = insertelement <4 x i16> poison, i16 %i.mo, i64 0
  %broadcast.splat199 = shufflevector <4 x i16> %broadcast.splatinsert198, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body200

vec.epilog.vector.body200:                        ; preds = %vec.epilog.vector.body200, %vec.epilog.ph196
  %index201 = phi i64 [ %vec.epilog.resume.val191, %vec.epilog.ph196 ], [ %index.next202, %vec.epilog.vector.body200 ] ; 2 uses
  %i.na = getelementptr inbounds nuw [2 x i8], ptr %i.mv, i64 %index201
  store <4 x i16> %broadcast.splat199, ptr %i.na, align 2, !tbaa !77
  %index.next202 = add nuw i64 %index201, 4       ; 2 uses
  %i.nb = icmp eq i64 %index.next202, %n.vec197
  br i1 %i.nb, label %vec.epilog.middle.block203, label %vec.epilog.vector.body200, !llvm.loop !394

vec.epilog.middle.block203:                       ; preds = %vec.epilog.vector.body200
  %cmp.n204 = icmp eq i64 %i.mt, %n.vec197
  br i1 %cmp.n204, label %_ZNK2cv10BufferSGBM8initCBufEs.exit.i, label %vec.epilog.scalar.ph193.preheader

vec.epilog.scalar.ph193.preheader:                ; preds = %iter.check192, %vec.epilog.iter.check194, %vec.epilog.middle.block203
  %.04.i.i78.ph = phi i64 [ 0, %iter.check192 ], [ %n.vec183, %vec.epilog.iter.check194 ], [ %n.vec197, %vec.epilog.middle.block203 ]
  br label %vec.epilog.scalar.ph193

vec.epilog.scalar.ph193:                          ; preds = %vec.epilog.scalar.ph193.preheader, %vec.epilog.scalar.ph193
  %.04.i.i78 = phi i64 [ %i.nd, %vec.epilog.scalar.ph193 ], [ %.04.i.i78.ph, %vec.epilog.scalar.ph193.preheader ] ; 2 uses
  %i.nc = getelementptr inbounds nuw [2 x i8], ptr %i.mv, i64 %.04.i.i78
  store i16 %i.mo, ptr %i.nc, align 2, !tbaa !77
  %i.nd = add nuw i64 %.04.i.i78, 1               ; 2 uses
  %exitcond.not.i.i79 = icmp eq i64 %i.nd, %i.mt
  br i1 %exitcond.not.i.i79, label %_ZNK2cv10BufferSGBM8initCBufEs.exit.i, label %vec.epilog.scalar.ph193, !llvm.loop !395

_ZNK2cv10BufferSGBM8initCBufEs.exit.i:            ; preds = %vec.epilog.scalar.ph193, %middle.block189, %vec.epilog.middle.block203, %.noexc91
  %i.ne = getelementptr inbounds nuw i8, ptr %7, i64 49 ; 6 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %7, i64 112 ; 6 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %7, i64 50 ; 6 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %7, i64 136 ; 6 uses
  %i.nj = add i32 %i.lh, -1                       ; 2 uses
  %i.nk = add i32 %i.lj, -1                       ; 4 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %26, i64 24
  %i.nm = getelementptr inbounds nuw i8, ptr %26, i64 128
  %i.nn = getelementptr inbounds nuw i8, ptr %7, i64 56 ; 3 uses
  %i.no = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 4 uses
  %i.np = getelementptr inbounds nuw i8, ptr %7, i64 64 ; 2 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %7, i64 72 ; 2 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 2 uses
  %i.ns = xor i32 %i.lv, -1                       ; 2 uses
  %i.nt = mul nsw i32 %i.lj, %i.ln                ; 3 uses
  %i.nu = icmp sgt i32 %i.nt, 0                   ; 2 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %7, i64 80 ; 3 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %7, i64 104
  %i.nx = getelementptr inbounds nuw i8, ptr %7, i64 160
  %i.ny = ashr exact i64 %sext.i75, 31
  %i.nz = icmp sgt i32 %i.km, 0                   ; 5 uses
  %i.oa = trunc i32 %i.lv to i16
  %i.ob = add i16 %i.oa, 1
  %i.oc = mul i32 %i.lv, %i.ln                    ; 4 uses
  %.not6041006.i = icmp slt i32 %i.oc, %i.ln
  %i.od = icmp sgt i32 %i.nt, %i.ln               ; 2 uses
  %i.oe = mul nsw i32 %i.nk, %i.ln                ; 2 uses
  %.neg603.i = mul i32 %i.ns, %i.ln               ; 2 uses
  %i.of = add nsw i32 %i.lv, 1                    ; 2 uses
  %i.og = shl nsw i32 %i.lo, 1
  %i.oh = mul nsw i32 %i.lo, 3
  %i.oi = icmp sgt i32 %i.lf, 0
  %i.oj = trunc i32 %i.lq to i16                  ; 9 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %7, i64 96 ; 3 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %7, i64 88 ; 2 uses
  %i.om = trunc i32 %i.kk to i16
  %i.on = add nsw i32 %i.km, -1
  %31 = trunc i64 %i.ll to i32                    ; 2 uses
  %32 = and i32 %31, -8
  %33 = mul i32 %32, %i.lj
  %i.oo = sext i32 %i.oc to i64                   ; 7 uses
  %i.op = sext i32 %i.nt to i64                   ; 2 uses
  %i.oq = sext i32 %i.og to i64
  %i.or = sext i32 %i.oh to i64
  %i.os = sext i32 %i.lj to i64
  %i.ot = zext nneg i32 %.sroa.speculated927.i to i64 ; 3 uses
  %i.ou = sext i32 %i.lv to i64
  %wide.trip.count.i = zext i32 %33 to i64        ; 2 uses
  %wide.trip.count1100.i = zext i32 %i.km to i64  ; 31 uses
  %wide.trip.count1142.i = zext i32 %i.lf to i64  ; 8 uses
  %wide.trip.count1164.i = zext nneg i32 %i.li to i64
  %i.ov = trunc i32 %i.of to i16
  %i.ow = ashr exact i64 %sext.i75, 31            ; 6 uses
  %34 = lshr i64 %i.ll, 3
  %35 = trunc i64 %34 to i32                      ; 5 uses
  %36 = mul i32 %i.lj, %35
  %37 = shl i32 %36, 3
  %38 = sext i32 %37 to i64                       ; 2 uses
  %smax = call i64 @llvm.smax.i64(i64 %i.ow, i64 %38)
  %i.ox = icmp slt i64 %i.ow, %38
  %umin = zext i1 %i.ox to i64                    ; 2 uses
  %i.oy = or disjoint i64 %i.ow, %umin
  %i.oz = sub i64 %smax, %i.oy
  %i.pa = shl nuw nsw i64 %wide.trip.count1100.i, 1 ; 4 uses
  %i.pb = mul i32 %i.lv, %35
  %i.pc = shl i32 %35, 3
  %i.pd = shl i32 %i.lv, 3
  %i.pe = add i32 %i.pd, 8
  %39 = mul i32 %i.pe, %35
  %i.pf = mul i32 %i.nk, %35
  %40 = shl i32 %i.pf, 3
  %i.pg = shl nuw nsw i64 %wide.trip.count1100.i, 1 ; 2 uses
  %i.ph = ashr exact i64 %sext.i75, 31            ; 4 uses
  %i.pi = ashr exact i64 %sext.i75, 31
  %i.pj = lshr i64 %i.ll, 3
  %i.pk = trunc i64 %i.pj to i32                  ; 3 uses
  %i.pl = mul i32 %i.lv, %i.pk
  %i.pm = and i64 %i.ll, 4294967288
  %i.pn = shl i32 %i.lv, 3
  %i.po = add i32 %i.pn, 8
  %41 = mul i32 %i.po, %i.pk
  %i.pp = mul i32 %i.nk, %i.pk
  %42 = shl i32 %i.pp, 3
  %i.pq = ashr exact i64 %sext.i75, 31            ; 6 uses
  %i.pr = or disjoint i64 %i.oo, 1
  %smax422 = call i64 @llvm.smax.i64(i64 %i.pq, i64 %i.pr)
  %i.ps = icmp sle i64 %i.pq, %i.oo
  %umin423 = zext i1 %i.ps to i64                 ; 2 uses
  %i.pt = or disjoint i64 %i.pq, %umin423
  %i.pu = sub i64 %smax422, %i.pt
  %umax = call i64 @llvm.umax.i64(i64 %i.mf, i64 1)
  %i.pv = udiv i64 %i.pu, %umax
  %i.pw = add i64 %i.pv, %umin423
  %i.px = mul nsw i64 %i.mf, -2
  %i.py = shl nuw nsw i64 %wide.trip.count1100.i, 1
  %i.pz = ashr exact i64 %sext.i75, 31            ; 4 uses
  %i.qa = or disjoint i64 %i.oo, 1
  %smax428 = call i64 @llvm.smax.i64(i64 %i.pz, i64 %i.qa)
  %i.qb = icmp sle i64 %i.pz, %i.oo
  %umin429 = zext i1 %i.qb to i64                 ; 2 uses
  %i.qc = or disjoint i64 %i.pz, %umin429
  %i.qd = sub i64 %smax428, %i.qc
  %umax430 = call i64 @llvm.umax.i64(i64 %i.mf, i64 1)
  %i.qe = udiv i64 %i.qd, %umax430
  %i.qf = add i64 %i.qe, %umin429
  %i.qg = shl i64 %i.qf, 1
  %i.qh = add i64 %i.qg, 2
  %i.qi = mul i64 %i.qh, %i.mf
  %i.qj = ashr exact i64 %sext.i75, 31            ; 3 uses
  %i.qk = or disjoint i64 %i.oo, 1
  %smax439 = call i64 @llvm.smax.i64(i64 %i.qj, i64 %i.qk)
  %i.ql = icmp sle i64 %i.qj, %i.oo
  %umin440 = zext i1 %i.ql to i64                 ; 2 uses
  %i.qm = or disjoint i64 %i.qj, %umin440
  %i.qn = sub i64 %smax439, %i.qm
  %umax441 = call i64 @llvm.umax.i64(i64 %i.mf, i64 1)
  %i.qo = udiv i64 %i.qn, %umax441
  %i.qp = add i64 %i.qo, %umin440
  %i.qq = add i64 %i.qp, 1                        ; 7 uses
  %43 = lshr i32 %31, 3
  %44 = mul i32 %43, %i.lj
  %45 = shl i32 %44, 3                            ; 7 uses
  %46 = zext i32 %45 to i64
  %i.qr = shl nuw nsw i64 %46, 1                  ; 2 uses
  %47 = zext i32 %45 to i64                       ; 4 uses
  %48 = zext i32 %45 to i64                       ; 4 uses
  %i.qs = add nsw i64 %wide.trip.count1100.i, -1
  %min.iters.check515 = icmp eq i32 %45, 0
  %min.iters.check517 = icmp ult i32 %45, 16
  %i.qt = and i64 %48, 8
  %n.vec519 = and i64 %48, 4294967280             ; 4 uses
  %cmp.n530 = icmp eq i64 %n.vec519, %48
  %min.epilog.iters.check535.not.not.a = icmp eq i64 %i.qt, 0
  %min.iters.check479 = icmp eq i32 %45, 0
  %min.iters.check481 = icmp ult i32 %45, 16
  %i.qu = and i64 %47, 8
  %n.vec483 = and i64 %47, 4294967280             ; 4 uses
  %cmp.n492 = icmp eq i64 %n.vec483, %47
  %min.epilog.iters.check497.not.not = icmp eq i64 %i.qu, 0
  %min.iters.check443 = icmp ult i64 %i.qq, 8
  %i.qv = icmp slt i64 %i.pq, 0                   ; 2 uses
  %i.qw = select i1 %i.qv, i64 %i.px, i64 %i.pq
  %mul = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.qw, i64 %i.pw) ; 2 uses
  %mul.result = extractvalue { i64, i1 } %mul, 0  ; 2 uses
  %mul.overflow = extractvalue { i64, i1 } %mul, 1
  %i.qx = sub i64 0, %mul.result
  %min.iters.check445 = icmp ult i64 %i.qq, 16
  %i.qy = and i64 %i.qq, 8
  %n.vec447 = and i64 %i.qq, -16                  ; 4 uses
  %i.qz = or disjoint i64 %n.vec447, 1
  %i.ra = mul i64 %i.mf, %i.qz
  %i.rb = ashr exact i64 %sext.i75, 30
  %i.rc = ashr exact i64 %sext.i75, 29
  %i.rd = ashr exact i64 %sext.i75, 28
  %cmp.n453 = icmp eq i64 %i.qq, %n.vec447
  %min.epilog.iters.check459.not.not = icmp eq i64 %i.qy, 0
  %n.vec461 = and i64 %i.qq, -8                   ; 3 uses
  %i.re = or disjoint i64 %n.vec461, 1
  %i.rf = mul i64 %i.mf, %i.re
  %i.rg = ashr exact i64 %sext.i75, 30
  %i.rh = ashr exact i64 %sext.i75, 29
  %cmp.n467 = icmp eq i64 %i.qq, %n.vec461
  %min.iters.check390 = icmp ult i32 %i.km, 4
  %min.iters.check392 = icmp ult i32 %i.km, 16
  %i.ri = and i64 %wide.trip.count1100.i, 12
  %n.vec394 = and i64 %wide.trip.count1100.i, 2147483632 ; 4 uses
  %cmp.n405 = icmp eq i64 %n.vec394, %wide.trip.count1100.i
  %min.epilog.iters.check410 = icmp eq i64 %i.ri, 0
  %n.vec412 = and i64 %wide.trip.count1100.i, 2147483644 ; 3 uses
  %cmp.n420 = icmp eq i64 %n.vec412, %wide.trip.count1100.i
  %xtraiter = and i64 %wide.trip.count1100.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %min.iters.check369 = icmp ult i32 %i.km, 16
  %i.rj = shl i32 %i.pl, 3
  %n.vec371 = and i64 %wide.trip.count1100.i, 2147483640 ; 3 uses
  %cmp.n381 = icmp eq i64 %n.vec371, %wide.trip.count1100.i
  %min.iters.check308 = icmp ult i32 %i.km, 4
  %min.iters.check310 = icmp ult i32 %i.km, 16
  %i.rk = and i64 %wide.trip.count1100.i, 12
  %n.vec312 = and i64 %wide.trip.count1100.i, 2147483632 ; 4 uses
  %cmp.n323 = icmp eq i64 %n.vec312, %wide.trip.count1100.i
  %min.epilog.iters.check328 = icmp eq i64 %i.rk, 0
  %n.vec330 = and i64 %wide.trip.count1100.i, 2147483644 ; 3 uses
  %cmp.n339 = icmp eq i64 %n.vec330, %wide.trip.count1100.i
  %xtraiter554 = and i64 %wide.trip.count1100.i, 1
  %lcmp.mod555.not = icmp eq i64 %xtraiter554, 0
  %i.rl = add nsw i64 %wide.trip.count1100.i, -1
  %min.iters.check285 = icmp ult i32 %i.km, 32
  %i.rm = shl i32 %i.pb, 3
  %stride.check258 = icmp slt i64 %i.ow, 0
  %i.rn = insertelement <8 x i1> poison, i1 %stride.check258, i64 7
  %n.vec287 = and i64 %wide.trip.count1100.i, 2147483640 ; 3 uses
  %cmp.n297 = icmp eq i64 %n.vec287, %wide.trip.count1100.i
  %min.iters.check211 = icmp ult i32 %i.lf, 4
  %min.iters.check213 = icmp ult i32 %i.lf, 16
  %i.ro = and i64 %wide.trip.count1142.i, 12
  %n.vec215 = and i64 %wide.trip.count1142.i, 2147483632 ; 4 uses
  %broadcast.splatinsert216 = insertelement <8 x i16> poison, i16 %i.oj, i64 0
  %broadcast.splat217 = shufflevector <8 x i16> %broadcast.splatinsert216, <8 x i16> poison, <8 x i32> zeroinitializer ; 4 uses
  %cmp.n222 = icmp eq i64 %n.vec215, %wide.trip.count1142.i
  %min.epilog.iters.check227 = icmp eq i64 %i.ro, 0
  %n.vec229 = and i64 %wide.trip.count1142.i, 2147483644 ; 3 uses
  %broadcast.splatinsert230 = insertelement <4 x i16> poison, i16 %i.oj, i64 0
  %broadcast.splat231 = shufflevector <4 x i16> %broadcast.splatinsert230, <4 x i16> poison, <4 x i32> zeroinitializer ; 2 uses
  %cmp.n236 = icmp eq i64 %n.vec229, %wide.trip.count1142.i
  %xtraiter556 = and i64 %wide.trip.count1142.i, 1
  %lcmp.mod557.not = icmp eq i64 %xtraiter556, 0
  %i.rp = add nsw i64 %wide.trip.count1142.i, -1
  %xtraiter558 = and i64 %wide.trip.count1100.i, 3 ; 3 uses
  %i.rq = icmp ult i32 %i.km, 4
  %unroll_iter = and i64 %wide.trip.count1100.i, 2147483644
  %lcmp.mod559.not = icmp eq i64 %xtraiter558, 0
  %lcmp.mod562 = icmp ne i64 %xtraiter558, 0
  br label %bb.bn

bb.bk:                                            ; preds = %._crit_edge1083.i
  %i.rr = getelementptr inbounds nuw i8, ptr %7, i64 168
  call void @_ZN2cv5utils10BufferAreaD1Ev(ptr noundef nonnull align 8 dead_on_return(41) dereferenceable(41) %i.rr) #23
  %i.rs = load ptr, ptr %i.ni, align 8, !tbaa !163 ; 3 uses
  %.not.i.i.i.i.i80 = icmp eq ptr %i.rs, null
  br i1 %.not.i.i.i.i.i80, label %_ZNSt6vectorIPsSaIS0_EED2Ev.exit.i.i81, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.rt = getelementptr inbounds nuw i8, ptr %7, i64 152
  %i.ru = load ptr, ptr %i.rt, align 8, !tbaa !164
  %i.rv = ptrtoint ptr %i.ru to i64
  %i.rw = ptrtoint ptr %i.rs to i64
  %i.rx = sub i64 %i.rv, %i.rw
  call void @_ZdlPvm(ptr noundef nonnull %i.rs, i64 noundef %i.rx) #25
  br label %_ZNSt6vectorIPsSaIS0_EED2Ev.exit.i.i81

_ZNSt6vectorIPsSaIS0_EED2Ev.exit.i.i81:           ; preds = %bb.bl, %bb.bk
  %i.ry = load ptr, ptr %i.ng, align 8, !tbaa !163 ; 3 uses
  %.not.i.i.i1.i.i82 = icmp eq ptr %i.ry, null
  br i1 %.not.i.i.i1.i.i82, label %_ZN2cv10BufferSGBMD2Ev.exit.i83, label %bb.bm

bb.bm:                                            ; preds = %_ZNSt6vectorIPsSaIS0_EED2Ev.exit.i.i81
  %i.rz = getelementptr inbounds nuw i8, ptr %7, i64 128
  %i.sa = load ptr, ptr %i.rz, align 8, !tbaa !164
  %i.sb = ptrtoint ptr %i.sa to i64
  %i.sc = ptrtoint ptr %i.ry to i64
  %i.sd = sub i64 %i.sb, %i.sc
  call void @_ZdlPvm(ptr noundef nonnull %i.ry, i64 noundef %i.sd) #25
  br label %_ZN2cv10BufferSGBMD2Ev.exit.i83

_ZN2cv10BufferSGBMD2Ev.exit.i83:                  ; preds = %bb.bm, %_ZNSt6vectorIPsSaIS0_EED2Ev.exit.i.i81
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.cw

bb.bn:                                            ; preds = %._crit_edge1083.i, %_ZNK2cv10BufferSGBM8initCBufEs.exit.i
  %.05551084.i = phi i32 [ 1, %_ZNK2cv10BufferSGBM8initCBufEs.exit.i ], [ %i.ui, %._crit_edge1083.i ] ; 4 uses
  %i.se = icmp eq i32 %.05551084.i, 1             ; 2 uses
  br i1 %i.se, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %.0554.i = phi i32 [ %i.nk, %bb.bo ], [ 0, %bb.bn ] ; 2 uses
  %.0553.i = phi i32 [ %i.nj, %bb.bo ], [ 0, %bb.bn ] ; 3 uses
  %.0552.i = phi i32 [ -1, %bb.bo ], [ %i.lj, %bb.bn ] ; 2 uses
  %.0551.i = phi i32 [ -1, %bb.bo ], [ %i.lh, %bb.bn ] ; 2 uses
  %.0549.i = phi i32 [ -1, %bb.bo ], [ 1, %bb.bn ] ; 2 uses
  %i.sf = load ptr, ptr %i.ng, align 8, !tbaa !163
  %i.sg = load ptr, ptr %i.sf, align 8, !tbaa !95
  %i.sh = load i64, ptr %7, align 8, !tbaa !165
  %i.si = load i8, ptr %i.nh, align 2, !tbaa !166
  %i.sj = zext i8 %i.si to i64
  %i.sk = mul i64 %i.sh, %i.sj
  %i.sl = load i8, ptr %i.ne, align 1, !tbaa !167
  %i.sm = zext i8 %i.sl to i64
  %i.sn = shl nuw nsw i64 %i.sm, 1
  %i.so = add i64 %i.sn, %i.sk
  %i.sp = load i64, ptr %i.nf, align 8, !tbaa !168
  %i.sq = shl i64 %i.sp, 1
  %i.sr = mul i64 %i.sq, %i.so
  call void @llvm.memset.p0.i64(ptr align 2 %i.sg, i8 0, i64 %i.sr, i1 false)
  %i.ss = load ptr, ptr %i.ni, align 8, !tbaa !163
  %i.st = load ptr, ptr %i.ss, align 8, !tbaa !95
  %i.su = load i64, ptr %7, align 8, !tbaa !165
  %i.sv = load i8, ptr %i.nh, align 2, !tbaa !166
  %i.sw = zext i8 %i.sv to i64
  %i.sx = load i8, ptr %i.ne, align 1, !tbaa !167
  %i.sy = zext i8 %i.sx to i64
  %i.sz = shl nuw nsw i64 %i.sy, 2
  %i.ta = shl i64 %i.su, 1
  %i.tb = mul i64 %i.ta, %i.sw
  %i.tc = add i64 %i.sz, %i.tb
  call void @llvm.memset.p0.i64(ptr align 2 %i.st, i8 0, i64 %i.tc, i1 false)
  %i.td = load ptr, ptr %i.ng, align 8, !tbaa !163
  %i.te = getelementptr inbounds nuw i8, ptr %i.td, i64 8
  %i.tf = load ptr, ptr %i.te, align 8, !tbaa !95
  %i.tg = load i64, ptr %7, align 8, !tbaa !165
  %i.th = load i8, ptr %i.nh, align 2, !tbaa !166
  %i.ti = zext i8 %i.th to i64
  %i.tj = mul i64 %i.tg, %i.ti
  %i.tk = load i8, ptr %i.ne, align 1, !tbaa !167
  %i.tl = zext i8 %i.tk to i64
  %i.tm = shl nuw nsw i64 %i.tl, 1
  %i.tn = add i64 %i.tm, %i.tj
  %i.to = load i64, ptr %i.nf, align 8, !tbaa !168
  %i.tp = shl i64 %i.to, 1
  %i.tq = mul i64 %i.tp, %i.tn
  call void @llvm.memset.p0.i64(ptr align 2 %i.tf, i8 0, i64 %i.tq, i1 false)
  %i.tr = load ptr, ptr %i.ni, align 8, !tbaa !163
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tr, i64 8
  %i.tt = load ptr, ptr %i.ts, align 8, !tbaa !95
  %i.tu = load i64, ptr %7, align 8, !tbaa !165
  %i.tv = load i8, ptr %i.nh, align 2, !tbaa !166
  %i.tw = zext i8 %i.tv to i64
  %i.tx = load i8, ptr %i.ne, align 1, !tbaa !167
  %i.ty = zext i8 %i.tx to i64
  %i.tz = shl nuw nsw i64 %i.ty, 2
  %i.ua = shl i64 %i.tu, 1
  %i.ub = mul i64 %i.ua, %i.tw
  %i.uc = add i64 %i.tz, %i.ub
  call void @llvm.memset.p0.i64(ptr align 2 %i.tt, i8 0, i64 %i.uc, i1 false)
  %.not5771076.i = icmp eq i32 %.0553.i, %.0551.i
  br i1 %.not5771076.i, label %._crit_edge1083.i, label %.lr.ph1082.i

.lr.ph1082.i:                                     ; preds = %bb.bp
  %.not5791039.i = icmp eq i32 %.0554.i, %.0552.i
  %i.ud = icmp eq i32 %.05551084.i, %i.lx
  %i.ue = add i32 %.0553.i, %i.of
  %i.uf = sext i32 %.0554.i to i64
  %i.ug = sext i32 %.0549.i to i64                ; 3 uses
  %i.uh = sext i32 %.0553.i to i64
  br label %bb.bq

._crit_edge1083.i:                                ; preds = %.loopexit995.i, %bb.bp
  %i.ui = add nuw nsw i32 %.05551084.i, 1
  %exitcond1168.not.i = icmp eq i32 %.05551084.i, %i.lx
  br i1 %exitcond1168.not.i, label %bb.bk, label %bb.bn, !llvm.loop !396

bb.bq:                                            ; preds = %.loopexit995.i, %.lr.ph1082.i
  %indvars.iv1166.i = phi i64 [ %i.uh, %.lr.ph1082.i ], [ %indvars.iv.next1167.i, %.loopexit995.i ] ; 9 uses
  %indvars.iv1128.i = phi i32 [ %i.ue, %.lr.ph1082.i ], [ %indvars.iv.next1129.i, %.loopexit995.i ] ; 2 uses
  %.05481077.i = phi i8 [ 0, %.lr.ph1082.i ], [ %i.bdt, %.loopexit995.i ] ; 4 uses
  %i.uj = load ptr, ptr %i.nl, align 8, !tbaa !83 ; 2 uses
  %i.uk = ptrtoaddr ptr %i.uj to i64              ; 2 uses
  %i.ul = load i64, ptr %i.nm, align 8, !tbaa !84
  %i.um = mul i64 %i.ul, %indvars.iv1166.i        ; 3 uses
  %i.un = getelementptr inbounds nuw i8, ptr %i.uj, i64 %i.um ; 7 uses
  %i.uo = icmp sgt i64 %indvars.iv1166.i, -1
  br i1 %i.uo, label %bb.bu, label %bb.br

bb.br:                                            ; preds = %bb.bq
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.31, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %.noexc.i unwind label %bb.bz

.noexc.i:                                         ; preds = %bb.br
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__func__._ZNK2cv10BufferSGBM7getCBufEi, ptr noundef nonnull @.str.2, i32 noundef 436) #24
          to label %bb.bs unwind label %bb.bt

bb.bs:                                            ; preds = %.noexc.i
  unreachable

bb.bt:                                            ; preds = %.noexc.i
  %i.up = landingpad { ptr, i32 }
          cleanup
  %i.uq = load ptr, ptr %4, align 8, !tbaa !67    ; 2 uses
  %i.ur = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.us = icmp eq ptr %i.uq, %i.ur
  br i1 %i.us, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.bt
  %i.ut = load i64, ptr %i.ur, align 8, !tbaa !62
  %i.uu = add i64 %i.ut, 1
  call void @_ZdlPvm(ptr noundef %i.uq, i64 noundef %i.uu) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.bt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %.body.i

bb.bu:                                            ; preds = %bb.bq
  %i.uv = load ptr, ptr %i.nn, align 8, !tbaa !135 ; 6 uses
  %i.uw = ptrtoaddr ptr %i.uv to i64              ; 11 uses
  %i.ux = load i8, ptr %i.no, align 8, !tbaa !169, !range !69, !noundef !70
  %i.uy = trunc nuw i8 %i.ux to i1
  %i.uz = load i64, ptr %i.mp, align 8            ; 2 uses
  %i.va = mul i64 %i.uz, %indvars.iv1166.i
  %i.vb = select i1 %i.uy, i64 %i.va, i64 0       ; 5 uses
  %i.vc = getelementptr [2 x i8], ptr %i.uv, i64 %i.vb ; 28 uses
  %i.vd = load ptr, ptr %i.np, align 8, !tbaa !170 ; 2 uses
  %i.ve = getelementptr inbounds nuw [2 x i8], ptr %i.vd, i64 %i.vb ; 2 uses
  br i1 %i.se, label %bb.bv, label %bb.ca

bb.bv:                                            ; preds = %bb.bu
  %i.vf = icmp eq i64 %indvars.iv1166.i, 0        ; 4 uses
  %i.vg = add nsw i64 %indvars.iv1166.i, %i.ou    ; 2 uses
  %i.vh = trunc nsw i64 %i.vg to i32
  %i.vi = select i1 %i.vf, i32 0, i32 %i.vh       ; 2 uses
  %i.vj = sext i32 %i.vi to i64
  %.not5781030.i = icmp slt i64 %i.vg, %i.vj
  br i1 %.not5781030.i, label %._crit_edge1034.i, label %.lr.ph1033.i

.lr.ph1033.i:                                     ; preds = %bb.bv
  %i.vk = trunc i64 %indvars.iv1166.i to i32
  %i.vl = add i32 %i.vk, %i.ns
  %.sroa.speculated864.i = call i32 @llvm.smax.i32(i32 %i.vl, i32 0)
  %i.vm = zext nneg i32 %.sroa.speculated864.i to i64 ; 2 uses
  %i.vn = add nsw i64 %indvars.iv1166.i, -1       ; 2 uses
  %.pre1178.i = load ptr, ptr %i.nq, align 8, !tbaa !171
  %.pre1180.i = load i64, ptr %i.nr, align 8, !tbaa !172
  %scevgep242 = getelementptr i8, ptr %i.uv, i64 %i.ow
  %i.vo = shl i64 %i.vb, 1                        ; 8 uses
  %scevgep243 = getelementptr i8, ptr %scevgep242, i64 %i.vo ; 2 uses
  %scevgep300 = getelementptr i8, ptr %i.uv, i64 %i.pg
  %scevgep301 = getelementptr i8, ptr %scevgep300, i64 %i.vo
  %i.vp = add i64 %i.vo, %i.uw
  %i.vq = add i64 %i.ph, %i.uw
  %i.vr = add i64 %i.vq, %i.vo
  %i.vs = add i64 %i.ph, %i.uw
  %i.vt = add i64 %i.vs, %i.vo
  %i.vu = add i64 %i.vo, %i.uw
  %i.vv = add i64 %i.vo, %i.uw
  %i.vw = shl i64 %i.vb, 1                        ; 7 uses
  %i.vx = add i64 %i.vw, %i.uw
  %i.vy = add i64 %i.vw, %i.uw
  %i.vz = add i64 %i.vw, %i.uw
  %scevgep471 = getelementptr i8, ptr %i.uv, i64 %i.qr
  %scevgep472 = getelementptr i8, ptr %scevgep471, i64 %i.vw
  %i.wa = add i64 %i.vw, %i.uw
  %i.wb = add i64 %i.vw, %i.uw
  %i.wc = add i64 %i.vw, %i.uw
  %invariant.gep583 = getelementptr i8, ptr %i.uv, i64 %i.vo
  %i.wd = insertelement <4 x ptr> poison, ptr %scevgep243, i64 1
  br label %bb.bw

bb.bw:                                            ; preds = %.loopexit988.i, %.lr.ph1033.i
  %i.we = phi i64 [ %.pre1180.i, %.lr.ph1033.i ], [ %i.apv, %.loopexit988.i ] ; 10 uses
  %i.wf = phi ptr [ %.pre1178.i, %.lr.ph1033.i ], [ %i.apw, %.loopexit988.i ] ; 17 uses
  %storemerge1031.i = phi i32 [ %i.vi, %.lr.ph1033.i ], [ %i.apx, %.loopexit988.i ] ; 5 uses
  %i.wg = ptrtoaddr ptr %i.wf to i64              ; 9 uses
  %.sroa.speculated912.i = call i32 @llvm.smin.i32(i32 %i.nj, i32 %storemerge1031.i)
  %i.wh = sext i32 %.sroa.speculated912.i to i64
  %i.wi = urem i64 %i.wh, %i.we                   ; 8 uses
  %i.wj = load i64, ptr %i.mp, align 8, !tbaa !133 ; 11 uses
  %i.wk = mul i64 %i.wj, %i.wi
  %i.wl = getelementptr [2 x i8], ptr %i.wf, i64 %i.wk ; 31 uses
  %i.wm = icmp slt i32 %storemerge1031.i, %i.lh
  br i1 %i.wm, label %bb.bx, label %49

bb.bx:                                            ; preds = %bb.bw
  %i.wn = load ptr, ptr %i.nv, align 8, !tbaa !458
  %i.wo = load ptr, ptr %i.nw, align 8, !tbaa !459
  %i.wp = load ptr, ptr %i.nx, align 8, !tbaa !173
  %i.wq = getelementptr inbounds nuw i8, ptr %i.wp, i64 1024
  call fastcc void @_ZN2cvL15calcPixelCostBTERKNS_3MatES2_iiiPsPhPKhii(ptr noundef nonnull readonly align 8 dereferenceable(208) %22, ptr noundef nonnull readonly align 8 dereferenceable(208) %23, i32 noundef %storemerge1031.i, i32 noundef %i.kk, i32 noundef %i.kn, ptr noundef %i.wn, ptr noundef %i.wo, ptr noundef nonnull %i.wq, i32 noundef 0, i32 noundef -1)
  call void @llvm.memset.p0.i64(ptr align 2 %i.wl, i8 0, i64 %i.ny, i1 false)
  %.pre.i = load ptr, ptr %i.nq, align 8, !tbaa !171 ; 8 uses
  %.pre.i355 = ptrtoaddr ptr %.pre.i to i64       ; 3 uses
  %.pre1179.i = load i64, ptr %i.nr, align 8, !tbaa !172 ; 7 uses
  br i1 %i.nz, label %.lr.ph1011.i, label %._crit_edge1012.thread.i

.lr.ph1011.i:                                     ; preds = %bb.bx
  %i.wr = load ptr, ptr %i.nv, align 8, !tbaa !458 ; 8 uses
  %scevgep426 = getelementptr i8, ptr %i.wf, i64 %i.py
  %i.ws = shl i64 %i.wj, 1
  %i.wt = mul i64 %i.ws, %i.wi
  %scevgep427 = getelementptr i8, ptr %scevgep426, i64 %i.wt
  %i.wu = getelementptr i8, ptr %i.wr, i64 %i.pz
  %i.wv = getelementptr i8, ptr %i.wr, i64 %i.pq
  %i.ww = getelementptr i8, ptr %i.wr, i64 %i.qi
  br label %bb.by

bb.by:                                            ; preds = %._crit_edge.i, %.lr.ph1011.i
  %indvars.iv1097.i = phi i64 [ 0, %.lr.ph1011.i ], [ %indvars.iv.next1098.i, %._crit_edge.i ] ; 5 uses
  %i.wx = shl nuw nsw i64 %indvars.iv1097.i, 1    ; 2 uses
  %scevgep432 = getelementptr i8, ptr %i.wu, i64 %i.wx ; 4 uses
  %i.wy = shl nuw nsw i64 %indvars.iv1097.i, 1
  %scevgep424 = getelementptr i8, ptr %i.wv, i64 %i.wy ; 4 uses
  %i.wz = getelementptr inbounds nuw [2 x i8], ptr %i.wr, i64 %indvars.iv1097.i ; 26 uses
  %i.xa = load i16, ptr %i.wz, align 2, !tbaa !77
  %i.xb = mul i16 %i.xa, %i.ob                    ; 6 uses
  %i.xc = getelementptr inbounds nuw [2 x i8], ptr %i.wl, i64 %indvars.iv1097.i ; 4 uses
  store i16 %i.xb, ptr %i.xc, align 2, !tbaa !77
  br i1 %.not6041006.i, label %._crit_edge.i, label %iter.check456

iter.check456:                                    ; preds = %bb.by
  br i1 %min.iters.check443, label %.lr.ph1008.i.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check456
  %i.xd = getelementptr i8, ptr %scevgep424, i64 %mul.result
  %i.xe = getelementptr i8, ptr %scevgep424, i64 %i.qx
  %i.xf = icmp ult ptr %i.xd, %scevgep424
  %i.xg = icmp ugt ptr %i.xe, %scevgep424
  %i.xh = select i1 %i.qv, i1 %i.xg, i1 %i.xf
  %i.xi = or i1 %i.xh, %mul.overflow
  br i1 %i.xi, label %.lr.ph1008.i.preheader, label %vector.memcheck425

vector.memcheck425:                               ; preds = %vector.scevcheck
  %scevgep431 = getelementptr i8, ptr %i.ww, i64 %i.wx ; 4 uses
  %i.xj = icmp ult ptr %scevgep431, %scevgep432
  %umin433 = select i1 %i.xj, ptr %scevgep431, ptr %scevgep432
  %i.xk = icmp ugt ptr %scevgep431, %scevgep432
  %umax434 = select i1 %i.xk, ptr %scevgep431, ptr %scevgep432
  %scevgep435 = getelementptr i8, ptr %umax434, i64 2
  %bound0436 = icmp ult ptr %i.wl, %scevgep435
  %bound1437 = icmp ult ptr %umin433, %scevgep427
  %found.conflict438 = and i1 %bound0436, %bound1437
  br i1 %found.conflict438, label %.lr.ph1008.i.preheader, label %vector.main.loop.iter.check444

vector.main.loop.iter.check444:                   ; preds = %vector.memcheck425
  br i1 %min.iters.check445, label %vec.epilog.ph460, label %vector.ph446

vector.ph446:                                     ; preds = %vector.main.loop.iter.check444
  %i.xl = insertelement <8 x i16> <i16 poison, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0>, i16 %i.xb, i64 0
  %invariant.gep = getelementptr [2 x i8], ptr %i.wz, i64 %i.mf
  %invariant.gep568 = getelementptr i8, ptr %i.wz, i64 %i.rb
  %invariant.gep570 = getelementptr i8, ptr %i.wz, i64 %i.rc
  %invariant.gep572 = getelementptr i8, ptr %i.wz, i64 %i.rd
  br label %vector.body448

vector.body448:                                   ; preds = %vector.ph446, %vector.body448
  %index449 = phi i64 [ 0, %vector.ph446 ], [ %index.next451, %vector.body448 ] ; 13 uses
  %vec.phi = phi <8 x i16> [ %i.xl, %vector.ph446 ], [ %i.aac, %vector.body448 ]
  %vec.phi450 = phi <8 x i16> [ zeroinitializer, %vector.ph446 ], [ %i.aad, %vector.body448 ]
  %i.xm = or disjoint i64 %index449, 1
  %i.xn = mul i64 %i.mf, %i.xm                    ; 5 uses
  %i.xo = or disjoint i64 %index449, 4
  %i.xp = mul i64 %i.mf, %i.xo
  %i.xq = or disjoint i64 %index449, 6
  %i.xr = mul i64 %i.mf, %i.xq
  %i.xs = or disjoint i64 %index449, 7
  %i.xt = mul i64 %i.mf, %i.xs
  %i.xu = or disjoint i64 %index449, 8
  %i.xv = mul i64 %i.mf, %i.xu
  %i.xw = or disjoint i64 %index449, 10
  %i.xx = mul i64 %i.mf, %i.xw
  %i.xy = or disjoint i64 %index449, 11
  %i.xz = mul i64 %i.mf, %i.xy
  %i.ya = or disjoint i64 %index449, 12
  %i.yb = mul i64 %i.mf, %i.ya
  %i.yc = or disjoint i64 %index449, 13
  %i.yd = mul i64 %i.mf, %i.yc
  %i.ye = or disjoint i64 %index449, 14
  %i.yf = mul i64 %i.mf, %i.ye
  %i.yg = or disjoint i64 %index449, 15
  %i.yh = mul i64 %i.mf, %i.yg
  %i.yi = add i64 %index449, 16
  %i.yj = mul i64 %i.mf, %i.yi
  %i.yk = getelementptr [2 x i8], ptr %i.wz, i64 %i.xn
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.xn
  %gep569 = getelementptr [2 x i8], ptr %invariant.gep568, i64 %i.xn
  %i.yl = getelementptr [2 x i8], ptr %i.wz, i64 %i.xp
  %gep571 = getelementptr [2 x i8], ptr %invariant.gep570, i64 %i.xn
  %i.ym = getelementptr [2 x i8], ptr %i.wz, i64 %i.xr
  %i.yn = getelementptr [2 x i8], ptr %i.wz, i64 %i.xt
  %i.yo = getelementptr [2 x i8], ptr %i.wz, i64 %i.xv
  %gep573 = getelementptr [2 x i8], ptr %invariant.gep572, i64 %i.xn
  %i.yp = getelementptr [2 x i8], ptr %i.wz, i64 %i.xx
  %i.yq = getelementptr [2 x i8], ptr %i.wz, i64 %i.xz
  %i.yr = getelementptr [2 x i8], ptr %i.wz, i64 %i.yb
  %i.ys = getelementptr [2 x i8], ptr %i.wz, i64 %i.yd
  %i.yt = getelementptr [2 x i8], ptr %i.wz, i64 %i.yf
  %i.yu = getelementptr [2 x i8], ptr %i.wz, i64 %i.yh
  %i.yv = getelementptr [2 x i8], ptr %i.wz, i64 %i.yj
  %i.yw = load i16, ptr %i.yk, align 2, !tbaa !77, !alias.scope !460
  %i.yx = load i16, ptr %gep, align 2, !tbaa !77, !alias.scope !460
  %i.yy = load i16, ptr %gep569, align 2, !tbaa !77, !alias.scope !460
  %i.yz = load i16, ptr %i.yl, align 2, !tbaa !77, !alias.scope !460
  %i.za = load i16, ptr %gep571, align 2, !tbaa !77, !alias.scope !460
  %i.zb = load i16, ptr %i.ym, align 2, !tbaa !77, !alias.scope !460
  %i.zc = load i16, ptr %i.yn, align 2, !tbaa !77, !alias.scope !460
  %i.zd = load i16, ptr %i.yo, align 2, !tbaa !77, !alias.scope !460
  %i.ze = insertelement <8 x i16> poison, i16 %i.yw, i64 0
  %i.zf = insertelement <8 x i16> %i.ze, i16 %i.yx, i64 1
  %i.zg = insertelement <8 x i16> %i.zf, i16 %i.yy, i64 2
  %i.zh = insertelement <8 x i16> %i.zg, i16 %i.yz, i64 3
  %i.zi = insertelement <8 x i16> %i.zh, i16 %i.za, i64 4
  %i.zj = insertelement <8 x i16> %i.zi, i16 %i.zb, i64 5
  %i.zk = insertelement <8 x i16> %i.zj, i16 %i.zc, i64 6
  %i.zl = insertelement <8 x i16> %i.zk, i16 %i.zd, i64 7
  %i.zm = load i16, ptr %gep573, align 2, !tbaa !77, !alias.scope !460
  %i.zn = load i16, ptr %i.yp, align 2, !tbaa !77, !alias.scope !460
  %i.zo = load i16, ptr %i.yq, align 2, !tbaa !77, !alias.scope !460
  %i.zp = load i16, ptr %i.yr, align 2, !tbaa !77, !alias.scope !460
  %i.zq = load i16, ptr %i.ys, align 2, !tbaa !77, !alias.scope !460
  %i.zr = load i16, ptr %i.yt, align 2, !tbaa !77, !alias.scope !460
  %i.zs = load i16, ptr %i.yu, align 2, !tbaa !77, !alias.scope !460
  %i.zt = load i16, ptr %i.yv, align 2, !tbaa !77, !alias.scope !460
  %i.zu = insertelement <8 x i16> poison, i16 %i.zm, i64 0
  %i.zv = insertelement <8 x i16> %i.zu, i16 %i.zn, i64 1
  %i.zw = insertelement <8 x i16> %i.zv, i16 %i.zo, i64 2
  %i.zx = insertelement <8 x i16> %i.zw, i16 %i.zp, i64 3
  %i.zy = insertelement <8 x i16> %i.zx, i16 %i.zq, i64 4
  %i.zz = insertelement <8 x i16> %i.zy, i16 %i.zr, i64 5
  %i.aaa = insertelement <8 x i16> %i.zz, i16 %i.zs, i64 6
  %i.aab = insertelement <8 x i16> %i.aaa, i16 %i.zt, i64 7
  %i.aac = add <8 x i16> %i.zl, %vec.phi          ; 2 uses
  %i.aad = add <8 x i16> %i.aab, %vec.phi450      ; 2 uses
  %index.next451 = add nuw i64 %index449, 16      ; 2 uses
  %i.aae = icmp eq i64 %index.next451, %n.vec447
  br i1 %i.aae, label %middle.block452, label %vector.body448, !llvm.loop !399

middle.block452:                                  ; preds = %vector.body448
  %bin.rdx = add <8 x i16> %i.aad, %i.aac
  %i.aaf = call i16 @llvm.vector.reduce.add.v8i16(<8 x i16> %bin.rdx) ; 3 uses
  store i16 %i.aaf, ptr %i.xc, align 2, !tbaa !77, !alias.scope !461, !noalias !460
  br i1 %cmp.n453, label %._crit_edge.i, label %vec.epilog.iter.check458

vec.epilog.iter.check458:                         ; preds = %middle.block452
  br i1 %min.epilog.iters.check459.not.not, label %.lr.ph1008.i.preheader, label %vec.epilog.ph460, !prof !462

vec.epilog.ph460:                                 ; preds = %vector.main.loop.iter.check444, %vec.epilog.iter.check458
  %vec.epilog.resume.val454 = phi i64 [ %n.vec447, %vec.epilog.iter.check458 ], [ 0, %vector.main.loop.iter.check444 ]
  %bc.merge.rdx = phi i16 [ %i.aaf, %vec.epilog.iter.check458 ], [ %i.xb, %vector.main.loop.iter.check444 ]
  %i.aag = insertelement <8 x i16> <i16 poison, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0>, i16 %bc.merge.rdx, i64 0
  %invariant.gep574 = getelementptr [2 x i8], ptr %i.wz, i64 %i.mf
  %invariant.gep576 = getelementptr i8, ptr %i.wz, i64 %i.rg
  %invariant.gep578 = getelementptr i8, ptr %i.wz, i64 %i.rh
  br label %vec.epilog.vector.body462

vec.epilog.vector.body462:                        ; preds = %vec.epilog.vector.body462, %vec.epilog.ph460
  %index463 = phi i64 [ %vec.epilog.resume.val454, %vec.epilog.ph460 ], [ %index.next465, %vec.epilog.vector.body462 ] ; 6 uses
  %vec.phi464 = phi <8 x i16> [ %i.aag, %vec.epilog.ph460 ], [ %i.abm, %vec.epilog.vector.body462 ]
  %i.aah = or disjoint i64 %index463, 1
  %i.aai = mul i64 %i.mf, %i.aah                  ; 4 uses
  %i.aaj = or disjoint i64 %index463, 4
  %i.aak = mul i64 %i.mf, %i.aaj
  %i.aal = or disjoint i64 %index463, 6
  %i.aam = mul i64 %i.mf, %i.aal
  %i.aan = or disjoint i64 %index463, 7
  %i.aao = mul i64 %i.mf, %i.aan
  %i.aap = add i64 %index463, 8
  %i.aaq = mul i64 %i.mf, %i.aap
  %i.aar = getelementptr [2 x i8], ptr %i.wz, i64 %i.aai
  %gep575 = getelementptr [2 x i8], ptr %invariant.gep574, i64 %i.aai
  %gep577 = getelementptr [2 x i8], ptr %invariant.gep576, i64 %i.aai
  %i.aas = getelementptr [2 x i8], ptr %i.wz, i64 %i.aak
  %gep579 = getelementptr [2 x i8], ptr %invariant.gep578, i64 %i.aai
  %i.aat = getelementptr [2 x i8], ptr %i.wz, i64 %i.aam
  %i.aau = getelementptr [2 x i8], ptr %i.wz, i64 %i.aao
  %i.aav = getelementptr [2 x i8], ptr %i.wz, i64 %i.aaq
  %i.aaw = load i16, ptr %i.aar, align 2, !tbaa !77, !alias.scope !460
  %i.aax = load i16, ptr %gep575, align 2, !tbaa !77, !alias.scope !460
  %i.aay = load i16, ptr %gep577, align 2, !tbaa !77, !alias.scope !460
  %i.aaz = load i16, ptr %i.aas, align 2, !tbaa !77, !alias.scope !460
  %i.aba = load i16, ptr %gep579, align 2, !tbaa !77, !alias.scope !460
  %i.abb = load i16, ptr %i.aat, align 2, !tbaa !77, !alias.scope !460
  %i.abc = load i16, ptr %i.aau, align 2, !tbaa !77, !alias.scope !460
end_hunk_0
begin_hunk_1_@_ZN2cv14StereoSGBMImpl7computeERKNS_11_InputArrayES3_RKNS_12_OutputArrayE:bb.a
  %i.aby = ptrtoaddr ptr %i.abx to i64            ; 3 uses
  %i.abz = load i8, ptr %i.no, align 8, !tbaa !169, !range !69, !noundef !70
  %i.aca = trunc nuw i8 %i.abz to i1
  %i.acb = mul i64 %i.abu, %i.vn
  %i.acc = select i1 %i.aca, i64 %i.acb, i64 0    ; 3 uses
  %i.acd = getelementptr inbounds nuw [2 x i8], ptr %i.abx, i64 %i.acc ; 7 uses
  br i1 %i.nz, label %iter.check407, label %.loopexit988.i

iter.check407:                                    ; preds = %_ZNK2cv10BufferSGBM7getCBufEi.exit639.i
  br i1 %min.iters.check390, label %.lr.ph1014.i.preheader, label %vector.memcheck383

vector.memcheck383:                               ; preds = %iter.check407
  %i.ace = shl i64 %i.acc, 1
  %i.acf = add i64 %i.ace, %i.aby
  %i.acg = sub i64 %i.acf, %i.vx
  %diff.check384 = icmp ugt i64 %i.acg, -32
  %i.ach = shl i64 %i.abu, 1
  %i.aci = mul i64 %i.ach, %i.abt
  %i.acj = add i64 %i.aci, %.pre.i355
  %i.ack = sub i64 %i.acj, %i.vy
  %diff.check385 = icmp ugt i64 %i.ack, -32
  %conflict.rdx386 = or i1 %diff.check384, %diff.check385
  %i.acl = shl i64 %i.wj, 1
  %i.acm = mul i64 %i.acl, %i.wi
  %i.acn = add i64 %i.acm, %i.wg
  %i.aco = sub i64 %i.acn, %i.vz
  %diff.check387 = icmp ugt i64 %i.aco, -32
  %conflict.rdx388 = or i1 %conflict.rdx386, %diff.check387
  br i1 %conflict.rdx388, label %.lr.ph1014.i.preheader, label %vector.main.loop.iter.check391

vector.main.loop.iter.check391:                   ; preds = %vector.memcheck383
  br i1 %min.iters.check392, label %vec.epilog.ph411, label %vector.body395

vector.body395:                                   ; preds = %vector.main.loop.iter.check391, %vector.body395
  %index396 = phi i64 [ %index.next403, %vector.body395 ], [ 0, %vector.main.loop.iter.check391 ] ; 5 uses
  %i.acp = getelementptr inbounds nuw [2 x i8], ptr %i.acd, i64 %index396 ; 2 uses
  %i.acq = getelementptr inbounds nuw i8, ptr %i.acp, i64 16
  %wide.load397 = load <8 x i16>, ptr %i.acp, align 2, !tbaa !77
  %wide.load398 = load <8 x i16>, ptr %i.acq, align 2, !tbaa !77
  %i.acr = getelementptr inbounds nuw [2 x i8], ptr %i.wl, i64 %index396 ; 2 uses
  %i.acs = getelementptr inbounds nuw i8, ptr %i.acr, i64 16
  %wide.load399 = load <8 x i16>, ptr %i.acr, align 2, !tbaa !77
  %wide.load400 = load <8 x i16>, ptr %i.acs, align 2, !tbaa !77
  %i.act = add <8 x i16> %wide.load399, %wide.load397
  %i.acu = add <8 x i16> %wide.load400, %wide.load398
  %i.acv = getelementptr inbounds nuw [2 x i8], ptr %i.abw, i64 %index396 ; 2 uses
  %i.acw = getelementptr inbounds nuw i8, ptr %i.acv, i64 16
  %wide.load401 = load <8 x i16>, ptr %i.acv, align 2, !tbaa !77
  %wide.load402 = load <8 x i16>, ptr %i.acw, align 2, !tbaa !77
  %i.acx = sub <8 x i16> %i.act, %wide.load401
  %i.acy = sub <8 x i16> %i.acu, %wide.load402
  %i.acz = getelementptr inbounds nuw [2 x i8], ptr %i.vc, i64 %index396 ; 2 uses
  %i.ada = getelementptr inbounds nuw i8, ptr %i.acz, i64 16
  store <8 x i16> %i.acx, ptr %i.acz, align 2, !tbaa !77
  store <8 x i16> %i.acy, ptr %i.ada, align 2, !tbaa !77
  %index.next403 = add nuw i64 %index396, 16      ; 2 uses
  %i.adb = icmp eq i64 %index.next403, %n.vec394
  br i1 %i.adb, label %middle.block404, label %vector.body395, !llvm.loop !404

middle.block404:                                  ; preds = %vector.body395
  br i1 %cmp.n405, label %.preheader989.i, label %vec.epilog.iter.check409

vec.epilog.iter.check409:                         ; preds = %middle.block404
  br i1 %min.epilog.iters.check410, label %.lr.ph1014.i.preheader, label %vec.epilog.ph411, !prof !80

vec.epilog.ph411:                                 ; preds = %vector.main.loop.iter.check391, %vec.epilog.iter.check409
  %vec.epilog.resume.val406 = phi i64 [ %n.vec394, %vec.epilog.iter.check409 ], [ 0, %vector.main.loop.iter.check391 ]
  br label %vec.epilog.vector.body413

vec.epilog.vector.body413:                        ; preds = %vec.epilog.vector.body413, %vec.epilog.ph411
  %index414 = phi i64 [ %vec.epilog.resume.val406, %vec.epilog.ph411 ], [ %index.next418, %vec.epilog.vector.body413 ] ; 5 uses
  %i.adc = getelementptr inbounds nuw [2 x i8], ptr %i.acd, i64 %index414
  %wide.load415 = load <4 x i16>, ptr %i.adc, align 2, !tbaa !77
  %i.add = getelementptr inbounds nuw [2 x i8], ptr %i.wl, i64 %index414
  %wide.load416 = load <4 x i16>, ptr %i.add, align 2, !tbaa !77
  %i.ade = add <4 x i16> %wide.load416, %wide.load415
  %i.adf = getelementptr inbounds nuw [2 x i8], ptr %i.abw, i64 %index414
  %wide.load417 = load <4 x i16>, ptr %i.adf, align 2, !tbaa !77
  %i.adg = sub <4 x i16> %i.ade, %wide.load417
  %i.adh = getelementptr inbounds nuw [2 x i8], ptr %i.vc, i64 %index414
  store <4 x i16> %i.adg, ptr %i.adh, align 2, !tbaa !77
  %index.next418 = add nuw i64 %index414, 4       ; 2 uses
  %i.adi = icmp eq i64 %index.next418, %n.vec412
  br i1 %i.adi, label %vec.epilog.middle.block419, label %vec.epilog.vector.body413, !llvm.loop !405

vec.epilog.middle.block419:                       ; preds = %vec.epilog.vector.body413
  br i1 %cmp.n420, label %.preheader989.i, label %.lr.ph1014.i.preheader

.lr.ph1014.i.preheader:                           ; preds = %iter.check407, %vector.memcheck383, %vec.epilog.iter.check409, %vec.epilog.middle.block419
  %indvars.iv1102.i.ph = phi i64 [ 0, %iter.check407 ], [ 0, %vector.memcheck383 ], [ %n.vec394, %vec.epilog.iter.check409 ], [ %n.vec412, %vec.epilog.middle.block419 ] ; 7 uses
  br i1 %lcmp.mod.not, label %.lr.ph1014.i.prol.loopexit, label %.lr.ph1014.i.prol

.lr.ph1014.i.prol:                                ; preds = %.lr.ph1014.i.preheader
  %i.adj = getelementptr inbounds nuw [2 x i8], ptr %i.acd, i64 %indvars.iv1102.i.ph
  %i.adk = load i16, ptr %i.adj, align 2, !tbaa !77
  %i.adl = getelementptr inbounds nuw [2 x i8], ptr %i.wl, i64 %indvars.iv1102.i.ph
  %i.adm = load i16, ptr %i.adl, align 2, !tbaa !77
  %i.adn = add i16 %i.adm, %i.adk
  %i.ado = getelementptr inbounds nuw [2 x i8], ptr %i.abw, i64 %indvars.iv1102.i.ph
  %i.adp = load i16, ptr %i.ado, align 2, !tbaa !77
  %i.adq = sub i16 %i.adn, %i.adp
  %i.adr = getelementptr inbounds nuw [2 x i8], ptr %i.vc, i64 %indvars.iv1102.i.ph
  store i16 %i.adq, ptr %i.adr, align 2, !tbaa !77
  %indvars.iv.next1103.i.prol = or disjoint i64 %indvars.iv1102.i.ph, 1
  br label %.lr.ph1014.i.prol.loopexit

.lr.ph1014.i.prol.loopexit:                       ; preds = %.lr.ph1014.i.prol, %.lr.ph1014.i.preheader
  %indvars.iv1102.i.unr = phi i64 [ %indvars.iv1102.i.ph, %.lr.ph1014.i.preheader ], [ %indvars.iv.next1103.i.prol, %.lr.ph1014.i.prol ]
  %i.ads = icmp eq i64 %i.qs, %indvars.iv1102.i.ph
  br i1 %i.ads, label %.preheader989.i, label %.lr.ph1014.i

.preheader989.i:                                  ; preds = %.lr.ph1014.i.prol.loopexit, %.lr.ph1014.i, %vec.epilog.middle.block419, %middle.block404
  br i1 %i.od, label %.lr.ph1020.i, label %.loopexit988.i

.lr.ph1020.i:                                     ; preds = %.preheader989.i
  %i.adt = load ptr, ptr %i.nv, align 8, !tbaa !458 ; 3 uses
  %i.adu = shl i64 %i.wj, 1
  %i.adv = mul i64 %i.adu, %i.wi                  ; 6 uses
  %i.adw = add i64 %i.adv, %i.wg
  %i.adx = add i64 %i.ph, %i.wg
  %i.ady = add i64 %i.adx, %i.adv
  %i.adz = add i64 %i.adv, %i.wg
  %i.aea = add i64 %i.ph, %i.wg
  %i.aeb = add i64 %i.aea, %i.adv
  %i.aec = ptrtoaddr ptr %i.adt to i64            ; 2 uses
  %i.aed = sub i64 %i.aeb, %i.aec
  %i.aee = shl i64 %i.acc, 1                      ; 2 uses
  %i.aef = add i64 %i.aee, %i.aby
  %i.aeg = add i64 %i.adv, %i.wg
  %i.aeh = shl i64 %i.abu, 1
  %i.aei = mul i64 %i.aeh, %i.abt                 ; 2 uses
  %i.aej = add i64 %i.aei, %.pre.i355
  %i.aek = add i64 %i.adv, %i.wg
  %i.ael = sub i64 %i.vt, %i.aec
  %i.aem = add i64 %i.aee, %i.aby
  %i.aen = add i64 %i.aei, %.pre.i355
  %i.aeo = sub i64 %i.adw, %i.vp
  %diff.check342 = icmp ugt i64 %i.aeo, -16
  %i.aep = sub i64 %i.aeg, %i.aef
  %diff.check353 = icmp ugt i64 %i.aep, -16
  %i.aeq = sub i64 %i.aek, %i.aej
  %diff.check356 = icmp ugt i64 %i.aeq, -16
  %invariant.op = or i1 %diff.check353, %diff.check356
  %i.aer = sub i64 %i.aem, %i.vu
  %diff.check364 = icmp ugt i64 %i.aer, -16
  %i.aes = sub i64 %i.aen, %i.vv
  %diff.check366 = icmp ugt i64 %i.aes, -16
  %invariant.op580 = or i1 %diff.check364, %diff.check366
  br label %.lr.ph1017.i

.lr.ph1014.i:                                     ; preds = %.lr.ph1014.i.prol.loopexit, %.lr.ph1014.i
  %indvars.iv1102.i = phi i64 [ %indvars.iv.next1103.i.1, %.lr.ph1014.i ], [ %indvars.iv1102.i.unr, %.lr.ph1014.i.prol.loopexit ] ; 6 uses
  %i.aet = getelementptr inbounds nuw [2 x i8], ptr %i.acd, i64 %indvars.iv1102.i
  %i.aeu = load i16, ptr %i.aet, align 2, !tbaa !77
  %i.aev = getelementptr inbounds nuw [2 x i8], ptr %i.wl, i64 %indvars.iv1102.i
  %i.aew = load i16, ptr %i.aev, align 2, !tbaa !77
  %i.aex = add i16 %i.aew, %i.aeu
  %i.aey = getelementptr inbounds nuw [2 x i8], ptr %i.abw, i64 %indvars.iv1102.i
  %i.aez = load i16, ptr %i.aey, align 2, !tbaa !77
  %i.afa = sub i16 %i.aex, %i.aez
  %i.afb = getelementptr inbounds nuw [2 x i8], ptr %i.vc, i64 %indvars.iv1102.i
  store i16 %i.afa, ptr %i.afb, align 2, !tbaa !77
  %indvars.iv.next1103.i = add nuw nsw i64 %indvars.iv1102.i, 1 ; 4 uses
  %i.afc = getelementptr inbounds nuw [2 x i8], ptr %i.acd, i64 %indvars.iv.next1103.i
  %i.afd = load i16, ptr %i.afc, align 2, !tbaa !77
  %i.afe = getelementptr inbounds nuw [2 x i8], ptr %i.wl, i64 %indvars.iv.next1103.i
  %i.aff = load i16, ptr %i.afe, align 2, !tbaa !77
  %i.afg = add i16 %i.aff, %i.afd
  %i.afh = getelementptr inbounds nuw [2 x i8], ptr %i.abw, i64 %indvars.iv.next1103.i
  %i.afi = load i16, ptr %i.afh, align 2, !tbaa !77
  %i.afj = sub i16 %i.afg, %i.afi
  %i.afk = getelementptr inbounds nuw [2 x i8], ptr %i.vc, i64 %indvars.iv.next1103.i
  store i16 %i.afj, ptr %i.afk, align 2, !tbaa !77
  %indvars.iv.next1103.i.1 = add nuw nsw i64 %indvars.iv1102.i, 2 ; 2 uses
  %exitcond1106.not.i.1 = icmp eq i64 %indvars.iv.next1103.i.1, %wide.trip.count1100.i
  br i1 %exitcond1106.not.i.1, label %.preheader989.i, label %.lr.ph1014.i, !llvm.loop !406

.lr.ph1017.i:                                     ; preds = %._crit_edge1018.i, %.lr.ph1020.i
  %indvar343 = phi i64 [ %indvar.next344, %._crit_edge1018.i ], [ 0, %.lr.ph1020.i ] ; 3 uses
  %indvars.iv1112.i = phi i64 [ %indvars.iv.next1113.i, %._crit_edge1018.i ], [ %i.mf, %.lr.ph1020.i ] ; 5 uses
  %i.afl = trunc i64 %indvars.iv1112.i to i32     ; 2 uses
  %i.afm = add i32 %i.oc, %i.afl
  %.sroa.speculated896.i = call i32 @llvm.smin.i32(i32 %i.oe, i32 %i.afm)
  %i.afn = sext i32 %.sroa.speculated896.i to i64
  %i.afo = getelementptr inbounds [2 x i8], ptr %i.adt, i64 %i.afn ; 2 uses
  %i.afp = add i32 %.neg603.i, %i.afl
  %.sroa.speculated888.i = call i32 @llvm.smax.i32(i32 %i.afp, i32 0)
  %i.afq = zext nneg i32 %.sroa.speculated888.i to i64
  %i.afr = getelementptr inbounds nuw [2 x i8], ptr %i.adt, i64 %i.afq ; 2 uses
  %i.afs = sub i64 %indvars.iv1112.i, %i.lm
  %sext1221.i = shl i64 %i.afs, 32
  %i.aft = ashr exact i64 %sext1221.i, 31         ; 2 uses
  %i.afu = getelementptr i8, ptr %i.wl, i64 %i.aft ; 2 uses
  br i1 %min.iters.check369, label %scalar.ph368.preheader, label %vector.memcheck341

vector.memcheck341:                               ; preds = %.lr.ph1017.i
  %i.afv = mul i64 %i.pi, %indvar343              ; 4 uses
  %i.afw = add i64 %i.ael, %i.afv                 ; 2 uses
  %i.afx = mul i64 %i.pm, %indvar343              ; 2 uses
  %i.afy = trunc i64 %i.afx to i32
  %i.afz = add i32 %41, %i.afy
  %i.aga = call i32 @llvm.smin.i32(i32 %i.afz, i32 %42)
  %smin350 = sext i32 %i.aga to i64
  %i.agb = shl nsw i64 %smin350, 1                ; 2 uses
  %i.agc = trunc i64 %i.afx to i32
  %i.agd = sub i32 %i.agc, %i.rj
  %smax347 = call i32 @llvm.smax.i32(i32 %i.agd, i32 0)
  %i.age = shl nuw i32 %smax347, 1
  %i.agf = zext i32 %i.age to i64                 ; 2 uses
  %i.agg = add i64 %i.vr, %i.afv
  %i.agh = add i64 %i.ady, %i.afv
  %i.agi = add i64 %i.adz, %i.aft                 ; 2 uses
  %i.agj = sub i64 %i.agi, %i.agh
  %diff.check345 = icmp ugt i64 %i.agj, -16
  %conflict.rdx346 = or i1 %diff.check342, %diff.check345
  %i.agk = add i64 %i.aed, %i.afv                 ; 2 uses
  %i.agl = sub i64 %i.agf, %i.agk
  %diff.check348 = icmp ugt i64 %i.agl, -16
  %conflict.rdx349 = or i1 %conflict.rdx346, %diff.check348
  %i.agm = sub i64 %i.agb, %i.agk
  %diff.check351 = icmp ugt i64 %i.agm, -16
  %conflict.rdx352 = or i1 %conflict.rdx349, %diff.check351
  %conflict.rdx357.reass = or i1 %conflict.rdx352, %invariant.op
  %i.agn = sub i64 %i.agi, %i.agg
  %diff.check358 = icmp ugt i64 %i.agn, -16
  %conflict.rdx359 = or i1 %conflict.rdx357.reass, %diff.check358
  %i.ago = sub i64 %i.agf, %i.afw
  %diff.check360 = icmp ugt i64 %i.ago, -16
  %conflict.rdx361 = or i1 %conflict.rdx359, %diff.check360
  %i.agp = sub i64 %i.agb, %i.afw
  %diff.check362 = icmp ugt i64 %i.agp, -16
  %conflict.rdx363 = or i1 %conflict.rdx361, %diff.check362
  %conflict.rdx367.reass = or i1 %conflict.rdx363, %invariant.op580
  br i1 %conflict.rdx367.reass, label %scalar.ph368.preheader, label %vector.body372

vector.body372:                                   ; preds = %vector.memcheck341, %vector.body372
  %index373 = phi i64 [ %index.next379, %vector.body372 ], [ 0, %vector.memcheck341 ] ; 5 uses
  %i.agq = getelementptr [2 x i8], ptr %i.afu, i64 %index373
  %wide.load374 = load <8 x i16>, ptr %i.agq, align 2, !tbaa !77
  %i.agr = getelementptr inbounds nuw [2 x i8], ptr %i.afo, i64 %index373
  %wide.load375 = load <8 x i16>, ptr %i.agr, align 2, !tbaa !77
  %i.ags = add <8 x i16> %wide.load375, %wide.load374
  %i.agt = getelementptr inbounds nuw [2 x i8], ptr %i.afr, i64 %index373
  %wide.load376 = load <8 x i16>, ptr %i.agt, align 2, !tbaa !77
  %i.agu = sub <8 x i16> %i.ags, %wide.load376    ; 2 uses
  %i.agv = add nsw i64 %index373, %indvars.iv1112.i ; 4 uses
  %i.agw = getelementptr inbounds [2 x i8], ptr %i.wl, i64 %i.agv
  store <8 x i16> %i.agu, ptr %i.agw, align 2, !tbaa !77
  %i.agx = getelementptr inbounds [2 x i8], ptr %i.acd, i64 %i.agv
  %wide.load377 = load <8 x i16>, ptr %i.agx, align 2, !tbaa !77
  %i.agy = add <8 x i16> %wide.load377, %i.agu
  %i.agz = getelementptr inbounds [2 x i8], ptr %i.abw, i64 %i.agv
  %wide.load378 = load <8 x i16>, ptr %i.agz, align 2, !tbaa !77
  %i.aha = sub <8 x i16> %i.agy, %wide.load378
  %i.ahb = getelementptr inbounds [2 x i8], ptr %i.vc, i64 %i.agv
  store <8 x i16> %i.aha, ptr %i.ahb, align 2, !tbaa !77
  %index.next379 = add nuw i64 %index373, 8       ; 2 uses
  %i.ahc = icmp eq i64 %index.next379, %n.vec371
  br i1 %i.ahc, label %middle.block380, label %vector.body372, !llvm.loop !407

middle.block380:                                  ; preds = %vector.body372
  br i1 %cmp.n381, label %._crit_edge1018.i, label %scalar.ph368.preheader

scalar.ph368.preheader:                           ; preds = %vector.memcheck341, %.lr.ph1017.i, %middle.block380
  %indvars.iv1107.i.ph = phi i64 [ 0, %vector.memcheck341 ], [ 0, %.lr.ph1017.i ], [ %n.vec371, %middle.block380 ]
  br label %scalar.ph368

scalar.ph368:                                     ; preds = %scalar.ph368.preheader, %scalar.ph368
  %indvars.iv1107.i = phi i64 [ %indvars.iv.next1108.i, %scalar.ph368 ], [ %indvars.iv1107.i.ph, %scalar.ph368.preheader ] ; 5 uses
  %i.ahd = getelementptr [2 x i8], ptr %i.afu, i64 %indvars.iv1107.i
  %i.ahe = load i16, ptr %i.ahd, align 2, !tbaa !77
  %i.ahf = getelementptr inbounds nuw [2 x i8], ptr %i.afo, i64 %indvars.iv1107.i
  %i.ahg = load i16, ptr %i.ahf, align 2, !tbaa !77
  %i.ahh = add i16 %i.ahg, %i.ahe
  %i.ahi = getelementptr inbounds nuw [2 x i8], ptr %i.afr, i64 %indvars.iv1107.i
  %i.ahj = load i16, ptr %i.ahi, align 2, !tbaa !77
  %i.ahk = sub i16 %i.ahh, %i.ahj                 ; 2 uses
  %i.ahl = add nsw i64 %indvars.iv1107.i, %indvars.iv1112.i ; 4 uses
  %i.ahm = getelementptr inbounds [2 x i8], ptr %i.wl, i64 %i.ahl
  store i16 %i.ahk, ptr %i.ahm, align 2, !tbaa !77
  %i.ahn = getelementptr inbounds [2 x i8], ptr %i.acd, i64 %i.ahl
  %i.aho = load i16, ptr %i.ahn, align 2, !tbaa !77
  %i.ahp = add i16 %i.aho, %i.ahk
  %i.ahq = getelementptr inbounds [2 x i8], ptr %i.abw, i64 %i.ahl
  %i.ahr = load i16, ptr %i.ahq, align 2, !tbaa !77
  %i.ahs = sub i16 %i.ahp, %i.ahr
  %i.aht = getelementptr inbounds [2 x i8], ptr %i.vc, i64 %i.ahl
  store i16 %i.ahs, ptr %i.aht, align 2, !tbaa !77
  %indvars.iv.next1108.i = add nuw nsw i64 %indvars.iv1107.i, 1 ; 2 uses
  %exitcond1111.not.i = icmp eq i64 %indvars.iv.next1108.i, %wide.trip.count1100.i
  br i1 %exitcond1111.not.i, label %._crit_edge1018.i, label %scalar.ph368, !llvm.loop !408

._crit_edge1018.i:                                ; preds = %scalar.ph368, %middle.block380
  %indvars.iv.next1113.i = add nsw i64 %indvars.iv1112.i, %i.mf ; 2 uses
  %i.ahu = icmp slt i64 %indvars.iv.next1113.i, %i.op
  %indvar.next344 = add i64 %indvar343, 1
  br i1 %i.ahu, label %.lr.ph1017.i, label %.loopexit988.i, !llvm.loop !409

iter.check325:                                    ; preds = %._crit_edge1012.i
  %i.ahv = icmp eq i32 %storemerge1031.i, 0
  %i.ahw = select i1 %i.ahv, i16 %i.ov, i16 1     ; 7 uses
  br i1 %min.iters.check308, label %vec.epilog.scalar.ph326.preheader, label %vector.memcheck299

vector.memcheck299:                               ; preds = %iter.check325
  %scevgep302 = getelementptr i8, ptr %i.wf, i64 %i.pg
  %i.ahx = shl i64 %i.wj, 1
  %i.ahy = mul i64 %i.ahx, %i.wi
  %scevgep303 = getelementptr i8, ptr %scevgep302, i64 %i.ahy
  %bound0304 = icmp ult ptr %i.vc, %scevgep303
  %bound1305 = icmp ult ptr %i.wl, %scevgep301
  %found.conflict306 = and i1 %bound0304, %bound1305
  br i1 %found.conflict306, label %vec.epilog.scalar.ph326.preheader, label %vector.main.loop.iter.check309

vector.main.loop.iter.check309:                   ; preds = %vector.memcheck299
  br i1 %min.iters.check310, label %vec.epilog.ph329, label %vector.ph311

vector.ph311:                                     ; preds = %vector.main.loop.iter.check309
  %broadcast.splatinsert313 = insertelement <8 x i16> poison, i16 %i.ahw, i64 0
  %broadcast.splat314 = shufflevector <8 x i16> %broadcast.splatinsert313, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body315

vector.body315:                                   ; preds = %vector.ph311, %vector.body315
  %index316 = phi i64 [ 0, %vector.ph311 ], [ %index.next321, %vector.body315 ] ; 3 uses
  %i.ahz = getelementptr inbounds nuw [2 x i8], ptr %i.vc, i64 %index316 ; 3 uses
  %i.aia = getelementptr inbounds nuw i8, ptr %i.ahz, i64 16 ; 2 uses
  %wide.load317 = load <8 x i16>, ptr %i.ahz, align 2, !tbaa !77, !alias.scope !463, !noalias !464
  %wide.load318 = load <8 x i16>, ptr %i.aia, align 2, !tbaa !77, !alias.scope !463, !noalias !464
  %i.aib = getelementptr inbounds nuw [2 x i8], ptr %i.wl, i64 %index316 ; 2 uses
  %i.aic = getelementptr inbounds nuw i8, ptr %i.aib, i64 16
  %wide.load319 = load <8 x i16>, ptr %i.aib, align 2, !tbaa !77, !alias.scope !464
  %wide.load320 = load <8 x i16>, ptr %i.aic, align 2, !tbaa !77, !alias.scope !464
  %i.aid = mul <8 x i16> %wide.load319, %broadcast.splat314
  %i.aie = mul <8 x i16> %wide.load320, %broadcast.splat314
  %i.aif = add <8 x i16> %i.aid, %wide.load317
  %i.aig = add <8 x i16> %i.aie, %wide.load318
  store <8 x i16> %i.aif, ptr %i.ahz, align 2, !tbaa !77, !alias.scope !463, !noalias !464
  store <8 x i16> %i.aig, ptr %i.aia, align 2, !tbaa !77, !alias.scope !463, !noalias !464
  %index.next321 = add nuw i64 %index316, 16      ; 2 uses
  %i.aih = icmp eq i64 %index.next321, %n.vec312
  br i1 %i.aih, label %middle.block322, label %vector.body315, !llvm.loop !413

middle.block322:                                  ; preds = %vector.body315
  br i1 %cmp.n323, label %.preheader987.thread.i, label %vec.epilog.iter.check327

vec.epilog.iter.check327:                         ; preds = %middle.block322
  br i1 %min.epilog.iters.check328, label %vec.epilog.scalar.ph326.preheader, label %vec.epilog.ph329, !prof !80

vec.epilog.ph329:                                 ; preds = %vector.main.loop.iter.check309, %vec.epilog.iter.check327
  %vec.epilog.resume.val324 = phi i64 [ %n.vec312, %vec.epilog.iter.check327 ], [ 0, %vector.main.loop.iter.check309 ]
  %broadcast.splatinsert331 = insertelement <4 x i16> poison, i16 %i.ahw, i64 0
  %broadcast.splat332 = shufflevector <4 x i16> %broadcast.splatinsert331, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body333

vec.epilog.vector.body333:                        ; preds = %vec.epilog.vector.body333, %vec.epilog.ph329
  %index334 = phi i64 [ %vec.epilog.resume.val324, %vec.epilog.ph329 ], [ %index.next337, %vec.epilog.vector.body333 ] ; 3 uses
  %i.aii = getelementptr inbounds nuw [2 x i8], ptr %i.vc, i64 %index334 ; 2 uses
  %wide.load335 = load <4 x i16>, ptr %i.aii, align 2, !tbaa !77, !alias.scope !463, !noalias !464
  %i.aij = getelementptr inbounds nuw [2 x i8], ptr %i.wl, i64 %index334
  %wide.load336 = load <4 x i16>, ptr %i.aij, align 2, !tbaa !77, !alias.scope !464
  %i.aik = mul <4 x i16> %wide.load336, %broadcast.splat332
  %i.ail = add <4 x i16> %i.aik, %wide.load335
  store <4 x i16> %i.ail, ptr %i.aii, align 2, !tbaa !77, !alias.scope !463, !noalias !464
  %index.next337 = add nuw i64 %index334, 4       ; 2 uses
  %i.aim = icmp eq i64 %index.next337, %n.vec330
  br i1 %i.aim, label %vec.epilog.middle.block338, label %vec.epilog.vector.body333, !llvm.loop !414

vec.epilog.middle.block338:                       ; preds = %vec.epilog.vector.body333
  br i1 %cmp.n339, label %.preheader987.thread.i, label %vec.epilog.scalar.ph326.preheader

vec.epilog.scalar.ph326.preheader:                ; preds = %iter.check325, %vector.memcheck299, %vec.epilog.iter.check327, %vec.epilog.middle.block338
  %indvars.iv1115.i.ph = phi i64 [ 0, %iter.check325 ], [ 0, %vector.memcheck299 ], [ %n.vec312, %vec.epilog.iter.check327 ], [ %n.vec330, %vec.epilog.middle.block338 ] ; 5 uses
  br i1 %lcmp.mod555.not, label %vec.epilog.scalar.ph326.prol.loopexit, label %vec.epilog.scalar.ph326.prol

vec.epilog.scalar.ph326.prol:                     ; preds = %vec.epilog.scalar.ph326.preheader
  %i.ain = getelementptr inbounds nuw [2 x i8], ptr %i.vc, i64 %indvars.iv1115.i.ph ; 2 uses
  %i.aio = load i16, ptr %i.ain, align 2, !tbaa !77
  %i.aip = getelementptr inbounds nuw [2 x i8], ptr %i.wl, i64 %indvars.iv1115.i.ph
  %i.aiq = load i16, ptr %i.aip, align 2, !tbaa !77
  %i.air = mul i16 %i.aiq, %i.ahw
  %i.ais = add i16 %i.air, %i.aio
  store i16 %i.ais, ptr %i.ain, align 2, !tbaa !77
  %indvars.iv.next1116.i.prol = or disjoint i64 %indvars.iv1115.i.ph, 1
  br label %vec.epilog.scalar.ph326.prol.loopexit

vec.epilog.scalar.ph326.prol.loopexit:            ; preds = %vec.epilog.scalar.ph326.prol, %vec.epilog.scalar.ph326.preheader
  %indvars.iv1115.i.unr = phi i64 [ %indvars.iv1115.i.ph, %vec.epilog.scalar.ph326.preheader ], [ %indvars.iv.next1116.i.prol, %vec.epilog.scalar.ph326.prol ]
  %i.ait = icmp eq i64 %indvars.iv1115.i.ph, %i.rl
  br i1 %i.ait, label %.preheader987.thread.i, label %vec.epilog.scalar.ph326

.preheader987.thread.i:                           ; preds = %vec.epilog.scalar.ph326.prol.loopexit, %vec.epilog.scalar.ph326, %vec.epilog.middle.block338, %middle.block322
  br i1 %i.od, label %.lr.ph1026.i.preheader, label %.loopexit988.i

.lr.ph1026.i.preheader:                           ; preds = %.preheader987.thread.i
  %scevgep = getelementptr i8, ptr %i.wf, i64 %i.ow
  %i.aiu = shl i64 %i.wj, 1
  %i.aiv = mul i64 %i.aiu, %i.wi                  ; 3 uses
  %scevgep239 = getelementptr i8, ptr %scevgep, i64 %i.aiv
  %scevgep246 = getelementptr i8, ptr %i.wf, i64 %i.pa
  %scevgep247 = getelementptr i8, ptr %scevgep246, i64 %i.aiv
  %scevgep249 = getelementptr i8, ptr %i.wr, i64 %i.pa
  %scevgep252 = getelementptr i8, ptr %i.wr, i64 %i.pa
  %i.aiw = insertelement <4 x ptr> poison, ptr %scevgep239, i64 0
  %i.aix = shufflevector <4 x ptr> %i.aiw, <4 x ptr> poison, <4 x i32> zeroinitializer
  %invariant.gep581 = getelementptr i8, ptr %i.wf, i64 %i.aiv
  %broadcast.splatinsert288 = insertelement <8 x i16> poison, i16 %i.ahw, i64 0
  %broadcast.splat289 = shufflevector <8 x i16> %broadcast.splatinsert288, <8 x i16> poison, <8 x i32> zeroinitializer
  br label %.lr.ph1026.i

vec.epilog.scalar.ph326:                          ; preds = %vec.epilog.scalar.ph326.prol.loopexit, %vec.epilog.scalar.ph326
  %indvars.iv1115.i = phi i64 [ %indvars.iv.next1116.i.1, %vec.epilog.scalar.ph326 ], [ %indvars.iv1115.i.unr, %vec.epilog.scalar.ph326.prol.loopexit ] ; 4 uses
  %i.aiy = getelementptr inbounds nuw [2 x i8], ptr %i.vc, i64 %indvars.iv1115.i ; 2 uses
  %i.aiz = load i16, ptr %i.aiy, align 2, !tbaa !77
  %i.aja = getelementptr inbounds nuw [2 x i8], ptr %i.wl, i64 %indvars.iv1115.i
  %i.ajb = load i16, ptr %i.aja, align 2, !tbaa !77
  %i.ajc = mul i16 %i.ajb, %i.ahw
  %i.ajd = add i16 %i.ajc, %i.aiz
  store i16 %i.ajd, ptr %i.aiy, align 2, !tbaa !77
  %indvars.iv.next1116.i = add nuw nsw i64 %indvars.iv1115.i, 1 ; 2 uses
  %i.aje = getelementptr inbounds nuw [2 x i8], ptr %i.vc, i64 %indvars.iv.next1116.i ; 2 uses
  %i.ajf = load i16, ptr %i.aje, align 2, !tbaa !77
  %i.ajg = getelementptr inbounds nuw [2 x i8], ptr %i.wl, i64 %indvars.iv.next1116.i
  %i.ajh = load i16, ptr %i.ajg, align 2, !tbaa !77
  %i.aji = mul i16 %i.ajh, %i.ahw
  %i.ajj = add i16 %i.aji, %i.ajf
  store i16 %i.ajj, ptr %i.aje, align 2, !tbaa !77
  %indvars.iv.next1116.i.1 = add nuw nsw i64 %indvars.iv1115.i, 2 ; 2 uses
  %exitcond1119.not.i.1 = icmp eq i64 %indvars.iv.next1116.i.1, %wide.trip.count1100.i
  br i1 %exitcond1119.not.i.1, label %.preheader987.thread.i, label %vec.epilog.scalar.ph326, !llvm.loop !415

.lr.ph1026.i:                                     ; preds = %.lr.ph1026.i.preheader, %._crit_edge1027.i
  %indvar = phi i32 [ 0, %.lr.ph1026.i.preheader ], [ %indvar.next, %._crit_edge1027.i ] ; 2 uses
  %indvars.iv1125.i = phi i64 [ %i.mf, %.lr.ph1026.i.preheader ], [ %indvars.iv.next1126.i, %._crit_edge1027.i ] ; 5 uses
  %i.ajk = trunc i64 %indvars.iv1125.i to i32     ; 2 uses
  %i.ajl = add i32 %i.oc, %i.ajk
  %.sroa.speculated880.i = call i32 @llvm.smin.i32(i32 %i.oe, i32 %i.ajl)
  %i.ajm = sext i32 %.sroa.speculated880.i to i64
  %i.ajn = getelementptr inbounds [2 x i8], ptr %i.wr, i64 %i.ajm ; 4 uses
  %i.ajo = add i32 %.neg603.i, %i.ajk
  %.sroa.speculated872.i = call i32 @llvm.smax.i32(i32 %i.ajo, i32 0)
  %i.ajp = zext nneg i32 %.sroa.speculated872.i to i64
  %i.ajq = getelementptr inbounds nuw [2 x i8], ptr %i.wr, i64 %i.ajp ; 4 uses
  %i.ajr = sub i64 %indvars.iv1125.i, %i.lm
  %sext1222.i = shl i64 %i.ajr, 32
  %i.ajs = ashr exact i64 %sext1222.i, 31         ; 2 uses
  %i.ajt = getelementptr i8, ptr %i.wl, i64 %i.ajs ; 4 uses
  br i1 %min.iters.check285, label %scalar.ph.preheader, label %vector.memcheck238

vector.memcheck238:                               ; preds = %.lr.ph1026.i
  %i.aju = mul i32 %i.pc, %indvar                 ; 2 uses
  %i.ajv = add i32 %39, %i.aju
  %i.ajw = call i32 @llvm.smin.i32(i32 %i.ajv, i32 %40)
  %smin = sext i32 %i.ajw to i64
  %i.ajx = shl nsw i64 %smin, 1
  %scevgep253 = getelementptr i8, ptr %scevgep252, i64 %i.ajx ; 2 uses
  %i.ajy = sub i32 %i.aju, %i.rm
  %smax250 = call i32 @llvm.smax.i32(i32 %i.ajy, i32 0)
  %i.ajz = shl nuw i32 %smax250, 1
  %i.aka = zext i32 %i.ajz to i64
  %scevgep251 = getelementptr i8, ptr %scevgep249, i64 %i.aka ; 2 uses
  %i.akb = udiv i64 %i.oz, %i.mf
  %i.akc = add nuw nsw i64 %i.akb, %umin
  %i.akd = shl nuw nsw i64 %i.akc, 1
  %i.ake = add nuw i64 %i.akd, 2
  %i.akf = mul i64 %i.ake, %i.mf
  %i.akg = add i64 %i.akf, %i.pa                  ; 2 uses
  %gep582 = getelementptr i8, ptr %invariant.gep581, i64 %i.akg
  %gep584 = getelementptr i8, ptr %invariant.gep583, i64 %i.akg ; 4 uses
  %scevgep248 = getelementptr i8, ptr %scevgep247, i64 %i.ajs ; 2 uses
  %bound1271 = icmp ult ptr %i.ajt, %gep584
  %bound1276 = icmp ult ptr %i.ajq, %gep584
  %bound0280 = icmp ult ptr %scevgep243, %scevgep253
  %bound1281 = icmp ult ptr %i.ajn, %gep584
  %i.akh = insertelement <4 x ptr> poison, ptr %scevgep248, i64 0
  %i.aki = insertelement <4 x ptr> %i.akh, ptr %gep584, i64 1
  %i.akj = insertelement <4 x ptr> %i.aki, ptr %scevgep251, i64 2
  %i.akk = insertelement <4 x ptr> %i.akj, ptr %scevgep253, i64 3
  %i.akl = icmp ult <4 x ptr> %i.aix, %i.akk
  %i.akm = insertelement <4 x ptr> %i.wd, ptr %i.ajt, i64 0 ; 2 uses
  %i.akn = insertelement <4 x ptr> %i.akm, ptr %i.ajq, i64 2
  %i.ako = insertelement <4 x ptr> %i.akn, ptr %i.ajn, i64 3
  %i.akp = insertelement <4 x ptr> poison, ptr %gep582, i64 0
  %i.akq = shufflevector <4 x ptr> %i.akp, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.akr = icmp ult <4 x ptr> %i.ako, %i.akq
  %i.aks = shufflevector <4 x ptr> %i.akm, <4 x ptr> poison, <2 x i32> <i32 1, i32 1>
  %i.akt = insertelement <2 x ptr> poison, ptr %scevgep248, i64 0
  %i.aku = insertelement <2 x ptr> %i.akt, ptr %scevgep251, i64 1
  %i.akv = icmp ult <2 x ptr> %i.aks, %i.aku
  %i.akw = insertelement <8 x i1> %i.rn, i1 %bound0280, i64 6
  %i.akx = shufflevector <4 x i1> %i.akl, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aky = shufflevector <8 x i1> %i.akx, <8 x i1> %i.akw, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 14, i32 15>
  %i.akz = shufflevector <2 x i1> %i.akv, <2 x i1> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ala = shufflevector <8 x i1> %i.aky, <8 x i1> %i.akz, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 6, i32 7>
  %i.alb = insertelement <8 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 true>, i1 %bound1271, i64 4
  %i.alc = insertelement <8 x i1> %i.alb, i1 %bound1276, i64 5
  %i.ald = insertelement <8 x i1> %i.alc, i1 %bound1281, i64 6
  %i.ale = shufflevector <4 x i1> %i.akr, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.alf = shufflevector <8 x i1> %i.ale, <8 x i1> %i.ald, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.alg = and <8 x i1> %i.ala, %i.alf
  %i.alh = bitcast <8 x i1> %i.alg to i8
  %.not = icmp eq i8 %i.alh, 0
  br i1 %.not, label %vector.body290, label %scalar.ph.preheader

vector.body290:                                   ; preds = %vector.memcheck238, %vector.body290
  %index291 = phi i64 [ %index.next295, %vector.body290 ], [ 0, %vector.memcheck238 ] ; 5 uses
  %i.ali = getelementptr [2 x i8], ptr %i.ajt, i64 %index291
  %wide.load = load <8 x i16>, ptr %i.ali, align 2, !tbaa !77, !alias.scope !465
  %i.alj = getelementptr inbounds nuw [2 x i8], ptr %i.ajn, i64 %index291
  %wide.load292 = load <8 x i16>, ptr %i.alj, align 2, !tbaa !77, !alias.scope !466
  %i.alk = add <8 x i16> %wide.load292, %wide.load
  %i.all = getelementptr inbounds nuw [2 x i8], ptr %i.ajq, i64 %index291
  %wide.load293 = load <8 x i16>, ptr %i.all, align 2, !tbaa !77, !alias.scope !467
  %i.alm = sub <8 x i16> %i.alk, %wide.load293    ; 2 uses
  %i.aln = add nsw i64 %index291, %indvars.iv1125.i ; 2 uses
  %i.alo = getelementptr inbounds [2 x i8], ptr %i.wl, i64 %i.aln
  store <8 x i16> %i.alm, ptr %i.alo, align 2, !tbaa !77, !alias.scope !468, !noalias !469
  %i.alp = getelementptr inbounds [2 x i8], ptr %i.vc, i64 %i.aln ; 2 uses
  %wide.load294 = load <8 x i16>, ptr %i.alp, align 2, !tbaa !77, !alias.scope !470, !noalias !471
  %i.alq = mul <8 x i16> %i.alm, %broadcast.splat289
  %i.alr = add <8 x i16> %i.alq, %wide.load294
  store <8 x i16> %i.alr, ptr %i.alp, align 2, !tbaa !77, !alias.scope !470, !noalias !471
  %index.next295 = add nuw i64 %index291, 8       ; 2 uses
  %i.als = icmp eq i64 %index.next295, %n.vec287
  br i1 %i.als, label %middle.block296, label %vector.body290, !llvm.loop !422

middle.block296:                                  ; preds = %vector.body290
  br i1 %cmp.n297, label %._crit_edge1027.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck238, %.lr.ph1026.i, %middle.block296
  %indvars.iv1120.i.ph = phi i64 [ 0, %vector.memcheck238 ], [ 0, %.lr.ph1026.i ], [ %n.vec287, %middle.block296 ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv1120.i = phi i64 [ %indvars.iv.next1121.i, %scalar.ph ], [ %indvars.iv1120.i.ph, %scalar.ph.preheader ] ; 5 uses
  %i.alt = getelementptr [2 x i8], ptr %i.ajt, i64 %indvars.iv1120.i
  %i.alu = load i16, ptr %i.alt, align 2, !tbaa !77
  %i.alv = getelementptr inbounds nuw [2 x i8], ptr %i.ajn, i64 %indvars.iv1120.i
  %i.alw = load i16, ptr %i.alv, align 2, !tbaa !77
  %i.alx = add i16 %i.alw, %i.alu
  %i.aly = getelementptr inbounds nuw [2 x i8], ptr %i.ajq, i64 %indvars.iv1120.i
  %i.alz = load i16, ptr %i.aly, align 2, !tbaa !77
  %i.ama = sub i16 %i.alx, %i.alz                 ; 2 uses
  %i.amb = add nsw i64 %indvars.iv1120.i, %indvars.iv1125.i ; 2 uses
  %i.amc = getelementptr inbounds [2 x i8], ptr %i.wl, i64 %i.amb
  store i16 %i.ama, ptr %i.amc, align 2, !tbaa !77
  %i.amd = getelementptr inbounds [2 x i8], ptr %i.vc, i64 %i.amb ; 2 uses
  %i.ame = load i16, ptr %i.amd, align 2, !tbaa !77
  %i.amf = mul i16 %i.ama, %i.ahw
  %i.amg = add i16 %i.amf, %i.ame
  store i16 %i.amg, ptr %i.amd, align 2, !tbaa !77
  %indvars.iv.next1121.i = add nuw nsw i64 %indvars.iv1120.i, 1 ; 2 uses
  %exitcond1124.not.i = icmp eq i64 %indvars.iv.next1121.i, %wide.trip.count1100.i
  br i1 %exitcond1124.not.i, label %._crit_edge1027.i, label %scalar.ph, !llvm.loop !423

._crit_edge1027.i:                                ; preds = %scalar.ph, %middle.block296
  %indvars.iv.next1126.i = add nsw i64 %indvars.iv1125.i, %i.mf ; 2 uses
  %i.amh = icmp slt i64 %indvars.iv.next1126.i, %i.op
  %indvar.next = add i32 %indvar, 1
  br i1 %i.amh, label %.lr.ph1026.i, label %.loopexit988.i, !llvm.loop !424

49:                                               ; preds = %bb.bw
  br i1 %i.vf, label %.preheader991.i.a, label %_ZNK2cv10BufferSGBM7getCBufEi.exit651.i

.preheader991.i.a:                                ; preds = %49
  br i1 %i.nu, label %iter.check494, label %.loopexit988.i

iter.check494:                                    ; preds = %.preheader991.i.a
  br i1 %min.iters.check479, label %.lr.ph1005.i.preheader, label %vector.memcheck470

vector.memcheck470:                               ; preds = %iter.check494
  %scevgep473 = getelementptr i8, ptr %i.wf, i64 %i.qr
  %i.ami = shl i64 %i.wj, 1
  %i.amj = mul i64 %i.ami, %i.wi
  %scevgep474 = getelementptr i8, ptr %scevgep473, i64 %i.amj
  %bound0475 = icmp ult ptr %i.vc, %scevgep474
  %bound1476 = icmp ult ptr %i.wl, %scevgep472
  %found.conflict477 = and i1 %bound0475, %bound1476
  br i1 %found.conflict477, label %.lr.ph1005.i.preheader, label %vector.main.loop.iter.check480

vector.main.loop.iter.check480:                   ; preds = %vector.memcheck470
  br i1 %min.iters.check481, label %vec.epilog.vector.body500.preheader, label %vector.body484

vector.body484:                                   ; preds = %vector.main.loop.iter.check480, %vector.body484
  %index485 = phi i64 [ %index.next490, %vector.body484 ], [ 0, %vector.main.loop.iter.check480 ] ; 3 uses
  %i.amk = getelementptr inbounds nuw [2 x i8], ptr %i.vc, i64 %index485 ; 3 uses
  %i.aml = getelementptr inbounds nuw i8, ptr %i.amk, i64 16 ; 2 uses
  %wide.load486 = load <8 x i16>, ptr %i.amk, align 2, !tbaa !77, !alias.scope !472, !noalias !473
  %wide.load487 = load <8 x i16>, ptr %i.aml, align 2, !tbaa !77, !alias.scope !472, !noalias !473
  %i.amm = getelementptr inbounds nuw [2 x i8], ptr %i.wl, i64 %index485 ; 2 uses
  %i.amn = getelementptr inbounds nuw i8, ptr %i.amm, i64 16
  %wide.load488 = load <8 x i16>, ptr %i.amm, align 2, !tbaa !77, !alias.scope !473
  %wide.load489 = load <8 x i16>, ptr %i.amn, align 2, !tbaa !77, !alias.scope !473
  %i.amo = add <8 x i16> %wide.load488, %wide.load486
  %i.amp = add <8 x i16> %wide.load489, %wide.load487
  store <8 x i16> %i.amo, ptr %i.amk, align 2, !tbaa !77, !alias.scope !472, !noalias !473
  store <8 x i16> %i.amp, ptr %i.aml, align 2, !tbaa !77, !alias.scope !472, !noalias !473
  %index.next490 = add nuw i64 %index485, 16      ; 2 uses
  %i.amq = icmp eq i64 %index.next490, %n.vec483
  br i1 %i.amq, label %middle.block491, label %vector.body484, !llvm.loop !428

middle.block491:                                  ; preds = %vector.body484
  br i1 %cmp.n492, label %.loopexit988.i, label %vec.epilog.iter.check496

vec.epilog.iter.check496:                         ; preds = %middle.block491
  br i1 %min.epilog.iters.check497.not.not, label %.lr.ph1005.i.preheader, label %vec.epilog.vector.body500.preheader, !prof !462

vec.epilog.vector.body500.preheader:              ; preds = %vector.main.loop.iter.check480, %vec.epilog.iter.check496
  %index501.ph = phi i64 [ 0, %vector.main.loop.iter.check480 ], [ %n.vec483, %vec.epilog.iter.check496 ]
  br label %vec.epilog.vector.body500

.lr.ph1005.i.preheader:                           ; preds = %iter.check494, %vector.memcheck470, %vec.epilog.iter.check496
  %indvars.iv1090.i.ph = phi i64 [ 0, %vector.memcheck470 ], [ %n.vec483, %vec.epilog.iter.check496 ], [ 0, %iter.check494 ]
  br label %.lr.ph1005.i

vec.epilog.vector.body500:                        ; preds = %vec.epilog.vector.body500.preheader, %vec.epilog.vector.body500
  %index501 = phi i64 [ %index.next504, %vec.epilog.vector.body500 ], [ %index501.ph, %vec.epilog.vector.body500.preheader ] ; 3 uses
  %i.amr = getelementptr inbounds nuw [2 x i8], ptr %i.vc, i64 %index501 ; 2 uses
  %wide.load502 = load <8 x i16>, ptr %i.amr, align 2, !tbaa !77, !alias.scope !472, !noalias !473
  %i.ams = getelementptr inbounds nuw [2 x i8], ptr %i.wl, i64 %index501
  %wide.load503 = load <8 x i16>, ptr %i.ams, align 2, !tbaa !77, !alias.scope !473
  %i.amt = add <8 x i16> %wide.load503, %wide.load502
  store <8 x i16> %i.amt, ptr %i.amr, align 2, !tbaa !77, !alias.scope !472, !noalias !473
  %index.next504 = add nuw i64 %index501, 8       ; 2 uses
  %i.amu = icmp eq i64 %index.next504, %47
  br i1 %i.amu, label %.loopexit988.i, label %vec.epilog.vector.body500, !llvm.loop !429

_ZNK2cv10BufferSGBM7getCBufEi.exit651.i:          ; preds = %49
  %i.amv = urem i64 %i.vm, %i.we                  ; 2 uses
  %i.amw = mul i64 %i.amv, %i.wj
  %i.amx = getelementptr inbounds nuw [2 x i8], ptr %i.wf, i64 %i.amw ; 4 uses
  %i.amy = load ptr, ptr %i.nn, align 8, !tbaa !135 ; 2 uses
  %50 = ptrtoaddr ptr %i.amy to i64
  %i.amz = load i8, ptr %i.no, align 8, !tbaa !169, !range !69, !noundef !70
  %i.ana = trunc nuw i8 %i.amz to i1
  %i.anb = mul i64 %i.wj, %i.vn
  %i.anc = select i1 %i.ana, i64 %i.anb, i64 0    ; 2 uses
  %i.and = getelementptr inbounds nuw [2 x i8], ptr %i.amy, i64 %i.anc ; 4 uses
  br i1 %i.nu, label %iter.check532, label %.loopexit988.i

iter.check532:                                    ; preds = %_ZNK2cv10BufferSGBM7getCBufEi.exit651.i
  br i1 %min.iters.check515, label %.lr.ph.i86.preheader, label %vector.memcheck508

vector.memcheck508:                               ; preds = %iter.check532
  %i.ane = shl i64 %i.anc, 1
  %i.anf = add i64 %i.ane, %50
  %i.ang = sub i64 %i.anf, %i.wa
  %diff.check509 = icmp ugt i64 %i.ang, -32
  %i.anh = shl i64 %i.wj, 1
  %i.ani = mul i64 %i.anh, %i.amv
  %i.anj = add i64 %i.ani, %i.wg
  %i.ank = sub i64 %i.anj, %i.wb
  %diff.check510 = icmp ugt i64 %i.ank, -32
  %conflict.rdx511 = or i1 %diff.check509, %diff.check510
  %i.anl = shl i64 %i.wj, 1
  %i.anm = mul i64 %i.anl, %i.wi
  %i.ann = add i64 %i.anm, %i.wg
  %i.ano = sub i64 %i.ann, %i.wc
  %diff.check512 = icmp ugt i64 %i.ano, -32
  %conflict.rdx513 = or i1 %conflict.rdx511, %diff.check512
  br i1 %conflict.rdx513, label %.lr.ph.i86.preheader, label %vector.main.loop.iter.check516

vector.main.loop.iter.check516:                   ; preds = %vector.memcheck508
  br i1 %min.iters.check517, label %vec.epilog.vector.body538.preheader, label %vector.body520

vector.body520:                                   ; preds = %vector.main.loop.iter.check516, %vector.body520
  %index521 = phi i64 [ %index.next528, %vector.body520 ], [ 0, %vector.main.loop.iter.check516 ] ; 5 uses
  %i.anp = getelementptr inbounds nuw [2 x i8], ptr %i.and, i64 %index521 ; 2 uses
  %i.anq = getelementptr inbounds nuw i8, ptr %i.anp, i64 16
  %wide.load522 = load <8 x i16>, ptr %i.anp, align 2, !tbaa !77
  %wide.load523 = load <8 x i16>, ptr %i.anq, align 2, !tbaa !77
  %i.anr = getelementptr inbounds nuw [2 x i8], ptr %i.wl, i64 %index521 ; 2 uses
  %i.ans = getelementptr inbounds nuw i8, ptr %i.anr, i64 16
  %wide.load524 = load <8 x i16>, ptr %i.anr, align 2, !tbaa !77
  %wide.load525 = load <8 x i16>, ptr %i.ans, align 2, !tbaa !77
  %i.ant = add <8 x i16> %wide.load524, %wide.load522
  %i.anu = add <8 x i16> %wide.load525, %wide.load523
  %i.anv = getelementptr inbounds nuw [2 x i8], ptr %i.amx, i64 %index521 ; 2 uses
  %i.anw = getelementptr inbounds nuw i8, ptr %i.anv, i64 16
  %wide.load526 = load <8 x i16>, ptr %i.anv, align 2, !tbaa !77
  %wide.load527 = load <8 x i16>, ptr %i.anw, align 2, !tbaa !77
  %i.anx = sub <8 x i16> %i.ant, %wide.load526
  %i.any = sub <8 x i16> %i.anu, %wide.load527
  %i.anz = getelementptr inbounds nuw [2 x i8], ptr %i.vc, i64 %index521 ; 2 uses
  %i.aoa = getelementptr inbounds nuw i8, ptr %i.anz, i64 16
  store <8 x i16> %i.anx, ptr %i.anz, align 2, !tbaa !77
  store <8 x i16> %i.any, ptr %i.aoa, align 2, !tbaa !77
  %index.next528 = add nuw i64 %index521, 16      ; 2 uses
  %i.aob = icmp eq i64 %index.next528, %n.vec519
  br i1 %i.aob, label %middle.block529, label %vector.body520, !llvm.loop !430

middle.block529:                                  ; preds = %vector.body520
  br i1 %cmp.n530, label %.loopexit988.i, label %vec.epilog.iter.check534

vec.epilog.iter.check534:                         ; preds = %middle.block529
  br i1 %min.epilog.iters.check535.not.not.a, label %.lr.ph.i86.preheader, label %vec.epilog.vector.body538.preheader, !prof !462

vec.epilog.vector.body538.preheader:              ; preds = %vector.main.loop.iter.check516, %vec.epilog.iter.check534
  %index539.ph = phi i64 [ 0, %vector.main.loop.iter.check516 ], [ %n.vec519, %vec.epilog.iter.check534 ]
  br label %vec.epilog.vector.body538

.lr.ph.i86.preheader:                             ; preds = %iter.check532, %vector.memcheck508, %vec.epilog.iter.check534
  %indvars.iv.i87.ph = phi i64 [ 0, %vector.memcheck508 ], [ %n.vec519, %vec.epilog.iter.check534 ], [ 0, %iter.check532 ]
  br label %.lr.ph.i86

vec.epilog.vector.body538:                        ; preds = %vec.epilog.vector.body538.preheader, %vec.epilog.vector.body538
  %index539 = phi i64 [ %index.next543, %vec.epilog.vector.body538 ], [ %index539.ph, %vec.epilog.vector.body538.preheader ] ; 5 uses
  %i.aoc = getelementptr inbounds nuw [2 x i8], ptr %i.and, i64 %index539
  %wide.load540 = load <8 x i16>, ptr %i.aoc, align 2, !tbaa !77
  %i.aod = getelementptr inbounds nuw [2 x i8], ptr %i.wl, i64 %index539
  %wide.load541 = load <8 x i16>, ptr %i.aod, align 2, !tbaa !77
  %i.aoe = add <8 x i16> %wide.load541, %wide.load540
  %i.aof = getelementptr inbounds nuw [2 x i8], ptr %i.amx, i64 %index539
  %wide.load542 = load <8 x i16>, ptr %i.aof, align 2, !tbaa !77
  %i.aog = sub <8 x i16> %i.aoe, %wide.load542
  %i.aoh = getelementptr inbounds nuw [2 x i8], ptr %i.vc, i64 %index539
  store <8 x i16> %i.aog, ptr %i.aoh, align 2, !tbaa !77
  %index.next543 = add nuw i64 %index539, 8       ; 2 uses
  %i.aoi = icmp eq i64 %index.next543, %48
  br i1 %i.aoi, label %.loopexit988.i, label %vec.epilog.vector.body538, !llvm.loop !431

.lr.ph.i86:                                       ; preds = %.lr.ph.i86, %.lr.ph.i86.preheader
  %indvars.iv.i87 = phi i64 [ %indvars.iv.i87.ph, %.lr.ph.i86.preheader ], [ %indvars.iv.next.i88.1, %.lr.ph.i86 ] ; 6 uses
  %i.aoj = getelementptr inbounds nuw [2 x i8], ptr %i.and, i64 %indvars.iv.i87
  %i.aok = load i16, ptr %i.aoj, align 2, !tbaa !77
  %i.aol = getelementptr inbounds nuw [2 x i8], ptr %i.wl, i64 %indvars.iv.i87
  %i.aom = load i16, ptr %i.aol, align 2, !tbaa !77
  %i.aon = add i16 %i.aom, %i.aok
  %i.aoo = getelementptr inbounds nuw [2 x i8], ptr %i.amx, i64 %indvars.iv.i87
  %i.aop = load i16, ptr %i.aoo, align 2, !tbaa !77
  %i.aoq = sub i16 %i.aon, %i.aop
  %i.aor = getelementptr inbounds nuw [2 x i8], ptr %i.vc, i64 %indvars.iv.i87
  store i16 %i.aoq, ptr %i.aor, align 2, !tbaa !77
  %indvars.iv.next.i88 = or disjoint i64 %indvars.iv.i87, 1 ; 4 uses
  %i.aos = getelementptr inbounds nuw [2 x i8], ptr %i.and, i64 %indvars.iv.next.i88
  %i.aot = load i16, ptr %i.aos, align 2, !tbaa !77
  %i.aou = getelementptr inbounds nuw [2 x i8], ptr %i.wl, i64 %indvars.iv.next.i88
  %i.aov = load i16, ptr %i.aou, align 2, !tbaa !77
  %i.aow = add i16 %i.aov, %i.aot
  %i.aox = getelementptr inbounds nuw [2 x i8], ptr %i.amx, i64 %indvars.iv.next.i88
  %i.aoy = load i16, ptr %i.aox, align 2, !tbaa !77
  %i.aoz = sub i16 %i.aow, %i.aoy
  %i.apa = getelementptr inbounds nuw [2 x i8], ptr %i.vc, i64 %indvars.iv.next.i88
  store i16 %i.aoz, ptr %i.apa, align 2, !tbaa !77
  %indvars.iv.next.i88.1 = add nuw nsw i64 %indvars.iv.i87, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i88.1, %wide.trip.count.i
  br i1 %exitcond.not.i.1, label %.loopexit988.i, label %.lr.ph.i86, !llvm.loop !432

.lr.ph1005.i:                                     ; preds = %.lr.ph1005.i, %.lr.ph1005.i.preheader
  %indvars.iv1090.i = phi i64 [ %indvars.iv1090.i.ph, %.lr.ph1005.i.preheader ], [ %indvars.iv.next1091.i.3, %.lr.ph1005.i ] ; 6 uses
  %i.apb = getelementptr inbounds nuw [2 x i8], ptr %i.vc, i64 %indvars.iv1090.i ; 2 uses
  %i.apc = load i16, ptr %i.apb, align 2, !tbaa !77
  %i.apd = getelementptr inbounds nuw [2 x i8], ptr %i.wl, i64 %indvars.iv1090.i
  %i.ape = load i16, ptr %i.apd, align 2, !tbaa !77
  %i.apf = add i16 %i.ape, %i.apc
  store i16 %i.apf, ptr %i.apb, align 2, !tbaa !77
  %indvars.iv.next1091.i = or disjoint i64 %indvars.iv1090.i, 1 ; 2 uses
  %i.apg = getelementptr inbounds nuw [2 x i8], ptr %i.vc, i64 %indvars.iv.next1091.i ; 2 uses
  %i.aph = load i16, ptr %i.apg, align 2, !tbaa !77
  %i.api = getelementptr inbounds nuw [2 x i8], ptr %i.wl, i64 %indvars.iv.next1091.i
  %i.apj = load i16, ptr %i.api, align 2, !tbaa !77
  %i.apk = add i16 %i.apj, %i.aph
  store i16 %i.apk, ptr %i.apg, align 2, !tbaa !77
  %indvars.iv.next1091.i.1 = or disjoint i64 %indvars.iv1090.i, 2 ; 2 uses
  %i.apl = getelementptr inbounds nuw [2 x i8], ptr %i.vc, i64 %indvars.iv.next1091.i.1 ; 2 uses
  %i.apm = load i16, ptr %i.apl, align 2, !tbaa !77
  %i.apn = getelementptr inbounds nuw [2 x i8], ptr %i.wl, i64 %indvars.iv.next1091.i.1
  %i.apo = load i16, ptr %i.apn, align 2, !tbaa !77
  %i.app = add i16 %i.apo, %i.apm
  store i16 %i.app, ptr %i.apl, align 2, !tbaa !77
  %indvars.iv.next1091.i.2 = or disjoint i64 %indvars.iv1090.i, 3 ; 2 uses
  %i.apq = getelementptr inbounds nuw [2 x i8], ptr %i.vc, i64 %indvars.iv.next1091.i.2 ; 2 uses
  %i.apr = load i16, ptr %i.apq, align 2, !tbaa !77
  %i.aps = getelementptr inbounds nuw [2 x i8], ptr %i.wl, i64 %indvars.iv.next1091.i.2
  %i.apt = load i16, ptr %i.aps, align 2, !tbaa !77
  %i.apu = add i16 %i.apt, %i.apr
  store i16 %i.apu, ptr %i.apq, align 2, !tbaa !77
  %indvars.iv.next1091.i.3 = add nuw nsw i64 %indvars.iv1090.i, 4 ; 2 uses
  %exitcond1094.not.i.3 = icmp eq i64 %indvars.iv.next1091.i.3, %wide.trip.count.i
  br i1 %exitcond1094.not.i.3, label %.loopexit988.i, label %.lr.ph1005.i, !llvm.loop !433

.loopexit988.i:                                   ; preds = %vec.epilog.vector.body538, %.lr.ph.i86, %vec.epilog.vector.body500, %.lr.ph1005.i, %._crit_edge1018.i, %._crit_edge1027.i, %middle.block529, %middle.block491, %._crit_edge1012.thread.i, %_ZNK2cv10BufferSGBM7getCBufEi.exit651.i, %.preheader991.i.a, %.preheader987.thread.i, %.preheader989.i, %_ZNK2cv10BufferSGBM7getCBufEi.exit639.i
  %i.apv = phi i64 [ %.pre1179.i, %._crit_edge1012.thread.i ], [ %.pre1179.i, %_ZNK2cv10BufferSGBM7getCBufEi.exit639.i ], [ %i.we, %middle.block529 ], [ %.pre1179.i, %.preheader987.thread.i ], [ %i.we, %_ZNK2cv10BufferSGBM7getCBufEi.exit651.i ], [ %i.we, %.preheader991.i.a ], [ %.pre1179.i, %.preheader989.i ], [ %i.we, %.lr.ph.i86 ], [ %i.we, %middle.block491 ], [ %.pre1179.i, %._crit_edge1027.i ], [ %.pre1179.i, %._crit_edge1018.i ], [ %i.we, %.lr.ph1005.i ], [ %i.we, %vec.epilog.vector.body500 ], [ %i.we, %vec.epilog.vector.body538 ]
  %i.apw = phi ptr [ %.pre.i, %._crit_edge1012.thread.i ], [ %.pre.i, %_ZNK2cv10BufferSGBM7getCBufEi.exit639.i ], [ %i.wf, %middle.block529 ], [ %.pre.i, %.preheader987.thread.i ], [ %i.wf, %_ZNK2cv10BufferSGBM7getCBufEi.exit651.i ], [ %i.wf, %.preheader991.i.a ], [ %.pre.i, %.preheader989.i ], [ %i.wf, %.lr.ph.i86 ], [ %i.wf, %middle.block491 ], [ %.pre.i, %._crit_edge1027.i ], [ %.pre.i, %._crit_edge1018.i ], [ %i.wf, %.lr.ph1005.i ], [ %i.wf, %vec.epilog.vector.body500 ], [ %i.wf, %vec.epilog.vector.body538 ]
  %i.apx = add i32 %storemerge1031.i, 1           ; 2 uses
  %exitcond1130.not.i = icmp eq i32 %i.apx, %indvars.iv1128.i
  br i1 %exitcond1130.not.i, label %._crit_edge1034.loopexit.i, label %bb.bw, !llvm.loop !434

._crit_edge1034.loopexit.i:                       ; preds = %.loopexit988.i
  %.pre1181.i = load ptr, ptr %i.np, align 8, !tbaa !170
  %.pre1182.i = load i8, ptr %i.no, align 8, !tbaa !169, !range !69
  %.pre1183.i = load i64, ptr %i.mp, align 8      ; 2 uses
  %.pre1184.i = trunc nuw i8 %.pre1182.i to i1
  %.pre1185.i = mul i64 %.pre1183.i, %indvars.iv1166.i
  %.pre1187.i = select i1 %.pre1184.i, i64 %.pre1185.i, i64 0
  br label %._crit_edge1034.i

._crit_edge1034.i:                                ; preds = %._crit_edge1034.loopexit.i, %bb.bv
  %.pre-phi1188.i = phi i64 [ %.pre1187.i, %._crit_edge1034.loopexit.i ], [ %i.vb, %bb.bv ]
  %i.apy = phi i64 [ %.pre1183.i, %._crit_edge1034.loopexit.i ], [ %i.uz, %bb.bv ]
  %i.apz = phi ptr [ %.pre1181.i, %._crit_edge1034.loopexit.i ], [ %i.vd, %bb.bv ]
  %i.aqa = getelementptr inbounds nuw [2 x i8], ptr %i.apz, i64 %.pre-phi1188.i
  %i.aqb = shl i64 %i.apy, 1
  call void @llvm.memset.p0.i64(ptr align 2 %i.aqa, i8 0, i64 %i.aqb, i1 false)
  br label %bb.ca

bb.ca:                                            ; preds = %._crit_edge1034.i, %bb.bu
  br i1 %.not5791039.i, label %._crit_edge1043.split.us.i, label %.lr.ph1042.split.us.i

.lr.ph1042.split.us.i:                            ; preds = %bb.ca
  %i.aqc = load i64, ptr %i.nf, align 8           ; 2 uses
  %i.aqd = load i8, ptr %i.nh, align 2
  %i.aqe = load ptr, ptr %i.ng, align 8           ; 2 uses
  %i.aqf = xor i8 %.05481077.i, 1
  %i.aqg = zext nneg i8 %i.aqf to i64             ; 2 uses
  %i.aqh = getelementptr inbounds nuw [8 x i8], ptr %i.aqe, i64 %i.aqg
  %i.aqi = zext nneg i8 %.05481077.i to i64       ; 2 uses
  %i.aqj = getelementptr inbounds nuw [8 x i8], ptr %i.aqe, i64 %i.aqi
  %i.aqk = load i8, ptr %i.ne, align 1
  %i.aql = zext i8 %i.aqk to i64                  ; 3 uses
  %i.aqm = mul i64 %i.aqc, %i.aql                 ; 2 uses
  %i.aqn = load ptr, ptr %i.ni, align 8           ; 2 uses
  %i.aqo = getelementptr inbounds nuw [8 x i8], ptr %i.aqn, i64 %i.aqg
  %i.aqp = getelementptr inbounds nuw [8 x i8], ptr %i.aqn, i64 %i.aqi
  %i.aqq = load ptr, ptr %i.aqp, align 8, !tbaa !95
  %i.aqr = getelementptr inbounds nuw [2 x i8], ptr %i.aqq, i64 %i.aql ; 2 uses
  %i.aqs = load ptr, ptr %i.aqo, align 8, !tbaa !95
  %i.aqt = getelementptr inbounds nuw [2 x i8], ptr %i.aqs, i64 %i.aql ; 3 uses
  %i.aqu = load ptr, ptr %i.aqj, align 8, !tbaa !95
  %i.aqv = getelementptr inbounds nuw [2 x i8], ptr %i.aqu, i64 %i.aqm ; 2 uses
  %i.aqw = load ptr, ptr %i.aqh, align 8, !tbaa !95
  %i.aqx = getelementptr inbounds nuw [2 x i8], ptr %i.aqw, i64 %i.aqm ; 3 uses
  %i.aqy = zext i8 %i.aqd to i64                  ; 4 uses
  %i.aqz = shl i64 %i.aqc, 32
  %i.ara = ashr exact i64 %i.aqz, 32              ; 5 uses
  br label %bb.cb

bb.cb:                                            ; preds = %._crit_edge1038.us.i, %.lr.ph1042.split.us.i
  %indvars.iv1136.i = phi i64 [ %indvars.iv.next1137.i, %._crit_edge1038.us.i ], [ %i.uf, %.lr.ph1042.split.us.i ] ; 6 uses
  %i.arb = sub nsw i64 %indvars.iv1136.i, %i.ug
  %i.arc = mul nsw i64 %i.arb, %i.aqy             ; 2 uses
  %i.ard = getelementptr inbounds [2 x i8], ptr %i.aqr, i64 %i.arc
  %i.are = load i16, ptr %i.ard, align 2, !tbaa !77
  %i.arf = sext i16 %i.are to i32
  %i.arg = add nsw i32 %.sroa.speculated938.i, %i.arf ; 2 uses
  %i.arh = add nsw i64 %indvars.iv1136.i, -1
  %i.ari = mul nsw i64 %i.arh, %i.aqy
  %i.arj = add nsw i64 %i.ari, 1                  ; 2 uses
  %i.ark = getelementptr inbounds [2 x i8], ptr %i.aqt, i64 %i.arj
  %i.arl = load i16, ptr %i.ark, align 2, !tbaa !77
  %i.arm = sext i16 %i.arl to i32
  %i.arn = add nsw i32 %.sroa.speculated938.i, %i.arm ; 2 uses
  %i.aro = mul nsw i64 %indvars.iv1136.i, %i.aqy  ; 3 uses
  %i.arp = add nsw i64 %i.aro, 2                  ; 2 uses
  %i.arq = getelementptr inbounds [2 x i8], ptr %i.aqt, i64 %i.arp
  %i.arr = load i16, ptr %i.arq, align 2, !tbaa !77
  %i.ars = sext i16 %i.arr to i32
  %i.art = add nsw i32 %.sroa.speculated938.i, %i.ars ; 2 uses
  %i.aru = add nsw i64 %indvars.iv1136.i, 1
  %i.arv = mul nsw i64 %i.aru, %i.aqy
  %i.arw = add nsw i64 %i.arv, 3                  ; 2 uses
  %i.arx = getelementptr inbounds [2 x i8], ptr %i.aqt, i64 %i.arw
  %i.ary = load i16, ptr %i.arx, align 2, !tbaa !77
  %i.arz = sext i16 %i.ary to i32
  %i.asa = add nsw i32 %.sroa.speculated938.i, %i.arz ; 2 uses
  %i.asb = mul nsw i64 %i.arc, %i.ara
  %i.asc = getelementptr inbounds [2 x i8], ptr %i.aqv, i64 %i.asb ; 5 uses
  %i.asd = mul nsw i64 %i.arj, %i.ara
  %i.ase = getelementptr inbounds [2 x i8], ptr %i.aqx, i64 %i.asd ; 5 uses
  %i.asf = mul nsw i64 %i.arp, %i.ara
  %i.asg = getelementptr inbounds [2 x i8], ptr %i.aqx, i64 %i.asf ; 5 uses
  %i.ash = mul nsw i64 %i.arw, %i.ara
  %i.asi = getelementptr inbounds [2 x i8], ptr %i.aqx, i64 %i.ash ; 5 uses
  %i.asj = getelementptr inbounds [2 x i8], ptr %i.asc, i64 %i.lk
  store i16 32767, ptr %i.asj, align 2, !tbaa !77
  %i.ask = getelementptr inbounds i8, ptr %i.asc, i64 -2
  store i16 32767, ptr %i.ask, align 2, !tbaa !77
  %i.asl = getelementptr inbounds [2 x i8], ptr %i.ase, i64 %i.lk
  store i16 32767, ptr %i.asl, align 2, !tbaa !77
  %i.asm = getelementptr inbounds i8, ptr %i.ase, i64 -2
  store i16 32767, ptr %i.asm, align 2, !tbaa !77
  %i.asn = getelementptr inbounds [2 x i8], ptr %i.asg, i64 %i.lk
  store i16 32767, ptr %i.asn, align 2, !tbaa !77
  %i.aso = getelementptr inbounds i8, ptr %i.asg, i64 -2
  store i16 32767, ptr %i.aso, align 2, !tbaa !77
  %i.asp = getelementptr inbounds [2 x i8], ptr %i.asi, i64 %i.lk
  store i16 32767, ptr %i.asp, align 2, !tbaa !77
  %i.asq = getelementptr inbounds i8, ptr %i.asi, i64 -2
  store i16 32767, ptr %i.asq, align 2, !tbaa !77
  %i.asr = mul nsw i64 %i.aro, %i.ara
  %i.ass = getelementptr inbounds [2 x i8], ptr %i.aqv, i64 %i.asr ; 4 uses
  %i.ast = mul nsw i64 %indvars.iv1136.i, %i.mf   ; 2 uses
  %i.asu = getelementptr inbounds [2 x i8], ptr %i.vc, i64 %i.ast
  %i.asv = getelementptr inbounds [2 x i8], ptr %i.ve, i64 %i.ast
  %i.asw = getelementptr inbounds [2 x i8], ptr %i.aqr, i64 %i.aro ; 6 uses
  %i.asx = getelementptr inbounds nuw i8, ptr %i.asw, i64 2 ; 2 uses
  %i.asy = getelementptr inbounds nuw i8, ptr %i.asw, i64 4 ; 2 uses
  %i.asz = getelementptr inbounds nuw i8, ptr %i.asw, i64 6 ; 2 uses
  store <4 x i16> splat (i16 32767), ptr %i.asw, align 2, !tbaa !77
  br i1 %i.nz, label %.lr.ph1037.us.i, label %._crit_edge1038.us.i

bb.cc:                                            ; preds = %.lr.ph1037.us.i, %bb.cc
  %indvars.iv1131.i = phi i64 [ 0, %.lr.ph1037.us.i ], [ %indvars.iv.next1132.i, %bb.cc ] ; 12 uses
  %i.ata = getelementptr inbounds nuw [2 x i8], ptr %i.asu, i64 %indvars.iv1131.i
  %i.atb = load i16, ptr %i.ata, align 2, !tbaa !77
  %i.atc = sext i16 %i.atb to i32                 ; 4 uses
  %i.atd = getelementptr inbounds nuw [2 x i8], ptr %i.asv, i64 %indvars.iv1131.i ; 2 uses
  %i.ate = load i16, ptr %i.atd, align 2, !tbaa !77
  %i.atf = sext i16 %i.ate to i32
  %i.atg = getelementptr inbounds nuw [2 x i8], ptr %i.asc, i64 %indvars.iv1131.i
  %i.ath = load i16, ptr %i.atg, align 2, !tbaa !77
  %i.ati = sext i16 %i.ath to i32
  %i.atj = add nsw i64 %indvars.iv1131.i, -1      ; 4 uses
  %i.atk = getelementptr inbounds [2 x i8], ptr %i.asc, i64 %i.atj
  %i.atl = load i16, ptr %i.atk, align 2, !tbaa !77
  %i.atm = sext i16 %i.atl to i32
  %i.atn = add nsw i32 %i.ky, %i.atm
  %indvars.iv.next1132.i = add nuw nsw i64 %indvars.iv1131.i, 1 ; 6 uses
  %i.ato = getelementptr inbounds nuw [2 x i8], ptr %i.asc, i64 %indvars.iv.next1132.i
  %i.atp = load i16, ptr %i.ato, align 2, !tbaa !77
  %i.atq = sext i16 %i.atp to i32
  %i.atr = add nsw i32 %i.ky, %i.atq
  %i.ats = call i32 @llvm.smin.i32(i32 %i.arg, i32 %i.atr)
  %i.att = call i32 @llvm.smin.i32(i32 %i.ats, i32 %i.atn)
  %.sroa.speculated850.us.i = call i32 @llvm.smin.i32(i32 %i.att, i32 %i.ati)
  %i.atu = sub i32 %i.atc, %i.arg
  %i.atv = add i32 %.sroa.speculated850.us.i, %i.atu ; 2 uses
  %i.atw = trunc i32 %i.atv to i16                ; 2 uses
  %i.atx = getelementptr inbounds nuw [2 x i8], ptr %i.ass, i64 %indvars.iv1131.i
  store i16 %i.atw, ptr %i.atx, align 2, !tbaa !77
  %i.aty = load i16, ptr %i.asw, align 2, !tbaa !77
  %.sroa.speculated842.us.i = call i16 @llvm.smin.i16(i16 %i.aty, i16 %i.atw)
  store i16 %.sroa.speculated842.us.i, ptr %i.asw, align 2, !tbaa !77
  %i.atz = add nsw i32 %i.atv, %i.atf
  %i.aua = getelementptr inbounds nuw [2 x i8], ptr %i.ase, i64 %indvars.iv1131.i
  %i.aub = load i16, ptr %i.aua, align 2, !tbaa !77
  %i.auc = sext i16 %i.aub to i32
  %i.aud = getelementptr inbounds [2 x i8], ptr %i.ase, i64 %i.atj
  %i.aue = load i16, ptr %i.aud, align 2, !tbaa !77
  %i.auf = sext i16 %i.aue to i32
  %i.aug = add nsw i32 %i.ky, %i.auf
  %i.auh = getelementptr inbounds nuw [2 x i8], ptr %i.ase, i64 %indvars.iv.next1132.i
  %i.aui = load i16, ptr %i.auh, align 2, !tbaa !77
  %i.auj = sext i16 %i.aui to i32
  %i.auk = add nsw i32 %i.ky, %i.auj
  %i.aul = call i32 @llvm.smin.i32(i32 %i.arn, i32 %i.auk)
  %i.aum = call i32 @llvm.smin.i32(i32 %i.aul, i32 %i.aug)
  %.sroa.speculated836.us.i = call i32 @llvm.smin.i32(i32 %i.aum, i32 %i.auc)
  %i.aun = sub i32 %i.atc, %i.arn
  %i.auo = add i32 %.sroa.speculated836.us.i, %i.aun ; 2 uses
  %i.aup = trunc i32 %i.auo to i16                ; 2 uses
  %gep1242.i = getelementptr [2 x i8], ptr %invariant.gep1241.i, i64 %indvars.iv1131.i
  store i16 %i.aup, ptr %gep1242.i, align 2, !tbaa !77
  %i.auq = load i16, ptr %i.asx, align 2, !tbaa !77
  %.sroa.speculated828.us.i = call i16 @llvm.smin.i16(i16 %i.auq, i16 %i.aup)
  store i16 %.sroa.speculated828.us.i, ptr %i.asx, align 2, !tbaa !77
  %i.aur = add nsw i32 %i.atz, %i.auo
  %i.aus = getelementptr inbounds nuw [2 x i8], ptr %i.asg, i64 %indvars.iv1131.i
  %i.aut = load i16, ptr %i.aus, align 2, !tbaa !77
  %i.auu = sext i16 %i.aut to i32
  %i.auv = getelementptr inbounds [2 x i8], ptr %i.asg, i64 %i.atj
  %i.auw = load i16, ptr %i.auv, align 2, !tbaa !77
  %i.aux = sext i16 %i.auw to i32
  %i.auy = add nsw i32 %i.ky, %i.aux
  %i.auz = getelementptr inbounds nuw [2 x i8], ptr %i.asg, i64 %indvars.iv.next1132.i
  %i.ava = load i16, ptr %i.auz, align 2, !tbaa !77
  %i.avb = sext i16 %i.ava to i32
  %i.avc = add nsw i32 %i.ky, %i.avb
  %i.avd = call i32 @llvm.smin.i32(i32 %i.art, i32 %i.avc)
  %i.ave = call i32 @llvm.smin.i32(i32 %i.avd, i32 %i.auy)
  %.sroa.speculated822.us.i = call i32 @llvm.smin.i32(i32 %i.ave, i32 %i.auu)
  %i.avf = sub i32 %i.atc, %i.art
  %i.avg = add i32 %.sroa.speculated822.us.i, %i.avf ; 2 uses
  %i.avh = trunc i32 %i.avg to i16                ; 2 uses
  %gep1244.i = getelementptr [2 x i8], ptr %invariant.gep1243.i, i64 %indvars.iv1131.i
  store i16 %i.avh, ptr %gep1244.i, align 2, !tbaa !77
  %i.avi = load i16, ptr %i.asy, align 2, !tbaa !77
  %.sroa.speculated814.us.i = call i16 @llvm.smin.i16(i16 %i.avi, i16 %i.avh)
  store i16 %.sroa.speculated814.us.i, ptr %i.asy, align 2, !tbaa !77
  %i.avj = add nsw i32 %i.aur, %i.avg
  %i.avk = getelementptr inbounds nuw [2 x i8], ptr %i.asi, i64 %indvars.iv1131.i
  %i.avl = load i16, ptr %i.avk, align 2, !tbaa !77
  %i.avm = sext i16 %i.avl to i32
  %i.avn = getelementptr inbounds [2 x i8], ptr %i.asi, i64 %i.atj
end_hunk_1
