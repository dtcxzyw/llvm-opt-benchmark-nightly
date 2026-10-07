Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/pme_spread?download=true
inline.NumInlined: 325
inline.NumDeleted: 134
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 26
begin_hunk_0
$_ZNSt6vectorIiN3gmx30DefaultInitializationAllocatorIiSaIiEEEE6resizeEm = comdat any

@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 22, ptr @0 }, align 8
@_ZTISt9exception = external constant ptr
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 22, ptr @0 }, align 8
@.str = private unnamed_addr constant [26 x i8] c"vector::_M_default_append\00", align 1
@debug = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [36 x i8] c"PME fftgrid comm y %2d x %2d x %2d\0A\00", align 1
@TMPI_FLOAT = external local_unnamed_addr constant ptr, align 8
@.str.4 = private unnamed_addr constant [36 x i8] c"PME fftgrid comm x %2d x %2d x %2d\0A\00", align 1

; Function Attrs: mustprogress uwtable
define void @_Z14spread_on_gridPK9gmx_pme_tP11PmeAtomCommP14PmeAndFftGridsbbb(ptr noundef %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3, i1 noundef zeroext %4, i1 noundef zeroext %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [3 x i32], align 4                ; 11 uses
  %i.b = alloca [3 x i32], align 4                ; 3 uses
  %i.c = alloca [3 x i32], align 4                ; 7 uses
  %6 = alloca %struct.tmpi_status_, align 8       ; 4 uses
  %i.d = alloca ptr, align 8                      ; 6 uses
  %i.e = alloca ptr, align 8                      ; 3 uses
  %i.f = alloca ptr, align 8                      ; 6 uses
  %i.g = alloca i8, align 1                       ; 2 uses
  %i.h = alloca i8, align 1                       ; 3 uses
  %i.i = alloca i8, align 1                       ; 2 uses
  %i.j = alloca i32, align 4                      ; 6 uses
  %i.k = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2) ; 3 uses
  store ptr %0, ptr %i.d, align 8, !tbaa !11
  store ptr %1, ptr %i.e, align 8, !tbaa !13
  store ptr %2, ptr %i.f, align 8, !tbaa !15
  %i.l = zext i1 %3 to i8
  store i8 %i.l, ptr %i.g, align 1, !tbaa !17
  %i.m = zext i1 %4 to i8
  store i8 %i.m, ptr %i.h, align 1, !tbaa !17
  %i.n = zext i1 %5 to i8
  store i8 %i.n, ptr %i.i, align 1, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #3
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.p = load i32, ptr %i.o, align 4, !tbaa !225  ; 3 uses
  store i32 %i.p, ptr %i.j, align 4, !tbaa !105
  br i1 %3, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.k, i32 %i.p)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 4, ptr nonnull @_Z14spread_on_gridPK9gmx_pme_tP11PmeAtomCommP14PmeAndFftGridsbbb.omp_outlined, ptr nonnull %i.j, ptr nonnull %i.e, ptr nonnull %i.d, ptr nonnull %i.f)
  %.pre = load i32, ptr %i.j, align 4, !tbaa !105
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.q = phi i32 [ %.pre, %bb.b ], [ %i.p, %bb.a ]
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.k, i32 %i.q)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 7, ptr nonnull @_Z14spread_on_gridPK9gmx_pme_tP11PmeAtomCommP14PmeAndFftGridsbbb.omp_outlined.1, ptr nonnull %i.j, ptr nonnull %i.f, ptr nonnull %i.d, ptr nonnull %i.e, ptr nonnull %i.g, ptr nonnull %i.i, ptr nonnull %i.h)
  %i.r = load i8, ptr %i.h, align 1, !tbaa !17, !range !106, !noundef !107
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.d, label %bb.q

bb.d:                                             ; preds = %bb.c
  %i.t = load ptr, ptr %i.d, align 8, !tbaa !11
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 80
  %i.v = load i8, ptr %i.u, align 8, !tbaa !108, !range !106, !noundef !107
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.e, label %bb.q

bb.e:                                             ; preds = %bb.d
  %i.x = load ptr, ptr %i.f, align 8, !tbaa !15
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 72
  %i.z = load i32, ptr %i.y, align 8, !tbaa !128
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.k, i32 %i.z)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 2, ptr nonnull @_Z14spread_on_gridPK9gmx_pme_tP11PmeAtomCommP14PmeAndFftGridsbbb.omp_outlined.2, ptr nonnull %i.f, ptr nonnull %i.d)
  %i.aa = load ptr, ptr %i.d, align 8, !tbaa !11  ; 16 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !226
  %i.ad = icmp sgt i32 %i.ac, 1
  br i1 %i.ad, label %bb.f, label %bb.q

bb.f:                                             ; preds = %bb.e
  %i.ae = load ptr, ptr %i.f, align 8, !tbaa !15  ; 2 uses
  %i.af = getelementptr i8, ptr %i.ae, i64 200
  %.val = load ptr, ptr %i.af, align 8, !tbaa !129 ; 6 uses
  %i.ag = getelementptr i8, ptr %i.ae, i64 216
  %.val1 = load ptr, ptr %i.ag, align 8, !tbaa !130
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #3
  %i.ah = call noundef i32 @_Z30gmx_parallel_3dfft_real_limitsP18gmx_parallel_3dfftPiS1_S1_(ptr noundef %.val1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) ; 0 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !131
  %i.ak = icmp sgt i32 %i.aj, 1
  br i1 %i.ak, label %bb.g, label %..loopexit4_crit_edge.i

..loopexit4_crit_edge.i:                          ; preds = %bb.f
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 20
  %.pre84.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !132
  br label %.loopexit4.i

bb.g:                                             ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %i.aa, i64 784
  %i.am = getelementptr inbounds nuw i8, ptr %i.aa, i64 20 ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !132 ; 2 uses
  %i.ao = icmp sgt i32 %i.an, 1
  br i1 %i.ao, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aa, i64 712
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !229
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !231
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.0125.i = phi i32 [ %i.as, %bb.h ], [ 0, %bb.g ] ; 3 uses
  %i.at = load i32, ptr %i.a, align 4, !tbaa !105 ; 2 uses
  %i.au = add nsw i32 %i.at, %.0125.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !105
  %i.ax = mul nsw i32 %i.au, %i.aw                ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aa, i64 856 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.aa, i64 864 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !232
  %i.bb = load ptr, ptr %i.ay, align 8, !tbaa !229 ; 2 uses
  %.not42.i = icmp eq ptr %i.ba, %i.bb
  br i1 %.not42.i, label %.loopexit4.i, label %.lr.ph24.i

.lr.ph24.i:                                       ; preds = %bb.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aa, i64 848
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !237
  %i.be = getelementptr inbounds nuw i8, ptr %i.aa, i64 880
  %i.bf = getelementptr inbounds nuw i8, ptr %i.aa, i64 904
  %i.bg = mul nsw i32 %i.bd, %i.ax
  %i.bh = load ptr, ptr @TMPI_FLOAT, align 8      ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.bj = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.aa, i64 736
  %i.bl = icmp sgt i32 %.0125.i, 0
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %wide.trip.count67.i = zext nneg i32 %.0125.i to i64
  br label %bb.j

bb.j:                                             ; preds = %.loopexit3.i, %.lr.ph24.i
  %i.bn = phi i32 [ %i.at, %.lr.ph24.i ], [ %i.cs, %.loopexit3.i ]
  %i.bo = phi ptr [ %i.bb, %.lr.ph24.i ], [ %i.jc, %.loopexit3.i ] ; 3 uses
  %.022.i = phi i64 [ 0, %.lr.ph24.i ], [ %i.ja, %.loopexit3.i ] ; 4 uses
  %i.bp = getelementptr inbounds nuw [28 x i8], ptr %i.bo, i64 %.022.i ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !238
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !238
  %i.bu = sub nsw i32 %i.br, %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bp, i64 20
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !239 ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !240 ; 3 uses
  %i.bz = load ptr, ptr %i.be, align 8, !tbaa !133
  %i.ca = load i32, ptr %i.av, align 4, !tbaa !105 ; 2 uses
  %i.cb = mul nsw i32 %i.ca, %i.bu
  %i.cc = sext i32 %i.cb to i64
  %i.cd = getelementptr inbounds [4 x i8], ptr %i.bz, i64 %i.cc
  %i.ce = load ptr, ptr %i.bf, align 8, !tbaa !133 ; 7 uses
  %i.cf = load ptr, ptr @debug, align 8, !tbaa !242 ; 2 uses
  %.not129.i = icmp eq ptr %i.cf, null
  br i1 %.not129.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !231
  %i.ci = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.cf, ptr noundef nonnull @.str.3, i32 noundef %i.bn, i32 noundef %i.ch, i32 noundef %i.ca) #3 ; 0 uses
  %.pre.i = load ptr, ptr %i.ay, align 8, !tbaa !229
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.cj = phi ptr [ %.pre.i, %bb.k ], [ %i.bo, %bb.j ]
  %i.ck = getelementptr inbounds nuw [28 x i8], ptr %i.cj, i64 %.022.i ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !243
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 12
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !244
  %i.co = trunc i64 %.022.i to i32                ; 2 uses
  %i.cp = mul nsw i32 %i.by, %i.ax
  %i.cq = load ptr, ptr %i.al, align 8, !tbaa !245
  %i.cr = call noundef i32 @_Z13tMPI_SendrecvPKviP14tmpi_datatype_iiPviS2_iiP10tmpi_comm_P12tmpi_status_(ptr noundef %i.cd, i32 noundef %i.bg, ptr noundef %i.bh, i32 noundef %i.cl, i32 noundef %i.co, ptr noundef %i.ce, i32 noundef %i.cp, ptr noundef %i.bh, i32 noundef %i.cn, i32 noundef %i.co, ptr noundef %i.cq, ptr noundef nonnull %6) ; 0 uses
  %i.cs = load i32, ptr %i.a, align 4, !tbaa !105 ; 4 uses
  %i.ct = icmp sgt i32 %i.cs, 0
  br i1 %i.ct, label %.preheader2.lr.ph.i, label %._crit_edge10.split.i

.preheader2.lr.ph.i:                              ; preds = %bb.l
  %i.cu = icmp slt i32 %i.bw, 1
  %i.cv = load i32, ptr %i.av, align 4            ; 4 uses
  %i.cw = icmp slt i32 %i.cv, 1
  %brmerge.i = select i1 %i.cu, i1 true, i1 %i.cw
  br i1 %brmerge.i, label %._crit_edge10.split.i, label %.preheader2.preheader.i

.preheader2.preheader.i:                          ; preds = %.preheader2.lr.ph.i
  %i.cx = load i32, ptr %i.bj, align 4            ; 2 uses
  %i.cy = load i32, ptr %i.bi, align 4
  %i.cz = sext i32 %i.cx to i64                   ; 3 uses
  %i.da = zext nneg i32 %i.cv to i64              ; 12 uses
  %i.db = sext i32 %i.cy to i64                   ; 2 uses
  %i.dc = sext i32 %i.by to i64                   ; 2 uses
  %wide.trip.count52.i = zext nneg i32 %i.cs to i64
  %wide.trip.count47.i = zext nneg i32 %i.bw to i64 ; 3 uses
  %i.dd = shl nsw i64 %i.cz, 2
  %i.de = mul i64 %i.dd, %i.db
  %i.df = shl nuw nsw i64 %wide.trip.count47.i, 2
  %i.dg = add nsw i64 %i.df, -4
  %i.dh = mul i64 %i.dg, %i.cz
  %i.di = shl nuw nsw i64 %i.da, 2
  %i.dj = shl nsw i64 %i.dc, 2
  %i.dk = mul i64 %i.dj, %i.da
  %i.dl = shl nuw nsw i64 %wide.trip.count47.i, 2
  %i.dm = mul nuw i64 %i.dl, %i.da
  %i.dn = getelementptr i8, ptr %.val, i64 %i.dh
  %i.do = getelementptr i8, ptr %i.dn, i64 %i.di
  %i.dp = getelementptr i8, ptr %i.ce, i64 %i.dm
  %min.iters.check37 = icmp ult i32 %i.cv, 4
  %stride.check = icmp slt i32 %i.cx, 0
  %min.iters.check39 = icmp ult i32 %i.cv, 32
  %i.dq = and i64 %i.da, 28
  %n.vec41 = and i64 %i.da, 2147483616            ; 4 uses
  %cmp.n54 = icmp eq i64 %n.vec41, %i.da
  %min.epilog.iters.check59 = icmp eq i64 %i.dq, 0
  %n.vec61 = and i64 %i.da, 2147483644            ; 3 uses
  %cmp.n68 = icmp eq i64 %n.vec61, %i.da
  br label %.preheader2.i

.preheader2.i:                                    ; preds = %._crit_edge8.i, %.preheader2.preheader.i
  %indvars.iv49.i = phi i64 [ 0, %.preheader2.preheader.i ], [ %indvars.iv.next50.i, %._crit_edge8.i ] ; 5 uses
  %i.dr = mul i64 %i.de, %indvars.iv49.i          ; 2 uses
  %scevgep30 = getelementptr i8, ptr %.val, i64 %i.dr
  %scevgep31 = getelementptr i8, ptr %i.do, i64 %i.dr
  %i.ds = mul i64 %i.dk, %indvars.iv49.i          ; 2 uses
  %scevgep32 = getelementptr i8, ptr %i.ce, i64 %i.ds
  %scevgep33 = getelementptr i8, ptr %i.dp, i64 %i.ds
  %i.dt = mul nsw i64 %indvars.iv49.i, %i.db
  %i.du = mul nsw i64 %indvars.iv49.i, %i.dc
  %bound034 = icmp ult ptr %scevgep30, %scevgep33
  %bound135 = icmp ult ptr %scevgep32, %scevgep31
  %found.conflict36 = and i1 %bound034, %bound135
  %i.dv = or i1 %found.conflict36, %stride.check
  br label %iter.check56

iter.check56:                                     ; preds = %._crit_edge.i, %.preheader2.i
  %indvars.iv44.i = phi i64 [ 0, %.preheader2.i ], [ %indvars.iv.next45.i, %._crit_edge.i ] ; 3 uses
  %i.dw = add nsw i64 %indvars.iv44.i, %i.dt
  %i.dx = mul nsw i64 %i.dw, %i.cz
  %i.dy = add nsw i64 %indvars.iv44.i, %i.du
  %i.dz = mul nsw i64 %i.dy, %i.da
  %invariant.gep.i = getelementptr [4 x i8], ptr %i.ce, i64 %i.dz ; 11 uses
  %invariant.gep96.i = getelementptr [4 x i8], ptr %.val, i64 %i.dx ; 11 uses
  %brmerge = select i1 %min.iters.check37, i1 true, i1 %i.dv
  br i1 %brmerge, label %vec.epilog.scalar.ph57.preheader, label %vector.main.loop.iter.check38

vector.main.loop.iter.check38:                    ; preds = %iter.check56
  br i1 %min.iters.check39, label %vec.epilog.ph60, label %vector.body42

vector.body42:                                    ; preds = %vector.main.loop.iter.check38, %vector.body42
  %index43 = phi i64 [ %index.next52, %vector.body42 ], [ 0, %vector.main.loop.iter.check38 ] ; 3 uses
  %i.ea = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %index43 ; 4 uses
  %i.eb = getelementptr i8, ptr %i.ea, i64 32
  %i.ec = getelementptr i8, ptr %i.ea, i64 64
  %i.ed = getelementptr i8, ptr %i.ea, i64 96
  %wide.load44 = load <8 x float>, ptr %i.ea, align 4, !tbaa !134, !alias.scope !246
  %wide.load45 = load <8 x float>, ptr %i.eb, align 4, !tbaa !134, !alias.scope !246
  %wide.load46 = load <8 x float>, ptr %i.ec, align 4, !tbaa !134, !alias.scope !246
  %wide.load47 = load <8 x float>, ptr %i.ed, align 4, !tbaa !134, !alias.scope !246
  %i.ee = getelementptr [4 x i8], ptr %invariant.gep96.i, i64 %index43 ; 5 uses
  %i.ef = getelementptr i8, ptr %i.ee, i64 32     ; 2 uses
  %i.eg = getelementptr i8, ptr %i.ee, i64 64     ; 2 uses
  %i.eh = getelementptr i8, ptr %i.ee, i64 96     ; 2 uses
  %wide.load48 = load <8 x float>, ptr %i.ee, align 4, !tbaa !134, !alias.scope !247, !noalias !246
  %wide.load49 = load <8 x float>, ptr %i.ef, align 4, !tbaa !134, !alias.scope !247, !noalias !246
  %wide.load50 = load <8 x float>, ptr %i.eg, align 4, !tbaa !134, !alias.scope !247, !noalias !246
  %wide.load51 = load <8 x float>, ptr %i.eh, align 4, !tbaa !134, !alias.scope !247, !noalias !246
  %i.ei = fadd <8 x float> %wide.load44, %wide.load48
  %i.ej = fadd <8 x float> %wide.load45, %wide.load49
  %i.ek = fadd <8 x float> %wide.load46, %wide.load50
  %i.el = fadd <8 x float> %wide.load47, %wide.load51
  store <8 x float> %i.ei, ptr %i.ee, align 4, !tbaa !134, !alias.scope !247, !noalias !246
  store <8 x float> %i.ej, ptr %i.ef, align 4, !tbaa !134, !alias.scope !247, !noalias !246
  store <8 x float> %i.ek, ptr %i.eg, align 4, !tbaa !134, !alias.scope !247, !noalias !246
  store <8 x float> %i.el, ptr %i.eh, align 4, !tbaa !134, !alias.scope !247, !noalias !246
  %index.next52 = add nuw i64 %index43, 32        ; 2 uses
  %i.em = icmp eq i64 %index.next52, %n.vec41
  br i1 %i.em, label %middle.block53, label %vector.body42, !llvm.loop !200

middle.block53:                                   ; preds = %vector.body42
  br i1 %cmp.n54, label %._crit_edge.i, label %vec.epilog.iter.check58

vec.epilog.iter.check58:                          ; preds = %middle.block53
  br i1 %min.epilog.iters.check59, label %vec.epilog.scalar.ph57.preheader, label %vec.epilog.ph60, !prof !138

vec.epilog.ph60:                                  ; preds = %vector.main.loop.iter.check38, %vec.epilog.iter.check58
  %vec.epilog.resume.val55 = phi i64 [ %n.vec41, %vec.epilog.iter.check58 ], [ 0, %vector.main.loop.iter.check38 ]
  br label %vec.epilog.vector.body62

vec.epilog.vector.body62:                         ; preds = %vec.epilog.vector.body62, %vec.epilog.ph60
  %index63 = phi i64 [ %vec.epilog.resume.val55, %vec.epilog.ph60 ], [ %index.next66, %vec.epilog.vector.body62 ] ; 3 uses
  %i.en = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %index63
  %wide.load64 = load <4 x float>, ptr %i.en, align 4, !tbaa !134, !alias.scope !246
  %i.eo = getelementptr [4 x i8], ptr %invariant.gep96.i, i64 %index63 ; 2 uses
  %wide.load65 = load <4 x float>, ptr %i.eo, align 4, !tbaa !134, !alias.scope !247, !noalias !246
  %i.ep = fadd <4 x float> %wide.load64, %wide.load65
  store <4 x float> %i.ep, ptr %i.eo, align 4, !tbaa !134, !alias.scope !247, !noalias !246
  %index.next66 = add nuw i64 %index63, 4         ; 2 uses
  %i.eq = icmp eq i64 %index.next66, %n.vec61
  br i1 %i.eq, label %vec.epilog.middle.block67, label %vec.epilog.vector.body62, !llvm.loop !201

vec.epilog.middle.block67:                        ; preds = %vec.epilog.vector.body62
  br i1 %cmp.n68, label %._crit_edge.i, label %vec.epilog.scalar.ph57.preheader

vec.epilog.scalar.ph57.preheader:                 ; preds = %iter.check56, %vec.epilog.iter.check58, %vec.epilog.middle.block67
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check56 ], [ %n.vec61, %vec.epilog.middle.block67 ], [ %n.vec41, %vec.epilog.iter.check58 ] ; 4 uses
  %i.er = sub nsw i64 %i.da, %indvars.iv.i.ph
  %xtraiter = and i64 %i.er, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph57.prol.loopexit, label %vec.epilog.scalar.ph57.prol

vec.epilog.scalar.ph57.prol:                      ; preds = %vec.epilog.scalar.ph57.preheader, %vec.epilog.scalar.ph57.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %vec.epilog.scalar.ph57.prol ], [ %indvars.iv.i.ph, %vec.epilog.scalar.ph57.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph57.prol ], [ 0, %vec.epilog.scalar.ph57.preheader ]
  %gep.i.prol = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i.prol
  %i.es = load float, ptr %gep.i.prol, align 4, !tbaa !134
  %gep97.i.prol = getelementptr [4 x i8], ptr %invariant.gep96.i, i64 %indvars.iv.i.prol ; 2 uses
  %i.et = load float, ptr %gep97.i.prol, align 4, !tbaa !134
  %i.eu = fadd float %i.es, %i.et
  store float %i.eu, ptr %gep97.i.prol, align 4, !tbaa !134
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph57.prol.loopexit, label %vec.epilog.scalar.ph57.prol, !llvm.loop !202

vec.epilog.scalar.ph57.prol.loopexit:             ; preds = %vec.epilog.scalar.ph57.prol, %vec.epilog.scalar.ph57.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %vec.epilog.scalar.ph57.preheader ], [ %indvars.iv.next.i.prol, %vec.epilog.scalar.ph57.prol ]
  %i.ev = sub nsw i64 %indvars.iv.i.ph, %i.da
  %i.ew = icmp ugt i64 %i.ev, -8
  br i1 %i.ew, label %._crit_edge.i, label %vec.epilog.scalar.ph57

vec.epilog.scalar.ph57:                           ; preds = %vec.epilog.scalar.ph57.prol.loopexit, %vec.epilog.scalar.ph57
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.7, %vec.epilog.scalar.ph57 ], [ %indvars.iv.i.unr, %vec.epilog.scalar.ph57.prol.loopexit ] ; 10 uses
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i
  %i.ex = load float, ptr %gep.i, align 4, !tbaa !134
  %gep97.i = getelementptr [4 x i8], ptr %invariant.gep96.i, i64 %indvars.iv.i ; 2 uses
  %i.ey = load float, ptr %gep97.i, align 4, !tbaa !134
  %i.ez = fadd float %i.ex, %i.ey
  store float %i.ez, ptr %gep97.i, align 4, !tbaa !134
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %gep.i.1 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i
  %i.fa = load float, ptr %gep.i.1, align 4, !tbaa !134
  %gep97.i.1 = getelementptr [4 x i8], ptr %invariant.gep96.i, i64 %indvars.iv.next.i ; 2 uses
  %i.fb = load float, ptr %gep97.i.1, align 4, !tbaa !134
  %i.fc = fadd float %i.fa, %i.fb
  store float %i.fc, ptr %gep97.i.1, align 4, !tbaa !134
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %gep.i.2 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i.1
  %i.fd = load float, ptr %gep.i.2, align 4, !tbaa !134
  %gep97.i.2 = getelementptr [4 x i8], ptr %invariant.gep96.i, i64 %indvars.iv.next.i.1 ; 2 uses
  %i.fe = load float, ptr %gep97.i.2, align 4, !tbaa !134
  %i.ff = fadd float %i.fd, %i.fe
  store float %i.ff, ptr %gep97.i.2, align 4, !tbaa !134
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i, 3 ; 2 uses
  %gep.i.3 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i.2
  %i.fg = load float, ptr %gep.i.3, align 4, !tbaa !134
  %gep97.i.3 = getelementptr [4 x i8], ptr %invariant.gep96.i, i64 %indvars.iv.next.i.2 ; 2 uses
  %i.fh = load float, ptr %gep97.i.3, align 4, !tbaa !134
  %i.fi = fadd float %i.fg, %i.fh
  store float %i.fi, ptr %gep97.i.3, align 4, !tbaa !134
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %gep.i.4 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i.3
  %i.fj = load float, ptr %gep.i.4, align 4, !tbaa !134
  %gep97.i.4 = getelementptr [4 x i8], ptr %invariant.gep96.i, i64 %indvars.iv.next.i.3 ; 2 uses
  %i.fk = load float, ptr %gep97.i.4, align 4, !tbaa !134
  %i.fl = fadd float %i.fj, %i.fk
  store float %i.fl, ptr %gep97.i.4, align 4, !tbaa !134
  %indvars.iv.next.i.4 = add nuw nsw i64 %indvars.iv.i, 5 ; 2 uses
  %gep.i.5 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i.4
  %i.fm = load float, ptr %gep.i.5, align 4, !tbaa !134
  %gep97.i.5 = getelementptr [4 x i8], ptr %invariant.gep96.i, i64 %indvars.iv.next.i.4 ; 2 uses
  %i.fn = load float, ptr %gep97.i.5, align 4, !tbaa !134
  %i.fo = fadd float %i.fm, %i.fn
  store float %i.fo, ptr %gep97.i.5, align 4, !tbaa !134
  %indvars.iv.next.i.5 = add nuw nsw i64 %indvars.iv.i, 6 ; 2 uses
  %gep.i.6 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i.5
  %i.fp = load float, ptr %gep.i.6, align 4, !tbaa !134
  %gep97.i.6 = getelementptr [4 x i8], ptr %invariant.gep96.i, i64 %indvars.iv.next.i.5 ; 2 uses
  %i.fq = load float, ptr %gep97.i.6, align 4, !tbaa !134
  %i.fr = fadd float %i.fp, %i.fq
  store float %i.fr, ptr %gep97.i.6, align 4, !tbaa !134
  %indvars.iv.next.i.6 = add nuw nsw i64 %indvars.iv.i, 7 ; 2 uses
  %gep.i.7 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i.6
  %i.fs = load float, ptr %gep.i.7, align 4, !tbaa !134
  %gep97.i.7 = getelementptr [4 x i8], ptr %invariant.gep96.i, i64 %indvars.iv.next.i.6 ; 2 uses
  %i.ft = load float, ptr %gep97.i.7, align 4, !tbaa !134
  %i.fu = fadd float %i.fs, %i.ft
  store float %i.fu, ptr %gep97.i.7, align 4, !tbaa !134
  %indvars.iv.next.i.7 = add nuw nsw i64 %indvars.iv.i, 8 ; 2 uses
  %exitcond.not.i.7 = icmp eq i64 %indvars.iv.next.i.7, %i.da
  br i1 %exitcond.not.i.7, label %._crit_edge.i, label %vec.epilog.scalar.ph57, !llvm.loop !203

