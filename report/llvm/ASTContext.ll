Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ASTContext?download=true
inline.NumInlined: 31047
inline.NumDeleted: 11167
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_ZNK5clang10ASTContext15getTypeInfoImplEPKNS_4TypeE:bb.a
  br i1 %i.ih, label %.loopexit.i.i.i448, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ii = add i32 %i.ig, -1                       ; 2 uses
  %i.ij = ptrtoint ptr %i.ia to i64
  %i.ik = mul i64 %i.ij, -4658895280553007687     ; 2 uses
  %i.il = lshr i64 %i.ik, 31
  %i.im = xor i64 %i.il, %i.ik
  %i.in = trunc i64 %i.im to i32
  %i.io = and i32 %i.ii, %i.in                    ; 3 uses
  %i.ip = zext i32 %i.io to i64                   ; 2 uses
  %i.iq = lshr i64 %i.ip, 5
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.ie, i64 %i.iq
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !517, !noalias !2260
  %i.it = and i32 %i.io, 31
  %i.iu = lshr i32 %i.is, %i.it
  %i.iv = trunc i32 %i.iu to i1
  br i1 %i.iv, label %.lr.ph.i.i.i.i.i459, label %.loopexit.i.i.i448, !prof !670

.lr.ph.i.i.i.i.i459:                              ; preds = %bb.ag, %bb.ah
  %i.iw = phi i64 [ %i.jc, %bb.ah ], [ %i.ip, %bb.ag ]
  %.017.i.i.i.i.i460 = phi i32 [ %i.jb, %bb.ah ], [ %i.io, %bb.ag ]
  %i.ix = getelementptr inbounds nuw [24 x i8], ptr %i.ic, i64 %i.iw ; 2 uses
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !956, !noalias !2260
  %i.iz = icmp eq ptr %i.ia, %i.iy
  br i1 %i.iz, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4TypeENS2_8TypeInfoENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E4findES5_.exit.loopexit.i461, label %bb.ah, !prof !671

bb.ah:                                            ; preds = %.lr.ph.i.i.i.i.i459
  %i.ja = add nuw i32 %.017.i.i.i.i.i460, 1
  %i.jb = and i32 %i.ja, %i.ii                    ; 3 uses
  %i.jc = zext i32 %i.jb to i64                   ; 2 uses
  %i.jd = lshr i64 %i.jc, 5
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %i.ie, i64 %i.jd
  %i.jf = load i32, ptr %i.je, align 4, !tbaa !517, !noalias !2260
  %i.jg = and i32 %i.jb, 31
  %i.jh = lshr i32 %i.jf, %i.jg
  %i.ji = trunc i32 %i.jh to i1
  br i1 %i.ji, label %.lr.ph.i.i.i.i.i459, label %.loopexit.i.i.i448, !prof !672

.loopexit.i.i.i448:                               ; preds = %bb.ah, %bb.ag, %bb.af
  %i.jj = zext i32 %i.ig to i64                   ; 2 uses
  %i.jk = getelementptr inbounds nuw [24 x i8], ptr %i.ic, i64 %i.jj
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4TypeENS2_8TypeInfoENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E4findES5_.exit.i449

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4TypeENS2_8TypeInfoENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E4findES5_.exit.loopexit.i461: ; preds = %.lr.ph.i.i.i.i.i459
  %.pre.i462 = zext i32 %i.ig to i64
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4TypeENS2_8TypeInfoENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E4findES5_.exit.i449

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4TypeENS2_8TypeInfoENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E4findES5_.exit.i449: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4TypeENS2_8TypeInfoENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E4findES5_.exit.loopexit.i461, %.loopexit.i.i.i448
  %.pre-phi.i450 = phi i64 [ %.pre.i462, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4TypeENS2_8TypeInfoENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E4findES5_.exit.loopexit.i461 ], [ %i.jj, %.loopexit.i.i.i448 ]
  %.lcssa.sink.i.i.i451 = phi ptr [ %i.ix, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4TypeENS2_8TypeInfoENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E4findES5_.exit.loopexit.i461 ], [ %i.jk, %.loopexit.i.i.i448 ] ; 3 uses
  %i.jl = getelementptr inbounds nuw [24 x i8], ptr %i.ic, i64 %.pre-phi.i450
  %.not.i452 = icmp eq ptr %.lcssa.sink.i.i.i451, %i.jl
  br i1 %.not.i452, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4TypeENS2_8TypeInfoENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E4findES5_.exit.i449
  %i.jm = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i451, i64 8
  %.sroa.0.0.copyload.i453 = load i64, ptr %i.jm, align 8, !tbaa !656
  %.sroa.4.0..sroa_idx.i454 = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i451, i64 16
  %.sroa.4.0.copyload.i455 = load i64, ptr %.sroa.4.0..sroa_idx.i454, align 8
  br label %_ZNK5clang10ASTContext11getTypeInfoEPKNS_4TypeE.exit463

