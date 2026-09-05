Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/BitTracker?download=true
inline.NumInlined: 2239
inline.NumDeleted: 989
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 43
loop-unroll.NumUnrolled: 44
begin_hunk_0_@_ZN4llvm10BitTracker17visitBranchesFromERKNS_12MachineInstrE:bb.a
  br i1 %i.gp, label %.loopexit.i, label %bb.al

bb.al:                                            ; preds = %.lr.ph.i.i
  %i.gq = add i32 %i.go, -1                       ; 2 uses
  %i.gr = load ptr, ptr %.06.i.i, align 8, !tbaa !278, !noalias !611 ; 2 uses
  %i.gs = ptrtoint ptr %i.gr to i64
  %i.gt = mul i64 %i.gs, -4658895280553007687     ; 2 uses
  %i.gu = lshr i64 %i.gt, 31
  %i.gv = xor i64 %i.gu, %i.gt
  %i.gw = trunc i64 %i.gv to i32
  %i.gx = and i32 %i.gq, %i.gw                    ; 3 uses
  %i.gy = zext i32 %i.gx to i64                   ; 2 uses
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %i.gm, i64 %i.gy ; 2 uses
  %i.ha = lshr i64 %i.gy, 5
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.gn, i64 %i.ha
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !157, !noalias !611
  %i.hd = and i32 %i.gx, 31
  %i.he = lshr i32 %i.hc, %i.hd
  %i.hf = trunc i32 %i.he to i1
  br i1 %i.hf, label %.lr.ph.i.i89, label %.loopexit.i, !prof !260

.lr.ph.i.i89:                                     ; preds = %bb.al, %bb.am
  %i.hg = phi ptr [ %i.hm, %bb.am ], [ %i.gz, %bb.al ]
  %.024.i.i = phi i32 [ %i.hk, %bb.am ], [ %i.gx, %bb.al ]
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !278, !noalias !611
  %i.hi = icmp eq ptr %i.gr, %i.hh
  br i1 %i.hi, label %_ZN4llvm9SetVectorIPKNS_17MachineBasicBlockENS_11SmallVectorIS3_Lj0EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj0EE6insertERKS3_.exit.i.i, label %bb.am, !prof !263

bb.am:                                            ; preds = %.lr.ph.i.i89
  %i.hj = add nuw i32 %.024.i.i, 1
  %i.hk = and i32 %i.hj, %i.gq                    ; 3 uses
  %i.hl = zext i32 %i.hk to i64                   ; 2 uses
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %i.gm, i64 %i.hl ; 2 uses
  %i.hn = lshr i64 %i.hl, 5
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.gn, i64 %i.hn
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !157, !noalias !611
  %i.hq = and i32 %i.hk, 31
  %i.hr = lshr i32 %i.hp, %i.hq
  %i.hs = trunc i32 %i.hr to i1
  br i1 %i.hs, label %.lr.ph.i.i89, label %.loopexit.i, !prof !264, !llvm.loop !18

.loopexit.i:                                      ; preds = %bb.am, %bb.al, %.lr.ph.i.i
  %.lcssa28.sink.i.ph.i = phi ptr [ %i.gz, %bb.al ], [ null, %.lr.ph.i.i ], [ %i.hm, %bb.am ]
  %i.ht = load i32, ptr %i.af, align 8, !tbaa !274, !noalias !611
  %i.hu = shl i32 %i.ht, 2
  %i.hv = add i32 %i.hu, 4
  %i.hw = mul i32 %i.go, 3
  %.not.i.i87 = icmp ult i32 %i.hv, %i.hw
  br i1 %.not.i.i87, label %.loopexit.i..loopexit_crit_edge, label %bb.an, !prof !263

.loopexit.i..loopexit_crit_edge:                  ; preds = %.loopexit.i
  %.pre = load ptr, ptr %.06.i.i, align 8, !tbaa !278, !noalias !611
  br label %.loopexit

bb.an:                                            ; preds = %.loopexit.i
  %i.hx = shl i32 %i.go, 1
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E4growEj(ptr noundef nonnull align 8 dereferenceable(40) %2, i32 noundef %i.hx), !noalias !611
  %i.hy = load ptr, ptr %2, align 8, !tbaa !277, !noalias !612 ; 5 uses
  %i.hz = load ptr, ptr %i.ad, align 8, !tbaa !276, !noalias !612 ; 5 uses
  %i.ia = load i32, ptr %i.ae, align 4, !tbaa !275, !noalias !612 ; 2 uses
  %i.ib = icmp ne i32 %i.ia, 0
  call void @llvm.assume(i1 %i.ib)
  %i.ic = add i32 %i.ia, -1                       ; 2 uses
  %i.id = load ptr, ptr %.06.i.i, align 8, !tbaa !278, !noalias !611 ; 5 uses
  %i.ie = ptrtoint ptr %i.id to i64
  %i.if = mul i64 %i.ie, -4658895280553007687     ; 2 uses
  %i.ig = lshr i64 %i.if, 31
  %i.ih = xor i64 %i.ig, %i.if
  %i.ii = trunc i64 %i.ih to i32
  %i.ij = and i32 %i.ic, %i.ii                    ; 3 uses
  %i.ik = zext i32 %i.ij to i64                   ; 2 uses
  %i.il = getelementptr inbounds nuw [8 x i8], ptr %i.hy, i64 %i.ik ; 2 uses
  %i.im = lshr i64 %i.ik, 5
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %i.hz, i64 %i.im
  %i.io = load i32, ptr %i.in, align 4, !tbaa !157, !noalias !611
  %i.ip = and i32 %i.ij, 31
  %i.iq = lshr i32 %i.io, %i.ip
  %i.ir = trunc i32 %i.iq to i1
  br i1 %i.ir, label %.lr.ph.i, label %.loopexit, !prof !260

