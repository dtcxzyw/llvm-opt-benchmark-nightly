Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fftw3/original/verify-lib?download=true
inline.NumInlined: 53
inline.NumDeleted: 6
loop-unroll.NumRuntimeUnrolled: 32
loop-unroll.NumUnrolled: 32
begin_hunk_0_@aadd:bb.a
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %indvars.iv.ph ; 2 uses
  store double %i.t, ptr %i.u, align 8, !tbaa !18
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.w = load double, ptr %i.v, align 8, !tbaa !18
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.y = load double, ptr %i.x, align 8, !tbaa !18
  %i.z = fadd double %i.w, %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store double %i.z, ptr %i.aa, align 8, !tbaa !18
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader27
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader27 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.ab = add nsw i64 %wide.trip.count, -1
  %i.ac = icmp eq i64 %indvars.iv.ph, %i.ab
  br i1 %i.ac, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !18
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv ; 2 uses
  %i.ag = load double, ptr %i.af, align 8, !tbaa !18
  %i.ah = fadd double %i.ae, %i.ag
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  store double %i.ah, ptr %i.ai, align 8, !tbaa !18
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !18
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.am = load double, ptr %i.al, align 8, !tbaa !18
  %i.an = fadd double %i.ak, %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store double %i.an, ptr %i.ao, align 8, !tbaa !18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv.next ; 2 uses
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !18
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv.next ; 2 uses
  %i.as = load double, ptr %i.ar, align 8, !tbaa !18
  %i.at = fadd double %i.aq, %i.as
  %i.au = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %indvars.iv.next ; 2 uses
  store double %i.at, ptr %i.au, align 8, !tbaa !18
  %i.av = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.aw = load double, ptr %i.av, align 8, !tbaa !18
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !18
  %i.az = fadd double %i.aw, %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store double %i.az, ptr %i.ba, align 8, !tbaa !18
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !49

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @asub(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp sgt i32 %3, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %3 to i64      ; 6 uses
  %min.iters.check = icmp ult i32 %3, 8
  br i1 %min.iters.check, label %.lr.ph.preheader27, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.b = shl nuw nsw i64 %wide.trip.count, 4      ; 3 uses
  %i.c = getelementptr i8, ptr %0, i64 %i.b       ; 2 uses
  %i.d = getelementptr i8, ptr %1, i64 %i.b
  %bound0 = icmp ult ptr %0, %i.d
  %bound1 = icmp ult ptr %1, %i.c
  %found.conflict = and i1 %bound0, %bound1
  %i.e = getelementptr i8, ptr %2, i64 %i.b
  %bound021 = icmp ult ptr %0, %i.e
  %bound122 = icmp ult ptr %2, %i.c
  %found.conflict23 = and i1 %bound021, %bound122
  %conflict.rdx = or i1 %found.conflict, %found.conflict23
  br i1 %conflict.rdx, label %.lr.ph.preheader27, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483646   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.f = or disjoint i64 %index, 1                ; 3 uses
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %index
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.f
  %wide.load = load <2 x double>, ptr %i.g, align 8, !tbaa !18, !alias.scope !60
  %wide.load24 = load <2 x double>, ptr %i.h, align 8, !tbaa !18, !alias.scope !60
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %index
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.f
  %wide.load25 = load <2 x double>, ptr %i.i, align 8, !tbaa !18, !alias.scope !61
  %wide.load26 = load <2 x double>, ptr %i.j, align 8, !tbaa !18, !alias.scope !61
  %i.k = fsub <2 x double> %wide.load, %wide.load25
  %i.l = fsub <2 x double> %wide.load24, %wide.load26
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %index
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.f
  store <2 x double> %i.k, ptr %i.m, align 8, !tbaa !18, !alias.scope !62, !noalias !63
  store <2 x double> %i.l, ptr %i.n, align 8, !tbaa !18, !alias.scope !62, !noalias !63
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.o = icmp eq i64 %index.next, %n.vec
  br i1 %i.o, label %middle.block, label %vector.body, !llvm.loop !58

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader27

.lr.ph.preheader27:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 6 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader27
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv.ph ; 2 uses
  %i.q = load double, ptr %i.p, align 8, !tbaa !18
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv.ph ; 2 uses
  %i.s = load double, ptr %i.r, align 8, !tbaa !18
  %i.t = fsub double %i.q, %i.s
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %indvars.iv.ph ; 2 uses
  store double %i.t, ptr %i.u, align 8, !tbaa !18
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.w = load double, ptr %i.v, align 8, !tbaa !18
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.y = load double, ptr %i.x, align 8, !tbaa !18
  %i.z = fsub double %i.w, %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store double %i.z, ptr %i.aa, align 8, !tbaa !18
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader27
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader27 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.ab = add nsw i64 %wide.trip.count, -1
  %i.ac = icmp eq i64 %indvars.iv.ph, %i.ab
  br i1 %i.ac, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !18
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv ; 2 uses
  %i.ag = load double, ptr %i.af, align 8, !tbaa !18
  %i.ah = fsub double %i.ae, %i.ag
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  store double %i.ah, ptr %i.ai, align 8, !tbaa !18
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !18
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.am = load double, ptr %i.al, align 8, !tbaa !18
  %i.an = fsub double %i.ak, %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store double %i.an, ptr %i.ao, align 8, !tbaa !18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv.next ; 2 uses
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !18
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv.next ; 2 uses
  %i.as = load double, ptr %i.ar, align 8, !tbaa !18
  %i.at = fsub double %i.aq, %i.as
  %i.au = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %indvars.iv.next ; 2 uses
  store double %i.at, ptr %i.au, align 8, !tbaa !18
  %i.av = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.aw = load double, ptr %i.av, align 8, !tbaa !18
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !18
  %i.az = fsub double %i.aw, %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store double %i.az, ptr %i.ba, align 8, !tbaa !18
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !59

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @arol(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp sgt i32 %3, 0
  br i1 %i.a, label %.preheader47.lr.ph, label %._crit_edge53

.preheader47.lr.ph:                               ; preds = %bb.a
  %i.b = icmp sgt i32 %2, 1
  %i.c = add i32 %2, -1                           ; 3 uses
  %i.d = icmp sgt i32 %4, 0                       ; 2 uses
  br i1 %i.b, label %.preheader47.lr.ph.split.us, label %.preheader47.lr.ph.split

.preheader47.lr.ph.split.us:                      ; preds = %.preheader47.lr.ph
  br i1 %i.d, label %.preheader47.us.us.us.preheader, label %._crit_edge53

.preheader47.us.us.us.preheader:                  ; preds = %.preheader47.lr.ph.split.us
  %i.e = zext nneg i32 %4 to i64                  ; 19 uses
  %i.f = zext nneg i32 %2 to i64                  ; 3 uses
  %i.g = zext nneg i32 %4 to i64
  %wide.trip.count79 = zext nneg i32 %3 to i64    ; 2 uses
  %wide.trip.count69 = zext i32 %i.c to i64
  %i.h = mul nuw nsw i64 %i.e, %i.f
  %i.i = add nuw nsw i64 %wide.trip.count79, 1152921504606846975
  %i.j = mul i64 %i.i, %i.f
  %i.k = shl i64 %i.j, 4
  %i.l = add i64 %i.k, 16
  %i.m = mul i64 %i.l, %i.e
  %scevgep99 = getelementptr i8, ptr %1, i64 %i.m
  %i.n = shl nuw nsw i64 %i.e, 4
  %scevgep100 = getelementptr i8, ptr %0, i64 %i.n
  %i.o = shl nuw nsw i64 %i.e, 4
  %i.p = shl nuw nsw i64 %i.e, 4
  %min.iters.check131 = icmp ult i32 %4, 4
  %n.vec137 = and i64 %i.e, 2147483646            ; 3 uses
  %cmp.n144 = icmp eq i64 %n.vec137, %i.e
  %min.iters.check102 = icmp ult i32 %4, 4
  %.mask146 = and i64 %i.h, 576460752303423488
  %stride.check107 = icmp ne i64 %.mask146, 0
  %n.vec109 = and i64 %i.e, 2147483646            ; 3 uses
  %cmp.n116 = icmp eq i64 %n.vec109, %i.e
  br label %.preheader47.us.us.us

.preheader47.us.us.us:                            ; preds = %.preheader47.us.us.us.preheader, %._crit_edge51.us.us.us
  %indvars.iv76 = phi i64 [ 0, %.preheader47.us.us.us.preheader ], [ %indvars.iv.next77, %._crit_edge51.us.us.us ] ; 3 uses
  %i.q = trunc i64 %indvars.iv76 to i32
  %i.r = mul i32 %2, %i.q
  %i.s = zext i32 %i.r to i64                     ; 3 uses
  %i.t = shl nuw nsw i64 %i.s, 4                  ; 2 uses
  %i.u = add nuw nsw i64 %i.t, 32
  %i.v = mul i64 %i.u, %i.e
  %scevgep126 = getelementptr i8, ptr %1, i64 %i.v
  %i.w = add nuw nsw i64 %i.s, 1
  %i.x = mul i64 %i.o, %i.w
  %scevgep127 = getelementptr nuw i8, ptr %1, i64 %i.x
  %i.y = add nuw nsw i64 %i.t, 16
  %i.z = mul i64 %i.y, %i.e
  %scevgep128 = getelementptr i8, ptr %0, i64 %i.z
  %i.aa = mul i64 %i.p, %i.s
  %scevgep129 = getelementptr nuw i8, ptr %0, i64 %i.aa
  %i.ab = mul nuw nsw i64 %indvars.iv76, %i.f     ; 3 uses
  %i.ac = trunc nsw i64 %i.ab to i32
  %i.ad = and i64 %i.ab, 4294967295
  %bound0133 = icmp ult ptr %scevgep129, %scevgep126
  %bound1134 = icmp ult ptr %scevgep127, %scevgep128
  %found.conflict135 = and i1 %bound0133, %bound1134
  br label %.preheader.us.us.us

.preheader.us.us.us:                              ; preds = %._crit_edge.us.us.us, %.preheader47.us.us.us
  %indvars.iv66 = phi i64 [ %indvars.iv.next67, %._crit_edge.us.us.us ], [ 0, %.preheader47.us.us.us ] ; 2 uses
  %i.ae = add nuw nsw i64 %indvars.iv66, %i.ad    ; 2 uses
  %i.af = mul nuw nsw i64 %i.ae, %i.e
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.af ; 7 uses
  %i.ah = add nuw nsw i64 %i.ae, 1
  %i.ai = mul nuw nsw i64 %i.ah, %i.e
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.ai ; 7 uses
  %brmerge = select i1 %min.iters.check131, i1 true, i1 %found.conflict135
  br i1 %brmerge, label %scalar.ph130.preheader, label %vector.body138

vector.body138:                                   ; preds = %.preheader.us.us.us, %vector.body138
  %index139 = phi i64 [ %index.next142, %vector.body138 ], [ 0, %.preheader.us.us.us ] ; 4 uses
  %i.ak = or disjoint i64 %index139, 1            ; 2 uses
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %index139
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %i.ak
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %i.aj, i64 %index139
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %i.aj, i64 %i.ak
  %wide.load140 = load <2 x double>, ptr %i.an, align 8, !tbaa !18, !alias.scope !82
  %wide.load141 = load <2 x double>, ptr %i.ao, align 8, !tbaa !18, !alias.scope !82
  store <2 x double> %wide.load140, ptr %i.al, align 8, !tbaa !18, !alias.scope !83, !noalias !82
  store <2 x double> %wide.load141, ptr %i.am, align 8, !tbaa !18, !alias.scope !83, !noalias !82
  %index.next142 = add nuw i64 %index139, 2       ; 2 uses
  %i.ap = icmp eq i64 %index.next142, %n.vec137
  br i1 %i.ap, label %middle.block143, label %vector.body138, !llvm.loop !67

middle.block143:                                  ; preds = %vector.body138
  br i1 %cmp.n144, label %._crit_edge.us.us.us, label %scalar.ph130.preheader

scalar.ph130.preheader:                           ; preds = %.preheader.us.us.us, %middle.block143
  %indvars.iv61.ph = phi i64 [ %n.vec137, %middle.block143 ], [ 0, %.preheader.us.us.us ] ; 4 uses
  %i.aq = sub nsw i64 %i.e, %indvars.iv61.ph
  %xtraiter148 = and i64 %i.aq, 3                 ; 2 uses
  %lcmp.mod149.not = icmp eq i64 %xtraiter148, 0
  br i1 %lcmp.mod149.not, label %scalar.ph130.prol.loopexit, label %scalar.ph130.prol

scalar.ph130.prol:                                ; preds = %scalar.ph130.preheader, %scalar.ph130.prol
  %indvars.iv61.prol = phi i64 [ %indvars.iv.next62.prol, %scalar.ph130.prol ], [ %indvars.iv61.ph, %scalar.ph130.preheader ] ; 3 uses
  %prol.iter150 = phi i64 [ %prol.iter150.next, %scalar.ph130.prol ], [ 0, %scalar.ph130.preheader ]
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %indvars.iv61.prol ; 2 uses
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %i.aj, i64 %indvars.iv61.prol ; 2 uses
  %i.at = load double, ptr %i.as, align 8, !tbaa !18
  store double %i.at, ptr %i.ar, align 8, !tbaa !18
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.av = load double, ptr %i.au, align 8, !tbaa !18
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store double %i.av, ptr %i.aw, align 8, !tbaa !18
  %indvars.iv.next62.prol = add nuw nsw i64 %indvars.iv61.prol, 1 ; 2 uses
  %prol.iter150.next = add i64 %prol.iter150, 1   ; 2 uses
  %prol.iter150.cmp.not = icmp eq i64 %prol.iter150.next, %xtraiter148
  br i1 %prol.iter150.cmp.not, label %scalar.ph130.prol.loopexit, label %scalar.ph130.prol, !llvm.loop !68

scalar.ph130.prol.loopexit:                       ; preds = %scalar.ph130.prol, %scalar.ph130.preheader
  %indvars.iv61.unr = phi i64 [ %indvars.iv61.ph, %scalar.ph130.preheader ], [ %indvars.iv.next62.prol, %scalar.ph130.prol ]
  %i.ax = sub nsw i64 %indvars.iv61.ph, %i.e
  %i.ay = icmp ugt i64 %i.ax, -4
  br i1 %i.ay, label %._crit_edge.us.us.us, label %scalar.ph130

scalar.ph130:                                     ; preds = %scalar.ph130.prol.loopexit, %scalar.ph130
  %indvars.iv61 = phi i64 [ %indvars.iv.next62.3, %scalar.ph130 ], [ %indvars.iv61.unr, %scalar.ph130.prol.loopexit ] ; 6 uses
  %i.az = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %indvars.iv61 ; 2 uses
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %i.aj, i64 %indvars.iv61 ; 2 uses
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !18
  store double %i.bb, ptr %i.az, align 8, !tbaa !18
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !18
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store double %i.bd, ptr %i.be, align 8, !tbaa !18
  %indvars.iv.next62 = add nuw nsw i64 %indvars.iv61, 1 ; 2 uses
  %i.bf = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %indvars.iv.next62 ; 2 uses
  %i.bg = getelementptr inbounds nuw [16 x i8], ptr %i.aj, i64 %indvars.iv.next62 ; 2 uses
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !18
  store double %i.bh, ptr %i.bf, align 8, !tbaa !18
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !18
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store double %i.bj, ptr %i.bk, align 8, !tbaa !18
  %indvars.iv.next62.1 = add nuw nsw i64 %indvars.iv61, 2 ; 2 uses
  %i.bl = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %indvars.iv.next62.1 ; 2 uses
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %i.aj, i64 %indvars.iv.next62.1 ; 2 uses
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !18
  store double %i.bn, ptr %i.bl, align 8, !tbaa !18
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !18
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store double %i.bp, ptr %i.bq, align 8, !tbaa !18
  %indvars.iv.next62.2 = add nuw nsw i64 %indvars.iv61, 3 ; 2 uses
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %indvars.iv.next62.2 ; 2 uses
  %i.bs = getelementptr inbounds nuw [16 x i8], ptr %i.aj, i64 %indvars.iv.next62.2 ; 2 uses
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !18
  store double %i.bt, ptr %i.br, align 8, !tbaa !18
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !18
  %i.bw = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store double %i.bv, ptr %i.bw, align 8, !tbaa !18
  %indvars.iv.next62.3 = add nuw nsw i64 %indvars.iv61, 4 ; 2 uses
  %exitcond65.not.3 = icmp eq i64 %indvars.iv.next62.3, %i.e
  br i1 %exitcond65.not.3, label %._crit_edge.us.us.us, label %scalar.ph130, !llvm.loop !69

._crit_edge.us.us.us:                             ; preds = %scalar.ph130.prol.loopexit, %scalar.ph130, %middle.block143
  %indvars.iv.next67 = add nuw nsw i64 %indvars.iv66, 1 ; 2 uses
  %exitcond70.not = icmp eq i64 %indvars.iv.next67, %wide.trip.count69
  br i1 %exitcond70.not, label %..preheader46_crit_edge.us.us.us, label %.preheader.us.us.us, !llvm.loop !2

..preheader46_crit_edge.us.us.us:                 ; preds = %._crit_edge.us.us.us
  %i.bx = add i32 %i.c, %i.ac
  %i.by = mul nsw i32 %i.bx, %4
  %i.bz = sext i32 %i.by to i64                   ; 2 uses
  %i.ca = getelementptr inbounds [16 x i8], ptr %0, i64 %i.bz ; 8 uses
  %i.cb = mul nuw nsw i64 %i.ab, %i.g
  %i.cc = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.cb ; 7 uses
  br i1 %min.iters.check102, label %scalar.ph101.preheader, label %vector.memcheck103

vector.memcheck103:                               ; preds = %..preheader46_crit_edge.us.us.us
  %i.cd = shl nsw i64 %i.bz, 4
  %i.ce = getelementptr i8, ptr %scevgep100, i64 %i.cd
  %bound0104 = icmp ult ptr %i.ca, %scevgep99
  %bound1105 = icmp ult ptr %1, %i.ce
  %found.conflict106 = and i1 %bound0104, %bound1105
  %i.cf = or i1 %found.conflict106, %stride.check107
  br i1 %i.cf, label %scalar.ph101.preheader, label %vector.body110

vector.body110:                                   ; preds = %vector.memcheck103, %vector.body110
  %index111 = phi i64 [ %index.next114, %vector.body110 ], [ 0, %vector.memcheck103 ] ; 4 uses
  %i.cg = or disjoint i64 %index111, 1            ; 2 uses
  %i.ch = getelementptr inbounds nuw [16 x i8], ptr %i.ca, i64 %index111
  %i.ci = getelementptr inbounds nuw [16 x i8], ptr %i.ca, i64 %i.cg
  %i.cj = getelementptr inbounds nuw [16 x i8], ptr %i.cc, i64 %index111
  %i.ck = getelementptr inbounds nuw [16 x i8], ptr %i.cc, i64 %i.cg
  %wide.load112 = load <2 x double>, ptr %i.cj, align 8, !tbaa !18, !alias.scope !84
  %wide.load113 = load <2 x double>, ptr %i.ck, align 8, !tbaa !18, !alias.scope !84
  store <2 x double> %wide.load112, ptr %i.ch, align 8, !tbaa !18, !alias.scope !85, !noalias !84
  store <2 x double> %wide.load113, ptr %i.ci, align 8, !tbaa !18, !alias.scope !85, !noalias !84
  %index.next114 = add nuw i64 %index111, 2       ; 2 uses
  %i.cl = icmp eq i64 %index.next114, %n.vec109
  br i1 %i.cl, label %middle.block115, label %vector.body110, !llvm.loop !73

middle.block115:                                  ; preds = %vector.body110
  br i1 %cmp.n116, label %._crit_edge51.us.us.us, label %scalar.ph101.preheader

scalar.ph101.preheader:                           ; preds = %vector.memcheck103, %..preheader46_crit_edge.us.us.us, %middle.block115
  %indvars.iv71.ph = phi i64 [ 0, %vector.memcheck103 ], [ 0, %..preheader46_crit_edge.us.us.us ], [ %n.vec109, %middle.block115 ] ; 4 uses
  %i.cm = sub nsw i64 %i.e, %indvars.iv71.ph
  %xtraiter151 = and i64 %i.cm, 3                 ; 2 uses
  %lcmp.mod152.not = icmp eq i64 %xtraiter151, 0
  br i1 %lcmp.mod152.not, label %scalar.ph101.prol.loopexit, label %scalar.ph101.prol

scalar.ph101.prol:                                ; preds = %scalar.ph101.preheader, %scalar.ph101.prol
  %indvars.iv71.prol = phi i64 [ %indvars.iv.next72.prol, %scalar.ph101.prol ], [ %indvars.iv71.ph, %scalar.ph101.preheader ] ; 3 uses
  %prol.iter153 = phi i64 [ %prol.iter153.next, %scalar.ph101.prol ], [ 0, %scalar.ph101.preheader ]
  %i.cn = getelementptr inbounds nuw [16 x i8], ptr %i.ca, i64 %indvars.iv71.prol ; 2 uses
  %i.co = getelementptr inbounds nuw [16 x i8], ptr %i.cc, i64 %indvars.iv71.prol ; 2 uses
  %i.cp = load double, ptr %i.co, align 8, !tbaa !18
  store double %i.cp, ptr %i.cn, align 8, !tbaa !18
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !18
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  store double %i.cr, ptr %i.cs, align 8, !tbaa !18
  %indvars.iv.next72.prol = add nuw nsw i64 %indvars.iv71.prol, 1 ; 2 uses
  %prol.iter153.next = add i64 %prol.iter153, 1   ; 2 uses
  %prol.iter153.cmp.not = icmp eq i64 %prol.iter153.next, %xtraiter151
  br i1 %prol.iter153.cmp.not, label %scalar.ph101.prol.loopexit, label %scalar.ph101.prol, !llvm.loop !74

scalar.ph101.prol.loopexit:                       ; preds = %scalar.ph101.prol, %scalar.ph101.preheader
  %indvars.iv71.unr = phi i64 [ %indvars.iv71.ph, %scalar.ph101.preheader ], [ %indvars.iv.next72.prol, %scalar.ph101.prol ]
  %i.ct = sub nsw i64 %indvars.iv71.ph, %i.e
  %i.cu = icmp ugt i64 %i.ct, -4
  br i1 %i.cu, label %._crit_edge51.us.us.us, label %scalar.ph101

scalar.ph101:                                     ; preds = %scalar.ph101.prol.loopexit, %scalar.ph101
  %indvars.iv71 = phi i64 [ %indvars.iv.next72.3, %scalar.ph101 ], [ %indvars.iv71.unr, %scalar.ph101.prol.loopexit ] ; 6 uses
  %i.cv = getelementptr inbounds nuw [16 x i8], ptr %i.ca, i64 %indvars.iv71 ; 2 uses
  %i.cw = getelementptr inbounds nuw [16 x i8], ptr %i.cc, i64 %indvars.iv71 ; 2 uses
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !18
  store double %i.cx, ptr %i.cv, align 8, !tbaa !18
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !18
  %i.da = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  store double %i.cz, ptr %i.da, align 8, !tbaa !18
  %indvars.iv.next72 = add nuw nsw i64 %indvars.iv71, 1 ; 2 uses
  %i.db = getelementptr inbounds nuw [16 x i8], ptr %i.ca, i64 %indvars.iv.next72 ; 2 uses
  %i.dc = getelementptr inbounds nuw [16 x i8], ptr %i.cc, i64 %indvars.iv.next72 ; 2 uses
  %i.dd = load double, ptr %i.dc, align 8, !tbaa !18
  store double %i.dd, ptr %i.db, align 8, !tbaa !18
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.df = load double, ptr %i.de, align 8, !tbaa !18
  %i.dg = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  store double %i.df, ptr %i.dg, align 8, !tbaa !18
  %indvars.iv.next72.1 = add nuw nsw i64 %indvars.iv71, 2 ; 2 uses
  %i.dh = getelementptr inbounds nuw [16 x i8], ptr %i.ca, i64 %indvars.iv.next72.1 ; 2 uses
  %i.di = getelementptr inbounds nuw [16 x i8], ptr %i.cc, i64 %indvars.iv.next72.1 ; 2 uses
  %i.dj = load double, ptr %i.di, align 8, !tbaa !18
  store double %i.dj, ptr %i.dh, align 8, !tbaa !18
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dl = load double, ptr %i.dk, align 8, !tbaa !18
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  store double %i.dl, ptr %i.dm, align 8, !tbaa !18
  %indvars.iv.next72.2 = add nuw nsw i64 %indvars.iv71, 3 ; 2 uses
  %i.dn = getelementptr inbounds nuw [16 x i8], ptr %i.ca, i64 %indvars.iv.next72.2 ; 2 uses
  %i.do = getelementptr inbounds nuw [16 x i8], ptr %i.cc, i64 %indvars.iv.next72.2 ; 2 uses
  %i.dp = load double, ptr %i.do, align 8, !tbaa !18
  store double %i.dp, ptr %i.dn, align 8, !tbaa !18
  %i.dq = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.dr = load double, ptr %i.dq, align 8, !tbaa !18
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  store double %i.dr, ptr %i.ds, align 8, !tbaa !18
  %indvars.iv.next72.3 = add nuw nsw i64 %indvars.iv71, 4 ; 2 uses
  %exitcond75.not.3 = icmp eq i64 %indvars.iv.next72.3, %i.e
  br i1 %exitcond75.not.3, label %._crit_edge51.us.us.us, label %scalar.ph101, !llvm.loop !75

._crit_edge51.us.us.us:                           ; preds = %scalar.ph101.prol.loopexit, %scalar.ph101, %middle.block115
  %indvars.iv.next77 = add nuw nsw i64 %indvars.iv76, 1 ; 2 uses
  %exitcond80.not = icmp eq i64 %indvars.iv.next77, %wide.trip.count79
  br i1 %exitcond80.not, label %._crit_edge53, label %.preheader47.us.us.us, !llvm.loop !3

.preheader47.lr.ph.split:                         ; preds = %.preheader47.lr.ph
  br i1 %i.d, label %.preheader47.preheader, label %._crit_edge53

.preheader47.preheader:                           ; preds = %.preheader47.lr.ph.split
  %i.dt = sext i32 %2 to i64                      ; 3 uses
  %i.du = zext nneg i32 %4 to i64
  %wide.trip.count59 = zext nneg i32 %3 to i64    ; 2 uses
  %wide.trip.count = zext nneg i32 %4 to i64      ; 8 uses
  %i.dv = mul nsw i64 %i.dt, %wide.trip.count
  %i.dw = add nuw nsw i64 %wide.trip.count59, 1152921504606846975
  %i.dx = mul i64 %i.dw, %i.dt
  %i.dy = shl i64 %i.dx, 4
  %i.dz = add i64 %i.dy, 16
  %i.ea = mul i64 %i.dz, %wide.trip.count
  %scevgep = getelementptr i8, ptr %1, i64 %i.ea
  %i.eb = shl nuw nsw i64 %wide.trip.count, 4
  %scevgep89 = getelementptr i8, ptr %0, i64 %i.eb
  %min.iters.check = icmp ult i32 %4, 4
  %.mask = and i64 %i.dv, 576460752303423488
  %stride.check = icmp ne i64 %.mask, 0
  %n.vec = and i64 %wide.trip.count, 2147483646   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.preheader47

.preheader47:                                     ; preds = %.preheader47.preheader, %._crit_edge51
  %indvars.iv56 = phi i64 [ 0, %.preheader47.preheader ], [ %indvars.iv.next57, %._crit_edge51 ] ; 2 uses
  %i.ec = mul nsw i64 %indvars.iv56, %i.dt        ; 2 uses
  %i.ed = trunc nsw i64 %i.ec to i32
  %i.ee = add i32 %i.c, %i.ed
  %i.ef = mul nsw i32 %i.ee, %4
  %i.eg = sext i32 %i.ef to i64                   ; 2 uses
  %i.eh = getelementptr inbounds [16 x i8], ptr %0, i64 %i.eg ; 8 uses
  %i.ei = mul nsw i64 %i.ec, %i.du
  %i.ej = getelementptr inbounds [16 x i8], ptr %1, i64 %i.ei ; 7 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader47
  %i.ek = shl nsw i64 %i.eg, 4
  %i.el = getelementptr i8, ptr %scevgep89, i64 %i.ek
  %bound0 = icmp ult ptr %i.eh, %scevgep
  %bound1 = icmp ult ptr %1, %i.el
  %found.conflict = and i1 %bound0, %bound1
  %i.em = or i1 %found.conflict, %stride.check
  br i1 %i.em, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 4 uses
  %i.en = or disjoint i64 %index, 1               ; 2 uses
  %i.eo = getelementptr inbounds nuw [16 x i8], ptr %i.eh, i64 %index
  %i.ep = getelementptr inbounds nuw [16 x i8], ptr %i.eh, i64 %i.en
  %i.eq = getelementptr inbounds nuw [16 x i8], ptr %i.ej, i64 %index
  %i.er = getelementptr inbounds nuw [16 x i8], ptr %i.ej, i64 %i.en
  %wide.load = load <2 x double>, ptr %i.eq, align 8, !tbaa !18, !alias.scope !86
  %wide.load90 = load <2 x double>, ptr %i.er, align 8, !tbaa !18, !alias.scope !86
  store <2 x double> %wide.load, ptr %i.eo, align 8, !tbaa !18, !alias.scope !87, !noalias !86
  store <2 x double> %wide.load90, ptr %i.ep, align 8, !tbaa !18, !alias.scope !87, !noalias !86
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.es = icmp eq i64 %index.next, %n.vec
  br i1 %i.es, label %middle.block, label %vector.body, !llvm.loop !79

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge51, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader47, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.preheader47 ], [ %n.vec, %middle.block ] ; 4 uses
  %i.et = sub nsw i64 %wide.trip.count, %indvars.iv.ph
  %xtraiter = and i64 %i.et, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.eu = getelementptr inbounds nuw [16 x i8], ptr %i.eh, i64 %indvars.iv.prol ; 2 uses
  %i.ev = getelementptr inbounds nuw [16 x i8], ptr %i.ej, i64 %indvars.iv.prol ; 2 uses
  %i.ew = load double, ptr %i.ev, align 8, !tbaa !18
  store double %i.ew, ptr %i.eu, align 8, !tbaa !18
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  %i.ey = load double, ptr %i.ex, align 8, !tbaa !18
  %i.ez = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  store double %i.ey, ptr %i.ez, align 8, !tbaa !18
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !80

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.fa = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.fb = icmp ugt i64 %i.fa, -4
  br i1 %i.fb, label %._crit_edge51, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.fc = getelementptr inbounds nuw [16 x i8], ptr %i.eh, i64 %indvars.iv ; 2 uses
  %i.fd = getelementptr inbounds nuw [16 x i8], ptr %i.ej, i64 %indvars.iv ; 2 uses
  %i.fe = load double, ptr %i.fd, align 8, !tbaa !18
  store double %i.fe, ptr %i.fc, align 8, !tbaa !18
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  %i.fg = load double, ptr %i.ff, align 8, !tbaa !18
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  store double %i.fg, ptr %i.fh, align 8, !tbaa !18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.fi = getelementptr inbounds nuw [16 x i8], ptr %i.eh, i64 %indvars.iv.next ; 2 uses
  %i.fj = getelementptr inbounds nuw [16 x i8], ptr %i.ej, i64 %indvars.iv.next ; 2 uses
  %i.fk = load double, ptr %i.fj, align 8, !tbaa !18
  store double %i.fk, ptr %i.fi, align 8, !tbaa !18
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  %i.fm = load double, ptr %i.fl, align 8, !tbaa !18
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  store double %i.fm, ptr %i.fn, align 8, !tbaa !18
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.fo = getelementptr inbounds nuw [16 x i8], ptr %i.eh, i64 %indvars.iv.next.1 ; 2 uses
  %i.fp = getelementptr inbounds nuw [16 x i8], ptr %i.ej, i64 %indvars.iv.next.1 ; 2 uses
  %i.fq = load double, ptr %i.fp, align 8, !tbaa !18
  store double %i.fq, ptr %i.fo, align 8, !tbaa !18
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  %i.fs = load double, ptr %i.fr, align 8, !tbaa !18
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  store double %i.fs, ptr %i.ft, align 8, !tbaa !18
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.fu = getelementptr inbounds nuw [16 x i8], ptr %i.eh, i64 %indvars.iv.next.2 ; 2 uses
  %i.fv = getelementptr inbounds nuw [16 x i8], ptr %i.ej, i64 %indvars.iv.next.2 ; 2 uses
  %i.fw = load double, ptr %i.fv, align 8, !tbaa !18
  store double %i.fw, ptr %i.fu, align 8, !tbaa !18
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  %i.fy = load double, ptr %i.fx, align 8, !tbaa !18
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  store double %i.fy, ptr %i.fz, align 8, !tbaa !18
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge51, label %scalar.ph, !llvm.loop !81

._crit_edge51:                                    ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next57 = add nuw nsw i64 %indvars.iv56, 1 ; 2 uses
  %exitcond60.not = icmp eq i64 %indvars.iv.next57, %wide.trip.count59
  br i1 %exitcond60.not, label %._crit_edge53, label %.preheader47, !llvm.loop !3

._crit_edge53:                                    ; preds = %._crit_edge51, %._crit_edge51.us.us.us, %.preheader47.lr.ph.split.us, %.preheader47.lr.ph.split, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable
define dso_local void @aphase_shift(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, double noundef %5) local_unnamed_addr #7 {
bb.a:
  %i.a = sitofp i32 %2 to double
  %i.b = fdiv nnan double f0x401921FB54442D18, %i.a ; 10 uses
  %i.c = icmp sgt i32 %3, 0
  %i.d = icmp sgt i32 %2, 0
  %or.cond = and i1 %i.c, %i.d
  br i1 %or.cond, label %.preheader.lr.ph.split, label %._crit_edge.split

.preheader.lr.ph.split:                           ; preds = %bb.a
  %i.e = icmp sgt i32 %4, 0
  br i1 %i.e, label %.preheader.us.preheader, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph.split
  %xtraiter = and i32 %2, 7                       ; 3 uses
  %i.f = icmp ult i32 %2, 8
  %unroll_iter = and i32 %2, 2147483640
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod80 = icmp ne i32 %xtraiter, 0
  br label %.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph.split
  %i.g = zext nneg i32 %4 to i64                  ; 8 uses
  %i.h = zext nneg i32 %2 to i64                  ; 3 uses
  %wide.trip.count58 = zext nneg i32 %3 to i64
  %i.i = shl nuw nsw i64 %i.g, 4
  %i.j = mul nuw nsw i64 %i.g, %i.h
  %i.k = shl i64 %i.j, 4
  %min.iters.check = icmp eq i32 %4, 1
  %n.vec = and i64 %i.g, 2147483646               ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.g
  %xtraiter81 = and i64 %i.g, 1
  %lcmp.mod82.not = icmp eq i64 %xtraiter81, 0
  %i.l = add nsw i64 %i.g, -1
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge42.split.us.us
  %indvars.iv55 = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next56, %._crit_edge42.split.us.us ] ; 3 uses
  %i.m = mul i64 %i.k, %indvars.iv55              ; 3 uses
  %i.n = add i64 %i.i, %i.m                       ; 2 uses
  %scevgep = getelementptr i8, ptr %1, i64 %i.n
  %scevgep68 = getelementptr i8, ptr %1, i64 %i.m
  %scevgep69 = getelementptr i8, ptr %0, i64 %i.n
  %scevgep70 = getelementptr i8, ptr %0, i64 %i.m
  %i.o = mul nuw nsw i64 %indvars.iv55, %i.h
  %bound0 = icmp ult ptr %scevgep70, %scevgep
  %bound1 = icmp ult ptr %scevgep68, %scevgep69
  %found.conflict = and i1 %bound0, %bound1
  br label %.lr.ph.us.us

