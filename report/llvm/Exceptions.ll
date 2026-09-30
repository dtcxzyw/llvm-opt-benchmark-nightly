Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/Exceptions?download=true
inline.NumInlined: 2898
inline.NumDeleted: 1672
begin_hunk_0_@_ZSt17__rotate_adaptiveIPSt4pairIN4llvm4bolt11FragmentNumENS2_14BinaryFunction8CallSiteEES7_lET_S8_S8_S8_T1_S9_T0_S9_:bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 32, i1 false), !tbaa.struct !494
  %i.j = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 40
  %i.k = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 40 ; 2 uses
  %i.l = add nsw i64 %.012.i.i.i.i.i, -1
  %i.m = icmp samesign ugt i64 %.012.i.i.i.i.i, 1
  br i1 %i.m, label %.lr.ph.i.i.i.i.i, label %_ZSt4moveIPSt4pairIN4llvm4bolt11FragmentNumENS2_14BinaryFunction8CallSiteEES7_ET0_T_S9_S8_.exit, !llvm.loop !8

_ZSt4moveIPSt4pairIN4llvm4bolt11FragmentNumENS2_14BinaryFunction8CallSiteEES7_ET0_T_S9_S8_.exit: ; preds = %.lr.ph.i.i.i.i.i, %bb.c
  %.08.lcssa.i.i.i.i.i = phi ptr [ %5, %bb.c ], [ %i.k, %.lr.ph.i.i.i.i.i ]
  %i.n = ptrtoint ptr %0 to i64
  %i.o = sub i64 %i.c, %i.n                       ; 2 uses
  %i.p = icmp sgt i64 %i.o, 0
  br i1 %i.p, label %.lr.ph.preheader.i.i.i.i.i36, label %_ZSt13move_backwardIPSt4pairIN4llvm4bolt11FragmentNumENS2_14BinaryFunction8CallSiteEES7_ET0_T_S9_S8_.exit

.lr.ph.preheader.i.i.i.i.i36:                     ; preds = %_ZSt4moveIPSt4pairIN4llvm4bolt11FragmentNumENS2_14BinaryFunction8CallSiteEES7_ET0_T_S9_S8_.exit
  %i.q = udiv exact i64 %i.o, 40
  br label %.lr.ph.i.i.i.i.i37

.lr.ph.i.i.i.i.i37:                               ; preds = %.lr.ph.i.i.i.i.i37, %.lr.ph.preheader.i.i.i.i.i36
  %.010.i.i.i.i.i = phi i64 [ %i.w, %.lr.ph.i.i.i.i.i37 ], [ %i.q, %.lr.ph.preheader.i.i.i.i.i36 ] ; 2 uses
  %.069.i.i.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i.i.i37 ], [ %2, %.lr.ph.preheader.i.i.i.i.i36 ] ; 2 uses
  %.078.i.i.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i.i.i37 ], [ %1, %.lr.ph.preheader.i.i.i.i.i36 ] ; 2 uses
  %i.r = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -40 ; 2 uses
  %i.s = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -40 ; 2 uses
  %i.t = load i32, ptr %i.r, align 8, !tbaa !464
  store i32 %i.t, ptr %i.s, align 8, !tbaa !464
  %i.u = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -32
  %i.v = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.v, ptr noundef nonnull align 8 dereferenceable(32) %i.u, i64 32, i1 false), !tbaa.struct !494
  %i.w = add nsw i64 %.010.i.i.i.i.i, -1
  %i.x = icmp samesign ugt i64 %.010.i.i.i.i.i, 1
  br i1 %i.x, label %.lr.ph.i.i.i.i.i37, label %_ZSt13move_backwardIPSt4pairIN4llvm4bolt11FragmentNumENS2_14BinaryFunction8CallSiteEES7_ET0_T_S9_S8_.exit, !llvm.loop !5

