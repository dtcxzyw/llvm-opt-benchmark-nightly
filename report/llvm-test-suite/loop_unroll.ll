inline.NumInlined: 2075
inline.NumDeleted: 313
begin_hunk_0_@_Z26test_do_loop_unroll_factorILi3EiEvPKT0_iPKc:bb.a
  br i1 %i.ae, label %_Z9check_sumIiEvT_.exit.us, label %bb.c

bb.c:                                             ; preds = %.loopexit.us
  %i.af = load i32, ptr @current_test, align 4, !tbaa !4
  %i.ag = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.af) ; 0 uses
  %.pre55 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z9check_sumIiEvT_.exit.us

_Z9check_sumIiEvT_.exit.us:                       ; preds = %bb.c, %.loopexit.us
  %i.ah = phi i32 [ %.pre55, %bb.c ], [ %i.l, %.loopexit.us ] ; 2 uses
  %i.ai = add nuw nsw i32 %.01628.us, 1           ; 2 uses
  %i.aj = icmp slt i32 %i.ai, %i.ah
  br i1 %i.aj, label %.preheader24.us, label %._crit_edge, !llvm.loop !501

.loopexit25.us:                                   ; preds = %bb.b
  %i.ak = trunc nuw nsw i64 %indvars.iv.next45 to i32
  %i.al = icmp sgt i32 %1, %i.ak
  br i1 %i.al, label %.preheader.us.preheader, label %.loopexit.us

.preheader.us.preheader:                          ; preds = %.loopexit25.us
  br i1 %min.iters.check, label %.preheader.us.preheader76, label %vector.ph

vector.ph:                                        ; preds = %.preheader.us.preheader
  %i.am = add i64 %indvars.iv47, %n.vec
  %i.an = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.t, i64 0
  %i.ao = getelementptr [4 x i8], ptr %0, i64 %indvars.iv47
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.an, %vector.ph ], [ %i.av, %vector.body ]
  %vec.phi74 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.aw, %vector.body ]
  %i.ap = getelementptr [4 x i8], ptr %i.ao, i64 %index ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %wide.load = load <4 x i32>, ptr %i.ap, align 4, !tbaa !4
  %wide.load75 = load <4 x i32>, ptr %i.aq, align 4, !tbaa !4
  %i.ar = mul <4 x i32> %wide.load, splat (i32 269850533)
  %i.as = mul <4 x i32> %wide.load75, splat (i32 269850533)
  %i.at = add <4 x i32> %vec.phi, splat (i32 -1138325064)
  %i.au = add <4 x i32> %vec.phi74, splat (i32 -1138325064)
  %i.av = add <4 x i32> %i.at, %i.ar              ; 2 uses
  %i.aw = add <4 x i32> %i.au, %i.as              ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ax = icmp eq i64 %index.next, %n.vec
  br i1 %i.ax, label %middle.block, label %vector.body, !llvm.loop !502

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.aw, %i.av
  %i.ay = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %.loopexit.us, label %.preheader.us.preheader76

.preheader.us.preheader76:                        ; preds = %.preheader.us.preheader, %middle.block
  %indvars.iv49.ph = phi i64 [ %indvars.iv47, %.preheader.us.preheader ], [ %i.am, %middle.block ]
  %.222.us.ph = phi i32 [ %i.t, %.preheader.us.preheader ], [ %i.ay, %middle.block ]
  br label %.preheader.us

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.az = icmp sgt i32 %1, 0
  br i1 %i.az, label %.preheader.us35.preheader, label %.lr.ph.split.split.preheader

.lr.ph.split.split.preheader:                     ; preds = %.lr.ph.split
  %.pre52 = load double, ptr @init_value, align 8, !tbaa !32
  br label %.lr.ph.split.split

.preheader.us35.preheader:                        ; preds = %.lr.ph.split
  %.not.us32 = icmp eq i32 %1, 1
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %.preheader.us35

.preheader.us35:                                  ; preds = %.preheader.us35.preheader, %_Z9check_sumIiEvT_.exit.us34
  %i.bb = phi i32 [ %i.bl, %_Z9check_sumIiEvT_.exit.us34 ], [ %i.b, %.preheader.us35.preheader ]
  %.01628.us29 = phi i32 [ %i.bm, %_Z9check_sumIiEvT_.exit.us34 ], [ 0, %.preheader.us35.preheader ]
  %i.bc = load i32, ptr %0, align 4, !tbaa !4
  %i.bd = mul i32 %i.bc, 269850533                ; 2 uses
  %i.be = add i32 %i.bd, -1138325064
  br i1 %.not.us32, label %.loopexit.us36, label %bb.d

bb.d:                                             ; preds = %.preheader.us35
  %i.bf = load i32, ptr %i.ba, align 4, !tbaa !4
  %i.bg = mul i32 %i.bf, 269850533
  %i.bh = add i32 %i.bd, 2018317168
  %i.bi = add i32 %i.bh, %i.bg
  br label %.loopexit.us36

bb.e:                                             ; preds = %.loopexit.us36
  %i.bj = load i32, ptr @current_test, align 4, !tbaa !4
  %i.bk = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.bj) ; 0 uses
  %.pre54 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z9check_sumIiEvT_.exit.us34

_Z9check_sumIiEvT_.exit.us34:                     ; preds = %bb.e, %.loopexit.us36
  %i.bl = phi i32 [ %.pre54, %bb.e ], [ %i.bb, %.loopexit.us36 ] ; 2 uses
  %i.bm = add nuw nsw i32 %.01628.us29, 1         ; 2 uses
  %i.bn = icmp slt i32 %i.bm, %i.bl
  br i1 %i.bn, label %.preheader.us35, label %._crit_edge, !llvm.loop !501

.loopexit.us36:                                   ; preds = %bb.d, %.preheader.us35
  %.lcssa81 = phi i32 [ %i.be, %.preheader.us35 ], [ %i.bi, %bb.d ]
  %i.bo = load double, ptr @init_value, align 8, !tbaa !32
  %i.bp = fptosi double %i.bo to i32
  %i.bq = mul i32 %i.bp, -1564285888
  %i.br = add i32 %i.bq, -1269844480
  %i.bs = icmp eq i32 %.lcssa81, %i.br
  br i1 %i.bs, label %_Z9check_sumIiEvT_.exit.us34, label %bb.e

