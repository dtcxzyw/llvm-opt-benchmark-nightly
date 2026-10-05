Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luajit/original/lj_tab?download=true
inline.NumInlined: 22
inline.NumDeleted: 6
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@lj_tab_dup:bb.a
  %exitcond64 = icmp eq i64 %indvars.iv.next61, %wide.trip.count63
  br i1 %exitcond64, label %.loopexit, label %bb.e, !llvm.loop !61

.loopexit:                                        ; preds = %bb.g, %.loopexit56
  ret ptr %i.g
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @lj_tab_clear(ptr nofree noundef captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i32, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %.not10 = icmp eq i32 %i.b, 0
  br i1 %.not10, label %clearapart.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !20
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = zext i32 %i.b to i64
  %i.g = shl nuw nsw i64 %i.f, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.e, i8 -1, i64 %i.g, i1 false), !tbaa !21
  br label %clearapart.exit

clearapart.exit:                                  ; preds = %.lr.ph.preheader, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.i = load i32, ptr %i.h, align 4, !tbaa !22   ; 2 uses
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %clearhpart.exit, label %bb.b

bb.b:                                             ; preds = %clearapart.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load i64, ptr %i.j, align 8, !tbaa !23   ; 2 uses
  %i.l = add i32 %i.i, 1                          ; 3 uses
  %i.m = zext i32 %i.l to i64
  %.idx = mul nuw nsw i64 %i.m, 24
  %i.n = add nuw i64 %i.k, %.idx
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.n, ptr %i.o, align 8, !tbaa !34
  %i.p = inttoptr i64 %i.k to ptr                 ; 5 uses
  %umax = tail call i32 @llvm.umax.i32(i32 %i.l, i32 1)
  %wide.trip.count = zext i32 %umax to i64        ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.q = icmp ult i32 %i.l, 4
  br i1 %i.q, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %wide.trip.count, 4294967292
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.new
  %indvars.iv = phi i64 [ 0, %.new ], [ %indvars.iv.next.3, %bb.c ] ; 5 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.c ]
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %indvars.iv ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i64 0, ptr %i.s, align 8, !tbaa !25
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, i8 -1, i64 16, i1 false)
  %i.t = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %indvars.iv ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  store i64 0, ptr %i.v, align 8, !tbaa !25
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, i8 -1, i64 16, i1 false)
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %indvars.iv ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 64
  store i64 0, ptr %i.y, align 8, !tbaa !25
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, i8 -1, i64 16, i1 false)
  %i.z = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %indvars.iv ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 72
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 88
  store i64 0, ptr %i.ab, align 8, !tbaa !25
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i8 -1, i64 16, i1 false)
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %clearhpart.exit.loopexit.unr-lcssa, label %bb.c, !llvm.loop !0

clearhpart.exit.loopexit.unr-lcssa:               ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %clearhpart.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %clearhpart.exit.loopexit.unr-lcssa, %bb.b
  %indvars.iv.epil.init = phi i64 [ 0, %bb.b ], [ %indvars.iv.next.3, %clearhpart.exit.loopexit.unr-lcssa ]
  %lcmp.mod14 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod14)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.d ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.d ]
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %indvars.iv.epil ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store i64 0, ptr %i.ad, align 8, !tbaa !25
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i8 -1, i64 16, i1 false)
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %clearhpart.exit, label %bb.d, !llvm.loop !62

