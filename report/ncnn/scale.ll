Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/scale?download=true
inline.NumInlined: 34
inline.NumDeleted: 24
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZNK4ncnn5Scale15forward_inplaceERNS_3MatERKNS_6OptionE:.noexc14
  %i.bd = getelementptr inbounds nuw i8, ptr %i.al, i64 96
  %i.be = getelementptr inbounds nuw i8, ptr %i.al, i64 112 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.al, i64 128
  %i.bg = getelementptr inbounds nuw i8, ptr %i.al, i64 136 ; 2 uses
  store i64 0, ptr %i.bg, align 8, !tbaa !22
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.an, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.be, i8 0, i64 20, i1 false)
  %i.bh = load <2 x ptr>, ptr %i.am, align 8, !tbaa !41
  store <2 x ptr> %i.bh, ptr %i.an, align 8, !tbaa !41
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !42
  store i64 %i.bj, ptr %i.bc, align 8, !tbaa !42
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !43
  store i32 %i.bl, ptr %i.bd, align 8, !tbaa !43
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !20
  %i.bo = getelementptr inbounds nuw i8, ptr %i.al, i64 104
  store ptr %i.bn, ptr %i.bo, align 8, !tbaa !20
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.bq = load <4 x i32>, ptr %i.bp, align 8, !tbaa !44
  store <4 x i32> %i.bq, ptr %i.be, align 8, !tbaa !44
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !45
  store i32 %i.bs, ptr %i.bf, align 8, !tbaa !45
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !22
  store i64 %i.bu, ptr %i.bg, align 8, !tbaa !22
  br label %_ZN4ncnn3MataSERKS0_.exit

_ZN4ncnn3MataSERKS0_.exit:                        ; preds = %_ZN4ncnn3Mat7releaseEv.exit.i, %_ZN4ncnn3MataSERKS0_.exit13
  %i.bv = load ptr, ptr %0, align 8, !tbaa !13
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 64
  %i.bx = load ptr, ptr %i.bw, align 8
  %i.by = invoke noundef i32 %i.bx(ptr noundef nonnull align 8 dereferenceable(360) %0, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(64) %2)
          to label %bb.p unwind label %bb.x

bb.p:                                             ; preds = %_ZN4ncnn3MataSERKS0_.exit
  %i.bz = load ptr, ptr %3, align 8, !tbaa !46    ; 3 uses
  %i.ca = load ptr, ptr %i.i, align 8, !tbaa !51  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.bz, %i.ca
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN4ncnn3MatES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.p, %_ZSt8_DestroyIN4ncnn3MatEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.cp, %_ZSt8_DestroyIN4ncnn3MatEEvPT_.exit.i.i.i ], [ %i.bz, %bb.p ] ; 7 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !19 ; 2 uses
  %.not.i.i.i.i.i15 = icmp eq ptr %i.cc, null
  br i1 %.not.i.i.i.i.i15, label %_ZSt8_DestroyIN4ncnn3MatEEvPT_.exit.i.i.i, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i.i.i
  %i.cd = atomicrmw add ptr %i.cc, i32 -1 acq_rel, align 4
  %i.ce = icmp eq i32 %i.cd, 1
  br i1 %i.ce, label %bb.r, label %_ZSt8_DestroyIN4ncnn3MatEEvPT_.exit.i.i.i

bb.r:                                             ; preds = %bb.q
  %i.cf = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !20 ; 3 uses
  %.not3.i.i.i.i.i = icmp eq ptr %i.cg, null
  %i.ch = load ptr, ptr %.05.i.i.i, align 8, !tbaa !21 ; 3 uses
  br i1 %.not3.i.i.i.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ci = load ptr, ptr %i.cg, align 8, !tbaa !13
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  %i.ck = load ptr, ptr %i.cj, align 8
  invoke void %i.ck(ptr noundef nonnull align 8 dereferenceable(8) %i.cg, ptr noundef %i.ch)
          to label %_ZSt8_DestroyIN4ncnn3MatEEvPT_.exit.i.i.i unwind label %bb.v, !inline_history !0

