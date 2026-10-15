Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/PPCFastISel?download=true
inline.NumInlined: 4586
inline.NumDeleted: 1387
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN12_GLOBAL__N_111PPCFastISel17PPCComputeAddressEPKN4llvm5ValueERNS_7AddressE:bb.a
  br label %_ZNK4llvm25generic_gep_type_iteratorIPKNS_3UseEE14getIndexedTypeEv.exit.i130

_ZNK4llvm25generic_gep_type_iteratorIPKNS_3UseEE14getIndexedTypeEv.exit.i130: ; preds = %bb.am, %bb.al, %bb.aj
  %.490.ph245 = phi i64 [ %.490.ph246250, %bb.am ], [ %i.gr, %bb.al ], [ %i.gr, %bb.aj ] ; 2 uses
  %.2.i.i131 = phi ptr [ %i.gx, %bb.am ], [ %i.gv, %bb.al ], [ %i.el, %bb.aj ] ; 5 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %.2.i.i131, i64 8
  %i.gz = load i32, ptr %i.gy, align 8            ; 2 uses
  %i.ha = and i32 %i.gz, 255                      ; 2 uses
  %i.hb = icmp ne i32 %i.ha, 17
  %.not12.i = icmp eq ptr %.2.i.i131, null        ; 2 uses
  %.not.i = or i1 %.not12.i, %i.hb
  br i1 %.not.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %_ZNK4llvm25generic_gep_type_iteratorIPKNS_3UseEE14getIndexedTypeEv.exit.i130
  %i.hc = getelementptr inbounds nuw i8, ptr %.2.i.i131, i64 24
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !455
  %i.he = ptrtoint ptr %i.hd to i64
  %i.hf = or i64 %i.he, 4
  br label %_ZN4llvm25generic_gep_type_iteratorIPKNS_3UseEEppEv.exit

bb.ao:                                            ; preds = %_ZNK4llvm25generic_gep_type_iteratorIPKNS_3UseEE14getIndexedTypeEv.exit.i130
  %i.hg = and i32 %i.gz, 254
  %spec.select.i.i.i.i.i.i.i.i.i = icmp ne i32 %i.hg, 18
  %.not9.i = or i1 %.not12.i, %spec.select.i.i.i.i.i.i.i.i.i
  br i1 %.not9.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.hh = ptrtoint ptr %.2.i.i131 to i64
  %i.hi = or i64 %i.hh, 2
  br label %_ZN4llvm25generic_gep_type_iteratorIPKNS_3UseEEppEv.exit

bb.aq:                                            ; preds = %bb.ao
  %i.hj = icmp eq i32 %i.ha, 16
  %i.hk = ptrtoint ptr %.2.i.i131 to i64
  %i.hl = select i1 %i.hj, i64 %i.hk, i64 0
  br label %_ZN4llvm25generic_gep_type_iteratorIPKNS_3UseEEppEv.exit

_ZN4llvm25generic_gep_type_iteratorIPKNS_3UseEEppEv.exit: ; preds = %bb.an, %bb.ap, %bb.aq
  %.sink.i = phi i64 [ %i.hi, %bb.ap ], [ %i.hl, %bb.aq ], [ %i.hf, %bb.an ]
  %.093 = getelementptr inbounds nuw i8, ptr %.093225, i64 32 ; 2 uses
  %.not100 = icmp eq ptr %.093, %i.ef
  br i1 %.not100, label %._crit_edge, label %bb.x, !llvm.loop !889

._crit_edge:                                      ; preds = %_ZN4llvm25generic_gep_type_iteratorIPKNS_3UseEEppEv.exit, %_ZNK4llvm4User6op_endEv.exit
  %.086.lcssa = phi i64 [ %i.dt, %_ZNK4llvm4User6op_endEv.exit ], [ %.490.ph245, %_ZN4llvm25generic_gep_type_iteratorIPKNS_3UseEEppEv.exit ]
  store i64 %.086.lcssa, ptr %i.ds, align 8, !tbaa !451
  %i.hm = load i32, ptr %i.dv, align 4            ; 2 uses
  %i.hn = and i32 %i.hm, 1073741824
  %.not.i.i133 = icmp eq i32 %i.hn, 0
  br i1 %.not.i.i133, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %._crit_edge
  %i.ho = getelementptr inbounds i8, ptr %.tr203, i64 -8
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !291
  br label %_ZNK4llvm4User10getOperandEj.exit134

