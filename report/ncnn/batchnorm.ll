Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/batchnorm?download=true
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN4ncnn9BatchNorm10load_modelERKNS_8ModelBinE:bb.a
bb.bx:                                            ; preds = %bb.bw
  %i.id = atomicrmw add ptr %i.ho, i32 -1 acq_rel, align 4
  %i.ie = icmp eq i32 %i.id, 1
  br i1 %i.ie, label %bb.by, label %_ZN4ncnn3MatD2Ev.exit25

bb.by:                                            ; preds = %bb.bx
  %i.if = load ptr, ptr %i.hu, align 16, !tbaa !17 ; 3 uses
  %.not3.i53 = icmp eq ptr %i.if, null
  %i.ig = load ptr, ptr %5, align 16, !tbaa !18   ; 3 uses
  br i1 %.not3.i53, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.ih = load ptr, ptr %i.if, align 8, !tbaa !9
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 24
  %i.ij = load ptr, ptr %i.ii, align 8
  invoke void %i.ij(ptr noundef nonnull align 8 dereferenceable(8) %i.if, ptr noundef %i.ig)
          to label %_ZN4ncnn3MatD2Ev.exit25 unwind label %bb.cc, !inline_history !19

bb.ca:                                            ; preds = %bb.by
  %.not.i61 = icmp eq ptr %i.ig, null
  br i1 %.not.i61, label %_ZN4ncnn3MatD2Ev.exit25, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  call void @free(ptr noundef nonnull %i.ig) #11
  br label %_ZN4ncnn3MatD2Ev.exit25

bb.cc:                                            ; preds = %bb.bz
  %i.ik = landingpad { ptr, i32 }
          catch ptr null
  %i.il = extractvalue { ptr, i32 } %i.ik, 0
  call void @__clang_call_terminate(ptr %i.il) #14
  unreachable

_ZN4ncnn3MatD2Ev.exit25:                          ; preds = %bb.bx, %bb.bw, %bb.bz, %bb.ca, %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  %i.im = load ptr, ptr %i.gv, align 8, !tbaa !18
  %i.in = icmp eq ptr %i.im, null
  br i1 %i.in, label %_ZNK4ncnn3Mat5emptyEv.exit102.thread, label %_ZNK4ncnn3Mat5emptyEv.exit99

_ZNK4ncnn3Mat5emptyEv.exit99:                     ; preds = %_ZN4ncnn3MatD2Ev.exit25
  %i.io = load i64, ptr %i.hn, align 8, !tbaa !20
  %i.ip = load i32, ptr %i.hm, align 8, !tbaa !44
  %i.iq = sext i32 %i.ip to i64
  %i.ir = mul i64 %i.io, %i.iq
  %i.is = icmp eq i64 %i.ir, 0
  br i1 %i.is, label %_ZNK4ncnn3Mat5emptyEv.exit102.thread, label %bb.ck

bb.cd:                                            ; preds = %bb.bt
  %i.it = landingpad { ptr, i32 }
          cleanup
  %i.iu = load ptr, ptr %i.gw, align 8, !tbaa !11 ; 2 uses
  %.not.i56 = icmp eq ptr %i.iu, null
  br i1 %.not.i56, label %_ZN4ncnn3MatD2Ev.exit, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.iv = atomicrmw add ptr %i.iu, i32 -1 acq_rel, align 4
  %i.iw = icmp eq i32 %i.iv, 1
  br i1 %i.iw, label %bb.cf, label %_ZN4ncnn3MatD2Ev.exit

bb.cf:                                            ; preds = %bb.ce
  %i.ix = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.iy = load ptr, ptr %i.ix, align 16, !tbaa !17 ; 3 uses
  %.not3.i57 = icmp eq ptr %i.iy, null
  %i.iz = load ptr, ptr %5, align 16, !tbaa !18   ; 3 uses
  br i1 %.not3.i57, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.ja = load ptr, ptr %i.iy, align 8, !tbaa !9
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 24
  %i.jc = load ptr, ptr %i.jb, align 8
  invoke void %i.jc(ptr noundef nonnull align 8 dereferenceable(8) %i.iy, ptr noundef %i.iz)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.cj, !inline_history !19

bb.ch:                                            ; preds = %bb.cf
  %.not.i60 = icmp eq ptr %i.iz, null
  br i1 %.not.i60, label %_ZN4ncnn3MatD2Ev.exit, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  call void @free(ptr noundef nonnull %i.iz) #11
  br label %_ZN4ncnn3MatD2Ev.exit

bb.cj:                                            ; preds = %bb.cg
  %i.jd = landingpad { ptr, i32 }
          catch ptr null
  %i.je = extractvalue { ptr, i32 } %i.jd, 0
  call void @__clang_call_terminate(ptr %i.je) #14
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.ce, %bb.cd, %bb.cg, %bb.ch, %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  br label %bb.cm

bb.ck:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit99
  %i.jf = getelementptr inbounds nuw i8, ptr %0, i64 504 ; 3 uses
  %i.jg = load i32, ptr %i.a, align 8, !tbaa !21
  call void @_ZN4ncnn3Mat6createEimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.jf, i32 noundef %i.jg, i64 noundef 4, ptr noundef null)
  %i.jh = load ptr, ptr %i.jf, align 8, !tbaa !18
  %i.ji = icmp eq ptr %i.jh, null
  br i1 %i.ji, label %_ZNK4ncnn3Mat5emptyEv.exit102.thread, label %_ZNK4ncnn3Mat5emptyEv.exit98

