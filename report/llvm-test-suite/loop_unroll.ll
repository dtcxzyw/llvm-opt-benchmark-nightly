Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/loop_unroll?download=true
inline.NumInlined: 2075
inline.NumDeleted: 313
loop-unroll.NumCompletelyUnrolled: 92
loop-unroll.NumRuntimeUnrolled: 158
loop-unroll.NumUnrolled: 252
begin_hunk_0_@_Z27test_for_loop_unroll_factorILi3EiEvPKT0_iPKc:bb.a

_Z13record_resultdPKc.exit:                       ; preds = %._crit_edge27, %._crit_edge.i
  %i.cv = phi i32 [ %.pre2.i, %._crit_edge.i ], [ %i.cn, %._crit_edge27 ] ; 2 uses
  %i.cw = phi ptr [ %i.cr, %._crit_edge.i ], [ %i.cl, %._crit_edge27 ]
  %i.cx = sub nsw i64 %i.cj, %i.ck
  %i.cy = sitofp i64 %i.cx to double
  %i.cz = fdiv double %i.cy, 1.000000e+06
  %i.da = sext i32 %i.cv to i64
  %i.db = getelementptr inbounds [16 x i8], ptr %i.cw, i64 %i.da ; 2 uses
  store double %i.cz, ptr %i.db, align 8, !tbaa !14
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  store ptr %2, ptr %i.dc, align 8, !tbaa !15
  %i.dd = add nsw i32 %i.cv, 1
  store i32 %i.dd, ptr @current_test, align 4, !tbaa !7
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z27test_for_loop_unroll_factorILi2EiEvPKT0_iPKc(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 comdat {
bb.a:
  %i.a = tail call i64 @clock() #16
  store i64 %i.a, ptr @start_time, align 8, !tbaa !19
  %i.b = load i32, ptr @iterations, align 4, !tbaa !7 ; 4 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.preheader17.lr.ph, label %._crit_edge26

.preheader17.lr.ph:                               ; preds = %bb.a
  %i.d = icmp sgt i32 %1, 1
  br i1 %i.d, label %.preheader17.us.preheader, label %.preheader17.lr.ph.split

.preheader17.us.preheader:                        ; preds = %.preheader17.lr.ph
  %i.e = add nsw i32 %1, -1
  %i.f = zext nneg i32 %i.e to i64                ; 2 uses
  %i.g = add nsw i32 %1, -2                       ; 2 uses
  %i.h = and i32 %i.g, 2147483646
  %narrow = add nuw nsw i32 %i.h, 2
  %i.i = and i32 %i.g, -2                         ; 3 uses
  %i.j = add nuw nsw i32 %i.i, 2
  %i.k = zext nneg i32 %i.j to i64                ; 3 uses
  %i.l = icmp slt i32 %narrow, %1
  %i.m = tail call i64 @llvm.umax.i64(i64 %i.f, i64 2)
  %i.n = add nsw i64 %i.m, -1
  %i.o = lshr i64 %i.n, 1
  %i.p = add nuw nsw i64 %i.o, 1                  ; 2 uses
  %min.iters.check73 = icmp ult i32 %1, 16
  %n.vec75 = and i64 %i.p, 9223372036854775800    ; 3 uses
  %i.q = shl nuw i64 %n.vec75, 1
  %cmp.n87 = icmp eq i64 %i.p, %n.vec75
  %i.r = add i32 %i.i, 3
  %i.s = tail call i32 @llvm.smax.i32(i32 %1, i32 %i.r)
  %i.t = add nsw i32 %i.s, -3
  %i.u = sub i32 %i.t, %i.i                       ; 2 uses
  %i.v = zext i32 %i.u to i64
  %i.w = add nuw nsw i64 %i.v, 1                  ; 2 uses
  %min.iters.check = icmp ult i32 %i.u, 7
  %n.vec = and i64 %i.w, 8589934584               ; 3 uses
  %i.x = add nuw nsw i64 %n.vec, %i.k
  %invariant.gep = getelementptr [4 x i8], ptr %0, i64 %i.k
  %cmp.n = icmp eq i64 %i.w, %n.vec
  br label %.preheader17.us

.preheader17.us:                                  ; preds = %.preheader17.us.preheader, %_Z9check_sumIiEvT_.exit.us
  %i.y = phi i32 [ %i.bi, %_Z9check_sumIiEvT_.exit.us ], [ %i.b, %.preheader17.us.preheader ]
  %.01225.us = phi i32 [ %i.bj, %_Z9check_sumIiEvT_.exit.us ], [ 0, %.preheader17.us.preheader ]
  br i1 %min.iters.check73, label %scalar.ph72.preheader, label %vector.body76

vector.body76:                                    ; preds = %.preheader17.us, %vector.body76
  %index77 = phi i64 [ %index.next84, %vector.body76 ], [ 0, %.preheader17.us ] ; 2 uses
  %vec.phi78 = phi <4 x i32> [ %i.aj, %vector.body76 ], [ zeroinitializer, %.preheader17.us ]
  %vec.phi79 = phi <4 x i32> [ %i.ak, %vector.body76 ], [ zeroinitializer, %.preheader17.us ]
  %i.z = shl nuw i64 %index77, 1                  ; 2 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.z
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.z
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %wide.vec = load <8 x i32>, ptr %i.aa, align 4, !tbaa !7 ; 2 uses
  %strided.vec = shufflevector <8 x i32> %wide.vec, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec80 = shufflevector <8 x i32> %wide.vec, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %wide.vec81 = load <8 x i32>, ptr %i.ac, align 4, !tbaa !7 ; 2 uses
  %strided.vec82 = shufflevector <8 x i32> %wide.vec81, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec83 = shufflevector <8 x i32> %wide.vec81, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.ad = add <4 x i32> %strided.vec80, %strided.vec
  %i.ae = add <4 x i32> %strided.vec83, %strided.vec82
  %i.af = mul <4 x i32> %i.ad, splat (i32 269850533)
  %i.ag = mul <4 x i32> %i.ae, splat (i32 269850533)
  %i.ah = add <4 x i32> %vec.phi78, splat (i32 2018317168)
  %i.ai = add <4 x i32> %vec.phi79, splat (i32 2018317168)
  %i.aj = add <4 x i32> %i.ah, %i.af              ; 2 uses
  %i.ak = add <4 x i32> %i.ai, %i.ag              ; 2 uses
  %index.next84 = add nuw i64 %index77, 8         ; 2 uses
  %i.al = icmp eq i64 %index.next84, %n.vec75
  br i1 %i.al, label %middle.block85, label %vector.body76, !llvm.loop !187

middle.block85:                                   ; preds = %vector.body76
  %bin.rdx86 = add <4 x i32> %i.ak, %i.aj
  %i.am = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx86) ; 2 uses
  br i1 %cmp.n87, label %..preheader_crit_edge.us, label %scalar.ph72.preheader

scalar.ph72.preheader:                            ; preds = %.preheader17.us, %middle.block85
  %indvars.iv.ph = phi i64 [ 0, %.preheader17.us ], [ %i.q, %middle.block85 ]
  %.01518.us.ph = phi i32 [ 0, %.preheader17.us ], [ %i.am, %middle.block85 ]
  br label %scalar.ph72

scalar.ph72:                                      ; preds = %scalar.ph72.preheader, %scalar.ph72
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph72 ], [ %indvars.iv.ph, %scalar.ph72.preheader ] ; 2 uses
  %.01518.us = phi i32 [ %i.as, %scalar.ph72 ], [ %.01518.us.ph, %scalar.ph72.preheader ]
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !7
  %i.ap = getelementptr i8, ptr %i.an, i64 4
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !7
  %reass.add.us = add i32 %i.aq, %i.ao
  %reass.mul.us = mul i32 %reass.add.us, 269850533
  %i.ar = add i32 %.01518.us, 2018317168
  %i.as = add i32 %i.ar, %reass.mul.us            ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.at = icmp samesign ult i64 %indvars.iv.next, %i.f
  br i1 %i.at, label %scalar.ph72, label %..preheader_crit_edge.us, !llvm.loop !188

