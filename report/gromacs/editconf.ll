inline.NumInlined: 264
inline.NumDeleted: 119
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_ZNSt10filesystem7__cxx114pathD2Ev:bb.a
  %i.g = add i64 %i.f, 1
  tail call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

declare void @_Z11open_symtabP8t_symtab(ptr noundef) local_unnamed_addr #3

declare void @_Z16readConfAndAtomsRKNSt10filesystem7__cxx114pathEP8t_symtabPPcP7t_atomsP7PbcTypePPA3_fSE_SD_(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt10filesystem7__cxx114pathC2IPKcS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef zeroext %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !33     ; 3 uses
  %i.c = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #20 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.d, ptr %0, align 8, !tbaa !73
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 %i.c, ptr %i.a, align 8, !tbaa !74
  %i.e = icmp ugt i64 %i.c, 15
  br i1 %i.e, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.a
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !37
  %i.g = load i64, ptr %i.a, align 8, !tbaa !74
  store i64 %i.g, ptr %i.d, align 8, !tbaa !34
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i.i.i, %bb.a
  %i.h = phi ptr [ %i.f, %.noexc.i.i.i ], [ %i.d, %bb.a ] ; 2 uses
  switch i64 %i.c, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i.i
  %i.i = load i8, ptr %i.b, align 1, !tbaa !34
  store i8 %i.i, ptr %i.h, align 1, !tbaa !34
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %i.b, i64 %i.c, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !74   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !75
  %i.l = load ptr, ptr %0, align 8, !tbaa !37
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  invoke void @_ZNSt10filesystem7__cxx114path5_ListC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.n)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  invoke void @_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  ret void

bb.g:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

bb.h:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !35   ; 2 uses
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull %i.q) #20
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit:    ; preds = %bb.i, %bb.h, %bb.g
  %.pn = phi { ptr, i32 } [ %i.o, %bb.g ], [ %i.p, %bb.h ], [ %i.p, %bb.i ]
  %i.r = load ptr, ptr %0, align 8, !tbaa !37     ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.d
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit
  %i.t = load i64, ptr %i.d, align 8, !tbaa !34
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.u) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %.pn
}

declare void @_Z18get_pdb_atomnumberPK7t_atomsP14AtomProperties(ptr noundef, ptr noundef) local_unnamed_addr #3

declare noundef ptr @_Z8read_topRKNSt10filesystem7__cxx114pathEP7PbcType(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) local_unnamed_addr #3

