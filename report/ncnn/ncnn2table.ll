inline.NumInlined: 3059
inline.NumDeleted: 1199
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 36
loop-unroll.NumUnrolled: 47
begin_hunk_0_@_ZN8QuantNet11quantize_KLEv.omp_outlined.26:bb.a
  %i.jm = add i64 %i.jl, %i.jj
  store i64 %i.jm, ptr %i.jk, align 8, !tbaa !354
  %indvars.iv.next168 = or disjoint i64 %indvars.iv167, 1 ; 2 uses
  %i.jn = getelementptr inbounds nuw [8 x i8], ptr %i.hi, i64 %indvars.iv.next168
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
  %i.bj = add i64 %indvar, 127
  %i.bk = sub i64 0, %indvar
  %i.bl = add i64 %indvar, 127
  %4 = shl nuw nsw i64 %indvar, 2
  %i.bm = shl nuw nsw i64 %indvars.iv299, 2       ; 4 uses
  %i.bn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bm) #39
          to label %.noexc unwind label %.loopexit247 ; 13 uses

.noexc:                                           ; preds = %.preheader246
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bm ; 2 uses
  %n.vec428 = and i64 %indvars.iv299, 9223372036854775800 ; 3 uses
  %i.bp = shl i64 %n.vec428, 2
  %i.bq = getelementptr i8, ptr %i.bn, i64 %i.bp
  br label %vector.body429

vector.body429:                                   ; preds = %vector.body429, %.noexc
  %index430 = phi i64 [ 0, %.noexc ], [ %index.next432, %vector.body429 ] ; 2 uses
  %i.br = shl i64 %index430, 2
  %next.gep431 = getelementptr i8, ptr %i.bn, i64 %i.br ; 2 uses
  %i.bs = getelementptr i8, ptr %next.gep431, i64 16
  store <4 x float> splat (float f0x38D1B717), ptr %next.gep431, align 4, !tbaa !161
  store <4 x float> splat (float f0x38D1B717), ptr %i.bs, align 4, !tbaa !161
  %index.next432 = add nuw i64 %index430, 8       ; 2 uses
  %i.bt = icmp eq i64 %index.next432, %n.vec428
  br i1 %i.bt, label %middle.block433, label %vector.body429, !llvm.loop !378

middle.block433:                                  ; preds = %vector.body429
  %cmp.n434 = icmp eq i64 %indvars.iv299, %n.vec428
  br i1 %cmp.n434, label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit.preheader, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %middle.block433, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.07.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bu, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.bq, %middle.block433 ] ; 2 uses
  store float f0x38D1B717, ptr %.07.i.i.i.i.i.i.i.i.i, align 4, !tbaa !161
  %i.bu = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bu, %i.bo
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit.preheader, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !379

_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit.preheader:  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %middle.block433
  %i.bv = load ptr, ptr %i.am, align 8, !tbaa !104 ; 13 uses
  %5 = getelementptr i8, ptr %i.bv, i64 %4
  %scevgep = getelementptr i8, ptr %5, i64 512
  %bound0 = icmp ult ptr %i.bn, %scevgep
  %bound1 = icmp ult ptr %i.bv, %i.bo
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit.preheader454, label %vector.ph414

vector.ph414:                                     ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit.preheader
  %n.vec415 = and i64 %indvars.iv299, 9223372036854775800 ; 3 uses
  br label %vector.body416

