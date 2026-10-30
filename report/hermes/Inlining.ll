Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/Inlining?download=true
inline.NumInlined: 788
inline.NumDeleted: 443
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 6
begin_hunk_0

$_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes5ValueES4_NS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_ = comdat any

$_ZN4llvh8DenseMapIPN6hermes5ValueES3_NS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S3_EEE4growEj = comdat any

$_ZN4llvh11raw_ostreamlsEPKc = comdat any

$_ZN4llvh11raw_ostreamlsENS_9StringRefE = comdat any

$_ZN4llvh11raw_ostreamlsEc = comdat any

$_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes5ValueES4_NS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E16FindAndConstructERKS4_ = comdat any

$_ZN6hermes4PassD2Ev = comdat any

@_ZTVN6hermes8InliningE = hidden unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr null, ptr @_ZN6hermes4PassD2Ev, ptr @_ZN6hermes8InliningD0Ev, ptr @_ZN6hermes8Inlining11runOnModuleEPNS_6ModuleE] }, align 8
@.str = private unnamed_addr constant [23 x i8] c"INVALID OPERAND FOR : \00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"INVALID OPERAND     : \00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"Inlining\00", align 1

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN6hermes8Inlining11runOnModuleEPNS_6ModuleE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.llvh::DenseMap.167", align 8 ; 30 uses
  %3 = alloca %"class.llvh::SmallVector.170", align 8 ; 15 uses
  %4 = alloca %"class.llvh::SmallVector.176", align 8 ; 10 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %5 = alloca %"class.llvh::SmallVector.148", align 8 ; 9 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %6 = alloca %"class.llvh::SmallVector.148", align 8 ; 7 uses
  %7 = alloca %"class.hermes::IRBuilder", align 8 ; 22 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !81
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 633
  %i.f = load i8, ptr %i.e, align 1, !tbaa !83, !range !13, !noundef !14
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %.sroa.0172.0251 = load ptr, ptr %i.h, align 8, !tbaa !86 ; 2 uses
  %.not187252 = icmp eq ptr %.sroa.0172.0251, %i.i
  br i1 %.not187252, label %.loopexit, label %.lr.ph256