declare noundef zeroext i1 @_ZN14AtomProperties15setAtomPropertyEiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_Pf(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #3

declare void @_Z9rm_gropbcPK7t_atomsPA3_fPA3_Kf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @_Z9get_indexPK7t_atomsRKSt8optionalINSt10filesystem7__cxx114pathEEiPiPS9_PPc(ptr noundef, ptr noundef nonnull align 8 dereferenceable(48), i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @_Z17ftp2path_optionalB5cxx11iiPK8t_filenm(ptr dead_on_unwind writable sret(%"class.std::optional") align 8, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt14_Optional_baseINSt10filesystem7__cxx114pathELb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !99, !range !29, !noundef !32
  %i.c = trunc nuw i8 %i.b to i1
  store i8 0, ptr %i.a, align 8, !tbaa !99
  br i1 %i.c, label %bb.b, label %_ZNSt17_Optional_payloadINSt10filesystem7__cxx114pathELb0ELb0ELb0EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !35   ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull %i.e) #20
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i.i.i

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i.i.i: ; preds = %bb.c, %bb.b
  %i.f = load ptr, ptr %0, align 8, !tbaa !37     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt17_Optional_payloadINSt10filesystem7__cxx114pathELb0ELb0ELb0EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i.i.i
  %i.i = load i64, ptr %i.g, align 8, !tbaa !34
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #23
  br label %_ZNSt17_Optional_payloadINSt10filesystem7__cxx114pathELb0ELb0ELb0EED2Ev.exit

_ZNSt17_Optional_payloadINSt10filesystem7__cxx114pathELb0ELb0ELb0EED2Ev.exit: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i.i.i, %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable
define internal fastcc noundef float @_ZL9calc_geomiPKiPA3_fPfS3_S3_b(i32 noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef nonnull captures(none) initializes((0, 12)) %3, ptr nofree noundef nonnull captures(none) initializes((0, 12)) %4, ptr nofree noundef nonnull captures(none) initializes((0, 12)) %5, i1 noundef zeroext %6) unnamed_addr #8 {
bb.a:
  store <2 x float> zeroinitializer, ptr %3, align 4, !tbaa !53
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 9 uses
  store float 0.000000e+00, ptr %i.a, align 4, !tbaa !53
  %i.b = icmp eq i32 %0, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store <2 x float> zeroinitializer, ptr %4, align 4, !tbaa !53
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  store float 0.000000e+00, ptr %i.c, align 4, !tbaa !53
  store <2 x float> zeroinitializer, ptr %5, align 4, !tbaa !53
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8
  store float 0.000000e+00, ptr %i.d, align 4, !tbaa !53
  br label %bb.aq

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq ptr %1, null                    ; 4 uses
  br i1 %.not, label %.preheader90, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = load i32, ptr %1, align 4, !tbaa !9
  %i.f = sext i32 %i.e to i64
  br label %.preheader90

.preheader90:                                     ; preds = %bb.c, %bb.d
  %.069 = phi i64 [ %i.f, %bb.d ], [ 0, %bb.c ]
  %i.g = getelementptr inbounds [12 x i8], ptr %2, i64 %.069 ; 3 uses
  %i.h = load float, ptr %i.g, align 4, !tbaa !53 ; 2 uses
  store float %i.h, ptr %5, align 4, !tbaa !53
  store float %i.h, ptr %4, align 4, !tbaa !53
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.j = load float, ptr %i.i, align 4, !tbaa !53 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 7 uses
  store float %i.j, ptr %i.k, align 4, !tbaa !53
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 7 uses
  store float %i.j, ptr %i.l, align 4, !tbaa !53
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.n = load float, ptr %i.m, align 4, !tbaa !53 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 7 uses
  store float %i.n, ptr %i.o, align 4, !tbaa !53
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 7 uses
  store float %i.n, ptr %i.p, align 4, !tbaa !53
  %i.q = icmp sgt i32 %0, 0
  br i1 %i.q, label %.lr.ph104, label %._crit_edge

.lr.ph104:                                        ; preds = %.preheader90
  %i.r = zext nneg i32 %0 to i64                  ; 5 uses
  br i1 %6, label %.lr.ph104.split.us.preheader, label %.lr.ph104.split

.lr.ph104.split.us.preheader:                     ; preds = %.lr.ph104
  %wide.trip.count147 = zext nneg i32 %0 to i64   ; 3 uses
  %7 = add nsw i64 %i.r, -1                       ; 2 uses
  %i.s = add nsw i64 %i.r, -2                     ; 2 uses
  br label %.lr.ph104.split.us

.lr.ph104.split.us:                               ; preds = %.lr.ph104.split.us.preheader, %.loopexit.us
  %indvars.iv142 = phi i64 [ 0, %.lr.ph104.split.us.preheader ], [ %i.ax, %.loopexit.us ] ; 8 uses
  %indvars.iv130 = phi i64 [ 1, %.lr.ph104.split.us.preheader ], [ %indvars.iv.next131, %.loopexit.us ] ; 7 uses
  %.084101.us = phi float [ 0.000000e+00, %.lr.ph104.split.us.preheader ], [ %.387.us, %.loopexit.us ] ; 8 uses
  %8 = sub i64 %7, %indvars.iv142
  %9 = sub i64 %7, %indvars.iv142
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph104.split.us
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv142
  %i.u = load i32, ptr %i.t, align 4, !tbaa !9
  %i.v = sext i32 %i.u to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph104.split.us
  %.170.us = phi i64 [ %i.v, %bb.e ], [ %indvars.iv142, %.lr.ph104.split.us ]
  %i.w = getelementptr inbounds [12 x i8], ptr %2, i64 %.170.us ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 4 ; 2 uses
  %i.y = load float, ptr %i.a, align 4, !tbaa !53
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 4 uses
  %i.aa = load float, ptr %i.z, align 4, !tbaa !53
  %i.ab = fadd float %i.y, %i.aa
  %i.ac = load <2 x float>, ptr %3, align 4, !tbaa !53
  %i.ad = load <2 x float>, ptr %i.w, align 4, !tbaa !53
  %i.ae = fadd <2 x float> %i.ac, %i.ad
  store <2 x float> %i.ae, ptr %3, align 4, !tbaa !53
  store float %i.ab, ptr %i.a, align 4, !tbaa !53
  %i.af = load float, ptr %i.w, align 4, !tbaa !53 ; 3 uses
  %i.ag = load float, ptr %4, align 4, !tbaa !53
  %i.ah = fcmp olt float %i.af, %i.ag
  br i1 %i.ah, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store float %i.af, ptr %4, align 4, !tbaa !53
  %.pre154 = load float, ptr %i.w, align 4, !tbaa !53
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ai = phi float [ %.pre154, %bb.g ], [ %i.af, %bb.f ] ; 2 uses
  %i.aj = load float, ptr %5, align 4, !tbaa !53
  %i.ak = fcmp ogt float %i.ai, %i.aj
  br i1 %i.ak, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store float %i.ai, ptr %5, align 4, !tbaa !53
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.al = load float, ptr %i.x, align 4, !tbaa !53 ; 3 uses
  %i.am = load float, ptr %i.l, align 4, !tbaa !53
  %i.an = fcmp olt float %i.al, %i.am
  br i1 %i.an, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store float %i.al, ptr %i.l, align 4, !tbaa !53
  %.pre155 = load float, ptr %i.x, align 4, !tbaa !53
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ao = phi float [ %.pre155, %bb.k ], [ %i.al, %bb.j ] ; 2 uses
  %i.ap = load float, ptr %i.k, align 4, !tbaa !53
  %i.aq = fcmp ogt float %i.ao, %i.ap
  br i1 %i.aq, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store float %i.ao, ptr %i.k, align 4, !tbaa !53
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ar = load float, ptr %i.z, align 4, !tbaa !53 ; 3 uses
  %i.as = load float, ptr %i.p, align 4, !tbaa !53
  %i.at = fcmp olt float %i.ar, %i.as
  br i1 %i.at, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store float %i.ar, ptr %i.p, align 4, !tbaa !53
  %.pre156 = load float, ptr %i.z, align 4, !tbaa !53
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.au = phi float [ %.pre156, %bb.o ], [ %i.ar, %bb.n ] ; 2 uses
  %i.av = load float, ptr %i.o, align 4, !tbaa !53
  %i.aw = fcmp ogt float %i.au, %i.av
  br i1 %i.aw, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store float %i.au, ptr %i.o, align 4, !tbaa !53
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.ax = add nuw nsw i64 %indvars.iv142, 1       ; 3 uses
  %i.ay = icmp samesign ult i64 %i.ax, %i.r       ; 2 uses
  br i1 %.not, label %.preheader.us, label %.preheader88.us

.lr.ph.us.new:                                    ; preds = %.prol.loopexit, %.lr.ph.us.new
  %indvars.iv132 = phi i64 [ %indvars.iv.next133.1, %.lr.ph.us.new ], [ %indvars.iv132.unr, %.prol.loopexit ] ; 3 uses
  %.18594.us = phi float [ %.sroa.speculated81.us.1, %.lr.ph.us.new ], [ %.18594.us.unr, %.prol.loopexit ] ; 2 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv132
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !9
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr inbounds [12 x i8], ptr %2, i64 %i.bb ; 2 uses
  %i.bd = load <2 x float>, ptr %i.bc, align 4, !tbaa !53
  %i.be = fsub <2 x float> %i.bd, %i.cz           ; 2 uses
  %i.bf = fmul <2 x float> %i.be, %i.be           ; 2 uses
  %shift = shufflevector <2 x float> %i.bf, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.bf, %shift
  %i.bg = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !53
  %i.bj = fsub float %i.bi, %i.da                 ; 2 uses
  %i.bk = fmul float %i.bj, %i.bj
  %i.bl = fadd float %i.bg, %i.bk                 ; 2 uses
  %i.bm = fcmp olt float %i.bl, %.18594.us
  %.sroa.speculated81.us = select i1 %i.bm, float %.18594.us, float %i.bl ; 2 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv132
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !9
  %i.bq = sext i32 %i.bp to i64
  %i.br = getelementptr inbounds [12 x i8], ptr %2, i64 %i.bq ; 2 uses
  %i.bs = load <2 x float>, ptr %i.br, align 4, !tbaa !53
  %i.bt = fsub <2 x float> %i.bs, %i.cz           ; 2 uses
  %i.bu = fmul <2 x float> %i.bt, %i.bt           ; 2 uses
  %shift.1 = shufflevector <2 x float> %i.bu, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop.1 = fadd <2 x float> %i.bu, %shift.1
  %i.bv = extractelement <2 x float> %foldExtExtBinop.1, i64 0
  %i.bw = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !53
  %i.by = fsub float %i.bx, %i.da                 ; 2 uses
  %i.bz = fmul float %i.by, %i.by
  %i.ca = fadd float %i.bv, %i.bz                 ; 2 uses
  %i.cb = fcmp olt float %i.ca, %.sroa.speculated81.us
  %.sroa.speculated81.us.1 = select i1 %i.cb, float %.sroa.speculated81.us, float %i.ca ; 2 uses
  %indvars.iv.next133.1 = add nuw nsw i64 %indvars.iv132, 2 ; 2 uses
  %exitcond136.not.1 = icmp eq i64 %indvars.iv.next133.1, %wide.trip.count147
  br i1 %exitcond136.not.1, label %.loopexit.us, label %.lr.ph.us.new, !llvm.loop !171

.lr.ph99.us.new:                                  ; preds = %.prol.loopexit203, %.lr.ph99.us.new
  %indvars.iv137 = phi i64 [ %indvars.iv.next138.1, %.lr.ph99.us.new ], [ %indvars.iv137.unr, %.prol.loopexit203 ] ; 3 uses
  %.28697.us = phi float [ %.sroa.speculated.us.1, %.lr.ph99.us.new ], [ %.28697.us.unr, %.prol.loopexit203 ] ; 2 uses
  %i.cc = getelementptr inbounds nuw [12 x i8], ptr %2, i64 %indvars.iv137 ; 2 uses
  %i.cd = load <2 x float>, ptr %i.cc, align 4, !tbaa !53
  %i.ce = fsub <2 x float> %i.cd, %i.dr           ; 2 uses
  %i.cf = fmul <2 x float> %i.ce, %i.ce           ; 2 uses
  %shift196 = shufflevector <2 x float> %i.cf, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop197 = fadd <2 x float> %i.cf, %shift196
  %i.cg = extractelement <2 x float> %foldExtExtBinop197, i64 0
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !53
  %i.cj = fsub float %i.ci, %i.dt                 ; 2 uses
  %i.ck = fmul float %i.cj, %i.cj
  %i.cl = fadd float %i.cg, %i.ck                 ; 2 uses
  %i.cm = fcmp olt float %i.cl, %.28697.us
  %.sroa.speculated.us = select i1 %i.cm, float %.28697.us, float %i.cl ; 2 uses
  %i.cn = getelementptr inbounds nuw [12 x i8], ptr %2, i64 %indvars.iv137 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 12
  %i.cp = load <2 x float>, ptr %i.co, align 4, !tbaa !53
  %i.cq = fsub <2 x float> %i.cp, %i.dr           ; 2 uses
  %i.cr = fmul <2 x float> %i.cq, %i.cq           ; 2 uses
  %shift196.1 = shufflevector <2 x float> %i.cr, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop197.1 = fadd <2 x float> %i.cr, %shift196.1
  %i.cs = extractelement <2 x float> %foldExtExtBinop197.1, i64 0
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cn, i64 20
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !53
  %i.cv = fsub float %i.cu, %i.dt                 ; 2 uses
  %i.cw = fmul float %i.cv, %i.cv
  %i.cx = fadd float %i.cs, %i.cw                 ; 2 uses
  %i.cy = fcmp olt float %i.cx, %.sroa.speculated.us
  %.sroa.speculated.us.1 = select i1 %i.cy, float %.sroa.speculated.us, float %i.cx ; 2 uses
  %indvars.iv.next138.1 = add nuw nsw i64 %indvars.iv137, 2 ; 2 uses
  %exitcond141.not.1 = icmp eq i64 %indvars.iv.next138.1, %wide.trip.count147
  br i1 %exitcond141.not.1, label %.loopexit.us, label %.lr.ph99.us.new, !llvm.loop !172

.loopexit.us:                                     ; preds = %.prol.loopexit, %.lr.ph.us.new, %.prol.loopexit203, %.lr.ph99.us.new, %.preheader88.us, %.preheader.us
  %.387.us = phi float [ %.sroa.speculated.us.1, %.lr.ph99.us.new ], [ %.084101.us, %.preheader.us ], [ %.084101.us, %.preheader88.us ], [ %.sroa.speculated.us.lcssa.unr, %.prol.loopexit203 ], [ %.sroa.speculated81.us.lcssa.unr, %.prol.loopexit ], [ %.sroa.speculated81.us.1, %.lr.ph.us.new ] ; 2 uses
  %indvars.iv.next131 = add nuw nsw i64 %indvars.iv130, 1
  %exitcond148.not = icmp eq i64 %i.ax, %wide.trip.count147
  br i1 %exitcond148.not, label %._crit_edge, label %.lr.ph104.split.us, !llvm.loop !173

.preheader.us:                                    ; preds = %bb.r
  br i1 %i.ay, label %.lr.ph99.us, label %.loopexit.us

.preheader88.us:                                  ; preds = %bb.r
  br i1 %i.ay, label %.lr.ph.us, label %.loopexit.us

.lr.ph.us:                                        ; preds = %.preheader88.us
  %i.cz = load <2 x float>, ptr %i.w, align 4, !tbaa !53 ; 3 uses
  %i.da = load float, ptr %i.z, align 4, !tbaa !53 ; 3 uses
  %xtraiter = and i64 %9, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph.us
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv130
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !9
  %i.dd = sext i32 %i.dc to i64
  %i.de = getelementptr inbounds [12 x i8], ptr %2, i64 %i.dd ; 2 uses
  %i.df = load <2 x float>, ptr %i.de, align 4, !tbaa !53
  %i.dg = fsub <2 x float> %i.df, %i.cz           ; 2 uses
  %i.dh = fmul <2 x float> %i.dg, %i.dg           ; 2 uses
  %shift.prol = shufflevector <2 x float> %i.dh, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop.prol = fadd <2 x float> %i.dh, %shift.prol
  %i.di = extractelement <2 x float> %foldExtExtBinop.prol, i64 0
  %i.dj = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !53
  %i.dl = fsub float %i.dk, %i.da                 ; 2 uses
  %i.dm = fmul float %i.dl, %i.dl
  %i.dn = fadd float %i.di, %i.dm                 ; 2 uses
  %i.do = fcmp olt float %i.dn, %.084101.us
  %.sroa.speculated81.us.prol = select i1 %i.do, float %.084101.us, float %i.dn ; 2 uses
  %indvars.iv.next133.prol = add nuw nsw i64 %indvars.iv130, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph.us
  %.sroa.speculated81.us.lcssa.unr = phi float [ poison, %.lr.ph.us ], [ %.sroa.speculated81.us.prol, %.prol.loopexit.unr-lcssa ]
  %indvars.iv132.unr = phi i64 [ %indvars.iv130, %.lr.ph.us ], [ %indvars.iv.next133.prol, %.prol.loopexit.unr-lcssa ]
  %.18594.us.unr = phi float [ %.084101.us, %.lr.ph.us ], [ %.sroa.speculated81.us.prol, %.prol.loopexit.unr-lcssa ]
  %i.dp = icmp eq i64 %i.s, %indvars.iv142
  br i1 %i.dp, label %.loopexit.us, label %.lr.ph.us.new

.lr.ph99.us:                                      ; preds = %.preheader.us
  %i.dq = getelementptr inbounds nuw [12 x i8], ptr %2, i64 %indvars.iv142 ; 2 uses
  %i.dr = load <2 x float>, ptr %i.dq, align 4, !tbaa !53 ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %i.dt = load float, ptr %i.ds, align 4, !tbaa !53 ; 3 uses
  %xtraiter204 = and i64 %8, 1
  %lcmp.mod205.not = icmp eq i64 %xtraiter204, 0
  br i1 %lcmp.mod205.not, label %.prol.loopexit203, label %.prol.loopexit203.unr-lcssa

.prol.loopexit203.unr-lcssa:                      ; preds = %.lr.ph99.us
  %i.du = getelementptr inbounds nuw [12 x i8], ptr %2, i64 %indvars.iv130 ; 2 uses
  %i.dv = load <2 x float>, ptr %i.du, align 4, !tbaa !53
  %i.dw = fsub <2 x float> %i.dv, %i.dr           ; 2 uses
  %i.dx = fmul <2 x float> %i.dw, %i.dw           ; 2 uses
  %shift196.prol = shufflevector <2 x float> %i.dx, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop197.prol = fadd <2 x float> %i.dx, %shift196.prol
  %i.dy = extractelement <2 x float> %foldExtExtBinop197.prol, i64 0
  %i.dz = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %i.ea = load float, ptr %i.dz, align 4, !tbaa !53
  %i.eb = fsub float %i.ea, %i.dt                 ; 2 uses
  %i.ec = fmul float %i.eb, %i.eb
  %i.ed = fadd float %i.dy, %i.ec                 ; 2 uses
  %i.ee = fcmp olt float %i.ed, %.084101.us
  %.sroa.speculated.us.prol = select i1 %i.ee, float %.084101.us, float %i.ed ; 2 uses
  %indvars.iv.next138.prol = add nuw nsw i64 %indvars.iv130, 1
  br label %.prol.loopexit203

.prol.loopexit203:                                ; preds = %.prol.loopexit203.unr-lcssa, %.lr.ph99.us
  %.sroa.speculated.us.lcssa.unr = phi float [ poison, %.lr.ph99.us ], [ %.sroa.speculated.us.prol, %.prol.loopexit203.unr-lcssa ]
  %indvars.iv137.unr = phi i64 [ %indvars.iv130, %.lr.ph99.us ], [ %indvars.iv.next138.prol, %.prol.loopexit203.unr-lcssa ]
  %.28697.us.unr = phi float [ %.084101.us, %.lr.ph99.us ], [ %.sroa.speculated.us.prol, %.prol.loopexit203.unr-lcssa ]
  %i.ef = icmp eq i64 %i.s, %indvars.iv142
  br i1 %i.ef, label %.loopexit.us, label %.lr.ph99.us.new

.lr.ph104.split:                                  ; preds = %.lr.ph104
  br i1 %.not, label %.lr.ph104.split.split.us, label %.lr.ph104.split.split

.lr.ph104.split.split.us:                         ; preds = %.lr.ph104.split, %bb.ad
  %indvars.iv121 = phi i64 [ %indvars.iv.next122, %bb.ad ], [ 0, %.lr.ph104.split ] ; 2 uses
  %i.eg = getelementptr inbounds nuw [12 x i8], ptr %2, i64 %indvars.iv121 ; 5 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 4 ; 2 uses
  %i.ei = load float, ptr %i.a, align 4, !tbaa !53
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eg, i64 8 ; 3 uses
  %i.ek = load float, ptr %i.ej, align 4, !tbaa !53
  %i.el = fadd float %i.ei, %i.ek
  %i.em = load <2 x float>, ptr %3, align 4, !tbaa !53
  %i.en = load <2 x float>, ptr %i.eg, align 4, !tbaa !53
  %i.eo = fadd <2 x float> %i.em, %i.en
  store <2 x float> %i.eo, ptr %3, align 4, !tbaa !53
  store float %i.el, ptr %i.a, align 4, !tbaa !53
  %i.ep = load float, ptr %i.eg, align 4, !tbaa !53 ; 3 uses
  %i.eq = load float, ptr %4, align 4, !tbaa !53
  %i.er = fcmp olt float %i.ep, %i.eq
  br i1 %i.er, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.lr.ph104.split.split.us
  store float %i.ep, ptr %4, align 4, !tbaa !53
  %.pre151 = load float, ptr %i.eg, align 4, !tbaa !53
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.lr.ph104.split.split.us
  %i.es = phi float [ %.pre151, %bb.s ], [ %i.ep, %.lr.ph104.split.split.us ] ; 2 uses
  %i.et = load float, ptr %5, align 4, !tbaa !53
  %i.eu = fcmp ogt float %i.es, %i.et
  br i1 %i.eu, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store float %i.es, ptr %5, align 4, !tbaa !53
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.ev = load float, ptr %i.eh, align 4, !tbaa !53 ; 3 uses
  %i.ew = load float, ptr %i.l, align 4, !tbaa !53
  %i.ex = fcmp olt float %i.ev, %i.ew
  br i1 %i.ex, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store float %i.ev, ptr %i.l, align 4, !tbaa !53
  %.pre152 = load float, ptr %i.eh, align 4, !tbaa !53
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.ey = phi float [ %.pre152, %bb.w ], [ %i.ev, %bb.v ] ; 2 uses
  %i.ez = load float, ptr %i.k, align 4, !tbaa !53
  %i.fa = fcmp ogt float %i.ey, %i.ez
  br i1 %i.fa, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  store float %i.ey, ptr %i.k, align 4, !tbaa !53
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.fb = load float, ptr %i.ej, align 4, !tbaa !53 ; 3 uses
  %i.fc = load float, ptr %i.p, align 4, !tbaa !53
  %i.fd = fcmp olt float %i.fb, %i.fc
  br i1 %i.fd, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store float %i.fb, ptr %i.p, align 4, !tbaa !53
  %.pre153 = load float, ptr %i.ej, align 4, !tbaa !53
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.fe = phi float [ %.pre153, %bb.aa ], [ %i.fb, %bb.z ] ; 2 uses
  %i.ff = load float, ptr %i.o, align 4, !tbaa !53
  %i.fg = fcmp ogt float %i.fe, %i.ff
  br i1 %i.fg, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  store float %i.fe, ptr %i.o, align 4, !tbaa !53
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %indvars.iv.next122 = add nuw nsw i64 %indvars.iv121, 1 ; 2 uses
  %exitcond125.not = icmp eq i64 %indvars.iv.next122, %i.r
  br i1 %exitcond125.not, label %._crit_edge, label %.lr.ph104.split.split.us, !llvm.loop !173

.lr.ph104.split.split:                            ; preds = %.lr.ph104.split, %bb.ap
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.ap ], [ 0, %.lr.ph104.split ] ; 2 uses
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !9
  %i.fj = sext i32 %i.fi to i64
  %i.fk = getelementptr inbounds [12 x i8], ptr %2, i64 %i.fj ; 5 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 4 ; 2 uses
  %i.fm = load float, ptr %i.a, align 4, !tbaa !53
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fk, i64 8 ; 3 uses
  %i.fo = load float, ptr %i.fn, align 4, !tbaa !53
  %i.fp = fadd float %i.fm, %i.fo
  %i.fq = load <2 x float>, ptr %3, align 4, !tbaa !53
  %i.fr = load <2 x float>, ptr %i.fk, align 4, !tbaa !53
  %i.fs = fadd <2 x float> %i.fq, %i.fr
  store <2 x float> %i.fs, ptr %3, align 4, !tbaa !53
  store float %i.fp, ptr %i.a, align 4, !tbaa !53
  %i.ft = load float, ptr %i.fk, align 4, !tbaa !53 ; 3 uses
  %i.fu = load float, ptr %4, align 4, !tbaa !53
  %i.fv = fcmp olt float %i.ft, %i.fu
  br i1 %i.fv, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %.lr.ph104.split.split
  store float %i.ft, ptr %4, align 4, !tbaa !53
  %.pre = load float, ptr %i.fk, align 4, !tbaa !53
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %.lr.ph104.split.split
  %i.fw = phi float [ %.pre, %bb.ae ], [ %i.ft, %.lr.ph104.split.split ] ; 2 uses
  %i.fx = load float, ptr %5, align 4, !tbaa !53
  %i.fy = fcmp ogt float %i.fw, %i.fx
  br i1 %i.fy, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  store float %i.fw, ptr %5, align 4, !tbaa !53
  br label %bb.ah

bb.ah:                                            ; preds = %bb.af, %bb.ag
  %i.fz = load float, ptr %i.fl, align 4, !tbaa !53 ; 3 uses
  %i.ga = load float, ptr %i.l, align 4, !tbaa !53
  %i.gb = fcmp olt float %i.fz, %i.ga
  br i1 %i.gb, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  store float %i.fz, ptr %i.l, align 4, !tbaa !53
  %.pre149 = load float, ptr %i.fl, align 4, !tbaa !53
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.gc = phi float [ %.pre149, %bb.ai ], [ %i.fz, %bb.ah ] ; 2 uses
  %i.gd = load float, ptr %i.k, align 4, !tbaa !53
  %i.ge = fcmp ogt float %i.gc, %i.gd
  br i1 %i.ge, label %bb.ak, label %bb.al
end_hunk_0
