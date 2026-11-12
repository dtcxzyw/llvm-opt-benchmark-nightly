Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/CGDebugInfo?download=true
inline.NumInlined: 37009
inline.NumDeleted: 15432
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN5clang7CodeGen11CGDebugInfo10CreateTypeEPKNS_11BuiltinTypeE:bb.a

bb.ap:                                            ; preds = %tailrecurse
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.ey = tail call noundef ptr @_ZN5clang7CodeGen11CGDebugInfo24getOrCreateStructPtrTypeEN4llvm9StringRefERPNS2_6DITypeE(ptr noundef nonnull align 8 dereferenceable(2480) %0, ptr nonnull @.str.23, i64 25, ptr noundef nonnull align 8 dereferenceable(8) %i.ex)
  br label %.loopexit342

bb.aq:                                            ; preds = %tailrecurse
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 696
  %i.fa = tail call noundef ptr @_ZN5clang7CodeGen11CGDebugInfo24getOrCreateStructPtrTypeEN4llvm9StringRefERPNS2_6DITypeE(ptr noundef nonnull align 8 dereferenceable(2480) %0, ptr nonnull @.str.24, i64 25, ptr noundef nonnull align 8 dereferenceable(8) %i.ez)
  br label %.loopexit342

bb.ar:                                            ; preds = %tailrecurse
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.fc = tail call noundef ptr @_ZN5clang7CodeGen11CGDebugInfo24getOrCreateStructPtrTypeEN4llvm9StringRefERPNS2_6DITypeE(ptr noundef nonnull align 8 dereferenceable(2480) %0, ptr nonnull @.str.25, i64 31, ptr noundef nonnull align 8 dereferenceable(8) %i.fb)
  br label %.loopexit342

bb.as:                                            ; preds = %tailrecurse
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.fe = tail call noundef ptr @_ZN5clang7CodeGen11CGDebugInfo24getOrCreateStructPtrTypeEN4llvm9StringRefERPNS2_6DITypeE(ptr noundef nonnull align 8 dereferenceable(2480) %0, ptr nonnull @.str.26, i64 24, ptr noundef nonnull align 8 dereferenceable(8) %i.fd)
  br label %.loopexit342

bb.at:                                            ; preds = %tailrecurse
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 720
  %i.fg = tail call noundef ptr @_ZN5clang7CodeGen11CGDebugInfo24getOrCreateStructPtrTypeEN4llvm9StringRefERPNS2_6DITypeE(ptr noundef nonnull align 8 dereferenceable(2480) %0, ptr nonnull @.str.27, i64 30, ptr noundef nonnull align 8 dereferenceable(8) %i.ff)
  br label %.loopexit342

bb.au:                                            ; preds = %tailrecurse
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 728
  %i.fi = tail call noundef ptr @_ZN5clang7CodeGen11CGDebugInfo24getOrCreateStructPtrTypeEN4llvm9StringRefERPNS2_6DITypeE(ptr noundef nonnull align 8 dereferenceable(2480) %0, ptr nonnull @.str.28, i64 30, ptr noundef nonnull align 8 dereferenceable(8) %i.fh)
  br label %.loopexit342

bb.av:                                            ; preds = %tailrecurse
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 736
  %i.fk = tail call noundef ptr @_ZN5clang7CodeGen11CGDebugInfo24getOrCreateStructPtrTypeEN4llvm9StringRefERPNS2_6DITypeE(ptr noundef nonnull align 8 dereferenceable(2480) %0, ptr nonnull @.str.29, i64 36, ptr noundef nonnull align 8 dereferenceable(8) %i.fj)
  br label %.loopexit342

bb.aw:                                            ; preds = %tailrecurse
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.fm = tail call noundef ptr @_ZN5clang7CodeGen11CGDebugInfo24getOrCreateStructPtrTypeEN4llvm9StringRefERPNS2_6DITypeE(ptr noundef nonnull align 8 dereferenceable(2480) %0, ptr nonnull @.str.30, i64 19, ptr noundef nonnull align 8 dereferenceable(8) %i.fl)
  br label %.loopexit342

bb.ax:                                            ; preds = %tailrecurse
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 752
  %i.fo = tail call noundef ptr @_ZN5clang7CodeGen11CGDebugInfo24getOrCreateStructPtrTypeEN4llvm9StringRefERPNS2_6DITypeE(ptr noundef nonnull align 8 dereferenceable(2480) %0, ptr nonnull @.str.31, i64 19, ptr noundef nonnull align 8 dereferenceable(8) %i.fn)
  br label %.loopexit342

bb.ay:                                            ; preds = %tailrecurse
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 760
  %i.fq = tail call noundef ptr @_ZN5clang7CodeGen11CGDebugInfo24getOrCreateStructPtrTypeEN4llvm9StringRefERPNS2_6DITypeE(ptr noundef nonnull align 8 dereferenceable(2480) %0, ptr nonnull @.str.32, i64 25, ptr noundef nonnull align 8 dereferenceable(8) %i.fp)
  br label %.loopexit342

bb.az:                                            ; preds = %tailrecurse
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 768
  %i.fs = tail call noundef ptr @_ZN5clang7CodeGen11CGDebugInfo24getOrCreateStructPtrTypeEN4llvm9StringRefERPNS2_6DITypeE(ptr noundef nonnull align 8 dereferenceable(2480) %0, ptr nonnull @.str.33, i64 26, ptr noundef nonnull align 8 dereferenceable(8) %i.fr)
  br label %.loopexit342

bb.ba:                                            ; preds = %tailrecurse
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 776
  %i.fu = tail call noundef ptr @_ZN5clang7CodeGen11CGDebugInfo24getOrCreateStructPtrTypeEN4llvm9StringRefERPNS2_6DITypeE(ptr noundef nonnull align 8 dereferenceable(2480) %0, ptr nonnull @.str.34, i64 19, ptr noundef nonnull align 8 dereferenceable(8) %i.ft)
  br label %.loopexit342

bb.bb:                                            ; preds = %tailrecurse
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 784
  %i.fw = tail call noundef ptr @_ZN5clang7CodeGen11CGDebugInfo24getOrCreateStructPtrTypeEN4llvm9StringRefERPNS2_6DITypeE(ptr noundef nonnull align 8 dereferenceable(2480) %0, ptr nonnull @.str.35, i64 25, ptr noundef nonnull align 8 dereferenceable(8) %i.fv)
  br label %.loopexit342

bb.bc:                                            ; preds = %tailrecurse
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 792
  %i.fy = tail call noundef ptr @_ZN5clang7CodeGen11CGDebugInfo24getOrCreateStructPtrTypeEN4llvm9StringRefERPNS2_6DITypeE(ptr noundef nonnull align 8 dereferenceable(2480) %0, ptr nonnull @.str.36, i64 25, ptr noundef nonnull align 8 dereferenceable(8) %i.fx)
  br label %.loopexit342

bb.bd:                                            ; preds = %tailrecurse
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 800
  %i.ga = tail call noundef ptr @_ZN5clang7CodeGen11CGDebugInfo24getOrCreateStructPtrTypeEN4llvm9StringRefERPNS2_6DITypeE(ptr noundef nonnull align 8 dereferenceable(2480) %0, ptr nonnull @.str.37, i64 31, ptr noundef nonnull align 8 dereferenceable(8) %i.fz)
  br label %.loopexit342

bb.be:                                            ; preds = %tailrecurse
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 808
  %i.gc = tail call noundef ptr @_ZN5clang7CodeGen11CGDebugInfo24getOrCreateStructPtrTypeEN4llvm9StringRefERPNS2_6DITypeE(ptr noundef nonnull align 8 dereferenceable(2480) %0, ptr nonnull @.str.38, i64 24, ptr noundef nonnull align 8 dereferenceable(8) %i.gb)
  br label %.loopexit342

bb.bf:                                            ; preds = %tailrecurse
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 816
  %i.ge = tail call noundef ptr @_ZN5clang7CodeGen11CGDebugInfo24getOrCreateStructPtrTypeEN4llvm9StringRefERPNS2_6DITypeE(ptr noundef nonnull align 8 dereferenceable(2480) %0, ptr nonnull @.str.39, i64 30, ptr noundef nonnull align 8 dereferenceable(8) %i.gd)
  br label %.loopexit342

bb.bg:                                            ; preds = %tailrecurse
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 824
  %i.gg = tail call noundef ptr @_ZN5clang7CodeGen11CGDebugInfo24getOrCreateStructPtrTypeEN4llvm9StringRefERPNS2_6DITypeE(ptr noundef nonnull align 8 dereferenceable(2480) %0, ptr nonnull @.str.40, i64 30, ptr noundef nonnull align 8 dereferenceable(8) %i.gf)
  br label %.loopexit342

