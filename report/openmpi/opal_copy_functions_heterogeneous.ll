Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/opal_copy_functions_heterogeneous?download=true
inline.NumInlined: 51
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 56
loop-unroll.NumRuntimeUnrolled: 43
loop-unroll.NumUnrolled: 99
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@opal_datatype_heterogeneous_copy_functions = local_unnamed_addr global [28 x ptr] [ptr null, ptr null, ptr null, ptr null, ptr @copy_int1_heterogeneous, ptr @copy_int2_heterogeneous, ptr @copy_int4_heterogeneous, ptr @copy_int8_heterogeneous, ptr null, ptr @copy_int1_heterogeneous, ptr @copy_int2_heterogeneous, ptr @copy_int4_heterogeneous, ptr @copy_int8_heterogeneous, ptr null, ptr @copy_float2_heterogeneous, ptr @copy_float4_heterogeneous, ptr @copy_float8_heterogeneous, ptr null, ptr @copy_float16_heterogeneous, ptr @copy_short_float_complex_heterogeneous, ptr @copy_float_complex_heterogeneous, ptr @copy_double_complex_heterogeneous, ptr @copy_long_double_complex_heterogeneous, ptr @copy_cxx_bool_heterogeneous, ptr @copy_wchar_heterogeneous, ptr @copy_long_heterogeneous, ptr @copy_unsigned_long_heterogeneous, ptr null], align 16
@opal_local_arch = external local_unnamed_addr global i32, align 4
@alignment_of_long_double.val = internal unnamed_addr global i1 false, align 8

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @copy_int1_heterogeneous(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i64 noundef %4, ptr nofree noundef writeonly captures(none) %5, i64 %6, i64 noundef %7, ptr nofree noundef writeonly captures(none) %8) #0 {
datatype_check.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !23
  %i.c = and i32 %i.b, 65536
  %.not = icmp eq i32 %i.c, 0                     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.opal_local_arch = select i1 %.not, ptr %i.d, ptr @opal_local_arch
  %opal_local_arch. = select i1 %.not, ptr @opal_local_arch, ptr %i.d
  %.0 = load i32, ptr %opal_local_arch., align 4, !tbaa !24
  %.028 = load i32, ptr %.opal_local_arch, align 4, !tbaa !24
  %spec.select = tail call i64 @llvm.umin.i64(i64 %1, i64 %3) ; 12 uses
  %i.e = icmp eq i64 %7, 1
  %i.f = icmp eq i64 %4, 1
  %or.cond = and i1 %i.f, %i.e                    ; 2 uses
  %.030 = select i1 %or.cond, i64 %spec.select, i64 1 ; 6 uses
  %.029 = select i1 %or.cond, i64 1, i64 %spec.select ; 10 uses
  %i.g = xor i32 %.028, %.0
  %i.h = and i32 %i.g, 8
  %.not34 = icmp eq i32 %i.h, 0
  br i1 %.not34, label %opal_dt_swap_bytes.exit.us.preheader, label %datatype_check.exit.split

opal_dt_swap_bytes.exit.us.preheader:             ; preds = %datatype_check.exit
  %i.i = add i64 %.029, -1
  %xtraiter72 = and i64 %.029, 3                  ; 2 uses
  %lcmp.mod73.not = icmp eq i64 %xtraiter72, 0
  br i1 %lcmp.mod73.not, label %opal_dt_swap_bytes.exit.us.prol.loopexit, label %opal_dt_swap_bytes.exit.us.prol

