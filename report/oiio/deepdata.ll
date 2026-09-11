Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/deepdata?download=true
inline.NumInlined: 2083
inline.NumDeleted: 1014
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN11OpenImageIO4v3_18DeepData5splitElf:bb.a
  br i1 %.not.i154, label %_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii.exit162, label %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i155

_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i155: ; preds = %_ZNK11OpenImageIO4v3_18DeepData8data_ptrElii.exit.i153
  %i.ie = load ptr, ptr %i.gx, align 8, !tbaa !19
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %i.ie, i64 %indvars.iv180
  %i.ig = load i64, ptr %i.if, align 4            ; 2 uses
  %.sroa.01.0.extract.trunc.i156 = trunc i64 %i.ig to i8
  switch i8 %.sroa.01.0.extract.trunc.i156, label %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit24.i161 [
    i8 11, label %bb.am
    i8 10, label %bb.an
    i8 6, label %bb.at
    i8 2, label %bb.au
    i8 3, label %bb.av
    i8 4, label %bb.aw
    i8 5, label %bb.ax
    i8 7, label %bb.ay
    i8 8, label %bb.az
    i8 9, label %bb.ba
  ]

bb.am:                                            ; preds = %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i155
  %i.ih = load float, ptr %i.id, align 4, !tbaa !111
  br label %_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii.exit162

bb.an:                                            ; preds = %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i155
  %i.ii = load i16, ptr %i.id, align 2, !tbaa !114 ; 2 uses
  %i.ij = zext i16 %i.ii to i32
  %i.ik = shl nuw nsw i32 %i.ij, 13
  %i.il = and i32 %i.ik, 268427264                ; 6 uses
  %.signext.i.i.i157 = sext i16 %i.ii to i32
  %i.im = and i32 %.signext.i.i.i157, -2147483648 ; 3 uses
  %i.in = icmp samesign ugt i32 %i.il, 8388607
  br i1 %i.in, label %bb.ao, label %bb.ar, !prof !108

bb.ao:                                            ; preds = %bb.an
  %i.io = or disjoint i32 %i.il, %i.im            ; 2 uses
  %i.ip = icmp samesign ult i32 %i.il, 260046848
  br i1 %i.ip, label %bb.ap, label %bb.aq, !prof !108

bb.ap:                                            ; preds = %bb.ao
  %i.iq = add nuw nsw i32 %i.io, 939524096
  br label %_ZNK9Imath_3_14halfcvfEv.exit.i159

bb.aq:                                            ; preds = %bb.ao
  %i.ir = or i32 %i.io, 2139095040
  br label %_ZNK9Imath_3_14halfcvfEv.exit.i159

bb.ar:                                            ; preds = %bb.an
  %.not.i.i.i158 = icmp eq i32 %i.il, 0
  br i1 %.not.i.i.i158, label %_ZNK9Imath_3_14halfcvfEv.exit.i159, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.is = tail call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.il, i1 true)
  %i.it = add nsw i32 %i.is, -8                   ; 2 uses
  %i.iu = shl i32 %i.il, %i.it
  %i.iv = or i32 %i.im, %i.iu
  %i.iw = or i32 %i.iv, 947912704
  %i.ix = shl nuw nsw i32 %i.it, 23
  %i.iy = sub nuw i32 %i.iw, %i.ix
  br label %_ZNK9Imath_3_14halfcvfEv.exit.i159

_ZNK9Imath_3_14halfcvfEv.exit.i159:               ; preds = %bb.as, %bb.ar, %bb.aq, %bb.ap
  %.sroa.0.0.i.i.i160 = phi i32 [ %i.iq, %bb.ap ], [ %i.ir, %bb.aq ], [ %i.iy, %bb.as ], [ %i.im, %bb.ar ]
  %i.iz = bitcast i32 %.sroa.0.0.i.i.i160 to float
  br label %_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii.exit162

bb.at:                                            ; preds = %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i155
  %i.ja = load i32, ptr %i.id, align 4, !tbaa !14
  %i.jb = uitofp i32 %i.ja to float
  %i.jc = fmul nnan float %i.jb, f0x2F800000
  br label %_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii.exit162

bb.au:                                            ; preds = %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i155
  %i.jd = load i8, ptr %i.id, align 1, !tbaa !47
  %i.je = uitofp i8 %i.jd to float
  %i.jf = fmul nnan float %i.je, f0x3B808081
  br label %_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii.exit162

bb.av:                                            ; preds = %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i155
  %i.jg = load i8, ptr %i.id, align 1, !tbaa !47
  %i.jh = sitofp i8 %i.jg to float
  %i.ji = fmul nnan float %i.jh, f0x3C010204
  br label %_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii.exit162

