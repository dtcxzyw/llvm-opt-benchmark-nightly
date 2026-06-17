inline.NumInlined: 13633
inline.NumDeleted: 4657
begin_hunk_0_@_ZN11OpenImageIO4v3_17is_sameERKNS0_9ImageSpecES3_:bb.a
  %.sroa.0.0.copyload.i79 = load i64, ptr %i.gn, align 8 ; 2 uses
  %i.go = trunc i64 %.sroa.0.0.copyload.i78 to i24
  %i.gp = trunc i64 %.sroa.0.0.copyload.i79 to i24
  %or.cond96 = icmp ne i24 %i.go, %i.gp
  %.unshifted = xor i64 %.sroa.0.0.copyload.i79, %.sroa.0.0.copyload.i78
  %i.gq = icmp ugt i64 %.unshifted, 4294967295
  %or.cond97 = or i1 %or.cond96, %i.gq
  %i.gr = lshr i64 %.sroa.0.0.copyload.i78, 32
  %i.gs = trunc nuw i64 %i.gr to i32
  %i.gt = lshr i64 %.sroa.0.0.copyload.i78, 8
  br i1 %or.cond97, label %_ZN11OpenImageIO4v3_119has_same_dimensionsINS0_9ImageSpecEEEbRKT_S5_.exit.thread, label %bb.ae

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
  %narrow.i.i81 = tail call i32 @llvm.smax.i32(i32 %i.hg, i32 1)
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gl, i64 9
  %i.hi = load i8, ptr %i.hh, align 1, !tbaa !377
  %i.hj = zext i8 %i.hi to i64
  %i.hk = tail call noundef i64 @_ZNK11OpenImageIO4v3_18TypeDesc8basesizeEv(ptr noundef nonnull align 4 dereferenceable(8) %i.gn) #5
  %i.hl = mul i64 %i.hk, %i.hj
  %i.hm = trunc i64 %i.hl to i32
  %i.hn = mul i32 %narrow.i.i81, %i.he
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
  %narrow.i.i82 = tail call i32 @llvm.smax.i32(i32 %i.ie, i32 1)
  %i.if = load i8, ptr %i.hp, align 1, !tbaa !377
  %i.ig = zext i8 %i.if to i64
  %i.ih = tail call noundef i64 @_ZNK11OpenImageIO4v3_18TypeDesc8basesizeEv(ptr noundef nonnull align 4 dereferenceable(8) %i.gm) #5
  %i.ii = mul i64 %i.ih, %i.ig
  %i.ij = trunc i64 %i.ii to i32
  %i.ik = mul i32 %narrow.i.i82, %i.id
  %i.il = mul i32 %i.ik, %i.ij
  %i.im = sext i32 %i.il to i64
  %bcmp = tail call i32 @bcmp(ptr %i.hw, ptr %i.ic, i64 %i.im)
  %.not66 = icmp eq i32 %bcmp, 0
  br i1 %.not66, label %bb.ah, label %_ZN11OpenImageIO4v3_119has_same_dimensionsINS0_9ImageSpecEEEbRKT_S5_.exit.thread

bb.ah:                                            ; preds = %bb.ag
  %i.in = add nuw i64 %.053113, 1                 ; 2 uses
  %i.io = load ptr, ptr %i.ek, align 8, !tbaa !386
  %i.ip = load ptr, ptr %i.ej, align 8, !tbaa !387 ; 2 uses
  %i.iq = ptrtoint ptr %i.io to i64
  %i.ir = ptrtoint ptr %i.ip to i64
  %i.is = sub i64 %i.iq, %i.ir
  %i.it = sdiv exact i64 %i.is, 40
  %.not125 = icmp ult i64 %i.in, %i.it
  br i1 %.not125, label %_ZNKSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EE2atEm.exit, label %_ZN11OpenImageIO4v3_119has_same_dimensionsINS0_9ImageSpecEEEbRKT_S5_.exit.thread, !llvm.loop !391

_ZN11OpenImageIO4v3_119has_same_dimensionsINS0_9ImageSpecEEEbRKT_S5_.exit.thread: ; preds = %_ZNKSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE2atEm.exit, %bb.z, %bb.aa, %_ZNK11OpenImageIO4v3_18TypeDescneERKS1_.exit70, %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE2atEm.exit, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, %bb.ad, %bb.af, %_ZNKSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EE2atEm.exit76, %bb.ae, %bb.ah, %bb.ag, %.preheader, %bb.s, %bb.t, %bb.u, %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.x, %bb.w, %bb.v, %_ZNK11OpenImageIO4v3_18TypeDescneERKS1_.exit, %bb.r, %bb.q, %bb.p, %_ZN11OpenImageIO4v3_119has_same_dimensionsINS0_9ImageSpecEEEbRKT_S5_.exit
  %.5 = phi i1 [ false, %_ZN11OpenImageIO4v3_119has_same_dimensionsINS0_9ImageSpecEEEbRKT_S5_.exit ], [ false, %bb.p ], [ false, %bb.q ], [ false, %bb.r ], [ false, %_ZNK11OpenImageIO4v3_18TypeDescneERKS1_.exit ], [ false, %bb.v ], [ false, %bb.w ], [ false, %bb.x ], [ false, %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE2atEm.exit ], [ true, %.preheader ], [ false, %bb.s ], [ false, %bb.a ], [ false, %bb.o ], [ false, %bb.n ], [ false, %bb.m ], [ false, %bb.l ], [ false, %bb.k ], [ false, %bb.j ], [ false, %bb.i ], [ false, %bb.h ], [ false, %bb.g ], [ false, %bb.f ], [ false, %bb.e ], [ false, %bb.d ], [ false, %bb.c ], [ false, %bb.b ], [ false, %bb.u ], [ false, %bb.t ], [ false, %bb.ag ], [ true, %bb.ah ], [ false, %bb.ae ], [ false, %_ZNKSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EE2atEm.exit76 ], [ false, %bb.af ], [ false, %bb.ad ], [ false, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit ], [ false, %_ZNK11OpenImageIO4v3_18TypeDescneERKS1_.exit70 ], [ false, %bb.aa ], [ false, %bb.z ], [ false, %_ZNKSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE2atEm.exit ]
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
  %common.resume.op = phi { ptr, i32 } [ %i.o, %bb.e ], [ %i.bd, %_ZNSt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS2_EED2Ev.exit12 ]
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
  %4 = sub i64 %i.w, %i.x
  %5 = add i64 %4, -8                             ; 2 uses
  %i.ai = lshr i64 %5, 3
  %i.aj = add nuw nsw i64 %i.ai, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %5, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader39, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.ak = add i64 %i.w, -8
  %i.al = sub i64 %i.ak, %i.x
  %i.am = and i64 %i.al, -8
  %i.an = add i64 %i.am, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ag, i64 %i.an
  %scevgep35 = getelementptr i8, ptr %i.v, i64 %i.an
  %bound0 = icmp ult ptr %i.ag, %scevgep35
  %bound1 = icmp ult ptr %i.v, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader39, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aj, 4611686018427387900     ; 3 uses
  %i.ao = shl i64 %n.vec, 3                       ; 2 uses
  %i.ap = getelementptr i8, ptr %i.ag, i64 %i.ao  ; 2 uses
  %i.aq = getelementptr i8, ptr %i.v, i64 %i.ao
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ar = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ag, i64 %i.ar ; 2 uses
  %next.gep36 = getelementptr i8, ptr %i.v, i64 %i.ar ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !395)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !398)
  %i.as = getelementptr i8, ptr %next.gep36, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep36, align 8, !tbaa !181, !alias.scope !400, !noalias !395
  %wide.load37 = load <2 x i64>, ptr %i.as, align 8, !tbaa !181, !alias.scope !400, !noalias !395
  %i.at = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !181, !alias.scope !403, !noalias !400
  store <2 x i64> %wide.load37, ptr %i.at, align 8, !tbaa !181, !alias.scope !403, !noalias !400
  %i.au = getelementptr i8, ptr %next.gep36, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep36, align 8, !tbaa !181, !alias.scope !400, !noalias !395
  store <2 x ptr> splat (ptr null), ptr %i.au, align 8, !tbaa !181, !alias.scope !400, !noalias !395
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.av = icmp eq i64 %index.next, %n.vec
  br i1 %i.av, label %middle.block, label %vector.body, !llvm.loop !405

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aj, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i.preheader39

.lr.ph.i.i.i.i.preheader39:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.ag, %vector.memcheck ], [ %i.ag, %.lr.ph.i.i.i.i.preheader ], [ %i.ap, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.v, %vector.memcheck ], [ %i.v, %.lr.ph.i.i.i.i.preheader ], [ %i.aq, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader39, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader39 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.ax, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader39 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !395)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !398)
  %i.aw = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !181, !alias.scope !398, !noalias !395
  store i64 %i.aw, ptr %.012.i.i.i.i, align 8, !tbaa !181, !alias.scope !395, !noalias !398
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !181, !alias.scope !398, !noalias !395
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ax, %i.q
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !406

_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %.noexc14
  %.0.lcssa.i.i.i.i = phi ptr [ %i.ag, %.noexc14 ], [ %i.ap, %middle.block ], [ %i.ay, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.v, null
  br i1 %.not.i23.i, label %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS3_EESaIS6_EE12emplace_backIJS6_EEERS6_DpOT_.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.y) #46
  br label %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS3_EESaIS6_EE12emplace_backIJS6_EEERS6_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS3_EESaIS6_EE12emplace_backIJS6_EEERS6_DpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, %bb.h
  store ptr %i.ag, ptr %i.m, align 8, !tbaa !271
  store ptr %i.az, ptr %i.p, align 8, !tbaa !272
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ae
  store ptr %i.ba, ptr %i.r, align 8, !tbaa !274
  br label %_ZNSt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS3_EESaIS6_EE12emplace_backIJS6_EEERS6_DpOT_.exit, %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS3_EESaIS6_EE12emplace_backIJS6_EEERS6_DpOT_.exit.thread
  %i.bb = phi ptr [ %i.q, %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS3_EESaIS6_EE12emplace_backIJS6_EEERS6_DpOT_.exit.thread ], [ %.0.lcssa.i.i.i.i, %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS3_EESaIS6_EE12emplace_backIJS6_EEERS6_DpOT_.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #5
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !181
  br label %bb.k

bb.i:                                             ; preds = %_ZNKSt6vectorISt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i, %bb.g
  %i.bd = landingpad { ptr, i32 }
          cleanup
  %i.be = load ptr, ptr %3, align 8, !tbaa !181   ; 2 uses
  %.not.i11 = icmp eq ptr %i.be, null
  br i1 %.not.i11, label %_ZNSt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS2_EED2Ev.exit12, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZNKSt14default_deleteIN11OpenImageIO4v3_19ImageSpecEEclEPS2_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %i.be)
  br label %_ZNSt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS2_EED2Ev.exit12

_ZNSt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS2_EED2Ev.exit12: ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #5
  br label %common.resume

bb.k:                                             ; preds = %_ZNSt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS2_EED2Ev.exit, %_ZN11OpenImageIO4v3_114ImageCacheFile9find_specEiRKNS0_9ImageSpecE.exit
  %.1 = phi ptr [ %i.l, %_ZN11OpenImageIO4v3_114ImageCacheFile9find_specEiRKNS0_9ImageSpecE.exit ], [ %i.bc, %_ZNSt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS2_EED2Ev.exit ]
  ret ptr %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef ptr @_ZN11OpenImageIO4v3_114ImageCacheFile9find_dimsEiiRKNS1_9ImageDimsE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(400) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %3) local_unnamed_addr #17 align 2 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph, label %.thread30

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
  %i.ah = load i32, ptr %i.ag, align 4
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 60
  %i.aj = load i32, ptr %i.ai, align 4
  %i.ak = zext nneg i32 %i.b to i64
  %umin = tail call i32 @llvm.umin.i32(i32 %i.b, i32 9)
  %i.al = add nuw nsw i32 %umin, 2
  %wide.trip.count = zext nneg i32 %i.al to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.thread
  %indvars.iv35 = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next36, %.thread ]
  %indvars.iv = phi i64 [ %i.ak, %.lr.ph ], [ %indvars.iv.next, %.thread ] ; 2 uses
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv35, 1 ; 2 uses
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
  br i1 %i.av, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.aw = getelementptr inbounds nuw [40 x i8], ptr %i.ap, i64 %i.e
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !74 ; 18 uses
  %.not = icmp eq ptr %i.ax, null
  br i1 %.not, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !92
  %i.az = icmp eq i32 %i.ay, %i.f
  br i1 %i.az, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !94
  %i.bc = icmp eq i32 %i.bb, %i.h
  br i1 %i.bc, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !96
  %i.bf = icmp eq i32 %i.be, %i.j
  br i1 %i.bf, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ax, i64 12
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !98
  %i.bi = icmp eq i32 %i.bh, %i.l
  br i1 %i.bi, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !100
  %i.bl = icmp eq i32 %i.bk, %i.n
  br i1 %i.bl, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ax, i64 20
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !102
  %i.bo = icmp eq i32 %i.bn, %i.p
  br i1 %i.bo, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !93
  %i.br = icmp eq i32 %i.bq, %i.r
  br i1 %i.br, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ax, i64 28
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !95
  %i.bu = icmp eq i32 %i.bt, %i.t
  br i1 %i.bu, label %bb.l, label %.thread

bb.l:                                             ; preds = %bb.k
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !97
  %i.bx = icmp eq i32 %i.bw, %i.v
  br i1 %i.bx, label %bb.m, label %.thread

bb.m:                                             ; preds = %bb.l
  %i.by = getelementptr inbounds nuw i8, ptr %i.ax, i64 36
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !99
  %i.ca = icmp eq i32 %i.bz, %i.x
  br i1 %i.ca, label %bb.n, label %.thread

bb.n:                                             ; preds = %bb.m
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ax, i64 40
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !101
  %i.cd = icmp eq i32 %i.cc, %i.z
  br i1 %i.cd, label %bb.o, label %.thread

bb.o:                                             ; preds = %bb.n
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ax, i64 44
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !103
  %i.cg = icmp eq i32 %i.cf, %i.ab
  br i1 %i.cg, label %bb.p, label %.thread

bb.p:                                             ; preds = %bb.o
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ax, i64 48
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !105
  %i.cj = icmp eq i32 %i.ci, %i.ad
  br i1 %i.cj, label %bb.q, label %.thread

bb.q:                                             ; preds = %bb.p
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ax, i64 52
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !104
  %i.cm = icmp eq i32 %i.cl, %i.af
  br i1 %i.cm, label %bb.r, label %.thread

bb.r:                                             ; preds = %bb.q
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ax, i64 56
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !106
  %i.cp = icmp eq i32 %i.co, %i.ah
  br i1 %i.cp, label %_ZN11OpenImageIO4v3_119has_same_dimensionsINS0_14ImageCacheFile9ImageDimsEEEbRKT_S6_.exit, label %.thread

_ZN11OpenImageIO4v3_119has_same_dimensionsINS0_14ImageCacheFile9ImageDimsEEEbRKT_S6_.exit: ; preds = %bb.r
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ax, i64 60
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !89
  %i.cs = icmp eq i32 %i.cr, %i.aj
  %cond.fr = freeze i1 %i.cs
  br i1 %cond.fr, label %.thread30, label %.thread

.thread:                                          ; preds = %_ZN11OpenImageIO4v3_119has_same_dimensionsINS0_14ImageCacheFile9ImageDimsEEEbRKT_S6_.exit, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %exitcond.not = icmp eq i64 %indvars.iv.next36, %wide.trip.count
  br i1 %exitcond.not, label %.thread30, label %bb.b, !llvm.loop !407

.thread30:                                        ; preds = %.thread, %_ZN11OpenImageIO4v3_119has_same_dimensionsINS0_14ImageCacheFile9ImageDimsEEEbRKT_S6_.exit, %bb.a
  %.4 = phi ptr [ null, %bb.a ], [ %i.ax, %_ZN11OpenImageIO4v3_119has_same_dimensionsINS0_14ImageCacheFile9ImageDimsEEEbRKT_S6_.exit ], [ null, %.thread ]
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
  %4 = sub i64 %i.l, %i.m
  %5 = add i64 %4, -8                             ; 2 uses
  %i.y = lshr i64 %5, 3
  %i.z = add nuw nsw i64 %i.y, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %5, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader29, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.aa = add i64 %i.l, -8
  %i.ab = sub i64 %i.aa, %i.m
  %i.ac = and i64 %i.ab, -8
  %i.ad = add i64 %i.ac, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.v, i64 %i.ad
  %scevgep25 = getelementptr i8, ptr %i.k, i64 %i.ad
  %bound0 = icmp ult ptr %i.v, %scevgep25
  %bound1 = icmp ult ptr %i.k, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader29, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.z, 4611686018427387900      ; 3 uses
  %i.ae = shl i64 %n.vec, 3                       ; 2 uses
  %i.af = getelementptr i8, ptr %i.v, i64 %i.ae   ; 2 uses
  %i.ag = getelementptr i8, ptr %i.k, i64 %i.ae
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ah = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.v, i64 %i.ah ; 2 uses
  %next.gep26 = getelementptr i8, ptr %i.k, i64 %i.ah ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !412)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !415)
  %i.ai = getelementptr i8, ptr %next.gep26, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep26, align 8, !tbaa !268, !alias.scope !417, !noalias !412
  %wide.load27 = load <2 x i64>, ptr %i.ai, align 8, !tbaa !268, !alias.scope !417, !noalias !412
  %i.aj = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !268, !alias.scope !420, !noalias !417
  store <2 x i64> %wide.load27, ptr %i.aj, align 8, !tbaa !268, !alias.scope !420, !noalias !417
  %i.ak = getelementptr i8, ptr %next.gep26, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep26, align 8, !tbaa !268, !alias.scope !417, !noalias !412
  store <2 x ptr> splat (ptr null), ptr %i.ak, align 8, !tbaa !268, !alias.scope !417, !noalias !412
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.al = icmp eq i64 %index.next, %n.vec
  br i1 %i.al, label %middle.block, label %vector.body, !llvm.loop !422

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.z, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_114ImageCacheFile9ImageDimsESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i, label %.lr.ph.i.i.i.i.preheader29

.lr.ph.i.i.i.i.preheader29:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.v, %vector.memcheck ], [ %i.v, %.lr.ph.i.i.i.i.preheader ], [ %i.af, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.k, %vector.memcheck ], [ %i.k, %.lr.ph.i.i.i.i.preheader ], [ %i.ag, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader29, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader29 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader29 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !412)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !415)
  %i.am = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !268, !alias.scope !415, !noalias !412
  store i64 %i.am, ptr %.012.i.i.i.i, align 8, !tbaa !268, !alias.scope !412, !noalias !415
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !268, !alias.scope !415, !noalias !412
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.an, %i.f
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_114ImageCacheFile9ImageDimsESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !423

_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_114ImageCacheFile9ImageDimsESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %.noexc15
  %.0.lcssa.i.i.i.i = phi ptr [ %i.v, %.noexc15 ], [ %i.af, %middle.block ], [ %i.ao, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.k, null
  br i1 %.not.i23.i, label %.noexc, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_114ImageCacheFile9ImageDimsESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.n) #46
  br label %.noexc

.noexc:                                           ; preds = %bb.f, %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_114ImageCacheFile9ImageDimsESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i
  store ptr %i.v, ptr %i.c, align 8, !tbaa !266
  store ptr %i.ap, ptr %i.e, align 8, !tbaa !267
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.t
  store ptr %i.aq, ptr %i.g, align 8, !tbaa !270
  br label %_ZNSt10unique_ptrIN11OpenImageIO4v3_114ImageCacheFile9ImageDimsESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN11OpenImageIO4v3_114ImageCacheFile9ImageDimsESt14default_deleteIS3_EED2Ev.exit: ; preds = %bb.c, %.noexc
  %i.ar = phi ptr [ %i.f, %bb.c ], [ %.0.lcssa.i.i.i.i, %.noexc ]
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !268
  br label %bb.g

_ZNSt10unique_ptrIN11OpenImageIO4v3_114ImageCacheFile9ImageDimsESt14default_deleteIS3_EED2Ev.exit13: ; preds = %_ZNKSt6vectorISt10unique_ptrIN11OpenImageIO4v3_114ImageCacheFile9ImageDimsESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i, %bb.e
  %i.at = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 64) #46
  resume { ptr, i32 } %i.at

bb.g:                                             ; preds = %_ZNSt10unique_ptrIN11OpenImageIO4v3_114ImageCacheFile9ImageDimsESt14default_deleteIS3_EED2Ev.exit, %bb.b
  %.1 = phi ptr [ %i.b, %bb.b ], [ %i.as, %_ZNSt10unique_ptrIN11OpenImageIO4v3_114ImageCacheFile9ImageDimsESt14default_deleteIS3_EED2Ev.exit ]
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
end_hunk_0
begin_hunk_1_@_ZN11OpenImageIO4v3_114ImageCacheImpl11verify_fileEPNS0_14ImageCacheFileEPNS0_23ImageCachePerThreadInfoEb:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #5
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.f
  %.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn, %bb.av ], [ %i.p, %bb.f ]
  call void @_ZN11OpenImageIO4v3_15TimerD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %13) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #5
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn

bb.ax:                                            ; preds = %_ZN11OpenImageIO4v3_15TimerD2Ev.exit111, %bb.c
  br i1 %3, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.iy = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !671 ; 2 uses
  %.not100 = icmp eq ptr %i.iz, null
  %spec.select = select i1 %.not100, ptr %1, ptr %i.iz ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %spec.select, i64 24
  store i8 1, ptr %i.ja, align 8, !tbaa !115
  br label %bb.az

bb.az:                                            ; preds = %bb.ax, %bb.ay, %bb.b, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %1, %bb.b ], [ %1, %bb.ax ], [ %spec.select, %bb.ay ]
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
  store ptr %0, ptr %2, align 8, !tbaa !660, !alias.scope !674
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #5
  %i.e = call { ptr, i8 } @_ZN3tsl17detail_robin_hash10robin_hashISt4pairImPN11OpenImageIO4v3_123ImageCachePerThreadInfoEENS_9robin_mapImS6_St4hashImESt8equal_toImESaIS7_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSH_11ValueSelectESA_SC_SD_Lb0ESG_E11insert_implImJRKSt21piecewise_construct_tSt5tupleIJRKmEESP_IJEEEEES2_INSK_14robin_iteratorILb0EEEbERKT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(80) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #5
  %.fca.0.extract.i.i = extractvalue { ptr, i8 } %i.e, 0
  %i.f = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !677  ; 2 uses
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
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZZN3tsl17detail_robin_hash10robin_hashISt4pairIN11OpenImageIO4v3_17ustringEPNS4_14ImageCacheFileEENS_9robin_mapIS5_S7_St4hashIS5_ESt8equal_toIS5_ESaIS8_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESB_SD_SE_Lb0ESH_E23static_empty_bucket_ptrEvE12empty_bucket, i64 6), align 2, !tbaa !679
  %i.l = call i32 @__cxa_atexit(ptr nonnull @_ZN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_17ustringEPNS4_14ImageCacheFileEELb1EED2Ev, ptr nonnull @_ZZN3tsl17detail_robin_hash10robin_hashISt4pairIN11OpenImageIO4v3_17ustringEPNS4_14ImageCacheFileEENS_9robin_mapIS5_S7_St4hashIS5_ESt8equal_toIS5_ESaIS8_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESB_SD_SE_Lb0ESH_E23static_empty_bucket_ptrEvE12empty_bucket, ptr nonnull @__dso_handle) #5 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN3tsl17detail_robin_hash10robin_hashISt4pairIN11OpenImageIO4v3_17ustringEPNS4_14ImageCacheFileEENS_9robin_mapIS5_S7_St4hashIS5_ESt8equal_toIS5_ESaIS8_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESB_SD_SE_Lb0ESH_E23static_empty_bucket_ptrEvE12empty_bucket) #5
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store ptr @_ZZN3tsl17detail_robin_hash10robin_hashISt4pairIN11OpenImageIO4v3_17ustringEPNS4_14ImageCacheFileEENS_9robin_mapIS5_S7_St4hashIS5_ESt8equal_toIS5_ESaIS8_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESB_SD_SE_Lb0ESH_E23static_empty_bucket_ptrEvE12empty_bucket, ptr %i.m, align 8, !tbaa !661
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  store i8 0, ptr %i.o, align 8, !tbaa !680
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 73
  store i8 0, ptr %i.p, align 1, !tbaa !681
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  store <2 x float> <float 0.000000e+00, float 5.000000e-01>, ptr %i.q, align 8, !tbaa !32
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  store i64 0, ptr %i.r, align 8, !tbaa !682
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
  store ptr %i.h, ptr %i.f, align 8, !tbaa !677
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
  %i.aj = load ptr, ptr %i.ai, align 16, !tbaa !683 ; 6 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !684
  %.not.i = icmp eq ptr %i.aj, %i.al
  br i1 %.not.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZN11OpenImageIO4v3_110spin_mutex10lock_guardC2ERS1_.exit
  store ptr %i.h, ptr %i.aj, align 8, !tbaa !677
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr %i.am, ptr %i.ai, align 16, !tbaa !683
  br label %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_123ImageCachePerThreadInfoESt14default_deleteIS3_EESaIS6_EE12emplace_backIJRPS3_EEERS6_DpOT_.exit

bb.l:                                             ; preds = %_ZN11OpenImageIO4v3_110spin_mutex10lock_guardC2ERS1_.exit
  %i.an = load ptr, ptr %i.ah, align 8, !tbaa !685 ; 10 uses
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
  store ptr %i.h, ptr %i.az, align 8, !tbaa !677
  %.not10.i.i.i.i.i = icmp eq ptr %i.an, %i.aj
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_123ImageCachePerThreadInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.noexc9
  %4 = sub i64 %i.ao, %i.ap
  %5 = add i64 %4, -8                             ; 2 uses
  %i.ba = lshr i64 %5, 3
  %i.bb = add nuw nsw i64 %i.ba, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %5, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader61, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.bc = add i64 %i.ao, -8
  %i.bd = sub i64 %i.bc, %i.ap
  %i.be = and i64 %i.bd, -8
  %i.bf = add i64 %i.be, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ay, i64 %i.bf
  %scevgep57 = getelementptr i8, ptr %i.an, i64 %i.bf
  %bound0 = icmp ult ptr %i.ay, %scevgep57
  %bound1 = icmp ult ptr %i.an, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader61, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bb, 4611686018427387900     ; 3 uses
  %i.bg = shl i64 %n.vec, 3                       ; 2 uses
  %i.bh = getelementptr i8, ptr %i.ay, i64 %i.bg  ; 2 uses
  %i.bi = getelementptr i8, ptr %i.an, i64 %i.bg
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bj = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ay, i64 %i.bj ; 2 uses
  %next.gep58 = getelementptr i8, ptr %i.an, i64 %i.bj ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !686)
  call void @llvm.experimental.noalias.scope.decl(metadata !689)
  %i.bk = getelementptr i8, ptr %next.gep58, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep58, align 8, !tbaa !677, !alias.scope !691, !noalias !686
  %wide.load59 = load <2 x i64>, ptr %i.bk, align 8, !tbaa !677, !alias.scope !691, !noalias !686
  %i.bl = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !677, !alias.scope !694, !noalias !691
  store <2 x i64> %wide.load59, ptr %i.bl, align 8, !tbaa !677, !alias.scope !694, !noalias !691
  %i.bm = getelementptr i8, ptr %next.gep58, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep58, align 8, !tbaa !677, !alias.scope !691, !noalias !686
  store <2 x ptr> splat (ptr null), ptr %i.bm, align 8, !tbaa !677, !alias.scope !691, !noalias !686
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bn = icmp eq i64 %index.next, %n.vec
  br i1 %i.bn, label %middle.block, label %vector.body, !llvm.loop !696

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bb, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_123ImageCachePerThreadInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader61

.lr.ph.i.i.i.i.i.preheader61:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.ay, %vector.memcheck ], [ %i.ay, %.lr.ph.i.i.i.i.i.preheader ], [ %i.bh, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.an, %vector.memcheck ], [ %i.an, %.lr.ph.i.i.i.i.i.preheader ], [ %i.bi, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader61, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.bq, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader61 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.bp, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader61 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !686)
  call void @llvm.experimental.noalias.scope.decl(metadata !689)
  %i.bo = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !677, !alias.scope !689, !noalias !686
  store i64 %i.bo, ptr %.012.i.i.i.i.i, align 8, !tbaa !677, !alias.scope !686, !noalias !689
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !677, !alias.scope !689, !noalias !686
  %i.bp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bp, %i.aj
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_123ImageCachePerThreadInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !697

_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_123ImageCachePerThreadInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %.noexc9
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ay, %.noexc9 ], [ %i.bh, %middle.block ], [ %i.bq, %.lr.ph.i.i.i.i.i ]
  %i.br = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_123ImageCachePerThreadInfoESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJRPS3_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_123ImageCachePerThreadInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef %i.aq) #46
  br label %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_123ImageCachePerThreadInfoESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJRPS3_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_123ImageCachePerThreadInfoESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJRPS3_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i: ; preds = %bb.n, %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_123ImageCachePerThreadInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i
  store ptr %i.ay, ptr %i.ah, align 8, !tbaa !685
  store ptr %i.br, ptr %i.ai, align 16, !tbaa !683
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.aw
  store ptr %i.bs, ptr %i.ak, align 8, !tbaa !684
  br label %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_123ImageCachePerThreadInfoESt14default_deleteIS3_EESaIS6_EE12emplace_backIJRPS3_EEERS6_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_123ImageCachePerThreadInfoESt14default_deleteIS3_EESaIS6_EE12emplace_backIJRPS3_EEERS6_DpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_123ImageCachePerThreadInfoESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJRPS3_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i, %bb.k
  store atomic i8 0, ptr @_ZN11OpenImageIO4v3_114ImageCacheImpl22m_perthread_info_mutexE release, align 1
  br label %bb.p

bb.o:                                             ; preds = %_ZNKSt6vectorISt10unique_ptrIN11OpenImageIO4v3_123ImageCachePerThreadInfoESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i, %bb.m
  %i.bt = landingpad { ptr, i32 }
          cleanup
  store atomic i8 0, ptr @_ZN11OpenImageIO4v3_114ImageCacheImpl22m_perthread_info_mutexE release, align 1
  resume { ptr, i32 } %i.bt

bb.p:                                             ; preds = %_ZTWN11OpenImageIO4v3_112_GLOBAL__N_127imagecache_per_thread_infosE.exit, %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_123ImageCachePerThreadInfoESt14default_deleteIS3_EESaIS6_EE12emplace_backIJRPS3_EEERS6_DpOT_.exit, %bb.a
  %.0 = phi ptr [ %i.h, %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_123ImageCachePerThreadInfoESt14default_deleteIS3_EESaIS6_EE12emplace_backIJRPS3_EEERS6_DpOT_.exit ], [ %i.g, %_ZTWN11OpenImageIO4v3_112_GLOBAL__N_127imagecache_per_thread_infosE.exit ], [ %1, %bb.a ] ; 5 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.0, i64 96 ; 2 uses
  %i.bv = load atomic i32, ptr %i.bu seq_cst, align 4
  %.not7 = icmp eq i32 %i.bv, 0
  br i1 %.not7, label %bb.aa, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bw = atomicrmw xchg ptr @_ZN11OpenImageIO4v3_114ImageCacheImpl22m_perthread_info_mutexE, i8 1 acquire, align 1
  %.0.in.i.not.i2.i.i10 = icmp eq i8 %i.bw, 0
  br i1 %.0.in.i.not.i2.i.i10, label %_ZN11OpenImageIO4v3_110spin_mutex10lock_guardC2ERS1_.exit22, label %.preheader.i.i11

