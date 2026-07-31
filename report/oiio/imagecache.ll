inline.NumInlined: 13633
inline.NumDeleted: 4657
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 69
loop-unroll.NumUnrolled: 85
begin_hunk_0_@_ZN11OpenImageIO4v3_17is_sameERKNS0_9ImageSpecES3_:bb.a
  %.unshifted = xor i64 %.sroa.0.0.copyload.i78, %.sroa.0.0.copyload.i77
  %i.gq = icmp ugt i64 %.unshifted, 4294967295
  %or.cond96 = or i1 %or.cond95, %i.gq
  %i.gr = lshr i64 %.sroa.0.0.copyload.i77, 32
  %i.gs = trunc nuw i64 %i.gr to i32
  %i.gt = lshr i64 %.sroa.0.0.copyload.i77, 8
  br i1 %or.cond96, label %_ZN11OpenImageIO4v3_119has_same_dimensionsINS0_9ImageSpecEEEbRKT_S5_.exit.thread, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.gu = getelementptr inbounds nuw i8, ptr %i.ge, i64 32 ; 2 uses
  %i.gv = load i32, ptr %i.gu, align 8, !tbaa !390 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gl, i64 32 ; 2 uses
  %i.gx = load i32, ptr %i.gw, align 8, !tbaa !390
  %.not64 = icmp eq i32 %i.gv, %i.gx
  br i1 %.not64, label %bb.af, label %_ZN11OpenImageIO4v3_119has_same_dimensionsINS0_9ImageSpecEEEbRKT_S5_.exit.thread

bb.af:                                            ; preds = %bb.ae
  %narrow.i.i = tail call i32 @llvm.smax.i32(i32 %i.gs, i32 1)
  %i.gy = and i64 %i.gt, 255
  %i.gz = tail call noundef i64 @_ZNK11OpenImageIO4v3_18TypeDesc8basesizeEv(ptr noundef nonnull align 4 dereferenceable(8) %i.gm) #5
  %i.ha = mul i64 %i.gz, %i.gy
  %i.hb = trunc i64 %i.ha to i32
  %i.hc = mul i32 %narrow.i.i, %i.gv
  %i.hd = mul i32 %i.hc, %i.hb
  %i.he = load i32, ptr %i.gw, align 8, !tbaa !390
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gl, i64 12
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !357
  %narrow.i.i80 = tail call i32 @llvm.smax.i32(i32 %i.hg, i32 1)
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gl, i64 9
  %i.hi = load i8, ptr %i.hh, align 1, !tbaa !377
  %i.hj = zext i8 %i.hi to i64
  %i.hk = tail call noundef i64 @_ZNK11OpenImageIO4v3_18TypeDesc8basesizeEv(ptr noundef nonnull align 4 dereferenceable(8) %i.gn) #5
  %i.hl = mul i64 %i.hk, %i.hj
  %i.hm = trunc i64 %i.hl to i32
  %i.hn = mul i32 %narrow.i.i80, %i.he
  %i.ho = mul i32 %i.hn, %i.hm
  %.not65 = icmp eq i32 %i.hd, %i.ho
  br i1 %.not65, label %bb.ag, label %_ZN11OpenImageIO4v3_119has_same_dimensionsINS0_9ImageSpecEEEbRKT_S5_.exit.thread

bb.ag:                                            ; preds = %bb.af
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ge, i64 9
  %i.hq = getelementptr inbounds nuw i8, ptr %i.ge, i64 12
  %i.hr = getelementptr inbounds nuw i8, ptr %i.ge, i64 38
  %i.hs = load i8, ptr %i.hr, align 2, !tbaa !366, !range !368, !noundef !290
  %i.ht = trunc nuw i8 %i.hs to i1
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ge, i64 16 ; 2 uses
  %i.hv = load ptr, ptr %i.hu, align 8
  %i.hw = select i1 %i.ht, ptr %i.hv, ptr %i.hu
  %i.hx = getelementptr inbounds nuw i8, ptr %i.gl, i64 38
  %i.hy = load i8, ptr %i.hx, align 2, !tbaa !366, !range !368, !noundef !290
  %i.hz = trunc nuw i8 %i.hy to i1
  %i.ia = getelementptr inbounds nuw i8, ptr %i.gl, i64 16 ; 2 uses
  %i.ib = load ptr, ptr %i.ia, align 8
  %i.ic = select i1 %i.hz, ptr %i.ib, ptr %i.ia
  %i.id = load i32, ptr %i.gu, align 8, !tbaa !390
  %i.ie = load i32, ptr %i.hq, align 4, !tbaa !357
  %narrow.i.i81 = tail call i32 @llvm.smax.i32(i32 %i.ie, i32 1)
  %i.if = load i8, ptr %i.hp, align 1, !tbaa !377
  %i.ig = zext i8 %i.if to i64
  %i.ih = tail call noundef i64 @_ZNK11OpenImageIO4v3_18TypeDesc8basesizeEv(ptr noundef nonnull align 4 dereferenceable(8) %i.gm) #5
  %i.ii = mul i64 %i.ih, %i.ig
  %i.ij = trunc i64 %i.ii to i32
  %i.ik = mul i32 %narrow.i.i81, %i.id
  %i.il = mul i32 %i.ik, %i.ij
  %i.im = sext i32 %i.il to i64
  %bcmp = tail call i32 @bcmp(ptr %i.hw, ptr %i.ic, i64 %i.im)
  %.not66 = icmp eq i32 %bcmp, 0
  br i1 %.not66, label %bb.ah, label %_ZN11OpenImageIO4v3_119has_same_dimensionsINS0_9ImageSpecEEEbRKT_S5_.exit.thread

bb.ah:                                            ; preds = %bb.ag
  %i.in = add nuw i64 %.053112, 1                 ; 2 uses
  %i.io = load ptr, ptr %i.ek, align 8, !tbaa !386
  %i.ip = load ptr, ptr %i.ej, align 8, !tbaa !387 ; 2 uses
  %i.iq = ptrtoint ptr %i.io to i64
  %i.ir = ptrtoint ptr %i.ip to i64
  %i.is = sub i64 %i.iq, %i.ir
  %i.it = sdiv exact i64 %i.is, 40
  %.not124 = icmp ult i64 %i.in, %i.it
  br i1 %.not124, label %_ZNKSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EE2atEm.exit, label %_ZN11OpenImageIO4v3_119has_same_dimensionsINS0_9ImageSpecEEEbRKT_S5_.exit.thread, !llvm.loop !391

_ZN11OpenImageIO4v3_119has_same_dimensionsINS0_9ImageSpecEEEbRKT_S5_.exit.thread: ; preds = %_ZNKSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE2atEm.exit, %bb.z, %bb.aa, %_ZNK11OpenImageIO4v3_18TypeDescneERKS1_.exit69, %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE2atEm.exit, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, %bb.ad, %bb.af, %_ZNKSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EE2atEm.exit75, %bb.ae, %bb.ah, %bb.ag, %.preheader, %bb.s, %bb.t, %bb.u, %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.x, %bb.w, %bb.v, %_ZNK11OpenImageIO4v3_18TypeDescneERKS1_.exit, %bb.r, %bb.q, %bb.p, %_ZN11OpenImageIO4v3_119has_same_dimensionsINS0_9ImageSpecEEEbRKT_S5_.exit
  %.5 = phi i1 [ false, %_ZN11OpenImageIO4v3_119has_same_dimensionsINS0_9ImageSpecEEEbRKT_S5_.exit ], [ false, %bb.p ], [ false, %bb.q ], [ false, %bb.r ], [ false, %_ZNK11OpenImageIO4v3_18TypeDescneERKS1_.exit ], [ false, %bb.v ], [ false, %bb.w ], [ false, %bb.x ], [ false, %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE2atEm.exit ], [ true, %.preheader ], [ false, %bb.s ], [ false, %bb.a ], [ false, %bb.o ], [ false, %bb.n ], [ false, %bb.m ], [ false, %bb.l ], [ false, %bb.k ], [ false, %bb.j ], [ false, %bb.i ], [ false, %bb.h ], [ false, %bb.g ], [ false, %bb.f ], [ false, %bb.e ], [ false, %bb.d ], [ false, %bb.c ], [ false, %bb.b ], [ false, %bb.u ], [ false, %bb.t ], [ false, %bb.ag ], [ true, %bb.ah ], [ false, %bb.ae ], [ false, %_ZNKSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EE2atEm.exit75 ], [ false, %bb.af ], [ false, %bb.ad ], [ false, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit ], [ false, %_ZNK11OpenImageIO4v3_18TypeDescneERKS1_.exit69 ], [ false, %bb.aa ], [ false, %bb.z ], [ false, %_ZNKSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE2atEm.exit ]
  ret i1 %.5
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN11OpenImageIO4v3_114ImageCacheFile19find_or_create_specEiRKNS0_9ImageSpecE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(400) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(160) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::unique_ptr.53", align 8 ; 6 uses
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph.i, label %_ZN11OpenImageIO4v3_114ImageCacheFile9find_specEiRKNS0_9ImageSpecE.exit.thread

.lr.ph.i:                                         ; preds = %bb.a
  %i.b = add nsw i32 %1, -1                       ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = zext nneg i32 %i.b to i64
  %umin.i = tail call i32 @llvm.umin.i32(i32 %i.b, i32 9)
  %i.e = add nuw nsw i32 %umin.i, 2
  %wide.trip.count.i = zext nneg i32 %i.e to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.i
  %indvars.iv24.i = phi i64 [ 1, %.lr.ph.i ], [ %indvars.iv.next25.i, %bb.d ]
  %indvars.iv.i = phi i64 [ %i.d, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.d ] ; 2 uses
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !275
  %i.g = getelementptr inbounds nuw [128 x i8], ptr %i.f, i64 %indvars.iv.i ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 120
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !298  ; 2 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = tail call noundef zeroext i1 @_ZN11OpenImageIO4v3_17is_sameERKNS0_9ImageSpecES3_(ptr noundef nonnull align 8 dereferenceable(160) %i.i, ptr noundef nonnull align 8 dereferenceable(160) %2)
  br i1 %i.j, label %_ZN11OpenImageIO4v3_114ImageCacheFile9find_specEiRKNS0_9ImageSpecE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %indvars.iv.next25.i = add nuw nsw i64 %indvars.iv24.i, 1 ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next25.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN11OpenImageIO4v3_114ImageCacheFile9find_specEiRKNS0_9ImageSpecE.exit.thread, label %bb.b, !llvm.loop !378

_ZN11OpenImageIO4v3_114ImageCacheFile9find_specEiRKNS0_9ImageSpecE.exit: ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 120
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !298  ; 2 uses
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %_ZN11OpenImageIO4v3_114ImageCacheFile9find_specEiRKNS0_9ImageSpecE.exit.thread, label %bb.k

_ZN11OpenImageIO4v3_114ImageCacheFile9find_specEiRKNS0_9ImageSpecE.exit.thread: ; preds = %bb.d, %bb.a, %_ZN11OpenImageIO4v3_114ImageCacheFile9find_specEiRKNS0_9ImageSpecE.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #5
  tail call void @llvm.experimental.noalias.scope.decl(metadata !392)
  %i.n = tail call noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #47, !noalias !392 ; 4 uses
  invoke void @_ZN11OpenImageIO4v3_19ImageSpecC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(160) %i.n, ptr noundef nonnull align 8 dereferenceable(160) %2)
          to label %_ZSt11make_uniqueIN11OpenImageIO4v3_19ImageSpecEJRKS2_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.e, !noalias !392

common.resume:                                    ; preds = %_ZNSt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS2_EED2Ev.exit12, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.o, %bb.e ], [ %i.bf, %_ZNSt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS2_EED2Ev.exit12 ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %_ZN11OpenImageIO4v3_114ImageCacheFile9find_specEiRKNS0_9ImageSpecE.exit.thread
  %i.o = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef 160) #46, !noalias !392
  br label %common.resume

_ZSt11make_uniqueIN11OpenImageIO4v3_19ImageSpecEJRKS2_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %_ZN11OpenImageIO4v3_114ImageCacheFile9find_specEiRKNS0_9ImageSpecE.exit.thread
  store ptr %i.n, ptr %3, align 8, !tbaa !181, !alias.scope !392
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !272  ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !274
  %.not.i9 = icmp eq ptr %i.q, %i.s
  %i.t = ptrtoint ptr %i.n to i64                 ; 2 uses
  br i1 %.not.i9, label %bb.f, label %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS3_EESaIS6_EE12emplace_backIJS6_EEERS6_DpOT_.exit.thread

_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS3_EESaIS6_EE12emplace_backIJS6_EEERS6_DpOT_.exit.thread: ; preds = %_ZSt11make_uniqueIN11OpenImageIO4v3_19ImageSpecEJRKS2_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  store i64 %i.t, ptr %i.q, align 8, !tbaa !181
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.u, ptr %i.p, align 8, !tbaa !272
  br label %_ZNSt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS2_EED2Ev.exit

bb.f:                                             ; preds = %_ZSt11make_uniqueIN11OpenImageIO4v3_19ImageSpecEJRKS2_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.v = load ptr, ptr %i.m, align 8, !tbaa !271  ; 10 uses
  %i.w = ptrtoint ptr %i.q to i64                 ; 3 uses
  %i.x = ptrtoint ptr %i.v to i64                 ; 3 uses
  %i.y = sub i64 %i.w, %i.x                       ; 4 uses
  %i.z = icmp eq i64 %i.y, 9223372036854775800
  br i1 %i.z, label %bb.g, label %_ZNKSt6vectorISt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.330) #48
          to label %.noexc13 unwind label %bb.i

.noexc13:                                         ; preds = %bb.g
  unreachable

_ZNKSt6vectorISt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.f
  %i.aa = ashr exact i64 %i.y, 3                  ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.aa, i64 1)
  %i.ab = add nsw i64 %.sroa.speculated.i.i, %i.aa ; 2 uses
  %i.ac = icmp ult i64 %i.ab, %i.aa
  %i.ad = tail call i64 @llvm.umin.i64(i64 %i.ab, i64 1152921504606846975)
  %i.ae = select i1 %i.ac, i64 1152921504606846975, i64 %i.ad ; 3 uses
  %.not.i.i = icmp ne i64 %i.ae, 0
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.af = shl nuw nsw i64 %i.ae, 3
  %i.ag = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.af) #47
          to label %.noexc14 unwind label %bb.i   ; 10 uses

.noexc14:                                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.y
  store i64 %i.t, ptr %i.ah, align 8, !tbaa !181
  %.not10.i.i.i.i = icmp eq ptr %i.v, %i.q
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.noexc14
  %i.ai = sub i64 %i.w, %i.x
  %i.aj = add i64 %i.ai, -8                       ; 2 uses
  %i.ak = lshr i64 %i.aj, 3
  %i.al = add nuw nsw i64 %i.ak, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.aj, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader39, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.am = add i64 %i.w, -8
  %i.an = sub i64 %i.am, %i.x
  %i.ao = and i64 %i.an, -8
  %i.ap = add i64 %i.ao, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ag, i64 %i.ap
  %scevgep35 = getelementptr i8, ptr %i.v, i64 %i.ap
  %bound0 = icmp ult ptr %i.ag, %scevgep35
  %bound1 = icmp ult ptr %i.v, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader39, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.al, 4611686018427387900     ; 3 uses
  %i.aq = shl i64 %n.vec, 3                       ; 2 uses
  %i.ar = getelementptr i8, ptr %i.ag, i64 %i.aq  ; 2 uses
  %i.as = getelementptr i8, ptr %i.v, i64 %i.aq
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.at = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ag, i64 %i.at ; 2 uses
  %next.gep36 = getelementptr i8, ptr %i.v, i64 %i.at ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !395)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !398)
  %i.au = getelementptr i8, ptr %next.gep36, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep36, align 8, !tbaa !181, !alias.scope !400, !noalias !395
  %wide.load37 = load <2 x i64>, ptr %i.au, align 8, !tbaa !181, !alias.scope !400, !noalias !395
  %i.av = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !181, !alias.scope !403, !noalias !400
  store <2 x i64> %wide.load37, ptr %i.av, align 8, !tbaa !181, !alias.scope !403, !noalias !400
  %i.aw = getelementptr i8, ptr %next.gep36, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep36, align 8, !tbaa !181, !alias.scope !400, !noalias !395
  store <2 x ptr> splat (ptr null), ptr %i.aw, align 8, !tbaa !181, !alias.scope !400, !noalias !395
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ax = icmp eq i64 %index.next, %n.vec
  br i1 %i.ax, label %middle.block, label %vector.body, !llvm.loop !405

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.al, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i.preheader39

