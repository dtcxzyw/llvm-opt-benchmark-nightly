Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/bit_util?download=true
inline.NumInlined: 109
inline.NumDeleted: 6
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_Z4copySt4spanIKjLm18446744073709551615EES_IjLm18446744073709551615EE:bb.a
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader55 ]
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.01628.prol
  %i.j = load i32, ptr %i.i, align 4, !tbaa !8
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.01628.prol
  store i32 %i.j, ptr %i.k, align 4, !tbaa !8
  %i.l = add nuw i64 %.01628.prol, 1              ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !15

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader55
  %.01628.unr = phi i64 [ %.01628.ph, %.lr.ph.preheader55 ], [ %i.l, %.lr.ph.prol ]
  %i.m = sub i64 %.01628.ph, %1
  %i.n = icmp ugt i64 %i.m, -4
  br i1 %i.n, label %.preheader25, label %.lr.ph

.preheader:                                       ; preds = %bb.a
  %.not34 = icmp eq i64 %3, 0
  br i1 %.not34, label %.loopexit, label %.lr.ph32.preheader

.lr.ph32.preheader:                               ; preds = %.preheader
  %min.iters.check42 = icmp ult i64 %3, 16
  br i1 %min.iters.check42, label %.lr.ph32.preheader54, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph32.preheader
  %i.o = add i64 %3, -1                           ; 2 uses
  %i.p = and i64 %i.o, 4294967295
  %i.q = icmp eq i64 %i.p, 4294967295
  %i.r = icmp ugt i64 %i.o, 4294967295
  %i.s = or i1 %i.q, %i.r
  %i.t = sub i64 %i.a, %i.b
  %diff.check40 = icmp ugt i64 %i.t, -32
  %or.cond53 = select i1 %i.s, i1 true, i1 %diff.check40
  br i1 %or.cond53, label %.lr.ph32.preheader54, label %vector.ph43

vector.ph43:                                      ; preds = %vector.scevcheck
  %n.vec44 = and i64 %3, 8589934584               ; 3 uses
  br label %vector.body45

vector.body45:                                    ; preds = %vector.body45, %vector.ph43
  %index46 = phi i64 [ 0, %vector.ph43 ], [ %index.next49, %vector.body45 ] ; 3 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index46 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %wide.load47 = load <4 x i32>, ptr %i.u, align 4, !tbaa !8
  %wide.load48 = load <4 x i32>, ptr %i.v, align 4, !tbaa !8
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index46 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store <4 x i32> %wide.load47, ptr %i.w, align 4, !tbaa !8
  store <4 x i32> %wide.load48, ptr %i.x, align 4, !tbaa !8
  %index.next49 = add nuw i64 %index46, 8         ; 2 uses
  %i.y = icmp eq i64 %index.next49, %n.vec44
  br i1 %i.y, label %middle.block50, label %vector.body45, !llvm.loop !17

middle.block50:                                   ; preds = %vector.body45
  %cmp.n51 = icmp eq i64 %3, %n.vec44
  br i1 %cmp.n51, label %.loopexit, label %.lr.ph32.preheader54

.lr.ph32.preheader54:                             ; preds = %vector.scevcheck, %.lr.ph32.preheader, %middle.block50
  %indvars.iv.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.lr.ph32.preheader ], [ %n.vec44, %middle.block50 ]
  br label %.lr.ph32

.preheader25:                                     ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %.preheader27
  %i.z = icmp ult i64 %1, %3
  br i1 %i.z, label %.lr.ph30.preheader, label %.loopexit

