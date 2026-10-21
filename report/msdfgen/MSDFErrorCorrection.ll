Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/msdfgen/original/MSDFErrorCorrection?download=true
inline.NumInlined: 699
inline.NumDeleted: 118
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN7msdfgen19MSDFErrorCorrection14protectCornersERKNS_5ShapeE:bb.a
  br label %_ZN7msdfgen13BitmapSectionIhLi1EE8reorientENS_16YAxisOrientationE.exit

_ZN7msdfgen13BitmapSectionIhLi1EE8reorientENS_16YAxisOrientationE.exit: ; preds = %bb.a, %bb.b
  %i.n = load ptr, ptr %1, align 8, !tbaa !114    ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !114
  %.not5156 = icmp eq ptr %i.n, %i.p
  br i1 %.not5156, label %._crit_edge, label %.lr.ph58

.lr.ph58:                                         ; preds = %_ZN7msdfgen13BitmapSectionIhLi1EE8reorientENS_16YAxisOrientationE.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  br label %bb.c

._crit_edge:                                      ; preds = %.loopexit, %_ZN7msdfgen13BitmapSectionIhLi1EE8reorientENS_16YAxisOrientationE.exit
  ret void

bb.c:                                             ; preds = %.lr.ph58, %.loopexit
  %.sroa.045.057 = phi ptr [ %i.n, %.lr.ph58 ], [ %i.df, %.loopexit ] ; 4 uses
  %i.v = load ptr, ptr %.sroa.045.057, align 8, !tbaa !116
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.045.057, i64 8 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !116  ; 2 uses
  %i.y = icmp eq ptr %i.v, %i.x
  br i1 %i.y, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds i8, ptr %i.x, i64 -8
  %i.aa = call noundef ptr @_ZNK7msdfgen10EdgeHoldercvPKNS_11EdgeSegmentEEv(ptr noundef nonnull align 8 dereferenceable(8) %i.z)
  %i.ab = load ptr, ptr %.sroa.045.057, align 8, !tbaa !116 ; 2 uses
  %i.ac = load ptr, ptr %i.w, align 8, !tbaa !116
  %.not5253 = icmp eq ptr %i.ab, %i.ac
  br i1 %.not5253, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %bb.q
  %.055 = phi ptr [ %i.dc, %bb.q ], [ %i.aa, %bb.d ]
  %.sroa.039.054 = phi ptr [ %i.dd, %bb.q ], [ %i.ab, %bb.d ] ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.055, i64 8
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !271
  %i.af = call noundef ptr @_ZNK7msdfgen10EdgeHolderptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.039.054)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !271
  %i.ai = and i32 %i.ah, %i.ae
  %i.aj = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.ai)
  %.not = icmp samesign ult i32 %i.aj, 2
  br i1 %.not, label %bb.e, label %bb.q

bb.e:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.ak = call noundef ptr @_ZNK7msdfgen10EdgeHolderptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.039.054) ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !273
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = call { double, double } %i.an(ptr noundef nonnull align 8 dereferenceable(12) %i.ak, double noundef 0.000000e+00) ; 2 uses
  %i.ap = extractvalue { double, double } %i.ao, 0
  store double %i.ap, ptr %2, align 8
  %i.aq = extractvalue { double, double } %i.ao, 1
  store double %i.aq, ptr %i.r, align 8
  %i.ar = call { double, double } @_ZNK7msdfgen10Projection7projectERKNS_7Vector2E(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(16) %2) ; 2 uses
  %i.as = extractvalue { double, double } %i.ar, 0
  %i.at = extractvalue { double, double } %i.ar, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  %i.au = fadd double %i.as, -5.000000e-01
  %i.av = call double @llvm.floor.f64(double %i.au)
  %i.aw = fptosi double %i.av to i32              ; 6 uses
  %i.ax = fadd double %i.at, -5.000000e-01
  %i.ay = call double @llvm.floor.f64(double %i.ax)
  %i.az = fptosi double %i.ay to i32              ; 6 uses
  %i.ba = add nsw i32 %i.aw, 1                    ; 4 uses
  %i.bb = add nsw i32 %i.az, 1                    ; 4 uses
  %i.bc = load i32, ptr %i.s, align 8, !tbaa !117 ; 2 uses
  %i.bd = icmp sgt i32 %i.bc, %i.aw
  br i1 %i.bd, label %bb.f, label %bb.q

