Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/simdjson/original/simdjson?download=true
inline.NumInlined: 1188
inline.NumDeleted: 362
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN8simdjson7haswell25dom_parser_implementation6stage1EPKhmNS_11stage1_modeE:bb.a
  store i32 %i.xe, ptr %i.xf, align 4, !tbaa !37
  %i.xg = add i64 %.021672259.i, -1
  %i.xh = and i64 %i.xg, %.021672259.i            ; 3 uses
  %i.xi = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.xh, i1 true)
  %i.xj = or disjoint i64 %i.xi, %.sroa.11.02261.i
  %i.xk = trunc i64 %i.xj to i32
  %i.xl = getelementptr inbounds nuw [4 x i8], ptr %.sroa.89.3.i, i64 %indvars.iv2316.i
  %i.xm = getelementptr inbounds nuw i8, ptr %i.xl, i64 4
  store i32 %i.xk, ptr %i.xm, align 4, !tbaa !37
  %i.xn = add i64 %i.xh, -2
  %i.xo = and i64 %i.xn, %i.xh                    ; 2 uses
  %indvars.iv.next2317.i.1 = add nuw nsw i64 %indvars.iv2316.i, 2 ; 2 uses
  %niter99.next.1 = add i64 %niter99, 2
  %niter99.ncmp.1 = icmp eq i64 %niter99, %i.xb
  br i1 %niter99.ncmp.1, label %.loopexit2248.i.loopexit.unr-lcssa, label %.noexc149.i, !llvm.loop !198

.loopexit2248.i.loopexit.unr-lcssa:               ; preds = %.noexc149.i
  %lcmp.mod96.not = icmp eq i64 %xtraiter95, 0
  br i1 %lcmp.mod96.not, label %.loopexit2248.i, label %.noexc149.i.epil.preheader

.noexc149.i.epil.preheader:                       ; preds = %.loopexit2248.i.loopexit.unr-lcssa, %.noexc149.i.preheader
  %indvars.iv2316.i.epil.init = phi i64 [ 24, %.noexc149.i.preheader ], [ %indvars.iv.next2317.i.1, %.loopexit2248.i.loopexit.unr-lcssa ]
  %.021672259.i.epil.init = phi i64 [ %i.wy, %.noexc149.i.preheader ], [ %i.xo, %.loopexit2248.i.loopexit.unr-lcssa ]
  %lcmp.mod97 = trunc i64 %i.rf to i1
  tail call void @llvm.assume(i1 %lcmp.mod97)
  %i.xp = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.021672259.i.epil.init, i1 true)
  %i.xq = or disjoint i64 %i.xp, %.sroa.11.02261.i
  %i.xr = trunc i64 %i.xq to i32
  %i.xs = getelementptr inbounds nuw [4 x i8], ptr %.sroa.89.3.i, i64 %indvars.iv2316.i.epil.init
  store i32 %i.xr, ptr %i.xs, align 4, !tbaa !37
  br label %.loopexit2248.i

.loopexit2248.i:                                  ; preds = %.noexc149.i.epil.preheader, %.loopexit2248.i.loopexit.unr-lcssa, %.noexc148.i, %.noexc418.i, %.noexc359.i, %.noexc288.i, %.noexc229.i, %.noexc186.i
  %i.xt = getelementptr inbounds nuw [4 x i8], ptr %.sroa.89.3.i, i64 %i.rf
  br label %_ZN8simdjson7haswell12_GLOBAL__N_16stage123json_structural_indexer4stepILm128EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit63.i

_ZN8simdjson7haswell12_GLOBAL__N_16stage123json_structural_indexer4stepILm128EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit63.i: ; preds = %.loopexit2248.i, %_ZN8simdjson7haswell12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit.i.i
  %.sroa.89.4.i = phi ptr [ %.sroa.89.3.i, %_ZN8simdjson7haswell12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit.i.i ], [ %i.xt, %.loopexit2248.i ] ; 2 uses
  %i.xu = xor i64 %i.fn, -1
  %i.xv = and i64 %i.xu, %i.fk
  %i.xw = or i64 %i.xv, %i.fi
  %i.xx = xor i64 %i.ef, %i.ej
  %i.xy = xor i64 %i.xx, -1
  %i.xz = and i64 %i.xw, %i.xy                    ; 2 uses
  %i.ya = and i64 %i.ej, %i.pd
  %i.yb = or i64 %i.ov, %.sroa.236.02266.i
  %i.yc = or i64 %i.yb, %i.ya                     ; 2 uses
  %i.yd = add nuw i64 %.sroa.11.02261.i, 128      ; 4 uses
  %i.ye = icmp ult i64 %i.yd, %spec.select.i.i
  br i1 %i.ye, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !199

._crit_edge.thread.i:                             ; preds = %_ZN8simdjson7haswell12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.thread.i, %_ZN8simdjson7haswell12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.thread.thread.i
  %.ph.i = phi ptr [ %i.ae, %_ZN8simdjson7haswell12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.thread.thread.i ], [ %i.ag, %_ZN8simdjson7haswell12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.thread.i ] ; 2 uses
  %.0132367.ph.i = phi i64 [ %.013.ph.i, %_ZN8simdjson7haswell12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.thread.thread.i ], [ %.013.i, %_ZN8simdjson7haswell12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.thread.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %_ZNK8simdjson7haswell12_GLOBAL__N_16stage116buf_block_readerILm128EE13get_remainderEPh.exit.i

._crit_edge.i:                                    ; preds = %_ZN8simdjson7haswell12_GLOBAL__N_16stage123json_structural_indexer4stepILm128EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit63.i
  %i.yf = or <4 x i64> %.sroa.41638.1.i, %.sroa.79.1.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.yg = icmp eq i64 %.013.i, %i.yd
  br i1 %i.yg, label %_ZN8simdjson7haswell12_GLOBAL__N_16stage123json_structural_indexer6finishERNS0_25dom_parser_implementationEmmNS_11stage1_modeE.exit.i, label %_ZNK8simdjson7haswell12_GLOBAL__N_16stage116buf_block_readerILm128EE13get_remainderEPh.exit.i

_ZNK8simdjson7haswell12_GLOBAL__N_16stage116buf_block_readerILm128EE13get_remainderEPh.exit.i: ; preds = %._crit_edge.i, %._crit_edge.thread.i
  %.sroa.32.0.lcssa2391.i = phi i64 [ 0, %._crit_edge.thread.i ], [ %i.ek, %._crit_edge.i ]
  %.sroa.41638.0.lcssa2390.i = phi <4 x i64> [ zeroinitializer, %._crit_edge.thread.i ], [ %.sroa.41638.1.i, %._crit_edge.i ]
  %.sroa.70.0.lcssa2389.i = phi <4 x i64> [ zeroinitializer, %._crit_edge.thread.i ], [ %.sroa.70.1.i, %._crit_edge.i ] ; 2 uses
  %.sroa.79.0.lcssa2388.i = phi <4 x i64> [ zeroinitializer, %._crit_edge.thread.i ], [ %i.yf, %._crit_edge.i ] ; 2 uses
  %.sroa.89.0.lcssa2387.i = phi ptr [ %.ph.i, %._crit_edge.thread.i ], [ %.sroa.89.4.i, %._crit_edge.i ] ; 29 uses
  %.sroa.226.0.lcssa2386.i = phi i64 [ 0, %._crit_edge.thread.i ], [ %i.xz, %._crit_edge.i ] ; 5 uses
  %.sroa.236.0.lcssa2385.i = phi i64 [ 0, %._crit_edge.thread.i ], [ %i.yc, %._crit_edge.i ]
  %.sroa.12.0.lcssa2384.i = phi i64 [ 0, %._crit_edge.thread.i ], [ %.sroa.12.3.i, %._crit_edge.i ] ; 3 uses
  %.sroa.0.0.lcssa2383.i = phi i64 [ 0, %._crit_edge.thread.i ], [ %i.fo, %._crit_edge.i ]
  %.sroa.11.0.lcssa2382.i = phi i64 [ 0, %._crit_edge.thread.i ], [ %i.yd, %._crit_edge.i ] ; 30 uses
  %.01323672381.i = phi i64 [ %.0132367.ph.i, %._crit_edge.thread.i ], [ %.013.i, %._crit_edge.i ] ; 3 uses
  %i.yh = phi ptr [ %.ph.i, %._crit_edge.thread.i ], [ %i.ag, %._crit_edge.i ] ; 14 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.a, i8 32, i64 128, i1 false)
  %i.yi = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.11.0.lcssa2382.i
  %i.yj = sub i64 %.01323672381.i, %.sroa.11.0.lcssa2382.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr readonly align 1 %i.yi, i64 %i.yj, i1 false)
  %.0..0..0..0..0..i = load <4 x i64>, ptr %i.a, align 16, !tbaa !36 ; 6 uses
  %.32..32..32..32..32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.32..32..32..32..32..i = load <4 x i64>, ptr %.32..32..32..32..32..sroa_idx, align 16, !tbaa !36 ; 6 uses
  %.64..64..64..64..64..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %.64..64..64..64..64..i = load <4 x i64>, ptr %.64..64..64..64..64..sroa_idx, align 16, !tbaa !36 ; 6 uses
  %.96..96..96..96..96..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %.96..96..96..96..96..i = load <4 x i64>, ptr %.96..96..96..96..96..sroa_idx, align 16, !tbaa !36 ; 5 uses
  %i.yk = bitcast <4 x i64> %.0..0..0..0..0..i to <32 x i8> ; 9 uses
  %i.yl = icmp eq <32 x i8> %i.yk, splat (i8 92)
  %i.ym = bitcast <4 x i64> %.32..32..32..32..32..i to <32 x i8> ; 10 uses
  %i.yn = icmp eq <32 x i8> %i.ym, splat (i8 92)
  %i.yo = bitcast <32 x i1> %i.yl to i32
  %i.yp = zext i32 %i.yo to i64
  %i.yq = bitcast <32 x i1> %i.yn to i32
  %i.yr = sext i32 %i.yq to i64
  %i.ys = shl nsw i64 %i.yr, 32                   ; 2 uses
  %i.yt = or disjoint i64 %i.ys, %i.yp            ; 3 uses
  %.not.i68.i.i = icmp eq i64 %i.yt, 0
  br i1 %.not.i68.i.i, label %_ZN8simdjson7haswell12_GLOBAL__N_16stage119json_escape_scanner4nextEm.exit73.i.i, label %bb.n

bb.n:                                             ; preds = %_ZNK8simdjson7haswell12_GLOBAL__N_16stage116buf_block_readerILm128EE13get_remainderEPh.exit.i
  %i.yu = xor i64 %.sroa.12.0.lcssa2384.i, -1
  %i.yv = and i64 %i.yt, %i.yu                    ; 2 uses
  %i.yw = shl i64 %i.yv, 1
  %i.yx = or i64 %i.yw, -6148914691236517206
  %i.yy = sub i64 %i.yx, %i.yv
  %i.yz = xor i64 %i.yy, -6148914691236517206     ; 2 uses
  %i.za = or i64 %i.yt, %.sroa.12.0.lcssa2384.i
  %i.zb = xor i64 %i.yz, %i.za
  %i.zc = and i64 %i.yz, %i.ys
  %i.zd = lshr i64 %i.zc, 63
  br label %_ZN8simdjson7haswell12_GLOBAL__N_16stage119json_escape_scanner4nextEm.exit73.i.i

_ZN8simdjson7haswell12_GLOBAL__N_16stage119json_escape_scanner4nextEm.exit73.i.i: ; preds = %bb.n, %_ZNK8simdjson7haswell12_GLOBAL__N_16stage116buf_block_readerILm128EE13get_remainderEPh.exit.i
  %.sroa.12.1.i = phi i64 [ %i.zd, %bb.n ], [ 0, %_ZNK8simdjson7haswell12_GLOBAL__N_16stage116buf_block_readerILm128EE13get_remainderEPh.exit.i ] ; 3 uses
  %.sroa.0.0.i69.i.i = phi i64 [ %i.zb, %bb.n ], [ %.sroa.12.0.lcssa2384.i, %_ZNK8simdjson7haswell12_GLOBAL__N_16stage116buf_block_readerILm128EE13get_remainderEPh.exit.i ]
  %i.ze = icmp eq <32 x i8> %i.yk, splat (i8 34)
  %i.zf = icmp eq <32 x i8> %i.ym, splat (i8 34)
  %i.zg = bitcast <32 x i1> %i.ze to i32
  %i.zh = zext i32 %i.zg to i64
  %i.zi = bitcast <32 x i1> %i.zf to i32
  %i.zj = sext i32 %i.zi to i64
  %i.zk = shl nsw i64 %i.zj, 32
  %i.zl = or disjoint i64 %i.zk, %i.zh
  %i.zm = xor i64 %.sroa.0.0.i69.i.i, -1
  %i.zn = and i64 %i.zl, %i.zm                    ; 3 uses
  %i.zo = insertelement <2 x i64> poison, i64 %i.zn, i64 0
  %i.zp = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.zo, <2 x i64> <i64 -1, i64 poison>, i8 0)
  %i.zq = extractelement <2 x i64> %i.zp, i64 0
  %i.zr = xor i64 %i.zq, %.sroa.32.0.lcssa2391.i  ; 3 uses
  %i.zs = ashr i64 %i.zr, 63
  %i.zt = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 32, i8 100, i8 100, i8 100, i8 17, i8 100, i8 113, i8 2, i8 100, i8 9, i8 10, i8 112, i8 100, i8 13, i8 100, i8 100, i8 32, i8 100, i8 100, i8 100, i8 17, i8 100, i8 113, i8 2, i8 100, i8 9, i8 10, i8 112, i8 100, i8 13, i8 100, i8 100>, <32 x i8> %i.yk)
  %i.zu = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 32, i8 100, i8 100, i8 100, i8 17, i8 100, i8 113, i8 2, i8 100, i8 9, i8 10, i8 112, i8 100, i8 13, i8 100, i8 100, i8 32, i8 100, i8 100, i8 100, i8 17, i8 100, i8 113, i8 2, i8 100, i8 9, i8 10, i8 112, i8 100, i8 13, i8 100, i8 100>, <32 x i8> %i.ym)
  %i.zv = icmp eq <32 x i8> %i.zt, %i.yk
  %i.zw = icmp eq <32 x i8> %i.zu, %i.ym
  %i.zx = bitcast <32 x i1> %i.zv to i32
  %i.zy = zext i32 %i.zx to i64
  %i.zz = bitcast <32 x i1> %i.zw to i32
  %i.aaa = sext i32 %i.zz to i64
  %i.aab = shl nsw i64 %i.aaa, 32
  %i.aac = or disjoint i64 %i.aab, %i.zy
  %i.aad = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 58, i8 123, i8 44, i8 125, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 58, i8 123, i8 44, i8 125, i8 0, i8 0>, <32 x i8> %i.yk)
  %i.aae = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 58, i8 123, i8 44, i8 125, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 58, i8 123, i8 44, i8 125, i8 0, i8 0>, <32 x i8> %i.ym)
  %i.aaf = bitcast <4 x i64> %.0..0..0..0..0..i to <32 x i8>
  %i.aag = or <32 x i8> %i.aaf, splat (i8 32)
  %i.aah = icmp eq <32 x i8> %i.aag, %i.aad
  %i.aai = bitcast <4 x i64> %.32..32..32..32..32..i to <32 x i8>
  %i.aaj = or <32 x i8> %i.aai, splat (i8 32)
  %i.aak = icmp eq <32 x i8> %i.aaj, %i.aae
  %i.aal = bitcast <32 x i1> %i.aah to i32
  %i.aam = zext i32 %i.aal to i64
  %i.aan = bitcast <32 x i1> %i.aak to i32
  %i.aao = sext i32 %i.aan to i64
  %i.aap = shl nsw i64 %i.aao, 32
  %i.aaq = or disjoint i64 %i.aap, %i.aam         ; 2 uses
  %i.aar = or i64 %i.aaq, %i.aac
  %i.aas = xor i64 %i.aar, -1                     ; 2 uses
  %i.aat = xor i64 %i.zn, -1
  %i.aau = and i64 %i.aas, %i.aat                 ; 2 uses
  %i.aav = shl i64 %i.aau, 1
  %i.aaw = or disjoint i64 %i.aav, %.sroa.0.0.lcssa2383.i
  %i.aax = bitcast <4 x i64> %.64..64..64..64..64..i to <32 x i8> ; 9 uses
  %i.aay = icmp eq <32 x i8> %i.aax, splat (i8 92)
  %i.aaz = bitcast <4 x i64> %.96..96..96..96..96..i to <32 x i8> ; 10 uses
  %i.aba = icmp eq <32 x i8> %i.aaz, splat (i8 92)
  %i.abb = bitcast <32 x i1> %i.aay to i32
  %i.abc = zext i32 %i.abb to i64
  %i.abd = bitcast <32 x i1> %i.aba to i32
  %i.abe = sext i32 %i.abd to i64
  %i.abf = shl nsw i64 %i.abe, 32
  %i.abg = or disjoint i64 %i.abf, %i.abc         ; 4 uses
  %.not.i.i.i = icmp eq i64 %i.abg, 0
  br i1 %.not.i.i.i, label %.noexc117.i, label %bb.o

bb.o:                                             ; preds = %_ZN8simdjson7haswell12_GLOBAL__N_16stage119json_escape_scanner4nextEm.exit73.i.i
  %i.abh = xor i64 %.sroa.12.1.i, -1
  %i.abi = and i64 %i.abg, %i.abh
  %i.abj = shl i64 %i.abg, 1
  %i.abk = or i64 %i.abj, -6148914691236517206
  %i.abl = sub i64 %i.abk, %i.abi
  %i.abm = or i64 %.sroa.12.1.i, %i.abg
  %i.abn = xor i64 %i.abm, %i.abl
  %i.abo = xor i64 %i.abn, -6148914691236517206
  br label %.noexc117.i

.noexc117.i:                                      ; preds = %bb.o, %_ZN8simdjson7haswell12_GLOBAL__N_16stage119json_escape_scanner4nextEm.exit73.i.i
  %.sroa.0.0.i.i.i = phi i64 [ %i.abo, %bb.o ], [ %.sroa.12.1.i, %_ZN8simdjson7haswell12_GLOBAL__N_16stage119json_escape_scanner4nextEm.exit73.i.i ]
  %i.abp = icmp eq <32 x i8> %i.aax, splat (i8 34)
  %i.abq = icmp eq <32 x i8> %i.aaz, splat (i8 34)
  %i.abr = bitcast <32 x i1> %i.abp to i32
  %i.abs = zext i32 %i.abr to i64
  %i.abt = bitcast <32 x i1> %i.abq to i32
  %i.abu = sext i32 %i.abt to i64
  %i.abv = shl nsw i64 %i.abu, 32
  %i.abw = or disjoint i64 %i.abv, %i.abs
  %i.abx = xor i64 %.sroa.0.0.i.i.i, -1
  %i.aby = and i64 %i.abw, %i.abx                 ; 3 uses
  %i.abz = insertelement <2 x i64> poison, i64 %i.aby, i64 0
  %i.aca = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.abz, <2 x i64> <i64 -1, i64 poison>, i8 0)
  %i.acb = extractelement <2 x i64> %i.aca, i64 0
  %i.acc = xor i64 %i.acb, %i.zs                  ; 3 uses
  %i.acd = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 32, i8 100, i8 100, i8 100, i8 17, i8 100, i8 113, i8 2, i8 100, i8 9, i8 10, i8 112, i8 100, i8 13, i8 100, i8 100, i8 32, i8 100, i8 100, i8 100, i8 17, i8 100, i8 113, i8 2, i8 100, i8 9, i8 10, i8 112, i8 100, i8 13, i8 100, i8 100>, <32 x i8> %i.aax)
  %i.ace = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 32, i8 100, i8 100, i8 100, i8 17, i8 100, i8 113, i8 2, i8 100, i8 9, i8 10, i8 112, i8 100, i8 13, i8 100, i8 100, i8 32, i8 100, i8 100, i8 100, i8 17, i8 100, i8 113, i8 2, i8 100, i8 9, i8 10, i8 112, i8 100, i8 13, i8 100, i8 100>, <32 x i8> %i.aaz)
  %i.acf = icmp eq <32 x i8> %i.acd, %i.aax
  %i.acg = icmp eq <32 x i8> %i.ace, %i.aaz
  %i.ach = bitcast <32 x i1> %i.acf to i32
  %i.aci = zext i32 %i.ach to i64
  %i.acj = bitcast <32 x i1> %i.acg to i32
  %i.ack = sext i32 %i.acj to i64
  %i.acl = shl nsw i64 %i.ack, 32
  %i.acm = or disjoint i64 %i.acl, %i.aci
  %i.acn = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 58, i8 123, i8 44, i8 125, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 58, i8 123, i8 44, i8 125, i8 0, i8 0>, <32 x i8> %i.aax)
  %i.aco = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 58, i8 123, i8 44, i8 125, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 58, i8 123, i8 44, i8 125, i8 0, i8 0>, <32 x i8> %i.aaz)
  %i.acp = bitcast <4 x i64> %.64..64..64..64..64..i to <32 x i8>
  %i.acq = or <32 x i8> %i.acp, splat (i8 32)
  %i.acr = icmp eq <32 x i8> %i.acq, %i.acn
  %i.acs = bitcast <4 x i64> %.96..96..96..96..96..i to <32 x i8>
  %i.act = or <32 x i8> %i.acs, splat (i8 32)
  %i.acu = icmp eq <32 x i8> %i.act, %i.aco
  %i.acv = bitcast <32 x i1> %i.acr to i32
  %i.acw = zext i32 %i.acv to i64
  %i.acx = bitcast <32 x i1> %i.acu to i32
  %i.acy = sext i32 %i.acx to i64
  %i.acz = shl nsw i64 %i.acy, 32
  %i.ada = or disjoint i64 %i.acz, %i.acw         ; 2 uses
  %i.adb = or i64 %i.ada, %i.acm
  %i.adc = xor i64 %i.adb, -1                     ; 2 uses
  %i.add = xor i64 %i.aby, -1
  %i.ade = and i64 %i.adc, %i.add
  %i.adf = tail call i64 @llvm.fshl.i64(i64 %i.ade, i64 %i.aau, i64 1)
  %i.adg = icmp ult <32 x i8> %i.yk, splat (i8 32)
  %i.adh = icmp ult <32 x i8> %i.ym, splat (i8 32)
  %i.adi = bitcast <32 x i1> %i.adg to i32
  %i.adj = zext i32 %i.adi to i64
  %i.adk = bitcast <32 x i1> %i.adh to i32
  %i.adl = sext i32 %i.adk to i64
  %i.adm = shl nsw i64 %i.adl, 32
  %i.adn = or disjoint i64 %i.adm, %i.adj
  %i.ado = or <4 x i64> %.32..32..32..32..32..i, %.0..0..0..0..0..i
  %i.adp = bitcast <4 x i64> %i.ado to <32 x i8>
  %i.adq = icmp slt <32 x i8> %i.adp, zeroinitializer
  %i.adr = bitcast <32 x i1> %i.adq to i32
  %i.ads = icmp eq i32 %i.adr, 0
  br i1 %i.ads, label %_ZN8simdjson7haswell12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit.i115.i, label %.noexc122.i, !prof !110

.noexc122.i:                                      ; preds = %.noexc117.i
  %i.adt = shufflevector <4 x i64> %.sroa.70.0.lcssa2389.i, <4 x i64> %.0..0..0..0..0..i, <4 x i32> <i32 poison, i32 3, i32 poison, i32 5>
  %i.adu = bitcast <4 x i64> %i.adt to <32 x i8>  ; 3 uses
  %i.adv = shufflevector <32 x i8> %i.adu, <32 x i8> %i.yk, <32 x i32> <i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62> ; 2 uses
  %i.adw = bitcast <32 x i8> %i.adv to <16 x i16>
  %i.adx = lshr <16 x i16> %i.adw, splat (i16 4)
  %i.ady = bitcast <16 x i16> %i.adx to <32 x i8>
  %i.adz = and <32 x i8> %i.ady, splat (i8 15)
  %i.aea = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73>, <32 x i8> %i.adz)
  %i.aeb = and <32 x i8> %i.adv, splat (i8 15)
  %i.aec = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53, i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53>, <32 x i8> %i.aeb)
  %i.aed = bitcast <4 x i64> %.0..0..0..0..0..i to <16 x i16>
  %i.aee = lshr <16 x i16> %i.aed, splat (i16 4)
  %i.aef = bitcast <16 x i16> %i.aee to <32 x i8>
  %i.aeg = and <32 x i8> %i.aef, splat (i8 15)
  %i.aeh = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1>, <32 x i8> %i.aeg)
  %i.aei = and <32 x i8> %i.aec, %i.aea
  %i.aej = and <32 x i8> %i.aei, %i.aeh
  %i.aek = shufflevector <32 x i8> %i.adu, <32 x i8> %i.yk, <32 x i32> <i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61>
  %i.ael = shufflevector <32 x i8> %i.adu, <32 x i8> %i.yk, <32 x i32> <i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 29, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60>
  %i.aem = tail call <32 x i8> @llvm.usub.sat.v32i8(<32 x i8> %i.aek, <32 x i8> splat (i8 96))
  %i.aen = tail call <32 x i8> @llvm.usub.sat.v32i8(<32 x i8> %i.ael, <32 x i8> splat (i8 112))
  %i.aeo = or <32 x i8> %i.aem, %i.aen
  %.inner74 = and <32 x i8> %i.aeo, splat (i8 -128)
  %.inner75 = xor <32 x i8> %.inner74, %i.aej
  %i.aep = bitcast <32 x i8> %.inner75 to <4 x i64>
  %i.aeq = shufflevector <4 x i64> %.0..0..0..0..0..i, <4 x i64> %.32..32..32..32..32..i, <4 x i32> <i32 poison, i32 3, i32 poison, i32 5>
  %i.aer = bitcast <4 x i64> %i.aeq to <32 x i8>  ; 3 uses
  %i.aes = shufflevector <32 x i8> %i.aer, <32 x i8> %i.ym, <32 x i32> <i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62> ; 2 uses
  %i.aet = bitcast <32 x i8> %i.aes to <16 x i16>
  %i.aeu = lshr <16 x i16> %i.aet, splat (i16 4)
  %i.aev = bitcast <16 x i16> %i.aeu to <32 x i8>
  %i.aew = and <32 x i8> %i.aev, splat (i8 15)
  %i.aex = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73>, <32 x i8> %i.aew)
  %i.aey = and <32 x i8> %i.aes, splat (i8 15)
  %i.aez = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53, i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53>, <32 x i8> %i.aey)
  %i.afa = bitcast <4 x i64> %.32..32..32..32..32..i to <16 x i16>
  %i.afb = lshr <16 x i16> %i.afa, splat (i16 4)
  %i.afc = bitcast <16 x i16> %i.afb to <32 x i8>
  %i.afd = and <32 x i8> %i.afc, splat (i8 15)
  %i.afe = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1>, <32 x i8> %i.afd)
  %i.aff = and <32 x i8> %i.aez, %i.aex
  %i.afg = and <32 x i8> %i.aff, %i.afe
  %i.afh = shufflevector <32 x i8> %i.aer, <32 x i8> %i.ym, <32 x i32> <i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61>
  %i.afi = shufflevector <32 x i8> %i.aer, <32 x i8> %i.ym, <32 x i32> <i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 29, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60>
  %i.afj = tail call <32 x i8> @llvm.usub.sat.v32i8(<32 x i8> %i.afh, <32 x i8> splat (i8 96))
  %i.afk = tail call <32 x i8> @llvm.usub.sat.v32i8(<32 x i8> %i.afi, <32 x i8> splat (i8 112))
  %i.afl = or <32 x i8> %i.afj, %i.afk
  %.inner78 = and <32 x i8> %i.afl, splat (i8 -128)
  %.inner79 = xor <32 x i8> %.inner78, %i.afg
  %i.afm = bitcast <32 x i8> %.inner79 to <4 x i64>
  %i.afn = or <4 x i64> %.sroa.41638.0.lcssa2390.i, %i.aep
  %i.afo = or <4 x i64> %i.afn, %i.afm            ; 2 uses
  %i.afp = tail call <32 x i8> @llvm.usub.sat.v32i8(<32 x i8> %i.ym, <32 x i8> <i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -17, i8 -33, i8 -65>)
  %i.afq = bitcast <32 x i8> %i.afp to <4 x i64>
  %i.afr = or <4 x i64> %i.afo, %i.afq
  br label %_ZN8simdjson7haswell12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit.i115.i

_ZN8simdjson7haswell12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit.i115.i: ; preds = %.noexc122.i, %.noexc117.i
  %.sroa.79.4.i = phi <4 x i64> [ %i.afr, %.noexc122.i ], [ %.sroa.79.0.lcssa2388.i, %.noexc117.i ]
  %.sroa.70.3.i = phi <4 x i64> [ %.32..32..32..32..32..i, %.noexc122.i ], [ %.sroa.70.0.lcssa2389.i, %.noexc117.i ]
  %.sroa.41638.4.i = phi <4 x i64> [ %i.afo, %.noexc122.i ], [ %.sroa.79.0.lcssa2388.i, %.noexc117.i ]
  %i.afs = trunc i64 %.sroa.11.0.lcssa2382.i to i32 ; 2 uses
  %i.aft = add i32 %i.afs, -64                    ; 27 uses
  %i.afu = icmp eq i64 %.sroa.226.0.lcssa2386.i, 0
  br i1 %i.afu, label %.noexc100.i, label %.noexc195.i

.noexc195.i:                                      ; preds = %_ZN8simdjson7haswell12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit.i115.i
  %i.afv = tail call noundef range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %.sroa.226.0.lcssa2386.i) ; 11 uses
  %i.afw = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.sroa.226.0.lcssa2386.i, i1 true)
  %i.afx = trunc nuw nsw i64 %i.afw to i32
  %i.afy = or disjoint i32 %i.aft, %i.afx
  store i32 %i.afy, ptr %.sroa.89.0.lcssa2387.i, align 4, !tbaa !37
  %i.afz = add i64 %.sroa.226.0.lcssa2386.i, -1
  %i.aga = and i64 %i.afz, %.sroa.226.0.lcssa2386.i ; 3 uses
  %i.agb = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.aga, i1 true)
  %i.agc = trunc nuw nsw i64 %i.agb to i32
  %i.agd = or disjoint i32 %i.aft, %i.agc
  %i.age = getelementptr inbounds nuw i8, ptr %.sroa.89.0.lcssa2387.i, i64 4
  store i32 %i.agd, ptr %i.age, align 4, !tbaa !37
  %i.agf = add i64 %i.aga, -2
  %i.agg = and i64 %i.agf, %i.aga                 ; 3 uses
  %i.agh = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.agg, i1 true)
  %i.agi = trunc nuw nsw i64 %i.agh to i32
  %i.agj = or disjoint i32 %i.aft, %i.agi
  %i.agk = getelementptr inbounds nuw i8, ptr %.sroa.89.0.lcssa2387.i, i64 8
  store i32 %i.agj, ptr %i.agk, align 4, !tbaa !37
  %i.agl = add i64 %i.agg, -2
  %i.agm = and i64 %i.agl, %i.agg                 ; 3 uses
  %i.agn = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.agm, i1 true)
  %i.ago = trunc nuw nsw i64 %i.agn to i32
  %i.agp = or disjoint i32 %i.aft, %i.ago
  %i.agq = getelementptr inbounds nuw i8, ptr %.sroa.89.0.lcssa2387.i, i64 12
  store i32 %i.agp, ptr %i.agq, align 4, !tbaa !37
  %i.agr = icmp samesign ugt i64 %i.afv, 4
  br i1 %i.agr, label %.noexc221.i, label %.loopexit2246.i, !prof !108

.noexc221.i:                                      ; preds = %.noexc195.i
  %i.ags = add i64 %i.agm, -2
  %i.agt = and i64 %i.ags, %i.agm                 ; 3 uses
  %i.agu = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.agt, i1 true)
  %i.agv = trunc nuw nsw i64 %i.agu to i32
  %i.agw = or disjoint i32 %i.aft, %i.agv
  %i.agx = getelementptr inbounds nuw i8, ptr %.sroa.89.0.lcssa2387.i, i64 16
  store i32 %i.agw, ptr %i.agx, align 4, !tbaa !37
  %i.agy = add i64 %i.agt, -2
  %i.agz = and i64 %i.agy, %i.agt                 ; 3 uses
  %i.aha = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.agz, i1 true)
  %i.ahb = trunc nuw nsw i64 %i.aha to i32
  %i.ahc = or disjoint i32 %i.aft, %i.ahb
  %i.ahd = getelementptr inbounds nuw i8, ptr %.sroa.89.0.lcssa2387.i, i64 20
  store i32 %i.ahc, ptr %i.ahd, align 4, !tbaa !37
  %i.ahe = add i64 %i.agz, -1
  %i.ahf = and i64 %i.ahe, %i.agz                 ; 3 uses
  %i.ahg = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ahf, i1 true)
  %i.ahh = trunc nuw nsw i64 %i.ahg to i32
  %i.ahi = or disjoint i32 %i.aft, %i.ahh
  %i.ahj = getelementptr inbounds nuw i8, ptr %.sroa.89.0.lcssa2387.i, i64 24
  store i32 %i.ahi, ptr %i.ahj, align 4, !tbaa !37
  %i.ahk = add i64 %i.ahf, -2
  %i.ahl = and i64 %i.ahk, %i.ahf                 ; 3 uses
  %i.ahm = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ahl, i1 true)
  %i.ahn = trunc nuw nsw i64 %i.ahm to i32
  %i.aho = or disjoint i32 %i.aft, %i.ahn
  %i.ahp = getelementptr inbounds nuw i8, ptr %.sroa.89.0.lcssa2387.i, i64 28
  store i32 %i.aho, ptr %i.ahp, align 4, !tbaa !37
  %i.ahq = icmp samesign ugt i64 %i.afv, 8
  br i1 %i.ahq, label %.noexc297.i, label %.loopexit2246.i, !prof !108