bb.bh:                                            ; preds = %tailrecurse
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.gi = tail call noundef ptr @_ZN5clang7CodeGen11CGDebugInfo24getOrCreateStructPtrTypeEN4llvm9StringRefERPNS2_6DITypeE(ptr noundef nonnull align 8 dereferenceable(2480) %0, ptr nonnull @.str.41, i64 36, ptr noundef nonnull align 8 dereferenceable(8) %i.gh)
  br label %.loopexit342

bb.bi:                                            ; preds = %tailrecurse
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 840
  %i.gk = tail call noundef ptr @_ZN5clang7CodeGen11CGDebugInfo24getOrCreateStructPtrTypeEN4llvm9StringRefERPNS2_6DITypeE(ptr noundef nonnull align 8 dereferenceable(2480) %0, ptr nonnull @.str.42, i64 19, ptr noundef nonnull align 8 dereferenceable(8) %i.gj)
  br label %.loopexit342

bb.bj:                                            ; preds = %tailrecurse
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 848
  %i.gm = tail call noundef ptr @_ZN5clang7CodeGen11CGDebugInfo24getOrCreateStructPtrTypeEN4llvm9StringRefERPNS2_6DITypeE(ptr noundef nonnull align 8 dereferenceable(2480) %0, ptr nonnull @.str.43, i64 16, ptr noundef nonnull align 8 dereferenceable(8) %i.gl)
  br label %.loopexit342

bb.bk:                                            ; preds = %tailrecurse
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.go = tail call noundef ptr @_ZN5clang7CodeGen11CGDebugInfo24getOrCreateStructPtrTypeEN4llvm9StringRefERPNS2_6DITypeE(ptr noundef nonnull align 8 dereferenceable(2480) %0, ptr nonnull @.str.44, i64 14, ptr noundef nonnull align 8 dereferenceable(8) %i.gn)
  br label %.loopexit342

bb.bl:                                            ; preds = %tailrecurse
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 864
  %i.gq = tail call noundef ptr @_ZN5clang7CodeGen11CGDebugInfo24getOrCreateStructPtrTypeEN4llvm9StringRefERPNS2_6DITypeE(ptr noundef nonnull align 8 dereferenceable(2480) %0, ptr nonnull @.str.45, i64 18, ptr noundef nonnull align 8 dereferenceable(8) %i.gp)
  br label %.loopexit342

bb.bm:                                            ; preds = %tailrecurse
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 872
  %i.gs = tail call noundef ptr @_ZN5clang7CodeGen11CGDebugInfo24getOrCreateStructPtrTypeEN4llvm9StringRefERPNS2_6DITypeE(ptr noundef nonnull align 8 dereferenceable(2480) %0, ptr nonnull @.str.46, i64 14, ptr noundef nonnull align 8 dereferenceable(8) %i.gr)
  br label %.loopexit342

bb.bn:                                            ; preds = %tailrecurse
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 888
  %i.gu = tail call noundef ptr @_ZN5clang7CodeGen11CGDebugInfo24getOrCreateStructPtrTypeEN4llvm9StringRefERPNS2_6DITypeE(ptr noundef nonnull align 8 dereferenceable(2480) %0, ptr nonnull @.str.47, i64 19, ptr noundef nonnull align 8 dereferenceable(8) %i.gt)
  br label %.loopexit342

bb.bo:                                            ; preds = %tailrecurse
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 896
  %i.gw = tail call noundef ptr @_ZN5clang7CodeGen11CGDebugInfo24getOrCreateStructPtrTypeEN4llvm9StringRefERPNS2_6DITypeE(ptr noundef nonnull align 8 dereferenceable(2480) %0, ptr nonnull @.str.48, i64 40, ptr noundef nonnull align 8 dereferenceable(8) %i.gv)
  br label %.loopexit342

bb.bp:                                            ; preds = %tailrecurse
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 904
  %i.gy = tail call noundef ptr @_ZN5clang7CodeGen11CGDebugInfo24getOrCreateStructPtrTypeEN4llvm9StringRefERPNS2_6DITypeE(ptr noundef nonnull align 8 dereferenceable(2480) %0, ptr nonnull @.str.49, i64 40, ptr noundef nonnull align 8 dereferenceable(8) %i.gx)
  br label %.loopexit342

bb.bq:                                            ; preds = %tailrecurse
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 912
  %i.ha = tail call noundef ptr @_ZN5clang7CodeGen11CGDebugInfo24getOrCreateStructPtrTypeEN4llvm9StringRefERPNS2_6DITypeE(ptr noundef nonnull align 8 dereferenceable(2480) %0, ptr nonnull @.str.50, i64 40, ptr noundef nonnull align 8 dereferenceable(8) %i.gz)
  br label %.loopexit342

bb.br:                                            ; preds = %tailrecurse
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 920
  %i.hc = tail call noundef ptr @_ZN5clang7CodeGen11CGDebugInfo24getOrCreateStructPtrTypeEN4llvm9StringRefERPNS2_6DITypeE(ptr noundef nonnull align 8 dereferenceable(2480) %0, ptr nonnull @.str.51, i64 40, ptr noundef nonnull align 8 dereferenceable(8) %i.hb)
  br label %.loopexit342

bb.bs:                                            ; preds = %tailrecurse
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 928
  %i.he = tail call noundef ptr @_ZN5clang7CodeGen11CGDebugInfo24getOrCreateStructPtrTypeEN4llvm9StringRefERPNS2_6DITypeE(ptr noundef nonnull align 8 dereferenceable(2480) %0, ptr nonnull @.str.52, i64 39, ptr noundef nonnull align 8 dereferenceable(8) %i.hd)
  br label %.loopexit342

bb.bt:                                            ; preds = %tailrecurse
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 936
  %i.hg = tail call noundef ptr @_ZN5clang7CodeGen11CGDebugInfo24getOrCreateStructPtrTypeEN4llvm9StringRefERPNS2_6DITypeE(ptr noundef nonnull align 8 dereferenceable(2480) %0, ptr nonnull @.str.53, i64 39, ptr noundef nonnull align 8 dereferenceable(8) %i.hf)
  br label %.loopexit342

bb.bu:                                            ; preds = %tailrecurse
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 944
  %i.hi = tail call noundef ptr @_ZN5clang7CodeGen11CGDebugInfo24getOrCreateStructPtrTypeEN4llvm9StringRefERPNS2_6DITypeE(ptr noundef nonnull align 8 dereferenceable(2480) %0, ptr nonnull @.str.54, i64 39, ptr noundef nonnull align 8 dereferenceable(8) %i.hh)
  br label %.loopexit342

bb.bv:                                            ; preds = %tailrecurse
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.hk = tail call noundef ptr @_ZN5clang7CodeGen11CGDebugInfo24getOrCreateStructPtrTypeEN4llvm9StringRefERPNS2_6DITypeE(ptr noundef nonnull align 8 dereferenceable(2480) %0, ptr nonnull @.str.55, i64 39, ptr noundef nonnull align 8 dereferenceable(8) %i.hj)
  br label %.loopexit342

bb.bw:                                            ; preds = %tailrecurse
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 960
  %i.hm = tail call noundef ptr @_ZN5clang7CodeGen11CGDebugInfo24getOrCreateStructPtrTypeEN4llvm9StringRefERPNS2_6DITypeE(ptr noundef nonnull align 8 dereferenceable(2480) %0, ptr nonnull @.str.56, i64 66, ptr noundef nonnull align 8 dereferenceable(8) %i.hl)
  br label %.loopexit342

bb.bx:                                            ; preds = %tailrecurse
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 968
  %i.ho = tail call noundef ptr @_ZN5clang7CodeGen11CGDebugInfo24getOrCreateStructPtrTypeEN4llvm9StringRefERPNS2_6DITypeE(ptr noundef nonnull align 8 dereferenceable(2480) %0, ptr nonnull @.str.57, i64 64, ptr noundef nonnull align 8 dereferenceable(8) %i.hn)
  br label %.loopexit342

bb.by:                                            ; preds = %tailrecurse
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 976
  %i.hq = tail call noundef ptr @_ZN5clang7CodeGen11CGDebugInfo24getOrCreateStructPtrTypeEN4llvm9StringRefERPNS2_6DITypeE(ptr noundef nonnull align 8 dereferenceable(2480) %0, ptr nonnull @.str.58, i64 58, ptr noundef nonnull align 8 dereferenceable(8) %i.hp)
  br label %.loopexit342

