Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/PPCISelLowering?download=true
inline.NumInlined: 17285
inline.NumDeleted: 3532
loop-unroll.NumCompletelyUnrolled: 104
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 111
begin_hunk_0_@_ZL11isPCRelNodeN4llvm7SDValueE:bb.a
    i32 40, label %_ZN4llvm8dyn_castINS_19GlobalAddressSDNodeENS_7SDValueEEEDcRT0_.exit.i
  ]

_ZN4llvm8dyn_castINS_19GlobalAddressSDNodeENS_7SDValueEEEDcRT0_.exit.i: ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.b, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.g = load i32, ptr %i.f, align 8, !tbaa !586
  %switch.tableidx1 = add i32 %i.g, -3            ; 2 uses
  %i.h = icmp ult i32 %switch.tableidx1, 24
  %switch.shifted5 = lshr i32 14681857, %switch.tableidx1
  %switch.lobit6 = trunc i32 %switch.shifted5 to i1
  %or.cond14 = select i1 %i.h, i1 %switch.lobit6, i1 false
  br i1 %or.cond14, label %_ZL16isValidPCRelNodeIN4llvm18ConstantPoolSDNodeEEbNS0_7SDValueE.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8dyn_castINS_19GlobalAddressSDNodeENS_7SDValueEEEDcRT0_.exit.i
  switch i32 %i.b, label %_ZL16isValidPCRelNodeIN4llvm18ConstantPoolSDNodeEEbNS0_7SDValueE.exit [
    i32 20, label %_ZN4llvm8dyn_castINS_18BlockAddressSDNodeENS_7SDValueEEEDcRT0_.exit.i
    i32 17, label %_ZN4llvm8dyn_castINS_15JumpTableSDNodeENS_7SDValueEEEDcRT0_.exit.i
  ]

_ZN4llvm8dyn_castINS_15JumpTableSDNodeENS_7SDValueEEEDcRT0_.exit.i: ; preds = %bb.b, %bb.a, %bb.a, %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.j = load i32, ptr %i.i, align 4, !tbaa !588
  %switch.tableidx7 = add i32 %i.j, -3            ; 2 uses
  %i.k = icmp ult i32 %switch.tableidx7, 24
  %switch.shifted11 = lshr i32 14681857, %switch.tableidx7
  %switch.lobit12 = trunc i32 %switch.shifted11 to i1
  %or.cond15 = select i1 %i.k, i1 %switch.lobit12, i1 false
  br i1 %or.cond15, label %_ZL16isValidPCRelNodeIN4llvm18ConstantPoolSDNodeEEbNS0_7SDValueE.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm8dyn_castINS_15JumpTableSDNodeENS_7SDValueEEEDcRT0_.exit.i
  %cond = icmp eq i32 %i.b, 20
  br i1 %cond, label %_ZN4llvm8dyn_castINS_18BlockAddressSDNodeENS_7SDValueEEEDcRT0_.exit.i, label %_ZL16isValidPCRelNodeIN4llvm18ConstantPoolSDNodeEEbNS0_7SDValueE.exit.fold.split

_ZN4llvm8dyn_castINS_18BlockAddressSDNodeENS_7SDValueEEEDcRT0_.exit.i: ; preds = %bb.d, %bb.c, %bb.b, %bb.a, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.m = load i32, ptr %i.l, align 8, !tbaa !591  ; 2 uses
  %i.n = icmp ult i32 %i.m, 27
  br i1 %i.n, label %switch.lookup13, label %_ZL16isValidPCRelNodeIN4llvm18ConstantPoolSDNodeEEbNS0_7SDValueE.exit.fold.split

_ZL16isValidPCRelNodeIN4llvm18ConstantPoolSDNodeEEbNS0_7SDValueE.exit.fold.split: ; preds = %_ZN4llvm8dyn_castINS_18BlockAddressSDNodeENS_7SDValueEEEDcRT0_.exit.i, %bb.d, %bb.a
  br label %_ZL16isValidPCRelNodeIN4llvm18ConstantPoolSDNodeEEbNS0_7SDValueE.exit

switch.lookup13:                                  ; preds = %_ZN4llvm8dyn_castINS_18BlockAddressSDNodeENS_7SDValueEEEDcRT0_.exit.i
  %switch.cast = trunc nuw i32 %i.m to i27
  %switch.downshift = lshr i27 -16762872, %switch.cast
  %switch.masked = trunc i27 %switch.downshift to i1
  br label %_ZL16isValidPCRelNodeIN4llvm18ConstantPoolSDNodeEEbNS0_7SDValueE.exit