bb.aj:                                            ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4TypeENS2_8TypeInfoENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E4findES5_.exit.i449
  %i.jn = tail call { i64, i64 } @_ZNK5clang10ASTContext15getTypeInfoImplEPKNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(23904) %0, ptr noundef %i.ia), !inline_history !1051 ; 2 uses
  %i.jo = extractvalue { i64, i64 } %i.jn, 0      ; 2 uses
  %i.jp = extractvalue { i64, i64 } %i.jn, 1      ; 2 uses
  %i.jq = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4TypeENS2_8TypeInfoENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSB_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.ib, ptr noundef nonnull align 8 dereferenceable(8) %i.d), !inline_history !1051
  %.fca.0.extract.i.i457 = extractvalue { ptr, i8 } %i.jq, 0 ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i457, i64 8
  store i64 %i.jo, ptr %i.jr, align 8, !tbaa !656
  %.sroa.4.0..sroa_idx2.i458 = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i457, i64 16
  store i64 %i.jp, ptr %.sroa.4.0..sroa_idx2.i458, align 8
  br label %_ZNK5clang10ASTContext11getTypeInfoEPKNS_4TypeE.exit463

_ZNK5clang10ASTContext11getTypeInfoEPKNS_4TypeE.exit463: ; preds = %bb.ai, %bb.aj
  %.pre-phi564 = phi i64 [ %.sroa.4.0.copyload.i455, %bb.ai ], [ %i.jp, %bb.aj ] ; 3 uses
  %.pre-phi562 = phi i64 [ %.sroa.0.0.copyload.i453, %bb.ai ], [ %i.jo, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.js = mul i64 %.pre-phi562, %.0145            ; 3 uses
  %.sroa.462.8.extract.trunc = trunc i64 %.pre-phi564 to i32 ; 2 uses
  %.sroa.462.12.extract.shift = lshr i64 %.pre-phi564, 32 ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %0, i64 17712
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !817 ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 348
  %.sroa.0.0.copyload.i181 = load i32, ptr %i.jv, align 4, !tbaa !819
  %cond.i = icmp eq i32 %.sroa.0.0.copyload.i181, 10
  br i1 %cond.i, label %bb.ak, label %.critedge

bb.ak:                                            ; preds = %_ZNK5clang10ASTContext11getTypeInfoEPKNS_4TypeE.exit463
  %i.jw = getelementptr inbounds nuw i8, ptr %i.ju, i64 8
  %i.jx = load i8, ptr %i.jw, align 8, !tbaa !1052
  %i.jy = icmp eq i8 %i.jx, 64
  br i1 %i.jy, label %.critedge, label %.thread

.critedge:                                        ; preds = %_ZNK5clang10ASTContext11getTypeInfoEPKNS_4TypeE.exit463, %bb.ak
  %i.jz = icmp ne i64 %i.js, 0
  %i.ka = zext i1 %i.jz to i64                    ; 2 uses
  %i.kb = sub i64 %i.js, %i.ka
  %i.kc = and i64 %.pre-phi564, 4294967295        ; 2 uses
  %i.kd = udiv i64 %i.kb, %i.kc
  %i.ke = add i64 %i.kd, %i.ka
  %i.kf = mul i64 %i.ke, %i.kc
  br label %.thread

bb.al:                                            ; preds = %bb.a, %bb.a
  %i.kg = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.0.0.copyload.i182 = load i64, ptr %i.kg, align 16, !tbaa !716
  %i.kh = and i64 %.sroa.0.0.copyload.i182, -16
  %i.ki = inttoptr i64 %i.kh to ptr
  %i.kj = load ptr, ptr %i.ki, align 16, !tbaa !719 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.kj, ptr %i.c, align 8, !tbaa !956
  %i.kk = getelementptr inbounds nuw i8, ptr %0, i64 1168 ; 2 uses
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !933, !noalias !2261 ; 3 uses
  %i.km = getelementptr inbounds nuw i8, ptr %0, i64 1176
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !1045, !noalias !2261 ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %0, i64 1188
  %i.kp = load i32, ptr %i.ko, align 4, !tbaa !932, !noalias !2261 ; 4 uses
  %i.kq = icmp eq i32 %i.kp, 0
  br i1 %i.kq, label %.loopexit.i.i.i464, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.kr = add i32 %i.kp, -1                       ; 2 uses
  %i.ks = ptrtoint ptr %i.kj to i64
  %i.kt = mul i64 %i.ks, -4658895280553007687     ; 2 uses
  %i.ku = lshr i64 %i.kt, 31
  %i.kv = xor i64 %i.ku, %i.kt
  %i.kw = trunc i64 %i.kv to i32
  %i.kx = and i32 %i.kr, %i.kw                    ; 3 uses
  %i.ky = zext i32 %i.kx to i64                   ; 2 uses
  %i.kz = lshr i64 %i.ky, 5
  %i.la = getelementptr inbounds nuw [4 x i8], ptr %i.kn, i64 %i.kz
  %i.lb = load i32, ptr %i.la, align 4, !tbaa !517, !noalias !2262
  %i.lc = and i32 %i.kx, 31
  %i.ld = lshr i32 %i.lb, %i.lc
  %i.le = trunc i32 %i.ld to i1
  br i1 %i.le, label %.lr.ph.i.i.i.i.i475, label %.loopexit.i.i.i464, !prof !670

.lr.ph.i.i.i.i.i475:                              ; preds = %bb.am, %bb.an
  %i.lf = phi i64 [ %i.ll, %bb.an ], [ %i.ky, %bb.am ]
  %.017.i.i.i.i.i476 = phi i32 [ %i.lk, %bb.an ], [ %i.kx, %bb.am ]
  %i.lg = getelementptr inbounds nuw [24 x i8], ptr %i.kl, i64 %i.lf ; 2 uses
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !956, !noalias !2262
  %i.li = icmp eq ptr %i.kj, %i.lh
  br i1 %i.li, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4TypeENS2_8TypeInfoENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E4findES5_.exit.loopexit.i477, label %bb.an, !prof !671

bb.an:                                            ; preds = %.lr.ph.i.i.i.i.i475
  %i.lj = add nuw i32 %.017.i.i.i.i.i476, 1
  %i.lk = and i32 %i.lj, %i.kr                    ; 3 uses
  %i.ll = zext i32 %i.lk to i64                   ; 2 uses
  %i.lm = lshr i64 %i.ll, 5
  %i.ln = getelementptr inbounds nuw [4 x i8], ptr %i.kn, i64 %i.lm
  %i.lo = load i32, ptr %i.ln, align 4, !tbaa !517, !noalias !2262
  %i.lp = and i32 %i.lk, 31
  %i.lq = lshr i32 %i.lo, %i.lp
  %i.lr = trunc i32 %i.lq to i1
  br i1 %i.lr, label %.lr.ph.i.i.i.i.i475, label %.loopexit.i.i.i464, !prof !672

.loopexit.i.i.i464:                               ; preds = %bb.an, %bb.am, %bb.al
  %i.ls = zext i32 %i.kp to i64                   ; 2 uses
  %i.lt = getelementptr inbounds nuw [24 x i8], ptr %i.kl, i64 %i.ls
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4TypeENS2_8TypeInfoENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E4findES5_.exit.i465

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4TypeENS2_8TypeInfoENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E4findES5_.exit.loopexit.i477: ; preds = %.lr.ph.i.i.i.i.i475
  %.pre.i478 = zext i32 %i.kp to i64
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4TypeENS2_8TypeInfoENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E4findES5_.exit.i465

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4TypeENS2_8TypeInfoENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E4findES5_.exit.i465: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4TypeENS2_8TypeInfoENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E4findES5_.exit.loopexit.i477, %.loopexit.i.i.i464
  %.pre-phi.i466 = phi i64 [ %.pre.i478, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4TypeENS2_8TypeInfoENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E4findES5_.exit.loopexit.i477 ], [ %i.ls, %.loopexit.i.i.i464 ]
  %.lcssa.sink.i.i.i467 = phi ptr [ %i.lg, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4TypeENS2_8TypeInfoENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E4findES5_.exit.loopexit.i477 ], [ %i.lt, %.loopexit.i.i.i464 ] ; 2 uses
  %i.lu = getelementptr inbounds nuw [24 x i8], ptr %i.kl, i64 %.pre-phi.i466
  %.not.i468 = icmp eq ptr %.lcssa.sink.i.i.i467, %i.lu
  br i1 %.not.i468, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4TypeENS2_8TypeInfoENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E4findES5_.exit.i465
  %i.lv = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i467, i64 8
  %.sroa.0.0.copyload.i469 = load i64, ptr %i.lv, align 8, !tbaa !656
  br label %_ZNK5clang10ASTContext11getTypeInfoEPKNS_4TypeE.exit479

bb.ap:                                            ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4TypeENS2_8TypeInfoENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E4findES5_.exit.i465
  %i.lw = tail call { i64, i64 } @_ZNK5clang10ASTContext15getTypeInfoImplEPKNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(23904) %0, ptr noundef %i.kj), !inline_history !1051 ; 2 uses
  %i.lx = extractvalue { i64, i64 } %i.lw, 0      ; 2 uses
  %i.ly = extractvalue { i64, i64 } %i.lw, 1
  %i.lz = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4TypeENS2_8TypeInfoENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEES5_S6_S8_SB_E24lookupOrInsertIntoBucketIRKS5_JEEESt4pairIPSB_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.kk, ptr noundef nonnull align 8 dereferenceable(8) %i.c), !inline_history !1051
  %.fca.0.extract.i.i473 = extractvalue { ptr, i8 } %i.lz, 0 ; 2 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i473, i64 8
  store i64 %i.lx, ptr %i.ma, align 8, !tbaa !656
  %.sroa.4.0..sroa_idx2.i474 = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i473, i64 16
  store i64 %i.ly, ptr %.sroa.4.0..sroa_idx2.i474, align 8
  br label %_ZNK5clang10ASTContext11getTypeInfoEPKNS_4TypeE.exit479

