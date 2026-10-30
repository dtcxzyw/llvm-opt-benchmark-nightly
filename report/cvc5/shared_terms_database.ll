Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/shared_terms_database?download=true
inline.NumInlined: 1571
inline.NumDeleted: 689
begin_hunk_0_@_ZN4cvc58internal19SharedTermsDatabase16checkForConflictEv:bb.a
  %i.lh = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 2 uses
  %i.li = load ptr, ptr %i.lh, align 8, !tbaa !111 ; 4 uses
  %i.lj = load ptr, ptr %i.km, align 8, !tbaa !111
  %.not.i78 = icmp eq ptr %i.li, %i.lj
  br i1 %.not.i78, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit83, label %bb.de, !prof !115

bb.de:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit77
  %i.lk = load i64, ptr %i.li, align 8            ; 3 uses
  %i.ll = and i64 %i.lk, 1152920405095219200
  %.not.i.i79 = icmp eq i64 %i.ll, 1152920405095219200
  br i1 %.not.i.i79, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i80, label %bb.df, !prof !115

bb.df:                                            ; preds = %bb.de
  %i.lm = add i64 %i.lk, 1152920405095219200
  %i.ln = and i64 %i.lm, 1152920405095219200      ; 2 uses
  %i.lo = and i64 %i.lk, -1152920405095219201
  %i.lp = or disjoint i64 %i.ln, %i.lo
  store i64 %i.lp, ptr %i.li, align 8
  %i.lq = icmp eq i64 %i.ln, 0
  br i1 %i.lq, label %bb.dg, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i80, !prof !115

bb.dg:                                            ; preds = %bb.df
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.li)
          to label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i80 unwind label %bb.du

_ZN4cvc58internal4expr9NodeValue3decEv.exit.i80:  ; preds = %bb.dg, %bb.df, %bb.de
  %i.lr = load ptr, ptr %i.km, align 8, !tbaa !111 ; 5 uses
  store ptr %i.lr, ptr %i.lh, align 8, !tbaa !111
  %i.ls = load i64, ptr %i.lr, align 8            ; 3 uses
  %i.lt = lshr i64 %i.ls, 40
  %i.lu = trunc nuw nsw i64 %i.lt to i32
  %i.lv = and i32 %i.lu, 1048575                  ; 3 uses
  %i.lw = icmp samesign ult i32 %i.lv, 1048574
  br i1 %i.lw, label %bb.dh, label %bb.di, !prof !133

bb.dh:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i80
  %i.lx = add nuw nsw i32 %i.lv, 1
  %i.ly = zext nneg i32 %i.lx to i64
  %i.lz = shl nuw nsw i64 %i.ly, 40
  %i.ma = and i64 %i.ls, -1152920405095219201
  %i.mb = or i64 %i.lz, %i.ma
  store i64 %i.mb, ptr %i.lr, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit83

bb.di:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i80
  %i.mc = icmp eq i32 %i.lv, 1048574
  br i1 %i.mc, label %bb.dj, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit83, !prof !115

bb.dj:                                            ; preds = %bb.di
  %i.md = or i64 %i.ls, 1152920405095219200
  store i64 %i.md, ptr %i.lr, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.lr)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit83 unwind label %bb.du

_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit83: ; preds = %bb.di, %bb.dh, %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit77, %bb.dj
  %i.me = load i64, ptr %i.jz, align 8            ; 3 uses
  %i.mf = and i64 %i.me, 1152920405095219200
  %.not.i.i84 = icmp eq i64 %i.mf, 1152920405095219200
  br i1 %.not.i.i84, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit86, label %bb.dk, !prof !115

bb.dk:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit83
  %i.mg = add i64 %i.me, 1152920405095219200
  %i.mh = and i64 %i.mg, 1152920405095219200      ; 2 uses
  %i.mi = and i64 %i.me, -1152920405095219201
  %i.mj = or disjoint i64 %i.mh, %i.mi
  store i64 %i.mj, ptr %i.jz, align 8
  %i.mk = icmp eq i64 %i.mh, 0
  br i1 %i.mk, label %bb.dl, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit86, !prof !115