.noexc297.i:                                      ; preds = %.noexc221.i
  %i.ahr = add i64 %i.ahl, -2
  %i.ahs = and i64 %i.ahr, %i.ahl                 ; 3 uses
  %i.aht = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ahs, i1 true)
  %i.ahu = trunc nuw nsw i64 %i.aht to i32
  %i.ahv = or disjoint i32 %i.aft, %i.ahu
  %i.ahw = getelementptr inbounds nuw i8, ptr %.sroa.89.0.lcssa2387.i, i64 32
  store i32 %i.ahv, ptr %i.ahw, align 4, !tbaa !37
  %i.ahx = add i64 %i.ahs, -2
  %i.ahy = and i64 %i.ahx, %i.ahs                 ; 3 uses
  %i.ahz = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ahy, i1 true)
  %i.aia = trunc nuw nsw i64 %i.ahz to i32
  %i.aib = or disjoint i32 %i.aft, %i.aia
  %i.aic = getelementptr inbounds nuw i8, ptr %.sroa.89.0.lcssa2387.i, i64 36
  store i32 %i.aib, ptr %i.aic, align 4, !tbaa !37
  %i.aid = add i64 %i.ahy, -2
  %i.aie = and i64 %i.aid, %i.ahy                 ; 3 uses
  %i.aif = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.aie, i1 true)
  %i.aig = trunc nuw nsw i64 %i.aif to i32
  %i.aih = or disjoint i32 %i.aft, %i.aig
  %i.aii = getelementptr inbounds nuw i8, ptr %.sroa.89.0.lcssa2387.i, i64 40
  store i32 %i.aih, ptr %i.aii, align 4, !tbaa !37
  %i.aij = add i64 %i.aie, -1
  %i.aik = and i64 %i.aij, %i.aie                 ; 3 uses
  %i.ail = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.aik, i1 true)
  %i.aim = trunc nuw nsw i64 %i.ail to i32
  %i.ain = or disjoint i32 %i.aft, %i.aim
end_hunk_0
begin_hunk_1_@_ZN8simdjson7haswell25dom_parser_implementation6stage1EPKhmNS_11stage1_modeE:bb.a
  %i.axq = trunc nuw nsw i64 %i.axp to i32
  %i.axr = or disjoint i32 %i.awc, %i.axq
  %i.axs = getelementptr inbounds nuw i8, ptr %.sroa.89.2.i, i64 24
  store i32 %i.axr, ptr %i.axs, align 4, !tbaa !37
  %i.axt = add i64 %i.axo, -2
  %i.axu = and i64 %i.axt, %i.axo                 ; 3 uses
  %i.axv = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.axu, i1 true)
  %i.axw = trunc nuw nsw i64 %i.axv to i32
  %i.axx = or disjoint i32 %i.awc, %i.axw
  %i.axy = getelementptr inbounds nuw i8, ptr %.sroa.89.2.i, i64 28
  store i32 %i.axx, ptr %i.axy, align 4, !tbaa !37
  %i.axz = icmp samesign ugt i64 %i.awe, 8
  br i1 %i.axz, label %.noexc286.i, label %.loopexit.i, !prof !108

.noexc286.i:                                      ; preds = %.noexc232.i
  %i.aya = add i64 %i.axu, -2
  %i.ayb = and i64 %i.aya, %i.axu                 ; 3 uses
  %i.ayc = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ayb, i1 true)
  %i.ayd = trunc nuw nsw i64 %i.ayc to i32
  %i.aye = or disjoint i32 %i.awc, %i.ayd
  %i.ayf = getelementptr inbounds nuw i8, ptr %.sroa.89.2.i, i64 32
  store i32 %i.aye, ptr %i.ayf, align 4, !tbaa !37
  %i.ayg = add i64 %i.ayb, -2
  %i.ayh = and i64 %i.ayg, %i.ayb                 ; 3 uses
  %i.ayi = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ayh, i1 true)
  %i.ayj = trunc nuw nsw i64 %i.ayi to i32
  %i.ayk = or disjoint i32 %i.awc, %i.ayj
  %i.ayl = getelementptr inbounds nuw i8, ptr %.sroa.89.2.i, i64 36
  store i32 %i.ayk, ptr %i.ayl, align 4, !tbaa !37
  %i.aym = add i64 %i.ayh, -2
  %i.ayn = and i64 %i.aym, %i.ayh                 ; 3 uses
  %i.ayo = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ayn, i1 true)
  %i.ayp = trunc nuw nsw i64 %i.ayo to i32
  %i.ayq = or disjoint i32 %i.awc, %i.ayp
  %i.ayr = getelementptr inbounds nuw i8, ptr %.sroa.89.2.i, i64 40
  store i32 %i.ayq, ptr %i.ayr, align 4, !tbaa !37
  %i.ays = add i64 %i.ayn, -1
  %i.ayt = and i64 %i.ays, %i.ayn                 ; 3 uses
  %i.ayu = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ayt, i1 true)
  %i.ayv = trunc nuw nsw i64 %i.ayu to i32
  %i.ayw = or disjoint i32 %i.awc, %i.ayv
  %i.ayx = getelementptr inbounds nuw i8, ptr %.sroa.89.2.i, i64 44
  store i32 %i.ayw, ptr %i.ayx, align 4, !tbaa !37
  %i.ayy = icmp samesign ugt i64 %i.awe, 12
  br i1 %i.ayy, label %.noexc362.i, label %.loopexit.i, !prof !108

.noexc362.i:                                      ; preds = %.noexc286.i
  %i.ayz = add i64 %i.ayt, -2
  %i.aza = and i64 %i.ayz, %i.ayt                 ; 3 uses
  %i.azb = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.aza, i1 true)
  %i.azc = trunc nuw nsw i64 %i.azb to i32
  %i.azd = or disjoint i32 %i.awc, %i.azc
  %i.aze = getelementptr inbounds nuw i8, ptr %.sroa.89.2.i, i64 48
  store i32 %i.azd, ptr %i.aze, align 4, !tbaa !37
  %i.azf = add i64 %i.aza, -2
  %i.azg = and i64 %i.azf, %i.aza                 ; 3 uses
  %i.azh = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.azg, i1 true)
  %i.azi = trunc nuw nsw i64 %i.azh to i32
  %i.azj = or disjoint i32 %i.awc, %i.azi
  %i.azk = getelementptr inbounds nuw i8, ptr %.sroa.89.2.i, i64 52
  store i32 %i.azj, ptr %i.azk, align 4, !tbaa !37
  %i.azl = add i64 %i.azg, -2
  %i.azm = and i64 %i.azl, %i.azg                 ; 3 uses
  %i.azn = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.azm, i1 true)
  %i.azo = trunc nuw nsw i64 %i.azn to i32
  %i.azp = or disjoint i32 %i.awc, %i.azo
  %i.azq = getelementptr inbounds nuw i8, ptr %.sroa.89.2.i, i64 56
  store i32 %i.azp, ptr %i.azq, align 4, !tbaa !37
  %i.azr = add i64 %i.azm, -2
  %i.azs = and i64 %i.azr, %i.azm                 ; 3 uses
  %i.azt = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.azs, i1 true)
  %i.azu = trunc nuw nsw i64 %i.azt to i32
  %i.azv = or disjoint i32 %i.awc, %i.azu
  %i.azw = getelementptr inbounds nuw i8, ptr %.sroa.89.2.i, i64 60
  store i32 %i.azv, ptr %i.azw, align 4, !tbaa !37
  %i.azx = icmp samesign ugt i64 %i.awe, 16
  br i1 %i.azx, label %.noexc416.i, label %.loopexit.i, !prof !108

.noexc416.i:                                      ; preds = %.noexc362.i
  %i.azy = add i64 %i.azs, -1
  %i.azz = and i64 %i.azy, %i.azs                 ; 3 uses
  %i.baa = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.azz, i1 true)
  %i.bab = trunc nuw nsw i64 %i.baa to i32
  %i.bac = or disjoint i32 %i.awc, %i.bab
  %i.bad = getelementptr inbounds nuw i8, ptr %.sroa.89.2.i, i64 64
  store i32 %i.bac, ptr %i.bad, align 4, !tbaa !37
  %i.bae = add i64 %i.azz, -2
  %i.baf = and i64 %i.bae, %i.azz                 ; 3 uses
  %i.bag = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.baf, i1 true)
  %i.bah = trunc nuw nsw i64 %i.bag to i32
  %i.bai = or disjoint i32 %i.awc, %i.bah
  %i.baj = getelementptr inbounds nuw i8, ptr %.sroa.89.2.i, i64 68
  store i32 %i.bai, ptr %i.baj, align 4, !tbaa !37
  %i.bak = add i64 %i.baf, -2
  %i.bal = and i64 %i.bak, %i.baf                 ; 3 uses
  %i.bam = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.bal, i1 true)
  %i.ban = trunc nuw nsw i64 %i.bam to i32
  %i.bao = or disjoint i32 %i.awc, %i.ban
  %i.bap = getelementptr inbounds nuw i8, ptr %.sroa.89.2.i, i64 72
  store i32 %i.bao, ptr %i.bap, align 4, !tbaa !37
  %i.baq = add i64 %i.bal, -2
  %i.bar = and i64 %i.baq, %i.bal                 ; 3 uses
  %i.bas = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.bar, i1 true)
  %i.bat = trunc nuw nsw i64 %i.bas to i32
  %i.bau = or disjoint i32 %i.awc, %i.bat
  %i.bav = getelementptr inbounds nuw i8, ptr %.sroa.89.2.i, i64 76
  store i32 %i.bau, ptr %i.bav, align 4, !tbaa !37
  %i.baw = icmp samesign ugt i64 %i.awe, 20
  br i1 %i.baw, label %.noexc152.i, label %.loopexit.i, !prof !108

.noexc152.i:                                      ; preds = %.noexc416.i
  %i.bax = add i64 %i.bar, -2
  %i.bay = and i64 %i.bax, %i.bar                 ; 3 uses
  %i.baz = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.bay, i1 true)
  %i.bba = trunc nuw nsw i64 %i.baz to i32
  %i.bbb = or disjoint i32 %i.awc, %i.bba
  %i.bbc = getelementptr inbounds nuw i8, ptr %.sroa.89.2.i, i64 80
  store i32 %i.bbb, ptr %i.bbc, align 4, !tbaa !37
  %i.bbd = add i64 %i.bay, -1
  %i.bbe = and i64 %i.bbd, %i.bay                 ; 3 uses
  %i.bbf = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.bbe, i1 true)
  %i.bbg = trunc nuw nsw i64 %i.bbf to i32
  %i.bbh = or disjoint i32 %i.awc, %i.bbg
  %i.bbi = getelementptr inbounds nuw i8, ptr %.sroa.89.2.i, i64 84
  store i32 %i.bbh, ptr %i.bbi, align 4, !tbaa !37
  %i.bbj = add i64 %i.bbe, -2
  %i.bbk = and i64 %i.bbj, %i.bbe                 ; 3 uses
  %i.bbl = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.bbk, i1 true)
  %i.bbm = trunc nuw nsw i64 %i.bbl to i32
  %i.bbn = or disjoint i32 %i.awc, %i.bbm
  %i.bbo = getelementptr inbounds nuw i8, ptr %.sroa.89.2.i, i64 88
  store i32 %i.bbn, ptr %i.bbo, align 4, !tbaa !37
  %i.bbp = add i64 %i.bbk, -2
  %i.bbq = and i64 %i.bbp, %i.bbk                 ; 3 uses
  %i.bbr = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.bbq, i1 true)
  %i.bbs = trunc nuw nsw i64 %i.bbr to i32
  %i.bbt = or disjoint i32 %i.awc, %i.bbs
  %i.bbu = getelementptr inbounds nuw i8, ptr %.sroa.89.2.i, i64 92
  store i32 %i.bbt, ptr %i.bbu, align 4, !tbaa !37
  %i.bbv = icmp samesign ugt i64 %i.awe, 24
  br i1 %i.bbv, label %.noexc153.i.preheader, label %.loopexit.i, !prof !111

.noexc153.i.preheader:                            ; preds = %.noexc152.i
  %i.bbw = add i64 %i.bbq, -2
  %i.bbx = and i64 %i.bbw, %i.bbq                 ; 2 uses
  %xtraiter110 = and i64 %i.awe, 1
  %i.bby = icmp eq i64 %i.awe, 25
  br i1 %i.bby, label %.noexc153.i.epil.preheader, label %.noexc153.i.preheader.new

.noexc153.i.preheader.new:                        ; preds = %.noexc153.i.preheader
  %i.bbz = and i64 %i.awe, 126
  %i.bca = add nsw i64 %i.bbz, -26
  br label %.noexc153.i

.noexc153.i:                                      ; preds = %.noexc153.i, %.noexc153.i.preheader.new
  %indvars.iv2331.i = phi i64 [ 24, %.noexc153.i.preheader.new ], [ %indvars.iv.next2332.i.1, %.noexc153.i ] ; 3 uses
  %.021652286.i = phi i64 [ %i.bbx, %.noexc153.i.preheader.new ], [ %i.bcn, %.noexc153.i ] ; 3 uses
  %niter114 = phi i64 [ 0, %.noexc153.i.preheader.new ], [ %niter114.next.1, %.noexc153.i ] ; 2 uses
  %i.bcb = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.021652286.i, i1 true)
  %i.bcc = trunc nuw nsw i64 %i.bcb to i32
  %i.bcd = or disjoint i32 %i.awc, %i.bcc
  %i.bce = getelementptr inbounds nuw [4 x i8], ptr %.sroa.89.2.i, i64 %indvars.iv2331.i
  store i32 %i.bcd, ptr %i.bce, align 4, !tbaa !37
  %i.bcf = add i64 %.021652286.i, -1
  %i.bcg = and i64 %i.bcf, %.021652286.i          ; 3 uses
  %i.bch = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.bcg, i1 true)
  %i.bci = trunc nuw nsw i64 %i.bch to i32
  %i.bcj = or disjoint i32 %i.awc, %i.bci
  %i.bck = getelementptr inbounds nuw [4 x i8], ptr %.sroa.89.2.i, i64 %indvars.iv2331.i
  %i.bcl = getelementptr inbounds nuw i8, ptr %i.bck, i64 4
  store i32 %i.bcj, ptr %i.bcl, align 4, !tbaa !37
  %i.bcm = add i64 %i.bcg, -2
  %i.bcn = and i64 %i.bcm, %i.bcg                 ; 2 uses
  %indvars.iv.next2332.i.1 = add nuw nsw i64 %indvars.iv2331.i, 2 ; 2 uses
  %niter114.next.1 = add i64 %niter114, 2
  %niter114.ncmp.1 = icmp eq i64 %niter114, %i.bca
  br i1 %niter114.ncmp.1, label %.loopexit.i.loopexit.unr-lcssa, label %.noexc153.i, !llvm.loop !198

.loopexit.i.loopexit.unr-lcssa:                   ; preds = %.noexc153.i
  %lcmp.mod111.not = icmp eq i64 %xtraiter110, 0
  br i1 %lcmp.mod111.not, label %.loopexit.i, label %.noexc153.i.epil.preheader

.noexc153.i.epil.preheader:                       ; preds = %.loopexit.i.loopexit.unr-lcssa, %.noexc153.i.preheader
  %indvars.iv2331.i.epil.init = phi i64 [ 24, %.noexc153.i.preheader ], [ %indvars.iv.next2332.i.1, %.loopexit.i.loopexit.unr-lcssa ]
  %.021652286.i.epil.init = phi i64 [ %i.bbx, %.noexc153.i.preheader ], [ %i.bcn, %.loopexit.i.loopexit.unr-lcssa ]
  %lcmp.mod112 = trunc i64 %i.awe to i1
  tail call void @llvm.assume(i1 %lcmp.mod112)
  %i.bco = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.021652286.i.epil.init, i1 true)
  %i.bcp = trunc nuw nsw i64 %i.bco to i32
  %i.bcq = or disjoint i32 %i.awc, %i.bcp
  %i.bcr = getelementptr inbounds nuw [4 x i8], ptr %.sroa.89.2.i, i64 %indvars.iv2331.i.epil.init
  store i32 %i.bcq, ptr %i.bcr, align 4, !tbaa !37
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.noexc153.i.epil.preheader, %.loopexit.i.loopexit.unr-lcssa, %.noexc152.i, %.noexc416.i, %.noexc362.i, %.noexc286.i, %.noexc232.i, %.noexc184.i
  %i.bcs = getelementptr inbounds nuw [4 x i8], ptr %.sroa.89.2.i, i64 %i.awe
  br label %.noexc.i

.noexc.i:                                         ; preds = %.loopexit.i, %_ZN8simdjson7haswell12_GLOBAL__N_16stage123json_structural_indexer4stepILm128EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit.i
  %.sroa.89.5.i = phi ptr [ %.sroa.89.2.i, %_ZN8simdjson7haswell12_GLOBAL__N_16stage123json_structural_indexer4stepILm128EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit.i ], [ %i.bcs, %.loopexit.i ]
  %.not.i.i64.i.a = icmp sgt i64 %i.acc, -1       ; 3 uses
  %brmerge.i = select i1 %.not.i, i1 true, i1 %.not.i.i64.i.a, !prof !112
  br i1 %brmerge.i, label %.thread.i, label %_ZN8simdjson7haswell12_GLOBAL__N_16stage123json_structural_indexer6finishERNS0_25dom_parser_implementationEmmNS_11stage1_modeE.exit.i, !prof !113

.thread.i:                                        ; preds = %.noexc.i
  %.not.i.i = icmp eq i64 %i.awb, 0
  br i1 %.not.i.i, label %bb.p, label %_ZN8simdjson7haswell12_GLOBAL__N_16stage123json_structural_indexer6finishERNS0_25dom_parser_implementationEmmNS_11stage1_modeE.exit.i

bb.p:                                             ; preds = %.thread.i
  %i.bct = ptrtoint ptr %.sroa.89.5.i to i64
  %i.bcu = ptrtoint ptr %i.yh to i64
  %i.bcv = sub i64 %i.bct, %i.bcu
  %i.bcw = lshr exact i64 %i.bcv, 2               ; 2 uses
  %i.bcx = trunc i64 %i.bcw to i32
  %i.bcy = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 11 uses
  store i32 %i.bcx, ptr %i.bcy, align 8, !tbaa !84
  %i.bcz = trunc i64 %.01323672381.i to i32       ; 3 uses
  %i.bda = and i64 %i.bcw, 4294967295
  %i.bdb = getelementptr inbounds nuw [4 x i8], ptr %i.yh, i64 %i.bda
  store i32 %i.bcz, ptr %i.bdb, align 4, !tbaa !37
  %i.bdc = load i32, ptr %i.bcy, align 8, !tbaa !84
  %i.bdd = add i32 %i.bdc, 1
  %i.bde = zext i32 %i.bdd to i64
  %i.bdf = getelementptr inbounds nuw [4 x i8], ptr %i.yh, i64 %i.bde
  store i32 %i.bcz, ptr %i.bdf, align 4, !tbaa !37
  %i.bdg = load i32, ptr %i.bcy, align 8, !tbaa !84
  %i.bdh = add i32 %i.bdg, 2
  %i.bdi = zext i32 %i.bdh to i64
  %i.bdj = getelementptr inbounds nuw [4 x i8], ptr %i.yh, i64 %i.bdi
  store i32 0, ptr %i.bdj, align 4, !tbaa !37
  %i.bdk = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.bdk, align 8, !tbaa !86
  %i.bdl = load i32, ptr %i.bcy, align 8, !tbaa !84 ; 6 uses
  %i.bdm = icmp eq i32 %i.bdl, 0
  br i1 %i.bdm, label %_ZN8simdjson7haswell12_GLOBAL__N_16stage123json_structural_indexer6finishERNS0_25dom_parser_implementationEmmNS_11stage1_modeE.exit.i, label %bb.q, !prof !108

bb.q:                                             ; preds = %bb.p
  %i.bdn = add i32 %i.bdl, -1                     ; 9 uses
  %i.bdo = zext i32 %i.bdn to i64
  %i.bdp = getelementptr inbounds nuw [4 x i8], ptr %i.yh, i64 %i.bdo
  %i.bdq = load i32, ptr %i.bdp, align 4, !tbaa !37
  %i.bdr = zext i32 %i.bdq to i64
  %i.bds = icmp ult i64 %.01323672381.i, %i.bdr
  br i1 %i.bds, label %_ZN8simdjson7haswell12_GLOBAL__N_16stage123json_structural_indexer6finishERNS0_25dom_parser_implementationEmmNS_11stage1_modeE.exit.i, label %bb.r, !prof !108

bb.r:                                             ; preds = %bb.q
  switch i32 %3, label %bb.ax [
    i32 1, label %bb.s
    i32 2, label %bb.aj
  ]

bb.s:                                             ; preds = %bb.r
  br i1 %.not.i.i64.i.a, label %.preheader.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  store i32 %i.bdn, ptr %i.bcy, align 8, !tbaa !84
  %i.bdt = icmp eq i32 %i.bdn, 0
  br i1 %i.bdt, label %_ZN8simdjson7haswell12_GLOBAL__N_16stage123json_structural_indexer6finishERNS0_25dom_parser_implementationEmmNS_11stage1_modeE.exit.i, label %..preheader.i_crit_edge, !prof !108

..preheader.i_crit_edge:                          ; preds = %bb.t
  %.pre = add i32 %i.bdl, -2
  br label %.preheader.i

.preheader.i:                                     ; preds = %..preheader.i_crit_edge, %bb.s
  %.035.i2298.i.pre-phi = phi i32 [ %.pre, %..preheader.i_crit_edge ], [ %i.bdn, %bb.s ] ; 2 uses
  %i.bdu = phi i32 [ %i.bdn, %..preheader.i_crit_edge ], [ %i.bdl, %bb.s ] ; 3 uses
  %.not.i5782299.i = icmp eq i32 %.035.i2298.i.pre-phi, 0
  br i1 %.not.i5782299.i, label %._crit_edge2305.i, label %.lr.ph2304.i

.lr.ph2304.i:                                     ; preds = %.preheader.i
  %i.bdv = zext i32 %.035.i2298.i.pre-phi to i64
  br label %bb.u

bb.u:                                             ; preds = %bb.ab, %.lr.ph2304.i
  %indvars.iv2339.i = phi i64 [ %i.bdv, %.lr.ph2304.i ], [ %indvars.iv.next2340.i, %bb.ab ] ; 4 uses
  %.035.in.i2302.i = phi i32 [ %i.bdu, %.lr.ph2304.i ], [ %i.beq, %bb.ab ]
  %.036.i2301.i = phi i32 [ 0, %.lr.ph2304.i ], [ %.238.i.i, %bb.ab ] ; 7 uses
  %.039.i2300.i = phi i32 [ 0, %.lr.ph2304.i ], [ %.241.i.i, %bb.ab ] ; 7 uses
  %i.bdw = getelementptr inbounds nuw [4 x i8], ptr %i.yh, i64 %indvars.iv2339.i
  %i.bdx = load i32, ptr %i.bdw, align 4, !tbaa !37
  %i.bdy = zext i32 %i.bdx to i64
  %i.bdz = getelementptr inbounds nuw i8, ptr %1, i64 %i.bdy
  %i.bea = load i8, ptr %i.bdz, align 1, !tbaa !36
  switch i8 %i.bea, label %bb.z [
    i8 58, label %bb.ab
    i8 44, label %bb.ab
    i8 125, label %bb.v
    i8 93, label %bb.w
    i8 123, label %bb.x
    i8 91, label %bb.y
  ]

bb.v:                                             ; preds = %bb.u
  %i.beb = add nsw i32 %.036.i2301.i, -1
  br label %bb.ab

bb.w:                                             ; preds = %bb.u
  %i.bec = add nsw i32 %.039.i2300.i, -1
  br label %bb.ab

bb.x:                                             ; preds = %bb.u
  %i.bed = add nsw i32 %.036.i2301.i, 1
  br label %bb.z

bb.y:                                             ; preds = %bb.u
  %i.bee = add nsw i32 %.039.i2300.i, 1
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %bb.u
  %.140.i.i = phi i32 [ %.039.i2300.i, %bb.u ], [ %.039.i2300.i, %bb.x ], [ %i.bee, %bb.y ] ; 5 uses
  %.137.i.i = phi i32 [ %.036.i2301.i, %bb.u ], [ %i.bed, %bb.x ], [ %.036.i2301.i, %bb.y ] ; 5 uses
  %i.bef = add i32 %.035.in.i2302.i, -2
  %i.beg = zext i32 %i.bef to i64
  %i.beh = getelementptr inbounds nuw [4 x i8], ptr %i.yh, i64 %i.beg
  %i.bei = load i32, ptr %i.beh, align 4, !tbaa !37
  %i.bej = zext i32 %i.bei to i64
  %i.bek = getelementptr inbounds nuw i8, ptr %1, i64 %i.bej
  %i.bel = load i8, ptr %i.bek, align 1, !tbaa !36
  switch i8 %i.bel, label %bb.aa [
    i8 123, label %bb.ab
    i8 91, label %bb.ab
    i8 58, label %bb.ab
    i8 44, label %bb.ab
  ]

bb.aa:                                            ; preds = %bb.z
  %i.bem = trunc nuw i64 %indvars.iv2339.i to i32
  %i.ben = icmp ne i32 %.140.i.i, 0
  %i.beo = icmp ne i32 %.137.i.i, 0
  %or.cond.i.i = select i1 %i.ben, i1 true, i1 %i.beo
  %spec.select2240.i = select i1 %or.cond.i.i, i32 %i.bem, i32 %i.bdu
  br label %_ZN8simdjson7haswell12_GLOBAL__N_16stage124find_next_document_indexERNS0_25dom_parser_implementationE.exit.thread2213.i

bb.ab:                                            ; preds = %bb.z, %bb.z, %bb.z, %bb.z, %bb.w, %bb.v, %bb.u, %bb.u
  %.241.i.i = phi i32 [ %.039.i2300.i, %bb.u ], [ %i.bec, %bb.w ], [ %.039.i2300.i, %bb.v ], [ %.039.i2300.i, %bb.u ], [ %.140.i.i, %bb.z ], [ %.140.i.i, %bb.z ], [ %.140.i.i, %bb.z ], [ %.140.i.i, %bb.z ] ; 2 uses
  %.238.i.i = phi i32 [ %.036.i2301.i, %bb.u ], [ %.036.i2301.i, %bb.w ], [ %i.beb, %bb.v ], [ %.036.i2301.i, %bb.u ], [ %.137.i.i, %bb.z ], [ %.137.i.i, %bb.z ], [ %.137.i.i, %bb.z ], [ %.137.i.i, %bb.z ] ; 2 uses
  %indvars.iv.next2340.i = add nsw i64 %indvars.iv2339.i, -1 ; 2 uses
  %i.bep = and i64 %indvars.iv.next2340.i, 4294967295
  %.not.i578.i = icmp eq i64 %i.bep, 0
  %i.beq = trunc nuw i64 %indvars.iv2339.i to i32
  br i1 %.not.i578.i, label %._crit_edge2305.i, label %bb.u, !llvm.loop !200

._crit_edge2305.i:                                ; preds = %bb.ab, %.preheader.i
  %.039.i.lcssa.i = phi i32 [ 0, %.preheader.i ], [ %.241.i.i, %bb.ab ] ; 5 uses
  %.036.i.lcssa.i = phi i32 [ 0, %.preheader.i ], [ %.238.i.i, %bb.ab ] ; 5 uses
  %i.ber = load i32, ptr %i.yh, align 4, !tbaa !37 ; 2 uses
  %i.bes = zext i32 %i.ber to i64
  %i.bet = getelementptr inbounds nuw i8, ptr %1, i64 %i.bes
  %i.beu = load i8, ptr %i.bet, align 1, !tbaa !36
  switch i8 %i.beu, label %bb.ag [
    i8 125, label %bb.ac
    i8 93, label %bb.ad
    i8 123, label %bb.ae
    i8 91, label %bb.af
  ]

bb.ac:                                            ; preds = %._crit_edge2305.i
  %i.bev = add nsw i32 %.036.i.lcssa.i, -1
  br label %bb.ag

bb.ad:                                            ; preds = %._crit_edge2305.i
  %i.bew = add nsw i32 %.039.i.lcssa.i, -1
  br label %bb.ag

bb.ae:                                            ; preds = %._crit_edge2305.i
  %i.bex = add nsw i32 %.036.i.lcssa.i, 1
  br label %bb.ag

bb.af:                                            ; preds = %._crit_edge2305.i
  %i.bey = add nsw i32 %.039.i.lcssa.i, 1
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ad, %bb.ac, %._crit_edge2305.i
  %.443.i.i = phi i32 [ %.039.i.lcssa.i, %._crit_edge2305.i ], [ %.039.i.lcssa.i, %bb.ac ], [ %i.bew, %bb.ad ], [ %.039.i.lcssa.i, %bb.ae ], [ %i.bey, %bb.af ]
  %.4.i.i = phi i32 [ %.036.i.lcssa.i, %._crit_edge2305.i ], [ %i.bev, %bb.ac ], [ %.036.i.lcssa.i, %bb.ad ], [ %i.bex, %bb.ae ], [ %.036.i.lcssa.i, %bb.af ]
  %i.bez = icmp eq i32 %.443.i.i, 0
  %i.bfa = icmp eq i32 %.4.i.i, 0
  %or.cond4.i.not.i = select i1 %i.bez, i1 %i.bfa, i1 false
  br i1 %or.cond4.i.not.i, label %_ZN8simdjson7haswell12_GLOBAL__N_16stage124find_next_document_indexERNS0_25dom_parser_implementationE.exit.thread2213.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.bfb = icmp eq i32 %i.ber, 0
  br i1 %i.bfb, label %_ZN8simdjson7haswell12_GLOBAL__N_16stage123json_structural_indexer6finishERNS0_25dom_parser_implementationEmmNS_11stage1_modeE.exit.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  store i32 0, ptr %i.bcy, align 8, !tbaa !84
  br label %_ZN8simdjson7haswell12_GLOBAL__N_16stage123json_structural_indexer6finishERNS0_25dom_parser_implementationEmmNS_11stage1_modeE.exit.i

_ZN8simdjson7haswell12_GLOBAL__N_16stage124find_next_document_indexERNS0_25dom_parser_implementationE.exit.thread2213.i: ; preds = %bb.ag, %bb.aa
  %.5.i2211.i = phi i32 [ %i.bdu, %bb.ag ], [ %spec.select2240.i, %bb.aa ]
  store i32 %.5.i2211.i, ptr %i.bcy, align 8, !tbaa !84
  br label %bb.ax

bb.aj:                                            ; preds = %bb.r
  br i1 %.not.i.i64.i.a, label %.preheader2241.i, label %thread-pre-split2219.i

thread-pre-split2219.i:                           ; preds = %bb.aj
  store i32 %i.bdn, ptr %i.bcy, align 8, !tbaa !84
  %i.bfc = icmp eq i32 %i.bdn, 0
  br i1 %i.bfc, label %_ZN8simdjson7haswell12_GLOBAL__N_16stage124find_next_document_indexERNS0_25dom_parser_implementationE.exit600.i, label %thread-pre-split2219.i..preheader2241.i_crit_edge

thread-pre-split2219.i..preheader2241.i_crit_edge: ; preds = %thread-pre-split2219.i
  %.pre17 = add i32 %i.bdl, -2
  br label %.preheader2241.i

.preheader2241.i:                                 ; preds = %thread-pre-split2219.i..preheader2241.i_crit_edge, %bb.aj
  %.035.i5842288.i.pre-phi = phi i32 [ %.pre17, %thread-pre-split2219.i..preheader2241.i_crit_edge ], [ %i.bdn, %bb.aj ] ; 2 uses
  %i.bfd = phi i32 [ %i.bdn, %thread-pre-split2219.i..preheader2241.i_crit_edge ], [ %i.bdl, %bb.aj ] ; 3 uses
  %.not.i5852289.i = icmp eq i32 %.035.i5842288.i.pre-phi, 0
  br i1 %.not.i5852289.i, label %._crit_edge2295.i, label %.lr.ph2294.i

.lr.ph2294.i:                                     ; preds = %.preheader2241.i
  %i.bfe = zext i32 %.035.i5842288.i.pre-phi to i64
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ar, %.lr.ph2294.i
  %indvars.iv2336.i = phi i64 [ %i.bfe, %.lr.ph2294.i ], [ %indvars.iv.next2337.i, %bb.ar ] ; 4 uses
  %.035.in.i5832292.i = phi i32 [ %i.bfd, %.lr.ph2294.i ], [ %i.bfz, %bb.ar ]
  %.036.i5822291.i = phi i32 [ 0, %.lr.ph2294.i ], [ %.238.i590.i, %bb.ar ] ; 7 uses
  %.039.i5812290.i = phi i32 [ 0, %.lr.ph2294.i ], [ %.241.i589.i, %bb.ar ] ; 7 uses
  %i.bff = getelementptr inbounds nuw [4 x i8], ptr %i.yh, i64 %indvars.iv2336.i
  %i.bfg = load i32, ptr %i.bff, align 4, !tbaa !37
  %i.bfh = zext i32 %i.bfg to i64
  %i.bfi = getelementptr inbounds nuw i8, ptr %1, i64 %i.bfh
  %i.bfj = load i8, ptr %i.bfi, align 1, !tbaa !36
  switch i8 %i.bfj, label %bb.ap [
    i8 58, label %bb.ar
    i8 44, label %bb.ar
    i8 125, label %bb.al
    i8 93, label %bb.am
    i8 123, label %bb.an
    i8 91, label %bb.ao
  ]

bb.al:                                            ; preds = %bb.ak
  %i.bfk = add nsw i32 %.036.i5822291.i, -1
  br label %bb.ar

bb.am:                                            ; preds = %bb.ak
  %i.bfl = add nsw i32 %.039.i5812290.i, -1
  br label %bb.ar

bb.an:                                            ; preds = %bb.ak
  %i.bfm = add nsw i32 %.036.i5822291.i, 1
  br label %bb.ap