_ZL16isValidPCRelNodeIN4llvm18ConstantPoolSDNodeEEbNS0_7SDValueE.exit: ; preds = %_ZN4llvm8dyn_castINS_15JumpTableSDNodeENS_7SDValueEEEDcRT0_.exit.i, %_ZN4llvm8dyn_castINS_19GlobalAddressSDNodeENS_7SDValueEEEDcRT0_.exit.i, %_ZN4llvm8dyn_castINS_18ConstantPoolSDNodeENS_7SDValueEEEDcRT0_.exit.i, %switch.lookup13, %bb.a, %_ZL16isValidPCRelNodeIN4llvm18ConstantPoolSDNodeEEbNS0_7SDValueE.exit.fold.split, %bb.b, %bb.c
  %i.o = phi i1 [ true, %_ZN4llvm8dyn_castINS_18ConstantPoolSDNodeENS_7SDValueEEEDcRT0_.exit.i ], [ false, %_ZL16isValidPCRelNodeIN4llvm18ConstantPoolSDNodeEEbNS0_7SDValueE.exit.fold.split ], [ true, %_ZN4llvm8dyn_castINS_19GlobalAddressSDNodeENS_7SDValueEEEDcRT0_.exit.i ], [ true, %bb.a ], [ false, %bb.c ], [ false, %bb.b ], [ %switch.masked, %switch.lookup13 ], [ true, %_ZN4llvm8dyn_castINS_15JumpTableSDNodeENS_7SDValueEEEDcRT0_.exit.i ]
  ret i1 %i.o
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZL33computeFlagsForAddressComputationN4llvm7SDValueERjRNS_12SelectionDAGE(ptr %0, i32 %1, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %2, ptr noundef nonnull align 8 dereferenceable(920) %3) unnamed_addr #1 {
bb.a:
  %4 = alloca %"class.llvm::SDValue", align 8     ; 3 uses
  store ptr %0, ptr %4, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !559
  switch i32 %i.c, label %bb.v [
    i32 37, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit
    i32 12, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit
    i32 59, label %bb.w
  ]

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit: ; preds = %bb.a, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !570  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 10 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 3 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !572  ; 6 uses
  %i.i = add i32 %i.h, -1                         ; 2 uses
  %i.j = and i32 %i.i, 63
  %i.k = zext nneg i32 %i.j to i64
  %i.l = shl nuw i64 1, %i.k
  %i.m = icmp ult i32 %i.h, 65                    ; 3 uses
  %i.n = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.o = lshr i32 %i.i, 6
  %i.p = zext nneg i32 %i.o to i64
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.p
  %.in.i.i.i.i.i.i = select i1 %i.m, ptr %i.f, ptr %i.q
  %i.r = load i64, ptr %.in.i.i.i.i.i.i, align 8, !tbaa !204
  %i.s = and i64 %i.l, %i.r
  %.not.i.i.i = icmp eq i64 %i.s, 0
  %i.t = ptrtoint ptr %i.n to i64                 ; 2 uses
  br i1 %.not.i.i.i, label %bb.f, label %bb.b

bb.b:                                             ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit
  br i1 %i.m, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.u = icmp eq i32 %i.h, 0
  br i1 %i.u, label %_ZNK4llvm5APInt12isSignedIntNEj.exit, label %bb.d, !prof !581

bb.d:                                             ; preds = %bb.c
  %i.v = sub nuw nsw i32 64, %i.h
  %i.w = zext nneg i32 %i.v to i64
  %i.x = shl i64 %i.t, %i.w
  %i.y = xor i64 %i.x, -1
  %i.z = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.y, i1 false)
  %i.aa = trunc nuw nsw i64 %i.z to i32
  br label %_ZNK4llvm5APInt12isSignedIntNEj.exit

bb.e:                                             ; preds = %bb.b
  %i.ab = tail call noundef i32 @_ZNK4llvm5APInt24countLeadingOnesSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %i.f) #33
  br label %_ZNK4llvm5APInt12isSignedIntNEj.exit

bb.f:                                             ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit
  br i1 %i.m, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %.neg.i.i.i.i = add nsw i32 %i.h, -64
  %i.ac = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.t, i1 false)
  %i.ad = trunc nuw nsw i64 %i.ac to i32
  %i.ae = add nsw i32 %.neg.i.i.i.i, %i.ad
  br label %_ZNK4llvm5APInt12isSignedIntNEj.exit

bb.h:                                             ; preds = %bb.f
  %i.af = tail call noundef i32 @_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %i.f) #33
  br label %_ZNK4llvm5APInt12isSignedIntNEj.exit

_ZNK4llvm5APInt12isSignedIntNEj.exit:             ; preds = %bb.c, %bb.d, %bb.e, %bb.g, %bb.h
  %i.ag = phi i32 [ 0, %bb.c ], [ %i.ab, %bb.e ], [ %i.aa, %bb.d ], [ %i.ae, %bb.g ], [ %i.af, %bb.h ]
  %i.ah = add i32 %i.h, 1
  %i.ai = sub i32 %i.ah, %i.ag
  %i.aj = icmp ult i32 %i.ai, 33
  br i1 %i.aj, label %"_ZZL33computeFlagsForAddressComputationN4llvm7SDValueERjRNS_12SelectionDAGEENK3$_0clEm.exit", label %_ZL18setAlignFlagsForFIN4llvm7SDValueERjRNS_12SelectionDAGE.exit

"_ZZL33computeFlagsForAddressComputationN4llvm7SDValueERjRNS_12SelectionDAGEENK3$_0clEm.exit": ; preds = %_ZNK4llvm5APInt12isSignedIntNEj.exit
  %i.ak = load i32, ptr %2, align 4, !tbaa !332   ; 2 uses
  %i.al = or i32 %i.ak, 8192                      ; 2 uses
  store i32 %i.al, ptr %2, align 4, !tbaa !332
  %i.am = load i32, ptr %i.g, align 8, !tbaa !572
  %i.an = icmp ult i32 %i.am, 65
  %i.ao = load ptr, ptr %i.f, align 8
  %spec.select.i = select i1 %i.an, ptr %i.f, ptr %i.ao
  %.0.i = load i64, ptr %spec.select.i, align 8, !tbaa !204 ; 2 uses
  %i.ap = and i64 %.0.i, 3
  %i.aq = icmp eq i64 %i.ap, 0                    ; 2 uses
  %i.ar = or i32 %i.ak, 8448
  %i.as = select i1 %i.aq, i32 %i.ar, i32 %i.al   ; 2 uses
  %i.at = and i64 %.0.i, 15
  %i.au = icmp eq i64 %i.at, 0
  %i.av = or i32 %i.as, 512
  %i.aw = select i1 %i.au, i32 %i.av, i32 %i.as   ; 3 uses
  br i1 %i.aq, label %bb.i, label %bb.j