._crit_edge.i:                                    ; preds = %vec.epilog.scalar.ph57.prol.loopexit, %vec.epilog.scalar.ph57, %vec.epilog.middle.block67, %middle.block53
  %indvars.iv.next45.i = add nuw nsw i64 %indvars.iv44.i, 1 ; 2 uses
  %exitcond48.not.i = icmp eq i64 %indvars.iv.next45.i, %wide.trip.count47.i
  br i1 %exitcond48.not.i, label %._crit_edge8.i, label %iter.check56, !llvm.loop !204

._crit_edge8.i:                                   ; preds = %._crit_edge.i
  %indvars.iv.next50.i = add nuw nsw i64 %indvars.iv49.i, 1 ; 2 uses
  %exitcond53.not.i = icmp eq i64 %indvars.iv.next50.i, %wide.trip.count52.i
  br i1 %exitcond53.not.i, label %._crit_edge10.split.i, label %.preheader2.i, !llvm.loop !205

._crit_edge10.split.i:                            ; preds = %._crit_edge8.i, %.preheader2.lr.ph.i, %bb.l
  %i.fv = load i32, ptr %i.am, align 4, !tbaa !132 ; 2 uses
  %i.fw = icmp sgt i32 %i.fv, 1
  br i1 %i.fw, label %bb.m, label %.loopexit3.i

bb.m:                                             ; preds = %._crit_edge10.split.i
  %i.fx = load ptr, ptr %i.bk, align 8, !tbaa !133 ; 3 uses
  br i1 %i.bl, label %.preheader1.lr.ph.i, label %.loopexit3.i

.preheader1.lr.ph.i:                              ; preds = %bb.m
  %i.fy = icmp slt i32 %i.bw, 1
  %i.fz = load i32, ptr %i.av, align 4            ; 4 uses
  %i.ga = icmp slt i32 %i.fz, 1
  %brmerge38.i = select i1 %i.fy, i1 true, i1 %i.ga
  br i1 %brmerge38.i, label %.loopexit3.i, label %.preheader1.preheader.i

.preheader1.preheader.i:                          ; preds = %.preheader1.lr.ph.i
  %i.gb = load i32, ptr %i.bm, align 4
  %i.gc = zext nneg i32 %i.fz to i64              ; 15 uses
  %i.gd = sext i32 %i.gb to i64                   ; 2 uses
  %i.ge = sext i32 %i.cs to i64                   ; 3 uses
  %i.gf = sext i32 %i.by to i64                   ; 3 uses
  %wide.trip.count62.i = zext nneg i32 %i.bw to i64 ; 3 uses
  %i.gg = shl nsw i64 %i.gd, 2
  %i.gh = mul i64 %i.gg, %i.gc
  %i.gi = shl nuw nsw i64 %wide.trip.count62.i, 2
  %i.gj = mul nuw i64 %i.gi, %i.gc
  %i.gk = shl nsw i64 %i.gf, 2
  %i.gl = mul i64 %i.gk, %i.ge
  %i.gm = mul i64 %i.gl, %i.gc
  %i.gn = shl nsw i64 %i.gf, 2                    ; 2 uses
  %7 = mul i64 %i.gn, %i.gc
  %i.go = mul i64 %i.gn, %i.ge
  %i.gp = shl nuw nsw i64 %wide.trip.count62.i, 2
  %i.gq = add i64 %i.go, %i.gp
  %i.gr = mul i64 %i.gq, %i.gc
  %i.gs = getelementptr i8, ptr %i.fx, i64 %i.gj
  %i.gt = getelementptr i8, ptr %i.ce, i64 %i.gm
  %i.gu = getelementptr i8, ptr %i.ce, i64 %i.gr
  %min.iters.check = icmp ult i32 %i.fz, 4
  %min.iters.check15 = icmp ult i32 %i.fz, 32
  %i.gv = and i64 %i.gc, 28
  %n.vec = and i64 %i.gc, 2147483616              ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %i.gc
  %min.epilog.iters.check = icmp eq i64 %i.gv, 0
  %n.vec23 = and i64 %i.gc, 2147483644            ; 3 uses
  %cmp.n28 = icmp eq i64 %n.vec23, %i.gc
  br label %.preheader1.i

.preheader1.i:                                    ; preds = %._crit_edge19.i, %.preheader1.preheader.i
  %indvars.iv64.i = phi i64 [ 0, %.preheader1.preheader.i ], [ %indvars.iv.next65.i, %._crit_edge19.i ] ; 5 uses
  %i.gw = mul i64 %i.gh, %indvars.iv64.i          ; 2 uses
  %scevgep = getelementptr i8, ptr %i.fx, i64 %i.gw
  %scevgep12 = getelementptr i8, ptr %i.gs, i64 %i.gw
  %i.gx = mul i64 %7, %indvars.iv64.i             ; 2 uses
  %scevgep13 = getelementptr i8, ptr %i.gt, i64 %i.gx
  %scevgep14 = getelementptr i8, ptr %i.gu, i64 %i.gx
  %i.gy = mul nsw i64 %indvars.iv64.i, %i.gd
  %i.gz = add nsw i64 %indvars.iv64.i, %i.ge
  %i.ha = mul nsw i64 %i.gz, %i.gf
  %bound0 = icmp ult ptr %scevgep, %scevgep14
  %bound1 = icmp ult ptr %scevgep13, %scevgep12
  %found.conflict = and i1 %bound0, %bound1
  br label %iter.check

iter.check:                                       ; preds = %._crit_edge16.i, %.preheader1.i
  %indvars.iv59.i = phi i64 [ 0, %.preheader1.i ], [ %indvars.iv.next60.i, %._crit_edge16.i ] ; 3 uses
  %i.hb = add nsw i64 %indvars.iv59.i, %i.gy
  %i.hc = mul nsw i64 %i.hb, %i.gc
  %i.hd = add nsw i64 %indvars.iv59.i, %i.ha
  %i.he = mul nsw i64 %i.hd, %i.gc
  %invariant.gep98.i = getelementptr [4 x i8], ptr %i.ce, i64 %i.he ; 11 uses
  %invariant.gep100.i = getelementptr [4 x i8], ptr %i.fx, i64 %i.hc ; 11 uses
  %brmerge118 = select i1 %min.iters.check, i1 true, i1 %found.conflict
  br i1 %brmerge118, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check15, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.hf = getelementptr [4 x i8], ptr %invariant.gep98.i, i64 %index ; 4 uses
  %i.hg = getelementptr i8, ptr %i.hf, i64 32
  %i.hh = getelementptr i8, ptr %i.hf, i64 64
  %i.hi = getelementptr i8, ptr %i.hf, i64 96
  %wide.load = load <8 x float>, ptr %i.hf, align 4, !tbaa !134, !alias.scope !248
  %wide.load16 = load <8 x float>, ptr %i.hg, align 4, !tbaa !134, !alias.scope !248
  %wide.load17 = load <8 x float>, ptr %i.hh, align 4, !tbaa !134, !alias.scope !248
  %wide.load18 = load <8 x float>, ptr %i.hi, align 4, !tbaa !134, !alias.scope !248
  %i.hj = getelementptr [4 x i8], ptr %invariant.gep100.i, i64 %index ; 5 uses
  %i.hk = getelementptr i8, ptr %i.hj, i64 32     ; 2 uses
  %i.hl = getelementptr i8, ptr %i.hj, i64 64     ; 2 uses
  %i.hm = getelementptr i8, ptr %i.hj, i64 96     ; 2 uses
  %wide.load19 = load <8 x float>, ptr %i.hj, align 4, !tbaa !134, !alias.scope !249, !noalias !248
  %wide.load20 = load <8 x float>, ptr %i.hk, align 4, !tbaa !134, !alias.scope !249, !noalias !248
  %wide.load21 = load <8 x float>, ptr %i.hl, align 4, !tbaa !134, !alias.scope !249, !noalias !248
  %wide.load22 = load <8 x float>, ptr %i.hm, align 4, !tbaa !134, !alias.scope !249, !noalias !248
  %i.hn = fadd <8 x float> %wide.load, %wide.load19
  %i.ho = fadd <8 x float> %wide.load16, %wide.load20
  %i.hp = fadd <8 x float> %wide.load17, %wide.load21
  %i.hq = fadd <8 x float> %wide.load18, %wide.load22
  store <8 x float> %i.hn, ptr %i.hj, align 4, !tbaa !134, !alias.scope !249, !noalias !248
  store <8 x float> %i.ho, ptr %i.hk, align 4, !tbaa !134, !alias.scope !249, !noalias !248
  store <8 x float> %i.hp, ptr %i.hl, align 4, !tbaa !134, !alias.scope !249, !noalias !248
  store <8 x float> %i.hq, ptr %i.hm, align 4, !tbaa !134, !alias.scope !249, !noalias !248
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.hr = icmp eq i64 %index.next, %n.vec
  br i1 %i.hr, label %middle.block, label %vector.body, !llvm.loop !209

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge16.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !138

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index24 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next27, %vec.epilog.vector.body ] ; 3 uses
  %i.hs = getelementptr [4 x i8], ptr %invariant.gep98.i, i64 %index24
  %wide.load25 = load <4 x float>, ptr %i.hs, align 4, !tbaa !134, !alias.scope !248
  %i.ht = getelementptr [4 x i8], ptr %invariant.gep100.i, i64 %index24 ; 2 uses
  %wide.load26 = load <4 x float>, ptr %i.ht, align 4, !tbaa !134, !alias.scope !249, !noalias !248
  %i.hu = fadd <4 x float> %wide.load25, %wide.load26
  store <4 x float> %i.hu, ptr %i.ht, align 4, !tbaa !134, !alias.scope !249, !noalias !248
  %index.next27 = add nuw i64 %index24, 4         ; 2 uses
  %i.hv = icmp eq i64 %index.next27, %n.vec23
  br i1 %i.hv, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !210

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n28, label %._crit_edge16.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv54.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec23, %vec.epilog.middle.block ], [ %n.vec, %vec.epilog.iter.check ] ; 4 uses
  %i.hw = sub nsw i64 %i.gc, %indvars.iv54.i.ph
  %xtraiter112 = and i64 %i.hw, 7                 ; 2 uses
  %lcmp.mod113.not = icmp eq i64 %xtraiter112, 0
  br i1 %lcmp.mod113.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv54.i.prol = phi i64 [ %indvars.iv.next55.i.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv54.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter114 = phi i64 [ %prol.iter114.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %gep99.i.prol = getelementptr [4 x i8], ptr %invariant.gep98.i, i64 %indvars.iv54.i.prol
  %i.hx = load float, ptr %gep99.i.prol, align 4, !tbaa !134
  %gep101.i.prol = getelementptr [4 x i8], ptr %invariant.gep100.i, i64 %indvars.iv54.i.prol ; 2 uses
  %i.hy = load float, ptr %gep101.i.prol, align 4, !tbaa !134
  %i.hz = fadd float %i.hx, %i.hy
  store float %i.hz, ptr %gep101.i.prol, align 4, !tbaa !134
  %indvars.iv.next55.i.prol = add nuw nsw i64 %indvars.iv54.i.prol, 1 ; 2 uses
  %prol.iter114.next = add i64 %prol.iter114, 1   ; 2 uses
  %prol.iter114.cmp.not = icmp eq i64 %prol.iter114.next, %xtraiter112
  br i1 %prol.iter114.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !211

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv54.i.unr = phi i64 [ %indvars.iv54.i.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next55.i.prol, %vec.epilog.scalar.ph.prol ]
  %i.ia = sub nsw i64 %indvars.iv54.i.ph, %i.gc
  %i.ib = icmp ugt i64 %i.ia, -8
  br i1 %i.ib, label %._crit_edge16.i, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv54.i = phi i64 [ %indvars.iv.next55.i.7, %vec.epilog.scalar.ph ], [ %indvars.iv54.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 10 uses
  %gep99.i = getelementptr [4 x i8], ptr %invariant.gep98.i, i64 %indvars.iv54.i
  %i.ic = load float, ptr %gep99.i, align 4, !tbaa !134
  %gep101.i = getelementptr [4 x i8], ptr %invariant.gep100.i, i64 %indvars.iv54.i ; 2 uses
  %i.id = load float, ptr %gep101.i, align 4, !tbaa !134
  %i.ie = fadd float %i.ic, %i.id
  store float %i.ie, ptr %gep101.i, align 4, !tbaa !134
  %indvars.iv.next55.i = add nuw nsw i64 %indvars.iv54.i, 1 ; 2 uses
  %gep99.i.1 = getelementptr [4 x i8], ptr %invariant.gep98.i, i64 %indvars.iv.next55.i
  %i.if = load float, ptr %gep99.i.1, align 4, !tbaa !134
  %gep101.i.1 = getelementptr [4 x i8], ptr %invariant.gep100.i, i64 %indvars.iv.next55.i ; 2 uses
  %i.ig = load float, ptr %gep101.i.1, align 4, !tbaa !134
  %i.ih = fadd float %i.if, %i.ig
  store float %i.ih, ptr %gep101.i.1, align 4, !tbaa !134
  %indvars.iv.next55.i.1 = add nuw nsw i64 %indvars.iv54.i, 2 ; 2 uses
  %gep99.i.2 = getelementptr [4 x i8], ptr %invariant.gep98.i, i64 %indvars.iv.next55.i.1
  %i.ii = load float, ptr %gep99.i.2, align 4, !tbaa !134
  %gep101.i.2 = getelementptr [4 x i8], ptr %invariant.gep100.i, i64 %indvars.iv.next55.i.1 ; 2 uses
  %i.ij = load float, ptr %gep101.i.2, align 4, !tbaa !134
  %i.ik = fadd float %i.ii, %i.ij
  store float %i.ik, ptr %gep101.i.2, align 4, !tbaa !134
  %indvars.iv.next55.i.2 = add nuw nsw i64 %indvars.iv54.i, 3 ; 2 uses
  %gep99.i.3 = getelementptr [4 x i8], ptr %invariant.gep98.i, i64 %indvars.iv.next55.i.2
  %i.il = load float, ptr %gep99.i.3, align 4, !tbaa !134
  %gep101.i.3 = getelementptr [4 x i8], ptr %invariant.gep100.i, i64 %indvars.iv.next55.i.2 ; 2 uses
  %i.im = load float, ptr %gep101.i.3, align 4, !tbaa !134
  %i.in = fadd float %i.il, %i.im
  store float %i.in, ptr %gep101.i.3, align 4, !tbaa !134
  %indvars.iv.next55.i.3 = add nuw nsw i64 %indvars.iv54.i, 4 ; 2 uses
  %gep99.i.4 = getelementptr [4 x i8], ptr %invariant.gep98.i, i64 %indvars.iv.next55.i.3
  %i.io = load float, ptr %gep99.i.4, align 4, !tbaa !134
  %gep101.i.4 = getelementptr [4 x i8], ptr %invariant.gep100.i, i64 %indvars.iv.next55.i.3 ; 2 uses
  %i.ip = load float, ptr %gep101.i.4, align 4, !tbaa !134
  %i.iq = fadd float %i.io, %i.ip
  store float %i.iq, ptr %gep101.i.4, align 4, !tbaa !134
  %indvars.iv.next55.i.4 = add nuw nsw i64 %indvars.iv54.i, 5 ; 2 uses
  %gep99.i.5 = getelementptr [4 x i8], ptr %invariant.gep98.i, i64 %indvars.iv.next55.i.4
  %i.ir = load float, ptr %gep99.i.5, align 4, !tbaa !134
  %gep101.i.5 = getelementptr [4 x i8], ptr %invariant.gep100.i, i64 %indvars.iv.next55.i.4 ; 2 uses
  %i.is = load float, ptr %gep101.i.5, align 4, !tbaa !134
  %i.it = fadd float %i.ir, %i.is
  store float %i.it, ptr %gep101.i.5, align 4, !tbaa !134
  %indvars.iv.next55.i.5 = add nuw nsw i64 %indvars.iv54.i, 6 ; 2 uses
  %gep99.i.6 = getelementptr [4 x i8], ptr %invariant.gep98.i, i64 %indvars.iv.next55.i.5
  %i.iu = load float, ptr %gep99.i.6, align 4, !tbaa !134
  %gep101.i.6 = getelementptr [4 x i8], ptr %invariant.gep100.i, i64 %indvars.iv.next55.i.5 ; 2 uses
  %i.iv = load float, ptr %gep101.i.6, align 4, !tbaa !134
  %i.iw = fadd float %i.iu, %i.iv
  store float %i.iw, ptr %gep101.i.6, align 4, !tbaa !134
  %indvars.iv.next55.i.6 = add nuw nsw i64 %indvars.iv54.i, 7 ; 2 uses
  %gep99.i.7 = getelementptr [4 x i8], ptr %invariant.gep98.i, i64 %indvars.iv.next55.i.6
  %i.ix = load float, ptr %gep99.i.7, align 4, !tbaa !134
  %gep101.i.7 = getelementptr [4 x i8], ptr %invariant.gep100.i, i64 %indvars.iv.next55.i.6 ; 2 uses
  %i.iy = load float, ptr %gep101.i.7, align 4, !tbaa !134
  %i.iz = fadd float %i.ix, %i.iy
  store float %i.iz, ptr %gep101.i.7, align 4, !tbaa !134
  %indvars.iv.next55.i.7 = add nuw nsw i64 %indvars.iv54.i, 8 ; 2 uses
  %exitcond58.not.i.7 = icmp eq i64 %indvars.iv.next55.i.7, %i.gc
  br i1 %exitcond58.not.i.7, label %._crit_edge16.i, label %vec.epilog.scalar.ph, !llvm.loop !212

._crit_edge16.i:                                  ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next60.i = add nuw nsw i64 %indvars.iv59.i, 1 ; 2 uses
  %exitcond63.not.i = icmp eq i64 %indvars.iv.next60.i, %wide.trip.count62.i
  br i1 %exitcond63.not.i, label %._crit_edge19.i, label %iter.check, !llvm.loop !213

._crit_edge19.i:                                  ; preds = %._crit_edge16.i
  %indvars.iv.next65.i = add nuw nsw i64 %indvars.iv64.i, 1 ; 2 uses
  %exitcond68.not.i = icmp eq i64 %indvars.iv.next65.i, %wide.trip.count67.i
  br i1 %exitcond68.not.i, label %.loopexit3.i, label %.preheader1.i, !llvm.loop !214

.loopexit3.i:                                     ; preds = %._crit_edge19.i, %.preheader1.lr.ph.i, %bb.m, %._crit_edge10.split.i
  %i.ja = add nuw i64 %.022.i, 1                  ; 2 uses
  %i.jb = load ptr, ptr %i.az, align 8, !tbaa !232
  %i.jc = load ptr, ptr %i.ay, align 8, !tbaa !229 ; 2 uses
  %i.jd = ptrtoint ptr %i.jb to i64
  %i.je = ptrtoint ptr %i.jc to i64
  %i.jf = sub i64 %i.jd, %i.je
  %i.jg = sdiv exact i64 %i.jf, 28
  %i.jh = icmp ult i64 %i.ja, %i.jg
  br i1 %i.jh, label %bb.j, label %.loopexit4.i, !llvm.loop !215

.loopexit4.i:                                     ; preds = %.loopexit3.i, %bb.i, %..loopexit4_crit_edge.i
  %i.ji = phi i32 [ %.pre84.i, %..loopexit4_crit_edge.i ], [ %i.an, %bb.i ], [ %i.fv, %.loopexit3.i ]
  %i.jj = icmp sgt i32 %i.ji, 1
  br i1 %i.jj, label %bb.n, label %_ZL14sum_fftgrid_ddPK9gmx_pme_tP14PmeAndFftGrids.exit

bb.n:                                             ; preds = %.loopexit4.i
  %i.jk = getelementptr inbounds nuw i8, ptr %i.aa, i64 640
  %i.jl = getelementptr inbounds nuw i8, ptr %i.aa, i64 712 ; 2 uses
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !229 ; 3 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 8
  %i.jo = load i32, ptr %i.jn, align 4, !tbaa !231 ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jm, i64 20
  %i.jq = load i32, ptr %i.jp, align 4, !tbaa !239 ; 3 uses
  %i.jr = load ptr, ptr @debug, align 8, !tbaa !242 ; 2 uses
  %.not.i = icmp eq ptr %i.jr, null
  br i1 %.not.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.js = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !105
  %i.ju = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.jv = load i32, ptr %i.ju, align 4, !tbaa !105
  %i.jw = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.jr, ptr noundef nonnull @.str.4, i32 noundef %i.jo, i32 noundef %i.jt, i32 noundef %i.jv) #3 ; 0 uses
  %.pre85.i = load ptr, ptr %i.jl, align 8, !tbaa !229
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.jx = phi ptr [ %.pre85.i, %bb.o ], [ %i.jm, %bb.n ] ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.jz = load i32, ptr %i.jy, align 4, !tbaa !105
  %i.ka = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.kb = load i32, ptr %i.ka, align 4, !tbaa !105
  %i.kc = mul nsw i32 %i.kb, %i.jz                ; 2 uses
  %i.kd = load i32, ptr %i.jx, align 4, !tbaa !243
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jx, i64 12
  %i.kf = load i32, ptr %i.ke, align 4, !tbaa !244
  %i.kg = getelementptr inbounds nuw i8, ptr %i.aa, i64 736
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !133
  %i.ki = getelementptr inbounds nuw i8, ptr %i.aa, i64 760 ; 2 uses
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !133
  %i.kk = mul nsw i32 %i.kc, %i.jo
  %i.kl = load ptr, ptr @TMPI_FLOAT, align 8, !tbaa !251 ; 2 uses
  %i.km = mul nsw i32 %i.kc, %i.jq
  %i.kn = load ptr, ptr %i.jk, align 8, !tbaa !245
  %i.ko = call noundef i32 @_Z13tMPI_SendrecvPKviP14tmpi_datatype_iiPviS2_iiP10tmpi_comm_P12tmpi_status_(ptr noundef %i.kh, i32 noundef %i.kk, ptr noundef %i.kl, i32 noundef %i.kd, i32 noundef 0, ptr noundef %i.kj, i32 noundef %i.km, ptr noundef %i.kl, i32 noundef %i.kf, i32 noundef 0, ptr noundef %i.kn, ptr noundef nonnull %6) ; 0 uses
  %i.kp = icmp sgt i32 %i.jq, 0
  br i1 %i.kp, label %.preheader.lr.ph.i, label %_ZL14sum_fftgrid_ddPK9gmx_pme_tP14PmeAndFftGrids.exit

.preheader.lr.ph.i:                               ; preds = %bb.p
  %i.kq = load i32, ptr %i.jy, align 4, !tbaa !105 ; 2 uses
  %i.kr = icmp slt i32 %i.kq, 1
  %i.ks = load i32, ptr %i.ka, align 4            ; 4 uses
  %i.kt = icmp slt i32 %i.ks, 1
  %brmerge41.i = select i1 %i.kr, i1 true, i1 %i.kt
  br i1 %brmerge41.i, label %_ZL14sum_fftgrid_ddPK9gmx_pme_tP14PmeAndFftGrids.exit, label %.preheader.lr.ph.split.split.i

.preheader.lr.ph.split.split.i:                   ; preds = %.preheader.lr.ph.i
  %i.ku = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.kv = load i32, ptr %i.ku, align 4            ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.kx = load i32, ptr %i.kw, align 4
  %i.ky = load ptr, ptr %i.ki, align 8, !tbaa !133 ; 3 uses
  %i.kz = sext i32 %i.kv to i64                   ; 3 uses
  %i.la = zext nneg i32 %i.ks to i64              ; 11 uses
  %i.lb = sext i32 %i.kx to i64                   ; 2 uses
  %i.lc = zext nneg i32 %i.kq to i64              ; 4 uses
  %wide.trip.count82.i = zext nneg i32 %i.jq to i64
  %i.ld = mul nsw i64 %i.kz, %i.lb
  %i.le = shl i64 %i.ld, 2
  %i.lf = add nuw nsw i64 %i.lc, 4611686018427387903
  %i.lg = mul i64 %i.lf, %i.kz
  %i.lh = add i64 %i.lg, %i.la
  %i.li = shl i64 %i.lh, 2
  %i.lj = mul nuw nsw i64 %i.lc, %i.la
  %i.lk = shl nuw i64 %i.lj, 2                    ; 2 uses
  %i.ll = getelementptr i8, ptr %.val, i64 %i.li
  %i.lm = getelementptr i8, ptr %i.ky, i64 %i.lk
  %min.iters.check79 = icmp ult i32 %i.ks, 4
  %stride.check78 = icmp slt i32 %i.kv, 0
  %min.iters.check81 = icmp ult i32 %i.ks, 32
  %i.ln = and i64 %i.la, 28
  %n.vec83 = and i64 %i.la, 2147483616            ; 4 uses
  %cmp.n96 = icmp eq i64 %n.vec83, %i.la
  %min.epilog.iters.check101 = icmp eq i64 %i.ln, 0
  %n.vec103 = and i64 %i.la, 2147483644           ; 3 uses
  %cmp.n110 = icmp eq i64 %n.vec103, %i.la
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge31.i, %.preheader.lr.ph.split.split.i
  %indvars.iv79.i = phi i64 [ 0, %.preheader.lr.ph.split.split.i ], [ %indvars.iv.next80.i, %._crit_edge31.i ] ; 5 uses
  %i.lo = mul i64 %i.le, %indvars.iv79.i          ; 2 uses
  %scevgep71 = getelementptr i8, ptr %.val, i64 %i.lo
  %scevgep72 = getelementptr i8, ptr %i.ll, i64 %i.lo
  %i.lp = mul i64 %i.lk, %indvars.iv79.i          ; 2 uses
  %scevgep73 = getelementptr i8, ptr %i.ky, i64 %i.lp
  %scevgep74 = getelementptr i8, ptr %i.lm, i64 %i.lp
  %i.lq = mul nsw i64 %indvars.iv79.i, %i.lb
  %i.lr = mul nuw nsw i64 %indvars.iv79.i, %i.lc
  %bound075 = icmp ult ptr %scevgep71, %scevgep74
  %bound176 = icmp ult ptr %scevgep73, %scevgep72
  %found.conflict77 = and i1 %bound075, %bound176
  %i.ls = or i1 %found.conflict77, %stride.check78
  br label %iter.check98

iter.check98:                                     ; preds = %._crit_edge28.i, %.preheader.i
  %indvars.iv74.i = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next75.i, %._crit_edge28.i ] ; 3 uses
  %i.lt = add nsw i64 %indvars.iv74.i, %i.lq
  %i.lu = mul nsw i64 %i.lt, %i.kz
  %i.lv = add nuw nsw i64 %indvars.iv74.i, %i.lr
  %i.lw = mul nuw nsw i64 %i.lv, %i.la
  %invariant.gep102.i = getelementptr inbounds nuw [4 x i8], ptr %i.ky, i64 %i.lw ; 11 uses
  %invariant.gep104.i = getelementptr [4 x i8], ptr %.val, i64 %i.lu ; 11 uses
  %brmerge119 = select i1 %min.iters.check79, i1 true, i1 %i.ls
  br i1 %brmerge119, label %vec.epilog.scalar.ph99.preheader, label %vector.main.loop.iter.check80

vector.main.loop.iter.check80:                    ; preds = %iter.check98
  br i1 %min.iters.check81, label %vec.epilog.ph102, label %vector.body84

vector.body84:                                    ; preds = %vector.main.loop.iter.check80, %vector.body84
  %index85 = phi i64 [ %index.next94, %vector.body84 ], [ 0, %vector.main.loop.iter.check80 ] ; 3 uses
  %i.lx = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep102.i, i64 %index85 ; 4 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 32
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lx, i64 64
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lx, i64 96
  %wide.load86 = load <8 x float>, ptr %i.lx, align 4, !tbaa !134, !alias.scope !252
  %wide.load87 = load <8 x float>, ptr %i.ly, align 4, !tbaa !134, !alias.scope !252
  %wide.load88 = load <8 x float>, ptr %i.lz, align 4, !tbaa !134, !alias.scope !252
  %wide.load89 = load <8 x float>, ptr %i.ma, align 4, !tbaa !134, !alias.scope !252
  %i.mb = getelementptr [4 x i8], ptr %invariant.gep104.i, i64 %index85 ; 5 uses
  %i.mc = getelementptr i8, ptr %i.mb, i64 32     ; 2 uses
  %i.md = getelementptr i8, ptr %i.mb, i64 64     ; 2 uses
  %i.me = getelementptr i8, ptr %i.mb, i64 96     ; 2 uses
  %wide.load90 = load <8 x float>, ptr %i.mb, align 4, !tbaa !134, !alias.scope !253, !noalias !252
  %wide.load91 = load <8 x float>, ptr %i.mc, align 4, !tbaa !134, !alias.scope !253, !noalias !252
  %wide.load92 = load <8 x float>, ptr %i.md, align 4, !tbaa !134, !alias.scope !253, !noalias !252
  %wide.load93 = load <8 x float>, ptr %i.me, align 4, !tbaa !134, !alias.scope !253, !noalias !252
  %i.mf = fadd <8 x float> %wide.load86, %wide.load90
  %i.mg = fadd <8 x float> %wide.load87, %wide.load91
  %i.mh = fadd <8 x float> %wide.load88, %wide.load92
  %i.mi = fadd <8 x float> %wide.load89, %wide.load93
  store <8 x float> %i.mf, ptr %i.mb, align 4, !tbaa !134, !alias.scope !253, !noalias !252
  store <8 x float> %i.mg, ptr %i.mc, align 4, !tbaa !134, !alias.scope !253, !noalias !252
  store <8 x float> %i.mh, ptr %i.md, align 4, !tbaa !134, !alias.scope !253, !noalias !252
  store <8 x float> %i.mi, ptr %i.me, align 4, !tbaa !134, !alias.scope !253, !noalias !252
  %index.next94 = add nuw i64 %index85, 32        ; 2 uses
  %i.mj = icmp eq i64 %index.next94, %n.vec83
  br i1 %i.mj, label %middle.block95, label %vector.body84, !llvm.loop !219

middle.block95:                                   ; preds = %vector.body84
  br i1 %cmp.n96, label %._crit_edge28.i, label %vec.epilog.iter.check100

vec.epilog.iter.check100:                         ; preds = %middle.block95
  br i1 %min.epilog.iters.check101, label %vec.epilog.scalar.ph99.preheader, label %vec.epilog.ph102, !prof !138

vec.epilog.ph102:                                 ; preds = %vector.main.loop.iter.check80, %vec.epilog.iter.check100
  %vec.epilog.resume.val97 = phi i64 [ %n.vec83, %vec.epilog.iter.check100 ], [ 0, %vector.main.loop.iter.check80 ]
  br label %vec.epilog.vector.body104

vec.epilog.vector.body104:                        ; preds = %vec.epilog.vector.body104, %vec.epilog.ph102
  %index105 = phi i64 [ %vec.epilog.resume.val97, %vec.epilog.ph102 ], [ %index.next108, %vec.epilog.vector.body104 ] ; 3 uses
  %i.mk = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep102.i, i64 %index105
  %wide.load106 = load <4 x float>, ptr %i.mk, align 4, !tbaa !134, !alias.scope !252
  %i.ml = getelementptr [4 x i8], ptr %invariant.gep104.i, i64 %index105 ; 2 uses
  %wide.load107 = load <4 x float>, ptr %i.ml, align 4, !tbaa !134, !alias.scope !253, !noalias !252
  %i.mm = fadd <4 x float> %wide.load106, %wide.load107
  store <4 x float> %i.mm, ptr %i.ml, align 4, !tbaa !134, !alias.scope !253, !noalias !252
  %index.next108 = add nuw i64 %index105, 4       ; 2 uses
  %i.mn = icmp eq i64 %index.next108, %n.vec103
  br i1 %i.mn, label %vec.epilog.middle.block109, label %vec.epilog.vector.body104, !llvm.loop !220

vec.epilog.middle.block109:                       ; preds = %vec.epilog.vector.body104
  br i1 %cmp.n110, label %._crit_edge28.i, label %vec.epilog.scalar.ph99.preheader

vec.epilog.scalar.ph99.preheader:                 ; preds = %iter.check98, %vec.epilog.iter.check100, %vec.epilog.middle.block109
  %indvars.iv69.i.ph = phi i64 [ 0, %iter.check98 ], [ %n.vec103, %vec.epilog.middle.block109 ], [ %n.vec83, %vec.epilog.iter.check100 ] ; 4 uses
  %i.mo = sub nsw i64 %i.la, %indvars.iv69.i.ph
  %xtraiter115 = and i64 %i.mo, 7                 ; 2 uses
  %lcmp.mod116.not = icmp eq i64 %xtraiter115, 0
  br i1 %lcmp.mod116.not, label %vec.epilog.scalar.ph99.prol.loopexit, label %vec.epilog.scalar.ph99.prol

vec.epilog.scalar.ph99.prol:                      ; preds = %vec.epilog.scalar.ph99.preheader, %vec.epilog.scalar.ph99.prol
  %indvars.iv69.i.prol = phi i64 [ %indvars.iv.next70.i.prol, %vec.epilog.scalar.ph99.prol ], [ %indvars.iv69.i.ph, %vec.epilog.scalar.ph99.preheader ] ; 3 uses
  %prol.iter117 = phi i64 [ %prol.iter117.next, %vec.epilog.scalar.ph99.prol ], [ 0, %vec.epilog.scalar.ph99.preheader ]
  %gep103.i.prol = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep102.i, i64 %indvars.iv69.i.prol
  %i.mp = load float, ptr %gep103.i.prol, align 4, !tbaa !134
  %gep105.i.prol = getelementptr [4 x i8], ptr %invariant.gep104.i, i64 %indvars.iv69.i.prol ; 2 uses
  %i.mq = load float, ptr %gep105.i.prol, align 4, !tbaa !134
  %i.mr = fadd float %i.mp, %i.mq
  store float %i.mr, ptr %gep105.i.prol, align 4, !tbaa !134
  %indvars.iv.next70.i.prol = add nuw nsw i64 %indvars.iv69.i.prol, 1 ; 2 uses
  %prol.iter117.next = add i64 %prol.iter117, 1   ; 2 uses
  %prol.iter117.cmp.not = icmp eq i64 %prol.iter117.next, %xtraiter115
  br i1 %prol.iter117.cmp.not, label %vec.epilog.scalar.ph99.prol.loopexit, label %vec.epilog.scalar.ph99.prol, !llvm.loop !221

vec.epilog.scalar.ph99.prol.loopexit:             ; preds = %vec.epilog.scalar.ph99.prol, %vec.epilog.scalar.ph99.preheader
  %indvars.iv69.i.unr = phi i64 [ %indvars.iv69.i.ph, %vec.epilog.scalar.ph99.preheader ], [ %indvars.iv.next70.i.prol, %vec.epilog.scalar.ph99.prol ]
  %i.ms = sub nsw i64 %indvars.iv69.i.ph, %i.la
  %i.mt = icmp ugt i64 %i.ms, -8
  br i1 %i.mt, label %._crit_edge28.i, label %vec.epilog.scalar.ph99

vec.epilog.scalar.ph99:                           ; preds = %vec.epilog.scalar.ph99.prol.loopexit, %vec.epilog.scalar.ph99
  %indvars.iv69.i = phi i64 [ %indvars.iv.next70.i.7, %vec.epilog.scalar.ph99 ], [ %indvars.iv69.i.unr, %vec.epilog.scalar.ph99.prol.loopexit ] ; 10 uses
  %gep103.i = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep102.i, i64 %indvars.iv69.i
  %i.mu = load float, ptr %gep103.i, align 4, !tbaa !134
  %gep105.i = getelementptr [4 x i8], ptr %invariant.gep104.i, i64 %indvars.iv69.i ; 2 uses
  %i.mv = load float, ptr %gep105.i, align 4, !tbaa !134
  %i.mw = fadd float %i.mu, %i.mv
  store float %i.mw, ptr %gep105.i, align 4, !tbaa !134
  %indvars.iv.next70.i = add nuw nsw i64 %indvars.iv69.i, 1 ; 2 uses
  %gep103.i.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep102.i, i64 %indvars.iv.next70.i
  %i.mx = load float, ptr %gep103.i.1, align 4, !tbaa !134
  %gep105.i.1 = getelementptr [4 x i8], ptr %invariant.gep104.i, i64 %indvars.iv.next70.i ; 2 uses
  %i.my = load float, ptr %gep105.i.1, align 4, !tbaa !134
  %i.mz = fadd float %i.mx, %i.my
  store float %i.mz, ptr %gep105.i.1, align 4, !tbaa !134
  %indvars.iv.next70.i.1 = add nuw nsw i64 %indvars.iv69.i, 2 ; 2 uses
  %gep103.i.2 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep102.i, i64 %indvars.iv.next70.i.1
  %i.na = load float, ptr %gep103.i.2, align 4, !tbaa !134
  %gep105.i.2 = getelementptr [4 x i8], ptr %invariant.gep104.i, i64 %indvars.iv.next70.i.1 ; 2 uses
  %i.nb = load float, ptr %gep105.i.2, align 4, !tbaa !134
  %i.nc = fadd float %i.na, %i.nb
  store float %i.nc, ptr %gep105.i.2, align 4, !tbaa !134
  %indvars.iv.next70.i.2 = add nuw nsw i64 %indvars.iv69.i, 3 ; 2 uses
  %gep103.i.3 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep102.i, i64 %indvars.iv.next70.i.2
  %i.nd = load float, ptr %gep103.i.3, align 4, !tbaa !134
  %gep105.i.3 = getelementptr [4 x i8], ptr %invariant.gep104.i, i64 %indvars.iv.next70.i.2 ; 2 uses
  %i.ne = load float, ptr %gep105.i.3, align 4, !tbaa !134
  %i.nf = fadd float %i.nd, %i.ne
  store float %i.nf, ptr %gep105.i.3, align 4, !tbaa !134
  %indvars.iv.next70.i.3 = add nuw nsw i64 %indvars.iv69.i, 4 ; 2 uses
  %gep103.i.4 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep102.i, i64 %indvars.iv.next70.i.3
  %i.ng = load float, ptr %gep103.i.4, align 4, !tbaa !134
  %gep105.i.4 = getelementptr [4 x i8], ptr %invariant.gep104.i, i64 %indvars.iv.next70.i.3 ; 2 uses
  %i.nh = load float, ptr %gep105.i.4, align 4, !tbaa !134
  %i.ni = fadd float %i.ng, %i.nh
  store float %i.ni, ptr %gep105.i.4, align 4, !tbaa !134
  %indvars.iv.next70.i.4 = add nuw nsw i64 %indvars.iv69.i, 5 ; 2 uses
  %gep103.i.5 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep102.i, i64 %indvars.iv.next70.i.4
  %i.nj = load float, ptr %gep103.i.5, align 4, !tbaa !134
  %gep105.i.5 = getelementptr [4 x i8], ptr %invariant.gep104.i, i64 %indvars.iv.next70.i.4 ; 2 uses
  %i.nk = load float, ptr %gep105.i.5, align 4, !tbaa !134
  %i.nl = fadd float %i.nj, %i.nk
  store float %i.nl, ptr %gep105.i.5, align 4, !tbaa !134
  %indvars.iv.next70.i.5 = add nuw nsw i64 %indvars.iv69.i, 6 ; 2 uses
  %gep103.i.6 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep102.i, i64 %indvars.iv.next70.i.5
  %i.nm = load float, ptr %gep103.i.6, align 4, !tbaa !134
  %gep105.i.6 = getelementptr [4 x i8], ptr %invariant.gep104.i, i64 %indvars.iv.next70.i.5 ; 2 uses
  %i.nn = load float, ptr %gep105.i.6, align 4, !tbaa !134
  %i.no = fadd float %i.nm, %i.nn
  store float %i.no, ptr %gep105.i.6, align 4, !tbaa !134
  %indvars.iv.next70.i.6 = add nuw nsw i64 %indvars.iv69.i, 7 ; 2 uses
  %gep103.i.7 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep102.i, i64 %indvars.iv.next70.i.6
  %i.np = load float, ptr %gep103.i.7, align 4, !tbaa !134
  %gep105.i.7 = getelementptr [4 x i8], ptr %invariant.gep104.i, i64 %indvars.iv.next70.i.6 ; 2 uses
  %i.nq = load float, ptr %gep105.i.7, align 4, !tbaa !134
  %i.nr = fadd float %i.np, %i.nq
  store float %i.nr, ptr %gep105.i.7, align 4, !tbaa !134
  %indvars.iv.next70.i.7 = add nuw nsw i64 %indvars.iv69.i, 8 ; 2 uses
  %exitcond73.not.i.7 = icmp eq i64 %indvars.iv.next70.i.7, %i.la
  br i1 %exitcond73.not.i.7, label %._crit_edge28.i, label %vec.epilog.scalar.ph99, !llvm.loop !222

._crit_edge28.i:                                  ; preds = %vec.epilog.scalar.ph99.prol.loopexit, %vec.epilog.scalar.ph99, %vec.epilog.middle.block109, %middle.block95
  %indvars.iv.next75.i = add nuw nsw i64 %indvars.iv74.i, 1 ; 2 uses
  %exitcond78.not.i = icmp eq i64 %indvars.iv.next75.i, %i.lc
  br i1 %exitcond78.not.i, label %._crit_edge31.i, label %iter.check98, !llvm.loop !223

._crit_edge31.i:                                  ; preds = %._crit_edge28.i
  %indvars.iv.next80.i = add nuw nsw i64 %indvars.iv79.i, 1 ; 2 uses
end_hunk_0
begin_hunk_1_@_Z14spread_on_gridPK9gmx_pme_tP11PmeAtomCommP14PmeAndFftGridsbbb.omp_outlined.1:bb.a
._crit_edge260.2.i:                               ; preds = %.lr.ph259.2.i, %vec.epilog.middle.block211, %middle.block196
  %i.alk = fmul float %i.aih, %i.hv
  %i.all = load float, ptr %i.hy, align 4, !tbaa !134
  %i.alm = fmul float %i.alk, %i.all
  store float %i.alm, ptr %i.hq, align 4, !tbaa !134
  br i1 %i.hz, label %.lr.ph263.2.i.preheader, label %._crit_edge264.2.thread.i

.lr.ph263.2.i.preheader:                          ; preds = %._crit_edge260.2.i
  br i1 %min.iters.check158, label %.lr.ph263.2.i.preheader498, label %vector.ph159

vector.ph159:                                     ; preds = %.lr.ph263.2.i.preheader
  %broadcast.splatinsert161 = insertelement <8 x float> poison, float %i.aih, i64 0
  %broadcast.splat162 = shufflevector <8 x float> %broadcast.splatinsert161, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body167

vector.body167:                                   ; preds = %vector.body167, %vector.ph159
  %index168 = phi i64 [ 0, %vector.ph159 ], [ %index.next174, %vector.body167 ]
  %vec.ind = phi <8 x i64> [ <i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8>, %vector.ph159 ], [ %vec.ind.next, %vector.body167 ] ; 2 uses
  %vec.ind169 = phi <8 x i32> [ <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8>, %vector.ph159 ], [ %vec.ind.next175, %vector.body167 ] ; 2 uses
  %i.aln = uitofp nneg <8 x i32> %vec.ind169 to <8 x float>
  %i.alo = fadd <8 x float> %broadcast.splat162, %i.aln
  %i.alp = sub nuw nsw <8 x i64> %broadcast.splat164, %vec.ind ; 2 uses
  %i.alq = extractelement <8 x i64> %i.alp, i64 0
  %i.alr = getelementptr [4 x i8], ptr %i.d, i64 %i.alq ; 2 uses
  %i.als = getelementptr i8, ptr %i.alr, i64 -36
  %wide.load170 = load <8 x float>, ptr %i.als, align 4, !tbaa !134
  %reverse = shufflevector <8 x float> %wide.load170, <8 x float> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.alt = trunc nuw nsw <8 x i64> %i.alp to <8 x i32>
  %i.alu = uitofp nneg <8 x i32> %i.alt to <8 x float>
  %i.alv = fsub <8 x float> %i.alu, %broadcast.splat162
  %i.alw = getelementptr i8, ptr %i.alr, i64 -32  ; 2 uses
  %wide.load171 = load <8 x float>, ptr %i.alw, align 4, !tbaa !134
  %reverse172 = shufflevector <8 x float> %wide.load171, <8 x float> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.alx = fmul <8 x float> %reverse172, %i.alv
  %i.aly = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.alo, <8 x float> %reverse, <8 x float> %i.alx)
  %i.alz = shufflevector <8 x float> %i.aly, <8 x float> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse173 = fmul <8 x float> %i.alz, %i.ji
  store <8 x float> %reverse173, ptr %i.alw, align 4, !tbaa !134
  %index.next174 = add nuw i64 %index168, 8       ; 2 uses
  %vec.ind.next = add nuw nsw <8 x i64> %vec.ind, splat (i64 8)
  %vec.ind.next175 = add <8 x i32> %vec.ind169, splat (i32 8)
  %i.ama = icmp eq i64 %index.next174, %n.vec160
  br i1 %i.ama, label %middle.block176, label %vector.body167, !llvm.loop !300

