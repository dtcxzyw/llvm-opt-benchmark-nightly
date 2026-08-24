Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/dauNonDsd?download=true
inline.NumInlined: 79
inline.NumDeleted: 23
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 19
begin_hunk_0_@Abc_TtMoveVar:bb.a
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.us.i.loopexit.unr-lcssa, label %scalar.ph, !llvm.loop !50

.preheader119.us.us.i:                            ; preds = %._crit_edge.us.us.i, %.preheader120.us.us.i
  %indvars.iv146.i = phi i64 [ 0, %.preheader120.us.us.i ], [ %indvars.iv.next147.i, %._crit_edge.us.us.i ] ; 3 uses
  %gep.i = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv146.i ; 4 uses
  %gep168.i = getelementptr [8 x i8], ptr %invariant.gep167.i, i64 %indvars.iv146.i ; 4 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %i.fc
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

scalar.ph.preheader:                              ; preds = %.preheader119.us.us.i
  br i1 %i.fa, label %scalar.ph.epil.preheader, label %scalar.ph

vector.body:                                      ; preds = %.preheader119.us.us.i, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader119.us.us.i ] ; 3 uses
  %i.fl = getelementptr [8 x i8], ptr %gep.i, i64 %index ; 3 uses
  %i.fm = getelementptr i8, ptr %i.fl, i64 16     ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.fl, align 8, !tbaa !9, !alias.scope !51, !noalias !54
  %wide.load45 = load <2 x i64>, ptr %i.fm, align 8, !tbaa !9, !alias.scope !51, !noalias !54
  %i.fn = getelementptr [8 x i8], ptr %gep168.i, i64 %index ; 3 uses
  %i.fo = getelementptr i8, ptr %i.fn, i64 16     ; 2 uses
  %wide.load46 = load <2 x i64>, ptr %i.fn, align 8, !tbaa !9, !alias.scope !54
  %wide.load47 = load <2 x i64>, ptr %i.fo, align 8, !tbaa !9, !alias.scope !54
  store <2 x i64> %wide.load46, ptr %i.fl, align 8, !tbaa !9, !alias.scope !51, !noalias !54
  store <2 x i64> %wide.load47, ptr %i.fm, align 8, !tbaa !9, !alias.scope !51, !noalias !54
  store <2 x i64> %wide.load, ptr %i.fn, align 8, !tbaa !9, !alias.scope !54
  store <2 x i64> %wide.load45, ptr %i.fo, align 8, !tbaa !9, !alias.scope !54
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fp = icmp eq i64 %index.next, %n.vec
  br i1 %i.fp, label %._crit_edge.us.us.i, label %vector.body, !llvm.loop !56

._crit_edge.us.us.i.loopexit.unr-lcssa:           ; preds = %scalar.ph
  br i1 %lcmp.mod.not, label %._crit_edge.us.us.i, label %scalar.ph.epil.preheader

scalar.ph.epil.preheader:                         ; preds = %._crit_edge.us.us.i.loopexit.unr-lcssa, %scalar.ph.preheader
  %indvars.iv.i.epil.init = phi i64 [ 0, %scalar.ph.preheader ], [ %indvars.iv.next.i.1, %._crit_edge.us.us.i.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod97)
  %i.fq = getelementptr [8 x i8], ptr %gep.i, i64 %indvars.iv.i.epil.init ; 2 uses
  %i.fr = load i64, ptr %i.fq, align 8, !tbaa !9
  %i.fs = getelementptr [8 x i8], ptr %gep168.i, i64 %indvars.iv.i.epil.init ; 2 uses
  %i.ft = load i64, ptr %i.fs, align 8, !tbaa !9
  store i64 %i.ft, ptr %i.fq, align 8, !tbaa !9
  store i64 %i.fr, ptr %i.fs, align 8, !tbaa !9
  br label %._crit_edge.us.us.i

._crit_edge.us.us.i:                              ; preds = %vector.body, %scalar.ph.epil.preheader, %._crit_edge.us.us.i.loopexit.unr-lcssa
  %indvars.iv.next147.i = add nsw i64 %indvars.iv146.i, %i.ei ; 2 uses
  %i.fu = icmp slt i64 %indvars.iv.next147.i, %i.ek
  br i1 %i.fu, label %.preheader119.us.us.i, label %._crit_edge124.us.us.i, !llvm.loop !57

._crit_edge124.us.us.i:                           ; preds = %._crit_edge.us.us.i
  %i.fv = getelementptr inbounds [8 x i8], ptr %.1125.us.us.i, i64 %i.eg ; 2 uses
  %i.fw = icmp ult ptr %i.fv, %i.ck
  %indvar.next = add i64 %indvar, 1
  br i1 %i.fw, label %.preheader120.us.us.i, label %Abc_TtSwapVars.exit, !llvm.loop !58

Abc_TtSwapVars.exit:                              ; preds = %._crit_edge124.us.us.i, %._crit_edge.us.i, %vector.body84, %scalar.ph72, %scalar.ph72.1, %scalar.ph72.2, %bb.c, %bb.e, %bb.g, %.preheader.lr.ph.i, %bb.h, %.preheader120.lr.ph.i
  %i.fx = sext i32 %i.c to i64
  %i.fy = getelementptr inbounds [4 x i8], ptr %3, i64 %i.fx ; 5 uses
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !8
  %i.ga = sext i32 %i.fz to i64
  %i.gb = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ga
  store i32 %5, ptr %i.gb, align 4, !tbaa !8
  %i.gc = sext i32 %5 to i64
  %i.gd = getelementptr inbounds [4 x i8], ptr %3, i64 %i.gc ; 4 uses
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !8
  %i.gf = sext i32 %i.ge to i64
  %i.gg = getelementptr inbounds [4 x i8], ptr %2, i64 %i.gf
  store i32 %i.c, ptr %i.gg, align 4, !tbaa !8
  %i.gh = load i32, ptr %i.gd, align 4, !tbaa !8
  %i.gi = load i32, ptr %i.fy, align 4, !tbaa !8
  %i.gj = xor i32 %i.gi, %i.gh                    ; 2 uses
  store i32 %i.gj, ptr %i.fy, align 4, !tbaa !8
  %i.gk = load i32, ptr %i.gd, align 4, !tbaa !8
  %i.gl = xor i32 %i.gk, %i.gj                    ; 2 uses
  store i32 %i.gl, ptr %i.gd, align 4, !tbaa !8
  %i.gm = load i32, ptr %i.fy, align 4, !tbaa !8
  %i.gn = xor i32 %i.gm, %i.gl
  store i32 %i.gn, ptr %i.fy, align 4, !tbaa !8
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %Abc_TtSwapVars.exit
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define noalias noundef ptr @Dau_DecFindSets_int(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #9 {
.preheader181:
  %i.a = alloca [2 x [64 x i64]], align 16        ; 5 uses
  %i.b = alloca [16 x i32], align 16              ; 6 uses
  %i.c = alloca [2 x [64 x ptr]], align 16        ; 5 uses
  %i.d = alloca [16 x i32], align 16              ; 6 uses
  %i.e = alloca [16 x i32], align 16              ; 5 uses
  %i.f = alloca [16 x i32], align 16              ; 6 uses
  %i.g = alloca [16 x i32], align 16              ; 8 uses
  %i.h = alloca [1024 x i64], align 16            ; 10 uses
  %i.i = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #21 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 4 ; 3 uses
  store i32 0, ptr %i.j, align 4, !tbaa !33
  store i32 32, ptr %i.i, align 8, !tbaa !59
  %i.k = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #21 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #20
  %i.m = icmp slt i32 %1, 7
  %i.n = add nsw i32 %1, -6
  %i.o = shl nuw i32 1, %i.n
  %i.p = select i1 %i.m, i32 1, i32 %i.o
  %i.q = sext i32 %i.p to i64
  %i.r = shl nsw i64 %i.q, 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.h, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %i.r, i1 false)
  %i.s = shl nuw i32 1, %1
  %i.t = icmp sgt i32 %1, 0
  br i1 %i.t, label %.lr.ph.preheader, label %._crit_edge196.split

