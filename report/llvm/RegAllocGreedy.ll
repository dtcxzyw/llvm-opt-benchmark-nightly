Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/RegAllocGreedy?download=true
inline.NumInlined: 5700
inline.NumDeleted: 2878
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN4llvm8RAGreedy26mayRecolorAllInterferencesENS_10MCRegisterERKNS_12LiveIntervalERNS_14SmallSetVectorIPS3_Lj4EEERKNS_8SmallSetINS_8RegisterELj16ESt4lessISA_EEE:bb.a
  %i.ij = trunc i32 %i.ii to i1
  br i1 %i.ij, label %.lr.ph.i95, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12LiveIntervalENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit.i84, !prof !700

.lr.ph.i95:                                       ; preds = %bb.ai, %bb.aj
  %i.ik = phi ptr [ %i.iq, %bb.aj ], [ %i.id, %bb.ai ] ; 2 uses
  %.024.i96 = phi i32 [ %i.io, %bb.aj ], [ %i.ib, %bb.ai ]
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !481, !noalias !1051
  %i.im = icmp eq ptr %i.hv, %i.il
  br i1 %i.im, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12LiveIntervalENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit.i84, label %bb.aj, !prof !522

bb.aj:                                            ; preds = %.lr.ph.i95
  %i.in = add nuw i32 %.024.i96, 1
  %i.io = and i32 %i.in, %i.hu                    ; 3 uses
  %i.ip = zext i32 %i.io to i64                   ; 2 uses
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %i.hq, i64 %i.ip ; 2 uses
  %i.ir = lshr i64 %i.ip, 5
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %i.hr, i64 %i.ir
  %i.it = load i32, ptr %i.is, align 4, !tbaa !483, !noalias !1051
  %i.iu = and i32 %i.io, 31
  %i.iv = lshr i32 %i.it, %i.iu
  %i.iw = trunc i32 %i.iv to i1
  br i1 %i.iw, label %.lr.ph.i95, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12LiveIntervalENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit.i84, !prof !702, !llvm.loop !1052

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12LiveIntervalENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit.i84: ; preds = %bb.aj, %.lr.ph.i95, %.loopexit.i78._ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12LiveIntervalENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit.i84_crit_edge, %bb.ai
  %i.ix = phi ptr [ %.pre177, %.loopexit.i78._ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12LiveIntervalENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit.i84_crit_edge ], [ %i.hv, %bb.ai ], [ %i.hv, %.lr.ph.i95 ], [ %i.hv, %bb.aj ]
  %i.iy = phi ptr [ %i.ge, %.loopexit.i78._ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12LiveIntervalENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit.i84_crit_edge ], [ %i.hq, %bb.ai ], [ %i.hq, %.lr.ph.i95 ], [ %i.hq, %bb.aj ]
  %i.iz = phi ptr [ %i.gf, %.loopexit.i78._ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12LiveIntervalENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit.i84_crit_edge ], [ %i.hr, %bb.ai ], [ %i.hr, %.lr.ph.i95 ], [ %i.hr, %bb.aj ]
  %i.ja = phi ptr [ %.lcssa28.sink.i.ph.i79, %.loopexit.i78._ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12LiveIntervalENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit.i84_crit_edge ], [ %i.id, %bb.ai ], [ %i.iq, %bb.aj ], [ %i.ik, %.lr.ph.i95 ] ; 2 uses
  %i.jb = ptrtoint ptr %i.ja to i64
  %i.jc = ptrtoint ptr %i.iy to i64
  %i.jd = sub i64 %i.jb, %i.jc
  %i.je = ashr exact i64 %i.jd, 3                 ; 2 uses
  %i.jf = trunc i64 %i.je to i32
  %i.jg = and i32 %i.jf, 31
  %i.jh = shl nuw i32 1, %i.jg
  %i.ji = lshr i64 %i.je, 5
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %i.iz, i64 %i.ji ; 2 uses
  %i.jk = load i32, ptr %i.jj, align 4, !tbaa !483, !noalias !1051
  %i.jl = or i32 %i.jh, %i.jk
  store i32 %i.jl, ptr %i.jj, align 4, !tbaa !483, !noalias !1051
  %i.jm = load i32, ptr %i.af, align 8, !tbaa !478, !noalias !1051
  %i.jn = add i32 %i.jm, 1
  store i32 %i.jn, ptr %i.af, align 8, !tbaa !478, !noalias !1051
  store ptr %i.ix, ptr %i.ja, align 8, !tbaa !481, !noalias !1051
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12LiveIntervalENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPSA_bEOT_DpOT0_.exit91

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12LiveIntervalENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPSA_bEOT_DpOT0_.exit91: ; preds = %.lr.ph.i.i89, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12LiveIntervalENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit.i84
  %i.jo = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 8 ; 2 uses
  %.not.i8.i = icmp eq ptr %i.jo, %i.gd
  br i1 %.not.i8.i, label %_ZN4llvm9SetVectorIPKNS_12LiveIntervalENS_11SmallVectorIS3_Lj4EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj4EE6insertERKS3_.exit, label %.lr.ph.i.i