.lr.ph.i:                                         ; preds = %bb.an, %bb.ao
  %i.is = phi ptr [ %i.iy, %bb.ao ], [ %i.il, %bb.an ] ; 2 uses
  %.024.i = phi i32 [ %i.iw, %bb.ao ], [ %i.ij, %bb.an ]
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !278, !noalias !611
  %i.iu = icmp eq ptr %i.id, %i.it
  br i1 %i.iu, label %.loopexit, label %bb.ao, !prof !263

bb.ao:                                            ; preds = %.lr.ph.i
  %i.iv = add nuw i32 %.024.i, 1
  %i.iw = and i32 %i.iv, %i.ic                    ; 3 uses
  %i.ix = zext i32 %i.iw to i64                   ; 2 uses
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %i.hy, i64 %i.ix ; 2 uses
  %i.iz = lshr i64 %i.ix, 5
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %i.hz, i64 %i.iz
  %i.jb = load i32, ptr %i.ja, align 4, !tbaa !157, !noalias !611
  %i.jc = and i32 %i.iw, 31
  %i.jd = lshr i32 %i.jb, %i.jc
  %i.je = trunc i32 %i.jd to i1
  br i1 %i.je, label %.lr.ph.i, label %.loopexit, !prof !264, !llvm.loop !18

.loopexit:                                        ; preds = %.lr.ph.i, %bb.ao, %.loopexit.i..loopexit_crit_edge, %bb.an
  %i.jf = phi ptr [ %.pre, %.loopexit.i..loopexit_crit_edge ], [ %i.id, %bb.an ], [ %i.id, %bb.ao ], [ %i.id, %.lr.ph.i ]
  %i.jg = phi ptr [ %i.gm, %.loopexit.i..loopexit_crit_edge ], [ %i.hy, %bb.an ], [ %i.hy, %bb.ao ], [ %i.hy, %.lr.ph.i ]
  %i.jh = phi ptr [ %i.gn, %.loopexit.i..loopexit_crit_edge ], [ %i.hz, %bb.an ], [ %i.hz, %bb.ao ], [ %i.hz, %.lr.ph.i ]
  %i.ji = phi ptr [ %.lcssa28.sink.i.ph.i, %.loopexit.i..loopexit_crit_edge ], [ %i.il, %bb.an ], [ %i.is, %.lr.ph.i ], [ %i.iy, %bb.ao ] ; 2 uses
  %i.jj = ptrtoint ptr %i.ji to i64
  %i.jk = ptrtoint ptr %i.jg to i64
  %i.jl = sub i64 %i.jj, %i.jk
  %i.jm = ashr exact i64 %i.jl, 3                 ; 2 uses
  %i.jn = trunc i64 %i.jm to i32
  %i.jo = and i32 %i.jn, 31
  %i.jp = shl nuw i32 1, %i.jo
  %i.jq = lshr i64 %i.jm, 5
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr %i.jh, i64 %i.jq ; 2 uses
  %i.js = load i32, ptr %i.jr, align 4, !tbaa !157, !noalias !611
  %i.jt = or i32 %i.jp, %i.js
  store i32 %i.jt, ptr %i.jr, align 4, !tbaa !157, !noalias !611
  %i.ju = load i32, ptr %i.af, align 8, !tbaa !274, !noalias !611
  %i.jv = add i32 %i.ju, 1
  store i32 %i.jv, ptr %i.af, align 8, !tbaa !274, !noalias !611
  store ptr %i.jf, ptr %i.ji, align 8, !tbaa !278, !noalias !611
  %i.jw = load ptr, ptr %.06.i.i, align 8, !tbaa !278 ; 2 uses
  %i.jx = load i32, ptr %i.i, align 8, !tbaa !49  ; 2 uses
  %i.jy = load i32, ptr %i.j, align 4, !tbaa !113
  %.not.i.i.i.i = icmp ult i32 %i.jx, %i.jy
  br i1 %.not.i.i.i.i, label %bb.aq, label %bb.ap, !prof !263

bb.ap:                                            ; preds = %.loopexit
  call void @_ZN4llvm23SmallVectorTemplateBaseIPKNS_17MachineBasicBlockELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef %i.jw)
  br label %_ZN4llvm9SetVectorIPKNS_17MachineBasicBlockENS_11SmallVectorIS3_Lj0EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj0EE6insertERKS3_.exit.i.i

bb.aq:                                            ; preds = %.loopexit
  %i.jz = zext i32 %i.jx to i64
  %i.ka = load ptr, ptr %i.g, align 8, !tbaa !50
  %i.kb = getelementptr inbounds nuw [8 x i8], ptr %i.ka, i64 %i.jz
  store ptr %i.jw, ptr %i.kb, align 1
  %i.kc = load i32, ptr %i.i, align 8, !tbaa !49
  %i.kd = add i32 %i.kc, 1
  store i32 %i.kd, ptr %i.i, align 8, !tbaa !49
  br label %_ZN4llvm9SetVectorIPKNS_17MachineBasicBlockENS_11SmallVectorIS3_Lj0EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj0EE6insertERKS3_.exit.i.i

