Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/arkode_arkstep?download=true
inline.NumInlined: 23
loop-unroll.NumRuntimeUnrolled: 26
loop-unroll.NumUnrolled: 26
begin_hunk_0_@arkStep_SetButcherTables:bb.a
  br i1 %.not44, label %bb.e, label %bb.r

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  %i.k = load i32, ptr %i.j, align 4, !tbaa !73
  %.not45 = icmp eq i32 %i.k, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !36
  %i.l = icmp eq i32 %.pre, 0                     ; 2 uses
  br i1 %.not45, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  br i1 %i.l, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.n = load i32, ptr %i.m, align 8, !tbaa !69
  %switch.tableidx = add i32 %i.n, -2             ; 3 uses
  %i.o = icmp ult i32 %switch.tableidx, 4
  br i1 %i.o, label %switch.lookup, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef nonnull %0, i32 noundef 99, i32 noundef 2598, ptr noundef nonnull @__func__.arkStep_SetButcherTables, ptr noundef nonnull @.str, ptr noundef nonnull @.str.64) #13
  br label %bb.m

bb.i:                                             ; preds = %bb.e
  br i1 %i.l, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.q = load i32, ptr %i.p, align 8, !tbaa !69
  %switch.tableidx71 = add i32 %i.q, -1           ; 2 uses
  %i.r = icmp ult i32 %switch.tableidx71, 5
  br i1 %i.r, label %switch.lookup72, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef nonnull %0, i32 noundef 99, i32 noundef 2617, ptr noundef nonnull @__func__.arkStep_SetButcherTables, ptr noundef nonnull @.str, ptr noundef nonnull @.str.65) #13
  br label %.thread56

.thread:                                          ; preds = %bb.f, %bb.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.t = load i32, ptr %i.s, align 8, !tbaa !69
  %switch.tableidx76 = add i32 %i.t, -1           ; 2 uses
  %i.u = icmp ult i32 %switch.tableidx76, 9
  br i1 %i.u, label %switch.lookup77, label %bb.l

bb.l:                                             ; preds = %.thread
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef nonnull %0, i32 noundef 99, i32 noundef 2639, ptr noundef nonnull @__func__.arkStep_SetButcherTables, ptr noundef nonnull @.str, ptr noundef nonnull @.str.66) #13
  br label %.thread60

switch.lookup77:                                  ; preds = %.thread
  %i.v = zext nneg i32 %switch.tableidx76 to i64
  %switch.gep78 = getelementptr inbounds nuw i8, ptr @switch.table.arkStep_SetButcherTables.3, i64 %i.v
  %switch.load79 = load i8, ptr %switch.gep78, align 1
  %switch.ext80 = zext i8 %switch.load79 to i32
  br label %.thread60

.thread60:                                        ; preds = %switch.lookup77, %bb.l
  %.039.ph.ph = phi i32 [ %switch.ext80, %switch.lookup77 ], [ 21, %bb.l ]
  %i.w = tail call ptr @ARKodeButcherTable_LoadERK(i32 noundef %.039.ph.ph) #13 ; 2 uses
  store ptr %i.w, ptr %i.f, align 8, !tbaa !64
  br label %bb.n

switch.lookup:                                    ; preds = %bb.g
  %i.x = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.arkStep_SetButcherTables, i64 %i.x
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  %i.y = zext nneg i32 %switch.tableidx to i64
  %switch.gep68 = getelementptr inbounds nuw i8, ptr @switch.table.arkStep_SetButcherTables.1, i64 %i.y
  %switch.load69 = load i8, ptr %switch.gep68, align 1
  %switch.ext70 = zext i8 %switch.load69 to i32
  br label %bb.m

bb.m:                                             ; preds = %switch.lookup, %bb.h
  %.039.ph = phi i32 [ %switch.ext, %switch.lookup ], [ 14, %bb.h ]
  %.0.ph = phi i32 [ %switch.ext70, %switch.lookup ], [ 113, %bb.h ]
  %i.z = tail call ptr @ARKodeButcherTable_LoadERK(i32 noundef %.039.ph) #13
  store ptr %i.z, ptr %i.f, align 8, !tbaa !64
  br label %.thread56

switch.lookup72:                                  ; preds = %bb.j
  %i.aa = zext nneg i32 %switch.tableidx71 to i64
  %switch.gep73 = getelementptr inbounds nuw i8, ptr @switch.table.arkStep_SetButcherTables.2, i64 %i.aa
  %switch.load74 = load i8, ptr %switch.gep73, align 1
  %switch.ext75 = zext i8 %switch.load74 to i32
  br label %.thread56

.thread56:                                        ; preds = %switch.lookup72, %bb.k, %bb.m
  %.05358 = phi i32 [ %.0.ph, %bb.m ], [ 122, %bb.k ], [ %switch.ext75, %switch.lookup72 ]
  %i.ab = tail call ptr @ARKodeButcherTable_LoadDIRK(i32 noundef %.05358) #13
  store ptr %i.ab, ptr %i.h, align 8, !tbaa !63
  %.pre64 = load ptr, ptr %i.f, align 8, !tbaa !64
  br label %bb.n

