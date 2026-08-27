Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/str?download=true
inline.NumInlined: 37
inline.NumDeleted: 4
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@cli_xtoi:bb.a
  %i.r = ptrtoaddr ptr %i.q to i64
  %i.s = icmp eq ptr %i.q, null
  br i1 %i.s, label %bb.d, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.t = icmp sgt i32 %i.c, 0
  br i1 %i.t, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %.preheader
  %wide.trip.count = and i64 %i.b, 2147483647     ; 6 uses
  %min.iters.check = icmp samesign ult i64 %wide.trip.count, 4
  %i.u = sub i64 %i.r, %i.a
  %diff.check = icmp ult i64 %i.u, 31
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check33 = icmp samesign ult i64 %wide.trip.count, 32
  br i1 %min.iters.check33, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.v = and i64 %i.b, 28
  %n.vec = and i64 %i.b, 2147483616               ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 %index ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %wide.load = load <16 x i8>, ptr %i.w, align 1, !tbaa !8
  %wide.load34 = load <16 x i8>, ptr %i.x, align 1, !tbaa !8
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 %index ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 17
  store <16 x i8> %wide.load, ptr %i.z, align 1, !tbaa !8
  store <16 x i8> %wide.load34, ptr %i.aa, align 1, !tbaa !8
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !12

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %wide.trip.count, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.v, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !15

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec35 = and i64 %i.b, 2147483644             ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index36 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next38, %vec.epilog.vector.body ] ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 %index36
  %wide.load37 = load <4 x i8>, ptr %i.ac, align 1, !tbaa !8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.q, i64 %index36
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 1
  store <4 x i8> %wide.load37, ptr %i.ae, align 1, !tbaa !8
  %index.next38 = add nuw i64 %index36, 4         ; 2 uses
  %i.af = icmp eq i64 %index.next38, %n.vec35
  br i1 %i.af, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !16

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n39 = icmp eq i64 %wide.trip.count, %n.vec35
  br i1 %cmp.n39, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec35, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %i.b, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.prol
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !8
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.q, i64 %indvars.iv.next.prol
  store i8 %i.ah, ptr %i.ai, align 1, !tbaa !8
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !17

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.aj = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.ak = icmp ugt i64 %i.aj, -4
  br i1 %i.ak, label %._crit_edge, label %.lr.ph

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.3) #23
  br label %cli_hex2num.exit

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.am = load i8, ptr %i.al, align 1, !tbaa !8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.q, i64 %indvars.iv.next
  store i8 %i.am, ptr %i.an, align 1, !tbaa !8
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !8
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.q, i64 %indvars.iv.next.1
  store i8 %i.ap, ptr %i.aq, align 1, !tbaa !8
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next.1
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !8
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.q, i64 %indvars.iv.next.2
  store i8 %i.as, ptr %i.at, align 1, !tbaa !8
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next.2
  %i.av = load i8, ptr %i.au, align 1, !tbaa !8
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.q, i64 %indvars.iv.next.3
  store i8 %i.av, ptr %i.aw, align 1, !tbaa !8
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !19

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %vec.epilog.middle.block, %.preheader
  %i.ax = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.q) #22 ; 2 uses
  %i.ay = trunc i64 %i.ax to i32                  ; 3 uses
  %i.az = and i32 %i.ay, 1
  %.not.i17 = icmp eq i32 %i.az, 0
  br i1 %.not.i17, label %.preheader.i19, label %bb.e

.preheader.i19:                                   ; preds = %._crit_edge
  %i.ba = icmp sgt i32 %i.ay, 0
  br i1 %i.ba, label %.lr.ph.preheader.i20, label %cli_hex2num.exit27

.lr.ph.preheader.i20:                             ; preds = %.preheader.i19
  %wide.trip.count.i21 = and i64 %i.ax, 2147483647
  br label %.lr.ph.i22

bb.e:                                             ; preds = %._crit_edge
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.2, ptr noundef nonnull %i.q, i32 noundef %i.ay) #23
  br label %cli_hex2num.exit27