.lr.ph.preheader:                                 ; preds = %.preheader181
  %wide.trip.count = zext nneg i32 %1 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %1, 8
  br i1 %min.iters.check, label %.lr.ph.preheader329, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 4 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4) ; 2 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %index ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store <4 x i32> %vec.ind, ptr %i.u, align 16, !tbaa !8
  store <4 x i32> %step.add, ptr %i.v, align 16, !tbaa !8
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %index ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store <4 x i32> %vec.ind, ptr %i.w, align 16, !tbaa !8
  store <4 x i32> %step.add, ptr %i.x, align 16, !tbaa !8
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !60

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.preheader180, label %.lr.ph.preheader329

.lr.ph.preheader329:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.preheader180:                                    ; preds = %.lr.ph, %middle.block
  %i.z = icmp samesign ugt i32 %1, 2
  br i1 %i.z, label %.preheader179.lr.ph, label %._crit_edge196.split

.preheader179.lr.ph:                              ; preds = %.preheader180
  %.not197 = icmp eq i32 %1, 31
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 512 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 512 ; 2 uses
  br i1 %.not197, label %._crit_edge196.split, label %.preheader179.preheader

.preheader179.preheader:                          ; preds = %.preheader179.lr.ph
  %i.ac = add nsw i32 %1, -2                      ; 2 uses
  %smax = tail call i32 @llvm.smax.i32(i32 %i.s, i32 1)
  %i.ad = zext nneg i32 %1 to i64
  %wide.trip.count213 = zext nneg i32 %i.ac to i64
  br label %.preheader179

.lr.ph:                                           ; preds = %.lr.ph.preheader329, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader329 ] ; 4 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.af = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  store i32 %i.af, ptr %i.ae, align 4, !tbaa !8
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv
  store i32 %i.af, ptr %i.ag, align 4, !tbaa !8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader180, label %.lr.ph, !llvm.loop !61

.preheader179:                                    ; preds = %.preheader179.preheader, %._crit_edge
  %i.ah = phi ptr [ %i.k, %.preheader179.preheader ], [ %i.kn, %._crit_edge ]
  %i.ai = phi i32 [ 32, %.preheader179.preheader ], [ %i.ko, %._crit_edge ]
  %.val11.i227 = phi ptr [ %i.k, %.preheader179.preheader ], [ %.val11.i230, %._crit_edge ]
  %.val.i220 = phi i32 [ 0, %.preheader179.preheader ], [ %.val.i222, %._crit_edge ]
  %i.aj = phi ptr [ %i.k, %.preheader179.preheader ], [ %i.kp, %._crit_edge ]
  %i.ak = phi ptr [ %i.k, %.preheader179.preheader ], [ %i.kq, %._crit_edge ]
  %i.al = phi i32 [ 32, %.preheader179.preheader ], [ %i.kr, %._crit_edge ]
  %i.am = phi i32 [ 0, %.preheader179.preheader ], [ %i.ks, %._crit_edge ]
  %indvars.iv208 = phi i64 [ 2, %.preheader179.preheader ], [ %indvars.iv.next209, %._crit_edge ] ; 20 uses
  %indvars.iv204 = phi i32 [ 1, %.preheader179.preheader ], [ %indvars.iv.next205, %._crit_edge ] ; 2 uses
  %indvar199 = phi i64 [ 0, %.preheader179.preheader ], [ %indvar.next200, %._crit_edge ] ; 3 uses
  %i.an = trunc i64 %indvar199 to i32
  %i.ao = sub i32 %i.ac, %i.an
  %i.ap = sext i32 %i.ao to i64
  %i.aq = shl nsw i64 %i.ap, 2
  %scevgep = getelementptr i8, ptr %i.f, i64 %i.aq
  %i.ar = shl nuw nsw i64 %indvar199, 2
  %i.as = add nuw nsw i64 %i.ar, 8
  %i.at = sub nsw i64 %i.ad, %indvars.iv208       ; 4 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv208 ; 2 uses
  %3 = icmp slt i64 %i.at, 6                      ; 2 uses
  %4 = trunc i64 %i.at to i32
  %i.av = add i32 %4, -6                          ; 3 uses
  %i.aw = shl nuw i32 1, %i.av
  %i.ax = trunc nuw nsw i64 %indvars.iv208 to i32 ; 2 uses
  %i.ay = shl nuw nsw i32 1, %i.ax
  %.not134.i = icmp eq i64 %indvars.iv208, 31     ; 2 uses
  %i.az = sext i32 %i.aw to i64
  %i.ba = shl nsw i64 %i.az, 3                    ; 4 uses
  %wide.trip.count144.i = zext nneg i32 %i.ay to i64 ; 4 uses
  %5 = trunc nsw i64 %i.at to i32                 ; 3 uses
  %i.bb = shl nuw nsw i32 1, %5
  %i.bc = zext nneg i32 %i.bb to i64
  %notmask.i = shl nsw i64 -1, %i.bc
  %i.bd = xor i64 %notmask.i, -1                  ; 2 uses
  %i.be = sub nsw i64 6, %i.at                    ; 2 uses
  %.not68190 = icmp samesign ult i64 %indvars.iv208, 3
  %i.bf = trunc nsw i64 %i.be to i32
  %i.bg = trunc nsw i64 %i.be to i32
  %xtraiter = and i64 %indvars.iv208, 1
  %unroll_iter = and i64 %indvars.iv208, 9223372036854775806
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod331 = trunc i64 %indvars.iv208 to i1
  %xtraiter332 = and i64 %indvars.iv208, 1
  %unroll_iter335 = and i64 %indvars.iv208, 9223372036854775806
  %lcmp.mod333.not = icmp eq i64 %xtraiter332, 0
  %lcmp.mod334 = trunc i64 %indvars.iv208 to i1
  %xtraiter338 = and i64 %indvars.iv208, 1
  %unroll_iter341 = and i64 %indvars.iv208, 9223372036854775806
  %lcmp.mod339.not = icmp eq i64 %xtraiter338, 0
  %lcmp.mod340 = trunc i64 %indvars.iv208 to i1
  %min.iters.check295 = icmp samesign ult i64 %indvars.iv208, 8
  %n.vec297 = and i64 %indvars.iv208, 9223372036854775800 ; 3 uses
  %cmp.n304 = icmp eq i64 %indvars.iv208, %n.vec297
  br label %bb.a