_ZSt13move_backwardIPSt4pairIN4llvm4bolt11FragmentNumENS2_14BinaryFunction8CallSiteEES7_ET0_T_S9_S8_.exit: ; preds = %.lr.ph.i.i.i.i.i37, %_ZSt4moveIPSt4pairIN4llvm4bolt11FragmentNumENS2_14BinaryFunction8CallSiteEES7_ET0_T_S9_S8_.exit
  %i.y = ptrtoint ptr %.08.lcssa.i.i.i.i.i to i64
  %i.z = ptrtoint ptr %5 to i64
  %i.aa = sub i64 %i.y, %i.z                      ; 2 uses
  %i.ab = icmp sgt i64 %i.aa, 0
  br i1 %i.ab, label %.lr.ph.preheader.i.i.i.i.i39, label %_ZSt4moveIPSt4pairIN4llvm4bolt11FragmentNumENS2_14BinaryFunction8CallSiteEES7_ET0_T_S9_S8_.exit44

.lr.ph.preheader.i.i.i.i.i39:                     ; preds = %_ZSt13move_backwardIPSt4pairIN4llvm4bolt11FragmentNumENS2_14BinaryFunction8CallSiteEES7_ET0_T_S9_S8_.exit
  %i.ac = udiv exact i64 %i.aa, 40
  br label %.lr.ph.i.i.i.i.i40

.lr.ph.i.i.i.i.i40:                               ; preds = %.lr.ph.i.i.i.i.i40, %.lr.ph.preheader.i.i.i.i.i39
  %.012.i.i.i.i.i41 = phi i64 [ %i.ai, %.lr.ph.i.i.i.i.i40 ], [ %i.ac, %.lr.ph.preheader.i.i.i.i.i39 ] ; 2 uses
  %.0811.i.i.i.i.i42 = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i40 ], [ %0, %.lr.ph.preheader.i.i.i.i.i39 ] ; 3 uses
  %.0910.i.i.i.i.i43 = phi ptr [ %i.ag, %.lr.ph.i.i.i.i.i40 ], [ %5, %.lr.ph.preheader.i.i.i.i.i39 ] ; 3 uses
  %i.ad = load i32, ptr %.0910.i.i.i.i.i43, align 8, !tbaa !464
  store i32 %i.ad, ptr %.0811.i.i.i.i.i42, align 8, !tbaa !464
  %i.ae = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i43, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i42, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.af, ptr noundef nonnull align 8 dereferenceable(32) %i.ae, i64 32, i1 false), !tbaa.struct !494
  %i.ag = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i43, i64 40
  %i.ah = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i42, i64 40 ; 2 uses
  %i.ai = add nsw i64 %.012.i.i.i.i.i41, -1
  %i.aj = icmp samesign ugt i64 %.012.i.i.i.i.i41, 1
  br i1 %i.aj, label %.lr.ph.i.i.i.i.i40, label %_ZSt4moveIPSt4pairIN4llvm4bolt11FragmentNumENS2_14BinaryFunction8CallSiteEES7_ET0_T_S9_S8_.exit44, !llvm.loop !8

bb.d:                                             ; preds = %bb.a
  %.not33 = icmp sgt i64 %3, %6
  br i1 %.not33, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not34 = icmp eq i64 %3, 0
  br i1 %.not34, label %_ZSt4moveIPSt4pairIN4llvm4bolt11FragmentNumENS2_14BinaryFunction8CallSiteEES7_ET0_T_S9_S8_.exit44, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ak = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.al = ptrtoint ptr %0 to i64
  %i.am = sub i64 %i.ak, %i.al                    ; 2 uses
  %i.an = icmp sgt i64 %i.am, 0
  br i1 %i.an, label %.lr.ph.preheader.i.i.i.i.i46, label %_ZSt4moveIPSt4pairIN4llvm4bolt11FragmentNumENS2_14BinaryFunction8CallSiteEES7_ET0_T_S9_S8_.exit51

.lr.ph.preheader.i.i.i.i.i46:                     ; preds = %bb.f
  %i.ao = udiv exact i64 %i.am, 40
  br label %.lr.ph.i.i.i.i.i47

