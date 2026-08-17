inline.NumInlined: 16
inline.NumDeleted: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@H5Tclose

declare i32 @H5Drefresh(i64 noundef) local_unnamed_addr #2

declare i32 @H5LDget_dset_dims(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @slicendump(i64 noundef range(i64 0, -9223372036854775808) %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr nofree noundef nonnull readonly captures(none) %2, ptr nofree noundef nonnull captures(none) %3, ptr nofree noundef nonnull captures(none) %4, i32 noundef range(i32 0, -2147483648) %5, i32 noundef range(i32 0, -2147483648) %6) unnamed_addr #9 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %3 to i64                  ; 2 uses
  %i.c = ptrtoaddr ptr %4 to i64                  ; 2 uses
  %i.d = sub nsw i32 %5, %6                       ; 2 uses
  %i.e = add nsw i32 %6, -1
  %i.f = icmp samesign ugt i32 %6, 1
  %i.g = sext i32 %i.d to i64                     ; 9 uses
  br i1 %i.f, label %.preheader, label %..loopexit_crit_edge

..loopexit_crit_edge:                             ; preds = %bb.a
  %.phi.trans.insert73 = getelementptr inbounds [8 x i8], ptr %2, i64 %i.g
  %.pre = load i64, ptr %.phi.trans.insert73, align 8, !tbaa !20
  %.phi.trans.insert75 = getelementptr inbounds [8 x i8], ptr %1, i64 %i.g
  %.pre76 = load i64, ptr %.phi.trans.insert75, align 8, !tbaa !20
  br label %.loopexit

.preheader:                                       ; preds = %bb.a
  %i.h = getelementptr inbounds [8 x i8], ptr %1, i64 %i.g ; 2 uses
  %i.i = getelementptr inbounds [8 x i8], ptr %2, i64 %i.g ; 2 uses
  %i.j = load i64, ptr %i.h, align 8, !tbaa !20   ; 2 uses
  %i.k = load i64, ptr %i.i, align 8, !tbaa !20   ; 2 uses
  %.63 = tail call i64 @llvm.umin.i64(i64 %i.j, i64 %i.k)
  %i.l = icmp sgt i64 %.63, 0
  br i1 %i.l, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.m = getelementptr inbounds [8 x i8], ptr %3, i64 %i.g
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.n = load i64, ptr %i.h, align 8, !tbaa !20   ; 2 uses
  %i.o = load i64, ptr %i.i, align 8, !tbaa !20   ; 2 uses
  %. = tail call i64 @llvm.umin.i64(i64 %i.n, i64 %i.o)
  %i.p = icmp sgt i64 %., %indvars.iv.next
  br i1 %i.p, label %bb.c, label %.loopexit, !llvm.loop !41

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  store i64 %indvars.iv, ptr %i.m, align 8, !tbaa !20
  %i.q = tail call fastcc i32 @slicendump(i64 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %i.e) ; 3 uses
  %i.r = icmp slt i32 %i.q, 0
  br i1 %i.r, label %.loopexit61, label %bb.b

.loopexit:                                        ; preds = %bb.b, %..loopexit_crit_edge, %.preheader
  %i.s = phi i64 [ %.pre76, %..loopexit_crit_edge ], [ %i.j, %.preheader ], [ %i.n, %bb.b ] ; 2 uses
  %i.t = phi i64 [ %.pre, %..loopexit_crit_edge ], [ %i.k, %.preheader ], [ %i.o, %bb.b ]
  %.1 = phi i32 [ 0, %..loopexit_crit_edge ], [ 0, %.preheader ], [ %i.q, %bb.b ]
  %.not = icmp ugt i64 %i.t, %i.s
  br i1 %.not, label %bb.d, label %.loopexit61

bb.d:                                             ; preds = %.loopexit
  %i.u = getelementptr inbounds [8 x i8], ptr %1, i64 %i.g
  %i.v = getelementptr inbounds [8 x i8], ptr %2, i64 %i.g
  %i.w = getelementptr inbounds [8 x i8], ptr %3, i64 %i.g
  store i64 %i.s, ptr %i.w, align 8, !tbaa !20
  %i.x = load i64, ptr %i.v, align 8, !tbaa !20
  %i.y = load i64, ptr %i.u, align 8, !tbaa !20
  %i.z = sub i64 %i.x, %i.y
  %i.aa = getelementptr inbounds [8 x i8], ptr %4, i64 %i.g
  store i64 %i.z, ptr %i.aa, align 8, !tbaa !20
  %.15265 = add nsw i32 %i.d, 1                   ; 2 uses
  %i.ab = icmp slt i32 %.15265, %5
  br i1 %i.ab, label %.lr.ph67.preheader, label %._crit_edge

.lr.ph67.preheader:                               ; preds = %bb.d
  %i.ac = sext i32 %.15265 to i64                 ; 4 uses
  %i.ad = add nsw i32 %6, -2                      ; 2 uses
  %i.ae = zext i32 %i.ad to i64
  %i.af = add nuw nsw i64 %i.ae, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.ad, 21
  br i1 %min.iters.check, label %.lr.ph67.preheader90, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph67.preheader
  %i.ag = sub i64 %i.b, %i.c
  %diff.check = icmp ugt i64 %i.ag, -32
  %i.ah = sub i64 %i.b, %i.a
  %diff.check86 = icmp ugt i64 %i.ah, -32
  %conflict.rdx = or i1 %diff.check, %diff.check86
  %i.ai = sub i64 %i.a, %i.c
  %diff.check87 = icmp ugt i64 %i.ai, -32
  %conflict.rdx88 = or i1 %conflict.rdx, %diff.check87
  br i1 %conflict.rdx88, label %.lr.ph67.preheader90, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.af, 8589934588              ; 3 uses
  %i.aj = add nsw i64 %n.vec, %i.ac
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ak = add i64 %index, %i.ac                   ; 3 uses
  %i.al = getelementptr inbounds [8 x i8], ptr %3, i64 %i.ak ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store <2 x i64> zeroinitializer, ptr %i.al, align 8, !tbaa !20
  store <2 x i64> zeroinitializer, ptr %i.am, align 8, !tbaa !20
  %i.an = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ak ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %wide.load = load <2 x i64>, ptr %i.an, align 8, !tbaa !20
  %wide.load89 = load <2 x i64>, ptr %i.ao, align 8, !tbaa !20
  %i.ap = getelementptr inbounds [8 x i8], ptr %4, i64 %i.ak ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store <2 x i64> %wide.load, ptr %i.ap, align 8, !tbaa !20
  store <2 x i64> %wide.load89, ptr %i.aq, align 8, !tbaa !20
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !42

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.af, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph67.preheader90

.lr.ph67.preheader90:                             ; preds = %vector.memcheck, %.lr.ph67.preheader, %middle.block
  %indvars.iv70.ph = phi i64 [ %i.ac, %vector.memcheck ], [ %i.ac, %.lr.ph67.preheader ], [ %i.aj, %middle.block ] ; 3 uses
  %i.as = trunc i64 %indvars.iv70.ph to i32       ; 2 uses
  %i.at = sub i32 %5, %i.as
  %xtraiter = and i32 %i.at, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph67.prol.loopexit, label %.lr.ph67.prol

.lr.ph67.prol:                                    ; preds = %.lr.ph67.preheader90, %.lr.ph67.prol
  %indvars.iv70.prol = phi i64 [ %indvars.iv.next71.prol, %.lr.ph67.prol ], [ %indvars.iv70.ph, %.lr.ph67.preheader90 ] ; 4 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph67.prol ], [ 0, %.lr.ph67.preheader90 ]
  %i.au = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv70.prol
  store i64 0, ptr %i.au, align 8, !tbaa !20
  %i.av = getelementptr inbounds [8 x i8], ptr %2, i64 %indvars.iv70.prol
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !20
  %i.ax = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv70.prol
  store i64 %i.aw, ptr %i.ax, align 8, !tbaa !20
  %indvars.iv.next71.prol = add nsw i64 %indvars.iv70.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph67.prol.loopexit, label %.lr.ph67.prol, !llvm.loop !43

