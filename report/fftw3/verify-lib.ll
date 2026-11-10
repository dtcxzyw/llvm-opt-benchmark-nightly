Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fftw3/original/verify-lib?download=true
inline.NumInlined: 53
inline.NumDeleted: 6
loop-unroll.NumRuntimeUnrolled: 32
loop-unroll.NumUnrolled: 32
begin_hunk_0_@aadd:bb.a
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
  %i.e = getelementptr i8, ptr %2, i64 %i.b
  %bound0 = icmp ult ptr %0, %i.d
  %bound1 = icmp ult ptr %1, %i.c
  %found.conflict = and i1 %bound0, %bound1
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
  %wide.trip.count69 = zext i32 %i.c to i64       ; 2 uses
  %i.h = mul nuw nsw i64 %i.e, %i.f
  %i.i = add nuw nsw i64 %wide.trip.count79, 1152921504606846975
  %i.j = mul i64 %i.i, %i.f
  %i.k = shl i64 %i.j, 4
  %i.l = add i64 %i.k, 16
  %i.m = mul i64 %i.l, %i.e
  %scevgep99 = getelementptr i8, ptr %1, i64 %i.m
  %5 = shl nuw nsw i64 %i.e, 4
  %scevgep98 = getelementptr i8, ptr %0, i64 %5
  %i.n = shl nuw nsw i64 %wide.trip.count69, 4    ; 2 uses
  %i.o = add nuw nsw i64 %i.n, 16
  %i.p = shl nuw nsw i64 %i.e, 4
  %i.q = shl nuw nsw i64 %i.e, 4
  %min.iters.check129 = icmp ult i32 %4, 4
  %n.vec135 = and i64 %i.e, 2147483646            ; 3 uses
  %cmp.n142 = icmp eq i64 %n.vec135, %i.e
  %min.iters.check100 = icmp ult i32 %4, 4
  %.mask144 = and i64 %i.h, 576460752303423488
  %stride.check105 = icmp ne i64 %.mask144, 0
  %n.vec107 = and i64 %i.e, 2147483646            ; 3 uses
  %cmp.n114 = icmp eq i64 %n.vec107, %i.e
  br label %.preheader47.us.us.us

.preheader47.us.us.us:                            ; preds = %.preheader47.us.us.us.preheader, %._crit_edge51.us.us.us
  %indvars.iv76 = phi i64 [ 0, %.preheader47.us.us.us.preheader ], [ %indvars.iv.next77, %._crit_edge51.us.us.us ] ; 3 uses
  %i.r = trunc i64 %indvars.iv76 to i32
  %i.s = mul i32 %2, %i.r
  %i.t = zext i32 %i.s to i64                     ; 3 uses
  %i.u = shl nuw nsw i64 %i.t, 4                  ; 2 uses
  %i.v = add nuw nsw i64 %i.o, %i.u
  %i.w = mul i64 %i.v, %i.e
  %scevgep124 = getelementptr i8, ptr %1, i64 %i.w
  %i.x = add nuw nsw i64 %i.t, 1
  %i.y = mul i64 %i.p, %i.x
  %scevgep125 = getelementptr nuw i8, ptr %1, i64 %i.y
  %i.z = add nuw nsw i64 %i.n, %i.u
  %i.aa = mul i64 %i.z, %i.e
  %scevgep126 = getelementptr i8, ptr %0, i64 %i.aa
  %i.ab = mul i64 %i.q, %i.t
  %scevgep127 = getelementptr nuw i8, ptr %0, i64 %i.ab
  %i.ac = mul nuw nsw i64 %indvars.iv76, %i.f     ; 3 uses
  %i.ad = trunc nsw i64 %i.ac to i32
  %i.ae = and i64 %i.ac, 4294967295
  %bound0131 = icmp ult ptr %scevgep127, %scevgep124
  %bound1132 = icmp ult ptr %scevgep125, %scevgep126
  %found.conflict133 = and i1 %bound0131, %bound1132
  br label %.preheader.us.us.us

