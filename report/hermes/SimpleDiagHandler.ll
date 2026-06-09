inline.NumInlined: 270
inline.NumDeleted: 172
begin_hunk_0_@_ZN4llvh15SmallVectorImplINS_7SMFixItEEaSERKS2_:bb.a
  br label %_ZSt4copyIPKN4llvh7SMFixItEPS1_ET0_T_S6_S5_.exit

_ZSt4copyIPKN4llvh7SMFixItEPS1_ET0_T_S6_S5_.exit: ; preds = %bb.c, %_ZSt4copyIPKN4llvh7SMFixItEPS1_ET0_T_S6_S5_.exit.loopexit
  %.pre-phi = phi i64 [ %.pre46, %_ZSt4copyIPKN4llvh7SMFixItEPS1_ET0_T_S6_S5_.exit.loopexit ], [ %i.h, %bb.c ]
  %i.q = phi ptr [ %.pre, %_ZSt4copyIPKN4llvh7SMFixItEPS1_ET0_T_S6_S5_.exit.loopexit ], [ %i.i, %bb.c ]
  %.0 = phi ptr [ %i.n, %_ZSt4copyIPKN4llvh7SMFixItEPS1_ET0_T_S6_S5_.exit.loopexit ], [ %i.i, %bb.c ] ; 2 uses
  %i.r = getelementptr inbounds nuw [48 x i8], ptr %i.q, i64 %.pre-phi ; 2 uses
  %.not4.i = icmp eq ptr %.0, %i.r
  br i1 %.not4.i, label %.sink.split, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZSt4copyIPKN4llvh7SMFixItEPS1_ET0_T_S6_S5_.exit, %_ZN4llvh7SMFixItD2Ev.exit.i
  %.05.i = phi ptr [ %i.s, %_ZN4llvh7SMFixItD2Ev.exit.i ], [ %i.r, %_ZSt4copyIPKN4llvh7SMFixItEPS1_ET0_T_S6_S5_.exit ] ; 3 uses
  %i.s = getelementptr inbounds i8, ptr %.05.i, i64 -48 ; 2 uses
  %i.t = getelementptr inbounds i8, ptr %.05.i, i64 -32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !73   ; 2 uses
  %i.v = getelementptr inbounds i8, ptr %.05.i, i64 -16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZN4llvh7SMFixItD2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %.lr.ph.i
  %i.x = load i64, ptr %i.v, align 8, !tbaa !52
  %i.y = add i64 %i.x, 1
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #17
  br label %_ZN4llvh7SMFixItD2Ev.exit.i

_ZN4llvh7SMFixItD2Ev.exit.i:                      ; preds = %.lr.ph.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %.not.i = icmp eq ptr %.0, %i.s
  br i1 %.not.i, label %.sink.split, label %.lr.ph.i, !llvm.loop !146

bb.d:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !82
  %i.ab = icmp ult i32 %i.aa, %i.d
  br i1 %i.ab, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ac = load ptr, ptr %0, align 8, !tbaa !80    ; 2 uses
  %.not4.i30 = icmp eq i32 %i.g, 0
  br i1 %.not4.i30, label %_ZN4llvh23SmallVectorTemplateBaseINS_7SMFixItELb0EE13destroy_rangeEPS1_S3_.exit37, label %.lr.ph.i31.preheader

.lr.ph.i31.preheader:                             ; preds = %bb.e
  %.idx = mul nuw nsw i64 %i.h, 48
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.idx
  br label %.lr.ph.i31

.lr.ph.i31:                                       ; preds = %.lr.ph.i31.preheader, %_ZN4llvh7SMFixItD2Ev.exit.i34
  %.05.i32 = phi ptr [ %i.ae, %_ZN4llvh7SMFixItD2Ev.exit.i34 ], [ %i.ad, %.lr.ph.i31.preheader ] ; 3 uses
  %i.ae = getelementptr inbounds i8, ptr %.05.i32, i64 -48 ; 2 uses
  %i.af = getelementptr inbounds i8, ptr %.05.i32, i64 -32
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !73 ; 2 uses
  %i.ah = getelementptr inbounds i8, ptr %.05.i32, i64 -16 ; 2 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZN4llvh7SMFixItD2Ev.exit.i34, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i33: ; preds = %.lr.ph.i31
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !52
  %i.ak = add i64 %i.aj, 1
  tail call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.ak) #17
  br label %_ZN4llvh7SMFixItD2Ev.exit.i34