_ZNK4ncnn3Mat5emptyEv.exit98:                     ; preds = %bb.ck
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.jk = load i64, ptr %i.jj, align 8, !tbaa !20
  %i.jl = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.jm = load i32, ptr %i.jl, align 8, !tbaa !44
  %i.jn = sext i32 %i.jm to i64
  %i.jo = mul i64 %i.jk, %i.jn
  %i.jp = icmp eq i64 %i.jo, 0
  br i1 %i.jp, label %_ZNK4ncnn3Mat5emptyEv.exit102.thread, label %bb.cl

bb.cl:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit98
  %i.jq = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 2 uses
  %i.jr = load i32, ptr %i.a, align 8, !tbaa !21
  call void @_ZN4ncnn3Mat6createEimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.jq, i32 noundef %i.jr, i64 noundef 4, ptr noundef null)
  %i.js = load ptr, ptr %i.jq, align 8, !tbaa !18 ; 6 uses
  %i.jt = icmp eq ptr %i.js, null
  br i1 %i.jt, label %_ZNK4ncnn3Mat5emptyEv.exit102.thread, label %_ZNK4ncnn3Mat5emptyEv.exit

_ZNK4ncnn3Mat5emptyEv.exit:                       ; preds = %bb.cl
  %i.ju = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.jv = load i64, ptr %i.ju, align 8, !tbaa !20
  %i.jw = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.jx = load i32, ptr %i.jw, align 8, !tbaa !44
  %i.jy = sext i32 %i.jx to i64
  %i.jz = mul i64 %i.jv, %i.jy
  %i.ka = icmp eq i64 %i.jz, 0
  br i1 %i.ka, label %_ZNK4ncnn3Mat5emptyEv.exit102.thread, label %.preheader

.preheader:                                       ; preds = %_ZNK4ncnn3Mat5emptyEv.exit
  %i.kb = load i32, ptr %i.a, align 8, !tbaa !21  ; 3 uses
  %i.kc = icmp sgt i32 %i.kb, 0
  br i1 %i.kc, label %.lr.ph, label %_ZNK4ncnn3Mat5emptyEv.exit102.thread