opal_dt_swap_bytes.exit.us.prol:                  ; preds = %opal_dt_swap_bytes.exit.us.preheader, %opal_dt_swap_bytes.exit.us.prol
  %.032.us.prol = phi ptr [ %i.j, %opal_dt_swap_bytes.exit.us.prol ], [ %5, %opal_dt_swap_bytes.exit.us.preheader ] ; 2 uses
  %.031.us.prol = phi ptr [ %i.k, %opal_dt_swap_bytes.exit.us.prol ], [ %2, %opal_dt_swap_bytes.exit.us.preheader ] ; 2 uses
  %.1.us.prol = phi i64 [ %i.l, %opal_dt_swap_bytes.exit.us.prol ], [ %.029, %opal_dt_swap_bytes.exit.us.preheader ]
  %prol.iter74 = phi i64 [ %prol.iter74.next, %opal_dt_swap_bytes.exit.us.prol ], [ 0, %opal_dt_swap_bytes.exit.us.preheader ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.032.us.prol, ptr align 1 %.031.us.prol, i64 %.030, i1 false)
  %i.j = getelementptr inbounds i8, ptr %.032.us.prol, i64 %7 ; 2 uses
  %i.k = getelementptr inbounds i8, ptr %.031.us.prol, i64 %4 ; 2 uses
  %i.l = add i64 %.1.us.prol, -1                  ; 2 uses
  %prol.iter74.next = add i64 %prol.iter74, 1     ; 2 uses
  %prol.iter74.cmp.not = icmp eq i64 %prol.iter74.next, %xtraiter72
  br i1 %prol.iter74.cmp.not, label %opal_dt_swap_bytes.exit.us.prol.loopexit, label %opal_dt_swap_bytes.exit.us.prol, !llvm.loop !36

opal_dt_swap_bytes.exit.us.prol.loopexit:         ; preds = %opal_dt_swap_bytes.exit.us.prol, %opal_dt_swap_bytes.exit.us.preheader
  %.032.us.unr = phi ptr [ %5, %opal_dt_swap_bytes.exit.us.preheader ], [ %i.j, %opal_dt_swap_bytes.exit.us.prol ]
  %.031.us.unr = phi ptr [ %2, %opal_dt_swap_bytes.exit.us.preheader ], [ %i.k, %opal_dt_swap_bytes.exit.us.prol ]
  %.1.us.unr = phi i64 [ %.029, %opal_dt_swap_bytes.exit.us.preheader ], [ %i.l, %opal_dt_swap_bytes.exit.us.prol ]
  %i.m = icmp ult i64 %i.i, 3
  br i1 %i.m, label %.split.us, label %opal_dt_swap_bytes.exit.us

opal_dt_swap_bytes.exit.us:                       ; preds = %opal_dt_swap_bytes.exit.us.prol.loopexit, %opal_dt_swap_bytes.exit.us
  %.032.us = phi ptr [ %i.t, %opal_dt_swap_bytes.exit.us ], [ %.032.us.unr, %opal_dt_swap_bytes.exit.us.prol.loopexit ] ; 2 uses
  %.031.us = phi ptr [ %i.u, %opal_dt_swap_bytes.exit.us ], [ %.031.us.unr, %opal_dt_swap_bytes.exit.us.prol.loopexit ] ; 2 uses
  %.1.us = phi i64 [ %i.v, %opal_dt_swap_bytes.exit.us ], [ %.1.us.unr, %opal_dt_swap_bytes.exit.us.prol.loopexit ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.032.us, ptr align 1 %.031.us, i64 %.030, i1 false)
  %i.n = getelementptr inbounds i8, ptr %.032.us, i64 %7 ; 2 uses
  %i.o = getelementptr inbounds i8, ptr %.031.us, i64 %4 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.n, ptr align 1 %i.o, i64 %.030, i1 false)
  %i.p = getelementptr inbounds i8, ptr %i.n, i64 %7 ; 2 uses
  %i.q = getelementptr inbounds i8, ptr %i.o, i64 %4 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.p, ptr align 1 %i.q, i64 %.030, i1 false)
  %i.r = getelementptr inbounds i8, ptr %i.p, i64 %7 ; 2 uses
  %i.s = getelementptr inbounds i8, ptr %i.q, i64 %4 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.r, ptr align 1 %i.s, i64 %.030, i1 false)
  %i.t = getelementptr inbounds i8, ptr %i.r, i64 %7
  %i.u = getelementptr inbounds i8, ptr %i.s, i64 %4
  %i.v = add i64 %.1.us, -4                       ; 2 uses
  %.not35.us.3 = icmp eq i64 %i.v, 0
  br i1 %.not35.us.3, label %.split.us, label %opal_dt_swap_bytes.exit.us, !llvm.loop !37