.lr.ph.us.us:                                     ; preds = %._crit_edge.us.us, %.preheader.us
  %indvars.iv50 = phi i64 [ %indvars.iv.next51, %._crit_edge.us.us ], [ 0, %.preheader.us ] ; 3 uses
  %i.p = trunc nuw nsw i64 %indvars.iv50 to i32
  %i.q = uitofp nneg i32 %i.p to double
  %i.r = fmul double %i.b, %i.q                   ; 2 uses
  %i.s = tail call double @sin(double noundef %i.r) #13
  %i.t = fmul double %5, %i.s                     ; 5 uses
  %i.u = tail call double @cos(double noundef %i.r) #13 ; 7 uses
  %i.v = add nuw nsw i64 %indvars.iv50, %i.o
  %i.w = mul nuw nsw i64 %i.v, %i.g               ; 4 uses
  %i.x = fneg double %i.t                         ; 4 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %found.conflict
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.us.us
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.t, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert71 = insertelement <2 x double> poison, double %i.u, i64 0
  %broadcast.splat72 = shufflevector <2 x double> %broadcast.splatinsert71, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert73 = insertelement <2 x double> poison, double %i.x, i64 0
  %broadcast.splat74 = shufflevector <2 x double> %broadcast.splatinsert73, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.y = add nuw nsw i64 %index, %i.w             ; 2 uses
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.y
  %wide.vec = load <4 x double>, ptr %i.z, align 8, !tbaa !18, !alias.scope !94 ; 4 uses
  %strided.vec = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec75 = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %i.aa = fmul <2 x double> %strided.vec75, %broadcast.splat74
  %i.ab = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %strided.vec, <2 x double> %broadcast.splat72, <2 x double> %i.aa)
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.y
  %strided.vec77 = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec78 = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %i.ad = fmul <2 x double> %broadcast.splat72, %strided.vec78
  %i.ae = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %strided.vec77, <2 x double> %broadcast.splat, <2 x double> %i.ad)
  %interleaved.vec = shufflevector <2 x double> %i.ab, <2 x double> %i.ae, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec, ptr %i.ac, align 8, !tbaa !18, !alias.scope !95, !noalias !94
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !91

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.us.us, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph.us.us ] ; 4 uses
  br i1 %lcmp.mod82.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ag = add nuw nsw i64 %indvars.iv.ph, %i.w    ; 2 uses
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.ag ; 3 uses
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !18
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 2 uses
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !18
  %i.al = fmul double %i.ak, %i.x
  %i.am = tail call double @llvm.fmuladd.f64(double %i.ai, double %i.u, double %i.al)
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.ag ; 2 uses
  store double %i.am, ptr %i.an, align 8, !tbaa !18
  %i.ao = load double, ptr %i.ah, align 8, !tbaa !18
  %i.ap = load double, ptr %i.aj, align 8, !tbaa !18
  %i.aq = fmul double %i.u, %i.ap
  %i.ar = tail call double @llvm.fmuladd.f64(double %i.ao, double %i.t, double %i.aq)
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store double %i.ar, ptr %i.as, align 8, !tbaa !18
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.at = icmp eq i64 %indvars.iv.ph, %i.l
  br i1 %i.at, label %._crit_edge.us.us, label %scalar.ph.preheader.new

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op = add nuw nsw i64 1, %i.w
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %indvars.iv = phi i64 [ %indvars.iv.unr, %scalar.ph.preheader.new ], [ %indvars.iv.next.1, %scalar.ph ] ; 3 uses
  %i.au = add nuw nsw i64 %indvars.iv, %i.w       ; 2 uses
  %i.av = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.au ; 3 uses
  %i.aw = load double, ptr %i.av, align 8, !tbaa !18
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 2 uses
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !18
  %i.az = fmul double %i.ay, %i.x
  %i.ba = tail call double @llvm.fmuladd.f64(double %i.aw, double %i.u, double %i.az)
  %i.bb = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.au ; 2 uses
  store double %i.ba, ptr %i.bb, align 8, !tbaa !18
  %i.bc = load double, ptr %i.av, align 8, !tbaa !18
  %i.bd = load double, ptr %i.ax, align 8, !tbaa !18
  %i.be = fmul double %i.u, %i.bd
  %i.bf = tail call double @llvm.fmuladd.f64(double %i.bc, double %i.t, double %i.be)
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store double %i.bf, ptr %i.bg, align 8, !tbaa !18
  %.reass = add nuw nsw i64 %indvars.iv, %invariant.op ; 2 uses
  %i.bh = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.reass ; 3 uses
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !18
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 8 ; 2 uses
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !18
  %i.bl = fmul double %i.bk, %i.x
  %i.bm = tail call double @llvm.fmuladd.f64(double %i.bi, double %i.u, double %i.bl)
  %i.bn = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.reass ; 2 uses
  store double %i.bm, ptr %i.bn, align 8, !tbaa !18
  %i.bo = load double, ptr %i.bh, align 8, !tbaa !18
  %i.bp = load double, ptr %i.bj, align 8, !tbaa !18
  %i.bq = fmul double %i.u, %i.bp
  %i.br = tail call double @llvm.fmuladd.f64(double %i.bo, double %i.t, double %i.bq)
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store double %i.br, ptr %i.bs, align 8, !tbaa !18
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond49.not.1 = icmp eq i64 %indvars.iv.next.1, %i.g
  br i1 %exitcond49.not.1, label %._crit_edge.us.us, label %scalar.ph, !llvm.loop !92

._crit_edge.us.us:                                ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next51 = add nuw nsw i64 %indvars.iv50, 1 ; 2 uses
  %exitcond54.not = icmp eq i64 %indvars.iv.next51, %i.h
  br i1 %exitcond54.not, label %._crit_edge42.split.us.us, label %.lr.ph.us.us, !llvm.loop !4

._crit_edge42.split.us.us:                        ; preds = %._crit_edge.us.us
  %indvars.iv.next56 = add nuw nsw i64 %indvars.iv55, 1 ; 2 uses
  %exitcond59.not = icmp eq i64 %indvars.iv.next56, %wide.trip.count58
  br i1 %exitcond59.not, label %._crit_edge.split, label %.preheader.us, !llvm.loop !5

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge42.split
  %.03643 = phi i32 [ %i.dm, %._crit_edge42.split ], [ 0, %.preheader.preheader ]
  br i1 %i.f, label %.epil.preheader, label %.preheader.new

