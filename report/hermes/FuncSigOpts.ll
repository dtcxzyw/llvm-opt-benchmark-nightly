Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/FuncSigOpts?download=true
inline.NumInlined: 522
inline.NumDeleted: 315
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN6hermes11FuncSigOpts11runOnModuleEPNS_6ModuleE:bb.a
bb.i:                                             ; preds = %_ZNSt6vectorIPN6hermes8FunctionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.018.040, i64 noundef %i.au) #12
  br label %_ZNSt6vectorIPN6hermes8FunctionESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIPN6hermes8FunctionESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.i, %_ZNSt6vectorIPN6hermes8FunctionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.ba
  br label %_ZNSt6vectorIPN6hermes8FunctionESaIS2_EE9push_backEOS2_.exit

_ZNSt6vectorIPN6hermes8FunctionESaIS2_EE9push_backEOS2_.exit: ; preds = %_ZNSt6vectorIPN6hermes8FunctionESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, %bb.e, %_ZNK6hermes6Module13findCJSModuleEPNS_8FunctionE.exit
  %.sroa.018.1 = phi ptr [ %.sroa.018.040, %_ZNK6hermes6Module13findCJSModuleEPNS_8FunctionE.exit ], [ %i.bc, %_ZNSt6vectorIPN6hermes8FunctionESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %.sroa.018.040, %bb.e ] ; 4 uses
  %.sroa.9.1 = phi ptr [ %.sroa.9.041, %_ZNK6hermes6Module13findCJSModuleEPNS_8FunctionE.exit ], [ %i.bf, %_ZNSt6vectorIPN6hermes8FunctionESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %i.ar, %bb.e ] ; 3 uses
  %.sroa.19.1 = phi ptr [ %.sroa.19.042, %_ZNK6hermes6Module13findCJSModuleEPNS_8FunctionE.exit ], [ %i.bg, %_ZNSt6vectorIPN6hermes8FunctionESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %.sroa.19.042, %bb.e ] ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.015.043, i64 8
  %.sroa.015.0 = load ptr, ptr %i.bh, align 8, !tbaa !34 ; 2 uses
  %.not29 = icmp eq ptr %.sroa.015.0, %i.c
  br i1 %.not29, label %.preheader, label %bb.b

bb.j:                                             ; preds = %.lr.ph53, %_ZL10performFSOPN6hermes8FunctionERSt6vectorIS1_SaIS1_EE.exit
  %.052 = phi i1 [ false, %.lr.ph53 ], [ %.153.i, %_ZL10performFSOPN6hermes8FunctionERSt6vectorIS1_SaIS1_EE.exit ] ; 7 uses
  %.sroa.19.251 = phi ptr [ %.sroa.19.1, %.lr.ph53 ], [ %.sroa.19.8, %_ZL10performFSOPN6hermes8FunctionERSt6vectorIS1_SaIS1_EE.exit ] ; 8 uses
  %.sroa.9.250 = phi ptr [ %.sroa.9.1, %.lr.ph53 ], [ %.sroa.9.7, %_ZL10performFSOPN6hermes8FunctionERSt6vectorIS1_SaIS1_EE.exit ]
  %.sroa.018.249 = phi ptr [ %.sroa.018.1, %.lr.ph53 ], [ %.sroa.018.8, %_ZL10performFSOPN6hermes8FunctionERSt6vectorIS1_SaIS1_EE.exit ] ; 7 uses
  %i.bi = getelementptr inbounds i8, ptr %.sroa.9.250, i64 -8 ; 8 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !10 ; 7 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 88
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 80 ; 2 uses
  %.sroa.028.042.i.i = load ptr, ptr %i.bk, align 8, !tbaa !34 ; 2 uses
  %.not3343.not.i.i = icmp eq ptr %.sroa.028.042.i.i, %i.bl
  br i1 %.not3343.not.i.i, label %_ZL22capturesArgumentVectorPN6hermes8FunctionE.exit.i, label %.lr.ph46.i.i

