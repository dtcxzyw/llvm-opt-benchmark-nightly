Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/IndirectCallPromotion?download=true
inline.NumInlined: 6931
inline.NumDeleted: 3349
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 9
begin_hunk_0_@"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN4llvm4bolt21IndirectCallPromotion8CallsiteESt6vectorIS5_SaIS5_EEEES6_NS0_5__ops15_Iter_comp_iterIZNKS4_14getCallTargetsERNS3_16BinaryBasicBlockERKNS2_6MCInstEE3$_1EEET0_T_SL_SL_SL_SK_T1_":bb.a
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i17, label %_ZN4llvm4bolt21IndirectCallPromotion8CallsiteaSEOS2_.exit.i.i.i.i.i18, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i13
  %i.cq = ptrtoint ptr %i.cm to i64
  %i.cr = ptrtoint ptr %i.ck to i64
  %i.cs = sub i64 %i.cq, %i.cr
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ck, i64 noundef %i.cs) #26
  br label %_ZN4llvm4bolt21IndirectCallPromotion8CallsiteaSEOS2_.exit.i.i.i.i.i18

_ZN4llvm4bolt21IndirectCallPromotion8CallsiteaSEOS2_.exit.i.i.i.i.i18: ; preds = %bb.j, %.lr.ph.i.i.i.i.i13
  %i.ct = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i16, i64 72
  %i.cu = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i15, i64 72 ; 2 uses
  %i.cv = add nsw i64 %.012.i.i.i.i.i14, -1
  %i.cw = icmp sgt i64 %.012.i.i.i.i.i14, 1
  br i1 %i.cw, label %.lr.ph.i.i.i.i.i13, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm4bolt21IndirectCallPromotion8CallsiteESt6vectorIS5_SaIS5_EEEES6_ET0_T_SC_SB_.exit19, !llvm.loop !16

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm4bolt21IndirectCallPromotion8CallsiteESt6vectorIS5_SaIS5_EEEES6_ET0_T_SC_SB_.exit19: ; preds = %_ZN4llvm4bolt21IndirectCallPromotion8CallsiteaSEOS2_.exit.i.i.i.i.i18, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm4bolt21IndirectCallPromotion8CallsiteESt6vectorIS5_SaIS5_EEEES6_ET0_T_SC_SB_.exit
  %.08.lcssa.i.i.i.i.i11 = phi ptr [ %.08.lcssa.i.i.i.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm4bolt21IndirectCallPromotion8CallsiteESt6vectorIS5_SaIS5_EEEES6_ET0_T_SC_SB_.exit ], [ %i.cu, %_ZN4llvm4bolt21IndirectCallPromotion8CallsiteaSEOS2_.exit.i.i.i.i.i18 ]
  ret ptr %.08.lcssa.i.i.i.i.i11
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc ptr @"_ZSt12__move_mergeIPN4llvm4bolt21IndirectCallPromotion8CallsiteEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEENS5_5__ops15_Iter_comp_iterIZNKS2_14getCallTargetsERNS1_16BinaryBasicBlockERKNS0_6MCInstEE3$_1EEET0_T_SL_SL_SL_SK_T1_"(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr %4) unnamed_addr #3 {
bb.a:
  %i.a = icmp ne ptr %0, %1
  %i.b = icmp ne ptr %2, %3
  %i.c = and i1 %i.a, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.h
  %.037 = phi ptr [ %.1, %bb.h ], [ %0, %bb.a ]   ; 10 uses
  %.01636 = phi ptr [ %.117, %bb.h ], [ %2, %bb.a ] ; 10 uses
  %.sroa.0.034 = phi ptr [ %i.bh, %bb.h ], [ %4, %bb.a ] ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.01636, i64 40
  %i.e = load i64, ptr %i.d, align 8, !tbaa !106  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.037, i64 40
  %i.g = load i64, ptr %i.f, align 8, !tbaa !106  ; 2 uses
  %.not.i.i = icmp eq i64 %i.e, %i.g
  br i1 %.not.i.i, label %bb.b, label %.split

.split:                                           ; preds = %.lr.ph
  %i.h = icmp ugt i64 %i.e, %i.g
  br i1 %i.h, label %bb.d, label %bb.f