.lr.ph.i.i.i.i.i47:                               ; preds = %.lr.ph.i.i.i.i.i47, %.lr.ph.preheader.i.i.i.i.i46
  %.012.i.i.i.i.i48 = phi i64 [ %i.au, %.lr.ph.i.i.i.i.i47 ], [ %i.ao, %.lr.ph.preheader.i.i.i.i.i46 ] ; 2 uses
  %.0811.i.i.i.i.i49 = phi ptr [ %i.at, %.lr.ph.i.i.i.i.i47 ], [ %5, %.lr.ph.preheader.i.i.i.i.i46 ] ; 3 uses
  %.0910.i.i.i.i.i50 = phi ptr [ %i.as, %.lr.ph.i.i.i.i.i47 ], [ %0, %.lr.ph.preheader.i.i.i.i.i46 ] ; 3 uses
  %i.ap = load i32, ptr %.0910.i.i.i.i.i50, align 8, !tbaa !464
  store i32 %i.ap, ptr %.0811.i.i.i.i.i49, align 8, !tbaa !464
  %i.aq = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i50, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i49, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ar, ptr noundef nonnull align 8 dereferenceable(32) %i.aq, i64 32, i1 false), !tbaa.struct !494
  %i.as = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i50, i64 40
  %i.at = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i49, i64 40 ; 2 uses
  %i.au = add nsw i64 %.012.i.i.i.i.i48, -1
  %i.av = icmp samesign ugt i64 %.012.i.i.i.i.i48, 1
  br i1 %i.av, label %.lr.ph.i.i.i.i.i47, label %_ZSt4moveIPSt4pairIN4llvm4bolt11FragmentNumENS2_14BinaryFunction8CallSiteEES7_ET0_T_S9_S8_.exit51, !llvm.loop !8

_ZSt4moveIPSt4pairIN4llvm4bolt11FragmentNumENS2_14BinaryFunction8CallSiteEES7_ET0_T_S9_S8_.exit51: ; preds = %.lr.ph.i.i.i.i.i47, %bb.f
  %.08.lcssa.i.i.i.i.i45 = phi ptr [ %5, %bb.f ], [ %i.at, %.lr.ph.i.i.i.i.i47 ] ; 2 uses
  %i.aw = ptrtoint ptr %2 to i64
  %i.ax = sub i64 %i.aw, %i.ak                    ; 2 uses
  %i.ay = icmp sgt i64 %i.ax, 0
  br i1 %i.ay, label %.lr.ph.preheader.i.i.i.i.i53, label %_ZSt4moveIPSt4pairIN4llvm4bolt11FragmentNumENS2_14BinaryFunction8CallSiteEES7_ET0_T_S9_S8_.exit58

.lr.ph.preheader.i.i.i.i.i53:                     ; preds = %_ZSt4moveIPSt4pairIN4llvm4bolt11FragmentNumENS2_14BinaryFunction8CallSiteEES7_ET0_T_S9_S8_.exit51
  %i.az = udiv exact i64 %i.ax, 40
  br label %.lr.ph.i.i.i.i.i54

.lr.ph.i.i.i.i.i54:                               ; preds = %.lr.ph.i.i.i.i.i54, %.lr.ph.preheader.i.i.i.i.i53
  %.012.i.i.i.i.i55 = phi i64 [ %i.bf, %.lr.ph.i.i.i.i.i54 ], [ %i.az, %.lr.ph.preheader.i.i.i.i.i53 ] ; 2 uses
  %.0811.i.i.i.i.i56 = phi ptr [ %i.be, %.lr.ph.i.i.i.i.i54 ], [ %0, %.lr.ph.preheader.i.i.i.i.i53 ] ; 3 uses
  %.0910.i.i.i.i.i57 = phi ptr [ %i.bd, %.lr.ph.i.i.i.i.i54 ], [ %1, %.lr.ph.preheader.i.i.i.i.i53 ] ; 3 uses
  %i.ba = load i32, ptr %.0910.i.i.i.i.i57, align 8, !tbaa !464
  store i32 %i.ba, ptr %.0811.i.i.i.i.i56, align 8, !tbaa !464
  %i.bb = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i57, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i56, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bc, ptr noundef nonnull align 8 dereferenceable(32) %i.bb, i64 32, i1 false), !tbaa.struct !494
  %i.bd = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i57, i64 40
  %i.be = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i56, i64 40
  %i.bf = add nsw i64 %.012.i.i.i.i.i55, -1
  %i.bg = icmp samesign ugt i64 %.012.i.i.i.i.i55, 1
  br i1 %i.bg, label %.lr.ph.i.i.i.i.i54, label %_ZSt4moveIPSt4pairIN4llvm4bolt11FragmentNumENS2_14BinaryFunction8CallSiteEES7_ET0_T_S9_S8_.exit58, !llvm.loop !8