.lr.ph46.i.i:                                     ; preds = %bb.j, %.critedge.i.i
  %.sroa.028.044.i.i = phi ptr [ %.sroa.028.0.i.i, %.critedge.i.i ], [ %.sroa.028.042.i.i, %bb.j ] ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.028.044.i.i, i64 64
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.028.044.i.i, i64 56 ; 2 uses
  %.sroa.024.039.i.i = load ptr, ptr %i.bm, align 8, !tbaa !34 ; 2 uses
  %.not3440.i.i = icmp eq ptr %.sroa.024.039.i.i, %i.bn
  br i1 %.not3440.i.i, label %.critedge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph46.i.i, %bb.l
  %.sroa.024.041.i.i = phi ptr [ %.sroa.024.0.i.i, %bb.l ], [ %.sroa.024.039.i.i, %.lr.ph46.i.i ] ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.024.041.i.i, i64 16
  %i.bp = load i8, ptr %i.bo, align 8, !tbaa !52
  switch i8 %i.bp, label %bb.l [
    i8 55, label %_ZL10performFSOPN6hermes8FunctionERSt6vectorIS1_SaIS1_EE.exit
    i8 93, label %bb.k
  ]

bb.k:                                             ; preds = %.lr.ph.i.i
  %i.bq = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(144) %.sroa.024.041.i.i, i32 noundef 0) #13
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 48
  %i.bs = load double, ptr %i.br, align 8, !tbaa !57 ; 4 uses
  %i.bt = fcmp ule double %i.bs, f0x41DFFFFFFFC00000
  %i.bu = fcmp uge double %i.bs, f0xC1E0000000000000
  %i.bv = fcmp ord double %i.bs, 0.000000e+00
  call void @llvm.assume(i1 %i.bv)
  call void @llvm.assume(i1 %i.bt)
  call void @llvm.assume(i1 %i.bu)
  %i.bw = fptosi double %i.bs to i32
  %i.bx = and i32 %i.bw, 255
  %i.by = icmp eq i32 %i.bx, 45
  br i1 %i.by, label %_ZL10performFSOPN6hermes8FunctionERSt6vectorIS1_SaIS1_EE.exit, label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph.i.i
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.024.041.i.i, i64 8
  %.sroa.024.0.i.i = load ptr, ptr %i.bz, align 8, !tbaa !34 ; 2 uses
  %.not34.i.i = icmp eq ptr %.sroa.024.0.i.i, %i.bn
  br i1 %.not34.i.i, label %.critedge.i.i, label %.lr.ph.i.i

.critedge.i.i:                                    ; preds = %bb.l, %.lr.ph46.i.i
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.028.044.i.i, i64 8
  %.sroa.028.0.i.i = load ptr, ptr %i.ca, align 8, !tbaa !34 ; 2 uses
  %.not33.not.i.i = icmp eq ptr %.sroa.028.0.i.i, %i.bl
  br i1 %.not33.not.i.i, label %_ZL22capturesArgumentVectorPN6hermes8FunctionE.exit.i, label %.lr.ph46.i.i

_ZL22capturesArgumentVectorPN6hermes8FunctionE.exit.i: ; preds = %.critedge.i.i, %bb.j
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.cc = load i8, ptr %i.cb, align 8, !tbaa !52
  switch i8 %i.cc, label %bb.m [
    i8 -127, label %_ZL10performFSOPN6hermes8FunctionERSt6vectorIS1_SaIS1_EE.exit
    i8 -125, label %_ZL10performFSOPN6hermes8FunctionERSt6vectorIS1_SaIS1_EE.exit
  ]

bb.m:                                             ; preds = %_ZL22capturesArgumentVectorPN6hermes8FunctionE.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bj, i64 56
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !90
  store ptr %i.ce, ptr %4, align 8, !tbaa !95
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  store ptr %i.g, ptr %5, align 8, !tbaa !96
  store i32 0, ptr %i.h, align 8, !tbaa !97
  store i32 8, ptr %i.i, align 4, !tbaa !98
  %i.cf = call noundef zeroext i1 @_ZN6hermes12getCallSitesEPNS_8FunctionERN4llvh15SmallVectorImplIPNS_8CallInstEEE(ptr noundef nonnull %i.bj, ptr noundef nonnull align 8 dereferenceable(16) %5) #13
  br i1 %i.cf, label %bb.n, label %bb.aj

