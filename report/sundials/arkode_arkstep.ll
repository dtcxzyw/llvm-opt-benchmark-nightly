Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/arkode_arkstep?download=true
inline.NumInlined: 23
loop-unroll.NumRuntimeUnrolled: 26
loop-unroll.NumUnrolled: 26
begin_hunk_0_@arkStep_SetButcherTables:bb.a
  %i.aa = zext nneg i32 %switch.tableidx71 to i64
  %switch.gep73 = getelementptr inbounds nuw i8, ptr @switch.table.arkStep_SetButcherTables.2, i64 %i.aa
  %switch.load74 = load i8, ptr %switch.gep73, align 1
  %switch.ext75 = zext i8 %switch.load74 to i32
  br label %.thread56

.thread56:                                        ; preds = %switch.lookup72, %bb.k, %bb.m
  %.05358 = phi i32 [ %.0.ph, %bb.m ], [ 122, %bb.k ], [ %switch.ext75, %switch.lookup72 ]
  %i.ab = tail call ptr @ARKodeButcherTable_LoadDIRK(i32 noundef %.05358) #13
  store ptr %i.ab, ptr %i.h, align 8, !tbaa !119
  %.pre64 = load ptr, ptr %i.f, align 8, !tbaa !120
  br label %bb.n

bb.n:                                             ; preds = %.thread60, %.thread56
  %i.ac = phi ptr [ %i.w, %.thread60 ], [ %.pre64, %.thread56 ]
  call void @ARKodeButcherTable_Space(ptr noundef %i.ac, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) #13
  %i.ad = load i64, ptr %i.b, align 8, !tbaa !83
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 904 ; 4 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !143
  %i.ag = add nsw i64 %i.af, %i.ad
  store i64 %i.ag, ptr %i.ae, align 8, !tbaa !143
  %i.ah = load i64, ptr %i.a, align 8, !tbaa !83
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 896 ; 4 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !141
  %i.ak = add nsw i64 %i.aj, %i.ah
  store i64 %i.ak, ptr %i.ai, align 8, !tbaa !141
  %i.al = load ptr, ptr %i.h, align 8, !tbaa !119
  call void @ARKodeButcherTable_Space(ptr noundef %i.al, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) #13
  %i.am = load i64, ptr %i.b, align 8, !tbaa !83
  %i.an = load i64, ptr %i.ae, align 8, !tbaa !143
  %i.ao = add nsw i64 %i.an, %i.am
  store i64 %i.ao, ptr %i.ae, align 8, !tbaa !143
  %i.ap = load i64, ptr %i.a, align 8, !tbaa !83
  %i.aq = load i64, ptr %i.ai, align 8, !tbaa !141
  %i.ar = add nsw i64 %i.aq, %i.ap
  store i64 %i.ar, ptr %i.ai, align 8, !tbaa !141
  %i.as = load ptr, ptr %i.f, align 8, !tbaa !120 ; 3 uses
  %.not48 = icmp eq ptr %i.as, null
  br i1 %.not48, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load i32, ptr %i.at, align 8, !tbaa !206
  %i.av = getelementptr inbounds nuw i8, ptr %i.d, i64 108
  store i32 %i.au, ptr %i.av, align 4, !tbaa !135
  %i.aw = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.ax = load <2 x i32>, ptr %i.as, align 8, !tbaa !74
  store <2 x i32> %i.ax, ptr %i.aw, align 8, !tbaa !74
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ay = load ptr, ptr %i.h, align 8, !tbaa !119 ; 3 uses
  %.not49 = icmp eq ptr %i.ay, null
  br i1 %.not49, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !206
  %i.bb = getelementptr inbounds nuw i8, ptr %i.d, i64 108
  store i32 %i.ba, ptr %i.bb, align 4, !tbaa !135
  %i.bc = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.bd = load <2 x i32>, ptr %i.ay, align 8, !tbaa !74
  store <2 x i32> %i.bd, ptr %i.bc, align 8, !tbaa !74
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q, %bb.c, %bb.d, %bb.b
  %.040 = phi i32 [ -21, %bb.b ], [ 0, %bb.c ], [ 0, %bb.d ], [ 0, %bb.q ], [ 0, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i32 %.040
}

; Function Attrs: nounwind uwtable
define range(i32 -44, 1) i32 @arkStep_CheckButcherTables(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !73   ; 15 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef null, i32 noundef -21, i32 noundef 2699, ptr noundef nonnull @__func__.arkStep_CheckButcherTables, ptr noundef nonnull @.str, ptr noundef nonnull @.str.63) #13
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.e = load i32, ptr %i.d, align 4, !tbaa !134
  %.not.not = icmp eq i32 %i.e, 0                 ; 4 uses
  br i1 %.not.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !120
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef nonnull %0, i32 noundef -44, i32 noundef 2708, ptr noundef nonnull @__func__.arkStep_CheckButcherTables, ptr noundef nonnull @.str, ptr noundef nonnull @.str.67) #13
  br label %.loopexit