bb.dl:                                            ; preds = %bb.dk
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.jz)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit86 unwind label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.ml = landingpad { ptr, i32 }
          catch ptr null
  %i.mm = extractvalue { ptr, i32 } %i.ml, 0
  call void @__clang_call_terminate(ptr %i.mm) #25
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit86: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit83, %bb.dk, %bb.dl
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  %i.mn = load ptr, ptr %i.s, align 8, !tbaa !111 ; 3 uses
  %i.mo = load i64, ptr %i.mn, align 8            ; 3 uses
  %i.mp = and i64 %i.mo, 1152920405095219200
  %.not.i.i.i87 = icmp eq i64 %i.mp, 1152920405095219200
  br i1 %.not.i.i.i87, label %_ZN4cvc58internal9TrustNodeD2Ev.exit88, label %bb.dn, !prof !115

bb.dn:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit86
  %i.mq = add i64 %i.mo, 1152920405095219200
  %i.mr = and i64 %i.mq, 1152920405095219200      ; 2 uses
  %i.ms = and i64 %i.mo, -1152920405095219201
  %i.mt = or disjoint i64 %i.mr, %i.ms
  store i64 %i.mt, ptr %i.mn, align 8
  %i.mu = icmp eq i64 %i.mr, 0
  br i1 %i.mu, label %bb.do, label %_ZN4cvc58internal9TrustNodeD2Ev.exit88, !prof !115

bb.do:                                            ; preds = %bb.dn
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.mn)
          to label %_ZN4cvc58internal9TrustNodeD2Ev.exit88 unwind label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.mv = landingpad { ptr, i32 }
          catch ptr null
  %i.mw = extractvalue { ptr, i32 } %i.mv, 0
  call void @__clang_call_terminate(ptr %i.mw) #25
  unreachable

_ZN4cvc58internal9TrustNodeD2Ev.exit88:           ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit86, %bb.dn, %bb.do
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %bb.dq

bb.dq:                                            ; preds = %bb.a, %_ZN4cvc58internal9TrustNodeD2Ev.exit88
  ret void

bb.dr:                                            ; preds = %bb.cp
  %i.mx = landingpad { ptr, i32 }
          cleanup
  br label %bb.dw

bb.ds:                                            ; preds = %bb.cq
  %i.my = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal9TrustNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %17) #22
  br label %bb.dw

bb.dt:                                            ; preds = %bb.cx
  %i.mz = landingpad { ptr, i32 }
          cleanup
  br label %bb.dv

bb.du:                                            ; preds = %bb.dj, %bb.dg, %bb.dd, %bb.da
  %i.na = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %18) #22
  br label %bb.dv

