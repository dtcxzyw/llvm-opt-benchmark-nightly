Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ASTDiff?download=true
inline.NumInlined: 18098
inline.NumDeleted: 9323
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN5clang4diff7ASTDiff4Impl14computeMappingEv:bb.a
  br label %_ZNSt6vectorIN5clang4diff6NodeIdESaIS2_EE9push_backERKS2_.exit.i.i99.i

bb.s:                                             ; preds = %.lr.ph.i52.i
  %i.fk = ptrtoint ptr %i.fh to i64               ; 2 uses
  %i.fl = ptrtoint ptr %.pre.i.i98274.i to i64    ; 3 uses
  %i.fm = sub i64 %i.fk, %i.fl                    ; 4 uses
  %i.fn = icmp eq i64 %i.fm, 9223372036854775804
  br i1 %i.fn, label %bb.t, label %_ZNKSt6vectorIN5clang4diff6NodeIdESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i110.i

bb.t:                                             ; preds = %bb.s
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #28, !noalias !938
  unreachable

_ZNKSt6vectorIN5clang4diff6NodeIdESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i110.i: ; preds = %bb.s
  %i.fo = ashr exact i64 %i.fm, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i111.i = tail call i64 @llvm.umax.i64(i64 %i.fo, i64 1)
  %i.fp = add nsw i64 %.sroa.speculated.i.i.i.i.i111.i, %i.fo ; 2 uses
  %i.fq = icmp ult i64 %i.fp, %i.fo
  %i.fr = tail call i64 @llvm.umin.i64(i64 %i.fp, i64 2305843009213693951)
  %i.fs = select i1 %i.fq, i64 2305843009213693951, i64 %i.fr ; 3 uses
  %.not.i.i.i.i.i112.i = icmp ne i64 %i.fs, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i112.i)
  %i.ft = shl nuw nsw i64 %i.fs, 2
  %i.fu = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ft) #27, !noalias !938 ; 9 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 %i.fm
  store i32 %.sroa.01.0.copyload.i54.i, ptr %i.fv, align 4, !tbaa !461, !noalias !938
  %.not10.i.i.i.i.i.i.i113.i = icmp eq ptr %.pre.i.i98274.i, %i.fh
  br i1 %.not10.i.i.i.i.i.i.i113.i, label %_ZNSt6vectorIN5clang4diff6NodeIdESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i118.i, label %.lr.ph.i.i.i.i.i.i.i114.i.preheader

.lr.ph.i.i.i.i.i.i.i114.i.preheader:              ; preds = %_ZNKSt6vectorIN5clang4diff6NodeIdESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i110.i
  %i.fw = ptrtoaddr ptr %i.fu to i64
  %i.fx = add i64 %i.fk, -4
  %i.fy = sub i64 %i.fx, %i.fl                    ; 2 uses
  %i.fz = lshr i64 %i.fy, 2
  %i.ga = add nuw nsw i64 %i.fz, 1                ; 2 uses
  %min.iters.check148 = icmp ult i64 %i.fy, 28
  %i.gb = sub i64 %i.fl, %i.fw
  %diff.check150 = icmp ugt i64 %i.gb, -32
  %or.cond218 = or i1 %min.iters.check148, %diff.check150
  br i1 %or.cond218, label %.lr.ph.i.i.i.i.i.i.i114.i.preheader227, label %vector.ph151

vector.ph151:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i114.i.preheader
  %n.vec152 = and i64 %i.ga, 9223372036854775800  ; 3 uses
  %i.gc = shl i64 %n.vec152, 2                    ; 2 uses
  %i.gd = getelementptr i8, ptr %i.fu, i64 %i.gc  ; 2 uses
  %i.ge = getelementptr i8, ptr %.pre.i.i98274.i, i64 %i.gc
  br label %vector.body153

vector.body153:                                   ; preds = %vector.body153, %vector.ph151
  %index154 = phi i64 [ 0, %vector.ph151 ], [ %index.next159, %vector.body153 ] ; 2 uses
  %i.gf = shl i64 %index154, 2                    ; 2 uses
  %next.gep155 = getelementptr i8, ptr %i.fu, i64 %i.gf ; 2 uses
  %next.gep156 = getelementptr i8, ptr %.pre.i.i98274.i, i64 %i.gf ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !944)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !945)
  %i.gg = getelementptr i8, ptr %next.gep156, i64 16
  %wide.load157 = load <4 x i32>, ptr %next.gep156, align 4, !tbaa !461, !alias.scope !945, !noalias !938
  %wide.load158 = load <4 x i32>, ptr %i.gg, align 4, !tbaa !461, !alias.scope !945, !noalias !938
  %i.gh = getelementptr i8, ptr %next.gep155, i64 16
  store <4 x i32> %wide.load157, ptr %next.gep155, align 4, !tbaa !461, !alias.scope !944, !noalias !938
  store <4 x i32> %wide.load158, ptr %i.gh, align 4, !tbaa !461, !alias.scope !944, !noalias !938
  %index.next159 = add nuw i64 %index154, 8       ; 2 uses
  %i.gi = icmp eq i64 %index.next159, %n.vec152
  br i1 %i.gi, label %middle.block160, label %vector.body153, !llvm.loop !918

