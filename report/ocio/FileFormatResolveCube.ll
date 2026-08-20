inline.NumInlined: 1134
inline.NumDeleted: 403
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat4readERSiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13InterpolationE:bb.a
vec.epilog.vector.body1877:                       ; preds = %vec.epilog.vector.body1877, %vec.epilog.ph1875
  %index1878 = phi i64 [ %vec.epilog.resume.val1870, %vec.epilog.ph1875 ], [ %index.next1881, %vec.epilog.vector.body1877 ] ; 2 uses
  %next.gep1879 = getelementptr i8, ptr %i.js, i64 %index1878 ; 2 uses
  %wide.load1880 = load <8 x i8>, ptr %next.gep1879, align 1, !tbaa !17, !noalias !65 ; 3 uses
  %i.ki = add <8 x i8> %wide.load1880, splat (i8 -65)
  %i.kj = icmp ult <8 x i8> %i.ki, splat (i8 26)
  %i.kk = or disjoint <8 x i8> %wide.load1880, splat (i8 32)
  %i.kl = select <8 x i1> %i.kj, <8 x i8> %i.kk, <8 x i8> %wide.load1880
  store <8 x i8> %i.kl, ptr %next.gep1879, align 1, !tbaa !17, !noalias !65
  %index.next1881 = add nuw i64 %index1878, 8     ; 2 uses
  %i.km = icmp eq i64 %index.next1881, %n.vec1876
  br i1 %i.km, label %vec.epilog.middle.block1882, label %vec.epilog.vector.body1877, !llvm.loop !69

vec.epilog.middle.block1882:                      ; preds = %vec.epilog.vector.body1877
  %cmp.n1883 = icmp eq i64 %i.jt, %n.vec1876
  br i1 %cmp.n1883, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i284, label %.lr.ph.i.i279.preheader

.lr.ph.i.i279.preheader:                          ; preds = %iter.check1871, %vec.epilog.iter.check1873, %vec.epilog.middle.block1882
  %.sroa.0.08.i.i280.ph = phi ptr [ %i.js, %iter.check1871 ], [ %i.jw, %vec.epilog.iter.check1873 ], [ %i.kh, %vec.epilog.middle.block1882 ]
  br label %.lr.ph.i.i279

.lr.ph.i.i279:                                    ; preds = %.lr.ph.i.i279.preheader, %.lr.ph.i.i279
  %.sroa.0.08.i.i280 = phi ptr [ %i.kq, %.lr.ph.i.i279 ], [ %.sroa.0.08.i.i280.ph, %.lr.ph.i.i279.preheader ] ; 3 uses
  %i.kn = load i8, ptr %.sroa.0.08.i.i280, align 1, !tbaa !17, !noalias !65 ; 3 uses
  %i.ko = add i8 %i.kn, -65
  %or.cond.i.i.i.i281 = icmp ult i8 %i.ko, 26
  %i.kp = or disjoint i8 %i.kn, 32
  %.0.i.i.i.i282 = select i1 %or.cond.i.i.i.i281, i8 %i.kp, i8 %i.kn
  store i8 %.0.i.i.i.i282, ptr %.sroa.0.08.i.i280, align 1, !tbaa !17, !noalias !65
  %i.kq = getelementptr i8, ptr %.sroa.0.08.i.i280, i64 1 ; 2 uses
  %.not.i.i283 = icmp eq ptr %i.kq, %i.ju
  br i1 %.not.i.i283, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i284, label %.lr.ph.i.i279, !llvm.loop !70

_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i284: ; preds = %.lr.ph.i.i279, %vec.epilog.middle.block1882, %middle.block1868
  %.pre.i285 = load ptr, ptr %18, align 8, !tbaa !27, !noalias !65
  br label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i286

_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i286: ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i284, %bb.al
  %i.kr = phi ptr [ %.pre.i285, %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.loopexit.i284 ], [ %i.js, %bb.al ] ; 3 uses
  store ptr %i.bc, ptr %17, align 8, !tbaa !10, !alias.scope !65
  %i.ks = icmp eq ptr %i.kr, %i.ba
  br i1 %i.ks, label %bb.am, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i287