.lr.ph.split.split:                               ; preds = %.lr.ph.split.split.preheader, %_Z9check_sumIiEvT_.exit
  %i.bt = phi i32 [ %i.ca, %_Z9check_sumIiEvT_.exit ], [ %i.b, %.lr.ph.split.split.preheader ]
  %i.bu = phi double [ %i.cb, %_Z9check_sumIiEvT_.exit ], [ %.pre52, %.lr.ph.split.split.preheader ] ; 2 uses
  %.01628 = phi i32 [ %i.cc, %_Z9check_sumIiEvT_.exit ], [ 0, %.lr.ph.split.split.preheader ]
  %i.bv = fptosi double %i.bu to i32
  %i.bw = mul i32 %i.bv, -1564285888
  %i.bx = icmp eq i32 %i.bw, 1269844480
  br i1 %i.bx, label %_Z9check_sumIiEvT_.exit, label %bb.f

bb.f:                                             ; preds = %.lr.ph.split.split
  %i.by = load i32, ptr @current_test, align 4, !tbaa !4
  %i.bz = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.by) ; 0 uses
  %.pre = load double, ptr @init_value, align 8, !tbaa !32
  %.pre53 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z9check_sumIiEvT_.exit

_Z9check_sumIiEvT_.exit:                          ; preds = %.lr.ph.split.split, %bb.f
  %i.ca = phi i32 [ %i.bt, %.lr.ph.split.split ], [ %.pre53, %bb.f ] ; 2 uses
  %i.cb = phi double [ %i.bu, %.lr.ph.split.split ], [ %.pre, %bb.f ]
  %i.cc = add nuw nsw i32 %.01628, 1              ; 2 uses
  %i.cd = icmp slt i32 %i.cc, %i.ca
  br i1 %i.cd, label %.lr.ph.split.split, label %._crit_edge, !llvm.loop !501

._crit_edge:                                      ; preds = %_Z9check_sumIiEvT_.exit, %_Z9check_sumIiEvT_.exit.us34, %_Z9check_sumIiEvT_.exit.us, %bb.a
  %i.ce = tail call i64 @clock() #16              ; 2 uses
  store i64 %i.ce, ptr @end_time, align 8, !tbaa !27
  %i.cf = load i64, ptr @start_time, align 8, !tbaa !27
  %i.cg = load ptr, ptr @results, align 8, !tbaa !8 ; 3 uses
  %i.ch = icmp ne ptr %i.cg, null
  %.pre.i = load i32, ptr @allocated_results, align 4, !tbaa !4 ; 2 uses
  %i.ci = load i32, ptr @current_test, align 4    ; 2 uses
  %.not.i = icmp slt i32 %i.ci, %.pre.i
  %or.cond.i = select i1 %i.ch, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %_Z13record_resultdPKc.exit, label %bb.g

bb.g:                                             ; preds = %._crit_edge
  %i.cj = add nsw i32 %.pre.i, 10                 ; 2 uses
  store i32 %i.cj, ptr @allocated_results, align 4, !tbaa !4
  %i.ck = sext i32 %i.cj to i64
  %i.cl = shl nsw i64 %i.ck, 4
  %i.cm = tail call ptr @realloc(ptr noundef %i.cg, i64 noundef %i.cl) #13 ; 3 uses
  store ptr %i.cm, ptr @results, align 8, !tbaa !8
  %i.cn = icmp eq ptr %i.cm, null
  br i1 %i.cn, label %bb.h, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.g
  %.pre2.i = load i32, ptr @current_test, align 4, !tbaa !4
  br label %_Z13record_resultdPKc.exit

bb.h:                                             ; preds = %bb.g
  %i.co = load i32, ptr @allocated_results, align 4, !tbaa !4
  %i.cp = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.co) ; 0 uses
  tail call void @exit(i32 noundef -1) #14
  unreachable

