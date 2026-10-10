Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/einsum?download=true
inline.NumInlined: 330
inline.NumDeleted: 137
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN4ncnn6Einsum10load_paramERKNS_9ParamDictE:bb.a
  br i1 %i.hb, label %bb.az, label %_ZN4ncnn3MatD2Ev.exit

bb.az:                                            ; preds = %bb.ay
  %i.hc = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !63 ; 3 uses
  %.not3.i90 = icmp eq ptr %i.hd, null
  %i.he = load ptr, ptr %2, align 8, !tbaa !29    ; 3 uses
  br i1 %.not3.i90, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.hf = load ptr, ptr %i.hd, align 8, !tbaa !11
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 24
  %i.hh = load ptr, ptr %i.hg, align 8
  invoke void %i.hh(ptr noundef nonnull align 8 dereferenceable(8) %i.hd, ptr noundef %i.he)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.bd, !inline_history !51

bb.bb:                                            ; preds = %bb.az
  %.not.i93 = icmp eq ptr %i.he, null
  br i1 %.not.i93, label %_ZN4ncnn3MatD2Ev.exit, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  call void @free(ptr noundef nonnull %i.he) #21
  br label %_ZN4ncnn3MatD2Ev.exit

bb.bd:                                            ; preds = %bb.ba
  %i.hi = landingpad { ptr, i32 }
          catch ptr null
  %i.hj = extractvalue { ptr, i32 } %i.hi, 0
  call void @__clang_call_terminate(ptr %i.hj) #22
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.bc, %bb.bb, %bb.ba, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121, %bb.ay, %_ZN4ncnn3MatD2Ev.exit79
  %.pn72.pn.pn = phi { ptr, i32 } [ %i.ap, %_ZN4ncnn3MatD2Ev.exit79 ], [ %.pn72.pn, %bb.ay ], [ %.pn72.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121 ], [ %.pn72.pn, %bb.ba ], [ %.pn72.pn, %bb.bb ], [ %.pn72.pn, %bb.bc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  resume { ptr, i32 } %.pn72.pn.pn
}

declare noundef i32 @_ZN4ncnn5Layer10load_modelERKNS_8ModelBinE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

declare noundef i32 @_ZN4ncnn5Layer15create_pipelineERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #2

declare noundef i32 @_ZN4ncnn5Layer16destroy_pipelineERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden noundef range(i32 -100, 1) i32 @_ZNK4ncnn6Einsum7forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(264) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %3) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::vector", align 8       ; 11 uses
  %5 = alloca %"class.std::vector", align 8       ; 13 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !39
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !40   ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 6 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !88
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !88
  %i.h = icmp eq ptr %i.e, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.j = load i64, ptr %i.i, align 8
  %i.k = icmp eq i64 %i.j, 2
  %or.cond = select i1 %i.h, i1 %i.k, i1 false
  br i1 %or.cond, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread336

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !17
  %i.n = load i16, ptr %i.m, align 1
  %i.o = icmp ne i16 %i.n, 26985
  %i.p = zext i1 %i.o to i32
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread336

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.r = load ptr, ptr %2, align 8, !tbaa !39     ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !90
  tail call void @_ZN4ncnn3Mat6createEimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.r, i32 noundef 1, i64 noundef %i.c, ptr noundef %i.t)
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !29   ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %_ZNK4ncnn3Mat5emptyEv.exit268.thread, label %_ZNK4ncnn3Mat5emptyEv.exit268

_ZNK4ncnn3Mat5emptyEv.exit268:                    ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 64
  %i.x = load i64, ptr %i.w, align 8, !tbaa !28
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  %i.z = load i32, ptr %i.y, align 8, !tbaa !91
  %i.aa = sext i32 %i.z to i64
  %i.ab = mul i64 %i.x, %i.aa
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %_ZNK4ncnn3Mat5emptyEv.exit268.thread, label %bb.b

bb.b:                                             ; preds = %_ZNK4ncnn3Mat5emptyEv.exit268
  %i.ad = load ptr, ptr %1, align 8, !tbaa !39    ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !42 ; 3 uses
  %i.ag = icmp sgt i32 %i.af, 0
  br i1 %i.ag, label %.lr.ph407, label %._crit_edge408

.lr.ph407:                                        ; preds = %bb.b
  %i.ah = load ptr, ptr %i.ad, align 8, !tbaa !29 ; 9 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 44
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !30
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.am = load i64, ptr %i.al, align 8, !tbaa !40
  %factor.op.mul = mul i64 %i.am, %i.ak           ; 9 uses
  %wide.trip.count580 = zext nneg i32 %i.af to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %i.af, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph407
  %n.vec = and i64 %wide.trip.count580, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 10 uses
  %vec.phi = phi <4 x float> [ zeroinitializer, %vector.ph ], [ %i.ci, %vector.body ]
  %vec.phi690 = phi <4 x float> [ zeroinitializer, %vector.ph ], [ %i.cj, %vector.body ]
  %i.an = or disjoint i64 %index, 1               ; 2 uses
  %i.ao = or disjoint i64 %index, 2               ; 2 uses
  %i.ap = or disjoint i64 %index, 3               ; 2 uses
  %i.aq = or disjoint i64 %index, 4               ; 2 uses
  %i.ar = or disjoint i64 %index, 5               ; 2 uses
  %i.as = or disjoint i64 %index, 6               ; 2 uses
  %i.at = or disjoint i64 %index, 7               ; 2 uses
  %i.au = mul i64 %factor.op.mul, %index
  %i.av = mul i64 %factor.op.mul, %i.an
  %i.aw = mul i64 %factor.op.mul, %i.ao
  %i.ax = mul i64 %factor.op.mul, %i.ap
  %i.ay = mul i64 %factor.op.mul, %i.aq
  %i.az = mul i64 %factor.op.mul, %i.ar
  %i.ba = mul i64 %factor.op.mul, %i.as
  %i.bb = mul i64 %factor.op.mul, %i.at
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.au
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.av
  %i.be = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.aw
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ax
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ay
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.az
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ba
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.bb
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %index
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.an
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.ao
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %i.ap
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %i.aq
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.ar
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.as
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %i.at
  %i.bs = load float, ptr %i.bk, align 4, !tbaa !44
  %i.bt = load float, ptr %i.bl, align 4, !tbaa !44
  %i.bu = load float, ptr %i.bm, align 4, !tbaa !44
  %i.bv = load float, ptr %i.bn, align 4, !tbaa !44
  %i.bw = insertelement <4 x float> poison, float %i.bs, i64 0
  %i.bx = insertelement <4 x float> %i.bw, float %i.bt, i64 1
  %i.by = insertelement <4 x float> %i.bx, float %i.bu, i64 2
  %i.bz = insertelement <4 x float> %i.by, float %i.bv, i64 3
  %i.ca = load float, ptr %i.bo, align 4, !tbaa !44
  %i.cb = load float, ptr %i.bp, align 4, !tbaa !44
  %i.cc = load float, ptr %i.bq, align 4, !tbaa !44
  %i.cd = load float, ptr %i.br, align 4, !tbaa !44
  %i.ce = insertelement <4 x float> poison, float %i.ca, i64 0
  %i.cf = insertelement <4 x float> %i.ce, float %i.cb, i64 1
  %i.cg = insertelement <4 x float> %i.cf, float %i.cc, i64 2
  %i.ch = insertelement <4 x float> %i.cg, float %i.cd, i64 3
  %i.ci = fadd fast <4 x float> %i.bz, %vec.phi   ; 2 uses
  %i.cj = fadd fast <4 x float> %i.ch, %vec.phi690 ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ck = icmp eq i64 %index.next, %n.vec
  br i1 %i.ck, label %middle.block, label %vector.body, !llvm.loop !69

middle.block:                                     ; preds = %vector.body
  %bin.rdx = fadd fast <4 x float> %i.cj, %i.ci
  %i.cl = tail call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count580
  br i1 %cmp.n, label %._crit_edge408, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph407, %middle.block
  %indvars.iv577.ph = phi i64 [ 0, %.lr.ph407 ], [ %n.vec, %middle.block ]
  %.0217404.ph = phi float [ 0.000000e+00, %.lr.ph407 ], [ %i.cl, %middle.block ]
  br label %scalar.ph

