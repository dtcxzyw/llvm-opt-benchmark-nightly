Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/maglev-code-generator?download=true
inline.NumInlined: 32460
inline.NumDeleted: 3454
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN2v88internal6maglev19MaglevCodeGenerator8EmitCodeEv:bb.a
  %i.qc = and i64 %i.qa, 17179869184
  %i.qd = icmp eq i64 %i.qc, 0
  %i.qe = and i64 %i.qb, 4294967295
  %i.qf = icmp eq i64 %.047.lcssa.i.i.i.i, %i.qe
  %i.qg = and i1 %i.qd, %i.qf
  br i1 %i.qg, label %bb.bf, label %bb.be, !prof !16

.lr.ph.i.i.i.i:                                   ; preds = %_ZN2v88internal10ZoneVectorIPNS0_6maglev10BasicBlockEEC2EmPNS0_4ZoneE.exit.i.i.i.i, %.lr.ph.i.i.i.i
  %.046170.i.i.i.i = phi ptr [ %i.qo, %.lr.ph.i.i.i.i ], [ %i.pv, %_ZN2v88internal10ZoneVectorIPNS0_6maglev10BasicBlockEEC2EmPNS0_4ZoneE.exit.i.i.i.i ] ; 2 uses
  %.047169.i.i.i.i = phi i64 [ %.148.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.pw, %_ZN2v88internal10ZoneVectorIPNS0_6maglev10BasicBlockEEC2EmPNS0_4ZoneE.exit.i.i.i.i ] ; 2 uses
  %.049168.i.i.i.i = phi i64 [ %.150.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %_ZN2v88internal10ZoneVectorIPNS0_6maglev10BasicBlockEEC2EmPNS0_4ZoneE.exit.i.i.i.i ] ; 2 uses
  %i.qh = load ptr, ptr %.046170.i.i.i.i, align 8 ; 2 uses
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qh, i64 1
  %i.qj = load i8, ptr %i.qi, align 1             ; 2 uses
  %i.qk = trunc i8 %i.qj to i1                    ; 2 uses
  %.049168.sink.i.i.i.i = select i1 %i.qk, i64 %.047169.i.i.i.i, i64 %.049168.i.i.i.i
  %not..i.i.i.i = xor i1 %i.qk, true
  %i.ql = zext i1 %not..i.i.i.i to i64
  %.150.i.i.i.i = add i64 %.049168.i.i.i.i, %i.ql ; 2 uses
  %.mask.i.i.i.i = and i8 %i.qj, 1
  %i.qm = zext nneg i8 %.mask.i.i.i.i to i64
  %.148.i.i.i.i = add i64 %.047169.i.i.i.i, %i.qm ; 2 uses
  %i.qn = getelementptr inbounds nuw [8 x i8], ptr %.sroa.5.0.i.i.i.i, i64 %.049168.sink.i.i.i.i
  store ptr %i.qh, ptr %i.qn, align 8
  %i.qo = getelementptr inbounds nuw i8, ptr %.046170.i.i.i.i, i64 8 ; 3 uses
  %i.qp = load ptr, ptr %i.bp, align 8
  %.not.i.i.i.i = icmp eq ptr %i.qo, %i.qp
  br i1 %.not.i.i.i.i, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !17

bb.be:                                            ; preds = %._crit_edge.i.i.i.i
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.82) #22
  unreachable

bb.bf:                                            ; preds = %._crit_edge.i.i.i.i
  %i.qq = icmp sgt i32 %i.pa, -1
  %i.qr = zext i32 %i.pa to i64
  %i.qs = icmp eq i64 %.049.lcssa.i.i.i.i, %i.qr
  %i.qt = and i1 %i.qq, %i.qs
  br i1 %i.qt, label %bb.bh, label %bb.bg, !prof !16

bb.bg:                                            ; preds = %bb.bf
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.83) #22
  unreachable

bb.bh:                                            ; preds = %bb.bf
  %i.qu = ptrtoint ptr %.sroa.12155.0.i.i.i.i to i64
  %i.qv = ptrtoint ptr %.sroa.5.0.i.i.i.i to i64
  %i.qw = sub i64 %i.qu, %i.qv                    ; 7 uses
  %.not.i72.not.i.i.i.i = icmp eq ptr %.sroa.12155.0.i.i.i.i, %.sroa.5.0.i.i.i.i
  br i1 %.not.i72.not.i.i.i.i, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.qx = getelementptr inbounds nuw i8, ptr null, i64 %i.qw
  br label %_ZN2v88internal10ZoneVectorIPNS0_6maglev10BasicBlockEEaSERKS5_.exit.i.i.i.i

bb.bj:                                            ; preds = %bb.bh
  %i.qy = icmp sgt i64 %i.qw, -1
  br i1 %i.qy, label %bb.bl, label %bb.bk, !prof !16

bb.bk:                                            ; preds = %bb.bj
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.84) #22
  unreachable

bb.bl:                                            ; preds = %bb.bj
  %i.qz = getelementptr inbounds nuw i8, ptr %i.pc, i64 24
  %i.ra = load i64, ptr %i.qz, align 8
  %i.rb = getelementptr inbounds nuw i8, ptr %i.pc, i64 16 ; 3 uses
  %i.rc = load i64, ptr %i.rb, align 8            ; 2 uses
  %i.rd = sub i64 %i.ra, %i.rc
  %i.re = icmp ugt i64 %i.qw, %i.rd
  br i1 %i.re, label %bb.bm, label %_ZN2v88internal4Zone13AllocateArrayIPNS0_6maglev10BasicBlockEA_S5_EEPT_m.exit.i.i.i.i.i, !prof !8

