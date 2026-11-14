Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/RISCVCallingConv?download=true
inline.NumInlined: 566
inline.NumDeleted: 205
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_ZL13CC_RISCV_ImpljN4llvm3MVTES0_NS_11CCValAssign7LocInfoENS_3ISD10ArgFlagsTyEPNS_4TypeERNS_7CCStateEb:bb.a
  %i.ep = add i32 %i.eo, 1
  store i32 %i.ep, ptr %i.eh, align 8, !tbaa !60
  br label %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit404

_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit404: ; preds = %bb.aj, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #10
  br label %bb.cx

.critedge381:                                     ; preds = %.critedge
  %i.eq = icmp eq i16 %2, 15                      ; 3 uses
  %i.er = and i1 %i.eq, %.1353
  br i1 %i.er, label %bb.al, label %.critedge383.thread

bb.al:                                            ; preds = %.critedge381
  %i.es = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !39
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 12
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !40 ; 8 uses
  %i.ew = and i32 %i.ev, 16384
  %.not.i.i406 = icmp eq i32 %i.ew, 0
  br i1 %.not.i.i406, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit409, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ex = and i32 %i.ev, 32768
  %.not.i.i406.1 = icmp eq i32 %i.ex, 0
  br i1 %.not.i.i406.1, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit409, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ey = and i32 %i.ev, 65536
  %.not.i.i406.2 = icmp eq i32 %i.ey, 0
  br i1 %.not.i.i406.2, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit409, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ez = and i32 %i.ev, 131072
  %.not.i.i406.3 = icmp eq i32 %i.ez, 0
  br i1 %.not.i.i406.3, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit409, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fa = and i32 %i.ev, 262144
  %.not.i.i406.4 = icmp eq i32 %i.fa, 0
  br i1 %.not.i.i406.4, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit409, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fb = and i32 %i.ev, 524288
  %.not.i.i406.5 = icmp eq i32 %i.fb, 0
  br i1 %.not.i.i406.5, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit409, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.fc = and i32 %i.ev, 1048576
  %.not.i.i406.6 = icmp eq i32 %i.fc, 0
  br i1 %.not.i.i406.6, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit409, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fd = and i32 %i.ev, 2097152
  %.not.i.i406.7 = icmp eq i32 %i.fd, 0
  br i1 %.not.i.i406.7, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit409, label %.critedge22

_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit409: ; preds = %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al
  %.0613.i.i405.lcssa.wide = phi i64 [ 0, %bb.al ], [ 1, %bb.am ], [ 2, %bb.an ], [ 3, %bb.ao ], [ 4, %bb.ap ], [ 5, %bb.aq ], [ 6, %bb.ar ], [ 7, %bb.as ]
  %i.fe = getelementptr inbounds nuw [2 x i8], ptr @_ZL9ArgFPR64s, i64 %.0613.i.i405.lcssa.wide
  %i.ff = load i16, ptr %i.fe, align 2, !tbaa !42 ; 2 uses
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %7, i16 noundef zeroext %i.ff) #10
  %i.fg = zext i16 %i.ff to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #10
  %i.fh = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i8 0, ptr %i.fh, align 8, !tbaa !44, !alias.scope !458
  %i.fi = getelementptr inbounds nuw i8, ptr %12, i64 16
  store i32 %0, ptr %i.fi, align 8, !tbaa !55, !alias.scope !458
  %i.fj = getelementptr inbounds nuw i8, ptr %12, i64 20 ; 2 uses
  %i.fk = load i8, ptr %i.fj, align 4, !alias.scope !458
  %i.fl = and i8 %i.fk, -128
  %i.fm = trunc i32 %3 to i8
  %i.fn = shl i8 %i.fm, 1
  %i.fo = and i8 %i.fn, 126
  %i.fp = or disjoint i8 %i.fl, %i.fo
  store i8 %i.fp, ptr %i.fj, align 4, !alias.scope !458
  %i.fq = getelementptr inbounds nuw i8, ptr %12, i64 22
  store i16 %1, ptr %i.fq, align 2, !tbaa !56, !alias.scope !458
  %i.fr = getelementptr inbounds nuw i8, ptr %12, i64 24
  store i16 15, ptr %i.fr, align 8, !tbaa !56, !alias.scope !458
  store i32 %i.fg, ptr %12, align 8, !tbaa !40, !alias.scope !458
  %i.fs = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !57, !nonnull !58, !align !59 ; 4 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 8 ; 3 uses
  %i.fv = load i32, ptr %i.fu, align 8, !tbaa !60 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ft, i64 12
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !61
  %.not.i.i410 = icmp ult i32 %i.fv, %i.fx
  br i1 %.not.i.i410, label %bb.au, label %bb.at, !prof !62

bb.at:                                            ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit409
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.ft, ptr noundef nonnull align 8 dereferenceable(26) %12)
  br label %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit411

bb.au:                                            ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit409
  %i.fy = zext i32 %i.fv to i64
  %i.fz = load ptr, ptr %i.ft, align 8, !tbaa !39
  %i.ga = getelementptr inbounds nuw [32 x i8], ptr %i.fz, i64 %i.fy
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.ga, ptr noundef nonnull align 8 dereferenceable(32) %12, i64 32, i1 false)
  %i.gb = load i32, ptr %i.fu, align 8, !tbaa !60
  %i.gc = add i32 %i.gb, 1
  store i32 %i.gc, ptr %i.fu, align 8, !tbaa !60
  br label %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit411

_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit411: ; preds = %bb.at, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #10
  br label %bb.cx

.critedge383.thread:                              ; preds = %.critedge381
  br i1 %i.dd, label %bb.ay, label %.critedge22

.critedge383:                                     ; preds = %bb.ai, %bb.y, %bb.q
  %i.gd = phi i1 [ false, %bb.q ], [ %i.dd, %bb.ai ], [ false, %bb.y ]
  br i1 %i.bp, label %bb.av, label %.critedge20

bb.av:                                            ; preds = %.critedge383
  %i.ge = getelementptr inbounds nuw i8, ptr %i.e, i64 493
  %i.gf = load i8, ptr %i.ge, align 1, !tbaa !328, !range !320, !noundef !58
  %i.gg = trunc nuw i8 %i.gf to i1
  br i1 %i.gg, label %bb.aw, label %.critedge20

bb.aw:                                            ; preds = %bb.av
  %i.gh = and i32 %i.bm, -9
  %or.cond.i = icmp eq i32 %i.gh, 3               ; 2 uses
  %spec.select.i412 = select i1 %or.cond.i, i64 6, i64 8
  %spec.select3.i = select i1 %or.cond.i, ptr @_ZZL19getFastCCArgGPRF16sN4llvm8RISCVABI3ABIEE11FastCCEGPRs, ptr @_ZZL12getArgGPR16sN4llvm8RISCVABI3ABIEE8ArgIGPRs
  %i.gi = tail call i32 @_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE(ptr noundef nonnull align 8 dereferenceable(420) %7, ptr nonnull %spec.select3.i, i64 %spec.select.i412) ; 2 uses
  %.not358 = icmp eq i32 %i.gi, 0
  br i1 %.not358, label %.critedge20, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #10
  %i.gj = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i8 0, ptr %i.gj, align 8, !tbaa !44, !alias.scope !459
  %i.gk = getelementptr inbounds nuw i8, ptr %13, i64 16
  store i32 %0, ptr %i.gk, align 8, !tbaa !55, !alias.scope !459
  %i.gl = getelementptr inbounds nuw i8, ptr %13, i64 20 ; 2 uses
  %i.gm = load i8, ptr %i.gl, align 4, !alias.scope !459
  %i.gn = and i8 %i.gm, -128
  %i.go = trunc i32 %3 to i8
  %i.gp = shl i8 %i.go, 1
  %i.gq = and i8 %i.gp, 126
  %i.gr = or disjoint i8 %i.gn, %i.gq
  store i8 %i.gr, ptr %i.gl, align 4, !alias.scope !459
  %i.gs = getelementptr inbounds nuw i8, ptr %13, i64 22
  store i16 %1, ptr %i.gs, align 2, !tbaa !56, !alias.scope !459
  %i.gt = getelementptr inbounds nuw i8, ptr %13, i64 24
  store i16 13, ptr %i.gt, align 8, !tbaa !56, !alias.scope !459
  store i32 %i.gi, ptr %13, align 8, !tbaa !40, !alias.scope !459
  call void @_ZN4llvm7CCState6addLocERKNS_11CCValAssignE(ptr noundef nonnull align 8 dereferenceable(420) %7, ptr noundef nonnull align 8 dereferenceable(26) %13)
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #10
  br label %bb.cx

.critedge20:                                      ; preds = %bb.aw, %.critedge383, %bb.av
  br i1 %i.gd, label %bb.ay, label %.critedge22

bb.ay:                                            ; preds = %.critedge383.thread, %.critedge20
  %i.gu = phi i1 [ %i.eq, %.critedge383.thread ], [ false, %.critedge20 ] ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.e, i64 491
  %i.gw = load i8, ptr %i.gv, align 1, !tbaa !322, !range !320, !noundef !58
  %i.gx = trunc nuw i8 %i.gw to i1
  br i1 %i.gx, label %bb.az, label %.critedge22