bb.aw:                                            ; preds = %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i155
  %i.jj = load i16, ptr %i.id, align 2, !tbaa !115
  %i.jk = uitofp i16 %i.jj to float
  %i.jl = fmul nnan float %i.jk, f0x37800080
  br label %_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii.exit162

bb.ax:                                            ; preds = %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i155
  %i.jm = load i16, ptr %i.id, align 2, !tbaa !115
  %i.jn = sitofp i16 %i.jm to float
  %i.jo = fmul nnan float %i.jn, f0x38000100
  br label %_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii.exit162

bb.ay:                                            ; preds = %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i155
  %i.jp = load i32, ptr %i.id, align 4, !tbaa !14
  %i.jq = sitofp i32 %i.jp to float
  %i.jr = fmul nnan float %i.jq, f0x30000000
  br label %_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii.exit162

bb.az:                                            ; preds = %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i155
  %i.js = load i64, ptr %i.id, align 8, !tbaa !117
  %i.jt = uitofp i64 %i.js to float
  %i.ju = fmul nnan float %i.jt, f0x1F800000
  br label %_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii.exit162

bb.ba:                                            ; preds = %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i155
  %i.jv = load i64, ptr %i.id, align 8, !tbaa !117
  %i.jw = sitofp i64 %i.jv to float
  %i.jx = fmul nnan float %i.jw, f0x20000000
  br label %_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii.exit162

_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit24.i161: ; preds = %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i155
  %i.jy = trunc i64 %i.ig to i32
  %i.jz = and i32 %i.jy, 255
  %i.ka = load ptr, ptr @stderr, align 8, !tbaa !86
  %i.kb = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ka, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 692, ptr noundef nonnull @__FUNCTION__._ZNK11OpenImageIO4v3_18DeepData10deep_valueElii, ptr noundef nonnull @.str.11, i32 noundef %i.jz) #31 ; 0 uses
  br label %_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii.exit162

_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii.exit162: ; preds = %bb.aj, %bb.ak, %bb.al, %_ZNK11OpenImageIO4v3_18DeepData8data_ptrElii.exit.i153, %bb.am, %_ZNK9Imath_3_14halfcvfEv.exit.i159, %bb.at, %bb.au, %bb.av, %bb.aw, %bb.ax, %bb.ay, %bb.az, %bb.ba, %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit24.i161
  %.0.i150 = phi float [ 0.000000e+00, %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit24.i161 ], [ %i.ih, %bb.am ], [ %i.iz, %_ZNK9Imath_3_14halfcvfEv.exit.i159 ], [ %i.jc, %bb.at ], [ %i.jf, %bb.au ], [ %i.ji, %bb.av ], [ %i.jl, %bb.aw ], [ %i.jo, %bb.ax ], [ %i.jr, %bb.ay ], [ %i.ju, %bb.az ], [ %i.jx, %bb.ba ], [ 0.000000e+00, %_ZNK11OpenImageIO4v3_18DeepData8data_ptrElii.exit.i153 ], [ 0.000000e+00, %bb.al ], [ 0.000000e+00, %bb.ak ], [ 0.000000e+00, %bb.aj ] ; 2 uses
  %.inv = fcmp oge float %.0.i150, 0.000000e+00
  %.0.i = select i1 %.inv, float %.0.i150, float 0.000000e+00 ; 2 uses
  %i.kc = fcmp ogt float %.0.i, 1.000000e+00
  %.1.i = select i1 %i.kc, float 1.000000e+00, float %.0.i ; 4 uses
  %i.kd = fcmp oeq float %.1.i, 1.000000e+00
  br i1 %i.kd, label %bb.be, label %bb.bb

bb.bb:                                            ; preds = %_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii.exit162
  %i.ke = fcmp ogt float %.1.i, f0x00800000
  br i1 %i.ke, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.kf = fneg float %.1.i
  %i.kg = tail call noundef float @log1pf(float noundef %i.kf) #33
  %i.kh = insertelement <2 x float> poison, float %i.kg, i64 0
  %i.ki = shufflevector <2 x float> %i.kh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kj = fmul <2 x float> %i.cj, %i.ki           ; 2 uses
  %i.kk = extractelement <2 x float> %i.kj, i64 0
  %i.kl = tail call noundef float @expm1f(float noundef %i.kk) #33
  %i.km = fneg float %i.kl
  %i.kn = extractelement <2 x float> %i.kj, i64 1
  %i.ko = tail call noundef float @expm1f(float noundef %i.kn) #33
  %i.kp = fneg float %i.ko
  %i.kq = trunc nuw nsw i64 %indvars.iv180 to i32 ; 2 uses
  tail call void @_ZN11OpenImageIO4v3_18DeepData14set_deep_valueEliif(ptr noundef nonnull align 8 dereferenceable(20) %0, i64 noundef %1, i32 noundef %i.kq, i32 noundef %.0127175, float noundef %i.km)
  tail call void @_ZN11OpenImageIO4v3_18DeepData14set_deep_valueEliif(ptr noundef nonnull align 8 dereferenceable(20) %0, i64 noundef %1, i32 noundef %i.kq, i32 noundef %i.z, float noundef %i.kp)
  br label %bb.be

