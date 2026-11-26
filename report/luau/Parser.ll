Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/Parser?download=true
inline.NumInlined: 5874
inline.NumDeleted: 2426
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 79
loop-unroll.NumUnrolled: 85
begin_hunk_0_@_ZN4Luau6Parser13parseExprListERNS_10TempVectorIPNS_7AstExprEEEPNS1_INS_8PositionEEE:bb.a
  tail call void (ptr, ptr, ptr, ...) @_ZN4Luau6Parser6reportERKNS_8LocationEPKcz(ptr noundef nonnull align 8 dereferenceable(1232) %0, ptr noundef nonnull align 4 dereferenceable(16) %i.ae, ptr noundef nonnull @.str.253)
  br label %.loopexit

bb.k:                                             ; preds = %bb.i
  %i.ah = tail call noundef ptr @_ZN4Luau6Parser9parseExprEj(ptr noundef nonnull align 8 dereferenceable(1232) %0, i32 noundef 0) ; 2 uses
  %i.ai = load ptr, ptr %1, align 8, !tbaa !382, !nonnull !65, !align !338 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 3 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !324 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 3 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !190
  %.not.i.i5 = icmp eq ptr %i.ak, %i.am
  br i1 %.not.i.i5, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store ptr %i.ah, ptr %i.ak, align 8, !tbaa !51
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr %i.an, ptr %i.aj, align 8, !tbaa !324
  br label %_ZN4Luau10TempVectorIPNS_7AstExprEE9push_backERKS2_.exit12

bb.m:                                             ; preds = %bb.k
  %i.ao = load ptr, ptr %i.ai, align 8, !tbaa !189 ; 4 uses
  %i.ap = ptrtoint ptr %i.ak to i64
  %i.aq = ptrtoint ptr %i.ao to i64               ; 2 uses
  %i.ar = sub i64 %i.ap, %i.aq                    ; 5 uses
  %i.as = icmp eq i64 %i.ar, 9223372036854775800
  br i1 %i.as, label %bb.n, label %_ZNKSt6vectorIPN4Luau7AstExprESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i6

bb.n:                                             ; preds = %bb.m
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.328) #37
  unreachable

_ZNKSt6vectorIPN4Luau7AstExprESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i6: ; preds = %bb.m
  %i.at = ashr exact i64 %i.ar, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i7 = tail call i64 @llvm.umax.i64(i64 %i.at, i64 1)
  %i.au = add nsw i64 %.sroa.speculated.i.i.i.i7, %i.at ; 2 uses
  %i.av = icmp ult i64 %i.au, %i.at
  %i.aw = tail call i64 @llvm.umin.i64(i64 %i.au, i64 1152921504606846975)
  %i.ax = select i1 %i.av, i64 1152921504606846975, i64 %i.aw ; 3 uses
  %.not.i.i.i.i8 = icmp ne i64 %i.ax, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i8)
  %i.ay = shl nuw nsw i64 %i.ax, 3
  %i.az = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ay) #35 ; 4 uses
  %i.ba = getelementptr inbounds i8, ptr %i.az, i64 %i.ar ; 2 uses
  store ptr %i.ah, ptr %i.ba, align 8, !tbaa !51
  %i.bb = icmp sgt i64 %i.ar, 0
  br i1 %i.bb, label %bb.o, label %_ZNSt6vectorIPN4Luau7AstExprESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i9

bb.o:                                             ; preds = %_ZNKSt6vectorIPN4Luau7AstExprESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i6
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.az, ptr align 8 %i.ao, i64 %i.ar, i1 false)
  br label %_ZNSt6vectorIPN4Luau7AstExprESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i9

_ZNSt6vectorIPN4Luau7AstExprESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i9: ; preds = %bb.o, %_ZNKSt6vectorIPN4Luau7AstExprESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i6
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %.not.i17.i.i.i10 = icmp eq ptr %i.ao, null
  br i1 %.not.i17.i.i.i10, label %_ZNSt6vectorIPN4Luau7AstExprESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i11, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIPN4Luau7AstExprESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i9
  %i.bd = load ptr, ptr %i.al, align 8, !tbaa !190
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = sub i64 %i.be, %i.aq
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ao, i64 noundef %i.bf) #36
  br label %_ZNSt6vectorIPN4Luau7AstExprESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i11

