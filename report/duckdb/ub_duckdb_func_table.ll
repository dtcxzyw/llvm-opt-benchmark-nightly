inline.NumInlined: 18938
inline.NumDeleted: 8313
loop-unroll.NumCompletelyUnrolled: 39
loop-unroll.NumRuntimeUnrolled: 82
loop-unroll.NumUnrolled: 121
begin_hunk_0_@_ZN6duckdb23ArrowToDuckDBConversion19ColumnArrowToDuckDBERNS_6VectorER10ArrowArraymRNS_19ArrowArrayScanStateEmRKNS_9ArrowTypeElPNS_12ValidityMaskEmb:bb.a
  %i.bm = trunc i64 %i.bk to i32                  ; 2 uses
  br i1 %i.bl, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  store i32 0, ptr %i.bj, align 8, !tbaa !45
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bi, i64 12
  store i32 0, ptr %i.bn, align 4, !tbaa !47
  %i.bo = load ptr, ptr %i.bi, align 8, !tbaa !48
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8
  call void %i.bq(ptr noundef nonnull align 8 dereferenceable(16) %i.bi) #29, !inline_history !375
  %i.br = load ptr, ptr %i.bi, align 8, !tbaa !48
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8
  call void %i.bt(ptr noundef nonnull align 8 dereferenceable(16) %i.bi) #29, !inline_history !375
  br label %_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EED2Ev.exit621

bb.ag:                                            ; preds = %bb.ae
  %i.bu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i.i618 = icmp eq i8 %i.bu, 0
  br i1 %.not.i.i.i.i618, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.bv = add nsw i32 %i.bm, -1
  store i32 %i.bv, ptr %i.bj, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i619

bb.ai:                                            ; preds = %bb.ag
  %i.bw = atomicrmw volatile add ptr %i.bj, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i619

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i619: ; preds = %bb.ai, %bb.ah
  %.0.i.i.i.i.i620 = phi i32 [ %i.bm, %bb.ah ], [ %i.bw, %bb.ai ]
  %i.bx = icmp eq i32 %.0.i.i.i.i.i620, 1
  br i1 %i.bx, label %bb.aj, label %_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EED2Ev.exit621, !prof !51

bb.aj:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i619
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bi) #29
  br label %_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EED2Ev.exit621

_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EED2Ev.exit621: ; preds = %_ZNSt10unique_ptrIN6duckdb18ArrowAuxiliaryDataESt14default_deleteIS1_EED2Ev.exit, %bb.af, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i619, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #29
  br label %bb.an

bb.ak:                                            ; preds = %_ZN6duckdb6Vector9GetBufferEv.exit612
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.al:                                            ; preds = %bb.z
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.pn563 = phi { ptr, i32 } [ %i.bz, %bb.al ], [ %i.by, %bb.ak ]
  call void @_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %18) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #29
  br label %common.resume

bb.an:                                            ; preds = %bb.q, %bb.u, %_ZN6duckdb6Vector9GetBufferEv.exit, %_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EED2Ev.exit621, %_ZN6duckdb10shared_ptrINS_12VectorBufferELb1EED2Ev.exit
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.cb = load i8, ptr %i.ca, align 8, !tbaa !328
  switch i8 %i.cb, label %bb.ie [
    i8 1, label %bb.ao
    i8 10, label %bb.au
    i8 11, label %bb.av
    i8 12, label %bb.av
    i8 13, label %bb.av
    i8 22, label %bb.av
    i8 23, label %bb.av
    i8 28, label %bb.av
    i8 29, label %bb.av
    i8 30, label %bb.av
    i8 31, label %bb.av
    i8 14, label %bb.av
    i8 50, label %bb.av
    i8 49, label %bb.av
    i8 19, label %bb.av
    i8 17, label %bb.av
    i8 18, label %bb.av
    i8 20, label %bb.av
    i8 34, label %bb.av
    i8 54, label %bb.aw
    i8 26, label %bb.az
    i8 36, label %bb.az
    i8 39, label %bb.az
    i8 25, label %bb.az
    i8 15, label %bb.bf
    i8 16, label %bb.bn
    i8 35, label %bb.bx
    i8 32, label %bb.ch
    i8 27, label %bb.cr
    i8 21, label %bb.dd
    i8 101, label %bb.eg
    i8 108, label %bb.eh
    i8 102, label %bb.er
    i8 100, label %bb.ff
    i8 107, label %bb.ft
  ]

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #29
  call void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %20, i8 noundef zeroext 1)
  invoke void @_ZN6duckdb5ValueC1ENS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(64) %19, ptr noundef nonnull %20)
          to label %bb.ap unwind label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  invoke void @_ZN6duckdb6Vector9ReferenceERKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(64) %19)
          to label %bb.aq unwind label %bb.as

bb.aq:                                            ; preds = %bb.ap
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %19) #29
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %20) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #29
  br label %_ZN6duckdbL14UUIDConversionERNS_6VectorERK10ArrowArraymllm.exit

bb.ar:                                            ; preds = %bb.ao
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.as:                                            ; preds = %bb.ap
  %i.cd = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %19) #29
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %.pn602 = phi { ptr, i32 } [ %i.cd, %bb.as ], [ %i.cc, %bb.ar ]
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %20) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #29
  br label %common.resume

bb.au:                                            ; preds = %bb.an
  %i.ce = call noundef i64 @_ZN6duckdb15NumericCastImplIlmLb0EE7ConvertEm(i64 noundef %8)
  %.not.i622 = icmp eq i64 %6, -1
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !306
  %i.ch = add i64 %i.ce, %2
  %.0.v.i = select i1 %.not.i622, i64 %i.ch, i64 %6
  %.0.i = add i64 %.0.v.i, %i.cg                  ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !352
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !166
  %i.cm = lshr i64 %.0.i, 3
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.cm ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !419 ; 3 uses
  %.not910 = icmp eq i64 %4, 0
  br i1 %.not910, label %_ZN6duckdbL14UUIDConversionERNS_6VectorERK10ArrowArraymllm.exit, label %.lr.ph898.preheader

.lr.ph898.preheader:                              ; preds = %bb.au
  %i.cq = and i64 %.0.i, 7                        ; 2 uses
  %xtraiter1085 = and i64 %4, 1
  %i.cr = icmp eq i64 %4, 1
  br i1 %i.cr, label %.lr.ph898.epil.preheader, label %.lr.ph898.preheader.new

.lr.ph898.preheader.new:                          ; preds = %.lr.ph898.preheader
  %unroll_iter1088 = and i64 %4, -2
  br label %.lr.ph898

.lr.ph898:                                        ; preds = %.lr.ph898, %.lr.ph898.preheader.new
  %.0529896 = phi i32 [ 0, %.lr.ph898.preheader.new ], [ %spec.select608.1, %.lr.ph898 ] ; 2 uses
  %.0531895 = phi i64 [ %i.cq, %.lr.ph898.preheader.new ], [ %spec.select.1, %.lr.ph898 ] ; 2 uses
  %.0533894 = phi i64 [ 0, %.lr.ph898.preheader.new ], [ %i.dp, %.lr.ph898 ] ; 3 uses
  %niter1089 = phi i64 [ 0, %.lr.ph898.preheader.new ], [ %niter1089.next.1, %.lr.ph898 ]
  %i.cs = zext nneg i32 %.0529896 to i64
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.cs
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !24
  %i.cv = zext i8 %i.cu to i32
  %i.cw = trunc nuw nsw i64 %.0531895 to i32
  %i.cx = lshr i32 %i.cv, %i.cw
  %i.cy = trunc nuw i32 %i.cx to i8
  %spec.select1024 = and i8 %i.cy, 1
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cp, i64 %.0533894
  store i8 %spec.select1024, ptr %i.cz, align 1, !tbaa !24
  %i.da = add nuw nsw i64 %.0531895, 1            ; 2 uses
  %i.db = icmp eq i64 %i.da, 8                    ; 2 uses
  %spec.select = select i1 %i.db, i64 0, i64 %i.da ; 2 uses
  %i.dc = zext i1 %i.db to i32
  %spec.select608 = add nuw nsw i32 %.0529896, %i.dc ; 2 uses
  %i.dd = zext nneg i32 %spec.select608 to i64
  %i.de = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.dd
  %i.df = load i8, ptr %i.de, align 1, !tbaa !24
  %i.dg = zext i8 %i.df to i32
  %i.dh = trunc nuw nsw i64 %spec.select to i32
  %i.di = lshr i32 %i.dg, %i.dh
  %i.dj = trunc nuw i32 %i.di to i8
  %spec.select1024.1 = and i8 %i.dj, 1
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cp, i64 %.0533894
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 1
  store i8 %spec.select1024.1, ptr %i.dl, align 1, !tbaa !24
  %i.dm = add nuw nsw i64 %spec.select, 1         ; 2 uses
  %i.dn = icmp eq i64 %i.dm, 8                    ; 2 uses
  %spec.select.1 = select i1 %i.dn, i64 0, i64 %i.dm ; 2 uses
  %i.do = zext i1 %i.dn to i32
  %spec.select608.1 = add nuw nsw i32 %spec.select608, %i.do ; 2 uses
  %i.dp = add nuw i64 %.0533894, 2                ; 2 uses
  %niter1089.next.1 = add nuw i64 %niter1089, 2   ; 2 uses
  %niter1089.ncmp.1 = icmp eq i64 %niter1089.next.1, %unroll_iter1088
  br i1 %niter1089.ncmp.1, label %_ZN6duckdbL14UUIDConversionERNS_6VectorERK10ArrowArraymllm.exit.loopexit.unr-lcssa, label %.lr.ph898, !llvm.loop !425

bb.av:                                            ; preds = %bb.an, %bb.an, %bb.an, %bb.an, %bb.an, %bb.an, %bb.an, %bb.an, %bb.an, %bb.an, %bb.an, %bb.an, %bb.an, %bb.an, %bb.an, %bb.an, %bb.an
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !329
  %i.ds = call noundef i64 @_ZN6duckdb13GetTypeIdSizeENS_12PhysicalTypeE(i8 noundef zeroext %i.dr)
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !352
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !166
  %i.dx = call noundef i64 @_ZN6duckdb15NumericCastImplIlmLb0EE7ConvertEm(i64 noundef %8)
  %.not.i.i = icmp eq i64 %6, -1
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !306
  %i.ea = add i64 %i.dx, %2
  %.0.v.i.i = select i1 %.not.i.i, i64 %i.ea, i64 %6
  %.0.i.i = add i64 %.0.v.i.i, %i.dz
  %i.eb = mul i64 %.0.i.i, %i.ds
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dw, i64 %i.eb
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.ec, ptr %i.ed, align 8, !tbaa !419
  br label %_ZN6duckdbL14UUIDConversionERNS_6VectorERK10ArrowArraymllm.exit

bb.aw:                                            ; preds = %bb.an
  %i.ee = call noundef i64 @_ZN6duckdb15NumericCastImplIlmLb0EE7ConvertEm(i64 noundef %8)
  call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_9hugeint_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !419 ; 4 uses
  call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ei = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !352
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !166
  %.not.i.i623 = icmp eq i64 %6, -1
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.en = load i64, ptr %i.em, align 8, !tbaa !306
  %i.eo = add i64 %i.ee, %2
  %.0.v.i.i624 = select i1 %.not.i.i623, i64 %i.eo, i64 %6
  %i.ep = getelementptr [16 x i8], ptr %i.el, i64 %.0.v.i.i624
  %i.eq = getelementptr [16 x i8], ptr %i.ep, i64 %i.en ; 4 uses
  %i.er = load ptr, ptr %i.eh, align 8, !tbaa !353 ; 2 uses
  %.not.i35.i = icmp eq ptr %i.er, null
  %.not43.i = icmp eq i64 %4, 0                   ; 2 uses
  br i1 %.not.i35.i, label %.preheader.i, label %.preheader38.i

.preheader38.i:                                   ; preds = %bb.aw
  br i1 %.not43.i, label %_ZN6duckdbL14UUIDConversionERNS_6VectorERK10ArrowArraymllm.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i

.preheader.i:                                     ; preds = %bb.aw
  br i1 %.not43.i, label %_ZN6duckdbL14UUIDConversionERNS_6VectorERK10ArrowArraymllm.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.preheader.i
  %xtraiter1080 = and i64 %4, 1
  %i.es = icmp eq i64 %4, 1
  br i1 %i.es, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter1083 = and i64 %4, -2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.03141.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.fi, %.lr.ph.i ] ; 4 uses
  %niter1084 = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter1084.next.1, %.lr.ph.i ]
  %i.et = getelementptr inbounds nuw [16 x i8], ptr %i.eq, i64 %.03141.i ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %.val32.i = load i64, ptr %i.eu, align 8, !tbaa !23
  %i.ev = call noundef i64 @llvm.bswap.i64(i64 %.val32.i)
  %i.ew = getelementptr inbounds nuw [16 x i8], ptr %i.eg, i64 %.03141.i ; 2 uses
  store i64 %i.ev, ptr %i.ew, align 8, !tbaa !426
  %.val34.i = load i64, ptr %i.et, align 8, !tbaa !23
  %i.ex = xor i64 %.val34.i, 128
  %i.ey = call i64 @llvm.bswap.i64(i64 %i.ex)
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  store i64 %i.ey, ptr %i.ez, align 8, !tbaa !428
  %i.fa = or disjoint i64 %.03141.i, 1            ; 2 uses
  %i.fb = getelementptr inbounds nuw [16 x i8], ptr %i.eq, i64 %i.fa ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  %.val32.i.1 = load i64, ptr %i.fc, align 8, !tbaa !23
  %i.fd = call noundef i64 @llvm.bswap.i64(i64 %.val32.i.1)
  %i.fe = getelementptr inbounds nuw [16 x i8], ptr %i.eg, i64 %i.fa ; 2 uses
  store i64 %i.fd, ptr %i.fe, align 8, !tbaa !426
  %.val34.i.1 = load i64, ptr %i.fb, align 8, !tbaa !23
  %i.ff = xor i64 %.val34.i.1, 128
  %i.fg = call i64 @llvm.bswap.i64(i64 %i.ff)
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  store i64 %i.fg, ptr %i.fh, align 8, !tbaa !428
  %i.fi = add nuw i64 %.03141.i, 2                ; 2 uses
  %niter1084.next.1 = add nuw i64 %niter1084, 2   ; 2 uses
  %niter1084.ncmp.1 = icmp eq i64 %niter1084.next.1, %unroll_iter1083
  br i1 %niter1084.ncmp.1, label %_ZN6duckdbL14UUIDConversionERNS_6VectorERK10ArrowArraymllm.exit.loopexit1042.unr-lcssa, label %.lr.ph.i, !llvm.loop !429

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i: ; preds = %.preheader38.i, %bb.ay
  %.040.i = phi i64 [ %i.fw, %bb.ay ], [ 0, %.preheader38.i ] ; 5 uses
  %i.fj = lshr i64 %.040.i, 6
  %i.fk = and i64 %.040.i, 63
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %i.fj
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !23
  %i.fn = shl nuw i64 1, %i.fk
  %i.fo = and i64 %i.fn, %i.fm
  %.not.i625 = icmp eq i64 %i.fo, 0
  br i1 %.not.i625, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i
  %i.fp = getelementptr inbounds nuw [16 x i8], ptr %i.eq, i64 %.040.i ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  %.val.i = load i64, ptr %i.fq, align 8, !tbaa !23
  %i.fr = call noundef i64 @llvm.bswap.i64(i64 %.val.i)
  %i.fs = getelementptr inbounds nuw [16 x i8], ptr %i.eg, i64 %.040.i ; 2 uses
  store i64 %i.fr, ptr %i.fs, align 8, !tbaa !426
  %.val33.i = load i64, ptr %i.fp, align 8, !tbaa !23
  %i.ft = xor i64 %.val33.i, 128
  %i.fu = call i64 @llvm.bswap.i64(i64 %i.ft)
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  store i64 %i.fu, ptr %i.fv, align 8, !tbaa !428
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i
  %i.fw = add nuw i64 %.040.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.fw, %4
  br i1 %exitcond.not.i, label %_ZN6duckdbL14UUIDConversionERNS_6VectorERK10ArrowArraymllm.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i, !llvm.loop !430

bb.az:                                            ; preds = %bb.an, %bb.an, %bb.an, %bb.an
  %i.fx = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.fy = call noundef ptr @_ZNK6duckdb10unique_ptrINS_13ArrowTypeInfoESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fx)
  %i.fz = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb13ArrowTypeInfo4CastINS_15ArrowStringInfoEEERT_v(ptr noundef nonnull align 8 dereferenceable(9) %i.fy) ; 2 uses
  %i.ga = call noundef zeroext i8 @_ZNK6duckdb15ArrowStringInfo11GetSizeTypeEv(ptr noundef nonnull align 8 dereferenceable(24) %i.fz)
  switch i8 %i.ga, label %_ZN6duckdbL14UUIDConversionERNS_6VectorERK10ArrowArraymllm.exit [
    i8 2, label %bb.ba
    i8 0, label %bb.bb
    i8 3, label %bb.bc
    i8 1, label %bb.bd
  ]

bb.ba:                                            ; preds = %bb.az
  %i.gb = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !352 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 16
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !166
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !166
  %i.gh = call noundef i64 @_ZN6duckdb15NumericCastImplIlmLb0EE7ConvertEm(i64 noundef %8)
  %.not.i626 = icmp eq i64 %6, -1
  %i.gi = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.gj = load i64, ptr %i.gi, align 8, !tbaa !306
  %i.gk = add i64 %i.gh, %2
  %.0.v.i627 = select i1 %.not.i626, i64 %i.gk, i64 %6
  %i.gl = getelementptr [8 x i8], ptr %i.gg, i64 %.0.v.i627
  %i.gm = getelementptr [8 x i8], ptr %i.gl, i64 %i.gj
  call fastcc void @_ZN6duckdbL15SetVectorStringImEEvRNS_6VectorEmPcPT_(ptr noundef nonnull align 8 dereferenceable(104) %0, i64 noundef %4, ptr noundef %i.ge, ptr noundef %i.gm)
  br label %_ZN6duckdbL14UUIDConversionERNS_6VectorERK10ArrowArraymllm.exit

bb.bb:                                            ; preds = %bb.az
  %i.gn = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !352 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 16
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !166
  %i.gr = getelementptr inbounds nuw i8, ptr %i.go, i64 8
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !166
  %i.gt = call noundef i64 @_ZN6duckdb15NumericCastImplIlmLb0EE7ConvertEm(i64 noundef %8)
  %.not.i629 = icmp eq i64 %6, -1
  %i.gu = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.gv = load i64, ptr %i.gu, align 8, !tbaa !306
  %i.gw = add i64 %i.gt, %2
  %.0.v.i630 = select i1 %.not.i629, i64 %i.gw, i64 %6
  %i.gx = getelementptr [4 x i8], ptr %i.gs, i64 %.0.v.i630
  %i.gy = getelementptr [4 x i8], ptr %i.gx, i64 %i.gv
  call fastcc void @_ZN6duckdbL15SetVectorStringIjEEvRNS_6VectorEmPcPT_(ptr noundef nonnull align 8 dereferenceable(104) %0, i64 noundef %4, ptr noundef %i.gq, ptr noundef %i.gy)
  br label %_ZN6duckdbL14UUIDConversionERNS_6VectorERK10ArrowArraymllm.exit

bb.bc:                                            ; preds = %bb.az
  %i.gz = call noundef i64 @_ZN6duckdb15NumericCastImplIlmLb0EE7ConvertEm(i64 noundef %8)
  %.not.i632 = icmp eq i64 %6, -1
  %i.ha = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.hb = load i64, ptr %i.ha, align 8, !tbaa !306
  %i.hc = add i64 %i.gz, %2
  %.0.v.i633 = select i1 %.not.i632, i64 %i.hc, i64 %6
  %.0.i634 = add i64 %.0.v.i633, %i.hb
  call fastcc void @_ZN6duckdbL19SetVectorStringViewERNS_6VectorEmR10ArrowArraym(ptr noundef nonnull align 8 dereferenceable(104) %0, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 noundef %.0.i634)
  br label %_ZN6duckdbL14UUIDConversionERNS_6VectorERK10ArrowArraymllm.exit

bb.bd:                                            ; preds = %bb.az
  %i.hd = call noundef i64 @_ZN6duckdb15NumericCastImplIlmLb0EE7ConvertEm(i64 noundef %8)
  call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  call fastcc void @_ZN6duckdbL15GetValidityMaskERNS_12ValidityMaskER10ArrowArraymmllb(ptr noundef nonnull align 8 dereferenceable(32) %i.he, ptr noundef nonnull readonly align 8 dereferenceable(80) %1, i64 noundef %2, i64 noundef %4, i64 noundef %i.hd, i64 noundef %6, i1 noundef zeroext false)
  %i.hf = call noundef i64 @_ZNK6duckdb15ArrowStringInfo9FixedSizeEv(ptr noundef nonnull align 8 dereferenceable(24) %i.fz) ; 3 uses
  %i.hg = call noundef i64 @_ZN6duckdb15NumericCastImplIlmLb0EE7ConvertEm(i64 noundef %8)
  %i.hh = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.hi = load i64, ptr %i.hh, align 8, !tbaa !306
  %i.hj = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !352
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 8
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !166
  call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_8string_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !419
  %.not909 = icmp eq i64 %4, 0
  br i1 %.not909, label %_ZN6duckdbL14UUIDConversionERNS_6VectorERK10ArrowArraymllm.exit, label %.lr.ph893.preheader

.lr.ph893.preheader:                              ; preds = %bb.bd
  %.not.i635 = icmp eq i64 %6, -1
  %i.hp = add i64 %i.hg, %2
  %.0.v.i636 = select i1 %.not.i635, i64 %i.hp, i64 %6
  %.0.i637 = add i64 %.0.v.i636, %i.hi
  %i.hq = mul i64 %.0.i637, %i.hf
  br label %.lr.ph893

.lr.ph893:                                        ; preds = %.lr.ph893.preheader, %bb.be
  %.0534891 = phi i64 [ %.1535, %bb.be ], [ %i.hq, %.lr.ph893.preheader ] ; 2 uses
  %.0537890 = phi i64 [ %i.ie, %bb.be ], [ 0, %.lr.ph893.preheader ] ; 4 uses
  %i.hr = load ptr, ptr %i.he, align 8, !tbaa !353 ; 2 uses
  %.not.i.i638 = icmp eq ptr %i.hr, null
  br i1 %.not.i.i638, label %_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.thread, label %_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit

_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit: ; preds = %.lr.ph893
  %i.hs = lshr i64 %.0537890, 6
  %i.ht = and i64 %.0537890, 63
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %i.hr, i64 %i.hs
  %i.hv = load i64, ptr %i.hu, align 8, !tbaa !23
  %i.hw = shl nuw i64 1, %i.ht
  %i.hx = and i64 %i.hv, %i.hw
  %i.hy = icmp eq i64 %i.hx, 0
  br i1 %i.hy, label %bb.be, label %_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.thread

_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.thread: ; preds = %.lr.ph893, %_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hm, i64 %.0534891
  %i.ia = call { i64, ptr } @_ZN6duckdb12StringVector15AddStringOrBlobERNS_6VectorEPKcm(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %i.hz, i64 noundef %i.hf) ; 2 uses
  %i.ib = extractvalue { i64, ptr } %i.ia, 0
  %i.ic = extractvalue { i64, ptr } %i.ia, 1
  %i.id = getelementptr inbounds nuw [16 x i8], ptr %i.ho, i64 %.0537890 ; 2 uses
  store i64 %i.ib, ptr %i.id, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.id, i64 8
  store ptr %i.ic, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !24
  br label %bb.be

bb.be:                                            ; preds = %_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit, %_ZN6duckdb10FlatVector6IsNullERKNS_6VectorEm.exit.thread
  %.1535 = add i64 %.0534891, %i.hf
  %i.ie = add nuw i64 %.0537890, 1                ; 2 uses
  %exitcond940.not = icmp eq i64 %i.ie, %4
  br i1 %exitcond940.not, label %_ZN6duckdbL14UUIDConversionERNS_6VectorERK10ArrowArraymllm.exit, label %.lr.ph893, !llvm.loop !431

bb.bf:                                            ; preds = %bb.an
  %i.if = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.ig = call noundef ptr @_ZNK6duckdb10unique_ptrINS_13ArrowTypeInfoESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.if)
  %i.ih = call noundef nonnull align 8 dereferenceable(10) ptr @_ZN6duckdb13ArrowTypeInfo4CastINS_17ArrowDateTimeInfoEEERT_v(ptr noundef nonnull align 8 dereferenceable(9) %i.ig)
  %i.ii = call noundef zeroext i8 @_ZNK6duckdb17ArrowDateTimeInfo15GetDateTimeTypeEv(ptr noundef nonnull align 8 dereferenceable(10) %i.ih)
  switch i8 %i.ii, label %bb.bi [
    i8 4, label %bb.bg
    i8 0, label %bb.bh
  ]

bb.bg:                                            ; preds = %bb.bf
  call fastcc void @_ZN6duckdbL16DirectConversionERNS_6VectorER10ArrowArraymlm(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 noundef %2, i64 noundef %6, i64 noundef %8)
  br label %_ZN6duckdbL14UUIDConversionERNS_6VectorERK10ArrowArraymllm.exit

bb.bh:                                            ; preds = %bb.bf
  %i.ij = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !352
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 8
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !166
  %i.in = call noundef i64 @_ZN6duckdb15NumericCastImplIlmLb0EE7ConvertEm(i64 noundef %8)
  %.not.i641 = icmp eq i64 %6, -1
  %i.io = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ip = load i64, ptr %i.io, align 8, !tbaa !306
  %i.iq = add i64 %i.in, %2
  %.0.v.i642 = select i1 %.not.i641, i64 %i.iq, i64 %6
  %i.ir = getelementptr [8 x i8], ptr %i.im, i64 %.0.v.i642
  %i.is = getelementptr [8 x i8], ptr %i.ir, i64 %i.ip ; 3 uses
  call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_6date_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %i.it = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !419 ; 3 uses
  %.not908 = icmp eq i64 %4, 0
  br i1 %.not908, label %_ZN6duckdbL14UUIDConversionERNS_6VectorERK10ArrowArraymllm.exit, label %.lr.ph889.preheader

.lr.ph889.preheader:                              ; preds = %bb.bh
  %xtraiter1075 = and i64 %4, 1
  %i.iv = icmp eq i64 %4, 1
  br i1 %i.iv, label %.lr.ph889.epil.preheader, label %.lr.ph889.preheader.new

.lr.ph889.preheader.new:                          ; preds = %.lr.ph889.preheader
  %unroll_iter1078 = and i64 %4, -2
  br label %.lr.ph889