.lr.ph30.preheader:                               ; preds = %.preheader25
  %i.aa = shl i64 %1, 2
  %scevgep = getelementptr i8, ptr %2, i64 %i.aa
  %i.ab = sub nuw i64 %3, %1
  %i.ac = shl i64 %i.ab, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep, i8 0, i64 %i.ac, i1 false), !tbaa !8
  br label %.loopexit

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.01628 = phi i64 [ %i.as, %.lr.ph ], [ %.01628.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.01628
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !8
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.01628
  store i32 %i.ae, ptr %i.af, align 4, !tbaa !8
  %i.ag = add nuw i64 %.01628, 1                  ; 2 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !8
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ag
  store i32 %i.ai, ptr %i.aj, align 4, !tbaa !8
  %i.ak = add nuw i64 %.01628, 2                  ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4, !tbaa !8
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ak
  store i32 %i.am, ptr %i.an, align 4, !tbaa !8
  %i.ao = add nuw i64 %.01628, 3                  ; 2 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ao
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !8
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ao
  store i32 %i.aq, ptr %i.ar, align 4, !tbaa !8
  %i.as = add nuw i64 %.01628, 4                  ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.as, %1
  br i1 %exitcond.not.3, label %.preheader25, label %.lr.ph, !llvm.loop !18

.lr.ph32:                                         ; preds = %.lr.ph32.preheader54, %.lr.ph32
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph32 ], [ %indvars.iv.ph, %.lr.ph32.preheader54 ] ; 3 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.au = load i32, ptr %i.at, align 4, !tbaa !8
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  store i32 %i.au, ptr %i.av, align 4, !tbaa !8
  %indvars.iv.next = add i64 %indvars.iv, 1       ; 2 uses
  %i.aw = and i64 %indvars.iv.next, 4294967295
  %i.ax = icmp ugt i64 %3, %i.aw
  br i1 %i.ax, label %.lr.ph32, label %.loopexit, !llvm.loop !19

.loopexit:                                        ; preds = %.lr.ph32, %middle.block50, %.lr.ph30.preheader, %.preheader25, %.preheader
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_Z7is_zeroSt4spanIKjLm18446744073709551615EE(ptr nofree readonly captures(none) %0, i64 %1) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.b = phi i64 [ %i.f, %.lr.ph ], [ 0, %bb.a ]
  %.047 = phi i32 [ %i.e, %.lr.ph ], [ 0, %bb.a ]
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.b
  %i.d = load i32, ptr %i.c, align 4, !tbaa !8
  %.not = icmp eq i32 %i.d, 0                     ; 2 uses
  %i.e = add i32 %.047, 1                         ; 2 uses
  %i.f = zext i32 %i.e to i64                     ; 2 uses
  %.not10 = icmp ugt i64 %1, %i.f
  %or.cond = select i1 %.not, i1 %.not10, i1 false
  br i1 %or.cond, label %.lr.ph, label %._crit_edge, !llvm.loop !20

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.lcssa = phi i1 [ true, %bb.a ], [ %.not, %.lr.ph ]
  ret i1 %.lcssa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: write) uwtable
define hidden void @_Z5resetSt4spanIjLm18446744073709551615EE(ptr nofree writeonly captures(none) %0, i64 %1) local_unnamed_addr #4 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i64 %1, 16
  br i1 %min.iters.check, label %.lr.ph.preheader6, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.preheader
  %i.a = add i64 %1, -1                           ; 2 uses
  %i.b = and i64 %i.a, 4294967295
  %i.c = icmp eq i64 %i.b, 4294967295
  %i.d = icmp ugt i64 %i.a, 4294967295
  %i.e = or i1 %i.c, %i.d
  br i1 %i.e, label %.lr.ph.preheader6, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i64 %1, 8589934584                 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store <4 x i32> zeroinitializer, ptr %i.f, align 4, !tbaa !8
  store <4 x i32> zeroinitializer, ptr %i.g, align 4, !tbaa !8
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.h = icmp eq i64 %index.next, %n.vec
  br i1 %i.h, label %middle.block, label %vector.body, !llvm.loop !21

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %1, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader6

.lr.ph.preheader6:                                ; preds = %vector.scevcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader6, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader6 ] ; 2 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  store i32 0, ptr %i.i, align 4, !tbaa !8
  %indvars.iv.next = add i64 %indvars.iv, 1       ; 2 uses
  %i.j = and i64 %indvars.iv.next, 4294967295
  %i.k = icmp ugt i64 %1, %i.j
  br i1 %i.k, label %.lr.ph, label %._crit_edge, !llvm.loop !22
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_Z3shlSt4spanIKjLm18446744073709551615EEjS_IjLm18446744073709551615EE(ptr nofree readonly captures(none) %0, i64 %1, i32 noundef %2, ptr nofree captures(none) %3, i64 %4) local_unnamed_addr #3 {
bb.a:
  %i.a = ptrtoaddr ptr %3 to i64                  ; 3 uses
  %i.b = ptrtoaddr ptr %0 to i64                  ; 3 uses
  %i.c = lshr i32 %2, 5                           ; 6 uses
  %i.d = and i32 %2, 31                           ; 10 uses
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = zext nneg i32 %i.c to i64                ; 9 uses
  %i.f = add i64 %1, %i.e                         ; 6 uses
  %i.g = icmp ugt i64 %i.f, %4
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = sub nuw i64 %i.f, %4
  %.092 = tail call i64 @llvm.usub.sat.i64(i64 %1, i64 %i.h)
  br label %.loopexit133