.lr.ph:                                           ; preds = %.preheader
  %i.kd = load ptr, ptr %i.eh, align 8, !tbaa !18 ; 5 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %0, i64 212 ; 4 uses
  %i.kf = load ptr, ptr %i.gv, align 8, !tbaa !18 ; 5 uses
  %i.kg = load ptr, ptr %i.f, align 8, !tbaa !18  ; 5 uses
  %i.kh = load ptr, ptr %i.bt, align 8, !tbaa !18 ; 5 uses
  %i.ki = load ptr, ptr %i.jf, align 8, !tbaa !18 ; 6 uses
  %wide.trip.count = zext nneg i32 %i.kb to i64   ; 4 uses
  %min.iters.check = icmp ult i32 %i.kb, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.kj = shl nuw nsw i64 %wide.trip.count, 2     ; 6 uses
  %scevgep = getelementptr i8, ptr %i.ki, i64 %i.kj ; 3 uses
  %scevgep147 = getelementptr i8, ptr %i.js, i64 %i.kj ; 2 uses
  %scevgep148 = getelementptr i8, ptr %i.kd, i64 %i.kj ; 2 uses
  %scevgep149 = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %scevgep150 = getelementptr i8, ptr %i.kf, i64 %i.kj ; 2 uses
  %scevgep151 = getelementptr i8, ptr %i.kg, i64 %i.kj ; 2 uses
  %scevgep152 = getelementptr i8, ptr %i.kh, i64 %i.kj ; 2 uses
  %i.kk = insertelement <4 x ptr> poison, ptr %i.ki, i64 0
  %i.kl = shufflevector <4 x ptr> %i.kk, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.km = insertelement <4 x ptr> poison, ptr %scevgep147, i64 0 ; 2 uses
  %i.kn = insertelement <4 x ptr> %i.km, ptr %scevgep148, i64 1
  %i.ko = insertelement <4 x ptr> %i.kn, ptr %scevgep149, i64 2
  %i.kp = insertelement <4 x ptr> %i.ko, ptr %scevgep150, i64 3
  %i.kq = icmp ult <4 x ptr> %i.kl, %i.kp
  %i.kr = insertelement <4 x ptr> poison, ptr %i.js, i64 0 ; 2 uses
  %i.ks = insertelement <4 x ptr> %i.kr, ptr %i.kd, i64 1
  %i.kt = insertelement <4 x ptr> %i.ks, ptr %i.ke, i64 2
  %i.ku = insertelement <4 x ptr> %i.kt, ptr %i.kf, i64 3
  %i.kv = insertelement <4 x ptr> poison, ptr %scevgep, i64 0
  %i.kw = shufflevector <4 x ptr> %i.kv, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.kx = icmp ult <4 x ptr> %i.ku, %i.kw
  %i.ky = and <4 x i1> %i.kq, %i.kx
  %bound0164 = icmp ult ptr %i.ki, %scevgep151
  %bound1165 = icmp ult ptr %i.kg, %scevgep
  %found.conflict166 = and i1 %bound0164, %bound1165
  %bound0168 = icmp ult ptr %i.ki, %scevgep152
  %bound1169 = icmp ult ptr %i.kh, %scevgep
  %found.conflict170 = and i1 %bound0168, %bound1169
  %i.kz = shufflevector <4 x ptr> %i.kr, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.la = insertelement <4 x ptr> poison, ptr %scevgep148, i64 0
  %i.lb = insertelement <4 x ptr> %i.la, ptr %scevgep149, i64 1
  %i.lc = insertelement <4 x ptr> %i.lb, ptr %scevgep150, i64 2
  %i.ld = insertelement <4 x ptr> %i.lc, ptr %scevgep151, i64 3
  %i.le = icmp ult <4 x ptr> %i.kz, %i.ld
  %i.lf = insertelement <4 x ptr> poison, ptr %i.kd, i64 0
  %i.lg = insertelement <4 x ptr> %i.lf, ptr %i.ke, i64 1
  %i.lh = insertelement <4 x ptr> %i.lg, ptr %i.kf, i64 2
  %i.li = insertelement <4 x ptr> %i.lh, ptr %i.kg, i64 3
  %i.lj = shufflevector <4 x ptr> %i.km, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.lk = icmp ult <4 x ptr> %i.li, %i.lj
  %i.ll = and <4 x i1> %i.le, %i.lk
  %bound0188 = icmp ult ptr %i.js, %scevgep152
  %bound1189 = icmp ult ptr %i.kh, %scevgep147
  %found.conflict190 = and i1 %bound0188, %bound1189
  %rdx.op = or <4 x i1> %i.ky, %i.ll
  %i.lm = bitcast <4 x i1> %rdx.op to i4
  %i.ln = icmp ne i4 %i.lm, 0
  %op.rdx = or i1 %i.ln, %found.conflict166
  %op.rdx196 = or i1 %found.conflict170, %found.conflict190
  %op.rdx197 = or i1 %op.rdx, %op.rdx196
  br i1 %op.rdx197, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %6 = load float, ptr %i.ke, align 4, !tbaa !38, !alias.scope !45
  %broadcast.splatinsert = insertelement <4 x float> poison, float %6, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 7 uses
  %i.lo = getelementptr inbounds nuw [4 x i8], ptr %i.kd, i64 %index
  %wide.load = load <4 x float>, ptr %i.lo, align 4, !tbaa !48, !alias.scope !49
  %i.lp = fadd fast <4 x float> %broadcast.splat, %wide.load ; 2 uses
  %i.lq = call fast <4 x float> @llvm.sqrt.v4f32(<4 x float> %i.lp)
  %i.lr = fcmp fast oeq <4 x float> %i.lp, zeroinitializer
  %i.ls = select nsz <4 x i1> %i.lr, <4 x float> splat (float f0x38D1B717), <4 x float> %i.lq ; 2 uses
  %i.lt = getelementptr inbounds nuw [4 x i8], ptr %i.kf, i64 %index
  %wide.load192 = load <4 x float>, ptr %i.lt, align 4, !tbaa !48, !alias.scope !51
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %i.kg, i64 %index ; 2 uses
  %wide.load193 = load <4 x float>, ptr %i.lu, align 4, !tbaa !48, !alias.scope !53
  %i.lv = getelementptr inbounds nuw [4 x i8], ptr %i.kh, i64 %index
  %wide.load194 = load <4 x float>, ptr %i.lv, align 4, !tbaa !48, !alias.scope !55
  %i.lw = fmul fast <4 x float> %wide.load194, %wide.load193
  %i.lx = fdiv fast <4 x float> %i.lw, %i.ls
  %i.ly = fsub fast <4 x float> %wide.load192, %i.lx
  %i.lz = getelementptr inbounds nuw [4 x i8], ptr %i.ki, i64 %index
  store <4 x float> %i.ly, ptr %i.lz, align 4, !tbaa !48, !alias.scope !57, !noalias !59
  %wide.load195 = load <4 x float>, ptr %i.lu, align 4, !tbaa !48, !alias.scope !53
  %i.ma = fdiv fast <4 x float> %wide.load195, %i.ls
  %i.mb = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %index
  store <4 x float> %i.ma, ptr %i.mb, align 4, !tbaa !48, !alias.scope !61, !noalias !62
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.mc = icmp eq i64 %index.next, %n.vec
  br i1 %i.mc, label %middle.block, label %vector.body, !llvm.loop !63

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %_ZNK4ncnn3Mat5emptyEv.exit102.thread, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 7 uses
  %i.md = getelementptr inbounds nuw [4 x i8], ptr %i.kd, i64 %indvars.iv
  %i.me = load float, ptr %i.md, align 4, !tbaa !48
  %i.mf = load float, ptr %i.ke, align 4, !tbaa !38
  %i.mg = fadd fast float %i.mf, %i.me            ; 2 uses
  %i.mh = call fast float @llvm.sqrt.f32(float %i.mg)
  %i.mi = fcmp fast oeq float %i.mg, 0.000000e+00
  %.0 = select nsz i1 %i.mi, float f0x38D1B717, float %i.mh ; 2 uses
  %i.mj = getelementptr inbounds nuw [4 x i8], ptr %i.kf, i64 %indvars.iv
  %i.mk = load float, ptr %i.mj, align 4, !tbaa !48
  %i.ml = getelementptr inbounds nuw [4 x i8], ptr %i.kg, i64 %indvars.iv ; 2 uses
  %i.mm = load float, ptr %i.ml, align 4, !tbaa !48
  %i.mn = getelementptr inbounds nuw [4 x i8], ptr %i.kh, i64 %indvars.iv
  %i.mo = load float, ptr %i.mn, align 4, !tbaa !48
  %i.mp = fmul fast float %i.mo, %i.mm
  %i.mq = fdiv fast float %i.mp, %.0
  %i.mr = fsub fast float %i.mk, %i.mq
  %i.ms = getelementptr inbounds nuw [4 x i8], ptr %i.ki, i64 %indvars.iv
  store float %i.mr, ptr %i.ms, align 4, !tbaa !48
  %i.mt = load float, ptr %i.ml, align 4, !tbaa !48
  %i.mu = fdiv fast float %i.mt, %.0
  %i.mv = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %indvars.iv
  store float %i.mu, ptr %i.mv, align 4, !tbaa !48
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %_ZNK4ncnn3Mat5emptyEv.exit102.thread, label %scalar.ph, !llvm.loop !67