.lr.ph889:                                        ; preds = %.lr.ph889, %.lr.ph889.preheader.new
  %.0538887 = phi i64 [ 0, %.lr.ph889.preheader.new ], [ %i.jh, %.lr.ph889 ] ; 4 uses
  %niter1079 = phi i64 [ 0, %.lr.ph889.preheader.new ], [ %niter1079.next.1, %.lr.ph889 ]
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr %i.is, i64 %.0538887
  %i.ix = load i64, ptr %i.iw, align 8, !tbaa !23
  %i.iy = sdiv i64 %i.ix, 86400000
  %i.iz = trunc i64 %i.iy to i32
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %i.iu, i64 %.0538887
  store i32 %i.iz, ptr %i.ja, align 4, !tbaa !3
  %i.jb = or disjoint i64 %.0538887, 1            ; 2 uses
  %i.jc = getelementptr inbounds nuw [8 x i8], ptr %i.is, i64 %i.jb
  %i.jd = load i64, ptr %i.jc, align 8, !tbaa !23
  %i.je = sdiv i64 %i.jd, 86400000
  %i.jf = trunc i64 %i.je to i32
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %i.iu, i64 %i.jb
  store i32 %i.jf, ptr %i.jg, align 4, !tbaa !3
  %i.jh = add nuw i64 %.0538887, 2                ; 2 uses
  %niter1079.next.1 = add nuw i64 %niter1079, 2   ; 2 uses
  %niter1079.ncmp.1 = icmp eq i64 %niter1079.next.1, %unroll_iter1078
  br i1 %niter1079.ncmp.1, label %_ZN6duckdbL14UUIDConversionERNS_6VectorERK10ArrowArraymllm.exit.loopexit1045.unr-lcssa, label %.lr.ph889, !llvm.loop !432

bb.bi:                                            ; preds = %bb.bf
  %i.ji = call ptr @__cxa_allocate_exception(i64 16) #29 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #29
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull @.str.9, ptr noundef nonnull align 1 dereferenceable(1) %22)
          to label %bb.bj unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.bj:                                            ; preds = %bb.bi
  invoke void @_ZN6duckdb23NotImplementedExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ji, ptr noundef nonnull align 8 dereferenceable(32) %21)
          to label %bb.bk unwind label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  invoke void @__cxa_throw(ptr nonnull %i.ji, ptr nonnull @_ZTIN6duckdb23NotImplementedExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
          to label %bb.ik unwind label %bb.bl

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.bi
  %i.jj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #29
  br label %bb.bm

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %.0539 = phi i1 [ false, %bb.bk ], [ true, %bb.bj ] ; 2 uses
  %i.jk = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.jl = load ptr, ptr %21, align 8, !tbaa !18   ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %21, i64 16
  %i.jn = icmp eq ptr %i.jl, %i.jm
  br i1 %i.jn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.bl
  call void @_ZdlPv(ptr noundef %i.jl) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #29
  br i1 %.0539, label %bb.bm, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #29
  br i1 %.0539, label %bb.bm, label %common.resume

bb.bm:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn600769 = phi { ptr, i32 } [ %i.jj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.jk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.jk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.ji) #29
  br label %common.resume

bb.bn:                                            ; preds = %bb.an
  %i.jo = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.jp = call noundef ptr @_ZNK6duckdb10unique_ptrINS_13ArrowTypeInfoESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.jo)
  %i.jq = call noundef nonnull align 8 dereferenceable(10) ptr @_ZN6duckdb13ArrowTypeInfo4CastINS_17ArrowDateTimeInfoEEERT_v(ptr noundef nonnull align 8 dereferenceable(9) %i.jp)
  %i.jr = call noundef zeroext i8 @_ZNK6duckdb17ArrowDateTimeInfo15GetDateTimeTypeEv(ptr noundef nonnull align 8 dereferenceable(10) %i.jq)
  switch i8 %i.jr, label %bb.bs [
    i8 3, label %bb.bo
    i8 0, label %bb.bp
    i8 1, label %bb.bq
    i8 2, label %bb.br
  ]

bb.bo:                                            ; preds = %bb.bn
  %i.js = call noundef i64 @_ZN6duckdb15NumericCastImplIlmLb0EE7ConvertEm(i64 noundef %8)
  call fastcc void @_ZN6duckdbL14TimeConversionIiEEvRNS_6VectorER10ArrowArraymllml(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 noundef %2, i64 noundef %6, i64 noundef %i.js, i64 noundef %4, i64 noundef 1000000)
  br label %_ZN6duckdbL14UUIDConversionERNS_6VectorERK10ArrowArraymllm.exit

bb.bp:                                            ; preds = %bb.bn
  %i.jt = call noundef i64 @_ZN6duckdb15NumericCastImplIlmLb0EE7ConvertEm(i64 noundef %8)
  call fastcc void @_ZN6duckdbL14TimeConversionIiEEvRNS_6VectorER10ArrowArraymllml(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 noundef %2, i64 noundef %6, i64 noundef %i.jt, i64 noundef %4, i64 noundef 1000)
  br label %_ZN6duckdbL14UUIDConversionERNS_6VectorERK10ArrowArraymllm.exit

bb.bq:                                            ; preds = %bb.bn
  %i.ju = call noundef i64 @_ZN6duckdb15NumericCastImplIlmLb0EE7ConvertEm(i64 noundef %8)
  call fastcc void @_ZN6duckdbL14TimeConversionIlEEvRNS_6VectorER10ArrowArraymllml(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 noundef %2, i64 noundef %6, i64 noundef %i.ju, i64 noundef %4)
  br label %_ZN6duckdbL14UUIDConversionERNS_6VectorERK10ArrowArraymllm.exit

bb.br:                                            ; preds = %bb.bn
  call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_7dtime_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %i.jv = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !419 ; 3 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !352
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 8
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !166
  %i.kb = call noundef i64 @_ZN6duckdb15NumericCastImplIlmLb0EE7ConvertEm(i64 noundef %8)
  %.not.i644 = icmp eq i64 %6, -1
  %i.kc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.kd = load i64, ptr %i.kc, align 8, !tbaa !306
  %i.ke = add i64 %i.kb, %2
  %.0.v.i645 = select i1 %.not.i644, i64 %i.ke, i64 %6
  %i.kf = getelementptr [8 x i8], ptr %i.ka, i64 %.0.v.i645
  %i.kg = getelementptr [8 x i8], ptr %i.kf, i64 %i.kd ; 3 uses
  %.not907 = icmp eq i64 %4, 0
  br i1 %.not907, label %_ZN6duckdbL14UUIDConversionERNS_6VectorERK10ArrowArraymllm.exit, label %.lr.ph886.preheader

.lr.ph886.preheader:                              ; preds = %bb.br
  %xtraiter1070 = and i64 %4, 1
  %i.kh = icmp eq i64 %4, 1
  br i1 %i.kh, label %.lr.ph886.epil.preheader, label %.lr.ph886.preheader.new

.lr.ph886.preheader.new:                          ; preds = %.lr.ph886.preheader
  %unroll_iter1073 = and i64 %4, -2
  br label %.lr.ph886

.lr.ph886:                                        ; preds = %.lr.ph886, %.lr.ph886.preheader.new
  %.0543884 = phi i64 [ 0, %.lr.ph886.preheader.new ], [ %i.kr, %.lr.ph886 ] ; 4 uses
  %niter1074 = phi i64 [ 0, %.lr.ph886.preheader.new ], [ %niter1074.next.1, %.lr.ph886 ]
  %i.ki = getelementptr inbounds nuw [8 x i8], ptr %i.kg, i64 %.0543884
  %i.kj = load i64, ptr %i.ki, align 8, !tbaa !23
  %i.kk = sdiv i64 %i.kj, 1000
  %i.kl = getelementptr inbounds nuw [8 x i8], ptr %i.jw, i64 %.0543884
  store i64 %i.kk, ptr %i.kl, align 8, !tbaa !433
  %i.km = or disjoint i64 %.0543884, 1            ; 2 uses
  %i.kn = getelementptr inbounds nuw [8 x i8], ptr %i.kg, i64 %i.km
  %i.ko = load i64, ptr %i.kn, align 8, !tbaa !23
  %i.kp = sdiv i64 %i.ko, 1000
  %i.kq = getelementptr inbounds nuw [8 x i8], ptr %i.jw, i64 %i.km
  store i64 %i.kp, ptr %i.kq, align 8, !tbaa !433
  %i.kr = add nuw i64 %.0543884, 2                ; 2 uses
  %niter1074.next.1 = add nuw i64 %niter1074, 2   ; 2 uses
  %niter1074.ncmp.1 = icmp eq i64 %niter1074.next.1, %unroll_iter1073
  br i1 %niter1074.ncmp.1, label %_ZN6duckdbL14UUIDConversionERNS_6VectorERK10ArrowArraymllm.exit.loopexit1046.unr-lcssa, label %.lr.ph886, !llvm.loop !435

bb.bs:                                            ; preds = %bb.bn
  %i.ks = call ptr @__cxa_allocate_exception(i64 16) #29 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #29
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull @.str.10, ptr noundef nonnull align 1 dereferenceable(1) %24)
          to label %bb.bt unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit649.thread

bb.bt:                                            ; preds = %bb.bs
  invoke void @_ZN6duckdb23NotImplementedExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ks, ptr noundef nonnull align 8 dereferenceable(32) %23)
          to label %bb.bu unwind label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  invoke void @__cxa_throw(ptr nonnull %i.ks, ptr nonnull @_ZTIN6duckdb23NotImplementedExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
          to label %bb.ik unwind label %bb.bv

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit649.thread: ; preds = %bb.bs
  %i.kt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #29
  br label %bb.bw

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %.0545 = phi i1 [ false, %bb.bu ], [ true, %bb.bt ] ; 2 uses
  %i.ku = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.kv = load ptr, ptr %23, align 8, !tbaa !18   ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %23, i64 16
  %i.kx = icmp eq ptr %i.kv, %i.kw
  br i1 %i.kx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit649, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i647

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i647: ; preds = %bb.bv
  call void @_ZdlPv(ptr noundef %i.kv) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #29
  br i1 %.0545, label %bb.bw, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit649: ; preds = %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #29
  br i1 %.0545, label %bb.bw, label %common.resume

bb.bw:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i647, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit649.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit649
  %.pn598772 = phi { ptr, i32 } [ %i.kt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit649.thread ], [ %i.ku, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit649 ], [ %i.ku, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i647 ]
  call void @__cxa_free_exception(ptr %i.ks) #29
  br label %common.resume

bb.bx:                                            ; preds = %bb.an
  %i.ky = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.kz = call noundef ptr @_ZNK6duckdb10unique_ptrINS_13ArrowTypeInfoESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ky)
  %i.la = call noundef nonnull align 8 dereferenceable(10) ptr @_ZN6duckdb13ArrowTypeInfo4CastINS_17ArrowDateTimeInfoEEERT_v(ptr noundef nonnull align 8 dereferenceable(9) %i.kz)
  %i.lb = call noundef zeroext i8 @_ZNK6duckdb17ArrowDateTimeInfo15GetDateTimeTypeEv(ptr noundef nonnull align 8 dereferenceable(10) %i.la)
  switch i8 %i.lb, label %bb.cc [
    i8 3, label %bb.by
    i8 0, label %bb.bz
    i8 1, label %bb.ca
    i8 2, label %bb.cb
  ]

bb.by:                                            ; preds = %bb.bx
  %i.lc = call noundef i64 @_ZN6duckdb15NumericCastImplIlmLb0EE7ConvertEm(i64 noundef %8)
  call fastcc void @_ZN6duckdbL16TimeNSConversionIiEEvRNS_6VectorER10ArrowArraymllml(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 noundef %2, i64 noundef %6, i64 noundef %i.lc, i64 noundef %4, i64 noundef 1000000000)
  br label %_ZN6duckdbL14UUIDConversionERNS_6VectorERK10ArrowArraymllm.exit

bb.bz:                                            ; preds = %bb.bx
  %i.ld = call noundef i64 @_ZN6duckdb15NumericCastImplIlmLb0EE7ConvertEm(i64 noundef %8)
  call fastcc void @_ZN6duckdbL16TimeNSConversionIiEEvRNS_6VectorER10ArrowArraymllml(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 noundef %2, i64 noundef %6, i64 noundef %i.ld, i64 noundef %4, i64 noundef 1000000)
  br label %_ZN6duckdbL14UUIDConversionERNS_6VectorERK10ArrowArraymllm.exit

bb.ca:                                            ; preds = %bb.bx
  %i.le = call noundef i64 @_ZN6duckdb15NumericCastImplIlmLb0EE7ConvertEm(i64 noundef %8)
  call fastcc void @_ZN6duckdbL16TimeNSConversionIlEEvRNS_6VectorER10ArrowArraymllml(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 noundef %2, i64 noundef %6, i64 noundef %i.le, i64 noundef %4, i64 noundef 1000)
  br label %_ZN6duckdbL14UUIDConversionERNS_6VectorERK10ArrowArraymllm.exit

bb.cb:                                            ; preds = %bb.bx
  %i.lf = call noundef i64 @_ZN6duckdb15NumericCastImplIlmLb0EE7ConvertEm(i64 noundef %8)
  call fastcc void @_ZN6duckdbL16TimeNSConversionIlEEvRNS_6VectorER10ArrowArraymllml(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 noundef %2, i64 noundef %6, i64 noundef %i.lf, i64 noundef %4, i64 noundef 1)
  br label %_ZN6duckdbL14UUIDConversionERNS_6VectorERK10ArrowArraymllm.exit

bb.cc:                                            ; preds = %bb.bx
  %i.lg = call ptr @__cxa_allocate_exception(i64 16) #29 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #29
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef nonnull @.str.11, ptr noundef nonnull align 1 dereferenceable(1) %26)
          to label %bb.cd unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit652.thread

bb.cd:                                            ; preds = %bb.cc
  invoke void @_ZN6duckdb23NotImplementedExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.lg, ptr noundef nonnull align 8 dereferenceable(32) %25)
          to label %bb.ce unwind label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  invoke void @__cxa_throw(ptr nonnull %i.lg, ptr nonnull @_ZTIN6duckdb23NotImplementedExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
          to label %bb.ik unwind label %bb.cf

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit652.thread: ; preds = %bb.cc
  %i.lh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #29
  br label %bb.cg

bb.cf:                                            ; preds = %bb.ce, %bb.cd
  %.0547 = phi i1 [ false, %bb.ce ], [ true, %bb.cd ] ; 2 uses
  %i.li = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.lj = load ptr, ptr %25, align 8, !tbaa !18   ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %25, i64 16
  %i.ll = icmp eq ptr %i.lj, %i.lk
  br i1 %i.ll, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit652, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i650

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i650: ; preds = %bb.cf
  call void @_ZdlPv(ptr noundef %i.lj) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #29
  br i1 %.0547, label %bb.cg, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit652: ; preds = %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #29
  br i1 %.0547, label %bb.cg, label %common.resume

bb.cg:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i650, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit652.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit652
  %.pn596775 = phi { ptr, i32 } [ %i.lh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit652.thread ], [ %i.li, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit652 ], [ %i.li, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i650 ]
  call void @__cxa_free_exception(ptr %i.lg) #29
  br label %common.resume

bb.ch:                                            ; preds = %bb.an
  %i.lm = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.ln = call noundef ptr @_ZNK6duckdb10unique_ptrINS_13ArrowTypeInfoESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.lm)
  %i.lo = call noundef nonnull align 8 dereferenceable(10) ptr @_ZN6duckdb13ArrowTypeInfo4CastINS_17ArrowDateTimeInfoEEERT_v(ptr noundef nonnull align 8 dereferenceable(9) %i.ln)
  %i.lp = call noundef zeroext i8 @_ZNK6duckdb17ArrowDateTimeInfo15GetDateTimeTypeEv(ptr noundef nonnull align 8 dereferenceable(10) %i.lo)
  switch i8 %i.lp, label %bb.cm [
    i8 3, label %bb.ci
    i8 0, label %bb.cj
    i8 1, label %bb.ck
    i8 2, label %bb.cl
  ]

bb.ci:                                            ; preds = %bb.ch
  %i.lq = call noundef i64 @_ZN6duckdb15NumericCastImplIlmLb0EE7ConvertEm(i64 noundef %8)
  call fastcc void @_ZN6duckdbL21TimestampTZConversionERNS_6VectorER10ArrowArraymllml(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 noundef %2, i64 noundef %6, i64 noundef %i.lq, i64 noundef %4, i64 noundef 1000000)
  br label %_ZN6duckdbL14UUIDConversionERNS_6VectorERK10ArrowArraymllm.exit

bb.cj:                                            ; preds = %bb.ch
  %i.lr = call noundef i64 @_ZN6duckdb15NumericCastImplIlmLb0EE7ConvertEm(i64 noundef %8)
  call fastcc void @_ZN6duckdbL21TimestampTZConversionERNS_6VectorER10ArrowArraymllml(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 noundef %2, i64 noundef %6, i64 noundef %i.lr, i64 noundef %4, i64 noundef 1000)
  br label %_ZN6duckdbL14UUIDConversionERNS_6VectorERK10ArrowArraymllm.exit

bb.ck:                                            ; preds = %bb.ch
  call fastcc void @_ZN6duckdbL16DirectConversionERNS_6VectorER10ArrowArraymlm(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 noundef %2, i64 noundef %6, i64 noundef %8)
  br label %_ZN6duckdbL14UUIDConversionERNS_6VectorERK10ArrowArraymllm.exit

bb.cl:                                            ; preds = %bb.ch
  call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_11timestamp_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %i.ls = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !419 ; 3 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.lv = load ptr, ptr %i.lu, align 8, !tbaa !352
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 8
  %i.lx = load ptr, ptr %i.lw, align 8, !tbaa !166
  %i.ly = call noundef i64 @_ZN6duckdb15NumericCastImplIlmLb0EE7ConvertEm(i64 noundef %8)
  %.not.i653 = icmp eq i64 %6, -1
  %i.lz = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ma = load i64, ptr %i.lz, align 8, !tbaa !306
  %i.mb = add i64 %i.ly, %2
  %.0.v.i654 = select i1 %.not.i653, i64 %i.mb, i64 %6
  %i.mc = getelementptr [8 x i8], ptr %i.lx, i64 %.0.v.i654
  %i.md = getelementptr [8 x i8], ptr %i.mc, i64 %i.ma ; 3 uses
  %.not906 = icmp eq i64 %4, 0
  br i1 %.not906, label %_ZN6duckdbL14UUIDConversionERNS_6VectorERK10ArrowArraymllm.exit, label %.lr.ph883.preheader

.lr.ph883.preheader:                              ; preds = %bb.cl
  %xtraiter1065 = and i64 %4, 1
  %i.me = icmp eq i64 %4, 1
  br i1 %i.me, label %.lr.ph883.epil.preheader, label %.lr.ph883.preheader.new

.lr.ph883.preheader.new:                          ; preds = %.lr.ph883.preheader
  %unroll_iter1068 = and i64 %4, -2
  br label %.lr.ph883

.lr.ph883:                                        ; preds = %.lr.ph883, %.lr.ph883.preheader.new
  %.0549881 = phi i64 [ 0, %.lr.ph883.preheader.new ], [ %i.mo, %.lr.ph883 ] ; 4 uses
  %niter1069 = phi i64 [ 0, %.lr.ph883.preheader.new ], [ %niter1069.next.1, %.lr.ph883 ]
  %i.mf = getelementptr inbounds nuw [8 x i8], ptr %i.md, i64 %.0549881
  %i.mg = load i64, ptr %i.mf, align 8, !tbaa !23
  %i.mh = sdiv i64 %i.mg, 1000
  %i.mi = getelementptr inbounds nuw [8 x i8], ptr %i.lt, i64 %.0549881
  store i64 %i.mh, ptr %i.mi, align 8, !tbaa !436
  %i.mj = or disjoint i64 %.0549881, 1            ; 2 uses
  %i.mk = getelementptr inbounds nuw [8 x i8], ptr %i.md, i64 %i.mj
  %i.ml = load i64, ptr %i.mk, align 8, !tbaa !23
  %i.mm = sdiv i64 %i.ml, 1000
  %i.mn = getelementptr inbounds nuw [8 x i8], ptr %i.lt, i64 %i.mj
  store i64 %i.mm, ptr %i.mn, align 8, !tbaa !436
  %i.mo = add nuw i64 %.0549881, 2                ; 2 uses
  %niter1069.next.1 = add nuw i64 %niter1069, 2   ; 2 uses
  %niter1069.ncmp.1 = icmp eq i64 %niter1069.next.1, %unroll_iter1068
  br i1 %niter1069.ncmp.1, label %_ZN6duckdbL14UUIDConversionERNS_6VectorERK10ArrowArraymllm.exit.loopexit1047.unr-lcssa, label %.lr.ph883, !llvm.loop !438

bb.cm:                                            ; preds = %bb.ch
  %i.mp = call ptr @__cxa_allocate_exception(i64 16) #29 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #29
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %27, ptr noundef nonnull @.str.12, ptr noundef nonnull align 1 dereferenceable(1) %28)
          to label %bb.cn unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit658.thread

bb.cn:                                            ; preds = %bb.cm
  invoke void @_ZN6duckdb23NotImplementedExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.mp, ptr noundef nonnull align 8 dereferenceable(32) %27)
          to label %bb.co unwind label %bb.cp

bb.co:                                            ; preds = %bb.cn
  invoke void @__cxa_throw(ptr nonnull %i.mp, ptr nonnull @_ZTIN6duckdb23NotImplementedExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
          to label %bb.ik unwind label %bb.cp

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit658.thread: ; preds = %bb.cm
  %i.mq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #29
  br label %bb.cq

bb.cp:                                            ; preds = %bb.co, %bb.cn
  %.0550 = phi i1 [ false, %bb.co ], [ true, %bb.cn ] ; 2 uses
  %i.mr = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ms = load ptr, ptr %27, align 8, !tbaa !18   ; 2 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %27, i64 16
  %i.mu = icmp eq ptr %i.ms, %i.mt
  br i1 %i.mu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit658, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i656

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i656: ; preds = %bb.cp
  call void @_ZdlPv(ptr noundef %i.ms) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #29
  br i1 %.0550, label %bb.cq, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit658: ; preds = %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #29
  br i1 %.0550, label %bb.cq, label %common.resume

bb.cq:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i656, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit658.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit658
  %.pn594778 = phi { ptr, i32 } [ %i.mq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit658.thread ], [ %i.mr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit658 ], [ %i.mr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i656 ]
  call void @__cxa_free_exception(ptr %i.mp) #29
  br label %common.resume

bb.cr:                                            ; preds = %bb.an
  %i.mv = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.mw = call noundef ptr @_ZNK6duckdb10unique_ptrINS_13ArrowTypeInfoESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.mv)
  %i.mx = call noundef nonnull align 8 dereferenceable(10) ptr @_ZN6duckdb13ArrowTypeInfo4CastINS_17ArrowDateTimeInfoEEERT_v(ptr noundef nonnull align 8 dereferenceable(9) %i.mw)
  %i.my = call noundef zeroext i8 @_ZNK6duckdb17ArrowDateTimeInfo15GetDateTimeTypeEv(ptr noundef nonnull align 8 dereferenceable(10) %i.mx)
  switch i8 %i.my, label %bb.cy [
    i8 3, label %bb.cs
    i8 4, label %bb.ct
    i8 0, label %bb.ct
    i8 1, label %bb.cu
    i8 2, label %bb.cv
    i8 5, label %bb.cw
    i8 6, label %bb.cx
  ]

bb.cs:                                            ; preds = %bb.cr
  %i.mz = call noundef i64 @_ZN6duckdb15NumericCastImplIlmLb0EE7ConvertEm(i64 noundef %8)
  call fastcc void @_ZN6duckdbL20IntervalConversionUsERNS_6VectorER10ArrowArraymllml(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 noundef %2, i64 noundef %6, i64 noundef %i.mz, i64 noundef %4, i64 noundef 1000000)
  br label %_ZN6duckdbL14UUIDConversionERNS_6VectorERK10ArrowArraymllm.exit

bb.ct:                                            ; preds = %bb.cr, %bb.cr
  %i.na = call noundef i64 @_ZN6duckdb15NumericCastImplIlmLb0EE7ConvertEm(i64 noundef %8)
  call fastcc void @_ZN6duckdbL20IntervalConversionUsERNS_6VectorER10ArrowArraymllml(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 noundef %2, i64 noundef %6, i64 noundef %i.na, i64 noundef %4, i64 noundef 1000)
  br label %_ZN6duckdbL14UUIDConversionERNS_6VectorERK10ArrowArraymllm.exit

bb.cu:                                            ; preds = %bb.cr
  %i.nb = call noundef i64 @_ZN6duckdb15NumericCastImplIlmLb0EE7ConvertEm(i64 noundef %8)
  call fastcc void @_ZN6duckdbL20IntervalConversionUsERNS_6VectorER10ArrowArraymllml(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 noundef %2, i64 noundef %6, i64 noundef %i.nb, i64 noundef %4, i64 noundef 1)
  br label %_ZN6duckdbL14UUIDConversionERNS_6VectorERK10ArrowArraymllm.exit

bb.cv:                                            ; preds = %bb.cr
  call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_10interval_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %i.nc = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.nd = load ptr, ptr %i.nc, align 8, !tbaa !419 ; 3 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.nf = load ptr, ptr %i.ne, align 8, !tbaa !352
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 8
  %i.nh = load ptr, ptr %i.ng, align 8, !tbaa !166
  %i.ni = call noundef i64 @_ZN6duckdb15NumericCastImplIlmLb0EE7ConvertEm(i64 noundef %8)
  %.not.i659 = icmp eq i64 %6, -1
  %i.nj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.nk = load i64, ptr %i.nj, align 8, !tbaa !306
  %i.nl = add i64 %i.ni, %2
  %.0.v.i660 = select i1 %.not.i659, i64 %i.nl, i64 %6
  %i.nm = getelementptr [8 x i8], ptr %i.nh, i64 %.0.v.i660
  %i.nn = getelementptr [8 x i8], ptr %i.nm, i64 %i.nk ; 3 uses
  %.not905 = icmp eq i64 %4, 0
  br i1 %.not905, label %_ZN6duckdbL14UUIDConversionERNS_6VectorERK10ArrowArraymllm.exit, label %.lr.ph880.preheader

.lr.ph880.preheader:                              ; preds = %bb.cv
  %xtraiter1060 = and i64 %4, 1
  %i.no = icmp eq i64 %4, 1
  br i1 %i.no, label %.lr.ph880.epil.preheader, label %.lr.ph880.preheader.new

.lr.ph880.preheader.new:                          ; preds = %.lr.ph880.preheader
  %unroll_iter1063 = and i64 %4, -2
  br label %.lr.ph880

