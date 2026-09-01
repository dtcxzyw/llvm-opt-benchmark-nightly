Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/OnDiskTrieRawHashMap?download=true
inline.NumInlined: 2310
inline.NumDeleted: 1149
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN4llvm3cas20OnDiskTrieRawHashMap10insertLazyENS_8ArrayRefIhEENS_12function_refIFvNS0_10FileOffsetENS1_10ValueProxyEEEENS4_IFvS5_S6_S5_S6_EEE:bb.a
  %i.gv = sub nuw nsw i64 8, %i.gp                ; 3 uses
  %i.gw = select i1 %.not42.peel.i5.i, i8 -1, i8 %i.gu
  %.032.peel.i6.i = and i8 %i.gq, %i.gw           ; 2 uses
  %i.gx = icmp ugt i64 %i.gv, %.val26.i
  %i.gy = sub nuw nsw i64 %i.gv, %.val26.i
  %i.gz = zext i8 %.032.peel.i6.i to i16
  %i.ha = trunc nuw nsw i64 %i.gy to i16
  %i.hb = lshr i16 %i.gz, %i.ha
  %i.hc = trunc nuw i16 %i.hb to i8
  %.1.peel.i7.i = select i1 %i.gx, i8 %i.hc, i8 %.032.peel.i6.i
  %.0.peel.i8.i = call i64 @llvm.umin.i64(i64 %i.gv, i64 %.val26.i) ; 2 uses
  %i.hd = zext i8 %.1.peel.i7.i to i32
  %i.he = trunc nuw nsw i64 %.0.peel.i8.i to i32
  %notmask.peel.i9.i = shl nsw i32 -1, %i.he
  %i.hf = xor i32 %notmask.peel.i9.i, -1
  %i.hg = and i32 %i.hd, %i.hf
  %i.hh = zext nneg i32 %i.hg to i64              ; 2 uses
  %i.hi = sub nuw i64 %.val26.i, %.0.peel.i8.i    ; 2 uses
  %.not43.not.peel.i10.i = icmp eq i64 %i.hi, 0
  %i.hj = add nuw nsw i64 %i.gm, 1
  %.not.peel.i11.i = icmp samesign eq i64 %i.hj, %i.gh
  %or.cond.i12.i = select i1 %.not43.not.peel.i10.i, i1 true, i1 %.not.peel.i11.i
  br i1 %or.cond.i12.i, label %_ZN4llvm22TrieHashIndexGenerator4nextEv.exit, label %.lr.ph.peel.next.i13.i

.lr.ph.peel.next.i13.i:                           ; preds = %.lr.ph.preheader.i4.i
  %i.hk = getelementptr inbounds nuw i8, ptr %i.gn, i64 1
  br label %.lr.ph.i14.i

.lr.ph.i14.i:                                     ; preds = %.lr.ph.i14.i, %.lr.ph.peel.next.i13.i
  %.03451.i15.i = phi ptr [ %i.ia, %.lr.ph.i14.i ], [ %i.hk, %.lr.ph.peel.next.i13.i ] ; 2 uses
  %.03550.i16.i = phi i64 [ %i.hy, %.lr.ph.i14.i ], [ %i.hh, %.lr.ph.peel.next.i13.i ]
  %.03948.i17.i = phi i64 [ %i.hz, %.lr.ph.i14.i ], [ %i.hi, %.lr.ph.peel.next.i13.i ] ; 4 uses
  %i.hl = load i8, ptr %.03451.i15.i, align 1, !tbaa !20 ; 2 uses
  %i.hm = icmp ult i64 %.03948.i17.i, 8
  %i.hn = zext i8 %i.hl to i16
  %i.ho = trunc i64 %.03948.i17.i to i16
  %i.hp = sub i16 8, %i.ho
  %i.hq = lshr i16 %i.hn, %i.hp
  %i.hr = trunc nuw i16 %i.hq to i8
  %.1.i18.i = select i1 %i.hm, i8 %i.hr, i8 %i.hl
  %.0.i19.i = call i64 @llvm.umin.i64(i64 %.03948.i17.i, i64 8) ; 3 uses
  %i.hs = shl i64 %.03550.i16.i, %.0.i19.i
  %i.ht = zext i8 %.1.i18.i to i32
  %i.hu = trunc nuw nsw i64 %.0.i19.i to i32
  %notmask.i20.i = shl nsw i32 -1, %i.hu
  %i.hv = xor i32 %notmask.i20.i, -1
  %i.hw = and i32 %i.ht, %i.hv
  %i.hx = zext nneg i32 %i.hw to i64
  %i.hy = or i64 %i.hs, %i.hx                     ; 2 uses
  %i.hz = sub nuw i64 %.03948.i17.i, %.0.i19.i    ; 2 uses
  %.not43.not.i21.i = icmp eq i64 %i.hz, 0
  %i.ia = getelementptr inbounds nuw i8, ptr %.03451.i15.i, i64 1 ; 2 uses
  %.not.i22.i = icmp eq ptr %i.ia, %i.go
  %or.cond60.i23.i = select i1 %.not43.not.i21.i, i1 true, i1 %.not.i22.i
  br i1 %or.cond60.i23.i, label %_ZN4llvm22TrieHashIndexGenerator4nextEv.exit, label %.lr.ph.i14.i, !llvm.loop !138

_ZN4llvm22TrieHashIndexGenerator4nextEv.exit:     ; preds = %.lr.ph.i.i, %.lr.ph.i14.i, %_ZNSt8optionalImEaSIiEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES3_ISt6__and_IJSt9is_scalarImES4_ImNSt5decayIS7_E4typeEEEEESt16is_constructibleImJS7_EESt13is_assignableIRmS7_EEERS0_E4typeEOS7_.exit.i, %.lr.ph.preheader.i.i, %bb.al, %bb.am, %.lr.ph.preheader.i4.i
  %i.ib = phi i64 [ %i.gh, %.lr.ph.i14.i ], [ %i.gh, %bb.al ], [ 0, %_ZNSt8optionalImEaSIiEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES3_ISt6__and_IJSt9is_scalarImES4_ImNSt5decayIS7_E4typeEEEEESt16is_constructibleImJS7_EESt13is_assignableIRmS7_EEERS0_E4typeEOS7_.exit.i ], [ %.sroa.22.0.copyload.i, %.lr.ph.preheader.i.i ], [ %i.gh, %bb.am ], [ %i.gh, %.lr.ph.preheader.i4.i ], [ %.sroa.22.0.copyload.i, %.lr.ph.i.i ]
  %i.ic = phi i64 [ %i.gl, %.lr.ph.i14.i ], [ %i.gg, %bb.al ], [ 0, %_ZNSt8optionalImEaSIiEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES3_ISt6__and_IJSt9is_scalarImES4_ImNSt5decayIS7_E4typeEEEEESt16is_constructibleImJS7_EESt13is_assignableIRmS7_EEERS0_E4typeEOS7_.exit.i ], [ 0, %.lr.ph.preheader.i.i ], [ %i.gl, %bb.am ], [ %i.gl, %.lr.ph.preheader.i4.i ], [ 0, %.lr.ph.i.i ] ; 4 uses
  %.0.i = phi i64 [ %i.hy, %.lr.ph.i14.i ], [ -1, %bb.al ], [ 0, %_ZNSt8optionalImEaSIiEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS0_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES3_ISt6__and_IJSt9is_scalarImES4_ImNSt5decayIS7_E4typeEEEEESt16is_constructibleImJS7_EESt13is_assignableIRmS7_EEERS0_E4typeEOS7_.exit.i ], [ %i.fn, %.lr.ph.preheader.i.i ], [ 0, %bb.am ], [ %i.hh, %.lr.ph.preheader.i4.i ], [ %i.gd, %.lr.ph.i.i ] ; 3 uses
  %i.id = lshr i64 %i.ic, 3                       ; 3 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ek, i64 %i.id ; 2 uses
  %.not47.i.i87 = icmp samesign eq i64 %i.id, %i.em
  %.val544.pre = load i64, ptr %i.al, align 8     ; 5 uses
  br i1 %.not47.i.i87, label %_ZNK4llvm22TrieHashIndexGenerator16getCollidingBitsENS_8ArrayRefIhEE.exit, label %.lr.ph.preheader.i.i88