.preheader.us.us.us:                              ; preds = %._crit_edge.us.us.us, %.preheader47.us.us.us
  %indvars.iv66 = phi i64 [ %indvars.iv.next67, %._crit_edge.us.us.us ], [ 0, %.preheader47.us.us.us ] ; 2 uses
  %i.af = add nuw nsw i64 %indvars.iv66, %i.ae    ; 2 uses
  %i.ag = mul nuw nsw i64 %i.af, %i.e
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.ag ; 7 uses
  %i.ai = add nuw nsw i64 %i.af, 1
  %i.aj = mul nuw nsw i64 %i.ai, %i.e
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.aj ; 7 uses
  %brmerge = select i1 %min.iters.check129, i1 true, i1 %found.conflict133
  br i1 %brmerge, label %scalar.ph128.preheader, label %vector.body136

vector.body136:                                   ; preds = %.preheader.us.us.us, %vector.body136
  %index137 = phi i64 [ %index.next140, %vector.body136 ], [ 0, %.preheader.us.us.us ] ; 4 uses
  %i.al = or disjoint i64 %index137, 1            ; 2 uses
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %i.ah, i64 %index137
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %i.ah, i64 %i.al
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %i.ak, i64 %index137
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %i.ak, i64 %i.al
  %wide.load138 = load <2 x double>, ptr %i.ao, align 8, !tbaa !18, !alias.scope !82
  %wide.load139 = load <2 x double>, ptr %i.ap, align 8, !tbaa !18, !alias.scope !82
  store <2 x double> %wide.load138, ptr %i.am, align 8, !tbaa !18, !alias.scope !83, !noalias !82
  store <2 x double> %wide.load139, ptr %i.an, align 8, !tbaa !18, !alias.scope !83, !noalias !82
  %index.next140 = add nuw i64 %index137, 2       ; 2 uses
  %i.aq = icmp eq i64 %index.next140, %n.vec135
  br i1 %i.aq, label %middle.block141, label %vector.body136, !llvm.loop !67

middle.block141:                                  ; preds = %vector.body136
  br i1 %cmp.n142, label %._crit_edge.us.us.us, label %scalar.ph128.preheader

scalar.ph128.preheader:                           ; preds = %.preheader.us.us.us, %middle.block141
  %indvars.iv61.ph = phi i64 [ %n.vec135, %middle.block141 ], [ 0, %.preheader.us.us.us ] ; 4 uses
  %i.ar = sub nsw i64 %i.e, %indvars.iv61.ph
  %xtraiter146 = and i64 %i.ar, 3                 ; 2 uses
  %lcmp.mod147.not = icmp eq i64 %xtraiter146, 0
  br i1 %lcmp.mod147.not, label %scalar.ph128.prol.loopexit, label %scalar.ph128.prol

scalar.ph128.prol:                                ; preds = %scalar.ph128.preheader, %scalar.ph128.prol
  %indvars.iv61.prol = phi i64 [ %indvars.iv.next62.prol, %scalar.ph128.prol ], [ %indvars.iv61.ph, %scalar.ph128.preheader ] ; 3 uses
  %prol.iter148 = phi i64 [ %prol.iter148.next, %scalar.ph128.prol ], [ 0, %scalar.ph128.preheader ]
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %i.ah, i64 %indvars.iv61.prol ; 2 uses
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.ak, i64 %indvars.iv61.prol ; 2 uses
  %i.au = load double, ptr %i.at, align 8, !tbaa !18
  store double %i.au, ptr %i.as, align 8, !tbaa !18
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.aw = load double, ptr %i.av, align 8, !tbaa !18
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store double %i.aw, ptr %i.ax, align 8, !tbaa !18
  %indvars.iv.next62.prol = add nuw nsw i64 %indvars.iv61.prol, 1 ; 2 uses
  %prol.iter148.next = add i64 %prol.iter148, 1   ; 2 uses
  %prol.iter148.cmp.not = icmp eq i64 %prol.iter148.next, %xtraiter146
  br i1 %prol.iter148.cmp.not, label %scalar.ph128.prol.loopexit, label %scalar.ph128.prol, !llvm.loop !68

