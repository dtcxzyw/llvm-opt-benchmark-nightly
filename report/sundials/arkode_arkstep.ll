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
  br i1 %.not.not, label %.thread98, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !120
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !225
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.v, label %.preheader104.lr.ph

bb.v:                                             ; preds = %bb.u
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef nonnull %0, i32 noundef -44, i32 noundef 2760, ptr noundef nonnull @__func__.arkStep_CheckButcherTables, ptr noundef nonnull @.str, ptr noundef nonnull @.str.73) #13
  br label %.loopexit

bb.w:                                             ; preds = %bb.n, %bb.p
  br i1 %.not.not, label %.thread98, label %.preheader104.lr.ph

.preheader104.lr.ph:                              ; preds = %bb.u, %bb.w
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !120
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !188
  %i.am = zext nneg i32 %i.o to i64
  %wide.trip.count = zext nneg i32 %i.o to i64    ; 2 uses
  br label %.preheader104

.preheader104:                                    ; preds = %.preheader104.lr.ph, %.loopexit185
  %indvars.iv = phi i64 [ 0, %.preheader104.lr.ph ], [ %indvars.iv.next, %.loopexit185 ] ; 7 uses
  %.0109 = phi i32 [ 1, %.preheader104.lr.ph ], [ %spec.select.lcssa, %.loopexit185 ] ; 2 uses
  %1 = add nuw i64 %indvars.iv, 1
  %2 = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv
  %3 = load ptr, ptr %2, align 8, !tbaa !189      ; 2 uses
  %i.an = tail call i64 @llvm.umax.i64(i64 %1, i64 %wide.trip.count)
  %i.ao = sub i64 %i.an, %indvars.iv              ; 3 uses
  %min.iters.check = icmp ult i64 %i.ao, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader104
  %n.vec = and i64 %i.ao, -4                      ; 3 uses
  %i.ap = add i64 %indvars.iv, %n.vec
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i1> [ zeroinitializer, %vector.ph ], [ %i.ax, %vector.body ]
  %vec.phi166 = phi <2 x i1> [ zeroinitializer, %vector.ph ], [ %i.ay, %vector.body ]
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %index ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %wide.load = load <2 x double>, ptr %i.ar, align 8, !tbaa !108
  %wide.load167 = load <2 x double>, ptr %i.as, align 8, !tbaa !108
  %i.at = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %wide.load)
  %i.au = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %wide.load167)
  %i.av = fcmp ogt <2 x double> %i.at, splat (double f0x3D19000000000000)
  %i.aw = fcmp ogt <2 x double> %i.au, splat (double f0x3D19000000000000)
  %i.ax = or <2 x i1> %vec.phi, %i.av             ; 2 uses
  %i.ay = or <2 x i1> %vec.phi166, %i.aw          ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !226

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <2 x i1> %i.ay, %i.ax
  %bin.rdx.fr = freeze <2 x i1> %bin.rdx
  %i.ba = bitcast <2 x i1> %bin.rdx.fr to i2
  %.not = icmp eq i2 %i.ba, 0
  %rdx.select = select i1 %.not, i32 %.0109, i32 0 ; 2 uses
  %cmp.n = icmp eq i64 %i.ao, %n.vec
  br i1 %cmp.n, label %.loopexit185, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader104, %middle.block
  %indvars.iv129.ph = phi i64 [ %indvars.iv, %.preheader104 ], [ %i.ap, %middle.block ]
  %.1107.ph = phi i32 [ %.0109, %.preheader104 ], [ %rdx.select, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv129 = phi i64 [ %indvars.iv.next130, %scalar.ph ], [ %indvars.iv129.ph, %scalar.ph.preheader ] ; 2 uses
  %.1107 = phi i32 [ %spec.select, %scalar.ph ], [ %.1107.ph, %scalar.ph.preheader ]
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv129
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !108
  %i.bd = tail call double @llvm.fabs.f64(double %i.bc)
  %i.be = fcmp ogt double %i.bd, f0x3D19000000000000
  %spec.select = select i1 %i.be, i32 0, i32 %.1107 ; 2 uses
  %indvars.iv.next130 = add nuw nsw i64 %indvars.iv129, 1 ; 2 uses
  %i.bf = icmp samesign ult i64 %indvars.iv.next130, %i.am
  br i1 %i.bf, label %scalar.ph, label %.loopexit185, !llvm.loop !227

.loopexit185:                                     ; preds = %scalar.ph, %middle.block
  %spec.select.lcssa = phi i32 [ %rdx.select, %middle.block ], [ %spec.select, %scalar.ph ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.preheader104

._crit_edge:                                      ; preds = %.loopexit185
  %.not89 = icmp eq i32 %spec.select.lcssa, 0
  br i1 %.not89, label %bb.x, label %.thread98

bb.x:                                             ; preds = %._crit_edge
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef %0, i32 noundef -44, i32 noundef 2780, ptr noundef nonnull @__func__.arkStep_CheckButcherTables, ptr noundef nonnull @.str, ptr noundef nonnull @.str.74) #13
  br label %.loopexit

.thread98:                                        ; preds = %bb.t, %._crit_edge, %bb.w
  br i1 %.not83.not, label %bb.ac, label %.lr.ph

.lr.ph:                                           ; preds = %.thread98
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !119
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !188 ; 3 uses
  %wide.trip.count137 = zext nneg i32 %i.o to i64 ; 3 uses
  %xtraiter = and i64 %wide.trip.count137, 1
  %i.bk = icmp eq i32 %i.o, 1
  br i1 %i.bk, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count137, 2147483646
  br label %bb.y

bb.y:                                             ; preds = %bb.y, %.lr.ph.new
  %indvars.iv133 = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next134.1, %bb.y ] ; 4 uses
  %.3111 = phi i32 [ 0, %.lr.ph.new ], [ %spec.select96.1, %bb.y ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.y ]
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %indvars.iv133
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !189
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %indvars.iv133
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !108
  %i.bp = tail call double @llvm.fabs.f64(double %i.bo)
  %i.bq = fcmp ogt double %i.bp, f0x3D19000000000000
  %indvars.iv.next134 = or disjoint i64 %indvars.iv133, 1 ; 2 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %indvars.iv.next134
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !189
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv.next134
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !108
  %i.bv = tail call double @llvm.fabs.f64(double %i.bu)
  %i.bw = fcmp ogt double %i.bv, f0x3D19000000000000
  %i.bx = select i1 %i.bw, i1 true, i1 %i.bq
  %spec.select96.1 = select i1 %i.bx, i32 1, i32 %.3111 ; 3 uses
  %indvars.iv.next134.1 = add nuw nsw i64 %indvars.iv133, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge112.unr-lcssa, label %bb.y