bb.i:                                             ; preds = %"_ZZL33computeFlagsForAddressComputationN4llvm7SDValueERjRNS_12SelectionDAGEENK3$_0clEm.exit"
  store i32 %i.aw, ptr %2, align 4, !tbaa !332
  br label %bb.j

bb.j:                                             ; preds = %"_ZZL33computeFlagsForAddressComputationN4llvm7SDValueERjRNS_12SelectionDAGEENK3$_0clEm.exit", %bb.i
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 56
  %.val40 = load ptr, ptr %i.ax, align 8
  %i.ay = load i32, ptr %i.b, align 8, !tbaa !559 ; 2 uses
  switch i32 %i.ay, label %bb.k [
    i32 59, label %.thread.i
    i32 194, label %.thread.i
  ]

.thread.i:                                        ; preds = %bb.j, %bb.j
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !557
  %.sroa.speculate.load..i = load ptr, ptr %i.ba, align 8, !tbaa !558 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.sroa.speculate.load..i, i64 24
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 8, !tbaa !559
  br label %bb.k

bb.k:                                             ; preds = %.thread.i, %bb.j
  %i.bb = phi i32 [ %.pre.i, %.thread.i ], [ %i.ay, %bb.j ]
  %i.bc = phi i1 [ true, %.thread.i ], [ false, %bb.j ]
  %.sroa.speculated.i = phi ptr [ %.sroa.speculate.load..i, %.thread.i ], [ %0, %bb.j ]
  switch i32 %i.bb, label %_ZL18setAlignFlagsForFIN4llvm7SDValueERjRNS_12SelectionDAGE.exit [
    i32 41, label %_ZN4llvm8dyn_castINS_16FrameIndexSDNodeENS_7SDValueEEEDcRKT0_.exit.i
    i32 16, label %_ZN4llvm8dyn_castINS_16FrameIndexSDNodeENS_7SDValueEEEDcRKT0_.exit.i
  ]

_ZN4llvm8dyn_castINS_16FrameIndexSDNodeENS_7SDValueEEEDcRKT0_.exit.i: ; preds = %bb.k, %bb.k
  %i.bd = getelementptr inbounds nuw i8, ptr %.val40, i64 48
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !594 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.speculated.i, i64 88
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !593
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !614
  %i.bk = add i32 %i.bj, %i.bg
  %i.bl = zext i32 %i.bk to i64
  %i.bm = load ptr, ptr %i.bh, align 8, !tbaa !615
  %i.bn = getelementptr inbounds nuw [40 x i8], ptr %i.bm, i64 %i.bl
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %.sroa.0.0.copyload.i.i = load i8, ptr %i.bo, align 8, !tbaa !204 ; 2 uses
  %i.bp = zext nneg i8 %.sroa.0.0.copyload.i.i to i64
  %i.bq = shl nuw i64 1, %i.bp
  %i.br = trunc i64 %i.bq to i32                  ; 2 uses
  %i.bs = and i32 %i.br, 3
  %.not13.i = icmp ne i32 %i.bs, 0                ; 2 uses
  %i.bt = and i32 %i.aw, -257
  %i.bu = select i1 %.not13.i, i32 %i.bt, i32 %i.aw ; 2 uses
  %i.bv = and i32 %i.br, 15
  %.not14.i = icmp eq i32 %i.bv, 0                ; 2 uses
  %i.bw = and i32 %i.bu, -513
  %5 = select i1 %.not14.i, i32 %i.bu, i32 %i.bw  ; 2 uses
  %.demorgan = icmp ult i8 %.sroa.0.0.copyload.i.i, 4
  br i1 %.demorgan, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZN4llvm8dyn_castINS_16FrameIndexSDNodeENS_7SDValueEEEDcRKT0_.exit.i
  store i32 %5, ptr %2, align 4, !tbaa !332
  br label %bb.m

bb.m:                                             ; preds = %_ZN4llvm8dyn_castINS_16FrameIndexSDNodeENS_7SDValueEEEDcRKT0_.exit.i, %bb.l
  %brmerge = select i1 %i.bc, i1 true, i1 %.not13.i
  br i1 %brmerge, label %_ZL18setAlignFlagsForFIN4llvm7SDValueERjRNS_12SelectionDAGE.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %simplifycfg.merge.v = select i1 %.not14.i, i32 768, i32 256
  %simplifycfg.merge.a = or i32 %5, %simplifycfg.merge.v
  store i32 %simplifycfg.merge.a, ptr %2, align 4, !tbaa !332
  br label %_ZL18setAlignFlagsForFIN4llvm7SDValueERjRNS_12SelectionDAGE.exit