bb.bm:                                            ; preds = %bb.bl
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.pc, i64 noundef %i.qw) #20
  %.pre.i.i.i74.i.i.i.i = load i64, ptr %i.rb, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayIPNS0_6maglev10BasicBlockEA_S5_EEPT_m.exit.i.i.i.i.i

_ZN2v88internal4Zone13AllocateArrayIPNS0_6maglev10BasicBlockEA_S5_EEPT_m.exit.i.i.i.i.i: ; preds = %bb.bm, %bb.bl
  %i.rf = phi i64 [ %.pre.i.i.i74.i.i.i.i, %bb.bm ], [ %i.rc, %bb.bl ] ; 2 uses
  %i.rg = inttoptr i64 %i.rf to ptr               ; 3 uses
  %i.rh = add i64 %i.rf, %i.qw
  store i64 %i.rh, ptr %i.rb, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.i.i.i.i) ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.rg, ptr nonnull align 8 %.sroa.5.0.i.i.i.i, i64 %i.qw, i1 false)
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rg, i64 %i.qw ; 2 uses
  %.pre199.i.i.i.i = load ptr, ptr %i.bn, align 8 ; 2 uses
  %.pre208.i.i.i.i = ptrtoint ptr %.pre199.i.i.i.i to i64
  br label %_ZN2v88internal10ZoneVectorIPNS0_6maglev10BasicBlockEEaSERKS5_.exit.i.i.i.i

_ZN2v88internal10ZoneVectorIPNS0_6maglev10BasicBlockEEaSERKS5_.exit.i.i.i.i: ; preds = %_ZN2v88internal4Zone13AllocateArrayIPNS0_6maglev10BasicBlockEA_S5_EEPT_m.exit.i.i.i.i.i, %bb.bi
  %.pre-phi.i.i.i.i = phi i64 [ %i.pz, %bb.bi ], [ %.pre208.i.i.i.i, %_ZN2v88internal4Zone13AllocateArrayIPNS0_6maglev10BasicBlockEA_S5_EEPT_m.exit.i.i.i.i.i ]
  %i.rj = phi ptr [ %i.px, %bb.bi ], [ %.pre199.i.i.i.i, %_ZN2v88internal4Zone13AllocateArrayIPNS0_6maglev10BasicBlockEA_S5_EEPT_m.exit.i.i.i.i.i ] ; 4 uses
  %.sroa.4.1.i.i.i.i = phi ptr [ null, %bb.bi ], [ %i.rg, %_ZN2v88internal4Zone13AllocateArrayIPNS0_6maglev10BasicBlockEA_S5_EEPT_m.exit.i.i.i.i.i ] ; 6 uses
  %.sroa.12.0.i.i.i.i = phi ptr [ %i.qx, %bb.bi ], [ %i.ri, %_ZN2v88internal4Zone13AllocateArrayIPNS0_6maglev10BasicBlockEA_S5_EEPT_m.exit.i.i.i.i.i ] ; 2 uses
  %.sroa.17.0.i.i.i.i = phi ptr [ null, %bb.bi ], [ %i.ri, %_ZN2v88internal4Zone13AllocateArrayIPNS0_6maglev10BasicBlockEA_S5_EEPT_m.exit.i.i.i.i.i ] ; 2 uses
  %i.rk = getelementptr inbounds nuw i8, ptr %i.am, i64 48 ; 3 uses
  %i.rl = load ptr, ptr %i.rk, align 8
  %i.rm = ptrtoint ptr %i.rl to i64
  %i.rn = sub i64 %i.rm, %.pre-phi.i.i.i.i
  %i.ro = ptrtoint ptr %.sroa.12.0.i.i.i.i to i64
  %i.rp = ptrtoint ptr %.sroa.4.1.i.i.i.i to i64  ; 2 uses
  %i.rq = sub i64 %i.ro, %i.rp                    ; 4 uses
  %.not.i75.i.i.i.i = icmp ult i64 %i.rn, %i.rq
  br i1 %.not.i75.i.i.i.i, label %bb.bq, label %bb.bn

bb.bn:                                            ; preds = %_ZN2v88internal10ZoneVectorIPNS0_6maglev10BasicBlockEEaSERKS5_.exit.i.i.i.i
  %i.rr = load ptr, ptr %i.ol, align 8
  %i.rs = icmp eq ptr %i.rr, %i.pc
  br i1 %i.rs, label %bb.bo, label %bb.bq

bb.bo:                                            ; preds = %bb.bn
  %.not24.i80.i.i.i.i = icmp eq ptr %.sroa.12.0.i.i.i.i, %.sroa.4.1.i.i.i.i
  br i1 %.not24.i80.i.i.i.i, label %_ZN2v88internal10ZoneVectorIPNS0_6maglev10BasicBlockEEaSERKS5_.exit81.i.i.i.i, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.rj, ptr align 8 %.sroa.4.1.i.i.i.i, i64 %i.rq, i1 false)
  %.pre200.pre.i.i.i.i = load ptr, ptr %i.bn, align 8
  br label %_ZN2v88internal10ZoneVectorIPNS0_6maglev10BasicBlockEEaSERKS5_.exit81.i.i.i.i