bb.a:                                             ; preds = %.preheader179, %.loopexit178
  %i.bh = phi ptr [ %i.ah, %.preheader179 ], [ %i.kn, %.loopexit178 ] ; 5 uses
  %i.bi = phi i32 [ %i.ai, %.preheader179 ], [ %i.ko, %.loopexit178 ] ; 5 uses
  %.val11.i229 = phi ptr [ %.val11.i227, %.preheader179 ], [ %.val11.i230, %.loopexit178 ] ; 5 uses
  %.val.i221 = phi i32 [ %.val.i220, %.preheader179 ], [ %.val.i222, %.loopexit178 ] ; 3 uses
  %i.bj = phi ptr [ %i.aj, %.preheader179 ], [ %i.kp, %.loopexit178 ] ; 5 uses
  %i.bk = phi ptr [ %i.ak, %.preheader179 ], [ %i.kq, %.loopexit178 ] ; 7 uses
  %i.bl = phi i32 [ %i.al, %.preheader179 ], [ %i.kr, %.loopexit178 ] ; 10 uses
  %i.bm = phi i32 [ %i.am, %.preheader179 ], [ %i.ks, %.loopexit178 ] ; 6 uses
  %.062193 = phi i32 [ 0, %.preheader179 ], [ %i.kt, %.loopexit178 ] ; 3 uses
  %i.bn = and i32 %.062193, 65535
  %i.bo = call range(i32 0, 17) i32 @llvm.ctpop.i32(i32 %i.bn)
  %i.bp = zext nneg i32 %i.bo to i64
  %i.bq = icmp eq i64 %indvars.iv208, %i.bp
  br i1 %i.bq, label %.lr.ph.i, label %.loopexit178

.lr.ph.i:                                         ; preds = %bb.a, %bb.c
  %.013.i = phi i32 [ %.1.i, %bb.c ], [ 0, %bb.a ] ; 3 uses
  %.01012.i = phi i32 [ %i.bu, %bb.c ], [ 0, %bb.a ] ; 3 uses
  %i.br = shl nuw i32 1, %.01012.i
  %i.bs = and i32 %i.br, %.062193
  %.not.i = icmp eq i32 %i.bs, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i
  %i.bt = add nsw i32 %.013.i, 1
  call fastcc void @Abc_TtMoveVar(ptr noundef nonnull %i.h, i32 noundef %1, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, i32 noundef %.01012.i, i32 noundef %.013.i)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %.1.i = phi i32 [ %.013.i, %.lr.ph.i ], [ %i.bt, %bb.b ]
  %i.bu = add nuw nsw i32 %.01012.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.bu, %1
  br i1 %exitcond.not.i, label %Dau_DecMoveFreeToLSB.exit.loopexit.preheader, label %.lr.ph.i, !llvm.loop !38

Dau_DecMoveFreeToLSB.exit.loopexit.preheader:     ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.g, ptr noundef nonnull align 4 dereferenceable(1) %scevgep, i64 %i.as, i1 false), !tbaa !8
  %i.bv = load ptr, ptr %i.au, align 8, !tbaa !62 ; 2 uses
  br i1 %3, label %.preheader134.i, label %.preheader118.i

.preheader134.i:                                  ; preds = %Dau_DecMoveFreeToLSB.exit.loopexit.preheader
  br i1 %.not134.i, label %.lr.ph.i71.preheader, label %.lr.ph144.i

.lr.ph144.i:                                      ; preds = %.preheader134.i, %bb.e
  %i.bw = phi i64 [ %i.cj, %bb.e ], [ -1, %.preheader134.i ] ; 3 uses
  %i.bx = phi i64 [ %i.ck, %bb.e ], [ -1, %.preheader134.i ] ; 3 uses
  %indvars.iv156.i = phi i64 [ %indvars.iv.next157.i, %bb.e ], [ 0, %.preheader134.i ] ; 2 uses
  %.0105141.i = phi i32 [ %i.co, %bb.e ], [ 0, %.preheader134.i ] ; 3 uses
  %i.by = ashr i32 %.0105141.i, %i.bf
  %i.bz = sext i32 %i.by to i64
  %i.ca = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.bz
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !9
  %i.cc = shl i32 %.0105141.i, %5
  %i.cd = and i32 %i.cc, 63
  %i.ce = zext nneg i32 %i.cd to i64
  %i.cf = lshr i64 %i.cb, %i.ce
  %i.cg = and i64 %i.cf, %i.bd                    ; 4 uses
  %.not121.i = icmp eq i64 %i.bx, -1
  %i.ch = icmp eq i64 %i.bx, %i.cg
  %or.cond126.i = select i1 %.not121.i, i1 true, i1 %i.ch
  br i1 %or.cond126.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph144.i
  %.not122.i = icmp eq i64 %i.bw, -1
  %i.ci = icmp eq i64 %i.bw, %i.cg
  %or.cond127.i = select i1 %.not122.i, i1 true, i1 %i.ci
  br i1 %or.cond127.i, label %bb.e, label %Dau_DecCheckSetTop.exit

bb.e:                                             ; preds = %bb.d, %.lr.ph144.i
  %i.cj = phi i64 [ %i.bw, %.lr.ph144.i ], [ %i.cg, %bb.d ]
  %i.ck = phi i64 [ %i.cg, %.lr.ph144.i ], [ %i.bx, %bb.d ]
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %indvars.iv156.i
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !8
  %i.cn = shl nuw i32 1, %i.cm
  %i.co = xor i32 %i.cn, %.0105141.i
  %indvars.iv.next157.i = add nuw nsw i64 %indvars.iv156.i, 1 ; 2 uses
  %exitcond161.not.i = icmp eq i64 %indvars.iv.next157.i, %wide.trip.count144.i
  br i1 %exitcond161.not.i, label %.lr.ph.i71.preheader, label %.lr.ph144.i, !llvm.loop !13

.preheader118.i:                                  ; preds = %Dau_DecMoveFreeToLSB.exit.loopexit.preheader
  br i1 %.not134.i, label %.lr.ph.i71.preheader, label %.lr.ph129.i

.lr.ph129.i:                                      ; preds = %.preheader118.i, %bb.i
  %i.cp = phi ptr [ %i.ct, %bb.i ], [ null, %.preheader118.i ] ; 3 uses
  %i.cq = phi ptr [ %i.cu, %bb.i ], [ null, %.preheader118.i ] ; 4 uses
  %indvars.iv140.i = phi i64 [ %indvars.iv.next141.i, %bb.i ], [ 0, %.preheader118.i ] ; 2 uses
  %.092125.i = phi i32 [ %i.cy, %bb.i ], [ 0, %.preheader118.i ] ; 2 uses
  %.not108.i = icmp eq ptr %i.cq, null
  %.pre.i = shl i32 %.092125.i, %i.av
  %.pre153.i = sext i32 %.pre.i to i64            ; 2 uses
  br i1 %.not108.i, label %._crit_edge152.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph129.i
  %i.cr = getelementptr inbounds [8 x i8], ptr %i.h, i64 %.pre153.i ; 4 uses
  %bcmp.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(1) %i.cq, ptr noundef nonnull dereferenceable(1) %i.cr, i64 %i.ba)
  %.not109.i = icmp eq i32 %bcmp.i, 0
  br i1 %.not109.i, label %._crit_edge152.i, label %bb.g