bb.ao:                                            ; preds = %bb.ak
  %i.bfn = add nsw i32 %.039.i5812290.i, 1
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an, %bb.ak
  %.140.i586.i = phi i32 [ %.039.i5812290.i, %bb.ak ], [ %.039.i5812290.i, %bb.an ], [ %i.bfn, %bb.ao ] ; 5 uses
  %.137.i587.i = phi i32 [ %.036.i5822291.i, %bb.ak ], [ %i.bfm, %bb.an ], [ %.036.i5822291.i, %bb.ao ] ; 5 uses
  %i.bfo = add i32 %.035.in.i5832292.i, -2
  %i.bfp = zext i32 %i.bfo to i64
  %i.bfq = getelementptr inbounds nuw [4 x i8], ptr %i.yh, i64 %i.bfp
  %i.bfr = load i32, ptr %i.bfq, align 4, !tbaa !37
  %i.bfs = zext i32 %i.bfr to i64
  %i.bft = getelementptr inbounds nuw i8, ptr %1, i64 %i.bfs
  %i.bfu = load i8, ptr %i.bft, align 1, !tbaa !36
  switch i8 %i.bfu, label %bb.aq [
    i8 123, label %bb.ar
    i8 91, label %bb.ar
    i8 58, label %bb.ar
    i8 44, label %bb.ar
  ]

bb.aq:                                            ; preds = %bb.ap
  %i.bfv = trunc nuw i64 %indvars.iv2336.i to i32
  %i.bfw = icmp ne i32 %.140.i586.i, 0
  %i.bfx = icmp ne i32 %.137.i587.i, 0
  %or.cond.i599.i = select i1 %i.bfw, i1 true, i1 %i.bfx
  %spec.select.i = select i1 %or.cond.i599.i, i32 %i.bfv, i32 %i.bfd
  br label %_ZN8simdjson7haswell12_GLOBAL__N_16stage124find_next_document_indexERNS0_25dom_parser_implementationE.exit600.i

bb.ar:                                            ; preds = %bb.ap, %bb.ap, %bb.ap, %bb.ap, %bb.am, %bb.al, %bb.ak, %bb.ak
  %.241.i589.i = phi i32 [ %.039.i5812290.i, %bb.ak ], [ %i.bfl, %bb.am ], [ %.039.i5812290.i, %bb.al ], [ %.039.i5812290.i, %bb.ak ], [ %.140.i586.i, %bb.ap ], [ %.140.i586.i, %bb.ap ], [ %.140.i586.i, %bb.ap ], [ %.140.i586.i, %bb.ap ] ; 2 uses
  %.238.i590.i = phi i32 [ %.036.i5822291.i, %bb.ak ], [ %.036.i5822291.i, %bb.am ], [ %i.bfk, %bb.al ], [ %.036.i5822291.i, %bb.ak ], [ %.137.i587.i, %bb.ap ], [ %.137.i587.i, %bb.ap ], [ %.137.i587.i, %bb.ap ], [ %.137.i587.i, %bb.ap ] ; 2 uses
  %indvars.iv.next2337.i = add nsw i64 %indvars.iv2336.i, -1 ; 2 uses
  %i.bfy = and i64 %indvars.iv.next2337.i, 4294967295
  %.not.i585.i = icmp eq i64 %i.bfy, 0
  %i.bfz = trunc nuw i64 %indvars.iv2336.i to i32
  br i1 %.not.i585.i, label %._crit_edge2295.i, label %bb.ak, !llvm.loop !200

._crit_edge2295.i:                                ; preds = %bb.ar, %.preheader2241.i
  %.039.i581.lcssa.i = phi i32 [ 0, %.preheader2241.i ], [ %.241.i589.i, %bb.ar ] ; 5 uses
  %.036.i582.lcssa.i = phi i32 [ 0, %.preheader2241.i ], [ %.238.i590.i, %bb.ar ] ; 5 uses
  %i.bga = load i32, ptr %i.yh, align 4, !tbaa !37
  %i.bgb = zext i32 %i.bga to i64
  %i.bgc = getelementptr inbounds nuw i8, ptr %1, i64 %i.bgb
  %i.bgd = load i8, ptr %i.bgc, align 1, !tbaa !36
  switch i8 %i.bgd, label %bb.aw [
    i8 125, label %bb.as
    i8 93, label %bb.at
    i8 123, label %bb.au
    i8 91, label %bb.av
  ]

bb.as:                                            ; preds = %._crit_edge2295.i
  %i.bge = add nsw i32 %.036.i582.lcssa.i, -1
  br label %bb.aw

bb.at:                                            ; preds = %._crit_edge2295.i
  %i.bgf = add nsw i32 %.039.i581.lcssa.i, -1
  br label %bb.aw

bb.au:                                            ; preds = %._crit_edge2295.i
  %i.bgg = add nsw i32 %.036.i582.lcssa.i, 1
  br label %bb.aw

bb.av:                                            ; preds = %._crit_edge2295.i
  %i.bgh = add nsw i32 %.039.i581.lcssa.i, 1
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au, %bb.at, %bb.as, %._crit_edge2295.i
  %.443.i596.i = phi i32 [ %.039.i581.lcssa.i, %._crit_edge2295.i ], [ %.039.i581.lcssa.i, %bb.as ], [ %i.bgf, %bb.at ], [ %.039.i581.lcssa.i, %bb.au ], [ %i.bgh, %bb.av ]
  %.4.i597.i = phi i32 [ %.036.i582.lcssa.i, %._crit_edge2295.i ], [ %i.bge, %bb.as ], [ %.036.i582.lcssa.i, %bb.at ], [ %i.bgg, %bb.au ], [ %.036.i582.lcssa.i, %bb.av ]
  %i.bgi = icmp ne i32 %.443.i596.i, 0
  %i.bgj = icmp ne i32 %.4.i597.i, 0
  %or.cond4.i598.i = select i1 %i.bgi, i1 true, i1 %i.bgj
  %spec.select2234.i = select i1 %or.cond4.i598.i, i32 0, i32 %i.bfd
  br label %_ZN8simdjson7haswell12_GLOBAL__N_16stage124find_next_document_indexERNS0_25dom_parser_implementationE.exit600.i

_ZN8simdjson7haswell12_GLOBAL__N_16stage124find_next_document_indexERNS0_25dom_parser_implementationE.exit600.i: ; preds = %bb.aw, %bb.aq, %thread-pre-split2219.i
  %.5.i595.i = phi i32 [ 0, %thread-pre-split2219.i ], [ %spec.select.i, %bb.aq ], [ %spec.select2234.i, %bb.aw ] ; 3 uses
  store i32 %.5.i595.i, ptr %i.bcy, align 8, !tbaa !84
  %i.bgk = zext i32 %.5.i595.i to i64
  %i.bgl = getelementptr inbounds nuw [4 x i8], ptr %i.yh, i64 %i.bgk
  %i.bgm = load i32, ptr %i.bgl, align 4, !tbaa !37
  %i.bgn = add i32 %.5.i595.i, 1
  %i.bgo = zext i32 %i.bgn to i64
  %i.bgp = getelementptr inbounds nuw [4 x i8], ptr %i.yh, i64 %i.bgo
  store i32 %i.bgm, ptr %i.bgp, align 4, !tbaa !37
  %i.bgq = load i32, ptr %i.bcy, align 8, !tbaa !84
  %i.bgr = zext i32 %i.bgq to i64
  %i.bgs = getelementptr inbounds nuw [4 x i8], ptr %i.yh, i64 %i.bgr
  store i32 %i.bcz, ptr %i.bgs, align 4, !tbaa !37
  %i.bgt = load i32, ptr %i.bcy, align 8, !tbaa !84
  %i.bgu = icmp eq i32 %i.bgt, 0
  br i1 %i.bgu, label %_ZN8simdjson7haswell12_GLOBAL__N_16stage123json_structural_indexer6finishERNS0_25dom_parser_implementationEmmNS_11stage1_modeE.exit.i, label %bb.ax, !prof !108

bb.ax:                                            ; preds = %_ZN8simdjson7haswell12_GLOBAL__N_16stage124find_next_document_indexERNS0_25dom_parser_implementationE.exit600.i, %_ZN8simdjson7haswell12_GLOBAL__N_16stage124find_next_document_indexERNS0_25dom_parser_implementationE.exit.thread2213.i, %bb.r
  %i.bgv = tail call noundef i32 @llvm.x86.avx.ptestz.256(<4 x i64> %.sroa.41638.3.i, <4 x i64> %.sroa.41638.3.i)
  %.not2239.i = icmp eq i32 %i.bgv, 0
  %i.bgw = select i1 %.not2239.i, i32 11, i32 0
  br label %_ZN8simdjson7haswell12_GLOBAL__N_16stage123json_structural_indexer6finishERNS0_25dom_parser_implementationEmmNS_11stage1_modeE.exit.i

_ZN8simdjson7haswell12_GLOBAL__N_16stage123json_structural_indexer6finishERNS0_25dom_parser_implementationEmmNS_11stage1_modeE.exit.i: ; preds = %bb.ax, %_ZN8simdjson7haswell12_GLOBAL__N_16stage124find_next_document_indexERNS0_25dom_parser_implementationE.exit600.i, %bb.ai, %bb.ah, %bb.t, %bb.q, %bb.p, %.thread.i, %.noexc.i, %._crit_edge.i
  %.0.i = phi i32 [ 13, %bb.ai ], [ 13, %_ZN8simdjson7haswell12_GLOBAL__N_16stage124find_next_document_indexERNS0_25dom_parser_implementationE.exit600.i ], [ 1, %bb.t ], [ 15, %.noexc.i ], [ 14, %.thread.i ], [ 13, %bb.p ], [ 24, %bb.q ], [ %i.bgw, %bb.ax ], [ 24, %._crit_edge.i ], [ 1, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_ZN8simdjson7haswell12_GLOBAL__N_16stage123json_structural_indexer5indexILm128EEENS_10error_codeEPKhmRNS0_25dom_parser_implementationENS_11stage1_modeE.exit

_ZN8simdjson7haswell12_GLOBAL__N_16stage123json_structural_indexer5indexILm128EEENS_10error_codeEPKhmRNS0_25dom_parser_implementationENS_11stage1_modeE.exit: ; preds = %bb.a, %bb.b, %bb.g, %bb.h, %_ZN8simdjson7haswell12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.i, %_ZN8simdjson7haswell12_GLOBAL__N_16stage123json_structural_indexer6finishERNS0_25dom_parser_implementationEmmNS_11stage1_modeE.exit.i
  %.1.i = phi i32 [ %.0.i, %_ZN8simdjson7haswell12_GLOBAL__N_16stage123json_structural_indexer6finishERNS0_25dom_parser_implementationEmmNS_11stage1_modeE.exit.i ], [ 1, %bb.a ], [ 13, %bb.b ], [ 11, %_ZN8simdjson7haswell12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.i ], [ 11, %bb.h ], [ 11, %bb.g ]
  ret i32 %.1.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local noundef zeroext i1 @_ZNK8simdjson7haswell14implementation13validate_utf8EPKcm(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) unnamed_addr #13 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 6 uses
  %spec.select.i.i.i = tail call i64 @llvm.usub.sat.i64(i64 %2, i64 64)
  %.not.i.i = icmp ult i64 %2, 65
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZN8simdjson7haswell12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit3.i.i
  %.sroa.11.0375.i.i = phi i64 [ %i.bh, %_ZN8simdjson7haswell12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit3.i.i ], [ 0, %bb.a ] ; 2 uses
  %.sroa.046.0374.i.i = phi <4 x i64> [ %.sroa.046.2.i.i, %_ZN8simdjson7haswell12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit3.i.i ], [ zeroinitializer, %bb.a ]
  %.sroa.19.0373.i.i = phi <4 x i64> [ %.sroa.19.1.i.i, %_ZN8simdjson7haswell12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit3.i.i ], [ zeroinitializer, %bb.a ] ; 2 uses
  %.sroa.24.0372.i.i = phi <4 x i64> [ %.sroa.24.2.i.i, %_ZN8simdjson7haswell12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit3.i.i ], [ zeroinitializer, %bb.a ] ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.11.0375.i.i ; 2 uses
  %i.c = load <4 x i64>, ptr %i.b, align 1, !tbaa !36 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.e = load <4 x i64>, ptr %i.d, align 1, !tbaa !36 ; 5 uses
  %i.f = or <4 x i64> %i.e, %i.c
  %i.g = bitcast <4 x i64> %i.f to <32 x i8>
  %i.h = icmp slt <32 x i8> %i.g, zeroinitializer
  %i.i = bitcast <32 x i1> %i.h to i32
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %_ZN8simdjson7haswell12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit3.i.i, label %bb.b, !prof !110

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.k = bitcast <4 x i64> %i.c to <32 x i8>      ; 3 uses
  %i.l = shufflevector <4 x i64> %.sroa.19.0373.i.i, <4 x i64> %i.c, <4 x i32> <i32 poison, i32 3, i32 poison, i32 5>
  %i.m = bitcast <4 x i64> %i.l to <32 x i8>      ; 3 uses
  %i.n = shufflevector <32 x i8> %i.m, <32 x i8> %i.k, <32 x i32> <i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62> ; 2 uses
  %i.o = bitcast <32 x i8> %i.n to <16 x i16>
  %i.p = lshr <16 x i16> %i.o, splat (i16 4)
  %i.q = bitcast <16 x i16> %i.p to <32 x i8>
  %i.r = and <32 x i8> %i.q, splat (i8 15)
  %i.s = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73>, <32 x i8> %i.r)
  %i.t = and <32 x i8> %i.n, splat (i8 15)
  %i.u = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53, i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53>, <32 x i8> %i.t)
  %i.v = bitcast <4 x i64> %i.c to <16 x i16>
  %i.w = lshr <16 x i16> %i.v, splat (i16 4)
end_hunk_1
begin_hunk_2_@_ZN8simdjson7icelake25dom_parser_implementation6stage1EPKhmNS_11stage1_modeE:bb.a
  %i.fw = shufflevector <8 x i64> %.sroa.62.2.i, <8 x i64> %i.ak, <8 x i32> <i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13>
  %i.fx = bitcast <8 x i64> %i.fw to <64 x i8>    ; 3 uses
  %i.fy = shufflevector <64 x i8> %i.fx, <64 x i8> %i.bv, <64 x i32> <i32 15, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 31, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 94, i32 47, i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103, i32 104, i32 105, i32 106, i32 107, i32 108, i32 109, i32 110, i32 63, i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119, i32 120, i32 121, i32 122, i32 123, i32 124, i32 125, i32 126> ; 2 uses
  %i.fz = bitcast <64 x i8> %i.fy to <32 x i16>
  %i.ga = lshr <32 x i16> %i.fz, splat (i16 4)
  %i.gb = bitcast <32 x i16> %i.ga to <64 x i8>
  %i.gc = and <64 x i8> %i.gb, splat (i8 15)
  %i.gd = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73>, <64 x i8> %i.gc)
  %i.ge = and <64 x i8> %i.fy, splat (i8 15)
  %i.gf = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53, i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53, i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53, i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53>, <64 x i8> %i.ge)
  %i.gg = bitcast <8 x i64> %i.ak to <32 x i16>
  %i.gh = lshr <32 x i16> %i.gg, splat (i16 4)
  %i.gi = bitcast <32 x i16> %i.gh to <64 x i8>
  %i.gj = and <64 x i8> %i.gi, splat (i8 15)
  %i.gk = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1>, <64 x i8> %i.gj)
  %i.gl = and <64 x i8> %i.gf, %i.gd
  %i.gm = and <64 x i8> %i.gl, %i.gk
  %i.gn = shufflevector <64 x i8> %i.fx, <64 x i8> %i.bv, <64 x i32> <i32 14, i32 15, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 30, i32 31, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 46, i32 47, i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103, i32 104, i32 105, i32 106, i32 107, i32 108, i32 109, i32 62, i32 63, i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119, i32 120, i32 121, i32 122, i32 123, i32 124, i32 125>
  %i.go = shufflevector <64 x i8> %i.fx, <64 x i8> %i.bv, <64 x i32> <i32 13, i32 14, i32 15, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 29, i32 30, i32 31, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 45, i32 46, i32 47, i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103, i32 104, i32 105, i32 106, i32 107, i32 108, i32 61, i32 62, i32 63, i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119, i32 120, i32 121, i32 122, i32 123, i32 124>
  %i.gp = tail call <64 x i8> @llvm.usub.sat.v64i8(<64 x i8> %i.gn, <64 x i8> splat (i8 96))
  %i.gq = tail call <64 x i8> @llvm.usub.sat.v64i8(<64 x i8> %i.go, <64 x i8> splat (i8 112))
  %i.gr = or <64 x i8> %i.gp, %i.gq
  %.inner54 = and <64 x i8> %i.gr, splat (i8 -128)
  %.inner55 = xor <64 x i8> %.inner54, %i.gm
  %i.gs = bitcast <64 x i8> %.inner55 to <8 x i64>
  %i.gt = tail call <64 x i8> @llvm.usub.sat.v64i8(<64 x i8> %i.bv, <64 x i8> <i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -17, i8 -33, i8 -65>)
  %i.gu = bitcast <64 x i8> %i.gt to <8 x i64>
  br label %_ZN8simdjson7icelake12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit.i.i

_ZN8simdjson7icelake12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit.i.i: ; preds = %.noexc58.i, %.noexc55.i
  %.sroa.71.1.i = phi <8 x i64> [ %i.gu, %.noexc58.i ], [ %.sroa.71.2.i, %.noexc55.i ] ; 2 uses
  %.sroa.62.1.i = phi <8 x i64> [ %i.ak, %.noexc58.i ], [ %.sroa.62.2.i, %.noexc55.i ] ; 2 uses
  %.sroa.71.2.pn.i = phi <8 x i64> [ %i.gs, %.noexc58.i ], [ %.sroa.71.2.i, %.noexc55.i ]
  %i.gv = or <8 x i64> %.sroa.71.0.pn873.i, %.sroa.41175.0890.i
  %.sroa.41175.1.i = or <8 x i64> %i.gv, %.sroa.71.2.pn.i ; 2 uses
  %i.gw = icmp eq i64 %i.fp, 0
  br i1 %i.gw, label %_ZN8simdjson7icelake12_GLOBAL__N_16stage123json_structural_indexer4stepILm128EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit51.i, label %bb.s

bb.s:                                             ; preds = %_ZN8simdjson7icelake12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit.i.i
  %i.gx = trunc i64 %.sroa.11.0882.i to i32
  %i.gy = bitcast i64 %i.fp to <64 x i1>
  %i.gz = tail call <64 x i8> @llvm.x86.avx512.mask.compress.v64i8(<64 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15, i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31, i8 32, i8 33, i8 34, i8 35, i8 36, i8 37, i8 38, i8 39, i8 40, i8 41, i8 42, i8 43, i8 44, i8 45, i8 46, i8 47, i8 48, i8 49, i8 50, i8 51, i8 52, i8 53, i8 54, i8 55, i8 56, i8 57, i8 58, i8 59, i8 60, i8 61, i8 62, i8 63>, <64 x i8> zeroinitializer, <64 x i1> %i.gy) ; 4 uses
  %i.ha = insertelement <16 x i32> poison, i32 %i.gx, i64 0
  %i.hb = shufflevector <16 x i32> %i.ha, <16 x i32> poison, <16 x i32> zeroinitializer ; 4 uses
  %i.hc = tail call noundef range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %i.fp) ; 4 uses
  %i.hd = shufflevector <64 x i8> %i.gz, <64 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.he = zext <16 x i8> %i.hd to <16 x i32>
  %i.hf = add <16 x i32> %i.hb, %i.he
  store <16 x i32> %i.hf, ptr %.sroa.81.3.i, align 1, !tbaa !36
  %i.hg = icmp samesign ugt i64 %i.hc, 16
  br i1 %i.hg, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  %i.hh = shufflevector <64 x i8> %i.gz, <64 x i8> poison, <16 x i32> <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.hi = zext <16 x i8> %i.hh to <16 x i32>
  %i.hj = getelementptr inbounds nuw i8, ptr %.sroa.81.3.i, i64 64
  %i.hk = add <16 x i32> %i.hb, %i.hi
  store <16 x i32> %i.hk, ptr %i.hj, align 1, !tbaa !36
  %i.hl = icmp samesign ugt i64 %i.hc, 32
  br i1 %i.hl, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.hm = shufflevector <64 x i8> %i.gz, <64 x i8> poison, <16 x i32> <i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47>
  %i.hn = zext <16 x i8> %i.hm to <16 x i32>
  %i.ho = getelementptr inbounds nuw i8, ptr %.sroa.81.3.i, i64 128
  %i.hp = add <16 x i32> %i.hb, %i.hn
  store <16 x i32> %i.hp, ptr %i.ho, align 1, !tbaa !36
  %i.hq = icmp samesign ugt i64 %i.hc, 48
  br i1 %i.hq, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.hr = shufflevector <64 x i8> %i.gz, <64 x i8> poison, <16 x i32> <i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.hs = zext <16 x i8> %i.hr to <16 x i32>
  %i.ht = getelementptr inbounds nuw i8, ptr %.sroa.81.3.i, i64 192
  %i.hu = add <16 x i32> %i.hb, %i.hs
  store <16 x i32> %i.hu, ptr %i.ht, align 1, !tbaa !36
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t, %bb.s
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.81.3.i, i64 %i.hc
  br label %_ZN8simdjson7icelake12_GLOBAL__N_16stage123json_structural_indexer4stepILm128EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit51.i

_ZN8simdjson7icelake12_GLOBAL__N_16stage123json_structural_indexer4stepILm128EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit51.i: ; preds = %bb.w, %_ZN8simdjson7icelake12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit.i.i
  %.sroa.81.4.i = phi ptr [ %.sroa.81.3.i, %_ZN8simdjson7icelake12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit.i.i ], [ %i.hv, %bb.w ] ; 2 uses
  %i.hw = xor i64 %i.dd, -1
  %i.hx = and i64 %i.hw, %i.da
  %i.hy = or i64 %i.hx, %i.cx
  %i.hz = xor i64 %i.cl, %i.cp
  %i.ia = xor i64 %i.hz, -1
  %i.ib = and i64 %i.hy, %i.ia                    ; 2 uses
  %i.ic = and i64 %i.cp, %i.fs
  %i.id = or i64 %i.fq, %.sroa.123.0885.i
  %i.ie = or i64 %i.id, %i.ic                     ; 2 uses
  %i.if = add nuw i64 %.sroa.11.0882.i, 128       ; 4 uses
  %i.ig = icmp ult i64 %i.if, %spec.select.i.i
  br i1 %i.ig, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !203

._crit_edge.thread.i:                             ; preds = %_ZN8simdjson7icelake12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.thread.i, %_ZN8simdjson7icelake12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.thread.thread.i
  %.ph.i = phi ptr [ %i.ad, %_ZN8simdjson7icelake12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.thread.thread.i ], [ %i.af, %_ZN8simdjson7icelake12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.thread.i ]
  %.013957.ph.i = phi i64 [ %.013.ph.i, %_ZN8simdjson7icelake12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.thread.thread.i ], [ %.013.i, %_ZN8simdjson7icelake12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.thread.i ]
  %.sroa.81.0.lcssa.ph.i = phi ptr [ %i.ae, %_ZN8simdjson7icelake12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.thread.thread.i ], [ %i.ag, %_ZN8simdjson7icelake12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.thread.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %_ZNK8simdjson7icelake12_GLOBAL__N_16stage116buf_block_readerILm128EE13get_remainderEPh.exit.i

._crit_edge.i:                                    ; preds = %_ZN8simdjson7icelake12_GLOBAL__N_16stage123json_structural_indexer4stepILm128EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit51.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ih = icmp eq i64 %.013.i, %i.if
  br i1 %i.ih, label %_ZN8simdjson7icelake12_GLOBAL__N_16stage123json_structural_indexer6finishERNS0_25dom_parser_implementationEmmNS_11stage1_modeE.exit.i, label %_ZNK8simdjson7icelake12_GLOBAL__N_16stage116buf_block_readerILm128EE13get_remainderEPh.exit.i

_ZNK8simdjson7icelake12_GLOBAL__N_16stage116buf_block_readerILm128EE13get_remainderEPh.exit.i: ; preds = %._crit_edge.i, %._crit_edge.thread.i
  %.sroa.32.0.lcssa979.i = phi i64 [ 0, %._crit_edge.thread.i ], [ %i.cq, %._crit_edge.i ]
  %.sroa.41175.0.lcssa978.i = phi <8 x i64> [ zeroinitializer, %._crit_edge.thread.i ], [ %.sroa.41175.1.i, %._crit_edge.i ]
  %.sroa.62.0.lcssa977.i = phi <8 x i64> [ zeroinitializer, %._crit_edge.thread.i ], [ %.sroa.62.1.i, %._crit_edge.i ] ; 2 uses
  %.sroa.71.0.lcssa976.i = phi <8 x i64> [ zeroinitializer, %._crit_edge.thread.i ], [ %.sroa.71.1.i, %._crit_edge.i ] ; 2 uses
  %.sroa.81.0.lcssa975.i = phi ptr [ %.sroa.81.0.lcssa.ph.i, %._crit_edge.thread.i ], [ %.sroa.81.4.i, %._crit_edge.i ] ; 6 uses
  %.sroa.113.0.lcssa974.i = phi i64 [ 0, %._crit_edge.thread.i ], [ %i.ib, %._crit_edge.i ] ; 3 uses
  %.sroa.123.0.lcssa973.i = phi i64 [ 0, %._crit_edge.thread.i ], [ %i.ie, %._crit_edge.i ]
  %.sroa.12.0.lcssa972.i = phi i64 [ 0, %._crit_edge.thread.i ], [ %.sroa.12.3.i, %._crit_edge.i ] ; 3 uses
  %.sroa.0.0.lcssa971.i = phi i64 [ 0, %._crit_edge.thread.i ], [ %i.de, %._crit_edge.i ]
  %.sroa.11.0.lcssa970.i = phi i64 [ 0, %._crit_edge.thread.i ], [ %i.if, %._crit_edge.i ] ; 5 uses
  %.013957969.i = phi i64 [ %.013957.ph.i, %._crit_edge.thread.i ], [ %.013.i, %._crit_edge.i ] ; 3 uses
  %i.ii = phi ptr [ %.ph.i, %._crit_edge.thread.i ], [ %i.af, %._crit_edge.i ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.a, i8 32, i64 128, i1 false)
  %i.ij = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.11.0.lcssa970.i
  %i.ik = sub i64 %.013957969.i, %.sroa.11.0.lcssa970.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr readonly align 1 %i.ij, i64 %i.ik, i1 false)
  %.0..0..0..0..0..i = load <8 x i64>, ptr %i.a, align 16, !tbaa !36 ; 5 uses
  %.64..64..64..64..64..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %.64..64..64..64..64..i = load <8 x i64>, ptr %.64..64..64..64..64..sroa_idx, align 16, !tbaa !36 ; 4 uses
  %i.il = bitcast <8 x i64> %.0..0..0..0..0..i to <64 x i8> ; 11 uses
  %i.im = icmp eq <64 x i8> %i.il, splat (i8 92)
  %i.in = bitcast <64 x i1> %i.im to i64          ; 4 uses
  %.not.i29.i.i = icmp eq i64 %i.in, 0
  br i1 %.not.i29.i.i, label %_ZN8simdjson7icelake12_GLOBAL__N_16stage119json_escape_scanner4nextEm.exit34.i.i, label %bb.x

bb.x:                                             ; preds = %_ZNK8simdjson7icelake12_GLOBAL__N_16stage116buf_block_readerILm128EE13get_remainderEPh.exit.i
  %i.io = xor i64 %.sroa.12.0.lcssa972.i, -1
  %i.ip = and i64 %i.in, %i.io                    ; 2 uses
  %i.iq = shl i64 %i.ip, 1
  %i.ir = or i64 %i.iq, -6148914691236517206
  %i.is = sub i64 %i.ir, %i.ip
  %i.it = xor i64 %i.is, -6148914691236517206     ; 2 uses
  %i.iu = or i64 %.sroa.12.0.lcssa972.i, %i.in
  %i.iv = xor i64 %i.it, %i.iu
  %i.iw = and i64 %i.it, %i.in
  %i.ix = lshr i64 %i.iw, 63
  br label %_ZN8simdjson7icelake12_GLOBAL__N_16stage119json_escape_scanner4nextEm.exit34.i.i

_ZN8simdjson7icelake12_GLOBAL__N_16stage119json_escape_scanner4nextEm.exit34.i.i: ; preds = %bb.x, %_ZNK8simdjson7icelake12_GLOBAL__N_16stage116buf_block_readerILm128EE13get_remainderEPh.exit.i
  %.sroa.12.1.i = phi i64 [ %i.ix, %bb.x ], [ 0, %_ZNK8simdjson7icelake12_GLOBAL__N_16stage116buf_block_readerILm128EE13get_remainderEPh.exit.i ] ; 3 uses
  %.sroa.0.0.i30.i.i = phi i64 [ %i.iv, %bb.x ], [ %.sroa.12.0.lcssa972.i, %_ZNK8simdjson7icelake12_GLOBAL__N_16stage116buf_block_readerILm128EE13get_remainderEPh.exit.i ]
  %i.iy = icmp eq <64 x i8> %i.il, splat (i8 34)
  %i.iz = bitcast <64 x i1> %i.iy to i64
  %i.ja = xor i64 %.sroa.0.0.i30.i.i, -1
  %i.jb = and i64 %i.ja, %i.iz                    ; 3 uses
  %i.jc = insertelement <2 x i64> poison, i64 %i.jb, i64 0
  %i.jd = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.jc, <2 x i64> <i64 -1, i64 poison>, i8 0)
  %i.je = extractelement <2 x i64> %i.jd, i64 0
  %i.jf = xor i64 %i.je, %.sroa.32.0.lcssa979.i   ; 3 uses
  %i.jg = ashr i64 %i.jf, 63
  %i.jh = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 32, i8 100, i8 100, i8 100, i8 17, i8 100, i8 113, i8 2, i8 100, i8 9, i8 10, i8 112, i8 100, i8 13, i8 100, i8 100, i8 32, i8 100, i8 100, i8 100, i8 17, i8 100, i8 113, i8 2, i8 100, i8 9, i8 10, i8 112, i8 100, i8 13, i8 100, i8 100, i8 32, i8 100, i8 100, i8 100, i8 17, i8 100, i8 113, i8 2, i8 100, i8 9, i8 10, i8 112, i8 100, i8 13, i8 100, i8 100, i8 32, i8 100, i8 100, i8 100, i8 17, i8 100, i8 113, i8 2, i8 100, i8 9, i8 10, i8 112, i8 100, i8 13, i8 100, i8 100>, <64 x i8> %i.il)
  %i.ji = icmp eq <64 x i8> %i.jh, %i.il
  %i.jj = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 58, i8 123, i8 44, i8 125, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 58, i8 123, i8 44, i8 125, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 58, i8 123, i8 44, i8 125, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 58, i8 123, i8 44, i8 125, i8 0, i8 0>, <64 x i8> %i.il)
  %i.jk = bitcast <8 x i64> %.0..0..0..0..0..i to <64 x i8>
  %i.jl = or <64 x i8> %i.jk, splat (i8 32)
  %i.jm = icmp eq <64 x i8> %i.jl, %i.jj          ; 2 uses
  %i.jn = bitcast <64 x i1> %i.jm to i64
  %i.jo = or <64 x i1> %i.ji, %i.jm
  %i.jp = bitcast <64 x i1> %i.jo to i64
  %i.jq = xor i64 %i.jp, -1                       ; 2 uses
  %i.jr = xor i64 %i.jb, -1
  %i.js = and i64 %i.jq, %i.jr                    ; 2 uses
  %i.jt = shl i64 %i.js, 1
  %i.ju = or disjoint i64 %i.jt, %.sroa.0.0.lcssa971.i
  %i.jv = bitcast <8 x i64> %.64..64..64..64..64..i to <64 x i8> ; 11 uses
  %i.jw = icmp eq <64 x i8> %i.jv, splat (i8 92)
  %i.jx = bitcast <64 x i1> %i.jw to i64          ; 4 uses
  %.not.i.i.i = icmp eq i64 %i.jx, 0
  br i1 %.not.i.i.i, label %.noexc93.i, label %bb.y

bb.y:                                             ; preds = %_ZN8simdjson7icelake12_GLOBAL__N_16stage119json_escape_scanner4nextEm.exit34.i.i
  %i.jy = xor i64 %.sroa.12.1.i, -1
  %i.jz = and i64 %i.jy, %i.jx
  %i.ka = shl i64 %i.jx, 1
  %i.kb = or i64 %i.ka, -6148914691236517206
  %i.kc = sub i64 %i.kb, %i.jz
  %i.kd = or i64 %.sroa.12.1.i, %i.jx
  %i.ke = xor i64 %i.kd, %i.kc
  %i.kf = xor i64 %i.ke, -6148914691236517206
  br label %.noexc93.i