bb.bq:                                            ; preds = %bb.bn, %_ZN2v88internal10ZoneVectorIPNS0_6maglev10BasicBlockEEaSERKS5_.exit.i.i.i.i
  %i.rt = ptrtoint ptr %.sroa.17.0.i.i.i.i to i64
  %i.ru = sub i64 %i.rt, %i.rp                    ; 5 uses
  %.not23.i76.i.i.i.i = icmp eq ptr %.sroa.17.0.i.i.i.i, %.sroa.4.1.i.i.i.i
  br i1 %.not23.i76.i.i.i.i, label %bb.bv, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.rv = load ptr, ptr %i.ol, align 8            ; 3 uses
  %i.rw = icmp sgt i64 %i.ru, -1
  br i1 %i.rw, label %bb.bt, label %bb.bs, !prof !16

bb.bs:                                            ; preds = %bb.br
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.84) #22
  unreachable

bb.bt:                                            ; preds = %bb.br
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rv, i64 24
  %i.ry = load i64, ptr %i.rx, align 8
  %i.rz = getelementptr inbounds nuw i8, ptr %i.rv, i64 16 ; 3 uses
  %i.sa = load i64, ptr %i.rz, align 8            ; 2 uses
  %i.sb = sub i64 %i.ry, %i.sa
  %i.sc = icmp ugt i64 %i.ru, %i.sb
  br i1 %i.sc, label %bb.bu, label %_ZN2v88internal4Zone13AllocateArrayIPNS0_6maglev10BasicBlockEA_S5_EEPT_m.exit.i77.i.i.i.i, !prof !8

bb.bu:                                            ; preds = %bb.bt
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.rv, i64 noundef %i.ru) #20
  %.pre.i.i.i79.i.i.i.i = load i64, ptr %i.rz, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayIPNS0_6maglev10BasicBlockEA_S5_EEPT_m.exit.i77.i.i.i.i

_ZN2v88internal4Zone13AllocateArrayIPNS0_6maglev10BasicBlockEA_S5_EEPT_m.exit.i77.i.i.i.i: ; preds = %bb.bu, %bb.bt
  %i.sd = phi i64 [ %.pre.i.i.i79.i.i.i.i, %bb.bu ], [ %i.sa, %bb.bt ] ; 2 uses
  %i.se = inttoptr i64 %i.sd to ptr               ; 2 uses
  %i.sf = add i64 %i.sd, %i.ru
  store i64 %i.sf, ptr %i.rz, align 8
  store ptr %i.se, ptr %i.bn, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.1.i.i.i.i) ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.se, ptr nonnull align 8 %.sroa.4.1.i.i.i.i, i64 %i.rq, i1 false)
  %.pre.i78.i.i.i.i = load ptr, ptr %i.bn, align 8
  br label %bb.bw

bb.bv:                                            ; preds = %bb.bq
  store ptr null, ptr %i.bn, align 8
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %_ZN2v88internal4Zone13AllocateArrayIPNS0_6maglev10BasicBlockEA_S5_EEPT_m.exit.i77.i.i.i.i
  %i.sg = phi ptr [ null, %bb.bv ], [ %.pre.i78.i.i.i.i, %_ZN2v88internal4Zone13AllocateArrayIPNS0_6maglev10BasicBlockEA_S5_EEPT_m.exit.i77.i.i.i.i ] ; 3 uses
  %i.sh = getelementptr inbounds nuw i8, ptr %i.sg, i64 %i.ru
  store ptr %i.sh, ptr %i.rk, align 8
  br label %_ZN2v88internal10ZoneVectorIPNS0_6maglev10BasicBlockEEaSERKS5_.exit81.i.i.i.i

_ZN2v88internal10ZoneVectorIPNS0_6maglev10BasicBlockEEaSERKS5_.exit81.i.i.i.i: ; preds = %bb.bw, %bb.bp, %bb.bo
  %i.si = phi ptr [ %i.sg, %bb.bw ], [ %.pre200.pre.i.i.i.i, %bb.bp ], [ %i.rj, %bb.bo ] ; 3 uses
  %.pn.i.i.i.i = phi ptr [ %i.sg, %bb.bw ], [ %i.rj, %bb.bp ], [ %i.rj, %bb.bo ]
  %i.sj = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i, i64 %i.rq ; 3 uses
  store ptr %i.sj, ptr %i.bp, align 8
  %.not192.i.i.i.i = icmp eq ptr %i.sj, %i.si
  br i1 %.not192.i.i.i.i, label %_ZN2v88internal10ZoneVectorIPNS0_6maglev10BasicBlockEE14EnsureCapacityEm.exit.i.i.i.i.i, label %.lr.ph187.i.i.i.i

._crit_edge188.i.i.i.i:                           ; preds = %bb.cc
  %i.sk = load ptr, ptr %i.rk, align 8
  %i.sl = ptrtoint ptr %i.sk to i64
  %i.sm = sub i64 %i.sl, %i.wl
  %i.sn = ashr exact i64 %i.sm, 3
  %.not.i.i64.i.i.i.i = icmp ugt i64 %.1.i.i.i.i, %i.sn
  br i1 %.not.i.i64.i.i.i.i, label %bb.bx, label %_ZN2v88internal10ZoneVectorIPNS0_6maglev10BasicBlockEE14EnsureCapacityEm.exit.i.i.i.i.i, !prof !18