._crit_edge408:                                   ; preds = %scalar.ph, %middle.block, %bb.b
  %.0217.lcssa = phi float [ 0.000000e+00, %bb.b ], [ %i.cl, %middle.block ], [ %i.cp, %scalar.ph ]
  store float %.0217.lcssa, ptr %i.u, align 4, !tbaa !44
  br label %_ZNK4ncnn3Mat5emptyEv.exit268.thread

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv577 = phi i64 [ %indvars.iv.next578, %scalar.ph ], [ %indvars.iv577.ph, %scalar.ph.preheader ] ; 3 uses
  %.0217404 = phi float [ %i.cp, %scalar.ph ], [ %.0217404.ph, %scalar.ph.preheader ]
  %.reass = mul i64 %factor.op.mul, %indvars.iv577
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.reass
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %indvars.iv577
  %i.co = load float, ptr %i.cn, align 4, !tbaa !44
  %i.cp = fadd fast float %i.co, %.0217404        ; 2 uses
  %indvars.iv.next578 = add nuw nsw i64 %indvars.iv577, 1 ; 2 uses
  %exitcond581.not = icmp eq i64 %indvars.iv.next578, %wide.trip.count580
  br i1 %exitcond581.not, label %._crit_edge408, label %scalar.ph, !llvm.loop !70

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread336: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.cq = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #25 ; 28 uses
  store ptr %i.cq, ptr %4, align 8, !tbaa !46
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 64 ; 6 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.cr, ptr %i.cs, align 8, !tbaa !92
  store <4 x i32> splat (i32 1), ptr %i.cq, align 4, !tbaa !33
  %.06.i.i.i.i.i.i.i.i.i.ptr.4 = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  store <4 x i32> splat (i32 1), ptr %.06.i.i.i.i.i.i.i.i.i.ptr.4, align 4, !tbaa !33
  %.06.i.i.i.i.i.i.i.i.i.ptr.8 = getelementptr inbounds nuw i8, ptr %i.cq, i64 32
  store <4 x i32> splat (i32 1), ptr %.06.i.i.i.i.i.i.i.i.i.ptr.8, align 4, !tbaa !33
  %.06.i.i.i.i.i.i.i.i.i.ptr.12 = getelementptr inbounds nuw i8, ptr %i.cq, i64 48
  store <4 x i32> splat (i32 1), ptr %.06.i.i.i.i.i.i.i.i.i.ptr.12, align 4, !tbaa !33
  %i.ct = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store ptr %i.cr, ptr %i.ct, align 8, !tbaa !47
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !48 ; 2 uses
  %i.cw = load ptr, ptr %1, align 8, !tbaa !39    ; 3 uses
  %.not410 = icmp eq ptr %i.cv, %i.cw
  br i1 %.not410, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.thread672, label %.lr.ph370

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.thread672: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread336
  store ptr %i.cq, ptr %i.ct, align 8, !tbaa !47
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.cz = trunc i64 %i.cy to i32
  br label %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread.i

.lr.ph370:                                        ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread336
  %i.da = ptrtoint ptr %i.cv to i64
  %i.db = ptrtoint ptr %i.cw to i64
  %i.dc = sub i64 %i.da, %i.db
  %i.dd = sdiv exact i64 %i.dc, 72
  %i.de = load ptr, ptr %i.d, align 8, !tbaa !21
  br label %bb.d

._crit_edge371:                                   ; preds = %._crit_edge
  %i.df = zext nneg i32 %.1.lcssa to i64          ; 6 uses
  %i.dg = icmp ugt i32 %.1.lcssa, 16
  br i1 %i.dg, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i, label %bb.c

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i:  ; preds = %._crit_edge371
  %i.dh = invoke noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #25
          to label %.noexc284 unwind label %bb.m  ; 7 uses

.noexc284:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 64
  store i32 0, ptr %i.di, align 4, !tbaa !33
  %i.dj = add nsw i64 %i.df, -17                  ; 2 uses
  %i.dk = icmp eq i64 %i.dj, 0
  br i1 %i.dk, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.thread, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i: ; preds = %.noexc284
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dh, i64 68
  %.idx.i.i.i.i.i31.i = shl nuw nsw i64 %i.dj, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.dl, i8 0, i64 %.idx.i.i.i.i.i31.i, i1 false), !tbaa !33
  br label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.thread

bb.c:                                             ; preds = %._crit_edge371
  %.not = icmp eq i32 %.1.lcssa, 16
  br i1 %.not, label %.sink.split, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

bb.d:                                             ; preds = %.lr.ph370, %._crit_edge
  %.0194368 = phi i64 [ 0, %.lr.ph370 ], [ %i.go, %._crit_edge ] ; 3 uses
  %.0335367 = phi i32 [ 0, %.lr.ph370 ], [ %.1.lcssa, %._crit_edge ] ; 6 uses
  %i.dm = getelementptr inbounds nuw [72 x i8], ptr %i.cw, i64 %.0194368 ; 5 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 40
  %i.do = load i32, ptr %i.dn, align 8, !tbaa !49 ; 4 uses
  %i.dp = icmp sgt i32 %i.do, 0
  br i1 %i.dp, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.d
  %i.dq = getelementptr inbounds nuw [32 x i8], ptr %i.de, i64 %.0194368
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dm, i64 48
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dm, i64 44
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dm, i64 56 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dm, i64 52
  %i.dv = load ptr, ptr %i.dq, align 8, !tbaa !17 ; 17 uses
  switch i32 %i.do, label %.thread661 [
    i32 1, label %._crit_edge.loopexit
    i32 2, label %.lr.ph.split.peel.next459
    i32 3, label %bb.e
    i32 4, label %bb.f
  ]

bb.e:                                             ; preds = %.lr.ph
  %i.dw = load i32, ptr %i.dt, align 8, !tbaa !91
  %i.dx = load i8, ptr %i.dv, align 1, !tbaa !18  ; 2 uses
  %i.dy = sext i8 %i.dx to i32
  %i.dz = sext i8 %i.dx to i64
  %i.ea = getelementptr [4 x i8], ptr %i.cq, i64 %i.dz
  %i.eb = getelementptr i8, ptr %i.ea, i64 -420
  store i32 %i.dw, ptr %i.eb, align 4, !tbaa !33
  %i.ec = add nsw i32 %i.dy, -104
  %.sroa.speculated.peel610 = tail call i32 @llvm.smax.i32(i32 %.0335367, i32 %i.ec)
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dv, i64 1
  br label %.lr.ph.split.peel.next459

bb.f:                                             ; preds = %.lr.ph
  %i.ee = load i32, ptr %i.dt, align 8, !tbaa !91
  %i.ef = load i8, ptr %i.dv, align 1, !tbaa !18  ; 2 uses
  %i.eg = sext i8 %i.ef to i32
  %i.eh = sext i8 %i.ef to i64
  %i.ei = getelementptr [4 x i8], ptr %i.cq, i64 %i.eh
  %i.ej = getelementptr i8, ptr %i.ei, i64 -420
  store i32 %i.ee, ptr %i.ej, align 4, !tbaa !33
  %i.ek = add nsw i32 %i.eg, -104
  %.sroa.speculated.peel = tail call i32 @llvm.smax.i32(i32 %.0335367, i32 %i.ek)
  %i.el = load i32, ptr %i.du, align 4, !tbaa !93
  %i.em = getelementptr inbounds nuw i8, ptr %i.dv, i64 1
  %i.en = load i8, ptr %i.em, align 1, !tbaa !18  ; 2 uses
  %i.eo = sext i8 %i.en to i32
  %i.ep = sext i8 %i.en to i64
  %i.eq = getelementptr [4 x i8], ptr %i.cq, i64 %i.ep
  %i.er = getelementptr i8, ptr %i.eq, i64 -420
  store i32 %i.el, ptr %i.er, align 4, !tbaa !33
  %i.es = add nsw i32 %i.eo, -104
  %.sroa.speculated.peel433628 = tail call i32 @llvm.smax.i32(i32 %.sroa.speculated.peel, i32 %i.es)
  %i.et = getelementptr inbounds nuw i8, ptr %i.dv, i64 2
  br label %.lr.ph.split.peel.next459