.preheader.new:                                   ; preds = %.preheader, %.preheader.new
  %.040 = phi i32 [ %i.dg, %.preheader.new ], [ 0, %.preheader ] ; 9 uses
  %niter = phi i32 [ %niter.next.7, %.preheader.new ], [ 0, %.preheader ]
  %i.bt = uitofp nneg i32 %.040 to double
  %i.bu = fmul double %i.b, %i.bt                 ; 2 uses
  %i.bv = tail call double @sin(double noundef %i.bu) #13 ; 0 uses
  %i.bw = tail call double @cos(double noundef %i.bu) #13 ; 0 uses
  %i.bx = or disjoint i32 %.040, 1
  %i.by = uitofp nneg i32 %i.bx to double
  %i.bz = fmul nnan double %i.b, %i.by            ; 2 uses
  %i.ca = tail call double @sin(double noundef %i.bz) #13 ; 0 uses
  %i.cb = tail call double @cos(double noundef %i.bz) #13 ; 0 uses
  %i.cc = or disjoint i32 %.040, 2
  %i.cd = uitofp nneg i32 %i.cc to double
  %i.ce = fmul nnan double %i.b, %i.cd            ; 2 uses
  %i.cf = tail call double @sin(double noundef %i.ce) #13 ; 0 uses
  %i.cg = tail call double @cos(double noundef %i.ce) #13 ; 0 uses
  %i.ch = or disjoint i32 %.040, 3
  %i.ci = uitofp nneg i32 %i.ch to double
  %i.cj = fmul nnan double %i.b, %i.ci            ; 2 uses
  %i.ck = tail call double @sin(double noundef %i.cj) #13 ; 0 uses
  %i.cl = tail call double @cos(double noundef %i.cj) #13 ; 0 uses
  %i.cm = or disjoint i32 %.040, 4
  %i.cn = uitofp nneg i32 %i.cm to double
  %i.co = fmul nnan double %i.b, %i.cn            ; 2 uses
  %i.cp = tail call double @sin(double noundef %i.co) #13 ; 0 uses
  %i.cq = tail call double @cos(double noundef %i.co) #13 ; 0 uses
  %i.cr = or disjoint i32 %.040, 5
  %i.cs = uitofp nneg i32 %i.cr to double
  %i.ct = fmul nnan double %i.b, %i.cs            ; 2 uses
  %i.cu = tail call double @sin(double noundef %i.ct) #13 ; 0 uses
  %i.cv = tail call double @cos(double noundef %i.ct) #13 ; 0 uses
  %i.cw = or disjoint i32 %.040, 6
  %i.cx = uitofp nneg i32 %i.cw to double
  %i.cy = fmul nnan double %i.b, %i.cx            ; 2 uses
  %i.cz = tail call double @sin(double noundef %i.cy) #13 ; 0 uses
  %i.da = tail call double @cos(double noundef %i.cy) #13 ; 0 uses
  %i.db = or disjoint i32 %.040, 7
  %i.dc = uitofp nneg i32 %i.db to double
  %i.dd = fmul nnan double %i.b, %i.dc            ; 2 uses
  %i.de = tail call double @sin(double noundef %i.dd) #13 ; 0 uses
  %i.df = tail call double @cos(double noundef %i.dd) #13 ; 0 uses
  %i.dg = add nuw nsw i32 %.040, 8                ; 2 uses
  %niter.next.7 = add nuw nsw i32 %niter, 8       ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge42.split.unr-lcssa, label %.preheader.new, !llvm.loop !4

._crit_edge42.split.unr-lcssa:                    ; preds = %.preheader.new
end_hunk_0
begin_hunk_1_@linear:bb.a

vector.body:                                      ; preds = %.lr.ph.i81.us.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.i81.us.preheader ] ; 5 uses
  %i.ek = or disjoint i64 %index, 1               ; 3 uses
  %i.el = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %index
  %i.em = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %i.ek
  %wide.load = load <2 x double>, ptr %i.el, align 8, !tbaa !18, !alias.scope !159
  %wide.load131 = load <2 x double>, ptr %i.em, align 8, !tbaa !18, !alias.scope !159
  %i.en = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %index
  %i.eo = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %i.ek
  %wide.load132 = load <2 x double>, ptr %i.en, align 8, !tbaa !18, !alias.scope !160
  %wide.load133 = load <2 x double>, ptr %i.eo, align 8, !tbaa !18, !alias.scope !160
  %i.ep = fadd <2 x double> %wide.load, %wide.load132
  %i.eq = fadd <2 x double> %wide.load131, %wide.load133
  %i.er = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %index
  %i.es = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %i.ek
  store <2 x double> %i.ep, ptr %i.er, align 8, !tbaa !18, !alias.scope !161, !noalias !162
  store <2 x double> %i.eq, ptr %i.es, align 8, !tbaa !18, !alias.scope !161, !noalias !162
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.et = icmp eq i64 %index.next, %n.vec
  br i1 %i.et, label %middle.block, label %vector.body, !llvm.loop !152

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %aadd.exit85.loopexit.us, label %.lr.ph.i81.us.preheader245

.lr.ph.i81.us.preheader245:                       ; preds = %.lr.ph.i81.us.preheader, %middle.block
  %indvars.iv.i82.us.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph.i81.us.preheader ] ; 6 uses
  br i1 %lcmp.mod254.not, label %.lr.ph.i81.us.prol.loopexit, label %.lr.ph.i81.us.prol

.lr.ph.i81.us.prol:                               ; preds = %.lr.ph.i81.us.preheader245
  %i.eu = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %indvars.iv.i82.us.ph ; 2 uses
  %i.ev = load double, ptr %i.eu, align 8, !tbaa !18
  %i.ew = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %indvars.iv.i82.us.ph ; 2 uses
  %i.ex = load double, ptr %i.ew, align 8, !tbaa !18
  %i.ey = fadd double %i.ev, %i.ex
  %i.ez = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %indvars.iv.i82.us.ph ; 2 uses
  store double %i.ey, ptr %i.ez, align 8, !tbaa !18
  %i.fa = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  %i.fb = load double, ptr %i.fa, align 8, !tbaa !18
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.fd = load double, ptr %i.fc, align 8, !tbaa !18
  %i.fe = fadd double %i.fb, %i.fd
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  store double %i.fe, ptr %i.ff, align 8, !tbaa !18
  %indvars.iv.next.i83.us.prol = or disjoint i64 %indvars.iv.i82.us.ph, 1
  br label %.lr.ph.i81.us.prol.loopexit

.lr.ph.i81.us.prol.loopexit:                      ; preds = %.lr.ph.i81.us.prol, %.lr.ph.i81.us.preheader245
  %indvars.iv.i82.us.unr = phi i64 [ %indvars.iv.i82.us.ph, %.lr.ph.i81.us.preheader245 ], [ %indvars.iv.next.i83.us.prol, %.lr.ph.i81.us.prol ]
  %i.fg = icmp eq i64 %indvars.iv.i82.us.ph, %i.e
  br i1 %i.fg, label %aadd.exit85.loopexit.us, label %.lr.ph.i81.us

.lr.ph.i81.us:                                    ; preds = %.lr.ph.i81.us.prol.loopexit, %.lr.ph.i81.us
  %indvars.iv.i82.us = phi i64 [ %indvars.iv.next.i83.us.1, %.lr.ph.i81.us ], [ %indvars.iv.i82.us.unr, %.lr.ph.i81.us.prol.loopexit ] ; 5 uses
  %i.fh = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %indvars.iv.i82.us ; 2 uses
  %i.fi = load double, ptr %i.fh, align 8, !tbaa !18
  %i.fj = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %indvars.iv.i82.us ; 2 uses
  %i.fk = load double, ptr %i.fj, align 8, !tbaa !18
  %i.fl = fadd double %i.fi, %i.fk
  %i.fm = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %indvars.iv.i82.us ; 2 uses
  store double %i.fl, ptr %i.fm, align 8, !tbaa !18
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  %i.fo = load double, ptr %i.fn, align 8, !tbaa !18
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  %i.fq = load double, ptr %i.fp, align 8, !tbaa !18
  %i.fr = fadd double %i.fo, %i.fq
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  store double %i.fr, ptr %i.fs, align 8, !tbaa !18
  %indvars.iv.next.i83.us = add nuw nsw i64 %indvars.iv.i82.us, 1 ; 3 uses
  %i.ft = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %indvars.iv.next.i83.us ; 2 uses
  %i.fu = load double, ptr %i.ft, align 8, !tbaa !18
  %i.fv = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %indvars.iv.next.i83.us ; 2 uses
  %i.fw = load double, ptr %i.fv, align 8, !tbaa !18
  %i.fx = fadd double %i.fu, %i.fw
  %i.fy = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %indvars.iv.next.i83.us ; 2 uses
  store double %i.fx, ptr %i.fy, align 8, !tbaa !18
  %i.fz = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  %i.ga = load double, ptr %i.fz, align 8, !tbaa !18
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  %i.gc = load double, ptr %i.gb, align 8, !tbaa !18
  %i.gd = fadd double %i.ga, %i.gc
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  store double %i.gd, ptr %i.ge, align 8, !tbaa !18
  %indvars.iv.next.i83.us.1 = add nuw nsw i64 %indvars.iv.i82.us, 2 ; 2 uses
  %exitcond.not.i84.us.1 = icmp eq i64 %indvars.iv.next.i83.us.1, %wide.trip.count.i
  br i1 %exitcond.not.i84.us.1, label %aadd.exit85.loopexit.us, label %.lr.ph.i81.us, !llvm.loop !153

aadd.exit85.loopexit.us:                          ; preds = %.lr.ph.i81.us.prol.loopexit, %.lr.ph.i81.us, %middle.block
  %i.gf = load ptr, ptr %0, align 8, !tbaa !29
  tail call void %i.gf(ptr noundef nonnull %0, ptr noundef nonnull %5, ptr noundef %8) #13
  %i.gg = tail call double @acmp(ptr noundef %8, ptr noundef nonnull %9, i32 noundef %2, ptr noundef nonnull @.str.2, double noundef %11) ; 2 uses
  %i.gh = fcmp ogt double %.0100.us, %i.gg
  %i.gi = select i1 %i.gh, double %.0100.us, double %i.gg ; 2 uses
  %i.gj = add nuw nsw i32 %.04299.us, 1           ; 2 uses
  %exitcond110.not = icmp eq i32 %i.gj, %10
  br i1 %exitcond110.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !154

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %.not, label %aadd.exit85.critedge.us, label %.critedge

aadd.exit85.critedge.us:                          ; preds = %.lr.ph.split, %aadd.exit85.critedge.us
  %.0100.us101 = phi double [ %i.gt, %aadd.exit85.critedge.us ], [ 0.000000e+00, %.lr.ph.split ] ; 2 uses
  %.04299.us102 = phi i32 [ %i.gu, %aadd.exit85.critedge.us ], [ 0, %.lr.ph.split ]
  %i.gk = tail call double @drand48() #13         ; 0 uses
  %i.gl = tail call double @drand48() #13         ; 0 uses
  %i.gm = tail call double @drand48() #13         ; 0 uses
  %i.gn = tail call double @drand48() #13         ; 0 uses
  %i.go = load ptr, ptr %0, align 8, !tbaa !29
  tail call void %i.go(ptr noundef nonnull %0, ptr noundef %3, ptr noundef %6) #13
  %i.gp = load ptr, ptr %0, align 8, !tbaa !29
  tail call void %i.gp(ptr noundef nonnull %0, ptr noundef %4, ptr noundef %7) #13
  %i.gq = load ptr, ptr %0, align 8, !tbaa !29
  tail call void %i.gq(ptr noundef nonnull %0, ptr noundef %5, ptr noundef %8) #13
  %i.gr = tail call double @acmp(ptr noundef %8, ptr noundef %9, i32 noundef %2, ptr noundef nonnull @.str.2, double noundef %11) ; 2 uses
  %i.gs = fcmp ogt double %.0100.us101, %i.gr
  %i.gt = select i1 %i.gs, double %.0100.us101, double %i.gr ; 2 uses
  %i.gu = add nuw nsw i32 %.04299.us102, 1        ; 2 uses
  %exitcond109.not = icmp eq i32 %i.gu, %10
  br i1 %exitcond109.not, label %._crit_edge, label %aadd.exit85.critedge.us, !llvm.loop !154

.critedge:                                        ; preds = %.lr.ph.split, %.critedge
  %.0100 = phi double [ %i.hc, %.critedge ], [ 0.000000e+00, %.lr.ph.split ] ; 2 uses
  %.04299 = phi i32 [ %i.hd, %.critedge ], [ 0, %.lr.ph.split ]
  %i.gv = tail call double @drand48() #13         ; 0 uses
  %i.gw = tail call double @drand48() #13         ; 0 uses
  %i.gx = load ptr, ptr %0, align 8, !tbaa !29
  tail call void %i.gx(ptr noundef nonnull %0, ptr noundef %3, ptr noundef %6) #13
  %i.gy = load ptr, ptr %0, align 8, !tbaa !29
  tail call void %i.gy(ptr noundef nonnull %0, ptr noundef %4, ptr noundef %7) #13
  %i.gz = load ptr, ptr %0, align 8, !tbaa !29
  tail call void %i.gz(ptr noundef nonnull %0, ptr noundef %5, ptr noundef %8) #13
  %i.ha = tail call double @acmp(ptr noundef %8, ptr noundef %9, i32 noundef %2, ptr noundef nonnull @.str.2, double noundef %11) ; 2 uses
  %i.hb = fcmp ogt double %.0100, %i.ha
  %i.hc = select i1 %i.hb, double %.0100, double %i.ha ; 2 uses
  %i.hd = add nuw nsw i32 %.04299, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.hd, %10
  br i1 %exitcond.not, label %._crit_edge, label %.critedge, !llvm.loop !154

._crit_edge:                                      ; preds = %.critedge, %aadd.exit85.critedge.us, %aadd.exit85.loopexit.us, %bb.a
  %.0.lcssa = phi double [ 0.000000e+00, %bb.a ], [ %i.gi, %aadd.exit85.loopexit.us ], [ %i.gt, %aadd.exit85.critedge.us ], [ %i.hc, %.critedge ]
  ret double %.0.lcssa
}

; Function Attrs: nounwind uwtable
define dso_local double @tf_shift(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4, double noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr nofree noundef captures(none) %10, i32 noundef %11, double noundef %12, i32 noundef %13) local_unnamed_addr #1 {
bb.a:
  %i.a = mul nsw i32 %4, %3                       ; 5 uses
  %i.b = load i32, ptr %2, align 8, !tbaa !31
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph249, label %._crit_edge250

.lr.ph249:                                        ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.e = icmp sgt i32 %11, 0
  %i.f = icmp sgt i32 %i.a, 0                     ; 3 uses
  %wide.trip.count.i = zext nneg i32 %i.a to i64  ; 3 uses
  %i.g = icmp eq i32 %13, 0
  %i.h = icmp sgt i32 %4, 0                       ; 2 uses
  %.not = icmp eq i32 %1, 0                       ; 2 uses
  %i.i = fneg double %5
  %i.j = icmp slt i32 %4, 1                       ; 2 uses
  %i.k = icmp sgt i32 %i.a, 300                   ; 2 uses
  %i.l = icmp sgt i32 %3, 0
  %wide.trip.count.i116 = zext i32 %3 to i64      ; 2 uses
  br i1 %i.e, label %.lr.ph242.us.preheader, label %._crit_edge250

.lr.ph242.us.preheader:                           ; preds = %.lr.ph249
  %i.m = sext i32 %3 to i64                       ; 10 uses
  %wide.trip.count = zext nneg i32 %4 to i64
  %wide.trip.count271 = zext nneg i32 %4 to i64
  %wide.trip.count276 = zext nneg i32 %4 to i64
  %wide.trip.count281 = zext nneg i32 %4 to i64
  %i.n = shl nsw i64 %i.m, 4
  %i.o = shl nsw i64 %i.m, 4
  %i.p = shl nsw i64 %i.m, 4
  %i.q = shl nsw i64 %i.m, 4
  %i.r = shl nsw i64 %i.m, 4
  %i.s = shl nsw i64 %i.m, 4
  %xtraiter554 = and i64 %wide.trip.count.i116, 7 ; 3 uses
  %i.t = icmp ult i32 %3, 8
  %unroll_iter558 = and i64 %wide.trip.count.i116, 2147483640
  %lcmp.mod556.not = icmp eq i64 %xtraiter554, 0
  %lcmp.mod557 = icmp ne i64 %xtraiter554, 0
  br label %.lr.ph242.us

.lr.ph242.us:                                     ; preds = %.lr.ph242.us.preheader, %._crit_edge243.us
  %indvars.iv284 = phi i64 [ 0, %.lr.ph242.us.preheader ], [ %indvars.iv.next285, %._crit_edge243.us ] ; 2 uses
  %.0247.us = phi double [ 0.000000e+00, %.lr.ph242.us.preheader ], [ %i.aba, %._crit_edge243.us ]
  %.0110245.us = phi i32 [ %3, %.lr.ph242.us.preheader ], [ %i.x, %._crit_edge243.us ]
  %.0111244.us = phi i32 [ 1, %.lr.ph242.us.preheader ], [ %i.abc, %._crit_edge243.us ] ; 6 uses
  %i.u = load ptr, ptr %i.d, align 8, !tbaa !32
  %i.v = getelementptr inbounds nuw [12 x i8], ptr %i.u, i64 %indvars.iv284
  %i.w = load i32, ptr %i.v, align 4, !tbaa !22   ; 17 uses
  %i.x = sdiv i32 %.0110245.us, %i.w              ; 15 uses
  %i.y = sitofp i32 %i.w to double
  %i.z = fdiv nnan double f0x401921FB54442D18, %i.y ; 12 uses
  %i.aa = icmp sgt i32 %.0111244.us, 0            ; 2 uses
  %i.ab = icmp sgt i32 %i.w, 0
  %or.cond.i135.us = and i1 %i.aa, %i.ab
  %i.ac = icmp sgt i32 %i.x, 0                    ; 6 uses
  %i.ad = zext i32 %i.x to i64                    ; 72 uses
  %i.ae = zext i32 %i.w to i64                    ; 11 uses
  %wide.trip.count58.i144.us = zext i32 %.0111244.us to i64 ; 10 uses
  %i.af = icmp slt i32 %.0111244.us, 1            ; 2 uses
  %i.ag = icmp sgt i32 %i.w, 1                    ; 2 uses
  %i.ah = add i32 %i.w, -1                        ; 5 uses
  %i.ai = sext i32 %i.w to i64                    ; 6 uses
  %wide.trip.count69.i175.us = zext nneg i32 %i.ah to i64 ; 2 uses
  %i.aj = icmp slt i32 %i.w, 1
  %or.cond.i.us.not258 = or i1 %i.af, %i.aj
  %brmerge = select i1 %i.j, i1 true, i1 %i.af
  %brmerge255 = select i1 %i.j, i1 true, i1 %or.cond.i.us.not258
  %i.ak = shl nuw nsw i64 %i.ad, 4
  %i.al = shl nuw nsw i64 %i.ae, 4
  %i.am = mul i64 %i.al, %i.ad                    ; 2 uses
  %i.an = shl nuw nsw i64 %wide.trip.count58.i144.us, 4
  %i.ao = add nsw i64 %i.an, -16
  %i.ap = mul i64 %i.ao, %i.ae
  %i.aq = add i64 %i.ap, 16
  %i.ar = mul i64 %i.aq, %i.ad
  %i.as = shl nuw nsw i64 %i.ad, 4
  %i.at = shl nuw nsw i64 %i.ad, 4
  %i.au = shl nsw i64 %i.ai, 4
  %i.av = mul i64 %i.au, %i.ad
  %i.aw = shl nuw nsw i64 %wide.trip.count58.i144.us, 4
  %i.ax = add nsw i64 %i.aw, -16
  %i.ay = mul i64 %i.ax, %i.ai
  %i.az = add i64 %i.ay, 16
  %i.ba = mul i64 %i.az, %i.ad
  %i.bb = shl nuw nsw i64 %i.ae, 4
  %i.bc = mul i64 %i.bb, %i.ad
  %i.bd = shl nuw nsw i64 %wide.trip.count58.i144.us, 4
  %i.be = add nsw i64 %i.bd, -16
  %i.bf = mul i64 %i.be, %i.ae
  %i.bg = add i64 %i.bf, 16
  %i.bh = mul i64 %i.bg, %i.ad
  %i.bi = shl nuw nsw i64 %i.ad, 4
  %i.bj = shl nuw nsw i64 %i.ad, 4
  %i.bk = shl nsw i64 %i.ai, 4
  %i.bl = mul i64 %i.bk, %i.ad
  %i.bm = shl nuw nsw i64 %wide.trip.count58.i144.us, 4
  %i.bn = add nsw i64 %i.bm, -16
  %i.bo = mul i64 %i.bn, %i.ai
  %i.bp = add i64 %i.bo, 16
  %i.bq = mul i64 %i.bp, %i.ad
  %i.br = shl nuw nsw i64 %i.ad, 4                ; 2 uses
  %i.bs = shl nuw nsw i64 %i.ae, 4
  %i.bt = mul i64 %i.bs, %i.ad
  %xtraiter = and i32 %i.w, 3                     ; 3 uses
  %i.bu = icmp ult i32 %i.w, 4
  %unroll_iter = and i32 %i.w, 2147483644
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod543 = icmp ne i32 %xtraiter, 0
  %min.iters.check510 = icmp eq i32 %i.x, 1
  %n.vec516 = and i64 %i.ad, 2147483646           ; 3 uses
  %cmp.n534 = icmp eq i64 %n.vec516, %i.ad
  %xtraiter544 = and i64 %i.ad, 1
  %lcmp.mod545.not = icmp eq i64 %xtraiter544, 0
  %i.bv = add nsw i64 %i.ad, -1
  %i.bw = getelementptr i8, ptr %9, i64 %i.bq
  %i.bx = getelementptr i8, ptr %9, i64 %i.bh
  %min.iters.check481 = icmp ult i32 %i.x, 4
  %14 = getelementptr i8, ptr %10, i64 %i.br
  %stride.check486 = icmp slt i64 %i.bl, 0
  %n.vec488 = and i64 %i.ad, 2147483646           ; 3 uses
  %cmp.n495 = icmp eq i64 %n.vec488, %i.ad
  %min.iters.check456 = icmp ult i32 %i.x, 4
  %n.vec462 = and i64 %i.ad, 2147483646           ; 3 uses
  %cmp.n469 = icmp eq i64 %n.vec462, %i.ad
  %min.iters.check427 = icmp ult i32 %i.x, 4
  %stride.check432 = icmp slt i64 %i.bc, 0
  %n.vec434 = and i64 %i.ad, 2147483646           ; 3 uses
  %cmp.n441 = icmp eq i64 %n.vec434, %i.ad
  %i.by = getelementptr i8, ptr %6, i64 %i.ba
  %i.bz = getelementptr i8, ptr %6, i64 %i.ar
  %min.iters.check401 = icmp ult i32 %i.x, 4
  %stride.check406 = icmp slt i64 %i.av, 0
  %n.vec408 = and i64 %i.ad, 2147483646           ; 3 uses
  %cmp.n415 = icmp eq i64 %n.vec408, %i.ad
  %min.iters.check376 = icmp ult i32 %i.x, 4
  %n.vec382 = and i64 %i.ad, 2147483646           ; 3 uses
  %cmp.n389 = icmp eq i64 %n.vec382, %i.ad
  %min.iters.check349 = icmp ult i32 %i.x, 4
  %stride.check = icmp slt i64 %i.am, 0
  %n.vec355 = and i64 %i.ad, 2147483646           ; 3 uses
  %cmp.n361 = icmp eq i64 %n.vec355, %i.ad
  %xtraiter570 = and i32 %i.w, 3                  ; 3 uses
  %i.ca = icmp ult i32 %i.w, 4
  %unroll_iter574 = and i32 %i.w, 2147483644
  %lcmp.mod572.not = icmp eq i32 %xtraiter570, 0
  %lcmp.mod573 = icmp ne i32 %xtraiter570, 0
  %min.iters.check = icmp eq i32 %i.x, 1
  %n.vec = and i64 %i.ad, 2147483646              ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.ad
  %xtraiter576 = and i64 %i.ad, 1
  %lcmp.mod577.not = icmp eq i64 %xtraiter576, 0
  %i.cb = add nsw i64 %i.ad, -1
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph242.us, %acmp.exit212.us
  %.1240.us = phi double [ %.0247.us, %.lr.ph242.us ], [ %i.aba, %acmp.exit212.us ] ; 2 uses
  %.0105239.us = phi i32 [ 0, %.lr.ph242.us ], [ %i.abb, %acmp.exit212.us ]
  br i1 %i.f, label %.lr.ph.i.us, label %arand.exit.us