_ZN4llvm9SetVectorIPKNS_17MachineBasicBlockENS_11SmallVectorIS3_Lj0EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj0EE6insertERKS3_.exit.i.i: ; preds = %.lr.ph.i.i89, %bb.aq, %bb.ap
  %i.ke = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8 ; 2 uses
  %.not.i.i65 = icmp eq ptr %i.ke, %i.gl
  br i1 %.not.i.i65, label %_ZN4llvm11raw_ostreamlsEPKc.exit48, label %.lr.ph.i.i, !llvm.loop !588

_ZN4llvm11raw_ostreamlsEPKc.exit48:               ; preds = %_ZN4llvm9SetVectorIPKNS_17MachineBasicBlockENS_11SmallVectorIS3_Lj0EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj0EE6insertERKS3_.exit.i.i, %_ZN4llvm11raw_ostreamlsEPKc.exit61, %bb.v, %bb.u, %bb.w, %bb.s
  %.1 = phi i8 [ 1, %bb.w ], [ 1, %bb.v ], [ 1, %bb.s ], [ 1, %bb.u ], [ 0, %_ZN4llvm11raw_ostreamlsEPKc.exit61 ], [ 0, %_ZN4llvm9SetVectorIPKNS_17MachineBasicBlockENS_11SmallVectorIS3_Lj0EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj0EE6insertERKS3_.exit.i.i ] ; 2 uses
  %.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.0100.0, align 8
  %i.kf = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i, 4
  %.not.i.i.i66 = icmp eq i64 %i.kf, 0
  br i1 %.not.i.i.i66, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i: ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit48
  %i.kg = getelementptr inbounds nuw i8, ptr %.sroa.0100.0, i64 44
  %i.kh = load i32, ptr %i.kg, align 4, !tbaa !266
  %i.ki = and i32 %i.kh, 8
  %.not34.i.i.i = icmp eq i32 %i.ki, 0
  br i1 %.not34.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i
  %.sroa.0.05.i.i.i = phi ptr [ %i.kk, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i ], [ %.sroa.0100.0, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i ]
  %i.kj = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i, i64 8
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !265 ; 3 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 44
  %i.km = load i32, ptr %i.kl, align 4, !tbaa !266
  %i.kn = and i32 %i.km, 8
  %.not3.i.i.i = icmp eq i32 %i.kn, 0
  br i1 %.not3.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i, !llvm.loop !16

_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i, %_ZN4llvm11raw_ostreamlsEPKc.exit48, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i
  %.sroa.0.1.i.i.i = phi ptr [ %.sroa.0100.0, %_ZN4llvm11raw_ostreamlsEPKc.exit48 ], [ %.sroa.0100.0, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i ], [ %i.kk, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i ]
  %i.ko = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i, i64 8
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !265 ; 2 uses
  %i.kq = load i8, ptr %i.a, align 1, !tbaa !609, !range !268, !noundef !102
  %i.kr = trunc nuw i8 %i.kq to i1
  %i.ks = icmp ne ptr %i.kp, %i.f
  %or.cond = select i1 %i.kr, i1 %i.ks, i1 false
  br i1 %or.cond, label %bb.b, label %.critedge, !llvm.loop !589

.critedge:                                        ; preds = %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit
  %i.kt = call noundef zeroext i1 @_ZNK4llvm17MachineBasicBlock18mayHaveInlineAsmBrEv(ptr noundef nonnull align 8 dereferenceable(360) %i.e) #18
  %i.ku = trunc nuw i8 %.1 to i1
  %i.kv = or i1 %i.kt, %i.ku
  %i.kw = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  %i.kx = load ptr, ptr %i.kw, align 8, !tbaa !50 ; 3 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %i.e, i64 120
  %i.kz = load i32, ptr %i.ky, align 8, !tbaa !49 ; 2 uses
  %i.la = zext i32 %i.kz to i64
  %.idx = shl nuw nsw i64 %i.la, 3
  %i.lb = getelementptr inbounds nuw i8, ptr %i.kx, i64 %.idx ; 2 uses
  %.not5.i.i75 = icmp eq i32 %i.kz, 0             ; 2 uses
  br i1 %i.kv, label %bb.ba, label %bb.ar

bb.ar:                                            ; preds = %.critedge
  br i1 %.not5.i.i75, label %._crit_edge118, label %.lr.ph117

._crit_edge118:                                   ; preds = %_ZN4llvm9SetVectorIPKNS_17MachineBasicBlockENS_11SmallVectorIS3_Lj0EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj0EE6insertERKS3_.exit, %bb.ar
  %i.lc = load i8, ptr %i.a, align 1, !tbaa !609, !range !268, !noundef !102
  %i.ld = trunc nuw i8 %i.lc to i1
  br i1 %i.ld, label %.preheader, label %_ZN4llvm9SetVectorIPKNS_17MachineBasicBlockENS_11SmallVectorIS3_Lj0EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj0EE12insert_rangeINS_14iterator_rangeIPKPS1_EEEEvOT_.exit