.noexc93.i:                                       ; preds = %bb.y, %_ZN8simdjson7icelake12_GLOBAL__N_16stage119json_escape_scanner4nextEm.exit34.i.i
  %.sroa.0.0.i.i.i = phi i64 [ %i.kf, %bb.y ], [ %.sroa.12.1.i, %_ZN8simdjson7icelake12_GLOBAL__N_16stage119json_escape_scanner4nextEm.exit34.i.i ]
  %i.kg = icmp eq <64 x i8> %i.jv, splat (i8 34)
  %i.kh = bitcast <64 x i1> %i.kg to i64
  %i.ki = xor i64 %.sroa.0.0.i.i.i, -1
  %i.kj = and i64 %i.ki, %i.kh                    ; 3 uses
  %i.kk = insertelement <2 x i64> poison, i64 %i.kj, i64 0
  %i.kl = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.kk, <2 x i64> <i64 -1, i64 poison>, i8 0)
  %i.km = extractelement <2 x i64> %i.kl, i64 0
  %i.kn = xor i64 %i.km, %i.jg                    ; 3 uses
  %i.ko = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 32, i8 100, i8 100, i8 100, i8 17, i8 100, i8 113, i8 2, i8 100, i8 9, i8 10, i8 112, i8 100, i8 13, i8 100, i8 100, i8 32, i8 100, i8 100, i8 100, i8 17, i8 100, i8 113, i8 2, i8 100, i8 9, i8 10, i8 112, i8 100, i8 13, i8 100, i8 100, i8 32, i8 100, i8 100, i8 100, i8 17, i8 100, i8 113, i8 2, i8 100, i8 9, i8 10, i8 112, i8 100, i8 13, i8 100, i8 100, i8 32, i8 100, i8 100, i8 100, i8 17, i8 100, i8 113, i8 2, i8 100, i8 9, i8 10, i8 112, i8 100, i8 13, i8 100, i8 100>, <64 x i8> %i.jv)
  %i.kp = icmp eq <64 x i8> %i.ko, %i.jv
  %i.kq = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 58, i8 123, i8 44, i8 125, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 58, i8 123, i8 44, i8 125, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 58, i8 123, i8 44, i8 125, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 58, i8 123, i8 44, i8 125, i8 0, i8 0>, <64 x i8> %i.jv)
  %i.kr = bitcast <8 x i64> %.64..64..64..64..64..i to <64 x i8>
  %i.ks = or <64 x i8> %i.kr, splat (i8 32)
  %i.kt = icmp eq <64 x i8> %i.ks, %i.kq          ; 2 uses
  %i.ku = bitcast <64 x i1> %i.kt to i64
  %i.kv = or <64 x i1> %i.kp, %i.kt
  %i.kw = bitcast <64 x i1> %i.kv to i64
  %i.kx = xor i64 %i.kw, -1                       ; 2 uses
  %i.ky = xor i64 %i.kj, -1
  %i.kz = and i64 %i.kx, %i.ky
  %i.la = tail call i64 @llvm.fshl.i64(i64 %i.kz, i64 %i.js, i64 1)
  %i.lb = icmp ult <64 x i8> %i.il, splat (i8 32)
  %i.lc = bitcast <64 x i1> %i.lb to i64
  %i.ld = icmp slt <64 x i8> %i.il, zeroinitializer
  %i.le = bitcast <64 x i1> %i.ld to i64
  %i.lf = icmp eq i64 %i.le, 0
  br i1 %i.lf, label %_ZN8simdjson7icelake12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit.i91.i, label %.noexc96.i, !prof !110

.noexc96.i:                                       ; preds = %.noexc93.i
  %i.lg = shufflevector <8 x i64> %.sroa.62.0.lcssa977.i, <8 x i64> %.0..0..0..0..0..i, <8 x i32> <i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13>
  %i.lh = bitcast <8 x i64> %i.lg to <64 x i8>    ; 3 uses
  %i.li = shufflevector <64 x i8> %i.lh, <64 x i8> %i.il, <64 x i32> <i32 15, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 31, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 94, i32 47, i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103, i32 104, i32 105, i32 106, i32 107, i32 108, i32 109, i32 110, i32 63, i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119, i32 120, i32 121, i32 122, i32 123, i32 124, i32 125, i32 126> ; 2 uses
  %i.lj = bitcast <64 x i8> %i.li to <32 x i16>
  %i.lk = lshr <32 x i16> %i.lj, splat (i16 4)
  %i.ll = bitcast <32 x i16> %i.lk to <64 x i8>
  %i.lm = and <64 x i8> %i.ll, splat (i8 15)
  %i.ln = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73>, <64 x i8> %i.lm)
  %i.lo = and <64 x i8> %i.li, splat (i8 15)
  %i.lp = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53, i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53, i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53, i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53>, <64 x i8> %i.lo)
  %i.lq = bitcast <8 x i64> %.0..0..0..0..0..i to <32 x i16>
  %i.lr = lshr <32 x i16> %i.lq, splat (i16 4)
  %i.ls = bitcast <32 x i16> %i.lr to <64 x i8>
  %i.lt = and <64 x i8> %i.ls, splat (i8 15)
  %i.lu = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1>, <64 x i8> %i.lt)
  %i.lv = and <64 x i8> %i.lp, %i.ln
  %i.lw = and <64 x i8> %i.lv, %i.lu
  %i.lx = shufflevector <64 x i8> %i.lh, <64 x i8> %i.il, <64 x i32> <i32 14, i32 15, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 30, i32 31, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 46, i32 47, i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103, i32 104, i32 105, i32 106, i32 107, i32 108, i32 109, i32 62, i32 63, i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119, i32 120, i32 121, i32 122, i32 123, i32 124, i32 125>
  %i.ly = shufflevector <64 x i8> %i.lh, <64 x i8> %i.il, <64 x i32> <i32 13, i32 14, i32 15, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 29, i32 30, i32 31, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 45, i32 46, i32 47, i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103, i32 104, i32 105, i32 106, i32 107, i32 108, i32 61, i32 62, i32 63, i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119, i32 120, i32 121, i32 122, i32 123, i32 124>
  %i.lz = tail call <64 x i8> @llvm.usub.sat.v64i8(<64 x i8> %i.lx, <64 x i8> splat (i8 96))
  %i.ma = tail call <64 x i8> @llvm.usub.sat.v64i8(<64 x i8> %i.ly, <64 x i8> splat (i8 112))
  %i.mb = or <64 x i8> %i.lz, %i.ma
  %.inner60 = and <64 x i8> %i.mb, splat (i8 -128)
  %.inner61 = xor <64 x i8> %.inner60, %i.lw
  %i.mc = bitcast <64 x i8> %.inner61 to <8 x i64>
  %i.md = tail call <64 x i8> @llvm.usub.sat.v64i8(<64 x i8> %i.il, <64 x i8> <i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -17, i8 -33, i8 -65>)
  %i.me = bitcast <64 x i8> %i.md to <8 x i64>
  br label %_ZN8simdjson7icelake12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit.i91.i

_ZN8simdjson7icelake12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit.i91.i: ; preds = %.noexc96.i, %.noexc93.i
  %.sroa.71.4.i = phi <8 x i64> [ %i.me, %.noexc96.i ], [ %.sroa.71.0.lcssa976.i, %.noexc93.i ] ; 2 uses
  %.sroa.62.3.i = phi <8 x i64> [ %.0..0..0..0..0..i, %.noexc96.i ], [ %.sroa.62.0.lcssa977.i, %.noexc93.i ]
  %.sroa.71.0.pn.i = phi <8 x i64> [ %i.mc, %.noexc96.i ], [ %.sroa.71.0.lcssa976.i, %.noexc93.i ]
  %i.mf = icmp eq i64 %.sroa.113.0.lcssa974.i, 0
  br i1 %i.mf, label %.noexc80.i, label %bb.z

bb.z:                                             ; preds = %_ZN8simdjson7icelake12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit.i91.i
  %i.mg = trunc i64 %.sroa.11.0.lcssa970.i to i32
  %i.mh = add i32 %i.mg, -64
  %i.mi = bitcast i64 %.sroa.113.0.lcssa974.i to <64 x i1>
  %i.mj = tail call <64 x i8> @llvm.x86.avx512.mask.compress.v64i8(<64 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15, i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31, i8 32, i8 33, i8 34, i8 35, i8 36, i8 37, i8 38, i8 39, i8 40, i8 41, i8 42, i8 43, i8 44, i8 45, i8 46, i8 47, i8 48, i8 49, i8 50, i8 51, i8 52, i8 53, i8 54, i8 55, i8 56, i8 57, i8 58, i8 59, i8 60, i8 61, i8 62, i8 63>, <64 x i8> zeroinitializer, <64 x i1> %i.mi) ; 4 uses
  %i.mk = insertelement <16 x i32> poison, i32 %i.mh, i64 0
  %i.ml = shufflevector <16 x i32> %i.mk, <16 x i32> poison, <16 x i32> zeroinitializer ; 4 uses
  %i.mm = tail call noundef range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %.sroa.113.0.lcssa974.i) ; 4 uses
  %i.mn = shufflevector <64 x i8> %i.mj, <64 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.mo = zext <16 x i8> %i.mn to <16 x i32>
  %i.mp = add <16 x i32> %i.ml, %i.mo
  store <16 x i32> %i.mp, ptr %.sroa.81.0.lcssa975.i, align 1, !tbaa !36
  %i.mq = icmp samesign ugt i64 %i.mm, 16
  br i1 %i.mq, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %bb.z
  %i.mr = shufflevector <64 x i8> %i.mj, <64 x i8> poison, <16 x i32> <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ms = zext <16 x i8> %i.mr to <16 x i32>
  %i.mt = getelementptr inbounds nuw i8, ptr %.sroa.81.0.lcssa975.i, i64 64
  %i.mu = add <16 x i32> %i.ml, %i.ms
  store <16 x i32> %i.mu, ptr %i.mt, align 1, !tbaa !36
  %i.mv = icmp samesign ugt i64 %i.mm, 32
  br i1 %i.mv, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.mw = shufflevector <64 x i8> %i.mj, <64 x i8> poison, <16 x i32> <i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47>
  %i.mx = zext <16 x i8> %i.mw to <16 x i32>
  %i.my = getelementptr inbounds nuw i8, ptr %.sroa.81.0.lcssa975.i, i64 128
  %i.mz = add <16 x i32> %i.ml, %i.mx
  store <16 x i32> %i.mz, ptr %i.my, align 1, !tbaa !36
  %i.na = icmp samesign ugt i64 %i.mm, 48
  br i1 %i.na, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.nb = shufflevector <64 x i8> %i.mj, <64 x i8> poison, <16 x i32> <i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.nc = zext <16 x i8> %i.nb to <16 x i32>
  %i.nd = getelementptr inbounds nuw i8, ptr %.sroa.81.0.lcssa975.i, i64 192
  %i.ne = add <16 x i32> %i.ml, %i.nc
  store <16 x i32> %i.ne, ptr %i.nd, align 1, !tbaa !36
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.z
  %i.nf = getelementptr inbounds nuw [4 x i8], ptr %.sroa.81.0.lcssa975.i, i64 %i.mm
  br label %.noexc80.i

.noexc80.i:                                       ; preds = %bb.ad, %_ZN8simdjson7icelake12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit.i91.i
  %.sroa.81.1.i = phi ptr [ %.sroa.81.0.lcssa975.i, %_ZN8simdjson7icelake12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit.i91.i ], [ %i.nf, %bb.ad ] ; 6 uses
  %i.ng = xor i64 %i.ju, -1
  %i.nh = and i64 %i.ng, %i.jq
  %i.ni = or i64 %i.nh, %i.jn
  %i.nj = xor i64 %i.jb, %i.jf
  %i.nk = xor i64 %i.nj, -1
  %i.nl = and i64 %i.ni, %i.nk                    ; 3 uses
  %i.nm = and i64 %i.jf, %i.lc
  %i.nn = icmp ult <64 x i8> %i.jv, splat (i8 32)
  %i.no = bitcast <64 x i1> %i.nn to i64
  %i.np = icmp slt <64 x i8> %i.jv, zeroinitializer
  %i.nq = bitcast <64 x i1> %i.np to i64
  %i.nr = icmp eq i64 %i.nq, 0
  br i1 %i.nr, label %_ZN8simdjson7icelake12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit.i78.i, label %.noexc83.i, !prof !110

.noexc83.i:                                       ; preds = %.noexc80.i
  %i.ns = shufflevector <8 x i64> %.sroa.62.3.i, <8 x i64> %.64..64..64..64..64..i, <8 x i32> <i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13>
  %i.nt = bitcast <8 x i64> %i.ns to <64 x i8>    ; 3 uses
  %i.nu = shufflevector <64 x i8> %i.nt, <64 x i8> %i.jv, <64 x i32> <i32 15, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 31, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 94, i32 47, i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103, i32 104, i32 105, i32 106, i32 107, i32 108, i32 109, i32 110, i32 63, i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119, i32 120, i32 121, i32 122, i32 123, i32 124, i32 125, i32 126> ; 2 uses
  %i.nv = bitcast <64 x i8> %i.nu to <32 x i16>
  %i.nw = lshr <32 x i16> %i.nv, splat (i16 4)
  %i.nx = bitcast <32 x i16> %i.nw to <64 x i8>
  %i.ny = and <64 x i8> %i.nx, splat (i8 15)
  %i.nz = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73>, <64 x i8> %i.ny)
  %i.oa = and <64 x i8> %i.nu, splat (i8 15)
  %i.ob = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53, i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53, i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53, i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53>, <64 x i8> %i.oa)
  %i.oc = bitcast <8 x i64> %.64..64..64..64..64..i to <32 x i16>
  %i.od = lshr <32 x i16> %i.oc, splat (i16 4)
  %i.oe = bitcast <32 x i16> %i.od to <64 x i8>
  %i.of = and <64 x i8> %i.oe, splat (i8 15)
  %i.og = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1>, <64 x i8> %i.of)
  %i.oh = and <64 x i8> %i.ob, %i.nz
  %i.oi = and <64 x i8> %i.oh, %i.og
  %i.oj = shufflevector <64 x i8> %i.nt, <64 x i8> %i.jv, <64 x i32> <i32 14, i32 15, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 30, i32 31, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 46, i32 47, i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103, i32 104, i32 105, i32 106, i32 107, i32 108, i32 109, i32 62, i32 63, i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119, i32 120, i32 121, i32 122, i32 123, i32 124, i32 125>
  %i.ok = shufflevector <64 x i8> %i.nt, <64 x i8> %i.jv, <64 x i32> <i32 13, i32 14, i32 15, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 29, i32 30, i32 31, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 45, i32 46, i32 47, i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103, i32 104, i32 105, i32 106, i32 107, i32 108, i32 61, i32 62, i32 63, i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119, i32 120, i32 121, i32 122, i32 123, i32 124>
  %i.ol = tail call <64 x i8> @llvm.usub.sat.v64i8(<64 x i8> %i.oj, <64 x i8> splat (i8 96))
  %i.om = tail call <64 x i8> @llvm.usub.sat.v64i8(<64 x i8> %i.ok, <64 x i8> splat (i8 112))
  %i.on = or <64 x i8> %i.ol, %i.om
  %.inner64 = and <64 x i8> %i.on, splat (i8 -128)
  %.inner65 = xor <64 x i8> %.inner64, %i.oi
  %i.oo = bitcast <64 x i8> %.inner65 to <8 x i64>
  %i.op = tail call <64 x i8> @llvm.usub.sat.v64i8(<64 x i8> %i.jv, <64 x i8> <i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -17, i8 -33, i8 -65>)
  %i.oq = bitcast <64 x i8> %i.op to <8 x i64>
  br label %_ZN8simdjson7icelake12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit.i78.i

_ZN8simdjson7icelake12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit.i78.i: ; preds = %.noexc83.i, %.noexc80.i
  %.sroa.71.3.i = phi <8 x i64> [ %i.oq, %.noexc83.i ], [ %.sroa.71.4.i, %.noexc80.i ]
  %.sroa.71.4.pn.i = phi <8 x i64> [ %i.oo, %.noexc83.i ], [ %.sroa.71.4.i, %.noexc80.i ]
  %i.or = icmp eq i64 %i.nl, 0
  br i1 %i.or, label %_ZN8simdjson7icelake12_GLOBAL__N_16stage123json_structural_indexer4stepILm128EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit.i, label %bb.ae

bb.ae:                                            ; preds = %_ZN8simdjson7icelake12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit.i78.i
  %i.os = trunc i64 %.sroa.11.0.lcssa970.i to i32
  %i.ot = bitcast i64 %i.nl to <64 x i1>
  %i.ou = tail call <64 x i8> @llvm.x86.avx512.mask.compress.v64i8(<64 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15, i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31, i8 32, i8 33, i8 34, i8 35, i8 36, i8 37, i8 38, i8 39, i8 40, i8 41, i8 42, i8 43, i8 44, i8 45, i8 46, i8 47, i8 48, i8 49, i8 50, i8 51, i8 52, i8 53, i8 54, i8 55, i8 56, i8 57, i8 58, i8 59, i8 60, i8 61, i8 62, i8 63>, <64 x i8> zeroinitializer, <64 x i1> %i.ot) ; 4 uses
  %i.ov = insertelement <16 x i32> poison, i32 %i.os, i64 0
  %i.ow = shufflevector <16 x i32> %i.ov, <16 x i32> poison, <16 x i32> zeroinitializer ; 4 uses
  %i.ox = tail call noundef range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %i.nl) ; 4 uses
  %i.oy = shufflevector <64 x i8> %i.ou, <64 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.oz = zext <16 x i8> %i.oy to <16 x i32>
  %i.pa = add <16 x i32> %i.ow, %i.oz
  store <16 x i32> %i.pa, ptr %.sroa.81.1.i, align 1, !tbaa !36
  %i.pb = icmp samesign ugt i64 %i.ox, 16
  br i1 %i.pb, label %bb.af, label %bb.ai

bb.af:                                            ; preds = %bb.ae
  %i.pc = shufflevector <64 x i8> %i.ou, <64 x i8> poison, <16 x i32> <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.pd = zext <16 x i8> %i.pc to <16 x i32>
  %i.pe = getelementptr inbounds nuw i8, ptr %.sroa.81.1.i, i64 64
  %i.pf = add <16 x i32> %i.ow, %i.pd
  store <16 x i32> %i.pf, ptr %i.pe, align 1, !tbaa !36
  %i.pg = icmp samesign ugt i64 %i.ox, 32
  br i1 %i.pg, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %bb.af
  %i.ph = shufflevector <64 x i8> %i.ou, <64 x i8> poison, <16 x i32> <i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47>
  %i.pi = zext <16 x i8> %i.ph to <16 x i32>
  %i.pj = getelementptr inbounds nuw i8, ptr %.sroa.81.1.i, i64 128
  %i.pk = add <16 x i32> %i.ow, %i.pi
  store <16 x i32> %i.pk, ptr %i.pj, align 1, !tbaa !36
  %i.pl = icmp samesign ugt i64 %i.ox, 48
  br i1 %i.pl, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.pm = shufflevector <64 x i8> %i.ou, <64 x i8> poison, <16 x i32> <i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.pn = zext <16 x i8> %i.pm to <16 x i32>
  %i.po = getelementptr inbounds nuw i8, ptr %.sroa.81.1.i, i64 192
  %i.pp = add <16 x i32> %i.ow, %i.pn
  store <16 x i32> %i.pp, ptr %i.po, align 1, !tbaa !36
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %bb.af, %bb.ae
  %i.pq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.81.1.i, i64 %i.ox
  br label %_ZN8simdjson7icelake12_GLOBAL__N_16stage123json_structural_indexer4stepILm128EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit.i

_ZN8simdjson7icelake12_GLOBAL__N_16stage123json_structural_indexer4stepILm128EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit.i: ; preds = %bb.ai, %_ZN8simdjson7icelake12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit.i78.i
  %.sroa.81.2.i = phi ptr [ %.sroa.81.1.i, %_ZN8simdjson7icelake12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit.i78.i ], [ %i.pq, %bb.ai ] ; 6 uses
  %i.pr = xor i64 %i.la, -1
  %i.ps = and i64 %i.pr, %i.kx
  %i.pt = or i64 %i.ps, %i.ku
  %i.pu = xor i64 %i.kj, %i.kn
  %i.pv = xor i64 %i.pu, -1
  %i.pw = and i64 %i.pt, %i.pv                    ; 3 uses
  %i.px = and i64 %i.kn, %i.no
  %i.py = or i64 %i.nm, %.sroa.123.0.lcssa973.i
  %i.pz = or i64 %i.py, %i.px
  %i.qa = icmp eq i64 %i.pw, 0
  br i1 %i.qa, label %.noexc.i, label %bb.aj

bb.aj:                                            ; preds = %_ZN8simdjson7icelake12_GLOBAL__N_16stage123json_structural_indexer4stepILm128EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit.i
  %i.qb = trunc i64 %.sroa.11.0.lcssa970.i to i32
  %i.qc = or disjoint i32 %i.qb, 64
  %i.qd = bitcast i64 %i.pw to <64 x i1>
  %i.qe = tail call <64 x i8> @llvm.x86.avx512.mask.compress.v64i8(<64 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15, i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31, i8 32, i8 33, i8 34, i8 35, i8 36, i8 37, i8 38, i8 39, i8 40, i8 41, i8 42, i8 43, i8 44, i8 45, i8 46, i8 47, i8 48, i8 49, i8 50, i8 51, i8 52, i8 53, i8 54, i8 55, i8 56, i8 57, i8 58, i8 59, i8 60, i8 61, i8 62, i8 63>, <64 x i8> zeroinitializer, <64 x i1> %i.qd) ; 4 uses
  %i.qf = insertelement <16 x i32> poison, i32 %i.qc, i64 0
  %i.qg = shufflevector <16 x i32> %i.qf, <16 x i32> poison, <16 x i32> zeroinitializer ; 4 uses
  %i.qh = tail call noundef range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %i.pw) ; 4 uses
  %i.qi = shufflevector <64 x i8> %i.qe, <64 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.qj = zext <16 x i8> %i.qi to <16 x i32>
  %i.qk = add <16 x i32> %i.qg, %i.qj
  store <16 x i32> %i.qk, ptr %.sroa.81.2.i, align 1, !tbaa !36
  %i.ql = icmp samesign ugt i64 %i.qh, 16
  br i1 %i.ql, label %bb.ak, label %bb.an

bb.ak:                                            ; preds = %bb.aj
  %i.qm = shufflevector <64 x i8> %i.qe, <64 x i8> poison, <16 x i32> <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.qn = zext <16 x i8> %i.qm to <16 x i32>
  %i.qo = getelementptr inbounds nuw i8, ptr %.sroa.81.2.i, i64 64
  %i.qp = add <16 x i32> %i.qg, %i.qn
  store <16 x i32> %i.qp, ptr %i.qo, align 1, !tbaa !36
  %i.qq = icmp samesign ugt i64 %i.qh, 32
  br i1 %i.qq, label %bb.al, label %bb.an

bb.al:                                            ; preds = %bb.ak
  %i.qr = shufflevector <64 x i8> %i.qe, <64 x i8> poison, <16 x i32> <i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47>
  %i.qs = zext <16 x i8> %i.qr to <16 x i32>
  %i.qt = getelementptr inbounds nuw i8, ptr %.sroa.81.2.i, i64 128
  %i.qu = add <16 x i32> %i.qg, %i.qs
  store <16 x i32> %i.qu, ptr %i.qt, align 1, !tbaa !36
  %i.qv = icmp samesign ugt i64 %i.qh, 48
  br i1 %i.qv, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.qw = shufflevector <64 x i8> %i.qe, <64 x i8> poison, <16 x i32> <i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.qx = zext <16 x i8> %i.qw to <16 x i32>
  %i.qy = getelementptr inbounds nuw i8, ptr %.sroa.81.2.i, i64 192
  %i.qz = add <16 x i32> %i.qg, %i.qx
  store <16 x i32> %i.qz, ptr %i.qy, align 1, !tbaa !36
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al, %bb.ak, %bb.aj
  %i.ra = getelementptr inbounds nuw [4 x i8], ptr %.sroa.81.2.i, i64 %i.qh
  br label %.noexc.i

.noexc.i:                                         ; preds = %bb.an, %_ZN8simdjson7icelake12_GLOBAL__N_16stage123json_structural_indexer4stepILm128EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit.i
  %.sroa.81.5.i = phi ptr [ %.sroa.81.2.i, %_ZN8simdjson7icelake12_GLOBAL__N_16stage123json_structural_indexer4stepILm128EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit.i ], [ %i.ra, %bb.an ]
  %.not.i53.i.i.a = icmp sgt i64 %i.kn, -1        ; 3 uses
  %brmerge.i = select i1 %.not.i, i1 true, i1 %.not.i53.i.i.a, !prof !112
  br i1 %brmerge.i, label %.thread.i, label %_ZN8simdjson7icelake12_GLOBAL__N_16stage123json_structural_indexer6finishERNS0_25dom_parser_implementationEmmNS_11stage1_modeE.exit.i, !prof !113

.thread.i:                                        ; preds = %.noexc.i
  %.not.i.i = icmp eq i64 %i.pz, 0
  br i1 %.not.i.i, label %bb.ao, label %_ZN8simdjson7icelake12_GLOBAL__N_16stage123json_structural_indexer6finishERNS0_25dom_parser_implementationEmmNS_11stage1_modeE.exit.i

bb.ao:                                            ; preds = %.thread.i
  %i.rb = load ptr, ptr %i.ii, align 8, !tbaa !109 ; 14 uses
  %i.rc = ptrtoint ptr %.sroa.81.5.i to i64
  %i.rd = ptrtoint ptr %i.rb to i64
  %i.re = sub i64 %i.rc, %i.rd
  %i.rf = lshr exact i64 %i.re, 2                 ; 2 uses
  %i.rg = trunc i64 %i.rf to i32
  %i.rh = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 11 uses
  store i32 %i.rg, ptr %i.rh, align 8, !tbaa !84
  %i.ri = trunc i64 %.013957969.i to i32          ; 3 uses
  %i.rj = and i64 %i.rf, 4294967295
  %i.rk = getelementptr inbounds nuw [4 x i8], ptr %i.rb, i64 %i.rj
  store i32 %i.ri, ptr %i.rk, align 4, !tbaa !37
  %i.rl = load i32, ptr %i.rh, align 8, !tbaa !84
  %i.rm = add i32 %i.rl, 1
  %i.rn = zext i32 %i.rm to i64
  %i.ro = getelementptr inbounds nuw [4 x i8], ptr %i.rb, i64 %i.rn
  store i32 %i.ri, ptr %i.ro, align 4, !tbaa !37
  %i.rp = load i32, ptr %i.rh, align 8, !tbaa !84
  %i.rq = add i32 %i.rp, 2
  %i.rr = zext i32 %i.rq to i64
  %i.rs = getelementptr inbounds nuw [4 x i8], ptr %i.rb, i64 %i.rr
  store i32 0, ptr %i.rs, align 4, !tbaa !37
  %i.rt = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.rt, align 8, !tbaa !86
  %i.ru = load i32, ptr %i.rh, align 8, !tbaa !84 ; 6 uses
  %i.rv = icmp eq i32 %i.ru, 0
  br i1 %i.rv, label %_ZN8simdjson7icelake12_GLOBAL__N_16stage123json_structural_indexer6finishERNS0_25dom_parser_implementationEmmNS_11stage1_modeE.exit.i, label %bb.ap, !prof !108

bb.ap:                                            ; preds = %bb.ao
  %i.rw = add i32 %i.ru, -1                       ; 9 uses
  %i.rx = zext i32 %i.rw to i64
  %i.ry = getelementptr inbounds nuw [4 x i8], ptr %i.rb, i64 %i.rx
  %i.rz = load i32, ptr %i.ry, align 4, !tbaa !37
  %i.sa = zext i32 %i.rz to i64
  %i.sb = icmp ult i64 %.013957969.i, %i.sa
  br i1 %i.sb, label %_ZN8simdjson7icelake12_GLOBAL__N_16stage123json_structural_indexer6finishERNS0_25dom_parser_implementationEmmNS_11stage1_modeE.exit.i, label %bb.aq, !prof !108

bb.aq:                                            ; preds = %bb.ap
  switch i32 %3, label %bb.bw [
    i32 1, label %bb.ar
    i32 2, label %bb.bi
  ]

bb.ar:                                            ; preds = %bb.aq
  br i1 %.not.i53.i.i.a, label %.preheader.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  store i32 %i.rw, ptr %i.rh, align 8, !tbaa !84
  %i.sc = icmp eq i32 %i.rw, 0
  br i1 %i.sc, label %_ZN8simdjson7icelake12_GLOBAL__N_16stage123json_structural_indexer6finishERNS0_25dom_parser_implementationEmmNS_11stage1_modeE.exit.i, label %..preheader.i_crit_edge, !prof !108

..preheader.i_crit_edge:                          ; preds = %bb.as
  %.pre = add i32 %i.ru, -2
  br label %.preheader.i

.preheader.i:                                     ; preds = %..preheader.i_crit_edge, %bb.ar
  %.035.i911.i.pre-phi = phi i32 [ %.pre, %..preheader.i_crit_edge ], [ %i.rw, %bb.ar ] ; 2 uses
  %i.sd = phi i32 [ %i.rw, %..preheader.i_crit_edge ], [ %i.ru, %bb.ar ] ; 3 uses
  %.not.i123912.i = icmp eq i32 %.035.i911.i.pre-phi, 0
  %.pre934.i = load ptr, ptr %i.b, align 8, !tbaa !136 ; 3 uses
  br i1 %.not.i123912.i, label %._crit_edge918.i, label %.lr.ph917.i

.lr.ph917.i:                                      ; preds = %.preheader.i
  %i.se = zext i32 %.035.i911.i.pre-phi to i64
  br label %bb.at

bb.at:                                            ; preds = %bb.ba, %.lr.ph917.i
  %indvars.iv929.i = phi i64 [ %i.se, %.lr.ph917.i ], [ %indvars.iv.next930.i, %bb.ba ] ; 4 uses
  %.035.in.i915.i = phi i32 [ %i.sd, %.lr.ph917.i ], [ %i.sz, %bb.ba ]
  %.036.i914.i = phi i32 [ 0, %.lr.ph917.i ], [ %.238.i.i, %bb.ba ] ; 7 uses
  %.039.i913.i = phi i32 [ 0, %.lr.ph917.i ], [ %.241.i.i, %bb.ba ] ; 7 uses
  %i.sf = getelementptr inbounds nuw [4 x i8], ptr %i.rb, i64 %indvars.iv929.i
  %i.sg = load i32, ptr %i.sf, align 4, !tbaa !37
  %i.sh = zext i32 %i.sg to i64
  %i.si = getelementptr inbounds nuw i8, ptr %.pre934.i, i64 %i.sh
  %i.sj = load i8, ptr %i.si, align 1, !tbaa !36
  switch i8 %i.sj, label %bb.ay [
    i8 58, label %bb.ba
    i8 44, label %bb.ba
    i8 125, label %bb.au
    i8 93, label %bb.av
    i8 123, label %bb.aw
    i8 91, label %bb.ax
  ]

bb.au:                                            ; preds = %bb.at
  %i.sk = add nsw i32 %.036.i914.i, -1
  br label %bb.ba

bb.av:                                            ; preds = %bb.at
  %i.sl = add nsw i32 %.039.i913.i, -1
  br label %bb.ba

bb.aw:                                            ; preds = %bb.at
  %i.sm = add nsw i32 %.036.i914.i, 1
  br label %bb.ay

bb.ax:                                            ; preds = %bb.at
  %i.sn = add nsw i32 %.039.i913.i, 1
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw, %bb.at
  %.140.i.i = phi i32 [ %.039.i913.i, %bb.at ], [ %.039.i913.i, %bb.aw ], [ %i.sn, %bb.ax ] ; 5 uses
  %.137.i.i = phi i32 [ %.036.i914.i, %bb.at ], [ %i.sm, %bb.aw ], [ %.036.i914.i, %bb.ax ] ; 5 uses
  %i.so = add i32 %.035.in.i915.i, -2
  %i.sp = zext i32 %i.so to i64
  %i.sq = getelementptr inbounds nuw [4 x i8], ptr %i.rb, i64 %i.sp
  %i.sr = load i32, ptr %i.sq, align 4, !tbaa !37
  %i.ss = zext i32 %i.sr to i64
  %i.st = getelementptr inbounds nuw i8, ptr %.pre934.i, i64 %i.ss
  %i.su = load i8, ptr %i.st, align 1, !tbaa !36
  switch i8 %i.su, label %bb.az [
    i8 123, label %bb.ba
    i8 91, label %bb.ba
    i8 58, label %bb.ba
    i8 44, label %bb.ba
  ]

bb.az:                                            ; preds = %bb.ay
  %i.sv = trunc nuw i64 %indvars.iv929.i to i32
  %i.sw = icmp ne i32 %.140.i.i, 0
  %i.sx = icmp ne i32 %.137.i.i, 0
  %or.cond.i.i = select i1 %i.sw, i1 true, i1 %i.sx
  %spec.select874.i = select i1 %or.cond.i.i, i32 %i.sv, i32 %i.sd
  br label %_ZN8simdjson7icelake12_GLOBAL__N_16stage124find_next_document_indexERNS0_25dom_parser_implementationE.exit.thread847.i

bb.ba:                                            ; preds = %bb.ay, %bb.ay, %bb.ay, %bb.ay, %bb.av, %bb.au, %bb.at, %bb.at
  %.241.i.i = phi i32 [ %.039.i913.i, %bb.at ], [ %i.sl, %bb.av ], [ %.039.i913.i, %bb.au ], [ %.039.i913.i, %bb.at ], [ %.140.i.i, %bb.ay ], [ %.140.i.i, %bb.ay ], [ %.140.i.i, %bb.ay ], [ %.140.i.i, %bb.ay ] ; 2 uses
  %.238.i.i = phi i32 [ %.036.i914.i, %bb.at ], [ %.036.i914.i, %bb.av ], [ %i.sk, %bb.au ], [ %.036.i914.i, %bb.at ], [ %.137.i.i, %bb.ay ], [ %.137.i.i, %bb.ay ], [ %.137.i.i, %bb.ay ], [ %.137.i.i, %bb.ay ] ; 2 uses
  %indvars.iv.next930.i = add nsw i64 %indvars.iv929.i, -1 ; 2 uses
  %i.sy = and i64 %indvars.iv.next930.i, 4294967295
  %.not.i123.i = icmp eq i64 %i.sy, 0
  %i.sz = trunc nuw i64 %indvars.iv929.i to i32
  br i1 %.not.i123.i, label %._crit_edge918.i, label %bb.at, !llvm.loop !204