.lr.ph.i.us:                                      ; preds = %bb.b, %.lr.ph.i.us
  %indvars.iv.i.us = phi i64 [ %indvars.iv.next.i.us, %.lr.ph.i.us ], [ 0, %bb.b ] ; 2 uses
  %i.cc = tail call double @drand48() #13
  %i.cd = fadd double %i.cc, -5.000000e-01
  %i.ce = getelementptr inbounds nuw [16 x i8], ptr %6, i64 %indvars.iv.i.us ; 2 uses
  store double %i.cd, ptr %i.ce, align 8, !tbaa !18
  %i.cf = tail call double @drand48() #13
  %i.cg = fadd double %i.cf, -5.000000e-01
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  store double %i.cg, ptr %i.ch, align 8, !tbaa !18
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.i.us, 1 ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %indvars.iv.next.i.us, %wide.trip.count.i
  br i1 %exitcond.not.i.us, label %arand.exit.us, label %.lr.ph.i.us, !llvm.loop !0

arand.exit.us:                                    ; preds = %.lr.ph.i.us, %bb.b
  br i1 %i.g, label %.preheader.us, label %.preheader223.us

.lr.ph.us:                                        ; preds = %.preheader223.us, %aphase_shift.exit158.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %aphase_shift.exit158.us ], [ 0, %.preheader223.us ] ; 3 uses
  %i.ci = mul i64 %i.s, %indvars.iv               ; 2 uses
  %i.cj = add i64 %i.br, %i.ci
  %.pre287 = mul nsw i64 %indvars.iv, %i.m        ; 3 uses
  br i1 %.not, label %.lr.ph.us._crit_edge, label %bb.c

bb.c:                                             ; preds = %.lr.ph.us
  %i.ck = getelementptr inbounds [16 x i8], ptr %6, i64 %.pre287
  %i.cl = load i32, ptr %2, align 8, !tbaa !31
  %i.cm = load ptr, ptr %i.d, align 8, !tbaa !32
  tail call void @mkhermitian(ptr noundef %i.ck, i32 noundef %i.cl, ptr noundef %i.cm, i32 noundef 1)
  br label %.lr.ph.us._crit_edge

.lr.ph.us._crit_edge:                             ; preds = %.lr.ph.us, %bb.c
  %i.cn = getelementptr inbounds [16 x i8], ptr %7, i64 %.pre287 ; 4 uses
  %i.co = getelementptr inbounds [16 x i8], ptr %6, i64 %.pre287 ; 4 uses
  br i1 %or.cond.i135.us, label %.preheader.lr.ph.split.i136.us, label %aphase_shift.exit158.us

.preheader.lr.ph.split.i136.us:                   ; preds = %.lr.ph.us._crit_edge
  br i1 %i.ac, label %.preheader.us.i145.us, label %.preheader.i137.us

.preheader.i137.us:                               ; preds = %.preheader.lr.ph.split.i136.us, %._crit_edge42.split.i141.us
  %.03643.i138.us = phi i32 [ %i.dt, %._crit_edge42.split.i141.us ], [ 0, %.preheader.lr.ph.split.i136.us ]
  br i1 %i.bu, label %.epil.preheader, label %.preheader.i137.us.new

.preheader.i137.us.new:                           ; preds = %.preheader.i137.us, %cdce.end218.us.3
  %.040.i139.us = phi i32 [ %i.dm, %cdce.end218.us.3 ], [ 0, %.preheader.i137.us ] ; 5 uses
  %niter = phi i32 [ %niter.next.3, %cdce.end218.us.3 ], [ 0, %.preheader.i137.us ]
  %i.cp = uitofp nneg i32 %.040.i139.us to double
  %i.cq = fmul double %i.z, %i.cp
  %i.cr = fcmp oeq double %i.cq, +inf
  br i1 %i.cr, label %cdce.call217.us, label %cdce.end218.us, !prof !218

cdce.call217.us:                                  ; preds = %.preheader.i137.us.new
  %i.cs = tail call double @sin(double noundef +inf) #13 ; 0 uses
  %i.ct = tail call double @cos(double noundef +inf) #13 ; 0 uses
  br label %cdce.end218.us

cdce.end218.us:                                   ; preds = %.preheader.i137.us.new, %cdce.call217.us
  %i.cu = or disjoint i32 %.040.i139.us, 1
  %i.cv = uitofp nneg i32 %i.cu to double
  %i.cw = fmul nnan double %i.z, %i.cv
  %i.cx = fcmp oeq double %i.cw, +inf
  br i1 %i.cx, label %cdce.call217.us.1, label %cdce.end218.us.1, !prof !218

cdce.call217.us.1:                                ; preds = %cdce.end218.us
  %i.cy = tail call double @sin(double noundef +inf) #13 ; 0 uses
  %i.cz = tail call double @cos(double noundef +inf) #13 ; 0 uses
  br label %cdce.end218.us.1

cdce.end218.us.1:                                 ; preds = %cdce.call217.us.1, %cdce.end218.us
  %i.da = or disjoint i32 %.040.i139.us, 2
  %i.db = uitofp nneg i32 %i.da to double
  %i.dc = fmul nnan double %i.z, %i.db
  %i.dd = fcmp oeq double %i.dc, +inf
  br i1 %i.dd, label %cdce.call217.us.2, label %cdce.end218.us.2, !prof !218

cdce.call217.us.2:                                ; preds = %cdce.end218.us.1
  %i.de = tail call double @sin(double noundef +inf) #13 ; 0 uses
  %i.df = tail call double @cos(double noundef +inf) #13 ; 0 uses
  br label %cdce.end218.us.2

cdce.end218.us.2:                                 ; preds = %cdce.call217.us.2, %cdce.end218.us.1
  %i.dg = or disjoint i32 %.040.i139.us, 3
  %i.dh = uitofp nneg i32 %i.dg to double
  %i.di = fmul nnan double %i.z, %i.dh
  %i.dj = fcmp oeq double %i.di, +inf
  br i1 %i.dj, label %cdce.call217.us.3, label %cdce.end218.us.3, !prof !218

cdce.call217.us.3:                                ; preds = %cdce.end218.us.2
  %i.dk = tail call double @sin(double noundef +inf) #13 ; 0 uses
  %i.dl = tail call double @cos(double noundef +inf) #13 ; 0 uses
  br label %cdce.end218.us.3

cdce.end218.us.3:                                 ; preds = %cdce.call217.us.3, %cdce.end218.us.2
  %i.dm = add nuw nsw i32 %.040.i139.us, 4        ; 2 uses
  %niter.next.3 = add nuw nsw i32 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge42.split.i141.us.unr-lcssa, label %.preheader.i137.us.new, !llvm.loop !4

._crit_edge42.split.i141.us.unr-lcssa:            ; preds = %cdce.end218.us.3
  br i1 %lcmp.mod.not, label %._crit_edge42.split.i141.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge42.split.i141.us.unr-lcssa, %.preheader.i137.us
  %.040.i139.us.epil.init = phi i32 [ 0, %.preheader.i137.us ], [ %i.dm, %._crit_edge42.split.i141.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod543)
  br label %bb.d

bb.d:                                             ; preds = %cdce.end218.us.epil, %.epil.preheader
  %.040.i139.us.epil = phi i32 [ %.040.i139.us.epil.init, %.epil.preheader ], [ %i.ds, %cdce.end218.us.epil ] ; 2 uses
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %cdce.end218.us.epil ]
  %i.dn = uitofp nneg i32 %.040.i139.us.epil to double
  %i.do = fmul double %i.z, %i.dn
  %i.dp = fcmp oeq double %i.do, +inf
  br i1 %i.dp, label %cdce.call217.us.epil, label %cdce.end218.us.epil, !prof !218

cdce.call217.us.epil:                             ; preds = %bb.d
  %i.dq = tail call double @sin(double noundef +inf) #13 ; 0 uses
  %i.dr = tail call double @cos(double noundef +inf) #13 ; 0 uses
  br label %cdce.end218.us.epil

cdce.end218.us.epil:                              ; preds = %cdce.call217.us.epil, %bb.d
  %i.ds = add nuw nsw i32 %.040.i139.us.epil, 1
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge42.split.i141.us, label %bb.d, !llvm.loop !163

._crit_edge42.split.i141.us:                      ; preds = %cdce.end218.us.epil, %._crit_edge42.split.i141.us.unr-lcssa
  %i.dt = add nuw nsw i32 %.03643.i138.us, 1      ; 2 uses
  %exitcond47.not.i142.us = icmp eq i32 %i.dt, %.0111244.us
  br i1 %exitcond47.not.i142.us, label %aphase_shift.exit158.us, label %.preheader.i137.us, !llvm.loop !5

.preheader.us.i145.us:                            ; preds = %.preheader.lr.ph.split.i136.us, %._crit_edge42.split.us.us.i155.us
  %indvars.iv55.i146.us = phi i64 [ %indvars.iv.next56.i156.us, %._crit_edge42.split.us.us.i155.us ], [ 0, %.preheader.lr.ph.split.i136.us ] ; 3 uses
  %i.du = mul i64 %i.bt, %indvars.iv55.i146.us    ; 2 uses
  %i.dv = add i64 %i.cj, %i.du                    ; 2 uses
  %scevgep505 = getelementptr i8, ptr %6, i64 %i.dv
  %i.dw = add i64 %i.ci, %i.du                    ; 2 uses
  %scevgep506 = getelementptr i8, ptr %6, i64 %i.dw
  %scevgep507 = getelementptr i8, ptr %7, i64 %i.dv
  %scevgep508 = getelementptr i8, ptr %7, i64 %i.dw
  %i.dx = mul nuw nsw i64 %indvars.iv55.i146.us, %i.ae
  %bound0512 = icmp ult ptr %scevgep508, %scevgep505
  %bound1513 = icmp ult ptr %scevgep506, %scevgep507
  %found.conflict514 = and i1 %bound0512, %bound1513
  br label %.lr.ph.us.us.i147.us

.lr.ph.us.us.i147.us:                             ; preds = %._crit_edge.us.us.i152.us, %.preheader.us.i145.us
  %indvars.iv50.i148.us = phi i64 [ %indvars.iv.next51.i153.us, %._crit_edge.us.us.i152.us ], [ 0, %.preheader.us.i145.us ] ; 3 uses
  %i.dy = trunc nuw nsw i64 %indvars.iv50.i148.us to i32
  %i.dz = uitofp nneg i32 %i.dy to double
  %i.ea = fmul double %i.z, %i.dz                 ; 2 uses
  %i.eb = tail call double @sin(double noundef %i.ea) #13
  %i.ec = fmul double %i.eb, %i.i                 ; 5 uses
  %i.ed = tail call double @cos(double noundef %i.ea) #13 ; 7 uses
  %i.ee = add nuw nsw i64 %indvars.iv50.i148.us, %i.dx
  %i.ef = mul nuw nsw i64 %i.ee, %i.ad            ; 4 uses
  %i.eg = fneg double %i.ec                       ; 4 uses
  %brmerge591.a = select i1 %min.iters.check510, i1 true, i1 %found.conflict514
  br i1 %brmerge591.a, label %scalar.ph509.preheader, label %vector.ph515

vector.ph515:                                     ; preds = %.lr.ph.us.us.i147.us
  %broadcast.splatinsert517 = insertelement <2 x double> poison, double %i.ec, i64 0
  %broadcast.splat518 = shufflevector <2 x double> %broadcast.splatinsert517, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert519 = insertelement <2 x double> poison, double %i.ed, i64 0
  %broadcast.splat520 = shufflevector <2 x double> %broadcast.splatinsert519, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert521 = insertelement <2 x double> poison, double %i.eg, i64 0
  %broadcast.splat522 = shufflevector <2 x double> %broadcast.splatinsert521, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body523

vector.body523:                                   ; preds = %vector.body523, %vector.ph515
  %index524 = phi i64 [ 0, %vector.ph515 ], [ %index.next532, %vector.body523 ] ; 2 uses
  %i.eh = add nuw nsw i64 %index524, %i.ef        ; 2 uses
  %i.ei = getelementptr inbounds nuw [16 x i8], ptr %i.co, i64 %i.eh
  %wide.vec525 = load <4 x double>, ptr %i.ei, align 8, !tbaa !18, !alias.scope !219 ; 4 uses
  %strided.vec526 = shufflevector <4 x double> %wide.vec525, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec527 = shufflevector <4 x double> %wide.vec525, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %i.ej = fmul <2 x double> %strided.vec527, %broadcast.splat522
  %i.ek = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %strided.vec526, <2 x double> %broadcast.splat520, <2 x double> %i.ej)
  %i.el = getelementptr inbounds nuw [16 x i8], ptr %i.cn, i64 %i.eh
  %strided.vec529 = shufflevector <4 x double> %wide.vec525, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec530 = shufflevector <4 x double> %wide.vec525, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %i.em = fmul <2 x double> %broadcast.splat520, %strided.vec530
  %i.en = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %strided.vec529, <2 x double> %broadcast.splat518, <2 x double> %i.em)
  %interleaved.vec531 = shufflevector <2 x double> %i.ek, <2 x double> %i.en, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec531, ptr %i.el, align 8, !tbaa !18, !alias.scope !220, !noalias !219
  %index.next532 = add nuw i64 %index524, 2       ; 2 uses
  %i.eo = icmp eq i64 %index.next532, %n.vec516
  br i1 %i.eo, label %middle.block533, label %vector.body523, !llvm.loop !167

middle.block533:                                  ; preds = %vector.body523
  br i1 %cmp.n534, label %._crit_edge.us.us.i152.us, label %scalar.ph509.preheader

scalar.ph509.preheader:                           ; preds = %.lr.ph.us.us.i147.us, %middle.block533
  %indvars.iv.i149.us.ph = phi i64 [ %n.vec516, %middle.block533 ], [ 0, %.lr.ph.us.us.i147.us ] ; 4 uses
  br i1 %lcmp.mod545.not, label %scalar.ph509.prol.loopexit, label %scalar.ph509.prol

scalar.ph509.prol:                                ; preds = %scalar.ph509.preheader
  %i.ep = add nuw nsw i64 %indvars.iv.i149.us.ph, %i.ef ; 2 uses
  %i.eq = getelementptr inbounds nuw [16 x i8], ptr %i.co, i64 %i.ep ; 3 uses
  %i.er = load double, ptr %i.eq, align 8, !tbaa !18
  %i.es = getelementptr inbounds nuw i8, ptr %i.eq, i64 8 ; 2 uses
  %i.et = load double, ptr %i.es, align 8, !tbaa !18
  %i.eu = fmul double %i.et, %i.eg
  %i.ev = tail call double @llvm.fmuladd.f64(double %i.er, double %i.ed, double %i.eu)
  %i.ew = getelementptr inbounds nuw [16 x i8], ptr %i.cn, i64 %i.ep ; 2 uses
  store double %i.ev, ptr %i.ew, align 8, !tbaa !18
  %i.ex = load double, ptr %i.eq, align 8, !tbaa !18
  %i.ey = load double, ptr %i.es, align 8, !tbaa !18
  %i.ez = fmul double %i.ed, %i.ey
  %i.fa = tail call double @llvm.fmuladd.f64(double %i.ex, double %i.ec, double %i.ez)
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  store double %i.fa, ptr %i.fb, align 8, !tbaa !18
  %indvars.iv.next.i150.us.prol = or disjoint i64 %indvars.iv.i149.us.ph, 1
  br label %scalar.ph509.prol.loopexit

scalar.ph509.prol.loopexit:                       ; preds = %scalar.ph509.prol, %scalar.ph509.preheader
  %indvars.iv.i149.us.unr = phi i64 [ %indvars.iv.i149.us.ph, %scalar.ph509.preheader ], [ %indvars.iv.next.i150.us.prol, %scalar.ph509.prol ]
  %i.fc = icmp eq i64 %indvars.iv.i149.us.ph, %i.bv
  br i1 %i.fc, label %._crit_edge.us.us.i152.us, label %scalar.ph509.preheader.new

scalar.ph509.preheader.new:                       ; preds = %scalar.ph509.prol.loopexit
  %invariant.op = add nuw nsw i64 1, %i.ef
  br label %scalar.ph509

scalar.ph509:                                     ; preds = %scalar.ph509, %scalar.ph509.preheader.new
  %indvars.iv.i149.us = phi i64 [ %indvars.iv.i149.us.unr, %scalar.ph509.preheader.new ], [ %indvars.iv.next.i150.us.1, %scalar.ph509 ] ; 3 uses
  %i.fd = add nuw nsw i64 %indvars.iv.i149.us, %i.ef ; 2 uses
  %i.fe = getelementptr inbounds nuw [16 x i8], ptr %i.co, i64 %i.fd ; 3 uses
  %i.ff = load double, ptr %i.fe, align 8, !tbaa !18
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fe, i64 8 ; 2 uses
  %i.fh = load double, ptr %i.fg, align 8, !tbaa !18
  %i.fi = fmul double %i.fh, %i.eg
  %i.fj = tail call double @llvm.fmuladd.f64(double %i.ff, double %i.ed, double %i.fi)
  %i.fk = getelementptr inbounds nuw [16 x i8], ptr %i.cn, i64 %i.fd ; 2 uses
  store double %i.fj, ptr %i.fk, align 8, !tbaa !18
  %i.fl = load double, ptr %i.fe, align 8, !tbaa !18
  %i.fm = load double, ptr %i.fg, align 8, !tbaa !18
  %i.fn = fmul double %i.ed, %i.fm
  %i.fo = tail call double @llvm.fmuladd.f64(double %i.fl, double %i.ec, double %i.fn)
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  store double %i.fo, ptr %i.fp, align 8, !tbaa !18
  %.reass = add nuw nsw i64 %indvars.iv.i149.us, %invariant.op ; 2 uses
  %i.fq = getelementptr inbounds nuw [16 x i8], ptr %i.co, i64 %.reass ; 3 uses
  %i.fr = load double, ptr %i.fq, align 8, !tbaa !18
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fq, i64 8 ; 2 uses
  %i.ft = load double, ptr %i.fs, align 8, !tbaa !18
  %i.fu = fmul double %i.ft, %i.eg
  %i.fv = tail call double @llvm.fmuladd.f64(double %i.fr, double %i.ed, double %i.fu)
  %i.fw = getelementptr inbounds nuw [16 x i8], ptr %i.cn, i64 %.reass ; 2 uses
  store double %i.fv, ptr %i.fw, align 8, !tbaa !18
  %i.fx = load double, ptr %i.fq, align 8, !tbaa !18
  %i.fy = load double, ptr %i.fs, align 8, !tbaa !18
  %i.fz = fmul double %i.ed, %i.fy
  %i.ga = tail call double @llvm.fmuladd.f64(double %i.fx, double %i.ec, double %i.fz)
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  store double %i.ga, ptr %i.gb, align 8, !tbaa !18
  %indvars.iv.next.i150.us.1 = add nuw nsw i64 %indvars.iv.i149.us, 2 ; 2 uses
  %exitcond49.not.i151.us.1 = icmp eq i64 %indvars.iv.next.i150.us.1, %i.ad
  br i1 %exitcond49.not.i151.us.1, label %._crit_edge.us.us.i152.us, label %scalar.ph509, !llvm.loop !168

._crit_edge.us.us.i152.us:                        ; preds = %scalar.ph509.prol.loopexit, %scalar.ph509, %middle.block533
  %indvars.iv.next51.i153.us = add nuw nsw i64 %indvars.iv50.i148.us, 1 ; 2 uses
  %exitcond54.not.i154.us = icmp eq i64 %indvars.iv.next51.i153.us, %i.ae
  br i1 %exitcond54.not.i154.us, label %._crit_edge42.split.us.us.i155.us, label %.lr.ph.us.us.i147.us, !llvm.loop !4

._crit_edge42.split.us.us.i155.us:                ; preds = %._crit_edge.us.us.i152.us
  %indvars.iv.next56.i156.us = add nuw nsw i64 %indvars.iv55.i146.us, 1 ; 2 uses
  %exitcond59.not.i157.us = icmp eq i64 %indvars.iv.next56.i156.us, %wide.trip.count58.i144.us
  br i1 %exitcond59.not.i157.us, label %aphase_shift.exit158.us, label %.preheader.us.i145.us, !llvm.loop !5

aphase_shift.exit158.us:                          ; preds = %._crit_edge42.split.i141.us, %._crit_edge42.split.us.us.i155.us, %.lr.ph.us._crit_edge
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %.lr.ph.us, !llvm.loop !169