datatype_check.exit.split:                        ; preds = %datatype_check.exit
  %i.w = icmp ugt i64 %.030, 1
  br i1 %i.w, label %.preheader.us.preheader, label %.preheader.preheader

.preheader.preheader:                             ; preds = %datatype_check.exit.split
  %i.x = add i64 %.029, -1
  %xtraiter = and i64 %.029, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.prol.loopexit, label %.preheader.prol

.preheader.prol:                                  ; preds = %.preheader.preheader, %.preheader.prol
  %.032.prol = phi ptr [ %i.z, %.preheader.prol ], [ %5, %.preheader.preheader ] ; 2 uses
  %.031.prol = phi ptr [ %i.aa, %.preheader.prol ], [ %2, %.preheader.preheader ] ; 2 uses
  %.1.prol = phi i64 [ %i.ab, %.preheader.prol ], [ %.029, %.preheader.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.preheader.prol ], [ 0, %.preheader.preheader ]
  %i.y = load i8, ptr %.031.prol, align 1, !tbaa !27
  store i8 %i.y, ptr %.032.prol, align 1, !tbaa !27
  %i.z = getelementptr inbounds i8, ptr %.032.prol, i64 %7 ; 2 uses
  %i.aa = getelementptr inbounds i8, ptr %.031.prol, i64 %4 ; 2 uses
  %i.ab = add i64 %.1.prol, -1                    ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader.prol.loopexit, label %.preheader.prol, !llvm.loop !38

.preheader.prol.loopexit:                         ; preds = %.preheader.prol, %.preheader.preheader
  %.032.unr = phi ptr [ %5, %.preheader.preheader ], [ %i.z, %.preheader.prol ]
  %.031.unr = phi ptr [ %2, %.preheader.preheader ], [ %i.aa, %.preheader.prol ]
  %.1.unr = phi i64 [ %.029, %.preheader.preheader ], [ %i.ab, %.preheader.prol ]
  %i.ac = icmp ult i64 %i.x, 7
  br i1 %i.ac, label %.split.us, label %.preheader

.preheader.us.preheader:                          ; preds = %datatype_check.exit.split
  %scevgep = getelementptr i8, ptr %5, i64 1
  %i.ad = add i64 %.029, -1                       ; 2 uses
  %i.ae = mul i64 %7, %i.ad
  %i.af = add i64 %spec.select, %i.ae
  %i.ag = add i64 %i.af, 1
  %i.ah = icmp ne i64 %spec.select, 1
  %umin = zext i1 %i.ah to i64                    ; 2 uses
  %i.ai = sub i64 %i.ag, %umin
  %scevgep53 = getelementptr i8, ptr %5, i64 %i.ai
  %scevgep54 = getelementptr i8, ptr %2, i64 1
  %i.aj = mul i64 %4, %i.ad
  %i.ak = add i64 %spec.select, %i.aj
  %i.al = add i64 %i.ak, 1
  %i.am = sub i64 %i.al, %umin
  %scevgep55 = getelementptr i8, ptr %2, i64 %i.am
  %9 = icmp ne i64 %spec.select, 1
  %umin57.neg = sext i1 %9 to i64
  %10 = add i64 %spec.select, %umin57.neg         ; 7 uses
  %min.iters.check = icmp ult i64 %10, 4
  %bound0 = icmp ult ptr %scevgep, %scevgep55
  %bound1 = icmp ult ptr %scevgep54, %scevgep53
  %found.conflict = and i1 %bound0, %bound1
  %i.an = or i64 %4, %7
  %i.ao = icmp slt i64 %i.an, 0
  %i.ap = or i1 %found.conflict, %i.ao
  %min.iters.check58 = icmp ult i64 %10, 32
  %i.aq = and i64 %10, 28
  %n.vec = and i64 %10, -32                       ; 6 uses
  %i.ar = sub i64 %spec.select, %n.vec
  %cmp.n = icmp eq i64 %10, %n.vec
  %min.epilog.iters.check = icmp eq i64 %i.aq, 0
  %n.vec61 = and i64 %10, -4                      ; 5 uses
  %i.as = sub i64 %spec.select, %n.vec61
  %cmp.n67 = icmp eq i64 %10, %n.vec61
  br label %iter.check