bb.f:                                             ; preds = %bb.d, %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.j = load i32, ptr %i.i, align 8, !tbaa !85
  %.not83.not = icmp eq i32 %i.j, 0               ; 4 uses
  br i1 %.not83.not, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !119
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef nonnull %0, i32 noundef -44, i32 noundef 2715, ptr noundef nonnull @__func__.arkStep_CheckButcherTables, ptr noundef nonnull @.str, ptr noundef nonnull @.str.68) #13
  br label %.loopexit

bb.i:                                             ; preds = %bb.g, %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 108
  %i.o = load i32, ptr %i.n, align 4, !tbaa !135  ; 11 uses
  %i.p = icmp slt i32 %i.o, 1
  br i1 %i.p, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef nonnull %0, i32 noundef -44, i32 noundef 2723, ptr noundef nonnull @__func__.arkStep_CheckButcherTables, ptr noundef nonnull @.str, ptr noundef nonnull @.str.69) #13
  br label %.loopexit

bb.k:                                             ; preds = %bb.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.r = load i32, ptr %i.q, align 8, !tbaa !130  ; 2 uses
  %i.s = icmp slt i32 %i.r, 1
  br i1 %i.s, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef nonnull %0, i32 noundef -44, i32 noundef 2731, ptr noundef nonnull @__func__.arkStep_CheckButcherTables, ptr noundef nonnull @.str, ptr noundef nonnull @.str.70) #13
  br label %.loopexit

bb.m:                                             ; preds = %bb.k
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 100
  %i.u = load i32, ptr %i.t, align 4, !tbaa !131
  %i.v = icmp slt i32 %i.u, 1
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 800
  %i.x = load i32, ptr %i.w, align 8, !tbaa !113
  %.not84 = icmp eq i32 %i.x, 0                   ; 2 uses
  br i1 %i.v, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  br i1 %.not84, label %bb.o, label %bb.w

bb.o:                                             ; preds = %bb.n
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef nonnull %0, i32 noundef -44, i32 noundef 2739, ptr noundef nonnull @__func__.arkStep_CheckButcherTables, ptr noundef nonnull @.str, ptr noundef nonnull @.str.71) #13
  br label %.loopexit

bb.p:                                             ; preds = %bb.m
  br i1 %.not84, label %bb.q, label %bb.w

bb.q:                                             ; preds = %bb.p
  br i1 %.not83.not, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !119
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !225
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef nonnull %0, i32 noundef -44, i32 noundef 2751, ptr noundef nonnull @__func__.arkStep_CheckButcherTables, ptr noundef nonnull @.str, ptr noundef nonnull @.str.72) #13
  br label %.loopexit

bb.t:                                             ; preds = %bb.r, %bb.q
  br i1 %.not.not, label %.thread96, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !120
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !225
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.v, label %.preheader102.lr.ph

bb.v:                                             ; preds = %bb.u
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef nonnull %0, i32 noundef -44, i32 noundef 2760, ptr noundef nonnull @__func__.arkStep_CheckButcherTables, ptr noundef nonnull @.str, ptr noundef nonnull @.str.73) #13
  br label %.loopexit

bb.w:                                             ; preds = %bb.n, %bb.p
  br i1 %.not.not, label %.thread96, label %.preheader102.lr.ph

.preheader102.lr.ph:                              ; preds = %bb.u, %bb.w
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !120
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !188
  %i.am = zext nneg i32 %i.o to i64
  %wide.trip.count = zext nneg i32 %i.o to i64    ; 2 uses
  br label %.preheader102