bb.b:                                             ; preds = %.lr.ph
  %i.i = getelementptr inbounds nuw i8, ptr %.01636, i64 48
  %i.j = getelementptr inbounds nuw i8, ptr %.01636, i64 56
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !268
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !269
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = ashr exact i64 %i.o, 3                   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.037, i64 48
  %i.r = getelementptr inbounds nuw i8, ptr %.037, i64 56
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !268
  %i.t = load ptr, ptr %i.q, align 8, !tbaa !269
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = ashr exact i64 %i.w, 3                   ; 2 uses
  %.not19.i.i = icmp eq i64 %i.p, %i.x
  br i1 %.not19.i.i, label %bb.c, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4llvm4bolt21IndirectCallPromotion14getCallTargetsERNS3_16BinaryBasicBlockERKNS2_6MCInstEE3$_1EclIPNS4_8CallsiteESE_EEbT_T0_.exit"

bb.c:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %.01636, i64 32
  %i.z = load i64, ptr %i.y, align 8, !tbaa !116  ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.037, i64 32
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !116 ; 2 uses
  %.not20.i.i = icmp eq i64 %i.z, %i.ab
  br i1 %.not20.i.i, label %.split31, label %.split32

.split32:                                         ; preds = %bb.c
  %i.ac = icmp ugt i64 %i.z, %i.ab
  br i1 %i.ac, label %bb.d, label %bb.f

.split31:                                         ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %.01636, i64 24
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !95
  %i.af = getelementptr inbounds nuw i8, ptr %.037, i64 24
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !95
  %i.ah = icmp ult i64 %i.ae, %i.ag
  br i1 %i.ah, label %bb.d, label %bb.f

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4llvm4bolt21IndirectCallPromotion14getCallTargetsERNS3_16BinaryBasicBlockERKNS2_6MCInstEE3$_1EclIPNS4_8CallsiteESE_EEbT_T0_.exit": ; preds = %bb.b
  %i.ai = icmp ult i64 %i.p, %i.x
  br i1 %i.ai, label %bb.d, label %bb.f

bb.d:                                             ; preds = %.split32, %.split31, %.split, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4llvm4bolt21IndirectCallPromotion14getCallTargetsERNS3_16BinaryBasicBlockERKNS2_6MCInstEE3$_1EclIPNS4_8CallsiteESE_EEbT_T0_.exit"
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.0.034, ptr noundef nonnull align 8 dereferenceable(72) %.01636, i64 48, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0.034, i64 48 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.01636, i64 48 ; 2 uses
  %i.al = load ptr, ptr %i.aj, align 8, !tbaa !269 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.034, i64 64 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !309
  %i.ao = load <2 x ptr>, ptr %i.ak, align 8, !tbaa !117
  store <2 x ptr> %i.ao, ptr %i.aj, align 8, !tbaa !117
  %i.ap = getelementptr inbounds nuw i8, ptr %.01636, i64 64
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !309
  store ptr %i.aq, ptr %i.am, align 8, !tbaa !309
  %.not.i.i.i.i.i.i = icmp eq ptr %i.al, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i, label %_ZN4llvm4bolt21IndirectCallPromotion8CallsiteaSEOS2_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ar = ptrtoint ptr %i.an to i64
  %i.as = ptrtoint ptr %i.al to i64
  %i.at = sub i64 %i.ar, %i.as
  tail call void @_ZdlPvm(ptr noundef nonnull %i.al, i64 noundef %i.at) #26
  br label %_ZN4llvm4bolt21IndirectCallPromotion8CallsiteaSEOS2_.exit

_ZN4llvm4bolt21IndirectCallPromotion8CallsiteaSEOS2_.exit: ; preds = %bb.d, %bb.e
  %i.au = getelementptr inbounds nuw i8, ptr %.01636, i64 72
  br label %bb.h

bb.f:                                             ; preds = %.split32, %.split31, %.split, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4llvm4bolt21IndirectCallPromotion14getCallTargetsERNS3_16BinaryBasicBlockERKNS2_6MCInstEE3$_1EclIPNS4_8CallsiteESE_EEbT_T0_.exit"
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.0.034, ptr noundef nonnull align 8 dereferenceable(72) %.037, i64 48, i1 false)
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.034, i64 48 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.037, i64 48 ; 2 uses
  %i.ax = load ptr, ptr %i.av, align 8, !tbaa !269 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0.034, i64 64 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !309
  %i.ba = load <2 x ptr>, ptr %i.aw, align 8, !tbaa !117
  store <2 x ptr> %i.ba, ptr %i.av, align 8, !tbaa !117
  %i.bb = getelementptr inbounds nuw i8, ptr %.037, i64 64
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !309
  store ptr %i.bc, ptr %i.ay, align 8, !tbaa !309
  %.not.i.i.i.i.i.i18 = icmp eq ptr %i.ax, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i18, label %_ZN4llvm4bolt21IndirectCallPromotion8CallsiteaSEOS2_.exit19, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bd = ptrtoint ptr %i.az to i64
  %i.be = ptrtoint ptr %i.ax to i64
  %i.bf = sub i64 %i.bd, %i.be
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ax, i64 noundef %i.bf) #26
  br label %_ZN4llvm4bolt21IndirectCallPromotion8CallsiteaSEOS2_.exit19