iter.check:                                       ; preds = %.preheader.us.preheader, %opal_dt_swap_bytes.exit.loopexit.us
  %.032.us40 = phi ptr [ %i.bl, %opal_dt_swap_bytes.exit.loopexit.us ], [ %5, %.preheader.us.preheader ] ; 7 uses
  %.031.us41 = phi ptr [ %i.bm, %opal_dt_swap_bytes.exit.loopexit.us ], [ %2, %.preheader.us.preheader ] ; 7 uses
  %.1.us42 = phi i64 [ %i.bn, %opal_dt_swap_bytes.exit.loopexit.us ], [ %.029, %.preheader.us.preheader ]
  %i.at = load i8, ptr %.031.us41, align 1, !tbaa !27
  store i8 %i.at, ptr %.032.us40, align 1, !tbaa !27
  %brmerge = select i1 %min.iters.check, i1 true, i1 %i.ap
  br i1 %brmerge, label %.lr.ph.i.us.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check58, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.au = getelementptr i8, ptr %.031.us41, i64 %n.vec
  %i.av = getelementptr i8, ptr %.032.us40, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.031.us41, i64 %index ; 2 uses
  %next.gep59 = getelementptr i8, ptr %.032.us40, i64 %index ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %next.gep59, i64 1
  %i.ax = getelementptr inbounds nuw i8, ptr %next.gep, i64 1
  %i.ay = getelementptr inbounds nuw i8, ptr %next.gep, i64 17
  %wide.load = load <16 x i8>, ptr %i.ax, align 1, !tbaa !27, !alias.scope !45
  %wide.load60 = load <16 x i8>, ptr %i.ay, align 1, !tbaa !27, !alias.scope !45
  %i.az = getelementptr inbounds nuw i8, ptr %next.gep59, i64 17
  store <16 x i8> %wide.load, ptr %i.aw, align 1, !tbaa !27, !alias.scope !46, !noalias !45
  store <16 x i8> %wide.load60, ptr %i.az, align 1, !tbaa !27, !alias.scope !46, !noalias !45
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ba = icmp eq i64 %index.next, %n.vec
  br i1 %i.ba, label %middle.block, label %vector.body, !llvm.loop !42

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %opal_dt_swap_bytes.exit.loopexit.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %.lr.ph.i.us.preheader, label %vec.epilog.ph, !prof !49

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.bb = getelementptr i8, ptr %.031.us41, i64 %n.vec61
  %i.bc = getelementptr i8, ptr %.032.us40, i64 %n.vec61
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index62 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next66, %vec.epilog.vector.body ] ; 3 uses
  %next.gep63 = getelementptr i8, ptr %.031.us41, i64 %index62
  %next.gep64 = getelementptr i8, ptr %.032.us40, i64 %index62
  %i.bd = getelementptr inbounds nuw i8, ptr %next.gep64, i64 1
  %i.be = getelementptr inbounds nuw i8, ptr %next.gep63, i64 1
  %wide.load65 = load <4 x i8>, ptr %i.be, align 1, !tbaa !27, !alias.scope !45
  store <4 x i8> %wide.load65, ptr %i.bd, align 1, !tbaa !27, !alias.scope !46, !noalias !45
  %index.next66 = add nuw i64 %index62, 4         ; 2 uses
  %i.bf = icmp eq i64 %index.next66, %n.vec61
  br i1 %i.bf, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !43

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n67, label %opal_dt_swap_bytes.exit.loopexit.us, label %.lr.ph.i.us.preheader