.lr.ph23.us:                                      ; preds = %.lr.ph23.us.preheader90, %.lr.ph23.us
  %indvars.iv43 = phi i64 [ %indvars.iv.next44, %.lr.ph23.us ], [ %indvars.iv43.ph, %.lr.ph23.us.preheader90 ] ; 2 uses
  %.11621.us = phi i32 [ %i.ay, %.lr.ph23.us ], [ %.11621.us.ph, %.lr.ph23.us.preheader90 ]
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv43
  %i.av = load i32, ptr %i.au, align 4, !tbaa !7
  %i.aw = mul i32 %i.av, 269850533
  %i.ax = add i32 %.11621.us, -1138325064
  %i.ay = add i32 %i.ax, %i.aw                    ; 2 uses
  %indvars.iv.next44 = add nuw nsw i64 %indvars.iv43, 1 ; 2 uses
  %i.az = trunc nuw i64 %indvars.iv.next44 to i32
  %i.ba = icmp sgt i32 %1, %i.az
  br i1 %i.ba, label %.lr.ph23.us, label %._crit_edge.us, !llvm.loop !189

._crit_edge.us:                                   ; preds = %.lr.ph23.us, %middle.block, %..preheader_crit_edge.us
  %.116.lcssa.us = phi i32 [ %.lcssa, %..preheader_crit_edge.us ], [ %i.bu, %middle.block ], [ %i.ay, %.lr.ph23.us ]
  %i.bb = load double, ptr @init_value, align 8, !tbaa !20
  %i.bc = fptosi double %i.bb to i32
  %i.bd = mul i32 %i.bc, -1564285888
  %i.be = add i32 %i.bd, -1269844480
  %i.bf = icmp eq i32 %.116.lcssa.us, %i.be
  br i1 %i.bf, label %_Z9check_sumIiEvT_.exit.us, label %bb.b

bb.b:                                             ; preds = %._crit_edge.us
  %i.bg = load i32, ptr @current_test, align 4, !tbaa !7
  %i.bh = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.bg) ; 0 uses
  %.pre50.a = load i32, ptr @iterations, align 4, !tbaa !7
  br label %_Z9check_sumIiEvT_.exit.us

_Z9check_sumIiEvT_.exit.us:                       ; preds = %bb.b, %._crit_edge.us
  %i.bi = phi i32 [ %.pre50.a, %bb.b ], [ %i.y, %._crit_edge.us ] ; 2 uses
  %i.bj = add nuw nsw i32 %.01225.us, 1           ; 2 uses
  %i.bk = icmp slt i32 %i.bj, %i.bi
  br i1 %i.bk, label %.preheader17.us, label %._crit_edge26, !llvm.loop !190

..preheader_crit_edge.us:                         ; preds = %scalar.ph72, %middle.block85
  %.lcssa = phi i32 [ %i.am, %middle.block85 ], [ %i.as, %scalar.ph72 ] ; 3 uses
  br i1 %i.l, label %.lr.ph23.us.preheader, label %._crit_edge.us

.lr.ph23.us.preheader:                            ; preds = %..preheader_crit_edge.us
  br i1 %min.iters.check, label %.lr.ph23.us.preheader90, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph23.us.preheader
  %i.bl = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.lcssa, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.bl, %vector.ph ], [ %i.br, %vector.body ]
  %vec.phi70 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bs, %vector.body ]
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load = load <4 x i32>, ptr %gep, align 4, !tbaa !7
  %wide.load71 = load <4 x i32>, ptr %i.bm, align 4, !tbaa !7
  %i.bn = mul <4 x i32> %wide.load, splat (i32 269850533)
  %i.bo = mul <4 x i32> %wide.load71, splat (i32 269850533)
  %i.bp = add <4 x i32> %vec.phi, splat (i32 -1138325064)
  %i.bq = add <4 x i32> %vec.phi70, splat (i32 -1138325064)
  %i.br = add <4 x i32> %i.bp, %i.bn              ; 2 uses
  %i.bs = add <4 x i32> %i.bq, %i.bo              ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bt = icmp eq i64 %index.next, %n.vec
  br i1 %i.bt, label %middle.block, label %vector.body, !llvm.loop !191

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.bs, %i.br
  %i.bu = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %._crit_edge.us, label %.lr.ph23.us.preheader90

.lr.ph23.us.preheader90:                          ; preds = %.lr.ph23.us.preheader, %middle.block
  %indvars.iv43.ph = phi i64 [ %i.k, %.lr.ph23.us.preheader ], [ %i.x, %middle.block ]
  %.11621.us.ph = phi i32 [ %.lcssa, %.lr.ph23.us.preheader ], [ %i.bu, %middle.block ]
  br label %.lr.ph23.us

.preheader17.lr.ph.split:                         ; preds = %.preheader17.lr.ph
  %i.bv = icmp eq i32 %1, 1
  br i1 %i.bv, label %.preheader17.us27.preheader, label %.preheader17.preheader

.preheader17.preheader:                           ; preds = %.preheader17.lr.ph.split
  %.pre46 = load double, ptr @init_value, align 8, !tbaa !20
  br label %.preheader17

.preheader17.us27.preheader:                      ; preds = %.preheader17.lr.ph.split
  %.pre48.pre51 = load i32, ptr %0, align 4, !tbaa !7
  br label %._crit_edge.us32