bb.d:                                             ; preds = %bb.b
  %i.i = icmp ult i64 %i.f, %4
  br i1 %i.i, label %.preheader132.preheader, label %.loopexit133

.preheader132.preheader:                          ; preds = %bb.d
  %i.j = shl i64 %i.f, 2
  %scevgep = getelementptr i8, ptr %3, i64 %i.j
  %5 = add i64 %1, %i.e
  %i.k = sub i64 %4, %5
  %i.l = shl nuw i64 %i.k, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep, i8 0, i64 %i.l, i1 false), !tbaa !8
  br label %.loopexit133

.loopexit133:                                     ; preds = %.preheader132.preheader, %bb.d, %bb.c
  %.193 = phi i64 [ %.092, %bb.c ], [ %1, %bb.d ], [ %1, %.preheader132.preheader ] ; 9 uses
  %.090 = phi i64 [ %4, %bb.c ], [ %i.f, %bb.d ], [ %i.f, %.preheader132.preheader ] ; 6 uses
  %.not108135 = icmp eq i64 %.193, 0
  br i1 %.not108135, label %.preheader131, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.loopexit133
  %min.iters.check = icmp ult i64 %.193, 16
  br i1 %min.iters.check, label %.lr.ph.preheader236, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.m = shl i64 %.193, 2
  %i.n = add i64 %i.m, %i.b
  %i.o = shl i64 %.090, 2
  %i.p = add i64 %i.o, %i.a
  %i.q = sub i64 %i.p, %i.n
  %diff.check = icmp ugt i64 %i.q, -32
  br i1 %diff.check, label %.lr.ph.preheader236, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %.193, -8                      ; 3 uses
  %i.r = sub i64 %.090, %n.vec                    ; 2 uses
  %i.s = and i64 %.193, 7
  %i.t = getelementptr [4 x i8], ptr %0, i64 %.193
  %i.u = getelementptr [4 x i8], ptr %3, i64 %.090
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.v = xor i64 %index, -1
  %i.w = xor i64 %index, -1
  %i.x = getelementptr [4 x i8], ptr %i.t, i64 %i.v ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 -12
  %i.z = getelementptr inbounds i8, ptr %i.x, i64 -28
  %wide.load = load <4 x i32>, ptr %i.y, align 4, !tbaa !8
  %wide.load178 = load <4 x i32>, ptr %i.z, align 4, !tbaa !8
  %i.aa = getelementptr [4 x i8], ptr %i.u, i64 %i.w ; 2 uses
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 -12
  %i.ac = getelementptr inbounds i8, ptr %i.aa, i64 -28
  store <4 x i32> %wide.load, ptr %i.ab, align 4, !tbaa !8
  store <4 x i32> %wide.load178, ptr %i.ac, align 4, !tbaa !8
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !23

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.193, %n.vec
  br i1 %cmp.n, label %.preheader131, label %.lr.ph.preheader236

.lr.ph.preheader236:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.191137.ph = phi i64 [ %.090, %vector.memcheck ], [ %.090, %.lr.ph.preheader ], [ %i.r, %middle.block ] ; 2 uses
  %.294136.ph = phi i64 [ %.193, %vector.memcheck ], [ %.193, %.lr.ph.preheader ], [ %i.s, %middle.block ] ; 4 uses
  %i.ae = add i64 %.294136.ph, -1
  %xtraiter = and i64 %.294136.ph, 3              ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader236, %.lr.ph.prol
  %.191137.prol = phi i64 [ %i.ag, %.lr.ph.prol ], [ %.191137.ph, %.lr.ph.preheader236 ]
  %.294136.prol = phi i64 [ %i.af, %.lr.ph.prol ], [ %.294136.ph, %.lr.ph.preheader236 ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader236 ]
  %i.af = add i64 %.294136.prol, -1               ; 3 uses
  %i.ag = add i64 %.191137.prol, -1               ; 4 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.af
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !8
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ag
  store i32 %i.ai, ptr %i.aj, align 4, !tbaa !8
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !24

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader236
  %.lcssa237.unr = phi i64 [ poison, %.lr.ph.preheader236 ], [ %i.ag, %.lr.ph.prol ]
  %.191137.unr = phi i64 [ %.191137.ph, %.lr.ph.preheader236 ], [ %i.ag, %.lr.ph.prol ]
  %.294136.unr = phi i64 [ %.294136.ph, %.lr.ph.preheader236 ], [ %i.af, %.lr.ph.prol ]
  %i.ak = icmp ult i64 %i.ae, 3
  br i1 %i.ak, label %.preheader131, label %.lr.ph

