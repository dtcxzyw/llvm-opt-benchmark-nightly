inline.NumInlined: 1690
inline.NumDeleted: 895
begin_hunk_0_@_ZN6hermes9IRPrinter16printInstructionEPNS_11InstructionE:bb.a
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit118, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  br label %bb.aq

bb.aq:                                            ; preds = %bb.aj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.ak, %._crit_edge
  %.258 = phi ptr [ @.str.23, %._crit_edge ], [ @.str.23, %bb.aj ], [ @.str.19, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ @.str.23, %bb.ak ] ; 5 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.is = load i8, ptr %i.ir, align 4, !tbaa !217, !range !38, !noundef !39
  %i.it = trunc nuw i8 %i.is to i1
  br i1 %i.it, label %bb.ar, label %_ZN6hermes9IRPrinter15printScopeLabelEPNS_9ScopeDescE.exit

bb.ar:                                            ; preds = %bb.aq
  %i.iu = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !218 ; 3 uses
  %.not71 = icmp eq ptr %i.iv, null
  br i1 %.not71, label %_ZN6hermes9IRPrinter15printScopeLabelEPNS_9ScopeDescE.exit, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.iw = load ptr, ptr %i.f, align 8, !tbaa !75, !nonnull !39, !align !76 ; 5 uses
  %i.ix = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.258) #18 ; 5 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.iw, i64 16
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !77
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iw, i64 24 ; 3 uses
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !80 ; 3 uses
  %i.jc = ptrtoint ptr %i.iz to i64
  %i.jd = ptrtoint ptr %i.jb to i64
  %i.je = sub i64 %i.jc, %i.jd
  %i.jf = icmp ugt i64 %i.ix, %i.je
  br i1 %i.jf, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.jg = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.iw, ptr noundef nonnull %.258, i64 noundef %i.ix) #15 ; 2 uses
  %.phi.trans.insert173 = getelementptr inbounds nuw i8, ptr %i.jg, i64 24
  %.pre174 = load ptr, ptr %.phi.trans.insert173, align 8, !tbaa !80
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit125

bb.au:                                            ; preds = %bb.as
  %.not.i2.i123 = icmp eq i64 %i.ix, 0
  br i1 %.not.i2.i123, label %_ZN4llvh11raw_ostreamlsEPKc.exit125, label %bb.av

bb.av:                                            ; preds = %bb.au
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.jb, ptr nonnull align 1 %.258, i64 %i.ix, i1 false)
  %i.jh = load ptr, ptr %i.ja, align 8, !tbaa !80
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 %i.ix ; 2 uses
  store ptr %i.ji, ptr %i.ja, align 8, !tbaa !80
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit125

_ZN4llvh11raw_ostreamlsEPKc.exit125:              ; preds = %bb.at, %bb.au, %bb.av
  %i.jj = phi ptr [ %.pre174, %bb.at ], [ %i.ji, %bb.av ], [ %i.jb, %bb.au ] ; 2 uses
  %.0.i.i124 = phi ptr [ %i.jg, %bb.at ], [ %i.iw, %bb.av ], [ %i.iw, %bb.au ] ; 3 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %.0.i.i124, i64 16
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !77
  %i.jm = ptrtoint ptr %i.jl to i64
  %i.jn = ptrtoint ptr %i.jj to i64
  %i.jo = sub i64 %i.jm, %i.jn
  %i.jp = icmp ult i64 %i.jo, 7
  br i1 %i.jp, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit125
  %i.jq = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i124, ptr noundef nonnull @.str.25, i64 noundef 7) #15 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit128

bb.ax:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit125
  %i.jr = getelementptr inbounds nuw i8, ptr %.0.i.i124, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.jj, ptr noundef nonnull align 1 dereferenceable(7) @.str.25, i64 7, i1 false)
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !80
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 7
  store ptr %i.jt, ptr %i.jr, align 8, !tbaa !80
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit128

_ZN4llvh11raw_ostreamlsEPKc.exit128:              ; preds = %bb.aw, %bb.ax
  %i.ju = load ptr, ptr %i.f, align 8, !tbaa !75, !nonnull !39, !align !76 ; 3 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 16
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !77
  %i.jx = getelementptr inbounds nuw i8, ptr %i.ju, i64 24 ; 3 uses
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !80 ; 2 uses
  %i.jz = ptrtoint ptr %i.jw to i64
  %i.ka = ptrtoint ptr %i.jy to i64
  %i.kb = sub i64 %i.jz, %i.ka
  %i.kc = icmp ult i64 %i.kb, 2
  br i1 %i.kc, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit128
  %i.kd = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.ju, ptr noundef nonnull @.str.31, i64 noundef 2) #15 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit.i

bb.az:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit128
  store i16 31571, ptr %i.jy, align 1
  %i.ke = load ptr, ptr %i.jx, align 8, !tbaa !80
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 2
  store ptr %i.kf, ptr %i.jx, align 8, !tbaa !80
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit.i