_ZNSt6vectorIPN4Luau7AstExprESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i11: ; preds = %bb.p, %_ZNSt6vectorIPN4Luau7AstExprESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i9
  store ptr %i.az, ptr %i.ai, align 8, !tbaa !189
  store ptr %i.bc, ptr %i.aj, align 8, !tbaa !324
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.ax
  store ptr %i.bg, ptr %i.al, align 8, !tbaa !190
  br label %_ZN4Luau10TempVectorIPNS_7AstExprEE9push_backERKS2_.exit12

_ZN4Luau10TempVectorIPNS_7AstExprEE9push_backERKS2_.exit12: ; preds = %bb.l, %_ZNSt6vectorIPN4Luau7AstExprESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i11
  %storemerge.in = load i64, ptr %i.aa, align 8, !tbaa !374
  %storemerge = add i64 %storemerge.in, 1
  store i64 %storemerge, ptr %i.aa, align 8, !tbaa !374
  %i.bh = load i32, ptr %i.ab, align 8, !tbaa !117
  %i.bi = icmp eq i32 %i.bh, 44
  br i1 %i.bi, label %bb.g, label %.loopexit, !llvm.loop !758

.loopexit:                                        ; preds = %_ZN4Luau10TempVectorIPNS_7AstExprEE9push_backERKS2_.exit12, %_ZN4Luau10TempVectorIPNS_7AstExprEE9push_backERKS2_.exit, %bb.j
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local { ptr, i64 } @_ZN4Luau6Parser31extractAnnotationColonPositionsERKNS_10TempVectorINS0_7BindingEEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1232) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1088 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1096 ; 7 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !377  ; 3 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !127  ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f                       ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !369  ; 2 uses
  %.not = icmp eq i64 %i.i, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1104 ; 3 uses
  %.pre = load ptr, ptr %i.k, align 8, !tbaa !128
  br label %bb.b

.lr.ph.preheader.i.i:                             ; preds = %bb.g
  %i.l = ptrtoaddr ptr %i.cs to i64
  %i.m = getelementptr i8, ptr %i.cs, i64 %i.g    ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !337, !nonnull !65, !align !338
  %i.p = shl i64 %i.cv, 3
  %i.q = invoke noundef ptr @_ZN4Luau9Allocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(16) %i.o, i64 noundef %i.p)
          to label %.lr.ph.i.i.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 8 uses

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.preheader.i.i
  %i.r = add nuw i64 %.0825, 1                    ; 3 uses
  %min.iters.check53 = icmp ult i64 %.0825, 13
  br i1 %min.iters.check53, label %.lr.ph.i.i.preheader66, label %vector.memcheck54

vector.memcheck54:                                ; preds = %.lr.ph.i.i.preheader
  %i.s = ptrtoaddr ptr %i.q to i64
  %i.t = add i64 %i.f, %i.s
  %i.u = add i64 %i.l, %i.e
  %i.v = sub i64 %i.u, %i.t
  %diff.check55 = icmp ugt i64 %i.v, -32
  br i1 %diff.check55, label %.lr.ph.i.i.preheader66, label %vector.ph56

vector.ph56:                                      ; preds = %vector.memcheck54
  %n.vec57 = and i64 %i.r, -4                     ; 3 uses
  br label %vector.body58

vector.body58:                                    ; preds = %vector.body58, %vector.ph56
  %index59 = phi i64 [ 0, %vector.ph56 ], [ %index.next62, %vector.body58 ] ; 3 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %index59 ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %index59 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %wide.load60 = load <2 x i64>, ptr %i.x, align 4, !tbaa !29
  %wide.load61 = load <2 x i64>, ptr %i.y, align 4, !tbaa !29
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store <2 x i64> %wide.load60, ptr %i.w, align 4, !tbaa !29
  store <2 x i64> %wide.load61, ptr %i.z, align 4, !tbaa !29
  %index.next62 = add nuw i64 %index59, 4         ; 2 uses
  %i.aa = icmp eq i64 %index.next62, %n.vec57
  br i1 %i.aa, label %middle.block63, label %vector.body58, !llvm.loop !759

middle.block63:                                   ; preds = %vector.body58
  %cmp.n64 = icmp eq i64 %i.r, %n.vec57
  br i1 %cmp.n64, label %.loopexit.loopexit, label %.lr.ph.i.i.preheader66