_ZNK5clang10ASTContext11getTypeInfoEPKNS_4TypeE.exit479: ; preds = %bb.ao, %bb.ap
  %.fca.1.insert.merged.i472 = phi i64 [ %.sroa.0.0.copyload.i469, %bb.ao ], [ %i.lx, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.mb = tail call noundef zeroext i1 @_ZNK5clang4Type22isPackedVectorBoolTypeERKNS_10ASTContextE(ptr noundef nonnull align 16 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(23904) %0) #28
  %i.mc = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.md = load i32, ptr %i.mc, align 4, !tbaa !716
  %.pre388 = trunc i64 %.fca.1.insert.merged.i472 to i32 ; 2 uses
  %i.me = select i1 %i.mb, i32 1, i32 %.pre388
  %i.mf = mul i32 %i.md, %i.me                    ; 2 uses
  %.sroa.speculated277 = tail call i32 @llvm.umax.i32(i32 %i.mf, i32 8)
  %i.mg = zext i32 %.sroa.speculated277 to i64    ; 2 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %0, i64 17712
  %i.mi = load ptr, ptr %i.mh, align 8, !tbaa !817 ; 2 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 76
  %i.mk = load i8, ptr %i.mj, align 4, !tbaa !2263, !range !563, !noundef !510
  %i.ml = trunc nuw i8 %i.mk to i1
  %minmaxop = select i1 %i.ml, i32 %.pre388, i32 %i.mf
  %.sroa.speculated271 = tail call i32 @llvm.umax.i32(i32 %minmaxop, i32 8) ; 3 uses
  %i.mm = tail call range(i32 1, 33) i32 @llvm.ctpop.i32(i32 %.sroa.speculated271)
  %.not165 = icmp samesign ult i32 %i.mm, 2
  br i1 %.not165, label %bb.aq, label %_ZN4llvm8bit_ceilIjEET_S1_.exit

_ZN4llvm8bit_ceilIjEET_S1_.exit:                  ; preds = %_ZNK5clang10ASTContext11getTypeInfoEPKNS_4TypeE.exit479
  %i.mn = add i32 %.sroa.speculated271, -1
  %i.mo = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.mn, i1 false)
  %i.mp = sub nuw nsw i32 32, %i.mo               ; 2 uses
  %i.mq = shl nuw i32 1, %i.mp
  %2 = add nsw i64 %i.mg, -1
  %.zext = zext nneg i32 %i.mp to i64             ; 2 uses
  %3 = lshr i64 %2, %.zext
  %4 = add nuw nsw i64 %3, 1
  %i.mr = shl nuw nsw i64 %4, %.zext
  br label %bb.aq