.lr.ph.i.i.i.i.preheader39:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.ag, %vector.memcheck ], [ %i.ag, %.lr.ph.i.i.i.i.preheader ], [ %i.ar, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.v, %vector.memcheck ], [ %i.v, %.lr.ph.i.i.i.i.preheader ], [ %i.as, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader39, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader39 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader39 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !395)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !398)
  %i.ay = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !181, !alias.scope !398, !noalias !395
  store i64 %i.ay, ptr %.012.i.i.i.i, align 8, !tbaa !181, !alias.scope !395, !noalias !398
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !181, !alias.scope !398, !noalias !395
  %i.az = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.az, %i.q
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !406

_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %.noexc14
  %.0.lcssa.i.i.i.i = phi ptr [ %i.ag, %.noexc14 ], [ %i.ar, %middle.block ], [ %i.ba, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.v, null
  br i1 %.not.i23.i, label %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS3_EESaIS6_EE12emplace_backIJS6_EEERS6_DpOT_.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.y) #46
  br label %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS3_EESaIS6_EE12emplace_backIJS6_EEERS6_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS3_EESaIS6_EE12emplace_backIJS6_EEERS6_DpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, %bb.h
  store ptr %i.ag, ptr %i.m, align 8, !tbaa !271
  store ptr %i.bb, ptr %i.p, align 8, !tbaa !272
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ae
  store ptr %i.bc, ptr %i.r, align 8, !tbaa !274
  br label %_ZNSt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS3_EESaIS6_EE12emplace_backIJS6_EEERS6_DpOT_.exit, %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS3_EESaIS6_EE12emplace_backIJS6_EEERS6_DpOT_.exit.thread
  %i.bd = phi ptr [ %i.q, %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS3_EESaIS6_EE12emplace_backIJS6_EEERS6_DpOT_.exit.thread ], [ %.0.lcssa.i.i.i.i, %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS3_EESaIS6_EE12emplace_backIJS6_EEERS6_DpOT_.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #5
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !181
  br label %bb.k

bb.i:                                             ; preds = %_ZNKSt6vectorISt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i, %bb.g
  %i.bf = landingpad { ptr, i32 }
          cleanup
  %i.bg = load ptr, ptr %3, align 8, !tbaa !181   ; 2 uses
  %.not.i11 = icmp eq ptr %i.bg, null
  br i1 %.not.i11, label %_ZNSt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS2_EED2Ev.exit12, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZNKSt14default_deleteIN11OpenImageIO4v3_19ImageSpecEEclEPS2_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %i.bg)
  br label %_ZNSt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS2_EED2Ev.exit12

_ZNSt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS2_EED2Ev.exit12: ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #5
  br label %common.resume

bb.k:                                             ; preds = %_ZNSt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS2_EED2Ev.exit, %_ZN11OpenImageIO4v3_114ImageCacheFile9find_specEiRKNS0_9ImageSpecE.exit
  %.1 = phi ptr [ %i.l, %_ZN11OpenImageIO4v3_114ImageCacheFile9find_specEiRKNS0_9ImageSpecE.exit ], [ %i.be, %_ZNSt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS2_EED2Ev.exit ]
  ret ptr %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef ptr @_ZN11OpenImageIO4v3_114ImageCacheFile9find_dimsEiiRKNS1_9ImageDimsE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(400) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %3) local_unnamed_addr #17 align 2 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %bb.a
  %i.b = add nsw i32 %1, -1                       ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !275
  %i.e = sext i32 %2 to i64
  %i.f = load i32, ptr %3, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.h = load i32, ptr %i.g, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.j = load i32, ptr %i.i, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.l = load i32, ptr %i.k, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = load i32, ptr %i.m, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.p = load i32, ptr %i.o, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.r = load i32, ptr %i.q, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.t = load i32, ptr %i.s, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.v = load i32, ptr %i.u, align 4
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.x = load i32, ptr %i.w, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.z = load i32, ptr %i.y, align 4
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.ab = load i32, ptr %i.aa, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.ad = load i32, ptr %i.ac, align 4
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 52
  %i.af = load i32, ptr %i.ae, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 60
  %i.ai = zext nneg i32 %i.b to i64
  %umin = tail call i32 @llvm.umin.i32(i32 %i.b, i32 9)
  %i.aj = add nuw nsw i32 %umin, 2
  %wide.trip.count = zext nneg i32 %i.aj to i64
  %i.ak = load i32, ptr %i.ag, align 4
  %i.al = load i32, ptr %i.ah, align 4
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN11OpenImageIO4v3_119has_same_dimensionsINS0_14ImageCacheFile9ImageDimsEEEbRKT_S6_.exit.thread
  %indvars.iv28 = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next29, %_ZN11OpenImageIO4v3_119has_same_dimensionsINS0_14ImageCacheFile9ImageDimsEEEbRKT_S6_.exit.thread ]
  %indvars.iv = phi i64 [ %i.ai, %.lr.ph ], [ %indvars.iv.next, %_ZN11OpenImageIO4v3_119has_same_dimensionsINS0_14ImageCacheFile9ImageDimsEEEbRKT_S6_.exit.thread ] ; 2 uses
  %indvars.iv.next29 = add nuw nsw i64 %indvars.iv28, 1 ; 2 uses
  %i.am = getelementptr inbounds nuw [128 x i8], ptr %i.d, i64 %indvars.iv ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !375
  %i.ap = load ptr, ptr %i.am, align 8, !tbaa !374 ; 2 uses
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = sdiv exact i64 %i.as, 40
  %i.au = trunc i64 %i.at to i32
  %i.av = icmp slt i32 %2, %i.au
  br i1 %i.av, label %bb.c, label %_ZN11OpenImageIO4v3_119has_same_dimensionsINS0_14ImageCacheFile9ImageDimsEEEbRKT_S6_.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.aw = getelementptr inbounds nuw [40 x i8], ptr %i.ap, i64 %i.e
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !74 ; 18 uses
  %.not = icmp eq ptr %i.ax, null
  br i1 %.not, label %_ZN11OpenImageIO4v3_119has_same_dimensionsINS0_14ImageCacheFile9ImageDimsEEEbRKT_S6_.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !92
  %i.az = icmp eq i32 %i.ay, %i.f
  br i1 %i.az, label %bb.e, label %_ZN11OpenImageIO4v3_119has_same_dimensionsINS0_14ImageCacheFile9ImageDimsEEEbRKT_S6_.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !94
  %i.bc = icmp eq i32 %i.bb, %i.h
  br i1 %i.bc, label %bb.f, label %_ZN11OpenImageIO4v3_119has_same_dimensionsINS0_14ImageCacheFile9ImageDimsEEEbRKT_S6_.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !96
  %i.bf = icmp eq i32 %i.be, %i.j
  br i1 %i.bf, label %bb.g, label %_ZN11OpenImageIO4v3_119has_same_dimensionsINS0_14ImageCacheFile9ImageDimsEEEbRKT_S6_.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ax, i64 12
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !98
  %i.bi = icmp eq i32 %i.bh, %i.l
  br i1 %i.bi, label %bb.h, label %_ZN11OpenImageIO4v3_119has_same_dimensionsINS0_14ImageCacheFile9ImageDimsEEEbRKT_S6_.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !100
  %i.bl = icmp eq i32 %i.bk, %i.n
  br i1 %i.bl, label %bb.i, label %_ZN11OpenImageIO4v3_119has_same_dimensionsINS0_14ImageCacheFile9ImageDimsEEEbRKT_S6_.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ax, i64 20
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !102
  %i.bo = icmp eq i32 %i.bn, %i.p
  br i1 %i.bo, label %bb.j, label %_ZN11OpenImageIO4v3_119has_same_dimensionsINS0_14ImageCacheFile9ImageDimsEEEbRKT_S6_.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !93
  %i.br = icmp eq i32 %i.bq, %i.r
  br i1 %i.br, label %bb.k, label %_ZN11OpenImageIO4v3_119has_same_dimensionsINS0_14ImageCacheFile9ImageDimsEEEbRKT_S6_.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ax, i64 28
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !95
  %i.bu = icmp eq i32 %i.bt, %i.t
  br i1 %i.bu, label %bb.l, label %_ZN11OpenImageIO4v3_119has_same_dimensionsINS0_14ImageCacheFile9ImageDimsEEEbRKT_S6_.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !97
  %i.bx = icmp eq i32 %i.bw, %i.v
  br i1 %i.bx, label %bb.m, label %_ZN11OpenImageIO4v3_119has_same_dimensionsINS0_14ImageCacheFile9ImageDimsEEEbRKT_S6_.exit.thread

bb.m:                                             ; preds = %bb.l
  %i.by = getelementptr inbounds nuw i8, ptr %i.ax, i64 36
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !99
  %i.ca = icmp eq i32 %i.bz, %i.x
  br i1 %i.ca, label %bb.n, label %_ZN11OpenImageIO4v3_119has_same_dimensionsINS0_14ImageCacheFile9ImageDimsEEEbRKT_S6_.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ax, i64 40
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !101
  %i.cd = icmp eq i32 %i.cc, %i.z
  br i1 %i.cd, label %bb.o, label %_ZN11OpenImageIO4v3_119has_same_dimensionsINS0_14ImageCacheFile9ImageDimsEEEbRKT_S6_.exit.thread

bb.o:                                             ; preds = %bb.n
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ax, i64 44
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !103
  %i.cg = icmp eq i32 %i.cf, %i.ab
  br i1 %i.cg, label %bb.p, label %_ZN11OpenImageIO4v3_119has_same_dimensionsINS0_14ImageCacheFile9ImageDimsEEEbRKT_S6_.exit.thread

bb.p:                                             ; preds = %bb.o
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ax, i64 48
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !105
  %i.cj = icmp eq i32 %i.ci, %i.ad
  br i1 %i.cj, label %bb.q, label %_ZN11OpenImageIO4v3_119has_same_dimensionsINS0_14ImageCacheFile9ImageDimsEEEbRKT_S6_.exit.thread

bb.q:                                             ; preds = %bb.p
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ax, i64 52
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !104
  %i.cm = icmp eq i32 %i.cl, %i.af
  br i1 %i.cm, label %bb.r, label %_ZN11OpenImageIO4v3_119has_same_dimensionsINS0_14ImageCacheFile9ImageDimsEEEbRKT_S6_.exit.thread

bb.r:                                             ; preds = %bb.q
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ax, i64 56
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !106
  %i.cp = icmp eq i32 %i.co, %i.ak
  br i1 %i.cp, label %_ZN11OpenImageIO4v3_119has_same_dimensionsINS0_14ImageCacheFile9ImageDimsEEEbRKT_S6_.exit, label %_ZN11OpenImageIO4v3_119has_same_dimensionsINS0_14ImageCacheFile9ImageDimsEEEbRKT_S6_.exit.thread

_ZN11OpenImageIO4v3_119has_same_dimensionsINS0_14ImageCacheFile9ImageDimsEEEbRKT_S6_.exit: ; preds = %bb.r
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ax, i64 60
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !89
  %i.cs = icmp eq i32 %i.cr, %i.al
  br i1 %i.cs, label %.thread, label %_ZN11OpenImageIO4v3_119has_same_dimensionsINS0_14ImageCacheFile9ImageDimsEEEbRKT_S6_.exit.thread

_ZN11OpenImageIO4v3_119has_same_dimensionsINS0_14ImageCacheFile9ImageDimsEEEbRKT_S6_.exit.thread: ; preds = %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %_ZN11OpenImageIO4v3_119has_same_dimensionsINS0_14ImageCacheFile9ImageDimsEEEbRKT_S6_.exit, %bb.c, %bb.b
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %exitcond.not = icmp eq i64 %indvars.iv.next29, %wide.trip.count
  br i1 %exitcond.not, label %.thread, label %bb.b, !llvm.loop !407

.thread:                                          ; preds = %_ZN11OpenImageIO4v3_119has_same_dimensionsINS0_14ImageCacheFile9ImageDimsEEEbRKT_S6_.exit.thread, %_ZN11OpenImageIO4v3_119has_same_dimensionsINS0_14ImageCacheFile9ImageDimsEEEbRKT_S6_.exit, %bb.a
  %.4 = phi ptr [ null, %bb.a ], [ %i.ax, %_ZN11OpenImageIO4v3_119has_same_dimensionsINS0_14ImageCacheFile9ImageDimsEEEbRKT_S6_.exit ], [ null, %_ZN11OpenImageIO4v3_119has_same_dimensionsINS0_14ImageCacheFile9ImageDimsEEEbRKT_S6_.exit.thread ]
  ret ptr %.4
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN11OpenImageIO4v3_114ImageCacheFile19find_or_create_dimsEiiRKNS0_9ImageSpecE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(400) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(160) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef ptr @_ZN11OpenImageIO4v3_114ImageCacheFile9find_dimsEiiRKNS1_9ImageDimsE(ptr noundef nonnull align 8 dereferenceable(400) %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(64) %3) ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %.thread, label %bb.g

.thread:                                          ; preds = %bb.a, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.d = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #47, !noalias !408 ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.d, ptr noundef nonnull align 8 dereferenceable(64) %3, i64 64, i1 false), !tbaa.struct !411, !noalias !408
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !267  ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !270
  %.not.i = icmp eq ptr %i.f, %i.h
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.thread
  %i.i = ptrtoint ptr %i.d to i64
  store i64 %i.i, ptr %i.f, align 8, !tbaa !268
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.j, ptr %i.e, align 8, !tbaa !267
  br label %_ZNSt10unique_ptrIN11OpenImageIO4v3_114ImageCacheFile9ImageDimsESt14default_deleteIS3_EED2Ev.exit

bb.d:                                             ; preds = %.thread
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !266  ; 10 uses
  %i.l = ptrtoint ptr %i.f to i64                 ; 3 uses
  %i.m = ptrtoint ptr %i.k to i64                 ; 3 uses
  %i.n = sub i64 %i.l, %i.m                       ; 4 uses
  %i.o = icmp eq i64 %i.n, 9223372036854775800
  br i1 %i.o, label %bb.e, label %_ZNKSt6vectorISt10unique_ptrIN11OpenImageIO4v3_114ImageCacheFile9ImageDimsESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.330) #48
          to label %.noexc14 unwind label %_ZNSt10unique_ptrIN11OpenImageIO4v3_114ImageCacheFile9ImageDimsESt14default_deleteIS3_EED2Ev.exit13

.noexc14:                                         ; preds = %bb.e
  unreachable

_ZNKSt6vectorISt10unique_ptrIN11OpenImageIO4v3_114ImageCacheFile9ImageDimsESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.d
  %i.p = ashr exact i64 %i.n, 3                   ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.p, i64 1)
  %i.q = add nsw i64 %.sroa.speculated.i.i, %i.p  ; 2 uses
  %i.r = icmp ult i64 %i.q, %i.p
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.q, i64 1152921504606846975)
  %i.t = select i1 %i.r, i64 1152921504606846975, i64 %i.s ; 3 uses
  %.not.i.i = icmp ne i64 %i.t, 0
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.u = shl nuw nsw i64 %i.t, 3
  %i.v = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.u) #47
          to label %.noexc15 unwind label %_ZNSt10unique_ptrIN11OpenImageIO4v3_114ImageCacheFile9ImageDimsESt14default_deleteIS3_EED2Ev.exit13 ; 10 uses