._crit_edge.us32:                                 ; preds = %.preheader17.us27.preheader, %_Z9check_sumIiEvT_.exit.us35
  %.pre48.a = phi i32 [ %.pre4852, %_Z9check_sumIiEvT_.exit.us35 ], [ %.pre48.pre51, %.preheader17.us27.preheader ] ; 2 uses
  %3 = phi i32 [ %i.cc, %_Z9check_sumIiEvT_.exit.us35 ], [ %i.b, %.preheader17.us27.preheader ]
  %.01225.us28.a = phi i32 [ %i.cd, %_Z9check_sumIiEvT_.exit.us35 ], [ 0, %.preheader17.us27.preheader ]
  %4 = mul i32 %.pre48.a, 269850533
  %5 = load double, ptr @init_value, align 8, !tbaa !20
  %i.bw = fptosi double %5 to i32
  %i.bx = mul i32 %i.bw, -1564285888
  %i.by = add i32 %i.bx, -131519416
  %i.bz = icmp eq i32 %4, %i.by
  br i1 %i.bz, label %_Z9check_sumIiEvT_.exit.us35, label %bb.c

bb.c:                                             ; preds = %._crit_edge.us32
  %i.ca = load i32, ptr @current_test, align 4, !tbaa !7
  %i.cb = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.ca) ; 0 uses
  %.pre49 = load i32, ptr @iterations, align 4, !tbaa !7
  %.pre48.pre = load i32, ptr %0, align 4, !tbaa !7
  br label %_Z9check_sumIiEvT_.exit.us35

_Z9check_sumIiEvT_.exit.us35:                     ; preds = %bb.c, %._crit_edge.us32
  %.pre4852 = phi i32 [ %.pre48.pre, %bb.c ], [ %.pre48.a, %._crit_edge.us32 ]
  %i.cc = phi i32 [ %.pre49, %bb.c ], [ %3, %._crit_edge.us32 ] ; 2 uses
  %i.cd = add nuw nsw i32 %.01225.us28.a, 1       ; 2 uses
  %i.ce = icmp slt i32 %i.cd, %i.cc
  br i1 %i.ce, label %._crit_edge.us32, label %._crit_edge26, !llvm.loop !190

.preheader17:                                     ; preds = %.preheader17.preheader, %_Z9check_sumIiEvT_.exit
  %i.cf = phi i32 [ %i.cm, %_Z9check_sumIiEvT_.exit ], [ %i.b, %.preheader17.preheader ]
  %i.cg = phi double [ %i.cn, %_Z9check_sumIiEvT_.exit ], [ %.pre46, %.preheader17.preheader ] ; 2 uses
  %.01225 = phi i32 [ %i.co, %_Z9check_sumIiEvT_.exit ], [ 0, %.preheader17.preheader ]
  %i.ch = fptosi double %i.cg to i32
  %i.ci = mul i32 %i.ch, -1564285888
  %i.cj = icmp eq i32 %i.ci, 1269844480
  br i1 %i.cj, label %_Z9check_sumIiEvT_.exit, label %bb.d

bb.d:                                             ; preds = %.preheader17
  %i.ck = load i32, ptr @current_test, align 4, !tbaa !7
  %i.cl = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.ck) ; 0 uses
  %.pre = load double, ptr @init_value, align 8, !tbaa !20
  %.pre47 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %_Z9check_sumIiEvT_.exit

_Z9check_sumIiEvT_.exit:                          ; preds = %.preheader17, %bb.d
  %i.cm = phi i32 [ %i.cf, %.preheader17 ], [ %.pre47, %bb.d ] ; 2 uses
  %i.cn = phi double [ %i.cg, %.preheader17 ], [ %.pre, %bb.d ]
  %i.co = add nuw nsw i32 %.01225, 1              ; 2 uses
  %i.cp = icmp slt i32 %i.co, %i.cm
  br i1 %i.cp, label %.preheader17, label %._crit_edge26, !llvm.loop !190

._crit_edge26:                                    ; preds = %_Z9check_sumIiEvT_.exit, %_Z9check_sumIiEvT_.exit.us35, %_Z9check_sumIiEvT_.exit.us, %bb.a
  %i.cq = tail call i64 @clock() #16              ; 2 uses
  store i64 %i.cq, ptr @end_time, align 8, !tbaa !19
  %i.cr = load i64, ptr @start_time, align 8, !tbaa !19
  %i.cs = load ptr, ptr @results, align 8, !tbaa !10 ; 3 uses
  %i.ct = icmp ne ptr %i.cs, null
  %.pre.i = load i32, ptr @allocated_results, align 4, !tbaa !7 ; 2 uses
  %i.cu = load i32, ptr @current_test, align 4    ; 2 uses
  %.not.i = icmp slt i32 %i.cu, %.pre.i
  %or.cond.i = select i1 %i.ct, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %_Z13record_resultdPKc.exit, label %bb.e

bb.e:                                             ; preds = %._crit_edge26
  %i.cv = add nsw i32 %.pre.i, 10                 ; 2 uses
  store i32 %i.cv, ptr @allocated_results, align 4, !tbaa !7
  %i.cw = sext i32 %i.cv to i64
  %i.cx = shl nsw i64 %i.cw, 4
  %i.cy = tail call ptr @realloc(ptr noundef %i.cs, i64 noundef %i.cx) #13 ; 3 uses
  store ptr %i.cy, ptr @results, align 8, !tbaa !10
  %i.cz = icmp eq ptr %i.cy, null
  br i1 %i.cz, label %bb.f, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.e
  %.pre2.i = load i32, ptr @current_test, align 4, !tbaa !7
  br label %_Z13record_resultdPKc.exit

bb.f:                                             ; preds = %bb.e
  %i.da = load i32, ptr @allocated_results, align 4, !tbaa !7
  %i.db = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.da) ; 0 uses
  tail call void @exit(i32 noundef -1) #14
  unreachable

