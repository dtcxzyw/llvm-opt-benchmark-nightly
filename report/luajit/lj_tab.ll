Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luajit/original/lj_tab?download=true
inline.NumInlined: 22
inline.NumDeleted: 6
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@lj_tab_get:bb.a
  %i.au = and i32 %i.at, %i.ao
  %i.av = zext i32 %i.au to i64
  %i.aw = getelementptr inbounds nuw [24 x i8], ptr %i.ar, i64 %i.av
  br label %bb.i

bb.i:                                             ; preds = %bb.j, %bb.h
  %.0.i39 = phi ptr [ %i.aw, %bb.h ], [ %i.be, %bb.j ] ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.i39, i64 8
  %i.ay = load i64, ptr %i.ax, align 8            ; 2 uses
  %i.az = icmp ult i64 %i.ay, -1970324836974592
  %i.ba = bitcast i64 %i.ay to double
  %i.bb = fcmp oeq double %i.ba, %i.af
  %or.cond.i40 = and i1 %i.az, %i.bb
  br i1 %or.cond.i40, label %.thread46, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.i39, i64 16
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !25 ; 2 uses
  %i.be = inttoptr i64 %i.bd to ptr
  %.not.i41 = icmp eq i64 %i.bd, 0
  br i1 %.not.i41, label %lj_tab_getstr.exit.thread, label %bb.i, !llvm.loop !4

lj_tab_getinth.exit:                              ; preds = %bb.g
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !20 ; 2 uses
  %i.bh = inttoptr i64 %i.bg to ptr
  %sext = shl i64 %i.z, 32
  %i.bi = ashr exact i64 %sext, 29
  %i.bj = getelementptr inbounds i8, ptr %i.bh, i64 %i.bi
  %.not = icmp eq i64 %i.bg, 0
  br i1 %.not, label %lj_tab_getstr.exit.thread, label %.thread46

bb.k:                                             ; preds = %bb.e
  %i.bk = icmp eq i64 %i.a, -1
  br i1 %i.bk, label %lj_tab_getstr.exit.thread, label %bb.m

bb.l:                                             ; preds = %bb.f
  %i.bl = trunc i64 %i.a to i32
  %sh.diff = lshr i64 %i.a, 31
  %tr.sh.diff = trunc i64 %sh.diff to i32
  %i.bm = and i32 %tr.sh.diff, -2                 ; 5 uses
  %i.bn = xor i32 %i.bm, %i.bl
  %i.bo = tail call i32 @llvm.fshl.i32(i32 %i.bm, i32 %i.bm, i32 14)
  %i.bp = sub i32 %i.bn, %i.bo                    ; 3 uses
  %i.bq = tail call i32 @llvm.fshl.i32(i32 %i.bm, i32 %i.bm, i32 19)
  %i.br = xor i32 %i.bp, %i.bq
  %i.bs = tail call i32 @llvm.fshl.i32(i32 %i.bp, i32 %i.bp, i32 13)
  %i.bt = sub i32 %i.br, %i.bs
  br label %hashkey.exit

bb.m:                                             ; preds = %bb.k
  %.off.i = add nsw i64 %i.b, 3
  %switch.i = icmp ult i64 %.off.i, 2
  br i1 %switch.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bu = trunc nsw i64 %i.b to i32
  %i.bv = sub nuw nsw i32 -2, %i.bu
  br label %hashkey.exit

bb.o:                                             ; preds = %bb.m
  %i.bw = lshr i64 %i.a, 32                       ; 2 uses
  %i.bx = trunc nuw i64 %i.bw to i32              ; 4 uses
  %i.by = xor i64 %i.bw, %i.a
  %i.bz = trunc i64 %i.by to i32
  %i.ca = tail call i32 @llvm.fshl.i32(i32 %i.bx, i32 %i.bx, i32 14)
  %i.cb = sub i32 %i.bz, %i.ca                    ; 3 uses
  %i.cc = tail call i32 @llvm.fshl.i32(i32 %i.bx, i32 %i.bx, i32 19)
  %i.cd = xor i32 %i.cb, %i.cc
  %i.ce = tail call i32 @llvm.fshl.i32(i32 %i.cb, i32 %i.cb, i32 13)
  %i.cf = sub i32 %i.cd, %i.ce
  br label %hashkey.exit

hashkey.exit:                                     ; preds = %bb.l, %bb.n, %bb.o
  %.sink78 = phi i32 [ %i.bt, %bb.l ], [ %i.bv, %bb.n ], [ %i.cf, %bb.o ]
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !22
  %i.ci = and i32 %i.ch, %.sink78
  %.sink.in.in.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sink.in.i = load i64, ptr %.sink.in.in.i, align 8, !tbaa !23
  %.sink.i = inttoptr i64 %.sink.in.i to ptr
  %i.cj = zext i32 %i.ci to i64
  %i.ck = getelementptr inbounds nuw [24 x i8], ptr %.sink.i, i64 %i.cj
  br label %bb.p

bb.p:                                             ; preds = %bb.q, %hashkey.exit
  %.0 = phi ptr [ %i.ck, %hashkey.exit ], [ %i.cp, %bb.q ] ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.cm = tail call i32 @lj_obj_equal(ptr noundef nonnull %i.cl, ptr noundef nonnull %2) #12
  %.not36 = icmp eq i32 %i.cm, 0
  br i1 %.not36, label %bb.q, label %.thread46

bb.q:                                             ; preds = %bb.p
  %i.cn = getelementptr inbounds nuw i8, ptr %.0, i64 16
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !25 ; 2 uses
  %i.cp = inttoptr i64 %i.co to ptr
  %.not37 = icmp eq i64 %i.co, 0
  br i1 %.not37, label %lj_tab_getstr.exit.thread, label %bb.p, !llvm.loop !71

lj_tab_getstr.exit.thread:                        ; preds = %bb.j, %bb.q, %bb.d, %lj_tab_getinth.exit, %bb.k
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !33
  %i.cs = inttoptr i64 %i.cr to ptr
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 248
  br label %.thread46

.thread46:                                        ; preds = %bb.i, %bb.p, %bb.c, %lj_tab_getinth.exit, %lj_tab_getstr.exit.thread
  %.3 = phi ptr [ %i.ct, %lj_tab_getstr.exit.thread ], [ %.0.i, %bb.c ], [ %.0, %bb.p ], [ %i.bj, %lj_tab_getinth.exit ], [ %.0.i39, %bb.i ]
  ret ptr %.3
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare hidden i64 @lj_vm_num2int_check(double noundef) local_unnamed_addr #7

declare hidden i32 @lj_obj_equal(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define hidden ptr @lj_tab_newkey(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [28 x i32], align 16              ; 7 uses
  %i.b = load i64, ptr %2, align 8                ; 7 uses
  %i.c = ashr i64 %i.b, 47                        ; 4 uses
  %i.d = icmp eq i64 %i.c, -5
  %i.e = trunc i64 %i.b to i32
  %i.f = lshr i64 %i.b, 32                        ; 2 uses
  %i.g = trunc nuw i64 %i.f to i32                ; 5 uses
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = and i64 %i.b, 140737488355327
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  %i.k = load i32, ptr %i.j, align 4, !tbaa !21
  br label %hashkey.exit

bb.c:                                             ; preds = %bb.a
  %i.l = icmp ult i64 %i.c, -14
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = shl i32 %i.g, 1                          ; 5 uses
  %i.n = xor i32 %i.m, %i.e
  %i.o = tail call i32 @llvm.fshl.i32(i32 %i.m, i32 %i.m, i32 14)
  %i.p = sub i32 %i.n, %i.o                       ; 3 uses
  %i.q = tail call i32 @llvm.fshl.i32(i32 %i.m, i32 %i.m, i32 19)
  %i.r = xor i32 %i.p, %i.q
  %i.s = tail call i32 @llvm.fshl.i32(i32 %i.p, i32 %i.p, i32 13)
  %i.t = sub i32 %i.r, %i.s
  br label %hashkey.exit

bb.e:                                             ; preds = %bb.c
  %.off.i = add nsw i64 %i.c, 3
  %switch.i = icmp ult i64 %.off.i, 2
  br i1 %switch.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.u = trunc nsw i64 %i.c to i32
  %i.v = sub nuw nsw i32 -2, %i.u
  br label %hashkey.exit

bb.g:                                             ; preds = %bb.e
  %i.w = xor i64 %i.f, %i.b
  %i.x = trunc i64 %i.w to i32
  %i.y = tail call i32 @llvm.fshl.i32(i32 %i.g, i32 %i.g, i32 14)
  %i.z = sub i32 %i.x, %i.y                       ; 3 uses
  %i.aa = tail call i32 @llvm.fshl.i32(i32 %i.g, i32 %i.g, i32 19)
  %i.ab = xor i32 %i.z, %i.aa
  %i.ac = tail call i32 @llvm.fshl.i32(i32 %i.z, i32 %i.z, i32 13)
  %i.ad = sub i32 %i.ab, %i.ac
  br label %hashkey.exit

hashkey.exit:                                     ; preds = %bb.b, %bb.d, %bb.f, %bb.g
  %.sink204 = phi i32 [ %i.k, %bb.b ], [ %i.t, %bb.d ], [ %i.v, %bb.f ], [ %i.ad, %bb.g ]
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !22 ; 4 uses
  %i.ag = and i32 %i.af, %.sink204                ; 2 uses
  %.sink.in.in.i = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %.sink.in.i = load i64, ptr %.sink.in.in.i, align 8, !tbaa !23
  %.sink.i = inttoptr i64 %.sink.in.i to ptr      ; 4 uses
  %i.ah = zext i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %.sink.i, i64 %i.ah ; 11 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !21
  %i.ak = icmp ne i64 %i.aj, -1
  %i.al = icmp eq i32 %i.af, 0
  %or.cond206 = or i1 %i.ak, %i.al
  br i1 %or.cond206, label %bb.h, label %.thread.thread

bb.h:                                             ; preds = %hashkey.exit
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !34
  %i.ao = inttoptr i64 %i.an to ptr
  br label %bb.i

bb.i:                                             ; preds = %bb.z, %bb.h
  %.078 = phi ptr [ %i.ao, %bb.h ], [ %i.eh, %bb.z ] ; 6 uses
  %.not99 = icmp eq ptr %.078, %.sink.i           ; 2 uses
  br i1 %.not99, label %bb.j, label %bb.z

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.a, i8 0, i64 112, i1 false), !tbaa !81
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !19 ; 3 uses
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %countarray.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.j
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.at = add nsw i32 %i.aq, -1                   ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge.i, %.preheader.i
  %indvars.iv.i125 = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next.i130, %._crit_edge.i ] ; 3 uses
  %.02547.i = phi i32 [ 0, %.preheader.i ], [ %.126.lcssa.i, %._crit_edge.i ] ; 12 uses
  %.02845.i = phi i32 [ 0, %.preheader.i ], [ %i.by, %._crit_edge.i ] ; 2 uses
  %i.au = trunc nuw nsw i64 %indvars.iv.i125 to i32
  %i.av = shl nuw nsw i32 2, %i.au                ; 2 uses
  %.not.i126 = icmp ult i32 %i.av, %i.aq
  br i1 %.not.i126, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aw = icmp ugt i32 %.02547.i, %i.at
  br i1 %i.aw, label %countarray.exit, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.0.i127 = phi i32 [ %i.at, %bb.l ], [ %i.av, %bb.k ] ; 5 uses
  %i.ax = load i64, ptr %i.as, align 8, !tbaa !20
  %i.ay = inttoptr i64 %i.ax to ptr               ; 2 uses
  %.not3541.i = icmp ugt i32 %.02547.i, %.0.i127
  br i1 %.not3541.i, label %._crit_edge.i, label %.lr.ph.i128.preheader