.lr.ph880:                                        ; preds = %.lr.ph880, %.lr.ph880.preheader.new
  %.0552878 = phi i64 [ 0, %.lr.ph880.preheader.new ], [ %i.oc, %.lr.ph880 ] ; 4 uses
  %niter1064 = phi i64 [ 0, %.lr.ph880.preheader.new ], [ %niter1064.next.1, %.lr.ph880 ]
  %i.np = getelementptr inbounds nuw [8 x i8], ptr %i.nn, i64 %.0552878
  %i.nq = load i64, ptr %i.np, align 8, !tbaa !23
  %i.nr = sdiv i64 %i.nq, 1000
  %i.ns = getelementptr inbounds nuw [16 x i8], ptr %i.nd, i64 %.0552878 ; 3 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ns, i64 8
  store i64 %i.nr, ptr %i.nt, align 8, !tbaa !439
  %i.nu = getelementptr inbounds nuw i8, ptr %i.ns, i64 4
  store i32 0, ptr %i.nu, align 4, !tbaa !441
  store i32 0, ptr %i.ns, align 8, !tbaa !442
  %i.nv = or disjoint i64 %.0552878, 1            ; 2 uses
  %i.nw = getelementptr inbounds nuw [8 x i8], ptr %i.nn, i64 %i.nv
  %i.nx = load i64, ptr %i.nw, align 8, !tbaa !23
  %i.ny = sdiv i64 %i.nx, 1000
  %i.nz = getelementptr inbounds nuw [16 x i8], ptr %i.nd, i64 %i.nv ; 3 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nz, i64 8
  store i64 %i.ny, ptr %i.oa, align 8, !tbaa !439
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nz, i64 4
  store i32 0, ptr %i.ob, align 4, !tbaa !441
  store i32 0, ptr %i.nz, align 8, !tbaa !442
  %i.oc = add nuw i64 %.0552878, 2                ; 2 uses
  %niter1064.next.1 = add nuw i64 %niter1064, 2   ; 2 uses
  %niter1064.ncmp.1 = icmp eq i64 %niter1064.next.1, %unroll_iter1063
  br i1 %niter1064.ncmp.1, label %_ZN6duckdbL14UUIDConversionERNS_6VectorERK10ArrowArraymllm.exit.loopexit1048.unr-lcssa, label %.lr.ph880, !llvm.loop !443

bb.cw:                                            ; preds = %bb.cr
  %i.od = call noundef i64 @_ZN6duckdb15NumericCastImplIlmLb0EE7ConvertEm(i64 noundef %8)
  call fastcc void @_ZN6duckdbL24IntervalConversionMonthsERNS_6VectorER10ArrowArraymllm(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 noundef %2, i64 noundef %6, i64 noundef %i.od, i64 noundef %4)
  br label %_ZN6duckdbL14UUIDConversionERNS_6VectorERK10ArrowArraymllm.exit

bb.cx:                                            ; preds = %bb.cr
  %i.oe = call noundef i64 @_ZN6duckdb15NumericCastImplIlmLb0EE7ConvertEm(i64 noundef %8)
  call fastcc void @_ZN6duckdbL31IntervalConversionMonthDayNanosERNS_6VectorER10ArrowArraymllm(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 noundef %2, i64 noundef %6, i64 noundef %i.oe, i64 noundef %4)
  br label %_ZN6duckdbL14UUIDConversionERNS_6VectorERK10ArrowArraymllm.exit

bb.cy:                                            ; preds = %bb.cr
  %i.of = call ptr @__cxa_allocate_exception(i64 16) #29 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #29
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %29, ptr noundef nonnull @.str.13, ptr noundef nonnull align 1 dereferenceable(1) %30)
          to label %bb.cz unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit664.thread

bb.cz:                                            ; preds = %bb.cy
  invoke void @_ZN6duckdb23NotImplementedExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.of, ptr noundef nonnull align 8 dereferenceable(32) %29)
          to label %bb.da unwind label %bb.db

bb.da:                                            ; preds = %bb.cz
  invoke void @__cxa_throw(ptr nonnull %i.of, ptr nonnull @_ZTIN6duckdb23NotImplementedExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
          to label %bb.ik unwind label %bb.db

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit664.thread: ; preds = %bb.cy
  %i.og = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #29
  br label %bb.dc

bb.db:                                            ; preds = %bb.da, %bb.cz
  %.0554 = phi i1 [ false, %bb.da ], [ true, %bb.cz ] ; 2 uses
  %i.oh = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.oi = load ptr, ptr %29, align 8, !tbaa !18   ; 2 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %29, i64 16
  %i.ok = icmp eq ptr %i.oi, %i.oj
  br i1 %i.ok, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit664, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i662

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i662: ; preds = %bb.db
  call void @_ZdlPv(ptr noundef %i.oi) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #29
  br i1 %.0554, label %bb.dc, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit664: ; preds = %bb.db
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #29
  br i1 %.0554, label %bb.dc, label %common.resume

bb.dc:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i662, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit664.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit664
  %.pn592781 = phi { ptr, i32 } [ %i.og, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit664.thread ], [ %i.oh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit664 ], [ %i.oh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i662 ]
  call void @__cxa_free_exception(ptr %i.of) #29
  br label %common.resume

bb.dd:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #29
  call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %i.ol = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.om = load <2 x ptr>, ptr %i.ol, align 8, !tbaa !166
  store <2 x ptr> %i.om, ptr %31, align 16, !tbaa !166
  %i.on = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 2 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.op = load ptr, ptr %i.oo, align 8, !tbaa !42 ; 3 uses
  store ptr %i.op, ptr %i.on, align 16, !tbaa !42
  %.not.i.i.i.i.i.i665 = icmp eq ptr %i.op, null
  br i1 %.not.i.i.i.i.i.i665, label %_ZN6duckdb12ValidityMaskC2ERKS0_.exit, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.oq = getelementptr inbounds nuw i8, ptr %i.op, i64 8 ; 3 uses
  %i.or = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.or, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.dg, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.os = load i32, ptr %i.oq, align 4, !tbaa !3
  %i.ot = add nsw i32 %i.os, 1
  store i32 %i.ot, ptr %i.oq, align 4, !tbaa !3
  br label %_ZN6duckdb12ValidityMaskC2ERKS0_.exit

bb.dg:                                            ; preds = %bb.de
  %i.ou = atomicrmw volatile add ptr %i.oq, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN6duckdb12ValidityMaskC2ERKS0_.exit

_ZN6duckdb12ValidityMaskC2ERKS0_.exit:            ; preds = %bb.dd, %bb.df, %bb.dg
  %i.ov = getelementptr inbounds nuw i8, ptr %31, i64 24
  %i.ow = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ox = load i64, ptr %i.ow, align 8, !tbaa !359
  store i64 %i.ox, ptr %i.ov, align 8, !tbaa !359
  %i.oy = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.oz = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_13ArrowTypeInfoESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.oy)
          to label %.noexc666 unwind label %bb.di

.noexc666:                                        ; preds = %_ZN6duckdb12ValidityMaskC2ERKS0_.exit
  %i.pa = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb13ArrowTypeInfo4CastINS_16ArrowDecimalInfoEEERT_v(ptr noundef nonnull align 8 dereferenceable(9) %i.oz)
          to label %_ZNK6duckdb9ArrowType11GetTypeInfoINS_16ArrowDecimalInfoEEERKT_v.exit unwind label %bb.di

_ZNK6duckdb9ArrowType11GetTypeInfoINS_16ArrowDecimalInfoEEERKT_v.exit: ; preds = %.noexc666
  %i.pb = invoke noundef zeroext i8 @_ZNK6duckdb16ArrowDecimalInfo11GetBitWidthEv(ptr noundef nonnull align 8 dereferenceable(16) %i.pa)
          to label %bb.dh unwind label %bb.dj

bb.dh:                                            ; preds = %_ZNK6duckdb9ArrowType11GetTypeInfoINS_16ArrowDecimalInfoEEERKT_v.exit
  switch i8 %i.pb, label %bb.dt [
    i8 0, label %bb.dk
    i8 1, label %bb.dn
    i8 2, label %bb.dq
  ]

bb.di:                                            ; preds = %.noexc666, %_ZN6duckdb12ValidityMaskC2ERKS0_.exit
  %i.pc = landingpad { ptr, i32 }
          cleanup
  br label %bb.ef

bb.dj:                                            ; preds = %_ZNK6duckdb9ArrowType11GetTypeInfoINS_16ArrowDecimalInfoEEERKT_v.exit
  %i.pd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ef

bb.dk:                                            ; preds = %bb.dh
  %i.pe = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.pf = load ptr, ptr %i.pe, align 8, !tbaa !352
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pf, i64 8
  %i.ph = load ptr, ptr %i.pg, align 8, !tbaa !166
  %i.pi = invoke noundef i64 @_ZN6duckdb15NumericCastImplIlmLb0EE7ConvertEm(i64 noundef %8)
          to label %bb.dl unwind label %bb.dm

bb.dl:                                            ; preds = %bb.dk
  %.not.i669 = icmp eq i64 %6, -1
  %i.pj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.pk = load i64, ptr %i.pj, align 8, !tbaa !306
  %i.pl = add i64 %i.pi, %2
  %.0.v.i670 = select i1 %.not.i669, i64 %i.pl, i64 %6
  %i.pm = getelementptr [4 x i8], ptr %i.ph, i64 %.0.v.i670
  %i.pn = getelementptr [4 x i8], ptr %i.pm, i64 %i.pk
  invoke void @_ZN6duckdb14ConvertDecimalIPiEEvT_RNS_6VectorER10ArrowArraymlmmRNS_12ValidityMaskENS_15DecimalBitWidthE(ptr noundef %i.pn, ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 noundef %4, i64 noundef %6, i64 noundef %8, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %31, i8 noundef zeroext 0)
          to label %bb.dy unwind label %bb.dm

bb.dm:                                            ; preds = %bb.dk, %bb.dl
  %i.po = landingpad { ptr, i32 }
          cleanup
  br label %bb.ef

bb.dn:                                            ; preds = %bb.dh
  %i.pp = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.pq = load ptr, ptr %i.pp, align 8, !tbaa !352
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pq, i64 8
  %i.ps = load ptr, ptr %i.pr, align 8, !tbaa !166
  %i.pt = invoke noundef i64 @_ZN6duckdb15NumericCastImplIlmLb0EE7ConvertEm(i64 noundef %8)
          to label %bb.do unwind label %bb.dp

bb.do:                                            ; preds = %bb.dn
  %.not.i674 = icmp eq i64 %6, -1
  %i.pu = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.pv = load i64, ptr %i.pu, align 8, !tbaa !306
  %i.pw = add i64 %i.pt, %2
  %.0.v.i675 = select i1 %.not.i674, i64 %i.pw, i64 %6
  %i.px = getelementptr [8 x i8], ptr %i.ps, i64 %.0.v.i675
  %i.py = getelementptr [8 x i8], ptr %i.px, i64 %i.pv
  invoke void @_ZN6duckdb14ConvertDecimalIPlEEvT_RNS_6VectorER10ArrowArraymlmmRNS_12ValidityMaskENS_15DecimalBitWidthE(ptr noundef %i.py, ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 noundef %4, i64 noundef %6, i64 noundef %8, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %31, i8 noundef zeroext 1)
          to label %bb.dy unwind label %bb.dp

bb.dp:                                            ; preds = %bb.dn, %bb.do
  %i.pz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ef

bb.dq:                                            ; preds = %bb.dh
  %i.qa = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.qb = load ptr, ptr %i.qa, align 8, !tbaa !352
  %i.qc = getelementptr inbounds nuw i8, ptr %i.qb, i64 8
  %i.qd = load ptr, ptr %i.qc, align 8, !tbaa !166
  %i.qe = invoke noundef i64 @_ZN6duckdb15NumericCastImplIlmLb0EE7ConvertEm(i64 noundef %8)
          to label %bb.dr unwind label %bb.ds

bb.dr:                                            ; preds = %bb.dq
  %.not.i679 = icmp eq i64 %6, -1
  %i.qf = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.qg = load i64, ptr %i.qf, align 8, !tbaa !306
  %i.qh = add i64 %i.qe, %2
  %.0.v.i680 = select i1 %.not.i679, i64 %i.qh, i64 %6
  %i.qi = getelementptr [16 x i8], ptr %i.qd, i64 %.0.v.i680
  %i.qj = getelementptr [16 x i8], ptr %i.qi, i64 %i.qg
  invoke void @_ZN6duckdb14ConvertDecimalIPNS_9hugeint_tEEEvT_RNS_6VectorER10ArrowArraymlmmRNS_12ValidityMaskENS_15DecimalBitWidthE(ptr noundef %i.qj, ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 noundef %4, i64 noundef %6, i64 noundef %8, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %31, i8 noundef zeroext 2)
          to label %bb.dy unwind label %bb.ds

bb.ds:                                            ; preds = %bb.dq, %bb.dr
  %i.qk = landingpad { ptr, i32 }
          cleanup
  br label %bb.ef

bb.dt:                                            ; preds = %bb.dh
  %i.ql = call ptr @__cxa_allocate_exception(i64 16) #29 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #29
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %32, ptr noundef nonnull @.str.14, ptr noundef nonnull align 1 dereferenceable(1) %33)
end_hunk_0
begin_hunk_1_@_ZN6duckdb23ArrowToDuckDBConversion19ColumnArrowToDuckDBERNS_6VectorER10ArrowArraymRNS_19ArrowArrayScanStateEmRKNS_9ArrowTypeElPNS_12ValidityMaskEmb:bb.a
  br label %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit

bb.eb:                                            ; preds = %bb.dz
  %i.rd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i.i.i686 = icmp eq i8 %i.rd, 0
  br i1 %.not.i.i.i.i.i686, label %bb.ed, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.re = add nsw i32 %i.qv, -1
  store i32 %i.re, ptr %i.qs, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.ed:                                            ; preds = %bb.eb
  %i.rf = atomicrmw volatile add ptr %i.qs, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.ed, %bb.ec
  %.0.i.i.i.i.i.i = phi i32 [ %i.qv, %bb.ec ], [ %i.rf, %bb.ed ]
  %i.rg = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.rg, label %bb.ee, label %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit, !prof !51

bb.ee:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.qr) #29
  br label %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit

_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit:    ; preds = %bb.dy, %bb.ea, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.ee
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #29
  br label %_ZN6duckdbL14UUIDConversionERNS_6VectorERK10ArrowArraymllm.exit

bb.ef:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i682, %bb.dj, %bb.dm, %bb.dp, %bb.ds, %bb.dx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit684, %bb.di
  %.pn588.pn.pn = phi { ptr, i32 } [ %i.pc, %bb.di ], [ %.pn588784, %bb.dx ], [ %i.qn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit684 ], [ %i.po, %bb.dm ], [ %i.pz, %bb.dp ], [ %i.qk, %bb.ds ], [ %i.pd, %bb.dj ], [ %i.qn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i682 ]
  call void @_ZN6duckdb21TemplatedValidityMaskImED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %31) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #29
  br label %common.resume

bb.eg:                                            ; preds = %bb.an
  %i.rh = call noundef i64 @_ZN6duckdb15NumericCastImplIlmLb0EE7ConvertEm(i64 noundef %8)
  call fastcc void @_ZN6duckdbL17ArrowToDuckDBListERNS_6VectorER10ArrowArraymRNS_19ArrowArrayScanStateEmRKNS_9ArrowTypeElPKNS_12ValidityMaskEl(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(112) %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(97) %5, i64 noundef %6, ptr noundef %7, i64 noundef %i.rh)
  br label %_ZN6duckdbL14UUIDConversionERNS_6VectorERK10ArrowArraymllm.exit

bb.eh:                                            ; preds = %bb.an
  %i.ri = call noundef i64 @_ZN6duckdb15NumericCastImplIlmLb0EE7ConvertEm(i64 noundef %8) ; 2 uses
  %i.rj = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.rk = call noundef ptr @_ZNK6duckdb10unique_ptrINS_13ArrowTypeInfoESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.rj)
  %i.rl = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN6duckdb13ArrowTypeInfo4CastINS_14ArrowArrayInfoEEERT_v(ptr noundef nonnull align 8 dereferenceable(9) %i.rk) ; 2 uses
  %i.rm = call noundef i64 @_ZNK6duckdb14ArrowArrayInfo9FixedSizeEv(ptr noundef nonnull align 8 dereferenceable(40) %i.rl), !inline_history !445 ; 9 uses
  %i.rn = mul i64 %i.rm, %4                       ; 4 uses
  %.not.i757 = icmp eq i64 %6, -1
  %i.ro = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.rp = load i64, ptr %i.ro, align 8, !tbaa !306
  %i.rq = add i64 %i.ri, %2
  %.0.v.i758 = select i1 %.not.i757, i64 %i.rq, i64 %6
  %.0.i759 = add i64 %i.rp, %.0.v.i758
  %i.rr = mul i64 %.0.i759, %i.rm                 ; 3 uses
  call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %i.rs = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 7 uses
  call fastcc void @_ZN6duckdbL15GetValidityMaskERNS_12ValidityMaskER10ArrowArraymmllb(ptr noundef nonnull align 8 dereferenceable(32) %i.rs, ptr noundef nonnull readonly align 8 dereferenceable(80) %1, i64 noundef %2, i64 noundef %4, i64 noundef %i.ri, i64 noundef %6, i1 noundef zeroext false)
  %i.rt = call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb11ArrayVector8GetEntryERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0), !inline_history !445 ; 7 uses
  %i.ru = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.rv = load ptr, ptr %i.ru, align 8, !tbaa !365
  %i.rw = load ptr, ptr %i.rv, align 8, !tbaa !302
  %i.rx = load i64, ptr %i.ro, align 8, !tbaa !306
  %i.ry = call noundef i64 @_ZN6duckdb15NumericCastImplIlmLb0EE7ConvertEm(i64 noundef %i.rr)
  call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.rt)
  %i.rz = getelementptr inbounds nuw i8, ptr %i.rt, i64 40 ; 4 uses
  call fastcc void @_ZN6duckdbL15GetValidityMaskERNS_12ValidityMaskER10ArrowArraymmllb(ptr noundef nonnull align 8 dereferenceable(32) %i.rz, ptr noundef nonnull readonly align 8 dereferenceable(80) %i.rw, i64 noundef %2, i64 noundef %i.rn, i64 noundef %i.rx, i64 noundef %i.ry, i1 noundef zeroext false)
  call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %.not.i687 = icmp eq ptr %7, null
  br i1 %.not.i687, label %.loopexit845, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.sa = load ptr, ptr %7, align 8, !tbaa !353
  %.not.i756 = icmp ne ptr %i.sa, null
  %i.sb = icmp ne i64 %4, 0
  %or.cond = and i1 %.not.i756, %i.sb
  br i1 %or.cond, label %.lr.ph871.split.preheader, label %.loopexit845

.lr.ph871.split.preheader:                        ; preds = %bb.ei
  %i.sc = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %.lr.ph871.split

.lr.ph871.split:                                  ; preds = %.lr.ph871.split.preheader, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit755.thread
  %.0.i688870 = phi i64 [ %i.sr, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit755.thread ], [ 0, %.lr.ph871.split.preheader ] ; 3 uses
  %i.sd = load ptr, ptr %7, align 8, !tbaa !353   ; 2 uses
  %.not.i753 = icmp eq ptr %i.sd, null
  br i1 %.not.i753, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit755.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit755

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit755: ; preds = %.lr.ph871.split
  %i.se = lshr i64 %.0.i688870, 6                 ; 2 uses
  %i.sf = and i64 %.0.i688870, 63
  %i.sg = getelementptr inbounds nuw [8 x i8], ptr %i.sd, i64 %i.se
  %i.sh = load i64, ptr %i.sg, align 8, !tbaa !23
  %i.si = shl nuw i64 1, %i.sf                    ; 2 uses
  %i.sj = and i64 %i.sh, %i.si
  %.not835 = icmp eq i64 %i.sj, 0
  br i1 %.not835, label %bb.ej, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit755.thread

bb.ej:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit755
  %i.sk = load ptr, ptr %i.rs, align 8, !tbaa !353 ; 2 uses
  %.not.i750 = icmp eq ptr %i.sk, null
  br i1 %.not.i750, label %bb.ek, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit752

bb.ek:                                            ; preds = %bb.ej
  %i.sl = load i64, ptr %i.sc, align 8, !tbaa !359
  call void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.rs, i64 noundef %i.sl)
  %.pre.i751 = load ptr, ptr %i.rs, align 8, !tbaa !353
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit752

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit752: ; preds = %bb.ej, %bb.ek
  %i.sm = phi ptr [ %.pre.i751, %bb.ek ], [ %i.sk, %bb.ej ]
  %i.sn = xor i64 %i.si, -1
  %i.so = getelementptr inbounds nuw [8 x i8], ptr %i.sm, i64 %i.se ; 2 uses
  %i.sp = load i64, ptr %i.so, align 8, !tbaa !23
  %i.sq = and i64 %i.sp, %i.sn
  store i64 %i.sq, ptr %i.so, align 8, !tbaa !23
  br label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit755.thread

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit755.thread: ; preds = %.lr.ph871.split, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit752, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit755
  %i.sr = add nuw i64 %.0.i688870, 1              ; 2 uses
  %exitcond932.not = icmp eq i64 %i.sr, %4
  br i1 %exitcond932.not, label %.loopexit845, label %.lr.ph871.split, !llvm.loop !446

.loopexit845:                                     ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit755.thread, %bb.ei, %bb.eh
  %i.ss = load ptr, ptr %i.rs, align 8, !tbaa !353
  %.not.i749 = icmp eq ptr %i.ss, null
  br i1 %.not.i749, label %.loopexit, label %bb.el

bb.el:                                            ; preds = %.loopexit845
  call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.rt)
  %.not903 = icmp eq i64 %4, 0
  br i1 %.not903, label %.loopexit, label %.lr.ph877

.lr.ph877:                                        ; preds = %bb.el
  %.not904 = icmp eq i64 %i.rm, 0
  %i.st = getelementptr inbounds nuw i8, ptr %i.rt, i64 64
  %i.su = load ptr, ptr %i.rs, align 8, !tbaa !353 ; 2 uses
  %i.sv = icmp eq ptr %i.su, null
  br i1 %i.sv, label %.loopexit, label %.lr.ph877.split.preheader

.lr.ph877.split.preheader:                        ; preds = %.lr.ph877
  %xtraiter = and i64 %i.rm, 1
  %i.sw = icmp eq i64 %i.rm, 1
  %unroll_iter = and i64 %i.rm, -2
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod1059 = trunc i64 %i.rm to i1
  br label %.lr.ph877.split

.lr.ph877.splitthread-pre-split:                  ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit748.thread
  %.pr1005 = load ptr, ptr %i.rs, align 8, !tbaa !353
  br label %.lr.ph877.split

.lr.ph877.split:                                  ; preds = %.lr.ph877.split.preheader, %.lr.ph877.splitthread-pre-split
  %i.sx = phi ptr [ %.pr1005, %.lr.ph877.splitthread-pre-split ], [ %i.su, %.lr.ph877.split.preheader ] ; 2 uses
  %.072.i874 = phi i64 [ %i.ut, %.lr.ph877.splitthread-pre-split ], [ 0, %.lr.ph877.split.preheader ] ; 4 uses
  %.not.i746 = icmp eq ptr %i.sx, null
  br i1 %.not.i746, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit748.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit748

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit748: ; preds = %.lr.ph877.split
  %i.sy = lshr i64 %.072.i874, 6
  %i.sz = and i64 %.072.i874, 63
  %i.ta = getelementptr inbounds nuw [8 x i8], ptr %i.sx, i64 %i.sy
  %i.tb = load i64, ptr %i.ta, align 8, !tbaa !23
  %i.tc = shl nuw i64 1, %i.sz
  %i.td = and i64 %i.tb, %i.tc
  %.not836 = icmp ne i64 %i.td, 0
  %brmerge = or i1 %.not836, %.not904
  br i1 %brmerge, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit748.thread, label %.lr.ph873

.lr.ph873:                                        ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit748
  %i.te = mul i64 %.072.i874, %i.rm               ; 4 uses
  %i.tf = load ptr, ptr %i.rz, align 8, !tbaa !353 ; 4 uses
  %i.tg = icmp eq ptr %i.tf, null
  br i1 %i.tg, label %.lr.ph873.split, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit745.us.preheader

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit745.us.preheader: ; preds = %.lr.ph873
  br i1 %i.sw, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit745.us.epil.preheader, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit745.us

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit745.us: ; preds = %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit745.us.preheader, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit745.us
  %.073.i872.us = phi i64 [ %i.ty, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit745.us ], [ 0, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit745.us.preheader ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit745.us ], [ 0, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit745.us.preheader ]
  %i.th = add i64 %.073.i872.us, %i.te            ; 2 uses
  %i.ti = lshr i64 %i.th, 6
  %i.tj = and i64 %i.th, 63
  %i.tk = shl nuw i64 1, %i.tj
  %i.tl = xor i64 %i.tk, -1
  %i.tm = getelementptr inbounds nuw [8 x i8], ptr %i.tf, i64 %i.ti ; 2 uses
  %i.tn = load i64, ptr %i.tm, align 8, !tbaa !23
  %i.to = and i64 %i.tn, %i.tl
  store i64 %i.to, ptr %i.tm, align 8, !tbaa !23
  %i.tp = or disjoint i64 %.073.i872.us, 1
  %i.tq = add i64 %i.tp, %i.te                    ; 2 uses
  %i.tr = lshr i64 %i.tq, 6
  %i.ts = and i64 %i.tq, 63
  %i.tt = shl nuw i64 1, %i.ts
  %i.tu = xor i64 %i.tt, -1
  %i.tv = getelementptr inbounds nuw [8 x i8], ptr %i.tf, i64 %i.tr ; 2 uses
  %i.tw = load i64, ptr %i.tv, align 8, !tbaa !23
  %i.tx = and i64 %i.tw, %i.tu
  store i64 %i.tx, ptr %i.tv, align 8, !tbaa !23
  %i.ty = add nuw i64 %.073.i872.us, 2            ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit748.thread.loopexit1049.unr-lcssa, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit745.us, !llvm.loop !448

.lr.ph873.split:                                  ; preds = %.lr.ph873, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit745
  %i.tz = phi ptr [ %i.uc, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit745 ], [ null, %.lr.ph873 ] ; 2 uses
  %.073.i872 = phi i64 [ %i.uk, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit745 ], [ 0, %.lr.ph873 ] ; 2 uses
  %i.ua = add i64 %.073.i872, %i.te               ; 2 uses
  %.not.i743 = icmp eq ptr %i.tz, null
  br i1 %.not.i743, label %bb.em, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit745