bb.bd:                                            ; preds = %bb.bb
  %i.kr = trunc nuw nsw i64 %indvars.iv180 to i32 ; 2 uses
  %i.ks = insertelement <2 x float> poison, float %.1.i, i64 0
  %i.kt = shufflevector <2 x float> %i.ks, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ku = fmul <2 x float> %i.cj, %i.kt           ; 2 uses
  %i.kv = extractelement <2 x float> %i.ku, i64 0
  tail call void @_ZN11OpenImageIO4v3_18DeepData14set_deep_valueEliif(ptr noundef nonnull align 8 dereferenceable(20) %0, i64 noundef %1, i32 noundef %i.kr, i32 noundef %.0127175, float noundef %i.kv)
  %i.kw = extractelement <2 x float> %i.ku, i64 1
  tail call void @_ZN11OpenImageIO4v3_18DeepData14set_deep_valueEliif(ptr noundef nonnull align 8 dereferenceable(20) %0, i64 noundef %1, i32 noundef %i.kr, i32 noundef %i.z, float noundef %i.kw)
  br label %bb.be

bb.be:                                            ; preds = %_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii.exit162, %bb.bd, %bb.bc, %bb.ai
  %indvars.iv.next181 = add nuw nsw i64 %indvars.iv180, 1 ; 2 uses
  %exitcond184.not = icmp eq i64 %indvars.iv.next181, %wide.trip.count183
  br i1 %exitcond184.not, label %.loopexit, label %bb.ai, !llvm.loop !173

.loopexit:                                        ; preds = %bb.be, %bb.c, %_ZN11OpenImageIO4v3_18DeepData14insert_samplesElii.exit
  %.1 = phi i1 [ %.0124177, %bb.c ], [ true, %_ZN11OpenImageIO4v3_18DeepData14insert_samplesElii.exit ], [ true, %bb.be ] ; 2 uses
  %i.kx = load i64, ptr %i.j, align 8
  %.not.i = icmp slt i64 %1, %i.kx
  br i1 %.not.i, label %_ZNK11OpenImageIO4v3_18DeepData7samplesEl.exit, label %.critedge, !llvm.loop !174

