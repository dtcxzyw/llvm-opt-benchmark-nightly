Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/arkode_sprk?download=true
inline.NumInlined: 18
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@ARKodeSPRKTable_Copy:ARKodeSPRKTable_Alloc.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.e) ]
  %i.h = tail call noalias ptr @malloc(i64 noundef %i.d) #13 ; 7 uses
  %i.i = ptrtoaddr ptr %i.h to i64                ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %calloc.i, i64 8
  store ptr %i.h, ptr %i.j, align 8, !tbaa !12
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ]
  %i.k = getelementptr inbounds nuw i8, ptr %calloc.i, i64 4
  store i32 %i.b, ptr %i.k, align 4, !tbaa !13
  %i.l = load i32, ptr %0, align 8, !tbaa !14
  store i32 %i.l, ptr %calloc.i, align 8, !tbaa !14
  %i.m = icmp sgt i32 %i.b, 0
  br i1 %i.m, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %ARKodeSPRKTable_Alloc.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !11   ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !12   ; 5 uses
  %wide.trip.count = zext nneg i32 %i.b to i64    ; 5 uses
  %min.iters.check = icmp ult i32 %i.b, 32
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.r = ptrtoaddr ptr %i.q to i64                ; 2 uses
  %i.s = ptrtoaddr ptr %i.o to i64                ; 2 uses
  %i.t = sub i64 %i.f, %i.i
  %diff.check = icmp ugt i64 %i.t, -32
  %i.u = sub i64 %i.s, %i.f
  %diff.check16 = icmp ugt i64 %i.u, -32
  %conflict.rdx = or i1 %diff.check, %diff.check16
  %i.v = sub i64 %i.f, %i.r
  %diff.check17 = icmp ugt i64 %i.v, -32
  %conflict.rdx18 = or i1 %conflict.rdx, %diff.check17
  %i.w = sub i64 %i.s, %i.i
  %diff.check19 = icmp ugt i64 %i.w, -32
  %conflict.rdx20 = or i1 %conflict.rdx18, %diff.check19
  %i.x = sub i64 %i.r, %i.i
  %diff.check21 = icmp ugt i64 %i.x, -32
  %conflict.rdx22 = or i1 %conflict.rdx20, %diff.check21
  br i1 %conflict.rdx22, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %index ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %wide.load = load <2 x double>, ptr %i.y, align 8, !tbaa !16
  %wide.load23 = load <2 x double>, ptr %i.z, align 8, !tbaa !16
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %index ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store <2 x double> %wide.load, ptr %i.aa, align 8, !tbaa !16
  store <2 x double> %wide.load23, ptr %i.ab, align 8, !tbaa !16
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %index ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %wide.load24 = load <2 x double>, ptr %i.ac, align 8, !tbaa !16
  %wide.load25 = load <2 x double>, ptr %i.ad, align 8, !tbaa !16
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %index ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store <2 x double> %wide.load24, ptr %i.ae, align 8, !tbaa !16
  store <2 x double> %wide.load25, ptr %i.af, align 8, !tbaa !16
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !23

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 7 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.ph
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !16
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.ph
  store double %i.ai, ptr %i.aj, align 8, !tbaa !16
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.ph
  %i.al = load double, ptr %i.ak, align 8, !tbaa !16
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.ph
  store double %i.al, ptr %i.am, align 8, !tbaa !16
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.an = add nsw i64 %wide.trip.count, -1
  %i.ao = icmp eq i64 %indvars.iv.ph, %i.an
  br i1 %i.ao, label %._crit_edge, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !16
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  store double %i.aq, ptr %i.ar, align 8, !tbaa !16
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv
  %i.at = load double, ptr %i.as, align 8, !tbaa !16
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv
  store double %i.at, ptr %i.au, align 8, !tbaa !16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.next
  %i.aw = load double, ptr %i.av, align 8, !tbaa !16
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.next
  store double %i.aw, ptr %i.ax, align 8, !tbaa !16
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.next
  %i.az = load double, ptr %i.ay, align 8, !tbaa !16
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.next
  store double %i.az, ptr %i.ba, align 8, !tbaa !16
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %scalar.ph, !llvm.loop !24

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %ARKodeSPRKTable_Alloc.exit
  ret ptr %calloc.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @ARKodeSPRKTable_Space(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %2) local_unnamed_addr #7 {