_ZL18setAlignFlagsForFIN4llvm7SDValueERjRNS_12SelectionDAGE.exit: ; preds = %bb.m, %bb.n, %bb.k, %_ZNK4llvm5APInt12isSignedIntNEj.exit
  %i.bx = load i32, ptr %i.g, align 8, !tbaa !572 ; 6 uses
  %i.by = add i32 %i.bx, -1                       ; 2 uses
  %i.bz = and i32 %i.by, 63
  %i.ca = zext nneg i32 %i.bz to i64
  %i.cb = shl nuw i64 1, %i.ca
  %i.cc = icmp ult i32 %i.bx, 65                  ; 3 uses
  %i.cd = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.ce = lshr i32 %i.by, 6
  %i.cf = zext nneg i32 %i.ce to i64
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.cf
  %.in.i.i.i.i.i.i41 = select i1 %i.cc, ptr %i.f, ptr %i.cg
  %i.ch = load i64, ptr %.in.i.i.i.i.i.i41, align 8, !tbaa !204
  %i.ci = and i64 %i.cb, %i.ch
  %.not.i.i.i42 = icmp eq i64 %i.ci, 0
  %i.cj = ptrtoint ptr %i.cd to i64               ; 2 uses
  br i1 %.not.i.i.i42, label %bb.s, label %bb.o

bb.o:                                             ; preds = %_ZL18setAlignFlagsForFIN4llvm7SDValueERjRNS_12SelectionDAGE.exit
  br i1 %i.cc, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.ck = icmp eq i32 %i.bx, 0
  br i1 %i.ck, label %_ZNK4llvm5APInt12isSignedIntNEj.exit44, label %bb.q, !prof !581

bb.q:                                             ; preds = %bb.p
  %i.cl = sub nuw nsw i32 64, %i.bx
  %i.cm = zext nneg i32 %i.cl to i64
  %i.cn = shl i64 %i.cj, %i.cm
  %i.co = xor i64 %i.cn, -1
  %i.cp = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.co, i1 false)
  %i.cq = trunc nuw nsw i64 %i.cp to i32
  br label %_ZNK4llvm5APInt12isSignedIntNEj.exit44

bb.r:                                             ; preds = %bb.o
  %i.cr = tail call noundef i32 @_ZNK4llvm5APInt24countLeadingOnesSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %i.f) #33
  br label %_ZNK4llvm5APInt12isSignedIntNEj.exit44

bb.s:                                             ; preds = %_ZL18setAlignFlagsForFIN4llvm7SDValueERjRNS_12SelectionDAGE.exit
  br i1 %i.cc, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %.neg.i.i.i.i43 = add nsw i32 %i.bx, -64
  %i.cs = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.cj, i1 false)
  %i.ct = trunc nuw nsw i64 %i.cs to i32
  %i.cu = add nsw i32 %.neg.i.i.i.i43, %i.ct
  br label %_ZNK4llvm5APInt12isSignedIntNEj.exit44

bb.u:                                             ; preds = %bb.s
  %i.cv = tail call noundef i32 @_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %i.f) #33
  br label %_ZNK4llvm5APInt12isSignedIntNEj.exit44

_ZNK4llvm5APInt12isSignedIntNEj.exit44:           ; preds = %bb.p, %bb.q, %bb.r, %bb.t, %bb.u
  %i.cw = phi i32 [ 0, %bb.p ], [ %i.cr, %bb.r ], [ %i.cq, %bb.q ], [ %i.cu, %bb.t ], [ %i.cv, %bb.u ]
  %i.cx = add i32 %i.bx, 1
  %i.cy = sub i32 %i.cx, %i.cw
  %i.cz = icmp ult i32 %i.cy, 35
  %i.da = load i32, ptr %2, align 4, !tbaa !332
  %. = select i1 %i.cz, i32 1024, i32 32
  %i.db = or i32 %i.da, %.
  br label %bb.be

bb.v:                                             ; preds = %bb.a
  %i.dc = call fastcc noundef zeroext i1 @_ZL18provablyDisjointOrRN4llvm12SelectionDAGERKNS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %3, ptr noundef nonnull align 8 dereferenceable(12) %4)
  br i1 %i.dc, label %bb.w, label %bb.au

bb.w:                                             ; preds = %bb.a, %bb.v
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !557 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 40
  %.sroa.0.0.copyload80 = load ptr, ptr %i.df, align 8, !tbaa !562 ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload80, i64 24
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !559
  switch i32 %i.dh, label %bb.at [
    i32 37, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit46
    i32 12, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit46
    i32 616, label %bb.ar
  ]

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit46: ; preds = %bb.w, %bb.w
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload80, i64 88
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !570 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 24 ; 10 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 32 ; 3 uses
  %i.dm = load i32, ptr %i.dl, align 8, !tbaa !572 ; 6 uses
  %i.dn = add i32 %i.dm, -1                       ; 2 uses
  %i.do = and i32 %i.dn, 63
  %i.dp = zext nneg i32 %i.do to i64
  %i.dq = shl nuw i64 1, %i.dp
  %i.dr = icmp ult i32 %i.dm, 65                  ; 3 uses
  %i.ds = load ptr, ptr %i.dk, align 8            ; 2 uses
  %i.dt = lshr i32 %i.dn, 6
  %i.du = zext nneg i32 %i.dt to i64
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %i.du
  %.in.i.i.i.i.i.i47 = select i1 %i.dr, ptr %i.dk, ptr %i.dv
  %i.dw = load i64, ptr %.in.i.i.i.i.i.i47, align 8, !tbaa !204
  %i.dx = and i64 %i.dq, %i.dw
  %.not.i.i.i48 = icmp eq i64 %i.dx, 0
  %i.dy = ptrtoint ptr %i.ds to i64               ; 2 uses
  br i1 %.not.i.i.i48, label %bb.ab, label %bb.x