vector.body416:                                   ; preds = %vector.body416, %vector.ph414
  %index417 = phi i64 [ 0, %vector.ph414 ], [ %index.next422, %vector.body416 ] ; 3 uses
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %index417 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %wide.load418 = load <4 x float>, ptr %i.bw, align 4, !tbaa !161, !alias.scope !380
  %wide.load419 = load <4 x float>, ptr %i.bx, align 4, !tbaa !161, !alias.scope !380
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %index417 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16 ; 2 uses
  %wide.load420 = load <4 x float>, ptr %i.by, align 4, !tbaa !161, !alias.scope !383, !noalias !380
  %wide.load421 = load <4 x float>, ptr %i.bz, align 4, !tbaa !161, !alias.scope !383, !noalias !380
  %i.ca = fadd <4 x float> %wide.load418, %wide.load420
  %i.cb = fadd <4 x float> %wide.load419, %wide.load421
  store <4 x float> %i.ca, ptr %i.by, align 4, !tbaa !161, !alias.scope !383, !noalias !380
  store <4 x float> %i.cb, ptr %i.bz, align 4, !tbaa !161, !alias.scope !383, !noalias !380
  %index.next422 = add nuw i64 %index417, 8       ; 2 uses
  %i.cc = icmp eq i64 %index.next422, %n.vec415
  br i1 %i.cc, label %middle.block423, label %vector.body416, !llvm.loop !385

middle.block423:                                  ; preds = %vector.body416
  %cmp.n424 = icmp eq i64 %indvars.iv299, %n.vec415
  br i1 %cmp.n424, label %.lr.ph, label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit.preheader454

_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit.preheader454: ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit.preheader, %middle.block423
  %indvars.iv295.ph = phi i64 [ 0, %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit.preheader ], [ %n.vec415, %middle.block423 ] ; 3 uses
  %i.cd = sub i64 %i.bl, %indvars.iv295.ph
  %xtraiter = and i64 %indvars.iv299, 3           ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit.prol.loopexit, label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit.prol

_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit.prol:       ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit.preheader454, %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit.prol
  %indvars.iv295.prol = phi i64 [ %indvars.iv.next296.prol, %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit.prol ], [ %indvars.iv295.ph, %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit.preheader454 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit.prol ], [ 0, %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit.preheader454 ]
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %indvars.iv295.prol
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !161
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %indvars.iv295.prol ; 2 uses
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !161
  %i.ci = fadd float %i.cf, %i.ch
  store float %i.ci, ptr %i.cg, align 4, !tbaa !161
  %indvars.iv.next296.prol = add nuw nsw i64 %indvars.iv295.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit.prol.loopexit, label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit.prol, !llvm.loop !386

_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit.prol.loopexit: ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit.prol, %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit.preheader454
  %indvars.iv295.unr = phi i64 [ %indvars.iv295.ph, %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit.preheader454 ], [ %indvars.iv.next296.prol, %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit.prol ]
  %i.cj = icmp ult i64 %i.cd, 3
  br i1 %i.cj, label %.lr.ph, label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit

.lr.ph:                                           ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit.prol.loopexit, %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit, %middle.block423
  %i.ck = getelementptr [4 x i8], ptr %i.bn, i64 %indvars.iv299
  %i.cl = getelementptr i8, ptr %i.ck, i64 -4     ; 6 uses
  %.promoted = load float, ptr %i.cl, align 4, !tbaa !161 ; 2 uses
  %xtraiter460 = and i64 %i.bk, 3                 ; 2 uses
  %lcmp.mod461.not = icmp eq i64 %xtraiter460, 0
  br i1 %lcmp.mod461.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph, %.prol.preheader
  %indvars.iv301.prol = phi i64 [ %indvars.iv.next302.prol, %.prol.preheader ], [ %indvars.iv299, %.lr.ph ] ; 2 uses
  %i.cm = phi float [ %i.cp, %.prol.preheader ], [ %.promoted, %.lr.ph ]
  %prol.iter462 = phi i64 [ %prol.iter462.next, %.prol.preheader ], [ 0, %.lr.ph ]
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %indvars.iv301.prol
  %i.co = load float, ptr %i.cn, align 4, !tbaa !161
  %i.cp = fadd float %i.co, %i.cm                 ; 3 uses
  store float %i.cp, ptr %i.cl, align 4, !tbaa !161
  %indvars.iv.next302.prol = add nuw nsw i64 %indvars.iv301.prol, 1 ; 2 uses
  %prol.iter462.next = add i64 %prol.iter462, 1   ; 2 uses
  %prol.iter462.cmp.not = icmp eq i64 %prol.iter462.next, %xtraiter460
  br i1 %prol.iter462.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !387

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph
  %indvars.iv301.unr = phi i64 [ %indvars.iv299, %.lr.ph ], [ %indvars.iv.next302.prol, %.prol.preheader ]
  %.unr = phi float [ %.promoted, %.lr.ph ], [ %i.cp, %.prol.preheader ]
  %i.cq = add i64 %indvar, -1917
  %i.cr = icmp ult i64 %i.cq, 3
  br i1 %i.cr, label %._crit_edge, label %.lr.ph.new