bb.a:
  store i64 2, ptr %1, align 8, !tbaa !26
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !13
  %i.c = shl nsw i32 %i.b, 1
  %i.d = sext i32 %i.c to i64
  store i64 %i.d, ptr %2, align 8, !tbaa !26
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define void @ARKodeSPRKTable_Write(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #9 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store ptr null, ptr %i.a, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  store ptr null, ptr %i.b, align 8, !tbaa !20
  %i.c = call i32 @ARKodeSPRKTable_ToButcher(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) ; 0 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !20   ; 2 uses
  tail call void @ARKodeButcherTable_Write(ptr noundef %i.d, ptr noundef %1) #14
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !20   ; 2 uses
  tail call void @ARKodeButcherTable_Write(ptr noundef %i.e, ptr noundef %1) #14
  tail call void @ARKodeButcherTable_Free(ptr noundef %i.d) #14
  tail call void @ARKodeButcherTable_Free(ptr noundef %i.e) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret void
}

; Function Attrs: nounwind uwtable
define range(i32 -20, 1) i32 @ARKodeSPRKTable_ToButcher(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !13
  %i.c = tail call ptr @ARKodeButcherTable_Alloc(i32 noundef %i.b, i32 noundef 0) #14 ; 8 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %i.a, align 4, !tbaa !13
  %i.e = tail call ptr @ARKodeButcherTable_Alloc(i32 noundef %i.d, i32 noundef 0) #14 ; 7 uses
  %.not73 = icmp eq ptr %i.e, null
  br i1 %.not73, label %bb.c, label %.preheader80

.preheader80:                                     ; preds = %bb.b
  %i.f = load i32, ptr %i.a, align 4, !tbaa !13   ; 5 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph98, label %._crit_edge99

.lr.ph98:                                         ; preds = %.preheader80
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !11   ; 13 uses
  %i.j = ptrtoaddr ptr %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !38
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.s = load i32, ptr %0, align 8, !tbaa !14     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.v = load ptr, ptr %i.n, align 8, !tbaa !39
  %wide.trip.count117 = zext nneg i32 %i.f to i64
  %i.w = load ptr, ptr %i.o, align 8, !tbaa !12   ; 8 uses
  %i.x = ptrtoaddr ptr %i.w to i64
  %i.y = load ptr, ptr %i.p, align 8, !tbaa !38
  %wide.trip.count127 = zext nneg i32 %i.f to i64
  %wide.trip.count137 = zext nneg i32 %i.f to i64
  br label %3

bb.c:                                             ; preds = %bb.b
  tail call void @ARKodeButcherTable_Free(ptr noundef nonnull %i.c) #14
  br label %bb.h

3:                                                ; preds = %.lr.ph98, %._crit_edge95
  %.06697 = phi i32 [ 0, %.lr.ph98 ], [ %.4.lcssa, %._crit_edge95 ] ; 5 uses
  %4 = sext i32 %.06697 to i64                    ; 3 uses
  %5 = getelementptr inbounds [8 x i8], ptr %i.i, i64 %4
  %6 = load double, ptr %5, align 8, !tbaa !16
  %7 = getelementptr inbounds [8 x i8], ptr %i.l, i64 %4
  store double %6, ptr %7, align 8, !tbaa !16
  %.not7481 = icmp slt i32 %.06697, 0
  br i1 %.not7481, label %.preheader76.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %3
  %8 = load ptr, ptr %i.m, align 8, !tbaa !40
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %4
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !41  ; 7 uses
  %i.ab = add nuw i32 %.06697, 1
  %wide.trip.count = zext i32 %i.ab to i64        ; 4 uses
  %min.iters.check146 = icmp ult i32 %.06697, 3
  %i.ac = ptrtoaddr ptr %i.aa to i64
  %i.ad = sub i64 %i.j, %i.ac
  %diff.check144 = icmp ugt i64 %i.ad, -32
  %or.cond = select i1 %min.iters.check146, i1 true, i1 %diff.check144
  br i1 %or.cond, label %scalar.ph145.preheader, label %vector.ph147

vector.ph147:                                     ; preds = %.lr.ph
  %n.vec148 = and i64 %wide.trip.count, 4294967292 ; 3 uses
  br label %vector.body149

vector.body149:                                   ; preds = %vector.body149, %vector.ph147
  %index150 = phi i64 [ 0, %vector.ph147 ], [ %index.next153, %vector.body149 ] ; 3 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %index150 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %wide.load151 = load <2 x double>, ptr %i.ae, align 8, !tbaa !16
  %wide.load152 = load <2 x double>, ptr %i.af, align 8, !tbaa !16
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %index150 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store <2 x double> %wide.load151, ptr %i.ag, align 8, !tbaa !16
  store <2 x double> %wide.load152, ptr %i.ah, align 8, !tbaa !16
  %index.next153 = add nuw i64 %index150, 4       ; 2 uses
  %i.ai = icmp eq i64 %index.next153, %n.vec148
  br i1 %i.ai, label %middle.block154, label %vector.body149, !llvm.loop !27

middle.block154:                                  ; preds = %vector.body149
  %cmp.n155 = icmp eq i64 %n.vec148, %wide.trip.count
  br i1 %cmp.n155, label %.preheader76.preheader, label %scalar.ph145.preheader

scalar.ph145.preheader:                           ; preds = %.lr.ph, %middle.block154
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec148, %middle.block154 ] ; 3 uses
  %9 = zext nneg i32 %.06697 to i64
  %10 = sub nsw i64 %9, %indvars.iv.ph
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph145.prol.loopexit, label %scalar.ph145.prol