.thread661:                                       ; preds = %.lr.ph
  %wide.trip.count = zext nneg i32 %i.do to i64   ; 2 uses
  %i.eu = load i8, ptr %i.dv, align 1, !tbaa !18  ; 2 uses
  %i.ev = sext i8 %i.eu to i32
  %i.ew = sext i8 %i.eu to i64
  %i.ex = getelementptr [4 x i8], ptr %i.cq, i64 %i.ew
  %i.ey = getelementptr i8, ptr %i.ex, i64 -420
  store i32 1, ptr %i.ey, align 4, !tbaa !33
  %i.ez = add nsw i32 %i.ev, -104
  %.sroa.speculated.peel605623 = tail call i32 @llvm.smax.i32(i32 %.0335367, i32 %i.ez)
  %i.fa = getelementptr inbounds nuw i8, ptr %i.dv, i64 1
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !18  ; 2 uses
  %i.fc = sext i8 %i.fb to i32
  %i.fd = sext i8 %i.fb to i64
  %i.fe = getelementptr [4 x i8], ptr %i.cq, i64 %i.fd
  %i.ff = getelementptr i8, ptr %i.fe, i64 -420
  store i32 1, ptr %i.ff, align 4, !tbaa !33
  %i.fg = add nsw i32 %i.fc, -104
  %.sroa.speculated.peel433628635646 = tail call i32 @llvm.smax.i32(i32 %.sroa.speculated.peel605623, i32 %i.fg)
  %i.fh = getelementptr inbounds nuw i8, ptr %i.dv, i64 2
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !18  ; 2 uses
  %i.fj = sext i8 %i.fi to i32
  %i.fk = sext i8 %i.fi to i64
  %i.fl = getelementptr [4 x i8], ptr %i.cq, i64 %i.fk
  %i.fm = getelementptr i8, ptr %i.fl, i64 -420
  store i32 1, ptr %i.fm, align 4, !tbaa !33
  %i.fn = add nsw i32 %i.fj, -104
  %.sroa.speculated.peel456652658 = tail call i32 @llvm.smax.i32(i32 %.sroa.speculated.peel433628635646, i32 %i.fn)
  %i.fo = getelementptr inbounds nuw i8, ptr %i.dv, i64 3
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !18  ; 2 uses
  %i.fq = sext i8 %i.fp to i32
  %i.fr = sext i8 %i.fp to i64
  %i.fs = getelementptr [4 x i8], ptr %i.cq, i64 %i.fr
  %i.ft = getelementptr i8, ptr %i.fs, i64 -420
  store i32 1, ptr %i.ft, align 4, !tbaa !33
  %i.fu = add nsw i32 %i.fq, -104
  %.sroa.speculated.peel479664 = tail call i32 @llvm.smax.i32(i32 %.sroa.speculated.peel456652658, i32 %i.fu) ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %6 = add nsw i32 %i.do, -5
  %7 = icmp ult i32 %6, 3
  br i1 %7, label %.epil.preheader, label %.lr.ph.split.peel.next459.new

.lr.ph.split.peel.next459.new:                    ; preds = %.thread661
  %8 = and i64 %wide.trip.count, 2147483644
  %9 = add nsw i64 %8, -8
  br label %bb.h

.lr.ph.split.peel.next459:                        ; preds = %.lr.ph, %bb.e, %bb.f
  %.sink644.in = phi ptr [ %i.et, %bb.f ], [ %i.ed, %bb.e ], [ %i.dv, %.lr.ph ]
  %.sroa.speculated.peel433565572583.sink = phi i32 [ %.sroa.speculated.peel433628, %bb.f ], [ %.sroa.speculated.peel610, %bb.e ], [ %.0335367, %.lr.ph ]
  %.sink636 = phi i64 [ 3, %bb.f ], [ 2, %bb.e ], [ 1, %.lr.ph ]
  %.sink639 = load i32, ptr %i.dr, align 8, !tbaa !42
  %i.fv = load i8, ptr %.sink644.in, align 1, !tbaa !18 ; 2 uses
  %i.fw = sext i8 %i.fv to i32
  %i.fx = sext i8 %i.fv to i64
  %i.fy = getelementptr [4 x i8], ptr %i.cq, i64 %i.fx
  %i.fz = getelementptr i8, ptr %i.fy, i64 -420
  store i32 %.sink639, ptr %i.fz, align 4, !tbaa !33
  %i.ga = add nsw i32 %i.fw, -104
  %.sroa.speculated.peel456652 = tail call i32 @llvm.smax.i32(i32 %.sroa.speculated.peel433565572583.sink, i32 %i.ga)
  %i.gb = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.sink636
  br label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %.lr.ph, %.lr.ph.split.peel.next459
  %.sink627.in = phi ptr [ %i.dv, %.lr.ph ], [ %i.gb, %.lr.ph.split.peel.next459 ]
  %.sroa.speculated.peel547.sink = phi i32 [ %.0335367, %.lr.ph ], [ %.sroa.speculated.peel456652, %.lr.ph.split.peel.next459 ]
  %.3186.us.peel = load i32, ptr %i.ds, align 4, !tbaa !33
  %i.gc = load i8, ptr %.sink627.in, align 1, !tbaa !18 ; 2 uses
  %10 = sext i8 %i.gc to i32
  %i.gd = sext i8 %i.gc to i64
  %i.ge = getelementptr [4 x i8], ptr %i.cq, i64 %i.gd
  %i.gf = getelementptr i8, ptr %i.ge, i64 -420
  store i32 %.3186.us.peel, ptr %i.gf, align 4, !tbaa !33
  %i.gg = add nsw i32 %10, -104
  %.sroa.speculated.us.peel = tail call i32 @llvm.smax.i32(i32 %.sroa.speculated.peel547.sink, i32 %i.gg)
  br label %._crit_edge

._crit_edge.loopexit695.unr-lcssa:                ; preds = %bb.h
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit695.unr-lcssa, %.thread661
  %indvars.iv.epil.init = phi i64 [ 4, %.thread661 ], [ %indvars.iv.next.3, %._crit_edge.loopexit695.unr-lcssa ]
  %.1365.epil.init = phi i32 [ %.sroa.speculated.peel479664, %.thread661 ], [ %.sroa.speculated.3, %._crit_edge.loopexit695.unr-lcssa ]
  %lcmp.mod697 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod697)
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.g ] ; 2 uses
  %.1365.epil = phi i32 [ %.1365.epil.init, %.epil.preheader ], [ %.sroa.speculated.epil, %bb.g ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.g ]
  %i.gh = getelementptr inbounds nuw i8, ptr %i.dv, i64 %indvars.iv.epil
  %i.gi = load i8, ptr %i.gh, align 1, !tbaa !18  ; 2 uses
  %i.gj = sext i8 %i.gi to i32
  %i.gk = sext i8 %i.gi to i64
  %i.gl = getelementptr [4 x i8], ptr %i.cq, i64 %i.gk
  %i.gm = getelementptr i8, ptr %i.gl, i64 -420
  store i32 1, ptr %i.gm, align 4, !tbaa !33
  %i.gn = add nsw i32 %i.gj, -104
  %.sroa.speculated.epil = tail call i32 @llvm.smax.i32(i32 %.1365.epil, i32 %i.gn) ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.g, !llvm.loop !71

._crit_edge:                                      ; preds = %._crit_edge.loopexit695.unr-lcssa, %bb.g, %._crit_edge.loopexit, %bb.d
  %.1.lcssa = phi i32 [ %.0335367, %bb.d ], [ %.sroa.speculated.us.peel, %._crit_edge.loopexit ], [ %.sroa.speculated.3, %._crit_edge.loopexit695.unr-lcssa ], [ %.sroa.speculated.epil, %bb.g ] ; 5 uses
  %i.go = add nuw i64 %.0194368, 1                ; 2 uses
  %exitcond546.not = icmp eq i64 %i.go, %i.dd
  br i1 %exitcond546.not, label %._crit_edge371, label %bb.d, !llvm.loop !72