bb.x:                                             ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit46
  br i1 %i.dr, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.dz = icmp eq i32 %i.dm, 0
  br i1 %i.dz, label %_ZNK4llvm5APInt12isSignedIntNEj.exit50, label %bb.z, !prof !581

bb.z:                                             ; preds = %bb.y
  %i.ea = sub nuw nsw i32 64, %i.dm
  %i.eb = zext nneg i32 %i.ea to i64
  %i.ec = shl i64 %i.dy, %i.eb
  %i.ed = xor i64 %i.ec, -1
  %i.ee = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ed, i1 false)
  %i.ef = trunc nuw nsw i64 %i.ee to i32
  br label %_ZNK4llvm5APInt12isSignedIntNEj.exit50

bb.aa:                                            ; preds = %bb.x
  %i.eg = tail call noundef i32 @_ZNK4llvm5APInt24countLeadingOnesSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %i.dk) #33
  br label %_ZNK4llvm5APInt12isSignedIntNEj.exit50

bb.ab:                                            ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit46
  br i1 %i.dr, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %.neg.i.i.i.i49 = add nsw i32 %i.dm, -64
  %i.eh = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.dy, i1 false)
  %i.ei = trunc nuw nsw i64 %i.eh to i32
  %i.ej = add nsw i32 %.neg.i.i.i.i49, %i.ei
  br label %_ZNK4llvm5APInt12isSignedIntNEj.exit50

bb.ad:                                            ; preds = %bb.ab
  %i.ek = tail call noundef i32 @_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %i.dk) #33
  br label %_ZNK4llvm5APInt12isSignedIntNEj.exit50

_ZNK4llvm5APInt12isSignedIntNEj.exit50:           ; preds = %bb.y, %bb.z, %bb.aa, %bb.ac, %bb.ad
  %i.el = phi i32 [ 0, %bb.y ], [ %i.eg, %bb.aa ], [ %i.ef, %bb.z ], [ %i.ej, %bb.ac ], [ %i.ek, %bb.ad ]
  %i.em = add i32 %i.dm, 1
  %i.en = sub i32 %i.em, %i.el
  %i.eo = icmp ult i32 %i.en, 17
  br i1 %i.eo, label %"_ZZL33computeFlagsForAddressComputationN4llvm7SDValueERjRNS_12SelectionDAGEENK3$_0clEm.exit53", label %_ZL18setAlignFlagsForFIN4llvm7SDValueERjRNS_12SelectionDAGE.exit63

"_ZZL33computeFlagsForAddressComputationN4llvm7SDValueERjRNS_12SelectionDAGEENK3$_0clEm.exit53": ; preds = %_ZNK4llvm5APInt12isSignedIntNEj.exit50
  %i.ep = load i32, ptr %2, align 4, !tbaa !332   ; 2 uses
  %i.eq = or i32 %i.ep, 64                        ; 2 uses
  store i32 %i.eq, ptr %2, align 4, !tbaa !332
  %i.er = load i32, ptr %i.dl, align 8, !tbaa !572
  %i.es = icmp ult i32 %i.er, 65
  %i.et = load ptr, ptr %i.dk, align 8
  %spec.select.i51 = select i1 %i.es, ptr %i.dk, ptr %i.et
  %.0.i52 = load i64, ptr %spec.select.i51, align 8, !tbaa !204 ; 2 uses
  %i.eu = and i64 %.0.i52, 3
  %i.ev = icmp eq i64 %i.eu, 0                    ; 2 uses
  %i.ew = or i32 %i.ep, 320
  %i.ex = select i1 %i.ev, i32 %i.ew, i32 %i.eq   ; 2 uses
  %i.ey = and i64 %.0.i52, 15
  %i.ez = icmp eq i64 %i.ey, 0
  %i.fa = or i32 %i.ex, 512
  %i.fb = select i1 %i.ez, i32 %i.fa, i32 %i.ex   ; 3 uses
  br i1 %i.ev, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %"_ZZL33computeFlagsForAddressComputationN4llvm7SDValueERjRNS_12SelectionDAGEENK3$_0clEm.exit53"
  store i32 %i.fb, ptr %2, align 4, !tbaa !332
  br label %bb.af

bb.af:                                            ; preds = %"_ZZL33computeFlagsForAddressComputationN4llvm7SDValueERjRNS_12SelectionDAGEENK3$_0clEm.exit53", %bb.ae
  %i.fc = getelementptr inbounds nuw i8, ptr %3, i64 56
  %.val39 = load ptr, ptr %i.fc, align 8
  %i.fd = load i32, ptr %i.b, align 8, !tbaa !559 ; 2 uses
  switch i32 %i.fd, label %bb.ag [
    i32 59, label %.thread.i54
    i32 194, label %.thread.i54
  ]

.thread.i54:                                      ; preds = %bb.af, %bb.af
  %.sroa.speculate.load..i55 = load ptr, ptr %i.de, align 8, !tbaa !558 ; 2 uses
  %.phi.trans.insert.i56 = getelementptr inbounds nuw i8, ptr %.sroa.speculate.load..i55, i64 24
  %.pre.i57 = load i32, ptr %.phi.trans.insert.i56, align 8, !tbaa !559
  br label %bb.ag