.preheader.i.i11:                                 ; preds = %bb.q, %.preheader.i.i11.backedge
  %.sroa.0.1.i.i13 = phi i32 [ %.sroa.0.2.i.i17, %.preheader.i.i11.backedge ], [ 1, %bb.q ] ; 5 uses
  %.not.i.i.i14 = icmp sgt i32 %.sroa.0.1.i.i13, 16
  br i1 %.not.i.i.i14, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.preheader.i.i11
  %i.bx = icmp sgt i32 %.sroa.0.1.i.i13, 0
  br i1 %i.bx, label %.lr.ph.i.i.i.i19, label %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i15

.lr.ph.i.i.i.i19:                                 ; preds = %bb.r, %.lr.ph.i.i.i.i19
  %.03.i.i.i.i20 = phi i32 [ %i.by, %.lr.ph.i.i.i.i19 ], [ 0, %bb.r ]
  call void asm sideeffect "pause;", "~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !528
  %i.by = add nuw nsw i32 %.03.i.i.i.i20, 1       ; 2 uses
  %exitcond.not.i.i.i.i21 = icmp eq i32 %i.by, %.sroa.0.1.i.i13
  br i1 %exitcond.not.i.i.i.i21, label %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i15, label %.lr.ph.i.i.i.i19, !llvm.loop !529

_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i15:       ; preds = %.lr.ph.i.i.i.i19, %bb.r
  %i.bz = shl nsw i32 %.sroa.0.1.i.i13, 1
  br label %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i16

bb.s:                                             ; preds = %.preheader.i.i11
  %i.ca = call noundef i32 @sched_yield() #5      ; 0 uses
  br label %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i16

_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i16: ; preds = %bb.s, %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i15
  %.sroa.0.2.i.i17 = phi i32 [ %.sroa.0.1.i.i13, %bb.s ], [ %i.bz, %_ZN11OpenImageIO4v3_15pauseEi.exit.i.i.i15 ]
  %i.cb = load volatile i8, ptr @_ZN11OpenImageIO4v3_114ImageCacheImpl22m_perthread_info_mutexE, align 1, !tbaa !530, !range !368, !noundef !290
  %i.cc = trunc nuw i8 %i.cb to i1
  br i1 %i.cc, label %.preheader.i.i11.backedge, label %bb.t

.preheader.i.i11.backedge:                        ; preds = %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i16, %bb.t
  br label %.preheader.i.i11, !llvm.loop !531

bb.t:                                             ; preds = %_ZN11OpenImageIO4v3_114atomic_backoffclEv.exit.i.i16
  %i.cd = atomicrmw xchg ptr @_ZN11OpenImageIO4v3_114ImageCacheImpl22m_perthread_info_mutexE, i8 1 acquire, align 1
  %.0.in.i.not.i.i.i18 = icmp eq i8 %i.cd, 0
  br i1 %.0.in.i.not.i.i.i18, label %_ZN11OpenImageIO4v3_110spin_mutex10lock_guardC2ERS1_.exit22, label %.preheader.i.i11.backedge

_ZN11OpenImageIO4v3_110spin_mutex10lock_guardC2ERS1_.exit22: ; preds = %bb.t, %bb.q
  %i.ce = getelementptr inbounds nuw i8, ptr %.0, i64 80 ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !599 ; 7 uses
  store ptr null, ptr %i.ce, align 8, !tbaa !599
  %.not.i.i = icmp eq ptr %i.cf, null
  br i1 %.not.i.i, label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheTileEED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %_ZN11OpenImageIO4v3_110spin_mutex10lock_guardC2ERS1_.exit22
  %i.cg = atomicrmw sub ptr %i.cf, i32 1 seq_cst, align 4
  %i.ch = icmp eq i32 %i.cg, 1
  br i1 %i.ch, label %bb.v, label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheTileEED2Ev.exit

bb.v:                                             ; preds = %bb.u
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 40
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !587
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 272
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !289, !nonnull !290, !align !291 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cf, i64 56
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !611
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 25220
  %i.cp = atomicrmw sub ptr %i.co, i32 1 seq_cst, align 4 ; 0 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cl, i64 25200
  %i.cr = atomicrmw sub ptr %i.cq, i64 %i.cn seq_cst, align 8 ; 0 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cf, i64 77
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !619, !range !368, !noundef !290
  %i.cu = trunc nuw i8 %i.ct to i1
  br i1 %i.cu, label %_ZN11OpenImageIO4v3_114ImageCacheTileD2Ev.exit.i.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cf, i64 48
  %.pre.i.i.i.i = load ptr, ptr %i.cv, align 8, !tbaa !114 ; 2 uses
  %.not.i.i.i.i.i23 = icmp eq ptr %.pre.i.i.i.i, null
  br i1 %.not.i.i.i.i.i23, label %_ZN11OpenImageIO4v3_114ImageCacheTileD2Ev.exit.i.i.i, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i: ; preds = %bb.w
  call void @_ZdaPv(ptr noundef nonnull %.pre.i.i.i.i) #46
  br label %_ZN11OpenImageIO4v3_114ImageCacheTileD2Ev.exit.i.i.i

_ZN11OpenImageIO4v3_114ImageCacheTileD2Ev.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i, %bb.w, %bb.v
  call void @_ZdlPvm(ptr noundef nonnull %i.cf, i64 noundef 88) #46
  br label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheTileEED2Ev.exit

_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheTileEED2Ev.exit: ; preds = %_ZN11OpenImageIO4v3_114ImageCacheTileD2Ev.exit.i.i.i, %bb.u, %_ZN11OpenImageIO4v3_110spin_mutex10lock_guardC2ERS1_.exit22
  %i.cw = getelementptr inbounds nuw i8, ptr %.0, i64 88 ; 2 uses
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !599 ; 7 uses
  store ptr null, ptr %i.cw, align 8, !tbaa !599
  %.not.i.i25 = icmp eq ptr %i.cx, null
  br i1 %.not.i.i25, label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheTileEED2Ev.exit36, label %bb.x

bb.x:                                             ; preds = %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheTileEED2Ev.exit
  %i.cy = atomicrmw sub ptr %i.cx, i32 1 seq_cst, align 4
  %i.cz = icmp eq i32 %i.cy, 1
  br i1 %i.cz, label %bb.y, label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheTileEED2Ev.exit36

bb.y:                                             ; preds = %bb.x
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 40
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !587
end_hunk_1
begin_hunk_2_@_ZNK11OpenImageIO4v3_114ImageCacheImpl8getstatsB5cxx11Ei:bb.a
  %i.cu = add nsw i64 %i.bv, %i.ct                ; 2 uses
  store i64 %i.cu, ptr %i.aw, align 8, !tbaa !69
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ci, i64 152
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !70
  %i.cx = add nsw i32 %i.bu, %i.cw                ; 2 uses
  store i32 %i.cx, ptr %i.ax, align 16, !tbaa !70
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ci, i64 160
  %i.cz = load <6 x double>, ptr %i.cy, align 8, !tbaa !71
  %i.da = fadd <6 x double> %i.cz, %i.by          ; 4 uses
  %i.db = shufflevector <6 x double> %i.da, <6 x double> poison, <2 x i32> <i32 0, i32 1>
  store <2 x double> %i.db, ptr %i.ag, align 8, !tbaa !71
  %i.dc = shufflevector <6 x double> %i.da, <6 x double> poison, <2 x i32> <i32 2, i32 3>
  store <2 x double> %i.dc, ptr %i.ay, align 8, !tbaa !71
  %i.dd = shufflevector <6 x double> %i.da, <6 x double> poison, <2 x i32> <i32 4, i32 5>
  store <2 x double> %i.dd, ptr %i.az, align 8, !tbaa !71
  %i.de = getelementptr inbounds nuw i8, ptr %i.ci, i64 208
  %i.df = load <2 x i64>, ptr %i.de, align 8, !tbaa !67
  %i.dg = add nsw <2 x i64> %i.cc, %i.df          ; 2 uses
  store <2 x i64> %i.dg, ptr %i.ba, align 8, !tbaa !67
  %i.dh = getelementptr inbounds nuw i8, ptr %i.ci, i64 224
  %i.di = load <2 x i64>, ptr %i.dh, align 8, !tbaa !67
  %i.dj = add nsw <2 x i64> %i.cd, %i.di          ; 2 uses
  store <2 x i64> %i.dj, ptr %i.bb, align 8, !tbaa !67
  %i.dk = getelementptr inbounds nuw i8, ptr %i.ci, i64 240
  %i.dl = load <2 x i64>, ptr %i.dk, align 8, !tbaa !67
  %i.dm = add nsw <2 x i64> %i.ce, %i.dl          ; 2 uses
  store <2 x i64> %i.dm, ptr %i.bc, align 8, !tbaa !67
  %i.dn = getelementptr inbounds nuw i8, ptr %i.ci, i64 256
  %i.do = load <2 x i64>, ptr %i.dn, align 8, !tbaa !67
  %i.dp = add nsw <2 x i64> %i.cf, %i.do          ; 2 uses
  store <2 x i64> %i.dp, ptr %i.bd, align 8, !tbaa !67
  %i.dq = getelementptr inbounds nuw i8, ptr %i.ci, i64 272
  %i.dr = load <2 x i64>, ptr %i.dq, align 8, !tbaa !67
  %i.ds = add nsw <2 x i64> %i.cg, %i.dr          ; 2 uses
  store <2 x i64> %i.ds, ptr %i.be, align 8, !tbaa !67
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ci, i64 288
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !72
  %i.dv = add nsw i64 %i.bt, %i.du                ; 2 uses
  store i64 %i.dv, ptr %i.bf, align 8, !tbaa !72
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ci, i64 296
  %i.dx = load float, ptr %i.dw, align 8, !tbaa !32 ; 2 uses
  %i.dy = fcmp olt float %i.bx, %i.dx
  %i.dz = select i1 %i.dy, float %i.dx, float %i.bx ; 2 uses
  store float %i.dz, ptr %i.ah, align 16, !tbaa !63
  %i.ea = getelementptr inbounds nuw i8, ptr %i.ci, i64 304
  %i.eb = load <2 x i64>, ptr %i.ea, align 8, !tbaa !67
  %i.ec = add nsw <2 x i64> %i.ch, %i.eb          ; 2 uses
  store <2 x i64> %i.ec, ptr %i.ai, align 8, !tbaa !67
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ci, i64 320
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !73
  %i.ef = add nsw i64 %i.bs, %i.ee                ; 2 uses
  store i64 %i.ef, ptr %i.bg, align 8, !tbaa !73
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ci, i64 328
  %i.eh = load <2 x i32>, ptr %i.eg, align 8, !tbaa !3
  %i.ei = add nsw <2 x i32> %i.bz, %i.eh          ; 2 uses
  store <2 x i32> %i.ei, ptr %i.bh, align 16, !tbaa !3
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph.i
  %i.ej = phi i64 [ %i.ef, %bb.e ], [ %i.bs, %.lr.ph.i ]
  %i.ek = phi i64 [ %i.dv, %bb.e ], [ %i.bt, %.lr.ph.i ]
  %i.el = phi i32 [ %i.cx, %bb.e ], [ %i.bu, %.lr.ph.i ]
  %i.em = phi i64 [ %i.cu, %bb.e ], [ %i.bv, %.lr.ph.i ]
  %i.en = phi i32 [ %i.co, %bb.e ], [ %i.bw, %.lr.ph.i ]
  %i.eo = phi float [ %i.dz, %bb.e ], [ %i.bx, %.lr.ph.i ]
  %i.ep = phi <6 x double> [ %i.da, %bb.e ], [ %i.by, %.lr.ph.i ]
  %i.eq = phi <2 x i32> [ %i.ei, %bb.e ], [ %i.bz, %.lr.ph.i ]
  %i.er = phi <2 x i64> [ %i.cl, %bb.e ], [ %i.ca, %.lr.ph.i ]
  %i.es = phi <2 x i64> [ %i.cr, %bb.e ], [ %i.cb, %.lr.ph.i ]
  %i.et = phi <2 x i64> [ %i.dg, %bb.e ], [ %i.cc, %.lr.ph.i ]
  %i.eu = phi <2 x i64> [ %i.dj, %bb.e ], [ %i.cd, %.lr.ph.i ]
  %i.ev = phi <2 x i64> [ %i.dm, %bb.e ], [ %i.ce, %.lr.ph.i ]
  %i.ew = phi <2 x i64> [ %i.dp, %bb.e ], [ %i.cf, %.lr.ph.i ]
  %i.ex = phi <2 x i64> [ %i.ds, %bb.e ], [ %i.cg, %.lr.ph.i ]
  %i.ey = phi <2 x i64> [ %i.ec, %bb.e ], [ %i.ch, %.lr.ph.i ]
  %i.ez = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.ez, %i.au
  br i1 %.not.i, label %_ZNK11OpenImageIO4v3_114ImageCacheImpl10mergestatsERNS0_20ImageCacheStatisticsE.exit, label %.lr.ph.i

_ZNK11OpenImageIO4v3_114ImageCacheImpl10mergestatsERNS0_20ImageCacheStatisticsE.exit: ; preds = %bb.f, %_ZN11OpenImageIO4v3_110spin_mutex10lock_guardC2ERS1_.exit.i
  store atomic i8 0, ptr @_ZN11OpenImageIO4v3_114ImageCacheImpl22m_perthread_info_mutexE release, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store i64 0, ptr %i.b, align 8, !tbaa !201
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  store i64 0, ptr %i.c, align 8, !tbaa !201
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  store i64 0, ptr %i.d, align 8, !tbaa !201
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #5
  store i64 0, ptr %i.e, align 8, !tbaa !201
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #5
  store i64 0, ptr %i.f, align 8, !tbaa !201
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #5
  store i64 0, ptr %i.g, align 8, !tbaa !201
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #5
  store i64 0, ptr %i.h, align 8, !tbaa !201
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %17, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #5
  %i.fa = getelementptr inbounds nuw i8, ptr %1, i64 320 ; 2 uses
  invoke void @_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_7ustringENS0_13intrusive_ptrINS0_14ImageCacheFileEEESt4hashIS2_ESt8equal_toIS2_ELm64EN3tsl9robin_mapIS2_S5_S7_S9_SaISt4pairIS2_S5_EELb0ENSA_2rh26power_of_two_growth_policyILm2EEEEEE5beginEv(ptr dead_on_unwind nonnull writable sret(%"class.OpenImageIO::v3_1::unordered_map_concurrent<OpenImageIO::v3_1::ustring, OpenImageIO::v3_1::intrusive_ptr<OpenImageIO::v3_1::ImageCacheFile>, std::hash<OIIO::ustring>, std::equal_to<OpenImageIO::v3_1::ustring>, 64, tsl::robin_map<OpenImageIO::v3_1::ustring, OpenImageIO::v3_1::intrusive_ptr<OpenImageIO::v3_1::ImageCacheFile>>>::iterator") align 8 %18, ptr noundef nonnull align 64 dereferenceable(8256) %i.fa)
          to label %.preheader unwind label %bb.h

.preheader:                                       ; preds = %_ZNK11OpenImageIO4v3_114ImageCacheImpl10mergestatsERNS0_20ImageCacheStatisticsE.exit
  %i.fb = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.fd = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 14 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 4 uses
  br label %bb.g

bb.g:                                             ; preds = %.preheader, %bb.q
  %.0149 = phi i64 [ %i.hr, %bb.q ], [ 0, %.preheader ] ; 4 uses
  %.0 = phi i64 [ %i.hv, %bb.q ], [ 0, %.preheader ] ; 3 uses
  %i.ff = phi <2 x double> [ %i.hy, %bb.q ], [ zeroinitializer, %.preheader ] ; 4 uses
  %i.fg = load ptr, ptr %18, align 8, !tbaa !532
  %.not.i.i = icmp eq ptr %i.fg, %i.fa
  %i.fh = load i32, ptr %i.fb, align 8
  %i.fi = icmp eq i32 %i.fh, -1
  %or.cond1153 = select i1 %.not.i.i, i1 %i.fi, i1 false
  br i1 %or.cond1153, label %_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_7ustringENS0_13intrusive_ptrINS0_14ImageCacheFileEEESt4hashIS2_ESt8equal_toIS2_ELm64EN3tsl9robin_mapIS2_S5_S7_S9_SaISt4pairIS2_S5_EELb0ENSA_2rh26power_of_two_growth_policyILm2EEEEEE8iteratorD2Ev.exit299, label %bb.i

_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_7ustringENS0_13intrusive_ptrINS0_14ImageCacheFileEEESt4hashIS2_ESt8equal_toIS2_ELm64EN3tsl9robin_mapIS2_S5_S7_S9_SaISt4pairIS2_S5_EELb0ENSA_2rh26power_of_two_growth_policyILm2EEEEEE8iteratorD2Ev.exit299: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #5
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %19)
          to label %bb.u unwind label %bb.ac

bb.h:                                             ; preds = %_ZNK11OpenImageIO4v3_114ImageCacheImpl10mergestatsERNS0_20ImageCacheStatisticsE.exit
  %i.fj = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_7ustringENS0_13intrusive_ptrINS0_14ImageCacheFileEEESt4hashIS2_ESt8equal_toIS2_ELm64EN3tsl9robin_mapIS2_S5_S7_S9_SaISt4pairIS2_S5_EELb0ENSA_2rh26power_of_two_growth_policyILm2EEEEEE8iteratorD2Ev.exit309

bb.i:                                             ; preds = %bb.g
  %i.fk = load ptr, ptr %i.fc, align 8, !tbaa !552
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 16 ; 5 uses
  %i.fm = load ptr, ptr %i.fd, align 8, !tbaa !788 ; 6 uses
  %i.fn = load ptr, ptr %i.fe, align 8, !tbaa !791
  %.not.i304 = icmp eq ptr %i.fm, %i.fn
  br i1 %.not.i304, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.fo = load ptr, ptr %i.fl, align 8, !tbaa !553 ; 3 uses
  store ptr %i.fo, ptr %i.fm, align 8, !tbaa !553
  %.not.i.i305 = icmp eq ptr %i.fo, null
  br i1 %.not.i.i305, label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEC2ERKS3_.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.fp = atomicrmw add ptr %i.fo, i32 1 seq_cst, align 4 ; 0 uses
  %.pre.i = load ptr, ptr %i.fd, align 8, !tbaa !788
  br label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEC2ERKS3_.exit.i

_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEC2ERKS3_.exit.i: ; preds = %bb.k, %bb.j
  %i.fq = phi ptr [ %i.fm, %bb.j ], [ %.pre.i, %bb.k ]
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  store ptr %i.fr, ptr %i.fd, align 8, !tbaa !788
  br label %_ZNSt6vectorIN11OpenImageIO4v3_113intrusive_ptrINS1_14ImageCacheFileEEESaIS4_EE9push_backERKS4_.exit

bb.l:                                             ; preds = %bb.i
  %i.fs = load ptr, ptr %17, align 8, !tbaa !792  ; 10 uses
  %i.ft = ptrtoint ptr %i.fm to i64               ; 3 uses
  %i.fu = ptrtoint ptr %i.fs to i64               ; 4 uses
  %i.fv = sub i64 %i.ft, %i.fu                    ; 3 uses
  %i.fw = icmp eq i64 %i.fv, 9223372036854775800
  br i1 %i.fw, label %bb.m, label %_ZNKSt6vectorIN11OpenImageIO4v3_113intrusive_ptrINS1_14ImageCacheFileEEESaIS4_EE12_M_check_lenEmPKc.exit.i

bb.m:                                             ; preds = %bb.l
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.330) #48
          to label %.noexc668 unwind label %.loopexit.split-lp1188

.noexc668:                                        ; preds = %bb.m
  unreachable

_ZNKSt6vectorIN11OpenImageIO4v3_113intrusive_ptrINS1_14ImageCacheFileEEESaIS4_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.l
  %i.fx = ashr exact i64 %i.fv, 3                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.fx, i64 1)
  %i.fy = add nsw i64 %.sroa.speculated.i.i, %i.fx ; 2 uses
  %i.fz = icmp ult i64 %i.fy, %i.fx
  %i.ga = call i64 @llvm.umin.i64(i64 %i.fy, i64 1152921504606846975)
  %i.gb = select i1 %i.fz, i64 1152921504606846975, i64 %i.ga ; 3 uses
  %.not.i.i665 = icmp ne i64 %i.gb, 0
  call void @llvm.assume(i1 %.not.i.i665)
  %i.gc = shl nuw nsw i64 %i.gb, 3
  %i.gd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gc) #47
          to label %.noexc669 unwind label %.loopexit1187 ; 10 uses

.noexc669:                                        ; preds = %_ZNKSt6vectorIN11OpenImageIO4v3_113intrusive_ptrINS1_14ImageCacheFileEEESaIS4_EE12_M_check_lenEmPKc.exit.i
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 %i.fv
  %i.gf = load ptr, ptr %i.fl, align 8, !tbaa !553 ; 3 uses
  store ptr %i.gf, ptr %i.ge, align 8, !tbaa !553
  %.not.i26.i = icmp eq ptr %i.gf, null
  br i1 %.not.i26.i, label %_ZNSt16allocator_traitsISaIN11OpenImageIO4v3_113intrusive_ptrINS1_14ImageCacheFileEEEEE9constructIS4_JRKS4_EEEvRS5_PT_DpOT0_.exit.i, label %bb.n

bb.n:                                             ; preds = %.noexc669
  %i.gg = atomicrmw add ptr %i.gf, i32 1 seq_cst, align 4 ; 0 uses
  br label %_ZNSt16allocator_traitsISaIN11OpenImageIO4v3_113intrusive_ptrINS1_14ImageCacheFileEEEEE9constructIS4_JRKS4_EEEvRS5_PT_DpOT0_.exit.i

_ZNSt16allocator_traitsISaIN11OpenImageIO4v3_113intrusive_ptrINS1_14ImageCacheFileEEEEE9constructIS4_JRKS4_EEEvRS5_PT_DpOT0_.exit.i: ; preds = %bb.n, %.noexc669
  %.not10.i.i.i.i = icmp eq ptr %i.fs, %i.fm
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN11OpenImageIO4v3_113intrusive_ptrINS1_14ImageCacheFileEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit33.i, label %.lr.ph.i.i.i.i666.preheader

.lr.ph.i.i.i.i666.preheader:                      ; preds = %_ZNSt16allocator_traitsISaIN11OpenImageIO4v3_113intrusive_ptrINS1_14ImageCacheFileEEEEE9constructIS4_JRKS4_EEEvRS5_PT_DpOT0_.exit.i
  %60 = sub i64 %i.ft, %i.fu
  %61 = add i64 %60, -8                           ; 2 uses
  %i.gh = lshr i64 %61, 3
  %i.gi = add nuw nsw i64 %i.gh, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %61, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i666.preheader1701, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i666.preheader
  %scevgep = getelementptr i8, ptr %i.gd, i64 8
  %i.gj = add i64 %i.ft, -8
  %i.gk = sub i64 %i.gj, %i.fu
  %i.gl = and i64 %i.gk, -8                       ; 2 uses
  %scevgep1691 = getelementptr i8, ptr %scevgep, i64 %i.gl
  %scevgep1692 = getelementptr i8, ptr %i.fs, i64 8
  %scevgep1693 = getelementptr i8, ptr %scevgep1692, i64 %i.gl
  %bound0 = icmp ult ptr %i.gd, %scevgep1693
  %bound1 = icmp ult ptr %i.fs, %scevgep1691
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i666.preheader1701, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.gi, 4611686018427387900     ; 3 uses
  %i.gm = shl i64 %n.vec, 3                       ; 2 uses
  %i.gn = getelementptr i8, ptr %i.gd, i64 %i.gm  ; 2 uses
  %i.go = getelementptr i8, ptr %i.fs, i64 %i.gm
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.gp = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.gd, i64 %i.gp ; 2 uses
  %next.gep1694 = getelementptr i8, ptr %i.fs, i64 %i.gp ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !793)
  call void @llvm.experimental.noalias.scope.decl(metadata !796)
  %i.gq = getelementptr i8, ptr %next.gep1694, i64 16 ; 2 uses
  %wide.load = load <2 x ptr>, ptr %next.gep1694, align 8, !tbaa !553, !alias.scope !798, !noalias !793
  %wide.load1695 = load <2 x ptr>, ptr %i.gq, align 8, !tbaa !553, !alias.scope !798, !noalias !793
  %i.gr = getelementptr i8, ptr %next.gep, i64 16
  store <2 x ptr> %wide.load, ptr %next.gep, align 8, !tbaa !553, !alias.scope !801, !noalias !798
  store <2 x ptr> %wide.load1695, ptr %i.gr, align 8, !tbaa !553, !alias.scope !801, !noalias !798
  store <2 x ptr> splat (ptr null), ptr %next.gep1694, align 8, !tbaa !553, !alias.scope !798, !noalias !793
  store <2 x ptr> splat (ptr null), ptr %i.gq, align 8, !tbaa !553, !alias.scope !798, !noalias !793
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.gs = icmp eq i64 %index.next, %n.vec
  br i1 %i.gs, label %middle.block, label %vector.body, !llvm.loop !803

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.gi, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN11OpenImageIO4v3_113intrusive_ptrINS1_14ImageCacheFileEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit33.i, label %.lr.ph.i.i.i.i666.preheader1701

.lr.ph.i.i.i.i666.preheader1701:                  ; preds = %vector.memcheck, %.lr.ph.i.i.i.i666.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.gd, %vector.memcheck ], [ %i.gd, %.lr.ph.i.i.i.i666.preheader ], [ %i.gn, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.fs, %vector.memcheck ], [ %i.fs, %.lr.ph.i.i.i.i666.preheader ], [ %i.go, %middle.block ]
  br label %.lr.ph.i.i.i.i666

.lr.ph.i.i.i.i666:                                ; preds = %.lr.ph.i.i.i.i666.preheader1701, %.lr.ph.i.i.i.i666
  %.012.i.i.i.i = phi ptr [ %i.gv, %.lr.ph.i.i.i.i666 ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i666.preheader1701 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.gu, %.lr.ph.i.i.i.i666 ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i666.preheader1701 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !793)
  call void @llvm.experimental.noalias.scope.decl(metadata !796)
  %i.gt = load ptr, ptr %.0911.i.i.i.i, align 8, !tbaa !553, !alias.scope !796, !noalias !793
  store ptr %i.gt, ptr %.012.i.i.i.i, align 8, !tbaa !553, !alias.scope !793, !noalias !796
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !553, !alias.scope !796, !noalias !793
  %i.gu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i667 = icmp eq ptr %i.gu, %i.fm
  br i1 %.not.i.i.i.i667, label %_ZNSt6vectorIN11OpenImageIO4v3_113intrusive_ptrINS1_14ImageCacheFileEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit33.i, label %.lr.ph.i.i.i.i666, !llvm.loop !804

_ZNSt6vectorIN11OpenImageIO4v3_113intrusive_ptrINS1_14ImageCacheFileEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit33.i: ; preds = %.lr.ph.i.i.i.i666, %middle.block, %_ZNSt16allocator_traitsISaIN11OpenImageIO4v3_113intrusive_ptrINS1_14ImageCacheFileEEEEE9constructIS4_JRKS4_EEEvRS5_PT_DpOT0_.exit.i
  %.0.lcssa.i.i.i.i = phi ptr [ %i.gd, %_ZNSt16allocator_traitsISaIN11OpenImageIO4v3_113intrusive_ptrINS1_14ImageCacheFileEEEEE9constructIS4_JRKS4_EEEvRS5_PT_DpOT0_.exit.i ], [ %i.gn, %middle.block ], [ %i.gv, %.lr.ph.i.i.i.i666 ]
  %i.gw = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i34.i = icmp eq ptr %i.fs, null
  br i1 %.not.i34.i, label %.noexc, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_113intrusive_ptrINS1_14ImageCacheFileEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit33.i
  %i.gx = load ptr, ptr %i.fe, align 8, !tbaa !791
  %i.gy = ptrtoint ptr %i.gx to i64
  %i.gz = sub i64 %i.gy, %i.fu
  call void @_ZdlPvm(ptr noundef nonnull %i.fs, i64 noundef %i.gz) #46
  br label %.noexc

.noexc:                                           ; preds = %bb.o, %_ZNSt6vectorIN11OpenImageIO4v3_113intrusive_ptrINS1_14ImageCacheFileEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit33.i
  store ptr %i.gd, ptr %17, align 8, !tbaa !792
  store ptr %i.gw, ptr %i.fd, align 8, !tbaa !788
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.gd, i64 %i.gb
  store ptr %i.ha, ptr %i.fe, align 8, !tbaa !791
  br label %_ZNSt6vectorIN11OpenImageIO4v3_113intrusive_ptrINS1_14ImageCacheFileEEESaIS4_EE9push_backERKS4_.exit

_ZNSt6vectorIN11OpenImageIO4v3_113intrusive_ptrINS1_14ImageCacheFileEEESaIS4_EE9push_backERKS4_.exit: ; preds = %.noexc, %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEEC2ERKS3_.exit.i
  %i.hb = load ptr, ptr %i.fl, align 8, !tbaa !553 ; 3 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 216
  %i.hd = load i64, ptr %i.hc, align 8, !tbaa !490
  %i.he = load i64, ptr %i.b, align 8, !tbaa !201
  %i.hf = add i64 %i.he, %i.hd
  store i64 %i.hf, ptr %i.b, align 8, !tbaa !201
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hb, i64 184
  %i.hh = load i64, ptr %i.hg, align 8, !tbaa !750
  %i.hi = load i64, ptr %i.c, align 8, !tbaa !201
  %i.hj = add i64 %i.hi, %i.hh
  store i64 %i.hj, ptr %i.c, align 8, !tbaa !201
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hb, i64 200
  %i.hl = load atomic i64, ptr %i.hk seq_cst, align 8
  %i.hm = load i64, ptr %i.d, align 8, !tbaa !201
  %i.hn = add i64 %i.hm, %i.hl
  store i64 %i.hn, ptr %i.d, align 8, !tbaa !201
  %i.ho = load ptr, ptr %i.fl, align 8, !tbaa !553
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 208
  %i.hq = load atomic i64, ptr %i.hp seq_cst, align 8
  %i.hr = add i64 %i.hq, %.0149
  %i.hs = load ptr, ptr %i.fl, align 8, !tbaa !553 ; 5 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 192
  %i.hu = load i64, ptr %i.ht, align 8, !tbaa !751
  %i.hv = add i64 %i.hu, %.0
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hs, i64 224
  %i.hx = load <2 x double>, ptr %i.hw, align 8, !tbaa !71
  %i.hy = fadd <2 x double> %i.ff, %i.hx
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hs, i64 336
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !671
  %.not290 = icmp eq ptr %i.ia, null
  br i1 %.not290, label %bb.p, label %bb.q

.loopexit1187:                                    ; preds = %_ZNKSt6vectorIN11OpenImageIO4v3_113intrusive_ptrINS1_14ImageCacheFileEEESaIS4_EE12_M_check_lenEmPKc.exit.i
  %lpad.loopexit1189 = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