bb.t:                                             ; preds = %bb.r
  %.not.i1.i.i.i.i = icmp eq ptr %i.ch, null
  br i1 %.not.i1.i.i.i.i, label %_ZSt8_DestroyIN4ncnn3MatEEvPT_.exit.i.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @free(ptr noundef nonnull %i.ch) #10
  br label %_ZSt8_DestroyIN4ncnn3MatEEvPT_.exit.i.i.i

bb.v:                                             ; preds = %bb.s
  %i.cl = landingpad { ptr, i32 }
          catch ptr null
  %i.cm = extractvalue { ptr, i32 } %i.cl, 0
  call void @__clang_call_terminate(ptr %i.cm) #15
  unreachable

_ZSt8_DestroyIN4ncnn3MatEEvPT_.exit.i.i.i:        ; preds = %bb.u, %bb.t, %bb.s, %bb.q, %.lr.ph.i.i.i
  %i.cn = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 40
  %i.co = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 64
  store i64 0, ptr %i.co, align 8, !tbaa !22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %.05.i.i.i, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.cn, i8 0, i64 20, i1 false)
  %i.cp = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 72 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.cp, %i.ca
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN4ncnn3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPN4ncnn3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN4ncnn3MatEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %3, align 8, !tbaa !46
  br label %_ZSt8_DestroyIPN4ncnn3MatES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN4ncnn3MatES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN4ncnn3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %bb.p
  %i.cq = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN4ncnn3MatES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.bz, %bb.p ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.cq, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN4ncnn3MatESaIS1_EED2Ev.exit, label %bb.w

bb.w:                                             ; preds = %_ZSt8_DestroyIPN4ncnn3MatES1_EvT_S3_RSaIT0_E.exit.i
  %i.cr = load ptr, ptr %i.c, align 8, !tbaa !50
  %i.cs = ptrtoint ptr %i.cr to i64
  %i.ct = ptrtoint ptr %i.cq to i64
  %i.cu = sub i64 %i.cs, %i.ct
  call void @_ZdlPvm(ptr noundef nonnull %i.cq, i64 noundef %i.cu) #16
  br label %_ZNSt6vectorIN4ncnn3MatESaIS1_EED2Ev.exit

_ZNSt6vectorIN4ncnn3MatESaIS1_EED2Ev.exit:        ; preds = %_ZSt8_DestroyIPN4ncnn3MatES1_EvT_S3_RSaIT0_E.exit.i, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  ret i32 %i.by

bb.x:                                             ; preds = %bb.e, %bb.m, %_ZN4ncnn3MataSERKS0_.exit
  %i.cv = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN4ncnn3MatESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  resume { ptr, i32 } %i.cv
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4ncnn5ScaleC2Ev(ptr noundef nonnull align 8 dereferenceable(360) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN4ncnn5LayerC2Ev(ptr noundef nonnull align 8 dereferenceable(208) %0)
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN4ncnn5ScaleE, i64 16), ptr %0, align 8, !tbaa !13
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 352
  store i64 0, ptr %i.e, align 8, !tbaa !22
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.a, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.b, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.c, i8 0, i64 36, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.d, i8 0, i64 28, i1 false)
  store i8 1, ptr %i.f, align 8, !tbaa !40
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 1, ptr %i.g, align 1, !tbaa !64
  ret void
}

declare void @_ZN4ncnn5LayerC2Ev(ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
declare void @_ZN4ncnn5LayerD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208)) unnamed_addr #4

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #10 ; 0 uses
  tail call void @_ZSt9terminatev() #15
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #6

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #7