.lr.ph67.prol.loopexit:                           ; preds = %.lr.ph67.prol, %.lr.ph67.preheader90
  %indvars.iv70.unr = phi i64 [ %indvars.iv70.ph, %.lr.ph67.preheader90 ], [ %indvars.iv.next71.prol, %.lr.ph67.prol ]
  %i.ay = sub i32 %i.as, %5
  %i.az = icmp ugt i32 %i.ay, -4
  br i1 %i.az, label %._crit_edge, label %.lr.ph67

.lr.ph67:                                         ; preds = %.lr.ph67.prol.loopexit, %.lr.ph67
  %indvars.iv70 = phi i64 [ %indvars.iv.next71.3, %.lr.ph67 ], [ %indvars.iv70.unr, %.lr.ph67.prol.loopexit ] ; 7 uses
  %i.ba = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv70
  store i64 0, ptr %i.ba, align 8, !tbaa !20
  %i.bb = getelementptr inbounds [8 x i8], ptr %2, i64 %indvars.iv70
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !20
  %i.bd = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv70
  store i64 %i.bc, ptr %i.bd, align 8, !tbaa !20
  %indvars.iv.next71 = add nsw i64 %indvars.iv70, 1 ; 3 uses
  %i.be = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv.next71
  store i64 0, ptr %i.be, align 8, !tbaa !20
  %i.bf = getelementptr inbounds [8 x i8], ptr %2, i64 %indvars.iv.next71
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !20
  %i.bh = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv.next71
  store i64 %i.bg, ptr %i.bh, align 8, !tbaa !20
  %indvars.iv.next71.1 = add nsw i64 %indvars.iv70, 2 ; 3 uses
  %i.bi = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv.next71.1
  store i64 0, ptr %i.bi, align 8, !tbaa !20
  %i.bj = getelementptr inbounds [8 x i8], ptr %2, i64 %indvars.iv.next71.1
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !20
  %i.bl = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv.next71.1
  store i64 %i.bk, ptr %i.bl, align 8, !tbaa !20
  %indvars.iv.next71.2 = add nsw i64 %indvars.iv70, 3 ; 3 uses
  %i.bm = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv.next71.2
  store i64 0, ptr %i.bm, align 8, !tbaa !20
  %i.bn = getelementptr inbounds [8 x i8], ptr %2, i64 %indvars.iv.next71.2
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !20
  %i.bp = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv.next71.2
  store i64 %i.bo, ptr %i.bp, align 8, !tbaa !20
  %indvars.iv.next71.3 = add nsw i64 %indvars.iv70, 4 ; 2 uses
  %lftr.wideiv.3 = trunc i64 %indvars.iv.next71.3 to i32
  %exitcond.not.3 = icmp eq i32 %5, %lftr.wideiv.3
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph67, !llvm.loop !45