clearhpart.exit:                                  ; preds = %clearhpart.exit.loopexit.unr-lcssa, %bb.d, %clearapart.exit
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @lj_tab_free(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.b = load i32, ptr %i.a, align 4, !tbaa !22   ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.d = load i64, ptr %i.c, align 8, !tbaa !23
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = add i32 %i.b, 1
  %i.g = zext i32 %i.f to i64
  %i.h = mul nuw nsw i64 %i.g, 24                 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !46
  %i.k = sub i64 %i.j, %i.h
  store i64 %i.k, ptr %i.i, align 8, !tbaa !46
  %i.l = load ptr, ptr %0, align 8, !tbaa !47
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !48
  %i.o = tail call ptr %i.l(ptr noundef %i.n, ptr noundef %i.e, i64 noundef range(i64 0, 103079215081) %i.h, i64 noundef 0) #12, !inline_history !1 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.q = load i32, ptr %i.p, align 8, !tbaa !19   ; 2 uses
  %.not17 = icmp eq i32 %i.q, 0
  br i1 %.not17, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.s = load i8, ptr %i.r, align 1, !tbaa !29
  %i.t = icmp slt i8 %i.s, 1
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = load i64, ptr %i.u, align 8, !tbaa !20
  %i.w = inttoptr i64 %i.v to ptr
  %i.x = zext i32 %i.q to i64
  %i.y = shl nuw nsw i64 %i.x, 3                  ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !46
  %i.ab = sub i64 %i.aa, %i.y
  store i64 %i.ab, ptr %i.z, align 8, !tbaa !46
  %i.ac = load ptr, ptr %0, align 8, !tbaa !47
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !48
  %i.af = tail call ptr %i.ac(ptr noundef %i.ae, ptr noundef %i.w, i64 noundef range(i64 0, 103079215081) %i.y, i64 noundef 0) #12, !inline_history !1 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !29  ; 2 uses
  %.not18 = icmp eq i8 %i.ah, 0
  br i1 %.not18, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ai = and i8 %i.ah, 127
  %i.aj = zext nneg i8 %i.ai to i64
  %i.ak = shl nuw nsw i64 %i.aj, 3
  %i.al = add nuw nsw i64 %i.ak, 64               ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !46
  %i.ao = sub i64 %i.an, %i.al
  store i64 %i.ao, ptr %i.am, align 8, !tbaa !46
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !46
  %i.ar = add i64 %i.aq, -64
  store i64 %i.ar, ptr %i.ap, align 8, !tbaa !46
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sink21 = phi i64 [ 64, %bb.h ], [ %i.al, %bb.g ]
  %i.as = load ptr, ptr %0, align 8, !tbaa !47
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !48
  %i.av = tail call ptr %i.as(ptr noundef %i.au, ptr noundef nonnull %1, i64 noundef %.sink21, i64 noundef 0) #12 ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @lj_tab_resize(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %union.TValue, align 8              ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !23
  %i.c = inttoptr i64 %i.b to ptr                 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !19   ; 9 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 52 ; 4 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !22   ; 3 uses
  %i.h = icmp ugt i32 %2, %i.e
  br i1 %i.h, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.i = icmp ugt i32 %2, 134217729
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @lj_err_msg(ptr noundef %0, i32 noundef 139) #13
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 11 ; 3 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !29
  %i.l = icmp sgt i8 %i.k, 0
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !20   ; 2 uses
  %i.o = inttoptr i64 %i.n to ptr                 ; 7 uses
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.p = shl nuw nsw i32 %2, 3
  %i.q = zext nneg i32 %i.p to i64
  %i.r = tail call ptr @lj_mem_realloc(ptr noundef %0, ptr noundef null, i64 noundef 0, i64 noundef %i.q) #12 ; 11 uses
  %i.s = load i8, ptr %i.j, align 1, !tbaa !29
  %i.t = or i8 %i.s, -128
  store i8 %i.t, ptr %i.j, align 1, !tbaa !29
  %.not104 = icmp eq i32 %i.e, 0
  br i1 %.not104, label %.lr.ph100.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.e
  %i.u = ptrtoaddr ptr %i.r to i64
  %wide.trip.count = zext i32 %i.e to i64         ; 5 uses
  %min.iters.check = icmp ult i32 %i.e, 8
  %i.v = sub i64 %i.n, %i.u
  %diff.check = icmp ugt i64 %i.v, -32
  %or.cond130 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond130, label %.lr.ph.preheader132, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 4294967292   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %index ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %index ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %wide.load = load <2 x i64>, ptr %i.x, align 8, !tbaa !21
  %wide.load129 = load <2 x i64>, ptr %i.y, align 8, !tbaa !21
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store <2 x i64> %wide.load, ptr %i.w, align 8, !tbaa !21
  store <2 x i64> %wide.load129, ptr %i.z, align 8, !tbaa !21
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !63

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.lr.ph100.preheader, label %.lr.ph.preheader132

.lr.ph.preheader132:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader132, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %indvars.iv.ph, %.lr.ph.preheader132 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader132 ]
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.prol
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.prol
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !21
  store i64 %i.ad, ptr %i.ab, align 8, !tbaa !21
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !64

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader132
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader132 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.ae = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.af = icmp ugt i64 %i.ae, -4
  br i1 %i.af, label %.lr.ph100.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !21
  store i64 %i.ai, ptr %i.ag, align 8, !tbaa !21
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.next
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !21
  store i64 %i.al, ptr %i.aj, align 8, !tbaa !21
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next.1
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.next.1
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !21
  store i64 %i.ao, ptr %i.am, align 8, !tbaa !21
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next.2
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.next.2
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !21
  store i64 %i.ar, ptr %i.ap, align 8, !tbaa !21
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.lr.ph100.preheader, label %.lr.ph, !llvm.loop !65