_ZSt4moveIPSt4pairIN4llvm4bolt11FragmentNumENS2_14BinaryFunction8CallSiteEES7_ET0_T_S9_S8_.exit58: ; preds = %.lr.ph.i.i.i.i.i54, %_ZSt4moveIPSt4pairIN4llvm4bolt11FragmentNumENS2_14BinaryFunction8CallSiteEES7_ET0_T_S9_S8_.exit51
  %i.bh = ptrtoint ptr %.08.lcssa.i.i.i.i.i45 to i64
  %i.bi = ptrtoint ptr %5 to i64
  %i.bj = sub i64 %i.bh, %i.bi                    ; 2 uses
  %i.bk = icmp sgt i64 %i.bj, 0
  br i1 %i.bk, label %.lr.ph.preheader.i.i.i.i.i60, label %_ZSt4moveIPSt4pairIN4llvm4bolt11FragmentNumENS2_14BinaryFunction8CallSiteEES7_ET0_T_S9_S8_.exit44

.lr.ph.preheader.i.i.i.i.i60:                     ; preds = %_ZSt4moveIPSt4pairIN4llvm4bolt11FragmentNumENS2_14BinaryFunction8CallSiteEES7_ET0_T_S9_S8_.exit58
  %i.bl = udiv exact i64 %i.bj, 40
  br label %.lr.ph.i.i.i.i.i61

.lr.ph.i.i.i.i.i61:                               ; preds = %.lr.ph.i.i.i.i.i61, %.lr.ph.preheader.i.i.i.i.i60
  %.010.i.i.i.i.i62 = phi i64 [ %i.br, %.lr.ph.i.i.i.i.i61 ], [ %i.bl, %.lr.ph.preheader.i.i.i.i.i60 ] ; 2 uses
  %.069.i.i.i.i.i63 = phi ptr [ %i.bn, %.lr.ph.i.i.i.i.i61 ], [ %2, %.lr.ph.preheader.i.i.i.i.i60 ] ; 2 uses
  %.078.i.i.i.i.i64 = phi ptr [ %i.bm, %.lr.ph.i.i.i.i.i61 ], [ %.08.lcssa.i.i.i.i.i45, %.lr.ph.preheader.i.i.i.i.i60 ] ; 2 uses
  %i.bm = getelementptr inbounds i8, ptr %.078.i.i.i.i.i64, i64 -40 ; 2 uses
  %i.bn = getelementptr inbounds i8, ptr %.069.i.i.i.i.i63, i64 -40 ; 3 uses
  %i.bo = load i32, ptr %i.bm, align 8, !tbaa !464
  store i32 %i.bo, ptr %i.bn, align 8, !tbaa !464
  %i.bp = getelementptr inbounds i8, ptr %.078.i.i.i.i.i64, i64 -32
  %i.bq = getelementptr inbounds i8, ptr %.069.i.i.i.i.i63, i64 -32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bq, ptr noundef nonnull align 8 dereferenceable(32) %i.bp, i64 32, i1 false), !tbaa.struct !494
  %i.br = add nsw i64 %.010.i.i.i.i.i62, -1
  %i.bs = icmp samesign ugt i64 %.010.i.i.i.i.i62, 1
  br i1 %i.bs, label %.lr.ph.i.i.i.i.i61, label %_ZSt4moveIPSt4pairIN4llvm4bolt11FragmentNumENS2_14BinaryFunction8CallSiteEES7_ET0_T_S9_S8_.exit44, !llvm.loop !5

bb.g:                                             ; preds = %bb.d
  %i.bt = tail call noundef ptr @_ZNSt3_V28__rotateIPSt4pairIN4llvm4bolt11FragmentNumENS3_14BinaryFunction8CallSiteEEEET_S9_S9_S9_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  br label %_ZSt4moveIPSt4pairIN4llvm4bolt11FragmentNumENS2_14BinaryFunction8CallSiteEES7_ET0_T_S9_S8_.exit44

