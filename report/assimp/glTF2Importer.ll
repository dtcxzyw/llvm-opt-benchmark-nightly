inline.NumInlined: 10360
inline.NumDeleted: 3521
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 68
loop-unroll.NumUnrolled: 83
begin_hunk_0_@_ZN5glTF24Mesh4ReadERN9rapidjson12GenericValueINS1_4UTF8IcEENS1_19MemoryPoolAllocatorINS1_12CrtAllocatorEEEEERNS_5AssetE:bb.a
  invoke void @_ZN17DeadlyImportErrorC2IJRA34_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA13_S1_RjRA9_S1_RPS1_RA130_S1_EEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.hi, ptr noundef nonnull align 1 dereferenceable(34) @.str.351, ptr noundef nonnull align 8 dereferenceable(32) %i.bp, ptr noundef nonnull align 1 dereferenceable(13) @.str.352, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 1 dereferenceable(9) @.str.353, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(130) @.str.354)
          to label %bb.af unwind label %bb.ag

bb.af:                                            ; preds = %bb.ae
  call void @__cxa_throw(ptr nonnull %i.hi, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #36
  unreachable

bb.ag:                                            ; preds = %bb.ae
  %i.hj = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.hi) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  resume { ptr, i32 } %i.hj

bb.ah:                                            ; preds = %bb.ad
  %.not333 = icmp eq i64 %sext, -4294967296
  br i1 %.not333, label %bb.ai, label %.thread335

.thread335:                                       ; preds = %.thread, %bb.ah
  %i.hk = phi i64 [ %i.gx, %bb.ah ], [ 0, %.thread ]
  call void @_ZNSt6vectorIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.gr, i64 noundef 1)
  br label %_ZNSt6vectorIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EE6resizeEm.exit

bb.ai:                                            ; preds = %bb.ah
  %i.hl = getelementptr [16 x i8], ptr %i.ha, i64 %i.gx
  %i.hm = getelementptr i8, ptr %i.hl, i64 16     ; 2 uses
  %.not.i.i162 = icmp eq ptr %i.gz, %i.hm
  br i1 %.not.i.i162, label %_ZNSt6vectorIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EE6resizeEm.exit, label %_ZSt8_DestroyIPN10glTFCommon3RefIN5glTF28AccessorEEES4_EvT_S6_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN10glTFCommon3RefIN5glTF28AccessorEEES4_EvT_S6_RSaIT0_E.exit.i.i: ; preds = %bb.ai
  store ptr %i.hm, ptr %i.gy, align 8
  br label %_ZNSt6vectorIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EE6resizeEm.exit

_ZNSt6vectorIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EE6resizeEm.exit: ; preds = %.thread335, %bb.ai, %_ZSt8_DestroyIPN10glTFCommon3RefIN5glTF28AccessorEEES4_EvT_S6_RSaIT0_E.exit.i.i
  %i.hn = phi i64 [ %i.hk, %.thread335 ], [ -1, %_ZSt8_DestroyIPN10glTFCommon3RefIN5glTF28AccessorEEES4_EvT_S6_RSaIT0_E.exit.i.i ], [ -1, %bb.ai ]
  %i.ho = load i32, ptr %i.fw, align 8
  %i.hp = call { ptr, i32 } @_ZN5glTF28LazyDictINS_8AccessorEE8RetrieveEj(ptr noundef nonnull align 8 dereferenceable(232) %i.ct, i32 noundef %i.ho) ; 2 uses
  %.fca.0.extract56 = extractvalue { ptr, i32 } %i.hp, 0
  %.fca.1.extract57 = extractvalue { ptr, i32 } %i.hp, 1
  %i.hq = load ptr, ptr %i.gr, align 8
  %i.hr = getelementptr inbounds nuw [16 x i8], ptr %i.hq, i64 %i.hn ; 2 uses
  store ptr %.fca.0.extract56, ptr %i.hr, align 8
  %.sroa.461.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hr, i64 8
  store i32 %.fca.1.extract57, ptr %.sroa.461.0..sroa_idx, align 8
  %.pre.pre = load ptr, ptr %i.fo, align 8
  %.pre252.pre = load i32, ptr %i.fn, align 8
  br label %_ZN5glTF212_GLOBAL__N_115GetAttribVectorERNS_4Mesh9PrimitiveEPKcRPSt6vectorIN10glTFCommon3RefINS_8AccessorEEESaISA_EERi.exit