._crit_edge918.i:                                 ; preds = %bb.ba, %.preheader.i
  %.039.i.lcssa.i = phi i32 [ 0, %.preheader.i ], [ %.241.i.i, %bb.ba ] ; 5 uses
  %.036.i.lcssa.i = phi i32 [ 0, %.preheader.i ], [ %.238.i.i, %bb.ba ] ; 5 uses
  %i.ta = load i32, ptr %i.rb, align 4, !tbaa !37 ; 2 uses
  %i.tb = zext i32 %i.ta to i64
  %i.tc = getelementptr inbounds nuw i8, ptr %.pre934.i, i64 %i.tb
  %i.td = load i8, ptr %i.tc, align 1, !tbaa !36
  switch i8 %i.td, label %bb.bf [
    i8 125, label %bb.bb
    i8 93, label %bb.bc
    i8 123, label %bb.bd
    i8 91, label %bb.be
  ]

bb.bb:                                            ; preds = %._crit_edge918.i
  %i.te = add nsw i32 %.036.i.lcssa.i, -1
  br label %bb.bf

bb.bc:                                            ; preds = %._crit_edge918.i
  %i.tf = add nsw i32 %.039.i.lcssa.i, -1
  br label %bb.bf

bb.bd:                                            ; preds = %._crit_edge918.i
  %i.tg = add nsw i32 %.036.i.lcssa.i, 1
  br label %bb.bf

bb.be:                                            ; preds = %._crit_edge918.i
  %i.th = add nsw i32 %.039.i.lcssa.i, 1
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd, %bb.bc, %bb.bb, %._crit_edge918.i
  %.443.i.i = phi i32 [ %.039.i.lcssa.i, %._crit_edge918.i ], [ %.039.i.lcssa.i, %bb.bb ], [ %i.tf, %bb.bc ], [ %.039.i.lcssa.i, %bb.bd ], [ %i.th, %bb.be ]
  %.4.i.i = phi i32 [ %.036.i.lcssa.i, %._crit_edge918.i ], [ %i.te, %bb.bb ], [ %.036.i.lcssa.i, %bb.bc ], [ %i.tg, %bb.bd ], [ %.036.i.lcssa.i, %bb.be ]
  %i.ti = icmp eq i32 %.443.i.i, 0
  %i.tj = icmp eq i32 %.4.i.i, 0
  %or.cond4.i.not.i = select i1 %i.ti, i1 %i.tj, i1 false
  br i1 %or.cond4.i.not.i, label %_ZN8simdjson7icelake12_GLOBAL__N_16stage124find_next_document_indexERNS0_25dom_parser_implementationE.exit.thread847.i, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.tk = icmp eq i32 %i.ta, 0
  br i1 %i.tk, label %_ZN8simdjson7icelake12_GLOBAL__N_16stage123json_structural_indexer6finishERNS0_25dom_parser_implementationEmmNS_11stage1_modeE.exit.i, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  store i32 0, ptr %i.rh, align 8, !tbaa !84
  br label %_ZN8simdjson7icelake12_GLOBAL__N_16stage123json_structural_indexer6finishERNS0_25dom_parser_implementationEmmNS_11stage1_modeE.exit.i

_ZN8simdjson7icelake12_GLOBAL__N_16stage124find_next_document_indexERNS0_25dom_parser_implementationE.exit.thread847.i: ; preds = %bb.bf, %bb.az
  %.5.i845.i = phi i32 [ %i.sd, %bb.bf ], [ %spec.select874.i, %bb.az ]
  store i32 %.5.i845.i, ptr %i.rh, align 8, !tbaa !84
  br label %bb.bw

bb.bi:                                            ; preds = %bb.aq
  br i1 %.not.i53.i.i.a, label %.preheader875.i, label %thread-pre-split853.i

thread-pre-split853.i:                            ; preds = %bb.bi
  store i32 %i.rw, ptr %i.rh, align 8, !tbaa !84
  %i.tl = icmp eq i32 %i.rw, 0
  br i1 %i.tl, label %_ZN8simdjson7icelake12_GLOBAL__N_16stage124find_next_document_indexERNS0_25dom_parser_implementationE.exit145.i, label %thread-pre-split853.i..preheader875.i_crit_edge

thread-pre-split853.i..preheader875.i_crit_edge:  ; preds = %thread-pre-split853.i
  %.pre17 = add i32 %i.ru, -2
  br label %.preheader875.i

.preheader875.i:                                  ; preds = %thread-pre-split853.i..preheader875.i_crit_edge, %bb.bi
  %.035.i129901.i.pre-phi = phi i32 [ %.pre17, %thread-pre-split853.i..preheader875.i_crit_edge ], [ %i.rw, %bb.bi ] ; 2 uses
  %i.tm = phi i32 [ %i.rw, %thread-pre-split853.i..preheader875.i_crit_edge ], [ %i.ru, %bb.bi ] ; 3 uses
  %.not.i130902.i = icmp eq i32 %.035.i129901.i.pre-phi, 0
  %.pre.i = load ptr, ptr %i.b, align 8, !tbaa !136 ; 3 uses
  br i1 %.not.i130902.i, label %._crit_edge908.i, label %.lr.ph907.i

.lr.ph907.i:                                      ; preds = %.preheader875.i
  %i.tn = zext i32 %.035.i129901.i.pre-phi to i64
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bq, %.lr.ph907.i
  %indvars.iv.i = phi i64 [ %i.tn, %.lr.ph907.i ], [ %indvars.iv.next.i, %bb.bq ] ; 4 uses
  %.035.in.i128905.i = phi i32 [ %i.tm, %.lr.ph907.i ], [ %i.ui, %bb.bq ]
  %.036.i127904.i = phi i32 [ 0, %.lr.ph907.i ], [ %.238.i135.i, %bb.bq ] ; 7 uses
  %.039.i126903.i = phi i32 [ 0, %.lr.ph907.i ], [ %.241.i134.i, %bb.bq ] ; 7 uses
  %i.to = getelementptr inbounds nuw [4 x i8], ptr %i.rb, i64 %indvars.iv.i
  %i.tp = load i32, ptr %i.to, align 4, !tbaa !37
  %i.tq = zext i32 %i.tp to i64
  %i.tr = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %i.tq
  %i.ts = load i8, ptr %i.tr, align 1, !tbaa !36
  switch i8 %i.ts, label %bb.bo [
    i8 58, label %bb.bq
    i8 44, label %bb.bq
    i8 125, label %bb.bk
    i8 93, label %bb.bl
    i8 123, label %bb.bm
    i8 91, label %bb.bn
  ]

bb.bk:                                            ; preds = %bb.bj
  %i.tt = add nsw i32 %.036.i127904.i, -1
  br label %bb.bq

bb.bl:                                            ; preds = %bb.bj
  %i.tu = add nsw i32 %.039.i126903.i, -1
  br label %bb.bq

bb.bm:                                            ; preds = %bb.bj
  %i.tv = add nsw i32 %.036.i127904.i, 1
  br label %bb.bo

bb.bn:                                            ; preds = %bb.bj
  %i.tw = add nsw i32 %.039.i126903.i, 1
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm, %bb.bj
  %.140.i131.i = phi i32 [ %.039.i126903.i, %bb.bj ], [ %.039.i126903.i, %bb.bm ], [ %i.tw, %bb.bn ] ; 5 uses
  %.137.i132.i = phi i32 [ %.036.i127904.i, %bb.bj ], [ %i.tv, %bb.bm ], [ %.036.i127904.i, %bb.bn ] ; 5 uses
  %i.tx = add i32 %.035.in.i128905.i, -2
  %i.ty = zext i32 %i.tx to i64
  %i.tz = getelementptr inbounds nuw [4 x i8], ptr %i.rb, i64 %i.ty
  %i.ua = load i32, ptr %i.tz, align 4, !tbaa !37
  %i.ub = zext i32 %i.ua to i64
  %i.uc = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %i.ub
  %i.ud = load i8, ptr %i.uc, align 1, !tbaa !36
  switch i8 %i.ud, label %bb.bp [
    i8 123, label %bb.bq
    i8 91, label %bb.bq
    i8 58, label %bb.bq
    i8 44, label %bb.bq
  ]

bb.bp:                                            ; preds = %bb.bo
  %i.ue = trunc nuw i64 %indvars.iv.i to i32
  %i.uf = icmp ne i32 %.140.i131.i, 0
  %i.ug = icmp ne i32 %.137.i132.i, 0
  %or.cond.i144.i = select i1 %i.uf, i1 true, i1 %i.ug
  %spec.select.i = select i1 %or.cond.i144.i, i32 %i.ue, i32 %i.tm
  br label %_ZN8simdjson7icelake12_GLOBAL__N_16stage124find_next_document_indexERNS0_25dom_parser_implementationE.exit145.i

bb.bq:                                            ; preds = %bb.bo, %bb.bo, %bb.bo, %bb.bo, %bb.bl, %bb.bk, %bb.bj, %bb.bj
  %.241.i134.i = phi i32 [ %.039.i126903.i, %bb.bj ], [ %i.tu, %bb.bl ], [ %.039.i126903.i, %bb.bk ], [ %.039.i126903.i, %bb.bj ], [ %.140.i131.i, %bb.bo ], [ %.140.i131.i, %bb.bo ], [ %.140.i131.i, %bb.bo ], [ %.140.i131.i, %bb.bo ] ; 2 uses
  %.238.i135.i = phi i32 [ %.036.i127904.i, %bb.bj ], [ %.036.i127904.i, %bb.bl ], [ %i.tt, %bb.bk ], [ %.036.i127904.i, %bb.bj ], [ %.137.i132.i, %bb.bo ], [ %.137.i132.i, %bb.bo ], [ %.137.i132.i, %bb.bo ], [ %.137.i132.i, %bb.bo ] ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %i.uh = and i64 %indvars.iv.next.i, 4294967295
  %.not.i130.i = icmp eq i64 %i.uh, 0
  %i.ui = trunc nuw i64 %indvars.iv.i to i32
  br i1 %.not.i130.i, label %._crit_edge908.i, label %bb.bj, !llvm.loop !204

._crit_edge908.i:                                 ; preds = %bb.bq, %.preheader875.i
  %.039.i126.lcssa.i = phi i32 [ 0, %.preheader875.i ], [ %.241.i134.i, %bb.bq ] ; 5 uses
  %.036.i127.lcssa.i = phi i32 [ 0, %.preheader875.i ], [ %.238.i135.i, %bb.bq ] ; 5 uses
  %i.uj = load i32, ptr %i.rb, align 4, !tbaa !37
  %i.uk = zext i32 %i.uj to i64
  %i.ul = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %i.uk
  %i.um = load i8, ptr %i.ul, align 1, !tbaa !36
  switch i8 %i.um, label %bb.bv [
    i8 125, label %bb.br
    i8 93, label %bb.bs
    i8 123, label %bb.bt
    i8 91, label %bb.bu
  ]

bb.br:                                            ; preds = %._crit_edge908.i
  %i.un = add nsw i32 %.036.i127.lcssa.i, -1
  br label %bb.bv

bb.bs:                                            ; preds = %._crit_edge908.i
  %i.uo = add nsw i32 %.039.i126.lcssa.i, -1
  br label %bb.bv

bb.bt:                                            ; preds = %._crit_edge908.i
  %i.up = add nsw i32 %.036.i127.lcssa.i, 1
  br label %bb.bv

bb.bu:                                            ; preds = %._crit_edge908.i
  %i.uq = add nsw i32 %.039.i126.lcssa.i, 1
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt, %bb.bs, %bb.br, %._crit_edge908.i
  %.443.i141.i = phi i32 [ %.039.i126.lcssa.i, %._crit_edge908.i ], [ %.039.i126.lcssa.i, %bb.br ], [ %i.uo, %bb.bs ], [ %.039.i126.lcssa.i, %bb.bt ], [ %i.uq, %bb.bu ]
  %.4.i142.i = phi i32 [ %.036.i127.lcssa.i, %._crit_edge908.i ], [ %i.un, %bb.br ], [ %.036.i127.lcssa.i, %bb.bs ], [ %i.up, %bb.bt ], [ %.036.i127.lcssa.i, %bb.bu ]
  %i.ur = icmp ne i32 %.443.i141.i, 0
  %i.us = icmp ne i32 %.4.i142.i, 0
  %or.cond4.i143.i = select i1 %i.ur, i1 true, i1 %i.us
  %spec.select868.i = select i1 %or.cond4.i143.i, i32 0, i32 %i.tm
  br label %_ZN8simdjson7icelake12_GLOBAL__N_16stage124find_next_document_indexERNS0_25dom_parser_implementationE.exit145.i

_ZN8simdjson7icelake12_GLOBAL__N_16stage124find_next_document_indexERNS0_25dom_parser_implementationE.exit145.i: ; preds = %bb.bv, %bb.bp, %thread-pre-split853.i
  %.5.i140.i = phi i32 [ 0, %thread-pre-split853.i ], [ %spec.select.i, %bb.bp ], [ %spec.select868.i, %bb.bv ] ; 3 uses
  store i32 %.5.i140.i, ptr %i.rh, align 8, !tbaa !84
  %i.ut = zext i32 %.5.i140.i to i64
  %i.uu = getelementptr inbounds nuw [4 x i8], ptr %i.rb, i64 %i.ut
  %i.uv = load i32, ptr %i.uu, align 4, !tbaa !37
  %i.uw = add i32 %.5.i140.i, 1
  %i.ux = zext i32 %i.uw to i64
  %i.uy = getelementptr inbounds nuw [4 x i8], ptr %i.rb, i64 %i.ux
  store i32 %i.uv, ptr %i.uy, align 4, !tbaa !37
  %i.uz = load i32, ptr %i.rh, align 8, !tbaa !84
  %i.va = zext i32 %i.uz to i64
  %i.vb = getelementptr inbounds nuw [4 x i8], ptr %i.rb, i64 %i.va
  store i32 %i.ri, ptr %i.vb, align 4, !tbaa !37
  %i.vc = load i32, ptr %i.rh, align 8, !tbaa !84
  %i.vd = icmp eq i32 %i.vc, 0
  br i1 %i.vd, label %_ZN8simdjson7icelake12_GLOBAL__N_16stage123json_structural_indexer6finishERNS0_25dom_parser_implementationEmmNS_11stage1_modeE.exit.i, label %bb.bw, !prof !108

bb.bw:                                            ; preds = %_ZN8simdjson7icelake12_GLOBAL__N_16stage124find_next_document_indexERNS0_25dom_parser_implementationE.exit145.i, %_ZN8simdjson7icelake12_GLOBAL__N_16stage124find_next_document_indexERNS0_25dom_parser_implementationE.exit.thread847.i, %bb.aq
  %i.ve = or <8 x i64> %.sroa.71.0.pn.i, %.sroa.41175.0.lcssa978.i
  %i.vf = or <8 x i64> %i.ve, %.sroa.71.3.i
  %i.vg = or <8 x i64> %i.vf, %.sroa.71.4.pn.i
  %i.vh = bitcast <8 x i64> %i.vg to <64 x i8>
  %i.vi = icmp ne <64 x i8> %i.vh, zeroinitializer
  %i.vj = bitcast <64 x i1> %i.vi to i64
  %.not.i.i53.not.i = icmp eq i64 %i.vj, 0
  %i.vk = select i1 %.not.i.i53.not.i, i32 0, i32 11
  br label %_ZN8simdjson7icelake12_GLOBAL__N_16stage123json_structural_indexer6finishERNS0_25dom_parser_implementationEmmNS_11stage1_modeE.exit.i

_ZN8simdjson7icelake12_GLOBAL__N_16stage123json_structural_indexer6finishERNS0_25dom_parser_implementationEmmNS_11stage1_modeE.exit.i: ; preds = %bb.bw, %_ZN8simdjson7icelake12_GLOBAL__N_16stage124find_next_document_indexERNS0_25dom_parser_implementationE.exit145.i, %bb.bh, %bb.bg, %bb.as, %bb.ap, %bb.ao, %.thread.i, %.noexc.i, %._crit_edge.i
  %.0.i = phi i32 [ 13, %bb.bh ], [ 13, %_ZN8simdjson7icelake12_GLOBAL__N_16stage124find_next_document_indexERNS0_25dom_parser_implementationE.exit145.i ], [ 1, %bb.as ], [ 15, %.noexc.i ], [ 14, %.thread.i ], [ 13, %bb.ao ], [ 24, %bb.ap ], [ %i.vk, %bb.bw ], [ 24, %._crit_edge.i ], [ 1, %bb.bg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_ZN8simdjson7icelake12_GLOBAL__N_16stage123json_structural_indexer5indexILm128EEENS_10error_codeEPKhmRNS0_25dom_parser_implementationENS_11stage1_modeE.exit

_ZN8simdjson7icelake12_GLOBAL__N_16stage123json_structural_indexer5indexILm128EEENS_10error_codeEPKhmRNS0_25dom_parser_implementationENS_11stage1_modeE.exit: ; preds = %bb.a, %bb.b, %bb.g, %bb.h, %_ZN8simdjson7icelake12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.i, %_ZN8simdjson7icelake12_GLOBAL__N_16stage123json_structural_indexer6finishERNS0_25dom_parser_implementationEmmNS_11stage1_modeE.exit.i
  %.1.i = phi i32 [ %.0.i, %_ZN8simdjson7icelake12_GLOBAL__N_16stage123json_structural_indexer6finishERNS0_25dom_parser_implementationEmmNS_11stage1_modeE.exit.i ], [ 1, %bb.a ], [ 13, %bb.b ], [ 11, %_ZN8simdjson7icelake12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.i ], [ 11, %bb.h ], [ 11, %bb.g ]
  ret i32 %.1.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local noundef zeroext i1 @_ZNK8simdjson7icelake14implementation13validate_utf8EPKcm(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) unnamed_addr #17 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.019.i.i = alloca <8 x i64>, align 16     ; 5 uses
  %spec.select.i.i.i = tail call i64 @llvm.usub.sat.i64(i64 %2, i64 64)
  %.not.i.i = icmp ult i64 %2, 65
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZN8simdjson7icelake12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit3.i.i
  %.sroa.11.0212.i.i = phi i64 [ %i.af, %_ZN8simdjson7icelake12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit3.i.i ], [ 0, %bb.a ] ; 2 uses
  %.sroa.034.0211.i.i = phi <8 x i64> [ %.sroa.034.2.i.i, %_ZN8simdjson7icelake12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit3.i.i ], [ zeroinitializer, %bb.a ]
  %.sroa.15.0210.i.i = phi <8 x i64> [ %.sroa.15.1.i.i, %_ZN8simdjson7icelake12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit3.i.i ], [ zeroinitializer, %bb.a ] ; 2 uses
  %.sroa.20.0209.i.i = phi <8 x i64> [ %.sroa.20.2.i.i, %_ZN8simdjson7icelake12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit3.i.i ], [ zeroinitializer, %bb.a ] ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.11.0212.i.i
  %i.b = load <8 x i64>, ptr %i.a, align 1, !tbaa !36 ; 4 uses
  %i.c = bitcast <8 x i64> %i.b to <64 x i8>      ; 5 uses
  %i.d = icmp slt <64 x i8> %i.c, zeroinitializer
  %i.e = bitcast <64 x i1> %i.d to i64
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_ZN8simdjson7icelake12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit3.i.i, label %bb.b, !prof !110

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.g = shufflevector <8 x i64> %.sroa.15.0210.i.i, <8 x i64> %i.b, <8 x i32> <i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13>
  %i.h = bitcast <8 x i64> %i.g to <64 x i8>      ; 3 uses
  %i.i = shufflevector <64 x i8> %i.h, <64 x i8> %i.c, <64 x i32> <i32 15, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 31, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 94, i32 47, i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103, i32 104, i32 105, i32 106, i32 107, i32 108, i32 109, i32 110, i32 63, i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119, i32 120, i32 121, i32 122, i32 123, i32 124, i32 125, i32 126> ; 2 uses
  %i.j = bitcast <64 x i8> %i.i to <32 x i16>
  %i.k = lshr <32 x i16> %i.j, splat (i16 4)
  %i.l = bitcast <32 x i16> %i.k to <64 x i8>
  %i.m = and <64 x i8> %i.l, splat (i8 15)
  %i.n = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73>, <64 x i8> %i.m)
  %i.o = and <64 x i8> %i.i, splat (i8 15)
  %i.p = tail call <64 x i8> @llvm.x86.avx512.pshuf.b.512(<64 x i8> <i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53, i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53, i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53, i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53>, <64 x i8> %i.o)
end_hunk_2
begin_hunk_3_@_ZN8simdjson8westmere25dom_parser_implementation6stage1EPKhmNS_11stage1_modeE:bb.a
  %i.ne = and i64 %i.nd, %i.my                    ; 3 uses
  %i.nf = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ne, i1 true)
  %i.ng = trunc nuw nsw i64 %i.nf to i32
  %i.nh = or disjoint i32 %i.ip, %i.ng
  %i.ni = getelementptr inbounds nuw i8, ptr %.sroa.59.01675.i, i64 76
  store i32 %i.nh, ptr %i.ni, align 4, !tbaa !37
  %i.nj = icmp samesign ugt i64 %i.ir, 20
  br i1 %i.nj, label %.noexc107.i, label %.loopexit1661.i, !prof !108

.noexc107.i:                                      ; preds = %.noexc227.i
  %i.nk = add i64 %i.ne, -2
  %i.nl = and i64 %i.nk, %i.ne                    ; 3 uses
  %i.nm = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.nl, i1 true)
  %i.nn = trunc nuw nsw i64 %i.nm to i32
  %i.no = or disjoint i32 %i.ip, %i.nn
  %i.np = getelementptr inbounds nuw i8, ptr %.sroa.59.01675.i, i64 80
  store i32 %i.no, ptr %i.np, align 4, !tbaa !37
  %i.nq = add i64 %i.nl, -1
  %i.nr = and i64 %i.nq, %i.nl                    ; 3 uses
  %i.ns = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.nr, i1 true)
  %i.nt = trunc nuw nsw i64 %i.ns to i32
  %i.nu = or disjoint i32 %i.ip, %i.nt
  %i.nv = getelementptr inbounds nuw i8, ptr %.sroa.59.01675.i, i64 84
  store i32 %i.nu, ptr %i.nv, align 4, !tbaa !37
  %i.nw = add i64 %i.nr, -2
  %i.nx = and i64 %i.nw, %i.nr                    ; 3 uses
  %i.ny = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.nx, i1 true)
  %i.nz = trunc nuw nsw i64 %i.ny to i32
  %i.oa = or disjoint i32 %i.ip, %i.nz
  %i.ob = getelementptr inbounds nuw i8, ptr %.sroa.59.01675.i, i64 88
  store i32 %i.oa, ptr %i.ob, align 4, !tbaa !37
  %i.oc = add i64 %i.nx, -2
  %i.od = and i64 %i.oc, %i.nx                    ; 3 uses
  %i.oe = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.od, i1 true)
  %i.of = trunc nuw nsw i64 %i.oe to i32
  %i.og = or disjoint i32 %i.ip, %i.of
  %i.oh = getelementptr inbounds nuw i8, ptr %.sroa.59.01675.i, i64 92
  store i32 %i.og, ptr %i.oh, align 4, !tbaa !37
  %i.oi = icmp samesign ugt i64 %i.ir, 24
  br i1 %i.oi, label %.noexc108.i.preheader, label %.loopexit1661.i, !prof !111

.noexc108.i.preheader:                            ; preds = %.noexc107.i
  %i.oj = add i64 %i.od, -2
  %i.ok = and i64 %i.oj, %i.od                    ; 2 uses
  %xtraiter = and i64 %i.ir, 1
  %i.ol = icmp eq i64 %i.ir, 25
  br i1 %i.ol, label %.noexc108.i.epil.preheader, label %.noexc108.i.preheader.new

.noexc108.i.preheader.new:                        ; preds = %.noexc108.i.preheader
  %i.om = and i64 %i.ir, 126
  %i.on = add nsw i64 %i.om, -26
  br label %.noexc108.i

.noexc108.i:                                      ; preds = %.noexc108.i, %.noexc108.i.preheader.new
  %indvars.iv.i = phi i64 [ 24, %.noexc108.i.preheader.new ], [ %indvars.iv.next.i.1, %.noexc108.i ] ; 3 uses
  %.015941668.i = phi i64 [ %i.ok, %.noexc108.i.preheader.new ], [ %i.pa, %.noexc108.i ] ; 3 uses
  %niter = phi i64 [ 0, %.noexc108.i.preheader.new ], [ %niter.next.1, %.noexc108.i ] ; 2 uses
  %i.oo = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.015941668.i, i1 true)
  %i.op = trunc nuw nsw i64 %i.oo to i32
  %i.oq = or disjoint i32 %i.ip, %i.op
  %i.or = getelementptr inbounds nuw [4 x i8], ptr %.sroa.59.01675.i, i64 %indvars.iv.i
  store i32 %i.oq, ptr %i.or, align 4, !tbaa !37
  %i.os = add i64 %.015941668.i, -1
  %i.ot = and i64 %i.os, %.015941668.i            ; 3 uses
  %i.ou = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ot, i1 true)
  %i.ov = trunc nuw nsw i64 %i.ou to i32
  %i.ow = or disjoint i32 %i.ip, %i.ov
  %i.ox = getelementptr inbounds nuw [4 x i8], ptr %.sroa.59.01675.i, i64 %indvars.iv.i
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ox, i64 4
  store i32 %i.ow, ptr %i.oy, align 4, !tbaa !37
  %i.oz = add i64 %i.ot, -2
  %i.pa = and i64 %i.oz, %i.ot                    ; 2 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter, %i.on
  br i1 %niter.ncmp.1, label %.loopexit1661.i.loopexit.unr-lcssa, label %.noexc108.i, !llvm.loop !207

.loopexit1661.i.loopexit.unr-lcssa:               ; preds = %.noexc108.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit1661.i, label %.noexc108.i.epil.preheader

.noexc108.i.epil.preheader:                       ; preds = %.loopexit1661.i.loopexit.unr-lcssa, %.noexc108.i.preheader
  %indvars.iv.i.epil.init = phi i64 [ 24, %.noexc108.i.preheader ], [ %indvars.iv.next.i.1, %.loopexit1661.i.loopexit.unr-lcssa ]
  %.015941668.i.epil.init = phi i64 [ %i.ok, %.noexc108.i.preheader ], [ %i.pa, %.loopexit1661.i.loopexit.unr-lcssa ]
  %lcmp.mod89 = trunc i64 %i.ir to i1
  tail call void @llvm.assume(i1 %lcmp.mod89)
  %i.pb = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.015941668.i.epil.init, i1 true)
  %i.pc = trunc nuw nsw i64 %i.pb to i32
  %i.pd = or disjoint i32 %i.ip, %i.pc
  %i.pe = getelementptr inbounds nuw [4 x i8], ptr %.sroa.59.01675.i, i64 %indvars.iv.i.epil.init
  store i32 %i.pd, ptr %i.pe, align 4, !tbaa !37
  br label %.loopexit1661.i

.loopexit1661.i:                                  ; preds = %.noexc108.i.epil.preheader, %.loopexit1661.i.loopexit.unr-lcssa, %.noexc107.i, %.noexc227.i, %.noexc204.i, %.noexc181.i, %.noexc158.i, %.noexc145.i
  %i.pf = getelementptr inbounds nuw [4 x i8], ptr %.sroa.59.01675.i, i64 %i.ir
  br label %_ZN8simdjson8westmere12_GLOBAL__N_16stage123json_structural_indexer4stepILm64EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit52.i

_ZN8simdjson8westmere12_GLOBAL__N_16stage123json_structural_indexer4stepILm64EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit52.i: ; preds = %.loopexit1661.i, %_ZN8simdjson8westmere12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit.i.i
  %.sroa.59.2.i = phi ptr [ %.sroa.59.01675.i, %_ZN8simdjson8westmere12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit.i.i ], [ %i.pf, %.loopexit1661.i ] ; 2 uses
  %i.pg = xor i64 %i.ek, -1
  %i.ph = and i64 %i.pg, %i.eg
  %i.pi = or i64 %i.ph, %i.ee
  %i.pj = xor i64 %i.cg, %i.ck
  %i.pk = xor i64 %i.pj, -1
  %i.pl = and i64 %i.pi, %i.pk                    ; 2 uses
  %i.pm = and i64 %i.ck, %i.fa
  %i.pn = or i64 %i.pm, %.sroa.148.01673.i        ; 2 uses
  %i.po = add nuw i64 %.sroa.11.01670.i, 64       ; 4 uses
  %i.pp = icmp ult i64 %i.po, %spec.select.i.i
  br i1 %i.pp, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !208

._crit_edge.thread.i:                             ; preds = %_ZN8simdjson8westmere12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.thread.i, %_ZN8simdjson8westmere12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.thread.thread.i
  %.ph.i = phi ptr [ %i.ad, %_ZN8simdjson8westmere12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.thread.thread.i ], [ %i.af, %_ZN8simdjson8westmere12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.thread.i ]
  %.0131756.ph.i = phi i64 [ %.013.ph.i, %_ZN8simdjson8westmere12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.thread.thread.i ], [ %.013.i, %_ZN8simdjson8westmere12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.thread.i ]
  %.sroa.59.0.lcssa.ph.i = phi ptr [ %i.ae, %_ZN8simdjson8westmere12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.thread.thread.i ], [ %i.ag, %_ZN8simdjson8westmere12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.thread.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %_ZNK8simdjson8westmere12_GLOBAL__N_16stage116buf_block_readerILm64EE13get_remainderEPh.exit.i

._crit_edge.i:                                    ; preds = %_ZN8simdjson8westmere12_GLOBAL__N_16stage123json_structural_indexer4stepILm64EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit52.i
  %i.pq = bitcast <2 x i64> %.sroa.48.1.i to <16 x i8>
  %i.pr = or <2 x i64> %.sroa.23326.1.i, %.sroa.53.1.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ps = icmp eq i64 %.013.i, %i.po
  br i1 %i.ps, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage123json_structural_indexer6finishERNS0_25dom_parser_implementationEmmNS_11stage1_modeE.exit.i, label %_ZNK8simdjson8westmere12_GLOBAL__N_16stage116buf_block_readerILm64EE13get_remainderEPh.exit.i

_ZNK8simdjson8westmere12_GLOBAL__N_16stage116buf_block_readerILm64EE13get_remainderEPh.exit.i: ; preds = %._crit_edge.i, %._crit_edge.thread.i
  %.sroa.18.0.lcssa1779.i = phi i64 [ 0, %._crit_edge.thread.i ], [ %i.cl, %._crit_edge.i ]
  %.sroa.23326.0.lcssa1778.i = phi <2 x i64> [ zeroinitializer, %._crit_edge.thread.i ], [ %.sroa.23326.1.i, %._crit_edge.i ]
  %.sroa.48.0.lcssa1777.i = phi <16 x i8> [ zeroinitializer, %._crit_edge.thread.i ], [ %i.pq, %._crit_edge.i ] ; 3 uses
  %.sroa.53.0.lcssa1776.i = phi <2 x i64> [ zeroinitializer, %._crit_edge.thread.i ], [ %i.pr, %._crit_edge.i ]
  %.sroa.59.0.lcssa1775.i = phi ptr [ %.sroa.59.0.lcssa.ph.i, %._crit_edge.thread.i ], [ %.sroa.59.2.i, %._crit_edge.i ] ; 29 uses
  %.sroa.142.0.lcssa1774.i = phi i64 [ 0, %._crit_edge.thread.i ], [ %i.pl, %._crit_edge.i ] ; 5 uses
  %.sroa.148.0.lcssa1773.i = phi i64 [ 0, %._crit_edge.thread.i ], [ %i.pn, %._crit_edge.i ]
  %.sroa.8.0.lcssa1772.i = phi i64 [ 0, %._crit_edge.thread.i ], [ %.sroa.8.1.i, %._crit_edge.i ] ; 3 uses
  %.sroa.0.0.lcssa1771.i = phi i64 [ 0, %._crit_edge.thread.i ], [ %i.el, %._crit_edge.i ]
  %.sroa.11.0.lcssa1770.i = phi i64 [ 0, %._crit_edge.thread.i ], [ %i.po, %._crit_edge.i ] ; 30 uses
  %.01317561769.i = phi i64 [ %.0131756.ph.i, %._crit_edge.thread.i ], [ %.013.i, %._crit_edge.i ] ; 3 uses
  %i.pt = phi ptr [ %.ph.i, %._crit_edge.thread.i ], [ %i.af, %._crit_edge.i ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.a, i8 32, i64 64, i1 false)
  %i.pu = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.11.0.lcssa1770.i
  %i.pv = sub i64 %.01317561769.i, %.sroa.11.0.lcssa1770.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr readonly align 1 %i.pu, i64 %i.pv, i1 false)
  %.0..0..0..0..0..i = load <2 x i64>, ptr %i.a, align 16, !tbaa !36 ; 6 uses
  %.16..16..16..16..16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.16..16..16..16..16..i = load <2 x i64>, ptr %.16..16..16..16..16..sroa_idx, align 16, !tbaa !36 ; 6 uses
  %.32..32..32..32..32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.32..32..32..32..32..i = load <2 x i64>, ptr %.32..32..32..32..32..sroa_idx, align 16, !tbaa !36 ; 4 uses
  %.48..48..48..48..48..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.48..48..48..48..48..i = load <2 x i64>, ptr %.48..48..48..48..48..sroa_idx, align 16, !tbaa !36 ; 4 uses
  %i.pw = bitcast <2 x i64> %.0..0..0..0..0..i to <16 x i8> ; 10 uses
  %i.px = icmp eq <16 x i8> %i.pw, splat (i8 92)
  %i.py = bitcast <2 x i64> %.16..16..16..16..16..i to <16 x i8> ; 10 uses
  %i.pz = icmp eq <16 x i8> %i.py, splat (i8 92)
  %i.qa = bitcast <2 x i64> %.32..32..32..32..32..i to <16 x i8> ; 12 uses
  %i.qb = icmp eq <16 x i8> %i.qa, splat (i8 92)
  %i.qc = bitcast <2 x i64> %.48..48..48..48..48..i to <16 x i8> ; 10 uses
  %i.qd = icmp eq <16 x i8> %i.qc, splat (i8 92)
  %i.qe = bitcast <16 x i1> %i.px to i16
  %i.qf = bitcast <16 x i1> %i.pz to i16
  %i.qg = bitcast <16 x i1> %i.qb to i16
  %i.qh = bitcast <16 x i1> %i.qd to i16
  %i.qi = insertelement <4 x i16> poison, i16 %i.qe, i64 0
  %i.qj = insertelement <4 x i16> %i.qi, i16 %i.qf, i64 1
  %i.qk = insertelement <4 x i16> %i.qj, i16 %i.qg, i64 2
  %i.ql = insertelement <4 x i16> %i.qk, i16 %i.qh, i64 3
  %i.qm = bitcast <4 x i16> %i.ql to i64          ; 3 uses
  %.not.i.i.i = icmp eq i64 %i.qm, 0
  br i1 %.not.i.i.i, label %.noexc82.i, label %bb.m

