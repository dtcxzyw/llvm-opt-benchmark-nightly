inline.NumInlined: 908
inline.NumDeleted: 473
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 16
begin_hunk_0
@.str.51 = private unnamed_addr constant [5 x i8] c"zend\00", align 1
@.str.52 = private unnamed_addr constant [4 x i8] c"rad\00", align 1
@.str.53 = private unnamed_addr constant [6 x i8] c"ndiff\00", align 1
@.str.54 = private unnamed_addr constant [8 x i8] c"maxwarn\00", align 1
@.str.55 = private unnamed_addr constant [7 x i8] c"pieces\00", align 1
@.str.56 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.57 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@__const._ZL9get_inputPKcPfS1_S1_S1_PiS2_S1_S2_S2_S2_Pb.yesno_names = private unnamed_addr constant [3 x ptr] [ptr @.str.56, ptr @.str.57, ptr null], align 16
@.str.58 = private unnamed_addr constant [10 x i8] c"asymmetry\00", align 1
@.str.59 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.60 = private unnamed_addr constant [53 x i8] c"Max number of warnings need to be a positive integer\00", align 1
@__PRETTY_FUNCTION__._ZN14WarningHandlerC2Ebi = private unnamed_addr constant [42 x i8] c"WarningHandler::WarningHandler(bool, int)\00", align 1
@.str.61 = private unnamed_addr constant [61 x i8] c"/opt-bench/work/gromacs/gromacs/src/gromacs/fileio/warninp.h\00", align 1
@_ZTIN3gmx22InconsistentInputErrorE = external constant ptr
@.str.62 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@_ZTIN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE, ptr @_ZTIN3gmx8internal14IExceptionInfoE }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE = linkonce_odr constant [71 x i8] c"N3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE\00", comdat, align 1
@_ZTIN3gmx8internal14IExceptionInfoE = external constant ptr
@_ZTVN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE = linkonce_odr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTIN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE, ptr @_ZN3gmx8internal14IExceptionInfoD2Ev, ptr @_ZN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEED0Ev] }, comdat, align 8
@_ZTVN3gmx22InconsistentInputErrorE = external constant { [6 x ptr] }, align 8
@_ZTVN3gmx16GromacsExceptionE = external constant { [6 x ptr] }, align 8
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@.str.63 = private unnamed_addr constant [16 x i8] c"vector::reserve\00", align 1
@.str.64 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.65 = private unnamed_addr constant [15 x i8] c"rest_at->index\00", align 1
@.str.66 = private unnamed_addr constant [10 x i8] c"ins_mtype\00", align 1
@.str.67 = private unnamed_addr constant [11 x i8] c"rest_mtype\00", align 1
@.str.68 = private unnamed_addr constant [533 x i8] c"Moleculetype %s is found both in the group to insert and the rest of the system.\0A1. Your *.ndx and *.top do not match\0A2. You are inserting some molecules of type %s (for example xray-solvent), while\0Athe same moleculetype is also used in the rest of the system (solvent box). Because\0Awe need to exclude all interactions between the atoms in the group to\0Ainsert, the same moleculetype can not be used in both groups. Change the\0Amoleculetype of the molecules %s in the inserted group. Do not forget to provide\0Aan appropriate *.itp file\00", align 1
@.str.69 = private unnamed_addr constant [13 x i8] c"tlist->index\00", align 1
@.str.70 = private unnamed_addr constant [7 x i8] c"mol_id\00", align 1
@.str.71 = private unnamed_addr constant [304 x i8] c"Something is wrong with your membrane. Max and min z values are %f and %f.\0AMaybe your membrane is not centered in the box, but located at the box edge in the z-direction,\0Aso that one membrane is distributed over two periodic box images. Another possibility is that\0Ayour water layer is not thick enough.\0A\00", align 1
@.str.72 = private unnamed_addr constant [78 x i8] c"Piecewise sum of inserted atoms not same as size of group selected to insert.\00", align 1
@.str.73 = private unnamed_addr constant [19 x i8] c"pos_ins->geom_cent\00", align 1
@.str.74 = private unnamed_addr constant [54 x i8] c"Embedding piece %d with center of geometry: %f %f %f\0A\00", align 1
@.str.76 = private unnamed_addr constant [12 x i8] c"rm_p->block\00", align 1
@.str.77 = private unnamed_addr constant [10 x i8] c"rm_p->mol\00", align 1
@.str.78 = private unnamed_addr constant [5 x i8] c"dist\00", align 1
@.str.79 = private unnamed_addr constant [6 x i8] c"order\00", align 1
@.str.80 = private unnamed_addr constant [69 x i8] c"Trying to remove more lipid molecules than there are in the membrane\00", align 1
@.str.81 = private unnamed_addr constant [15 x i8] c"begin_ <= end_\00", align 1
@.str.82 = private unnamed_addr constant [31 x i8] c"A range should have begin<=end\00", align 1
@__PRETTY_FUNCTION__._ZZN3gmx5RangeIiEC1EiiENKUlvE_clEv = private unnamed_addr constant [90 x i8] c"auto gmx::Range<int>::Range(const int, const int)::(lambda)::operator()() const [T = int]\00", align 1
@.str.83 = private unnamed_addr constant [75 x i8] c"/opt-bench/work/gromacs/gromacs/api/legacy/include/gromacs/utility/range.h\00", align 1
@.str.84 = private unnamed_addr constant [53 x i8] c"mol_id %d larger than total number of molecules %d.\0A\00", align 1
@.str.85 = private unnamed_addr constant [5 x i8] c"list\00", align 1
@.str.86 = private unnamed_addr constant [6 x i8] c"x_tmp\00", align 1
@.str.87 = private unnamed_addr constant [6 x i8] c"v_tmp\00", align 1
@.str.88 = private unnamed_addr constant [26 x i8] c"vector::_M_default_append\00", align 1
@.str.89 = private unnamed_addr constant [4 x i8] c"bRM\00", align 1
@.str.90 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.91 = private unnamed_addr constant [15 x i8] c"temp.topXXXXXX\00", align 1
@.str.92 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.93 = private unnamed_addr constant [8 x i8] c"nmol_rm\00", align 1
@.str.94 = private unnamed_addr constant [10 x i8] c"molecules\00", align 1
@.str.96 = private unnamed_addr constant [11 x i8] c"%-15s %5d\0A\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_Z14rescale_membediP12gmx_membed_tPA3_f(i32 noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !9      ; 2 uses
  %.not = icmp sgt i32 %0, %i.a
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load float, ptr %i.b, align 8, !tbaa !14
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = load <2 x float>, ptr %i.d, align 8, !tbaa !15
  %i.f = insertelement <2 x float> poison, float %i.c, i64 0
  %i.g = shufflevector <2 x float> %i.f, <2 x float> poison, <2 x i32> zeroinitializer
  %i.h = fadd <2 x float> %i.g, %i.e
  store <2 x float> %i.h, ptr %i.d, align 8, !tbaa !15
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !16
  %i.k = add nsw i32 %i.j, %i.a
  %.not15 = icmp sgt i32 %0, %i.k
  br i1 %.not15, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.m = load float, ptr %i.l, align 4, !tbaa !17
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.o = load float, ptr %i.n, align 8, !tbaa !15
  %i.p = fadd float %i.m, %i.o
  store float %i.p, ptr %i.n, align 8, !tbaa !15
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !18   ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !19   ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.w = load i32, ptr %i.v, align 8, !tbaa !20   ; 2 uses
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %.preheader.lr.ph.i, label %_ZL6resizePA3_fS0_P9pos_ins_tPKf.exit