.lr.ph.i.i.preheader66:                           ; preds = %vector.memcheck54, %.lr.ph.i.i.preheader, %middle.block63
  %.010.i.i.ph = phi i64 [ 0, %vector.memcheck54 ], [ 0, %.lr.ph.i.i.preheader ], [ %n.vec57, %middle.block63 ] ; 3 uses
  %i.ab = sub i64 %.0825, %.010.i.i.ph
  %xtraiter = and i64 %i.r, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader66, %.lr.ph.i.i.prol
  %.010.i.i.prol = phi i64 [ %i.af, %.lr.ph.i.i.prol ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader66 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader66 ]
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.010.i.i.prol
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.010.i.i.prol
  %i.ae = load i64, ptr %i.ad, align 4, !tbaa !29
  store i64 %i.ae, ptr %i.ac, align 4, !tbaa !29
  %i.af = add nuw i64 %.010.i.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !760

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader66
  %.010.i.i.unr = phi i64 [ %.010.i.i.ph, %.lr.ph.i.i.preheader66 ], [ %i.af, %.lr.ph.i.i.prol ]
  %i.ag = icmp ult i64 %i.ab, 3
  br i1 %i.ag, label %.loopexit.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.010.i.i = phi i64 [ %i.aw, %.lr.ph.i.i ], [ %.010.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.010.i.i
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.010.i.i
  %i.aj = load i64, ptr %i.ai, align 4, !tbaa !29
  store i64 %i.aj, ptr %i.ah, align 4, !tbaa !29
  %i.ak = add nuw i64 %.010.i.i, 1                ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.ak
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.ak
  %i.an = load i64, ptr %i.am, align 4, !tbaa !29
  store i64 %i.an, ptr %i.al, align 4, !tbaa !29
  %i.ao = add nuw i64 %.010.i.i, 2                ; 2 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.ao
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.ao
  %i.ar = load i64, ptr %i.aq, align 4, !tbaa !29
  store i64 %i.ar, ptr %i.ap, align 4, !tbaa !29
  %i.as = add nuw i64 %.010.i.i, 3                ; 3 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.as
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.as
  %i.av = load i64, ptr %i.au, align 4, !tbaa !29
  store i64 %i.av, ptr %i.at, align 4, !tbaa !29
  %i.aw = add nuw i64 %.010.i.i, 4
  %exitcond.not.i.i.3 = icmp eq i64 %i.as, %.0825
  br i1 %exitcond.not.i.i.3, label %.loopexit.loopexit, label %.lr.ph.i.i, !llvm.loop !761

bb.b:                                             ; preds = %.lr.ph, %bb.g
  %i.ax = phi i64 [ %i.i, %.lr.ph ], [ %i.cr, %bb.g ]
  %i.ay = phi ptr [ %i.d, %.lr.ph ], [ %i.cs, %bb.g ] ; 8 uses
  %i.az = phi ptr [ %.pre, %.lr.ph ], [ %i.ct, %bb.g ] ; 5 uses
  %i.ba = phi ptr [ %i.c, %.lr.ph ], [ %i.cu, %bb.g ] ; 4 uses
  %.0825 = phi i64 [ 0, %.lr.ph ], [ %i.cv, %bb.g ] ; 6 uses
  %2 = ptrtoaddr ptr %i.az to i64
  %i.bb = load ptr, ptr %1, align 8, !tbaa !381, !nonnull !65, !align !338
  %i.bc = load i64, ptr %i.j, align 8, !tbaa !368
  %i.bd = load ptr, ptr %i.bb, align 8, !tbaa !182
  %i.be = getelementptr [48 x i8], ptr %i.bd, i64 %i.bc
  %i.bf = getelementptr [48 x i8], ptr %i.be, i64 %.0825
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ba, %i.az
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bh = load i64, ptr %i.bg, align 4, !tbaa !29
  store i64 %i.bh, ptr %i.ba, align 4, !tbaa !29
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 2 uses
  store ptr %i.bi, ptr %i.b, align 8, !tbaa !377
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.bj = ptrtoint ptr %i.ba to i64
  %i.bk = ptrtoint ptr %i.ay to i64               ; 4 uses
  %i.bl = sub i64 %i.bj, %i.bk                    ; 3 uses
  %i.bm = icmp eq i64 %i.bl, 9223372036854775800
  br i1 %i.bm, label %bb.e, label %_ZNKSt6vectorIN4Luau8PositionESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.328) #37
          to label %.noexc10 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc10:                                         ; preds = %bb.e
  unreachable