_ZN4llvh7SMFixItD2Ev.exit.i34:                    ; preds = %.lr.ph.i31, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i33
  %.not.i35 = icmp eq ptr %i.ac, %i.ae
  br i1 %.not.i35, label %_ZN4llvh23SmallVectorTemplateBaseINS_7SMFixItELb0EE13destroy_rangeEPS1_S3_.exit37, label %.lr.ph.i31, !llvm.loop !146

_ZN4llvh23SmallVectorTemplateBaseINS_7SMFixItELb0EE13destroy_rangeEPS1_S3_.exit37: ; preds = %_ZN4llvh7SMFixItD2Ev.exit.i34, %bb.e
  store i32 0, ptr %i.f, align 8, !tbaa !81
  tail call void @_ZN4llvh23SmallVectorTemplateBaseINS_7SMFixItELb0EE4growEm(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.e)
  br label %_ZSt4copyIPKN4llvh7SMFixItEPS1_ET0_T_S6_S5_.exit44

bb.f:                                             ; preds = %bb.d
  %.not28 = icmp eq i32 %i.g, 0
  br i1 %.not28, label %_ZSt4copyIPKN4llvh7SMFixItEPS1_ET0_T_S6_S5_.exit44, label %.lr.ph.preheader.i.i.i.i.i39

.lr.ph.preheader.i.i.i.i.i39:                     ; preds = %bb.f
  %i.al = load ptr, ptr %1, align 8, !tbaa !80
  %i.am = load ptr, ptr %0, align 8, !tbaa !80
  br label %.lr.ph.i.i.i.i.i40

.lr.ph.i.i.i.i.i40:                               ; preds = %.lr.ph.i.i.i.i.i40, %.lr.ph.preheader.i.i.i.i.i39
  %.012.i.i.i.i.i41 = phi i64 [ %i.ar, %.lr.ph.i.i.i.i.i40 ], [ %i.h, %.lr.ph.preheader.i.i.i.i.i39 ] ; 2 uses
  %.0811.i.i.i.i.i42 = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i40 ], [ %i.am, %.lr.ph.preheader.i.i.i.i.i39 ] ; 3 uses
  %.0910.i.i.i.i.i43 = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i40 ], [ %i.al, %.lr.ph.preheader.i.i.i.i.i39 ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.0811.i.i.i.i.i42, ptr noundef nonnull align 8 dereferenceable(48) %.0910.i.i.i.i.i43, i64 16, i1 false), !tbaa.struct !143
  %i.an = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i42, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i43, i64 16
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.an, ptr noundef nonnull align 8 dereferenceable(32) %i.ao) #14
  %i.ap = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i43, i64 48
  %i.aq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i42, i64 48
  %i.ar = add nsw i64 %.012.i.i.i.i.i41, -1
  %i.as = icmp samesign ugt i64 %.012.i.i.i.i.i41, 1
  br i1 %i.as, label %.lr.ph.i.i.i.i.i40, label %_ZSt4copyIPKN4llvh7SMFixItEPS1_ET0_T_S6_S5_.exit44, !llvm.loop !145

