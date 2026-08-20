inline.NumInlined: 3059
inline.NumDeleted: 1199
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 36
loop-unroll.NumUnrolled: 47
begin_hunk_0_@_ZN8QuantNet11quantize_KLEv.omp_outlined.26:bb.a
  %i.jo = load i64, ptr %i.jn, align 8, !tbaa !354
  %i.jp = getelementptr inbounds nuw [8 x i8], ptr %i.hv, i64 %indvars.iv.next168 ; 2 uses
  %i.jq = load i64, ptr %i.jp, align 8, !tbaa !354
  %i.jr = add i64 %i.jq, %i.jo
  store i64 %i.jr, ptr %i.jp, align 8, !tbaa !354
  %indvars.iv.next168.1 = or disjoint i64 %indvars.iv167, 2 ; 2 uses
  %i.js = getelementptr inbounds nuw [8 x i8], ptr %i.hi, i64 %indvars.iv.next168.1
  %i.jt = load i64, ptr %i.js, align 8, !tbaa !354
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %i.hv, i64 %indvars.iv.next168.1 ; 2 uses
  %i.jv = load i64, ptr %i.ju, align 8, !tbaa !354
  %i.jw = add i64 %i.jv, %i.jt
  store i64 %i.jw, ptr %i.ju, align 8, !tbaa !354
  %indvars.iv.next168.2 = or disjoint i64 %indvars.iv167, 3 ; 2 uses
  %i.jx = getelementptr inbounds nuw [8 x i8], ptr %i.hi, i64 %indvars.iv.next168.2
  %i.jy = load i64, ptr %i.jx, align 8, !tbaa !354
  %i.jz = getelementptr inbounds nuw [8 x i8], ptr %i.hv, i64 %indvars.iv.next168.2 ; 2 uses
  %i.ka = load i64, ptr %i.jz, align 8, !tbaa !354
  %i.kb = add i64 %i.ka, %i.jy
  store i64 %i.kb, ptr %i.jz, align 8, !tbaa !354
  %indvars.iv.next168.3 = add nuw nsw i64 %indvars.iv167, 4 ; 2 uses
  %exitcond170.not.3 = icmp eq i64 %indvars.iv.next168.3, 2048
  br i1 %exitcond170.not.3, label %_ZNSt6vectorImSaImEED2Ev.exit, label %scalar.ph, !llvm.loop !374

._crit_edge154.loopexit:                          ; preds = %._crit_edge150
  %.pre181 = load i32, ptr %i.a, align 4, !tbaa !154
  br label %._crit_edge154

._crit_edge154:                                   ; preds = %._crit_edge154.loopexit, %.preheader133
  %i.kc = phi i32 [ %i.ba, %.preheader133 ], [ %.pre181, %._crit_edge154.loopexit ]
  %.lcssa = phi i32 [ %i.az, %.preheader133 ], [ %i.gy, %._crit_edge154.loopexit ]
  %i.kd = load i32, ptr %i.c, align 4, !tbaa !154 ; 2 uses
  %i.ke = add nsw i32 %i.kd, %i.kc                ; 3 uses
  store i32 %i.ke, ptr %i.a, align 4, !tbaa !154
  %i.kf = add nsw i32 %i.kd, %.lcssa
  %i.kg = call i32 @llvm.smin.i32(i32 %i.kf, i32 %i.f) ; 3 uses
  store i32 %i.kg, ptr %i.b, align 4, !tbaa !154
  %.not = icmp sgt i32 %i.ke, %i.kg
  br i1 %.not, label %._crit_edge156, label %.preheader133

._crit_edge156:                                   ; preds = %._crit_edge154, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %bb.bu

bb.bu:                                            ; preds = %._crit_edge156, %bb.a
  ret void

.loopexit:                                        ; preds = %.lr.ph149, %bb.bk
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.loopexit.split-lp.loopexit:                      ; preds = %bb.i, %bb.ac, %bb.as, %bb.bc, %bb.am, %_ZN4ncnn3MatD2Ev.exit77
  %lpad.loopexit130 = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d
  %lpad.loopexit.split-lp131 = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %_ZN2cv3MatD2Ev.exit.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.cx, %_ZN2cv3MatD2Ev.exit.i ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit130, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp131, %.loopexit.split-lp.loopexit.split-lp ]
  %i.kh = extractvalue { ptr, i32 } %eh.lpad-body, 0
  call void @__clang_call_terminate(ptr %i.kh) #40
  unreachable
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN8QuantNet11quantize_KLEv.omp_outlined.28(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef readonly captures(none) %3) #19 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !154    ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.z

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i32 0, ptr %i.a, align 4, !tbaa !154
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store i32 %i.g, ptr %i.b, align 4, !tbaa !154
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  store i32 1, ptr %i.c, align 4, !tbaa !154
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  store i32 0, ptr %i.d, align 4, !tbaa !154
  %i.h = load i32, ptr %0, align 4, !tbaa !154    ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !154
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !154
  %i.k = load i32, ptr %i.a, align 4, !tbaa !154  ; 2 uses
  %.not284 = icmp sgt i32 %i.k, %i.j
  br i1 %.not284, label %._crit_edge288, label %.lr.ph287

.lr.ph287:                                        ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 448
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 496 ; 2 uses
  %i.n = sext i32 %i.k to i64
  br label %vector.ph445

vector.ph445:                                     ; preds = %.lr.ph287, %bb.y
  %indvars.iv345 = phi i64 [ %i.n, %.lr.ph287 ], [ %indvars.iv.next346, %bb.y ] ; 5 uses
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !120
  %i.p = getelementptr inbounds nuw [64 x i8], ptr %i.o, i64 %indvars.iv345 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !122  ; 6 uses
  br label %vector.body446