bb.bz:                                            ; preds = %tailrecurse
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 984
  %i.hs = tail call noundef ptr @_ZN5clang7CodeGen11CGDebugInfo24getOrCreateStructPtrTypeEN4llvm9StringRefERPNS2_6DITypeE(ptr noundef nonnull align 8 dereferenceable(2480) %0, ptr nonnull @.str.59, i64 56, ptr noundef nonnull align 8 dereferenceable(8) %i.hr)
  br label %.loopexit342

bb.ca:                                            ; preds = %tailrecurse
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 1032
  %i.hu = tail call noundef ptr @_ZN5clang7CodeGen11CGDebugInfo24getOrCreateStructPtrTypeEN4llvm9StringRefERPNS2_6DITypeE(ptr noundef nonnull align 8 dereferenceable(2480) %0, ptr nonnull @.str.60, i64 17, ptr noundef nonnull align 8 dereferenceable(8) %i.ht)
  br label %.loopexit342

bb.cb:                                            ; preds = %tailrecurse
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  %i.hv = getelementptr inbounds nuw i8, ptr %i.d, i64 152
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !979, !nonnull !494, !align !495 ; 2 uses
  %i.hx = load i64, ptr %i.hw, align 8            ; 11 uses
  %i.hy = lshr i64 %i.hx, 3
  %i.hz = and i64 %i.hy, 512
  %i.ia = lshr i64 %i.hx, 5
  %i.ib = and i64 %i.ia, 8388608
  %i.ic = or disjoint i64 %i.hz, %i.ib
  %i.id = and i64 %i.hx, 8192
  %.not.i = icmp eq i64 %i.id, 0
  %i.ie = shl i64 %i.hx, 21
  %i.if = and i64 %i.ie, 16777216
  %i.ig = select i1 %.not.i, i64 %i.if, i64 16777216
  %i.ih = shl i64 %i.hx, 13
  %i.ii = and i64 %i.ih, 33554432
  %i.ij = or disjoint i64 %i.ig, %i.ii
  %i.ik = shl i64 %i.hx, 26
  %i.il = and i64 %i.ik, 67108864
  %i.im = or disjoint i64 %i.ij, %i.il
  %i.in = shl i64 %i.hx, 14
  %i.io = and i64 %i.in, 134217728
  %i.ip = or disjoint i64 %i.im, %i.io
  %i.iq = shl i64 %i.hx, 27
  %i.ir = and i64 %i.iq, 268435456
  %i.is = or disjoint i64 %i.ip, %i.ir
  %i.it = shl i64 %i.hx, 17
  %i.iu = and i64 %i.it, 1610612736
  %i.iv = shl i64 %i.hx, 4                        ; 2 uses
  %i.iw = and i64 %i.iv, 8589934592
  %i.ix = and i64 %i.hx, 128
  %.not17.i = icmp eq i64 %i.ix, 0
  %i.iy = and i64 %i.iv, 17179869184
  %i.iz = xor i64 %i.iy, 112201725640704
  %i.ja = select i1 %.not17.i, i64 112184545771520, i64 %i.iz
  %i.jb = getelementptr inbounds nuw i8, ptr %i.hw, i64 80
  %i.jc = load i64, ptr %i.jb, align 8
  %i.jd = shl i64 %i.jc, 7
  %i.je = and i64 %i.jd, 140737488355328
  %.masked.masked.masked = or i64 %i.is, %i.iu
  %.masked1080.masked = or i64 %.masked.masked.masked, %i.iw
  %.masked = or i64 %i.ic, %.masked1080.masked
  %i.jf = or i64 %.masked, %i.ja
  %i.jg = or i64 %i.jf, %i.je
  %i.jh = xor i64 %i.jg, 1615085570
  store i64 %i.jh, ptr %7, align 8
  %i.ji = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr null, ptr %i.ji, align 8, !tbaa !2693
  %i.jj = call { ptr, i64 } @_ZNK5clang11BuiltinType7getNameERKNS_14PrintingPolicyE(ptr noundef nonnull align 16 dereferenceable(24) %.tr341, ptr noundef nonnull align 8 dereferenceable(16) %7) #28 ; 2 uses
  %i.jk = extractvalue { ptr, i64 } %i.jj, 0
  %i.jl = extractvalue { ptr, i64 } %i.jj, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  %i.jm = load ptr, ptr %0, align 8, !tbaa !604, !nonnull !494, !align !495
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 144
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !605, !nonnull !494, !align !495
  %i.jp = call { i64, i64 } @_ZNK5clang10ASTContext11getTypeInfoEPKNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(23904) %i.jo, ptr noundef nonnull %.tr341) #28
  %i.jq = extractvalue { i64, i64 } %i.jp, 0
  %i.jr = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.js = call noundef ptr @_ZN4llvm9DIBuilder15createBasicTypeENS_9StringRefEmjNS_6DINode7DIFlagsEjj(ptr noundef nonnull align 8 dereferenceable(384) %i.jr, ptr %i.jk, i64 %i.jl, i64 noundef %i.jq, i32 noundef 8, i32 noundef 0, i32 noundef 0, i32 noundef 0) #28
  br label %.loopexit342

bb.cc:                                            ; preds = %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  %i.jt = icmp eq i32 %i.i, 103
  %i.ju = load ptr, ptr %i.e, align 8, !tbaa !605, !nonnull !494, !align !495 ; 2 uses
  br i1 %i.jt, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 18904
  %.sroa.0.0.copyload.i104 = load i64, ptr %i.jv, align 8, !tbaa !984
  store i64 %.sroa.0.0.copyload.i104, ptr %8, align 8, !tbaa !984
  %i.jw = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 16, ptr %i.jw, align 8
  %i.jx = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i32 1, ptr %i.jx, align 8, !tbaa !2697
  br label %bb.cf

bb.ce:                                            ; preds = %bb.cc
  %i.jy = getelementptr inbounds nuw i8, ptr %.tr341, i64 16
  call void @_ZNK5clang10ASTContext24getBuiltinVectorTypeInfoEPKNS_11BuiltinTypeE(ptr dead_on_unwind nonnull writable sret(%"struct.clang::ASTContext::BuiltinVectorTypeInfo") align 8 %8, ptr noundef nonnull align 8 dereferenceable(23904) %i.ju, ptr noundef nonnull %.tr341) #28
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !2698
  %.phi.trans.insert732 = getelementptr inbounds nuw i8, ptr %8, i64 16
  %.pre733 = load i32, ptr %.phi.trans.insert732, align 8, !tbaa !2697
  %.pre734 = load i32, ptr %i.jy, align 16
  %.pre738 = lshr i32 %.pre734, 19
  %i.jz = mul i32 %.pre733, %.pre
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cd
  %.pre-phi739 = phi i32 [ %.pre738, %bb.ce ], [ %i.h, %bb.cd ]
  %i.ka = phi i32 [ %i.jz, %bb.ce ], [ 16, %bb.cd ] ; 3 uses
  %i.kb = and i32 %.pre-phi739, 1023
  switch i32 %i.kb, label %bb.ci [
    i32 100, label %bb.cg
    i32 103, label %bb.ch
  ]

bb.cg:                                            ; preds = %bb.cf
  %i.kc = load ptr, ptr %0, align 8, !tbaa !604, !nonnull !494, !align !495 ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 144
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !605, !nonnull !494, !align !495
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 19016
  %.sroa.0.0.copyload.i105 = load i64, ptr %i.kf, align 8, !tbaa !984
  store i64 %.sroa.0.0.copyload.i105, ptr %8, align 8, !tbaa !984
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kc, i64 232
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !1296, !nonnull !494, !align !495
  %i.ki = call noundef ptr @_ZN4llvm4Type10getInt64TyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.kh) #28
  %i.kj = call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_11IntegerTypeEmbb(ptr noundef %i.ki, i64 noundef 1, i1 noundef zeroext true, i1 noundef zeroext false) #28
  %i.kk = call noundef ptr @_ZN4llvm15ValueAsMetadata3getEPNS_5ValueE(ptr noundef %i.kj) #28
  br label %bb.ci

bb.ch:                                            ; preds = %bb.cf
  %i.kl = lshr i32 %i.ka, 3
  %i.km = load ptr, ptr %0, align 8, !tbaa !604, !nonnull !494, !align !495
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 144
  %i.ko = load ptr, ptr %i.kn, align 8, !tbaa !605, !nonnull !494, !align !495
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 19016
  %.sroa.0.0.copyload.i106 = load i64, ptr %i.kp, align 8, !tbaa !984
  store i64 %.sroa.0.0.copyload.i106, ptr %8, align 8, !tbaa !984
  br label %bb.ci