_ZSt4copyIPKN4llvh7SMFixItEPS1_ET0_T_S6_S5_.exit44: ; preds = %.lr.ph.i.i.i.i.i40, %bb.f, %_ZN4llvh23SmallVectorTemplateBaseINS_7SMFixItELb0EE13destroy_rangeEPS1_S3_.exit37
  %.022 = phi i64 [ 0, %_ZN4llvh23SmallVectorTemplateBaseINS_7SMFixItELb0EE13destroy_rangeEPS1_S3_.exit37 ], [ 0, %bb.f ], [ %i.h, %.lr.ph.i.i.i.i.i40 ] ; 3 uses
  %i.at = load ptr, ptr %1, align 8, !tbaa !80    ; 2 uses
  %i.au = load i32, ptr %i.c, align 8, !tbaa !81
  %i.av = zext i32 %i.au to i64                   ; 2 uses
  %i.aw = getelementptr inbounds nuw [48 x i8], ptr %i.at, i64 %i.av
  %.not9.i.i.i.i = icmp samesign eq i64 %.022, %i.av
  br i1 %.not9.i.i.i.i, label %.sink.split, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZSt4copyIPKN4llvh7SMFixItEPS1_ET0_T_S6_S5_.exit44
  %i.ax = load ptr, ptr %0, align 8, !tbaa !80
  %i.ay = getelementptr inbounds nuw [48 x i8], ptr %i.ax, i64 %.022
  %i.az = getelementptr inbounds nuw [48 x i8], ptr %i.at, i64 %.022
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %_ZSt10_ConstructIN4llvh7SMFixItEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.bq, %_ZSt10_ConstructIN4llvh7SMFixItEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.ay, %.lr.ph.i.i.i.i.preheader ] ; 5 uses
  %.0810.i.i.i.i = phi ptr [ %i.bp, %_ZSt10_ConstructIN4llvh7SMFixItEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.az, %.lr.ph.i.i.i.i.preheader ] ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.011.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.0810.i.i.i.i, i64 16, i1 false), !tbaa.struct !143
  %i.ba = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 16 ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 16
  %i.bc = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 32 ; 3 uses
  store ptr %i.bc, ptr %i.ba, align 8, !tbaa !79
  %i.bd = load ptr, ptr %i.bb, align 8, !tbaa !73 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 24
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !50 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store i64 %i.bf, ptr %i.a, align 8, !tbaa !147
  %i.bg = icmp ugt i64 %i.bf, 15
  br i1 %i.bg, label %bb.g, label %._crit_edge.i.i.i.i.i.i.i.i

bb.g:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bh = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.ba, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #14 ; 2 uses
  store ptr %i.bh, ptr %i.ba, align 8, !tbaa !73
  %i.bi = load i64, ptr %i.a, align 8, !tbaa !147
  store i64 %i.bi, ptr %i.bc, align 8, !tbaa !52
  br label %._crit_edge.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %bb.g, %.lr.ph.i.i.i.i
  %i.bj = phi ptr [ %i.bh, %bb.g ], [ %i.bc, %.lr.ph.i.i.i.i ] ; 2 uses
  switch i64 %i.bf, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %_ZSt10_ConstructIN4llvh7SMFixItEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i
  ]

bb.h:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  %i.bk = load i8, ptr %i.bd, align 1, !tbaa !52
  store i8 %i.bk, ptr %i.bj, align 1, !tbaa !52
  br label %_ZSt10_ConstructIN4llvh7SMFixItEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i

bb.i:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bj, ptr align 1 %i.bd, i64 %i.bf, i1 false)
  br label %_ZSt10_ConstructIN4llvh7SMFixItEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i

_ZSt10_ConstructIN4llvh7SMFixItEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i: ; preds = %bb.i, %bb.h, %._crit_edge.i.i.i.i.i.i.i.i
  %i.bl = load i64, ptr %i.a, align 8, !tbaa !147 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 24
  store i64 %i.bl, ptr %i.bm, align 8, !tbaa !50
  %i.bn = load ptr, ptr %i.ba, align 8, !tbaa !73
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bl
  store i8 0, ptr %i.bo, align 1, !tbaa !52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  %i.bp = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 48 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 48
  %.not.i.i.i.i = icmp eq ptr %i.bp, %i.aw
  br i1 %.not.i.i.i.i, label %.sink.split, label %.lr.ph.i.i.i.i, !llvm.loop !148

.sink.split:                                      ; preds = %_ZN4llvh7SMFixItD2Ev.exit.i, %_ZSt10_ConstructIN4llvh7SMFixItEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i, %_ZSt4copyIPKN4llvh7SMFixItEPS1_ET0_T_S6_S5_.exit44, %_ZSt4copyIPKN4llvh7SMFixItEPS1_ET0_T_S6_S5_.exit
  store i32 %i.d, ptr %i.f, align 8, !tbaa !81
  br label %bb.j