bb.aq:                                            ; preds = %_ZN4llvm8bit_ceilIjEET_S1_.exit, %_ZNK5clang10ASTContext11getTypeInfoEPKNS_4TypeE.exit479
  %.0134 = phi i32 [ %i.mq, %_ZN4llvm8bit_ceilIjEET_S1_.exit ], [ %.sroa.speculated271, %_ZNK5clang10ASTContext11getTypeInfoEPKNS_4TypeE.exit479 ] ; 2 uses
  %.1 = phi i64 [ %i.mr, %_ZN4llvm8bit_ceilIjEET_S1_.exit ], [ %i.mg, %_ZNK5clang10ASTContext11getTypeInfoEPKNS_4TypeE.exit479 ] ; 5 uses
  %i.ms = load i32, ptr %i.i, align 16
  %i.mt = lshr i32 %i.ms, 19
  %i.mu = and i32 %i.mt, 15
  switch i32 %i.mu, label %.thread.fold.split371 [
    i32 6, label %.thread
    i32 7, label %.thread.fold.split
    i32 8, label %bb.ar
    i32 9, label %bb.ar
    i32 10, label %bb.ar
    i32 11, label %bb.ar
    i32 12, label %bb.ar
  ]

bb.ar:                                            ; preds = %bb.aq, %bb.aq, %bb.aq, %bb.aq, %bb.aq
  %i.mv = trunc i64 %.1 to i32
  %.sroa.speculated = tail call i32 @llvm.umin.i32(i32 %i.mv, i32 64)
  br label %.thread