.noexc15:                                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN11OpenImageIO4v3_114ImageCacheFile9ImageDimsESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.n
  %i.x = ptrtoint ptr %i.d to i64
  store i64 %i.x, ptr %i.w, align 8, !tbaa !268
  %.not10.i.i.i.i = icmp eq ptr %i.k, %i.f
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_114ImageCacheFile9ImageDimsESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.noexc15
  %i.y = sub i64 %i.l, %i.m
  %i.z = add i64 %i.y, -8                         ; 2 uses
  %i.aa = lshr i64 %i.z, 3
  %i.ab = add nuw nsw i64 %i.aa, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.z, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader29, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.ac = add i64 %i.l, -8
  %i.ad = sub i64 %i.ac, %i.m
  %i.ae = and i64 %i.ad, -8
  %i.af = add i64 %i.ae, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.v, i64 %i.af
  %scevgep25 = getelementptr i8, ptr %i.k, i64 %i.af
  %bound0 = icmp ult ptr %i.v, %scevgep25
  %bound1 = icmp ult ptr %i.k, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader29, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ab, 4611686018427387900     ; 3 uses
  %i.ag = shl i64 %n.vec, 3                       ; 2 uses
  %i.ah = getelementptr i8, ptr %i.v, i64 %i.ag   ; 2 uses
  %i.ai = getelementptr i8, ptr %i.k, i64 %i.ag
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aj = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.v, i64 %i.aj ; 2 uses
  %next.gep26 = getelementptr i8, ptr %i.k, i64 %i.aj ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !412)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !415)
  %i.ak = getelementptr i8, ptr %next.gep26, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep26, align 8, !tbaa !268, !alias.scope !417, !noalias !412
  %wide.load27 = load <2 x i64>, ptr %i.ak, align 8, !tbaa !268, !alias.scope !417, !noalias !412
  %i.al = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !268, !alias.scope !420, !noalias !417
  store <2 x i64> %wide.load27, ptr %i.al, align 8, !tbaa !268, !alias.scope !420, !noalias !417
  %i.am = getelementptr i8, ptr %next.gep26, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep26, align 8, !tbaa !268, !alias.scope !417, !noalias !412
  store <2 x ptr> splat (ptr null), ptr %i.am, align 8, !tbaa !268, !alias.scope !417, !noalias !412
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !422

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ab, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_114ImageCacheFile9ImageDimsESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i, label %.lr.ph.i.i.i.i.preheader29

.lr.ph.i.i.i.i.preheader29:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.v, %vector.memcheck ], [ %i.v, %.lr.ph.i.i.i.i.preheader ], [ %i.ah, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.k, %vector.memcheck ], [ %i.k, %.lr.ph.i.i.i.i.preheader ], [ %i.ai, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader29, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader29 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader29 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !412)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !415)
  %i.ao = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !268, !alias.scope !415, !noalias !412
  store i64 %i.ao, ptr %.012.i.i.i.i, align 8, !tbaa !268, !alias.scope !412, !noalias !415
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !268, !alias.scope !415, !noalias !412
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ap, %i.f
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_114ImageCacheFile9ImageDimsESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !423

_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_114ImageCacheFile9ImageDimsESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %.noexc15
  %.0.lcssa.i.i.i.i = phi ptr [ %i.v, %.noexc15 ], [ %i.ah, %middle.block ], [ %i.aq, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.k, null
  br i1 %.not.i23.i, label %.noexc, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_114ImageCacheFile9ImageDimsESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.n) #46
  br label %.noexc

.noexc:                                           ; preds = %bb.f, %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_114ImageCacheFile9ImageDimsESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i
  store ptr %i.v, ptr %i.c, align 8, !tbaa !266
  store ptr %i.ar, ptr %i.e, align 8, !tbaa !267
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.t
  store ptr %i.as, ptr %i.g, align 8, !tbaa !270
  br label %_ZNSt10unique_ptrIN11OpenImageIO4v3_114ImageCacheFile9ImageDimsESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN11OpenImageIO4v3_114ImageCacheFile9ImageDimsESt14default_deleteIS3_EED2Ev.exit: ; preds = %bb.c, %.noexc
  %i.at = phi ptr [ %i.f, %bb.c ], [ %.0.lcssa.i.i.i.i, %.noexc ]
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !268
  br label %bb.g

_ZNSt10unique_ptrIN11OpenImageIO4v3_114ImageCacheFile9ImageDimsESt14default_deleteIS3_EED2Ev.exit13: ; preds = %_ZNKSt6vectorISt10unique_ptrIN11OpenImageIO4v3_114ImageCacheFile9ImageDimsESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i, %bb.e
  %i.av = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 64) #46
  resume { ptr, i32 } %i.av

bb.g:                                             ; preds = %_ZNSt10unique_ptrIN11OpenImageIO4v3_114ImageCacheFile9ImageDimsESt14default_deleteIS3_EED2Ev.exit, %bb.b
  %.1 = phi ptr [ %i.b, %bb.b ], [ %i.au, %_ZNSt10unique_ptrIN11OpenImageIO4v3_114ImageCacheFile9ImageDimsESt14default_deleteIS3_EED2Ev.exit ]
  ret ptr %.1
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN11OpenImageIO4v3_114ImageCacheFile19init_texture_formatERKNS0_9ImageSpecE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(400) initializes((152, 156)) %0, ptr noundef nonnull align 8 dereferenceable(160) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %3 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 33 uses
  %4 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 33 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !327
  %i.c = icmp slt i32 %i.b, 2
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.e = load i32, ptr %i.d, align 4
  %i.f = icmp slt i32 %i.e, 2
  %or.cond = select i1 %i.c, i1 %i.f, i1 false
  %spec.select = select i1 %or.cond, i32 1, i32 2
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  store i32 %spec.select, ptr %i.g, align 8, !tbaa !170
  store ptr @.str.12, ptr %2, align 8, !tbaa !7
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 13, ptr %i.h, align 8, !tbaa !12
  %i.i = call noundef ptr @_ZNK11OpenImageIO4v3_19ImageSpec14find_attributeENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_8TypeDescEb(ptr noundef nonnull align 8 dereferenceable(160) %1, ptr noundef nonnull dead_on_return %2, i64 269, i1 noundef zeroext false) ; 3 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 38
  %i.k = load i8, ptr %i.j, align 2, !tbaa !366, !range !368, !noundef !290
  %i.l = trunc nuw i8 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = select i1 %i.l, ptr %i.n, ptr %i.m
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !114  ; 17 uses
  %.not.i = icmp eq ptr %i.p, null
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 8 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 16 uses
  br i1 %.not.i, label %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit.us.preheader, label %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit.preheader

_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit.preheader: ; preds = %bb.b
  store ptr %i.p, ptr %3, align 8, !tbaa !7
  %i.s = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.p) #5
  store i64 %i.s, ptr %i.q, align 8, !tbaa !12
  %i.t = call noundef ptr @_ZN11OpenImageIO4v3_13pvt19texture_format_nameENS1_9TexFormatE(i32 noundef 0) ; 3 uses
  store ptr %i.t, ptr %4, align 8, !tbaa !7
  %.not.i14 = icmp eq ptr %i.t, null
  br i1 %.not.i14, label %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit15, label %bb.k

_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit.us.preheader: ; preds = %bb.b
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %i.u = call noundef ptr @_ZN11OpenImageIO4v3_13pvt19texture_format_nameENS1_9TexFormatE(i32 noundef 0) ; 3 uses
  store ptr %i.u, ptr %4, align 8, !tbaa !7
  %.not.i14.us = icmp eq ptr %i.u, null
  br i1 %.not.i14.us, label %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit15.us, label %bb.c

bb.c:                                             ; preds = %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit.us.preheader
  %i.v = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.u) #5
  br label %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit15.us

_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit15.us: ; preds = %bb.c, %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit.us.preheader
  %i.w = phi i64 [ %i.v, %bb.c ], [ 0, %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit.us.preheader ]
  store i64 %i.w, ptr %i.r, align 8, !tbaa !12
  %i.x = call noundef zeroext i1 @_ZN11OpenImageIO4v3_17Strutil7iequalsENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull dead_on_return %3, ptr noundef nonnull dead_on_return %4)
  br i1 %i.x, label %.split19.us, label %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit.us.1

_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit.us.1: ; preds = %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit15.us
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %i.y = call noundef ptr @_ZN11OpenImageIO4v3_13pvt19texture_format_nameENS1_9TexFormatE(i32 noundef 1) ; 3 uses
  store ptr %i.y, ptr %4, align 8, !tbaa !7
  %.not.i14.us.1 = icmp eq ptr %i.y, null
  br i1 %.not.i14.us.1, label %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit15.us.1, label %bb.d

bb.d:                                             ; preds = %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit.us.1
  %i.z = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.y) #5
  br label %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit15.us.1

_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit15.us.1: ; preds = %bb.d, %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit.us.1
  %i.aa = phi i64 [ %i.z, %bb.d ], [ 0, %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit.us.1 ]
  store i64 %i.aa, ptr %i.r, align 8, !tbaa !12
  %i.ab = call noundef zeroext i1 @_ZN11OpenImageIO4v3_17Strutil7iequalsENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull dead_on_return %3, ptr noundef nonnull dead_on_return %4)
  br i1 %i.ab, label %.split19.us, label %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit.us.2

_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit.us.2: ; preds = %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit15.us.1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %i.ac = call noundef ptr @_ZN11OpenImageIO4v3_13pvt19texture_format_nameENS1_9TexFormatE(i32 noundef 2) ; 3 uses
  store ptr %i.ac, ptr %4, align 8, !tbaa !7
  %.not.i14.us.2 = icmp eq ptr %i.ac, null
  br i1 %.not.i14.us.2, label %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit15.us.2, label %bb.e

bb.e:                                             ; preds = %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit.us.2
  %i.ad = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ac) #5
  br label %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit15.us.2

_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit15.us.2: ; preds = %bb.e, %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit.us.2
  %i.ae = phi i64 [ %i.ad, %bb.e ], [ 0, %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit.us.2 ]
  store i64 %i.ae, ptr %i.r, align 8, !tbaa !12
  %i.af = call noundef zeroext i1 @_ZN11OpenImageIO4v3_17Strutil7iequalsENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull dead_on_return %3, ptr noundef nonnull dead_on_return %4)
  br i1 %i.af, label %.split19.us, label %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit.us.3

_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit.us.3: ; preds = %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit15.us.2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %i.ag = call noundef ptr @_ZN11OpenImageIO4v3_13pvt19texture_format_nameENS1_9TexFormatE(i32 noundef 3) ; 3 uses
  store ptr %i.ag, ptr %4, align 8, !tbaa !7
  %.not.i14.us.3 = icmp eq ptr %i.ag, null
  br i1 %.not.i14.us.3, label %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit15.us.3, label %bb.f

bb.f:                                             ; preds = %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit.us.3
end_hunk_0
begin_hunk_1_@_ZN11OpenImageIO4v3_114ImageCacheImpl11verify_fileEPNS0_14ImageCacheFileEPNS0_23ImageCachePerThreadInfoEb:bb.a
  %.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn, %bb.aw ], [ %i.p, %bb.f ]
  call void @_ZN11OpenImageIO4v3_15TimerD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %13) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #5
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn

bb.ay:                                            ; preds = %_ZN11OpenImageIO4v3_15TimerD2Ev.exit111, %bb.c
  br i1 %3, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.iy = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !671 ; 2 uses
  %.not100 = icmp eq ptr %i.iz, null
  %spec.select = select i1 %.not100, ptr %1, ptr %i.iz ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %spec.select, i64 24
  store i8 1, ptr %i.ja, align 8, !tbaa !115
  br label %bb.ba

bb.ba:                                            ; preds = %bb.ay, %bb.az, %bb.b, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %1, %bb.b ], [ %1, %bb.ay ], [ %spec.select, %bb.az ]
  ret ptr %.0
}

; Function Attrs: uwtable
define hidden noundef nonnull ptr @_ZN11OpenImageIO4v3_114ImageCacheImpl18get_perthread_infoEPNS0_23ImageCachePerThreadInfoE(ptr noundef nonnull align 64 dereferenceable(25240) %0, ptr noundef %1) local_unnamed_addr #22 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::tuple.649", align 8    ; 4 uses
  %3 = alloca %"class.std::tuple.406", align 1    ; 3 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.b, label %bb.p

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr @__tls_guard, align 1
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.c, label %_ZTWN11OpenImageIO4v3_112_GLOBAL__N_127imagecache_per_thread_infosE.exit, !prof !648

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr @__tls_guard, align 1
  %i.c = tail call ptr @llvm.invariant.start.p0(i64 1, ptr nonnull @__tls_guard) ; 0 uses
  tail call fastcc void @__cxx_global_var_init.4()
  tail call fastcc void @__cxx_global_var_init.45()
  br label %_ZTWN11OpenImageIO4v3_112_GLOBAL__N_127imagecache_per_thread_infosE.exit

_ZTWN11OpenImageIO4v3_112_GLOBAL__N_127imagecache_per_thread_infosE.exit: ; preds = %bb.b, %bb.c
  %i.d = tail call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN11OpenImageIO4v3_112_GLOBAL__N_127imagecache_per_thread_infosE)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #5
  store ptr %0, ptr %2, align 8, !tbaa !660, !alias.scope !675
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #5
  %i.e = call { ptr, i8 } @_ZN3tsl17detail_robin_hash10robin_hashISt4pairImPN11OpenImageIO4v3_123ImageCachePerThreadInfoEENS_9robin_mapImS6_St4hashImESt8equal_toImESaIS7_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSH_11ValueSelectESA_SC_SD_Lb0ESG_E11insert_implImJRKSt21piecewise_construct_tSt5tupleIJRKmEESP_IJEEEEES2_INSK_14robin_iteratorILb0EEEbERKT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(80) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #5
  %.fca.0.extract.i.i = extractvalue { ptr, i8 } %i.e, 0
  %i.f = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !678  ; 2 uses
  %.not5 = icmp eq ptr %i.g, null
  br i1 %.not5, label %bb.d, label %bb.p

bb.d:                                             ; preds = %_ZTWN11OpenImageIO4v3_112_GLOBAL__N_127imagecache_per_thread_infosE.exit
  %i.h = call noalias noundef nonnull dereferenceable(336) ptr @_Znwm(i64 noundef 336) #47 ; 18 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(336) %i.h, i8 0, i64 32, i1 false)
  %i.i = load atomic i8, ptr @_ZGVZN3tsl17detail_robin_hash10robin_hashISt4pairIN11OpenImageIO4v3_17ustringEPNS4_14ImageCacheFileEENS_9robin_mapIS5_S7_St4hashIS5_ESt8equal_toIS5_ESaIS8_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESB_SD_SE_Lb0ESH_E23static_empty_bucket_ptrEvE12empty_bucket acquire, align 8
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %bb.e, label %bb.g, !prof !15