._crit_edge:                                      ; preds = %.lr.ph67.prol.loopexit, %.lr.ph67, %middle.block, %bb.d
  %i.bq = tail call fastcc i32 @doprint(i64 noundef %0, ptr noundef %3, ptr noundef %4, i32 noundef %5)
  br label %.loopexit61

.loopexit61:                                      ; preds = %bb.c, %.loopexit, %._crit_edge
  %.2 = phi i32 [ %i.bq, %._crit_edge ], [ %.1, %.loopexit ], [ %i.q, %bb.c ]
  ret i32 %.2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare i32 @sleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @doprint(i64 noundef range(i64 0, -9223372036854775808) %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr nofree noundef nonnull readonly captures(none) %2, i32 noundef range(i32 0, -2147483648) %3) unnamed_addr #9 {
bb.a:
  %4 = alloca %struct.h5tools_context_t, align 8  ; 5 uses
  %5 = alloca %struct.h5tool_format_t, align 8    ; 39 uses
  %6 = alloca %struct.subset_t, align 8           ; 7 uses
  %i.a = alloca [32 x i64], align 16              ; 4 uses
  %i.b = alloca [32 x i64], align 16              ; 5 uses
  %i.c = alloca [32 x i64], align 16              ; 4 uses
  %i.d = alloca [32 x i64], align 16              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #17
  store ptr %i.a, ptr %6, align 8, !tbaa !46
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.b, ptr %i.e, align 8, !tbaa !50
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 48
  store ptr %i.c, ptr %i.f, align 8, !tbaa !51
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %i.d, ptr %i.g, align 8, !tbaa !52
  %.not16 = icmp eq i32 %3, 0
  %.sink25.sroa.gep = getelementptr inbounds nuw i8, ptr %5, i64 192
  %.sink25.sroa.gep27 = getelementptr inbounds nuw i8, ptr %5, i64 336
  %.sink25.sroa.gep28 = getelementptr inbounds nuw i8, ptr %5, i64 336
  br i1 %.not16, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.h = zext nneg i32 %3 to i64                  ; 4 uses
  %i.i = shl nuw nsw i64 %i.h, 3                  ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr nonnull align 8 %1, i64 %i.i, i1 false), !tbaa !20
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.c, ptr nonnull align 8 %2, i64 %i.i, i1 false), !tbaa !20
  %min.iters.check = icmp samesign ult i32 %3, 4
  br i1 %min.iters.check, label %.lr.ph.preheader19, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.h, 2147483644               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %index ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store <2 x i64> splat (i64 1), ptr %i.j, align 16, !tbaa !20
  store <2 x i64> splat (i64 1), ptr %i.k, align 16, !tbaa !20
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %index ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store <2 x i64> splat (i64 1), ptr %i.l, align 16, !tbaa !20
  store <2 x i64> splat (i64 1), ptr %i.m, align 16, !tbaa !20
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.n = icmp eq i64 %index.next, %n.vec
  br i1 %i.n, label %middle.block, label %vector.body, !llvm.loop !53

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.h
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader19