bb.ak:                                            ; preds = %.critedge37
  %i.jp = load ptr, ptr %3, align 8, !tbaa !490, !noalias !1058 ; 3 uses
  %i.jq = load ptr, ptr %i.ag, align 8, !tbaa !480, !noalias !1058 ; 3 uses
  %i.jr = load i32, ptr %i.ah, align 4, !tbaa !479, !noalias !1058 ; 4 uses
  %i.js = icmp eq i32 %i.jr, 0
  br i1 %i.js, label %.loopexit.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.jt = add i32 %i.jr, -1                       ; 2 uses
  %i.ju = ptrtoint ptr %i.bl to i64
  %i.jv = mul i64 %i.ju, -4658895280553007687     ; 2 uses
  %i.jw = lshr i64 %i.jv, 31
  %i.jx = xor i64 %i.jw, %i.jv
  %i.jy = trunc i64 %i.jx to i32
  %i.jz = and i32 %i.jt, %i.jy                    ; 3 uses
  %i.ka = zext i32 %i.jz to i64                   ; 2 uses
  %i.kb = getelementptr inbounds nuw [8 x i8], ptr %i.jp, i64 %i.ka ; 2 uses
  %i.kc = lshr i64 %i.ka, 5
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %i.jq, i64 %i.kc
  %i.ke = load i32, ptr %i.kd, align 4, !tbaa !483, !noalias !1069
  %i.kf = and i32 %i.jz, 31
  %i.kg = lshr i32 %i.ke, %i.kf
  %i.kh = trunc i32 %i.kg to i1
  br i1 %i.kh, label %.lr.ph.i.i77, label %.loopexit.i, !prof !700

.lr.ph.i.i77:                                     ; preds = %bb.al, %bb.am
  %i.ki = phi ptr [ %i.ko, %bb.am ], [ %i.kb, %bb.al ]
  %.024.i.i = phi i32 [ %i.km, %bb.am ], [ %i.jz, %bb.al ]
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !481, !noalias !1069
  %i.kk = icmp eq ptr %i.bl, %i.kj
  br i1 %i.kk, label %_ZN4llvm9SetVectorIPKNS_12LiveIntervalENS_11SmallVectorIS3_Lj4EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj4EE6insertERKS3_.exit, label %bb.am, !prof !522

bb.am:                                            ; preds = %.lr.ph.i.i77
  %i.kl = add nuw i32 %.024.i.i, 1
  %i.km = and i32 %i.kl, %i.jt                    ; 3 uses
  %i.kn = zext i32 %i.km to i64                   ; 2 uses
  %i.ko = getelementptr inbounds nuw [8 x i8], ptr %i.jp, i64 %i.kn ; 2 uses
  %i.kp = lshr i64 %i.kn, 5
  %i.kq = getelementptr inbounds nuw [4 x i8], ptr %i.jq, i64 %i.kp
  %i.kr = load i32, ptr %i.kq, align 4, !tbaa !483, !noalias !1069
  %i.ks = and i32 %i.km, 31
  %i.kt = lshr i32 %i.kr, %i.ks
  %i.ku = trunc i32 %i.kt to i1
  br i1 %i.ku, label %.lr.ph.i.i77, label %.loopexit.i, !prof !702, !llvm.loop !1052

.loopexit.i:                                      ; preds = %bb.am, %bb.al, %bb.ak
  %.lcssa28.sink.i.ph.i = phi ptr [ %i.kb, %bb.al ], [ null, %bb.ak ], [ %i.ko, %bb.am ]
  %i.kv = shl i32 %i.en, 2
  %i.kw = add i32 %i.kv, 4
  %i.kx = mul i32 %i.jr, 3
  %.not.i.i75 = icmp ult i32 %i.kw, %i.kx
  br i1 %.not.i.i75, label %.loopexit, label %bb.an, !prof !522