bb.e:                                             ; preds = %bb.d
  %i.k = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN3tsl17detail_robin_hash10robin_hashISt4pairIN11OpenImageIO4v3_17ustringEPNS4_14ImageCacheFileEENS_9robin_mapIS5_S7_St4hashIS5_ESt8equal_toIS5_ESaIS8_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESB_SD_SE_Lb0ESH_E23static_empty_bucket_ptrEvE12empty_bucket) #5
  %.not.i10.i.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i10.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr @_ZZN3tsl17detail_robin_hash10robin_hashISt4pairIN11OpenImageIO4v3_17ustringEPNS4_14ImageCacheFileEENS_9robin_mapIS5_S7_St4hashIS5_ESt8equal_toIS5_ESaIS8_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESB_SD_SE_Lb0ESH_E23static_empty_bucket_ptrEvE12empty_bucket, align 8
  store i16 -1, ptr getelementptr inbounds nuw (i8, ptr @_ZZN3tsl17detail_robin_hash10robin_hashISt4pairIN11OpenImageIO4v3_17ustringEPNS4_14ImageCacheFileEENS_9robin_mapIS5_S7_St4hashIS5_ESt8equal_toIS5_ESaIS8_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESB_SD_SE_Lb0ESH_E23static_empty_bucket_ptrEvE12empty_bucket, i64 4), align 4, !tbaa !662
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZZN3tsl17detail_robin_hash10robin_hashISt4pairIN11OpenImageIO4v3_17ustringEPNS4_14ImageCacheFileEENS_9robin_mapIS5_S7_St4hashIS5_ESt8equal_toIS5_ESaIS8_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESB_SD_SE_Lb0ESH_E23static_empty_bucket_ptrEvE12empty_bucket, i64 6), align 2, !tbaa !680
  %i.l = call i32 @__cxa_atexit(ptr nonnull @_ZN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_17ustringEPNS4_14ImageCacheFileEELb1EED2Ev, ptr nonnull @_ZZN3tsl17detail_robin_hash10robin_hashISt4pairIN11OpenImageIO4v3_17ustringEPNS4_14ImageCacheFileEENS_9robin_mapIS5_S7_St4hashIS5_ESt8equal_toIS5_ESaIS8_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESB_SD_SE_Lb0ESH_E23static_empty_bucket_ptrEvE12empty_bucket, ptr nonnull @__dso_handle) #5 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN3tsl17detail_robin_hash10robin_hashISt4pairIN11OpenImageIO4v3_17ustringEPNS4_14ImageCacheFileEENS_9robin_mapIS5_S7_St4hashIS5_ESt8equal_toIS5_ESaIS8_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESB_SD_SE_Lb0ESH_E23static_empty_bucket_ptrEvE12empty_bucket) #5
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store ptr @_ZZN3tsl17detail_robin_hash10robin_hashISt4pairIN11OpenImageIO4v3_17ustringEPNS4_14ImageCacheFileEENS_9robin_mapIS5_S7_St4hashIS5_ESt8equal_toIS5_ESaIS8_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESB_SD_SE_Lb0ESH_E23static_empty_bucket_ptrEvE12empty_bucket, ptr %i.m, align 8, !tbaa !661
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  store i8 0, ptr %i.o, align 8, !tbaa !681
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 73
  store i8 0, ptr %i.p, align 1, !tbaa !682
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  store <2 x float> <float 0.000000e+00, float 5.000000e-01>, ptr %i.q, align 8, !tbaa !32
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  store i64 0, ptr %i.r, align 8, !tbaa !683
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 104
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 128
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 160
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 296
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %i.t, i8 0, i64 20, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.u, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.v, i8 0, i64 136, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.w, align 8, !tbaa !63
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 304
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.x, i8 0, i64 32, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  store atomic i32 0, ptr %i.y seq_cst, align 8
  store ptr %i.h, ptr %i.f, align 8, !tbaa !678
  %i.z = atomicrmw xchg ptr @_ZN11OpenImageIO4v3_114ImageCacheImpl22m_perthread_info_mutexE, i8 1 acquire, align 1
  %.0.in.i.not.i2.i.i = icmp eq i8 %i.z, 0
  br i1 %.0.in.i.not.i2.i.i, label %_ZN11OpenImageIO4v3_110spin_mutex10lock_guardC2ERS1_.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.g, %.preheader.i.i.backedge
  %.sroa.0.1.i.i = phi i32 [ %.sroa.0.2.i.i, %.preheader.i.i.backedge ], [ 1, %bb.g ] ; 5 uses
  %.not.i.i.i = icmp sgt i32 %.sroa.0.1.i.i, 16
  br i1 %.not.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.preheader.i.i
  %i.aa = icmp sgt i32 %.sroa.0.1.i.i, 0
  br i1 %i.aa, label %.lr.ph.i.i.i.i, label %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.h, %.lr.ph.i.i.i.i
  %.03.i.i.i.i = phi i32 [ %i.ab, %.lr.ph.i.i.i.i ], [ 0, %bb.h ]
  call void asm sideeffect "pause;", "~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !528
  %i.ab = add nuw nsw i32 %.03.i.i.i.i, 1         ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i32 %i.ab, %.sroa.0.1.i.i
  br i1 %exitcond.not.i.i.i.i, label %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !529

_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i:         ; preds = %.lr.ph.i.i.i.i, %bb.h
  %i.ac = shl nsw i32 %.sroa.0.1.i.i, 1
  br label %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i

bb.i:                                             ; preds = %.preheader.i.i
  %i.ad = call noundef i32 @sched_yield() #5      ; 0 uses
  br label %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i

_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i: ; preds = %bb.i, %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i
  %.sroa.0.2.i.i = phi i32 [ %.sroa.0.1.i.i, %bb.i ], [ %i.ac, %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i ]
  %i.ae = load volatile i8, ptr @_ZN11OpenImageIO4v3_114ImageCacheImpl22m_perthread_info_mutexE, align 1, !tbaa !530, !range !368, !noundef !290
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %.preheader.i.i.backedge, label %bb.j

.preheader.i.i.backedge:                          ; preds = %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i, %bb.j
  br label %.preheader.i.i, !llvm.loop !531

bb.j:                                             ; preds = %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i
  %i.ag = atomicrmw xchg ptr @_ZN11OpenImageIO4v3_114ImageCacheImpl22m_perthread_info_mutexE, i8 1 acquire, align 1
  %.0.in.i.not.i.i.i = icmp eq i8 %i.ag, 0
  br i1 %.0.in.i.not.i.i.i, label %_ZN11OpenImageIO4v3_110spin_mutex10lock_guardC2ERS1_.exit, label %.preheader.i.i.backedge

_ZN11OpenImageIO4v3_110spin_mutex10lock_guardC2ERS1_.exit: ; preds = %bb.j, %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.aj = load ptr, ptr %i.ai, align 16, !tbaa !684 ; 6 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !685
  %.not.i = icmp eq ptr %i.aj, %i.al
  br i1 %.not.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZN11OpenImageIO4v3_110spin_mutex10lock_guardC2ERS1_.exit
  store ptr %i.h, ptr %i.aj, align 8, !tbaa !678
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr %i.am, ptr %i.ai, align 16, !tbaa !684
  br label %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_123ImageCachePerThreadInfoESt14default_deleteIS3_EESaIS6_EE12emplace_backIJRPS3_EEERS6_DpOT_.exit

bb.l:                                             ; preds = %_ZN11OpenImageIO4v3_110spin_mutex10lock_guardC2ERS1_.exit
  %i.an = load ptr, ptr %i.ah, align 8, !tbaa !686 ; 10 uses
  %i.ao = ptrtoint ptr %i.aj to i64               ; 3 uses
  %i.ap = ptrtoint ptr %i.an to i64               ; 3 uses
  %i.aq = sub i64 %i.ao, %i.ap                    ; 4 uses
  %i.ar = icmp eq i64 %i.aq, 9223372036854775800
  br i1 %i.ar, label %bb.m, label %_ZNKSt6vectorISt10unique_ptrIN11OpenImageIO4v3_123ImageCachePerThreadInfoESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i

bb.m:                                             ; preds = %bb.l
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.330) #48
          to label %.noexc unwind label %bb.o

.noexc:                                           ; preds = %bb.m
  unreachable

_ZNKSt6vectorISt10unique_ptrIN11OpenImageIO4v3_123ImageCachePerThreadInfoESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.l
  %i.as = ashr exact i64 %i.aq, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.as, i64 1)
  %i.at = add nsw i64 %.sroa.speculated.i.i.i, %i.as ; 2 uses
  %i.au = icmp ult i64 %i.at, %i.as
  %i.av = call i64 @llvm.umin.i64(i64 %i.at, i64 1152921504606846975)
  %i.aw = select i1 %i.au, i64 1152921504606846975, i64 %i.av ; 3 uses
  %.not.i.i.i8 = icmp ne i64 %i.aw, 0
  call void @llvm.assume(i1 %.not.i.i.i8)
  %i.ax = shl nuw nsw i64 %i.aw, 3
  %i.ay = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ax) #47
          to label %.noexc9 unwind label %bb.o    ; 10 uses

.noexc9:                                          ; preds = %_ZNKSt6vectorISt10unique_ptrIN11OpenImageIO4v3_123ImageCachePerThreadInfoESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.aq
  store ptr %i.h, ptr %i.az, align 8, !tbaa !678
  %.not10.i.i.i.i.i = icmp eq ptr %i.an, %i.aj
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_123ImageCachePerThreadInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.noexc9
  %i.ba = sub i64 %i.ao, %i.ap
  %i.bb = add i64 %i.ba, -8                       ; 2 uses
  %i.bc = lshr i64 %i.bb, 3
  %i.bd = add nuw nsw i64 %i.bc, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bb, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader61, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.be = add i64 %i.ao, -8
  %i.bf = sub i64 %i.be, %i.ap
  %i.bg = and i64 %i.bf, -8
  %i.bh = add i64 %i.bg, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ay, i64 %i.bh
  %scevgep57 = getelementptr i8, ptr %i.an, i64 %i.bh
  %bound0 = icmp ult ptr %i.ay, %scevgep57
  %bound1 = icmp ult ptr %i.an, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader61, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bd, 4611686018427387900     ; 3 uses
  %i.bi = shl i64 %n.vec, 3                       ; 2 uses
  %i.bj = getelementptr i8, ptr %i.ay, i64 %i.bi  ; 2 uses
  %i.bk = getelementptr i8, ptr %i.an, i64 %i.bi
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bl = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ay, i64 %i.bl ; 2 uses
  %next.gep58 = getelementptr i8, ptr %i.an, i64 %i.bl ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !687)
  call void @llvm.experimental.noalias.scope.decl(metadata !690)
  %i.bm = getelementptr i8, ptr %next.gep58, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep58, align 8, !tbaa !678, !alias.scope !692, !noalias !687
  %wide.load59 = load <2 x i64>, ptr %i.bm, align 8, !tbaa !678, !alias.scope !692, !noalias !687
  %i.bn = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !678, !alias.scope !695, !noalias !692
  store <2 x i64> %wide.load59, ptr %i.bn, align 8, !tbaa !678, !alias.scope !695, !noalias !692
  %i.bo = getelementptr i8, ptr %next.gep58, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep58, align 8, !tbaa !678, !alias.scope !692, !noalias !687
  store <2 x ptr> splat (ptr null), ptr %i.bo, align 8, !tbaa !678, !alias.scope !692, !noalias !687
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bp = icmp eq i64 %index.next, %n.vec
  br i1 %i.bp, label %middle.block, label %vector.body, !llvm.loop !697

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bd, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_123ImageCachePerThreadInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader61

.lr.ph.i.i.i.i.i.preheader61:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.ay, %vector.memcheck ], [ %i.ay, %.lr.ph.i.i.i.i.i.preheader ], [ %i.bj, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.an, %vector.memcheck ], [ %i.an, %.lr.ph.i.i.i.i.i.preheader ], [ %i.bk, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader61, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.bs, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader61 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.br, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader61 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !687)
  call void @llvm.experimental.noalias.scope.decl(metadata !690)
  %i.bq = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !678, !alias.scope !690, !noalias !687
  store i64 %i.bq, ptr %.012.i.i.i.i.i, align 8, !tbaa !678, !alias.scope !687, !noalias !690
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !678, !alias.scope !690, !noalias !687
  %i.br = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.br, %i.aj
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_123ImageCachePerThreadInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !698

_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_123ImageCachePerThreadInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %.noexc9
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ay, %.noexc9 ], [ %i.bj, %middle.block ], [ %i.bs, %.lr.ph.i.i.i.i.i ]
  %i.bt = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_123ImageCachePerThreadInfoESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJRPS3_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_123ImageCachePerThreadInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef %i.aq) #46
  br label %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_123ImageCachePerThreadInfoESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJRPS3_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_123ImageCachePerThreadInfoESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJRPS3_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i: ; preds = %bb.n, %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_123ImageCachePerThreadInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i
  store ptr %i.ay, ptr %i.ah, align 8, !tbaa !686
  store ptr %i.bt, ptr %i.ai, align 16, !tbaa !684
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.aw
  store ptr %i.bu, ptr %i.ak, align 8, !tbaa !685
  br label %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_123ImageCachePerThreadInfoESt14default_deleteIS3_EESaIS6_EE12emplace_backIJRPS3_EEERS6_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_123ImageCachePerThreadInfoESt14default_deleteIS3_EESaIS6_EE12emplace_backIJRPS3_EEERS6_DpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_123ImageCachePerThreadInfoESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJRPS3_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i, %bb.k
  store atomic i8 0, ptr @_ZN11OpenImageIO4v3_114ImageCacheImpl22m_perthread_info_mutexE release, align 1
  br label %bb.p

bb.o:                                             ; preds = %_ZNKSt6vectorISt10unique_ptrIN11OpenImageIO4v3_123ImageCachePerThreadInfoESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i, %bb.m
  %i.bv = landingpad { ptr, i32 }
          cleanup
  store atomic i8 0, ptr @_ZN11OpenImageIO4v3_114ImageCacheImpl22m_perthread_info_mutexE release, align 1
  resume { ptr, i32 } %i.bv

bb.p:                                             ; preds = %_ZTWN11OpenImageIO4v3_112_GLOBAL__N_127imagecache_per_thread_infosE.exit, %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_123ImageCachePerThreadInfoESt14default_deleteIS3_EESaIS6_EE12emplace_backIJRPS3_EEERS6_DpOT_.exit, %bb.a
  %.0 = phi ptr [ %i.h, %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_123ImageCachePerThreadInfoESt14default_deleteIS3_EESaIS6_EE12emplace_backIJRPS3_EEERS6_DpOT_.exit ], [ %i.g, %_ZTWN11OpenImageIO4v3_112_GLOBAL__N_127imagecache_per_thread_infosE.exit ], [ %1, %bb.a ] ; 5 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.0, i64 96 ; 2 uses
  %i.bx = load atomic i32, ptr %i.bw seq_cst, align 4
  %.not7 = icmp eq i32 %i.bx, 0
  br i1 %.not7, label %bb.aa, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.by = atomicrmw xchg ptr @_ZN11OpenImageIO4v3_114ImageCacheImpl22m_perthread_info_mutexE, i8 1 acquire, align 1
  %.0.in.i.not.i2.i.i10 = icmp eq i8 %i.by, 0
  br i1 %.0.in.i.not.i2.i.i10, label %_ZN11OpenImageIO4v3_110spin_mutex10lock_guardC2ERS1_.exit22, label %.preheader.i.i11

.preheader.i.i11:                                 ; preds = %bb.q, %.preheader.i.i11.backedge
  %.sroa.0.1.i.i13 = phi i32 [ %.sroa.0.2.i.i17, %.preheader.i.i11.backedge ], [ 1, %bb.q ] ; 5 uses
  %.not.i.i.i14 = icmp sgt i32 %.sroa.0.1.i.i13, 16
  br i1 %.not.i.i.i14, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.preheader.i.i11
  %i.bz = icmp sgt i32 %.sroa.0.1.i.i13, 0
  br i1 %i.bz, label %.lr.ph.i.i.i.i19, label %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i15

.lr.ph.i.i.i.i19:                                 ; preds = %bb.r, %.lr.ph.i.i.i.i19
  %.03.i.i.i.i20 = phi i32 [ %i.ca, %.lr.ph.i.i.i.i19 ], [ 0, %bb.r ]
  call void asm sideeffect "pause;", "~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !528
  %i.ca = add nuw nsw i32 %.03.i.i.i.i20, 1       ; 2 uses
  %exitcond.not.i.i.i.i21 = icmp eq i32 %i.ca, %.sroa.0.1.i.i13
  br i1 %exitcond.not.i.i.i.i21, label %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i15, label %.lr.ph.i.i.i.i19, !llvm.loop !529