.preheader.lr.ph.i:                               ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !25
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %wide.trip.count44.i = zext nneg i32 %i.w to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.lr.ph.i
  %indvars.iv41.i = phi i64 [ 0, %.preheader.lr.ph.i ], [ %indvars.iv.next42.i, %._crit_edge.i ] ; 4 uses
  %.033.i = phi i32 [ 0, %.preheader.lr.ph.i ], [ %.1.lcssa.i, %._crit_edge.i ] ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv41.i
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !26 ; 4 uses
  %i.ag = icmp sgt i32 %i.af, 0
  br i1 %i.ag, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.ah = load ptr, ptr %i.aa, align 8, !tbaa !27
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv41.i
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !28 ; 3 uses
  %i.ak = load ptr, ptr %i.ab, align 8, !tbaa !29
  %i.al = getelementptr inbounds nuw [12 x i8], ptr %i.ak, i64 %indvars.iv41.i ; 5 uses
  %i.am = sext i32 %.033.i to i64                 ; 2 uses
  %wide.trip.count.i = zext nneg i32 %i.af to i64 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 4 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.ap = icmp eq i32 %i.af, 1
  br i1 %i.ap, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.i.new
  %indvars.iv36.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next37.i.1, %bb.f ] ; 3 uses
  %indvars.iv.i = phi i64 [ %i.am, %.lr.ph.i.new ], [ %indvars.iv.next.i.1, %bb.f ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.f ]
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %indvars.iv36.i
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !26
  %i.as = getelementptr inbounds [12 x i8], ptr %i.r, i64 %indvars.iv.i ; 3 uses
  %i.at = sext i32 %i.ar to i64
  %i.au = getelementptr inbounds [12 x i8], ptr %2, i64 %i.at ; 3 uses
  %i.av = load float, ptr %i.al, align 4, !tbaa !15 ; 2 uses
  %i.aw = load float, ptr %i.u, align 8, !tbaa !15
  %i.ax = load float, ptr %i.as, align 4, !tbaa !15
  %i.ay = fsub float %i.ax, %i.av
  %i.az = tail call float @llvm.fmuladd.f32(float %i.aw, float %i.ay, float %i.av)
  store float %i.az, ptr %i.au, align 4, !tbaa !15
  %i.ba = load float, ptr %i.an, align 4, !tbaa !15 ; 2 uses
  %i.bb = load float, ptr %i.ac, align 4, !tbaa !15
  %i.bc = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !15
  %i.be = fsub float %i.bd, %i.ba
  %i.bf = tail call float @llvm.fmuladd.f32(float %i.bb, float %i.be, float %i.ba)
  %i.bg = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  store float %i.bf, ptr %i.bg, align 4, !tbaa !15
  %i.bh = load float, ptr %i.ao, align 4, !tbaa !15 ; 2 uses
  %i.bi = load float, ptr %i.ad, align 8, !tbaa !15
  %i.bj = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !15
  %i.bl = fsub float %i.bk, %i.bh
  %i.bm = tail call float @llvm.fmuladd.f32(float %i.bi, float %i.bl, float %i.bh)
  %i.bn = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store float %i.bm, ptr %i.bn, align 4, !tbaa !15
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %indvars.iv36.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !26
  %i.br = getelementptr [12 x i8], ptr %i.r, i64 %indvars.iv.i ; 3 uses
  %i.bs = getelementptr i8, ptr %i.br, i64 12
  %i.bt = sext i32 %i.bq to i64
  %i.bu = getelementptr inbounds [12 x i8], ptr %2, i64 %i.bt ; 3 uses
  %i.bv = load float, ptr %i.al, align 4, !tbaa !15 ; 2 uses
  %i.bw = load float, ptr %i.u, align 8, !tbaa !15
  %i.bx = load float, ptr %i.bs, align 4, !tbaa !15
  %i.by = fsub float %i.bx, %i.bv
  %i.bz = tail call float @llvm.fmuladd.f32(float %i.bw, float %i.by, float %i.bv)
  store float %i.bz, ptr %i.bu, align 4, !tbaa !15
  %i.ca = load float, ptr %i.an, align 4, !tbaa !15 ; 2 uses
  %i.cb = load float, ptr %i.ac, align 4, !tbaa !15
  %i.cc = getelementptr i8, ptr %i.br, i64 16
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !15
  %i.ce = fsub float %i.cd, %i.ca
  %i.cf = tail call float @llvm.fmuladd.f32(float %i.cb, float %i.ce, float %i.ca)
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bu, i64 4
  store float %i.cf, ptr %i.cg, align 4, !tbaa !15
  %i.ch = load float, ptr %i.ao, align 4, !tbaa !15 ; 2 uses
  %i.ci = load float, ptr %i.ad, align 8, !tbaa !15
  %i.cj = getelementptr i8, ptr %i.br, i64 20
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !15
  %i.cl = fsub float %i.ck, %i.ch
  %i.cm = tail call float @llvm.fmuladd.f32(float %i.ci, float %i.cl, float %i.ch)
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store float %i.cm, ptr %i.cn, align 4, !tbaa !15
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i, 2 ; 3 uses
  %indvars.iv.next37.i.1 = add nuw nsw i64 %indvars.iv36.i, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.i.unr-lcssa, label %bb.f, !llvm.loop !30

._crit_edge.loopexit.i.unr-lcssa:                 ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.i.unr-lcssa, %.lr.ph.i
  %indvars.iv36.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next37.i.1, %._crit_edge.loopexit.i.unr-lcssa ]
  %indvars.iv.i.epil.init = phi i64 [ %i.am, %.lr.ph.i ], [ %indvars.iv.next.i.1, %._crit_edge.loopexit.i.unr-lcssa ] ; 2 uses
  %lcmp.mod20 = trunc i32 %i.af to i1
  tail call void @llvm.assume(i1 %lcmp.mod20)
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %indvars.iv36.i.epil.init
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !26
  %i.cq = getelementptr inbounds [12 x i8], ptr %i.r, i64 %indvars.iv.i.epil.init ; 3 uses
  %i.cr = sext i32 %i.cp to i64
  %i.cs = getelementptr inbounds [12 x i8], ptr %2, i64 %i.cr ; 3 uses
  %i.ct = load float, ptr %i.al, align 4, !tbaa !15 ; 2 uses
  %i.cu = load float, ptr %i.u, align 8, !tbaa !15
  %i.cv = load float, ptr %i.cq, align 4, !tbaa !15
  %i.cw = fsub float %i.cv, %i.ct
  %i.cx = tail call float @llvm.fmuladd.f32(float %i.cu, float %i.cw, float %i.ct)
  store float %i.cx, ptr %i.cs, align 4, !tbaa !15
  %i.cy = load float, ptr %i.an, align 4, !tbaa !15 ; 2 uses
  %i.cz = load float, ptr %i.ac, align 4, !tbaa !15
  %i.da = getelementptr inbounds nuw i8, ptr %i.cq, i64 4
  %i.db = load float, ptr %i.da, align 4, !tbaa !15
  %i.dc = fsub float %i.db, %i.cy
  %i.dd = tail call float @llvm.fmuladd.f32(float %i.cz, float %i.dc, float %i.cy)
  %i.de = getelementptr inbounds nuw i8, ptr %i.cs, i64 4
  store float %i.dd, ptr %i.de, align 4, !tbaa !15
  %i.df = load float, ptr %i.ao, align 4, !tbaa !15 ; 2 uses
  %i.dg = load float, ptr %i.ad, align 8, !tbaa !15
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.di = load float, ptr %i.dh, align 4, !tbaa !15
  %i.dj = fsub float %i.di, %i.df
  %i.dk = tail call float @llvm.fmuladd.f32(float %i.dg, float %i.dj, float %i.df)
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  store float %i.dk, ptr %i.dl, align 4, !tbaa !15
  %indvars.iv.next.i.epil = add nsw i64 %indvars.iv.i.epil.init, 1
  br label %._crit_edge.loopexit.i

._crit_edge.loopexit.i:                           ; preds = %._crit_edge.loopexit.i.unr-lcssa, %.epil.preheader
  %indvars.iv.next.i.lcssa = phi i64 [ %indvars.iv.next.i.1, %._crit_edge.loopexit.i.unr-lcssa ], [ %indvars.iv.next.i.epil, %.epil.preheader ]
  %i.dm = trunc nsw i64 %indvars.iv.next.i.lcssa to i32
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.preheader.i
  %.1.lcssa.i = phi i32 [ %.033.i, %.preheader.i ], [ %i.dm, %._crit_edge.loopexit.i ]
  %indvars.iv.next42.i = add nuw nsw i64 %indvars.iv41.i, 1 ; 2 uses
  %exitcond45.not.i = icmp eq i64 %indvars.iv.next42.i, %wide.trip.count44.i
  br i1 %exitcond45.not.i, label %_ZL6resizePA3_fS0_P9pos_ins_tPKf.exit, label %.preheader.i, !llvm.loop !32

_ZL6resizePA3_fS0_P9pos_ins_tPKf.exit:            ; preds = %._crit_edge.i, %bb.e
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define noundef ptr @_Z11init_membedP8_IO_FILEiPK8t_filenmP10gmx_mtop_tP10t_inputrecP7t_stateP9t_commrecPf(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4, ptr noundef %5, ptr nofree noundef readonly captures(none) %6, ptr nofree noundef captures(none) %7) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca [4096 x i8], align 16             ; 29 uses
  %i.c = alloca [4096 x i8], align 16             ; 43 uses
  %i.d = alloca [4096 x i8], align 16             ; 7 uses
  %8 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 9 uses
  %9 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 9 uses
  %10 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 9 uses
  %11 = alloca %"struct.gmx::EnumerationArray.125", align 8 ; 57 uses
  %12 = alloca %"class.gmx::RangePartitioning", align 8 ; 9 uses
  %13 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %i.e = alloca [3 x float], align 8              ; 13 uses
  %i.f = alloca [3 x float], align 8              ; 6 uses
  %14 = alloca %"class.gmx::RangePartitioning", align 8 ; 14 uses
  %15 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %16 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %17 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %18 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %i.g = alloca ptr, align 8                      ; 7 uses
  %19 = alloca %"class.std::vector.160", align 16 ; 23 uses
  %20 = alloca %class.WarningHandler, align 8     ; 23 uses
  %21 = alloca %"class.gmx::TextInputFile", align 8 ; 8 uses
  %22 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 9 uses
  %23 = alloca %"class.std::vector.160", align 16 ; 10 uses
  %24 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 9 uses
  %i.h = alloca [3 x ptr], align 16               ; 5 uses
  %25 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 9 uses
  %26 = alloca %"class.gmx::TextOutputFile", align 8 ; 8 uses
  %27 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 9 uses
  %28 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 9 uses
  %29 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 9 uses
  %i.i = alloca ptr, align 8                      ; 20 uses
  %30 = alloca %struct.t_atoms, align 8           ; 7 uses
  %31 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %32 = alloca %"class.std::allocator.71", align 1 ; 3 uses
  %33 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %34 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %35 = alloca %"class.std::allocator.71", align 1 ; 3 uses
  %36 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %37 = alloca %"class.std::vector.136", align 8  ; 14 uses
  %38 = alloca %struct.t_atoms, align 8           ; 5 uses
  %39 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %40 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %41 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %42 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %43 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %44 = alloca %"class.std::allocator.71", align 1 ; 3 uses
  %45 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %46 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %47 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %48 = alloca %"class.std::allocator.71", align 1 ; 3 uses
  %49 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %50 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %51 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #26
  %i.j = tail call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 1073, i64 noundef 1, i64 noundef 48) ; 9 uses
  %i.k = tail call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 1074, i64 noundef 1, i64 noundef 24) ; 13 uses
  %i.l = tail call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 1075, i64 noundef 1, i64 noundef 56) ; 14 uses
  %i.m = load ptr, ptr %6, align 8, !tbaa !33, !nonnull !37, !align !38
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  %i.o = load i32, ptr %i.n, align 4, !tbaa !39
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.b, label %bb.tf