vector.body446:                                   ; preds = %vector.body446, %vector.ph445
  %index447 = phi i64 [ 0, %vector.ph445 ], [ %index.next451.3, %vector.body446 ] ; 5 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph445 ], [ %i.aj, %vector.body446 ]
  %vec.phi448 = phi <2 x i64> [ zeroinitializer, %vector.ph445 ], [ %i.ak, %vector.body446 ]
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %index447 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %wide.load449 = load <2 x i64>, ptr %i.s, align 8, !tbaa !354
  %wide.load450 = load <2 x i64>, ptr %i.t, align 8, !tbaa !354
  %i.u = add <2 x i64> %wide.load449, %vec.phi
  %i.v = add <2 x i64> %wide.load450, %vec.phi448
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %index447 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %wide.load449.1 = load <2 x i64>, ptr %i.x, align 8, !tbaa !354
  %wide.load450.1 = load <2 x i64>, ptr %i.y, align 8, !tbaa !354
  %i.z = add <2 x i64> %wide.load449.1, %i.u
  %i.aa = add <2 x i64> %wide.load450.1, %i.v
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %index447 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 64
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 80
  %wide.load449.2 = load <2 x i64>, ptr %i.ac, align 8, !tbaa !354
  %wide.load450.2 = load <2 x i64>, ptr %i.ad, align 8, !tbaa !354
  %i.ae = add <2 x i64> %wide.load449.2, %i.z
  %i.af = add <2 x i64> %wide.load450.2, %i.aa
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %index447 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 96
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 112
  %wide.load449.3 = load <2 x i64>, ptr %i.ah, align 8, !tbaa !354
  %wide.load450.3 = load <2 x i64>, ptr %i.ai, align 8, !tbaa !354
  %i.aj = add <2 x i64> %wide.load449.3, %i.ae    ; 2 uses
  %i.ak = add <2 x i64> %wide.load450.3, %i.af    ; 2 uses
  %index.next451.3 = add nuw nsw i64 %index447, 16 ; 2 uses
  %i.al = icmp eq i64 %index.next451.3, 2048
  br i1 %i.al, label %.preheader248, label %vector.body446, !llvm.loop !375

.preheader248:                                    ; preds = %vector.body446
  %i.am = getelementptr inbounds nuw i8, ptr %i.p, i64 40 ; 9 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !104 ; 2 uses
  %bin.rdx = add <2 x i64> %i.ak, %i.aj
  %i.ao = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx)
  %i.ap = uitofp i64 %i.ao to double
  %broadcast.splatinsert437 = insertelement <2 x double> poison, double %i.ap, i64 0
  %broadcast.splat438 = shufflevector <2 x double> %broadcast.splatinsert437, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body439

vector.body439:                                   ; preds = %vector.body439, %.preheader248
  %index440 = phi i64 [ 0, %.preheader248 ], [ %index.next442.1, %vector.body439 ] ; 4 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %index440
  %wide.load441 = load <2 x i64>, ptr %i.aq, align 8, !tbaa !354
  %i.ar = uitofp <2 x i64> %wide.load441 to <2 x double>
  %i.as = fdiv <2 x double> %i.ar, %broadcast.splat438
  %i.at = fptrunc <2 x double> %i.as to <2 x float>
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %index440
  store <2 x float> %i.at, ptr %i.au, align 4, !tbaa !161
  %index.next442 = or disjoint i64 %index440, 2   ; 2 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %index.next442
  %wide.load441.1 = load <2 x i64>, ptr %i.av, align 8, !tbaa !354
  %i.aw = uitofp <2 x i64> %wide.load441.1 to <2 x double>
  %i.ax = fdiv <2 x double> %i.aw, %broadcast.splat438
  %i.ay = fptrunc <2 x double> %i.ax to <2 x float>
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %index.next442
  store <2 x float> %i.ay, ptr %i.az, align 4, !tbaa !161
  %index.next442.1 = add nuw nsw i64 %index440, 4 ; 2 uses
  %i.ba = icmp eq i64 %index.next442.1, 2048
  br i1 %i.ba, label %.preheader246, label %vector.body439, !llvm.loop !376

bb.c:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit211
  %i.bb = uitofp nneg i32 %.1181 to float
  %i.bc = fadd nnan float %i.bb, 5.000000e-01
  %i.bd = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.be = load float, ptr %i.bd, align 4, !tbaa !348
  %i.bf = fmul float %i.bc, %i.be
  %i.bg = fmul float %i.bf, f0x3A000000           ; 2 uses
  store float %i.bg, ptr %i.p, align 8, !tbaa !377
  %i.bh = load ptr, ptr %i.m, align 8, !tbaa !111
  %i.bi = getelementptr inbounds nuw [72 x i8], ptr %i.bh, i64 %indvars.iv345
  invoke void @_ZN4ncnn3Mat6createEimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.bi, i32 noundef 1, i64 noundef 4, ptr noundef null)
          to label %bb.y unwind label %.loopexit.split-lp

.preheader246:                                    ; preds = %vector.body439, %_ZNSt6vectorIfSaIfEED2Ev.exit211
  %indvar = phi i64 [ %indvar.next, %_ZNSt6vectorIfSaIfEED2Ev.exit211 ], [ 0, %vector.body439 ] ; 6 uses
  %indvars.iv299 = phi i64 [ %indvars.iv.next300, %_ZNSt6vectorIfSaIfEED2Ev.exit211 ], [ 128, %vector.body439 ] ; 20 uses
  %.0179282 = phi float [ %.1, %_ZNSt6vectorIfSaIfEED2Ev.exit211 ], [ f0x7F7FFFFF, %vector.body439 ] ; 2 uses
  %.0180281 = phi i32 [ %.1181, %_ZNSt6vectorIfSaIfEED2Ev.exit211 ], [ 128, %vector.body439 ]
  %i.bj = add nuw nsw i64 %indvar, 127
  %i.bk = sub i64 0, %indvar
  %i.bl = add nuw nsw i64 %indvar, 127
  %i.bm = shl nuw nsw i64 %indvar, 2
  %i.bn = shl nuw nsw i64 %indvars.iv299, 2       ; 4 uses
  %i.bo = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bn) #39
          to label %.noexc unwind label %.loopexit247 ; 13 uses