.lr.ph.preheader.i.i88:                           ; preds = %_ZN4llvm22TrieHashIndexGenerator4nextEv.exit
  %i.if = and i64 %i.ic, 7                        ; 3 uses
  %i.ig = load i8, ptr %i.ie, align 1, !tbaa !20
  %.not42.peel.i.i = icmp eq i64 %i.if, 0
  %i.ih = trunc nuw nsw i64 %i.if to i16
  %i.ii = lshr exact i16 256, %i.ih
  %i.ij = trunc nuw i16 %i.ii to i8
  %i.ik = add i8 %i.ij, -1
  %i.il = sub nuw nsw i64 8, %i.if                ; 3 uses
  %i.im = select i1 %.not42.peel.i.i, i8 -1, i8 %i.ik
  %.032.peel.i.i = and i8 %i.ig, %i.im            ; 2 uses
  %i.in = icmp ugt i64 %i.il, %.val544.pre
  %i.io = sub nuw nsw i64 %i.il, %.val544.pre
  %i.ip = zext i8 %.032.peel.i.i to i16
  %i.iq = trunc nuw nsw i64 %i.io to i16
  %i.ir = lshr i16 %i.ip, %i.iq
  %i.is = trunc nuw i16 %i.ir to i8
  %.1.peel.i.i89 = select i1 %i.in, i8 %i.is, i8 %.032.peel.i.i
  %.0.peel.i.i90 = call i64 @llvm.umin.i64(i64 %i.il, i64 %.val544.pre) ; 2 uses
  %i.it = zext i8 %.1.peel.i.i89 to i32
  %i.iu = trunc nuw nsw i64 %.0.peel.i.i90 to i32
  %notmask.peel.i.i91 = shl nsw i32 -1, %i.iu
  %i.iv = xor i32 %notmask.peel.i.i91, -1
  %i.iw = and i32 %i.it, %i.iv
  %i.ix = zext nneg i32 %i.iw to i64              ; 2 uses
  %i.iy = sub nuw i64 %.val544.pre, %.0.peel.i.i90 ; 2 uses
  %.not43.not.peel.i.i92 = icmp eq i64 %i.iy, 0
  %i.iz = add nuw nsw i64 %i.id, 1
  %.not.peel.i.i93 = icmp samesign eq i64 %i.iz, %i.em
  %or.cond.i.i94 = select i1 %.not43.not.peel.i.i92, i1 true, i1 %.not.peel.i.i93
  br i1 %or.cond.i.i94, label %_ZNK4llvm22TrieHashIndexGenerator16getCollidingBitsENS_8ArrayRefIhEE.exit, label %.lr.ph.peel.next.i.i95

.lr.ph.peel.next.i.i95:                           ; preds = %.lr.ph.preheader.i.i88
  %i.ja = getelementptr inbounds nuw i8, ptr %i.ie, i64 1
  br label %.lr.ph.i.i96

.lr.ph.i.i96:                                     ; preds = %.lr.ph.i.i96, %.lr.ph.peel.next.i.i95
  %.03451.i.i97 = phi ptr [ %i.jq, %.lr.ph.i.i96 ], [ %i.ja, %.lr.ph.peel.next.i.i95 ] ; 2 uses
  %.03550.i.i98 = phi i64 [ %i.jo, %.lr.ph.i.i96 ], [ %i.ix, %.lr.ph.peel.next.i.i95 ]
  %.03948.i.i99 = phi i64 [ %i.jp, %.lr.ph.i.i96 ], [ %i.iy, %.lr.ph.peel.next.i.i95 ] ; 4 uses
  %i.jb = load i8, ptr %.03451.i.i97, align 1, !tbaa !20 ; 2 uses
  %i.jc = icmp ult i64 %.03948.i.i99, 8
  %i.jd = zext i8 %i.jb to i16
  %i.je = trunc i64 %.03948.i.i99 to i16
  %i.jf = sub i16 8, %i.je
  %i.jg = lshr i16 %i.jd, %i.jf
  %i.jh = trunc nuw i16 %i.jg to i8
  %.1.i.i100 = select i1 %i.jc, i8 %i.jh, i8 %i.jb
  %.0.i.i101 = call i64 @llvm.umin.i64(i64 %.03948.i.i99, i64 8) ; 3 uses
  %i.ji = shl i64 %.03550.i.i98, %.0.i.i101
  %i.jj = zext i8 %.1.i.i100 to i32
  %i.jk = trunc nuw nsw i64 %.0.i.i101 to i32
  %notmask.i.i102 = shl nsw i32 -1, %i.jk
  %i.jl = xor i32 %notmask.i.i102, -1
  %i.jm = and i32 %i.jj, %i.jl
  %i.jn = zext nneg i32 %i.jm to i64
  %i.jo = or i64 %i.ji, %i.jn                     ; 2 uses
  %i.jp = sub nuw i64 %.03948.i.i99, %.0.i.i101   ; 2 uses
  %.not43.not.i.i103 = icmp eq i64 %i.jp, 0
  %i.jq = getelementptr inbounds nuw i8, ptr %.03451.i.i97, i64 1 ; 2 uses
  %.not.i.i104 = icmp eq ptr %i.jq, %i.en
  %or.cond60.i.i105 = select i1 %.not43.not.i.i103, i1 true, i1 %.not.i.i104
  br i1 %or.cond60.i.i105, label %_ZNK4llvm22TrieHashIndexGenerator16getCollidingBitsENS_8ArrayRefIhEE.exit, label %.lr.ph.i.i96, !llvm.loop !138

_ZNK4llvm22TrieHashIndexGenerator16getCollidingBitsENS_8ArrayRefIhEE.exit: ; preds = %.lr.ph.i.i96, %_ZN4llvm22TrieHashIndexGenerator4nextEv.exit, %.lr.ph.preheader.i.i88
  %.136.i.i = phi i64 [ 0, %_ZN4llvm22TrieHashIndexGenerator4nextEv.exit ], [ %i.ix, %.lr.ph.preheader.i.i88 ], [ %i.jo, %.lr.ph.i.i96 ] ; 2 uses
  %i.jr = shl i64 %i.ib, 3
  %.not.i106 = icmp eq i64 %i.ic, 0
  %i.js = sub i64 %i.jr, %i.ic
  %.val = load i64, ptr %13, align 8
  %i.jt = select i1 %.not.i106, i64 %.val, i64 %.val544.pre
  %.sroa.speculated.i = call noundef i64 @llvm.umin.i64(i64 %i.js, i64 %i.jt) ; 5 uses
  %.not.i108 = icmp eq ptr %.sroa.6192.1, null
  %.val19.val.i = load i16, ptr %.sroa.10260.1, align 4, !tbaa !189, !noalias !190 ; 2 uses
  br i1 %.not.i108, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %_ZNK4llvm22TrieHashIndexGenerator16getCollidingBitsENS_8ArrayRefIhEE.exit
  %i.ju = getelementptr i8, ptr %.sroa.10260.1, i64 2
  %.val14.val.i = load i8, ptr %i.ju, align 2, !tbaa !105, !noalias !190
  %i.jv = zext i8 %.val14.val.i to i16
  %i.jw = add i16 %.val19.val.i, %i.jv
  store i16 %i.jw, ptr %.sroa.6192.1, align 4, !tbaa !189, !noalias !190
  %i.jx = trunc i64 %.sroa.speculated.i to i8
  %i.jy = getelementptr inbounds nuw i8, ptr %.sroa.6192.1, i64 2
  store i8 %i.jx, ptr %i.jy, align 2, !tbaa !105, !noalias !190
  br label %_ZN4llvm5ErrorD2Ev.exit22.i