.lr.ph.preheader19:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader19, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader19 ] ; 3 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv
  store i64 1, ptr %i.o, align 8, !tbaa !20
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv
  store i64 1, ptr %i.p, align 8, !tbaa !20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.h
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !54

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1120) %4, i8 0, i64 1120, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 1104
  store ptr %6, ptr %i.q, align 8, !tbaa !55
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(456) %5, i8 0, i64 456, i1 false)
  %.b = load i1, ptr @g_simple_output, align 1
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 312 ; 2 uses
  br i1 %.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge
  store ptr @.str.108, ptr %i.r, align 8, !tbaa !58
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 320
  store i32 65535, ptr %i.s, align 8, !tbaa !60
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 328
  store i64 1, ptr %i.t, align 8, !tbaa !61
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 336
  store ptr @.str.109, ptr %i.u, align 8, !tbaa !62
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 352
  store ptr @.str.110, ptr %i.v, align 8, !tbaa !63
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 160
  store ptr @.str.108, ptr %i.w, align 8, !tbaa !64
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 176
  store ptr @.str.108, ptr %i.x, align 8, !tbaa !65
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 168
  store ptr @.str.111, ptr %i.y, align 8, !tbaa !66
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 208
  store ptr @.str.108, ptr %i.z, align 8, !tbaa !67
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 216
  store ptr @.str.108, ptr %i.aa, align 8, !tbaa !68
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 200
  store ptr @.str.111, ptr %i.ab, align 8, !tbaa !69
  %i.ac = load ptr, ptr @g_listv, align 8, !tbaa !30
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 232
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !70
  %.b14 = load i1, ptr @g_label, align 1
  br i1 %.b14, label %bb.g, label %bb.h