bb.b:                                             ; preds = %bb.a
  %i.q = tail call i64 @fwrite(ptr nonnull @.str.4, i64 134, i64 1, ptr %0) ; 0 uses
  %i.r = invoke noundef ptr @_Z6opt2fnPKciPK8t_filenm(ptr noundef nonnull @.str.5, i32 noundef %1, ptr noundef %2)
          to label %bb.c unwind label %bb.br

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.r, ptr %i.g, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %19, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #26
  invoke void @_ZN14WarningHandlerC2Ebi(ptr noundef nonnull align 8 dereferenceable(64) %20, i1 noundef zeroext true, i32 noundef 0)
          to label %bb.d unwind label %bb.an

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #26
  invoke void @_ZNSt10filesystem7__cxx114pathC2IPKcS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %22, ptr noundef nonnull align 8 dereferenceable(8) %i.g, i8 noundef zeroext 2)
          to label %bb.e unwind label %bb.ao

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN3gmx13TextInputFileC1ERKNSt10filesystem7__cxx114pathE(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(40) %22)
          to label %bb.f unwind label %bb.ap

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %22, i64 32 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !51   ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull %i.t) #26
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i: ; preds = %bb.g, %bb.f
  %i.u = load ptr, ptr %22, align 8, !tbaa !53    ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i
  %i.x = load i64, ptr %i.v, align 8, !tbaa !57
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #27
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit.i

_ZNSt10filesystem7__cxx114pathD2Ev.exit.i:        ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #26
  invoke void @_ZNSt10filesystem7__cxx114pathC2IPKcS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %24, ptr noundef nonnull align 8 dereferenceable(8) %i.g, i8 noundef zeroext 2)
          to label %bb.h unwind label %bb.ar

bb.h:                                             ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit.i
  invoke void @_Z12read_inpfilePN3gmx15TextInputStreamERKNSt10filesystem7__cxx114pathEP14WarningHandler(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.160") align 8 %23, ptr noundef nonnull %21, ptr noundef nonnull align 8 dereferenceable(40) %24, ptr noundef nonnull %20)
          to label %bb.i unwind label %bb.as

bb.i:                                             ; preds = %bb.h
  %i.z = load ptr, ptr %19, align 16, !tbaa !58   ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !61 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 3 uses
  %i.ad = load ptr, ptr %i.ac, align 16, !tbaa !62
  %i.ae = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.af = load <2 x ptr>, ptr %23, align 16, !tbaa !63
  store <2 x ptr> %i.af, ptr %19, align 16, !tbaa !63
  %i.ag = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
end_hunk_0
begin_hunk_1_@_Z11init_membedP8_IO_FILEiPK8t_filenmP10gmx_mtop_tP10t_inputrecP7t_stateP9t_commrecPf:bb.a
  %i.aaf = fneg float %i.aae
  %i.aag = fmul float %i.aad, %i.aaf
  %i.aah = call float @llvm.fmuladd.f32(float %i.zy, float %i.aab, float %i.aag)
  %i.aai = fcmp olt float %i.aah, 5.000000e+01
  br i1 %i.aai, label %bb.hn, label %_ZL13est_prot_areaP9pos_ins_tPA3_fP7t_blockP5mem_t.exit.thread

bb.hn:                                            ; preds = %bb.hm
  %i.aaj = add nuw nsw i32 %.4, 1                 ; 2 uses
  %i.aak = load ptr, ptr @stderr, align 8, !tbaa !161
  %i.aal = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aak, ptr noundef nonnull @.str.31, i32 noundef %i.aaj) #31 ; 0 uses
  br label %_ZL13est_prot_areaP9pos_ins_tPA3_fP7t_blockP5mem_t.exit.thread

_ZL13est_prot_areaP9pos_ins_tPA3_fP7t_blockP5mem_t.exit.thread: ; preds = %.lr.ph.i291, %bb.hg, %bb.hn, %bb.hm, %_ZL13est_prot_areaP9pos_ins_tPA3_fP7t_blockP5mem_t.exit
  %.048.lcssa.i647 = phi float [ %i.zw, %bb.hn ], [ %i.zw, %bb.hm ], [ %i.zw, %_ZL13est_prot_areaP9pos_ins_tPA3_fP7t_blockP5mem_t.exit ], [ 0.000000e+00, %bb.hg ], [ 0.000000e+00, %.lr.ph.i291 ] ; 2 uses
  %.5 = phi i32 [ %i.aaj, %bb.hn ], [ %.4, %bb.hm ], [ %.4, %_ZL13est_prot_areaP9pos_ins_tPA3_fP7t_blockP5mem_t.exit ], [ %.4, %bb.hg ], [ %.4, %.lr.ph.i291 ] ; 3 uses
  %i.aam = icmp sgt i32 %.5, %i.cm
  br i1 %i.aam, label %bb.ho, label %bb.hu

bb.ho:                                            ; preds = %_ZL13est_prot_areaP9pos_ins_tPA3_fP7t_blockP5mem_t.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #26
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA61_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %50, ptr noundef nonnull align 1 dereferenceable(61) @.str.1, i8 noundef zeroext 2)
          to label %bb.hp unwind label %bb.hr

bb.hp:                                            ; preds = %bb.ho
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %50, i32 noundef 1315, ptr noundef nonnull @.str.32) #28
          to label %bb.hq unwind label %bb.hs

bb.hq:                                            ; preds = %bb.hp
  unreachable

bb.hr:                                            ; preds = %bb.ho
  %i.aan = landingpad { ptr, i32 }
          cleanup
  br label %bb.ht

bb.hs:                                            ; preds = %bb.hp
  %i.aao = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %50) #26
  br label %bb.ht

bb.ht:                                            ; preds = %bb.hs, %bb.hr
  %.pn205 = phi { ptr, i32 } [ %i.aao, %bb.hs ], [ %i.aan, %bb.hr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #26
  br label %.body271

bb.hu:                                            ; preds = %_ZL13est_prot_areaP9pos_ins_tPA3_fP7t_blockP5mem_t.exit.thread
  %i.aap = fpext float %.048.lcssa.i647 to double
  %i.aaq = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.33, double noundef %i.aap) ; 0 uses
  %i.aar = load i32, ptr %i.wu, align 8, !tbaa !273
  %i.aas = load float, ptr %i.yh, align 8, !tbaa !281
  %i.aat = fpext float %i.aas to double
  %i.aau = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.34, i32 noundef %i.aar, double noundef %i.aat) ; 0 uses
  %i.aav = fmul float %.048.lcssa.i647, 2.000000e+00
  %i.aaw = load float, ptr %i.yh, align 8, !tbaa !281
  %i.aax = fdiv float %i.aav, %i.aaw
  %i.aay = fptosi float %i.aax to i32             ; 2 uses
  %i.aaz = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.35, i32 noundef %i.aay) ; 0 uses
  %i.aba = fpext float %i.cc to double
  %i.abb = fpext float %i.cg to double
  %i.abc = load <2 x float>, ptr %i.xi, align 4, !tbaa !15
  %i.abd = fpext <2 x float> %i.abc to <2 x double> ; 2 uses
  %i.abe = extractelement <2 x double> %i.abd, i64 0
  %i.abf = extractelement <2 x double> %i.abd, i64 1
  %i.abg = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.36, double noundef %i.aba, double noundef %i.abb, double noundef %i.abe, double noundef %i.abf) ; 0 uses
  %i.abh = load i32, ptr %i.k, align 8, !tbaa !187
  %i.abi = sext i32 %i.abh to i64
  %i.abj = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.1, i32 noundef 1340, i64 noundef range(i64 -2147483648, 2147483648) %i.abi, i64 noundef 12)
          to label %bb.hv unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

bb.hv:                                            ; preds = %bb.hu
  %i.abk = load ptr, ptr %i.ox, align 8, !tbaa !237
  %i.abl = load i32, ptr %i.jg, align 8, !tbaa !20 ; 5 uses
  %i.abm = icmp sgt i32 %i.abl, 0
  br i1 %i.abm, label %iter.check1329, label %._crit_edge.i295