_ZSt4moveIPSt4pairIN4llvm4bolt11FragmentNumENS2_14BinaryFunction8CallSiteEES7_ET0_T_S9_S8_.exit44: ; preds = %.lr.ph.i.i.i.i.i40, %.lr.ph.i.i.i.i.i61, %_ZSt4moveIPSt4pairIN4llvm4bolt11FragmentNumENS2_14BinaryFunction8CallSiteEES7_ET0_T_S9_S8_.exit58, %_ZSt13move_backwardIPSt4pairIN4llvm4bolt11FragmentNumENS2_14BinaryFunction8CallSiteEES7_ET0_T_S9_S8_.exit, %bb.e, %bb.b, %bb.g
  %.0 = phi ptr [ %2, %bb.e ], [ %i.bt, %bb.g ], [ %i.bn, %.lr.ph.i.i.i.i.i61 ], [ %0, %bb.b ], [ %0, %_ZSt13move_backwardIPSt4pairIN4llvm4bolt11FragmentNumENS2_14BinaryFunction8CallSiteEES7_ET0_T_S9_S8_.exit ], [ %2, %_ZSt4moveIPSt4pairIN4llvm4bolt11FragmentNumENS2_14BinaryFunction8CallSiteEES7_ET0_T_S9_S8_.exit58 ], [ %i.ah, %.lr.ph.i.i.i.i.i40 ]
  ret ptr %.0
}

declare noundef ptr @_ZN4llvm4bolt13BinaryContext23getOrCreateGlobalSymbolEmNS_5TwineEmtj(ptr noundef nonnull align 8 dereferenceable(2268), i64 noundef, ptr noundef byval(%"class.llvm::Twine") align 8, i64 noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm4bolt14BinaryFunction17addCFIInstructionEmONS_16MCCFIInstructionE(ptr noundef nonnull align 8 dereferenceable(1360) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(88) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = trunc i64 %1 to i32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 872
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !463  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 864 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not10.i.i.i, label %_ZNSt3mapIjN4llvm6MCInstESt4lessIjESaISt4pairIKjS1_EEE11lower_boundERS5_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.c, %bb.a ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.d, %bb.a ]
  %i.e = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.f = load i32, ptr %i.e, align 4, !tbaa !464
  %i.g = icmp ult i32 %i.f, %i.a                  ; 2 uses
  %.19.i.i.i = select i1 %i.g, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 2 uses
  %.1.in.v.i.i.i = select i1 %i.g, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !465 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapIjN4llvm6MCInstESt4lessIjESaISt4pairIKjS1_EEE11lower_boundERS5_.exit, label %.lr.ph.i.i.i, !llvm.loop !2

_ZNSt3mapIjN4llvm6MCInstESt4lessIjESaISt4pairIKjS1_EEE11lower_boundERS5_.exit: ; preds = %.lr.ph.i.i.i, %bb.a
  %.08.lcssa.i.i.i = phi ptr [ %i.d, %bb.a ], [ %.19.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.i = load i64, ptr %i.h, align 8, !tbaa !456
  %i.j = icmp eq i64 %1, %i.i
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZNSt3mapIjN4llvm6MCInstESt4lessIjESaISt4pairIKjS1_EEE11lower_boundERS5_.exit
  %i.k = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef %.08.lcssa.i.i.i) #26 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.m = load i32, ptr %i.l, align 8, !tbaa !480
  %i.n = zext i32 %i.m to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZNSt3mapIjN4llvm6MCInstESt4lessIjESaISt4pairIKjS1_EEE11lower_boundERS5_.exit
  %.0 = phi i64 [ %i.n, %bb.b ], [ %1, %_ZNSt3mapIjN4llvm6MCInstESt4lessIjESaISt4pairIKjS1_EEE11lower_boundERS5_.exit ]
  %.sroa.010.0 = phi ptr [ %i.k, %bb.b ], [ %.08.lcssa.i.i.i, %_ZNSt3mapIjN4llvm6MCInstESt4lessIjESaISt4pairIKjS1_EEE11lower_boundERS5_.exit ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 880 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !496  ; 2 uses
  %3 = icmp ne ptr %.sroa.010.0, %i.p
  %4 = getelementptr inbounds nuw i8, ptr %2, i64 72
  %5 = load i8, ptr %4, align 8
  %i.q = icmp eq i8 %5, 1
  %or.cond = select i1 %3, i1 true, i1 %i.q
  br i1 %or.cond, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1104
  br label %bb.f

.critedge:                                        ; preds = %bb.c
  %i.s = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.010.0) #26 ; 3 uses
  %i.t = trunc i64 %.0 to i32                     ; 2 uses
  %.not2021 = icmp eq ptr %i.s, %i.p
  br i1 %.not2021, label %.critedge2, label %.lr.ph

.lr.ph:                                           ; preds = %.critedge
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !165, !nonnull !30, !align !166
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 1568
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !471  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.z = load ptr, ptr %i.x, align 8, !tbaa !22
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 360
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = tail call noundef zeroext i1 %i.ab(ptr noundef nonnull align 8 dereferenceable(536) %i.x, ptr noundef nonnull align 8 dereferenceable(128) %i.y) #23
  br i1 %i.ac, label %.lr.ph31, label %.critedge2

bb.e:                                             ; preds = %.lr.ph31
  %i.ad = load ptr, ptr %i.u, align 8, !tbaa !165, !nonnull !30, !align !166
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 1568
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !471 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  %i.ah = load ptr, ptr %i.af, align 8, !tbaa !22
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 360
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = tail call noundef zeroext i1 %i.aj(ptr noundef nonnull align 8 dereferenceable(536) %i.af, ptr noundef nonnull align 8 dereferenceable(128) %i.ag) #23
  br i1 %i.ak, label %.lr.ph31, label %.critedge2, !llvm.loop !897

.lr.ph31:                                         ; preds = %.lr.ph, %bb.e
  %.sroa.010.12330 = phi ptr [ %i.an, %bb.e ], [ %i.s, %.lr.ph ] ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.010.12330, i64 32
  %i.am = load i32, ptr %i.al, align 8, !tbaa !480 ; 2 uses
  %i.an = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.010.12330) #26 ; 3 uses
  %i.ao = load ptr, ptr %i.o, align 8, !tbaa !496
  %.not20 = icmp eq ptr %i.an, %i.ao
  br i1 %.not20, label %..critedge2.loopexit_crit_edge, label %bb.e, !llvm.loop !897