bb.az:                                            ; preds = %bb.ay
  %i.gy = and i32 %i.bm, -9
  %or.cond.i413 = icmp eq i32 %i.gy, 3            ; 2 uses
  %spec.select.i414 = select i1 %or.cond.i413, i64 6, i64 8
  %spec.select3.i415 = select i1 %or.cond.i413, ptr @_ZZL19getFastCCArgGPRF32sN4llvm8RISCVABI3ABIEE11FastCCEGPRs, ptr @_ZZL12getArgGPR32sN4llvm8RISCVABI3ABIEE8ArgIGPRs
  %i.gz = tail call i32 @_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE(ptr noundef nonnull align 8 dereferenceable(420) %7, ptr nonnull %spec.select3.i415, i64 %spec.select.i414) ; 2 uses
  %.not359 = icmp eq i32 %i.gz, 0
  br i1 %.not359, label %.critedge22, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #10
  %i.ha = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i8 0, ptr %i.ha, align 8, !tbaa !44, !alias.scope !460
  %i.hb = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i32 %0, ptr %i.hb, align 8, !tbaa !55, !alias.scope !460
  %i.hc = getelementptr inbounds nuw i8, ptr %14, i64 20 ; 2 uses
  %i.hd = load i8, ptr %i.hc, align 4, !alias.scope !460
  %i.he = and i8 %i.hd, -128
  %i.hf = trunc i32 %3 to i8
  %i.hg = shl i8 %i.hf, 1
  %i.hh = and i8 %i.hg, 126
  %i.hi = or disjoint i8 %i.he, %i.hh
  store i8 %i.hi, ptr %i.hc, align 4, !alias.scope !460
  %i.hj = getelementptr inbounds nuw i8, ptr %14, i64 22
  store i16 %1, ptr %i.hj, align 2, !tbaa !56, !alias.scope !460
  %i.hk = getelementptr inbounds nuw i8, ptr %14, i64 24
  store i16 %2, ptr %i.hk, align 8, !tbaa !56, !alias.scope !460
  store i32 %i.gz, ptr %14, align 8, !tbaa !40, !alias.scope !460
  call void @_ZN4llvm7CCState6addLocERKNS_11CCValAssignE(ptr noundef nonnull align 8 dereferenceable(420) %7, ptr noundef nonnull align 8 dereferenceable(26) %14)
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #10
  br label %bb.cx

.critedge22:                                      ; preds = %bb.as, %.critedge383.thread, %bb.az, %.critedge20, %bb.ay
  %i.hl = phi i1 [ %i.eq, %.critedge383.thread ], [ %i.gu, %bb.az ], [ false, %.critedge20 ], [ %i.gu, %bb.ay ], [ true, %bb.as ] ; 2 uses
  %i.hm = phi i1 [ false, %.critedge383.thread ], [ true, %bb.az ], [ false, %.critedge20 ], [ true, %bb.ay ], [ false, %bb.as ] ; 2 uses
  %i.hn = load i32, ptr %i.bl, align 8, !tbaa !327
  %i.ho = and i32 %i.hn, -9
  %or.cond.i418 = icmp eq i32 %i.ho, 3            ; 4 uses
  %spec.select.i419 = select i1 %or.cond.i418, i64 6, i64 8 ; 10 uses
  %spec.select3.i420 = select i1 %or.cond.i418, ptr @_ZZL16getFastCCArgGPRsN4llvm8RISCVABI3ABIEE11FastCCEGPRs, ptr @_ZZN4llvm5RISCV10getArgGPRsERKNS_14RISCVSubtargetEE8ArgIGPRs ; 8 uses
  %or.cond25 = and i1 %i.hl, %i.l
  br i1 %or.cond25, label %bb.bb, label %.critedge27

bb.bb:                                            ; preds = %.critedge22
  %i.hp = getelementptr inbounds nuw i8, ptr %i.e, i64 486
  %i.hq = load i8, ptr %i.hp, align 2, !tbaa !323, !range !320, !noundef !58
  %i.hr = trunc nuw i8 %i.hq to i1
  br i1 %i.hr, label %bb.bc, label %.critedge27

bb.bc:                                            ; preds = %bb.bb
  %i.hs = tail call i32 @_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE(ptr noundef nonnull align 8 dereferenceable(420) %7, ptr nonnull %spec.select3.i420, i64 %spec.select.i419) ; 2 uses
  %.not360 = icmp eq i32 %i.hs, 0
  br i1 %.not360, label %.critedge27, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #10
  %i.ht = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i8 0, ptr %i.ht, align 8, !tbaa !44, !alias.scope !461
  %i.hu = getelementptr inbounds nuw i8, ptr %15, i64 16
  store i32 %0, ptr %i.hu, align 8, !tbaa !55, !alias.scope !461
  %i.hv = getelementptr inbounds nuw i8, ptr %15, i64 20 ; 2 uses
  %i.hw = load i8, ptr %i.hv, align 4, !alias.scope !461
  %i.hx = and i8 %i.hw, -128
  %i.hy = trunc i32 %3 to i8
  %i.hz = shl i8 %i.hy, 1
  %i.ia = and i8 %i.hz, 126
  %i.ib = or disjoint i8 %i.hx, %i.ia
  store i8 %i.ib, ptr %i.hv, align 4, !alias.scope !461
  %i.ic = getelementptr inbounds nuw i8, ptr %15, i64 22
  store i16 %1, ptr %i.ic, align 2, !tbaa !56, !alias.scope !461
  %i.id = getelementptr inbounds nuw i8, ptr %15, i64 24
  store i16 %2, ptr %i.id, align 8, !tbaa !56, !alias.scope !461
  store i32 %i.hs, ptr %15, align 8, !tbaa !40, !alias.scope !461
  call void @_ZN4llvm7CCState6addLocERKNS_11CCValAssignE(ptr noundef nonnull align 8 dereferenceable(420) %7, ptr noundef nonnull align 8 dereferenceable(26) %15)
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #10
  br label %bb.cx

.critedge27:                                      ; preds = %bb.bc, %.critedge22, %bb.bb
  %i.ie = and i1 %i.hm, %i.l
  %or.cond639 = or i1 %i.ie, %i.br
  br i1 %or.cond639, label %.lr.ph.i.i, label %.critedge391

.lr.ph.i.i:                                       ; preds = %.critedge27
  %i.if = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !39 ; 8 uses
  %29 = getelementptr inbounds nuw i8, ptr %i.ig, i64 8
  %30 = load i32, ptr %29, align 4, !tbaa !40
  %31 = and i32 %30, 16384
  %.not.i.i424 = icmp eq i32 %31, 0
  br i1 %.not.i.i424, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i426, label %32

32:                                               ; preds = %.lr.ph.i.i
  %33 = getelementptr inbounds nuw i8, ptr %i.ig, i64 8
  %34 = load i32, ptr %33, align 4, !tbaa !40
  %35 = and i32 %34, 32768
  %.not.i.i424.1 = icmp eq i32 %35, 0
  br i1 %.not.i.i424.1, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i426, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds nuw i8, ptr %i.ig, i64 8
  %38 = load i32, ptr %37, align 4, !tbaa !40
  %39 = and i32 %38, 65536
  %.not.i.i424.2 = icmp eq i32 %39, 0
  br i1 %.not.i.i424.2, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i426, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds nuw i8, ptr %i.ig, i64 8
  %42 = load i32, ptr %41, align 4, !tbaa !40
  %43 = and i32 %42, 131072
  %.not.i.i424.3 = icmp eq i32 %43, 0
  br i1 %.not.i.i424.3, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i426, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds nuw i8, ptr %i.ig, i64 8
  %46 = load i32, ptr %45, align 4, !tbaa !40
  %47 = and i32 %46, 262144
  %.not.i.i424.4 = icmp eq i32 %47, 0
  br i1 %.not.i.i424.4, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i426, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds nuw i8, ptr %i.ig, i64 8
  %50 = load i32, ptr %49, align 4, !tbaa !40
  %51 = and i32 %50, 524288
  %.not.i.i424.5 = icmp eq i32 %51, 0
  br i1 %.not.i.i424.5, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i426, label %52

52:                                               ; preds = %48
  br i1 %or.cond.i418, label %.critedge391, label %bb.be

bb.be:                                            ; preds = %52
  %53 = getelementptr inbounds nuw i8, ptr %i.ig, i64 8
  %i.ih = load i32, ptr %53, align 4, !tbaa !40
  %i.ii = and i32 %i.ih, 1048576
  %.not.i.i424.a = icmp eq i32 %i.ii, 0
  br i1 %.not.i.i424.a, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i426, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %54 = getelementptr inbounds nuw i8, ptr %i.ig, i64 8
  %55 = load i32, ptr %54, align 4, !tbaa !40
  %56 = and i32 %55, 2097152
  %.not.i.i424.7 = icmp eq i32 %56, 0
  br i1 %.not.i.i424.7, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i426, label %.critedge391

_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i426: ; preds = %bb.bf, %bb.be, %48, %44, %40, %36, %32, %.lr.ph.i.i
  %.0613.i.i423.lcssa = phi i64 [ 0, %.lr.ph.i.i ], [ 1, %32 ], [ 2, %36 ], [ 3, %40 ], [ 4, %44 ], [ 5, %48 ], [ 6, %bb.be ], [ 7, %bb.bf ] ; 2 uses
  %i.ij = icmp eq i64 %spec.select.i419, %.0613.i.i423.lcssa
  br i1 %i.ij, label %.critedge391, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit427

_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit427: ; preds = %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i426
  %i.ik = getelementptr inbounds nuw [2 x i8], ptr %spec.select3.i420, i64 %.0613.i.i423.lcssa
  %i.il = load i16, ptr %i.ik, align 2, !tbaa !42 ; 3 uses
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %7, i16 noundef zeroext %i.il) #10
  %.not361 = icmp eq i16 %i.il, 0
  br i1 %.not361, label %.critedge391, label %bb.bg

bb.bg:                                            ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit427
  %i.im = zext i16 %i.il to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #10
  %i.in = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i8 0, ptr %i.in, align 8, !tbaa !44, !alias.scope !462
  %i.io = getelementptr inbounds nuw i8, ptr %16, i64 16
  store i32 %0, ptr %i.io, align 8, !tbaa !55, !alias.scope !462
  %i.ip = getelementptr inbounds nuw i8, ptr %16, i64 20 ; 2 uses
  %i.iq = load i8, ptr %i.ip, align 4, !alias.scope !462
  %i.ir = and i8 %i.iq, -128
  %i.is = trunc i32 %3 to i8
  %i.it = shl i8 %i.is, 1
  %i.iu = and i8 %i.it, 126
  %i.iv = or disjoint i8 %i.iu, %i.ir
  %i.iw = or disjoint i8 %i.iv, 1
  store i8 %i.iw, ptr %i.ip, align 4, !alias.scope !462
  %i.ix = getelementptr inbounds nuw i8, ptr %16, i64 22
  store i16 %1, ptr %i.ix, align 2, !tbaa !56, !alias.scope !462
  %i.iy = getelementptr inbounds nuw i8, ptr %16, i64 24
  store i16 %i.n, ptr %i.iy, align 8, !tbaa !56, !alias.scope !462
  store i32 %i.im, ptr %16, align 8, !tbaa !40, !alias.scope !462
  %i.iz = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !57, !nonnull !58, !align !59 ; 4 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 8 ; 3 uses
  %i.jc = load i32, ptr %i.jb, align 8, !tbaa !60 ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ja, i64 12
  %i.je = load i32, ptr %i.jd, align 4, !tbaa !61
  %.not.i.i428 = icmp ult i32 %i.jc, %i.je
  br i1 %.not.i.i428, label %bb.bi, label %bb.bh, !prof !62