iter.check1329:                                   ; preds = %bb.hv
  %i.abn = load ptr, ptr %i.jh, align 8, !tbaa !25 ; 3 uses
  %wide.trip.count.i298 = zext nneg i32 %i.abl to i64 ; 6 uses
  %min.iters.check1306 = icmp ult i32 %i.abl, 4
  br i1 %min.iters.check1306, label %vec.epilog.scalar.ph1330.preheader, label %vector.main.loop.iter.check1307

vector.main.loop.iter.check1307:                  ; preds = %iter.check1329
  %min.iters.check1308 = icmp ult i32 %i.abl, 32
  br i1 %min.iters.check1308, label %vec.epilog.ph1333, label %vector.ph1309

vector.ph1309:                                    ; preds = %vector.main.loop.iter.check1307
  %i.abo = and i64 %wide.trip.count.i298, 28
  %n.vec1310 = and i64 %wide.trip.count.i298, 2147483616 ; 4 uses
  br label %vector.body1311

vector.body1311:                                  ; preds = %vector.body1311, %vector.ph1309
  %index1312 = phi i64 [ 0, %vector.ph1309 ], [ %index.next1321, %vector.body1311 ] ; 2 uses
  %vec.phi1313 = phi <8 x i32> [ zeroinitializer, %vector.ph1309 ], [ %i.abt, %vector.body1311 ]
  %vec.phi1314 = phi <8 x i32> [ zeroinitializer, %vector.ph1309 ], [ %i.abu, %vector.body1311 ]
  %vec.phi1315 = phi <8 x i32> [ zeroinitializer, %vector.ph1309 ], [ %i.abv, %vector.body1311 ]
  %vec.phi1316 = phi <8 x i32> [ zeroinitializer, %vector.ph1309 ], [ %i.abw, %vector.body1311 ]
  %i.abp = getelementptr inbounds nuw [4 x i8], ptr %i.abn, i64 %index1312 ; 4 uses
  %i.abq = getelementptr inbounds nuw i8, ptr %i.abp, i64 32
  %i.abr = getelementptr inbounds nuw i8, ptr %i.abp, i64 64
  %i.abs = getelementptr inbounds nuw i8, ptr %i.abp, i64 96
  %wide.load1317 = load <8 x i32>, ptr %i.abp, align 4, !tbaa !26
  %wide.load1318 = load <8 x i32>, ptr %i.abq, align 4, !tbaa !26
  %wide.load1319 = load <8 x i32>, ptr %i.abr, align 4, !tbaa !26
  %wide.load1320 = load <8 x i32>, ptr %i.abs, align 4, !tbaa !26
  %i.abt = add <8 x i32> %wide.load1317, %vec.phi1313 ; 2 uses
  %i.abu = add <8 x i32> %wide.load1318, %vec.phi1314 ; 2 uses
  %i.abv = add <8 x i32> %wide.load1319, %vec.phi1315 ; 2 uses
  %i.abw = add <8 x i32> %wide.load1320, %vec.phi1316 ; 2 uses
  %index.next1321 = add nuw i64 %index1312, 32    ; 2 uses
  %i.abx = icmp eq i64 %index.next1321, %n.vec1310
  br i1 %i.abx, label %middle.block1322, label %vector.body1311, !llvm.loop !285

middle.block1322:                                 ; preds = %vector.body1311
  %bin.rdx1323 = add <8 x i32> %i.abu, %i.abt
  %bin.rdx1324 = add <8 x i32> %i.abv, %bin.rdx1323
  %bin.rdx1325 = add <8 x i32> %i.abw, %bin.rdx1324
  %i.aby = call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %bin.rdx1325) ; 3 uses
  %cmp.n1326 = icmp eq i64 %n.vec1310, %wide.trip.count.i298
  br i1 %cmp.n1326, label %._crit_edge.i295, label %vec.epilog.iter.check1331

vec.epilog.iter.check1331:                        ; preds = %middle.block1322
  %min.epilog.iters.check1332 = icmp eq i64 %i.abo, 0
  br i1 %min.epilog.iters.check1332, label %vec.epilog.scalar.ph1330.preheader, label %vec.epilog.ph1333, !prof !266

vec.epilog.ph1333:                                ; preds = %vector.main.loop.iter.check1307, %vec.epilog.iter.check1331
  %vec.epilog.resume.val1327 = phi i64 [ %n.vec1310, %vec.epilog.iter.check1331 ], [ 0, %vector.main.loop.iter.check1307 ]
  %bc.merge.rdx1328 = phi i32 [ %i.aby, %vec.epilog.iter.check1331 ], [ 0, %vector.main.loop.iter.check1307 ]
  %n.vec1334 = and i64 %wide.trip.count.i298, 2147483644 ; 3 uses
  %i.abz = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx1328, i64 0
  br label %vec.epilog.vector.body1335

vec.epilog.vector.body1335:                       ; preds = %vec.epilog.vector.body1335, %vec.epilog.ph1333
  %index1336 = phi i64 [ %vec.epilog.resume.val1327, %vec.epilog.ph1333 ], [ %index.next1339, %vec.epilog.vector.body1335 ] ; 2 uses
  %vec.phi1337 = phi <4 x i32> [ %i.abz, %vec.epilog.ph1333 ], [ %i.acb, %vec.epilog.vector.body1335 ]
  %i.aca = getelementptr inbounds nuw [4 x i8], ptr %i.abn, i64 %index1336
  %wide.load1338 = load <4 x i32>, ptr %i.aca, align 4, !tbaa !26
  %i.acb = add <4 x i32> %wide.load1338, %vec.phi1337 ; 2 uses
  %index.next1339 = add nuw i64 %index1336, 4     ; 2 uses
  %i.acc = icmp eq i64 %index.next1339, %n.vec1334
  br i1 %i.acc, label %vec.epilog.middle.block1340, label %vec.epilog.vector.body1335, !llvm.loop !286

vec.epilog.middle.block1340:                      ; preds = %vec.epilog.vector.body1335
  %i.acd = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.acb) ; 2 uses
  %cmp.n1341 = icmp eq i64 %n.vec1334, %wide.trip.count.i298
  br i1 %cmp.n1341, label %._crit_edge.i295, label %vec.epilog.scalar.ph1330.preheader

vec.epilog.scalar.ph1330.preheader:               ; preds = %iter.check1329, %vec.epilog.iter.check1331, %vec.epilog.middle.block1340
  %indvars.iv.i299.ph = phi i64 [ 0, %iter.check1329 ], [ %n.vec1310, %vec.epilog.iter.check1331 ], [ %n.vec1334, %vec.epilog.middle.block1340 ]
  %.06171.i.ph = phi i32 [ 0, %iter.check1329 ], [ %i.aby, %vec.epilog.iter.check1331 ], [ %i.acd, %vec.epilog.middle.block1340 ]
  br label %vec.epilog.scalar.ph1330

vec.epilog.scalar.ph1330:                         ; preds = %vec.epilog.scalar.ph1330.preheader, %vec.epilog.scalar.ph1330
  %indvars.iv.i299 = phi i64 [ %indvars.iv.next.i300, %vec.epilog.scalar.ph1330 ], [ %indvars.iv.i299.ph, %vec.epilog.scalar.ph1330.preheader ] ; 2 uses
  %.06171.i = phi i32 [ %i.acg, %vec.epilog.scalar.ph1330 ], [ %.06171.i.ph, %vec.epilog.scalar.ph1330.preheader ]
  %i.ace = getelementptr inbounds nuw [4 x i8], ptr %i.abn, i64 %indvars.iv.i299
  %i.acf = load i32, ptr %i.ace, align 4, !tbaa !26
  %i.acg = add nsw i32 %i.acf, %.06171.i          ; 2 uses
  %indvars.iv.next.i300 = add nuw nsw i64 %indvars.iv.i299, 1 ; 2 uses
  %exitcond.not.i301 = icmp eq i64 %indvars.iv.next.i300, %wide.trip.count.i298
  br i1 %exitcond.not.i301, label %._crit_edge.i295, label %vec.epilog.scalar.ph1330, !llvm.loop !287

._crit_edge.i295:                                 ; preds = %vec.epilog.scalar.ph1330, %middle.block1322, %vec.epilog.middle.block1340, %bb.hv
  %.061.lcssa.i = phi i32 [ 0, %bb.hv ], [ %i.acd, %vec.epilog.middle.block1340 ], [ %i.aby, %middle.block1322 ], [ %i.acg, %vec.epilog.scalar.ph1330 ]
  %i.ach = load i32, ptr %i.k, align 8, !tbaa !187
  %.not.i = icmp eq i32 %.061.lcssa.i, %i.ach
  br i1 %.not.i, label %bb.hz, label %bb.hw

bb.hw:                                            ; preds = %._crit_edge.i295
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #26
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA61_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %16, ptr noundef nonnull align 1 dereferenceable(61) @.str.1, i8 noundef zeroext 2)
          to label %.noexc302 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc302:                                        ; preds = %bb.hw
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %16, i32 noundef 493, ptr noundef nonnull @.str.72) #28
          to label %bb.hx unwind label %bb.hy