bb.dv:                                            ; preds = %bb.du, %bb.dt
  %.pn24 = phi { ptr, i32 } [ %i.na, %bb.du ], [ %i.mz, %bb.dt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %bb.ds, %bb.dr, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EED2Ev.exit67, %.body
  %.pn24.pn = phi { ptr, i32 } [ %.pn24, %bb.dv ], [ %i.my, %bb.ds ], [ %i.mx, %bb.dr ], [ %.pn19.pn.pn.pn, %.body ], [ %.pn.pn.pn.pn, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EED2Ev.exit67 ]
  call void @_ZN4cvc58internal9TrustNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4cvc58internal19SharedTermsDatabase13addSharedTermENS0_12NodeTemplateILb0EEES3_j(ptr noundef nonnull align 8 dereferenceable(592) %0, ptr nofree noundef readonly align 8 captures(none) %1, ptr nofree noundef readonly align 8 captures(none) %2, i32 noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
.critedge:
  %4 = alloca %"struct.std::pair.608", align 8    ; 8 uses
  %5 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %6 = alloca %"struct.std::pair.608", align 8    ; 8 uses
  %7 = alloca %"struct.std::pair.608", align 8    ; 8 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !132    ; 15 uses
  %i.b = load ptr, ptr %2, align 8, !tbaa !132    ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  store ptr %i.a, ptr %4, align 8, !tbaa !111
  %i.d = load i64, ptr %i.a, align 8              ; 3 uses
  %i.e = lshr i64 %i.d, 40
  %i.f = trunc nuw nsw i64 %i.e to i32
  %i.g = and i32 %i.f, 1048575                    ; 3 uses
  %i.h = icmp samesign ult i32 %i.g, 1048574
  br i1 %i.h, label %bb.a, label %bb.b, !prof !133

bb.a:                                             ; preds = %.critedge
  %i.i = add nuw nsw i32 %i.g, 1
  %i.j = zext nneg i32 %i.i to i64
  %i.k = shl nuw nsw i64 %i.j, 40
  %i.l = and i64 %i.d, -1152920405095219201
  %i.m = or i64 %i.k, %i.l
  store i64 %i.m, ptr %i.a, align 8
  br label %bb.d

bb.b:                                             ; preds = %.critedge
  %i.n = icmp eq i32 %i.g, 1048574
  br i1 %i.n, label %bb.c, label %bb.d, !prof !115

bb.c:                                             ; preds = %bb.b
  %i.o = or i64 %i.d, 1152920405095219200
  store i64 %i.o, ptr %i.a, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.d unwind label %bb.ak

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.b, ptr %i.p, align 8, !tbaa !132
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.r = invoke ptr @_ZNKSt10_HashtableISt4pairIN4cvc58internal12NodeTemplateILb1EEENS3_ILb0EEEES0_IKS6_PNS1_7context11CDOhash_mapIS6_jNS2_16PairHashFunctionIS5_S5_St4hashIS5_ESC_EEEEESaISG_ENSt8__detail10_Select1stESt8equal_toIS6_ESD_NSI_18_Mod_range_hashingENSI_20_Default_ranged_hashENSI_20_Prime_rehash_policyENSI_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %i.q, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %.noexc44 unwind label %bb.al  ; 2 uses

.noexc44:                                         ; preds = %bb.d
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %_ZNK4cvc57context9CDHashMapISt4pairINS_8internal12NodeTemplateILb1EEENS4_ILb0EEEEjNS3_16PairHashFunctionIS6_S6_St4hashIS6_ESA_EEE4findERKS7_.exit, label %bb.e

bb.e:                                             ; preds = %.noexc44
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !141  ; 2 uses
  %8 = icmp eq ptr %i.u, null
  br label %_ZNK4cvc57context9CDHashMapISt4pairINS_8internal12NodeTemplateILb1EEENS4_ILb0EEEEjNS3_16PairHashFunctionIS6_S6_St4hashIS6_ESA_EEE4findERKS7_.exit

_ZNK4cvc57context9CDHashMapISt4pairINS_8internal12NodeTemplateILb1EEENS4_ILb0EEEEjNS3_16PairHashFunctionIS6_S6_St4hashIS6_ESA_EEE4findERKS7_.exit: ; preds = %bb.e, %.noexc44
  %.sroa.04.0.i = phi i1 [ %8, %bb.e ], [ true, %.noexc44 ]
  %.sroa.04.0.i.a = phi ptr [ %i.u, %bb.e ], [ null, %.noexc44 ]
  %i.v = load ptr, ptr %4, align 8, !tbaa !111    ; 3 uses
  %i.w = load i64, ptr %i.v, align 8              ; 3 uses
  %i.x = and i64 %i.w, 1152920405095219200
  %.not.i.i.i = icmp eq i64 %i.x, 1152920405095219200
  br i1 %.not.i.i.i, label %bb.i, label %bb.f, !prof !115

bb.f:                                             ; preds = %_ZNK4cvc57context9CDHashMapISt4pairINS_8internal12NodeTemplateILb1EEENS4_ILb0EEEEjNS3_16PairHashFunctionIS6_S6_St4hashIS6_ESA_EEE4findERKS7_.exit
  %i.y = add i64 %i.w, 1152920405095219200
  %i.z = and i64 %i.y, 1152920405095219200        ; 2 uses
  %i.aa = and i64 %i.w, -1152920405095219201
  %i.ab = or disjoint i64 %i.z, %i.aa
  store i64 %i.ab, ptr %i.v, align 8
  %i.ac = icmp eq i64 %i.z, 0
  br i1 %i.ac, label %bb.g, label %bb.i, !prof !115

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = landingpad { ptr, i32 }
          catch ptr null
  %i.ae = extractvalue { ptr, i32 } %i.ad, 0
  call void @__clang_call_terminate(ptr %i.ae) #25
  unreachable

bb.i:                                             ; preds = %bb.g, %bb.f, %_ZNK4cvc57context9CDHashMapISt4pairINS_8internal12NodeTemplateILb1EEENS4_ILb0EEEEjNS3_16PairHashFunctionIS6_S6_St4hashIS6_ESA_EEE4findERKS7_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br i1 %.sroa.04.0.i, label %bb.j, label %bb.at

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.af = load ptr, ptr %1, align 8, !tbaa !132   ; 5 uses
  store ptr %i.af, ptr %5, align 8, !tbaa !111
  %i.ag = load i64, ptr %i.af, align 8            ; 3 uses
  %i.ah = lshr i64 %i.ag, 40
  %i.ai = trunc nuw nsw i64 %i.ah to i32
  %i.aj = and i32 %i.ai, 1048575                  ; 3 uses
  %i.ak = icmp samesign ult i32 %i.aj, 1048574
  br i1 %i.ak, label %bb.k, label %bb.l, !prof !133

bb.k:                                             ; preds = %bb.j
  %i.al = add nuw nsw i32 %i.aj, 1
  %i.am = zext nneg i32 %i.al to i64
  %i.an = shl nuw nsw i64 %i.am, 40
  %i.ao = and i64 %i.ag, -1152920405095219201
  %i.ap = or i64 %i.an, %i.ao
  store i64 %i.ap, ptr %i.af, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit

bb.l:                                             ; preds = %bb.j
  %i.aq = icmp eq i32 %i.aj, 1048574
  br i1 %i.aq, label %bb.m, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit, !prof !115

bb.m:                                             ; preds = %bb.l
  %i.ar = or i64 %i.ag, 1152920405095219200
  store i64 %i.ar, ptr %i.af, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit unwind label %bb.an

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit: ; preds = %bb.l, %bb.k, %bb.m
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.at = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt8__detail9_Map_baseIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS4_St6vectorINS3_ILb0EEESaIS8_EEESaISB_ENS_10_Select1stESt8equal_toIS4_ESt4hashIS4_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixEOS4_(ptr noundef nonnull align 8 dereferenceable(56) %i.as, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb1EEESt6vectorINS2_ILb0EEESaIS5_EESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S7_EEEixEOS3_.exit unwind label %bb.ao ; 4 uses

_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb1EEESt6vectorINS2_ILb0EEESaIS5_EESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S7_EEEixEOS3_.exit: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 3 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !142 ; 6 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 16 ; 3 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !114
  %.not.i47 = icmp eq ptr %i.av, %i.ax
  br i1 %.not.i47, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb1EEESt6vectorINS2_ILb0EEESaIS5_EESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S7_EEEixEOS3_.exit
  %i.ay = load ptr, ptr %2, align 8, !tbaa !132
  store ptr %i.ay, ptr %i.av, align 8, !tbaa !132
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store ptr %i.az, ptr %i.au, align 8, !tbaa !142
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE9push_backERKS3_.exit

bb.o:                                             ; preds = %_ZNSt13unordered_mapIN4cvc58internal12NodeTemplateILb1EEESt6vectorINS2_ILb0EEESaIS5_EESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S7_EEEixEOS3_.exit
  %i.ba = load ptr, ptr %i.at, align 8, !tbaa !113 ; 5 uses
  %i.bb = ptrtoint ptr %i.av to i64
  %i.bc = ptrtoint ptr %i.ba to i64               ; 2 uses
  %i.bd = sub i64 %i.bb, %i.bc                    ; 3 uses
  %i.be = icmp eq i64 %i.bd, 9223372036854775800
  br i1 %i.be, label %bb.p, label %_ZNKSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.p:                                             ; preds = %bb.o
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #26
          to label %.noexc49 unwind label %bb.ao

.noexc49:                                         ; preds = %bb.p
  unreachable

_ZNKSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.o
  %i.bf = ashr exact i64 %i.bd, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.bf, i64 1)
  %i.bg = add nsw i64 %.sroa.speculated.i.i.i, %i.bf ; 2 uses
  %i.bh = icmp ult i64 %i.bg, %i.bf
  %i.bi = call i64 @llvm.umin.i64(i64 %i.bg, i64 1152921504606846975)
  %i.bj = select i1 %i.bh, i64 1152921504606846975, i64 %i.bi ; 3 uses
  %.not.i.i.i48 = icmp ne i64 %i.bj, 0
  call void @llvm.assume(i1 %.not.i.i.i48)
  %i.bk = shl nuw nsw i64 %i.bj, 3
  %i.bl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bk) #24
          to label %.noexc50 unwind label %bb.ao  ; 5 uses

.noexc50:                                         ; preds = %_ZNKSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bd
  %i.bn = load ptr, ptr %2, align 8, !tbaa !132
  store ptr %i.bn, ptr %i.bm, align 8, !tbaa !132
  %.not13.i.i.i.i.i.i.i = icmp eq ptr %i.ba, %i.av
  br i1 %.not13.i.i.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4cvc58internal12NodeTemplateILb0EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit34.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.noexc50, %.lr.ph.i.i.i.i.i.i.i
  %.015.i.i.i.i.i.i.i = phi ptr [ %i.bq, %.lr.ph.i.i.i.i.i.i.i ], [ %i.bl, %.noexc50 ] ; 2 uses
  %.01214.i.i.i.i.i.i.i = phi ptr [ %i.bp, %.lr.ph.i.i.i.i.i.i.i ], [ %i.ba, %.noexc50 ] ; 2 uses
  %i.bo = load ptr, ptr %.01214.i.i.i.i.i.i.i, align 8, !tbaa !132
  store ptr %i.bo, ptr %.015.i.i.i.i.i.i.i, align 8, !tbaa !132
  %i.bp = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bp, %i.av
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4cvc58internal12NodeTemplateILb0EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit34.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !0

_ZSt34__uninitialized_move_if_noexcept_aIPN4cvc58internal12NodeTemplateILb0EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit34.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %.noexc50
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.bl, %.noexc50 ], [ %i.bq, %.lr.ph.i.i.i.i.i.i.i ]
  %i.br = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i35.i.i = icmp eq ptr %i.ba, null
  br i1 %.not.i35.i.i, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.q