bb.m:                                             ; preds = %_ZNK8simdjson8westmere12_GLOBAL__N_16stage116buf_block_readerILm64EE13get_remainderEPh.exit.i
  %i.qn = xor i64 %.sroa.8.0.lcssa1772.i, -1
  %i.qo = and i64 %i.qm, %i.qn                    ; 2 uses
  %i.qp = shl i64 %i.qo, 1
  %i.qq = or i64 %i.qp, -6148914691236517206
  %i.qr = sub i64 %i.qq, %i.qo
  %i.qs = or i64 %.sroa.8.0.lcssa1772.i, %i.qm
  %i.qt = xor i64 %i.qs, %i.qr
  %i.qu = xor i64 %i.qt, -6148914691236517206
  br label %.noexc82.i

.noexc82.i:                                       ; preds = %bb.m, %_ZNK8simdjson8westmere12_GLOBAL__N_16stage116buf_block_readerILm64EE13get_remainderEPh.exit.i
  %.sroa.0.0.i.i.i = phi i64 [ %i.qu, %bb.m ], [ %.sroa.8.0.lcssa1772.i, %_ZNK8simdjson8westmere12_GLOBAL__N_16stage116buf_block_readerILm64EE13get_remainderEPh.exit.i ]
  %i.qv = icmp eq <16 x i8> %i.pw, splat (i8 34)
  %i.qw = icmp eq <16 x i8> %i.py, splat (i8 34)
  %i.qx = icmp eq <16 x i8> %i.qa, splat (i8 34)
  %i.qy = icmp eq <16 x i8> %i.qc, splat (i8 34)
  %i.qz = bitcast <16 x i1> %i.qv to i16
  %i.ra = bitcast <16 x i1> %i.qw to i16
  %i.rb = bitcast <16 x i1> %i.qx to i16
  %i.rc = bitcast <16 x i1> %i.qy to i16
  %i.rd = insertelement <4 x i16> poison, i16 %i.qz, i64 0
  %i.re = insertelement <4 x i16> %i.rd, i16 %i.ra, i64 1
  %i.rf = insertelement <4 x i16> %i.re, i16 %i.rb, i64 2
  %i.rg = insertelement <4 x i16> %i.rf, i16 %i.rc, i64 3
  %i.rh = bitcast <4 x i16> %i.rg to i64
  %i.ri = xor i64 %.sroa.0.0.i.i.i, -1
  %i.rj = and i64 %i.rh, %i.ri                    ; 3 uses
  %i.rk = insertelement <2 x i64> poison, i64 %i.rj, i64 0
  %i.rl = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.rk, <2 x i64> <i64 -1, i64 poison>, i8 0)
  %i.rm = extractelement <2 x i64> %i.rl, i64 0
  %i.rn = xor i64 %i.rm, %.sroa.18.0.lcssa1779.i  ; 3 uses
  %i.ro = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 32, i8 100, i8 100, i8 100, i8 17, i8 100, i8 113, i8 2, i8 100, i8 9, i8 10, i8 112, i8 100, i8 13, i8 100, i8 100>, <16 x i8> %i.pw)
  %i.rp = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 32, i8 100, i8 100, i8 100, i8 17, i8 100, i8 113, i8 2, i8 100, i8 9, i8 10, i8 112, i8 100, i8 13, i8 100, i8 100>, <16 x i8> %i.py)
  %i.rq = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 32, i8 100, i8 100, i8 100, i8 17, i8 100, i8 113, i8 2, i8 100, i8 9, i8 10, i8 112, i8 100, i8 13, i8 100, i8 100>, <16 x i8> %i.qa)
  %i.rr = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 32, i8 100, i8 100, i8 100, i8 17, i8 100, i8 113, i8 2, i8 100, i8 9, i8 10, i8 112, i8 100, i8 13, i8 100, i8 100>, <16 x i8> %i.qc)
  %i.rs = icmp eq <16 x i8> %i.rq, %i.qa
  %i.rt = icmp eq <16 x i8> %i.rr, %i.qc
  %i.ru = bitcast <16 x i1> %i.rs to i16
  %i.rv = zext i16 %i.ru to i64
  %i.rw = bitcast <16 x i1> %i.rt to i16
  %i.rx = zext i16 %i.rw to i64
  %i.ry = shufflevector <16 x i8> %i.ro, <16 x i8> %i.rp, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.rz = shufflevector <2 x i64> %.0..0..0..0..0..i, <2 x i64> %.16..16..16..16..16..i, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.sa = bitcast <4 x i64> %i.rz to <32 x i8>
  %i.sb = icmp eq <32 x i8> %i.ry, %i.sa
  %i.sc = bitcast <32 x i1> %i.sb to i32
  %i.sd = zext i32 %i.sc to i64
  %i.se = shl nuw nsw i64 %i.rv, 32
  %i.sf = or disjoint i64 %i.se, %i.sd
  %i.sg = shl nuw i64 %i.rx, 48
  %i.sh = or disjoint i64 %i.sf, %i.sg
  %i.si = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 58, i8 123, i8 44, i8 125, i8 0, i8 0>, <16 x i8> %i.pw)
  %i.sj = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 58, i8 123, i8 44, i8 125, i8 0, i8 0>, <16 x i8> %i.py)
  %i.sk = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 58, i8 123, i8 44, i8 125, i8 0, i8 0>, <16 x i8> %i.qa)
  %i.sl = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 58, i8 123, i8 44, i8 125, i8 0, i8 0>, <16 x i8> %i.qc)
  %i.sm = bitcast <2 x i64> %.32..32..32..32..32..i to <16 x i8>
  %i.sn = or <16 x i8> %i.sm, splat (i8 32)
  %i.so = icmp eq <16 x i8> %i.sn, %i.sk
  %i.sp = bitcast <2 x i64> %.48..48..48..48..48..i to <16 x i8>
  %i.sq = or <16 x i8> %i.sp, splat (i8 32)
  %i.sr = icmp eq <16 x i8> %i.sq, %i.sl
  %i.ss = bitcast <16 x i1> %i.so to i16
  %i.st = zext i16 %i.ss to i64
  %i.su = bitcast <16 x i1> %i.sr to i16
  %i.sv = zext i16 %i.su to i64
  %i.sw = shufflevector <2 x i64> %.0..0..0..0..0..i, <2 x i64> %.16..16..16..16..16..i, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.sx = bitcast <4 x i64> %i.sw to <32 x i8>
  %i.sy = or <32 x i8> %i.sx, splat (i8 32)
  %i.sz = shufflevector <16 x i8> %i.si, <16 x i8> %i.sj, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ta = icmp eq <32 x i8> %i.sy, %i.sz
  %i.tb = bitcast <32 x i1> %i.ta to i32
  %i.tc = zext i32 %i.tb to i64
  %i.td = shl nuw nsw i64 %i.st, 32
  %i.te = or disjoint i64 %i.td, %i.tc
  %i.tf = shl nuw i64 %i.sv, 48
  %i.tg = or disjoint i64 %i.te, %i.tf            ; 2 uses
  %i.th = or i64 %i.tg, %i.sh
  %i.ti = xor i64 %i.th, -1                       ; 2 uses
  %i.tj = xor i64 %i.rj, -1
  %i.tk = and i64 %i.ti, %i.tj
  %i.tl = shl i64 %i.tk, 1
  %i.tm = or disjoint i64 %i.tl, %.sroa.0.0.lcssa1771.i
  %i.tn = icmp ult <16 x i8> %i.qa, splat (i8 32)
  %i.to = icmp ult <16 x i8> %i.qc, splat (i8 32)
  %i.tp = bitcast <16 x i1> %i.tn to i16
  %i.tq = zext i16 %i.tp to i64
  %i.tr = bitcast <16 x i1> %i.to to i16
  %i.ts = zext i16 %i.tr to i64
  %i.tt = shufflevector <2 x i64> %.0..0..0..0..0..i, <2 x i64> %.16..16..16..16..16..i, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.tu = bitcast <4 x i64> %i.tt to <32 x i8>
  %i.tv = icmp ult <32 x i8> %i.tu, splat (i8 32)
  %i.tw = bitcast <32 x i1> %i.tv to i32
  %i.tx = zext i32 %i.tw to i64
  %i.ty = shl nuw nsw i64 %i.tq, 32
  %i.tz = or disjoint i64 %i.ty, %i.tx
  %i.ua = shl nuw i64 %i.ts, 48
  %i.ub = or disjoint i64 %i.tz, %i.ua
  %i.uc = or <2 x i64> %.16..16..16..16..16..i, %.0..0..0..0..0..i
  %i.ud = or <2 x i64> %i.uc, %.32..32..32..32..32..i
  %i.ue = or <2 x i64> %i.ud, %.48..48..48..48..48..i
  %i.uf = bitcast <2 x i64> %i.ue to <16 x i8>
  %i.ug = icmp slt <16 x i8> %i.uf, zeroinitializer
  %i.uh = bitcast <16 x i1> %i.ug to i16
  %i.ui = icmp eq i16 %i.uh, 0
  br i1 %i.ui, label %_ZN8simdjson8westmere12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit.i80.i, label %.noexc91.i, !prof !110

.noexc91.i:                                       ; preds = %.noexc82.i
  %i.uj = shufflevector <16 x i8> %.sroa.48.0.lcssa1777.i, <16 x i8> %i.pw, <16 x i32> <i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30> ; 2 uses
  %i.uk = bitcast <16 x i8> %i.uj to <8 x i16>
  %i.ul = lshr <8 x i16> %i.uk, splat (i16 4)
  %i.um = bitcast <8 x i16> %i.ul to <16 x i8>
  %i.un = and <16 x i8> %i.um, splat (i8 15)
  %i.uo = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73>, <16 x i8> %i.un)
  %i.up = and <16 x i8> %i.uj, splat (i8 15)
  %i.uq = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53>, <16 x i8> %i.up)
  %i.ur = bitcast <2 x i64> %.0..0..0..0..0..i to <8 x i16>
  %i.us = lshr <8 x i16> %i.ur, splat (i16 4)
  %i.ut = bitcast <8 x i16> %i.us to <16 x i8>
  %i.uu = and <16 x i8> %i.ut, splat (i8 15)
  %i.uv = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1>, <16 x i8> %i.uu)
  %i.uw = and <16 x i8> %i.uq, %i.uo
  %i.ux = and <16 x i8> %i.uw, %i.uv
  %i.uy = shufflevector <16 x i8> %.sroa.48.0.lcssa1777.i, <16 x i8> %i.pw, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29>
  %i.uz = shufflevector <16 x i8> %.sroa.48.0.lcssa1777.i, <16 x i8> %i.pw, <16 x i32> <i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28>
  %i.va = tail call <16 x i8> @llvm.usub.sat.v16i8(<16 x i8> %i.uy, <16 x i8> splat (i8 96))
  %i.vb = tail call <16 x i8> @llvm.usub.sat.v16i8(<16 x i8> %i.uz, <16 x i8> splat (i8 112))
  %i.vc = or <16 x i8> %i.va, %i.vb
  %.inner69 = and <16 x i8> %i.vc, splat (i8 -128)
  %.inner70 = xor <16 x i8> %.inner69, %i.ux
  %i.vd = bitcast <16 x i8> %.inner70 to <2 x i64>
  %i.ve = shufflevector <16 x i8> %i.pw, <16 x i8> %i.py, <16 x i32> <i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30> ; 2 uses
  %i.vf = bitcast <16 x i8> %i.ve to <8 x i16>
  %i.vg = lshr <8 x i16> %i.vf, splat (i16 4)
  %i.vh = bitcast <8 x i16> %i.vg to <16 x i8>
  %i.vi = and <16 x i8> %i.vh, splat (i8 15)
  %i.vj = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73>, <16 x i8> %i.vi)
  %i.vk = and <16 x i8> %i.ve, splat (i8 15)
  %i.vl = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53>, <16 x i8> %i.vk)
  %i.vm = bitcast <2 x i64> %.16..16..16..16..16..i to <8 x i16>
  %i.vn = lshr <8 x i16> %i.vm, splat (i16 4)
  %i.vo = bitcast <8 x i16> %i.vn to <16 x i8>
  %i.vp = and <16 x i8> %i.vo, splat (i8 15)
  %i.vq = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1>, <16 x i8> %i.vp)
  %i.vr = and <16 x i8> %i.vl, %i.vj
  %i.vs = and <16 x i8> %i.vr, %i.vq
  %i.vt = shufflevector <16 x i8> %i.pw, <16 x i8> %i.py, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29>
  %i.vu = shufflevector <16 x i8> %i.pw, <16 x i8> %i.py, <16 x i32> <i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28>
  %i.vv = tail call <16 x i8> @llvm.usub.sat.v16i8(<16 x i8> %i.vt, <16 x i8> splat (i8 96))
  %i.vw = tail call <16 x i8> @llvm.usub.sat.v16i8(<16 x i8> %i.vu, <16 x i8> splat (i8 112))
  %i.vx = or <16 x i8> %i.vv, %i.vw
  %.inner73 = and <16 x i8> %i.vx, splat (i8 -128)
  %.inner74 = xor <16 x i8> %.inner73, %i.vs
  %i.vy = bitcast <16 x i8> %.inner74 to <2 x i64>
  %i.vz = shufflevector <16 x i8> %i.py, <16 x i8> %i.qa, <16 x i32> <i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30> ; 2 uses
  %i.wa = bitcast <16 x i8> %i.vz to <8 x i16>
  %i.wb = lshr <8 x i16> %i.wa, splat (i16 4)
  %i.wc = bitcast <8 x i16> %i.wb to <16 x i8>
  %i.wd = and <16 x i8> %i.wc, splat (i8 15)
  %i.we = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73>, <16 x i8> %i.wd)
  %i.wf = and <16 x i8> %i.vz, splat (i8 15)
  %i.wg = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53>, <16 x i8> %i.wf)
  %i.wh = bitcast <2 x i64> %.32..32..32..32..32..i to <8 x i16>
  %i.wi = lshr <8 x i16> %i.wh, splat (i16 4)
  %i.wj = bitcast <8 x i16> %i.wi to <16 x i8>
  %i.wk = and <16 x i8> %i.wj, splat (i8 15)
  %i.wl = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1>, <16 x i8> %i.wk)
  %i.wm = and <16 x i8> %i.wg, %i.we
  %i.wn = and <16 x i8> %i.wm, %i.wl
  %i.wo = shufflevector <16 x i8> %i.py, <16 x i8> %i.qa, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29>
  %i.wp = shufflevector <16 x i8> %i.py, <16 x i8> %i.qa, <16 x i32> <i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28>
  %i.wq = tail call <16 x i8> @llvm.usub.sat.v16i8(<16 x i8> %i.wo, <16 x i8> splat (i8 96))
  %i.wr = tail call <16 x i8> @llvm.usub.sat.v16i8(<16 x i8> %i.wp, <16 x i8> splat (i8 112))
  %i.ws = or <16 x i8> %i.wq, %i.wr
  %.inner77 = and <16 x i8> %i.ws, splat (i8 -128)
  %.inner78 = xor <16 x i8> %.inner77, %i.wn
  %i.wt = bitcast <16 x i8> %.inner78 to <2 x i64>
  %i.wu = shufflevector <16 x i8> %i.qa, <16 x i8> %i.qc, <16 x i32> <i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30> ; 2 uses
  %i.wv = bitcast <16 x i8> %i.wu to <8 x i16>
  %i.ww = lshr <8 x i16> %i.wv, splat (i16 4)
  %i.wx = bitcast <8 x i16> %i.ww to <16 x i8>
  %i.wy = and <16 x i8> %i.wx, splat (i8 15)
  %i.wz = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73>, <16 x i8> %i.wy)
  %i.xa = and <16 x i8> %i.wu, splat (i8 15)
  %i.xb = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53>, <16 x i8> %i.xa)
  %i.xc = bitcast <2 x i64> %.48..48..48..48..48..i to <8 x i16>
  %i.xd = lshr <8 x i16> %i.xc, splat (i16 4)
  %i.xe = bitcast <8 x i16> %i.xd to <16 x i8>
  %i.xf = and <16 x i8> %i.xe, splat (i8 15)
  %i.xg = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1>, <16 x i8> %i.xf)
  %i.xh = and <16 x i8> %i.xb, %i.wz
  %i.xi = and <16 x i8> %i.xh, %i.xg
  %i.xj = shufflevector <16 x i8> %i.qa, <16 x i8> %i.qc, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29>
  %i.xk = shufflevector <16 x i8> %i.qa, <16 x i8> %i.qc, <16 x i32> <i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28>
  %i.xl = tail call <16 x i8> @llvm.usub.sat.v16i8(<16 x i8> %i.xj, <16 x i8> splat (i8 96))
  %i.xm = tail call <16 x i8> @llvm.usub.sat.v16i8(<16 x i8> %i.xk, <16 x i8> splat (i8 112))
  %i.xn = or <16 x i8> %i.xl, %i.xm
  %.inner81 = and <16 x i8> %i.xn, splat (i8 -128)
  %.inner82 = xor <16 x i8> %.inner81, %i.xi
  %i.xo = bitcast <16 x i8> %.inner82 to <2 x i64>
  %i.xp = tail call <16 x i8> @llvm.usub.sat.v16i8(<16 x i8> %i.qc, <16 x i8> <i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -17, i8 -33, i8 -65>)
  %i.xq = bitcast <16 x i8> %i.xp to <2 x i64>
  %i.xr = or <2 x i64> %.sroa.23326.0.lcssa1778.i, %i.xq
  %i.xs = or <2 x i64> %i.xr, %i.vd
  %i.xt = or <2 x i64> %i.xs, %i.vy
  %i.xu = or <2 x i64> %i.xt, %i.wt
  %i.xv = or <2 x i64> %i.xu, %i.xo
  br label %_ZN8simdjson8westmere12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit.i80.i

_ZN8simdjson8westmere12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit.i80.i: ; preds = %.noexc91.i, %.noexc82.i
  %.sroa.23326.2.i = phi <2 x i64> [ %i.xv, %.noexc91.i ], [ %.sroa.53.0.lcssa1776.i, %.noexc82.i ] ; 2 uses
  %i.xw = trunc i64 %.sroa.11.0.lcssa1770.i to i32
  %i.xx = add i32 %i.xw, -64                      ; 27 uses
  %i.xy = icmp eq i64 %.sroa.142.0.lcssa1774.i, 0
  br i1 %i.xy, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage123json_structural_indexer4stepILm64EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit.i, label %.noexc148.i

.noexc148.i:                                      ; preds = %_ZN8simdjson8westmere12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit.i80.i
  %i.xz = tail call noundef range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %.sroa.142.0.lcssa1774.i) ; 11 uses
  %i.ya = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.sroa.142.0.lcssa1774.i, i1 true)
  %i.yb = trunc nuw nsw i64 %i.ya to i32
  %i.yc = or disjoint i32 %i.xx, %i.yb
  store i32 %i.yc, ptr %.sroa.59.0.lcssa1775.i, align 4, !tbaa !37
  %i.yd = add i64 %.sroa.142.0.lcssa1774.i, -1
  %i.ye = and i64 %i.yd, %.sroa.142.0.lcssa1774.i ; 3 uses
  %i.yf = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ye, i1 true)
  %i.yg = trunc nuw nsw i64 %i.yf to i32
  %i.yh = or disjoint i32 %i.xx, %i.yg
  %i.yi = getelementptr inbounds nuw i8, ptr %.sroa.59.0.lcssa1775.i, i64 4
  store i32 %i.yh, ptr %i.yi, align 4, !tbaa !37
  %i.yj = add i64 %i.ye, -2
  %i.yk = and i64 %i.yj, %i.ye                    ; 3 uses
  %i.yl = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.yk, i1 true)
end_hunk_3
begin_hunk_4_@_ZN8simdjson8westmere25dom_parser_implementation6stage1EPKhmNS_11stage1_modeE:bb.a
  %i.agj = or disjoint i64 %i.agi, %.sroa.11.0.lcssa1770.i
  %i.agk = trunc i64 %i.agj to i32
  %i.agl = getelementptr inbounds nuw i8, ptr %.sroa.59.1.i, i64 24
  store i32 %i.agk, ptr %i.agl, align 4, !tbaa !37
  %i.agm = add i64 %i.agh, -2
  %i.agn = and i64 %i.agm, %i.agh                 ; 3 uses
  %i.ago = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.agn, i1 true)
  %i.agp = or disjoint i64 %i.ago, %.sroa.11.0.lcssa1770.i
  %i.agq = trunc i64 %i.agp to i32
  %i.agr = getelementptr inbounds nuw i8, ptr %.sroa.59.1.i, i64 28
  store i32 %i.agq, ptr %i.agr, align 4, !tbaa !37
  %i.ags = icmp samesign ugt i64 %i.aex, 8
  br i1 %i.ags, label %.noexc179.i, label %.loopexit.i, !prof !108

.noexc179.i:                                      ; preds = %.noexc161.i
  %i.agt = add i64 %i.agn, -2
  %i.agu = and i64 %i.agt, %i.agn                 ; 3 uses
  %i.agv = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.agu, i1 true)
  %i.agw = or disjoint i64 %i.agv, %.sroa.11.0.lcssa1770.i
  %i.agx = trunc i64 %i.agw to i32
  %i.agy = getelementptr inbounds nuw i8, ptr %.sroa.59.1.i, i64 32
  store i32 %i.agx, ptr %i.agy, align 4, !tbaa !37
  %i.agz = add i64 %i.agu, -2
  %i.aha = and i64 %i.agz, %i.agu                 ; 3 uses
  %i.ahb = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.aha, i1 true)
  %i.ahc = or disjoint i64 %i.ahb, %.sroa.11.0.lcssa1770.i
  %i.ahd = trunc i64 %i.ahc to i32
  %i.ahe = getelementptr inbounds nuw i8, ptr %.sroa.59.1.i, i64 36
  store i32 %i.ahd, ptr %i.ahe, align 4, !tbaa !37
  %i.ahf = add i64 %i.aha, -2
  %i.ahg = and i64 %i.ahf, %i.aha                 ; 3 uses
  %i.ahh = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ahg, i1 true)
  %i.ahi = or disjoint i64 %i.ahh, %.sroa.11.0.lcssa1770.i
  %i.ahj = trunc i64 %i.ahi to i32
  %i.ahk = getelementptr inbounds nuw i8, ptr %.sroa.59.1.i, i64 40
  store i32 %i.ahj, ptr %i.ahk, align 4, !tbaa !37
  %i.ahl = add i64 %i.ahg, -1
  %i.ahm = and i64 %i.ahl, %i.ahg                 ; 3 uses
  %i.ahn = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ahm, i1 true)
  %i.aho = or disjoint i64 %i.ahn, %.sroa.11.0.lcssa1770.i
  %i.ahp = trunc i64 %i.aho to i32
  %i.ahq = getelementptr inbounds nuw i8, ptr %.sroa.59.1.i, i64 44
  store i32 %i.ahp, ptr %i.ahq, align 4, !tbaa !37
  %i.ahr = icmp samesign ugt i64 %i.aex, 12
  br i1 %i.ahr, label %.noexc207.i, label %.loopexit.i, !prof !108

.noexc207.i:                                      ; preds = %.noexc179.i
  %i.ahs = add i64 %i.ahm, -2
  %i.aht = and i64 %i.ahs, %i.ahm                 ; 3 uses
  %i.ahu = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.aht, i1 true)
  %i.ahv = or disjoint i64 %i.ahu, %.sroa.11.0.lcssa1770.i
  %i.ahw = trunc i64 %i.ahv to i32
  %i.ahx = getelementptr inbounds nuw i8, ptr %.sroa.59.1.i, i64 48
  store i32 %i.ahw, ptr %i.ahx, align 4, !tbaa !37
  %i.ahy = add i64 %i.aht, -2
  %i.ahz = and i64 %i.ahy, %i.aht                 ; 3 uses
  %i.aia = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ahz, i1 true)
  %i.aib = or disjoint i64 %i.aia, %.sroa.11.0.lcssa1770.i
  %i.aic = trunc i64 %i.aib to i32
  %i.aid = getelementptr inbounds nuw i8, ptr %.sroa.59.1.i, i64 52
  store i32 %i.aic, ptr %i.aid, align 4, !tbaa !37
  %i.aie = add i64 %i.ahz, -2
  %i.aif = and i64 %i.aie, %i.ahz                 ; 3 uses
  %i.aig = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.aif, i1 true)
  %i.aih = or disjoint i64 %i.aig, %.sroa.11.0.lcssa1770.i
  %i.aii = trunc i64 %i.aih to i32
  %i.aij = getelementptr inbounds nuw i8, ptr %.sroa.59.1.i, i64 56
  store i32 %i.aii, ptr %i.aij, align 4, !tbaa !37
  %i.aik = add i64 %i.aif, -2
  %i.ail = and i64 %i.aik, %i.aif                 ; 3 uses
  %i.aim = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ail, i1 true)
  %i.ain = or disjoint i64 %i.aim, %.sroa.11.0.lcssa1770.i
  %i.aio = trunc i64 %i.ain to i32
  %i.aip = getelementptr inbounds nuw i8, ptr %.sroa.59.1.i, i64 60
  store i32 %i.aio, ptr %i.aip, align 4, !tbaa !37
  %i.aiq = icmp samesign ugt i64 %i.aex, 16
  br i1 %i.aiq, label %.noexc225.i, label %.loopexit.i, !prof !108

.noexc225.i:                                      ; preds = %.noexc207.i
  %i.air = add i64 %i.ail, -1
  %i.ais = and i64 %i.air, %i.ail                 ; 3 uses
  %i.ait = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ais, i1 true)
  %i.aiu = or disjoint i64 %i.ait, %.sroa.11.0.lcssa1770.i
  %i.aiv = trunc i64 %i.aiu to i32
  %i.aiw = getelementptr inbounds nuw i8, ptr %.sroa.59.1.i, i64 64
  store i32 %i.aiv, ptr %i.aiw, align 4, !tbaa !37
  %i.aix = add i64 %i.ais, -2
  %i.aiy = and i64 %i.aix, %i.ais                 ; 3 uses
  %i.aiz = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.aiy, i1 true)
  %i.aja = or disjoint i64 %i.aiz, %.sroa.11.0.lcssa1770.i
  %i.ajb = trunc i64 %i.aja to i32
  %i.ajc = getelementptr inbounds nuw i8, ptr %.sroa.59.1.i, i64 68
  store i32 %i.ajb, ptr %i.ajc, align 4, !tbaa !37
  %i.ajd = add i64 %i.aiy, -2
  %i.aje = and i64 %i.ajd, %i.aiy                 ; 3 uses
  %i.ajf = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.aje, i1 true)
  %i.ajg = or disjoint i64 %i.ajf, %.sroa.11.0.lcssa1770.i
  %i.ajh = trunc i64 %i.ajg to i32
  %i.aji = getelementptr inbounds nuw i8, ptr %.sroa.59.1.i, i64 72
  store i32 %i.ajh, ptr %i.aji, align 4, !tbaa !37
  %i.ajj = add i64 %i.aje, -2
  %i.ajk = and i64 %i.ajj, %i.aje                 ; 3 uses
  %i.ajl = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ajk, i1 true)
  %i.ajm = or disjoint i64 %i.ajl, %.sroa.11.0.lcssa1770.i
  %i.ajn = trunc i64 %i.ajm to i32
  %i.ajo = getelementptr inbounds nuw i8, ptr %.sroa.59.1.i, i64 76
  store i32 %i.ajn, ptr %i.ajo, align 4, !tbaa !37
  %i.ajp = icmp samesign ugt i64 %i.aex, 20
  br i1 %i.ajp, label %.noexc111.i, label %.loopexit.i, !prof !108

.noexc111.i:                                      ; preds = %.noexc225.i
  %i.ajq = add i64 %i.ajk, -2
  %i.ajr = and i64 %i.ajq, %i.ajk                 ; 3 uses
  %i.ajs = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ajr, i1 true)
  %i.ajt = or disjoint i64 %i.ajs, %.sroa.11.0.lcssa1770.i
  %i.aju = trunc i64 %i.ajt to i32
  %i.ajv = getelementptr inbounds nuw i8, ptr %.sroa.59.1.i, i64 80
  store i32 %i.aju, ptr %i.ajv, align 4, !tbaa !37
  %i.ajw = add i64 %i.ajr, -1
  %i.ajx = and i64 %i.ajw, %i.ajr                 ; 3 uses
  %i.ajy = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ajx, i1 true)
  %i.ajz = or disjoint i64 %i.ajy, %.sroa.11.0.lcssa1770.i
  %i.aka = trunc i64 %i.ajz to i32
  %i.akb = getelementptr inbounds nuw i8, ptr %.sroa.59.1.i, i64 84
  store i32 %i.aka, ptr %i.akb, align 4, !tbaa !37
  %i.akc = add i64 %i.ajx, -2
  %i.akd = and i64 %i.akc, %i.ajx                 ; 3 uses
  %i.ake = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.akd, i1 true)
  %i.akf = or disjoint i64 %i.ake, %.sroa.11.0.lcssa1770.i
  %i.akg = trunc i64 %i.akf to i32
  %i.akh = getelementptr inbounds nuw i8, ptr %.sroa.59.1.i, i64 88
  store i32 %i.akg, ptr %i.akh, align 4, !tbaa !37
  %i.aki = add i64 %i.akd, -2
  %i.akj = and i64 %i.aki, %i.akd                 ; 3 uses
  %i.akk = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.akj, i1 true)
  %i.akl = or disjoint i64 %i.akk, %.sroa.11.0.lcssa1770.i
  %i.akm = trunc i64 %i.akl to i32
  %i.akn = getelementptr inbounds nuw i8, ptr %.sroa.59.1.i, i64 92
  store i32 %i.akm, ptr %i.akn, align 4, !tbaa !37
  %i.ako = icmp samesign ugt i64 %i.aex, 24
  br i1 %i.ako, label %.noexc112.i.preheader, label %.loopexit.i, !prof !111

.noexc112.i.preheader:                            ; preds = %.noexc111.i
  %i.akp = add i64 %i.akj, -2
  %i.akq = and i64 %i.akp, %i.akj                 ; 2 uses
  %xtraiter95 = and i64 %i.aex, 1
  %i.akr = icmp eq i64 %i.aex, 25
  br i1 %i.akr, label %.noexc112.i.epil.preheader, label %.noexc112.i.preheader.new

.noexc112.i.preheader.new:                        ; preds = %.noexc112.i.preheader
  %i.aks = and i64 %i.aex, 126
  %i.akt = add nsw i64 %i.aks, -26
  br label %.noexc112.i

.noexc112.i:                                      ; preds = %.noexc112.i, %.noexc112.i.preheader.new
  %indvars.iv1726.i = phi i64 [ 24, %.noexc112.i.preheader.new ], [ %indvars.iv.next1727.i.1, %.noexc112.i ] ; 3 uses
  %.015921691.i = phi i64 [ %i.akq, %.noexc112.i.preheader.new ], [ %i.alg, %.noexc112.i ] ; 3 uses
  %niter99 = phi i64 [ 0, %.noexc112.i.preheader.new ], [ %niter99.next.1, %.noexc112.i ] ; 2 uses
  %i.aku = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.015921691.i, i1 true)
  %i.akv = or disjoint i64 %i.aku, %.sroa.11.0.lcssa1770.i
  %i.akw = trunc i64 %i.akv to i32
  %i.akx = getelementptr inbounds nuw [4 x i8], ptr %.sroa.59.1.i, i64 %indvars.iv1726.i
  store i32 %i.akw, ptr %i.akx, align 4, !tbaa !37
  %i.aky = add i64 %.015921691.i, -1
  %i.akz = and i64 %i.aky, %.015921691.i          ; 3 uses
  %i.ala = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.akz, i1 true)
  %i.alb = or disjoint i64 %i.ala, %.sroa.11.0.lcssa1770.i
  %i.alc = trunc i64 %i.alb to i32
  %i.ald = getelementptr inbounds nuw [4 x i8], ptr %.sroa.59.1.i, i64 %indvars.iv1726.i
  %i.ale = getelementptr inbounds nuw i8, ptr %i.ald, i64 4
  store i32 %i.alc, ptr %i.ale, align 4, !tbaa !37
  %i.alf = add i64 %i.akz, -2
  %i.alg = and i64 %i.alf, %i.akz                 ; 2 uses
  %indvars.iv.next1727.i.1 = add nuw nsw i64 %indvars.iv1726.i, 2 ; 2 uses
  %niter99.next.1 = add i64 %niter99, 2
  %niter99.ncmp.1 = icmp eq i64 %niter99, %i.akt
  br i1 %niter99.ncmp.1, label %.loopexit.i.loopexit.unr-lcssa, label %.noexc112.i, !llvm.loop !207

.loopexit.i.loopexit.unr-lcssa:                   ; preds = %.noexc112.i
  %lcmp.mod96.not = icmp eq i64 %xtraiter95, 0
  br i1 %lcmp.mod96.not, label %.loopexit.i, label %.noexc112.i.epil.preheader