._crit_edge.us:                                   ; preds = %aphase_shift.exit158.us, %.preheader223.us
  %i.gc = load ptr, ptr %0, align 8, !tbaa !29
  tail call void %i.gc(ptr noundef nonnull %0, ptr noundef %6, ptr noundef %8) #13
  %i.gd = load ptr, ptr %0, align 8, !tbaa !29
  tail call void %i.gd(ptr noundef nonnull %0, ptr noundef %7, ptr noundef %9) #13
  br i1 %brmerge, label %._crit_edge231.split.us, label %.preheader47.lr.ph.i159.us

.preheader47.lr.ph.i159.us:                       ; preds = %._crit_edge.us, %arol.exit193.us
  %indvars.iv268 = phi i64 [ %indvars.iv.next269, %arol.exit193.us ], [ 0, %._crit_edge.us ] ; 4 uses
  %i.ge = mul i64 %i.r, %indvars.iv268            ; 2 uses
  %scevgep479 = getelementptr i8, ptr %i.bw, i64 %i.ge
  %i.gf = mul i64 %i.q, %indvars.iv268            ; 2 uses
  %scevgep425 = getelementptr i8, ptr %i.bx, i64 %i.gf
  %i.gg = mul nsw i64 %indvars.iv268, %i.m        ; 2 uses
  %i.gh = getelementptr [16 x i8], ptr %10, i64 %i.gg ; 5 uses
  %i.gi = getelementptr [16 x i8], ptr %9, i64 %i.gg ; 7 uses
  br i1 %i.ag, label %.preheader47.lr.ph.split.us.i172.us, label %.preheader47.lr.ph.split.i160.us

.preheader47.lr.ph.split.i160.us:                 ; preds = %.preheader47.lr.ph.i159.us
  br i1 %i.ac, label %.preheader47.i164.us.preheader, label %arol.exit193.us

.preheader47.i164.us.preheader:                   ; preds = %.preheader47.lr.ph.split.i160.us
  %invariant.gep.a = getelementptr i8, ptr %14, i64 %i.ge
  br label %.preheader47.i164.us

.preheader47.i164.us:                             ; preds = %.preheader47.i164.us.preheader, %._crit_edge51.i169.us
  %indvars.iv56.i165.us = phi i64 [ %indvars.iv.next57.i170.us, %._crit_edge51.i169.us ], [ 0, %.preheader47.i164.us.preheader ] ; 2 uses
  %i.gj = mul nsw i64 %indvars.iv56.i165.us, %i.ai ; 2 uses
  %i.gk = trunc nsw i64 %i.gj to i32
  %i.gl = add i32 %i.ah, %i.gk
  %i.gm = mul nsw i32 %i.gl, %i.x
  %i.gn = sext i32 %i.gm to i64                   ; 2 uses
  %i.go = getelementptr inbounds [16 x i8], ptr %i.gh, i64 %i.gn ; 8 uses
  %i.gp = mul nsw i64 %i.gj, %i.ad
  %i.gq = getelementptr inbounds [16 x i8], ptr %i.gi, i64 %i.gp ; 7 uses
  br i1 %min.iters.check481, label %scalar.ph480.preheader, label %vector.memcheck482

vector.memcheck482:                               ; preds = %.preheader47.i164.us
  %i.gr = shl nsw i64 %i.gn, 4
  %gep.a = getelementptr i8, ptr %invariant.gep.a, i64 %i.gr
  %bound0483 = icmp ult ptr %i.go, %scevgep479
  %bound1484 = icmp ult ptr %i.gi, %gep.a
  %found.conflict485 = and i1 %bound0483, %bound1484
  %i.gs = or i1 %found.conflict485, %stride.check486
  br i1 %i.gs, label %scalar.ph480.preheader, label %vector.body489

vector.body489:                                   ; preds = %vector.memcheck482, %vector.body489
  %index490 = phi i64 [ %index.next493, %vector.body489 ], [ 0, %vector.memcheck482 ] ; 4 uses
  %i.gt = or disjoint i64 %index490, 1            ; 2 uses
  %i.gu = getelementptr inbounds nuw [16 x i8], ptr %i.go, i64 %index490
  %i.gv = getelementptr inbounds nuw [16 x i8], ptr %i.go, i64 %i.gt
  %i.gw = getelementptr inbounds nuw [16 x i8], ptr %i.gq, i64 %index490
  %i.gx = getelementptr inbounds nuw [16 x i8], ptr %i.gq, i64 %i.gt
  %wide.load491 = load <2 x double>, ptr %i.gw, align 8, !tbaa !18, !alias.scope !221
  %wide.load492 = load <2 x double>, ptr %i.gx, align 8, !tbaa !18, !alias.scope !221
  store <2 x double> %wide.load491, ptr %i.gu, align 8, !tbaa !18, !alias.scope !222, !noalias !221
  store <2 x double> %wide.load492, ptr %i.gv, align 8, !tbaa !18, !alias.scope !222, !noalias !221
  %index.next493 = add nuw i64 %index490, 2       ; 2 uses
  %i.gy = icmp eq i64 %index.next493, %n.vec488
  br i1 %i.gy, label %middle.block494, label %vector.body489, !llvm.loop !173

middle.block494:                                  ; preds = %vector.body489
  br i1 %cmp.n495, label %._crit_edge51.i169.us, label %scalar.ph480.preheader

scalar.ph480.preheader:                           ; preds = %vector.memcheck482, %.preheader47.i164.us, %middle.block494
  %indvars.iv.i166.us.ph = phi i64 [ 0, %vector.memcheck482 ], [ 0, %.preheader47.i164.us ], [ %n.vec488, %middle.block494 ] ; 4 uses
  %i.gz = sub nsw i64 %i.ad, %indvars.iv.i166.us.ph
  %xtraiter546 = and i64 %i.gz, 3                 ; 2 uses
  %lcmp.mod547.not = icmp eq i64 %xtraiter546, 0
  br i1 %lcmp.mod547.not, label %scalar.ph480.prol.loopexit, label %scalar.ph480.prol

scalar.ph480.prol:                                ; preds = %scalar.ph480.preheader, %scalar.ph480.prol
  %indvars.iv.i166.us.prol = phi i64 [ %indvars.iv.next.i167.us.prol, %scalar.ph480.prol ], [ %indvars.iv.i166.us.ph, %scalar.ph480.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph480.prol ], [ 0, %scalar.ph480.preheader ]
  %i.ha = getelementptr inbounds nuw [16 x i8], ptr %i.go, i64 %indvars.iv.i166.us.prol ; 2 uses
  %i.hb = getelementptr inbounds nuw [16 x i8], ptr %i.gq, i64 %indvars.iv.i166.us.prol ; 2 uses
  %i.hc = load double, ptr %i.hb, align 8, !tbaa !18
  store double %i.hc, ptr %i.ha, align 8, !tbaa !18
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hb, i64 8
  %i.he = load double, ptr %i.hd, align 8, !tbaa !18
  %i.hf = getelementptr inbounds nuw i8, ptr %i.ha, i64 8
  store double %i.he, ptr %i.hf, align 8, !tbaa !18
  %indvars.iv.next.i167.us.prol = add nuw nsw i64 %indvars.iv.i166.us.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter546
  br i1 %prol.iter.cmp.not, label %scalar.ph480.prol.loopexit, label %scalar.ph480.prol, !llvm.loop !174

scalar.ph480.prol.loopexit:                       ; preds = %scalar.ph480.prol, %scalar.ph480.preheader
  %indvars.iv.i166.us.unr = phi i64 [ %indvars.iv.i166.us.ph, %scalar.ph480.preheader ], [ %indvars.iv.next.i167.us.prol, %scalar.ph480.prol ]
  %i.hg = sub nsw i64 %indvars.iv.i166.us.ph, %i.ad
  %i.hh = icmp ugt i64 %i.hg, -4
  br i1 %i.hh, label %._crit_edge51.i169.us, label %scalar.ph480

scalar.ph480:                                     ; preds = %scalar.ph480.prol.loopexit, %scalar.ph480
  %indvars.iv.i166.us = phi i64 [ %indvars.iv.next.i167.us.3, %scalar.ph480 ], [ %indvars.iv.i166.us.unr, %scalar.ph480.prol.loopexit ] ; 6 uses
  %i.hi = getelementptr inbounds nuw [16 x i8], ptr %i.go, i64 %indvars.iv.i166.us ; 2 uses
  %i.hj = getelementptr inbounds nuw [16 x i8], ptr %i.gq, i64 %indvars.iv.i166.us ; 2 uses
  %i.hk = load double, ptr %i.hj, align 8, !tbaa !18
  store double %i.hk, ptr %i.hi, align 8, !tbaa !18
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hj, i64 8
  %i.hm = load double, ptr %i.hl, align 8, !tbaa !18
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hi, i64 8
  store double %i.hm, ptr %i.hn, align 8, !tbaa !18
  %indvars.iv.next.i167.us = add nuw nsw i64 %indvars.iv.i166.us, 1 ; 2 uses
  %i.ho = getelementptr inbounds nuw [16 x i8], ptr %i.go, i64 %indvars.iv.next.i167.us ; 2 uses
  %i.hp = getelementptr inbounds nuw [16 x i8], ptr %i.gq, i64 %indvars.iv.next.i167.us ; 2 uses
  %i.hq = load double, ptr %i.hp, align 8, !tbaa !18
  store double %i.hq, ptr %i.ho, align 8, !tbaa !18
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hp, i64 8
  %i.hs = load double, ptr %i.hr, align 8, !tbaa !18
  %i.ht = getelementptr inbounds nuw i8, ptr %i.ho, i64 8
  store double %i.hs, ptr %i.ht, align 8, !tbaa !18
  %indvars.iv.next.i167.us.1 = add nuw nsw i64 %indvars.iv.i166.us, 2 ; 2 uses
  %i.hu = getelementptr inbounds nuw [16 x i8], ptr %i.go, i64 %indvars.iv.next.i167.us.1 ; 2 uses
  %i.hv = getelementptr inbounds nuw [16 x i8], ptr %i.gq, i64 %indvars.iv.next.i167.us.1 ; 2 uses
  %i.hw = load double, ptr %i.hv, align 8, !tbaa !18
  store double %i.hw, ptr %i.hu, align 8, !tbaa !18
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hv, i64 8
  %i.hy = load double, ptr %i.hx, align 8, !tbaa !18
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hu, i64 8
  store double %i.hy, ptr %i.hz, align 8, !tbaa !18
  %indvars.iv.next.i167.us.2 = add nuw nsw i64 %indvars.iv.i166.us, 3 ; 2 uses
  %i.ia = getelementptr inbounds nuw [16 x i8], ptr %i.go, i64 %indvars.iv.next.i167.us.2 ; 2 uses
  %i.ib = getelementptr inbounds nuw [16 x i8], ptr %i.gq, i64 %indvars.iv.next.i167.us.2 ; 2 uses
  %i.ic = load double, ptr %i.ib, align 8, !tbaa !18
  store double %i.ic, ptr %i.ia, align 8, !tbaa !18
  %i.id = getelementptr inbounds nuw i8, ptr %i.ib, i64 8
  %i.ie = load double, ptr %i.id, align 8, !tbaa !18
  %i.if = getelementptr inbounds nuw i8, ptr %i.ia, i64 8
  store double %i.ie, ptr %i.if, align 8, !tbaa !18
  %indvars.iv.next.i167.us.3 = add nuw nsw i64 %indvars.iv.i166.us, 4 ; 2 uses
  %exitcond.not.i168.us.3 = icmp eq i64 %indvars.iv.next.i167.us.3, %i.ad
  br i1 %exitcond.not.i168.us.3, label %._crit_edge51.i169.us, label %scalar.ph480, !llvm.loop !175

._crit_edge51.i169.us:                            ; preds = %scalar.ph480.prol.loopexit, %scalar.ph480, %middle.block494
  %indvars.iv.next57.i170.us = add nuw nsw i64 %indvars.iv56.i165.us, 1 ; 2 uses
  %exitcond60.not.i171.us = icmp eq i64 %indvars.iv.next57.i170.us, %wide.trip.count58.i144.us
  br i1 %exitcond60.not.i171.us, label %arol.exit193.us, label %.preheader47.i164.us, !llvm.loop !3

.preheader47.lr.ph.split.us.i172.us:              ; preds = %.preheader47.lr.ph.i159.us
  br i1 %i.ac, label %.preheader47.us.us.us.i176.us.preheader, label %arol.exit193.us

.preheader47.us.us.us.i176.us.preheader:          ; preds = %.preheader47.lr.ph.split.us.i172.us
  %invariant.gep583.a = getelementptr i8, ptr %10, i64 %i.gf
  br label %.preheader47.us.us.us.i176.us

.preheader47.us.us.us.i176.us:                    ; preds = %.preheader47.us.us.us.i176.us.preheader, %._crit_edge51.us.us.us.i190.us
  %indvars.iv76.i177.us = phi i64 [ %indvars.iv.next77.i191.us, %._crit_edge51.us.us.us.i190.us ], [ 0, %.preheader47.us.us.us.i176.us.preheader ] ; 3 uses
  %i.ig = trunc i64 %indvars.iv76.i177.us to i32
  %i.ih = mul i32 %i.w, %i.ig
  %i.ii = zext i32 %i.ih to i64                   ; 3 uses
  %i.ij = shl nuw nsw i64 %i.ii, 4                ; 2 uses
  %i.ik = add nuw nsw i64 %i.ij, 32
  %i.il = mul i64 %i.ik, %i.ad
  %scevgep451 = getelementptr i8, ptr %i.gi, i64 %i.il
  %i.im = add nuw nsw i64 %i.ii, 1
  %i.in = mul i64 %i.bi, %i.im
  %scevgep452 = getelementptr nuw i8, ptr %i.gi, i64 %i.in
  %i.io = add nuw nsw i64 %i.ij, 16
  %i.ip = mul i64 %i.io, %i.ad
  %scevgep453 = getelementptr i8, ptr %i.gh, i64 %i.ip
  %i.iq = mul i64 %i.bj, %i.ii
  %scevgep454 = getelementptr nuw i8, ptr %i.gh, i64 %i.iq
  %i.ir = mul nuw nsw i64 %indvars.iv76.i177.us, %i.ae ; 3 uses
  %i.is = and i64 %i.ir, 4294967295
  %bound0458 = icmp ult ptr %scevgep454, %scevgep451
  %bound1459 = icmp ult ptr %scevgep452, %scevgep453
  %found.conflict460 = and i1 %bound0458, %bound1459
  br label %.preheader.us.us.us.i178.us

.preheader.us.us.us.i178.us:                      ; preds = %._crit_edge.us.us.us.i183.us, %.preheader47.us.us.us.i176.us
  %indvars.iv66.i179.us = phi i64 [ %indvars.iv.next67.i184.us, %._crit_edge.us.us.us.i183.us ], [ 0, %.preheader47.us.us.us.i176.us ] ; 2 uses
  %i.it = add nuw nsw i64 %indvars.iv66.i179.us, %i.is ; 2 uses
  %i.iu = mul nuw nsw i64 %i.it, %i.ad
  %i.iv = getelementptr inbounds nuw [16 x i8], ptr %i.gh, i64 %i.iu ; 7 uses
  %i.iw = add nuw nsw i64 %i.it, 1
  %i.ix = mul nuw nsw i64 %i.iw, %i.ad
  %i.iy = getelementptr inbounds nuw [16 x i8], ptr %i.gi, i64 %i.ix ; 7 uses
  %brmerge592.a = select i1 %min.iters.check456, i1 true, i1 %found.conflict460
  br i1 %brmerge592.a, label %scalar.ph455.preheader, label %vector.body463

vector.body463:                                   ; preds = %.preheader.us.us.us.i178.us, %vector.body463
  %index464 = phi i64 [ %index.next467, %vector.body463 ], [ 0, %.preheader.us.us.us.i178.us ] ; 4 uses
  %i.iz = or disjoint i64 %index464, 1            ; 2 uses
  %i.ja = getelementptr inbounds nuw [16 x i8], ptr %i.iv, i64 %index464
  %i.jb = getelementptr inbounds nuw [16 x i8], ptr %i.iv, i64 %i.iz
  %i.jc = getelementptr inbounds nuw [16 x i8], ptr %i.iy, i64 %index464
  %i.jd = getelementptr inbounds nuw [16 x i8], ptr %i.iy, i64 %i.iz
  %wide.load465 = load <2 x double>, ptr %i.jc, align 8, !tbaa !18, !alias.scope !223
  %wide.load466 = load <2 x double>, ptr %i.jd, align 8, !tbaa !18, !alias.scope !223
  store <2 x double> %wide.load465, ptr %i.ja, align 8, !tbaa !18, !alias.scope !224, !noalias !223
  store <2 x double> %wide.load466, ptr %i.jb, align 8, !tbaa !18, !alias.scope !224, !noalias !223
  %index.next467 = add nuw i64 %index464, 2       ; 2 uses
  %i.je = icmp eq i64 %index.next467, %n.vec462
  br i1 %i.je, label %middle.block468, label %vector.body463, !llvm.loop !179

middle.block468:                                  ; preds = %vector.body463
  br i1 %cmp.n469, label %._crit_edge.us.us.us.i183.us, label %scalar.ph455.preheader

scalar.ph455.preheader:                           ; preds = %.preheader.us.us.us.i178.us, %middle.block468
  %indvars.iv61.i180.us.ph = phi i64 [ %n.vec462, %middle.block468 ], [ 0, %.preheader.us.us.us.i178.us ] ; 4 uses
  %i.jf = sub nsw i64 %i.ad, %indvars.iv61.i180.us.ph
  %xtraiter548 = and i64 %i.jf, 3                 ; 2 uses
  %lcmp.mod549.not = icmp eq i64 %xtraiter548, 0
  br i1 %lcmp.mod549.not, label %scalar.ph455.prol.loopexit, label %scalar.ph455.prol

scalar.ph455.prol:                                ; preds = %scalar.ph455.preheader, %scalar.ph455.prol
  %indvars.iv61.i180.us.prol = phi i64 [ %indvars.iv.next62.i181.us.prol, %scalar.ph455.prol ], [ %indvars.iv61.i180.us.ph, %scalar.ph455.preheader ] ; 3 uses
  %prol.iter550 = phi i64 [ %prol.iter550.next, %scalar.ph455.prol ], [ 0, %scalar.ph455.preheader ]
  %i.jg = getelementptr inbounds nuw [16 x i8], ptr %i.iv, i64 %indvars.iv61.i180.us.prol ; 2 uses
  %i.jh = getelementptr inbounds nuw [16 x i8], ptr %i.iy, i64 %indvars.iv61.i180.us.prol ; 2 uses
  %i.ji = load double, ptr %i.jh, align 8, !tbaa !18
  store double %i.ji, ptr %i.jg, align 8, !tbaa !18
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jh, i64 8
  %i.jk = load double, ptr %i.jj, align 8, !tbaa !18
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jg, i64 8
  store double %i.jk, ptr %i.jl, align 8, !tbaa !18
  %indvars.iv.next62.i181.us.prol = add nuw nsw i64 %indvars.iv61.i180.us.prol, 1 ; 2 uses
  %prol.iter550.next = add i64 %prol.iter550, 1   ; 2 uses
  %prol.iter550.cmp.not = icmp eq i64 %prol.iter550.next, %xtraiter548
  br i1 %prol.iter550.cmp.not, label %scalar.ph455.prol.loopexit, label %scalar.ph455.prol, !llvm.loop !180

scalar.ph455.prol.loopexit:                       ; preds = %scalar.ph455.prol, %scalar.ph455.preheader
  %indvars.iv61.i180.us.unr = phi i64 [ %indvars.iv61.i180.us.ph, %scalar.ph455.preheader ], [ %indvars.iv.next62.i181.us.prol, %scalar.ph455.prol ]
  %i.jm = sub nsw i64 %indvars.iv61.i180.us.ph, %i.ad
  %i.jn = icmp ugt i64 %i.jm, -4
  br i1 %i.jn, label %._crit_edge.us.us.us.i183.us, label %scalar.ph455

scalar.ph455:                                     ; preds = %scalar.ph455.prol.loopexit, %scalar.ph455
  %indvars.iv61.i180.us = phi i64 [ %indvars.iv.next62.i181.us.3, %scalar.ph455 ], [ %indvars.iv61.i180.us.unr, %scalar.ph455.prol.loopexit ] ; 6 uses
  %i.jo = getelementptr inbounds nuw [16 x i8], ptr %i.iv, i64 %indvars.iv61.i180.us ; 2 uses
  %i.jp = getelementptr inbounds nuw [16 x i8], ptr %i.iy, i64 %indvars.iv61.i180.us ; 2 uses
  %i.jq = load double, ptr %i.jp, align 8, !tbaa !18
  store double %i.jq, ptr %i.jo, align 8, !tbaa !18
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jp, i64 8
  %i.js = load double, ptr %i.jr, align 8, !tbaa !18
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jo, i64 8
  store double %i.js, ptr %i.jt, align 8, !tbaa !18
  %indvars.iv.next62.i181.us = add nuw nsw i64 %indvars.iv61.i180.us, 1 ; 2 uses
  %i.ju = getelementptr inbounds nuw [16 x i8], ptr %i.iv, i64 %indvars.iv.next62.i181.us ; 2 uses
  %i.jv = getelementptr inbounds nuw [16 x i8], ptr %i.iy, i64 %indvars.iv.next62.i181.us ; 2 uses
  %i.jw = load double, ptr %i.jv, align 8, !tbaa !18
  store double %i.jw, ptr %i.ju, align 8, !tbaa !18
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jv, i64 8
  %i.jy = load double, ptr %i.jx, align 8, !tbaa !18
  %i.jz = getelementptr inbounds nuw i8, ptr %i.ju, i64 8
  store double %i.jy, ptr %i.jz, align 8, !tbaa !18
  %indvars.iv.next62.i181.us.1 = add nuw nsw i64 %indvars.iv61.i180.us, 2 ; 2 uses
  %i.ka = getelementptr inbounds nuw [16 x i8], ptr %i.iv, i64 %indvars.iv.next62.i181.us.1 ; 2 uses
  %i.kb = getelementptr inbounds nuw [16 x i8], ptr %i.iy, i64 %indvars.iv.next62.i181.us.1 ; 2 uses
  %i.kc = load double, ptr %i.kb, align 8, !tbaa !18
  store double %i.kc, ptr %i.ka, align 8, !tbaa !18
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kb, i64 8
  %i.ke = load double, ptr %i.kd, align 8, !tbaa !18
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ka, i64 8
  store double %i.ke, ptr %i.kf, align 8, !tbaa !18
  %indvars.iv.next62.i181.us.2 = add nuw nsw i64 %indvars.iv61.i180.us, 3 ; 2 uses
  %i.kg = getelementptr inbounds nuw [16 x i8], ptr %i.iv, i64 %indvars.iv.next62.i181.us.2 ; 2 uses
  %i.kh = getelementptr inbounds nuw [16 x i8], ptr %i.iy, i64 %indvars.iv.next62.i181.us.2 ; 2 uses
  %i.ki = load double, ptr %i.kh, align 8, !tbaa !18
  store double %i.ki, ptr %i.kg, align 8, !tbaa !18
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kh, i64 8
  %i.kk = load double, ptr %i.kj, align 8, !tbaa !18
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kg, i64 8
  store double %i.kk, ptr %i.kl, align 8, !tbaa !18
  %indvars.iv.next62.i181.us.3 = add nuw nsw i64 %indvars.iv61.i180.us, 4 ; 2 uses
  %exitcond65.not.i182.us.3 = icmp eq i64 %indvars.iv.next62.i181.us.3, %i.ad
  br i1 %exitcond65.not.i182.us.3, label %._crit_edge.us.us.us.i183.us, label %scalar.ph455, !llvm.loop !181