.noexc:                                           ; preds = %.preheader246
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bn ; 2 uses
  %n.vec428 = and i64 %indvars.iv299, 9223372036854775800 ; 3 uses
  %i.bq = shl i64 %n.vec428, 2
  %i.br = getelementptr i8, ptr %i.bo, i64 %i.bq
  br label %vector.body429

vector.body429:                                   ; preds = %vector.body429, %.noexc
  %index430 = phi i64 [ 0, %.noexc ], [ %index.next432, %vector.body429 ] ; 2 uses
  %i.bs = shl i64 %index430, 2
  %next.gep431 = getelementptr i8, ptr %i.bo, i64 %i.bs ; 2 uses
  %i.bt = getelementptr i8, ptr %next.gep431, i64 16
  store <4 x float> splat (float f0x38D1B717), ptr %next.gep431, align 4, !tbaa !161
  store <4 x float> splat (float f0x38D1B717), ptr %i.bt, align 4, !tbaa !161
  %index.next432 = add nuw i64 %index430, 8       ; 2 uses
  %i.bu = icmp eq i64 %index.next432, %n.vec428
  br i1 %i.bu, label %middle.block433, label %vector.body429, !llvm.loop !378

middle.block433:                                  ; preds = %vector.body429
  %cmp.n434 = icmp eq i64 %indvars.iv299, %n.vec428
  br i1 %cmp.n434, label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit.preheader, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %middle.block433, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.07.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bv, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.br, %middle.block433 ] ; 2 uses
  store float f0x38D1B717, ptr %.07.i.i.i.i.i.i.i.i.i, align 4, !tbaa !161
  %i.bv = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bv, %i.bp
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit.preheader, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !379

_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit.preheader:  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %middle.block433
  %i.bw = load ptr, ptr %i.am, align 8, !tbaa !104 ; 13 uses
  %i.bx = getelementptr i8, ptr %i.bw, i64 %i.bm
  %scevgep = getelementptr i8, ptr %i.bx, i64 512
  %bound0 = icmp ult ptr %i.bo, %scevgep
  %bound1 = icmp ult ptr %i.bw, %i.bp
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit.preheader454, label %vector.ph414

vector.ph414:                                     ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit.preheader
  %n.vec415 = and i64 %indvars.iv299, 9223372036854775800 ; 3 uses
  br label %vector.body416

vector.body416:                                   ; preds = %vector.body416, %vector.ph414
  %index417 = phi i64 [ 0, %vector.ph414 ], [ %index.next422, %vector.body416 ] ; 3 uses
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %index417 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %wide.load418 = load <4 x float>, ptr %i.by, align 4, !tbaa !161, !alias.scope !380
  %wide.load419 = load <4 x float>, ptr %i.bz, align 4, !tbaa !161, !alias.scope !380
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %index417 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16 ; 2 uses
  %wide.load420 = load <4 x float>, ptr %i.ca, align 4, !tbaa !161, !alias.scope !383, !noalias !380
  %wide.load421 = load <4 x float>, ptr %i.cb, align 4, !tbaa !161, !alias.scope !383, !noalias !380
  %i.cc = fadd <4 x float> %wide.load418, %wide.load420
  %i.cd = fadd <4 x float> %wide.load419, %wide.load421
  store <4 x float> %i.cc, ptr %i.ca, align 4, !tbaa !161, !alias.scope !383, !noalias !380
  store <4 x float> %i.cd, ptr %i.cb, align 4, !tbaa !161, !alias.scope !383, !noalias !380
  %index.next422 = add nuw i64 %index417, 8       ; 2 uses
  %i.ce = icmp eq i64 %index.next422, %n.vec415
  br i1 %i.ce, label %middle.block423, label %vector.body416, !llvm.loop !385

middle.block423:                                  ; preds = %vector.body416
  %cmp.n424 = icmp eq i64 %indvars.iv299, %n.vec415
  br i1 %cmp.n424, label %.lr.ph, label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit.preheader454

_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit.preheader454: ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit.preheader, %middle.block423
  %indvars.iv295.ph = phi i64 [ 0, %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit.preheader ], [ %n.vec415, %middle.block423 ] ; 3 uses
  %i.cf = sub i64 %i.bl, %indvars.iv295.ph
  %xtraiter = and i64 %indvars.iv299, 3           ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit.prol.loopexit, label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit.prol

_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit.prol:       ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit.preheader454, %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit.prol
  %indvars.iv295.prol = phi i64 [ %indvars.iv.next296.prol, %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit.prol ], [ %indvars.iv295.ph, %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit.preheader454 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit.prol ], [ 0, %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit.preheader454 ]
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %indvars.iv295.prol
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !161
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %indvars.iv295.prol ; 2 uses
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !161
  %i.ck = fadd float %i.ch, %i.cj
  store float %i.ck, ptr %i.ci, align 4, !tbaa !161
  %indvars.iv.next296.prol = add nuw nsw i64 %indvars.iv295.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit.prol.loopexit, label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit.prol, !llvm.loop !386

_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit.prol.loopexit: ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit.prol, %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit.preheader454
  %indvars.iv295.unr = phi i64 [ %indvars.iv295.ph, %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit.preheader454 ], [ %indvars.iv.next296.prol, %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit.prol ]
  %i.cl = icmp ult i64 %i.cf, 3
  br i1 %i.cl, label %.lr.ph, label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit

.lr.ph:                                           ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit.prol.loopexit, %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit, %middle.block423
  %i.cm = getelementptr [4 x i8], ptr %i.bo, i64 %indvars.iv299
  %i.cn = getelementptr i8, ptr %i.cm, i64 -4     ; 6 uses
  %.promoted = load float, ptr %i.cn, align 4, !tbaa !161 ; 2 uses
  %xtraiter460 = and i64 %i.bk, 3                 ; 2 uses
  %lcmp.mod461.not = icmp eq i64 %xtraiter460, 0
  br i1 %lcmp.mod461.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph, %.prol.preheader
  %indvars.iv301.prol = phi i64 [ %indvars.iv.next302.prol, %.prol.preheader ], [ %indvars.iv299, %.lr.ph ] ; 2 uses
  %i.co = phi float [ %i.cr, %.prol.preheader ], [ %.promoted, %.lr.ph ]
  %prol.iter462 = phi i64 [ %prol.iter462.next, %.prol.preheader ], [ 0, %.lr.ph ]
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %indvars.iv301.prol
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !161
  %i.cr = fadd float %i.cq, %i.co                 ; 3 uses
  store float %i.cr, ptr %i.cn, align 4, !tbaa !161
  %indvars.iv.next302.prol = add nuw nsw i64 %indvars.iv301.prol, 1 ; 2 uses
  %prol.iter462.next = add i64 %prol.iter462, 1   ; 2 uses
  %prol.iter462.cmp.not = icmp eq i64 %prol.iter462.next, %xtraiter460
  br i1 %prol.iter462.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !387

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph
  %indvars.iv301.unr = phi i64 [ %indvars.iv299, %.lr.ph ], [ %indvars.iv.next302.prol, %.prol.preheader ]
  %.unr = phi float [ %.promoted, %.lr.ph ], [ %i.cr, %.prol.preheader ]
  %i.cs = add i64 %indvar, -1917
  %i.ct = icmp ult i64 %i.cs, 3
  br i1 %i.ct, label %._crit_edge, label %.lr.ph.new

_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit:            ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit.prol.loopexit, %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit
  %indvars.iv295 = phi i64 [ %indvars.iv.next296.3, %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit ], [ %indvars.iv295.unr, %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit.prol.loopexit ] ; 6 uses
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %indvars.iv295
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !161
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %indvars.iv295 ; 2 uses
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !161
  %i.cy = fadd float %i.cv, %i.cx
  store float %i.cy, ptr %i.cw, align 4, !tbaa !161
  %indvars.iv.next296 = add nuw nsw i64 %indvars.iv295, 1 ; 2 uses
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %indvars.iv.next296
  %i.da = load float, ptr %i.cz, align 4, !tbaa !161
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %indvars.iv.next296 ; 2 uses
  %i.dc = load float, ptr %i.db, align 4, !tbaa !161
  %i.dd = fadd float %i.da, %i.dc
  store float %i.dd, ptr %i.db, align 4, !tbaa !161
  %indvars.iv.next296.1 = add nuw nsw i64 %indvars.iv295, 2 ; 2 uses
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %indvars.iv.next296.1
  %i.df = load float, ptr %i.de, align 4, !tbaa !161
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %indvars.iv.next296.1 ; 2 uses
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !161
  %i.di = fadd float %i.df, %i.dh
  store float %i.di, ptr %i.dg, align 4, !tbaa !161
  %indvars.iv.next296.2 = add nuw nsw i64 %indvars.iv295, 3 ; 2 uses
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %indvars.iv.next296.2
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !161
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %indvars.iv.next296.2 ; 2 uses
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !161
  %i.dn = fadd float %i.dk, %i.dm
  store float %i.dn, ptr %i.dl, align 4, !tbaa !161
  %indvars.iv.next296.3 = add nuw nsw i64 %indvars.iv295, 4 ; 2 uses
  %exitcond298.not.3 = icmp eq i64 %indvars.iv.next296.3, %indvars.iv299
  br i1 %exitcond298.not.3, label %.lr.ph, label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit, !llvm.loop !388

._crit_edge:                                      ; preds = %.lr.ph.new, %.prol.loopexit
  %i.do = trunc nuw nsw i64 %indvars.iv299 to i32 ; 3 uses
  %i.dp = uitofp nneg i32 %i.do to float          ; 2 uses
  %i.dq = fmul nnan float %i.dp, 7.812500e-03     ; 7 uses
  %i.dr = invoke noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #39
          to label %.lr.ph.i.i.i.i.i.i.i.i.i198.preheader unwind label %.loopexit247 ; 21 uses

.lr.ph.i.i.i.i.i.i.i.i.i198.preheader:            ; preds = %._crit_edge
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(512) %i.dr, i8 0, i64 512, i1 false), !tbaa !161
  %i.ds = call noundef float @llvm.floor.f32(float %i.dq)
  %i.dt = fptosi float %i.ds to i32               ; 8 uses
  %i.du = sitofp i32 %i.dt to float               ; 2 uses
  %i.dv = fsub float %i.dq, %i.du                 ; 4 uses
  %i.dw = fcmp ogt float %i.dv, 0.000000e+00      ; 2 uses
  br i1 %i.dw, label %bb.d, label %bb.e

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %indvars.iv301 = phi i64 [ %indvars.iv.next302.3, %.lr.ph.new ], [ %indvars.iv301.unr, %.prol.loopexit ] ; 5 uses
  %i.dx = phi float [ %i.em, %.lr.ph.new ], [ %.unr, %.prol.loopexit ]
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %indvars.iv301
  %i.dz = load float, ptr %i.dy, align 4, !tbaa !161
  %i.ea = fadd float %i.dz, %i.dx                 ; 2 uses
  store float %i.ea, ptr %i.cn, align 4, !tbaa !161
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %indvars.iv301
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 4
  %i.ed = load float, ptr %i.ec, align 4, !tbaa !161
  %i.ee = fadd float %i.ed, %i.ea                 ; 2 uses
  store float %i.ee, ptr %i.cn, align 4, !tbaa !161
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %indvars.iv301
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.eh = load float, ptr %i.eg, align 4, !tbaa !161
  %i.ei = fadd float %i.eh, %i.ee                 ; 2 uses
  store float %i.ei, ptr %i.cn, align 4, !tbaa !161
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %indvars.iv301
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 12
  %i.el = load float, ptr %i.ek, align 4, !tbaa !161
  %i.em = fadd float %i.el, %i.ei                 ; 2 uses
  store float %i.em, ptr %i.cn, align 4, !tbaa !161
  %indvars.iv.next302.3 = add nuw nsw i64 %indvars.iv301, 4 ; 2 uses
  %exitcond304.not.3 = icmp eq i64 %indvars.iv.next302.3, 2048
  br i1 %exitcond304.not.3, label %._crit_edge, label %.lr.ph.new, !llvm.loop !389

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i198.preheader
  %i.en = sext i32 %i.dt to i64