scalar.ph128.prol.loopexit:                       ; preds = %scalar.ph128.prol, %scalar.ph128.preheader
  %indvars.iv61.unr = phi i64 [ %indvars.iv61.ph, %scalar.ph128.preheader ], [ %indvars.iv.next62.prol, %scalar.ph128.prol ]
  %i.ay = sub nsw i64 %indvars.iv61.ph, %i.e
  %i.az = icmp ugt i64 %i.ay, -4
  br i1 %i.az, label %._crit_edge.us.us.us, label %scalar.ph128

scalar.ph128:                                     ; preds = %scalar.ph128.prol.loopexit, %scalar.ph128
  %indvars.iv61 = phi i64 [ %indvars.iv.next62.3, %scalar.ph128 ], [ %indvars.iv61.unr, %scalar.ph128.prol.loopexit ] ; 6 uses
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %i.ah, i64 %indvars.iv61 ; 2 uses
  %i.bb = getelementptr inbounds nuw [16 x i8], ptr %i.ak, i64 %indvars.iv61 ; 2 uses
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !18
  store double %i.bc, ptr %i.ba, align 8, !tbaa !18
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.be = load double, ptr %i.bd, align 8, !tbaa !18
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store double %i.be, ptr %i.bf, align 8, !tbaa !18
  %indvars.iv.next62 = add nuw nsw i64 %indvars.iv61, 1 ; 2 uses
  %i.bg = getelementptr inbounds nuw [16 x i8], ptr %i.ah, i64 %indvars.iv.next62 ; 2 uses
  %i.bh = getelementptr inbounds nuw [16 x i8], ptr %i.ak, i64 %indvars.iv.next62 ; 2 uses
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !18
  store double %i.bi, ptr %i.bg, align 8, !tbaa !18
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !18
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store double %i.bk, ptr %i.bl, align 8, !tbaa !18
  %indvars.iv.next62.1 = add nuw nsw i64 %indvars.iv61, 2 ; 2 uses
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %i.ah, i64 %indvars.iv.next62.1 ; 2 uses
  %i.bn = getelementptr inbounds nuw [16 x i8], ptr %i.ak, i64 %indvars.iv.next62.1 ; 2 uses
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !18
  store double %i.bo, ptr %i.bm, align 8, !tbaa !18
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !18
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store double %i.bq, ptr %i.br, align 8, !tbaa !18
  %indvars.iv.next62.2 = add nuw nsw i64 %indvars.iv61, 3 ; 2 uses
  %i.bs = getelementptr inbounds nuw [16 x i8], ptr %i.ah, i64 %indvars.iv.next62.2 ; 2 uses
  %i.bt = getelementptr inbounds nuw [16 x i8], ptr %i.ak, i64 %indvars.iv.next62.2 ; 2 uses
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !18
  store double %i.bu, ptr %i.bs, align 8, !tbaa !18
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !18
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store double %i.bw, ptr %i.bx, align 8, !tbaa !18
  %indvars.iv.next62.3 = add nuw nsw i64 %indvars.iv61, 4 ; 2 uses
  %exitcond65.not.3 = icmp eq i64 %indvars.iv.next62.3, %i.e
  br i1 %exitcond65.not.3, label %._crit_edge.us.us.us, label %scalar.ph128, !llvm.loop !69

._crit_edge.us.us.us:                             ; preds = %scalar.ph128.prol.loopexit, %scalar.ph128, %middle.block141
  %indvars.iv.next67 = add nuw nsw i64 %indvars.iv66, 1 ; 2 uses
  %exitcond70.not = icmp eq i64 %indvars.iv.next67, %wide.trip.count69
  br i1 %exitcond70.not, label %..preheader46_crit_edge.us.us.us, label %.preheader.us.us.us, !llvm.loop !2