.lr.ph256:                                        ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 7 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 12 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 18 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 18 uses
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 16
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph256, %._crit_edge250
  %.sroa.0172.0254 = phi ptr [ %.sroa.0172.0251, %.lr.ph256 ], [ %.sroa.0172.0, %._crit_edge250 ] ; 2 uses
  %.038253 = phi i1 [ false, %.lr.ph256 ], [ %.139.lcssa, %._crit_edge250 ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0172.0254, i64 16
  %i.y = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK6hermes5Value8getUsersEv(ptr noundef nonnull align 8 dereferenceable(40) %i.x) #11 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !16   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !17 ; 2 uses
  %i.ac = zext i32 %i.ab to i64
  %.idx = shl nuw nsw i64 %i.ac, 3
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 %.idx
  %.not245 = icmp eq i32 %i.ab, 0
  br i1 %.not245, label %._crit_edge250, label %.lr.ph249

._crit_edge250:                                   ; preds = %_ZN6hermesL12canBeInlinedEPNS_8FunctionES1_.exit.thread, %bb.c
  %.139.lcssa = phi i1 [ %.038253, %bb.c ], [ %.4, %_ZN6hermesL12canBeInlinedEPNS_8FunctionES1_.exit.thread ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0172.0254, i64 8
  %.sroa.0172.0 = load ptr, ptr %i.ae, align 8, !tbaa !86 ; 2 uses
  %.not187 = icmp eq ptr %.sroa.0172.0, %i.i
  br i1 %.not187, label %.loopexit, label %bb.c

.lr.ph249:                                        ; preds = %bb.c, %_ZN6hermesL12canBeInlinedEPNS_8FunctionES1_.exit.thread
  %.036247 = phi ptr [ %i.zk, %_ZN6hermesL12canBeInlinedEPNS_8FunctionES1_.exit.thread ], [ %i.z, %bb.c ] ; 2 uses
  %.139246 = phi i1 [ %.4, %_ZN6hermesL12canBeInlinedEPNS_8FunctionES1_.exit.thread ], [ %.038253, %bb.c ] ; 8 uses
  %i.af = load ptr, ptr %.036247, align 8, !tbaa !88 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 5 uses
  %i.ah = load i8, ptr %i.ag, align 8, !tbaa !27
  %i.ai = add i8 %i.ah, -75
  %i.aj = icmp ult i8 %i.ai, -6
  %.not42188 = icmp eq ptr %i.af, null
  %.not42 = or i1 %.not42188, %i.aj
  br i1 %.not42, label %_ZN6hermesL12canBeInlinedEPNS_8FunctionES1_.exit.thread, label %bb.d

bb.d:                                             ; preds = %.lr.ph249
  %i.ak = call noundef zeroext i1 @_ZNK6hermes5Value10hasOneUserEv(ptr noundef nonnull align 8 dereferenceable(40) %i.ag) #11
  br i1 %i.ak, label %bb.e, label %_ZN6hermesL12canBeInlinedEPNS_8FunctionES1_.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.al = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK6hermes5Value8getUsersEv(ptr noundef nonnull align 8 dereferenceable(40) %i.ag) #11
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !88
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ap = load i8, ptr %i.ao, align 8, !tbaa !27
  %.not43 = icmp eq i8 %i.ap, 91
  br i1 %.not43, label %bb.f, label %_ZN6hermesL12canBeInlinedEPNS_8FunctionES1_.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.aq = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK6hermes5Value8getUsersEv(ptr noundef nonnull align 8 dereferenceable(40) %i.ag) #11
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !88 ; 9 uses
  %i.at = call noundef zeroext i1 @_ZN6hermes14isDirectCalleeEPNS_5ValueEPNS_8CallInstE(ptr noundef nonnull %i.ag, ptr noundef %i.as) #11
  br i1 %i.at, label %bb.g, label %_ZN6hermesL12canBeInlinedEPNS_8FunctionES1_.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 56 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !99
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 72
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !108 ; 2 uses
  %i.ay = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %i.af, i32 noundef 0) #11 ; 8 uses
  %i.az = icmp eq ptr %i.ay, null
  %i.ba = getelementptr inbounds i8, ptr %i.ay, i64 -16 ; 2 uses
  %i.bb = select i1 %i.az, ptr null, ptr %i.ba    ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 72 ; 3 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !132 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 160
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !17
  %.not.i.i = icmp eq i32 %i.bf, 0
  br i1 %.not.i.i, label %bb.h, label %_ZN6hermesL12canBeInlinedEPNS_8FunctionES1_.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 48
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !16 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 56
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !17 ; 2 uses
  %i.bk = zext i32 %i.bj to i64
  %.idx.i = shl nuw nsw i64 %i.bk, 3
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 %.idx.i
  %.not54.i = icmp eq i32 %i.bj, 0
  br i1 %.not54.i, label %._crit_edge.i, label %.lr.ph.i

bb.i:                                             ; preds = %.lr.ph.i
  %i.bm = getelementptr inbounds nuw i8, ptr %.03455.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.bm, %i.bl
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.h, %bb.i
  %.03455.i = phi ptr [ %i.bm, %bb.i ], [ %i.bh, %bb.h ] ; 2 uses
  %i.bn = load ptr, ptr %.03455.i, align 8, !tbaa !36
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 144
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !48
  %.not40.i = icmp eq ptr %i.bp, %i.bb
  br i1 %.not40.i, label %_ZN6hermesL12canBeInlinedEPNS_8FunctionES1_.exit.thread, label %bb.i

._crit_edge.i:                                    ; preds = %bb.i, %bb.h
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ay, i64 172 ; 2 uses
  %i.br = load i8, ptr %i.bq, align 4, !tbaa !133, !range !13, !noundef !14
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ax, i64 188
  %i.bt = load i8, ptr %i.bs, align 4, !tbaa !133, !range !13, !noundef !14
  %.not49.i = icmp eq i8 %i.br, %i.bt
  br i1 %.not49.i, label %bb.j, label %_ZN6hermesL12canBeInlinedEPNS_8FunctionES1_.exit.thread

bb.j:                                             ; preds = %._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  %i.bu = getelementptr i8, ptr %i.ay, i64 72     ; 2 uses
  %.val.i = load ptr, ptr %i.bu, align 8, !tbaa !86
  call fastcc void @_ZN6hermesL8orderDFSEPNS_8FunctionE(ptr dead_on_unwind noalias writable align 8 %6, ptr %.val.i)
  %i.bv = load ptr, ptr %6, align 8, !tbaa !16    ; 2 uses
  %i.bw = load i32, ptr %i.j, align 8, !tbaa !17  ; 2 uses
  %i.bx = zext i32 %i.bw to i64
  %.idx67.i = shl nuw nsw i64 %i.bx, 3
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 %.idx67.i
  %.not4262.i = icmp eq i32 %i.bw, 0
  br i1 %.not4262.i, label %.thread47.i, label %.lr.ph66.i

.lr.ph66.i:                                       ; preds = %bb.j, %._crit_edge61.i
  %.063.i = phi ptr [ %i.cm, %._crit_edge61.i ], [ %i.bv, %bb.j ] ; 2 uses
  %i.bz = load ptr, ptr %.063.i, align 8, !tbaa !49 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 64
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 56 ; 2 uses
  %.sroa.043.056.i = load ptr, ptr %i.ca, align 8, !tbaa !86 ; 2 uses
  %.not5057.i = icmp eq ptr %.sroa.043.056.i, %i.cb
  br i1 %.not5057.i, label %._crit_edge61.i, label %.lr.ph60.i

.lr.ph60.i:                                       ; preds = %.lr.ph66.i, %.critedge.i
  %.sroa.043.058.i = phi ptr [ %.sroa.043.0.i, %.critedge.i ], [ %.sroa.043.056.i, %.lr.ph66.i ] ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.043.058.i, i64 16
  %i.cd = load i8, ptr %i.cc, align 8, !tbaa !27
  switch i8 %i.cd, label %.critedge.i [
    i8 55, label %.thread47.i
    i8 61, label %.thread47.i
    i8 70, label %.thread47.i
    i8 71, label %.thread47.i
    i8 93, label %bb.k
  ]

bb.k:                                             ; preds = %.lr.ph60.i
  %i.ce = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(144) %.sroa.043.058.i, i32 noundef 0) #11
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 48
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !138 ; 4 uses
  %8 = fcmp ule double %i.cg, f0x41DFFFFFFFC00000
  %i.ch = fcmp uge double %i.cg, f0xC1E0000000000000
  %9 = fcmp ord double %i.cg, 0.000000e+00
  call void @llvm.assume(i1 %9)
  call void @llvm.assume(i1 %8)
  call void @llvm.assume(i1 %i.ch)
  %i.ci = fptosi double %i.cg to i32
  %i.cj = and i32 %i.ci, 255
  %i.ck = icmp eq i32 %i.cj, 45
  br i1 %i.ck, label %.thread47.i, label %.critedge.i