_ZN4llvh11raw_ostreamlsEPKc.exit.i:               ; preds = %bb.az, %bb.ay
  %i.kg = getelementptr inbounds nuw i8, ptr %i.iv, i64 144 ; 2 uses
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !133
  call void @_ZN6hermes9IRPrinter17printFunctionNameEPNS_8FunctionENS0_19PrintFunctionParamsE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef %i.kh, i32 noundef 0)
  %i.ki = load ptr, ptr %i.kg, align 8, !tbaa !133
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 72
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !153
  call void @_ZN6hermes9IRPrinter15printScopeRangeEPNS_9ScopeDescES2_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull %i.iv, ptr noundef %i.kk)
  %i.kl = load ptr, ptr %i.f, align 8, !tbaa !75, !nonnull !39, !align !76 ; 3 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 16
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !77
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kl, i64 24 ; 3 uses
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !80 ; 2 uses
  %i.kq = icmp eq ptr %i.kn, %i.kp
  br i1 %i.kq, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit.i
  %i.kr = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.kl, ptr noundef nonnull @.str.32, i64 noundef 1) #15 ; 0 uses
  br label %_ZN6hermes9IRPrinter15printScopeLabelEPNS_9ScopeDescE.exit

bb.bb:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit.i
  store i8 125, ptr %i.kp, align 1
  %i.ks = load ptr, ptr %i.ko, align 8, !tbaa !80
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 1
  store ptr %i.kt, ptr %i.ko, align 8, !tbaa !80
  br label %_ZN6hermes9IRPrinter15printScopeLabelEPNS_9ScopeDescE.exit

_ZN6hermes9IRPrinter15printScopeLabelEPNS_9ScopeDescE.exit: ; preds = %bb.bb, %bb.ba, %bb.ar, %bb.aq
  %.4 = phi ptr [ %.258, %bb.aq ], [ %.258, %bb.ar ], [ @.str.19, %bb.ba ], [ @.str.19, %bb.bb ] ; 3 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %4, i64 6
  %i.kv = load i8, ptr %i.ku, align 2, !tbaa !219, !range !38, !noundef !39
  %i.kw = trunc nuw i8 %i.kv to i1
  br i1 %i.kw, label %bb.bc, label %bb.br

bb.bc:                                            ; preds = %_ZN6hermes9IRPrinter15printScopeLabelEPNS_9ScopeDescE.exit
  %i.kx = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK6hermes5Value8getUsersEv(ptr noundef nonnull align 8 dereferenceable(40) %i.ah) #15
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 8
  %i.kz = load i32, ptr %i.ky, align 8, !tbaa !178
  %.not.i129 = icmp eq i32 %i.kz, 0
  br i1 %.not.i129, label %bb.br, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 20, i1 false)
  %i.la = load ptr, ptr %i.f, align 8, !tbaa !75, !nonnull !39, !align !76 ; 5 uses
  %i.lb = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.4) #18 ; 5 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.la, i64 16
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !77
  %i.le = getelementptr inbounds nuw i8, ptr %i.la, i64 24 ; 3 uses
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !80 ; 3 uses
  %i.lg = ptrtoint ptr %i.ld to i64
  %i.lh = ptrtoint ptr %i.lf to i64
  %i.li = sub i64 %i.lg, %i.lh
  %i.lj = icmp ugt i64 %i.lb, %i.li
  br i1 %i.lj, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.lk = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.la, ptr noundef nonnull %.4, i64 noundef %i.lb) #15 ; 2 uses
  %.phi.trans.insert175 = getelementptr inbounds nuw i8, ptr %i.lk, i64 24
  %.pre176 = load ptr, ptr %.phi.trans.insert175, align 8, !tbaa !80
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit133

bb.bf:                                            ; preds = %bb.bd
  %.not.i2.i131 = icmp eq i64 %i.lb, 0
  br i1 %.not.i2.i131, label %_ZN4llvh11raw_ostreamlsEPKc.exit133, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.lf, ptr nonnull align 1 %.4, i64 %i.lb, i1 false)
  %i.ll = load ptr, ptr %i.le, align 8, !tbaa !80
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 %i.lb ; 2 uses
  store ptr %i.lm, ptr %i.le, align 8, !tbaa !80
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit133

_ZN4llvh11raw_ostreamlsEPKc.exit133:              ; preds = %bb.be, %bb.bf, %bb.bg
  %i.ln = phi ptr [ %.pre176, %bb.be ], [ %i.lm, %bb.bg ], [ %i.lf, %bb.bf ] ; 2 uses
  %.0.i.i132 = phi ptr [ %i.lk, %bb.be ], [ %i.la, %bb.bg ], [ %i.la, %bb.bf ] ; 3 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %.0.i.i132, i64 16
  %i.lp = load ptr, ptr %i.lo, align 8, !tbaa !77
  %i.lq = ptrtoint ptr %i.lp to i64
  %i.lr = ptrtoint ptr %i.ln to i64
  %i.ls = sub i64 %i.lq, %i.lr
  %i.lt = icmp ult i64 %i.ls, 6
  br i1 %i.lt, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit133
  %i.lu = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i132, ptr noundef nonnull @.str.26, i64 noundef 6) #15 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit136