..preheader46_crit_edge.us.us.us:                 ; preds = %._crit_edge.us.us.us
  %i.by = add i32 %i.c, %i.ad
  %i.bz = mul nsw i32 %i.by, %4
  %i.ca = sext i32 %i.bz to i64                   ; 2 uses
  %i.cb = getelementptr inbounds [16 x i8], ptr %0, i64 %i.ca ; 8 uses
  %i.cc = mul nuw nsw i64 %i.ac, %i.g
  %i.cd = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.cc ; 7 uses
  br i1 %min.iters.check100, label %scalar.ph99.preheader, label %vector.memcheck101

vector.memcheck101:                               ; preds = %..preheader46_crit_edge.us.us.us
  %i.ce = shl nsw i64 %i.ca, 4
  %i.cf = getelementptr i8, ptr %scevgep98, i64 %i.ce
  %bound0102 = icmp ult ptr %i.cb, %scevgep99
  %bound1103 = icmp ult ptr %1, %i.cf
  %found.conflict104 = and i1 %bound0102, %bound1103
  %i.cg = or i1 %found.conflict104, %stride.check105
  br i1 %i.cg, label %scalar.ph99.preheader, label %vector.body108

vector.body108:                                   ; preds = %vector.memcheck101, %vector.body108
  %index109 = phi i64 [ %index.next112, %vector.body108 ], [ 0, %vector.memcheck101 ] ; 4 uses
  %i.ch = or disjoint i64 %index109, 1            ; 2 uses
  %i.ci = getelementptr inbounds nuw [16 x i8], ptr %i.cb, i64 %index109
  %i.cj = getelementptr inbounds nuw [16 x i8], ptr %i.cb, i64 %i.ch
  %i.ck = getelementptr inbounds nuw [16 x i8], ptr %i.cd, i64 %index109
  %i.cl = getelementptr inbounds nuw [16 x i8], ptr %i.cd, i64 %i.ch
  %wide.load110 = load <2 x double>, ptr %i.ck, align 8, !tbaa !18, !alias.scope !84
  %wide.load111 = load <2 x double>, ptr %i.cl, align 8, !tbaa !18, !alias.scope !84
  store <2 x double> %wide.load110, ptr %i.ci, align 8, !tbaa !18, !alias.scope !85, !noalias !84
  store <2 x double> %wide.load111, ptr %i.cj, align 8, !tbaa !18, !alias.scope !85, !noalias !84
  %index.next112 = add nuw i64 %index109, 2       ; 2 uses
  %i.cm = icmp eq i64 %index.next112, %n.vec107
  br i1 %i.cm, label %middle.block113, label %vector.body108, !llvm.loop !73

middle.block113:                                  ; preds = %vector.body108
  br i1 %cmp.n114, label %._crit_edge51.us.us.us, label %scalar.ph99.preheader

scalar.ph99.preheader:                            ; preds = %vector.memcheck101, %..preheader46_crit_edge.us.us.us, %middle.block113
  %indvars.iv71.ph = phi i64 [ 0, %vector.memcheck101 ], [ 0, %..preheader46_crit_edge.us.us.us ], [ %n.vec107, %middle.block113 ] ; 4 uses
  %i.cn = sub nsw i64 %i.e, %indvars.iv71.ph
  %xtraiter149 = and i64 %i.cn, 3                 ; 2 uses
  %lcmp.mod150.not = icmp eq i64 %xtraiter149, 0
  br i1 %lcmp.mod150.not, label %scalar.ph99.prol.loopexit, label %scalar.ph99.prol