bb.em:                                            ; preds = %.lr.ph873.split
  %i.ub = load i64, ptr %i.st, align 8, !tbaa !359
  call void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.rz, i64 noundef %i.ub)
  %.pre.i744 = load ptr, ptr %i.rz, align 8, !tbaa !353
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit745

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit745: ; preds = %.lr.ph873.split, %bb.em
  %i.uc = phi ptr [ %.pre.i744, %bb.em ], [ %i.tz, %.lr.ph873.split ] ; 2 uses
  %i.ud = lshr i64 %i.ua, 6
  %i.ue = and i64 %i.ua, 63
  %i.uf = shl nuw i64 1, %i.ue
  %i.ug = xor i64 %i.uf, -1
  %i.uh = getelementptr inbounds nuw [8 x i8], ptr %i.uc, i64 %i.ud ; 2 uses
  %i.ui = load i64, ptr %i.uh, align 8, !tbaa !23
  %i.uj = and i64 %i.ui, %i.ug
  store i64 %i.uj, ptr %i.uh, align 8, !tbaa !23
  %i.uk = add nuw i64 %.073.i872, 1               ; 2 uses
  %exitcond934.not = icmp eq i64 %i.uk, %i.rm
  br i1 %exitcond934.not, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit748.thread, label %.lr.ph873.split, !llvm.loop !449

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit748.thread.loopexit1049.unr-lcssa: ; preds = %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit745.us
  br i1 %lcmp.mod.not, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit748.thread, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit745.us.epil.preheader

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit745.us.epil.preheader: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit748.thread.loopexit1049.unr-lcssa, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit745.us.preheader
  %.073.i872.us.epil.init = phi i64 [ 0, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit745.us.preheader ], [ %i.ty, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit748.thread.loopexit1049.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1059)
  %i.ul = add i64 %.073.i872.us.epil.init, %i.te  ; 2 uses
  %i.um = lshr i64 %i.ul, 6
  %i.un = and i64 %i.ul, 63
  %i.uo = shl nuw i64 1, %i.un
  %i.up = xor i64 %i.uo, -1
  %i.uq = getelementptr inbounds nuw [8 x i8], ptr %i.tf, i64 %i.um ; 2 uses
  %i.ur = load i64, ptr %i.uq, align 8, !tbaa !23
  %i.us = and i64 %i.ur, %i.up
  store i64 %i.us, ptr %i.uq, align 8, !tbaa !23
  br label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit748.thread

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit748.thread: ; preds = %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit745.us.epil.preheader, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit748.thread.loopexit1049.unr-lcssa, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit745, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit748, %.lr.ph877.split
  %i.ut = add nuw i64 %.072.i874, 1               ; 2 uses
  %exitcond935.not = icmp eq i64 %i.ut, %4
  br i1 %exitcond935.not, label %.loopexit, label %.lr.ph877.splitthread-pre-split, !llvm.loop !450

.loopexit:                                        ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit748.thread, %.lr.ph877, %bb.el, %.loopexit845
  %i.uu = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN6duckdb19ArrowArrayScanState8GetChildEm(ptr noundef nonnull align 8 dereferenceable(112) %3, i64 noundef 0), !inline_history !445 ; 3 uses
  %i.uv = load ptr, ptr %i.ru, align 8, !tbaa !365
  %i.uw = load ptr, ptr %i.uv, align 8, !tbaa !302 ; 4 uses
  %i.ux = call noundef nonnull align 8 dereferenceable(97) ptr @_ZNK6duckdb14ArrowArrayInfo8GetChildEv(ptr noundef nonnull align 8 dereferenceable(40) %i.rl), !inline_history !445 ; 3 uses
  %i.uy = or i64 %i.rr, %i.rn
  %or.cond.i = icmp eq i64 %i.uy, 0
  br i1 %or.cond.i, label %bb.en, label %bb.eo

bb.en:                                            ; preds = %.loopexit
  call void @_ZN6duckdb23ArrowToDuckDBConversion19ColumnArrowToDuckDBERNS_6VectorER10ArrowArraymRNS_19ArrowArrayScanStateEmRKNS_9ArrowTypeElPNS_12ValidityMaskEmb(ptr noundef nonnull align 8 dereferenceable(104) %i.rt, ptr noundef nonnull align 8 dereferenceable(80) %i.uw, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(112) %i.uu, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(97) %i.ux, i64 noundef -1, ptr noundef null, i64 noundef 0, i1 noundef zeroext false), !inline_history !445
  br label %_ZN6duckdbL14UUIDConversionERNS_6VectorERK10ArrowArraymllm.exit

bb.eo:                                            ; preds = %.loopexit
  %i.uz = getelementptr inbounds nuw i8, ptr %i.uw, i64 56
  %i.va = load ptr, ptr %i.uz, align 8, !tbaa !451
  %.not77.i = icmp eq ptr %i.va, null
  %i.vb = call noundef i64 @_ZN6duckdb15NumericCastImplIlmLb0EE7ConvertEm(i64 noundef %i.rr) ; 2 uses
  br i1 %.not77.i, label %bb.eq, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  call void @_ZN6duckdb23ArrowToDuckDBConversion29ColumnArrowToDuckDBDictionaryERNS_6VectorER10ArrowArraymRNS_19ArrowArrayScanStateEmRKNS_9ArrowTypeElPKNS_12ValidityMaskEm(ptr noundef nonnull align 8 dereferenceable(104) %i.rt, ptr noundef nonnull align 8 dereferenceable(80) %i.uw, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(112) %i.uu, i64 noundef %i.rn, ptr noundef nonnull align 8 dereferenceable(97) %i.ux, i64 noundef %i.vb, ptr noundef null, i64 noundef 0), !inline_history !445
  br label %_ZN6duckdbL14UUIDConversionERNS_6VectorERK10ArrowArraymllm.exit

bb.eq:                                            ; preds = %bb.eo
  call void @_ZN6duckdb23ArrowToDuckDBConversion19ColumnArrowToDuckDBERNS_6VectorER10ArrowArraymRNS_19ArrowArrayScanStateEmRKNS_9ArrowTypeElPNS_12ValidityMaskEmb(ptr noundef nonnull align 8 dereferenceable(104) %i.rt, ptr noundef nonnull align 8 dereferenceable(80) %i.uw, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(112) %i.uu, i64 noundef %i.rn, ptr noundef nonnull align 8 dereferenceable(97) %i.ux, i64 noundef %i.vb, ptr noundef null, i64 noundef 0, i1 noundef zeroext false), !inline_history !445
  br label %_ZN6duckdbL14UUIDConversionERNS_6VectorERK10ArrowArraymllm.exit

bb.er:                                            ; preds = %bb.an
  %i.vc = call noundef i64 @_ZN6duckdb15NumericCastImplIlmLb0EE7ConvertEm(i64 noundef %8)
  call fastcc void @_ZN6duckdbL17ArrowToDuckDBListERNS_6VectorER10ArrowArraymRNS_19ArrowArrayScanStateEmRKNS_9ArrowTypeElPKNS_12ValidityMaskEl(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(112) %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(97) %5, i64 noundef %6, ptr noundef %7, i64 noundef %i.vc)
  %i.vd = call noundef ptr @_ZN6duckdb10FlatVector26IncrementalSelectionVectorEv()
  %i.ve = call noundef zeroext i8 @_ZN6duckdb9MapVector16CheckMapValidityERNS_6VectorEmRKNS_15SelectionVectorE(ptr noundef nonnull align 8 dereferenceable(104) %0, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(24) %i.vd)
  switch i8 %i.ve, label %bb.fa [
    i8 0, label %_ZN6duckdbL14UUIDConversionERNS_6VectorERK10ArrowArraymllm.exit
    i8 2, label %bb.es
    i8 1, label %bb.ew
  ]

bb.es:                                            ; preds = %bb.er
  %i.vf = call ptr @__cxa_allocate_exception(i64 16) #29 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #29
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.147, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %bb.et unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.et:                                            ; preds = %bb.es
  invoke void @_ZN6duckdb21InvalidInputExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.vf, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %bb.eu unwind label %bb.ev

bb.eu:                                            ; preds = %bb.et
  invoke void @__cxa_throw(ptr nonnull %i.vf, ptr nonnull @_ZTIN6duckdb21InvalidInputExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
          to label %bb.fe unwind label %bb.ev

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.es
  %i.vg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  br label %.sink.split.i

bb.ev:                                            ; preds = %bb.eu, %bb.et
  %.09.i = phi i1 [ false, %bb.eu ], [ true, %bb.et ] ; 2 uses
  %i.vh = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.vi = load ptr, ptr %10, align 8, !tbaa !18   ; 2 uses
  %i.vj = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.vk = icmp eq ptr %i.vi, %i.vj
  br i1 %i.vk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.ev
  call void @_ZdlPv(ptr noundef %i.vi) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  br i1 %.09.i, label %.sink.split.i, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.ev
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  br i1 %.09.i, label %.sink.split.i, label %common.resume

bb.ew:                                            ; preds = %bb.er
  %i.vl = call ptr @__cxa_allocate_exception(i64 16) #29 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #29
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @.str.148, ptr noundef nonnull align 1 dereferenceable(1) %13)
          to label %bb.ex unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25.thread.i

bb.ex:                                            ; preds = %bb.ew
  invoke void @_ZN6duckdb21InvalidInputExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.vl, ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %bb.ey unwind label %bb.ez

bb.ey:                                            ; preds = %bb.ex
  invoke void @__cxa_throw(ptr nonnull %i.vl, ptr nonnull @_ZTIN6duckdb21InvalidInputExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
          to label %bb.fe unwind label %bb.ez

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25.thread.i: ; preds = %bb.ew
  %i.vm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #29
  br label %.sink.split.i

bb.ez:                                            ; preds = %bb.ey, %bb.ex
  %.07.i = phi i1 [ false, %bb.ey ], [ true, %bb.ex ] ; 2 uses
  %i.vn = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.vo = load ptr, ptr %12, align 8, !tbaa !18   ; 2 uses
  %i.vp = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.vq = icmp eq ptr %i.vo, %i.vp
  br i1 %i.vq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23.i: ; preds = %bb.ez
  call void @_ZdlPv(ptr noundef %i.vo) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #29
  br i1 %.07.i, label %.sink.split.i, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25.i: ; preds = %bb.ez
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #29
  br i1 %.07.i, label %.sink.split.i, label %common.resume

bb.fa:                                            ; preds = %bb.er
  %i.vr = call ptr @__cxa_allocate_exception(i64 16) #29 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #29
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @.str.149, ptr noundef nonnull align 1 dereferenceable(1) %15)
          to label %bb.fb unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28.thread.i

bb.fb:                                            ; preds = %bb.fa
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.vr, ptr noundef nonnull align 8 dereferenceable(32) %14)
          to label %bb.fc unwind label %bb.fd

bb.fc:                                            ; preds = %bb.fb
  invoke void @__cxa_throw(ptr nonnull %i.vr, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
          to label %bb.fe unwind label %bb.fd

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28.thread.i: ; preds = %bb.fa
  %i.vs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #29
  br label %.sink.split.i

bb.fd:                                            ; preds = %bb.fc, %bb.fb
  %.0.i689 = phi i1 [ false, %bb.fc ], [ true, %bb.fb ] ; 2 uses
  %i.vt = landingpad { ptr, i32 }
end_hunk_1
begin_hunk_2_@_ZN6duckdbL21TimestampTZConversionERNS_6VectorER10ArrowArraymllml:bb.a
  call void @_ZdlPv(ptr noundef %i.am) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  br i1 %.0, label %.sink.split, label %bb.l

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47: ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  br i1 %.0, label %.sink.split, label %bb.l

bb.k:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit
  %i.ap = add nuw i64 %.02957, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.ap, %5
  br i1 %exitcond.not, label %.loopexit, label %.lr.phthread-pre-split, !llvm.loop !837

.loopexit:                                        ; preds = %bb.k, %bb.b, %.preheader55, %.preheader
  ret void

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %.sink = phi ptr [ %i.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45 ], [ %i.aj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47.thread ], [ %i.aj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47 ]
  %.pn39.pn.ph = phi { ptr, i32 } [ %i.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45 ], [ %i.ak, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47.thread ], [ %i.al, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47 ]
  call void @__cxa_free_exception(ptr %.sink) #29
  br label %bb.l

bb.l:                                             ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn39.pn = phi { ptr, i32 } [ %i.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45 ], [ %i.al, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47 ], [ %.pn39.pn.ph, %.sink.split ]
  resume { ptr, i32 } %.pn39.pn

bb.m:                                             ; preds = %bb.i, %bb.e
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6duckdbL20IntervalConversionUsERNS_6VectorER10ArrowArraymllml(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef range(i64 1, 1000001) %6) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::allocator.0", align 1  ; 5 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_10interval_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !419
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !352
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !166
  %.not.i = icmp eq i64 %3, -1
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !306
  %i.i = add i64 %4, %2
  %.0.v.i = select i1 %.not.i, i64 %i.i, i64 %3
  %i.j = getelementptr [8 x i8], ptr %i.f, i64 %.0.v.i
  %i.k = getelementptr [8 x i8], ptr %i.j, i64 %i.h
  %.not = icmp eq i64 %5, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.l = add nuw i64 %.02228, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.l, %5
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !838

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.02228 = phi i64 [ %i.l, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %.02228 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  store i32 0, ptr %i.n, align 4, !tbaa !441
  store i32 0, ptr %i.m, align 8, !tbaa !442
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.02228
  %i.p = load i64, ptr %i.o, align 8, !tbaa !23
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.r = tail call noundef zeroext i1 @_ZN6duckdb19TryMultiplyOperator9OperationIlllEEbT_T0_RT1_(i64 noundef %i.p, i64 noundef %6, ptr noundef nonnull align 8 dereferenceable(8) %i.q)
  br i1 %i.r, label %bb.b, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.s = tail call ptr @__cxa_allocate_exception(i64 16) #29 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.146, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.d unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN6duckdb19ConversionExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @__cxa_throw(ptr nonnull %i.s, ptr nonnull @_ZTIN6duckdb19ConversionExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
          to label %bb.i unwind label %bb.f

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.c
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  br label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0 = phi i1 [ false, %bb.e ], [ true, %bb.d ]  ; 2 uses
  %i.u = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.v = load ptr, ptr %7, align 8, !tbaa !18     ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.v) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  br i1 %.0, label %bb.g, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  br i1 %.0, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn27 = phi { ptr, i32 } [ %i.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.s) #29
  br label %bb.h

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn26 = phi { ptr, i32 } [ %.pn27, %bb.g ], [ %i.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn26

bb.i:                                             ; preds = %bb.e
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6duckdbL24IntervalConversionMonthsERNS_6VectorER10ArrowArraymllm(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) unnamed_addr #0 {
bb.a:
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_10interval_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !419  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !352
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !166
  %.not.i = icmp eq i64 %3, -1
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !306
  %i.i = add i64 %4, %2
  %.0.v.i = select i1 %.not.i, i64 %i.i, i64 %3
  %i.j = getelementptr [4 x i8], ptr %i.f, i64 %.0.v.i
  %i.k = getelementptr [4 x i8], ptr %i.j, i64 %i.h ; 3 uses
  %.not = icmp eq i64 %5, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %xtraiter = and i64 %5, 1
  %i.l = icmp eq i64 %5, 1
  br i1 %i.l, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %5, -2
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.016.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.ac, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod17 = trunc i64 %5 to i1
  tail call void @llvm.assume(i1 %lcmp.mod17)
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %.016.epil.init ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  store i32 0, ptr %i.n, align 4, !tbaa !441
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 0, ptr %i.o, align 8, !tbaa !439
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %.016.epil.init
  %i.q = load i32, ptr %i.p, align 4, !tbaa !3
  store i32 %i.q, ptr %i.m, align 8, !tbaa !442
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.016 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.ac, %.lr.ph ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %.016 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  store i32 0, ptr %i.s, align 4, !tbaa !441
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 0, ptr %i.t, align 8, !tbaa !439
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %.016
  %i.v = load i32, ptr %i.u, align 4, !tbaa !3
  store i32 %i.v, ptr %i.r, align 8, !tbaa !442
  %i.w = or disjoint i64 %.016, 1                 ; 2 uses
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.w ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  store i32 0, ptr %i.y, align 4, !tbaa !441
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i64 0, ptr %i.z, align 8, !tbaa !439
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.w
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !3
  store i32 %i.ab, ptr %i.x, align 8, !tbaa !442
  %i.ac = add nuw i64 %.016, 2                    ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !839
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6duckdbL31IntervalConversionMonthDayNanosERNS_6VectorER10ArrowArraymllm(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) unnamed_addr #0 {
bb.a:
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_10interval_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !419  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !352
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !166
  %.not.i = icmp eq i64 %3, -1
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !306
  %i.i = add i64 %4, %2
  %.0.v.i = select i1 %.not.i, i64 %i.i, i64 %3
  %i.j = getelementptr [16 x i8], ptr %i.f, i64 %.0.v.i
  %i.k = getelementptr [16 x i8], ptr %i.j, i64 %i.h ; 3 uses
  %.not = icmp eq i64 %5, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %xtraiter = and i64 %5, 1
  %i.l = icmp eq i64 %5, 1
  br i1 %i.l, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %5, -2
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.020.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.ai, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod21 = trunc i64 %5 to i1
  tail call void @llvm.assume(i1 %lcmp.mod21)
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %.020.epil.init ; 2 uses
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %.020.epil.init ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !840
  %i.q = sdiv i64 %i.p, 1000
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 %i.q, ptr %i.r, align 8, !tbaa !439
  %i.s = load <2 x i32>, ptr %i.m, align 8, !tbaa !3
  store <2 x i32> %i.s, ptr %i.n, align 8, !tbaa !3
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.020 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.ai, %.lr.ph ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %.020 ; 2 uses
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %.020 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !840
  %i.x = sdiv i64 %i.w, 1000
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i64 %i.x, ptr %i.y, align 8, !tbaa !439
  %i.z = load <2 x i32>, ptr %i.t, align 8, !tbaa !3
  store <2 x i32> %i.z, ptr %i.u, align 8, !tbaa !3
  %i.aa = or disjoint i64 %.020, 1                ; 2 uses
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %i.aa ; 2 uses
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.aa ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !840
  %i.af = sdiv i64 %i.ae, 1000
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store i64 %i.af, ptr %i.ag, align 8, !tbaa !439
  %i.ah = load <2 x i32>, ptr %i.ab, align 8, !tbaa !3
  store <2 x i32> %i.ah, ptr %i.ac, align 8, !tbaa !3
  %i.ai = add nuw i64 %.020, 2                    ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !842
}

declare noundef zeroext i8 @_ZNK6duckdb16ArrowDecimalInfo11GetBitWidthEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb14ConvertDecimalIPiEEvT_RNS_6VectorER10ArrowArraymlmmRNS_12ValidityMaskENS_15DecimalBitWidthE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(80) %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, ptr noundef nonnull align 8 dereferenceable(32) %7, i8 noundef zeroext %8) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.std::allocator.0", align 1 ; 5 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 9 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !329   ; 2 uses
  switch i8 %i.b, label %bb.m [
    i8 5, label %bb.b
    i8 7, label %bb.d
    i8 9, label %bb.g
    i8 -52, label %bb.j
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIsEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !419
  %.not133 = icmp eq i64 %3, 0
  br i1 %.not133, label %.loopexit, label %.lr.ph129

.lr.ph129:                                        ; preds = %bb.b, %bb.c
  %.072128 = phi i64 [ %i.p, %bb.c ], [ 0, %bb.b ] ; 5 uses
  %i.e = load ptr, ptr %7, align 8, !tbaa !353    ; 2 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit: ; preds = %.lr.ph129
  %i.f = lshr i64 %.072128, 6
  %i.g = and i64 %.072128, 63
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.f
  %i.i = load i64, ptr %i.h, align 8, !tbaa !23
  %i.j = shl nuw i64 1, %i.g
  %i.k = and i64 %i.i, %i.j
  %.not119 = icmp eq i64 %i.k, 0
  br i1 %.not119, label %bb.c, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread: ; preds = %.lr.ph129, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.072128
  %i.m = load i32, ptr %i.l, align 4, !tbaa !3
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %.072128
  %i.o = tail call noundef zeroext i1 @_ZN6duckdb7TryCast9OperationIisEEbT_RT0_b(i32 noundef %i.m, ptr noundef nonnull align 2 dereferenceable(2) %i.n, i1 noundef zeroext false) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread
  %i.p = add nuw i64 %.072128, 1                  ; 2 uses
  %exitcond139.not = icmp eq i64 %i.p, %3
  br i1 %exitcond139.not, label %.loopexit, label %.lr.ph129, !llvm.loop !843

bb.d:                                             ; preds = %bb.a
  %i.q = icmp eq i8 %8, 0
  br i1 %i.q, label %.loopexit.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIiEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !419
  %.not132 = icmp eq i64 %3, 0
  br i1 %.not132, label %.loopexit, label %.lr.ph127

.lr.ph127:                                        ; preds = %bb.e, %bb.f
  %.074126 = phi i64 [ %i.ae, %bb.f ], [ 0, %bb.e ] ; 5 uses
  %i.t = load ptr, ptr %7, align 8, !tbaa !353    ; 2 uses
  %.not.i80 = icmp eq ptr %i.t, null
  br i1 %.not.i80, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit82.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit82

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit82: ; preds = %.lr.ph127
  %i.u = lshr i64 %.074126, 6
  %i.v = and i64 %.074126, 63
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.u
  %i.x = load i64, ptr %i.w, align 8, !tbaa !23
  %i.y = shl nuw i64 1, %i.v
  %i.z = and i64 %i.x, %i.y
  %.not118 = icmp eq i64 %i.z, 0
  br i1 %.not118, label %bb.f, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit82.thread

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit82.thread: ; preds = %.lr.ph127, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit82
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.074126
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !3
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %.074126
  %i.ad = tail call noundef zeroext i1 @_ZN6duckdb7TryCast9OperationIiiEEbT_RT0_b(i32 noundef %i.ab, ptr noundef nonnull align 4 dereferenceable(4) %i.ac, i1 noundef zeroext false) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit82, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit82.thread
  %i.ae = add nuw i64 %.074126, 1                 ; 2 uses
  %exitcond138.not = icmp eq i64 %i.ae, %3
  br i1 %exitcond138.not, label %.loopexit, label %.lr.ph127, !llvm.loop !844

bb.g:                                             ; preds = %bb.a
  %i.af = icmp eq i8 %8, 1
  br i1 %i.af, label %.loopexit.sink.split, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIlEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !419
  %.not131 = icmp eq i64 %3, 0
  br i1 %.not131, label %.loopexit, label %.lr.ph125

.lr.ph125:                                        ; preds = %bb.h, %bb.i
  %.075124 = phi i64 [ %i.at, %bb.i ], [ 0, %bb.h ] ; 5 uses
  %i.ai = load ptr, ptr %7, align 8, !tbaa !353   ; 2 uses
  %.not.i86 = icmp eq ptr %i.ai, null
  br i1 %.not.i86, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit88.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit88

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit88: ; preds = %.lr.ph125
  %i.aj = lshr i64 %.075124, 6
  %i.ak = and i64 %.075124, 63
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.aj
  %i.am = load i64, ptr %i.al, align 8, !tbaa !23
  %i.an = shl nuw i64 1, %i.ak
  %i.ao = and i64 %i.am, %i.an
  %.not117 = icmp eq i64 %i.ao, 0
  br i1 %.not117, label %bb.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit88.thread

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit88.thread: ; preds = %.lr.ph125, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit88
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.075124
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !3
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %.075124
  %i.as = tail call noundef zeroext i1 @_ZN6duckdb7TryCast9OperationIilEEbT_RT0_b(i32 noundef %i.aq, ptr noundef nonnull align 8 dereferenceable(8) %i.ar, i1 noundef zeroext false) ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit88, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit88.thread
  %i.at = add nuw i64 %.075124, 1                 ; 2 uses
  %exitcond137.not = icmp eq i64 %i.at, %3
  br i1 %exitcond137.not, label %.loopexit, label %.lr.ph125, !llvm.loop !845

bb.j:                                             ; preds = %bb.a
  %i.au = icmp eq i8 %8, 2
  br i1 %i.au, label %.loopexit.sink.split, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_9hugeint_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !419
  %.not130 = icmp eq i64 %3, 0
  br i1 %.not130, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k, %bb.l
  %.073123 = phi i64 [ %i.bi, %bb.l ], [ 0, %bb.k ] ; 5 uses
  %i.ax = load ptr, ptr %7, align 8, !tbaa !353   ; 2 uses
  %.not.i92 = icmp eq ptr %i.ax, null
  br i1 %.not.i92, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit94.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit94

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit94: ; preds = %.lr.ph
  %i.ay = lshr i64 %.073123, 6
  %i.az = and i64 %.073123, 63
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.ay
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !23
  %i.bc = shl nuw i64 1, %i.az
  %i.bd = and i64 %i.bb, %i.bc
  %.not = icmp eq i64 %i.bd, 0
  br i1 %.not, label %bb.l, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit94.thread

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit94.thread: ; preds = %.lr.ph, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit94
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.073123
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !3
  %i.bg = getelementptr inbounds nuw [16 x i8], ptr %i.aw, i64 %.073123
  %i.bh = tail call noundef zeroext i1 @_ZN6duckdb7TryCast9OperationIiNS_9hugeint_tEEEbT_RT0_b(i32 noundef %i.bf, ptr noundef nonnull align 8 dereferenceable(16) %i.bg, i1 noundef zeroext false) ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit94, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit94.thread
  %i.bi = add nuw i64 %.073123, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.bi, %3
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !846

bb.m:                                             ; preds = %bb.a
  %i.bj = tail call ptr @__cxa_allocate_exception(i64 16) #29 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #29
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.263, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.n unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97.thread

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #29
  %i.bk = load i8, ptr %i.a, align 1, !tbaa !329
  invoke void @_ZN6duckdb14TypeIdToStringB5cxx11ENS_12PhysicalTypeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, i8 noundef zeroext %i.bk)
          to label %bb.o unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN6duckdb23NotImplementedExceptionC2IJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERKS7_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.bj, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %bb.o
  invoke void @__cxa_throw(ptr nonnull %i.bj, ptr nonnull @_ZTIN6duckdb23NotImplementedExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
          to label %bb.t unwind label %bb.q

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97.thread: ; preds = %bb.m
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.q:                                             ; preds = %bb.p, %bb.o
end_hunk_2
begin_hunk_3_@_ZN6duckdb14ConvertDecimalIPNS_9hugeint_tEEEvT_RNS_6VectorER10ArrowArraymlmmRNS_12ValidityMaskENS_15DecimalBitWidthE:bb.a
  ret void

bb.s:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103, %bb.r
  %.pn.pn110 = phi { ptr, i32 } [ %i.bi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103 ], [ %.pn.pn111, %bb.r ], [ %i.bi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101 ]
  resume { ptr, i32 } %.pn.pn110

bb.t:                                             ; preds = %bb.p
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb21TemplatedValidityMaskImED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !45
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !47
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !48
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #29, !inline_history !855
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !48
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #29, !inline_history !855
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev.exit, !prof !51

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #29
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev.exit

_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6duckdbL17ArrowToDuckDBListERNS_6VectorER10ArrowArraymRNS_19ArrowArrayScanStateEmRKNS_9ArrowTypeElPKNS_12ValidityMaskEl(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(112) %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(97) %5, i64 noundef %6, ptr nofree noundef readonly captures(address_is_null) %7, i64 noundef %8) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %10 = alloca %"class.std::allocator.0", align 1 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 2 uses
  %i.b = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_13ArrowTypeInfoESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.c = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN6duckdb13ArrowTypeInfo4CastINS_13ArrowListInfoEEERT_v(ptr noundef nonnull align 8 dereferenceable(9) %i.b)
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  tail call fastcc void @_ZN6duckdbL15GetValidityMaskERNS_12ValidityMaskER10ArrowArraymmllb(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(80) %1, i64 noundef %2, i64 noundef %4, i64 noundef %8, i64 noundef %6, i1 noundef zeroext false)
  %.not.i = icmp eq i64 %6, -1
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !306
  %i.g = add i64 %8, %2
  %.0.v.i = select i1 %.not.i, i64 %i.g, i64 %6
  %.0.i = add i64 %i.f, %.0.v.i                   ; 6 uses
  %i.h = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_13ArrowTypeInfoESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.i = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN6duckdb13ArrowTypeInfo4CastINS_13ArrowListInfoEEERT_v(ptr noundef nonnull align 8 dereferenceable(9) %i.h) ; 2 uses
  %i.j = tail call noundef zeroext i8 @_ZNK6duckdb13ArrowListInfo11GetSizeTypeEv(ptr noundef nonnull align 8 dereferenceable(32) %i.i)
  %i.k = tail call noundef zeroext i1 @_ZNK6duckdb13ArrowListInfo6IsViewEv(ptr noundef nonnull align 8 dereferenceable(32) %i.i)
  %i.l = icmp eq i8 %i.j, 0                       ; 2 uses
  br i1 %i.k, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val.i = load ptr, ptr %i.m, align 8, !tbaa !352 ; 2 uses
  %i.n = getelementptr i8, ptr %.val.i, i64 8
  %.val.val.i = load ptr, ptr %i.n, align 8, !tbaa !166 ; 2 uses
  %i.o = getelementptr i8, ptr %.val.i, i64 16
  %.val.val21.i = load ptr, ptr %i.o, align 8, !tbaa !166 ; 2 uses
  %.not.i.i = icmp eq i64 %4, 0                   ; 2 uses
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %.val.val.i, i64 %.0.i ; 4 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %.val.val21.i, i64 %.0.i ; 3 uses
  br i1 %.not.i.i, label %._crit_edge.thread.i.i, label %.lr.ph.preheader.i.i

._crit_edge.thread.i.i:                           ; preds = %bb.c
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_12list_entry_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
  br label %_ZN6duckdbL23ConvertArrowListOffsetsERNS_6VectorER10ArrowArraymRKNS_9ArrowTypeEm.exit

.lr.ph.preheader.i.i:                             ; preds = %bb.c
  %i.r = load i32, ptr %i.p, align 4, !tbaa !3    ; 2 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_12list_entry_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !419  ; 6 uses
  %i.u = add i64 %4, -1                           ; 2 uses
  %xtraiter135 = and i64 %4, 1
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.preheader.i.i.new

.lr.ph.preheader.i.i.new:                         ; preds = %.lr.ph.preheader.i.i
  %unroll_iter140 = and i64 %4, -2
  br label %.lr.ph.i.i

._crit_edge.i.i.unr-lcssa:                        ; preds = %.lr.ph.i.i
  %lcmp.mod136.not = icmp eq i64 %xtraiter135, 0
  br i1 %lcmp.mod136.not, label %._crit_edge.i.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %._crit_edge.i.i.unr-lcssa, %.lr.ph.preheader.i.i
  %.05.i.i.epil.init = phi i32 [ %i.r, %.lr.ph.preheader.i.i ], [ %.1.i.i.1, %._crit_edge.i.i.unr-lcssa ] ; 2 uses
  %.0394.i.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %i.bd, %._crit_edge.i.i.unr-lcssa ] ; 3 uses
  %.sroa.0.03.i.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %i.bb, %._crit_edge.i.i.unr-lcssa ]
  %lcmp.mod139 = trunc i64 %4 to i1
  tail call void @llvm.assume(i1 %lcmp.mod139)
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %.0394.i.i.epil.init ; 2 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %.0394.i.i.epil.init
  %i.y = load i32, ptr %i.x, align 4, !tbaa !3    ; 2 uses
  %i.z = zext i32 %i.y to i64
  store i64 %i.z, ptr %i.w, align 8, !tbaa !856
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %.0394.i.i.epil.init
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !3  ; 2 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !858
  %i.ae = add i64 %.sroa.0.03.i.i.epil.init, %i.ac
  %.not45.i.i.epil = icmp eq i32 %i.ab, 0
  %i.af = tail call i32 @llvm.umin.i32(i32 %.05.i.i.epil.init, i32 %i.y)
  %.1.i.i.epil = select i1 %.not45.i.i.epil, i32 %.05.i.i.epil.init, i32 %i.af
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.i.i.unr-lcssa, %.lr.ph.i.i.epil.preheader
  %.lcssa = phi i64 [ %i.bb, %._crit_edge.i.i.unr-lcssa ], [ %i.ae, %.lr.ph.i.i.epil.preheader ] ; 3 uses
  %.1.i.i.lcssa = phi i32 [ %.1.i.i.1, %._crit_edge.i.i.unr-lcssa ], [ %.1.i.i.epil, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %i.ag = zext i32 %.1.i.i.lcssa to i64           ; 5 uses
  %.not43.not.i.i = icmp eq i32 %.1.i.i.lcssa, 0
  br i1 %.not43.not.i.i, label %_ZN6duckdbL23ConvertArrowListOffsetsERNS_6VectorER10ArrowArraymRKNS_9ArrowTypeEm.exit, label %.lr.ph8.i.i.preheader

.lr.ph8.i.i.preheader:                            ; preds = %._crit_edge.i.i
  %xtraiter142 = and i64 %4, 1
  %i.ah = icmp eq i64 %i.u, 0
  br i1 %i.ah, label %.lr.ph8.i.i.epil.preheader, label %.lr.ph8.i.i.preheader.new

.lr.ph8.i.i.preheader.new:                        ; preds = %.lr.ph8.i.i.preheader
  %unroll_iter145 = and i64 %4, -2
  br label %.lr.ph8.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i.new
  %.05.i.i = phi i32 [ %i.r, %.lr.ph.preheader.i.i.new ], [ %.1.i.i.1, %.lr.ph.i.i ] ; 2 uses
  %.0394.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %i.bd, %.lr.ph.i.i ] ; 5 uses
  %.sroa.0.03.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %i.bb, %.lr.ph.i.i ]
  %niter141 = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %niter141.next.1, %.lr.ph.i.i ]
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %.0394.i.i ; 2 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %.0394.i.i
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !3  ; 2 uses
  %i.al = zext i32 %i.ak to i64
  store i64 %i.al, ptr %i.ai, align 8, !tbaa !856
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %.0394.i.i
  %i.an = load i32, ptr %i.am, align 4, !tbaa !3  ; 2 uses
  %i.ao = zext i32 %i.an to i64                   ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store i64 %i.ao, ptr %i.ap, align 8, !tbaa !858
  %i.aq = add i64 %.sroa.0.03.i.i, %i.ao
  %.not45.i.i = icmp eq i32 %i.an, 0
  %i.ar = tail call i32 @llvm.umin.i32(i32 %.05.i.i, i32 %i.ak)
  %.1.i.i = select i1 %.not45.i.i, i32 %.05.i.i, i32 %i.ar ; 2 uses
  %i.as = or disjoint i64 %.0394.i.i, 1           ; 3 uses
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %i.as ; 2 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.as
  %i.av = load i32, ptr %i.au, align 4, !tbaa !3  ; 2 uses
  %i.aw = zext i32 %i.av to i64
  store i64 %i.aw, ptr %i.at, align 8, !tbaa !856
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.as
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !3  ; 2 uses
  %i.az = zext i32 %i.ay to i64                   ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i64 %i.az, ptr %i.ba, align 8, !tbaa !858
  %i.bb = add i64 %i.aq, %i.az                    ; 3 uses
  %.not45.i.i.1 = icmp eq i32 %i.ay, 0
  %i.bc = tail call i32 @llvm.umin.i32(i32 %.1.i.i, i32 %i.av)
  %.1.i.i.1 = select i1 %.not45.i.i.1, i32 %.1.i.i, i32 %i.bc ; 3 uses
  %i.bd = add nuw i64 %.0394.i.i, 2               ; 2 uses
  %niter141.next.1 = add nuw i64 %niter141, 2     ; 2 uses
  %niter141.ncmp.1 = icmp eq i64 %niter141.next.1, %unroll_iter140
  br i1 %niter141.ncmp.1, label %._crit_edge.i.i.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !859