._crit_edge112.unr-lcssa:                         ; preds = %bb.y
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge112, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge112.unr-lcssa, %.lr.ph
  %indvars.iv133.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next134.1, %._crit_edge112.unr-lcssa ] ; 2 uses
  %.3111.epil.init = phi i32 [ 0, %.lr.ph ], [ %spec.select96.1, %._crit_edge112.unr-lcssa ]
  %lcmp.mod192 = trunc i32 %i.o to i1
  tail call void @llvm.assume(i1 %lcmp.mod192)
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %indvars.iv133.epil.init
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !189
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %indvars.iv133.epil.init
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !108
  %i.cc = tail call double @llvm.fabs.f64(double %i.cb)
  %i.cd = fcmp ogt double %i.cc, f0x3D19000000000000
  %spec.select96.epil = select i1 %i.cd, i32 1, i32 %.3111.epil.init
  br label %._crit_edge112

._crit_edge112:                                   ; preds = %._crit_edge112.unr-lcssa, %.epil.preheader
  %spec.select96.lcssa = phi i32 [ %spec.select96.1, %._crit_edge112.unr-lcssa ], [ %spec.select96.epil, %.epil.preheader ]
  %.not91 = icmp eq i32 %spec.select96.lcssa, 0
  br i1 %.not91, label %bb.z, label %.lr.ph121