_Z13record_resultdPKc.exit:                       ; preds = %._crit_edge, %._crit_edge.i
  %i.cq = phi i32 [ %.pre2.i, %._crit_edge.i ], [ %i.ci, %._crit_edge ] ; 2 uses
  %i.cr = phi ptr [ %i.cm, %._crit_edge.i ], [ %i.cg, %._crit_edge ]
  %i.cs = sub nsw i64 %i.ce, %i.cf
  %i.ct = sitofp i64 %i.cs to double
  %i.cu = fdiv double %i.ct, 1.000000e+06
  %i.cv = sext i32 %i.cq to i64
  %i.cw = getelementptr inbounds [16 x i8], ptr %i.cr, i64 %i.cv ; 2 uses
  store double %i.cu, ptr %i.cw, align 8, !tbaa !11
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  store ptr %2, ptr %i.cx, align 8, !tbaa !15
  %i.cy = add nsw i32 %i.cq, 1
  store i32 %i.cy, ptr @current_test, align 4, !tbaa !4
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z26test_do_loop_unroll_factorILi2EiEvPKT0_iPKc(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 comdat {
bb.a:
  %i.a = tail call i64 @clock() #16
  store i64 %i.a, ptr @start_time, align 8, !tbaa !27
  %i.b = load i32, ptr @iterations, align 4, !tbaa !4 ; 4 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = icmp sgt i32 %1, 1
  br i1 %i.d, label %.preheader23.us.preheader, label %.lr.ph.split

.preheader23.us.preheader:                        ; preds = %.lr.ph
  %i.e = add nsw i32 %1, -1
  %i.f = zext nneg i32 %i.e to i64                ; 2 uses
  %i.g = add nsw i32 %1, -2                       ; 2 uses
  %i.h = and i32 %i.g, -2
  %i.i = and i32 %i.g, -2
  %i.j = add nuw nsw i32 %i.i, 2
  %i.k = add i32 %i.h, 2
  %i.l = zext i32 %i.k to i64                     ; 4 uses
  %i.m = zext nneg i32 %1 to i64                  ; 2 uses
  %i.n = icmp slt i32 %i.j, %1
  %3 = sub nsw i64 %i.m, %i.l                     ; 3 uses
  %umax = tail call i64 @llvm.umax.i64(i64 %i.f, i64 2)
  %i.o = add nsw i64 %umax, -1
  %i.p = lshr i64 %i.o, 1
  %i.q = add nuw nsw i64 %i.p, 1                  ; 2 uses
  %min.iters.check72 = icmp ult i32 %1, 16
  %n.vec75 = and i64 %i.q, 9223372036854775800    ; 3 uses
  %i.r = shl nuw i64 %n.vec75, 1
  %cmp.n87 = icmp eq i64 %i.q, %n.vec75
  %min.iters.check = icmp ult i64 %3, 8
  %n.vec = and i64 %3, -8                         ; 3 uses
  %i.s = add nsw i64 %n.vec, %i.l
  %invariant.gep = getelementptr [4 x i8], ptr %0, i64 %i.l
  %cmp.n = icmp eq i64 %3, %n.vec
  br label %.preheader23.us

.preheader23.us:                                  ; preds = %.preheader23.us.preheader, %_Z9check_sumIiEvT_.exit.us
  %i.t = phi i32 [ %i.bb, %_Z9check_sumIiEvT_.exit.us ], [ %i.b, %.preheader23.us.preheader ]
  %.01627.us = phi i32 [ %i.bc, %_Z9check_sumIiEvT_.exit.us ], [ 0, %.preheader23.us.preheader ]
  br i1 %min.iters.check72, label %scalar.ph71.preheader, label %vector.body76

vector.body76:                                    ; preds = %.preheader23.us, %vector.body76
  %index77 = phi i64 [ %index.next84, %vector.body76 ], [ 0, %.preheader23.us ] ; 2 uses
  %vec.phi78 = phi <4 x i32> [ %i.ae, %vector.body76 ], [ zeroinitializer, %.preheader23.us ]
  %vec.phi79 = phi <4 x i32> [ %i.af, %vector.body76 ], [ zeroinitializer, %.preheader23.us ]
  %i.u = shl i64 %index77, 1                      ; 2 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.u
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.u
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %wide.vec = load <8 x i32>, ptr %i.v, align 4, !tbaa !4 ; 2 uses
  %strided.vec = shufflevector <8 x i32> %wide.vec, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec80 = shufflevector <8 x i32> %wide.vec, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %wide.vec81 = load <8 x i32>, ptr %i.x, align 4, !tbaa !4 ; 2 uses
  %strided.vec82 = shufflevector <8 x i32> %wide.vec81, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec83 = shufflevector <8 x i32> %wide.vec81, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.y = add <4 x i32> %strided.vec80, %strided.vec
  %i.z = add <4 x i32> %strided.vec83, %strided.vec82
  %i.aa = mul <4 x i32> %i.y, splat (i32 269850533)
  %i.ab = mul <4 x i32> %i.z, splat (i32 269850533)
  %i.ac = add <4 x i32> %vec.phi78, splat (i32 2018317168)
  %i.ad = add <4 x i32> %vec.phi79, splat (i32 2018317168)
  %i.ae = add <4 x i32> %i.ac, %i.aa              ; 2 uses
  %i.af = add <4 x i32> %i.ad, %i.ab              ; 2 uses
  %index.next84 = add nuw i64 %index77, 8         ; 2 uses
  %i.ag = icmp eq i64 %index.next84, %n.vec75
  br i1 %i.ag, label %middle.block85, label %vector.body76, !llvm.loop !503

middle.block85:                                   ; preds = %vector.body76
  %bin.rdx86 = add <4 x i32> %i.af, %i.ae
  %i.ah = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx86) ; 2 uses
  br i1 %cmp.n87, label %.loopexit24.us, label %scalar.ph71.preheader

scalar.ph71.preheader:                            ; preds = %.preheader23.us, %middle.block85
  %indvars.iv.ph = phi i64 [ 0, %.preheader23.us ], [ %i.r, %middle.block85 ]
  %.020.us.ph = phi i32 [ 0, %.preheader23.us ], [ %i.ah, %middle.block85 ]
  br label %scalar.ph71

scalar.ph71:                                      ; preds = %scalar.ph71.preheader, %scalar.ph71
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph71 ], [ %indvars.iv.ph, %scalar.ph71.preheader ] ; 2 uses
  %.020.us = phi i32 [ %i.an, %scalar.ph71 ], [ %.020.us.ph, %scalar.ph71.preheader ]
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !4
  %i.ak = getelementptr i8, ptr %i.ai, i64 4
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !4
  %reass.add.us = add i32 %i.al, %i.aj
  %reass.mul.us = mul i32 %reass.add.us, 269850533
  %i.am = add i32 %.020.us, 2018317168
  %i.an = add i32 %i.am, %reass.mul.us            ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.ao = icmp samesign ult i64 %indvars.iv.next, %i.f
  br i1 %i.ao, label %scalar.ph71, label %.loopexit24.us, !llvm.loop !504

.preheader.us:                                    ; preds = %.preheader.us.preheader90, %.preheader.us
  %indvars.iv44 = phi i64 [ %indvars.iv.next45, %.preheader.us ], [ %indvars.iv44.ph, %.preheader.us.preheader90 ] ; 2 uses
  %.222.us = phi i32 [ %i.at, %.preheader.us ], [ %.222.us.ph, %.preheader.us.preheader90 ]
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv44
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !4
  %i.ar = mul i32 %i.aq, 269850533
  %i.as = add i32 %.222.us, -1138325064
  %i.at = add i32 %i.as, %i.ar                    ; 2 uses
  %indvars.iv.next45 = add nuw nsw i64 %indvars.iv44, 1 ; 2 uses
  %.not.us = icmp eq i64 %indvars.iv.next45, %i.m
  br i1 %.not.us, label %.loopexit.us, label %.preheader.us, !llvm.loop !505

.loopexit.us:                                     ; preds = %.preheader.us, %middle.block, %.loopexit24.us
  %.3.us = phi i32 [ %.lcssa, %.loopexit24.us ], [ %i.bn, %middle.block ], [ %i.at, %.preheader.us ]
  %i.au = load double, ptr @init_value, align 8, !tbaa !32
  %i.av = fptosi double %i.au to i32
  %i.aw = mul i32 %i.av, -1564285888
  %i.ax = add i32 %i.aw, -1269844480
  %i.ay = icmp eq i32 %.3.us, %i.ax
  br i1 %i.ay, label %_Z9check_sumIiEvT_.exit.us, label %bb.b

bb.b:                                             ; preds = %.loopexit.us
  %i.az = load i32, ptr @current_test, align 4, !tbaa !4
  %i.ba = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.az) ; 0 uses
  %.pre52 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z9check_sumIiEvT_.exit.us

_Z9check_sumIiEvT_.exit.us:                       ; preds = %bb.b, %.loopexit.us
  %i.bb = phi i32 [ %.pre52, %bb.b ], [ %i.t, %.loopexit.us ] ; 2 uses
  %i.bc = add nuw nsw i32 %.01627.us, 1           ; 2 uses
  %i.bd = icmp slt i32 %i.bc, %i.bb
  br i1 %i.bd, label %.preheader23.us, label %._crit_edge, !llvm.loop !506

.loopexit24.us:                                   ; preds = %scalar.ph71, %middle.block85
  %.lcssa = phi i32 [ %i.ah, %middle.block85 ], [ %i.an, %scalar.ph71 ] ; 3 uses
  br i1 %i.n, label %.preheader.us.preheader, label %.loopexit.us