_ZN4llvm4bolt21IndirectCallPromotion8CallsiteaSEOS2_.exit19: ; preds = %bb.f, %bb.g
  %i.bg = getelementptr inbounds nuw i8, ptr %.037, i64 72
  br label %bb.h

bb.h:                                             ; preds = %_ZN4llvm4bolt21IndirectCallPromotion8CallsiteaSEOS2_.exit19, %_ZN4llvm4bolt21IndirectCallPromotion8CallsiteaSEOS2_.exit
  %.117 = phi ptr [ %i.au, %_ZN4llvm4bolt21IndirectCallPromotion8CallsiteaSEOS2_.exit ], [ %.01636, %_ZN4llvm4bolt21IndirectCallPromotion8CallsiteaSEOS2_.exit19 ] ; 3 uses
  %.1 = phi ptr [ %.037, %_ZN4llvm4bolt21IndirectCallPromotion8CallsiteaSEOS2_.exit ], [ %i.bg, %_ZN4llvm4bolt21IndirectCallPromotion8CallsiteaSEOS2_.exit19 ] ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.0.034, i64 72 ; 2 uses
  %i.bi = icmp ne ptr %.1, %1
  %i.bj = icmp ne ptr %.117, %3
  %i.bk = select i1 %i.bi, i1 %i.bj, i1 false
  br i1 %i.bk, label %.lr.ph, label %._crit_edge, !llvm.loop !1335

._crit_edge:                                      ; preds = %bb.h, %bb.a
  %.sroa.0.0.lcssa = phi ptr [ %4, %bb.a ], [ %i.bh, %bb.h ] ; 4 uses
  %.016.lcssa = phi ptr [ %2, %bb.a ], [ %.117, %bb.h ] ; 2 uses
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %.1, %bb.h ] ; 2 uses
  %i.bl = ptrtoint ptr %1 to i64
  %i.bm = ptrtoint ptr %.0.lcssa to i64
  %i.bn = sub i64 %i.bl, %i.bm                    ; 2 uses
  %i.bo = icmp sgt i64 %i.bn, 0
  br i1 %i.bo, label %.lr.ph.preheader.i.i.i.i.i, label %_ZSt4moveIPN4llvm4bolt21IndirectCallPromotion8CallsiteEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEET0_T_SC_SB_.exit

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %._crit_edge
  %i.bp = udiv exact i64 %i.bn, 72
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN4llvm4bolt21IndirectCallPromotion8CallsiteaSEOS2_.exit.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.cd, %_ZN4llvm4bolt21IndirectCallPromotion8CallsiteaSEOS2_.exit.i.i.i.i.i ], [ %i.bp, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.cc, %_ZN4llvm4bolt21IndirectCallPromotion8CallsiteaSEOS2_.exit.i.i.i.i.i ], [ %.sroa.0.0.lcssa, %.lr.ph.preheader.i.i.i.i.i ] ; 4 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.cb, %_ZN4llvm4bolt21IndirectCallPromotion8CallsiteaSEOS2_.exit.i.i.i.i.i ], [ %.0.lcssa, %.lr.ph.preheader.i.i.i.i.i ] ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.0811.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.0910.i.i.i.i.i, i64 48, i1 false)
  %i.bq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 48 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 48 ; 2 uses
  %i.bs = load ptr, ptr %i.bq, align 8, !tbaa !269 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 64 ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !309
  %i.bv = load <2 x ptr>, ptr %i.br, align 8, !tbaa !117
  store <2 x ptr> %i.bv, ptr %i.bq, align 8, !tbaa !117
  %i.bw = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 64
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !309
  store ptr %i.bx, ptr %i.bt, align 8, !tbaa !309
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bs, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.br, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm4bolt21IndirectCallPromotion8CallsiteaSEOS2_.exit.i.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.by = ptrtoint ptr %i.bu to i64
  %i.bz = ptrtoint ptr %i.bs to i64
  %i.ca = sub i64 %i.by, %i.bz
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bs, i64 noundef %i.ca) #26
  br label %_ZN4llvm4bolt21IndirectCallPromotion8CallsiteaSEOS2_.exit.i.i.i.i.i