.noexc112.i.epil.preheader:                       ; preds = %.loopexit.i.loopexit.unr-lcssa, %.noexc112.i.preheader
  %indvars.iv1726.i.epil.init = phi i64 [ 24, %.noexc112.i.preheader ], [ %indvars.iv.next1727.i.1, %.loopexit.i.loopexit.unr-lcssa ]
  %.015921691.i.epil.init = phi i64 [ %i.akq, %.noexc112.i.preheader ], [ %i.alg, %.loopexit.i.loopexit.unr-lcssa ]
  %lcmp.mod97 = trunc i64 %i.aex to i1
  tail call void @llvm.assume(i1 %lcmp.mod97)
  %i.alh = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.015921691.i.epil.init, i1 true)
  %i.ali = or disjoint i64 %i.alh, %.sroa.11.0.lcssa1770.i
  %i.alj = trunc i64 %i.ali to i32
  %i.alk = getelementptr inbounds nuw [4 x i8], ptr %.sroa.59.1.i, i64 %indvars.iv1726.i.epil.init
  store i32 %i.alj, ptr %i.alk, align 4, !tbaa !37
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.noexc112.i.epil.preheader, %.loopexit.i.loopexit.unr-lcssa, %.noexc111.i, %.noexc225.i, %.noexc207.i, %.noexc179.i, %.noexc161.i, %.noexc143.i
  %i.all = getelementptr inbounds nuw [4 x i8], ptr %.sroa.59.1.i, i64 %i.aex
  br label %.noexc.i

.noexc.i:                                         ; preds = %.loopexit.i, %_ZN8simdjson8westmere12_GLOBAL__N_16stage123json_structural_indexer4stepILm64EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit.i
  %.sroa.59.3.i = phi ptr [ %.sroa.59.1.i, %_ZN8simdjson8westmere12_GLOBAL__N_16stage123json_structural_indexer4stepILm64EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit.i ], [ %i.all, %.loopexit.i ]
  %.not.i.i53.i.a = icmp sgt i64 %i.rn, -1        ; 3 uses
  %brmerge.i = select i1 %.not.i, i1 true, i1 %.not.i.i53.i.a, !prof !112
  br i1 %brmerge.i, label %.thread.i, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage123json_structural_indexer6finishERNS0_25dom_parser_implementationEmmNS_11stage1_modeE.exit.i, !prof !113

.thread.i:                                        ; preds = %.noexc.i
  %.not.i.i = icmp eq i64 %i.aev, 0
  br i1 %.not.i.i, label %bb.n, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage123json_structural_indexer6finishERNS0_25dom_parser_implementationEmmNS_11stage1_modeE.exit.i

bb.n:                                             ; preds = %.thread.i
  %i.alm = load ptr, ptr %i.pt, align 8, !tbaa !109 ; 14 uses
  %i.aln = ptrtoint ptr %.sroa.59.3.i to i64
  %i.alo = ptrtoint ptr %i.alm to i64
  %i.alp = sub i64 %i.aln, %i.alo
  %i.alq = lshr exact i64 %i.alp, 2               ; 2 uses
  %i.alr = trunc i64 %i.alq to i32
  %i.als = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 11 uses
  store i32 %i.alr, ptr %i.als, align 8, !tbaa !84
  %i.alt = trunc i64 %.01317561769.i to i32       ; 3 uses
  %i.alu = and i64 %i.alq, 4294967295
  %i.alv = getelementptr inbounds nuw [4 x i8], ptr %i.alm, i64 %i.alu
  store i32 %i.alt, ptr %i.alv, align 4, !tbaa !37
  %i.alw = load i32, ptr %i.als, align 8, !tbaa !84
  %i.alx = add i32 %i.alw, 1
  %i.aly = zext i32 %i.alx to i64
  %i.alz = getelementptr inbounds nuw [4 x i8], ptr %i.alm, i64 %i.aly
  store i32 %i.alt, ptr %i.alz, align 4, !tbaa !37
  %i.ama = load i32, ptr %i.als, align 8, !tbaa !84
  %i.amb = add i32 %i.ama, 2
  %i.amc = zext i32 %i.amb to i64
  %i.amd = getelementptr inbounds nuw [4 x i8], ptr %i.alm, i64 %i.amc
  store i32 0, ptr %i.amd, align 4, !tbaa !37
  %i.ame = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.ame, align 8, !tbaa !86
  %i.amf = load i32, ptr %i.als, align 8, !tbaa !84 ; 6 uses
  %i.amg = icmp eq i32 %i.amf, 0
  br i1 %i.amg, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage123json_structural_indexer6finishERNS0_25dom_parser_implementationEmmNS_11stage1_modeE.exit.i, label %bb.o, !prof !108

bb.o:                                             ; preds = %bb.n
  %i.amh = add i32 %i.amf, -1                     ; 9 uses
  %i.ami = zext i32 %i.amh to i64
  %i.amj = getelementptr inbounds nuw [4 x i8], ptr %i.alm, i64 %i.ami
  %i.amk = load i32, ptr %i.amj, align 4, !tbaa !37
  %i.aml = zext i32 %i.amk to i64
  %i.amm = icmp ult i64 %.01317561769.i, %i.aml
  br i1 %i.amm, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage123json_structural_indexer6finishERNS0_25dom_parser_implementationEmmNS_11stage1_modeE.exit.i, label %bb.p, !prof !108

bb.p:                                             ; preds = %bb.o
  switch i32 %3, label %bb.av [
    i32 1, label %bb.q
    i32 2, label %bb.ah
  ]

bb.q:                                             ; preds = %bb.p
  br i1 %.not.i.i53.i.a, label %.preheader.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i32 %i.amh, ptr %i.als, align 8, !tbaa !84
  %i.amn = icmp eq i32 %i.amh, 0
  br i1 %i.amn, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage123json_structural_indexer6finishERNS0_25dom_parser_implementationEmmNS_11stage1_modeE.exit.i, label %..preheader.i_crit_edge, !prof !108

..preheader.i_crit_edge:                          ; preds = %bb.r
  %.pre = add i32 %i.amf, -2
  br label %.preheader.i

.preheader.i:                                     ; preds = %..preheader.i_crit_edge, %bb.q
  %.035.i1703.i.pre-phi = phi i32 [ %.pre, %..preheader.i_crit_edge ], [ %i.amh, %bb.q ] ; 2 uses
  %i.amo = phi i32 [ %i.amh, %..preheader.i_crit_edge ], [ %i.amf, %bb.q ] ; 3 uses
  %.not.i2781704.i = icmp eq i32 %.035.i1703.i.pre-phi, 0
  %.pre1739.i = load ptr, ptr %i.b, align 8, !tbaa !151 ; 3 uses
  br i1 %.not.i2781704.i, label %._crit_edge1710.i, label %.lr.ph1709.i

.lr.ph1709.i:                                     ; preds = %.preheader.i
  %i.amp = zext i32 %.035.i1703.i.pre-phi to i64
  br label %bb.s

bb.s:                                             ; preds = %bb.z, %.lr.ph1709.i
  %indvars.iv1734.i = phi i64 [ %i.amp, %.lr.ph1709.i ], [ %indvars.iv.next1735.i, %bb.z ] ; 4 uses
  %.035.in.i1707.i = phi i32 [ %i.amo, %.lr.ph1709.i ], [ %i.ank, %bb.z ]
  %.036.i1706.i = phi i32 [ 0, %.lr.ph1709.i ], [ %.238.i.i, %bb.z ] ; 7 uses
  %.039.i1705.i = phi i32 [ 0, %.lr.ph1709.i ], [ %.241.i.i, %bb.z ] ; 7 uses
  %i.amq = getelementptr inbounds nuw [4 x i8], ptr %i.alm, i64 %indvars.iv1734.i
  %i.amr = load i32, ptr %i.amq, align 4, !tbaa !37
  %i.ams = zext i32 %i.amr to i64
  %i.amt = getelementptr inbounds nuw i8, ptr %.pre1739.i, i64 %i.ams
  %i.amu = load i8, ptr %i.amt, align 1, !tbaa !36
  switch i8 %i.amu, label %bb.x [
    i8 58, label %bb.z
    i8 44, label %bb.z
    i8 125, label %bb.t
    i8 93, label %bb.u
    i8 123, label %bb.v
    i8 91, label %bb.w
  ]

bb.t:                                             ; preds = %bb.s
  %i.amv = add nsw i32 %.036.i1706.i, -1
  br label %bb.z

bb.u:                                             ; preds = %bb.s
  %i.amw = add nsw i32 %.039.i1705.i, -1
  br label %bb.z

bb.v:                                             ; preds = %bb.s
  %i.amx = add nsw i32 %.036.i1706.i, 1
  br label %bb.x

bb.w:                                             ; preds = %bb.s
  %i.amy = add nsw i32 %.039.i1705.i, 1
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.s
  %.140.i.i = phi i32 [ %.039.i1705.i, %bb.s ], [ %.039.i1705.i, %bb.v ], [ %i.amy, %bb.w ] ; 5 uses
  %.137.i.i = phi i32 [ %.036.i1706.i, %bb.s ], [ %i.amx, %bb.v ], [ %.036.i1706.i, %bb.w ] ; 5 uses
  %i.amz = add i32 %.035.in.i1707.i, -2
  %i.ana = zext i32 %i.amz to i64
  %i.anb = getelementptr inbounds nuw [4 x i8], ptr %i.alm, i64 %i.ana
  %i.anc = load i32, ptr %i.anb, align 4, !tbaa !37
  %i.and = zext i32 %i.anc to i64
  %i.ane = getelementptr inbounds nuw i8, ptr %.pre1739.i, i64 %i.and
  %i.anf = load i8, ptr %i.ane, align 1, !tbaa !36
  switch i8 %i.anf, label %bb.y [
    i8 123, label %bb.z
    i8 91, label %bb.z
    i8 58, label %bb.z
    i8 44, label %bb.z
  ]

bb.y:                                             ; preds = %bb.x
  %i.ang = trunc nuw i64 %indvars.iv1734.i to i32
  %i.anh = icmp ne i32 %.140.i.i, 0
  %i.ani = icmp ne i32 %.137.i.i, 0
  %or.cond.i.i = select i1 %i.anh, i1 true, i1 %i.ani
  %spec.select1655.i = select i1 %or.cond.i.i, i32 %i.ang, i32 %i.amo
  br label %_ZN8simdjson8westmere12_GLOBAL__N_16stage124find_next_document_indexERNS0_25dom_parser_implementationE.exit.thread1628.i

bb.z:                                             ; preds = %bb.x, %bb.x, %bb.x, %bb.x, %bb.u, %bb.t, %bb.s, %bb.s
  %.241.i.i = phi i32 [ %.039.i1705.i, %bb.s ], [ %i.amw, %bb.u ], [ %.039.i1705.i, %bb.t ], [ %.039.i1705.i, %bb.s ], [ %.140.i.i, %bb.x ], [ %.140.i.i, %bb.x ], [ %.140.i.i, %bb.x ], [ %.140.i.i, %bb.x ] ; 2 uses
  %.238.i.i = phi i32 [ %.036.i1706.i, %bb.s ], [ %.036.i1706.i, %bb.u ], [ %i.amv, %bb.t ], [ %.036.i1706.i, %bb.s ], [ %.137.i.i, %bb.x ], [ %.137.i.i, %bb.x ], [ %.137.i.i, %bb.x ], [ %.137.i.i, %bb.x ] ; 2 uses
  %indvars.iv.next1735.i = add nsw i64 %indvars.iv1734.i, -1 ; 2 uses
  %i.anj = and i64 %indvars.iv.next1735.i, 4294967295
  %.not.i278.i = icmp eq i64 %i.anj, 0
  %i.ank = trunc nuw i64 %indvars.iv1734.i to i32
  br i1 %.not.i278.i, label %._crit_edge1710.i, label %bb.s, !llvm.loop !209

._crit_edge1710.i:                                ; preds = %bb.z, %.preheader.i
  %.039.i.lcssa.i = phi i32 [ 0, %.preheader.i ], [ %.241.i.i, %bb.z ] ; 5 uses
  %.036.i.lcssa.i = phi i32 [ 0, %.preheader.i ], [ %.238.i.i, %bb.z ] ; 5 uses
  %i.anl = load i32, ptr %i.alm, align 4, !tbaa !37 ; 2 uses
  %i.anm = zext i32 %i.anl to i64
  %i.ann = getelementptr inbounds nuw i8, ptr %.pre1739.i, i64 %i.anm
  %i.ano = load i8, ptr %i.ann, align 1, !tbaa !36
  switch i8 %i.ano, label %bb.ae [
    i8 125, label %bb.aa
    i8 93, label %bb.ab
    i8 123, label %bb.ac
    i8 91, label %bb.ad
  ]

bb.aa:                                            ; preds = %._crit_edge1710.i
  %i.anp = add nsw i32 %.036.i.lcssa.i, -1
  br label %bb.ae

bb.ab:                                            ; preds = %._crit_edge1710.i
  %i.anq = add nsw i32 %.039.i.lcssa.i, -1
  br label %bb.ae

bb.ac:                                            ; preds = %._crit_edge1710.i
  %i.anr = add nsw i32 %.036.i.lcssa.i, 1
  br label %bb.ae

bb.ad:                                            ; preds = %._crit_edge1710.i
  %i.ans = add nsw i32 %.039.i.lcssa.i, 1
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.ab, %bb.aa, %._crit_edge1710.i
  %.443.i.i = phi i32 [ %.039.i.lcssa.i, %._crit_edge1710.i ], [ %.039.i.lcssa.i, %bb.aa ], [ %i.anq, %bb.ab ], [ %.039.i.lcssa.i, %bb.ac ], [ %i.ans, %bb.ad ]
  %.4.i.i = phi i32 [ %.036.i.lcssa.i, %._crit_edge1710.i ], [ %i.anp, %bb.aa ], [ %.036.i.lcssa.i, %bb.ab ], [ %i.anr, %bb.ac ], [ %.036.i.lcssa.i, %bb.ad ]
  %i.ant = icmp eq i32 %.443.i.i, 0
  %i.anu = icmp eq i32 %.4.i.i, 0
  %or.cond4.i.not.i = select i1 %i.ant, i1 %i.anu, i1 false
  br i1 %or.cond4.i.not.i, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage124find_next_document_indexERNS0_25dom_parser_implementationE.exit.thread1628.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.anv = icmp eq i32 %i.anl, 0
  br i1 %i.anv, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage123json_structural_indexer6finishERNS0_25dom_parser_implementationEmmNS_11stage1_modeE.exit.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  store i32 0, ptr %i.als, align 8, !tbaa !84
  br label %_ZN8simdjson8westmere12_GLOBAL__N_16stage123json_structural_indexer6finishERNS0_25dom_parser_implementationEmmNS_11stage1_modeE.exit.i

_ZN8simdjson8westmere12_GLOBAL__N_16stage124find_next_document_indexERNS0_25dom_parser_implementationE.exit.thread1628.i: ; preds = %bb.ae, %bb.y
  %.5.i1626.i = phi i32 [ %i.amo, %bb.ae ], [ %spec.select1655.i, %bb.y ]
  store i32 %.5.i1626.i, ptr %i.als, align 8, !tbaa !84
  br label %bb.av

bb.ah:                                            ; preds = %bb.p
  br i1 %.not.i.i53.i.a, label %.preheader1656.i, label %thread-pre-split1634.i

thread-pre-split1634.i:                           ; preds = %bb.ah
  store i32 %i.amh, ptr %i.als, align 8, !tbaa !84
  %i.anw = icmp eq i32 %i.amh, 0
  br i1 %i.anw, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage124find_next_document_indexERNS0_25dom_parser_implementationE.exit300.i, label %thread-pre-split1634.i..preheader1656.i_crit_edge

thread-pre-split1634.i..preheader1656.i_crit_edge: ; preds = %thread-pre-split1634.i
  %.pre17 = add i32 %i.amf, -2
  br label %.preheader1656.i

.preheader1656.i:                                 ; preds = %thread-pre-split1634.i..preheader1656.i_crit_edge, %bb.ah
  %.035.i2841693.i.pre-phi = phi i32 [ %.pre17, %thread-pre-split1634.i..preheader1656.i_crit_edge ], [ %i.amh, %bb.ah ] ; 2 uses
  %i.anx = phi i32 [ %i.amh, %thread-pre-split1634.i..preheader1656.i_crit_edge ], [ %i.amf, %bb.ah ] ; 3 uses
  %.not.i2851694.i = icmp eq i32 %.035.i2841693.i.pre-phi, 0
  %.pre.i = load ptr, ptr %i.b, align 8, !tbaa !151 ; 3 uses
  br i1 %.not.i2851694.i, label %._crit_edge1700.i, label %.lr.ph1699.i

.lr.ph1699.i:                                     ; preds = %.preheader1656.i
  %i.any = zext i32 %.035.i2841693.i.pre-phi to i64
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ap, %.lr.ph1699.i
  %indvars.iv1731.i = phi i64 [ %i.any, %.lr.ph1699.i ], [ %indvars.iv.next1732.i, %bb.ap ] ; 4 uses
  %.035.in.i2831697.i = phi i32 [ %i.anx, %.lr.ph1699.i ], [ %i.aot, %bb.ap ]
  %.036.i2821696.i = phi i32 [ 0, %.lr.ph1699.i ], [ %.238.i290.i, %bb.ap ] ; 7 uses
  %.039.i2811695.i = phi i32 [ 0, %.lr.ph1699.i ], [ %.241.i289.i, %bb.ap ] ; 7 uses
  %i.anz = getelementptr inbounds nuw [4 x i8], ptr %i.alm, i64 %indvars.iv1731.i
  %i.aoa = load i32, ptr %i.anz, align 4, !tbaa !37
  %i.aob = zext i32 %i.aoa to i64
  %i.aoc = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %i.aob
  %i.aod = load i8, ptr %i.aoc, align 1, !tbaa !36
  switch i8 %i.aod, label %bb.an [
    i8 58, label %bb.ap
    i8 44, label %bb.ap
    i8 125, label %bb.aj
    i8 93, label %bb.ak
    i8 123, label %bb.al
    i8 91, label %bb.am
  ]

bb.aj:                                            ; preds = %bb.ai
  %i.aoe = add nsw i32 %.036.i2821696.i, -1
  br label %bb.ap

bb.ak:                                            ; preds = %bb.ai
  %i.aof = add nsw i32 %.039.i2811695.i, -1
  br label %bb.ap

bb.al:                                            ; preds = %bb.ai
  %i.aog = add nsw i32 %.036.i2821696.i, 1
  br label %bb.an

bb.am:                                            ; preds = %bb.ai
  %i.aoh = add nsw i32 %.039.i2811695.i, 1
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al, %bb.ai
  %.140.i286.i = phi i32 [ %.039.i2811695.i, %bb.ai ], [ %.039.i2811695.i, %bb.al ], [ %i.aoh, %bb.am ] ; 5 uses
  %.137.i287.i = phi i32 [ %.036.i2821696.i, %bb.ai ], [ %i.aog, %bb.al ], [ %.036.i2821696.i, %bb.am ] ; 5 uses
  %i.aoi = add i32 %.035.in.i2831697.i, -2
  %i.aoj = zext i32 %i.aoi to i64
  %i.aok = getelementptr inbounds nuw [4 x i8], ptr %i.alm, i64 %i.aoj
  %i.aol = load i32, ptr %i.aok, align 4, !tbaa !37
  %i.aom = zext i32 %i.aol to i64
  %i.aon = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %i.aom
  %i.aoo = load i8, ptr %i.aon, align 1, !tbaa !36
  switch i8 %i.aoo, label %bb.ao [
    i8 123, label %bb.ap
    i8 91, label %bb.ap
    i8 58, label %bb.ap
    i8 44, label %bb.ap
  ]

bb.ao:                                            ; preds = %bb.an
  %i.aop = trunc nuw i64 %indvars.iv1731.i to i32
  %i.aoq = icmp ne i32 %.140.i286.i, 0
  %i.aor = icmp ne i32 %.137.i287.i, 0
  %or.cond.i299.i = select i1 %i.aoq, i1 true, i1 %i.aor
  %spec.select.i = select i1 %or.cond.i299.i, i32 %i.aop, i32 %i.anx
  br label %_ZN8simdjson8westmere12_GLOBAL__N_16stage124find_next_document_indexERNS0_25dom_parser_implementationE.exit300.i

bb.ap:                                            ; preds = %bb.an, %bb.an, %bb.an, %bb.an, %bb.ak, %bb.aj, %bb.ai, %bb.ai
  %.241.i289.i = phi i32 [ %.039.i2811695.i, %bb.ai ], [ %i.aof, %bb.ak ], [ %.039.i2811695.i, %bb.aj ], [ %.039.i2811695.i, %bb.ai ], [ %.140.i286.i, %bb.an ], [ %.140.i286.i, %bb.an ], [ %.140.i286.i, %bb.an ], [ %.140.i286.i, %bb.an ] ; 2 uses
  %.238.i290.i = phi i32 [ %.036.i2821696.i, %bb.ai ], [ %.036.i2821696.i, %bb.ak ], [ %i.aoe, %bb.aj ], [ %.036.i2821696.i, %bb.ai ], [ %.137.i287.i, %bb.an ], [ %.137.i287.i, %bb.an ], [ %.137.i287.i, %bb.an ], [ %.137.i287.i, %bb.an ] ; 2 uses
  %indvars.iv.next1732.i = add nsw i64 %indvars.iv1731.i, -1 ; 2 uses
  %i.aos = and i64 %indvars.iv.next1732.i, 4294967295
  %.not.i285.i = icmp eq i64 %i.aos, 0
  %i.aot = trunc nuw i64 %indvars.iv1731.i to i32
  br i1 %.not.i285.i, label %._crit_edge1700.i, label %bb.ai, !llvm.loop !209

._crit_edge1700.i:                                ; preds = %bb.ap, %.preheader1656.i
  %.039.i281.lcssa.i = phi i32 [ 0, %.preheader1656.i ], [ %.241.i289.i, %bb.ap ] ; 5 uses
  %.036.i282.lcssa.i = phi i32 [ 0, %.preheader1656.i ], [ %.238.i290.i, %bb.ap ] ; 5 uses
  %i.aou = load i32, ptr %i.alm, align 4, !tbaa !37
  %i.aov = zext i32 %i.aou to i64
  %i.aow = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %i.aov
  %i.aox = load i8, ptr %i.aow, align 1, !tbaa !36
  switch i8 %i.aox, label %bb.au [
    i8 125, label %bb.aq
    i8 93, label %bb.ar
    i8 123, label %bb.as
    i8 91, label %bb.at
  ]

bb.aq:                                            ; preds = %._crit_edge1700.i
  %i.aoy = add nsw i32 %.036.i282.lcssa.i, -1
  br label %bb.au

bb.ar:                                            ; preds = %._crit_edge1700.i
  %i.aoz = add nsw i32 %.039.i281.lcssa.i, -1
  br label %bb.au

bb.as:                                            ; preds = %._crit_edge1700.i
  %i.apa = add nsw i32 %.036.i282.lcssa.i, 1
  br label %bb.au

bb.at:                                            ; preds = %._crit_edge1700.i
  %i.apb = add nsw i32 %.039.i281.lcssa.i, 1
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as, %bb.ar, %bb.aq, %._crit_edge1700.i
  %.443.i296.i = phi i32 [ %.039.i281.lcssa.i, %._crit_edge1700.i ], [ %.039.i281.lcssa.i, %bb.aq ], [ %i.aoz, %bb.ar ], [ %.039.i281.lcssa.i, %bb.as ], [ %i.apb, %bb.at ]
  %.4.i297.i = phi i32 [ %.036.i282.lcssa.i, %._crit_edge1700.i ], [ %i.aoy, %bb.aq ], [ %.036.i282.lcssa.i, %bb.ar ], [ %i.apa, %bb.as ], [ %.036.i282.lcssa.i, %bb.at ]
  %i.apc = icmp ne i32 %.443.i296.i, 0
  %i.apd = icmp ne i32 %.4.i297.i, 0
  %or.cond4.i298.i = select i1 %i.apc, i1 true, i1 %i.apd
  %spec.select1649.i = select i1 %or.cond4.i298.i, i32 0, i32 %i.anx
  br label %_ZN8simdjson8westmere12_GLOBAL__N_16stage124find_next_document_indexERNS0_25dom_parser_implementationE.exit300.i

_ZN8simdjson8westmere12_GLOBAL__N_16stage124find_next_document_indexERNS0_25dom_parser_implementationE.exit300.i: ; preds = %bb.au, %bb.ao, %thread-pre-split1634.i
  %.5.i295.i = phi i32 [ 0, %thread-pre-split1634.i ], [ %spec.select.i, %bb.ao ], [ %spec.select1649.i, %bb.au ] ; 3 uses
  store i32 %.5.i295.i, ptr %i.als, align 8, !tbaa !84
  %i.ape = zext i32 %.5.i295.i to i64
  %i.apf = getelementptr inbounds nuw [4 x i8], ptr %i.alm, i64 %i.ape
  %i.apg = load i32, ptr %i.apf, align 4, !tbaa !37
  %i.aph = add i32 %.5.i295.i, 1
  %i.api = zext i32 %i.aph to i64
  %i.apj = getelementptr inbounds nuw [4 x i8], ptr %i.alm, i64 %i.api
  store i32 %i.apg, ptr %i.apj, align 4, !tbaa !37
  %i.apk = load i32, ptr %i.als, align 8, !tbaa !84
  %i.apl = zext i32 %i.apk to i64
  %i.apm = getelementptr inbounds nuw [4 x i8], ptr %i.alm, i64 %i.apl
  store i32 %i.alt, ptr %i.apm, align 4, !tbaa !37
  %i.apn = load i32, ptr %i.als, align 8, !tbaa !84
  %i.apo = icmp eq i32 %i.apn, 0
  br i1 %i.apo, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage123json_structural_indexer6finishERNS0_25dom_parser_implementationEmmNS_11stage1_modeE.exit.i, label %bb.av, !prof !108

bb.av:                                            ; preds = %_ZN8simdjson8westmere12_GLOBAL__N_16stage124find_next_document_indexERNS0_25dom_parser_implementationE.exit300.i, %_ZN8simdjson8westmere12_GLOBAL__N_16stage124find_next_document_indexERNS0_25dom_parser_implementationE.exit.thread1628.i, %bb.p
  %i.app = tail call noundef i32 @llvm.x86.sse41.ptestz(<2 x i64> %.sroa.23326.2.i, <2 x i64> %.sroa.23326.2.i)
  %.not1654.i = icmp eq i32 %i.app, 0
  %i.apq = select i1 %.not1654.i, i32 11, i32 0
  br label %_ZN8simdjson8westmere12_GLOBAL__N_16stage123json_structural_indexer6finishERNS0_25dom_parser_implementationEmmNS_11stage1_modeE.exit.i

_ZN8simdjson8westmere12_GLOBAL__N_16stage123json_structural_indexer6finishERNS0_25dom_parser_implementationEmmNS_11stage1_modeE.exit.i: ; preds = %bb.av, %_ZN8simdjson8westmere12_GLOBAL__N_16stage124find_next_document_indexERNS0_25dom_parser_implementationE.exit300.i, %bb.ag, %bb.af, %bb.r, %bb.o, %bb.n, %.thread.i, %.noexc.i, %._crit_edge.i
  %.0.i = phi i32 [ 13, %bb.ag ], [ 13, %_ZN8simdjson8westmere12_GLOBAL__N_16stage124find_next_document_indexERNS0_25dom_parser_implementationE.exit300.i ], [ 1, %bb.r ], [ 15, %.noexc.i ], [ 14, %.thread.i ], [ 13, %bb.n ], [ 24, %bb.o ], [ %i.apq, %bb.av ], [ 24, %._crit_edge.i ], [ 1, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_ZN8simdjson8westmere12_GLOBAL__N_16stage123json_structural_indexer5indexILm64EEENS_10error_codeEPKhmRNS0_25dom_parser_implementationENS_11stage1_modeE.exit

_ZN8simdjson8westmere12_GLOBAL__N_16stage123json_structural_indexer5indexILm64EEENS_10error_codeEPKhmRNS0_25dom_parser_implementationENS_11stage1_modeE.exit: ; preds = %bb.a, %bb.b, %bb.g, %bb.h, %_ZN8simdjson8westmere12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.i, %_ZN8simdjson8westmere12_GLOBAL__N_16stage123json_structural_indexer6finishERNS0_25dom_parser_implementationEmmNS_11stage1_modeE.exit.i
  %.1.i = phi i32 [ %.0.i, %_ZN8simdjson8westmere12_GLOBAL__N_16stage123json_structural_indexer6finishERNS0_25dom_parser_implementationEmmNS_11stage1_modeE.exit.i ], [ 1, %bb.a ], [ 13, %bb.b ], [ 11, %_ZN8simdjson8westmere12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.i ], [ 11, %bb.h ], [ 11, %bb.g ]
  ret i32 %.1.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local noundef zeroext i1 @_ZNK8simdjson8westmere14implementation13validate_utf8EPKcm(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) unnamed_addr #21 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 8 uses
  %spec.select.i.i.i = tail call i64 @llvm.usub.sat.i64(i64 %2, i64 64)
  %.not.i.i = icmp ult i64 %2, 65
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZN8simdjson8westmere12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit3.i.i
  %.sroa.11.0684.i.i = phi i64 [ %i.da, %_ZN8simdjson8westmere12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit3.i.i ], [ 0, %bb.a ] ; 2 uses
  %.sroa.073.0683.i.i = phi <2 x i64> [ %.sroa.073.2.i.i, %_ZN8simdjson8westmere12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit3.i.i ], [ zeroinitializer, %bb.a ]
  %.sroa.27.0682.i.i = phi <2 x i64> [ %.sroa.27.1.i.i, %_ZN8simdjson8westmere12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit3.i.i ], [ zeroinitializer, %bb.a ] ; 2 uses
  %.sroa.32.0681.i.i = phi <2 x i64> [ %.sroa.32.2.i.i, %_ZN8simdjson8westmere12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit3.i.i ], [ zeroinitializer, %bb.a ] ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.11.0684.i.i ; 4 uses
  %i.c = load <2 x i64>, ptr %i.b, align 1, !tbaa !36 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.e = load <2 x i64>, ptr %i.d, align 1, !tbaa !36 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.g = load <2 x i64>, ptr %i.f, align 1, !tbaa !36 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.i = load <2 x i64>, ptr %i.h, align 1, !tbaa !36 ; 4 uses
  %i.j = or <2 x i64> %i.e, %i.c
  %i.k = or <2 x i64> %i.j, %i.g
  %i.l = or <2 x i64> %i.k, %i.i
  %i.m = bitcast <2 x i64> %i.l to <16 x i8>
  %i.n = icmp slt <16 x i8> %i.m, zeroinitializer
  %i.o = bitcast <16 x i1> %i.n to i16
  %i.p = icmp eq i16 %i.o, 0
  br i1 %i.p, label %_ZN8simdjson8westmere12_GLOBAL__N_115utf8_validation12utf8_checker16check_next_inputERKNS1_4simd8simd8x64IhEE.exit3.i.i, label %bb.b, !prof !110

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.q = bitcast <2 x i64> %i.c to <16 x i8>      ; 6 uses
  %i.r = bitcast <2 x i64> %.sroa.27.0682.i.i to <16 x i8> ; 3 uses
  %i.s = shufflevector <16 x i8> %i.r, <16 x i8> %i.q, <16 x i32> <i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30> ; 2 uses
  %i.t = bitcast <16 x i8> %i.s to <8 x i16>
  %i.u = lshr <8 x i16> %i.t, splat (i16 4)
  %i.v = bitcast <8 x i16> %i.u to <16 x i8>
end_hunk_4
begin_hunk_5_@_ZNK8simdjson8westmere25dom_parser_implementation19parse_wobbly_stringEPKhPh:bb.a
bb.g:                                             ; preds = %bb.d
  %i.co = icmp ult i32 %i.ax, 128
  br i1 %i.co, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.cp = trunc nuw nsw i32 %i.ax to i8
  store i8 %i.cp, ptr %i.x, align 1, !tbaa !36
  br label %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing31handle_unicode_codepoint_wobblyEPPKhPPh.exit.thread

bb.i:                                             ; preds = %bb.g
  %i.cq = icmp ult i32 %i.ax, 2048
  br i1 %i.cq, label %bb.j, label %.thread87

bb.j:                                             ; preds = %bb.i
  %i.cr = lshr i32 %i.ax, 6
  %i.cs = trunc nuw nsw i32 %i.cr to i8
  %i.ct = or disjoint i8 %i.cs, -64
  store i8 %i.ct, ptr %i.x, align 1, !tbaa !36
  %i.cu = trunc i32 %i.ax to i8
  %i.cv = and i8 %i.cu, 63
  %i.cw = or disjoint i8 %i.cv, -128
  %i.cx = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  store i8 %i.cw, ptr %i.cx, align 1, !tbaa !36
  br label %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing31handle_unicode_codepoint_wobblyEPPKhPPh.exit.thread

.thread87:                                        ; preds = %bb.i
  %i.cy = icmp ult i32 %i.ax, 65536
  br i1 %i.cy, label %.thread87.thread, label %bb.k

.thread87.thread:                                 ; preds = %bb.e, %bb.f, %.thread87
  %i.cz = lshr i32 %i.ax, 12
  %i.da = trunc nuw nsw i32 %i.cz to i8
  %i.db = or disjoint i8 %i.da, -32
  store i8 %i.db, ptr %i.x, align 1, !tbaa !36
  %i.dc = lshr i32 %i.ax, 6
  %i.dd = trunc i32 %i.dc to i8
  %i.de = and i8 %i.dd, 63
  %i.df = or disjoint i8 %i.de, -128
  %i.dg = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  store i8 %i.df, ptr %i.dg, align 1, !tbaa !36
  %i.dh = trunc i32 %i.ax to i8
  %i.di = and i8 %i.dh, 63
  %i.dj = or disjoint i8 %i.di, -128
  %i.dk = getelementptr inbounds nuw i8, ptr %i.x, i64 2
  store i8 %i.dj, ptr %i.dk, align 1, !tbaa !36
  br label %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing31handle_unicode_codepoint_wobblyEPPKhPPh.exit.thread

bb.k:                                             ; preds = %.thread87
  %i.dl = icmp ult i32 %i.ax, 1114112
  br i1 %i.dl, label %bb.l, label %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing19parse_wobbly_stringEPKhPh.exit

bb.l:                                             ; preds = %.thread126, %bb.k
  %.58591124130 = phi ptr [ %i.cn, %.thread126 ], [ %i.ay, %bb.k ]
  %.2.i288690125129 = phi i32 [ %i.cm, %.thread126 ], [ %i.ax, %bb.k ] ; 4 uses
  %i.dm = lshr i32 %.2.i288690125129, 18
  %i.dn = trunc nsw i32 %i.dm to i8
  %i.do = lshr i32 %.2.i288690125129, 12
  %i.dp = trunc i32 %i.do to i8
  %i.dq = lshr i32 %.2.i288690125129, 6
  %i.dr = trunc i32 %i.dq to i8
  %i.ds = trunc i32 %.2.i288690125129 to i8
  %i.dt = insertelement <4 x i8> poison, i8 %i.dn, i64 0
  %i.du = insertelement <4 x i8> %i.dt, i8 %i.dp, i64 1
  %i.dv = insertelement <4 x i8> %i.du, i8 %i.dr, i64 2
  %i.dw = insertelement <4 x i8> %i.dv, i8 %i.ds, i64 3
  %i.dx = and <4 x i8> %i.dw, <i8 -1, i8 63, i8 63, i8 63>
  %i.dy = or disjoint <4 x i8> %i.dx, <i8 -16, i8 -128, i8 -128, i8 -128>
  store <4 x i8> %i.dy, ptr %i.x, align 1, !tbaa !36
  br label %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing31handle_unicode_codepoint_wobblyEPPKhPPh.exit.thread

_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing31handle_unicode_codepoint_wobblyEPPKhPPh.exit.thread: ; preds = %bb.h, %bb.j, %.thread87.thread, %bb.l
  %.584.ph = phi ptr [ %.58591124130, %bb.l ], [ %i.ay, %.thread87.thread ], [ %i.ay, %bb.j ], [ %i.ay, %bb.h ]
  %.0.i.i.ph = phi i64 [ 4, %bb.l ], [ 3, %.thread87.thread ], [ 2, %bb.j ], [ 1, %bb.h ]
  %i.dz = getelementptr inbounds nuw i8, ptr %i.x, i64 %.0.i.i.ph
  br label %.noexc.backedge

bb.m:                                             ; preds = %bb.c
  %i.ea = zext i8 %i.u to i64
  %i.eb = getelementptr inbounds nuw i8, ptr @_ZN8simdjson8fallback12_GLOBAL__N_113stringparsing10escape_mapE, i64 %i.ea
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !36  ; 2 uses
  %.not.i = icmp eq i8 %i.ec, 0
  br i1 %.not.i, label %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing19parse_wobbly_stringEPKhPh.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ed = getelementptr inbounds nuw i8, ptr %.0, i64 %i.q
  store i8 %i.ec, ptr %i.ed, align 1, !tbaa !36
  %i.ee = getelementptr inbounds nuw i8, ptr %.077, i64 %i.q
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 2
  %i.eg = getelementptr inbounds nuw i8, ptr %.0, i64 %i.s
  br label %.noexc.backedge

.noexc.backedge:                                  ; preds = %bb.n, %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing31handle_unicode_codepoint_wobblyEPPKhPPh.exit.thread, %bb.o
  %.077.be = phi ptr [ %.584.ph, %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing31handle_unicode_codepoint_wobblyEPPKhPPh.exit.thread ], [ %i.eh, %bb.o ], [ %i.ef, %bb.n ]
  %.0.be = phi ptr [ %i.dz, %_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing31handle_unicode_codepoint_wobblyEPPKhPPh.exit.thread ], [ %i.ei, %bb.o ], [ %i.eg, %bb.n ]
  br label %.noexc

bb.o:                                             ; preds = %bb.b
  %i.eh = getelementptr inbounds nuw i8, ptr %.077, i64 32
  %i.ei = getelementptr inbounds nuw i8, ptr %.0, i64 32
  br label %.noexc.backedge

_ZN8simdjson8westmere12_GLOBAL__N_113stringparsing19parse_wobbly_stringEPKhPh.exit: ; preds = %bb.m, %bb.k, %.noexc2
  %.5.i.ph = phi ptr [ %i.o, %.noexc2 ], [ null, %bb.k ], [ null, %bb.m ]
  ret ptr %.5.i.ph
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef range(i32 0, 25) i32 @_ZN8simdjson8westmere25dom_parser_implementation5parseEPKhmRNS_3dom8documentE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(96) initializes((72, 88)) %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) unnamed_addr #20 align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZN8simdjson8westmere25dom_parser_implementation6stage1EPKhmNS_11stage1_modeE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, i64 noundef %2, i32 noundef 0) #41 ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef i32 @_ZN8simdjson8westmere25dom_parser_implementation6stage2ERNS_3dom8documentE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(24) %3) #41
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.b, %bb.b ], [ %i.a, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_ZNK8simdjson8fallback14implementation32create_dom_parser_implementationEmmRSt10unique_ptrINS_8internal25dom_parser_implementationESt14default_deleteIS4_EE(ptr nofree nonnull readnone align 8 captures(none) %0, i64 noundef %1, i64 noundef %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %3) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef dereferenceable_or_null(96) ptr @_ZnwmRKSt9nothrow_t(i64 noundef 96, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #44 ; 9 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 0, ptr %i.c, align 8, !tbaa !84
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr null, ptr %i.d, align 8, !tbaa !85
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 0, ptr %i.e, align 8, !tbaa !86
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.f, i8 0, i64 17, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN8simdjson8fallback25dom_parser_implementationE, i64 16), ptr %i.a, align 8, !tbaa !53
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, i8 0, i64 40, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = load ptr, ptr %3, align 8, !tbaa !88     ; 3 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !88
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN8simdjson8internal25dom_parser_implementationESt14default_deleteIS2_EE5resetEPS2_.exit, label %_ZNKSt14default_deleteIN8simdjson8internal25dom_parser_implementationEEclEPS2_.exit.i.i

_ZNKSt14default_deleteIN8simdjson8internal25dom_parser_implementationEEclEPS2_.exit.i.i: ; preds = %bb.c
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !53
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(49) %i.h) #41, !inline_history !2
  %.pr = load ptr, ptr %3, align 8, !tbaa !88
  br label %_ZNSt10unique_ptrIN8simdjson8internal25dom_parser_implementationESt14default_deleteIS2_EE5resetEPS2_.exit