bb.ci:                                            ; preds = %bb.cf, %bb.ch, %bb.cg
  %.073 = phi ptr [ %i.kk, %bb.cg ], [ null, %bb.ch ], [ null, %bb.cf ]
  %.072 = phi i32 [ %i.ka, %bb.cg ], [ %i.kl, %bb.ch ], [ %i.ka, %bb.cf ] ; 2 uses
  %i.kq = load ptr, ptr %0, align 8, !tbaa !604, !nonnull !494, !align !495
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 232
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !1296, !nonnull !494, !align !495
  %i.kt = call noundef ptr @_ZN4llvm4Type10getInt64TyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.ks) #28
  %i.ku = call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_11IntegerTypeEmbb(ptr noundef %i.kt, i64 noundef 0, i1 noundef zeroext true, i1 noundef zeroext false) #28
  %i.kv = call noundef ptr @_ZN4llvm15ValueAsMetadata3getEPNS_5ValueE(ptr noundef %i.ku) #28
  %i.kw = getelementptr inbounds nuw i8, ptr %8, i64 12
  %i.kx = load i8, ptr %i.kw, align 4, !tbaa !2699, !range !987, !noundef !494
  %i.ky = trunc nuw i8 %i.kx to i1
  br i1 %i.ky, label %bb.cj, label %bb.cl

bb.cj:                                            ; preds = %bb.ci
  %i.kz = lshr i32 %.072, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  %i.la = zext nneg i32 %i.kz to i64
  %i.lb = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  store ptr %i.lb, ptr %9, align 8, !tbaa !597
  %i.lc = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ld = getelementptr inbounds nuw i8, ptr %9, i64 12
  store i32 9, ptr %i.ld, align 4, !tbaa !599
  store i64 16, ptr %i.lb, align 8
  %.sroa.4194.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 24
  store i64 %i.la, ptr %.sroa.4194.0..sroa_idx, align 8
  %.sroa.5195.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i64 146, ptr %.sroa.5195.0..sroa_idx, align 8
  %.sroa.6196.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 40
  store i64 46, ptr %.sroa.6196.0..sroa_idx, align 8
  %.sroa.7197.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 48
  store i64 0, ptr %.sroa.7197.0..sroa_idx, align 8
  %.sroa.8198.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 56
  store i64 30, ptr %.sroa.8198.0..sroa_idx, align 8
  %.sroa.9199.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 64
  store i64 16, ptr %.sroa.9199.0..sroa_idx, align 8
  %.sroa.10200.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 72
  store i64 1, ptr %.sroa.10200.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 80
  store i64 28, ptr %.sroa.11.0..sroa_idx, align 8
  store i32 9, ptr %i.lc, align 8, !tbaa !598
  %i.le = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.lf = call noundef ptr @_ZN4llvm9DIBuilder16createExpressionENS_8ArrayRefImEE(ptr noundef nonnull align 8 dereferenceable(384) %i.le, ptr nonnull %i.lb, i64 9) #28
  %i.lg = load ptr, ptr %9, align 8, !tbaa !597   ; 2 uses
  %i.lh = icmp eq ptr %i.lg, %i.lb
  br i1 %i.lh, label %_ZN4llvm11SmallVectorImLj9EED2Ev.exit, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  call void @free(ptr noundef %i.lg) #28
  br label %_ZN4llvm11SmallVectorImLj9EED2Ev.exit

_ZN4llvm11SmallVectorImLj9EED2Ev.exit:            ; preds = %bb.cj, %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br label %bb.cm

bb.cl:                                            ; preds = %bb.ci
  %i.li = load ptr, ptr %0, align 8, !tbaa !604, !nonnull !494, !align !495
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 232
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !1296, !nonnull !494, !align !495
  %i.ll = call noundef ptr @_ZN4llvm4Type10getInt64TyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.lk) #28
  %i.lm = add i32 %.072, -1
  %i.ln = zext i32 %i.lm to i64
  %i.lo = call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_11IntegerTypeEmbb(ptr noundef %i.ll, i64 noundef %i.ln, i1 noundef zeroext true, i1 noundef zeroext false) #28
  %i.lp = call noundef ptr @_ZN4llvm15ValueAsMetadata3getEPNS_5ValueE(ptr noundef %i.lo) #28
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %_ZN4llvm11SmallVectorImLj9EED2Ev.exit
  %.074 = phi ptr [ %i.lf, %_ZN4llvm11SmallVectorImLj9EED2Ev.exit ], [ %i.lp, %bb.cl ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %i.lq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.lr = call noundef ptr @_ZN4llvm9DIBuilder19getOrCreateSubrangeEPNS_8MetadataES2_S2_S2_(ptr noundef nonnull align 8 dereferenceable(384) %i.lq, ptr noundef null, ptr noundef %i.kv, ptr noundef %.074, ptr noundef null) #28
  store ptr %i.lr, ptr %i.b, align 8, !tbaa !1506
  %i.ls = call ptr @_ZN4llvm9DIBuilder16getOrCreateArrayENS_8ArrayRefIPNS_8MetadataEEE(ptr noundef nonnull align 8 dereferenceable(384) %i.lq, ptr nonnull %i.b, i64 1) #28
  %.sroa.027.0.copyload = load i64, ptr %8, align 8, !tbaa !984
  %i.lt = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.lu = load ptr, ptr %i.lt, align 8, !tbaa !1017 ; 4 uses
  %i.lv = load i8, ptr %i.lu, align 4, !tbaa !1311
  %i.lw = icmp eq i8 %i.lv, 16
  br i1 %i.lw, label %_ZNK4llvm7DIScope7getFileEv.exit110, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.lx = getelementptr inbounds i8, ptr %i.lu, i64 -16 ; 2 uses
  %i.ly = load i64, ptr %i.lx, align 8            ; 2 uses
  %i.lz = and i64 %i.ly, 2
  %.not.i.i.i.i107 = icmp eq i64 %i.lz, 0
  br i1 %.not.i.i.i.i107, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.ma = getelementptr inbounds i8, ptr %i.lu, i64 -32
  %i.mb = load ptr, ptr %i.ma, align 8, !tbaa !597
  br label %_ZNK4llvm6MDNode10getOperandEj.exit.i.i108

bb.cp:                                            ; preds = %bb.cn
  %i.mc = lshr i64 %i.ly, 2
  %i.md = and i64 %i.mc, 15
  %i.me = sub nsw i64 0, %i.md
  %i.mf = getelementptr inbounds [8 x i8], ptr %i.lx, i64 %i.me
  br label %_ZNK4llvm6MDNode10getOperandEj.exit.i.i108

_ZNK4llvm6MDNode10getOperandEj.exit.i.i108:       ; preds = %bb.cp, %bb.co
  %.sroa.0.0.i.i.i.i109 = phi ptr [ %i.mf, %bb.cp ], [ %i.mb, %bb.co ]
  %i.mg = load ptr, ptr %.sroa.0.0.i.i.i.i109, align 8, !tbaa !1304
  br label %_ZNK4llvm7DIScope7getFileEv.exit110

_ZNK4llvm7DIScope7getFileEv.exit110:              ; preds = %bb.cm, %_ZNK4llvm6MDNode10getOperandEj.exit.i.i108
  %i.mh = phi ptr [ %i.mg, %_ZNK4llvm6MDNode10getOperandEj.exit.i.i108 ], [ %i.lu, %bb.cm ]
  %i.mi = call noundef ptr @_ZN5clang7CodeGen11CGDebugInfo15getOrCreateTypeENS_8QualTypeEPN4llvm6DIFileE(ptr noundef nonnull align 8 dereferenceable(2480) %0, i64 %.sroa.027.0.copyload, ptr noundef %i.mh)
  %i.mj = load ptr, ptr %0, align 8, !tbaa !604, !nonnull !494, !align !495
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 144
  %i.ml = load ptr, ptr %i.mk, align 8, !tbaa !605, !nonnull !494, !align !495
  %i.mm = call { i64, i64 } @_ZNK5clang10ASTContext11getTypeInfoEPKNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(23904) %i.ml, ptr noundef nonnull %.tr341) #28
  %i.mn = extractvalue { i64, i64 } %i.mm, 1      ; 3 uses
  %.not.i111 = icmp ult i64 %i.mn, 4294967296
  br i1 %.not.i111, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %_ZNK4llvm7DIScope7getFileEv.exit110
  %.sroa.3.8.extract.trunc11.i = trunc i64 %i.mn to i32
  br label %_ZL22getTypeAlignIfRequiredPKN5clang4TypeERKNS_10ASTContextE.exit