middle.block160:                                  ; preds = %vector.body153
  %cmp.n161 = icmp eq i64 %i.ga, %n.vec152
  br i1 %cmp.n161, label %_ZNSt6vectorIN5clang4diff6NodeIdESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i118.i, label %.lr.ph.i.i.i.i.i.i.i114.i.preheader227

.lr.ph.i.i.i.i.i.i.i114.i.preheader227:           ; preds = %.lr.ph.i.i.i.i.i.i.i114.i.preheader, %middle.block160
  %.012.i.i.i.i.i.i.i115.i.ph = phi ptr [ %i.fu, %.lr.ph.i.i.i.i.i.i.i114.i.preheader ], [ %i.gd, %middle.block160 ]
  %.0911.i.i.i.i.i.i.i116.i.ph = phi ptr [ %.pre.i.i98274.i, %.lr.ph.i.i.i.i.i.i.i114.i.preheader ], [ %i.ge, %middle.block160 ]
  br label %.lr.ph.i.i.i.i.i.i.i114.i

.lr.ph.i.i.i.i.i.i.i114.i:                        ; preds = %.lr.ph.i.i.i.i.i.i.i114.i.preheader227, %.lr.ph.i.i.i.i.i.i.i114.i
  %.012.i.i.i.i.i.i.i115.i = phi ptr [ %i.gl, %.lr.ph.i.i.i.i.i.i.i114.i ], [ %.012.i.i.i.i.i.i.i115.i.ph, %.lr.ph.i.i.i.i.i.i.i114.i.preheader227 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i116.i = phi ptr [ %i.gk, %.lr.ph.i.i.i.i.i.i.i114.i ], [ %.0911.i.i.i.i.i.i.i116.i.ph, %.lr.ph.i.i.i.i.i.i.i114.i.preheader227 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !944)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !945)
  %i.gj = load i32, ptr %.0911.i.i.i.i.i.i.i116.i, align 4, !tbaa !461, !alias.scope !945, !noalias !938
  store i32 %i.gj, ptr %.012.i.i.i.i.i.i.i115.i, align 4, !tbaa !461, !alias.scope !944, !noalias !938
  %i.gk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i116.i, i64 4 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i115.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i117.i = icmp eq ptr %i.gk, %i.fh
  br i1 %.not.i.i.i.i.i.i.i117.i, label %_ZNSt6vectorIN5clang4diff6NodeIdESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i118.i, label %.lr.ph.i.i.i.i.i.i.i114.i, !llvm.loop !919

_ZNSt6vectorIN5clang4diff6NodeIdESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i118.i: ; preds = %.lr.ph.i.i.i.i.i.i.i114.i, %middle.block160, %_ZNKSt6vectorIN5clang4diff6NodeIdESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i110.i
  %.0.lcssa.i.i.i.i.i.i.i119.i = phi ptr [ %i.fu, %_ZNKSt6vectorIN5clang4diff6NodeIdESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i110.i ], [ %i.gd, %middle.block160 ], [ %i.gl, %.lr.ph.i.i.i.i.i.i.i114.i ]
  %i.gm = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i119.i, i64 4 ; 2 uses
  %.not.i23.i.i.i.i120.i = icmp eq ptr %.pre.i.i98274.i, null
  br i1 %.not.i23.i.i.i.i120.i, label %_ZNSt6vectorIN5clang4diff6NodeIdESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i121.i, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorIN5clang4diff6NodeIdESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i118.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.pre.i.i98274.i, i64 noundef %i.fm) #29, !noalias !938
  br label %_ZNSt6vectorIN5clang4diff6NodeIdESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i121.i

_ZNSt6vectorIN5clang4diff6NodeIdESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i121.i: ; preds = %bb.u, %_ZNSt6vectorIN5clang4diff6NodeIdESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i118.i
  store ptr %i.fu, ptr %i.al, align 8, !tbaa !519, !noalias !938
  store ptr %i.gm, ptr %i.am, align 8, !tbaa !521, !noalias !938
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.fu, i64 %i.fs ; 2 uses
  store ptr %i.gn, ptr %i.at, align 8, !tbaa !520, !noalias !938
  br label %_ZNSt6vectorIN5clang4diff6NodeIdESaIS2_EE9push_backERKS2_.exit.i.i99.i