bb.j:                                             ; preds = %.sink.split, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh23SmallVectorTemplateBaseINS_7SMFixItELb0EE4growEm(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !82
  %i.c = zext i32 %i.b to i64                     ; 2 uses
  %i.d = add nuw nsw i64 %i.c, 2                  ; 2 uses
  %i.e = lshr i64 %i.d, 1
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 2
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 4
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 8
  %i.l = or i64 %i.k, %i.j                        ; 2 uses
  %i.m = lshr i64 %i.l, 16
  %i.n = or i64 %i.m, %i.l                        ; 2 uses
  %i.o = lshr i64 %i.n, 32
  %i.p = or i64 %i.o, %i.n
  %i.q = add nuw nsw i64 %i.p, 1
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.q, i64 %1) ; 2 uses
  %i.r = and i64 %.sroa.speculated, 4294967295    ; 3 uses
  %.not = icmp samesign ule i64 %i.r, %i.c
  %i.s = icmp ult i64 %i.r, %1
  %or.cond = or i1 %.not, %i.s
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4llvh22report_bad_alloc_errorEPKcb(ptr noundef nonnull @.str.1, i1 noundef zeroext true) #14
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.t = mul nuw nsw i64 %i.r, 48
  %i.u = tail call noalias ptr @malloc(i64 noundef %i.t) #18 ; 4 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.d, label %_ZN4llvh11safe_mallocEm.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4llvh22report_bad_alloc_errorEPKcb(ptr noundef nonnull @.str.2, i1 noundef zeroext true) #14
  br label %_ZN4llvh11safe_mallocEm.exit

_ZN4llvh11safe_mallocEm.exit:                     ; preds = %bb.c, %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.u) ]
  %i.w = load ptr, ptr %0, align 8, !tbaa !80     ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !81   ; 2 uses
  %i.z = zext i32 %i.y to i64
  %.idx = mul nuw nsw i64 %i.z, 48
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 %.idx
  %.not7.i.i.i.i = icmp eq i32 %i.y, 0
  br i1 %.not7.i.i.i.i, label %_ZN4llvh23SmallVectorTemplateBaseINS_7SMFixItELb0EE13destroy_rangeEPS1_S3_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN4llvh11safe_mallocEm.exit, %_ZSt10_ConstructIN4llvh7SMFixItEJS1_EEvPT_DpOT0_.exit.i.i.i.i
  %.09.i.i.i.i = phi ptr [ %i.aq, %_ZSt10_ConstructIN4llvh7SMFixItEJS1_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.u, %_ZN4llvh11safe_mallocEm.exit ] ; 5 uses
  %.sroa.04.08.i.i.i.i = phi ptr [ %i.ap, %_ZSt10_ConstructIN4llvh7SMFixItEJS1_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.w, %_ZN4llvh11safe_mallocEm.exit ] ; 8 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.04.08.i.i.i.i) ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.09.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.04.08.i.i.i.i, i64 16, i1 false), !tbaa.struct !143
  %i.ab = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 16 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 32 ; 3 uses
  store ptr %i.ad, ptr %i.ab, align 8, !tbaa !79
  %i.ae = load ptr, ptr %i.ac, align 8, !tbaa !73 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i, i64 32 ; 5 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i, i64 24
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !50 ; 3 uses
  %i.aj = icmp ult i64 %i.ai, 16
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = add nuw nsw i64 %i.ai, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ad, ptr noundef nonnull align 8 dereferenceable(1) %i.af, i64 %i.ak, i1 false)
  br label %_ZSt10_ConstructIN4llvh7SMFixItEJS1_EEvPT_DpOT0_.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  store ptr %i.ae, ptr %i.ab, align 8, !tbaa !73
  %i.al = load i64, ptr %i.af, align 8, !tbaa !52
  store i64 %i.al, ptr %i.ad, align 8, !tbaa !52
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i, i64 24
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !50
  br label %_ZSt10_ConstructIN4llvh7SMFixItEJS1_EEvPT_DpOT0_.exit.i.i.i.i

_ZSt10_ConstructIN4llvh7SMFixItEJS1_EEvPT_DpOT0_.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %bb.e
  %i.am = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ], [ %i.ai, %bb.e ]
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i, i64 24
  %i.ao = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 24
  store i64 %i.am, ptr %i.ao, align 8, !tbaa !50
  store ptr %i.af, ptr %i.ac, align 8, !tbaa !73
  store i64 0, ptr %i.an, align 8, !tbaa !50
  store i8 0, ptr %i.af, align 8, !tbaa !52
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i, i64 48 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 48
  %.not.i.i.i.i = icmp eq ptr %i.ap, %i.aa
  br i1 %.not.i.i.i.i, label %_ZN4llvh23SmallVectorTemplateBaseINS_7SMFixItELb0EE18uninitialized_moveIPS1_S4_EEvT_S5_T0_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !149