_ZN5glTF212_GLOBAL__N_115GetAttribVectorERNS_4Mesh9PrimitiveEPKcRPSt6vectorIN10glTFCommon3RefINS_8AccessorEEESaISA_EERi.exit: ; preds = %bb.ab, %_ZNSt6vectorIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EE6resizeEm.exit
  %.pre252 = phi i32 [ %.pre252262, %bb.ab ], [ %.pre252.pre, %_ZNSt6vectorIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EE6resizeEm.exit ] ; 2 uses
  %.pre = phi ptr [ %.pre259, %bb.ab ], [ %.pre.pre, %_ZNSt6vectorIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EE6resizeEm.exit ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  br label %bb.aj

bb.aj:                                            ; preds = %.lr.ph, %_ZN5glTF212_GLOBAL__N_115GetAttribVectorERNS_4Mesh9PrimitiveEPKcRPSt6vectorIN10glTFCommon3RefINS_8AccessorEEESaISA_EERi.exit
  %.pre252263 = phi i32 [ %.pre252262, %.lr.ph ], [ %.pre252, %_ZN5glTF212_GLOBAL__N_115GetAttribVectorERNS_4Mesh9PrimitiveEPKcRPSt6vectorIN10glTFCommon3RefINS_8AccessorEEESaISA_EERi.exit ]
  %.pre260 = phi ptr [ %.pre259, %.lr.ph ], [ %.pre, %_ZN5glTF212_GLOBAL__N_115GetAttribVectorERNS_4Mesh9PrimitiveEPKcRPSt6vectorIN10glTFCommon3RefINS_8AccessorEEESaISA_EERi.exit ]
  %i.hs = phi i32 [ %i.fu, %.lr.ph ], [ %.pre252, %_ZN5glTF212_GLOBAL__N_115GetAttribVectorERNS_4Mesh9PrimitiveEPKcRPSt6vectorIN10glTFCommon3RefINS_8AccessorEEESaISA_EERi.exit ] ; 2 uses
  %i.ht = phi ptr [ %i.fv, %.lr.ph ], [ %.pre, %_ZN5glTF212_GLOBAL__N_115GetAttribVectorERNS_4Mesh9PrimitiveEPKcRPSt6vectorIN10glTFCommon3RefINS_8AccessorEEESaISA_EERi.exit ] ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %.0122225, i64 32 ; 2 uses
  %i.hv = ptrtoint ptr %i.ht to i64
  %i.hw = and i64 %i.hv, 281474976710655
  %i.hx = inttoptr i64 %i.hw to ptr
  %i.hy = zext i32 %i.hs to i64
  %i.hz = getelementptr inbounds nuw [32 x i8], ptr %i.hx, i64 %i.hy
  %.not147 = icmp eq ptr %i.hu, %i.hz
  br i1 %.not147, label %.loopexit223, label %.lr.ph, !llvm.loop !848

.loopexit223:                                     ; preds = %bb.aj, %bb.t, %bb.s
  %i.ia = load ptr, ptr %i.bn, align 8
  %i.ib = load ptr, ptr %i.bp, align 8
  %i.ic = call noundef ptr @_ZN10glTFCommon18FindArrayInContextERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKcSA_SA_(ptr noundef nonnull align 8 dereferenceable(16) %i.dd, ptr noundef nonnull @.str.199, ptr noundef %i.ia, ptr noundef %i.ib) ; 5 uses
  %.not148 = icmp eq ptr %i.ic, null
  br i1 %.not148, label %.loopexit222, label %bb.ak

bb.ak:                                            ; preds = %.loopexit223
  %i.id = getelementptr inbounds nuw i8, ptr %i.df, i64 232 ; 4 uses
  %i.ie = load i32, ptr %i.ic, align 8
  %i.if = zext i32 %i.ie to i64
  call void @_ZNSt6vectorIN5glTF24Mesh9Primitive6TargetESaIS3_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.id, i64 noundef %i.if)
  %i.ig = load i32, ptr %i.ic, align 8            ; 2 uses
  %.not241 = icmp eq i32 %i.ig, 0
  br i1 %.not241, label %.loopexit222, label %.lr.ph231

.lr.ph231:                                        ; preds = %bb.ak
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ic, i64 8
  br label %bb.al

bb.al:                                            ; preds = %.lr.ph231, %.loopexit220
  %i.ii = phi i32 [ %i.ig, %.lr.ph231 ], [ %i.no, %.loopexit220 ] ; 2 uses
  %.0123229 = phi i32 [ 0, %.lr.ph231 ], [ %i.np, %.loopexit220 ] ; 3 uses
  %i.ij = load ptr, ptr %i.ih, align 8
  %i.ik = ptrtoint ptr %i.ij to i64
  %i.il = and i64 %i.ik, 281474976710655
  %i.im = inttoptr i64 %i.il to ptr
  %i.in = zext i32 %.0123229 to i64
  %i.io = getelementptr inbounds nuw [16 x i8], ptr %i.im, i64 %i.in ; 4 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 14
  %i.iq = load i16, ptr %i.ip, align 2
  %i.ir = icmp eq i16 %i.iq, 3
  br i1 %i.ir, label %bb.am, label %.loopexit220

bb.am:                                            ; preds = %bb.al
  %i.is = getelementptr inbounds nuw i8, ptr %i.io, i64 8 ; 2 uses
  %i.it = load i32, ptr %i.io, align 8            ; 2 uses
  %.not151226 = icmp eq i32 %i.it, 0
  br i1 %.not151226, label %.loopexit220, label %.lr.ph228

.lr.ph228:                                        ; preds = %bb.am
  %i.iu = load ptr, ptr %i.is, align 8            ; 2 uses
  %i.iv = ptrtoint ptr %i.iu to i64
  %i.iw = and i64 %i.iv, 281474976710655
  %i.ix = inttoptr i64 %i.iw to ptr
  %i.iy = sext i32 %.0123229 to i64               ; 3 uses
  br label %bb.an

bb.an:                                            ; preds = %.lr.ph228, %_ZN5glTF212_GLOBAL__N_121GetAttribTargetVectorERNS_4Mesh9PrimitiveEiPKcRPSt6vectorIN10glTFCommon3RefINS_8AccessorEEESaISA_EERi.exit
  %i.iz = phi i32 [ %i.it, %.lr.ph228 ], [ %i.ng, %_ZN5glTF212_GLOBAL__N_121GetAttribTargetVectorERNS_4Mesh9PrimitiveEiPKcRPSt6vectorIN10glTFCommon3RefINS_8AccessorEEESaISA_EERi.exit ] ; 2 uses
  %i.ja = phi ptr [ %i.iu, %.lr.ph228 ], [ %i.nh, %_ZN5glTF212_GLOBAL__N_121GetAttribTargetVectorERNS_4Mesh9PrimitiveEiPKcRPSt6vectorIN10glTFCommon3RefINS_8AccessorEEESaISA_EERi.exit ] ; 2 uses
  %.0124227 = phi ptr [ %i.ix, %.lr.ph228 ], [ %i.ni, %_ZN5glTF212_GLOBAL__N_121GetAttribTargetVectorERNS_4Mesh9PrimitiveEiPKcRPSt6vectorIN10glTFCommon3RefINS_8AccessorEEESaISA_EERi.exit ] ; 6 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %.0124227, i64 16
  %i.jc = getelementptr inbounds nuw i8, ptr %.0124227, i64 30
  %i.jd = load i16, ptr %i.jc, align 2
  %i.je = and i16 %i.jd, 64
  %.not214 = icmp eq i16 %i.je, 0
  br i1 %.not214, label %_ZN5glTF212_GLOBAL__N_121GetAttribTargetVectorERNS_4Mesh9PrimitiveEiPKcRPSt6vectorIN10glTFCommon3RefINS_8AccessorEEESaISA_EERi.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.jf = getelementptr inbounds nuw i8, ptr %.0124227, i64 14
  %i.jg = load i16, ptr %i.jf, align 2
  %i.jh = and i16 %i.jg, 4096
  %.not.i.i163 = icmp eq i16 %i.jh, 0
  %i.ji = getelementptr inbounds nuw i8, ptr %.0124227, i64 8
  %i.jj = load ptr, ptr %i.ji, align 8
  %i.jk = ptrtoint ptr %i.jj to i64
  %i.jl = and i64 %i.jk, 281474976710655
  %i.jm = inttoptr i64 %i.jl to ptr
  %i.jn = select i1 %.not.i.i163, ptr %i.jm, ptr %.0124227 ; 4 uses
  %i.jo = call i32 @strncmp(ptr noundef nonnull readonly dereferenceable(1) %i.jn, ptr noundef nonnull dereferenceable(9) @.str.191, i64 noundef 8) #39
  %.not.i164 = icmp eq i32 %i.jo, 0
  br i1 %.not.i164, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.jp = load ptr, ptr %i.id, align 8
  %i.jq = getelementptr inbounds nuw [72 x i8], ptr %i.jp, i64 %i.iy
  br label %bb.au

