Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/ncnnoptimize?download=true
inline.NumInlined: 1639
inline.NumDeleted: 315
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_ZL9RandomizeRN4ncnn3MatEff:bb.a
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ds = load i64, ptr %i.dq, align 8, !tbaa !76
  %i.dt = load i32, ptr %i.dr, align 8, !tbaa !88
  %i.du = sext i32 %i.dt to i64
  %i.dv = mul i64 %i.ds, %i.du
  %.not = icmp eq i64 %i.dv, 0
  br i1 %.not, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.e
  %.promoted99 = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZL17g_prng_rand_state, i64 520), align 8, !tbaa !34
  %.promoted101 = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZL17g_prng_rand_state, i64 512), align 8, !tbaa !35
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZL11RandomFloatff.exit47
  %.us-phi7.i43102 = phi i64 [ %.us-phi7.i43, %_ZL11RandomFloatff.exit47 ], [ %.promoted101, %.lr.ph.preheader ] ; 5 uses
  %storemerge.i.i39100 = phi i64 [ %storemerge.i.i39, %_ZL11RandomFloatff.exit47 ], [ %.promoted99, %.lr.ph.preheader ]
  %.055 = phi i64 [ %i.fp, %_ZL11RandomFloatff.exit47 ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.fr.i37 = freeze i64 %storemerge.i.i39100      ; 2 uses
  %.not.i.i38 = icmp eq i64 %.fr.i37, 0           ; 2 uses
  %i.dw = add i64 %.fr.i37, -1
  %storemerge.i.i39 = select i1 %.not.i.i38, i64 54, i64 %i.dw ; 2 uses
  br i1 %.not.i.i38, label %.split.i44, label %.split.us.i41

.split.us.i41:                                    ; preds = %.lr.ph
  %i.dx = add i64 %.us-phi7.i43102, 40
  %i.dy = and i64 %i.dx, 63
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr @_ZL17g_prng_rand_state, i64 %i.dy
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !36
  %i.eb = add i64 %.us-phi7.i43102, 9
  %i.ec = and i64 %i.eb, 63
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr @_ZL17g_prng_rand_state, i64 %i.ec
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !36
  %i.ef = add i64 %i.ee, %i.ea                    ; 2 uses
  %i.eg = and i64 %.us-phi7.i43102, 63
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr @_ZL17g_prng_rand_state, i64 %i.eg
  store i64 %i.ef, ptr %i.eh, align 8, !tbaa !36
  %i.ei = add i64 %.us-phi7.i43102, 1
  br label %_ZL11RandomFloatff.exit47

.split.i44:                                       ; preds = %.lr.ph, %.split.i44
  %.0161.i.i45 = phi i64 [ %i.fi, %.split.i44 ], [ 0, %.lr.ph ]
  %i.ej = phi i64 [ %i.fh, %.split.i44 ], [ %.us-phi7.i43102, %.lr.ph ] ; 7 uses
  %i.ek = add i64 %i.ej, 40
  %i.el = and i64 %i.ek, 63
  %i.em = getelementptr inbounds nuw [8 x i8], ptr @_ZL17g_prng_rand_state, i64 %i.el
  %i.en = load i64, ptr %i.em, align 8, !tbaa !36
  %i.eo = add i64 %i.ej, 9
  %i.ep = and i64 %i.eo, 63
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr @_ZL17g_prng_rand_state, i64 %i.ep
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !36
  %i.es = add i64 %i.er, %i.en
  %i.et = and i64 %i.ej, 63
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr @_ZL17g_prng_rand_state, i64 %i.et
  store i64 %i.es, ptr %i.eu, align 8, !tbaa !36
  %i.ev = add i64 %i.ej, 1
  %i.ew = add i64 %i.ej, 41
  %i.ex = and i64 %i.ew, 63
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr @_ZL17g_prng_rand_state, i64 %i.ex
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !36
  %i.fa = add i64 %i.ej, 10
  %i.fb = and i64 %i.fa, 63
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr @_ZL17g_prng_rand_state, i64 %i.fb
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !36
  %i.fe = add i64 %i.fd, %i.ez                    ; 2 uses
  %i.ff = and i64 %i.ev, 63
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr @_ZL17g_prng_rand_state, i64 %i.ff
  store i64 %i.fe, ptr %i.fg, align 8, !tbaa !36
  %i.fh = add i64 %i.ej, 2                        ; 2 uses
  %i.fi = add nuw nsw i64 %.0161.i.i45, 2         ; 2 uses
  %exitcond.not.i46.1 = icmp eq i64 %i.fi, 496
  br i1 %exitcond.not.i46.1, label %_ZL11RandomFloatff.exit47, label %.split.i44, !llvm.loop !0

_ZL11RandomFloatff.exit47:                        ; preds = %.split.i44, %.split.us.i41
  %.us-phi.i42 = phi i64 [ %i.ef, %.split.us.i41 ], [ %i.fe, %.split.i44 ]
  %.us-phi7.i43 = phi i64 [ %i.ei, %.split.us.i41 ], [ %i.fh, %.split.i44 ] ; 2 uses
  %i.fj = uitofp i64 %.us-phi.i42 to float
  %i.fk = fmul nnan float %i.fj, f0x1F800000
  %i.fl = fmul nnan float %i.fk, 2.540000e+02
  %i.fm = fadd float %i.fl, -1.270000e+02
  %i.fn = fptosi float %i.fm to i8
  %i.fo = getelementptr inbounds nuw i8, ptr %i.dp, i64 %.055
  store i8 %i.fn, ptr %i.fo, align 1, !tbaa !129
  %i.fp = add nuw i64 %.055, 1                    ; 2 uses
  %i.fq = load i64, ptr %i.dq, align 8, !tbaa !76
  %i.fr = load i32, ptr %i.dr, align 8, !tbaa !88
  %i.fs = sext i32 %i.fr to i64
  %i.ft = mul i64 %i.fq, %i.fs
  %i.fu = icmp ult i64 %i.fp, %i.ft
  br i1 %i.fu, label %.lr.ph, label %.loopexit.loopexit91, !llvm.loop !237

..loopexit_crit_edge:                             ; preds = %_ZL11RandomFloatff.exit
  store i64 %storemerge.i.i, ptr getelementptr inbounds nuw (i8, ptr @_ZL17g_prng_rand_state, i64 520), align 8, !tbaa !34
  store i64 %.us-phi7.i, ptr getelementptr inbounds nuw (i8, ptr @_ZL17g_prng_rand_state, i64 512), align 8, !tbaa !35
  br label %.loopexit

.loopexit.loopexit91:                             ; preds = %_ZL11RandomFloatff.exit47
  store i64 %storemerge.i.i39, ptr getelementptr inbounds nuw (i8, ptr @_ZL17g_prng_rand_state, i64 520), align 8, !tbaa !34
  store i64 %.us-phi7.i43, ptr getelementptr inbounds nuw (i8, ptr @_ZL17g_prng_rand_state, i64 512), align 8, !tbaa !35
  br label %.loopexit

.loopexit:                                        ; preds = %_ZL11RandomFloatff.exit36, %.loopexit.loopexit91, %bb.e, %bb.c, %.preheader, %..loopexit_crit_edge, %bb.a
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #7

declare void @_ZN4ncnn23cast_float32_to_float16ERKNS_3MatERS0_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #2

declare void @_ZN4ncnn6OptionC1Ev(ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #18

declare noundef zeroext i16 @_ZN4ncnn18float32_to_float16Ef(float noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #19

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN11ModelWriter18fwrite_weight_dataERKN4ncnn3MatEP8_IO_FILEff(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(116) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr nofree noundef captures(none) %2, float noundef %3, float noundef %4) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.ncnn::Mat", align 8         ; 14 uses
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = tail call i64 @ftell(ptr noundef %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.d = load i32, ptr %i.c, align 4, !tbaa !123
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.f = load i32, ptr %i.e, align 8, !tbaa !124
  %i.g = mul nsw i32 %i.f, %i.d
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.i = load i32, ptr %i.h, align 4, !tbaa !125
  %i.j = mul nsw i32 %i.g, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.l = load i32, ptr %i.k, align 8, !tbaa !88
  %i.m = mul nsw i32 %i.j, %i.l
  call void @_ZNK4ncnn3Mat7reshapeEiPNS_9AllocatorE(ptr dead_on_unwind nonnull writable sret(%"class.ncnn::Mat") align 8 %5, ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %i.m, ptr noundef null)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.o = load i32, ptr %i.n, align 8, !tbaa !29
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke fastcc void @_ZL9RandomizeRN4ncnn3MatEff(ptr noundef nonnull align 8 dereferenceable(72) %5, float noundef %3, float noundef %4)
          to label %bb.j unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !77   ; 2 uses
  %.not.i18 = icmp eq ptr %i.r, null
  br i1 %.not.i18, label %_ZN4ncnn3MatD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = atomicrmw add ptr %i.r, i32 -1 acq_rel, align 4
  %i.t = icmp eq i32 %i.s, 1
  br i1 %i.t, label %bb.e, label %_ZN4ncnn3MatD2Ev.exit

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !78   ; 3 uses
  %.not3.i19 = icmp eq ptr %i.v, null
  %i.w = load ptr, ptr %5, align 8, !tbaa !79     ; 3 uses
  br i1 %.not3.i19, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = load ptr, ptr %i.v, align 8, !tbaa !28
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load ptr, ptr %i.y, align 8
  invoke void %i.z(ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr noundef %i.w)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.i, !inline_history !1

bb.g:                                             ; preds = %bb.e
  %.not.i22 = icmp eq ptr %i.w, null
  br i1 %.not.i22, label %_ZN4ncnn3MatD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @free(ptr noundef nonnull %i.w) #25
  br label %_ZN4ncnn3MatD2Ev.exit

bb.i:                                             ; preds = %bb.f
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  call void @__clang_call_terminate(ptr %i.ab) #30
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.d, %bb.c, %bb.f, %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  resume { ptr, i32 } %i.p

bb.j:                                             ; preds = %bb.b, %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !93 ; 2 uses
  %i.ae = icmp eq i64 %i.ad, 4
  %.pre = load ptr, ptr %5, align 8, !tbaa !79    ; 6 uses
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 44
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !123 ; 4 uses
  br i1 %i.ae, label %bb.k, label %_ZL27replace_denormals_with_zeroPfm.exit

bb.k:                                             ; preds = %bb.j
  %i.ah = sext i32 %i.ag to i64                   ; 3 uses
  %.not.i25 = icmp eq i32 %i.ag, 0
  br i1 %.not.i25, label %_ZL27replace_denormals_with_zeroPfm.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.k
  %min.iters.check = icmp ult i32 %i.ag, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader40, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.ah, -4                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue39, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue39 ] ; 5 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %index ; 2 uses
  %wide.load = load <4 x float>, ptr %i.ai, align 4, !tbaa !90 ; 2 uses
  %i.aj = call <4 x float> @llvm.fabs.v4f32(<4 x float> %wide.load)
  %i.ak = fpext <4 x float> %i.aj to <4 x double>
  %i.al = fcmp olt <4 x double> %i.ak, splat (double 1.000000e-30)
  %i.am = fcmp une <4 x float> %wide.load, zeroinitializer
  %i.an = select <4 x i1> %i.al, <4 x i1> %i.am, <4 x i1> zeroinitializer ; 4 uses
  %i.ao = extractelement <4 x i1> %i.an, i64 0
  br i1 %i.ao, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  store float 0.000000e+00, ptr %i.ai, align 4, !tbaa !90
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.ap = extractelement <4 x i1> %i.an, i64 1
  br i1 %i.ap, label %pred.store.if34, label %pred.store.continue35

pred.store.if34:                                  ; preds = %pred.store.continue
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %index
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  store float 0.000000e+00, ptr %i.ar, align 4, !tbaa !90
  br label %pred.store.continue35

pred.store.continue35:                            ; preds = %pred.store.if34, %pred.store.continue
  %i.as = extractelement <4 x i1> %i.an, i64 2
  br i1 %i.as, label %pred.store.if36, label %pred.store.continue37

pred.store.if36:                                  ; preds = %pred.store.continue35
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %index
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store float 0.000000e+00, ptr %i.au, align 4, !tbaa !90
  br label %pred.store.continue37

pred.store.continue37:                            ; preds = %pred.store.if36, %pred.store.continue35
  %i.av = extractelement <4 x i1> %i.an, i64 3
  br i1 %i.av, label %pred.store.if38, label %pred.store.continue39

pred.store.if38:                                  ; preds = %pred.store.continue37
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %index
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 12
  store float 0.000000e+00, ptr %i.ax, align 4, !tbaa !90
  br label %pred.store.continue39

pred.store.continue39:                            ; preds = %pred.store.if38, %pred.store.continue37
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !240

middle.block:                                     ; preds = %pred.store.continue39
  %cmp.n = icmp eq i64 %n.vec, %i.ah
  br i1 %cmp.n, label %_ZL27replace_denormals_with_zeroPfm.exit, label %.lr.ph.i.preheader40

.lr.ph.i.preheader40:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %.09.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader40, %bb.m
  %.09.i = phi i64 [ %i.bf, %bb.m ], [ %.09.i.ph, %.lr.ph.i.preheader40 ] ; 2 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %.09.i ; 2 uses
  %i.ba = load float, ptr %i.az, align 4, !tbaa !90 ; 2 uses
  %i.bb = call float @llvm.fabs.f32(float %i.ba)
  %i.bc = fpext float %i.bb to double
  %i.bd = fcmp olt double %i.bc, 1.000000e-30
  %i.be = fcmp une float %i.ba, 0.000000e+00
  %or.cond.i = select i1 %i.bd, i1 %i.be, i1 false
  br i1 %or.cond.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph.i
  store float 0.000000e+00, ptr %i.az, align 4, !tbaa !90
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph.i
  %i.bf = add nuw i64 %.09.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bf, %i.ah
  br i1 %exitcond.not.i, label %_ZL27replace_denormals_with_zeroPfm.exit, label %.lr.ph.i, !llvm.loop !241

_ZL27replace_denormals_with_zeroPfm.exit:         ; preds = %bb.m, %middle.block, %bb.j, %bb.k
  %i.bg = sext i32 %i.ag to i64
  %i.bh = call i64 @fwrite(ptr noundef %.pre, i64 noundef %i.ad, i64 noundef %i.bg, ptr noundef %2) ; 0 uses
  %i.bi = call i64 @ftell(ptr noundef %2)
  %i.bj = sub i64 %i.bi, %i.b
  %sext = shl i64 %i.bj, 32
  %i.bk = ashr exact i64 %sext, 32                ; 2 uses
  %i.bl = add nsw i64 %i.bk, 3
  %i.bm = and i64 %i.bl, -4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i32 0, ptr %i.a, align 4
  %i.bn = sub nsw i64 %i.bm, %i.bk
  %i.bo = call i64 @fwrite(ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef %i.bn, ptr noundef %2) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.bp = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !77 ; 2 uses
  %.not.i = icmp eq ptr %i.bq, null
  br i1 %.not.i, label %_ZN4ncnn3MatD2Ev.exit17, label %bb.n

bb.n:                                             ; preds = %_ZL27replace_denormals_with_zeroPfm.exit
  %i.br = atomicrmw add ptr %i.bq, i32 -1 acq_rel, align 4
  %i.bs = icmp eq i32 %i.br, 1
  br i1 %i.bs, label %bb.o, label %_ZN4ncnn3MatD2Ev.exit17

bb.o:                                             ; preds = %bb.n
  %i.bt = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !78 ; 3 uses
  %.not3.i = icmp eq ptr %i.bu, null
  %i.bv = load ptr, ptr %5, align 8, !tbaa !79    ; 3 uses
  br i1 %.not3.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bw = load ptr, ptr %i.bu, align 8, !tbaa !28
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.by = load ptr, ptr %i.bx, align 8
  invoke void %i.by(ptr noundef nonnull align 8 dereferenceable(8) %i.bu, ptr noundef %i.bv)
          to label %_ZN4ncnn3MatD2Ev.exit17 unwind label %bb.s, !inline_history !1

bb.q:                                             ; preds = %bb.o
  %.not.i23 = icmp eq ptr %i.bv, null
  br i1 %.not.i23, label %_ZN4ncnn3MatD2Ev.exit17, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @free(ptr noundef nonnull %i.bv) #25
  br label %_ZN4ncnn3MatD2Ev.exit17

bb.s:                                             ; preds = %bb.p
  %i.bz = landingpad { ptr, i32 }
          catch ptr null
  %i.ca = extractvalue { ptr, i32 } %i.bz, 0
  call void @__clang_call_terminate(ptr %i.ca) #30
  unreachable

_ZN4ncnn3MatD2Ev.exit17:                          ; preds = %bb.n, %_ZL27replace_denormals_with_zeroPfm.exit, %bb.p, %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN11ModelWriter4saveEPKcS1_(ptr nofree noundef nonnull readonly align 8 dereferenceable(116) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::set", align 8          ; 12 uses
  %4 = alloca %"class.ncnn::ParamDict", align 8   ; 7 uses
  %5 = alloca %"class.ncnn::Mat", align 8         ; 12 uses
  %6 = alloca %"class.ncnn::Mat", align 8         ; 12 uses
  %7 = alloca %"class.ncnn::Mat", align 8         ; 12 uses
  %i.a = tail call noalias ptr @fopen(ptr noundef %1, ptr noundef nonnull @.str.23) ; 589 uses
  %i.b = tail call noalias ptr @fopen(ptr noundef %2, ptr noundef nonnull @.str.23) ; 97 uses
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.24, i64 8, i64 1, ptr %i.a) ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !40, !nonnull !39, !align !41 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !45   ; 2 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !46   ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = ashr exact i64 %i.j, 3                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 9 uses
  store i32 0, ptr %i.l, align 8, !tbaa !103
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr null, ptr %i.m, align 8, !tbaa !104
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  store ptr %i.l, ptr %i.n, align 8, !tbaa !105
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %i.l, ptr %i.o, align 8, !tbaa !106
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 5 uses
  store i64 0, ptr %i.p, align 8, !tbaa !107
  %.not4549 = icmp eq ptr %i.f, %i.g
  br i1 %.not4549, label %._crit_edge4530.thread, label %.lr.ph4529

._crit_edge4530.thread:                           ; preds = %bb.a
  %i.q = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.a, ptr noundef nonnull @.str.25, i32 noundef 0, i64 noundef 0) #25 ; 0 uses
  br label %._crit_edge4547

.lr.ph4529:                                       ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  br label %bb.b

._crit_edge4530:                                  ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.s = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.a, ptr noundef nonnull @.str.25, i32 noundef %.13066, i64 noundef %i.fn) #25 ; 0 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 18 uses
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 64
  br label %bb.m

bb.b:                                             ; preds = %.lr.ph4529, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.af = phi i64 [ 0, %.lr.ph4529 ], [ %i.fn, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ] ; 3 uses
  %.030654527 = phi i32 [ 0, %.lr.ph4529 ], [ %.13066, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ] ; 2 uses
  %.030674526 = phi i64 [ 0, %.lr.ph4529 ], [ %i.fo, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ] ; 2 uses
  %i.ag = load ptr, ptr %i.c, align 8, !tbaa !40, !nonnull !39, !align !41
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !46
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %.030674526
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !53 ; 6 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 56
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !58
  %i.am = icmp eq i64 %i.al, 9
  br i1 %i.am, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread4341

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.b
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 48
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !57 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 1
  %i.aq = xor i64 %i.ap, 7310315702952289134
  %i.ar = getelementptr i8, ptr %i.ao, i64 8
  %i.as = load i8, ptr %i.ar, align 1
  %i.at = zext i8 %i.as to i64
  %i.au = xor i64 %i.at, 100
  %i.av = or i64 %i.aq, %i.au
  %i.aw = icmp ne i64 %i.av, 0
  %i.ax = zext i1 %i.aw to i32
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread4341

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread4341: ; preds = %bb.b, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.az = add nsw i32 %.030654527, 1              ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aj, i64 112 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aj, i64 120
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !91 ; 2 uses
  %i.bd = load ptr, ptr %i.ba, align 8, !tbaa !80 ; 2 uses
  %.not4550 = icmp eq ptr %i.bc, %i.bd
  br i1 %.not4550, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread4341
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = sub i64 %i.be, %i.bf
  %i.bh = ashr exact i64 %i.bg, 2
  br label %.lr.ph

._crit_edge:                                      ; preds = %.noexc4276, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread4341
  %i.bi = phi i64 [ %i.af, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread4341 ], [ %i.dm, %.noexc4276 ] ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.aj, i64 136 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.aj, i64 144
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !91 ; 2 uses
  %i.bm = load ptr, ptr %i.bj, align 8, !tbaa !80 ; 2 uses
  %.not4551 = icmp eq ptr %i.bl, %i.bm
  br i1 %.not4551, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %.lr.ph4525.preheader

.lr.ph4525.preheader:                             ; preds = %._crit_edge
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = sub i64 %i.bn, %i.bo
  %i.bq = ashr exact i64 %i.bp, 2
  br label %.lr.ph4525

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.noexc4276
  %i.br = phi i64 [ %i.dm, %.noexc4276 ], [ %i.af, %.lr.ph.preheader ]
  %.030974522 = phi i64 [ %i.dn, %.noexc4276 ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.bs = load ptr, ptr %i.ba, align 8, !tbaa !80
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %.030974522
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !81
  %i.bv = load ptr, ptr %i.r, align 8, !tbaa !47, !nonnull !39, !align !41
  %i.bw = sext i32 %i.bu to i64
  %i.bx = load ptr, ptr %i.bv, align 8, !tbaa !51
  %i.by = getelementptr inbounds nuw [112 x i8], ptr %i.bx, i64 %i.bw ; 7 uses
  %.02931.i = load ptr, ptr %i.m, align 8, !tbaa !120 ; 2 uses
  %.not32.i = icmp eq ptr %.02931.i, null
  br i1 %.not32.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !58 ; 3 uses
  %i.cb = load ptr, ptr %i.by, align 8
  br label %bb.c

bb.c:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i, %.lr.ph.i
  %.02933.i = phi ptr [ %.02931.i, %.lr.ph.i ], [ %.029.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i ] ; 6 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.02933.i, i64 40
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !58 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.cd, i64 %i.ca) ; 3 uses
  %i.ce = icmp eq i64 %.sroa.speculated.i.i.i.i, 0
end_hunk_0