bb.n:                                             ; preds = %bb.m
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bj, i64 96 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bj, i64 104 ; 2 uses
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !97 ; 5 uses
  %i.cj = zext i32 %i.ci to i64                   ; 5 uses
  %i.ck = call noundef ptr @_ZN6hermes9IRBuilder19getLiteralUndefinedEv(ptr noundef nonnull align 8 dereferenceable(40) %4) #13 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  store ptr %i.j, ptr %6, align 8, !tbaa !96
  store i32 8, ptr %i.l, align 4, !tbaa !98
  store i32 0, ptr %i.k, align 8, !tbaa !97
  %i.cl = icmp ugt i32 %i.ci, 8
  br i1 %i.cl, label %.thread.i, label %bb.o

.thread.i:                                        ; preds = %bb.n
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(144) %6, ptr noundef nonnull %i.j, i64 noundef %i.cj, i64 noundef 16) #13
  %.pre.i.i = load ptr, ptr %6, align 8, !tbaa !96 ; 2 uses
  store i32 %i.ci, ptr %i.k, align 8, !tbaa !97
  %i.cm = shl nuw nsw i64 %i.cj, 4
  %i.cn = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 %i.cm
  br label %.lr.ph.i.i.i.i.i.preheader.i

bb.o:                                             ; preds = %bb.n
  store i32 %i.ci, ptr %i.k, align 8, !tbaa !97
  %i.co = shl nuw nsw i64 %i.cj, 4
  %i.cp = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.co
  %.not6.i.i.i.i.i.i = icmp eq i32 %i.ci, 0
  br i1 %.not6.i.i.i.i.i.i, label %_ZN4llvh11SmallVectorISt4pairIPN6hermes7LiteralEbELj8EEC2EmRKS5_.exit.i, label %.lr.ph.i.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.i.preheader.i:                     ; preds = %bb.o, %.thread.i
  %i.cq = phi ptr [ %i.cn, %.thread.i ], [ %i.cp, %bb.o ]
  %i.cr = phi ptr [ %.pre.i.i, %.thread.i ], [ %i.j, %bb.o ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.preheader.i
  %.07.i.i.i.i.i.i = phi ptr [ %i.cs, %.lr.ph.i.i.i.i.i.i ], [ %i.cr, %.lr.ph.i.i.i.i.i.preheader.i ] ; 3 uses
  store ptr %i.ck, ptr %.07.i.i.i.i.i.i, align 8
  %.sroa.492.0..07.i.i.i.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i, i64 8
  store i8 0, ptr %.sroa.492.0..07.i.i.i.i.i.sroa_idx.i, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cs, %i.cq
  br i1 %.not.i.i.i.i.i.i, label %_ZN4llvh11SmallVectorISt4pairIPN6hermes7LiteralEbELj8EEC2EmRKS5_.exit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !25

_ZN4llvh11SmallVectorISt4pairIPN6hermes7LiteralEbELj8EEC2EmRKS5_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i, %bb.o
  %.not6.i.i.i.i.i175.i = phi i1 [ true, %bb.o ], [ false, %.lr.ph.i.i.i.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  store ptr %i.m, ptr %7, align 8, !tbaa !96
  store i32 0, ptr %i.n, align 8, !tbaa !97
  store i32 8, ptr %i.o, align 4, !tbaa !98
  %i.ct = load ptr, ptr %5, align 8, !tbaa !96    ; 2 uses
  %i.cu = load i32, ptr %i.h, align 8, !tbaa !97  ; 2 uses
  %i.cv = zext i32 %i.cu to i64
  %.idx.i = shl nuw nsw i64 %i.cv, 3
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 %.idx.i
  %.not112.i = icmp eq i32 %i.cu, 0
  br i1 %.not112.i, label %._crit_edge115.i, label %.lr.ph114.i

._crit_edge115.i:                                 ; preds = %._crit_edge111.i, %_ZN4llvh11SmallVectorISt4pairIPN6hermes7LiteralEbELj8EEC2EmRKS5_.exit.i
  %i.cx = load ptr, ptr %i.cg, align 8, !tbaa !96 ; 2 uses
  %i.cy = load i32, ptr %i.ch, align 8, !tbaa !97 ; 2 uses
  %i.cz = zext i32 %i.cy to i64
  %.idx133.i = shl nuw nsw i64 %i.cz, 3
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 %.idx133.i
  %.not57116.i = icmp eq i32 %i.cy, 0
  br i1 %.not57116.i, label %._crit_edge122.i, label %.lr.ph121.preheader.i

.lr.ph121.preheader.i:                            ; preds = %._crit_edge115.i
  %.pre143.i = load ptr, ptr %6, align 8, !tbaa !96
  br label %.lr.ph121.i

.lr.ph114.i:                                      ; preds = %_ZN4llvh11SmallVectorISt4pairIPN6hermes7LiteralEbELj8EEC2EmRKS5_.exit.i, %._crit_edge111.i
  %.051113.i = phi ptr [ %i.dv, %._crit_edge111.i ], [ %i.ct, %_ZN4llvh11SmallVectorISt4pairIPN6hermes7LiteralEbELj8EEC2EmRKS5_.exit.i ] ; 2 uses
  %i.db = load ptr, ptr %.051113.i, align 8, !tbaa !100 ; 4 uses
  br i1 %.not6.i.i.i.i.i175.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.s, %.lr.ph114.i
  %i.dc = call noundef i32 @_ZNK6hermes11Instruction14getNumOperandsEv(ptr noundef nonnull align 8 dereferenceable(144) %i.db) #13
  %i.dd = add i32 %i.dc, -2                       ; 2 uses
  %i.de = icmp ugt i32 %i.dd, 1
  br i1 %i.de, label %.lr.ph110.preheader.i, label %._crit_edge111.i

.lr.ph110.preheader.i:                            ; preds = %._crit_edge.i
  %wide.trip.count139.i = zext i32 %i.dd to i64
  br label %.lr.ph110.i

.lr.ph.i:                                         ; preds = %.lr.ph114.i, %bb.s
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.s ], [ 0, %.lr.ph114.i ] ; 4 uses
  %i.df = call noundef i32 @_ZNK6hermes11Instruction14getNumOperandsEv(ptr noundef nonnull align 8 dereferenceable(144) %i.db) #13
  %i.dg = add i32 %i.df, -3
  %i.dh = zext i32 %i.dg to i64
  %i.di = icmp samesign ult i64 %indvars.iv.i, %i.dh
  br i1 %i.di, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.lr.ph.i
  %i.dj = trunc nuw i64 %indvars.iv.i to i32
  %i.dk = add i32 %i.dj, 3
  %i.dl = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(144) %i.db, i32 noundef %i.dk) #13
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.lr.ph.i
  %.049.i = phi ptr [ %i.dl, %bb.p ], [ %i.ck, %.lr.ph.i ] ; 2 uses
  %i.dm = load i8, ptr %.049.i, align 8, !tbaa !52
  %i.dn = add i8 %i.dm, -109
  %i.do = icmp ult i8 %i.dn, 11
  %spec.select.i.i = select i1 %i.do, ptr %.049.i, ptr null ; 2 uses
  %i.dp = load ptr, ptr %6, align 8, !tbaa !96
  %i.dq = getelementptr inbounds nuw [16 x i8], ptr %i.dp, i64 %indvars.iv.i ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 8 ; 2 uses
  %i.ds = load i8, ptr %i.dr, align 8, !tbaa !103, !range !104, !noundef !105
  %i.dt = trunc nuw i8 %i.ds to i1
  br i1 %i.dt, label %bb.r, label %.sink.split.i