scalar.ph99.prol:                                 ; preds = %scalar.ph99.preheader, %scalar.ph99.prol
  %indvars.iv71.prol = phi i64 [ %indvars.iv.next72.prol, %scalar.ph99.prol ], [ %indvars.iv71.ph, %scalar.ph99.preheader ] ; 3 uses
  %prol.iter151 = phi i64 [ %prol.iter151.next, %scalar.ph99.prol ], [ 0, %scalar.ph99.preheader ]
  %i.co = getelementptr inbounds nuw [16 x i8], ptr %i.cb, i64 %indvars.iv71.prol ; 2 uses
  %i.cp = getelementptr inbounds nuw [16 x i8], ptr %i.cd, i64 %indvars.iv71.prol ; 2 uses
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !18
  store double %i.cq, ptr %i.co, align 8, !tbaa !18
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !18
  %i.ct = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  store double %i.cs, ptr %i.ct, align 8, !tbaa !18
  %indvars.iv.next72.prol = add nuw nsw i64 %indvars.iv71.prol, 1 ; 2 uses
  %prol.iter151.next = add i64 %prol.iter151, 1   ; 2 uses
  %prol.iter151.cmp.not = icmp eq i64 %prol.iter151.next, %xtraiter149
  br i1 %prol.iter151.cmp.not, label %scalar.ph99.prol.loopexit, label %scalar.ph99.prol, !llvm.loop !74

scalar.ph99.prol.loopexit:                        ; preds = %scalar.ph99.prol, %scalar.ph99.preheader
  %indvars.iv71.unr = phi i64 [ %indvars.iv71.ph, %scalar.ph99.preheader ], [ %indvars.iv.next72.prol, %scalar.ph99.prol ]
  %i.cu = sub nsw i64 %indvars.iv71.ph, %i.e
  %i.cv = icmp ugt i64 %i.cu, -4
  br i1 %i.cv, label %._crit_edge51.us.us.us, label %scalar.ph99

scalar.ph99:                                      ; preds = %scalar.ph99.prol.loopexit, %scalar.ph99
  %indvars.iv71 = phi i64 [ %indvars.iv.next72.3, %scalar.ph99 ], [ %indvars.iv71.unr, %scalar.ph99.prol.loopexit ] ; 6 uses
  %i.cw = getelementptr inbounds nuw [16 x i8], ptr %i.cb, i64 %indvars.iv71 ; 2 uses
  %i.cx = getelementptr inbounds nuw [16 x i8], ptr %i.cd, i64 %indvars.iv71 ; 2 uses
  %i.cy = load double, ptr %i.cx, align 8, !tbaa !18
  store double %i.cy, ptr %i.cw, align 8, !tbaa !18
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.da = load double, ptr %i.cz, align 8, !tbaa !18
  %i.db = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  store double %i.da, ptr %i.db, align 8, !tbaa !18
  %indvars.iv.next72 = add nuw nsw i64 %indvars.iv71, 1 ; 2 uses
  %i.dc = getelementptr inbounds nuw [16 x i8], ptr %i.cb, i64 %indvars.iv.next72 ; 2 uses
  %i.dd = getelementptr inbounds nuw [16 x i8], ptr %i.cd, i64 %indvars.iv.next72 ; 2 uses
  %i.de = load double, ptr %i.dd, align 8, !tbaa !18
  store double %i.de, ptr %i.dc, align 8, !tbaa !18
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.dg = load double, ptr %i.df, align 8, !tbaa !18
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  store double %i.dg, ptr %i.dh, align 8, !tbaa !18
  %indvars.iv.next72.1 = add nuw nsw i64 %indvars.iv71, 2 ; 2 uses
  %i.di = getelementptr inbounds nuw [16 x i8], ptr %i.cb, i64 %indvars.iv.next72.1 ; 2 uses
  %i.dj = getelementptr inbounds nuw [16 x i8], ptr %i.cd, i64 %indvars.iv.next72.1 ; 2 uses
  %i.dk = load double, ptr %i.dj, align 8, !tbaa !18
  store double %i.dk, ptr %i.di, align 8, !tbaa !18
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.dm = load double, ptr %i.dl, align 8, !tbaa !18
  %i.dn = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  store double %i.dm, ptr %i.dn, align 8, !tbaa !18
  %indvars.iv.next72.2 = add nuw nsw i64 %indvars.iv71, 3 ; 2 uses
  %i.do = getelementptr inbounds nuw [16 x i8], ptr %i.cb, i64 %indvars.iv.next72.2 ; 2 uses
  %i.dp = getelementptr inbounds nuw [16 x i8], ptr %i.cd, i64 %indvars.iv.next72.2 ; 2 uses
  %i.dq = load double, ptr %i.dp, align 8, !tbaa !18
  store double %i.dq, ptr %i.do, align 8, !tbaa !18
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.ds = load double, ptr %i.dr, align 8, !tbaa !18
  %i.dt = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  store double %i.ds, ptr %i.dt, align 8, !tbaa !18
  %indvars.iv.next72.3 = add nuw nsw i64 %indvars.iv71, 4 ; 2 uses
  %exitcond75.not.3 = icmp eq i64 %indvars.iv.next72.3, %i.e
  br i1 %exitcond75.not.3, label %._crit_edge51.us.us.us, label %scalar.ph99, !llvm.loop !75