bb.q:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN4cvc58internal12NodeTemplateILb0EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit34.i.i
  %i.bs = load ptr, ptr %i.aw, align 8, !tbaa !114
  %i.bt = ptrtoint ptr %i.bs to i64
  %i.bu = sub i64 %i.bt, %i.bc
  call void @_ZdlPvm(ptr noundef nonnull %i.ba, i64 noundef %i.bu) #23
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.q, %_ZSt34__uninitialized_move_if_noexcept_aIPN4cvc58internal12NodeTemplateILb0EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit34.i.i
  store ptr %i.bl, ptr %i.at, align 8, !tbaa !113
  store ptr %i.br, ptr %i.au, align 8, !tbaa !142
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.bj
  store ptr %i.bv, ptr %i.aw, align 8, !tbaa !114
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE9push_backERKS3_.exit

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE9push_backERKS3_.exit: ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, %bb.n
  %i.bw = load ptr, ptr %5, align 8, !tbaa !111   ; 3 uses
  %i.bx = load i64, ptr %i.bw, align 8            ; 3 uses
  %i.by = and i64 %i.bx, 1152920405095219200
  %.not.i.i = icmp eq i64 %i.by, 1152920405095219200
  br i1 %.not.i.i, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, label %bb.r, !prof !115

bb.r:                                             ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE9push_backERKS3_.exit
  %i.bz = add i64 %i.bx, 1152920405095219200
  %i.ca = and i64 %i.bz, 1152920405095219200      ; 2 uses
  %i.cb = and i64 %i.bx, -1152920405095219201
  %i.cc = or disjoint i64 %i.ca, %i.cb
  store i64 %i.cc, ptr %i.bw, align 8
  %i.cd = icmp eq i64 %i.ca, 0
  br i1 %i.cd, label %bb.s, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, !prof !115

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bw)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ce = landingpad { ptr, i32 }
          catch ptr null
  %i.cf = extractvalue { ptr, i32 } %i.ce, 0
  call void @__clang_call_terminate(ptr %i.cf) #25
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit:   ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE9push_backERKS3_.exit, %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !142 ; 6 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !114
  %.not.i51 = icmp eq ptr %i.ci, %i.ck
  br i1 %.not.i51, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit
  %i.cl = load ptr, ptr %1, align 8, !tbaa !132
  store ptr %i.cl, ptr %i.ci, align 8, !tbaa !132
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  store ptr %i.cm, ptr %i.ch, align 8, !tbaa !142
  br label %bb.x