bb.aq:                                            ; preds = %bb.ao
  %i.jr = call i32 @strncmp(ptr noundef nonnull readonly dereferenceable(1) %i.jn, ptr noundef nonnull dereferenceable(7) @.str.192, i64 noundef 6) #39
  %.not17.i = icmp eq i32 %i.jr, 0
  br i1 %.not17.i, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.js = load ptr, ptr %i.id, align 8
  %i.jt = getelementptr inbounds nuw [72 x i8], ptr %i.js, i64 %i.iy
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 24
  br label %bb.au

bb.as:                                            ; preds = %bb.aq
  %i.jv = call i32 @strncmp(ptr noundef nonnull readonly dereferenceable(1) %i.jn, ptr noundef nonnull dereferenceable(8) @.str.193, i64 noundef 7) #39
  %.not18.i = icmp eq i32 %i.jv, 0
  br i1 %.not18.i, label %bb.at, label %_ZN5glTF212_GLOBAL__N_121GetAttribTargetVectorERNS_4Mesh9PrimitiveEiPKcRPSt6vectorIN10glTFCommon3RefINS_8AccessorEEESaISA_EERi.exit

bb.at:                                            ; preds = %bb.as
  %i.jw = load ptr, ptr %i.id, align 8
  %i.jx = getelementptr inbounds nuw [72 x i8], ptr %i.jw, i64 %i.iy
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 48
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.ar, %bb.ap
  %.1.ph = phi i64 [ 7, %bb.at ], [ 6, %bb.ar ], [ 8, %bb.ap ]
  %.0196.ph = phi ptr [ %i.jy, %bb.at ], [ %i.ju, %bb.ar ], [ %i.jq, %bb.ap ] ; 5 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jn, i64 %.1.ph ; 2 uses
  %i.ka = load i8, ptr %i.jz, align 1
  %i.kb = icmp eq i8 %i.ka, 95
  br i1 %i.kb, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jz, i64 1
  %i.kd = call i64 @__isoc23_strtol(ptr noundef nonnull %i.kc, ptr noundef null, i32 noundef 10) #34, !inline_history !847
  %sext215 = shl i64 %i.kd, 32
  %i.ke = ashr exact i64 %sext215, 32
  br label %bb.aw

bb.aw:                                            ; preds = %bb.au, %bb.av
  %i.kf = phi i64 [ %i.ke, %bb.av ], [ 0, %bb.au ] ; 5 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %.0196.ph, i64 8 ; 4 uses
  %i.kh = load ptr, ptr %i.kg, align 8            ; 6 uses
  %i.ki = load ptr, ptr %.0196.ph, align 8        ; 6 uses
  %i.kj = ptrtoint ptr %i.kh to i64               ; 2 uses
  %i.kk = ptrtoint ptr %i.ki to i64               ; 2 uses
  %i.kl = sub i64 %i.kj, %i.kk                    ; 2 uses
  %i.km = ashr exact i64 %i.kl, 4                 ; 10 uses
  %.not152 = icmp ugt i64 %i.km, %i.kf
  br i1 %.not152, label %_ZNSt6vectorIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EE6resizeEm.exit169, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.kn = add nsw i64 %i.kf, 1                    ; 4 uses
  %i.ko = icmp ugt i64 %i.kn, %i.km
  br i1 %i.ko, label %5, label %bb.bc

5:                                                ; preds = %bb.ax
  %6 = sub nuw nsw i64 %i.kn, %i.km               ; 11 uses
  %.not.i187 = icmp eq i64 %6, 0
  br i1 %.not.i187, label %_ZNSt6vectorIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EE6resizeEm.exit169, label %bb.ay

bb.ay:                                            ; preds = %5
  %i.kp = getelementptr inbounds nuw i8, ptr %.0196.ph, i64 16 ; 2 uses
  %i.kq = load ptr, ptr %i.kp, align 8
  %i.kr = ptrtoint ptr %i.kq to i64               ; 2 uses
  %i.ks = sub i64 %i.kr, %i.kj
  %i.kt = ashr exact i64 %i.ks, 4                 ; 2 uses
  %i.ku = icmp ult i64 %i.km, 576460752303423488
  call void @llvm.assume(i1 %i.ku)
  %i.kv = xor i64 %i.km, 576460752303423487       ; 2 uses
  %i.kw = icmp ule i64 %i.kt, %i.kv
  call void @llvm.assume(i1 %i.kw)
  %.not28.i = icmp ult i64 %i.kt, %6
  br i1 %.not28.i, label %bb.az, label %.lr.ph.i.i.i.i188.preheader