bb.r:                                             ; preds = %bb.q
  %i.du = load ptr, ptr %i.dq, align 8, !tbaa !106
  %.not60.i = icmp eq ptr %i.du, %spec.select.i.i
  br i1 %.not60.i, label %bb.s, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.r, %bb.q
  %.sink.i = phi ptr [ %spec.select.i.i, %bb.q ], [ null, %bb.r ]
  store ptr %.sink.i, ptr %i.dq, align 8, !tbaa !106
  store i8 1, ptr %i.dr, align 8, !tbaa !103
  br label %bb.s

bb.s:                                             ; preds = %.sink.split.i, %bb.r
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.cj
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !26

._crit_edge111.i:                                 ; preds = %bb.w, %._crit_edge.i
  %i.dv = getelementptr inbounds nuw i8, ptr %.051113.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.dv, %i.cw
  br i1 %.not.i, label %._crit_edge115.i, label %.lr.ph114.i

.lr.ph110.i:                                      ; preds = %bb.w, %.lr.ph110.preheader.i
  %indvars.iv136.i = phi i64 [ 1, %.lr.ph110.preheader.i ], [ %indvars.iv.next137.i, %bb.w ] ; 4 uses
  %i.dw = icmp samesign ugt i64 %indvars.iv136.i, %i.cj
  br i1 %i.dw, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.lr.ph110.i
  %i.dx = load ptr, ptr %i.cg, align 8, !tbaa !96
  %i.dy = getelementptr [8 x i8], ptr %i.dx, i64 %indvars.iv136.i
  %i.dz = getelementptr i8, ptr %i.dy, i64 -8
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !107
  %i.eb = call noundef zeroext i1 @_ZNK6hermes5Value8hasUsersEv(ptr noundef nonnull align 8 dereferenceable(40) %i.ea) #13
  br i1 %i.eb, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t, %.lr.ph110.i
  %i.ec = load i32, ptr %i.n, align 8, !tbaa !97  ; 2 uses
  %i.ed = load i32, ptr %i.o, align 4, !tbaa !98
  %.not.i61.i = icmp ult i32 %i.ec, %i.ed
  br i1 %.not.i61.i, label %_ZN4llvh23SmallVectorTemplateBaseISt4pairIPN6hermes8CallInstEjELb1EE9push_backERKS5_.exit.i, label %bb.v, !prof !12