.lr.ph117:                                        ; preds = %bb.ar, %_ZN4llvm9SetVectorIPKNS_17MachineBasicBlockENS_11SmallVectorIS3_Lj0EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj0EE6insertERKS3_.exit
  %.038115 = phi ptr [ %i.ls, %_ZN4llvm9SetVectorIPKNS_17MachineBasicBlockENS_11SmallVectorIS3_Lj0EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj0EE6insertERKS3_.exit ], [ %i.kx, %bb.ar ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.le = load ptr, ptr %.038115, align 8, !tbaa !278 ; 2 uses
  store ptr %i.le, ptr %i.b, align 8, !tbaa !278
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 216
  %i.lg = load i8, ptr %i.lf, align 8, !tbaa !613, !range !268, !noundef !102
  %i.lh = trunc nuw i8 %i.lg to i1
  br i1 %i.lh, label %bb.as, label %_ZN4llvm9SetVectorIPKNS_17MachineBasicBlockENS_11SmallVectorIS3_Lj0EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj0EE6insertERKS3_.exit

bb.as:                                            ; preds = %.lr.ph117
  %i.li = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPSA_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.b), !noalias !614
  %.fca.1.extract.i.i.i.i = extractvalue { ptr, i8 } %i.li, 1
  %i.lj = trunc nuw i8 %.fca.1.extract.i.i.i.i to i1
  br i1 %i.lj, label %bb.at, label %_ZN4llvm9SetVectorIPKNS_17MachineBasicBlockENS_11SmallVectorIS3_Lj0EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj0EE6insertERKS3_.exit

bb.at:                                            ; preds = %bb.as
  %i.lk = load ptr, ptr %i.b, align 8, !tbaa !278 ; 2 uses
  %i.ll = load i32, ptr %i.i, align 8, !tbaa !49  ; 2 uses
  %i.lm = load i32, ptr %i.j, align 4, !tbaa !113
  %.not.i.i69 = icmp ult i32 %i.ll, %i.lm
  br i1 %.not.i.i69, label %bb.av, label %bb.au, !prof !263

bb.au:                                            ; preds = %bb.at
  call void @_ZN4llvm23SmallVectorTemplateBaseIPKNS_17MachineBasicBlockELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef %i.lk)
  br label %_ZN4llvm9SetVectorIPKNS_17MachineBasicBlockENS_11SmallVectorIS3_Lj0EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj0EE6insertERKS3_.exit

bb.av:                                            ; preds = %bb.at
  %i.ln = zext i32 %i.ll to i64
  %i.lo = load ptr, ptr %i.g, align 8, !tbaa !50
  %i.lp = getelementptr inbounds nuw [8 x i8], ptr %i.lo, i64 %i.ln
  store ptr %i.lk, ptr %i.lp, align 1
  %i.lq = load i32, ptr %i.i, align 8, !tbaa !49
  %i.lr = add i32 %i.lq, 1
  store i32 %i.lr, ptr %i.i, align 8, !tbaa !49
  br label %_ZN4llvm9SetVectorIPKNS_17MachineBasicBlockENS_11SmallVectorIS3_Lj0EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj0EE6insertERKS3_.exit

_ZN4llvm9SetVectorIPKNS_17MachineBasicBlockENS_11SmallVectorIS3_Lj0EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj0EE6insertERKS3_.exit: ; preds = %bb.av, %bb.au, %bb.as, %.lr.ph117
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  %i.ls = getelementptr inbounds nuw i8, ptr %.038115, i64 8 ; 2 uses
  %.not40 = icmp eq ptr %i.ls, %i.lb
  br i1 %.not40, label %._crit_edge118, label %.lr.ph117

.preheader:                                       ; preds = %._crit_edge118
  %7 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %8 = load ptr, ptr %7, align 8, !tbaa !279      ; 2 uses
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %10 = load ptr, ptr %9, align 8, !tbaa !280, !nonnull !102, !align !103
  %11 = getelementptr inbounds nuw i8, ptr %10, i64 296
  %.not107 = icmp eq ptr %8, %11
  br i1 %.not107, label %_ZN4llvm9SetVectorIPKNS_17MachineBasicBlockENS_11SmallVectorIS3_Lj0EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj0EE12insert_rangeINS_14iterator_rangeIPKPS1_EEEEvOT_.exit, label %bb.aw

bb.aw:                                            ; preds = %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  store ptr %8, ptr %i.c, align 8, !tbaa !278
  %i.lt = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPSA_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.c), !noalias !615
  %.fca.1.extract.i.i.i.i70 = extractvalue { ptr, i8 } %i.lt, 1
  %i.lu = trunc nuw i8 %.fca.1.extract.i.i.i.i70 to i1
  br i1 %i.lu, label %bb.ax, label %_ZN4llvm9SetVectorIPKNS_17MachineBasicBlockENS_11SmallVectorIS3_Lj0EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj0EE6insertERKS3_.exit72

bb.ax:                                            ; preds = %bb.aw
  %i.lv = load ptr, ptr %i.c, align 8, !tbaa !278 ; 2 uses
  %i.lw = load i32, ptr %i.i, align 8, !tbaa !49  ; 2 uses
  %i.lx = load i32, ptr %i.j, align 4, !tbaa !113
  %.not.i.i71 = icmp ult i32 %i.lw, %i.lx
  br i1 %.not.i.i71, label %bb.az, label %bb.ay, !prof !263

bb.ay:                                            ; preds = %bb.ax
  call void @_ZN4llvm23SmallVectorTemplateBaseIPKNS_17MachineBasicBlockELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef %i.lv)
  br label %_ZN4llvm9SetVectorIPKNS_17MachineBasicBlockENS_11SmallVectorIS3_Lj0EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj0EE6insertERKS3_.exit72