bb.cr:                                            ; preds = %_ZNK4llvm7DIScope7getFileEv.exit110
  %i.mo = getelementptr inbounds nuw i8, ptr %.tr341, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.mo, align 8, !tbaa !984
  %i.mp = and i64 %.sroa.0.0.copyload.i.i.i.i.i, -16
end_hunk_0
begin_hunk_1_@_ZN5clang7CodeGen11CGDebugInfo10CreateTypeEPKNS_11BuiltinTypeE:bb.a
  %i.ro = load ptr, ptr %i.rn, align 8, !tbaa !2700 ; 2 uses
  %.not83 = icmp eq ptr %i.ro, null
  br i1 %.not83, label %bb.dj, label %.loopexit342

bb.dj:                                            ; preds = %bb.di
  %i.rp = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.rq = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.rr = load ptr, ptr %i.rq, align 8, !tbaa !1017 ; 5 uses
  %i.rs = load i8, ptr %i.rr, align 4, !tbaa !1311
  %i.rt = icmp eq i8 %i.rs, 16
  br i1 %i.rt, label %_ZNK4llvm7DIScope7getFileEv.exit152, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.ru = getelementptr inbounds i8, ptr %i.rr, i64 -16 ; 2 uses
  %i.rv = load i64, ptr %i.ru, align 8            ; 2 uses
  %i.rw = and i64 %i.rv, 2
  %.not.i.i.i.i149 = icmp eq i64 %i.rw, 0
  br i1 %.not.i.i.i.i149, label %bb.dm, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.rx = getelementptr inbounds i8, ptr %i.rr, i64 -32
  %i.ry = load ptr, ptr %i.rx, align 8, !tbaa !597
  br label %_ZNK4llvm6MDNode10getOperandEj.exit.i.i150

bb.dm:                                            ; preds = %bb.dk
  %i.rz = lshr i64 %i.rv, 2
  %i.sa = and i64 %i.rz, 15
  %i.sb = sub nsw i64 0, %i.sa
  %i.sc = getelementptr inbounds [8 x i8], ptr %i.ru, i64 %i.sb
  br label %_ZNK4llvm6MDNode10getOperandEj.exit.i.i150

_ZNK4llvm6MDNode10getOperandEj.exit.i.i150:       ; preds = %bb.dm, %bb.dl
  %.sroa.0.0.i.i.i.i151 = phi ptr [ %i.sc, %bb.dm ], [ %i.ry, %bb.dl ]
  %i.sd = load ptr, ptr %.sroa.0.0.i.i.i.i151, align 8, !tbaa !1304
  br label %_ZNK4llvm7DIScope7getFileEv.exit152

_ZNK4llvm7DIScope7getFileEv.exit152:              ; preds = %bb.dj, %_ZNK4llvm6MDNode10getOperandEj.exit.i.i150
  %i.se = phi ptr [ %i.sd, %_ZNK4llvm6MDNode10getOperandEj.exit.i.i150 ], [ %i.rr, %bb.dj ]
  store ptr @.str.1, ptr %12, align 8, !tbaa !1009
  %i.sf = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 0, ptr %i.sf, align 8, !tbaa !1008
  %i.sg = tail call noundef ptr @_ZN4llvm9DIBuilder17createForwardDeclEjNS_9StringRefEPNS_7DIScopeEPNS_6DIFileEjjmjS1_St8optionalIjE(ptr noundef nonnull align 8 dereferenceable(384) %i.rp, i32 noundef 19, ptr nonnull @.str.61, i64 11, ptr noundef nonnull %i.rr, ptr noundef %i.se, i32 noundef 0, i32 noundef 0, i64 noundef 0, i32 noundef 0, ptr noundef nonnull byval(%"class.llvm::StringRef") align 8 %12, i64 0) #28 ; 2 uses
  store ptr %i.sg, ptr %i.rn, align 8, !tbaa !2700
  br label %.loopexit342

bb.dn:                                            ; preds = %tailrecurse
  %i.sh = getelementptr inbounds nuw i8, ptr %0, i64 1000 ; 2 uses
  %i.si = load ptr, ptr %i.sh, align 8, !tbaa !2701 ; 2 uses
  %.not82 = icmp eq ptr %i.si, null
  br i1 %.not82, label %bb.do, label %.loopexit342

bb.do:                                            ; preds = %bb.dn
  %i.sj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.sk = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.sl = load ptr, ptr %i.sk, align 8, !tbaa !1017 ; 5 uses
  %i.sm = load i8, ptr %i.sl, align 4, !tbaa !1311
  %i.sn = icmp eq i8 %i.sm, 16
  br i1 %i.sn, label %_ZNK4llvm7DIScope7getFileEv.exit156, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.so = getelementptr inbounds i8, ptr %i.sl, i64 -16 ; 2 uses
  %i.sp = load i64, ptr %i.so, align 8            ; 2 uses
  %i.sq = and i64 %i.sp, 2
  %.not.i.i.i.i153 = icmp eq i64 %i.sq, 0
  br i1 %.not.i.i.i.i153, label %bb.dr, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.sr = getelementptr inbounds i8, ptr %i.sl, i64 -32
  %i.ss = load ptr, ptr %i.sr, align 8, !tbaa !597
  br label %_ZNK4llvm6MDNode10getOperandEj.exit.i.i154

bb.dr:                                            ; preds = %bb.dp
  %i.st = lshr i64 %i.sp, 2
  %i.su = and i64 %i.st, 15
  %i.sv = sub nsw i64 0, %i.su
  %i.sw = getelementptr inbounds [8 x i8], ptr %i.so, i64 %i.sv
  br label %_ZNK4llvm6MDNode10getOperandEj.exit.i.i154

_ZNK4llvm6MDNode10getOperandEj.exit.i.i154:       ; preds = %bb.dr, %bb.dq
  %.sroa.0.0.i.i.i.i155 = phi ptr [ %i.sw, %bb.dr ], [ %i.ss, %bb.dq ]
  %i.sx = load ptr, ptr %.sroa.0.0.i.i.i.i155, align 8, !tbaa !1304
  br label %_ZNK4llvm7DIScope7getFileEv.exit156

_ZNK4llvm7DIScope7getFileEv.exit156:              ; preds = %bb.do, %_ZNK4llvm6MDNode10getOperandEj.exit.i.i154
  %i.sy = phi ptr [ %i.sx, %_ZNK4llvm6MDNode10getOperandEj.exit.i.i154 ], [ %i.sl, %bb.do ]
  store ptr @.str.1, ptr %13, align 8, !tbaa !1009
  %i.sz = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 0, ptr %i.sz, align 8, !tbaa !1008
  %i.ta = tail call noundef ptr @_ZN4llvm9DIBuilder17createForwardDeclEjNS_9StringRefEPNS_7DIScopeEPNS_6DIFileEjjmjS1_St8optionalIjE(ptr noundef nonnull align 8 dereferenceable(384) %i.sj, i32 noundef 19, ptr nonnull @.str.62, i64 22, ptr noundef nonnull %i.sl, ptr noundef %i.sy, i32 noundef 0, i32 noundef 0, i64 noundef 0, i32 noundef 0, ptr noundef nonnull byval(%"class.llvm::StringRef") align 8 %13, i64 0) #28 ; 2 uses
  store ptr %i.ta, ptr %i.sh, align 8, !tbaa !2701
  br label %.loopexit342

bb.ds:                                            ; preds = %tailrecurse
  %i.tb = getelementptr inbounds nuw i8, ptr %0, i64 1008 ; 2 uses
  %i.tc = load ptr, ptr %i.tb, align 8, !tbaa !2702 ; 2 uses
  %.not81 = icmp eq ptr %i.tc, null
  br i1 %.not81, label %bb.dt, label %.loopexit342

bb.dt:                                            ; preds = %bb.ds
  %i.td = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.te = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.tf = load ptr, ptr %i.te, align 8, !tbaa !1017 ; 5 uses
  %i.tg = load i8, ptr %i.tf, align 4, !tbaa !1311
  %i.th = icmp eq i8 %i.tg, 16
  br i1 %i.th, label %_ZNK4llvm7DIScope7getFileEv.exit160, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.ti = getelementptr inbounds i8, ptr %i.tf, i64 -16 ; 2 uses
  %i.tj = load i64, ptr %i.ti, align 8            ; 2 uses
  %i.tk = and i64 %i.tj, 2
  %.not.i.i.i.i157 = icmp eq i64 %i.tk, 0
  br i1 %.not.i.i.i.i157, label %bb.dw, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.tl = getelementptr inbounds i8, ptr %i.tf, i64 -32
  %i.tm = load ptr, ptr %i.tl, align 8, !tbaa !597
  br label %_ZNK4llvm6MDNode10getOperandEj.exit.i.i158