bb.n:                                             ; preds = %.thread60, %.thread56
  %i.ac = phi ptr [ %i.w, %.thread60 ], [ %.pre64, %.thread56 ]
  call void @ARKodeButcherTable_Space(ptr noundef %i.ac, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) #13
  %i.ad = load i64, ptr %i.b, align 8, !tbaa !34
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 904 ; 4 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !82
  %i.ag = add nsw i64 %i.af, %i.ad
  store i64 %i.ag, ptr %i.ae, align 8, !tbaa !82
  %i.ah = load i64, ptr %i.a, align 8, !tbaa !34
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 896 ; 4 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !80
  %i.ak = add nsw i64 %i.aj, %i.ah
  store i64 %i.ak, ptr %i.ai, align 8, !tbaa !80
  %i.al = load ptr, ptr %i.h, align 8, !tbaa !63
  call void @ARKodeButcherTable_Space(ptr noundef %i.al, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) #13
  %i.am = load i64, ptr %i.b, align 8, !tbaa !34
  %i.an = load i64, ptr %i.ae, align 8, !tbaa !82
  %i.ao = add nsw i64 %i.an, %i.am
  store i64 %i.ao, ptr %i.ae, align 8, !tbaa !82
  %i.ap = load i64, ptr %i.a, align 8, !tbaa !34
  %i.aq = load i64, ptr %i.ai, align 8, !tbaa !80
  %i.ar = add nsw i64 %i.aq, %i.ap
  store i64 %i.ar, ptr %i.ai, align 8, !tbaa !80
  %i.as = load ptr, ptr %i.f, align 8, !tbaa !64  ; 3 uses
  %.not48 = icmp eq ptr %i.as, null
  br i1 %.not48, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load i32, ptr %i.at, align 8, !tbaa !124
  %i.av = getelementptr inbounds nuw i8, ptr %i.d, i64 108
  store i32 %i.au, ptr %i.av, align 4, !tbaa !74
  %i.aw = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.ax = load <2 x i32>, ptr %i.as, align 8, !tbaa !25
  store <2 x i32> %i.ax, ptr %i.aw, align 8, !tbaa !25
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ay = load ptr, ptr %i.h, align 8, !tbaa !63  ; 3 uses
  %.not49 = icmp eq ptr %i.ay, null
  br i1 %.not49, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !124
  %i.bb = getelementptr inbounds nuw i8, ptr %i.d, i64 108
  store i32 %i.ba, ptr %i.bb, align 4, !tbaa !74
  %i.bc = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.bd = load <2 x i32>, ptr %i.ay, align 8, !tbaa !25
  store <2 x i32> %i.bd, ptr %i.bc, align 8, !tbaa !25
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24   ; 15 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef null, i32 noundef -21, i32 noundef 2699, ptr noundef nonnull @__func__.arkStep_CheckButcherTables, ptr noundef nonnull @.str, ptr noundef nonnull @.str.63) #13
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.e = load i32, ptr %i.d, align 4, !tbaa !73
  %.not.not = icmp eq i32 %i.e, 0                 ; 4 uses
  br i1 %.not.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !64
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef nonnull %0, i32 noundef -44, i32 noundef 2708, ptr noundef nonnull @__func__.arkStep_CheckButcherTables, ptr noundef nonnull @.str, ptr noundef nonnull @.str.67) #13
  br label %.loopexit

bb.f:                                             ; preds = %bb.d, %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.j = load i32, ptr %i.i, align 8, !tbaa !36
  %.not83.not = icmp eq i32 %i.j, 0               ; 4 uses
  br i1 %.not83.not, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !63
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef nonnull %0, i32 noundef -44, i32 noundef 2715, ptr noundef nonnull @__func__.arkStep_CheckButcherTables, ptr noundef nonnull @.str, ptr noundef nonnull @.str.68) #13
  br label %.loopexit

bb.i:                                             ; preds = %bb.g, %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 108
  %i.o = load i32, ptr %i.n, align 4, !tbaa !74   ; 11 uses
  %i.p = icmp slt i32 %i.o, 1
  br i1 %i.p, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef nonnull %0, i32 noundef -44, i32 noundef 2723, ptr noundef nonnull @__func__.arkStep_CheckButcherTables, ptr noundef nonnull @.str, ptr noundef nonnull @.str.69) #13
  br label %.loopexit

bb.k:                                             ; preds = %bb.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.r = load i32, ptr %i.q, align 8, !tbaa !69   ; 2 uses
  %i.s = icmp slt i32 %i.r, 1
  br i1 %i.s, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef nonnull %0, i32 noundef -44, i32 noundef 2731, ptr noundef nonnull @__func__.arkStep_CheckButcherTables, ptr noundef nonnull @.str, ptr noundef nonnull @.str.70) #13
  br label %.loopexit

bb.m:                                             ; preds = %bb.k
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 100
  %i.u = load i32, ptr %i.t, align 4, !tbaa !70
  %i.v = icmp slt i32 %i.u, 1
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 800
  %i.x = load i32, ptr %i.w, align 8, !tbaa !61
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
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !63
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !132
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef nonnull %0, i32 noundef -44, i32 noundef 2751, ptr noundef nonnull @__func__.arkStep_CheckButcherTables, ptr noundef nonnull @.str, ptr noundef nonnull @.str.72) #13
  br label %.loopexit

bb.t:                                             ; preds = %bb.r, %bb.q
  br i1 %.not.not, label %.thread98, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !64
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !132
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.v, label %.preheader104.lr.ph

bb.v:                                             ; preds = %bb.u
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef nonnull %0, i32 noundef -44, i32 noundef 2760, ptr noundef nonnull @__func__.arkStep_CheckButcherTables, ptr noundef nonnull @.str, ptr noundef nonnull @.str.73) #13
  br label %.loopexit

bb.w:                                             ; preds = %bb.n, %bb.p
  br i1 %.not.not, label %.thread98, label %.preheader104.lr.ph

.preheader104.lr.ph:                              ; preds = %bb.u, %bb.w
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !112
  %1 = zext nneg i32 %i.o to i64
  %wide.trip.count = zext nneg i32 %i.o to i64    ; 2 uses
  br label %.preheader104

.preheader104:                                    ; preds = %.preheader104.lr.ph, %.loopexit185
  %indvars.iv = phi i64 [ 0, %.preheader104.lr.ph ], [ %indvars.iv.next, %.loopexit185 ] ; 7 uses
  %.0109 = phi i32 [ 1, %.preheader104.lr.ph ], [ %spec.select.lcssa, %.loopexit185 ] ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !113 ; 2 uses
  %2 = add nuw i64 %indvars.iv, 1
  %3 = tail call i64 @llvm.umax.i64(i64 %2, i64 %wide.trip.count)
  %i.ao = sub i64 %3, %indvars.iv                 ; 3 uses
  %min.iters.check = icmp ult i64 %i.ao, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader104
  %n.vec = and i64 %i.ao, -4                      ; 3 uses
  %i.ap = add i64 %indvars.iv, %n.vec
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i1> [ zeroinitializer, %vector.ph ], [ %i.ax, %vector.body ]
  %vec.phi166 = phi <2 x i1> [ zeroinitializer, %vector.ph ], [ %i.ay, %vector.body ]
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %index ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %wide.load = load <2 x double>, ptr %i.ar, align 8, !tbaa !58
  %wide.load167 = load <2 x double>, ptr %i.as, align 8, !tbaa !58
  %i.at = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %wide.load)
  %i.au = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %wide.load167)
  %i.av = fcmp ogt <2 x double> %i.at, splat (double f0x3D19000000000000)
  %i.aw = fcmp ogt <2 x double> %i.au, splat (double f0x3D19000000000000)
  %i.ax = or <2 x i1> %vec.phi, %i.av             ; 2 uses
  %i.ay = or <2 x i1> %vec.phi166, %i.aw          ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !237

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
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv129
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !58
  %i.bd = tail call double @llvm.fabs.f64(double %i.bc)
  %i.be = fcmp ogt double %i.bd, f0x3D19000000000000
  %spec.select = select i1 %i.be, i32 0, i32 %.1107 ; 2 uses
  %indvars.iv.next130 = add nuw nsw i64 %indvars.iv129, 1 ; 2 uses
  %4 = icmp samesign ult i64 %indvars.iv.next130, %1
  br i1 %4, label %scalar.ph, label %.loopexit185, !llvm.loop !238