end_hunk_0
begin_hunk_1_@_ZN8QuantNet11quantize_KLEv.omp_outlined.28:bb.a
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.iu, i64 %indvars.iv319
  %i.jt = load float, ptr %i.js, align 4, !tbaa !161
  %i.ju = fadd float %i.jt, %i.jr                 ; 2 uses
  store float %i.ju, ptr %i.iv, align 4, !tbaa !161
  %i.jv = getelementptr [4 x i8], ptr %i.iu, i64 %indvars.iv319
  %i.jw = getelementptr i8, ptr %i.jv, i64 4
  %i.jx = load float, ptr %i.jw, align 4, !tbaa !161
  %i.jy = fadd float %i.jx, %i.ju                 ; 2 uses
  store float %i.jy, ptr %i.iv, align 4, !tbaa !161
  %i.jz = getelementptr [4 x i8], ptr %i.iu, i64 %indvars.iv319
  %i.ka = getelementptr i8, ptr %i.jz, i64 8
  %i.kb = load float, ptr %i.ka, align 4, !tbaa !161
  %i.kc = fadd float %i.kb, %i.jy                 ; 2 uses
  store float %i.kc, ptr %i.iv, align 4, !tbaa !161
  %i.kd = getelementptr [4 x i8], ptr %i.iu, i64 %indvars.iv319
  %i.ke = getelementptr i8, ptr %i.kd, i64 12
  %i.kf = load float, ptr %i.ke, align 4, !tbaa !161
  %i.kg = fadd float %i.kf, %i.kc                 ; 3 uses
  store float %i.kg, ptr %i.iv, align 4, !tbaa !161
  %indvars.iv.next320.3 = add nsw i64 %indvars.iv319, 4 ; 2 uses
  %exitcond323.not.3 = icmp eq i64 %indvars.iv.next320.3, %indvars.iv299
  br i1 %exitcond323.not.3, label %._crit_edge269, label %.lr.ph268.new, !llvm.loop !398

_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit207:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i203, %middle.block411
  br i1 %i.dw, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit207
  %i.kh = sext i32 %i.dt to i64
  %i.ki = getelementptr inbounds nuw [4 x i8], ptr %i.jj, i64 %i.kh ; 2 uses
  %i.kj = load float, ptr %i.ki, align 4, !tbaa !161
  %i.kk = call float @llvm.fmuladd.f32(float %i.dv, float %i.fb, float %i.kj)
  store float %i.kk, ptr %i.ki, align 4, !tbaa !161
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit207
  br i1 %i.es, label %.lr.ph273, label %.preheader.preheader

.lr.ph273:                                        ; preds = %bb.q
  %wide.trip.count327 = zext nneg i32 %i.dt to i64 ; 3 uses
  %min.iters.check392 = icmp ult i32 %i.dt, 8
  br i1 %min.iters.check392, label %scalar.ph391.preheader, label %vector.ph393

vector.ph393:                                     ; preds = %.lr.ph273
  %n.vec394 = and i64 %wide.trip.count327, 2147483640 ; 3 uses
  %broadcast.splatinsert395 = insertelement <4 x float> poison, float %i.fb, i64 0
  %broadcast.splat396 = shufflevector <4 x float> %broadcast.splatinsert395, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body397

vector.body397:                                   ; preds = %vector.body397, %vector.ph393
  %index398 = phi i64 [ 0, %vector.ph393 ], [ %index.next401, %vector.body397 ] ; 2 uses
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %i.jj, i64 %index398 ; 3 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 16 ; 2 uses
  %wide.load399 = load <4 x float>, ptr %i.kl, align 4, !tbaa !161
  %wide.load400 = load <4 x float>, ptr %i.km, align 4, !tbaa !161
  %i.kn = fadd <4 x float> %broadcast.splat396, %wide.load399
  %i.ko = fadd <4 x float> %broadcast.splat396, %wide.load400
  store <4 x float> %i.kn, ptr %i.kl, align 4, !tbaa !161
  store <4 x float> %i.ko, ptr %i.km, align 4, !tbaa !161
  %index.next401 = add nuw i64 %index398, 8       ; 2 uses
  %i.kp = icmp eq i64 %index.next401, %n.vec394
  br i1 %i.kp, label %middle.block402, label %vector.body397, !llvm.loop !399

middle.block402:                                  ; preds = %vector.body397
  %cmp.n403 = icmp eq i64 %n.vec394, %wide.trip.count327
  br i1 %cmp.n403, label %.preheader.preheader, label %scalar.ph391.preheader

scalar.ph391.preheader:                           ; preds = %.lr.ph273, %middle.block402
  %indvars.iv324.ph = phi i64 [ 0, %.lr.ph273 ], [ %n.vec394, %middle.block402 ]
  br label %scalar.ph391