_ZNKSt6vectorIN4Luau8PositionESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.d
  %i.bn = ashr exact i64 %i.bl, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bn, i64 1)
  %i.bo = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bn ; 2 uses
  %i.bp = icmp ult i64 %i.bo, %i.bn
  %i.bq = tail call i64 @llvm.umin.i64(i64 %i.bo, i64 1152921504606846975)
  %i.br = select i1 %i.bp, i64 1152921504606846975, i64 %i.bq ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.br, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.bs = shl nuw nsw i64 %i.br, 3
  %i.bt = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bs) #35
          to label %.noexc11 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 9 uses

.noexc11:                                         ; preds = %_ZNKSt6vectorIN4Luau8PositionESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bl
  %i.bv = load i64, ptr %i.bg, align 4, !tbaa !29
  store i64 %i.bv, ptr %i.bu, align 4, !tbaa !29
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.ay, %i.az
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN4Luau8PositionESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.noexc11
  %i.bw = ptrtoaddr ptr %i.bt to i64
  %i.bx = add i64 %2, -8
  %i.by = sub i64 %i.bx, %i.bk                    ; 2 uses
  %i.bz = lshr i64 %i.by, 3
  %i.ca = add nuw nsw i64 %i.bz, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.by, 24
  %i.cb = sub i64 %i.bk, %i.bw
  %diff.check = icmp ugt i64 %i.cb, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.preheader67, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ca, 4611686018427387900     ; 3 uses
  %i.cc = shl i64 %n.vec, 3                       ; 2 uses
  %i.cd = getelementptr i8, ptr %i.bt, i64 %i.cc  ; 2 uses
  %i.ce = getelementptr i8, ptr %i.ay, i64 %i.cc
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cf = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bt, i64 %i.cf ; 2 uses
  %next.gep47 = getelementptr i8, ptr %i.ay, i64 %i.cf ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !768)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !769)
  %i.cg = getelementptr i8, ptr %next.gep47, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep47, align 4, !tbaa !29, !alias.scope !769
  %wide.load48 = load <2 x i64>, ptr %i.cg, align 4, !tbaa !29, !alias.scope !769
  %i.ch = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4, !tbaa !29, !alias.scope !768
  store <2 x i64> %wide.load48, ptr %i.ch, align 4, !tbaa !29, !alias.scope !768
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ci = icmp eq i64 %index.next, %n.vec
  br i1 %i.ci, label %middle.block, label %vector.body, !llvm.loop !765

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ca, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN4Luau8PositionESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader67

.lr.ph.i.i.i.i.i.i.preheader67:                   ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.bt, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.cd, %middle.block ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ce, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader67, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.cl, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader67 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.ck, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader67 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !768)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !769)
  %i.cj = load i64, ptr %.0911.i.i.i.i.i.i, align 4, !tbaa !29, !alias.scope !769
  store i64 %i.cj, ptr %.012.i.i.i.i.i.i, align 4, !tbaa !29, !alias.scope !768
  %i.ck = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ck, %i.az
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN4Luau8PositionESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !766

_ZNSt6vectorIN4Luau8PositionESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %.noexc11
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.bt, %.noexc11 ], [ %i.cd, %middle.block ], [ %i.cl, %.lr.ph.i.i.i.i.i.i ]
  %i.cm = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN4Luau8PositionESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN4Luau8PositionESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  %i.cn = load ptr, ptr %i.k, align 8, !tbaa !128
  %i.co = ptrtoint ptr %i.cn to i64
  %i.cp = sub i64 %i.co, %i.bk
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef %i.cp) #36
  br label %_ZNSt6vectorIN4Luau8PositionESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIN4Luau8PositionESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.f, %_ZNSt6vectorIN4Luau8PositionESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  store ptr %i.bt, ptr %i.a, align 8, !tbaa !127
  store ptr %i.cm, ptr %i.b, align 8, !tbaa !377
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %i.br ; 2 uses
  store ptr %i.cq, ptr %i.k, align 8, !tbaa !128
  %.pre28 = load i64, ptr %i.h, align 8, !tbaa !369
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN4Luau8PositionESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, %bb.c
  %i.cr = phi i64 [ %.pre28, %_ZNSt6vectorIN4Luau8PositionESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %i.ax, %bb.c ] ; 2 uses
  %i.cs = phi ptr [ %i.bt, %_ZNSt6vectorIN4Luau8PositionESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %i.ay, %bb.c ] ; 3 uses
  %i.ct = phi ptr [ %i.cq, %_ZNSt6vectorIN4Luau8PositionESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %i.az, %bb.c ]
  %i.cu = phi ptr [ %i.cm, %_ZNSt6vectorIN4Luau8PositionESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %i.bi, %bb.c ]
  %i.cv = add nuw i64 %.0825, 1                   ; 4 uses
  %i.cw = icmp ult i64 %i.cv, %i.cr
  br i1 %i.cw, label %bb.b, label %.lr.ph.preheader.i.i, !llvm.loop !767