bb.f:                                             ; preds = %bb.d
  %i.as = zext i32 %i.e to i64
  %i.at = shl nuw nsw i64 %i.as, 3
  %i.au = shl nuw nsw i32 %2, 3
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = tail call ptr @lj_mem_realloc(ptr noundef %0, ptr noundef %i.o, i64 noundef %i.at, i64 noundef %i.av) #12
  br label %.lr.ph100.preheader

.lr.ph100.preheader:                              ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.f, %bb.e
  %.086 = phi ptr [ %i.aw, %bb.f ], [ %i.r, %bb.e ], [ %i.r, %middle.block ], [ %i.r, %.lr.ph ], [ %i.r, %.lr.ph.prol.loopexit ] ; 2 uses
  %i.ax = ptrtoint ptr %.086 to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %i.ax, ptr %i.ay, align 8, !tbaa !20
  store i32 %2, ptr %i.d, align 8, !tbaa !19
  %i.az = zext i32 %i.e to i64
  %i.ba = shl nuw nsw i64 %i.az, 3
  %scevgep = getelementptr i8, ptr %.086, i64 %i.ba
  %i.bb = xor i32 %i.e, -1
  %i.bc = add i32 %2, %i.bb
  %i.bd = zext i32 %i.bc to i64
  %i.be = shl nuw nsw i64 %i.bd, 3
  %i.bf = add nuw nsw i64 %i.be, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, i8 -1, i64 %i.bf, i1 false), !tbaa !21
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph100.preheader, %bb.a
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %bb.j, label %bb.g

bb.g:                                             ; preds = %.loopexit
  %i.bg = icmp ugt i32 %3, 26
  br i1 %i.bg, label %bb.h, label %newhpart.exit

bb.h:                                             ; preds = %bb.g
  tail call void @lj_err_msg(ptr noundef %0, i32 noundef 139) #13
  unreachable

newhpart.exit:                                    ; preds = %bb.g
  %i.bh = shl nuw nsw i32 1, %3                   ; 2 uses
  %i.bi = zext nneg i32 %i.bh to i64              ; 3 uses
  %i.bj = zext nneg i32 %3 to i64
  %i.bk = shl nuw nsw i64 24, %i.bj
  %i.bl = tail call ptr @lj_mem_realloc(ptr noundef %0, ptr noundef null, i64 noundef 0, i64 noundef %i.bk) #12 ; 7 uses
  %i.bm = ptrtoint ptr %i.bl to i64
  store i64 %i.bm, ptr %i.a, align 8, !tbaa !23
  %i.bn = getelementptr inbounds nuw [24 x i8], ptr %i.bl, i64 %i.bi
  %i.bo = ptrtoint ptr %i.bn to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i64 %i.bo, ptr %i.bp, align 8, !tbaa !34
  %i.bq = add nsw i32 %i.bh, -1
  store i32 %i.bq, ptr %i.f, align 4, !tbaa !22
  %xtraiter133 = and i64 %i.bi, 2                 ; 2 uses
  %i.br = icmp eq i32 %3, 1
  br i1 %i.br, label %.epil.preheader, label %newhpart.exit.new