bb.hx:                                            ; preds = %.noexc302
  unreachable

bb.hy:                                            ; preds = %.noexc302
  %i.aci = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %16) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  br label %.body271

bb.hz:                                            ; preds = %._crit_edge.i295
  %i.acj = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 5 uses
  %i.ack = sext i32 %i.abl to i64
  %i.acl = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.1, i32 noundef 497, i64 noundef range(i64 -2147483648, 2147483648) %i.ack, i64 noundef 12)
          to label %.noexc305 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc305:                                        ; preds = %bb.hz
  store ptr %i.acl, ptr %i.acj, align 8, !tbaa !288
  %i.acm = load i32, ptr %i.jg, align 8, !tbaa !20
  %i.acn = icmp sgt i32 %i.acm, 0
  br i1 %i.acn, label %.preheader68.i, label %.loopexit660

.preheader68.i:                                   ; preds = %.noexc305, %bb.ig
  %indvars.iv100.i = phi i64 [ %indvars.iv.next101.i, %bb.ig ], [ 0, %.noexc305 ] ; 9 uses
  %.06283.i = phi i32 [ %.163.lcssa108.i, %bb.ig ], [ 0, %.noexc305 ] ; 2 uses
  %52 = mul nuw nsw i64 %indvars.iv100.i, 12
  %i.aco = load ptr, ptr %i.acj, align 8, !tbaa !29 ; 5 uses
  %scevgep.i = getelementptr nuw i8, ptr %i.aco, i64 %52
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %scevgep.i, i8 0, i64 12, i1 false), !tbaa !15
  %i.acp = load ptr, ptr %i.jh, align 8, !tbaa !25
  %i.acq = getelementptr inbounds nuw [4 x i8], ptr %i.acp, i64 %indvars.iv100.i
  %i.acr = load i32, ptr %i.acq, align 4, !tbaa !26 ; 2 uses
  %i.acs = icmp sgt i32 %i.acr, 0
  br i1 %i.acs, label %.lr.ph78.i, label %._crit_edge79.thread.i

.lr.ph78.i:                                       ; preds = %.preheader68.i
  %i.act = load ptr, ptr %i.jk, align 8, !tbaa !27
  %i.acu = getelementptr inbounds nuw [8 x i8], ptr %i.act, i64 %indvars.iv100.i
  %i.acv = load ptr, ptr %i.acu, align 8, !tbaa !28
  %i.acw = sext i32 %.06283.i to i64
  %wide.trip.count98.i = zext nneg i32 %i.acr to i64
  %53 = getelementptr inbounds nuw [12 x i8], ptr %i.aco, i64 %indvars.iv100.i ; 5 uses
  %i.acx = getelementptr inbounds nuw i8, ptr %53, i64 8 ; 4 uses
  br label %bb.ia

bb.ia:                                            ; preds = %bb.id, %.lr.ph78.i
  %indvars.iv93.i = phi i64 [ %i.acw, %.lr.ph78.i ], [ %indvars.iv.next94.i, %bb.id ] ; 2 uses
  %indvars.iv91.i = phi i64 [ 0, %.lr.ph78.i ], [ %indvars.iv.next92.i, %bb.id ] ; 2 uses
  %.06475.i = phi i32 [ 0, %.lr.ph78.i ], [ %.165.i, %bb.id ] ; 3 uses
  %i.acy = getelementptr inbounds nuw [4 x i8], ptr %i.acv, i64 %indvars.iv91.i
  %i.acz = load i32, ptr %i.acy, align 4, !tbaa !26
  %i.ada = sext i32 %i.acz to i64
  %i.adb = getelementptr inbounds [12 x i8], ptr %i.abk, i64 %i.ada ; 3 uses
  %i.adc = getelementptr inbounds [12 x i8], ptr %i.abj, i64 %indvars.iv93.i ; 3 uses
  %i.add = getelementptr inbounds nuw i8, ptr %i.adb, i64 4
  %i.ade = load float, ptr %i.adb, align 4, !tbaa !15 ; 2 uses
  store float %i.ade, ptr %i.adc, align 4, !tbaa !15
  %i.adf = load float, ptr %i.add, align 4, !tbaa !15 ; 2 uses
  %i.adg = getelementptr inbounds nuw i8, ptr %i.adc, i64 4
  store float %i.adf, ptr %i.adg, align 4, !tbaa !15
  %i.adh = getelementptr inbounds nuw i8, ptr %i.adb, i64 8
  %i.adi = load float, ptr %i.adh, align 4, !tbaa !15 ; 4 uses
  %i.adj = getelementptr inbounds nuw i8, ptr %i.adc, i64 8
  store float %i.adi, ptr %i.adj, align 4, !tbaa !15
  %i.adk = load float, ptr %i.xj, align 8, !tbaa !277
  %i.adl = fcmp olt float %i.adi, %i.adk
  br i1 %i.adl, label %bb.ib, label %bb.id

bb.ib:                                            ; preds = %bb.ia
  %i.adm = load float, ptr %i.xi, align 4, !tbaa !276
  %i.adn = fcmp ogt float %i.adi, %i.adm
  br i1 %i.adn, label %bb.ic, label %bb.id

bb.ic:                                            ; preds = %bb.ib
  %i.ado = load float, ptr %i.acx, align 4, !tbaa !15
  %i.adp = fadd float %i.adi, %i.ado
  %i.adq = load <2 x float>, ptr %53, align 4, !tbaa !15
  %i.adr = insertelement <2 x float> poison, float %i.ade, i64 0
  %i.ads = insertelement <2 x float> %i.adr, float %i.adf, i64 1
  %i.adt = fadd <2 x float> %i.ads, %i.adq
  store <2 x float> %i.adt, ptr %53, align 4, !tbaa !15
  store float %i.adp, ptr %i.acx, align 4, !tbaa !15
  %i.adu = add nsw i32 %.06475.i, 1
  br label %bb.id

bb.id:                                            ; preds = %bb.ic, %bb.ib, %bb.ia
  %.165.i = phi i32 [ %i.adu, %bb.ic ], [ %.06475.i, %bb.ib ], [ %.06475.i, %bb.ia ] ; 3 uses
  %indvars.iv.next94.i = add nsw i64 %indvars.iv93.i, 1 ; 2 uses
  %indvars.iv.next92.i = add nuw nsw i64 %indvars.iv91.i, 1 ; 2 uses
  %exitcond99.not.i = icmp eq i64 %indvars.iv.next92.i, %wide.trip.count98.i
  br i1 %exitcond99.not.i, label %._crit_edge79.i, label %bb.ia, !llvm.loop !289

._crit_edge79.i:                                  ; preds = %bb.id
  %i.adv = trunc nsw i64 %indvars.iv.next94.i to i32 ; 2 uses
  %i.adw = icmp sgt i32 %.165.i, 0
  br i1 %i.adw, label %bb.ie, label %._crit_edge79.thread.i

bb.ie:                                            ; preds = %._crit_edge79.i
  %i.adx = uitofp nneg i32 %.165.i to double
  %i.ady = fdiv double 1.000000e+00, %i.adx
  %i.adz = fptrunc double %i.ady to float         ; 2 uses
  %i.aea = load <2 x float>, ptr %53, align 4, !tbaa !15
  %i.aeb = insertelement <2 x float> poison, float %i.adz, i64 0
  %i.aec = shufflevector <2 x float> %i.aeb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aed = fmul <2 x float> %i.aea, %i.aec
  store <2 x float> %i.aed, ptr %53, align 4, !tbaa !15
  %i.aee = load float, ptr %i.acx, align 4, !tbaa !15
  %i.aef = fmul float %i.aee, %i.adz
  store float %i.aef, ptr %i.acx, align 4, !tbaa !15
  br label %._crit_edge79.thread.i

._crit_edge79.thread.i:                           ; preds = %bb.ie, %._crit_edge79.i, %.preheader68.i
  %.163.lcssa108.i = phi i32 [ %i.adv, %._crit_edge79.i ], [ %i.adv, %bb.ie ], [ %.06283.i, %.preheader68.i ]
  br i1 %i.cp, label %._crit_edge103.i, label %bb.if

._crit_edge103.i:                                 ; preds = %._crit_edge79.thread.i
  %.phi.trans.insert.i = getelementptr inbounds nuw [12 x i8], ptr %i.aco, i64 %indvars.iv100.i
  %.phi.trans.insert.i.a = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 8
  %.pre.i296 = load float, ptr %.phi.trans.insert.i.a, align 4, !tbaa !15
  br label %bb.ig

bb.if:                                            ; preds = %._crit_edge79.thread.i
  %i.aeg = load float, ptr %i.xm, align 4, !tbaa !278 ; 2 uses
  %54 = getelementptr inbounds nuw [12 x i8], ptr %i.aco, i64 %indvars.iv100.i
  %i.aeh = getelementptr inbounds nuw i8, ptr %54, i64 8
  store float %i.aeg, ptr %i.aeh, align 4, !tbaa !15
  br label %bb.ig