.lr.ph.i128.preheader:                            ; preds = %bb.m
  %i.az = add i32 %.02547.i, 1
  %i.ba = add i32 %.0.i127, 1
  %3 = tail call i32 @llvm.umax.i32(i32 %i.az, i32 %i.ba)
  %i.bb = sub i32 %3, %.02547.i                   ; 3 uses
  %min.iters.check = icmp ult i32 %i.bb, 12
  br i1 %min.iters.check, label %.lr.ph.i128.preheader220, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.i128.preheader
  %4 = add i32 %.02547.i, 1
  %5 = add i32 %.0.i127, 1
  %umax = tail call i32 @llvm.umax.i32(i32 %4, i32 %5)
  %6 = add i32 %umax, -1
  %7 = icmp ult i32 %6, %.02547.i
  br i1 %7, label %.lr.ph.i128.preheader220, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i32 %i.bb, -4                      ; 3 uses
  %i.bc = add i32 %.02547.i, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.bl, %vector.body ]
  %vec.phi218 = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.bm, %vector.body ]
  %i.bd = add i32 %.02547.i, %index
  %i.be = zext i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.be ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %wide.load = load <2 x i64>, ptr %i.bf, align 8, !tbaa !21
  %wide.load219 = load <2 x i64>, ptr %i.bg, align 8, !tbaa !21
  %i.bh = icmp ne <2 x i64> %wide.load, splat (i64 -1)
  %i.bi = icmp ne <2 x i64> %wide.load219, splat (i64 -1)
  %i.bj = zext <2 x i1> %i.bh to <2 x i32>
  %i.bk = zext <2 x i1> %i.bi to <2 x i32>
  %i.bl = add <2 x i32> %vec.phi, %i.bj           ; 2 uses
  %i.bm = add <2 x i32> %vec.phi218, %i.bk        ; 2 uses
  %index.next = add nuw i32 %index, 4             ; 2 uses
  %i.bn = icmp eq i32 %index.next, %n.vec
  br i1 %i.bn, label %middle.block, label %vector.body, !llvm.loop !72

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i32> %i.bm, %i.bl
  %i.bo = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i32 %i.bb, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i, label %.lr.ph.i128.preheader220

.lr.ph.i128.preheader220:                         ; preds = %vector.scevcheck, %.lr.ph.i128.preheader, %middle.block
  %.02343.i.ph = phi i32 [ 0, %vector.scevcheck ], [ 0, %.lr.ph.i128.preheader ], [ %i.bo, %middle.block ]
  %.12642.i.ph = phi i32 [ %.02547.i, %vector.scevcheck ], [ %.02547.i, %.lr.ph.i128.preheader ], [ %i.bc, %middle.block ]
  br label %.lr.ph.i128

.lr.ph.i128:                                      ; preds = %.lr.ph.i128.preheader220, %.lr.ph.i128
  %.02343.i.a = phi i32 [ %spec.select.i.a, %.lr.ph.i128 ], [ %.02343.i.ph, %.lr.ph.i128.preheader220 ]
  %.12642.i.a = phi i32 [ %i.bu, %.lr.ph.i128 ], [ %.12642.i.ph, %.lr.ph.i128.preheader220 ] ; 2 uses
  %i.bp = zext i32 %.12642.i.a to i64
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.bp
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !21
  %i.bs = icmp ne i64 %i.br, -1
  %i.bt = zext i1 %i.bs to i32
  %spec.select.i.a = add i32 %.02343.i.a, %i.bt   ; 2 uses
  %i.bu = add i32 %.12642.i.a, 1                  ; 2 uses
  %.not35.i = icmp ugt i32 %i.bu, %.0.i127
  br i1 %.not35.i, label %._crit_edge.loopexit.i, label %.lr.ph.i128, !llvm.loop !73

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i128, %middle.block
  %spec.select.i.lcssa = phi i32 [ %i.bo, %middle.block ], [ %spec.select.i.a, %.lr.ph.i128 ]
  %8 = tail call i32 @llvm.umax.i32(i32 %.02547.i, i32 %.0.i127)
  %umax.i129 = add nuw i32 %8, 1
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.m
  %.126.lcssa.i = phi i32 [ %.02547.i, %bb.m ], [ %umax.i129, %._crit_edge.loopexit.i ]
  %.023.lcssa.i = phi i32 [ 0, %bb.m ], [ %spec.select.i.lcssa, %._crit_edge.loopexit.i ] ; 2 uses
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i125 ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !81
  %i.bx = add i32 %i.bw, %.023.lcssa.i
  store i32 %i.bx, ptr %i.bv, align 4, !tbaa !81
  %i.by = add i32 %.023.lcssa.i, %.02845.i        ; 2 uses
  %indvars.iv.next.i130 = add nuw nsw i64 %indvars.iv.i125, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i130, 28
  br i1 %exitcond.not.i, label %countarray.exit, label %bb.k, !llvm.loop !74

countarray.exit:                                  ; preds = %bb.l, %._crit_edge.i, %bb.j
  %.031.i = phi i32 [ 0, %bb.j ], [ %.02845.i, %bb.l ], [ %i.by, %._crit_edge.i ] ; 2 uses
  %i.bz = add i32 %i.af, 1
  %umax.i = tail call i32 @llvm.umax.i32(i32 %i.bz, i32 1)
  %wide.trip.count.i = zext i32 %umax.i to i64
  br label %bb.n

bb.n:                                             ; preds = %bb.r, %countarray.exit
  %indvars.iv.i = phi i64 [ 0, %countarray.exit ], [ %indvars.iv.next.i, %bb.r ] ; 2 uses
  %.0142.i = phi i32 [ 0, %countarray.exit ], [ %.1.i124, %bb.r ] ; 2 uses
  %.0151.i = phi i32 [ 0, %countarray.exit ], [ %.116.i, %bb.r ] ; 2 uses
  %i.ca = getelementptr inbounds nuw [24 x i8], ptr %.sink.i, i64 %indvars.iv.i ; 2 uses
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !21
  %i.cc = icmp eq i64 %i.cb, -1
  br i1 %i.cc, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.ce = load i64, ptr %i.cd, align 8            ; 2 uses
  %i.cf = icmp ult i64 %i.ce, -1970324836974592
  br i1 %i.cf, label %bb.p, label %countint.exit.i

bb.p:                                             ; preds = %bb.o
  %i.cg = bitcast i64 %i.ce to double
  %i.ch = tail call i64 @lj_vm_num2int_check(double noundef %i.cg) #14
  %i.ci = trunc i64 %i.ch to i32                  ; 3 uses
  %i.cj = icmp ult i32 %i.ci, 134217729
  br i1 %i.cj, label %bb.q, label %countint.exit.i

bb.q:                                             ; preds = %bb.p
  %i.ck = icmp samesign ugt i32 %i.ci, 2
  %i.cl = add nsw i32 %i.ci, -1
  %i.cm = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.cl, i1 true)
  %i.cn = xor i32 %i.cm, 31
  %narrow.i.i = select i1 %i.ck, i32 %i.cn, i32 0
  %i.co = zext nneg i32 %narrow.i.i to i64
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.co ; 2 uses
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !81
  %i.cr = add i32 %i.cq, 1
  store i32 %i.cr, ptr %i.cp, align 4, !tbaa !81
  br label %countint.exit.i

countint.exit.i:                                  ; preds = %bb.q, %bb.p, %bb.o
  %.1.i.i = phi i32 [ 1, %bb.q ], [ 0, %bb.o ], [ 0, %bb.p ]
  %i.cs = add i32 %.1.i.i, %.0142.i
  %i.ct = add i32 %.0151.i, 1
  br label %bb.r