_ZN4llvm4bolt21IndirectCallPromotion8CallsiteaSEOS2_.exit.i.i.i.i.i: ; preds = %bb.i, %.lr.ph.i.i.i.i.i
  %i.cb = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 72
  %i.cc = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 72 ; 2 uses
  %i.cd = add nsw i64 %.012.i.i.i.i.i, -1
  %i.ce = icmp sgt i64 %.012.i.i.i.i.i, 1
  br i1 %i.ce, label %.lr.ph.i.i.i.i.i, label %_ZSt4moveIPN4llvm4bolt21IndirectCallPromotion8CallsiteEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEET0_T_SC_SB_.exit, !llvm.loop !16

_ZSt4moveIPN4llvm4bolt21IndirectCallPromotion8CallsiteEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEET0_T_SC_SB_.exit: ; preds = %_ZN4llvm4bolt21IndirectCallPromotion8CallsiteaSEOS2_.exit.i.i.i.i.i, %._crit_edge
  %.08.lcssa.i.i.i.i.i = phi ptr [ %.sroa.0.0.lcssa, %._crit_edge ], [ %i.cc, %_ZN4llvm4bolt21IndirectCallPromotion8CallsiteaSEOS2_.exit.i.i.i.i.i ]
  %i.cf = ptrtoint ptr %.08.lcssa.i.i.i.i.i to i64 ; 3 uses
  %i.cg = ptrtoint ptr %.sroa.0.0.lcssa to i64
  %i.ch = sub i64 %i.cf, %i.cg
  %i.ci = getelementptr inbounds i8, ptr %.sroa.0.0.lcssa, i64 %i.ch ; 2 uses
  %i.cj = ptrtoint ptr %3 to i64
  %i.ck = ptrtoint ptr %.016.lcssa to i64
  %i.cl = sub i64 %i.cj, %i.ck                    ; 2 uses
  %i.cm = icmp sgt i64 %i.cl, 0
  br i1 %i.cm, label %.lr.ph.preheader.i.i.i.i.i21, label %_ZSt4moveIPN4llvm4bolt21IndirectCallPromotion8CallsiteEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEET0_T_SC_SB_.exit28

.lr.ph.preheader.i.i.i.i.i21:                     ; preds = %_ZSt4moveIPN4llvm4bolt21IndirectCallPromotion8CallsiteEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEET0_T_SC_SB_.exit
  %i.cn = udiv exact i64 %i.cl, 72
  br label %.lr.ph.i.i.i.i.i22

.lr.ph.i.i.i.i.i22:                               ; preds = %_ZN4llvm4bolt21IndirectCallPromotion8CallsiteaSEOS2_.exit.i.i.i.i.i27, %.lr.ph.preheader.i.i.i.i.i21
  %.012.i.i.i.i.i23 = phi i64 [ %i.db, %_ZN4llvm4bolt21IndirectCallPromotion8CallsiteaSEOS2_.exit.i.i.i.i.i27 ], [ %i.cn, %.lr.ph.preheader.i.i.i.i.i21 ] ; 2 uses
  %.0811.i.i.i.i.i24 = phi ptr [ %i.da, %_ZN4llvm4bolt21IndirectCallPromotion8CallsiteaSEOS2_.exit.i.i.i.i.i27 ], [ %i.ci, %.lr.ph.preheader.i.i.i.i.i21 ] ; 4 uses
  %.0910.i.i.i.i.i25 = phi ptr [ %i.cz, %_ZN4llvm4bolt21IndirectCallPromotion8CallsiteaSEOS2_.exit.i.i.i.i.i27 ], [ %.016.lcssa, %.lr.ph.preheader.i.i.i.i.i21 ] ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.0811.i.i.i.i.i24, ptr noundef nonnull align 8 dereferenceable(72) %.0910.i.i.i.i.i25, i64 48, i1 false)
  %i.co = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i24, i64 48 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i25, i64 48 ; 2 uses
  %i.cq = load ptr, ptr %i.co, align 8, !tbaa !269 ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i24, i64 64 ; 2 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !309
  %i.ct = load <2 x ptr>, ptr %i.cp, align 8, !tbaa !117
  store <2 x ptr> %i.ct, ptr %i.co, align 8, !tbaa !117
  %i.cu = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i25, i64 64
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !309
  store ptr %i.cv, ptr %i.cr, align 8, !tbaa !309
  %.not.i.i.i.i.i.i.i.i.i.i.i26 = icmp eq ptr %i.cq, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cp, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i26, label %_ZN4llvm4bolt21IndirectCallPromotion8CallsiteaSEOS2_.exit.i.i.i.i.i27, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i22
  %i.cw = ptrtoint ptr %i.cs to i64
  %i.cx = ptrtoint ptr %i.cq to i64
  %i.cy = sub i64 %i.cw, %i.cx
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cq, i64 noundef %i.cy) #26
  br label %_ZN4llvm4bolt21IndirectCallPromotion8CallsiteaSEOS2_.exit.i.i.i.i.i27