.preheader102:                                    ; preds = %.preheader102.lr.ph, %.loopexit183
  %indvars.iv = phi i64 [ 0, %.preheader102.lr.ph ], [ %indvars.iv.next, %.loopexit183 ] ; 7 uses
  %.0107 = phi i32 [ 1, %.preheader102.lr.ph ], [ %.2.lcssa, %.loopexit183 ] ; 2 uses
  %1 = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv
  %2 = load ptr, ptr %1, align 8, !tbaa !189      ; 2 uses
  %3 = add nuw i64 %indvars.iv, 1
  %4 = tail call i64 @llvm.umax.i64(i64 %3, i64 %wide.trip.count)
  %5 = sub i64 %4, %indvars.iv                    ; 3 uses
  %min.iters.check = icmp ult i64 %5, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader102
  %n.vec = and i64 %5, -4                         ; 3 uses
  %i.an = add i64 %indvars.iv, %n.vec
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i1> [ zeroinitializer, %vector.ph ], [ %i.av, %vector.body ]
  %vec.phi164 = phi <2 x i1> [ zeroinitializer, %vector.ph ], [ %i.aw, %vector.body ]
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %index ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %wide.load = load <2 x double>, ptr %i.ap, align 8, !tbaa !108
  %wide.load165 = load <2 x double>, ptr %i.aq, align 8, !tbaa !108
  %i.ar = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %wide.load)
  %i.as = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %wide.load165)
  %i.at = fcmp ogt <2 x double> %i.ar, splat (double f0x3D19000000000000)
  %i.au = fcmp ogt <2 x double> %i.as, splat (double f0x3D19000000000000)
  %i.av = or <2 x i1> %vec.phi, %i.at             ; 2 uses
  %i.aw = or <2 x i1> %vec.phi164, %i.au          ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ax = icmp eq i64 %index.next, %n.vec
  br i1 %i.ax, label %middle.block, label %vector.body, !llvm.loop !226

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <2 x i1> %i.aw, %i.av
  %bin.rdx.fr = freeze <2 x i1> %bin.rdx
  %i.ay = bitcast <2 x i1> %bin.rdx.fr to i2
  %.not = icmp eq i2 %i.ay, 0
  %rdx.select = select i1 %.not, i32 %.0107, i32 0 ; 2 uses
  %cmp.n = icmp eq i64 %5, %n.vec
  br i1 %cmp.n, label %.loopexit183, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader102, %middle.block
  %indvars.iv127.ph = phi i64 [ %indvars.iv, %.preheader102 ], [ %i.an, %middle.block ]
  %.1105.ph = phi i32 [ %.0107, %.preheader102 ], [ %rdx.select, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv127 = phi i64 [ %indvars.iv.next128, %scalar.ph ], [ %indvars.iv127.ph, %scalar.ph.preheader ] ; 2 uses
  %.1105 = phi i32 [ %.2, %scalar.ph ], [ %.1105.ph, %scalar.ph.preheader ]
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv127
  %i.ba = load double, ptr %i.az, align 8, !tbaa !108
  %i.bb = tail call double @llvm.fabs.f64(double %i.ba)
  %i.bc = fcmp ogt double %i.bb, f0x3D19000000000000
  %.2 = select i1 %i.bc, i32 0, i32 %.1105        ; 2 uses
  %indvars.iv.next128 = add nuw nsw i64 %indvars.iv127, 1 ; 2 uses
  %i.bd = icmp samesign ult i64 %indvars.iv.next128, %i.am
  br i1 %i.bd, label %scalar.ph, label %.loopexit183, !llvm.loop !227

.loopexit183:                                     ; preds = %scalar.ph, %middle.block
  %.2.lcssa = phi i32 [ %rdx.select, %middle.block ], [ %.2, %scalar.ph ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.preheader102

._crit_edge:                                      ; preds = %.loopexit183
  %.not89 = icmp eq i32 %.2.lcssa, 0
  br i1 %.not89, label %bb.x, label %.thread96

bb.x:                                             ; preds = %._crit_edge
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef %0, i32 noundef -44, i32 noundef 2780, ptr noundef nonnull @__func__.arkStep_CheckButcherTables, ptr noundef nonnull @.str, ptr noundef nonnull @.str.74) #13
  br label %.loopexit

.thread96:                                        ; preds = %bb.t, %._crit_edge, %bb.w
  br i1 %.not83.not, label %bb.ac, label %.lr.ph

.lr.ph:                                           ; preds = %.thread96
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !119
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !188 ; 3 uses
  %wide.trip.count135 = zext nneg i32 %i.o to i64 ; 3 uses
  %xtraiter = and i64 %wide.trip.count135, 1
  %i.bi = icmp eq i32 %i.o, 1
  br i1 %i.bi, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count135, 2147483646
  br label %bb.y

bb.y:                                             ; preds = %bb.y, %.lr.ph.new
  %indvars.iv131 = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next132.1, %bb.y ] ; 4 uses
  %.3109 = phi i32 [ 0, %.lr.ph.new ], [ %.4.1, %bb.y ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.y ]
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv131
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !189
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %indvars.iv131
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !108
  %i.bn = tail call double @llvm.fabs.f64(double %i.bm)
  %i.bo = fcmp ogt double %i.bn, f0x3D19000000000000
  %indvars.iv.next132 = or disjoint i64 %indvars.iv131, 1 ; 2 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv.next132
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !189
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %indvars.iv.next132
  %i.bs = load double, ptr %i.br, align 8, !tbaa !108
  %i.bt = tail call double @llvm.fabs.f64(double %i.bs)
  %i.bu = fcmp ogt double %i.bt, f0x3D19000000000000
  %i.bv = select i1 %i.bu, i1 true, i1 %i.bo
  %.4.1 = select i1 %i.bv, i32 1, i32 %.3109      ; 3 uses
  %indvars.iv.next132.1 = add nuw nsw i64 %indvars.iv131, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge110.unr-lcssa, label %bb.y