bb.ig:                                            ; preds = %bb.if, %._crit_edge103.i
  %i.aei = phi float [ %.pre.i296, %._crit_edge103.i ], [ %i.aeg, %bb.if ]
  %i.aej = load ptr, ptr @stderr, align 8, !tbaa !161
  %55 = getelementptr inbounds nuw [12 x i8], ptr %i.aco, i64 %indvars.iv100.i
  %i.aek = load <2 x float>, ptr %55, align 4, !tbaa !15
  %i.ael = fpext <2 x float> %i.aek to <2 x double> ; 2 uses
  %i.aem = fpext float %i.aei to double
  %i.aen = trunc nuw nsw i64 %indvars.iv100.i to i32
  %i.aeo = extractelement <2 x double> %i.ael, i64 0
  %i.aep = extractelement <2 x double> %i.ael, i64 1
  %i.aeq = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aej, ptr noundef nonnull @.str.74, i32 noundef %i.aen, double noundef %i.aeo, double noundef %i.aep, double noundef %i.aem) #31 ; 0 uses
  %indvars.iv.next101.i = add nuw nsw i64 %indvars.iv100.i, 1 ; 2 uses
  %i.aer = load i32, ptr %i.jg, align 8, !tbaa !20
  %i.aes = sext i32 %i.aer to i64
  %i.aet = icmp slt i64 %indvars.iv.next101.i, %i.aes
  br i1 %i.aet, label %.preheader68.i, label %.loopexit660, !llvm.loop !290

.loopexit660:                                     ; preds = %bb.ig, %.noexc305
  %i.aeu = load ptr, ptr @stderr, align 8, !tbaa !161
  %fputc.i = call i32 @fputc(i32 10, ptr %i.aeu)  ; 0 uses
  %i.aev = getelementptr inbounds nuw i8, ptr %i.j, i64 20 ; 4 uses
  store float %i.cc, ptr %i.aev, align 4, !tbaa !15
  %i.aew = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 4 uses
  store float %i.cc, ptr %i.aew, align 8, !tbaa !15
  %i.aex = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 4 uses
  store float %i.cg, ptr %i.aex, align 8, !tbaa !15
  %i.aey = insertelement <2 x float> poison, float %i.ce, i64 0
  %i.aez = insertelement <2 x float> %i.aey, float %i.ci, i64 1
  %i.afa = insertelement <2 x float> poison, float %i.cc, i64 0
  %i.afb = insertelement <2 x float> %i.afa, float %i.cg, i64 1
  %i.afc = fsub <2 x float> %i.aez, %i.afb
  %i.afd = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.afe = add nsw i32 %i.ca, -1
  %i.aff = fpext <2 x float> %i.afc to <2 x double>
  %i.afg = insertelement <2 x i32> poison, i32 %i.bz, i64 0
  %i.afh = insertelement <2 x i32> %i.afg, i32 %i.afe, i64 1
  %i.afi = sitofp <2 x i32> %i.afh to <2 x double>
  %i.afj = fdiv <2 x double> %i.aff, %i.afi
  %i.afk = fptrunc <2 x double> %i.afj to <2 x float>
  store <2 x float> %i.afk, ptr %i.afd, align 8, !tbaa !15
  %i.afl = load ptr, ptr %i.ox, align 8, !tbaa !237 ; 3 uses
  %i.afm = load i32, ptr %i.jg, align 8, !tbaa !20 ; 2 uses
  %i.afn = icmp sgt i32 %i.afm, 0
  br i1 %i.afn, label %.preheader.lr.ph.i, label %_ZL6resizePA3_fS0_P9pos_ins_tPKf.exit

.preheader.lr.ph.i:                               ; preds = %.loopexit660
  %i.afo = load ptr, ptr %i.jh, align 8, !tbaa !25
  %wide.trip.count44.i = zext nneg i32 %i.afm to i64
  br label %.preheader.i306

.preheader.i306:                                  ; preds = %._crit_edge.i307, %.preheader.lr.ph.i
  %indvars.iv41.i = phi i64 [ 0, %.preheader.lr.ph.i ], [ %indvars.iv.next42.i, %._crit_edge.i307 ] ; 4 uses
  %.033.i = phi i32 [ 0, %.preheader.lr.ph.i ], [ %.1.lcssa.i, %._crit_edge.i307 ] ; 2 uses
  %i.afp = getelementptr inbounds nuw [4 x i8], ptr %i.afo, i64 %indvars.iv41.i
  %i.afq = load i32, ptr %i.afp, align 4, !tbaa !26 ; 4 uses
  %i.afr = icmp sgt i32 %i.afq, 0
  br i1 %i.afr, label %.lr.ph.i308, label %._crit_edge.i307

.lr.ph.i308:                                      ; preds = %.preheader.i306
  %i.afs = load ptr, ptr %i.jk, align 8, !tbaa !27
  %i.aft = getelementptr inbounds nuw [8 x i8], ptr %i.afs, i64 %indvars.iv41.i
  %i.afu = load ptr, ptr %i.aft, align 8, !tbaa !28 ; 3 uses
  %i.afv = load ptr, ptr %i.acj, align 8, !tbaa !29
  %i.afw = getelementptr inbounds nuw [12 x i8], ptr %i.afv, i64 %indvars.iv41.i ; 5 uses
  %i.afx = sext i32 %.033.i to i64                ; 2 uses
  %wide.trip.count.i309 = zext nneg i32 %i.afq to i64 ; 2 uses
  %i.afy = getelementptr inbounds nuw i8, ptr %i.afw, i64 4 ; 3 uses
  %i.afz = getelementptr inbounds nuw i8, ptr %i.afw, i64 8 ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i309, 1
  %i.aga = icmp eq i32 %i.afq, 1
  br i1 %i.aga, label %.epil.preheader, label %.lr.ph.i308.new

.lr.ph.i308.new:                                  ; preds = %.lr.ph.i308
  %unroll_iter = and i64 %wide.trip.count.i309, 2147483646
  br label %bb.ih

bb.ih:                                            ; preds = %bb.ih, %.lr.ph.i308.new
  %indvars.iv36.i310 = phi i64 [ 0, %.lr.ph.i308.new ], [ %indvars.iv.next37.i313.1, %bb.ih ] ; 3 uses
  %indvars.iv.i311 = phi i64 [ %i.afx, %.lr.ph.i308.new ], [ %indvars.iv.next.i312.1, %bb.ih ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i308.new ], [ %niter.next.1, %bb.ih ]
  %i.agb = getelementptr inbounds nuw [4 x i8], ptr %i.afu, i64 %indvars.iv36.i310
  %i.agc = load i32, ptr %i.agb, align 4, !tbaa !26
  %i.agd = getelementptr inbounds [12 x i8], ptr %i.abj, i64 %indvars.iv.i311 ; 3 uses
  %i.age = sext i32 %i.agc to i64
  %i.agf = getelementptr inbounds [12 x i8], ptr %i.afl, i64 %i.age ; 3 uses
  %i.agg = load float, ptr %i.afw, align 4, !tbaa !15 ; 2 uses
  %i.agh = load float, ptr %i.aew, align 8, !tbaa !15
  %i.agi = load float, ptr %i.agd, align 4, !tbaa !15
  %i.agj = fsub float %i.agi, %i.agg
  %i.agk = call float @llvm.fmuladd.f32(float %i.agh, float %i.agj, float %i.agg)
  store float %i.agk, ptr %i.agf, align 4, !tbaa !15
  %i.agl = load float, ptr %i.afy, align 4, !tbaa !15 ; 2 uses
  %i.agm = load float, ptr %i.aev, align 4, !tbaa !15
  %i.agn = getelementptr inbounds nuw i8, ptr %i.agd, i64 4
  %i.ago = load float, ptr %i.agn, align 4, !tbaa !15
  %i.agp = fsub float %i.ago, %i.agl
  %i.agq = call float @llvm.fmuladd.f32(float %i.agm, float %i.agp, float %i.agl)
  %i.agr = getelementptr inbounds nuw i8, ptr %i.agf, i64 4
  store float %i.agq, ptr %i.agr, align 4, !tbaa !15
  %i.ags = load float, ptr %i.afz, align 4, !tbaa !15 ; 2 uses
  %i.agt = load float, ptr %i.aex, align 8, !tbaa !15
  %i.agu = getelementptr inbounds nuw i8, ptr %i.agd, i64 8
  %i.agv = load float, ptr %i.agu, align 4, !tbaa !15
  %i.agw = fsub float %i.agv, %i.ags
  %i.agx = call float @llvm.fmuladd.f32(float %i.agt, float %i.agw, float %i.ags)
  %i.agy = getelementptr inbounds nuw i8, ptr %i.agf, i64 8
  store float %i.agx, ptr %i.agy, align 4, !tbaa !15
  %i.agz = getelementptr inbounds nuw [4 x i8], ptr %i.afu, i64 %indvars.iv36.i310
  %i.aha = getelementptr inbounds nuw i8, ptr %i.agz, i64 4
  %i.ahb = load i32, ptr %i.aha, align 4, !tbaa !26
  %i.ahc = getelementptr [12 x i8], ptr %i.abj, i64 %indvars.iv.i311 ; 3 uses
  %i.ahd = getelementptr i8, ptr %i.ahc, i64 12
  %i.ahe = sext i32 %i.ahb to i64
  %i.ahf = getelementptr inbounds [12 x i8], ptr %i.afl, i64 %i.ahe ; 3 uses
  %i.ahg = load float, ptr %i.afw, align 4, !tbaa !15 ; 2 uses
  %i.ahh = load float, ptr %i.aew, align 8, !tbaa !15
  %i.ahi = load float, ptr %i.ahd, align 4, !tbaa !15
  %i.ahj = fsub float %i.ahi, %i.ahg
  %i.ahk = call float @llvm.fmuladd.f32(float %i.ahh, float %i.ahj, float %i.ahg)
  store float %i.ahk, ptr %i.ahf, align 4, !tbaa !15
  %i.ahl = load float, ptr %i.afy, align 4, !tbaa !15 ; 2 uses
  %i.ahm = load float, ptr %i.aev, align 4, !tbaa !15
  %i.ahn = getelementptr i8, ptr %i.ahc, i64 16
  %i.aho = load float, ptr %i.ahn, align 4, !tbaa !15
  %i.ahp = fsub float %i.aho, %i.ahl
  %i.ahq = call float @llvm.fmuladd.f32(float %i.ahm, float %i.ahp, float %i.ahl)
  %i.ahr = getelementptr inbounds nuw i8, ptr %i.ahf, i64 4
  store float %i.ahq, ptr %i.ahr, align 4, !tbaa !15
  %i.ahs = load float, ptr %i.afz, align 4, !tbaa !15 ; 2 uses
  %i.aht = load float, ptr %i.aex, align 8, !tbaa !15
  %i.ahu = getelementptr i8, ptr %i.ahc, i64 20
  %i.ahv = load float, ptr %i.ahu, align 4, !tbaa !15
  %i.ahw = fsub float %i.ahv, %i.ahs
  %i.ahx = call float @llvm.fmuladd.f32(float %i.aht, float %i.ahw, float %i.ahs)
  %i.ahy = getelementptr inbounds nuw i8, ptr %i.ahf, i64 8
  store float %i.ahx, ptr %i.ahy, align 4, !tbaa !15
  %indvars.iv.next.i312.1 = add nsw i64 %indvars.iv.i311, 2 ; 3 uses
  %indvars.iv.next37.i313.1 = add nuw nsw i64 %indvars.iv36.i310, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.i.unr-lcssa, label %bb.ih, !llvm.loop !30