_ZNSt6vectorIN5clang4diff6NodeIdESaIS2_EE9push_backERKS2_.exit.i.i99.i: ; preds = %_ZNSt6vectorIN5clang4diff6NodeIdESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i121.i, %bb.r
  %.pre.i.i98273.i = phi ptr [ %.pre.i.i98274.i, %bb.r ], [ %i.fu, %_ZNSt6vectorIN5clang4diff6NodeIdESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i121.i ] ; 5 uses
  %i.go = phi ptr [ %i.fh, %bb.r ], [ %i.gn, %_ZNSt6vectorIN5clang4diff6NodeIdESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i121.i ]
  %i.gp = phi ptr [ %i.fj, %bb.r ], [ %i.gm, %_ZNSt6vectorIN5clang4diff6NodeIdESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i121.i ] ; 3 uses
  %i.gq = getelementptr inbounds i8, ptr %i.gp, i64 -4
  %.sroa.02.0.copyload.i.i.i100.i = load i32, ptr %i.gq, align 4, !tbaa !461, !noalias !938 ; 2 uses
  %i.gr = ptrtoint ptr %i.gp to i64
  %i.gs = ptrtoint ptr %.pre.i.i98273.i to i64
  %i.gt = sub i64 %i.gr, %i.gs
  %i.gu = ashr exact i64 %i.gt, 2                 ; 2 uses
  %i.gv = add nsw i64 %i.gu, -1                   ; 2 uses
  %i.gw = icmp sgt i64 %i.gu, 1
  br i1 %i.gw, label %.lr.ph.i.i.i.i102.i, label %_ZN5clang4diff12_GLOBAL__N_112PriorityList4pushENS0_6NodeIdE.exit122.i

.lr.ph.i.i.i.i102.i:                              ; preds = %_ZNSt6vectorIN5clang4diff6NodeIdESaIS2_EE9push_backERKS2_.exit.i.i99.i
  %.val.val.i.i.i.i104.i = load ptr, ptr %i.fg, align 8, !tbaa !460, !noalias !938 ; 2 uses
  %i.gx = sext i32 %.sroa.02.0.copyload.i.i.i100.i to i64
  %i.gy = getelementptr inbounds nuw [104 x i8], ptr %.val.val.i.i.i.i104.i, i64 %i.gx
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 16
  br label %bb.v

bb.v:                                             ; preds = %bb.w, %.lr.ph.i.i.i.i102.i
  %.011.i.i.i.i105.i = phi i64 [ %i.gv, %.lr.ph.i.i.i.i102.i ], [ %.0912.i910.i.i.i107.i, %bb.w ] ; 3 uses
  %.0912.in.i.i.i.i106.i = add nsw i64 %.011.i.i.i.i105.i, -1
  %.0912.i910.i.i.i107.i = lshr i64 %.0912.in.i.i.i.i106.i, 1 ; 3 uses
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i98273.i, i64 %.0912.i910.i.i.i107.i
  %.sroa.01.0.copyload.i.i.i.i.i108.i = load i32, ptr %i.ha, align 4, !tbaa !461, !noalias !938 ; 2 uses
  %i.hb = sext i32 %.sroa.01.0.copyload.i.i.i.i.i108.i to i64
  %i.hc = getelementptr inbounds nuw [104 x i8], ptr %.val.val.i.i.i.i104.i, i64 %i.hb
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 16
  %i.he = load i32, ptr %i.hd, align 8, !tbaa !585, !noalias !938
  %i.hf = load i32, ptr %i.gz, align 8, !tbaa !585, !noalias !938
  %i.hg = icmp slt i32 %i.he, %i.hf
  br i1 %i.hg, label %bb.w, label %_ZN5clang4diff12_GLOBAL__N_112PriorityList4pushENS0_6NodeIdE.exit122.i

bb.w:                                             ; preds = %bb.v
  %i.hh = getelementptr inbounds [4 x i8], ptr %.pre.i.i98273.i, i64 %.011.i.i.i.i105.i
  store i32 %.sroa.01.0.copyload.i.i.i.i.i108.i, ptr %i.hh, align 4, !tbaa !461, !noalias !938
  %.not.i4.i.i109.i = icmp eq i64 %.0912.i910.i.i.i107.i, 0
  br i1 %.not.i4.i.i109.i, label %_ZN5clang4diff12_GLOBAL__N_112PriorityList4pushENS0_6NodeIdE.exit122.i, label %bb.v, !llvm.loop !4

_ZN5clang4diff12_GLOBAL__N_112PriorityList4pushENS0_6NodeIdE.exit122.i: ; preds = %bb.w, %bb.v, %_ZNSt6vectorIN5clang4diff6NodeIdESaIS2_EE9push_backERKS2_.exit.i.i99.i
  %.0.lcssa.i.i.i.i101.i = phi i64 [ %i.gv, %_ZNSt6vectorIN5clang4diff6NodeIdESaIS2_EE9push_backERKS2_.exit.i.i99.i ], [ %.011.i.i.i.i105.i, %bb.v ], [ 0, %bb.w ]
  %i.hi = getelementptr inbounds [4 x i8], ptr %.pre.i.i98273.i, i64 %.0.lcssa.i.i.i.i101.i
  store i32 %.sroa.02.0.copyload.i.i.i100.i, ptr %i.hi, align 4, !tbaa !461, !noalias !938
  %i.hj = getelementptr inbounds nuw i8, ptr %.011.i53.i, i64 4 ; 2 uses
  %.not.i55.i = icmp eq ptr %i.hj, %i.ff
  br i1 %.not.i55.i, label %_ZN5clang4diff12_GLOBAL__N_112PriorityList4openENS0_6NodeIdE.exit56.i, label %.lr.ph.i52.i