bb.f:                                             ; preds = %bb.e
  %i.be = load i32, ptr %i.t, align 4, !tbaa !118
  %i.bf = icmp sgt i32 %i.be, %i.az
  %i.bg = icmp sgt i32 %i.aw, -2
  %or.cond = and i1 %i.bg, %i.bf
  %i.bh = icmp sgt i32 %i.az, -2
  %or.cond3 = and i1 %i.bh, %or.cond
  br i1 %or.cond3, label %bb.g, label %bb.q

bb.g:                                             ; preds = %bb.f
  %i.bi = icmp sgt i32 %i.aw, -1                  ; 2 uses
  %i.bj = icmp sgt i32 %i.az, -1                  ; 2 uses
  %or.cond5 = select i1 %i.bi, i1 %i.bj, i1 false
  br i1 %or.cond5, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bk = load ptr, ptr %0, align 8, !tbaa !18
  %i.bl = load i32, ptr %i.u, align 8, !tbaa !16
  %i.bm = mul nsw i32 %i.bl, %i.az
  %i.bn = sext i32 %i.bm to i64
  %i.bo = getelementptr inbounds i8, ptr %i.bk, i64 %i.bn
  %i.bp = zext nneg i32 %i.aw to i64
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bp ; 2 uses
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !31
  %i.bs = or i8 %i.br, 2
  store i8 %i.bs, ptr %i.bq, align 1, !tbaa !31
  %.pre = load i32, ptr %i.s, align 8, !tbaa !117
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.bt = phi i32 [ %.pre, %bb.h ], [ %i.bc, %bb.g ]
  %i.bu = icmp slt i32 %i.ba, %i.bt
  %or.cond7 = select i1 %i.bu, i1 %i.bj, i1 false
  br i1 %or.cond7, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bv = load ptr, ptr %0, align 8, !tbaa !18
  %i.bw = load i32, ptr %i.u, align 8, !tbaa !16
  %i.bx = mul nsw i32 %i.bw, %i.az
  %i.by = sext i32 %i.bx to i64
  %i.bz = getelementptr inbounds i8, ptr %i.bv, i64 %i.by
  %i.ca = zext nneg i32 %i.ba to i64
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.ca ; 2 uses
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !31
  %i.cd = or i8 %i.cc, 2
  store i8 %i.cd, ptr %i.cb, align 1, !tbaa !31
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  br i1 %i.bi, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.ce = load i32, ptr %i.t, align 4, !tbaa !118
  %i.cf = icmp slt i32 %i.bb, %i.ce
  br i1 %i.cf, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cg = load ptr, ptr %0, align 8, !tbaa !18
  %i.ch = load i32, ptr %i.u, align 8, !tbaa !16
  %i.ci = mul nsw i32 %i.ch, %i.bb
  %i.cj = sext i32 %i.ci to i64
  %i.ck = getelementptr inbounds i8, ptr %i.cg, i64 %i.cj
  %i.cl = zext nneg i32 %i.aw to i64
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.cl ; 2 uses
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !31
  %i.co = or i8 %i.cn, 2
  store i8 %i.co, ptr %i.cm, align 1, !tbaa !31
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  %i.cp = load i32, ptr %i.s, align 8, !tbaa !117
  %i.cq = icmp slt i32 %i.ba, %i.cp
  br i1 %i.cq, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.cr = load i32, ptr %i.t, align 4, !tbaa !118
  %i.cs = icmp slt i32 %i.bb, %i.cr
  br i1 %i.cs, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ct = load ptr, ptr %0, align 8, !tbaa !18
  %i.cu = load i32, ptr %i.u, align 8, !tbaa !16
  %i.cv = mul nsw i32 %i.cu, %i.bb
  %i.cw = sext i32 %i.cv to i64
  %i.cx = getelementptr inbounds i8, ptr %i.ct, i64 %i.cw
  %i.cy = zext nneg i32 %i.ba to i64
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.cy ; 2 uses
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !31
  %i.db = or i8 %i.da, 2
  store i8 %i.db, ptr %i.cz, align 1, !tbaa !31
  br label %bb.q