.lr.ph8.i.i:                                      ; preds = %.lr.ph8.i.i, %.lr.ph8.i.i.preheader.new
  %.0387.i.i = phi i64 [ 0, %.lr.ph8.i.i.preheader.new ], [ %i.bj, %.lr.ph8.i.i ] ; 3 uses
  %niter146 = phi i64 [ 0, %.lr.ph8.i.i.preheader.new ], [ %niter146.next.1, %.lr.ph8.i.i ]
  %i.be = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %.0387.i.i ; 2 uses
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !856
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %i.bf, i64 %i.ag)
  store i64 %spec.select.i.i, ptr %i.be, align 8, !tbaa !856
  %i.bg = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %.0387.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16 ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !856
  %spec.select.i.i.1 = tail call i64 @llvm.usub.sat.i64(i64 %i.bi, i64 %i.ag)
  store i64 %spec.select.i.i.1, ptr %i.bh, align 8, !tbaa !856
  %i.bj = add nuw i64 %.0387.i.i, 2               ; 2 uses
  %niter146.next.1 = add i64 %niter146, 2         ; 2 uses
  %niter146.ncmp.1 = icmp eq i64 %niter146.next.1, %unroll_iter145
  br i1 %niter146.ncmp.1, label %_ZN6duckdbL23ConvertArrowListOffsetsERNS_6VectorER10ArrowArraymRKNS_9ArrowTypeEm.exit.loopexit.unr-lcssa, label %.lr.ph8.i.i, !llvm.loop !860

bb.d:                                             ; preds = %bb.b
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %.val.val.i, i64 %.0.i ; 2 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %.val.val21.i, i64 %.0.i
  br i1 %.not.i.i, label %._crit_edge.thread.i43.i, label %.lr.ph.preheader.i27.i

._crit_edge.thread.i43.i:                         ; preds = %bb.d
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_12list_entry_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
  br label %_ZN6duckdbL23ConvertArrowListOffsetsERNS_6VectorER10ArrowArraymRKNS_9ArrowTypeEm.exit

.lr.ph.preheader.i27.i:                           ; preds = %bb.d
  %i.bm = load i64, ptr %i.bk, align 8, !tbaa !23
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_12list_entry_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !419 ; 4 uses
  br label %.lr.ph.i28.i

._crit_edge.i35.i:                                ; preds = %bb.f
  %.not43.not.i36.i = icmp eq i64 %.1.i33.i, 0
  br i1 %.not43.not.i36.i, label %_ZN6duckdbL23ConvertArrowListOffsetsERNS_6VectorER10ArrowArraymRKNS_9ArrowTypeEm.exit, label %.lr.ph8.i37.i.preheader

.lr.ph8.i37.i.preheader:                          ; preds = %._crit_edge.i35.i
  %xtraiter130 = and i64 %4, 1
  %i.bp = icmp eq i64 %4, 1
  br i1 %i.bp, label %.lr.ph8.i37.i.epil.preheader, label %.lr.ph8.i37.i.preheader.new

.lr.ph8.i37.i.preheader.new:                      ; preds = %.lr.ph8.i37.i.preheader
  %unroll_iter133 = and i64 %4, -2
  br label %.lr.ph8.i37.i

.lr.ph.i28.i:                                     ; preds = %bb.f, %.lr.ph.preheader.i27.i
  %.05.i29.i = phi i64 [ %.1.i33.i, %bb.f ], [ %i.bm, %.lr.ph.preheader.i27.i ] ; 2 uses
  %.0394.i30.i = phi i64 [ %i.bz, %bb.f ], [ 0, %.lr.ph.preheader.i27.i ] ; 4 uses
  %.sroa.0.03.i31.i = phi i64 [ %i.bw, %bb.f ], [ 0, %.lr.ph.preheader.i27.i ]
  %i.bq = getelementptr inbounds nuw [16 x i8], ptr %i.bo, i64 %.0394.i30.i ; 2 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %.0394.i30.i ; 2 uses
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !23
  store i64 %i.bs, ptr %i.bq, align 8, !tbaa !856
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %.0394.i30.i
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !23 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  store i64 %i.bu, ptr %i.bv, align 8, !tbaa !858
  %i.bw = add i64 %i.bu, %.sroa.0.03.i31.i        ; 4 uses
  %.not45.i32.i = icmp eq i64 %i.bu, 0
  br i1 %.not45.i32.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i28.i
  %i.bx = load i64, ptr %i.br, align 8, !tbaa !23
  %i.by = tail call noundef i64 @llvm.umin.i64(i64 %.05.i29.i, i64 %i.bx)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph.i28.i
  %.1.i33.i = phi i64 [ %i.by, %bb.e ], [ %.05.i29.i, %.lr.ph.i28.i ] ; 7 uses
  %i.bz = add nuw i64 %.0394.i30.i, 1             ; 2 uses
  %exitcond.not.i34.i = icmp eq i64 %i.bz, %4
  br i1 %exitcond.not.i34.i, label %._crit_edge.i35.i, label %.lr.ph.i28.i, !llvm.loop !861

.lr.ph8.i37.i:                                    ; preds = %.lr.ph8.i37.i, %.lr.ph8.i37.i.preheader.new
  %.0387.i38.i = phi i64 [ 0, %.lr.ph8.i37.i.preheader.new ], [ %i.cf, %.lr.ph8.i37.i ] ; 3 uses
  %niter134 = phi i64 [ 0, %.lr.ph8.i37.i.preheader.new ], [ %niter134.next.1, %.lr.ph8.i37.i ]
  %i.ca = getelementptr inbounds nuw [16 x i8], ptr %i.bo, i64 %.0387.i38.i ; 2 uses
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !856
  %spec.select.i39.i = tail call i64 @llvm.usub.sat.i64(i64 %i.cb, i64 %.1.i33.i)
  store i64 %spec.select.i39.i, ptr %i.ca, align 8, !tbaa !856
  %i.cc = getelementptr inbounds nuw [16 x i8], ptr %i.bo, i64 %.0387.i38.i
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16 ; 2 uses
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !856
  %spec.select.i39.i.1 = tail call i64 @llvm.usub.sat.i64(i64 %i.ce, i64 %.1.i33.i)
  store i64 %spec.select.i39.i.1, ptr %i.cd, align 8, !tbaa !856
  %i.cf = add nuw i64 %.0387.i38.i, 2             ; 2 uses
  %niter134.next.1 = add nuw i64 %niter134, 2     ; 2 uses
  %niter134.ncmp.1 = icmp eq i64 %niter134.next.1, %unroll_iter133
  br i1 %niter134.ncmp.1, label %_ZN6duckdbL23ConvertArrowListOffsetsERNS_6VectorER10ArrowArraymRKNS_9ArrowTypeEm.exit.loopexit118.unr-lcssa, label %.lr.ph8.i37.i, !llvm.loop !862

bb.g:                                             ; preds = %bb.a
  %i.cg = icmp eq i64 %4, 0                       ; 2 uses
  br i1 %i.l, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  br i1 %i.cg, label %_ZN6duckdbL23ConvertArrowListOffsetsERNS_6VectorER10ArrowArraymRKNS_9ArrowTypeEm.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val24.i = load ptr, ptr %i.ch, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %.val24.i, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !166
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %.0.i ; 6 uses
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !3
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_12list_entry_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !419 ; 3 uses
  %.pre.i.i = load i32, ptr %i.ck, align 4, !tbaa !3 ; 2 uses
  %xtraiter124 = and i64 %4, 1
  %i.co = icmp eq i64 %4, 1
  br i1 %i.co, label %.epil.preheader123, label %.new121

.new121:                                          ; preds = %bb.i
  %unroll_iter128 = and i64 %4, -2
  br label %bb.k

.unr-lcssa122:                                    ; preds = %bb.k
  %lcmp.mod125.not = icmp eq i64 %xtraiter124, 0
  br i1 %lcmp.mod125.not, label %bb.j, label %.epil.preheader123

.epil.preheader123:                               ; preds = %.unr-lcssa122, %bb.i
  %.epil.init = phi i32 [ %.pre.i.i, %bb.i ], [ %i.dn, %.unr-lcssa122 ]
  %.03.i.i.epil.init = phi i64 [ 0, %bb.i ], [ %i.dl, %.unr-lcssa122 ] ; 2 uses
  %.0262.i.i.epil.init = phi i64 [ 0, %bb.i ], [ %i.dr, %.unr-lcssa122 ]
  %lcmp.mod127 = trunc i64 %4 to i1
  tail call void @llvm.assume(i1 %lcmp.mod127)
  %i.cp = getelementptr inbounds nuw [16 x i8], ptr %i.cn, i64 %.03.i.i.epil.init ; 2 uses
  store i64 %.0262.i.i.epil.init, ptr %i.cp, align 8, !tbaa !856
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %.03.i.i.epil.init
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 4
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !3
  %i.ct = sub i32 %i.cs, %.epil.init
  %i.cu = zext i32 %i.ct to i64
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  store i64 %i.cu, ptr %i.cv, align 8, !tbaa !858
  br label %bb.j

bb.j:                                             ; preds = %.unr-lcssa122, %.epil.preheader123
  %i.cw = zext i32 %i.cl to i64                   ; 2 uses
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %4
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !3
  %i.cz = zext i32 %i.cy to i64
  %i.da = sub nsw i64 %i.cz, %i.cw
  br label %_ZN6duckdbL23ConvertArrowListOffsetsERNS_6VectorER10ArrowArraymRKNS_9ArrowTypeEm.exit

bb.k:                                             ; preds = %bb.k, %.new121
  %i.db = phi i32 [ %.pre.i.i, %.new121 ], [ %i.dn, %bb.k ]
  %.03.i.i = phi i64 [ 0, %.new121 ], [ %i.dl, %bb.k ] ; 3 uses
  %.0262.i.i = phi i64 [ 0, %.new121 ], [ %i.dr, %bb.k ] ; 2 uses
  %niter129 = phi i64 [ 0, %.new121 ], [ %niter129.next.1, %bb.k ]
  %i.dc = getelementptr inbounds nuw [16 x i8], ptr %i.cn, i64 %.03.i.i ; 2 uses
  store i64 %.0262.i.i, ptr %i.dc, align 8, !tbaa !856
  %i.dd = or disjoint i64 %.03.i.i, 1             ; 2 uses
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %i.dd
  %i.df = load i32, ptr %i.de, align 4, !tbaa !3  ; 2 uses
  %i.dg = sub i32 %i.df, %i.db
  %i.dh = zext i32 %i.dg to i64                   ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  store i64 %i.dh, ptr %i.di, align 8, !tbaa !858
  %i.dj = add i64 %.0262.i.i, %i.dh               ; 2 uses
  %i.dk = getelementptr inbounds nuw [16 x i8], ptr %i.cn, i64 %i.dd ; 2 uses
  store i64 %i.dj, ptr %i.dk, align 8, !tbaa !856
  %i.dl = add nuw i64 %.03.i.i, 2                 ; 3 uses
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %i.dl
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !3  ; 3 uses
  %i.do = sub i32 %i.dn, %i.df
  %i.dp = zext i32 %i.do to i64                   ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  store i64 %i.dp, ptr %i.dq, align 8, !tbaa !858
  %i.dr = add i64 %i.dj, %i.dp                    ; 2 uses
  %niter129.next.1 = add nuw i64 %niter129, 2     ; 2 uses
  %niter129.ncmp.1 = icmp eq i64 %niter129.next.1, %unroll_iter128
  br i1 %niter129.ncmp.1, label %.unr-lcssa122, label %bb.k, !llvm.loop !863

bb.l:                                             ; preds = %bb.g
  br i1 %i.cg, label %_ZN6duckdbL23ConvertArrowListOffsetsERNS_6VectorER10ArrowArraymRKNS_9ArrowTypeEm.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val25.i = load ptr, ptr %i.ds, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %.val25.i, i64 8
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !166
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %.0.i ; 8 uses
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !23 ; 2 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_12list_entry_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !419 ; 3 uses
  %xtraiter = and i64 %4, 1
  %i.dz = icmp eq i64 %4, 1
  br i1 %i.dz, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.m
  %unroll_iter = and i64 %4, -2
  br label %bb.o

.unr-lcssa:                                       ; preds = %bb.o
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb.n, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %bb.m
  %.03.i47.i.epil.init = phi i64 [ 0, %bb.m ], [ %i.ev, %.unr-lcssa ] ; 3 uses
  %.0262.i48.i.epil.init = phi i64 [ 0, %bb.m ], [ %i.fc, %.unr-lcssa ]
  %lcmp.mod120 = trunc i64 %4 to i1
  tail call void @llvm.assume(i1 %lcmp.mod120)
  %i.ea = getelementptr inbounds nuw [16 x i8], ptr %i.dy, i64 %.03.i47.i.epil.init ; 2 uses
  store i64 %.0262.i48.i.epil.init, ptr %i.ea, align 8, !tbaa !856
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %.03.i47.i.epil.init
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !23
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %.03.i47.i.epil.init
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !23
  %i.eg = sub i64 %i.ed, %i.ef
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  store i64 %i.eg, ptr %i.eh, align 8, !tbaa !858
  br label %bb.n

bb.n:                                             ; preds = %.unr-lcssa, %.epil.preheader
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %4
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !23
  %i.ek = sub i64 %i.ej, %i.dw
  br label %_ZN6duckdbL23ConvertArrowListOffsetsERNS_6VectorER10ArrowArraymRKNS_9ArrowTypeEm.exit

bb.o:                                             ; preds = %bb.o, %.new
  %.03.i47.i = phi i64 [ 0, %.new ], [ %i.ev, %bb.o ] ; 4 uses
  %.0262.i48.i = phi i64 [ 0, %.new ], [ %i.fc, %bb.o ] ; 2 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.o ]
  %i.el = getelementptr inbounds nuw [16 x i8], ptr %i.dy, i64 %.03.i47.i ; 2 uses
  store i64 %.0262.i48.i, ptr %i.el, align 8, !tbaa !856
  %i.em = or disjoint i64 %.03.i47.i, 1           ; 3 uses
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %i.em
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !23
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %.03.i47.i
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !23
  %i.er = sub i64 %i.eo, %i.eq                    ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  store i64 %i.er, ptr %i.es, align 8, !tbaa !858
  %i.et = add i64 %i.er, %.0262.i48.i             ; 2 uses
  %i.eu = getelementptr inbounds nuw [16 x i8], ptr %i.dy, i64 %i.em ; 2 uses
  store i64 %i.et, ptr %i.eu, align 8, !tbaa !856
  %i.ev = add nuw i64 %.03.i47.i, 2               ; 3 uses
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %i.ev
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !23
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %i.em
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !23
  %i.fa = sub i64 %i.ex, %i.ez                    ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  store i64 %i.fa, ptr %i.fb, align 8, !tbaa !858
  %i.fc = add i64 %i.fa, %i.et                    ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %bb.o, !llvm.loop !864

_ZN6duckdbL23ConvertArrowListOffsetsERNS_6VectorER10ArrowArraymRKNS_9ArrowTypeEm.exit.loopexit.unr-lcssa: ; preds = %.lr.ph8.i.i
  %lcmp.mod143.not = icmp eq i64 %xtraiter142, 0
  br i1 %lcmp.mod143.not, label %_ZN6duckdbL23ConvertArrowListOffsetsERNS_6VectorER10ArrowArraymRKNS_9ArrowTypeEm.exit, label %.lr.ph8.i.i.epil.preheader

.lr.ph8.i.i.epil.preheader:                       ; preds = %_ZN6duckdbL23ConvertArrowListOffsetsERNS_6VectorER10ArrowArraymRKNS_9ArrowTypeEm.exit.loopexit.unr-lcssa, %.lr.ph8.i.i.preheader
  %.0387.i.i.epil.init = phi i64 [ 0, %.lr.ph8.i.i.preheader ], [ %i.bj, %_ZN6duckdbL23ConvertArrowListOffsetsERNS_6VectorER10ArrowArraymRKNS_9ArrowTypeEm.exit.loopexit.unr-lcssa ]
  %lcmp.mod144 = trunc i64 %4 to i1
  tail call void @llvm.assume(i1 %lcmp.mod144)
  %i.fd = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %.0387.i.i.epil.init ; 2 uses
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !856
  %spec.select.i.i.epil = tail call i64 @llvm.usub.sat.i64(i64 %i.fe, i64 %i.ag)
  store i64 %spec.select.i.i.epil, ptr %i.fd, align 8, !tbaa !856
  br label %_ZN6duckdbL23ConvertArrowListOffsetsERNS_6VectorER10ArrowArraymRKNS_9ArrowTypeEm.exit

_ZN6duckdbL23ConvertArrowListOffsetsERNS_6VectorER10ArrowArraymRKNS_9ArrowTypeEm.exit.loopexit118.unr-lcssa: ; preds = %.lr.ph8.i37.i
  %lcmp.mod131.not = icmp eq i64 %xtraiter130, 0
  br i1 %lcmp.mod131.not, label %_ZN6duckdbL23ConvertArrowListOffsetsERNS_6VectorER10ArrowArraymRKNS_9ArrowTypeEm.exit, label %.lr.ph8.i37.i.epil.preheader

.lr.ph8.i37.i.epil.preheader:                     ; preds = %_ZN6duckdbL23ConvertArrowListOffsetsERNS_6VectorER10ArrowArraymRKNS_9ArrowTypeEm.exit.loopexit118.unr-lcssa, %.lr.ph8.i37.i.preheader
  %.0387.i38.i.epil.init = phi i64 [ 0, %.lr.ph8.i37.i.preheader ], [ %i.cf, %_ZN6duckdbL23ConvertArrowListOffsetsERNS_6VectorER10ArrowArraymRKNS_9ArrowTypeEm.exit.loopexit118.unr-lcssa ]
  %lcmp.mod132 = trunc i64 %4 to i1
  tail call void @llvm.assume(i1 %lcmp.mod132)
  %i.ff = getelementptr inbounds nuw [16 x i8], ptr %i.bo, i64 %.0387.i38.i.epil.init ; 2 uses
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !856
  %spec.select.i39.i.epil = tail call i64 @llvm.usub.sat.i64(i64 %i.fg, i64 %.1.i33.i)
  store i64 %spec.select.i39.i.epil, ptr %i.ff, align 8, !tbaa !856
  br label %_ZN6duckdbL23ConvertArrowListOffsetsERNS_6VectorER10ArrowArraymRKNS_9ArrowTypeEm.exit