.preheader.us.preheader:                          ; preds = %.loopexit24.us
  br i1 %min.iters.check, label %.preheader.us.preheader90, label %vector.ph

vector.ph:                                        ; preds = %.preheader.us.preheader
  %i.be = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.lcssa, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.be, %vector.ph ], [ %i.bk, %vector.body ]
  %vec.phi69 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bl, %vector.body ]
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load = load <4 x i32>, ptr %gep, align 4, !tbaa !4
  %wide.load70 = load <4 x i32>, ptr %i.bf, align 4, !tbaa !4
  %i.bg = mul <4 x i32> %wide.load, splat (i32 269850533)
  %i.bh = mul <4 x i32> %wide.load70, splat (i32 269850533)
  %i.bi = add <4 x i32> %vec.phi, splat (i32 -1138325064)
  %i.bj = add <4 x i32> %vec.phi69, splat (i32 -1138325064)
  %i.bk = add <4 x i32> %i.bi, %i.bg              ; 2 uses
  %i.bl = add <4 x i32> %i.bj, %i.bh              ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bm = icmp eq i64 %index.next, %n.vec
  br i1 %i.bm, label %middle.block, label %vector.body, !llvm.loop !507

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.bl, %i.bk
  %i.bn = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %.loopexit.us, label %.preheader.us.preheader90

.preheader.us.preheader90:                        ; preds = %.preheader.us.preheader, %middle.block
  %indvars.iv44.ph = phi i64 [ %i.l, %.preheader.us.preheader ], [ %i.s, %middle.block ]
  %.222.us.ph = phi i32 [ %.lcssa, %.preheader.us.preheader ], [ %i.bn, %middle.block ]
  br label %.preheader.us

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.bo = icmp eq i32 %1, 1
  %.pre50 = load double, ptr @init_value, align 8, !tbaa !32 ; 2 uses
  br i1 %i.bo, label %.preheader.us34, label %.lr.ph.split.split

.preheader.us34:                                  ; preds = %.lr.ph.split, %_Z9check_sumIiEvT_.exit.us33
  %i.bp = phi i32 [ %i.bz, %_Z9check_sumIiEvT_.exit.us33 ], [ %i.b, %.lr.ph.split ]
  %i.bq = phi double [ %i.ca, %_Z9check_sumIiEvT_.exit.us33 ], [ %.pre50, %.lr.ph.split ] ; 2 uses
  %.01627.us28 = phi i32 [ %i.cb, %_Z9check_sumIiEvT_.exit.us33 ], [ 0, %.lr.ph.split ]
  %i.br = load i32, ptr %0, align 4, !tbaa !4
  %i.bs = mul i32 %i.br, 269850533
  %i.bt = fptosi double %i.bq to i32
  %i.bu = mul i32 %i.bt, -1564285888
  %i.bv = add i32 %i.bu, -131519416
  %i.bw = icmp eq i32 %i.bs, %i.bv
  br i1 %i.bw, label %_Z9check_sumIiEvT_.exit.us33, label %bb.c

bb.c:                                             ; preds = %.preheader.us34
  %i.bx = load i32, ptr @current_test, align 4, !tbaa !4
  %i.by = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.bx) ; 0 uses
  %.pre49 = load double, ptr @init_value, align 8, !tbaa !32
  %.pre51 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z9check_sumIiEvT_.exit.us33

_Z9check_sumIiEvT_.exit.us33:                     ; preds = %bb.c, %.preheader.us34
  %i.bz = phi i32 [ %.pre51, %bb.c ], [ %i.bp, %.preheader.us34 ] ; 2 uses
  %i.ca = phi double [ %.pre49, %bb.c ], [ %i.bq, %.preheader.us34 ]
  %i.cb = add nuw nsw i32 %.01627.us28, 1         ; 2 uses
  %i.cc = icmp slt i32 %i.cb, %i.bz
  br i1 %i.cc, label %.preheader.us34, label %._crit_edge, !llvm.loop !506

.lr.ph.split.split:                               ; preds = %.lr.ph.split, %_Z9check_sumIiEvT_.exit
  %i.cd = phi i32 [ %i.ck, %_Z9check_sumIiEvT_.exit ], [ %i.b, %.lr.ph.split ]
  %i.ce = phi double [ %i.cl, %_Z9check_sumIiEvT_.exit ], [ %.pre50, %.lr.ph.split ] ; 2 uses
  %.01627 = phi i32 [ %i.cm, %_Z9check_sumIiEvT_.exit ], [ 0, %.lr.ph.split ]
  %i.cf = fptosi double %i.ce to i32
  %i.cg = mul i32 %i.cf, -1564285888
  %i.ch = icmp eq i32 %i.cg, 1269844480
  br i1 %i.ch, label %_Z9check_sumIiEvT_.exit, label %bb.d

bb.d:                                             ; preds = %.lr.ph.split.split
  %i.ci = load i32, ptr @current_test, align 4, !tbaa !4
  %i.cj = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.ci) ; 0 uses
  %.pre = load double, ptr @init_value, align 8, !tbaa !32
  %.pre48 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z9check_sumIiEvT_.exit

_Z9check_sumIiEvT_.exit:                          ; preds = %.lr.ph.split.split, %bb.d
  %i.ck = phi i32 [ %i.cd, %.lr.ph.split.split ], [ %.pre48, %bb.d ] ; 2 uses
  %i.cl = phi double [ %i.ce, %.lr.ph.split.split ], [ %.pre, %bb.d ]
  %i.cm = add nuw nsw i32 %.01627, 1              ; 2 uses
  %i.cn = icmp slt i32 %i.cm, %i.ck
  br i1 %i.cn, label %.lr.ph.split.split, label %._crit_edge, !llvm.loop !506

._crit_edge:                                      ; preds = %_Z9check_sumIiEvT_.exit, %_Z9check_sumIiEvT_.exit.us33, %_Z9check_sumIiEvT_.exit.us, %bb.a
  %i.co = tail call i64 @clock() #16              ; 2 uses
  store i64 %i.co, ptr @end_time, align 8, !tbaa !27
  %i.cp = load i64, ptr @start_time, align 8, !tbaa !27
  %i.cq = load ptr, ptr @results, align 8, !tbaa !8 ; 3 uses
  %i.cr = icmp ne ptr %i.cq, null
  %.pre.i = load i32, ptr @allocated_results, align 4, !tbaa !4 ; 2 uses
  %i.cs = load i32, ptr @current_test, align 4    ; 2 uses
  %.not.i = icmp slt i32 %i.cs, %.pre.i
  %or.cond.i = select i1 %i.cr, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %_Z13record_resultdPKc.exit, label %bb.e