.loopexit.loopexit:                               ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %middle.block63
  %.pre29 = load ptr, ptr %i.b, align 8, !tbaa !384
  br label %.loopexit

.loopexit:                                        ; preds = %bb.a, %.loopexit.loopexit
  %.sroa.12.0.lcssa40 = phi i64 [ %i.cv, %.loopexit.loopexit ], [ 0, %bb.a ]
  %i.cx = phi ptr [ %.pre29, %.loopexit.loopexit ], [ %i.c, %bb.a ]
  %i.cy = phi ptr [ %i.q, %.loopexit.loopexit ], [ null, %bb.a ]
  %i.cz = load ptr, ptr %i.a, align 8, !tbaa !384
  %i.da = getelementptr inbounds i8, ptr %i.cz, i64 %i.g ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.da, %i.cx
  br i1 %.not.i.i.i, label %_ZN4Luau10TempVectorINS_8PositionEED2Ev.exit, label %_ZSt8_DestroyIPN4Luau8PositionES1_EvT_S3_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPN4Luau8PositionES1_EvT_S3_RSaIT0_E.exit.i.i.i.i: ; preds = %.loopexit
  store ptr %i.da, ptr %i.b, align 8, !tbaa !377
  br label %_ZN4Luau10TempVectorINS_8PositionEED2Ev.exit

_ZN4Luau10TempVectorINS_8PositionEED2Ev.exit:     ; preds = %.loopexit, %_ZSt8_DestroyIPN4Luau8PositionES1_EvT_S3_RSaIT0_E.exit.i.i.i.i
  %.fca.0.insert.i.i = insertvalue { ptr, i64 } poison, ptr %i.cy, 0
  %.fca.1.insert.i.i = insertvalue { ptr, i64 } %.fca.0.insert.i.i, i64 %.sroa.12.0.lcssa40, 1
  ret { ptr, i64 } %.fca.1.insert.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorIN4Luau8PositionESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.e, %.lr.ph.preheader.i.i
  %lpad.loopexit.split-lp68 = landingpad { ptr, i32 }
          cleanup
  %i.db = load ptr, ptr %i.a, align 8, !tbaa !384
  %i.dc = getelementptr inbounds i8, ptr %i.db, i64 %i.g ; 2 uses
  %i.dd = load ptr, ptr %i.b, align 8, !tbaa !384
  %.not.i.i.i12 = icmp eq ptr %i.dc, %i.dd
  br i1 %.not.i.i.i12, label %_ZN4Luau10TempVectorINS_8PositionEED2Ev.exit14, label %_ZSt8_DestroyIPN4Luau8PositionES1_EvT_S3_RSaIT0_E.exit.i.i.i.i13

_ZSt8_DestroyIPN4Luau8PositionES1_EvT_S3_RSaIT0_E.exit.i.i.i.i13: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  store ptr %i.dc, ptr %i.b, align 8, !tbaa !377
  br label %_ZN4Luau10TempVectorINS_8PositionEED2Ev.exit14