bb.as:                                            ; preds = %._crit_edge
  %i.hq = and i32 %i.hm, 268435455
  %i.hr = zext nneg i32 %i.hq to i64
  %i.hs = sub nsw i64 0, %i.hr
  %i.ht = getelementptr inbounds [32 x i8], ptr %.tr203, i64 %i.hs
  br label %_ZNK4llvm4User10getOperandEj.exit134

_ZNK4llvm4User10getOperandEj.exit134:             ; preds = %bb.ar, %bb.as
  %i.hu = phi ptr [ %i.hp, %bb.ar ], [ %i.ht, %bb.as ]
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !286
  %i.hw = tail call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_111PPCFastISel17PPCComputeAddressEPKN4llvm5ValueERNS_7AddressE(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef %i.hv, ptr noundef nonnull align 8 dereferenceable(16) %2)
  br i1 %i.hw, label %.critedge, label %bb.at

bb.at:                                            ; preds = %_ZNK4llvm4User10getOperandEj.exit134
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !899
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %.critedge105

bb.au:                                            ; preds = %bb.g
  %i.hx = load ptr, ptr %i.a, align 8, !tbaa !292, !nonnull !100, !align !101 ; 3 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 216
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !441, !noalias !900 ; 3 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hx, i64 224
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !442, !noalias !900 ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hx, i64 236
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !443, !noalias !900 ; 4 uses
  %i.ie = icmp eq i32 %i.id, 0
  br i1 %i.ie, label %.loopexit.i.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.if = add i32 %i.id, -1                       ; 2 uses
  %i.ig = ptrtoint ptr %.tr203 to i64
  %i.ih = mul i64 %i.ig, -4658895280553007687     ; 2 uses
  %i.ii = lshr i64 %i.ih, 31
  %i.ij = xor i64 %i.ii, %i.ih
  %i.ik = trunc i64 %i.ij to i32
  %i.il = and i32 %i.if, %i.ik                    ; 3 uses
  %i.im = zext i32 %i.il to i64                   ; 2 uses
  %i.in = lshr i64 %i.im, 5
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %i.ib, i64 %i.in
  %i.ip = load i32, ptr %i.io, align 4, !tbaa !294, !noalias !901
  %i.iq = and i32 %i.il, 31
  %i.ir = lshr i32 %i.ip, %i.iq
  %i.is = trunc i32 %i.ir to i1
  br i1 %i.is, label %.lr.ph.i.i.i.i, label %.loopexit.i.i, !prof !444

.lr.ph.i.i.i.i:                                   ; preds = %bb.av, %bb.aw
  %i.it = phi i64 [ %i.iz, %bb.aw ], [ %i.im, %bb.av ]
  %.017.i.i.i.i = phi i32 [ %i.iy, %bb.aw ], [ %i.il, %bb.av ]
  %i.iu = getelementptr inbounds nuw [16 x i8], ptr %i.hz, i64 %i.it ; 2 uses
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !446, !noalias !901
  %i.iw = icmp eq ptr %.tr203, %i.iv
  br i1 %i.iw, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10AllocaInstEiNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_iEEEES4_iS6_S9_E4findES4_.exit.loopexit, label %bb.aw, !prof !376

bb.aw:                                            ; preds = %.lr.ph.i.i.i.i
  %i.ix = add nuw i32 %.017.i.i.i.i, 1
  %i.iy = and i32 %i.ix, %i.if                    ; 3 uses
  %i.iz = zext i32 %i.iy to i64                   ; 2 uses
  %i.ja = lshr i64 %i.iz, 5
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %i.ib, i64 %i.ja
  %i.jc = load i32, ptr %i.jb, align 4, !tbaa !294, !noalias !901
  %i.jd = and i32 %i.iy, 31
  %i.je = lshr i32 %i.jc, %i.jd
  %i.jf = trunc i32 %i.je to i1
  br i1 %i.jf, label %.lr.ph.i.i.i.i, label %.loopexit.i.i, !prof !447