._crit_edge.loopexit.i.unr-lcssa:                 ; preds = %bb.ih
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.i.unr-lcssa, %.lr.ph.i308
  %indvars.iv36.i310.epil.init = phi i64 [ 0, %.lr.ph.i308 ], [ %indvars.iv.next37.i313.1, %._crit_edge.loopexit.i.unr-lcssa ]
  %indvars.iv.i311.epil.init = phi i64 [ %i.afx, %.lr.ph.i308 ], [ %indvars.iv.next.i312.1, %._crit_edge.loopexit.i.unr-lcssa ] ; 2 uses
  %lcmp.mod1734 = trunc i32 %i.afq to i1
  call void @llvm.assume(i1 %lcmp.mod1734)
  %i.ahz = getelementptr inbounds nuw [4 x i8], ptr %i.afu, i64 %indvars.iv36.i310.epil.init
  %i.aia = load i32, ptr %i.ahz, align 4, !tbaa !26
  %i.aib = getelementptr inbounds [12 x i8], ptr %i.abj, i64 %indvars.iv.i311.epil.init ; 3 uses
  %i.aic = sext i32 %i.aia to i64
  %i.aid = getelementptr inbounds [12 x i8], ptr %i.afl, i64 %i.aic ; 3 uses
  %i.aie = load float, ptr %i.afw, align 4, !tbaa !15 ; 2 uses
  %i.aif = load float, ptr %i.aew, align 8, !tbaa !15
  %i.aig = load float, ptr %i.aib, align 4, !tbaa !15
  %i.aih = fsub float %i.aig, %i.aie
  %i.aii = call float @llvm.fmuladd.f32(float %i.aif, float %i.aih, float %i.aie)
  store float %i.aii, ptr %i.aid, align 4, !tbaa !15
  %i.aij = load float, ptr %i.afy, align 4, !tbaa !15 ; 2 uses
  %i.aik = load float, ptr %i.aev, align 4, !tbaa !15
  %i.ail = getelementptr inbounds nuw i8, ptr %i.aib, i64 4
  %i.aim = load float, ptr %i.ail, align 4, !tbaa !15
  %i.ain = fsub float %i.aim, %i.aij
  %i.aio = call float @llvm.fmuladd.f32(float %i.aik, float %i.ain, float %i.aij)
  %i.aip = getelementptr inbounds nuw i8, ptr %i.aid, i64 4
  store float %i.aio, ptr %i.aip, align 4, !tbaa !15
  %i.aiq = load float, ptr %i.afz, align 4, !tbaa !15 ; 2 uses
  %i.air = load float, ptr %i.aex, align 8, !tbaa !15
  %i.ais = getelementptr inbounds nuw i8, ptr %i.aib, i64 8
  %i.ait = load float, ptr %i.ais, align 4, !tbaa !15
  %i.aiu = fsub float %i.ait, %i.aiq
  %i.aiv = call float @llvm.fmuladd.f32(float %i.air, float %i.aiu, float %i.aiq)
  %i.aiw = getelementptr inbounds nuw i8, ptr %i.aid, i64 8
  store float %i.aiv, ptr %i.aiw, align 4, !tbaa !15
  %indvars.iv.next.i312.epil = add nsw i64 %indvars.iv.i311.epil.init, 1
  br label %._crit_edge.loopexit.i

._crit_edge.loopexit.i:                           ; preds = %._crit_edge.loopexit.i.unr-lcssa, %.epil.preheader
  %indvars.iv.next.i312.lcssa = phi i64 [ %indvars.iv.next.i312.1, %._crit_edge.loopexit.i.unr-lcssa ], [ %indvars.iv.next.i312.epil, %.epil.preheader ]
  %i.aix = trunc nsw i64 %indvars.iv.next.i312.lcssa to i32
  br label %._crit_edge.i307

._crit_edge.i307:                                 ; preds = %._crit_edge.loopexit.i, %.preheader.i306
  %.1.lcssa.i = phi i32 [ %.033.i, %.preheader.i306 ], [ %i.aix, %._crit_edge.loopexit.i ]
  %indvars.iv.next42.i = add nuw nsw i64 %indvars.iv41.i, 1 ; 2 uses
  %exitcond45.not.i = icmp eq i64 %indvars.iv.next42.i, %wide.trip.count44.i
  br i1 %exitcond45.not.i, label %_ZL6resizePA3_fS0_P9pos_ins_tPKf.exit, label %.preheader.i306, !llvm.loop !32

_ZL6resizePA3_fS0_P9pos_ins_tPKf.exit:            ; preds = %._crit_edge.i307, %.loopexit660
  %i.aiy = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.1, i32 noundef 1352, i64 noundef 1, i64 noundef 384)
          to label %_ZL13gmx_snew_implI5t_pbcEvPKcS2_iRPT_m.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

_ZL13gmx_snew_implI5t_pbcEvPKcS2_iRPT_m.exit:     ; preds = %_ZL6resizePA3_fS0_P9pos_ins_tPKf.exit
  %i.aiz = getelementptr inbounds nuw i8, ptr %4, i64 176
  %i.aja = load i32, ptr %i.aiz, align 8, !tbaa !291
  invoke void @_Z7set_pbcP5t_pbc7PbcTypePA3_Kf(ptr noundef %i.aiy, i32 noundef %i.aja, ptr noundef nonnull %i.st)
          to label %bb.ii unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ii:                                            ; preds = %_ZL13gmx_snew_implI5t_pbcEvPKcS2_iRPT_m.exit
  %i.ajb = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.1, i32 noundef 1355, i64 noundef 1, i64 noundef 24)
          to label %bb.ij unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 10 uses

bb.ij:                                            ; preds = %bb.ii
  %i.ajc = load ptr, ptr %i.ox, align 8, !tbaa !237 ; 21 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #26
  %i.ajd = fmul float %i.ck, %i.ck
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  invoke void @_Z18gmx_mtop_moleculesRK10gmx_mtop_t(ptr dead_on_unwind nonnull writable sret(%"class.gmx::RangePartitioning") align 8 %14, ptr noundef nonnull align 8 dereferenceable(768) %3)
          to label %.noexc345 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc345:                                        ; preds = %bb.ij
  %i.aje = getelementptr inbounds nuw i8, ptr %i.ajb, i64 16 ; 9 uses
  %i.ajf = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.ajg = load ptr, ptr %i.ajf, align 8, !tbaa !199
  %i.ajh = load ptr, ptr %14, align 8, !tbaa !192
  %i.aji = ptrtoint ptr %i.ajg to i64
  %i.ajj = ptrtoint ptr %i.ajh to i64
  %i.ajk = sub i64 %i.aji, %i.ajj
  %i.ajl = shl i64 %i.ajk, 30
  %sext.i = add i64 %i.ajl, -4294967296
  %i.ajm = ashr i64 %sext.i, 32
  %i.ajn = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.1, i32 noundef 581, i64 noundef %i.ajm, i64 noundef 4)
          to label %bb.ik unwind label %.loopexit.split-lp.loopexit.split-lp.i