bb.ao:                                            ; preds = %_ZNK4llvm22TrieHashIndexGenerator16getCollidingBitsENS_8ArrayRefIhEE.exit
  %i.jz = zext i16 %.val19.val.i to i32
  %i.ka = getelementptr i8, ptr %.sroa.10260.1, i64 2
  %.val13.val.i = load i8, ptr %i.ka, align 2, !tbaa !105, !noalias !190
  %i.kb = zext i8 %.val13.val.i to i32
  %i.kc = add nuw nsw i32 %i.kb, %i.jz            ; 2 uses
  %i.kd = trunc i64 %.sroa.speculated.i to i32
  %i.ke = and i64 %.sroa.speculated.i, 4294967295
  %i.kf = shl i64 8, %i.ke
  %i.kg = add nuw i64 %i.kf, 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23, !noalias !193
  call void @_ZN4llvm3cas21MappedFileRegionArena14allocateOffsetEm(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected.83") align 8 %7, ptr noundef nonnull align 8 dereferenceable(96) %i.n, i64 noundef %i.kg) #23, !noalias !193
  %i.kh = load i8, ptr %i.aw, align 8, !noalias !193
  %i.ki = trunc i8 %i.kh to i1
  br i1 %i.ki, label %_ZN4llvm8ExpectedIN12_GLOBAL__N_113SubtrieHandleEED2Ev.exit125, label %bb.ap, !prof !136

bb.ap:                                            ; preds = %bb.ao
  %i.kj = call noundef ptr @_ZNK4llvm3sys2fs18mapped_file_region4dataEv(ptr noundef nonnull align 8 dereferenceable(96) %i.n) #23, !noalias !193
  %i.kk = load i64, ptr %7, align 8, !noalias !193 ; 3 uses
  %i.kl = getelementptr i8, ptr %i.kj, i64 %i.kk  ; 8 uses
  %.pre.i.i = load i8, ptr %i.aw, align 8, !noalias !193
  %i.km = trunc i8 %.pre.i.i to i1
  %.not.i.i.i.i130 = icmp ne i64 %i.kk, 0
  %or.cond.not.i.i = select i1 %i.km, i1 %.not.i.i.i.i130, i1 false
  br i1 %or.cond.not.i.i, label %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i.i.i, label %._crit_edge.i

_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i.i.i: ; preds = %bb.ap
  %i.kn = inttoptr i64 %i.kk to ptr               ; 2 uses
  %i.ko = load ptr, ptr %i.kn, align 8, !tbaa !133, !noalias !193
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 8
  %i.kq = load ptr, ptr %i.kp, align 8, !noalias !193
  call void %i.kq(ptr noundef nonnull align 8 dereferenceable(8) %i.kn) #23, !noalias !193, !inline_history !198
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i.i.i, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23, !noalias !193
  %i.kr = trunc i32 %i.kc to i16
  store i16 %i.kr, ptr %i.kl, align 4, !tbaa !189, !noalias !199
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kl, i64 2
  %i.kt = trunc i64 %.sroa.speculated.i to i8
  store i8 %i.kt, ptr %i.ks, align 2, !tbaa !105, !noalias !199
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kl, i64 3
  store i8 0, ptr %i.ku, align 1, !tbaa !200, !noalias !199
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kl, i64 4
  store i32 0, ptr %i.kv, align 4, !tbaa !201, !noalias !199
  %i.kw = getelementptr i8, ptr %i.kl, i64 8      ; 3 uses
  %.mask.i = and i64 %.sroa.speculated.i, 255
  %.idx.i131 = shl i64 8, %.mask.i
  call void @llvm.memset.p0.i64(ptr align 8 %i.kw, i8 0, i64 %.idx.i131, i1 false), !tbaa !202, !noalias !199
  %.not16.i = icmp eq ptr %.sroa.28.1, null
  br i1 %.not16.i, label %_ZN4llvm5ErrorD2Ev.exit22.i, label %bb.aq

bb.aq:                                            ; preds = %._crit_edge.i
  %i.kx = call noundef ptr @_ZNK4llvm3sys2fs18mapped_file_region4dataEv(ptr noundef nonnull align 8 dereferenceable(96) %i.n) #23, !noalias !199
  %i.ky = call noundef ptr @_ZNK4llvm3sys2fs18mapped_file_region4dataEv(ptr noundef nonnull align 8 dereferenceable(96) %i.n) #23, !noalias !199
  %i.kz = ptrtoint ptr %i.kl to i64
  %i.la = ptrtoint ptr %i.ky to i64
  %.neg.i.i132 = sub i64 %i.la, %i.kz
  call void @_ZN4llvm3cas6ondisk15OnDiskCASLogger22logSubtrieHandleCreateEPvljj(ptr noundef nonnull align 8 dereferenceable(9) %.sroa.28.1, ptr noundef %i.kx, i64 noundef %.neg.i.i132, i32 noundef range(i32 0, 65791) %i.kc, i32 noundef %i.kd) #23, !noalias !199
  br label %_ZN4llvm5ErrorD2Ev.exit22.i

_ZN4llvm5ErrorD2Ev.exit22.i:                      ; preds = %._crit_edge.i, %bb.aq, %bb.an
  %.sroa.0191.4 = phi ptr [ null, %bb.an ], [ %.sroa.0191.1, %bb.aq ], [ %.sroa.0191.1, %._crit_edge.i ]
  %.sroa.8193.4 = phi ptr [ null, %bb.an ], [ %.sroa.8193.1, %bb.aq ], [ %.sroa.8193.1, %._crit_edge.i ]
  %.sroa.13.i.sroa.6.0 = phi ptr [ %.sroa.10194.sroa.6.1, %bb.an ], [ %.sroa.28.1, %bb.aq ], [ null, %._crit_edge.i ] ; 2 uses
  %.sroa.10194.sroa.6.4 = phi ptr [ null, %bb.an ], [ %.sroa.10194.sroa.6.1, %bb.aq ], [ %.sroa.10194.sroa.6.1, %._crit_edge.i ]
  %.sroa.11.0.i = phi ptr [ %.sroa.8193.1, %bb.an ], [ %i.kw, %bb.aq ], [ %i.kw, %._crit_edge.i ] ; 3 uses
  %.sroa.9.0.i = phi ptr [ %.sroa.6192.1, %bb.an ], [ %i.kl, %bb.aq ], [ %i.kl, %._crit_edge.i ] ; 3 uses
  %.sroa.030.0.i = phi ptr [ %.sroa.0191.1, %bb.an ], [ %i.n, %bb.aq ], [ %i.n, %._crit_edge.i ] ; 3 uses
  %i.lb = getelementptr inbounds nuw [8 x i8], ptr %.sroa.11.0.i, i64 %.136.i.i ; 2 uses
  store atomic i64 %.sroa.0184.0.lcssa, ptr %i.lb seq_cst, align 8, !noalias !190
  %i.lc = call noundef ptr @_ZNK4llvm3sys2fs18mapped_file_region4dataEv(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.030.0.i) #23, !noalias !190
  %i.ld = ptrtoint ptr %.sroa.9.0.i to i64
  %i.le = ptrtoint ptr %i.lc to i64
  %.neg.i.i109 = sub i64 %i.le, %i.ld             ; 2 uses
  %i.lf = getelementptr inbounds nuw [8 x i8], ptr %.sroa.18261.1, i64 %.134
  %i.lg = cmpxchg ptr %i.lf, i64 %.sroa.0184.0.lcssa, i64 %.neg.i.i109 seq_cst seq_cst, align 8, !noalias !190 ; 2 uses
  %i.lh = extractvalue { i64, i1 } %i.lg, 1
  %i.li = extractvalue { i64, i1 } %i.lg, 0       ; 2 uses
  %.not.i.i110 = icmp eq ptr %.sroa.28.1, null
  br i1 %.not.i.i110, label %_ZN12_GLOBAL__N_113SubtrieHandle23compare_exchange_strongEmRNS_16SubtrieSlotValueES1_.exit.i, label %bb.ar

bb.ar:                                            ; preds = %_ZN4llvm5ErrorD2Ev.exit22.i
  %i.lj = call noundef ptr @_ZNK4llvm3sys2fs18mapped_file_region4dataEv(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.0258.1) #23, !noalias !190
  %i.lk = call noundef ptr @_ZNK4llvm3sys2fs18mapped_file_region4dataEv(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.0258.1) #23, !noalias !190
  %i.ll = ptrtoint ptr %.sroa.10260.1 to i64
  %i.lm = ptrtoint ptr %i.lk to i64
  %.neg.i.i.i = sub i64 %i.lm, %i.ll
  call void @_ZN4llvm3cas6ondisk15OnDiskCASLogger23logSubtrieHandleCmpXchgEPvlmlll(ptr noundef nonnull align 8 dereferenceable(9) %.sroa.28.1, ptr noundef %i.lj, i64 noundef %.neg.i.i.i, i64 noundef %.134, i64 noundef %.sroa.0184.0.lcssa, i64 noundef %.neg.i.i109, i64 noundef %i.li) #23, !noalias !190
  br label %_ZN12_GLOBAL__N_113SubtrieHandle23compare_exchange_strongEmRNS_16SubtrieSlotValueES1_.exit.i

_ZN12_GLOBAL__N_113SubtrieHandle23compare_exchange_strongEmRNS_16SubtrieSlotValueES1_.exit.i: ; preds = %bb.ar, %_ZN4llvm5ErrorD2Ev.exit22.i
  br i1 %i.lh, label %_ZN4llvm8ExpectedIN12_GLOBAL__N_113SubtrieHandleEED2Ev.exit125.thread, label %bb.as

bb.as:                                            ; preds = %_ZN12_GLOBAL__N_113SubtrieHandle23compare_exchange_strongEmRNS_16SubtrieSlotValueES1_.exit.i
  store atomic i64 0, ptr %i.lb seq_cst, align 8, !noalias !190
  %i.ln = call noundef ptr @_ZNK4llvm3sys2fs18mapped_file_region4dataEv(ptr noundef nonnull align 8 dereferenceable(96) %i.n) #23, !noalias !190
  %i.lo = sub nsw i64 0, %i.li
  %i.lp = getelementptr inbounds nuw i8, ptr %i.ln, i64 %i.lo ; 2 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 8
  br label %_ZN4llvm8ExpectedIN12_GLOBAL__N_113SubtrieHandleEED2Ev.exit125.thread

_ZN4llvm8ExpectedIN12_GLOBAL__N_113SubtrieHandleEED2Ev.exit125: ; preds = %bb.ao
  %i.lr = load i64, ptr %7, align 8, !tbaa !39, !noalias !203 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23, !noalias !193
  %i.ls = icmp ne i64 %i.lr, 0
  call void @llvm.assume(i1 %i.ls)
  %i.lt = inttoptr i64 %i.lr to ptr
  %i.lu = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.lv = load i8, ptr %i.lu, align 8
  %i.lw = or i8 %i.lv, 1
  store i8 %i.lw, ptr %i.lu, align 8
  store ptr %i.lt, ptr %0, align 8, !tbaa !39, !alias.scope !206
  br label %bb.at

_ZN4llvm8ExpectedIN12_GLOBAL__N_113SubtrieHandleEED2Ev.exit125.thread: ; preds = %_ZN12_GLOBAL__N_113SubtrieHandle23compare_exchange_strongEmRNS_16SubtrieSlotValueES1_.exit.i, %bb.as
  %.sroa.0191.5.ph = phi ptr [ %.sroa.0191.4, %_ZN12_GLOBAL__N_113SubtrieHandle23compare_exchange_strongEmRNS_16SubtrieSlotValueES1_.exit.i ], [ %.sroa.030.0.i, %bb.as ] ; 2 uses
  %.sroa.6192.5.ph = phi ptr [ null, %_ZN12_GLOBAL__N_113SubtrieHandle23compare_exchange_strongEmRNS_16SubtrieSlotValueES1_.exit.i ], [ %.sroa.9.0.i, %bb.as ] ; 2 uses
  %.sroa.8193.5.ph = phi ptr [ %.sroa.8193.4, %_ZN12_GLOBAL__N_113SubtrieHandle23compare_exchange_strongEmRNS_16SubtrieSlotValueES1_.exit.i ], [ %.sroa.11.0.i, %bb.as ] ; 2 uses
  %.sroa.10194.sroa.6.5.ph = phi ptr [ %.sroa.10194.sroa.6.4, %_ZN12_GLOBAL__N_113SubtrieHandle23compare_exchange_strongEmRNS_16SubtrieSlotValueES1_.exit.i ], [ %.sroa.13.i.sroa.6.0, %bb.as ] ; 2 uses
  %.sroa.15.0.ph = phi ptr [ %.sroa.13.i.sroa.6.0, %_ZN12_GLOBAL__N_113SubtrieHandle23compare_exchange_strongEmRNS_16SubtrieSlotValueES1_.exit.i ], [ %.sroa.28.1, %bb.as ] ; 2 uses
  %.sroa.11.0.ph = phi ptr [ %.sroa.11.0.i, %_ZN12_GLOBAL__N_113SubtrieHandle23compare_exchange_strongEmRNS_16SubtrieSlotValueES1_.exit.i ], [ %i.lq, %bb.as ] ; 2 uses
  %.sroa.9.0.ph = phi ptr [ %.sroa.9.0.i, %_ZN12_GLOBAL__N_113SubtrieHandle23compare_exchange_strongEmRNS_16SubtrieSlotValueES1_.exit.i ], [ %i.lp, %bb.as ] ; 2 uses
  %.sroa.0.0.ph = phi ptr [ %.sroa.030.0.i, %_ZN12_GLOBAL__N_113SubtrieHandle23compare_exchange_strongEmRNS_16SubtrieSlotValueES1_.exit.i ], [ %i.n, %bb.as ] ; 2 uses
  %.not = icmp eq i64 %.0.i, %.136.i.i
  br i1 %.not, label %_ZN4llvmeqIhEEbNS_8ArrayRefIT_EES3_.exit, label %.loopexit.outer

bb.at:                                            ; preds = %_ZN4llvm8ExpectedIN12_GLOBAL__N_113SubtrieHandleEED2Ev.exit125, %bb.ak, %.loopexit666, %_ZN4llvm5ErrorD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  br label %_ZN4llvm5ErrorD2Ev.exit127

_ZN4llvm5ErrorD2Ev.exit127:                       ; preds = %bb.at, %_ZN4llvm8ExpectedIN12_GLOBAL__N_113SubtrieHandleEED2Ev.exit
  br i1 %.not.i.i.i.i, label %_ZN12_GLOBAL__N_120TrieRawHashMapHandleD2Ev.exit, label %bb.au

bb.au:                                            ; preds = %_ZN4llvm5ErrorD2Ev.exit127
  %i.lx = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 4 uses
  %i.ly = load atomic i64, ptr %i.lx acquire, align 8 ; 2 uses
  %i.lz = icmp eq i64 %i.ly, 4294967297
  %i.ma = trunc i64 %i.ly to i32                  ; 2 uses
  br i1 %i.lz, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  store i32 0, ptr %i.lx, align 8, !tbaa !130
  %i.mb = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  store i32 0, ptr %i.mb, align 4, !tbaa !132
  %i.mc = load ptr, ptr %i.f, align 8, !tbaa !133
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 16
  %i.me = load ptr, ptr %i.md, align 8
  call void %i.me(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #23, !inline_history !135
  %i.mf = load ptr, ptr %i.f, align 8, !tbaa !133
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 24
  %i.mh = load ptr, ptr %i.mg, align 8
  call void %i.mh(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #23, !inline_history !135
  br label %_ZN12_GLOBAL__N_120TrieRawHashMapHandleD2Ev.exit

bb.aw:                                            ; preds = %bb.au
  %i.mi = load i8, ptr @__libc_single_threaded, align 1, !tbaa !20
  %.not.i.i.i.i129 = icmp eq i8 %i.mi, 0
  br i1 %.not.i.i.i.i129, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.mj = add nsw i32 %i.ma, -1
  store i32 %i.mj, ptr %i.lx, align 8, !tbaa !100
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.ay:                                            ; preds = %bb.aw
  %i.mk = atomicrmw volatile add ptr %i.lx, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.ay, %bb.ax
  %.0.i.i.i.i.i = phi i32 [ %i.ma, %bb.ax ], [ %i.mk, %bb.ay ]
  %i.ml = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ml, label %bb.az, label %_ZN12_GLOBAL__N_120TrieRawHashMapHandleD2Ev.exit, !prof !136

bb.az:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #23
  br label %_ZN12_GLOBAL__N_120TrieRawHashMapHandleD2Ev.exit

_ZN12_GLOBAL__N_120TrieRawHashMapHandleD2Ev.exit: ; preds = %_ZN4llvm5ErrorD2Ev.exit127, %bb.av, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.az
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm3cas20OnDiskTrieRawHashMap5printERNS_11raw_ostreamENS_12function_refIFvNS_8ArrayRefIcEEEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr %2, i64 %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.(anonymous namespace)::TriePrinter", align 8 ; 28 uses
  %5 = alloca %"class.llvm::Error", align 8       ; 7 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %7 = alloca %"class.llvm::Error", align 8       ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !43     ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !209
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 6 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !213  ; 2 uses
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = icmp ult i64 %i.i, 14
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.19, i64 noundef 14) #23
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit.i

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) %i.f, ptr noundef nonnull align 1 dereferenceable(14) @.str.19, i64 14, i1 false)
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !213
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 14
  store ptr %i.m, ptr %i.e, align 8, !tbaa !213
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit.i