.lr.ph.i22:                                       ; preds = %bb.f, %.lr.ph.preheader.i20
  %indvars.iv.i23 = phi i64 [ 0, %.lr.ph.preheader.i20 ], [ %indvars.iv.next.i25, %bb.f ] ; 2 uses
  %.01215.i24 = phi i32 [ 0, %.lr.ph.preheader.i20 ], [ %i.bi, %bb.f ] ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.q, i64 %indvars.iv.i23
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !8
  %i.bd = zext i8 %i.bc to i64
  %i.be = getelementptr inbounds nuw [4 x i8], ptr @hex_chars, i64 %i.bd
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !9  ; 2 uses
  %i.bg = icmp slt i32 %i.bf, 0
  br i1 %i.bg, label %cli_hex2num.exit27, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i22
  %i.bh = shl i32 %.01215.i24, 4
  %i.bi = or i32 %i.bf, %i.bh                     ; 2 uses
  %indvars.iv.next.i25 = add nuw nsw i64 %indvars.iv.i23, 1 ; 2 uses
  %exitcond.not.i26 = icmp eq i64 %indvars.iv.next.i25, %wide.trip.count.i21
  br i1 %exitcond.not.i26, label %cli_hex2num.exit27, label %.lr.ph.i22

cli_hex2num.exit27:                               ; preds = %.lr.ph.i22, %bb.f, %.preheader.i19, %bb.e
  %.013.i18 = phi i32 [ -1, %bb.e ], [ 0, %.preheader.i19 ], [ %i.bi, %bb.f ], [ %.01215.i24, %.lr.ph.i22 ]
  tail call void @free(ptr noundef %i.q) #23
  br label %cli_hex2num.exit

cli_hex2num.exit:                                 ; preds = %bb.b, %.lr.ph.i, %.preheader.i, %cli_hex2num.exit27, %bb.d
  %.015 = phi i32 [ %.013.i18, %cli_hex2num.exit27 ], [ -1, %bb.d ], [ 0, %.preheader.i ], [ %.01215.i, %.lr.ph.i ], [ %i.n, %bb.b ]
  ret i32 %.015
}