bb.as:                                            ; preds = %bb.a
  %i.mw = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.0.0.copyload.i185 = load i64, ptr %i.mw, align 16, !tbaa !716
  %i.mx = tail call { i64, i64 } @_ZNK5clang10ASTContext11getTypeInfoENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(23904) %0, i64 %.sroa.0.0.copyload.i185) ; 2 uses
  %i.my = extractvalue { i64, i64 } %i.mx, 0
  %i.mz = extractvalue { i64, i64 } %i.mx, 1
  %i.na = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.nb = load i32, ptr %i.na, align 8, !tbaa !1055
  %i.nc = zext i32 %i.nb to i64
  %i.nd = mul i64 %i.my, %i.nc
  %i.ne = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.nf = load i32, ptr %i.ne, align 4, !tbaa !1056
  %i.ng = zext i32 %i.nf to i64
  %i.nh = mul i64 %i.nd, %i.ng
  %.sroa.439.8.extract.trunc = trunc i64 %i.mz to i32
  br label %.thread

bb.at:                                            ; preds = %bb.a
  %i.ni = load i32, ptr %i.i, align 16
  %i.nj = lshr i32 %i.ni, 19
  %i.nk = and i32 %i.nj, 1023
  switch i32 %i.nk, label %bb.au [
    i32 452, label %.thread
    i32 453, label %bb.av
    i32 465, label %bb.aw
    i32 454, label %bb.aw
    i32 455, label %bb.aw
    i32 466, label %bb.aw
    i32 457, label %bb.aw
    i32 467, label %bb.ax
    i32 456, label %bb.ax
    i32 458, label %bb.ay
    i32 459, label %bb.az
    i32 460, label %bb.ba
    i32 468, label %bb.ba
    i32 461, label %bb.bb
    i32 469, label %bb.bb
    i32 462, label %bb.bc
    i32 470, label %bb.bc
    i32 463, label %bb.bd
    i32 471, label %bb.bd
    i32 472, label %bb.be
    i32 464, label %bb.be
    i32 473, label %bb.bf
    i32 476, label %bb.bf
    i32 485, label %bb.bf
    i32 488, label %bb.bf
    i32 474, label %bb.bg
    i32 477, label %bb.bg
    i32 486, label %bb.bg
    i32 489, label %bb.bg
    i32 475, label %bb.bh
    i32 478, label %bb.bh
    i32 487, label %bb.bh
    i32 490, label %bb.bh
    i32 479, label %bb.bi
    i32 482, label %bb.bi
    i32 491, label %bb.bi
    i32 494, label %bb.bi
    i32 480, label %bb.bj
    i32 483, label %bb.bj
    i32 492, label %bb.bj
    i32 495, label %bb.bj
    i32 481, label %bb.bk
    i32 484, label %bb.bk
    i32 493, label %bb.bk
    i32 496, label %bb.bk
    i32 502, label %bb.bl
    i32 501, label %bb.br
    i32 497, label %bb.br
    i32 498, label %bb.bv
    i32 499, label %bb.bw
    i32 504, label %bb.bx
    i32 500, label %bb.by
    i32 503, label %bb.cd
    i32 505, label %bb.ch
    i32 506, label %bb.ci
    i32 507, label %bb.ci
    i32 508, label %bb.ci
    i32 509, label %bb.cj
    i32 510, label %bb.cj
    i32 511, label %bb.cj
    i32 512, label %bb.cj
    i32 513, label %bb.cj
    i32 0, label %bb.cj
    i32 1, label %bb.cj
    i32 2, label %bb.cj
    i32 3, label %bb.cj
    i32 4, label %bb.cj
    i32 5, label %bb.cj
    i32 6, label %bb.cj
    i32 7, label %bb.cj
    i32 8, label %bb.cj
    i32 9, label %bb.cj
    i32 10, label %bb.cj
    i32 11, label %bb.cj
    i32 12, label %bb.cj
    i32 13, label %bb.cj
    i32 14, label %bb.cj
    i32 15, label %bb.cj
    i32 16, label %bb.cj
    i32 17, label %bb.cj
    i32 18, label %bb.cj
    i32 19, label %bb.cj
    i32 20, label %bb.cj
    i32 21, label %bb.cj
    i32 22, label %bb.cj
    i32 23, label %bb.cj
    i32 24, label %bb.cj
    i32 25, label %bb.cj
    i32 26, label %bb.cj
    i32 27, label %bb.cj
    i32 28, label %bb.cj
    i32 29, label %bb.cj
    i32 30, label %bb.cj
    i32 31, label %bb.cj
    i32 32, label %bb.cj
    i32 33, label %bb.cj
    i32 34, label %bb.cj
    i32 35, label %bb.cj
    i32 36, label %bb.cj
    i32 37, label %bb.cj
    i32 38, label %bb.cj
    i32 39, label %bb.cj
    i32 40, label %bb.cj
    i32 41, label %bb.cj
    i32 42, label %bb.cj
    i32 43, label %bb.cj
    i32 44, label %bb.cj
    i32 45, label %bb.cj
    i32 46, label %bb.cj
    i32 47, label %bb.cj
    i32 48, label %bb.cm
    i32 49, label %bb.cm
    i32 50, label %bb.cm
    i32 51, label %bb.cm
    i32 52, label %bb.cm
    i32 53, label %bb.cm
    i32 54, label %bb.cm
    i32 55, label %bb.cm
    i32 56, label %bb.cm
    i32 57, label %bb.cm
    i32 58, label %bb.cm
    i32 59, label %bb.cm
    i32 60, label %bb.cm
    i32 61, label %bb.cm
    i32 62, label %bb.cm
    i32 63, label %bb.cm
    i32 64, label %bb.cm
    i32 65, label %bb.cm
    i32 66, label %bb.cm
    i32 67, label %bb.cm
    i32 68, label %bb.cm
    i32 69, label %bb.cm
    i32 70, label %bb.cm
    i32 71, label %bb.cm
    i32 72, label %bb.cm
    i32 73, label %bb.cm
    i32 74, label %bb.cm
    i32 75, label %bb.cm
    i32 76, label %bb.cm
    i32 77, label %bb.cm
    i32 78, label %bb.cm
    i32 79, label %bb.cm
    i32 80, label %bb.cm
    i32 81, label %bb.cm
    i32 82, label %bb.cm
    i32 83, label %bb.cm
    i32 84, label %bb.cm
    i32 85, label %bb.cm
    i32 86, label %bb.cm
    i32 87, label %bb.cm
    i32 88, label %bb.cm
    i32 89, label %bb.cm
    i32 90, label %bb.cm
    i32 91, label %bb.cm
    i32 92, label %bb.cm
end_hunk_0