scalar.ph145.prol:                                ; preds = %scalar.ph145.preheader, %scalar.ph145.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph145.prol ], [ %indvars.iv.ph, %scalar.ph145.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph145.prol ], [ 0, %scalar.ph145.preheader ]
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.prol
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !16
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv.prol
  store double %i.ak, ptr %i.al, align 8, !tbaa !16
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph145.prol.loopexit, label %scalar.ph145.prol, !llvm.loop !28

scalar.ph145.prol.loopexit:                       ; preds = %scalar.ph145.prol, %scalar.ph145.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph145.preheader ], [ %indvars.iv.next.prol, %scalar.ph145.prol ]
  %11 = icmp ult i64 %10, 3
  br i1 %11, label %.preheader76.preheader, label %scalar.ph145

scalar.ph145:                                     ; preds = %scalar.ph145.prol.loopexit, %scalar.ph145
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph145 ], [ %indvars.iv.unr, %scalar.ph145.prol.loopexit ] ; 6 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv
  %i.an = load double, ptr %i.am, align 8, !tbaa !16
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv
  store double %i.an, ptr %i.ao, align 8, !tbaa !16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !16
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv.next
  store double %i.aq, ptr %i.ar, align 8, !tbaa !16
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next.1
  %i.at = load double, ptr %i.as, align 8, !tbaa !16
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv.next.1
  store double %i.at, ptr %i.au, align 8, !tbaa !16
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next.2
  %i.aw = load double, ptr %i.av, align 8, !tbaa !16
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv.next.2
  store double %i.aw, ptr %i.ax, align 8, !tbaa !16
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.preheader76.preheader, label %scalar.ph145, !llvm.loop !29

.preheader76.preheader:                           ; preds = %scalar.ph145.prol.loopexit, %scalar.ph145, %middle.block154, %3
  br label %.preheader76

.preheader76:                                     ; preds = %.preheader76.preheader, %.epilog-lcssa
  %indvars.iv112 = phi i64 [ %indvars.iv.next113, %.epilog-lcssa ], [ 0, %.preheader76.preheader ] ; 3 uses
  %indvars.iv110 = phi i64 [ %indvars.iv.next111, %.epilog-lcssa ], [ 1, %.preheader76.preheader ] ; 3 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv112 ; 6 uses
  %.promoted = load double, ptr %i.ay, align 8, !tbaa !16 ; 2 uses
  %xtraiter160 = and i64 %indvars.iv110, 3        ; 3 uses
  %i.az = icmp samesign ult i64 %indvars.iv112, 3
  br i1 %i.az, label %.epil.preheader, label %.preheader76.new