_ZN4llvm4bolt21IndirectCallPromotion8CallsiteaSEOS2_.exit.i.i.i.i.i27: ; preds = %bb.j, %.lr.ph.i.i.i.i.i22
  %i.cz = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i25, i64 72
  %i.da = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i24, i64 72 ; 2 uses
  %i.db = add nsw i64 %.012.i.i.i.i.i23, -1
  %i.dc = icmp sgt i64 %.012.i.i.i.i.i23, 1
  br i1 %i.dc, label %.lr.ph.i.i.i.i.i22, label %_ZSt4moveIPN4llvm4bolt21IndirectCallPromotion8CallsiteEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEET0_T_SC_SB_.exit28.loopexit, !llvm.loop !16

_ZSt4moveIPN4llvm4bolt21IndirectCallPromotion8CallsiteEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEET0_T_SC_SB_.exit28.loopexit: ; preds = %_ZN4llvm4bolt21IndirectCallPromotion8CallsiteaSEOS2_.exit.i.i.i.i.i27
  %5 = ptrtoint ptr %i.da to i64
  br label %_ZSt4moveIPN4llvm4bolt21IndirectCallPromotion8CallsiteEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEET0_T_SC_SB_.exit28

_ZSt4moveIPN4llvm4bolt21IndirectCallPromotion8CallsiteEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEET0_T_SC_SB_.exit28: ; preds = %_ZSt4moveIPN4llvm4bolt21IndirectCallPromotion8CallsiteEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEET0_T_SC_SB_.exit28.loopexit, %_ZSt4moveIPN4llvm4bolt21IndirectCallPromotion8CallsiteEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEET0_T_SC_SB_.exit
  %.08.lcssa.i.i.i.i.i20 = phi i64 [ %i.cf, %_ZSt4moveIPN4llvm4bolt21IndirectCallPromotion8CallsiteEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEET0_T_SC_SB_.exit ], [ %5, %_ZSt4moveIPN4llvm4bolt21IndirectCallPromotion8CallsiteEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEET0_T_SC_SB_.exit28.loopexit ]
  %i.dd = sub i64 %.08.lcssa.i.i.i.i.i20, %i.cf
  %i.de = getelementptr inbounds i8, ptr %i.ci, i64 %i.dd
  ret ptr %i.de
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPN4llvm4bolt21IndirectCallPromotion8CallsiteESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_comp_iterIZNKS4_14getCallTargetsERNS3_16BinaryBasicBlockERKNS2_6MCInstEE3$_1EEEvT_SK_SK_T0_SL_T1_"(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4) unnamed_addr #3 {
bb.a:
  %.sroa.0.i.i = alloca { %"struct.llvm::bolt::IndirectCallPromotion::Location", %"struct.llvm::bolt::IndirectCallPromotion::Location", i64, i64 }, align 8 ; 4 uses
  %i.a = icmp eq i64 %3, 0
  %i.b = icmp eq i64 %4, 0
  %or.cond90 = or i1 %i.a, %i.b
  br i1 %or.cond90, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = ptrtoint ptr %2 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %tailrecurse
  %.tr8795 = phi i64 [ %4, %.lr.ph ], [ %i.em, %tailrecurse ] ; 4 uses
  %.tr8694 = phi i64 [ %3, %.lr.ph ], [ %i.el, %tailrecurse ] ; 4 uses
  %.tr8492 = phi ptr [ %1, %.lr.ph ], [ %.sroa.0.0, %tailrecurse ] ; 15 uses
  %.tr91 = phi ptr [ %0, %.lr.ph ], [ %i.ek, %tailrecurse ] ; 16 uses
  %i.d = add nsw i64 %.tr8795, %.tr8694
  %i.e = icmp eq i64 %i.d, 2
  br i1 %i.e, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.tr8492, i64 40
  %i.g = load i64, ptr %i.f, align 8, !tbaa !106  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.tr91, i64 40
  %i.i = load i64, ptr %i.h, align 8, !tbaa !106  ; 2 uses
  %.not.i.i = icmp eq i64 %i.g, %i.i
  br i1 %.not.i.i, label %bb.d, label %.split