_ZN6duckdbL23ConvertArrowListOffsetsERNS_6VectorER10ArrowArraymRKNS_9ArrowTypeEm.exit: ; preds = %.lr.ph8.i37.i.epil.preheader, %_ZN6duckdbL23ConvertArrowListOffsetsERNS_6VectorER10ArrowArraymRKNS_9ArrowTypeEm.exit.loopexit118.unr-lcssa, %.lr.ph8.i.i.epil.preheader, %_ZN6duckdbL23ConvertArrowListOffsetsERNS_6VectorER10ArrowArraymRKNS_9ArrowTypeEm.exit.loopexit.unr-lcssa, %._crit_edge.thread.i.i, %._crit_edge.i.i, %._crit_edge.thread.i43.i, %._crit_edge.i35.i, %bb.h, %bb.j, %bb.l, %bb.n
  %.sroa.0.0.lcssa16.i.pn.i = phi i64 [ 0, %bb.h ], [ 0, %bb.l ], [ %.lcssa, %.lr.ph8.i.i.epil.preheader ], [ 0, %._crit_edge.thread.i.i ], [ %.lcssa, %._crit_edge.i.i ], [ 0, %._crit_edge.thread.i43.i ], [ %i.bw, %._crit_edge.i35.i ], [ %i.da, %bb.j ], [ %i.ek, %bb.n ], [ %.lcssa, %_ZN6duckdbL23ConvertArrowListOffsetsERNS_6VectorER10ArrowArraymRKNS_9ArrowTypeEm.exit.loopexit.unr-lcssa ], [ %i.bw, %_ZN6duckdbL23ConvertArrowListOffsetsERNS_6VectorER10ArrowArraymRKNS_9ArrowTypeEm.exit.loopexit118.unr-lcssa ], [ %i.bw, %.lr.ph8.i37.i.epil.preheader ] ; 7 uses
  %.pn54.i = phi i64 [ 0, %bb.h ], [ 0, %bb.l ], [ %i.ag, %.lr.ph8.i.i.epil.preheader ], [ 0, %._crit_edge.thread.i.i ], [ 0, %._crit_edge.i.i ], [ 0, %._crit_edge.thread.i43.i ], [ 0, %._crit_edge.i35.i ], [ %i.cw, %bb.j ], [ %i.dw, %bb.n ], [ %i.ag, %_ZN6duckdbL23ConvertArrowListOffsetsERNS_6VectorER10ArrowArraymRKNS_9ArrowTypeEm.exit.loopexit.unr-lcssa ], [ %.1.i33.i, %_ZN6duckdbL23ConvertArrowListOffsetsERNS_6VectorER10ArrowArraymRKNS_9ArrowTypeEm.exit.loopexit118.unr-lcssa ], [ %.1.i33.i, %.lr.ph8.i37.i.epil.preheader ] ; 5 uses
  tail call void @_ZN6duckdb10ListVector7ReserveERNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(104) %0, i64 noundef %.sroa.0.0.lcssa16.i.pn.i)
  tail call void @_ZN6duckdb10ListVector11SetListSizeERNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(104) %0, i64 noundef %.sroa.0.0.lcssa16.i.pn.i)
  %i.fh = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb10ListVector8GetEntryERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0) ; 6 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
end_hunk_3
begin_hunk_4_@_ZNSt6vectorIN6duckdb6VectorESaIS1_EED2Ev:bb.a
}