bb.bi:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit133
  %i.lv = getelementptr inbounds nuw i8, ptr %.0.i.i132, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.ln, ptr noundef nonnull align 1 dereferenceable(6) @.str.26, i64 6, i1 false)
  %i.lw = load ptr, ptr %i.lv, align 8, !tbaa !80
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 6
  store ptr %i.lx, ptr %i.lv, align 8, !tbaa !80
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit136

_ZN4llvh11raw_ostreamlsEPKc.exit136:              ; preds = %bb.bh, %bb.bi
  %i.ly = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK6hermes5Value8getUsersEv(ptr noundef nonnull align 8 dereferenceable(40) %i.ah) #15 ; 2 uses
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !177 ; 2 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %i.ly, i64 8
  %i.mb = load i32, ptr %i.ma, align 8, !tbaa !178 ; 2 uses
  %i.mc = zext i32 %i.mb to i64
  %.idx = shl nuw nsw i64 %i.mc, 3
  %i.md = getelementptr inbounds nuw i8, ptr %i.lz, i64 %.idx
  %.not72168 = icmp eq i32 %i.mb, 0
  %.pre179 = load ptr, ptr %6, align 8, !tbaa !220 ; 2 uses
  br i1 %.not72168, label %._crit_edge171, label %.lr.ph170

.lr.ph170:                                        ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit136
  %i.me = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.mf = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.mg = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.mh = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  br label %bb.bj

._crit_edge171:                                   ; preds = %bb.bq, %_ZN4llvh11raw_ostreamlsEPKc.exit136
  %7 = phi ptr [ %.pre179, %_ZN4llvh11raw_ostreamlsEPKc.exit136 ], [ %9, %bb.bq ]
  call void @_ZdlPv(ptr noundef %7) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  br label %bb.br