.lr.ph.i.us.preheader:                            ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.036.i.us.ph = phi ptr [ %.031.us41, %iter.check ], [ %i.bb, %vec.epilog.middle.block ], [ %i.au, %vec.epilog.iter.check ]
  %.02535.i.us.ph = phi ptr [ %.032.us40, %iter.check ], [ %i.bc, %vec.epilog.middle.block ], [ %i.av, %vec.epilog.iter.check ]
  %.02934.i.us.ph = phi i64 [ %spec.select, %iter.check ], [ %i.as, %vec.epilog.middle.block ], [ %i.ar, %vec.epilog.iter.check ]
  br label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %.lr.ph.i.us.preheader, %.lr.ph.i.us
  %.036.i.us = phi ptr [ %i.bh, %.lr.ph.i.us ], [ %.036.i.us.ph, %.lr.ph.i.us.preheader ]
  %.02535.i.us = phi ptr [ %i.bg, %.lr.ph.i.us ], [ %.02535.i.us.ph, %.lr.ph.i.us.preheader ]
  %.02934.i.us = phi i64 [ %i.bj, %.lr.ph.i.us ], [ %.02934.i.us.ph, %.lr.ph.i.us.preheader ]
  %i.bg = getelementptr inbounds nuw i8, ptr %.02535.i.us, i64 1 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.036.i.us, i64 1 ; 2 uses
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !27
  store i8 %i.bi, ptr %i.bg, align 1, !tbaa !27
  %i.bj = add i64 %.02934.i.us, -1                ; 2 uses
  %i.bk = icmp ugt i64 %i.bj, 1
  br i1 %i.bk, label %.lr.ph.i.us, label %opal_dt_swap_bytes.exit.loopexit.us, !llvm.loop !44

opal_dt_swap_bytes.exit.loopexit.us:              ; preds = %.lr.ph.i.us, %vec.epilog.middle.block, %middle.block
  %i.bl = getelementptr inbounds i8, ptr %.032.us40, i64 %7
  %i.bm = getelementptr inbounds i8, ptr %.031.us41, i64 %4
  %i.bn = add i64 %.1.us42, -1                    ; 2 uses
  %.not35.us44 = icmp eq i64 %i.bn, 0
  br i1 %.not35.us44, label %.split.us, label %iter.check, !llvm.loop !37

.preheader:                                       ; preds = %.preheader.prol.loopexit, %.preheader
  %.032 = phi ptr [ %i.ck, %.preheader ], [ %.032.unr, %.preheader.prol.loopexit ] ; 2 uses
  %.031 = phi ptr [ %i.cl, %.preheader ], [ %.031.unr, %.preheader.prol.loopexit ] ; 2 uses
  %.1 = phi i64 [ %i.cm, %.preheader ], [ %.1.unr, %.preheader.prol.loopexit ]
  %i.bo = load i8, ptr %.031, align 1, !tbaa !27
  store i8 %i.bo, ptr %.032, align 1, !tbaa !27
  %i.bp = getelementptr inbounds i8, ptr %.032, i64 %7 ; 2 uses
  %i.bq = getelementptr inbounds i8, ptr %.031, i64 %4 ; 2 uses
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !27
  store i8 %i.br, ptr %i.bp, align 1, !tbaa !27
  %i.bs = getelementptr inbounds i8, ptr %i.bp, i64 %7 ; 2 uses
  %i.bt = getelementptr inbounds i8, ptr %i.bq, i64 %4 ; 2 uses
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !27
  store i8 %i.bu, ptr %i.bs, align 1, !tbaa !27
  %i.bv = getelementptr inbounds i8, ptr %i.bs, i64 %7 ; 2 uses
  %i.bw = getelementptr inbounds i8, ptr %i.bt, i64 %4 ; 2 uses
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !27
  store i8 %i.bx, ptr %i.bv, align 1, !tbaa !27
  %i.by = getelementptr inbounds i8, ptr %i.bv, i64 %7 ; 2 uses
  %i.bz = getelementptr inbounds i8, ptr %i.bw, i64 %4 ; 2 uses
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !27
  store i8 %i.ca, ptr %i.by, align 1, !tbaa !27
  %i.cb = getelementptr inbounds i8, ptr %i.by, i64 %7 ; 2 uses
  %i.cc = getelementptr inbounds i8, ptr %i.bz, i64 %4 ; 2 uses
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !27
  store i8 %i.cd, ptr %i.cb, align 1, !tbaa !27
  %i.ce = getelementptr inbounds i8, ptr %i.cb, i64 %7 ; 2 uses
  %i.cf = getelementptr inbounds i8, ptr %i.cc, i64 %4 ; 2 uses
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !27
  store i8 %i.cg, ptr %i.ce, align 1, !tbaa !27
  %i.ch = getelementptr inbounds i8, ptr %i.ce, i64 %7 ; 2 uses
  %i.ci = getelementptr inbounds i8, ptr %i.cf, i64 %4 ; 2 uses
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !27
  store i8 %i.cj, ptr %i.ch, align 1, !tbaa !27
  %i.ck = getelementptr inbounds i8, ptr %i.ch, i64 %7
  %i.cl = getelementptr inbounds i8, ptr %i.ci, i64 %4
  %i.cm = add i64 %.1, -8                         ; 2 uses
  %.not35.7 = icmp eq i64 %i.cm, 0
  br i1 %.not35.7, label %.split.us, label %.preheader, !llvm.loop !37