bb.an:                                            ; preds = %.loopexit.i
  %i.ky = shl i32 %i.jr, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12LiveIntervalENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E4growEj(ptr noundef nonnull align 8 dereferenceable(72) %3, i32 noundef %i.ky), !noalias !1069
  %i.kz = load ptr, ptr %3, align 8, !tbaa !490, !noalias !1070 ; 5 uses
  %i.la = load ptr, ptr %i.ag, align 8, !tbaa !480, !noalias !1070 ; 5 uses
  %i.lb = load i32, ptr %i.ah, align 4, !tbaa !479, !noalias !1070 ; 2 uses
  %i.lc = icmp ne i32 %i.lb, 0
  tail call void @llvm.assume(i1 %i.lc)
  %i.ld = add i32 %i.lb, -1                       ; 2 uses
  %i.le = ptrtoint ptr %i.bl to i64
  %i.lf = mul i64 %i.le, -4658895280553007687     ; 2 uses
  %i.lg = lshr i64 %i.lf, 31
  %i.lh = xor i64 %i.lg, %i.lf
  %i.li = trunc i64 %i.lh to i32
  %i.lj = and i32 %i.ld, %i.li                    ; 3 uses
  %i.lk = zext i32 %i.lj to i64                   ; 2 uses
  %i.ll = getelementptr inbounds nuw [8 x i8], ptr %i.kz, i64 %i.lk ; 2 uses
  %i.lm = lshr i64 %i.lk, 5
  %i.ln = getelementptr inbounds nuw [4 x i8], ptr %i.la, i64 %i.lm
  %i.lo = load i32, ptr %i.ln, align 4, !tbaa !483, !noalias !1069
  %i.lp = and i32 %i.lj, 31
  %i.lq = lshr i32 %i.lo, %i.lp
  %i.lr = trunc i32 %i.lq to i1
  br i1 %i.lr, label %.lr.ph.i92, label %.loopexit, !prof !700

.lr.ph.i92:                                       ; preds = %bb.an, %bb.ao
  %i.ls = phi ptr [ %i.ly, %bb.ao ], [ %i.ll, %bb.an ] ; 2 uses
  %.024.i = phi i32 [ %i.lw, %bb.ao ], [ %i.lj, %bb.an ]
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !481, !noalias !1069
  %i.lu = icmp eq ptr %i.bl, %i.lt
  br i1 %i.lu, label %.loopexit, label %bb.ao, !prof !522

bb.ao:                                            ; preds = %.lr.ph.i92
  %i.lv = add nuw i32 %.024.i, 1
  %i.lw = and i32 %i.lv, %i.ld                    ; 3 uses
  %i.lx = zext i32 %i.lw to i64                   ; 2 uses
  %i.ly = getelementptr inbounds nuw [8 x i8], ptr %i.kz, i64 %i.lx ; 2 uses
  %i.lz = lshr i64 %i.lx, 5
  %i.ma = getelementptr inbounds nuw [4 x i8], ptr %i.la, i64 %i.lz
  %i.mb = load i32, ptr %i.ma, align 4, !tbaa !483, !noalias !1069
  %i.mc = and i32 %i.lw, 31
  %i.md = lshr i32 %i.mb, %i.mc
  %i.me = trunc i32 %i.md to i1
  br i1 %i.me, label %.lr.ph.i92, label %.loopexit, !prof !702, !llvm.loop !1052