bb.bj:                                            ; preds = %.lr.ph170, %bb.bq
  %8 = phi ptr [ %.pre179, %.lr.ph170 ], [ %9, %bb.bq ] ; 6 uses
  %.055169 = phi ptr [ %i.lz, %.lr.ph170 ], [ %i.oo, %bb.bq ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  %i.mj = load ptr, ptr %.055169, align 8, !tbaa !223 ; 4 uses
  store ptr %i.mj, ptr %i.b, align 8, !tbaa !223
  %i.mk = load i32, ptr %i.me, align 8, !tbaa !225 ; 4 uses
  %i.ml = icmp eq i32 %i.mk, 0
  br i1 %i.ml, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes11InstructionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIPKS3_EEbRKT_RPSA_.exit.i.i, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.mm = ptrtoint ptr %i.mj to i64
  %i.mn = trunc i64 %i.mm to i32                  ; 2 uses
  %i.mo = lshr i32 %i.mn, 4
  %i.mp = lshr i32 %i.mn, 9
  %i.mq = xor i32 %i.mo, %i.mp
  %i.mr = add i32 %i.mk, -1                       ; 2 uses
  %.02944.i.i.i.i = and i32 %i.mr, %i.mq          ; 2 uses
  %i.ms = zext nneg i32 %.02944.i.i.i.i to i64
  %i.mt = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %i.ms ; 2 uses
  %i.mu = load ptr, ptr %i.mt, align 8, !tbaa !223 ; 2 uses
  %i.mv = icmp eq ptr %i.mj, %i.mu
  br i1 %i.mv, label %_ZN4llvh6detail12DenseSetImplIPN6hermes11InstructionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E4findEPKS3_.exit, label %.lr.ph.i.i.i.i, !prof !226

.lr.ph.i.i.i.i:                                   ; preds = %bb.bk, %bb.bl
  %i.mw = phi ptr [ %i.nc, %bb.bl ], [ %i.mu, %bb.bk ]
  %.02947.i.i.i.i = phi i32 [ %.029.i.i.i.i, %bb.bl ], [ %.02944.i.i.i.i, %bb.bk ]
  %.02746.i.i.i.i = phi i32 [ %i.my, %bb.bl ], [ 1, %bb.bk ] ; 2 uses
  %i.mx = icmp eq ptr %i.mw, inttoptr (i64 -8 to ptr)
  br i1 %i.mx, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes11InstructionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIPKS3_EEbRKT_RPSA_.exit.i.i, label %bb.bl, !prof !227

bb.bl:                                            ; preds = %.lr.ph.i.i.i.i
  %i.my = add i32 %.02746.i.i.i.i, 1
  %i.mz = add i32 %.02746.i.i.i.i, %.02947.i.i.i.i
  %.029.i.i.i.i = and i32 %i.mz, %i.mr            ; 2 uses
  %i.na = zext i32 %.029.i.i.i.i to i64           ; 2 uses
  %i.nb = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %i.na
  %i.nc = load ptr, ptr %i.nb, align 8, !tbaa !223 ; 2 uses
  %i.nd = icmp eq ptr %i.mj, %i.nc
  br i1 %i.nd, label %_ZN4llvh6detail12DenseSetImplIPN6hermes11InstructionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E4findEPKS3_.exit.loopexit, label %.lr.ph.i.i.i.i, !prof !228, !llvm.loop !229

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes11InstructionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIPKS3_EEbRKT_RPSA_.exit.i.i: ; preds = %.lr.ph.i.i.i.i, %bb.bj
  %i.ne = zext i32 %i.mk to i64
  %i.nf = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %i.ne
  br label %_ZN4llvh6detail12DenseSetImplIPN6hermes11InstructionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E4findEPKS3_.exit

_ZN4llvh6detail12DenseSetImplIPN6hermes11InstructionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E4findEPKS3_.exit.loopexit: ; preds = %bb.bl
  %i.ng = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %i.na
  br label %_ZN4llvh6detail12DenseSetImplIPN6hermes11InstructionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E4findEPKS3_.exit

_ZN4llvh6detail12DenseSetImplIPN6hermes11InstructionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E4findEPKS3_.exit: ; preds = %_ZN4llvh6detail12DenseSetImplIPN6hermes11InstructionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E4findEPKS3_.exit.loopexit, %bb.bk, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes11InstructionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIPKS3_EEbRKT_RPSA_.exit.i.i
  %.sink.i.i.ph.pn.i.i = phi ptr [ %i.nf, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes11InstructionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIPKS3_EEbRKT_RPSA_.exit.i.i ], [ %i.mt, %bb.bk ], [ %i.ng, %_ZN4llvh6detail12DenseSetImplIPN6hermes11InstructionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E4findEPKS3_.exit.loopexit ]
  %i.nh = zext i32 %i.mk to i64
  %i.ni = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %i.nh
  %.not164 = icmp eq ptr %.sink.i.i.ph.pn.i.i, %i.ni
  br i1 %.not164, label %bb.bm, label %bb.bq

bb.bm:                                            ; preds = %_ZN4llvh6detail12DenseSetImplIPN6hermes11InstructionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E4findEPKS3_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15, !noalias !230
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15, !noalias !230
  call void @_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes11InstructionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E11try_emplaceIJRS6_EEESt4pairINS_16DenseMapIteratorIS4_S6_S8_SA_Lb0EEEbERKS4_DpOT_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.208") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(1) %2), !noalias !230
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15, !noalias !230
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15, !noalias !230
  %i.nj = load ptr, ptr %i.f, align 8, !tbaa !75, !nonnull !39, !align !76 ; 4 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 16
  %i.nl = load ptr, ptr %i.nk, align 8, !tbaa !77
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nj, i64 24 ; 3 uses
  %i.nn = load ptr, ptr %i.nm, align 8, !tbaa !80 ; 2 uses
  %i.no = ptrtoint ptr %i.nl to i64
  %i.np = ptrtoint ptr %i.nn to i64
  %i.nq = sub i64 %i.no, %i.np
  %i.nr = icmp ult i64 %i.nq, 2
  br i1 %i.nr, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.ns = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.nj, ptr noundef nonnull @.str.27, i64 noundef 2) #15
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit139

bb.bo:                                            ; preds = %bb.bm
  store i16 9504, ptr %i.nn, align 1
  %i.nt = load ptr, ptr %i.nm, align 8, !tbaa !80
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nt, i64 2
  store ptr %i.nu, ptr %i.nm, align 8, !tbaa !80
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit139

_ZN4llvh11raw_ostreamlsEPKc.exit139:              ; preds = %bb.bn, %bb.bo
  %.0.i.i138 = phi ptr [ %i.ns, %bb.bn ], [ %i.nj, %bb.bo ]
  %i.nv = load ptr, ptr %i.b, align 8, !tbaa !223 ; 2 uses
  %i.nw = icmp eq ptr %i.nv, null
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nv, i64 16
  %spec.select = select i1 %i.nw, ptr null, ptr %i.nx ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %spec.select, ptr %i.a, align 8, !tbaa !68
  %i.ny = load ptr, ptr %i.mg, align 8, !tbaa !64 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.ny, null
  br i1 %.not10.i.i.i.i, label %_ZNSt3mapIPN6hermes5ValueEjSt4lessIS2_ESaISt4pairIKS2_jEEE4findERS6_.exit.thread.i, label %.lr.ph.i.i.i.i140