.loopexit.split-lp1188:                           ; preds = %bb.m
  %lpad.loopexit.split-lp1190 = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.p:                                             ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_113intrusive_ptrINS1_14ImageCacheFileEEESaIS4_EE9push_backERKS4_.exit
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hs, i64 80
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hs, i64 88
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !276
  %i.ie = load ptr, ptr %i.ib, align 8, !tbaa !275 ; 4 uses
  %i.if = ptrtoint ptr %i.id to i64
  %i.ig = ptrtoint ptr %i.ie to i64
  %i.ih = sub i64 %i.if, %i.ig                    ; 3 uses
  %i.ii = lshr exact i64 %i.ih, 7                 ; 3 uses
  %i.ij = trunc i64 %i.ii to i32
  %i.ik = icmp sgt i32 %i.ij, 0
  br i1 %i.ik, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.p
  %i.il = and i64 %i.ih, 274877906816
  %i.im = icmp eq i64 %i.il, 128
  br i1 %i.im, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.ii, 2147483646
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %i.in = and i64 %i.ih, 128
  %lcmp.mod.not = icmp eq i64 %i.in, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ]
  %.02021234.epil.init = phi i1 [ true, %.lr.ph.preheader ], [ %i.kc, %._crit_edge.loopexit.unr-lcssa ]
  %.epil.init = phi <2 x i1> [ zeroinitializer, %.lr.ph.preheader ], [ %i.jy, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod1716 = trunc i64 %i.ii to i1
  call void @llvm.assume(i1 %lcmp.mod1716)
  %i.io = getelementptr inbounds nuw [128 x i8], ptr %i.ie, i64 %indvars.iv.epil.init ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 40
  %i.iq = zext <2 x i1> %.epil.init to <2 x i8>
  %i.ir = load <2 x i8>, ptr %i.ip, align 8, !tbaa !530
  %i.is = or <2 x i8> %i.ir, %i.iq
  %i.it = getelementptr inbounds nuw i8, ptr %i.io, i64 45
  %i.iu = load i8, ptr %i.it, align 1, !tbaa !364, !range !368, !noundef !290
  %i.iv = icmp ne i8 %i.iu, 0
  %i.iw = and i1 %.02021234.epil.init, %i.iv
  br label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil.preheader
  %.lcssa1703 = phi <2 x i8> [ %i.jx, %._crit_edge.loopexit.unr-lcssa ], [ %i.is, %.lr.ph.epil.preheader ]
  %.lcssa1702 = phi i1 [ %i.kc, %._crit_edge.loopexit.unr-lcssa ], [ %i.iw, %.lr.ph.epil.preheader ]
  %i.ix = trunc <2 x i8> %.lcssa1703 to <2 x i1>
  %i.iy = zext i1 %.lcssa1702 to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.p
  %.0202.lcssa = phi i64 [ 1, %bb.p ], [ %i.iy, %._crit_edge.loopexit ]
  %i.iz = phi <2 x i1> [ zeroinitializer, %bb.p ], [ %i.ix, %._crit_edge.loopexit ] ; 2 uses
  %i.ja = load i64, ptr %i.e, align 8, !tbaa !201
  %i.jb = extractelement <2 x i1> %i.iz, i64 0
  %i.jc = zext i1 %i.jb to i64
  %i.jd = add i64 %i.ja, %i.jc
  store i64 %i.jd, ptr %i.e, align 8, !tbaa !201
  %i.je = load i64, ptr %i.f, align 8, !tbaa !201
  %i.jf = extractelement <2 x i1> %i.iz, i64 1
  %i.jg = zext i1 %i.jf to i64
  %i.jh = add i64 %i.je, %i.jg
  store i64 %i.jh, ptr %i.f, align 8, !tbaa !201
  br label %bb.q

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 3 uses
  %.02021234 = phi i1 [ true, %.lr.ph.preheader.new ], [ %i.kc, %.lr.ph ]
  %i.ji = phi <2 x i1> [ zeroinitializer, %.lr.ph.preheader.new ], [ %i.jy, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
end_hunk_2
begin_hunk_3_@_ZN11OpenImageIO4v3_114ImageCacheImpl14invalidate_allEb:bb.a

bb.k:                                             ; preds = %bb.c
  %i.ap = load ptr, ptr %i.d, align 8, !tbaa !552
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !553
  invoke void @_ZN11OpenImageIO4v3_114ImageCacheFile10invalidateEv(ptr noundef nonnull align 8 dereferenceable(400) %i.ar)
          to label %bb.l unwind label %_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_7ustringENS0_13intrusive_ptrINS0_14ImageCacheFileEEESt4hashIS2_ESt8equal_toIS2_ELm64EN3tsl9robin_mapIS2_S5_S7_S9_SaISt4pairIS2_S5_EELb0ENSA_2rh26power_of_two_growth_policyILm2EEEEEE8iteratorD2Ev.exit85

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_7ustringENS0_13intrusive_ptrINS0_14ImageCacheFileEEESt4hashIS2_ESt8equal_toIS2_ELm64EN3tsl9robin_mapIS2_S5_S7_S9_SaISt4pairIS2_S5_EELb0ENSA_2rh26power_of_two_growth_policyILm2EEEEEE8iteratorppEv(ptr noundef nonnull align 8 dereferenceable(25) %6)
          to label %bb.c unwind label %_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_7ustringENS0_13intrusive_ptrINS0_14ImageCacheFileEEESt4hashIS2_ESt8equal_toIS2_ELm64EN3tsl9robin_mapIS2_S5_S7_S9_SaISt4pairIS2_S5_EELb0ENSA_2rh26power_of_two_growth_policyILm2EEEEEE8iteratorD2Ev.exit85, !llvm.loop !931

bb.m:                                             ; preds = %_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_7ustringENS0_13intrusive_ptrINS0_14ImageCacheFileEEESt4hashIS2_ESt8equal_toIS2_ELm64EN3tsl9robin_mapIS2_S5_S7_S9_SaISt4pairIS2_S5_EELb0ENSA_2rh26power_of_two_growth_policyILm2EEEEEE8iteratorD2Ev.exit85
  %i.as = load i32, ptr %i.c, align 8, !tbaa !536 ; 2 uses
  %i.at = icmp sgt i32 %i.as, -1
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.av = load i8, ptr %i.au, align 8, !range !368
  %i.aw = trunc nuw i8 %i.av to i1
  %or.cond.i87 = select i1 %i.at, i1 %i.aw, i1 false
  br i1 %or.cond.i87, label %_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_7ustringENS0_13intrusive_ptrINS0_14ImageCacheFileEEESt4hashIS2_ESt8equal_toIS2_ELm64EN3tsl9robin_mapIS2_S5_S7_S9_SaISt4pairIS2_S5_EELb0ENSA_2rh26power_of_two_growth_policyILm2EEEEEE8iterator6unlockEv.exit.i.i.i88, label %_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_7ustringENS0_13intrusive_ptrINS0_14ImageCacheFileEEESt4hashIS2_ESt8equal_toIS2_ELm64EN3tsl9robin_mapIS2_S5_S7_S9_SaISt4pairIS2_S5_EELb0ENSA_2rh26power_of_two_growth_policyILm2EEEEEE8iteratorD2Ev.exit89

_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_7ustringENS0_13intrusive_ptrINS0_14ImageCacheFileEEESt4hashIS2_ESt8equal_toIS2_ELm64EN3tsl9robin_mapIS2_S5_S7_S9_SaISt4pairIS2_S5_EELb0ENSA_2rh26power_of_two_growth_policyILm2EEEEEE8iterator6unlockEv.exit.i.i.i88: ; preds = %bb.m
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ao, i64 64
  %i.ay = zext nneg i32 %i.as to i64
  %i.az = getelementptr inbounds nuw [128 x i8], ptr %i.ax, i64 %i.ay
  %i.ba = atomicrmw sub ptr %i.az, i32 1073741824 release, align 4 ; 0 uses
  br label %_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_7ustringENS0_13intrusive_ptrINS0_14ImageCacheFileEEESt4hashIS2_ESt8equal_toIS2_ELm64EN3tsl9robin_mapIS2_S5_S7_S9_SaISt4pairIS2_S5_EELb0ENSA_2rh26power_of_two_growth_policyILm2EEEEEE8iteratorD2Ev.exit89

_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_7ustringENS0_13intrusive_ptrINS0_14ImageCacheFileEEESt4hashIS2_ESt8equal_toIS2_ELm64EN3tsl9robin_mapIS2_S5_S7_S9_SaISt4pairIS2_S5_EELb0ENSA_2rh26power_of_two_growth_policyILm2EEEEEE8iteratorD2Ev.exit89: ; preds = %_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_7ustringENS0_13intrusive_ptrINS0_14ImageCacheFileEEESt4hashIS2_ESt8equal_toIS2_ELm64EN3tsl9robin_mapIS2_S5_S7_S9_SaISt4pairIS2_S5_EELb0ENSA_2rh26power_of_two_growth_policyILm2EEEEEE8iteratorD2Ev.exit85, %bb.m, %_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_7ustringENS0_13intrusive_ptrINS0_14ImageCacheFileEEESt4hashIS2_ESt8equal_toIS2_ELm64EN3tsl9robin_mapIS2_S5_S7_S9_SaISt4pairIS2_S5_EELb0ENSA_2rh26power_of_two_growth_policyILm2EEEEEE8iterator6unlockEv.exit.i.i.i88
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #5
  br label %_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EED2Ev.exit192

bb.n:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #5
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  invoke void @_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_7ustringENS0_13intrusive_ptrINS0_14ImageCacheFileEEESt4hashIS2_ESt8equal_toIS2_ELm64EN3tsl9robin_mapIS2_S5_S7_S9_SaISt4pairIS2_S5_EELb0ENSA_2rh26power_of_two_growth_policyILm2EEEEEE5beginEv(ptr dead_on_unwind nonnull writable sret(%"class.OpenImageIO::v3_1::unordered_map_concurrent<OpenImageIO::v3_1::ustring, OpenImageIO::v3_1::intrusive_ptr<OpenImageIO::v3_1::ImageCacheFile>, std::hash<OIIO::ustring>, std::equal_to<OpenImageIO::v3_1::ustring>, 64, tsl::robin_map<OpenImageIO::v3_1::ustring, OpenImageIO::v3_1::intrusive_ptr<OpenImageIO::v3_1::ImageCacheFile>>>::iterator") align 8 %7, ptr noundef nonnull align 64 dereferenceable(8256) %i.bb)
          to label %.preheader254 unwind label %bb.p

.preheader254:                                    ; preds = %bb.n
  %i.bc = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.be = getelementptr inbounds nuw i8, ptr %8, i64 1 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.bj = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 141
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.bn = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bq = getelementptr inbounds nuw i8, ptr %8, i64 16
  br label %bb.o

bb.o:                                             ; preds = %.preheader254, %_ZN11OpenImageIO4v3_15TimerD2Ev.exit
  %.sroa.28.0 = phi ptr [ %.sroa.28.3, %_ZN11OpenImageIO4v3_15TimerD2Ev.exit ], [ null, %.preheader254 ] ; 19 uses
  %.sroa.15221.0 = phi ptr [ %.sroa.15221.3, %_ZN11OpenImageIO4v3_15TimerD2Ev.exit ], [ null, %.preheader254 ] ; 10 uses
  %.sroa.0214.0 = phi ptr [ %.sroa.0214.3, %_ZN11OpenImageIO4v3_15TimerD2Ev.exit ], [ null, %.preheader254 ] ; 29 uses
  %i.br = load ptr, ptr %7, align 8, !tbaa !532
  %.not.i.i90 = icmp eq ptr %i.br, %i.bb
  %i.bs = load i32, ptr %i.bc, align 8
  %i.bt = icmp eq i32 %i.bs, -1
  %or.cond251 = select i1 %.not.i.i90, i1 %i.bt, i1 false
  br i1 %or.cond251, label %_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_7ustringENS0_13intrusive_ptrINS0_14ImageCacheFileEEESt4hashIS2_ESt8equal_toIS2_ELm64EN3tsl9robin_mapIS2_S5_S7_S9_SaISt4pairIS2_S5_EELb0ENSA_2rh26power_of_two_growth_policyILm2EEEEEE8iteratorD2Ev.exit101, label %bb.r

_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_7ustringENS0_13intrusive_ptrINS0_14ImageCacheFileEEESt4hashIS2_ESt8equal_toIS2_ELm64EN3tsl9robin_mapIS2_S5_S7_S9_SaISt4pairIS2_S5_EELb0ENSA_2rh26power_of_two_growth_policyILm2EEEEEE8iteratorD2Ev.exit101: ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #5
  %.not252357 = icmp eq ptr %.sroa.0214.0, %.sroa.15221.0
  br i1 %.not252357, label %._crit_edge, label %.lr.ph359

bb.p:                                             ; preds = %bb.n
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_7ustringENS0_13intrusive_ptrINS0_14ImageCacheFileEEESt4hashIS2_ESt8equal_toIS2_ELm64EN3tsl9robin_mapIS2_S5_S7_S9_SaISt4pairIS2_S5_EELb0ENSA_2rh26power_of_two_growth_policyILm2EEEEEE8iteratorD2Ev.exit169

bb.q:                                             ; preds = %_ZN11OpenImageIO4v3_15TimerD2Ev.exit
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_7ustringENS0_13intrusive_ptrINS0_14ImageCacheFileEEESt4hashIS2_ESt8equal_toIS2_ELm64EN3tsl9robin_mapIS2_S5_S7_S9_SaISt4pairIS2_S5_EELb0ENSA_2rh26power_of_two_growth_policyILm2EEEEEE8iteratorD2Ev.exit165

bb.r:                                             ; preds = %bb.o
  %i.bw = load ptr, ptr %i.bd, align 8, !tbaa !552
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16 ; 5 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !553
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %.sroa.0.0.copyload.i = load ptr, ptr %i.bz, align 8, !tbaa !114 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #5
  store i8 0, ptr %i.be, align 1, !tbaa !434
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bq, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #5
  %i.ca = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %5) #5 ; 0 uses
  %i.cb = load i64, ptr %5, align 8, !tbaa !436
  %i.cc = mul nsw i64 %i.cb, 1000000000
  %i.cd = load i64, ptr %i.bg, align 8, !tbaa !438
  %i.ce = add nsw i64 %i.cc, %i.cd                ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #5
  store i64 %i.ce, ptr %i.bf, align 8, !tbaa !439
  store i8 1, ptr %8, align 8, !tbaa !440
  %i.cf = load ptr, ptr %i.bx, align 8, !tbaa !553
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 280 ; 3 uses
  %i.ch = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.cg) #5 ; 2 uses
  %.not.i.i102 = icmp eq i32 %i.ch, 0
  br i1 %.not.i.i102, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.ch) #48
          to label %.noexc unwind label %bb.aa

.noexc:                                           ; preds = %bb.s
  unreachable

bb.t:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #5
  %i.ci = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %4) #5 ; 0 uses
  %i.cj = load i64, ptr %4, align 8, !tbaa !436
  %i.ck = load i64, ptr %i.bh, align 8, !tbaa !438
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #5
  %i.cl = sub i64 %i.ck, %i.ce
  %i.cm = mul nsw i64 %i.cj, 1000000000
  %i.cn = add i64 %i.cl, %i.cm
  %i.co = call noundef i64 @llvm.abs.i64(i64 %i.cn, i1 true)
  %i.cp = uitofp nneg i64 %i.co to double
  %i.cq = load double, ptr @_ZN11OpenImageIO4v3_15Timer16seconds_per_tickE, align 8, !tbaa !71
  %i.cr = fmul double %i.cq, %i.cp
  %i.cs = load ptr, ptr %i.bx, align 8, !tbaa !553 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 232 ; 2 uses
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !441
  %i.cv = fadd double %i.cu, %i.cr
  store double %i.cv, ptr %i.ct, align 8, !tbaa !441
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cs, i64 25
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !166, !range !368, !noundef !290
  %i.cy = trunc nuw i8 %i.cx to i1
  br i1 %i.cy, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @llvm.experimental.noalias.scope.decl(metadata !932)
  %.not.i.i103 = icmp eq ptr %.sroa.0.0.copyload.i, null
  br i1 %.not.i.i103, label %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit, label %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit.thread

_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit: ; preds = %bb.u
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  %i.cz = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110Filesystem6existsENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull dead_on_return %9) #5
  br i1 %i.cz, label %bb.ab, label %bb.v

_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit.thread: ; preds = %bb.u
  %i.da = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i, i64 -24 ; 2 uses
  %i.db = load i64, ptr %i.da, align 8, !tbaa !207, !noalias !932
  store ptr %.sroa.0.0.copyload.i, ptr %9, align 8, !tbaa !7, !alias.scope !932
  store i64 %i.db, ptr %i.bj, align 8, !tbaa !12, !alias.scope !932
  %i.dc = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110Filesystem6existsENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull dead_on_return %9) #5
  br i1 %i.dc, label %bb.ac, label %bb.v

bb.v:                                             ; preds = %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit.thread, %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit, %bb.t
  %.not.i105 = icmp eq ptr %.sroa.15221.0, %.sroa.28.0
  br i1 %.not.i105, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dd = ptrtoint ptr %.sroa.0.0.copyload.i to i64
  store i64 %i.dd, ptr %.sroa.15221.0, align 8, !tbaa !114
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.15221.0, i64 8
  br label %.critedge76

bb.x:                                             ; preds = %bb.v
  %i.df = ptrtoint ptr %.sroa.28.0 to i64         ; 2 uses
  %i.dg = ptrtoint ptr %.sroa.0214.0 to i64       ; 3 uses
  %i.dh = sub i64 %i.df, %i.dg                    ; 4 uses
  %i.di = icmp eq i64 %i.dh, 9223372036854775800
  br i1 %i.di, label %bb.y, label %_ZNKSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.y:                                             ; preds = %bb.x
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.330) #48
          to label %.noexc107 unwind label %.loopexit.split-lp266

.noexc107:                                        ; preds = %bb.y
  unreachable

_ZNKSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.x
  %i.dj = ashr exact i64 %i.dh, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.dj, i64 1)
  %i.dk = add nsw i64 %.sroa.speculated.i.i.i, %i.dj ; 2 uses
  %i.dl = icmp ult i64 %i.dk, %i.dj
  %i.dm = call i64 @llvm.umin.i64(i64 %i.dk, i64 1152921504606846975)
  %i.dn = select i1 %i.dl, i64 1152921504606846975, i64 %i.dm ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.dn, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.do = shl nuw nsw i64 %i.dn, 3
  %i.dp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.do) #47
          to label %.noexc108 unwind label %.loopexit265 ; 8 uses

.noexc108:                                        ; preds = %_ZNKSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.dh
  %i.dr = ptrtoint ptr %.sroa.0.0.copyload.i to i64
  store i64 %i.dr, ptr %i.dq, align 8, !tbaa !114
  %.not10.i.i.i.i.i = icmp eq ptr %.sroa.0214.0, %.sroa.28.0
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i106.preheader

.lr.ph.i.i.i.i.i106.preheader:                    ; preds = %.noexc108
  %i.ds = ptrtoaddr ptr %i.dp to i64
  %11 = sub i64 %i.df, %i.dg
  %12 = add i64 %11, -8                           ; 2 uses
  %i.dt = lshr i64 %12, 3
  %i.du = add nuw nsw i64 %i.dt, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %12, 24
  %i.dv = sub i64 %i.ds, %i.dg
  %diff.check = icmp ult i64 %i.dv, 32
  %or.cond659 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond659, label %.lr.ph.i.i.i.i.i106.preheader664, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i106.preheader
  %n.vec = and i64 %i.du, 4611686018427387900     ; 3 uses
  %i.dw = shl i64 %n.vec, 3                       ; 2 uses
  %i.dx = getelementptr i8, ptr %i.dp, i64 %i.dw  ; 2 uses
  %i.dy = getelementptr i8, ptr %.sroa.0214.0, i64 %i.dw
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dz = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.dp, i64 %i.dz ; 2 uses
  %next.gep601 = getelementptr i8, ptr %.sroa.0214.0, i64 %i.dz ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !935)
  call void @llvm.experimental.noalias.scope.decl(metadata !938)
  %i.ea = getelementptr i8, ptr %next.gep601, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep601, align 8, !tbaa !114, !alias.scope !938, !noalias !935
  %wide.load602 = load <2 x i64>, ptr %i.ea, align 8, !tbaa !114, !alias.scope !938, !noalias !935
  %i.eb = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !114, !alias.scope !935, !noalias !938
  store <2 x i64> %wide.load602, ptr %i.eb, align 8, !tbaa !114, !alias.scope !935, !noalias !938
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ec = icmp eq i64 %index.next, %n.vec
  br i1 %i.ec, label %middle.block, label %vector.body, !llvm.loop !940

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.du, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i106.preheader664

.lr.ph.i.i.i.i.i106.preheader664:                 ; preds = %.lr.ph.i.i.i.i.i106.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.dp, %.lr.ph.i.i.i.i.i106.preheader ], [ %i.dx, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %.sroa.0214.0, %.lr.ph.i.i.i.i.i106.preheader ], [ %i.dy, %middle.block ]
  br label %.lr.ph.i.i.i.i.i106

.lr.ph.i.i.i.i.i106:                              ; preds = %.lr.ph.i.i.i.i.i106.preheader664, %.lr.ph.i.i.i.i.i106
  %.012.i.i.i.i.i = phi ptr [ %i.ef, %.lr.ph.i.i.i.i.i106 ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i106.preheader664 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ee, %.lr.ph.i.i.i.i.i106 ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i106.preheader664 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !935)
  call void @llvm.experimental.noalias.scope.decl(metadata !938)
  %i.ed = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !114, !alias.scope !938, !noalias !935
  store i64 %i.ed, ptr %.012.i.i.i.i.i, align 8, !tbaa !114, !alias.scope !935, !noalias !938
  %i.ee = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ee, %.sroa.28.0
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i106, !llvm.loop !941

_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i106, %middle.block, %.noexc108
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.dp, %.noexc108 ], [ %i.dx, %middle.block ], [ %i.ef, %.lr.ph.i.i.i.i.i106 ]
  %i.eg = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %.sroa.0214.0, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.z

bb.z:                                             ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0214.0, i64 noundef %i.dh) #46
  br label %_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.z, %_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %i.dn
  br label %.critedge76

bb.aa:                                            ; preds = %bb.s
  %i.ei = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

.loopexit265:                                     ; preds = %_ZNKSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit267 = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

.loopexit.split-lp266:                            ; preds = %bb.y
  %lpad.loopexit.split-lp268 = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

bb.ab:                                            ; preds = %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !942)
  br label %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit111

bb.ac:                                            ; preds = %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit.thread
  %i.ej = load i64, ptr %i.da, align 8, !tbaa !207, !noalias !942
  br label %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit111

_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit111: ; preds = %bb.ab, %bb.ac
  %.0.i.i110 = phi i64 [ %i.ej, %bb.ac ], [ 0, %bb.ab ]
  store ptr %.sroa.0.0.copyload.i, ptr %10, align 8, !tbaa !7, !alias.scope !942
  store i64 %.0.i.i110, ptr %i.bk, align 8, !tbaa !12, !alias.scope !942
  %i.ek = call noundef i64 @_ZN11OpenImageIO4v3_110Filesystem15last_write_timeENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull dead_on_return %10) #5
  %i.el = load ptr, ptr %i.bx, align 8, !tbaa !553 ; 4 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 320
  %i.en = load i64, ptr %i.em, align 8, !tbaa !576
  %.not = icmp eq i64 %i.ek, %i.en
  br i1 %.not, label %.preheader, label %bb.ad

.preheader:                                       ; preds = %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit111
  %i.eo = getelementptr inbounds nuw i8, ptr %i.el, i64 80
  %i.ep = getelementptr inbounds nuw i8, ptr %i.el, i64 88
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !276
  %i.er = load ptr, ptr %i.eo, align 8, !tbaa !275 ; 2 uses
  %i.es = ptrtoint ptr %i.eq to i64
  %i.et = ptrtoint ptr %i.er to i64
  %i.eu = sub i64 %i.es, %i.et
  %i.ev = lshr exact i64 %i.eu, 7
  %i.ew = trunc i64 %i.ev to i32
  %i.ex = icmp sgt i32 %i.ew, 0
  br i1 %i.ex, label %.lr.ph354, label %.critedge76

.lr.ph354:                                        ; preds = %.preheader
  %i.ey = ptrtoint ptr %.sroa.0.0.copyload.i to i64 ; 4 uses
  br label %bb.ai

bb.ad:                                            ; preds = %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit111
  %.not.i112 = icmp eq ptr %.sroa.15221.0, %.sroa.28.0
  br i1 %.not.i112, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ez = ptrtoint ptr %.sroa.0.0.copyload.i to i64
  store i64 %i.ez, ptr %.sroa.15221.0, align 8, !tbaa !114
  %i.fa = getelementptr inbounds nuw i8, ptr %.sroa.15221.0, i64 8
  br label %.critedge76

bb.af:                                            ; preds = %bb.ad
  %i.fb = ptrtoint ptr %.sroa.28.0 to i64         ; 2 uses
  %i.fc = ptrtoint ptr %.sroa.0214.0 to i64       ; 3 uses
  %i.fd = sub i64 %i.fb, %i.fc                    ; 4 uses
  %i.fe = icmp eq i64 %i.fd, 9223372036854775800
  br i1 %i.fe, label %bb.ag, label %_ZNKSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE12_M_check_lenEmPKc.exit.i.i113

bb.ag:                                            ; preds = %bb.af
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.330) #48
          to label %.noexc125 unwind label %.loopexit.split-lp256

.noexc125:                                        ; preds = %bb.ag
  unreachable

_ZNKSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE12_M_check_lenEmPKc.exit.i.i113: ; preds = %bb.af
  %i.ff = ashr exact i64 %i.fd, 3                 ; 3 uses
  %.sroa.speculated.i.i.i114 = call i64 @llvm.umax.i64(i64 %i.ff, i64 1)
  %i.fg = add nsw i64 %.sroa.speculated.i.i.i114, %i.ff ; 2 uses
  %i.fh = icmp ult i64 %i.fg, %i.ff
  %i.fi = call i64 @llvm.umin.i64(i64 %i.fg, i64 1152921504606846975)
  %i.fj = select i1 %i.fh, i64 1152921504606846975, i64 %i.fi ; 3 uses
  %.not.i.i.i115 = icmp ne i64 %i.fj, 0
  call void @llvm.assume(i1 %.not.i.i.i115)
  %i.fk = shl nuw nsw i64 %i.fj, 3
  %i.fl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fk) #47
          to label %.noexc126 unwind label %.loopexit255 ; 8 uses

.noexc126:                                        ; preds = %_ZNKSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE12_M_check_lenEmPKc.exit.i.i113
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 %i.fd
  %i.fn = ptrtoint ptr %.sroa.0.0.copyload.i to i64
  store i64 %i.fn, ptr %i.fm, align 8, !tbaa !114
  %.not10.i.i.i.i.i116 = icmp eq ptr %.sroa.0214.0, %.sroa.28.0
  br i1 %.not10.i.i.i.i.i116, label %_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i121, label %.lr.ph.i.i.i.i.i117.preheader

.lr.ph.i.i.i.i.i117.preheader:                    ; preds = %.noexc126
  %i.fo = ptrtoaddr ptr %i.fl to i64
  %13 = sub i64 %i.fb, %i.fc
  %14 = add i64 %13, -8                           ; 2 uses
  %i.fp = lshr i64 %14, 3
  %i.fq = add nuw nsw i64 %i.fp, 1                ; 2 uses
  %min.iters.check644 = icmp ult i64 %14, 24
  %i.fr = sub i64 %i.fo, %i.fc
  %diff.check642 = icmp ult i64 %i.fr, 32
  %or.cond660 = or i1 %min.iters.check644, %diff.check642
  br i1 %or.cond660, label %.lr.ph.i.i.i.i.i117.preheader666, label %vector.ph645

vector.ph645:                                     ; preds = %.lr.ph.i.i.i.i.i117.preheader
  %n.vec647 = and i64 %i.fq, 4611686018427387900  ; 3 uses
  %i.fs = shl i64 %n.vec647, 3                    ; 2 uses
  %i.ft = getelementptr i8, ptr %i.fl, i64 %i.fs  ; 2 uses
  %i.fu = getelementptr i8, ptr %.sroa.0214.0, i64 %i.fs
  br label %vector.body648

vector.body648:                                   ; preds = %vector.body648, %vector.ph645
  %index649 = phi i64 [ 0, %vector.ph645 ], [ %index.next654, %vector.body648 ] ; 2 uses
  %i.fv = shl i64 %index649, 3                    ; 2 uses
  %next.gep650 = getelementptr i8, ptr %i.fl, i64 %i.fv ; 2 uses
  %next.gep651 = getelementptr i8, ptr %.sroa.0214.0, i64 %i.fv ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !945)
  call void @llvm.experimental.noalias.scope.decl(metadata !948)
  %i.fw = getelementptr i8, ptr %next.gep651, i64 16
  %wide.load652 = load <2 x i64>, ptr %next.gep651, align 8, !tbaa !114, !alias.scope !948, !noalias !945
  %wide.load653 = load <2 x i64>, ptr %i.fw, align 8, !tbaa !114, !alias.scope !948, !noalias !945
  %i.fx = getelementptr i8, ptr %next.gep650, i64 16
  store <2 x i64> %wide.load652, ptr %next.gep650, align 8, !tbaa !114, !alias.scope !945, !noalias !948
  store <2 x i64> %wide.load653, ptr %i.fx, align 8, !tbaa !114, !alias.scope !945, !noalias !948
  %index.next654 = add nuw i64 %index649, 4       ; 2 uses
  %i.fy = icmp eq i64 %index.next654, %n.vec647
  br i1 %i.fy, label %middle.block655, label %vector.body648, !llvm.loop !950

middle.block655:                                  ; preds = %vector.body648
  %cmp.n656 = icmp eq i64 %i.fq, %n.vec647
  br i1 %cmp.n656, label %_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i121, label %.lr.ph.i.i.i.i.i117.preheader666

.lr.ph.i.i.i.i.i117.preheader666:                 ; preds = %.lr.ph.i.i.i.i.i117.preheader, %middle.block655
  %.012.i.i.i.i.i118.ph = phi ptr [ %i.fl, %.lr.ph.i.i.i.i.i117.preheader ], [ %i.ft, %middle.block655 ]
  %.0911.i.i.i.i.i119.ph = phi ptr [ %.sroa.0214.0, %.lr.ph.i.i.i.i.i117.preheader ], [ %i.fu, %middle.block655 ]
  br label %.lr.ph.i.i.i.i.i117

.lr.ph.i.i.i.i.i117:                              ; preds = %.lr.ph.i.i.i.i.i117.preheader666, %.lr.ph.i.i.i.i.i117
  %.012.i.i.i.i.i118 = phi ptr [ %i.gb, %.lr.ph.i.i.i.i.i117 ], [ %.012.i.i.i.i.i118.ph, %.lr.ph.i.i.i.i.i117.preheader666 ] ; 2 uses
  %.0911.i.i.i.i.i119 = phi ptr [ %i.ga, %.lr.ph.i.i.i.i.i117 ], [ %.0911.i.i.i.i.i119.ph, %.lr.ph.i.i.i.i.i117.preheader666 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !945)
  call void @llvm.experimental.noalias.scope.decl(metadata !948)
  %i.fz = load i64, ptr %.0911.i.i.i.i.i119, align 8, !tbaa !114, !alias.scope !948, !noalias !945
  store i64 %i.fz, ptr %.012.i.i.i.i.i118, align 8, !tbaa !114, !alias.scope !945, !noalias !948
  %i.ga = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i119, i64 8 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i118, i64 8 ; 2 uses
  %.not.i.i.i.i.i120 = icmp eq ptr %i.ga, %.sroa.28.0
  br i1 %.not.i.i.i.i.i120, label %_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i121, label %.lr.ph.i.i.i.i.i117, !llvm.loop !951

_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i121: ; preds = %.lr.ph.i.i.i.i.i117, %middle.block655, %.noexc126
  %.0.lcssa.i.i.i.i.i122 = phi ptr [ %i.fl, %.noexc126 ], [ %i.ft, %middle.block655 ], [ %i.gb, %.lr.ph.i.i.i.i.i117 ]
  %i.gc = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i122, i64 8
  %.not.i23.i.i123 = icmp eq ptr %.sroa.0214.0, null
  br i1 %.not.i23.i.i123, label %_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i124, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i121
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0214.0, i64 noundef %i.fd) #46
  br label %_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i124

_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i124: ; preds = %bb.ah, %_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i121
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %i.fj
  br label %.critedge76

.loopexit255:                                     ; preds = %_ZNKSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE12_M_check_lenEmPKc.exit.i.i113
  %lpad.loopexit257 = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

.loopexit.split-lp256:                            ; preds = %bb.ag
  %lpad.loopexit.split-lp258 = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