.critedge.i:                                      ; preds = %bb.k, %.lr.ph60.i
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.043.058.i, i64 8
  %.sroa.043.0.i = load ptr, ptr %i.cl, align 8, !tbaa !86 ; 2 uses
  %.not50.i = icmp eq ptr %.sroa.043.0.i, %i.cb
  br i1 %.not50.i, label %._crit_edge61.i, label %.lr.ph60.i

._crit_edge61.i:                                  ; preds = %.critedge.i, %.lr.ph66.i
  %i.cm = getelementptr inbounds nuw i8, ptr %.063.i, i64 8 ; 2 uses
  %.not42.i = icmp eq ptr %i.cm, %i.by
  br i1 %.not42.i, label %.thread47.i, label %.lr.ph66.i

.thread47.i:                                      ; preds = %._crit_edge61.i, %bb.k, %.lr.ph60.i, %.lr.ph60.i, %.lr.ph60.i, %.lr.ph60.i, %bb.j
  %.not4253.i = phi i1 [ false, %bb.k ], [ true, %bb.j ], [ false, %.lr.ph60.i ], [ false, %.lr.ph60.i ], [ false, %.lr.ph60.i ], [ false, %.lr.ph60.i ], [ true, %._crit_edge61.i ]
  %i.cn = load ptr, ptr %6, align 8, !tbaa !16    ; 2 uses
  %i.co = icmp eq ptr %i.cn, %i.k
  br i1 %i.co, label %_ZN6hermesL12canBeInlinedEPNS_8FunctionES1_.exit, label %bb.l