..critedge2.loopexit_crit_edge:                   ; preds = %.lr.ph31
  br label %.critedge2, !llvm.loop !897

.critedge2:                                       ; preds = %bb.e, %.lr.ph, %..critedge2.loopexit_crit_edge, %.critedge
  %.1.lcssa = phi i32 [ %i.t, %.critedge ], [ %i.t, %.lr.ph ], [ %i.am, %..critedge2.loopexit_crit_edge ], [ %i.am, %bb.e ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 904
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 912
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !486
  %i.as = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #25 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  store i32 %.1.lcssa, ptr %i.at, align 4, !tbaa !900
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 36
  store i32 %i.ar, ptr %i.au, align 4, !tbaa !901
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 1064 ; 3 uses
  %.078.i.i.i = load ptr, ptr %i.av, align 8, !tbaa !465 ; 2 uses
  %.not9.i.i.i = icmp eq ptr %.078.i.i.i, null
  br i1 %.not9.i.i.i, label %_ZNSt8multimapIjjSt4lessIjESaISt4pairIKjjEEE7emplaceIJRmmEEESt17_Rb_tree_iteratorIS4_EDpOT_.exit, label %.lr.ph.i.i.i6

.lr.ph.i.i.i6:                                    ; preds = %.critedge2, %.lr.ph.i.i.i6
  %.0710.i.i.i = phi ptr [ %.07.i.i.i, %.lr.ph.i.i.i6 ], [ %.078.i.i.i, %.critedge2 ] ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.0710.i.i.i, i64 32
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !464
  %i.az = icmp ugt i32 %i.ay, %.1.lcssa           ; 2 uses
  %.in.v.i.i.i = select i1 %i.az, i64 16, i64 24
  %.in.i.i.i = getelementptr inbounds nuw i8, ptr %.0710.i.i.i, i64 %.in.v.i.i.i
  %.07.i.i.i = load ptr, ptr %.in.i.i.i, align 8, !tbaa !465 ; 2 uses
  %.not.i.i.i7 = icmp eq ptr %.07.i.i.i, null
  br i1 %.not.i.i.i7, label %_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE23_M_get_insert_equal_posERS1_.exit.i.i, label %.lr.ph.i.i.i6, !llvm.loop !898

_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE23_M_get_insert_equal_posERS1_.exit.i.i: ; preds = %.lr.ph.i.i.i6
  %i.ba = icmp eq ptr %.0710.i.i.i, %i.aw
  %spec.select.i.i = or i1 %i.ba, %i.az
  br label %_ZNSt8multimapIjjSt4lessIjESaISt4pairIKjjEEE7emplaceIJRmmEEESt17_Rb_tree_iteratorIS4_EDpOT_.exit

_ZNSt8multimapIjjSt4lessIjESaISt4pairIKjjEEE7emplaceIJRmmEEESt17_Rb_tree_iteratorIS4_EDpOT_.exit: ; preds = %.critedge2, %_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE23_M_get_insert_equal_posERS1_.exit.i.i
  %.0.lcssa.i12.i.i = phi ptr [ %i.aw, %.critedge2 ], [ %.0710.i.i.i, %_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE23_M_get_insert_equal_posERS1_.exit.i.i ]
  %i.bb = phi i1 [ true, %.critedge2 ], [ %spec.select.i.i, %_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE23_M_get_insert_equal_posERS1_.exit.i.i ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.bb, ptr noundef nonnull %i.as, ptr noundef nonnull %.0.lcssa.i12.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.aw) #23
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 1096 ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !489
  %i.be = add i64 %i.bd, 1
  store i64 %i.be, ptr %i.bc, align 8, !tbaa !489
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt8multimapIjjSt4lessIjESaISt4pairIKjjEEE7emplaceIJRmmEEESt17_Rb_tree_iteratorIS4_EDpOT_.exit, %bb.d
  %.sink = phi ptr [ %i.ap, %_ZNSt8multimapIjjSt4lessIjESaISt4pairIKjjEEE7emplaceIJRmmEEESt17_Rb_tree_iteratorIS4_EDpOT_.exit ], [ %i.r, %bb.d ]
  %i.bf = tail call noundef nonnull align 8 dereferenceable(88) ptr @_ZN4llvm15SmallVectorImplINS_16MCCFIInstructionEE12emplace_backIJS1_EEERS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %.sink, ptr noundef nonnull align 8 dereferenceable(88) %2) ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm4bolt14BinaryFunction22setInstModifiesRAStateEhm(ptr noundef nonnull align 8 dereferenceable(1360) %0, i8 noundef zeroext %1, i64 noundef %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = trunc i64 %2 to i32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 872 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !463  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 864 ; 4 uses
  %.not10.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not10.i.i.i.i, label %_ZNSt3mapIjN4llvm6MCInstESt4lessIjESaISt4pairIKjS1_EEE11lower_boundERS5_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.c, %bb.a ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.d, %bb.a ]
  %i.e = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.f = load i32, ptr %i.e, align 4, !tbaa !464
  %i.g = icmp ult i32 %i.f, %i.a                  ; 2 uses
  %.19.i.i.i.i = select i1 %i.g, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 2 uses
  %.1.in.v.i.i.i.i = select i1 %i.g, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !465 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt3mapIjN4llvm6MCInstESt4lessIjESaISt4pairIKjS1_EEE11lower_boundERS5_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !2