bb.v:                                             ; preds = %bb.u
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull %i.m, i64 noundef 0, i64 noundef 16) #13
  %.pre.i62.i = load i32, ptr %i.n, align 8, !tbaa !97
  br label %_ZN4llvh23SmallVectorTemplateBaseISt4pairIPN6hermes8CallInstEjELb1EE9push_backERKS5_.exit.i

_ZN4llvh23SmallVectorTemplateBaseISt4pairIPN6hermes8CallInstEjELb1EE9push_backERKS5_.exit.i: ; preds = %bb.v, %bb.u
  %i.ee = phi i32 [ %.pre.i62.i, %bb.v ], [ %i.ec, %bb.u ]
  %i.ef = load ptr, ptr %7, align 8, !tbaa !96
  %i.eg = zext i32 %i.ee to i64
  %i.eh = getelementptr inbounds nuw [16 x i8], ptr %i.ef, i64 %i.eg ; 2 uses
  store ptr %i.db, ptr %i.eh, align 1
  %.sroa.473.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  %i.ei = trunc nuw i64 %indvars.iv136.i to i32
  store i32 %i.ei, ptr %.sroa.473.0..sroa_idx.i, align 1
  %i.ej = load i32, ptr %i.n, align 8, !tbaa !97
  %i.ek = add i32 %i.ej, 1
  store i32 %i.ek, ptr %i.n, align 8, !tbaa !97
  br label %bb.w

bb.w:                                             ; preds = %_ZN4llvh23SmallVectorTemplateBaseISt4pairIPN6hermes8CallInstEjELb1EE9push_backERKS5_.exit.i, %bb.t
  %indvars.iv.next137.i = add nuw nsw i64 %indvars.iv136.i, 1 ; 2 uses
  %exitcond140.not.i = icmp eq i64 %indvars.iv.next137.i, %wide.trip.count139.i
  br i1 %exitcond140.not.i, label %._crit_edge111.i, label %.lr.ph110.i, !llvm.loop !27

._crit_edge122.i.loopexit:                        ; preds = %bb.y
  %i.el = or i1 %.052, %.1.i
  br label %._crit_edge122.i