bb.r:                                             ; preds = %countint.exit.i, %bb.n
  %.116.i = phi i32 [ %.0151.i, %bb.n ], [ %i.ct, %countint.exit.i ] ; 2 uses
  %.1.i124 = phi i32 [ %.0142.i, %bb.n ], [ %i.cs, %countint.exit.i ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.i, label %counthash.exit, label %bb.n, !llvm.loop !75

counthash.exit:                                   ; preds = %bb.r
  %i.cu = add i32 %.031.i, 1
  %i.cv = add i32 %.1.i124, %.031.i
  %i.cw = add i32 %i.cu, %.116.i                  ; 2 uses
  %i.cx = icmp ult i64 %i.b, -1970324836974592
  br i1 %i.cx, label %bb.s, label %countint.exit

bb.s:                                             ; preds = %counthash.exit
  %i.cy = bitcast i64 %i.b to double
  %i.cz = tail call i64 @lj_vm_num2int_check(double noundef %i.cy) #14
  %i.da = trunc i64 %i.cz to i32                  ; 3 uses
  %i.db = icmp ult i32 %i.da, 134217729
  br i1 %i.db, label %bb.t, label %countint.exit

bb.t:                                             ; preds = %bb.s
  %i.dc = icmp samesign ugt i32 %i.da, 2
  %i.dd = add nsw i32 %i.da, -1
  %i.de = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.dd, i1 true)
  %i.df = xor i32 %i.de, 31
  %narrow.i = select i1 %i.dc, i32 %i.df, i32 0
  %i.dg = zext nneg i32 %narrow.i to i64
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.dg ; 2 uses
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !81
  %i.dj = add i32 %i.di, 1
  store i32 %i.dj, ptr %i.dh, align 4, !tbaa !81
  br label %countint.exit

countint.exit:                                    ; preds = %counthash.exit, %bb.s, %bb.t
  %.1.i123 = phi i32 [ 1, %bb.t ], [ 0, %counthash.exit ], [ 0, %bb.s ]
  %i.dk = add i32 %i.cv, %.1.i123                 ; 2 uses
  %i.dl = shl i32 %i.dk, 1                        ; 2 uses
  %.not28.i = icmp eq i32 %i.dl, 0
  br i1 %.not28.i, label %bestasize.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %countint.exit, %bb.w
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.w ], [ 0, %countint.exit ] ; 4 uses
  %i.dm = phi i32 [ %i.dw, %bb.w ], [ 1, %countint.exit ]
  %.026.i = phi i32 [ %.1.i, %bb.w ], [ 0, %countint.exit ] ; 2 uses
  %.01625.i = phi i32 [ %.117.i, %bb.w ], [ 0, %countint.exit ] ; 2 uses
  %.01824.i = phi i32 [ %.119.i, %bb.w ], [ 0, %countint.exit ] ; 2 uses
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !81 ; 2 uses
  %.not.i122 = icmp eq i32 %i.do, 0
  br i1 %.not.i122, label %bb.w, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i
  %i.dp = add i32 %i.do, %.01824.i                ; 4 uses
  %i.dq = shl i32 %i.dp, 1
  %i.dr = icmp ugt i32 %i.dq, %i.dm
  br i1 %i.dr, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ds = trunc nuw i64 %indvars.iv to i32
  %i.dt = shl i32 2, %i.ds
  %i.du = or disjoint i32 %i.dt, 1
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %.lr.ph.i
  %.119.i = phi i32 [ %i.dp, %bb.v ], [ %i.dp, %bb.u ], [ %.01824.i, %.lr.ph.i ] ; 2 uses
  %.117.i = phi i32 [ %i.dp, %bb.v ], [ %.01625.i, %bb.u ], [ %.01625.i, %.lr.ph.i ] ; 2 uses
  %.1.i = phi i32 [ %i.du, %bb.v ], [ %.026.i, %bb.u ], [ %.026.i, %.lr.ph.i ] ; 2 uses
  %indvars.iv.next = add nuw i64 %indvars.iv, 1
  %i.dv = trunc nuw i64 %indvars.iv to i32
  %i.dw = shl nuw i32 2, %i.dv                    ; 2 uses
  %i.dx = icmp ugt i32 %i.dl, %i.dw
  %i.dy = icmp ne i32 %.119.i, %i.dk
  %i.dz = select i1 %i.dx, i1 %i.dy, i1 false
  br i1 %i.dz, label %.lr.ph.i, label %bestasize.exit, !llvm.loop !76

bestasize.exit:                                   ; preds = %bb.w, %countint.exit
  %.016.lcssa.i = phi i32 [ 0, %countint.exit ], [ %.117.i, %bb.w ] ; 2 uses
  %.0.lcssa.i = phi i32 [ 0, %countint.exit ], [ %.1.i, %bb.w ]
  %i.ea = sub i32 %i.cw, %.016.lcssa.i            ; 2 uses
  %.not.i = icmp eq i32 %i.cw, %.016.lcssa.i
  br i1 %.not.i, label %rehashtab.exit, label %bb.x

bb.x:                                             ; preds = %bestasize.exit
  %i.eb = icmp eq i32 %i.ea, 1
  br i1 %i.eb, label %rehashtab.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ec = add i32 %i.ea, -1
  %i.ed = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ec, i1 true)
  %i.ee = sub nuw nsw i32 32, %i.ed
  br label %rehashtab.exit

rehashtab.exit:                                   ; preds = %bestasize.exit, %bb.x, %bb.y
  %i.ef = phi i32 [ 1, %bb.x ], [ %i.ee, %bb.y ], [ 0, %bestasize.exit ]
  tail call void @lj_tab_resize(ptr noundef %0, ptr noundef %1, i32 noundef %.0.lcssa.i, i32 noundef %i.ef), !inline_history !77
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.eg = tail call ptr @lj_tab_set(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2)
  br label %.thread

bb.z:                                             ; preds = %bb.i
  %i.eh = getelementptr inbounds i8, ptr %.078, i64 -24 ; 5 uses
  %i.ei = getelementptr inbounds i8, ptr %.078, i64 -16
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !21
  %.not = icmp eq i64 %i.ej, -1
  br i1 %.not, label %bb.aa, label %bb.i, !llvm.loop !78

bb.aa:                                            ; preds = %bb.z
  %i.ek = getelementptr inbounds i8, ptr %.078, i64 -16
  %i.el = ptrtoint ptr %i.eh to i64               ; 3 uses
  store i64 %i.el, ptr %i.am, align 8, !tbaa !34
  %i.em = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 2 uses
  %i.en = load i64, ptr %i.em, align 8            ; 5 uses
  %i.eo = ashr i64 %i.en, 47                      ; 4 uses
  %i.ep = icmp eq i64 %i.eo, -5
  %i.eq = trunc i64 %i.en to i32
  %i.er = lshr i64 %i.en, 32                      ; 2 uses
  %i.es = trunc nuw i64 %i.er to i32              ; 5 uses
  br i1 %i.ep, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.et = and i64 %i.en, 140737488355327
  %i.eu = inttoptr i64 %i.et to ptr
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 12
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !21
  br label %hashkey.exit107

bb.ac:                                            ; preds = %bb.aa
  %i.ex = icmp ult i64 %i.eo, -14
  br i1 %i.ex, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.ey = shl i32 %i.es, 1                        ; 5 uses
  %i.ez = xor i32 %i.ey, %i.eq
  %i.fa = tail call i32 @llvm.fshl.i32(i32 %i.ey, i32 %i.ey, i32 14)
  %i.fb = sub i32 %i.ez, %i.fa                    ; 3 uses
  %i.fc = tail call i32 @llvm.fshl.i32(i32 %i.ey, i32 %i.ey, i32 19)
  %i.fd = xor i32 %i.fb, %i.fc
  %i.fe = tail call i32 @llvm.fshl.i32(i32 %i.fb, i32 %i.fb, i32 13)
  %i.ff = sub i32 %i.fd, %i.fe
  br label %hashkey.exit107

bb.ae:                                            ; preds = %bb.ac
  %.off.i101 = add nsw i64 %i.eo, 3
  %switch.i102 = icmp ult i64 %.off.i101, 2
  br i1 %switch.i102, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.fg = trunc nsw i64 %i.eo to i32
  %i.fh = sub nuw nsw i32 -2, %i.fg
  br label %hashkey.exit107

bb.ag:                                            ; preds = %bb.ae
  %i.fi = xor i64 %i.er, %i.en
  %i.fj = trunc i64 %i.fi to i32
  %i.fk = tail call i32 @llvm.fshl.i32(i32 %i.es, i32 %i.es, i32 14)
  %i.fl = sub i32 %i.fj, %i.fk                    ; 3 uses
  %i.fm = tail call i32 @llvm.fshl.i32(i32 %i.es, i32 %i.es, i32 19)
  %i.fn = xor i32 %i.fl, %i.fm
  %i.fo = tail call i32 @llvm.fshl.i32(i32 %i.fl, i32 %i.fl, i32 13)
  %i.fp = sub i32 %i.fn, %i.fo
  br label %hashkey.exit107

hashkey.exit107:                                  ; preds = %bb.ab, %bb.ad, %bb.af, %bb.ag
  %.pn = phi i32 [ %i.fp, %bb.ag ], [ %i.fh, %bb.af ], [ %i.ff, %bb.ad ], [ %i.ew, %bb.ab ]
  %.sink18.i103 = and i32 %i.af, %.pn             ; 2 uses
  %.not93 = icmp eq i32 %.sink18.i103, %i.ag
  br i1 %.not93, label %.thread136, label %.preheader.preheader

.preheader.preheader:                             ; preds = %hashkey.exit107
  %i.fq = zext i32 %.sink18.i103 to i64
  %i.fr = getelementptr inbounds nuw [24 x i8], ptr %.sink.i, i64 %i.fq
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %.080 = phi ptr [ %i.fu, %.preheader ], [ %i.fr, %.preheader.preheader ] ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %.080, i64 16
  %i.ft = load i64, ptr %i.fs, align 8, !tbaa !25
  %i.fu = inttoptr i64 %i.ft to ptr               ; 2 uses
  %.not94 = icmp eq ptr %i.ai, %i.fu
  br i1 %.not94, label %bb.ah, label %.preheader, !llvm.loop !79