declare void @_ZNK6duckdb11LogicalType8ToStringB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZNK6duckdb19ArrowArrayScanState13CacheOutdatedEP10ArrowArray(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(97) ptr @_ZNK6duckdb9ArrowType13GetDictionaryEv(ptr noundef nonnull align 8 dereferenceable(97)) local_unnamed_addr #2

declare void @_ZN6duckdb19ArrowArrayScanState13AddDictionaryENS_10unique_ptrINS_6VectorESt14default_deleteIS2_ELb1EEEP10ArrowArray(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef, ptr noundef) local_unnamed_addr #2

declare noundef i64 @_ZN6duckdb13GetTypeIdSizeENS_12PhysicalTypeE(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6duckdbL18SetSelectionVectorERNS_15SelectionVectorEPhRKNS_11LogicalTypeEmPNS_12ValidityMaskEm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %3, ptr nofree noundef readonly captures(address_is_null) %4, i64 noundef %5) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 4 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::allocator.0", align 1  ; 5 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %9 = alloca %"class.std::allocator.0", align 1  ; 5 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %11 = alloca %"class.std::allocator.0", align 1 ; 5 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %13 = alloca %"class.std::allocator.0", align 1 ; 5 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %15 = alloca %"class.std::allocator.0", align 1 ; 5 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %17 = alloca %"class.std::allocator.0", align 1 ; 5 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %20 = alloca %"class.std::allocator.0", align 1 ; 5 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  tail call void @_ZN6duckdb15SelectionVector10InitializeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %3)
  %.not = icmp eq ptr %4, null
  %i.b = load i8, ptr %2, align 8, !tbaa !328     ; 2 uses
  br i1 %.not, label %bb.am, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i8 %i.b, label %bb.ah [
    i8 28, label %bb.c
    i8 11, label %bb.e
    i8 29, label %bb.g
    i8 12, label %bb.i
    i8 30, label %bb.k
    i8 13, label %bb.r
    i8 31, label %bb.t
    i8 14, label %bb.aa
  ]

bb.c:                                             ; preds = %bb.b
  %.val = load ptr, ptr %0, align 8               ; 11 uses
  %.val124 = load ptr, ptr %4, align 8            ; 3 uses
  %.not5.i = icmp eq i64 %3, 0
  br i1 %.not5.i, label %_ZN6duckdbL28SetMaskedSelectionVectorLoopIhEEvRNS_15SelectionVectorEPhmRNS_12ValidityMaskEm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %.not.i.i = icmp eq ptr %.val124, null
  %i.c = trunc i64 %5 to i32                      ; 3 uses
  br i1 %.not.i.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i.preheader, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.preheader

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.preheader: ; preds = %.lr.ph.i
  %xtraiter767 = and i64 %3, 1
  %i.d = icmp eq i64 %3, 1
  br i1 %i.d, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.epil.preheader, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.preheader.new

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.preheader.new: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.preheader
  %unroll_iter770 = and i64 %3, -2
  br label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i.preheader: ; preds = %.lr.ph.i
  %min.iters.check550 = icmp ult i64 %3, 12
  br i1 %min.iters.check550, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i.preheader704, label %vector.memcheck543

vector.memcheck543:                               ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i.preheader
  %i.e = shl i64 %3, 2
  %scevgep544 = getelementptr i8, ptr %.val, i64 %i.e
  %scevgep545 = getelementptr i8, ptr %1, i64 %3
  %bound0546 = icmp ult ptr %.val, %scevgep545
  %bound1547 = icmp ult ptr %1, %scevgep544
  %found.conflict548 = and i1 %bound0546, %bound1547
  br i1 %found.conflict548, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i.preheader704, label %vector.ph551

vector.ph551:                                     ; preds = %vector.memcheck543
  %n.vec553 = and i64 %3, -8                      ; 3 uses
  br label %vector.body554

vector.body554:                                   ; preds = %vector.body554, %vector.ph551
  %index555 = phi i64 [ 0, %vector.ph551 ], [ %index.next558, %vector.body554 ] ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %index555 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %wide.load556 = load <4 x i8>, ptr %i.f, align 1, !tbaa !24, !alias.scope !889
  %wide.load557 = load <4 x i8>, ptr %i.g, align 1, !tbaa !24, !alias.scope !889
  %i.h = zext <4 x i8> %wide.load556 to <4 x i32>
  %i.i = zext <4 x i8> %wide.load557 to <4 x i32>
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %index555 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store <4 x i32> %i.h, ptr %i.j, align 4, !tbaa !3, !alias.scope !892, !noalias !889
  store <4 x i32> %i.i, ptr %i.k, align 4, !tbaa !3, !alias.scope !892, !noalias !889
  %index.next558 = add nuw i64 %index555, 8       ; 2 uses
  %i.l = icmp eq i64 %index.next558, %n.vec553
  br i1 %i.l, label %middle.block559, label %vector.body554, !llvm.loop !894

middle.block559:                                  ; preds = %vector.body554
  %cmp.n560 = icmp eq i64 %3, %n.vec553
  br i1 %cmp.n560, label %_ZN6duckdbL28SetMaskedSelectionVectorLoopIhEEvRNS_15SelectionVectorEPhmRNS_12ValidityMaskEm.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i.preheader704

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i.preheader704: ; preds = %vector.memcheck543, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i.preheader, %middle.block559
  %.04.us.i.ph = phi i64 [ 0, %vector.memcheck543 ], [ 0, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i.preheader ], [ %n.vec553, %middle.block559 ] ; 3 uses
  %xtraiter772 = and i64 %3, 3                    ; 2 uses
  %lcmp.mod773.not = icmp eq i64 %xtraiter772, 0
  br i1 %lcmp.mod773.not, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i.prol.loopexit, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i.prol

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i.prol: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i.preheader704, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i.prol
  %.04.us.i.prol = phi i64 [ %i.q, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i.prol ], [ %.04.us.i.ph, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i.preheader704 ] ; 3 uses
  %prol.iter774 = phi i64 [ %prol.iter774.next, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i.prol ], [ 0, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i.preheader704 ]
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 %.04.us.i.prol
  %i.n = load i8, ptr %i.m, align 1, !tbaa !24
  %i.o = zext i8 %i.n to i32
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %.04.us.i.prol
  store i32 %i.o, ptr %i.p, align 4, !tbaa !3
  %i.q = add nuw i64 %.04.us.i.prol, 1            ; 2 uses
  %prol.iter774.next = add i64 %prol.iter774, 1   ; 2 uses
  %prol.iter774.cmp.not = icmp eq i64 %prol.iter774.next, %xtraiter772
  br i1 %prol.iter774.cmp.not, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i.prol.loopexit, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i.prol, !llvm.loop !895

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i.prol.loopexit: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i.prol, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i.preheader704
  %.04.us.i.unr = phi i64 [ %.04.us.i.ph, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i.preheader704 ], [ %i.q, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i.prol ]
  %i.r = sub i64 %.04.us.i.ph, %3
  %i.s = icmp ugt i64 %i.r, -4
  br i1 %i.s, label %_ZN6duckdbL28SetMaskedSelectionVectorLoopIhEEvRNS_15SelectionVectorEPhmRNS_12ValidityMaskEm.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i.prol.loopexit, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i
  %.04.us.i = phi i64 [ %i.am, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i ], [ %.04.us.i.unr, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i.prol.loopexit ] ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 %.04.us.i
  %i.u = load i8, ptr %i.t, align 1, !tbaa !24
  %i.v = zext i8 %i.u to i32
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %.04.us.i
  store i32 %i.v, ptr %i.w, align 4, !tbaa !3
  %i.x = add nuw i64 %.04.us.i, 1                 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !tbaa !24
  %i.aa = zext i8 %i.z to i32
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %i.x
  store i32 %i.aa, ptr %i.ab, align 4, !tbaa !3
  %i.ac = add nuw i64 %.04.us.i, 2                ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !24
  %i.af = zext i8 %i.ae to i32
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %i.ac
  store i32 %i.af, ptr %i.ag, align 4, !tbaa !3
  %i.ah = add nuw i64 %.04.us.i, 3                ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !24
  %i.ak = zext i8 %i.aj to i32
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %i.ah
  store i32 %i.ak, ptr %i.al, align 4, !tbaa !3
  %i.am = add nuw i64 %.04.us.i, 4                ; 2 uses
  %exitcond7.not.i.3 = icmp eq i64 %i.am, %3
  br i1 %exitcond7.not.i.3, label %_ZN6duckdbL28SetMaskedSelectionVectorLoopIhEEvRNS_15SelectionVectorEPhmRNS_12ValidityMaskEm.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i, !llvm.loop !896

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i: ; preds = %bb.d, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.preheader.new
  %.04.i = phi i64 [ 0, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.preheader.new ], [ %i.bf, %bb.d ] ; 6 uses
  %niter771 = phi i64 [ 0, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.preheader.new ], [ %niter771.next.1, %bb.d ]
  %i.an = lshr i64 %.04.i, 6
  %i.ao = and i64 %.04.i, 62
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %.val124, i64 %i.an
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !23 ; 2 uses
  %i.ar = shl nuw nsw i64 1, %i.ao
  %i.as = and i64 %i.ar, %i.aq
  %.not.i = icmp eq i64 %i.as, 0
  br i1 %.not.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.1, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 %.04.i
  %i.au = load i8, ptr %i.at, align 1, !tbaa !24
  %i.av = zext i8 %i.au to i32
  br label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.1

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.1: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i
  %.sink.i = phi i32 [ %i.av, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i ], [ %i.c, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i ]
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %.04.i
  store i32 %.sink.i, ptr %i.aw, align 4, !tbaa !3
  %i.ax = or disjoint i64 %.04.i, 1               ; 3 uses
  %i.ay = and i64 %i.ax, 63
  %i.az = shl nuw i64 1, %i.ay
  %i.ba = and i64 %i.az, %i.aq
  %.not.i.1 = icmp eq i64 %i.ba, 0
  br i1 %.not.i.1, label %bb.d, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.1

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.1: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.1
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 %i.ax
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !24
  %i.bd = zext i8 %i.bc to i32
  br label %bb.d

bb.d:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.1, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.1
  %.sink.i.1 = phi i32 [ %i.bd, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i.1 ], [ %i.c, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i.1 ]
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %i.ax
  store i32 %.sink.i.1, ptr %i.be, align 4, !tbaa !3
  %i.bf = add nuw i64 %.04.i, 2                   ; 2 uses
  %niter771.next.1 = add nuw i64 %niter771, 2     ; 2 uses
  %niter771.ncmp.1 = icmp eq i64 %niter771.next.1, %unroll_iter770
  br i1 %niter771.ncmp.1, label %_ZN6duckdbL28SetMaskedSelectionVectorLoopIhEEvRNS_15SelectionVectorEPhmRNS_12ValidityMaskEm.exit.loopexit706.unr-lcssa, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i, !llvm.loop !897

bb.e:                                             ; preds = %bb.b
  %.val125 = load ptr, ptr %0, align 8            ; 11 uses
  %.val126 = load ptr, ptr %4, align 8            ; 3 uses
  %.not5.i148 = icmp eq i64 %3, 0
  br i1 %.not5.i148, label %_ZN6duckdbL28SetMaskedSelectionVectorLoopIhEEvRNS_15SelectionVectorEPhmRNS_12ValidityMaskEm.exit, label %.lr.ph.i149

.lr.ph.i149:                                      ; preds = %bb.e
  %.not.i.i150 = icmp eq ptr %.val126, null
  %i.bg = trunc i64 %5 to i32                     ; 3 uses
  br i1 %.not.i.i150, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i157.preheader, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i151.preheader

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i151.preheader: ; preds = %.lr.ph.i149
  %xtraiter759 = and i64 %3, 1
  %i.bh = icmp eq i64 %3, 1
  br i1 %i.bh, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i151.epil.preheader, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i151.preheader.new

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i151.preheader.new: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i151.preheader
  %unroll_iter762 = and i64 %3, -2
  br label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i151

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i157.preheader: ; preds = %.lr.ph.i149
  %min.iters.check531 = icmp ult i64 %3, 12
  br i1 %min.iters.check531, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i157.preheader707, label %vector.memcheck528

vector.memcheck528:                               ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i157.preheader
  %i.bi = shl i64 %3, 2
  %scevgep = getelementptr i8, ptr %.val125, i64 %i.bi
  %scevgep529 = getelementptr i8, ptr %1, i64 %3
  %bound0 = icmp ult ptr %.val125, %scevgep529
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i157.preheader707, label %vector.ph532

vector.ph532:                                     ; preds = %vector.memcheck528
  %n.vec534 = and i64 %3, -8                      ; 3 uses
  br label %vector.body535

vector.body535:                                   ; preds = %vector.body535, %vector.ph532
  %index536 = phi i64 [ 0, %vector.ph532 ], [ %index.next539, %vector.body535 ] ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 %index536 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 4
  %wide.load537 = load <4 x i8>, ptr %i.bj, align 1, !tbaa !24, !alias.scope !898
  %wide.load538 = load <4 x i8>, ptr %i.bk, align 1, !tbaa !24, !alias.scope !898
  %i.bl = sext <4 x i8> %wide.load537 to <4 x i32>
  %i.bm = sext <4 x i8> %wide.load538 to <4 x i32>
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %.val125, i64 %index536 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  store <4 x i32> %i.bl, ptr %i.bn, align 4, !tbaa !3, !alias.scope !901, !noalias !898
  store <4 x i32> %i.bm, ptr %i.bo, align 4, !tbaa !3, !alias.scope !901, !noalias !898
  %index.next539 = add nuw i64 %index536, 8       ; 2 uses
  %i.bp = icmp eq i64 %index.next539, %n.vec534
  br i1 %i.bp, label %middle.block540, label %vector.body535, !llvm.loop !903

middle.block540:                                  ; preds = %vector.body535
  %cmp.n541 = icmp eq i64 %3, %n.vec534
  br i1 %cmp.n541, label %_ZN6duckdbL28SetMaskedSelectionVectorLoopIhEEvRNS_15SelectionVectorEPhmRNS_12ValidityMaskEm.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i157.preheader707

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i157.preheader707: ; preds = %vector.memcheck528, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i157.preheader, %middle.block540
  %.04.us.i158.ph = phi i64 [ 0, %vector.memcheck528 ], [ 0, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i157.preheader ], [ %n.vec534, %middle.block540 ] ; 3 uses
  %xtraiter764 = and i64 %3, 3                    ; 2 uses
  %lcmp.mod765.not = icmp eq i64 %xtraiter764, 0
  br i1 %lcmp.mod765.not, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i157.prol.loopexit, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i157.prol

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i157.prol: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i157.preheader707, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i157.prol
  %.04.us.i158.prol = phi i64 [ %i.bu, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i157.prol ], [ %.04.us.i158.ph, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i157.preheader707 ] ; 3 uses
  %prol.iter766 = phi i64 [ %prol.iter766.next, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i157.prol ], [ 0, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i157.preheader707 ]
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 %.04.us.i158.prol
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !24
  %i.bs = sext i8 %i.br to i32
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %.val125, i64 %.04.us.i158.prol
  store i32 %i.bs, ptr %i.bt, align 4, !tbaa !3
  %i.bu = add nuw i64 %.04.us.i158.prol, 1        ; 2 uses
  %prol.iter766.next = add i64 %prol.iter766, 1   ; 2 uses
  %prol.iter766.cmp.not = icmp eq i64 %prol.iter766.next, %xtraiter764
  br i1 %prol.iter766.cmp.not, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i157.prol.loopexit, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i157.prol, !llvm.loop !904

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i157.prol.loopexit: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i157.prol, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i157.preheader707
  %.04.us.i158.unr = phi i64 [ %.04.us.i158.ph, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i157.preheader707 ], [ %i.bu, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i157.prol ]
  %i.bv = sub i64 %.04.us.i158.ph, %3
  %i.bw = icmp ugt i64 %i.bv, -4
  br i1 %i.bw, label %_ZN6duckdbL28SetMaskedSelectionVectorLoopIhEEvRNS_15SelectionVectorEPhmRNS_12ValidityMaskEm.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i157

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i157: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i157.prol.loopexit, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i157
  %.04.us.i158 = phi i64 [ %i.cq, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i157 ], [ %.04.us.i158.unr, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i157.prol.loopexit ] ; 6 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 %.04.us.i158
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !24
  %i.bz = sext i8 %i.by to i32
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %.val125, i64 %.04.us.i158
  store i32 %i.bz, ptr %i.ca, align 4, !tbaa !3
  %i.cb = add nuw i64 %.04.us.i158, 1             ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 %i.cb
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !24
  %i.ce = sext i8 %i.cd to i32
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %.val125, i64 %i.cb
  store i32 %i.ce, ptr %i.cf, align 4, !tbaa !3
  %i.cg = add nuw i64 %.04.us.i158, 2             ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 %i.cg
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !24
  %i.cj = sext i8 %i.ci to i32
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %.val125, i64 %i.cg
  store i32 %i.cj, ptr %i.ck, align 4, !tbaa !3
  %i.cl = add nuw i64 %.04.us.i158, 3             ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 %i.cl
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !24
  %i.co = sext i8 %i.cn to i32
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %.val125, i64 %i.cl
  store i32 %i.co, ptr %i.cp, align 4, !tbaa !3
  %i.cq = add nuw i64 %.04.us.i158, 4             ; 2 uses
  %exitcond7.not.i159.3 = icmp eq i64 %i.cq, %3
  br i1 %exitcond7.not.i159.3, label %_ZN6duckdbL28SetMaskedSelectionVectorLoopIhEEvRNS_15SelectionVectorEPhmRNS_12ValidityMaskEm.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i157, !llvm.loop !905

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i151: ; preds = %bb.f, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i151.preheader.new
  %.04.i152 = phi i64 [ 0, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i151.preheader.new ], [ %i.dj, %bb.f ] ; 6 uses
  %niter763 = phi i64 [ 0, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i151.preheader.new ], [ %niter763.next.1, %bb.f ]
  %i.cr = lshr i64 %.04.i152, 6
  %i.cs = and i64 %.04.i152, 62
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %.val126, i64 %i.cr
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !23 ; 2 uses
  %i.cv = shl nuw nsw i64 1, %i.cs
  %i.cw = and i64 %i.cv, %i.cu
  %.not.i153 = icmp eq i64 %i.cw, 0
  br i1 %.not.i153, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i151.1, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i154

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i154: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i151
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 %.04.i152
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !24
  %i.cz = sext i8 %i.cy to i32
  br label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i151.1

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i151.1: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i154, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i151
  %.sink.i155 = phi i32 [ %i.cz, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i154 ], [ %i.bg, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i151 ]
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %.val125, i64 %.04.i152
  store i32 %.sink.i155, ptr %i.da, align 4, !tbaa !3
  %i.db = or disjoint i64 %.04.i152, 1            ; 3 uses
  %i.dc = and i64 %i.db, 63
  %i.dd = shl nuw i64 1, %i.dc
  %i.de = and i64 %i.dd, %i.cu
  %.not.i153.1 = icmp eq i64 %i.de, 0
  br i1 %.not.i153.1, label %bb.f, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i154.1

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i154.1: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i151.1
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 %i.db
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !24
  %i.dh = sext i8 %i.dg to i32
  br label %bb.f

bb.f:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i154.1, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i151.1
  %.sink.i155.1 = phi i32 [ %i.dh, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i154.1 ], [ %i.bg, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i151.1 ]
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %.val125, i64 %i.db
  store i32 %.sink.i155.1, ptr %i.di, align 4, !tbaa !3
  %i.dj = add nuw i64 %.04.i152, 2                ; 2 uses
  %niter763.next.1 = add nuw i64 %niter763, 2     ; 2 uses
  %niter763.ncmp.1 = icmp eq i64 %niter763.next.1, %unroll_iter762
  br i1 %niter763.ncmp.1, label %_ZN6duckdbL28SetMaskedSelectionVectorLoopIhEEvRNS_15SelectionVectorEPhmRNS_12ValidityMaskEm.exit.loopexit709.unr-lcssa, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i151, !llvm.loop !906

bb.g:                                             ; preds = %bb.b
  %.val127 = load ptr, ptr %0, align 8            ; 5 uses
  %.val128 = load ptr, ptr %4, align 8            ; 3 uses
  %.not5.i160 = icmp eq i64 %3, 0
  br i1 %.not5.i160, label %_ZN6duckdbL28SetMaskedSelectionVectorLoopIhEEvRNS_15SelectionVectorEPhmRNS_12ValidityMaskEm.exit, label %.lr.ph.i161

.lr.ph.i161:                                      ; preds = %bb.g
  %.not.i.i162 = icmp eq ptr %.val128, null
  %i.dk = trunc i64 %5 to i32                     ; 3 uses
  br i1 %.not.i.i162, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i169.preheader, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i163.preheader

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i163.preheader: ; preds = %.lr.ph.i161
  %xtraiter754 = and i64 %3, 1
  %i.dl = icmp eq i64 %3, 1
  br i1 %i.dl, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i163.epil.preheader, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i163.preheader.new

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i163.preheader.new: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i163.preheader
  %unroll_iter757 = and i64 %3, -2
  br label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i163

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i169.preheader: ; preds = %.lr.ph.i161
  %min.iters.check516 = icmp ult i64 %3, 8
  br i1 %min.iters.check516, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i169.preheader710, label %vector.ph517

vector.ph517:                                     ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i169.preheader
  %n.vec519 = and i64 %3, -8                      ; 3 uses
  br label %vector.body520

vector.body520:                                   ; preds = %vector.body520, %vector.ph517
  %index521 = phi i64 [ 0, %vector.ph517 ], [ %index.next524, %vector.body520 ] ; 3 uses
  %i.dm = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index521 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %wide.load522 = load <4 x i16>, ptr %i.dm, align 2, !tbaa !475
  %wide.load523 = load <4 x i16>, ptr %i.dn, align 2, !tbaa !475
  %i.do = zext <4 x i16> %wide.load522 to <4 x i32>
  %i.dp = zext <4 x i16> %wide.load523 to <4 x i32>
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %.val127, i64 %index521 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  store <4 x i32> %i.do, ptr %i.dq, align 4, !tbaa !3
  store <4 x i32> %i.dp, ptr %i.dr, align 4, !tbaa !3
  %index.next524 = add nuw i64 %index521, 8       ; 2 uses
  %i.ds = icmp eq i64 %index.next524, %n.vec519
  br i1 %i.ds, label %middle.block525, label %vector.body520, !llvm.loop !907

middle.block525:                                  ; preds = %vector.body520
  %cmp.n526 = icmp eq i64 %3, %n.vec519
  br i1 %cmp.n526, label %_ZN6duckdbL28SetMaskedSelectionVectorLoopIhEEvRNS_15SelectionVectorEPhmRNS_12ValidityMaskEm.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i169.preheader710

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i169.preheader710: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i169.preheader, %middle.block525
  %.04.us.i170.ph = phi i64 [ 0, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i169.preheader ], [ %n.vec519, %middle.block525 ]
  br label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i169

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i169: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i169.preheader710, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i169
  %.04.us.i170 = phi i64 [ %i.dx, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i169 ], [ %.04.us.i170.ph, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i169.preheader710 ] ; 3 uses
  %i.dt = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.04.us.i170
  %i.du = load i16, ptr %i.dt, align 2, !tbaa !475
  %i.dv = zext i16 %i.du to i32
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %.val127, i64 %.04.us.i170
  store i32 %i.dv, ptr %i.dw, align 4, !tbaa !3
  %i.dx = add nuw i64 %.04.us.i170, 1             ; 2 uses
  %exitcond7.not.i171 = icmp eq i64 %i.dx, %3
  br i1 %exitcond7.not.i171, label %_ZN6duckdbL28SetMaskedSelectionVectorLoopIhEEvRNS_15SelectionVectorEPhmRNS_12ValidityMaskEm.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i169, !llvm.loop !908

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i163: ; preds = %bb.h, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i163.preheader.new
  %.04.i164 = phi i64 [ 0, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i163.preheader.new ], [ %i.eq, %bb.h ] ; 6 uses
  %niter758 = phi i64 [ 0, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i163.preheader.new ], [ %niter758.next.1, %bb.h ]
  %i.dy = lshr i64 %.04.i164, 6
  %i.dz = and i64 %.04.i164, 62
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %.val128, i64 %i.dy
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !23 ; 2 uses
  %i.ec = shl nuw nsw i64 1, %i.dz
  %i.ed = and i64 %i.ec, %i.eb
  %.not.i165 = icmp eq i64 %i.ed, 0
  br i1 %.not.i165, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i163.1, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i166

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i166: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i163
  %i.ee = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.04.i164
  %i.ef = load i16, ptr %i.ee, align 2, !tbaa !475
  %i.eg = zext i16 %i.ef to i32
  br label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i163.1

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i163.1: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i166, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i163
  %.sink.i167 = phi i32 [ %i.eg, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i166 ], [ %i.dk, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i163 ]
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %.val127, i64 %.04.i164
  store i32 %.sink.i167, ptr %i.eh, align 4, !tbaa !3
  %i.ei = or disjoint i64 %.04.i164, 1            ; 3 uses
  %i.ej = and i64 %i.ei, 63
  %i.ek = shl nuw i64 1, %i.ej
  %i.el = and i64 %i.ek, %i.eb
  %.not.i165.1 = icmp eq i64 %i.el, 0
  br i1 %.not.i165.1, label %bb.h, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i166.1

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i166.1: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i163.1
  %i.em = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ei
  %i.en = load i16, ptr %i.em, align 2, !tbaa !475
  %i.eo = zext i16 %i.en to i32
  br label %bb.h

bb.h:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i166.1, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i163.1
  %.sink.i167.1 = phi i32 [ %i.eo, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i166.1 ], [ %i.dk, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i163.1 ]
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %.val127, i64 %i.ei
  store i32 %.sink.i167.1, ptr %i.ep, align 4, !tbaa !3
  %i.eq = add nuw i64 %.04.i164, 2                ; 2 uses
  %niter758.next.1 = add nuw i64 %niter758, 2     ; 2 uses
  %niter758.ncmp.1 = icmp eq i64 %niter758.next.1, %unroll_iter757
  br i1 %niter758.ncmp.1, label %_ZN6duckdbL28SetMaskedSelectionVectorLoopIhEEvRNS_15SelectionVectorEPhmRNS_12ValidityMaskEm.exit.loopexit712.unr-lcssa, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i163, !llvm.loop !909

bb.i:                                             ; preds = %bb.b
  %.val129 = load ptr, ptr %0, align 8            ; 5 uses
  %.val130 = load ptr, ptr %4, align 8            ; 3 uses
  %.not5.i172 = icmp eq i64 %3, 0
  br i1 %.not5.i172, label %_ZN6duckdbL28SetMaskedSelectionVectorLoopIhEEvRNS_15SelectionVectorEPhmRNS_12ValidityMaskEm.exit, label %.lr.ph.i173

.lr.ph.i173:                                      ; preds = %bb.i
  %.not.i.i174 = icmp eq ptr %.val130, null
  %i.er = trunc i64 %5 to i32                     ; 3 uses
  br i1 %.not.i.i174, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i181.preheader, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i175.preheader

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i175.preheader: ; preds = %.lr.ph.i173
  %xtraiter749 = and i64 %3, 1
  %i.es = icmp eq i64 %3, 1
  br i1 %i.es, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i175.epil.preheader, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i175.preheader.new

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i175.preheader.new: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i175.preheader
  %unroll_iter752 = and i64 %3, -2
  br label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i175

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i181.preheader: ; preds = %.lr.ph.i173
  %min.iters.check503 = icmp ult i64 %3, 8
  br i1 %min.iters.check503, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i181.preheader713, label %vector.ph504

vector.ph504:                                     ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i181.preheader
  %n.vec506 = and i64 %3, -8                      ; 3 uses
  br label %vector.body507

vector.body507:                                   ; preds = %vector.body507, %vector.ph504
  %index508 = phi i64 [ 0, %vector.ph504 ], [ %index.next511, %vector.body507 ] ; 3 uses
  %i.et = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index508 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %wide.load509 = load <4 x i16>, ptr %i.et, align 2, !tbaa !475
  %wide.load510 = load <4 x i16>, ptr %i.eu, align 2, !tbaa !475
  %i.ev = sext <4 x i16> %wide.load509 to <4 x i32>
  %i.ew = sext <4 x i16> %wide.load510 to <4 x i32>
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %.val129, i64 %index508 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 16
  store <4 x i32> %i.ev, ptr %i.ex, align 4, !tbaa !3
  store <4 x i32> %i.ew, ptr %i.ey, align 4, !tbaa !3
  %index.next511 = add nuw i64 %index508, 8       ; 2 uses
  %i.ez = icmp eq i64 %index.next511, %n.vec506
  br i1 %i.ez, label %middle.block512, label %vector.body507, !llvm.loop !910

middle.block512:                                  ; preds = %vector.body507
  %cmp.n513 = icmp eq i64 %3, %n.vec506
  br i1 %cmp.n513, label %_ZN6duckdbL28SetMaskedSelectionVectorLoopIhEEvRNS_15SelectionVectorEPhmRNS_12ValidityMaskEm.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i181.preheader713

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i181.preheader713: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i181.preheader, %middle.block512
  %.04.us.i182.ph = phi i64 [ 0, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i181.preheader ], [ %n.vec506, %middle.block512 ]
  br label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i181

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i181: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i181.preheader713, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i181
  %.04.us.i182 = phi i64 [ %i.fe, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i181 ], [ %.04.us.i182.ph, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i181.preheader713 ] ; 3 uses
  %i.fa = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.04.us.i182
  %i.fb = load i16, ptr %i.fa, align 2, !tbaa !475
  %i.fc = sext i16 %i.fb to i32
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %.val129, i64 %.04.us.i182
  store i32 %i.fc, ptr %i.fd, align 4, !tbaa !3
  %i.fe = add nuw i64 %.04.us.i182, 1             ; 2 uses
  %exitcond7.not.i183 = icmp eq i64 %i.fe, %3
  br i1 %exitcond7.not.i183, label %_ZN6duckdbL28SetMaskedSelectionVectorLoopIhEEvRNS_15SelectionVectorEPhmRNS_12ValidityMaskEm.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i181, !llvm.loop !911

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i175: ; preds = %bb.j, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i175.preheader.new
  %.04.i176 = phi i64 [ 0, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i175.preheader.new ], [ %i.fx, %bb.j ] ; 6 uses
  %niter753 = phi i64 [ 0, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i175.preheader.new ], [ %niter753.next.1, %bb.j ]
  %i.ff = lshr i64 %.04.i176, 6
  %i.fg = and i64 %.04.i176, 62
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %.val130, i64 %i.ff
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !23 ; 2 uses
  %i.fj = shl nuw nsw i64 1, %i.fg
  %i.fk = and i64 %i.fj, %i.fi
  %.not.i177 = icmp eq i64 %i.fk, 0
  br i1 %.not.i177, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i175.1, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i178

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i178: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i175
  %i.fl = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.04.i176
  %i.fm = load i16, ptr %i.fl, align 2, !tbaa !475
  %i.fn = sext i16 %i.fm to i32
  br label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i175.1

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i175.1: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i178, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i175
  %.sink.i179 = phi i32 [ %i.fn, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i178 ], [ %i.er, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i175 ]
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %.val129, i64 %.04.i176
  store i32 %.sink.i179, ptr %i.fo, align 4, !tbaa !3
  %i.fp = or disjoint i64 %.04.i176, 1            ; 3 uses
  %i.fq = and i64 %i.fp, 63
  %i.fr = shl nuw i64 1, %i.fq
  %i.fs = and i64 %i.fr, %i.fi
  %.not.i177.1 = icmp eq i64 %i.fs, 0
  br i1 %.not.i177.1, label %bb.j, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i178.1

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i178.1: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i175.1
  %i.ft = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.fp
  %i.fu = load i16, ptr %i.ft, align 2, !tbaa !475
  %i.fv = sext i16 %i.fu to i32
  br label %bb.j

bb.j:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i178.1, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i175.1
  %.sink.i179.1 = phi i32 [ %i.fv, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i178.1 ], [ %i.er, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i175.1 ]
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %.val129, i64 %i.fp
  store i32 %.sink.i179.1, ptr %i.fw, align 4, !tbaa !3
  %i.fx = add nuw i64 %.04.i176, 2                ; 2 uses
  %niter753.next.1 = add nuw i64 %niter753, 2     ; 2 uses
  %niter753.ncmp.1 = icmp eq i64 %niter753.next.1, %unroll_iter752
  br i1 %niter753.ncmp.1, label %_ZN6duckdbL28SetMaskedSelectionVectorLoopIhEEvRNS_15SelectionVectorEPhmRNS_12ValidityMaskEm.exit.loopexit715.unr-lcssa, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i175, !llvm.loop !912

bb.k:                                             ; preds = %bb.b
  %i.fy = icmp ugt i64 %5, 4294967295
  br i1 %i.fy, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.fz = tail call ptr @__cxa_allocate_exception(i64 16) #29 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #29
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.150, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %bb.m unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN6duckdb19ConversionExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.fz, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  invoke void @__cxa_throw(ptr nonnull %i.fz, ptr nonnull @_ZTIN6duckdb19ConversionExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
          to label %bb.bq unwind label %bb.o

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.l
  %i.ga = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  br label %common.resume.sink.split

bb.o:                                             ; preds = %bb.n, %bb.m
  %.095 = phi i1 [ false, %bb.n ], [ true, %bb.m ] ; 2 uses
  %i.gb = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.gc = load ptr, ptr %10, align 8, !tbaa !18   ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.ge = icmp eq ptr %i.gc, %i.gd
  br i1 %i.ge, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.o
  call void @_ZdlPv(ptr noundef %i.gc) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  br i1 %.095, label %common.resume.sink.split, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  br i1 %.095, label %common.resume.sink.split, label %common.resume

bb.p:                                             ; preds = %bb.k
  %.val131 = load ptr, ptr %0, align 8            ; 10 uses
  %.val131487 = ptrtoaddr ptr %.val131 to i64
  %.val132 = load ptr, ptr %4, align 8            ; 3 uses
  %.not5.i184 = icmp eq i64 %3, 0
  br i1 %.not5.i184, label %_ZN6duckdbL28SetMaskedSelectionVectorLoopIhEEvRNS_15SelectionVectorEPhmRNS_12ValidityMaskEm.exit, label %.lr.ph.i185

.lr.ph.i185:                                      ; preds = %bb.p
  %.not.i.i186 = icmp eq ptr %.val132, null
  %i.gf = trunc nuw i64 %5 to i32                 ; 3 uses
  br i1 %.not.i.i186, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i193.preheader, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i187.preheader

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i187.preheader: ; preds = %.lr.ph.i185
  %xtraiter741 = and i64 %3, 1
  %i.gg = icmp eq i64 %3, 1
  br i1 %i.gg, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i187.epil.preheader, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i187.preheader.new

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i187.preheader.new: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i187.preheader
  %unroll_iter744 = and i64 %3, -2
  br label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i187

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i193.preheader: ; preds = %.lr.ph.i185
  %min.iters.check490 = icmp ult i64 %3, 8
  %i.gh = sub i64 %i.a, %.val131487
  %diff.check488 = icmp ugt i64 %i.gh, -32
  %or.cond = select i1 %min.iters.check490, i1 true, i1 %diff.check488
  br i1 %or.cond, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i193.preheader716, label %vector.ph491

vector.ph491:                                     ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i193.preheader
  %n.vec493 = and i64 %3, -8                      ; 3 uses
  br label %vector.body494

vector.body494:                                   ; preds = %vector.body494, %vector.ph491
  %index495 = phi i64 [ 0, %vector.ph491 ], [ %index.next498, %vector.body494 ] ; 3 uses
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index495 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 16
  %wide.load496 = load <4 x i32>, ptr %i.gi, align 4, !tbaa !3
  %wide.load497 = load <4 x i32>, ptr %i.gj, align 4, !tbaa !3
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %.val131, i64 %index495 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 16
  store <4 x i32> %wide.load496, ptr %i.gk, align 4, !tbaa !3
  store <4 x i32> %wide.load497, ptr %i.gl, align 4, !tbaa !3
  %index.next498 = add nuw i64 %index495, 8       ; 2 uses
  %i.gm = icmp eq i64 %index.next498, %n.vec493
  br i1 %i.gm, label %middle.block499, label %vector.body494, !llvm.loop !913

middle.block499:                                  ; preds = %vector.body494
  %cmp.n500 = icmp eq i64 %3, %n.vec493
  br i1 %cmp.n500, label %_ZN6duckdbL28SetMaskedSelectionVectorLoopIhEEvRNS_15SelectionVectorEPhmRNS_12ValidityMaskEm.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i193.preheader716

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i193.preheader716: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i193.preheader, %middle.block499
  %.04.us.i194.ph = phi i64 [ 0, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i193.preheader ], [ %n.vec493, %middle.block499 ] ; 3 uses
  %xtraiter746 = and i64 %3, 3                    ; 2 uses
  %lcmp.mod747.not = icmp eq i64 %xtraiter746, 0
  br i1 %lcmp.mod747.not, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i193.prol.loopexit, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i193.prol

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i193.prol: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i193.preheader716, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i193.prol
  %.04.us.i194.prol = phi i64 [ %i.gq, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i193.prol ], [ %.04.us.i194.ph, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i193.preheader716 ] ; 3 uses
  %prol.iter748 = phi i64 [ %prol.iter748.next, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i193.prol ], [ 0, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i193.preheader716 ]
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.04.us.i194.prol
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !3
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %.val131, i64 %.04.us.i194.prol
  store i32 %i.go, ptr %i.gp, align 4, !tbaa !3
  %i.gq = add nuw i64 %.04.us.i194.prol, 1        ; 2 uses
  %prol.iter748.next = add i64 %prol.iter748, 1   ; 2 uses
  %prol.iter748.cmp.not = icmp eq i64 %prol.iter748.next, %xtraiter746
  br i1 %prol.iter748.cmp.not, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i193.prol.loopexit, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i193.prol, !llvm.loop !914

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i193.prol.loopexit: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i193.prol, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i193.preheader716
  %.04.us.i194.unr = phi i64 [ %.04.us.i194.ph, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i193.preheader716 ], [ %i.gq, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i193.prol ]
  %i.gr = sub i64 %.04.us.i194.ph, %3
  %i.gs = icmp ugt i64 %i.gr, -4
  br i1 %i.gs, label %_ZN6duckdbL28SetMaskedSelectionVectorLoopIhEEvRNS_15SelectionVectorEPhmRNS_12ValidityMaskEm.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i193

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i193: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i193.prol.loopexit, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i193
  %.04.us.i194 = phi i64 [ %i.hi, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i193 ], [ %.04.us.i194.unr, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i193.prol.loopexit ] ; 6 uses
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.04.us.i194
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !3
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %.val131, i64 %.04.us.i194
  store i32 %i.gu, ptr %i.gv, align 4, !tbaa !3
  %i.gw = add nuw i64 %.04.us.i194, 1             ; 2 uses
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.gw
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !3
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %.val131, i64 %i.gw
  store i32 %i.gy, ptr %i.gz, align 4, !tbaa !3
  %i.ha = add nuw i64 %.04.us.i194, 2             ; 2 uses
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ha
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !3
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %.val131, i64 %i.ha
  store i32 %i.hc, ptr %i.hd, align 4, !tbaa !3
  %i.he = add nuw i64 %.04.us.i194, 3             ; 2 uses
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.he
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !3
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %.val131, i64 %i.he
  store i32 %i.hg, ptr %i.hh, align 4, !tbaa !3
  %i.hi = add nuw i64 %.04.us.i194, 4             ; 2 uses
  %exitcond7.not.i195.3 = icmp eq i64 %i.hi, %3
  br i1 %exitcond7.not.i195.3, label %_ZN6duckdbL28SetMaskedSelectionVectorLoopIhEEvRNS_15SelectionVectorEPhmRNS_12ValidityMaskEm.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i193, !llvm.loop !915

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i187: ; preds = %bb.q, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i187.preheader.new
  %.04.i188 = phi i64 [ 0, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i187.preheader.new ], [ %i.hz, %bb.q ] ; 6 uses
  %niter745 = phi i64 [ 0, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i187.preheader.new ], [ %niter745.next.1, %bb.q ]
  %i.hj = lshr i64 %.04.i188, 6
  %i.hk = and i64 %.04.i188, 62
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %.val132, i64 %i.hj
  %i.hm = load i64, ptr %i.hl, align 8, !tbaa !23 ; 2 uses
  %i.hn = shl nuw nsw i64 1, %i.hk
  %i.ho = and i64 %i.hn, %i.hm
  %.not.i189 = icmp eq i64 %i.ho, 0
  br i1 %.not.i189, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i187.1, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i190

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i190: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i187
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.04.i188
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !3
  br label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i187.1

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i187.1: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i190, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i187
  %.sink.i191 = phi i32 [ %i.hq, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i190 ], [ %i.gf, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i187 ]
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %.val131, i64 %.04.i188
  store i32 %.sink.i191, ptr %i.hr, align 4, !tbaa !3
  %i.hs = or disjoint i64 %.04.i188, 1            ; 3 uses
  %i.ht = and i64 %i.hs, 63
  %i.hu = shl nuw i64 1, %i.ht
  %i.hv = and i64 %i.hu, %i.hm
  %.not.i189.1 = icmp eq i64 %i.hv, 0
  br i1 %.not.i189.1, label %bb.q, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i190.1

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i190.1: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i187.1
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.hs
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !3
  br label %bb.q

bb.q:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i190.1, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i187.1
  %.sink.i191.1 = phi i32 [ %i.hx, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i190.1 ], [ %i.gf, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i187.1 ]
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %.val131, i64 %i.hs
  store i32 %.sink.i191.1, ptr %i.hy, align 4, !tbaa !3
  %i.hz = add nuw i64 %.04.i188, 2                ; 2 uses
  %niter745.next.1 = add nuw i64 %niter745, 2     ; 2 uses
  %niter745.ncmp.1 = icmp eq i64 %niter745.next.1, %unroll_iter744
  br i1 %niter745.ncmp.1, label %_ZN6duckdbL28SetMaskedSelectionVectorLoopIhEEvRNS_15SelectionVectorEPhmRNS_12ValidityMaskEm.exit.loopexit718.unr-lcssa, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i187, !llvm.loop !916

bb.r:                                             ; preds = %bb.b
  %.val133 = load ptr, ptr %0, align 8            ; 10 uses
  %.val133472 = ptrtoaddr ptr %.val133 to i64
  %.val134 = load ptr, ptr %4, align 8            ; 3 uses
  %.not5.i196 = icmp eq i64 %3, 0
  br i1 %.not5.i196, label %_ZN6duckdbL28SetMaskedSelectionVectorLoopIhEEvRNS_15SelectionVectorEPhmRNS_12ValidityMaskEm.exit, label %.lr.ph.i197

.lr.ph.i197:                                      ; preds = %bb.r
  %.not.i.i198 = icmp eq ptr %.val134, null
  %i.ia = trunc i64 %5 to i32                     ; 3 uses
  br i1 %.not.i.i198, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i205.preheader, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i199.preheader

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i199.preheader: ; preds = %.lr.ph.i197
  %xtraiter734 = and i64 %3, 1
  %i.ib = icmp eq i64 %3, 1
  br i1 %i.ib, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i199.epil.preheader, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i199.preheader.new

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i199.preheader.new: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i199.preheader
  %unroll_iter737 = and i64 %3, -2
  br label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i199

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i205.preheader: ; preds = %.lr.ph.i197
  %min.iters.check474 = icmp ult i64 %3, 8
  %i.ic = sub i64 %i.a, %.val133472
  %diff.check = icmp ugt i64 %i.ic, -32
  %or.cond684 = select i1 %min.iters.check474, i1 true, i1 %diff.check
  br i1 %or.cond684, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i205.preheader719, label %vector.ph475

vector.ph475:                                     ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i205.preheader
  %n.vec477 = and i64 %3, -8                      ; 3 uses
  br label %vector.body478

vector.body478:                                   ; preds = %vector.body478, %vector.ph475
  %index479 = phi i64 [ 0, %vector.ph475 ], [ %index.next482, %vector.body478 ] ; 3 uses
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index479 ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 16
  %wide.load480 = load <4 x i32>, ptr %i.id, align 4, !tbaa !3
  %wide.load481 = load <4 x i32>, ptr %i.ie, align 4, !tbaa !3
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %.val133, i64 %index479 ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 16
  store <4 x i32> %wide.load480, ptr %i.if, align 4, !tbaa !3
  store <4 x i32> %wide.load481, ptr %i.ig, align 4, !tbaa !3
  %index.next482 = add nuw i64 %index479, 8       ; 2 uses
  %i.ih = icmp eq i64 %index.next482, %n.vec477
  br i1 %i.ih, label %middle.block483, label %vector.body478, !llvm.loop !917

middle.block483:                                  ; preds = %vector.body478
  %cmp.n484 = icmp eq i64 %3, %n.vec477
  br i1 %cmp.n484, label %_ZN6duckdbL28SetMaskedSelectionVectorLoopIhEEvRNS_15SelectionVectorEPhmRNS_12ValidityMaskEm.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i205.preheader719

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i205.preheader719: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i205.preheader, %middle.block483
  %.04.us.i206.ph = phi i64 [ 0, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i205.preheader ], [ %n.vec477, %middle.block483 ] ; 3 uses
  %xtraiter739 = and i64 %3, 3                    ; 2 uses
  %lcmp.mod740.not = icmp eq i64 %xtraiter739, 0
  br i1 %lcmp.mod740.not, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i205.prol.loopexit, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i205.prol

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i205.prol: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i205.preheader719, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i205.prol
  %.04.us.i206.prol = phi i64 [ %i.il, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i205.prol ], [ %.04.us.i206.ph, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i205.preheader719 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i205.prol ], [ 0, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i205.preheader719 ]
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.04.us.i206.prol
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !3
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %.val133, i64 %.04.us.i206.prol
  store i32 %i.ij, ptr %i.ik, align 4, !tbaa !3
  %i.il = add nuw i64 %.04.us.i206.prol, 1        ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter739
  br i1 %prol.iter.cmp.not, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i205.prol.loopexit, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i205.prol, !llvm.loop !918

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i205.prol.loopexit: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i205.prol, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i205.preheader719
  %.04.us.i206.unr = phi i64 [ %.04.us.i206.ph, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i205.preheader719 ], [ %i.il, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i205.prol ]
  %i.im = sub i64 %.04.us.i206.ph, %3
  %i.in = icmp ugt i64 %i.im, -4
  br i1 %i.in, label %_ZN6duckdbL28SetMaskedSelectionVectorLoopIhEEvRNS_15SelectionVectorEPhmRNS_12ValidityMaskEm.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i205

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i205: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i205.prol.loopexit, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i205
  %.04.us.i206 = phi i64 [ %i.jd, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i205 ], [ %.04.us.i206.unr, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i205.prol.loopexit ] ; 6 uses
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.04.us.i206
  %i.ip = load i32, ptr %i.io, align 4, !tbaa !3
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %.val133, i64 %.04.us.i206
  store i32 %i.ip, ptr %i.iq, align 4, !tbaa !3
  %i.ir = add nuw i64 %.04.us.i206, 1             ; 2 uses
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ir
  %i.it = load i32, ptr %i.is, align 4, !tbaa !3
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %.val133, i64 %i.ir
  store i32 %i.it, ptr %i.iu, align 4, !tbaa !3
  %i.iv = add nuw i64 %.04.us.i206, 2             ; 2 uses
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.iv
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !3
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %.val133, i64 %i.iv
  store i32 %i.ix, ptr %i.iy, align 4, !tbaa !3
  %i.iz = add nuw i64 %.04.us.i206, 3             ; 2 uses
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.iz
  %i.jb = load i32, ptr %i.ja, align 4, !tbaa !3
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %.val133, i64 %i.iz
  store i32 %i.jb, ptr %i.jc, align 4, !tbaa !3
  %i.jd = add nuw i64 %.04.us.i206, 4             ; 2 uses
  %exitcond7.not.i207.3 = icmp eq i64 %i.jd, %3
  br i1 %exitcond7.not.i207.3, label %_ZN6duckdbL28SetMaskedSelectionVectorLoopIhEEvRNS_15SelectionVectorEPhmRNS_12ValidityMaskEm.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i205, !llvm.loop !919

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i199: ; preds = %bb.s, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i199.preheader.new
  %.04.i200 = phi i64 [ 0, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i199.preheader.new ], [ %i.ju, %bb.s ] ; 6 uses
  %niter738 = phi i64 [ 0, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i199.preheader.new ], [ %niter738.next.1, %bb.s ]
  %i.je = lshr i64 %.04.i200, 6
  %i.jf = and i64 %.04.i200, 62
  %i.jg = getelementptr inbounds nuw [8 x i8], ptr %.val134, i64 %i.je
  %i.jh = load i64, ptr %i.jg, align 8, !tbaa !23 ; 2 uses
  %i.ji = shl nuw nsw i64 1, %i.jf
  %i.jj = and i64 %i.ji, %i.jh
  %.not.i201 = icmp eq i64 %i.jj, 0
  br i1 %.not.i201, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i199.1, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i202

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i202: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i199
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.04.i200
  %i.jl = load i32, ptr %i.jk, align 4, !tbaa !3
  br label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i199.1

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i199.1: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i202, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i199
  %.sink.i203 = phi i32 [ %i.jl, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i202 ], [ %i.ia, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i199 ]
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %.val133, i64 %.04.i200
  store i32 %.sink.i203, ptr %i.jm, align 4, !tbaa !3
  %i.jn = or disjoint i64 %.04.i200, 1            ; 3 uses
  %i.jo = and i64 %i.jn, 63
  %i.jp = shl nuw i64 1, %i.jo
  %i.jq = and i64 %i.jp, %i.jh
  %.not.i201.1 = icmp eq i64 %i.jq, 0
  br i1 %.not.i201.1, label %bb.s, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i202.1

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i202.1: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i199.1
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.jn
  %i.js = load i32, ptr %i.jr, align 4, !tbaa !3
  br label %bb.s

bb.s:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i202.1, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i199.1
  %.sink.i203.1 = phi i32 [ %i.js, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i202.1 ], [ %i.ia, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i199.1 ]
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %.val133, i64 %i.jn
  store i32 %.sink.i203.1, ptr %i.jt, align 4, !tbaa !3
  %i.ju = add nuw i64 %.04.i200, 2                ; 2 uses
  %niter738.next.1 = add nuw i64 %niter738, 2     ; 2 uses
  %niter738.ncmp.1 = icmp eq i64 %niter738.next.1, %unroll_iter737
  br i1 %niter738.ncmp.1, label %_ZN6duckdbL28SetMaskedSelectionVectorLoopIhEEvRNS_15SelectionVectorEPhmRNS_12ValidityMaskEm.exit.loopexit721.unr-lcssa, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i199, !llvm.loop !920

bb.t:                                             ; preds = %bb.b
  %i.jv = icmp ugt i64 %5, 4294967295
  br i1 %i.jv, label %bb.u, label %bb.y

bb.u:                                             ; preds = %bb.t
  %i.jw = tail call ptr @__cxa_allocate_exception(i64 16) #29 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #29
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @.str.150, ptr noundef nonnull align 1 dereferenceable(1) %13)
          to label %bb.v unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210.thread

bb.v:                                             ; preds = %bb.u
  invoke void @_ZN6duckdb19ConversionExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.jw, ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %bb.w unwind label %bb.x

bb.w:                                             ; preds = %bb.v
  invoke void @__cxa_throw(ptr nonnull %i.jw, ptr nonnull @_ZTIN6duckdb19ConversionExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
          to label %bb.bq unwind label %bb.x

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210.thread: ; preds = %bb.u
  %i.jx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #29
  br label %common.resume.sink.split

bb.x:                                             ; preds = %bb.w, %bb.v
  %.093 = phi i1 [ false, %bb.w ], [ true, %bb.v ] ; 2 uses
  %i.jy = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.jz = load ptr, ptr %12, align 8, !tbaa !18   ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.kb = icmp eq ptr %i.jz, %i.ka
  br i1 %i.kb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i208

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i208: ; preds = %bb.x
  call void @_ZdlPv(ptr noundef %i.jz) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #29
  br i1 %.093, label %common.resume.sink.split, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210: ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #29
  br i1 %.093, label %common.resume.sink.split, label %common.resume

bb.y:                                             ; preds = %bb.t
  %.val135 = load ptr, ptr %0, align 8            ; 5 uses
  %.val136 = load ptr, ptr %4, align 8            ; 3 uses
  %.not5.i211 = icmp eq i64 %3, 0
  br i1 %.not5.i211, label %_ZN6duckdbL28SetMaskedSelectionVectorLoopIhEEvRNS_15SelectionVectorEPhmRNS_12ValidityMaskEm.exit, label %.lr.ph.i212

.lr.ph.i212:                                      ; preds = %bb.y
  %.not.i.i213 = icmp eq ptr %.val136, null
  br i1 %.not.i.i213, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i220.preheader, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i214.preheader

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i214.preheader: ; preds = %.lr.ph.i212
  %xtraiter729 = and i64 %3, 1
  %i.kc = icmp eq i64 %3, 1
  br i1 %i.kc, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i214.epil.preheader, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i214.preheader.new

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i214.preheader.new: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i214.preheader
  %unroll_iter732 = and i64 %3, -2
  br label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i214

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i220.preheader: ; preds = %.lr.ph.i212
  %min.iters.check460 = icmp ult i64 %3, 4
  br i1 %min.iters.check460, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i220.preheader722, label %vector.ph461

vector.ph461:                                     ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i220.preheader
  %n.vec463 = and i64 %3, -4                      ; 3 uses
  br label %vector.body464

vector.body464:                                   ; preds = %vector.body464, %vector.ph461
  %index465 = phi i64 [ 0, %vector.ph461 ], [ %index.next468, %vector.body464 ] ; 3 uses
  %i.kd = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index465 ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 16
  %wide.load466 = load <2 x i64>, ptr %i.kd, align 8, !tbaa !23
  %wide.load467 = load <2 x i64>, ptr %i.ke, align 8, !tbaa !23
  %i.kf = trunc <2 x i64> %wide.load466 to <2 x i32>
  %i.kg = trunc <2 x i64> %wide.load467 to <2 x i32>
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %.val135, i64 %index465 ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 8
  store <2 x i32> %i.kf, ptr %i.kh, align 4, !tbaa !3
  store <2 x i32> %i.kg, ptr %i.ki, align 4, !tbaa !3
  %index.next468 = add nuw i64 %index465, 4       ; 2 uses
  %i.kj = icmp eq i64 %index.next468, %n.vec463
  br i1 %i.kj, label %middle.block469, label %vector.body464, !llvm.loop !921

middle.block469:                                  ; preds = %vector.body464
  %cmp.n470 = icmp eq i64 %3, %n.vec463
  br i1 %cmp.n470, label %_ZN6duckdbL28SetMaskedSelectionVectorLoopIhEEvRNS_15SelectionVectorEPhmRNS_12ValidityMaskEm.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i220.preheader722

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i220.preheader722: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i220.preheader, %middle.block469
  %.04.us.i221.ph = phi i64 [ 0, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i220.preheader ], [ %n.vec463, %middle.block469 ]
  br label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i220

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i220: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i220.preheader722, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i220
  %.04.us.i221 = phi i64 [ %i.ko, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i220 ], [ %.04.us.i221.ph, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i220.preheader722 ] ; 3 uses
  %i.kk = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.04.us.i221
  %i.kl = load i64, ptr %i.kk, align 8, !tbaa !23
  %i.km = trunc i64 %i.kl to i32
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr %.val135, i64 %.04.us.i221
  store i32 %i.km, ptr %i.kn, align 4, !tbaa !3
  %i.ko = add nuw i64 %.04.us.i221, 1             ; 2 uses
  %exitcond7.not.i222 = icmp eq i64 %i.ko, %3
  br i1 %exitcond7.not.i222, label %_ZN6duckdbL28SetMaskedSelectionVectorLoopIhEEvRNS_15SelectionVectorEPhmRNS_12ValidityMaskEm.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i220, !llvm.loop !922

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i214: ; preds = %bb.z, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i214.preheader.new
  %.04.i215 = phi i64 [ 0, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i214.preheader.new ], [ %i.lf, %bb.z ] ; 6 uses
  %niter733 = phi i64 [ 0, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i214.preheader.new ], [ %niter733.next.1, %bb.z ]
  %i.kp = lshr i64 %.04.i215, 6
  %i.kq = and i64 %.04.i215, 62
  %i.kr = getelementptr inbounds nuw [8 x i8], ptr %.val136, i64 %i.kp
  %i.ks = load i64, ptr %i.kr, align 8, !tbaa !23 ; 2 uses
  %i.kt = shl nuw nsw i64 1, %i.kq
  %i.ku = and i64 %i.kt, %i.ks
  %.not.i216 = icmp eq i64 %i.ku, 0
  br i1 %.not.i216, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i214.1, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i217

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i217: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i214
  %i.kv = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.04.i215
  %i.kw = load i64, ptr %i.kv, align 8, !tbaa !23
  br label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i214.1

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i214.1: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i217, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i214
  %.sink.in.i = phi i64 [ %i.kw, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i217 ], [ %5, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i214 ]
  %.sink.i218 = trunc i64 %.sink.in.i to i32
  %i.kx = getelementptr inbounds nuw [4 x i8], ptr %.val135, i64 %.04.i215
  store i32 %.sink.i218, ptr %i.kx, align 4, !tbaa !3
  %i.ky = or disjoint i64 %.04.i215, 1            ; 3 uses
  %i.kz = and i64 %i.ky, 63
  %i.la = shl nuw i64 1, %i.kz
  %i.lb = and i64 %i.la, %i.ks
  %.not.i216.1 = icmp eq i64 %i.lb, 0
  br i1 %.not.i216.1, label %bb.z, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i217.1

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i217.1: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i214.1
  %i.lc = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ky
  %i.ld = load i64, ptr %i.lc, align 8, !tbaa !23
  br label %bb.z

bb.z:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i217.1, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i214.1
  %.sink.in.i.1 = phi i64 [ %i.ld, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i217.1 ], [ %5, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i214.1 ]
  %.sink.i218.1 = trunc i64 %.sink.in.i.1 to i32
  %i.le = getelementptr inbounds nuw [4 x i8], ptr %.val135, i64 %i.ky
  store i32 %.sink.i218.1, ptr %i.le, align 4, !tbaa !3
  %i.lf = add nuw i64 %.04.i215, 2                ; 2 uses
  %niter733.next.1 = add nuw i64 %niter733, 2     ; 2 uses
  %niter733.ncmp.1 = icmp eq i64 %niter733.next.1, %unroll_iter732
  br i1 %niter733.ncmp.1, label %_ZN6duckdbL28SetMaskedSelectionVectorLoopIhEEvRNS_15SelectionVectorEPhmRNS_12ValidityMaskEm.exit.loopexit724.unr-lcssa, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i214, !llvm.loop !923

bb.aa:                                            ; preds = %bb.b
  %i.lg = icmp ugt i64 %5, 4294967295
  br i1 %i.lg, label %bb.ab, label %bb.af

bb.ab:                                            ; preds = %bb.aa
  %i.lh = tail call ptr @__cxa_allocate_exception(i64 16) #29 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #29
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @.str.150, ptr noundef nonnull align 1 dereferenceable(1) %15)
          to label %bb.ac unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit225.thread

bb.ac:                                            ; preds = %bb.ab
  invoke void @_ZN6duckdb19ConversionExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.lh, ptr noundef nonnull align 8 dereferenceable(32) %14)
          to label %bb.ad unwind label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  invoke void @__cxa_throw(ptr nonnull %i.lh, ptr nonnull @_ZTIN6duckdb19ConversionExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
          to label %bb.bq unwind label %bb.ae

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit225.thread: ; preds = %bb.ab
  %i.li = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #29
  br label %common.resume.sink.split

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.091 = phi i1 [ false, %bb.ad ], [ true, %bb.ac ] ; 2 uses
  %i.lj = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.lk = load ptr, ptr %14, align 8, !tbaa !18   ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.lm = icmp eq ptr %i.lk, %i.ll
  br i1 %i.lm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit225, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i223

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i223: ; preds = %bb.ae
  call void @_ZdlPv(ptr noundef %i.lk) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #29
  br i1 %.091, label %common.resume.sink.split, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit225: ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #29
  br i1 %.091, label %common.resume.sink.split, label %common.resume

bb.af:                                            ; preds = %bb.aa
  %.val137 = load ptr, ptr %0, align 8            ; 5 uses
  %.val138 = load ptr, ptr %4, align 8            ; 3 uses
  %.not5.i226 = icmp eq i64 %3, 0
  br i1 %.not5.i226, label %_ZN6duckdbL28SetMaskedSelectionVectorLoopIhEEvRNS_15SelectionVectorEPhmRNS_12ValidityMaskEm.exit, label %.lr.ph.i227

.lr.ph.i227:                                      ; preds = %bb.af
  %.not.i.i228 = icmp eq ptr %.val138, null
  br i1 %.not.i.i228, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i236.preheader, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i229.preheader

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i229.preheader: ; preds = %.lr.ph.i227
  %xtraiter = and i64 %3, 1
  %i.ln = icmp eq i64 %3, 1
  br i1 %i.ln, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i229.epil.preheader, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i229.preheader.new

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i229.preheader.new: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i229.preheader
  %unroll_iter = and i64 %3, -2
  br label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i229

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i236.preheader: ; preds = %.lr.ph.i227
  %min.iters.check = icmp ult i64 %3, 4
  br i1 %min.iters.check, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i236.preheader725, label %vector.ph

vector.ph:                                        ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i236.preheader
  %n.vec = and i64 %3, -4                         ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.lo = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index ; 2 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 16
  %wide.load = load <2 x i64>, ptr %i.lo, align 8, !tbaa !23
  %wide.load458 = load <2 x i64>, ptr %i.lp, align 8, !tbaa !23
  %i.lq = trunc <2 x i64> %wide.load to <2 x i32>
  %i.lr = trunc <2 x i64> %wide.load458 to <2 x i32>
  %i.ls = getelementptr inbounds nuw [4 x i8], ptr %.val137, i64 %index ; 2 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 8
  store <2 x i32> %i.lq, ptr %i.ls, align 4, !tbaa !3
  store <2 x i32> %i.lr, ptr %i.lt, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.lu = icmp eq i64 %index.next, %n.vec
  br i1 %i.lu, label %middle.block, label %vector.body, !llvm.loop !924

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec
  br i1 %cmp.n, label %_ZN6duckdbL28SetMaskedSelectionVectorLoopIhEEvRNS_15SelectionVectorEPhmRNS_12ValidityMaskEm.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i236.preheader725

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i236.preheader725: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i236.preheader, %middle.block
  %.04.us.i237.ph = phi i64 [ 0, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i236.preheader ], [ %n.vec, %middle.block ]
  br label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i236

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i236: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i236.preheader725, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i236
  %.04.us.i237 = phi i64 [ %i.lz, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i236 ], [ %.04.us.i237.ph, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i236.preheader725 ] ; 3 uses
  %i.lv = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.04.us.i237
  %i.lw = load i64, ptr %i.lv, align 8, !tbaa !23
  %i.lx = trunc i64 %i.lw to i32
  %i.ly = getelementptr inbounds nuw [4 x i8], ptr %.val137, i64 %.04.us.i237
  store i32 %i.lx, ptr %i.ly, align 4, !tbaa !3
  %i.lz = add nuw i64 %.04.us.i237, 1             ; 2 uses
  %exitcond7.not.i238 = icmp eq i64 %i.lz, %3
  br i1 %exitcond7.not.i238, label %_ZN6duckdbL28SetMaskedSelectionVectorLoopIhEEvRNS_15SelectionVectorEPhmRNS_12ValidityMaskEm.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.i236, !llvm.loop !925

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i229: ; preds = %bb.ag, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i229.preheader.new
  %.04.i230 = phi i64 [ 0, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i229.preheader.new ], [ %i.mq, %bb.ag ] ; 6 uses
  %niter = phi i64 [ 0, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i229.preheader.new ], [ %niter.next.1, %bb.ag ]
  %i.ma = lshr i64 %.04.i230, 6
  %i.mb = and i64 %.04.i230, 62
  %i.mc = getelementptr inbounds nuw [8 x i8], ptr %.val138, i64 %i.ma
  %i.md = load i64, ptr %i.mc, align 8, !tbaa !23 ; 2 uses
  %i.me = shl nuw nsw i64 1, %i.mb
  %i.mf = and i64 %i.me, %i.md
  %.not.i231 = icmp eq i64 %i.mf, 0
  br i1 %.not.i231, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i229.1, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i232

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i232: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i229
  %i.mg = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.04.i230
  %i.mh = load i64, ptr %i.mg, align 8, !tbaa !23
  br label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i229.1

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i229.1: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i232, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i229
  %.sink.in.i233 = phi i64 [ %i.mh, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i232 ], [ %5, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i229 ]
  %.sink.i234 = trunc i64 %.sink.in.i233 to i32
  %i.mi = getelementptr inbounds nuw [4 x i8], ptr %.val137, i64 %.04.i230
  store i32 %.sink.i234, ptr %i.mi, align 4, !tbaa !3
  %i.mj = or disjoint i64 %.04.i230, 1            ; 3 uses
  %i.mk = and i64 %i.mj, 63
  %i.ml = shl nuw i64 1, %i.mk
  %i.mm = and i64 %i.ml, %i.md
  %.not.i231.1 = icmp eq i64 %i.mm, 0
  br i1 %.not.i231.1, label %bb.ag, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i232.1

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i232.1: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i229.1
  %i.mn = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.mj
  %i.mo = load i64, ptr %i.mn, align 8, !tbaa !23
  br label %bb.ag

bb.ag:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i232.1, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i229.1
  %.sink.in.i233.1 = phi i64 [ %i.mo, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i232.1 ], [ %5, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i229.1 ]
  %.sink.i234.1 = trunc i64 %.sink.in.i233.1 to i32
  %i.mp = getelementptr inbounds nuw [4 x i8], ptr %.val137, i64 %i.mj
  store i32 %.sink.i234.1, ptr %i.mp, align 4, !tbaa !3
  %i.mq = add nuw i64 %.04.i230, 2                ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN6duckdbL28SetMaskedSelectionVectorLoopIhEEvRNS_15SelectionVectorEPhmRNS_12ValidityMaskEm.exit.loopexit727.unr-lcssa, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i229, !llvm.loop !926

bb.ah:                                            ; preds = %bb.b
  %i.mr = tail call ptr @__cxa_allocate_exception(i64 16) #29 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #29
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull @.str.151, ptr noundef nonnull align 1 dereferenceable(1) %17)
          to label %bb.ai unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244.thread

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #29
  invoke void @_ZNK6duckdb11LogicalType8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %18, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.aj unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241.thread