bb.az:                                            ; preds = %bb.ax
  %i.ly = zext i32 %i.lw to i64
  %i.lz = load ptr, ptr %i.g, align 8, !tbaa !50
  %i.ma = getelementptr inbounds nuw [8 x i8], ptr %i.lz, i64 %i.ly
  store ptr %i.lv, ptr %i.ma, align 1
  %i.mb = load i32, ptr %i.i, align 8, !tbaa !49
  %i.mc = add i32 %i.mb, 1
  store i32 %i.mc, ptr %i.i, align 8, !tbaa !49
  br label %_ZN4llvm9SetVectorIPKNS_17MachineBasicBlockENS_11SmallVectorIS3_Lj0EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj0EE6insertERKS3_.exit72

_ZN4llvm9SetVectorIPKNS_17MachineBasicBlockENS_11SmallVectorIS3_Lj0EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj0EE6insertERKS3_.exit72: ; preds = %bb.aw, %bb.ay, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  br label %_ZN4llvm9SetVectorIPKNS_17MachineBasicBlockENS_11SmallVectorIS3_Lj0EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj0EE12insert_rangeINS_14iterator_rangeIPKPS1_EEEEvOT_.exit

bb.ba:                                            ; preds = %.critedge
  br i1 %.not5.i.i75, label %_ZN4llvm9SetVectorIPKNS_17MachineBasicBlockENS_11SmallVectorIS3_Lj0EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj0EE12insert_rangeINS_14iterator_rangeIPKPS1_EEEEvOT_.exit, label %.lr.ph.i.i76

.lr.ph.i.i76:                                     ; preds = %bb.ba, %_ZN4llvm9SetVectorIPKNS_17MachineBasicBlockENS_11SmallVectorIS3_Lj0EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj0EE6insertERKS3_.exit.i.i79
  %.06.i.i77 = phi ptr [ %i.mn, %_ZN4llvm9SetVectorIPKNS_17MachineBasicBlockENS_11SmallVectorIS3_Lj0EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj0EE6insertERKS3_.exit.i.i79 ], [ %i.kx, %bb.ba ] ; 3 uses
  %i.md = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_17MachineBasicBlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPSA_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(8) %.06.i.i77), !noalias !616
  %.fca.1.extract.i.i.i.i.i.i78 = extractvalue { ptr, i8 } %i.md, 1
  %i.me = trunc nuw i8 %.fca.1.extract.i.i.i.i.i.i78 to i1
  br i1 %i.me, label %bb.bb, label %_ZN4llvm9SetVectorIPKNS_17MachineBasicBlockENS_11SmallVectorIS3_Lj0EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj0EE6insertERKS3_.exit.i.i79

bb.bb:                                            ; preds = %.lr.ph.i.i76
  %i.mf = load ptr, ptr %.06.i.i77, align 8, !tbaa !278 ; 2 uses
  %i.mg = load i32, ptr %i.i, align 8, !tbaa !49  ; 2 uses
  %i.mh = load i32, ptr %i.j, align 4, !tbaa !113
  %.not.i.i.i.i81 = icmp ult i32 %i.mg, %i.mh
  br i1 %.not.i.i.i.i81, label %bb.bd, label %bb.bc, !prof !263

bb.bc:                                            ; preds = %bb.bb
  call void @_ZN4llvm23SmallVectorTemplateBaseIPKNS_17MachineBasicBlockELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef %i.mf)
  br label %_ZN4llvm9SetVectorIPKNS_17MachineBasicBlockENS_11SmallVectorIS3_Lj0EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj0EE6insertERKS3_.exit.i.i79

bb.bd:                                            ; preds = %bb.bb
  %i.mi = zext i32 %i.mg to i64
  %i.mj = load ptr, ptr %i.g, align 8, !tbaa !50
  %i.mk = getelementptr inbounds nuw [8 x i8], ptr %i.mj, i64 %i.mi
  store ptr %i.mf, ptr %i.mk, align 1
  %i.ml = load i32, ptr %i.i, align 8, !tbaa !49
  %i.mm = add i32 %i.ml, 1
  store i32 %i.mm, ptr %i.i, align 8, !tbaa !49
  br label %_ZN4llvm9SetVectorIPKNS_17MachineBasicBlockENS_11SmallVectorIS3_Lj0EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj0EE6insertERKS3_.exit.i.i79

_ZN4llvm9SetVectorIPKNS_17MachineBasicBlockENS_11SmallVectorIS3_Lj0EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj0EE6insertERKS3_.exit.i.i79: ; preds = %bb.bd, %bb.bc, %.lr.ph.i.i76
  %i.mn = getelementptr inbounds nuw i8, ptr %.06.i.i77, i64 8 ; 2 uses
  %.not.i.i80 = icmp eq ptr %i.mn, %i.lb
  br i1 %.not.i.i80, label %_ZN4llvm9SetVectorIPKNS_17MachineBasicBlockENS_11SmallVectorIS3_Lj0EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj0EE12insert_rangeINS_14iterator_rangeIPKPS1_EEEEvOT_.exit, label %.lr.ph.i.i76, !llvm.loop !608

_ZN4llvm9SetVectorIPKNS_17MachineBasicBlockENS_11SmallVectorIS3_Lj0EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj0EE12insert_rangeINS_14iterator_rangeIPKPS1_EEEEvOT_.exit: ; preds = %_ZN4llvm9SetVectorIPKNS_17MachineBasicBlockENS_11SmallVectorIS3_Lj0EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj0EE6insertERKS3_.exit.i.i79, %bb.ba, %.preheader, %_ZN4llvm9SetVectorIPKNS_17MachineBasicBlockENS_11SmallVectorIS3_Lj0EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj0EE6insertERKS3_.exit72, %._crit_edge118
  %i.mo = load ptr, ptr %i.g, align 8, !tbaa !50  ; 2 uses
  %i.mp = load i32, ptr %i.i, align 8, !tbaa !49  ; 2 uses
  %i.mq = zext i32 %i.mp to i64
  %.idx125 = shl nuw nsw i64 %i.mq, 3
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mo, i64 %.idx125
  %.not41119 = icmp eq i32 %i.mp, 0
  br i1 %.not41119, label %._crit_edge122, label %.lr.ph121