_ZN5clang4diff12_GLOBAL__N_112PriorityList4openENS0_6NodeIdE.exit56.i: ; preds = %_ZN5clang4diff12_GLOBAL__N_112PriorityList4pushENS0_6NodeIdE.exit122.i, %bb.q
  %i.hk = getelementptr inbounds nuw i8, ptr %.sroa.0213.0276.i, i64 4 ; 2 uses
  %.not233.i = icmp eq ptr %i.hk, %i.eq
  br i1 %.not233.i, label %._crit_edge279.i, label %bb.q

_ZNSt6vectorIN5clang4diff6NodeIdESaIS2_EED2Ev.exit63.i: ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25, !noalias !938
  call fastcc void @_ZN5clang4diff12_GLOBAL__N_112PriorityList3popEv(ptr dead_on_unwind noalias writable align 8 %8, ptr noundef nonnull align 8 dereferenceable(72) %4), !noalias !938
  %i.hl = load ptr, ptr %8, align 8, !tbaa !519, !noalias !938 ; 6 uses
  %i.hm = load ptr, ptr %i.ao, align 8, !tbaa !521, !noalias !938 ; 3 uses
  %i.hn = load ptr, ptr %i.ap, align 8, !tbaa !520, !noalias !938
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25, !noalias !938
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25, !noalias !938
  call fastcc void @_ZN5clang4diff12_GLOBAL__N_112PriorityList3popEv(ptr dead_on_unwind noalias writable align 8 %9, ptr noundef nonnull align 8 dereferenceable(72) %5), !noalias !938
  %i.ho = load ptr, ptr %9, align 8, !tbaa !519, !noalias !938 ; 7 uses
  %i.hp = load ptr, ptr %i.aq, align 8, !tbaa !521, !noalias !938 ; 4 uses
  %i.hq = load ptr, ptr %i.ar, align 8, !tbaa !520, !noalias !938
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25, !noalias !938
  %.not251.i = icmp eq ptr %i.hl, %i.hm
  br i1 %.not251.i, label %.preheader.i, label %.lr.ph253.i

.lr.ph253.i:                                      ; preds = %_ZNSt6vectorIN5clang4diff6NodeIdESaIS2_EED2Ev.exit63.i
  %.not230248.i = icmp eq ptr %i.ho, %i.hp
  br i1 %.not230248.i, label %.lr.ph260.i, label %.lr.ph250.i

.lr.ph260.i:                                      ; preds = %._crit_edge.i, %.lr.ph253.i
  %i.hr = load ptr, ptr %4, align 8, !noalias !938, !nonnull !442, !align !443
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 32
  br label %bb.ab

.lr.ph250.i:                                      ; preds = %.lr.ph253.i, %._crit_edge.i
  %.sroa.0195.0252.i = phi ptr [ %i.hw, %._crit_edge.i ], [ %i.hl, %.lr.ph253.i ] ; 2 uses
  %i.ht = load i32, ptr %.sroa.0195.0252.i, align 4, !tbaa !461, !noalias !938 ; 4 uses
  %i.hu = sext i32 %i.ht to i64                   ; 4 uses
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.hu
  %broadcast.splatinsert206 = insertelement <4 x i32> poison, i32 %i.ht, i64 0
  %broadcast.splat207 = shufflevector <4 x i32> %broadcast.splatinsert206, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction208 = add <4 x i32> %broadcast.splat207, <i32 0, i32 1, i32 2, i32 3>
  %invariant.gep = getelementptr [4 x i8], ptr %i.ae, i64 %i.hu
  br label %bb.x

._crit_edge.i:                                    ; preds = %.loopexit.i
  %i.hw = getelementptr inbounds nuw i8, ptr %.sroa.0195.0252.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.hw, %i.hm
  br i1 %.not.i, label %.lr.ph260.i, label %.lr.ph250.i

bb.x:                                             ; preds = %.loopexit.i, %.lr.ph250.i
  %.sroa.0187.0249.i = phi ptr [ %i.ho, %.lr.ph250.i ], [ %i.is, %.loopexit.i ] ; 2 uses
  %i.hx = load i32, ptr %.sroa.0187.0249.i, align 4, !tbaa !461, !noalias !938 ; 3 uses
  %i.hy = tail call noundef zeroext i1 @_ZNK5clang4diff7ASTDiff4Impl9identicalENS0_6NodeIdES3_(ptr noundef nonnull readonly align 8 dereferenceable(40) %0, i32 %i.ht, i32 %i.hx), !noalias !938
  br i1 %i.hy, label %bb.y, label %.loopexit.i

bb.y:                                             ; preds = %bb.x
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.hv, align 4, !tbaa !461, !noalias !938
  %.not231.i = icmp eq i32 %.sroa.0.0.copyload.i.i.i, -1
  br i1 %.not231.i, label %bb.z, label %.loopexit.i

bb.z:                                             ; preds = %bb.y
  %i.hz = sext i32 %i.hx to i64                   ; 3 uses
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.hz
  %.sroa.0.0.copyload.i.i64.i = load i32, ptr %i.ia, align 4, !tbaa !461, !noalias !938
  %.not232.i = icmp eq i32 %.sroa.0.0.copyload.i.i64.i, -1
  br i1 %.not232.i, label %bb.aa, label %.loopexit.i