.lr.ph121:                                        ; preds = %._crit_edge112
  %i.ce = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.cf = zext nneg i32 %i.o to i64
  %wide.trip.count150 = zext nneg i32 %i.o to i64
  %wide.trip.count144 = zext nneg i32 %i.o to i64
  br label %bb.aa

bb.z:                                             ; preds = %._crit_edge112
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef %0, i32 noundef -44, i32 noundef 2796, ptr noundef nonnull @__func__.arkStep_CheckButcherTables, ptr noundef nonnull @.str, ptr noundef nonnull @.str.75) #13
  br label %.loopexit

.loopexit101:                                     ; preds = %scalar.ph168, %middle.block179, %bb.aa
  %.6.lcssa = phi i32 [ %.5120, %bb.aa ], [ %rdx.select181, %middle.block179 ], [ %spec.select97, %scalar.ph168 ] ; 2 uses
  %indvars.iv.next140 = add nuw nsw i64 %indvars.iv139, 1
  %exitcond151.not = icmp eq i64 %indvars.iv.next147, %wide.trip.count150
  br i1 %exitcond151.not, label %._crit_edge122, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph121, %.loopexit101
  %indvars.iv146 = phi i64 [ 0, %.lr.ph121 ], [ %indvars.iv.next147, %.loopexit101 ] ; 3 uses
  %indvars.iv139 = phi i64 [ 1, %.lr.ph121 ], [ %indvars.iv.next140, %.loopexit101 ] ; 4 uses
  %.5120 = phi i32 [ 1, %.lr.ph121 ], [ %.6.lcssa, %.loopexit101 ] ; 3 uses
  %i.cg = xor i64 %indvars.iv146, -1
  %i.ch = add nsw i64 %i.cg, %wide.trip.count137  ; 3 uses
  %indvars.iv.next147 = add nuw nsw i64 %indvars.iv146, 1 ; 3 uses
  %i.ci = icmp samesign ult i64 %indvars.iv.next147, %i.cf
  br i1 %i.ci, label %.lr.ph117, label %.loopexit101

.lr.ph117:                                        ; preds = %bb.aa
  %i.cj = load ptr, ptr %i.ce, align 8, !tbaa !119
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !188
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %indvars.iv146
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !189 ; 2 uses
  %min.iters.check169 = icmp ult i64 %i.ch, 4
  br i1 %min.iters.check169, label %scalar.ph168.preheader, label %vector.ph170

vector.ph170:                                     ; preds = %.lr.ph117
  %n.vec171 = and i64 %i.ch, -4                   ; 3 uses
  %i.co = add i64 %indvars.iv139, %n.vec171
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %indvars.iv139
  br label %vector.body172

vector.body172:                                   ; preds = %vector.body172, %vector.ph170
  %index173 = phi i64 [ 0, %vector.ph170 ], [ %index.next178, %vector.body172 ] ; 2 uses
  %vec.phi174 = phi <2 x i1> [ zeroinitializer, %vector.ph170 ], [ %i.cw, %vector.body172 ]
  %vec.phi175 = phi <2 x i1> [ zeroinitializer, %vector.ph170 ], [ %i.cx, %vector.body172 ]
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %index173 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %wide.load176 = load <2 x double>, ptr %i.cq, align 8, !tbaa !108
  %wide.load177 = load <2 x double>, ptr %i.cr, align 8, !tbaa !108
  %i.cs = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %wide.load176)
  %i.ct = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %wide.load177)
  %i.cu = fcmp ogt <2 x double> %i.cs, splat (double f0x3D19000000000000)
  %i.cv = fcmp ogt <2 x double> %i.ct, splat (double f0x3D19000000000000)
  %i.cw = or <2 x i1> %vec.phi174, %i.cu          ; 2 uses
  %i.cx = or <2 x i1> %vec.phi175, %i.cv          ; 2 uses
  %index.next178 = add nuw i64 %index173, 4       ; 2 uses
  %i.cy = icmp eq i64 %index.next178, %n.vec171
  br i1 %i.cy, label %middle.block179, label %vector.body172, !llvm.loop !228