_ZN4llvh23SmallVectorTemplateBaseINS_7SMFixItELb0EE18uninitialized_moveIPS1_S4_EEvT_S5_T0_.exit: ; preds = %_ZSt10_ConstructIN4llvh7SMFixItEJS1_EEvPT_DpOT0_.exit.i.i.i.i
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !80  ; 3 uses
  %.pre16 = load i32, ptr %i.x, align 8, !tbaa !81 ; 2 uses
  %.not4.i = icmp eq i32 %.pre16, 0
  br i1 %.not4.i, label %_ZN4llvh23SmallVectorTemplateBaseINS_7SMFixItELb0EE13destroy_rangeEPS1_S3_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN4llvh23SmallVectorTemplateBaseINS_7SMFixItELb0EE18uninitialized_moveIPS1_S4_EEvT_S5_T0_.exit
  %i.ar = zext i32 %.pre16 to i64
  %.idx14 = mul nuw nsw i64 %i.ar, 48
  %i.as = getelementptr inbounds nuw i8, ptr %.pre15, i64 %.idx14
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_ZN4llvh7SMFixItD2Ev.exit.i
  %.05.i = phi ptr [ %i.at, %_ZN4llvh7SMFixItD2Ev.exit.i ], [ %i.as, %.lr.ph.i.preheader ] ; 3 uses
  %i.at = getelementptr inbounds i8, ptr %.05.i, i64 -48 ; 2 uses
  %i.au = getelementptr inbounds i8, ptr %.05.i, i64 -32
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !73 ; 2 uses
  %i.aw = getelementptr inbounds i8, ptr %.05.i, i64 -16 ; 2 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %_ZN4llvh7SMFixItD2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %.lr.ph.i
  %i.ay = load i64, ptr %i.aw, align 8, !tbaa !52
  %i.az = add i64 %i.ay, 1
  tail call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.az) #17
  br label %_ZN4llvh7SMFixItD2Ev.exit.i

_ZN4llvh7SMFixItD2Ev.exit.i:                      ; preds = %.lr.ph.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %.not.i = icmp eq ptr %.pre15, %i.at
  br i1 %.not.i, label %_ZN4llvh23SmallVectorTemplateBaseINS_7SMFixItELb0EE13destroy_rangeEPS1_S3_.exit.loopexit, label %.lr.ph.i, !llvm.loop !146

_ZN4llvh23SmallVectorTemplateBaseINS_7SMFixItELb0EE13destroy_rangeEPS1_S3_.exit.loopexit: ; preds = %_ZN4llvh7SMFixItD2Ev.exit.i
  %.pre17 = load ptr, ptr %0, align 8, !tbaa !80
  br label %_ZN4llvh23SmallVectorTemplateBaseINS_7SMFixItELb0EE13destroy_rangeEPS1_S3_.exit

_ZN4llvh23SmallVectorTemplateBaseINS_7SMFixItELb0EE13destroy_rangeEPS1_S3_.exit: ; preds = %_ZN4llvh11safe_mallocEm.exit, %_ZN4llvh23SmallVectorTemplateBaseINS_7SMFixItELb0EE13destroy_rangeEPS1_S3_.exit.loopexit, %_ZN4llvh23SmallVectorTemplateBaseINS_7SMFixItELb0EE18uninitialized_moveIPS1_S4_EEvT_S5_T0_.exit
  %i.ba = phi ptr [ %.pre17, %_ZN4llvh23SmallVectorTemplateBaseINS_7SMFixItELb0EE13destroy_rangeEPS1_S3_.exit.loopexit ], [ %.pre15, %_ZN4llvh23SmallVectorTemplateBaseINS_7SMFixItELb0EE18uninitialized_moveIPS1_S4_EEvT_S5_T0_.exit ], [ %i.w, %_ZN4llvh11safe_mallocEm.exit ] ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bc = icmp eq ptr %i.ba, %i.bb
  br i1 %i.bc, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN4llvh23SmallVectorTemplateBaseINS_7SMFixItELb0EE13destroy_rangeEPS1_S3_.exit
  tail call void @free(ptr noundef %i.ba) #14
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN4llvh23SmallVectorTemplateBaseINS_7SMFixItELb0EE13destroy_rangeEPS1_S3_.exit
  store ptr %i.u, ptr %0, align 8, !tbaa !80
  %i.bd = trunc i64 %.sroa.speculated to i32
  store i32 %i.bd, ptr %i.a, align 4, !tbaa !82
  ret void
}