; Function Attrs: nounwind uwtable
define ptr @cli_str2hex(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = shl i32 %1, 1
  %i.b = or disjoint i32 %i.a, 1
  %i.c = zext i32 %i.b to i64
  %i.d = tail call ptr @cli_max_calloc(i64 noundef %i.c, i64 noundef 1) #23 ; 8 uses
  %i.e = icmp ne ptr %i.d, null
  %i.f = icmp ne i32 %1, 0
  %or.cond = and i1 %i.e, %i.f
  br i1 %or.cond, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext i32 %1 to i64           ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.g = icmp eq i32 %1, 1
  br i1 %i.g, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 4294967294
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 3 uses
  %.018 = phi i32 [ 0, %.lr.ph.preheader.new ], [ %i.al, %.lr.ph ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !8
  %i.j = lshr i8 %i.i, 4
  %i.k = zext nneg i8 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr @__const.cli_str2hex.HEX, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !tbaa !8
  %i.n = zext i32 %.018 to i64
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.n
  store i8 %i.m, ptr %i.o, align 1, !tbaa !8
  %i.p = load i8, ptr %i.h, align 1, !tbaa !8
  %i.q = and i8 %i.p, 15
  %i.r = zext nneg i8 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr @__const.cli_str2hex.HEX, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1, !tbaa !8
  %2 = or disjoint i32 %.018, 1
  %3 = zext i32 %2 to i64
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 %3
  store i8 %i.t, ptr %i.u, align 1, !tbaa !8
  %i.v = or disjoint i32 %.018, 2
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 1 ; 2 uses
  %i.y = load i8, ptr %i.x, align 1, !tbaa !8
  %i.z = lshr i8 %i.y, 4
  %i.aa = zext nneg i8 %i.z to i64
  %i.ab = getelementptr inbounds nuw i8, ptr @__const.cli_str2hex.HEX, i64 %i.aa
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !8
  %i.ad = zext i32 %i.v to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ad
  store i8 %i.ac, ptr %i.ae, align 1, !tbaa !8
  %i.af = load i8, ptr %i.x, align 1, !tbaa !8
  %i.ag = and i8 %i.af, 15
  %i.ah = zext nneg i8 %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr @__const.cli_str2hex.HEX, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !8
  %4 = or disjoint i32 %.018, 3
  %5 = zext i32 %4 to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 %5
  store i8 %i.aj, ptr %i.ak, align 1, !tbaa !8
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.al = add i32 %.018, 4                        ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %.loopexit.loopexit.unr-lcssa ]
  %.018.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %i.al, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod21 = trunc i32 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod21)
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.epil.init ; 2 uses
  %i.an = load i8, ptr %i.am, align 1, !tbaa !8
  %i.ao = lshr i8 %i.an, 4
  %i.ap = zext nneg i8 %i.ao to i64
  %i.aq = getelementptr inbounds nuw i8, ptr @__const.cli_str2hex.HEX, i64 %i.ap
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !8
  %i.as = zext i32 %.018.epil.init to i64
  %i.at = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.as
  store i8 %i.ar, ptr %i.at, align 1, !tbaa !8
  %i.au = load i8, ptr %i.am, align 1, !tbaa !8
  %i.av = and i8 %i.au, 15
  %i.aw = zext nneg i8 %i.av to i64
  %i.ax = getelementptr inbounds nuw i8, ptr @__const.cli_str2hex.HEX, i64 %i.aw
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !8
  %i.az = or disjoint i32 %.018.epil.init, 1
  %i.ba = zext i32 %i.az to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ba
  store i8 %i.ay, ptr %i.bb, align 1, !tbaa !8
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.a
  ret ptr %i.d
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(read) uwtable
define range(i32 0, 2) i32 @cli_strbcasestr(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #22 ; 2 uses
  %i.b = trunc i64 %i.a to i32
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #22 ; 2 uses
  %i.d = trunc i64 %i.c to i32
  %i.e = icmp slt i32 %i.b, %i.d
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = sub i64 %i.a, %i.c
  %i.g = and i64 %i.f, 4294967295
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %i.g
  %i.i = tail call i32 @strcasecmp(ptr noundef nonnull %i.h, ptr noundef nonnull %1) #22
  %.not = icmp eq i32 %i.i, 0
  %i.j = zext i1 %.not to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.j, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(read)
declare i32 @strcasecmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define range(i32 -2147483647, -2147483648) i32 @cli_chomp(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #22 ; 2 uses
  %i.c = trunc i64 %i.b to i32                    ; 3 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %.critedge, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.e = icmp sgt i32 %i.c, 0
  br i1 %i.e, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.f = and i64 %i.b, 2147483647
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.critedge2
  %indvars.iv = phi i64 [ %i.f, %.lr.ph.preheader ], [ %indvars.iv.next, %.critedge2 ] ; 3 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next ; 2 uses
  %i.h = load i8, ptr %i.g, align 1, !tbaa !8
  switch i8 %i.h, label %.critedge.loopexit.split.loop.exit25 [
    i8 10, label %.critedge2
    i8 13, label %.critedge2
  ]

.critedge2:                                       ; preds = %.lr.ph, %.lr.ph
  store i8 0, ptr %i.g, align 1, !tbaa !8
  %i.i = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.i, label %.lr.ph, label %.critedge

.critedge.loopexit.split.loop.exit25:             ; preds = %.lr.ph
  %i.j = trunc nuw nsw i64 %indvars.iv to i32
  br label %.critedge

.critedge:                                        ; preds = %.critedge2, %.critedge.loopexit.split.loop.exit25, %.preheader, %bb.b, %bb.a
  %.014 = phi i32 [ 0, %bb.b ], [ -1, %bb.a ], [ %i.c, %.preheader ], [ %i.j, %.critedge.loopexit.split.loop.exit25 ], [ 0, %.critedge2 ]
  ret i32 %.014
}

; Function Attrs: nounwind uwtable
define ptr @cli_strtok(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly %2) local_unnamed_addr #2 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !8       ; 3 uses
  %i.b = icmp ne i8 %i.a, 0
  %i.c = icmp ne i32 %1, 0
  %i.d = and i1 %i.b, %i.c
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.critedge
  %i.e = phi i8 [ %i.r, %.critedge ], [ %i.a, %bb.a ]
  %.03855 = phi i32 [ %i.o, %.critedge ], [ 0, %bb.a ] ; 2 uses
  %.03954 = phi i32 [ %.140, %.critedge ], [ 0, %bb.a ] ; 2 uses
  %i.f = sext i8 %i.e to i32
  %i.g = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %2, i32 noundef %i.f) #22
  %.not49 = icmp eq ptr %i.g, null
  br i1 %.not49, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.h = add nsw i32 %.03954, 1
  %i.i = sext i32 %.03855 to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.d ], [ %i.i, %bb.b ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.j = getelementptr inbounds i8, ptr %0, i64 %indvars.iv.next
  %i.k = load i8, ptr %i.j, align 1, !tbaa !8     ; 2 uses
  %.not50 = icmp eq i8 %i.k, 0
  br i1 %.not50, label %.critedge.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = sext i8 %i.k to i32
  %i.m = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %2, i32 noundef %i.l) #22
  %.not51 = icmp eq ptr %i.m, null
  br i1 %.not51, label %.critedge.loopexit, label %bb.c