bb.ag:                                            ; preds = %.thread.i54, %bb.af
  %i.fe = phi i32 [ %.pre.i57, %.thread.i54 ], [ %i.fd, %bb.af ]
  %i.ff = phi i1 [ true, %.thread.i54 ], [ false, %bb.af ]
  %.sroa.speculated.i58 = phi ptr [ %.sroa.speculate.load..i55, %.thread.i54 ], [ %0, %bb.af ]
  switch i32 %i.fe, label %_ZL18setAlignFlagsForFIN4llvm7SDValueERjRNS_12SelectionDAGE.exit63 [
    i32 41, label %_ZN4llvm8dyn_castINS_16FrameIndexSDNodeENS_7SDValueEEEDcRKT0_.exit.i59
    i32 16, label %_ZN4llvm8dyn_castINS_16FrameIndexSDNodeENS_7SDValueEEEDcRKT0_.exit.i59
  ]

_ZN4llvm8dyn_castINS_16FrameIndexSDNodeENS_7SDValueEEEDcRKT0_.exit.i59: ; preds = %bb.ag, %bb.ag
  %i.fg = getelementptr inbounds nuw i8, ptr %.val39, i64 48
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !594 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.speculated.i58, i64 88
  %i.fj = load i32, ptr %i.fi, align 8, !tbaa !593
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fh, i64 32
  %i.fm = load i32, ptr %i.fl, align 8, !tbaa !614
  %i.fn = add i32 %i.fm, %i.fj
  %i.fo = zext i32 %i.fn to i64
  %i.fp = load ptr, ptr %i.fk, align 8, !tbaa !615
  %i.fq = getelementptr inbounds nuw [40 x i8], ptr %i.fp, i64 %i.fo
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 16
  %.sroa.0.0.copyload.i.i60 = load i8, ptr %i.fr, align 8, !tbaa !204 ; 2 uses
  %i.fs = zext nneg i8 %.sroa.0.0.copyload.i.i60 to i64
  %i.ft = shl nuw i64 1, %i.fs
  %i.fu = trunc i64 %i.ft to i32                  ; 2 uses
  %i.fv = and i32 %i.fu, 3
  %.not13.i61 = icmp ne i32 %i.fv, 0              ; 2 uses
  %i.fw = and i32 %i.fb, -257
  %i.fx = select i1 %.not13.i61, i32 %i.fw, i32 %i.fb ; 2 uses
  %i.fy = and i32 %i.fu, 15
  %.not14.i62 = icmp eq i32 %i.fy, 0              ; 2 uses
  %i.fz = and i32 %i.fx, -513
  %6 = select i1 %.not14.i62, i32 %i.fx, i32 %i.fz ; 2 uses
  %.demorgan99 = icmp ult i8 %.sroa.0.0.copyload.i.i60, 4
  br i1 %.demorgan99, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %_ZN4llvm8dyn_castINS_16FrameIndexSDNodeENS_7SDValueEEEDcRKT0_.exit.i59
  store i32 %6, ptr %2, align 4, !tbaa !332
  br label %bb.ai

bb.ai:                                            ; preds = %_ZN4llvm8dyn_castINS_16FrameIndexSDNodeENS_7SDValueEEEDcRKT0_.exit.i59, %bb.ah
  %brmerge100 = select i1 %i.ff, i1 true, i1 %.not13.i61
  br i1 %brmerge100, label %_ZL18setAlignFlagsForFIN4llvm7SDValueERjRNS_12SelectionDAGE.exit63, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %simplifycfg.merge95.v = select i1 %.not14.i62, i32 768, i32 256
  %simplifycfg.merge95.a = or i32 %6, %simplifycfg.merge95.v
  store i32 %simplifycfg.merge95.a, ptr %2, align 4, !tbaa !332
  br label %_ZL18setAlignFlagsForFIN4llvm7SDValueERjRNS_12SelectionDAGE.exit63

_ZL18setAlignFlagsForFIN4llvm7SDValueERjRNS_12SelectionDAGE.exit63: ; preds = %bb.ai, %bb.aj, %bb.ag, %_ZNK4llvm5APInt12isSignedIntNEj.exit50
  %i.ga = load i32, ptr %i.dl, align 8, !tbaa !572 ; 6 uses
  %i.gb = add i32 %i.ga, -1                       ; 2 uses
  %i.gc = and i32 %i.gb, 63
  %i.gd = zext nneg i32 %i.gc to i64
  %i.ge = shl nuw i64 1, %i.gd
  %i.gf = icmp ult i32 %i.ga, 65                  ; 3 uses
  %i.gg = load ptr, ptr %i.dk, align 8            ; 2 uses
  %i.gh = lshr i32 %i.gb, 6
  %i.gi = zext nneg i32 %i.gh to i64
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.gg, i64 %i.gi
  %.in.i.i.i.i.i.i64 = select i1 %i.gf, ptr %i.dk, ptr %i.gj
  %i.gk = load i64, ptr %.in.i.i.i.i.i.i64, align 8, !tbaa !204
  %i.gl = and i64 %i.ge, %i.gk
  %.not.i.i.i65 = icmp eq i64 %i.gl, 0
  %i.gm = ptrtoint ptr %i.gg to i64               ; 2 uses
  br i1 %.not.i.i.i65, label %bb.ao, label %bb.ak