_ZNSt3mapIjN4llvm6MCInstESt4lessIjESaISt4pairIKjS1_EEE11lower_boundERS5_.exit.i: ; preds = %.lr.ph.i.i.i.i, %bb.a
  %.08.lcssa.i.i.i.i = phi ptr [ %i.d, %bb.a ], [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.i = load i64, ptr %i.h, align 8, !tbaa !456
  %i.j = icmp eq i64 %2, %i.i
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZNSt3mapIjN4llvm6MCInstESt4lessIjESaISt4pairIKjS1_EEE11lower_boundERS5_.exit.i
  %i.k = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef %.08.lcssa.i.i.i.i) #26 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.m = load i32, ptr %i.l, align 8, !tbaa !480
  %i.n = zext i32 %i.m to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZNSt3mapIjN4llvm6MCInstESt4lessIjESaISt4pairIKjS1_EEE11lower_boundERS5_.exit.i
  %.0.i = phi i64 [ %i.n, %bb.b ], [ %2, %_ZNSt3mapIjN4llvm6MCInstESt4lessIjESaISt4pairIKjS1_EEE11lower_boundERS5_.exit.i ] ; 2 uses
  %.sroa.02.0.i = phi ptr [ %i.k, %bb.b ], [ %.08.lcssa.i.i.i.i, %_ZNSt3mapIjN4llvm6MCInstESt4lessIjESaISt4pairIKjS1_EEE11lower_boundERS5_.exit.i ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 880 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !496  ; 2 uses
  %i.q = icmp eq ptr %.sroa.02.0.i, %i.p
  br i1 %i.q, label %_ZN4llvm4bolt14BinaryFunction21getCorrectedCFIOffsetEm.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.02.0.i) #26 ; 3 uses
  %.not13.i = icmp eq ptr %i.r, %i.p
  br i1 %.not13.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !165, !nonnull !30, !align !166
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 1568
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !471  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %i.x = load ptr, ptr %i.v, align 8, !tbaa !22
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 360
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = tail call noundef zeroext i1 %i.z(ptr noundef nonnull align 8 dereferenceable(536) %i.v, ptr noundef nonnull align 8 dereferenceable(128) %i.w) #23, !inline_history !902
  br i1 %i.aa, label %.lr.ph, label %.loopexit