bb.v:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit
  %i.cn = load ptr, ptr %i.cg, align 8, !tbaa !113 ; 5 uses
  %i.co = ptrtoint ptr %i.ci to i64
  %i.cp = ptrtoint ptr %i.cn to i64               ; 2 uses
  %i.cq = sub i64 %i.co, %i.cp                    ; 3 uses
  %i.cr = icmp eq i64 %i.cq, 9223372036854775800
  br i1 %i.cr, label %.noexc64, label %_ZNKSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i52

.noexc64:                                         ; preds = %bb.v
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #26
  unreachable

_ZNKSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i52: ; preds = %bb.v
  %i.cs = ashr exact i64 %i.cq, 3                 ; 3 uses
  %.sroa.speculated.i.i.i53 = call i64 @llvm.umax.i64(i64 %i.cs, i64 1)
  %i.ct = add nsw i64 %.sroa.speculated.i.i.i53, %i.cs ; 2 uses
  %i.cu = icmp ult i64 %i.ct, %i.cs
  %i.cv = call i64 @llvm.umin.i64(i64 %i.ct, i64 1152921504606846975)
  %i.cw = select i1 %i.cu, i64 1152921504606846975, i64 %i.cv ; 3 uses
  %.not.i.i.i54 = icmp ne i64 %i.cw, 0
  call void @llvm.assume(i1 %.not.i.i.i54)
  %i.cx = shl nuw nsw i64 %i.cw, 3
  %i.cy = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cx) #24 ; 5 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.cq
  %i.da = load ptr, ptr %1, align 8, !tbaa !132
  store ptr %i.da, ptr %i.cz, align 8, !tbaa !132
  %.not13.i.i.i.i.i.i.i55 = icmp eq ptr %i.cn, %i.ci
  br i1 %.not13.i.i.i.i.i.i.i55, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4cvc58internal12NodeTemplateILb0EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit34.i.i60, label %.lr.ph.i.i.i.i.i.i.i56