.lr.ph.i.i.i.i188.preheader:                      ; preds = %bb.ay
  %i.kx = sub nsw i64 %i.kf, %i.km
  %xtraiter = and i64 %6, 7                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i188.prol.loopexit, label %.lr.ph.i.i.i.i188.prol

.lr.ph.i.i.i.i188.prol:                           ; preds = %.lr.ph.i.i.i.i188.preheader, %.lr.ph.i.i.i.i188.prol
  %.013.i.i.i.i.prol = phi ptr [ %i.la, %.lr.ph.i.i.i.i188.prol ], [ %i.kh, %.lr.ph.i.i.i.i188.preheader ] ; 3 uses
  %.01012.i.i.i.i.prol = phi i64 [ %i.kz, %.lr.ph.i.i.i.i188.prol ], [ %6, %.lr.ph.i.i.i.i188.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i188.prol ], [ 0, %.lr.ph.i.i.i.i188.preheader ]
  store ptr null, ptr %.013.i.i.i.i.prol, align 8
  %i.ky = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.prol, i64 8
  store i32 0, ptr %i.ky, align 8
  %i.kz = add i64 %.01012.i.i.i.i.prol, -1        ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.prol, i64 16 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i188.prol.loopexit, label %.lr.ph.i.i.i.i188.prol, !llvm.loop !849

.lr.ph.i.i.i.i188.prol.loopexit:                  ; preds = %.lr.ph.i.i.i.i188.prol, %.lr.ph.i.i.i.i188.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.i188.preheader ], [ %i.la, %.lr.ph.i.i.i.i188.prol ]
  %.013.i.i.i.i.unr = phi ptr [ %i.kh, %.lr.ph.i.i.i.i188.preheader ], [ %i.la, %.lr.ph.i.i.i.i188.prol ]
  %.01012.i.i.i.i.unr = phi i64 [ %6, %.lr.ph.i.i.i.i188.preheader ], [ %i.kz, %.lr.ph.i.i.i.i188.prol ]
  %i.lb = icmp ult i64 %i.kx, 7
  br i1 %i.lb, label %_ZSt27__uninitialized_default_n_aIPN10glTFCommon3RefIN5glTF28AccessorEEEmS4_ET_S6_T0_RSaIT1_E.exit.i, label %.lr.ph.i.i.i.i188

.lr.ph.i.i.i.i188:                                ; preds = %.lr.ph.i.i.i.i188.prol.loopexit, %.lr.ph.i.i.i.i188
  %.013.i.i.i.i = phi ptr [ %i.ls, %.lr.ph.i.i.i.i188 ], [ %.013.i.i.i.i.unr, %.lr.ph.i.i.i.i188.prol.loopexit ] ; 17 uses
  %.01012.i.i.i.i = phi i64 [ %i.lr, %.lr.ph.i.i.i.i188 ], [ %.01012.i.i.i.i.unr, %.lr.ph.i.i.i.i188.prol.loopexit ]
  store ptr null, ptr %.013.i.i.i.i, align 8
  %i.lc = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 8
  store i32 0, ptr %i.lc, align 8
  %i.ld = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 16
  store ptr null, ptr %i.ld, align 8
  %i.le = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 24
  store i32 0, ptr %i.le, align 8
  %i.lf = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 32
  store ptr null, ptr %i.lf, align 8
  %i.lg = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 40
  store i32 0, ptr %i.lg, align 8
  %i.lh = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 48
  store ptr null, ptr %i.lh, align 8
  %i.li = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 56
  store i32 0, ptr %i.li, align 8
  %i.lj = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 64
  store ptr null, ptr %i.lj, align 8
  %i.lk = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 72
  store i32 0, ptr %i.lk, align 8
  %i.ll = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 80
  store ptr null, ptr %i.ll, align 8
  %i.lm = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 88
  store i32 0, ptr %i.lm, align 8
  %i.ln = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 96
  store ptr null, ptr %i.ln, align 8
  %i.lo = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 104
  store i32 0, ptr %i.lo, align 8
  %i.lp = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 112
  store ptr null, ptr %i.lp, align 8
  %i.lq = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 120
  store i32 0, ptr %i.lq, align 8
  %i.lr = add i64 %.01012.i.i.i.i, -8             ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.i189.7 = icmp eq i64 %i.lr, 0
  br i1 %.not.i.i.i.i189.7, label %_ZSt27__uninitialized_default_n_aIPN10glTFCommon3RefIN5glTF28AccessorEEEmS4_ET_S6_T0_RSaIT1_E.exit.i, label %.lr.ph.i.i.i.i188, !llvm.loop !850

_ZSt27__uninitialized_default_n_aIPN10glTFCommon3RefIN5glTF28AccessorEEEmS4_ET_S6_T0_RSaIT1_E.exit.i: ; preds = %.lr.ph.i.i.i.i188, %.lr.ph.i.i.i.i188.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.i188.prol.loopexit ], [ %i.ls, %.lr.ph.i.i.i.i188 ]
  store ptr %.lcssa, ptr %i.kg, align 8
  br label %_ZNSt6vectorIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EE6resizeEm.exit169

bb.az:                                            ; preds = %bb.ay
  %i.lt = icmp ult i64 %i.kv, %6
  br i1 %i.lt, label %bb.ba, label %_ZNKSt6vectorIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EE12_M_check_lenEmPKc.exit.i

bb.ba:                                            ; preds = %bb.az
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.236) #36
  unreachable

_ZNKSt6vectorIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.az
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.km, i64 %6)
  %i.lu = add nuw nsw i64 %.sroa.speculated.i.i, %i.km
  %i.lv = call i64 @llvm.umin.i64(i64 %i.lu, i64 576460752303423487) ; 2 uses
  %i.lw = shl nuw nsw i64 %i.lv, 4
  %i.lx = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lw) #37 ; 4 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 %i.kl ; 3 uses
  %i.lz = sub nsw i64 %i.kf, %i.km
  %xtraiter337 = and i64 %6, 7                    ; 2 uses
  %lcmp.mod338.not = icmp eq i64 %xtraiter337, 0
  br i1 %lcmp.mod338.not, label %.lr.ph.i.i.i30.i.prol.loopexit, label %.lr.ph.i.i.i30.i.prol