bb.bx:                                            ; preds = %._crit_edge188.i.i.i.i
  call preserve_mostcc void @_ZN2v88internal10ZoneVectorIPNS0_6maglev10BasicBlockEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.ol, i64 noundef %.1.i.i.i.i)
  %.pre.i67.i.i.i.i = load ptr, ptr %i.bn, align 8
  %.pre203.i.i.i.i = load ptr, ptr %i.bp, align 8
  br label %_ZN2v88internal10ZoneVectorIPNS0_6maglev10BasicBlockEE14EnsureCapacityEm.exit.i.i.i.i.i

_ZN2v88internal10ZoneVectorIPNS0_6maglev10BasicBlockEE14EnsureCapacityEm.exit.i.i.i.i.i: ; preds = %bb.bx, %._crit_edge188.i.i.i.i, %_ZN2v88internal10ZoneVectorIPNS0_6maglev10BasicBlockEEaSERKS5_.exit81.i.i.i.i
  %.045.lcssa254.i.i.i.i = phi i64 [ %.1.i.i.i.i, %._crit_edge188.i.i.i.i ], [ %.1.i.i.i.i, %bb.bx ], [ 0, %_ZN2v88internal10ZoneVectorIPNS0_6maglev10BasicBlockEEaSERKS5_.exit81.i.i.i.i ] ; 2 uses
  %i.so = phi ptr [ %i.wj, %._crit_edge188.i.i.i.i ], [ %.pre203.i.i.i.i, %bb.bx ], [ %i.sj, %_ZN2v88internal10ZoneVectorIPNS0_6maglev10BasicBlockEEaSERKS5_.exit81.i.i.i.i ] ; 3 uses
  %i.sp = phi ptr [ %.pre202206.i.i.i.i, %._crit_edge188.i.i.i.i ], [ %.pre.i67.i.i.i.i, %bb.bx ], [ %i.si, %_ZN2v88internal10ZoneVectorIPNS0_6maglev10BasicBlockEEaSERKS5_.exit81.i.i.i.i ] ; 2 uses
  %i.sq = getelementptr inbounds nuw [8 x i8], ptr %i.sp, i64 %.045.lcssa254.i.i.i.i ; 2 uses
  %i.sr = icmp ult ptr %i.so, %i.sq
  br i1 %i.sr, label %.lr.ph.preheader.i66.i.i.i.i, label %_ZN2v88internal6maglev18NodeMultiProcessorIJNS1_12_GLOBAL__N_125SafepointingNodeProcessorENS3_33MaglevCodeGeneratingNodeProcessorEEE15PreProcessGraphEPNS1_5GraphE.exit.i

.lr.ph.preheader.i66.i.i.i.i:                     ; preds = %_ZN2v88internal10ZoneVectorIPNS0_6maglev10BasicBlockEE14EnsureCapacityEm.exit.i.i.i.i.i
  %i.ss = ptrtoaddr ptr %i.so to i64              ; 2 uses
  %i.st = ptrtoaddr ptr %i.sp to i64
  %i.su = shl nuw nsw i64 %.045.lcssa254.i.i.i.i, 3
  %16 = add nuw i64 %i.su, %i.st
  %i.sv = add i64 %i.ss, 8
  %umax.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %16, i64 %i.sv)
  %17 = xor i64 %i.ss, -1
  %i.sw = add i64 %umax.i.i.i.i.i, %17
  %i.sx = and i64 %i.sw, -8
  %i.sy = add i64 %i.sx, 8
  call void @llvm.memset.p0.i64(ptr align 8 %i.so, i8 0, i64 %i.sy, i1 false)
  br label %_ZN2v88internal6maglev18NodeMultiProcessorIJNS1_12_GLOBAL__N_125SafepointingNodeProcessorENS3_33MaglevCodeGeneratingNodeProcessorEEE15PreProcessGraphEPNS1_5GraphE.exit.i