bb.bh:                                            ; preds = %bb.bg
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.ja, ptr noundef nonnull align 8 dereferenceable(26) %16)
  br label %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit429

bb.bi:                                            ; preds = %bb.bg
  %i.jf = zext i32 %i.jc to i64
  %i.jg = load ptr, ptr %i.ja, align 8, !tbaa !39
  %i.jh = getelementptr inbounds nuw [32 x i8], ptr %i.jg, i64 %i.jf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.jh, ptr noundef nonnull align 8 dereferenceable(32) %16, i64 32, i1 false)
  %i.ji = load i32, ptr %i.jb, align 8, !tbaa !60
  %i.jj = add i32 %i.ji, 1
  store i32 %i.jj, ptr %i.jb, align 8, !tbaa !60
  br label %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit429

_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit429: ; preds = %bb.bh, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #10
  br label %bb.cx

.critedge391:                                     ; preds = %52, %bb.bf, %.critedge27, %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i426, %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit427
  %or.cond647 = select i1 %i.l, i1 %i.hl, i1 %i.hm
  br i1 %or.cond647, label %.critedge31, label %.critedge33

.critedge31:                                      ; preds = %.critedge391
  %i.jk = tail call i32 @_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE(ptr noundef nonnull align 8 dereferenceable(420) %7, ptr nonnull %spec.select3.i420, i64 %spec.select.i419) ; 2 uses
  %.not362 = icmp eq i32 %i.jk, 0
  br i1 %.not362, label %.critedge33, label %bb.bj

bb.bj:                                            ; preds = %.critedge31
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #10
  %i.jl = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i8 0, ptr %i.jl, align 8, !tbaa !44, !alias.scope !463
  %i.jm = getelementptr inbounds nuw i8, ptr %17, i64 16
  store i32 %0, ptr %i.jm, align 8, !tbaa !55, !alias.scope !463
  %i.jn = getelementptr inbounds nuw i8, ptr %17, i64 20 ; 2 uses
  %i.jo = load i8, ptr %i.jn, align 4, !alias.scope !463
  %i.jp = and i8 %i.jo, -128
  %i.jq = or disjoint i8 %i.jp, 14
  store i8 %i.jq, ptr %i.jn, align 4, !alias.scope !463
  %i.jr = getelementptr inbounds nuw i8, ptr %17, i64 22
  store i16 %1, ptr %i.jr, align 2, !tbaa !56, !alias.scope !463
  %i.js = getelementptr inbounds nuw i8, ptr %17, i64 24
  store i16 %i.n, ptr %i.js, align 8, !tbaa !56, !alias.scope !463
  store i32 %i.jk, ptr %17, align 8, !tbaa !40, !alias.scope !463
  call void @_ZN4llvm7CCState6addLocERKNS_11CCValAssignE(ptr noundef nonnull align 8 dereferenceable(420) %7, ptr noundef nonnull align 8 dereferenceable(26) %17)
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #10
  br label %bb.cx

.critedge33:                                      ; preds = %.critedge391, %.critedge31
  %i.jt = and i64 %4, 34359738368
  %.not = icmp eq i64 %i.jt, 0
  br i1 %.not, label %.critedge35, label %bb.bk

bb.bk:                                            ; preds = %.critedge33
  %i.ju = lshr exact i32 %i.m, 2
  %i.jv = trunc i64 %4 to i32
  %i.jw = lshr i32 %i.jv, 26
  %i.jx = and i32 %i.jw, 31                       ; 2 uses
  %.not.i.i430 = icmp ne i32 %i.jx, 0
  %i.jy = zext nneg i32 %i.jx to i64
  %i.jz = add nsw i64 %i.jy, -1
  %i.ka = zext nneg i32 %i.ju to i64              ; 2 uses
  %i.kb = shl nuw nsw i64 1, %i.jz
  %i.kc = icmp eq i64 %i.kb, %i.ka
  %i.kd = select i1 %.not.i.i430, i1 %i.kc, i1 false
  br i1 %i.kd, label %bb.bl, label %.critedge35

bb.bl:                                            ; preds = %bb.bk
  %i.ke = tail call { i64, i8 } @_ZNK4llvm10DataLayout16getTypeAllocSizeEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912) %i.c, ptr noundef %6) #10 ; 2 uses
  %.fca.1.extract132 = extractvalue { i64, i8 } %i.ke, 1
  %i.kf = trunc nuw i8 %.fca.1.extract132 to i1
  br i1 %i.kf, label %bb.bm, label %_ZNK4llvm8TypeSizecvmEv.exit

bb.bm:                                            ; preds = %bb.bl
  tail call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.3) #9
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit:                     ; preds = %bb.bl
  %.fca.0.extract131 = extractvalue { i64, i8 } %i.ke, 0
  %i.kg = icmp ne i64 %.fca.0.extract131, %i.ka
  %.not363 = icmp eq i32 %i.bm, 3
  %or.cond630 = or i1 %.not363, %i.kg
  br i1 %or.cond630, label %.critedge35, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNK4llvm8TypeSizecvmEv.exit
  %i.kh = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !39 ; 8 uses
  %i.kj = trunc nuw nsw i64 %spec.select.i419 to i32 ; 2 uses
  %57 = getelementptr inbounds nuw i8, ptr %i.ki, i64 8
  %58 = load i32, ptr %57, align 4, !tbaa !40
  %59 = and i32 %58, 16384
  %.not.i431 = icmp eq i32 %59, 0
  br i1 %.not.i431, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit, label %60

60:                                               ; preds = %.lr.ph.i
  %61 = getelementptr inbounds nuw i8, ptr %i.ki, i64 8
  %62 = load i32, ptr %61, align 4, !tbaa !40
  %63 = and i32 %62, 32768
  %.not.i431.1 = icmp eq i32 %63, 0
  br i1 %.not.i431.1, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit, label %64

64:                                               ; preds = %60
  %65 = getelementptr inbounds nuw i8, ptr %i.ki, i64 8
  %66 = load i32, ptr %65, align 4, !tbaa !40
  %67 = and i32 %66, 65536
  %.not.i431.2 = icmp eq i32 %67, 0
  br i1 %.not.i431.2, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit, label %68

68:                                               ; preds = %64
  %69 = getelementptr inbounds nuw i8, ptr %i.ki, i64 8
  %70 = load i32, ptr %69, align 4, !tbaa !40
  %71 = and i32 %70, 131072
  %.not.i431.3 = icmp eq i32 %71, 0
  br i1 %.not.i431.3, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit, label %72

72:                                               ; preds = %68
  %73 = getelementptr inbounds nuw i8, ptr %i.ki, i64 8
  %74 = load i32, ptr %73, align 4, !tbaa !40
  %75 = and i32 %74, 262144
  %.not.i431.4 = icmp eq i32 %75, 0
  br i1 %.not.i431.4, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit, label %bb.bn

bb.bn:                                            ; preds = %72
  %76 = getelementptr inbounds nuw i8, ptr %i.ki, i64 8
  %i.kk = load i32, ptr %76, align 4, !tbaa !40
  %i.kl = and i32 %i.kk, 524288
  %.not.i431.5 = icmp eq i32 %i.kl, 0             ; 2 uses
  %brmerge = select i1 %.not.i431.5, i1 true, i1 %or.cond.i418
  %.mux = select i1 %.not.i431.5, i32 5, i32 %i.kj
  br i1 %brmerge, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %77 = getelementptr inbounds nuw i8, ptr %i.ki, i64 8
  %78 = load i32, ptr %77, align 4, !tbaa !40
  %79 = and i32 %78, 1048576
  %.not.i431.6 = icmp eq i32 %79, 0
  br i1 %.not.i431.6, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit, label %80

80:                                               ; preds = %bb.bo
  %81 = getelementptr inbounds nuw i8, ptr %i.ki, i64 8
  %82 = load i32, ptr %81, align 4, !tbaa !40
  %83 = and i32 %82, 2097152
  %.not.i431.7 = icmp eq i32 %83, 0
  %spec.select = select i1 %.not.i431.7, i32 7, i32 %i.kj
  br label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit

_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit: ; preds = %80, %bb.bn, %bb.bo, %72, %68, %64, %60, %.lr.ph.i
  %.1.i = phi i32 [ 4, %72 ], [ 0, %.lr.ph.i ], [ 1, %60 ], [ %spec.select, %80 ], [ 2, %64 ], [ %.mux, %bb.bn ], [ 3, %68 ], [ 6, %bb.bo ] ; 2 uses
  %i.km = zext i32 %.1.i to i64
  %.not364 = icmp eq i64 %spec.select.i419, %i.km
  %i.kn = and i32 %.1.i, 1
  %.not365 = icmp eq i32 %i.kn, 0
  %or.cond393 = or i1 %.not364, %.not365
  br i1 %or.cond393, label %.critedge35, label %bb.bp

bb.bp:                                            ; preds = %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit
  %i.ko = tail call i32 @_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE(ptr noundef nonnull align 8 dereferenceable(420) %7, ptr nonnull %spec.select3.i420, i64 %spec.select.i419) ; 0 uses
  br label %.critedge35

.critedge35:                                      ; preds = %_ZNK4llvm8TypeSizecvmEv.exit, %bb.bk, %.critedge33, %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit, %bb.bp
  %i.kp = getelementptr inbounds nuw i8, ptr %7, i64 144 ; 4 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %7, i64 288 ; 2 uses
  br i1 %i.l, label %.critedge37, label %bb.bq

bb.bq:                                            ; preds = %.critedge35
  %i.kr = icmp eq i16 %2, 15
  br i1 %i.kr, label %.critedge39, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.ks = tail call noundef zeroext i1 @_ZNK4llvm14RISCVSubtarget22isPExtPackedDoubleTypeENS_3MVTE(ptr noundef nonnull align 8 dereferenceable(519768) %i.e, i16 %2) #10
  %i.kt = and i64 %4, 512
  %i.ku = icmp eq i64 %i.kt, 0
  %or.cond634.not = select i1 %i.ks, i1 %i.ku, i1 false
  br i1 %or.cond634.not, label %bb.bs, label %.critedge37