.loopexit185:                                     ; preds = %scalar.ph, %middle.block
  %spec.select.lcssa = phi i32 [ %rdx.select, %middle.block ], [ %spec.select, %scalar.ph ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not.a = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not.a, label %._crit_edge, label %.preheader104

._crit_edge:                                      ; preds = %.loopexit185
  %.not89 = icmp eq i32 %spec.select.lcssa, 0
  br i1 %.not89, label %bb.x, label %.thread98

bb.x:                                             ; preds = %._crit_edge
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef %0, i32 noundef -44, i32 noundef 2780, ptr noundef nonnull @__func__.arkStep_CheckButcherTables, ptr noundef nonnull @.str, ptr noundef nonnull @.str.74) #13
  br label %.loopexit

.thread98:                                        ; preds = %bb.t, %._crit_edge, %bb.w
  br i1 %.not83.not, label %bb.ac, label %.lr.ph

.lr.ph:                                           ; preds = %.thread98
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !63
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !112 ; 3 uses
  %wide.trip.count137 = zext nneg i32 %i.o to i64 ; 3 uses
  %xtraiter = and i64 %wide.trip.count137, 1
  %i.bj = icmp eq i32 %i.o, 1
  br i1 %i.bj, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count137, 2147483646
  br label %bb.y

bb.y:                                             ; preds = %bb.y, %.lr.ph.new
  %indvars.iv133 = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next134.1, %bb.y ] ; 4 uses
  %.3111 = phi i32 [ 0, %.lr.ph.new ], [ %spec.select96.1, %bb.y ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.y ]
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %indvars.iv133
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !113
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %indvars.iv133
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !58
  %i.bo = tail call double @llvm.fabs.f64(double %i.bn)
  %i.bp = fcmp ogt double %i.bo, f0x3D19000000000000
  %indvars.iv.next134 = or disjoint i64 %indvars.iv133, 1 ; 2 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %indvars.iv.next134
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !113
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv.next134
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !58
  %i.bu = tail call double @llvm.fabs.f64(double %i.bt)
  %i.bv = fcmp ogt double %i.bu, f0x3D19000000000000
  %i.bw = select i1 %i.bv, i1 true, i1 %i.bp
  %spec.select96.1 = select i1 %i.bw, i32 1, i32 %.3111 ; 3 uses
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
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %indvars.iv133.epil.init
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !113
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %indvars.iv133.epil.init
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !58
  %i.cb = tail call double @llvm.fabs.f64(double %i.ca)
  %i.cc = fcmp ogt double %i.cb, f0x3D19000000000000
  %spec.select96.epil = select i1 %i.cc, i32 1, i32 %.3111.epil.init
  br label %._crit_edge112

._crit_edge112:                                   ; preds = %._crit_edge112.unr-lcssa, %.epil.preheader
  %spec.select96.lcssa = phi i32 [ %spec.select96.1, %._crit_edge112.unr-lcssa ], [ %spec.select96.epil, %.epil.preheader ]
  %.not91 = icmp eq i32 %spec.select96.lcssa, 0
  br i1 %.not91, label %bb.z, label %.lr.ph121

.lr.ph121:                                        ; preds = %._crit_edge112
  %i.cd = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %5 = zext nneg i32 %i.o to i64
  %wide.trip.count150.a = zext nneg i32 %i.o to i64
  %wide.trip.count144 = zext nneg i32 %i.o to i64
  br label %bb.aa

bb.z:                                             ; preds = %._crit_edge112
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef %0, i32 noundef -44, i32 noundef 2796, ptr noundef nonnull @__func__.arkStep_CheckButcherTables, ptr noundef nonnull @.str, ptr noundef nonnull @.str.75) #13
  br label %.loopexit

.loopexit101:                                     ; preds = %scalar.ph168, %middle.block179, %bb.aa
  %.6.lcssa = phi i32 [ %.5120, %bb.aa ], [ %rdx.select181, %middle.block179 ], [ %spec.select97, %scalar.ph168 ] ; 2 uses
  %indvars.iv.next140 = add nuw nsw i64 %indvars.iv139, 1
  %exitcond151.not = icmp eq i64 %indvars.iv.next147, %wide.trip.count150.a
  br i1 %exitcond151.not, label %._crit_edge122, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph121, %.loopexit101
  %indvars.iv146 = phi i64 [ 0, %.lr.ph121 ], [ %indvars.iv.next147, %.loopexit101 ] ; 3 uses
  %indvars.iv139 = phi i64 [ 1, %.lr.ph121 ], [ %indvars.iv.next140, %.loopexit101 ] ; 4 uses
  %.5120 = phi i32 [ 1, %.lr.ph121 ], [ %.6.lcssa, %.loopexit101 ] ; 3 uses
  %i.ce = xor i64 %indvars.iv146, -1
  %i.cf = add nsw i64 %i.ce, %wide.trip.count137  ; 3 uses
  %indvars.iv.next147 = add nuw nsw i64 %indvars.iv146, 1 ; 3 uses
  %i.cg = icmp samesign ult i64 %indvars.iv.next147, %5
  br i1 %i.cg, label %.lr.ph117, label %.loopexit101

.lr.ph117:                                        ; preds = %bb.aa
  %i.ch = load ptr, ptr %i.cd, align 8, !tbaa !63
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !112
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %indvars.iv146
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !113 ; 2 uses
  %min.iters.check169 = icmp ult i64 %i.cf, 4
  br i1 %min.iters.check169, label %scalar.ph168.preheader, label %vector.ph170

vector.ph170:                                     ; preds = %.lr.ph117
  %n.vec171 = and i64 %i.cf, -4                   ; 3 uses
  %i.cm = add i64 %indvars.iv139, %n.vec171
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %indvars.iv139
  br label %vector.body172