bb.am:                                            ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i286
  %i.kt = load i64, ptr %i.bb, align 8, !tbaa !14, !noalias !65 ; 3 uses
  %i.ku = icmp ult i64 %i.kt, 16
  call void @llvm.assume(i1 %i.ku)
  %i.kv = add nuw nsw i64 %i.kt, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bc, ptr noundef nonnull align 8 dereferenceable(1) %i.ba, i64 %i.kv, i1 false)
  br label %bb.an

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i287: ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN11StringUtils5LowerES8_EUlhE_ET0_T_SD_SC_T1_.exit.i286
  store ptr %i.kr, ptr %17, align 8, !tbaa !27, !alias.scope !65
  %i.kw = load i64, ptr %i.ba, align 8, !tbaa !17, !noalias !65
  store i64 %i.kw, ptr %i.bc, align 8, !tbaa !17, !alias.scope !65
  %.pre4.i288 = load i64, ptr %i.bb, align 8, !tbaa !14, !noalias !65
  br label %bb.an

bb.an:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i287, %bb.am
  %i.kx = phi ptr [ %i.bc, %bb.am ], [ %i.kr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i287 ] ; 4 uses
  %i.ky = phi i64 [ %i.kt, %bb.am ], [ %.pre4.i288, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i287 ] ; 3 uses
  store i64 %i.ky, ptr %i.bd, align 8, !tbaa !14, !alias.scope !65
  store ptr %i.ba, ptr %18, align 8, !tbaa !27, !noalias !65
  store i64 0, ptr %i.bb, align 8, !tbaa !14, !noalias !65
  store i8 0, ptr %i.ba, align 8, !tbaa !17, !noalias !65
  %i.kz = icmp eq i64 %i.ky, 11
  br i1 %i.kz, label %bb.ao, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit291

bb.ao:                                            ; preds = %bb.an
  %i.la = load i64, ptr %i.kx, align 1
  %i.lb = xor i64 %i.la, 8313473600366867820
  %i.lc = getelementptr i8, ptr %i.kx, i64 3
  %i.ld = load i64, ptr %i.lc, align 1
  %i.le = xor i64 %i.ld, 7312272889231978847
  %i.lf = or i64 %i.lb, %i.le
  %i.lg = icmp ne i64 %i.lf, 0
  %i.lh = zext i1 %i.lg to i32
  %i.li = icmp eq i32 %i.lh, 0
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit291

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit291: ; preds = %bb.ao, %bb.an
  %i.lj = phi i1 [ false, %bb.an ], [ %i.li, %bb.ao ]
  %i.lk = icmp eq ptr %i.kx, %i.bc
  br i1 %i.lk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit294.thread, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit294

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit294.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit291
  %i.ll = icmp ult i64 %i.ky, 16
  call void @llvm.assume(i1 %i.ll)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit297

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit294: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit291
  %i.lm = load i64, ptr %i.bc, align 8, !tbaa !17
  %i.ln = add i64 %i.lm, 1
  call void @_ZdlPvm(ptr noundef %i.kx, i64 noundef %i.ln) #24
  %.pre1273 = load ptr, ptr %18, align 8, !tbaa !27 ; 2 uses
  %i.lo = icmp eq ptr %.pre1273, %i.ba
  br i1 %i.lo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit297, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i295

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i295: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit294
  %i.lp = load i64, ptr %i.ba, align 8, !tbaa !17
  %i.lq = add i64 %i.lp, 1
  call void @_ZdlPvm(ptr noundef %.pre1273, i64 noundef %i.lq) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit297

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit297: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit294, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit294.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i295
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  br i1 %i.lj, label %bb.ap, label %bb.bp

bb.ap:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit297
  %i.lr = load ptr, ptr %i.as, align 8, !tbaa !55
  %i.ls = load ptr, ptr %7, align 16, !tbaa !52   ; 2 uses
  %i.lt = ptrtoint ptr %i.lr to i64
  %i.lu = ptrtoint ptr %i.ls to i64
  %i.lv = sub i64 %i.lt, %i.lu
  %.not182 = icmp eq i64 %i.lv, 64
  br i1 %.not182, label %bb.aq, label %.noexc.i299

bb.aq:                                            ; preds = %bb.ap
  %i.lw = getelementptr inbounds nuw i8, ptr %i.ls, i64 32
  %i.lx = load ptr, ptr %i.lw, align 8, !tbaa !27
  %i.ly = invoke noundef zeroext i1 @_ZN16OpenColorIO_v2_511StringToIntEPiPKcb(ptr noundef nonnull %i.w, ptr noundef %i.lx, i1 noundef zeroext false)
          to label %bb.ar unwind label %.loopexit820.loopexit.split-lp.loopexit.loopexit.split-lp

bb.ar:                                            ; preds = %bb.aq
  br i1 %i.ly, label %bb.av, label %.noexc.i299