declare noundef i32 @_ZNK4ncnn9ParamDict3getEii(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #8

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn5Scale15forward_inplaceERSt6vectorINS_3MatESaIS2_EERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef readonly captures(none) %5) #9 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !44     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i32 0, ptr %i.a, align 4, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  store i32 %i.g, ptr %i.b, align 4, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  store i32 1, ptr %i.c, align 4, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  store i32 0, ptr %i.d, align 4, !tbaa !44
  %i.h = load i32, ptr %0, align 4, !tbaa !44     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !44
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 6 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !44
  %i.k = load i32, ptr %i.a, align 4, !tbaa !44   ; 3 uses
  %.not18 = icmp sgt i32 %i.k, %i.j
  br i1 %.not18, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.l = load ptr, ptr %3, align 8, !tbaa !49     ; 6 uses
  %i.m = load ptr, ptr %4, align 8, !tbaa !21     ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 288
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !21   ; 6 uses
  %i.p = sext i32 %i.k to i64                     ; 6 uses
  %i.q = add nsw i32 %i.j, 1
  %i.r = sub i32 %i.j, %i.k                       ; 2 uses
  %i.s = zext i32 %i.r to i64                     ; 2 uses
  %i.t = add nuw nsw i64 %i.s, 1                  ; 2 uses
  %min.iters.check = icmp ult i32 %i.r, 11
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.u = shl nsw i64 %i.p, 2                      ; 3 uses
  %scevgep = getelementptr i8, ptr %i.l, i64 %i.u ; 2 uses
  %i.v = add nsw i64 %i.p, %i.s
  %i.w = shl nsw i64 %i.v, 2
  %i.x = add nsw i64 %i.w, 4                      ; 3 uses
  %scevgep23 = getelementptr i8, ptr %i.l, i64 %i.x ; 2 uses
  %scevgep24 = getelementptr nuw i8, ptr %i.m, i64 %i.u
  %scevgep25 = getelementptr i8, ptr %i.m, i64 %i.x
  %scevgep26 = getelementptr nuw i8, ptr %i.o, i64 %i.u
  %scevgep27 = getelementptr i8, ptr %i.o, i64 %i.x
  %bound0 = icmp ult ptr %scevgep, %scevgep25
  %bound1 = icmp ult ptr %scevgep24, %scevgep23
  %found.conflict = and i1 %bound0, %bound1
  %bound028 = icmp ult ptr %scevgep, %scevgep27
  %bound129 = icmp ult ptr %scevgep26, %scevgep23
  %found.conflict30 = and i1 %bound028, %bound129
  %conflict.rdx = or i1 %found.conflict, %found.conflict30
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.t, 8589934584               ; 3 uses
  %i.y = add nsw i64 %n.vec, %i.p
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.z = add i64 %index, %i.p                     ; 3 uses
  %i.aa = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.z ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  %wide.load = load <4 x float>, ptr %i.aa, align 4, !tbaa !54, !alias.scope !71, !noalias !72
  %wide.load31 = load <4 x float>, ptr %i.ab, align 4, !tbaa !54, !alias.scope !71, !noalias !72
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.z ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %wide.load32 = load <4 x float>, ptr %i.ac, align 4, !tbaa !54, !alias.scope !73
  %wide.load33 = load <4 x float>, ptr %i.ad, align 4, !tbaa !54, !alias.scope !73
  %i.ae = fmul fast <4 x float> %wide.load32, %wide.load
  %i.af = fmul fast <4 x float> %wide.load33, %wide.load31
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.z ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %wide.load34 = load <4 x float>, ptr %i.ag, align 4, !tbaa !54, !alias.scope !74
  %wide.load35 = load <4 x float>, ptr %i.ah, align 4, !tbaa !54, !alias.scope !74
  %i.ai = fadd fast <4 x float> %wide.load34, %i.ae
  %i.aj = fadd fast <4 x float> %wide.load35, %i.af
  store <4 x float> %i.ai, ptr %i.aa, align 4, !tbaa !54, !alias.scope !71, !noalias !72
  store <4 x float> %i.aj, ptr %i.ab, align 4, !tbaa !54, !alias.scope !71, !noalias !72
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !69

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.t, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ %i.p, %vector.memcheck ], [ %i.p, %.lr.ph ], [ %i.y, %middle.block ] ; 6 uses
  %i.al = trunc i64 %indvars.iv.ph to i32         ; 2 uses
  %i.am = add i32 %i.j, %i.al
  %i.an = and i32 %i.am, 1
  %lcmp.mod.not.not = icmp eq i32 %i.an, 0
  br i1 %lcmp.mod.not.not, label %scalar.ph.prol, label %scalar.ph.prol.loopexit

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.l, i64 %indvars.iv.ph ; 2 uses
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !54
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.ph
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !54
  %i.as = fmul fast float %i.ar, %i.ap
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.ph
  %i.au = load float, ptr %i.at, align 4, !tbaa !54
  %i.av = fadd fast float %i.au, %i.as
  store float %i.av, ptr %i.ao, align 4, !tbaa !54
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.aw = icmp eq i32 %i.j, %i.al
  br i1 %i.aw, label %._crit_edge, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.ax = getelementptr inbounds [4 x i8], ptr %i.l, i64 %indvars.iv ; 2 uses
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !54
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv
  %i.ba = load float, ptr %i.az, align 4, !tbaa !54
  %i.bb = fmul fast float %i.ba, %i.ay
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !54
  %i.be = fadd fast float %i.bd, %i.bb
  store float %i.be, ptr %i.ax, align 4, !tbaa !54
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 3 uses
  %i.bf = getelementptr inbounds [4 x i8], ptr %i.l, i64 %indvars.iv.next ; 2 uses
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !54
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.next
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !54
  %i.bj = fmul fast float %i.bi, %i.bg
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.next
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !54
  %i.bm = fadd fast float %i.bl, %i.bj
  store float %i.bm, ptr %i.bf, align 4, !tbaa !54
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, 2 ; 2 uses
  %lftr.wideiv.1 = trunc i64 %indvars.iv.next.1 to i32
  %exitcond.not.1 = icmp eq i32 %i.q, %lftr.wideiv.1
  br i1 %exitcond.not.1, label %._crit_edge, label %scalar.ph, !llvm.loop !70

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_4(ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32) local_unnamed_addr #10

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #10

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #10