.lr.ph187.i.i.i.i:                                ; preds = %_ZN2v88internal10ZoneVectorIPNS0_6maglev10BasicBlockEEaSERKS5_.exit81.i.i.i.i, %bb.cc
  %.pre202205.i.i.i.i = phi ptr [ %.pre202206.i.i.i.i, %bb.cc ], [ %i.si, %_ZN2v88internal10ZoneVectorIPNS0_6maglev10BasicBlockEEaSERKS5_.exit81.i.i.i.i ] ; 2 uses
  %.0186.i.i.i.i = phi i64 [ %i.wi, %bb.cc ], [ 0, %_ZN2v88internal10ZoneVectorIPNS0_6maglev10BasicBlockEEaSERKS5_.exit81.i.i.i.i ] ; 2 uses
  %.045185.i.i.i.i = phi i64 [ %.1.i.i.i.i, %bb.cc ], [ 0, %_ZN2v88internal10ZoneVectorIPNS0_6maglev10BasicBlockEEaSERKS5_.exit81.i.i.i.i ] ; 3 uses
  %i.sz = getelementptr inbounds nuw [8 x i8], ptr %.pre202205.i.i.i.i, i64 %.0186.i.i.i.i
  %i.ta = load ptr, ptr %i.sz, align 8            ; 7 uses
  %.val55.i.i.i.i = load ptr, ptr %15, align 8
  %i.tb = getelementptr i8, ptr %.val55.i.i.i.i, i64 440
  %.val55.val.i.i.i.i = load ptr, ptr %i.tb, align 8
  %i.tc = getelementptr inbounds nuw i8, ptr %.val55.val.i.i.i.i, i64 152 ; 2 uses
  %i.td = getelementptr inbounds nuw i8, ptr %i.ta, i64 4 ; 2 uses
  %i.te = load i32, ptr %i.td, align 4
  %i.tf = zext i32 %i.te to i64
  %i.tg = load ptr, ptr %i.tc, align 8
  %i.th = getelementptr inbounds nuw [8 x i8], ptr %i.tg, i64 %i.tf ; 2 uses
  %i.ti = load ptr, ptr %i.th, align 8            ; 2 uses
  %.not.i68.i.i.i.i = icmp eq ptr %i.ti, null
  br i1 %.not.i68.i.i.i.i, label %.preheader.i69.preheader.i.i.i.i, label %_ZN2v88internal6maglev18MaglevCodeGenState14RealJumpTargetEPNS1_10BasicBlockE.exit.i.i.i.i

.preheader.i69.preheader.i.i.i.i:                 ; preds = %.lr.ph187.i.i.i.i
  %i.tj = getelementptr inbounds nuw i8, ptr %i.ta, i64 24
  %i.tk = load ptr, ptr %i.tj, align 8
  %i.tl = getelementptr inbounds nuw i8, ptr %i.ta, i64 16
  %i.tm = load ptr, ptr %i.tl, align 8
  %i.tn = icmp eq ptr %i.tk, %i.tm
  br i1 %i.tn, label %.lr.ph174.i.i.i.i, label %_ZN2v88internal6maglev10BasicBlock21ComputeRealJumpTargetEv.exit.i.i.i.i.i

.lr.ph174.i.i.i.i:                                ; preds = %.preheader.i69.preheader.i.i.i.i, %.preheader.i69.backedge.i.i.i.i
  %.011.i.i173.i.i.i.i = phi ptr [ %i.uz, %.preheader.i69.backedge.i.i.i.i ], [ %i.ta, %.preheader.i69.preheader.i.i.i.i ] ; 11 uses
  %i.to = load i8, ptr %.011.i.i173.i.i.i.i, align 8
  %i.tp = icmp eq i8 %i.to, 0
  %i.tq = getelementptr inbounds nuw i8, ptr %.011.i.i173.i.i.i.i, i64 64
  %i.tr = load ptr, ptr %i.tq, align 8            ; 9 uses
  %i.ts = icmp ne ptr %i.tr, null
  %i.tt = select i1 %i.tp, i1 %i.ts, i1 false
  br i1 %i.tt, label %_ZNK2v88internal6maglev10BasicBlock7is_loopEv.exit.i.i.i.i.i.i, label %_ZNK2v88internal6maglev10BasicBlock23HasPhisOrRegisterMergesEv.exit140.thread161.i.i.i.i

_ZNK2v88internal6maglev10BasicBlock7is_loopEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph174.i.i.i.i
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tr, i64 12
  %i.tv = load i32, ptr %i.tu, align 4            ; 2 uses
  %i.tw = and i32 %i.tv, 3
  %i.tx = icmp ne i32 %i.tw, 1
  %i.ty = and i32 %i.tv, 2
  %spec.select.i.i.not.i.i.i.i.i.i = icmp eq i32 %i.ty, 0
  %or.cond.i.i.i.i.i.i = and i1 %i.tx, %spec.select.i.i.not.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i, label %_ZNK2v88internal6maglev10BasicBlock7has_phiEv.exit.i85.i.i.i.i, label %_ZN2v88internal6maglev10BasicBlock21ComputeRealJumpTargetEv.exit.i.i.i.i.i

_ZNK2v88internal6maglev10BasicBlock7has_phiEv.exit.i85.i.i.i.i: ; preds = %_ZNK2v88internal6maglev10BasicBlock7is_loopEv.exit.i.i.i.i.i.i
  %i.tz = getelementptr inbounds nuw i8, ptr %i.tr, i64 24
  %i.ua = load ptr, ptr %i.tz, align 8
  %.not.i86.i.i.i.i = icmp eq ptr %i.ua, null
  br i1 %.not.i86.i.i.i.i, label %bb.by, label %_ZN2v88internal6maglev10BasicBlock21ComputeRealJumpTargetEv.exit.i.i.i.i.i

bb.by:                                            ; preds = %_ZNK2v88internal6maglev10BasicBlock7has_phiEv.exit.i85.i.i.i.i
  %i.ub = getelementptr inbounds nuw i8, ptr %i.tr, i64 56
  %i.uc = load i64, ptr %i.ub, align 8            ; 2 uses
  %i.ud = and i64 %i.uc, 2
  %.not54.i87.i.i.i.i = icmp eq i64 %i.ud, 0
  br i1 %.not54.i87.i.i.i.i, label %_ZN2v88internal6maglev10BasicBlock21ComputeRealJumpTargetEv.exit.i.i.i.i.i, label %_ZNK2v88internal6maglev10BasicBlock23HasPhisOrRegisterMergesEv.exit140.i.i.i.i