bb.bs:                                            ; preds = %bb.br
  %i.kv = getelementptr inbounds nuw i8, ptr %7, i64 152
  %i.kw = load i32, ptr %i.kv, align 8, !tbaa !60
  %.not.i432 = icmp eq i32 %i.kw, 0
  br i1 %.not.i432, label %.critedge39, label %.critedge37

.critedge39:                                      ; preds = %bb.bq, %bb.bs
  %i.kx = tail call i32 @_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE(ptr noundef nonnull align 8 dereferenceable(420) %7, ptr nonnull %spec.select3.i420, i64 %spec.select.i419) ; 2 uses
  %.not372 = icmp eq i32 %i.kx, 0
  %i.ky = trunc i32 %3 to i8
  %i.kz = shl i8 %i.ky, 1
  %i.la = and i8 %i.kz, 126                       ; 4 uses
  br i1 %.not372, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %.critedge39
  %i.lb = tail call noundef i64 @_ZN4llvm7CCState13AllocateStackEjNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(420) %7, i32 noundef 8, i8 3)
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #10
  %i.lc = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.ld = getelementptr inbounds nuw i8, ptr %18, i64 16
  store i32 %0, ptr %i.ld, align 8, !tbaa !55, !alias.scope !464
  %i.le = getelementptr inbounds nuw i8, ptr %18, i64 20 ; 2 uses
  %i.lf = load i8, ptr %i.le, align 4, !alias.scope !464
  %i.lg = and i8 %i.lf, -128
  %i.lh = or disjoint i8 %i.lg, %i.la
  store i8 %i.lh, ptr %i.le, align 4, !alias.scope !464
  %i.li = getelementptr inbounds nuw i8, ptr %18, i64 22
  store i16 %1, ptr %i.li, align 2, !tbaa !56, !alias.scope !464
  %i.lj = getelementptr inbounds nuw i8, ptr %18, i64 24
  store i16 %2, ptr %i.lj, align 8, !tbaa !56, !alias.scope !464
  store i8 1, ptr %i.lc, align 8, !tbaa !44, !alias.scope !464
  store i64 %i.lb, ptr %18, align 8, !tbaa !333, !alias.scope !464
  call void @_ZN4llvm7CCState6addLocERKNS_11CCValAssignE(ptr noundef nonnull align 8 dereferenceable(420) %7, ptr noundef nonnull align 8 dereferenceable(26) %18)
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #10
  br label %bb.cx

bb.bu:                                            ; preds = %.critedge39
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #10
  %i.lk = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i8 0, ptr %i.lk, align 8, !tbaa !44, !alias.scope !465
  %i.ll = getelementptr inbounds nuw i8, ptr %19, i64 16
  store i32 %0, ptr %i.ll, align 8, !tbaa !55, !alias.scope !465
  %i.lm = getelementptr inbounds nuw i8, ptr %19, i64 20 ; 2 uses
  %i.ln = load i8, ptr %i.lm, align 4, !alias.scope !465
  %i.lo = and i8 %i.ln, -128
  %i.lp = or disjoint i8 %i.la, %i.lo
  %i.lq = or disjoint i8 %i.lp, 1
  store i8 %i.lq, ptr %i.lm, align 4, !alias.scope !465
  %i.lr = getelementptr inbounds nuw i8, ptr %19, i64 22
  store i16 %1, ptr %i.lr, align 2, !tbaa !56, !alias.scope !465
  %i.ls = getelementptr inbounds nuw i8, ptr %19, i64 24
  store i16 7, ptr %i.ls, align 8, !tbaa !56, !alias.scope !465
  store i32 %i.kx, ptr %19, align 8, !tbaa !40, !alias.scope !465
  call void @_ZN4llvm7CCState6addLocERKNS_11CCValAssignE(ptr noundef nonnull align 8 dereferenceable(420) %7, ptr noundef nonnull align 8 dereferenceable(26) %19)
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #10
  %i.lt = call i32 @_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE(ptr noundef nonnull align 8 dereferenceable(420) %7, ptr nonnull %spec.select3.i420, i64 %spec.select.i419) ; 2 uses
  %.not373 = icmp eq i32 %i.lt, 0
  br i1 %.not373, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #10
  %i.lu = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i8 0, ptr %i.lu, align 8, !tbaa !44, !alias.scope !466
  %i.lv = getelementptr inbounds nuw i8, ptr %20, i64 16
  store i32 %0, ptr %i.lv, align 8, !tbaa !55, !alias.scope !466
  %i.lw = getelementptr inbounds nuw i8, ptr %20, i64 20 ; 2 uses
  %i.lx = load i8, ptr %i.lw, align 4, !alias.scope !466
  %i.ly = and i8 %i.lx, -128
  %i.lz = or disjoint i8 %i.la, %i.ly
  %i.ma = or disjoint i8 %i.lz, 1
  store i8 %i.ma, ptr %i.lw, align 4, !alias.scope !466
  %i.mb = getelementptr inbounds nuw i8, ptr %20, i64 22
  store i16 %1, ptr %i.mb, align 2, !tbaa !56, !alias.scope !466
  %i.mc = getelementptr inbounds nuw i8, ptr %20, i64 24
  store i16 7, ptr %i.mc, align 8, !tbaa !56, !alias.scope !466
  store i32 %i.lt, ptr %20, align 8, !tbaa !40, !alias.scope !466
  call void @_ZN4llvm7CCState6addLocERKNS_11CCValAssignE(ptr noundef nonnull align 8 dereferenceable(420) %7, ptr noundef nonnull align 8 dereferenceable(26) %20)
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #10
  br label %bb.cx

bb.bw:                                            ; preds = %bb.bu
  %i.md = call noundef i64 @_ZN4llvm7CCState13AllocateStackEjNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(420) %7, i32 noundef 4, i8 2)
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #10
  %i.me = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.mf = getelementptr inbounds nuw i8, ptr %21, i64 16
  store i32 %0, ptr %i.mf, align 8, !tbaa !55, !alias.scope !467
  %i.mg = getelementptr inbounds nuw i8, ptr %21, i64 20 ; 2 uses
  %i.mh = load i8, ptr %i.mg, align 4, !alias.scope !467
  %i.mi = and i8 %i.mh, -128
  %i.mj = or disjoint i8 %i.la, %i.mi
  %i.mk = or disjoint i8 %i.mj, 1
  store i8 %i.mk, ptr %i.mg, align 4, !alias.scope !467
  %i.ml = getelementptr inbounds nuw i8, ptr %21, i64 22
  store i16 %1, ptr %i.ml, align 2, !tbaa !56, !alias.scope !467
  %i.mm = getelementptr inbounds nuw i8, ptr %21, i64 24
  store i16 7, ptr %i.mm, align 8, !tbaa !56, !alias.scope !467
  store i8 1, ptr %i.me, align 8, !tbaa !44, !alias.scope !467
  store i64 %i.md, ptr %21, align 8, !tbaa !333, !alias.scope !467
  call void @_ZN4llvm7CCState6addLocERKNS_11CCValAssignE(ptr noundef nonnull align 8 dereferenceable(420) %7, ptr noundef nonnull align 8 dereferenceable(26) %21)
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #10
  br label %bb.cx

.critedge37:                                      ; preds = %.critedge35, %bb.br, %bb.bs
  %i.mn = add i16 %2, -2
  %spec.select.i433 = icmp ult i16 %i.mn, 10      ; 2 uses
  br i1 %spec.select.i433, label %bb.ca, label %bb.bx

bb.bx:                                            ; preds = %.critedge37
  %i.mo = tail call noundef zeroext i1 @_ZNK4llvm14RISCVSubtarget16isPExtPackedTypeENS_3MVTE(ptr noundef nonnull align 8 dereferenceable(519768) %i.e, i16 %2) #10
  br i1 %i.mo, label %bb.by, label %.critedge41.thread

bb.by:                                            ; preds = %bb.bx
  %i.mp = zext i16 %2 to i64
  %i.mq = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.mp ; 2 uses
  %.sroa.2.0..sroa_idx.i = getelementptr i8, ptr %i.mq, i64 -8
  %.sroa.2.0.copyload.i = load i8, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.mr = trunc nuw i8 %.sroa.2.0.copyload.i to i1
  br i1 %i.mr, label %bb.bz, label %_ZNK4llvm8TypeSizecvmEv.exit436

bb.bz:                                            ; preds = %bb.by
  tail call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.3) #9
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit436:                  ; preds = %bb.by
  %i.ms = getelementptr i8, ptr %i.mq, i64 -16
  %.sroa.0.0.copyload.i = load i64, ptr %i.ms, align 16
  %i.mt = zext nneg i32 %i.m to i64
  %i.mu = icmp eq i64 %.sroa.0.0.copyload.i, %i.mt
  br i1 %i.mu, label %bb.ca, label %.critedge41.thread

bb.ca:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit436, %.critedge37
  %i.mv = and i64 %4, 4096
  %.not644 = icmp eq i64 %i.mv, 0
  br i1 %.not644, label %.critedge41, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.mw = getelementptr inbounds nuw i8, ptr %7, i64 152 ; 2 uses
  %i.mx = load i32, ptr %i.mw, align 8, !tbaa !60
  %i.my = icmp ult i32 %i.mx, 2
  br i1 %i.my, label %bb.cc, label %.critedge41

bb.cc:                                            ; preds = %bb.cb
  %i.mz = load ptr, ptr %i.kp, align 8, !tbaa !39
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull align 8 dereferenceable(32) %i.mz, i64 32, i1 false)
  %i.na = load ptr, ptr %i.kq, align 8, !tbaa !39
  %.sroa.088.0.copyload = load i64, ptr %i.na, align 4, !tbaa !332
  store i32 0, ptr %i.mw, align 8, !tbaa !60
  %i.nb = getelementptr inbounds nuw i8, ptr %7, i64 296
  store i32 0, ptr %i.nb, align 8, !tbaa !60
  %.val = load i8, ptr %i.j, align 8, !tbaa !324, !range !320, !noundef !58
  %.val394 = load i32, ptr %i.bl, align 8, !tbaa !327
  tail call fastcc void @_ZL19CC_RISCVAssign2XLenRN4llvm7CCStateENS_11CCValAssignENS_3ISD10ArgFlagsTyEjNS_3MVTES5_S4_RKNS_14RISCVSubtargetE(ptr noundef nonnull align 8 dereferenceable(420) %7, ptr noundef nonnull byval(%"class.llvm::CCValAssign") align 8 %22, i64 %.sroa.088.0.copyload, i32 noundef %0, i16 %1, i16 %2, i8 %.val, i32 %.val394)
  br label %bb.cx