bb.aa:                                            ; preds = %bb.z
  %i.ib = load ptr, ptr %0, align 8, !tbaa !577, !noalias !938, !nonnull !442, !align !443
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 32
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !460, !noalias !938
  %i.ie = getelementptr inbounds nuw [104 x i8], ptr %i.id, i64 %i.hu
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 8
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !449, !noalias !938
  %reass.sub.i = sub i32 %i.ig, %i.ht             ; 3 uses
  %i.ih = icmp ult i32 %reass.sub.i, 2147483647
  br i1 %i.ih, label %.lr.ph.preheader.i, label %.loopexit.i

.lr.ph.preheader.i:                               ; preds = %bb.aa
  %i.ii = add nuw nsw i32 %reass.sub.i, 1
  %wide.trip.count.i = zext nneg i32 %i.ii to i64 ; 3 uses
  %min.iters.check203 = icmp ult i32 %reass.sub.i, 7
  br i1 %min.iters.check203, label %.lr.ph.i.preheader, label %vector.ph204

vector.ph204:                                     ; preds = %.lr.ph.preheader.i
  %n.vec205 = and i64 %wide.trip.count.i, 2147483640 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.hx, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = add <4 x i32> %broadcast.splat, <i32 0, i32 1, i32 2, i32 3>
  %invariant.gep262 = getelementptr [4 x i8], ptr %i.ai, i64 %i.hz
  br label %vector.body209