._crit_edge122.i:                                 ; preds = %._crit_edge122.i.loopexit, %._crit_edge115.i
  %.048.lcssa.i = phi i1 [ %.052, %._crit_edge115.i ], [ %i.el, %._crit_edge122.i.loopexit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 20, i1 false)
  %i.em = load ptr, ptr %7, align 8, !tbaa !96    ; 2 uses
  %i.en = load i32, ptr %i.n, align 8, !tbaa !97  ; 2 uses
  %i.eo = zext i32 %i.en to i64
  %.idx134.i = shl nuw nsw i64 %i.eo, 4
  %i.ep = getelementptr inbounds nuw i8, ptr %i.em, i64 %.idx134.i
  %.not58123.i = icmp eq i32 %i.en, 0
  br i1 %.not58123.i, label %._crit_edge127.thread.i, label %.lr.ph126.i

.lr.ph121.i:                                      ; preds = %bb.y, %.lr.ph121.preheader.i
  %i.eq = phi ptr [ %.pre143.i, %.lr.ph121.preheader.i ], [ %i.eu, %bb.y ] ; 2 uses
  %indvars.iv141.i = phi i64 [ 0, %.lr.ph121.preheader.i ], [ %indvars.iv.next142.i, %bb.y ] ; 2 uses
  %.046119.i = phi ptr [ %i.cx, %.lr.ph121.preheader.i ], [ %i.ev, %bb.y ] ; 2 uses
  %.048117.i = phi i1 [ false, %.lr.ph121.preheader.i ], [ %.1.i, %bb.y ]
  %i.er = getelementptr inbounds nuw [16 x i8], ptr %i.eq, i64 %indvars.iv141.i
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !106 ; 2 uses
  %.not59.i = icmp eq ptr %i.es, null
  br i1 %.not59.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %.lr.ph121.i
  %i.et = load ptr, ptr %.046119.i, align 8, !tbaa !107
  call void @_ZN6hermes5Value18replaceAllUsesWithEPS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.et, ptr noundef nonnull %i.es) #13
  %.pre.i = load ptr, ptr %6, align 8, !tbaa !96
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.lr.ph121.i
  %i.eu = phi ptr [ %.pre.i, %bb.x ], [ %i.eq, %.lr.ph121.i ]
  %.1.i = phi i1 [ true, %bb.x ], [ %.048117.i, %.lr.ph121.i ] ; 2 uses
  %indvars.iv.next142.i = add nuw nsw i64 %indvars.iv141.i, 1
  %i.ev = getelementptr inbounds nuw i8, ptr %.046119.i, i64 8 ; 2 uses
  %.not57.i = icmp eq ptr %i.ev, %i.da
  br i1 %.not57.i, label %._crit_edge122.i.loopexit, label %.lr.ph121.i

._crit_edge127.i:                                 ; preds = %bb.ab
  %.pre144.i = load i32, ptr %.phi.trans.insert.i, align 8, !tbaa !19
  %.pre145.i = load ptr, ptr %8, align 8, !tbaa !20 ; 7 uses
  %.pre147.i = load i32, ptr %.phi.trans.insert146.i, align 8, !tbaa !21 ; 2 uses
  %i.ew = icmp eq i32 %.pre144.i, 0
  %i.ex = zext i32 %.pre147.i to i64              ; 4 uses
  br i1 %i.ew, label %._crit_edge127.thread.i, label %bb.z

._crit_edge127.thread.i:                          ; preds = %._crit_edge127.i, %._crit_edge122.i
  %i.ey = phi i64 [ %i.ex, %._crit_edge127.i ], [ 0, %._crit_edge122.i ] ; 2 uses
  %i.ez = phi ptr [ %.pre145.i, %._crit_edge127.i ], [ null, %._crit_edge122.i ] ; 2 uses
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %i.ey ; 2 uses
  br label %_ZN4llvh6detail12DenseSetImplIPN6hermes8FunctionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit.i

bb.z:                                             ; preds = %._crit_edge127.i
  %.idx.i.i63.i = shl nuw nsw i64 %i.ex, 3
  %i.fb = getelementptr i8, ptr %.pre145.i, i64 %.idx.i.i63.i ; 5 uses
  %.not5.i5.i10.i2.i.i.i = icmp eq i32 %.pre147.i, 0
  br i1 %.not5.i5.i10.i2.i.i.i, label %_ZN4llvh6detail12DenseSetImplIPN6hermes8FunctionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit.i, label %.lr.ph.i6.i12.i3.i.i.i