.lr.ph.i.i.i30.i.prol:                            ; preds = %_ZNKSt6vectorIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EE12_M_check_lenEmPKc.exit.i, %.lr.ph.i.i.i30.i.prol
  %.013.i.i.i31.i.prol = phi ptr [ %i.mc, %.lr.ph.i.i.i30.i.prol ], [ %i.ly, %_ZNKSt6vectorIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EE12_M_check_lenEmPKc.exit.i ] ; 3 uses
  %.01012.i.i.i32.i.prol = phi i64 [ %i.mb, %.lr.ph.i.i.i30.i.prol ], [ %6, %_ZNKSt6vectorIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EE12_M_check_lenEmPKc.exit.i ]
  %prol.iter339 = phi i64 [ %prol.iter339.next, %.lr.ph.i.i.i30.i.prol ], [ 0, %_ZNKSt6vectorIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EE12_M_check_lenEmPKc.exit.i ]
  store ptr null, ptr %.013.i.i.i31.i.prol, align 8
  %i.ma = getelementptr inbounds nuw i8, ptr %.013.i.i.i31.i.prol, i64 8
  store i32 0, ptr %i.ma, align 8
  %i.mb = add i64 %.01012.i.i.i32.i.prol, -1      ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %.013.i.i.i31.i.prol, i64 16 ; 2 uses
  %prol.iter339.next = add i64 %prol.iter339, 1   ; 2 uses
  %prol.iter339.cmp.not = icmp eq i64 %prol.iter339.next, %xtraiter337
  br i1 %prol.iter339.cmp.not, label %.lr.ph.i.i.i30.i.prol.loopexit, label %.lr.ph.i.i.i30.i.prol, !llvm.loop !851

.lr.ph.i.i.i30.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i30.i.prol, %_ZNKSt6vectorIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EE12_M_check_lenEmPKc.exit.i
  %.013.i.i.i31.i.unr = phi ptr [ %i.ly, %_ZNKSt6vectorIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EE12_M_check_lenEmPKc.exit.i ], [ %i.mc, %.lr.ph.i.i.i30.i.prol ]
  %.01012.i.i.i32.i.unr = phi i64 [ %6, %_ZNKSt6vectorIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EE12_M_check_lenEmPKc.exit.i ], [ %i.mb, %.lr.ph.i.i.i30.i.prol ]
  %i.md = icmp ult i64 %i.lz, 7
  br i1 %i.md, label %_ZSt27__uninitialized_default_n_aIPN10glTFCommon3RefIN5glTF28AccessorEEEmS4_ET_S6_T0_RSaIT1_E.exit35.i, label %.lr.ph.i.i.i30.i

.lr.ph.i.i.i30.i:                                 ; preds = %.lr.ph.i.i.i30.i.prol.loopexit, %.lr.ph.i.i.i30.i
  %.013.i.i.i31.i = phi ptr [ %i.mu, %.lr.ph.i.i.i30.i ], [ %.013.i.i.i31.i.unr, %.lr.ph.i.i.i30.i.prol.loopexit ] ; 17 uses
  %.01012.i.i.i32.i = phi i64 [ %i.mt, %.lr.ph.i.i.i30.i ], [ %.01012.i.i.i32.i.unr, %.lr.ph.i.i.i30.i.prol.loopexit ]
  store ptr null, ptr %.013.i.i.i31.i, align 8
  %i.me = getelementptr inbounds nuw i8, ptr %.013.i.i.i31.i, i64 8
  store i32 0, ptr %i.me, align 8
  %i.mf = getelementptr inbounds nuw i8, ptr %.013.i.i.i31.i, i64 16
  store ptr null, ptr %i.mf, align 8
  %i.mg = getelementptr inbounds nuw i8, ptr %.013.i.i.i31.i, i64 24
  store i32 0, ptr %i.mg, align 8
  %i.mh = getelementptr inbounds nuw i8, ptr %.013.i.i.i31.i, i64 32
  store ptr null, ptr %i.mh, align 8
  %i.mi = getelementptr inbounds nuw i8, ptr %.013.i.i.i31.i, i64 40
  store i32 0, ptr %i.mi, align 8
  %i.mj = getelementptr inbounds nuw i8, ptr %.013.i.i.i31.i, i64 48
  store ptr null, ptr %i.mj, align 8
  %i.mk = getelementptr inbounds nuw i8, ptr %.013.i.i.i31.i, i64 56
  store i32 0, ptr %i.mk, align 8
  %i.ml = getelementptr inbounds nuw i8, ptr %.013.i.i.i31.i, i64 64
  store ptr null, ptr %i.ml, align 8
  %i.mm = getelementptr inbounds nuw i8, ptr %.013.i.i.i31.i, i64 72
  store i32 0, ptr %i.mm, align 8
  %i.mn = getelementptr inbounds nuw i8, ptr %.013.i.i.i31.i, i64 80
  store ptr null, ptr %i.mn, align 8
  %i.mo = getelementptr inbounds nuw i8, ptr %.013.i.i.i31.i, i64 88
  store i32 0, ptr %i.mo, align 8
  %i.mp = getelementptr inbounds nuw i8, ptr %.013.i.i.i31.i, i64 96
  store ptr null, ptr %i.mp, align 8
  %i.mq = getelementptr inbounds nuw i8, ptr %.013.i.i.i31.i, i64 104
  store i32 0, ptr %i.mq, align 8
  %i.mr = getelementptr inbounds nuw i8, ptr %.013.i.i.i31.i, i64 112
  store ptr null, ptr %i.mr, align 8
  %i.ms = getelementptr inbounds nuw i8, ptr %.013.i.i.i31.i, i64 120
  store i32 0, ptr %i.ms, align 8
  %i.mt = add i64 %.01012.i.i.i32.i, -8           ; 2 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %.013.i.i.i31.i, i64 128
  %.not.i.i.i33.i.7 = icmp eq i64 %i.mt, 0
  br i1 %.not.i.i.i33.i.7, label %_ZSt27__uninitialized_default_n_aIPN10glTFCommon3RefIN5glTF28AccessorEEEmS4_ET_S6_T0_RSaIT1_E.exit35.i, label %.lr.ph.i.i.i30.i, !llvm.loop !850