.loopexit.i.i:                                    ; preds = %bb.aw, %bb.av, %bb.au
  %i.jg = zext i32 %i.id to i64                   ; 2 uses
  %i.jh = getelementptr inbounds nuw [16 x i8], ptr %i.hz, i64 %i.jg
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10AllocaInstEiNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_iEEEES4_iS6_S9_E4findES4_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10AllocaInstEiNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_iEEEES4_iS6_S9_E4findES4_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i
  %.pre235 = zext i32 %i.id to i64
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10AllocaInstEiNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_iEEEES4_iS6_S9_E4findES4_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10AllocaInstEiNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_iEEEES4_iS6_S9_E4findES4_.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10AllocaInstEiNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_iEEEES4_iS6_S9_E4findES4_.exit.loopexit, %.loopexit.i.i
  %.pre-phi = phi i64 [ %.pre235, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10AllocaInstEiNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_iEEEES4_iS6_S9_E4findES4_.exit.loopexit ], [ %i.jg, %.loopexit.i.i ]
  %.lcssa.sink.i.i = phi ptr [ %i.iu, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10AllocaInstEiNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_iEEEES4_iS6_S9_E4findES4_.exit.loopexit ], [ %i.jh, %.loopexit.i.i ] ; 2 uses
  %i.ji = getelementptr inbounds nuw [16 x i8], ptr %i.hz, i64 %.pre-phi
  %.not198 = icmp eq ptr %.lcssa.sink.i.i, %i.ji
  br i1 %.not198, label %.critedge105, label %bb.ax

bb.ax:                                            ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10AllocaInstEiNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_iEEEES4_iS6_S9_E4findES4_.exit
  store i32 1, ptr %2, align 8, !tbaa !456
  %i.jj = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i, i64 8
  %i.jk = load i32, ptr %i.jj, align 8, !tbaa !449
  %i.jl = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %i.jk, ptr %i.jl, align 4, !tbaa !282
  br label %bb.az

.critedge105:                                     ; preds = %bb.e, %.loopexit205, %bb.q, %_ZNK4llvm4User10getOperandEj.exit108, %bb.g, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_10AllocaInstEiNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_iEEEES4_iS6_S9_E4findES4_.exit, %.loopexit
  %i.jm = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  %i.jn = load i32, ptr %i.jm, align 4, !tbaa !282 ; 2 uses
  %i.jo = icmp eq i32 %i.jn, 0
  br i1 %i.jo, label %bb.ay, label %.thread194

bb.ay:                                            ; preds = %.critedge105
  %i.jp = tail call i32 @_ZN4llvm8FastISel14getRegForValueEPKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull %.tr203) #18 ; 3 uses
  store i32 %i.jp, ptr %i.jm, align 4, !tbaa !282
  %.not103 = icmp eq i32 %i.jp, 0
  br i1 %.not103, label %bb.az, label %.thread194

.thread194:                                       ; preds = %.critedge105, %bb.ay
  %i.jq = phi i32 [ %i.jp, %bb.ay ], [ %i.jn, %.critedge105 ]
  %i.jr = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !295, !nonnull !100, !align !101
  tail call void @_ZN4llvm19MachineRegisterInfo11setRegClassENS_8RegisterEPKNS_15MCRegisterClassE(ptr noundef nonnull align 8 dereferenceable(520) %i.js, i32 %i.jq, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZN4llvm25PPCMCRegisterClassStorageE, i64 1088)) #18
  %.pre = load i32, ptr %i.jm, align 4, !tbaa !282
  %i.jt = icmp ne i32 %.pre, 0
  br label %bb.az

.critedge:                                        ; preds = %_ZNK4llvm4User10getOperandEj.exit134
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %.thread194, %bb.ax, %.critedge
  %.2 = phi i1 [ true, %.critedge ], [ true, %bb.ax ], [ %i.jt, %.thread194 ], [ false, %bb.ay ]
  ret i1 %.2
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_111PPCFastISel11PPCEmitLoadEN4llvm3MVTERNS1_8RegisterERNS_7AddressEPKNS1_15MCRegisterClassEbj(ptr noundef nonnull align 8 dereferenceable(240) %0, i16 %1, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %3, ptr noundef %4, i1 noundef zeroext %5, i32 noundef range(i32 1022, 1384) %6) unnamed_addr #0 align 2 {
bb.a:
  %7 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %8 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %9 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %10 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %11 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %12 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %13 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %14 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %i.a = alloca i8, align 1                       ; 9 uses
  %15 = alloca %"class.llvm::Register", align 4   ; 5 uses
  %16 = alloca %"struct.llvm::MachinePointerInfo", align 8 ; 2 uses
  %17 = alloca %"struct.llvm::AAMDNodes", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i8 1, ptr %i.a, align 1, !tbaa !457
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !267
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 520
  %i.e = load i8, ptr %i.d, align 8, !tbaa !287, !range !247, !noundef !100
  %i.f = trunc nuw i8 %i.e to i1                  ; 3 uses
  %i.g = load i32, ptr %2, align 4, !tbaa !297    ; 2 uses
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !295, !nonnull !100, !align !101
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.k = and i32 %i.g, 2147483647
  %i.l = zext nneg i32 %i.k to i64
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !296
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.l
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.n, align 8
  %i.o = and i64 %.0.copyload.i.i.i.i.i.i, -5
  %i.p = inttoptr i64 %i.o to ptr
  br label %switch.edge