bb.e:                                             ; preds = %.lr.ph
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !165, !nonnull !30, !align !166
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 1568
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !471 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  %i.af = load ptr, ptr %i.ad, align 8, !tbaa !22
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 360
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = tail call noundef zeroext i1 %i.ah(ptr noundef nonnull align 8 dereferenceable(536) %i.ad, ptr noundef nonnull align 8 dereferenceable(128) %i.ae) #23, !inline_history !902
  br i1 %i.ai, label %.lr.ph, label %.loopexit.loopexit, !llvm.loop !903

.lr.ph:                                           ; preds = %.lr.ph.i, %bb.e
  %.sroa.02.115.i10 = phi ptr [ %i.al, %bb.e ], [ %i.r, %.lr.ph.i ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.02.115.i10, i64 32
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !480 ; 2 uses
  %i.al = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.02.115.i10) #26 ; 3 uses
  %i.am = load ptr, ptr %i.o, align 8, !tbaa !496
  %.not.i = icmp eq ptr %i.al, %i.am
  br i1 %.not.i, label %..loopexit_crit_edge11, label %bb.e, !llvm.loop !903

..loopexit_crit_edge11:                           ; preds = %.lr.ph
  %i.an = zext i32 %i.ak to i64
  br label %.loopexit, !llvm.loop !903

.loopexit.loopexit:                               ; preds = %bb.e
  %i.ao = zext i32 %i.ak to i64
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.lr.ph.i, %..loopexit_crit_edge11, %bb.d
  %.sroa.012.0.i.ph = phi i64 [ %.0.i, %bb.d ], [ %i.an, %..loopexit_crit_edge11 ], [ %.0.i, %.lr.ph.i ], [ %i.ao, %.loopexit.loopexit ]
  %i.ap = trunc i64 %.sroa.012.0.i.ph to i32
  %i.aq = load ptr, ptr %i.b, align 8, !tbaa !463 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not10.i.i.i, label %_ZNSt3mapIjN4llvm6MCInstESt4lessIjESaISt4pairIKjS1_EEE11lower_boundERS5_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.loopexit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.aq, %.loopexit ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.d, %.loopexit ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !464
  %i.at = icmp ult i32 %i.as, %i.ap               ; 2 uses
  %.19.i.i.i = select i1 %i.at, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 2 uses
  %.1.in.v.i.i.i = select i1 %i.at, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !465 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapIjN4llvm6MCInstESt4lessIjESaISt4pairIKjS1_EEE11lower_boundERS5_.exit, label %.lr.ph.i.i.i, !llvm.loop !2

_ZNSt3mapIjN4llvm6MCInstESt4lessIjESaISt4pairIKjS1_EEE11lower_boundERS5_.exit: ; preds = %.lr.ph.i.i.i, %.loopexit
  %.08.lcssa.i.i.i = phi ptr [ %i.d, %.loopexit ], [ %.19.i.i.i, %.lr.ph.i.i.i ]
end_hunk_0