_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i15:       ; preds = %.lr.ph.i.i.i.i19, %bb.r
  %i.cb = shl nsw i32 %.sroa.0.1.i.i13, 1
  br label %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i16

bb.s:                                             ; preds = %.preheader.i.i11
  %i.cc = call noundef i32 @sched_yield() #5      ; 0 uses
  br label %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i16

_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i16: ; preds = %bb.s, %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i15
  %.sroa.0.2.i.i17 = phi i32 [ %.sroa.0.1.i.i13, %bb.s ], [ %i.cb, %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i15 ]
  %i.cd = load volatile i8, ptr @_ZN11OpenImageIO4v3_114ImageCacheImpl22m_perthread_info_mutexE, align 1, !tbaa !530, !range !368, !noundef !290
  %i.ce = trunc nuw i8 %i.cd to i1
  br i1 %i.ce, label %.preheader.i.i11.backedge, label %bb.t

.preheader.i.i11.backedge:                        ; preds = %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i16, %bb.t
  br label %.preheader.i.i11, !llvm.loop !531

bb.t:                                             ; preds = %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i16
  %i.cf = atomicrmw xchg ptr @_ZN11OpenImageIO4v3_114ImageCacheImpl22m_perthread_info_mutexE, i8 1 acquire, align 1
  %.0.in.i.not.i.i.i18 = icmp eq i8 %i.cf, 0
  br i1 %.0.in.i.not.i.i.i18, label %_ZN11OpenImageIO4v3_110spin_mutex10lock_guardC2ERS1_.exit22, label %.preheader.i.i11.backedge

_ZN11OpenImageIO4v3_110spin_mutex10lock_guardC2ERS1_.exit22: ; preds = %bb.t, %bb.q
  %i.cg = getelementptr inbounds nuw i8, ptr %.0, i64 80 ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !599 ; 7 uses
  store ptr null, ptr %i.cg, align 8, !tbaa !599
  %.not.i.i = icmp eq ptr %i.ch, null
  br i1 %.not.i.i, label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheTileEED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %_ZN11OpenImageIO4v3_110spin_mutex10lock_guardC2ERS1_.exit22
  %i.ci = atomicrmw sub ptr %i.ch, i32 1 seq_cst, align 4
  %i.cj = icmp eq i32 %i.ci, 1
  br i1 %i.cj, label %bb.v, label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheTileEED2Ev.exit

bb.v:                                             ; preds = %bb.u
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 40
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !587
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 272
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !289, !nonnull !290, !align !291 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.ch, i64 56
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !611
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 25220
  %i.cr = atomicrmw sub ptr %i.cq, i32 1 seq_cst, align 4 ; 0 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cn, i64 25200
  %i.ct = atomicrmw sub ptr %i.cs, i64 %i.cp seq_cst, align 8 ; 0 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ch, i64 77
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !619, !range !368, !noundef !290
  %i.cw = trunc nuw i8 %i.cv to i1
  br i1 %i.cw, label %_ZN11OpenImageIO4v3_114ImageCacheTileD2Ev.exit.i.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ch, i64 48
  %.pre.i.i.i.i = load ptr, ptr %i.cx, align 8, !tbaa !114 ; 2 uses
  %.not.i.i.i.i.i23 = icmp eq ptr %.pre.i.i.i.i, null
  br i1 %.not.i.i.i.i.i23, label %_ZN11OpenImageIO4v3_114ImageCacheTileD2Ev.exit.i.i.i, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i: ; preds = %bb.w
  call void @_ZdaPv(ptr noundef nonnull %.pre.i.i.i.i) #46
  br label %_ZN11OpenImageIO4v3_114ImageCacheTileD2Ev.exit.i.i.i

_ZN11OpenImageIO4v3_114ImageCacheTileD2Ev.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i, %bb.w, %bb.v
  call void @_ZdlPvm(ptr noundef nonnull %i.ch, i64 noundef 88) #46
  br label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheTileEED2Ev.exit

_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheTileEED2Ev.exit: ; preds = %_ZN11OpenImageIO4v3_114ImageCacheTileD2Ev.exit.i.i.i, %bb.u, %_ZN11OpenImageIO4v3_110spin_mutex10lock_guardC2ERS1_.exit22
  %i.cy = getelementptr inbounds nuw i8, ptr %.0, i64 88 ; 2 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !599 ; 7 uses
  store ptr null, ptr %i.cy, align 8, !tbaa !599
  %.not.i.i25 = icmp eq ptr %i.cz, null
  br i1 %.not.i.i25, label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheTileEED2Ev.exit36, label %bb.x

bb.x:                                             ; preds = %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheTileEED2Ev.exit
  %i.da = atomicrmw sub ptr %i.cz, i32 1 seq_cst, align 4
  %i.db = icmp eq i32 %i.da, 1
  br i1 %i.db, label %bb.y, label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheTileEED2Ev.exit36

bb.y:                                             ; preds = %bb.x
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cz, i64 40
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !587
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 272
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !289, !nonnull !290, !align !291 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cz, i64 56
end_hunk_1
begin_hunk_2_@_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE6resizeEm:bb.a
middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ad, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i, label %.lr.ph.i.i.i.i.preheader15

.lr.ph.i.i.i.i.preheader15:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.w, %.lr.ph.i.i.i.i.preheader ], [ %i.ag, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.c, %.lr.ph.i.i.i.i.preheader ], [ %i.ah, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader15, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader15 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader15 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1078)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1081)
  %i.am = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !114, !alias.scope !1081, !noalias !1078
  store i64 %i.am, ptr %.012.i.i.i.i, align 8, !tbaa !114, !alias.scope !1078, !noalias !1081
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.an, %i.b
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !1084

_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZNKSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE12_M_check_lenEmPKc.exit.i
  %.not.i36.i = icmp eq ptr %i.c, null
  br i1 %.not.i36.i, label %_ZNSt12_Vector_baseIN11OpenImageIO4v3_17ustringESaIS2_EE13_M_deallocateEPS2_m.exit37.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i
  %i.ap = sub i64 %i.l, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ap) #46
  br label %_ZNSt12_Vector_baseIN11OpenImageIO4v3_17ustringESaIS2_EE13_M_deallocateEPS2_m.exit37.i

_ZNSt12_Vector_baseIN11OpenImageIO4v3_17ustringESaIS2_EE13_M_deallocateEPS2_m.exit37.i: ; preds = %bb.e, %_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i
  store ptr %i.w, ptr %0, align 8, !tbaa !1072
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.i
  store ptr %i.aq, ptr %i.a, align 8, !tbaa !1074
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.u
  store ptr %i.ar, ptr %i.j, align 8, !tbaa !1077
  br label %_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE17_M_default_appendEm.exit

bb.f:                                             ; preds = %bb.a
  %i.as = icmp ult i64 %1, %i.g
  br i1 %i.as, label %bb.g, label %_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE17_M_default_appendEm.exit

bb.g:                                             ; preds = %bb.f
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %1 ; 2 uses
  %.not.i4 = icmp eq ptr %i.b, %i.at
  br i1 %.not.i4, label %_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE17_M_default_appendEm.exit, label %_ZSt8_DestroyIPN11OpenImageIO4v3_17ustringES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN11OpenImageIO4v3_17ustringES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %bb.g
  store ptr %i.at, ptr %i.a, align 8, !tbaa !1074
  br label %_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE17_M_default_appendEm.exit

_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE17_M_default_appendEm.exit: ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_17ustringES2_EvT_S4_RSaIT0_E.exit.i, %bb.g, %_ZNSt12_Vector_baseIN11OpenImageIO4v3_17ustringESaIS2_EE13_M_deallocateEPS2_m.exit37.i, %_ZSt27__uninitialized_default_n_aIPN11OpenImageIO4v3_17ustringEmS2_ET_S4_T0_RSaIT1_E.exit.i, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef nonnull ptr @_ZN11OpenImageIO4v3_114ImageCacheImpl18create_thread_infoEv(ptr nofree noundef nonnull align 64 captures(none) dereferenceable(25240) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(336) ptr @_Znwm(i64 noundef 336) #47 ; 17 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(336) %i.a, i8 0, i64 32, i1 false)
  %i.b = load atomic i8, ptr @_ZGVZN3tsl17detail_robin_hash10robin_hashISt4pairIN11OpenImageIO4v3_17ustringEPNS4_14ImageCacheFileEENS_9robin_mapIS5_S7_St4hashIS5_ESt8equal_toIS5_ESaIS8_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESB_SD_SE_Lb0ESH_E23static_empty_bucket_ptrEvE12empty_bucket acquire, align 8
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.d, !prof !15

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN3tsl17detail_robin_hash10robin_hashISt4pairIN11OpenImageIO4v3_17ustringEPNS4_14ImageCacheFileEENS_9robin_mapIS5_S7_St4hashIS5_ESt8equal_toIS5_ESaIS8_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESB_SD_SE_Lb0ESH_E23static_empty_bucket_ptrEvE12empty_bucket) #5
  %.not.i10.i.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i10.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr @_ZZN3tsl17detail_robin_hash10robin_hashISt4pairIN11OpenImageIO4v3_17ustringEPNS4_14ImageCacheFileEENS_9robin_mapIS5_S7_St4hashIS5_ESt8equal_toIS5_ESaIS8_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESB_SD_SE_Lb0ESH_E23static_empty_bucket_ptrEvE12empty_bucket, align 8
  store i16 -1, ptr getelementptr inbounds nuw (i8, ptr @_ZZN3tsl17detail_robin_hash10robin_hashISt4pairIN11OpenImageIO4v3_17ustringEPNS4_14ImageCacheFileEENS_9robin_mapIS5_S7_St4hashIS5_ESt8equal_toIS5_ESaIS8_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESB_SD_SE_Lb0ESH_E23static_empty_bucket_ptrEvE12empty_bucket, i64 4), align 4, !tbaa !662
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZZN3tsl17detail_robin_hash10robin_hashISt4pairIN11OpenImageIO4v3_17ustringEPNS4_14ImageCacheFileEENS_9robin_mapIS5_S7_St4hashIS5_ESt8equal_toIS5_ESaIS8_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESB_SD_SE_Lb0ESH_E23static_empty_bucket_ptrEvE12empty_bucket, i64 6), align 2, !tbaa !680
  %i.e = tail call i32 @__cxa_atexit(ptr nonnull @_ZN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_17ustringEPNS4_14ImageCacheFileEELb1EED2Ev, ptr nonnull @_ZZN3tsl17detail_robin_hash10robin_hashISt4pairIN11OpenImageIO4v3_17ustringEPNS4_14ImageCacheFileEENS_9robin_mapIS5_S7_St4hashIS5_ESt8equal_toIS5_ESaIS8_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESB_SD_SE_Lb0ESH_E23static_empty_bucket_ptrEvE12empty_bucket, ptr nonnull @__dso_handle) #5 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN3tsl17detail_robin_hash10robin_hashISt4pairIN11OpenImageIO4v3_17ustringEPNS4_14ImageCacheFileEENS_9robin_mapIS5_S7_St4hashIS5_ESt8equal_toIS5_ESaIS8_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESB_SD_SE_Lb0ESH_E23static_empty_bucket_ptrEvE12empty_bucket) #5
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr @_ZZN3tsl17detail_robin_hash10robin_hashISt4pairIN11OpenImageIO4v3_17ustringEPNS4_14ImageCacheFileEENS_9robin_mapIS5_S7_St4hashIS5_ESt8equal_toIS5_ESaIS8_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESB_SD_SE_Lb0ESH_E23static_empty_bucket_ptrEvE12empty_bucket, ptr %i.f, align 8, !tbaa !661
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i8 0, ptr %i.h, align 8, !tbaa !681
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 73
  store i8 0, ptr %i.i, align 1, !tbaa !682
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store <2 x float> <float 0.000000e+00, float 5.000000e-01>, ptr %i.j, align 8, !tbaa !32
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i64 0, ptr %i.k, align 8, !tbaa !683
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 296
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %i.m, i8 0, i64 20, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.n, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.o, i8 0, i64 136, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.p, align 8, !tbaa !63
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 304
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.q, i8 0, i64 32, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store atomic i32 0, ptr %i.r seq_cst, align 8
  %i.s = atomicrmw xchg ptr @_ZN11OpenImageIO4v3_114ImageCacheImpl22m_perthread_info_mutexE, i8 1 acquire, align 1
  %.0.in.i.not.i2.i.i = icmp eq i8 %i.s, 0
  br i1 %.0.in.i.not.i2.i.i, label %_ZN11OpenImageIO4v3_110spin_mutex10lock_guardC2ERS1_.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.d, %.preheader.i.i.backedge
  %.sroa.0.1.i.i = phi i32 [ %.sroa.0.2.i.i, %.preheader.i.i.backedge ], [ 1, %bb.d ] ; 5 uses
  %.not.i.i.i = icmp sgt i32 %.sroa.0.1.i.i, 16
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.preheader.i.i
  %i.t = icmp sgt i32 %.sroa.0.1.i.i, 0
  br i1 %i.t, label %.lr.ph.i.i.i.i, label %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.e, %.lr.ph.i.i.i.i
  %.03.i.i.i.i = phi i32 [ %i.u, %.lr.ph.i.i.i.i ], [ 0, %bb.e ]
  tail call void asm sideeffect "pause;", "~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !528
  %i.u = add nuw nsw i32 %.03.i.i.i.i, 1          ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i32 %i.u, %.sroa.0.1.i.i
  br i1 %exitcond.not.i.i.i.i, label %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !529

_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i:         ; preds = %.lr.ph.i.i.i.i, %bb.e
  %i.v = shl nsw i32 %.sroa.0.1.i.i, 1
  br label %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i

bb.f:                                             ; preds = %.preheader.i.i
  %i.w = tail call noundef i32 @sched_yield() #5  ; 0 uses
  br label %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i

_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i: ; preds = %bb.f, %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i
  %.sroa.0.2.i.i = phi i32 [ %.sroa.0.1.i.i, %bb.f ], [ %i.v, %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i ]
  %i.x = load volatile i8, ptr @_ZN11OpenImageIO4v3_114ImageCacheImpl22m_perthread_info_mutexE, align 1, !tbaa !530, !range !368, !noundef !290
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %.preheader.i.i.backedge, label %bb.g

.preheader.i.i.backedge:                          ; preds = %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i, %bb.g
  br label %.preheader.i.i, !llvm.loop !531

bb.g:                                             ; preds = %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i
  %i.z = atomicrmw xchg ptr @_ZN11OpenImageIO4v3_114ImageCacheImpl22m_perthread_info_mutexE, i8 1 acquire, align 1
  %.0.in.i.not.i.i.i = icmp eq i8 %i.z, 0
  br i1 %.0.in.i.not.i.i.i, label %_ZN11OpenImageIO4v3_110spin_mutex10lock_guardC2ERS1_.exit, label %.preheader.i.i.backedge

_ZN11OpenImageIO4v3_110spin_mutex10lock_guardC2ERS1_.exit: ; preds = %bb.g, %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ac = load ptr, ptr %i.ab, align 16, !tbaa !684 ; 6 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !685
  %.not.i = icmp eq ptr %i.ac, %i.ae
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN11OpenImageIO4v3_110spin_mutex10lock_guardC2ERS1_.exit
  store ptr %i.a, ptr %i.ac, align 8, !tbaa !678
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr %i.af, ptr %i.ab, align 16, !tbaa !684
  br label %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_123ImageCachePerThreadInfoESt14default_deleteIS3_EESaIS6_EE12emplace_backIJRPS3_EEERS6_DpOT_.exit