bb.ai:                                            ; preds = %.lr.ph354, %.critedge
  %i.ge = phi ptr [ %i.el, %.lr.ph354 ], [ %i.jy, %.critedge ] ; 4 uses
  %indvars.iv432 = phi i64 [ 0, %.lr.ph354 ], [ %indvars.iv.next433, %.critedge ] ; 2 uses
  %i.gf = phi ptr [ %i.er, %.lr.ph354 ], [ %i.kc, %.critedge ]
  %.sroa.0214.1352 = phi ptr [ %.sroa.0214.0, %.lr.ph354 ], [ %.sroa.0214.2, %.critedge ] ; 24 uses
  %.sroa.15221.1351 = phi ptr [ %.sroa.15221.0, %.lr.ph354 ], [ %.sroa.15221.2, %.critedge ] ; 19 uses
  %.sroa.28.1350 = phi ptr [ %.sroa.28.0, %.lr.ph354 ], [ %.sroa.28.2, %.critedge ] ; 7 uses
  %.sroa.0214.1352605 = ptrtoaddr ptr %.sroa.0214.1352 to i64 ; 2 uses
  %i.gg = getelementptr inbounds nuw [128 x i8], ptr %i.gf, i64 %indvars.iv432 ; 7 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 41
  %i.gi = load i8, ptr %i.gh, align 1, !tbaa !509, !range !368, !noundef !290
  %i.gj = trunc nuw i8 %i.gi to i1
  br i1 %i.gj, label %bb.aj, label %.thread245

bb.aj:                                            ; preds = %bb.ai
  %i.gk = load i8, ptr %i.bl, align 1, !tbaa !510, !range !368, !noundef !290
  %i.gl = trunc nuw i8 %i.gk to i1
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gg, i64 8
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !375
  %i.go = load ptr, ptr %i.gg, align 8, !tbaa !374
  %i.gp = ptrtoint ptr %i.gn to i64
  %i.gq = ptrtoint ptr %i.go to i64
  %i.gr = sub i64 %i.gp, %i.gq
  %i.gs = sdiv exact i64 %i.gr, 40
  %i.gt = trunc i64 %i.gs to i32                  ; 2 uses
  br i1 %i.gl, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.gu = icmp slt i32 %i.gt, 2
  br i1 %i.gu, label %bb.am, label %.thread245

bb.al:                                            ; preds = %bb.aj
  %i.gv = icmp sgt i32 %i.gt, 1
  br i1 %i.gv, label %bb.am, label %.thread245

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.not.i128 = icmp eq ptr %.sroa.15221.1351, %.sroa.28.1350
  br i1 %.not.i128, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  store i64 %i.ey, ptr %.sroa.15221.1351, align 8, !tbaa !114
  %i.gw = getelementptr inbounds nuw i8, ptr %.sroa.15221.1351, i64 8
  br label %.critedge76

bb.ao:                                            ; preds = %bb.am
  %i.gx = ptrtoint ptr %.sroa.15221.1351 to i64   ; 2 uses
  %i.gy = ptrtoint ptr %.sroa.0214.1352 to i64    ; 2 uses
  %i.gz = sub i64 %i.gx, %i.gy                    ; 4 uses
  %i.ha = icmp eq i64 %i.gz, 9223372036854775800
  br i1 %i.ha, label %bb.ap, label %_ZNKSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE12_M_check_lenEmPKc.exit.i.i129

bb.ap:                                            ; preds = %bb.ao
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.330) #48
          to label %.noexc141 unwind label %.loopexit.split-lp261

.noexc141:                                        ; preds = %bb.ap
  unreachable

_ZNKSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE12_M_check_lenEmPKc.exit.i.i129: ; preds = %bb.ao
  %i.hb = ashr exact i64 %i.gz, 3                 ; 3 uses
  %.sroa.speculated.i.i.i130 = call i64 @llvm.umax.i64(i64 %i.hb, i64 1)
  %i.hc = add nsw i64 %.sroa.speculated.i.i.i130, %i.hb ; 2 uses
  %i.hd = icmp ult i64 %i.hc, %i.hb
  %i.he = call i64 @llvm.umin.i64(i64 %i.hc, i64 1152921504606846975)
  %i.hf = select i1 %i.hd, i64 1152921504606846975, i64 %i.he ; 3 uses
  %.not.i.i.i131 = icmp ne i64 %i.hf, 0
  call void @llvm.assume(i1 %.not.i.i.i131)
  %i.hg = shl nuw nsw i64 %i.hf, 3
  %i.hh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hg) #47
          to label %.noexc142 unwind label %.loopexit260 ; 8 uses

.noexc142:                                        ; preds = %_ZNKSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE12_M_check_lenEmPKc.exit.i.i129
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 %i.gz
  store i64 %i.ey, ptr %i.hi, align 8, !tbaa !114
  %.not10.i.i.i.i.i132 = icmp eq ptr %.sroa.0214.1352, %.sroa.15221.1351
  br i1 %.not10.i.i.i.i.i132, label %_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i137, label %.lr.ph.i.i.i.i.i133.preheader

.lr.ph.i.i.i.i.i133.preheader:                    ; preds = %.noexc142
  %i.hj = ptrtoaddr ptr %i.hh to i64
  %15 = sub i64 %i.gx, %i.gy
  %16 = add i64 %15, -8                           ; 2 uses
  %i.hk = lshr i64 %16, 3
  %i.hl = add nuw nsw i64 %i.hk, 1                ; 2 uses
  %min.iters.check608 = icmp ult i64 %16, 24
  %i.hm = sub i64 %i.hj, %.sroa.0214.1352605
  %diff.check606 = icmp ult i64 %i.hm, 32
  %or.cond661 = select i1 %min.iters.check608, i1 true, i1 %diff.check606
  br i1 %or.cond661, label %.lr.ph.i.i.i.i.i133.preheader665, label %vector.ph609

vector.ph609:                                     ; preds = %.lr.ph.i.i.i.i.i133.preheader
  %n.vec611 = and i64 %i.hl, 4611686018427387900  ; 3 uses
  %i.hn = shl i64 %n.vec611, 3                    ; 2 uses
  %i.ho = getelementptr i8, ptr %i.hh, i64 %i.hn  ; 2 uses
  %i.hp = getelementptr i8, ptr %.sroa.0214.1352, i64 %i.hn
  br label %vector.body612

vector.body612:                                   ; preds = %vector.body612, %vector.ph609
  %index613 = phi i64 [ 0, %vector.ph609 ], [ %index.next618, %vector.body612 ] ; 2 uses
  %i.hq = shl i64 %index613, 3                    ; 2 uses
  %next.gep614 = getelementptr i8, ptr %i.hh, i64 %i.hq ; 2 uses
  %next.gep615 = getelementptr i8, ptr %.sroa.0214.1352, i64 %i.hq ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !952)
  call void @llvm.experimental.noalias.scope.decl(metadata !955)
  %i.hr = getelementptr i8, ptr %next.gep615, i64 16
  %wide.load616 = load <2 x i64>, ptr %next.gep615, align 8, !tbaa !114, !alias.scope !955, !noalias !952
  %wide.load617 = load <2 x i64>, ptr %i.hr, align 8, !tbaa !114, !alias.scope !955, !noalias !952
  %i.hs = getelementptr i8, ptr %next.gep614, i64 16
  store <2 x i64> %wide.load616, ptr %next.gep614, align 8, !tbaa !114, !alias.scope !952, !noalias !955
  store <2 x i64> %wide.load617, ptr %i.hs, align 8, !tbaa !114, !alias.scope !952, !noalias !955
  %index.next618 = add nuw i64 %index613, 4       ; 2 uses
  %i.ht = icmp eq i64 %index.next618, %n.vec611
  br i1 %i.ht, label %middle.block619, label %vector.body612, !llvm.loop !957

middle.block619:                                  ; preds = %vector.body612
  %cmp.n620 = icmp eq i64 %i.hl, %n.vec611
  br i1 %cmp.n620, label %_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i137, label %.lr.ph.i.i.i.i.i133.preheader665

.lr.ph.i.i.i.i.i133.preheader665:                 ; preds = %.lr.ph.i.i.i.i.i133.preheader, %middle.block619
  %.012.i.i.i.i.i134.ph = phi ptr [ %i.hh, %.lr.ph.i.i.i.i.i133.preheader ], [ %i.ho, %middle.block619 ]
  %.0911.i.i.i.i.i135.ph = phi ptr [ %.sroa.0214.1352, %.lr.ph.i.i.i.i.i133.preheader ], [ %i.hp, %middle.block619 ]
  br label %.lr.ph.i.i.i.i.i133

.lr.ph.i.i.i.i.i133:                              ; preds = %.lr.ph.i.i.i.i.i133.preheader665, %.lr.ph.i.i.i.i.i133
  %.012.i.i.i.i.i134 = phi ptr [ %i.hw, %.lr.ph.i.i.i.i.i133 ], [ %.012.i.i.i.i.i134.ph, %.lr.ph.i.i.i.i.i133.preheader665 ] ; 2 uses
  %.0911.i.i.i.i.i135 = phi ptr [ %i.hv, %.lr.ph.i.i.i.i.i133 ], [ %.0911.i.i.i.i.i135.ph, %.lr.ph.i.i.i.i.i133.preheader665 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !952)
  call void @llvm.experimental.noalias.scope.decl(metadata !955)
  %i.hu = load i64, ptr %.0911.i.i.i.i.i135, align 8, !tbaa !114, !alias.scope !955, !noalias !952
  store i64 %i.hu, ptr %.012.i.i.i.i.i134, align 8, !tbaa !114, !alias.scope !952, !noalias !955
  %i.hv = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i135, i64 8 ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i134, i64 8 ; 2 uses
  %.not.i.i.i.i.i136 = icmp eq ptr %i.hv, %.sroa.15221.1351
  br i1 %.not.i.i.i.i.i136, label %_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i137, label %.lr.ph.i.i.i.i.i133, !llvm.loop !958

_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i137: ; preds = %.lr.ph.i.i.i.i.i133, %middle.block619, %.noexc142
  %.0.lcssa.i.i.i.i.i138 = phi ptr [ %i.hh, %.noexc142 ], [ %i.ho, %middle.block619 ], [ %i.hw, %.lr.ph.i.i.i.i.i133 ]
  %i.hx = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i138, i64 8
  %.not.i23.i.i139 = icmp eq ptr %.sroa.0214.1352, null
  br i1 %.not.i23.i.i139, label %_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i140, label %bb.aq

bb.aq:                                            ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i137
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0214.1352, i64 noundef %i.gz) #46
  br label %_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i140

_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i140: ; preds = %bb.aq, %_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i137
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %i.hh, i64 %i.hf
  br label %.critedge76

.loopexit260:                                     ; preds = %_ZNKSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE12_M_check_lenEmPKc.exit.i.i129
  %lpad.loopexit262 = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

.loopexit.split-lp261:                            ; preds = %bb.ap
  %lpad.loopexit.split-lp263 = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

.thread245:                                       ; preds = %bb.ak, %bb.al, %bb.ai
  %i.hz = getelementptr inbounds nuw i8, ptr %i.gg, i64 40
  %i.ia = load i8, ptr %i.hz, align 8, !tbaa !500, !range !368, !noundef !290
  %i.ib = trunc nuw i8 %i.ia to i1
  br i1 %i.ib, label %bb.ar, label %.critedge

bb.ar:                                            ; preds = %.thread245
  %i.ic = getelementptr inbounds nuw i8, ptr %i.gg, i64 8
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !375
  %i.ie = load ptr, ptr %i.gg, align 8, !tbaa !374 ; 2 uses
  %i.if = ptrtoint ptr %i.id to i64
  %i.ig = ptrtoint ptr %i.ie to i64
  %i.ih = sub i64 %i.if, %i.ig
  %i.ii = sdiv exact i64 %i.ih, 40                ; 2 uses
  %i.ij = trunc i64 %i.ii to i32
  %i.ik = icmp sgt i32 %i.ij, 0
  br i1 %i.ik, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.ar
  %i.il = getelementptr inbounds nuw i8, ptr %i.gg, i64 120
  %i.im = load ptr, ptr %i.il, align 8
  %i.in = load i32, ptr %i.bm, align 8, !tbaa !501 ; 2 uses
  %wide.trip.count = and i64 %i.ii, 2147483647
  br label %bb.at

bb.as:                                            ; preds = %bb.at
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %bb.at, !llvm.loop !959

bb.at:                                            ; preds = %.lr.ph, %bb.as
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.as ] ; 2 uses
  %i.io = getelementptr inbounds nuw [40 x i8], ptr %i.ie, i64 %indvars.iv
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !74 ; 2 uses
  %.not.i144 = icmp eq ptr %i.ip, null
  %i.iq = select i1 %.not.i144, ptr %i.im, ptr %i.ip ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 48
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !105
  %.not55 = icmp eq i32 %i.is, %i.in
  %i.it = getelementptr inbounds nuw i8, ptr %i.iq, i64 52
  %i.iu = load i32, ptr %i.it, align 4
  %.not56 = icmp eq i32 %i.iu, %i.in
  %or.cond = select i1 %.not55, i1 %.not56, i1 false
  br i1 %or.cond, label %bb.as, label %bb.au

bb.au:                                            ; preds = %bb.at
  %.not.i145 = icmp eq ptr %.sroa.15221.1351, %.sroa.28.1350
  br i1 %.not.i145, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  store i64 %i.ey, ptr %.sroa.15221.1351, align 8, !tbaa !114
  %i.iv = getelementptr inbounds nuw i8, ptr %.sroa.15221.1351, i64 8
  br label %.critedge

bb.aw:                                            ; preds = %bb.au
  %i.iw = ptrtoint ptr %.sroa.15221.1351 to i64   ; 2 uses
  %i.ix = ptrtoint ptr %.sroa.0214.1352 to i64    ; 2 uses
  %i.iy = sub i64 %i.iw, %i.ix                    ; 4 uses
  %i.iz = icmp eq i64 %i.iy, 9223372036854775800
  br i1 %i.iz, label %bb.ax, label %_ZNKSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE12_M_check_lenEmPKc.exit.i.i146

bb.ax:                                            ; preds = %bb.aw
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.330) #48
          to label %.noexc158 unwind label %.loopexit.split-lp

.noexc158:                                        ; preds = %bb.ax
  unreachable

_ZNKSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE12_M_check_lenEmPKc.exit.i.i146: ; preds = %bb.aw
  %i.ja = ashr exact i64 %i.iy, 3                 ; 3 uses
  %.sroa.speculated.i.i.i147 = call i64 @llvm.umax.i64(i64 %i.ja, i64 1)
  %i.jb = add nsw i64 %.sroa.speculated.i.i.i147, %i.ja ; 2 uses
  %i.jc = icmp ult i64 %i.jb, %i.ja
  %i.jd = call i64 @llvm.umin.i64(i64 %i.jb, i64 1152921504606846975)
  %i.je = select i1 %i.jc, i64 1152921504606846975, i64 %i.jd ; 3 uses
  %.not.i.i.i148 = icmp ne i64 %i.je, 0
  call void @llvm.assume(i1 %.not.i.i.i148)
  %i.jf = shl nuw nsw i64 %i.je, 3
  %i.jg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jf) #47
          to label %.noexc159 unwind label %.loopexit ; 8 uses

.noexc159:                                        ; preds = %_ZNKSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE12_M_check_lenEmPKc.exit.i.i146
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 %i.iy
  store i64 %i.ey, ptr %i.jh, align 8, !tbaa !114
  %.not10.i.i.i.i.i149 = icmp eq ptr %.sroa.0214.1352, %.sroa.15221.1351
  br i1 %.not10.i.i.i.i.i149, label %_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i154, label %.lr.ph.i.i.i.i.i150.preheader

.lr.ph.i.i.i.i.i150.preheader:                    ; preds = %.noexc159
  %i.ji = ptrtoaddr ptr %i.jg to i64
  %17 = sub i64 %i.iw, %i.ix
  %18 = add i64 %17, -8                           ; 2 uses
  %i.jj = lshr i64 %18, 3
  %i.jk = add nuw nsw i64 %i.jj, 1                ; 2 uses
  %min.iters.check626 = icmp ult i64 %18, 24
  %i.jl = sub i64 %i.ji, %.sroa.0214.1352605
  %diff.check624 = icmp ult i64 %i.jl, 32
  %or.cond662 = select i1 %min.iters.check626, i1 true, i1 %diff.check624
  br i1 %or.cond662, label %.lr.ph.i.i.i.i.i150.preheader663, label %vector.ph627

vector.ph627:                                     ; preds = %.lr.ph.i.i.i.i.i150.preheader
  %n.vec629 = and i64 %i.jk, 4611686018427387900  ; 3 uses
  %i.jm = shl i64 %n.vec629, 3                    ; 2 uses
  %i.jn = getelementptr i8, ptr %i.jg, i64 %i.jm  ; 2 uses
  %i.jo = getelementptr i8, ptr %.sroa.0214.1352, i64 %i.jm
  br label %vector.body630

vector.body630:                                   ; preds = %vector.body630, %vector.ph627
  %index631 = phi i64 [ 0, %vector.ph627 ], [ %index.next636, %vector.body630 ] ; 2 uses
  %i.jp = shl i64 %index631, 3                    ; 2 uses
  %next.gep632 = getelementptr i8, ptr %i.jg, i64 %i.jp ; 2 uses
  %next.gep633 = getelementptr i8, ptr %.sroa.0214.1352, i64 %i.jp ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !960)
  call void @llvm.experimental.noalias.scope.decl(metadata !963)
  %i.jq = getelementptr i8, ptr %next.gep633, i64 16
  %wide.load634 = load <2 x i64>, ptr %next.gep633, align 8, !tbaa !114, !alias.scope !963, !noalias !960
  %wide.load635 = load <2 x i64>, ptr %i.jq, align 8, !tbaa !114, !alias.scope !963, !noalias !960
  %i.jr = getelementptr i8, ptr %next.gep632, i64 16
  store <2 x i64> %wide.load634, ptr %next.gep632, align 8, !tbaa !114, !alias.scope !960, !noalias !963
  store <2 x i64> %wide.load635, ptr %i.jr, align 8, !tbaa !114, !alias.scope !960, !noalias !963
  %index.next636 = add nuw i64 %index631, 4       ; 2 uses
  %i.js = icmp eq i64 %index.next636, %n.vec629
  br i1 %i.js, label %middle.block637, label %vector.body630, !llvm.loop !965

middle.block637:                                  ; preds = %vector.body630
  %cmp.n638 = icmp eq i64 %i.jk, %n.vec629
  br i1 %cmp.n638, label %_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i154, label %.lr.ph.i.i.i.i.i150.preheader663

.lr.ph.i.i.i.i.i150.preheader663:                 ; preds = %.lr.ph.i.i.i.i.i150.preheader, %middle.block637
  %.012.i.i.i.i.i151.ph = phi ptr [ %i.jg, %.lr.ph.i.i.i.i.i150.preheader ], [ %i.jn, %middle.block637 ]
  %.0911.i.i.i.i.i152.ph = phi ptr [ %.sroa.0214.1352, %.lr.ph.i.i.i.i.i150.preheader ], [ %i.jo, %middle.block637 ]
  br label %.lr.ph.i.i.i.i.i150

.lr.ph.i.i.i.i.i150:                              ; preds = %.lr.ph.i.i.i.i.i150.preheader663, %.lr.ph.i.i.i.i.i150
  %.012.i.i.i.i.i151 = phi ptr [ %i.jv, %.lr.ph.i.i.i.i.i150 ], [ %.012.i.i.i.i.i151.ph, %.lr.ph.i.i.i.i.i150.preheader663 ] ; 2 uses
  %.0911.i.i.i.i.i152 = phi ptr [ %i.ju, %.lr.ph.i.i.i.i.i150 ], [ %.0911.i.i.i.i.i152.ph, %.lr.ph.i.i.i.i.i150.preheader663 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !960)
  call void @llvm.experimental.noalias.scope.decl(metadata !963)
  %i.jt = load i64, ptr %.0911.i.i.i.i.i152, align 8, !tbaa !114, !alias.scope !963, !noalias !960
  store i64 %i.jt, ptr %.012.i.i.i.i.i151, align 8, !tbaa !114, !alias.scope !960, !noalias !963
  %i.ju = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i152, i64 8 ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i151, i64 8 ; 2 uses
  %.not.i.i.i.i.i153 = icmp eq ptr %i.ju, %.sroa.15221.1351
  br i1 %.not.i.i.i.i.i153, label %_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i154, label %.lr.ph.i.i.i.i.i150, !llvm.loop !966

_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i154: ; preds = %.lr.ph.i.i.i.i.i150, %middle.block637, %.noexc159
  %.0.lcssa.i.i.i.i.i155 = phi ptr [ %i.jg, %.noexc159 ], [ %i.jn, %middle.block637 ], [ %i.jv, %.lr.ph.i.i.i.i.i150 ]
  %i.jw = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i155, i64 8
  %.not.i23.i.i156 = icmp eq ptr %.sroa.0214.1352, null
  br i1 %.not.i23.i.i156, label %_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i157, label %bb.ay

bb.ay:                                            ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i154
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0214.1352, i64 noundef %i.iy) #46
  br label %_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i157

_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i157: ; preds = %bb.ay, %_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i154
  %i.jx = getelementptr inbounds nuw [8 x i8], ptr %i.jg, i64 %i.je
  %.pre = load ptr, ptr %i.bx, align 8, !tbaa !553
  br label %.critedge

.loopexit:                                        ; preds = %_ZNKSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE12_M_check_lenEmPKc.exit.i.i146
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

.loopexit.split-lp:                               ; preds = %bb.ax
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

.critedge:                                        ; preds = %bb.as, %bb.ar, %_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i157, %bb.av, %.thread245
  %i.jy = phi ptr [ %i.ge, %.thread245 ], [ %i.ge, %bb.av ], [ %.pre, %_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i157 ], [ %i.ge, %bb.ar ], [ %i.ge, %bb.as ] ; 3 uses
  %.sroa.28.2 = phi ptr [ %.sroa.28.1350, %.thread245 ], [ %.sroa.28.1350, %bb.av ], [ %i.jx, %_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i157 ], [ %.sroa.28.1350, %bb.ar ], [ %.sroa.28.1350, %bb.as ] ; 2 uses
  %.sroa.15221.2 = phi ptr [ %.sroa.15221.1351, %.thread245 ], [ %i.iv, %bb.av ], [ %i.jw, %_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i157 ], [ %.sroa.15221.1351, %bb.ar ], [ %.sroa.15221.1351, %bb.as ] ; 2 uses
  %.sroa.0214.2 = phi ptr [ %.sroa.0214.1352, %.thread245 ], [ %.sroa.0214.1352, %bb.av ], [ %i.jg, %_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i157 ], [ %.sroa.0214.1352, %bb.ar ], [ %.sroa.0214.1352, %bb.as ] ; 2 uses
  %indvars.iv.next433 = add nuw nsw i64 %indvars.iv432, 1 ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 80
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jy, i64 88
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !276
  %i.kc = load ptr, ptr %i.jz, align 8, !tbaa !275 ; 2 uses
  %i.kd = ptrtoint ptr %i.kb to i64
  %i.ke = ptrtoint ptr %i.kc to i64
  %i.kf = sub i64 %i.kd, %i.ke
  %sext = shl i64 %i.kf, 25
  %i.kg = ashr i64 %sext, 32
  %i.kh = icmp slt i64 %indvars.iv.next433, %i.kg
  br i1 %i.kh, label %bb.ai, label %.critedge76, !llvm.loop !967

.critedge76:                                      ; preds = %.critedge, %.preheader, %_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i140, %bb.an, %_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i124, %bb.ae, %_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.w
  %.sroa.28.3 = phi ptr [ %.sroa.28.0, %bb.w ], [ %.sroa.28.0, %bb.ae ], [ %.sroa.28.1350, %bb.an ], [ %i.eh, %_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %i.gd, %_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i124 ], [ %i.hy, %_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i140 ], [ %.sroa.28.0, %.preheader ], [ %.sroa.28.2, %.critedge ] ; 2 uses
  %.sroa.15221.3 = phi ptr [ %i.de, %bb.w ], [ %i.fa, %bb.ae ], [ %i.gw, %bb.an ], [ %i.eg, %_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %i.gc, %_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i124 ], [ %i.hx, %_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i140 ], [ %.sroa.15221.0, %.preheader ], [ %.sroa.15221.2, %.critedge ]
  %.sroa.0214.3 = phi ptr [ %.sroa.0214.0, %bb.w ], [ %.sroa.0214.0, %bb.ae ], [ %.sroa.0214.1352, %bb.an ], [ %i.dp, %_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %i.fl, %_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i124 ], [ %i.hh, %_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i140 ], [ %.sroa.0214.0, %.preheader ], [ %.sroa.0214.2, %.critedge ] ; 2 uses
  %i.ki = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.cg) #5 ; 0 uses
  %i.kj = load i8, ptr %i.be, align 1, !tbaa !434, !range !368, !noundef !290
  %i.kk = trunc nuw i8 %i.kj to i1
  br i1 %i.kk, label %bb.az, label %_ZN11OpenImageIO4v3_15TimerD2Ev.exit

bb.az:                                            ; preds = %.critedge76
  %i.kl = load ptr, ptr %i.bn, align 8, !tbaa !522 ; 2 uses
  %.not.i161 = icmp eq ptr %i.kl, null
  %spec.select.i = select i1 %.not.i161, ptr @.str.106, ptr %i.kl
  %i.km = load i8, ptr %8, align 8, !tbaa !440, !range !368, !noundef !290
  %i.kn = trunc nuw i8 %i.km to i1
  br i1 %i.kn, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.ko = load i64, ptr %i.bf, align 8, !tbaa !439
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #5
  %i.kp = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %2) #5 ; 0 uses
  %i.kq = load i64, ptr %2, align 8, !tbaa !436
  %i.kr = mul nsw i64 %i.kq, 1000000000
  %i.ks = load i64, ptr %i.bo, align 8, !tbaa !438
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #5
  %i.kt = sub i64 %i.ks, %i.ko
  %i.ku = add i64 %i.kt, %i.kr
  %i.kv = call noundef i64 @llvm.abs.i64(i64 %i.ku, i1 true)
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.kw = phi i64 [ %i.kv, %bb.ba ], [ 0, %bb.az ]
  %i.kx = load i64, ptr %i.bi, align 8, !tbaa !523
  %i.ky = add nsw i64 %i.kx, %i.kw
  %i.kz = sitofp i64 %i.ky to double
  %i.la = load double, ptr @_ZN11OpenImageIO4v3_15Timer16seconds_per_tickE, align 8, !tbaa !71
  %i.lb = fmul double %i.la, %i.kz
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #5
  store ptr %spec.select.i, ptr %3, align 16, !tbaa !39
  store double %i.lb, ptr %i.bp, align 16, !tbaa !39
  %i.lc = load ptr, ptr @stdout, align 8, !tbaa !524
  invoke void @_ZN3fmt3v126vprintEP8_IO_FILENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr noundef %i.lc, ptr nonnull @.str.269, i64 16, i64 172, ptr nonnull %3)
          to label %bb.bc unwind label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #5
  br label %_ZN11OpenImageIO4v3_15TimerD2Ev.exit

bb.bd:                                            ; preds = %bb.bb
  %i.ld = landingpad { ptr, i32 }
          catch ptr null
  %i.le = extractvalue { ptr, i32 } %i.ld, 0
  call void @__clang_call_terminate(ptr %i.le) #49
  unreachable

_ZN11OpenImageIO4v3_15TimerD2Ev.exit:             ; preds = %.critedge76, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #5
  invoke void @_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_7ustringENS0_13intrusive_ptrINS0_14ImageCacheFileEEESt4hashIS2_ESt8equal_toIS2_ELm64EN3tsl9robin_mapIS2_S5_S7_S9_SaISt4pairIS2_S5_EELb0ENSA_2rh26power_of_two_growth_policyILm2EEEEEE8iteratorppEv(ptr noundef nonnull align 8 dereferenceable(25) %7)
          to label %bb.o unwind label %bb.q, !llvm.loop !968

bb.be:                                            ; preds = %.loopexit, %.loopexit.split-lp, %.loopexit260, %.loopexit.split-lp261, %.loopexit255, %.loopexit.split-lp256, %.loopexit265, %.loopexit.split-lp266
  %.sroa.28.4 = phi ptr [ %.sroa.28.0, %.loopexit.split-lp266 ], [ %.sroa.28.0, %.loopexit.split-lp256 ], [ %.sroa.15221.1351, %.loopexit.split-lp261 ], [ %.sroa.28.0, %.loopexit265 ], [ %.sroa.28.0, %.loopexit255 ], [ %.sroa.15221.1351, %.loopexit260 ], [ %.sroa.15221.1351, %.loopexit ], [ %.sroa.15221.1351, %.loopexit.split-lp ]
  %.sroa.0214.4 = phi ptr [ %.sroa.0214.0, %.loopexit.split-lp266 ], [ %.sroa.0214.0, %.loopexit.split-lp256 ], [ %.sroa.0214.1352, %.loopexit.split-lp261 ], [ %.sroa.0214.0, %.loopexit265 ], [ %.sroa.0214.0, %.loopexit255 ], [ %.sroa.0214.1352, %.loopexit260 ], [ %.sroa.0214.1352, %.loopexit ], [ %.sroa.0214.1352, %.loopexit.split-lp ]
  %.pn62 = phi { ptr, i32 } [ %lpad.loopexit.split-lp268, %.loopexit.split-lp266 ], [ %lpad.loopexit.split-lp258, %.loopexit.split-lp256 ], [ %lpad.loopexit.split-lp263, %.loopexit.split-lp261 ], [ %lpad.loopexit267, %.loopexit265 ], [ %lpad.loopexit257, %.loopexit255 ], [ %lpad.loopexit262, %.loopexit260 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.lf = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.cg) #5 ; 0 uses
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.aa
  %.sroa.28.5 = phi ptr [ %.sroa.28.4, %bb.be ], [ %.sroa.28.0, %bb.aa ]
  %.sroa.0214.5 = phi ptr [ %.sroa.0214.4, %bb.be ], [ %.sroa.0214.0, %bb.aa ]
  %.pn62.pn = phi { ptr, i32 } [ %.pn62, %bb.be ], [ %i.ei, %bb.aa ]
  call void @_ZN11OpenImageIO4v3_15TimerD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %8) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #5
  br label %_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_7ustringENS0_13intrusive_ptrINS0_14ImageCacheFileEEESt4hashIS2_ESt8equal_toIS2_ELm64EN3tsl9robin_mapIS2_S5_S7_S9_SaISt4pairIS2_S5_EELb0ENSA_2rh26power_of_two_growth_policyILm2EEEEEE8iteratorD2Ev.exit165

_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_7ustringENS0_13intrusive_ptrINS0_14ImageCacheFileEEESt4hashIS2_ESt8equal_toIS2_ELm64EN3tsl9robin_mapIS2_S5_S7_S9_SaISt4pairIS2_S5_EELb0ENSA_2rh26power_of_two_growth_policyILm2EEEEEE8iteratorD2Ev.exit165: ; preds = %bb.q, %bb.bf
  %.sroa.28.6 = phi ptr [ %.sroa.28.5, %bb.bf ], [ %.sroa.28.3, %bb.q ] ; 3 uses
  %.sroa.0214.6 = phi ptr [ %.sroa.0214.5, %bb.bf ], [ %.sroa.0214.3, %bb.q ] ; 3 uses
  %.pn67 = phi { ptr, i32 } [ %.pn62.pn, %bb.bf ], [ %i.bv, %bb.q ] ; 3 uses
  %i.lg = load ptr, ptr %7, align 8, !tbaa !532   ; 2 uses
  %.not.i.i166 = icmp eq ptr %i.lg, null
  br i1 %.not.i.i166, label %_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_7ustringENS0_13intrusive_ptrINS0_14ImageCacheFileEEESt4hashIS2_ESt8equal_toIS2_ELm64EN3tsl9robin_mapIS2_S5_S7_S9_SaISt4pairIS2_S5_EELb0ENSA_2rh26power_of_two_growth_policyILm2EEEEEE8iteratorD2Ev.exit169, label %bb.bg