_ZN4llvm11raw_ostreamlsEPKc.exit.i:               ; preds = %bb.c, %bb.b
  %.0.i.i.i = phi ptr [ %i.k, %bb.b ], [ %1, %bb.c ]
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  %.val9.i = load ptr, ptr %i.n, align 8, !tbaa !45
  %i.o = getelementptr i8, ptr %.val9.i, i64 10
  %.val9.val.i = load i16, ptr %i.o, align 2, !tbaa !54
  %i.p = zext i16 %.val9.val.i to i64
  %i.q = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i.i, i64 noundef %i.p) #23 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !209
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 32 ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !213  ; 2 uses
  %i.v = ptrtoint ptr %i.s to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = icmp ult i64 %i.x, 11
  br i1 %i.y, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit.i
  %i.z = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.q, ptr noundef nonnull @.str.20, i64 noundef 11) #23
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit12.i

bb.e:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.u, ptr noundef nonnull align 1 dereferenceable(11) @.str.20, i64 11, i1 false)
  %i.aa = load ptr, ptr %i.t, align 8, !tbaa !213
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 11
  store ptr %i.ab, ptr %i.t, align 8, !tbaa !213
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit12.i

_ZN4llvm11raw_ostreamlsEPKc.exit12.i:             ; preds = %bb.e, %bb.d
  %.0.i.i11.i = phi ptr [ %i.z, %bb.d ], [ %i.q, %bb.e ]
  %.val7.i = load ptr, ptr %i.n, align 8, !tbaa !45
  %i.ac = getelementptr i8, ptr %.val7.i, i64 10
  %.val7.val.i = load i16, ptr %i.ac, align 2, !tbaa !54
  %i.ad = lshr i16 %.val7.val.i, 3
  %i.ae = zext nneg i16 %i.ad to i64
end_hunk_0
begin_hunk_1_@_ZN4llvm3cas20OnDiskTrieRawHashMap8ImplTypeD2Ev:bb.a
  store i32 %i.n, ptr %i.b, align 8, !tbaa !100
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.o = atomicrmw volatile add ptr %i.b, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.e, %bb.e ], [ %i.o, %bb.f ]
  %i.p = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.p, label %bb.g, label %_ZN12_GLOBAL__N_120TrieRawHashMapHandleD2Ev.exit, !prof !136

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.val) #23
  br label %_ZN12_GLOBAL__N_120TrieRawHashMapHandleD2Ev.exit

_ZN12_GLOBAL__N_120TrieRawHashMapHandleD2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !480  ; 3 uses
  %.not.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i, label %_ZN4llvm3cas6ondisk12DatabaseFileD2Ev.exit, label %_ZNKSt14default_deleteIN4llvm3cas21MappedFileRegionArenaEEclEPS2_.exit.i.i

_ZNKSt14default_deleteIN4llvm3cas21MappedFileRegionArenaEEclEPS2_.exit.i.i: ; preds = %_ZN12_GLOBAL__N_120TrieRawHashMapHandleD2Ev.exit
  tail call void @_ZN4llvm3cas21MappedFileRegionArenaD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %i.r) #23
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef 96) #25
  br label %_ZN4llvm3cas6ondisk12DatabaseFileD2Ev.exit