.preheader76.new:                                 ; preds = %.preheader76
  %unroll_iter = and i64 %indvars.iv110, 9223372036854775804
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader76.new
  %indvars.iv103 = phi i64 [ 0, %.preheader76.new ], [ %indvars.iv.next104.3, %bb.d ] ; 5 uses
  %i.ba = phi double [ %.promoted, %.preheader76.new ], [ %i.bp, %bb.d ]
  %niter = phi i64 [ 0, %.preheader76.new ], [ %niter.next.3, %bb.d ]
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv103
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !16
  %i.bd = fadd double %i.bc, %i.ba                ; 2 uses
  store double %i.bd, ptr %i.ay, align 8, !tbaa !16
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv103
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !16
  %i.bh = fadd double %i.bg, %i.bd                ; 2 uses
  store double %i.bh, ptr %i.ay, align 8, !tbaa !16
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv103
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !16
  %i.bl = fadd double %i.bk, %i.bh                ; 2 uses
  store double %i.bl, ptr %i.ay, align 8, !tbaa !16
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv103
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !16
  %i.bp = fadd double %i.bo, %i.bl                ; 3 uses
  store double %i.bp, ptr %i.ay, align 8, !tbaa !16
  %indvars.iv.next104.3 = add nuw nsw i64 %indvars.iv103, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.unr-lcssa, label %bb.d

.unr-lcssa:                                       ; preds = %bb.d
  %lcmp.mod161.not = icmp eq i64 %xtraiter160, 0
  br i1 %lcmp.mod161.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.preheader76
  %indvars.iv103.epil.init = phi i64 [ 0, %.preheader76 ], [ %indvars.iv.next104.3, %.unr-lcssa ]
  %.epil.init = phi double [ %.promoted, %.preheader76 ], [ %i.bp, %.unr-lcssa ]
  %lcmp.mod162 = icmp ne i64 %xtraiter160, 0
  tail call void @llvm.assume(i1 %lcmp.mod162)
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.epil.preheader
  %indvars.iv103.epil = phi i64 [ %indvars.iv103.epil.init, %.epil.preheader ], [ %indvars.iv.next104.epil, %bb.e ] ; 2 uses
  %i.bq = phi double [ %.epil.init, %.epil.preheader ], [ %i.bt, %bb.e ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.e ]
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv103.epil
  %i.bs = load double, ptr %i.br, align 8, !tbaa !16
  %i.bt = fadd double %i.bs, %i.bq                ; 2 uses
  store double %i.bt, ptr %i.ay, align 8, !tbaa !16
  %indvars.iv.next104.epil = add nuw nsw i64 %indvars.iv103.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter160
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %bb.e, !llvm.loop !30

.epilog-lcssa:                                    ; preds = %bb.e, %.unr-lcssa
  %indvars.iv.next113 = add nuw nsw i64 %indvars.iv112, 1 ; 2 uses
  %indvars.iv.next111 = add nuw nsw i64 %indvars.iv110, 1
  %exitcond118.not = icmp eq i64 %indvars.iv.next113, %wide.trip.count117
  br i1 %exitcond118.not, label %.lr.ph88, label %.preheader76

.lr.ph88:                                         ; preds = %.epilog-lcssa, %._crit_edge
  %indvars.iv124 = phi i64 [ %indvars.iv.next125, %._crit_edge ], [ 0, %.epilog-lcssa ] ; 11 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv124
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !16
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv124
  store double %i.bv, ptr %i.bw, align 8, !tbaa !16
  %.not100 = icmp eq i64 %indvars.iv124, 0
  br i1 %.not100, label %._crit_edge, label %.lr.ph86