.critedge41:                                      ; preds = %bb.ca, %bb.cb
  br i1 %spec.select.i433, label %bb.cd, label %.critedge41.thread

.critedge41.thread:                               ; preds = %bb.bx, %_ZNK4llvm8TypeSizecvmEv.exit436, %.critedge41
  %i.nc = tail call noundef zeroext i1 @_ZNK4llvm14RISCVSubtarget16isPExtPackedTypeENS_3MVTE(ptr noundef nonnull align 8 dereferenceable(519768) %i.e, i16 %2) #10
  br i1 %i.nc, label %bb.cd, label %bb.cg

bb.cd:                                            ; preds = %.critedge41.thread, %.critedge41
  %i.nd = and i64 %4, 512
  %.not645 = icmp eq i64 %i.nd, 0
  br i1 %.not645, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.ne = getelementptr inbounds nuw i8, ptr %7, i64 152
  %i.nf = load i32, ptr %i.ne, align 8, !tbaa !60
  %.not.i438 = icmp eq i32 %i.nf, 0
  br i1 %.not.i438, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cd
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #10
end_hunk_0
begin_hunk_1_@_ZN4llvm5RISCV10getArgGPRsERKNS_14RISCVSubtargetE:bb.a
  %spec.select = select i1 %or.cond, i64 6, i64 8
  %spec.select3 = select i1 %or.cond, ptr @_ZZL16getFastCCArgGPRsN4llvm8RISCVABI3ABIEE11FastCCEGPRs, ptr @_ZZN4llvm5RISCV10getArgGPRsERKNS_14RISCVSubtargetEE8ArgIGPRs
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %spec.select3, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %spec.select, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local { ptr, i64 } @_ZN4llvm5RISCV10getArgFPRsERKNS_14RISCVSubtargetE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(519768) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 404
  %i.b = load i8, ptr %i.a, align 4, !range !320
  %.fr = freeze i8 %i.b
  %i.c = trunc i8 %.fr to i1
  br i1 %i.c, label %switch.early.test, label %_ZN4llvm12is_containedIRA4_KNS_8RISCVABI3ABIES2_EEbOT_RKT0_.exit.thread

switch.early.test:                                ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 696
  %i.e = load i32, ptr %i.d, align 8, !tbaa !327  ; 2 uses
  %i.f = icmp ult i32 %i.e, 12
  %switch.maskindex = trunc i32 %i.e to i16
  %switch.shifted = lshr i16 2313, %switch.maskindex
  %switch.lobit = trunc i16 %switch.shifted to i1
  %or.cond = select i1 %i.f, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %_ZN4llvm12is_containedIRA4_KNS_8RISCVABI3ABIES2_EEbOT_RKT0_.exit.thread, label %bb.b

bb.b:                                             ; preds = %switch.early.test
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 409
  %i.h = load i8, ptr %i.g, align 1, !tbaa !474, !range !320, !noundef !58
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %_ZN4llvm12is_containedIRA4_KNS_8RISCVABI3ABIES2_EEbOT_RKT0_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 402
  %i.k = load i8, ptr %i.j, align 2, !tbaa !321, !range !320, !noundef !58
  %i.l = trunc nuw i8 %i.k to i1
  %spec.select = select i1 %i.l, ptr @_ZL9ArgFPR64s, ptr @_ZL9ArgFPR32s
  br label %_ZN4llvm12is_containedIRA4_KNS_8RISCVABI3ABIES2_EEbOT_RKT0_.exit.thread

_ZN4llvm12is_containedIRA4_KNS_8RISCVABI3ABIES2_EEbOT_RKT0_.exit.thread: ; preds = %switch.early.test, %bb.a, %bb.c, %bb.b
  %.sroa.0.0 = phi ptr [ %spec.select, %bb.c ], [ null, %bb.a ], [ @_ZL10ArgFPR128s, %bb.b ], [ null, %switch.early.test ]
  %.sroa.6.0 = phi i64 [ 8, %bb.c ], [ 0, %bb.a ], [ 8, %bb.b ], [ 0, %switch.early.test ]
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.sroa.6.0, 1
  ret { ptr, i64 } %.fca.1.insert
}

declare noundef nonnull align 8 dereferenceable(912) ptr @_ZNK4llvm15MachineFunction13getDataLayoutEv(ptr noundef nonnull align 8 dereferenceable(1065)) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZN4llvm21reportFatalUsageErrorEPKc(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm7CCState6addLocERKNS_11CCValAssignE(ptr noundef nonnull align 8 dereferenceable(420) %0, ptr noundef nonnull align 8 dereferenceable(26) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !57, !nonnull !58, !align !59 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !60   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !61
  %.not.i = icmp ult i32 %i.d, %i.f
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !62

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(26) %1)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE9push_backERKS1_.exit

bb.c:                                             ; preds = %bb.a
  %i.g = zext i32 %i.d to i64
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !39
  %i.i = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %i.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  %i.j = load i32, ptr %i.c, align 8, !tbaa !60
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.c, align 8, !tbaa !60
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE9push_backERKS1_.exit

_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE9push_backERKS1_.exit: ; preds = %bb.b, %bb.c
  ret void
}

declare noundef zeroext i1 @_ZNK4llvm14RISCVSubtarget16isPExtPackedTypeENS_3MVTE(ptr noundef nonnull align 8 dereferenceable(519768), i16) local_unnamed_addr #3

declare noundef zeroext i1 @_ZNK4llvm14RISCVSubtarget22isPExtPackedDoubleTypeENS_3MVTE(ptr noundef nonnull align 8 dereferenceable(519768), i16) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE(ptr noundef nonnull align 8 dereferenceable(420) %0, ptr %1, i64 %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not14.i = icmp eq i64 %2, 0
  br i1 %.not14.i, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !39
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %i.c = phi i64 [ 0, %.lr.ph.i ], [ %i.o, %bb.c ]
  %.0613.i = phi i32 [ 0, %.lr.ph.i ], [ %i.n, %bb.c ] ; 2 uses
  %i.d = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.c
  %i.e = load i16, ptr %i.d, align 2, !tbaa !42
  %i.f = zext i16 %i.e to i32                     ; 2 uses
  %i.g = lshr i32 %i.f, 5
  %i.h = zext nneg i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.h
  %i.j = load i32, ptr %i.i, align 4, !tbaa !40
  %i.k = and i32 %i.f, 31
  %i.l = shl nuw i32 1, %i.k
  %i.m = and i32 %i.l, %i.j
  %.not.i = icmp eq i32 %i.m, 0
  br i1 %.not.i, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = add i32 %.0613.i, 1                      ; 2 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = icmp ugt i64 %2, %i.o
  br i1 %i.p, label %bb.b, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.thread, !llvm.loop !0

_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit: ; preds = %bb.b
  %i.q = zext i32 %.0613.i to i64                 ; 2 uses
  %i.r = icmp eq i64 %2, %i.q
  br i1 %i.r, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.q
  %i.t = load i16, ptr %i.s, align 2, !tbaa !42   ; 2 uses
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %0, i16 noundef zeroext %i.t) #10
  %i.u = zext i16 %i.t to i32
  br label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.thread

_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.thread: ; preds = %bb.c, %bb.a, %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit, %bb.d
  %.sroa.04.0 = phi i32 [ %i.u, %bb.d ], [ 0, %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit ], [ 0, %bb.a ], [ 0, %bb.c ]
  ret i32 %.sroa.04.0
}