bb.l:                                             ; preds = %.thread47.i
  call void @free(ptr noundef %i.cn) #11
  br label %_ZN6hermesL12canBeInlinedEPNS_8FunctionES1_.exit

_ZN6hermesL12canBeInlinedEPNS_8FunctionES1_.exit: ; preds = %.thread47.i, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  br i1 %.not4253.i, label %bb.m, label %_ZN6hermesL12canBeInlinedEPNS_8FunctionES1_.exit.thread

bb.m:                                             ; preds = %_ZN6hermesL12canBeInlinedEPNS_8FunctionES1_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #11
  store ptr %1, ptr %7, align 8, !tbaa !142
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.l, i8 0, i64 32, i1 false)
  %i.cp = call noundef ptr @_ZN6hermes9IRBuilder16createBasicBlockEPNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef %i.ax) #11 ; 2 uses
  call void @_ZN6hermes9IRBuilder17setInsertionBlockEPNS_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef %i.cp) #11
  %i.cq = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !86 ; 2 uses
  %i.cs = load ptr, ptr %i.au, align 8, !tbaa !99
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 56 ; 2 uses
  %.not189243 = icmp eq ptr %i.cr, %i.ct
  br i1 %.not189243, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.m, %.lr.ph
  %.sroa.0169.0244 = phi ptr [ %i.cv, %.lr.ph ], [ %i.cr, %bb.m ] ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.0169.0244, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !86 ; 2 uses
  call void @_ZN6hermes9IRBuilder33transferInstructionToCurrentBlockEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull %.sroa.0169.0244) #11
  %.not189 = icmp eq ptr %i.cv, %i.ct
  br i1 %.not189, label %._crit_edge, label %.lr.ph, !llvm.loop !77

._crit_edge:                                      ; preds = %.lr.ph, %bb.m
  call void @_ZN6hermes9IRBuilder22setInsertionPointAfterEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull %i.as) #11
  %i.cw = call noundef ptr @_ZN6hermes9IRBuilder17getInsertionBlockEv(ptr noundef nonnull align 8 dereferenceable(40) %7) #11
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 72
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !108 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %2, i8 0, i64 20, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  store ptr %i.m, ptr %3, align 8, !tbaa !16
  store i32 0, ptr %i.n, align 8, !tbaa !17
  store i32 8, ptr %i.o, align 4, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  store ptr %i.p, ptr %4, align 8, !tbaa !16
  store i32 0, ptr %i.q, align 8, !tbaa !17
  store i32 4, ptr %i.r, align 4, !tbaa !51
  %i.cz = call noundef ptr @_ZN6hermes9IRBuilder16createBasicBlockEPNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef %i.cy) #11 ; 4 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 236 ; 2 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.da, align 4 ; 2 uses
  %i.db = and i64 %.sroa.0.0.copyload.i.i, 4294967296
  %.not212.i = icmp eq i64 %i.db, 0
  %.sroa.0200.0.extract.trunc.i = trunc i64 %.sroa.0.0.copyload.i.i to i32
  %spec.select209.i = select i1 %.not212.i, i32 0, i32 %.sroa.0200.0.extract.trunc.i ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ay, i64 220
  %.sroa.0.0.copyload.i144.i = load i64, ptr %i.dc, align 4 ; 2 uses
  %i.dd = and i64 %.sroa.0.0.copyload.i144.i, 4294967296
  %.not214.i = icmp eq i64 %i.dd, 0
  %.sroa.0196.0.extract.trunc.i = trunc i64 %.sroa.0.0.copyload.i144.i to i32
  %i.de = select i1 %.not214.i, i32 0, i32 %.sroa.0196.0.extract.trunc.i
  %i.df = add i32 %i.de, %spec.select209.i
  store i32 %i.df, ptr %i.da, align 4, !tbaa !8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cy, i64 240
  store i8 1, ptr %.sroa.4.0..sroa_idx.i.i, align 4, !tbaa !52
  %i.dg = load i8, ptr %i.bq, align 4, !tbaa !133, !range !13, !noundef !14
  %i.dh = trunc nuw i8 %i.dg to i1
  %i.di = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(144) %i.as, i32 noundef 2) #11 ; 2 uses
  br i1 %i.dh, label %bb.o, label %bb.n