middle.block179:                                  ; preds = %vector.body172
  %bin.rdx180 = or <2 x i1> %i.cx, %i.cw
  %bin.rdx180.fr = freeze <2 x i1> %bin.rdx180
  %i.cz = bitcast <2 x i1> %bin.rdx180.fr to i2
  %.not186 = icmp eq i2 %i.cz, 0
  %rdx.select181 = select i1 %.not186, i32 %.5120, i32 0 ; 2 uses
  %cmp.n182 = icmp eq i64 %i.ch, %n.vec171
  br i1 %cmp.n182, label %.loopexit101, label %scalar.ph168.preheader

scalar.ph168.preheader:                           ; preds = %.lr.ph117, %middle.block179
  %indvars.iv141.ph = phi i64 [ %indvars.iv139, %.lr.ph117 ], [ %i.co, %middle.block179 ]
  %.6115.ph = phi i32 [ %.5120, %.lr.ph117 ], [ %rdx.select181, %middle.block179 ]
  br label %scalar.ph168

scalar.ph168:                                     ; preds = %scalar.ph168.preheader, %scalar.ph168
  %indvars.iv141 = phi i64 [ %indvars.iv.next142, %scalar.ph168 ], [ %indvars.iv141.ph, %scalar.ph168.preheader ] ; 2 uses
  %.6115 = phi i32 [ %spec.select97, %scalar.ph168 ], [ %.6115.ph, %scalar.ph168.preheader ]
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %indvars.iv141
  %i.db = load double, ptr %i.da, align 8, !tbaa !108
  %i.dc = tail call double @llvm.fabs.f64(double %i.db)
  %i.dd = fcmp ogt double %i.dc, f0x3D19000000000000
  %spec.select97 = select i1 %i.dd, i32 0, i32 %.6115 ; 2 uses
  %indvars.iv.next142 = add nuw nsw i64 %indvars.iv141, 1 ; 2 uses
  %exitcond145.not = icmp eq i64 %indvars.iv.next142, %wide.trip.count144
  br i1 %exitcond145.not, label %.loopexit101, label %scalar.ph168, !llvm.loop !229

._crit_edge122:                                   ; preds = %.loopexit101
  %.not92 = icmp eq i32 %.6.lcssa, 0
  br i1 %.not92, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %._crit_edge122
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef %0, i32 noundef -44, i32 noundef 2811, ptr noundef nonnull @__func__.arkStep_CheckButcherTables, ptr noundef nonnull @.str, ptr noundef nonnull @.str.76) #13
  br label %.loopexit

bb.ac:                                            ; preds = %._crit_edge122, %.thread98
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 1044
  %i.df = load i32, ptr %i.de, align 4, !tbaa !132
  %.not93 = icmp eq i32 %i.df, 0
  br i1 %.not93, label %.loopexit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dg = icmp eq i32 %i.r, 1
  br i1 %i.dg, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef nonnull %0, i32 noundef -44, i32 noundef 2822, ptr noundef nonnull @__func__.arkStep_CheckButcherTables, ptr noundef nonnull @.str, ptr noundef nonnull @.str.77) #13
  br label %.loopexit

bb.af:                                            ; preds = %bb.ad
  br i1 %.not.not, label %.loopexit100, label %.lr.ph125

.lr.ph125:                                        ; preds = %bb.af
  %i.dh = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !120
end_hunk_0