.split:                                           ; preds = %bb.c
  %i.j = icmp ugt i64 %i.g, %i.i
  br i1 %i.j, label %.split._crit_edge, label %.loopexit

.split._crit_edge:                                ; preds = %.split
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.tr91, i64 48
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !269
  %.phi.trans.insert98 = getelementptr inbounds nuw i8, ptr %.tr91, i64 56
  %.pre99 = load ptr, ptr %.phi.trans.insert98, align 8, !tbaa !268
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %.tr8492, i64 48
  %i.l = getelementptr inbounds nuw i8, ptr %.tr8492, i64 56
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !268
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !269
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = ashr exact i64 %i.q, 3                   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.tr91, i64 48
  %i.t = getelementptr inbounds nuw i8, ptr %.tr91, i64 56
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !268  ; 4 uses
  %i.v = load ptr, ptr %i.s, align 8, !tbaa !269  ; 4 uses
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = ashr exact i64 %i.y, 3                   ; 2 uses
  %.not19.i.i = icmp eq i64 %i.r, %i.z
  br i1 %.not19.i.i, label %bb.e, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4llvm4bolt21IndirectCallPromotion14getCallTargetsERNS3_16BinaryBasicBlockERKNS2_6MCInstEE3$_1EclINS_17__normal_iteratorIPNS4_8CallsiteESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit"

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %.tr8492, i64 32
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !116 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.tr91, i64 32
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !116 ; 2 uses
  %.not20.i.i = icmp eq i64 %i.ab, %i.ad
  br i1 %.not20.i.i, label %.split80, label %.split81

.split81:                                         ; preds = %bb.e
  %i.ae = icmp ugt i64 %i.ab, %i.ad
  br i1 %i.ae, label %bb.f, label %.loopexit

.split80:                                         ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %.tr8492, i64 24
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !95
  %i.ah = getelementptr inbounds nuw i8, ptr %.tr91, i64 24
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !95
  %i.aj = icmp ult i64 %i.ag, %i.ai
  br i1 %i.aj, label %bb.f, label %.loopexit

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4llvm4bolt21IndirectCallPromotion14getCallTargetsERNS3_16BinaryBasicBlockERKNS2_6MCInstEE3$_1EclINS_17__normal_iteratorIPNS4_8CallsiteESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit": ; preds = %bb.d
  %i.ak = icmp ult i64 %i.r, %i.z
  br i1 %i.ak, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %.split._crit_edge, %.split81, %.split80, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4llvm4bolt21IndirectCallPromotion14getCallTargetsERNS3_16BinaryBasicBlockERKNS2_6MCInstEE3$_1EclINS_17__normal_iteratorIPNS4_8CallsiteESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit"
  %i.al = phi ptr [ %.pre99, %.split._crit_edge ], [ %i.u, %.split81 ], [ %i.u, %.split80 ], [ %i.u, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4llvm4bolt21IndirectCallPromotion14getCallTargetsERNS3_16BinaryBasicBlockERKNS2_6MCInstEE3$_1EclINS_17__normal_iteratorIPNS4_8CallsiteESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit" ]
  %i.am = phi ptr [ %.pre, %.split._crit_edge ], [ %i.v, %.split81 ], [ %i.v, %.split80 ], [ %i.v, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNK4llvm4bolt21IndirectCallPromotion14getCallTargetsERNS3_16BinaryBasicBlockERKNS2_6MCInstEE3$_1EclINS_17__normal_iteratorIPNS4_8CallsiteESt6vectorISE_SaISE_EEEESJ_EEbT_T0_.exit" ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.tr91, i64 48, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %.tr91, i64 48 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.tr91, i64 64 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !309
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.an, i8 0, i64 24, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.tr91, ptr noundef nonnull align 8 dereferenceable(72) %.tr8492, i64 48, i1 false)
  %i.aq = getelementptr inbounds nuw i8, ptr %.tr8492, i64 48 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.tr8492, i64 56
  %i.as = load <2 x ptr>, ptr %i.aq, align 8, !tbaa !117
  store <2 x ptr> %i.as, ptr %i.an, align 8, !tbaa !117
  %i.at = getelementptr inbounds nuw i8, ptr %.tr8492, i64 64 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !309
  store ptr %i.au, ptr %i.ao, align 8, !tbaa !309
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.tr8492, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.i.i, i64 48, i1 false)
  store ptr %i.am, ptr %i.aq, align 8, !tbaa !269
  store ptr %i.al, ptr %i.ar, align 8, !tbaa !268
  store ptr %i.ap, ptr %i.at, align 8, !tbaa !309
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i)
  br label %.loopexit