end_hunk_0
begin_hunk_1_@_Z28test_goto_loop_unroll_factorILi3EiEvPKT0_iPKc:bb.a
  br i1 %i.ae, label %_Z9check_sumIiEvT_.exit.us, label %bb.c

bb.c:                                             ; preds = %.loopexit.us
  %i.af = load i32, ptr @current_test, align 4, !tbaa !4
  %i.ag = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.af) ; 0 uses
  %.pre55 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z9check_sumIiEvT_.exit.us

_Z9check_sumIiEvT_.exit.us:                       ; preds = %bb.c, %.loopexit.us
  %i.ah = phi i32 [ %.pre55, %bb.c ], [ %i.l, %.loopexit.us ] ; 2 uses
  %i.ai = add nuw nsw i32 %.01628.us, 1           ; 2 uses
  %i.aj = icmp slt i32 %i.ai, %i.ah
  br i1 %i.aj, label %.preheader24.us, label %._crit_edge, !llvm.loop !622

.loopexit25.us:                                   ; preds = %bb.b
  %i.ak = trunc nuw nsw i64 %indvars.iv.next45 to i32
  %i.al = icmp sgt i32 %1, %i.ak
  br i1 %i.al, label %.preheader.us.preheader, label %.loopexit.us

.preheader.us.preheader:                          ; preds = %.loopexit25.us
  br i1 %min.iters.check, label %.preheader.us.preheader76, label %vector.ph

vector.ph:                                        ; preds = %.preheader.us.preheader
  %i.am = add i64 %indvars.iv47, %n.vec
  %i.an = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.t, i64 0
  %i.ao = getelementptr [4 x i8], ptr %0, i64 %indvars.iv47
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.an, %vector.ph ], [ %i.av, %vector.body ]
  %vec.phi74 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.aw, %vector.body ]
  %i.ap = getelementptr [4 x i8], ptr %i.ao, i64 %index ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %wide.load = load <4 x i32>, ptr %i.ap, align 4, !tbaa !4
  %wide.load75 = load <4 x i32>, ptr %i.aq, align 4, !tbaa !4
  %i.ar = mul <4 x i32> %wide.load, splat (i32 269850533)
  %i.as = mul <4 x i32> %wide.load75, splat (i32 269850533)
  %i.at = add <4 x i32> %vec.phi, splat (i32 -1138325064)
  %i.au = add <4 x i32> %vec.phi74, splat (i32 -1138325064)
  %i.av = add <4 x i32> %i.at, %i.ar              ; 2 uses
  %i.aw = add <4 x i32> %i.au, %i.as              ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ax = icmp eq i64 %index.next, %n.vec
  br i1 %i.ax, label %middle.block, label %vector.body, !llvm.loop !623

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.aw, %i.av
  %i.ay = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %.loopexit.us, label %.preheader.us.preheader76

.preheader.us.preheader76:                        ; preds = %.preheader.us.preheader, %middle.block
  %indvars.iv49.ph = phi i64 [ %indvars.iv47, %.preheader.us.preheader ], [ %i.am, %middle.block ]
  %.222.us.ph = phi i32 [ %i.t, %.preheader.us.preheader ], [ %i.ay, %middle.block ]
  br label %.preheader.us

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.az = icmp sgt i32 %1, 0
  br i1 %i.az, label %.preheader.us35.preheader, label %.lr.ph.split.split.preheader

.lr.ph.split.split.preheader:                     ; preds = %.lr.ph.split
  %.pre52 = load double, ptr @init_value, align 8, !tbaa !32
  br label %.lr.ph.split.split

.preheader.us35.preheader:                        ; preds = %.lr.ph.split
  %.not.us32 = icmp eq i32 %1, 1
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %.preheader.us35

.preheader.us35:                                  ; preds = %.preheader.us35.preheader, %_Z9check_sumIiEvT_.exit.us34
  %i.bb = phi i32 [ %i.bl, %_Z9check_sumIiEvT_.exit.us34 ], [ %i.b, %.preheader.us35.preheader ]
  %.01628.us29 = phi i32 [ %i.bm, %_Z9check_sumIiEvT_.exit.us34 ], [ 0, %.preheader.us35.preheader ]
  %i.bc = load i32, ptr %0, align 4, !tbaa !4
  %i.bd = mul i32 %i.bc, 269850533                ; 2 uses
  %i.be = add i32 %i.bd, -1138325064
  br i1 %.not.us32, label %.loopexit.us36, label %bb.d

bb.d:                                             ; preds = %.preheader.us35
  %i.bf = load i32, ptr %i.ba, align 4, !tbaa !4
  %i.bg = mul i32 %i.bf, 269850533
  %i.bh = add i32 %i.bd, 2018317168
  %i.bi = add i32 %i.bh, %i.bg
  br label %.loopexit.us36

bb.e:                                             ; preds = %.loopexit.us36
  %i.bj = load i32, ptr @current_test, align 4, !tbaa !4
  %i.bk = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.bj) ; 0 uses
  %.pre54 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z9check_sumIiEvT_.exit.us34

_Z9check_sumIiEvT_.exit.us34:                     ; preds = %bb.e, %.loopexit.us36
  %i.bl = phi i32 [ %.pre54, %bb.e ], [ %i.bb, %.loopexit.us36 ] ; 2 uses
  %i.bm = add nuw nsw i32 %.01628.us29, 1         ; 2 uses
  %i.bn = icmp slt i32 %i.bm, %i.bl
  br i1 %i.bn, label %.preheader.us35, label %._crit_edge, !llvm.loop !622

.loopexit.us36:                                   ; preds = %bb.d, %.preheader.us35
  %.lcssa81 = phi i32 [ %i.be, %.preheader.us35 ], [ %i.bi, %bb.d ]
  %i.bo = load double, ptr @init_value, align 8, !tbaa !32
  %i.bp = fptosi double %i.bo to i32
  %i.bq = mul i32 %i.bp, -1564285888
  %i.br = add i32 %i.bq, -1269844480
  %i.bs = icmp eq i32 %.lcssa81, %i.br
  br i1 %i.bs, label %_Z9check_sumIiEvT_.exit.us34, label %bb.e