bb.bg:                                            ; preds = %_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_7ustringENS0_13intrusive_ptrINS0_14ImageCacheFileEEESt4hashIS2_ESt8equal_toIS2_ELm64EN3tsl9robin_mapIS2_S5_S7_S9_SaISt4pairIS2_S5_EELb0ENSA_2rh26power_of_two_growth_policyILm2EEEEEE8iteratorD2Ev.exit165
  %i.lh = load i32, ptr %i.bc, align 8, !tbaa !536 ; 2 uses
  %i.li = icmp sgt i32 %i.lh, -1
  %i.lj = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.lk = load i8, ptr %i.lj, align 8, !range !368
  %i.ll = trunc nuw i8 %i.lk to i1
  %or.cond.i167 = select i1 %i.li, i1 %i.ll, i1 false
  br i1 %or.cond.i167, label %_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_7ustringENS0_13intrusive_ptrINS0_14ImageCacheFileEEESt4hashIS2_ESt8equal_toIS2_ELm64EN3tsl9robin_mapIS2_S5_S7_S9_SaISt4pairIS2_S5_EELb0ENSA_2rh26power_of_two_growth_policyILm2EEEEEE8iterator6unlockEv.exit.i.i.i168, label %_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_7ustringENS0_13intrusive_ptrINS0_14ImageCacheFileEEESt4hashIS2_ESt8equal_toIS2_ELm64EN3tsl9robin_mapIS2_S5_S7_S9_SaISt4pairIS2_S5_EELb0ENSA_2rh26power_of_two_growth_policyILm2EEEEEE8iteratorD2Ev.exit169

_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_7ustringENS0_13intrusive_ptrINS0_14ImageCacheFileEEESt4hashIS2_ESt8equal_toIS2_ELm64EN3tsl9robin_mapIS2_S5_S7_S9_SaISt4pairIS2_S5_EELb0ENSA_2rh26power_of_two_growth_policyILm2EEEEEE8iterator6unlockEv.exit.i.i.i168: ; preds = %bb.bg
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lg, i64 64
  %i.ln = zext nneg i32 %i.lh to i64
  %i.lo = getelementptr inbounds nuw [128 x i8], ptr %i.lm, i64 %i.ln
  %i.lp = atomicrmw sub ptr %i.lo, i32 1073741824 release, align 4 ; 0 uses
  br label %_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_7ustringENS0_13intrusive_ptrINS0_14ImageCacheFileEEESt4hashIS2_ESt8equal_toIS2_ELm64EN3tsl9robin_mapIS2_S5_S7_S9_SaISt4pairIS2_S5_EELb0ENSA_2rh26power_of_two_growth_policyILm2EEEEEE8iteratorD2Ev.exit169

_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_7ustringENS0_13intrusive_ptrINS0_14ImageCacheFileEEESt4hashIS2_ESt8equal_toIS2_ELm64EN3tsl9robin_mapIS2_S5_S7_S9_SaISt4pairIS2_S5_EELb0ENSA_2rh26power_of_two_growth_policyILm2EEEEEE8iteratorD2Ev.exit169: ; preds = %_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_7ustringENS0_13intrusive_ptrINS0_14ImageCacheFileEEESt4hashIS2_ESt8equal_toIS2_ELm64EN3tsl9robin_mapIS2_S5_S7_S9_SaISt4pairIS2_S5_EELb0ENSA_2rh26power_of_two_growth_policyILm2EEEEEE8iterator6unlockEv.exit.i.i.i168, %bb.bg, %_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_7ustringENS0_13intrusive_ptrINS0_14ImageCacheFileEEESt4hashIS2_ESt8equal_toIS2_ELm64EN3tsl9robin_mapIS2_S5_S7_S9_SaISt4pairIS2_S5_EELb0ENSA_2rh26power_of_two_growth_policyILm2EEEEEE8iteratorD2Ev.exit165, %bb.p
  %.sroa.28.7 = phi ptr [ null, %bb.p ], [ %.sroa.28.6, %_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_7ustringENS0_13intrusive_ptrINS0_14ImageCacheFileEEESt4hashIS2_ESt8equal_toIS2_ELm64EN3tsl9robin_mapIS2_S5_S7_S9_SaISt4pairIS2_S5_EELb0ENSA_2rh26power_of_two_growth_policyILm2EEEEEE8iteratorD2Ev.exit165 ], [ %.sroa.28.6, %bb.bg ], [ %.sroa.28.6, %_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_7ustringENS0_13intrusive_ptrINS0_14ImageCacheFileEEESt4hashIS2_ESt8equal_toIS2_ELm64EN3tsl9robin_mapIS2_S5_S7_S9_SaISt4pairIS2_S5_EELb0ENSA_2rh26power_of_two_growth_policyILm2EEEEEE8iterator6unlockEv.exit.i.i.i168 ]
  %.sroa.0214.7 = phi ptr [ null, %bb.p ], [ %.sroa.0214.6, %_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_7ustringENS0_13intrusive_ptrINS0_14ImageCacheFileEEESt4hashIS2_ESt8equal_toIS2_ELm64EN3tsl9robin_mapIS2_S5_S7_S9_SaISt4pairIS2_S5_EELb0ENSA_2rh26power_of_two_growth_policyILm2EEEEEE8iteratorD2Ev.exit165 ], [ %.sroa.0214.6, %bb.bg ], [ %.sroa.0214.6, %_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_7ustringENS0_13intrusive_ptrINS0_14ImageCacheFileEEESt4hashIS2_ESt8equal_toIS2_ELm64EN3tsl9robin_mapIS2_S5_S7_S9_SaISt4pairIS2_S5_EELb0ENSA_2rh26power_of_two_growth_policyILm2EEEEEE8iterator6unlockEv.exit.i.i.i168 ]
  %.pn67.pn.pn = phi { ptr, i32 } [ %i.bu, %bb.p ], [ %.pn67, %_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_7ustringENS0_13intrusive_ptrINS0_14ImageCacheFileEEESt4hashIS2_ESt8equal_toIS2_ELm64EN3tsl9robin_mapIS2_S5_S7_S9_SaISt4pairIS2_S5_EELb0ENSA_2rh26power_of_two_growth_policyILm2EEEEEE8iteratorD2Ev.exit165 ], [ %.pn67, %bb.bg ], [ %.pn67, %_ZN11OpenImageIO4v3_124unordered_map_concurrentINS0_7ustringENS0_13intrusive_ptrINS0_14ImageCacheFileEEESt4hashIS2_ESt8equal_toIS2_ELm64EN3tsl9robin_mapIS2_S5_S7_S9_SaISt4pairIS2_S5_EELb0ENSA_2rh26power_of_two_growth_policyILm2EEEEEE8iterator6unlockEv.exit.i.i.i168 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #5
end_hunk_3
begin_hunk_4_@_ZNSt7__cxx1111basic_regexIcNS_12regex_traitsIcEEED2Ev:bb.a
  br label %_ZNSt12__shared_ptrIKNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !39
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIKNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !190

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #5
  br label %_ZNSt12__shared_ptrIKNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.r) #5
  ret void
}

declare void @_ZN11OpenImageIO4v3_110Filesystem17filename_to_regexB5cxx11ENS0_17basic_string_viewIcSt11char_traitsIcEEEb(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef dead_on_return, i1 noundef zeroext) local_unnamed_addr #12

declare void @_ZN11OpenImageIO4v3_17Strutil7replaceB5cxx11ENS0_17basic_string_viewIcSt11char_traitsIcEEES5_S5_b(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef dead_on_return, ptr noundef dead_on_return, ptr noundef dead_on_return, i1 noundef zeroext) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define hidden void @_ZN11OpenImageIO4v3_114ImageCacheImpl14inventory_udimEPNS0_14ImageCacheFileEPNS0_23ImageCachePerThreadInfoERSt6vectorINS0_7ustringESaIS7_EERiSB_(ptr nofree noundef nonnull readnone align 64 captures(none) dereferenceable(25240) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef readnone captures(none) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) initializes((0, 4)) %4, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) initializes((0, 4)) %5) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 166
  %i.b = load i16, ptr %i.a, align 2, !tbaa !202  ; 2 uses
  %.not21 = icmp eq i16 %i.b, 0
  br i1 %.not21, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = load ptr, ptr %3, align 8, !tbaa !1072   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1074
  %.not.i.i = icmp eq ptr %i.e, %i.c
  br i1 %.not.i.i, label %_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE5clearEv.exit, label %_ZSt8_DestroyIPN11OpenImageIO4v3_17ustringES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN11OpenImageIO4v3_17ustringES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %bb.c
  store ptr %i.c, ptr %i.d, align 8, !tbaa !1074
  br label %_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE5clearEv.exit

_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE5clearEv.exit: ; preds = %bb.c, %_ZSt8_DestroyIPN11OpenImageIO4v3_17ustringES2_EvT_S4_RSaIT0_E.exit.i.i
  store i32 0, ptr %4, align 4, !tbaa !3
  store i32 0, ptr %5, align 4, !tbaa !3
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.f = sext i16 %i.b to i32
  store i32 %i.f, ptr %4, align 4, !tbaa !3
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.h = load i16, ptr %i.g, align 8, !tbaa !203
  %i.i = sext i16 %i.h to i32                     ; 2 uses
  store i32 %i.i, ptr %5, align 4, !tbaa !3
  %i.j = load i32, ptr %4, align 4, !tbaa !3
  %i.k = mul nsw i32 %i.j, %i.i                   ; 4 uses
  %i.l = sext i32 %i.k to i64
  tail call void @_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %i.l)
  %i.m = icmp sgt i32 %i.k, 0
  br i1 %i.m, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 376
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !182  ; 5 uses
  %i.p = load ptr, ptr %3, align 8, !tbaa !1072   ; 5 uses
  %wide.trip.count = zext nneg i32 %i.k to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.q = icmp ult i32 %i.k, 4
  br i1 %i.q, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.3, %bb.e ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.e ]
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %indvars.iv
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv
  %i.t = load i64, ptr %i.r, align 8, !tbaa !114
  store i64 %i.t, ptr %i.s, align 8, !tbaa !114
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %indvars.iv.next
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv.next
  %i.w = load i64, ptr %i.u, align 8, !tbaa !114
  store i64 %i.w, ptr %i.v, align 8, !tbaa !114
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %indvars.iv.next.1
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv.next.1
  %i.z = load i64, ptr %i.x, align 8, !tbaa !114
  store i64 %i.z, ptr %i.y, align 8, !tbaa !114
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.aa = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %indvars.iv.next.2
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv.next.2
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !114
  store i64 %i.ac, ptr %i.ab, align 8, !tbaa !114
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %bb.e, !llvm.loop !1075

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.e
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.3, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod27 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod27)
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.f ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.f ]
  %i.ad = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %indvars.iv.epil
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv.epil
  %i.af = load i64, ptr %i.ad, align 8, !tbaa !114
  store i64 %i.af, ptr %i.ae, align 8, !tbaa !114
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %bb.f, !llvm.loop !1076

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.f, %bb.d, %_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE5clearEv.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1074 ; 6 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !1072   ; 8 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 4 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 7 uses
  %i.h = icmp ugt i64 %1, %i.g
  br i1 %i.h, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.i = sub nuw i64 %1, %i.g                     ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1077
  %i.l = ptrtoint ptr %i.k to i64                 ; 2 uses
  %i.m = sub i64 %i.l, %i.d
  %i.n = ashr exact i64 %i.m, 3                   ; 2 uses
  %i.o = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.o)
  %i.p = xor i64 %i.g, 1152921504606846975        ; 2 uses
  %i.q = icmp ule i64 %i.n, %i.p
  tail call void @llvm.assume(i1 %i.q)
  %.not28.i = icmp ult i64 %i.n, %i.i
  br i1 %.not28.i, label %bb.c, label %_ZSt27__uninitialized_default_n_aIPN11OpenImageIO4v3_17ustringEmS2_ET_S4_T0_RSaIT1_E.exit.i

_ZSt27__uninitialized_default_n_aIPN11OpenImageIO4v3_17ustringEmS2_ET_S4_T0_RSaIT1_E.exit.i: ; preds = %bb.b
  %i.r = shl nuw nsw i64 %i.i, 3                  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.b, i8 0, i64 %i.r, i1 false), !tbaa !13
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.b, i64 %i.r
  store ptr %scevgep.i.i.i.i, ptr %i.a, align 8, !tbaa !1074
  br label %_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE17_M_default_appendEm.exit

bb.c:                                             ; preds = %bb.b
  %i.s = icmp ult i64 %i.p, %i.i
  br i1 %i.s, label %bb.d, label %_ZNKSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.332) #48
  unreachable

_ZNKSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.c
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %i.i)
  %i.t = add nuw nsw i64 %.sroa.speculated.i.i, %i.g
  %i.u = tail call i64 @llvm.umin.i64(i64 %i.t, i64 1152921504606846975) ; 2 uses
  %i.v = shl nuw nsw i64 %i.u, 3
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #47 ; 7 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.f ; 2 uses
  %i.y = shl nuw nsw i64 %i.i, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.x, i8 0, i64 %i.y, i1 false), !tbaa !13
  %.not10.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNKSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE12_M_check_lenEmPKc.exit.i
  %i.z = ptrtoaddr ptr %i.w to i64
  %2 = sub i64 %i.d, %i.e
  %3 = add i64 %2, -8                             ; 2 uses
  %i.aa = lshr i64 %3, 3
  %i.ab = add nuw nsw i64 %i.aa, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %3, 56
  %i.ac = sub i64 %i.z, %i.e
  %diff.check = icmp ult i64 %i.ac, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader15, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.ab, 4611686018427387900     ; 3 uses
  %i.ad = shl i64 %n.vec, 3                       ; 2 uses
  %i.ae = getelementptr i8, ptr %i.w, i64 %i.ad
  %i.af = getelementptr i8, ptr %i.c, i64 %i.ad
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ag = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.w, i64 %i.ag ; 2 uses
  %next.gep12 = getelementptr i8, ptr %i.c, i64 %i.ag ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1078)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1081)
  %i.ah = getelementptr i8, ptr %next.gep12, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep12, align 8, !tbaa !114, !alias.scope !1081, !noalias !1078
  %wide.load13 = load <2 x i64>, ptr %i.ah, align 8, !tbaa !114, !alias.scope !1081, !noalias !1078
  %i.ai = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !114, !alias.scope !1078, !noalias !1081
  store <2 x i64> %wide.load13, ptr %i.ai, align 8, !tbaa !114, !alias.scope !1078, !noalias !1081
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !1083

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ab, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i, label %.lr.ph.i.i.i.i.preheader15

.lr.ph.i.i.i.i.preheader15:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.w, %.lr.ph.i.i.i.i.preheader ], [ %i.ae, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.c, %.lr.ph.i.i.i.i.preheader ], [ %i.af, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader15, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader15 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader15 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1078)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1081)
  %i.ak = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !114, !alias.scope !1081, !noalias !1078
  store i64 %i.ak, ptr %.012.i.i.i.i, align 8, !tbaa !114, !alias.scope !1078, !noalias !1081
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.al, %i.b
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !1084

_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZNKSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE12_M_check_lenEmPKc.exit.i
  %.not.i36.i = icmp eq ptr %i.c, null
  br i1 %.not.i36.i, label %_ZNSt12_Vector_baseIN11OpenImageIO4v3_17ustringESaIS2_EE13_M_deallocateEPS2_m.exit37.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i
  %i.an = sub i64 %i.l, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.an) #46
  br label %_ZNSt12_Vector_baseIN11OpenImageIO4v3_17ustringESaIS2_EE13_M_deallocateEPS2_m.exit37.i

_ZNSt12_Vector_baseIN11OpenImageIO4v3_17ustringESaIS2_EE13_M_deallocateEPS2_m.exit37.i: ; preds = %bb.e, %_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i
  store ptr %i.w, ptr %0, align 8, !tbaa !1072
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.i
  store ptr %i.ao, ptr %i.a, align 8, !tbaa !1074
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.u
  store ptr %i.ap, ptr %i.j, align 8, !tbaa !1077
  br label %_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE17_M_default_appendEm.exit

bb.f:                                             ; preds = %bb.a
  %i.aq = icmp ult i64 %1, %i.g
  br i1 %i.aq, label %bb.g, label %_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE17_M_default_appendEm.exit

bb.g:                                             ; preds = %bb.f
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %1 ; 2 uses
  %.not.i4 = icmp eq ptr %i.b, %i.ar
  br i1 %.not.i4, label %_ZNSt6vectorIN11OpenImageIO4v3_17ustringESaIS2_EE17_M_default_appendEm.exit, label %_ZSt8_DestroyIPN11OpenImageIO4v3_17ustringES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN11OpenImageIO4v3_17ustringES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %bb.g
  store ptr %i.ar, ptr %i.a, align 8, !tbaa !1074
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
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZZN3tsl17detail_robin_hash10robin_hashISt4pairIN11OpenImageIO4v3_17ustringEPNS4_14ImageCacheFileEENS_9robin_mapIS5_S7_St4hashIS5_ESt8equal_toIS5_ESaIS8_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESB_SD_SE_Lb0ESH_E23static_empty_bucket_ptrEvE12empty_bucket, i64 6), align 2, !tbaa !679
  %i.e = tail call i32 @__cxa_atexit(ptr nonnull @_ZN3tsl17detail_robin_hash12bucket_entryISt4pairIN11OpenImageIO4v3_17ustringEPNS4_14ImageCacheFileEELb1EED2Ev, ptr nonnull @_ZZN3tsl17detail_robin_hash10robin_hashISt4pairIN11OpenImageIO4v3_17ustringEPNS4_14ImageCacheFileEENS_9robin_mapIS5_S7_St4hashIS5_ESt8equal_toIS5_ESaIS8_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESB_SD_SE_Lb0ESH_E23static_empty_bucket_ptrEvE12empty_bucket, ptr nonnull @__dso_handle) #5 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN3tsl17detail_robin_hash10robin_hashISt4pairIN11OpenImageIO4v3_17ustringEPNS4_14ImageCacheFileEENS_9robin_mapIS5_S7_St4hashIS5_ESt8equal_toIS5_ESaIS8_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESB_SD_SE_Lb0ESH_E23static_empty_bucket_ptrEvE12empty_bucket) #5
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr @_ZZN3tsl17detail_robin_hash10robin_hashISt4pairIN11OpenImageIO4v3_17ustringEPNS4_14ImageCacheFileEENS_9robin_mapIS5_S7_St4hashIS5_ESt8equal_toIS5_ESaIS8_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESB_SD_SE_Lb0ESH_E23static_empty_bucket_ptrEvE12empty_bucket, ptr %i.f, align 8, !tbaa !661
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i8 0, ptr %i.h, align 8, !tbaa !680
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 73
  store i8 0, ptr %i.i, align 1, !tbaa !681
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store <2 x float> <float 0.000000e+00, float 5.000000e-01>, ptr %i.j, align 8, !tbaa !32
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i64 0, ptr %i.k, align 8, !tbaa !682
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
  %i.ac = load ptr, ptr %i.ab, align 16, !tbaa !683 ; 6 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !684
  %.not.i = icmp eq ptr %i.ac, %i.ae
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN11OpenImageIO4v3_110spin_mutex10lock_guardC2ERS1_.exit
  store ptr %i.a, ptr %i.ac, align 8, !tbaa !677
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr %i.af, ptr %i.ab, align 16, !tbaa !683
  br label %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_123ImageCachePerThreadInfoESt14default_deleteIS3_EESaIS6_EE12emplace_backIJRPS3_EEERS6_DpOT_.exit

bb.i:                                             ; preds = %_ZN11OpenImageIO4v3_110spin_mutex10lock_guardC2ERS1_.exit
  %i.ag = load ptr, ptr %i.aa, align 8, !tbaa !685 ; 10 uses
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
  store ptr %i.a, ptr %i.as, align 8, !tbaa !677
  %.not10.i.i.i.i.i = icmp eq ptr %i.ag, %i.ac
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_123ImageCachePerThreadInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.noexc5
  %1 = sub i64 %i.ah, %i.ai
  %2 = add i64 %1, -8                             ; 2 uses
  %i.at = lshr i64 %2, 3
  %i.au = add nuw nsw i64 %i.at, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %2, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader15, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.av = add i64 %i.ah, -8
  %i.aw = sub i64 %i.av, %i.ai
  %i.ax = and i64 %i.aw, -8
  %i.ay = add i64 %i.ax, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ar, i64 %i.ay
  %scevgep11 = getelementptr i8, ptr %i.ag, i64 %i.ay
  %bound0 = icmp ult ptr %i.ar, %scevgep11
  %bound1 = icmp ult ptr %i.ag, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader15, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.au, 4611686018427387900     ; 3 uses
  %i.az = shl i64 %n.vec, 3                       ; 2 uses
  %i.ba = getelementptr i8, ptr %i.ar, i64 %i.az  ; 2 uses
  %i.bb = getelementptr i8, ptr %i.ag, i64 %i.az
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bc = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ar, i64 %i.bc ; 2 uses
  %next.gep12 = getelementptr i8, ptr %i.ag, i64 %i.bc ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1085)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1088)
  %i.bd = getelementptr i8, ptr %next.gep12, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep12, align 8, !tbaa !677, !alias.scope !1090, !noalias !1085
  %wide.load13 = load <2 x i64>, ptr %i.bd, align 8, !tbaa !677, !alias.scope !1090, !noalias !1085
  %i.be = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !677, !alias.scope !1093, !noalias !1090
  store <2 x i64> %wide.load13, ptr %i.be, align 8, !tbaa !677, !alias.scope !1093, !noalias !1090
  %i.bf = getelementptr i8, ptr %next.gep12, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep12, align 8, !tbaa !677, !alias.scope !1090, !noalias !1085
  store <2 x ptr> splat (ptr null), ptr %i.bf, align 8, !tbaa !677, !alias.scope !1090, !noalias !1085
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bg = icmp eq i64 %index.next, %n.vec
  br i1 %i.bg, label %middle.block, label %vector.body, !llvm.loop !1095

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.au, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_123ImageCachePerThreadInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader15

.lr.ph.i.i.i.i.i.preheader15:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.ar, %vector.memcheck ], [ %i.ar, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ba, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.ag, %vector.memcheck ], [ %i.ag, %.lr.ph.i.i.i.i.i.preheader ], [ %i.bb, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader15, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.bj, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader15 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.bi, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader15 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1085)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1088)
  %i.bh = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !677, !alias.scope !1088, !noalias !1085
  store i64 %i.bh, ptr %.012.i.i.i.i.i, align 8, !tbaa !677, !alias.scope !1085, !noalias !1088
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !677, !alias.scope !1088, !noalias !1085
  %i.bi = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bi, %i.ac
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_123ImageCachePerThreadInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1096

_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_123ImageCachePerThreadInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %.noexc5
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ar, %.noexc5 ], [ %i.ba, %middle.block ], [ %i.bj, %.lr.ph.i.i.i.i.i ]
  %i.bk = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_123ImageCachePerThreadInfoESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJRPS3_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_123ImageCachePerThreadInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef %i.aj) #46
  br label %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_123ImageCachePerThreadInfoESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJRPS3_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_123ImageCachePerThreadInfoESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJRPS3_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i: ; preds = %bb.k, %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_123ImageCachePerThreadInfoESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i
  store ptr %i.ar, ptr %i.aa, align 8, !tbaa !685
  store ptr %i.bk, ptr %i.ab, align 16, !tbaa !683
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.ap
  store ptr %i.bl, ptr %i.ad, align 8, !tbaa !684
  br label %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_123ImageCachePerThreadInfoESt14default_deleteIS3_EESaIS6_EE12emplace_backIJRPS3_EEERS6_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_123ImageCachePerThreadInfoESt14default_deleteIS3_EESaIS6_EE12emplace_backIJRPS3_EEERS6_DpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_123ImageCachePerThreadInfoESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJRPS3_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i, %bb.h
  store atomic i8 0, ptr @_ZN11OpenImageIO4v3_114ImageCacheImpl22m_perthread_info_mutexE release, align 1
  ret ptr %i.a

bb.l:                                             ; preds = %_ZNKSt6vectorISt10unique_ptrIN11OpenImageIO4v3_123ImageCachePerThreadInfoESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i, %bb.j
  %i.bm = landingpad { ptr, i32 }
          cleanup
  store atomic i8 0, ptr @_ZN11OpenImageIO4v3_114ImageCacheImpl22m_perthread_info_mutexE release, align 1
  resume { ptr, i32 } %i.bm
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
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !748  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 16, !tbaa !748 ; 2 uses
  %.not1315 = icmp eq ptr %i.j, %i.l
  br i1 %.not1315, label %_ZNSt10unique_ptrIN11OpenImageIO4v3_123ImageCachePerThreadInfoESt14default_deleteIS2_EE5resetEPS2_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN11OpenImageIO4v3_110spin_mutex10lock_guardC2ERS1_.exit, %.critedge
  %.sroa.09.016 = phi ptr [ %i.n, %.critedge ], [ %i.j, %_ZN11OpenImageIO4v3_110spin_mutex10lock_guardC2ERS1_.exit ] ; 3 uses
  %i.m = load ptr, ptr %.sroa.09.016, align 8, !tbaa !677 ; 3 uses
  %.not8 = icmp eq ptr %i.m, %1
  br i1 %.not8, label %_ZNKSt14default_deleteIN11OpenImageIO4v3_123ImageCachePerThreadInfoEEclEPS2_.exit.i.i, label %.critedge

_ZNKSt14default_deleteIN11OpenImageIO4v3_123ImageCachePerThreadInfoEEclEPS2_.exit.i.i: ; preds = %.lr.ph
  store ptr null, ptr %.sroa.09.016, align 8, !tbaa !677
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
end_hunk_4
begin_hunk_5_@_ZNSt6vectorIN11OpenImageIO4v3_114ImageCacheFile9LevelInfoESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_:bb.a
  %i.v = tail call ptr @__cxa_begin_catch(ptr %i.u) #5 ; 0 uses
  invoke void @_ZSt8_DestroyIPN11OpenImageIO4v3_114ImageCacheFile9LevelInfoEEvT_S5_(ptr noundef nonnull %i.p, ptr noundef nonnull %.016.i.i.i.i.i)
          to label %bb.d unwind label %bb.e

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
  %1 = sub i64 %i.d, %i.e
  %2 = add i64 %1, -8                             ; 2 uses
  %i.l = lshr i64 %2, 3
  %i.m = add nuw nsw i64 %i.l, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %2, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader30, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %i.n = add i64 %i.d, -8
  %i.o = sub i64 %i.n, %i.e
  %i.p = and i64 %i.o, -8
  %i.q = add i64 %i.p, 8                          ; 2 uses
  %scevgep = getelementptr i8, ptr %i.k, i64 %i.q
  %scevgep26 = getelementptr i8, ptr %i.a, i64 %i.q
  %bound0 = icmp ult ptr %i.k, %scevgep26
  %bound1 = icmp ult ptr %i.a, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.preheader30, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.m, 4611686018427387900      ; 3 uses
  %i.r = shl i64 %n.vec, 3                        ; 2 uses
  %i.s = getelementptr i8, ptr %i.k, i64 %i.r     ; 2 uses
  %i.t = getelementptr i8, ptr %i.a, i64 %i.r
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.u = shl i64 %index, 3                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.k, i64 %i.u ; 2 uses
  %next.gep27 = getelementptr i8, ptr %i.a, i64 %i.u ; 4 uses
  %i.v = getelementptr i8, ptr %next.gep27, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep27, align 8, !tbaa !181, !alias.scope !1814
  %wide.load28 = load <2 x i64>, ptr %i.v, align 8, !tbaa !181, !alias.scope !1814
  %i.w = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !181, !alias.scope !1817, !noalias !1814
  store <2 x i64> %wide.load28, ptr %i.w, align 8, !tbaa !181, !alias.scope !1817, !noalias !1814
  %i.x = getelementptr i8, ptr %next.gep27, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep27, align 8, !tbaa !181, !alias.scope !1814
  store <2 x ptr> splat (ptr null), ptr %i.x, align 8, !tbaa !181, !alias.scope !1814
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !1819

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.m, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS3_EESaIS6_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS6_S8_EEEvEET_SG_RKS7_.exit, label %.lr.ph.i.i.i.i.i.i.preheader30

.lr.ph.i.i.i.i.i.i.preheader30:                   ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.k, %vector.memcheck ], [ %i.k, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.s, %middle.block ]
  %.sroa.08.011.i.i.i.i.i.i.ph = phi ptr [ %i.a, %vector.memcheck ], [ %i.a, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.t, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader30, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader30 ] ; 2 uses
  %.sroa.08.011.i.i.i.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.08.011.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader30 ] ; 3 uses
  %i.z = load i64, ptr %.sroa.08.011.i.i.i.i.i.i, align 8, !tbaa !181
  store i64 %i.z, ptr %.012.i.i.i.i.i.i, align 8, !tbaa !181
  store ptr null, ptr %.sroa.08.011.i.i.i.i.i.i, align 8, !tbaa !181
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.08.011.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.aa, %i.c
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS3_EESaIS6_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS6_S8_EEEvEET_SG_RKS7_.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1820

_ZNSt12_Vector_baseISt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS3_EESaIS6_EED2Ev.exit.i: ; preds = %bb.b, %.lr.ph.i.i.i.i.preheader.i.i
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %.09 = extractvalue { ptr, i32 } %i.ac, 0
  %i.ad = tail call ptr @__cxa_begin_catch(ptr %.09) #5 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS3_EESaIS6_EED2Ev.exit unwind label %bb.e

_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS3_EESaIS6_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS6_S8_EEEvEET_SG_RKS7_.exit: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block
  %.lcssa = phi ptr [ %i.s, %middle.block ], [ %i.ab, %.lr.ph.i.i.i.i.i.i ]
  %i.ae = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.f
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !274
  store ptr %i.k, ptr %0, align 8, !tbaa !271
  store ptr %.lcssa, ptr %i.b, align 8, !tbaa !272
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !274
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS3_EESaIS6_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS6_S8_EEEvEET_SG_RKS7_.exit, %_ZSt8_DestroyISt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS3_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ai, %_ZSt8_DestroyISt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS3_EEEvPT_.exit.i.i.i ], [ %i.a, %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS3_EESaIS6_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS6_S8_EEEvEET_SG_RKS7_.exit ] ; 3 uses
  %i.ah = load ptr, ptr %.05.i.i.i, align 8, !tbaa !181 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS3_EEEvPT_.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i
  tail call void @_ZNKSt14default_deleteIN11OpenImageIO4v3_19ImageSpecEEclEPS2_(ptr noundef nonnull align 8 dereferenceable(8) %.05.i.i.i, ptr noundef nonnull %i.ah)
  br label %_ZSt8_DestroyISt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS3_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS3_EEEvPT_.exit.i.i.i: ; preds = %bb.c, %.lr.ph.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i10 = icmp eq ptr %i.ai, %i.c
  br i1 %.not.i.i.i10, label %_ZSt8_DestroyIPSt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !273

_ZSt8_DestroyIPSt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS3_EEEvPT_.exit.i.i.i, %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS3_EESaIS6_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS6_S8_EEEvEET_SG_RKS7_.exit.thread
  %i.aj = phi ptr [ %i.j, %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS3_EESaIS6_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS6_S8_EEEvEET_SG_RKS7_.exit.thread ], [ %i.ag, %_ZSt8_DestroyISt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS3_EEEvPT_.exit.i.i.i ]
  %.not.i.i1.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS3_EESaIS6_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = sub i64 %i.ak, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.al) #46
  br label %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS3_EESaIS6_EED2Ev.exit