.lr.ph.i.i.i.i.i.i.i56:                           ; preds = %_ZNKSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i52, %.lr.ph.i.i.i.i.i.i.i56
  %.015.i.i.i.i.i.i.i57 = phi ptr [ %i.dd, %.lr.ph.i.i.i.i.i.i.i56 ], [ %i.cy, %_ZNKSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i52 ] ; 2 uses
  %.01214.i.i.i.i.i.i.i58 = phi ptr [ %i.dc, %.lr.ph.i.i.i.i.i.i.i56 ], [ %i.cn, %_ZNKSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i52 ] ; 2 uses
  %i.db = load ptr, ptr %.01214.i.i.i.i.i.i.i58, align 8, !tbaa !132
  store ptr %i.db, ptr %.015.i.i.i.i.i.i.i57, align 8, !tbaa !132
  %i.dc = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i58, i64 8 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i.i57, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i59 = icmp eq ptr %i.dc, %i.ci
  br i1 %.not.i.i.i.i.i.i.i59, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4cvc58internal12NodeTemplateILb0EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit34.i.i60, label %.lr.ph.i.i.i.i.i.i.i56, !llvm.loop !0

_ZSt34__uninitialized_move_if_noexcept_aIPN4cvc58internal12NodeTemplateILb0EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit34.i.i60: ; preds = %.lr.ph.i.i.i.i.i.i.i56, %_ZNKSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i52
end_hunk_0