._crit_edge.us.us.us.i183.us:                     ; preds = %scalar.ph455.prol.loopexit, %scalar.ph455, %middle.block468
  %indvars.iv.next67.i184.us = add nuw nsw i64 %indvars.iv66.i179.us, 1 ; 2 uses
  %exitcond70.not.i185.us = icmp eq i64 %indvars.iv.next67.i184.us, %wide.trip.count69.i175.us
  br i1 %exitcond70.not.i185.us, label %..preheader46_crit_edge.us.us.us.i186.us, label %.preheader.us.us.us.i178.us, !llvm.loop !2

..preheader46_crit_edge.us.us.us.i186.us:         ; preds = %._crit_edge.us.us.us.i183.us
  %i.km = trunc nuw nsw i64 %i.ir to i32
  %i.kn = add i32 %i.ah, %i.km
  %i.ko = mul nsw i32 %i.kn, %i.x
  %i.kp = sext i32 %i.ko to i64                   ; 2 uses
  %i.kq = getelementptr inbounds [16 x i8], ptr %i.gh, i64 %i.kp ; 8 uses
  %i.kr = mul nuw nsw i64 %i.ir, %i.ad
  %i.ks = getelementptr inbounds nuw [16 x i8], ptr %i.gi, i64 %i.kr ; 7 uses
  br i1 %min.iters.check427, label %scalar.ph426.preheader, label %vector.memcheck428

vector.memcheck428:                               ; preds = %..preheader46_crit_edge.us.us.us.i186.us
  %i.kt = add nsw i64 %i.ad, %i.kp
  %i.ku = shl nsw i64 %i.kt, 4
  %gep584.a = getelementptr i8, ptr %invariant.gep583.a, i64 %i.ku
  %bound0429 = icmp ult ptr %i.kq, %scevgep425
  %bound1430 = icmp ult ptr %i.gi, %gep584.a
  %found.conflict431 = and i1 %bound0429, %bound1430
  %i.kv = or i1 %found.conflict431, %stride.check432
  br i1 %i.kv, label %scalar.ph426.preheader, label %vector.body435

vector.body435:                                   ; preds = %vector.memcheck428, %vector.body435
  %index436 = phi i64 [ %index.next439, %vector.body435 ], [ 0, %vector.memcheck428 ] ; 4 uses
  %i.kw = or disjoint i64 %index436, 1            ; 2 uses
  %i.kx = getelementptr inbounds nuw [16 x i8], ptr %i.kq, i64 %index436
  %i.ky = getelementptr inbounds nuw [16 x i8], ptr %i.kq, i64 %i.kw
  %i.kz = getelementptr inbounds nuw [16 x i8], ptr %i.ks, i64 %index436
  %i.la = getelementptr inbounds nuw [16 x i8], ptr %i.ks, i64 %i.kw
  %wide.load437 = load <2 x double>, ptr %i.kz, align 8, !tbaa !18, !alias.scope !225
  %wide.load438 = load <2 x double>, ptr %i.la, align 8, !tbaa !18, !alias.scope !225
  store <2 x double> %wide.load437, ptr %i.kx, align 8, !tbaa !18, !alias.scope !226, !noalias !225
  store <2 x double> %wide.load438, ptr %i.ky, align 8, !tbaa !18, !alias.scope !226, !noalias !225
  %index.next439 = add nuw i64 %index436, 2       ; 2 uses
  %i.lb = icmp eq i64 %index.next439, %n.vec434
  br i1 %i.lb, label %middle.block440, label %vector.body435, !llvm.loop !185

middle.block440:                                  ; preds = %vector.body435
  br i1 %cmp.n441, label %._crit_edge51.us.us.us.i190.us, label %scalar.ph426.preheader

scalar.ph426.preheader:                           ; preds = %vector.memcheck428, %..preheader46_crit_edge.us.us.us.i186.us, %middle.block440
  %indvars.iv71.i187.us.ph = phi i64 [ 0, %vector.memcheck428 ], [ 0, %..preheader46_crit_edge.us.us.us.i186.us ], [ %n.vec434, %middle.block440 ] ; 4 uses
  %i.lc = sub nsw i64 %i.ad, %indvars.iv71.i187.us.ph
  %xtraiter551 = and i64 %i.lc, 3                 ; 2 uses
  %lcmp.mod552.not = icmp eq i64 %xtraiter551, 0
  br i1 %lcmp.mod552.not, label %scalar.ph426.prol.loopexit, label %scalar.ph426.prol

scalar.ph426.prol:                                ; preds = %scalar.ph426.preheader, %scalar.ph426.prol
  %indvars.iv71.i187.us.prol = phi i64 [ %indvars.iv.next72.i188.us.prol, %scalar.ph426.prol ], [ %indvars.iv71.i187.us.ph, %scalar.ph426.preheader ] ; 3 uses
  %prol.iter553 = phi i64 [ %prol.iter553.next, %scalar.ph426.prol ], [ 0, %scalar.ph426.preheader ]
  %i.ld = getelementptr inbounds nuw [16 x i8], ptr %i.kq, i64 %indvars.iv71.i187.us.prol ; 2 uses
  %i.le = getelementptr inbounds nuw [16 x i8], ptr %i.ks, i64 %indvars.iv71.i187.us.prol ; 2 uses
  %i.lf = load double, ptr %i.le, align 8, !tbaa !18
  store double %i.lf, ptr %i.ld, align 8, !tbaa !18
  %i.lg = getelementptr inbounds nuw i8, ptr %i.le, i64 8
  %i.lh = load double, ptr %i.lg, align 8, !tbaa !18
  %i.li = getelementptr inbounds nuw i8, ptr %i.ld, i64 8
  store double %i.lh, ptr %i.li, align 8, !tbaa !18
  %indvars.iv.next72.i188.us.prol = add nuw nsw i64 %indvars.iv71.i187.us.prol, 1 ; 2 uses
  %prol.iter553.next = add i64 %prol.iter553, 1   ; 2 uses
  %prol.iter553.cmp.not = icmp eq i64 %prol.iter553.next, %xtraiter551
  br i1 %prol.iter553.cmp.not, label %scalar.ph426.prol.loopexit, label %scalar.ph426.prol, !llvm.loop !186

scalar.ph426.prol.loopexit:                       ; preds = %scalar.ph426.prol, %scalar.ph426.preheader
  %indvars.iv71.i187.us.unr = phi i64 [ %indvars.iv71.i187.us.ph, %scalar.ph426.preheader ], [ %indvars.iv.next72.i188.us.prol, %scalar.ph426.prol ]
  %i.lj = sub nsw i64 %indvars.iv71.i187.us.ph, %i.ad
  %i.lk = icmp ugt i64 %i.lj, -4
  br i1 %i.lk, label %._crit_edge51.us.us.us.i190.us, label %scalar.ph426

scalar.ph426:                                     ; preds = %scalar.ph426.prol.loopexit, %scalar.ph426
  %indvars.iv71.i187.us = phi i64 [ %indvars.iv.next72.i188.us.3, %scalar.ph426 ], [ %indvars.iv71.i187.us.unr, %scalar.ph426.prol.loopexit ] ; 6 uses
  %i.ll = getelementptr inbounds nuw [16 x i8], ptr %i.kq, i64 %indvars.iv71.i187.us ; 2 uses
  %i.lm = getelementptr inbounds nuw [16 x i8], ptr %i.ks, i64 %indvars.iv71.i187.us ; 2 uses
  %i.ln = load double, ptr %i.lm, align 8, !tbaa !18
  store double %i.ln, ptr %i.ll, align 8, !tbaa !18
  %i.lo = getelementptr inbounds nuw i8, ptr %i.lm, i64 8
  %i.lp = load double, ptr %i.lo, align 8, !tbaa !18
  %i.lq = getelementptr inbounds nuw i8, ptr %i.ll, i64 8
  store double %i.lp, ptr %i.lq, align 8, !tbaa !18
  %indvars.iv.next72.i188.us = add nuw nsw i64 %indvars.iv71.i187.us, 1 ; 2 uses
  %i.lr = getelementptr inbounds nuw [16 x i8], ptr %i.kq, i64 %indvars.iv.next72.i188.us ; 2 uses
  %i.ls = getelementptr inbounds nuw [16 x i8], ptr %i.ks, i64 %indvars.iv.next72.i188.us ; 2 uses
  %i.lt = load double, ptr %i.ls, align 8, !tbaa !18
  store double %i.lt, ptr %i.lr, align 8, !tbaa !18
  %i.lu = getelementptr inbounds nuw i8, ptr %i.ls, i64 8
  %i.lv = load double, ptr %i.lu, align 8, !tbaa !18
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lr, i64 8
end_hunk_1
begin_hunk_2_@tf_shift:bb.a
  %i.ok = getelementptr inbounds [16 x i8], ptr %6, i64 %.pre ; 9 uses
  br i1 %i.l, label %.lr.ph.i117.us.preheader, label %mkreal.exit.us

.lr.ph.i117.us.preheader:                         ; preds = %bb.h
  br i1 %i.t, label %.lr.ph.i117.us.epil.preheader, label %.lr.ph.i117.us

.lr.ph.i117.us:                                   ; preds = %.lr.ph.i117.us.preheader, %.lr.ph.i117.us
  %indvars.iv.i118.us = phi i64 [ %indvars.iv.next.i119.us.7, %.lr.ph.i117.us ], [ 0, %.lr.ph.i117.us.preheader ] ; 9 uses
  %niter559 = phi i64 [ %niter559.next.7, %.lr.ph.i117.us ], [ 0, %.lr.ph.i117.us.preheader ]
  %i.ol = getelementptr inbounds nuw [16 x i8], ptr %i.ok, i64 %indvars.iv.i118.us
  %i.om = getelementptr inbounds nuw i8, ptr %i.ol, i64 8
  store double 0.000000e+00, ptr %i.om, align 8, !tbaa !18
  %i.on = getelementptr inbounds nuw [16 x i8], ptr %i.ok, i64 %indvars.iv.i118.us
  %i.oo = getelementptr inbounds nuw i8, ptr %i.on, i64 24
  store double 0.000000e+00, ptr %i.oo, align 8, !tbaa !18
  %i.op = getelementptr inbounds nuw [16 x i8], ptr %i.ok, i64 %indvars.iv.i118.us
  %i.oq = getelementptr inbounds nuw i8, ptr %i.op, i64 40
  store double 0.000000e+00, ptr %i.oq, align 8, !tbaa !18
  %i.or = getelementptr inbounds nuw [16 x i8], ptr %i.ok, i64 %indvars.iv.i118.us
  %i.os = getelementptr inbounds nuw i8, ptr %i.or, i64 56
  store double 0.000000e+00, ptr %i.os, align 8, !tbaa !18
  %i.ot = getelementptr inbounds nuw [16 x i8], ptr %i.ok, i64 %indvars.iv.i118.us
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ot, i64 72
  store double 0.000000e+00, ptr %i.ou, align 8, !tbaa !18
  %i.ov = getelementptr inbounds nuw [16 x i8], ptr %i.ok, i64 %indvars.iv.i118.us
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 88
  store double 0.000000e+00, ptr %i.ow, align 8, !tbaa !18
  %i.ox = getelementptr inbounds nuw [16 x i8], ptr %i.ok, i64 %indvars.iv.i118.us
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ox, i64 104
  store double 0.000000e+00, ptr %i.oy, align 8, !tbaa !18
  %i.oz = getelementptr inbounds nuw [16 x i8], ptr %i.ok, i64 %indvars.iv.i118.us
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oz, i64 120
  store double 0.000000e+00, ptr %i.pa, align 8, !tbaa !18
  %indvars.iv.next.i119.us.7 = add nuw nsw i64 %indvars.iv.i118.us, 8 ; 2 uses
  %niter559.next.7 = add i64 %niter559, 8         ; 2 uses
  %niter559.ncmp.7 = icmp eq i64 %niter559.next.7, %unroll_iter558
  br i1 %niter559.ncmp.7, label %mkreal.exit.us.loopexit.unr-lcssa, label %.lr.ph.i117.us, !llvm.loop !1

mkreal.exit.us.loopexit.unr-lcssa:                ; preds = %.lr.ph.i117.us
  br i1 %lcmp.mod556.not, label %mkreal.exit.us, label %.lr.ph.i117.us.epil.preheader

.lr.ph.i117.us.epil.preheader:                    ; preds = %mkreal.exit.us.loopexit.unr-lcssa, %.lr.ph.i117.us.preheader
  %indvars.iv.i118.us.epil.init = phi i64 [ 0, %.lr.ph.i117.us.preheader ], [ %indvars.iv.next.i119.us.7, %mkreal.exit.us.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod557)
  br label %.lr.ph.i117.us.epil

.lr.ph.i117.us.epil:                              ; preds = %.lr.ph.i117.us.epil, %.lr.ph.i117.us.epil.preheader
  %indvars.iv.i118.us.epil = phi i64 [ %indvars.iv.next.i119.us.epil, %.lr.ph.i117.us.epil ], [ %indvars.iv.i118.us.epil.init, %.lr.ph.i117.us.epil.preheader ] ; 2 uses
  %epil.iter555 = phi i64 [ %epil.iter555.next, %.lr.ph.i117.us.epil ], [ 0, %.lr.ph.i117.us.epil.preheader ]
  %i.pb = getelementptr inbounds nuw [16 x i8], ptr %i.ok, i64 %indvars.iv.i118.us.epil
  %i.pc = getelementptr inbounds nuw i8, ptr %i.pb, i64 8
  store double 0.000000e+00, ptr %i.pc, align 8, !tbaa !18
  %indvars.iv.next.i119.us.epil = add nuw nsw i64 %indvars.iv.i118.us.epil, 1
  %epil.iter555.next = add i64 %epil.iter555, 1   ; 2 uses
  %epil.iter555.cmp.not = icmp eq i64 %epil.iter555.next, %xtraiter554
  br i1 %epil.iter555.cmp.not, label %mkreal.exit.us, label %.lr.ph.i117.us.epil, !llvm.loop !189

mkreal.exit.us:                                   ; preds = %mkreal.exit.us.loopexit.unr-lcssa, %.lr.ph.i117.us.epil, %.lr.ph233.us, %bb.h
  %i.pd = getelementptr [16 x i8], ptr %7, i64 %.pre ; 5 uses
  %i.pe = getelementptr [16 x i8], ptr %6, i64 %.pre ; 7 uses
  br i1 %i.aa, label %.preheader47.lr.ph.i.us, label %arol.exit.us

.preheader47.lr.ph.i.us:                          ; preds = %mkreal.exit.us
  br i1 %i.ag, label %.preheader47.lr.ph.split.us.i.us, label %.preheader47.lr.ph.split.i.us

.preheader47.lr.ph.split.i.us:                    ; preds = %.preheader47.lr.ph.i.us
  br i1 %i.ac, label %.preheader47.i.us.preheader, label %arol.exit.us

.preheader47.i.us.preheader:                      ; preds = %.preheader47.lr.ph.split.i.us
  %invariant.gep585.a = getelementptr i8, ptr %7, i64 %i.oi
  br label %.preheader47.i.us

.preheader47.i.us:                                ; preds = %.preheader47.i.us.preheader, %._crit_edge51.i.us
  %indvars.iv56.i.us = phi i64 [ %indvars.iv.next57.i.us, %._crit_edge51.i.us ], [ 0, %.preheader47.i.us.preheader ] ; 2 uses
  %i.pf = mul nsw i64 %indvars.iv56.i.us, %i.ai   ; 2 uses
  %i.pg = trunc nsw i64 %i.pf to i32
  %i.ph = add i32 %i.ah, %i.pg
  %i.pi = mul nsw i32 %i.ph, %i.x
  %i.pj = sext i32 %i.pi to i64                   ; 2 uses
  %i.pk = getelementptr inbounds [16 x i8], ptr %i.pd, i64 %i.pj ; 8 uses
  %i.pl = mul nsw i64 %i.pf, %i.ad
  %i.pm = getelementptr inbounds [16 x i8], ptr %i.pe, i64 %i.pl ; 7 uses
  br i1 %min.iters.check401, label %scalar.ph400.preheader, label %vector.memcheck402

vector.memcheck402:                               ; preds = %.preheader47.i.us
  %i.pn = add nsw i64 %i.ad, %i.pj
  %i.po = shl nsw i64 %i.pn, 4
  %gep586.a = getelementptr i8, ptr %invariant.gep585.a, i64 %i.po
  %bound0403 = icmp ult ptr %i.pk, %scevgep399
  %bound1404 = icmp ult ptr %i.pe, %gep586.a
  %found.conflict405 = and i1 %bound0403, %bound1404
  %i.pp = or i1 %found.conflict405, %stride.check406
  br i1 %i.pp, label %scalar.ph400.preheader, label %vector.body409

vector.body409:                                   ; preds = %vector.memcheck402, %vector.body409
  %index410 = phi i64 [ %index.next413, %vector.body409 ], [ 0, %vector.memcheck402 ] ; 4 uses
  %i.pq = or disjoint i64 %index410, 1            ; 2 uses
  %i.pr = getelementptr inbounds nuw [16 x i8], ptr %i.pk, i64 %index410
  %i.ps = getelementptr inbounds nuw [16 x i8], ptr %i.pk, i64 %i.pq
  %i.pt = getelementptr inbounds nuw [16 x i8], ptr %i.pm, i64 %index410
  %i.pu = getelementptr inbounds nuw [16 x i8], ptr %i.pm, i64 %i.pq
  %wide.load411 = load <2 x double>, ptr %i.pt, align 8, !tbaa !18, !alias.scope !227
  %wide.load412 = load <2 x double>, ptr %i.pu, align 8, !tbaa !18, !alias.scope !227
  store <2 x double> %wide.load411, ptr %i.pr, align 8, !tbaa !18, !alias.scope !228, !noalias !227
  store <2 x double> %wide.load412, ptr %i.ps, align 8, !tbaa !18, !alias.scope !228, !noalias !227
  %index.next413 = add nuw i64 %index410, 2       ; 2 uses
  %i.pv = icmp eq i64 %index.next413, %n.vec408
  br i1 %i.pv, label %middle.block414, label %vector.body409, !llvm.loop !193

middle.block414:                                  ; preds = %vector.body409
  br i1 %cmp.n415, label %._crit_edge51.i.us, label %scalar.ph400.preheader

scalar.ph400.preheader:                           ; preds = %vector.memcheck402, %.preheader47.i.us, %middle.block414
  %indvars.iv.i122.us.ph = phi i64 [ 0, %vector.memcheck402 ], [ 0, %.preheader47.i.us ], [ %n.vec408, %middle.block414 ] ; 4 uses
  %i.pw = sub nsw i64 %i.ad, %indvars.iv.i122.us.ph
  %xtraiter560 = and i64 %i.pw, 3                 ; 2 uses
  %lcmp.mod561.not = icmp eq i64 %xtraiter560, 0
  br i1 %lcmp.mod561.not, label %scalar.ph400.prol.loopexit, label %scalar.ph400.prol

scalar.ph400.prol:                                ; preds = %scalar.ph400.preheader, %scalar.ph400.prol
  %indvars.iv.i122.us.prol = phi i64 [ %indvars.iv.next.i123.us.prol, %scalar.ph400.prol ], [ %indvars.iv.i122.us.ph, %scalar.ph400.preheader ] ; 3 uses
  %prol.iter562 = phi i64 [ %prol.iter562.next, %scalar.ph400.prol ], [ 0, %scalar.ph400.preheader ]
  %i.px = getelementptr inbounds nuw [16 x i8], ptr %i.pk, i64 %indvars.iv.i122.us.prol ; 2 uses
  %i.py = getelementptr inbounds nuw [16 x i8], ptr %i.pm, i64 %indvars.iv.i122.us.prol ; 2 uses
  %i.pz = load double, ptr %i.py, align 8, !tbaa !18
  store double %i.pz, ptr %i.px, align 8, !tbaa !18
  %i.qa = getelementptr inbounds nuw i8, ptr %i.py, i64 8
  %i.qb = load double, ptr %i.qa, align 8, !tbaa !18
  %i.qc = getelementptr inbounds nuw i8, ptr %i.px, i64 8
  store double %i.qb, ptr %i.qc, align 8, !tbaa !18
  %indvars.iv.next.i123.us.prol = add nuw nsw i64 %indvars.iv.i122.us.prol, 1 ; 2 uses
  %prol.iter562.next = add i64 %prol.iter562, 1   ; 2 uses
  %prol.iter562.cmp.not = icmp eq i64 %prol.iter562.next, %xtraiter560
  br i1 %prol.iter562.cmp.not, label %scalar.ph400.prol.loopexit, label %scalar.ph400.prol, !llvm.loop !194