bb.h:                                             ; preds = %bb.h, %.lr.ph.split.peel.next459.new
  %indvars.iv = phi i64 [ 4, %.lr.ph.split.peel.next459.new ], [ %indvars.iv.next.3, %bb.h ] ; 5 uses
  %.1365 = phi i32 [ %.sroa.speculated.peel479664, %.lr.ph.split.peel.next459.new ], [ %.sroa.speculated.3, %bb.h ]
  %niter = phi i64 [ 0, %.lr.ph.split.peel.next459.new ], [ %niter.next.3, %bb.h ] ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.dv, i64 %indvars.iv
  %i.gq = load i8, ptr %i.gp, align 1, !tbaa !18  ; 2 uses
  %i.gr = sext i8 %i.gq to i32
  %i.gs = sext i8 %i.gq to i64
  %i.gt = getelementptr [4 x i8], ptr %i.cq, i64 %i.gs
  %i.gu = getelementptr i8, ptr %i.gt, i64 -420
  store i32 1, ptr %i.gu, align 4, !tbaa !33
  %i.gv = add nsw i32 %i.gr, -104
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %.1365, i32 %i.gv)
  %i.gw = getelementptr inbounds nuw i8, ptr %i.dv, i64 %indvars.iv
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 1
  %i.gy = load i8, ptr %i.gx, align 1, !tbaa !18  ; 2 uses
  %i.gz = sext i8 %i.gy to i32
  %i.ha = sext i8 %i.gy to i64
  %i.hb = getelementptr [4 x i8], ptr %i.cq, i64 %i.ha
  %i.hc = getelementptr i8, ptr %i.hb, i64 -420
  store i32 1, ptr %i.hc, align 4, !tbaa !33
  %i.hd = add nsw i32 %i.gz, -104
  %.sroa.speculated.1 = tail call i32 @llvm.smax.i32(i32 %.sroa.speculated, i32 %i.hd)
  %i.he = getelementptr inbounds nuw i8, ptr %i.dv, i64 %indvars.iv
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 2
  %i.hg = load i8, ptr %i.hf, align 1, !tbaa !18  ; 2 uses
  %i.hh = sext i8 %i.hg to i32
  %i.hi = sext i8 %i.hg to i64
  %i.hj = getelementptr [4 x i8], ptr %i.cq, i64 %i.hi
  %i.hk = getelementptr i8, ptr %i.hj, i64 -420
  store i32 1, ptr %i.hk, align 4, !tbaa !33
  %i.hl = add nsw i32 %i.hh, -104
  %.sroa.speculated.2 = tail call i32 @llvm.smax.i32(i32 %.sroa.speculated.1, i32 %i.hl)
  %i.hm = getelementptr inbounds nuw i8, ptr %i.dv, i64 %indvars.iv
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 3
  %i.ho = load i8, ptr %i.hn, align 1, !tbaa !18  ; 2 uses
  %i.hp = sext i8 %i.ho to i32
  %i.hq = sext i8 %i.ho to i64
  %i.hr = getelementptr [4 x i8], ptr %i.cq, i64 %i.hq
  %i.hs = getelementptr i8, ptr %i.hr, i64 -420
  store i32 1, ptr %i.hs, align 4, !tbaa !33
  %i.ht = add nsw i32 %i.hp, -104
  %.sroa.speculated.3 = tail call i32 @llvm.smax.i32(i32 %.sroa.speculated.2, i32 %i.ht) ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter, %9
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit695.unr-lcssa, label %bb.h, !llvm.loop !73

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.thread: ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i, %.noexc284
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.dh, ptr noundef nonnull align 4 dereferenceable(64) %i.cq, i64 64, i1 false)
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cq, i64 noundef 64) #20
  store ptr %i.dh, ptr %4, align 8, !tbaa !46
  %i.hu = getelementptr [4 x i8], ptr %i.dh, i64 %i.df
  store ptr %i.hu, ptr %i.ct, align 8, !tbaa !47
  %i.hv = getelementptr inbounds nuw i8, ptr %i.dh, i64 128 ; 2 uses
  store ptr %i.hv, ptr %i.cs, align 8, !tbaa !92
  br label %.sink.split

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.c
  %.idx = shl nuw nsw i64 %i.df, 2
  %i.hw = getelementptr inbounds nuw i8, ptr %i.cq, i64 %.idx
  store ptr %i.hw, ptr %i.ct, align 8, !tbaa !47
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.hy = load i64, ptr %i.hx, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.hz = trunc i64 %i.hy to i32                  ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %.1.lcssa, 0
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread.i, label %bb.i

_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread.i: ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.thread672, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.ia = phi i32 [ %i.cz, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.thread672 ], [ %i.hz, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  br label %bb.j

.sink.split:                                      ; preds = %bb.c, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.thread
  %i.ib = phi ptr [ %i.dh, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.thread ], [ %i.cq, %bb.c ]
  %.ph685 = phi ptr [ %i.hv, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.thread ], [ %i.cr, %bb.c ]
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.id = load i64, ptr %i.ic, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.ie = trunc i64 %i.id to i32
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %11 = phi i32 [ %i.hz, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ie, %.sink.split ] ; 2 uses
  %12 = phi ptr [ %i.cq, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ib, %.sink.split ] ; 3 uses
  %i.if = phi ptr [ %i.cr, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %.ph685, %.sink.split ] ; 3 uses
  %i.ig = shl nuw nsw i64 %i.df, 2
  %i.ih = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ig) #25
          to label %.noexc275 unwind label %bb.n  ; 6 uses

.noexc275:                                        ; preds = %bb.i
  store ptr %i.ih, ptr %5, align 8, !tbaa !46
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.ih, i64 %i.df ; 3 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.ii, ptr %i.ij, align 8, !tbaa !92
  store i32 0, ptr %i.ih, align 4, !tbaa !33
  %i.ik = getelementptr i8, ptr %i.ih, i64 4      ; 3 uses
  %i.il = add nsw i64 %i.df, -1                   ; 2 uses
  %i.im = icmp eq i64 %i.il, 0
  br i1 %i.im, label %bb.j, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc275
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.il, 2  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ik, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !33
  %i.in = getelementptr inbounds nuw i8, ptr %i.ik, i64 %.idx.i.i.i.i.i.i.i
  br label %bb.j

bb.j:                                             ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc275, %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread.i
  %13 = phi i32 [ %i.ia, %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread.i ], [ %11, %.noexc275 ], [ %11, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ] ; 3 uses
  %14 = phi ptr [ %i.cq, %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread.i ], [ %12, %.noexc275 ], [ %12, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ] ; 14 uses
  %i.io = phi ptr [ %i.cr, %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread.i ], [ %i.if, %.noexc275 ], [ %i.if, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ] ; 3 uses
  %i.ip = phi ptr [ null, %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread.i ], [ %i.ii, %.noexc275 ], [ %i.ii, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ] ; 2 uses
  %i.iq = phi ptr [ null, %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread.i ], [ %i.ih, %.noexc275 ], [ %i.ih, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ] ; 16 uses
  %.0.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread.i ], [ %i.ik, %.noexc275 ], [ %i.in, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ]
  %i.ir = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %.0.i.i.i.i.i, ptr %i.ir, align 8, !tbaa !47
  switch i32 %13, label %.critedge [
    i32 1, label %bb.k
    i32 2, label %bb.p
    i32 3, label %bb.t
    i32 4, label %bb.x
  ]

bb.k:                                             ; preds = %bb.j
  %i.is = load ptr, ptr %2, align 8, !tbaa !39    ; 6 uses
  %i.it = load i32, ptr %14, align 4, !tbaa !33
  %i.iu = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !90
  invoke void @_ZN4ncnn3Mat6createEimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.is, i32 noundef %i.it, i64 noundef %i.c, ptr noundef %i.iv)
          to label %bb.l unwind label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.iw = load ptr, ptr %i.is, align 8, !tbaa !29
  %i.ix = icmp eq ptr %i.iw, null
  br i1 %i.ix, label %.critedge, label %_ZNK4ncnn3Mat5emptyEv.exit267