.loopexit:                                        ; preds = %.lr.ph.i92, %bb.ao, %.loopexit.i, %bb.an
  %i.mf = phi ptr [ %i.jp, %.loopexit.i ], [ %i.kz, %bb.an ], [ %i.kz, %bb.ao ], [ %i.kz, %.lr.ph.i92 ]
  %i.mg = phi ptr [ %i.jq, %.loopexit.i ], [ %i.la, %bb.an ], [ %i.la, %bb.ao ], [ %i.la, %.lr.ph.i92 ]
  %i.mh = phi ptr [ %.lcssa28.sink.i.ph.i, %.loopexit.i ], [ %i.ll, %bb.an ], [ %i.ls, %.lr.ph.i92 ], [ %i.ly, %bb.ao ] ; 2 uses
  %i.mi = ptrtoint ptr %i.mh to i64
  %i.mj = ptrtoint ptr %i.mf to i64
  %i.mk = sub i64 %i.mi, %i.mj
  %i.ml = ashr exact i64 %i.mk, 3                 ; 2 uses
  %i.mm = trunc i64 %i.ml to i32
  %i.mn = and i32 %i.mm, 31
  %i.mo = shl nuw i32 1, %i.mn
  %i.mp = lshr i64 %i.ml, 5
  %i.mq = getelementptr inbounds nuw [4 x i8], ptr %i.mg, i64 %i.mp ; 2 uses
  %i.mr = load i32, ptr %i.mq, align 4, !tbaa !483, !noalias !1069
  %i.ms = or i32 %i.mo, %i.mr
  store i32 %i.ms, ptr %i.mq, align 4, !tbaa !483, !noalias !1069
  %i.mt = load i32, ptr %i.af, align 8, !tbaa !478, !noalias !1069
  %i.mu = add i32 %i.mt, 1
  store i32 %i.mu, ptr %i.af, align 8, !tbaa !478, !noalias !1069
  store ptr %i.bl, ptr %i.mh, align 8, !tbaa !481, !noalias !1069
  %i.mv = load i32, ptr %i.aj, align 8, !tbaa !50 ; 2 uses
  %i.mw = load i32, ptr %i.ak, align 4, !tbaa !51
  %.not.i9.i = icmp ult i32 %i.mv, %i.mw
  br i1 %.not.i9.i, label %bb.aq, label %bb.ap, !prof !522

bb.ap:                                            ; preds = %.loopexit
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIPKNS_12LiveIntervalELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, ptr noundef %i.bl)
  br label %_ZN4llvm9SetVectorIPKNS_12LiveIntervalENS_11SmallVectorIS3_Lj4EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj4EE6insertERKS3_.exit

bb.aq:                                            ; preds = %.loopexit
  %i.mx = zext i32 %i.mv to i64
  %i.my = load ptr, ptr %i.ai, align 8, !tbaa !14
  %i.mz = getelementptr inbounds nuw [8 x i8], ptr %i.my, i64 %i.mx
  store ptr %i.bl, ptr %i.mz, align 1
  %i.na = load i32, ptr %i.aj, align 8, !tbaa !50
  %i.nb = add i32 %i.na, 1
  store i32 %i.nb, ptr %i.aj, align 8, !tbaa !50
  br label %_ZN4llvm9SetVectorIPKNS_12LiveIntervalENS_11SmallVectorIS3_Lj4EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj4EE6insertERKS3_.exit

_ZN4llvm9SetVectorIPKNS_12LiveIntervalENS_11SmallVectorIS3_Lj4EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj4EE6insertERKS3_.exit: ; preds = %.lr.ph.i.i77, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12LiveIntervalENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPSA_bEOT_DpOT0_.exit91, %_ZN4llvm12is_containedIRNS_11SmallVectorIPKNS_12LiveIntervalELj4EEES4_EEbOT_RKT0_.exit.i, %_ZN4llvm23SmallVectorTemplateBaseIPKNS_12LiveIntervalELb1EE9push_backES3_.exit.i, %bb.ap, %bb.aq
  %.not135 = icmp eq ptr %i.bk, %i.bh
  br i1 %.not135, label %.critedge.thread, label %.lr.ph

.critedge.thread:                                 ; preds = %_ZN4llvm9SetVectorIPKNS_12LiveIntervalENS_11SmallVectorIS3_Lj4EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj4EE6insertERKS3_.exit, %_ZN4llvm17LiveIntervalUnion5Query16interferingVRegsEj.exit48
  %i.nc = getelementptr inbounds nuw i8, ptr %.sroa.6117.0159, i64 2
  %i.nd = load i16, ptr %.sroa.6117.0159, align 2, !tbaa !594 ; 2 uses
  %i.ne = sext i16 %i.nd to i32
  %i.nf = add i32 %.sroa.10.0158, %i.ne
  %.not.i.i74 = icmp eq i16 %i.nd, 0
  br i1 %.not.i.i74, label %.critedge.thread132, label %bb.b