_ZN4Luau10TempVectorINS_8PositionEED2Ev.exit14:   ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZSt8_DestroyIPN4Luau8PositionES1_EvT_S3_RSaIT0_E.exit.i.i.i.i13
  resume { ptr, i32 } %lpad.loopexit.split-lp68
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN4Luau6Parser17parseFunctionNameERbRNS_7AstNameE(ptr noundef nonnull align 8 dereferenceable(1232) %0, ptr nofree noundef nonnull writeonly align 1 captures(none) dereferenceable(1) %1, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.Luau::Position", align 8   ; 4 uses
  %4 = alloca %"struct.Luau::Parser::Name", align 8 ; 6 uses
  %5 = alloca %"struct.Luau::Location", align 8   ; 5 uses
  %6 = alloca %"struct.Luau::Position", align 8   ; 4 uses
  %7 = alloca %"struct.Luau::Parser::Name", align 8 ; 8 uses
  %8 = alloca %"struct.Luau::Location", align 8   ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 5 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !117
  %i.c = icmp eq i32 %i.b, 281
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !42
  %i.f = ptrtoint ptr %i.e to i64
  store i64 %i.f, ptr %2, align 8, !tbaa !59
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = tail call noundef ptr @_ZN4Luau6Parser13parseNameExprEPKc(ptr noundef nonnull align 8 dereferenceable(1232) %0, ptr noundef nonnull @.str.166) ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 276 ; 4 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !315
  %i.j = load i32, ptr %i.a, align 8, !tbaa !117  ; 2 uses
  %i.k = icmp eq i32 %i.j, 46
  br i1 %i.k, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %.sroa.5.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 8
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %_ZN4Luau6Parser25incrementRecursionCounterEPKc.exit
  %.019 = phi ptr [ %i.g, %.lr.ph ], [ %i.aa, %_ZN4Luau6Parser25incrementRecursionCounterEPKc.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  %i.r = load i64, ptr %i.l, align 4, !tbaa !29
  store i64 %i.r, ptr %3, align 8, !tbaa !29
  call void @_ZN4Luau6Parser10nextLexemeEv(ptr noundef nonnull align 8 dereferenceable(1232) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  call void @llvm.experimental.noalias.scope.decl(metadata !779)
  %i.s = load i32, ptr %i.a, align 8, !tbaa !117, !noalias !780
  %.not.i.i = icmp eq i32 %i.s, 281
  br i1 %.not.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.t = load ptr, ptr %i.o, align 8, !tbaa !42, !noalias !780
  %i.u = ptrtoint ptr %i.t to i64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull align 4 dereferenceable(16) %i.l, i64 16, i1 false)
  call void @_ZN4Luau6Parser10nextLexemeEv(ptr noundef nonnull align 8 dereferenceable(1232) %0), !noalias !780
  %.pre = load i64, ptr %.sroa.5.0..sroa_idx3.i, align 8, !tbaa !29
  br label %_ZN4Luau6Parser9parseNameEPKc.exit

bb.f:                                             ; preds = %bb.d
  call void @_ZN4Luau6Parser15reportNameErrorEPKc(ptr noundef nonnull align 8 dereferenceable(1232) %0, ptr noundef nonnull @.str.167), !noalias !780
  %.sroa.0.0.copyload.i = load i64, ptr %i.l, align 4, !tbaa !29, !noalias !779 ; 3 uses
  %i.v = load i64, ptr %i.m, align 8, !tbaa !59, !noalias !779
  store i64 %.sroa.0.0.copyload.i, ptr %i.n, align 8, !tbaa !29, !alias.scope !779
  store i64 %.sroa.0.0.copyload.i, ptr %.sroa.5.0..sroa_idx3.i, align 8, !tbaa !29, !alias.scope !779
  br label %_ZN4Luau6Parser9parseNameEPKc.exit

_ZN4Luau6Parser9parseNameEPKc.exit:               ; preds = %bb.e, %bb.f
  %i.w = phi i64 [ %.pre, %bb.e ], [ %.sroa.0.0.copyload.i, %bb.f ]
  %.sink.i = phi i64 [ %i.u, %bb.e ], [ %i.v, %bb.f ] ; 2 uses
  store i64 %.sink.i, ptr %4, align 8, !tbaa !59, !alias.scope !779
  store i64 %.sink.i, ptr %2, align 8, !tbaa !59
  %i.x = load ptr, ptr %i.p, align 8, !tbaa !337, !nonnull !65, !align !338
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  %i.y = getelementptr inbounds nuw i8, ptr %.019, i64 12
  %i.z = load i64, ptr %i.y, align 4, !tbaa !29
  store i64 %i.z, ptr %5, align 8, !tbaa !29
end_hunk_0