scalar.ph391:                                     ; preds = %scalar.ph391.preheader, %scalar.ph391
  %indvars.iv324 = phi i64 [ %indvars.iv.next325, %scalar.ph391 ], [ %indvars.iv324.ph, %scalar.ph391.preheader ] ; 2 uses
  %i.kq = getelementptr inbounds nuw [4 x i8], ptr %i.jj, i64 %indvars.iv324 ; 2 uses
  %i.kr = load float, ptr %i.kq, align 4, !tbaa !161
  %i.ks = fadd float %i.fb, %i.kr
  store float %i.ks, ptr %i.kq, align 4, !tbaa !161
  %indvars.iv.next325 = add nuw nsw i64 %indvars.iv324, 1 ; 2 uses
  %exitcond328.not = icmp eq i64 %indvars.iv.next325, %wide.trip.count327
  br i1 %exitcond328.not, label %.preheader.preheader, label %scalar.ph391, !llvm.loop !400

.preheader.preheader:                             ; preds = %scalar.ph391, %middle.block402, %bb.q
  br label %.preheader

.loopexit:                                        ; preds = %scalar.ph377, %middle.block388, %bb.v
  %exitcond337.not = icmp eq i64 %indvars.iv.next335, 127
  br i1 %exitcond337.not, label %bb.r, label %.preheader, !llvm.loop !401

bb.r:                                             ; preds = %.loopexit
  br i1 %i.fx, label %bb.w, label %bb.x

.preheader:                                       ; preds = %.preheader.preheader, %.loopexit
  %indvars.iv334 = phi i64 [ %indvars.iv.next335, %.loopexit ], [ 1, %.preheader.preheader ] ; 5 uses
  %i.kt = trunc nuw nsw i64 %indvars.iv334 to i32
  %i.ku = uitofp nneg i32 %i.kt to float
  %i.kv = fmul nnan float %i.dq, %i.ku            ; 2 uses
  %indvars.iv.next335 = add nuw nsw i64 %indvars.iv334, 1 ; 3 uses
  %i.kw = trunc nuw nsw i64 %indvars.iv.next335 to i32
  %i.kx = uitofp nneg i32 %i.kw to float
  %i.ky = fmul nnan float %i.dq, %i.kx            ; 2 uses
  %i.kz = call noundef float @llvm.ceil.f32(float %i.kv)
  %i.la = fptosi float %i.kz to i32               ; 4 uses
  %i.lb = sitofp i32 %i.la to float
  %i.lc = fsub float %i.lb, %i.kv                 ; 2 uses
  %i.ld = call noundef float @llvm.floor.f32(float %i.ky)
  %i.le = fptosi float %i.ld to i32               ; 4 uses
  %i.lf = sitofp i32 %i.le to float
  %i.lg = fsub float %i.ky, %i.lf                 ; 2 uses
  %i.lh = fcmp ogt float %i.lc, 0.000000e+00
  br i1 %i.lh, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.preheader
  %i.li = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %indvars.iv334
  %i.lj = load float, ptr %i.li, align 4, !tbaa !161
  %i.lk = sext i32 %i.la to i64
  %i.ll = getelementptr [4 x i8], ptr %i.jj, i64 %i.lk
  %i.lm = getelementptr i8, ptr %i.ll, i64 -4     ; 2 uses
  %i.ln = load float, ptr %i.lm, align 4, !tbaa !161
  %i.lo = call float @llvm.fmuladd.f32(float %i.lc, float %i.lj, float %i.ln)
  store float %i.lo, ptr %i.lm, align 4, !tbaa !161
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.preheader
  %i.lp = fcmp ogt float %i.lg, 0.000000e+00
  br i1 %i.lp, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.lq = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %indvars.iv334
  %i.lr = load float, ptr %i.lq, align 4, !tbaa !161
  %i.ls = sext i32 %i.le to i64
  %i.lt = getelementptr inbounds nuw [4 x i8], ptr %i.jj, i64 %i.ls ; 2 uses
  %i.lu = load float, ptr %i.lt, align 4, !tbaa !161
  %i.lv = call float @llvm.fmuladd.f32(float %i.lg, float %i.lr, float %i.lu)
  store float %i.lv, ptr %i.lt, align 4, !tbaa !161
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.lw = icmp slt i32 %i.la, %i.le
  br i1 %i.lw, label %.lr.ph276, label %.loopexit

.lr.ph276:                                        ; preds = %bb.v
  %i.lx = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %indvars.iv334
  %i.ly = load float, ptr %i.lx, align 4, !tbaa !161 ; 2 uses
  %i.lz = sext i32 %i.la to i64                   ; 4 uses
  %wide.trip.count332 = sext i32 %i.le to i64     ; 2 uses
  %i.ma = sub nsw i64 %wide.trip.count332, %i.lz  ; 3 uses
  %min.iters.check378 = icmp ult i64 %i.ma, 8
  br i1 %min.iters.check378, label %scalar.ph377.preheader, label %vector.ph379

vector.ph379:                                     ; preds = %.lr.ph276
  %n.vec380 = and i64 %i.ma, -8                   ; 3 uses
  %i.mb = add nsw i64 %n.vec380, %i.lz
  %broadcast.splatinsert381 = insertelement <4 x float> poison, float %i.ly, i64 0
  %broadcast.splat382 = shufflevector <4 x float> %broadcast.splatinsert381, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.jj, i64 %i.lz
  br label %vector.body383

vector.body383:                                   ; preds = %vector.body383, %vector.ph379
  %index384 = phi i64 [ 0, %vector.ph379 ], [ %index.next387, %vector.body383 ] ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index384 ; 3 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %gep, i64 16 ; 2 uses
  %wide.load385 = load <4 x float>, ptr %gep, align 4, !tbaa !161
  %wide.load386 = load <4 x float>, ptr %i.mc, align 4, !tbaa !161
  %i.md = fadd <4 x float> %broadcast.splat382, %wide.load385
  %i.me = fadd <4 x float> %broadcast.splat382, %wide.load386
  store <4 x float> %i.md, ptr %gep, align 4, !tbaa !161
  store <4 x float> %i.me, ptr %i.mc, align 4, !tbaa !161
  %index.next387 = add nuw i64 %index384, 8       ; 2 uses
  %i.mf = icmp eq i64 %index.next387, %n.vec380
  br i1 %i.mf, label %middle.block388, label %vector.body383, !llvm.loop !402