_Z13record_resultdPKc.exit:                       ; preds = %._crit_edge26, %._crit_edge.i
  %i.dc = phi i32 [ %.pre2.i, %._crit_edge.i ], [ %i.cu, %._crit_edge26 ] ; 2 uses
  %i.dd = phi ptr [ %i.cy, %._crit_edge.i ], [ %i.cs, %._crit_edge26 ]
  %i.de = sub nsw i64 %i.cq, %i.cr
  %i.df = sitofp i64 %i.de to double
  %i.dg = fdiv double %i.df, 1.000000e+06
  %i.dh = sext i32 %i.dc to i64
  %i.di = getelementptr inbounds [16 x i8], ptr %i.dd, i64 %i.dh ; 2 uses
  store double %i.dg, ptr %i.di, align 8, !tbaa !14
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  store ptr %2, ptr %i.dj, align 8, !tbaa !15
  %i.dk = add nsw i32 %i.dc, 1
  store i32 %i.dk, ptr @current_test, align 4, !tbaa !7
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z27test_for_loop_unroll_factorILi1EiEvPKT0_iPKc(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 comdat {
bb.a:
  %i.a = tail call i64 @clock() #16
  store i64 %i.a, ptr @start_time, align 8, !tbaa !19
  %i.b = load i32, ptr @iterations, align 4, !tbaa !7 ; 3 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.preheader17.lr.ph, label %._crit_edge

.preheader17.lr.ph:                               ; preds = %bb.a
  %i.d = icmp sgt i32 %1, 0
  br i1 %i.d, label %.preheader17.us.preheader, label %.preheader17.preheader

.preheader17.preheader:                           ; preds = %.preheader17.lr.ph
  %.pre28 = load double, ptr @init_value, align 8, !tbaa !20
  br label %.preheader17

.preheader17.us.preheader:                        ; preds = %.preheader17.lr.ph
  %wide.trip.count = zext nneg i32 %1 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %1, 8
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.preheader17.us

.preheader17.us:                                  ; preds = %.preheader17.us.preheader, %_Z9check_sumIiEvT_.exit.us
  %i.e = phi i32 [ %i.w, %_Z9check_sumIiEvT_.exit.us ], [ %i.b, %.preheader17.us.preheader ]
  %.01225.us = phi i32 [ %i.x, %_Z9check_sumIiEvT_.exit.us ], [ 0, %.preheader17.us.preheader ]
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader17.us, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader17.us ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.l, %vector.body ], [ zeroinitializer, %.preheader17.us ]
  %vec.phi41 = phi <4 x i32> [ %i.m, %vector.body ], [ zeroinitializer, %.preheader17.us ]
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %wide.load = load <4 x i32>, ptr %i.f, align 4, !tbaa !7
  %wide.load42 = load <4 x i32>, ptr %i.g, align 4, !tbaa !7
  %i.h = mul <4 x i32> %wide.load, splat (i32 269850533)
  %i.i = mul <4 x i32> %wide.load42, splat (i32 269850533)
  %i.j = add <4 x i32> %vec.phi, splat (i32 -1138325064)
  %i.k = add <4 x i32> %vec.phi41, splat (i32 -1138325064)
  %i.l = add <4 x i32> %i.j, %i.h                 ; 2 uses
  %i.m = add <4 x i32> %i.k, %i.i                 ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.n = icmp eq i64 %index.next, %n.vec
  br i1 %i.n, label %middle.block, label %vector.body, !llvm.loop !192

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.m, %i.l
  %i.o = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %..preheader_crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader17.us, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.preheader17.us ], [ %n.vec, %middle.block ]
  %.01518.us.ph = phi i32 [ 0, %.preheader17.us ], [ %i.o, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.01518.us = phi i32 [ %i.t, %scalar.ph ], [ %.01518.us.ph, %scalar.ph.preheader ]
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.q = load i32, ptr %i.p, align 4, !tbaa !7
  %i.r = mul i32 %i.q, 269850533
  %i.s = add i32 %.01518.us, -1138325064
  %i.t = add i32 %i.s, %i.r                       ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %..preheader_crit_edge.us, label %scalar.ph, !llvm.loop !193

bb.b:                                             ; preds = %..preheader_crit_edge.us
  %i.u = load i32, ptr @current_test, align 4, !tbaa !7
  %i.v = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.u) ; 0 uses
  %.pre30 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %_Z9check_sumIiEvT_.exit.us

_Z9check_sumIiEvT_.exit.us:                       ; preds = %..preheader_crit_edge.us, %bb.b
  %i.w = phi i32 [ %i.e, %..preheader_crit_edge.us ], [ %.pre30, %bb.b ] ; 2 uses
  %i.x = add nuw nsw i32 %.01225.us, 1            ; 2 uses
  %i.y = icmp slt i32 %i.x, %i.w
  br i1 %i.y, label %.preheader17.us, label %._crit_edge, !llvm.loop !194

..preheader_crit_edge.us:                         ; preds = %scalar.ph, %middle.block
  %.lcssa = phi i32 [ %i.o, %middle.block ], [ %i.t, %scalar.ph ]
  %i.z = load double, ptr @init_value, align 8, !tbaa !20
  %i.aa = fptosi double %i.z to i32
  %i.ab = mul i32 %i.aa, -1564285888
  %i.ac = add i32 %i.ab, -1269844480
  %i.ad = icmp eq i32 %.lcssa, %i.ac
  br i1 %i.ad, label %_Z9check_sumIiEvT_.exit.us, label %bb.b

.preheader17:                                     ; preds = %.preheader17.preheader, %_Z9check_sumIiEvT_.exit
  %i.ae = phi i32 [ %i.al, %_Z9check_sumIiEvT_.exit ], [ %i.b, %.preheader17.preheader ]
  %i.af = phi double [ %i.am, %_Z9check_sumIiEvT_.exit ], [ %.pre28, %.preheader17.preheader ] ; 2 uses
  %.01225 = phi i32 [ %i.an, %_Z9check_sumIiEvT_.exit ], [ 0, %.preheader17.preheader ]
  %i.ag = fptosi double %i.af to i32
  %i.ah = mul i32 %i.ag, -1564285888
  %i.ai = icmp eq i32 %i.ah, 1269844480
  br i1 %i.ai, label %_Z9check_sumIiEvT_.exit, label %bb.c

bb.c:                                             ; preds = %.preheader17
  %i.aj = load i32, ptr @current_test, align 4, !tbaa !7
  %i.ak = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.aj) ; 0 uses
  %.pre = load double, ptr @init_value, align 8, !tbaa !20
  %.pre29 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %_Z9check_sumIiEvT_.exit

_Z9check_sumIiEvT_.exit:                          ; preds = %.preheader17, %bb.c
  %i.al = phi i32 [ %i.ae, %.preheader17 ], [ %.pre29, %bb.c ] ; 2 uses
  %i.am = phi double [ %i.af, %.preheader17 ], [ %.pre, %bb.c ]
  %i.an = add nuw nsw i32 %.01225, 1              ; 2 uses
  %i.ao = icmp slt i32 %i.an, %i.al
  br i1 %i.ao, label %.preheader17, label %._crit_edge, !llvm.loop !194

._crit_edge:                                      ; preds = %_Z9check_sumIiEvT_.exit, %_Z9check_sumIiEvT_.exit.us, %bb.a
  %i.ap = tail call i64 @clock() #16              ; 2 uses
  store i64 %i.ap, ptr @end_time, align 8, !tbaa !19
  %i.aq = load i64, ptr @start_time, align 8, !tbaa !19
  %i.ar = load ptr, ptr @results, align 8, !tbaa !10 ; 3 uses
  %i.as = icmp ne ptr %i.ar, null
  %.pre.i = load i32, ptr @allocated_results, align 4, !tbaa !7 ; 2 uses
  %i.at = load i32, ptr @current_test, align 4    ; 2 uses
  %.not.i = icmp slt i32 %i.at, %.pre.i
  %or.cond.i = select i1 %i.as, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %_Z13record_resultdPKc.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.au = add nsw i32 %.pre.i, 10                 ; 2 uses