.lr.ph.split.split:                               ; preds = %.lr.ph.split.split.preheader, %_Z9check_sumIiEvT_.exit
  %i.bt = phi i32 [ %i.ca, %_Z9check_sumIiEvT_.exit ], [ %i.b, %.lr.ph.split.split.preheader ]
  %i.bu = phi double [ %i.cb, %_Z9check_sumIiEvT_.exit ], [ %.pre52, %.lr.ph.split.split.preheader ] ; 2 uses
  %.01628 = phi i32 [ %i.cc, %_Z9check_sumIiEvT_.exit ], [ 0, %.lr.ph.split.split.preheader ]
  %i.bv = fptosi double %i.bu to i32
  %i.bw = mul i32 %i.bv, -1564285888
  %i.bx = icmp eq i32 %i.bw, 1269844480
  br i1 %i.bx, label %_Z9check_sumIiEvT_.exit, label %bb.f

bb.f:                                             ; preds = %.lr.ph.split.split
  %i.by = load i32, ptr @current_test, align 4, !tbaa !4
  %i.bz = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.by) ; 0 uses
  %.pre = load double, ptr @init_value, align 8, !tbaa !32
  %.pre53 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z9check_sumIiEvT_.exit

_Z9check_sumIiEvT_.exit:                          ; preds = %.lr.ph.split.split, %bb.f
  %i.ca = phi i32 [ %i.bt, %.lr.ph.split.split ], [ %.pre53, %bb.f ] ; 2 uses
  %i.cb = phi double [ %i.bu, %.lr.ph.split.split ], [ %.pre, %bb.f ]
  %i.cc = add nuw nsw i32 %.01628, 1              ; 2 uses
  %i.cd = icmp slt i32 %i.cc, %i.ca
  br i1 %i.cd, label %.lr.ph.split.split, label %._crit_edge, !llvm.loop !622

._crit_edge:                                      ; preds = %_Z9check_sumIiEvT_.exit, %_Z9check_sumIiEvT_.exit.us34, %_Z9check_sumIiEvT_.exit.us, %bb.a
  %i.ce = tail call i64 @clock() #16              ; 2 uses
  store i64 %i.ce, ptr @end_time, align 8, !tbaa !27
  %i.cf = load i64, ptr @start_time, align 8, !tbaa !27
  %i.cg = load ptr, ptr @results, align 8, !tbaa !8 ; 3 uses
  %i.ch = icmp ne ptr %i.cg, null
  %.pre.i = load i32, ptr @allocated_results, align 4, !tbaa !4 ; 2 uses
  %i.ci = load i32, ptr @current_test, align 4    ; 2 uses
  %.not.i = icmp slt i32 %i.ci, %.pre.i
  %or.cond.i = select i1 %i.ch, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %_Z13record_resultdPKc.exit, label %bb.g

bb.g:                                             ; preds = %._crit_edge
  %i.cj = add nsw i32 %.pre.i, 10                 ; 2 uses
  store i32 %i.cj, ptr @allocated_results, align 4, !tbaa !4
  %i.ck = sext i32 %i.cj to i64
  %i.cl = shl nsw i64 %i.ck, 4
  %i.cm = tail call ptr @realloc(ptr noundef %i.cg, i64 noundef %i.cl) #13 ; 3 uses
  store ptr %i.cm, ptr @results, align 8, !tbaa !8
  %i.cn = icmp eq ptr %i.cm, null
  br i1 %i.cn, label %bb.h, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.g
  %.pre2.i = load i32, ptr @current_test, align 4, !tbaa !4
  br label %_Z13record_resultdPKc.exit

bb.h:                                             ; preds = %bb.g
  %i.co = load i32, ptr @allocated_results, align 4, !tbaa !4
  %i.cp = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.co) ; 0 uses
  tail call void @exit(i32 noundef -1) #14
  unreachable