vector.body172:                                   ; preds = %vector.body172, %vector.ph170
  %index173 = phi i64 [ 0, %vector.ph170 ], [ %index.next178, %vector.body172 ] ; 2 uses
  %vec.phi174 = phi <2 x i1> [ zeroinitializer, %vector.ph170 ], [ %i.cu, %vector.body172 ]
  %vec.phi175 = phi <2 x i1> [ zeroinitializer, %vector.ph170 ], [ %i.cv, %vector.body172 ]
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %index173 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %wide.load176 = load <2 x double>, ptr %i.co, align 8, !tbaa !58
  %wide.load177 = load <2 x double>, ptr %i.cp, align 8, !tbaa !58
  %i.cq = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %wide.load176)
  %i.cr = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %wide.load177)
  %i.cs = fcmp ogt <2 x double> %i.cq, splat (double f0x3D19000000000000)
  %i.ct = fcmp ogt <2 x double> %i.cr, splat (double f0x3D19000000000000)
  %i.cu = or <2 x i1> %vec.phi174, %i.cs          ; 2 uses
  %i.cv = or <2 x i1> %vec.phi175, %i.ct          ; 2 uses
  %index.next178 = add nuw i64 %index173, 4       ; 2 uses
  %i.cw = icmp eq i64 %index.next178, %n.vec171
  br i1 %i.cw, label %middle.block179, label %vector.body172, !llvm.loop !239

middle.block179:                                  ; preds = %vector.body172
  %bin.rdx180 = or <2 x i1> %i.cv, %i.cu
  %bin.rdx180.fr = freeze <2 x i1> %bin.rdx180
  %i.cx = bitcast <2 x i1> %bin.rdx180.fr to i2
  %.not186 = icmp eq i2 %i.cx, 0
  %rdx.select181 = select i1 %.not186, i32 %.5120, i32 0 ; 2 uses
  %cmp.n182 = icmp eq i64 %i.cf, %n.vec171
  br i1 %cmp.n182, label %.loopexit101, label %scalar.ph168.preheader

scalar.ph168.preheader:                           ; preds = %.lr.ph117, %middle.block179
  %indvars.iv141.ph = phi i64 [ %indvars.iv139, %.lr.ph117 ], [ %i.cm, %middle.block179 ]
  %.6115.ph = phi i32 [ %.5120, %.lr.ph117 ], [ %rdx.select181, %middle.block179 ]
  br label %scalar.ph168

scalar.ph168:                                     ; preds = %scalar.ph168.preheader, %scalar.ph168
  %indvars.iv141 = phi i64 [ %indvars.iv.next142, %scalar.ph168 ], [ %indvars.iv141.ph, %scalar.ph168.preheader ] ; 2 uses
  %.6115 = phi i32 [ %spec.select97, %scalar.ph168 ], [ %.6115.ph, %scalar.ph168.preheader ]
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %indvars.iv141
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !58
  %i.da = tail call double @llvm.fabs.f64(double %i.cz)
  %i.db = fcmp ogt double %i.da, f0x3D19000000000000
  %spec.select97 = select i1 %i.db, i32 0, i32 %.6115 ; 2 uses
  %indvars.iv.next142 = add nuw nsw i64 %indvars.iv141, 1 ; 2 uses
  %exitcond145.not = icmp eq i64 %indvars.iv.next142, %wide.trip.count144
  br i1 %exitcond145.not, label %.loopexit101, label %scalar.ph168, !llvm.loop !240

._crit_edge122:                                   ; preds = %.loopexit101
  %.not92 = icmp eq i32 %.6.lcssa, 0
  br i1 %.not92, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %._crit_edge122
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef %0, i32 noundef -44, i32 noundef 2811, ptr noundef nonnull @__func__.arkStep_CheckButcherTables, ptr noundef nonnull @.str, ptr noundef nonnull @.str.76) #13
  br label %.loopexit

bb.ac:                                            ; preds = %._crit_edge122, %.thread98
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 1044
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !71
  %.not93 = icmp eq i32 %i.dd, 0
  br i1 %.not93, label %.loopexit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.de = icmp eq i32 %i.r, 1
  br i1 %i.de, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef nonnull %0, i32 noundef -44, i32 noundef 2822, ptr noundef nonnull @__func__.arkStep_CheckButcherTables, ptr noundef nonnull @.str, ptr noundef nonnull @.str.77) #13
  br label %.loopexit

bb.af:                                            ; preds = %bb.ad
  br i1 %.not.not, label %.loopexit100, label %.lr.ph125

.lr.ph125:                                        ; preds = %bb.af
  %i.df = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !64
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 32
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !133
  %wide.trip.count156 = zext nneg i32 %i.o to i64
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ah
  %indvars.iv.next153 = add nuw nsw i64 %indvars.iv152, 1 ; 2 uses
  %exitcond157.not = icmp eq i64 %indvars.iv.next153, %wide.trip.count156
  br i1 %exitcond157.not, label %.loopexit100, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph125, %bb.ag
  %indvars.iv152 = phi i64 [ 0, %.lr.ph125 ], [ %indvars.iv.next153, %bb.ag ] ; 2 uses
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %indvars.iv152
  %i.dk = load double, ptr %i.dj, align 8, !tbaa !58
  %i.dl = fcmp olt double %i.dk, 0.000000e+00
  br i1 %i.dl, label %bb.ai, label %bb.ag

bb.ai:                                            ; preds = %bb.ah
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef %0, i32 noundef -44, i32 noundef 2834, ptr noundef nonnull @__func__.arkStep_CheckButcherTables, ptr noundef nonnull @.str, ptr noundef nonnull @.str.78) #13
  br label %.loopexit

.loopexit100:                                     ; preds = %bb.ag, %bb.af
  br i1 %.not83.not, label %.loopexit, label %.lr.ph127

.lr.ph127:                                        ; preds = %.loopexit100
  %i.dm = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !63
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 32
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !133
  %wide.trip.count162 = zext nneg i32 %i.o to i64
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ak
  %indvars.iv.next159 = add nuw nsw i64 %indvars.iv158, 1 ; 2 uses
  %exitcond163.not = icmp eq i64 %indvars.iv.next159, %wide.trip.count162
  br i1 %exitcond163.not, label %.loopexit, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph127, %bb.aj
  %indvars.iv158 = phi i64 [ 0, %.lr.ph127 ], [ %indvars.iv.next159, %bb.aj ] ; 2 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %indvars.iv158
  %i.dr = load double, ptr %i.dq, align 8, !tbaa !58
  %i.ds = fcmp olt double %i.dr, 0.000000e+00
  br i1 %i.ds, label %bb.al, label %bb.aj