bb.ak:                                            ; preds = %_ZL18setAlignFlagsForFIN4llvm7SDValueERjRNS_12SelectionDAGE.exit63
  br i1 %i.gf, label %bb.al, label %bb.an

bb.al:                                            ; preds = %bb.ak
  %i.gn = icmp eq i32 %i.ga, 0
  br i1 %i.gn, label %_ZNK4llvm5APInt12isSignedIntNEj.exit67, label %bb.am, !prof !581

bb.am:                                            ; preds = %bb.al
  %i.go = sub nuw nsw i32 64, %i.ga
  %i.gp = zext nneg i32 %i.go to i64
  %i.gq = shl i64 %i.gm, %i.gp
  %i.gr = xor i64 %i.gq, -1
  %i.gs = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.gr, i1 false)
  %i.gt = trunc nuw nsw i64 %i.gs to i32
  br label %_ZNK4llvm5APInt12isSignedIntNEj.exit67

bb.an:                                            ; preds = %bb.ak
  %i.gu = tail call noundef i32 @_ZNK4llvm5APInt24countLeadingOnesSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %i.dk) #33
  br label %_ZNK4llvm5APInt12isSignedIntNEj.exit67

bb.ao:                                            ; preds = %_ZL18setAlignFlagsForFIN4llvm7SDValueERjRNS_12SelectionDAGE.exit63
  br i1 %i.gf, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %.neg.i.i.i.i66 = add nsw i32 %i.ga, -64
  %i.gv = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.gm, i1 false)
  %i.gw = trunc nuw nsw i64 %i.gv to i32
  %i.gx = add nsw i32 %.neg.i.i.i.i66, %i.gw
  br label %_ZNK4llvm5APInt12isSignedIntNEj.exit67

bb.aq:                                            ; preds = %bb.ao
  %i.gy = tail call noundef i32 @_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %i.dk) #33
  br label %_ZNK4llvm5APInt12isSignedIntNEj.exit67

_ZNK4llvm5APInt12isSignedIntNEj.exit67:           ; preds = %bb.al, %bb.am, %bb.an, %bb.ap, %bb.aq
  %i.gz = phi i32 [ 0, %bb.al ], [ %i.gu, %bb.an ], [ %i.gt, %bb.am ], [ %i.gx, %bb.ap ], [ %i.gy, %bb.aq ]
  %i.ha = add i32 %i.ga, 1
  %i.hb = sub i32 %i.ha, %i.gz
  %i.hc = icmp ult i32 %i.hb, 35
  %i.hd = load i32, ptr %2, align 4, !tbaa !332
  %.98 = select i1 %i.hc, i32 1024, i32 2048
  %i.he = or i32 %i.hd, %.98
  br label %bb.be

bb.ar:                                            ; preds = %bb.w
  %i.hf = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload80, i64 40
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !557
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 40
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !558
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 88
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !570 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 24 ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hk, i64 32
  %i.hn = load i32, ptr %i.hm, align 8, !tbaa !572
  %i.ho = icmp ult i32 %i.hn, 65
  %i.hp = load ptr, ptr %i.hl, align 8
  %spec.select.i.i.i.i.i = select i1 %i.ho, ptr %i.hl, ptr %i.hp
  %.0.i.i.i.i.i = load i64, ptr %spec.select.i.i.i.i.i, align 8, !tbaa !204
  %.not35 = icmp eq i64 %.0.i.i.i.i.i, 0
  br i1 %.not35, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.hq = load i32, ptr %2, align 4, !tbaa !332
  %i.hr = or i32 %i.hq, 128
  br label %bb.be

bb.at:                                            ; preds = %bb.w, %bb.ar
  %i.hs = load i32, ptr %2, align 4, !tbaa !332
  %i.ht = or i32 %i.hs, 2048
  br label %bb.be

bb.au:                                            ; preds = %bb.v
  %i.hu = getelementptr inbounds nuw i8, ptr %3, i64 56
  %.val38 = load ptr, ptr %i.hu, align 8
  %i.hv = load i32, ptr %i.b, align 8, !tbaa !559 ; 2 uses
  switch i32 %i.hv, label %bb.av [
    i32 59, label %.thread.i68
    i32 194, label %.thread.i68
  ]

.thread.i68:                                      ; preds = %bb.au, %bb.au
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !557
  %.sroa.speculate.load..i69 = load ptr, ptr %i.hx, align 8, !tbaa !558 ; 2 uses
  %.phi.trans.insert.i70 = getelementptr inbounds nuw i8, ptr %.sroa.speculate.load..i69, i64 24
  %.pre.i71 = load i32, ptr %.phi.trans.insert.i70, align 8, !tbaa !559
  br label %bb.av

bb.av:                                            ; preds = %.thread.i68, %bb.au
  %i.hy = phi i32 [ %.pre.i71, %.thread.i68 ], [ %i.hv, %bb.au ]
  %i.hz = phi i1 [ true, %.thread.i68 ], [ false, %bb.au ]
  %.sroa.speculated.i72 = phi ptr [ %.sroa.speculate.load..i69, %.thread.i68 ], [ %0, %bb.au ]
  switch i32 %i.hy, label %_ZL18setAlignFlagsForFIN4llvm7SDValueERjRNS_12SelectionDAGE.exit77 [
    i32 41, label %_ZN4llvm8dyn_castINS_16FrameIndexSDNodeENS_7SDValueEEEDcRKT0_.exit.i73
    i32 16, label %_ZN4llvm8dyn_castINS_16FrameIndexSDNodeENS_7SDValueEEEDcRKT0_.exit.i73
  ]