_ZNK4ncnn3Mat5emptyEv.exit102.thread:             ; preds = %scalar.ph, %middle.block, %.preheader, %bb.cl, %bb.ck, %_ZN4ncnn3MatD2Ev.exit25, %_ZN4ncnn3MatD2Ev.exit27, %_ZN4ncnn3MatD2Ev.exit29, %_ZN4ncnn3MatD2Ev.exit31, %_ZNK4ncnn3Mat5emptyEv.exit, %_ZNK4ncnn3Mat5emptyEv.exit98, %_ZNK4ncnn3Mat5emptyEv.exit99, %_ZNK4ncnn3Mat5emptyEv.exit100, %_ZNK4ncnn3Mat5emptyEv.exit101, %_ZNK4ncnn3Mat5emptyEv.exit102
  %.022 = phi i32 [ -100, %_ZNK4ncnn3Mat5emptyEv.exit ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit102 ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit101 ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit100 ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit99 ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit98 ], [ -100, %bb.cl ], [ -100, %bb.ck ], [ -100, %_ZN4ncnn3MatD2Ev.exit31 ], [ -100, %_ZN4ncnn3MatD2Ev.exit29 ], [ -100, %_ZN4ncnn3MatD2Ev.exit27 ], [ -100, %_ZN4ncnn3MatD2Ev.exit25 ], [ 0, %.preheader ], [ 0, %middle.block ], [ 0, %scalar.ph ]
  ret i32 %.022

bb.cm:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit, %_ZN4ncnn3MatD2Ev.exit26, %_ZN4ncnn3MatD2Ev.exit28, %_ZN4ncnn3MatD2Ev.exit30
  %.pn = phi { ptr, i32 } [ %i.it, %_ZN4ncnn3MatD2Ev.exit ], [ %i.gf, %_ZN4ncnn3MatD2Ev.exit26 ], [ %i.dr, %_ZN4ncnn3MatD2Ev.exit28 ], [ %i.bd, %_ZN4ncnn3MatD2Ev.exit30 ]
  resume { ptr, i32 } %.pn
}

declare noundef i32 @_ZN4ncnn5Layer15create_pipelineERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #2

declare noundef i32 @_ZN4ncnn5Layer16destroy_pipelineERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #2

declare noundef i32 @_ZNK4ncnn5Layer7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #2

declare noundef i32 @_ZNK4ncnn5Layer7forwardERKNS_3MatERS1_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #2

declare noundef i32 @_ZNK4ncnn5Layer15forward_inplaceERSt6vectorINS_3MatESaIS2_EERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZNK4ncnn9BatchNorm15forward_inplaceERNS_3MatERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(648) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %2) unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2) ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.i = load i32, ptr %i.h, align 8, !tbaa !68   ; 2 uses
  switch i32 %i.i, label %bb.d [
    i32 1, label %bb.b
    i32 2, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.k = load i32, ptr %i.j, align 4, !tbaa !69
  store i32 %i.k, ptr %i.a, align 4, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %i.l = load ptr, ptr %1, align 8, !tbaa !18
  store ptr %i.l, ptr %i.b, align 8, !tbaa !70
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !72
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.g, i32 %i.n)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 3, ptr nonnull @_ZNK4ncnn9BatchNorm15forward_inplaceERNS_3MatERKNS_6OptionE.omp_outlined, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %.thread

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.p = load i32, ptr %i.o, align 4, !tbaa !69
  store i32 %i.p, ptr %i.c, align 4, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.r = load i32, ptr %i.q, align 8, !tbaa !74
  store i32 %i.r, ptr %i.d, align 4, !tbaa !43
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !72
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.g, i32 %i.t)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 4, ptr nonnull @_ZNK4ncnn9BatchNorm15forward_inplaceERNS_3MatERKNS_6OptionE.omp_outlined.1, ptr nonnull %i.d, ptr nonnull %1, ptr nonnull %0, ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  br label %.thread