bb.i:                                             ; preds = %_ZN11OpenImageIO4v3_110spin_mutex10lock_guardC2ERS1_.exit
  %i.ag = load ptr, ptr %i.aa, align 8, !tbaa !686 ; 10 uses
  %i.ah = ptrtoint ptr %i.ac to i64               ; 3 uses
  %i.ai = ptrtoint ptr %i.ag to i64               ; 3 uses
  %i.aj = sub i64 %i.ah, %i.ai                    ; 4 uses
  %i.ak = icmp eq i64 %i.aj, 9223372036854775800
  br i1 %i.ak, label %bb.j, label %_ZNKSt6vectorISt10unique_ptrIN11OpenImageIO4v3_123ImageCachePerThreadInfoESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i

bb.j:                                             ; preds = %bb.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.330) #48
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.j
  unreachable

_ZNKSt6vectorISt10unique_ptrIN11OpenImageIO4v3_123ImageCachePerThreadInfoESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.i
  %i.al = ashr exact i64 %i.aj, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.al, i64 1)
  %i.am = add nsw i64 %.sroa.speculated.i.i.i, %i.al ; 2 uses
  %i.an = icmp ult i64 %i.am, %i.al
  %i.ao = tail call i64 @llvm.umin.i64(i64 %i.am, i64 1152921504606846975)
  %i.ap = select i1 %i.an, i64 1152921504606846975, i64 %i.ao ; 3 uses
  %.not.i.i.i4 = icmp ne i64 %i.ap, 0
  tail call void @llvm.assume(i1 %.not.i.i.i4)
  %i.aq = shl nuw nsw i64 %i.ap, 3
  %i.ar = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aq) #47
          to label %.noexc5 unwind label %bb.l    ; 10 uses

.noexc5:                                          ; preds = %_ZNKSt6vectorISt10unique_ptrIN11OpenImageIO4v3_123ImageCachePerThreadInfoESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.aj
  store ptr %i.a, ptr %i.as, align 8, !tbaa !678
  %.not10.i.i.i.i.i = icmp eq ptr %i.ag, %i.ac
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_123ImageCachePerThreadInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.noexc5
  %i.at = sub i64 %i.ah, %i.ai
  %i.au = add i64 %i.at, -8                       ; 2 uses
  %i.av = lshr i64 %i.au, 3
  %i.aw = add nuw nsw i64 %i.av, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.au, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader15, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.ax = add i64 %i.ah, -8
  %i.ay = sub i64 %i.ax, %i.ai
  %i.az = and i64 %i.ay, -8
  %i.ba = add i64 %i.az, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ar, i64 %i.ba
  %scevgep11 = getelementptr i8, ptr %i.ag, i64 %i.ba
  %bound0 = icmp ult ptr %i.ar, %scevgep11
  %bound1 = icmp ult ptr %i.ag, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader15, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aw, 4611686018427387900     ; 3 uses
  %i.bb = shl i64 %n.vec, 3                       ; 2 uses
  %i.bc = getelementptr i8, ptr %i.ar, i64 %i.bb  ; 2 uses
  %i.bd = getelementptr i8, ptr %i.ag, i64 %i.bb
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.be = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ar, i64 %i.be ; 2 uses
  %next.gep12 = getelementptr i8, ptr %i.ag, i64 %i.be ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1085)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1088)
  %i.bf = getelementptr i8, ptr %next.gep12, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep12, align 8, !tbaa !678, !alias.scope !1090, !noalias !1085
  %wide.load13 = load <2 x i64>, ptr %i.bf, align 8, !tbaa !678, !alias.scope !1090, !noalias !1085
  %i.bg = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !678, !alias.scope !1093, !noalias !1090
  store <2 x i64> %wide.load13, ptr %i.bg, align 8, !tbaa !678, !alias.scope !1093, !noalias !1090
  %i.bh = getelementptr i8, ptr %next.gep12, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep12, align 8, !tbaa !678, !alias.scope !1090, !noalias !1085
  store <2 x ptr> splat (ptr null), ptr %i.bh, align 8, !tbaa !678, !alias.scope !1090, !noalias !1085
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bi = icmp eq i64 %index.next, %n.vec
  br i1 %i.bi, label %middle.block, label %vector.body, !llvm.loop !1095

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aw, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_123ImageCachePerThreadInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader15

.lr.ph.i.i.i.i.i.preheader15:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.ar, %vector.memcheck ], [ %i.ar, %.lr.ph.i.i.i.i.i.preheader ], [ %i.bc, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.ag, %vector.memcheck ], [ %i.ag, %.lr.ph.i.i.i.i.i.preheader ], [ %i.bd, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader15, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.bl, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader15 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.bk, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader15 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1085)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1088)
  %i.bj = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !678, !alias.scope !1088, !noalias !1085
  store i64 %i.bj, ptr %.012.i.i.i.i.i, align 8, !tbaa !678, !alias.scope !1085, !noalias !1088
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !678, !alias.scope !1088, !noalias !1085
  %i.bk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bk, %i.ac
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_123ImageCachePerThreadInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1096

_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_123ImageCachePerThreadInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %.noexc5
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ar, %.noexc5 ], [ %i.bc, %middle.block ], [ %i.bl, %.lr.ph.i.i.i.i.i ]
  %i.bm = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_123ImageCachePerThreadInfoESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJRPS3_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_123ImageCachePerThreadInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef %i.aj) #46
  br label %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_123ImageCachePerThreadInfoESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJRPS3_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_123ImageCachePerThreadInfoESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJRPS3_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i: ; preds = %bb.k, %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_123ImageCachePerThreadInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i
  store ptr %i.ar, ptr %i.aa, align 8, !tbaa !686
  store ptr %i.bm, ptr %i.ab, align 16, !tbaa !684
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.ap
  store ptr %i.bn, ptr %i.ad, align 8, !tbaa !685
  br label %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_123ImageCachePerThreadInfoESt14default_deleteIS3_EESaIS6_EE12emplace_backIJRPS3_EEERS6_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_123ImageCachePerThreadInfoESt14default_deleteIS3_EESaIS6_EE12emplace_backIJRPS3_EEERS6_DpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_123ImageCachePerThreadInfoESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJRPS3_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i, %bb.h
  store atomic i8 0, ptr @_ZN11OpenImageIO4v3_114ImageCacheImpl22m_perthread_info_mutexE release, align 1
  ret ptr %i.a

bb.l:                                             ; preds = %_ZNKSt6vectorISt10unique_ptrIN11OpenImageIO4v3_123ImageCachePerThreadInfoESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i, %bb.j
  %i.bo = landingpad { ptr, i32 }
          cleanup
  store atomic i8 0, ptr @_ZN11OpenImageIO4v3_114ImageCacheImpl22m_perthread_info_mutexE release, align 1
  resume { ptr, i32 } %i.bo
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN11OpenImageIO4v3_114ImageCacheImpl19destroy_thread_infoEPNS0_23ImageCachePerThreadInfoE(ptr nofree noundef nonnull readonly align 64 captures(none) dereferenceable(25240) %0, ptr nofree noundef readnone captures(address) %1) local_unnamed_addr #13 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = atomicrmw xchg ptr @_ZN11OpenImageIO4v3_114ImageCacheImpl22m_perthread_info_mutexE, i8 1 acquire, align 1
  %.0.in.i.not.i2.i.i = icmp eq i8 %i.a, 0
  br i1 %.0.in.i.not.i2.i.i, label %_ZN11OpenImageIO4v3_110spin_mutex10lock_guardC2ERS1_.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.b, %.preheader.i.i.backedge
  %.sroa.0.1.i.i = phi i32 [ %.sroa.0.2.i.i, %.preheader.i.i.backedge ], [ 1, %bb.b ] ; 5 uses
  %.not.i.i.i = icmp sgt i32 %.sroa.0.1.i.i, 16
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.preheader.i.i
  %i.b = icmp sgt i32 %.sroa.0.1.i.i, 0
  br i1 %i.b, label %.lr.ph.i.i.i.i, label %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %.lr.ph.i.i.i.i
  %.03.i.i.i.i = phi i32 [ %i.c, %.lr.ph.i.i.i.i ], [ 0, %bb.c ]
  tail call void asm sideeffect "pause;", "~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !528
  %i.c = add nuw nsw i32 %.03.i.i.i.i, 1          ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i32 %i.c, %.sroa.0.1.i.i
  br i1 %exitcond.not.i.i.i.i, label %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !529

_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i:         ; preds = %.lr.ph.i.i.i.i, %bb.c
  %i.d = shl nsw i32 %.sroa.0.1.i.i, 1
  br label %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i

bb.d:                                             ; preds = %.preheader.i.i
  %i.e = tail call noundef i32 @sched_yield() #5  ; 0 uses
  br label %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i

_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i: ; preds = %bb.d, %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i
  %.sroa.0.2.i.i = phi i32 [ %.sroa.0.1.i.i, %bb.d ], [ %i.d, %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i ]
  %i.f = load volatile i8, ptr @_ZN11OpenImageIO4v3_114ImageCacheImpl22m_perthread_info_mutexE, align 1, !tbaa !530, !range !368, !noundef !290
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %.preheader.i.i.backedge, label %bb.e

.preheader.i.i.backedge:                          ; preds = %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i, %bb.e
  br label %.preheader.i.i, !llvm.loop !531

bb.e:                                             ; preds = %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i
  %i.h = atomicrmw xchg ptr @_ZN11OpenImageIO4v3_114ImageCacheImpl22m_perthread_info_mutexE, i8 1 acquire, align 1
  %.0.in.i.not.i.i.i = icmp eq i8 %i.h, 0
  br i1 %.0.in.i.not.i.i.i, label %_ZN11OpenImageIO4v3_110spin_mutex10lock_guardC2ERS1_.exit, label %.preheader.i.i.backedge

_ZN11OpenImageIO4v3_110spin_mutex10lock_guardC2ERS1_.exit: ; preds = %bb.e, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !749  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 16, !tbaa !749 ; 2 uses
  %.not1315 = icmp eq ptr %i.j, %i.l
  br i1 %.not1315, label %_ZNSt10unique_ptrIN11OpenImageIO4v3_123ImageCachePerThreadInfoESt14default_deleteIS2_EE5resetEPS2_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN11OpenImageIO4v3_110spin_mutex10lock_guardC2ERS1_.exit, %.critedge
  %.sroa.09.016 = phi ptr [ %i.n, %.critedge ], [ %i.j, %_ZN11OpenImageIO4v3_110spin_mutex10lock_guardC2ERS1_.exit ] ; 3 uses
  %i.m = load ptr, ptr %.sroa.09.016, align 8, !tbaa !678 ; 3 uses
  %.not8 = icmp eq ptr %i.m, %1
  br i1 %.not8, label %_ZNKSt14default_deleteIN11OpenImageIO4v3_123ImageCachePerThreadInfoEEclEPS2_.exit.i.i, label %.critedge

_ZNKSt14default_deleteIN11OpenImageIO4v3_123ImageCachePerThreadInfoEEclEPS2_.exit.i.i: ; preds = %.lr.ph
  store ptr null, ptr %.sroa.09.016, align 8, !tbaa !678
  tail call void @_ZN11OpenImageIO4v3_123ImageCachePerThreadInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(336) dereferenceable(336) %i.m) #5
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef 336) #46
  br label %_ZNSt10unique_ptrIN11OpenImageIO4v3_123ImageCachePerThreadInfoESt14default_deleteIS2_EE5resetEPS2_.exit

.critedge:                                        ; preds = %.lr.ph
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.09.016, i64 8 ; 2 uses
  %.not13 = icmp eq ptr %i.n, %i.l
  br i1 %.not13, label %_ZNSt10unique_ptrIN11OpenImageIO4v3_123ImageCachePerThreadInfoESt14default_deleteIS2_EE5resetEPS2_.exit, label %.lr.ph

_ZNSt10unique_ptrIN11OpenImageIO4v3_123ImageCachePerThreadInfoESt14default_deleteIS2_EE5resetEPS2_.exit: ; preds = %.critedge, %_ZN11OpenImageIO4v3_110spin_mutex10lock_guardC2ERS1_.exit, %_ZNKSt14default_deleteIN11OpenImageIO4v3_123ImageCachePerThreadInfoEEclEPS2_.exit.i.i
  store atomic i8 0, ptr @_ZN11OpenImageIO4v3_114ImageCacheImpl22m_perthread_info_mutexE release, align 1
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %_ZNSt10unique_ptrIN11OpenImageIO4v3_123ImageCachePerThreadInfoESt14default_deleteIS2_EE5resetEPS2_.exit
  ret void
}

; Function Attrs: nounwind uwtable
define hidden noundef zeroext i1 @_ZNK11OpenImageIO4v3_114ImageCacheImpl9has_errorEv(ptr nofree noundef nonnull readonly align 64 captures(none) dereferenceable(25240) %0) local_unnamed_addr #27 align 2 {
bb.a:
  %i.a = load i8, ptr @__tls_guard, align 1
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZTWN11OpenImageIO4v3_112_GLOBAL__N_122imcache_error_messagesB5cxx11E.exit, !prof !648

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @__tls_guard, align 1
  %i.c = tail call ptr @llvm.invariant.start.p0(i64 1, ptr nonnull @__tls_guard) ; 0 uses
  tail call fastcc void @__cxx_global_var_init.4()
  tail call fastcc void @__cxx_global_var_init.45()
  br label %_ZTWN11OpenImageIO4v3_112_GLOBAL__N_122imcache_error_messagesB5cxx11E.exit

_ZTWN11OpenImageIO4v3_112_GLOBAL__N_122imcache_error_messagesB5cxx11E.exit: ; preds = %bb.a, %bb.b
  %i.d = tail call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN11OpenImageIO4v3_112_GLOBAL__N_122imcache_error_messagesB5cxx11E) ; 4 uses
  %i.e = load i64, ptr %0, align 64, !tbaa !201   ; 2 uses
  %i.f = load i64, ptr %i.d, align 8, !tbaa !543  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !21   ; 4 uses
  %.0813.i.i.i.i.i = and i64 %i.f, %i.e           ; 2 uses
  %i.i = getelementptr inbounds nuw [48 x i8], ptr %i.h, i64 %.0813.i.i.i.i.i ; 2 uses
  %i.j = load i16, ptr %i.i, align 8, !tbaa !16
  %.not14.i.i.i.i.i = icmp slt i16 %i.j, 0
  br i1 %.not14.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZTWN11OpenImageIO4v3_112_GLOBAL__N_122imcache_error_messagesB5cxx11E.exit, %bb.c
end_hunk_2
begin_hunk_3_@_ZNSt6vectorIN11OpenImageIO4v3_114ImageCacheFile9LevelInfoESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_:bb.a
bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_rethrow() #48
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %_ZSt8_DestroyIPN11OpenImageIO4v3_114ImageCacheFile9LevelInfoES3_EvT_S5_RSaIT0_E.exit.thread unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  tail call void @__clang_call_terminate(ptr %i.y) #49
  unreachable

bb.g:                                             ; preds = %bb.d
  unreachable

_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_114ImageCacheFile9LevelInfoES4_SaIS3_EET0_T_S7_S6_RT1_.exit: ; preds = %_ZSt10_ConstructIN11OpenImageIO4v3_114ImageCacheFile9LevelInfoEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i, %_ZNSt16allocator_traitsISaIN11OpenImageIO4v3_114ImageCacheFile9LevelInfoEEE9constructIS3_JS3_EEEvRS4_PT_DpOT0_.exit
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.p, %_ZNSt16allocator_traitsISaIN11OpenImageIO4v3_114ImageCacheFile9LevelInfoEEE9constructIS3_JS3_EEEvRS4_PT_DpOT0_.exit ], [ %i.s, %_ZSt10_ConstructIN11OpenImageIO4v3_114ImageCacheFile9LevelInfoEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i ]
  %i.z = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 40 ; 4 uses
  %.not14.i.i.i.i.i28 = icmp eq ptr %1, %i.b
  br i1 %.not14.i.i.i.i.i28, label %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_114ImageCacheFile9LevelInfoES4_SaIS3_EET0_T_S7_S6_RT1_.exit38, label %.lr.ph.i.i.i.i.i29