.lr.ph.i6.i12.i3.i.i.i:                           ; preds = %bb.z, %.critedge2.i8.i14.i6.i.i.i
  %.sroa.0.3.i4.i.i.i = phi ptr [ %i.fd, %.critedge2.i8.i14.i6.i.i.i ], [ %.pre145.i, %bb.z ] ; 3 uses
  %i.fc = load ptr, ptr %.sroa.0.3.i4.i.i.i, align 8, !tbaa !10
  %magicptr.i7.i13.i5.i.i.i = ptrtoint ptr %i.fc to i64
  switch i64 %magicptr.i7.i13.i5.i.i.i, label %_ZN4llvh6detail12DenseSetImplIPN6hermes8FunctionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit.i [
    i64 -8, label %.critedge2.i8.i14.i6.i.i.i
    i64 -16, label %.critedge2.i8.i14.i6.i.i.i
  ]

.critedge2.i8.i14.i6.i.i.i:                       ; preds = %.lr.ph.i6.i12.i3.i.i.i, %.lr.ph.i6.i12.i3.i.i.i
  %i.fd = getelementptr inbounds nuw i8, ptr %.sroa.0.3.i4.i.i.i, i64 8 ; 2 uses
  %.not.i9.i15.i7.i.i.i = icmp eq ptr %i.fd, %i.fb
  br i1 %.not.i9.i15.i7.i.i.i, label %_ZN4llvh6detail12DenseSetImplIPN6hermes8FunctionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit.i, label %.lr.ph.i6.i12.i3.i.i.i, !llvm.loop !28

_ZN4llvh6detail12DenseSetImplIPN6hermes8FunctionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit.i: ; preds = %.critedge2.i8.i14.i6.i.i.i, %.lr.ph.i6.i12.i3.i.i.i, %bb.z, %._crit_edge127.thread.i
  %i.fe = phi i64 [ %i.ey, %._crit_edge127.thread.i ], [ 0, %bb.z ], [ %i.ex, %.lr.ph.i6.i12.i3.i.i.i ], [ %i.ex, %.critedge2.i8.i14.i6.i.i.i ]
  %i.ff = phi ptr [ %i.ez, %._crit_edge127.thread.i ], [ %.pre145.i, %bb.z ], [ %.pre145.i, %.lr.ph.i6.i12.i3.i.i.i ], [ %.pre145.i, %.critedge2.i8.i14.i6.i.i.i ] ; 2 uses
  %.pn14.i.i.i = phi ptr [ %i.fa, %._crit_edge127.thread.i ], [ %.pre145.i, %bb.z ], [ %i.fb, %.critedge2.i8.i14.i6.i.i.i ], [ %.sroa.0.3.i4.i.i.i, %.lr.ph.i6.i12.i3.i.i.i ] ; 2 uses
  %.pn12.i.i.i = phi ptr [ %i.fa, %._crit_edge127.thread.i ], [ %i.fb, %bb.z ], [ %i.fb, %.lr.ph.i6.i12.i3.i.i.i ], [ %i.fb, %.critedge2.i8.i14.i6.i.i.i ] ; 2 uses
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.ff, i64 %i.fe ; 2 uses
  %.not106128.i = icmp eq ptr %.pn14.i.i.i, %i.fg
  br i1 %.not106128.i, label %._crit_edge131.i, label %.lr.ph130.i