bb.d:                                             ; preds = %bb.a
  %i.u = add i32 %i.i, -3
  %or.cond = icmp ult i32 %i.u, 2
  br i1 %or.cond, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.w = load i32, ptr %i.v, align 4, !tbaa !69
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.y = load i32, ptr %i.x, align 8, !tbaa !74
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #11
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !44
  store i32 %i.ac, ptr %i.e, align 4, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #11
  %i.ad = mul nsw i32 %i.y, %i.w
  %i.ae = mul nsw i32 %i.ad, %i.aa
  store i32 %i.ae, ptr %i.f, align 4, !tbaa !43
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !72
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.g, i32 %i.ag)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 4, ptr nonnull @_ZNK4ncnn9BatchNorm15forward_inplaceERNS_3MatERKNS_6OptionE.omp_outlined.2, ptr nonnull %i.e, ptr nonnull %1, ptr nonnull %0, ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.b, %bb.d, %bb.e
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4ncnn9BatchNormC2Ev(ptr noundef nonnull align 8 dereferenceable(648) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN4ncnn5LayerC2Ev(ptr noundef nonnull align 8 dereferenceable(208) %0)
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN4ncnn9BatchNormE, i64 16), ptr %0, align 8, !tbaa !9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 640
  store i64 0, ptr %i.m, align 8, !tbaa !20
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.a, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.b, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.c, i8 0, i64 36, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.d, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.e, i8 0, i64 36, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.f, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.g, i8 0, i64 36, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.h, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.i, i8 0, i64 36, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.j, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.k, i8 0, i64 36, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.l, i8 0, i64 28, i1 false)
  store i8 1, ptr %i.n, align 8, !tbaa !76
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 1, ptr %i.o, align 1, !tbaa !77
  ret void
}

declare void @_ZN4ncnn5LayerC2Ev(ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
declare void @_ZN4ncnn5LayerD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208)) unnamed_addr #4

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #11 ; 0 uses
  tail call void @_ZSt9terminatev() #14
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #6

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #7

declare noundef i32 @_ZNK4ncnn9ParamDict3getEii(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, i32 noundef) local_unnamed_addr #2

declare noundef nofpclass(nan inf) float @_ZNK4ncnn9ParamDict3getEif(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, float noundef nofpclass(nan inf)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #8

declare void @_ZN4ncnn3Mat6createEimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #9

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn9BatchNorm15forward_inplaceERNS_3MatERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef readonly captures(none) %4) #10 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !43     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store i32 0, ptr %i.a, align 4, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  store i32 %i.g, ptr %i.b, align 4, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  store i32 1, ptr %i.c, align 4, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  store i32 0, ptr %i.d, align 4, !tbaa !43
  %i.h = load i32, ptr %0, align 4, !tbaa !43     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !43
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 7 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !43
  %i.k = load i32, ptr %i.a, align 4, !tbaa !43   ; 4 uses
  %.not16 = icmp sgt i32 %i.k, %i.j
  br i1 %.not16, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 576
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !18   ; 6 uses
  %i.n = load ptr, ptr %3, align 8, !tbaa !70     ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 504
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !18   ; 6 uses
  %i.q = sext i32 %i.k to i64                     ; 6 uses
  %i.r = add nsw i32 %i.j, 1
  %i.s = sub i32 %i.j, %i.k                       ; 2 uses
  %i.t = zext i32 %i.s to i64
  %i.u = add nuw nsw i64 %i.t, 1                  ; 2 uses
  %min.iters.check = icmp ult i32 %i.s, 11
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.v = shl nsw i64 %i.q, 2                      ; 3 uses
  %scevgep = getelementptr i8, ptr %i.n, i64 %i.v ; 2 uses
  %i.w = sub i32 %i.j, %i.k
  %i.x = zext i32 %i.w to i64
  %i.y = add nsw i64 %i.q, %i.x
  %i.z = shl nsw i64 %i.y, 2
  %i.aa = add nsw i64 %i.z, 4                     ; 3 uses
  %scevgep21 = getelementptr i8, ptr %i.n, i64 %i.aa ; 2 uses
  %scevgep22 = getelementptr nuw i8, ptr %i.m, i64 %i.v
  %scevgep23 = getelementptr i8, ptr %i.m, i64 %i.aa
  %scevgep24 = getelementptr nuw i8, ptr %i.p, i64 %i.v
  %scevgep25 = getelementptr i8, ptr %i.p, i64 %i.aa
  %bound0 = icmp ult ptr %scevgep, %scevgep23
  %bound1 = icmp ult ptr %scevgep22, %scevgep21
  %found.conflict = and i1 %bound0, %bound1
  %bound026 = icmp ult ptr %scevgep, %scevgep25
  %bound127 = icmp ult ptr %scevgep24, %scevgep21
  %found.conflict28 = and i1 %bound026, %bound127
  %conflict.rdx = or i1 %found.conflict, %found.conflict28
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.u, 8589934584               ; 3 uses
  %i.ab = add nsw i64 %n.vec, %i.q
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ac = add i64 %index, %i.q                    ; 3 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.ac ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %wide.load = load <4 x float>, ptr %i.ad, align 4, !tbaa !48, !alias.scope !78
  %wide.load29 = load <4 x float>, ptr %i.ae, align 4, !tbaa !48, !alias.scope !78
  %i.af = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.ac ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 2 uses
  %wide.load30 = load <4 x float>, ptr %i.af, align 4, !tbaa !48, !alias.scope !81, !noalias !83
  %wide.load31 = load <4 x float>, ptr %i.ag, align 4, !tbaa !48, !alias.scope !81, !noalias !83
  %i.ah = fmul fast <4 x float> %wide.load30, %wide.load
  %i.ai = fmul fast <4 x float> %wide.load31, %wide.load29
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.ac ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %wide.load32 = load <4 x float>, ptr %i.aj, align 4, !tbaa !48, !alias.scope !85
  %wide.load33 = load <4 x float>, ptr %i.ak, align 4, !tbaa !48, !alias.scope !85
  %i.al = fadd fast <4 x float> %wide.load32, %i.ah
  %i.am = fadd fast <4 x float> %wide.load33, %i.ai
  store <4 x float> %i.al, ptr %i.af, align 4, !tbaa !48, !alias.scope !81, !noalias !83
  store <4 x float> %i.am, ptr %i.ag, align 4, !tbaa !48, !alias.scope !81, !noalias !83
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !86

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.u, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ %i.q, %vector.memcheck ], [ %i.q, %.lr.ph ], [ %i.ab, %middle.block ] ; 6 uses
  %i.ao = trunc i64 %indvars.iv.ph to i32         ; 2 uses
  %i.ap = add i32 %i.j, %i.ao
  %i.aq = and i32 %i.ap, 1
  %lcmp.mod.not.not = icmp eq i32 %i.aq, 0
  br i1 %lcmp.mod.not.not, label %scalar.ph.prol, label %scalar.ph.prol.loopexit

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.ph
  %i.as = load float, ptr %i.ar, align 4, !tbaa !48
  %i.at = getelementptr inbounds [4 x i8], ptr %i.n, i64 %indvars.iv.ph ; 2 uses
  %i.au = load float, ptr %i.at, align 4, !tbaa !48
  %i.av = fmul fast float %i.au, %i.as
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv.ph
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !48
  %i.ay = fadd fast float %i.ax, %i.av
  store float %i.ay, ptr %i.at, align 4, !tbaa !48
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.az = icmp eq i32 %i.j, %i.ao
  br i1 %i.az, label %._crit_edge, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !48
  %i.bc = getelementptr inbounds [4 x i8], ptr %i.n, i64 %indvars.iv ; 2 uses
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !48
  %i.be = fmul fast float %i.bd, %i.bb
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !48
  %i.bh = fadd fast float %i.bg, %i.be
  store float %i.bh, ptr %i.bc, align 4, !tbaa !48
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 3 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.next
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !48
  %i.bk = getelementptr inbounds [4 x i8], ptr %i.n, i64 %indvars.iv.next ; 2 uses
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !48
  %i.bm = fmul fast float %i.bl, %i.bj
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv.next
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !48
  %i.bp = fadd fast float %i.bo, %i.bm
  store float %i.bp, ptr %i.bk, align 4, !tbaa !48
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, 2 ; 2 uses
  %lftr.wideiv.1 = trunc i64 %indvars.iv.next.1 to i32
  %exitcond.not.1 = icmp eq i32 %i.r, %lftr.wideiv.1
  br i1 %exitcond.not.1, label %._crit_edge, label %scalar.ph, !llvm.loop !87

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_4(ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32) local_unnamed_addr #11

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #11

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #11

