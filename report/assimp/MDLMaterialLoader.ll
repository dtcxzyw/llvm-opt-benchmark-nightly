inline.NumInlined: 254
inline.NumDeleted: 140
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN6Assimp11MDLImporter13SearchPaletteEPPKh:._crit_edge.i.i
  %i.aa = landingpad { ptr, i32 }
          cleanup
  %i.ab = load ptr, ptr %2, align 8               ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.c
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17: ; preds = %bb.c
  %i.ad = load i64, ptr %i.c, align 8
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.ae) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  resume { ptr, i32 } %i.aa

bb.d:                                             ; preds = %bb.a, %bb.b
  %.012 = phi ptr [ %i.u, %bb.b ], [ @_ZL21g_aclrDefaultColorMap, %bb.a ]
  %i.af = load ptr, ptr %i.k, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8
  call void %i.ah(ptr noundef nonnull align 8 dereferenceable(8) %i.k) #20
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.1 = phi ptr [ %.012, %bb.d ], [ @_ZL21g_aclrDefaultColorMap, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  store ptr %.1, ptr %1, align 8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #2

declare noundef ptr @_ZN6Assimp13DefaultLogger3getEv() local_unnamed_addr #3

declare void @_ZN6Assimp6Logger4infoEPKc(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6Assimp11MDLImporter11FreePaletteEPKh(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(159) %0, ptr noundef %1) local_unnamed_addr #4 align 2 {
bb.a:
  %.not = icmp eq ptr %1, @_ZL21g_aclrDefaultColorMap
  %i.a = icmp eq ptr %1, null
  %or.cond = or i1 %.not, %i.a
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdaPv(ptr noundef %1) #21
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden { <2 x float>, <2 x float> } @_ZN6Assimp11MDLImporter23ReplaceTextureWithColorEPK9aiTexture(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(159) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load i32, ptr %i.a, align 4              ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %_ZNK7aiTexelneERKS_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %1, align 8                ; 2 uses
  %.not18 = icmp eq i32 %i.c, 0
  br i1 %.not18, label %_ZNK7aiTexelneERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = mul i32 %i.c, %i.b                       ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8              ; 6 uses
  %i.g = zext i32 %i.d to i64
  %.idx = shl nuw nsw i64 %i.g, 2
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx
  %.not19.not29 = icmp eq i32 %i.d, 1
  br i1 %.not19.not29, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %.028 = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  br label %bb.e

bb.d:                                             ; preds = %_ZNK7aiTexelneERKS_.exit
  %.0 = getelementptr inbounds nuw i8, ptr %.031, i64 4 ; 2 uses
  %.not19.not = icmp eq ptr %.0, %i.h
  br i1 %.not19.not, label %.critedge, label %bb.e, !llvm.loop !4

bb.e:                                             ; preds = %.lr.ph, %bb.d
  %.031 = phi ptr [ %.028, %.lr.ph ], [ %.0, %bb.d ] ; 3 uses
  %.pn30 = phi ptr [ %i.f, %.lr.ph ], [ %.031, %bb.d ] ; 7 uses
  %i.i = load i8, ptr %.031, align 1
  %i.j = load i8, ptr %.pn30, align 1
  %.not.i = icmp eq i8 %i.i, %i.j
  br i1 %.not.i, label %bb.f, label %_ZNK7aiTexelneERKS_.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.pn30, i64 6
  %i.l = load i8, ptr %i.k, align 1
  %i.m = getelementptr inbounds nuw i8, ptr %.pn30, i64 2
  %i.n = load i8, ptr %i.m, align 1
  %.not5.i = icmp eq i8 %i.l, %i.n
  br i1 %.not5.i, label %bb.g, label %_ZNK7aiTexelneERKS_.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %.pn30, i64 5
  %i.p = load i8, ptr %i.o, align 1
  %i.q = getelementptr inbounds nuw i8, ptr %.pn30, i64 1
  %i.r = load i8, ptr %i.q, align 1
  %.not6.i = icmp eq i8 %i.p, %i.r
  br i1 %.not6.i, label %_ZNK7aiTexelneERKS_.exit, label %_ZNK7aiTexelneERKS_.exit.thread

_ZNK7aiTexelneERKS_.exit:                         ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %.pn30, i64 7
  %i.t = load i8, ptr %i.s, align 1
  %i.u = getelementptr inbounds nuw i8, ptr %.pn30, i64 3
  %i.v = load i8, ptr %i.u, align 1
  %.not25 = icmp eq i8 %i.t, %i.v
  br i1 %.not25, label %bb.d, label %_ZNK7aiTexelneERKS_.exit.thread, !llvm.loop !4

.critedge:                                        ; preds = %bb.d, %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %i.x = load <2 x i8>, ptr %i.w, align 1
  %i.y = uitofp <2 x i8> %i.x to <2 x float>
  %i.z = fdiv <2 x float> %i.y, splat (float 2.550000e+02)
  %i.aa = shufflevector <2 x float> %i.z, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ab = load i8, ptr %i.f, align 1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.f, i64 3
  %i.ad = load i8, ptr %i.ac, align 1
  %i.ae = insertelement <2 x i8> poison, i8 %i.ab, i64 0
  %i.af = insertelement <2 x i8> %i.ae, i8 %i.ad, i64 1
  %i.ag = uitofp <2 x i8> %i.af to <2 x float>
  %i.ah = fdiv <2 x float> %i.ag, splat (float 2.550000e+02)
  br label %_ZNK7aiTexelneERKS_.exit.thread

_ZNK7aiTexelneERKS_.exit.thread:                  ; preds = %bb.e, %bb.f, %bb.g, %_ZNK7aiTexelneERKS_.exit, %.critedge, %bb.a, %bb.b
  %.sroa.5.0 = phi <2 x float> [ zeroinitializer, %bb.a ], [ zeroinitializer, %bb.b ], [ %i.ah, %.critedge ], [ zeroinitializer, %_ZNK7aiTexelneERKS_.exit ], [ zeroinitializer, %bb.g ], [ zeroinitializer, %bb.f ], [ zeroinitializer, %bb.e ]
  %.sroa.0.0 = phi <2 x float> [ <float +qnan, float 0.000000e+00>, %bb.a ], [ <float +qnan, float 0.000000e+00>, %bb.b ], [ %i.aa, %.critedge ], [ <float +qnan, float 0.000000e+00>, %_ZNK7aiTexelneERKS_.exit ], [ <float +qnan, float 0.000000e+00>, %bb.g ], [ <float +qnan, float 0.000000e+00>, %bb.f ], [ <float +qnan, float 0.000000e+00>, %bb.e ]
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> %.sroa.5.0, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp11MDLImporter28CreateTextureARGB8_3DGS_MDL3EPKh(ptr noundef nonnull align 8 dereferenceable(159) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 52 ; 2 uses
  %i.e = load i32, ptr %i.d, align 1
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 56 ; 2 uses
  %i.g = load i32, ptr %i.f, align 1
  %i.h = mul nsw i32 %i.g, %i.e
  %i.i = sext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 %i.i
  tail call void @_ZN6Assimp11MDLImporter9SizeCheckEPKv(ptr noundef nonnull align 8 dereferenceable(159) %0, ptr noundef %i.j)
  %i.k = tail call noalias noundef nonnull dereferenceable(1064) ptr @_Znwm(i64 noundef 1064) #22 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.m, i8 0, i64 9, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1036) %i.l, i8 0, i64 1036, i1 false)
  %i.n = load i32, ptr %i.d, align 1              ; 4 uses
  store i32 %i.n, ptr %i.k, align 8
  %i.o = load i32, ptr %i.f, align 1              ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  store i32 %i.o, ptr %i.p, align 4
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %mul = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.n, i32 %i.o)
  %mul.ov = extractvalue { i32, i1 } %mul, 1
  br i1 %mul.ov, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.q = tail call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull @.str.2)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @__cxa_throw(ptr nonnull %i.q, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.r = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.q) #20
  resume { ptr, i32 } %i.r

bb.f:                                             ; preds = %bb.b, %bb.a
  %i.s = mul i32 %i.o, %i.n                       ; 4 uses
  %i.t = zext i32 %i.s to i64                     ; 2 uses
  %i.u = shl nuw nsw i64 %i.t, 2
  %i.v = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.u) #22 ; 4 uses
  store ptr %i.v, ptr %i.l, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  call void @_ZN6Assimp11MDLImporter13SearchPaletteEPPKh(ptr noundef nonnull align 8 dereferenceable(159) %0, ptr noundef nonnull %i.a)
  %.pre = load ptr, ptr %i.a, align 8             ; 6 uses
  switch i32 %i.s, label %.lr.ph.preheader.new [
    i32 0, label %._crit_edge
    i32 1, label %.lr.ph.epil.preheader
  ]

.lr.ph.preheader.new:                             ; preds = %bb.f
  %unroll_iter = and i64 %i.t, 4294967294
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = trunc i32 %i.s to i1
  br i1 %lcmp.mod.not, label %.lr.ph.epil.preheader, label %._crit_edge

.lr.ph.epil.preheader:                            ; preds = %bb.f, %._crit_edge.loopexit.unr-lcssa
  %indvars.iv.epil.init = phi i64 [ 0, %bb.f ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod66 = trunc i32 %i.s to i1
  tail call void @llvm.assume(i1 %lcmp.mod66)
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.epil.init
  %i.x = load i8, ptr %i.w, align 1
  %i.y = zext i8 %i.x to i64
  %i.z = mul nuw nsw i64 %i.y, 3
  %i.aa = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.z ; 3 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv.epil.init ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 3
  store i8 -1, ptr %i.ac, align 1
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 1
  %i.ae = load i8, ptr %i.aa, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 2
  store i8 %i.ae, ptr %i.af, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 2
  %i.ah = load i8, ptr %i.ad, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 1
  store i8 %i.ah, ptr %i.ai, align 1
  %i.aj = load i8, ptr %i.ag, align 1
  store i8 %i.aj, ptr %i.ab, align 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.f
  %.not.i = icmp eq ptr %.pre, @_ZL21g_aclrDefaultColorMap
  %i.ak = icmp eq ptr %.pre, null
  %or.cond.i = or i1 %.not.i, %i.ak
  br i1 %or.cond.i, label %_ZN6Assimp11MDLImporter11FreePaletteEPKh.exit, label %bb.g

bb.g:                                             ; preds = %._crit_edge
  tail call void @_ZdaPv(ptr noundef %.pre) #21
  br label %_ZN6Assimp11MDLImporter11FreePaletteEPKh.exit

_ZN6Assimp11MDLImporter11FreePaletteEPKh.exit:    ; preds = %._crit_edge, %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 4 uses
  %i.am = load ptr, ptr %i.al, align 8            ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 72 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8            ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 64
  %i.aq = load i32, ptr %i.ap, align 8
  %i.ar = add i32 %i.aq, 1
  %i.as = zext i32 %i.ar to i64
  %i.at = shl nuw nsw i64 %i.as, 3
  %i.au = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.at) #22
  store ptr %i.au, ptr %i.an, align 8
  %i.av = load ptr, ptr %i.al, align 8            ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 64
  %i.ax = load i32, ptr %i.aw, align 8
  %.not52 = icmp eq i32 %i.ax, 0
  br i1 %.not52, label %._crit_edge49, label %.lr.ph48

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.az = load i8, ptr %i.ay, align 1
  %i.ba = zext i8 %i.az to i64
  %i.bb = mul nuw nsw i64 %i.ba, 3
  %i.bc = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.bb ; 3 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 3
  store i8 -1, ptr %i.be, align 1
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 1
  %i.bg = load i8, ptr %i.bc, align 1
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 2
  store i8 %i.bg, ptr %i.bh, align 1
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bc, i64 2
  %i.bj = load i8, ptr %i.bf, align 1
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bd, i64 1
  store i8 %i.bj, ptr %i.bk, align 1
  %i.bl = load i8, ptr %i.bi, align 1
  store i8 %i.bl, ptr %i.bd, align 1
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next
  %i.bn = load i8, ptr %i.bm, align 1
  %i.bo = zext i8 %i.bn to i64
  %i.bp = mul nuw nsw i64 %i.bo, 3
  %i.bq = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.bp ; 3 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv.next ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 3
  store i8 -1, ptr %i.bs, align 1
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 1
  %i.bu = load i8, ptr %i.bq, align 1
  %i.bv = getelementptr inbounds nuw i8, ptr %i.br, i64 2
  store i8 %i.bu, ptr %i.bv, align 1
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bq, i64 2
  %i.bx = load i8, ptr %i.bt, align 1
  %i.by = getelementptr inbounds nuw i8, ptr %i.br, i64 1
  store i8 %i.bx, ptr %i.by, align 1
  %i.bz = load i8, ptr %i.bw, align 1
  store i8 %i.bz, ptr %i.br, align 1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !6

._crit_edge49.loopexit:                           ; preds = %.lr.ph48
  %i.ca = zext i32 %i.cr to i64
  br label %._crit_edge49

._crit_edge49:                                    ; preds = %_ZN6Assimp11MDLImporter11FreePaletteEPKh.exit, %._crit_edge49.loopexit
  %.lcssa45 = phi ptr [ %i.cp, %._crit_edge49.loopexit ], [ %i.av, %_ZN6Assimp11MDLImporter11FreePaletteEPKh.exit ]
  %.lcssa = phi i64 [ %i.ca, %._crit_edge49.loopexit ], [ 0, %_ZN6Assimp11MDLImporter11FreePaletteEPKh.exit ]
  %i.cb = getelementptr inbounds nuw i8, ptr %.lcssa45, i64 72
  %i.cc = load ptr, ptr %i.cb, align 8
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %.lcssa
  store ptr %i.k, ptr %i.cd, align 8
  %i.ce = load ptr, ptr %i.al, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 64 ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 8
  %i.ch = add i32 %i.cg, 1
  store i32 %i.ch, ptr %i.cf, align 8
  %i.ci = icmp eq ptr %i.ao, null
  br i1 %i.ci, label %bb.i, label %bb.h

.lr.ph48:                                         ; preds = %_ZN6Assimp11MDLImporter11FreePaletteEPKh.exit, %.lr.ph48
  %indvars.iv56 = phi i64 [ %indvars.iv.next57, %.lr.ph48 ], [ 0, %_ZN6Assimp11MDLImporter11FreePaletteEPKh.exit ] ; 3 uses
  %i.cj = phi ptr [ %i.cp, %.lr.ph48 ], [ %i.av, %_ZN6Assimp11MDLImporter11FreePaletteEPKh.exit ]
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %indvars.iv56
  %i.cl = load ptr, ptr %i.ck, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 72
  %i.cn = load ptr, ptr %i.cm, align 8
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %indvars.iv56
  store ptr %i.cl, ptr %i.co, align 8
  %indvars.iv.next57 = add nuw nsw i64 %indvars.iv56, 1 ; 2 uses
  %i.cp = load ptr, ptr %i.al, align 8            ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 64
  %i.cr = load i32, ptr %i.cq, align 8            ; 2 uses
  %i.cs = zext i32 %i.cr to i64
  %i.ct = icmp samesign ult i64 %indvars.iv.next57, %i.cs
  br i1 %i.ct, label %.lr.ph48, label %._crit_edge49.loopexit, !llvm.loop !7

bb.h:                                             ; preds = %._crit_edge49
  tail call void @_ZdaPv(ptr noundef nonnull %i.ao) #21
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge49
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret void
}

declare void @_ZN6Assimp11MDLImporter9SizeCheckEPKv(ptr noundef nonnull align 8 dereferenceable(159), ptr noundef) local_unnamed_addr #3

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #2

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %2 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  store ptr %1, ptr %i.a, align 8
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %2)
  invoke void @_ZN15DeadlyErrorBaseC2IJEPKcEEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.b, ptr %2, align 8
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.d = getelementptr i8, ptr %i.b, i64 -24
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds i8, ptr %2, i64 %i.e
  store ptr %i.c, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.l = load i64, ptr %i.j, align 8
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #21
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.g, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.n) #20
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.o) #20
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV17DeadlyImportError, i64 16), ptr %0, align 8
  ret void

bb.c:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %2) #20
  resume { ptr, i32 } %i.p
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #7

end_hunk_0