_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS3_EESaIS6_EED2Ev.exit: ; preds = %bb.d, %_ZSt8_DestroyIPSt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i, %_ZNSt12_Vector_baseISt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS3_EESaIS6_EED2Ev.exit.i
  %.0 = phi i1 [ false, %_ZNSt12_Vector_baseISt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS3_EESaIS6_EED2Ev.exit.i ], [ true, %_ZSt8_DestroyIPSt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS3_EES6_EvT_S8_RSaIT0_E.exit.i ], [ true, %bb.d ]
  ret i1 %.0

bb.e:                                             ; preds = %_ZNSt12_Vector_baseISt10unique_ptrIN11OpenImageIO4v3_19ImageSpecESt14default_deleteIS3_EESaIS6_EED2Ev.exit.i
  %i.am = landingpad { ptr, i32 }
          catch ptr null
  %i.an = extractvalue { ptr, i32 } %i.am, 0
  tail call void @__clang_call_terminate(ptr %i.an) #49
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
  %1 = sub i64 %i.d, %i.e
  %2 = add i64 %1, -8                             ; 2 uses
  %i.l = lshr i64 %2, 3
  %i.m = add nuw nsw i64 %i.l, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %2, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader30, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %i.n = add i64 %i.d, -8
  %i.o = sub i64 %i.n, %i.e
  %i.p = and i64 %i.o, -8
  %i.q = add i64 %i.p, 8                          ; 2 uses
  %scevgep = getelementptr i8, ptr %i.k, i64 %i.q
  %scevgep26 = getelementptr i8, ptr %i.a, i64 %i.q
  %bound0 = icmp ult ptr %i.k, %scevgep26
  %bound1 = icmp ult ptr %i.a, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.preheader30, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.m, 4611686018427387900      ; 3 uses
  %i.r = shl i64 %n.vec, 3                        ; 2 uses
  %i.s = getelementptr i8, ptr %i.k, i64 %i.r     ; 2 uses
  %i.t = getelementptr i8, ptr %i.a, i64 %i.r
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.u = shl i64 %index, 3                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.k, i64 %i.u ; 2 uses
  %next.gep27 = getelementptr i8, ptr %i.a, i64 %i.u ; 4 uses
  %i.v = getelementptr i8, ptr %next.gep27, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep27, align 8, !tbaa !268, !alias.scope !1821
  %wide.load28 = load <2 x i64>, ptr %i.v, align 8, !tbaa !268, !alias.scope !1821
  %i.w = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !268, !alias.scope !1824, !noalias !1821
  store <2 x i64> %wide.load28, ptr %i.w, align 8, !tbaa !268, !alias.scope !1824, !noalias !1821
  %i.x = getelementptr i8, ptr %next.gep27, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep27, align 8, !tbaa !268, !alias.scope !1821
  store <2 x ptr> splat (ptr null), ptr %i.x, align 8, !tbaa !268, !alias.scope !1821
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !1826

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.m, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_114ImageCacheFile9ImageDimsESt14default_deleteIS4_EESaIS7_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS7_S9_EEEvEET_SH_RKS8_.exit, label %.lr.ph.i.i.i.i.i.i.preheader30

.lr.ph.i.i.i.i.i.i.preheader30:                   ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.k, %vector.memcheck ], [ %i.k, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.s, %middle.block ]
  %.sroa.08.011.i.i.i.i.i.i.ph = phi ptr [ %i.a, %vector.memcheck ], [ %i.a, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.t, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader30, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader30 ] ; 2 uses
  %.sroa.08.011.i.i.i.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.08.011.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader30 ] ; 3 uses
  %i.z = load i64, ptr %.sroa.08.011.i.i.i.i.i.i, align 8, !tbaa !268
  store i64 %i.z, ptr %.012.i.i.i.i.i.i, align 8, !tbaa !268
  store ptr null, ptr %.sroa.08.011.i.i.i.i.i.i, align 8, !tbaa !268
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.08.011.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.aa, %i.c
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_114ImageCacheFile9ImageDimsESt14default_deleteIS4_EESaIS7_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS7_S9_EEEvEET_SH_RKS8_.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1827

_ZNSt12_Vector_baseISt10unique_ptrIN11OpenImageIO4v3_114ImageCacheFile9ImageDimsESt14default_deleteIS4_EESaIS7_EED2Ev.exit.i: ; preds = %bb.b, %.lr.ph.i.i.i.i.preheader.i.i
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %.09 = extractvalue { ptr, i32 } %i.ac, 0
  %i.ad = tail call ptr @__cxa_begin_catch(ptr %.09) #5 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_114ImageCacheFile9ImageDimsESt14default_deleteIS4_EESaIS7_EED2Ev.exit unwind label %bb.d

_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_114ImageCacheFile9ImageDimsESt14default_deleteIS4_EESaIS7_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS7_S9_EEEvEET_SH_RKS8_.exit: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block
  %.lcssa = phi ptr [ %i.s, %middle.block ], [ %i.ab, %.lr.ph.i.i.i.i.i.i ]
  %i.ae = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.f
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !270
  store ptr %i.k, ptr %0, align 8, !tbaa !266
  store ptr %.lcssa, ptr %i.b, align 8, !tbaa !267
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !270
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_114ImageCacheFile9ImageDimsESt14default_deleteIS4_EESaIS7_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS7_S9_EEEvEET_SH_RKS8_.exit, %_ZSt8_DestroyISt10unique_ptrIN11OpenImageIO4v3_114ImageCacheFile9ImageDimsESt14default_deleteIS4_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ai, %_ZSt8_DestroyISt10unique_ptrIN11OpenImageIO4v3_114ImageCacheFile9ImageDimsESt14default_deleteIS4_EEEvPT_.exit.i.i.i ], [ %i.a, %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_114ImageCacheFile9ImageDimsESt14default_deleteIS4_EESaIS7_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS7_S9_EEEvEET_SH_RKS8_.exit ] ; 2 uses
  %i.ah = load ptr, ptr %.05.i.i.i, align 8, !tbaa !268 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN11OpenImageIO4v3_114ImageCacheFile9ImageDimsESt14default_deleteIS4_EEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN11OpenImageIO4v3_114ImageCacheFile9ImageDimsEEclEPS3_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN11OpenImageIO4v3_114ImageCacheFile9ImageDimsEEclEPS3_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef 64) #46
  br label %_ZSt8_DestroyISt10unique_ptrIN11OpenImageIO4v3_114ImageCacheFile9ImageDimsESt14default_deleteIS4_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10unique_ptrIN11OpenImageIO4v3_114ImageCacheFile9ImageDimsESt14default_deleteIS4_EEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN11OpenImageIO4v3_114ImageCacheFile9ImageDimsEEclEPS3_.exit.i.i.i.i.i, %.lr.ph.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i10 = icmp eq ptr %i.ai, %i.c
  br i1 %.not.i.i.i10, label %_ZSt8_DestroyIPSt10unique_ptrIN11OpenImageIO4v3_114ImageCacheFile9ImageDimsESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !269

_ZSt8_DestroyIPSt10unique_ptrIN11OpenImageIO4v3_114ImageCacheFile9ImageDimsESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN11OpenImageIO4v3_114ImageCacheFile9ImageDimsESt14default_deleteIS4_EEEvPT_.exit.i.i.i, %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_114ImageCacheFile9ImageDimsESt14default_deleteIS4_EESaIS7_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS7_S9_EEEvEET_SH_RKS8_.exit.thread
  %i.aj = phi ptr [ %i.j, %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_114ImageCacheFile9ImageDimsESt14default_deleteIS4_EESaIS7_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS7_S9_EEEvEET_SH_RKS8_.exit.thread ], [ %i.ag, %_ZSt8_DestroyISt10unique_ptrIN11OpenImageIO4v3_114ImageCacheFile9ImageDimsESt14default_deleteIS4_EEEvPT_.exit.i.i.i ]
  %.not.i.i1.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_114ImageCacheFile9ImageDimsESt14default_deleteIS4_EESaIS7_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN11OpenImageIO4v3_114ImageCacheFile9ImageDimsESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exit.i
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = sub i64 %i.ak, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.al) #46
  br label %_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_114ImageCacheFile9ImageDimsESt14default_deleteIS4_EESaIS7_EED2Ev.exit

_ZNSt6vectorISt10unique_ptrIN11OpenImageIO4v3_114ImageCacheFile9ImageDimsESt14default_deleteIS4_EESaIS7_EED2Ev.exit: ; preds = %bb.c, %_ZSt8_DestroyIPSt10unique_ptrIN11OpenImageIO4v3_114ImageCacheFile9ImageDimsESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exit.i, %_ZNSt12_Vector_baseISt10unique_ptrIN11OpenImageIO4v3_114ImageCacheFile9ImageDimsESt14default_deleteIS4_EESaIS7_EED2Ev.exit.i
  %.0 = phi i1 [ false, %_ZNSt12_Vector_baseISt10unique_ptrIN11OpenImageIO4v3_114ImageCacheFile9ImageDimsESt14default_deleteIS4_EESaIS7_EED2Ev.exit.i ], [ true, %_ZSt8_DestroyIPSt10unique_ptrIN11OpenImageIO4v3_114ImageCacheFile9ImageDimsESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exit.i ], [ true, %bb.c ]
  ret i1 %.0

bb.d:                                             ; preds = %_ZNSt12_Vector_baseISt10unique_ptrIN11OpenImageIO4v3_114ImageCacheFile9ImageDimsESt14default_deleteIS4_EESaIS7_EED2Ev.exit.i
  %i.am = landingpad { ptr, i32 }
          catch ptr null
  %i.an = extractvalue { ptr, i32 } %i.am, 0
  tail call void @__clang_call_terminate(ptr %i.an) #49
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
  %i.ai = getelementptr i8, ptr %1, i64 %i.ah
  %broadcast.splatinsert131 = insertelement <2 x i64> poison, i64 %i.i, i64 0
  %broadcast.splat132 = shufflevector <2 x i64> %broadcast.splatinsert131, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body133

vector.body133:                                   ; preds = %vector.body133, %vector.ph128
  %index134 = phi i64 [ 0, %vector.ph128 ], [ %index.next136, %vector.body133 ] ; 2 uses
  %i.aj = shl i64 %index134, 3
  %next.gep135 = getelementptr i8, ptr %1, i64 %i.aj ; 2 uses
  %i.ak = getelementptr i8, ptr %next.gep135, i64 16
  store <2 x i64> %broadcast.splat132, ptr %next.gep135, align 8, !tbaa !201
  store <2 x i64> %broadcast.splat132, ptr %i.ak, align 8, !tbaa !201
  %index.next136 = add nuw i64 %index134, 4       ; 2 uses
  %i.al = icmp eq i64 %index.next136, %n.vec130
  br i1 %i.al, label %middle.block137, label %vector.body133, !llvm.loop !1828

middle.block137:                                  ; preds = %vector.body133
  %cmp.n138 = icmp eq i64 %i.ag, %n.vec130
  br i1 %cmp.n138, label %_ZSt4fillIPmmEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.k, %middle.block137
  %.06.i.i.i.ph = phi ptr [ %1, %bb.k ], [ %i.ai, %middle.block137 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i ], [ %.06.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  store i64 %i.i, ptr %.06.i.i.i, align 8, !tbaa !201
  %i.am = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.am, %i.ad
  br i1 %.not.i.i.i, label %_ZSt4fillIPmmEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !1829

bb.l:                                             ; preds = %bb.c
  %i.an = icmp eq i64 %2, %i.l
  br i1 %i.an, label %_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = sub nuw i64 %2, %i.l
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.ao, 3
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx.i.i.i.i.i ; 3 uses
  %i.aq = shl i64 %2, 3
  %4 = sub i64 %i.aq, %i.k
  %5 = add i64 %4, -8                             ; 2 uses
  %i.ar = lshr i64 %5, 3
  %i.as = add nuw nsw i64 %i.ar, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %5, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.m
  %n.vec = and i64 %i.as, 4611686018427387900     ; 3 uses
  %i.at = shl i64 %n.vec, 3
  %i.au = getelementptr i8, ptr %i.d, i64 %i.at
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.i, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.av = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.d, i64 %i.av ; 2 uses
  %i.aw = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %broadcast.splat, ptr %next.gep, align 8, !tbaa !201
  store <2 x i64> %broadcast.splat, ptr %i.aw, align 8, !tbaa !201
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ax = icmp eq i64 %index.next, %n.vec
  br i1 %i.ax, label %middle.block, label %vector.body, !llvm.loop !1830

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.as, %n.vec
  br i1 %cmp.n, label %_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.m, %middle.block
  %.06.i.i.i.i.i.i.i.ph = phi ptr [ %i.d, %bb.m ], [ %i.au, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  store i64 %i.i, ptr %.06.i.i.i.i.i.i.i, align 8, !tbaa !201
  %i.ay = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ay, %i.ap
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1831

_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %bb.l
  %.0.i.i.i.i.i = phi ptr [ %i.d, %bb.l ], [ %i.ap, %middle.block ], [ %i.ap, %.lr.ph.i.i.i.i.i.i.i ] ; 5 uses
  store ptr %.0.i.i.i.i.i, ptr %i.c, align 8, !tbaa !577
  %i.az = icmp sgt i64 %i.k, 8
  br i1 %i.az, label %bb.n, label %bb.o, !prof !548

bb.n:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.0.i.i.i.i.i, ptr align 8 %1, i64 %i.k, i1 false)
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !577
  br label %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit69

bb.o:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit
  %i.ba = icmp eq i64 %i.k, 8
  br i1 %i.ba, label %bb.p, label %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit69

bb.p:                                             ; preds = %bb.o
  %i.bb = load i64, ptr %1, align 8, !tbaa !201
  store i64 %i.bb, ptr %.0.i.i.i.i.i, align 8, !tbaa !201
  br label %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit69

_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit69: ; preds = %bb.p, %bb.o, %bb.n
  %i.bc = phi ptr [ %.0.i.i.i.i.i, %bb.p ], [ %.0.i.i.i.i.i, %bb.o ], [ %.pre, %bb.n ]
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.k
  store ptr %i.bd, ptr %i.c, align 8, !tbaa !577
  %.not5.i.i.i70 = icmp eq ptr %1, %i.d
  br i1 %.not5.i.i.i70, label %_ZSt4fillIPmmEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71.preheader

.lr.ph.i.i.i71.preheader:                         ; preds = %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit69
  %6 = sub i64 %i.f, %i.j
  %7 = add i64 %6, -8                             ; 2 uses
  %i.be = lshr i64 %7, 3
  %i.bf = add nuw nsw i64 %i.be, 1                ; 2 uses
  %min.iters.check113 = icmp ult i64 %7, 24
  br i1 %min.iters.check113, label %.lr.ph.i.i.i71.preheader154, label %vector.ph114

vector.ph114:                                     ; preds = %.lr.ph.i.i.i71.preheader
  %n.vec116 = and i64 %i.bf, 4611686018427387900  ; 3 uses
  %i.bg = shl i64 %n.vec116, 3
  %i.bh = getelementptr i8, ptr %1, i64 %i.bg
  %broadcast.splatinsert117 = insertelement <2 x i64> poison, i64 %i.i, i64 0
  %broadcast.splat118 = shufflevector <2 x i64> %broadcast.splatinsert117, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body119

vector.body119:                                   ; preds = %vector.body119, %vector.ph114
  %index120 = phi i64 [ 0, %vector.ph114 ], [ %index.next122, %vector.body119 ] ; 2 uses
  %i.bi = shl i64 %index120, 3
  %next.gep121 = getelementptr i8, ptr %1, i64 %i.bi ; 2 uses
  %i.bj = getelementptr i8, ptr %next.gep121, i64 16
  store <2 x i64> %broadcast.splat118, ptr %next.gep121, align 8, !tbaa !201
  store <2 x i64> %broadcast.splat118, ptr %i.bj, align 8, !tbaa !201
  %index.next122 = add nuw i64 %index120, 4       ; 2 uses
  %i.bk = icmp eq i64 %index.next122, %n.vec116
  br i1 %i.bk, label %middle.block123, label %vector.body119, !llvm.loop !1832

middle.block123:                                  ; preds = %vector.body119
  %cmp.n124 = icmp eq i64 %i.bf, %n.vec116
  br i1 %cmp.n124, label %_ZSt4fillIPmmEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71.preheader154

.lr.ph.i.i.i71.preheader154:                      ; preds = %.lr.ph.i.i.i71.preheader, %middle.block123
  %.06.i.i.i72.ph = phi ptr [ %1, %.lr.ph.i.i.i71.preheader ], [ %i.bh, %middle.block123 ]
  br label %.lr.ph.i.i.i71

.lr.ph.i.i.i71:                                   ; preds = %.lr.ph.i.i.i71.preheader154, %.lr.ph.i.i.i71
  %.06.i.i.i72 = phi ptr [ %i.bl, %.lr.ph.i.i.i71 ], [ %.06.i.i.i72.ph, %.lr.ph.i.i.i71.preheader154 ] ; 2 uses
  store i64 %i.i, ptr %.06.i.i.i72, align 8, !tbaa !201
  %i.bl = getelementptr inbounds nuw i8, ptr %.06.i.i.i72, i64 8 ; 2 uses
  %.not.i.i.i73 = icmp eq ptr %i.bl, %i.d
  br i1 %.not.i.i.i73, label %_ZSt4fillIPmmEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71, !llvm.loop !1833

bb.q:                                             ; preds = %bb.b
  %i.bm = load ptr, ptr %0, align 8, !tbaa !184   ; 5 uses
  %i.bn = ptrtoint ptr %i.bm to i64               ; 3 uses
  %i.bo = sub i64 %i.f, %i.bn
  %i.bp = ashr exact i64 %i.bo, 3                 ; 4 uses
  %i.bq = sub nsw i64 1152921504606846975, %i.bp
  %i.br = icmp ult i64 %i.bq, %2
  br i1 %i.br, label %bb.r, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit

bb.r:                                             ; preds = %bb.q
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.333) #48
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit:    ; preds = %bb.q
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.bp, i64 %2)
  %i.bs = add nsw i64 %.sroa.speculated.i, %i.bp  ; 2 uses
  %i.bt = icmp ult i64 %i.bs, %i.bp
  %i.bu = tail call i64 @llvm.umin.i64(i64 %i.bs, i64 1152921504606846975)
  %i.bv = select i1 %i.bt, i64 1152921504606846975, i64 %i.bu ; 3 uses
  %i.bw = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.bx = sub i64 %i.bw, %i.bn                    ; 4 uses
  %.not.i = icmp eq i64 %i.bv, 0
  br i1 %.not.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit
  %i.by = shl nuw nsw i64 %i.bv, 3
  %i.bz = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.by) #47
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit
  %i.ca = phi ptr [ %i.bz, %bb.s ], [ null, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.cb = getelementptr inbounds i8, ptr %i.ca, i64 %i.bx ; 5 uses
  %.idx.i.i.i.i.i75 = shl nuw nsw i64 %2, 3       ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 %.idx.i.i.i.i.i75
  %i.cd = load i64, ptr %3, align 8, !tbaa !201   ; 2 uses
  %i.ce = add nsw i64 %.idx.i.i.i.i.i75, -8       ; 2 uses
  %i.cf = lshr exact i64 %i.ce, 3
  %i.cg = add nuw nsw i64 %i.cf, 1                ; 2 uses
  %min.iters.check141 = icmp ult i64 %i.ce, 24
  br i1 %min.iters.check141, label %.lr.ph.i.i.i.i.i.i.i76.preheader, label %vector.ph142

vector.ph142:                                     ; preds = %bb.t
  %n.vec144 = and i64 %i.cg, 4611686018427387900  ; 3 uses
  %i.ch = shl i64 %n.vec144, 3
  %i.ci = getelementptr i8, ptr %i.cb, i64 %i.ch
  %broadcast.splatinsert145 = insertelement <2 x i64> poison, i64 %i.cd, i64 0
  %broadcast.splat146 = shufflevector <2 x i64> %broadcast.splatinsert145, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body147

vector.body147:                                   ; preds = %vector.body147, %vector.ph142
  %index148 = phi i64 [ 0, %vector.ph142 ], [ %index.next150, %vector.body147 ] ; 2 uses
  %i.cj = shl i64 %index148, 3
  %next.gep149 = getelementptr i8, ptr %i.cb, i64 %i.cj ; 2 uses
  %i.ck = getelementptr i8, ptr %next.gep149, i64 16
  store <2 x i64> %broadcast.splat146, ptr %next.gep149, align 8, !tbaa !201
  store <2 x i64> %broadcast.splat146, ptr %i.ck, align 8, !tbaa !201
  %index.next150 = add nuw i64 %index148, 4       ; 2 uses
  %i.cl = icmp eq i64 %index.next150, %n.vec144
  br i1 %i.cl, label %middle.block151, label %vector.body147, !llvm.loop !1834

middle.block151:                                  ; preds = %vector.body147
  %cmp.n152 = icmp eq i64 %i.cg, %n.vec144
  br i1 %cmp.n152, label %_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit80, label %.lr.ph.i.i.i.i.i.i.i76.preheader

.lr.ph.i.i.i.i.i.i.i76.preheader:                 ; preds = %bb.t, %middle.block151
  %.06.i.i.i.i.i.i.i77.ph = phi ptr [ %i.cb, %bb.t ], [ %i.ci, %middle.block151 ]
  br label %.lr.ph.i.i.i.i.i.i.i76

.lr.ph.i.i.i.i.i.i.i76:                           ; preds = %.lr.ph.i.i.i.i.i.i.i76.preheader, %.lr.ph.i.i.i.i.i.i.i76
  %.06.i.i.i.i.i.i.i77 = phi ptr [ %i.cm, %.lr.ph.i.i.i.i.i.i.i76 ], [ %.06.i.i.i.i.i.i.i77.ph, %.lr.ph.i.i.i.i.i.i.i76.preheader ] ; 2 uses
  store i64 %i.cd, ptr %.06.i.i.i.i.i.i.i77, align 8, !tbaa !201
  %i.cm = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i77, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i78 = icmp eq ptr %i.cm, %i.cc
  br i1 %.not.i.i.i.i.i.i.i78, label %_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit80, label %.lr.ph.i.i.i.i.i.i.i76, !llvm.loop !1835

_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit80: ; preds = %.lr.ph.i.i.i.i.i.i.i76, %middle.block151
  %i.cn = icmp sgt i64 %i.bx, 8
  br i1 %i.cn, label %bb.u, label %bb.v, !prof !548

bb.u:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit80
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ca, ptr align 8 %i.bm, i64 %i.bx, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit

bb.v:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit80
  %i.co = icmp eq i64 %i.bx, 8
  br i1 %i.co, label %bb.w, label %_ZSt34__uninitialized_move_if_noexcept_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit

bb.w:                                             ; preds = %bb.v
  %i.cp = load i64, ptr %i.bm, align 8, !tbaa !201
  store i64 %i.cp, ptr %i.ca, align 8, !tbaa !201
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit

_ZSt34__uninitialized_move_if_noexcept_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit: ; preds = %bb.w, %bb.v, %bb.u
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %2 ; 3 uses
  %i.cr = sub i64 %i.f, %i.bw                     ; 4 uses
  %i.cs = icmp sgt i64 %i.cr, 8
  br i1 %i.cs, label %bb.x, label %bb.y, !prof !548

bb.x:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cq, ptr align 8 %1, i64 %i.cr, i1 false)
  br label %bb.aa

bb.y:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit
  %i.ct = icmp eq i64 %i.cr, 8
  br i1 %i.ct, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cu = load i64, ptr %1, align 8, !tbaa !201
  store i64 %i.cu, ptr %i.cq, align 8, !tbaa !201
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x
  %i.cv = getelementptr inbounds i8, ptr %i.cq, i64 %i.cr
  %.not.i82 = icmp eq ptr %i.bm, null
  br i1 %.not.i82, label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cw = sub i64 %i.e, %i.bn
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef %i.cw) #46
  br label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit

_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit: ; preds = %bb.aa, %bb.ab
  store ptr %i.ca, ptr %0, align 8, !tbaa !184
  store ptr %i.cv, ptr %i.c, align 8, !tbaa !577
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.bv
  store ptr %i.cx, ptr %i.a, align 8, !tbaa !185
  br label %_ZSt4fillIPmmEvT_S1_RKT0_.exit

_ZSt4fillIPmmEvT_S1_RKT0_.exit:                   ; preds = %.lr.ph.i.i.i71, %.lr.ph.i.i.i, %middle.block123, %middle.block137, %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit69, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit, %bb.a
  ret void
}

; Function Attrs: nounwind
declare i64 @_ZNSt6chrono3_V212steady_clock3nowEv() local_unnamed_addr #16

; Function Attrs: nounwind
declare i32 @pthread_mutex_clocklock(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #16

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIfSaIfEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !361  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !363    ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 2                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !362
  %i.j = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 2                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 2305843009213693952
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 2305843009213693951        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
end_hunk_5
begin_hunk_6_@_ZNKSt7__cxx1112regex_traitsIcE5valueEci:bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.i = load ptr, ptr %4, align 8, !tbaa !36     ; 2 uses
  %i.j = icmp eq ptr %i.i, %i.b
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10: ; preds = %bb.d
  %i.k = load i64, ptr %i.b, align 8, !tbaa !39
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.l) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10, %bb.c
  %.pn = phi { ptr, i32 } [ %i.g, %bb.c ], [ %i.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10 ], [ %i.h, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #5
  br label %bb.h

bb.e:                                             ; preds = %bb.f
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  call void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(120) %3) #5
  br label %bb.h

_ZNSirsEPFRSt8ios_baseS0_E.exit13:                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  br label %.sink.split

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSirsEPFRSt8ios_baseS0_E.exit13
  %.sink20 = phi i32 [ 8, %_ZNSirsEPFRSt8ios_baseS0_E.exit13 ], [ 64, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  %i.n = load ptr, ptr %3, align 8, !tbaa !262
  %i.o = getelementptr i8, ptr %i.n, i64 -24
  %i.p = load i64, ptr %i.o, align 8
  %i.q = getelementptr inbounds i8, ptr %3, i64 %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24 ; 2 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !2216
  %i.t = and i32 %i.s, -75
  %i.u = or disjoint i32 %i.t, %.sink20
  store i32 %i.u, ptr %i.r, align 8, !tbaa !2223
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.v = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIlEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.g unwind label %bb.e       ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.w = load ptr, ptr %3, align 8, !tbaa !262
  %i.x = getelementptr i8, ptr %i.w, i64 -24
  %i.y = load i64, ptr %i.x, align 8
  %i.z = getelementptr inbounds i8, ptr %3, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !2224
  %i.ac = load i64, ptr %i.a, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  %i.ad = load ptr, ptr @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.ad, ptr %3, align 8, !tbaa !262
  %i.ae = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.af = getelementptr i8, ptr %i.ad, i64 -24
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = getelementptr inbounds i8, ptr %3, i64 %i.ag
  store ptr %i.ae, ptr %i.ah, align 8, !tbaa !262
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ai, align 8, !tbaa !262
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !36 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.g
  %i.an = load i64, ptr %i.al, align 8, !tbaa !39
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #46
  br label %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.ap = and i32 %i.ab, 5
  %.not = icmp eq i32 %i.ap, 0
  %i.aq = trunc i64 %i.ac to i32
  %i.ar = select i1 %.not, i32 %i.aq, i32 -1
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ai, align 8, !tbaa !262
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 72
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.as) #5
  %i.at = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 8), align 8 ; 2 uses
  store ptr %i.at, ptr %3, align 8, !tbaa !262
  %i.au = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8
  %i.av = getelementptr i8, ptr %i.at, i64 -24
  %i.aw = load i64, ptr %i.av, align 8
  %i.ax = getelementptr inbounds i8, ptr %3, i64 %i.aw
  store ptr %i.au, ptr %i.ax, align 8, !tbaa !262
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.ay, align 8, !tbaa !2225
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 120
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.az) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #5
  ret i32 %i.ar

bb.h:                                             ; preds = %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12
  %.pn8 = phi { ptr, i32 } [ %i.m, %bb.e ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #5
  resume { ptr, i32 } %.pn8
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) #8

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEC1ERKNS_12basic_stringIcS2_S3_EESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(120)) unnamed_addr #13 align 2

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIlEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0EE22_M_add_character_classERKNS1_12basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i1 noundef zeroext %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2227, !nonnull !290, !align !1296
  %i.c = load ptr, ptr %1, align 8, !tbaa !36     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !169
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.e
  %i.g = tail call i32 @_ZNKSt7__cxx1112regex_traitsIcE16lookup_classnameIPKcEENS1_10_RegexMaskET_S6_b(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef %i.c, ptr noundef %i.f, i1 noundef zeroext false) ; 5 uses
  %i.h = and i32 %i.g, 131071
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeEPKc(i32 noundef 0, ptr noundef nonnull @.str.355) #48
  unreachable

bb.c:                                             ; preds = %bb.a
  br i1 %2, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %.sroa.04.0.insert.ext = lshr i32 %i.g, 16
  %i.k = load i16, ptr %i.j, align 8, !tbaa !2138
  %i.l = trunc i32 %i.g to i16
  %i.m = or i16 %i.k, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 98
  %i.o = load i8, ptr %i.n, align 2, !tbaa !2139
  %i.p = trunc i32 %.sroa.04.0.insert.ext to i8
  %i.q = or i8 %i.o, %i.p
  %.sroa.2.0.insert.ext.i.i = zext i8 %i.q to i32
  %.sroa.2.0.insert.shift.i.i = shl nuw nsw i32 %.sroa.2.0.insert.ext.i.i, 16
  %.sroa.0.0.insert.ext.i.i = zext i16 %i.m to i32
  %.sroa.0.0.insert.insert.i.i = or disjoint i32 %.sroa.2.0.insert.shift.i.i, %.sroa.0.0.insert.ext.i.i
  %i.r = trunc nuw i32 %.sroa.0.0.insert.insert.i.i to i24
  store i24 %i.r, ptr %i.j, align 8
  br label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE9push_backERKS3_.exit

bb.e:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !2228 ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !2144
  %.not.i = icmp eq ptr %i.u, %i.w
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.sroa.04.0.insert.ext6 = and i32 %i.g, 16777215
  store i32 %.sroa.04.0.insert.ext6, ptr %i.u, align 2
  %i.x = load ptr, ptr %i.t, align 8, !tbaa !2228
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  store ptr %i.y, ptr %i.t, align 8, !tbaa !2228
  br label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE9push_backERKS3_.exit

bb.g:                                             ; preds = %bb.e
  %i.z = load ptr, ptr %i.s, align 8, !tbaa !2147 ; 7 uses
  %i.aa = ptrtoint ptr %i.u to i64                ; 2 uses
  %i.ab = ptrtoint ptr %i.z to i64                ; 3 uses
  %i.ac = sub i64 %i.aa, %i.ab                    ; 4 uses
  %i.ad = icmp eq i64 %i.ac, 9223372036854775804
  br i1 %i.ad, label %bb.h, label %_ZNKSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.330) #48
  unreachable

_ZNKSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.g
  %i.ae = ashr exact i64 %i.ac, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ae, i64 1)
  %i.af = add nsw i64 %.sroa.speculated.i.i.i, %i.ae ; 2 uses
  %i.ag = icmp ult i64 %i.af, %i.ae
  %i.ah = tail call i64 @llvm.umin.i64(i64 %i.af, i64 2305843009213693951)
  %i.ai = select i1 %i.ag, i64 2305843009213693951, i64 %i.ah ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ai, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.aj = shl nuw nsw i64 %i.ai, 2
  %i.ak = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aj) #47 ; 8 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ac
  %.sroa.04.0.insert.ext10 = and i32 %i.g, 16777215
  store i32 %.sroa.04.0.insert.ext10, ptr %i.al, align 2
  %.not10.i.i.i.i.i = icmp eq ptr %i.z, %i.u
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.am = ptrtoaddr ptr %i.ak to i64
  %3 = sub i64 %i.aa, %i.ab
  %4 = add i64 %3, -4                             ; 2 uses
  %i.an = lshr i64 %4, 2
  %i.ao = add nuw nsw i64 %i.an, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %4, 28
  %i.ap = sub i64 %i.am, %i.ab
  %diff.check = icmp ult i64 %i.ap, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader31, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ao, 9223372036854775800     ; 3 uses
  %i.aq = shl i64 %n.vec, 2                       ; 2 uses
  %i.ar = getelementptr i8, ptr %i.ak, i64 %i.aq  ; 2 uses
  %i.as = getelementptr i8, ptr %i.z, i64 %i.aq
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.at = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ak, i64 %i.at ; 2 uses
  %next.gep28 = getelementptr i8, ptr %i.z, i64 %i.at ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2229)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2232)
  %i.au = getelementptr i8, ptr %next.gep28, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep28, align 2, !alias.scope !2232, !noalias !2229
  %wide.load29 = load <4 x i32>, ptr %i.au, align 2, !alias.scope !2232, !noalias !2229
  %i.av = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 2, !alias.scope !2229, !noalias !2232
  store <4 x i32> %wide.load29, ptr %i.av, align 2, !alias.scope !2229, !noalias !2232
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aw = icmp eq i64 %index.next, %n.vec
  br i1 %i.aw, label %middle.block, label %vector.body, !llvm.loop !2234

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ao, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader31