; Function Attrs: nounwind
declare void @__kmpc_push_num_threads(ptr, i32, i32) local_unnamed_addr #10

; Function Attrs: nounwind
declare !callback !58 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #10

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn5Scale15forward_inplaceERSt6vectorINS_3MatESaIS2_EERKNS_6OptionE.omp_outlined.1(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4) #9 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !44     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i32 0, ptr %i.a, align 4, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  store i32 %i.g, ptr %i.b, align 4, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  store i32 1, ptr %i.c, align 4, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  store i32 0, ptr %i.d, align 4, !tbaa !44
  %i.h = load i32, ptr %0, align 4, !tbaa !44     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !44
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 6 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !44
  %i.k = load i32, ptr %i.a, align 4, !tbaa !44   ; 3 uses
  %.not15 = icmp sgt i32 %i.k, %i.j
  br i1 %.not15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.l = load ptr, ptr %4, align 8, !tbaa !21     ; 8 uses
  %i.m = load ptr, ptr %3, align 8, !tbaa !49     ; 8 uses
  %i.n = sext i32 %i.k to i64                     ; 6 uses
  %i.o = add nsw i32 %i.j, 1
  %i.p = sub i32 %i.j, %i.k                       ; 2 uses
  %i.q = zext i32 %i.p to i64                     ; 2 uses
  %i.r = add nuw nsw i64 %i.q, 1                  ; 2 uses
  %min.iters.check = icmp ult i32 %i.p, 11
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.s = shl nsw i64 %i.n, 2                      ; 2 uses
  %scevgep = getelementptr i8, ptr %i.m, i64 %i.s
  %i.t = add nsw i64 %i.n, %i.q
  %i.u = shl nsw i64 %i.t, 2
  %i.v = add nsw i64 %i.u, 4                      ; 2 uses
  %scevgep20 = getelementptr i8, ptr %i.m, i64 %i.v
  %scevgep21 = getelementptr nuw i8, ptr %i.l, i64 %i.s
  %scevgep22 = getelementptr i8, ptr %i.l, i64 %i.v
  %bound0 = icmp ult ptr %scevgep, %scevgep22
  %bound1 = icmp ult ptr %scevgep21, %scevgep20
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.r, 8589934584               ; 3 uses
  %i.w = add nsw i64 %n.vec, %i.n
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.x = add i64 %index, %i.n                     ; 2 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.x ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %wide.load = load <4 x float>, ptr %i.y, align 4, !tbaa !54, !alias.scope !81
  %wide.load23 = load <4 x float>, ptr %i.z, align 4, !tbaa !54, !alias.scope !81
  %i.aa = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.x ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  %wide.load24 = load <4 x float>, ptr %i.aa, align 4, !tbaa !54, !alias.scope !82, !noalias !81
  %wide.load25 = load <4 x float>, ptr %i.ab, align 4, !tbaa !54, !alias.scope !82, !noalias !81
  %i.ac = fmul fast <4 x float> %wide.load24, %wide.load
  %i.ad = fmul fast <4 x float> %wide.load25, %wide.load23
  store <4 x float> %i.ac, ptr %i.aa, align 4, !tbaa !54, !alias.scope !82, !noalias !81
  store <4 x float> %i.ad, ptr %i.ab, align 4, !tbaa !54, !alias.scope !82, !noalias !81
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !78

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.r, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ %i.n, %vector.memcheck ], [ %i.n, %.lr.ph ], [ %i.w, %middle.block ] ; 3 uses
  %i.af = add i32 %i.j, 1
  %i.ag = trunc i64 %indvars.iv.ph to i32         ; 2 uses
  %i.ah = sub i32 %i.af, %i.ag
  %i.ai = sub i32 %i.j, %i.ag
  %xtraiter = and i32 %i.ah, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i32 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.prol
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !54
  %i.al = getelementptr inbounds [4 x i8], ptr %i.m, i64 %indvars.iv.prol ; 2 uses
  %i.am = load float, ptr %i.al, align 4, !tbaa !54
  %i.an = fmul fast float %i.am, %i.ak
  store float %i.an, ptr %i.al, align 4, !tbaa !54
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !79

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.ao = icmp ult i32 %i.ai, 3
  br i1 %i.ao, label %._crit_edge, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !54
  %i.ar = getelementptr inbounds [4 x i8], ptr %i.m, i64 %indvars.iv ; 2 uses
  %i.as = load float, ptr %i.ar, align 4, !tbaa !54
  %i.at = fmul fast float %i.as, %i.aq
  store float %i.at, ptr %i.ar, align 4, !tbaa !54
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.next
  %i.av = load float, ptr %i.au, align 4, !tbaa !54
  %i.aw = getelementptr inbounds [4 x i8], ptr %i.m, i64 %indvars.iv.next ; 2 uses
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !54
  %i.ay = fmul fast float %i.ax, %i.av
  store float %i.ay, ptr %i.aw, align 4, !tbaa !54
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, 2 ; 2 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.next.1
  %i.ba = load float, ptr %i.az, align 4, !tbaa !54
  %i.bb = getelementptr inbounds [4 x i8], ptr %i.m, i64 %indvars.iv.next.1 ; 2 uses
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !54
  %i.bd = fmul fast float %i.bc, %i.ba
  store float %i.bd, ptr %i.bb, align 4, !tbaa !54
  %indvars.iv.next.2 = add nsw i64 %indvars.iv, 3 ; 2 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.next.2
  %i.bf = load float, ptr %i.be, align 4, !tbaa !54
  %i.bg = getelementptr inbounds [4 x i8], ptr %i.m, i64 %indvars.iv.next.2 ; 2 uses
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !54
  %i.bi = fmul fast float %i.bh, %i.bf
  store float %i.bi, ptr %i.bg, align 4, !tbaa !54
  %indvars.iv.next.3 = add nsw i64 %indvars.iv, 4 ; 2 uses
  %lftr.wideiv.3 = trunc i64 %indvars.iv.next.3 to i32
  %exitcond.not.3 = icmp eq i32 %i.o, %lftr.wideiv.3
  br i1 %exitcond.not.3, label %._crit_edge, label %scalar.ph, !llvm.loop !80

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn5Scale15forward_inplaceERSt6vectorINS_3MatESaIS2_EERKNS_6OptionE.omp_outlined.2(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6) #9 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !44     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i32 0, ptr %i.a, align 4, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  store i32 %i.g, ptr %i.b, align 4, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  store i32 1, ptr %i.c, align 4, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  store i32 0, ptr %i.d, align 4, !tbaa !44
  %i.h = load i32, ptr %0, align 4, !tbaa !44     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !44
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !44
  %i.k = load i32, ptr %i.a, align 4, !tbaa !44   ; 2 uses
  %.not29 = icmp sgt i32 %i.k, %i.j
  br i1 %.not29, label %._crit_edge33.split, label %.lr.ph32