_ZNK2v88internal6maglev10BasicBlock23HasPhisOrRegisterMergesEv.exit140.i.i.i.i: ; preds = %bb.by
  %i.ue = getelementptr inbounds nuw i8, ptr %i.tr, i64 64
  %.sroa.0.0.copyload.i9.1.i.i89.i.i.i.i = load i64, ptr %i.ue, align 8
  %i.uf = getelementptr inbounds nuw i8, ptr %i.tr, i64 72
  %.sroa.0.0.copyload.i9.2.i.i90.i.i.i.i = load i64, ptr %i.uf, align 8
  %.sroa.0.0.copyload.i9.2.i.i90.i.i.i.i.fr = freeze i64 %.sroa.0.0.copyload.i9.2.i.i90.i.i.i.i
  %.not.i.i.i.2.i.i91.i.i.i.i = trunc i64 %.sroa.0.0.copyload.i9.2.i.i90.i.i.i.i.fr to i1
  %i.ug = getelementptr inbounds nuw i8, ptr %i.tr, i64 80
  %i.uh = load <8 x i64>, ptr %i.ug, align 8
  %.fr129 = freeze <8 x i64> %i.uh
  %i.ui = getelementptr inbounds nuw i8, ptr %i.tr, i64 144
  %i.uj = load <8 x i64>, ptr %i.ui, align 8
  %.fr128 = freeze <8 x i64> %i.uj
  %i.uk = getelementptr inbounds nuw i8, ptr %i.tr, i64 208
  %i.ul = load <8 x i64>, ptr %i.uk, align 8
  %.fr = freeze <8 x i64> %i.ul
  %i.um = or i64 %.sroa.0.0.copyload.i9.1.i.i89.i.i.i.i, %i.uc
  %i.un = trunc i64 %i.um to i1
  %i.uo = or <8 x i64> %.fr, %.fr128
  %i.up = or <8 x i64> %i.uo, %.fr129
  %rdx.op125 = trunc <8 x i64> %i.up to <8 x i1>
  %i.uq = bitcast <8 x i1> %rdx.op125 to i8
  %i.ur = icmp ne i8 %i.uq, 0
  %op.rdx126 = or i1 %i.ur, %.not.i.i.i.2.i.i91.i.i.i.i
  %op.rdx127 = select i1 %op.rdx126, i1 true, i1 %i.un
  br i1 %op.rdx127, label %_ZN2v88internal6maglev10BasicBlock21ComputeRealJumpTargetEv.exit.i.i.i.i.i, label %_ZNK2v88internal6maglev10BasicBlock23HasPhisOrRegisterMergesEv.exit140.thread161.i.i.i.i

_ZNK2v88internal6maglev10BasicBlock23HasPhisOrRegisterMergesEv.exit140.thread161.i.i.i.i: ; preds = %_ZNK2v88internal6maglev10BasicBlock23HasPhisOrRegisterMergesEv.exit140.i.i.i.i, %.lr.ph174.i.i.i.i
  %i.us = getelementptr inbounds nuw i8, ptr %.011.i.i173.i.i.i.i, i64 40
  %i.ut = load ptr, ptr %i.us, align 8            ; 3 uses
  %i.uu = getelementptr inbounds nuw i8, ptr %i.ut, i64 8
  %i.uv = load i64, ptr %i.uu, align 8
  %i.uw = and i64 %i.uv, 65535
  %i.ux = icmp ne i64 %i.uw, 317
  %.not17.i.i.i.i.i.i = icmp eq ptr %i.ut, null
  %.not.i.i71.i.i.i.i = or i1 %.not17.i.i.i.i.i.i, %i.ux
  br i1 %.not.i.i71.i.i.i.i, label %_ZN2v88internal6maglev10BasicBlock21ComputeRealJumpTargetEv.exit.i.i.i.i.i, label %bb.bz

bb.bz:                                            ; preds = %_ZNK2v88internal6maglev10BasicBlock23HasPhisOrRegisterMergesEv.exit140.thread161.i.i.i.i
  %i.uy = getelementptr inbounds nuw i8, ptr %i.ut, i64 24
  %i.uz = load ptr, ptr %i.uy, align 8            ; 6 uses
  %i.va = load i8, ptr %i.uz, align 8
  %i.vb = icmp eq i8 %i.va, 0
  %i.vc = getelementptr inbounds nuw i8, ptr %i.uz, i64 64
  %i.vd = load ptr, ptr %i.vc, align 8            ; 8 uses
  %i.ve = icmp ne ptr %i.vd, null
  %i.vf = select i1 %i.vb, i1 %i.ve, i1 false
  br i1 %i.vf, label %_ZNK2v88internal6maglev10BasicBlock7has_phiEv.exit.i.i.i.i.i, label %.preheader.i69.backedge.i.i.i.i

_ZNK2v88internal6maglev10BasicBlock7has_phiEv.exit.i.i.i.i.i: ; preds = %bb.bz
  %i.vg = getelementptr inbounds nuw i8, ptr %i.vd, i64 24
  %i.vh = load ptr, ptr %i.vg, align 8
  %.not.i83.i.i.i.i = icmp eq ptr %i.vh, null
  br i1 %.not.i83.i.i.i.i, label %bb.ca, label %_ZN2v88internal6maglev10BasicBlock21ComputeRealJumpTargetEv.exit.i.i.i.i.i