declare void @_ZN4llvh22report_bad_alloc_errorEPKcb(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #9

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh12SMDiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(360) dereferenceable(360) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !80   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.d = load i32, ptr %i.c, align 8, !tbaa !81   ; 2 uses
  %.not4.i.i = icmp eq i32 %i.d, 0
  br i1 %.not4.i.i, label %_ZN4llvh23SmallVectorTemplateBaseINS_7SMFixItELb0EE13destroy_rangeEPS1_S3_.exit.i, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %bb.a
  %i.e = zext i32 %i.d to i64
  %.idx.i = mul nuw nsw i64 %i.e, 48
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN4llvh7SMFixItD2Ev.exit.i.i, %.lr.ph.i.preheader.i
  %.05.i.i = phi ptr [ %i.g, %_ZN4llvh7SMFixItD2Ev.exit.i.i ], [ %i.f, %.lr.ph.i.preheader.i ] ; 3 uses
  %i.g = getelementptr inbounds i8, ptr %.05.i.i, i64 -48 ; 2 uses
  %i.h = getelementptr inbounds i8, ptr %.05.i.i, i64 -32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !73   ; 2 uses
  %i.j = getelementptr inbounds i8, ptr %.05.i.i, i64 -16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZN4llvh7SMFixItD2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.l = load i64, ptr %i.j, align 8, !tbaa !52
  %i.m = add i64 %i.l, 1
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #17
  br label %_ZN4llvh7SMFixItD2Ev.exit.i.i

_ZN4llvh7SMFixItD2Ev.exit.i.i:                    ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %.not.i.i = icmp eq ptr %i.b, %i.g
  br i1 %.not.i.i, label %_ZN4llvh23SmallVectorTemplateBaseINS_7SMFixItELb0EE13destroy_rangeEPS1_S3_.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !146

_ZN4llvh23SmallVectorTemplateBaseINS_7SMFixItELb0EE13destroy_rangeEPS1_S3_.exit.loopexit.i: ; preds = %_ZN4llvh7SMFixItD2Ev.exit.i.i
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !80
  br label %_ZN4llvh23SmallVectorTemplateBaseINS_7SMFixItELb0EE13destroy_rangeEPS1_S3_.exit.i

_ZN4llvh23SmallVectorTemplateBaseINS_7SMFixItELb0EE13destroy_rangeEPS1_S3_.exit.i: ; preds = %_ZN4llvh23SmallVectorTemplateBaseINS_7SMFixItELb0EE13destroy_rangeEPS1_S3_.exit.loopexit.i, %bb.a
  %i.n = phi ptr [ %.pre.i, %_ZN4llvh23SmallVectorTemplateBaseINS_7SMFixItELb0EE13destroy_rangeEPS1_S3_.exit.loopexit.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZN4llvh11SmallVectorINS_7SMFixItELj4EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZN4llvh23SmallVectorTemplateBaseINS_7SMFixItELb0EE13destroy_rangeEPS1_S3_.exit.i
  tail call void @free(ptr noundef %i.n) #14
  br label %_ZN4llvh11SmallVectorINS_7SMFixItELj4EED2Ev.exit

_ZN4llvh11SmallVectorINS_7SMFixItELj4EED2Ev.exit: ; preds = %_ZN4llvh23SmallVectorTemplateBaseINS_7SMFixItELb0EE13destroy_rangeEPS1_S3_.exit.i, %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !131  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvh11SmallVectorINS_7SMFixItELj4EED2Ev.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !132
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.r to i64
  %i.w = sub i64 %i.u, %i.v
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.w) #17
  br label %_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev.exit

_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev.exit:        ; preds = %_ZN4llvh11SmallVectorINS_7SMFixItELj4EED2Ev.exit, %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !73   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev.exit
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !52
  %i.ac = add i64 %i.ab, 1
  tail call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorISt4pairIjjESaIS1_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !73 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !52
  %i.ai = add i64 %i.ah, 1
  tail call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ai) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !73 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3
end_hunk_0