scalar.ph400.prol.loopexit:                       ; preds = %scalar.ph400.prol, %scalar.ph400.preheader
  %indvars.iv.i122.us.unr = phi i64 [ %indvars.iv.i122.us.ph, %scalar.ph400.preheader ], [ %indvars.iv.next.i123.us.prol, %scalar.ph400.prol ]
  %i.qd = sub nsw i64 %indvars.iv.i122.us.ph, %i.ad
  %i.qe = icmp ugt i64 %i.qd, -4
  br i1 %i.qe, label %._crit_edge51.i.us, label %scalar.ph400

scalar.ph400:                                     ; preds = %scalar.ph400.prol.loopexit, %scalar.ph400
  %indvars.iv.i122.us = phi i64 [ %indvars.iv.next.i123.us.3, %scalar.ph400 ], [ %indvars.iv.i122.us.unr, %scalar.ph400.prol.loopexit ] ; 6 uses
  %i.qf = getelementptr inbounds nuw [16 x i8], ptr %i.pk, i64 %indvars.iv.i122.us ; 2 uses
  %i.qg = getelementptr inbounds nuw [16 x i8], ptr %i.pm, i64 %indvars.iv.i122.us ; 2 uses
  %i.qh = load double, ptr %i.qg, align 8, !tbaa !18
  store double %i.qh, ptr %i.qf, align 8, !tbaa !18
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qg, i64 8
  %i.qj = load double, ptr %i.qi, align 8, !tbaa !18
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qf, i64 8
  store double %i.qj, ptr %i.qk, align 8, !tbaa !18
  %indvars.iv.next.i123.us = add nuw nsw i64 %indvars.iv.i122.us, 1 ; 2 uses
  %i.ql = getelementptr inbounds nuw [16 x i8], ptr %i.pk, i64 %indvars.iv.next.i123.us ; 2 uses
  %i.qm = getelementptr inbounds nuw [16 x i8], ptr %i.pm, i64 %indvars.iv.next.i123.us ; 2 uses
  %i.qn = load double, ptr %i.qm, align 8, !tbaa !18
  store double %i.qn, ptr %i.ql, align 8, !tbaa !18
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qm, i64 8
  %i.qp = load double, ptr %i.qo, align 8, !tbaa !18
  %i.qq = getelementptr inbounds nuw i8, ptr %i.ql, i64 8
  store double %i.qp, ptr %i.qq, align 8, !tbaa !18
  %indvars.iv.next.i123.us.1 = add nuw nsw i64 %indvars.iv.i122.us, 2 ; 2 uses
  %i.qr = getelementptr inbounds nuw [16 x i8], ptr %i.pk, i64 %indvars.iv.next.i123.us.1 ; 2 uses
  %i.qs = getelementptr inbounds nuw [16 x i8], ptr %i.pm, i64 %indvars.iv.next.i123.us.1 ; 2 uses
  %i.qt = load double, ptr %i.qs, align 8, !tbaa !18
  store double %i.qt, ptr %i.qr, align 8, !tbaa !18
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qs, i64 8
  %i.qv = load double, ptr %i.qu, align 8, !tbaa !18
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qr, i64 8
  store double %i.qv, ptr %i.qw, align 8, !tbaa !18
  %indvars.iv.next.i123.us.2 = add nuw nsw i64 %indvars.iv.i122.us, 3 ; 2 uses
  %i.qx = getelementptr inbounds nuw [16 x i8], ptr %i.pk, i64 %indvars.iv.next.i123.us.2 ; 2 uses
  %i.qy = getelementptr inbounds nuw [16 x i8], ptr %i.pm, i64 %indvars.iv.next.i123.us.2 ; 2 uses
  %i.qz = load double, ptr %i.qy, align 8, !tbaa !18
  store double %i.qz, ptr %i.qx, align 8, !tbaa !18
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qy, i64 8
  %i.rb = load double, ptr %i.ra, align 8, !tbaa !18
  %i.rc = getelementptr inbounds nuw i8, ptr %i.qx, i64 8
  store double %i.rb, ptr %i.rc, align 8, !tbaa !18
  %indvars.iv.next.i123.us.3 = add nuw nsw i64 %indvars.iv.i122.us, 4 ; 2 uses
  %exitcond.not.i124.us.3 = icmp eq i64 %indvars.iv.next.i123.us.3, %i.ad
  br i1 %exitcond.not.i124.us.3, label %._crit_edge51.i.us, label %scalar.ph400, !llvm.loop !195

._crit_edge51.i.us:                               ; preds = %scalar.ph400.prol.loopexit, %scalar.ph400, %middle.block414
  %indvars.iv.next57.i.us = add nuw nsw i64 %indvars.iv56.i.us, 1 ; 2 uses
  %exitcond60.not.i.us = icmp eq i64 %indvars.iv.next57.i.us, %wide.trip.count58.i144.us
  br i1 %exitcond60.not.i.us, label %arol.exit.us, label %.preheader47.i.us, !llvm.loop !3

.preheader47.lr.ph.split.us.i.us:                 ; preds = %.preheader47.lr.ph.i.us
  br i1 %i.ac, label %.preheader47.us.us.us.i.us.preheader, label %arol.exit.us

.preheader47.us.us.us.i.us.preheader:             ; preds = %.preheader47.lr.ph.split.us.i.us
  %invariant.gep587 = getelementptr i8, ptr %7, i64 %i.oj
  br label %.preheader47.us.us.us.i.us

.preheader47.us.us.us.i.us:                       ; preds = %.preheader47.us.us.us.i.us.preheader, %._crit_edge51.us.us.us.i.us
  %indvars.iv76.i.us = phi i64 [ %indvars.iv.next77.i.us, %._crit_edge51.us.us.us.i.us ], [ 0, %.preheader47.us.us.us.i.us.preheader ] ; 3 uses
  %i.rd = trunc i64 %indvars.iv76.i.us to i32
  %i.re = mul i32 %i.w, %i.rd
  %i.rf = zext i32 %i.re to i64                   ; 3 uses
  %i.rg = shl nuw nsw i64 %i.rf, 4                ; 2 uses
  %i.rh = add nuw nsw i64 %i.rg, 32
  %i.ri = mul i64 %i.rh, %i.ad
  %scevgep371 = getelementptr i8, ptr %i.pe, i64 %i.ri
  %i.rj = add nuw nsw i64 %i.rf, 1
  %i.rk = mul i64 %i.as, %i.rj
  %scevgep372 = getelementptr nuw i8, ptr %i.pe, i64 %i.rk
  %i.rl = add nuw nsw i64 %i.rg, 16
  %i.rm = mul i64 %i.rl, %i.ad
  %scevgep373 = getelementptr i8, ptr %i.pd, i64 %i.rm
  %i.rn = mul i64 %i.at, %i.rf
  %scevgep374 = getelementptr nuw i8, ptr %i.pd, i64 %i.rn
  %i.ro = mul nuw nsw i64 %indvars.iv76.i.us, %i.ae ; 3 uses
  %i.rp = and i64 %i.ro, 4294967295
  %bound0378 = icmp ult ptr %scevgep374, %scevgep371
  %bound1379 = icmp ult ptr %scevgep372, %scevgep373
  %found.conflict380 = and i1 %bound0378, %bound1379
  br label %.preheader.us.us.us.i.us

.preheader.us.us.us.i.us:                         ; preds = %._crit_edge.us.us.us.i.us, %.preheader47.us.us.us.i.us
  %indvars.iv66.i.us = phi i64 [ %indvars.iv.next67.i.us, %._crit_edge.us.us.us.i.us ], [ 0, %.preheader47.us.us.us.i.us ] ; 2 uses
  %i.rq = add nuw nsw i64 %indvars.iv66.i.us, %i.rp ; 2 uses
  %i.rr = mul nuw nsw i64 %i.rq, %i.ad
  %i.rs = getelementptr inbounds nuw [16 x i8], ptr %i.pd, i64 %i.rr ; 7 uses
  %i.rt = add nuw nsw i64 %i.rq, 1
  %i.ru = mul nuw nsw i64 %i.rt, %i.ad
  %i.rv = getelementptr inbounds nuw [16 x i8], ptr %i.pe, i64 %i.ru ; 7 uses
  %brmerge593 = select i1 %min.iters.check376, i1 true, i1 %found.conflict380
  br i1 %brmerge593, label %scalar.ph375.preheader, label %vector.body383

vector.body383:                                   ; preds = %.preheader.us.us.us.i.us, %vector.body383
  %index384 = phi i64 [ %index.next387, %vector.body383 ], [ 0, %.preheader.us.us.us.i.us ] ; 4 uses
  %i.rw = or disjoint i64 %index384, 1            ; 2 uses
  %i.rx = getelementptr inbounds nuw [16 x i8], ptr %i.rs, i64 %index384
  %i.ry = getelementptr inbounds nuw [16 x i8], ptr %i.rs, i64 %i.rw
  %i.rz = getelementptr inbounds nuw [16 x i8], ptr %i.rv, i64 %index384
  %i.sa = getelementptr inbounds nuw [16 x i8], ptr %i.rv, i64 %i.rw
  %wide.load385 = load <2 x double>, ptr %i.rz, align 8, !tbaa !18, !alias.scope !229
  %wide.load386 = load <2 x double>, ptr %i.sa, align 8, !tbaa !18, !alias.scope !229
  store <2 x double> %wide.load385, ptr %i.rx, align 8, !tbaa !18, !alias.scope !230, !noalias !229
  store <2 x double> %wide.load386, ptr %i.ry, align 8, !tbaa !18, !alias.scope !230, !noalias !229
  %index.next387 = add nuw i64 %index384, 2       ; 2 uses
  %i.sb = icmp eq i64 %index.next387, %n.vec382
  br i1 %i.sb, label %middle.block388, label %vector.body383, !llvm.loop !199

middle.block388:                                  ; preds = %vector.body383
  br i1 %cmp.n389, label %._crit_edge.us.us.us.i.us, label %scalar.ph375.preheader

scalar.ph375.preheader:                           ; preds = %.preheader.us.us.us.i.us, %middle.block388
  %indvars.iv61.i.us.ph = phi i64 [ %n.vec382, %middle.block388 ], [ 0, %.preheader.us.us.us.i.us ] ; 4 uses
  %i.sc = sub nsw i64 %i.ad, %indvars.iv61.i.us.ph
  %xtraiter563 = and i64 %i.sc, 3                 ; 2 uses
  %lcmp.mod564.not = icmp eq i64 %xtraiter563, 0
  br i1 %lcmp.mod564.not, label %scalar.ph375.prol.loopexit, label %scalar.ph375.prol

scalar.ph375.prol:                                ; preds = %scalar.ph375.preheader, %scalar.ph375.prol
  %indvars.iv61.i.us.prol = phi i64 [ %indvars.iv.next62.i.us.prol, %scalar.ph375.prol ], [ %indvars.iv61.i.us.ph, %scalar.ph375.preheader ] ; 3 uses
  %prol.iter565 = phi i64 [ %prol.iter565.next, %scalar.ph375.prol ], [ 0, %scalar.ph375.preheader ]
  %i.sd = getelementptr inbounds nuw [16 x i8], ptr %i.rs, i64 %indvars.iv61.i.us.prol ; 2 uses
  %i.se = getelementptr inbounds nuw [16 x i8], ptr %i.rv, i64 %indvars.iv61.i.us.prol ; 2 uses
  %i.sf = load double, ptr %i.se, align 8, !tbaa !18
  store double %i.sf, ptr %i.sd, align 8, !tbaa !18
  %i.sg = getelementptr inbounds nuw i8, ptr %i.se, i64 8
  %i.sh = load double, ptr %i.sg, align 8, !tbaa !18
  %i.si = getelementptr inbounds nuw i8, ptr %i.sd, i64 8
  store double %i.sh, ptr %i.si, align 8, !tbaa !18
  %indvars.iv.next62.i.us.prol = add nuw nsw i64 %indvars.iv61.i.us.prol, 1 ; 2 uses
  %prol.iter565.next = add i64 %prol.iter565, 1   ; 2 uses
  %prol.iter565.cmp.not = icmp eq i64 %prol.iter565.next, %xtraiter563
  br i1 %prol.iter565.cmp.not, label %scalar.ph375.prol.loopexit, label %scalar.ph375.prol, !llvm.loop !200

scalar.ph375.prol.loopexit:                       ; preds = %scalar.ph375.prol, %scalar.ph375.preheader
  %indvars.iv61.i.us.unr = phi i64 [ %indvars.iv61.i.us.ph, %scalar.ph375.preheader ], [ %indvars.iv.next62.i.us.prol, %scalar.ph375.prol ]
  %i.sj = sub nsw i64 %indvars.iv61.i.us.ph, %i.ad
  %i.sk = icmp ugt i64 %i.sj, -4
  br i1 %i.sk, label %._crit_edge.us.us.us.i.us, label %scalar.ph375

scalar.ph375:                                     ; preds = %scalar.ph375.prol.loopexit, %scalar.ph375
  %indvars.iv61.i.us = phi i64 [ %indvars.iv.next62.i.us.3, %scalar.ph375 ], [ %indvars.iv61.i.us.unr, %scalar.ph375.prol.loopexit ] ; 6 uses
  %i.sl = getelementptr inbounds nuw [16 x i8], ptr %i.rs, i64 %indvars.iv61.i.us ; 2 uses
  %i.sm = getelementptr inbounds nuw [16 x i8], ptr %i.rv, i64 %indvars.iv61.i.us ; 2 uses
  %i.sn = load double, ptr %i.sm, align 8, !tbaa !18
  store double %i.sn, ptr %i.sl, align 8, !tbaa !18
  %i.so = getelementptr inbounds nuw i8, ptr %i.sm, i64 8
  %i.sp = load double, ptr %i.so, align 8, !tbaa !18
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sl, i64 8
  store double %i.sp, ptr %i.sq, align 8, !tbaa !18
  %indvars.iv.next62.i.us = add nuw nsw i64 %indvars.iv61.i.us, 1 ; 2 uses
  %i.sr = getelementptr inbounds nuw [16 x i8], ptr %i.rs, i64 %indvars.iv.next62.i.us ; 2 uses
  %i.ss = getelementptr inbounds nuw [16 x i8], ptr %i.rv, i64 %indvars.iv.next62.i.us ; 2 uses
  %i.st = load double, ptr %i.ss, align 8, !tbaa !18
  store double %i.st, ptr %i.sr, align 8, !tbaa !18
  %i.su = getelementptr inbounds nuw i8, ptr %i.ss, i64 8
  %i.sv = load double, ptr %i.su, align 8, !tbaa !18
  %i.sw = getelementptr inbounds nuw i8, ptr %i.sr, i64 8
  store double %i.sv, ptr %i.sw, align 8, !tbaa !18
  %indvars.iv.next62.i.us.1 = add nuw nsw i64 %indvars.iv61.i.us, 2 ; 2 uses
  %i.sx = getelementptr inbounds nuw [16 x i8], ptr %i.rs, i64 %indvars.iv.next62.i.us.1 ; 2 uses
  %i.sy = getelementptr inbounds nuw [16 x i8], ptr %i.rv, i64 %indvars.iv.next62.i.us.1 ; 2 uses
  %i.sz = load double, ptr %i.sy, align 8, !tbaa !18
  store double %i.sz, ptr %i.sx, align 8, !tbaa !18
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sy, i64 8
  %i.tb = load double, ptr %i.ta, align 8, !tbaa !18
  %i.tc = getelementptr inbounds nuw i8, ptr %i.sx, i64 8
  store double %i.tb, ptr %i.tc, align 8, !tbaa !18
  %indvars.iv.next62.i.us.2 = add nuw nsw i64 %indvars.iv61.i.us, 3 ; 2 uses
  %i.td = getelementptr inbounds nuw [16 x i8], ptr %i.rs, i64 %indvars.iv.next62.i.us.2 ; 2 uses
  %i.te = getelementptr inbounds nuw [16 x i8], ptr %i.rv, i64 %indvars.iv.next62.i.us.2 ; 2 uses
  %i.tf = load double, ptr %i.te, align 8, !tbaa !18
  store double %i.tf, ptr %i.td, align 8, !tbaa !18
  %i.tg = getelementptr inbounds nuw i8, ptr %i.te, i64 8
  %i.th = load double, ptr %i.tg, align 8, !tbaa !18
  %i.ti = getelementptr inbounds nuw i8, ptr %i.td, i64 8
  store double %i.th, ptr %i.ti, align 8, !tbaa !18
  %indvars.iv.next62.i.us.3 = add nuw nsw i64 %indvars.iv61.i.us, 4 ; 2 uses
  %exitcond65.not.i.us.3 = icmp eq i64 %indvars.iv.next62.i.us.3, %i.ad
  br i1 %exitcond65.not.i.us.3, label %._crit_edge.us.us.us.i.us, label %scalar.ph375, !llvm.loop !201

._crit_edge.us.us.us.i.us:                        ; preds = %scalar.ph375.prol.loopexit, %scalar.ph375, %middle.block388
  %indvars.iv.next67.i.us = add nuw nsw i64 %indvars.iv66.i.us, 1 ; 2 uses
  %exitcond70.not.i.us = icmp eq i64 %indvars.iv.next67.i.us, %wide.trip.count69.i175.us
  br i1 %exitcond70.not.i.us, label %..preheader46_crit_edge.us.us.us.i.us, label %.preheader.us.us.us.i.us, !llvm.loop !2

..preheader46_crit_edge.us.us.us.i.us:            ; preds = %._crit_edge.us.us.us.i.us
  %i.tj = trunc nuw nsw i64 %i.ro to i32
  %i.tk = add i32 %i.ah, %i.tj
  %i.tl = mul nsw i32 %i.tk, %i.x
  %i.tm = sext i32 %i.tl to i64                   ; 2 uses
  %i.tn = getelementptr inbounds [16 x i8], ptr %i.pd, i64 %i.tm ; 8 uses
  %i.to = mul nuw nsw i64 %i.ro, %i.ad
  %i.tp = getelementptr inbounds nuw [16 x i8], ptr %i.pe, i64 %i.to ; 7 uses
  br i1 %min.iters.check349, label %scalar.ph348.preheader, label %vector.memcheck350

vector.memcheck350:                               ; preds = %..preheader46_crit_edge.us.us.us.i.us
  %i.tq = add nsw i64 %i.ad, %i.tm
  %i.tr = shl nsw i64 %i.tq, 4
  %gep588 = getelementptr i8, ptr %invariant.gep587, i64 %i.tr
  %bound0351 = icmp ult ptr %i.tn, %scevgep347
  %bound1352 = icmp ult ptr %i.pe, %gep588
  %found.conflict353 = and i1 %bound0351, %bound1352
  %i.ts = or i1 %found.conflict353, %stride.check
  br i1 %i.ts, label %scalar.ph348.preheader, label %vector.body356

vector.body356:                                   ; preds = %vector.memcheck350, %vector.body356
  %index357 = phi i64 [ %index.next359, %vector.body356 ], [ 0, %vector.memcheck350 ] ; 4 uses
  %i.tt = or disjoint i64 %index357, 1            ; 2 uses
  %i.tu = getelementptr inbounds nuw [16 x i8], ptr %i.tn, i64 %index357
  %i.tv = getelementptr inbounds nuw [16 x i8], ptr %i.tn, i64 %i.tt
  %i.tw = getelementptr inbounds nuw [16 x i8], ptr %i.tp, i64 %index357
  %i.tx = getelementptr inbounds nuw [16 x i8], ptr %i.tp, i64 %i.tt
  %wide.load = load <2 x double>, ptr %i.tw, align 8, !tbaa !18, !alias.scope !231
  %wide.load358 = load <2 x double>, ptr %i.tx, align 8, !tbaa !18, !alias.scope !231
  store <2 x double> %wide.load, ptr %i.tu, align 8, !tbaa !18, !alias.scope !232, !noalias !231
  store <2 x double> %wide.load358, ptr %i.tv, align 8, !tbaa !18, !alias.scope !232, !noalias !231
  %index.next359 = add nuw i64 %index357, 2       ; 2 uses
  %i.ty = icmp eq i64 %index.next359, %n.vec355
  br i1 %i.ty, label %middle.block360, label %vector.body356, !llvm.loop !205

middle.block360:                                  ; preds = %vector.body356
  br i1 %cmp.n361, label %._crit_edge51.us.us.us.i.us, label %scalar.ph348.preheader

scalar.ph348.preheader:                           ; preds = %vector.memcheck350, %..preheader46_crit_edge.us.us.us.i.us, %middle.block360
  %indvars.iv71.i.us.ph = phi i64 [ 0, %vector.memcheck350 ], [ 0, %..preheader46_crit_edge.us.us.us.i.us ], [ %n.vec355, %middle.block360 ] ; 4 uses
  %i.tz = sub nsw i64 %i.ad, %indvars.iv71.i.us.ph
  %xtraiter566 = and i64 %i.tz, 3                 ; 2 uses
  %lcmp.mod567.not = icmp eq i64 %xtraiter566, 0
  br i1 %lcmp.mod567.not, label %scalar.ph348.prol.loopexit, label %scalar.ph348.prol