bb.ah:                                            ; preds = %.preheader
  %i.fv = getelementptr inbounds nuw i8, ptr %.080, i64 16
  store i64 %i.el, ptr %i.fv, align 8, !tbaa !25
  %i.fw = load i64, ptr %i.ai, align 8, !tbaa !21
  store i64 %i.fw, ptr %i.eh, align 8, !tbaa !21
  %i.fx = load i64, ptr %i.em, align 8, !tbaa !21
  store i64 %i.fx, ptr %i.ek, align 8, !tbaa !21
  %i.fy = getelementptr inbounds i8, ptr %.078, i64 -8 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 4 uses
  %i.ga = load i64, ptr %i.fz, align 8, !tbaa !82
  store i64 %i.ga, ptr %i.fy, align 8, !tbaa !82
  store i64 0, ptr %i.fz, align 8, !tbaa !25
  store i64 -1, ptr %i.ai, align 8, !tbaa !21
  %i.gb = load i64, ptr %i.fy, align 8, !tbaa !25 ; 2 uses
  %.not95151 = icmp eq i64 %i.gb, 0
  br i1 %.not95151, label %.thread.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ah
  %i.gc = getelementptr inbounds nuw i8, ptr %1, i64 52
  br label %bb.ai

bb.ai:                                            ; preds = %.lr.ph, %bb.ba
  %i.gd = phi i64 [ %i.gb, %.lr.ph ], [ %i.jn, %bb.ba ] ; 2 uses
  %.179152 = phi ptr [ %i.eh, %.lr.ph ], [ %i.ge, %bb.ba ] ; 2 uses
  %i.ge = inttoptr i64 %i.gd to ptr               ; 5 uses
  %i.gf = load i64, ptr %i.ge, align 8, !tbaa !21
  %i.gg = icmp eq i64 %i.gf, -1
  br i1 %i.gg, label %bb.ba, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ge, i64 8
  %i.gi = load i64, ptr %i.gh, align 8            ; 5 uses
  %i.gj = ashr i64 %i.gi, 47                      ; 4 uses
  %i.gk = icmp eq i64 %i.gj, -5
  %i.gl = trunc i64 %i.gi to i32
  %i.gm = lshr i64 %i.gi, 32                      ; 2 uses
  %i.gn = trunc nuw i64 %i.gm to i32              ; 5 uses
  br i1 %i.gk, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.go = and i64 %i.gi, 140737488355327
  %i.gp = inttoptr i64 %i.go to ptr
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 12
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !21
  br label %hashkey.exit114

bb.al:                                            ; preds = %bb.aj
  %i.gs = icmp ult i64 %i.gj, -14
  br i1 %i.gs, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.gt = shl i32 %i.gn, 1                        ; 5 uses
  %i.gu = xor i32 %i.gt, %i.gl
  %i.gv = tail call i32 @llvm.fshl.i32(i32 %i.gt, i32 %i.gt, i32 14)
  %i.gw = sub i32 %i.gu, %i.gv                    ; 3 uses
  %i.gx = tail call i32 @llvm.fshl.i32(i32 %i.gt, i32 %i.gt, i32 19)
  %i.gy = xor i32 %i.gw, %i.gx
  %i.gz = tail call i32 @llvm.fshl.i32(i32 %i.gw, i32 %i.gw, i32 13)
  %i.ha = sub i32 %i.gy, %i.gz
  br label %hashkey.exit114

bb.an:                                            ; preds = %bb.al
  %.off.i108 = add nsw i64 %i.gj, 3
  %switch.i109 = icmp ult i64 %.off.i108, 2
  br i1 %switch.i109, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.hb = trunc nsw i64 %i.gj to i32
  %i.hc = sub nuw nsw i32 -2, %i.hb
  br label %hashkey.exit114

bb.ap:                                            ; preds = %bb.an
  %i.hd = xor i64 %i.gm, %i.gi
  %i.he = trunc i64 %i.hd to i32
  %i.hf = tail call i32 @llvm.fshl.i32(i32 %i.gn, i32 %i.gn, i32 14)
  %i.hg = sub i32 %i.he, %i.hf                    ; 3 uses
  %i.hh = tail call i32 @llvm.fshl.i32(i32 %i.gn, i32 %i.gn, i32 19)
  %i.hi = xor i32 %i.hg, %i.hh
  %i.hj = tail call i32 @llvm.fshl.i32(i32 %i.hg, i32 %i.hg, i32 13)
  %i.hk = sub i32 %i.hi, %i.hj
  br label %hashkey.exit114

hashkey.exit114:                                  ; preds = %bb.ak, %bb.am, %bb.ao, %bb.ap
  %.sink207 = phi i32 [ %i.gr, %bb.ak ], [ %i.ha, %bb.am ], [ %i.hc, %bb.ao ], [ %i.hk, %bb.ap ]
  %i.hl = load i32, ptr %i.gc, align 4, !tbaa !22 ; 2 uses
  %i.hm = and i32 %i.hl, %.sink207
  %.sink.in.i112 = load i64, ptr %.sink.in.in.i, align 8, !tbaa !23
  %.sink.i113 = inttoptr i64 %.sink.in.i112 to ptr
  %i.hn = zext i32 %i.hm to i64
  %i.ho = getelementptr inbounds nuw [24 x i8], ptr %.sink.i113, i64 %i.hn
  %i.hp = icmp eq ptr %i.ho, %i.ai
  br i1 %i.hp, label %bb.aq, label %bb.ba

bb.aq:                                            ; preds = %hashkey.exit114
  %i.hq = getelementptr inbounds nuw i8, ptr %.179152, i64 16 ; 3 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.ge, i64 16 ; 2 uses
  %i.hs = load i64, ptr %i.hr, align 8, !tbaa !82
  store i64 %i.hs, ptr %i.hq, align 8, !tbaa !82
  %i.ht = load i64, ptr %i.fz, align 8, !tbaa !82
  store i64 %i.ht, ptr %i.hr, align 8, !tbaa !82
  store i64 %i.gd, ptr %i.fz, align 8, !tbaa !25
  %i.hu = load i64, ptr %i.hq, align 8, !tbaa !25 ; 2 uses
  %.not96153 = icmp eq i64 %i.hu, 0
  br i1 %.not96153, label %.thread, label %.lr.ph155

.lr.ph155:                                        ; preds = %bb.aq, %bb.az
  %i.hv = phi i64 [ %i.jl, %bb.az ], [ %i.hu, %bb.aq ] ; 2 uses
  %i.hw = phi ptr [ %i.jk, %bb.az ], [ %i.hq, %bb.aq ]
  %.2154 = phi ptr [ %.4, %bb.az ], [ %.179152, %bb.aq ] ; 2 uses
  %i.hx = inttoptr i64 %i.hv to ptr               ; 6 uses
  %i.hy = load i64, ptr %i.hx, align 8, !tbaa !21
  %i.hz = icmp eq i64 %i.hy, -1
  br i1 %i.hz, label %bb.az, label %bb.ar

bb.ar:                                            ; preds = %.lr.ph155
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hx, i64 8
  %i.ib = load i64, ptr %i.ia, align 8            ; 5 uses
  %i.ic = ashr i64 %i.ib, 47                      ; 4 uses
  %i.id = icmp eq i64 %i.ic, -5
  %i.ie = trunc i64 %i.ib to i32
  %i.if = lshr i64 %i.ib, 32                      ; 2 uses
  %i.ig = trunc nuw i64 %i.if to i32              ; 5 uses
  br i1 %i.id, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.ih = and i64 %i.ib, 140737488355327
  %i.ii = inttoptr i64 %i.ih to ptr
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 12
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !21
  br label %hashkey.exit121

bb.at:                                            ; preds = %bb.ar
  %i.il = icmp ult i64 %i.ic, -14
  br i1 %i.il, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.im = shl i32 %i.ig, 1                        ; 5 uses
  %i.in = xor i32 %i.im, %i.ie
  %i.io = tail call i32 @llvm.fshl.i32(i32 %i.im, i32 %i.im, i32 14)
  %i.ip = sub i32 %i.in, %i.io                    ; 3 uses
  %i.iq = tail call i32 @llvm.fshl.i32(i32 %i.im, i32 %i.im, i32 19)
  %i.ir = xor i32 %i.ip, %i.iq
  %i.is = tail call i32 @llvm.fshl.i32(i32 %i.ip, i32 %i.ip, i32 13)
  %i.it = sub i32 %i.ir, %i.is
  br label %hashkey.exit121

bb.av:                                            ; preds = %bb.at
  %.off.i115 = add nsw i64 %i.ic, 3
  %switch.i116 = icmp ult i64 %.off.i115, 2
  br i1 %switch.i116, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.iu = trunc nsw i64 %i.ic to i32
  %i.iv = sub nuw nsw i32 -2, %i.iu
  br label %hashkey.exit121

bb.ax:                                            ; preds = %bb.av
  %i.iw = xor i64 %i.if, %i.ib
  %i.ix = trunc i64 %i.iw to i32
  %i.iy = tail call i32 @llvm.fshl.i32(i32 %i.ig, i32 %i.ig, i32 14)
  %i.iz = sub i32 %i.ix, %i.iy                    ; 3 uses
  %i.ja = tail call i32 @llvm.fshl.i32(i32 %i.ig, i32 %i.ig, i32 19)
  %i.jb = xor i32 %i.iz, %i.ja
  %i.jc = tail call i32 @llvm.fshl.i32(i32 %i.iz, i32 %i.iz, i32 13)
  %i.jd = sub i32 %i.jb, %i.jc
  br label %hashkey.exit121