._crit_edge110.unr-lcssa:                         ; preds = %bb.y
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge110, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge110.unr-lcssa, %.lr.ph
  %indvars.iv131.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next132.1, %._crit_edge110.unr-lcssa ] ; 2 uses
  %.3109.epil.init = phi i32 [ 0, %.lr.ph ], [ %.4.1, %._crit_edge110.unr-lcssa ]
  %lcmp.mod190 = trunc i32 %i.o to i1
  tail call void @llvm.assume(i1 %lcmp.mod190)
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv131.epil.init
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !189
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %indvars.iv131.epil.init
  %i.bz = load double, ptr %i.by, align 8, !tbaa !108
  %i.ca = tail call double @llvm.fabs.f64(double %i.bz)
  %i.cb = fcmp ogt double %i.ca, f0x3D19000000000000
  %.4.epil = select i1 %i.cb, i32 1, i32 %.3109.epil.init
  br label %._crit_edge110

._crit_edge110:                                   ; preds = %._crit_edge110.unr-lcssa, %.epil.preheader
  %.4.lcssa = phi i32 [ %.4.1, %._crit_edge110.unr-lcssa ], [ %.4.epil, %.epil.preheader ]
  %.not91 = icmp eq i32 %.4.lcssa, 0
  br i1 %.not91, label %bb.z, label %.lr.ph119

.lr.ph119:                                        ; preds = %._crit_edge110
  %i.cc = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.cd = zext nneg i32 %i.o to i64
  %wide.trip.count148 = zext nneg i32 %i.o to i64
  %wide.trip.count142 = zext nneg i32 %i.o to i64
  br label %bb.aa

bb.z:                                             ; preds = %._crit_edge110
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef %0, i32 noundef -44, i32 noundef 2796, ptr noundef nonnull @__func__.arkStep_CheckButcherTables, ptr noundef nonnull @.str, ptr noundef nonnull @.str.75) #13
  br label %.loopexit

.loopexit99:                                      ; preds = %scalar.ph166, %middle.block177, %bb.aa
  %.6.lcssa = phi i32 [ %.5118, %bb.aa ], [ %rdx.select179, %middle.block177 ], [ %.7, %scalar.ph166 ] ; 2 uses
  %indvars.iv.next138 = add nuw nsw i64 %indvars.iv137, 1
  %exitcond149.not = icmp eq i64 %indvars.iv.next145, %wide.trip.count148
  br i1 %exitcond149.not, label %._crit_edge120, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph119, %.loopexit99
  %indvars.iv144 = phi i64 [ 0, %.lr.ph119 ], [ %indvars.iv.next145, %.loopexit99 ] ; 3 uses
  %indvars.iv137 = phi i64 [ 1, %.lr.ph119 ], [ %indvars.iv.next138, %.loopexit99 ] ; 4 uses
  %.5118 = phi i32 [ 1, %.lr.ph119 ], [ %.6.lcssa, %.loopexit99 ] ; 3 uses
  %i.ce = xor i64 %indvars.iv144, -1
  %i.cf = add nsw i64 %i.ce, %wide.trip.count135  ; 3 uses
  %indvars.iv.next145 = add nuw nsw i64 %indvars.iv144, 1 ; 3 uses
  %i.cg = icmp samesign ult i64 %indvars.iv.next145, %i.cd
  br i1 %i.cg, label %.lr.ph115, label %.loopexit99

.lr.ph115:                                        ; preds = %bb.aa
  %i.ch = load ptr, ptr %i.cc, align 8, !tbaa !119
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !188
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %indvars.iv144
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !189 ; 2 uses
  %min.iters.check167 = icmp ult i64 %i.cf, 4
  br i1 %min.iters.check167, label %scalar.ph166.preheader, label %vector.ph168

vector.ph168:                                     ; preds = %.lr.ph115
  %n.vec169 = and i64 %i.cf, -4                   ; 3 uses
  %i.cm = add i64 %indvars.iv137, %n.vec169
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %indvars.iv137
  br label %vector.body170