end_hunk_0
begin_hunk_1_@_Z29test_while_loop_unroll_factorILi3EiEvPKT0_iPKc:bb.a

_Z13record_resultdPKc.exit:                       ; preds = %._crit_edge27, %._crit_edge.i
  %i.cv = phi i32 [ %.pre2.i, %._crit_edge.i ], [ %i.cn, %._crit_edge27 ] ; 2 uses
  %i.cw = phi ptr [ %i.cr, %._crit_edge.i ], [ %i.cl, %._crit_edge27 ]
  %i.cx = sub nsw i64 %i.cj, %i.ck
  %i.cy = sitofp i64 %i.cx to double
  %i.cz = fdiv double %i.cy, 1.000000e+06
  %i.da = sext i32 %i.cv to i64
  %i.db = getelementptr inbounds [16 x i8], ptr %i.cw, i64 %i.da ; 2 uses
  store double %i.cz, ptr %i.db, align 8, !tbaa !14
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  store ptr %2, ptr %i.dc, align 8, !tbaa !15
  %i.dd = add nsw i32 %i.cv, 1
  store i32 %i.dd, ptr @current_test, align 4, !tbaa !7
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z29test_while_loop_unroll_factorILi2EiEvPKT0_iPKc(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 comdat {
bb.a:
  %i.a = tail call i64 @clock() #16
  store i64 %i.a, ptr @start_time, align 8, !tbaa !19
  %i.b = load i32, ptr @iterations, align 4, !tbaa !7 ; 4 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.preheader17.lr.ph, label %._crit_edge26

.preheader17.lr.ph:                               ; preds = %bb.a
  %i.d = icmp sgt i32 %1, 1
  br i1 %i.d, label %.preheader17.us.preheader, label %.preheader17.lr.ph.split

.preheader17.us.preheader:                        ; preds = %.preheader17.lr.ph
  %i.e = add nsw i32 %1, -1
  %i.f = zext nneg i32 %i.e to i64                ; 2 uses
  %i.g = add nsw i32 %1, -2                       ; 2 uses
  %i.h = and i32 %i.g, 2147483646
  %narrow = add nuw nsw i32 %i.h, 2
  %i.i = and i32 %i.g, -2                         ; 3 uses
  %i.j = add nuw nsw i32 %i.i, 2
  %i.k = zext nneg i32 %i.j to i64                ; 3 uses
  %i.l = icmp slt i32 %narrow, %1
  %i.m = tail call i64 @llvm.umax.i64(i64 %i.f, i64 2)
  %i.n = add nsw i64 %i.m, -1
  %i.o = lshr i64 %i.n, 1
  %i.p = add nuw nsw i64 %i.o, 1                  ; 2 uses
  %min.iters.check73 = icmp ult i32 %1, 16
  %n.vec75 = and i64 %i.p, 9223372036854775800    ; 3 uses
  %i.q = shl nuw i64 %n.vec75, 1
  %cmp.n87 = icmp eq i64 %i.p, %n.vec75
  %i.r = add i32 %i.i, 3
  %i.s = tail call i32 @llvm.smax.i32(i32 %1, i32 %i.r)
  %i.t = add nsw i32 %i.s, -3
  %i.u = sub i32 %i.t, %i.i                       ; 2 uses
  %i.v = zext i32 %i.u to i64
  %i.w = add nuw nsw i64 %i.v, 1                  ; 2 uses
  %min.iters.check = icmp ult i32 %i.u, 7
  %n.vec = and i64 %i.w, 8589934584               ; 3 uses
  %i.x = add nuw nsw i64 %n.vec, %i.k
  %invariant.gep = getelementptr [4 x i8], ptr %0, i64 %i.k
  %cmp.n = icmp eq i64 %i.w, %n.vec
  br label %.preheader17.us

.preheader17.us:                                  ; preds = %.preheader17.us.preheader, %_Z9check_sumIiEvT_.exit.us
  %i.y = phi i32 [ %i.bi, %_Z9check_sumIiEvT_.exit.us ], [ %i.b, %.preheader17.us.preheader ]
  %.01225.us = phi i32 [ %i.bj, %_Z9check_sumIiEvT_.exit.us ], [ 0, %.preheader17.us.preheader ]
  br i1 %min.iters.check73, label %scalar.ph72.preheader, label %vector.body76

vector.body76:                                    ; preds = %.preheader17.us, %vector.body76
  %index77 = phi i64 [ %index.next84, %vector.body76 ], [ 0, %.preheader17.us ] ; 2 uses
  %vec.phi78 = phi <4 x i32> [ %i.aj, %vector.body76 ], [ zeroinitializer, %.preheader17.us ]
  %vec.phi79 = phi <4 x i32> [ %i.ak, %vector.body76 ], [ zeroinitializer, %.preheader17.us ]
  %i.z = shl nuw i64 %index77, 1                  ; 2 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.z
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.z
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %wide.vec = load <8 x i32>, ptr %i.aa, align 4, !tbaa !7 ; 2 uses
  %strided.vec = shufflevector <8 x i32> %wide.vec, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec80 = shufflevector <8 x i32> %wide.vec, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %wide.vec81 = load <8 x i32>, ptr %i.ac, align 4, !tbaa !7 ; 2 uses
  %strided.vec82 = shufflevector <8 x i32> %wide.vec81, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec83 = shufflevector <8 x i32> %wide.vec81, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.ad = add <4 x i32> %strided.vec80, %strided.vec
  %i.ae = add <4 x i32> %strided.vec83, %strided.vec82
  %i.af = mul <4 x i32> %i.ad, splat (i32 269850533)
  %i.ag = mul <4 x i32> %i.ae, splat (i32 269850533)
  %i.ah = add <4 x i32> %vec.phi78, splat (i32 2018317168)
  %i.ai = add <4 x i32> %vec.phi79, splat (i32 2018317168)
  %i.aj = add <4 x i32> %i.ah, %i.af              ; 2 uses
  %i.ak = add <4 x i32> %i.ai, %i.ag              ; 2 uses
  %index.next84 = add nuw i64 %index77, 8         ; 2 uses
  %i.al = icmp eq i64 %index.next84, %n.vec75
  br i1 %i.al, label %middle.block85, label %vector.body76, !llvm.loop !345

middle.block85:                                   ; preds = %vector.body76
  %bin.rdx86 = add <4 x i32> %i.ak, %i.aj
  %i.am = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx86) ; 2 uses
  br i1 %cmp.n87, label %..preheader_crit_edge.us, label %scalar.ph72.preheader

scalar.ph72.preheader:                            ; preds = %.preheader17.us, %middle.block85
  %indvars.iv.ph = phi i64 [ 0, %.preheader17.us ], [ %i.q, %middle.block85 ]
  %.01518.us.ph = phi i32 [ 0, %.preheader17.us ], [ %i.am, %middle.block85 ]
  br label %scalar.ph72

scalar.ph72:                                      ; preds = %scalar.ph72.preheader, %scalar.ph72
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph72 ], [ %indvars.iv.ph, %scalar.ph72.preheader ] ; 2 uses
  %.01518.us = phi i32 [ %i.as, %scalar.ph72 ], [ %.01518.us.ph, %scalar.ph72.preheader ]
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !7
  %i.ap = getelementptr i8, ptr %i.an, i64 4
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !7
  %reass.add.us = add i32 %i.aq, %i.ao
  %reass.mul.us = mul i32 %reass.add.us, 269850533
  %i.ar = add i32 %.01518.us, 2018317168
  %i.as = add i32 %i.ar, %reass.mul.us            ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.at = icmp samesign ult i64 %indvars.iv.next, %i.f
  br i1 %i.at, label %scalar.ph72, label %..preheader_crit_edge.us, !llvm.loop !346