_ZSt27__uninitialized_default_n_aIPN10glTFCommon3RefIN5glTF28AccessorEEEmS4_ET_S6_T0_RSaIT1_E.exit35.i: ; preds = %.lr.ph.i.i.i30.i, %.lr.ph.i.i.i30.i.prol.loopexit
  %.not10.i.i.i.i = icmp eq ptr %i.ki, %i.kh
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i, label %.lr.ph.i.i.i37.i

.lr.ph.i.i.i37.i:                                 ; preds = %_ZSt27__uninitialized_default_n_aIPN10glTFCommon3RefIN5glTF28AccessorEEEmS4_ET_S6_T0_RSaIT1_E.exit35.i, %.lr.ph.i.i.i37.i
  %.012.i.i.i.i = phi ptr [ %i.mw, %.lr.ph.i.i.i37.i ], [ %i.lx, %_ZSt27__uninitialized_default_n_aIPN10glTFCommon3RefIN5glTF28AccessorEEEmS4_ET_S6_T0_RSaIT1_E.exit35.i ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.mv, %.lr.ph.i.i.i37.i ], [ %i.ki, %_ZSt27__uninitialized_default_n_aIPN10glTFCommon3RefIN5glTF28AccessorEEEmS4_ET_S6_T0_RSaIT1_E.exit35.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i, i64 16, i1 false), !alias.scope !852
  %i.mv = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16 ; 2 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 16
  %.not.i.i.i38.i = icmp eq ptr %i.mv, %i.kh
  br i1 %.not.i.i.i38.i, label %_ZNSt6vectorIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i, label %.lr.ph.i.i.i37.i, !llvm.loop !856

_ZNSt6vectorIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i: ; preds = %.lr.ph.i.i.i37.i, %_ZSt27__uninitialized_default_n_aIPN10glTFCommon3RefIN5glTF28AccessorEEEmS4_ET_S6_T0_RSaIT1_E.exit35.i
  %.not.i40.i = icmp eq ptr %i.ki, null
  br i1 %.not.i40.i, label %_ZNSt12_Vector_baseIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EE13_M_deallocateEPS4_m.exit41.i, label %bb.bb

bb.bb:                                            ; preds = %_ZNSt6vectorIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i
  %i.mx = sub i64 %i.kr, %i.kk
  call void @_ZdlPvm(ptr noundef nonnull %i.ki, i64 noundef %i.mx) #35
  br label %_ZNSt12_Vector_baseIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EE13_M_deallocateEPS4_m.exit41.i

_ZNSt12_Vector_baseIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EE13_M_deallocateEPS4_m.exit41.i: ; preds = %bb.bb, %_ZNSt6vectorIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i
  store ptr %i.lx, ptr %.0196.ph, align 8
  %i.my = getelementptr inbounds nuw [16 x i8], ptr %i.ly, i64 %6
  store ptr %i.my, ptr %i.kg, align 8
  %i.mz = getelementptr inbounds nuw [16 x i8], ptr %i.lx, i64 %i.lv
  store ptr %i.mz, ptr %i.kp, align 8
  br label %_ZNSt6vectorIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EE6resizeEm.exit169

bb.bc:                                            ; preds = %bb.ax
  %i.na = icmp ult i64 %i.kn, %i.km
  br i1 %i.na, label %bb.bd, label %_ZNSt6vectorIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EE6resizeEm.exit169

bb.bd:                                            ; preds = %bb.bc
  %i.nb = getelementptr inbounds nuw [16 x i8], ptr %i.ki, i64 %i.kn ; 2 uses
  %.not.i.i167 = icmp eq ptr %i.kh, %i.nb
  br i1 %.not.i.i167, label %_ZNSt6vectorIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EE6resizeEm.exit169, label %_ZSt8_DestroyIPN10glTFCommon3RefIN5glTF28AccessorEEES4_EvT_S6_RSaIT0_E.exit.i.i168

_ZSt8_DestroyIPN10glTFCommon3RefIN5glTF28AccessorEEES4_EvT_S6_RSaIT0_E.exit.i.i168: ; preds = %bb.bd
  store ptr %i.nb, ptr %i.kg, align 8
  br label %_ZNSt6vectorIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EE6resizeEm.exit169

_ZNSt6vectorIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EE6resizeEm.exit169: ; preds = %_ZSt8_DestroyIPN10glTFCommon3RefIN5glTF28AccessorEEES4_EvT_S6_RSaIT0_E.exit.i.i168, %bb.bd, %bb.bc, %5, %_ZSt27__uninitialized_default_n_aIPN10glTFCommon3RefIN5glTF28AccessorEEEmS4_ET_S6_T0_RSaIT1_E.exit.i, %_ZNSt12_Vector_baseIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EE13_M_deallocateEPS4_m.exit41.i, %bb.aw
  %i.nc = load i32, ptr %i.jb, align 8
  %i.nd = call { ptr, i32 } @_ZN5glTF28LazyDictINS_8AccessorEE8RetrieveEj(ptr noundef nonnull align 8 dereferenceable(232) %i.ct, i32 noundef %i.nc) ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.nd, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.nd, 1
  %i.ne = load ptr, ptr %.0196.ph, align 8
  %i.nf = getelementptr inbounds nuw [16 x i8], ptr %i.ne, i64 %i.kf ; 2 uses
  store ptr %.fca.0.extract, ptr %i.nf, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.nf, i64 8
  store i32 %.fca.1.extract, ptr %.sroa.4.0..sroa_idx, align 8
  %.pre253 = load ptr, ptr %i.is, align 8
  %.pre254 = load i32, ptr %i.io, align 8
  br label %_ZN5glTF212_GLOBAL__N_121GetAttribTargetVectorERNS_4Mesh9PrimitiveEiPKcRPSt6vectorIN10glTFCommon3RefINS_8AccessorEEESaISA_EERi.exit