bb.aj:                                            ; preds = %bb.ai
  invoke void @_ZN6duckdb23NotImplementedExceptionC2IJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERKS7_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.mr, ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(32) %18)
          to label %bb.ak unwind label %bb.al

bb.ak:                                            ; preds = %bb.aj
  invoke void @__cxa_throw(ptr nonnull %i.mr, ptr nonnull @_ZTIN6duckdb23NotImplementedExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
          to label %bb.bq unwind label %bb.al

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244.thread: ; preds = %bb.ah
  %i.ms = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.088 = phi i1 [ false, %bb.ak ], [ true, %bb.aj ] ; 2 uses
  %i.mt = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.mu = load ptr, ptr %18, align 8, !tbaa !18   ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.mw = icmp eq ptr %i.mu, %i.mv
  br i1 %i.mw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i239

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i239: ; preds = %bb.al
  call void @_ZdlPv(ptr noundef %i.mu) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241: ; preds = %bb.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i239
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #29
  %i.mx = load ptr, ptr %16, align 8, !tbaa !18   ; 2 uses
  %i.my = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.mz = icmp eq ptr %i.mx, %i.my
  br i1 %i.mz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i242

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241.thread: ; preds = %bb.ai
  %i.na = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #29
  %i.nb = load ptr, ptr %16, align 8, !tbaa !18   ; 2 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.nd = icmp eq ptr %i.nb, %i.nc
  br i1 %i.nd, label %.sink.split, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i242.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i242.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241.thread
  call void @_ZdlPv(ptr noundef %i.nb) #31
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i242: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241
  call void @_ZdlPv(ptr noundef %i.mx) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #29
  br i1 %.088, label %common.resume.sink.split, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #29
  br i1 %.088, label %common.resume.sink.split, label %common.resume

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i242.thread
  %.pn120.pn303.ph = phi { ptr, i32 } [ %i.na, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i242.thread ], [ %i.ms, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244.thread ], [ %i.na, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #29
  br label %common.resume.sink.split

bb.am:                                            ; preds = %bb.a
  switch i8 %i.b, label %bb.bl [
    i8 28, label %bb.an
    i8 11, label %bb.ao
    i8 29, label %bb.ap
    i8 12, label %bb.aq
    i8 30, label %bb.ar
    i8 13, label %bb.as
    i8 31, label %bb.at
    i8 14, label %bb.bc
  ]

bb.an:                                            ; preds = %bb.am
  %.val139 = load ptr, ptr %0, align 8            ; 8 uses
  %.not.i245 = icmp eq i64 %3, 0
  br i1 %.not.i245, label %_ZN6duckdbL28SetMaskedSelectionVectorLoopIhEEvRNS_15SelectionVectorEPhmRNS_12ValidityMaskEm.exit, label %.lr.ph.i246.preheader

.lr.ph.i246.preheader:                            ; preds = %bb.an
  %min.iters.check672 = icmp ult i64 %3, 12
  br i1 %min.iters.check672, label %.lr.ph.i246.preheader687, label %vector.memcheck665

vector.memcheck665:                               ; preds = %.lr.ph.i246.preheader
  %i.ne = shl i64 %3, 2
  %scevgep666 = getelementptr i8, ptr %.val139, i64 %i.ne
  %scevgep667 = getelementptr i8, ptr %1, i64 %3
  %bound0668 = icmp ult ptr %.val139, %scevgep667
  %bound1669 = icmp ult ptr %1, %scevgep666
  %found.conflict670 = and i1 %bound0668, %bound1669
  br i1 %found.conflict670, label %.lr.ph.i246.preheader687, label %vector.ph673

vector.ph673:                                     ; preds = %vector.memcheck665
  %n.vec675 = and i64 %3, -8                      ; 3 uses
  br label %vector.body676

vector.body676:                                   ; preds = %vector.body676, %vector.ph673
  %index677 = phi i64 [ 0, %vector.ph673 ], [ %index.next680, %vector.body676 ] ; 3 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %1, i64 %index677 ; 2 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 4
  %wide.load678 = load <4 x i8>, ptr %i.nf, align 1, !tbaa !24, !alias.scope !927
  %wide.load679 = load <4 x i8>, ptr %i.ng, align 1, !tbaa !24, !alias.scope !927
  %i.nh = zext <4 x i8> %wide.load678 to <4 x i32>
  %i.ni = zext <4 x i8> %wide.load679 to <4 x i32>
  %i.nj = getelementptr inbounds nuw [4 x i8], ptr %.val139, i64 %index677 ; 2 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 16
  store <4 x i32> %i.nh, ptr %i.nj, align 4, !tbaa !3, !alias.scope !930, !noalias !927
  store <4 x i32> %i.ni, ptr %i.nk, align 4, !tbaa !3, !alias.scope !930, !noalias !927
  %index.next680 = add nuw i64 %index677, 8       ; 2 uses
  %i.nl = icmp eq i64 %index.next680, %n.vec675
  br i1 %i.nl, label %middle.block681, label %vector.body676, !llvm.loop !932

middle.block681:                                  ; preds = %vector.body676
  %cmp.n682 = icmp eq i64 %3, %n.vec675
  br i1 %cmp.n682, label %_ZN6duckdbL28SetMaskedSelectionVectorLoopIhEEvRNS_15SelectionVectorEPhmRNS_12ValidityMaskEm.exit, label %.lr.ph.i246.preheader687

.lr.ph.i246.preheader687:                         ; preds = %vector.memcheck665, %.lr.ph.i246.preheader, %middle.block681
  %.01.i.ph = phi i64 [ 0, %vector.memcheck665 ], [ 0, %.lr.ph.i246.preheader ], [ %n.vec675, %middle.block681 ] ; 3 uses
  %xtraiter784 = and i64 %3, 3                    ; 2 uses
  %lcmp.mod785.not = icmp eq i64 %xtraiter784, 0
  br i1 %lcmp.mod785.not, label %.lr.ph.i246.prol.loopexit, label %.lr.ph.i246.prol

.lr.ph.i246.prol:                                 ; preds = %.lr.ph.i246.preheader687, %.lr.ph.i246.prol
  %.01.i.prol = phi i64 [ %i.nq, %.lr.ph.i246.prol ], [ %.01.i.ph, %.lr.ph.i246.preheader687 ] ; 3 uses
  %prol.iter786 = phi i64 [ %prol.iter786.next, %.lr.ph.i246.prol ], [ 0, %.lr.ph.i246.preheader687 ]
  %i.nm = getelementptr inbounds nuw i8, ptr %1, i64 %.01.i.prol
  %i.nn = load i8, ptr %i.nm, align 1, !tbaa !24
  %i.no = zext i8 %i.nn to i32
  %i.np = getelementptr inbounds nuw [4 x i8], ptr %.val139, i64 %.01.i.prol
  store i32 %i.no, ptr %i.np, align 4, !tbaa !3
  %i.nq = add nuw i64 %.01.i.prol, 1              ; 2 uses
  %prol.iter786.next = add i64 %prol.iter786, 1   ; 2 uses
  %prol.iter786.cmp.not = icmp eq i64 %prol.iter786.next, %xtraiter784
  br i1 %prol.iter786.cmp.not, label %.lr.ph.i246.prol.loopexit, label %.lr.ph.i246.prol, !llvm.loop !933

.lr.ph.i246.prol.loopexit:                        ; preds = %.lr.ph.i246.prol, %.lr.ph.i246.preheader687
  %.01.i.unr = phi i64 [ %.01.i.ph, %.lr.ph.i246.preheader687 ], [ %i.nq, %.lr.ph.i246.prol ]
  %i.nr = sub i64 %.01.i.ph, %3
  %i.ns = icmp ugt i64 %i.nr, -4
  br i1 %i.ns, label %_ZN6duckdbL28SetMaskedSelectionVectorLoopIhEEvRNS_15SelectionVectorEPhmRNS_12ValidityMaskEm.exit, label %.lr.ph.i246

.lr.ph.i246:                                      ; preds = %.lr.ph.i246.prol.loopexit, %.lr.ph.i246
  %.01.i = phi i64 [ %i.om, %.lr.ph.i246 ], [ %.01.i.unr, %.lr.ph.i246.prol.loopexit ] ; 6 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %1, i64 %.01.i
  %i.nu = load i8, ptr %i.nt, align 1, !tbaa !24
  %i.nv = zext i8 %i.nu to i32
  %i.nw = getelementptr inbounds nuw [4 x i8], ptr %.val139, i64 %.01.i
  store i32 %i.nv, ptr %i.nw, align 4, !tbaa !3
  %i.nx = add nuw i64 %.01.i, 1                   ; 2 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %1, i64 %i.nx
  %i.nz = load i8, ptr %i.ny, align 1, !tbaa !24
  %i.oa = zext i8 %i.nz to i32
  %i.ob = getelementptr inbounds nuw [4 x i8], ptr %.val139, i64 %i.nx
  store i32 %i.oa, ptr %i.ob, align 4, !tbaa !3
  %i.oc = add nuw i64 %.01.i, 2                   ; 2 uses
  %i.od = getelementptr inbounds nuw i8, ptr %1, i64 %i.oc
  %i.oe = load i8, ptr %i.od, align 1, !tbaa !24
  %i.of = zext i8 %i.oe to i32
  %i.og = getelementptr inbounds nuw [4 x i8], ptr %.val139, i64 %i.oc
  store i32 %i.of, ptr %i.og, align 4, !tbaa !3
  %i.oh = add nuw i64 %.01.i, 3                   ; 2 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %1, i64 %i.oh
  %i.oj = load i8, ptr %i.oi, align 1, !tbaa !24
  %i.ok = zext i8 %i.oj to i32
  %i.ol = getelementptr inbounds nuw [4 x i8], ptr %.val139, i64 %i.oh
  store i32 %i.ok, ptr %i.ol, align 4, !tbaa !3
  %i.om = add nuw i64 %.01.i, 4                   ; 2 uses
  %exitcond.not.i247.3 = icmp eq i64 %i.om, %3
  br i1 %exitcond.not.i247.3, label %_ZN6duckdbL28SetMaskedSelectionVectorLoopIhEEvRNS_15SelectionVectorEPhmRNS_12ValidityMaskEm.exit, label %.lr.ph.i246, !llvm.loop !934

bb.ao:                                            ; preds = %bb.am
  %.val140 = load ptr, ptr %0, align 8            ; 8 uses
  %.not.i248 = icmp eq i64 %3, 0
  br i1 %.not.i248, label %_ZN6duckdbL28SetMaskedSelectionVectorLoopIhEEvRNS_15SelectionVectorEPhmRNS_12ValidityMaskEm.exit, label %.lr.ph.i249.preheader

.lr.ph.i249.preheader:                            ; preds = %bb.ao
  %min.iters.check653 = icmp ult i64 %3, 12
  br i1 %min.iters.check653, label %.lr.ph.i249.preheader688, label %vector.memcheck646

vector.memcheck646:                               ; preds = %.lr.ph.i249.preheader
  %i.on = shl i64 %3, 2
  %scevgep647 = getelementptr i8, ptr %.val140, i64 %i.on
  %scevgep648 = getelementptr i8, ptr %1, i64 %3
  %bound0649 = icmp ult ptr %.val140, %scevgep648
end_hunk_4