_ZNK4ncnn3Mat5emptyEv.exit267:                    ; preds = %bb.l
  %i.iy = getelementptr inbounds nuw i8, ptr %i.is, i64 64
  %i.iz = load i64, ptr %i.iy, align 8, !tbaa !28
  %i.ja = getelementptr inbounds nuw i8, ptr %i.is, i64 56
  %i.jb = load i32, ptr %i.ja, align 8, !tbaa !91
  %i.jc = sext i32 %i.jb to i64
  %i.jd = mul i64 %i.iz, %i.jc
  %i.je = icmp eq i64 %i.jd, 0
  br i1 %i.je, label %.critedge, label %.preheader364

.preheader364:                                    ; preds = %_ZNK4ncnn3Mat5emptyEv.exit267
  %i.jf = getelementptr inbounds nuw i8, ptr %i.is, i64 44 ; 2 uses
  %i.jg = load i32, ptr %i.jf, align 4, !tbaa !30
  %i.jh = icmp sgt i32 %i.jg, 0
  br i1 %i.jh, label %.lr.ph374, label %.critedge

bb.m:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i
  %i.ji = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.n:                                             ; preds = %bb.i
  %i.jj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit279

bb.o:                                             ; preds = %bb.k
  %i.jk = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

.lr.ph374:                                        ; preds = %.preheader364, %.lr.ph374
  %indvars.iv547 = phi i64 [ %indvars.iv.next548, %.lr.ph374 ], [ 0, %.preheader364 ] ; 3 uses
  %i.jl = trunc nuw nsw i64 %indvars.iv547 to i32
  store i32 %i.jl, ptr %i.iq, align 4, !tbaa !33
  %i.jm = call fastcc noundef nofpclass(nan inf) float @_ZN4ncnnL7sum_dimERKSt6vectorIiSaIiEEiRKS0_INS_3MatESaIS5_EERKS0_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISF_EERS2_(ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %5)
  %i.jn = load ptr, ptr %i.is, align 8, !tbaa !29
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %i.jn, i64 %indvars.iv547
  store float %i.jm, ptr %i.jo, align 4, !tbaa !44
  %indvars.iv.next548 = add nuw nsw i64 %indvars.iv547, 1 ; 2 uses
  %i.jp = load i32, ptr %i.jf, align 4, !tbaa !30
  %i.jq = sext i32 %i.jp to i64
  %i.jr = icmp slt i64 %indvars.iv.next548, %i.jq
  br i1 %i.jr, label %.lr.ph374, label %.critedge.thread, !llvm.loop !74

bb.p:                                             ; preds = %bb.j
  %i.js = load ptr, ptr %2, align 8, !tbaa !39    ; 8 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %14, i64 4
  %i.ju = load i32, ptr %i.jt, align 4, !tbaa !33
  %i.jv = load i32, ptr %14, align 4, !tbaa !33
  %i.jw = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !90
  invoke void @_ZN4ncnn3Mat6createEiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.js, i32 noundef %i.ju, i32 noundef %i.jv, i64 noundef %i.c, ptr noundef %i.jx)
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.jy = load ptr, ptr %i.js, align 8, !tbaa !29
  %i.jz = icmp eq ptr %i.jy, null
  br i1 %i.jz, label %.critedge, label %_ZNK4ncnn3Mat5emptyEv.exit266

_ZNK4ncnn3Mat5emptyEv.exit266:                    ; preds = %bb.q
  %i.ka = getelementptr inbounds nuw i8, ptr %i.js, i64 64
  %i.kb = load i64, ptr %i.ka, align 8, !tbaa !28
  %i.kc = getelementptr inbounds nuw i8, ptr %i.js, i64 56
  %i.kd = load i32, ptr %i.kc, align 8, !tbaa !91
  %i.ke = sext i32 %i.kd to i64
  %i.kf = mul i64 %i.kb, %i.ke
  %i.kg = icmp eq i64 %i.kf, 0
  br i1 %i.kg, label %.critedge, label %.preheader363

.preheader363:                                    ; preds = %_ZNK4ncnn3Mat5emptyEv.exit266
  %i.kh = getelementptr inbounds nuw i8, ptr %i.js, i64 48 ; 2 uses
  %i.ki = load i32, ptr %i.kh, align 8, !tbaa !42
  %i.kj = icmp sgt i32 %i.ki, 0
  br i1 %i.kj, label %.lr.ph381, label %.critedge

.lr.ph381:                                        ; preds = %.preheader363
  %i.kk = getelementptr inbounds nuw i8, ptr %i.js, i64 44 ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.iq, i64 4
  %i.km = getelementptr inbounds nuw i8, ptr %i.js, i64 16
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.kn = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.s:                                             ; preds = %.lr.ph381, %._crit_edge379
  %indvars.iv553 = phi i64 [ 0, %.lr.ph381 ], [ %indvars.iv.next554, %._crit_edge379 ] ; 3 uses
  %i.ko = trunc nuw nsw i64 %indvars.iv553 to i32
  store i32 %i.ko, ptr %i.iq, align 4, !tbaa !33
  %i.kp = load i32, ptr %i.kk, align 4, !tbaa !30
  %i.kq = icmp sgt i32 %i.kp, 0
  br i1 %i.kq, label %.lr.ph378, label %._crit_edge379

._crit_edge379:                                   ; preds = %.lr.ph378, %bb.s
  %indvars.iv.next554 = add nuw nsw i64 %indvars.iv553, 1 ; 2 uses
  %i.kr = load i32, ptr %i.kh, align 8, !tbaa !42
  %i.ks = sext i32 %i.kr to i64
  %i.kt = icmp slt i64 %indvars.iv.next554, %i.ks
  br i1 %i.kt, label %bb.s, label %._crit_edge382, !llvm.loop !75

.lr.ph378:                                        ; preds = %bb.s, %.lr.ph378
  %indvars.iv550 = phi i64 [ %indvars.iv.next551, %.lr.ph378 ], [ 0, %bb.s ] ; 3 uses
  %i.ku = trunc nuw nsw i64 %indvars.iv550 to i32
  store i32 %i.ku, ptr %i.kl, align 4, !tbaa !33
  %i.kv = call fastcc noundef nofpclass(nan inf) float @_ZN4ncnnL7sum_dimERKSt6vectorIiSaIiEEiRKS0_INS_3MatESaIS5_EERKS0_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISF_EERS2_(ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %5)
  %i.kw = load ptr, ptr %i.js, align 8, !tbaa !29
  %i.kx = load i32, ptr %i.kk, align 4, !tbaa !30
  %i.ky = sext i32 %i.kx to i64                   ; 2 uses
  %i.kz = mul nsw i64 %indvars.iv553, %i.ky
  %i.la = load i64, ptr %i.km, align 8, !tbaa !40
  %i.lb = mul i64 %i.kz, %i.la
  %i.lc = getelementptr inbounds nuw i8, ptr %i.kw, i64 %i.lb
  %i.ld = getelementptr inbounds nuw [4 x i8], ptr %i.lc, i64 %indvars.iv550
  store float %i.kv, ptr %i.ld, align 4, !tbaa !44
  %indvars.iv.next551 = add nuw nsw i64 %indvars.iv550, 1 ; 2 uses
  %i.le = icmp slt i64 %indvars.iv.next551, %i.ky
  br i1 %i.le, label %.lr.ph378, label %._crit_edge379, !llvm.loop !76

._crit_edge382:                                   ; preds = %._crit_edge379
  switch i32 %13, label %.critedge.thread [
    i32 3, label %bb.t
    i32 4, label %bb.x
  ]