._crit_edge51.us.us.us:                           ; preds = %scalar.ph99.prol.loopexit, %scalar.ph99, %middle.block113
  %indvars.iv.next77 = add nuw nsw i64 %indvars.iv76, 1 ; 2 uses
  %exitcond80.not = icmp eq i64 %indvars.iv.next77, %wide.trip.count79
  br i1 %exitcond80.not, label %._crit_edge53, label %.preheader47.us.us.us, !llvm.loop !3

.preheader47.lr.ph.split:                         ; preds = %.preheader47.lr.ph
  br i1 %i.d, label %.preheader47.preheader, label %._crit_edge53

.preheader47.preheader:                           ; preds = %.preheader47.lr.ph.split
  %i.du = sext i32 %2 to i64                      ; 3 uses
  %i.dv = zext nneg i32 %4 to i64
  %wide.trip.count59 = zext nneg i32 %3 to i64    ; 2 uses
  %wide.trip.count = zext nneg i32 %4 to i64      ; 8 uses
  %i.dw = mul nsw i64 %i.du, %wide.trip.count
  %i.dx = add nuw nsw i64 %wide.trip.count59, 1152921504606846975
  %i.dy = mul i64 %i.dx, %i.du
  %i.dz = shl i64 %i.dy, 4
  %i.ea = add i64 %i.dz, 16
  %i.eb = mul i64 %i.ea, %wide.trip.count
  %scevgep = getelementptr i8, ptr %1, i64 %i.eb
  %6 = shl nuw nsw i64 %wide.trip.count, 4
  %scevgep.a = getelementptr i8, ptr %0, i64 %6
  %min.iters.check = icmp ult i32 %4, 4
  %.mask = and i64 %i.dw, 576460752303423488
  %stride.check = icmp ne i64 %.mask, 0
  %n.vec = and i64 %wide.trip.count, 2147483646   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.preheader47