_Z13record_resultdPKc.exit:                       ; preds = %._crit_edge, %._crit_edge.i
  %i.cq = phi i32 [ %.pre2.i, %._crit_edge.i ], [ %i.ci, %._crit_edge ] ; 2 uses
  %i.cr = phi ptr [ %i.cm, %._crit_edge.i ], [ %i.cg, %._crit_edge ]
  %i.cs = sub nsw i64 %i.ce, %i.cf
  %i.ct = sitofp i64 %i.cs to double
  %i.cu = fdiv double %i.ct, 1.000000e+06
  %i.cv = sext i32 %i.cq to i64
  %i.cw = getelementptr inbounds [16 x i8], ptr %i.cr, i64 %i.cv ; 2 uses
  store double %i.cu, ptr %i.cw, align 8, !tbaa !11
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  store ptr %2, ptr %i.cx, align 8, !tbaa !15
  %i.cy = add nsw i32 %i.cq, 1
  store i32 %i.cy, ptr @current_test, align 4, !tbaa !4
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z28test_goto_loop_unroll_factorILi2EiEvPKT0_iPKc(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 comdat {
bb.a:
  %i.a = tail call i64 @clock() #16
  store i64 %i.a, ptr @start_time, align 8, !tbaa !27
  %i.b = load i32, ptr @iterations, align 4, !tbaa !4 ; 4 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = icmp sgt i32 %1, 1
  br i1 %i.d, label %.preheader23.us.preheader, label %.lr.ph.split

.preheader23.us.preheader:                        ; preds = %.lr.ph
  %i.e = add nsw i32 %1, -1
  %i.f = zext nneg i32 %i.e to i64                ; 2 uses
  %i.g = add nsw i32 %1, -2                       ; 2 uses
  %i.h = and i32 %i.g, -2
  %i.i = and i32 %i.g, -2
  %i.j = add nuw nsw i32 %i.i, 2
  %i.k = add i32 %i.h, 2
  %i.l = zext i32 %i.k to i64                     ; 4 uses
  %i.m = zext nneg i32 %1 to i64                  ; 2 uses
  %i.n = icmp slt i32 %i.j, %1
  %3 = sub nsw i64 %i.m, %i.l                     ; 3 uses
  %umax = tail call i64 @llvm.umax.i64(i64 %i.f, i64 2)
  %i.o = add nsw i64 %umax, -1
  %i.p = lshr i64 %i.o, 1
  %i.q = add nuw nsw i64 %i.p, 1                  ; 2 uses
  %min.iters.check72 = icmp ult i32 %1, 16
  %n.vec75 = and i64 %i.q, 9223372036854775800    ; 3 uses
  %i.r = shl nuw i64 %n.vec75, 1
  %cmp.n87 = icmp eq i64 %i.q, %n.vec75
  %min.iters.check = icmp ult i64 %3, 8
  %n.vec = and i64 %3, -8                         ; 3 uses
  %i.s = add nsw i64 %n.vec, %i.l
  %invariant.gep = getelementptr [4 x i8], ptr %0, i64 %i.l
  %cmp.n = icmp eq i64 %3, %n.vec
  br label %.preheader23.us

.preheader23.us:                                  ; preds = %.preheader23.us.preheader, %_Z9check_sumIiEvT_.exit.us
  %i.t = phi i32 [ %i.bb, %_Z9check_sumIiEvT_.exit.us ], [ %i.b, %.preheader23.us.preheader ]
  %.01627.us = phi i32 [ %i.bc, %_Z9check_sumIiEvT_.exit.us ], [ 0, %.preheader23.us.preheader ]
  br i1 %min.iters.check72, label %scalar.ph71.preheader, label %vector.body76

vector.body76:                                    ; preds = %.preheader23.us, %vector.body76
  %index77 = phi i64 [ %index.next84, %vector.body76 ], [ 0, %.preheader23.us ] ; 2 uses
  %vec.phi78 = phi <4 x i32> [ %i.ae, %vector.body76 ], [ zeroinitializer, %.preheader23.us ]
  %vec.phi79 = phi <4 x i32> [ %i.af, %vector.body76 ], [ zeroinitializer, %.preheader23.us ]
  %i.u = shl i64 %index77, 1                      ; 2 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.u
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.u
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %wide.vec = load <8 x i32>, ptr %i.v, align 4, !tbaa !4 ; 2 uses
  %strided.vec = shufflevector <8 x i32> %wide.vec, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec80 = shufflevector <8 x i32> %wide.vec, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %wide.vec81 = load <8 x i32>, ptr %i.x, align 4, !tbaa !4 ; 2 uses
  %strided.vec82 = shufflevector <8 x i32> %wide.vec81, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec83 = shufflevector <8 x i32> %wide.vec81, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.y = add <4 x i32> %strided.vec80, %strided.vec
  %i.z = add <4 x i32> %strided.vec83, %strided.vec82
  %i.aa = mul <4 x i32> %i.y, splat (i32 269850533)
  %i.ab = mul <4 x i32> %i.z, splat (i32 269850533)
  %i.ac = add <4 x i32> %vec.phi78, splat (i32 2018317168)
  %i.ad = add <4 x i32> %vec.phi79, splat (i32 2018317168)
  %i.ae = add <4 x i32> %i.ac, %i.aa              ; 2 uses
  %i.af = add <4 x i32> %i.ad, %i.ab              ; 2 uses
  %index.next84 = add nuw i64 %index77, 8         ; 2 uses
  %i.ag = icmp eq i64 %index.next84, %n.vec75
  br i1 %i.ag, label %middle.block85, label %vector.body76, !llvm.loop !624

middle.block85:                                   ; preds = %vector.body76
  %bin.rdx86 = add <4 x i32> %i.af, %i.ae
  %i.ah = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx86) ; 2 uses
  br i1 %cmp.n87, label %.loopexit24.us, label %scalar.ph71.preheader

scalar.ph71.preheader:                            ; preds = %.preheader23.us, %middle.block85
  %indvars.iv.ph = phi i64 [ 0, %.preheader23.us ], [ %i.r, %middle.block85 ]
  %.020.us.ph = phi i32 [ 0, %.preheader23.us ], [ %i.ah, %middle.block85 ]
  br label %scalar.ph71

scalar.ph71:                                      ; preds = %scalar.ph71.preheader, %scalar.ph71
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph71 ], [ %indvars.iv.ph, %scalar.ph71.preheader ] ; 2 uses
  %.020.us = phi i32 [ %i.an, %scalar.ph71 ], [ %.020.us.ph, %scalar.ph71.preheader ]
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !4
  %i.ak = getelementptr i8, ptr %i.ai, i64 4
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !4
  %reass.add.us = add i32 %i.al, %i.aj
  %reass.mul.us = mul i32 %reass.add.us, 269850533
  %i.am = add i32 %.020.us, 2018317168
  %i.an = add i32 %i.am, %reass.mul.us            ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.ao = icmp samesign ult i64 %indvars.iv.next, %i.f
  br i1 %i.ao, label %scalar.ph71, label %.loopexit24.us, !llvm.loop !625

.preheader.us:                                    ; preds = %.preheader.us.preheader90, %.preheader.us
  %indvars.iv44 = phi i64 [ %indvars.iv.next45, %.preheader.us ], [ %indvars.iv44.ph, %.preheader.us.preheader90 ] ; 2 uses
  %.222.us = phi i32 [ %i.at, %.preheader.us ], [ %.222.us.ph, %.preheader.us.preheader90 ]
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv44
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !4
  %i.ar = mul i32 %i.aq, 269850533
  %i.as = add i32 %.222.us, -1138325064
  %i.at = add i32 %i.as, %i.ar                    ; 2 uses
  %indvars.iv.next45 = add nuw nsw i64 %indvars.iv44, 1 ; 2 uses
  %.not.us = icmp eq i64 %indvars.iv.next45, %i.m
  br i1 %.not.us, label %.loopexit.us, label %.preheader.us, !llvm.loop !626

.loopexit.us:                                     ; preds = %.preheader.us, %middle.block, %.loopexit24.us
  %.3.us = phi i32 [ %.lcssa, %.loopexit24.us ], [ %i.bn, %middle.block ], [ %i.at, %.preheader.us ]
  %i.au = load double, ptr @init_value, align 8, !tbaa !32
  %i.av = fptosi double %i.au to i32
  %i.aw = mul i32 %i.av, -1564285888
  %i.ax = add i32 %i.aw, -1269844480
  %i.ay = icmp eq i32 %.3.us, %i.ax
  br i1 %i.ay, label %_Z9check_sumIiEvT_.exit.us, label %bb.b

bb.b:                                             ; preds = %.loopexit.us
  %i.az = load i32, ptr @current_test, align 4, !tbaa !4
  %i.ba = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.az) ; 0 uses
  %.pre52 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z9check_sumIiEvT_.exit.us

_Z9check_sumIiEvT_.exit.us:                       ; preds = %bb.b, %.loopexit.us
  %i.bb = phi i32 [ %.pre52, %bb.b ], [ %i.t, %.loopexit.us ] ; 2 uses
  %i.bc = add nuw nsw i32 %.01627.us, 1           ; 2 uses
  %i.bd = icmp slt i32 %i.bc, %i.bb
  br i1 %i.bd, label %.preheader23.us, label %._crit_edge, !llvm.loop !627

.loopexit24.us:                                   ; preds = %scalar.ph71, %middle.block85
  %.lcssa = phi i32 [ %i.ah, %middle.block85 ], [ %i.an, %scalar.ph71 ] ; 3 uses
  br i1 %i.n, label %.preheader.us.preheader, label %.loopexit.us

.preheader.us.preheader:                          ; preds = %.loopexit24.us
  br i1 %min.iters.check, label %.preheader.us.preheader90, label %vector.ph