bb.t:                                             ; preds = %bb.j, %._crit_edge382
  %i.lf = load ptr, ptr %2, align 8, !tbaa !39    ; 8 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.lh = load i32, ptr %i.lg, align 4, !tbaa !33
  %i.li = getelementptr inbounds nuw i8, ptr %14, i64 4
  %i.lj = load i32, ptr %i.li, align 4, !tbaa !33
  %i.lk = load i32, ptr %14, align 4, !tbaa !33
  %i.ll = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.lm = load ptr, ptr %i.ll, align 8, !tbaa !90
  invoke void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.lf, i32 noundef %i.lh, i32 noundef %i.lj, i32 noundef %i.lk, i64 noundef %i.c, ptr noundef %i.lm)
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ln = load ptr, ptr %i.lf, align 8, !tbaa !29
  %i.lo = icmp eq ptr %i.ln, null
  br i1 %i.lo, label %.critedge, label %_ZNK4ncnn3Mat5emptyEv.exit265

_ZNK4ncnn3Mat5emptyEv.exit265:                    ; preds = %bb.u
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lf, i64 64 ; 2 uses
  %i.lq = load i64, ptr %i.lp, align 8, !tbaa !28
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lf, i64 56 ; 2 uses
  %i.ls = load i32, ptr %i.lr, align 8, !tbaa !91 ; 2 uses
  %i.lt = sext i32 %i.ls to i64
  %i.lu = mul i64 %i.lq, %i.lt
  %i.lv = icmp eq i64 %i.lu, 0
  br i1 %i.lv, label %.critedge, label %.preheader362

.preheader362:                                    ; preds = %_ZNK4ncnn3Mat5emptyEv.exit265
  %i.lw = icmp sgt i32 %i.ls, 0
  br i1 %i.lw, label %.lr.ph390, label %.critedge

.lr.ph390:                                        ; preds = %.preheader362
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lf, i64 48 ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.iq, i64 4
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lf, i64 44 ; 2 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %i.iq, i64 8
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lf, i64 16
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.mc = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.w:                                             ; preds = %.lr.ph390, %._crit_edge388
  %indvars.iv562 = phi i64 [ 0, %.lr.ph390 ], [ %indvars.iv.next563, %._crit_edge388 ] ; 3 uses
  %i.md = trunc nuw nsw i64 %indvars.iv562 to i32
  store i32 %i.md, ptr %i.iq, align 4, !tbaa !33
  %i.me = load i32, ptr %i.lx, align 8, !tbaa !42
  %i.mf = icmp sgt i32 %i.me, 0
  br i1 %i.mf, label %.lr.ph387, label %._crit_edge388

._crit_edge388:                                   ; preds = %._crit_edge384, %bb.w
  %indvars.iv.next563 = add nuw nsw i64 %indvars.iv562, 1 ; 2 uses
  %i.mg = load i32, ptr %i.lr, align 8, !tbaa !91
  %i.mh = sext i32 %i.mg to i64
  %i.mi = icmp slt i64 %indvars.iv.next563, %i.mh
  br i1 %i.mi, label %bb.w, label %._crit_edge391, !llvm.loop !77

.lr.ph387:                                        ; preds = %bb.w, %._crit_edge384
  %indvars.iv559 = phi i64 [ %indvars.iv.next560, %._crit_edge384 ], [ 0, %bb.w ] ; 3 uses
  %i.mj = trunc nuw nsw i64 %indvars.iv559 to i32
  store i32 %i.mj, ptr %i.ly, align 4, !tbaa !33
  %i.mk = load i32, ptr %i.lz, align 4, !tbaa !30
  %i.ml = icmp sgt i32 %i.mk, 0
  br i1 %i.ml, label %.noexc270, label %._crit_edge384

._crit_edge384:                                   ; preds = %.noexc270, %.lr.ph387
  %indvars.iv.next560 = add nuw nsw i64 %indvars.iv559, 1 ; 2 uses
  %i.mm = load i32, ptr %i.lx, align 8, !tbaa !42
  %i.mn = sext i32 %i.mm to i64
  %i.mo = icmp slt i64 %indvars.iv.next560, %i.mn
  br i1 %i.mo, label %.lr.ph387, label %._crit_edge388, !llvm.loop !78

.noexc270:                                        ; preds = %.lr.ph387, %.noexc270
  %indvars.iv556 = phi i64 [ %indvars.iv.next557, %.noexc270 ], [ 0, %.lr.ph387 ] ; 3 uses
  %i.mp = trunc nuw nsw i64 %indvars.iv556 to i32
  store i32 %i.mp, ptr %i.ma, align 4, !tbaa !33
  %i.mq = call fastcc noundef nofpclass(nan inf) float @_ZN4ncnnL7sum_dimERKSt6vectorIiSaIiEEiRKS0_INS_3MatESaIS5_EERKS0_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISF_EERS2_(ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef 3, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %5)
  %i.mr = load i32, ptr %i.lz, align 4, !tbaa !30, !noalias !95
  %i.ms = load ptr, ptr %i.lf, align 8, !tbaa !29, !noalias !95
  %i.mt = load i64, ptr %i.lp, align 8, !tbaa !28, !noalias !95
  %i.mu = mul i64 %i.mt, %indvars.iv562
  %i.mv = load i64, ptr %i.mb, align 8, !tbaa !40, !noalias !95 ; 2 uses
  %i.mw = mul i64 %i.mu, %i.mv
  %i.mx = getelementptr inbounds nuw i8, ptr %i.ms, i64 %i.mw
  %i.my = sext i32 %i.mr to i64                   ; 2 uses
  %i.mz = mul nsw i64 %indvars.iv559, %i.my
  %i.na = mul i64 %i.mz, %i.mv
  %i.nb = getelementptr inbounds nuw i8, ptr %i.mx, i64 %i.na
  %i.nc = getelementptr inbounds nuw [4 x i8], ptr %i.nb, i64 %indvars.iv556
  store float %i.mq, ptr %i.nc, align 4, !tbaa !44
  %indvars.iv.next557 = add nuw nsw i64 %indvars.iv556, 1 ; 2 uses
  %i.nd = icmp slt i64 %indvars.iv.next557, %i.my
  br i1 %i.nd, label %.noexc270, label %._crit_edge384, !llvm.loop !81

._crit_edge391:                                   ; preds = %._crit_edge388
  %i.ne = icmp eq i32 %13, 4
  br i1 %i.ne, label %bb.x, label %.critedge.thread

bb.x:                                             ; preds = %bb.j, %._crit_edge382, %._crit_edge391
  %i.nf = load ptr, ptr %2, align 8, !tbaa !39    ; 9 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %14, i64 12
  %i.nh = load i32, ptr %i.ng, align 4, !tbaa !33
  %i.ni = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.nj = load i32, ptr %i.ni, align 4, !tbaa !33
  %i.nk = getelementptr inbounds nuw i8, ptr %14, i64 4
  %i.nl = load i32, ptr %i.nk, align 4, !tbaa !33
  %i.nm = load i32, ptr %14, align 4, !tbaa !33
  %i.nn = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.no = load ptr, ptr %i.nn, align 8, !tbaa !90
  invoke void @_ZN4ncnn3Mat6createEiiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.nf, i32 noundef %i.nh, i32 noundef %i.nj, i32 noundef %i.nl, i32 noundef %i.nm, i64 noundef %i.c, ptr noundef %i.no)
          to label %bb.y unwind label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.np = load ptr, ptr %i.nf, align 8, !tbaa !29
  %i.nq = icmp eq ptr %i.np, null
  br i1 %i.nq, label %.critedge, label %_ZNK4ncnn3Mat5emptyEv.exit

_ZNK4ncnn3Mat5emptyEv.exit:                       ; preds = %bb.y
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nf, i64 64 ; 2 uses
  %i.ns = load i64, ptr %i.nr, align 8, !tbaa !28
  %i.nt = getelementptr inbounds nuw i8, ptr %i.nf, i64 56 ; 2 uses
  %i.nu = load i32, ptr %i.nt, align 8, !tbaa !91 ; 2 uses
  %i.nv = sext i32 %i.nu to i64
  %i.nw = mul i64 %i.ns, %i.nv
  %i.nx = icmp eq i64 %i.nw, 0
  br i1 %i.nx, label %.critedge, label %.preheader