; Function Attrs: nounwind
declare void @__kmpc_push_num_threads(ptr, i32, i32) local_unnamed_addr #11

; Function Attrs: nounwind
declare !callback !88 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #11

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn9BatchNorm15forward_inplaceERNS_3MatERKNS_6OptionE.omp_outlined.1(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5) #10 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !43     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store i32 0, ptr %i.a, align 4, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  store i32 %i.g, ptr %i.b, align 4, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  store i32 1, ptr %i.c, align 4, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  store i32 0, ptr %i.d, align 4, !tbaa !43
  %i.h = load i32, ptr %0, align 4, !tbaa !43     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !43
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !43
  %i.k = load i32, ptr %i.a, align 4, !tbaa !43   ; 2 uses
  %.not27 = icmp sgt i32 %i.k, %i.j
  br i1 %.not27, label %._crit_edge31.split, label %.lr.ph30

.lr.ph30:                                         ; preds = %bb.b
  %i.l = load ptr, ptr %3, align 8, !tbaa !18
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.n = load i32, ptr %i.m, align 4, !tbaa !69
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.q = load i64, ptr %i.p, align 8, !tbaa !41
  %factor.op.mul = mul i64 %i.q, %i.o
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 504
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !18
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 576
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !18
  %i.v = load i32, ptr %5, align 4, !tbaa !43     ; 3 uses
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %.lr.ph.preheader, label %._crit_edge31.split

.lr.ph.preheader:                                 ; preds = %.lr.ph30
  %i.x = sext i32 %i.k to i64
  %i.y = add nsw i32 %i.j, 1
  %wide.trip.count = zext nneg i32 %i.v to i64    ; 3 uses
  %min.iters.check = icmp ult i32 %i.v, 8
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv33 = phi i64 [ %i.x, %.lr.ph.preheader ], [ %indvars.iv.next34, %._crit_edge ] ; 4 uses
  %.reass = mul i64 %factor.op.mul, %indvars.iv33
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass ; 2 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv33
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !48 ; 2 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv33
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !48 ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.ab, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert40 = insertelement <4 x float> poison, float %i.ad, i64 0
  %broadcast.splat41 = shufflevector <4 x float> %broadcast.splatinsert40, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %index ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  %wide.load = load <4 x float>, ptr %i.ae, align 4, !tbaa !48
  %wide.load42 = load <4 x float>, ptr %i.af, align 4, !tbaa !48
  %i.ag = fmul fast <4 x float> %wide.load, %broadcast.splat41
  %i.ah = fmul fast <4 x float> %wide.load42, %broadcast.splat41
  %i.ai = fadd fast <4 x float> %i.ag, %broadcast.splat
  %i.aj = fadd fast <4 x float> %i.ah, %broadcast.splat
  store <4 x float> %i.ai, ptr %i.ae, align 4, !tbaa !48
  store <4 x float> %i.aj, ptr %i.af, align 4, !tbaa !48
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !90

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %indvars.iv.next34 = add nsw i64 %indvars.iv33, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next34 to i32
  %exitcond36.not = icmp eq i32 %i.y, %lftr.wideiv
  br i1 %exitcond36.not, label %._crit_edge31.split, label %.lr.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv ; 2 uses
  %i.am = load float, ptr %i.al, align 4, !tbaa !48
  %i.an = fmul fast float %i.am, %i.ad
  %i.ao = fadd fast float %i.an, %i.ab
  store float %i.ao, ptr %i.al, align 4, !tbaa !48
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !91