.lr.ph.i.i.i.i.i29:                               ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_114ImageCacheFile9LevelInfoES4_SaIS3_EET0_T_S7_S6_RT1_.exit, %_ZSt10_ConstructIN11OpenImageIO4v3_114ImageCacheFile9LevelInfoEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i32
  %.016.i.i.i.i.i30 = phi ptr [ %i.ab, %_ZSt10_ConstructIN11OpenImageIO4v3_114ImageCacheFile9LevelInfoEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i32 ], [ %i.z, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_114ImageCacheFile9LevelInfoES4_SaIS3_EET0_T_S7_S6_RT1_.exit ] ; 3 uses
  %.01215.i.i.i.i.i31 = phi ptr [ %i.aa, %_ZSt10_ConstructIN11OpenImageIO4v3_114ImageCacheFile9LevelInfoEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i32 ], [ %1, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_114ImageCacheFile9LevelInfoES4_SaIS3_EET0_T_S7_S6_RT1_.exit ] ; 2 uses
  invoke void @_ZN11OpenImageIO4v3_114ImageCacheFile9LevelInfoC1ERKS2_(ptr noundef nonnull align 8 dereferenceable(39) %.016.i.i.i.i.i30, ptr noundef nonnull align 8 dereferenceable(39) %.01215.i.i.i.i.i31)
          to label %_ZSt10_ConstructIN11OpenImageIO4v3_114ImageCacheFile9LevelInfoEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i32 unwind label %bb.h

_ZSt10_ConstructIN11OpenImageIO4v3_114ImageCacheFile9LevelInfoEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i32: ; preds = %.lr.ph.i.i.i.i.i29
  %i.aa = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i.i31, i64 40 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i30, i64 40 ; 2 uses
  %.not.i.i.i.i.i33 = icmp eq ptr %i.aa, %i.b
  br i1 %.not.i.i.i.i.i33, label %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_114ImageCacheFile9LevelInfoES4_SaIS3_EET0_T_S7_S6_RT1_.exit38, label %.lr.ph.i.i.i.i.i29, !llvm.loop !1798

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i29
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  %i.ae = tail call ptr @__cxa_begin_catch(ptr %i.ad) #5 ; 0 uses
  invoke void @_ZSt8_DestroyIPN11OpenImageIO4v3_114ImageCacheFile9LevelInfoEEvT_S5_(ptr noundef nonnull %i.z, ptr noundef nonnull %.016.i.i.i.i.i30)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  invoke void @__cxa_rethrow() #48
          to label %bb.l unwind label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %bb.q unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  tail call void @__clang_call_terminate(ptr %i.ah) #49
  unreachable

bb.l:                                             ; preds = %bb.i
  unreachable

_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_114ImageCacheFile9LevelInfoES4_SaIS3_EET0_T_S7_S6_RT1_.exit38: ; preds = %_ZSt10_ConstructIN11OpenImageIO4v3_114ImageCacheFile9LevelInfoEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i32, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_114ImageCacheFile9LevelInfoES4_SaIS3_EET0_T_S7_S6_RT1_.exit
  %.0.lcssa.i.i.i.i.i34 = phi ptr [ %i.z, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_114ImageCacheFile9LevelInfoES4_SaIS3_EET0_T_S7_S6_RT1_.exit ], [ %i.ab, %_ZSt10_ConstructIN11OpenImageIO4v3_114ImageCacheFile9LevelInfoEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i32 ]
  %.not4.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN11OpenImageIO4v3_114ImageCacheFile9LevelInfoEEvT_S5_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_114ImageCacheFile9LevelInfoES4_SaIS3_EET0_T_S7_S6_RT1_.exit38, %_ZSt8_DestroyIN11OpenImageIO4v3_114ImageCacheFile9LevelInfoEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.an, %_ZSt8_DestroyIN11OpenImageIO4v3_114ImageCacheFile9LevelInfoEEvPT_.exit.i.i ], [ %i.c, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_114ImageCacheFile9LevelInfoES4_SaIS3_EET0_T_S7_S6_RT1_.exit38 ] ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !107 ; 2 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.aj) #46
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.lr.ph.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !111 ; 2 uses
  %.not.i.i.i.i.i39 = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i.i.i39, label %_ZSt8_DestroyIN11OpenImageIO4v3_114ImageCacheFile9LevelInfoEEvPT_.exit.i.i, label %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i

_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i: ; preds = %bb.n
  tail call void @_ZdaPv(ptr noundef nonnull %i.am) #46
  br label %_ZSt8_DestroyIN11OpenImageIO4v3_114ImageCacheFile9LevelInfoEEvPT_.exit.i.i

_ZSt8_DestroyIN11OpenImageIO4v3_114ImageCacheFile9LevelInfoEEvPT_.exit.i.i: ; preds = %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i, %bb.n
  %i.an = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 40 ; 2 uses
  %.not.i.i = icmp eq ptr %i.an, %i.b
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN11OpenImageIO4v3_114ImageCacheFile9LevelInfoEEvT_S5_.exit, label %.lr.ph.i.i, !llvm.loop !376

_ZSt8_DestroyIPN11OpenImageIO4v3_114ImageCacheFile9LevelInfoEEvT_S5_.exit: ; preds = %_ZSt8_DestroyIN11OpenImageIO4v3_114ImageCacheFile9LevelInfoEEvPT_.exit.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN11OpenImageIO4v3_114ImageCacheFile9LevelInfoES4_SaIS3_EET0_T_S7_S6_RT1_.exit38
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i40 = icmp eq ptr %i.c, null
  br i1 %.not.i40, label %_ZNSt12_Vector_baseIN11OpenImageIO4v3_114ImageCacheFile9LevelInfoESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.o

bb.o:                                             ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_114ImageCacheFile9LevelInfoEEvT_S5_.exit
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !373
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = sub i64 %i.aq, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ar) #46
  br label %_ZNSt12_Vector_baseIN11OpenImageIO4v3_114ImageCacheFile9LevelInfoESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseIN11OpenImageIO4v3_114ImageCacheFile9LevelInfoESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_114ImageCacheFile9LevelInfoEEvT_S5_.exit, %bb.o
  store ptr %i.p, ptr %0, align 8, !tbaa !374
  store ptr %.0.lcssa.i.i.i.i.i34, ptr %i.a, align 8, !tbaa !375
  %i.as = getelementptr inbounds nuw [40 x i8], ptr %i.p, i64 %i.l
  store ptr %i.as, ptr %i.ao, align 8, !tbaa !373
  ret void

bb.p:                                             ; preds = %_ZNKSt6vectorIN11OpenImageIO4v3_114ImageCacheFile9LevelInfoESaIS3_EE12_M_check_lenEmPKc.exit
  %i.at = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.q

_ZSt8_DestroyIPN11OpenImageIO4v3_114ImageCacheFile9LevelInfoES3_EvT_S5_RSaIT0_E.exit.thread: ; preds = %bb.e
  %i.au = extractvalue { ptr, i32 } %i.w, 0
  %i.av = tail call ptr @__cxa_begin_catch(ptr %i.au) #5 ; 0 uses
  tail call void @_ZN11OpenImageIO4v3_114ImageCacheFile9LevelInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(39) dereferenceable(39) %i.q) #5
  br label %_ZSt8_DestroyIPN11OpenImageIO4v3_114ImageCacheFile9LevelInfoES3_EvT_S5_RSaIT0_E.exit

bb.q:                                             ; preds = %bb.p, %bb.j
  %.0.lpad-body.ph = phi ptr [ %i.z, %bb.j ], [ %i.p, %bb.p ]
  %eh.lpad-body.ph = phi { ptr, i32 } [ %i.af, %bb.j ], [ %i.at, %bb.p ]
  %i.aw = extractvalue { ptr, i32 } %eh.lpad-body.ph, 0
  %i.ax = tail call ptr @__cxa_begin_catch(ptr %i.aw) #5 ; 0 uses
  invoke void @_ZSt8_DestroyIPN11OpenImageIO4v3_114ImageCacheFile9LevelInfoEEvT_S5_(ptr noundef nonnull %i.p, ptr noundef nonnull %.0.lpad-body.ph)
          to label %_ZSt8_DestroyIPN11OpenImageIO4v3_114ImageCacheFile9LevelInfoES3_EvT_S5_RSaIT0_E.exit unwind label %bb.r

bb.r:                                             ; preds = %bb.q, %_ZSt8_DestroyIPN11OpenImageIO4v3_114ImageCacheFile9LevelInfoES3_EvT_S5_RSaIT0_E.exit
  %i.ay = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.s unwind label %bb.t

_ZSt8_DestroyIPN11OpenImageIO4v3_114ImageCacheFile9LevelInfoES3_EvT_S5_RSaIT0_E.exit: ; preds = %bb.q, %_ZSt8_DestroyIPN11OpenImageIO4v3_114ImageCacheFile9LevelInfoES3_EvT_S5_RSaIT0_E.exit.thread
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #46
  invoke void @__cxa_rethrow() #48
          to label %bb.u unwind label %bb.r

bb.s:                                             ; preds = %bb.r
  resume { ptr, i32 } %i.ay

bb.t:                                             ; preds = %bb.r
  %i.az = landingpad { ptr, i32 }
          catch ptr null
  %i.ba = extractvalue { ptr, i32 } %i.az, 0
  tail call void @__clang_call_terminate(ptr %i.ba) #49
  unreachable

bb.u:                                             ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_114ImageCacheFile9LevelInfoES3_EvT_S5_RSaIT0_E.exit
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNSt19__shrink_to_fit_auxISt6vectorISt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS4_EESaIS7_EELb1EE8_S_do_itERS9_(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #13 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !656    ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !656  ; 4 uses
  %i.d = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.a to i64                 ; 4 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS3_EESaIS6_EE17_S_check_init_lenEmRKS7_.exit.i.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.317) #48
          to label %.noexc.i unwind label %_ZNSt12_Vector_baseISt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS3_EESaIS6_EED2Ev.exit.i

.noexc.i:                                         ; preds = %bb.b
  unreachable

_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS3_EESaIS6_EE17_S_check_init_lenEmRKS7_.exit.i.i: ; preds = %bb.a
  %.not.i.i.i = icmp eq ptr %i.c, %i.a
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS3_EESaIS6_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS6_S8_EEEvEET_SG_RKS7_.exit.thread, label %.lr.ph.i.i.i.i.preheader.i.i

_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS3_EESaIS6_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS6_S8_EEEvEET_SG_RKS7_.exit.thread: ; preds = %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS3_EESaIS6_EE17_S_check_init_lenEmRKS7_.exit.i.i
  %i.h = getelementptr inbounds nuw i8, ptr null, i64 %i.f
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !274
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  store ptr %i.h, ptr %i.i, align 8, !tbaa !274
  br label %_ZSt8_DestroyIPSt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i

.lr.ph.i.i.i.i.preheader.i.i:                     ; preds = %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS3_EESaIS6_EE17_S_check_init_lenEmRKS7_.exit.i.i
  %i.k = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #47
          to label %.lr.ph.i.i.i.i.i.i.preheader unwind label %_ZNSt12_Vector_baseISt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS3_EESaIS6_EED2Ev.exit.i ; 8 uses

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.lr.ph.i.i.i.i.preheader.i.i
  %i.l = sub i64 %i.d, %i.e
  %i.m = add i64 %i.l, -8                         ; 2 uses
  %i.n = lshr i64 %i.m, 3
  %i.o = add nuw nsw i64 %i.n, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.m, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader30, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %i.p = add i64 %i.d, -8
  %i.q = sub i64 %i.p, %i.e
  %i.r = and i64 %i.q, -8
  %i.s = add i64 %i.r, 8                          ; 2 uses
  %scevgep = getelementptr i8, ptr %i.k, i64 %i.s
  %scevgep26 = getelementptr i8, ptr %i.a, i64 %i.s
  %bound0 = icmp ult ptr %i.k, %scevgep26
  %bound1 = icmp ult ptr %i.a, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.preheader30, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.o, 4611686018427387900      ; 3 uses
  %i.t = shl i64 %n.vec, 3                        ; 2 uses
  %i.u = getelementptr i8, ptr %i.k, i64 %i.t     ; 2 uses
  %i.v = getelementptr i8, ptr %i.a, i64 %i.t
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.w = shl i64 %index, 3                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.k, i64 %i.w ; 2 uses
  %next.gep27 = getelementptr i8, ptr %i.a, i64 %i.w ; 4 uses
  %i.x = getelementptr i8, ptr %next.gep27, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep27, align 8, !tbaa !181, !alias.scope !1814
  %wide.load28 = load <2 x i64>, ptr %i.x, align 8, !tbaa !181, !alias.scope !1814
  %i.y = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !181, !alias.scope !1817, !noalias !1814
  store <2 x i64> %wide.load28, ptr %i.y, align 8, !tbaa !181, !alias.scope !1817, !noalias !1814
  %i.z = getelementptr i8, ptr %next.gep27, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep27, align 8, !tbaa !181, !alias.scope !1814
  store <2 x ptr> splat (ptr null), ptr %i.z, align 8, !tbaa !181, !alias.scope !1814
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !1819

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.o, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS3_EESaIS6_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS6_S8_EEEvEET_SG_RKS7_.exit, label %.lr.ph.i.i.i.i.i.i.preheader30

.lr.ph.i.i.i.i.i.i.preheader30:                   ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.k, %vector.memcheck ], [ %i.k, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.u, %middle.block ]
  %.sroa.08.011.i.i.i.i.i.i.ph = phi ptr [ %i.a, %vector.memcheck ], [ %i.a, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.v, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader30, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader30 ] ; 2 uses
  %.sroa.08.011.i.i.i.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.08.011.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader30 ] ; 3 uses
  %i.ab = load i64, ptr %.sroa.08.011.i.i.i.i.i.i, align 8, !tbaa !181
  store i64 %i.ab, ptr %.012.i.i.i.i.i.i, align 8, !tbaa !181
  store ptr null, ptr %.sroa.08.011.i.i.i.i.i.i, align 8, !tbaa !181
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.08.011.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ac, %i.c
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS3_EESaIS6_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS6_S8_EEEvEET_SG_RKS7_.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1820

_ZNSt12_Vector_baseISt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS3_EESaIS6_EED2Ev.exit.i: ; preds = %bb.b, %.lr.ph.i.i.i.i.preheader.i.i
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %.09 = extractvalue { ptr, i32 } %i.ae, 0
  %i.af = tail call ptr @__cxa_begin_catch(ptr %.09) #5 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS3_EESaIS6_EED2Ev.exit unwind label %bb.e

_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS3_EESaIS6_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS6_S8_EEEvEET_SG_RKS7_.exit: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block
  %.lcssa = phi ptr [ %i.u, %middle.block ], [ %i.ad, %.lr.ph.i.i.i.i.i.i ]
  %i.ag = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.f
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !274
  store ptr %i.k, ptr %0, align 8, !tbaa !271
  store ptr %.lcssa, ptr %i.b, align 8, !tbaa !272
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !274
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS3_EESaIS6_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS6_S8_EEEvEET_SG_RKS7_.exit, %_ZSt8_DestroyISt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS3_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ak, %_ZSt8_DestroyISt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS3_EEEvPT_.exit.i.i.i ], [ %i.a, %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS3_EESaIS6_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS6_S8_EEEvEET_SG_RKS7_.exit ] ; 3 uses
  %i.aj = load ptr, ptr %.05.i.i.i, align 8, !tbaa !181 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS3_EEEvPT_.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i
  tail call void @_ZNKSt14default_deleteIN11OpenImageIO4v3_19ImageSpecEEclEPS2_(ptr noundef nonnull align 8 dereferenceable(8) %.05.i.i.i, ptr noundef nonnull %i.aj)
  br label %_ZSt8_DestroyISt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS3_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS3_EEEvPT_.exit.i.i.i: ; preds = %bb.c, %.lr.ph.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i10 = icmp eq ptr %i.ak, %i.c
  br i1 %.not.i.i.i10, label %_ZSt8_DestroyIPSt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !273