.noexc.i299:                                      ; preds = %bb.ar, %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #23
  %i.lz = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 4 uses
  store ptr %i.lz, ptr %19, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #23
  store i64 26, ptr %i.p, align 8, !tbaa !40
  %i.ma = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull align 8 dereferenceable(8) %i.p, i64 noundef 0)
          to label %.noexc300 unwind label %bb.at ; 2 uses

.noexc300:                                        ; preds = %.noexc.i299
  store ptr %i.ma, ptr %19, align 8, !tbaa !27
  %i.mb = load i64, ptr %i.p, align 8, !tbaa !40  ; 3 uses
  store i64 %i.mb, ptr %i.lz, align 8, !tbaa !17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(26) %i.ma, ptr noundef nonnull align 1 dereferenceable(26) @.str.8, i64 26, i1 false)
  %i.mc = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i64 %i.mb, ptr %i.mc, align 8, !tbaa !14
  %i.md = load ptr, ptr %19, align 8, !tbaa !27
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 %i.mb
  store i8 0, ptr %i.me, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #23
  invoke fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat17ThrowErrorMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_iS9_(ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef %i.by, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %.unreachable814 unwind label %bb.au

.unreachable814:                                  ; preds = %.noexc300
  unreachable

bb.as:                                            ; preds = %.noexc.i275
  %i.mf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  br label %.loopexit820

bb.at:                                            ; preds = %.noexc.i299
  %i.mg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit313

bb.au:                                            ; preds = %.noexc300
  %i.mh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.mi = load ptr, ptr %19, align 8, !tbaa !27   ; 2 uses
  %i.mj = icmp eq ptr %i.mi, %i.lz
  br i1 %i.mj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit313, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i311

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i311: ; preds = %bb.au
  %i.mk = load i64, ptr %i.lz, align 8, !tbaa !17
  %i.ml = add i64 %i.mk, 1
  call void @_ZdlPvm(ptr noundef %i.mi, i64 noundef %i.ml) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit313

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit313: ; preds = %bb.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i311, %bb.at
  %.pn183 = phi { ptr, i32 } [ %i.mg, %bb.at ], [ %i.mh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i311 ], [ %i.mh, %bb.au ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #23
  br label %.loopexit820

bb.av:                                            ; preds = %bb.ar
  %i.mm = load i32, ptr %i.w, align 4, !tbaa !37  ; 2 uses
  %i.mn = add i32 %i.mm, -300001
  %or.cond = icmp ult i32 %i.mn, -299999
  br i1 %or.cond, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %bb.bm

_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i:    ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #23
  %i.mo = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 3 uses
  store ptr %i.mo, ptr %23, align 8, !tbaa !10, !alias.scope !71
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %23, i64 noundef 6, i8 noundef signext 0)
          to label %bb.aw unwind label %bb.bh

bb.aw:                                            ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i
  %i.mp = load ptr, ptr %23, align 8, !tbaa !27, !alias.scope !71 ; 6 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.mr = load i64, ptr %i.mq, align 8, !tbaa !14, !alias.scope !71 ; 3 uses
  %i.ms = add i64 %i.mr, 4294967295
  %i.mt = and i64 %i.ms, 4294967295               ; 2 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mp, i64 %i.mt
  store i8 48, ptr %i.mu, align 1, !tbaa !17
  %i.mv = add i64 %i.mr, 4294967294
  %i.mw = and i64 %i.mv, 4294967295
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mp, i64 %i.mw
  store i8 48, ptr %i.mx, align 1, !tbaa !17
  %50 = getelementptr i8, ptr %i.mp, i64 %i.mt
  %i.my = getelementptr i8, ptr %50, i64 -2
  store i8 48, ptr %i.my, align 1, !tbaa !17
  %i.mz = add i64 %i.mr, 4294967292
  %i.na = and i64 %i.mz, 4294967295
  %i.nb = getelementptr inbounds nuw i8, ptr %i.mp, i64 %i.na
  store i8 48, ptr %i.nb, align 1, !tbaa !17
  %i.nc = getelementptr inbounds nuw i8, ptr %i.mp, i64 1
  store i8 48, ptr %i.nc, align 1, !tbaa !17
  store i8 51, ptr %i.mp, align 1, !tbaa !17
  %i.nd = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %23, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.9, i64 noundef 34)
          to label %.noexc319 unwind label %bb.bi ; 6 uses