middle.block176:                                  ; preds = %vector.body167
  br i1 %cmp.n177, label %._crit_edge264.2.thread.i, label %.lr.ph263.2.i.preheader498

.lr.ph263.2.i.preheader498:                       ; preds = %.lr.ph263.2.i.preheader, %middle.block176
  %indvars.iv339.2.i.ph = phi i64 [ 1, %.lr.ph263.2.i.preheader ], [ %i.jh, %middle.block176 ]
  br label %.lr.ph263.2.i

.lr.ph263.2.i:                                    ; preds = %.lr.ph263.2.i.preheader498, %.lr.ph263.2.i
  %indvars.iv339.2.i = phi i64 [ %indvars.iv.next340.2.i, %.lr.ph263.2.i ], [ %indvars.iv339.2.i.ph, %.lr.ph263.2.i.preheader498 ] ; 3 uses
  %i.amb = trunc nuw nsw i64 %indvars.iv339.2.i to i32
  %i.amc = uitofp nneg i32 %i.amb to float
  %i.amd = fadd float %i.aih, %i.amc
  %i.ame = sub nuw nsw i64 %i.hw, %indvars.iv339.2.i ; 2 uses
  %i.amf = getelementptr [4 x i8], ptr %i.d, i64 %i.ame ; 2 uses
  %i.amg = getelementptr i8, ptr %i.amf, i64 -8
  %i.amh = load float, ptr %i.amg, align 4, !tbaa !134
  %i.ami = trunc nuw nsw i64 %i.ame to i32
  %i.amj = uitofp nneg i32 %i.ami to float
  %i.amk = fsub float %i.amj, %i.aih
  %i.aml = getelementptr i8, ptr %i.amf, i64 -4   ; 2 uses
  %i.amm = load float, ptr %i.aml, align 4, !tbaa !134
  %i.amn = fmul float %i.amm, %i.amk
  %i.amo = call float @llvm.fmuladd.f32(float %i.amd, float %i.amh, float %i.amn)
  %i.amp = fmul float %i.amo, %i.hv
  store float %i.amp, ptr %i.aml, align 4, !tbaa !134
  %indvars.iv.next340.2.i = add nuw nsw i64 %indvars.iv339.2.i, 1 ; 2 uses
  %exitcond343.2.not.i = icmp eq i64 %indvars.iv.next340.2.i, %wide.trip.count342.i
  br i1 %exitcond343.2.not.i, label %._crit_edge264.2.thread.i, label %.lr.ph263.2.i, !llvm.loop !301

._crit_edge264.2.thread.i:                        ; preds = %.lr.ph263.2.i, %middle.block176, %._crit_edge260.2.i
  %i.amq = fmul float %i.aii, %i.hv
  %i.amr = load float, ptr %i.d, align 16, !tbaa !134
  %i.ams = fmul float %i.amq, %i.amr
  store float %i.ams, ptr %i.d, align 16, !tbaa !134
  br label %.lr.ph267.2.i

._crit_edge264.2.i:                               ; preds = %._crit_edge256.2.i, %._crit_edge256.2.thread.i
  %.ph434.i = phi float [ %i.aih, %._crit_edge256.2.i ], [ %i.aia, %._crit_edge256.2.thread.i ]
  %.ph435.i = phi float [ %i.aii, %._crit_edge256.2.i ], [ %i.aib, %._crit_edge256.2.thread.i ]
  %i.amt = fmul float %.ph434.i, %i.hv
  %i.amu = load float, ptr %i.hy, align 4, !tbaa !134
  %i.amv = fmul float %i.amt, %i.amu
  store float %i.amv, ptr %i.hq, align 4, !tbaa !134
  %i.amw = fmul float %.ph435.i, %i.hv
  %i.amx = load float, ptr %i.d, align 16, !tbaa !134
  %i.amy = fmul float %i.amw, %i.amx
  store float %i.amy, ptr %i.d, align 16, !tbaa !134
  br i1 %i.ia, label %.lr.ph267.2.i, label %._crit_edge268.2.i

.lr.ph267.2.i:                                    ; preds = %._crit_edge264.2.i, %._crit_edge264.2.thread.i
  %i.amz = load ptr, ptr %i.io, align 8, !tbaa !328
  %scevgep344.2.i = getelementptr nuw i8, ptr %i.amz, i64 %i.uq
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %scevgep344.2.i, ptr nonnull align 16 %i.d, i64 %i.ik, i1 false), !tbaa !134
  br label %._crit_edge268.2.i

._crit_edge268.2.i:                               ; preds = %.lr.ph267.2.i, %._crit_edge264.2.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #3
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %._crit_edge268.2.i, %bb.m
  %indvars.iv.next353.i = add nuw nsw i64 %indvars.iv352.i, 1 ; 2 uses
  %exitcond356.not.i = icmp eq i64 %indvars.iv.next353.i, %wide.trip.count355.i
  br i1 %exitcond356.not.i, label %_ZL13make_bsplinesN3gmx8ArrayRefIPfEES2_iPA3_fiPKiPKfb.exit, label %.lr.ph272.split.i, !llvm.loop !271

_ZL13make_bsplinesN3gmx8ArrayRefIPfEES2_iPA3_fiPKiPKfb.exit: ; preds = %.loopexit232.us.i, %.loopexit230.us.i, %.loopexit.i, %bb.j, %bb.i
  %i.ana = load i8, ptr %8, align 1, !tbaa !17, !range !106, !noundef !107
  %i.anb = trunc nuw i8 %i.ana to i1
  br i1 %i.anb, label %bb.n, label %bb.s

bb.n:                                             ; preds = %_ZL13make_bsplinesN3gmx8ArrayRefIPfEES2_iPA3_fiPKiPKfb.exit
  %i.anc = load ptr, ptr %4, align 8, !tbaa !11   ; 2 uses
  %i.and = getelementptr inbounds nuw i8, ptr %i.anc, i64 80
  %i.ane = load i8, ptr %i.and, align 8, !tbaa !108, !range !106, !noundef !107
  %i.anf = trunc nuw i8 %i.ane to i1
  %i.ang = load ptr, ptr %3, align 8, !tbaa !15   ; 2 uses
  br i1 %i.anf, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.anh = getelementptr inbounds nuw i8, ptr %i.ang, i64 88
  %i.ani = load ptr, ptr %i.anh, align 8, !tbaa !193
  %i.anj = getelementptr inbounds nuw [72 x i8], ptr %i.ani, i64 %indvars.iv
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %i.ank = phi ptr [ %i.anj, %bb.o ], [ %i.ang, %bb.n ] ; 7 uses
  %i.anl = load ptr, ptr %5, align 8, !tbaa !13   ; 2 uses
  %i.anm = getelementptr inbounds nuw i8, ptr %i.anc, i64 192
  %i.ann = load ptr, ptr %i.anm, align 8, !tbaa !333 ; 2 uses
  %i.ano = getelementptr inbounds nuw i8, ptr %i.ank, i64 40
  %i.anp = load i32, ptr %i.ano, align 8, !tbaa !105
  %i.anq = getelementptr inbounds nuw i8, ptr %i.ank, i64 44
  %i.anr = getelementptr inbounds nuw i8, ptr %i.ank, i64 48
  %i.ans = getelementptr inbounds nuw i8, ptr %i.ank, i64 24
  %i.ant = load i32, ptr %i.anq, align 4, !tbaa !105 ; 6 uses
  %i.anu = load i32, ptr %i.anr, align 8, !tbaa !105 ; 15 uses
  %i.anv = load <2 x i32>, ptr %i.ans, align 8, !tbaa !105 ; 4 uses
  %i.anw = getelementptr inbounds nuw i8, ptr %i.ank, i64 32
  %i.anx = load i32, ptr %i.anw, align 8, !tbaa !105 ; 4 uses
  %i.any = mul i32 %i.anu, %i.ant                 ; 5 uses
  %i.anz = mul i32 %i.any, %i.anp                 ; 2 uses
  %i.aoa = getelementptr inbounds nuw i8, ptr %i.ank, i64 56
  %i.aob = load ptr, ptr %i.aoa, align 8, !tbaa !194
  %i.aoc = load ptr, ptr %i.aob, align 8, !tbaa !195 ; 19 uses
  %i.aod = icmp sgt i32 %i.anz, 0
  br i1 %i.aod, label %.lr.ph.preheader.i, label %._crit_edge.i41

.lr.ph.preheader.i:                               ; preds = %bb.p
  %i.aoe = zext nneg i32 %i.anz to i64
  %i.aof = shl nuw nsw i64 %i.aoe, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.aoc, i8 0, i64 %i.aof, i1 false), !tbaa !134
  br label %._crit_edge.i41