newhpart.exit.new:                                ; preds = %newhpart.exit
  %unroll_iter = and i64 %i.bi, 2147483644
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %newhpart.exit.new
  %indvars.iv110 = phi i64 [ 0, %newhpart.exit.new ], [ %indvars.iv.next111.3, %bb.i ] ; 5 uses
  %niter = phi i64 [ 0, %newhpart.exit.new ], [ %niter.next.3, %bb.i ]
  %i.bs = getelementptr inbounds nuw [24 x i8], ptr %i.bl, i64 %indvars.iv110 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  store i64 0, ptr %i.bt, align 8, !tbaa !25
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bs, i8 -1, i64 16, i1 false)
  %i.bu = getelementptr inbounds nuw [24 x i8], ptr %i.bl, i64 %indvars.iv110 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 40
  store i64 0, ptr %i.bw, align 8, !tbaa !25
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bv, i8 -1, i64 16, i1 false)
  %i.bx = getelementptr inbounds nuw [24 x i8], ptr %i.bl, i64 %indvars.iv110 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 48
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 64
  store i64 0, ptr %i.bz, align 8, !tbaa !25
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.by, i8 -1, i64 16, i1 false)
  %i.ca = getelementptr inbounds nuw [24 x i8], ptr %i.bl, i64 %indvars.iv110 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 72
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 88
  store i64 0, ptr %i.cc, align 8, !tbaa !25
  %indvars.iv.next111.3 = add nuw nsw i64 %indvars.iv110, 4 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cb, i8 -1, i64 16, i1 false)
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %clearhpart.exit.loopexit.unr-lcssa, label %bb.i, !llvm.loop !0

bb.j:                                             ; preds = %.loopexit
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !33
  %i.cf = add nuw i64 %i.ce, 248                  ; 2 uses
  store i64 %i.cf, ptr %i.a, align 8, !tbaa !23
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i64 %i.cf, ptr %i.cg, align 8, !tbaa !34
  store i32 0, ptr %i.f, align 4, !tbaa !22
  br label %clearhpart.exit

clearhpart.exit.loopexit.unr-lcssa:               ; preds = %bb.i
  %lcmp.mod134.not = icmp eq i64 %xtraiter133, 0
  br i1 %lcmp.mod134.not, label %clearhpart.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %clearhpart.exit.loopexit.unr-lcssa, %newhpart.exit
  %indvars.iv110.epil.init = phi i64 [ 0, %newhpart.exit ], [ %indvars.iv.next111.3, %clearhpart.exit.loopexit.unr-lcssa ]
  %lcmp.mod135 = icmp ne i64 %xtraiter133, 0
  tail call void @llvm.assume(i1 %lcmp.mod135)
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.epil.preheader
  %indvars.iv110.epil = phi i64 [ %indvars.iv110.epil.init, %.epil.preheader ], [ %indvars.iv.next111.epil, %bb.k ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.k ]
  %i.ch = getelementptr inbounds nuw [24 x i8], ptr %i.bl, i64 %indvars.iv110.epil ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  store i64 0, ptr %i.ci, align 8, !tbaa !25
  %indvars.iv.next111.epil = add nuw nsw i64 %indvars.iv110.epil, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ch, i8 -1, i64 16, i1 false)
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, 2
  br i1 %epil.iter.cmp.not, label %clearhpart.exit, label %bb.k, !llvm.loop !66

clearhpart.exit:                                  ; preds = %clearhpart.exit.loopexit.unr-lcssa, %bb.k, %bb.j
  %i.cj = icmp ult i32 %2, %i.e
  br i1 %i.cj, label %bb.l, label %bb.u