middle.block388:                                  ; preds = %vector.body383
  %cmp.n389 = icmp eq i64 %i.ma, %n.vec380
  br i1 %cmp.n389, label %.loopexit, label %scalar.ph377.preheader

scalar.ph377.preheader:                           ; preds = %.lr.ph276, %middle.block388
  %indvars.iv329.ph = phi i64 [ %i.lz, %.lr.ph276 ], [ %i.mb, %middle.block388 ]
  br label %scalar.ph377

scalar.ph377:                                     ; preds = %scalar.ph377.preheader, %scalar.ph377
  %indvars.iv329 = phi i64 [ %indvars.iv.next330, %scalar.ph377 ], [ %indvars.iv329.ph, %scalar.ph377.preheader ] ; 2 uses
  %i.mg = getelementptr inbounds nuw [4 x i8], ptr %i.jj, i64 %indvars.iv329 ; 2 uses
  %i.mh = load float, ptr %i.mg, align 4, !tbaa !161
  %i.mi = fadd float %i.ly, %i.mh
  store float %i.mi, ptr %i.mg, align 4, !tbaa !161
  %indvars.iv.next330 = add nsw i64 %indvars.iv329, 1 ; 2 uses
  %exitcond333.not = icmp eq i64 %indvars.iv.next330, %wide.trip.count332
  br i1 %exitcond333.not, label %.loopexit, label %scalar.ph377, !llvm.loop !403

bb.w:                                             ; preds = %bb.r
  %i.mj = getelementptr [4 x i8], ptr %i.jj, i64 %.pre-phi
  %i.mk = getelementptr i8, ptr %i.mj, i64 -4     ; 2 uses
  %i.ml = load float, ptr %i.mk, align 4, !tbaa !161
  %i.mm = call float @llvm.fmuladd.f32(float %i.fw, float %i.ji, float %i.ml)
  store float %i.mm, ptr %i.mk, align 4, !tbaa !161
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.r
  br i1 %i.it, label %.lr.ph280.preheader, label %.lr.ph.i.preheader

.lr.ph280.preheader:                              ; preds = %bb.x
  %i.mn = sub nsw i64 %indvars.iv299, %.pre-phi   ; 3 uses
  %min.iters.check = icmp ult i64 %i.mn, 8
  br i1 %min.iters.check, label %.lr.ph280.preheader453, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph280.preheader
  %n.vec = and i64 %i.mn, -8                      ; 3 uses
  %i.mo = add i64 %.pre-phi, %n.vec
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.ji, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.mp = getelementptr [4 x i8], ptr %i.jj, i64 %.pre-phi
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.mq = getelementptr [4 x i8], ptr %i.mp, i64 %index ; 3 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 16 ; 2 uses
  %wide.load = load <4 x float>, ptr %i.mq, align 4, !tbaa !161
  %wide.load376 = load <4 x float>, ptr %i.mr, align 4, !tbaa !161
  %i.ms = fadd <4 x float> %broadcast.splat, %wide.load
  %i.mt = fadd <4 x float> %broadcast.splat, %wide.load376
  store <4 x float> %i.ms, ptr %i.mq, align 4, !tbaa !161
  store <4 x float> %i.mt, ptr %i.mr, align 4, !tbaa !161
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.mu = icmp eq i64 %index.next, %n.vec
  br i1 %i.mu, label %middle.block, label %vector.body, !llvm.loop !404

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.mn, %n.vec
  br i1 %cmp.n, label %.lr.ph.i.preheader, label %.lr.ph280.preheader453

.lr.ph280.preheader453:                           ; preds = %.lr.ph280.preheader, %middle.block
  %indvars.iv338.ph = phi i64 [ %.pre-phi, %.lr.ph280.preheader ], [ %i.mo, %middle.block ]
  br label %.lr.ph280

.lr.ph.i.preheader:                               ; preds = %.lr.ph280, %middle.block, %bb.x
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.04.i = phi i64 [ %i.nc, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ] ; 3 uses
  %.0113.i = phi float [ %i.nb, %.lr.ph.i ], [ 0.000000e+00, %.lr.ph.i.preheader ]
  %i.mv = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %.04.i
  %i.mw = load float, ptr %i.mv, align 4, !tbaa !161 ; 2 uses
  %i.mx = getelementptr inbounds nuw [4 x i8], ptr %i.jj, i64 %.04.i
  %i.my = load float, ptr %i.mx, align 4, !tbaa !161
  %i.mz = fdiv float %i.mw, %i.my
  %i.na = call noundef float @logf(float noundef %i.mz) #20
  %i.nb = call float @llvm.fmuladd.f32(float %i.mw, float %i.na, float %.0113.i) ; 3 uses
  %i.nc = add nuw nsw i64 %.04.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.nc, %indvars.iv299
  br i1 %exitcond.not.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit211, label %.lr.ph.i, !llvm.loop !405

.lr.ph280:                                        ; preds = %.lr.ph280.preheader453, %.lr.ph280
  %indvars.iv338 = phi i64 [ %indvars.iv.next339, %.lr.ph280 ], [ %indvars.iv338.ph, %.lr.ph280.preheader453 ] ; 2 uses
  %i.nd = getelementptr inbounds nuw [4 x i8], ptr %i.jj, i64 %indvars.iv338 ; 2 uses
  %i.ne = load float, ptr %i.nd, align 4, !tbaa !161
  %i.nf = fadd float %i.ji, %i.ne
  store float %i.nf, ptr %i.nd, align 4, !tbaa !161
  %indvars.iv.next339 = add nsw i64 %indvars.iv338, 1 ; 2 uses
  %exitcond342.not = icmp eq i64 %indvars.iv.next339, %indvars.iv299
  br i1 %exitcond342.not, label %.lr.ph.i.preheader, label %.lr.ph280, !llvm.loop !406