._crit_edge.i41:                                  ; preds = %.lr.ph.preheader.i, %bb.p
  %i.aog = getelementptr inbounds nuw i8, ptr %i.ank, i64 36
  %i.aoh = load i32, ptr %i.aog, align 4, !tbaa !196
  %.fr.i = freeze i32 %i.aoh                      ; 6 uses
  %i.aoi = load i32, ptr %.035, align 8, !tbaa !325 ; 4 uses
  %i.aoj = icmp sgt i32 %i.aoi, 0
  br i1 %i.aoj, label %.lr.ph423.i, label %_ZL35spread_coefficients_bsplines_threadP9pmegrid_tPK11PmeAtomCommP12splinedata_tRK15pme_spline_work.exit

.lr.ph423.i:                                      ; preds = %._crit_edge.i41
  %i.aok = getelementptr inbounds nuw i8, ptr %.035, i64 8 ; 3 uses
  %i.aol = getelementptr inbounds nuw i8, ptr %i.anl, i64 152 ; 3 uses
  %i.aom = getelementptr inbounds nuw i8, ptr %i.anl, i64 264 ; 3 uses
  %i.aon = getelementptr inbounds nuw i8, ptr %.035, i64 32 ; 3 uses
  %i.aoo = getelementptr inbounds nuw i8, ptr %.035, i64 40 ; 3 uses
  %i.aop = getelementptr inbounds nuw i8, ptr %.035, i64 48 ; 3 uses
  %i.aoq = getelementptr inbounds nuw i8, ptr %i.ann, i64 12
  %i.aor = sext i32 %i.anu to i64                 ; 5 uses
  %i.aos = shl nsw i32 %i.anu, 1
  %i.aot = sext i32 %i.aos to i64                 ; 5 uses
  %i.aou = mul nsw i32 %i.anu, 3
  %i.aov = sext i32 %i.aou to i64                 ; 5 uses
  %i.aow = shl nsw i32 %i.anu, 2
  %i.aox = sext i32 %i.aow to i64                 ; 5 uses
  %i.aoy = icmp sgt i32 %.fr.i, 0
  switch i32 %.fr.i, label %.lr.ph423.split.preheader.i [
    i32 4, label %.lr.ph423.split.us.i
    i32 5, label %.lr.ph423.split.us425.i.preheader
  ]

.lr.ph423.split.us425.i.preheader:                ; preds = %.lr.ph423.i
  %i.aoz = insertelement <4 x i32> poison, i32 %i.ant, i64 0
  %i.apa = shufflevector <4 x i32> %i.aoz, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.apb = insertelement <4 x i32> poison, i32 %i.anu, i64 0
  %i.apc = shufflevector <4 x i32> %i.apb, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %.lr.ph423.split.us425.i

.lr.ph423.split.preheader.i:                      ; preds = %.lr.ph423.i
  %i.apd = sext i32 %.fr.i to i64                 ; 2 uses
  %.pre455.i = load ptr, ptr %i.aok, align 8, !tbaa !183
  %wide.trip.count449.i = zext i32 %.fr.i to i64  ; 12 uses
  %i.ape = zext nneg i32 %i.aoi to i64
  %i.apf = add nsw i64 %wide.trip.count449.i, -1  ; 2 uses
  %i.apg = shl nuw nsw i64 %wide.trip.count449.i, 2 ; 2 uses
  %i.aph = shl nsw i64 %i.apd, 2
  %i.api = mul i32 %i.anu, %i.ant
  %i.apj = zext i32 %i.api to i64
  %i.apk = zext i32 %i.anu to i64
  %scevgep121 = getelementptr i8, ptr %i.aoc, i64 %i.apg
  %i.apl = extractelement <2 x i32> %i.anv, i64 0
  %i.apm = extractelement <2 x i32> %i.anv, i64 1 ; 2 uses
  %min.iters.check123 = icmp ult i32 %.fr.i, 4
  %i.apn = trunc i64 %i.apf to i32
  %i.apo = icmp ugt i64 %i.apf, 4294967295
  %min.iters.check125 = icmp ult i32 %.fr.i, 32
  %i.app = and i64 %wide.trip.count449.i, 28
  %n.vec127 = and i64 %wide.trip.count449.i, 2147483616 ; 4 uses
  %cmp.n140 = icmp eq i64 %n.vec127, %wide.trip.count449.i
  %min.epilog.iters.check145 = icmp eq i64 %i.app, 0
  %n.vec147 = and i64 %wide.trip.count449.i, 2147483644 ; 3 uses
  %cmp.n156 = icmp eq i64 %n.vec147, %wide.trip.count449.i
  %xtraiter519 = and i64 %wide.trip.count449.i, 3 ; 2 uses
  %lcmp.mod520.not = icmp eq i64 %xtraiter519, 0
  br label %.lr.ph423.split.i

.lr.ph423.split.us.i:                             ; preds = %.lr.ph423.i, %.loopexit406.us.i
  %i.apq = phi i32 [ %i.ava, %.loopexit406.us.i ], [ %i.aoi, %.lr.ph423.i ]
  %indvars.iv435.i = phi i64 [ %indvars.iv.next436.i, %.loopexit406.us.i ], [ 0, %.lr.ph423.i ] ; 3 uses
  %i.apr = load ptr, ptr %i.aok, align 8, !tbaa !183
  %i.aps = getelementptr inbounds nuw [4 x i8], ptr %i.apr, i64 %indvars.iv435.i
  %i.apt = load i32, ptr %i.aps, align 4, !tbaa !105
  %i.apu = sext i32 %i.apt to i64                 ; 2 uses
  %i.apv = load i64, ptr %i.aol, align 8
  %i.apw = inttoptr i64 %i.apv to ptr
  %i.apx = getelementptr inbounds [4 x i8], ptr %i.apw, i64 %i.apu
  %i.apy = load float, ptr %i.apx, align 4, !tbaa !134 ; 5 uses
  %i.apz = fcmp une float %i.apy, 0.000000e+00
  br i1 %i.apz, label %.loopexit406.us.loopexit.i, label %.loopexit406.us.i

.loopexit406.us.loopexit.i:                       ; preds = %.lr.ph423.split.us.i
  %i.aqa = load ptr, ptr %i.aom, align 8, !tbaa !187
  %i.aqb = getelementptr inbounds nuw [12 x i8], ptr %i.aqa, i64 %i.apu ; 2 uses
  %i.aqc = shl nuw nsw i64 %indvars.iv435.i, 2    ; 3 uses
  %i.aqd = getelementptr inbounds nuw i8, ptr %i.aqb, i64 8
  %i.aqe = load i32, ptr %i.aqd, align 4, !tbaa !105
  %i.aqf = sub nsw i32 %i.aqe, %i.anx
  %i.aqg = load ptr, ptr %i.aon, align 8, !tbaa !328
  %i.aqh = getelementptr inbounds nuw [4 x i8], ptr %i.aqg, i64 %i.aqc ; 4 uses
  %i.aqi = load ptr, ptr %i.aoo, align 8, !tbaa !328
  %i.aqj = getelementptr inbounds nuw [4 x i8], ptr %i.aqi, i64 %i.aqc ; 4 uses
  %i.aqk = load ptr, ptr %i.aop, align 8, !tbaa !328
  %i.aql = getelementptr inbounds nuw [4 x i8], ptr %i.aqk, i64 %i.aqc
  %i.aqm = load float, ptr %i.aqj, align 4, !tbaa !134
  %i.aqn = insertelement <4 x float> poison, float %i.aqm, i64 0
  %i.aqo = shufflevector <4 x float> %i.aqn, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.aqp = getelementptr inbounds nuw i8, ptr %i.aqj, i64 4
  %i.aqq = load float, ptr %i.aqp, align 4, !tbaa !134
  %i.aqr = insertelement <4 x float> poison, float %i.aqq, i64 0
  %i.aqs = shufflevector <4 x float> %i.aqr, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.aqt = getelementptr inbounds nuw i8, ptr %i.aqj, i64 8
  %i.aqu = load float, ptr %i.aqt, align 4, !tbaa !134
  %i.aqv = insertelement <4 x float> poison, float %i.aqu, i64 0
  %i.aqw = shufflevector <4 x float> %i.aqv, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.aqx = getelementptr inbounds nuw i8, ptr %i.aqj, i64 12
  %i.aqy = load float, ptr %i.aqx, align 4, !tbaa !134
  %i.aqz = insertelement <4 x float> poison, float %i.aqy, i64 0
  %i.ara = shufflevector <4 x float> %i.aqz, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %.val330.us.i = load <4 x float>, ptr %i.aql, align 16, !tbaa !334 ; 4 uses
  %i.arb = sext i32 %i.aqf to i64                 ; 16 uses
  %i.arc = load float, ptr %i.aqh, align 4, !tbaa !134
  %i.ard = fmul float %i.apy, %i.arc
  %i.are = insertelement <4 x float> poison, float %i.ard, i64 0
  %i.arf = shufflevector <4 x float> %i.are, <4 x float> poison, <4 x i32> zeroinitializer
  %i.arg = fmul <4 x float> %.val330.us.i, %i.arf ; 4 uses
  %i.arh = load <2 x i32>, ptr %i.aqb, align 4, !tbaa !105
  %i.ari = sub nsw <2 x i32> %i.arh, %i.anv       ; 3 uses
  %i.arj = extractelement <2 x i32> %i.ari, i64 1 ; 3 uses
  %i.ark = mul nsw i32 %i.arj, %i.anu
  %i.arl = sext i32 %i.ark to i64                 ; 4 uses
  %i.arm = add nsw <2 x i32> %i.ari, splat (i32 1) ; 2 uses
  %i.arn = extractelement <2 x i32> %i.arm, i64 1
  %i.aro = mul nsw i32 %i.arn, %i.anu
  %i.arp = sext i32 %i.aro to i64                 ; 4 uses
  %i.arq = add nsw i32 %i.arj, 2
  %i.arr = mul nsw i32 %i.arq, %i.anu
  %i.ars = sext i32 %i.arr to i64                 ; 4 uses
  %i.art = add nsw i32 %i.arj, 3
  %i.aru = mul nsw i32 %i.art, %i.anu
  %i.arv = sext i32 %i.aru to i64                 ; 4 uses
  %i.arw = extractelement <2 x i32> %i.ari, i64 0 ; 3 uses
  %i.arx = mul i32 %i.arw, %i.any
  %i.ary = sext i32 %i.arx to i64
  %i.arz = getelementptr inbounds [4 x i8], ptr %i.aoc, i64 %i.ary ; 4 uses
  %i.asa = getelementptr inbounds [4 x i8], ptr %i.arz, i64 %i.arl
  %i.asb = getelementptr inbounds [4 x i8], ptr %i.asa, i64 %i.arb ; 2 uses
  %.val336.us.i = load <4 x float>, ptr %i.asb, align 1, !tbaa !334
  %i.asc = getelementptr inbounds [4 x i8], ptr %i.arz, i64 %i.arp
  %i.asd = getelementptr inbounds [4 x i8], ptr %i.asc, i64 %i.arb ; 2 uses
  %.val335.us.i = load <4 x float>, ptr %i.asd, align 1, !tbaa !334
  %i.ase = getelementptr inbounds [4 x i8], ptr %i.arz, i64 %i.ars
  %i.asf = getelementptr inbounds [4 x i8], ptr %i.ase, i64 %i.arb ; 2 uses
  %.val334.us.i = load <4 x float>, ptr %i.asf, align 1, !tbaa !334
  %i.asg = getelementptr inbounds [4 x i8], ptr %i.arz, i64 %i.arv
  %i.ash = getelementptr inbounds [4 x i8], ptr %i.asg, i64 %i.arb ; 2 uses
  %.val333.us.i = load <4 x float>, ptr %i.ash, align 1, !tbaa !334
  %i.asi = call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.arg, <4 x float> %i.aqo, <4 x float> %.val336.us.i)
  %i.asj = call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.arg, <4 x float> %i.aqs, <4 x float> %.val335.us.i)
  %i.ask = call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.arg, <4 x float> %i.aqw, <4 x float> %.val334.us.i)
  %i.asl = call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.arg, <4 x float> %i.ara, <4 x float> %.val333.us.i)
  store <4 x float> %i.asi, ptr %i.asb, align 1, !tbaa !334
  store <4 x float> %i.asj, ptr %i.asd, align 1, !tbaa !334
  store <4 x float> %i.ask, ptr %i.asf, align 1, !tbaa !334
  store <4 x float> %i.asl, ptr %i.ash, align 1, !tbaa !334
  %i.asm = extractelement <2 x i32> %i.arm, i64 0
  %i.asn = mul i32 %i.asm, %i.any
  %i.aso = getelementptr inbounds nuw i8, ptr %i.aqh, i64 4
  %i.asp = load float, ptr %i.aso, align 4, !tbaa !134
  %i.asq = fmul float %i.apy, %i.asp
  %i.asr = insertelement <4 x float> poison, float %i.asq, i64 0
  %i.ass = shufflevector <4 x float> %i.asr, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ast = fmul <4 x float> %.val330.us.i, %i.ass ; 4 uses
  %i.asu = sext i32 %i.asn to i64
  %i.asv = getelementptr inbounds [4 x i8], ptr %i.aoc, i64 %i.asu ; 4 uses
  %i.asw = getelementptr inbounds [4 x i8], ptr %i.asv, i64 %i.arl
  %i.asx = getelementptr inbounds [4 x i8], ptr %i.asw, i64 %i.arb ; 2 uses
  %.val336.us.1.i = load <4 x float>, ptr %i.asx, align 1, !tbaa !334
  %i.asy = getelementptr inbounds [4 x i8], ptr %i.asv, i64 %i.arp
  %i.asz = getelementptr inbounds [4 x i8], ptr %i.asy, i64 %i.arb ; 2 uses
  %.val335.us.1.i = load <4 x float>, ptr %i.asz, align 1, !tbaa !334
  %i.ata = getelementptr inbounds [4 x i8], ptr %i.asv, i64 %i.ars
  %i.atb = getelementptr inbounds [4 x i8], ptr %i.ata, i64 %i.arb ; 2 uses
  %.val334.us.1.i = load <4 x float>, ptr %i.atb, align 1, !tbaa !334
  %i.atc = getelementptr inbounds [4 x i8], ptr %i.asv, i64 %i.arv
  %i.atd = getelementptr inbounds [4 x i8], ptr %i.atc, i64 %i.arb ; 2 uses
  %.val333.us.1.i = load <4 x float>, ptr %i.atd, align 1, !tbaa !334
  %i.ate = call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.ast, <4 x float> %i.aqo, <4 x float> %.val336.us.1.i)
  %i.atf = call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.ast, <4 x float> %i.aqs, <4 x float> %.val335.us.1.i)
  %i.atg = call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.ast, <4 x float> %i.aqw, <4 x float> %.val334.us.1.i)
  %i.ath = call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.ast, <4 x float> %i.ara, <4 x float> %.val333.us.1.i)
  store <4 x float> %i.ate, ptr %i.asx, align 1, !tbaa !334
  store <4 x float> %i.atf, ptr %i.asz, align 1, !tbaa !334
  store <4 x float> %i.atg, ptr %i.atb, align 1, !tbaa !334
  store <4 x float> %i.ath, ptr %i.atd, align 1, !tbaa !334
  %i.ati = add nsw i32 %i.arw, 2
  %i.atj = mul i32 %i.ati, %i.any
  %i.atk = getelementptr inbounds nuw i8, ptr %i.aqh, i64 8
  %i.atl = load float, ptr %i.atk, align 4, !tbaa !134
  %i.atm = fmul float %i.apy, %i.atl
  %i.atn = insertelement <4 x float> poison, float %i.atm, i64 0
  %i.ato = shufflevector <4 x float> %i.atn, <4 x float> poison, <4 x i32> zeroinitializer
  %i.atp = fmul <4 x float> %.val330.us.i, %i.ato ; 4 uses
  %i.atq = sext i32 %i.atj to i64
  %i.atr = getelementptr inbounds [4 x i8], ptr %i.aoc, i64 %i.atq ; 4 uses
  %i.ats = getelementptr inbounds [4 x i8], ptr %i.atr, i64 %i.arl
  %i.att = getelementptr inbounds [4 x i8], ptr %i.ats, i64 %i.arb ; 2 uses
  %.val336.us.2.i = load <4 x float>, ptr %i.att, align 1, !tbaa !334
  %i.atu = getelementptr inbounds [4 x i8], ptr %i.atr, i64 %i.arp
  %i.atv = getelementptr inbounds [4 x i8], ptr %i.atu, i64 %i.arb ; 2 uses
  %.val335.us.2.i = load <4 x float>, ptr %i.atv, align 1, !tbaa !334
  %i.atw = getelementptr inbounds [4 x i8], ptr %i.atr, i64 %i.ars
  %i.atx = getelementptr inbounds [4 x i8], ptr %i.atw, i64 %i.arb ; 2 uses
  %.val334.us.2.i = load <4 x float>, ptr %i.atx, align 1, !tbaa !334
  %i.aty = getelementptr inbounds [4 x i8], ptr %i.atr, i64 %i.arv
  %i.atz = getelementptr inbounds [4 x i8], ptr %i.aty, i64 %i.arb ; 2 uses
  %.val333.us.2.i = load <4 x float>, ptr %i.atz, align 1, !tbaa !334
  %i.aua = call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.atp, <4 x float> %i.aqo, <4 x float> %.val336.us.2.i)
  %i.aub = call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.atp, <4 x float> %i.aqs, <4 x float> %.val335.us.2.i)
  %i.auc = call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.atp, <4 x float> %i.aqw, <4 x float> %.val334.us.2.i)
  %i.aud = call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.atp, <4 x float> %i.ara, <4 x float> %.val333.us.2.i)
  store <4 x float> %i.aua, ptr %i.att, align 1, !tbaa !334
  store <4 x float> %i.aub, ptr %i.atv, align 1, !tbaa !334
  store <4 x float> %i.auc, ptr %i.atx, align 1, !tbaa !334
  store <4 x float> %i.aud, ptr %i.atz, align 1, !tbaa !334
  %i.aue = add nsw i32 %i.arw, 3
  %i.auf = mul i32 %i.aue, %i.any
  %i.aug = getelementptr inbounds nuw i8, ptr %i.aqh, i64 12
  %i.auh = load float, ptr %i.aug, align 4, !tbaa !134
  %i.aui = fmul float %i.apy, %i.auh
  %i.auj = insertelement <4 x float> poison, float %i.aui, i64 0
  %i.auk = shufflevector <4 x float> %i.auj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aul = fmul <4 x float> %.val330.us.i, %i.auk ; 4 uses
  %i.aum = sext i32 %i.auf to i64
  %i.aun = getelementptr inbounds [4 x i8], ptr %i.aoc, i64 %i.aum ; 4 uses
  %i.auo = getelementptr inbounds [4 x i8], ptr %i.aun, i64 %i.arl
  %i.aup = getelementptr inbounds [4 x i8], ptr %i.auo, i64 %i.arb ; 2 uses
  %.val336.us.3.i = load <4 x float>, ptr %i.aup, align 1, !tbaa !334
  %i.auq = getelementptr inbounds [4 x i8], ptr %i.aun, i64 %i.arp
  %i.aur = getelementptr inbounds [4 x i8], ptr %i.auq, i64 %i.arb ; 2 uses
  %.val335.us.3.i = load <4 x float>, ptr %i.aur, align 1, !tbaa !334
  %i.aus = getelementptr inbounds [4 x i8], ptr %i.aun, i64 %i.ars
  %i.aut = getelementptr inbounds [4 x i8], ptr %i.aus, i64 %i.arb ; 2 uses
  %.val334.us.3.i = load <4 x float>, ptr %i.aut, align 1, !tbaa !334
  %i.auu = getelementptr inbounds [4 x i8], ptr %i.aun, i64 %i.arv
  %i.auv = getelementptr inbounds [4 x i8], ptr %i.auu, i64 %i.arb ; 2 uses
  %.val333.us.3.i = load <4 x float>, ptr %i.auv, align 1, !tbaa !334
  %i.auw = call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.aul, <4 x float> %i.aqo, <4 x float> %.val336.us.3.i)
  %i.aux = call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.aul, <4 x float> %i.aqs, <4 x float> %.val335.us.3.i)
  %i.auy = call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.aul, <4 x float> %i.aqw, <4 x float> %.val334.us.3.i)
  %i.auz = call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.aul, <4 x float> %i.ara, <4 x float> %.val333.us.3.i)
  store <4 x float> %i.auw, ptr %i.aup, align 1, !tbaa !334
  store <4 x float> %i.aux, ptr %i.aur, align 1, !tbaa !334
  store <4 x float> %i.auy, ptr %i.aut, align 1, !tbaa !334
  store <4 x float> %i.auz, ptr %i.auv, align 1, !tbaa !334
  %.pre454.i = load i32, ptr %.035, align 8, !tbaa !325
  br label %.loopexit406.us.i

end_hunk_1
begin_hunk_2_@_Z14spread_on_gridPK9gmx_pme_tP11PmeAtomCommP14PmeAndFftGridsbbb.omp_outlined.1:bb.a
  store <8 x float> %i.bgd, ptr %i.bfz, align 4, !tbaa !134, !alias.scope !338
  store <8 x float> %i.bge, ptr %i.bga, align 4, !tbaa !134, !alias.scope !338
  store <8 x float> %i.bgf, ptr %i.bgb, align 4, !tbaa !134, !alias.scope !338
  store <8 x float> %i.bgg, ptr %i.bgc, align 4, !tbaa !134, !alias.scope !338
  %index.next138 = add nuw i64 %index129, 32      ; 2 uses
  %i.bgh = icmp eq i64 %index.next138, %n.vec127
  br i1 %i.bgh, label %middle.block139, label %vector.body128, !llvm.loop !306

middle.block139:                                  ; preds = %vector.body128
  br i1 %cmp.n140, label %._crit_edge414.i, label %vec.epilog.iter.check144

vec.epilog.iter.check144:                         ; preds = %middle.block139
  br i1 %min.epilog.iters.check145, label %vec.epilog.scalar.ph143.preheader, label %vec.epilog.ph146, !prof !138

vec.epilog.ph146:                                 ; preds = %vector.main.loop.iter.check124, %vec.epilog.iter.check144
  %vec.epilog.resume.val141 = phi i64 [ %n.vec127, %vec.epilog.iter.check144 ], [ 0, %vector.main.loop.iter.check124 ]
  %broadcast.splatinsert148 = insertelement <4 x float> poison, float %i.bfk, i64 0
  %broadcast.splat149 = shufflevector <4 x float> %broadcast.splatinsert148, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body150

vec.epilog.vector.body150:                        ; preds = %vec.epilog.vector.body150, %vec.epilog.ph146
  %index151 = phi i64 [ %vec.epilog.resume.val141, %vec.epilog.ph146 ], [ %index.next154, %vec.epilog.vector.body150 ] ; 3 uses
  %i.bgi = trunc nuw nsw i64 %index151 to i32
  %i.bgj = add i32 %i.bfo, %i.bgi
  %i.bgk = getelementptr inbounds nuw [4 x i8], ptr %i.ben, i64 %index151
  %wide.load152 = load <4 x float>, ptr %i.bgk, align 4, !tbaa !134, !alias.scope !337, !noalias !338
  %i.bgl = sext i32 %i.bgj to i64
  %i.bgm = getelementptr inbounds [4 x i8], ptr %i.aoc, i64 %i.bgl ; 2 uses
  %wide.load153 = load <4 x float>, ptr %i.bgm, align 4, !tbaa !134, !alias.scope !338
  %i.bgn = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat149, <4 x float> %wide.load152, <4 x float> %wide.load153)
  store <4 x float> %i.bgn, ptr %i.bgm, align 4, !tbaa !134, !alias.scope !338
  %index.next154 = add nuw i64 %index151, 4       ; 2 uses
  %i.bgo = icmp eq i64 %index.next154, %n.vec147
  br i1 %i.bgo, label %vec.epilog.middle.block155, label %vec.epilog.vector.body150, !llvm.loop !307

vec.epilog.middle.block155:                       ; preds = %vec.epilog.vector.body150
  br i1 %cmp.n156, label %._crit_edge414.i, label %vec.epilog.scalar.ph143.preheader

vec.epilog.scalar.ph143.preheader:                ; preds = %iter.check142, %vector.scevcheck, %vector.memcheck119, %vec.epilog.iter.check144, %vec.epilog.middle.block155
  %indvars.iv438.i.ph = phi i64 [ 0, %iter.check142 ], [ 0, %vector.scevcheck ], [ 0, %vector.memcheck119 ], [ %n.vec127, %vec.epilog.iter.check144 ], [ %n.vec147, %vec.epilog.middle.block155 ] ; 3 uses
  br i1 %lcmp.mod520.not, label %vec.epilog.scalar.ph143.prol.loopexit, label %vec.epilog.scalar.ph143.prol

vec.epilog.scalar.ph143.prol:                     ; preds = %vec.epilog.scalar.ph143.preheader, %vec.epilog.scalar.ph143.prol
  %indvars.iv438.i.prol = phi i64 [ %indvars.iv.next439.i.prol, %vec.epilog.scalar.ph143.prol ], [ %indvars.iv438.i.ph, %vec.epilog.scalar.ph143.preheader ] ; 3 uses
  %prol.iter521 = phi i64 [ %prol.iter521.next, %vec.epilog.scalar.ph143.prol ], [ 0, %vec.epilog.scalar.ph143.preheader ]
  %i.bgp = trunc nuw nsw i64 %indvars.iv438.i.prol to i32
  %i.bgq = add i32 %i.bfo, %i.bgp
  %i.bgr = getelementptr inbounds nuw [4 x i8], ptr %i.ben, i64 %indvars.iv438.i.prol
  %i.bgs = load float, ptr %i.bgr, align 4, !tbaa !134
  %i.bgt = sext i32 %i.bgq to i64
  %i.bgu = getelementptr inbounds [4 x i8], ptr %i.aoc, i64 %i.bgt ; 2 uses
  %i.bgv = load float, ptr %i.bgu, align 4, !tbaa !134
  %i.bgw = call float @llvm.fmuladd.f32(float %i.bfk, float %i.bgs, float %i.bgv)
  store float %i.bgw, ptr %i.bgu, align 4, !tbaa !134
  %indvars.iv.next439.i.prol = add nuw nsw i64 %indvars.iv438.i.prol, 1 ; 2 uses
  %prol.iter521.next = add i64 %prol.iter521, 1   ; 2 uses
  %prol.iter521.cmp.not = icmp eq i64 %prol.iter521.next, %xtraiter519
  br i1 %prol.iter521.cmp.not, label %vec.epilog.scalar.ph143.prol.loopexit, label %vec.epilog.scalar.ph143.prol, !llvm.loop !308