_ZN4llvm3cas6ondisk12DatabaseFileD2Ev.exit:       ; preds = %_ZN12_GLOBAL__N_120TrieRawHashMapHandleD2Ev.exit, %_ZNKSt14default_deleteIN4llvm3cas21MappedFileRegionArenaEEclEPS2_.exit.i.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN4llvm3cas20OnDiskTrieRawHashMapC2ESt10unique_ptrINS1_8ImplTypeESt14default_deleteIS3_EE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %0, ptr nofree noundef align 8 captures(none) dereferenceable(8) %1) unnamed_addr #7 align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !43
  store i64 %i.a, ptr %0, align 8, !tbaa !43
  store ptr null, ptr %1, align 8, !tbaa !43
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN4llvm3cas20OnDiskTrieRawHashMapC2EOS1_(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %1) unnamed_addr #7 align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !43
  store i64 %i.a, ptr %0, align 8, !tbaa !43
  store ptr null, ptr %1, align 8, !tbaa !43
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN4llvm3cas20OnDiskTrieRawHashMapaSEOS1_(ptr noundef nonnull returned align 8 dereferenceable(8) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !43
  store ptr null, ptr %1, align 8, !tbaa !43
  tail call void @_ZNSt15__uniq_ptr_implIN4llvm3cas20OnDiskTrieRawHashMap8ImplTypeESt14default_deleteIS3_EE5resetEPS3_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.a) #23
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm3cas20OnDiskTrieRawHashMapD2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(8) dereferenceable(8) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !43     ; 4 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN4llvm3cas20OnDiskTrieRawHashMap8ImplTypeESt14default_deleteIS3_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.val.i.i = load ptr, ptr %i.b, align 8, !tbaa !99 ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %.val.i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZN12_GLOBAL__N_120TrieRawHashMapHandleD2Ev.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.c, align 8, !tbaa !130
  %i.g = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !132
  %i.h = load ptr, ptr %.val.i.i, align 8, !tbaa !133
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %.val.i.i) #23, !inline_history !491
  %i.k = load ptr, ptr %.val.i.i, align 8, !tbaa !133
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %.val.i.i) #23, !inline_history !491
  br label %_ZN12_GLOBAL__N_120TrieRawHashMapHandleD2Ev.exit.i.i

bb.e:                                             ; preds = %bb.c
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !20
  %.not.i.i.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !100
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.f, %bb.f ], [ %i.p, %bb.g ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.q, label %bb.h, label %_ZN12_GLOBAL__N_120TrieRawHashMapHandleD2Ev.exit.i.i, !prof !136

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.val.i.i) #23
  br label %_ZN12_GLOBAL__N_120TrieRawHashMapHandleD2Ev.exit.i.i

_ZN12_GLOBAL__N_120TrieRawHashMapHandleD2Ev.exit.i.i: ; preds = %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.d, %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !480  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i, label %_ZNKSt14default_deleteIN4llvm3cas20OnDiskTrieRawHashMap8ImplTypeEEclEPS3_.exit, label %_ZNKSt14default_deleteIN4llvm3cas21MappedFileRegionArenaEEclEPS2_.exit.i.i.i.i

_ZNKSt14default_deleteIN4llvm3cas21MappedFileRegionArenaEEclEPS2_.exit.i.i.i.i: ; preds = %_ZN12_GLOBAL__N_120TrieRawHashMapHandleD2Ev.exit.i.i
  tail call void @_ZN4llvm3cas21MappedFileRegionArenaD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %i.s) #23
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef 96) #25
  br label %_ZNKSt14default_deleteIN4llvm3cas20OnDiskTrieRawHashMap8ImplTypeEEclEPS3_.exit

_ZNKSt14default_deleteIN4llvm3cas20OnDiskTrieRawHashMap8ImplTypeEEclEPS3_.exit: ; preds = %_ZN12_GLOBAL__N_120TrieRawHashMapHandleD2Ev.exit.i.i, %_ZNKSt14default_deleteIN4llvm3cas21MappedFileRegionArenaEEclEPS2_.exit.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 56) #25
  br label %_ZNSt10unique_ptrIN4llvm3cas20OnDiskTrieRawHashMap8ImplTypeESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN4llvm3cas20OnDiskTrieRawHashMap8ImplTypeESt14default_deleteIS3_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN4llvm3cas20OnDiskTrieRawHashMap8ImplTypeEEclEPS3_.exit
  ret void
}

declare void @_ZN4llvm17createStringErrorEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10error_code(ptr dead_on_unwind writable sret(%"class.llvm::Error") align 8, ptr noundef nonnull align 8 dereferenceable(32), i32, ptr) local_unnamed_addr #5

declare void @_ZNK4llvm5Twine3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(34)) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V216generic_categoryEv() local_unnamed_addr #8

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #9

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #5

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #10