bb.dw:                                            ; preds = %bb.du
  %i.tn = lshr i64 %i.tj, 2
  %i.to = and i64 %i.tn, 15
  %i.tp = sub nsw i64 0, %i.to
  %i.tq = getelementptr inbounds [8 x i8], ptr %i.ti, i64 %i.tp
  br label %_ZNK4llvm6MDNode10getOperandEj.exit.i.i158

_ZNK4llvm6MDNode10getOperandEj.exit.i.i158:       ; preds = %bb.dw, %bb.dv
  %.sroa.0.0.i.i.i.i159 = phi ptr [ %i.tq, %bb.dw ], [ %i.tm, %bb.dv ]
  %i.tr = load ptr, ptr %.sroa.0.0.i.i.i.i159, align 8, !tbaa !1304
  br label %_ZNK4llvm7DIScope7getFileEv.exit160

_ZNK4llvm7DIScope7getFileEv.exit160:              ; preds = %bb.dt, %_ZNK4llvm6MDNode10getOperandEj.exit.i.i158
  %i.ts = phi ptr [ %i.tr, %_ZNK4llvm6MDNode10getOperandEj.exit.i.i158 ], [ %i.tf, %bb.dt ]
  store ptr @.str.1, ptr %14, align 8, !tbaa !1009
  %i.tt = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 0, ptr %i.tt, align 8, !tbaa !1008
  %i.tu = tail call noundef ptr @_ZN4llvm9DIBuilder17createForwardDeclEjNS_9StringRefEPNS_7DIScopeEPNS_6DIFileEjjmjS1_St8optionalIjE(ptr noundef nonnull align 8 dereferenceable(384) %i.td, i32 noundef 19, ptr nonnull @.str.63, i64 18, ptr noundef nonnull %i.tf, ptr noundef %i.ts, i32 noundef 0, i32 noundef 0, i64 noundef 0, i32 noundef 0, ptr noundef nonnull byval(%"class.llvm::StringRef") align 8 %14, i64 0) #28 ; 2 uses
  store ptr %i.tu, ptr %i.tb, align 8, !tbaa !2702
  br label %.loopexit342

bb.dx:                                            ; preds = %tailrecurse
  %i.tv = getelementptr inbounds nuw i8, ptr %0, i64 1016 ; 2 uses
  %i.tw = load ptr, ptr %i.tv, align 8, !tbaa !2703 ; 2 uses
  %.not80 = icmp eq ptr %i.tw, null
  br i1 %.not80, label %bb.dy, label %.loopexit342

bb.dy:                                            ; preds = %bb.dx
  %i.tx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ty = tail call noundef ptr @_ZN4llvm9DIBuilder15createBasicTypeENS_9StringRefEmjNS_6DINode7DIFlagsEjj(ptr noundef nonnull align 8 dereferenceable(384) %i.tx, ptr nonnull @.str.64, i64 34, i64 noundef 128, i32 noundef 7, i32 noundef 0, i32 noundef 0, i32 noundef 0) #28 ; 2 uses
  store ptr %i.ty, ptr %i.tv, align 8, !tbaa !2703
  br label %.loopexit342

bb.dz:                                            ; preds = %tailrecurse
  %i.tz = getelementptr inbounds nuw i8, ptr %0, i64 1024 ; 2 uses
  %i.ua = load ptr, ptr %i.tz, align 8, !tbaa !2704 ; 2 uses
  %.not = icmp eq ptr %i.ua, null
  br i1 %.not, label %bb.ea, label %.loopexit342

bb.ea:                                            ; preds = %bb.dz
  %i.ub = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.uc = tail call noundef ptr @_ZN4llvm9DIBuilder15createBasicTypeENS_9StringRefEmjNS_6DINode7DIFlagsEjj(ptr noundef nonnull align 8 dereferenceable(384) %i.ub, ptr nonnull @.str.65, i64 28, i64 noundef 1, i32 noundef 2, i32 noundef 0, i32 noundef 0, i32 noundef 0) #28 ; 2 uses
  store ptr %i.uc, ptr %i.tz, align 8, !tbaa !2704
  br label %.loopexit342

bb.eb:                                            ; preds = %tailrecurse
  br label %bb.ef

bb.ec:                                            ; preds = %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse
  br label %bb.ef

bb.ed:                                            ; preds = %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse
  br label %bb.ef

bb.ee:                                            ; preds = %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse
  br label %bb.ef

.loopexit:                                        ; preds = %tailrecurse
  br label %bb.ef

.loopexit576:                                     ; preds = %tailrecurse, %tailrecurse
  br label %bb.ef

.loopexit769:                                     ; preds = %tailrecurse, %tailrecurse
  br label %bb.ef

.loopexit1087:                                    ; preds = %tailrecurse, %tailrecurse, %tailrecurse
  br label %bb.ef

.loopexit1322:                                    ; preds = %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse
  br label %bb.ef

bb.ef:                                            ; preds = %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse, %.loopexit1322, %.loopexit1087, %.loopexit769, %.loopexit576, %.loopexit, %bb.ee, %bb.ed, %bb.ec, %bb.eb
  %.071 = phi i32 [ 13, %bb.ed ], [ 14, %bb.ee ], [ 0, %.loopexit ], [ 8, %.loopexit576 ], [ 6, %.loopexit769 ], [ 16, %.loopexit1087 ], [ 7, %.loopexit1322 ], [ 2, %bb.eb ], [ 4, %bb.ec ], [ 5, %tailrecurse ], [ 5, %tailrecurse ], [ 5, %tailrecurse ], [ 5, %tailrecurse ], [ 5, %tailrecurse ], [ 5, %tailrecurse ]
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #28
  %i.ud = getelementptr inbounds nuw i8, ptr %i.d, i64 152
  %i.ue = load ptr, ptr %i.ud, align 8, !tbaa !979, !nonnull !494, !align !495 ; 2 uses
  %i.uf = load i64, ptr %i.ue, align 8            ; 11 uses
  %i.ug = lshr i64 %i.uf, 3
  %i.uh = and i64 %i.ug, 512
  %i.ui = lshr i64 %i.uf, 5
  %i.uj = and i64 %i.ui, 8388608
  %i.uk = or disjoint i64 %i.uh, %i.uj
  %i.ul = and i64 %i.uf, 8192
  %.not.i161 = icmp eq i64 %i.ul, 0
  %i.um = shl i64 %i.uf, 21
  %i.un = and i64 %i.um, 16777216
  %i.uo = select i1 %.not.i161, i64 %i.un, i64 16777216
  %i.up = shl i64 %i.uf, 13
  %i.uq = and i64 %i.up, 33554432
  %i.ur = or disjoint i64 %i.uo, %i.uq
  %i.us = shl i64 %i.uf, 26
  %i.ut = and i64 %i.us, 67108864
  %i.uu = or disjoint i64 %i.ur, %i.ut
  %i.uv = shl i64 %i.uf, 14
  %i.uw = and i64 %i.uv, 134217728
  %i.ux = or disjoint i64 %i.uu, %i.uw
  %i.uy = shl i64 %i.uf, 27
  %i.uz = and i64 %i.uy, 268435456
  %i.va = or disjoint i64 %i.ux, %i.uz
  %i.vb = shl i64 %i.uf, 17
  %i.vc = and i64 %i.vb, 1610612736
  %i.vd = shl i64 %i.uf, 4                        ; 2 uses
  %i.ve = and i64 %i.vd, 8589934592
  %i.vf = and i64 %i.uf, 128
  %.not17.i162 = icmp eq i64 %i.vf, 0
  %i.vg = and i64 %i.vd, 17179869184
  %i.vh = xor i64 %i.vg, 112201725640704
  %i.vi = select i1 %.not17.i162, i64 112184545771520, i64 %i.vh
  %i.vj = getelementptr inbounds nuw i8, ptr %i.ue, i64 80
  %i.vk = load i64, ptr %i.vj, align 8
  %i.vl = shl i64 %i.vk, 7
  %i.vm = and i64 %i.vl, 140737488355328
  %.masked767.masked.masked = or i64 %i.va, %i.vc
  %.masked1083.masked = or i64 %.masked767.masked.masked, %i.ve
  %.masked1085 = or i64 %i.uk, %.masked1083.masked
  %i.vn = or i64 %.masked1085, %i.vi
  %i.vo = or i64 %i.vn, %i.vm
  %i.vp = xor i64 %i.vo, 1615085570
  store i64 %i.vp, ptr %15, align 8
  %i.vq = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr null, ptr %i.vq, align 8, !tbaa !2693
  %i.vr = call { ptr, i64 } @_ZNK5clang11BuiltinType7getNameERKNS_14PrintingPolicyE(ptr noundef nonnull align 16 dereferenceable(24) %.tr341, ptr noundef nonnull align 8 dereferenceable(16) %15) #28 ; 2 uses
  %i.vs = extractvalue { ptr, i64 } %i.vr, 0
  %i.vt = extractvalue { ptr, i64 } %i.vr, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
  %i.vu = load ptr, ptr %0, align 8, !tbaa !604, !nonnull !494, !align !495
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vu, i64 144
  %i.vw = load ptr, ptr %i.vv, align 8, !tbaa !605, !nonnull !494, !align !495
  %i.vx = call { i64, i64 } @_ZNK5clang10ASTContext11getTypeInfoEPKNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(23904) %i.vw, ptr noundef nonnull %.tr341) #28
  %i.vy = extractvalue { i64, i64 } %i.vx, 0
  %i.vz = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.wa = call noundef ptr @_ZN4llvm9DIBuilder15createBasicTypeENS_9StringRefEmjNS_6DINode7DIFlagsEjj(ptr noundef nonnull align 8 dereferenceable(384) %i.vz, ptr %i.vs, i64 %i.vt, i64 noundef %i.vy, i32 noundef %.071, i32 noundef 0, i32 noundef 0, i32 noundef 0) #28
  br label %.loopexit342