hashkey.exit121:                                  ; preds = %bb.as, %bb.au, %bb.aw, %bb.ax
  %.pn190 = phi i32 [ %i.jd, %bb.ax ], [ %i.iv, %bb.aw ], [ %i.it, %bb.au ], [ %i.ik, %bb.as ]
  %.sink18.i117 = and i32 %i.hl, %.pn190
  %.sink.in.i119 = load i64, ptr %.sink.in.in.i, align 8, !tbaa !23
  %.sink.i120 = inttoptr i64 %.sink.in.i119 to ptr
  %i.je = zext i32 %.sink18.i117 to i64
  %i.jf = getelementptr inbounds nuw [24 x i8], ptr %.sink.i120, i64 %i.je ; 3 uses
  %.not97 = icmp eq ptr %i.jf, %.2154
  %.not98 = icmp eq ptr %i.jf, %i.hx
  %or.cond = or i1 %.not97, %.not98
  br i1 %or.cond, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %hashkey.exit121
  %i.jg = getelementptr inbounds nuw i8, ptr %i.hx, i64 16 ; 2 uses
  %i.jh = load i64, ptr %i.jg, align 8, !tbaa !82
  store i64 %i.jh, ptr %i.hw, align 8, !tbaa !82
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jf, i64 16 ; 2 uses
  %i.jj = load i64, ptr %i.ji, align 8, !tbaa !82
  store i64 %i.jj, ptr %i.jg, align 8, !tbaa !82
  store i64 %i.hv, ptr %i.ji, align 8, !tbaa !25
  br label %bb.az

bb.az:                                            ; preds = %.lr.ph155, %bb.ay, %hashkey.exit121
  %.4 = phi ptr [ %i.hx, %hashkey.exit121 ], [ %.2154, %bb.ay ], [ %i.hx, %.lr.ph155 ] ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %.4, i64 16 ; 2 uses
  %i.jl = load i64, ptr %i.jk, align 8, !tbaa !25 ; 2 uses
  %.not96 = icmp eq i64 %i.jl, 0
  br i1 %.not96, label %.thread, label %.lr.ph155, !llvm.loop !80

bb.ba:                                            ; preds = %bb.ai, %hashkey.exit114
  %i.jm = getelementptr inbounds nuw i8, ptr %i.ge, i64 16
  %i.jn = load i64, ptr %i.jm, align 8, !tbaa !25 ; 2 uses
  %.not95 = icmp eq i64 %i.jn, 0
  br i1 %.not95, label %.thread, label %bb.ai

.thread136:                                       ; preds = %hashkey.exit107
  %i.jo = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 2 uses
  %i.jp = load i64, ptr %i.jo, align 8, !tbaa !25
  %i.jq = getelementptr inbounds i8, ptr %.078, i64 -8
  store i64 %i.jp, ptr %i.jq, align 8, !tbaa !25
  store i64 %i.el, ptr %i.jo, align 8, !tbaa !25
  br label %.thread.thread

.thread:                                          ; preds = %bb.ba, %bb.az, %bb.aq, %rehashtab.exit
  %.084 = phi ptr [ %i.eg, %rehashtab.exit ], [ undef, %bb.aq ], [ undef, %bb.az ], [ undef, %bb.ba ]
  br i1 %.not99, label %bb.be, label %.thread.thread

.thread.thread:                                   ; preds = %hashkey.exit, %bb.ah, %.thread136, %.thread
  %.283 = phi ptr [ %i.ai, %.thread ], [ %i.ai, %hashkey.exit ], [ %i.eh, %.thread136 ], [ %i.ai, %bb.ah ] ; 3 uses
  %i.jr = load i64, ptr %2, align 8, !tbaa !21    ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %.283, i64 8
  %i.jt = icmp eq i64 %i.jr, -9223372036854775808
  br i1 %i.jt, label %bb.bb, label %bb.bc, !prof !51

bb.bb:                                            ; preds = %.thread.thread
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %.thread.thread
  %storemerge = phi i64 [ 0, %bb.bb ], [ %i.jr, %.thread.thread ]
  store i64 %storemerge, ptr %i.js, align 8, !tbaa !21
  %i.ju = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.jv = load i8, ptr %i.ju, align 8, !tbaa !21  ; 2 uses
  %i.jw = and i8 %i.jv, 4
  %.not100 = icmp eq i8 %i.jw, 0
  br i1 %.not100, label %bb.be, label %bb.bd, !prof !52

bb.bd:                                            ; preds = %bb.bc
  %i.jx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.jy = load i64, ptr %i.jx, align 8, !tbaa !33
  %i.jz = inttoptr i64 %i.jy to ptr
  %i.ka = and i8 %i.jv, -5
  store i8 %i.ka, ptr %i.ju, align 8, !tbaa !21
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jz, i64 64 ; 2 uses
  %i.kc = load i64, ptr %i.kb, align 8, !tbaa !83
  %i.kd = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %i.kc, ptr %i.kd, align 8, !tbaa !84
  %i.ke = ptrtoint ptr %1 to i64
  store i64 %i.ke, ptr %i.kb, align 8, !tbaa !83
  br label %bb.be

bb.be:                                            ; preds = %bb.bc, %bb.bd, %.thread
  %.185 = phi ptr [ %.084, %.thread ], [ %.283, %bb.bd ], [ %.283, %bb.bc ]
  ret ptr %.185
}