.noexc319:                                        ; preds = %bb.aw
  %i.ne = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 5 uses
  store ptr %i.ne, ptr %22, align 8, !tbaa !10, !alias.scope !74
  %i.nf = load ptr, ptr %i.nd, align 8, !tbaa !27 ; 2 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nd, i64 16 ; 5 uses
  %i.nh = icmp eq ptr %i.nf, %i.ng
  br i1 %i.nh, label %bb.ax, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i317

bb.ax:                                            ; preds = %.noexc319
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nd, i64 8
  %i.nj = load i64, ptr %i.ni, align 8, !tbaa !14 ; 3 uses
  %i.nk = icmp ult i64 %i.nj, 16
  call void @llvm.assume(i1 %i.nk)
  %i.nl = add nuw nsw i64 %i.nj, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ne, ptr noundef nonnull align 8 dereferenceable(1) %i.ng, i64 %i.nl, i1 false)
  br label %bb.ay

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i317: ; preds = %.noexc319
  store ptr %i.nf, ptr %22, align 8, !tbaa !27, !alias.scope !74
  %i.nm = load i64, ptr %i.ng, align 8, !tbaa !17
  store i64 %i.nm, ptr %i.ne, align 8, !tbaa !17, !alias.scope !74
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.nd, i64 8
  %.pre.i318 = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !14
  br label %bb.ay

bb.ay:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i317, %bb.ax
  %i.nn = phi i64 [ %i.nj, %bb.ax ], [ %.pre.i318, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i317 ]
  %i.no = getelementptr inbounds nuw i8, ptr %i.nd, i64 8
  %i.np = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 2 uses
  store i64 %i.nn, ptr %i.np, align 8, !tbaa !14, !alias.scope !74
  store ptr %i.ng, ptr %i.nd, align 8, !tbaa !27
  store i64 0, ptr %i.no, align 8, !tbaa !14
  store i8 0, ptr %i.ng, align 8, !tbaa !17
  call void @llvm.experimental.noalias.scope.decl(metadata !77)
  %i.nq = load i64, ptr %i.np, align 8, !tbaa !14, !noalias !77
  %i.nr = icmp eq i64 %i.nq, 4611686018427387903
  br i1 %i.nr, label %bb.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.az:                                            ; preds = %bb.ay
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.34) #25
          to label %.noexc323 unwind label %bb.bj

.noexc323:                                        ; preds = %bb.az
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.ay
  %i.ns = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull @.str.10, i64 noundef 1)
          to label %.noexc324 unwind label %bb.bj ; 6 uses

.noexc324:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.nt = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 5 uses
  store ptr %i.nt, ptr %21, align 8, !tbaa !10, !alias.scope !77
  %i.nu = load ptr, ptr %i.ns, align 8, !tbaa !27 ; 2 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %i.ns, i64 16 ; 5 uses
  %i.nw = icmp eq ptr %i.nu, %i.nv
  br i1 %i.nw, label %bb.ba, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i320

bb.ba:                                            ; preds = %.noexc324
  %i.nx = getelementptr inbounds nuw i8, ptr %i.ns, i64 8
  %i.ny = load i64, ptr %i.nx, align 8, !tbaa !14 ; 3 uses
  %i.nz = icmp ult i64 %i.ny, 16
  call void @llvm.assume(i1 %i.nz)
  %i.oa = add nuw nsw i64 %i.ny, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.nt, ptr noundef nonnull align 8 dereferenceable(1) %i.nv, i64 %i.oa, i1 false)
  br label %bb.bb

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i320: ; preds = %.noexc324
  store ptr %i.nu, ptr %21, align 8, !tbaa !27, !alias.scope !77
  %i.ob = load i64, ptr %i.nv, align 8, !tbaa !17
  store i64 %i.ob, ptr %i.nt, align 8, !tbaa !17, !alias.scope !77
  %.phi.trans.insert.i321 = getelementptr inbounds nuw i8, ptr %i.ns, i64 8
  %.pre.i322 = load i64, ptr %.phi.trans.insert.i321, align 8, !tbaa !14
  br label %bb.bb

bb.bb:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i320, %bb.ba
  %i.oc = phi i64 [ %i.ny, %bb.ba ], [ %.pre.i322, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i320 ]
  %i.od = getelementptr inbounds nuw i8, ptr %i.ns, i64 8
  %i.oe = getelementptr inbounds nuw i8, ptr %21, i64 8
  store i64 %i.oc, ptr %i.oe, align 8, !tbaa !14, !alias.scope !77
  store ptr %i.nv, ptr %i.ns, align 8, !tbaa !27
  store i64 0, ptr %i.od, align 8, !tbaa !14
  store i8 0, ptr %i.nv, align 8, !tbaa !17
  %i.of = load ptr, ptr %21, align 8, !tbaa !27   ; 4 uses
  %i.og = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 5 uses
  store ptr %i.og, ptr %20, align 8, !tbaa !10
  %i.oh = icmp eq ptr %i.of, null
  br i1 %i.oh, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.33) #25
          to label %.noexc327 unwind label %bb.bk