.lr.ph.i.i.i.i140:                                ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit139, %.lr.ph.i.i.i.i140
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i140 ], [ %i.ny, %_ZN4llvh11raw_ostreamlsEPKc.exit139 ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i140 ], [ %i.mh, %_ZN4llvh11raw_ostreamlsEPKc.exit139 ]
  %i.nz = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.oa = load ptr, ptr %i.nz, align 8, !tbaa !68
  %i.ob = icmp ult ptr %i.oa, %spec.select        ; 2 uses
  %.19.i.i.i.i = select i1 %i.ob, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 4 uses
  %.1.in.v.i.i.i.i = select i1 %i.ob, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !70 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt8_Rb_treeIPN6hermes5ValueESt4pairIKS2_jESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS4_.exit.i.i.i, label %.lr.ph.i.i.i.i140, !llvm.loop !71

_ZNSt8_Rb_treeIPN6hermes5ValueESt4pairIKS2_jESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS4_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i140
  %i.oc = icmp eq ptr %.19.i.i.i.i, %i.mh
  br i1 %i.oc, label %_ZNSt3mapIPN6hermes5ValueEjSt4lessIS2_ESaISt4pairIKS2_jEEE4findERS6_.exit.thread.i, label %_ZNSt3mapIPN6hermes5ValueEjSt4lessIS2_ESaISt4pairIKS2_jEEE4findERS6_.exit.i

_ZNSt3mapIPN6hermes5ValueEjSt4lessIS2_ESaISt4pairIKS2_jEEE4findERS6_.exit.i: ; preds = %_ZNSt8_Rb_treeIPN6hermes5ValueESt4pairIKS2_jESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS4_.exit.i.i.i
  %i.od = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.oe = load ptr, ptr %i.od, align 8, !tbaa !68
  %i.of = icmp ult ptr %spec.select, %i.oe
  br i1 %i.of, label %_ZNSt3mapIPN6hermes5ValueEjSt4lessIS2_ESaISt4pairIKS2_jEEE4findERS6_.exit.thread.i, label %bb.bp

bb.bp:                                            ; preds = %_ZNSt3mapIPN6hermes5ValueEjSt4lessIS2_ESaISt4pairIKS2_jEEE4findERS6_.exit.i
  %i.og = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.oh = load i32, ptr %i.og, align 8, !tbaa !72
  br label %_ZN6hermes16InstructionNamer9getNumberEPNS_5ValueE.exit