declare { i64, i8 } @_ZNK4llvm10DataLayout16getTypeAllocSizeEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZN4llvm7CCState13AllocateStackEjNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(420) %0, i32 noundef %1, i8 %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i8, ptr %i.a, align 8, !tbaa !330, !range !320, !noundef !58
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !331  ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = zext i32 %1 to i64
  %i.g = zext nneg i8 %2 to i64
  %i.h = shl nuw i64 1, %i.g                      ; 2 uses
  %i.i = add nsw i64 %i.f, -1
  %i.j = add i64 %i.i, %i.h
  %i.k = add i64 %i.j, %i.e
  %i.l = sub i64 0, %i.h
  %i.m = and i64 %i.k, %i.l                       ; 2 uses
  store i64 %i.m, ptr %i.d, align 8, !tbaa !331
  %i.n = sub i64 0, %i.m
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.o = zext nneg i8 %2 to i64
  %i.p = shl nuw i64 1, %i.o                      ; 2 uses
  %i.q = add i64 %i.p, -1
  %i.r = add i64 %i.q, %i.e
  %i.s = sub i64 0, %i.p
  %i.t = and i64 %i.r, %i.s                       ; 2 uses
  %i.u = zext i32 %1 to i64
  %i.v = add nsw i64 %i.t, %i.u
  store i64 %i.v, ptr %i.d, align 8, !tbaa !331
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i64 [ %i.n, %bb.b ], [ %i.t, %bb.c ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %.sroa.0.0.copyload.i = load i8, ptr %i.w, align 8, !tbaa !332
  %.sroa.speculated = tail call i8 @llvm.umax.i8(i8 %2, i8 %.sroa.0.0.copyload.i)
  store i8 %.sroa.speculated, ptr %i.w, align 8, !tbaa !332
  tail call void @_ZN4llvm7CCState18ensureMaxAlignmentENS_5AlignE(ptr noundef nonnull align 8 dereferenceable(420) %0, i8 %2) #10
  ret i64 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZL19CC_RISCVAssign2XLenRN4llvm7CCStateENS_11CCValAssignENS_3ISD10ArgFlagsTyEjNS_3MVTES5_S4_RKNS_14RISCVSubtargetE(ptr noundef nonnull align 8 dereferenceable(420) %0, ptr nofree noundef readonly byval(%"class.llvm::CCValAssign") align 8 captures(none) %1, i64 %2, i32 noundef %3, i16 %4, i16 %5, i8 %.656.val, i32 %.696.val) unnamed_addr #0 {
.lr.ph.i.i:
  %6 = alloca %"class.llvm::CCValAssign", align 8 ; 9 uses
  %7 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %8 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %9 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %10 = alloca %"class.llvm::CCValAssign", align 8 ; 10 uses
  %i.a = trunc nuw i8 %.656.val to i1             ; 2 uses
  %i.b = select i1 %i.a, i32 8, i32 4             ; 2 uses
  %i.c = and i32 %.696.val, -9
  %or.cond.i = icmp ne i32 %i.c, 3                ; 7 uses
  %spec.select.i = select i1 %or.cond.i, i64 8, i64 6 ; 2 uses
  %spec.select3.i = select i1 %or.cond.i, ptr @_ZZN4llvm5RISCV10getArgGPRsERKNS_14RISCVSubtargetEE8ArgIGPRs, ptr @_ZZL16getFastCCArgGPRsN4llvm8RISCVABI3ABIEE11FastCCEGPRs ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !39   ; 8 uses
  %11 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %12 = load i32, ptr %11, align 4, !tbaa !40
  %13 = and i32 %12, 16384
  %.not.i.i = icmp eq i32 %13, 0
  br i1 %.not.i.i, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i, label %14

14:                                               ; preds = %.lr.ph.i.i
  %15 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %16 = load i32, ptr %15, align 4, !tbaa !40
  %17 = and i32 %16, 32768
  %.not.i.i.1 = icmp eq i32 %17, 0
  br i1 %.not.i.i.1, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %20 = load i32, ptr %19, align 4, !tbaa !40
  %21 = and i32 %20, 65536
  %.not.i.i.2 = icmp eq i32 %21, 0
  br i1 %.not.i.i.2, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %24 = load i32, ptr %23, align 4, !tbaa !40
  %25 = and i32 %24, 131072
  %.not.i.i.3 = icmp eq i32 %25, 0
  br i1 %.not.i.i.3, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %28 = load i32, ptr %27, align 4, !tbaa !40
  %29 = and i32 %28, 262144
  %.not.i.i.4 = icmp eq i32 %29, 0
  br i1 %.not.i.i.4, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %32 = load i32, ptr %31, align 4, !tbaa !40
  %33 = and i32 %32, 524288
  %.not.i.i.5 = icmp eq i32 %33, 0
  br i1 %.not.i.i.5, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i, label %34

34:                                               ; preds = %30
  br i1 %or.cond.i, label %bb.a, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit.thread

bb.a:                                             ; preds = %34
  %35 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.f = load i32, ptr %35, align 4, !tbaa !40
  %i.g = and i32 %i.f, 1048576
  %.not.i.i.a = icmp eq i32 %i.g, 0
  br i1 %.not.i.i.a, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i, label %36

36:                                               ; preds = %bb.a
  br i1 %or.cond.i, label %bb.b, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit.thread

bb.b:                                             ; preds = %36
  %37 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %38 = load i32, ptr %37, align 4, !tbaa !40
  %39 = and i32 %38, 2097152
  %.not.i.i.7 = icmp eq i32 %39, 0
  br i1 %.not.i.i.7, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit.thread

_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i: ; preds = %bb.b, %bb.a, %30, %26, %22, %18, %14, %.lr.ph.i.i
  %.0613.i.i.lcssa = phi i64 [ 0, %.lr.ph.i.i ], [ 1, %14 ], [ 2, %18 ], [ 3, %22 ], [ 4, %26 ], [ 5, %30 ], [ 6, %bb.a ], [ 7, %bb.b ] ; 2 uses
  %i.h = icmp eq i64 %spec.select.i, %.0613.i.i.lcssa
  br i1 %i.h, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit.thread, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit

_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit: ; preds = %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %spec.select3.i, i64 %.0613.i.i.lcssa
  %i.j = load i16, ptr %i.i, align 2, !tbaa !42   ; 3 uses
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %0, i16 noundef zeroext %i.j) #10
  %.not53.not = icmp eq i16 %i.j, 0
  br i1 %.not53.not, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit
  %i.k = zext i16 %i.j to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = load i32, ptr %i.l, align 8, !tbaa !55
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 22
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i8 0, ptr %i.o, align 8, !tbaa !44, !alias.scope !485
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 %i.m, ptr %i.p, align 8, !tbaa !55, !alias.scope !485
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 20 ; 2 uses
  %i.r = load i8, ptr %i.q, align 4, !alias.scope !485
  %i.s = and i8 %i.r, -128
  store i8 %i.s, ptr %i.q, align 4, !alias.scope !485
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 22
  %i.u = load <2 x i16>, ptr %i.n, align 2, !tbaa !56
  store <2 x i16> %i.u, ptr %i.t, align 2, !tbaa !56, !alias.scope !485
  store i32 %i.k, ptr %6, align 8, !tbaa !40, !alias.scope !485
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !57, !nonnull !58, !align !59 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 3 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !60   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !61
  %.not.i.i55 = icmp ult i32 %i.y, %i.aa
  br i1 %.not.i.i55, label %bb.e, label %bb.d, !prof !62

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull align 8 dereferenceable(26) %6)
  br label %.lr.ph.i.i69

bb.e:                                             ; preds = %bb.c
  %i.ab = zext i32 %i.y to i64
  %i.ac = load ptr, ptr %i.w, align 8, !tbaa !39
  %i.ad = getelementptr inbounds nuw [32 x i8], ptr %i.ac, i64 %i.ab
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.ad, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false)
  %i.ae = load i32, ptr %i.x, align 8, !tbaa !60
  %i.af = add i32 %i.ae, 1
  store i32 %i.af, ptr %i.x, align 8, !tbaa !60
  br label %.lr.ph.i.i69

_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit.thread: ; preds = %34, %36, %bb.b, %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i, %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit
  %i.ag = zext nneg i32 %i.b to i64               ; 4 uses
  %i.ah = xor i8 %.656.val, 61
  %i.ai = sub nsw i8 63, %i.ah                    ; 6 uses
  %or.cond = or i1 %or.cond.i, %i.a
  br i1 %or.cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit.thread
  %i.aj = trunc i64 %2 to i32
  %i.ak = lshr i32 %i.aj, 26
  %i.al = and i32 %i.ak, 31                       ; 2 uses
  %.not.i.i56 = icmp eq i32 %i.al, 0
  %i.am = trunc nuw nsw i32 %i.al to i8
  %i.an = add nsw i8 %i.am, -1
  %i.ao = tail call i8 @llvm.umax.i8(i8 %i.ai, i8 %i.an)
  %.sroa.speculated = select i1 %.not.i.i56, i8 %i.ai, i8 %i.ao
  br label %bb.g

bb.g:                                             ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit.thread, %bb.f
  %.sroa.06.0 = phi i8 [ %.sroa.speculated, %bb.f ], [ %i.ai, %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit.thread ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !55
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 22
  %.sroa.0.0.copyload.i58 = load i16, ptr %i.ar, align 2, !tbaa !56
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.at = load i8, ptr %i.as, align 8, !tbaa !330, !range !320, !noundef !58
  %i.au = trunc nuw i8 %i.at to i1
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !331 ; 2 uses
  %i.ax = zext nneg i8 %.sroa.06.0 to i64
  %i.ay = shl nuw i64 1, %i.ax                    ; 4 uses
  br i1 %i.au, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.az = add nsw i64 %i.ag, -1
  %i.ba = add nuw i64 %i.az, %i.ay
  %i.bb = add i64 %i.ba, %i.aw
  %i.bc = sub i64 0, %i.ay
  %i.bd = and i64 %i.bb, %i.bc                    ; 2 uses
  %i.be = sub i64 0, %i.bd
  br label %_ZN4llvm7CCState13AllocateStackEjNS_5AlignE.exit

bb.i:                                             ; preds = %bb.g
  %i.bf = add i64 %i.ay, -1
  %i.bg = add i64 %i.bf, %i.aw
  %i.bh = sub i64 0, %i.ay
  %i.bi = and i64 %i.bg, %i.bh                    ; 2 uses
  %i.bj = add nsw i64 %i.bi, %i.ag
  br label %_ZN4llvm7CCState13AllocateStackEjNS_5AlignE.exit

_ZN4llvm7CCState13AllocateStackEjNS_5AlignE.exit: ; preds = %bb.h, %bb.i
  %.sink = phi i64 [ %i.bd, %bb.h ], [ %i.bj, %bb.i ]
  %.0.i = phi i64 [ %i.be, %bb.h ], [ %i.bi, %bb.i ]
  store i64 %.sink, ptr %i.av, align 8, !tbaa !331
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %.sroa.0.0.copyload.i.i = load i8, ptr %i.bk, align 8, !tbaa !332
  %.sroa.speculated.i = tail call i8 @llvm.umax.i8(i8 %.sroa.06.0, i8 %.sroa.0.0.copyload.i.i)
  store i8 %.sroa.speculated.i, ptr %i.bk, align 8, !tbaa !332
  tail call void @_ZN4llvm7CCState18ensureMaxAlignmentENS_5AlignE(ptr noundef nonnull align 8 dereferenceable(420) %0, i8 %.sroa.06.0) #10
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i59 = load i16, ptr %i.bl, align 8, !tbaa !56
  %i.bm = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i32 %i.aq, ptr %i.bn, align 8, !tbaa !55, !alias.scope !486
  %i.bo = getelementptr inbounds nuw i8, ptr %7, i64 20 ; 2 uses
  %i.bp = load i8, ptr %i.bo, align 4, !alias.scope !486
  %i.bq = and i8 %i.bp, -128
  store i8 %i.bq, ptr %i.bo, align 4, !alias.scope !486
  %i.br = getelementptr inbounds nuw i8, ptr %7, i64 22
  store i16 %.sroa.0.0.copyload.i58, ptr %i.br, align 2, !tbaa !56, !alias.scope !486
  %i.bs = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i16 %.sroa.0.0.copyload.i59, ptr %i.bs, align 8, !tbaa !56, !alias.scope !486
  store i8 1, ptr %i.bm, align 8, !tbaa !44, !alias.scope !486
  store i64 %.0.i, ptr %7, align 8, !tbaa !333, !alias.scope !486
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !57, !nonnull !58, !align !59 ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8 ; 3 uses
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !60 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 12
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !61
  %.not.i.i60 = icmp ult i32 %i.bw, %i.by
  br i1 %.not.i.i60, label %bb.k, label %bb.j, !prof !62

bb.j:                                             ; preds = %_ZN4llvm7CCState13AllocateStackEjNS_5AlignE.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.bu, ptr noundef nonnull align 8 dereferenceable(26) %7)
  br label %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit61