.preheader131:                                    ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %.loopexit133
  %.191.lcssa = phi i64 [ %.090, %.loopexit133 ], [ %i.r, %middle.block ], [ %.lcssa237.unr, %.lr.ph.prol.loopexit ], [ %i.bc, %.lr.ph ] ; 2 uses
  %.not109138 = icmp eq i64 %.191.lcssa, 0
  br i1 %.not109138, label %._crit_edge, label %.lr.ph140.preheader

.lr.ph140.preheader:                              ; preds = %.preheader131
  %i.al = shl nuw i64 %.191.lcssa, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %3, i8 0, i64 %i.al, i1 false), !tbaa !8
  br label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.191137 = phi i64 [ %i.bc, %.lr.ph ], [ %.191137.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %.294136 = phi i64 [ %i.bb, %.lr.ph ], [ %.294136.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %i.am = getelementptr [4 x i8], ptr %0, i64 %.294136
  %i.an = getelementptr i8, ptr %i.am, i64 -4
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !8
  %i.ap = getelementptr [4 x i8], ptr %3, i64 %.191137
  %i.aq = getelementptr i8, ptr %i.ap, i64 -4
  store i32 %i.ao, ptr %i.aq, align 4, !tbaa !8
  %i.ar = getelementptr [4 x i8], ptr %0, i64 %.294136
  %i.as = getelementptr i8, ptr %i.ar, i64 -8
  %i.at = load i32, ptr %i.as, align 4, !tbaa !8
  %i.au = getelementptr [4 x i8], ptr %3, i64 %.191137
  %i.av = getelementptr i8, ptr %i.au, i64 -8
  store i32 %i.at, ptr %i.av, align 4, !tbaa !8
  %i.aw = getelementptr [4 x i8], ptr %0, i64 %.294136
  %i.ax = getelementptr i8, ptr %i.aw, i64 -12
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !8
  %i.az = getelementptr [4 x i8], ptr %3, i64 %.191137
  %i.ba = getelementptr i8, ptr %i.az, i64 -12
  store i32 %i.ay, ptr %i.ba, align 4, !tbaa !8
  %i.bb = add i64 %.294136, -4                    ; 3 uses
  %i.bc = add i64 %.191137, -4                    ; 3 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bb
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !8
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.bc
  store i32 %i.be, ptr %i.bf, align 4, !tbaa !8
  %.not108.3 = icmp eq i64 %i.bb, 0
  br i1 %.not108.3, label %.preheader131, label %.lr.ph, !llvm.loop !25

._crit_edge:                                      ; preds = %.lr.ph140.preheader, %.preheader131
  %.not110 = icmp eq i32 %i.d, 0
  br i1 %.not110, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  %narrow111 = sub nuw nsw i32 32, %i.d           ; 2 uses
  %i.bg = icmp ugt i64 %4, %i.e
  br i1 %i.bg, label %.lr.ph144.preheader, label %.loopexit

.lr.ph144.preheader:                              ; preds = %bb.e
  %i.bh = sub nuw i64 %4, %i.e                    ; 3 uses
  %min.iters.check181 = icmp ult i64 %i.bh, 12
  br i1 %min.iters.check181, label %.lr.ph144.preheader234, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph144.preheader
  %i.bi = xor i64 %i.e, -1
  %i.bj = add i64 %4, %i.bi                       ; 2 uses
  %i.bk = trunc i64 %i.bj to i32
  %i.bl = sub nuw nsw i32 -2, %i.c
  %i.bm = icmp ult i32 %i.bl, %i.bk
  %i.bn = icmp ugt i64 %i.bj, 4294967295
  %i.bo = or i1 %i.bm, %i.bn
  br i1 %i.bo, label %.lr.ph144.preheader234, label %vector.ph182

vector.ph182:                                     ; preds = %vector.scevcheck
  %n.vec183 = and i64 %i.bh, -8                   ; 4 uses
  %i.bp = add i64 %n.vec183, %i.e
  %i.bq = trunc i64 %n.vec183 to i32
  %i.br = add i32 %i.c, %i.bq
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %narrow111, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert184 = insertelement <4 x i32> poison, i32 %i.d, i64 0
  %broadcast.splat185 = shufflevector <4 x i32> %broadcast.splatinsert184, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %3, i64 %i.e
  br label %vector.body186

vector.body186:                                   ; preds = %vector.body186, %vector.ph182
  %index187 = phi i64 [ 0, %vector.ph182 ], [ %index.next190, %vector.body186 ] ; 2 uses
  %vector.recur = phi <4 x i32> [ <i32 poison, i32 poison, i32 poison, i32 0>, %vector.ph182 ], [ %i.bu, %vector.body186 ]
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index187 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %gep, i64 16 ; 2 uses
  %wide.load188 = load <4 x i32>, ptr %gep, align 4, !tbaa !8 ; 2 uses
  %wide.load189 = load <4 x i32>, ptr %i.bs, align 4, !tbaa !8 ; 2 uses
  %i.bt = lshr <4 x i32> %wide.load188, %broadcast.splat ; 2 uses
  %i.bu = lshr <4 x i32> %wide.load189, %broadcast.splat ; 3 uses
  %i.bv = shufflevector <4 x i32> %vector.recur, <4 x i32> %i.bt, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.bw = shufflevector <4 x i32> %i.bt, <4 x i32> %i.bu, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.bx = shl <4 x i32> %wide.load188, %broadcast.splat185
  %i.by = shl <4 x i32> %wide.load189, %broadcast.splat185
  %i.bz = or <4 x i32> %i.bx, %i.bv
  %i.ca = or <4 x i32> %i.by, %i.bw
  store <4 x i32> %i.bz, ptr %gep, align 4, !tbaa !8
  store <4 x i32> %i.ca, ptr %i.bs, align 4, !tbaa !8
  %index.next190 = add nuw i64 %index187, 8       ; 2 uses
  %i.cb = icmp eq i64 %index.next190, %n.vec183
  br i1 %i.cb, label %middle.block191, label %vector.body186, !llvm.loop !26

middle.block191:                                  ; preds = %vector.body186
  %vector.recur.extract = extractelement <4 x i32> %i.bu, i64 3
  %cmp.n192 = icmp eq i64 %i.bh, %n.vec183
  br i1 %cmp.n192, label %.loopexit, label %.lr.ph144.preheader234

.lr.ph144.preheader234:                           ; preds = %vector.scevcheck, %.lr.ph144.preheader, %middle.block191
  %.ph = phi i64 [ %i.e, %vector.scevcheck ], [ %i.e, %.lr.ph144.preheader ], [ %i.bp, %middle.block191 ]
  %.087142.ph = phi i32 [ %i.c, %vector.scevcheck ], [ %i.c, %.lr.ph144.preheader ], [ %i.br, %middle.block191 ]
  %.088141.ph = phi i32 [ 0, %vector.scevcheck ], [ 0, %.lr.ph144.preheader ], [ %vector.recur.extract, %middle.block191 ]
  br label %.lr.ph144

.lr.ph144:                                        ; preds = %.lr.ph144.preheader234, %.lr.ph144
  %i.cc = phi i64 [ %i.cj, %.lr.ph144 ], [ %.ph, %.lr.ph144.preheader234 ]
  %.087142 = phi i32 [ %i.ci, %.lr.ph144 ], [ %.087142.ph, %.lr.ph144.preheader234 ]
  %.088141 = phi i32 [ %i.cf, %.lr.ph144 ], [ %.088141.ph, %.lr.ph144.preheader234 ]
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.cc ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !8  ; 2 uses
  %i.cf = lshr i32 %i.ce, %narrow111
  %i.cg = shl i32 %i.ce, %i.d
  %i.ch = or i32 %i.cg, %.088141
  store i32 %i.ch, ptr %i.cd, align 4, !tbaa !8
  %i.ci = add i32 %.087142, 1                     ; 2 uses
end_hunk_0