._crit_edge152.i:                                 ; preds = %bb.f, %.lr.ph129.i
  %i.cs = getelementptr inbounds [8 x i8], ptr %i.h, i64 %.pre153.i
  br label %bb.i

bb.g:                                             ; preds = %bb.f
  %.not110.i = icmp eq ptr %i.cp, null
  br i1 %.not110.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %bcmp111.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(1) %i.cp, ptr noundef nonnull dereferenceable(1) %i.cr, i64 %i.ba)
  %.not112.i = icmp eq i32 %bcmp111.i, 0
  br i1 %.not112.i, label %bb.i, label %Dau_DecCheckSetTop.exit

bb.i:                                             ; preds = %bb.g, %bb.h, %._crit_edge152.i
  %i.ct = phi ptr [ %i.cp, %._crit_edge152.i ], [ %i.cr, %bb.h ], [ %i.cr, %bb.g ]
  %i.cu = phi ptr [ %i.cs, %._crit_edge152.i ], [ %i.cq, %bb.h ], [ %i.cq, %bb.g ]
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %indvars.iv140.i
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !8
  %i.cx = shl nuw i32 1, %i.cw
  %i.cy = xor i32 %i.cx, %.092125.i
  %indvars.iv.next141.i = add nuw nsw i64 %indvars.iv140.i, 1 ; 2 uses
  %exitcond145.not.i = icmp eq i64 %indvars.iv.next141.i, %wide.trip.count144.i
  br i1 %exitcond145.not.i, label %.lr.ph.i71.preheader, label %.lr.ph129.i, !llvm.loop !19

.lr.ph.i71.preheader:                             ; preds = %bb.i, %bb.e, %.preheader134.i, %.preheader118.i
  br i1 %min.iters.check295, label %.lr.ph.i71.preheader306, label %vector.body298

vector.body298:                                   ; preds = %.lr.ph.i71.preheader, %vector.body298
  %index299 = phi i64 [ %index.next302, %vector.body298 ], [ 0, %.lr.ph.i71.preheader ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.df, %vector.body298 ], [ zeroinitializer, %.lr.ph.i71.preheader ]
  %vec.phi300 = phi <4 x i32> [ %i.dg, %vector.body298 ], [ zeroinitializer, %.lr.ph.i71.preheader ]
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %index299 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %wide.load = load <4 x i32>, ptr %i.cz, align 16, !tbaa !8
  %wide.load301 = load <4 x i32>, ptr %i.da, align 16, !tbaa !8
  %i.db = shl <4 x i32> %wide.load, splat (i32 1)
  %i.dc = shl <4 x i32> %wide.load301, splat (i32 1)
  %i.dd = shl nuw <4 x i32> splat (i32 1), %i.db
  %i.de = shl nuw <4 x i32> splat (i32 1), %i.dc
  %i.df = or <4 x i32> %i.dd, %vec.phi            ; 2 uses
  %i.dg = or <4 x i32> %i.de, %vec.phi300         ; 2 uses
  %index.next302 = add nuw i64 %index299, 8       ; 2 uses
  %i.dh = icmp eq i64 %index.next302, %n.vec297
  br i1 %i.dh, label %middle.block303, label %vector.body298, !llvm.loop !63

middle.block303:                                  ; preds = %vector.body298
  %bin.rdx = or <4 x i32> %i.dg, %i.df
  %i.di = call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n304, label %Dau_DecCreateSet.exit, label %.lr.ph.i71.preheader306

.lr.ph.i71.preheader306:                          ; preds = %.lr.ph.i71.preheader, %middle.block303
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.i71.preheader ], [ %n.vec297, %middle.block303 ]
  %.01112.i.ph = phi i32 [ 0, %.lr.ph.i71.preheader ], [ %i.di, %middle.block303 ]
  br label %.lr.ph.i71

.lr.ph.i71:                                       ; preds = %.lr.ph.i71.preheader306, %.lr.ph.i71
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i71 ], [ %indvars.iv.i.ph, %.lr.ph.i71.preheader306 ] ; 2 uses
  %.01112.i = phi i32 [ %.1.i73, %.lr.ph.i71 ], [ %.01112.i.ph, %.lr.ph.i71.preheader306 ]
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.i
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !8
  %i.dl = shl i32 %i.dk, 1
  %i.dm = shl nuw i32 1, %i.dl
  %.1.i73 = or i32 %i.dm, %.01112.i               ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i74 = icmp eq i64 %indvars.iv.next.i, %indvars.iv208
  br i1 %exitcond.not.i74, label %Dau_DecCreateSet.exit, label %.lr.ph.i71, !llvm.loop !64

Dau_DecCreateSet.exit:                            ; preds = %.lr.ph.i71, %middle.block303
  %.1.i73.lcssa = phi i32 [ %i.di, %middle.block303 ], [ %.1.i73, %.lr.ph.i71 ]
  %i.dn = icmp eq i32 %i.bm, %i.bl
  br i1 %i.dn, label %bb.j, label %Vec_IntPush.exit

bb.j:                                             ; preds = %Dau_DecCreateSet.exit
  %i.do = icmp slt i32 %i.bl, 16
  br i1 %i.do, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %.not9.i.i = icmp eq ptr %i.bk, null
  br i1 %.not9.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dp = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.bk, i64 noundef 64) #22
  br label %Vec_IntGrow.exit11.sink.split.i

bb.m:                                             ; preds = %bb.k
  %i.dq = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #21
  br label %Vec_IntGrow.exit11.sink.split.i

bb.n:                                             ; preds = %bb.j
  %i.dr = icmp samesign ult i32 %i.bl, 1073741823
  %i.ds = shl nuw nsw i32 %i.bl, 1
  %spec.select.i = select i1 %i.dr, i32 %i.ds, i32 2147483647 ; 4 uses
  %.not.i9.i = icmp samesign ult i32 %i.bl, %spec.select.i
  br i1 %.not.i9.i, label %bb.o, label %Vec_IntPush.exit

bb.o:                                             ; preds = %bb.n
  %.not9.i10.i = icmp eq ptr %i.bk, null
  %i.dt = zext nneg i32 %spec.select.i to i64
  %i.du = shl nuw nsw i64 %i.dt, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dv = call ptr @realloc(ptr noundef nonnull %i.bk, i64 noundef %i.du) #22
  br label %Vec_IntGrow.exit11.sink.split.i