_ZN5glTF212_GLOBAL__N_121GetAttribTargetVectorERNS_4Mesh9PrimitiveEiPKcRPSt6vectorIN10glTFCommon3RefINS_8AccessorEEESaISA_EERi.exit: ; preds = %_ZNSt6vectorIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EE6resizeEm.exit169, %bb.as, %bb.an
  %i.ng = phi i32 [ %.pre254, %_ZNSt6vectorIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EE6resizeEm.exit169 ], [ %i.iz, %bb.as ], [ %i.iz, %bb.an ] ; 2 uses
  %i.nh = phi ptr [ %.pre253, %_ZNSt6vectorIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EE6resizeEm.exit169 ], [ %i.ja, %bb.as ], [ %i.ja, %bb.an ] ; 2 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %.0124227, i64 32 ; 2 uses
  %i.nj = ptrtoint ptr %i.nh to i64
  %i.nk = and i64 %i.nj, 281474976710655
  %i.nl = inttoptr i64 %i.nk to ptr
  %i.nm = zext i32 %i.ng to i64
  %i.nn = getelementptr inbounds nuw [32 x i8], ptr %i.nl, i64 %i.nm
  %.not151 = icmp eq ptr %i.ni, %i.nn
  br i1 %.not151, label %.loopexit220.loopexit, label %bb.an, !llvm.loop !857

.loopexit220.loopexit:                            ; preds = %_ZN5glTF212_GLOBAL__N_121GetAttribTargetVectorERNS_4Mesh9PrimitiveEiPKcRPSt6vectorIN10glTFCommon3RefINS_8AccessorEEESaISA_EERi.exit
  %.pre255 = load i32, ptr %i.ic, align 8
  br label %.loopexit220

.loopexit220:                                     ; preds = %.loopexit220.loopexit, %bb.am, %bb.al
  %i.no = phi i32 [ %.pre255, %.loopexit220.loopexit ], [ %i.ii, %bb.am ], [ %i.ii, %bb.al ] ; 2 uses
  %i.np = add nuw i32 %.0123229, 1                ; 2 uses
  %i.nq = icmp ult i32 %i.np, %i.no
  br i1 %i.nq, label %bb.al, label %.loopexit222, !llvm.loop !858

.loopexit222:                                     ; preds = %.loopexit220, %bb.ak, %.loopexit223
  %i.nr = load ptr, ptr %i.cv, align 8
  %i.ns = load ptr, ptr %i.cw, align 8
  %i.nt = icmp eq ptr %i.nr, %i.ns
  br i1 %i.nt, label %bb.be, label %.loopexit221

bb.be:                                            ; preds = %.loopexit222
  %i.nu = load ptr, ptr %i.bn, align 8
  %i.nv = load ptr, ptr %i.bp, align 8
  %i.nw = call noundef ptr @_ZN10glTFCommon19FindObjectInContextERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKcSA_SA_(ptr noundef nonnull align 8 dereferenceable(16) %i.dd, ptr noundef nonnull @.str.202, ptr noundef %i.nu, ptr noundef %i.nv) ; 2 uses
  %.not149 = icmp eq ptr %i.nw, null
  br i1 %.not149, label %.loopexit221, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.nx = load ptr, ptr %i.bn, align 8
  %i.ny = load ptr, ptr %i.bp, align 8
  %i.nz = call noundef ptr @_ZN10glTFCommon18FindArrayInContextERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKcSA_SA_(ptr noundef nonnull align 8 dereferenceable(16) %i.nw, ptr noundef nonnull @.str.201, ptr noundef %i.nx, ptr noundef %i.ny) ; 5 uses
  %.not150 = icmp eq ptr %i.nz, null
  br i1 %.not150, label %.loopexit221, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.oa = load i32, ptr %i.nz, align 8
  %i.ob = zext i32 %i.oa to i64                   ; 4 uses
  %i.oc = load ptr, ptr %i.cw, align 8            ; 3 uses
  %i.od = load ptr, ptr %i.cv, align 8            ; 2 uses
  %i.oe = ptrtoint ptr %i.oc to i64
  %i.of = ptrtoint ptr %i.od to i64
  %i.og = sub i64 %i.oe, %i.of
  %i.oh = ashr exact i64 %i.og, 5                 ; 3 uses
  %i.oi = icmp ult i64 %i.oh, %i.ob
  br i1 %i.oi, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.oj = sub nuw nsw i64 %i.ob, %i.oh
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.cv, i64 noundef %i.oj)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit

bb.bi:                                            ; preds = %bb.bg
  %i.ok = icmp ugt i64 %i.oh, %i.ob
  br i1 %i.ok, label %bb.bj, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit

bb.bj:                                            ; preds = %bb.bi
  %i.ol = getelementptr inbounds nuw [32 x i8], ptr %i.od, i64 %i.ob ; 3 uses
  %.not.i.i170 = icmp eq ptr %i.oc, %i.ol
  br i1 %.not.i.i170, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit, label %.lr.ph.i.i.i.i171