vec.epilog.scalar.ph143.prol.loopexit:            ; preds = %vec.epilog.scalar.ph143.prol, %vec.epilog.scalar.ph143.preheader
  %indvars.iv438.i.unr = phi i64 [ %indvars.iv438.i.ph, %vec.epilog.scalar.ph143.preheader ], [ %indvars.iv.next439.i.prol, %vec.epilog.scalar.ph143.prol ]
  %i.bgx = sub nsw i64 %indvars.iv438.i.ph, %wide.trip.count449.i
  %i.bgy = icmp ugt i64 %i.bgx, -4
  br i1 %i.bgy, label %._crit_edge414.i, label %vec.epilog.scalar.ph143

vec.epilog.scalar.ph143:                          ; preds = %vec.epilog.scalar.ph143.prol.loopexit, %vec.epilog.scalar.ph143
  %indvars.iv438.i = phi i64 [ %indvars.iv.next439.i.3, %vec.epilog.scalar.ph143 ], [ %indvars.iv438.i.unr, %vec.epilog.scalar.ph143.prol.loopexit ] ; 6 uses
  %i.bgz = trunc nuw nsw i64 %indvars.iv438.i to i32
  %i.bha = add i32 %i.bfo, %i.bgz
  %i.bhb = getelementptr inbounds nuw [4 x i8], ptr %i.ben, i64 %indvars.iv438.i
  %i.bhc = load float, ptr %i.bhb, align 4, !tbaa !134
  %i.bhd = sext i32 %i.bha to i64
  %i.bhe = getelementptr inbounds [4 x i8], ptr %i.aoc, i64 %i.bhd ; 2 uses
  %i.bhf = load float, ptr %i.bhe, align 4, !tbaa !134
  %i.bhg = call float @llvm.fmuladd.f32(float %i.bfk, float %i.bhc, float %i.bhf)
  store float %i.bhg, ptr %i.bhe, align 4, !tbaa !134
  %indvars.iv.next439.i = add nuw nsw i64 %indvars.iv438.i, 1 ; 2 uses
  %i.bhh = trunc nuw nsw i64 %indvars.iv.next439.i to i32
  %i.bhi = add i32 %i.bfo, %i.bhh
  %i.bhj = getelementptr inbounds nuw [4 x i8], ptr %i.ben, i64 %indvars.iv.next439.i
  %i.bhk = load float, ptr %i.bhj, align 4, !tbaa !134
  %i.bhl = sext i32 %i.bhi to i64
  %i.bhm = getelementptr inbounds [4 x i8], ptr %i.aoc, i64 %i.bhl ; 2 uses
  %i.bhn = load float, ptr %i.bhm, align 4, !tbaa !134
  %i.bho = call float @llvm.fmuladd.f32(float %i.bfk, float %i.bhk, float %i.bhn)
  store float %i.bho, ptr %i.bhm, align 4, !tbaa !134
  %indvars.iv.next439.i.1 = add nuw nsw i64 %indvars.iv438.i, 2 ; 2 uses
  %i.bhp = trunc nuw nsw i64 %indvars.iv.next439.i.1 to i32
  %i.bhq = add i32 %i.bfo, %i.bhp
  %i.bhr = getelementptr inbounds nuw [4 x i8], ptr %i.ben, i64 %indvars.iv.next439.i.1
  %i.bhs = load float, ptr %i.bhr, align 4, !tbaa !134
  %i.bht = sext i32 %i.bhq to i64
  %i.bhu = getelementptr inbounds [4 x i8], ptr %i.aoc, i64 %i.bht ; 2 uses
  %i.bhv = load float, ptr %i.bhu, align 4, !tbaa !134
  %i.bhw = call float @llvm.fmuladd.f32(float %i.bfk, float %i.bhs, float %i.bhv)
  store float %i.bhw, ptr %i.bhu, align 4, !tbaa !134
  %indvars.iv.next439.i.2 = add nuw nsw i64 %indvars.iv438.i, 3 ; 2 uses
  %i.bhx = trunc nuw nsw i64 %indvars.iv.next439.i.2 to i32
  %i.bhy = add i32 %i.bfo, %i.bhx
  %i.bhz = getelementptr inbounds nuw [4 x i8], ptr %i.ben, i64 %indvars.iv.next439.i.2
  %i.bia = load float, ptr %i.bhz, align 4, !tbaa !134
  %i.bib = sext i32 %i.bhy to i64
  %i.bic = getelementptr inbounds [4 x i8], ptr %i.aoc, i64 %i.bib ; 2 uses
  %i.bid = load float, ptr %i.bic, align 4, !tbaa !134
  %i.bie = call float @llvm.fmuladd.f32(float %i.bfk, float %i.bia, float %i.bid)
  store float %i.bie, ptr %i.bic, align 4, !tbaa !134
  %indvars.iv.next439.i.3 = add nuw nsw i64 %indvars.iv438.i, 4 ; 2 uses
  %exitcond.not.i47.3 = icmp eq i64 %indvars.iv.next439.i.3, %wide.trip.count449.i
  br i1 %exitcond.not.i47.3, label %._crit_edge414.i, label %vec.epilog.scalar.ph143, !llvm.loop !309

._crit_edge414.i:                                 ; preds = %vec.epilog.scalar.ph143.prol.loopexit, %vec.epilog.scalar.ph143, %vec.epilog.middle.block155, %middle.block139
  %indvars.iv.next442.i = add nuw nsw i64 %indvars.iv441.i, 1 ; 2 uses
  %exitcond445.not.i = icmp eq i64 %indvars.iv.next442.i, %wide.trip.count449.i
  br i1 %exitcond445.not.i, label %._crit_edge418.i, label %iter.check142, !llvm.loop !310

._crit_edge418.i:                                 ; preds = %._crit_edge414.i
  %indvars.iv.next447.i = add nuw nsw i64 %indvars.iv446.i, 1 ; 2 uses
  %exitcond450.not.i = icmp eq i64 %indvars.iv.next447.i, %wide.trip.count449.i
  br i1 %exitcond450.not.i, label %.loopexit.i45, label %.lr.ph417.i, !llvm.loop !311

.loopexit.i45:                                    ; preds = %._crit_edge418.i, %.preheader.i46, %.lr.ph423.split.i
  %indvars.iv.next452.i = add nuw nsw i64 %indvars.iv451.i, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next452.i, %i.ape
  br i1 %exitcond.not, label %_ZL35spread_coefficients_bsplines_threadP9pmegrid_tPK11PmeAtomCommP12splinedata_tRK15pme_spline_work.exit, label %.lr.ph423.split.i, !llvm.loop !302

_ZL35spread_coefficients_bsplines_threadP9pmegrid_tPK11PmeAtomCommP12splinedata_tRK15pme_spline_work.exit: ; preds = %.loopexit407.us.i, %.loopexit406.us.i, %.loopexit.i45, %._crit_edge.i41
  %i.bif = load ptr, ptr %4, align 8, !tbaa !11
  %i.big = getelementptr inbounds nuw i8, ptr %i.bif, i64 80
  %i.bih = load i8, ptr %i.big, align 8, !tbaa !108, !range !106, !noundef !107
  %i.bii = trunc nuw i8 %i.bih to i1
  br i1 %i.bii, label %bb.q, label %bb.s

bb.q:                                             ; preds = %_ZL35spread_coefficients_bsplines_threadP9pmegrid_tPK11PmeAtomCommP12splinedata_tRK15pme_spline_work.exit
  %i.bij = load ptr, ptr %3, align 8, !tbaa !15   ; 3 uses
  %i.bik = getelementptr inbounds nuw i8, ptr %i.bij, i64 200
  %i.bil = load ptr, ptr %i.bik, align 8, !tbaa !129 ; 2 uses
  %i.bim = ptrtoaddr ptr %i.bil to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #3
  %i.bin = getelementptr inbounds nuw i8, ptr %i.bij, i64 216
  %i.bio = load ptr, ptr %i.bin, align 8, !tbaa !130
  %i.bip = invoke noundef i32 @_Z30gmx_parallel_3dfft_real_limitsP18gmx_parallel_3dfftPiS1_S1_(ptr noundef %i.bio, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c)
          to label %.noexc unwind label %bb.r     ; 0 uses

.noexc:                                           ; preds = %bb.q
  %i.biq = load i32, ptr %i.q, align 4, !tbaa !105 ; 3 uses
  %i.bir = load i32, ptr %i.r, align 4, !tbaa !105 ; 4 uses
  %i.bis = getelementptr inbounds nuw i8, ptr %i.bij, i64 88
  %i.bit = load ptr, ptr %i.bis, align 8, !tbaa !193
  %i.biu = getelementptr inbounds nuw [72 x i8], ptr %i.bit, i64 %indvars.iv ; 8 uses
  %i.biv = getelementptr inbounds nuw i8, ptr %i.biu, i64 44
  %i.biw = load i32, ptr %i.biv, align 4, !tbaa !105
  %i.bix = getelementptr inbounds nuw i8, ptr %i.biu, i64 48
  %i.biy = load i32, ptr %i.bix, align 8, !tbaa !105
  %i.biz = getelementptr inbounds nuw i8, ptr %i.biu, i64 12
  %i.bja = getelementptr inbounds nuw i8, ptr %i.biu, i64 36
  %i.bjb = load i32, ptr %i.bja, align 4, !tbaa !196 ; 2 uses
  %i.bjc = getelementptr inbounds nuw i8, ptr %i.biu, i64 24
  %i.bjd = load i32, ptr %i.biz, align 4, !tbaa !105
  %reass.sub = sub i32 %i.bjd, %i.bjb
  %.reass.i = add i32 %reass.sub, 1
  %i.bje = load i32, ptr %i.a, align 4, !tbaa !105
  %i.bjf = load i32, ptr %i.bjc, align 8, !tbaa !105 ; 3 uses
  %i.bjg = sub nsw i32 %i.bje, %i.bjf
  %.sroa.speculated.i = call i32 @llvm.smin.i32(i32 %i.bjg, i32 %.reass.i) ; 2 uses
  %i.bjh = getelementptr inbounds nuw i8, ptr %i.biu, i64 16
  %i.bji = getelementptr inbounds nuw i8, ptr %i.biu, i64 28
  %i.bjj = load <2 x i32>, ptr %i.bjh, align 8, !tbaa !105
  %i.bjk = insertelement <2 x i32> poison, i32 %i.bjb, i64 0
  %i.bjl = shufflevector <2 x i32> %i.bjk, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.bjm = sub <2 x i32> %i.bjj, %i.bjl
  %i.bjn = add <2 x i32> %i.bjm, splat (i32 1)
  %i.bjo = load <2 x i32>, ptr %i.s, align 4, !tbaa !105
  %i.bjp = load <2 x i32>, ptr %i.bji, align 4, !tbaa !105 ; 3 uses
  %i.bjq = sub <2 x i32> %i.bjo, %i.bjp
  %i.bjr = call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.bjq, <2 x i32> %i.bjn) ; 3 uses
  %i.bjs = getelementptr inbounds nuw i8, ptr %i.biu, i64 56
  %i.bjt = load ptr, ptr %i.bjs, align 8, !tbaa !194
  %i.bju = load ptr, ptr %i.bjt, align 8, !tbaa !195 ; 2 uses
  %i.bjv = ptrtoaddr ptr %i.bju to i64
  %i.bjw = icmp sgt i32 %.sroa.speculated.i, 0
  br i1 %i.bjw, label %.preheader.lr.ph.i, label %_ZL15copy_local_gridP14PmeAndFftGridsi.exit

.preheader.lr.ph.i:                               ; preds = %.noexc
  %i.bjx = icmp slt <2 x i32> %i.bjr, splat (i32 1) ; 2 uses
  %i.bjy = extractelement <2 x i1> %i.bjx, i64 0
  %i.bjz = extractelement <2 x i1> %i.bjx, i64 1
  %brmerge.i = select i1 %i.bjy, i1 true, i1 %i.bjz
  br i1 %brmerge.i, label %_ZL15copy_local_gridP14PmeAndFftGridsi.exit, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %.preheader.lr.ph.i
  %i.bka = sext i32 %i.biy to i64                 ; 3 uses
  %i.bkb = sext i32 %i.biw to i64                 ; 2 uses
  %wide.trip.count69.i = zext nneg i32 %.sroa.speculated.i to i64
  %i.bkc = extractelement <2 x i32> %i.bjr, i64 0
  %wide.trip.count64.i = zext nneg i32 %i.bkc to i64
  %i.bkd = extractelement <2 x i32> %i.bjr, i64 1 ; 3 uses
  %wide.trip.count.i48 = zext i32 %i.bkd to i64   ; 8 uses
  %i.bke = sub i64 %i.bim, %i.bjv
  %i.bkf = mul nsw i64 %i.bka, -4
  %i.bkg = mul i64 %i.bkf, %i.bkb
  %i.bkh = mul nsw i64 %i.bka, -4
  %i.bki = mul i32 %i.bjf, %i.biq
  %i.bkj = extractelement <2 x i32> %i.bjp, i64 0 ; 2 uses
  %i.bkk = add i32 %i.bkj, %i.bki
  %i.bkl = mul i32 %i.bir, %i.bkk
  %i.bkm = extractelement <2 x i32> %i.bjp, i64 1 ; 2 uses
  %i.bkn = add i32 %i.bkm, %i.bkl
  %i.bko = zext i32 %i.bkn to i64
  %i.bkp = mul i32 %i.bir, %i.biq
  %i.bkq = zext i32 %i.bkp to i64
  %i.bkr = zext i32 %i.bir to i64
  %min.iters.check = icmp ult i32 %i.bkd, 4
  %min.iters.check110 = icmp ult i32 %i.bkd, 32
  %i.bks = and i64 %wide.trip.count.i48, 28
  %n.vec = and i64 %wide.trip.count.i48, 2147483616 ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i48
  %min.epilog.iters.check = icmp eq i64 %i.bks, 0
  %n.vec114 = and i64 %wide.trip.count.i48, 2147483644 ; 3 uses
  %cmp.n118 = icmp eq i64 %n.vec114, %wide.trip.count.i48
  br label %.preheader.i49

.preheader.i49:                                   ; preds = %._crit_edge53.i, %.preheader.preheader.i
  %indvars.iv66.i = phi i64 [ 0, %.preheader.preheader.i ], [ %indvars.iv.next67.i, %._crit_edge53.i ] ; 5 uses
  %i.bkt = mul i64 %i.bkg, %indvars.iv66.i
  %i.bku = add i64 %i.bke, %i.bkt
  %i.bkv = mul i64 %indvars.iv66.i, %i.bkq
  %i.bkw = add i64 %i.bkv, %i.bko
  %i.bkx = trunc i64 %indvars.iv66.i to i32
  %i.bky = add i32 %i.bjf, %i.bkx
  %i.bkz = mul i32 %i.bky, %i.biq
  %i.bla = add i32 %i.bkz, %i.bkj
  %i.blb = mul nsw i64 %indvars.iv66.i, %i.bkb
  br label %iter.check