_ZSt8_DestroyIPSt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS3_EEEvPT_.exit.i.i.i, %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS3_EESaIS6_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS6_S8_EEEvEET_SG_RKS7_.exit.thread
  %i.al = phi ptr [ %i.j, %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS3_EESaIS6_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS6_S8_EEEvEET_SG_RKS7_.exit.thread ], [ %i.ai, %_ZSt8_DestroyISt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS3_EEEvPT_.exit.i.i.i ]
  %.not.i.i1.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS3_EESaIS6_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = sub i64 %i.am, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.an) #46
  br label %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS3_EESaIS6_EED2Ev.exit

_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS3_EESaIS6_EED2Ev.exit: ; preds = %bb.d, %_ZSt8_DestroyIPSt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i, %_ZNSt12_Vector_baseISt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS3_EESaIS6_EED2Ev.exit.i
  %.0 = phi i1 [ false, %_ZNSt12_Vector_baseISt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS3_EESaIS6_EED2Ev.exit.i ], [ true, %_ZSt8_DestroyIPSt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i ], [ true, %bb.d ]
  ret i1 %.0

bb.e:                                             ; preds = %_ZNSt12_Vector_baseISt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS3_EESaIS6_EED2Ev.exit.i
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  %i.ap = extractvalue { ptr, i32 } %i.ao, 0
  tail call void @__clang_call_terminate(ptr %i.ap) #49
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNSt19__shrink_to_fit_auxISt6vectorISt10unique_ptrIN11OpenImageIO4v3_114ImageCacheFile9ImageDimsESt14default_deleteIS5_EESaIS8_EELb1EE8_S_do_itERSA_(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #13 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !657    ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !657  ; 4 uses
  %i.d = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.a to i64                 ; 4 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_114ImageCacheFile9ImageDimsESt14default_deleteIS4_EESaIS7_EE17_S_check_init_lenEmRKS8_.exit.i.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.317) #48
          to label %.noexc.i unwind label %_ZNSt12_Vector_baseISt10unique_ptrIN11OpenImageIO4v3_114ImageCacheFile9ImageDimsESt14default_deleteIS4_EESaIS7_EED2Ev.exit.i

.noexc.i:                                         ; preds = %bb.b
  unreachable

_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_114ImageCacheFile9ImageDimsESt14default_deleteIS4_EESaIS7_EE17_S_check_init_lenEmRKS8_.exit.i.i: ; preds = %bb.a
  %.not.i.i.i = icmp eq ptr %i.c, %i.a
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_114ImageCacheFile9ImageDimsESt14default_deleteIS4_EESaIS7_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS7_S9_EEEvEET_SH_RKS8_.exit.thread, label %.lr.ph.i.i.i.i.preheader.i.i

_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_114ImageCacheFile9ImageDimsESt14default_deleteIS4_EESaIS7_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS7_S9_EEEvEET_SH_RKS8_.exit.thread: ; preds = %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_114ImageCacheFile9ImageDimsESt14default_deleteIS4_EESaIS7_EE17_S_check_init_lenEmRKS8_.exit.i.i
  %i.h = getelementptr inbounds nuw i8, ptr null, i64 %i.f
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !270
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  store ptr %i.h, ptr %i.i, align 8, !tbaa !270
  br label %_ZSt8_DestroyIPSt10unique_ptrIN11OpenImageIO4v3_114ImageCacheFile9ImageDimsESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exit.i

.lr.ph.i.i.i.i.preheader.i.i:                     ; preds = %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_114ImageCacheFile9ImageDimsESt14default_deleteIS4_EESaIS7_EE17_S_check_init_lenEmRKS8_.exit.i.i
  %i.k = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #47
          to label %.lr.ph.i.i.i.i.i.i.preheader unwind label %_ZNSt12_Vector_baseISt10unique_ptrIN11OpenImageIO4v3_114ImageCacheFile9ImageDimsESt14default_deleteIS4_EESaIS7_EED2Ev.exit.i ; 8 uses

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.lr.ph.i.i.i.i.preheader.i.i
  %i.l = sub i64 %i.d, %i.e
  %i.m = add i64 %i.l, -8                         ; 2 uses
  %i.n = lshr i64 %i.m, 3
  %i.o = add nuw nsw i64 %i.n, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.m, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader30, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %i.p = add i64 %i.d, -8
  %i.q = sub i64 %i.p, %i.e
  %i.r = and i64 %i.q, -8
  %i.s = add i64 %i.r, 8                          ; 2 uses
  %scevgep = getelementptr i8, ptr %i.k, i64 %i.s
  %scevgep26 = getelementptr i8, ptr %i.a, i64 %i.s
  %bound0 = icmp ult ptr %i.k, %scevgep26
  %bound1 = icmp ult ptr %i.a, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.preheader30, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.o, 4611686018427387900      ; 3 uses
  %i.t = shl i64 %n.vec, 3                        ; 2 uses
  %i.u = getelementptr i8, ptr %i.k, i64 %i.t     ; 2 uses
  %i.v = getelementptr i8, ptr %i.a, i64 %i.t
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.w = shl i64 %index, 3                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.k, i64 %i.w ; 2 uses
  %next.gep27 = getelementptr i8, ptr %i.a, i64 %i.w ; 4 uses
  %i.x = getelementptr i8, ptr %next.gep27, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep27, align 8, !tbaa !268, !alias.scope !1821
  %wide.load28 = load <2 x i64>, ptr %i.x, align 8, !tbaa !268, !alias.scope !1821
  %i.y = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !268, !alias.scope !1824, !noalias !1821
  store <2 x i64> %wide.load28, ptr %i.y, align 8, !tbaa !268, !alias.scope !1824, !noalias !1821
  %i.z = getelementptr i8, ptr %next.gep27, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep27, align 8, !tbaa !268, !alias.scope !1821
  store <2 x ptr> splat (ptr null), ptr %i.z, align 8, !tbaa !268, !alias.scope !1821
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !1826

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.o, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_114ImageCacheFile9ImageDimsESt14default_deleteIS4_EESaIS7_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS7_S9_EEEvEET_SH_RKS8_.exit, label %.lr.ph.i.i.i.i.i.i.preheader30

.lr.ph.i.i.i.i.i.i.preheader30:                   ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.k, %vector.memcheck ], [ %i.k, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.u, %middle.block ]
  %.sroa.08.011.i.i.i.i.i.i.ph = phi ptr [ %i.a, %vector.memcheck ], [ %i.a, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.v, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader30, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader30 ] ; 2 uses
  %.sroa.08.011.i.i.i.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.08.011.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader30 ] ; 3 uses
  %i.ab = load i64, ptr %.sroa.08.011.i.i.i.i.i.i, align 8, !tbaa !268
  store i64 %i.ab, ptr %.012.i.i.i.i.i.i, align 8, !tbaa !268
  store ptr null, ptr %.sroa.08.011.i.i.i.i.i.i, align 8, !tbaa !268
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.08.011.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ac, %i.c
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_114ImageCacheFile9ImageDimsESt14default_deleteIS4_EESaIS7_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS7_S9_EEEvEET_SH_RKS8_.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1827

_ZNSt12_Vector_baseISt10unique_ptrIN11OpenImageIO4v3_114ImageCacheFile9ImageDimsESt14default_deleteIS4_EESaIS7_EED2Ev.exit.i: ; preds = %bb.b, %.lr.ph.i.i.i.i.preheader.i.i
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %.09 = extractvalue { ptr, i32 } %i.ae, 0
  %i.af = tail call ptr @__cxa_begin_catch(ptr %.09) #5 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_114ImageCacheFile9ImageDimsESt14default_deleteIS4_EESaIS7_EED2Ev.exit unwind label %bb.d

_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_114ImageCacheFile9ImageDimsESt14default_deleteIS4_EESaIS7_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS7_S9_EEEvEET_SH_RKS8_.exit: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block
  %.lcssa = phi ptr [ %i.u, %middle.block ], [ %i.ad, %.lr.ph.i.i.i.i.i.i ]
  %i.ag = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.f
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !270
  store ptr %i.k, ptr %0, align 8, !tbaa !266
  store ptr %.lcssa, ptr %i.b, align 8, !tbaa !267
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !270
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_114ImageCacheFile9ImageDimsESt14default_deleteIS4_EESaIS7_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS7_S9_EEEvEET_SH_RKS8_.exit, %_ZSt8_DestroyISt10unique_ptrIN11OpenImageIO4v3_114ImageCacheFile9ImageDimsESt14default_deleteIS4_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ak, %_ZSt8_DestroyISt10unique_ptrIN11OpenImageIO4v3_114ImageCacheFile9ImageDimsESt14default_deleteIS4_EEEvPT_.exit.i.i.i ], [ %i.a, %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_114ImageCacheFile9ImageDimsESt14default_deleteIS4_EESaIS7_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS7_S9_EEEvEET_SH_RKS8_.exit ] ; 2 uses
  %i.aj = load ptr, ptr %.05.i.i.i, align 8, !tbaa !268 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN11OpenImageIO4v3_114ImageCacheFile9ImageDimsESt14default_deleteIS4_EEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN11OpenImageIO4v3_114ImageCacheFile9ImageDimsEEclEPS3_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN11OpenImageIO4v3_114ImageCacheFile9ImageDimsEEclEPS3_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef 64) #46
  br label %_ZSt8_DestroyISt10unique_ptrIN11OpenImageIO4v3_114ImageCacheFile9ImageDimsESt14default_deleteIS4_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10unique_ptrIN11OpenImageIO4v3_114ImageCacheFile9ImageDimsESt14default_deleteIS4_EEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN11OpenImageIO4v3_114ImageCacheFile9ImageDimsEEclEPS3_.exit.i.i.i.i.i, %.lr.ph.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i10 = icmp eq ptr %i.ak, %i.c
  br i1 %.not.i.i.i10, label %_ZSt8_DestroyIPSt10unique_ptrIN11OpenImageIO4v3_114ImageCacheFile9ImageDimsESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !269

_ZSt8_DestroyIPSt10unique_ptrIN11OpenImageIO4v3_114ImageCacheFile9ImageDimsESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN11OpenImageIO4v3_114ImageCacheFile9ImageDimsESt14default_deleteIS4_EEEvPT_.exit.i.i.i, %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_114ImageCacheFile9ImageDimsESt14default_deleteIS4_EESaIS7_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS7_S9_EEEvEET_SH_RKS8_.exit.thread
  %i.al = phi ptr [ %i.j, %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_114ImageCacheFile9ImageDimsESt14default_deleteIS4_EESaIS7_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS7_S9_EEEvEET_SH_RKS8_.exit.thread ], [ %i.ai, %_ZSt8_DestroyISt10unique_ptrIN11OpenImageIO4v3_114ImageCacheFile9ImageDimsESt14default_deleteIS4_EEEvPT_.exit.i.i.i ]
  %.not.i.i1.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_114ImageCacheFile9ImageDimsESt14default_deleteIS4_EESaIS7_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN11OpenImageIO4v3_114ImageCacheFile9ImageDimsESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exit.i
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = sub i64 %i.am, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.an) #46
  br label %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_114ImageCacheFile9ImageDimsESt14default_deleteIS4_EESaIS7_EED2Ev.exit

_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_114ImageCacheFile9ImageDimsESt14default_deleteIS4_EESaIS7_EED2Ev.exit: ; preds = %bb.c, %_ZSt8_DestroyIPSt10unique_ptrIN11OpenImageIO4v3_114ImageCacheFile9ImageDimsESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exit.i, %_ZNSt12_Vector_baseISt10unique_ptrIN11OpenImageIO4v3_114ImageCacheFile9ImageDimsESt14default_deleteIS4_EESaIS7_EED2Ev.exit.i
  %.0 = phi i1 [ false, %_ZNSt12_Vector_baseISt10unique_ptrIN11OpenImageIO4v3_114ImageCacheFile9ImageDimsESt14default_deleteIS4_EESaIS7_EED2Ev.exit.i ], [ true, %_ZSt8_DestroyIPSt10unique_ptrIN11OpenImageIO4v3_114ImageCacheFile9ImageDimsESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exit.i ], [ true, %bb.c ]
  ret i1 %.0

bb.d:                                             ; preds = %_ZNSt12_Vector_baseISt10unique_ptrIN11OpenImageIO4v3_114ImageCacheFile9ImageDimsESt14default_deleteIS4_EESaIS7_EED2Ev.exit.i
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  %i.ap = extractvalue { ptr, i32 } %i.ao, 0
  tail call void @__clang_call_terminate(ptr %i.ap) #49
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorImSaImEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPmS1_EEmRKm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_ZSt4fillIPmmEvT_S1_RKT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !185
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !577  ; 15 uses
  %i.e = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 5 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  %.not65 = icmp ult i64 %i.h, %2
  br i1 %.not65, label %bb.q, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i64, ptr %3, align 8, !tbaa !201    ; 6 uses
  %i.j = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.k = sub i64 %i.f, %i.j                       ; 6 uses
  %i.l = ashr exact i64 %i.k, 3                   ; 3 uses
  %i.m = icmp ugt i64 %i.l, %2
  br i1 %i.m, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.n = sub i64 0, %2
  %i.o = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.n ; 3 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = icmp sgt i64 %2, 1
  br i1 %i.q, label %bb.e, label %bb.f, !prof !548

bb.e:                                             ; preds = %bb.d
  %.idx.neg = shl nsw i64 %2, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.d, ptr nonnull align 8 %i.o, i64 %.idx.neg, i1 false)
  %.pre97 = load ptr, ptr %i.c, align 8, !tbaa !577
  br label %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.r = icmp eq i64 %2, 1
  br i1 %i.r, label %bb.g, label %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.s = load i64, ptr %i.o, align 8, !tbaa !201
  store i64 %i.s, ptr %i.d, align 8, !tbaa !201
  br label %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit

_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit: ; preds = %bb.g, %bb.f, %bb.e
  %i.t = phi ptr [ %i.d, %bb.g ], [ %i.d, %bb.f ], [ %.pre97, %bb.e ]
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %2
  store ptr %i.u, ptr %i.c, align 8, !tbaa !577
  %i.v = sub i64 %i.p, %i.j                       ; 3 uses
  %i.w = ashr exact i64 %i.v, 3                   ; 2 uses
  %i.x = icmp sgt i64 %i.w, 1
  br i1 %i.x, label %bb.h, label %bb.i, !prof !548

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit
  %i.y = sub nsw i64 0, %i.w
  %i.z = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.y
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.z, ptr align 8 %1, i64 %i.v, i1 false)
  br label %bb.k

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit
  %i.aa = icmp eq i64 %i.v, 8
  br i1 %i.aa, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds i8, ptr %i.d, i64 -8
  %i.ac = load i64, ptr %1, align 8, !tbaa !201
  store i64 %i.ac, ptr %i.ab, align 8, !tbaa !201
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %.idx = shl nuw nsw i64 %2, 3                   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.ae = add nsw i64 %.idx, -8                   ; 2 uses
  %i.af = lshr exact i64 %i.ae, 3
  %i.ag = add nuw nsw i64 %i.af, 1                ; 2 uses
  %min.iters.check127 = icmp ult i64 %i.ae, 24
  br i1 %min.iters.check127, label %.lr.ph.i.i.i.preheader, label %vector.ph128

vector.ph128:                                     ; preds = %bb.k
  %n.vec130 = and i64 %i.ag, 4611686018427387900  ; 3 uses
  %i.ah = shl i64 %n.vec130, 3
end_hunk_3