.split.us:                                        ; preds = %.preheader.prol.loopexit, %.preheader, %opal_dt_swap_bytes.exit.loopexit.us, %opal_dt_swap_bytes.exit.us.prol.loopexit, %opal_dt_swap_bytes.exit.us
  %i.cn = mul i64 %spec.select, %4
  store i64 %i.cn, ptr %8, align 8, !tbaa !28
  %i.co = trunc i64 %spec.select to i32
  ret i32 %i.co
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @copy_int2_heterogeneous(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i64 noundef %4, ptr nofree noundef writeonly captures(none) %5, i64 %6, i64 noundef %7, ptr nofree noundef writeonly captures(none) %8) #0 {
datatype_check.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !23
  %i.c = and i32 %i.b, 65536
  %.not = icmp eq i32 %i.c, 0                     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.opal_local_arch = select i1 %.not, ptr %i.d, ptr @opal_local_arch
  %opal_local_arch. = select i1 %.not, ptr @opal_local_arch, ptr %i.d
  %.0 = load i32, ptr %opal_local_arch., align 4, !tbaa !24
  %.028 = load i32, ptr %.opal_local_arch, align 4, !tbaa !24
  %i.e = shl i64 %1, 1
  %i.f = icmp ugt i64 %i.e, %3
  %i.g = lshr i64 %3, 1
  %spec.select = select i1 %i.f, i64 %i.g, i64 %1 ; 7 uses
  %i.h = icmp eq i64 %7, 2
  %i.i = icmp eq i64 %4, 2
  %or.cond = and i1 %i.i, %i.h                    ; 2 uses
  %.030 = select i1 %or.cond, i64 %spec.select, i64 1 ; 2 uses
  %.029 = select i1 %or.cond, i64 1, i64 %spec.select ; 12 uses
  %i.j = xor i32 %.028, %.0
  %i.k = and i32 %i.j, 8
  %.not34 = icmp eq i32 %i.k, 0
  %i.l = shl i64 %.030, 1                         ; 5 uses
  br i1 %.not34, label %opal_dt_swap_bytes.exit.us.preheader, label %datatype_check.exit.split

opal_dt_swap_bytes.exit.us.preheader:             ; preds = %datatype_check.exit
  %i.m = add i64 %.029, -1
  %xtraiter57 = and i64 %.029, 3                  ; 2 uses
  %lcmp.mod58.not = icmp eq i64 %xtraiter57, 0
  br i1 %lcmp.mod58.not, label %opal_dt_swap_bytes.exit.us.prol.loopexit, label %opal_dt_swap_bytes.exit.us.prol