.critedge.thread132:                              ; preds = %.critedge.thread, %_ZL28assignedRegPartiallyOverlapsRKN4llvm18TargetRegisterInfoERKNS_10VirtRegMapENS_10MCRegisterERKNS_12LiveIntervalE.exit.thread, %bb.k, %bb.j, %_ZNK4llvm8SmallSetINS_8RegisterELj16ESt4lessIS1_EE5countERKS1_.exit, %_ZNK4llvm8SmallSetINS_8RegisterELj16ESt4lessIS1_EE5vfindERKS1_.exit.i.i, %bb.l, %bb.m, %.lr.ph.i59, %bb.a, %.critedge39
  %.not134146 = phi i1 [ false, %_ZL28assignedRegPartiallyOverlapsRKN4llvm18TargetRegisterInfoERKNS_10VirtRegMapENS_10MCRegisterERKNS_12LiveIntervalE.exit.thread ], [ true, %bb.a ], [ false, %bb.l ], [ false, %.critedge39 ], [ false, %.lr.ph.i59 ], [ false, %bb.m ], [ false, %_ZNK4llvm8SmallSetINS_8RegisterELj16ESt4lessIS1_EE5vfindERKS1_.exit.i.i ], [ false, %_ZNK4llvm8SmallSetINS_8RegisterELj16ESt4lessIS1_EE5countERKS1_.exit ], [ false, %bb.j ], [ false, %bb.k ], [ true, %.critedge.thread ]
  ret i1 %.not134146
}

; Function Attrs: mustprogress nounwind uwtable
define hidden i32 @_ZN4llvm8RAGreedy23tryLastChanceRecoloringERKNS_12LiveIntervalERNS_15AllocationOrderERNS_15SmallVectorImplINS_8RegisterEEERNS_8SmallSetIS7_Lj16ESt4lessIS7_EEERNS_11SmallVectorISt4pairIPS2_NS_10MCRegisterEELj8EEEj(ptr noundef nonnull align 8 dereferenceable(29066) %0, ptr noundef nonnull align 8 dereferenceable(120) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(76) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(128) %4, ptr noundef nonnull align 8 dereferenceable(144) %5, i32 noundef %6) local_unnamed_addr #3 align 2 {
bb.a:
  %7 = alloca %"class.llvm::SmallSetVector.746", align 8 ; 17 uses
  %8 = alloca %"struct.std::pair.753", align 8
  %9 = alloca %"class.llvm::Register", align 4    ; 4 uses
  %10 = alloca %"class.llvm::SmallVector.545", align 8 ; 10 uses
  %11 = alloca %"class.std::priority_queue", align 8 ; 10 uses
  %12 = alloca %"class.llvm::Register", align 4   ; 5 uses
  %13 = alloca %"class.llvm::SmallSet.574", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !391  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 760
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !268
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 648
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef zeroext i1 %i.g(ptr noundef nonnull align 8 dereferenceable(316) %i.b, ptr noundef nonnull align 8 dereferenceable(1065) %i.d, ptr noundef nonnull align 8 dereferenceable(120) %1) #25
  br i1 %i.h, label %bb.b, label %bb.bo

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 9 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !50   ; 7 uses
  %i.k = zext i32 %i.j to i64                     ; 5 uses
  %i.l = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL28LastChanceRecoloringMaxDepth, i64 120), align 8, !tbaa !628
  %.not = icmp ult i32 %6, %i.l
  %i.m = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL16ExhaustiveSearch, i64 120), align 8, !range !21
  %i.n = trunc nuw i8 %i.m to i1
  %or.cond = select i1 %.not, i1 true, i1 %i.n
  br i1 %or.cond, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 976 ; 2 uses
  %i.p = load i8, ptr %i.o, align 8, !tbaa !1026
  %i.q = or i8 %i.p, 1
  store i8 %i.q, ptr %i.o, align 8, !tbaa !1026
  br label %bb.bo

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %7, i8 0, i64 24, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 2 uses
  store ptr %i.s, ptr %i.r, align 8, !tbaa !14
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 3 uses
  store i32 0, ptr %i.t, align 8, !tbaa !50
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 36
  store i32 4, ptr %i.u, align 4, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %.sroa.0.0.copyload.i = load i32, ptr %i.v, align 8, !tbaa !483
  store i32 %.sroa.0.0.copyload.i, ptr %9, align 4
  call void @_ZN4llvm8SmallSetINS_8RegisterELj16ESt4lessIS1_EE10insertImplIS1_EESt4pairINS_16SmallSetIteratorIS1_Lj16ES3_EEbEOT_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.753") align 8 %8, ptr noundef nonnull align 8 dereferenceable(128) %4, ptr noundef nonnull align 4 dereferenceable(4) %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  %i.w = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  store ptr %i.w, ptr %10, align 8, !tbaa !14
  %i.x = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 4 uses
  store i32 0, ptr %i.x, align 8, !tbaa !50
  %i.y = getelementptr inbounds nuw i8, ptr %10, i64 12
  store i32 4, ptr %i.y, align 4, !tbaa !51
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !589
  %i.ab = trunc i64 %i.aa to i32
  %i.ac = sub nsw i32 0, %i.ab                    ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !590 ; 2 uses
  %.not145186 = icmp eq i32 %i.ae, %i.ac
  br i1 %.not145186, label %_ZN4llvm11SmallVectorINS_8RegisterELj4EED2Ev.exit, label %.lr.ph190