.critedge.loopexit:                               ; preds = %bb.d, %bb.c
  %i.n = trunc nsw i64 %indvars.iv to i32
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %.lr.ph
  %.140 = phi i32 [ %.03954, %.lr.ph ], [ %i.h, %.critedge.loopexit ] ; 2 uses
  %.2 = phi i32 [ %.03855, %.lr.ph ], [ %i.n, %.critedge.loopexit ]
  %i.o = add nsw i32 %.2, 1                       ; 3 uses
  %i.p = sext i32 %i.o to i64                     ; 2 uses
  %i.q = getelementptr inbounds i8, ptr %0, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !tbaa !8     ; 3 uses
  %i.s = icmp ne i8 %i.r, 0
  %i.t = icmp ne i32 %.140, %1
  %i.u = select i1 %i.s, i1 %i.t, i1 false
  br i1 %i.u, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.critedge, %bb.a
  %.lcssa53 = phi i64 [ 0, %bb.a ], [ %i.p, %.critedge ]
  %.038.lcssa = phi i32 [ 0, %bb.a ], [ %i.o, %.critedge ] ; 4 uses
  %i.v = phi i8 [ %i.a, %bb.a ], [ %i.r, %.critedge ] ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %0, i64 %.lcssa53
  %.not = icmp eq i8 %i.v, 0
  br i1 %.not, label %bb.i, label %.lr.ph60.preheader

.lr.ph60.preheader:                               ; preds = %._crit_edge
  %i.x = sext i32 %.038.lcssa to i64
  br label %.lr.ph60

.lr.ph60:                                         ; preds = %.lr.ph60.preheader, %bb.e
  %indvars.iv69 = phi i64 [ %i.x, %.lr.ph60.preheader ], [ %indvars.iv.next70, %bb.e ] ; 2 uses
  %i.y = phi i8 [ %i.v, %.lr.ph60.preheader ], [ %i.ad, %bb.e ]
  %.059 = phi i32 [ %.038.lcssa, %.lr.ph60.preheader ], [ %i.ab, %bb.e ]
  %i.z = sext i8 %i.y to i32
  %i.aa = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %2, i32 noundef %i.z) #22
  %.not47 = icmp eq ptr %i.aa, null
  br i1 %.not47, label %bb.e, label %._crit_edge61.split.loop.exit80

bb.e:                                             ; preds = %.lr.ph60
  %indvars.iv.next70 = add nsw i64 %indvars.iv69, 1 ; 2 uses
  %i.ab = add nsw i32 %.059, 1                    ; 2 uses
  %i.ac = getelementptr inbounds i8, ptr %0, i64 %indvars.iv.next70
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !8   ; 2 uses
  %.not46 = icmp eq i8 %i.ad, 0
  br i1 %.not46, label %._crit_edge61, label %.lr.ph60

._crit_edge61.split.loop.exit80:                  ; preds = %.lr.ph60
  %i.ae = trunc nsw i64 %indvars.iv69 to i32
  br label %._crit_edge61

._crit_edge61:                                    ; preds = %bb.e, %._crit_edge61.split.loop.exit80
  %.0.lcssa.ph = phi i32 [ %i.ae, %._crit_edge61.split.loop.exit80 ], [ %i.ab, %bb.e ] ; 2 uses
  %i.af = icmp eq i32 %.038.lcssa, %.0.lcssa.ph
end_hunk_0