.lr.ph32:                                         ; preds = %bb.b
  %i.l = load ptr, ptr %3, align 8, !tbaa !21
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.n = load i32, ptr %i.m, align 4, !tbaa !47
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.q = load i64, ptr %i.p, align 8, !tbaa !42
  %factor.op.mul = mul i64 %i.q, %i.o
  %i.r = load ptr, ptr %4, align 8, !tbaa !21
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 288
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !21
  %i.u = load i32, ptr %6, align 4, !tbaa !44     ; 3 uses
  %i.v = icmp sgt i32 %i.u, 0
  br i1 %i.v, label %.lr.ph.preheader, label %._crit_edge33.split

.lr.ph.preheader:                                 ; preds = %.lr.ph32
  %i.w = sext i32 %i.k to i64
  %i.x = add nsw i32 %i.j, 1
  %wide.trip.count = zext nneg i32 %i.u to i64    ; 3 uses
  %min.iters.check = icmp ult i32 %i.u, 8
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv35 = phi i64 [ %i.w, %.lr.ph.preheader ], [ %indvars.iv.next36, %._crit_edge ] ; 4 uses
  %.reass = mul i64 %factor.op.mul, %indvars.iv35
  %i.y = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass ; 2 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv35
  %i.aa = load float, ptr %i.z, align 4, !tbaa !54 ; 2 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv35
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !54 ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.aa, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert42 = insertelement <4 x float> poison, float %i.ac, i64 0
  %broadcast.splat43 = shufflevector <4 x float> %broadcast.splatinsert42, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %index ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 2 uses
  %wide.load = load <4 x float>, ptr %i.ad, align 4, !tbaa !54
  %wide.load44 = load <4 x float>, ptr %i.ae, align 4, !tbaa !54
  %i.af = fmul fast <4 x float> %wide.load, %broadcast.splat
  %i.ag = fmul fast <4 x float> %wide.load44, %broadcast.splat
  %i.ah = fadd fast <4 x float> %i.af, %broadcast.splat43
  %i.ai = fadd fast <4 x float> %i.ag, %broadcast.splat43
  store <4 x float> %i.ah, ptr %i.ad, align 4, !tbaa !54
  store <4 x float> %i.ai, ptr %i.ae, align 4, !tbaa !54
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !84

end_hunk_0