.lr.ph121:                                        ; preds = %_ZN4llvm9SetVectorIPKNS_17MachineBasicBlockENS_11SmallVectorIS3_Lj0EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj0EE12insert_rangeINS_14iterator_rangeIPKPS1_EEEEvOT_.exit
  %i.ms = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.mt = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.mv = getelementptr inbounds nuw i8, ptr %0, i64 208
  br label %bb.bi

._crit_edge122:                                   ; preds = %_ZNSt5queueISt4pairIiiESt5dequeIS1_SaIS1_EEE4pushEOS1_.exit, %_ZN4llvm9SetVectorIPKNS_17MachineBasicBlockENS_11SmallVectorIS3_Lj0EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj0EE12insert_rangeINS_14iterator_rangeIPKPS1_EEEEvOT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %i.mw = load ptr, ptr %i.k, align 8, !tbaa !50  ; 2 uses
  %i.mx = icmp eq ptr %i.mw, %i.l
  br i1 %i.mx, label %_ZN4llvm11SmallVectorIPKNS_17MachineBasicBlockELj0EED2Ev.exit.i, label %bb.be

bb.be:                                            ; preds = %._crit_edge122
  call void @free(ptr noundef %i.mw) #18
  br label %_ZN4llvm11SmallVectorIPKNS_17MachineBasicBlockELj0EED2Ev.exit.i

_ZN4llvm11SmallVectorIPKNS_17MachineBasicBlockELj0EED2Ev.exit.i: ; preds = %bb.be, %._crit_edge122
  %i.my = load i32, ptr %i.r, align 4, !tbaa !275 ; 2 uses
  %i.mz = icmp eq i32 %i.my, 0
  br i1 %i.mz, label %_ZN4llvm9SetVectorIPKNS_17MachineBasicBlockENS_11SmallVectorIS3_Lj0EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj0EED2Ev.exit, label %bb.bf

bb.bf:                                            ; preds = %_ZN4llvm11SmallVectorIPKNS_17MachineBasicBlockELj0EED2Ev.exit.i
  %i.na = load ptr, ptr %3, align 8, !tbaa !277
  %i.nb = zext i32 %i.my to i64                   ; 2 uses
  %i.nc = shl nuw nsw i64 %i.nb, 3
  %i.nd = add nuw nsw i64 %i.nb, 31
  %i.ne = lshr i64 %i.nd, 3
  %i.nf = and i64 %i.ne, 1073741820
  %i.ng = add nuw nsw i64 %i.nf, %i.nc
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.na, i64 noundef %i.ng, i64 noundef 8) #18
  br label %_ZN4llvm9SetVectorIPKNS_17MachineBasicBlockENS_11SmallVectorIS3_Lj0EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj0EED2Ev.exit

_ZN4llvm9SetVectorIPKNS_17MachineBasicBlockENS_11SmallVectorIS3_Lj0EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj0EED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorIPKNS_17MachineBasicBlockELj0EED2Ev.exit.i, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  %i.nh = load ptr, ptr %i.g, align 8, !tbaa !50  ; 2 uses
  %i.ni = icmp eq ptr %i.nh, %i.h
  br i1 %i.ni, label %_ZN4llvm11SmallVectorIPKNS_17MachineBasicBlockELj0EED2Ev.exit.i82, label %bb.bg

bb.bg:                                            ; preds = %_ZN4llvm9SetVectorIPKNS_17MachineBasicBlockENS_11SmallVectorIS3_Lj0EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj0EED2Ev.exit
  call void @free(ptr noundef %i.nh) #18
  br label %_ZN4llvm11SmallVectorIPKNS_17MachineBasicBlockELj0EED2Ev.exit.i82

_ZN4llvm11SmallVectorIPKNS_17MachineBasicBlockELj0EED2Ev.exit.i82: ; preds = %bb.bg, %_ZN4llvm9SetVectorIPKNS_17MachineBasicBlockENS_11SmallVectorIS3_Lj0EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj0EED2Ev.exit
  %i.nj = load i32, ptr %i.ae, align 4, !tbaa !275 ; 2 uses
  %i.nk = icmp eq i32 %i.nj, 0
  br i1 %i.nk, label %_ZN4llvm9SetVectorIPKNS_17MachineBasicBlockENS_11SmallVectorIS3_Lj0EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj0EED2Ev.exit83, label %bb.bh

bb.bh:                                            ; preds = %_ZN4llvm11SmallVectorIPKNS_17MachineBasicBlockELj0EED2Ev.exit.i82
  %i.nl = load ptr, ptr %2, align 8, !tbaa !277
  %i.nm = zext i32 %i.nj to i64                   ; 2 uses
  %i.nn = shl nuw nsw i64 %i.nm, 3
  %i.no = add nuw nsw i64 %i.nm, 31
  %i.np = lshr i64 %i.no, 3
  %i.nq = and i64 %i.np, 1073741820
  %i.nr = add nuw nsw i64 %i.nq, %i.nn
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.nl, i64 noundef %i.nr, i64 noundef 8) #18
  br label %_ZN4llvm9SetVectorIPKNS_17MachineBasicBlockENS_11SmallVectorIS3_Lj0EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj0EED2Ev.exit83