bb.q:                                             ; preds = %bb.o
  %i.dw = call noalias ptr @malloc(i64 noundef %i.du) #21
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.p, %bb.q, %bb.l, %bb.m
  %storemerge = phi ptr [ %i.dq, %bb.m ], [ %i.dp, %bb.l ], [ %i.dv, %bb.p ], [ %i.dw, %bb.q ] ; 4 uses
  %spec.select.sink.i = phi i32 [ 16, %bb.m ], [ 16, %bb.l ], [ %spec.select.i, %bb.p ], [ %spec.select.i, %bb.q ] ; 3 uses
  store ptr %storemerge, ptr %i.l, align 8, !tbaa !36
  store i32 %spec.select.sink.i, ptr %i.i, align 8, !tbaa !59
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %Dau_DecCreateSet.exit, %bb.n, %Vec_IntGrow.exit11.sink.split.i
  %i.dx = phi ptr [ %i.bh, %Dau_DecCreateSet.exit ], [ %i.bh, %bb.n ], [ %storemerge, %Vec_IntGrow.exit11.sink.split.i ]
  %i.dy = phi i32 [ %i.bi, %Dau_DecCreateSet.exit ], [ %i.bi, %bb.n ], [ %spec.select.sink.i, %Vec_IntGrow.exit11.sink.split.i ]
  %.val11.i228 = phi ptr [ %.val11.i229, %Dau_DecCreateSet.exit ], [ %.val11.i229, %bb.n ], [ %storemerge, %Vec_IntGrow.exit11.sink.split.i ]
  %i.dz = phi ptr [ %i.bj, %Dau_DecCreateSet.exit ], [ %i.bj, %bb.n ], [ %storemerge, %Vec_IntGrow.exit11.sink.split.i ] ; 3 uses
  %i.ea = phi i32 [ %i.bl, %Dau_DecCreateSet.exit ], [ %i.bl, %bb.n ], [ %spec.select.sink.i, %Vec_IntGrow.exit11.sink.split.i ]
  %i.eb = add nsw i32 %i.bm, 1                    ; 3 uses
  store i32 %i.eb, ptr %i.j, align 4, !tbaa !33
  %i.ec = sext i32 %i.bm to i64
  %i.ed = getelementptr inbounds [4 x i8], ptr %i.dz, i64 %i.ec
  store i32 %.1.i73.lcssa, ptr %i.ed, align 4, !tbaa !8
  br label %.loopexit178

Dau_DecCheckSetTop.exit:                          ; preds = %bb.h, %bb.d
  br i1 %.not68190, label %.loopexit178, label %.lr.ph192

.lr.ph192:                                        ; preds = %Dau_DecCheckSetTop.exit, %.loopexit176
  %i.ee = phi ptr [ %i.kg, %.loopexit176 ], [ %i.bh, %Dau_DecCheckSetTop.exit ] ; 2 uses
  %i.ef = phi i32 [ %i.kh, %.loopexit176 ], [ %i.bi, %Dau_DecCheckSetTop.exit ] ; 2 uses
  %.val11.i231 = phi ptr [ %.val11.i232, %.loopexit176 ], [ %.val11.i229, %Dau_DecCheckSetTop.exit ] ; 2 uses
  %.val.i223 = phi i32 [ %.val.i224, %.loopexit176 ], [ %.val.i221, %Dau_DecCheckSetTop.exit ] ; 2 uses
  %i.eg = phi ptr [ %i.ki, %.loopexit176 ], [ %i.bj, %Dau_DecCheckSetTop.exit ] ; 2 uses
  %i.eh = phi ptr [ %i.kj, %.loopexit176 ], [ %i.bk, %Dau_DecCheckSetTop.exit ] ; 2 uses
  %i.ei = phi i32 [ %i.kk, %.loopexit176 ], [ %i.bl, %Dau_DecCheckSetTop.exit ] ; 2 uses
  %i.ej = phi i32 [ %i.kl, %.loopexit176 ], [ %i.bm, %Dau_DecCheckSetTop.exit ] ; 2 uses
  %.063191 = phi i32 [ %i.km, %.loopexit176 ], [ 1, %Dau_DecCheckSetTop.exit ] ; 4 uses
  %i.ek = icmp samesign ult i32 %.063191, 4
  br i1 %i.ek, label %.preheader, label %.loopexit176

.preheader:                                       ; preds = %.lr.ph192
  %i.el = shl nuw nsw i32 8, %.063191
  %i.em = zext nneg i32 %i.el to i64              ; 4 uses
  br label %bb.r

bb.r:                                             ; preds = %.preheader, %Dau_DecSetIsContained.exit
  %i.en = phi ptr [ %i.ee, %.preheader ], [ %i.jy, %Dau_DecSetIsContained.exit ] ; 5 uses
  %i.eo = phi i32 [ %i.ef, %.preheader ], [ %i.jz, %Dau_DecSetIsContained.exit ] ; 10 uses
  %i.ep = phi ptr [ %.val11.i231, %.preheader ], [ %.val11.i234, %Dau_DecSetIsContained.exit ] ; 12 uses
  %.val.i = phi i32 [ %.val.i223, %.preheader ], [ %.val.i226, %Dau_DecSetIsContained.exit ] ; 10 uses
  %i.eq = phi ptr [ %i.eg, %.preheader ], [ %i.ka, %Dau_DecSetIsContained.exit ] ; 2 uses
  %i.er = phi ptr [ %i.eh, %.preheader ], [ %i.kb, %Dau_DecSetIsContained.exit ] ; 2 uses
  %i.es = phi i32 [ %i.ei, %.preheader ], [ %i.kc, %Dau_DecSetIsContained.exit ] ; 3 uses
  %i.et = phi i32 [ %i.ej, %.preheader ], [ %i.kd, %Dau_DecSetIsContained.exit ]
  %.0187 = phi i32 [ 0, %.preheader ], [ %i.ke, %Dau_DecSetIsContained.exit ] ; 13 uses
  %i.eu = and i32 %.0187, 65535
  %i.ev = call range(i32 0, 17) i32 @llvm.ctpop.i32(i32 %i.eu)
  %i.ew = icmp eq i32 %i.ev, %.063191
  br i1 %i.ew, label %.lr.ph.i76, label %Dau_DecSetIsContained.exit

.lr.ph.i76:                                       ; preds = %bb.r, %.lr.ph.i76
  %indvars.iv.i77 = phi i64 [ %indvars.iv.next.i81.1, %.lr.ph.i76 ], [ 0, %bb.r ] ; 4 uses
  %.01112.i78 = phi i32 [ %.1.i80.1, %.lr.ph.i76 ], [ 0, %bb.r ]
  %niter = phi i64 [ %niter.next.1, %.lr.ph.i76 ], [ 0, %bb.r ]
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.i77
  %i.ey = load i32, ptr %i.ex, align 8, !tbaa !8
  %i.ez = shl i32 %i.ey, 1                        ; 2 uses
  %i.fa = shl nuw i32 1, %i.ez
  %i.fb = trunc nuw nsw i64 %indvars.iv.i77 to i32
  %i.fc = shl nuw i32 1, %i.fb
  %i.fd = and i32 %i.fc, %.0187
  %.not.i79 = icmp eq i32 %i.fd, 0
  %i.fe = shl nuw i32 2, %i.ez
  %i.ff = select i1 %.not.i79, i32 0, i32 %i.fe
  %i.fg = or disjoint i32 %i.ff, %i.fa
  %.1.i80 = or i32 %i.fg, %.01112.i78
  %indvars.iv.next.i81 = or disjoint i64 %indvars.iv.i77, 1 ; 2 uses
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.next.i81
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !8
  %i.fj = shl i32 %i.fi, 1                        ; 2 uses
  %i.fk = shl nuw i32 1, %i.fj
  %i.fl = trunc nuw nsw i64 %indvars.iv.next.i81 to i32
  %i.fm = shl nuw i32 1, %i.fl
  %i.fn = and i32 %i.fm, %.0187
  %.not.i79.1 = icmp eq i32 %i.fn, 0
  %i.fo = shl nuw i32 2, %i.fj
  %i.fp = select i1 %.not.i79.1, i32 0, i32 %i.fo
  %i.fq = or disjoint i32 %i.fp, %i.fk
  %.1.i80.1 = or i32 %i.fq, %.1.i80               ; 3 uses
  %indvars.iv.next.i81.1 = add nuw nsw i64 %indvars.iv.i77, 2 ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %Dau_DecCreateSet.exit83.unr-lcssa, label %.lr.ph.i76, !llvm.loop !65