bb.ik:                                            ; preds = %.noexc345
  store ptr %i.ajn, ptr %i.aje, align 8, !tbaa !28
  %i.ajo = getelementptr inbounds nuw i8, ptr %i.ajb, i64 8 ; 9 uses
  %i.ajp = load ptr, ptr %i.ajf, align 8, !tbaa !199
  %i.ajq = load ptr, ptr %14, align 8, !tbaa !192
  %i.ajr = ptrtoint ptr %i.ajp to i64
  %i.ajs = ptrtoint ptr %i.ajq to i64
  %i.ajt = sub i64 %i.ajr, %i.ajs
  %i.aju = shl i64 %i.ajt, 30
  %sext280.i = add i64 %i.aju, -4294967296
  %i.ajv = ashr i64 %sext280.i, 32
  %i.ajw = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.1, i32 noundef 582, i64 noundef %i.ajv, i64 noundef 4)
          to label %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit212.i unwind label %.loopexit.split-lp.loopexit.split-lp.i

_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit212.i:     ; preds = %bb.ik
  store ptr %i.ajw, ptr %i.ajo, align 8, !tbaa !28
  %i.ajx = load i32, ptr %i.k, align 8, !tbaa !187 ; 2 uses
  %i.ajy = icmp sgt i32 %i.ajx, 0
  br i1 %i.ajy, label %.lr.ph354.i, label %._crit_edge355.i

.lr.ph354.i:                                      ; preds = %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit212.i
  %i.ajz = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.aka = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.akb = getelementptr inbounds nuw i8, ptr %3, i64 144
  %i.akc = getelementptr inbounds nuw i8, ptr %3, i64 736
  %i.akd = load i32, ptr %i.os, align 8, !tbaa !187 ; 2 uses
  %i.ake = icmp sgt i32 %i.akd, 0
  br i1 %i.ake, label %.lr.ph354.split.i, label %._crit_edge355.i

.lr.ph354.split.i:                                ; preds = %.lr.ph354.i, %._crit_edge346.i
  %i.akf = phi i32 [ %i.aqb, %._crit_edge346.i ], [ %i.ajx, %.lr.ph354.i ]
  %i.akg = phi i32 [ %i.aqc, %._crit_edge346.i ], [ %i.akd, %.lr.ph354.i ] ; 2 uses
  %indvars.iv424.i = phi i64 [ %indvars.iv.next425.i, %._crit_edge346.i ], [ 0, %.lr.ph354.i ] ; 2 uses
  %.0174352.i = phi i32 [ %.1175.lcssa.i, %._crit_edge346.i ], [ %i.cl, %.lr.ph354.i ] ; 2 uses
  %.0181351.i = phi i32 [ %.1182.lcssa.i, %._crit_edge346.i ], [ 0, %.lr.ph354.i ] ; 2 uses
  %.0189350.i = phi i32 [ %.1190.lcssa.i, %._crit_edge346.i ], [ 0, %.lr.ph354.i ] ; 2 uses
  %i.akh = icmp sgt i32 %i.akg, 0
  br i1 %i.akh, label %.lr.ph345.i, label %._crit_edge346.i

.lr.ph345.i:                                      ; preds = %.lr.ph354.split.i
  %i.aki = load ptr, ptr %i.hp, align 8, !tbaa !189
  %i.akj = getelementptr inbounds nuw [4 x i8], ptr %i.aki, i64 %indvars.iv424.i
  %i.akk = load i32, ptr %i.akj, align 4, !tbaa !26
  %i.akl = sext i32 %i.akk to i64
  %i.akm = getelementptr inbounds [12 x i8], ptr %i.ajc, i64 %i.akl
  br label %bb.il

bb.il:                                            ; preds = %.loopexit287.i, %.lr.ph345.i
  %indvars.iv421.i = phi i64 [ 0, %.lr.ph345.i ], [ %indvars.iv.next422.i, %.loopexit287.i ] ; 2 uses
  %.1175342.i = phi i32 [ %.0174352.i, %.lr.ph345.i ], [ %.4178.i, %.loopexit287.i ] ; 4 uses
  %.1182341.i = phi i32 [ %.0181351.i, %.lr.ph345.i ], [ %.4185.i, %.loopexit287.i ] ; 4 uses
  %.1190340.i = phi i32 [ %.0189350.i, %.lr.ph345.i ], [ %.2191.i, %.loopexit287.i ] ; 8 uses
  %i.akn = load ptr, ptr %i.ot, align 8, !tbaa !189
  %i.ako = getelementptr inbounds nuw [4 x i8], ptr %i.akn, i64 %indvars.iv421.i
  %i.akp = load i32, ptr %i.ako, align 4, !tbaa !26 ; 4 uses
  %i.akq = sext i32 %i.akp to i64
  %i.akr = getelementptr inbounds [12 x i8], ptr %i.ajc, i64 %i.akq
  invoke void @_Z6pbc_dxPK5t_pbcPKfS3_Pf(ptr noundef %i.aiy, ptr noundef %i.akm, ptr noundef %i.akr, ptr noundef nonnull %i.e)
          to label %bb.im unwind label %.loopexit.split-lp.loopexit.i

bb.im:                                            ; preds = %bb.il
  %i.aks = load float, ptr %i.e, align 8, !tbaa !15 ; 2 uses
  %i.akt = load float, ptr %i.ajz, align 4, !tbaa !15 ; 2 uses
  %i.aku = fmul float %i.akt, %i.akt
  %i.akv = call float @llvm.fmuladd.f32(float %i.aks, float %i.aks, float %i.aku)
  %i.akw = load float, ptr %i.aka, align 8, !tbaa !15 ; 2 uses
  %i.akx = call noundef float @llvm.fmuladd.f32(float %i.akw, float %i.akw, float %i.akv)
  %i.aky = fcmp olt float %i.akx, %i.ajd
  br i1 %i.aky, label %bb.in, label %.loopexit287.i

bb.in:                                            ; preds = %bb.im
  %i.akz = load ptr, ptr %i.akb, align 8, !tbaa !251
  %i.ala = load ptr, ptr %i.xo, align 8, !tbaa !254 ; 7 uses
  %i.alb = ptrtoint ptr %i.akz to i64
  %i.alc = ptrtoint ptr %i.ala to i64
  %i.ald = sub i64 %i.alb, %i.alc
  %i.ale = sdiv exact i64 %i.ald, 56
  %i.alf = trunc i64 %i.ale to i32
  %i.alg = load ptr, ptr %i.akc, align 8, !tbaa !255
  br label %bb.io

bb.io:                                            ; preds = %bb.iq, %bb.in
  %.0279.i = phi i32 [ 0, %bb.in ], [ %i.alq, %bb.iq ] ; 8 uses
  %.026.i.i.i322 = phi i32 [ -1, %bb.in ], [ %.127.i.i.i325, %bb.iq ]
  %.0.i.i.i323 = phi i32 [ %i.alf, %bb.in ], [ %.1.i.i.i326, %bb.iq ]
  %i.alh = sext i32 %.0279.i to i64
  %i.ali = getelementptr inbounds nuw [24 x i8], ptr %i.alg, i64 %i.alh ; 3 uses
  %i.alj = getelementptr inbounds nuw i8, ptr %i.ali, i64 4
  %i.alk = load i32, ptr %i.alj, align 4, !tbaa !258 ; 2 uses
  %i.all = icmp slt i32 %i.akp, %i.alk
  br i1 %i.all, label %bb.iq, label %bb.ip

bb.ip:                                            ; preds = %bb.io
  %i.alm = getelementptr inbounds nuw i8, ptr %i.ali, i64 8
  %i.aln = load i32, ptr %i.alm, align 4, !tbaa !260
  %.not.i.i.i324 = icmp slt i32 %i.akp, %i.aln
  br i1 %.not.i.i.i324, label %_ZL20mtopGetMolblockIndexRK10gmx_mtop_tiPiS2_S2_.exit.i.i327, label %bb.iq

bb.iq:                                            ; preds = %bb.ip, %bb.io
  %.127.i.i.i325 = phi i32 [ %.026.i.i.i322, %bb.io ], [ %.0279.i, %bb.ip ] ; 2 uses
  %.1.i.i.i326 = phi i32 [ %.0279.i, %bb.io ], [ %.0.i.i.i323, %bb.ip ] ; 2 uses
  %i.alo = add nsw i32 %.127.i.i.i325, 1
  %i.alp = add i32 %i.alo, %.1.i.i.i326
  %i.alq = ashr i32 %i.alp, 1
  br label %bb.io, !llvm.loop !261

_ZL20mtopGetMolblockIndexRK10gmx_mtop_tiPiS2_S2_.exit.i.i327: ; preds = %bb.ip
  %i.alr = sub nsw i32 %i.akp, %i.alk
  %i.als = load i32, ptr %i.ali, align 4, !tbaa !262
  %i.alt = sdiv i32 %i.alr, %i.als                ; 4 uses
end_hunk_1