vector.body209:                                   ; preds = %vector.body209, %vector.ph204
  %index210 = phi i64 [ 0, %vector.ph204 ], [ %index.next213, %vector.body209 ] ; 3 uses
  %vec.ind = phi <4 x i32> [ %induction, %vector.ph204 ], [ %vec.ind.next, %vector.body209 ] ; 3 uses
  %vec.ind211 = phi <4 x i32> [ %induction208, %vector.ph204 ], [ %vec.ind.next214, %vector.body209 ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %step.add212 = add <4 x i32> %vec.ind211, splat (i32 4)
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index210 ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <4 x i32> %vec.ind, ptr %gep, align 4, !tbaa !461, !noalias !938
  store <4 x i32> %step.add, ptr %i.ij, align 4, !tbaa !461, !noalias !938
  %gep263 = getelementptr [4 x i8], ptr %invariant.gep262, i64 %index210 ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %gep263, i64 16
  store <4 x i32> %vec.ind211, ptr %gep263, align 4, !tbaa !461, !noalias !938
  store <4 x i32> %step.add212, ptr %i.ik, align 4, !tbaa !461, !noalias !938
  %index.next213 = add nuw i64 %index210, 8       ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %vec.ind.next214 = add <4 x i32> %vec.ind211, splat (i32 8)
  %i.il = icmp eq i64 %index.next213, %n.vec205
  br i1 %i.il, label %middle.block215, label %vector.body209, !llvm.loop !920

middle.block215:                                  ; preds = %vector.body209
  %cmp.n216 = icmp eq i64 %n.vec205, %wide.trip.count.i
  br i1 %cmp.n216, label %.loopexit.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block215
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec205, %middle.block215 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %i.im = add nsw i64 %indvars.iv.i, %i.hu        ; 2 uses
  %i.in = add nsw i64 %indvars.iv.i, %i.hz        ; 2 uses
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.im
  %i.ip = trunc nsw i64 %i.in to i32
  store i32 %i.ip, ptr %i.io, align 4, !tbaa !461, !noalias !938
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.in
  %i.ir = trunc nsw i64 %i.im to i32
  store i32 %i.ir, ptr %i.iq, align 4, !tbaa !461, !noalias !938
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.loopexit.i, label %.lr.ph.i, !llvm.loop !921

.loopexit.i:                                      ; preds = %.lr.ph.i, %middle.block215, %bb.aa, %bb.z, %bb.y, %bb.x
  %i.is = getelementptr inbounds nuw i8, ptr %.sroa.0187.0249.i, i64 4 ; 2 uses
  %.not230.i = icmp eq ptr %i.is, %i.hp
  br i1 %.not230.i, label %._crit_edge.i, label %bb.x

.preheader.i:                                     ; preds = %_ZN5clang4diff12_GLOBAL__N_112PriorityList4openENS0_6NodeIdE.exit72.i, %_ZNSt6vectorIN5clang4diff6NodeIdESaIS2_EED2Ev.exit63.i
  %.not227266.i = icmp eq ptr %i.ho, %i.hp
  br i1 %.not227266.i, label %._crit_edge269.i, label %.lr.ph268.i

.lr.ph268.i:                                      ; preds = %.preheader.i
  %i.it = load ptr, ptr %5, align 8, !noalias !938, !nonnull !442, !align !443
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 32
  br label %bb.al

bb.ab:                                            ; preds = %_ZN5clang4diff12_GLOBAL__N_112PriorityList4openENS0_6NodeIdE.exit72.i, %.lr.ph260.i
  %.sroa.0179.0259.i = phi ptr [ %i.hl, %.lr.ph260.i ], [ %i.lj, %_ZN5clang4diff12_GLOBAL__N_112PriorityList4openENS0_6NodeIdE.exit72.i ] ; 2 uses
  %.sroa.07.0.copyload.i = load i32, ptr %.sroa.0179.0259.i, align 4, !tbaa !461, !noalias !938
  %i.iv = sext i32 %.sroa.07.0.copyload.i to i64  ; 2 uses
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.iv
  %.sroa.0.0.copyload.i.i65.i = load i32, ptr %i.iw, align 4, !tbaa !461, !noalias !938
  %.not229.i = icmp eq i32 %.sroa.0.0.copyload.i.i65.i, -1
  br i1 %.not229.i, label %bb.ac, label %_ZN5clang4diff12_GLOBAL__N_112PriorityList4openENS0_6NodeIdE.exit72.i

bb.ac:                                            ; preds = %bb.ab
  %i.ix = load ptr, ptr %i.hs, align 8, !tbaa !460, !noalias !938
  %i.iy = getelementptr inbounds nuw [104 x i8], ptr %i.ix, i64 %i.iv ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 64
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !458, !noalias !938 ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iy, i64 72
  %i.jc = load i32, ptr %i.jb, align 8, !tbaa !476, !noalias !938 ; 2 uses
  %i.jd = zext i32 %i.jc to i64
  %.idx.i66.i = shl nuw nsw i64 %i.jd, 2
  %i.je = getelementptr inbounds nuw i8, ptr %i.ja, i64 %.idx.i66.i
  %.not10.i67.i = icmp eq i32 %i.jc, 0
  br i1 %.not10.i67.i, label %_ZN5clang4diff12_GLOBAL__N_112PriorityList4openENS0_6NodeIdE.exit72.i, label %.lr.ph.i68.preheader.i

.lr.ph.i68.preheader.i:                           ; preds = %bb.ac
  %.promoted.i = load ptr, ptr %i.ak, align 8, !tbaa !521, !noalias !938
  %.promoted254.i = load ptr, ptr %i.as, align 8, !tbaa !520, !noalias !938
  %.promoted255.i = load ptr, ptr %i.aj, align 8, !noalias !938
  %.sroa.0.0.copyload.i.i129.i = load ptr, ptr %i.e, align 8, !noalias !938
  %i.jf = getelementptr i8, ptr %.sroa.0.0.copyload.i.i129.i, i64 32
  br label %.lr.ph.i68.i

.lr.ph.i68.i:                                     ; preds = %_ZN5clang4diff12_GLOBAL__N_112PriorityList4pushENS0_6NodeIdE.exit148.i, %.lr.ph.i68.preheader.i
  %.pre.i.i124257.i = phi ptr [ %.pre.i.i124256.i, %_ZN5clang4diff12_GLOBAL__N_112PriorityList4pushENS0_6NodeIdE.exit148.i ], [ %.promoted255.i, %.lr.ph.i68.preheader.i ] ; 8 uses
  %i.jg = phi ptr [ %i.kn, %_ZN5clang4diff12_GLOBAL__N_112PriorityList4pushENS0_6NodeIdE.exit148.i ], [ %.promoted254.i, %.lr.ph.i68.preheader.i ] ; 5 uses
  %i.jh = phi ptr [ %i.ko, %_ZN5clang4diff12_GLOBAL__N_112PriorityList4pushENS0_6NodeIdE.exit148.i ], [ %.promoted.i, %.lr.ph.i68.preheader.i ] ; 3 uses
  %.011.i69.i = phi ptr [ %i.li, %_ZN5clang4diff12_GLOBAL__N_112PriorityList4pushENS0_6NodeIdE.exit148.i ], [ %i.ja, %.lr.ph.i68.preheader.i ] ; 2 uses
  %.sroa.01.0.copyload.i70.i = load i32, ptr %.011.i69.i, align 4, !tbaa !461, !noalias !938 ; 2 uses
  %.not.i.i.i123.i = icmp eq ptr %i.jh, %i.jg
  br i1 %.not.i.i.i123.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.i68.i
  store i32 %.sroa.01.0.copyload.i70.i, ptr %i.jh, align 4, !tbaa !461, !noalias !938
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 4 ; 2 uses
  store ptr %i.ji, ptr %i.ak, align 8, !tbaa !521, !noalias !938
  br label %_ZNSt6vectorIN5clang4diff6NodeIdESaIS2_EE9push_backERKS2_.exit.i.i125.i

bb.ae:                                            ; preds = %.lr.ph.i68.i
  %i.jj = ptrtoint ptr %i.jg to i64               ; 2 uses
  %i.jk = ptrtoint ptr %.pre.i.i124257.i to i64   ; 3 uses
  %i.jl = sub i64 %i.jj, %i.jk                    ; 4 uses
  %i.jm = icmp eq i64 %i.jl, 9223372036854775804
  br i1 %i.jm, label %bb.af, label %_ZNKSt6vectorIN5clang4diff6NodeIdESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i136.i

bb.af:                                            ; preds = %bb.ae
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #28, !noalias !938
  unreachable

_ZNKSt6vectorIN5clang4diff6NodeIdESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i136.i: ; preds = %bb.ae
  %i.jn = ashr exact i64 %i.jl, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i137.i = tail call i64 @llvm.umax.i64(i64 %i.jn, i64 1)
  %i.jo = add nsw i64 %.sroa.speculated.i.i.i.i.i137.i, %i.jn ; 2 uses
  %i.jp = icmp ult i64 %i.jo, %i.jn
  %i.jq = tail call i64 @llvm.umin.i64(i64 %i.jo, i64 2305843009213693951)
  %i.jr = select i1 %i.jp, i64 2305843009213693951, i64 %i.jq ; 3 uses
  %.not.i.i.i.i.i138.i = icmp ne i64 %i.jr, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i138.i)
  %i.js = shl nuw nsw i64 %i.jr, 2
  %i.jt = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.js) #27, !noalias !938 ; 9 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 %i.jl
  store i32 %.sroa.01.0.copyload.i70.i, ptr %i.ju, align 4, !tbaa !461, !noalias !938
  %.not10.i.i.i.i.i.i.i139.i = icmp eq ptr %.pre.i.i124257.i, %i.jg
  br i1 %.not10.i.i.i.i.i.i.i139.i, label %_ZNSt6vectorIN5clang4diff6NodeIdESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i144.i, label %.lr.ph.i.i.i.i.i.i.i140.i.preheader