bb.l:                                             ; preds = %clearhpart.exit
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !20
  %i.cm = inttoptr i64 %i.cl to ptr               ; 2 uses
  store i32 %2, ptr %i.d, align 8, !tbaa !19
  %i.cn = zext i32 %2 to i64                      ; 2 uses
  %wide.trip.count118 = zext i32 %i.e to i64      ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.r
  %indvars.iv115 = phi i64 [ %i.cn, %bb.l ], [ %indvars.iv.next116, %bb.r ] ; 3 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %indvars.iv115 ; 2 uses
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !21 ; 2 uses
  %i.cq = icmp eq i64 %i.cp, -1
  br i1 %i.cq, label %bb.r, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  %i.cr = trunc nuw i64 %indvars.iv115 to i32
  %i.cs = sitofp i32 %i.cr to double              ; 3 uses
  store double %i.cs, ptr %4, align 8, !tbaa !21
  %i.ct = bitcast double %i.cs to i64             ; 2 uses
  %i.cu = trunc i64 %i.ct to i32
  %sh.diff = lshr i64 %i.ct, 31
  %tr.sh.diff = trunc i64 %sh.diff to i32
  %i.cv = and i32 %tr.sh.diff, -2                 ; 5 uses
  %i.cw = xor i32 %i.cv, %i.cu
  %i.cx = call i32 @llvm.fshl.i32(i32 %i.cv, i32 %i.cv, i32 14)
  %i.cy = sub i32 %i.cw, %i.cx                    ; 3 uses
  %i.cz = call i32 @llvm.fshl.i32(i32 %i.cv, i32 %i.cv, i32 19)
  %i.da = xor i32 %i.cy, %i.cz
  %i.db = call i32 @llvm.fshl.i32(i32 %i.cy, i32 %i.cy, i32 13)
  %i.dc = sub i32 %i.da, %i.db
  %i.dd = load i64, ptr %i.a, align 8, !tbaa !23
  %i.de = inttoptr i64 %i.dd to ptr
  %i.df = load i32, ptr %i.f, align 4, !tbaa !22
  %i.dg = and i32 %i.dc, %i.df
  %i.dh = zext i32 %i.dg to i64
  %i.di = getelementptr inbounds nuw [24 x i8], ptr %i.de, i64 %i.dh
  br label %bb.o

bb.o:                                             ; preds = %bb.p, %bb.n
  %.0.i94 = phi ptr [ %i.di, %bb.n ], [ %i.dq, %bb.p ] ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.0.i94, i64 8
  %i.dk = load i64, ptr %i.dj, align 8            ; 2 uses
  %i.dl = icmp ult i64 %i.dk, -1970324836974592
  %i.dm = bitcast i64 %i.dk to double
  %i.dn = fcmp oeq double %i.dm, %i.cs
  %or.cond = select i1 %i.dl, i1 %i.dn, i1 false
  br i1 %or.cond, label %lj_tab_setinth.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.do = getelementptr inbounds nuw i8, ptr %.0.i94, i64 16
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !25 ; 2 uses
  %i.dq = inttoptr i64 %i.dp to ptr
  %.not.i95 = icmp eq i64 %i.dp, 0
  br i1 %.not.i95, label %bb.q, label %bb.o, !llvm.loop !2

bb.q:                                             ; preds = %bb.p
  %i.dr = call ptr @lj_tab_newkey(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4), !inline_history !49
  %.pre = load i64, ptr %i.co, align 8, !tbaa !21
  br label %lj_tab_setinth.exit