_ZNSt10unique_ptrIN8simdjson8internal25dom_parser_implementationESt14default_deleteIS2_EE5resetEPS2_.exit: ; preds = %bb.c, %_ZNKSt14default_deleteIN8simdjson8internal25dom_parser_implementationEEclEPS2_.exit.i.i
  %i.l = phi ptr [ %i.a, %bb.c ], [ %.pr, %_ZNKSt14default_deleteIN8simdjson8internal25dom_parser_implementationEEclEPS2_.exit.i.i ] ; 3 uses
  %.not17 = icmp eq ptr %i.l, null
  br i1 %.not17, label %bb.f, label %bb.d

bb.d:                                             ; preds = %_ZNSt10unique_ptrIN8simdjson8internal25dom_parser_implementationESt14default_deleteIS2_EE5resetEPS2_.exit
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !53
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call noundef i32 %i.o(ptr noundef nonnull align 8 dereferenceable(49) %i.l, i64 noundef %1) #41 ; 2 uses
  %.not.not = icmp eq i32 %i.p, 0
  br i1 %.not.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.q = load ptr, ptr %3, align 8, !tbaa !88     ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !53
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = tail call noundef i32 %i.t(ptr noundef nonnull align 8 dereferenceable(49) %i.q, i64 noundef %2) #41
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %_ZNSt10unique_ptrIN8simdjson8internal25dom_parser_implementationESt14default_deleteIS2_EE5resetEPS2_.exit
  %.2 = phi i32 [ 2, %_ZNSt10unique_ptrIN8simdjson8internal25dom_parser_implementationESt14default_deleteIS2_EE5resetEPS2_.exit ], [ %i.u, %bb.e ], [ %i.p, %bb.d ]
  ret i32 %.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef range(i32 0, 16) i32 @_ZN8simdjson8fallback25dom_parser_implementation6stage1EPKhmNS_11stage1_modeE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(96) initializes((72, 88)) %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) unnamed_addr #24 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.simdjson::fallback::(anonymous namespace)::stage1::structural_scanner", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %1, ptr %i.a, align 8, !tbaa !166
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %2, ptr %i.b, align 8, !tbaa !167
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(296) %4, ptr noundef nonnull align 8 dereferenceable(256) @constinit, i64 256, i1 false), !tbaa.struct !217
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !109  ; 12 uses
  %i.e = trunc i64 %2 to i32                      ; 18 uses
  %.not182 = icmp eq i32 %i.e, 0
  br i1 %.not182, label %._crit_edge140, label %.noexc.preheader.lr.ph

.noexc.preheader.lr.ph:                           ; preds = %bb.a
  %i.f = icmp ne i32 %3, 0                        ; 3 uses
  %i.g = and i64 %2, 4294967295                   ; 5 uses
  %i.h = add i32 %i.e, -1
  br label %.noexc.preheader

.noexc.preheader:                                 ; preds = %.noexc.preheader.lr.ph, %.critedge.i
  %i.i = phi i32 [ 0, %.noexc.preheader.lr.ph ], [ %i.eo, %.critedge.i ] ; 6 uses
  %.08.i139 = phi i8 [ 0, %.noexc.preheader.lr.ph ], [ %.1.i, %.critedge.i ] ; 6 uses
  %i.j = phi ptr [ %i.d, %.noexc.preheader.lr.ph ], [ %i.er, %.critedge.i ] ; 4 uses
  %i.k = phi i32 [ 0, %.noexc.preheader.lr.ph ], [ %i.es, %.critedge.i ] ; 2 uses
  %i.l = phi i32 [ 0, %.noexc.preheader.lr.ph ], [ %i.ep, %.critedge.i ] ; 7 uses
  %i.m = zext i32 %i.k to i64                     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1, !tbaa !36
  %i.p = zext i8 %i.o to i64
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !tbaa !36
  %i.s = and i8 %i.r, 1
  %.not97 = icmp eq i8 %i.s, 0
  br i1 %.not97, label %.noexc._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.noexc.preheader
  %indvars.iv.next237 = add nuw nsw i64 %i.m, 1   ; 3 uses
  %i.t = icmp samesign ult i64 %indvars.iv.next237, %i.g
  br i1 %i.t, label %.noexc.lr.ph, label %._crit_edge, !llvm.loop !211

.noexc.lr.ph:                                     ; preds = %.lr.ph.preheader
  br label %.noexc, !llvm.loop !211

.noexc:                                           ; preds = %.noexc.lr.ph, %.lr.ph
  %indvars.iv.next238 = phi i64 [ %indvars.iv.next237, %.noexc.lr.ph ], [ %indvars.iv.next, %.lr.ph ] ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next238
  %i.v = load i8, ptr %i.u, align 1, !tbaa !36
  %i.w = zext i8 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !tbaa !36
  %i.z = and i8 %i.y, 1
  %.not = icmp eq i8 %i.z, 0
  br i1 %.not, label %.noexc._crit_edge.loopexit, label %.lr.ph, !llvm.loop !211

.lr.ph:                                           ; preds = %.noexc
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.next238, 1 ; 3 uses
  %i.aa = icmp samesign ult i64 %indvars.iv.next, %i.g
  br i1 %i.aa, label %.noexc, label %.lr.ph.._crit_edge_crit_edge, !llvm.loop !211

.lr.ph.._crit_edge_crit_edge:                     ; preds = %.lr.ph
  br label %._crit_edge, !llvm.loop !211

._crit_edge:                                      ; preds = %.lr.ph.._crit_edge_crit_edge, %.lr.ph.preheader
  %indvars.iv.next.lcssa = phi i64 [ %indvars.iv.next, %.lr.ph.._crit_edge_crit_edge ], [ %indvars.iv.next237, %.lr.ph.preheader ]
  %i.ab = trunc nuw i64 %indvars.iv.next.lcssa to i32
  br label %.noexc._crit_edge, !llvm.loop !211

.noexc._crit_edge.loopexit:                       ; preds = %.noexc
  %i.ac = trunc nuw i64 %indvars.iv.next238 to i32
  br label %.noexc._crit_edge

.noexc._crit_edge:                                ; preds = %.noexc._crit_edge.loopexit, %._crit_edge, %.noexc.preheader
  %i.ad = phi i32 [ %i.ab, %._crit_edge ], [ %i.k, %.noexc.preheader ], [ %i.ac, %.noexc._crit_edge.loopexit ] ; 8 uses
  %.not.i = icmp ult i32 %i.ad, %i.e
  br i1 %.not.i, label %bb.b, label %._crit_edge140.loopexit

bb.b:                                             ; preds = %.noexc._crit_edge
  %i.ae = zext i32 %i.ad to i64                   ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !36  ; 2 uses
  %i.ah = icmp eq i8 %i.ag, 34
  br i1 %i.ah, label %bb.c, label %bb.af

bb.c:                                             ; preds = %bb.b
  store i32 %i.ad, ptr %i.j, align 4, !tbaa !37
  %i.ai = add nuw i32 %i.ad, 1                    ; 3 uses
  %i.aj = icmp ult i32 %i.ai, %i.e
  br i1 %i.aj, label %.preheader87, label %.noexc3

.preheader87:                                     ; preds = %bb.c, %.noexc7
  %i.ak = phi i32 [ %i.do, %.noexc7 ], [ %i.l, %bb.c ] ; 12 uses
  %i.al = phi i32 [ %i.dp, %.noexc7 ], [ %i.ai, %bb.c ] ; 2 uses
  %i.am = phi i32 [ %i.dn, %.noexc7 ], [ %i.i, %bb.c ] ; 12 uses
  %i.an = zext i32 %i.al to i64                   ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !36
  %i.aq = zext i8 %i.ap to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !36
  %i.at = and i8 %i.as, 12
  %.not82111 = icmp eq i8 %i.at, 0
  br i1 %.not82111, label %.lr.ph112.preheader, label %._crit_edge116

.lr.ph112.preheader:                              ; preds = %.preheader87
  %indvars.iv.next194244 = add nuw nsw i64 %i.an, 1 ; 3 uses
  %i.au = icmp samesign ult i64 %indvars.iv.next194244, %i.g
  br i1 %i.au, label %.lr.ph246, label %._crit_edge113, !llvm.loop !212

.lr.ph246:                                        ; preds = %.lr.ph112.preheader
  br label %bb.d, !llvm.loop !212

bb.d:                                             ; preds = %.lr.ph246, %.lr.ph112
  %indvars.iv.next194245 = phi i64 [ %indvars.iv.next194244, %.lr.ph246 ], [ %indvars.iv.next194, %.lr.ph112 ] ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next194245
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !36
  %i.ax = zext i8 %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !36
  %i.ba = and i8 %i.az, 12
  %.not82 = icmp eq i8 %i.ba, 0
  br i1 %.not82, label %.lr.ph112, label %._crit_edge116.loopexit, !llvm.loop !212

.lr.ph112:                                        ; preds = %bb.d
  %indvars.iv.next194 = add nuw nsw i64 %indvars.iv.next194245, 1 ; 3 uses
  %i.bb = icmp samesign ult i64 %indvars.iv.next194, %i.g
  br i1 %i.bb, label %bb.d, label %.lr.ph112.._crit_edge113_crit_edge, !llvm.loop !212

.lr.ph112.._crit_edge113_crit_edge:               ; preds = %.lr.ph112
  br label %._crit_edge113, !llvm.loop !212

._crit_edge113:                                   ; preds = %.lr.ph112.._crit_edge113_crit_edge, %.lr.ph112.preheader
  %indvars.iv.next194.lcssa = phi i64 [ %indvars.iv.next194, %.lr.ph112.._crit_edge113_crit_edge ], [ %indvars.iv.next194244, %.lr.ph112.preheader ]
  %i.bc = trunc nuw i64 %indvars.iv.next194.lcssa to i32
  br label %._crit_edge116, !llvm.loop !212

._crit_edge116.loopexit:                          ; preds = %bb.d
  %i.bd = trunc nuw i64 %indvars.iv.next194245 to i32
  br label %._crit_edge116

._crit_edge116:                                   ; preds = %._crit_edge116.loopexit, %._crit_edge113, %.preheader87
  %i.be = phi i32 [ %i.bc, %._crit_edge113 ], [ %i.al, %.preheader87 ], [ %i.bd, %._crit_edge116.loopexit ] ; 20 uses
  %.not.i6 = icmp ult i32 %i.be, %i.e
  br i1 %.not.i6, label %bb.e, label %.noexc3

bb.e:                                             ; preds = %._crit_edge116
  %i.bf = zext i32 %i.be to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !36  ; 8 uses
  switch i8 %i.bh, label %bb.g [
    i8 34, label %.noexc3
    i8 92, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  %i.bi = add i32 %i.be, 2
  br label %.noexc7

bb.g:                                             ; preds = %bb.e
  %.not4.i = icmp sgt i8 %i.bh, -1
  br i1 %.not4.i, label %bb.ae, label %bb.h, !prof !110

bb.h:                                             ; preds = %bb.g
  %i.bj = zext i8 %i.bh to i32                    ; 3 uses
  %i.bk = and i32 %i.bj, 64
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %bb.i, label %bb.j, !prof !108

bb.i:                                             ; preds = %bb.h
  %i.bm = add nuw i32 %i.be, 1
  br label %.noexc7

bb.j:                                             ; preds = %bb.h
  %i.bn = and i32 %i.bj, 32
  %i.bo = icmp eq i32 %i.bn, 0
  br i1 %i.bo, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.bp = add nuw i32 %i.be, 1                    ; 3 uses
  %.not223 = icmp ult i32 %i.be, %i.e
  br i1 %.not223, label %bb.l, label %bb.m, !prof !110

bb.l:                                             ; preds = %bb.k
  %i.bq = zext i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !36
  %i.bt = icmp sgt i8 %i.bs, -65
  br i1 %i.bt, label %.noexc7, label %bb.n, !prof !108

bb.m:                                             ; preds = %bb.k
  br i1 %i.f, label %.noexc3, label %.noexc7

bb.n:                                             ; preds = %bb.l
  %i.bu = icmp samesign ult i8 %i.bh, -62         ; 2 uses
  %spec.select168 = select i1 %i.bu, i32 11, i32 %i.am
  %spec.select169 = select i1 %i.bu, i32 11, i32 %i.ak
  %i.bv = add i32 %i.be, 2
  br label %.noexc7

bb.o:                                             ; preds = %bb.j
  %i.bw = and i32 %i.bj, 16
  %i.bx = icmp eq i32 %i.bw, 0
  br i1 %i.bx, label %bb.p, label %bb.v

bb.p:                                             ; preds = %bb.o
  %i.by = add i32 %i.be, 2                        ; 2 uses
  %i.bz = icmp ugt i32 %i.by, %i.e
  br i1 %i.bz, label %.critedge2.i, label %bb.q, !prof !108

bb.q:                                             ; preds = %bb.p
  %i.ca = add nuw i32 %i.be, 1                    ; 3 uses
  %i.cb = zext i32 %i.ca to i64
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 %i.cb
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !36  ; 3 uses
  %i.ce = icmp slt i8 %i.cd, -64
  br i1 %i.ce, label %bb.r, label %.noexc7, !prof !110

bb.r:                                             ; preds = %bb.q
  %i.cf = zext i32 %i.by to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 %i.cf
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !36
  %i.ci = icmp sgt i8 %i.ch, -65
  br i1 %i.ci, label %.noexc7, label %bb.s, !prof !108

.critedge2.i:                                     ; preds = %bb.p
  br i1 %i.f, label %.noexc3, label %.critedge2.i..critedge2.i.thread_crit_edge

.critedge2.i..critedge2.i.thread_crit_edge:       ; preds = %.critedge2.i
  %.pre = add nuw i32 %i.be, 1
  br label %.noexc7

bb.s:                                             ; preds = %bb.r
  switch i8 %i.bh, label %.thread [
    i8 -32, label %bb.t
    i8 -19, label %bb.u
  ]

bb.t:                                             ; preds = %bb.s
  %i.cj = icmp samesign ult i8 %i.cd, -96         ; 2 uses
  %spec.select170 = select i1 %i.cj, i32 11, i32 %i.am
  %spec.select171 = select i1 %i.cj, i32 11, i32 %i.ak
  br label %.thread

bb.u:                                             ; preds = %bb.s
  %i.ck = icmp samesign ugt i8 %i.cd, -97         ; 2 uses
  %spec.select172 = select i1 %i.ck, i32 11, i32 %i.am
  %spec.select173 = select i1 %i.ck, i32 11, i32 %i.ak
  br label %.thread

.thread:                                          ; preds = %bb.u, %bb.t, %bb.s
  %i.cl = phi i32 [ %spec.select170, %bb.t ], [ %spec.select172, %bb.u ], [ %i.am, %bb.s ]
  %i.cm = phi i32 [ %spec.select171, %bb.t ], [ %spec.select173, %bb.u ], [ %i.ak, %bb.s ]
  %i.cn = add i32 %i.be, 3
  br label %.noexc7

bb.v:                                             ; preds = %bb.o
  %i.co = add i32 %i.be, 3                        ; 2 uses
  %i.cp = icmp ugt i32 %i.co, %i.e
  br i1 %i.cp, label %.critedge4.i, label %bb.w, !prof !108

bb.w:                                             ; preds = %bb.v
  %i.cq = add nuw i32 %i.be, 1
  %i.cr = zext i32 %i.cq to i64
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 %i.cr
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !36  ; 3 uses
  %i.cu = icmp slt i8 %i.ct, -64
  br i1 %i.cu, label %bb.x, label %.critedge4.i, !prof !110

bb.x:                                             ; preds = %bb.w
  %i.cv = add i32 %i.be, 2
  %i.cw = zext i32 %i.cv to i64
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 %i.cw
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !36
  %i.cz = icmp slt i8 %i.cy, -64
  br i1 %i.cz, label %bb.y, label %.critedge4.i, !prof !110

bb.y:                                             ; preds = %bb.x
  %i.da = zext i32 %i.co to i64
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 %i.da
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !36
  %i.dd = icmp sgt i8 %i.dc, -65
  br i1 %i.dd, label %.critedge4.i, label %bb.aa, !prof !108

.critedge4.i:                                     ; preds = %bb.y, %bb.x, %bb.w, %bb.v
  %i.de = add i32 %i.be, 2
  %i.df = icmp ugt i32 %i.de, %i.e
  %or.cond = and i1 %i.f, %i.df
  br i1 %or.cond, label %.noexc3, label %bb.z

bb.z:                                             ; preds = %.critedge4.i
  %i.dg = add nuw i32 %i.be, 1
  br label %.noexc7

bb.aa:                                            ; preds = %bb.y
  switch i8 %i.bh, label %bb.ad [
    i8 -16, label %bb.ab
    i8 -12, label %bb.ac
  ]

bb.ab:                                            ; preds = %bb.aa
  %i.dh = icmp samesign ult i8 %i.ct, -112
  br label %.thread37

bb.ac:                                            ; preds = %bb.aa
  %i.di = icmp samesign ugt i8 %i.ct, -113
  br label %.thread37

bb.ad:                                            ; preds = %bb.aa
  %i.dj = icmp samesign ugt i8 %i.bh, -12
  br label %.thread37

.thread37:                                        ; preds = %bb.ad, %bb.ac, %bb.ab
  %.sink228 = phi i1 [ %i.dj, %bb.ad ], [ %i.di, %bb.ac ], [ %i.dh, %bb.ab ] ; 2 uses
  %spec.select178 = select i1 %.sink228, i32 11, i32 %i.am
  %spec.select179 = select i1 %.sink228, i32 11, i32 %i.ak
  %i.dk = add i32 %i.be, 4
  br label %.noexc7

bb.ae:                                            ; preds = %bb.g
  %i.dl = icmp samesign ult i8 %i.bh, 32          ; 2 uses
  %spec.select180 = select i1 %i.dl, i32 14, i32 %i.am
  %spec.select181 = select i1 %i.dl, i32 14, i32 %i.ak
  %i.dm = add nuw i32 %i.be, 1
  br label %.noexc7

.noexc7:                                          ; preds = %bb.m, %bb.l, %bb.r, %bb.q, %.critedge2.i..critedge2.i.thread_crit_edge, %bb.i, %bb.n, %.thread, %bb.z, %.thread37, %bb.ae, %bb.f
  %i.dn = phi i32 [ %spec.select180, %bb.ae ], [ %i.am, %bb.f ], [ 11, %bb.i ], [ %spec.select178, %.thread37 ], [ 11, %bb.z ], [ %spec.select168, %bb.n ], [ 11, %.critedge2.i..critedge2.i.thread_crit_edge ], [ 11, %bb.q ], [ %i.cl, %.thread ], [ 11, %bb.r ], [ 11, %bb.l ], [ 11, %bb.m ] ; 2 uses
  %i.do = phi i32 [ %spec.select181, %bb.ae ], [ %i.ak, %bb.f ], [ 11, %bb.i ], [ %spec.select179, %.thread37 ], [ 11, %bb.z ], [ %spec.select169, %bb.n ], [ 11, %.critedge2.i..critedge2.i.thread_crit_edge ], [ 11, %bb.q ], [ %i.cm, %.thread ], [ 11, %bb.r ], [ 11, %bb.l ], [ 11, %bb.m ] ; 2 uses
  %i.dp = phi i32 [ %i.dm, %bb.ae ], [ %i.bi, %bb.f ], [ %i.bm, %bb.i ], [ %i.dk, %.thread37 ], [ %i.dg, %bb.z ], [ %i.bv, %bb.n ], [ %.pre, %.critedge2.i..critedge2.i.thread_crit_edge ], [ %i.ca, %bb.q ], [ %i.cn, %.thread ], [ %i.ca, %bb.r ], [ %i.bp, %bb.l ], [ %i.bp, %bb.m ] ; 3 uses
  %i.dq = icmp ult i32 %i.dp, %i.e
  br i1 %i.dq, label %.preheader87, label %.noexc3, !llvm.loop !213

.noexc3:                                          ; preds = %.critedge2.i, %.critedge4.i, %bb.m, %.noexc7, %._crit_edge116, %bb.e, %bb.c
  %.lcssa121 = phi i32 [ %i.i, %bb.c ], [ %i.am, %.critedge2.i ], [ %i.am, %.critedge4.i ], [ %i.am, %bb.m ], [ %i.am, %bb.e ], [ %i.am, %._crit_edge116 ], [ %i.dn, %.noexc7 ]
  %.lcssa94 = phi i32 [ %i.l, %bb.c ], [ %i.ak, %.critedge2.i ], [ %i.ak, %.critedge4.i ], [ %i.ak, %bb.m ], [ %i.ak, %bb.e ], [ %i.ak, %._crit_edge116 ], [ %i.do, %.noexc7 ]
  %i.dr = phi i32 [ %i.ai, %bb.c ], [ %i.e, %.critedge2.i ], [ %i.e, %.critedge4.i ], [ %i.e, %bb.m ], [ %i.be, %bb.e ], [ %i.be, %._crit_edge116 ], [ %i.dp, %.noexc7 ]
  %.0.i = phi i8 [ 1, %bb.c ], [ 1, %.critedge2.i ], [ 1, %.critedge4.i ], [ 1, %bb.m ], [ 0, %bb.e ], [ 1, %._crit_edge116 ], [ 1, %.noexc7 ]
  %i.ds = or i8 %.0.i, %.08.i139
  br label %.critedge.i

bb.af:                                            ; preds = %bb.b
  %i.dt = zext i8 %i.ag to i64
  %i.du = getelementptr inbounds nuw i8, ptr %4, i64 %i.dt
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !36
  %i.dw = and i8 %i.dv, 2
  %.not80 = icmp eq i8 %i.dw, 0
  store i32 %i.ad, ptr %i.j, align 4, !tbaa !37
  %i.dx = add nuw i32 %i.ad, 1
  %i.dy = icmp ult i32 %i.dx, %i.e
  %or.cond231 = select i1 %.not80, i1 %i.dy, i1 false
  br i1 %or.cond231, label %.lr.ph104.preheader, label %.critedge.i

.lr.ph104.preheader:                              ; preds = %bb.af
  %i.dz = add nuw nsw i64 %i.ae, 1                ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 %i.dz
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !36
  %i.ec = zext i8 %i.eb to i64
  %i.ed = getelementptr inbounds nuw i8, ptr %4, i64 %i.ec
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !36
  %i.ef = and i8 %i.ee, 3
  %.not81239 = icmp eq i8 %i.ef, 0
  br i1 %.not81239, label %.lr.ph241, label %.critedge.i

.lr.ph241:                                        ; preds = %.lr.ph104.preheader, %.lr.ph104
  %indvars.iv190240 = phi i64 [ %indvars.iv.next191, %.lr.ph104 ], [ %i.dz, %.lr.ph104.preheader ] ; 2 uses
  %indvars.iv.next191 = add nuw nsw i64 %indvars.iv190240, 1 ; 3 uses
  %i.eg = icmp samesign ult i64 %indvars.iv.next191, %i.g
  br i1 %i.eg, label %.lr.ph104, label %..critedge.i.loopexit_crit_edge, !llvm.loop !214

.lr.ph104:                                        ; preds = %.lr.ph241
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next191
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !36
  %i.ej = zext i8 %i.ei to i64
  %i.ek = getelementptr inbounds nuw i8, ptr %4, i64 %i.ej
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !36
  %i.em = and i8 %i.el, 3
  %.not81 = icmp eq i8 %i.em, 0
  br i1 %.not81, label %.lr.ph241, label %.lr.ph104..critedge.i.loopexit_crit_edge, !llvm.loop !214

.lr.ph104..critedge.i.loopexit_crit_edge:         ; preds = %.lr.ph104
  %i.en = trunc nuw i64 %indvars.iv190240 to i32
  br label %.critedge.i

..critedge.i.loopexit_crit_edge:                  ; preds = %.lr.ph241
  br label %.critedge.i, !llvm.loop !214

.critedge.i:                                      ; preds = %.lr.ph104.preheader, %.lr.ph104..critedge.i.loopexit_crit_edge, %..critedge.i.loopexit_crit_edge, %bb.af, %.noexc3
  %i.eo = phi i32 [ %.lcssa121, %.noexc3 ], [ %i.i, %bb.af ], [ %i.i, %..critedge.i.loopexit_crit_edge ], [ %i.i, %.lr.ph104..critedge.i.loopexit_crit_edge ], [ %i.i, %.lr.ph104.preheader ]
  %i.ep = phi i32 [ %.lcssa94, %.noexc3 ], [ %i.l, %bb.af ], [ %i.l, %..critedge.i.loopexit_crit_edge ], [ %i.l, %.lr.ph104..critedge.i.loopexit_crit_edge ], [ %i.l, %.lr.ph104.preheader ] ; 2 uses
  %i.eq = phi i32 [ %i.dr, %.noexc3 ], [ %i.ad, %bb.af ], [ %i.h, %..critedge.i.loopexit_crit_edge ], [ %i.en, %.lr.ph104..critedge.i.loopexit_crit_edge ], [ %i.ad, %.lr.ph104.preheader ]
  %.1.i = phi i8 [ %i.ds, %.noexc3 ], [ %.08.i139, %bb.af ], [ %.08.i139, %..critedge.i.loopexit_crit_edge ], [ %.08.i139, %.lr.ph104..critedge.i.loopexit_crit_edge ], [ %.08.i139, %.lr.ph104.preheader ] ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.j, i64 4 ; 2 uses
  %i.es = add i32 %i.eq, 1                        ; 2 uses
  %i.et = icmp ult i32 %i.es, %i.e
  br i1 %i.et, label %.noexc.preheader, label %._crit_edge140.loopexit, !llvm.loop !215

._crit_edge140.loopexit:                          ; preds = %.noexc._crit_edge, %.critedge.i
  %.lcssa96.ph = phi i32 [ %i.ep, %.critedge.i ], [ %i.l, %.noexc._crit_edge ]
  %.lcssa95.ph = phi ptr [ %i.er, %.critedge.i ], [ %i.j, %.noexc._crit_edge ]
  %.08.i.lcssa.ph = phi i8 [ %.1.i, %.critedge.i ], [ %.08.i139, %.noexc._crit_edge ]
  %i.eu = trunc nuw i8 %.08.i.lcssa.ph to i1
  br label %._crit_edge140

._crit_edge140:                                   ; preds = %._crit_edge140.loopexit, %bb.a
  %.lcssa96 = phi i32 [ 0, %bb.a ], [ %.lcssa96.ph, %._crit_edge140.loopexit ] ; 3 uses
  %.lcssa95 = phi ptr [ %i.d, %bb.a ], [ %.lcssa95.ph, %._crit_edge140.loopexit ] ; 4 uses
  %.08.i.lcssa = phi i1 [ false, %bb.a ], [ %i.eu, %._crit_edge140.loopexit ] ; 3 uses
  store i32 %i.e, ptr %.lcssa95, align 4, !tbaa !37
  %i.ev = getelementptr inbounds nuw i8, ptr %.lcssa95, i64 4
  store i32 %i.e, ptr %i.ev, align 4, !tbaa !37
  %i.ew = getelementptr inbounds nuw i8, ptr %.lcssa95, i64 8
  store i32 0, ptr %i.ew, align 4, !tbaa !37
  %i.ex = ptrtoint ptr %.lcssa95 to i64
  %i.ey = ptrtoint ptr %i.d to i64
  %i.ez = sub i64 %i.ex, %i.ey
  %i.fa = lshr exact i64 %i.ez, 2
  %i.fb = trunc i64 %i.fa to i32                  ; 6 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  store i32 %i.fb, ptr %i.fc, align 8, !tbaa !84
  %i.fd = icmp eq i32 %i.fb, 0
  br i1 %i.fd, label %_ZN8simdjson8fallback12_GLOBAL__N_16stage118structural_scanner4scanEv.exit, label %bb.ag, !prof !108

bb.ag:                                            ; preds = %._crit_edge140
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.fe, align 8, !tbaa !86
  switch i32 %3, label %bb.bk [
end_hunk_5