.lr.ph190:                                        ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %7, i64 20 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 7 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 912 ; 6 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 920 ; 7 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 928 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 924 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 968
  %i.ap = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 120
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %13, i64 80
  %i.bc = getelementptr inbounds nuw i8, ptr %13, i64 96
  %i.bd = getelementptr inbounds nuw i8, ptr %13, i64 16
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph190, %_ZN4llvm15AllocationOrder8IteratorppEv.exit
  %.sroa.0131.0188 = phi i32 [ undef, %.lr.ph190 ], [ %.sroa.0131.2142, %_ZN4llvm15AllocationOrder8IteratorppEv.exit ] ; 5 uses
  %.sroa.6128.0187 = phi i32 [ %i.ac, %.lr.ph190 ], [ %.sroa.6128.3, %_ZN4llvm15AllocationOrder8IteratorppEv.exit ] ; 5 uses
  %i.be = icmp slt i32 %.sroa.6128.0187, 0
  br i1 %i.be, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bf = load ptr, ptr %2, align 8, !tbaa !593
  %i.bg = load i64, ptr %i.z, align 8, !tbaa !589
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %i.bf, i64 %i.bg
  %i.bi = sext i32 %.sroa.6128.0187 to i64
  %i.bj = getelementptr inbounds [2 x i8], ptr %i.bh, i64 %i.bi
  br label %_ZNK4llvm15AllocationOrder8IteratordeEv.exit

bb.g:                                             ; preds = %bb.e
  %i.bk = zext nneg i32 %.sroa.6128.0187 to i64
  %i.bl = load ptr, ptr %i.af, align 8, !tbaa !595
  %i.bm = getelementptr inbounds nuw [2 x i8], ptr %i.bl, i64 %i.bk
  br label %_ZNK4llvm15AllocationOrder8IteratordeEv.exit

_ZNK4llvm15AllocationOrder8IteratordeEv.exit:     ; preds = %bb.f, %bb.g
  %.sroa.0.0.in.in.i = phi ptr [ %i.bj, %bb.f ], [ %i.bm, %bb.g ]
  %.sroa.0.0.in.i = load i16, ptr %.sroa.0.0.in.in.i, align 2, !tbaa !594
  %.sroa.0.0.i = zext i16 %.sroa.0.0.in.i to i32  ; 4 uses
  %i.bn = load i32, ptr %i.ag, align 8, !tbaa !478 ; 3 uses
  %i.bo = icmp eq i32 %i.bn, 0
  br i1 %i.bo, label %_ZN4llvm9SetVectorIPKNS_12LiveIntervalENS_11SmallVectorIS3_Lj4EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj4EE5clearEv.exit, label %bb.h

bb.h:                                             ; preds = %_ZNK4llvm15AllocationOrder8IteratordeEv.exit
  %i.bp = shl i32 %i.bn, 2
  %i.bq = load i32, ptr %i.ah, align 4, !tbaa !479 ; 5 uses
  %i.br = icmp ult i32 %i.bp, %i.bq
  %i.bs = icmp ugt i32 %i.bq, 64
  %or.cond.i.i.i = and i1 %i.br, %i.bs
  br i1 %or.cond.i.i.i, label %_ZNK4llvm8DenseMapIPKNS_12LiveIntervalENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE18planShrinkAndClearEv.exit.i, label %bb.l