bb.n:                                             ; preds = %._crit_edge
  %i.dj = call noundef ptr @_ZN6hermes9IRBuilder22createCoerceThisNSInstEPNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef %i.di) #11 ; 2 uses
  %i.dk = icmp eq ptr %i.dj, null
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %spec.select.i44 = select i1 %i.dk, ptr null, ptr %i.dl
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %._crit_edge
  %.0126.i = phi ptr [ %spec.select.i44, %bb.n ], [ %i.di, %._crit_edge ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.dm = getelementptr inbounds nuw i8, ptr %i.ay, i64 208
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !143
  store ptr %i.dn, ptr %i.a, align 8, !tbaa !54
  %i.do = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes5ValueES4_NS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E16FindAndConstructEOS4_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  store ptr %.0126.i, ptr %i.dp, align 8, !tbaa !54
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %i.dq = getelementptr inbounds nuw i8, ptr %i.ay, i64 80
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !16 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.ay, i64 88
  %i.dt = load i32, ptr %i.ds, align 8, !tbaa !17 ; 2 uses
  %i.du = zext i32 %i.dt to i64
  %.idx.i45 = shl nuw nsw i64 %i.du, 3
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dr, i64 %.idx.i45
  %.not234.i = icmp eq i32 %i.dt, 0
  br i1 %.not234.i, label %._crit_edge.i48, label %.lr.ph.i46

._crit_edge.i48:                                  ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes5ValueES4_NS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E16FindAndConstructEOS4_.exit129, %bb.o
  %i.dw = load ptr, ptr %i.bc, align 8, !tbaa !132 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 40
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !55
  call fastcc void @_ZN6hermesL15cloneScopesIntoEPNS_8FunctionEPNS_9ScopeDescES3_RN4llvh8DenseMapIPNS_5ValueES7_NS4_12DenseMapInfoIS7_EENS4_6detail12DenseMapPairIS7_S7_EEEE(ptr noundef nonnull readonly %i.ba, ptr noundef %i.dw, ptr noundef %i.dy, ptr noundef nonnull align 8 dereferenceable(20) %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  %.val.i49 = load ptr, ptr %i.bu, align 8, !tbaa !86
  call fastcc void @_ZN6hermesL8orderDFSEPNS_8FunctionE(ptr dead_on_unwind noalias writable align 8 %5, ptr %.val.i49)
  %i.dz = load ptr, ptr %5, align 8, !tbaa !16    ; 3 uses
  %i.ea = load i32, ptr %i.v, align 8, !tbaa !17  ; 2 uses
  %i.eb = zext i32 %i.ea to i64
  %.idx272.i = shl nuw nsw i64 %i.eb, 3
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dz, i64 %.idx272.i
  %.not128237.i = icmp eq i32 %i.ea, 0
  br i1 %.not128237.i, label %._crit_edge241.i, label %.lr.ph240.i

.lr.ph.i46:                                       ; preds = %bb.o, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes5ValueES4_NS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E16FindAndConstructEOS4_.exit129
  %.0124236.i = phi ptr [ %i.hb, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes5ValueES4_NS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E16FindAndConstructEOS4_.exit129 ], [ %i.dr, %bb.o ] ; 2 uses
  %.0125235.i = phi i32 [ %i.ha, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes5ValueES4_NS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E16FindAndConstructEOS4_.exit129 ], [ 1, %bb.o ] ; 3 uses
  %i.ed = load ptr, ptr %.0124236.i, align 8, !tbaa !144 ; 7 uses
  %i.ee = call noundef i32 @_ZNK6hermes11Instruction14getNumOperandsEv(ptr noundef nonnull align 8 dereferenceable(144) %i.as) #11
  %i.ef = add i32 %i.ee, -2
  %i.eg = icmp ult i32 %.0125235.i, %i.ef
  br i1 %i.eg, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.lr.ph.i46
  %i.eh = add i32 %.0125235.i, 2
  %i.ei = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(144) %i.as, i32 noundef %i.eh) #11
  br label %bb.r

bb.q:                                             ; preds = %.lr.ph.i46
  %i.ej = call noundef ptr @_ZN6hermes9IRBuilder19getLiteralUndefinedEv(ptr noundef nonnull align 8 dereferenceable(40) %7) #11
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.ek = phi ptr [ %i.ei, %bb.p ], [ %i.ej, %bb.q ]
  %i.el = load ptr, ptr %2, align 8, !tbaa !58    ; 2 uses
  %i.em = load i32, ptr %i.s, align 8, !tbaa !59  ; 7 uses
  %i.en = icmp eq i32 %i.em, 0
  br i1 %i.en, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes5ValueES4_NS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_.exit.i118, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.eo = ptrtoint ptr %i.ed to i64
  %i.ep = trunc i64 %i.eo to i32                  ; 2 uses
  %i.eq = lshr i32 %i.ep, 4
  %i.er = lshr i32 %i.ep, 9
  %i.es = xor i32 %i.eq, %i.er
  %i.et = add i32 %i.em, -1                       ; 2 uses
  %.02744.i.i.i108 = and i32 %i.et, %i.es         ; 2 uses
  %i.eu = zext nneg i32 %.02744.i.i.i108 to i64
  %i.ev = getelementptr inbounds nuw [16 x i8], ptr %i.el, i64 %i.eu ; 3 uses
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !54 ; 2 uses
  %i.ex = icmp eq ptr %i.ed, %i.ew
  br i1 %i.ex, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes5ValueES4_NS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E16FindAndConstructEOS4_.exit129, label %.lr.ph.i.i.i109, !prof !60

.lr.ph.i.i.i109:                                  ; preds = %bb.s, %bb.u
  %i.ey = phi ptr [ %i.fi, %bb.u ], [ %i.ew, %bb.s ] ; 2 uses
  %i.ez = phi ptr [ %i.fh, %bb.u ], [ %i.ev, %bb.s ] ; 2 uses
  %.02747.i.i.i110 = phi i32 [ %.027.i.i.i115, %bb.u ], [ %.02744.i.i.i108, %bb.s ]
  %.046.i.i.i111 = phi i32 [ %i.fe, %bb.u ], [ 1, %bb.s ] ; 2 uses
  %.02945.i.i.i112 = phi ptr [ %spec.select.i.i.i114, %bb.u ], [ null, %bb.s ] ; 4 uses
  %i.fa = icmp eq ptr %i.ey, inttoptr (i64 -8 to ptr)
  br i1 %i.fa, label %bb.t, label %bb.u, !prof !61

bb.t:                                             ; preds = %.lr.ph.i.i.i109
  %.not.i.i.i117 = icmp eq ptr %.02945.i.i.i112, null
  %i.fb = select i1 %.not.i.i.i117, ptr %i.ez, ptr %.02945.i.i.i112
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes5ValueES4_NS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_.exit.i118

bb.u:                                             ; preds = %.lr.ph.i.i.i109
  %i.fc = icmp eq ptr %i.ey, inttoptr (i64 -16 to ptr)
  %i.fd = icmp eq ptr %.02945.i.i.i112, null
  %or.cond.not.i.i.i113 = select i1 %i.fc, i1 %i.fd, i1 false
  %spec.select.i.i.i114 = select i1 %or.cond.not.i.i.i113, ptr %i.ez, ptr %.02945.i.i.i112
  %i.fe = add i32 %.046.i.i.i111, 1
  %i.ff = add i32 %.046.i.i.i111, %.02747.i.i.i110
  %.027.i.i.i115 = and i32 %i.ff, %i.et           ; 2 uses
  %i.fg = zext i32 %.027.i.i.i115 to i64
  %i.fh = getelementptr inbounds nuw [16 x i8], ptr %i.el, i64 %i.fg ; 3 uses
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !54 ; 2 uses
  %i.fj = icmp eq ptr %i.ed, %i.fi
  br i1 %i.fj, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes5ValueES4_NS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S4_EEEES4_S4_S6_S9_E16FindAndConstructEOS4_.exit129, label %.lr.ph.i.i.i109, !prof !62, !llvm.loop !0

end_hunk_0