declare noundef ptr @_ZNK4llvm3sys2fs18mapped_file_region4dataEv(ptr noundef nonnull align 8 dereferenceable(20)) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_113SubtrieHandle6createERN4llvm3cas21MappedFileRegionArenaEjjPNS2_6ondisk15OnDiskCASLoggerE(ptr dead_on_unwind noalias nofree nonnull writable align 8 captures(none) initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, i32 noundef range(i32 0, 65791) %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %"class.llvm::Expected.83", align 8 ; 7 uses
  %i.a = zext nneg i32 %3 to i64
  %i.b = shl i64 8, %i.a
  %i.c = add nuw i64 %i.b, 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23, !noalias !492
  call void @_ZN4llvm3cas21MappedFileRegionArena14allocateOffsetEm(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected.83") align 8 %5, ptr noundef nonnull align 8 dereferenceable(96) %1, i64 noundef %i.c) #23, !noalias !492
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8, !noalias !492
  %i.f = trunc i8 %i.e to i1
  br i1 %i.f, label %bb.e, label %bb.b, !prof !136

bb.b:                                             ; preds = %bb.a
  %i.g = call noundef ptr @_ZNK4llvm3sys2fs18mapped_file_region4dataEv(ptr noundef nonnull align 8 dereferenceable(96) %1) #23, !noalias !492
  %i.h = load i64, ptr %5, align 8, !noalias !492 ; 3 uses
  %i.i = getelementptr i8, ptr %i.g, i64 %i.h     ; 7 uses
  %.pre.i = load i8, ptr %i.d, align 8, !noalias !492
  %i.j = trunc i8 %.pre.i to i1
  %.not.i.i.i = icmp ne i64 %i.h, 0
  %or.cond.not.i = select i1 %i.j, i1 %.not.i.i.i, i1 false
  br i1 %or.cond.not.i, label %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i.i, label %._crit_edge

_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i.i: ; preds = %bb.b
  %i.k = inttoptr i64 %i.h to ptr                 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !133, !noalias !492
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !noalias !492
  call void %i.n(ptr noundef nonnull align 8 dereferenceable(8) %i.k) #23, !noalias !492, !inline_history !495
  br label %._crit_edge

._crit_edge:                                      ; preds = %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23, !noalias !492
  %i.o = trunc i32 %2 to i16
  store i16 %i.o, ptr %i.i, align 4, !tbaa !189
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  %i.q = trunc i32 %3 to i8
  store i8 %i.q, ptr %i.p, align 2, !tbaa !105
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 3
  store i8 0, ptr %i.r, align 1, !tbaa !200
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  store i32 0, ptr %i.s, align 4, !tbaa !201
  %i.t = getelementptr i8, ptr %i.i, i64 8        ; 2 uses
  %.mask = and i32 %3, 255
  %i.u = zext nneg i32 %.mask to i64              ; 2 uses
  %i.v = shl nuw i64 1, %i.u
  %.idx = shl i64 8, %i.u
  call void @llvm.memset.p0.i64(ptr align 8 %i.t, i8 0, i64 %.idx, i1 false), !tbaa !202
  %.not16 = icmp eq ptr %4, null
  br i1 %.not16, label %bb.d, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.w = call noundef ptr @_ZNK4llvm3sys2fs18mapped_file_region4dataEv(ptr noundef nonnull align 8 dereferenceable(96) %1) #23
  %i.x = call noundef ptr @_ZNK4llvm3sys2fs18mapped_file_region4dataEv(ptr noundef nonnull align 8 dereferenceable(20) %1) #23
  %i.y = ptrtoint ptr %i.i to i64
  %i.z = ptrtoint ptr %i.x to i64
  %.neg.i = sub i64 %i.z, %i.y
  call void @_ZN4llvm3cas6ondisk15OnDiskCASLogger22logSubtrieHandleCreateEPvljj(ptr noundef nonnull align 8 dereferenceable(9) %4, ptr noundef %i.w, i64 noundef %.neg.i, i32 noundef %2, i32 noundef %3) #23
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 8
  %i.ac = and i8 %i.ab, -2
  store i8 %i.ac, ptr %i.aa, align 8
  store ptr %1, ptr %0, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.i, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.t, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.v, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %4, ptr %.sroa.12.0..sroa_idx, align 8
  br label %_ZN4llvm8ExpectedIPcED2Ev.exit

bb.e:                                             ; preds = %bb.a
  %i.ad = load i64, ptr %5, align 8, !tbaa !39, !noalias !496
  %i.ae = inttoptr i64 %i.ad to ptr
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23, !noalias !492
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ag = load i8, ptr %i.af, align 8
  %i.ah = or i8 %i.ag, 1
  store i8 %i.ah, ptr %i.af, align 8
  store ptr %i.ae, ptr %0, align 8, !tbaa !39, !alias.scope !499
  br label %_ZN4llvm8ExpectedIPcED2Ev.exit

_ZN4llvm8ExpectedIPcED2Ev.exit:                   ; preds = %bb.e, %bb.d
  ret void
}

declare void @_ZN4llvm3cas6ondisk15OnDiskCASLogger22logSubtrieHandleCreateEPvljj(ptr noundef nonnull align 8 dereferenceable(9), ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare void @_ZN4llvm3cas21MappedFileRegionArena14allocateOffsetEm(ptr dead_on_unwind writable sret(%"class.llvm::Expected.83") align 8, ptr noundef nonnull align 8 dereferenceable(96), i64 noundef) local_unnamed_addr #5

declare void @_ZN4llvm3cas6ondisk15OnDiskCASLogger35logHashMappedTrieHandleCreateRecordEPvlNS_8ArrayRefIhEE(ptr noundef nonnull align 8 dereferenceable(9), ptr noundef, i64 noundef, ptr, i64) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

declare void @_ZN4llvm3cas6ondisk15OnDiskCASLogger23logSubtrieHandleCmpXchgEPvlmlll(ptr noundef nonnull align 8 dereferenceable(9), ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #5

declare void @_ZNK4llvm5Twine8toVectorERNS_15SmallVectorImplIcEE(ptr noundef nonnull align 8 dereferenceable(34), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !133
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #23, !inline_history !502
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !20
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !100  ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !100
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !133
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #23, !inline_history !502
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt12__shared_ptrIN4llvm3cas6ondisk15OnDiskCASLoggerELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !99   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !130
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !132
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !133
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #23, !inline_history !503
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !133
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #23, !inline_history !503
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !20
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !100
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !136

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #23
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm3cas21MappedFileRegionArenaD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN4llvm3cas21MappedFileRegionArena11destroyImplEv(ptr noundef nonnull align 8 dereferenceable(96) %0) #23
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !99   ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN4llvm3cas6ondisk15OnDiskCASLoggerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !130
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !132
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !133
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #23, !inline_history !141
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !133
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #23, !inline_history !141
  br label %_ZNSt12__shared_ptrIN4llvm3cas6ondisk15OnDiskCASLoggerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !20
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !100
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN4llvm3cas6ondisk15OnDiskCASLoggerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !136

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
end_hunk_1
begin_hunk_2_@_ZN12_GLOBAL__N_111TrieVisitor5visitEv:bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.aa
  %.not.i = icmp ult ptr %i.y, %i.ab
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23, !noalias !507
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 33
  store i8 1, ptr %i.ad, align 1, !tbaa !29, !noalias !507
  store ptr @.str.41, ptr %5, align 8, !tbaa !20, !noalias !507
  store i8 3, ptr %i.ac, align 8, !tbaa !26, !noalias !507
  call fastcc void @_ZL22createInvalidTrieErrormRKN4llvm5TwineE(ptr dead_on_unwind noalias writable align 8 %0, i64 noundef %.neg.i.neg.i.i, ptr noundef nonnull align 8 dereferenceable(34) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23, !noalias !507
  br label %_ZN12_GLOBAL__N_111TrieVisitor15validateSubTrieENS_13SubtrieHandleEb.exit

bb.e:                                             ; preds = %bb.c
  %.val12.val.i = load i16, ptr %i.m, align 4, !tbaa !189, !noalias !507
  %.not7.i = icmp eq i16 %.val12.val.i, 0
  br i1 %.not7.i, label %_ZN12_GLOBAL__N_111TrieVisitor15validateSubTrieENS_13SubtrieHandleEb.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23, !noalias !507
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 33
  store i8 1, ptr %i.af, align 1, !tbaa !29, !noalias !507
  store ptr @.str.43, ptr %6, align 8, !tbaa !20, !noalias !507
  store i8 3, ptr %i.ae, align 8, !tbaa !26, !noalias !507
  call fastcc void @_ZL22createInvalidTrieErrormRKN4llvm5TwineE(ptr dead_on_unwind noalias writable align 8 %0, i64 noundef %.neg.i.neg.i.i, ptr noundef nonnull align 8 dereferenceable(34) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23, !noalias !507
  br label %_ZN12_GLOBAL__N_111TrieVisitor15validateSubTrieENS_13SubtrieHandleEb.exit

_ZN12_GLOBAL__N_111TrieVisitor15validateSubTrieENS_13SubtrieHandleEb.exit.thread: ; preds = %bb.e
  store ptr null, ptr %0, align 8, !tbaa !36, !alias.scope !507
  br label %_ZN4llvm5ErrorD2Ev.exit67

_ZN12_GLOBAL__N_111TrieVisitor15validateSubTrieENS_13SubtrieHandleEb.exit: ; preds = %bb.d, %bb.f
  %.pr = load ptr, ptr %0, align 8, !tbaa !36
  %.not125 = icmp eq ptr %.pr, null
  br i1 %.not125, label %_ZN4llvm5ErrorD2Ev.exit67, label %.critedge

_ZN4llvm5ErrorD2Ev.exit67:                        ; preds = %_ZN12_GLOBAL__N_111TrieVisitor15validateSubTrieENS_13SubtrieHandleEb.exit, %_ZN12_GLOBAL__N_111TrieVisitor15validateSubTrieENS_13SubtrieHandleEb.exit.thread
  store ptr %.val.i, ptr %7, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.m, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %i.n, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i64 %i.r, ptr %.sroa.13.0..sroa_idx, align 8
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 32
  store ptr %i.k, ptr %.sroa.15.0..sroa_idx, align 8
  %i.ag = load ptr, ptr %1, align 8, !tbaa !133
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(480) %1, ptr nonnull @.str.36, i64 0, ptr noundef nonnull byval(%"class.(anonymous namespace)::SubtrieHandle") align 8 %7) #23
  %i.aj = load ptr, ptr %0, align 8, !tbaa !36
  %.not126 = icmp eq ptr %i.aj, null
  br i1 %.not126, label %_ZN4llvm5ErrorD2Ev.exit68, label %.critedge

_ZN4llvm5ErrorD2Ev.exit68:                        ; preds = %_ZN4llvm5ErrorD2Ev.exit67
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  %i.ak = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  store ptr %i.ak, ptr %8, align 8, !tbaa !254
  %i.al = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 5 uses
  store i32 0, ptr %i.al, align 8, !tbaa !256
  %i.am = getelementptr inbounds nuw i8, ptr %8, i64 12 ; 2 uses
  store i32 1, ptr %i.am, align 4, !tbaa !257
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  %i.an = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  store ptr %i.an, ptr %9, align 8, !tbaa !254
  %i.ao = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store i32 0, ptr %i.ao, align 8, !tbaa !256
  %i.ap = getelementptr inbounds nuw i8, ptr %9, i64 12
  store i32 1, ptr %i.ap, align 4, !tbaa !257
  %i.aq = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.au = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.av = getelementptr inbounds nuw i8, ptr %12, i64 32
  %.sroa.7.0..sroa_idx99 = getelementptr inbounds nuw i8, ptr %13, i64 8
  %.sroa.10.0..sroa_idx101 = getelementptr inbounds nuw i8, ptr %13, i64 16
  %.sroa.13.0..sroa_idx103 = getelementptr inbounds nuw i8, ptr %13, i64 24
  %.sroa.15.0..sroa_idx105 = getelementptr inbounds nuw i8, ptr %13, i64 32
  br label %bb.g

bb.g:                                             ; preds = %_ZN4llvm5ErrorD2Ev.exit68, %.thread122
  %.034130 = phi i64 [ 0, %_ZN4llvm5ErrorD2Ev.exit68 ], [ %i.cc, %.thread122 ] ; 4 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.034130
  %i.ax = load atomic i64, ptr %i.aw seq_cst, align 8 ; 5 uses
  %.not.i.i.not = icmp eq i64 %i.ax, 0
  br i1 %.not.i.i.not, label %.thread122, label %bb.h

bb.h:                                             ; preds = %bb.g
  %spec.select = call i64 @llvm.abs.i64(i64 %i.ax, i1 true) ; 2 uses
  %.val53 = load ptr, ptr %i.a, align 8, !tbaa !95
  %i.ay = call noundef i64 @_ZNK4llvm3sys2fs18mapped_file_region4sizeEv(ptr noundef nonnull align 8 dereferenceable(20) %.val53) #23
  %.not42 = icmp ult i64 %spec.select, %i.ay
  br i1 %.not42, label %bb.i, label %.thread

.thread:                                          ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  %i.az = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.ba = getelementptr inbounds nuw i8, ptr %10, i64 33
  store i8 1, ptr %i.ba, align 1, !tbaa !29
  store ptr @.str.37, ptr %10, align 8, !tbaa !20
  store i8 3, ptr %i.az, align 8, !tbaa !26
  call fastcc void @_ZL22createInvalidTrieErrormRKN4llvm5TwineE(ptr dead_on_unwind noalias nonnull writable align 8 %0, i64 noundef %spec.select, ptr noundef nonnull align 8 dereferenceable(34) %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %.loopexit

bb.i:                                             ; preds = %bb.h
  %i.bb = icmp slt i64 %i.ax, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  store ptr %i.aq, ptr %11, align 8, !tbaa !11
  store i64 0, ptr %i.ar, align 8, !tbaa !15
  store i8 0, ptr %i.aq, align 8, !tbaa !20
  call fastcc void @_ZL15appendIndexBitsRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmm(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef %.034130, i64 noundef %i.r)
  br i1 %i.bb, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.bc = sub nsw i64 0, %i.ax                    ; 2 uses
  call fastcc void @_ZN12_GLOBAL__N_111TrieVisitor21validateSubtrieHeaderEmb(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(480) %1, i64 noundef %i.bc, i1 noundef zeroext false)
  %i.bd = load ptr, ptr %0, align 8, !tbaa !36
  %.not127 = icmp eq ptr %i.bd, null
  br i1 %.not127, label %_ZN4llvm5ErrorD2Ev.exit69, label %.critedge49

_ZN4llvm5ErrorD2Ev.exit69:                        ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  %.val52 = load ptr, ptr %i.a, align 8, !tbaa !95 ; 2 uses
  %.val58 = load ptr, ptr %i.j, align 8, !tbaa !142
  %i.be = call noundef ptr @_ZNK4llvm3sys2fs18mapped_file_region4dataEv(ptr noundef nonnull align 8 dereferenceable(20) %.val52) #23
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bc ; 3 uses
  store ptr %.val52, ptr %12, align 8, !tbaa !149
  store ptr %i.bf, ptr %i.as, align 8, !tbaa !155
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 2
  %i.bi = load i8, ptr %i.bh, align 2, !tbaa !105
  %i.bj = zext nneg i8 %i.bi to i64
  %i.bk = shl nuw i64 1, %i.bj
  store ptr %i.bg, ptr %i.at, align 8
  store i64 %i.bk, ptr %i.au, align 8
  store ptr %.val58, ptr %i.av, align 8, !tbaa !510
  %i.bl = load i32, ptr %i.al, align 8, !tbaa !256 ; 2 uses
  %i.bm = load i32, ptr %i.am, align 4, !tbaa !257
  %.not.i70 = icmp ult i32 %i.bl, %i.bm
  br i1 %.not.i70, label %bb.l, label %bb.k, !prof !171

bb.k:                                             ; preds = %_ZN4llvm5ErrorD2Ev.exit69
  call fastcc void @_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_113SubtrieHandleELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull readonly align 8 dereferenceable(40) %12)
  br label %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_113SubtrieHandleELb1EE9push_backERKS2_.exit

bb.l:                                             ; preds = %_ZN4llvm5ErrorD2Ev.exit69
  %i.bn = zext i32 %i.bl to i64
  %.val.i71 = load ptr, ptr %8, align 8, !tbaa !254
  %i.bo = getelementptr inbounds nuw [40 x i8], ptr %.val.i71, i64 %i.bn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(40) %i.bo, ptr noundef nonnull readonly align 8 dereferenceable(40) %12, i64 40, i1 false)
  %i.bp = load i32, ptr %i.al, align 8, !tbaa !256
  %i.bq = add i32 %i.bp, 1
  store i32 %i.bq, ptr %i.al, align 8, !tbaa !256
  br label %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_113SubtrieHandleELb1EE9push_backERKS2_.exit

_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_113SubtrieHandleELb1EE9push_backERKS2_.exit: ; preds = %bb.k, %bb.l
  call void @_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE9push_backERKS6_(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(32) %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br label %bb.m

bb.m:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_113SubtrieHandleELb1EE9push_backERKS2_.exit, %bb.i
  %i.br = trunc i64 %.034130 to i32
  store ptr %.val.i, ptr %13, align 8
  store ptr %i.m, ptr %.sroa.7.0..sroa_idx99, align 8
  store ptr %i.n, ptr %.sroa.10.0..sroa_idx101, align 8
  store i64 %i.r, ptr %.sroa.13.0..sroa_idx103, align 8
  store ptr %i.k, ptr %.sroa.15.0..sroa_idx105, align 8
  %i.bs = load ptr, ptr %11, align 8, !tbaa !19
  %i.bt = load i64, ptr %i.ar, align 8, !tbaa !15
  %i.bu = load ptr, ptr %1, align 8, !tbaa !133
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  %i.bw = load ptr, ptr %i.bv, align 8
  call void %i.bw(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(480) %1, i32 noundef %i.br, ptr noundef nonnull byval(%"class.(anonymous namespace)::SubtrieHandle") align 8 %13, ptr %i.bs, i64 %i.bt, i64 %i.ax) #23
  %i.bx = load ptr, ptr %0, align 8, !tbaa !36
  %.not128.not = icmp eq ptr %i.bx, null
  br label %.critedge49

.critedge49:                                      ; preds = %bb.m, %bb.j
  %.6 = phi i1 [ %.not128.not, %bb.m ], [ false, %bb.j ]
  %i.by = load ptr, ptr %11, align 8, !tbaa !19   ; 2 uses
  %i.bz = icmp eq ptr %i.by, %i.aq
  br i1 %i.bz, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.critedge49
  %i.ca = load i64, ptr %i.aq, align 8, !tbaa !20
  %i.cb = add i64 %i.ca, 1
  call void @_ZdlPvm(ptr noundef %i.by, i64 noundef %i.cb) #25
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %.critedge49, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  br i1 %.6, label %.thread122, label %.loopexit

.thread122:                                       ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %bb.g
  %i.cc = add nuw i64 %.034130, 1                 ; 2 uses
  %.not41 = icmp eq i64 %i.cc, %i.r
  br i1 %.not41, label %.critedge51, label %bb.g, !llvm.loop !511

.critedge51:                                      ; preds = %.thread122
  %i.cd = load i32, ptr %i.al, align 8, !tbaa !256 ; 2 uses
  %i.ce = zext i32 %i.cd to i64
  %.not43132 = icmp eq i32 %i.cd, 0
  br i1 %.not43132, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.critedge51
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ch = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cj = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 32
  br label %bb.n

._crit_edge:                                      ; preds = %_ZNSt14__basic_futureIvED2Ev.exit, %.critedge51
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 112
  call void @_ZN4llvm13StdThreadPool4waitEv(ptr noundef nonnull align 8 dereferenceable(368) %i.cl) #23
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.cn = load i8, ptr %i.cm, align 8, !tbaa !248, !range !137, !noundef !72
  %i.co = trunc nuw i8 %i.cn to i1
  br i1 %i.co, label %bb.z, label %_ZN4llvm5ErrorD2Ev.exit75

bb.n:                                             ; preds = %.lr.ph, %_ZNSt14__basic_futureIvED2Ev.exit
  %.0133 = phi i64 [ 0, %.lr.ph ], [ %i.dr, %_ZNSt14__basic_futureIvED2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4), !noalias !512
  %i.cp = call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef 32, i64 noundef 8) #23, !noalias !515 ; 5 uses
  store ptr %i.cp, ptr %4, align 8, !tbaa !20, !noalias !515
  store ptr %1, ptr %i.cp, align 8, !tbaa !518, !noalias !515
  %.sroa.0.i.i.i.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  store ptr %8, ptr %.sroa.0.i.i.i.sroa.4.0..sroa_idx, align 8, !tbaa !520, !noalias !515
  %.sroa.0.i.i.i.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  store ptr %9, ptr %.sroa.0.i.i.i.sroa.5.0..sroa_idx, align 8, !tbaa !522, !noalias !515
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  store i64 %.0133, ptr %i.cq, align 8, !tbaa !18, !noalias !515
  store <2 x ptr> <ptr @"_ZZN4llvm6detail18UniqueFunctionBaseIvJEEC1ISt5_BindIFZN12_GLOBAL__N_111TrieVisitor5visitEvE3$_0mEES9_EET_NS2_8CalledAsIT0_EEENUlPKS2_E_8__invokeESF_", ptr @"_ZZN4llvm6detail18UniqueFunctionBaseIvJEEC1ISt5_BindIFZN12_GLOBAL__N_111TrieVisitor5visitEvE3$_0mEES9_EET_NS2_8CalledAsIT0_EEENUlPS2_SE_E_8__invokeESE_SE_">, ptr %i.cg, align 8, !tbaa !253, !noalias !515
  call void @llvm.lifetime.start.p0(ptr nonnull %3), !noalias !515
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23, !noalias !524
  call void @_ZSt5asyncIN4llvm15unique_functionIFvvEEEJEESt6futureINSt15__invoke_resultINSt5decayIT_E4typeEJDpNS6_IT0_E4typeEEE4typeEESt6launchOS7_DpOSA_(ptr dead_on_unwind nonnull writable sret(%"class.std::future") align 8 %2, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(40) %4), !noalias !524
  %i.cr = load ptr, ptr %i.ci, align 8, !tbaa !99, !noalias !527 ; 9 uses
  %i.cs = load <2 x ptr>, ptr %2, align 16, !tbaa !253, !noalias !527
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23, !noalias !524
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.cr, null ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt13shared_futureIvEC2ERKS0_.exit.i.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 8 ; 3 uses
  %i.cu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !20, !noalias !524
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.cu, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cv = load i32, ptr %i.ct, align 4, !tbaa !100, !noalias !524
  %i.cw = add nsw i32 %i.cv, 1
  store i32 %i.cw, ptr %i.ct, align 4, !tbaa !100, !noalias !524
  br label %_ZNSt13shared_futureIvEC2ERKS0_.exit.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.cx = atomicrmw volatile add ptr %i.ct, i32 1 acq_rel, align 4, !noalias !524 ; 0 uses
  br label %_ZNSt13shared_futureIvEC2ERKS0_.exit.i.i.i

_ZNSt13shared_futureIvEC2ERKS0_.exit.i.i.i:       ; preds = %bb.q, %bb.p, %bb.n
  store <2 x ptr> %i.cs, ptr %3, align 16, !tbaa !253, !noalias !524
  store <2 x ptr> <ptr @_ZZN4llvm6detail18UniqueFunctionBaseIvJEEC1IZNS_19ThreadPoolInterface9asyncImplIvEESt13shared_futureIT_ENS_15unique_functionIFS7_vEEEPNS_19ThreadPoolTaskGroupEEUlvE_SE_EES7_NS2_8CalledAsIT0_EEENUlPKS2_E_8__invokeESJ_, ptr @_ZZN4llvm6detail18UniqueFunctionBaseIvJEEC1IZNS_19ThreadPoolInterface9asyncImplIvEESt13shared_futureIT_ENS_15unique_functionIFS7_vEEEPNS_19ThreadPoolTaskGroupEEUlvE_SE_EES7_NS2_8CalledAsIT0_EEENUlPS2_SI_E_8__invokeESI_SI_>, ptr %i.cj, align 8, !tbaa !253, !noalias !524
  %i.cy = load ptr, ptr %i.cf, align 8, !tbaa !133, !noalias !524
  %i.cz = load ptr, ptr %i.cy, align 8, !noalias !524
  call void %i.cz(ptr noundef nonnull align 8 dereferenceable(8) %i.cf, ptr nofree noundef nonnull align 8 dereferenceable(40) %3, ptr noundef null) #23, !noalias !524, !inline_history !530
  %i.da = load ptr, ptr %i.ck, align 16, !tbaa !531, !noalias !524 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.da, null
  br i1 %.not.i.i.i.i, label %_ZN4llvm19ThreadPoolInterface9asyncImplIvEESt13shared_futureIT_ENS_15unique_functionIFS3_vEEEPNS_19ThreadPoolTaskGroupE.exit.i.i, label %bb.r

bb.r:                                             ; preds = %_ZNSt13shared_futureIvEC2ERKS0_.exit.i.i.i
  call void %i.da(ptr noundef null, ptr noundef nonnull align 8 dereferenceable(40) %3) #23, !noalias !524, !inline_history !533
  br label %_ZN4llvm19ThreadPoolInterface9asyncImplIvEESt13shared_futureIT_ENS_15unique_functionIFS3_vEEEPNS_19ThreadPoolTaskGroupE.exit.i.i

_ZN4llvm19ThreadPoolInterface9asyncImplIvEESt13shared_futureIT_ENS_15unique_functionIFS3_vEEEPNS_19ThreadPoolTaskGroupE.exit.i.i: ; preds = %bb.r, %_ZNSt13shared_futureIvEC2ERKS0_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3), !noalias !515
  %i.db = load ptr, ptr %i.ch, align 8, !tbaa !531, !noalias !515 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.db, null
  br i1 %.not.i.i.i, label %"_ZN4llvm19ThreadPoolInterface5asyncIZN12_GLOBAL__N_111TrieVisitor5visitEvE3$_0JRmEEEDaOT_DpOT0_.exit", label %bb.s

bb.s:                                             ; preds = %_ZN4llvm19ThreadPoolInterface9asyncImplIvEESt13shared_futureIT_ENS_15unique_functionIFS3_vEEEPNS_19ThreadPoolTaskGroupE.exit.i.i
  call void %i.db(ptr noundef null, ptr noundef nonnull align 8 dereferenceable(40) %4) #23, !noalias !515, !inline_history !534
  br label %"_ZN4llvm19ThreadPoolInterface5asyncIZN12_GLOBAL__N_111TrieVisitor5visitEvE3$_0JRmEEEDaOT_DpOT0_.exit"

"_ZN4llvm19ThreadPoolInterface5asyncIZN12_GLOBAL__N_111TrieVisitor5visitEvE3$_0JRmEEEDaOT_DpOT0_.exit": ; preds = %_ZN4llvm19ThreadPoolInterface9asyncImplIvEESt13shared_futureIT_ENS_15unique_functionIFS3_vEEEPNS_19ThreadPoolTaskGroupE.exit.i.i, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %4), !noalias !512
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt14__basic_futureIvED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %"_ZN4llvm19ThreadPoolInterface5asyncIZN12_GLOBAL__N_111TrieVisitor5visitEvE3$_0JRmEEEDaOT_DpOT0_.exit"
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cr, i64 8 ; 4 uses
  %i.dd = load atomic i64, ptr %i.dc acquire, align 8 ; 2 uses
  %i.de = icmp eq i64 %i.dd, 4294967297
  %i.df = trunc i64 %i.dd to i32                  ; 2 uses
  br i1 %i.de, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store i32 0, ptr %i.dc, align 8, !tbaa !130
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cr, i64 12
  store i32 0, ptr %i.dg, align 4, !tbaa !132
  %i.dh = load ptr, ptr %i.cr, align 8, !tbaa !133
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %i.dj = load ptr, ptr %i.di, align 8
  call void %i.dj(ptr noundef nonnull align 8 dereferenceable(16) %i.cr) #23, !inline_history !535
  %i.dk = load ptr, ptr %i.cr, align 8, !tbaa !133
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 24
  %i.dm = load ptr, ptr %i.dl, align 8
  call void %i.dm(ptr noundef nonnull align 8 dereferenceable(16) %i.cr) #23, !inline_history !535
  br label %_ZNSt14__basic_futureIvED2Ev.exit

bb.v:                                             ; preds = %bb.t
  %i.dn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !20
  %.not.i.i.i.i74 = icmp eq i8 %i.dn, 0
  br i1 %.not.i.i.i.i74, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.do = add nsw i32 %i.df, -1
  store i32 %i.do, ptr %i.dc, align 8, !tbaa !100
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.x:                                             ; preds = %bb.v
  %i.dp = atomicrmw volatile add ptr %i.dc, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.x, %bb.w
  %.0.i.i.i.i.i = phi i32 [ %i.df, %bb.w ], [ %i.dp, %bb.x ]
  %i.dq = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.dq, label %bb.y, label %_ZNSt14__basic_futureIvED2Ev.exit, !prof !136

bb.y:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cr) #23
  br label %_ZNSt14__basic_futureIvED2Ev.exit

_ZNSt14__basic_futureIvED2Ev.exit:                ; preds = %"_ZN4llvm19ThreadPoolInterface5asyncIZN12_GLOBAL__N_111TrieVisitor5visitEvE3$_0JRmEEEDaOT_DpOT0_.exit", %bb.u, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.y
  %i.dr = add nuw nsw i64 %.0133, 1               ; 2 uses
  %.not43 = icmp eq i64 %i.dr, %i.ce
  br i1 %.not43, label %._crit_edge, label %bb.n, !llvm.loop !536

bb.z:                                             ; preds = %._crit_edge
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !36
  store ptr %i.dt, ptr %0, align 8, !tbaa !36
  store ptr null, ptr %i.ds, align 8, !tbaa !36
  br label %.loopexit

_ZN4llvm5ErrorD2Ev.exit75:                        ; preds = %._crit_edge
  store ptr null, ptr %0, align 8, !tbaa !36
  br label %.loopexit

.loopexit:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %.thread, %_ZN4llvm5ErrorD2Ev.exit75, %bb.z
  %i.du = load ptr, ptr %9, align 8, !tbaa !254   ; 3 uses
  %i.dv = load i32, ptr %i.ao, align 8, !tbaa !256 ; 2 uses
  %.not4.i.i = icmp eq i32 %i.dv, 0
  br i1 %.not4.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE13destroy_rangeEPS6_S8_.exit.i, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %.loopexit
  %i.dw = zext i32 %i.dv to i64
  %.idx.i = shl nuw nsw i64 %i.dw, 5
  %i.dx = getelementptr inbounds nuw i8, ptr %i.du, i64 %.idx.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %.lr.ph.i.preheader.i
  %.05.i.i = phi ptr [ %i.dy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.dx, %.lr.ph.i.preheader.i ] ; 2 uses
  %i.dy = getelementptr inbounds i8, ptr %.05.i.i, i64 -32 ; 3 uses
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !19 ; 2 uses
  %i.ea = getelementptr inbounds i8, ptr %.05.i.i, i64 -16 ; 2 uses
  %i.eb = icmp eq ptr %i.dz, %i.ea
  br i1 %i.eb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.ec = load i64, ptr %i.ea, align 8, !tbaa !20
  %i.ed = add i64 %i.ec, 1
  call void @_ZdlPvm(ptr noundef %i.dz, i64 noundef %i.ed) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %.not.i.i76 = icmp eq ptr %i.du, %i.dy
  br i1 %.not.i.i76, label %_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE13destroy_rangeEPS6_S8_.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !537

_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE13destroy_rangeEPS6_S8_.exit.loopexit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %.pre.i = load ptr, ptr %9, align 8, !tbaa !254
  br label %_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE13destroy_rangeEPS6_S8_.exit.i

_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE13destroy_rangeEPS6_S8_.exit.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE13destroy_rangeEPS6_S8_.exit.loopexit.i, %.loopexit
  %i.ee = phi ptr [ %.pre.i, %_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE13destroy_rangeEPS6_S8_.exit.loopexit.i ], [ %i.du, %.loopexit ] ; 2 uses
  %i.ef = icmp eq ptr %i.ee, %i.an
  br i1 %i.ef, label %_ZN4llvm11SmallVectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELj1EED2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE13destroy_rangeEPS6_S8_.exit.i
  call void @free(ptr noundef %i.ee) #23
  br label %_ZN4llvm11SmallVectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELj1EED2Ev.exit

_ZN4llvm11SmallVectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELj1EED2Ev.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE13destroy_rangeEPS6_S8_.exit.i, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  %i.eg = load ptr, ptr %8, align 8, !tbaa !254   ; 2 uses
  %i.eh = icmp eq ptr %i.eg, %i.ak
  br i1 %i.eh, label %_ZN4llvm11SmallVectorIN12_GLOBAL__N_113SubtrieHandleELj1EED2Ev.exit, label %bb.ab
end_hunk_2