bb.g:                                             ; preds = %bb.b
  %i.av = icmp sgt i64 %.tr8694, %.tr8795
  %i.aw = ptrtoint ptr %.tr8492 to i64            ; 4 uses
  br i1 %i.av, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4llvm4bolt21IndirectCallPromotion8CallsiteESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4llvm4bolt21IndirectCallPromotion8CallsiteESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit53

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4llvm4bolt21IndirectCallPromotion8CallsiteESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.g
  %i.ax = sdiv i64 %.tr8694, 2                    ; 2 uses
  %i.ay = getelementptr inbounds [72 x i8], ptr %.tr91, i64 %i.ax ; 6 uses
  %i.az = sub i64 %i.c, %i.aw                     ; 2 uses
  %i.ba = icmp sgt i64 %i.az, 0
  br i1 %i.ba, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4llvm4bolt21IndirectCallPromotion8CallsiteESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i, label %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN4llvm4bolt21IndirectCallPromotion8CallsiteESt6vectorIS5_SaIS5_EEEES5_NS0_5__ops14_Iter_comp_valIZNKS4_14getCallTargetsERNS3_16BinaryBasicBlockERKNS2_6MCInstEE3$_1EEET_SK_SK_RKT0_T1_.exit"

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4llvm4bolt21IndirectCallPromotion8CallsiteESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4llvm4bolt21IndirectCallPromotion8CallsiteESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.bb = udiv exact i64 %i.az, 72
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 40
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !106 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.ay, i64 48
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ay, i64 56
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = load ptr, ptr %i.be, align 8
  %i.bi = ptrtoint ptr %i.bg to i64
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = sub i64 %i.bi, %i.bj
  %i.bl = ashr exact i64 %i.bk, 3                 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  %i.bn = load i64, ptr %i.bm, align 8            ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.bp = load i64, ptr %i.bo, align 8
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4llvm4bolt21IndirectCallPromotion8CallsiteESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4llvm4bolt21IndirectCallPromotion8CallsiteESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i: ; preds = %bb.k, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4llvm4bolt21IndirectCallPromotion8CallsiteESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i
  %.018.i = phi i64 [ %i.bb, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4llvm4bolt21IndirectCallPromotion8CallsiteESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i ], [ %.1.i, %bb.k ] ; 2 uses
  %.sroa.011.017.i = phi ptr [ %.tr8492, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4llvm4bolt21IndirectCallPromotion8CallsiteESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i ], [ %.sroa.011.1.i, %bb.k ] ; 5 uses
  %i.bq = lshr i64 %.018.i, 1                     ; 6 uses
  %i.br = getelementptr inbounds nuw [72 x i8], ptr %.sroa.011.017.i, i64 %i.bq ; 6 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 40
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !106 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.bt, %i.bd
  br i1 %.not.i.i.i, label %bb.h, label %.split.i

.split.i:                                         ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4llvm4bolt21IndirectCallPromotion8CallsiteESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i
  %i.bu = icmp ugt i64 %i.bt, %i.bd
  br i1 %i.bu, label %bb.j, label %bb.k

bb.h:                                             ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4llvm4bolt21IndirectCallPromotion8CallsiteESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.br, i64 48
  %i.bw = getelementptr inbounds nuw i8, ptr %i.br, i64 56
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !268
  %i.by = load ptr, ptr %i.bv, align 8, !tbaa !269
  %i.bz = ptrtoint ptr %i.bx to i64
  %i.ca = ptrtoint ptr %i.by to i64
  %i.cb = sub i64 %i.bz, %i.ca
  %i.cc = ashr exact i64 %i.cb, 3                 ; 2 uses
  %.not19.i.i.i = icmp eq i64 %i.cc, %i.bl
  br i1 %.not19.i.i.i, label %bb.i, label %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZNK4llvm4bolt21IndirectCallPromotion14getCallTargetsERNS3_16BinaryBasicBlockERKNS2_6MCInstEE3$_1EclINS_17__normal_iteratorIPNS4_8CallsiteESt6vectorISE_SaISE_EEEEKSE_EEbT_RT0_.exit.i"