bb.c:                                             ; preds = %bb.a
  %.not81 = icmp eq ptr %4, null
  br i1 %.not81, label %bb.d, label %switch.edge

bb.d:                                             ; preds = %bb.c
  switch i16 %1, label %switch.edge [
    i16 15, label %.thread111
    i16 14, label %.thread
    i16 8, label %switch.edge.thread
  ]

.thread111:                                       ; preds = %bb.d
  %i.q = select i1 %i.f, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm25PPCMCRegisterClassStorageE, i64 1280), ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm25PPCMCRegisterClassStorageE, i64 1152) ; 2 uses
  %18 = getelementptr inbounds nuw i8, ptr %i.q, i64 20
  br label %bb.k

.thread:                                          ; preds = %bb.d
  %i.r = select i1 %i.f, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm25PPCMCRegisterClassStorageE, i64 64), ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm25PPCMCRegisterClassStorageE, i64 320) ; 2 uses
  %19 = getelementptr inbounds nuw i8, ptr %i.r, i64 20
  br label %bb.j

switch.edge:                                      ; preds = %bb.d, %bb.c, %bb.b
  %i.s = phi ptr [ %i.p, %bb.b ], [ %4, %bb.c ], [ getelementptr inbounds nuw (i8, ptr @_ZN4llvm25PPCMCRegisterClassStorageE, i64 192), %bb.d ] ; 9 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 20 ; 9 uses
  %i.u = load i16, ptr %i.t, align 4, !tbaa !321
  %i.v = zext i16 %i.u to i32                     ; 2 uses
  %i.w = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm25PPCMCRegisterClassStorageE, i64 92), align 4, !tbaa !458
  %i.x = zext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm25PPCMCRegisterClassStorageE, i64 64), i64 %i.x
  %i.z = lshr i32 %i.v, 5
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !294
  %i.ad = and i32 %i.v, 31
  %i.ae = lshr i32 %i.ac, %i.ad
  %i.af = trunc i32 %i.ae to i1                   ; 6 uses
  switch i16 %1, label %bb.aq [
    i16 5, label %bb.e
    i16 6, label %bb.f
    i16 7, label %bb.g
    i16 8, label %switch.edge.thread
    i16 14, label %bb.j
    i16 15, label %bb.k
  ]

bb.e:                                             ; preds = %switch.edge
  %i.ag = select i1 %i.af, i32 1344, i32 1345
  br label %bb.k

bb.f:                                             ; preds = %switch.edge
  %i.ah = select i1 %i.af, i32 1406, i32 1407
  %i.ai = select i1 %i.af, i32 1390, i32 1391
  %i.aj = select i1 %5, i32 %i.ah, i32 %i.ai
  br label %bb.k

bb.g:                                             ; preds = %switch.edge
  %i.ak = select i1 %i.af, i32 1450, i32 1451
  %i.al = select i1 %i.af, i32 1446, i32 1435
  %i.am = select i1 %5, i32 %i.ak, i32 %i.al      ; 4 uses
  %i.an = icmp eq i32 %i.am, 1435
  %not. = xor i1 %5, true
  %i.ao = and i1 %not., %i.af
  %or.cond = or i1 %i.ao, %i.an
  br i1 %or.cond, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !451
  %i.ar = and i64 %i.aq, 3
  %.not82 = icmp eq i64 %i.ar, 0
  br i1 %.not82, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i8 0, ptr %i.a, align 1, !tbaa !457
  br label %bb.k

switch.edge.thread:                               ; preds = %bb.d, %switch.edge
  %i.as = phi ptr [ %i.t, %switch.edge ], [ getelementptr inbounds nuw (i8, ptr @_ZN4llvm25PPCMCRegisterClassStorageE, i64 1108), %bb.d ]
  %i.at = phi ptr [ %i.s, %switch.edge ], [ getelementptr inbounds nuw (i8, ptr @_ZN4llvm25PPCMCRegisterClassStorageE, i64 1088), %bb.d ]
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.av = load i64, ptr %i.au, align 8, !tbaa !451
  %i.aw = and i64 %i.av, 3
  %i.ax = icmp eq i64 %i.aw, 0
  %i.ay = zext i1 %i.ax to i8
  store i8 %i.ay, ptr %i.a, align 1, !tbaa !457
  br label %bb.k