Dau_DecCreateSet.exit83.unr-lcssa:                ; preds = %.lr.ph.i76
  br i1 %lcmp.mod.not, label %Dau_DecCreateSet.exit83, label %.lr.ph.i76.epil.preheader

.lr.ph.i76.epil.preheader:                        ; preds = %Dau_DecCreateSet.exit83.unr-lcssa
  call void @llvm.assume(i1 %lcmp.mod331)
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.next.i81.1
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !8
  %i.ft = shl i32 %i.fs, 1                        ; 2 uses
  %i.fu = shl nuw i32 1, %i.ft
  %i.fv = trunc nuw nsw i64 %indvars.iv.next.i81.1 to i32
  %i.fw = shl nuw i32 1, %i.fv
  %i.fx = and i32 %i.fw, %.0187
  %.not.i79.epil = icmp eq i32 %i.fx, 0
  %i.fy = shl nuw i32 2, %i.ft
  %i.fz = select i1 %.not.i79.epil, i32 0, i32 %i.fy
  %i.ga = or disjoint i32 %i.fz, %i.fu
  %.1.i80.epil = or i32 %i.ga, %.1.i80.1
  br label %Dau_DecCreateSet.exit83

Dau_DecCreateSet.exit83:                          ; preds = %Dau_DecCreateSet.exit83.unr-lcssa, %.lr.ph.i76.epil.preheader
  %.1.i80.lcssa = phi i32 [ %.1.i80.1, %Dau_DecCreateSet.exit83.unr-lcssa ], [ %.1.i80.epil, %.lr.ph.i76.epil.preheader ] ; 3 uses
  %i.gb = icmp sgt i32 %.val.i, 0
  br i1 %i.gb, label %.lr.ph.i84, label %.loopexit

.lr.ph.i84:                                       ; preds = %Dau_DecCreateSet.exit83
  %i.gc = xor i32 %.1.i80.lcssa, -1
  %wide.trip.count.i85 = zext nneg i32 %.val.i to i64
  br label %bb.s

bb.s:                                             ; preds = %bb.u, %.lr.ph.i84
  %indvars.iv.i86 = phi i64 [ 0, %.lr.ph.i84 ], [ %indvars.iv.next.i87, %bb.u ] ; 2 uses
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.ep, i64 %indvars.iv.i86
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !8  ; 2 uses
  %i.gf = and i32 %i.ge, %i.gc
  %i.gg = icmp eq i32 %i.gf, 0
  br i1 %i.gg, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.gh = xor i32 %i.ge, -1
  %i.gi = and i32 %.1.i80.lcssa, %i.gh            ; 2 uses
  %i.gj = xor i32 %i.gi, -1
  %i.gk = lshr i32 %i.gj, 1
  %i.gl = and i32 %i.gi, 1431655765
  %i.gm = and i32 %i.gl, %i.gk
  %.not.i89 = icmp eq i32 %i.gm, 0
  br i1 %.not.i89, label %Dau_DecSetIsContained.exit, label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %indvars.iv.next.i87 = add nuw nsw i64 %indvars.iv.i86, 1 ; 2 uses
  %exitcond.not.i88 = icmp eq i64 %indvars.iv.next.i87, %wide.trip.count.i85
  br i1 %exitcond.not.i88, label %.loopexit, label %bb.s, !llvm.loop !66

.loopexit:                                        ; preds = %bb.u, %Dau_DecCreateSet.exit83
  %i.gn = phi ptr [ %i.eq, %Dau_DecCreateSet.exit83 ], [ %i.ep, %bb.u ]
  %i.go = phi ptr [ %i.er, %Dau_DecCreateSet.exit83 ], [ %i.ep, %bb.u ]
  %i.gp = load ptr, ptr %i.au, align 8, !tbaa !62 ; 2 uses
  br i1 %3, label %.new337, label %.new

.new337:                                          ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  br label %.lr.ph.i165

.lr.ph139.i.unr-lcssa:                            ; preds = %.lr.ph.i165
  br i1 %lcmp.mod339.not, label %.lr.ph139.i, label %.lr.ph.i165.epil.preheader

.lr.ph.i165.epil.preheader:                       ; preds = %.lr.ph139.i.unr-lcssa
  call void @llvm.assume(i1 %lcmp.mod340)
  %i.gq = trunc nuw nsw i64 %indvars.iv.next.i170.1 to i32
  %i.gr = shl nuw i32 1, %i.gq
  %i.gs = and i32 %i.gr, %.0187
  %.not125.i.epil.not = icmp eq i32 %i.gs, 0
  %.0110135.sink.i.epil = select i1 %.not125.i.epil.not, i32 -1, i32 %.1111.i.1
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next.i170.1
  store i32 %.0110135.sink.i.epil, ptr %i.gt, align 4, !tbaa !8
  br label %.lr.ph139.i

.lr.ph139.i:                                      ; preds = %.lr.ph139.i.unr-lcssa, %.lr.ph.i165.epil.preheader
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.ab, i8 -1, i64 %i.em, i1 false), !tbaa !9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.a, i8 -1, i64 %i.em, i1 false), !tbaa !9
  br label %bb.v