bb.k:                                             ; preds = %_ZN4llvm7CCState13AllocateStackEjNS_5AlignE.exit
  %i.bz = zext i32 %i.bw to i64
  %i.ca = load ptr, ptr %i.bu, align 8, !tbaa !39
  %i.cb = getelementptr inbounds nuw [32 x i8], ptr %i.ca, i64 %i.bz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.cb, ptr noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false)
  %i.cc = load i32, ptr %i.bv, align 8, !tbaa !60
  %i.cd = add i32 %i.cc, 1
  store i32 %i.cd, ptr %i.bv, align 8, !tbaa !60
  br label %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit61

_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit61: ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #10
  %i.ce = load i8, ptr %i.as, align 8, !tbaa !330, !range !320, !noundef !58
  %i.cf = trunc nuw i8 %i.ce to i1
  %i.cg = load i64, ptr %i.av, align 8, !tbaa !331 ; 2 uses
  %i.ch = zext nneg i8 %i.ai to i64
  %i.ci = shl nuw i64 1, %i.ch                    ; 4 uses
  br i1 %i.cf, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit61
  %i.cj = add nsw i64 %i.ag, -1
  %i.ck = add nuw i64 %i.cj, %i.ci
  %i.cl = add i64 %i.ck, %i.cg
  %i.cm = sub i64 0, %i.ci
  %i.cn = and i64 %i.cl, %i.cm                    ; 2 uses
  %i.co = sub i64 0, %i.cn
  br label %_ZN4llvm7CCState13AllocateStackEjNS_5AlignE.exit65

bb.m:                                             ; preds = %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit61
  %i.cp = add i64 %i.ci, -1
  %i.cq = add i64 %i.cp, %i.cg
  %i.cr = sub i64 0, %i.ci
  %i.cs = and i64 %i.cq, %i.cr                    ; 2 uses
  %i.ct = add nsw i64 %i.cs, %i.ag
  br label %_ZN4llvm7CCState13AllocateStackEjNS_5AlignE.exit65

_ZN4llvm7CCState13AllocateStackEjNS_5AlignE.exit65: ; preds = %bb.l, %bb.m
  %.sink23 = phi i64 [ %i.cn, %bb.l ], [ %i.ct, %bb.m ]
  %.0.i62 = phi i64 [ %i.co, %bb.l ], [ %i.cs, %bb.m ]
  store i64 %.sink23, ptr %i.av, align 8, !tbaa !331
  %.sroa.0.0.copyload.i.i63 = load i8, ptr %i.bk, align 8, !tbaa !332
  %.sroa.speculated.i64 = call i8 @llvm.umax.i8(i8 %i.ai, i8 %.sroa.0.0.copyload.i.i63)
  store i8 %.sroa.speculated.i64, ptr %i.bk, align 8, !tbaa !332
  call void @_ZN4llvm7CCState18ensureMaxAlignmentENS_5AlignE(ptr noundef nonnull align 8 dereferenceable(420) %0, i8 %i.ai) #10
  %i.cu = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.cv = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i32 %3, ptr %i.cv, align 8, !tbaa !55, !alias.scope !487
  %i.cw = getelementptr inbounds nuw i8, ptr %8, i64 20 ; 2 uses
  %i.cx = load i8, ptr %i.cw, align 4, !alias.scope !487
  %i.cy = and i8 %i.cx, -128
  store i8 %i.cy, ptr %i.cw, align 4, !alias.scope !487
  %i.cz = getelementptr inbounds nuw i8, ptr %8, i64 22
  store i16 %4, ptr %i.cz, align 2, !tbaa !56, !alias.scope !487
  %i.da = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i16 %5, ptr %i.da, align 8, !tbaa !56, !alias.scope !487
  store i8 1, ptr %i.cu, align 8, !tbaa !44, !alias.scope !487
  store i64 %.0.i62, ptr %8, align 8, !tbaa !333, !alias.scope !487
  %i.db = load ptr, ptr %i.bt, align 8, !tbaa !57, !nonnull !58, !align !59 ; 4 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 8 ; 3 uses
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !60 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 12
  %i.df = load i32, ptr %i.de, align 4, !tbaa !61
  %.not.i.i66 = icmp ult i32 %i.dd, %i.df
  br i1 %.not.i.i66, label %bb.o, label %bb.n, !prof !62

bb.n:                                             ; preds = %_ZN4llvm7CCState13AllocateStackEjNS_5AlignE.exit65
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.db, ptr noundef nonnull align 8 dereferenceable(26) %8)
  br label %.thread

bb.o:                                             ; preds = %_ZN4llvm7CCState13AllocateStackEjNS_5AlignE.exit65
  %i.dg = zext i32 %i.dd to i64
  %i.dh = load ptr, ptr %i.db, align 8, !tbaa !39
  %i.di = getelementptr inbounds nuw [32 x i8], ptr %i.dh, i64 %i.dg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.di, ptr noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false)
  %i.dj = load i32, ptr %i.dc, align 8, !tbaa !60
  %i.dk = add i32 %i.dj, 1
  store i32 %i.dk, ptr %i.dc, align 8, !tbaa !60
  br label %.thread

.thread:                                          ; preds = %bb.o, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #10
  br label %bb.y

.lr.ph.i.i69:                                     ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  %i.dl = load ptr, ptr %i.d, align 8, !tbaa !39  ; 8 uses
  %40 = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %41 = load i32, ptr %40, align 4, !tbaa !40
  %42 = and i32 %41, 16384
  %.not.i.i71 = icmp eq i32 %42, 0
  br i1 %.not.i.i71, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i73, label %43

43:                                               ; preds = %.lr.ph.i.i69
  %44 = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %45 = load i32, ptr %44, align 4, !tbaa !40
  %46 = and i32 %45, 32768
  %.not.i.i71.1 = icmp eq i32 %46, 0
  br i1 %.not.i.i71.1, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i73, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %49 = load i32, ptr %48, align 4, !tbaa !40
  %50 = and i32 %49, 65536
  %.not.i.i71.2 = icmp eq i32 %50, 0
  br i1 %.not.i.i71.2, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i73, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %53 = load i32, ptr %52, align 4, !tbaa !40
  %54 = and i32 %53, 131072
  %.not.i.i71.3 = icmp eq i32 %54, 0
  br i1 %.not.i.i71.3, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i73, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %57 = load i32, ptr %56, align 4, !tbaa !40
  %58 = and i32 %57, 262144
  %.not.i.i71.4 = icmp eq i32 %58, 0
  br i1 %.not.i.i71.4, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i73, label %59

59:                                               ; preds = %55
  %60 = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %61 = load i32, ptr %60, align 4, !tbaa !40
  %62 = and i32 %61, 524288
  %.not.i.i71.5 = icmp eq i32 %62, 0
  br i1 %.not.i.i71.5, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i73, label %63

63:                                               ; preds = %59
  br i1 %or.cond.i, label %bb.p, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit74.thread

bb.p:                                             ; preds = %63
  %64 = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %i.dm = load i32, ptr %64, align 4, !tbaa !40
  %i.dn = and i32 %i.dm, 1048576
  %.not.i.i71.a = icmp eq i32 %i.dn, 0
  br i1 %.not.i.i71.a, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i73, label %65

65:                                               ; preds = %bb.p
  br i1 %or.cond.i, label %bb.q, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit74.thread

bb.q:                                             ; preds = %65
  %66 = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %67 = load i32, ptr %66, align 4, !tbaa !40
  %68 = and i32 %67, 2097152
  %.not.i.i71.7 = icmp eq i32 %68, 0
  br i1 %.not.i.i71.7, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i73, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit74.thread

_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i73: ; preds = %bb.q, %bb.p, %59, %55, %51, %47, %43, %.lr.ph.i.i69
  %.0613.i.i70.lcssa = phi i64 [ 0, %.lr.ph.i.i69 ], [ 1, %43 ], [ 2, %47 ], [ 3, %51 ], [ 4, %55 ], [ 5, %59 ], [ 6, %bb.p ], [ 7, %bb.q ] ; 2 uses
  %i.do = icmp eq i64 %spec.select.i, %.0613.i.i70.lcssa
  br i1 %i.do, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit74.thread, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit74

_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit74: ; preds = %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i73
  %i.dp = getelementptr inbounds nuw [2 x i8], ptr %spec.select3.i, i64 %.0613.i.i70.lcssa
  %i.dq = load i16, ptr %i.dp, align 2, !tbaa !42 ; 3 uses
  call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %0, i16 noundef zeroext %i.dq) #10
  %.not = icmp eq i16 %i.dq, 0
  br i1 %.not, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit74.thread, label %bb.r

bb.r:                                             ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit74
  %i.dr = zext i16 %i.dq to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #10
  %i.ds = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i8 0, ptr %i.ds, align 8, !tbaa !44, !alias.scope !488
  %i.dt = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i32 %3, ptr %i.dt, align 8, !tbaa !55, !alias.scope !488
  %i.du = getelementptr inbounds nuw i8, ptr %9, i64 20 ; 2 uses
  %i.dv = load i8, ptr %i.du, align 4, !alias.scope !488
  %i.dw = and i8 %i.dv, -128
  store i8 %i.dw, ptr %i.du, align 4, !alias.scope !488
  %i.dx = getelementptr inbounds nuw i8, ptr %9, i64 22
  store i16 %4, ptr %i.dx, align 2, !tbaa !56, !alias.scope !488
  %i.dy = getelementptr inbounds nuw i8, ptr %9, i64 24
  store i16 %5, ptr %i.dy, align 8, !tbaa !56, !alias.scope !488
  store i32 %i.dr, ptr %9, align 8, !tbaa !40, !alias.scope !488
  %i.dz = load ptr, ptr %i.v, align 8, !tbaa !57, !nonnull !58, !align !59 ; 4 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 8 ; 3 uses
  %i.eb = load i32, ptr %i.ea, align 8, !tbaa !60 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dz, i64 12
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !61
  %.not.i.i75 = icmp ult i32 %i.eb, %i.ed
  br i1 %.not.i.i75, label %bb.t, label %bb.s, !prof !62