.lr.ph.i.i.i.i171:                                ; preds = %bb.bj, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i172 = phi ptr [ %i.or, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.ol, %bb.bj ] ; 3 uses
  %i.om = load ptr, ptr %.05.i.i.i.i172, align 8  ; 2 uses
  %i.on = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i172, i64 16 ; 2 uses
  %i.oo = icmp eq ptr %i.om, %i.on
  br i1 %i.oo, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i171
  %i.op = load i64, ptr %i.on, align 8
  %i.oq = add i64 %i.op, 1
  call void @_ZdlPvm(ptr noundef %i.om, i64 noundef %i.oq) #35
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i171, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.or = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i172, i64 32 ; 2 uses
  %.not.i.i.i.i173 = icmp eq ptr %i.or, %i.oc
  br i1 %.not.i.i.i.i173, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i171, !llvm.loop !859

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  store ptr %i.ol, ptr %i.cw, align 8
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit: ; preds = %bb.bh, %bb.bi, %bb.bj, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.os = load i32, ptr %i.nz, align 8            ; 2 uses
  %.not242 = icmp eq i32 %i.os, 0
  br i1 %.not242, label %.loopexit221, label %.lr.ph233

.lr.ph233:                                        ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit
  %i.ot = getelementptr inbounds nuw i8, ptr %i.nz, i64 8
  br label %bb.bk

bb.bk:                                            ; preds = %.lr.ph233, %bb.bm
  %i.ou = phi i32 [ %i.os, %.lr.ph233 ], [ %i.pq, %bb.bm ]
  %indvars.iv = phi i64 [ 0, %.lr.ph233 ], [ %indvars.iv.next, %bb.bm ] ; 3 uses
  %i.ov = load ptr, ptr %i.ot, align 8
  %i.ow = ptrtoint ptr %i.ov to i64
  %i.ox = and i64 %i.ow, 281474976710655
  %i.oy = inttoptr i64 %i.ox to ptr
  %i.oz = getelementptr inbounds nuw [16 x i8], ptr %i.oy, i64 %indvars.iv ; 3 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oz, i64 14
  %i.pb = load i16, ptr %i.pa, align 2            ; 2 uses
  %i.pc = and i16 %i.pb, 1024
  %.not216 = icmp eq i16 %i.pc, 0
  br i1 %.not216, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.pd = and i16 %i.pb, 4096
  %.not.i.i174 = icmp eq i16 %i.pd, 0
  %i.pe = getelementptr inbounds nuw i8, ptr %i.oz, i64 8
  %i.pf = load ptr, ptr %i.pe, align 8
  %i.pg = ptrtoint ptr %i.pf to i64
  %i.ph = and i64 %i.pg, 281474976710655
  %i.pi = inttoptr i64 %i.ph to ptr
  %i.pj = select i1 %.not.i.i174, ptr %i.pi, ptr %i.oz ; 2 uses
  %i.pk = load ptr, ptr %i.cv, align 8
  %i.pl = getelementptr inbounds nuw [32 x i8], ptr %i.pk, i64 %indvars.iv ; 2 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pl, i64 8
  %i.pn = load i64, ptr %i.pm, align 8
  %i.po = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.pj) #34
  %i.pp = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.pl, i64 noundef 0, i64 noundef %i.pn, ptr noundef nonnull %i.pj, i64 noundef %i.po) ; 0 uses
  %.pre256 = load i32, ptr %i.nz, align 8
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %i.pq = phi i32 [ %.pre256, %bb.bl ], [ %i.ou, %bb.bk ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.pr = zext i32 %i.pq to i64
  %i.ps = icmp samesign ult i64 %indvars.iv.next, %i.pr
  br i1 %i.ps, label %bb.bk, label %.loopexit221, !llvm.loop !860

.loopexit221:                                     ; preds = %bb.bm, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE6resizeEm.exit, %bb.be, %bb.bf, %.loopexit222
  %i.pt = add i32 %i.cx, 1                        ; 3 uses
  store i32 %i.pt, ptr %i.a, align 4
  %i.pu = load i32, ptr %i.br, align 8
  %i.pv = icmp ult i32 %i.pt, %i.pu
  br i1 %i.pv, label %bb.j, label %._crit_edge, !llvm.loop !861

bb.bn:                                            ; preds = %._crit_edge, %_ZN10glTFCommon10FindMemberERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit.thread
  %i.pw = load ptr, ptr %i.bn, align 8
  %i.px = load ptr, ptr %i.bp, align 8
  %i.py = call noundef ptr @_ZN10glTFCommon18FindArrayInContextERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKcSA_SA_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull @.str.111, ptr noundef %i.pw, ptr noundef %i.px) ; 5 uses
  %.not141 = icmp eq ptr %i.py, null
  br i1 %.not141, label %.loopexit219, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.pz = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 3 uses
  %i.qa = load i32, ptr %i.py, align 8
  %i.qb = zext i32 %i.qa to i64                   ; 4 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.qd = load ptr, ptr %i.qc, align 8            ; 2 uses
  %i.qe = load ptr, ptr %i.pz, align 8            ; 2 uses
  %i.qf = ptrtoint ptr %i.qd to i64
  %i.qg = ptrtoint ptr %i.qe to i64
  %i.qh = sub i64 %i.qf, %i.qg
  %i.qi = ashr exact i64 %i.qh, 2                 ; 3 uses
  %i.qj = icmp ult i64 %i.qi, %i.qb
  br i1 %i.qj, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.qk = sub nuw nsw i64 %i.qb, %i.qi
  call void @_ZNSt6vectorIfSaIfEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.pz, i64 noundef %i.qk)
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit

bb.bq:                                            ; preds = %bb.bo
  %i.ql = icmp ugt i64 %i.qi, %i.qb
  br i1 %i.ql, label %bb.br, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit

bb.br:                                            ; preds = %bb.bq
  %i.qm = getelementptr inbounds nuw [4 x i8], ptr %i.qe, i64 %i.qb ; 2 uses
  %.not.i.i175 = icmp eq ptr %i.qd, %i.qm
  br i1 %.not.i.i175, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit, label %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.br
  store ptr %i.qm, ptr %i.qc, align 8
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit

_ZNSt6vectorIfSaIfEE6resizeEm.exit:               ; preds = %bb.bp, %bb.bq, %bb.br, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i
  %i.qn = load i32, ptr %i.py, align 8            ; 2 uses
  %.not243 = icmp eq i32 %i.qn, 0
end_hunk_0