bb.ca:                                            ; preds = %_ZNK2v88internal6maglev10BasicBlock7has_phiEv.exit.i.i.i.i.i
  %i.vi = getelementptr inbounds nuw i8, ptr %i.vd, i64 56
  %i.vj = load i64, ptr %i.vi, align 8            ; 2 uses
  %i.vk = and i64 %i.vj, 2
  %.not54.i.i.i.i.i = icmp eq i64 %i.vk, 0
  br i1 %.not54.i.i.i.i.i, label %_ZN2v88internal6maglev10BasicBlock21ComputeRealJumpTargetEv.exit.i.i.i.i.i, label %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.i.i.i.i.i

_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.i.i.i.i.i: ; preds = %bb.ca
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vd, i64 64
  %.sroa.0.0.copyload.i9.1.i.i.i.i.i.i = load i64, ptr %i.vl, align 8
  %i.vm = getelementptr inbounds nuw i8, ptr %i.vd, i64 72
  %.sroa.0.0.copyload.i9.2.i.i.i.i.i.i = load i64, ptr %i.vm, align 8
  %.sroa.0.0.copyload.i9.2.i.i.i.i.i.i.fr = freeze i64 %.sroa.0.0.copyload.i9.2.i.i.i.i.i.i
  %.not.i.i.i.2.i.i.i.i.i.i = trunc i64 %.sroa.0.0.copyload.i9.2.i.i.i.i.i.i.fr to i1
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vd, i64 80
  %i.vo = load <8 x i64>, ptr %i.vn, align 8
  %.fr132 = freeze <8 x i64> %i.vo
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vd, i64 144
  %i.vq = load <8 x i64>, ptr %i.vp, align 8
  %.fr131 = freeze <8 x i64> %i.vq
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vd, i64 208
  %i.vs = load <8 x i64>, ptr %i.vr, align 8
  %.fr130 = freeze <8 x i64> %i.vs
  %i.vt = or i64 %.sroa.0.0.copyload.i9.1.i.i.i.i.i.i, %i.vj
  %i.vu = trunc i64 %i.vt to i1
  %i.vv = or <8 x i64> %.fr130, %.fr131
  %i.vw = or <8 x i64> %i.vv, %.fr132
  %rdx.op122 = trunc <8 x i64> %i.vw to <8 x i1>
  %i.vx = bitcast <8 x i1> %rdx.op122 to i8
  %i.vy = icmp ne i8 %i.vx, 0
  %op.rdx = or i1 %i.vy, %.not.i.i.i.2.i.i.i.i.i.i
  %op.rdx123 = select i1 %op.rdx, i1 true, i1 %i.vu
  br i1 %op.rdx123, label %_ZN2v88internal6maglev10BasicBlock21ComputeRealJumpTargetEv.exit.i.i.i.i.i, label %.preheader.i69.backedge.i.i.i.i

.preheader.i69.backedge.i.i.i.i:                  ; preds = %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.i.i.i.i.i, %bb.bz
  %i.vz = getelementptr inbounds nuw i8, ptr %i.uz, i64 24
  %i.wa = load ptr, ptr %i.vz, align 8
  %i.wb = getelementptr inbounds nuw i8, ptr %i.uz, i64 16
  %i.wc = load ptr, ptr %i.wb, align 8
  %i.wd = icmp eq ptr %i.wa, %i.wc
  br i1 %i.wd, label %.lr.ph174.i.i.i.i, label %_ZN2v88internal6maglev10BasicBlock21ComputeRealJumpTargetEv.exit.i.i.i.i.i