.preheader47:                                     ; preds = %.preheader47.preheader, %._crit_edge51
  %indvars.iv56 = phi i64 [ 0, %.preheader47.preheader ], [ %indvars.iv.next57, %._crit_edge51 ] ; 2 uses
  %i.ec = mul nsw i64 %indvars.iv56, %i.du        ; 2 uses
  %i.ed = trunc nsw i64 %i.ec to i32
  %i.ee = add i32 %i.c, %i.ed
  %i.ef = mul nsw i32 %i.ee, %4
  %i.eg = sext i32 %i.ef to i64                   ; 2 uses
  %i.eh = getelementptr inbounds [16 x i8], ptr %0, i64 %i.eg ; 8 uses
  %i.ei = mul nsw i64 %i.ec, %i.dv
  %i.ej = getelementptr inbounds [16 x i8], ptr %1, i64 %i.ei ; 7 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader47
  %i.ek = shl nsw i64 %i.eg, 4
  %i.el = getelementptr i8, ptr %scevgep.a, i64 %i.ek
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
  %wide.load89 = load <2 x double>, ptr %i.er, align 8, !tbaa !18, !alias.scope !86
  store <2 x double> %wide.load, ptr %i.eo, align 8, !tbaa !18, !alias.scope !87, !noalias !86
  store <2 x double> %wide.load89, ptr %i.ep, align 8, !tbaa !18, !alias.scope !87, !noalias !86
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
  %i.h = zext nneg i32 %2 to i64                  ; 4 uses
  %wide.trip.count58 = zext nneg i32 %3 to i64
  %i.i = mul nuw nsw i64 %i.g, %i.h
  %i.j = shl i64 %i.i, 4
  %i.k = mul nuw nsw i64 %i.g, %i.h
  %i.l = shl i64 %i.k, 4
  %min.iters.check = icmp eq i32 %4, 1
  %n.vec = and i64 %i.g, 2147483646               ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.g
  %xtraiter81 = and i64 %i.g, 1
  %lcmp.mod82.not = icmp eq i64 %xtraiter81, 0
  %i.m = add nsw i64 %i.g, -1
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge42.split.us.us
  %indvars.iv55 = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next56, %._crit_edge42.split.us.us ] ; 3 uses
  %i.n = mul i64 %i.l, %indvars.iv55              ; 3 uses
  %i.o = add i64 %i.j, %i.n                       ; 2 uses
  %scevgep = getelementptr i8, ptr %1, i64 %i.o
  %scevgep68 = getelementptr i8, ptr %1, i64 %i.n
  %scevgep69 = getelementptr i8, ptr %0, i64 %i.o
  %scevgep70 = getelementptr i8, ptr %0, i64 %i.n
  %i.p = mul nuw nsw i64 %indvars.iv55, %i.h
  %bound0 = icmp ult ptr %scevgep70, %scevgep
  %bound1 = icmp ult ptr %scevgep68, %scevgep69
  %found.conflict = and i1 %bound0, %bound1
  br label %.lr.ph.us.us

.lr.ph.us.us:                                     ; preds = %._crit_edge.us.us, %.preheader.us
  %indvars.iv50 = phi i64 [ %indvars.iv.next51, %._crit_edge.us.us ], [ 0, %.preheader.us ] ; 3 uses
  %i.q = trunc nuw nsw i64 %indvars.iv50 to i32
  %i.r = uitofp nneg i32 %i.q to double
  %i.s = fmul double %i.b, %i.r                   ; 2 uses
  %i.t = tail call double @sin(double noundef %i.s) #13
  %i.u = fmul double %5, %i.t                     ; 5 uses
  %i.v = tail call double @cos(double noundef %i.s) #13 ; 7 uses
  %i.w = add nuw nsw i64 %indvars.iv50, %i.p
  %i.x = mul nuw nsw i64 %i.w, %i.g               ; 4 uses
  %i.y = fneg double %i.u                         ; 4 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %found.conflict
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.us.us
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.u, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert71 = insertelement <2 x double> poison, double %i.v, i64 0
  %broadcast.splat72 = shufflevector <2 x double> %broadcast.splatinsert71, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert73 = insertelement <2 x double> poison, double %i.y, i64 0
  %broadcast.splat74 = shufflevector <2 x double> %broadcast.splatinsert73, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.z = add nuw nsw i64 %index, %i.x             ; 2 uses
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.z
  %wide.vec = load <4 x double>, ptr %i.aa, align 8, !tbaa !18, !alias.scope !94 ; 4 uses
  %strided.vec = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec75 = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %i.ab = fmul <2 x double> %strided.vec75, %broadcast.splat74
  %i.ac = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %strided.vec, <2 x double> %broadcast.splat72, <2 x double> %i.ab)
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.z
  %strided.vec77 = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec78 = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %i.ae = fmul <2 x double> %broadcast.splat72, %strided.vec78
  %i.af = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %strided.vec77, <2 x double> %broadcast.splat, <2 x double> %i.ae)
  %interleaved.vec = shufflevector <2 x double> %i.ac, <2 x double> %i.af, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec, ptr %i.ad, align 8, !tbaa !18, !alias.scope !95, !noalias !94
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !91

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us.us, label %scalar.ph.preheader

end_hunk_0