._crit_edge31.split:                              ; preds = %._crit_edge, %.lr.ph30, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge31.split, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn9BatchNorm15forward_inplaceERNS_3MatERKNS_6OptionE.omp_outlined.2(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5) #10 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !43     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store i32 0, ptr %i.a, align 4, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  store i32 %i.g, ptr %i.b, align 4, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  store i32 1, ptr %i.c, align 4, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  store i32 0, ptr %i.d, align 4, !tbaa !43
  %i.h = load i32, ptr %0, align 4, !tbaa !43     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !43
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !43
  %i.k = load i32, ptr %i.a, align 4, !tbaa !43   ; 2 uses
  %.not34 = icmp sgt i32 %i.k, %i.j
  br i1 %.not34, label %._crit_edge36.split, label %.noexc27.lr.ph

.noexc27.lr.ph:                                   ; preds = %bb.b
  %i.l = load ptr, ptr %3, align 8, !tbaa !18, !noalias !92
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = load i64, ptr %i.m, align 8, !tbaa !20, !noalias !92
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !41, !noalias !92
  %factor.op.mul = mul i64 %i.n, %i.p
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 504
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !18
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 576
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !18
  %i.u = load i32, ptr %5, align 4, !tbaa !43     ; 3 uses
  %i.v = icmp sgt i32 %i.u, 0
  br i1 %i.v, label %.noexc27.preheader, label %._crit_edge36.split

.noexc27.preheader:                               ; preds = %.noexc27.lr.ph
  %i.w = sext i32 %i.k to i64
  %i.x = add nsw i32 %i.j, 1
  %wide.trip.count = zext nneg i32 %i.u to i64    ; 3 uses
  %min.iters.check = icmp ult i32 %i.u, 8
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.noexc27

.noexc27:                                         ; preds = %.noexc27.preheader, %._crit_edge
  %indvars.iv38 = phi i64 [ %i.w, %.noexc27.preheader ], [ %indvars.iv.next39, %._crit_edge ] ; 4 uses
  %.reass = mul i64 %factor.op.mul, %indvars.iv38
  %i.y = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass ; 2 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv38
  %i.aa = load float, ptr %i.z, align 4, !tbaa !48 ; 2 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv38
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !48 ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.noexc27
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.aa, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert45 = insertelement <4 x float> poison, float %i.ac, i64 0
  %broadcast.splat46 = shufflevector <4 x float> %broadcast.splatinsert45, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %index ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 2 uses
  %wide.load = load <4 x float>, ptr %i.ad, align 4, !tbaa !48
  %wide.load47 = load <4 x float>, ptr %i.ae, align 4, !tbaa !48
  %i.af = fmul fast <4 x float> %wide.load, %broadcast.splat46
  %i.ag = fmul fast <4 x float> %wide.load47, %broadcast.splat46
  %i.ah = fadd fast <4 x float> %i.af, %broadcast.splat
  %i.ai = fadd fast <4 x float> %i.ag, %broadcast.splat
  store <4 x float> %i.ah, ptr %i.ad, align 4, !tbaa !48
  store <4 x float> %i.ai, ptr %i.ae, align 4, !tbaa !48
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !95

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.noexc27, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.noexc27 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %indvars.iv.next39 = add nsw i64 %indvars.iv38, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next39 to i32
  %exitcond41.not = icmp eq i32 %i.x, %lftr.wideiv
  br i1 %exitcond41.not, label %._crit_edge36.split, label %.noexc27

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv ; 2 uses
  %i.al = load float, ptr %i.ak, align 4, !tbaa !48
  %i.am = fmul fast float %i.al, %i.ac
  %i.an = fadd fast float %i.am, %i.aa
  store float %i.an, ptr %i.ak, align 4, !tbaa !48
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !96

._crit_edge36.split:                              ; preds = %._crit_edge, %.noexc27.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge36.split, %bb.a
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.sqrt.v4f32(<4 x float>) #9