scalar.ph348.prol:                                ; preds = %scalar.ph348.preheader, %scalar.ph348.prol
  %indvars.iv71.i.us.prol = phi i64 [ %indvars.iv.next72.i.us.prol, %scalar.ph348.prol ], [ %indvars.iv71.i.us.ph, %scalar.ph348.preheader ] ; 3 uses
  %prol.iter568 = phi i64 [ %prol.iter568.next, %scalar.ph348.prol ], [ 0, %scalar.ph348.preheader ]
  %i.ua = getelementptr inbounds nuw [16 x i8], ptr %i.tn, i64 %indvars.iv71.i.us.prol ; 2 uses
  %i.ub = getelementptr inbounds nuw [16 x i8], ptr %i.tp, i64 %indvars.iv71.i.us.prol ; 2 uses
  %i.uc = load double, ptr %i.ub, align 8, !tbaa !18
  store double %i.uc, ptr %i.ua, align 8, !tbaa !18
  %i.ud = getelementptr inbounds nuw i8, ptr %i.ub, i64 8
  %i.ue = load double, ptr %i.ud, align 8, !tbaa !18
  %i.uf = getelementptr inbounds nuw i8, ptr %i.ua, i64 8
  store double %i.ue, ptr %i.uf, align 8, !tbaa !18
  %indvars.iv.next72.i.us.prol = add nuw nsw i64 %indvars.iv71.i.us.prol, 1 ; 2 uses
  %prol.iter568.next = add i64 %prol.iter568, 1   ; 2 uses
  %prol.iter568.cmp.not = icmp eq i64 %prol.iter568.next, %xtraiter566
  br i1 %prol.iter568.cmp.not, label %scalar.ph348.prol.loopexit, label %scalar.ph348.prol, !llvm.loop !206

scalar.ph348.prol.loopexit:                       ; preds = %scalar.ph348.prol, %scalar.ph348.preheader
  %indvars.iv71.i.us.unr = phi i64 [ %indvars.iv71.i.us.ph, %scalar.ph348.preheader ], [ %indvars.iv.next72.i.us.prol, %scalar.ph348.prol ]
  %i.ug = sub nsw i64 %indvars.iv71.i.us.ph, %i.ad
  %i.uh = icmp ugt i64 %i.ug, -4
  br i1 %i.uh, label %._crit_edge51.us.us.us.i.us, label %scalar.ph348

scalar.ph348:                                     ; preds = %scalar.ph348.prol.loopexit, %scalar.ph348
  %indvars.iv71.i.us = phi i64 [ %indvars.iv.next72.i.us.3, %scalar.ph348 ], [ %indvars.iv71.i.us.unr, %scalar.ph348.prol.loopexit ] ; 6 uses
  %i.ui = getelementptr inbounds nuw [16 x i8], ptr %i.tn, i64 %indvars.iv71.i.us ; 2 uses
  %i.uj = getelementptr inbounds nuw [16 x i8], ptr %i.tp, i64 %indvars.iv71.i.us ; 2 uses
  %i.uk = load double, ptr %i.uj, align 8, !tbaa !18
  store double %i.uk, ptr %i.ui, align 8, !tbaa !18
  %i.ul = getelementptr inbounds nuw i8, ptr %i.uj, i64 8
  %i.um = load double, ptr %i.ul, align 8, !tbaa !18
  %i.un = getelementptr inbounds nuw i8, ptr %i.ui, i64 8
  store double %i.um, ptr %i.un, align 8, !tbaa !18
  %indvars.iv.next72.i.us = add nuw nsw i64 %indvars.iv71.i.us, 1 ; 2 uses
  %i.uo = getelementptr inbounds nuw [16 x i8], ptr %i.tn, i64 %indvars.iv.next72.i.us ; 2 uses
  %i.up = getelementptr inbounds nuw [16 x i8], ptr %i.tp, i64 %indvars.iv.next72.i.us ; 2 uses
  %i.uq = load double, ptr %i.up, align 8, !tbaa !18
  store double %i.uq, ptr %i.uo, align 8, !tbaa !18
  %i.ur = getelementptr inbounds nuw i8, ptr %i.up, i64 8
  %i.us = load double, ptr %i.ur, align 8, !tbaa !18
  %i.ut = getelementptr inbounds nuw i8, ptr %i.uo, i64 8
  store double %i.us, ptr %i.ut, align 8, !tbaa !18
  %indvars.iv.next72.i.us.1 = add nuw nsw i64 %indvars.iv71.i.us, 2 ; 2 uses
  %i.uu = getelementptr inbounds nuw [16 x i8], ptr %i.tn, i64 %indvars.iv.next72.i.us.1 ; 2 uses
  %i.uv = getelementptr inbounds nuw [16 x i8], ptr %i.tp, i64 %indvars.iv.next72.i.us.1 ; 2 uses
  %i.uw = load double, ptr %i.uv, align 8, !tbaa !18
  store double %i.uw, ptr %i.uu, align 8, !tbaa !18
  %i.ux = getelementptr inbounds nuw i8, ptr %i.uv, i64 8
  %i.uy = load double, ptr %i.ux, align 8, !tbaa !18
  %i.uz = getelementptr inbounds nuw i8, ptr %i.uu, i64 8
  store double %i.uy, ptr %i.uz, align 8, !tbaa !18
  %indvars.iv.next72.i.us.2 = add nuw nsw i64 %indvars.iv71.i.us, 3 ; 2 uses
  %i.va = getelementptr inbounds nuw [16 x i8], ptr %i.tn, i64 %indvars.iv.next72.i.us.2 ; 2 uses
  %i.vb = getelementptr inbounds nuw [16 x i8], ptr %i.tp, i64 %indvars.iv.next72.i.us.2 ; 2 uses
  %i.vc = load double, ptr %i.vb, align 8, !tbaa !18
  store double %i.vc, ptr %i.va, align 8, !tbaa !18
  %i.vd = getelementptr inbounds nuw i8, ptr %i.vb, i64 8
  %i.ve = load double, ptr %i.vd, align 8, !tbaa !18
  %i.vf = getelementptr inbounds nuw i8, ptr %i.va, i64 8
  store double %i.ve, ptr %i.vf, align 8, !tbaa !18
  %indvars.iv.next72.i.us.3 = add nuw nsw i64 %indvars.iv71.i.us, 4 ; 2 uses
  %exitcond75.not.i.us.3 = icmp eq i64 %indvars.iv.next72.i.us.3, %i.ad
  br i1 %exitcond75.not.i.us.3, label %._crit_edge51.us.us.us.i.us, label %scalar.ph348, !llvm.loop !207

._crit_edge51.us.us.us.i.us:                      ; preds = %scalar.ph348.prol.loopexit, %scalar.ph348, %middle.block360
  %indvars.iv.next77.i.us = add nuw nsw i64 %indvars.iv76.i.us, 1 ; 2 uses
  %exitcond80.not.i.us = icmp eq i64 %indvars.iv.next77.i.us, %wide.trip.count58.i144.us
  br i1 %exitcond80.not.i.us, label %arol.exit.us, label %.preheader47.us.us.us.i.us, !llvm.loop !3

arol.exit.us:                                     ; preds = %._crit_edge51.i.us, %._crit_edge51.us.us.us.i.us, %.preheader47.lr.ph.split.us.i.us, %.preheader47.lr.ph.split.i.us, %mkreal.exit.us
  %indvars.iv.next274 = add nuw nsw i64 %indvars.iv273, 1 ; 2 uses
  %exitcond277.not = icmp eq i64 %indvars.iv.next274, %wide.trip.count276
  br i1 %exitcond277.not, label %._crit_edge234.us, label %.lr.ph233.us, !llvm.loop !208

._crit_edge234.us:                                ; preds = %arol.exit.us, %.preheader.us
  %i.vg = load ptr, ptr %0, align 8, !tbaa !29
  tail call void %i.vg(ptr noundef nonnull %0, ptr noundef %6, ptr noundef %8) #13
  %i.vh = load ptr, ptr %0, align 8, !tbaa !29
  tail call void %i.vh(ptr noundef nonnull %0, ptr noundef %7, ptr noundef %9) #13
  br i1 %brmerge255, label %._crit_edge238.split.us, label %.preheader.lr.ph.split.i.us

.preheader.lr.ph.split.i.us:                      ; preds = %._crit_edge234.us, %aphase_shift.exit.us
  %indvars.iv278 = phi i64 [ %indvars.iv.next279, %aphase_shift.exit.us ], [ 0, %._crit_edge234.us ] ; 3 uses
  %i.vi = mul i64 %i.n, %indvars.iv278            ; 2 uses
  %i.vj = add i64 %i.ak, %i.vi
  %i.vk = mul nsw i64 %indvars.iv278, %i.m        ; 2 uses
  %i.vl = getelementptr inbounds [16 x i8], ptr %10, i64 %i.vk ; 4 uses
  %i.vm = getelementptr inbounds [16 x i8], ptr %9, i64 %i.vk ; 4 uses
  br i1 %i.ac, label %.preheader.us.i.us, label %.preheader.i.us

.preheader.i.us:                                  ; preds = %.preheader.lr.ph.split.i.us, %._crit_edge42.split.i.us
  %.03643.i.us = phi i32 [ %i.wr, %._crit_edge42.split.i.us ], [ 0, %.preheader.lr.ph.split.i.us ]
  br i1 %i.ca, label %.epil.preheader569, label %.preheader.i.us.new

.preheader.i.us.new:                              ; preds = %.preheader.i.us, %cdce.end214.us.3
  %.040.i.us = phi i32 [ %i.wk, %cdce.end214.us.3 ], [ 0, %.preheader.i.us ] ; 5 uses
  %niter575 = phi i32 [ %niter575.next.3, %cdce.end214.us.3 ], [ 0, %.preheader.i.us ]
  %i.vn = uitofp nneg i32 %.040.i.us to double
  %i.vo = fmul double %i.z, %i.vn
  %i.vp = fcmp oeq double %i.vo, +inf
  br i1 %i.vp, label %cdce.call213.us, label %cdce.end214.us, !prof !218

cdce.call213.us:                                  ; preds = %.preheader.i.us.new
  %i.vq = tail call double @sin(double noundef +inf) #13 ; 0 uses
  %i.vr = tail call double @cos(double noundef +inf) #13 ; 0 uses
  br label %cdce.end214.us

cdce.end214.us:                                   ; preds = %.preheader.i.us.new, %cdce.call213.us
  %i.vs = or disjoint i32 %.040.i.us, 1
  %i.vt = uitofp nneg i32 %i.vs to double
  %i.vu = fmul nnan double %i.z, %i.vt
  %i.vv = fcmp oeq double %i.vu, +inf
  br i1 %i.vv, label %cdce.call213.us.1, label %cdce.end214.us.1, !prof !218

cdce.call213.us.1:                                ; preds = %cdce.end214.us
  %i.vw = tail call double @sin(double noundef +inf) #13 ; 0 uses
  %i.vx = tail call double @cos(double noundef +inf) #13 ; 0 uses
  br label %cdce.end214.us.1

cdce.end214.us.1:                                 ; preds = %cdce.call213.us.1, %cdce.end214.us
  %i.vy = or disjoint i32 %.040.i.us, 2
  %i.vz = uitofp nneg i32 %i.vy to double
  %i.wa = fmul nnan double %i.z, %i.vz
  %i.wb = fcmp oeq double %i.wa, +inf
  br i1 %i.wb, label %cdce.call213.us.2, label %cdce.end214.us.2, !prof !218

cdce.call213.us.2:                                ; preds = %cdce.end214.us.1
  %i.wc = tail call double @sin(double noundef +inf) #13 ; 0 uses
  %i.wd = tail call double @cos(double noundef +inf) #13 ; 0 uses
  br label %cdce.end214.us.2

cdce.end214.us.2:                                 ; preds = %cdce.call213.us.2, %cdce.end214.us.1
  %i.we = or disjoint i32 %.040.i.us, 3
  %i.wf = uitofp nneg i32 %i.we to double
  %i.wg = fmul nnan double %i.z, %i.wf
  %i.wh = fcmp oeq double %i.wg, +inf
  br i1 %i.wh, label %cdce.call213.us.3, label %cdce.end214.us.3, !prof !218

cdce.call213.us.3:                                ; preds = %cdce.end214.us.2
  %i.wi = tail call double @sin(double noundef +inf) #13 ; 0 uses
  %i.wj = tail call double @cos(double noundef +inf) #13 ; 0 uses
  br label %cdce.end214.us.3

cdce.end214.us.3:                                 ; preds = %cdce.call213.us.3, %cdce.end214.us.2
  %i.wk = add nuw nsw i32 %.040.i.us, 4           ; 2 uses
  %niter575.next.3 = add nuw nsw i32 %niter575, 4 ; 2 uses
  %niter575.ncmp.3 = icmp eq i32 %niter575.next.3, %unroll_iter574
  br i1 %niter575.ncmp.3, label %._crit_edge42.split.i.us.unr-lcssa, label %.preheader.i.us.new, !llvm.loop !4

._crit_edge42.split.i.us.unr-lcssa:               ; preds = %cdce.end214.us.3
  br i1 %lcmp.mod572.not, label %._crit_edge42.split.i.us, label %.epil.preheader569

.epil.preheader569:                               ; preds = %._crit_edge42.split.i.us.unr-lcssa, %.preheader.i.us
  %.040.i.us.epil.init = phi i32 [ 0, %.preheader.i.us ], [ %i.wk, %._crit_edge42.split.i.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod573)
  br label %bb.i

bb.i:                                             ; preds = %cdce.end214.us.epil, %.epil.preheader569
  %.040.i.us.epil = phi i32 [ %.040.i.us.epil.init, %.epil.preheader569 ], [ %i.wq, %cdce.end214.us.epil ] ; 2 uses
  %epil.iter571 = phi i32 [ 0, %.epil.preheader569 ], [ %epil.iter571.next, %cdce.end214.us.epil ]
  %i.wl = uitofp nneg i32 %.040.i.us.epil to double
  %i.wm = fmul double %i.z, %i.wl
  %i.wn = fcmp oeq double %i.wm, +inf
  br i1 %i.wn, label %cdce.call213.us.epil, label %cdce.end214.us.epil, !prof !218

cdce.call213.us.epil:                             ; preds = %bb.i
  %i.wo = tail call double @sin(double noundef +inf) #13 ; 0 uses
  %i.wp = tail call double @cos(double noundef +inf) #13 ; 0 uses
  br label %cdce.end214.us.epil

cdce.end214.us.epil:                              ; preds = %cdce.call213.us.epil, %bb.i
  %i.wq = add nuw nsw i32 %.040.i.us.epil, 1
  %epil.iter571.next = add i32 %epil.iter571, 1   ; 2 uses
  %epil.iter571.cmp.not = icmp eq i32 %epil.iter571.next, %xtraiter570
  br i1 %epil.iter571.cmp.not, label %._crit_edge42.split.i.us, label %bb.i, !llvm.loop !209

._crit_edge42.split.i.us:                         ; preds = %cdce.end214.us.epil, %._crit_edge42.split.i.us.unr-lcssa
  %i.wr = add nuw nsw i32 %.03643.i.us, 1         ; 2 uses
  %exitcond47.not.i.us = icmp eq i32 %i.wr, %.0111244.us
  br i1 %exitcond47.not.i.us, label %aphase_shift.exit.us, label %.preheader.i.us, !llvm.loop !5

.preheader.us.i.us:                               ; preds = %.preheader.lr.ph.split.i.us, %._crit_edge42.split.us.us.i.us
  %indvars.iv55.i.us = phi i64 [ %indvars.iv.next56.i.us, %._crit_edge42.split.us.us.i.us ], [ 0, %.preheader.lr.ph.split.i.us ] ; 3 uses
  %i.ws = mul i64 %i.am, %indvars.iv55.i.us       ; 2 uses
  %i.wt = add i64 %i.vj, %i.ws                    ; 2 uses
  %scevgep = getelementptr i8, ptr %9, i64 %i.wt
  %i.wu = add i64 %i.vi, %i.ws                    ; 2 uses
  %scevgep329 = getelementptr i8, ptr %9, i64 %i.wu
  %scevgep330 = getelementptr i8, ptr %10, i64 %i.wt
  %scevgep331 = getelementptr i8, ptr %10, i64 %i.wu
  %i.wv = mul nuw nsw i64 %indvars.iv55.i.us, %i.ae
  %bound0 = icmp ult ptr %scevgep331, %scevgep
  %bound1 = icmp ult ptr %scevgep329, %scevgep330
  %found.conflict = and i1 %bound0, %bound1
  br label %.lr.ph.us.us.i.us

.lr.ph.us.us.i.us:                                ; preds = %._crit_edge.us.us.i.us, %.preheader.us.i.us
  %indvars.iv50.i.us = phi i64 [ %indvars.iv.next51.i.us, %._crit_edge.us.us.i.us ], [ 0, %.preheader.us.i.us ] ; 3 uses
  %i.ww = trunc nuw nsw i64 %indvars.iv50.i.us to i32
  %i.wx = uitofp nneg i32 %i.ww to double
  %i.wy = fmul double %i.z, %i.wx                 ; 2 uses
  %i.wz = tail call double @sin(double noundef %i.wy) #13
  %i.xa = fmul double %5, %i.wz                   ; 5 uses
  %i.xb = tail call double @cos(double noundef %i.wy) #13 ; 7 uses
  %i.xc = add nuw nsw i64 %indvars.iv50.i.us, %i.wv
  %i.xd = mul nuw nsw i64 %i.xc, %i.ad            ; 4 uses
  %i.xe = fneg double %i.xa                       ; 4 uses
  %brmerge594 = select i1 %min.iters.check, i1 true, i1 %found.conflict
  br i1 %brmerge594, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.us.us.i.us
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.xa, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert332 = insertelement <2 x double> poison, double %i.xb, i64 0
  %broadcast.splat333 = shufflevector <2 x double> %broadcast.splatinsert332, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert334 = insertelement <2 x double> poison, double %i.xe, i64 0
  %broadcast.splat335 = shufflevector <2 x double> %broadcast.splatinsert334, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.xf = add nuw nsw i64 %index, %i.xd           ; 2 uses
  %i.xg = getelementptr inbounds nuw [16 x i8], ptr %i.vm, i64 %i.xf
  %wide.vec = load <4 x double>, ptr %i.xg, align 8, !tbaa !18, !alias.scope !233 ; 4 uses
  %strided.vec = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec336 = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %i.xh = fmul <2 x double> %strided.vec336, %broadcast.splat335
  %i.xi = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %strided.vec, <2 x double> %broadcast.splat333, <2 x double> %i.xh)
  %i.xj = getelementptr inbounds nuw [16 x i8], ptr %i.vl, i64 %i.xf
  %strided.vec338 = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec339 = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %i.xk = fmul <2 x double> %broadcast.splat333, %strided.vec339
  %i.xl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %strided.vec338, <2 x double> %broadcast.splat, <2 x double> %i.xk)
  %interleaved.vec = shufflevector <2 x double> %i.xi, <2 x double> %i.xl, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec, ptr %i.xj, align 8, !tbaa !18, !alias.scope !234, !noalias !233
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.xm = icmp eq i64 %index.next, %n.vec
  br i1 %i.xm, label %middle.block, label %vector.body, !llvm.loop !213

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us.us.i.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.us.us.i.us, %middle.block
  %indvars.iv.i126.us.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph.us.us.i.us ] ; 4 uses
  br i1 %lcmp.mod577.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.xn = add nuw nsw i64 %indvars.iv.i126.us.ph, %i.xd ; 2 uses
  %i.xo = getelementptr inbounds nuw [16 x i8], ptr %i.vm, i64 %i.xn ; 3 uses
  %i.xp = load double, ptr %i.xo, align 8, !tbaa !18
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xo, i64 8 ; 2 uses
  %i.xr = load double, ptr %i.xq, align 8, !tbaa !18
  %i.xs = fmul double %i.xr, %i.xe
  %i.xt = tail call double @llvm.fmuladd.f64(double %i.xp, double %i.xb, double %i.xs)
  %i.xu = getelementptr inbounds nuw [16 x i8], ptr %i.vl, i64 %i.xn ; 2 uses
  store double %i.xt, ptr %i.xu, align 8, !tbaa !18
  %i.xv = load double, ptr %i.xo, align 8, !tbaa !18
  %i.xw = load double, ptr %i.xq, align 8, !tbaa !18
  %i.xx = fmul double %i.xb, %i.xw
  %i.xy = tail call double @llvm.fmuladd.f64(double %i.xv, double %i.xa, double %i.xx)
  %i.xz = getelementptr inbounds nuw i8, ptr %i.xu, i64 8
  store double %i.xy, ptr %i.xz, align 8, !tbaa !18
  %indvars.iv.next.i127.us.prol = or disjoint i64 %indvars.iv.i126.us.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i126.us.unr = phi i64 [ %indvars.iv.i126.us.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i127.us.prol, %scalar.ph.prol ]
  %i.ya = icmp eq i64 %indvars.iv.i126.us.ph, %i.cb
  br i1 %i.ya, label %._crit_edge.us.us.i.us, label %scalar.ph.preheader.new

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op589 = add nuw nsw i64 1, %i.xd
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %indvars.iv.i126.us = phi i64 [ %indvars.iv.i126.us.unr, %scalar.ph.preheader.new ], [ %indvars.iv.next.i127.us.1, %scalar.ph ] ; 3 uses
  %i.yb = add nuw nsw i64 %indvars.iv.i126.us, %i.xd ; 2 uses
  %i.yc = getelementptr inbounds nuw [16 x i8], ptr %i.vm, i64 %i.yb ; 3 uses
  %i.yd = load double, ptr %i.yc, align 8, !tbaa !18
  %i.ye = getelementptr inbounds nuw i8, ptr %i.yc, i64 8 ; 2 uses
  %i.yf = load double, ptr %i.ye, align 8, !tbaa !18
  %i.yg = fmul double %i.yf, %i.xe
  %i.yh = tail call double @llvm.fmuladd.f64(double %i.yd, double %i.xb, double %i.yg)
  %i.yi = getelementptr inbounds nuw [16 x i8], ptr %i.vl, i64 %i.yb ; 2 uses
  store double %i.yh, ptr %i.yi, align 8, !tbaa !18
end_hunk_2