lj_tab_setinth.exit:                              ; preds = %bb.o, %bb.q
  %i.ds = phi i64 [ %.pre, %bb.q ], [ %i.cp, %bb.o ]
  %.08.i = phi ptr [ %i.dr, %bb.q ], [ %.0.i94, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  store i64 %i.ds, ptr %.08.i, align 8, !tbaa !21
  br label %bb.r

bb.r:                                             ; preds = %bb.m, %lj_tab_setinth.exit
  %indvars.iv.next116 = add nuw nsw i64 %indvars.iv115, 1 ; 2 uses
  %exitcond119.not = icmp eq i64 %indvars.iv.next116, %wide.trip.count118
  br i1 %exitcond119.not, label %bb.s, label %bb.m, !llvm.loop !67

bb.s:                                             ; preds = %bb.r
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !29
  %i.dv = icmp slt i8 %i.du, 1
  br i1 %i.dv, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.dw = shl nuw nsw i64 %wide.trip.count118, 3
  %i.dx = shl nuw nsw i64 %i.cn, 3
  %i.dy = call ptr @lj_mem_realloc(ptr noundef %0, ptr noundef %i.cm, i64 noundef %i.dw, i64 noundef %i.dx) #12
  %i.dz = ptrtoint ptr %i.dy to i64
  store i64 %i.dz, ptr %i.ck, align 8, !tbaa !20
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t, %clearhpart.exit
  %.not92 = icmp eq i32 %i.g, 0
  br i1 %.not92, label %bb.y, label %.preheader

.preheader:                                       ; preds = %bb.u, %bb.w
  %.0103 = phi i32 [ %i.eh, %bb.w ], [ 0, %bb.u ] ; 2 uses
  %i.ea = zext i32 %.0103 to i64
  %i.eb = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %i.ea ; 3 uses
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !21
  %i.ed = icmp eq i64 %i.ec, -1
  br i1 %i.ed, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.preheader
  %i.ee = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %i.ef = call ptr @lj_tab_set(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %i.ee)
  %i.eg = load i64, ptr %i.eb, align 8, !tbaa !21
  store i64 %i.eg, ptr %i.ef, align 8, !tbaa !21
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %.preheader
  %i.eh = add i32 %.0103, 1                       ; 2 uses
  %.not93 = icmp ugt i32 %i.eh, %i.g
  br i1 %.not93, label %bb.x, label %.preheader, !llvm.loop !68

bb.x:                                             ; preds = %bb.w
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !33
  %i.ek = inttoptr i64 %i.ej to ptr               ; 3 uses
  %i.el = add nuw i32 %i.g, 1
  %i.em = zext i32 %i.el to i64
  %i.en = mul nuw nsw i64 %i.em, 24               ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ek, i64 16 ; 2 uses
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !46
  %i.eq = sub i64 %i.ep, %i.en
  store i64 %i.eq, ptr %i.eo, align 8, !tbaa !46
  %i.er = load ptr, ptr %i.ek, align 8, !tbaa !47
  %i.es = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !48
  %i.eu = call ptr %i.er(ptr noundef %i.et, ptr noundef nonnull %i.c, i64 noundef range(i64 0, 103079215081) %i.en, i64 noundef 0) #12, !inline_history !1 ; 0 uses
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.u
  ret void
}

; Function Attrs: noreturn
declare hidden void @lj_err_msg(ptr noundef, i32 noundef) local_unnamed_addr #4