bb.c:                                             ; preds = %._crit_edge
  store ptr @.str.113, ptr %i.r, align 8, !tbaa !58
  %i.ae = load i32, ptr @g_display_width, align 4, !tbaa !12 ; 2 uses
  %.not = icmp eq i32 %i.ae, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 328
  store i64 1, ptr %i.af, align 8, !tbaa !61
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.sink = phi i32 [ 65535, %bb.d ], [ %i.ae, %bb.c ]
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 320
  store i32 %.sink, ptr %i.ag, align 8, !tbaa !60
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 376
  store i32 1, ptr %i.ah, align 8, !tbaa !71
  %i.ai = load ptr, ptr @g_listv, align 8, !tbaa !30
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 232
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !70
  %.b13 = load i1, ptr @g_label, align 1
  br i1 %.b13, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 192
  store ptr @.str.112, ptr %i.ak, align 8, !tbaa !72
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.b
  %.sink25.sroa.phi = phi ptr [ %.sink25.sroa.gep, %bb.b ], [ %.sink25.sroa.gep27, %bb.f ], [ %.sink25.sroa.gep28, %bb.e ]
  %.str.112.sink = phi ptr [ @.str.112, %bb.b ], [ @.str.114, %bb.f ], [ @.str.114, %bb.e ]
  %.sink23.ph = phi i64 [ 280, %bb.b ], [ 352, %bb.f ], [ 352, %bb.e ]
  %.str.115.sink.ph = phi ptr [ @.str.111, %bb.b ], [ @.str.115, %bb.f ], [ @.str.115, %bb.e ]
  %.sink21.ph = phi i64 [ 148, %bb.b ], [ 152, %bb.f ], [ 152, %bb.e ]
  %.sink19.ph = phi i32 [ 1, %bb.b ], [ 8, %bb.f ], [ 8, %bb.e ]
  store ptr %.str.112.sink, ptr %.sink25.sroa.phi, align 8, !tbaa !9
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.b
  %.sink23 = phi i64 [ 280, %bb.b ], [ %.sink23.ph, %bb.g ]
  %.str.115.sink = phi ptr [ @.str.111, %bb.b ], [ %.str.115.sink.ph, %bb.g ]
  %.sink21 = phi i64 [ 148, %bb.b ], [ %.sink21.ph, %bb.g ]
  %.sink19 = phi i32 [ 1, %bb.b ], [ %.sink19.ph, %bb.g ]
  %7 = getelementptr inbounds nuw i8, ptr %5, i64 %.sink23
  store ptr %.str.115.sink, ptr %7, align 8, !tbaa !9
  %8 = getelementptr inbounds nuw i8, ptr %5, i64 %.sink21
  store i32 %.sink19, ptr %8, align 4, !tbaa !12
  %i.al = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @doprint.fmt_float, i64 noundef 16, ptr noundef nonnull @.str.116, i32 noundef 6) #17 ; 0 uses
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 96
  store ptr @doprint.fmt_float, ptr %i.am, align 8, !tbaa !73
  %i.an = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @doprint.fmt_double, i64 noundef 16, ptr noundef nonnull @.str.116, i32 noundef 15) #17 ; 0 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 104
  store ptr @doprint.fmt_double, ptr %i.ao, align 8, !tbaa !74
  %i.ap = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @doprint.fmt_ldouble, i64 noundef 16, ptr noundef nonnull @.str.117, i32 noundef 18) #17 ; 0 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 112
  store ptr @doprint.fmt_ldouble, ptr %i.aq, align 8, !tbaa !75
  %i.ar = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @doprint.fmt_float_complex, i64 noundef 16, ptr noundef nonnull @.str.118, i32 noundef 6, i32 noundef 6) #17 ; 0 uses
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 120
  store ptr @doprint.fmt_float_complex, ptr %i.as, align 8, !tbaa !76
  %i.at = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @doprint.fmt_double_complex, i64 noundef 32, ptr noundef nonnull @.str.118, i32 noundef 15, i32 noundef 15) #17 ; 0 uses
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 128
  store ptr @doprint.fmt_double_complex, ptr %i.au, align 8, !tbaa !77
  %i.av = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @doprint.fmt_ldouble_complex, i64 noundef 32, ptr noundef nonnull @.str.119, i32 noundef 18, i32 noundef 18) #17 ; 0 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 136
  store ptr @doprint.fmt_ldouble_complex, ptr %i.aw, align 8, !tbaa !78
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 416
  store ptr @.str.120, ptr %i.ax, align 8, !tbaa !79
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 408
  store i32 0, ptr %i.ay, align 8, !tbaa !80
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 400
  store ptr @.str.121, ptr %i.az, align 8, !tbaa !81
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 396
  store i32 0, ptr %i.ba, align 4, !tbaa !82
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 424
  store ptr @.str.122, ptr %i.bb, align 8, !tbaa !83
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 432
  store ptr @.str.123, ptr %i.bc, align 8, !tbaa !84
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 384
  store ptr @.str.108, ptr %i.bd, align 8, !tbaa !85
  %i.be = load ptr, ptr @stdout, align 8, !tbaa !26
  %i.bf = call i32 @h5tools_dump_dset(ptr noundef %i.be, ptr noundef nonnull %5, ptr noundef nonnull %4, i64 noundef %0) #17 ; 2 uses
  %i.bg = icmp slt i32 %i.bf, 0
  br i1 %i.bg, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void (ptr, ...) @error_msg(ptr noundef nonnull @.str.124) #17
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bh = load ptr, ptr @stdout, align 8, !tbaa !26
  %fputc = call i32 @fputc(i32 10, ptr %i.bh)     ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  ret i32 %i.bf
}