bb.q:                                             ; preds = %bb.e, %bb.f, %bb.p, %bb.o, %bb.n, %.lr.ph
  %i.dc = call noundef ptr @_ZNK7msdfgen10EdgeHoldercvPKNS_11EdgeSegmentEEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.039.054)
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.039.054, i64 8 ; 2 uses
  %i.de = load ptr, ptr %i.w, align 8, !tbaa !116
  %.not52 = icmp eq ptr %i.dd, %i.de
  br i1 %.not52, label %.loopexit, label %.lr.ph, !llvm.loop !267

.loopexit:                                        ; preds = %bb.q, %bb.d, %bb.c
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.045.057, i64 24 ; 2 uses
  %i.dg = load ptr, ptr %i.o, align 8, !tbaa !114
  %.not51 = icmp eq ptr %i.df, %i.dg
  br i1 %.not51, label %._crit_edge, label %bb.c, !llvm.loop !268
}

declare noundef ptr @_ZNK7msdfgen10EdgeHoldercvPKNS_11EdgeSegmentEEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare noundef ptr @_ZNK7msdfgen10EdgeHolderptEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare { double, double } @_ZNK7msdfgen10Projection7projectERKNS_7Vector2E(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN7msdfgen19MSDFErrorCorrection10protectAllEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !118  ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph12, label %._crit_edge13

.lr.ph12:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !117  ; 2 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph12.split, label %._crit_edge13

._crit_edge13:                                    ; preds = %._crit_edge, %.lr.ph12, %bb.a
  ret void

.lr.ph12.split:                                   ; preds = %.lr.ph12, %._crit_edge
  %i.h = phi i32 [ %i.n, %._crit_edge ], [ %i.b, %.lr.ph12 ]
  %i.i = phi i32 [ %i.o, %._crit_edge ], [ %i.f, %.lr.ph12 ] ; 2 uses
  %.0710 = phi i32 [ %i.p, %._crit_edge ], [ 0, %.lr.ph12 ] ; 2 uses
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.lr.ph12.split
  %1 = load ptr, ptr %0, align 8, !tbaa !18
  %2 = load i32, ptr %i.d, align 8, !tbaa !16
  %i.k = mul nsw i32 %2, %.0710
  %i.l = sext i32 %i.k to i64
  %i.m = getelementptr inbounds i8, ptr %1, i64 %i.l
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre.a = load i32, ptr %i.a, align 4, !tbaa !118
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph12.split
  %i.n = phi i32 [ %.pre.a, %._crit_edge.loopexit ], [ %i.h, %.lr.ph12.split ] ; 2 uses
  %i.o = phi i32 [ %i.v, %._crit_edge.loopexit ], [ %i.i, %.lr.ph12.split ]
  %i.p = add nuw nsw i32 %.0710, 1                ; 2 uses
  %i.q = icmp slt i32 %i.p, %i.n
  br i1 %i.q, label %.lr.ph12.split, label %._crit_edge13, !llvm.loop !274

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.09 = phi i32 [ %i.u, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %.068 = phi ptr [ %i.r, %.lr.ph ], [ %i.m, %.lr.ph.preheader ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.068, i64 1
  %i.s = load i8, ptr %.068, align 1, !tbaa !31
  %i.t = or i8 %i.s, 2
  store i8 %i.t, ptr %.068, align 1, !tbaa !31
  %i.u = add nuw nsw i32 %.09, 1                  ; 2 uses
  %i.v = load i32, ptr %i.e, align 8, !tbaa !117  ; 2 uses
  %i.w = icmp slt i32 %i.u, %i.v
  br i1 %i.w, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !275
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZNK7msdfgen19MSDFErrorCorrection10getStencilEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.msdfgen::BitmapConstSection.28") align 8 captures(none) initializes((0, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %1) local_unnamed_addr #10 align 2 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !278)
  %i.a = load ptr, ptr %1, align 8, !tbaa !18, !noalias !278
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.a, ptr %0, align 8, !tbaa !280, !alias.scope !278
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load <4 x i32>, ptr %i.b, align 8, !tbaa !31, !noalias !278
  store <4 x i32> %i.d, ptr %i.c, align 8, !tbaa !31, !alias.scope !278
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #12 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #19 ; 0 uses
  tail call void @_ZSt9terminatev() #21
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #13

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #14

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN7msdfgen19ShapeDistanceFinderINS_26OverlappingContourCombinerINS_29PerpendicularDistanceSelectorEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !68   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN7msdfgen33PerpendicularDistanceSelectorBase9EdgeCacheESaIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !69
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #20
  br label %_ZNSt6vectorIN7msdfgen33PerpendicularDistanceSelectorBase9EdgeCacheESaIS2_EED2Ev.exit

_ZNSt6vectorIN7msdfgen33PerpendicularDistanceSelectorBase9EdgeCacheESaIS2_EED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !96   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN7msdfgen29PerpendicularDistanceSelectorESaIS1_EED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN7msdfgen33PerpendicularDistanceSelectorBase9EdgeCacheESaIS2_EED2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !97
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #20
  br label %_ZNSt6vectorIN7msdfgen29PerpendicularDistanceSelectorESaIS1_EED2Ev.exit.i

_ZNSt6vectorIN7msdfgen29PerpendicularDistanceSelectorESaIS1_EED2Ev.exit.i: ; preds = %bb.c, %_ZNSt6vectorIN7msdfgen33PerpendicularDistanceSelectorBase9EdgeCacheESaIS2_EED2Ev.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !98   ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i1.i, label %_ZN7msdfgen26OverlappingContourCombinerINS_29PerpendicularDistanceSelectorEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN7msdfgen29PerpendicularDistanceSelectorESaIS1_EED2Ev.exit.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !99
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #20
  br label %_ZN7msdfgen26OverlappingContourCombinerINS_29PerpendicularDistanceSelectorEED2Ev.exit

_ZN7msdfgen26OverlappingContourCombinerINS_29PerpendicularDistanceSelectorEED2Ev.exit: ; preds = %_ZNSt6vectorIN7msdfgen29PerpendicularDistanceSelectorESaIS1_EED2Ev.exit.i, %bb.d
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN7msdfgen26OverlappingContourCombinerINS_29PerpendicularDistanceSelectorEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !96   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN7msdfgen29PerpendicularDistanceSelectorESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !97
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #20
  br label %_ZNSt6vectorIN7msdfgen29PerpendicularDistanceSelectorESaIS1_EED2Ev.exit

_ZNSt6vectorIN7msdfgen29PerpendicularDistanceSelectorESaIS1_EED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !98   ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN7msdfgen29PerpendicularDistanceSelectorESaIS1_EED2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !99
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #20
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZNSt6vectorIN7msdfgen29PerpendicularDistanceSelectorESaIS1_EED2Ev.exit, %bb.c
  ret void
}

declare void @_ZN7msdfgen10ProjectionC2Ev(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #2

declare void @_ZN7msdfgen15DistanceMappingC1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc noundef zeroext i1 @_ZN7msdfgenL22hasLinearArtifactInnerINS_22BaseArtifactClassifierEEEbRKT_ffPKfS6_ff(double %.0.val, i8 %.8.val, float noundef %0, float noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, float noundef %4, float noundef %5) unnamed_addr #4 {
bb.a:
  %i.a = fpext float %4 to double
  %i.b = fsub float %4, %5
  %i.c = fpext float %i.b to double
  %i.d = fdiv double %i.a, %i.c                   ; 6 uses
  %i.e = fcmp ogt double %i.d, 1.000000e-02
  %i.f = fcmp olt double %i.d, f0x3FEFAE147AE147AE
  %or.cond = and i1 %i.e, %i.f
  br i1 %or.cond, label %bb.b, label %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit

bb.b:                                             ; preds = %bb.a
  %i.g = load float, ptr %2, align 4, !tbaa !30
  %i.h = load float, ptr %3, align 4, !tbaa !30
  %i.i = fsub double 1.000000e+00, %i.d           ; 3 uses
  %i.j = fpext float %i.g to double
  %i.k = fpext float %i.h to double
  %i.l = fmul double %i.d, %i.k
  %i.m = tail call double @llvm.fmuladd.f64(double %i.i, double %i.j, double %i.l)
  %i.n = fptrunc double %i.m to float             ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.q = load <2 x float>, ptr %i.o, align 4, !tbaa !30
  %i.r = load <2 x float>, ptr %i.p, align 4, !tbaa !30
  %i.s = fpext <2 x float> %i.q to <2 x double>
  %i.t = fpext <2 x float> %i.r to <2 x double>
  %i.u = insertelement <2 x double> poison, double %i.d, i64 0
  %i.v = shufflevector <2 x double> %i.u, <2 x double> poison, <2 x i32> zeroinitializer
  %i.w = fmul <2 x double> %i.v, %i.t
  %i.x = insertelement <2 x double> poison, double %i.i, i64 0
  %i.y = shufflevector <2 x double> %i.x, <2 x double> poison, <2 x i32> zeroinitializer
  %i.z = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.y, <2 x double> %i.s, <2 x double> %i.w)
  %i.aa = fptrunc <2 x double> %i.z to <2 x float> ; 3 uses
  %i.ab = extractelement <2 x float> %i.aa, i64 0 ; 2 uses
  %i.ac = fcmp ogt float %i.ab, %i.n
  %i.ad = select i1 %i.ac, float %i.ab, float %i.n
  %i.ae = insertelement <2 x float> poison, float %i.n, i64 0
  %i.af = insertelement <2 x float> %i.ae, float %i.ad, i64 1 ; 2 uses
  %i.ag = fcmp ogt <2 x float> %i.af, %i.aa
  %i.ah = select <2 x i1> %i.ag, <2 x float> %i.aa, <2 x float> %i.af ; 2 uses
  %i.ai = extractelement <2 x float> %i.ah, i64 0 ; 2 uses
  %i.aj = extractelement <2 x float> %i.ah, i64 1 ; 2 uses
  %i.ak = fcmp olt float %i.ai, %i.aj
  %i.al = select i1 %i.ak, float %i.aj, float %i.ai ; 6 uses
  %i.am = fcmp ogt float %0, 5.000000e-01
  %i.an = fcmp ogt float %1, 5.000000e-01
  %or.cond.i = and i1 %i.am, %i.an
  %i.ao = fcmp ole float %i.al, 5.000000e-01
  %or.cond3.i = and i1 %or.cond.i, %i.ao
  br i1 %or.cond3.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ap = fcmp olt float %0, 5.000000e-01
  %i.aq = fcmp olt float %1, 5.000000e-01
  %or.cond5.i = and i1 %i.ap, %i.aq
  %i.ar = fcmp oge float %i.al, 5.000000e-01
  %or.cond7.i = and i1 %or.cond5.i, %i.ar
  br i1 %or.cond7.i, label %bb.f, label %bb.d
end_hunk_0