bb.i:                                             ; preds = %bb.h
  %i.cd = getelementptr inbounds nuw i8, ptr %i.br, i64 32
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !116 ; 2 uses
  %.not20.i.i.i = icmp eq i64 %i.ce, %i.bn
  br i1 %.not20.i.i.i, label %.split15.i, label %.split16.i

.split16.i:                                       ; preds = %bb.i
  %i.cf = icmp ugt i64 %i.ce, %i.bn
  br i1 %i.cf, label %bb.j, label %bb.k

.split15.i:                                       ; preds = %bb.i
  %i.cg = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !95
  %i.ci = icmp ult i64 %i.ch, %i.bp
  br i1 %i.ci, label %bb.j, label %bb.k

"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZNK4llvm4bolt21IndirectCallPromotion14getCallTargetsERNS3_16BinaryBasicBlockERKNS2_6MCInstEE3$_1EclINS_17__normal_iteratorIPNS4_8CallsiteESt6vectorISE_SaISE_EEEEKSE_EEbT_RT0_.exit.i": ; preds = %bb.h
  %i.cj = icmp ult i64 %i.cc, %i.bl
  br i1 %i.cj, label %bb.j, label %bb.k

bb.j:                                             ; preds = %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZNK4llvm4bolt21IndirectCallPromotion14getCallTargetsERNS3_16BinaryBasicBlockERKNS2_6MCInstEE3$_1EclINS_17__normal_iteratorIPNS4_8CallsiteESt6vectorISE_SaISE_EEEEKSE_EEbT_RT0_.exit.i", %.split15.i, %.split16.i, %.split.i
  %i.ck = getelementptr inbounds nuw i8, ptr %i.br, i64 72
  %i.cl = xor i64 %i.bq, -1
  %i.cm = add nsw i64 %.018.i, %i.cl
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZNK4llvm4bolt21IndirectCallPromotion14getCallTargetsERNS3_16BinaryBasicBlockERKNS2_6MCInstEE3$_1EclINS_17__normal_iteratorIPNS4_8CallsiteESt6vectorISE_SaISE_EEEEKSE_EEbT_RT0_.exit.i", %.split15.i, %.split16.i, %.split.i
  %.sroa.011.1.i = phi ptr [ %i.ck, %bb.j ], [ %.sroa.011.017.i, %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZNK4llvm4bolt21IndirectCallPromotion14getCallTargetsERNS3_16BinaryBasicBlockERKNS2_6MCInstEE3$_1EclINS_17__normal_iteratorIPNS4_8CallsiteESt6vectorISE_SaISE_EEEEKSE_EEbT_RT0_.exit.i" ], [ %.sroa.011.017.i, %.split.i ], [ %.sroa.011.017.i, %.split15.i ], [ %.sroa.011.017.i, %.split16.i ] ; 3 uses
  %.1.i = phi i64 [ %i.cm, %bb.j ], [ %i.bq, %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZNK4llvm4bolt21IndirectCallPromotion14getCallTargetsERNS3_16BinaryBasicBlockERKNS2_6MCInstEE3$_1EclINS_17__normal_iteratorIPNS4_8CallsiteESt6vectorISE_SaISE_EEEEKSE_EEbT_RT0_.exit.i" ], [ %i.bq, %.split.i ], [ %i.bq, %.split15.i ], [ %i.bq, %.split16.i ] ; 2 uses
  %i.cn = icmp sgt i64 %.1.i, 0
  br i1 %i.cn, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4llvm4bolt21IndirectCallPromotion8CallsiteESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i, label %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN4llvm4bolt21IndirectCallPromotion8CallsiteESt6vectorIS5_SaIS5_EEEES5_NS0_5__ops14_Iter_comp_valIZNKS4_14getCallTargetsERNS3_16BinaryBasicBlockERKNS2_6MCInstEE3$_1EEET_SK_SK_RKT0_T1_.exit.loopexit", !llvm.loop !17
end_hunk_0