_ZN4llvm9SetVectorIPKNS_17MachineBasicBlockENS_11SmallVectorIS3_Lj0EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj0EED2Ev.exit83: ; preds = %_ZN4llvm11SmallVectorIPKNS_17MachineBasicBlockELj0EED2Ev.exit.i82, %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret void

bb.bi:                                            ; preds = %.lr.ph121, %_ZNSt5queueISt4pairIiiESt5dequeIS1_SaIS1_EEE4pushEOS1_.exit
  %.0120 = phi ptr [ %i.mo, %.lr.ph121 ], [ %i.ob, %_ZNSt5queueISt4pairIiiESt5dequeIS1_SaIS1_EEE4pushEOS1_.exit ] ; 2 uses
  %i.ns = load ptr, ptr %.0120, align 8, !tbaa !278
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ns, i64 24
  %i.nu = load i32, ptr %i.nt, align 8, !tbaa !258
  store i32 %i.p, ptr %6, align 8, !tbaa !270
  store i32 %i.nu, ptr %i.ms, align 4, !tbaa !271
  %i.nv = load ptr, ptr %i.mt, align 8, !tbaa !141 ; 2 uses
  %i.nw = load ptr, ptr %i.mu, align 8, !tbaa !281
  %i.nx = getelementptr inbounds i8, ptr %i.nw, i64 -8
  %.not.i.i.i84 = icmp eq ptr %i.nv, %i.nx
  br i1 %.not.i.i.i84, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.ny = load i64, ptr %6, align 8
  store i64 %i.ny, ptr %i.nv, align 4
  %i.nz = load ptr, ptr %i.mt, align 8, !tbaa !141
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nz, i64 8
  store ptr %i.oa, ptr %i.mt, align 8, !tbaa !141
  br label %_ZNSt5queueISt4pairIiiESt5dequeIS1_SaIS1_EEE4pushEOS1_.exit

bb.bk:                                            ; preds = %bb.bi
  call void @_ZNSt5dequeISt4pairIiiESaIS1_EE16_M_push_back_auxIJS1_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.mv, ptr noundef nonnull align 4 dereferenceable(8) %6)
  br label %_ZNSt5queueISt4pairIiiESt5dequeIS1_SaIS1_EEE4pushEOS1_.exit

_ZNSt5queueISt4pairIiiESt5dequeIS1_SaIS1_EEE4pushEOS1_.exit: ; preds = %bb.bj, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  %i.ob = getelementptr inbounds nuw i8, ptr %.0120, i64 8 ; 2 uses
  %.not41 = icmp eq ptr %i.ob, %i.mr
  br i1 %.not41, label %._crit_edge122, label %bb.bi
}

declare noundef zeroext i1 @_ZNK4llvm17MachineBasicBlock18mayHaveInlineAsmBrEv(ptr noundef nonnull align 8 dereferenceable(360)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm10BitTracker3getENS0_11RegisterRefE(ptr dead_on_unwind noalias writable sret(%"struct.llvm::BitTracker::RegisterCell") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(313) %1, i64 %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"struct.llvm::BitTracker::RegisterRef", align 8 ; 2 uses
  store i64 %2, ptr %3, align 8
  %i.a = load ptr, ptr %1, align 8, !tbaa !114, !nonnull !102, !align !103
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !101, !nonnull !102, !align !103
  call void @_ZNK4llvm10BitTracker16MachineEvaluator7getCellERKNS0_11RegisterRefERKSt3mapIjNS0_12RegisterCellESt4lessIjESaISt4pairIKjS6_EEE(ptr dead_on_unwind writable sret(%"struct.llvm::BitTracker::RegisterCell") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(48) %i.c)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm10BitTracker3putENS0_11RegisterRefERKNS0_12RegisterCellE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(313) %0, i64 %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(400) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"struct.llvm::BitTracker::RegisterRef", align 8 ; 2 uses
  %4 = alloca %"struct.llvm::BitTracker::RegisterCell", align 8 ; 8 uses
  store i64 %1, ptr %3, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr %i.a, ptr %4, align 8, !tbaa !50
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i32 0, ptr %i.b, align 8, !tbaa !49
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 32, ptr %i.c, align 4, !tbaa !113
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !49   ; 5 uses
  %.not.i.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i.i, label %_ZN4llvm10BitTracker12RegisterCellC2ERKS1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp ugt i32 %i.e, 32
  br i1 %i.f, label %_ZSt4copyIPKN4llvm10BitTracker8BitValueEPS2_ET0_T_S7_S6_.exit30.i.i.i, label %_ZSt4copyIPKN4llvm10BitTracker8BitValueEPS2_ET0_T_S7_S6_.exit30.i.thread.i.i

_ZSt4copyIPKN4llvm10BitTracker8BitValueEPS2_ET0_T_S7_S6_.exit30.i.i.i: ; preds = %bb.b
  %i.g = zext i32 %i.e to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(400) %4, ptr noundef nonnull %i.a, i64 noundef %i.g, i64 noundef 12) #18
  %.pre.i.i = load i32, ptr %i.d, align 8, !tbaa !49 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %.pre.i.i, 0
  br i1 %.not.i.i.i.i, label %.sink.split.i.i.i, label %_ZSt4copyIPKN4llvm10BitTracker8BitValueEPS2_ET0_T_S7_S6_.exit30.i.i._ZSt4copyIPKN4llvm10BitTracker8BitValueEPS2_ET0_T_S7_S6_.exit30.i.thread.i_crit_edge.i

_ZSt4copyIPKN4llvm10BitTracker8BitValueEPS2_ET0_T_S7_S6_.exit30.i.i._ZSt4copyIPKN4llvm10BitTracker8BitValueEPS2_ET0_T_S7_S6_.exit30.i.thread.i_crit_edge.i: ; preds = %_ZSt4copyIPKN4llvm10BitTracker8BitValueEPS2_ET0_T_S7_S6_.exit30.i.i.i
  %.pre.i = load ptr, ptr %4, align 8, !tbaa !50
  br label %_ZSt4copyIPKN4llvm10BitTracker8BitValueEPS2_ET0_T_S7_S6_.exit30.i.thread.i.i

_ZSt4copyIPKN4llvm10BitTracker8BitValueEPS2_ET0_T_S7_S6_.exit30.i.thread.i.i: ; preds = %_ZSt4copyIPKN4llvm10BitTracker8BitValueEPS2_ET0_T_S7_S6_.exit30.i.i._ZSt4copyIPKN4llvm10BitTracker8BitValueEPS2_ET0_T_S7_S6_.exit30.i.thread.i_crit_edge.i, %bb.b
  %i.h = phi ptr [ %.pre.i, %_ZSt4copyIPKN4llvm10BitTracker8BitValueEPS2_ET0_T_S7_S6_.exit30.i.i._ZSt4copyIPKN4llvm10BitTracker8BitValueEPS2_ET0_T_S7_S6_.exit30.i.thread.i_crit_edge.i ], [ %i.a, %bb.b ]
  %i.i = phi i32 [ %.pre.i.i, %_ZSt4copyIPKN4llvm10BitTracker8BitValueEPS2_ET0_T_S7_S6_.exit30.i.i._ZSt4copyIPKN4llvm10BitTracker8BitValueEPS2_ET0_T_S7_S6_.exit30.i.thread.i_crit_edge.i ], [ %i.e, %bb.b ]
  %i.j = zext i32 %i.i to i64
  %i.k = load ptr, ptr %2, align 8, !tbaa !50
  %gepdiff.i.i.i = mul nuw nsw i64 %i.j, 12
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr align 4 %i.k, i64 %gepdiff.i.i.i, i1 false)
  br label %.sink.split.i.i.i