bb.s:                                             ; preds = %bb.r
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.dz, ptr noundef nonnull align 8 dereferenceable(26) %9)
  br label %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit76

bb.t:                                             ; preds = %bb.r
  %i.ee = zext i32 %i.eb to i64
  %i.ef = load ptr, ptr %i.dz, align 8, !tbaa !39
  %i.eg = getelementptr inbounds nuw [32 x i8], ptr %i.ef, i64 %i.ee
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.eg, ptr noundef nonnull align 8 dereferenceable(32) %9, i64 32, i1 false)
  %i.eh = load i32, ptr %i.ea, align 8, !tbaa !60
  %i.ei = add i32 %i.eh, 1
  store i32 %i.ei, ptr %i.ea, align 8, !tbaa !60
  br label %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit76

_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit76: ; preds = %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #10
  br label %bb.y

_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit74.thread: ; preds = %63, %65, %bb.q, %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i73, %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit74
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #10
  %i.ej = zext nneg i32 %i.b to i64               ; 2 uses
  %i.ek = xor i8 %.656.val, 61
  %i.el = sub nsw i8 63, %i.ek                    ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.en = load i8, ptr %i.em, align 8, !tbaa !330, !range !320, !noundef !58
  %i.eo = trunc nuw i8 %i.en to i1
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !331 ; 2 uses
  %i.er = zext nneg i8 %i.el to i64
  %i.es = shl nuw i64 1, %i.er                    ; 4 uses
  br i1 %i.eo, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit74.thread
  %i.et = add nsw i64 %i.ej, -1
  %i.eu = add nuw i64 %i.et, %i.es
  %i.ev = add i64 %i.eu, %i.eq
  %i.ew = sub i64 0, %i.es
  %i.ex = and i64 %i.ev, %i.ew                    ; 2 uses
  %i.ey = sub i64 0, %i.ex
  br label %_ZN4llvm7CCState13AllocateStackEjNS_5AlignE.exit80

bb.v:                                             ; preds = %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit74.thread
  %i.ez = add i64 %i.es, -1
  %i.fa = add i64 %i.ez, %i.eq
  %i.fb = sub i64 0, %i.es
  %i.fc = and i64 %i.fa, %i.fb                    ; 2 uses
  %i.fd = add nsw i64 %i.fc, %i.ej
  br label %_ZN4llvm7CCState13AllocateStackEjNS_5AlignE.exit80

_ZN4llvm7CCState13AllocateStackEjNS_5AlignE.exit80: ; preds = %bb.u, %bb.v
  %.sink24 = phi i64 [ %i.ex, %bb.u ], [ %i.fd, %bb.v ]
  %.0.i77 = phi i64 [ %i.ey, %bb.u ], [ %i.fc, %bb.v ]
  store i64 %.sink24, ptr %i.ep, align 8, !tbaa !331
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %.sroa.0.0.copyload.i.i78 = load i8, ptr %i.fe, align 8, !tbaa !332
  %.sroa.speculated.i79 = call i8 @llvm.umax.i8(i8 %i.el, i8 %.sroa.0.0.copyload.i.i78)
  store i8 %.sroa.speculated.i79, ptr %i.fe, align 8, !tbaa !332
  call void @_ZN4llvm7CCState18ensureMaxAlignmentENS_5AlignE(ptr noundef nonnull align 8 dereferenceable(420) %0, i8 %i.el) #10
  %i.ff = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.fg = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i32 %3, ptr %i.fg, align 8, !tbaa !55, !alias.scope !489
  %i.fh = getelementptr inbounds nuw i8, ptr %10, i64 20 ; 2 uses
  %i.fi = load i8, ptr %i.fh, align 4, !alias.scope !489
  %i.fj = and i8 %i.fi, -128
  store i8 %i.fj, ptr %i.fh, align 4, !alias.scope !489
  %i.fk = getelementptr inbounds nuw i8, ptr %10, i64 22
  store i16 %4, ptr %i.fk, align 2, !tbaa !56, !alias.scope !489
  %i.fl = getelementptr inbounds nuw i8, ptr %10, i64 24
  store i16 %5, ptr %i.fl, align 8, !tbaa !56, !alias.scope !489
  store i8 1, ptr %i.ff, align 8, !tbaa !44, !alias.scope !489
  store i64 %.0.i77, ptr %10, align 8, !tbaa !333, !alias.scope !489
  %i.fm = load ptr, ptr %i.v, align 8, !tbaa !57, !nonnull !58, !align !59 ; 4 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 8 ; 3 uses
  %i.fo = load i32, ptr %i.fn, align 8, !tbaa !60 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fm, i64 12
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !61
  %.not.i.i81 = icmp ult i32 %i.fo, %i.fq
  br i1 %.not.i.i81, label %bb.x, label %bb.w, !prof !62

bb.w:                                             ; preds = %_ZN4llvm7CCState13AllocateStackEjNS_5AlignE.exit80
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.fm, ptr noundef nonnull align 8 dereferenceable(26) %10)
  br label %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit82

bb.x:                                             ; preds = %_ZN4llvm7CCState13AllocateStackEjNS_5AlignE.exit80
  %i.fr = zext i32 %i.fo to i64
  %i.fs = load ptr, ptr %i.fm, align 8, !tbaa !39
  %i.ft = getelementptr inbounds nuw [32 x i8], ptr %i.fs, i64 %i.fr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.ft, ptr noundef nonnull align 8 dereferenceable(32) %10, i64 32, i1 false)
  %i.fu = load i32, ptr %i.fn, align 8, !tbaa !60
  %i.fv = add i32 %i.fu, 1
  store i32 %i.fv, ptr %i.fn, align 8, !tbaa !60
  br label %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit82

_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit82: ; preds = %bb.w, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #10
  br label %bb.y

bb.y:                                             ; preds = %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit76, %_ZN4llvm7CCState6addLocERKNS_11CCValAssignE.exit82, %.thread
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE9push_backERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(26) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !60   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !61
  %.not = icmp ult i32 %i.b, %i.d
  br i1 %.not, label %bb.c, label %bb.b, !prof !62

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(26) %1)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = zext i32 %i.b to i64
  %i.f = load ptr, ptr %0, align 8, !tbaa !39
  %i.g = getelementptr inbounds nuw [32 x i8], ptr %i.f, i64 %i.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  %i.h = load i32, ptr %i.a, align 8, !tbaa !60
  %i.i = add i32 %i.h, 1
  store i32 %i.i, ptr %i.a, align 8, !tbaa !60
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseINS_3ISD10ArgFlagsTyELb1EE9push_backES2_(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 %1, i64 %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !60   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !61
  %.not = icmp ult i32 %i.b, %i.d
  br i1 %.not, label %bb.c, label %bb.b, !prof !62

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4llvm23SmallVectorTemplateBaseINS_3ISD10ArgFlagsTyELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 %1, i64 %2)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = zext i32 %i.b to i64
  %i.f = load ptr, ptr %0, align 8, !tbaa !39
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.e ; 2 uses
  store i64 %1, ptr %i.g, align 1
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %2, ptr %.sroa.3.0..sroa_idx, align 1
  %i.h = load i32, ptr %i.a, align 8, !tbaa !60
  %i.i = add i32 %i.h, 1
  store i32 %i.i, ptr %i.a, align 8, !tbaa !60
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc i32 @_ZL14allocateRVVRegN4llvm3MVTEjRNS_7CCStateERKNS_19RISCVTargetLoweringE(i16 %0, ptr noundef nonnull align 8 dereferenceable(420) %1, ptr noundef nonnull align 8 dereferenceable(518448) %2) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !326
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 528
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef ptr %i.c(ptr noundef nonnull align 8 dereferenceable(518435) %2, i16 %0, i1 noundef zeroext false) #10 ; 15 uses
  %i.e = icmp eq ptr %i.d, getelementptr inbounds nuw (i8, ptr @_ZN4llvm27RISCVMCRegisterClassStorageE, i64 4416)
  br i1 %i.e, label %bb.b, label %bb.s

bb.b:                                             ; preds = %bb.a
  %i.f = zext i16 %0 to i64
  %i.g = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.f
  %i.h = getelementptr i8, ptr %i.g, i64 -2
  %i.i = load i16, ptr %i.h, align 2, !tbaa !56
  %i.j = icmp eq i16 %i.i, 2
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !39   ; 2 uses
  br i1 %i.j, label %bb.c, label %_ZN4llvm7CCState11AllocateRegEt.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !40
  %i.o = and i32 %i.n, 16
  %.not.i = icmp eq i32 %i.o, 0
  br i1 %.not.i, label %_ZN4llvm7CCState11AllocateRegEt.exit, label %_ZN4llvm7CCState11AllocateRegEt.exit.thread

_ZN4llvm7CCState11AllocateRegEt.exit:             ; preds = %bb.c
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %1, i16 noundef zeroext 36) #10
  br label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit

_ZN4llvm7CCState11AllocateRegEt.exit.thread:      ; preds = %bb.b, %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !40   ; 16 uses
  %i.r = and i32 %i.q, 4096
  %.not.i.i = icmp eq i32 %i.r, 0
  br i1 %.not.i.i, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm7CCState11AllocateRegEt.exit.thread
  %i.s = and i32 %i.q, 8192
  %.not.i.i.1 = icmp eq i32 %i.s, 0
  br i1 %.not.i.i.1, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = and i32 %i.q, 16384
  %.not.i.i.2 = icmp eq i32 %i.t, 0
  br i1 %.not.i.i.2, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = and i32 %i.q, 32768
  %.not.i.i.3 = icmp eq i32 %i.u, 0
  br i1 %.not.i.i.3, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = and i32 %i.q, 65536
  %.not.i.i.4 = icmp eq i32 %i.v, 0
  br i1 %.not.i.i.4, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = and i32 %i.q, 131072
end_hunk_1