.lr.ph126.i:                                      ; preds = %._crit_edge122.i, %bb.ab
  %.0124.i = phi ptr [ %i.fx, %bb.ab ], [ %i.em, %._crit_edge122.i ] ; 5 uses
  %i.fh = load ptr, ptr %.0124.i, align 8, !tbaa !109
  %i.fi = getelementptr inbounds nuw i8, ptr %.0124.i, i64 8 ; 2 uses
  %i.fj = load i32, ptr %i.fi, align 8, !tbaa !110
  %i.fk = add i32 %i.fj, 2
  %i.fl = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(144) %i.fh, i32 noundef %i.fk) #13
  %i.fm = load i8, ptr %i.fl, align 8, !tbaa !52
  %i.fn = add i8 %i.fm, -109
  %i.fo = icmp ult i8 %i.fn, 11
  br i1 %i.fo, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph126.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.fp = load ptr, ptr %.0124.i, align 8, !tbaa !109
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 56
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !120
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 72
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !128
  store ptr %i.ft, ptr %i.a, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13, !noalias !129
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13, !noalias !129
  call void @_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8FunctionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E11try_emplaceIJRS6_EEESt4pairINS_16DenseMapIteratorIS4_S6_S8_SA_Lb0EEEbEOS4_DpOT_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.140") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %2), !noalias !129
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13, !noalias !129
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13, !noalias !129
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.lr.ph126.i
  %i.fu = load ptr, ptr %.0124.i, align 8, !tbaa !109
  %i.fv = load i32, ptr %i.fi, align 8, !tbaa !110
  %i.fw = add i32 %i.fv, 2
  call void @_ZN6hermes11Instruction10setOperandEPNS_5ValueEj(ptr noundef nonnull align 8 dereferenceable(144) %i.fu, ptr noundef %i.ck, i32 noundef %i.fw) #13
  %i.fx = getelementptr inbounds nuw i8, ptr %.0124.i, i64 16 ; 2 uses
  %.not58.i = icmp eq ptr %i.fx, %i.ep
  br i1 %.not58.i, label %._crit_edge127.i, label %.lr.ph126.i

._crit_edge131.loopexit.i:                        ; preds = %_ZN4llvh6detail12DenseSetImplIPN6hermes8FunctionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E8IteratorppEv.exit.i
  %.pre150.i = load ptr, ptr %8, align 8, !tbaa !20
  br label %._crit_edge131.i

._crit_edge131.i:                                 ; preds = %._crit_edge131.loopexit.i, %_ZN4llvh6detail12DenseSetImplIPN6hermes8FunctionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit.i
  %.sroa.018.7 = phi ptr [ %.sroa.018.249, %_ZN4llvh6detail12DenseSetImplIPN6hermes8FunctionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit.i ], [ %.sroa.018.6, %._crit_edge131.loopexit.i ]
  %.sroa.9.6 = phi ptr [ %i.bi, %_ZN4llvh6detail12DenseSetImplIPN6hermes8FunctionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit.i ], [ %.sroa.9.5, %._crit_edge131.loopexit.i ]
  %.sroa.19.7 = phi ptr [ %.sroa.19.251, %_ZN4llvh6detail12DenseSetImplIPN6hermes8FunctionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit.i ], [ %.sroa.19.6, %._crit_edge131.loopexit.i ]
  %i.fy = phi ptr [ %i.ff, %_ZN4llvh6detail12DenseSetImplIPN6hermes8FunctionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit.i ], [ %.pre150.i, %._crit_edge131.loopexit.i ]
  call void @_ZdlPv(ptr noundef %i.fy) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  %i.fz = load ptr, ptr %7, align 8, !tbaa !96    ; 2 uses
  %i.ga = icmp eq ptr %i.fz, %i.m
  br i1 %i.ga, label %_ZN4llvh11SmallVectorISt4pairIPN6hermes8CallInstEjELj8EED2Ev.exit.i, label %bb.ac

bb.ac:                                            ; preds = %._crit_edge131.i
  call void @free(ptr noundef %i.fz) #13
  br label %_ZN4llvh11SmallVectorISt4pairIPN6hermes8CallInstEjELj8EED2Ev.exit.i

_ZN4llvh11SmallVectorISt4pairIPN6hermes8CallInstEjELj8EED2Ev.exit.i: ; preds = %bb.ac, %._crit_edge131.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  %i.gb = load ptr, ptr %6, align 8, !tbaa !96    ; 2 uses
  %i.gc = icmp eq ptr %i.gb, %i.j
  br i1 %i.gc, label %_ZN4llvh11SmallVectorISt4pairIPN6hermes7LiteralEbELj8EED2Ev.exit.i, label %bb.ad

bb.ad:                                            ; preds = %_ZN4llvh11SmallVectorISt4pairIPN6hermes8CallInstEjELj8EED2Ev.exit.i
  call void @free(ptr noundef %i.gb) #13
  br label %_ZN4llvh11SmallVectorISt4pairIPN6hermes7LiteralEbELj8EED2Ev.exit.i
end_hunk_0