.preheader:                                       ; preds = %_ZNK4ncnn3Mat5emptyEv.exit
  %i.ny = icmp sgt i32 %i.nu, 0
  br i1 %i.ny, label %.lr.ph403, label %.critedge

.lr.ph403:                                        ; preds = %.preheader
  %i.nz = getelementptr inbounds nuw i8, ptr %i.nf, i64 52 ; 2 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %i.iq, i64 4
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nf, i64 48 ; 3 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %i.iq, i64 8
  %i.od = getelementptr inbounds nuw i8, ptr %i.nf, i64 44 ; 2 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %i.iq, i64 12
  %i.of = getelementptr inbounds nuw i8, ptr %i.nf, i64 16
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  %i.og = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.aa:                                            ; preds = %.lr.ph403, %._crit_edge401
  %indvars.iv574 = phi i64 [ 0, %.lr.ph403 ], [ %indvars.iv.next575, %._crit_edge401 ] ; 3 uses
  %i.oh = trunc nuw nsw i64 %indvars.iv574 to i32
  store i32 %i.oh, ptr %i.iq, align 4, !tbaa !33
  %i.oi = load i32, ptr %i.nz, align 4, !tbaa !93
  %i.oj = icmp sgt i32 %i.oi, 0
  br i1 %i.oj, label %.lr.ph400, label %._crit_edge401

._crit_edge401:                                   ; preds = %._crit_edge397, %bb.aa
  %indvars.iv.next575 = add nuw nsw i64 %indvars.iv574, 1 ; 2 uses
  %i.ok = load i32, ptr %i.nt, align 8, !tbaa !91
  %i.ol = sext i32 %i.ok to i64
  %i.om = icmp slt i64 %indvars.iv.next575, %i.ol
  br i1 %i.om, label %bb.aa, label %.critedge.thread, !llvm.loop !82

.lr.ph400:                                        ; preds = %bb.aa, %._crit_edge397
  %indvars.iv571 = phi i64 [ %indvars.iv.next572, %._crit_edge397 ], [ 0, %bb.aa ] ; 3 uses
  %i.on = trunc nuw nsw i64 %indvars.iv571 to i32
  store i32 %i.on, ptr %i.oa, align 4, !tbaa !33
  %i.oo = load i32, ptr %i.ob, align 8, !tbaa !42
  %i.op = icmp sgt i32 %i.oo, 0
  br i1 %i.op, label %.lr.ph396, label %._crit_edge397

._crit_edge397:                                   ; preds = %._crit_edge393, %.lr.ph400
  %indvars.iv.next572 = add nuw nsw i64 %indvars.iv571, 1 ; 2 uses
  %i.oq = load i32, ptr %i.nz, align 4, !tbaa !93
  %i.or = sext i32 %i.oq to i64
  %i.os = icmp slt i64 %indvars.iv.next572, %i.or
  br i1 %i.os, label %.lr.ph400, label %._crit_edge401, !llvm.loop !83

.lr.ph396:                                        ; preds = %.lr.ph400, %._crit_edge393
  %indvars.iv568 = phi i64 [ %indvars.iv.next569, %._crit_edge393 ], [ 0, %.lr.ph400 ] ; 3 uses
  %i.ot = trunc nuw nsw i64 %indvars.iv568 to i32
  store i32 %i.ot, ptr %i.oc, align 4, !tbaa !33
  %i.ou = load i32, ptr %i.od, align 4, !tbaa !30
  %i.ov = icmp sgt i32 %i.ou, 0
  br i1 %i.ov, label %.noexc269, label %.._crit_edge393_crit_edge

.._crit_edge393_crit_edge:                        ; preds = %.lr.ph396
  %.pre = load i32, ptr %i.ob, align 8, !tbaa !42
  %.pre584 = sext i32 %.pre to i64
  br label %._crit_edge393

._crit_edge393:                                   ; preds = %.noexc269, %.._crit_edge393_crit_edge
  %.pre-phi = phi i64 [ %.pre584, %.._crit_edge393_crit_edge ], [ %i.pi, %.noexc269 ]
  %indvars.iv.next569 = add nuw nsw i64 %indvars.iv568, 1 ; 2 uses
  %i.ow = icmp slt i64 %indvars.iv.next569, %.pre-phi
  br i1 %i.ow, label %.lr.ph396, label %._crit_edge397, !llvm.loop !84

.noexc269:                                        ; preds = %.lr.ph396, %.noexc269
  %indvars.iv565 = phi i64 [ %indvars.iv.next566, %.noexc269 ], [ 0, %.lr.ph396 ] ; 3 uses
  %i.ox = trunc nuw nsw i64 %indvars.iv565 to i32
  store i32 %i.ox, ptr %i.oe, align 4, !tbaa !33
  %i.oy = call fastcc noundef nofpclass(nan inf) float @_ZN4ncnnL7sum_dimERKSt6vectorIiSaIiEEiRKS0_INS_3MatESaIS5_EERKS0_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISF_EERS2_(ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef 4, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %5)
  %i.oz = load i32, ptr %i.od, align 4, !tbaa !30, !noalias !96
  %i.pa = load i32, ptr %i.ob, align 8, !tbaa !42, !noalias !96
  %i.pb = load ptr, ptr %i.nf, align 8, !tbaa !29, !noalias !96
  %i.pc = load i64, ptr %i.nr, align 8, !tbaa !28, !noalias !96
  %i.pd = mul i64 %i.pc, %indvars.iv574
  %i.pe = load i64, ptr %i.of, align 8, !tbaa !40, !noalias !96 ; 2 uses
  %i.pf = mul i64 %i.pd, %i.pe
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pb, i64 %i.pf
  %i.ph = sext i32 %i.oz to i64                   ; 2 uses
  %i.pi = sext i32 %i.pa to i64                   ; 2 uses
  %i.pj = mul i64 %i.pe, %i.ph                    ; 2 uses
  %i.pk = mul i64 %i.pj, %indvars.iv571
  %i.pl = mul i64 %i.pk, %i.pi
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pg, i64 %i.pl
  %i.pn = mul i64 %i.pj, %indvars.iv568
  %i.po = getelementptr inbounds nuw i8, ptr %i.pm, i64 %i.pn
  %i.pp = getelementptr inbounds nuw [4 x i8], ptr %i.po, i64 %indvars.iv565
  store float %i.oy, ptr %i.pp, align 4, !tbaa !44
  %indvars.iv.next566 = add nuw nsw i64 %indvars.iv565, 1 ; 2 uses
  %i.pq = icmp slt i64 %indvars.iv.next566, %i.ph
  br i1 %i.pq, label %.noexc269, label %._crit_edge393, !llvm.loop !87

.critedge:                                        ; preds = %.preheader362, %.preheader363, %.preheader364, %.preheader, %bb.j, %bb.y, %bb.u, %bb.q, %bb.l, %_ZNK4ncnn3Mat5emptyEv.exit, %_ZNK4ncnn3Mat5emptyEv.exit265, %_ZNK4ncnn3Mat5emptyEv.exit266, %_ZNK4ncnn3Mat5emptyEv.exit267
  %.8 = phi i32 [ -100, %_ZNK4ncnn3Mat5emptyEv.exit ], [ -100, %bb.y ], [ -100, %bb.q ], [ -100, %bb.l ], [ -100, %bb.u ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit265 ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit267 ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit266 ], [ 0, %.preheader ], [ 0, %bb.j ], [ 0, %.preheader363 ], [ 0, %.preheader364 ], [ 0, %.preheader362 ] ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.iq, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %.critedge.thread