_ZN4llvm8dyn_castINS_16FrameIndexSDNodeENS_7SDValueEEEDcRKT0_.exit.i73: ; preds = %bb.av, %bb.av
  %i.ia = getelementptr inbounds nuw i8, ptr %.val38, i64 48
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !594 ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %.sroa.speculated.i72, i64 88
  %i.id = load i32, ptr %i.ic, align 8, !tbaa !593
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ib, i64 8
  %i.if = getelementptr inbounds nuw i8, ptr %i.ib, i64 32
  %i.ig = load i32, ptr %i.if, align 8, !tbaa !614
  %i.ih = add i32 %i.ig, %i.id
  %i.ii = zext i32 %i.ih to i64
  %i.ij = load ptr, ptr %i.ie, align 8, !tbaa !615
  %i.ik = getelementptr inbounds nuw [40 x i8], ptr %i.ij, i64 %i.ii
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 16
  %.sroa.0.0.copyload.i.i74 = load i8, ptr %i.il, align 8, !tbaa !204
  %i.im = zext nneg i8 %.sroa.0.0.copyload.i.i74 to i64
  %i.in = shl nuw i64 1, %i.im
  %i.io = trunc i64 %i.in to i32                  ; 2 uses
  %i.ip = and i32 %i.io, 3
  %.not13.i75 = icmp eq i32 %i.ip, 0              ; 2 uses
  br i1 %.not13.i75, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %_ZN4llvm8dyn_castINS_16FrameIndexSDNodeENS_7SDValueEEEDcRKT0_.exit.i73
  %i.iq = load i32, ptr %2, align 4, !tbaa !332
  %i.ir = and i32 %i.iq, -257
  store i32 %i.ir, ptr %2, align 4, !tbaa !332
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %_ZN4llvm8dyn_castINS_16FrameIndexSDNodeENS_7SDValueEEEDcRKT0_.exit.i73
  %i.is = and i32 %i.io, 15
  %.not14.i76 = icmp eq i32 %i.is, 0              ; 2 uses
  br i1 %.not14.i76, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.it = load i32, ptr %2, align 4, !tbaa !332
  %i.iu = and i32 %i.it, -513
  store i32 %i.iu, ptr %2, align 4, !tbaa !332
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  br i1 %i.hz, label %_ZL18setAlignFlagsForFIN4llvm7SDValueERjRNS_12SelectionDAGE.exit77, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  br i1 %.not13.i75, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.iv = load i32, ptr %2, align 4, !tbaa !332
  %i.iw = or i32 %i.iv, 256
  store i32 %i.iw, ptr %2, align 4, !tbaa !332
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  br i1 %.not14.i76, label %bb.bd, label %_ZL18setAlignFlagsForFIN4llvm7SDValueERjRNS_12SelectionDAGE.exit77

bb.bd:                                            ; preds = %bb.bc
  %i.ix = load i32, ptr %2, align 4, !tbaa !332
  %i.iy = or i32 %i.ix, 512
  store i32 %i.iy, ptr %2, align 4, !tbaa !332
  br label %_ZL18setAlignFlagsForFIN4llvm7SDValueERjRNS_12SelectionDAGE.exit77

_ZL18setAlignFlagsForFIN4llvm7SDValueERjRNS_12SelectionDAGE.exit77: ; preds = %bb.av, %bb.az, %bb.bc, %bb.bd
  %i.iz = load i32, ptr %2, align 4, !tbaa !332
  %i.ja = or i32 %i.iz, 32
  br label %bb.be

bb.be:                                            ; preds = %_ZNK4llvm5APInt12isSignedIntNEj.exit67, %bb.at, %bb.as, %_ZL18setAlignFlagsForFIN4llvm7SDValueERjRNS_12SelectionDAGE.exit77, %_ZNK4llvm5APInt12isSignedIntNEj.exit44
  %.sink97 = phi i32 [ %i.he, %_ZNK4llvm5APInt12isSignedIntNEj.exit67 ], [ %i.ht, %bb.at ], [ %i.hr, %bb.as ], [ %i.ja, %_ZL18setAlignFlagsForFIN4llvm7SDValueERjRNS_12SelectionDAGE.exit77 ], [ %i.db, %_ZNK4llvm5APInt12isSignedIntNEj.exit44 ]
  store i32 %.sink97, ptr %2, align 4, !tbaa !332
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_ZNK4llvm17PPCTargetLowering20SelectForceXFormModeENS_7SDValueERS1_S2_RNS_12SelectionDAGE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(518496) %0, ptr %1, i32 %2, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(12) %3, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(12) %4, ptr noundef nonnull align 8 dereferenceable(920) %5) local_unnamed_addr #1 align 2 {
bb.a:
  %6 = alloca %"class.llvm::SDValue", align 8     ; 4 uses
  store ptr %1, ptr %6, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %2, ptr %i.a, align 8
  %i.b = call fastcc noundef zeroext i1 @_ZL18provablyDisjointOrRN4llvm12SelectionDAGERKNS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %5, ptr noundef nonnull align 8 dereferenceable(12) %6)
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !557  ; 2 uses
end_hunk_0