.lr.ph.i.i.i.i.i.preheader31:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ar, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.z, %.lr.ph.i.i.i.i.i.preheader ], [ %i.as, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader31, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader31 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader31 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2229)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2232)
  %i.ax = load i32, ptr %.0911.i.i.i.i.i, align 2, !alias.scope !2232, !noalias !2229
  store i32 %i.ax, ptr %.012.i.i.i.i.i, align 2, !alias.scope !2229, !noalias !2232
  %i.ay = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 4 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ay, %i.u
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !2235

_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ak, %_ZNKSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ar, %middle.block ], [ %i.az, %.lr.ph.i.i.i.i.i ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 4
  %.not.i23.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ac) #46
  br label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.i, %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  store ptr %i.ak, ptr %i.s, align 8, !tbaa !2147
  store ptr %i.ba, ptr %i.t, align 8, !tbaa !2228
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.ai
  store ptr %i.bb, ptr %i.v, align 8, !tbaa !2144
  br label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE9push_backERKS3_.exit

_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE9push_backERKS3_.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, %bb.f, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0EE8_M_readyEv(ptr noundef nonnull align 8 dereferenceable(152) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.anon.567, align 8            ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !114    ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !114  ; 4 uses
  %.not.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not.i.i, label %_ZNSt6vectorIcSaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS1_EES6_.exit, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit: ; preds = %bb.a
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.f, i1 true)
  %i.h = shl nuw nsw i64 %i.g, 1
  %i.i = xor i64 %i.h, 126
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %i.a, ptr %i.c, i64 noundef %i.i)
  tail call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %i.a, ptr %i.c)
  %.pre = load ptr, ptr %0, align 8, !tbaa !114   ; 4 uses
  %.pre36 = ptrtoint ptr %.pre to i64             ; 2 uses
  %.pre13 = load ptr, ptr %i.b, align 8, !tbaa !114 ; 7 uses
  %.pre1335 = ptrtoint ptr %.pre13 to i64         ; 2 uses
  %i.j = icmp eq ptr %.pre, %.pre13
  %i.k = getelementptr inbounds nuw i8, ptr %.pre, i64 1 ; 2 uses
  %.not.i.i.i31 = icmp eq ptr %i.k, %.pre13
  %or.cond = select i1 %i.j, i1 true, i1 %.not.i.i.i31
  br i1 %or.cond, label %_ZNSt6vectorIcSaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS1_EES6_.exit, label %.lr.ph

.preheader.i.i.i:                                 ; preds = %.lr.ph
  %i.l = getelementptr inbounds nuw i8, ptr %i.m, i64 1 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.l, %.pre13
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIcSaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS1_EES6_.exit, label %.lr.ph, !llvm.loop !2236

.lr.ph:                                           ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit, %.preheader.i.i.i
  %indvar = phi i64 [ %indvar.next, %.preheader.i.i.i ], [ 0, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit ] ; 3 uses
  %i.m = phi ptr [ %i.l, %.preheader.i.i.i ], [ %i.k, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit ] ; 3 uses
  %.sroa.09.0.i.i.i32 = phi ptr [ %i.m, %.preheader.i.i.i ], [ %.pre, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit ] ; 5 uses
  %i.n = load i8, ptr %.sroa.09.0.i.i.i32, align 1, !tbaa !39 ; 3 uses
  %i.o = load i8, ptr %i.m, align 1, !tbaa !39
  %i.p = icmp eq i8 %i.n, %i.o
  br i1 %i.p, label %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i, label %.preheader.i.i.i, !llvm.loop !2236

_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i: ; preds = %.lr.ph
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i.i32, i64 2 ; 3 uses
  %.not18.i.i = icmp eq ptr %i.q, %.pre13
  br i1 %.not18.i.i, label %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET_S7_S7_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i
  %i.r = xor i64 %.pre1335, 2
  %i.s = add i64 %indvar, %.pre36
  %i.t = sub i64 %i.r, %i.s
  %i.u = add i64 %.pre1335, -3
  %i.v = add i64 %indvar, %.pre36
  %i.w = sub i64 %i.u, %i.v
  %xtraiter = and i64 %i.t, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %bb.c
  %i.x = phi i8 [ %i.z, %bb.c ], [ %i.n, %.lr.ph.i.i.preheader ]
  %i.y = phi ptr [ %i.ac, %bb.c ], [ %i.q, %.lr.ph.i.i.preheader ] ; 2 uses
  %.sroa.0.019.i.i.prol = phi ptr [ %.sroa.0.1.i.i.prol, %bb.c ], [ %.sroa.09.0.i.i.i32, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %bb.c ], [ 0, %.lr.ph.i.i.preheader ]
  %i.z = load i8, ptr %i.y, align 1, !tbaa !39    ; 4 uses
  %i.aa = icmp eq i8 %i.x, %i.z
  br i1 %i.aa, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.prol
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i.i.prol, i64 1 ; 2 uses
  store i8 %i.z, ptr %i.ab, align 1, !tbaa !39
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i.i.prol
  %.sroa.0.1.i.i.prol = phi ptr [ %.sroa.0.019.i.i.prol, %.lr.ph.i.i.prol ], [ %i.ab, %bb.b ] ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !2237

.lr.ph.i.i.prol.loopexit:                         ; preds = %bb.c, %.lr.ph.i.i.preheader
  %.sroa.0.1.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.preheader ], [ %.sroa.0.1.i.i.prol, %bb.c ]
  %.unr = phi i8 [ %i.n, %.lr.ph.i.i.preheader ], [ %i.z, %bb.c ]
  %.unr38 = phi ptr [ %i.q, %.lr.ph.i.i.preheader ], [ %i.ac, %bb.c ]
  %.sroa.0.019.i.i.unr = phi ptr [ %.sroa.09.0.i.i.i32, %.lr.ph.i.i.preheader ], [ %.sroa.0.1.i.i.prol, %bb.c ]
  %i.ad = icmp ult i64 %i.w, 3
  br i1 %i.ad, label %._crit_edge.i.i.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %bb.h
  %i.ae = phi i8 [ %i.as, %bb.h ], [ %.unr, %.lr.ph.i.i.prol.loopexit ]
  %i.af = phi ptr [ %i.av, %bb.h ], [ %.unr38, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  %.sroa.0.019.i.i = phi ptr [ %.sroa.0.1.i.i.3, %bb.h ], [ %.sroa.0.019.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 2 uses
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !39  ; 3 uses
  %i.ah = icmp eq i8 %i.ae, %i.ag
  br i1 %i.ah, label %.lr.ph.i.i.1, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i.i, i64 1 ; 2 uses
  store i8 %i.ag, ptr %i.ai, align 1, !tbaa !39
  br label %.lr.ph.i.i.1

.lr.ph.i.i.1:                                     ; preds = %bb.d, %.lr.ph.i.i
  %.sroa.0.1.i.i = phi ptr [ %.sroa.0.019.i.i, %.lr.ph.i.i ], [ %i.ai, %bb.d ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 1
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !39  ; 3 uses
  %i.al = icmp eq i8 %i.ag, %i.ak
  br i1 %i.al, label %.lr.ph.i.i.2, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.1
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i, i64 1 ; 2 uses
  store i8 %i.ak, ptr %i.am, align 1, !tbaa !39
  br label %.lr.ph.i.i.2

.lr.ph.i.i.2:                                     ; preds = %bb.e, %.lr.ph.i.i.1
  %.sroa.0.1.i.i.1 = phi ptr [ %.sroa.0.1.i.i, %.lr.ph.i.i.1 ], [ %i.am, %bb.e ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.af, i64 2
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !39  ; 3 uses
  %i.ap = icmp eq i8 %i.ak, %i.ao
  br i1 %i.ap, label %.lr.ph.i.i.3, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.2
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.1, i64 1 ; 2 uses
  store i8 %i.ao, ptr %i.aq, align 1, !tbaa !39
  br label %.lr.ph.i.i.3

end_hunk_6
begin_hunk_7_@_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0EEC2ERKS4_:bb.a

.lr.ph.i.i.i.i.i20.preheader:                     ; preds = %.noexc27
  %i.cw = ptrtoaddr ptr %i.cu to i64
  %i.cx = ptrtoaddr ptr %i.cq to i64
  %i.cy = ptrtoint ptr %i.cv to i64
  %i.cz = ptrtoint ptr %i.cu to i64
  %i.da = add i64 %i.cy, -4
  %i.db = sub i64 %i.da, %i.cz                    ; 2 uses
  %i.dc = lshr i64 %i.db, 2
  %i.dd = add nuw nsw i64 %i.dc, 1                ; 2 uses
  %min.iters.check62 = icmp ult i64 %i.db, 28
  %i.de = sub i64 %i.cx, %i.cw
  %diff.check61 = icmp ult i64 %i.de, 32
  %or.cond76 = or i1 %min.iters.check62, %diff.check61
  br i1 %or.cond76, label %.lr.ph.i.i.i.i.i20.preheader77, label %vector.ph63

vector.ph63:                                      ; preds = %.lr.ph.i.i.i.i.i20.preheader
  %n.vec65 = and i64 %i.dd, 9223372036854775800   ; 3 uses
  %i.df = shl i64 %n.vec65, 2                     ; 2 uses
  %i.dg = getelementptr i8, ptr %i.cq, i64 %i.df  ; 2 uses
  %i.dh = getelementptr i8, ptr %i.cu, i64 %i.df
  br label %vector.body66

vector.body66:                                    ; preds = %vector.body66, %vector.ph63
  %index67 = phi i64 [ 0, %vector.ph63 ], [ %index.next72, %vector.body66 ] ; 2 uses
  %i.di = shl i64 %index67, 2                     ; 2 uses
  %next.gep68 = getelementptr i8, ptr %i.cq, i64 %i.di ; 2 uses
  %next.gep69 = getelementptr i8, ptr %i.cu, i64 %i.di ; 2 uses
  %i.dj = getelementptr i8, ptr %next.gep69, i64 16
  %wide.load70 = load <4 x i32>, ptr %next.gep69, align 2
  %wide.load71 = load <4 x i32>, ptr %i.dj, align 2
  %i.dk = getelementptr i8, ptr %next.gep68, i64 16
  store <4 x i32> %wide.load70, ptr %next.gep68, align 2
  store <4 x i32> %wide.load71, ptr %i.dk, align 2
  %index.next72 = add nuw i64 %index67, 8         ; 2 uses
  %i.dl = icmp eq i64 %index.next72, %n.vec65
  br i1 %i.dl, label %middle.block73, label %vector.body66, !llvm.loop !2271

middle.block73:                                   ; preds = %vector.body66
  %cmp.n74 = icmp eq i64 %i.dd, %n.vec65
  br i1 %cmp.n74, label %.loopexit, label %.lr.ph.i.i.i.i.i20.preheader77

.lr.ph.i.i.i.i.i20.preheader77:                   ; preds = %.lr.ph.i.i.i.i.i20.preheader, %middle.block73
  %.09.i.i.i.i.i21.ph = phi ptr [ %i.cq, %.lr.ph.i.i.i.i.i20.preheader ], [ %i.dg, %middle.block73 ]
  %.sroa.04.08.i.i.i.i.i22.ph = phi ptr [ %i.cu, %.lr.ph.i.i.i.i.i20.preheader ], [ %i.dh, %middle.block73 ]
  br label %.lr.ph.i.i.i.i.i20

.lr.ph.i.i.i.i.i20:                               ; preds = %.lr.ph.i.i.i.i.i20.preheader77, %.lr.ph.i.i.i.i.i20
  %.09.i.i.i.i.i21 = phi ptr [ %i.do, %.lr.ph.i.i.i.i.i20 ], [ %.09.i.i.i.i.i21.ph, %.lr.ph.i.i.i.i.i20.preheader77 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i22 = phi ptr [ %i.dn, %.lr.ph.i.i.i.i.i20 ], [ %.sroa.04.08.i.i.i.i.i22.ph, %.lr.ph.i.i.i.i.i20.preheader77 ] ; 2 uses
  %i.dm = load i32, ptr %.sroa.04.08.i.i.i.i.i22, align 2
  store i32 %i.dm, ptr %.09.i.i.i.i.i21, align 2
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i22, i64 4 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i21, i64 4 ; 2 uses
  %.not.i.i.i.i.i23 = icmp eq ptr %i.dn, %i.cv
  br i1 %.not.i.i.i.i.i23, label %.loopexit, label %.lr.ph.i.i.i.i.i20, !llvm.loop !2272

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i20, %middle.block73, %.noexc27
  %.0.lcssa.i.i.i.i.i24 = phi ptr [ %i.cq, %.noexc27 ], [ %i.dg, %middle.block73 ], [ %i.do, %.lr.ph.i.i.i.i.i20 ]
  store ptr %.0.lcssa.i.i.i.i.i24, ptr %i.cr, align 8, !tbaa !2228
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.dp, ptr noundef nonnull align 8 dereferenceable(56) %i.dq, i64 56, i1 false)
  ret void

bb.m:                                             ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i12
  %i.dr = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.n:                                             ; preds = %_ZNSt15__new_allocatorISt4pairIccEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i15
  %i.ds = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit

bb.o:                                             ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112regex_traitsIcE10_RegexMaskEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i25
  %i.dt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.du = load ptr, ptr %i.as, align 8, !tbaa !2148 ; 3 uses
  %.not.i.i.i28 = icmp eq ptr %i.du, null
  br i1 %.not.i.i.i28, label %_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dv = load ptr, ptr %i.bf, align 8, !tbaa !2142
  %i.dw = ptrtoint ptr %i.dv to i64
  %i.dx = ptrtoint ptr %i.du to i64
  %i.dy = sub i64 %i.dw, %i.dx
  tail call void @_ZdlPvm(ptr noundef nonnull %i.du, i64 noundef %i.dy) #46
  br label %_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit

_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit:        ; preds = %bb.p, %bb.o, %bb.n
  %.pn = phi { ptr, i32 } [ %i.ds, %bb.n ], [ %i.dt, %bb.o ], [ %i.dt, %bb.p ]
  tail call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.v) #5
  br label %.body

.body:                                            ; preds = %bb.m, %bb.i, %bb.h, %_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit ], [ %i.dr, %bb.m ], [ %i.am, %bb.i ], [ %i.am, %bb.h ]
  %i.dz = load ptr, ptr %0, align 8, !tbaa !2149  ; 3 uses
  %.not.i.i.i29 = icmp eq ptr %i.dz, null
  br i1 %.not.i.i.i29, label %_ZNSt6vectorIcSaIcEED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %.body
  %i.ea = load ptr, ptr %i.l, align 8, !tbaa !2140
  %i.eb = ptrtoint ptr %i.ea to i64
  %i.ec = ptrtoint ptr %i.dz to i64
  %i.ed = sub i64 %i.eb, %i.ec
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dz, i64 noundef %i.ed) #46
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit

_ZNSt6vectorIcSaIcEED2Ev.exit:                    ; preds = %.body, %bb.q
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1EE22_M_add_character_classERKNS1_12basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i1 noundef zeroext %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2273, !nonnull !290, !align !1296
  %i.c = load ptr, ptr %1, align 8, !tbaa !36     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !169
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.e
  %i.g = tail call i32 @_ZNKSt7__cxx1112regex_traitsIcE16lookup_classnameIPKcEENS1_10_RegexMaskET_S6_b(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef %i.c, ptr noundef %i.f, i1 noundef zeroext false) ; 5 uses
  %i.h = and i32 %i.g, 131071
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeEPKc(i32 noundef 0, ptr noundef nonnull @.str.355) #48
  unreachable

bb.c:                                             ; preds = %bb.a
  br i1 %2, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %.sroa.04.0.insert.ext = lshr i32 %i.g, 16
  %i.k = load i16, ptr %i.j, align 8, !tbaa !2138
  %i.l = trunc i32 %i.g to i16
  %i.m = or i16 %i.k, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 98
  %i.o = load i8, ptr %i.n, align 2, !tbaa !2139
  %i.p = trunc i32 %.sroa.04.0.insert.ext to i8
  %i.q = or i8 %i.o, %i.p
  %.sroa.2.0.insert.ext.i.i = zext i8 %i.q to i32
  %.sroa.2.0.insert.shift.i.i = shl nuw nsw i32 %.sroa.2.0.insert.ext.i.i, 16
  %.sroa.0.0.insert.ext.i.i = zext i16 %i.m to i32
  %.sroa.0.0.insert.insert.i.i = or disjoint i32 %.sroa.2.0.insert.shift.i.i, %.sroa.0.0.insert.ext.i.i
  %i.r = trunc nuw i32 %.sroa.0.0.insert.insert.i.i to i24
  store i24 %i.r, ptr %i.j, align 8
  br label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE9push_backERKS3_.exit

bb.e:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !2228 ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !2144
  %.not.i = icmp eq ptr %i.u, %i.w
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.sroa.04.0.insert.ext6 = and i32 %i.g, 16777215
  store i32 %.sroa.04.0.insert.ext6, ptr %i.u, align 2
  %i.x = load ptr, ptr %i.t, align 8, !tbaa !2228
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  store ptr %i.y, ptr %i.t, align 8, !tbaa !2228
  br label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE9push_backERKS3_.exit

bb.g:                                             ; preds = %bb.e
  %i.z = load ptr, ptr %i.s, align 8, !tbaa !2147 ; 7 uses
  %i.aa = ptrtoint ptr %i.u to i64                ; 2 uses
  %i.ab = ptrtoint ptr %i.z to i64                ; 3 uses
  %i.ac = sub i64 %i.aa, %i.ab                    ; 4 uses
  %i.ad = icmp eq i64 %i.ac, 9223372036854775804
  br i1 %i.ad, label %bb.h, label %_ZNKSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.330) #48
  unreachable

_ZNKSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.g
  %i.ae = ashr exact i64 %i.ac, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ae, i64 1)
  %i.af = add nsw i64 %.sroa.speculated.i.i.i, %i.ae ; 2 uses
  %i.ag = icmp ult i64 %i.af, %i.ae
  %i.ah = tail call i64 @llvm.umin.i64(i64 %i.af, i64 2305843009213693951)
  %i.ai = select i1 %i.ag, i64 2305843009213693951, i64 %i.ah ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ai, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.aj = shl nuw nsw i64 %i.ai, 2
  %i.ak = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aj) #47 ; 8 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ac
  %.sroa.04.0.insert.ext10 = and i32 %i.g, 16777215
  store i32 %.sroa.04.0.insert.ext10, ptr %i.al, align 2
  %.not10.i.i.i.i.i = icmp eq ptr %i.z, %i.u
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.am = ptrtoaddr ptr %i.ak to i64
  %3 = sub i64 %i.aa, %i.ab
  %4 = add i64 %3, -4                             ; 2 uses
  %i.an = lshr i64 %4, 2
  %i.ao = add nuw nsw i64 %i.an, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %4, 28
  %i.ap = sub i64 %i.am, %i.ab
  %diff.check = icmp ult i64 %i.ap, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader31, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ao, 9223372036854775800     ; 3 uses
  %i.aq = shl i64 %n.vec, 2                       ; 2 uses
  %i.ar = getelementptr i8, ptr %i.ak, i64 %i.aq  ; 2 uses
  %i.as = getelementptr i8, ptr %i.z, i64 %i.aq
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.at = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ak, i64 %i.at ; 2 uses
  %next.gep28 = getelementptr i8, ptr %i.z, i64 %i.at ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2274)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2277)
  %i.au = getelementptr i8, ptr %next.gep28, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep28, align 2, !alias.scope !2277, !noalias !2274
  %wide.load29 = load <4 x i32>, ptr %i.au, align 2, !alias.scope !2277, !noalias !2274
  %i.av = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 2, !alias.scope !2274, !noalias !2277
  store <4 x i32> %wide.load29, ptr %i.av, align 2, !alias.scope !2274, !noalias !2277
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aw = icmp eq i64 %index.next, %n.vec
  br i1 %i.aw, label %middle.block, label %vector.body, !llvm.loop !2279

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ao, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader31

.lr.ph.i.i.i.i.i.preheader31:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ar, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.z, %.lr.ph.i.i.i.i.i.preheader ], [ %i.as, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader31, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader31 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader31 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2274)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2277)
  %i.ax = load i32, ptr %.0911.i.i.i.i.i, align 2, !alias.scope !2277, !noalias !2274
  store i32 %i.ax, ptr %.012.i.i.i.i.i, align 2, !alias.scope !2274, !noalias !2277
  %i.ay = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 4 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ay, %i.u
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !2280

_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ak, %_ZNKSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ar, %middle.block ], [ %i.az, %.lr.ph.i.i.i.i.i ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 4
  %.not.i23.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ac) #46
  br label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.i, %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  store ptr %i.ak, ptr %i.s, align 8, !tbaa !2147
  store ptr %i.ba, ptr %i.t, align 8, !tbaa !2228
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.ai
  store ptr %i.bb, ptr %i.v, align 8, !tbaa !2144
  br label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE9push_backERKS3_.exit

_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE9push_backERKS3_.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, %bb.f, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1EE8_M_readyEv(ptr noundef nonnull align 8 dereferenceable(160) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.anon.579, align 8            ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !114    ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !114  ; 4 uses
  %.not.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not.i.i, label %_ZNSt6vectorIcSaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS1_EES6_.exit, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit: ; preds = %bb.a
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.f, i1 true)
  %i.h = shl nuw nsw i64 %i.g, 1
  %i.i = xor i64 %i.h, 126
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %i.a, ptr %i.c, i64 noundef %i.i)
  tail call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %i.a, ptr %i.c)
  %.pre = load ptr, ptr %0, align 8, !tbaa !114   ; 4 uses
  %.pre36 = ptrtoint ptr %.pre to i64             ; 2 uses
  %.pre13 = load ptr, ptr %i.b, align 8, !tbaa !114 ; 7 uses
  %.pre1335 = ptrtoint ptr %.pre13 to i64         ; 2 uses
  %i.j = icmp eq ptr %.pre, %.pre13
  %i.k = getelementptr inbounds nuw i8, ptr %.pre, i64 1 ; 2 uses
  %.not.i.i.i31 = icmp eq ptr %i.k, %.pre13
  %or.cond = select i1 %i.j, i1 true, i1 %.not.i.i.i31
  br i1 %or.cond, label %_ZNSt6vectorIcSaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS1_EES6_.exit, label %.lr.ph

.preheader.i.i.i:                                 ; preds = %.lr.ph
  %i.l = getelementptr inbounds nuw i8, ptr %i.m, i64 1 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.l, %.pre13
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIcSaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS1_EES6_.exit, label %.lr.ph, !llvm.loop !2236

.lr.ph:                                           ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit, %.preheader.i.i.i
  %indvar = phi i64 [ %indvar.next, %.preheader.i.i.i ], [ 0, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit ] ; 3 uses
  %i.m = phi ptr [ %i.l, %.preheader.i.i.i ], [ %i.k, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit ] ; 3 uses
  %.sroa.09.0.i.i.i32 = phi ptr [ %i.m, %.preheader.i.i.i ], [ %.pre, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit ] ; 5 uses
  %i.n = load i8, ptr %.sroa.09.0.i.i.i32, align 1, !tbaa !39 ; 3 uses
  %i.o = load i8, ptr %i.m, align 1, !tbaa !39
  %i.p = icmp eq i8 %i.n, %i.o
  br i1 %i.p, label %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i, label %.preheader.i.i.i, !llvm.loop !2236

_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i: ; preds = %.lr.ph
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i.i32, i64 2 ; 3 uses
  %.not18.i.i = icmp eq ptr %i.q, %.pre13
  br i1 %.not18.i.i, label %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET_S7_S7_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i
  %i.r = xor i64 %.pre1335, 2
  %i.s = add i64 %indvar, %.pre36
  %i.t = sub i64 %i.r, %i.s
  %i.u = add i64 %.pre1335, -3
  %i.v = add i64 %indvar, %.pre36
  %i.w = sub i64 %i.u, %i.v
  %xtraiter = and i64 %i.t, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %bb.c
  %i.x = phi i8 [ %i.z, %bb.c ], [ %i.n, %.lr.ph.i.i.preheader ]
  %i.y = phi ptr [ %i.ac, %bb.c ], [ %i.q, %.lr.ph.i.i.preheader ] ; 2 uses
  %.sroa.0.019.i.i.prol = phi ptr [ %.sroa.0.1.i.i.prol, %bb.c ], [ %.sroa.09.0.i.i.i32, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %bb.c ], [ 0, %.lr.ph.i.i.preheader ]
  %i.z = load i8, ptr %i.y, align 1, !tbaa !39    ; 4 uses
  %i.aa = icmp eq i8 %i.x, %i.z
  br i1 %i.aa, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.prol
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i.i.prol, i64 1 ; 2 uses
  store i8 %i.z, ptr %i.ab, align 1, !tbaa !39
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i.i.prol
  %.sroa.0.1.i.i.prol = phi ptr [ %.sroa.0.019.i.i.prol, %.lr.ph.i.i.prol ], [ %i.ab, %bb.b ] ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !2281

.lr.ph.i.i.prol.loopexit:                         ; preds = %bb.c, %.lr.ph.i.i.preheader
  %.sroa.0.1.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.preheader ], [ %.sroa.0.1.i.i.prol, %bb.c ]
  %.unr = phi i8 [ %i.n, %.lr.ph.i.i.preheader ], [ %i.z, %bb.c ]
  %.unr38 = phi ptr [ %i.q, %.lr.ph.i.i.preheader ], [ %i.ac, %bb.c ]
  %.sroa.0.019.i.i.unr = phi ptr [ %.sroa.09.0.i.i.i32, %.lr.ph.i.i.preheader ], [ %.sroa.0.1.i.i.prol, %bb.c ]
  %i.ad = icmp ult i64 %i.w, 3
  br i1 %i.ad, label %._crit_edge.i.i.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %bb.h
  %i.ae = phi i8 [ %i.as, %bb.h ], [ %.unr, %.lr.ph.i.i.prol.loopexit ]
  %i.af = phi ptr [ %i.av, %bb.h ], [ %.unr38, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  %.sroa.0.019.i.i = phi ptr [ %.sroa.0.1.i.i.3, %bb.h ], [ %.sroa.0.019.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 2 uses
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !39  ; 3 uses
  %i.ah = icmp eq i8 %i.ae, %i.ag
  br i1 %i.ah, label %.lr.ph.i.i.1, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i.i, i64 1 ; 2 uses
  store i8 %i.ag, ptr %i.ai, align 1, !tbaa !39
  br label %.lr.ph.i.i.1

.lr.ph.i.i.1:                                     ; preds = %bb.d, %.lr.ph.i.i
  %.sroa.0.1.i.i = phi ptr [ %.sroa.0.019.i.i, %.lr.ph.i.i ], [ %i.ai, %bb.d ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 1
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !39  ; 3 uses
  %i.al = icmp eq i8 %i.ag, %i.ak
  br i1 %i.al, label %.lr.ph.i.i.2, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.1
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i, i64 1 ; 2 uses
  store i8 %i.ak, ptr %i.am, align 1, !tbaa !39
  br label %.lr.ph.i.i.2

.lr.ph.i.i.2:                                     ; preds = %bb.e, %.lr.ph.i.i.1
  %.sroa.0.1.i.i.1 = phi ptr [ %.sroa.0.1.i.i, %.lr.ph.i.i.1 ], [ %i.am, %bb.e ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.af, i64 2
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !39  ; 3 uses
  %i.ap = icmp eq i8 %i.ak, %i.ao
  br i1 %i.ap, label %.lr.ph.i.i.3, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.2
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.1, i64 1 ; 2 uses
  store i8 %i.ao, ptr %i.aq, align 1, !tbaa !39
  br label %.lr.ph.i.i.3

end_hunk_7
begin_hunk_8_@_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EEC2ERKS9_:bb.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2ERKS6_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !168
  %i.d = load ptr, ptr %1, align 8, !tbaa !36     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !169  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store i64 %i.f, ptr %i.b, align 8, !tbaa !201
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.h = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !36
  %i.i = load i64, ptr %i.b, align 8, !tbaa !201
  store i64 %i.i, ptr %i.c, align 8, !tbaa !39
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.j = phi ptr [ %i.h, %.noexc.i ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.f, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %i.d, align 1, !tbaa !39
  store i8 %i.k, ptr %i.j, align 1, !tbaa !39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %i.d, i64 %i.f, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.l = load i64, ptr %i.b, align 8, !tbaa !201  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !169
  %i.n = load ptr, ptr %0, align 8, !tbaa !36
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store ptr %i.r, ptr %i.p, align 8, !tbaa !168
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !36   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.u = load i64, ptr %i.t, align 8, !tbaa !169  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i64 %i.u, ptr %i.a, align 8, !tbaa !201
  %i.v = icmp ugt i64 %i.u, 15
  br i1 %i.v, label %.noexc.i5, label %._crit_edge.i.i4

.noexc.i5:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.w = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.g     ; 2 uses

.noexc:                                           ; preds = %.noexc.i5
  store ptr %i.w, ptr %i.p, align 8, !tbaa !36
  %i.x = load i64, ptr %i.a, align 8, !tbaa !201
  store i64 %i.x, ptr %i.r, align 8, !tbaa !39
  br label %._crit_edge.i.i4

._crit_edge.i.i4:                                 ; preds = %.noexc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.y = phi ptr [ %i.w, %.noexc ], [ %i.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ] ; 2 uses
  switch i64 %i.u, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i4
  %i.z = load i8, ptr %i.s, align 1, !tbaa !39
  store i8 %i.z, ptr %i.y, align 1, !tbaa !39
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.y, ptr align 1 %i.s, i64 %i.u, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i4
  %i.aa = load i64, ptr %i.a, align 8, !tbaa !201 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !169
  %i.ac = load ptr, ptr %i.p, align 8, !tbaa !36
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.aa
  store i8 0, ptr %i.ad, align 1, !tbaa !39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret void

bb.g:                                             ; preds = %.noexc.i5
  %i.ae = landingpad { ptr, i32 }
          cleanup
  %i.af = load ptr, ptr %0, align 8, !tbaa !36    ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.c
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.ah = load i64, ptr %i.c, align 8, !tbaa !39
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.ai) #46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.ae
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb0EE22_M_add_character_classERKNS1_12basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i1 noundef zeroext %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2300, !nonnull !290, !align !1296
  %i.c = load ptr, ptr %1, align 8, !tbaa !36     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !169
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.e
  %i.g = tail call i32 @_ZNKSt7__cxx1112regex_traitsIcE16lookup_classnameIPKcEENS1_10_RegexMaskET_S6_b(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef %i.c, ptr noundef %i.f, i1 noundef zeroext true) ; 5 uses
  %i.h = and i32 %i.g, 131071
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeEPKc(i32 noundef 0, ptr noundef nonnull @.str.355) #48
  unreachable

bb.c:                                             ; preds = %bb.a
  br i1 %2, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %.sroa.04.0.insert.ext = lshr i32 %i.g, 16
  %i.k = load i16, ptr %i.j, align 8, !tbaa !2138
  %i.l = trunc i32 %i.g to i16
  %i.m = or i16 %i.k, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 98
  %i.o = load i8, ptr %i.n, align 2, !tbaa !2139
  %i.p = trunc i32 %.sroa.04.0.insert.ext to i8
  %i.q = or i8 %i.o, %i.p
  %.sroa.2.0.insert.ext.i.i = zext i8 %i.q to i32
  %.sroa.2.0.insert.shift.i.i = shl nuw nsw i32 %.sroa.2.0.insert.ext.i.i, 16
  %.sroa.0.0.insert.ext.i.i = zext i16 %i.m to i32
  %.sroa.0.0.insert.insert.i.i = or disjoint i32 %.sroa.2.0.insert.shift.i.i, %.sroa.0.0.insert.ext.i.i
  %i.r = trunc nuw i32 %.sroa.0.0.insert.insert.i.i to i24
  store i24 %i.r, ptr %i.j, align 8
  br label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE9push_backERKS3_.exit

bb.e:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !2228 ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !2144
  %.not.i = icmp eq ptr %i.u, %i.w
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.sroa.04.0.insert.ext6 = and i32 %i.g, 16777215
  store i32 %.sroa.04.0.insert.ext6, ptr %i.u, align 2
  %i.x = load ptr, ptr %i.t, align 8, !tbaa !2228
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  store ptr %i.y, ptr %i.t, align 8, !tbaa !2228
  br label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE9push_backERKS3_.exit

bb.g:                                             ; preds = %bb.e
  %i.z = load ptr, ptr %i.s, align 8, !tbaa !2147 ; 7 uses
  %i.aa = ptrtoint ptr %i.u to i64                ; 2 uses
  %i.ab = ptrtoint ptr %i.z to i64                ; 3 uses
  %i.ac = sub i64 %i.aa, %i.ab                    ; 4 uses
  %i.ad = icmp eq i64 %i.ac, 9223372036854775804
  br i1 %i.ad, label %bb.h, label %_ZNKSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.330) #48
  unreachable

_ZNKSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.g
  %i.ae = ashr exact i64 %i.ac, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ae, i64 1)
  %i.af = add nsw i64 %.sroa.speculated.i.i.i, %i.ae ; 2 uses
  %i.ag = icmp ult i64 %i.af, %i.ae
  %i.ah = tail call i64 @llvm.umin.i64(i64 %i.af, i64 2305843009213693951)
  %i.ai = select i1 %i.ag, i64 2305843009213693951, i64 %i.ah ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ai, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.aj = shl nuw nsw i64 %i.ai, 2
  %i.ak = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aj) #47 ; 8 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ac
  %.sroa.04.0.insert.ext10 = and i32 %i.g, 16777215
  store i32 %.sroa.04.0.insert.ext10, ptr %i.al, align 2
  %.not10.i.i.i.i.i = icmp eq ptr %i.z, %i.u
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.am = ptrtoaddr ptr %i.ak to i64
  %3 = sub i64 %i.aa, %i.ab
  %4 = add i64 %3, -4                             ; 2 uses
  %i.an = lshr i64 %4, 2
  %i.ao = add nuw nsw i64 %i.an, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %4, 28
  %i.ap = sub i64 %i.am, %i.ab
  %diff.check = icmp ult i64 %i.ap, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader31, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ao, 9223372036854775800     ; 3 uses
  %i.aq = shl i64 %n.vec, 2                       ; 2 uses
  %i.ar = getelementptr i8, ptr %i.ak, i64 %i.aq  ; 2 uses
  %i.as = getelementptr i8, ptr %i.z, i64 %i.aq
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.at = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ak, i64 %i.at ; 2 uses
  %next.gep28 = getelementptr i8, ptr %i.z, i64 %i.at ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2301)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2304)
  %i.au = getelementptr i8, ptr %next.gep28, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep28, align 2, !alias.scope !2304, !noalias !2301
  %wide.load29 = load <4 x i32>, ptr %i.au, align 2, !alias.scope !2304, !noalias !2301
  %i.av = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 2, !alias.scope !2301, !noalias !2304
  store <4 x i32> %wide.load29, ptr %i.av, align 2, !alias.scope !2301, !noalias !2304
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aw = icmp eq i64 %index.next, %n.vec
  br i1 %i.aw, label %middle.block, label %vector.body, !llvm.loop !2306

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ao, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader31