.lr.ph.i.i.i.i.i.i.i140.i.preheader:              ; preds = %_ZNKSt6vectorIN5clang4diff6NodeIdESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i136.i
  %i.jv = ptrtoaddr ptr %i.jt to i64
  %i.jw = add i64 %i.jj, -4
  %i.jx = sub i64 %i.jw, %i.jk                    ; 2 uses
  %i.jy = lshr i64 %i.jx, 2
  %i.jz = add nuw nsw i64 %i.jy, 1                ; 2 uses
  %min.iters.check186 = icmp ult i64 %i.jx, 28
  %i.ka = sub i64 %i.jk, %i.jv
  %diff.check188 = icmp ugt i64 %i.ka, -32
  %or.cond219 = or i1 %min.iters.check186, %diff.check188
  br i1 %or.cond219, label %.lr.ph.i.i.i.i.i.i.i140.i.preheader229, label %vector.ph189

vector.ph189:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i140.i.preheader
  %n.vec190 = and i64 %i.jz, 9223372036854775800  ; 3 uses
  %i.kb = shl i64 %n.vec190, 2                    ; 2 uses
  %i.kc = getelementptr i8, ptr %i.jt, i64 %i.kb  ; 2 uses
  %i.kd = getelementptr i8, ptr %.pre.i.i124257.i, i64 %i.kb
  br label %vector.body191

vector.body191:                                   ; preds = %vector.body191, %vector.ph189
  %index192 = phi i64 [ 0, %vector.ph189 ], [ %index.next197, %vector.body191 ] ; 2 uses
  %i.ke = shl i64 %index192, 2                    ; 2 uses
  %next.gep193 = getelementptr i8, ptr %i.jt, i64 %i.ke ; 2 uses
  %next.gep194 = getelementptr i8, ptr %.pre.i.i124257.i, i64 %i.ke ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !946)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !947)
  %i.kf = getelementptr i8, ptr %next.gep194, i64 16
  %wide.load195 = load <4 x i32>, ptr %next.gep194, align 4, !tbaa !461, !alias.scope !947, !noalias !938
  %wide.load196 = load <4 x i32>, ptr %i.kf, align 4, !tbaa !461, !alias.scope !947, !noalias !938
  %i.kg = getelementptr i8, ptr %next.gep193, i64 16
  store <4 x i32> %wide.load195, ptr %next.gep193, align 4, !tbaa !461, !alias.scope !946, !noalias !938
  store <4 x i32> %wide.load196, ptr %i.kg, align 4, !tbaa !461, !alias.scope !946, !noalias !938
  %index.next197 = add nuw i64 %index192, 8       ; 2 uses
  %i.kh = icmp eq i64 %index.next197, %n.vec190
  br i1 %i.kh, label %middle.block198, label %vector.body191, !llvm.loop !925

middle.block198:                                  ; preds = %vector.body191
  %cmp.n199 = icmp eq i64 %i.jz, %n.vec190
  br i1 %cmp.n199, label %_ZNSt6vectorIN5clang4diff6NodeIdESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i144.i, label %.lr.ph.i.i.i.i.i.i.i140.i.preheader229

.lr.ph.i.i.i.i.i.i.i140.i.preheader229:           ; preds = %.lr.ph.i.i.i.i.i.i.i140.i.preheader, %middle.block198
  %.012.i.i.i.i.i.i.i141.i.ph = phi ptr [ %i.jt, %.lr.ph.i.i.i.i.i.i.i140.i.preheader ], [ %i.kc, %middle.block198 ]
  %.0911.i.i.i.i.i.i.i142.i.ph = phi ptr [ %.pre.i.i124257.i, %.lr.ph.i.i.i.i.i.i.i140.i.preheader ], [ %i.kd, %middle.block198 ]
  br label %.lr.ph.i.i.i.i.i.i.i140.i