attributes #0 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline noreturn nounwind uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nofree noreturn }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind }
attributes #12 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { noreturn nounwind }
attributes #15 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 7, !"openmp", i32 51}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"vtable pointer", !8, i64 0}
!11 = !{!12, !14, i64 8}
!12 = !{!"_ZTSN4ncnn3MatE", !13, i64 0, !14, i64 8, !15, i64 16, !6, i64 24, !16, i64 32, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !15, i64 64}
!13 = !{!"any pointer", !7, i64 0}
!14 = !{!"p1 int", !13, i64 0}
!15 = !{!"long", !7, i64 0}
!16 = !{!"p1 _ZTSN4ncnn9AllocatorE", !13, i64 0}
!17 = !{!12, !16, i64 32}
!18 = !{!12, !13, i64 0}
!19 = distinct !{null}
!20 = !{!12, !15, i64 64}
!21 = !{!22, !6, i64 208}
!22 = !{!"_ZTSN4ncnn9BatchNormE", !23, i64 0, !6, i64 208, !37, i64 212, !12, i64 216, !12, i64 288, !12, i64 360, !12, i64 432, !12, i64 504, !12, i64 576}
!23 = !{!"_ZTSN4ncnn5LayerE", !24, i64 8, !24, i64 9, !24, i64 10, !24, i64 11, !24, i64 12, !24, i64 13, !24, i64 14, !24, i64 15, !24, i64 16, !24, i64 17, !24, i64 18, !24, i64 19, !24, i64 20, !24, i64 21, !24, i64 22, !24, i64 23, !24, i64 24, !24, i64 25, !24, i64 26, !24, i64 27, !6, i64 28, !13, i64 32, !6, i64 40, !25, i64 48, !25, i64 80, !28, i64 112, !28, i64 136, !32, i64 160, !32, i64 184}
!24 = !{!"bool", !7, i64 0}
!25 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !26, i64 0, !15, i64 8, !7, i64 16}
!26 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !27, i64 0}
!27 = !{!"p1 omnipotent char", !13, i64 0}
!28 = !{!"_ZTSSt6vectorIiSaIiEE", !29, i64 0}
!29 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !30, i64 0}
!30 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !31, i64 0}
!31 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !14, i64 0, !14, i64 8, !14, i64 16}
!32 = !{!"_ZTSSt6vectorIN4ncnn3MatESaIS1_EE", !33, i64 0}
!33 = !{!"_ZTSSt12_Vector_baseIN4ncnn3MatESaIS1_EE", !34, i64 0}
!34 = !{!"_ZTSNSt12_Vector_baseIN4ncnn3MatESaIS1_EE12_Vector_implE", !35, i64 0}
!35 = !{!"_ZTSNSt12_Vector_baseIN4ncnn3MatESaIS1_EE17_Vector_impl_dataE", !36, i64 0, !36, i64 8, !36, i64 16}
!36 = !{!"p1 _ZTSN4ncnn3MatE", !13, i64 0}
!37 = !{!"float", !7, i64 0}
!38 = !{!22, !37, i64 212}
!39 = distinct !{null}
!40 = !{!13, !13, i64 0}
!41 = !{!12, !15, i64 16}
!42 = !{!12, !6, i64 24}
!43 = !{!6, !6, i64 0}
!44 = !{!12, !6, i64 56}
!45 = !{!46}
!46 = distinct !{!46, !47}
!47 = distinct !{!47, !"LVerDomain"}
!48 = !{!37, !37, i64 0}
!49 = !{!50}
!50 = distinct !{!50, !47}
!51 = !{!52}
!52 = distinct !{!52, !47}
!53 = !{!54}
!54 = distinct !{!54, !47}
!55 = !{!56}
!56 = distinct !{!56, !47}
!57 = !{!58}
!58 = distinct !{!58, !47}
!59 = !{!60, !50, !46, !52, !54, !56}
!60 = distinct !{!60, !47}
!61 = !{!60}
!62 = !{!50, !46, !52, !54, !56}
!63 = distinct !{!63, !64, !65, !66}
!64 = !{!"llvm.loop.mustprogress"}
!65 = !{!"llvm.loop.isvectorized", i32 1}
!66 = !{!"llvm.loop.unroll.runtime.disable"}
!67 = distinct !{!67, !64, !65}
!68 = !{!12, !6, i64 40}
!69 = !{!12, !6, i64 44}
!70 = !{!71, !71, i64 0}
!71 = !{!"p1 float", !13, i64 0}
!72 = !{!73, !6, i64 4}
!73 = !{!"_ZTSN4ncnn6OptionE", !24, i64 0, !24, i64 1, !24, i64 2, !24, i64 3, !6, i64 4, !16, i64 8, !16, i64 16, !6, i64 24, !24, i64 28, !24, i64 29, !24, i64 30, !24, i64 31, !24, i64 32, !24, i64 33, !24, i64 34, !24, i64 35, !24, i64 36, !24, i64 37, !24, i64 38, !24, i64 39, !6, i64 40, !24, i64 44, !24, i64 45, !24, i64 46, !24, i64 47, !7, i64 48, !24, i64 49, !24, i64 50, !24, i64 51, !24, i64 52, !24, i64 53, !24, i64 54, !24, i64 55, !24, i64 56, !24, i64 57, !24, i64 58, !24, i64 59, !24, i64 60, !24, i64 61, !24, i64 62, !24, i64 63}
!74 = !{!12, !6, i64 48}
!75 = !{!12, !6, i64 52}
!76 = !{!23, !24, i64 8}
!77 = !{!23, !24, i64 9}
!78 = !{!79}
!79 = distinct !{!79, !80}
!80 = distinct !{!80, !"LVerDomain"}
!81 = !{!82}
!82 = distinct !{!82, !80}
!83 = !{!79, !84}
!84 = distinct !{!84, !80}
!85 = !{!84}
!86 = distinct !{!86, !65, !66}
!87 = distinct !{!87, !65}
!88 = !{!89}
!89 = !{i64 2, i64 -1, i64 -1, i1 true}
!90 = distinct !{!90, !64, !65, !66}
!91 = distinct !{!91, !64, !66, !65}
!92 = !{!93}
!93 = distinct !{!93, !94, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!94 = distinct !{!94, !"_ZN4ncnn3Mat7channelEi"}
!95 = distinct !{!95, !64, !65, !66}
!96 = distinct !{!96, !64, !66, !65}
end_hunk_0