bb.al:                                            ; preds = %bb.ak
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef %0, i32 noundef -44, i32 noundef 2848, ptr noundef nonnull @__func__.arkStep_CheckButcherTables, ptr noundef nonnull @.str, ptr noundef nonnull @.str.79) #13
  br label %.loopexit

.loopexit:                                        ; preds = %bb.aj, %bb.ac, %.loopexit100, %bb.al, %bb.ai, %bb.ae, %bb.ab, %bb.z, %bb.x, %bb.v, %bb.s, %bb.o, %bb.l, %bb.j, %bb.h, %bb.e, %bb.b
  %.081 = phi i32 [ -21, %bb.b ], [ -44, %bb.e ], [ -44, %bb.h ], [ -44, %bb.j ], [ -44, %bb.l ], [ -44, %bb.ae ], [ -44, %bb.ai ], [ -44, %bb.al ], [ -44, %bb.o ], [ -44, %bb.ab ], [ -44, %bb.z ], [ -44, %bb.x ], [ -44, %bb.s ], [ -44, %bb.v ], [ 0, %.loopexit100 ], [ 0, %bb.ac ], [ 0, %bb.aj ]
  ret i32 %.081
}

declare i32 @arkAllocVecArray(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define i32 @arkStep_TakeStep_ERK_Adjoint(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca double, align 8                   ; 5 uses
  %i.c = alloca double, align 8                   ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !24   ; 10 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %arkStep_AccessStepMem.exit, label %bb.b

arkStep_AccessStepMem.exit:                       ; preds = %bb.a
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef nonnull %0, i32 noundef -21, i32 noundef 2537, ptr noundef nonnull @__func__.arkStep_TakeStep_ERK_Adjoint, ptr noundef nonnull @.str, ptr noundef nonnull @.str.63) #13
  br label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !95   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 440
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !79   ; 11 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 448
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !81   ; 12 uses
  %i.n = ptrtoaddr ptr %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !114  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !121
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !110  ; 2 uses
  %i.u = tail call ptr @N_VGetSubvector_ManyVector(ptr noundef %i.t, i64 noundef 0) #13
  %i.v = tail call ptr @N_VGetSubvector_ManyVector(ptr noundef %i.p, i64 noundef 0) #13
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !101  ; 10 uses
  %i.y = ptrtoaddr ptr %i.x to i64
  %i.z = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !244
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 848
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !245
  %i.ad = sub nsw i64 %i.aa, %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1120 ; 3 uses
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !136
  %i.af = getelementptr inbounds nuw i8, ptr %i.f, i64 112 ; 4 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !64 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !112
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !113
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !58
  %i.al = tail call double @llvm.fabs.f64(double %i.ak)
  %i.am = fcmp ugt double %i.al, 1.000000e-10
  br i1 %i.am, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
end_hunk_0
begin_hunk_1_@arkStep_RelaxDeltaE:bb.a
._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.g
  %.0102.lcssa = phi i32 [ 1, %bb.g ], [ %i.cd, %._crit_edge.loopexit ]
  %i.ce = tail call i32 @N_VLinearCombination(i32 noundef %.0102.lcssa, ptr noundef nonnull %i.h, ptr noundef nonnull %i.j, ptr noundef %.0100124) #13
  %.not112 = icmp eq i32 %i.ce, 0
  br i1 %.not112, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %._crit_edge, %bb.f
  %.1101 = phi ptr [ %i.ai, %bb.f ], [ %.0100124, %._crit_edge ] ; 8 uses
  %i.cf = load ptr, ptr %i.u, align 8, !tbaa !95
  %i.cg = tail call i32 %1(ptr noundef %.1101, ptr noundef %i.b, ptr noundef %i.cf) #13 ; 2 uses
  %i.ch = load i64, ptr %2, align 8, !tbaa !34
  %i.ci = add nsw i64 %i.ch, 1
  store i64 %i.ci, ptr %2, align 8, !tbaa !34
  %i.cj = icmp slt i32 %i.cg, 0
  br i1 %i.cj, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not113 = icmp eq i32 %i.cg, 0
  br i1 %.not113, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %bb.i
  %i.ck = load i32, ptr %i.v, align 4, !tbaa !73
  %.not114 = icmp eq i32 %i.ck, 0
  br i1 %.not114, label %bb.p, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cl = load i32, ptr %i.n, align 8, !tbaa !36
  %.not115 = icmp eq i32 %i.cl, 0
  br i1 %.not115, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cm = load ptr, ptr %i.r, align 8, !tbaa !64
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 32
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !133
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %indvars.iv134
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !58
  %i.cr = load ptr, ptr %i.s, align 8, !tbaa !101
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %indvars.iv134
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !97
  %i.cu = load ptr, ptr %i.w, align 8, !tbaa !63
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 32
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !133
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %indvars.iv134
  %i.cy = load double, ptr %i.cx, align 8, !tbaa !58
  %i.cz = load ptr, ptr %i.x, align 8, !tbaa !96
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %indvars.iv134
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !97
  tail call void @N_VLinearSum(double noundef %i.cq, ptr noundef %i.ct, double noundef %i.cy, ptr noundef %i.db, ptr noundef %.1101) #13
  br label %bb.s

bb.m:                                             ; preds = %bb.k
  %i.dc = load i32, ptr %i.o, align 8, !tbaa !56
  %i.dd = icmp eq i32 %i.dc, 1
  %i.de = load ptr, ptr %i.s, align 8, !tbaa !101
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %indvars.iv134
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !97 ; 2 uses
  br i1 %i.dd, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.dg, ptr noundef %.1101) #13
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %.099 = phi ptr [ %.1101, %bb.n ], [ %i.dg, %bb.m ]
  %i.dh = load ptr, ptr %i.r, align 8, !tbaa !64
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 32
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !133
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %indvars.iv134
  %i.dl = load double, ptr %i.dk, align 8, !tbaa !58
  br label %bb.s