declare hidden ptr @lj_mem_realloc(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define hidden ptr @lj_tab_setinth(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %union.TValue, align 8              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %i.a = sitofp i32 %2 to double                  ; 3 uses
  store double %i.a, ptr %3, align 8, !tbaa !21
  %i.b = bitcast double %i.a to i64               ; 2 uses
  %i.c = trunc i64 %i.b to i32
  %sh.diff = lshr i64 %i.b, 31
  %tr.sh.diff = trunc i64 %sh.diff to i32
  %i.d = and i32 %tr.sh.diff, -2                  ; 5 uses
  %i.e = xor i32 %i.d, %i.c
  %i.f = tail call i32 @llvm.fshl.i32(i32 %i.d, i32 %i.d, i32 14)
  %i.g = sub i32 %i.e, %i.f                       ; 3 uses
  %i.h = tail call i32 @llvm.fshl.i32(i32 %i.d, i32 %i.d, i32 19)
  %i.i = xor i32 %i.g, %i.h
  %i.j = tail call i32 @llvm.fshl.i32(i32 %i.g, i32 %i.g, i32 13)
  %i.k = sub i32 %i.i, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.m = load i64, ptr %i.l, align 8, !tbaa !23
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.p = load i32, ptr %i.o, align 4, !tbaa !22
  %i.q = and i32 %i.k, %i.p
  %i.r = zext i32 %i.q to i64
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %i.r
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.0 = phi ptr [ %i.s, %bb.a ], [ %i.aa, %bb.c ] ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.u = load i64, ptr %i.t, align 8              ; 2 uses
  %i.v = icmp ult i64 %i.u, -1970324836974592
  %i.w = bitcast i64 %i.u to double
  %i.x = fcmp oeq double %i.w, %i.a
  %or.cond = and i1 %i.v, %i.x
  br i1 %or.cond, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %.0, i64 16
  %i.z = load i64, ptr %i.y, align 8, !tbaa !25   ; 2 uses
  %i.aa = inttoptr i64 %i.z to ptr
  %.not = icmp eq i64 %i.z, 0
  br i1 %.not, label %bb.d, label %bb.b, !llvm.loop !2

bb.d:                                             ; preds = %bb.c
  %i.ab = call ptr @lj_tab_newkey(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.d
  %.08 = phi ptr [ %i.ab, %bb.d ], [ %.0, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  ret ptr %.08
}

; Function Attrs: nounwind uwtable
define hidden ptr @lj_tab_set(ptr noundef %0, ptr noundef initializes((10, 11)) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %union.TValue, align 8              ; 4 uses
  %4 = alloca %union.TValue, align 8              ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 10
  store i8 0, ptr %i.a, align 2, !tbaa !28
  %i.b = load i64, ptr %2, align 8                ; 9 uses
  %i.c = ashr i64 %i.b, 47                        ; 4 uses
  %i.d = icmp eq i64 %i.c, -5
  %i.e = bitcast i64 %i.b to double               ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.f = and i64 %i.b, 140737488355327            ; 2 uses
  %i.g = inttoptr i64 %i.f to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !50
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.k = load i64, ptr %i.j, align 8, !tbaa !23
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.n = load i32, ptr %i.m, align 4, !tbaa !22
  %i.o = and i32 %i.n, %i.i
  %i.p = zext i32 %i.o to i64
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %i.p
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.0.i = phi ptr [ %i.q, %bb.b ], [ %i.y, %bb.d ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !21   ; 2 uses
  %.mask.i = and i64 %i.s, -140737488355328
  %i.t = icmp eq i64 %.mask.i, -703687441776640
  %i.u = and i64 %i.s, 140737488355327
  %i.v = icmp eq i64 %i.f, %i.u
  %or.cond.i = and i1 %i.t, %i.v
  br i1 %or.cond.i, label %lj_tab_setstr.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.x = load i64, ptr %i.w, align 8, !tbaa !25   ; 2 uses
  %i.y = inttoptr i64 %i.x to ptr
  %.not.i = icmp eq i64 %i.x, 0
  br i1 %.not.i, label %bb.e, label %bb.c, !llvm.loop !3

bb.e:                                             ; preds = %bb.d
  store i64 %i.b, ptr %4, align 8, !tbaa !21
  %i.z = call ptr @lj_tab_newkey(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4), !inline_history !70
  br label %lj_tab_setstr.exit

lj_tab_setstr.exit:                               ; preds = %bb.c, %bb.e
  %.012.i = phi ptr [ %i.z, %bb.e ], [ %.0.i, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  br label %.loopexit

bb.f:                                             ; preds = %bb.a
  %i.aa = icmp ult i64 %i.c, -14
  br i1 %i.aa, label %bb.g, label %bb.o

bb.g:                                             ; preds = %bb.f
  %i.ab = tail call i64 @lj_vm_num2int_check(double noundef %i.e) #14 ; 3 uses
  %i.ac = icmp slt i64 %i.ab, 0
  %i.ad = trunc i64 %i.ab to i32                  ; 2 uses
  br i1 %i.ac, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !19
  %i.ag = icmp ugt i32 %i.af, %i.ad
  br i1 %i.ag, label %.thread41, label %bb.i

.thread41:                                        ; preds = %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !20
  %i.aj = inttoptr i64 %i.ai to ptr
  %sext = shl i64 %i.ab, 32
  %i.ak = ashr exact i64 %sext, 29
  %i.al = getelementptr inbounds i8, ptr %i.aj, i64 %i.ak
  br label %.loopexit

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %i.am = sitofp i32 %i.ad to double              ; 3 uses
  store double %i.am, ptr %3, align 8, !tbaa !21
  %i.an = bitcast double %i.am to i64             ; 2 uses
  %i.ao = trunc i64 %i.an to i32
end_hunk_0