.critedge:                                        ; preds = %_ZNK11OpenImageIO4v3_18DeepData7samplesEl.exit, %.loopexit, %bb.b, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ %.0124177, %_ZNK11OpenImageIO4v3_18DeepData7samplesEl.exit ], [ %.1, %.loopexit ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define void @_ZN11OpenImageIO4v3_18DeepData4sortEl(ptr noundef nonnull align 8 dereferenceable(20) %0, i64 noundef %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.OpenImageIO::v3_1::(anonymous namespace)::SampleComparator", align 8 ; 11 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !38     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  %i.c = load i32, ptr %i.b, align 8, !tbaa !91   ; 3 uses
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %_ZNK11OpenImageIO4v3_18DeepData7samplesEl.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp sgt i64 %1, -1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.g = load i64, ptr %i.f, align 8
  %.not.i = icmp slt i64 %1, %i.g
  %or.cond.i = select i1 %i.e, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %_ZNK11OpenImageIO4v3_18DeepData7samplesEl.exit, label %_ZNK11OpenImageIO4v3_18DeepData7samplesEl.exit.thread

_ZNK11OpenImageIO4v3_18DeepData7samplesEl.exit:   ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !54
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %1
  %i.k = load i32, ptr %i.j, align 4, !tbaa !14   ; 3 uses
  %i.l = icmp slt i32 %i.k, 2
  br i1 %i.l, label %_ZNK11OpenImageIO4v3_18DeepData7samplesEl.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZNK11OpenImageIO4v3_18DeepData7samplesEl.exit
  %i.m = zext nneg i32 %i.k to i64                ; 3 uses
  %i.n = shl nuw nsw i64 %i.m, 2                  ; 4 uses
  %i.o = alloca i8, i64 %i.n, align 16            ; 10 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.n ; 5 uses
  %i.q = add nsw i64 %i.n, -4                     ; 2 uses
  %i.r = lshr exact i64 %i.q, 2
  %i.s = add nuw nsw i64 %i.r, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.q, 28
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.c
  %n.vec = and i64 %i.s, 9223372036854775800      ; 4 uses
  %i.t = trunc i64 %n.vec to i32
  %i.u = shl i64 %n.vec, 2
  %i.v = getelementptr i8, ptr %i.o, i64 %i.u
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw nsw <4 x i32> %vec.ind, splat (i32 4)
  %i.w = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.o, i64 %i.w ; 2 uses
  %i.x = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %vec.ind, ptr %next.gep, align 16, !tbaa !14
  store <4 x i32> %step.add, ptr %i.x, align 16, !tbaa !14
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nuw nsw <4 x i32> %vec.ind, splat (i32 8)
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !175

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.s, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.c, %middle.block
  %.08.i.ph = phi i32 [ 0, %bb.c ], [ %i.t, %middle.block ]
  %.057.i.ph = phi ptr [ %i.o, %bb.c ], [ %i.v, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.08.i = phi i32 [ %i.z, %.lr.ph.i ], [ %.08.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.057.i = phi ptr [ %i.aa, %.lr.ph.i ], [ %.057.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  store i32 %.08.i, ptr %.057.i, align 4, !tbaa !14
  %i.z = add nuw nsw i32 %.08.i, 1
  %i.aa = getelementptr inbounds nuw i8, ptr %.057.i, i64 4 ; 2 uses
  %.not.i38 = icmp eq ptr %i.aa, %i.p
  br i1 %.not.i38, label %.loopexit, label %.lr.ph.i, !llvm.loop !176

.loopexit:                                        ; preds = %.lr.ph.i, %middle.block
  %i.ab = trunc i64 %1 to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr %0, ptr %2, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.ab, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 %i.c, ptr %.sroa.3.0..sroa_idx, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 %i.c, ptr %.sroa.4.0..sroa_idx, align 8
  %i.ac = add nuw nsw i64 %i.m, 1
  %i.ad = lshr i64 %i.ac, 1                       ; 5 uses
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.loopexit, %select.unfold.i.i.i.i
  %.010.i.i.i.i = phi i64 [ %i.ai, %select.unfold.i.i.i.i ], [ %i.ad, %.loopexit ] ; 8 uses
  %i.ae = shl nuw nsw i64 %.010.i.i.i.i, 2
  %i.af = call noalias noundef ptr @_ZnwmRKSt9nothrow_t(i64 noundef %i.ae, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #34 ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i.i, label %select.unfold.i.i.i.i, label %_ZNSt17_Temporary_bufferIPiiEC2ES0_l.exit.i.i

select.unfold.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i
  %i.ag = icmp eq i64 %.010.i.i.i.i, 1
  %i.ah = add nuw nsw i64 %.010.i.i.i.i, 1
  %i.ai = lshr i64 %i.ah, 1
  br i1 %i.ag, label %_ZNSt17_Temporary_bufferIPiiEC2ES0_l.exit.i.i.thread, label %.lr.ph.i.i.i.i, !llvm.loop !177

_ZNSt17_Temporary_bufferIPiiEC2ES0_l.exit.i.i:    ; preds = %.lr.ph.i.i.i.i
  %i.aj = icmp eq i64 %i.ad, %.010.i.i.i.i
  br i1 %i.aj, label %bb.d, label %bb.g, !prof !108

_ZNSt17_Temporary_bufferIPiiEC2ES0_l.exit.i.i.thread: ; preds = %select.unfold.i.i.i.i
  %i.ak = icmp eq i64 %i.ad, 0
  br i1 %i.ak, label %bb.d, label %bb.f, !prof !108

bb.d:                                             ; preds = %_ZNSt17_Temporary_bufferIPiiEC2ES0_l.exit.i.i.thread, %_ZNSt17_Temporary_bufferIPiiEC2ES0_l.exit.i.i
  %.sroa.5.0.i.i69 = phi i64 [ 0, %_ZNSt17_Temporary_bufferIPiiEC2ES0_l.exit.i.i.thread ], [ %.010.i.i.i.i, %_ZNSt17_Temporary_bufferIPiiEC2ES0_l.exit.i.i ]
  %.idx52 = shl nuw nsw i64 %i.ad, 2              ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx52 ; 3 uses
  call fastcc void @_ZSt24__merge_sort_with_bufferIPiS0_N9__gnu_cxx5__ops15_Iter_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEEEvT_S9_T0_T1_(ptr noundef nonnull %i.o, ptr noundef nonnull %i.al, ptr noundef %i.af, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter") align 8 %2)
  call fastcc void @_ZSt24__merge_sort_with_bufferIPiS0_N9__gnu_cxx5__ops15_Iter_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEEEvT_S9_T0_T1_(ptr noundef nonnull %i.al, ptr noundef nonnull %i.p, ptr noundef %i.af, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter") align 8 %2)
  %gepdiff = sub nsw i64 %i.n, %.idx52
  %i.am = ashr exact i64 %gepdiff, 2
  call fastcc void @_ZSt16__merge_adaptiveIPilS0_N9__gnu_cxx5__ops15_Iter_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEEEvT_S9_S9_T0_SA_T1_T2_(ptr noundef nonnull %i.o, ptr noundef nonnull %i.al, ptr noundef nonnull %i.p, i64 noundef %i.ad, i64 noundef %i.am, ptr noundef %i.af, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter") align 8 %2)
  br label %_ZSt11stable_sortIPiN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEvT_S5_T0_.exit

bb.e:                                             ; preds = %bb.g, %bb.f
  %.sroa.5.0.i.i6878 = phi i64 [ %.010.i.i.i.i, %bb.g ], [ 0, %bb.f ]
  %.sroa.12.0.i.i7075 = phi ptr [ %i.af, %bb.g ], [ null, %bb.f ]
  %i.an = landingpad { ptr, i32 }
          cleanup
  %i.ao = shl nuw nsw i64 %.sroa.5.0.i.i6878, 2
  call void @_ZdlPvm(ptr noundef %.sroa.12.0.i.i7075, i64 noundef %i.ao) #28
  resume { ptr, i32 } %i.an

bb.f:                                             ; preds = %_ZNSt17_Temporary_bufferIPiiEC2ES0_l.exit.i.i.thread
  invoke fastcc void @_ZSt21__inplace_stable_sortIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEEEvT_S9_T0_(ptr noundef nonnull %i.o, ptr noundef nonnull %i.p, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter") align 8 %2)
          to label %_ZSt11stable_sortIPiN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEvT_S5_T0_.exit unwind label %bb.e

bb.g:                                             ; preds = %_ZNSt17_Temporary_bufferIPiiEC2ES0_l.exit.i.i
  invoke fastcc void @_ZSt29__stable_sort_adaptive_resizeIPiS0_lN9__gnu_cxx5__ops15_Iter_comp_iterIN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEEEvT_S9_T0_T1_T2_(ptr noundef nonnull %i.o, ptr noundef nonnull %i.p, ptr noundef nonnull %i.af, i64 noundef %.010.i.i.i.i, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter") align 8 %2)
          to label %_ZSt11stable_sortIPiN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEvT_S5_T0_.exit unwind label %bb.e

_ZSt11stable_sortIPiN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEvT_S5_T0_.exit: ; preds = %bb.g, %bb.f, %bb.d
  %.sroa.12.0.i.i71 = phi ptr [ %i.af, %bb.g ], [ null, %bb.f ], [ %i.af, %bb.d ]
  %.sroa.5.0.i.i67 = phi i64 [ %.010.i.i.i.i, %bb.g ], [ 0, %bb.f ], [ %.sroa.5.0.i.i69, %bb.d ]
  %i.ap = shl nuw nsw i64 %.sroa.5.0.i.i67, 2
  call void @_ZdlPvm(ptr noundef %.sroa.12.0.i.i71, i64 noundef %i.ap) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.aq = load ptr, ptr %0, align 8, !tbaa !38    ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 216
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !89 ; 3 uses
  %i.at = mul i64 %i.as, %i.m                     ; 3 uses
  %.not = icmp eq i64 %i.at, 0
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZSt11stable_sortIPiN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEvT_S5_T0_.exit
  %i.au = alloca i8, i64 %i.at, align 16
  br label %bb.i

bb.i:                                             ; preds = %_ZSt11stable_sortIPiN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEvT_S5_T0_.exit, %bb.h
  %i.av = phi ptr [ %i.au, %bb.h ], [ null, %_ZSt11stable_sortIPiN11OpenImageIO4v3_112_GLOBAL__N_116SampleComparatorEEvT_S5_T0_.exit ] ; 2 uses
  %i.aw = load i64, ptr %i.f, align 8, !tbaa !61
  call void @_ZN11OpenImageIO4v3_18DeepData4Impl5allocEm(ptr noundef nonnull align 8 dereferenceable(250) %i.aq, i64 noundef %i.aw)
  %i.ax = load i64, ptr %i.f, align 8, !tbaa !61
  %.not53 = icmp slt i64 %1, %i.ax
  br i1 %.not53, label %bb.j, label %.lr.ph

bb.j:                                             ; preds = %bb.i
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !62
  %.not.i40 = icmp sgt i32 %i.az, 0
  br i1 %.not.i40, label %bb.k, label %.lr.ph

bb.k:                                             ; preds = %bb.j
  %i.ba = load ptr, ptr %0, align 8, !tbaa !38    ; 6 uses
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %.lr.ph, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 72
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !54
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %1
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !14
  %.not18.i = icmp sgt i32 %i.bf, 0
  br i1 %.not18.i, label %bb.m, label %.lr.ph

bb.m:                                             ; preds = %bb.l
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ba, i64 120
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !54
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %1
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !14
  %i.bk = zext i32 %i.bj to i64
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ba, i64 216
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !89
  %i.bn = mul i64 %i.bm, %i.bk
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ba, i64 48
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !58
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !90
  %i.br = getelementptr inbounds nuw i8, ptr %i.ba, i64 144
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !51
  %i.bt = getelementptr i8, ptr %i.bs, i64 %i.bn
  %i.bu = getelementptr i8, ptr %i.bt, i64 %i.bq
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i
  %.0.i41 = phi ptr [ %i.bu, %bb.m ], [ null, %bb.l ], [ null, %bb.k ], [ null, %bb.j ], [ null, %bb.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %i.av, ptr align 1 %.0.i41, i64 %i.at, i1 false)
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 16
  %wide.trip.count = zext nneg i32 %i.k to i64
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph, %_ZN11OpenImageIO4v3_18DeepData8data_ptrElii.exit46
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN11OpenImageIO4v3_18DeepData8data_ptrElii.exit46 ] ; 4 uses
  %i.bw = load ptr, ptr %0, align 8, !tbaa !38
  %i.bx = load i64, ptr %i.f, align 8, !tbaa !61
  call void @_ZN11OpenImageIO4v3_18DeepData4Impl5allocEm(ptr noundef nonnull align 8 dereferenceable(250) %i.bw, i64 noundef %i.bx)
  %i.by = load i64, ptr %i.f, align 8, !tbaa !61
  %.not54 = icmp slt i64 %1, %i.by
  br i1 %.not54, label %bb.o, label %_ZN11OpenImageIO4v3_18DeepData8data_ptrElii.exit46

bb.o:                                             ; preds = %bb.n
  %i.bz = load i32, ptr %i.bv, align 8, !tbaa !62
  %.not.i43 = icmp sgt i32 %i.bz, 0
  br i1 %.not.i43, label %bb.p, label %_ZN11OpenImageIO4v3_18DeepData8data_ptrElii.exit46

bb.p:                                             ; preds = %bb.o
  %i.ca = load ptr, ptr %0, align 8, !tbaa !38    ; 6 uses
  %i.cb = icmp eq ptr %i.ca, null
  br i1 %i.cb, label %_ZN11OpenImageIO4v3_18DeepData8data_ptrElii.exit46, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 72
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !54
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %1
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !14
  %i.cg = sext i32 %i.cf to i64
  %.not18.i45 = icmp slt i64 %indvars.iv, %i.cg
  br i1 %.not18.i45, label %bb.r, label %_ZN11OpenImageIO4v3_18DeepData8data_ptrElii.exit46

bb.r:                                             ; preds = %bb.q
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ca, i64 120
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !54
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %1
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !14
  %i.cl = trunc nuw nsw i64 %indvars.iv to i32
  %i.cm = add i32 %i.ck, %i.cl
  %i.cn = zext i32 %i.cm to i64
  %i.co = getelementptr inbounds nuw i8, ptr %i.ca, i64 216
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !89
  %i.cq = mul i64 %i.cp, %i.cn
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ca, i64 48
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !58
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !90
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ca, i64 144
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !51
  %i.cw = getelementptr i8, ptr %i.cv, i64 %i.cq
  %i.cx = getelementptr i8, ptr %i.cw, i64 %i.ct
  br label %_ZN11OpenImageIO4v3_18DeepData8data_ptrElii.exit46

_ZN11OpenImageIO4v3_18DeepData8data_ptrElii.exit46: ; preds = %bb.n, %bb.o, %bb.p, %bb.q, %bb.r
  %.0.i44 = phi ptr [ %i.cx, %bb.r ], [ null, %bb.q ], [ null, %bb.p ], [ null, %bb.o ], [ null, %bb.n ]
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !14
  %i.da = sext i32 %i.cz to i64
  %i.db = mul i64 %i.as, %i.da
  %i.dc = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.db
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0.i44, ptr align 1 %i.dc, i64 %i.as, i1 false)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %_ZNK11OpenImageIO4v3_18DeepData7samplesEl.exit.thread, label %bb.n, !llvm.loop !178

_ZNK11OpenImageIO4v3_18DeepData7samplesEl.exit.thread: ; preds = %_ZN11OpenImageIO4v3_18DeepData8data_ptrElii.exit46, %bb.b, %_ZNK11OpenImageIO4v3_18DeepData7samplesEl.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN11OpenImageIO4v3_18DeepData14merge_overlapsEl(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(20) %0, i64 noundef %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !38     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  %i.c = load i32, ptr %i.b, align 8, !tbaa !91   ; 4 uses
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 228
  %i.f = load i32, ptr %i.e, align 4, !tbaa !96   ; 2 uses
  %i.g = icmp slt i32 %i.f, 0
  %spec.select = select i1 %i.g, i32 %i.c, i32 %i.f ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !62   ; 3 uses
  %i.j = icmp sgt i64 %1, -1                      ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.l = icmp sgt i32 %i.i, 0
  %i.m = icmp slt i64 %1, 0                       ; 2 uses
  %wide.trip.count = zext nneg i32 %i.i to i64
  %wide.trip.count267 = zext nneg i32 %i.i to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.eb, %bb.b
  %.0107 = phi i32 [ 1, %bb.b ], [ %i.vz, %bb.eb ] ; 20 uses
  %i.n = load i64, ptr %i.k, align 8
  %.not.i = icmp slt i64 %1, %i.n
  %or.cond.i = select i1 %i.j, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %bb.d, label %_ZNK11OpenImageIO4v3_18DeepData7samplesEl.exit

bb.d:                                             ; preds = %bb.c
  %i.o = load ptr, ptr %0, align 8, !tbaa !38
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 72
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !54
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %1
  %i.s = load i32, ptr %i.r, align 4, !tbaa !14
  br label %_ZNK11OpenImageIO4v3_18DeepData7samplesEl.exit

_ZNK11OpenImageIO4v3_18DeepData7samplesEl.exit:   ; preds = %bb.c, %bb.d
  %.0.i126 = phi i32 [ %i.s, %bb.d ], [ 0, %bb.c ]
  %i.t = icmp slt i32 %.0107, %.0.i126
  br i1 %i.t, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %_ZNK11OpenImageIO4v3_18DeepData7samplesEl.exit
  %i.u = tail call noundef float @_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii(ptr noundef nonnull align 8 dereferenceable(20) %0, i64 noundef %1, i32 noundef %i.c, i32 noundef %.0107)
  %i.v = tail call noundef float @_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii(ptr noundef nonnull align 8 dereferenceable(20) %0, i64 noundef %1, i32 noundef %spec.select, i32 noundef %.0107)
  %i.w = add nsw i32 %.0107, -1                   ; 8 uses
  %i.x = tail call noundef float @_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii(ptr noundef nonnull align 8 dereferenceable(20) %0, i64 noundef %1, i32 noundef %i.c, i32 noundef %i.w)
  %i.y = fcmp oeq float %i.u, %i.x
  br i1 %i.y, label %bb.f, label %bb.eb

bb.f:                                             ; preds = %bb.e
  %i.z = tail call noundef float @_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii(ptr noundef nonnull align 8 dereferenceable(20) %0, i64 noundef %1, i32 noundef %spec.select, i32 noundef %i.w)
  %i.aa = fcmp oeq float %i.v, %i.z
  br i1 %i.aa, label %.preheader259, label %bb.eb

.preheader259:                                    ; preds = %bb.f
  br i1 %i.l, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader259
  %i.ab = icmp slt i32 %.0107, 1                  ; 2 uses
  %i.ac = icmp slt i32 %.0107, 0                  ; 2 uses
  br label %bb.g

.lr.ph262:                                        ; preds = %bb.cj
  %i.ad = icmp slt i32 %.0107, 1
  %i.ae = icmp slt i32 %.0107, 0
  br label %bb.cn

bb.g:                                             ; preds = %.lr.ph, %bb.cj
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.cj ] ; 10 uses
  %i.af = load ptr, ptr %0, align 8, !tbaa !38    ; 8 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 192
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !41
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !14 ; 4 uses
  %i.ak = icmp slt i32 %i.aj, 0
  %i.al = zext i32 %i.aj to i64                   ; 5 uses
  %i.am = icmp eq i64 %indvars.iv, %i.al
  %or.cond119 = or i1 %i.ak, %i.am
  br i1 %or.cond119, label %bb.cj, label %bb.h

bb.h:                                             ; preds = %bb.g
  br i1 %i.m, label %_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii.exit179, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.an = load i64, ptr %i.k, align 8, !tbaa !61  ; 15 uses
  %i.ao = icmp slt i64 %1, %i.an
  %i.ap = load i32, ptr %i.h, align 8             ; 15 uses
  %.not.i.i = icmp slt i32 %i.aj, %i.ap
  %or.cond21.i.i = select i1 %i.ao, i1 %.not.i.i, i1 false
  br i1 %or.cond21.i.i, label %bb.j, label %bb.aa

bb.j:                                             ; preds = %bb.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.af, i64 144
  %i.ar = getelementptr inbounds nuw i8, ptr %i.af, i64 152
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !102
  %i.at = load ptr, ptr %i.aq, align 8, !tbaa !51 ; 2 uses
  %i.au = icmp eq ptr %i.as, %i.at
  %or.cond3.i.i = or i1 %i.ab, %i.au
  br i1 %or.cond3.i.i, label %bb.aa, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.av = getelementptr inbounds nuw i8, ptr %i.af, i64 72
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !54
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %1
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !14
  %.not19.i.i.not = icmp sgt i32 %.0107, %i.ay
  br i1 %.not19.i.i.not, label %bb.aa, label %_ZNK11OpenImageIO4v3_18DeepData8data_ptrElii.exit.i

_ZNK11OpenImageIO4v3_18DeepData8data_ptrElii.exit.i: ; preds = %bb.k
  %i.az = getelementptr inbounds nuw i8, ptr %i.af, i64 120
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !54
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %1
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !14
  %i.bd = add i32 %i.bc, %i.w
  %i.be = zext i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %i.af, i64 216
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !89
  %i.bh = mul i64 %i.bg, %i.be
  %i.bi = getelementptr inbounds nuw i8, ptr %i.af, i64 48
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !58
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.al
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !90
  %i.bm = getelementptr i8, ptr %i.at, i64 %i.bh
  %i.bn = getelementptr i8, ptr %i.bm, i64 %i.bl  ; 11 uses
  %.not.i128 = icmp eq ptr %i.bn, null
  br i1 %.not.i128, label %bb.aa, label %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i

_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i: ; preds = %_ZNK11OpenImageIO4v3_18DeepData8data_ptrElii.exit.i
  %i.bo = load ptr, ptr %i.af, align 8, !tbaa !19
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.al
  %i.bq = load i64, ptr %i.bp, align 4            ; 2 uses
  %.sroa.01.0.extract.trunc.i = trunc i64 %i.bq to i8
  switch i8 %.sroa.01.0.extract.trunc.i, label %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit24.i [
    i8 11, label %bb.l
    i8 10, label %bb.m
    i8 6, label %bb.s
    i8 2, label %bb.t
    i8 3, label %bb.u
    i8 4, label %bb.v
    i8 5, label %bb.w
    i8 7, label %bb.x
    i8 8, label %bb.y
    i8 9, label %bb.z
  ]

bb.l:                                             ; preds = %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i
  %i.br = load float, ptr %i.bn, align 4, !tbaa !111
  br label %bb.aa

bb.m:                                             ; preds = %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i
  %i.bs = load i16, ptr %i.bn, align 2, !tbaa !114 ; 2 uses
  %i.bt = zext i16 %i.bs to i32
  %i.bu = shl nuw nsw i32 %i.bt, 13
  %i.bv = and i32 %i.bu, 268427264                ; 6 uses
  %.signext.i.i.i = sext i16 %i.bs to i32
  %i.bw = and i32 %.signext.i.i.i, -2147483648    ; 3 uses
  %i.bx = icmp samesign ugt i32 %i.bv, 8388607
  br i1 %i.bx, label %bb.n, label %bb.q, !prof !108

bb.n:                                             ; preds = %bb.m
  %i.by = or disjoint i32 %i.bv, %i.bw            ; 2 uses
  %i.bz = icmp samesign ult i32 %i.bv, 260046848
  br i1 %i.bz, label %bb.o, label %bb.p, !prof !108

bb.o:                                             ; preds = %bb.n
  %i.ca = add nuw nsw i32 %i.by, 939524096
  br label %_ZNK9Imath_3_14halfcvfEv.exit.i

bb.p:                                             ; preds = %bb.n
  %i.cb = or i32 %i.by, 2139095040
  br label %_ZNK9Imath_3_14halfcvfEv.exit.i

bb.q:                                             ; preds = %bb.m
  %.not.i.i.i = icmp eq i32 %i.bv, 0
  br i1 %.not.i.i.i, label %_ZNK9Imath_3_14halfcvfEv.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cc = tail call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.bv, i1 true)
  %i.cd = add nsw i32 %i.cc, -8                   ; 2 uses
  %i.ce = shl i32 %i.bv, %i.cd
  %i.cf = or i32 %i.bw, %i.ce
  %i.cg = or i32 %i.cf, 947912704
  %i.ch = shl nuw nsw i32 %i.cd, 23
  %i.ci = sub nuw i32 %i.cg, %i.ch
  br label %_ZNK9Imath_3_14halfcvfEv.exit.i

_ZNK9Imath_3_14halfcvfEv.exit.i:                  ; preds = %bb.r, %bb.q, %bb.p, %bb.o
  %.sroa.0.0.i.i.i = phi i32 [ %i.ca, %bb.o ], [ %i.cb, %bb.p ], [ %i.ci, %bb.r ], [ %i.bw, %bb.q ]
  %i.cj = bitcast i32 %.sroa.0.0.i.i.i to float
  br label %bb.aa

end_hunk_0