iter.check:                                       ; preds = %._crit_edge.i56, %.preheader.i49
  %indvars.iv61.i = phi i64 [ 0, %.preheader.i49 ], [ %indvars.iv.next62.i, %._crit_edge.i56 ] ; 5 uses
  %i.blc = trunc nuw nsw i64 %indvars.iv61.i to i32
  %i.bld = add i32 %i.bla, %i.blc
  %i.ble = mul nsw i32 %i.bld, %i.bir
  %i.blf = add nsw i32 %i.ble, %i.bkm
  %i.blg = add nsw i64 %indvars.iv61.i, %i.blb
  %i.blh = mul nsw i64 %i.blg, %i.bka
  %i.bli = sext i32 %i.blf to i64
  %invariant.gep.i51 = getelementptr [4 x i8], ptr %i.bju, i64 %i.blh ; 11 uses
  %invariant.gep71.i = getelementptr [4 x i8], ptr %i.bil, i64 %i.bli ; 11 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.blj = mul i64 %i.bkh, %indvars.iv61.i
  %i.blk = add i64 %i.bku, %i.blj
  %i.bll = mul i64 %indvars.iv61.i, %i.bkr
  %i.blm = add i64 %i.bkw, %i.bll
  %sext497 = shl i64 %i.blm, 32
  %i.bln = ashr exact i64 %sext497, 30
  %i.blo = add i64 %i.blk, %i.bln
  %i.blp = add i64 %i.blo, -1
  %diff.check = icmp ult i64 %i.blp, 127
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check110, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.blq = getelementptr [4 x i8], ptr %invariant.gep.i51, i64 %index ; 4 uses
  %i.blr = getelementptr i8, ptr %i.blq, i64 32
  %i.bls = getelementptr i8, ptr %i.blq, i64 64
  %i.blt = getelementptr i8, ptr %i.blq, i64 96
  %wide.load = load <8 x float>, ptr %i.blq, align 4, !tbaa !134
  %wide.load111 = load <8 x float>, ptr %i.blr, align 4, !tbaa !134
  %wide.load112 = load <8 x float>, ptr %i.bls, align 4, !tbaa !134
  %wide.load113 = load <8 x float>, ptr %i.blt, align 4, !tbaa !134
  %i.blu = getelementptr [4 x i8], ptr %invariant.gep71.i, i64 %index ; 4 uses
  %i.blv = getelementptr i8, ptr %i.blu, i64 32
  %i.blw = getelementptr i8, ptr %i.blu, i64 64
  %i.blx = getelementptr i8, ptr %i.blu, i64 96
  store <8 x float> %wide.load, ptr %i.blu, align 4, !tbaa !134
  store <8 x float> %wide.load111, ptr %i.blv, align 4, !tbaa !134
  store <8 x float> %wide.load112, ptr %i.blw, align 4, !tbaa !134
  store <8 x float> %wide.load113, ptr %i.blx, align 4, !tbaa !134
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bly = icmp eq i64 %index.next, %n.vec
  br i1 %i.bly, label %middle.block, label %vector.body, !llvm.loop !312

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i56, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !138

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index115 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next117, %vec.epilog.vector.body ] ; 3 uses
  %i.blz = getelementptr [4 x i8], ptr %invariant.gep.i51, i64 %index115
  %wide.load116 = load <4 x float>, ptr %i.blz, align 4, !tbaa !134
  %i.bma = getelementptr [4 x i8], ptr %invariant.gep71.i, i64 %index115
  store <4 x float> %wide.load116, ptr %i.bma, align 4, !tbaa !134
  %index.next117 = add nuw i64 %index115, 4       ; 2 uses
  %i.bmb = icmp eq i64 %index.next117, %n.vec114
  br i1 %i.bmb, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !313

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n118, label %._crit_edge.i56, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i52.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec114, %vec.epilog.middle.block ] ; 4 uses
  %i.bmc = sub nsw i64 %wide.trip.count.i48, %indvars.iv.i52.ph
  %xtraiter522 = and i64 %i.bmc, 7                ; 2 uses
  %lcmp.mod523.not = icmp eq i64 %xtraiter522, 0
  br i1 %lcmp.mod523.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv.i52.prol = phi i64 [ %indvars.iv.next.i54.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.i52.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter524 = phi i64 [ %prol.iter524.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %gep.i53.prol = getelementptr [4 x i8], ptr %invariant.gep.i51, i64 %indvars.iv.i52.prol
  %i.bmd = load float, ptr %gep.i53.prol, align 4, !tbaa !134
  %gep72.i.prol = getelementptr [4 x i8], ptr %invariant.gep71.i, i64 %indvars.iv.i52.prol
  store float %i.bmd, ptr %gep72.i.prol, align 4, !tbaa !134
  %indvars.iv.next.i54.prol = add nuw nsw i64 %indvars.iv.i52.prol, 1 ; 2 uses
  %prol.iter524.next = add i64 %prol.iter524, 1   ; 2 uses
  %prol.iter524.cmp.not = icmp eq i64 %prol.iter524.next, %xtraiter522
  br i1 %prol.iter524.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !314

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.i52.unr = phi i64 [ %indvars.iv.i52.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.i54.prol, %vec.epilog.scalar.ph.prol ]
  %i.bme = sub nsw i64 %indvars.iv.i52.ph, %wide.trip.count.i48
  %i.bmf = icmp ugt i64 %i.bme, -8
  br i1 %i.bmf, label %._crit_edge.i56, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv.i52 = phi i64 [ %indvars.iv.next.i54.7, %vec.epilog.scalar.ph ], [ %indvars.iv.i52.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 10 uses
  %gep.i53 = getelementptr [4 x i8], ptr %invariant.gep.i51, i64 %indvars.iv.i52
  %i.bmg = load float, ptr %gep.i53, align 4, !tbaa !134
  %gep72.i = getelementptr [4 x i8], ptr %invariant.gep71.i, i64 %indvars.iv.i52
  store float %i.bmg, ptr %gep72.i, align 4, !tbaa !134
  %indvars.iv.next.i54 = add nuw nsw i64 %indvars.iv.i52, 1 ; 2 uses
  %gep.i53.1 = getelementptr [4 x i8], ptr %invariant.gep.i51, i64 %indvars.iv.next.i54
  %i.bmh = load float, ptr %gep.i53.1, align 4, !tbaa !134
  %gep72.i.1 = getelementptr [4 x i8], ptr %invariant.gep71.i, i64 %indvars.iv.next.i54
  store float %i.bmh, ptr %gep72.i.1, align 4, !tbaa !134
  %indvars.iv.next.i54.1 = add nuw nsw i64 %indvars.iv.i52, 2 ; 2 uses
  %gep.i53.2 = getelementptr [4 x i8], ptr %invariant.gep.i51, i64 %indvars.iv.next.i54.1
  %i.bmi = load float, ptr %gep.i53.2, align 4, !tbaa !134
  %gep72.i.2 = getelementptr [4 x i8], ptr %invariant.gep71.i, i64 %indvars.iv.next.i54.1
  store float %i.bmi, ptr %gep72.i.2, align 4, !tbaa !134
  %indvars.iv.next.i54.2 = add nuw nsw i64 %indvars.iv.i52, 3 ; 2 uses
  %gep.i53.3 = getelementptr [4 x i8], ptr %invariant.gep.i51, i64 %indvars.iv.next.i54.2
  %i.bmj = load float, ptr %gep.i53.3, align 4, !tbaa !134
  %gep72.i.3 = getelementptr [4 x i8], ptr %invariant.gep71.i, i64 %indvars.iv.next.i54.2
  store float %i.bmj, ptr %gep72.i.3, align 4, !tbaa !134
  %indvars.iv.next.i54.3 = add nuw nsw i64 %indvars.iv.i52, 4 ; 2 uses
  %gep.i53.4 = getelementptr [4 x i8], ptr %invariant.gep.i51, i64 %indvars.iv.next.i54.3
  %i.bmk = load float, ptr %gep.i53.4, align 4, !tbaa !134
  %gep72.i.4 = getelementptr [4 x i8], ptr %invariant.gep71.i, i64 %indvars.iv.next.i54.3
  store float %i.bmk, ptr %gep72.i.4, align 4, !tbaa !134
  %indvars.iv.next.i54.4 = add nuw nsw i64 %indvars.iv.i52, 5 ; 2 uses
  %gep.i53.5 = getelementptr [4 x i8], ptr %invariant.gep.i51, i64 %indvars.iv.next.i54.4
  %i.bml = load float, ptr %gep.i53.5, align 4, !tbaa !134
  %gep72.i.5 = getelementptr [4 x i8], ptr %invariant.gep71.i, i64 %indvars.iv.next.i54.4
  store float %i.bml, ptr %gep72.i.5, align 4, !tbaa !134
  %indvars.iv.next.i54.5 = add nuw nsw i64 %indvars.iv.i52, 6 ; 2 uses
  %gep.i53.6 = getelementptr [4 x i8], ptr %invariant.gep.i51, i64 %indvars.iv.next.i54.5
  %i.bmm = load float, ptr %gep.i53.6, align 4, !tbaa !134
  %gep72.i.6 = getelementptr [4 x i8], ptr %invariant.gep71.i, i64 %indvars.iv.next.i54.5
  store float %i.bmm, ptr %gep72.i.6, align 4, !tbaa !134
  %indvars.iv.next.i54.6 = add nuw nsw i64 %indvars.iv.i52, 7 ; 2 uses
  %gep.i53.7 = getelementptr [4 x i8], ptr %invariant.gep.i51, i64 %indvars.iv.next.i54.6
  %i.bmn = load float, ptr %gep.i53.7, align 4, !tbaa !134
  %gep72.i.7 = getelementptr [4 x i8], ptr %invariant.gep71.i, i64 %indvars.iv.next.i54.6
  store float %i.bmn, ptr %gep72.i.7, align 4, !tbaa !134
  %indvars.iv.next.i54.7 = add nuw nsw i64 %indvars.iv.i52, 8 ; 2 uses
  %exitcond.not.i55.7 = icmp eq i64 %indvars.iv.next.i54.7, %wide.trip.count.i48
  br i1 %exitcond.not.i55.7, label %._crit_edge.i56, label %vec.epilog.scalar.ph, !llvm.loop !315

._crit_edge.i56:                                  ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next62.i = add nuw nsw i64 %indvars.iv61.i, 1 ; 2 uses
  %exitcond65.not.i = icmp eq i64 %indvars.iv.next62.i, %wide.trip.count64.i
  br i1 %exitcond65.not.i, label %._crit_edge53.i, label %iter.check, !llvm.loop !316

._crit_edge53.i:                                  ; preds = %._crit_edge.i56
  %indvars.iv.next67.i = add nuw nsw i64 %indvars.iv66.i, 1 ; 2 uses
  %exitcond70.not.i = icmp eq i64 %indvars.iv.next67.i, %wide.trip.count69.i
  br i1 %exitcond70.not.i, label %_ZL15copy_local_gridP14PmeAndFftGridsi.exit, label %.preheader.i49, !llvm.loop !317

_ZL15copy_local_gridP14PmeAndFftGridsi.exit:      ; preds = %._crit_edge53.i, %.noexc, %.preheader.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  br label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bmo = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null                          ; 2 uses
  %.033 = extractvalue { ptr, i32 } %i.bmo, 1
  %.034 = extractvalue { ptr, i32 } %i.bmo, 0     ; 2 uses
  %i.bmp = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #3
  %i.bmq = icmp eq i32 %.033, %i.bmp
  br i1 %i.bmq, label %bb.t, label %bb.x

bb.s:                                             ; preds = %_ZL15copy_local_gridP14PmeAndFftGridsi.exit, %_ZL35spread_coefficients_bsplines_threadP9pmegrid_tPK11PmeAtomCommP12splinedata_tRK15pme_spline_work.exit, %_ZL13make_bsplinesN3gmx8ArrayRefIPfEES2_iPA3_fiPKiPKfb.exit
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.bmr = load i32, ptr %i.f, align 4, !tbaa !105
  %i.bms = sext i32 %i.bmr to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.bms
  br i1 %.not.not, label %bb.c, label %._crit_edge
end_hunk_2
begin_hunk_3_@_Z14spread_on_gridPK9gmx_pme_tP11PmeAtomCommP14PmeAndFftGridsbbb.omp_outlined.1:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #3
  br label %bb.v

bb.v:                                             ; preds = %._crit_edge, %bb.a
  ret void

bb.w:                                             ; preds = %bb.t
  %i.bmu = landingpad { ptr, i32 }
          catch ptr null
  %i.bmv = extractvalue { ptr, i32 } %i.bmu, 0
  call void @__clang_call_terminate(ptr %i.bmv) #17
  unreachable

bb.x:                                             ; preds = %bb.r
  call void @__clang_call_terminate(ptr %.034) #17
  unreachable
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_Z14spread_on_gridPK9gmx_pme_tP11PmeAtomCommP14PmeAndFftGridsbbb.omp_outlined.2(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3) #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [3 x i32], align 4                ; 6 uses
  %i.b = alloca [3 x i32], align 4                ; 3 uses
  %i.c = alloca [3 x i32], align 4                ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 7 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %i.h = load ptr, ptr %2, align 8, !tbaa !15
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  %i.j = load i32, ptr %i.i, align 8, !tbaa !128  ; 2 uses
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %bb.b, label %bb.s

bb.b:                                             ; preds = %bb.a
  %i.l = add nsw i32 %i.j, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #3
  store i32 0, ptr %i.d, align 4, !tbaa !105
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #3
  store i32 %i.l, ptr %i.e, align 4, !tbaa !105
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #3
  store i32 1, ptr %i.f, align 4, !tbaa !105
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #3
  store i32 0, ptr %i.g, align 4, !tbaa !105
  %i.m = load i32, ptr %0, align 4, !tbaa !105    ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.m, i32 34, ptr nonnull %i.g, ptr nonnull %i.d, ptr nonnull %i.e, ptr nonnull %i.f, i32 1, i32 1)
  %i.n = load i32, ptr %i.e, align 4, !tbaa !105
  %i.o = call i32 @llvm.smin.i32(i32 %i.n, i32 %i.l) ; 2 uses
  store i32 %i.o, ptr %i.e, align 4, !tbaa !105
  %i.p = load i32, ptr %i.d, align 4, !tbaa !105  ; 2 uses
  %.not20 = icmp sgt i32 %i.p, %i.o
  br i1 %.not20, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.u = sext i32 %i.p to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %.loopexit
  %indvars.iv = phi i64 [ %i.u, %.lr.ph ], [ %indvars.iv.next, %.loopexit ] ; 3 uses
  %i.v = load ptr, ptr %3, align 8, !tbaa !11     ; 8 uses
  %i.w = load ptr, ptr %2, align 8, !tbaa !15     ; 9 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 736
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !133
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 880
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !133 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 200
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !129 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #3
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 216
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !130
  %i.af = invoke noundef i32 @_Z30gmx_parallel_3dfft_real_limitsP18gmx_parallel_3dfftPiS1_S1_(ptr noundef %i.ae, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c)
          to label %.noexc unwind label %bb.p     ; 0 uses

.noexc:                                           ; preds = %bb.c
  %i.ag = load i32, ptr %i.a, align 4, !tbaa !105 ; 3 uses
  %i.ah = load i32, ptr %i.q, align 4, !tbaa !105 ; 3 uses
  %i.ai = load i32, ptr %i.r, align 4, !tbaa !105 ; 6 uses
  %i.aj = load i32, ptr %i.s, align 4, !tbaa !105
  %i.ak = load i32, ptr %i.t, align 4, !tbaa !105 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.w, i64 88
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !193 ; 7 uses
  %i.an = getelementptr inbounds nuw [72 x i8], ptr %i.am, i64 %indvars.iv ; 10 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 12
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 36
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !196 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.w, i64 76
  %i.at = getelementptr inbounds nuw i8, ptr %i.v, i64 112 ; 2 uses
  %i.au = load i32, ptr %i.ao, align 4, !tbaa !105 ; 4 uses
  %i.av = load i32, ptr %i.ap, align 4, !tbaa !105
  %reass.sub = sub i32 %i.au, %i.ar
  %i.aw = add i32 %reass.sub, 1
  %i.ax = add i32 %i.aw, %i.av
  %.sroa.speculated239.i = call i32 @llvm.smin.i32(i32 %i.ag, i32 %i.ax) ; 3 uses
  %i.ay = load i32, ptr %i.an, align 4, !tbaa !105 ; 2 uses
  %i.az = load i32, ptr %i.as, align 4, !tbaa !105 ; 2 uses
  %i.ba = add nsw i32 %i.az, -1
  %i.bb = icmp eq i32 %i.ay, %i.ba
  br i1 %i.bb, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.noexc
  %i.bc = load i32, ptr %i.at, align 8, !tbaa !105
  %.sroa.speculated384.i = call i32 @llvm.smax.i32(i32 %.sroa.speculated239.i, i32 %i.bc)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.noexc
  %.sroa.0.0.i = phi i32 [ %.sroa.speculated384.i, %bb.d ], [ %.sroa.speculated239.i, %.noexc ]
  %i.bd = getelementptr inbounds nuw i8, ptr %i.an, i64 28
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !105 ; 5 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !105
  %reass.sub22 = sub i32 %i.be, %i.ar
  %i.bh = add i32 %reass.sub22, 1
  %i.bi = add i32 %i.bh, %i.bg
  %.sroa.speculated239.1.i = call i32 @llvm.smin.i32(i32 %i.ah, i32 %i.bi) ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !105 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.w, i64 80
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !105 ; 3 uses
  %i.bn = add nsw i32 %i.bm, -1
  %i.bo = icmp eq i32 %i.bk, %i.bn
  br i1 %i.bo, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bp = load i32, ptr %i.at, align 8, !tbaa !105
  %.sroa.speculated381.i = call i32 @llvm.smax.i32(i32 %.sroa.speculated239.1.i, i32 %i.bp)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.6.0.i = phi i32 [ %.sroa.speculated381.i, %bb.f ], [ %.sroa.speculated239.1.i, %bb.e ]
  %i.bq = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !105 ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.an, i64 20
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !105
  %reass.sub23 = sub i32 %i.br, %i.ar
  %i.bu = add i32 %reass.sub23, 1
  %i.bv = add i32 %i.bu, %i.bt                    ; 2 uses
  %.sroa.speculated239.2.i = call i32 @llvm.smin.i32(i32 %i.ai, i32 %i.bv) ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !105 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.w, i64 84
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !105 ; 5 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.w, i64 184
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !105 ; 2 uses
  %i.cc = sub nsw i32 0, %i.cb
  %.not304.i = icmp slt i32 %i.cb, 0
  br i1 %.not304.i, label %.loopexit, label %.lr.ph311.i

.lr.ph311.i:                                      ; preds = %bb.g
  %i.cd = sub nsw i32 0, %i.ag
  %i.ce = getelementptr inbounds nuw i8, ptr %i.v, i64 20
  %i.cf = getelementptr inbounds nuw i8, ptr %i.w, i64 188
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !105 ; 2 uses
  %i.ch = sub nsw i32 0, %i.cg
  %.not223290.i = icmp slt i32 %i.cg, 0
  %i.ci = sub nsw i32 0, %i.ah
  %i.cj = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.ck = getelementptr inbounds nuw i8, ptr %i.v, i64 824
  %i.cl = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  %i.cm = getelementptr inbounds nuw i8, ptr %i.v, i64 800
  %i.cn = mul i32 %i.ai, %i.ag
  br i1 %.not223290.i, label %.loopexit, label %.lr.ph311.split.i

.lr.ph311.split.i:                                ; preds = %.lr.ph311.i
  %i.co = getelementptr inbounds nuw i8, ptr %i.w, i64 192
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !105 ; 2 uses
  %i.cq = sub nsw i32 0, %i.cp                    ; 2 uses
  %.not224274.i = icmp slt i32 %i.cp, 0
  br i1 %.not224274.i, label %.loopexit, label %.lr.ph311.split.split.i

.lr.ph311.split.split.i:                          ; preds = %.lr.ph311.split.i
  %i.cr = sext i32 %i.br to i64                   ; 23 uses
  %i.cs = sext i32 %i.be to i64                   ; 8 uses
  %i.ct = sext i32 %i.ak to i64                   ; 5 uses
  %i.cu = sext i32 %i.au to i64                   ; 6 uses
  %i.cv = sext i32 %i.aj to i64                   ; 3 uses
  %i.cw = sext i32 %i.ai to i64                   ; 13 uses
  %i.cx = shl nsw i64 %i.cr, 2                    ; 4 uses
  %i.cy = shl nsw i64 %i.cw, 2
  %i.cz = shl nsw i64 %i.cw, 2
  %i.da = shl nsw i64 %i.cw, 2
  %i.db = sext i32 %i.bv to i64                   ; 4 uses
  %i.dc = shl nsw i64 %i.cw, 2
  %i.dd = shl nsw i64 %i.cw, 2
  %i.de = shl nsw i64 %i.cw, 2
  %i.df = xor i64 %i.cs, -1
  %i.dg = mul nsw i64 %i.cu, %i.cv
  %i.dh = add i64 %i.dg, %i.cs                    ; 2 uses
  %i.di = shl i64 %i.dh, 2
  %i.dj = mul i64 %i.di, %i.ct
  %i.dk = shl nsw i64 %i.cr, 2                    ; 2 uses
  %i.dl = shl nsw i64 %i.ct, 2
  %i.dm = mul i64 %i.dl, %i.cv
  %i.dn = shl nsw i64 %i.ct, 2
  %i.do = xor i64 %i.cs, -1
  %i.dp = mul i64 %i.dh, %i.ct
  %smin117 = call i64 @llvm.smin.i64(i64 %i.cw, i64 %i.db)
  %i.dq = getelementptr i8, ptr %i.ac, i64 %i.dj
  %i.dr = getelementptr i8, ptr %i.dq, i64 %i.dk
  %stride.check116 = icmp slt i32 %i.ak, 0
  %smin58 = call i64 @llvm.smin.i64(i64 %i.cw, i64 %i.db)
  %smin68 = call i64 @llvm.smin.i64(i64 %i.cw, i64 %i.db)
  %stride.check = icmp slt i32 %i.ai, 0
  %smin = call i64 @llvm.smin.i64(i64 %i.cw, i64 %i.db)
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge297.split.i, %.lr.ph311.split.split.i
  %.0189309.i = phi i1 [ true, %.lr.ph311.split.split.i ], [ %.us-phi289.i, %._crit_edge297.split.i ]
  %.0190308.i = phi i1 [ true, %.lr.ph311.split.split.i ], [ %.us-phi288.i, %._crit_edge297.split.i ]
  %.0195307.i = phi i1 [ true, %.lr.ph311.split.split.i ], [ %.us-phi.i, %._crit_edge297.split.i ]
  %.0208305.i = phi i32 [ 0, %.lr.ph311.split.split.i ], [ %i.rn, %._crit_edge297.split.i ] ; 4 uses
  %i.ds = add nsw i32 %.0208305.i, %i.ay          ; 3 uses
  %i.dt = icmp slt i32 %i.ds, 0
  br i1 %i.dt, label %bb.i, label %.lr.ph296.i

bb.i:                                             ; preds = %bb.h
  %i.du = add nsw i32 %i.ds, %i.az
  %i.dv = load i32, ptr %i.ce, align 4, !tbaa !132
  %.fr.i = freeze i32 %i.dv
  %i.dw = icmp sgt i32 %.fr.i, 1
  br label %.lr.ph296.i

.lr.ph296.i:                                      ; preds = %bb.i, %bb.h
  %.0205.i = phi i32 [ %i.du, %bb.i ], [ %i.ds, %bb.h ]
  %.0202.i = phi i32 [ %i.cd, %bb.i ], [ 0, %bb.h ]
  %.0187.i = phi i1 [ %i.dw, %bb.i ], [ false, %bb.h ] ; 3 uses
  %i.dx = mul nsw i32 %.0205.i, %i.bm             ; 2 uses
  %i.dy = mul nsw i32 %i.dx, %i.bz
  %i.dz = sext i32 %i.dy to i64
  %i.ea = getelementptr inbounds nuw [72 x i8], ptr %i.am, i64 %i.dz ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 24
  %i.ec = load i32, ptr %i.eb, align 8, !tbaa !105
  %i.ed = add i32 %i.ec, %.0202.i                 ; 5 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ea, i64 12
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !105
  %i.eg = add i32 %i.ed, %i.ef
  %spec.select = select i1 %.0187.i, i32 %.sroa.0.0.i, i32 %.sroa.speculated239.i
  %.sroa.speculated235.i = call i32 @llvm.smin.i32(i32 %spec.select, i32 %i.eg) ; 2 uses
  %i.eh = icmp sge i32 %i.au, %.sroa.speculated235.i ; 2 uses
  %wide.trip.count339.i = sext i32 %.sroa.speculated235.i to i64 ; 3 uses
  %i.ei = sub i32 %i.au, %i.ed                    ; 3 uses
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge281.i, %.lr.ph296.i
  %.1294.i = phi i1 [ %.0189309.i, %.lr.ph296.i ], [ %.us-phi289.i, %._crit_edge281.i ] ; 2 uses
  %.1191293.i = phi i1 [ %.0190308.i, %.lr.ph296.i ], [ %.us-phi288.i, %._crit_edge281.i ] ; 2 uses
  %.1196292.i = phi i1 [ %.0195307.i, %.lr.ph296.i ], [ %.us-phi.i, %._crit_edge281.i ] ; 2 uses
  %.0207291.i = phi i32 [ 0, %.lr.ph296.i ], [ %i.rm, %._crit_edge281.i ] ; 4 uses
  %i.ej = add nsw i32 %.0207291.i, %i.bk          ; 3 uses
  %i.ek = icmp slt i32 %i.ej, 0
  br i1 %i.ek, label %bb.k, label %.lr.ph280.i

bb.k:                                             ; preds = %bb.j
  %i.el = add nsw i32 %i.ej, %i.bm
  %i.em = load i32, ptr %i.cj, align 8, !tbaa !131
  %.fr246.i = freeze i32 %i.em
  %i.en = icmp sgt i32 %.fr246.i, 1
  br label %.lr.ph280.i

.lr.ph280.i:                                      ; preds = %bb.k, %bb.j
  %.0204.i = phi i32 [ %i.el, %bb.k ], [ %i.ej, %bb.j ] ; 2 uses
  %.0201.i = phi i32 [ %i.ci, %bb.k ], [ 0, %bb.j ]
  %.0186.i = phi i1 [ %i.en, %bb.k ], [ false, %bb.j ] ; 3 uses
  %i.eo = mul nsw i32 %.0204.i, %i.bz
  %i.ep = sext i32 %i.eo to i64
  %i.eq = getelementptr inbounds nuw [72 x i8], ptr %i.am, i64 %i.ep ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 28
  %i.es = load i32, ptr %i.er, align 4, !tbaa !105
  %i.et = add i32 %i.es, %.0201.i                 ; 6 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !105
  %i.ew = add i32 %i.et, %i.ev
  %spec.select38 = select i1 %.0186.i, i32 %.sroa.6.0.i, i32 %.sroa.speculated239.1.i
  %.sroa.speculated231.i = call i32 @llvm.smin.i32(i32 %spec.select38, i32 %i.ew) ; 2 uses
  %i.ex = or i32 %.0207291.i, %.0208305.i         ; 2 uses
  %i.ey = add nsw i32 %.0204.i, %i.dx
  %i.ez = mul nsw i32 %i.ey, %i.bz                ; 2 uses
  %or.cond5.i = or i1 %.0187.i, %.0186.i
  %i.fa = icmp sge i32 %i.be, %.sroa.speculated231.i ; 2 uses
  %wide.trip.count349.i = sext i32 %.sroa.speculated231.i to i64 ; 5 uses
  %i.fb = sub i32 %i.be, %i.et                    ; 2 uses
  br i1 %or.cond5.i, label %.lr.ph280.split.us.i.preheader, label %.lr.ph280.split.i.preheader

.lr.ph280.split.us.i.preheader:                   ; preds = %.lr.ph280.i
  %i.fc = sub i32 %i.be, %i.et
  %i.fd = add nsw i64 %i.df, %wide.trip.count349.i
  %i.fe = mul i64 %i.de, %i.fd
  br label %.lr.ph280.split.us.i

.lr.ph280.split.i.preheader:                      ; preds = %.lr.ph280.i
  %i.ff = select i1 %i.eh, i1 true, i1 %i.fa
  %i.fg = add nsw i64 %i.do, %wide.trip.count349.i
  %i.fh = mul i64 %i.dn, %i.fg
  %i.fi = getelementptr i8, ptr %i.ac, i64 %i.fh
  br label %.lr.ph280.split.i

.lr.ph280.split.us.i:                             ; preds = %.lr.ph280.split.us.i.preheader, %.loopexit254.us.i
  %.2278.us.i = phi i1 [ %.4.us.i, %.loopexit254.us.i ], [ %.1294.i, %.lr.ph280.split.us.i.preheader ] ; 4 uses
  %.2192277.us.i = phi i1 [ %.4194.us.i, %.loopexit254.us.i ], [ %.1191293.i, %.lr.ph280.split.us.i.preheader ] ; 4 uses
  %.2197276.us.i = phi i1 [ %.4199.us.i, %.loopexit254.us.i ], [ %.1196292.i, %.lr.ph280.split.us.i.preheader ] ; 4 uses
  %.0206275.us.i = phi i32 [ %i.ne, %.loopexit254.us.i ], [ 0, %.lr.ph280.split.us.i.preheader ] ; 4 uses
  %i.fj = add nsw i32 %.0206275.us.i, %i.bx       ; 2 uses
  %i.fk = icmp slt i32 %i.fj, 0                   ; 2 uses
  %i.fl = select i1 %i.fk, i32 %i.bz, i32 0
  %.0203.us.i = add nsw i32 %i.fl, %i.fj          ; 2 uses
  %i.fm = sext i32 %.0203.us.i to i64
  %i.fn = getelementptr inbounds nuw [72 x i8], ptr %i.am, i64 %i.fm ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 32
  %i.fp = load i32, ptr %i.fo, align 8, !tbaa !105
  %i.fq = select i1 %i.fk, i32 %i.ai, i32 0
  %i.fr = sub i32 %i.fp, %i.fq                    ; 5 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fn, i64 20
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !105
  %i.fu = add i32 %i.fr, %i.ft                    ; 4 uses
  %.sroa.speculated.us.i = call i32 @llvm.smin.i32(i32 %.sroa.speculated239.2.i, i32 %i.fu) ; 3 uses
  %i.fv = or i32 %.0206275.us.i, %i.ex
  %or.cond3.us.i = icmp eq i32 %i.fv, 0
  br i1 %or.cond3.us.i, label %.loopexit254.us.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph280.split.us.i
  %i.fw = add nsw i32 %.0203.us.i, %i.ez
  %i.fx = sext i32 %i.fw to i64
  %i.fy = getelementptr inbounds nuw [72 x i8], ptr %i.am, i64 %i.fx ; 3 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 56
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !194
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !195 ; 5 uses
  %i.gc = ptrtoaddr ptr %i.gb to i64
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fy, i64 44
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !105 ; 6 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fy, i64 48
  %i.gg = load i32, ptr %i.gf, align 8, !tbaa !105 ; 8 uses
  br i1 %.0186.i, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.gh = load i32, ptr %i.cl, align 4, !tbaa !364
  %i.gi = sext i32 %i.gh to i64                   ; 2 uses
  %i.gj = load ptr, ptr %i.ck, align 8, !tbaa !181
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.gj, i64 %i.gi
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !105
  %i.gm = load ptr, ptr %i.cm, align 8, !tbaa !181
  %i.gn = getelementptr [4 x i8], ptr %i.gm, i64 %i.gi
  %i.go = getelementptr i8, ptr %i.gn, i64 4
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !105
  %i.gq = sub nsw i32 %i.gl, %i.gp                ; 3 uses
  br i1 %.0187.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.gr = mul i32 %i.cn, %i.gq
  %i.gs = sext i32 %i.gr to i64
  %i.gt = getelementptr inbounds [4 x i8], ptr %i.aa, i64 %i.gs
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l
  %.0216.us.i = phi i32 [ %i.gq, %bb.n ], [ %i.gq, %bb.m ], [ %i.ah, %bb.l ] ; 2 uses
  %.3198.us.i = phi i1 [ %.2197276.us.i, %bb.n ], [ %.2197276.us.i, %bb.m ], [ false, %bb.l ] ; 6 uses
  %.3193.us.i = phi i1 [ %.2192277.us.i, %bb.n ], [ false, %bb.m ], [ %.2192277.us.i, %bb.l ] ; 6 uses
  %.3.us.i = phi i1 [ false, %bb.n ], [ %.2278.us.i, %bb.m ], [ %.2278.us.i, %bb.l ] ; 6 uses
  %.0188.us.i = phi i1 [ %.2278.us.i, %bb.n ], [ %.2192277.us.i, %bb.m ], [ %.2197276.us.i, %bb.l ]
  %.0.us.i = phi ptr [ %i.gt, %bb.n ], [ %i.aa, %bb.m ], [ %i.y, %bb.l ] ; 5 uses
  %.0.us.i41 = ptrtoaddr ptr %.0.us.i to i64
  br i1 %i.eh, label %.loopexit254.us.i, label %.preheader252.lr.ph.us.i

.preheader252.lr.ph.us.i:                         ; preds = %bb.o
  %i.gu = icmp slt i32 %i.br, %.sroa.speculated.us.i ; 2 uses
  br i1 %i.fa, label %.loopexit254.us.i, label %.preheader252.lr.ph.split.us.i

.preheader252.lr.ph.split.us.i:                   ; preds = %.preheader252.lr.ph.us.i
  br i1 %.0188.us.i, label %.preheader252.lr.ph.split.split.us.us.i, label %.preheader252.lr.ph.split.split.us284.i

.preheader252.lr.ph.split.split.us284.i:          ; preds = %.preheader252.lr.ph.split.us.i
  br i1 %i.gu, label %.preheader252.us285.preheader.i, label %.loopexit254.us.i

.preheader252.us285.preheader.i:                  ; preds = %.preheader252.lr.ph.split.split.us284.i
  %i.gv = sext i32 %.0216.us.i to i64             ; 3 uses
  %wide.trip.count344.i = sext i32 %.sroa.speculated.us.i to i64
  %i.gw = mul nsw i64 %i.cu, %i.gv
  %i.gx = add i64 %i.gw, %i.cs                    ; 2 uses
  %i.gy = mul i64 %i.dc, %i.gx
  %i.gz = mul i64 %i.dd, %i.gv
  %i.ha = sext i32 %i.fu to i64
  %smin59 = call i64 @llvm.smin.i64(i64 %smin58, i64 %i.ha) ; 2 uses
  %i.hb = mul i64 %i.gx, %i.cw
  %i.hc = add i64 %smin59, %i.hb
  %i.hd = shl i64 %i.hc, 2
  %scevgep61 = getelementptr i8, ptr %i.gb, i64 %i.cx
  %i.he = sext i32 %i.fr to i64
  %i.hf = mul nsw i64 %i.he, -4                   ; 2 uses
  %scevgep62 = getelementptr i8, ptr %scevgep61, i64 %i.hf
  %i.hg = mul i32 %i.ei, %i.ge
  %i.hh = add i32 %i.fb, %i.hg
  %i.hi = mul i32 %i.gg, %i.hh
  %i.hj = mul i32 %i.gg, %i.ge
  %scevgep66 = getelementptr i8, ptr %i.gb, i64 %i.hf
  %i.hk = sext i32 %i.fu to i64
  %smin69 = call i64 @llvm.smin.i64(i64 %smin68, i64 %i.hk) ; 3 uses
  %i.hl = sub i64 %smin69, %i.cr                  ; 7 uses
  %i.hm = getelementptr i8, ptr %.0.us.i, i64 %i.cx
  %i.hn = getelementptr i8, ptr %i.hm, i64 %i.gy
  %i.ho = getelementptr i8, ptr %.0.us.i, i64 %i.fe
  %i.hp = getelementptr i8, ptr %i.ho, i64 %i.hd
  %min.iters.check70 = icmp ult i64 %i.hl, 8
  %min.iters.check72 = icmp ult i64 %i.hl, 32
  %i.hq = and i64 %i.hl, 24
  %n.vec74 = and i64 %i.hl, -32                   ; 4 uses
  %i.hr = add i64 %n.vec74, %i.cr
  %cmp.n87 = icmp eq i64 %i.hl, %n.vec74
  %min.epilog.iters.check92 = icmp eq i64 %i.hq, 0
  %n.vec94 = and i64 %i.hl, -8                    ; 3 uses
  %i.hs = add i64 %n.vec94, %i.cr
  %cmp.n101 = icmp eq i64 %i.hl, %n.vec94
  br label %.preheader252.us285.i

.preheader252.us285.i:                            ; preds = %._crit_edge270.split.us.i, %.preheader252.us285.preheader.i
  %indvar56 = phi i64 [ %indvar.next57, %._crit_edge270.split.us.i ], [ 0, %.preheader252.us285.preheader.i ] ; 3 uses
  %indvars.iv351.i = phi i64 [ %indvars.iv.next352.i, %._crit_edge270.split.us.i ], [ %i.cu, %.preheader252.us285.preheader.i ] ; 3 uses
  %i.ht = mul i64 %i.gz, %indvar56                ; 2 uses
  %scevgep = getelementptr i8, ptr %i.hn, i64 %i.ht
  %scevgep60 = getelementptr i8, ptr %i.hp, i64 %i.ht
  %i.hu = trunc i64 %indvar56 to i32
  %i.hv = mul i32 %i.hj, %i.hu
  %i.hw = add i32 %i.hv, %i.hi
  %i.hx = mul nsw i64 %indvars.iv351.i, %i.gv
  %i.hy = trunc i64 %indvars.iv351.i to i32
  %i.hz = sub i32 %i.hy, %i.ed
  %i.ia = mul i32 %i.hz, %i.ge
  %i.ib = sub i32 %i.ia, %i.et
  br label %iter.check89

iter.check89:                                     ; preds = %..loopexit251_crit_edge.us.i, %.preheader252.us285.i
  %indvar63 = phi i32 [ %indvar.next64, %..loopexit251_crit_edge.us.i ], [ 0, %.preheader252.us285.i ] ; 2 uses
  %indvars.iv346.i = phi i64 [ %indvars.iv.next347.i, %..loopexit251_crit_edge.us.i ], [ %i.cs, %.preheader252.us285.i ] ; 3 uses
  %i.ic = add nsw i64 %indvars.iv346.i, %i.hx
  %i.id = mul nsw i64 %i.ic, %i.cw
  %i.ie = trunc nsw i64 %indvars.iv346.i to i32
  %i.if = add i32 %i.ib, %i.ie
  %i.ig = mul nsw i32 %i.if, %i.gg
  %i.ih = sub nsw i32 %i.ig, %i.fr
  %i.ii = sext i32 %i.ih to i64
  %invariant.gep395.i = getelementptr [4 x i8], ptr %i.gb, i64 %i.ii ; 11 uses
  %invariant.gep397.i = getelementptr [4 x i8], ptr %.0.us.i, i64 %i.id ; 11 uses
  br i1 %min.iters.check70, label %vec.epilog.scalar.ph90.preheader, label %vector.memcheck55

vector.memcheck55:                                ; preds = %iter.check89
  %i.ij = mul i32 %i.gg, %indvar63
  %i.ik = add i32 %i.hw, %i.ij
  %i.il = sext i32 %i.ik to i64                   ; 2 uses
  %i.im = add i64 %smin59, %i.il
  %i.in = shl nsw i64 %i.im, 2
  %scevgep67 = getelementptr i8, ptr %scevgep66, i64 %i.in
  %i.io = shl nsw i64 %i.il, 2
  %scevgep65 = getelementptr i8, ptr %scevgep62, i64 %i.io
  %bound0 = icmp ult ptr %scevgep, %scevgep67
  %bound1 = icmp ult ptr %scevgep65, %scevgep60
  %found.conflict = and i1 %bound0, %bound1
  %i.ip = or i1 %found.conflict, %stride.check
  br i1 %i.ip, label %vec.epilog.scalar.ph90.preheader, label %vector.main.loop.iter.check71

vector.main.loop.iter.check71:                    ; preds = %vector.memcheck55
  br i1 %min.iters.check72, label %vec.epilog.ph93, label %vector.body75

vector.body75:                                    ; preds = %vector.main.loop.iter.check71, %vector.body75
  %index76 = phi i64 [ %index.next85, %vector.body75 ], [ 0, %vector.main.loop.iter.check71 ] ; 2 uses
  %i.iq = add i64 %index76, %i.cr                 ; 2 uses
  %i.ir = getelementptr [4 x i8], ptr %invariant.gep395.i, i64 %i.iq ; 4 uses
  %i.is = getelementptr i8, ptr %i.ir, i64 32
  %i.it = getelementptr i8, ptr %i.ir, i64 64
  %i.iu = getelementptr i8, ptr %i.ir, i64 96
  %wide.load77 = load <8 x float>, ptr %i.ir, align 4, !tbaa !134, !alias.scope !365
  %wide.load78 = load <8 x float>, ptr %i.is, align 4, !tbaa !134, !alias.scope !365
  %wide.load79 = load <8 x float>, ptr %i.it, align 4, !tbaa !134, !alias.scope !365
  %wide.load80 = load <8 x float>, ptr %i.iu, align 4, !tbaa !134, !alias.scope !365
  %i.iv = getelementptr [4 x i8], ptr %invariant.gep397.i, i64 %i.iq ; 5 uses
  %i.iw = getelementptr i8, ptr %i.iv, i64 32     ; 2 uses
  %i.ix = getelementptr i8, ptr %i.iv, i64 64     ; 2 uses
  %i.iy = getelementptr i8, ptr %i.iv, i64 96     ; 2 uses
  %wide.load81 = load <8 x float>, ptr %i.iv, align 4, !tbaa !134, !alias.scope !366, !noalias !365
  %wide.load82 = load <8 x float>, ptr %i.iw, align 4, !tbaa !134, !alias.scope !366, !noalias !365
  %wide.load83 = load <8 x float>, ptr %i.ix, align 4, !tbaa !134, !alias.scope !366, !noalias !365
  %wide.load84 = load <8 x float>, ptr %i.iy, align 4, !tbaa !134, !alias.scope !366, !noalias !365
  %i.iz = fadd <8 x float> %wide.load77, %wide.load81
  %i.ja = fadd <8 x float> %wide.load78, %wide.load82
  %i.jb = fadd <8 x float> %wide.load79, %wide.load83
  %i.jc = fadd <8 x float> %wide.load80, %wide.load84
  store <8 x float> %i.iz, ptr %i.iv, align 4, !tbaa !134, !alias.scope !366, !noalias !365
  store <8 x float> %i.ja, ptr %i.iw, align 4, !tbaa !134, !alias.scope !366, !noalias !365
  store <8 x float> %i.jb, ptr %i.ix, align 4, !tbaa !134, !alias.scope !366, !noalias !365
  store <8 x float> %i.jc, ptr %i.iy, align 4, !tbaa !134, !alias.scope !366, !noalias !365
  %index.next85 = add nuw i64 %index76, 32        ; 2 uses
  %i.jd = icmp eq i64 %index.next85, %n.vec74
  br i1 %i.jd, label %middle.block86, label %vector.body75, !llvm.loop !342

middle.block86:                                   ; preds = %vector.body75
  br i1 %cmp.n87, label %..loopexit251_crit_edge.us.i, label %vec.epilog.iter.check91

vec.epilog.iter.check91:                          ; preds = %middle.block86
  br i1 %min.epilog.iters.check92, label %vec.epilog.scalar.ph90.preheader, label %vec.epilog.ph93, !prof !192

vec.epilog.ph93:                                  ; preds = %vector.main.loop.iter.check71, %vec.epilog.iter.check91
  %vec.epilog.resume.val88 = phi i64 [ %n.vec74, %vec.epilog.iter.check91 ], [ 0, %vector.main.loop.iter.check71 ]
  br label %vec.epilog.vector.body95

vec.epilog.vector.body95:                         ; preds = %vec.epilog.vector.body95, %vec.epilog.ph93
  %index96 = phi i64 [ %vec.epilog.resume.val88, %vec.epilog.ph93 ], [ %index.next99, %vec.epilog.vector.body95 ] ; 2 uses
  %i.je = add i64 %index96, %i.cr                 ; 2 uses
  %i.jf = getelementptr [4 x i8], ptr %invariant.gep395.i, i64 %i.je
  %wide.load97 = load <8 x float>, ptr %i.jf, align 4, !tbaa !134, !alias.scope !365
  %i.jg = getelementptr [4 x i8], ptr %invariant.gep397.i, i64 %i.je ; 2 uses
  %wide.load98 = load <8 x float>, ptr %i.jg, align 4, !tbaa !134, !alias.scope !366, !noalias !365
  %i.jh = fadd <8 x float> %wide.load97, %wide.load98
  store <8 x float> %i.jh, ptr %i.jg, align 4, !tbaa !134, !alias.scope !366, !noalias !365
  %index.next99 = add nuw i64 %index96, 8         ; 2 uses
  %i.ji = icmp eq i64 %index.next99, %n.vec94
  br i1 %i.ji, label %vec.epilog.middle.block100, label %vec.epilog.vector.body95, !llvm.loop !343

vec.epilog.middle.block100:                       ; preds = %vec.epilog.vector.body95
  br i1 %cmp.n101, label %..loopexit251_crit_edge.us.i, label %vec.epilog.scalar.ph90.preheader

vec.epilog.scalar.ph90.preheader:                 ; preds = %iter.check89, %vector.memcheck55, %vec.epilog.iter.check91, %vec.epilog.middle.block100
  %indvars.iv341.i.ph = phi i64 [ %i.cr, %iter.check89 ], [ %i.cr, %vector.memcheck55 ], [ %i.hr, %vec.epilog.iter.check91 ], [ %i.hs, %vec.epilog.middle.block100 ] ; 4 uses
  %i.jj = sub i64 %smin69, %indvars.iv341.i.ph
  %xtraiter154 = and i64 %i.jj, 7                 ; 2 uses
  %lcmp.mod155.not = icmp eq i64 %xtraiter154, 0
  br i1 %lcmp.mod155.not, label %vec.epilog.scalar.ph90.prol.loopexit, label %vec.epilog.scalar.ph90.prol

vec.epilog.scalar.ph90.prol:                      ; preds = %vec.epilog.scalar.ph90.preheader, %vec.epilog.scalar.ph90.prol
  %indvars.iv341.i.prol = phi i64 [ %indvars.iv.next342.i.prol, %vec.epilog.scalar.ph90.prol ], [ %indvars.iv341.i.ph, %vec.epilog.scalar.ph90.preheader ] ; 3 uses
  %prol.iter156 = phi i64 [ %prol.iter156.next, %vec.epilog.scalar.ph90.prol ], [ 0, %vec.epilog.scalar.ph90.preheader ]
  %gep396.i.prol = getelementptr [4 x i8], ptr %invariant.gep395.i, i64 %indvars.iv341.i.prol
  %i.jk = load float, ptr %gep396.i.prol, align 4, !tbaa !134
  %gep398.i.prol = getelementptr [4 x i8], ptr %invariant.gep397.i, i64 %indvars.iv341.i.prol ; 2 uses
  %i.jl = load float, ptr %gep398.i.prol, align 4, !tbaa !134
  %i.jm = fadd float %i.jk, %i.jl
  store float %i.jm, ptr %gep398.i.prol, align 4, !tbaa !134
  %indvars.iv.next342.i.prol = add nsw i64 %indvars.iv341.i.prol, 1 ; 2 uses
  %prol.iter156.next = add i64 %prol.iter156, 1   ; 2 uses
  %prol.iter156.cmp.not = icmp eq i64 %prol.iter156.next, %xtraiter154
  br i1 %prol.iter156.cmp.not, label %vec.epilog.scalar.ph90.prol.loopexit, label %vec.epilog.scalar.ph90.prol, !llvm.loop !344

vec.epilog.scalar.ph90.prol.loopexit:             ; preds = %vec.epilog.scalar.ph90.prol, %vec.epilog.scalar.ph90.preheader
  %indvars.iv341.i.unr = phi i64 [ %indvars.iv341.i.ph, %vec.epilog.scalar.ph90.preheader ], [ %indvars.iv.next342.i.prol, %vec.epilog.scalar.ph90.prol ]
  %i.jn = sub i64 %indvars.iv341.i.ph, %smin69
  %i.jo = icmp ugt i64 %i.jn, -8
  br i1 %i.jo, label %..loopexit251_crit_edge.us.i, label %vec.epilog.scalar.ph90

vec.epilog.scalar.ph90:                           ; preds = %vec.epilog.scalar.ph90.prol.loopexit, %vec.epilog.scalar.ph90
  %indvars.iv341.i = phi i64 [ %indvars.iv.next342.i.7, %vec.epilog.scalar.ph90 ], [ %indvars.iv341.i.unr, %vec.epilog.scalar.ph90.prol.loopexit ] ; 10 uses
  %gep396.i = getelementptr [4 x i8], ptr %invariant.gep395.i, i64 %indvars.iv341.i
  %i.jp = load float, ptr %gep396.i, align 4, !tbaa !134
  %gep398.i = getelementptr [4 x i8], ptr %invariant.gep397.i, i64 %indvars.iv341.i ; 2 uses
  %i.jq = load float, ptr %gep398.i, align 4, !tbaa !134
  %i.jr = fadd float %i.jp, %i.jq
  store float %i.jr, ptr %gep398.i, align 4, !tbaa !134
  %indvars.iv.next342.i = add nsw i64 %indvars.iv341.i, 1 ; 2 uses
  %gep396.i.1 = getelementptr [4 x i8], ptr %invariant.gep395.i, i64 %indvars.iv.next342.i
  %i.js = load float, ptr %gep396.i.1, align 4, !tbaa !134
  %gep398.i.1 = getelementptr [4 x i8], ptr %invariant.gep397.i, i64 %indvars.iv.next342.i ; 2 uses
  %i.jt = load float, ptr %gep398.i.1, align 4, !tbaa !134
  %i.ju = fadd float %i.js, %i.jt
  store float %i.ju, ptr %gep398.i.1, align 4, !tbaa !134
  %indvars.iv.next342.i.1 = add nsw i64 %indvars.iv341.i, 2 ; 2 uses
  %gep396.i.2 = getelementptr [4 x i8], ptr %invariant.gep395.i, i64 %indvars.iv.next342.i.1
  %i.jv = load float, ptr %gep396.i.2, align 4, !tbaa !134
  %gep398.i.2 = getelementptr [4 x i8], ptr %invariant.gep397.i, i64 %indvars.iv.next342.i.1 ; 2 uses
  %i.jw = load float, ptr %gep398.i.2, align 4, !tbaa !134
  %i.jx = fadd float %i.jv, %i.jw
  store float %i.jx, ptr %gep398.i.2, align 4, !tbaa !134
  %indvars.iv.next342.i.2 = add nsw i64 %indvars.iv341.i, 3 ; 2 uses
  %gep396.i.3 = getelementptr [4 x i8], ptr %invariant.gep395.i, i64 %indvars.iv.next342.i.2
  %i.jy = load float, ptr %gep396.i.3, align 4, !tbaa !134
  %gep398.i.3 = getelementptr [4 x i8], ptr %invariant.gep397.i, i64 %indvars.iv.next342.i.2 ; 2 uses
  %i.jz = load float, ptr %gep398.i.3, align 4, !tbaa !134
  %i.ka = fadd float %i.jy, %i.jz
  store float %i.ka, ptr %gep398.i.3, align 4, !tbaa !134
  %indvars.iv.next342.i.3 = add nsw i64 %indvars.iv341.i, 4 ; 2 uses
  %gep396.i.4 = getelementptr [4 x i8], ptr %invariant.gep395.i, i64 %indvars.iv.next342.i.3
  %i.kb = load float, ptr %gep396.i.4, align 4, !tbaa !134
  %gep398.i.4 = getelementptr [4 x i8], ptr %invariant.gep397.i, i64 %indvars.iv.next342.i.3 ; 2 uses
  %i.kc = load float, ptr %gep398.i.4, align 4, !tbaa !134
  %i.kd = fadd float %i.kb, %i.kc
  store float %i.kd, ptr %gep398.i.4, align 4, !tbaa !134
  %indvars.iv.next342.i.4 = add nsw i64 %indvars.iv341.i, 5 ; 2 uses
  %gep396.i.5 = getelementptr [4 x i8], ptr %invariant.gep395.i, i64 %indvars.iv.next342.i.4
  %i.ke = load float, ptr %gep396.i.5, align 4, !tbaa !134
  %gep398.i.5 = getelementptr [4 x i8], ptr %invariant.gep397.i, i64 %indvars.iv.next342.i.4 ; 2 uses
  %i.kf = load float, ptr %gep398.i.5, align 4, !tbaa !134
  %i.kg = fadd float %i.ke, %i.kf
  store float %i.kg, ptr %gep398.i.5, align 4, !tbaa !134
  %indvars.iv.next342.i.5 = add nsw i64 %indvars.iv341.i, 6 ; 2 uses
  %gep396.i.6 = getelementptr [4 x i8], ptr %invariant.gep395.i, i64 %indvars.iv.next342.i.5
  %i.kh = load float, ptr %gep396.i.6, align 4, !tbaa !134
  %gep398.i.6 = getelementptr [4 x i8], ptr %invariant.gep397.i, i64 %indvars.iv.next342.i.5 ; 2 uses
  %i.ki = load float, ptr %gep398.i.6, align 4, !tbaa !134
  %i.kj = fadd float %i.kh, %i.ki
  store float %i.kj, ptr %gep398.i.6, align 4, !tbaa !134
  %indvars.iv.next342.i.6 = add nsw i64 %indvars.iv341.i, 7 ; 2 uses
  %gep396.i.7 = getelementptr [4 x i8], ptr %invariant.gep395.i, i64 %indvars.iv.next342.i.6
  %i.kk = load float, ptr %gep396.i.7, align 4, !tbaa !134
  %gep398.i.7 = getelementptr [4 x i8], ptr %invariant.gep397.i, i64 %indvars.iv.next342.i.6 ; 2 uses
  %i.kl = load float, ptr %gep398.i.7, align 4, !tbaa !134
  %i.km = fadd float %i.kk, %i.kl
  store float %i.km, ptr %gep398.i.7, align 4, !tbaa !134
  %indvars.iv.next342.i.7 = add nsw i64 %indvars.iv341.i, 8 ; 2 uses
  %exitcond345.not.i.7 = icmp eq i64 %indvars.iv.next342.i.7, %wide.trip.count344.i
  br i1 %exitcond345.not.i.7, label %..loopexit251_crit_edge.us.i, label %vec.epilog.scalar.ph90, !llvm.loop !345

..loopexit251_crit_edge.us.i:                     ; preds = %vec.epilog.scalar.ph90.prol.loopexit, %vec.epilog.scalar.ph90, %vec.epilog.middle.block100, %middle.block86
  %indvars.iv.next347.i = add nsw i64 %indvars.iv346.i, 1 ; 2 uses
  %exitcond350.not.i = icmp eq i64 %indvars.iv.next347.i, %wide.trip.count349.i
  %indvar.next64 = add i32 %indvar63, 1
  br i1 %exitcond350.not.i, label %._crit_edge270.split.us.i, label %iter.check89, !llvm.loop !346

._crit_edge270.split.us.i:                        ; preds = %..loopexit251_crit_edge.us.i
  %indvars.iv.next352.i = add nsw i64 %indvars.iv351.i, 1 ; 2 uses
  %exitcond355.not.i = icmp eq i64 %indvars.iv.next352.i, %wide.trip.count339.i
  %indvar.next57 = add i64 %indvar56, 1
  br i1 %exitcond355.not.i, label %.loopexit254.us.i, label %.preheader252.us285.i, !llvm.loop !347

.preheader252.lr.ph.split.split.us.us.i:          ; preds = %.preheader252.lr.ph.split.us.i
  br i1 %i.gu, label %.preheader252.us.us.preheader.i, label %.loopexit254.us.i

.preheader252.us.us.preheader.i:                  ; preds = %.preheader252.lr.ph.split.split.us.us.i
  %i.kn = sext i32 %.0216.us.i to i64             ; 3 uses
  %wide.trip.count362.i = sext i32 %.sroa.speculated.us.i to i64
  %i.ko = add i64 %i.cx, %.0.us.i41
  %i.kp = mul nsw i64 %i.cu, %i.kn
  %i.kq = add i64 %i.kp, %i.cs
  %i.kr = mul i64 %i.cy, %i.kq
  %i.ks = add i64 %i.ko, %i.kr
  %i.kt = mul i64 %i.cz, %i.kn
  %i.ku = add i64 %i.cx, %i.gc
  %i.kv = sext i32 %i.fr to i64
  %i.kw = shl nsw i64 %i.kv, 2
  %i.kx = mul i32 %i.ei, %i.ge
  %i.ky = add i32 %i.fc, %i.kx
  %i.kz = mul i32 %i.gg, %i.ky
  %i.la = zext i32 %i.kz to i64
  %i.lb = mul i32 %i.gg, %i.ge
  %i.lc = zext i32 %i.lb to i64
  %i.ld = zext i32 %i.gg to i64
  %i.le = sext i32 %i.fu to i64
  %smin44 = call i64 @llvm.smin.i64(i64 %smin, i64 %i.le) ; 3 uses
  %i.lf = sub i64 %smin44, %i.cr                  ; 7 uses
  %min.iters.check = icmp ult i64 %i.lf, 8
  %invariant.op160 = add i64 %i.ks, %i.kw
  %min.iters.check45 = icmp ult i64 %i.lf, 32
  %i.lg = and i64 %i.lf, 24
  %n.vec = and i64 %i.lf, -32                     ; 4 uses
  %i.lh = add i64 %n.vec, %i.cr
  %cmp.n = icmp eq i64 %i.lf, %n.vec
  %min.epilog.iters.check = icmp eq i64 %i.lg, 0
  %n.vec49 = and i64 %i.lf, -8                    ; 3 uses
  %i.li = add i64 %n.vec49, %i.cr
  %cmp.n53 = icmp eq i64 %i.lf, %n.vec49
  br label %.preheader252.us.us.i

.preheader252.us.us.i:                            ; preds = %._crit_edge270.split.us.us.us.i, %.preheader252.us.us.preheader.i
  %indvar = phi i64 [ %indvar.next, %._crit_edge270.split.us.us.us.i ], [ 0, %.preheader252.us.us.preheader.i ] ; 3 uses
  %indvars.iv369.i = phi i64 [ %indvars.iv.next370.i, %._crit_edge270.split.us.us.us.i ], [ %i.cu, %.preheader252.us.us.preheader.i ] ; 3 uses
  %i.lj = mul i64 %i.kt, %indvar
  %i.lk = mul i64 %indvar, %i.lc
  %i.ll = add i64 %i.lk, %i.la
  %i.lm = mul nsw i64 %indvars.iv369.i, %i.kn
  %i.ln = trunc i64 %indvars.iv369.i to i32
  %i.lo = sub i32 %i.ln, %i.ed
  %i.lp = mul i32 %i.lo, %i.ge
  %i.lq = sub i32 %i.lp, %i.et
  %invariant.op.reass = add i64 %i.lj, %invariant.op160
  br label %iter.check

iter.check:                                       ; preds = %..loopexit_crit_edge.us.us.us.i, %.preheader252.us.us.i
  %indvar42 = phi i64 [ %indvar.next43, %..loopexit_crit_edge.us.us.us.i ], [ 0, %.preheader252.us.us.i ] ; 3 uses
  %indvars.iv364.i = phi i64 [ %indvars.iv.next365.i, %..loopexit_crit_edge.us.us.us.i ], [ %i.cs, %.preheader252.us.us.i ] ; 3 uses
  %i.lr = add nsw i64 %indvars.iv364.i, %i.lm
  %i.ls = mul nsw i64 %i.lr, %i.cw
  %i.lt = trunc nsw i64 %indvars.iv364.i to i32
  %i.lu = add i32 %i.lq, %i.lt
  %i.lv = mul nsw i32 %i.lu, %i.gg
  %i.lw = sub nsw i32 %i.lv, %i.fr
  %i.lx = sext i32 %i.lw to i64
  %invariant.gep399.i = getelementptr [4 x i8], ptr %i.gb, i64 %i.lx ; 11 uses
  %invariant.gep401.i = getelementptr [4 x i8], ptr %.0.us.i, i64 %i.ls ; 11 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ly = mul i64 %i.da, %indvar42
  %i.lz = mul i64 %indvar42, %i.ld
  %i.ma = add i64 %i.ll, %i.lz
  %sext = shl i64 %i.ma, 32
  %i.mb = ashr exact i64 %sext, 30
  %i.mc = add i64 %i.ku, %i.mb
  %.reass = add i64 %i.ly, %invariant.op.reass
  %i.md = sub i64 %i.mc, %.reass
  %diff.check = icmp ugt i64 %i.md, -128
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check45, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.me = add i64 %index, %i.cr                   ; 2 uses
  %i.mf = getelementptr [4 x i8], ptr %invariant.gep399.i, i64 %i.me ; 4 uses
  %i.mg = getelementptr i8, ptr %i.mf, i64 32
  %i.mh = getelementptr i8, ptr %i.mf, i64 64
  %i.mi = getelementptr i8, ptr %i.mf, i64 96
  %wide.load = load <8 x float>, ptr %i.mf, align 4, !tbaa !134
  %wide.load46 = load <8 x float>, ptr %i.mg, align 4, !tbaa !134
  %wide.load47 = load <8 x float>, ptr %i.mh, align 4, !tbaa !134
  %wide.load48 = load <8 x float>, ptr %i.mi, align 4, !tbaa !134
  %i.mj = getelementptr [4 x i8], ptr %invariant.gep401.i, i64 %i.me ; 4 uses
  %i.mk = getelementptr i8, ptr %i.mj, i64 32
  %i.ml = getelementptr i8, ptr %i.mj, i64 64
  %i.mm = getelementptr i8, ptr %i.mj, i64 96
  store <8 x float> %wide.load, ptr %i.mj, align 4, !tbaa !134
  store <8 x float> %wide.load46, ptr %i.mk, align 4, !tbaa !134
  store <8 x float> %wide.load47, ptr %i.ml, align 4, !tbaa !134
  store <8 x float> %wide.load48, ptr %i.mm, align 4, !tbaa !134
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.mn = icmp eq i64 %index.next, %n.vec
  br i1 %i.mn, label %middle.block, label %vector.body, !llvm.loop !348

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..loopexit_crit_edge.us.us.us.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !192

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index50 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next52, %vec.epilog.vector.body ] ; 2 uses
  %i.mo = add i64 %index50, %i.cr                 ; 2 uses
  %i.mp = getelementptr [4 x i8], ptr %invariant.gep399.i, i64 %i.mo
  %wide.load51 = load <8 x float>, ptr %i.mp, align 4, !tbaa !134
  %i.mq = getelementptr [4 x i8], ptr %invariant.gep401.i, i64 %i.mo
  store <8 x float> %wide.load51, ptr %i.mq, align 4, !tbaa !134
  %index.next52 = add nuw i64 %index50, 8         ; 2 uses
  %i.mr = icmp eq i64 %index.next52, %n.vec49
  br i1 %i.mr, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !349

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n53, label %..loopexit_crit_edge.us.us.us.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv359.i.ph = phi i64 [ %i.cr, %iter.check ], [ %i.cr, %vector.memcheck ], [ %i.lh, %vec.epilog.iter.check ], [ %i.li, %vec.epilog.middle.block ] ; 4 uses
  %i.ms = sub i64 %smin44, %indvars.iv359.i.ph
  %xtraiter157 = and i64 %i.ms, 7                 ; 2 uses
  %lcmp.mod158.not = icmp eq i64 %xtraiter157, 0
  br i1 %lcmp.mod158.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv359.i.prol = phi i64 [ %indvars.iv.next360.i.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv359.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter159 = phi i64 [ %prol.iter159.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %gep400.i.prol = getelementptr [4 x i8], ptr %invariant.gep399.i, i64 %indvars.iv359.i.prol
  %i.mt = load float, ptr %gep400.i.prol, align 4, !tbaa !134
  %gep402.i.prol = getelementptr [4 x i8], ptr %invariant.gep401.i, i64 %indvars.iv359.i.prol
  store float %i.mt, ptr %gep402.i.prol, align 4, !tbaa !134
  %indvars.iv.next360.i.prol = add nsw i64 %indvars.iv359.i.prol, 1 ; 2 uses
  %prol.iter159.next = add i64 %prol.iter159, 1   ; 2 uses
  %prol.iter159.cmp.not = icmp eq i64 %prol.iter159.next, %xtraiter157
  br i1 %prol.iter159.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !350

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv359.i.unr = phi i64 [ %indvars.iv359.i.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next360.i.prol, %vec.epilog.scalar.ph.prol ]
  %i.mu = sub i64 %indvars.iv359.i.ph, %smin44
  %i.mv = icmp ugt i64 %i.mu, -8
  br i1 %i.mv, label %..loopexit_crit_edge.us.us.us.i, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv359.i = phi i64 [ %indvars.iv.next360.i.7, %vec.epilog.scalar.ph ], [ %indvars.iv359.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 10 uses
  %gep400.i = getelementptr [4 x i8], ptr %invariant.gep399.i, i64 %indvars.iv359.i
  %i.mw = load float, ptr %gep400.i, align 4, !tbaa !134
  %gep402.i = getelementptr [4 x i8], ptr %invariant.gep401.i, i64 %indvars.iv359.i
  store float %i.mw, ptr %gep402.i, align 4, !tbaa !134
  %indvars.iv.next360.i = add nsw i64 %indvars.iv359.i, 1 ; 2 uses
  %gep400.i.1 = getelementptr [4 x i8], ptr %invariant.gep399.i, i64 %indvars.iv.next360.i
  %i.mx = load float, ptr %gep400.i.1, align 4, !tbaa !134
  %gep402.i.1 = getelementptr [4 x i8], ptr %invariant.gep401.i, i64 %indvars.iv.next360.i
  store float %i.mx, ptr %gep402.i.1, align 4, !tbaa !134
  %indvars.iv.next360.i.1 = add nsw i64 %indvars.iv359.i, 2 ; 2 uses
  %gep400.i.2 = getelementptr [4 x i8], ptr %invariant.gep399.i, i64 %indvars.iv.next360.i.1
  %i.my = load float, ptr %gep400.i.2, align 4, !tbaa !134
  %gep402.i.2 = getelementptr [4 x i8], ptr %invariant.gep401.i, i64 %indvars.iv.next360.i.1
  store float %i.my, ptr %gep402.i.2, align 4, !tbaa !134
  %indvars.iv.next360.i.2 = add nsw i64 %indvars.iv359.i, 3 ; 2 uses
  %gep400.i.3 = getelementptr [4 x i8], ptr %invariant.gep399.i, i64 %indvars.iv.next360.i.2
  %i.mz = load float, ptr %gep400.i.3, align 4, !tbaa !134
  %gep402.i.3 = getelementptr [4 x i8], ptr %invariant.gep401.i, i64 %indvars.iv.next360.i.2
  store float %i.mz, ptr %gep402.i.3, align 4, !tbaa !134
  %indvars.iv.next360.i.3 = add nsw i64 %indvars.iv359.i, 4 ; 2 uses
  %gep400.i.4 = getelementptr [4 x i8], ptr %invariant.gep399.i, i64 %indvars.iv.next360.i.3
  %i.na = load float, ptr %gep400.i.4, align 4, !tbaa !134
  %gep402.i.4 = getelementptr [4 x i8], ptr %invariant.gep401.i, i64 %indvars.iv.next360.i.3
  store float %i.na, ptr %gep402.i.4, align 4, !tbaa !134
  %indvars.iv.next360.i.4 = add nsw i64 %indvars.iv359.i, 5 ; 2 uses
  %gep400.i.5 = getelementptr [4 x i8], ptr %invariant.gep399.i, i64 %indvars.iv.next360.i.4
  %i.nb = load float, ptr %gep400.i.5, align 4, !tbaa !134
  %gep402.i.5 = getelementptr [4 x i8], ptr %invariant.gep401.i, i64 %indvars.iv.next360.i.4
  store float %i.nb, ptr %gep402.i.5, align 4, !tbaa !134
  %indvars.iv.next360.i.5 = add nsw i64 %indvars.iv359.i, 6 ; 2 uses
  %gep400.i.6 = getelementptr [4 x i8], ptr %invariant.gep399.i, i64 %indvars.iv.next360.i.5
  %i.nc = load float, ptr %gep400.i.6, align 4, !tbaa !134
  %gep402.i.6 = getelementptr [4 x i8], ptr %invariant.gep401.i, i64 %indvars.iv.next360.i.5
  store float %i.nc, ptr %gep402.i.6, align 4, !tbaa !134
  %indvars.iv.next360.i.6 = add nsw i64 %indvars.iv359.i, 7 ; 2 uses
  %gep400.i.7 = getelementptr [4 x i8], ptr %invariant.gep399.i, i64 %indvars.iv.next360.i.6
  %i.nd = load float, ptr %gep400.i.7, align 4, !tbaa !134
  %gep402.i.7 = getelementptr [4 x i8], ptr %invariant.gep401.i, i64 %indvars.iv.next360.i.6
  store float %i.nd, ptr %gep402.i.7, align 4, !tbaa !134
  %indvars.iv.next360.i.7 = add nsw i64 %indvars.iv359.i, 8 ; 2 uses
  %exitcond363.not.i.7 = icmp eq i64 %indvars.iv.next360.i.7, %wide.trip.count362.i
  br i1 %exitcond363.not.i.7, label %..loopexit_crit_edge.us.us.us.i, label %vec.epilog.scalar.ph, !llvm.loop !351

..loopexit_crit_edge.us.us.us.i:                  ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next365.i = add nsw i64 %indvars.iv364.i, 1 ; 2 uses
  %exitcond368.not.i = icmp eq i64 %indvars.iv.next365.i, %wide.trip.count349.i
  %indvar.next43 = add i64 %indvar42, 1
  br i1 %exitcond368.not.i, label %._crit_edge270.split.us.us.us.i, label %iter.check, !llvm.loop !346

._crit_edge270.split.us.us.us.i:                  ; preds = %..loopexit_crit_edge.us.us.us.i
  %indvars.iv.next370.i = add nsw i64 %indvars.iv369.i, 1 ; 2 uses
  %exitcond373.not.i = icmp eq i64 %indvars.iv.next370.i, %wide.trip.count339.i
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond373.not.i, label %.loopexit254.us.i, label %.preheader252.us.us.i, !llvm.loop !347

.loopexit254.us.i:                                ; preds = %._crit_edge270.split.us.i, %._crit_edge270.split.us.us.us.i, %.preheader252.lr.ph.split.split.us.us.i, %.preheader252.lr.ph.split.split.us284.i, %.preheader252.lr.ph.us.i, %bb.o, %.lr.ph280.split.us.i
  %.4199.us.i = phi i1 [ %.2197276.us.i, %.lr.ph280.split.us.i ], [ %.3198.us.i, %.preheader252.lr.ph.us.i ], [ %.3198.us.i, %.preheader252.lr.ph.split.split.us284.i ], [ %.3198.us.i, %bb.o ], [ %.3198.us.i, %._crit_edge270.split.us.us.us.i ], [ %.3198.us.i, %.preheader252.lr.ph.split.split.us.us.i ], [ %.3198.us.i, %._crit_edge270.split.us.i ] ; 2 uses
  %.4194.us.i = phi i1 [ %.2192277.us.i, %.lr.ph280.split.us.i ], [ %.3193.us.i, %.preheader252.lr.ph.us.i ], [ %.3193.us.i, %.preheader252.lr.ph.split.split.us284.i ], [ %.3193.us.i, %bb.o ], [ %.3193.us.i, %._crit_edge270.split.us.us.us.i ], [ %.3193.us.i, %.preheader252.lr.ph.split.split.us.us.i ], [ %.3193.us.i, %._crit_edge270.split.us.i ] ; 2 uses
  %.4.us.i = phi i1 [ %.2278.us.i, %.lr.ph280.split.us.i ], [ %.3.us.i, %.preheader252.lr.ph.us.i ], [ %.3.us.i, %.preheader252.lr.ph.split.split.us284.i ], [ %.3.us.i, %bb.o ], [ %.3.us.i, %._crit_edge270.split.us.us.us.i ], [ %.3.us.i, %.preheader252.lr.ph.split.split.us.us.i ], [ %.3.us.i, %._crit_edge270.split.us.i ] ; 2 uses
  %i.ne = add nsw i32 %.0206275.us.i, -1
  %.not224.us.not.i = icmp sgt i32 %.0206275.us.i, %i.cq
  br i1 %.not224.us.not.i, label %.lr.ph280.split.us.i, label %._crit_edge281.i, !llvm.loop !352

.lr.ph280.split.i:                                ; preds = %.lr.ph280.split.i.preheader, %.loopexit256.i
  %.0206275.i = phi i32 [ %i.rl, %.loopexit256.i ], [ 0, %.lr.ph280.split.i.preheader ] ; 4 uses
  %i.nf = add nsw i32 %.0206275.i, %i.bx          ; 2 uses
  %i.ng = icmp slt i32 %i.nf, 0                   ; 2 uses
  %i.nh = select i1 %i.ng, i32 %i.bz, i32 0
  %.0203.i = add nsw i32 %i.nh, %i.nf             ; 2 uses
  %i.ni = sext i32 %.0203.i to i64
  %i.nj = getelementptr inbounds nuw [72 x i8], ptr %i.am, i64 %i.ni ; 2 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 32
  %i.nl = load i32, ptr %i.nk, align 8, !tbaa !105 ; 2 uses
  %i.nm = select i1 %i.ng, i32 %i.ai, i32 0       ; 2 uses
  %i.nn = sub i32 %i.nl, %i.nm                    ; 2 uses
  %i.no = getelementptr inbounds nuw i8, ptr %i.nj, i64 20
  %i.np = load i32, ptr %i.no, align 4, !tbaa !105
  %i.nq = add i32 %i.nn, %i.np                    ; 2 uses
  %.sroa.speculated.i = call i32 @llvm.smin.i32(i32 %.sroa.speculated239.2.i, i32 %i.nq) ; 2 uses
  %i.nr = or i32 %.0206275.i, %i.ex
  %or.cond3.i = icmp eq i32 %i.nr, 0
  br i1 %or.cond3.i, label %.loopexit256.i, label %.preheader255.i

.preheader255.i:                                  ; preds = %.lr.ph280.split.i
  %i.ns = add nsw i32 %.0203.i, %i.ez
  %i.nt = sext i32 %i.ns to i64
  %i.nu = getelementptr inbounds nuw [72 x i8], ptr %i.am, i64 %i.nt ; 3 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nu, i64 56
  %i.nw = load ptr, ptr %i.nv, align 8, !tbaa !194
  %i.nx = load ptr, ptr %i.nw, align 8, !tbaa !195 ; 3 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nu, i64 44
  %i.nz = load i32, ptr %i.ny, align 4, !tbaa !105 ; 3 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nu, i64 48
  %i.ob = load i32, ptr %i.oa, align 8, !tbaa !105 ; 4 uses
  %i.oc = icmp sge i32 %i.br, %.sroa.speculated.i
  %or.cond.i = select i1 %i.ff, i1 true, i1 %i.oc
  br i1 %or.cond.i, label %.loopexit256.i, label %.preheader253.preheader.i

.preheader253.preheader.i:                        ; preds = %.preheader255.i
  %wide.trip.count.i = sext i32 %.sroa.speculated.i to i64 ; 3 uses
  %i.od = add i64 %i.dp, %wide.trip.count.i
  %i.oe = shl i64 %i.od, 2
  %scevgep108 = getelementptr i8, ptr %i.nx, i64 %i.dk
  %i.of = mul i32 %i.ei, %i.nz
  %i.og = add i32 %i.fb, %i.of
  %i.oh = mul i32 %i.ob, %i.og
  %i.oi = add i32 %i.nm, %i.oh
  %i.oj = sub i32 %i.oi, %i.nl
  %i.ok = mul i32 %i.ob, %i.nz
  %i.ol = sext i32 %i.nq to i64
  %smin118 = call i64 @llvm.smin.i64(i64 %smin117, i64 %i.ol) ; 3 uses
  %i.om = sub i64 %smin118, %i.cr                 ; 7 uses
  %i.on = getelementptr i8, ptr %i.fi, i64 %i.oe
  %min.iters.check119 = icmp ult i64 %i.om, 8
  %min.iters.check121 = icmp ult i64 %i.om, 32
  %i.oo = and i64 %i.om, 24
  %n.vec123 = and i64 %i.om, -32                  ; 4 uses
  %i.op = add i64 %n.vec123, %i.cr
  %cmp.n136 = icmp eq i64 %i.om, %n.vec123
  %min.epilog.iters.check141 = icmp eq i64 %i.oo, 0
  %n.vec143 = and i64 %i.om, -8                   ; 3 uses
  %i.oq = add i64 %n.vec143, %i.cr
  %cmp.n150 = icmp eq i64 %i.om, %n.vec143
  br label %.preheader253.i

.preheader253.i:                                  ; preds = %._crit_edge261.i, %.preheader253.preheader.i
  %indvar104 = phi i64 [ %indvar.next105, %._crit_edge261.i ], [ 0, %.preheader253.preheader.i ] ; 3 uses
  %indvars.iv336.i = phi i64 [ %indvars.iv.next337.i, %._crit_edge261.i ], [ %i.cu, %.preheader253.preheader.i ] ; 3 uses
  %i.or = mul i64 %i.dm, %indvar104               ; 2 uses
  %scevgep106 = getelementptr i8, ptr %i.dr, i64 %i.or
  %scevgep107 = getelementptr i8, ptr %i.on, i64 %i.or
  %i.os = trunc i64 %indvar104 to i32
  %i.ot = mul i32 %i.ok, %i.os
  %i.ou = add i32 %i.ot, %i.oj
  %i.ov = mul nsw i64 %indvars.iv336.i, %i.cv
  %i.ow = trunc i64 %indvars.iv336.i to i32
  %i.ox = sub i32 %i.ow, %i.ed
  %i.oy = mul i32 %i.ox, %i.nz
  %i.oz = sub i32 %i.oy, %i.et
  br label %iter.check138

iter.check138:                                    ; preds = %._crit_edge.i, %.preheader253.i
  %indvar109 = phi i32 [ %indvar.next110, %._crit_edge.i ], [ 0, %.preheader253.i ] ; 2 uses
  %indvars.iv331.i = phi i64 [ %indvars.iv.next332.i, %._crit_edge.i ], [ %i.cs, %.preheader253.i ] ; 3 uses
  %i.pa = add nsw i64 %indvars.iv331.i, %i.ov
  %i.pb = mul nsw i64 %i.pa, %i.ct
  %i.pc = trunc nsw i64 %indvars.iv331.i to i32
  %i.pd = add i32 %i.oz, %i.pc
  %i.pe = mul nsw i32 %i.pd, %i.ob
  %i.pf = sub i32 %i.pe, %i.nn
  %i.pg = sext i32 %i.pf to i64
  %invariant.gep.i = getelementptr [4 x i8], ptr %i.nx, i64 %i.pg ; 11 uses
  %invariant.gep393.i = getelementptr [4 x i8], ptr %i.ac, i64 %i.pb ; 11 uses
  br i1 %min.iters.check119, label %vec.epilog.scalar.ph139.preheader, label %vector.memcheck103

vector.memcheck103:                               ; preds = %iter.check138
  %i.ph = mul i32 %i.ob, %indvar109
  %i.pi = add i32 %i.ou, %i.ph
  %i.pj = sext i32 %i.pi to i64                   ; 2 uses
  %i.pk = add nsw i64 %wide.trip.count.i, %i.pj
  %i.pl = shl nsw i64 %i.pk, 2
  %scevgep112 = getelementptr i8, ptr %i.nx, i64 %i.pl
  %i.pm = shl nsw i64 %i.pj, 2
  %scevgep111 = getelementptr i8, ptr %scevgep108, i64 %i.pm
  %bound0113 = icmp ult ptr %scevgep106, %scevgep112
  %bound1114 = icmp ult ptr %scevgep111, %scevgep107
  %found.conflict115 = and i1 %bound0113, %bound1114
  %i.pn = or i1 %found.conflict115, %stride.check116
  br i1 %i.pn, label %vec.epilog.scalar.ph139.preheader, label %vector.main.loop.iter.check120

vector.main.loop.iter.check120:                   ; preds = %vector.memcheck103
  br i1 %min.iters.check121, label %vec.epilog.ph142, label %vector.body124

vector.body124:                                   ; preds = %vector.main.loop.iter.check120, %vector.body124
  %index125 = phi i64 [ %index.next134, %vector.body124 ], [ 0, %vector.main.loop.iter.check120 ] ; 2 uses
  %i.po = add i64 %index125, %i.cr                ; 2 uses
  %i.pp = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.po ; 4 uses
  %i.pq = getelementptr i8, ptr %i.pp, i64 32
  %i.pr = getelementptr i8, ptr %i.pp, i64 64
  %i.ps = getelementptr i8, ptr %i.pp, i64 96
  %wide.load126 = load <8 x float>, ptr %i.pp, align 4, !tbaa !134, !alias.scope !367
  %wide.load127 = load <8 x float>, ptr %i.pq, align 4, !tbaa !134, !alias.scope !367
  %wide.load128 = load <8 x float>, ptr %i.pr, align 4, !tbaa !134, !alias.scope !367
  %wide.load129 = load <8 x float>, ptr %i.ps, align 4, !tbaa !134, !alias.scope !367
  %i.pt = getelementptr [4 x i8], ptr %invariant.gep393.i, i64 %i.po ; 5 uses
  %i.pu = getelementptr i8, ptr %i.pt, i64 32     ; 2 uses
  %i.pv = getelementptr i8, ptr %i.pt, i64 64     ; 2 uses
  %i.pw = getelementptr i8, ptr %i.pt, i64 96     ; 2 uses
  %wide.load130 = load <8 x float>, ptr %i.pt, align 4, !tbaa !134, !alias.scope !368, !noalias !367
  %wide.load131 = load <8 x float>, ptr %i.pu, align 4, !tbaa !134, !alias.scope !368, !noalias !367
  %wide.load132 = load <8 x float>, ptr %i.pv, align 4, !tbaa !134, !alias.scope !368, !noalias !367
  %wide.load133 = load <8 x float>, ptr %i.pw, align 4, !tbaa !134, !alias.scope !368, !noalias !367
  %i.px = fadd <8 x float> %wide.load126, %wide.load130
  %i.py = fadd <8 x float> %wide.load127, %wide.load131
  %i.pz = fadd <8 x float> %wide.load128, %wide.load132
  %i.qa = fadd <8 x float> %wide.load129, %wide.load133
  store <8 x float> %i.px, ptr %i.pt, align 4, !tbaa !134, !alias.scope !368, !noalias !367
  store <8 x float> %i.py, ptr %i.pu, align 4, !tbaa !134, !alias.scope !368, !noalias !367
  store <8 x float> %i.pz, ptr %i.pv, align 4, !tbaa !134, !alias.scope !368, !noalias !367
  store <8 x float> %i.qa, ptr %i.pw, align 4, !tbaa !134, !alias.scope !368, !noalias !367
  %index.next134 = add nuw i64 %index125, 32      ; 2 uses
  %i.qb = icmp eq i64 %index.next134, %n.vec123
  br i1 %i.qb, label %middle.block135, label %vector.body124, !llvm.loop !356

middle.block135:                                  ; preds = %vector.body124
  br i1 %cmp.n136, label %._crit_edge.i, label %vec.epilog.iter.check140

vec.epilog.iter.check140:                         ; preds = %middle.block135
  br i1 %min.epilog.iters.check141, label %vec.epilog.scalar.ph139.preheader, label %vec.epilog.ph142, !prof !192

vec.epilog.ph142:                                 ; preds = %vector.main.loop.iter.check120, %vec.epilog.iter.check140
  %vec.epilog.resume.val137 = phi i64 [ %n.vec123, %vec.epilog.iter.check140 ], [ 0, %vector.main.loop.iter.check120 ]
  br label %vec.epilog.vector.body144

vec.epilog.vector.body144:                        ; preds = %vec.epilog.vector.body144, %vec.epilog.ph142
  %index145 = phi i64 [ %vec.epilog.resume.val137, %vec.epilog.ph142 ], [ %index.next148, %vec.epilog.vector.body144 ] ; 2 uses
  %i.qc = add i64 %index145, %i.cr                ; 2 uses
  %i.qd = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.qc
  %wide.load146 = load <8 x float>, ptr %i.qd, align 4, !tbaa !134, !alias.scope !367
  %i.qe = getelementptr [4 x i8], ptr %invariant.gep393.i, i64 %i.qc ; 2 uses
  %wide.load147 = load <8 x float>, ptr %i.qe, align 4, !tbaa !134, !alias.scope !368, !noalias !367
  %i.qf = fadd <8 x float> %wide.load146, %wide.load147
  store <8 x float> %i.qf, ptr %i.qe, align 4, !tbaa !134, !alias.scope !368, !noalias !367
  %index.next148 = add nuw i64 %index145, 8       ; 2 uses
  %i.qg = icmp eq i64 %index.next148, %n.vec143
  br i1 %i.qg, label %vec.epilog.middle.block149, label %vec.epilog.vector.body144, !llvm.loop !357

vec.epilog.middle.block149:                       ; preds = %vec.epilog.vector.body144
  br i1 %cmp.n150, label %._crit_edge.i, label %vec.epilog.scalar.ph139.preheader

vec.epilog.scalar.ph139.preheader:                ; preds = %iter.check138, %vector.memcheck103, %vec.epilog.iter.check140, %vec.epilog.middle.block149
  %indvars.iv.i.ph = phi i64 [ %i.cr, %iter.check138 ], [ %i.cr, %vector.memcheck103 ], [ %i.op, %vec.epilog.iter.check140 ], [ %i.oq, %vec.epilog.middle.block149 ] ; 4 uses
  %i.qh = sub i64 %smin118, %indvars.iv.i.ph
  %xtraiter = and i64 %i.qh, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph139.prol.loopexit, label %vec.epilog.scalar.ph139.prol

vec.epilog.scalar.ph139.prol:                     ; preds = %vec.epilog.scalar.ph139.preheader, %vec.epilog.scalar.ph139.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %vec.epilog.scalar.ph139.prol ], [ %indvars.iv.i.ph, %vec.epilog.scalar.ph139.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph139.prol ], [ 0, %vec.epilog.scalar.ph139.preheader ]
  %gep.i.prol = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i.prol
  %i.qi = load float, ptr %gep.i.prol, align 4, !tbaa !134
  %gep394.i.prol = getelementptr [4 x i8], ptr %invariant.gep393.i, i64 %indvars.iv.i.prol ; 2 uses
  %i.qj = load float, ptr %gep394.i.prol, align 4, !tbaa !134
  %i.qk = fadd float %i.qi, %i.qj
  store float %i.qk, ptr %gep394.i.prol, align 4, !tbaa !134
  %indvars.iv.next.i.prol = add nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph139.prol.loopexit, label %vec.epilog.scalar.ph139.prol, !llvm.loop !358

vec.epilog.scalar.ph139.prol.loopexit:            ; preds = %vec.epilog.scalar.ph139.prol, %vec.epilog.scalar.ph139.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %vec.epilog.scalar.ph139.preheader ], [ %indvars.iv.next.i.prol, %vec.epilog.scalar.ph139.prol ]
  %i.ql = sub i64 %indvars.iv.i.ph, %smin118
  %i.qm = icmp ugt i64 %i.ql, -8
  br i1 %i.qm, label %._crit_edge.i, label %vec.epilog.scalar.ph139

vec.epilog.scalar.ph139:                          ; preds = %vec.epilog.scalar.ph139.prol.loopexit, %vec.epilog.scalar.ph139
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.7, %vec.epilog.scalar.ph139 ], [ %indvars.iv.i.unr, %vec.epilog.scalar.ph139.prol.loopexit ] ; 10 uses
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i
  %i.qn = load float, ptr %gep.i, align 4, !tbaa !134
  %gep394.i = getelementptr [4 x i8], ptr %invariant.gep393.i, i64 %indvars.iv.i ; 2 uses
  %i.qo = load float, ptr %gep394.i, align 4, !tbaa !134
  %i.qp = fadd float %i.qn, %i.qo
  store float %i.qp, ptr %gep394.i, align 4, !tbaa !134
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %gep.i.1 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i
  %i.qq = load float, ptr %gep.i.1, align 4, !tbaa !134
  %gep394.i.1 = getelementptr [4 x i8], ptr %invariant.gep393.i, i64 %indvars.iv.next.i ; 2 uses
  %i.qr = load float, ptr %gep394.i.1, align 4, !tbaa !134
  %i.qs = fadd float %i.qq, %i.qr
  store float %i.qs, ptr %gep394.i.1, align 4, !tbaa !134
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i, 2 ; 2 uses
  %gep.i.2 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i.1
  %i.qt = load float, ptr %gep.i.2, align 4, !tbaa !134
  %gep394.i.2 = getelementptr [4 x i8], ptr %invariant.gep393.i, i64 %indvars.iv.next.i.1 ; 2 uses
  %i.qu = load float, ptr %gep394.i.2, align 4, !tbaa !134
  %i.qv = fadd float %i.qt, %i.qu
  store float %i.qv, ptr %gep394.i.2, align 4, !tbaa !134
  %indvars.iv.next.i.2 = add nsw i64 %indvars.iv.i, 3 ; 2 uses
  %gep.i.3 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i.2
  %i.qw = load float, ptr %gep.i.3, align 4, !tbaa !134
  %gep394.i.3 = getelementptr [4 x i8], ptr %invariant.gep393.i, i64 %indvars.iv.next.i.2 ; 2 uses
  %i.qx = load float, ptr %gep394.i.3, align 4, !tbaa !134
  %i.qy = fadd float %i.qw, %i.qx
  store float %i.qy, ptr %gep394.i.3, align 4, !tbaa !134
  %indvars.iv.next.i.3 = add nsw i64 %indvars.iv.i, 4 ; 2 uses
  %gep.i.4 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i.3
  %i.qz = load float, ptr %gep.i.4, align 4, !tbaa !134
  %gep394.i.4 = getelementptr [4 x i8], ptr %invariant.gep393.i, i64 %indvars.iv.next.i.3 ; 2 uses
  %i.ra = load float, ptr %gep394.i.4, align 4, !tbaa !134
  %i.rb = fadd float %i.qz, %i.ra
  store float %i.rb, ptr %gep394.i.4, align 4, !tbaa !134
  %indvars.iv.next.i.4 = add nsw i64 %indvars.iv.i, 5 ; 2 uses
  %gep.i.5 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i.4
  %i.rc = load float, ptr %gep.i.5, align 4, !tbaa !134
  %gep394.i.5 = getelementptr [4 x i8], ptr %invariant.gep393.i, i64 %indvars.iv.next.i.4 ; 2 uses
  %i.rd = load float, ptr %gep394.i.5, align 4, !tbaa !134
  %i.re = fadd float %i.rc, %i.rd
  store float %i.re, ptr %gep394.i.5, align 4, !tbaa !134
  %indvars.iv.next.i.5 = add nsw i64 %indvars.iv.i, 6 ; 2 uses
  %gep.i.6 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i.5
  %i.rf = load float, ptr %gep.i.6, align 4, !tbaa !134
  %gep394.i.6 = getelementptr [4 x i8], ptr %invariant.gep393.i, i64 %indvars.iv.next.i.5 ; 2 uses
  %i.rg = load float, ptr %gep394.i.6, align 4, !tbaa !134
  %i.rh = fadd float %i.rf, %i.rg
  store float %i.rh, ptr %gep394.i.6, align 4, !tbaa !134
  %indvars.iv.next.i.6 = add nsw i64 %indvars.iv.i, 7 ; 2 uses
  %gep.i.7 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i.6
end_hunk_3