.sink.split.i.i.i:                                ; preds = %_ZSt4copyIPKN4llvm10BitTracker8BitValueEPS2_ET0_T_S7_S6_.exit30.i.thread.i.i, %_ZSt4copyIPKN4llvm10BitTracker8BitValueEPS2_ET0_T_S7_S6_.exit30.i.i.i
  store i32 %i.e, ptr %i.b, align 8, !tbaa !49
  br label %_ZN4llvm10BitTracker12RegisterCellC2ERKS1_.exit

_ZN4llvm10BitTracker12RegisterCellC2ERKS1_.exit:  ; preds = %bb.a, %.sink.split.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !101, !nonnull !102, !align !103
  call void @_ZNK4llvm10BitTracker16MachineEvaluator7putCellERKNS0_11RegisterRefENS0_12RegisterCellERSt3mapIjS5_St4lessIjESaISt4pairIKjS5_EEE(ptr nonnull align 8 poison, ptr noundef nonnull align 4 dereferenceable(8) %3, ptr nofree noundef nonnull align 8 dereferenceable(400) %4, ptr noundef nonnull align 8 dereferenceable(48) %i.m)
  %i.n = load ptr, ptr %4, align 8, !tbaa !50     ; 2 uses
  %i.o = icmp eq ptr %i.n, %i.a
  br i1 %i.o, label %_ZN4llvm10BitTracker12RegisterCellD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm10BitTracker12RegisterCellC2ERKS1_.exit
  call void @free(ptr noundef %i.n) #18
  br label %_ZN4llvm10BitTracker12RegisterCellD2Ev.exit

_ZN4llvm10BitTracker12RegisterCellD2Ev.exit:      ; preds = %_ZN4llvm10BitTracker12RegisterCellC2ERKS1_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm10BitTracker5substENS0_11RegisterRefES1_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(313) %0, i64 %1, i64 %2) local_unnamed_addr #0 align 2 {
bb.a:
  %.sroa.029.0.extract.trunc = trunc i64 %1 to i32 ; 2 uses
  %.sroa.3.0.extract.shift30 = lshr i64 %1, 32
  %.sroa.3.0.extract.trunc31 = trunc nuw i64 %.sroa.3.0.extract.shift30 to i32
  %.sroa.020.0.extract.trunc = trunc i64 %2 to i32 ; 2 uses
  %.sroa.3.0.extract.shift = lshr i64 %2, 32
  %.sroa.3.0.extract.trunc = trunc nuw i64 %.sroa.3.0.extract.shift to i32
  %i.a = load ptr, ptr %0, align 8, !tbaa !114, !nonnull !102, !align !103 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !164
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call i32 %i.d(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i32 %.sroa.029.0.extract.trunc, i32 noundef %.sroa.3.0.extract.trunc31) #18 ; 2 uses
  %.sroa.027.0.extract.trunc = trunc i32 %i.e to i16 ; 2 uses
  %.sroa.428.0.extract.shift = lshr i32 %i.e, 16
  %.sroa.428.0.extract.trunc = trunc nuw i32 %.sroa.428.0.extract.shift to i16
  %i.f = load ptr, ptr %0, align 8, !tbaa !114, !nonnull !102, !align !103 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !164
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8
end_hunk_0