.critedge.thread:                                 ; preds = %._crit_edge401, %.lr.ph374, %._crit_edge382, %._crit_edge391, %.critedge
  %.8678 = phi i32 [ %.8, %.critedge ], [ 0, %.lr.ph374 ], [ 0, %._crit_edge382 ], [ 0, %._crit_edge391 ], [ 0, %._crit_edge401 ]
  %i.pr = ptrtoint ptr %i.ip to i64
  %i.ps = ptrtoint ptr %i.iq to i64
  %i.pt = sub i64 %i.pr, %i.ps
  tail call void @_ZdlPvm(ptr noundef nonnull %i.iq, i64 noundef %i.pt) #20
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %.critedge, %.critedge.thread
  %.8679 = phi i32 [ %.8, %.critedge ], [ %.8678, %.critedge.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %i.pu = ptrtoint ptr %i.io to i64
  %i.pv = ptrtoint ptr %14 to i64
  %i.pw = sub i64 %i.pu, %i.pv
  tail call void @_ZdlPvm(ptr noundef nonnull %14, i64 noundef %i.pw) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %_ZNK4ncnn3Mat5emptyEv.exit268.thread

bb.ab:                                            ; preds = %bb.z, %bb.v, %bb.r, %bb.o
  %.pn229.pn.pn.pn.ph = phi { ptr, i32 } [ %i.kn, %bb.r ], [ %i.mc, %bb.v ], [ %i.og, %bb.z ], [ %i.jk, %bb.o ] ; 2 uses
  %.not.i.i.i278 = icmp eq ptr %i.iq, null
  br i1 %.not.i.i.i278, label %_ZNSt6vectorIiSaIiEED2Ev.exit279, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.px = ptrtoint ptr %i.ip to i64
  %i.py = ptrtoint ptr %i.iq to i64
  %i.pz = sub i64 %i.px, %i.py
  tail call void @_ZdlPvm(ptr noundef nonnull %i.iq, i64 noundef %i.pz) #20
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit279

_ZNSt6vectorIiSaIiEED2Ev.exit279:                 ; preds = %bb.ac, %bb.ab, %bb.n
  %i.qa = phi ptr [ %12, %bb.n ], [ %14, %bb.ab ], [ %14, %bb.ac ]
  %i.qb = phi ptr [ %i.if, %bb.n ], [ %i.io, %bb.ab ], [ %i.io, %bb.ac ]
  %.pn229.pn.pn.pn.pn = phi { ptr, i32 } [ %i.jj, %bb.n ], [ %.pn229.pn.pn.pn.ph, %bb.ab ], [ %.pn229.pn.pn.pn.ph, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit279, %bb.m
  %15 = phi ptr [ %i.qb, %_ZNSt6vectorIiSaIiEED2Ev.exit279 ], [ %i.cr, %bb.m ]
  %16 = phi ptr [ %i.qa, %_ZNSt6vectorIiSaIiEED2Ev.exit279 ], [ %i.cq, %bb.m ] ; 2 uses
  %.pn229.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn229.pn.pn.pn.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit279 ], [ %i.ji, %bb.m ]
  %i.qc = ptrtoint ptr %15 to i64
  %i.qd = ptrtoint ptr %16 to i64
  %i.qe = sub i64 %i.qc, %i.qd
  tail call void @_ZdlPvm(ptr noundef nonnull %16, i64 noundef %i.qe) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  resume { ptr, i32 } %.pn229.pn.pn.pn.pn.pn

_ZNK4ncnn3Mat5emptyEv.exit268.thread:             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %._crit_edge408, %_ZNK4ncnn3Mat5emptyEv.exit268, %_ZNSt6vectorIiSaIiEED2Ev.exit
  %.9 = phi i32 [ %.8679, %_ZNSt6vectorIiSaIiEED2Ev.exit ], [ 0, %._crit_edge408 ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit268 ], [ -100, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ]
  ret i32 %.9
}

declare noundef i32 @_ZNK4ncnn5Layer7forwardERKNS_3MatERS1_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #2

declare noundef i32 @_ZNK4ncnn5Layer15forward_inplaceERSt6vectorINS_3MatESaIS2_EERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #2

declare noundef i32 @_ZNK4ncnn5Layer15forward_inplaceERNS_3MatERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4ncnn6EinsumC2Ev(ptr noundef nonnull align 8 dereferenceable(264) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN4ncnn5LayerC2Ev(ptr noundef nonnull align 8 dereferenceable(208) %0)
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN4ncnn6EinsumE, i64 16), ptr %0, align 8, !tbaa !11
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !31
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i64 0, ptr %i.d, align 8, !tbaa !32
  store i8 0, ptr %i.c, align 8, !tbaa !18
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.e, align 8, !tbaa !104
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 0, ptr %i.f, align 1, !tbaa !105
  ret void
}

declare void @_ZN4ncnn5LayerC2Ev(ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #21 ; 0 uses
  tail call void @_ZSt9terminatev() #22
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

declare void @_ZNK4ncnn9ParamDict3getEiRKNS_3MatE(ptr dead_on_unwind writable sret(%"class.ncnn::Mat") align 8, ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare noundef ptr @strstr(ptr noundef, ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare ptr @strtok(ptr noundef, ptr noundef readonly captures(none)) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #9

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i8 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !22   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !21     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #26
  unreachable

_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 5                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 288230376151711743)
  %i.l = select i1 %i.j, i64 288230376151711743, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 5
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #25 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 3 uses
  store ptr %i.r, ptr %i.q, align 8, !tbaa !31
  %i.s = load ptr, ptr %2, align 8, !tbaa !17     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.c:                                             ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !32   ; 3 uses
  %i.x = icmp ult i64 %i.w, 16
  tail call void @llvm.assume(i1 %i.x)
  %i.y = add nuw nsw i64 %i.w, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.r, ptr noundef nonnull align 8 dereferenceable(1) %i.t, i64 %i.y, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  store ptr %i.s, ptr %i.q, align 8, !tbaa !17
  %i.z = load i64, ptr %i.t, align 8, !tbaa !18
  store i64 %i.z, ptr %i.r, align 8, !tbaa !18
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.aa = phi i64 [ %i.w, %bb.c ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %i.aa, ptr %i.ac, align 8, !tbaa !32
  store ptr %i.t, ptr %2, align 8, !tbaa !17
  store i64 0, ptr %i.ab, align 8, !tbaa !32
  store i8 0, ptr %i.t, align 8, !tbaa !18
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.aq, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.ap, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !113)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !114)
  %i.ad = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.ad, ptr %.012.i.i.i, align 8, !tbaa !31, !alias.scope !113, !noalias !114
  %i.ae = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !17, !alias.scope !114, !noalias !113 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !32, !alias.scope !114, !noalias !113 ; 3 uses
  %i.aj = icmp ult i64 %i.ai, 16
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = add nuw nsw i64 %i.ai, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ad, ptr noundef nonnull align 8 dereferenceable(1) %i.af, i64 %i.ak, i1 false), !alias.scope !115
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.ae, ptr %.012.i.i.i, align 8, !tbaa !17, !alias.scope !113, !noalias !114
  %i.al = load i64, ptr %i.af, align 8, !tbaa !18, !alias.scope !114, !noalias !113
  store i64 %i.al, ptr %i.ad, align 8, !tbaa !18, !alias.scope !113, !noalias !114
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !32, !alias.scope !114, !noalias !113
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.d
  %i.am = phi i64 [ %i.ai, %bb.d ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.am, ptr %i.ao, align 8, !tbaa !32, !alias.scope !113, !noalias !114
  store ptr %i.af, ptr %.0911.i.i.i, align 8, !tbaa !17, !alias.scope !114, !noalias !113
  store i64 0, ptr %i.an, align 8, !tbaa !32, !alias.scope !114, !noalias !113
  store i8 0, ptr %i.af, align 8, !tbaa !18, !alias.scope !114, !noalias !113
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ap, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !109

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ], [ %i.aq, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23
  %.012.i.i.i18 = phi ptr [ %i.bf, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %i.ar, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 5 uses
  %.0911.i.i.i19 = phi ptr [ %i.be, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %1, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !116)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !117)
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 3 uses
  store ptr %i.as, ptr %.012.i.i.i18, align 8, !tbaa !31, !alias.scope !116, !noalias !117
  %i.at = load ptr, ptr %.0911.i.i.i19, align 8, !tbaa !17, !alias.scope !117, !noalias !116 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 5 uses
end_hunk_0