_ZN2v88internal6maglev10BasicBlock21ComputeRealJumpTargetEv.exit.i.i.i.i.i: ; preds = %.preheader.i69.backedge.i.i.i.i, %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.i.i.i.i.i, %bb.ca, %_ZNK2v88internal6maglev10BasicBlock7has_phiEv.exit.i.i.i.i.i, %_ZNK2v88internal6maglev10BasicBlock23HasPhisOrRegisterMergesEv.exit140.thread161.i.i.i.i, %_ZNK2v88internal6maglev10BasicBlock23HasPhisOrRegisterMergesEv.exit140.i.i.i.i, %bb.by, %_ZNK2v88internal6maglev10BasicBlock7has_phiEv.exit.i85.i.i.i.i, %_ZNK2v88internal6maglev10BasicBlock7is_loopEv.exit.i.i.i.i.i.i, %.preheader.i69.preheader.i.i.i.i
  %.011.i.i.lcssa.i.i.i.i = phi ptr [ %i.ta, %.preheader.i69.preheader.i.i.i.i ], [ %.011.i.i173.i.i.i.i, %bb.ca ], [ %.011.i.i173.i.i.i.i, %_ZNK2v88internal6maglev10BasicBlock7has_phiEv.exit.i.i.i.i.i ], [ %.011.i.i173.i.i.i.i, %_ZNK2v88internal6maglev10BasicBlock7has_phiEv.exit.i85.i.i.i.i ], [ %.011.i.i173.i.i.i.i, %bb.by ], [ %.011.i.i173.i.i.i.i, %_ZN2v88internal11RegListBaseINS0_8RegisterEE8IteratorppEv.exit.i.i.i.i.i.i ], [ %.011.i.i173.i.i.i.i, %_ZNK2v88internal6maglev10BasicBlock23HasPhisOrRegisterMergesEv.exit140.thread161.i.i.i.i ], [ %.011.i.i173.i.i.i.i, %_ZNK2v88internal6maglev10BasicBlock23HasPhisOrRegisterMergesEv.exit140.i.i.i.i ], [ %.011.i.i173.i.i.i.i, %_ZNK2v88internal6maglev10BasicBlock7is_loopEv.exit.i.i.i.i.i.i ], [ %i.uz, %.preheader.i69.backedge.i.i.i.i ]
  store ptr %.011.i.i.lcssa.i.i.i.i, ptr %i.th, align 8
  %.pre.i70.i.i.i.i = load i32, ptr %i.td, align 4
  %.pre5.i.i.i.i.i = load ptr, ptr %i.tc, align 8
  %.phi.trans.insert.i.i.i.i.i = zext i32 %.pre.i70.i.i.i.i to i64
  %.phi.trans.insert6.i.i.i.i.i = getelementptr inbounds nuw [8 x i8], ptr %.pre5.i.i.i.i.i, i64 %.phi.trans.insert.i.i.i.i.i
  %.pre7.i.i.i.i.i = load ptr, ptr %.phi.trans.insert6.i.i.i.i.i, align 8
  %.pre202.pre.i.i.i.i = load ptr, ptr %i.bn, align 8
  br label %_ZN2v88internal6maglev18MaglevCodeGenState14RealJumpTargetEPNS1_10BasicBlockE.exit.i.i.i.i

_ZN2v88internal6maglev18MaglevCodeGenState14RealJumpTargetEPNS1_10BasicBlockE.exit.i.i.i.i: ; preds = %_ZN2v88internal6maglev10BasicBlock21ComputeRealJumpTargetEv.exit.i.i.i.i.i, %.lr.ph187.i.i.i.i
  %.pre202.i.i.i.i = phi ptr [ %.pre202.pre.i.i.i.i, %_ZN2v88internal6maglev10BasicBlock21ComputeRealJumpTargetEv.exit.i.i.i.i.i ], [ %.pre202205.i.i.i.i, %.lr.ph187.i.i.i.i ] ; 2 uses
  %i.we = phi ptr [ %.pre7.i.i.i.i.i, %_ZN2v88internal6maglev10BasicBlock21ComputeRealJumpTargetEv.exit.i.i.i.i.i ], [ %i.ti, %.lr.ph187.i.i.i.i ]
  %i.wf = icmp eq ptr %i.we, %i.ta
  br i1 %i.wf, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %_ZN2v88internal6maglev18MaglevCodeGenState14RealJumpTargetEPNS1_10BasicBlockE.exit.i.i.i.i
  %i.wg = add i64 %.045185.i.i.i.i, 1
  %i.wh = getelementptr inbounds nuw [8 x i8], ptr %.pre202.i.i.i.i, i64 %.045185.i.i.i.i
  store ptr %i.ta, ptr %i.wh, align 8
  %.pre201.i.i.i.i = load ptr, ptr %i.bn, align 8
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %_ZN2v88internal6maglev18MaglevCodeGenState14RealJumpTargetEPNS1_10BasicBlockE.exit.i.i.i.i
  %.pre202206.i.i.i.i = phi ptr [ %.pre201.i.i.i.i, %bb.cb ], [ %.pre202.i.i.i.i, %_ZN2v88internal6maglev18MaglevCodeGenState14RealJumpTargetEPNS1_10BasicBlockE.exit.i.i.i.i ] ; 3 uses
  %.1.i.i.i.i = phi i64 [ %i.wg, %bb.cb ], [ %.045185.i.i.i.i, %_ZN2v88internal6maglev18MaglevCodeGenState14RealJumpTargetEPNS1_10BasicBlockE.exit.i.i.i.i ] ; 5 uses
  %i.wi = add nuw i64 %.0186.i.i.i.i, 1           ; 2 uses
  %i.wj = load ptr, ptr %i.bp, align 8            ; 2 uses
  %i.wk = ptrtoint ptr %i.wj to i64
  %i.wl = ptrtoint ptr %.pre202206.i.i.i.i to i64 ; 2 uses
  %i.wm = sub i64 %i.wk, %i.wl
  %i.wn = ashr exact i64 %i.wm, 3
  %i.wo = icmp ult i64 %i.wi, %i.wn
  br i1 %i.wo, label %.lr.ph187.i.i.i.i, label %._crit_edge188.i.i.i.i, !llvm.loop !19

_ZN2v88internal6maglev18NodeMultiProcessorIJNS1_12_GLOBAL__N_125SafepointingNodeProcessorENS3_33MaglevCodeGeneratingNodeProcessorEEE15PreProcessGraphEPNS1_5GraphE.exit.i: ; preds = %.lr.ph.preheader.i66.i.i.i.i, %_ZN2v88internal10ZoneVectorIPNS0_6maglev10BasicBlockEE14EnsureCapacityEm.exit.i.i.i.i.i
  store ptr %i.sq, ptr %i.bp, align 8
end_hunk_0