.lr.ph.i.i.i.i.i.i.i140.i:                        ; preds = %.lr.ph.i.i.i.i.i.i.i140.i.preheader229, %.lr.ph.i.i.i.i.i.i.i140.i
  %.012.i.i.i.i.i.i.i141.i = phi ptr [ %i.kk, %.lr.ph.i.i.i.i.i.i.i140.i ], [ %.012.i.i.i.i.i.i.i141.i.ph, %.lr.ph.i.i.i.i.i.i.i140.i.preheader229 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i142.i = phi ptr [ %i.kj, %.lr.ph.i.i.i.i.i.i.i140.i ], [ %.0911.i.i.i.i.i.i.i142.i.ph, %.lr.ph.i.i.i.i.i.i.i140.i.preheader229 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !946)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !947)
  %i.ki = load i32, ptr %.0911.i.i.i.i.i.i.i142.i, align 4, !tbaa !461, !alias.scope !947, !noalias !938
  store i32 %i.ki, ptr %.012.i.i.i.i.i.i.i141.i, align 4, !tbaa !461, !alias.scope !946, !noalias !938
  %i.kj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i142.i, i64 4 ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i141.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i143.i = icmp eq ptr %i.kj, %i.jg
  br i1 %.not.i.i.i.i.i.i.i143.i, label %_ZNSt6vectorIN5clang4diff6NodeIdESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i144.i, label %.lr.ph.i.i.i.i.i.i.i140.i, !llvm.loop !926

_ZNSt6vectorIN5clang4diff6NodeIdESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i144.i: ; preds = %.lr.ph.i.i.i.i.i.i.i140.i, %middle.block198, %_ZNKSt6vectorIN5clang4diff6NodeIdESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i136.i
  %.0.lcssa.i.i.i.i.i.i.i145.i = phi ptr [ %i.jt, %_ZNKSt6vectorIN5clang4diff6NodeIdESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i136.i ], [ %i.kc, %middle.block198 ], [ %i.kk, %.lr.ph.i.i.i.i.i.i.i140.i ]
  %i.kl = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i145.i, i64 4 ; 2 uses
  %.not.i23.i.i.i.i146.i = icmp eq ptr %.pre.i.i124257.i, null
  br i1 %.not.i23.i.i.i.i146.i, label %_ZNSt6vectorIN5clang4diff6NodeIdESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i147.i, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt6vectorIN5clang4diff6NodeIdESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i144.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.pre.i.i124257.i, i64 noundef %i.jl) #29, !noalias !938
  br label %_ZNSt6vectorIN5clang4diff6NodeIdESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i147.i

_ZNSt6vectorIN5clang4diff6NodeIdESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i147.i: ; preds = %bb.ag, %_ZNSt6vectorIN5clang4diff6NodeIdESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i144.i
  store ptr %i.jt, ptr %i.aj, align 8, !tbaa !519, !noalias !938
  store ptr %i.kl, ptr %i.ak, align 8, !tbaa !521, !noalias !938
  %i.km = getelementptr inbounds nuw [4 x i8], ptr %i.jt, i64 %i.jr ; 2 uses
  store ptr %i.km, ptr %i.as, align 8, !tbaa !520, !noalias !938
  br label %_ZNSt6vectorIN5clang4diff6NodeIdESaIS2_EE9push_backERKS2_.exit.i.i125.i

_ZNSt6vectorIN5clang4diff6NodeIdESaIS2_EE9push_backERKS2_.exit.i.i125.i: ; preds = %_ZNSt6vectorIN5clang4diff6NodeIdESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i147.i, %bb.ad
  %.pre.i.i124256.i = phi ptr [ %.pre.i.i124257.i, %bb.ad ], [ %i.jt, %_ZNSt6vectorIN5clang4diff6NodeIdESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i147.i ] ; 5 uses
  %i.kn = phi ptr [ %i.jg, %bb.ad ], [ %i.km, %_ZNSt6vectorIN5clang4diff6NodeIdESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i147.i ]
  %i.ko = phi ptr [ %i.ji, %bb.ad ], [ %i.kl, %_ZNSt6vectorIN5clang4diff6NodeIdESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i147.i ] ; 3 uses
  %i.kp = getelementptr inbounds i8, ptr %i.ko, i64 -4
  %.sroa.02.0.copyload.i.i.i126.i = load i32, ptr %i.kp, align 4, !tbaa !461, !noalias !938 ; 2 uses
  %i.kq = ptrtoint ptr %i.ko to i64
  %i.kr = ptrtoint ptr %.pre.i.i124256.i to i64
  %i.ks = sub i64 %i.kq, %i.kr
  %i.kt = ashr exact i64 %i.ks, 2                 ; 2 uses
  %i.ku = add nsw i64 %i.kt, -1                   ; 2 uses
  %i.kv = icmp sgt i64 %i.kt, 1
  br i1 %i.kv, label %.lr.ph.i.i.i.i128.i, label %_ZN5clang4diff12_GLOBAL__N_112PriorityList4pushENS0_6NodeIdE.exit148.i

end_hunk_0