bb.p:                                             ; preds = %bb.j
  %i.dm = load i32, ptr %i.o, align 8, !tbaa !56
  %i.dn = icmp eq i32 %i.dm, 1
  %i.do = load ptr, ptr %i.x, align 8, !tbaa !96
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %indvars.iv134
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !97 ; 2 uses
  br i1 %i.dn, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.dq, ptr noundef %.1101) #13
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %.1 = phi ptr [ %.1101, %bb.q ], [ %i.dq, %bb.p ]
  %i.dr = load ptr, ptr %i.w, align 8, !tbaa !63
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 32
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !133
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %indvars.iv134
  %i.dv = load double, ptr %i.du, align 8, !tbaa !58
  br label %bb.s

bb.s:                                             ; preds = %bb.o, %bb.r, %bb.l
  %.2 = phi ptr [ %.1101, %bb.l ], [ %.099, %bb.o ], [ %.1, %bb.r ] ; 3 uses
  %.0 = phi double [ 1.000000e+00, %bb.l ], [ %i.dl, %bb.o ], [ %i.dv, %bb.r ]
  %i.dw = load i32, ptr %i.o, align 8, !tbaa !56
  %i.dx = icmp eq i32 %i.dw, 1
  br i1 %i.dx, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.dy = load ptr, ptr %i.y, align 8, !tbaa !54
  %i.dz = load double, ptr %i.z, align 8, !tbaa !99
  %i.ea = tail call i32 %i.dy(ptr noundef nonnull %0, ptr noundef %.2, double noundef %i.dz) #13
  %.not117 = icmp eq i32 %i.ea, 0
  br i1 %.not117, label %bb.u, label %.loopexit

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.eb = load ptr, ptr %i.aa, align 8, !tbaa !127 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 320
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !487
  %.not118 = icmp eq ptr %i.ed, null
  br i1 %.not118, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ee = getelementptr inbounds nuw i8, ptr %i.eb, i64 400
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !488
  %.not119 = icmp eq ptr %i.ef, null
  br i1 %.not119, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.eg = tail call double @N_VDotProdLocal(ptr noundef nonnull %i.b, ptr noundef %.2) #13
  br label %bb.y

bb.x:                                             ; preds = %bb.v, %bb.u
  %i.eh = tail call double @N_VDotProd(ptr noundef nonnull %i.b, ptr noundef %.2) #13
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x
  %.sink = phi double [ %i.eg, %bb.w ], [ %i.eh, %bb.x ]
  %i.ei = load double, ptr %3, align 8, !tbaa !58
  %i.ej = tail call double @llvm.fmuladd.f64(double %.0, double %.sink, double %i.ei) ; 2 uses
  store double %i.ej, ptr %3, align 8, !tbaa !58
  %indvars.iv.next135 = add nuw nsw i64 %indvars.iv134, 1 ; 2 uses
  %i.ek = load i32, ptr %i.k, align 4, !tbaa !74
  %i.el = sext i32 %i.ek to i64
  %i.em = icmp slt i64 %indvars.iv.next135, %i.el
  br i1 %i.em, label %bb.d, label %._crit_edge127

._crit_edge127:                                   ; preds = %bb.y, %bb.c
  %i.en = phi double [ 0.000000e+00, %bb.c ], [ %i.ej, %bb.y ] ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !127 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 320
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !487
  %.not108 = icmp eq ptr %i.er, null
  br i1 %.not108, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %._crit_edge127
  %i.es = getelementptr inbounds nuw i8, ptr %i.ep, i64 400
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !488
  %.not109 = icmp eq ptr %i.et, null
  br i1 %.not109, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.eu = tail call i32 @N_VDotProdMultiAllReduce(i32 noundef 1, ptr noundef nonnull %i.b, ptr noundef nonnull %3) #13
  %.not110 = icmp eq i32 %i.eu, 0
  br i1 %.not110, label %._crit_edge137, label %.loopexit

._crit_edge137:                                   ; preds = %bb.aa
  %.pre = load double, ptr %3, align 8, !tbaa !58
  br label %bb.ab

bb.ab:                                            ; preds = %._crit_edge137, %bb.z, %._crit_edge127
  %i.ev = phi double [ %.pre, %._crit_edge137 ], [ %i.en, %bb.z ], [ %i.en, %._crit_edge127 ]
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 736
  %i.ex = load double, ptr %i.ew, align 8, !tbaa !100
  %i.ey = fmul double %i.ex, %i.ev
  store double %i.ey, ptr %3, align 8, !tbaa !58
  br label %.loopexit

.loopexit:                                        ; preds = %bb.t, %bb.i, %bb.h, %._crit_edge, %bb.aa, %bb.ab, %bb.b
  %.0105 = phi i32 [ -21, %bb.b ], [ -28, %bb.aa ], [ 0, %bb.ab ], [ -16, %bb.t ], [ 2, %bb.i ], [ -49, %bb.h ], [ -28, %._crit_edge ]
  ret i32 %.0105
}

declare double @N_VDotProdLocal(ptr noundef, ptr noundef) local_unnamed_addr #2