.lr.ph.i.i.i.i.i.preheader31:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ar, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.z, %.lr.ph.i.i.i.i.i.preheader ], [ %i.as, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader31, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader31 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader31 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2301)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2304)
  %i.ax = load i32, ptr %.0911.i.i.i.i.i, align 2, !alias.scope !2304, !noalias !2301
  store i32 %i.ax, ptr %.012.i.i.i.i.i, align 2, !alias.scope !2301, !noalias !2304
  %i.ay = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 4 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ay, %i.u
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !2307

_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ak, %_ZNKSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ar, %middle.block ], [ %i.az, %.lr.ph.i.i.i.i.i ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 4
  %.not.i23.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ac) #46
  br label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.i, %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  store ptr %i.ak, ptr %i.s, align 8, !tbaa !2147
  store ptr %i.ba, ptr %i.t, align 8, !tbaa !2228
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.ai
  store ptr %i.bb, ptr %i.v, align 8, !tbaa !2144
  br label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE9push_backERKS3_.exit

_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE9push_backERKS3_.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, %bb.f, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb0EE8_M_readyEv(ptr noundef nonnull align 8 dereferenceable(160) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.anon.584, align 8            ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !114    ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !114  ; 4 uses
  %.not.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not.i.i, label %_ZNSt6vectorIcSaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS1_EES6_.exit, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit: ; preds = %bb.a
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.f, i1 true)
  %i.h = shl nuw nsw i64 %i.g, 1
  %i.i = xor i64 %i.h, 126
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %i.a, ptr %i.c, i64 noundef %i.i)
  tail call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %i.a, ptr %i.c)
  %.pre = load ptr, ptr %0, align 8, !tbaa !114   ; 4 uses
  %.pre36 = ptrtoint ptr %.pre to i64             ; 2 uses
  %.pre13 = load ptr, ptr %i.b, align 8, !tbaa !114 ; 7 uses
  %.pre1335 = ptrtoint ptr %.pre13 to i64         ; 2 uses
  %i.j = icmp eq ptr %.pre, %.pre13
  %i.k = getelementptr inbounds nuw i8, ptr %.pre, i64 1 ; 2 uses
  %.not.i.i.i31 = icmp eq ptr %i.k, %.pre13
  %or.cond = select i1 %i.j, i1 true, i1 %.not.i.i.i31
  br i1 %or.cond, label %_ZNSt6vectorIcSaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS1_EES6_.exit, label %.lr.ph

.preheader.i.i.i:                                 ; preds = %.lr.ph
  %i.l = getelementptr inbounds nuw i8, ptr %i.m, i64 1 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.l, %.pre13
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIcSaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS1_EES6_.exit, label %.lr.ph, !llvm.loop !2236

.lr.ph:                                           ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit, %.preheader.i.i.i
  %indvar = phi i64 [ %indvar.next, %.preheader.i.i.i ], [ 0, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit ] ; 3 uses
  %i.m = phi ptr [ %i.l, %.preheader.i.i.i ], [ %i.k, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit ] ; 3 uses
  %.sroa.09.0.i.i.i32 = phi ptr [ %i.m, %.preheader.i.i.i ], [ %.pre, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit ] ; 5 uses
  %i.n = load i8, ptr %.sroa.09.0.i.i.i32, align 1, !tbaa !39 ; 3 uses
  %i.o = load i8, ptr %i.m, align 1, !tbaa !39
  %i.p = icmp eq i8 %i.n, %i.o
  br i1 %i.p, label %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i, label %.preheader.i.i.i, !llvm.loop !2236

_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i: ; preds = %.lr.ph
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i.i32, i64 2 ; 3 uses
  %.not18.i.i = icmp eq ptr %i.q, %.pre13
  br i1 %.not18.i.i, label %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET_S7_S7_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i
  %i.r = xor i64 %.pre1335, 2
  %i.s = add i64 %indvar, %.pre36
  %i.t = sub i64 %i.r, %i.s
  %i.u = add i64 %.pre1335, -3
  %i.v = add i64 %indvar, %.pre36
  %i.w = sub i64 %i.u, %i.v
  %xtraiter = and i64 %i.t, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %bb.c
  %i.x = phi i8 [ %i.z, %bb.c ], [ %i.n, %.lr.ph.i.i.preheader ]
  %i.y = phi ptr [ %i.ac, %bb.c ], [ %i.q, %.lr.ph.i.i.preheader ] ; 2 uses
  %.sroa.0.019.i.i.prol = phi ptr [ %.sroa.0.1.i.i.prol, %bb.c ], [ %.sroa.09.0.i.i.i32, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %bb.c ], [ 0, %.lr.ph.i.i.preheader ]
  %i.z = load i8, ptr %i.y, align 1, !tbaa !39    ; 4 uses
  %i.aa = icmp eq i8 %i.x, %i.z
  br i1 %i.aa, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.prol
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i.i.prol, i64 1 ; 2 uses
  store i8 %i.z, ptr %i.ab, align 1, !tbaa !39
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i.i.prol
  %.sroa.0.1.i.i.prol = phi ptr [ %.sroa.0.019.i.i.prol, %.lr.ph.i.i.prol ], [ %i.ab, %bb.b ] ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !2308

.lr.ph.i.i.prol.loopexit:                         ; preds = %bb.c, %.lr.ph.i.i.preheader
  %.sroa.0.1.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.preheader ], [ %.sroa.0.1.i.i.prol, %bb.c ]
  %.unr = phi i8 [ %i.n, %.lr.ph.i.i.preheader ], [ %i.z, %bb.c ]
  %.unr38 = phi ptr [ %i.q, %.lr.ph.i.i.preheader ], [ %i.ac, %bb.c ]
  %.sroa.0.019.i.i.unr = phi ptr [ %.sroa.09.0.i.i.i32, %.lr.ph.i.i.preheader ], [ %.sroa.0.1.i.i.prol, %bb.c ]
  %i.ad = icmp ult i64 %i.w, 3
  br i1 %i.ad, label %._crit_edge.i.i.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %bb.h
  %i.ae = phi i8 [ %i.as, %bb.h ], [ %.unr, %.lr.ph.i.i.prol.loopexit ]
  %i.af = phi ptr [ %i.av, %bb.h ], [ %.unr38, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  %.sroa.0.019.i.i = phi ptr [ %.sroa.0.1.i.i.3, %bb.h ], [ %.sroa.0.019.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 2 uses
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !39  ; 3 uses
  %i.ah = icmp eq i8 %i.ae, %i.ag
  br i1 %i.ah, label %.lr.ph.i.i.1, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i.i, i64 1 ; 2 uses
  store i8 %i.ag, ptr %i.ai, align 1, !tbaa !39
  br label %.lr.ph.i.i.1

.lr.ph.i.i.1:                                     ; preds = %bb.d, %.lr.ph.i.i
  %.sroa.0.1.i.i = phi ptr [ %.sroa.0.019.i.i, %.lr.ph.i.i ], [ %i.ai, %bb.d ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 1
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !39  ; 3 uses
  %i.al = icmp eq i8 %i.ag, %i.ak
  br i1 %i.al, label %.lr.ph.i.i.2, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.1
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i, i64 1 ; 2 uses
  store i8 %i.ak, ptr %i.am, align 1, !tbaa !39
  br label %.lr.ph.i.i.2

.lr.ph.i.i.2:                                     ; preds = %bb.e, %.lr.ph.i.i.1
  %.sroa.0.1.i.i.1 = phi ptr [ %.sroa.0.1.i.i, %.lr.ph.i.i.1 ], [ %i.am, %bb.e ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.af, i64 2
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !39  ; 3 uses
  %i.ap = icmp eq i8 %i.ak, %i.ao
  br i1 %i.ap, label %.lr.ph.i.i.3, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.2
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.1, i64 1 ; 2 uses
  store i8 %i.ao, ptr %i.aq, align 1, !tbaa !39
  br label %.lr.ph.i.i.3

end_hunk_8
begin_hunk_9_@_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb0EEC2ERKS4_:bb.a

.lr.ph.i.i.i.i.i20.preheader:                     ; preds = %.noexc27
  %i.cw = ptrtoaddr ptr %i.cu to i64
  %i.cx = ptrtoaddr ptr %i.cq to i64
  %i.cy = ptrtoint ptr %i.cv to i64
  %i.cz = ptrtoint ptr %i.cu to i64
  %i.da = add i64 %i.cy, -4
  %i.db = sub i64 %i.da, %i.cz                    ; 2 uses
  %i.dc = lshr i64 %i.db, 2
  %i.dd = add nuw nsw i64 %i.dc, 1                ; 2 uses
  %min.iters.check62 = icmp ult i64 %i.db, 28
  %i.de = sub i64 %i.cx, %i.cw
  %diff.check61 = icmp ult i64 %i.de, 32
  %or.cond76 = or i1 %min.iters.check62, %diff.check61
  br i1 %or.cond76, label %.lr.ph.i.i.i.i.i20.preheader77, label %vector.ph63

vector.ph63:                                      ; preds = %.lr.ph.i.i.i.i.i20.preheader
  %n.vec65 = and i64 %i.dd, 9223372036854775800   ; 3 uses
  %i.df = shl i64 %n.vec65, 2                     ; 2 uses
  %i.dg = getelementptr i8, ptr %i.cq, i64 %i.df  ; 2 uses
  %i.dh = getelementptr i8, ptr %i.cu, i64 %i.df
  br label %vector.body66

vector.body66:                                    ; preds = %vector.body66, %vector.ph63
  %index67 = phi i64 [ 0, %vector.ph63 ], [ %index.next72, %vector.body66 ] ; 2 uses
  %i.di = shl i64 %index67, 2                     ; 2 uses
  %next.gep68 = getelementptr i8, ptr %i.cq, i64 %i.di ; 2 uses
  %next.gep69 = getelementptr i8, ptr %i.cu, i64 %i.di ; 2 uses
  %i.dj = getelementptr i8, ptr %next.gep69, i64 16
  %wide.load70 = load <4 x i32>, ptr %next.gep69, align 2
  %wide.load71 = load <4 x i32>, ptr %i.dj, align 2
  %i.dk = getelementptr i8, ptr %next.gep68, i64 16
  store <4 x i32> %wide.load70, ptr %next.gep68, align 2
  store <4 x i32> %wide.load71, ptr %i.dk, align 2
  %index.next72 = add nuw i64 %index67, 8         ; 2 uses
  %i.dl = icmp eq i64 %index.next72, %n.vec65
  br i1 %i.dl, label %middle.block73, label %vector.body66, !llvm.loop !2317

middle.block73:                                   ; preds = %vector.body66
  %cmp.n74 = icmp eq i64 %i.dd, %n.vec65
  br i1 %cmp.n74, label %.loopexit, label %.lr.ph.i.i.i.i.i20.preheader77

.lr.ph.i.i.i.i.i20.preheader77:                   ; preds = %.lr.ph.i.i.i.i.i20.preheader, %middle.block73
  %.09.i.i.i.i.i21.ph = phi ptr [ %i.cq, %.lr.ph.i.i.i.i.i20.preheader ], [ %i.dg, %middle.block73 ]
  %.sroa.04.08.i.i.i.i.i22.ph = phi ptr [ %i.cu, %.lr.ph.i.i.i.i.i20.preheader ], [ %i.dh, %middle.block73 ]
  br label %.lr.ph.i.i.i.i.i20

.lr.ph.i.i.i.i.i20:                               ; preds = %.lr.ph.i.i.i.i.i20.preheader77, %.lr.ph.i.i.i.i.i20
  %.09.i.i.i.i.i21 = phi ptr [ %i.do, %.lr.ph.i.i.i.i.i20 ], [ %.09.i.i.i.i.i21.ph, %.lr.ph.i.i.i.i.i20.preheader77 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i22 = phi ptr [ %i.dn, %.lr.ph.i.i.i.i.i20 ], [ %.sroa.04.08.i.i.i.i.i22.ph, %.lr.ph.i.i.i.i.i20.preheader77 ] ; 2 uses
  %i.dm = load i32, ptr %.sroa.04.08.i.i.i.i.i22, align 2
  store i32 %i.dm, ptr %.09.i.i.i.i.i21, align 2
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i22, i64 4 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i21, i64 4 ; 2 uses
  %.not.i.i.i.i.i23 = icmp eq ptr %i.dn, %i.cv
  br i1 %.not.i.i.i.i.i23, label %.loopexit, label %.lr.ph.i.i.i.i.i20, !llvm.loop !2318

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i20, %middle.block73, %.noexc27
  %.0.lcssa.i.i.i.i.i24 = phi ptr [ %i.cq, %.noexc27 ], [ %i.dg, %middle.block73 ], [ %i.do, %.lr.ph.i.i.i.i.i20 ]
  store ptr %.0.lcssa.i.i.i.i.i24, ptr %i.cr, align 8, !tbaa !2228
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.dp, ptr noundef nonnull align 8 dereferenceable(64) %i.dq, i64 64, i1 false)
  ret void

bb.m:                                             ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i12
  %i.dr = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.n:                                             ; preds = %_ZNSt15__new_allocatorISt4pairIccEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i15
  %i.ds = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit

bb.o:                                             ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112regex_traitsIcE10_RegexMaskEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i25
  %i.dt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.du = load ptr, ptr %i.as, align 8, !tbaa !2148 ; 3 uses
  %.not.i.i.i28 = icmp eq ptr %i.du, null
  br i1 %.not.i.i.i28, label %_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dv = load ptr, ptr %i.bf, align 8, !tbaa !2142
  %i.dw = ptrtoint ptr %i.dv to i64
  %i.dx = ptrtoint ptr %i.du to i64
  %i.dy = sub i64 %i.dw, %i.dx
  tail call void @_ZdlPvm(ptr noundef nonnull %i.du, i64 noundef %i.dy) #46
  br label %_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit

_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit:        ; preds = %bb.p, %bb.o, %bb.n
  %.pn = phi { ptr, i32 } [ %i.ds, %bb.n ], [ %i.dt, %bb.o ], [ %i.dt, %bb.p ]
  tail call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.v) #5
  br label %.body

.body:                                            ; preds = %bb.m, %bb.i, %bb.h, %_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit ], [ %i.dr, %bb.m ], [ %i.am, %bb.i ], [ %i.am, %bb.h ]
  %i.dz = load ptr, ptr %0, align 8, !tbaa !2149  ; 3 uses
  %.not.i.i.i29 = icmp eq ptr %i.dz, null
  br i1 %.not.i.i.i29, label %_ZNSt6vectorIcSaIcEED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %.body
  %i.ea = load ptr, ptr %i.l, align 8, !tbaa !2140
  %i.eb = ptrtoint ptr %i.ea to i64
  %i.ec = ptrtoint ptr %i.dz to i64
  %i.ed = sub i64 %i.eb, %i.ec
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dz, i64 noundef %i.ed) #46
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit

_ZNSt6vectorIcSaIcEED2Ev.exit:                    ; preds = %.body, %bb.q
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1EE22_M_add_character_classERKNS1_12basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i1 noundef zeroext %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2319, !nonnull !290, !align !1296
  %i.c = load ptr, ptr %1, align 8, !tbaa !36     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !169
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.e
  %i.g = tail call i32 @_ZNKSt7__cxx1112regex_traitsIcE16lookup_classnameIPKcEENS1_10_RegexMaskET_S6_b(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef %i.c, ptr noundef %i.f, i1 noundef zeroext true) ; 5 uses
  %i.h = and i32 %i.g, 131071
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeEPKc(i32 noundef 0, ptr noundef nonnull @.str.355) #48
  unreachable

bb.c:                                             ; preds = %bb.a
  br i1 %2, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %.sroa.04.0.insert.ext = lshr i32 %i.g, 16
  %i.k = load i16, ptr %i.j, align 8, !tbaa !2138
  %i.l = trunc i32 %i.g to i16
  %i.m = or i16 %i.k, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 98
  %i.o = load i8, ptr %i.n, align 2, !tbaa !2139
  %i.p = trunc i32 %.sroa.04.0.insert.ext to i8
  %i.q = or i8 %i.o, %i.p
  %.sroa.2.0.insert.ext.i.i = zext i8 %i.q to i32
  %.sroa.2.0.insert.shift.i.i = shl nuw nsw i32 %.sroa.2.0.insert.ext.i.i, 16
  %.sroa.0.0.insert.ext.i.i = zext i16 %i.m to i32
  %.sroa.0.0.insert.insert.i.i = or disjoint i32 %.sroa.2.0.insert.shift.i.i, %.sroa.0.0.insert.ext.i.i
  %i.r = trunc nuw i32 %.sroa.0.0.insert.insert.i.i to i24
  store i24 %i.r, ptr %i.j, align 8
  br label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE9push_backERKS3_.exit

bb.e:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !2228 ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !2144
  %.not.i = icmp eq ptr %i.u, %i.w
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.sroa.04.0.insert.ext6 = and i32 %i.g, 16777215
  store i32 %.sroa.04.0.insert.ext6, ptr %i.u, align 2
  %i.x = load ptr, ptr %i.t, align 8, !tbaa !2228
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  store ptr %i.y, ptr %i.t, align 8, !tbaa !2228
  br label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE9push_backERKS3_.exit

bb.g:                                             ; preds = %bb.e
  %i.z = load ptr, ptr %i.s, align 8, !tbaa !2147 ; 7 uses
  %i.aa = ptrtoint ptr %i.u to i64                ; 2 uses
  %i.ab = ptrtoint ptr %i.z to i64                ; 3 uses
  %i.ac = sub i64 %i.aa, %i.ab                    ; 4 uses
  %i.ad = icmp eq i64 %i.ac, 9223372036854775804
  br i1 %i.ad, label %bb.h, label %_ZNKSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.330) #48
  unreachable

_ZNKSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.g
  %i.ae = ashr exact i64 %i.ac, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ae, i64 1)
  %i.af = add nsw i64 %.sroa.speculated.i.i.i, %i.ae ; 2 uses
  %i.ag = icmp ult i64 %i.af, %i.ae
  %i.ah = tail call i64 @llvm.umin.i64(i64 %i.af, i64 2305843009213693951)
  %i.ai = select i1 %i.ag, i64 2305843009213693951, i64 %i.ah ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ai, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.aj = shl nuw nsw i64 %i.ai, 2
  %i.ak = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aj) #47 ; 8 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ac
  %.sroa.04.0.insert.ext10 = and i32 %i.g, 16777215
  store i32 %.sroa.04.0.insert.ext10, ptr %i.al, align 2
  %.not10.i.i.i.i.i = icmp eq ptr %i.z, %i.u
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.am = ptrtoaddr ptr %i.ak to i64
  %3 = sub i64 %i.aa, %i.ab
  %4 = add i64 %3, -4                             ; 2 uses
  %i.an = lshr i64 %4, 2
  %i.ao = add nuw nsw i64 %i.an, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %4, 28
  %i.ap = sub i64 %i.am, %i.ab
  %diff.check = icmp ult i64 %i.ap, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader31, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ao, 9223372036854775800     ; 3 uses
  %i.aq = shl i64 %n.vec, 2                       ; 2 uses
  %i.ar = getelementptr i8, ptr %i.ak, i64 %i.aq  ; 2 uses
  %i.as = getelementptr i8, ptr %i.z, i64 %i.aq
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.at = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ak, i64 %i.at ; 2 uses
  %next.gep28 = getelementptr i8, ptr %i.z, i64 %i.at ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2320)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2323)
  %i.au = getelementptr i8, ptr %next.gep28, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep28, align 2, !alias.scope !2323, !noalias !2320
  %wide.load29 = load <4 x i32>, ptr %i.au, align 2, !alias.scope !2323, !noalias !2320
  %i.av = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 2, !alias.scope !2320, !noalias !2323
  store <4 x i32> %wide.load29, ptr %i.av, align 2, !alias.scope !2320, !noalias !2323
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aw = icmp eq i64 %index.next, %n.vec
  br i1 %i.aw, label %middle.block, label %vector.body, !llvm.loop !2325

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ao, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader31

.lr.ph.i.i.i.i.i.preheader31:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ar, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.z, %.lr.ph.i.i.i.i.i.preheader ], [ %i.as, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader31, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader31 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader31 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2320)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2323)
  %i.ax = load i32, ptr %.0911.i.i.i.i.i, align 2, !alias.scope !2323, !noalias !2320
  store i32 %i.ax, ptr %.012.i.i.i.i.i, align 2, !alias.scope !2320, !noalias !2323
  %i.ay = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 4 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ay, %i.u
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !2326

_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ak, %_ZNKSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ar, %middle.block ], [ %i.az, %.lr.ph.i.i.i.i.i ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 4
  %.not.i23.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ac) #46
  br label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.i, %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  store ptr %i.ak, ptr %i.s, align 8, !tbaa !2147
  store ptr %i.ba, ptr %i.t, align 8, !tbaa !2228
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.ai
  store ptr %i.bb, ptr %i.v, align 8, !tbaa !2144
  br label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE9push_backERKS3_.exit

_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE9push_backERKS3_.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, %bb.f, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1EE8_M_readyEv(ptr noundef nonnull align 8 dereferenceable(160) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.anon.587, align 8            ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !114    ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !114  ; 4 uses
  %.not.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not.i.i, label %_ZNSt6vectorIcSaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS1_EES6_.exit, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit: ; preds = %bb.a
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.f, i1 true)
  %i.h = shl nuw nsw i64 %i.g, 1
  %i.i = xor i64 %i.h, 126
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %i.a, ptr %i.c, i64 noundef %i.i)
  tail call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %i.a, ptr %i.c)
  %.pre = load ptr, ptr %0, align 8, !tbaa !114   ; 4 uses
  %.pre36 = ptrtoint ptr %.pre to i64             ; 2 uses
  %.pre13 = load ptr, ptr %i.b, align 8, !tbaa !114 ; 7 uses
  %.pre1335 = ptrtoint ptr %.pre13 to i64         ; 2 uses
  %i.j = icmp eq ptr %.pre, %.pre13
  %i.k = getelementptr inbounds nuw i8, ptr %.pre, i64 1 ; 2 uses
  %.not.i.i.i31 = icmp eq ptr %i.k, %.pre13
  %or.cond = select i1 %i.j, i1 true, i1 %.not.i.i.i31
  br i1 %or.cond, label %_ZNSt6vectorIcSaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS1_EES6_.exit, label %.lr.ph

.preheader.i.i.i:                                 ; preds = %.lr.ph
  %i.l = getelementptr inbounds nuw i8, ptr %i.m, i64 1 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.l, %.pre13
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIcSaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS1_EES6_.exit, label %.lr.ph, !llvm.loop !2236

.lr.ph:                                           ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit, %.preheader.i.i.i
  %indvar = phi i64 [ %indvar.next, %.preheader.i.i.i ], [ 0, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit ] ; 3 uses
  %i.m = phi ptr [ %i.l, %.preheader.i.i.i ], [ %i.k, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit ] ; 3 uses
  %.sroa.09.0.i.i.i32 = phi ptr [ %i.m, %.preheader.i.i.i ], [ %.pre, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit ] ; 5 uses
  %i.n = load i8, ptr %.sroa.09.0.i.i.i32, align 1, !tbaa !39 ; 3 uses
  %i.o = load i8, ptr %i.m, align 1, !tbaa !39
  %i.p = icmp eq i8 %i.n, %i.o
  br i1 %i.p, label %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i, label %.preheader.i.i.i, !llvm.loop !2236

_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i: ; preds = %.lr.ph
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i.i32, i64 2 ; 3 uses
  %.not18.i.i = icmp eq ptr %i.q, %.pre13
  br i1 %.not18.i.i, label %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET_S7_S7_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i
  %i.r = xor i64 %.pre1335, 2
  %i.s = add i64 %indvar, %.pre36
  %i.t = sub i64 %i.r, %i.s
  %i.u = add i64 %.pre1335, -3
  %i.v = add i64 %indvar, %.pre36
  %i.w = sub i64 %i.u, %i.v
  %xtraiter = and i64 %i.t, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %bb.c
  %i.x = phi i8 [ %i.z, %bb.c ], [ %i.n, %.lr.ph.i.i.preheader ]
  %i.y = phi ptr [ %i.ac, %bb.c ], [ %i.q, %.lr.ph.i.i.preheader ] ; 2 uses
  %.sroa.0.019.i.i.prol = phi ptr [ %.sroa.0.1.i.i.prol, %bb.c ], [ %.sroa.09.0.i.i.i32, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %bb.c ], [ 0, %.lr.ph.i.i.preheader ]
  %i.z = load i8, ptr %i.y, align 1, !tbaa !39    ; 4 uses
  %i.aa = icmp eq i8 %i.x, %i.z
  br i1 %i.aa, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.prol
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i.i.prol, i64 1 ; 2 uses
  store i8 %i.z, ptr %i.ab, align 1, !tbaa !39
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i.i.prol
  %.sroa.0.1.i.i.prol = phi ptr [ %.sroa.0.019.i.i.prol, %.lr.ph.i.i.prol ], [ %i.ab, %bb.b ] ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !2327

.lr.ph.i.i.prol.loopexit:                         ; preds = %bb.c, %.lr.ph.i.i.preheader
  %.sroa.0.1.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.preheader ], [ %.sroa.0.1.i.i.prol, %bb.c ]
  %.unr = phi i8 [ %i.n, %.lr.ph.i.i.preheader ], [ %i.z, %bb.c ]
  %.unr38 = phi ptr [ %i.q, %.lr.ph.i.i.preheader ], [ %i.ac, %bb.c ]
  %.sroa.0.019.i.i.unr = phi ptr [ %.sroa.09.0.i.i.i32, %.lr.ph.i.i.preheader ], [ %.sroa.0.1.i.i.prol, %bb.c ]
  %i.ad = icmp ult i64 %i.w, 3
  br i1 %i.ad, label %._crit_edge.i.i.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %bb.h
  %i.ae = phi i8 [ %i.as, %bb.h ], [ %.unr, %.lr.ph.i.i.prol.loopexit ]
  %i.af = phi ptr [ %i.av, %bb.h ], [ %.unr38, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  %.sroa.0.019.i.i = phi ptr [ %.sroa.0.1.i.i.3, %bb.h ], [ %.sroa.0.019.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 2 uses
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !39  ; 3 uses
  %i.ah = icmp eq i8 %i.ae, %i.ag
  br i1 %i.ah, label %.lr.ph.i.i.1, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i.i, i64 1 ; 2 uses
  store i8 %i.ag, ptr %i.ai, align 1, !tbaa !39
  br label %.lr.ph.i.i.1

.lr.ph.i.i.1:                                     ; preds = %bb.d, %.lr.ph.i.i
  %.sroa.0.1.i.i = phi ptr [ %.sroa.0.019.i.i, %.lr.ph.i.i ], [ %i.ai, %bb.d ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 1
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !39  ; 3 uses
  %i.al = icmp eq i8 %i.ag, %i.ak
  br i1 %i.al, label %.lr.ph.i.i.2, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.1
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i, i64 1 ; 2 uses
  store i8 %i.ak, ptr %i.am, align 1, !tbaa !39
  br label %.lr.ph.i.i.2

.lr.ph.i.i.2:                                     ; preds = %bb.e, %.lr.ph.i.i.1
  %.sroa.0.1.i.i.1 = phi ptr [ %.sroa.0.1.i.i, %.lr.ph.i.i.1 ], [ %i.am, %bb.e ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.af, i64 2
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !39  ; 3 uses
  %i.ap = icmp eq i8 %i.ak, %i.ao
  br i1 %i.ap, label %.lr.ph.i.i.3, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.2
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.1, i64 1 ; 2 uses
  store i8 %i.ao, ptr %i.aq, align 1, !tbaa !39
  br label %.lr.ph.i.i.3

end_hunk_9