.lr.ph23.us:                                      ; preds = %.lr.ph23.us.preheader90, %.lr.ph23.us
  %indvars.iv43 = phi i64 [ %indvars.iv.next44, %.lr.ph23.us ], [ %indvars.iv43.ph, %.lr.ph23.us.preheader90 ] ; 2 uses
  %.11621.us = phi i32 [ %i.ay, %.lr.ph23.us ], [ %.11621.us.ph, %.lr.ph23.us.preheader90 ]
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv43
  %i.av = load i32, ptr %i.au, align 4, !tbaa !7
  %i.aw = mul i32 %i.av, 269850533
  %i.ax = add i32 %.11621.us, -1138325064
  %i.ay = add i32 %i.ax, %i.aw                    ; 2 uses
  %indvars.iv.next44 = add nuw nsw i64 %indvars.iv43, 1 ; 2 uses
  %i.az = trunc nuw i64 %indvars.iv.next44 to i32
  %i.ba = icmp sgt i32 %1, %i.az
  br i1 %i.ba, label %.lr.ph23.us, label %._crit_edge.us, !llvm.loop !347

._crit_edge.us:                                   ; preds = %.lr.ph23.us, %middle.block, %..preheader_crit_edge.us
  %.116.lcssa.us = phi i32 [ %.lcssa, %..preheader_crit_edge.us ], [ %i.bu, %middle.block ], [ %i.ay, %.lr.ph23.us ]
  %i.bb = load double, ptr @init_value, align 8, !tbaa !20
  %i.bc = fptosi double %i.bb to i32
  %i.bd = mul i32 %i.bc, -1564285888
  %i.be = add i32 %i.bd, -1269844480
  %i.bf = icmp eq i32 %.116.lcssa.us, %i.be
  br i1 %i.bf, label %_Z9check_sumIiEvT_.exit.us, label %bb.b

bb.b:                                             ; preds = %._crit_edge.us
  %i.bg = load i32, ptr @current_test, align 4, !tbaa !7
  %i.bh = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.bg) ; 0 uses
  %.pre50.a = load i32, ptr @iterations, align 4, !tbaa !7
  br label %_Z9check_sumIiEvT_.exit.us

_Z9check_sumIiEvT_.exit.us:                       ; preds = %bb.b, %._crit_edge.us
  %i.bi = phi i32 [ %.pre50.a, %bb.b ], [ %i.y, %._crit_edge.us ] ; 2 uses
  %i.bj = add nuw nsw i32 %.01225.us, 1           ; 2 uses
  %i.bk = icmp slt i32 %i.bj, %i.bi
  br i1 %i.bk, label %.preheader17.us, label %._crit_edge26, !llvm.loop !348

..preheader_crit_edge.us:                         ; preds = %scalar.ph72, %middle.block85
  %.lcssa = phi i32 [ %i.am, %middle.block85 ], [ %i.as, %scalar.ph72 ] ; 3 uses
  br i1 %i.l, label %.lr.ph23.us.preheader, label %._crit_edge.us

.lr.ph23.us.preheader:                            ; preds = %..preheader_crit_edge.us
  br i1 %min.iters.check, label %.lr.ph23.us.preheader90, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph23.us.preheader
  %i.bl = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.lcssa, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.bl, %vector.ph ], [ %i.br, %vector.body ]
  %vec.phi70 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bs, %vector.body ]
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load = load <4 x i32>, ptr %gep, align 4, !tbaa !7
  %wide.load71 = load <4 x i32>, ptr %i.bm, align 4, !tbaa !7
  %i.bn = mul <4 x i32> %wide.load, splat (i32 269850533)
  %i.bo = mul <4 x i32> %wide.load71, splat (i32 269850533)
  %i.bp = add <4 x i32> %vec.phi, splat (i32 -1138325064)
  %i.bq = add <4 x i32> %vec.phi70, splat (i32 -1138325064)
  %i.br = add <4 x i32> %i.bp, %i.bn              ; 2 uses
  %i.bs = add <4 x i32> %i.bq, %i.bo              ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bt = icmp eq i64 %index.next, %n.vec
  br i1 %i.bt, label %middle.block, label %vector.body, !llvm.loop !349

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.bs, %i.br
  %i.bu = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %._crit_edge.us, label %.lr.ph23.us.preheader90

.lr.ph23.us.preheader90:                          ; preds = %.lr.ph23.us.preheader, %middle.block
  %indvars.iv43.ph = phi i64 [ %i.k, %.lr.ph23.us.preheader ], [ %i.x, %middle.block ]
  %.11621.us.ph = phi i32 [ %.lcssa, %.lr.ph23.us.preheader ], [ %i.bu, %middle.block ]
  br label %.lr.ph23.us

.preheader17.lr.ph.split:                         ; preds = %.preheader17.lr.ph
  %i.bv = icmp eq i32 %1, 1
  br i1 %i.bv, label %.preheader17.us27.preheader, label %.preheader17.preheader

.preheader17.preheader:                           ; preds = %.preheader17.lr.ph.split
  %.pre46 = load double, ptr @init_value, align 8, !tbaa !20
  br label %.preheader17

.preheader17.us27.preheader:                      ; preds = %.preheader17.lr.ph.split
  %.pre48.pre51 = load i32, ptr %0, align 4, !tbaa !7
  br label %._crit_edge.us32