.loopexit342:                                     ; preds = %tailrecurse, %bb.dz, %bb.ea, %bb.dx, %bb.dy, %bb.ds, %_ZNK4llvm7DIScope7getFileEv.exit160, %bb.dn, %_ZNK4llvm7DIScope7getFileEv.exit156, %bb.di, %_ZNK4llvm7DIScope7getFileEv.exit152, %bb.u, %_ZNK4llvm7DIScope7getFileEv.exit103, %bb.c, %_ZNK4llvm7DIScope7getFileEv.exit, %bb.h, %bb.ef, %_ZN4llvm11SmallVectorImLj12EED2Ev.exit, %_ZL22getTypeAlignIfRequiredPKN5clang4TypeERKNS_10ASTContextE.exit, %bb.cb, %bb.ca, %bb.bz, %bb.by, %bb.bx, %bb.bw, %bb.bv, %bb.bu, %bb.bt, %bb.bs, %bb.br, %bb.bq, %bb.bp, %bb.bo, %bb.bn, %bb.bm, %bb.bl, %bb.bk, %bb.bj, %bb.bi, %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %_ZNK4llvm7DIScope7getFileEv.exit99, %bb.b
  %.0 = phi ptr [ %i.wa, %bb.ef ], [ %i.k, %bb.b ], [ %i.tw, %bb.dx ], [ %i.ua, %bb.dz ], [ %i.tc, %bb.ds ], [ %i.cw, %_ZNK4llvm7DIScope7getFileEv.exit99 ], [ %i.m, %bb.c ], [ %i.ds, %bb.z ], [ %i.du, %bb.aa ], [ %i.dw, %bb.ab ], [ %i.dy, %bb.ac ], [ %i.ea, %bb.ad ], [ %i.ec, %bb.ae ], [ %i.ee, %bb.af ], [ %i.eg, %bb.ag ], [ %i.ei, %bb.ah ], [ %i.ek, %bb.ai ], [ %i.em, %bb.aj ], [ %i.eo, %bb.ak ], [ %i.eq, %bb.al ], [ %i.es, %bb.am ], [ %i.eu, %bb.an ], [ %i.ew, %bb.ao ], [ %i.ey, %bb.ap ], [ %i.fa, %bb.aq ], [ %i.fc, %bb.ar ], [ %i.fe, %bb.as ], [ %i.fg, %bb.at ], [ %i.fi, %bb.au ], [ %i.fk, %bb.av ], [ %i.fm, %bb.aw ], [ %i.fo, %bb.ax ], [ %i.fq, %bb.ay ], [ %i.fs, %bb.az ], [ %i.fu, %bb.ba ], [ %i.fw, %bb.bb ], [ %i.fy, %bb.bc ], [ %i.ga, %bb.bd ], [ %i.gc, %bb.be ], [ %i.ge, %bb.bf ], [ %i.gg, %bb.bg ], [ %i.gi, %bb.bh ], [ %i.gk, %bb.bi ], [ %i.gm, %bb.bj ], [ %i.go, %bb.bk ], [ %i.gq, %bb.bl ], [ %i.gs, %bb.bm ], [ %i.gu, %bb.bn ], [ %i.gw, %bb.bo ], [ %i.gy, %bb.bp ], [ %i.ha, %bb.bq ], [ %i.hc, %bb.br ], [ %i.he, %bb.bs ], [ %i.hg, %bb.bt ], [ %i.hi, %bb.bu ], [ %i.hk, %bb.bv ], [ %i.hm, %bb.bw ], [ %i.ho, %bb.bx ], [ %i.hq, %bb.by ], [ %i.hs, %bb.bz ], [ %i.hu, %bb.ca ], [ %i.js, %bb.cb ], [ %i.nn, %_ZL22getTypeAlignIfRequiredPKN5clang4TypeERKNS_10ASTContextE.exit ], [ %i.ag, %bb.h ], [ %i.rk, %_ZN4llvm11SmallVectorImLj12EED2Ev.exit ], [ %i.cy, %bb.u ], [ %i.ro, %bb.di ], [ %i.si, %bb.dn ], [ %i.ae, %_ZNK4llvm7DIScope7getFileEv.exit ], [ %i.dq, %_ZNK4llvm7DIScope7getFileEv.exit103 ], [ %i.sg, %_ZNK4llvm7DIScope7getFileEv.exit152 ], [ %i.ta, %_ZNK4llvm7DIScope7getFileEv.exit156 ], [ %i.tu, %_ZNK4llvm7DIScope7getFileEv.exit160 ], [ %i.ty, %bb.dy ], [ %i.uc, %bb.ea ], [ null, %tailrecurse ]
  ret ptr %.0
}

declare noundef ptr @_ZN4llvm9DIBuilder17createNullPtrTypeEv(ptr noundef nonnull align 8 dereferenceable(384)) local_unnamed_addr #1

declare noundef ptr @_ZN4llvm9DIBuilder17createForwardDeclEjNS_9StringRefEPNS_7DIScopeEPNS_6DIFileEjjmjS1_St8optionalIjE(ptr noundef nonnull align 8 dereferenceable(384), i32 noundef, ptr, i64, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef, i32 noundef, ptr noundef byval(%"class.llvm::StringRef") align 8, i64) local_unnamed_addr #1

declare noundef ptr @_ZN4llvm9DIBuilder17createPointerTypeEPNS_6DITypeEmjSt8optionalIjENS_9StringRefENS_24MDTupleTypedArrayWrapperINS_6DINodeEEE(ptr noundef nonnull align 8 dereferenceable(384), ptr noundef, i64 noundef, i32 noundef, i64, ptr noundef byval(%"class.llvm::StringRef") align 8, ptr) local_unnamed_addr #1

declare noundef ptr @_ZN4llvm9DIBuilder16createStructTypeEPNS_7DIScopeENS_9StringRefEPNS_6DIFileEjmjNS_6DINode7DIFlagsEPNS_6DITypeENS_24MDTupleTypedArrayWrapperIS6_EEjS9_S3_S9_jSB_(ptr noundef nonnull align 8 dereferenceable(384), ptr noundef, ptr, i64, ptr noundef, i32 noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, i64, i32 noundef, ptr noundef, ptr noundef byval(%"class.llvm::StringRef") align 8, ptr noundef, i32 noundef, i64) local_unnamed_addr #1

declare void @_ZN4llvm9DIBuilder13replaceArraysERPNS_15DICompositeTypeENS_24MDTupleTypedArrayWrapperINS_6DINodeEEES6_(ptr noundef nonnull align 8 dereferenceable(384), ptr noundef nonnull align 8 dereferenceable(8), ptr, ptr) local_unnamed_addr #1

declare ptr @_ZN4llvm9DIBuilder16getOrCreateArrayENS_8ArrayRefIPNS_8MetadataEEE(ptr noundef nonnull align 8 dereferenceable(384), ptr, i64) local_unnamed_addr #1