_ZNSt3mapIPN6hermes5ValueEjSt4lessIS2_ESaISt4pairIKS2_jEEE4findERS6_.exit.thread.i: ; preds = %_ZNSt3mapIPN6hermes5ValueEjSt4lessIS2_ESaISt4pairIKS2_jEEE4findERS6_.exit.i, %_ZNSt8_Rb_treeIPN6hermes5ValueESt4pairIKS2_jESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS4_.exit.i.i.i, %_ZN4llvh11raw_ostreamlsEPKc.exit139
  %i.oi = load i32, ptr %i.mi, align 8, !tbaa !63
  %i.oj = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3mapIPN6hermes5ValueEjSt4lessIS2_ESaISt4pairIKS2_jEEEixERS6_(ptr noundef nonnull align 8 dereferenceable(52) %i.mf, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  store i32 %i.oi, ptr %i.oj, align 4, !tbaa !3
  %i.ok = load i32, ptr %i.mi, align 8, !tbaa !63 ; 2 uses
  %i.ol = add i32 %i.ok, 1
  store i32 %i.ol, ptr %i.mi, align 8, !tbaa !63
  br label %_ZN6hermes16InstructionNamer9getNumberEPNS_5ValueE.exit

_ZN6hermes16InstructionNamer9getNumberEPNS_5ValueE.exit: ; preds = %bb.bp, %_ZNSt3mapIPN6hermes5ValueEjSt4lessIS2_ESaISt4pairIKS2_jEEE4findERS6_.exit.thread.i
  %.0.i141 = phi i32 [ %i.oh, %bb.bp ], [ %i.ok, %_ZNSt3mapIPN6hermes5ValueEjSt4lessIS2_ESaISt4pairIKS2_jEEE4findERS6_.exit.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.om = zext i32 %.0.i141 to i64
  %i.on = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i138, i64 noundef %i.om) #15 ; 0 uses
  %.pre177 = load ptr, ptr %6, align 8, !tbaa !220
  br label %bb.bq

bb.bq:                                            ; preds = %_ZN4llvh6detail12DenseSetImplIPN6hermes11InstructionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E4findEPKS3_.exit, %_ZN6hermes16InstructionNamer9getNumberEPNS_5ValueE.exit
  %9 = phi ptr [ %8, %_ZN4llvh6detail12DenseSetImplIPN6hermes11InstructionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E4findEPKS3_.exit ], [ %.pre177, %_ZN6hermes16InstructionNamer9getNumberEPNS_5ValueE.exit ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  %i.oo = getelementptr inbounds nuw i8, ptr %.055169, i64 8 ; 2 uses
  %.not72 = icmp eq ptr %i.oo, %i.md
  br i1 %.not72, label %._crit_edge171, label %bb.bj

bb.br:                                            ; preds = %_ZN6hermes9IRPrinter15printScopeLabelEPNS_9ScopeDescE.exit, %bb.bc, %._crit_edge171
  %i.op = load i32, ptr %i.gd, align 8
  %i.oq = and i32 %i.op, 1
  %.not.i.i.i.i142 = icmp eq i32 %i.oq, 0
  br i1 %.not.i.i.i.i142, label %bb.bs, label %_ZN4llvh6detail12DenseSetImplINS_9StringRefENS_13SmallDenseMapIS2_NS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_EENS0_12DenseSetPairIS2_EEEES6_ED2Ev.exit.i

bb.bs:                                            ; preds = %bb.br
  %i.or = load ptr, ptr %.06.i.i.ptr.i.i.i.i, align 8, !tbaa !233
  call void @_ZdlPv(ptr noundef %i.or) #15
  br label %_ZN4llvh6detail12DenseSetImplINS_9StringRefENS_13SmallDenseMapIS2_NS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_EENS0_12DenseSetPairIS2_EEEES6_ED2Ev.exit.i

_ZN4llvh6detail12DenseSetImplINS_9StringRefENS_13SmallDenseMapIS2_NS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_EENS0_12DenseSetPairIS2_EEEES6_ED2Ev.exit.i: ; preds = %bb.bs, %bb.br
  %i.os = load i32, ptr %i.ga, align 8
  %i.ot = and i32 %i.os, 1
  %.not.i.i.i.i.i = icmp eq i32 %i.ot, 0
  br i1 %.not.i.i.i.i.i, label %bb.bt, label %_ZN4llvh6detail12DenseSetImplINS_9StringRefENS_13SmallDenseMapIS2_NS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_EENS0_12DenseSetPairIS2_EEEES6_ED2Ev.exit.i.i

bb.bt:                                            ; preds = %_ZN4llvh6detail12DenseSetImplINS_9StringRefENS_13SmallDenseMapIS2_NS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_EENS0_12DenseSetPairIS2_EEEES6_ED2Ev.exit.i
  %i.ou = load ptr, ptr %.06.i.i.ptr.i.i.i4.i13.i, align 8, !tbaa !233
  call void @_ZdlPv(ptr noundef %i.ou) #15
  br label %_ZN4llvh6detail12DenseSetImplINS_9StringRefENS_13SmallDenseMapIS2_NS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_EENS0_12DenseSetPairIS2_EEEES6_ED2Ev.exit.i.i

_ZN4llvh6detail12DenseSetImplINS_9StringRefENS_13SmallDenseMapIS2_NS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_EENS0_12DenseSetPairIS2_EEEES6_ED2Ev.exit.i.i: ; preds = %bb.bt, %_ZN4llvh6detail12DenseSetImplINS_9StringRefENS_13SmallDenseMapIS2_NS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_EENS0_12DenseSetPairIS2_EEEES6_ED2Ev.exit.i
  %i.ov = load i32, ptr %i.fx, align 8
  %i.ow = and i32 %i.ov, 1
  %.not.i.i.i1.i.i = icmp eq i32 %i.ow, 0
  br i1 %.not.i.i.i1.i.i, label %bb.bu, label %_ZN6hermes35CodeGenerationSettings_DumpSettingsD2Ev.exit.i

bb.bu:                                            ; preds = %_ZN4llvh6detail12DenseSetImplINS_9StringRefENS_13SmallDenseMapIS2_NS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_EENS0_12DenseSetPairIS2_EEEES6_ED2Ev.exit.i.i
  %i.ox = load ptr, ptr %.06.i.i.ptr.i.i.i.i5.i, align 8, !tbaa !233
  call void @_ZdlPv(ptr noundef %i.ox) #15
  br label %_ZN6hermes35CodeGenerationSettings_DumpSettingsD2Ev.exit.i

_ZN6hermes35CodeGenerationSettings_DumpSettingsD2Ev.exit.i: ; preds = %bb.bu, %_ZN4llvh6detail12DenseSetImplINS_9StringRefENS_13SmallDenseMapIS2_NS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_EENS0_12DenseSetPairIS2_EEEES6_ED2Ev.exit.i.i
  %i.oy = load i32, ptr %i.fr, align 8
  %i.oz = and i32 %i.oy, 1
  %.not.i.i.i.i1.i = icmp eq i32 %i.oz, 0
  br i1 %.not.i.i.i.i1.i, label %bb.bv, label %_ZN4llvh6detail12DenseSetImplINS_9StringRefENS_13SmallDenseMapIS2_NS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_EENS0_12DenseSetPairIS2_EEEES6_ED2Ev.exit.i2.i

bb.bv:                                            ; preds = %_ZN6hermes35CodeGenerationSettings_DumpSettingsD2Ev.exit.i
  %i.pa = load ptr, ptr %.06.i.i.ptr.i.i.i4.i.i, align 8, !tbaa !233
  call void @_ZdlPv(ptr noundef %i.pa) #15
  br label %_ZN4llvh6detail12DenseSetImplINS_9StringRefENS_13SmallDenseMapIS2_NS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_EENS0_12DenseSetPairIS2_EEEES6_ED2Ev.exit.i2.i

_ZN4llvh6detail12DenseSetImplINS_9StringRefENS_13SmallDenseMapIS2_NS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_EENS0_12DenseSetPairIS2_EEEES6_ED2Ev.exit.i2.i: ; preds = %bb.bv, %_ZN6hermes35CodeGenerationSettings_DumpSettingsD2Ev.exit.i
  %i.pb = load i32, ptr %i.fo, align 8
  %i.pc = and i32 %i.pb, 1
  %.not.i.i.i1.i3.i = icmp eq i32 %i.pc, 0
  br i1 %.not.i.i.i1.i3.i, label %bb.bw, label %_ZN6hermes22CodeGenerationSettingsD2Ev.exit

bb.bw:                                            ; preds = %_ZN4llvh6detail12DenseSetImplINS_9StringRefENS_13SmallDenseMapIS2_NS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_EENS0_12DenseSetPairIS2_EEEES6_ED2Ev.exit.i2.i
  %i.pd = load ptr, ptr %.06.i.i.ptr.i.i.i.i.i, align 8, !tbaa !233
  call void @_ZdlPv(ptr noundef %i.pd) #15
  br label %_ZN6hermes22CodeGenerationSettingsD2Ev.exit

_ZN6hermes22CodeGenerationSettingsD2Ev.exit:      ; preds = %_ZN4llvh6detail12DenseSetImplINS_9StringRefENS_13SmallDenseMapIS2_NS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_EENS0_12DenseSetPairIS2_EEEES6_ED2Ev.exit.i2.i, %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  ret void
}

declare { ptr, i64 } @_ZN6hermes11Instruction7getNameEv(ptr noundef nonnull align 8 dereferenceable(132)) local_unnamed_addr #3

declare noundef i32 @_ZNK6hermes11Instruction14getNumOperandsEv(ptr noundef nonnull align 8 dereferenceable(132)) local_unnamed_addr #3

declare noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132), i32 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNK6hermes5Value8getUsersEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes9IRPrinter19printSourceLocationEN4llvh5SMLocE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %0, ptr %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.hermes::SourceErrorManager::SourceCoords", align 4 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  store i32 0, ptr %2, align 4, !tbaa !236
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  store i32 0, ptr %i.a, align 4, !tbaa !238
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i32 0, ptr %i.b, align 4, !tbaa !239
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !240, !nonnull !39, !align !76
  %i.e = call noundef zeroext i1 @_ZN6hermes18SourceErrorManager20findBufferLineAndLocEN4llvh5SMLocERNS0_12SourceCoordsE(ptr noundef nonnull align 8 dereferenceable(464) %i.d, ptr %1, ptr noundef nonnull align 4 dereferenceable(12) %2) #15
  br i1 %i.e, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !75, !nonnull !39, !align !76 ; 5 uses
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !240, !nonnull !39, !align !76 ; 3 uses
  %i.i = load i32, ptr %2, align 4, !tbaa !236    ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 376
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !241  ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 392
  %i.m = load i32, ptr %i.l, align 8, !tbaa !244  ; 4 uses
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E15LookupBucketForIjEEbRKT_RPKSC_.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = mul i32 %i.i, 37
  %i.p = add i32 %i.m, -1                         ; 2 uses
  %.02744.i.i.i = and i32 %i.p, %i.o              ; 2 uses
  %i.q = zext i32 %.02744.i.i.i to i64
  %i.r = getelementptr inbounds nuw [40 x i8], ptr %i.k, i64 %i.q ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !3    ; 2 uses
  %i.t = icmp eq i32 %i.i, %i.s
  br i1 %i.t, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E4findERKj.exit.i, label %.lr.ph.i.i.i, !prof !226