declare double @N_VDotProd(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @N_VDotProdMultiAllReduce(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define i32 @arkStep_GetOrder(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.d = load i32, ptr %i.c, align 8, !tbaa !69
  ret i32 %i.d
}

declare i32 @SUNStepper_GetContent(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fabs.v2f64(<2 x double>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smax.v2i32(<2 x i32>, <2 x i32>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smax.v2i32(<2 x i32>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { nounwind }
attributes #14 = { nounwind allocsize(0,1) }

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
!9 = !{!"p1 _ZTS12ARKodeMemRec", !8, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!"p1 _ZTS11SUNContext_", !8, i64 0}
!12 = !{!"double", !4, i64 0}
!13 = !{!"p1 _ZTS17_generic_N_Vector", !8, i64 0}
!14 = !{!"p1 _ZTS18_generic_ARKInterp", !8, i64 0}
!15 = !{!"p1 _ZTS18ARKodeHAdaptMemRec", !8, i64 0}
!16 = !{!"long", !4, i64 0}
!17 = !{!"p1 _ZTS16ARKodeRootMemRec", !8, i64 0}
!18 = !{!"p1 _ZTS17ARKodeRelaxMemRec", !8, i64 0}
!19 = !{!"p1 _ZTS27SUNAdjointCheckpointScheme_", !8, i64 0}
!20 = !{!"ARKodeMemRec", !11, i64 0, !8, i64 8, !12, i64 16, !8, i64 24, !5, i64 32, !5, i64 36, !12, i64 40, !12, i64 48, !13, i64 56, !5, i64 64, !12, i64 72, !13, i64 80, !5, i64 88, !5, i64 92, !8, i64 96, !8, i64 104, !5, i64 112, !8, i64 120, !8, i64 128, !8, i64 136, !8, i64 144, !8, i64 152, !8, i64 160, !8, i64 168, !8, i64 176, !8, i64 184, !8, i64 192, !8, i64 200, !8, i64 208, !8, i64 216, !8, i64 224, !8, i64 232, !8, i64 240, !8, i64 248, !8, i64 256, !8, i64 264, !8, i64 272, !5, i64 280, !8, i64 288, !8, i64 296, !8, i64 304, !5, i64 312, !8, i64 320, !5, i64 328, !8, i64 336, !8, i64 344, !8, i64 352, !8, i64 360, !8, i64 368, !8, i64 376, !8, i64 384, !8, i64 392, !8, i64 400, !8, i64 408, !8, i64 416, !8, i64 424, !8, i64 432, !8, i64 440, !8, i64 448, !8, i64 456, !8, i64 464, !8, i64 472, !8, i64 480, !8, i64 488, !8, i64 496, !8, i64 504, !8, i64 512, !8, i64 520, !8, i64 528, !8, i64 536, !5, i64 544, !8, i64 552, !8, i64 560, !8, i64 568, !8, i64 576, !8, i64 584, !13, i64 592, !13, i64 600, !5, i64 608, !13, i64 616, !5, i64 624, !13, i64 632, !13, i64 640, !5, i64 648, !13, i64 656, !13, i64 664, !13, i64 672, !13, i64 680, !13, i64 688, !14, i64 696, !5, i64 704, !5, i64 708, !5, i64 712, !5, i64 716, !12, i64 720, !12, i64 728, !12, i64 736, !12, i64 744, !12, i64 752, !12, i64 760, !12, i64 768, !12, i64 776, !12, i64 784, !12, i64 792, !5, i64 800, !15, i64 808, !16, i64 816, !5, i64 824, !5, i64 828, !5, i64 832, !16, i64 840, !16, i64 848, !5, i64 856, !16, i64 864, !16, i64 872, !16, i64 880, !16, i64 888, !16, i64 896, !16, i64 904, !12, i64 912, !12, i64 920, !12, i64 928, !12, i64 936, !12, i64 944, !5, i64 952, !12, i64 960, !12, i64 968, !5, i64 976, !5, i64 980, !5, i64 984, !5, i64 988, !5, i64 992, !5, i64 996, !5, i64 1000, !5, i64 1004, !5, i64 1008, !17, i64 1016, !13, i64 1024, !16, i64 1032, !5, i64 1040, !5, i64 1044, !18, i64 1048, !8, i64 1056, !8, i64 1064, !8, i64 1072, !8, i64 1080, !8, i64 1088, !5, i64 1096, !5, i64 1100, !5, i64 1104, !16, i64 1112, !16, i64 1120, !19, i64 1128, !16, i64 1136, !5, i64 1144, !5, i64 1148}
!21 = !{!20, !8, i64 576}
!22 = !{!20, !8, i64 152}
!23 = !{!20, !8, i64 160}
!24 = !{!20, !8, i64 136}
!25 = !{!5, !5, i64 0}
!26 = !{!"any p2 pointer", !8, i64 0}
!27 = !{!"p2 _ZTS17_generic_N_Vector", !26, i64 0}
!28 = !{!"p1 _ZTS21ARKodeButcherTableMem", !8, i64 0}
!29 = !{!"p1 _ZTS27_generic_SUNNonlinearSolver", !8, i64 0}
!30 = !{!"p1 double", !8, i64 0}
!31 = !{!"ARKodeARKStepMemRec", !8, i64 0, !8, i64 8, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !8, i64 40, !27, i64 48, !27, i64 56, !27, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !5, i64 96, !5, i64 100, !5, i64 104, !5, i64 108, !28, i64 112, !28, i64 120, !8, i64 128, !29, i64 136, !5, i64 144, !8, i64 152, !12, i64 160, !12, i64 168, !12, i64 176, !12, i64 184, !5, i64 192, !12, i64 200, !12, i64 208, !12, i64 216, !12, i64 224, !12, i64 232, !12, i64 240, !12, i64 248, !5, i64 256, !16, i64 264, !5, i64 272, !5, i64 276, !5, i64 280, !13, i64 288, !8, i64 296, !8, i64 304, !8, i64 312, !8, i64 320, !8, i64 328, !5, i64 336, !8, i64 344, !8, i64 352, !8, i64 360, !8, i64 368, !8, i64 376, !8, i64 384, !5, i64 392, !5, i64 396, !16, i64 400, !16, i64 408, !16, i64 416, !16, i64 424, !16, i64 432, !30, i64 440, !27, i64 448, !5, i64 456, !5, i64 460, !5, i64 464, !12, i64 472, !12, i64 480, !27, i64 488, !5, i64 496, !30, i64 504, !30, i64 512}
!32 = !{!31, !8, i64 0}
!33 = !{!31, !8, i64 8}
!34 = !{!16, !16, i64 0}
!35 = !{!31, !5, i64 144}
!36 = !{!31, !5, i64 32}
!37 = !{!20, !11, i64 0}
!38 = !{!31, !5, i64 336}
!39 = !{!31, !5, i64 396}
!40 = !{!31, !12, i64 240}
!41 = !{!31, !16, i64 264}
!42 = !{!31, !27, i64 488}
!43 = !{!31, !5, i64 496}
!44 = !{!31, !13, i64 288}
!45 = !{!31, !8, i64 320}
!46 = !{!31, !8, i64 296}
!47 = !{!31, !8, i64 304}
!48 = !{!31, !8, i64 328}
!49 = !{!31, !16, i64 416}
!50 = !{!31, !8, i64 376}
!51 = !{!31, !8, i64 344}
!52 = !{!31, !8, i64 352}
!53 = !{!31, !8, i64 360}
!54 = !{!31, !8, i64 368}
!55 = !{!31, !8, i64 384}
!56 = !{!31, !5, i64 392}
!57 = !{!31, !12, i64 160}
!58 = !{!12, !12, i64 0}
!59 = !{!31, !12, i64 176}
!60 = !{!31, !12, i64 184}
!61 = !{!20, !5, i64 800}
!62 = !{!20, !5, i64 952}
!63 = !{!31, !28, i64 120}
!64 = !{!31, !28, i64 112}
!65 = !{!"p2 double", !26, i64 0}
!66 = !{!"ARKodeButcherTableMem", !5, i64 0, !5, i64 4, !5, i64 8, !65, i64 16, !30, i64 24, !30, i64 32, !30, i64 40}
!67 = !{!66, !5, i64 0}
!68 = !{!66, !5, i64 4}
!69 = !{!31, !5, i64 96}
!70 = !{!31, !5, i64 100}
!71 = !{!20, !5, i64 1044}
!72 = !{!31, !5, i64 36}
!73 = !{!31, !5, i64 28}
!74 = !{!31, !5, i64 108}
!75 = !{!20, !13, i64 592}
!76 = !{!20, !16, i64 880}
!77 = !{!20, !16, i64 888}
!78 = !{!31, !5, i64 456}
!79 = !{!31, !30, i64 440}
!80 = !{!20, !16, i64 896}
!81 = !{!31, !27, i64 448}
!82 = !{!20, !16, i64 904}
!83 = !{!31, !30, i64 504}
!84 = !{!31, !30, i64 512}
!85 = !{!20, !5, i64 704}
!86 = !{!31, !5, i64 192}
!87 = !{!20, !5, i64 1104}
!88 = !{!20, !12, i64 784}
!89 = !{!20, !13, i64 656}
!90 = !{!20, !13, i64 664}
!91 = !{!20, !13, i64 672}
!92 = !{!31, !29, i64 136}
!93 = !{!20, !5, i64 648}
!94 = !{!20, !8, i64 1072}
!95 = !{!20, !8, i64 24}
!96 = !{!31, !27, i64 56}
!97 = !{!13, !13, i64 0}
!98 = !{!31, !16, i64 408}
!99 = !{!31, !12, i64 248}
!100 = !{!20, !12, i64 736}
!101 = !{!31, !27, i64 48}
!102 = !{!31, !16, i64 400}
!103 = !{!31, !5, i64 460}
!104 = !{!31, !5, i64 464}
!105 = !{!31, !12, i64 472}
!106 = !{!31, !12, i64 480}
!107 = !{!"llvm.loop.isvectorized", i32 1}
!108 = !{!"llvm.loop.unroll.runtime.disable"}
!109 = !{!"llvm.loop.unroll.disable"}
!110 = !{!31, !13, i64 72}
!111 = !{!31, !5, i64 104}
!112 = !{!66, !65, i64 16}
!113 = !{!30, !30, i64 0}
!114 = !{!20, !13, i64 632}
!115 = !{!31, !27, i64 64}
!116 = !{!20, !19, i64 1128}
!117 = !{!20, !12, i64 920}
!118 = !{!20, !5, i64 988}
!119 = !{!66, !30, i64 24}
!120 = !{!31, !13, i64 80}
!121 = !{!20, !13, i64 616}
!122 = !{!20, !8, i64 1080}
!123 = !{!31, !13, i64 88}
!124 = !{!66, !5, i64 8}
!125 = !{!"p1 _ZTS21_generic_N_Vector_Ops", !8, i64 0}
!126 = !{!"_generic_N_Vector", !8, i64 0, !125, i64 8, !11, i64 16}
!127 = !{!126, !125, i64 8}
!128 = !{!"_generic_N_Vector_Ops", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !8, i64 80, !8, i64 88, !8, i64 96, !8, i64 104, !8, i64 112, !8, i64 120, !8, i64 128, !8, i64 136, !8, i64 144, !8, i64 152, !8, i64 160, !8, i64 168, !8, i64 176, !8, i64 184, !8, i64 192, !8, i64 200, !8, i64 208, !8, i64 216, !8, i64 224, !8, i64 232, !8, i64 240, !8, i64 248, !8, i64 256, !8, i64 264, !8, i64 272, !8, i64 280, !8, i64 288, !8, i64 296, !8, i64 304, !8, i64 312, !8, i64 320, !8, i64 328, !8, i64 336, !8, i64 344, !8, i64 352, !8, i64 360, !8, i64 368, !8, i64 376, !8, i64 384, !8, i64 392, !8, i64 400, !8, i64 408, !8, i64 416, !8, i64 424, !8, i64 432, !8, i64 440}
!129 = !{!31, !12, i64 168}
!130 = !{!"p1 _ZTS19ARKodeARKStepMemRec", !8, i64 0}
!131 = !{!130, !130, i64 0}
!132 = !{!66, !30, i64 40}
!133 = !{!66, !30, i64 32}
!134 = !{!"p1 _ZTS11SUNStepper_", !8, i64 0}
!135 = !{!"SUNAdjointStepper_", !16, i64 0, !16, i64 8, !134, i64 16, !134, i64 24, !5, i64 32, !5, i64 36, !19, i64 40, !8, i64 48, !8, i64 56, !11, i64 64, !12, i64 72}
!136 = !{!20, !16, i64 1120}
!137 = !{!20, !16, i64 1112}
!138 = !{!20, !5, i64 1100}
!139 = !{!28, !28, i64 0}
!140 = !{!"p1 _ZTS15SUNStepper_Ops_", !8, i64 0}
!141 = !{!"SUNStepper_", !8, i64 0, !8, i64 8, !140, i64 16, !11, i64 24, !5, i64 32}
!142 = !{!31, !8, i64 40}
!143 = !{!20, !13, i64 1024}
!144 = !{!20, !8, i64 336}
!145 = !{!20, !8, i64 552}
!146 = !{!20, !8, i64 344}
!147 = !{!20, !8, i64 560}
!148 = !{!20, !8, i64 352}
!149 = !{!20, !8, i64 568}
!150 = !{!20, !8, i64 360}
!151 = !{!20, !8, i64 368}
!152 = !{!20, !8, i64 144}
!153 = !{!20, !8, i64 168}
!154 = !{!20, !8, i64 176}
!155 = !{!20, !8, i64 184}
!156 = !{!20, !8, i64 256}
!157 = !{!20, !8, i64 192}
!158 = !{!20, !8, i64 208}
!159 = !{!20, !8, i64 216}
!160 = !{!20, !8, i64 224}
!161 = !{!20, !8, i64 376}
!162 = !{!20, !8, i64 264}
!163 = !{!20, !8, i64 320}
!164 = !{!20, !8, i64 232}
!165 = !{!20, !8, i64 384}
!166 = !{!20, !8, i64 392}
!167 = !{!20, !8, i64 408}
!168 = !{!20, !8, i64 400}
end_hunk_1