_ZNSt6vectorIfSaIfEED2Ev.exit211:                 ; preds = %.lr.ph.i
  %i.ng = fcmp olt float %i.nb, %.0179282         ; 2 uses
  %.1181 = select i1 %i.ng, i32 %i.do, i32 %.0180281 ; 2 uses
  %.1 = select i1 %i.ng, float %i.nb, float %.0179282
  call void @_ZdlPv(ptr noundef nonnull %i.jj) #37
  call void @_ZdlPv(ptr noundef nonnull %i.dr) #37
  call void @_ZdlPv(ptr noundef nonnull %i.bo) #37
  %indvars.iv.next300 = add nuw nsw i64 %indvars.iv299, 1 ; 2 uses
  %exitcond344.not = icmp eq i64 %indvars.iv.next300, 2048
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond344.not, label %bb.c, label %.preheader246, !llvm.loop !407

bb.y:                                             ; preds = %bb.c
  %i.nh = fdiv float 1.270000e+02, %i.bg
  %i.ni = load ptr, ptr %i.m, align 8, !tbaa !111
  %i.nj = getelementptr inbounds nuw [72 x i8], ptr %i.ni, i64 %indvars.iv345
  %i.nk = load ptr, ptr %i.nj, align 8, !tbaa !116
  store float %i.nh, ptr %i.nk, align 4, !tbaa !161
  %indvars.iv.next346 = add nsw i64 %indvars.iv345, 1
  %i.nl = load i32, ptr %i.b, align 4, !tbaa !154
  %i.nm = sext i32 %i.nl to i64
  %.not.not = icmp slt i64 %indvars.iv345, %i.nm
  br i1 %.not.not, label %vector.ph445, label %._crit_edge288

._crit_edge288:                                   ; preds = %bb.y, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %bb.z

bb.z:                                             ; preds = %._crit_edge288, %bb.a
  ret void

.loopexit247:                                     ; preds = %.preheader246, %._crit_edge, %._crit_edge269
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.aa

.loopexit.split-lp:                               ; preds = %bb.c
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.aa

bb.aa:                                            ; preds = %.loopexit.split-lp, %.loopexit247
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit247 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.nn = extractvalue { ptr, i32 } %lpad.phi, 0
  call void @__clang_call_terminate(ptr %i.nn) #40
  unreachable
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #18

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN4ncnn21UnlockedPoolAllocatorESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !290    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !293  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN4ncnn21UnlockedPoolAllocatorES1_EvT_S3_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.05.i.i = phi ptr [ %i.f, %.lr.ph.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !45
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %.05.i.i) #20, !inline_history !408
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.f, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN4ncnn21UnlockedPoolAllocatorES1_EvT_S3_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !295

_ZSt8_DestroyIPN4ncnn21UnlockedPoolAllocatorES1_EvT_S3_RSaIT0_E.exitthread-pre-split: ; preds = %.lr.ph.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !290
  br label %_ZSt8_DestroyIPN4ncnn21UnlockedPoolAllocatorES1_EvT_S3_RSaIT0_E.exit

_ZSt8_DestroyIPN4ncnn21UnlockedPoolAllocatorES1_EvT_S3_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN4ncnn21UnlockedPoolAllocatorES1_EvT_S3_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.g = phi ptr [ %.pr, %_ZSt8_DestroyIPN4ncnn21UnlockedPoolAllocatorES1_EvT_S3_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.g, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN4ncnn21UnlockedPoolAllocatorESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN4ncnn21UnlockedPoolAllocatorES1_EvT_S3_RSaIT0_E.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.g) #37
  br label %_ZNSt12_Vector_baseIN4ncnn21UnlockedPoolAllocatorESaIS1_EED2Ev.exit

_ZNSt12_Vector_baseIN4ncnn21UnlockedPoolAllocatorESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN4ncnn21UnlockedPoolAllocatorES1_EvT_S3_RSaIT0_E.exit, %bb.b
  ret void
}

declare void @_ZN4ncnn21UnlockedPoolAllocatorC1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #4

declare void @_ZN2cv6imreadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr dead_on_unwind writable sret(%"struct.cv::Mat") align 8, ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) local_unnamed_addr #4

declare void @_ZN4ncnn3Mat11from_pixelsEPKhiiiPNS_9AllocatorE(ptr dead_on_unwind writable sret(%"class.ncnn::Mat") align 8, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare void @_ZN4ncnn3Mat18from_pixels_resizeEPKhiiiiiPNS_9AllocatorE(ptr dead_on_unwind writable sret(%"class.ncnn::Mat") align 8, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN3npy8read_npyIfEENS_8npy_dataIT_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"struct.npy::npy_data") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #15 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::basic_ifstream", align 8 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1ERKNSt7__cxx1112basic_stringIcS1_SaIcEEESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(256) %2, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 4)
  %i.a = load ptr, ptr %2, align 8, !tbaa !45
  %i.b = getelementptr i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %2, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load i32, ptr %i.e, align 8, !tbaa !409
  %i.g = and i32 %i.f, 5
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull @.str.34)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @__cxa_throw(ptr nonnull %i.h, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #38
          to label %bb.i unwind label %bb.d

bb.d:                                             ; preds = %bb.f, %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.e:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.h) #20
  br label %bb.h

bb.f:                                             ; preds = %bb.a
  invoke void @_ZN3npy8read_npyIfEENS_8npy_dataIT_EERSi(ptr dead_on_unwind writable sret(%"struct.npy::npy_data") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.g unwind label %bb.d

bb.g:                                             ; preds = %bb.f
  %i.k = load ptr, ptr @_ZTTSt14basic_ifstreamIcSt11char_traitsIcEE, align 8 ; 2 uses
end_hunk_1