.lr.ph.i.i.i:                                     ; preds = %bb.c, %bb.d
  %i.u = phi i32 [ %i.aa, %bb.d ], [ %i.s, %bb.c ]
  %.02747.i.i.i = phi i32 [ %.027.i.i.i, %bb.d ], [ %.02744.i.i.i, %bb.c ]
  %.02546.i.i.i = phi i32 [ %i.w, %bb.d ], [ 1, %bb.c ] ; 2 uses
  %i.v = icmp eq i32 %i.u, -1
  br i1 %i.v, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E15LookupBucketForIjEEbRKT_RPKSC_.exit.i.i, label %bb.d, !prof !227

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.w = add i32 %.02546.i.i.i, 1
  %i.x = add i32 %.02546.i.i.i, %.02747.i.i.i
  %.027.i.i.i = and i32 %i.x, %i.p                ; 2 uses
  %i.y = zext i32 %.027.i.i.i to i64
  %i.z = getelementptr inbounds nuw [40 x i8], ptr %i.k, i64 %i.y ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !3   ; 2 uses
  %i.ab = icmp eq i32 %i.i, %i.aa
  br i1 %i.ab, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E4findERKj.exit.i, label %.lr.ph.i.i.i, !prof !228, !llvm.loop !245

_ZNK4llvh12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E15LookupBucketForIjEEbRKT_RPKSC_.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.b
  %i.ac = zext i32 %i.m to i64
  %i.ad = getelementptr inbounds nuw [40 x i8], ptr %i.k, i64 %i.ac
  br label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E4findERKj.exit.i