.lr.ph.i165:                                      ; preds = %.lr.ph.i165, %.new337
  %indvars.iv.i166 = phi i64 [ 0, %.new337 ], [ %indvars.iv.next.i170.1, %.lr.ph.i165 ] ; 4 uses
  %.0110135.i168 = phi i32 [ 0, %.new337 ], [ %.1111.i.1, %.lr.ph.i165 ] ; 2 uses
  %niter342 = phi i64 [ 0, %.new337 ], [ %niter342.next.1, %.lr.ph.i165 ]
  %i.gu = trunc nuw nsw i64 %indvars.iv.i166 to i32
  %i.gv = shl nuw i32 1, %i.gu
  %i.gw = and i32 %i.gv, %.0187
  %.not125.i = icmp ne i32 %i.gw, 0               ; 2 uses
  %.0110135.sink.i = select i1 %.not125.i, i32 %.0110135.i168, i32 -1
  %i.gx = zext i1 %.not125.i to i32
  %.1111.i = add nuw nsw i32 %.0110135.i168, %i.gx ; 2 uses
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.i166
  store i32 %.0110135.sink.i, ptr %i.gy, align 8, !tbaa !8
  %indvars.iv.next.i170 = or disjoint i64 %indvars.iv.i166, 1 ; 2 uses
  %i.gz = trunc nuw nsw i64 %indvars.iv.next.i170 to i32
  %i.ha = shl nuw i32 1, %i.gz
  %i.hb = and i32 %i.ha, %.0187
  %.not125.i.1 = icmp ne i32 %i.hb, 0             ; 2 uses
  %.0110135.sink.i.1 = select i1 %.not125.i.1, i32 %.1111.i, i32 -1
  %i.hc = zext i1 %.not125.i.1 to i32
  %.1111.i.1 = add nuw nsw i32 %.1111.i, %i.hc    ; 2 uses
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next.i170
  store i32 %.0110135.sink.i.1, ptr %i.hd, align 4, !tbaa !8
  %indvars.iv.next.i170.1 = add nuw nsw i64 %indvars.iv.i166, 2 ; 3 uses
  %niter342.next.1 = add i64 %niter342, 2         ; 2 uses
  %niter342.ncmp.1 = icmp eq i64 %niter342.next.1, %unroll_iter341
  br i1 %niter342.ncmp.1, label %.lr.ph139.i.unr-lcssa, label %.lr.ph.i165, !llvm.loop !11

bb.v:                                             ; preds = %bb.ab, %.lr.ph139.i
  %indvars.iv156.i151 = phi i64 [ 0, %.lr.ph139.i ], [ %indvars.iv.next157.i161, %bb.ab ] ; 2 uses
  %.0102143.i152 = phi i32 [ 0, %.lr.ph139.i ], [ %.1.i160, %bb.ab ] ; 3 uses
  %.0105141.i154 = phi i32 [ 0, %.lr.ph139.i ], [ %i.hx, %bb.ab ] ; 3 uses
  %i.he = ashr i32 %.0105141.i154, %i.bg
  %i.hf = sext i32 %i.he to i64
  %i.hg = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.hf
  %i.hh = load i64, ptr %i.hg, align 8, !tbaa !9
  %i.hi = shl i32 %.0105141.i154, %5
  %i.hj = and i32 %i.hi, 63
  %i.hk = zext nneg i32 %i.hj to i64
  %i.hl = lshr i64 %i.hh, %i.hk
  %i.hm = and i64 %i.hl, %i.bd                    ; 4 uses
  %i.hn = sext i32 %.0102143.i152 to i64          ; 2 uses
  %i.ho = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.hn ; 2 uses
  %i.hp = load i64, ptr %i.ho, align 8, !tbaa !9  ; 2 uses
  %.not121.i155 = icmp eq i64 %i.hp, -1
  %i.hq = icmp eq i64 %i.hp, %i.hm
  %or.cond126.i156 = select i1 %.not121.i155, i1 true, i1 %i.hq
  br i1 %or.cond126.i156, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store i64 %i.hm, ptr %i.ho, align 8, !tbaa !9
  br label %bb.z

bb.x:                                             ; preds = %bb.v
  %i.hr = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.hn ; 2 uses
  %i.hs = load i64, ptr %i.hr, align 8, !tbaa !9  ; 2 uses
  %.not122.i157 = icmp eq i64 %i.hs, -1
  %i.ht = icmp eq i64 %i.hs, %i.hm
  %or.cond127.i158 = select i1 %.not122.i157, i1 true, i1 %i.ht
  br i1 %or.cond127.i158, label %bb.y, label %Dau_DecCheckSetTop5.exit172.loopexit

bb.y:                                             ; preds = %bb.x
  store i64 %i.hm, ptr %i.hr, align 8, !tbaa !9
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.w
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %i.gp, i64 %indvars.iv156.i151
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !8  ; 2 uses
  %i.hw = shl nuw i32 1, %i.hv                    ; 2 uses
  %i.hx = xor i32 %i.hw, %.0105141.i154
  %i.hy = and i32 %i.hw, %.0187
  %.not124.i = icmp eq i32 %i.hy, 0
  br i1 %.not124.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.hz = sext i32 %i.hv to i64
  %i.ia = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.hz
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !8
  %i.ic = shl nuw i32 1, %i.ib
  %i.id = xor i32 %i.ic, %.0102143.i152
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  %.1.i160 = phi i32 [ %i.id, %bb.aa ], [ %.0102143.i152, %bb.z ]
  %indvars.iv.next157.i161 = add nuw nsw i64 %indvars.iv156.i151, 1 ; 2 uses
  %exitcond161.not.i162 = icmp eq i64 %indvars.iv.next157.i161, %wide.trip.count144.i
  br i1 %exitcond161.not.i162, label %Dau_DecCheckSetTop5.exit172.loopexit, label %bb.v, !llvm.loop !13

Dau_DecCheckSetTop5.exit172.loopexit:             ; preds = %bb.x, %bb.ab
  %.0.i159.ph = phi i32 [ 1, %bb.ab ], [ 0, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %Dau_DecCheckSetTop.exit91

.new:                                             ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  br label %.lr.ph.i138

.lr.ph123.i.unr-lcssa:                            ; preds = %.lr.ph.i138
  br i1 %lcmp.mod333.not, label %.lr.ph123.i, label %.lr.ph.i138.epil.preheader

.lr.ph.i138.epil.preheader:                       ; preds = %.lr.ph123.i.unr-lcssa
  call void @llvm.assume(i1 %lcmp.mod334)
  %i.ie = trunc nuw nsw i64 %indvars.iv.next.i142.1 to i32
  %i.if = shl nuw i32 1, %i.ie
  %i.ig = and i32 %i.if, %.0187
  %.not115.i.epil.not = icmp eq i32 %i.ig, 0
  %.097119.sink.i.epil = select i1 %.not115.i.epil.not, i32 -1, i32 %.198.i.1
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next.i142.1
  store i32 %.097119.sink.i.epil, ptr %i.ih, align 4, !tbaa !8
  br label %.lr.ph123.i

.lr.ph123.i:                                      ; preds = %.lr.ph123.i.unr-lcssa, %.lr.ph.i138.epil.preheader
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.aa, i8 0, i64 %i.em, i1 false), !tbaa !15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.c, i8 0, i64 %i.em, i1 false), !tbaa !15
  br label %bb.ac