._crit_edge.us32:                                 ; preds = %.preheader17.us27.preheader, %_Z9check_sumIiEvT_.exit.us35
  %.pre48.a = phi i32 [ %.pre4852, %_Z9check_sumIiEvT_.exit.us35 ], [ %.pre48.pre51, %.preheader17.us27.preheader ] ; 2 uses
  %3 = phi i32 [ %i.cc, %_Z9check_sumIiEvT_.exit.us35 ], [ %i.b, %.preheader17.us27.preheader ]
  %.01225.us28.a = phi i32 [ %i.cd, %_Z9check_sumIiEvT_.exit.us35 ], [ 0, %.preheader17.us27.preheader ]
  %4 = mul i32 %.pre48.a, 269850533
  %5 = load double, ptr @init_value, align 8, !tbaa !20
  %i.bw = fptosi double %5 to i32
  %i.bx = mul i32 %i.bw, -1564285888
  %i.by = add i32 %i.bx, -131519416
  %i.bz = icmp eq i32 %4, %i.by
  br i1 %i.bz, label %_Z9check_sumIiEvT_.exit.us35, label %bb.c

bb.c:                                             ; preds = %._crit_edge.us32
  %i.ca = load i32, ptr @current_test, align 4, !tbaa !7
  %i.cb = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.ca) ; 0 uses
  %.pre49 = load i32, ptr @iterations, align 4, !tbaa !7
  %.pre48.pre = load i32, ptr %0, align 4, !tbaa !7
  br label %_Z9check_sumIiEvT_.exit.us35

_Z9check_sumIiEvT_.exit.us35:                     ; preds = %bb.c, %._crit_edge.us32
  %.pre4852 = phi i32 [ %.pre48.pre, %bb.c ], [ %.pre48.a, %._crit_edge.us32 ]
  %i.cc = phi i32 [ %.pre49, %bb.c ], [ %3, %._crit_edge.us32 ] ; 2 uses
  %i.cd = add nuw nsw i32 %.01225.us28.a, 1       ; 2 uses
  %i.ce = icmp slt i32 %i.cd, %i.cc
  br i1 %i.ce, label %._crit_edge.us32, label %._crit_edge26, !llvm.loop !348

.preheader17:                                     ; preds = %.preheader17.preheader, %_Z9check_sumIiEvT_.exit
  %i.cf = phi i32 [ %i.cm, %_Z9check_sumIiEvT_.exit ], [ %i.b, %.preheader17.preheader ]
  %i.cg = phi double [ %i.cn, %_Z9check_sumIiEvT_.exit ], [ %.pre46, %.preheader17.preheader ] ; 2 uses
  %.01225 = phi i32 [ %i.co, %_Z9check_sumIiEvT_.exit ], [ 0, %.preheader17.preheader ]
  %i.ch = fptosi double %i.cg to i32
  %i.ci = mul i32 %i.ch, -1564285888
  %i.cj = icmp eq i32 %i.ci, 1269844480
  br i1 %i.cj, label %_Z9check_sumIiEvT_.exit, label %bb.d

bb.d:                                             ; preds = %.preheader17
  %i.ck = load i32, ptr @current_test, align 4, !tbaa !7
  %i.cl = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.ck) ; 0 uses
  %.pre = load double, ptr @init_value, align 8, !tbaa !20
  %.pre47 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %_Z9check_sumIiEvT_.exit

_Z9check_sumIiEvT_.exit:                          ; preds = %.preheader17, %bb.d
  %i.cm = phi i32 [ %i.cf, %.preheader17 ], [ %.pre47, %bb.d ] ; 2 uses
  %i.cn = phi double [ %i.cg, %.preheader17 ], [ %.pre, %bb.d ]
  %i.co = add nuw nsw i32 %.01225, 1              ; 2 uses
  %i.cp = icmp slt i32 %i.co, %i.cm
  br i1 %i.cp, label %.preheader17, label %._crit_edge26, !llvm.loop !348

._crit_edge26:                                    ; preds = %_Z9check_sumIiEvT_.exit, %_Z9check_sumIiEvT_.exit.us35, %_Z9check_sumIiEvT_.exit.us, %bb.a
  %i.cq = tail call i64 @clock() #16              ; 2 uses
  store i64 %i.cq, ptr @end_time, align 8, !tbaa !19
  %i.cr = load i64, ptr @start_time, align 8, !tbaa !19
  %i.cs = load ptr, ptr @results, align 8, !tbaa !10 ; 3 uses
  %i.ct = icmp ne ptr %i.cs, null
  %.pre.i = load i32, ptr @allocated_results, align 4, !tbaa !7 ; 2 uses
  %i.cu = load i32, ptr @current_test, align 4    ; 2 uses
  %.not.i = icmp slt i32 %i.cu, %.pre.i
  %or.cond.i = select i1 %i.ct, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %_Z13record_resultdPKc.exit, label %bb.e

bb.e:                                             ; preds = %._crit_edge26
  %i.cv = add nsw i32 %.pre.i, 10                 ; 2 uses
  store i32 %i.cv, ptr @allocated_results, align 4, !tbaa !7
  %i.cw = sext i32 %i.cv to i64
  %i.cx = shl nsw i64 %i.cw, 4
  %i.cy = tail call ptr @realloc(ptr noundef %i.cs, i64 noundef %i.cx) #13 ; 3 uses
  store ptr %i.cy, ptr @results, align 8, !tbaa !10
  %i.cz = icmp eq ptr %i.cy, null
  br i1 %i.cz, label %bb.f, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.e
  %.pre2.i = load i32, ptr @current_test, align 4, !tbaa !7
  br label %_Z13record_resultdPKc.exit

bb.f:                                             ; preds = %bb.e
  %i.da = load i32, ptr @allocated_results, align 4, !tbaa !7
  %i.db = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.da) ; 0 uses
  tail call void @exit(i32 noundef -1) #14
  unreachable