.lr.ph86:                                         ; preds = %.lr.ph88
  %i.bx = load ptr, ptr %i.q, align 8, !tbaa !40
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %indvars.iv124
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !41 ; 7 uses
  %min.iters.check = icmp samesign ult i64 %indvars.iv124, 4
  %i.ca = ptrtoaddr ptr %i.bz to i64
  %i.cb = sub i64 %i.x, %i.ca
  %diff.check = icmp ugt i64 %i.cb, -32
  %or.cond159 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond159, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph86
  %n.vec = and i64 %indvars.iv124, 9223372036854775804 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %index ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %wide.load = load <2 x double>, ptr %i.cc, align 8, !tbaa !16
  %wide.load142 = load <2 x double>, ptr %i.cd, align 8, !tbaa !16
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %index ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  store <2 x double> %wide.load, ptr %i.ce, align 8, !tbaa !16
  store <2 x double> %wide.load142, ptr %i.cf, align 8, !tbaa !16
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cg = icmp eq i64 %index.next, %n.vec
  br i1 %i.cg, label %middle.block, label %vector.body, !llvm.loop !31

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %indvars.iv124, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph86, %middle.block
  %indvars.iv119.ph = phi i64 [ 0, %.lr.ph86 ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter163 = and i64 %indvars.iv124, 3        ; 2 uses
  %lcmp.mod164.not = icmp eq i64 %xtraiter163, 0
  br i1 %lcmp.mod164.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv119.prol = phi i64 [ %indvars.iv.next120.prol, %scalar.ph.prol ], [ %indvars.iv119.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter165 = phi i64 [ %prol.iter165.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv119.prol
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !16
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %indvars.iv119.prol
  store double %i.ci, ptr %i.cj, align 8, !tbaa !16
  %indvars.iv.next120.prol = add nuw nsw i64 %indvars.iv119.prol, 1 ; 2 uses
  %prol.iter165.next = add i64 %prol.iter165, 1   ; 2 uses
  %prol.iter165.cmp.not = icmp eq i64 %prol.iter165.next, %xtraiter163
  br i1 %prol.iter165.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !32

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv119.unr = phi i64 [ %indvars.iv119.ph, %scalar.ph.preheader ], [ %indvars.iv.next120.prol, %scalar.ph.prol ]
  %i.ck = sub nsw i64 %indvars.iv119.ph, %indvars.iv124
  %i.cl = icmp ugt i64 %i.ck, -4
  br i1 %i.cl, label %._crit_edge, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv119 = phi i64 [ %indvars.iv.next120.3, %scalar.ph ], [ %indvars.iv119.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv119
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !16
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %indvars.iv119
  store double %i.cn, ptr %i.co, align 8, !tbaa !16
  %indvars.iv.next120 = add nuw nsw i64 %indvars.iv119, 1 ; 2 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv.next120
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !16
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %indvars.iv.next120
  store double %i.cq, ptr %i.cr, align 8, !tbaa !16
  %indvars.iv.next120.1 = add nuw nsw i64 %indvars.iv119, 2 ; 2 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv.next120.1
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !16
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %indvars.iv.next120.1
  store double %i.ct, ptr %i.cu, align 8, !tbaa !16
  %indvars.iv.next120.2 = add nuw nsw i64 %indvars.iv119, 3 ; 2 uses
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv.next120.2
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !16
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %indvars.iv.next120.2
  store double %i.cw, ptr %i.cx, align 8, !tbaa !16
  %indvars.iv.next120.3 = add nuw nsw i64 %indvars.iv119, 4 ; 2 uses
  %exitcond123.not.3 = icmp eq i64 %indvars.iv.next120.3, %indvars.iv124
  br i1 %exitcond123.not.3, label %._crit_edge, label %scalar.ph, !llvm.loop !33

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.lr.ph88
  %indvars.iv.next125 = add nuw nsw i64 %indvars.iv124, 1 ; 2 uses
  %exitcond128.not = icmp eq i64 %indvars.iv.next125, %wide.trip.count127
  br i1 %exitcond128.not, label %.preheader, label %.lr.ph88

.preheader:                                       ; preds = %._crit_edge, %._crit_edge91
  %indvars.iv134 = phi i64 [ %indvars.iv.next135, %._crit_edge91 ], [ 0, %._crit_edge ] ; 7 uses
  %.not101 = icmp eq i64 %indvars.iv134, 0
  br i1 %.not101, label %._crit_edge91, label %.lr.ph90

.lr.ph90:                                         ; preds = %.preheader
  %i.cy = load ptr, ptr %i.o, align 8, !tbaa !12  ; 5 uses
  %i.cz = load ptr, ptr %i.r, align 8, !tbaa !39
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %indvars.iv134 ; 6 uses
  %.promoted93 = load double, ptr %i.da, align 8, !tbaa !16 ; 2 uses
  %xtraiter167 = and i64 %indvars.iv134, 3        ; 3 uses
  %i.db = icmp samesign ult i64 %indvars.iv134, 4
  br i1 %i.db, label %.epil.preheader166, label %.lr.ph90.new

.lr.ph90.new:                                     ; preds = %.lr.ph90
  %unroll_iter173 = and i64 %indvars.iv134, 9223372036854775804
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph90.new
  %indvars.iv129 = phi i64 [ 0, %.lr.ph90.new ], [ %indvars.iv.next130.3, %bb.f ] ; 5 uses
  %i.dc = phi double [ %.promoted93, %.lr.ph90.new ], [ %i.dr, %bb.f ]
  %niter174 = phi i64 [ 0, %.lr.ph90.new ], [ %niter174.next.3, %bb.f ]
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %indvars.iv129
  %i.de = load double, ptr %i.dd, align 8, !tbaa !16
  %i.df = fadd double %i.de, %i.dc                ; 2 uses
  store double %i.df, ptr %i.da, align 8, !tbaa !16
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %indvars.iv129
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.di = load double, ptr %i.dh, align 8, !tbaa !16
  %i.dj = fadd double %i.di, %i.df                ; 2 uses
  store double %i.dj, ptr %i.da, align 8, !tbaa !16
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %indvars.iv129
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %i.dm = load double, ptr %i.dl, align 8, !tbaa !16
  %i.dn = fadd double %i.dm, %i.dj                ; 2 uses
  store double %i.dn, ptr %i.da, align 8, !tbaa !16
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %indvars.iv129
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 24
  %i.dq = load double, ptr %i.dp, align 8, !tbaa !16
  %i.dr = fadd double %i.dq, %i.dn                ; 3 uses
  store double %i.dr, ptr %i.da, align 8, !tbaa !16
  %indvars.iv.next130.3 = add nuw nsw i64 %indvars.iv129, 4 ; 2 uses
  %niter174.next.3 = add i64 %niter174, 4         ; 2 uses
  %niter174.ncmp.3 = icmp eq i64 %niter174.next.3, %unroll_iter173
  br i1 %niter174.ncmp.3, label %._crit_edge91.loopexit.unr-lcssa, label %bb.f

._crit_edge91.loopexit.unr-lcssa:                 ; preds = %bb.f
  %lcmp.mod171.not = icmp eq i64 %xtraiter167, 0
  br i1 %lcmp.mod171.not, label %._crit_edge91.loopexit, label %.epil.preheader166

.epil.preheader166:                               ; preds = %._crit_edge91.loopexit.unr-lcssa, %.lr.ph90
  %indvars.iv129.epil.init = phi i64 [ 0, %.lr.ph90 ], [ %indvars.iv.next130.3, %._crit_edge91.loopexit.unr-lcssa ]
  %.epil.init170 = phi double [ %.promoted93, %.lr.ph90 ], [ %i.dr, %._crit_edge91.loopexit.unr-lcssa ]
  %lcmp.mod172 = icmp ne i64 %xtraiter167, 0
  tail call void @llvm.assume(i1 %lcmp.mod172)
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.epil.preheader166
  %indvars.iv129.epil = phi i64 [ %indvars.iv129.epil.init, %.epil.preheader166 ], [ %indvars.iv.next130.epil, %bb.g ] ; 2 uses
  %i.ds = phi double [ %.epil.init170, %.epil.preheader166 ], [ %i.dv, %bb.g ]
  %epil.iter168 = phi i64 [ 0, %.epil.preheader166 ], [ %epil.iter168.next, %bb.g ]
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %indvars.iv129.epil
  %i.du = load double, ptr %i.dt, align 8, !tbaa !16
  %i.dv = fadd double %i.du, %i.ds                ; 2 uses
  store double %i.dv, ptr %i.da, align 8, !tbaa !16
  %indvars.iv.next130.epil = add nuw nsw i64 %indvars.iv129.epil, 1
  %epil.iter168.next = add i64 %epil.iter168, 1   ; 2 uses
  %epil.iter168.cmp.not = icmp eq i64 %epil.iter168.next, %xtraiter167
  br i1 %epil.iter168.cmp.not, label %._crit_edge91.loopexit, label %bb.g, !llvm.loop !34

._crit_edge91.loopexit:                           ; preds = %bb.g, %._crit_edge91.loopexit.unr-lcssa
  %i.dw = trunc nuw nsw i64 %indvars.iv134 to i32
  %i.dx = add nuw nsw i32 %i.dw, 1
  br label %._crit_edge91

._crit_edge91:                                    ; preds = %._crit_edge91.loopexit, %.preheader
  %.4.lcssa = phi i32 [ 1, %.preheader ], [ %i.dx, %._crit_edge91.loopexit ] ; 2 uses
  %indvars.iv.next135 = add nuw nsw i64 %indvars.iv134, 1 ; 2 uses
  %exitcond138.not = icmp eq i64 %indvars.iv.next135, %wide.trip.count137
  br i1 %exitcond138.not, label %._crit_edge95, label %.preheader

._crit_edge95:                                    ; preds = %._crit_edge91
  store i32 %i.s, ptr %i.c, align 8, !tbaa !43
  store i32 %i.s, ptr %i.e, align 8, !tbaa !43
  store i32 0, ptr %i.t, align 4, !tbaa !44
  store i32 0, ptr %i.u, align 4, !tbaa !44
  %i.dy = icmp slt i32 %.4.lcssa, %i.f
  br i1 %i.dy, label %3, label %._crit_edge99

._crit_edge99:                                    ; preds = %._crit_edge95, %.preheader80
  store ptr %i.c, ptr %1, align 8, !tbaa !20
  store ptr %i.e, ptr %2, align 8, !tbaa !20
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %._crit_edge99, %bb.c
  %.070 = phi i32 [ 0, %._crit_edge99 ], [ -20, %bb.c ], [ -20, %bb.a ]
  ret i32 %.070
}

declare void @ARKodeButcherTable_Write(ptr noundef, ptr noundef) local_unnamed_addr #10

declare void @ARKodeButcherTable_Free(ptr noundef) local_unnamed_addr #10

declare ptr @ARKodeButcherTable_Alloc(i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

attributes #0 = { nounwind memory(readwrite, argmem: read, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nounwind willreturn memory(readwrite, argmem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind memory(readwrite, argmem: read, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { nounwind }
attributes #15 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 double", !8, i64 0}
!10 = !{!"ARKodeSPRKTableMem", !5, i64 0, !5, i64 4, !9, i64 8, !9, i64 16}
!11 = !{!10, !9, i64 16}
!12 = !{!10, !9, i64 8}
!13 = !{!10, !5, i64 4}
!14 = !{!10, !5, i64 0}
!15 = !{!"double", !4, i64 0}
!16 = !{!15, !15, i64 0}
!17 = !{!"llvm.loop.isvectorized", i32 1}
!18 = !{!"llvm.loop.unroll.runtime.disable"}
!19 = !{!"p1 _ZTS21ARKodeButcherTableMem", !8, i64 0}
!20 = !{!19, !19, i64 0}
!21 = distinct !{!21, !17, !18}
!22 = distinct !{!22, !18, !17}
!23 = distinct !{!23, !17, !18}
!24 = distinct !{!24, !17}
!25 = !{!"long", !4, i64 0}
!26 = !{!25, !25, i64 0}
!27 = distinct !{!27, !17, !18}
!28 = distinct !{!28, !42}
!29 = distinct !{!29, !17}
!30 = distinct !{!30, !42}
!31 = distinct !{!31, !17, !18}
!32 = distinct !{!32, !42}
!33 = distinct !{!33, !17}
!34 = distinct !{!34, !42}
!35 = !{!"any p2 pointer", !8, i64 0}
!36 = !{!"p2 double", !35, i64 0}
!37 = !{!"ARKodeButcherTableMem", !5, i64 0, !5, i64 4, !5, i64 8, !36, i64 16, !9, i64 24, !9, i64 32, !9, i64 40}
!38 = !{!37, !9, i64 32}
!39 = !{!37, !9, i64 24}
!40 = !{!37, !36, i64 16}
!41 = !{!9, !9, i64 0}
!42 = !{!"llvm.loop.unroll.disable"}
!43 = !{!37, !5, i64 0}
!44 = !{!37, !5, i64 4}
end_hunk_0