_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit:            ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit.prol.loopexit, %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit
  %indvars.iv295 = phi i64 [ %indvars.iv.next296.3, %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit ], [ %indvars.iv295.unr, %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit.prol.loopexit ] ; 6 uses
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %indvars.iv295
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !161
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %indvars.iv295 ; 2 uses
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !161
  %i.cw = fadd float %i.ct, %i.cv
  store float %i.cw, ptr %i.cu, align 4, !tbaa !161
  %indvars.iv.next296 = add nuw nsw i64 %indvars.iv295, 1 ; 2 uses
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %indvars.iv.next296
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !161
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %indvars.iv.next296 ; 2 uses
  %i.da = load float, ptr %i.cz, align 4, !tbaa !161
  %i.db = fadd float %i.cy, %i.da
  store float %i.db, ptr %i.cz, align 4, !tbaa !161
  %indvars.iv.next296.1 = add nuw nsw i64 %indvars.iv295, 2 ; 2 uses
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %indvars.iv.next296.1
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !161
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %indvars.iv.next296.1 ; 2 uses
  %i.df = load float, ptr %i.de, align 4, !tbaa !161
  %i.dg = fadd float %i.dd, %i.df
  store float %i.dg, ptr %i.de, align 4, !tbaa !161
  %indvars.iv.next296.2 = add nuw nsw i64 %indvars.iv295, 3 ; 2 uses
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %indvars.iv.next296.2
  %i.di = load float, ptr %i.dh, align 4, !tbaa !161
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %indvars.iv.next296.2 ; 2 uses
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !161
  %i.dl = fadd float %i.di, %i.dk
  store float %i.dl, ptr %i.dj, align 4, !tbaa !161
  %indvars.iv.next296.3 = add nuw nsw i64 %indvars.iv295, 4 ; 2 uses
  %exitcond298.not.3 = icmp eq i64 %indvars.iv.next296.3, %indvars.iv299
  br i1 %exitcond298.not.3, label %.lr.ph, label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit, !llvm.loop !388

._crit_edge:                                      ; preds = %.lr.ph.new, %.prol.loopexit
  %i.dm = trunc nuw nsw i64 %indvars.iv299 to i32 ; 3 uses
  %i.dn = uitofp nneg i32 %i.dm to float          ; 2 uses
  %i.do = fmul nnan float %i.dn, 7.812500e-03     ; 7 uses
  %i.dp = invoke noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #39
          to label %.lr.ph.i.i.i.i.i.i.i.i.i198.preheader unwind label %.loopexit247 ; 21 uses