vector.body170:                                   ; preds = %vector.body170, %vector.ph168
  %index171 = phi i64 [ 0, %vector.ph168 ], [ %index.next176, %vector.body170 ] ; 2 uses
  %vec.phi172 = phi <2 x i1> [ zeroinitializer, %vector.ph168 ], [ %i.cu, %vector.body170 ]
  %vec.phi173 = phi <2 x i1> [ zeroinitializer, %vector.ph168 ], [ %i.cv, %vector.body170 ]
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %index171 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %wide.load174 = load <2 x double>, ptr %i.co, align 8, !tbaa !108
  %wide.load175 = load <2 x double>, ptr %i.cp, align 8, !tbaa !108
  %i.cq = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %wide.load174)
  %i.cr = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %wide.load175)
  %i.cs = fcmp ogt <2 x double> %i.cq, splat (double f0x3D19000000000000)
  %i.ct = fcmp ogt <2 x double> %i.cr, splat (double f0x3D19000000000000)
  %i.cu = or <2 x i1> %vec.phi172, %i.cs          ; 2 uses
  %i.cv = or <2 x i1> %vec.phi173, %i.ct          ; 2 uses
  %index.next176 = add nuw i64 %index171, 4       ; 2 uses
  %i.cw = icmp eq i64 %index.next176, %n.vec169
  br i1 %i.cw, label %middle.block177, label %vector.body170, !llvm.loop !228

middle.block177:                                  ; preds = %vector.body170
  %bin.rdx178 = or <2 x i1> %i.cv, %i.cu
  %bin.rdx178.fr = freeze <2 x i1> %bin.rdx178
  %i.cx = bitcast <2 x i1> %bin.rdx178.fr to i2
  %.not184 = icmp eq i2 %i.cx, 0
  %rdx.select179 = select i1 %.not184, i32 %.5118, i32 0 ; 2 uses
  %cmp.n180 = icmp eq i64 %i.cf, %n.vec169
  br i1 %cmp.n180, label %.loopexit99, label %scalar.ph166.preheader

scalar.ph166.preheader:                           ; preds = %.lr.ph115, %middle.block177
  %indvars.iv139.ph = phi i64 [ %indvars.iv137, %.lr.ph115 ], [ %i.cm, %middle.block177 ]
  %.6113.ph = phi i32 [ %.5118, %.lr.ph115 ], [ %rdx.select179, %middle.block177 ]
  br label %scalar.ph166

scalar.ph166:                                     ; preds = %scalar.ph166.preheader, %scalar.ph166
  %indvars.iv139 = phi i64 [ %indvars.iv.next140, %scalar.ph166 ], [ %indvars.iv139.ph, %scalar.ph166.preheader ] ; 2 uses
  %.6113 = phi i32 [ %.7, %scalar.ph166 ], [ %.6113.ph, %scalar.ph166.preheader ]
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %indvars.iv139
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !108
  %i.da = tail call double @llvm.fabs.f64(double %i.cz)
  %i.db = fcmp ogt double %i.da, f0x3D19000000000000
  %.7 = select i1 %i.db, i32 0, i32 %.6113        ; 2 uses
  %indvars.iv.next140 = add nuw nsw i64 %indvars.iv139, 1 ; 2 uses
  %exitcond143.not = icmp eq i64 %indvars.iv.next140, %wide.trip.count142
  br i1 %exitcond143.not, label %.loopexit99, label %scalar.ph166, !llvm.loop !229

._crit_edge120:                                   ; preds = %.loopexit99
  %.not92 = icmp eq i32 %.6.lcssa, 0
  br i1 %.not92, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %._crit_edge120
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef %0, i32 noundef -44, i32 noundef 2811, ptr noundef nonnull @__func__.arkStep_CheckButcherTables, ptr noundef nonnull @.str, ptr noundef nonnull @.str.76) #13
  br label %.loopexit

bb.ac:                                            ; preds = %._crit_edge120, %.thread96
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 1044
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !132
  %.not93 = icmp eq i32 %i.dd, 0
  br i1 %.not93, label %.loopexit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.de = icmp eq i32 %i.r, 1
  br i1 %i.de, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef nonnull %0, i32 noundef -44, i32 noundef 2822, ptr noundef nonnull @__func__.arkStep_CheckButcherTables, ptr noundef nonnull @.str, ptr noundef nonnull @.str.77) #13
  br label %.loopexit

bb.af:                                            ; preds = %bb.ad
  br i1 %.not.not, label %.loopexit98, label %.lr.ph123

.lr.ph123:                                        ; preds = %bb.af
  %i.df = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !120
end_hunk_0