_Z13record_resultdPKc.exit:                       ; preds = %._crit_edge26, %._crit_edge.i
  %i.dc = phi i32 [ %.pre2.i, %._crit_edge.i ], [ %i.cu, %._crit_edge26 ] ; 2 uses
  %i.dd = phi ptr [ %i.cy, %._crit_edge.i ], [ %i.cs, %._crit_edge26 ]
  %i.de = sub nsw i64 %i.cq, %i.cr
  %i.df = sitofp i64 %i.de to double
  %i.dg = fdiv double %i.df, 1.000000e+06
  %i.dh = sext i32 %i.dc to i64
  %i.di = getelementptr inbounds [16 x i8], ptr %i.dd, i64 %i.dh ; 2 uses
  store double %i.dg, ptr %i.di, align 8, !tbaa !14
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  store ptr %2, ptr %i.dj, align 8, !tbaa !15
  %i.dk = add nsw i32 %i.dc, 1
  store i32 %i.dk, ptr @current_test, align 4, !tbaa !7
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z29test_while_loop_unroll_factorILi1EiEvPKT0_iPKc(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 comdat {
bb.a:
  %i.a = tail call i64 @clock() #16
  store i64 %i.a, ptr @start_time, align 8, !tbaa !19
  %i.b = load i32, ptr @iterations, align 4, !tbaa !7 ; 3 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.preheader17.lr.ph, label %._crit_edge

.preheader17.lr.ph:                               ; preds = %bb.a
  %i.d = icmp sgt i32 %1, 0
  br i1 %i.d, label %.preheader17.us.preheader, label %.preheader17.preheader

.preheader17.preheader:                           ; preds = %.preheader17.lr.ph
  %.pre28 = load double, ptr @init_value, align 8, !tbaa !20
  br label %.preheader17

.preheader17.us.preheader:                        ; preds = %.preheader17.lr.ph
  %wide.trip.count = zext nneg i32 %1 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %1, 8
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.preheader17.us

.preheader17.us:                                  ; preds = %.preheader17.us.preheader, %_Z9check_sumIiEvT_.exit.us
  %i.e = phi i32 [ %i.w, %_Z9check_sumIiEvT_.exit.us ], [ %i.b, %.preheader17.us.preheader ]
  %.01225.us = phi i32 [ %i.x, %_Z9check_sumIiEvT_.exit.us ], [ 0, %.preheader17.us.preheader ]
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader17.us, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader17.us ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.l, %vector.body ], [ zeroinitializer, %.preheader17.us ]
  %vec.phi41 = phi <4 x i32> [ %i.m, %vector.body ], [ zeroinitializer, %.preheader17.us ]
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %wide.load = load <4 x i32>, ptr %i.f, align 4, !tbaa !7
  %wide.load42 = load <4 x i32>, ptr %i.g, align 4, !tbaa !7
  %i.h = mul <4 x i32> %wide.load, splat (i32 269850533)
  %i.i = mul <4 x i32> %wide.load42, splat (i32 269850533)
  %i.j = add <4 x i32> %vec.phi, splat (i32 -1138325064)
  %i.k = add <4 x i32> %vec.phi41, splat (i32 -1138325064)
  %i.l = add <4 x i32> %i.j, %i.h                 ; 2 uses
  %i.m = add <4 x i32> %i.k, %i.i                 ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.n = icmp eq i64 %index.next, %n.vec
  br i1 %i.n, label %middle.block, label %vector.body, !llvm.loop !350

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.m, %i.l
  %i.o = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %..preheader_crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader17.us, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.preheader17.us ], [ %n.vec, %middle.block ]
  %.01518.us.ph = phi i32 [ 0, %.preheader17.us ], [ %i.o, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.01518.us = phi i32 [ %i.t, %scalar.ph ], [ %.01518.us.ph, %scalar.ph.preheader ]
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.q = load i32, ptr %i.p, align 4, !tbaa !7
  %i.r = mul i32 %i.q, 269850533
  %i.s = add i32 %.01518.us, -1138325064
  %i.t = add i32 %i.s, %i.r                       ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %..preheader_crit_edge.us, label %scalar.ph, !llvm.loop !351

bb.b:                                             ; preds = %..preheader_crit_edge.us
  %i.u = load i32, ptr @current_test, align 4, !tbaa !7
  %i.v = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.u) ; 0 uses
  %.pre30 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %_Z9check_sumIiEvT_.exit.us

_Z9check_sumIiEvT_.exit.us:                       ; preds = %..preheader_crit_edge.us, %bb.b
  %i.w = phi i32 [ %i.e, %..preheader_crit_edge.us ], [ %.pre30, %bb.b ] ; 2 uses
  %i.x = add nuw nsw i32 %.01225.us, 1            ; 2 uses
  %i.y = icmp slt i32 %i.x, %i.w
  br i1 %i.y, label %.preheader17.us, label %._crit_edge, !llvm.loop !352

..preheader_crit_edge.us:                         ; preds = %scalar.ph, %middle.block
  %.lcssa = phi i32 [ %i.o, %middle.block ], [ %i.t, %scalar.ph ]
  %i.z = load double, ptr @init_value, align 8, !tbaa !20
  %i.aa = fptosi double %i.z to i32
  %i.ab = mul i32 %i.aa, -1564285888
  %i.ac = add i32 %i.ab, -1269844480
  %i.ad = icmp eq i32 %.lcssa, %i.ac
  br i1 %i.ad, label %_Z9check_sumIiEvT_.exit.us, label %bb.b

.preheader17:                                     ; preds = %.preheader17.preheader, %_Z9check_sumIiEvT_.exit
  %i.ae = phi i32 [ %i.al, %_Z9check_sumIiEvT_.exit ], [ %i.b, %.preheader17.preheader ]
  %i.af = phi double [ %i.am, %_Z9check_sumIiEvT_.exit ], [ %.pre28, %.preheader17.preheader ] ; 2 uses
  %.01225 = phi i32 [ %i.an, %_Z9check_sumIiEvT_.exit ], [ 0, %.preheader17.preheader ]
  %i.ag = fptosi double %i.af to i32
  %i.ah = mul i32 %i.ag, -1564285888
  %i.ai = icmp eq i32 %i.ah, 1269844480
  br i1 %i.ai, label %_Z9check_sumIiEvT_.exit, label %bb.c

bb.c:                                             ; preds = %.preheader17
  %i.aj = load i32, ptr @current_test, align 4, !tbaa !7
  %i.ak = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.aj) ; 0 uses
  %.pre = load double, ptr @init_value, align 8, !tbaa !20
  %.pre29 = load i32, ptr @iterations, align 4, !tbaa !7
  br label %_Z9check_sumIiEvT_.exit

_Z9check_sumIiEvT_.exit:                          ; preds = %.preheader17, %bb.c
  %i.al = phi i32 [ %i.ae, %.preheader17 ], [ %.pre29, %bb.c ] ; 2 uses
  %i.am = phi double [ %i.af, %.preheader17 ], [ %.pre, %bb.c ]
  %i.an = add nuw nsw i32 %.01225, 1              ; 2 uses
  %i.ao = icmp slt i32 %i.an, %i.al
  br i1 %i.ao, label %.preheader17, label %._crit_edge, !llvm.loop !352

._crit_edge:                                      ; preds = %_Z9check_sumIiEvT_.exit, %_Z9check_sumIiEvT_.exit.us, %bb.a
  %i.ap = tail call i64 @clock() #16              ; 2 uses
  store i64 %i.ap, ptr @end_time, align 8, !tbaa !19
  %i.aq = load i64, ptr @start_time, align 8, !tbaa !19
  %i.ar = load ptr, ptr @results, align 8, !tbaa !10 ; 3 uses
  %i.as = icmp ne ptr %i.ar, null
  %.pre.i = load i32, ptr @allocated_results, align 4, !tbaa !7 ; 2 uses
  %i.at = load i32, ptr @current_test, align 4    ; 2 uses
  %.not.i = icmp slt i32 %i.at, %.pre.i
  %or.cond.i = select i1 %i.as, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %_Z13record_resultdPKc.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.au = add nsw i32 %.pre.i, 10                 ; 2 uses
end_hunk_1