; Function Attrs: nounwind uwtable
define hidden ptr @lj_tab_setstr(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %union.TValue, align 8              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !50
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.d = load i64, ptr %i.c, align 8, !tbaa !23
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.g = load i32, ptr %i.f, align 4, !tbaa !22
  %i.h = and i32 %i.g, %i.b
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %i.i
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.0 = phi ptr [ %i.j, %bb.a ], [ %i.s, %bb.c ]  ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !21   ; 2 uses
  %.mask = and i64 %i.l, -140737488355328
  %i.m = icmp eq i64 %.mask, -703687441776640
  %i.n = and i64 %i.l, 140737488355327
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = icmp eq ptr %2, %i.o
  %or.cond = and i1 %i.m, %i.p
  br i1 %or.cond, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %.0, i64 16
  %i.r = load i64, ptr %i.q, align 8, !tbaa !25   ; 2 uses
  %i.s = inttoptr i64 %i.r to ptr
  %.not = icmp eq i64 %i.r, 0
  br i1 %.not, label %bb.d, label %bb.b, !llvm.loop !3

bb.d:                                             ; preds = %bb.c
  %i.t = ptrtoint ptr %2 to i64
  %i.u = or i64 %i.t, -703687441776640
  store i64 %i.u, ptr %3, align 8, !tbaa !21
  %i.v = call ptr @lj_tab_newkey(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.d
  %.012 = phi ptr [ %i.v, %bb.d ], [ %.0, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  ret ptr %.012
}

; Function Attrs: nounwind uwtable
define hidden i32 @lj_tab_keyindex(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %1, align 8                ; 8 uses
  %i.b = icmp ult i64 %i.a, -1970324836974592
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = bitcast i64 %i.a to double
  %i.d = tail call i64 @lj_vm_num2int_check(double noundef %i.c) #14
  %i.e = trunc i64 %i.d to i32                    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = load i32, ptr %i.f, align 8, !tbaa !19
  %.not.not = icmp ugt i32 %i.g, %i.e
  %i.h = add nuw i32 %i.e, 1
  br i1 %.not.not, label %bb.o, label %.thread

bb.c:                                             ; preds = %bb.a
  %i.i = icmp eq i64 %i.a, -1
  br i1 %i.i, label %bb.o, label %.thread

.thread:                                          ; preds = %bb.b, %bb.c
  %i.j = ashr i64 %i.a, 47                        ; 4 uses
  %i.k = icmp eq i64 %i.j, -5
  %i.l = trunc i64 %i.a to i32
  %i.m = lshr i64 %i.a, 32                        ; 2 uses
  %i.n = trunc nuw i64 %i.m to i32                ; 5 uses
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.thread
  %i.o = and i64 %i.a, 140737488355327
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  %i.r = load i32, ptr %i.q, align 4, !tbaa !21
  br label %hashkey.exit

bb.e:                                             ; preds = %.thread
  %i.s = icmp ult i64 %i.j, -14
  br i1 %i.s, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.t = shl i32 %i.n, 1                          ; 5 uses
  %i.u = xor i32 %i.t, %i.l
  %i.v = tail call i32 @llvm.fshl.i32(i32 %i.t, i32 %i.t, i32 14)
  %i.w = sub i32 %i.u, %i.v                       ; 3 uses
  %i.x = tail call i32 @llvm.fshl.i32(i32 %i.t, i32 %i.t, i32 19)
  %i.y = xor i32 %i.w, %i.x
  %i.z = tail call i32 @llvm.fshl.i32(i32 %i.w, i32 %i.w, i32 13)
  %i.aa = sub i32 %i.y, %i.z
  br label %hashkey.exit

bb.g:                                             ; preds = %bb.e
  %.off.i = add nsw i64 %i.j, 3
  %switch.i = icmp ult i64 %.off.i, 2
  br i1 %switch.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ab = trunc nsw i64 %i.j to i32
  %i.ac = sub nuw nsw i32 -2, %i.ab
  br label %hashkey.exit

bb.i:                                             ; preds = %bb.g
  %i.ad = xor i64 %i.m, %i.a
  %i.ae = trunc i64 %i.ad to i32
  %i.af = tail call i32 @llvm.fshl.i32(i32 %i.n, i32 %i.n, i32 14)
  %i.ag = sub i32 %i.ae, %i.af                    ; 3 uses
  %i.ah = tail call i32 @llvm.fshl.i32(i32 %i.n, i32 %i.n, i32 19)
  %i.ai = xor i32 %i.ag, %i.ah
  %i.aj = tail call i32 @llvm.fshl.i32(i32 %i.ag, i32 %i.ag, i32 13)
  %i.ak = sub i32 %i.ai, %i.aj
  br label %hashkey.exit

hashkey.exit:                                     ; preds = %bb.d, %bb.f, %bb.h, %bb.i
  %.sink28 = phi i32 [ %i.r, %bb.d ], [ %i.aa, %bb.f ], [ %i.ac, %bb.h ], [ %i.ak, %bb.i ]
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.am = load i32, ptr %i.al, align 4, !tbaa !22
  %i.an = and i32 %i.am, %.sink28
  %.sink.in.in.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %.sink.in.i = load i64, ptr %.sink.in.in.i, align 8, !tbaa !23
  %.sink.i = inttoptr i64 %.sink.in.i to ptr
  %i.ao = zext i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw [24 x i8], ptr %.sink.i, i64 %i.ao
  br label %bb.j

bb.j:                                             ; preds = %bb.l, %hashkey.exit
  %.0 = phi ptr [ %i.ap, %hashkey.exit ], [ %i.bd, %bb.l ] ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.ar = tail call i32 @lj_obj_equal(ptr noundef nonnull %i.aq, ptr noundef nonnull %1) #12
  %.not = icmp eq i32 %i.ar, 0
  br i1 %.not, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.at = load i32, ptr %i.as, align 8, !tbaa !19
  %i.au = getelementptr inbounds nuw i8, ptr %.0, i64 24
  %i.av = load i64, ptr %.sink.in.in.i, align 8, !tbaa !23
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = sub i64 %i.aw, %i.av
  %i.ay = sdiv exact i64 %i.ax, 24
  %i.az = trunc i64 %i.ay to i32
  %i.ba = add i32 %i.at, %i.az
  br label %bb.o

bb.l:                                             ; preds = %bb.j
  %i.bb = getelementptr inbounds nuw i8, ptr %.0, i64 16
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !25 ; 2 uses
  %i.bd = inttoptr i64 %i.bc to ptr
  %.not22 = icmp eq i64 %i.bc, 0
  br i1 %.not22, label %bb.m, label %bb.j, !llvm.loop !85

bb.m:                                             ; preds = %bb.l
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !21
  %i.bg = icmp eq i32 %i.bf, -98305
  br i1 %i.bg, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bh = load i32, ptr %1, align 8, !tbaa !21
  br label %bb.o

bb.o:                                             ; preds = %bb.c, %bb.k, %bb.n, %bb.m, %bb.b
  %.2 = phi i32 [ -1, %bb.m ], [ %i.h, %bb.b ], [ %i.ba, %bb.k ], [ %i.bh, %bb.n ], [ 0, %bb.c ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define hidden range(i32 -1, 2) i32 @lj_tab_next(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @lj_tab_keyindex(ptr noundef %0, ptr noundef %1) ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load i32, ptr %i.b, align 8, !tbaa !19   ; 4 uses
  %i.d = icmp ult i32 %i.a, %i.c
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !20
  %i.g = inttoptr i64 %i.f to ptr                 ; 2 uses
  %i.h = zext i32 %i.a to i64
  %wide.trip.count = zext i32 %i.c to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.critedge
  %indvars.iv = phi i64 [ %i.h, %.lr.ph ], [ %indvars.iv.next, %.critedge ] ; 4 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv
  %i.j = load i64, ptr %i.i, align 8, !tbaa !21
  %.not33 = icmp eq i64 %i.j, -1
  br i1 %.not33, label %.critedge, label %bb.c, !prof !51

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv
  %i.l = trunc nuw i64 %indvars.iv to i32
  %i.m = sitofp i32 %i.l to double
  store double %i.m, ptr %2, align 8, !tbaa !21
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.o = load i64, ptr %i.k, align 8, !tbaa !21
  store i64 %i.o, ptr %i.n, align 8, !tbaa !21
  br label %bb.f

.critedge:                                        ; preds = %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !86

._crit_edge:                                      ; preds = %.critedge, %bb.a
  %.028.lcssa = phi i32 [ %i.a, %bb.a ], [ %i.c, %.critedge ]
  %i.p = sub nuw i32 %.028.lcssa, %i.c            ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.r = load i32, ptr %i.q, align 4, !tbaa !22   ; 2 uses
  %.not45 = icmp ugt i32 %i.p, %i.r
  br i1 %.not45, label %._crit_edge49, label %.lr.ph48

.lr.ph48:                                         ; preds = %._crit_edge
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.t = load i64, ptr %i.s, align 8, !tbaa !23
  %i.u = inttoptr i64 %i.t to ptr
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph48, %.critedge35
  %.12946 = phi i32 [ %i.p, %.lr.ph48 ], [ %i.ad, %.critedge35 ] ; 2 uses
  %i.v = zext i32 %.12946 to i64
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %i.u, i64 %i.v ; 3 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !21
  %i.y = icmp eq i64 %i.x, -1
  br i1 %i.y, label %.critedge35, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !21
  store i64 %i.aa, ptr %2, align 8, !tbaa !21
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ac = load i64, ptr %i.w, align 8, !tbaa !21
  store i64 %i.ac, ptr %i.ab, align 8, !tbaa !21
  br label %bb.f

.critedge35:                                      ; preds = %bb.d
  %i.ad = add i32 %.12946, 1                      ; 3 uses
  %.not = icmp ugt i32 %i.ad, %i.r
  br i1 %.not, label %._crit_edge49, label %bb.d, !llvm.loop !87

._crit_edge49:                                    ; preds = %.critedge35, %._crit_edge
  %.129.lcssa = phi i32 [ %i.p, %._crit_edge ], [ %i.ad, %.critedge35 ]
  %.129.lobit = ashr i32 %.129.lcssa, 31
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c, %._crit_edge49
  %.4 = phi i32 [ 1, %bb.c ], [ 1, %bb.e ], [ %.129.lobit, %._crit_edge49 ]
  ret i32 %.4
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden i32 @lj_tab_len(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i32, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  %i.c = zext i32 %i.b to i64
  %i.d = add nsw i64 %i.c, -1
  %.019 = select i1 %.not, i64 0, i64 %i.d        ; 6 uses
  %.not24 = icmp eq i64 %.019, 0
  br i1 %.not24, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !20
  %i.g = inttoptr i64 %i.f to ptr                 ; 2 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.019
  %i.i = load i64, ptr %i.h, align 8, !tbaa !21
  %i.j = icmp eq i64 %i.i, -1
  br i1 %i.j, label %.preheader, label %bb.c, !prof !52

.preheader:                                       ; preds = %bb.b
  %.not28 = icmp eq i64 %.019, 1
  br i1 %.not28, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.027 = phi i64 [ %.0., %.lr.ph ], [ 0, %.preheader ] ; 2 uses
  %.12026 = phi i64 [ %..120, %.lr.ph ], [ %.019, %.preheader ] ; 2 uses
  %i.k = add i64 %.027, %.12026
  %i.l = lshr i64 %i.k, 1                         ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.l
  %i.n = load i64, ptr %i.m, align 8, !tbaa !21
  %i.o = icmp eq i64 %i.n, -1                     ; 2 uses
  %..120 = select i1 %i.o, i64 %i.l, i64 %.12026  ; 2 uses
  %.0. = select i1 %i.o, i64 %.027, i64 %i.l      ; 3 uses
  %i.p = sub nsw i64 %..120, %.0.
  %i.q = icmp ugt i64 %i.p, 1
  br i1 %i.q, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !88

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.r = trunc i64 %.0. to i32
  br label %._crit_edge

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.t = load i32, ptr %i.s, align 4, !tbaa !22
  %.not25 = icmp eq i32 %i.t, 0
  br i1 %.not25, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = tail call fastcc i32 @tab_len_slow(ptr noundef nonnull %0, i64 noundef %.019)
  br label %._crit_edge

bb.e:                                             ; preds = %bb.c
  %i.v = trunc nuw i64 %.019 to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %.preheader, %._crit_edge.loopexit, %bb.d, %bb.e
  %.021 = phi i32 [ %i.v, %bb.e ], [ %i.u, %bb.d ], [ 0, %.preheader ], [ %i.r, %._crit_edge.loopexit ]
  ret i32 %.021
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i32 @tab_len_slow(ptr nofree noundef readonly captures(none) %0, i64 noundef range(i64 0, 4294967295) %1) unnamed_addr #8 {
bb.a:
  %i.a = add nuw nsw i64 %1, 1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load i32, ptr %i.b, align 8, !tbaa !19   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %bb.a
  %.039 = phi i64 [ %i.a, %bb.a ], [ %i.am, %bb.f ] ; 7 uses
  %.0 = phi i64 [ %1, %bb.a ], [ %.039, %bb.f ]   ; 3 uses
  %i.g = trunc nuw i64 %.039 to i32               ; 2 uses
  %i.h = icmp ugt i32 %i.c, %i.g
  br i1 %i.h, label %lj_tab_getinth.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = sitofp i32 %i.g to double                ; 2 uses
  %i.j = bitcast double %i.i to i64               ; 2 uses
  %.sroa.0.0.extract.trunc.i = trunc i64 %i.j to i32
  %sh.diff.i = lshr i64 %i.j, 31
  %tr.sh.diff.i = trunc i64 %sh.diff.i to i32
  %i.k = and i32 %tr.sh.diff.i, -2                ; 5 uses
  %i.l = xor i32 %i.k, %.sroa.0.0.extract.trunc.i
  %i.m = tail call i32 @llvm.fshl.i32(i32 %i.k, i32 %i.k, i32 14)
  %i.n = sub i32 %i.l, %i.m                       ; 3 uses
  %i.o = tail call i32 @llvm.fshl.i32(i32 %i.k, i32 %i.k, i32 19)
  %i.p = xor i32 %i.n, %i.o
  %i.q = tail call i32 @llvm.fshl.i32(i32 %i.n, i32 %i.n, i32 13)
  %i.r = sub i32 %i.p, %i.q
  %i.s = load i64, ptr %i.d, align 8, !tbaa !23
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = load i32, ptr %i.e, align 4, !tbaa !22
  %i.v = and i32 %i.u, %i.r
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %i.w
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %.0.i = phi ptr [ %i.x, %bb.c ], [ %i.af, %bb.e ] ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.z = load i64, ptr %i.y, align 8              ; 2 uses
  %i.aa = icmp ult i64 %i.z, -1970324836974592
  %i.ab = bitcast i64 %i.z to double
  %i.ac = fcmp oeq double %i.ab, %i.i
  %or.cond.i = and i1 %i.aa, %i.ac
  br i1 %or.cond.i, label %lj_tab_getinth.exit.thread76, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !25 ; 2 uses
  %i.af = inttoptr i64 %i.ae to ptr
  %.not.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i, label %.critedge, label %bb.d, !llvm.loop !4

lj_tab_getinth.exit:                              ; preds = %bb.b
  %i.ag = load i64, ptr %i.f, align 8, !tbaa !20  ; 2 uses
  %i.ah = inttoptr i64 %i.ag to ptr
  %sext = shl i64 %.039, 32
  %i.ai = ashr exact i64 %sext, 29
  %i.aj = getelementptr inbounds i8, ptr %i.ah, i64 %i.ai
  %.not = icmp eq i64 %i.ag, 0
  br i1 %.not, label %.critedge, label %lj_tab_getinth.exit.thread76

lj_tab_getinth.exit.thread76:                     ; preds = %bb.d, %lj_tab_getinth.exit
  %i.ak = phi ptr [ %i.aj, %lj_tab_getinth.exit ], [ %.0.i, %bb.d ]
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !21
  %.not53 = icmp eq i64 %i.al, -1
  br i1 %.not53, label %.critedge, label %bb.f

bb.f:                                             ; preds = %lj_tab_getinth.exit.thread76
  %i.am = shl nuw nsw i64 %.039, 1
  %i.an = icmp samesign ugt i64 %.039, 1073741822
  br i1 %i.an, label %.preheader, label %bb.b, !llvm.loop !89

.preheader:                                       ; preds = %bb.f, %lj_tab_getinth.exit66.thread79
  %.1 = phi i64 [ %i.bu, %lj_tab_getinth.exit66.thread79 ], [ 1, %bb.f ] ; 3 uses
  %i.ao = trunc i64 %.1 to i32                    ; 3 uses
  %i.ap = icmp ugt i32 %i.c, %i.ao
  br i1 %i.ap, label %lj_tab_getinth.exit66, label %bb.g

bb.g:                                             ; preds = %.preheader
  %i.aq = sitofp i32 %i.ao to double              ; 2 uses
  %i.ar = bitcast double %i.aq to i64             ; 2 uses
  %.sroa.0.0.extract.trunc.i59 = trunc i64 %i.ar to i32
  %sh.diff.i60 = lshr i64 %i.ar, 31
  %tr.sh.diff.i61 = trunc i64 %sh.diff.i60 to i32
  %i.as = and i32 %tr.sh.diff.i61, -2             ; 5 uses
  %i.at = xor i32 %i.as, %.sroa.0.0.extract.trunc.i59
  %i.au = tail call i32 @llvm.fshl.i32(i32 %i.as, i32 %i.as, i32 14)
  %i.av = sub i32 %i.at, %i.au                    ; 3 uses
  %i.aw = tail call i32 @llvm.fshl.i32(i32 %i.as, i32 %i.as, i32 19)
  %i.ax = xor i32 %i.av, %i.aw
  %i.ay = tail call i32 @llvm.fshl.i32(i32 %i.av, i32 %i.av, i32 13)
  %i.az = sub i32 %i.ax, %i.ay
  %i.ba = load i64, ptr %i.d, align 8, !tbaa !23
  %i.bb = inttoptr i64 %i.ba to ptr
  %i.bc = load i32, ptr %i.e, align 4, !tbaa !22
  %i.bd = and i32 %i.bc, %i.az
  %i.be = zext i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw [24 x i8], ptr %i.bb, i64 %i.be
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %bb.g
  %.0.i62 = phi ptr [ %i.bf, %bb.g ], [ %i.bn, %bb.i ] ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.0.i62, i64 8
  %i.bh = load i64, ptr %i.bg, align 8            ; 2 uses
  %i.bi = icmp ult i64 %i.bh, -1970324836974592
  %i.bj = bitcast i64 %i.bh to double
  %i.bk = fcmp oeq double %i.bj, %i.aq
  %or.cond.i63 = and i1 %i.bi, %i.bk
  br i1 %or.cond.i63, label %lj_tab_getinth.exit66.thread79, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bl = getelementptr inbounds nuw i8, ptr %.0.i62, i64 16
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !25 ; 2 uses
  %i.bn = inttoptr i64 %i.bm to ptr
  %.not.i64 = icmp eq i64 %i.bm, 0
  br i1 %.not.i64, label %.critedge2, label %bb.h, !llvm.loop !4

lj_tab_getinth.exit66:                            ; preds = %.preheader
  %i.bo = load i64, ptr %i.f, align 8, !tbaa !20  ; 2 uses
  %i.bp = inttoptr i64 %i.bo to ptr
  %sext56 = shl i64 %.1, 32
  %i.bq = ashr exact i64 %sext56, 29
  %i.br = getelementptr inbounds i8, ptr %i.bp, i64 %i.bq
  %.not57 = icmp eq i64 %i.bo, 0
  br i1 %.not57, label %.critedge2, label %lj_tab_getinth.exit66.thread79

lj_tab_getinth.exit66.thread79:                   ; preds = %bb.h, %lj_tab_getinth.exit66
  %i.bs = phi ptr [ %i.br, %lj_tab_getinth.exit66 ], [ %.0.i62, %bb.h ]
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !21
  %.not58 = icmp eq i64 %i.bt, -1
  %i.bu = add i64 %.1, 1
  br i1 %.not58, label %.critedge2, label %.preheader, !llvm.loop !90

.critedge2:                                       ; preds = %lj_tab_getinth.exit66, %lj_tab_getinth.exit66.thread79, %bb.i
  %i.bv = add i32 %i.ao, -1
  br label %bb.n

.critedge:                                        ; preds = %lj_tab_getinth.exit, %lj_tab_getinth.exit.thread76, %bb.e
  %i.bw = sub nsw i64 %.039, %.0
  %i.bx = icmp ugt i64 %i.bw, 1
  br i1 %i.bx, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.critedge, %bb.m
  %.2100 = phi i64 [ %.3, %bb.m ], [ %.0, %.critedge ] ; 2 uses
  %.14099 = phi i64 [ %.241, %bb.m ], [ %.039, %.critedge ] ; 2 uses
  %i.by = add nuw nsw i64 %.2100, %.14099
  %i.bz = lshr i64 %i.by, 1                       ; 4 uses
  %i.ca = trunc nuw i64 %i.bz to i32              ; 2 uses
  %i.cb = icmp ugt i32 %i.c, %i.ca
  br i1 %i.cb, label %lj_tab_getinth.exit74, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  %i.cc = sitofp i32 %i.ca to double              ; 2 uses
  %i.cd = bitcast double %i.cc to i64             ; 2 uses
  %.sroa.0.0.extract.trunc.i67 = trunc i64 %i.cd to i32
  %sh.diff.i68 = lshr i64 %i.cd, 31
  %tr.sh.diff.i69 = trunc i64 %sh.diff.i68 to i32
  %i.ce = and i32 %tr.sh.diff.i69, -2             ; 5 uses
  %i.cf = xor i32 %i.ce, %.sroa.0.0.extract.trunc.i67
  %i.cg = tail call i32 @llvm.fshl.i32(i32 %i.ce, i32 %i.ce, i32 14)
  %i.ch = sub i32 %i.cf, %i.cg                    ; 3 uses
  %i.ci = tail call i32 @llvm.fshl.i32(i32 %i.ce, i32 %i.ce, i32 19)
  %i.cj = xor i32 %i.ch, %i.ci
  %i.ck = tail call i32 @llvm.fshl.i32(i32 %i.ch, i32 %i.ch, i32 13)
  %i.cl = sub i32 %i.cj, %i.ck
  %i.cm = load i64, ptr %i.d, align 8, !tbaa !23
  %i.cn = inttoptr i64 %i.cm to ptr
  %i.co = load i32, ptr %i.e, align 4, !tbaa !22
  %i.cp = and i32 %i.co, %i.cl
  %i.cq = zext i32 %i.cp to i64
  %i.cr = getelementptr inbounds nuw [24 x i8], ptr %i.cn, i64 %i.cq
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %bb.j
  %.0.i70 = phi ptr [ %i.cr, %bb.j ], [ %i.cz, %bb.l ] ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.0.i70, i64 8
  %i.ct = load i64, ptr %i.cs, align 8            ; 2 uses
  %i.cu = icmp ult i64 %i.ct, -1970324836974592
  %i.cv = bitcast i64 %i.ct to double
  %i.cw = fcmp oeq double %i.cv, %i.cc
  %or.cond.i71 = and i1 %i.cu, %i.cw
  br i1 %or.cond.i71, label %lj_tab_getinth.exit74.thread82, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cx = getelementptr inbounds nuw i8, ptr %.0.i70, i64 16
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !25 ; 2 uses
  %i.cz = inttoptr i64 %i.cy to ptr
  %.not.i72 = icmp eq i64 %i.cy, 0
  br i1 %.not.i72, label %lj_tab_getinth.exit74.thread, label %bb.k, !llvm.loop !4

lj_tab_getinth.exit74:                            ; preds = %.lr.ph
  %i.da = load i64, ptr %i.f, align 8, !tbaa !20  ; 2 uses
  %i.db = inttoptr i64 %i.da to ptr
  %sext54 = shl i64 %i.bz, 32
  %i.dc = ashr exact i64 %sext54, 29
  %i.dd = getelementptr inbounds i8, ptr %i.db, i64 %i.dc
  %.not55 = icmp eq i64 %i.da, 0
  br i1 %.not55, label %lj_tab_getinth.exit74.thread, label %lj_tab_getinth.exit74.thread82

lj_tab_getinth.exit74.thread82:                   ; preds = %bb.k, %lj_tab_getinth.exit74
  %i.de = phi ptr [ %i.dd, %lj_tab_getinth.exit74 ], [ %.0.i70, %bb.k ]
  %i.df = load i64, ptr %i.de, align 8, !tbaa !21
  %i.dg = icmp eq i64 %i.df, -1
  br i1 %i.dg, label %lj_tab_getinth.exit74.thread, label %bb.m

lj_tab_getinth.exit74.thread:                     ; preds = %bb.l, %lj_tab_getinth.exit74.thread82, %lj_tab_getinth.exit74
  br label %bb.m

bb.m:                                             ; preds = %lj_tab_getinth.exit74.thread82, %lj_tab_getinth.exit74.thread
  %.241 = phi i64 [ %i.bz, %lj_tab_getinth.exit74.thread ], [ %.14099, %lj_tab_getinth.exit74.thread82 ] ; 2 uses
  %.3 = phi i64 [ %.2100, %lj_tab_getinth.exit74.thread ], [ %i.bz, %lj_tab_getinth.exit74.thread82 ] ; 3 uses
  %i.dh = sub nsw i64 %.241, %.3
  %i.di = icmp ugt i64 %i.dh, 1
  br i1 %i.di, label %.lr.ph, label %._crit_edge, !llvm.loop !91

._crit_edge:                                      ; preds = %bb.m, %.critedge
  %.2.lcssa = phi i64 [ %.0, %.critedge ], [ %.3, %bb.m ]
  %i.dj = trunc nuw i64 %.2.lcssa to i32
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge, %.critedge2
  %.042 = phi i32 [ %i.bv, %.critedge2 ], [ %i.dj, %._crit_edge ]
  ret i32 %.042
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden i32 @lj_tab_len_hint(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i32, ptr %i.a, align 8, !tbaa !19
  %i.c = zext i32 %i.b to i64                     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !20
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %1 ; 3 uses
  %i.h = add i64 %1, 1                            ; 2 uses
  %i.i = icmp ult i64 %i.h, %i.c
  br i1 %i.i, label %bb.b, label %bb.e, !prof !52

bb.b:                                             ; preds = %bb.a
  %i.j = load i64, ptr %i.g, align 8, !tbaa !21
  %i.k = icmp eq i64 %i.j, -1
  br i1 %i.k, label %.critedge, label %bb.c, !prof !51

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !21
  %i.n = icmp eq i64 %i.m, -1
  br i1 %i.n, label %bb.d, label %.critedge, !prof !52

bb.d:                                             ; preds = %bb.c
  %i.o = trunc i64 %1 to i32
  br label %bb.i

bb.e:                                             ; preds = %bb.a
  %.not = icmp ugt i64 %i.h, %i.c
  br i1 %.not, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.q = load i32, ptr %i.p, align 4, !tbaa !22
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.g, label %.critedge, !prof !52

bb.g:                                             ; preds = %bb.f
  %i.s = load i64, ptr %i.g, align 8, !tbaa !21
  %i.t = icmp eq i64 %i.s, -1
  br i1 %i.t, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = trunc i64 %1 to i32
  br label %bb.i

.critedge:                                        ; preds = %bb.b, %bb.e, %bb.f, %bb.g, %bb.c
  %i.v = tail call i32 @lj_tab_len(ptr noundef nonnull %0)
  br label %bb.i

bb.i:                                             ; preds = %.critedge, %bb.h, %bb.d
  %.0 = phi i32 [ %i.o, %bb.d ], [ %i.v, %.critedge ], [ %i.u, %bb.h ]
  ret i32 %.0
}

declare hidden ptr @lj_mem_newgco(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v2i32(<2 x i32>) #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noinline norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nounwind }
attributes #13 = { noreturn nounwind }
attributes #14 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!6, !7, !8}
!llvm.ident = !{!9}
!llvm.errno.tbaa = !{!14}

!0 = distinct !{!0, !26}
!1 = distinct !{null}
!2 = distinct !{!2, !26}
!3 = distinct !{!3, !26}
!4 = distinct !{!4, !26}
!5 = distinct !{!5, !26}
!6 = !{i32 8, !"PIC Level", i32 2}
!7 = !{i32 7, !"PIE Level", i32 2}
!8 = !{i32 7, !"uwtable", i32 2}
!9 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"omnipotent char", !10, i64 0}
!12 = !{!"int", !11, i64 0}
!13 = !{!"__libc_errno", !12, i64 0}
!14 = !{!13, !12, i64 0}
!15 = !{!"long", !11, i64 0}
!16 = !{!"GCRef", !15, i64 0}
!17 = !{!"MRef", !15, i64 0}
!18 = !{!"GCtab", !16, i64 0, !11, i64 8, !11, i64 9, !11, i64 10, !11, i64 11, !17, i64 16, !16, i64 24, !16, i64 32, !17, i64 40, !12, i64 48, !12, i64 52, !17, i64 56}
!19 = !{!18, !12, i64 48}
!20 = !{!18, !15, i64 16}
!21 = !{!11, !11, i64 0}
!22 = !{!18, !12, i64 52}
!23 = !{!18, !15, i64 40}
!24 = !{!"Node", !11, i64 0, !11, i64 8, !17, i64 16}
!25 = !{!24, !15, i64 16}
!26 = !{!"llvm.loop.mustprogress"}
!27 = !{!"llvm.loop.unroll.disable"}
!28 = !{!18, !11, i64 10}
!29 = !{!18, !11, i64 11}
!30 = !{!"any pointer", !11, i64 0}
!31 = !{!"p1 _ZTS6TValue", !30, i64 0}
!32 = !{!"lua_State", !16, i64 0, !11, i64 8, !11, i64 9, !11, i64 10, !11, i64 11, !17, i64 16, !16, i64 24, !31, i64 32, !31, i64 40, !17, i64 48, !17, i64 56, !16, i64 64, !16, i64 72, !30, i64 80, !12, i64 88}
!33 = !{!32, !15, i64 16}
!34 = !{!18, !15, i64 56}
!35 = !{!"llvm.loop.isvectorized", i32 1}
!36 = !{!"llvm.loop.unroll.runtime.disable"}
!37 = !{!"GCState", !15, i64 0, !15, i64 8, !11, i64 16, !11, i64 17, !11, i64 18, !11, i64 19, !12, i64 20, !16, i64 24, !17, i64 32, !16, i64 40, !16, i64 48, !16, i64 56, !16, i64 64, !15, i64 72, !15, i64 80, !12, i64 88, !12, i64 92, !17, i64 96}
!38 = !{!"GCstr", !16, i64 0, !11, i64 8, !11, i64 9, !11, i64 10, !11, i64 11, !12, i64 12, !12, i64 16, !12, i64 20}
!39 = !{!"p1 _ZTS5GCRef", !30, i64 0}
!40 = !{!"StrInternState", !39, i64 0, !12, i64 8, !12, i64 12, !12, i64 16, !11, i64 20, !11, i64 21, !11, i64 22, !11, i64 23, !15, i64 24}
!41 = !{!"p1 omnipotent char", !30, i64 0}
!42 = !{!"SBuf", !41, i64 0, !41, i64 8, !41, i64 16, !17, i64 24}
!43 = !{!"GCupval", !16, i64 0, !11, i64 8, !11, i64 9, !11, i64 10, !11, i64 11, !11, i64 16, !17, i64 32, !12, i64 40}
!44 = !{!"PRNGState", !11, i64 0}
!45 = !{!"global_State", !30, i64 0, !30, i64 8, !37, i64 16, !38, i64 120, !11, i64 144, !11, i64 145, !11, i64 146, !11, i64 147, !40, i64 152, !12, i64 184, !16, i64 192, !42, i64 200, !11, i64 232, !11, i64 240, !24, i64 248, !11, i64 272, !16, i64 280, !43, i64 288, !12, i64 336, !12, i64 340, !30, i64 344, !30, i64 352, !30, i64 360, !12, i64 368, !12, i64 372, !16, i64 376, !17, i64 384, !17, i64 392, !44, i64 400, !11, i64 432}
!46 = !{!45, !15, i64 16}
!47 = !{!45, !30, i64 0}
!48 = !{!45, !30, i64 8}
!49 = !{ptr @lj_tab_setinth}
!50 = !{!38, !12, i64 12}
!51 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!52 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!53 = distinct !{!53, !27}
!54 = !{!18, !11, i64 9}
!55 = !{!18, !15, i64 32}
!56 = distinct !{!56, !27}
!57 = distinct !{!57, !27}
!58 = distinct !{!58, !26, !35, !36}
!59 = distinct !{!59, !27}
!60 = distinct !{!60, !26, !35}
!61 = distinct !{!61, !26}
!62 = distinct !{!62, !27}
!63 = distinct !{!63, !26, !35, !36}
!64 = distinct !{!64, !27}
!65 = distinct !{!65, !26, !35}
!66 = distinct !{!66, !27}
!67 = distinct !{!67, !26}
!68 = distinct !{!68, !26}
!69 = distinct !{!69, !26}
!70 = !{ptr @lj_tab_setstr}
!71 = distinct !{!71, !26}
!72 = distinct !{!72, !26, !35, !36}
!73 = distinct !{!73, !26, !35}
!74 = distinct !{!74, !26}
!75 = distinct !{!75, !26}
!76 = distinct !{!76, !26}
!77 = distinct !{null}
!78 = distinct !{!78, !26}
!79 = distinct !{!79, !26}
!80 = distinct !{!80, !26}
!81 = !{!12, !12, i64 0}
!82 = !{!15, !15, i64 0}
!83 = !{!45, !15, i64 64}
!84 = !{!18, !15, i64 24}
!85 = distinct !{!85, !26}
!86 = distinct !{!86, !26}
!87 = distinct !{!87, !26}
!88 = distinct !{!88, !26}
!89 = distinct !{!89, !26}
!90 = distinct !{!90, !26}
!91 = distinct !{!91, !26}
end_hunk_0