declare i32 @h5tools_dump_dset(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #15

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #16

attributes #0 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="16384" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="16384" }
attributes #5 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="16384" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="16384" }
attributes #10 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nounwind }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nounwind }
attributes #18 = { cold noreturn nounwind }
attributes #19 = { noreturn nounwind }
attributes #20 = { nounwind willreturn memory(read) }
attributes #21 = { nounwind allocsize(1) }
attributes #22 = { nounwind allocsize(0,1) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"p1 omnipotent char", !11, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!6, !6, i64 0}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{!16, !16, i64 0}
!16 = !{!"_Bool", !7, i64 0}
!17 = !{i8 0, i8 2}
!18 = !{}
!19 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!20 = !{!21, !21, i64 0}
!21 = !{!"long", !7, i64 0}
!22 = !{!7, !7, i64 0}
!23 = distinct !{!23, !14}
!24 = distinct !{!24, !14, !25}
!25 = !{!"llvm.loop.unswitch.partial.disable"}
!26 = !{!27, !27, i64 0}
!27 = !{!"p1 _ZTS8_IO_FILE", !11, i64 0}
!28 = distinct !{!28, !14}
!29 = !{!11, !11, i64 0}
!30 = !{!31, !31, i64 0}
!31 = !{!"p2 _ZTS11H5LD_memb_t", !32, i64 0}
!32 = !{!"any p2 pointer", !11, i64 0}
!33 = distinct !{!33, !14}
!34 = distinct !{!34, !14}
!35 = distinct !{!35, !14, !36, !37}
!36 = !{!"llvm.loop.isvectorized", i32 1}
!37 = !{!"llvm.loop.unroll.runtime.disable"}
!38 = distinct !{!38, !14, !37, !36}
!39 = distinct !{!39, !14}
!40 = distinct !{!40, !14}
!41 = distinct !{!41, !14}
!42 = distinct !{!42, !14, !36, !37}
!43 = distinct !{!43, !44}
!44 = !{!"llvm.loop.unroll.disable"}
!45 = distinct !{!45, !14, !36}
!46 = !{!47, !49, i64 0}
!47 = !{!"subset_t", !48, i64 0, !48, i64 16, !48, i64 32, !48, i64 48}
!48 = !{!"subset_d", !49, i64 0, !6, i64 8}
!49 = !{!"p1 long", !11, i64 0}
!50 = !{!47, !49, i64 16}
!51 = !{!47, !49, i64 48}
!52 = !{!47, !49, i64 32}
!53 = distinct !{!53, !14, !36, !37}
!54 = distinct !{!54, !14, !37, !36}
!55 = !{!56, !57, i64 1104}
!56 = !{!"h5tools_context_t", !21, i64 0, !21, i64 8, !6, i64 16, !6, i64 20, !7, i64 24, !7, i64 280, !6, i64 536, !21, i64 544, !6, i64 552, !21, i64 560, !6, i64 568, !6, i64 572, !7, i64 576, !7, i64 832, !21, i64 1088, !31, i64 1096, !57, i64 1104, !6, i64 1112, !6, i64 1116}
!57 = !{!"p1 _ZTS8subset_t", !11, i64 0}
!58 = !{!59, !10, i64 312}
!59 = !{!"h5tool_format_t", !16, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !10, i64 104, !10, i64 112, !10, i64 120, !10, i64 128, !10, i64 136, !6, i64 144, !6, i64 148, !6, i64 152, !10, i64 160, !10, i64 168, !10, i64 176, !6, i64 184, !10, i64 192, !10, i64 200, !10, i64 208, !10, i64 216, !10, i64 224, !31, i64 232, !10, i64 240, !10, i64 248, !10, i64 256, !10, i64 264, !10, i64 272, !10, i64 280, !10, i64 288, !10, i64 296, !10, i64 304, !10, i64 312, !6, i64 320, !21, i64 328, !10, i64 336, !10, i64 344, !10, i64 352, !10, i64 360, !10, i64 368, !6, i64 376, !10, i64 384, !6, i64 392, !6, i64 396, !10, i64 400, !6, i64 408, !10, i64 416, !10, i64 424, !10, i64 432, !10, i64 440, !6, i64 448, !6, i64 452}
!60 = !{!59, !6, i64 320}
!61 = !{!59, !21, i64 328}
!62 = !{!59, !10, i64 336}
!63 = !{!59, !10, i64 352}
!64 = !{!59, !10, i64 160}
!65 = !{!59, !10, i64 176}
!66 = !{!59, !10, i64 168}
!67 = !{!59, !10, i64 208}
!68 = !{!59, !10, i64 216}
!69 = !{!59, !10, i64 200}
!70 = !{!59, !31, i64 232}
!71 = !{!59, !6, i64 376}
!72 = !{!59, !10, i64 192}
!73 = !{!59, !10, i64 96}
!74 = !{!59, !10, i64 104}
!75 = !{!59, !10, i64 112}
!76 = !{!59, !10, i64 120}
!77 = !{!59, !10, i64 128}
!78 = !{!59, !10, i64 136}
!79 = !{!59, !10, i64 416}
!80 = !{!59, !6, i64 408}
!81 = !{!59, !10, i64 400}
!82 = !{!59, !6, i64 396}
!83 = !{!59, !10, i64 424}
!84 = !{!59, !10, i64 432}
!85 = !{!59, !10, i64 384}
end_hunk_0