opal_dt_swap_bytes.exit.us.prol:                  ; preds = %opal_dt_swap_bytes.exit.us.preheader, %opal_dt_swap_bytes.exit.us.prol
  %.032.us.prol = phi ptr [ %i.n, %opal_dt_swap_bytes.exit.us.prol ], [ %5, %opal_dt_swap_bytes.exit.us.preheader ] ; 2 uses
  %.031.us.prol = phi ptr [ %i.o, %opal_dt_swap_bytes.exit.us.prol ], [ %2, %opal_dt_swap_bytes.exit.us.preheader ] ; 2 uses
  %.1.us.prol = phi i64 [ %i.p, %opal_dt_swap_bytes.exit.us.prol ], [ %.029, %opal_dt_swap_bytes.exit.us.preheader ]
  %prol.iter59 = phi i64 [ %prol.iter59.next, %opal_dt_swap_bytes.exit.us.prol ], [ 0, %opal_dt_swap_bytes.exit.us.preheader ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.032.us.prol, ptr align 1 %.031.us.prol, i64 %i.l, i1 false)
  %i.n = getelementptr inbounds i8, ptr %.032.us.prol, i64 %7 ; 2 uses
  %i.o = getelementptr inbounds i8, ptr %.031.us.prol, i64 %4 ; 2 uses
  %i.p = add i64 %.1.us.prol, -1                  ; 2 uses
  %prol.iter59.next = add i64 %prol.iter59, 1     ; 2 uses
  %prol.iter59.cmp.not = icmp eq i64 %prol.iter59.next, %xtraiter57
  br i1 %prol.iter59.cmp.not, label %opal_dt_swap_bytes.exit.us.prol.loopexit, label %opal_dt_swap_bytes.exit.us.prol, !llvm.loop !50

opal_dt_swap_bytes.exit.us.prol.loopexit:         ; preds = %opal_dt_swap_bytes.exit.us.prol, %opal_dt_swap_bytes.exit.us.preheader
  %.032.us.unr = phi ptr [ %5, %opal_dt_swap_bytes.exit.us.preheader ], [ %i.n, %opal_dt_swap_bytes.exit.us.prol ]
  %.031.us.unr = phi ptr [ %2, %opal_dt_swap_bytes.exit.us.preheader ], [ %i.o, %opal_dt_swap_bytes.exit.us.prol ]
  %.1.us.unr = phi i64 [ %.029, %opal_dt_swap_bytes.exit.us.preheader ], [ %i.p, %opal_dt_swap_bytes.exit.us.prol ]
  %i.q = icmp ult i64 %i.m, 3
  br i1 %i.q, label %.split.us, label %opal_dt_swap_bytes.exit.us

opal_dt_swap_bytes.exit.us:                       ; preds = %opal_dt_swap_bytes.exit.us.prol.loopexit, %opal_dt_swap_bytes.exit.us
  %.032.us = phi ptr [ %i.x, %opal_dt_swap_bytes.exit.us ], [ %.032.us.unr, %opal_dt_swap_bytes.exit.us.prol.loopexit ] ; 2 uses
  %.031.us = phi ptr [ %i.y, %opal_dt_swap_bytes.exit.us ], [ %.031.us.unr, %opal_dt_swap_bytes.exit.us.prol.loopexit ] ; 2 uses
  %.1.us = phi i64 [ %i.z, %opal_dt_swap_bytes.exit.us ], [ %.1.us.unr, %opal_dt_swap_bytes.exit.us.prol.loopexit ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.032.us, ptr align 1 %.031.us, i64 %i.l, i1 false)
  %i.r = getelementptr inbounds i8, ptr %.032.us, i64 %7 ; 2 uses
  %i.s = getelementptr inbounds i8, ptr %.031.us, i64 %4 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.r, ptr align 1 %i.s, i64 %i.l, i1 false)
  %i.t = getelementptr inbounds i8, ptr %i.r, i64 %7 ; 2 uses
  %i.u = getelementptr inbounds i8, ptr %i.s, i64 %4 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.t, ptr align 1 %i.u, i64 %i.l, i1 false)
  %i.v = getelementptr inbounds i8, ptr %i.t, i64 %7 ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 %4 ; 2 uses
end_hunk_0