bb.j:                                             ; preds = %.thread, %switch.edge
  %i.az = phi ptr [ %19, %.thread ], [ %i.t, %switch.edge ]
  %i.ba = phi ptr [ %i.r, %.thread ], [ %i.s, %switch.edge ]
  %i.bb = select i1 %i.f, i32 1962, i32 1384
  br label %bb.k

bb.k:                                             ; preds = %.thread111, %switch.edge, %bb.h, %bb.i, %bb.g, %bb.j, %switch.edge.thread, %bb.f, %bb.e
  %i.bc = phi ptr [ %i.t, %bb.e ], [ %i.t, %bb.f ], [ %i.t, %bb.i ], [ %i.t, %bb.h ], [ %i.t, %bb.g ], [ %i.as, %switch.edge.thread ], [ %i.az, %bb.j ], [ %i.t, %switch.edge ], [ %18, %.thread111 ]
  %i.bd = phi ptr [ %i.s, %bb.e ], [ %i.s, %bb.f ], [ %i.s, %bb.i ], [ %i.s, %bb.h ], [ %i.s, %bb.g ], [ %i.at, %switch.edge.thread ], [ %i.ba, %bb.j ], [ %i.s, %switch.edge ], [ %i.q, %.thread111 ]
  %.077 = phi i32 [ %i.ag, %bb.e ], [ %i.aj, %bb.f ], [ %i.am, %bb.i ], [ %i.am, %bb.h ], [ %i.am, %bb.g ], [ 1356, %switch.edge.thread ], [ %i.bb, %bb.j ], [ %6, %switch.edge ], [ %6, %.thread111 ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #18
  store i32 0, ptr %15, align 4, !tbaa !297
  call fastcc void @_ZN12_GLOBAL__N_111PPCFastISel18PPCSimplifyAddressERNS_7AddressERbRN4llvm8RegisterE(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %15)
  %.val = load i16, ptr %i.bc, align 4, !tbaa !321 ; 2 uses
  %i.be = icmp eq i16 %.val, 0                    ; 2 uses
  %i.bf = icmp eq i16 %.val, 13                   ; 2 uses
  %i.bg = icmp eq i32 %.077, 1384
  %i.bh = and i1 %i.bg, %i.be
  %i.bi = icmp eq i32 %.077, 1375
  %i.bj = and i1 %i.bi, %i.bf
  %or.cond3 = or i1 %i.bh, %i.bj                  ; 3 uses
  br i1 %or.cond3, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.bk = load i32, ptr %3, align 8, !tbaa !456
  %i.bl = icmp ne i32 %i.bk, 1
  %i.bm = load i8, ptr %i.a, align 1, !range !247
  %i.bn = trunc nuw i8 %i.bm to i1
  %or.cond5 = select i1 %i.bl, i1 %i.bn, i1 false
  br i1 %or.cond5, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !451
  %i.bq = icmp eq i64 %i.bp, 0
  br i1 %i.bq, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i8 0, ptr %i.a, align 1, !tbaa !457
  br label %bb.o

bb.o:                                             ; preds = %bb.k, %bb.n, %bb.m, %bb.l
  %i.br = load i32, ptr %2, align 4, !tbaa !297   ; 2 uses
  %.not83 = icmp eq i32 %i.br, 0
  br i1 %.not83, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bs = tail call i32 @_ZN4llvm8FastISel15createResultRegEPKNS_15MCRegisterClassE(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull %i.bd) #18 ; 2 uses
  store i32 %i.bs, ptr %2, align 4, !tbaa !294
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.sroa.012.0.copyload = phi i32 [ %i.bs, %bb.p ], [ %i.br, %bb.o ] ; 2 uses
  %i.bt = load i32, ptr %3, align 8, !tbaa !456
  %i.bu = icmp eq i32 %i.bt, 1
  br i1 %i.bu, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  br i1 %or.cond3, label %bb.ap, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !292, !nonnull !100, !align !101
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !89 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !282
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !451
  call void @_ZN4llvm18MachinePointerInfo13getFixedStackERNS_15MachineFunctionEil(ptr dead_on_unwind nonnull writable sret(%"struct.llvm::MachinePointerInfo") align 8 %16, ptr noundef nonnull align 8 dereferenceable(1065) %i.by, i32 noundef %i.ca, i64 noundef %i.cc) #18
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !459, !nonnull !100, !align !101 ; 2 uses
  %i.cf = load i32, ptr %i.bz, align 4, !tbaa !282
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 32
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !479
  %i.cj = add i32 %i.ci, %i.cf
  %i.ck = zext i32 %i.cj to i64
  %i.cl = load ptr, ptr %i.cg, align 8, !tbaa !480
  %i.cm = getelementptr inbounds nuw [40 x i8], ptr %i.cl, i64 %i.ck ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !482 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %.sroa.0.0.copyload.i = load i8, ptr %i.cp, align 8, !tbaa !282
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %17, i8 0, i64 40, i1 false)
  %i.cq = icmp ugt i64 %i.co, 4611686018427387899
  %i.cr = select i1 %i.cq, i64 -4611686018427387906, i64 %i.co
  %i.cs = call noundef ptr @_ZN4llvm15MachineFunction20getMachineMemOperandENS_18MachinePointerInfoENS_17MachineMemOperand5FlagsENS_12LocationSizeENS_5AlignERKNS_9AAMDNodesEPKNS_6MDNodeEhNS_14AtomicOrderingESC_(ptr noundef nonnull align 8 dereferenceable(1065) %i.by, ptr noundef nonnull byval(%"struct.llvm::MachinePointerInfo") align 8 %16, i16 noundef zeroext 1, i64 %i.cr, i8 %.sroa.0.0.copyload.i, ptr noundef nonnull align 8 dereferenceable(40) %17, ptr noundef null, i8 noundef zeroext 1, i32 noundef 0, i32 noundef 0) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #18
  %i.ct = load ptr, ptr %i.bv, align 8, !tbaa !292, !nonnull !100, !align !101 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 680
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !298
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 688
  %.sroa.015.0.copyload = load ptr, ptr %i.cw, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !322, !nonnull !100, !align !101
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !323
  %i.dc = zext nneg i32 %.077 to i64
  %i.dd = sub nsw i64 0, %i.dc
  %i.de = getelementptr inbounds [32 x i8], ptr %i.db, i64 %i.dd
  %.sroa.014.0.copyload = load i32, ptr %2, align 4, !tbaa !294
  %i.df = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %i.cv, ptr %.sroa.015.0.copyload, ptr noundef nonnull align 8 dereferenceable(32) %i.cx, ptr noundef nonnull align 8 dereferenceable(32) %i.de, i32 %.sroa.014.0.copyload) ; 2 uses
  %i.dg = extractvalue { ptr, ptr } %i.df, 0      ; 3 uses
  %i.dh = extractvalue { ptr, ptr } %i.df, 1      ; 3 uses
  %i.di = load i64, ptr %i.cb, align 8, !tbaa !451
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #18
  store i32 1, ptr %14, align 8, !alias.scope !918
  %i.dj = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr null, ptr %i.dj, align 8, !tbaa !325, !alias.scope !918
  %i.dk = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i64 %i.di, ptr %i.dk, align 8, !tbaa !282, !alias.scope !918
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.dh, ptr noundef nonnull align 8 dereferenceable(1065) %i.dg, ptr noundef nonnull align 8 dereferenceable(32) %14) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #18
  %i.dl = load i32, ptr %i.bz, align 4, !tbaa !282
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18
  store i32 5, ptr %13, align 8, !alias.scope !919
  %i.dm = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr null, ptr %i.dm, align 8, !tbaa !325, !alias.scope !919
  %i.dn = getelementptr inbounds nuw i8, ptr %13, i64 16
  store i32 %i.dl, ptr %i.dn, align 8, !tbaa !282, !alias.scope !919
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.dh, ptr noundef nonnull align 8 dereferenceable(1065) %i.dg, ptr noundef nonnull align 8 dereferenceable(32) %13) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  call void @_ZN4llvm12MachineInstr13addMemOperandERNS_15MachineFunctionEPNS_17MachineMemOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.dh, ptr noundef nonnull align 8 dereferenceable(1065) %i.dg, ptr noundef %i.cs) #18
  br label %bb.ap

bb.t:                                             ; preds = %bb.q
  %i.do = load i8, ptr %i.a, align 1, !tbaa !457, !range !247, !noundef !100
  %i.dp = trunc nuw i8 %i.do to i1
  br i1 %i.dp, label %bb.u, label %bb.w
end_hunk_0