.lr.ph.i138:                                      ; preds = %.lr.ph.i138, %.new
  %indvars.iv.i139 = phi i64 [ 0, %.new ], [ %indvars.iv.next.i142.1, %.lr.ph.i138 ] ; 4 uses
  %.097119.i141 = phi i32 [ 0, %.new ], [ %.198.i.1, %.lr.ph.i138 ] ; 2 uses
  %niter336 = phi i64 [ 0, %.new ], [ %niter336.next.1, %.lr.ph.i138 ]
  %i.ii = trunc nuw nsw i64 %indvars.iv.i139 to i32
  %i.ij = shl nuw i32 1, %i.ii
  %i.ik = and i32 %i.ij, %.0187
  %.not115.i = icmp ne i32 %i.ik, 0               ; 2 uses
  %.097119.sink.i = select i1 %.not115.i, i32 %.097119.i141, i32 -1
  %i.il = zext i1 %.not115.i to i32
  %.198.i = add nuw nsw i32 %.097119.i141, %i.il  ; 2 uses
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.i139
  store i32 %.097119.sink.i, ptr %i.im, align 8, !tbaa !8
  %indvars.iv.next.i142 = or disjoint i64 %indvars.iv.i139, 1 ; 2 uses
  %i.in = trunc nuw nsw i64 %indvars.iv.next.i142 to i32
  %i.io = shl nuw i32 1, %i.in
  %i.ip = and i32 %i.io, %.0187
  %.not115.i.1 = icmp ne i32 %i.ip, 0             ; 2 uses
  %.097119.sink.i.1 = select i1 %.not115.i.1, i32 %.198.i, i32 -1
  %i.iq = zext i1 %.not115.i.1 to i32
  %.198.i.1 = add nuw nsw i32 %.198.i, %i.iq      ; 2 uses
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next.i142
  store i32 %.097119.sink.i.1, ptr %i.ir, align 4, !tbaa !8
  %indvars.iv.next.i142.1 = add nuw nsw i64 %indvars.iv.i139, 2 ; 3 uses
  %niter336.next.1 = add i64 %niter336, 2         ; 2 uses
  %niter336.ncmp.1 = icmp eq i64 %niter336.next.1, %unroll_iter335
  br i1 %niter336.ncmp.1, label %.lr.ph123.i.unr-lcssa, label %.lr.ph.i138, !llvm.loop !18

bb.ac:                                            ; preds = %bb.aj, %.lr.ph123.i
  %indvars.iv140.i119 = phi i64 [ 0, %.lr.ph123.i ], [ %indvars.iv.next141.i133, %bb.aj ] ; 2 uses
  %.089127.i120 = phi i32 [ 0, %.lr.ph123.i ], [ %.1.i132, %bb.aj ] ; 3 uses
  %.092125.i122 = phi i32 [ 0, %.lr.ph123.i ], [ %i.jc, %bb.aj ] ; 2 uses
  %i.is = sext i32 %.089127.i120 to i64           ; 2 uses
  %i.it = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.is ; 2 uses
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !15 ; 2 uses
  %.not108.i123 = icmp eq ptr %i.iu, null
  %.pre.i124 = shl i32 %.092125.i122, %i.av
  %.pre153.i125 = sext i32 %.pre.i124 to i64      ; 2 uses
  br i1 %.not108.i123, label %._crit_edge152.i136, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.iv = getelementptr inbounds [8 x i8], ptr %i.h, i64 %.pre153.i125 ; 3 uses
  %bcmp.i126 = call i32 @bcmp(ptr noundef nonnull dereferenceable(1) %i.iu, ptr noundef nonnull dereferenceable(1) %i.iv, i64 %i.ba)
  %.not109.i127 = icmp eq i32 %bcmp.i126, 0
  br i1 %.not109.i127, label %._crit_edge152.i136, label %bb.ae

._crit_edge152.i136:                              ; preds = %bb.ad, %bb.ac
  %i.iw = getelementptr inbounds [8 x i8], ptr %i.h, i64 %.pre153.i125
  store ptr %i.iw, ptr %i.it, align 8, !tbaa !15
  br label %bb.ah

bb.ae:                                            ; preds = %bb.ad
  %i.ix = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.is ; 2 uses
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !15 ; 2 uses
  %.not110.i128 = icmp eq ptr %i.iy, null
  br i1 %.not110.i128, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %bcmp111.i129 = call i32 @bcmp(ptr noundef nonnull dereferenceable(1) %i.iy, ptr noundef nonnull dereferenceable(1) %i.iv, i64 %i.ba)
  %.not112.i130 = icmp eq i32 %bcmp111.i129, 0
  br i1 %.not112.i130, label %bb.ag, label %Dau_DecCheckSetTop6.exit144.loopexit

bb.ag:                                            ; preds = %bb.af, %bb.ae
  store ptr %i.iv, ptr %i.ix, align 8, !tbaa !15
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %._crit_edge152.i136
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.gp, i64 %indvars.iv140.i119
  %i.ja = load i32, ptr %i.iz, align 4, !tbaa !8  ; 2 uses
  %i.jb = shl nuw i32 1, %i.ja                    ; 2 uses
  %i.jc = xor i32 %i.jb, %.092125.i122
  %i.jd = and i32 %i.jb, %.0187
  %.not114.i = icmp eq i32 %i.jd, 0
  br i1 %.not114.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.je = sext i32 %i.ja to i64
  %i.jf = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.je
  %i.jg = load i32, ptr %i.jf, align 4, !tbaa !8
  %i.jh = shl nuw i32 1, %i.jg
  %i.ji = xor i32 %i.jh, %.089127.i120
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ai
  %.1.i132 = phi i32 [ %i.ji, %bb.ai ], [ %.089127.i120, %bb.ah ]
  %indvars.iv.next141.i133 = add nuw nsw i64 %indvars.iv140.i119, 1 ; 2 uses
  %exitcond145.not.i134 = icmp eq i64 %indvars.iv.next141.i133, %wide.trip.count144.i
  br i1 %exitcond145.not.i134, label %Dau_DecCheckSetTop6.exit144.loopexit, label %bb.ac, !llvm.loop !19

Dau_DecCheckSetTop6.exit144.loopexit:             ; preds = %bb.af, %bb.aj
  %.0.i131.ph = phi i32 [ 1, %bb.aj ], [ 0, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  br label %Dau_DecCheckSetTop.exit91

Dau_DecCheckSetTop.exit91:                        ; preds = %Dau_DecCheckSetTop5.exit172.loopexit, %Dau_DecCheckSetTop6.exit144.loopexit
  %.0.i90 = phi i32 [ %.0.i159.ph, %Dau_DecCheckSetTop5.exit172.loopexit ], [ %.0.i131.ph, %Dau_DecCheckSetTop6.exit144.loopexit ]
  %.not70 = icmp eq i32 %.0.i90, 0
  br i1 %.not70, label %Dau_DecSetIsContained.exit, label %bb.ak

bb.ak:                                            ; preds = %Dau_DecCheckSetTop.exit91
  %i.jj = icmp eq i32 %.val.i, %i.eo
  br i1 %i.jj, label %bb.al, label %Vec_IntPush.exit99

bb.al:                                            ; preds = %bb.ak
  %i.jk = icmp slt i32 %i.eo, 16
  br i1 %i.jk, label %bb.am, label %bb.ap

bb.am:                                            ; preds = %bb.al
  %.not9.i.i97 = icmp eq ptr %i.ep, null
  br i1 %.not9.i.i97, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.jl = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.ep, i64 noundef 64) #22
  br label %Vec_IntGrow.exit11.sink.split.i95

bb.ao:                                            ; preds = %bb.am
  %i.jm = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #21
  br label %Vec_IntGrow.exit11.sink.split.i95
end_hunk_0