declare noundef ptr @_ZN4llvm9DIBuilder16createMemberTypeEPNS_7DIScopeENS_9StringRefEPNS_6DIFileEjmjmNS_6DINode7DIFlagsEPNS_6DITypeENS_24MDTupleTypedArrayWrapperIS6_EE(ptr noundef nonnull align 8 dereferenceable(384), ptr noundef, ptr, i64, ptr noundef, i32 noundef, i64 noundef, i32 noundef, i64 noundef, i32 noundef, ptr noundef, i64) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN5clang7CodeGen11CGDebugInfo24getOrCreateStructPtrTypeEN4llvm9StringRefERPNS2_6DITypeE(ptr noundef nonnull align 8 dereferenceable(2480) %0, ptr %1, i64 %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.llvm::StringRef", align 8   ; 3 uses
  %5 = alloca %"class.llvm::StringRef", align 8   ; 3 uses
  %i.a = load ptr, ptr %3, align 8, !tbaa !1513   ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1017 ; 5 uses
  %i.e = load i8, ptr %i.d, align 4, !tbaa !1311
  %i.f = icmp eq i8 %i.e, 16
  br i1 %i.f, label %_ZNK4llvm7DIScope7getFileEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds i8, ptr %i.d, i64 -16 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8              ; 2 uses
  %i.i = and i64 %i.h, 2
  %.not.i.i.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds i8, ptr %i.d, i64 -32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !597
  br label %_ZNK4llvm6MDNode10getOperandEj.exit.i.i

bb.e:                                             ; preds = %bb.c
  %i.l = lshr i64 %i.h, 2
  %i.m = and i64 %i.l, 15
  %i.n = sub nsw i64 0, %i.m
  %i.o = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.n
  br label %_ZNK4llvm6MDNode10getOperandEj.exit.i.i

_ZNK4llvm6MDNode10getOperandEj.exit.i.i:          ; preds = %bb.e, %bb.d
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.o, %bb.e ], [ %i.k, %bb.d ]
  %i.p = load ptr, ptr %.sroa.0.0.i.i.i.i, align 8, !tbaa !1304
  br label %_ZNK4llvm7DIScope7getFileEv.exit

_ZNK4llvm7DIScope7getFileEv.exit:                 ; preds = %bb.b, %_ZNK4llvm6MDNode10getOperandEj.exit.i.i
  %i.q = phi ptr [ %i.p, %_ZNK4llvm6MDNode10getOperandEj.exit.i.i ], [ %i.d, %bb.b ]
  store ptr @.str.1, ptr %4, align 8, !tbaa !1009
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.r, align 8, !tbaa !1008
  %i.s = tail call noundef ptr @_ZN4llvm9DIBuilder17createForwardDeclEjNS_9StringRefEPNS_7DIScopeEPNS_6DIFileEjjmjS1_St8optionalIjE(ptr noundef nonnull align 8 dereferenceable(384) %i.b, i32 noundef 19, ptr %1, i64 %2, ptr noundef nonnull %i.d, ptr noundef %i.q, i32 noundef 0, i32 noundef 0, i64 noundef 0, i32 noundef 0, ptr noundef nonnull byval(%"class.llvm::StringRef") align 8 %4, i64 0) #28
  store ptr %i.s, ptr %3, align 8, !tbaa !1513
  %i.t = load ptr, ptr %0, align 8, !tbaa !604, !nonnull !494, !align !495
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 144
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !605, !nonnull !494, !align !495 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 19320
  %.sroa.0.0.copyload.i = load i64, ptr %i.w, align 8, !tbaa !984
  %i.x = and i64 %.sroa.0.0.copyload.i, -16
  %i.y = inttoptr i64 %i.x to ptr
  %i.z = load ptr, ptr %i.y, align 16, !tbaa !1439
  %i.aa = tail call { i64, i64 } @_ZNK5clang10ASTContext11getTypeInfoEPKNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(23904) %i.v, ptr noundef %i.z) #28
  %i.ab = extractvalue { i64, i64 } %i.aa, 0
  %i.ac = load ptr, ptr %3, align 8, !tbaa !1513
  %i.ad = and i64 %i.ab, 4294967295
  store ptr @.str.1, ptr %5, align 8, !tbaa !1009
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.ae, align 8, !tbaa !1008
  %i.af = tail call noundef ptr @_ZN4llvm9DIBuilder17createPointerTypeEPNS_6DITypeEmjSt8optionalIjENS_9StringRefENS_24MDTupleTypedArrayWrapperINS_6DINodeEEE(ptr noundef nonnull align 8 dereferenceable(384) %i.b, ptr noundef %i.ac, i64 noundef %i.ad, i32 noundef 0, i64 0, ptr noundef nonnull byval(%"class.llvm::StringRef") align 8 %5, ptr null) #28 ; 2 uses
  store ptr %i.af, ptr %3, align 8, !tbaa !1513
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %_ZNK4llvm7DIScope7getFileEv.exit
  %.0 = phi ptr [ %i.af, %_ZNK4llvm7DIScope7getFileEv.exit ], [ %i.a, %bb.a ]
  ret ptr %.0
}

declare { ptr, i64 } @_ZNK5clang11BuiltinType7getNameERKNS_14PrintingPolicyE(ptr noundef nonnull align 16 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

declare noundef ptr @_ZN4llvm9DIBuilder15createBasicTypeENS_9StringRefEmjNS_6DINode7DIFlagsEjj(ptr noundef nonnull align 8 dereferenceable(384), ptr, i64, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZNK5clang10ASTContext24getBuiltinVectorTypeInfoEPKNS_11BuiltinTypeE(ptr dead_on_unwind writable sret(%"struct.clang::ASTContext::BuiltinVectorTypeInfo") align 8, ptr noundef nonnull align 8 dereferenceable(23904), ptr noundef) local_unnamed_addr #1

declare noundef ptr @_ZN4llvm4Type10getInt64TyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare noundef ptr @_ZN4llvm9DIBuilder16createExpressionENS_8ArrayRefImEE(ptr noundef nonnull align 8 dereferenceable(384), ptr, i64) local_unnamed_addr #1

declare noundef ptr @_ZN4llvm9DIBuilder19getOrCreateSubrangeEPNS_8MetadataES2_S2_S2_(ptr noundef nonnull align 8 dereferenceable(384), ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare noundef ptr @_ZN4llvm9DIBuilder16createVectorTypeEmjPNS_6DITypeENS_24MDTupleTypedArrayWrapperINS_6DINodeEEEPNS_8MetadataE(ptr noundef nonnull align 8 dereferenceable(384), i64 noundef, i32 noundef, ptr noundef, ptr, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseImLb1EE9push_backEm(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !598  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !599
  %.not = icmp ult i32 %i.b, %i.d
  br i1 %.not, label %bb.c, label %bb.b, !prof !1309

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4llvm23SmallVectorTemplateBaseImLb1EE15growAndPushBackEm(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = zext i32 %i.b to i64
  %i.f = load ptr, ptr %0, align 8, !tbaa !597
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.e
  store i64 %1, ptr %i.g, align 1
  %i.h = load i32, ptr %i.a, align 8, !tbaa !598
  %i.i = add i32 %i.h, 1
  store i32 %i.i, ptr %i.a, align 8, !tbaa !598
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN5clang7CodeGen11CGDebugInfo10CreateTypeEPKNS_10BitIntTypeE(ptr noundef nonnull align 8 dereferenceable(2480) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallString.1368", align 8 ; 9 uses
  %3 = alloca %"class.llvm::raw_svector_ostream", align 8 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !601
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 0, ptr %i.b, align 8, !tbaa !602
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 32, ptr %i.c, align 8, !tbaa !603
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 2, ptr %i.d, align 8, !tbaa !1448
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i8 0, ptr %i.e, align 8, !tbaa !1449
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 44
  store i32 1, ptr %i.f, align 4, !tbaa !1450
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN4llvm19raw_svector_ostreamE, i64 16), ptr %3, align 8, !tbaa !596
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 48
  store ptr %2, ptr %i.h, align 8, !tbaa !1460
  call void @_ZN4llvm11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef null, i64 noundef 0, i32 noundef 0) #28
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.j = load i32, ptr %i.i, align 16
  %i.k = trunc i32 %i.j to i1                     ; 2 uses
  %i.l = select i1 %i.k, ptr @.str.66, ptr @.str.67 ; 2 uses
  %i.m = select i1 %i.k, i64 17, i64 8            ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1457
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !1458 ; 2 uses
  %i.r = ptrtoint ptr %i.o to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = icmp ugt i64 %i.m, %i.t
  br i1 %i.u, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.v = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull %i.l, i64 noundef %i.m) #28
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(8) %i.q, ptr noundef nonnull align 1 dereferenceable(8) %i.l, i64 %i.m, i1 false)
  %i.w = load ptr, ptr %i.p, align 8, !tbaa !1458
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.m
  store ptr %i.x, ptr %i.p, align 8, !tbaa !1458
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

end_hunk_1