.lr.ph.i.i.i.i.i.i.i.i.i198.preheader:            ; preds = %._crit_edge
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(512) %i.dp, i8 0, i64 512, i1 false), !tbaa !161
  %i.dq = call noundef float @llvm.floor.f32(float %i.do)
  %i.dr = fptosi float %i.dq to i32               ; 8 uses
  %i.ds = sitofp i32 %i.dr to float               ; 2 uses
  %i.dt = fsub float %i.do, %i.ds                 ; 4 uses
  %i.du = fcmp ogt float %i.dt, 0.000000e+00      ; 2 uses
  br i1 %i.du, label %bb.d, label %bb.e

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %indvars.iv301 = phi i64 [ %indvars.iv.next302.3, %.lr.ph.new ], [ %indvars.iv301.unr, %.prol.loopexit ] ; 5 uses
  %i.dv = phi float [ %i.ek, %.lr.ph.new ], [ %.unr, %.prol.loopexit ]
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %indvars.iv301
  %i.dx = load float, ptr %i.dw, align 4, !tbaa !161
  %i.dy = fadd float %i.dx, %i.dv                 ; 2 uses
  store float %i.dy, ptr %i.cl, align 4, !tbaa !161
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %indvars.iv301
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 4
  %i.eb = load float, ptr %i.ea, align 4, !tbaa !161
  %i.ec = fadd float %i.eb, %i.dy                 ; 2 uses
  store float %i.ec, ptr %i.cl, align 4, !tbaa !161
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %indvars.iv301
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  %i.ef = load float, ptr %i.ee, align 4, !tbaa !161
  %i.eg = fadd float %i.ef, %i.ec                 ; 2 uses
  store float %i.eg, ptr %i.cl, align 4, !tbaa !161
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %indvars.iv301
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 12
  %i.ej = load float, ptr %i.ei, align 4, !tbaa !161
  %i.ek = fadd float %i.ej, %i.eg                 ; 2 uses
  store float %i.ek, ptr %i.cl, align 4, !tbaa !161
  %indvars.iv.next302.3 = add nuw nsw i64 %indvars.iv301, 4 ; 2 uses
  %exitcond304.not.3 = icmp eq i64 %indvars.iv.next302.3, 2048
  br i1 %exitcond304.not.3, label %._crit_edge, label %.lr.ph.new, !llvm.loop !389

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i198.preheader
  %i.el = sext i32 %i.dr to i64
  %i.em = load ptr, ptr %i.am, align 8, !tbaa !104
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %i.el
  %i.eo = load float, ptr %i.en, align 4, !tbaa !161
  %i.ep = call float @llvm.fmuladd.f32(float %i.dt, float %i.eo, float 0.000000e+00) ; 2 uses
  store float %i.ep, ptr %i.dp, align 4, !tbaa !161
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.i.i.i.i.i.i.i.i.i198.preheader
  %.promoted259 = phi float [ %i.ep, %bb.d ], [ 0.000000e+00, %.lr.ph.i.i.i.i.i.i.i.i.i198.preheader ] ; 3 uses
  %i.eq = icmp sgt i32 %i.dr, 0                   ; 2 uses
  br i1 %i.eq, label %.lr.ph257, label %._crit_edge258

.lr.ph257:                                        ; preds = %bb.e
  %i.er = load ptr, ptr %i.am, align 8, !tbaa !104 ; 5 uses
  %wide.trip.count308 = zext nneg i32 %i.dr to i64 ; 2 uses
  %xtraiter463 = and i64 %wide.trip.count308, 3   ; 3 uses
  %i.es = icmp ult i32 %i.dr, 4
  br i1 %i.es, label %.epil.preheader, label %.lr.ph257.new

.lr.ph257.new:                                    ; preds = %.lr.ph257
  %unroll_iter = and i64 %wide.trip.count308, 2147483644
  br label %bb.g

._crit_edge258.loopexit.unr-lcssa:                ; preds = %bb.g
  %lcmp.mod465.not = icmp eq i64 %xtraiter463, 0
  br i1 %lcmp.mod465.not, label %._crit_edge258, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge258.loopexit.unr-lcssa, %.lr.ph257
  %indvars.iv305.epil.init = phi i64 [ 0, %.lr.ph257 ], [ %indvars.iv.next306.3, %._crit_edge258.loopexit.unr-lcssa ]
  %.epil.init = phi float [ %.promoted259, %.lr.ph257 ], [ %i.fp, %._crit_edge258.loopexit.unr-lcssa ]
  %lcmp.mod467 = icmp ne i64 %xtraiter463, 0
  call void @llvm.assume(i1 %lcmp.mod467)
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.epil.preheader
  %indvars.iv305.epil = phi i64 [ %indvars.iv305.epil.init, %.epil.preheader ], [ %indvars.iv.next306.epil, %bb.f ] ; 2 uses
  %i.et = phi float [ %.epil.init, %.epil.preheader ], [ %i.ew, %bb.f ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.f ]
end_hunk_0