.noexc327:                                        ; preds = %bb.bc
  unreachable

bb.bd:                                            ; preds = %bb.bb
  %i.oi = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.of) #23 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #23
  store i64 %i.oi, ptr %i.o, align 8, !tbaa !40
  %i.oj = icmp ugt i64 %i.oi, 15
  br i1 %i.oj, label %.noexc.i326, label %._crit_edge.i.i325

.noexc.i326:                                      ; preds = %bb.bd
  %i.ok = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull align 8 dereferenceable(8) %i.o, i64 noundef 0)
          to label %.noexc328 unwind label %bb.bk ; 2 uses

.noexc328:                                        ; preds = %.noexc.i326
  store ptr %i.ok, ptr %20, align 8, !tbaa !27
  %i.ol = load i64, ptr %i.o, align 8, !tbaa !40
  store i64 %i.ol, ptr %i.og, align 8, !tbaa !17
  br label %._crit_edge.i.i325

._crit_edge.i.i325:                               ; preds = %.noexc328, %bb.bd
  %i.om = phi ptr [ %i.ok, %.noexc328 ], [ %i.og, %bb.bd ] ; 2 uses
  switch i64 %i.oi, label %bb.bf [
    i64 1, label %bb.be
    i64 0, label %bb.bg
  ]

bb.be:                                            ; preds = %._crit_edge.i.i325
  %i.on = load i8, ptr %i.of, align 1, !tbaa !17
  store i8 %i.on, ptr %i.om, align 1, !tbaa !17
  br label %bb.bg

bb.bf:                                            ; preds = %._crit_edge.i.i325
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.om, ptr nonnull align 1 %i.of, i64 %i.oi, i1 false)
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be, %._crit_edge.i.i325
  %i.oo = load i64, ptr %i.o, align 8, !tbaa !40  ; 2 uses
  %i.op = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i64 %i.oo, ptr %i.op, align 8, !tbaa !14
  %i.oq = load ptr, ptr %20, align 8, !tbaa !27
  %i.or = getelementptr inbounds nuw i8, ptr %i.oq, i64 %i.oo
  store i8 0, ptr %i.or, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #23
  invoke fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat17ThrowErrorMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_iS9_(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef %i.by, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %.unreachable815 unwind label %bb.bl

.unreachable815:                                  ; preds = %bb.bg
  unreachable

bb.bh:                                            ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i
  %i.os = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit353

bb.bi:                                            ; preds = %bb.aw
  %i.ot = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit350

bb.bj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %bb.az
  %i.ou = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit347

bb.bk:                                            ; preds = %.noexc.i326, %bb.bc
  %i.ov = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit344

bb.bl:                                            ; preds = %bb.bg
  %i.ow = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ox = load ptr, ptr %20, align 8, !tbaa !27   ; 2 uses
  %i.oy = icmp eq ptr %i.ox, %i.og
  br i1 %i.oy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit344, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i342

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i342: ; preds = %bb.bl
  %i.oz = load i64, ptr %i.og, align 8, !tbaa !17
  %i.pa = add i64 %i.oz, 1
  call void @_ZdlPvm(ptr noundef %i.ox, i64 noundef %i.pa) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit344

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit344: ; preds = %bb.bl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i342, %bb.bk
  %.pn185 = phi { ptr, i32 } [ %i.ov, %bb.bk ], [ %i.ow, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i342 ], [ %i.ow, %bb.bl ] ; 2 uses
  %i.pb = load ptr, ptr %21, align 8, !tbaa !27   ; 2 uses
  %i.pc = icmp eq ptr %i.pb, %i.nt
  br i1 %i.pc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit347, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i345

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i345: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit344
  %i.pd = load i64, ptr %i.nt, align 8, !tbaa !17
  %i.pe = add i64 %i.pd, 1
  call void @_ZdlPvm(ptr noundef %i.pb, i64 noundef %i.pe) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit347

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit347: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit344, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i345, %bb.bj
  %.pn185.pn = phi { ptr, i32 } [ %i.ou, %bb.bj ], [ %.pn185, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i345 ], [ %.pn185, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit344 ] ; 2 uses
end_hunk_0