_ZNK4llvh12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E4findERKj.exit.i: ; preds = %bb.d, %_ZNK4llvh12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E15LookupBucketForIjEEbRKT_RPKSC_.exit.i.i, %bb.c
  %.sink.i.ph.pn.i.i = phi ptr [ %i.ad, %_ZNK4llvh12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E15LookupBucketForIjEEbRKT_RPKSC_.exit.i.i ], [ %i.r, %bb.c ], [ %i.z, %bb.d ] ; 3 uses
  %i.ae = zext i32 %i.m to i64
  %i.af = getelementptr inbounds nuw [40 x i8], ptr %i.k, i64 %i.ae
  %.not.i = icmp eq ptr %.sink.i.ph.pn.i.i, %i.af
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNK4llvh12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E4findERKj.exit.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.sink.i.ph.pn.i.i, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !19
  %i.ai = getelementptr inbounds nuw i8, ptr %.sink.i.ph.pn.i.i, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !14
  %i.ak = insertvalue { ptr, i64 } poison, ptr %i.ah, 0
  %i.al = insertvalue { ptr, i64 } %i.ak, i64 %i.aj, 1
  br label %_ZNK6hermes18SourceErrorManager12getSourceUrlEj.exit

bb.f:                                             ; preds = %_ZNK4llvh12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E4findERKj.exit.i
  %i.am = call { ptr, i64 } @_ZNK6hermes18SourceErrorManager17getBufferFileNameEj(ptr noundef nonnull align 8 dereferenceable(464) %i.h, i32 noundef %i.i) #15
  br label %_ZNK6hermes18SourceErrorManager12getSourceUrlEj.exit

_ZNK6hermes18SourceErrorManager12getSourceUrlEj.exit: ; preds = %bb.e, %bb.f
  %.fca.1.insert.merged.i = phi { ptr, i64 } [ %i.al, %bb.e ], [ %i.am, %bb.f ] ; 2 uses
  %i.an = extractvalue { ptr, i64 } %.fca.1.insert.merged.i, 0 ; 2 uses
  %i.ao = extractvalue { ptr, i64 } %.fca.1.insert.merged.i, 1 ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !77
  %i.ar = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 3 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !80 ; 3 uses
  %i.at = ptrtoint ptr %i.aq to i64
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = sub i64 %i.at, %i.au
  %i.aw = icmp ugt i64 %i.ao, %i.av
  br i1 %i.aw, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNK6hermes18SourceErrorManager12getSourceUrlEj.exit
  %i.ax = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.g, ptr noundef %i.an, i64 noundef %i.ao) #15 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !80
  br label %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit

bb.h:                                             ; preds = %_ZNK6hermes18SourceErrorManager12getSourceUrlEj.exit
  %.not.i3 = icmp eq i64 %i.ao, 0
  br i1 %.not.i3, label %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.as, ptr align 1 %i.an, i64 %i.ao, i1 false)
  %i.ay = load ptr, ptr %i.ar, align 8, !tbaa !80
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.ao ; 2 uses
  store ptr %i.az, ptr %i.ar, align 8, !tbaa !80
  br label %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit

_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit:      ; preds = %bb.g, %bb.h, %bb.i
  %i.ba = phi ptr [ %.pre, %bb.g ], [ %i.az, %bb.i ], [ %i.as, %bb.h ] ; 2 uses
  %.0.i = phi ptr [ %i.ax, %bb.g ], [ %i.g, %bb.i ], [ %i.g, %bb.h ] ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !77
  %i.bd = icmp eq ptr %i.bc, %i.ba
  br i1 %i.bd, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit
  %i.be = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i, ptr noundef nonnull @.str.28, i64 noundef 1) #15
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit

bb.k:                                             ; preds = %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %.0.i, i64 24 ; 2 uses
  store i8 58, ptr %i.ba, align 1
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !80
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 1
end_hunk_0