_ZNK4llvm8DenseMapIPKNS_12LiveIntervalENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE18planShrinkAndClearEv.exit.i: ; preds = %bb.h
  %i.bt = add i32 %i.bn, -1
  %i.bu = call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.bt, i1 false)
  %i.bv = sub nuw nsw i32 33, %i.bu
  %i.bw = shl nuw i32 1, %i.bv                    ; 2 uses
  %.sroa.speculated.i.i = call i32 @llvm.umax.i32(i32 %i.bw, i32 64) ; 3 uses
  %.not.i113 = icmp eq i32 %i.bw, %i.bq
  br i1 %.not.i113, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZNK4llvm8DenseMapIPKNS_12LiveIntervalENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE18planShrinkAndClearEv.exit.i
  store i32 0, ptr %i.ag, align 8, !tbaa !478
  %i.bx = load ptr, ptr %i.ai, align 8, !tbaa !480
  %i.by = zext i32 %.sroa.speculated.i.i to i64
  %i.bz = add nuw nsw i64 %i.by, 31
  %i.ca = lshr i64 %i.bz, 3
  %i.cb = and i64 %i.ca, 1073741820
  call void @llvm.memset.p0.i64(ptr align 4 %i.bx, i8 0, i64 %i.cb, i1 false)
  br label %_ZN4llvm9SetVectorIPKNS_12LiveIntervalENS_11SmallVectorIS3_Lj4EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj4EE5clearEv.exit

bb.j:                                             ; preds = %_ZNK4llvm8DenseMapIPKNS_12LiveIntervalENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEE18planShrinkAndClearEv.exit.i
  %.sroa.39.0.insert.ext.i.i = zext i32 %.sroa.speculated.i.i to i64 ; 2 uses
  %i.cc = load ptr, ptr %7, align 8, !tbaa !490
  %i.cd = zext i32 %i.bq to i64                   ; 2 uses
  %i.ce = shl nuw nsw i64 %i.cd, 3
  %i.cf = add nuw nsw i64 %i.cd, 31
  %i.cg = lshr i64 %i.cf, 3
  %i.ch = and i64 %i.cg, 1073741820
  %i.ci = add nuw nsw i64 %i.ch, %i.ce
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.cc, i64 noundef %i.ci, i64 noundef 8) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %7, i8 0, i64 16, i1 false)
  store i32 %.sroa.speculated.i.i, ptr %i.ah, align 4, !tbaa !479
  %i.cj = shl nuw nsw i64 %.sroa.39.0.insert.ext.i.i, 3
  %i.ck = add nuw nsw i64 %.sroa.39.0.insert.ext.i.i, 31
  %i.cl = lshr i64 %i.ck, 3
  %i.cm = and i64 %i.cl, 1073741820
  %i.cn = add nuw nsw i64 %i.cm, %i.cj
  %i.co = call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.cn, i64 noundef 8) #25 ; 2 uses
  %i.cp = load i32, ptr %i.ah, align 4, !tbaa !479 ; 2 uses
  %i.cq = zext i32 %i.cp to i64                   ; 2 uses
  %i.cr = shl nuw nsw i64 %i.cq, 3
  %i.cs = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.cr ; 2 uses
  store ptr %i.co, ptr %7, align 8, !tbaa !490
  store ptr %i.cs, ptr %i.ai, align 8, !tbaa !480
  store i32 0, ptr %i.ag, align 8, !tbaa !478
  %.not.i.i.i114 = icmp eq i32 %i.cp, 0
  br i1 %.not.i.i.i114, label %_ZN4llvm9SetVectorIPKNS_12LiveIntervalENS_11SmallVectorIS3_Lj4EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj4EE5clearEv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ct = add nuw nsw i64 %i.cq, 31
  %i.cu = lshr i64 %i.ct, 3
  %i.cv = and i64 %i.cu, 1073741820
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.cs, i8 0, i64 %i.cv, i1 false)
  br label %_ZN4llvm9SetVectorIPKNS_12LiveIntervalENS_11SmallVectorIS3_Lj4EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj4EE5clearEv.exit

bb.l:                                             ; preds = %bb.h
  %i.cw = load ptr, ptr %i.ai, align 8, !tbaa !480
  %i.cx = zext i32 %i.bq to i64
  %i.cy = add nuw nsw i64 %i.cx, 31
  %i.cz = lshr i64 %i.cy, 3
  %i.da = and i64 %i.cz, 1073741820
  call void @llvm.memset.p0.i64(ptr align 4 %i.cw, i8 0, i64 %i.da, i1 false)
  store i32 0, ptr %i.ag, align 8, !tbaa !478
  br label %_ZN4llvm9SetVectorIPKNS_12LiveIntervalENS_11SmallVectorIS3_Lj4EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj4EE5clearEv.exit
end_hunk_0