vector.ph:                                        ; preds = %.preheader.us.preheader
  %i.be = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.lcssa, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.be, %vector.ph ], [ %i.bk, %vector.body ]
  %vec.phi69 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bl, %vector.body ]
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load = load <4 x i32>, ptr %gep, align 4, !tbaa !4
  %wide.load70 = load <4 x i32>, ptr %i.bf, align 4, !tbaa !4
  %i.bg = mul <4 x i32> %wide.load, splat (i32 269850533)
  %i.bh = mul <4 x i32> %wide.load70, splat (i32 269850533)
  %i.bi = add <4 x i32> %vec.phi, splat (i32 -1138325064)
  %i.bj = add <4 x i32> %vec.phi69, splat (i32 -1138325064)
  %i.bk = add <4 x i32> %i.bi, %i.bg              ; 2 uses
  %i.bl = add <4 x i32> %i.bj, %i.bh              ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bm = icmp eq i64 %index.next, %n.vec
  br i1 %i.bm, label %middle.block, label %vector.body, !llvm.loop !628

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.bl, %i.bk
  %i.bn = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %.loopexit.us, label %.preheader.us.preheader90

.preheader.us.preheader90:                        ; preds = %.preheader.us.preheader, %middle.block
  %indvars.iv44.ph = phi i64 [ %i.l, %.preheader.us.preheader ], [ %i.s, %middle.block ]
  %.222.us.ph = phi i32 [ %.lcssa, %.preheader.us.preheader ], [ %i.bn, %middle.block ]
  br label %.preheader.us

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.bo = icmp eq i32 %1, 1
  %.pre50 = load double, ptr @init_value, align 8, !tbaa !32 ; 2 uses
  br i1 %i.bo, label %.preheader.us34, label %.lr.ph.split.split

.preheader.us34:                                  ; preds = %.lr.ph.split, %_Z9check_sumIiEvT_.exit.us33
  %i.bp = phi i32 [ %i.bz, %_Z9check_sumIiEvT_.exit.us33 ], [ %i.b, %.lr.ph.split ]
  %i.bq = phi double [ %i.ca, %_Z9check_sumIiEvT_.exit.us33 ], [ %.pre50, %.lr.ph.split ] ; 2 uses
  %.01627.us28 = phi i32 [ %i.cb, %_Z9check_sumIiEvT_.exit.us33 ], [ 0, %.lr.ph.split ]
  %i.br = load i32, ptr %0, align 4, !tbaa !4
  %i.bs = mul i32 %i.br, 269850533
  %i.bt = fptosi double %i.bq to i32
  %i.bu = mul i32 %i.bt, -1564285888
  %i.bv = add i32 %i.bu, -131519416
  %i.bw = icmp eq i32 %i.bs, %i.bv
  br i1 %i.bw, label %_Z9check_sumIiEvT_.exit.us33, label %bb.c

bb.c:                                             ; preds = %.preheader.us34
  %i.bx = load i32, ptr @current_test, align 4, !tbaa !4
  %i.by = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.bx) ; 0 uses
  %.pre49 = load double, ptr @init_value, align 8, !tbaa !32
  %.pre51 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z9check_sumIiEvT_.exit.us33

_Z9check_sumIiEvT_.exit.us33:                     ; preds = %bb.c, %.preheader.us34
  %i.bz = phi i32 [ %.pre51, %bb.c ], [ %i.bp, %.preheader.us34 ] ; 2 uses
  %i.ca = phi double [ %.pre49, %bb.c ], [ %i.bq, %.preheader.us34 ]
  %i.cb = add nuw nsw i32 %.01627.us28, 1         ; 2 uses
  %i.cc = icmp slt i32 %i.cb, %i.bz
  br i1 %i.cc, label %.preheader.us34, label %._crit_edge, !llvm.loop !627

.lr.ph.split.split:                               ; preds = %.lr.ph.split, %_Z9check_sumIiEvT_.exit
  %i.cd = phi i32 [ %i.ck, %_Z9check_sumIiEvT_.exit ], [ %i.b, %.lr.ph.split ]
  %i.ce = phi double [ %i.cl, %_Z9check_sumIiEvT_.exit ], [ %.pre50, %.lr.ph.split ] ; 2 uses
  %.01627 = phi i32 [ %i.cm, %_Z9check_sumIiEvT_.exit ], [ 0, %.lr.ph.split ]
  %i.cf = fptosi double %i.ce to i32
  %i.cg = mul i32 %i.cf, -1564285888
  %i.ch = icmp eq i32 %i.cg, 1269844480
  br i1 %i.ch, label %_Z9check_sumIiEvT_.exit, label %bb.d

bb.d:                                             ; preds = %.lr.ph.split.split
  %i.ci = load i32, ptr @current_test, align 4, !tbaa !4
  %i.cj = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.ci) ; 0 uses
  %.pre = load double, ptr @init_value, align 8, !tbaa !32
  %.pre48 = load i32, ptr @iterations, align 4, !tbaa !4
  br label %_Z9check_sumIiEvT_.exit

_Z9check_sumIiEvT_.exit:                          ; preds = %.lr.ph.split.split, %bb.d
  %i.ck = phi i32 [ %i.cd, %.lr.ph.split.split ], [ %.pre48, %bb.d ] ; 2 uses
  %i.cl = phi double [ %i.ce, %.lr.ph.split.split ], [ %.pre, %bb.d ]
  %i.cm = add nuw nsw i32 %.01627, 1              ; 2 uses
  %i.cn = icmp slt i32 %i.cm, %i.ck
  br i1 %i.cn, label %.lr.ph.split.split, label %._crit_edge, !llvm.loop !627

._crit_edge:                                      ; preds = %_Z9check_sumIiEvT_.exit, %_Z9check_sumIiEvT_.exit.us33, %_Z9check_sumIiEvT_.exit.us, %bb.a
  %i.co = tail call i64 @clock() #16              ; 2 uses
  store i64 %i.co, ptr @end_time, align 8, !tbaa !27
  %i.cp = load i64, ptr @start_time, align 8, !tbaa !27
  %i.cq = load ptr, ptr @results, align 8, !tbaa !8 ; 3 uses
  %i.cr = icmp ne ptr %i.cq, null
  %.pre.i = load i32, ptr @allocated_results, align 4, !tbaa !4 ; 2 uses
  %i.cs = load i32, ptr @current_test, align 4    ; 2 uses
  %.not.i = icmp slt i32 %i.cs, %.pre.i
  %or.cond.i = select i1 %i.cr, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %_Z13record_resultdPKc.exit, label %bb.e
end_hunk_1
