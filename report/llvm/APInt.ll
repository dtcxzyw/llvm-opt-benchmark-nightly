Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/APInt?download=true
inline.NumInlined: 1403
inline.NumDeleted: 239
loop-unroll.NumRuntimeUnrolled: 96
loop-unroll.NumUnrolled: 96
begin_hunk_0_@_ZNK4llvm5APInt4rotrEj:bb.a
  %i.fw = zext nneg i32 %i.fv to i64
  %i.fx = lshr i64 -1, %i.fw
  %i.fy = getelementptr [8 x i8], ptr %i.cx, i64 %i.da
  %i.fz = getelementptr i8, ptr %i.fy, i64 -8     ; 2 uses
  %i.ga = load i64, ptr %i.fz, align 8, !tbaa !26
  %i.gb = and i64 %i.ga, %i.fx
  store i64 %i.gb, ptr %i.fz, align 8, !tbaa !26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !226)
  %min.iters.check = icmp ult i32 %.pre, 193
  br i1 %min.iters.check, label %.lr.ph.i.i.i7.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.m
  %n.vec = and i64 %i.da, 134217724               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %index ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 16
  %wide.load = load <2 x i64>, ptr %i.gc, align 8, !tbaa !26, !noalias !226
  %wide.load29 = load <2 x i64>, ptr %i.gd, align 8, !tbaa !26, !noalias !226
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %index ; 3 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 16 ; 2 uses
  %wide.load30 = load <2 x i64>, ptr %i.ge, align 8, !tbaa !26, !noalias !226
  %wide.load31 = load <2 x i64>, ptr %i.gf, align 8, !tbaa !26, !noalias !226
  %i.gg = or <2 x i64> %wide.load30, %wide.load
  %i.gh = or <2 x i64> %wide.load31, %wide.load29
  store <2 x i64> %i.gg, ptr %i.ge, align 8, !tbaa !26, !noalias !226
  store <2 x i64> %i.gh, ptr %i.gf, align 8, !tbaa !26, !noalias !226
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.gi = icmp eq i64 %index.next, %n.vec
  br i1 %i.gi, label %middle.block, label %vector.body, !llvm.loop !222

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.da, %n.vec
  br i1 %cmp.n, label %_ZN4llvm5APIntD2Ev.exit, label %.lr.ph.i.i.i7.preheader

.lr.ph.i.i.i7.preheader:                          ; preds = %bb.m, %middle.block
  %.09.i.i.i.ph = phi i64 [ 0, %bb.m ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i.i.i7

.lr.ph.i.i.i7:                                    ; preds = %.lr.ph.i.i.i7.preheader, %.lr.ph.i.i.i7
  %.09.i.i.i = phi i64 [ %i.go, %.lr.ph.i.i.i7 ], [ %.09.i.i.i.ph, %.lr.ph.i.i.i7.preheader ] ; 3 uses
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.09.i.i.i
  %i.gk = load i64, ptr %i.gj, align 8, !tbaa !26, !noalias !226
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %.09.i.i.i ; 2 uses
  %i.gm = load i64, ptr %i.gl, align 8, !tbaa !26, !noalias !226
  %i.gn = or i64 %i.gm, %i.gk
  store i64 %i.gn, ptr %i.gl, align 8, !tbaa !26, !noalias !226
  %i.go = add nuw nsw i64 %.09.i.i.i, 1           ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.go, %i.da
  br i1 %.not.i.i.i, label %_ZN4llvm5APIntD2Ev.exit, label %.lr.ph.i.i.i7, !llvm.loop !223

_ZN4llvm5APIntD2Ev.exit:                          ; preds = %.lr.ph.i.i.i7, %middle.block, %bb.l
  %.sroa.018.028 = phi i64 [ %.sroa.018.027, %bb.l ], [ %i.aa, %middle.block ], [ %i.aa, %.lr.ph.i.i.i7 ] ; 2 uses
  %i.gp = phi i32 [ %i.fj, %bb.l ], [ %.pre, %middle.block ], [ %.pre, %.lr.ph.i.i.i7 ]
  %.sroa.0.1 = phi i64 [ %i.ft, %bb.l ], [ %i.cy, %middle.block ], [ %i.cy, %.lr.ph.i.i.i7 ]
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.gp, ptr %i.gq, align 8, !tbaa !23, !alias.scope !226
  store i64 %.sroa.0.1, ptr %0, align 8, !alias.scope !226
  %i.gr = icmp eq i64 %.sroa.018.028, 0
  %or.cond = select i1 %i.q, i1 true, i1 %i.gr
  br i1 %or.cond, label %_ZN4llvm5APIntC2ERKS0_.exit6, label %bb.n

bb.n:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit
  %i.gs = inttoptr i64 %.sroa.018.028 to ptr
  tail call void @_ZdaPv(ptr noundef nonnull %i.gs) #22
  br label %_ZN4llvm5APIntC2ERKS0_.exit6

_ZN4llvm5APIntC2ERKS0_.exit6:                     ; preds = %bb.n, %_ZN4llvm5APIntD2Ev.exit, %bb.e, %bb.d, %_ZN4llvm5APIntC2ERKS0_.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @_ZNK4llvm5APInt15nearestLogBase2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !23   ; 8 uses
  %i.c = icmp eq i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %0, align 8, !tbaa !24
  %i.e = trunc i64 %i.d to i32
  %i.f = add i32 %i.e, -1
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.g = icmp ult i32 %i.b, 65                    ; 2 uses
  br i1 %i.g, label %.split, label %.lr.ph.i.i

.split:                                           ; preds = %bb.c
  %i.h = load i64, ptr %0, align 8                ; 3 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.g, label %.thread

.lr.ph.i.i:                                       ; preds = %bb.c
  %i.j = zext i32 %i.b to i64
  %i.k = add nuw nsw i64 %i.j, 63
  %i.l = lshr i64 %i.k, 6                         ; 3 uses
  %i.m = trunc nuw nsw i64 %i.l to i32
  %i.n = load ptr, ptr %0, align 8, !tbaa !24     ; 3 uses
  %i.o = shl i32 %i.m, 6                          ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.e ], [ %i.l, %.lr.ph.i.i ] ; 2 uses
  %.019.i.i = phi i32 [ %i.v, %bb.e ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.next.i
  %i.q = load i64, ptr %i.p, align 8, !tbaa !26   ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %bb.e, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.d
  %i.s = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.q, i1 true)
  %i.t = trunc nuw nsw i64 %i.s to i32
  %i.u = or disjoint i32 %.019.i.i, %i.t
  br label %_ZNK4llvm5APInt6isZeroEv.exit

bb.e:                                             ; preds = %bb.d
  %i.v = add i32 %.019.i.i, 64
  %i.w = icmp samesign ugt i64 %indvars.iv.i, 1
  br i1 %i.w, label %bb.d, label %_ZNK4llvm5APInt6isZeroEv.exit, !llvm.loop !1

_ZNK4llvm5APInt6isZeroEv.exit:                    ; preds = %bb.e, %.thread.i.i
  %.2.i.i = phi i32 [ %i.u, %.thread.i.i ], [ %i.o, %bb.e ]
  %i.x = and i32 %i.b, 63
  %.not.i.i = icmp eq i32 %i.x, 0
  %.neg.i.i = or i32 %i.b, -64
  %.neg15.i.i = select i1 %.not.i.i, i32 0, i32 %.neg.i.i ; 2 uses
  %i.y = add i32 %.2.i.i, %.neg15.i.i
  %i.z = icmp eq i32 %i.y, %i.b
  br i1 %i.z, label %bb.g, label %.lr.ph.i.i.i.i

.thread:                                          ; preds = %.split
  %i.aa = inttoptr i64 %i.h to ptr
  %.neg.i.i.i = add nsw i32 %i.b, -64
  %i.ab = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.h, i1 true)
  %i.ac = trunc nuw nsw i64 %i.ab to i32
  %i.ad = add nsw i32 %.neg.i.i.i, %i.ac
  br label %_ZNK4llvm5APInt8logBase2Ev.exit

.lr.ph.i.i.i.i:                                   ; preds = %_ZNK4llvm5APInt6isZeroEv.exit, %bb.f
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %bb.f ], [ %i.l, %_ZNK4llvm5APInt6isZeroEv.exit ] ; 2 uses
  %.019.i.i.i.i = phi i32 [ %i.ak, %bb.f ], [ 0, %_ZNK4llvm5APInt6isZeroEv.exit ] ; 2 uses
  %indvars.iv.next.i.i.i = add nsw i64 %indvars.iv.i.i.i, -1 ; 2 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.next.i.i.i
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !26 ; 2 uses
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %bb.f, label %.thread.i.i.i.i

.thread.i.i.i.i:                                  ; preds = %.lr.ph.i.i.i.i
  %i.ah = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.af, i1 true)
  %i.ai = trunc nuw nsw i64 %i.ah to i32
  %i.aj = or disjoint i32 %.019.i.i.i.i, %i.ai
  br label %_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv.exit.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ak = add i32 %.019.i.i.i.i, 64
  %i.al = icmp samesign ugt i64 %indvars.iv.i.i.i, 1
  br i1 %i.al, label %.lr.ph.i.i.i.i, label %_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv.exit.i.i.i, !llvm.loop !1

_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv.exit.i.i.i: ; preds = %bb.f, %.thread.i.i.i.i
  %.2.i.i.i.i = phi i32 [ %i.aj, %.thread.i.i.i.i ], [ %i.o, %bb.f ]
  %i.am = add i32 %.2.i.i.i.i, %.neg15.i.i
  br label %_ZNK4llvm5APInt8logBase2Ev.exit

_ZNK4llvm5APInt8logBase2Ev.exit:                  ; preds = %.thread, %_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv.exit.i.i.i
  %i.an = phi ptr [ %i.aa, %.thread ], [ %i.n, %_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv.exit.i.i.i ]
  %.0.i.i.i = phi i32 [ %i.ad, %.thread ], [ %i.am, %_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv.exit.i.i.i ]
  %i.ao = xor i32 %.0.i.i.i, -1
  %i.ap = add i32 %i.b, %i.ao                     ; 2 uses
  %i.aq = add i32 %i.ap, -1                       ; 2 uses
  %i.ar = and i32 %i.aq, 63
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = lshr i32 %i.aq, 6
  %i.au = zext nneg i32 %i.at to i64
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.au
  %.in.i.i = select i1 %i.g, ptr %0, ptr %i.av
  %i.aw = load i64, ptr %.in.i.i, align 8, !tbaa !24
  %i.ax = lshr i64 %i.aw, %i.as
  %i.ay = trunc i64 %i.ax to i32
  %i.az = and i32 %i.ay, 1
  %i.ba = add i32 %i.az, %i.ap
  br label %bb.g

bb.g:                                             ; preds = %.split, %_ZNK4llvm5APInt6isZeroEv.exit, %_ZNK4llvm5APInt8logBase2Ev.exit, %bb.b
  %.0 = phi i32 [ %i.f, %bb.b ], [ %i.ba, %_ZNK4llvm5APInt8logBase2Ev.exit ], [ -1, %_ZNK4llvm5APInt6isZeroEv.exit ], [ -1, %.split ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm5APInt9sqrtFloorEv(ptr dead_on_unwind noalias nofree writable sret(%"class.llvm::APInt") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.llvm::APInt", align 8       ; 7 uses
  %3 = alloca %"class.llvm::APInt", align 8       ; 5 uses
  %4 = alloca %"class.llvm::APInt", align 8       ; 5 uses
  %5 = alloca %"class.llvm::APInt", align 8       ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !23   ; 17 uses
  %i.c = sub i32 0, %i.b
  %i.d = icmp ult i32 %i.b, 65                    ; 4 uses
  br i1 %i.d, label %_ZNK4llvm5APInt13getActiveBitsEv.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.e = zext i32 %i.b to i64
  %i.f = add nuw nsw i64 %i.e, 63                 ; 3 uses
  %i.g = lshr i64 %i.f, 6                         ; 2 uses
  %i.h = trunc nuw nsw i64 %i.g to i32
  %i.i = load ptr, ptr %1, align 8, !tbaa !24     ; 3 uses
  %i.j = shl i32 %i.h, 6
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.c ], [ %i.g, %.lr.ph.i.i.i ] ; 2 uses
  %.019.i.i.i = phi i32 [ %i.q, %bb.c ], [ 0, %.lr.ph.i.i.i ] ; 2 uses
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1 ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next.i.i
  %i.l = load i64, ptr %i.k, align 8, !tbaa !26   ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %bb.c, label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %bb.b
  %i.n = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.l, i1 true)
  %i.o = trunc nuw nsw i64 %i.n to i32
  %i.p = or disjoint i32 %.019.i.i.i, %i.o
  br label %_ZNK4llvm5APInt13getActiveBitsEv.exit

bb.c:                                             ; preds = %bb.b
  %i.q = add i32 %.019.i.i.i, 64
  %i.r = icmp samesign ugt i64 %indvars.iv.i.i, 1
  br i1 %i.r, label %bb.b, label %_ZNK4llvm5APInt13getActiveBitsEv.exit, !llvm.loop !1

_ZNK4llvm5APInt13getActiveBitsEv.exit:            ; preds = %bb.c, %.thread.i.i.i
  %.2.i.i.i = phi i32 [ %i.p, %.thread.i.i.i ], [ %i.j, %bb.c ]
  %i.s = and i32 %i.b, 63
  %.not.i.i.i = icmp eq i32 %i.s, 0
  %.neg.i.i.i = or i32 %i.b, -64
  %.neg15.i.i.i = select i1 %.not.i.i.i, i32 0, i32 %.neg.i.i.i
  %i.t = add i32 %.neg15.i.i.i, %.2.i.i.i
  %i.u = sub i32 %i.b, %i.t                       ; 2 uses
  %i.v = icmp ult i32 %i.u, 6
  br i1 %i.v, label %bb.d, label %bb.e

_ZNK4llvm5APInt13getActiveBitsEv.exit.thread:     ; preds = %bb.a
  %i.w = load i64, ptr %1, align 8, !tbaa !24     ; 4 uses
  %i.x = icmp ult i64 %i.w, 32
  br i1 %i.x, label %.thread, label %.thread86

.thread:                                          ; preds = %_ZNK4llvm5APInt13getActiveBitsEv.exit.thread
  %i.y = getelementptr inbounds nuw i8, ptr @_ZZNK4llvm5APInt9sqrtFloorEvE7results, i64 %i.w
  %i.z = load i8, ptr %i.y, align 1, !tbaa !24
  %i.aa = zext i8 %i.z to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.b, ptr %i.ab, align 8, !tbaa !23
  store i64 %i.aa, ptr %0, align 8, !tbaa !24
  br label %_ZN4llvm5APIntC2Ejmbb.exit

bb.d:                                             ; preds = %_ZNK4llvm5APInt13getActiveBitsEv.exit
  %i.ac = load i64, ptr %i.i, align 8, !tbaa !24
  %i.ad = getelementptr inbounds nuw i8, ptr @_ZZNK4llvm5APInt9sqrtFloorEvE7results, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !24
  %i.af = zext i8 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.b, ptr %i.ag, align 8, !tbaa !23
  %i.ah = lshr i64 %i.f, 3
  %i.ai = and i64 %i.ah, 1073741816               ; 2 uses
  %i.aj = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ai) #21 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.aj, i8 0, i64 %i.ai, i1 false)
  store ptr %i.aj, ptr %0, align 8, !tbaa !24
  store i64 %i.af, ptr %i.aj, align 8, !tbaa !26
  br label %_ZN4llvm5APIntC2Ejmbb.exit

bb.e:                                             ; preds = %_ZNK4llvm5APInt13getActiveBitsEv.exit
  %i.ak = icmp ult i32 %i.u, 52
  br i1 %i.ak, label %bb.f, label %_ZN4llvm5APIntC2Ejmbb.exit12

.thread86:                                        ; preds = %_ZNK4llvm5APInt13getActiveBitsEv.exit.thread
  %i.al = icmp ult i64 %i.w, 2251799813685248
  br i1 %i.al, label %.thread87, label %_ZN4llvm5APIntC2Ejmbb.exit12.thread

_ZN4llvm5APIntC2Ejmbb.exit12.thread:              ; preds = %.thread86
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i32 %i.b, ptr %i.am, align 8, !tbaa !23
  br label %_ZN4llvm5APIntC2Ejmbb.exit13.thread

bb.f:                                             ; preds = %bb.e
  %.pre189 = load i64, ptr %i.i, align 8, !tbaa !24
  br label %.thread87

.thread87:                                        ; preds = %.thread86, %bb.f
  %i.an = phi i64 [ %.pre189, %bb.f ], [ %i.w, %.thread86 ]
  %i.ao = uitofp i64 %i.an to double
  %sqrt = tail call double @llvm.sqrt.f64(double %i.ao)
  %i.ap = tail call double @llvm.floor.f64(double %sqrt)
  %i.aq = fptoui double %i.ap to i64              ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.b, ptr %i.ar, align 8, !tbaa !23
  br i1 %i.d, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.thread87
  store i64 %i.aq, ptr %0, align 8, !tbaa !24
  br label %_ZN4llvm5APIntC2Ejmbb.exit

bb.h:                                             ; preds = %.thread87
  %i.as = zext i32 %i.b to i64
  %i.at = add nuw nsw i64 %i.as, 63
  %i.au = lshr i64 %i.at, 3
  %i.av = and i64 %i.au, 1073741816               ; 2 uses
  %i.aw = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.av) #21 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.aw, i8 0, i64 %i.av, i1 false)
  store ptr %i.aw, ptr %0, align 8, !tbaa !24
  store i64 %i.aq, ptr %i.aw, align 8, !tbaa !26
  br label %_ZN4llvm5APIntC2Ejmbb.exit

_ZN4llvm5APIntC2Ejmbb.exit12:                     ; preds = %bb.e
  %i.ax = lshr i64 %i.f, 3
  %i.ay = and i64 %i.ax, 1073741816               ; 2 uses
  %i.az = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ay) #21 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.az, i8 0, i64 %i.ay, i1 false)
  %i.ba = ptrtoint ptr %i.az to i64               ; 4 uses
  store i64 16, ptr %i.az, align 8, !tbaa !26
  %.pre = load i32, ptr %i.a, align 8, !tbaa !23  ; 7 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  store i32 %.pre, ptr %i.bb, align 8, !tbaa !23
  %i.bc = icmp ult i32 %.pre, 65
  br i1 %i.bc, label %_ZN4llvm5APIntC2Ejmbb.exit13.thread, label %_ZN4llvm5APIntC2Ejmbb.exit13

_ZN4llvm5APIntC2Ejmbb.exit13.thread:              ; preds = %_ZN4llvm5APIntC2Ejmbb.exit12.thread, %_ZN4llvm5APIntC2Ejmbb.exit12
  %.ph236 = phi ptr [ %i.bb, %_ZN4llvm5APIntC2Ejmbb.exit12 ], [ %i.am, %_ZN4llvm5APIntC2Ejmbb.exit12.thread ]
  %.sroa.075.1234.ph = phi i64 [ %i.ba, %_ZN4llvm5APIntC2Ejmbb.exit12 ], [ 16, %_ZN4llvm5APIntC2Ejmbb.exit12.thread ]
  %.ph237 = phi i32 [ %.pre, %_ZN4llvm5APIntC2Ejmbb.exit12 ], [ %i.b, %_ZN4llvm5APIntC2Ejmbb.exit12.thread ] ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %0, align 8, !tbaa !24
  br label %_ZN4llvm5APIntC2Ejmbb.exit14.thread

_ZN4llvm5APIntC2Ejmbb.exit13:                     ; preds = %_ZN4llvm5APIntC2Ejmbb.exit12
  %i.bd = zext i32 %.pre to i64
  %i.be = add nuw nsw i64 %i.bd, 63
  %i.bf = lshr i64 %i.be, 3
  %i.bg = and i64 %i.bf, 1073741816               ; 2 uses
  %i.bh = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.bg) #21 ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.bh, i8 0, i64 %i.bg, i1 false)
  store i64 1, ptr %i.bh, align 8, !tbaa !26
  %.pre187 = load i32, ptr %i.a, align 8, !tbaa !23 ; 5 uses
  store ptr %i.bh, ptr %0, align 8, !tbaa !24
  %i.bi = icmp ult i32 %.pre187, 65
  %i.bj = ptrtoint ptr %i.bh to i64               ; 3 uses
  br i1 %i.bi, label %_ZN4llvm5APIntC2Ejmbb.exit14.thread, label %_ZN4llvm5APIntC2Ejmbb.exit14

_ZN4llvm5APIntC2Ejmbb.exit14.thread:              ; preds = %_ZN4llvm5APIntC2Ejmbb.exit13.thread, %_ZN4llvm5APIntC2Ejmbb.exit13
  %.ph242.a = phi i64 [ %i.bj, %_ZN4llvm5APIntC2Ejmbb.exit13 ], [ 1, %_ZN4llvm5APIntC2Ejmbb.exit13.thread ]
  %.ph243.a = phi ptr [ %i.bh, %_ZN4llvm5APIntC2Ejmbb.exit13 ], [ inttoptr (i64 1 to ptr), %_ZN4llvm5APIntC2Ejmbb.exit13.thread ]
  %.ph244.a = phi i32 [ %.pre187, %_ZN4llvm5APIntC2Ejmbb.exit13 ], [ %.ph237, %_ZN4llvm5APIntC2Ejmbb.exit13.thread ] ; 3 uses
  %.ph245.a = phi i32 [ %.pre, %_ZN4llvm5APIntC2Ejmbb.exit13 ], [ %.ph237, %_ZN4llvm5APIntC2Ejmbb.exit13.thread ]
  %.sroa.075.1234240.ph = phi i64 [ %i.ba, %_ZN4llvm5APIntC2Ejmbb.exit13 ], [ %.sroa.075.1234.ph, %_ZN4llvm5APIntC2Ejmbb.exit13.thread ]
  %.ph246 = phi ptr [ %i.bb, %_ZN4llvm5APIntC2Ejmbb.exit13 ], [ %.ph236, %_ZN4llvm5APIntC2Ejmbb.exit13.thread ]
  %.ph247 = phi i1 [ false, %_ZN4llvm5APIntC2Ejmbb.exit13 ], [ true, %_ZN4llvm5APIntC2Ejmbb.exit13.thread ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %.ph244.a, ptr %i.bk, align 8, !tbaa !23
  %i.bl = icmp ugt i32 %.ph244.a, 64
  br label %_ZN4llvm5APIntC2Ejmbb.exit15

_ZN4llvm5APIntC2Ejmbb.exit14:                     ; preds = %_ZN4llvm5APIntC2Ejmbb.exit13
  %i.bm = zext i32 %.pre187 to i64
  %i.bn = add nuw nsw i64 %i.bm, 63
  %i.bo = lshr i64 %i.bn, 3
  %i.bp = and i64 %i.bo, 1073741816               ; 2 uses
  %i.bq = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.bp) #21 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.bq, i8 0, i64 %i.bp, i1 false)
  %i.br = ptrtoint ptr %i.bq to i64               ; 2 uses
  store i64 0, ptr %i.bq, align 8, !tbaa !26
  %.pre188 = load i32, ptr %i.a, align 8, !tbaa !23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %.pre188, ptr %i.bs, align 8, !tbaa !23
  %i.bt = icmp ult i32 %.pre188, 65
  br i1 %i.bt, label %_ZN4llvm5APIntC2Ejmbb.exit15, label %bb.i

bb.i:                                             ; preds = %_ZN4llvm5APIntC2Ejmbb.exit14
  %i.bu = zext i32 %.pre188 to i64
  %i.bv = add nuw nsw i64 %i.bu, 63
  %i.bw = lshr i64 %i.bv, 3
  %i.bx = and i64 %i.bw, 1073741816               ; 2 uses
  %i.by = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.bx) #21 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.by, i8 0, i64 %i.bx, i1 false)
  store i64 2, ptr %i.by, align 8, !tbaa !26
  br label %_ZN4llvm5APIntC2Ejmbb.exit15

_ZN4llvm5APIntC2Ejmbb.exit15:                     ; preds = %_ZN4llvm5APIntC2Ejmbb.exit14, %_ZN4llvm5APIntC2Ejmbb.exit14.thread, %bb.i
  %.sroa.0.0253 = phi i64 [ %i.br, %bb.i ], [ 0, %_ZN4llvm5APIntC2Ejmbb.exit14.thread ], [ %i.br, %_ZN4llvm5APIntC2Ejmbb.exit14 ]
  %i.bz = phi i1 [ true, %bb.i ], [ %i.bl, %_ZN4llvm5APIntC2Ejmbb.exit14.thread ], [ false, %_ZN4llvm5APIntC2Ejmbb.exit14 ]
  %i.ca = phi i1 [ false, %bb.i ], [ %.ph247, %_ZN4llvm5APIntC2Ejmbb.exit14.thread ], [ false, %_ZN4llvm5APIntC2Ejmbb.exit14 ]
  %i.cb = phi ptr [ %i.bb, %bb.i ], [ %.ph246, %_ZN4llvm5APIntC2Ejmbb.exit14.thread ], [ %i.bb, %_ZN4llvm5APIntC2Ejmbb.exit14 ] ; 5 uses
  %.sroa.075.1234240251 = phi i64 [ %i.ba, %bb.i ], [ %.sroa.075.1234240.ph, %_ZN4llvm5APIntC2Ejmbb.exit14.thread ], [ %i.ba, %_ZN4llvm5APIntC2Ejmbb.exit14 ] ; 4 uses
  %i.cc = phi i32 [ %.pre, %bb.i ], [ %.ph245.a, %_ZN4llvm5APIntC2Ejmbb.exit14.thread ], [ %.pre, %_ZN4llvm5APIntC2Ejmbb.exit14 ] ; 7 uses
  %i.cd = phi i32 [ %.pre187, %bb.i ], [ %.ph244.a, %_ZN4llvm5APIntC2Ejmbb.exit14.thread ], [ %.pre187, %_ZN4llvm5APIntC2Ejmbb.exit14 ]
  %i.ce = phi ptr [ %i.bh, %bb.i ], [ %.ph243.a, %_ZN4llvm5APIntC2Ejmbb.exit14.thread ], [ %i.bh, %_ZN4llvm5APIntC2Ejmbb.exit14 ] ; 2 uses
  %i.cf = phi i64 [ %i.bj, %bb.i ], [ %.ph242.a, %_ZN4llvm5APIntC2Ejmbb.exit14.thread ], [ %i.bj, %_ZN4llvm5APIntC2Ejmbb.exit14 ]
  %i.cg = phi ptr [ %i.by, %bb.i ], [ inttoptr (i64 2 to ptr), %_ZN4llvm5APIntC2Ejmbb.exit14.thread ], [ inttoptr (i64 2 to ptr), %_ZN4llvm5APIntC2Ejmbb.exit14 ] ; 2 uses
  store ptr %i.cg, ptr %2, align 8, !tbaa !24
  %.not119 = icmp ugt i32 %i.b, 4
  br i1 %.not119, label %.lr.ph, label %_ZNK4llvm5APInt3uleERKS0_.exit.thread

.lr.ph:                                           ; preds = %_ZN4llvm5APIntC2Ejmbb.exit15
  %i.ch = zext i32 %i.b to i64
  %i.ci = add nuw nsw i64 %i.ch, 63               ; 2 uses
  %i.cj = lshr i64 %i.ci, 3
  %i.ck = and i64 %i.cj, 1073741816               ; 2 uses
  %i.cl = lshr i64 %i.ci, 6                       ; 5 uses
  %indvars.iv.next.i1.i48 = add nsw i64 %i.cl, -1 ; 3 uses
  %i.cm = and i32 %i.c, 63
  %i.cn = zext nneg i32 %i.cm to i64
  %i.co = lshr i64 -1, %i.cn                      ; 3 uses
  br i1 %i.d, label %.lr.ph.split.us, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %i.cp = trunc nuw nsw i64 %i.cl to i32
  %i.cq = and i32 %i.cp, 1
  %lcmp.mod.not.not = icmp eq i32 %i.cq, 0
  %indvars.iv.next.i58.prol = add nsw i64 %i.cl, -2 ; 2 uses
  %i.cr = and i64 %indvars.iv.next.i58.prol, 4294967295
  %i.cs = icmp eq i64 %i.cl, 2
  br label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.ct = load i32, ptr %i.a, align 8, !tbaa !23  ; 2 uses
  %i.cu = icmp ult i32 %i.ct, 65
  %i.cv = zext i32 %i.ct to i64
  %i.cw = add nuw nsw i64 %i.cv, 63
  %i.cx = lshr i64 %i.cw, 6                       ; 2 uses
  br i1 %i.cu, label %.split.us.us.preheader, label %.lr.ph.split.us.split.split.preheader

.split.us.us.preheader:                           ; preds = %.lr.ph.split.us
  %i.cy = load i64, ptr %1, align 8, !tbaa !24
  br label %.split.us.us

.split.us.us:                                     ; preds = %.split.us.us.preheader, %_ZNK4llvm5APInt3shlEj.exit21.thread.us.us
  %.0121.us.us = phi i32 [ %i.cz, %_ZNK4llvm5APInt3shlEj.exit21.thread.us.us ], [ 4, %.split.us.us.preheader ] ; 2 uses
  %.sroa.075.0120.us.us = phi i64 [ %i.db, %_ZNK4llvm5APInt3shlEj.exit21.thread.us.us ], [ %.sroa.075.1234240251, %.split.us.us.preheader ] ; 3 uses
  %.not98.us.us = icmp ugt i64 %i.cy, %.sroa.075.0120.us.us
  br i1 %.not98.us.us, label %_ZNK4llvm5APInt3shlEj.exit21.thread.us.us, label %_ZNK4llvm5APInt3uleERKS0_.exit.thread

_ZNK4llvm5APInt3shlEj.exit21.thread.us.us:        ; preds = %.split.us.us
  %i.cz = add i32 %.0121.us.us, 2                 ; 3 uses
  %i.da = shl i64 %.sroa.075.0120.us.us, 2
  %i.db = and i64 %i.da, %i.co                    ; 2 uses
  %.not.us.us = icmp ult i32 %i.cz, %i.b
  br i1 %.not.us.us, label %.split.us.us, label %_ZNK4llvm5APInt3uleERKS0_.exit.thread, !llvm.loop !227

.lr.ph.split.us.split.split.preheader:            ; preds = %.lr.ph.split.us
  %i.dc = load ptr, ptr %1, align 8, !tbaa !24
  %.not.i.i.i16.us323 = icmp eq i64 %i.cx, 0
  br label %.lr.ph.split.us.split.split

.lr.ph.split.us.split.split:                      ; preds = %.lr.ph.split.us.split.split.preheader, %_ZNK4llvm5APInt3shlEj.exit21.thread.us
  %.0121.us = phi i32 [ %i.dj, %_ZNK4llvm5APInt3shlEj.exit21.thread.us ], [ 4, %.lr.ph.split.us.split.split.preheader ] ; 4 uses
  %.sroa.075.0120.us = phi i64 [ %i.dl, %_ZNK4llvm5APInt3shlEj.exit21.thread.us ], [ %.sroa.075.1234240251, %.lr.ph.split.us.split.split.preheader ] ; 5 uses
  %i.dd = inttoptr i64 %.sroa.075.0120.us to ptr
  br i1 %.not.i.i.i16.us323, label %_ZNK4llvm5APInt3uleERKS0_.exit.thread, label %.lr.ph325

bb.j:                                             ; preds = %.lr.ph325
  %.not.i.i.i16.us = icmp eq i64 %i.de, 0
  br i1 %.not.i.i.i16.us, label %_ZNK4llvm5APInt3uleERKS0_.exit.thread, label %.lr.ph325, !llvm.loop !8

.lr.ph325:                                        ; preds = %.lr.ph.split.us.split.split, %bb.j
  %indvars.iv.i.i.i.us324 = phi i64 [ %i.de, %bb.j ], [ %i.cx, %.lr.ph.split.us.split.split ]
  %i.de = add nsw i64 %indvars.iv.i.i.i.us324, -1 ; 4 uses
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %i.de
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !26 ; 2 uses
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %i.de
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !26 ; 2 uses
  %.not13.i.i.i.us = icmp eq i64 %i.dg, %i.di
  br i1 %.not13.i.i.i.us, label %bb.j, label %_ZNK4llvm5APInt3uleERKS0_.exit.us, !llvm.loop !8

_ZNK4llvm5APInt3uleERKS0_.exit.us:                ; preds = %.lr.ph325
  %.not97.us = icmp ugt i64 %i.dg, %i.di
  br i1 %.not97.us, label %_ZNK4llvm5APInt3shlEj.exit21.thread.us, label %_ZNK4llvm5APInt3uleERKS0_.exit.thread

_ZNK4llvm5APInt3shlEj.exit21.thread.us:           ; preds = %_ZNK4llvm5APInt3uleERKS0_.exit.us
  %i.dj = add i32 %.0121.us, 2                    ; 3 uses
  %i.dk = shl i64 %.sroa.075.0120.us, 2
  %i.dl = and i64 %i.dk, %i.co                    ; 2 uses
  %.not.us = icmp ult i32 %i.dj, %i.b
  br i1 %.not.us, label %.lr.ph.split.us.split.split, label %_ZNK4llvm5APInt3uleERKS0_.exit.thread, !llvm.loop !227

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %_ZN4llvm5APIntD2Ev.exit23
  %.0121 = phi i32 [ %i.il, %_ZN4llvm5APIntD2Ev.exit23 ], [ 4, %.lr.ph.split.preheader ] ; 5 uses
  %.sroa.075.0120 = phi i64 [ %i.im, %_ZN4llvm5APIntD2Ev.exit23 ], [ %.sroa.075.1234240251, %.lr.ph.split.preheader ] ; 7 uses
  %i.dm = load i32, ptr %i.a, align 8, !tbaa !23  ; 2 uses
  %i.dn = icmp ult i32 %i.dm, 65
  br i1 %i.dn, label %.split, label %bb.k

.split:                                           ; preds = %.lr.ph.split
  %i.do = load i64, ptr %1, align 8, !tbaa !24
  %.not98 = icmp ugt i64 %i.do, %.sroa.075.0120
  br i1 %.not98, label %.split..lr.ph.i.i47_crit_edge, label %_ZNK4llvm5APInt3uleERKS0_.exit.thread

.split..lr.ph.i.i47_crit_edge:                    ; preds = %.split
  %.pre195 = inttoptr i64 %.sroa.075.0120 to ptr
  br label %.lr.ph.i.i47

bb.k:                                             ; preds = %.lr.ph.split
  %i.dp = load ptr, ptr %1, align 8, !tbaa !24
  %i.dq = inttoptr i64 %.sroa.075.0120 to ptr     ; 2 uses
  %i.dr = zext i32 %i.dm to i64
  %i.ds = add nuw nsw i64 %i.dr, 63
  %i.dt = lshr i64 %i.ds, 6                       ; 2 uses
  %.not.i.i.i16316 = icmp eq i64 %i.dt, 0
  br i1 %.not.i.i.i16316, label %_ZNK4llvm5APInt3uleERKS0_.exit.thread, label %.lr.ph318

bb.l:                                             ; preds = %.lr.ph318
  %.not.i.i.i16 = icmp eq i64 %i.du, 0
  br i1 %.not.i.i.i16, label %_ZNK4llvm5APInt3uleERKS0_.exit.thread, label %.lr.ph318, !llvm.loop !8

.lr.ph318:                                        ; preds = %bb.k, %bb.l
  %indvars.iv.i.i.i317 = phi i64 [ %i.du, %bb.l ], [ %i.dt, %bb.k ]
  %i.du = add nsw i64 %indvars.iv.i.i.i317, -1    ; 4 uses
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %i.du
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !26 ; 2 uses
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %i.du
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !26 ; 2 uses
  %.not13.i.i.i = icmp eq i64 %i.dw, %i.dy
  br i1 %.not13.i.i.i, label %bb.l, label %_ZNK4llvm5APInt3uleERKS0_.exit, !llvm.loop !8

_ZNK4llvm5APInt3uleERKS0_.exit:                   ; preds = %.lr.ph318
  %.not97 = icmp ugt i64 %i.dw, %i.dy
  br i1 %.not97, label %.lr.ph.i.i47, label %_ZNK4llvm5APInt3uleERKS0_.exit.thread

_ZNK4llvm5APInt3uleERKS0_.exit.thread:            ; preds = %_ZN4llvm5APIntD2Ev.exit23, %_ZNK4llvm5APInt3uleERKS0_.exit, %.split, %bb.k, %bb.l, %_ZNK4llvm5APInt3shlEj.exit21.thread.us, %_ZNK4llvm5APInt3uleERKS0_.exit.us, %.lr.ph.split.us.split.split, %bb.j, %_ZNK4llvm5APInt3shlEj.exit21.thread.us.us, %.split.us.us, %_ZN4llvm5APIntC2Ejmbb.exit15
  %.sroa.075.0115 = phi i64 [ %.sroa.075.0120.us, %bb.j ], [ %.sroa.075.0120.us, %.lr.ph.split.us.split.split ], [ %.sroa.075.0120, %bb.l ], [ %.sroa.075.1234240251, %_ZN4llvm5APIntC2Ejmbb.exit15 ], [ %i.db, %_ZNK4llvm5APInt3shlEj.exit21.thread.us.us ], [ %.sroa.075.0120.us.us, %.split.us.us ], [ %.sroa.075.0120.us, %_ZNK4llvm5APInt3uleERKS0_.exit.us ], [ %i.dl, %_ZNK4llvm5APInt3shlEj.exit21.thread.us ], [ %i.im, %_ZN4llvm5APIntD2Ev.exit23 ], [ %.sroa.075.0120, %.split ], [ %.sroa.075.0120, %bb.k ], [ %.sroa.075.0120, %_ZNK4llvm5APInt3uleERKS0_.exit ] ; 2 uses
  %.0113 = phi i32 [ %.0121.us, %bb.j ], [ %.0121.us, %.lr.ph.split.us.split.split ], [ %.0121, %bb.l ], [ 4, %_ZN4llvm5APIntC2Ejmbb.exit15 ], [ %i.cz, %_ZNK4llvm5APInt3shlEj.exit21.thread.us.us ], [ %.0121.us.us, %.split.us.us ], [ %.0121.us, %_ZNK4llvm5APInt3uleERKS0_.exit.us ], [ %i.dj, %_ZNK4llvm5APInt3shlEj.exit21.thread.us ], [ %i.il, %_ZN4llvm5APIntD2Ev.exit23 ], [ %.0121, %.split ], [ %.0121, %bb.k ], [ %.0121, %_ZNK4llvm5APInt3uleERKS0_.exit ] ; 3 uses
  %i.dz = lshr exact i32 %.0113, 1                ; 3 uses
  br i1 %i.ca, label %_ZNK4llvm5APInt3shlEj.exit.thread, label %bb.m

_ZNK4llvm5APInt3shlEj.exit.thread:                ; preds = %_ZNK4llvm5APInt3uleERKS0_.exit.thread
  %i.ea = icmp eq i32 %i.dz, %i.cc
  %i.eb = zext nneg i32 %i.dz to i64
  %i.ec = shl i64 %i.cf, %i.eb
  %storemerge.i.i = select i1 %i.ea, i64 0, i64 %i.ec
  %i.ed = sub nsw i32 0, %i.cc
  %i.ee = and i32 %i.ed, 63
  %i.ef = zext nneg i32 %i.ee to i64
  %i.eg = lshr i64 -1, %i.ef
  %i.eh = icmp eq i32 %i.cc, 0
  %.04.i.i.i = select i1 %i.eh, i64 0, i64 %i.eg, !prof !27
  %i.ei = and i64 %storemerge.i.i, %.04.i.i.i
  br label %_ZN4llvm5APIntD2Ev.exit

bb.m:                                             ; preds = %_ZNK4llvm5APInt3uleERKS0_.exit.thread
  %i.ej = zext i32 %i.cc to i64
  %i.ek = add nuw nsw i64 %i.ej, 63               ; 2 uses
  %i.el = lshr i64 %i.ek, 3
  %i.em = and i64 %i.el, 1073741816               ; 2 uses
  %i.en = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.em) #21, !noalias !235 ; 15 uses
  %i.eo = ptrtoint ptr %i.en to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.en, ptr nonnull align 8 %i.ce, i64 %i.em, i1 false), !noalias !235
  %i.ep = lshr i64 %i.ek, 6                       ; 4 uses
  %i.eq = trunc nuw nsw i64 %i.ep to i32          ; 5 uses
  %.not.i.i = icmp eq i32 %.0113, 0
  br i1 %.not.i.i, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.er = lshr i32 %.0113, 7                      ; 2 uses
  %.sroa.speculated.i.i = tail call i32 @llvm.umin.i32(i32 %i.eq, i32 %i.er) ; 12 uses
  %i.es = and i32 %i.dz, 63                       ; 3 uses
  %i.et = icmp eq i32 %i.es, 0
  br i1 %i.et, label %bb.o, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.n
  %i.eu = icmp samesign ult i32 %i.er, %i.eq
  br i1 %i.eu, label %.lr.ph.i.i, label %.loopexit.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %i.ev = zext nneg i32 %i.es to i64              ; 4 uses
  %i.ew = sub nuw nsw i32 64, %i.es
  %i.ex = zext nneg i32 %i.ew to i64              ; 3 uses
  %indvars.iv.next.i1.i = add nsw i64 %i.ep, -1   ; 4 uses
  %indvars.i2.i = trunc nuw nsw i64 %indvars.iv.next.i1.i to i32 ; 2 uses
  %i.ey = sub nuw nsw i32 %indvars.i2.i, %.sroa.speculated.i.i
  %i.ez = zext nneg i32 %i.ey to i64
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %i.ez
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !26
  %i.fc = shl i64 %i.fb, %i.ev                    ; 3 uses
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %indvars.iv.next.i1.i ; 3 uses
  store i64 %i.fc, ptr %i.fd, align 8, !tbaa !26
  %i.fe = icmp samesign ult i32 %.sroa.speculated.i.i, %indvars.i2.i
  br i1 %i.fe, label %.lr.ph.preheader.i, label %.loopexit.i.i

.lr.ph.preheader.i:                               ; preds = %.lr.ph.i.i
  %i.ff = xor i32 %.sroa.speculated.i.i, -1
  %i.fg = sext i32 %i.ff to i64
  %invariant.gep.i = getelementptr [8 x i8], ptr %i.en, i64 %i.fg ; 3 uses
  %i.fh = add nsw i32 %i.eq, -2
  %i.fi = sub nsw i32 %.sroa.speculated.i.i, %i.eq
  %i.fj = and i32 %i.fi, 1
  %lcmp.mod374.not.not = icmp eq i32 %i.fj, 0
  br i1 %lcmp.mod374.not.not, label %.lr.ph.i.prol, label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol:                                    ; preds = %.lr.ph.preheader.i
  %gep.i.prol = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i1.i
  %i.fk = load i64, ptr %gep.i.prol, align 8, !tbaa !26
  %i.fl = lshr i64 %i.fk, %i.ex
  %i.fm = or i64 %i.fl, %i.fc
  store i64 %i.fm, ptr %i.fd, align 8, !tbaa !26
  %indvars.iv.next.i.prol = add nsw i64 %i.ep, -2 ; 3 uses
  %indvars.i.prol = trunc nsw i64 %indvars.iv.next.i.prol to i32
  %i.fn = sub nuw nsw i32 %indvars.i.prol, %.sroa.speculated.i.i
  %i.fo = zext i32 %i.fn to i64
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %i.fo
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !26
  %i.fr = shl i64 %i.fq, %i.ev                    ; 2 uses
  %i.fs = and i64 %indvars.iv.next.i.prol, 4294967295
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %i.fs ; 2 uses
  store i64 %i.fr, ptr %i.ft, align 8, !tbaa !26
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.preheader.i
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.next.i1.i, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %.unr375 = phi ptr [ %i.fd, %.lr.ph.preheader.i ], [ %i.ft, %.lr.ph.i.prol ]
  %.unr376 = phi i64 [ %i.fc, %.lr.ph.preheader.i ], [ %i.fr, %.lr.ph.i.prol ]
  %i.fu = icmp eq i32 %i.fh, %.sroa.speculated.i.i
  br i1 %i.fu, label %.loopexit.i.i, label %.lr.ph.i

bb.o:                                             ; preds = %bb.n
  %i.fv = zext nneg i32 %.sroa.speculated.i.i to i64
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %i.fv
  %i.fx = sub nuw nsw i32 %i.eq, %.sroa.speculated.i.i
  %i.fy = shl nuw nsw i32 %i.fx, 3
  %i.fz = zext nneg i32 %i.fy to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.fw, ptr nonnull align 8 %i.en, i64 %i.fz, i1 false)
  br label %.loopexit.i.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %i.ga = phi ptr [ %i.gv, %.lr.ph.i ], [ %.unr375, %.lr.ph.i.prol.loopexit ]
  %i.gb = phi i64 [ %i.gt, %.lr.ph.i ], [ %.unr376, %.lr.ph.i.prol.loopexit ]
  %gep.i = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i
  %i.gc = load i64, ptr %gep.i, align 8, !tbaa !26
  %i.gd = lshr i64 %i.gc, %i.ex
  %i.ge = or i64 %i.gd, %i.gb
  store i64 %i.ge, ptr %i.ga, align 8, !tbaa !26
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 3 uses
  %indvars.i = trunc i64 %indvars.iv.next.i to i32
  %i.gf = sub nuw i32 %indvars.i, %.sroa.speculated.i.i
  %i.gg = zext i32 %i.gf to i64
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %i.gg
  %i.gi = load i64, ptr %i.gh, align 8, !tbaa !26
  %i.gj = shl i64 %i.gi, %i.ev                    ; 2 uses
  %i.gk = and i64 %indvars.iv.next.i, 4294967295
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %i.gk ; 2 uses
  store i64 %i.gj, ptr %i.gl, align 8, !tbaa !26
  %gep.i.1 = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i
  %i.gm = load i64, ptr %gep.i.1, align 8, !tbaa !26
  %i.gn = lshr i64 %i.gm, %i.ex
  %i.go = or i64 %i.gn, %i.gj
  store i64 %i.go, ptr %i.gl, align 8, !tbaa !26
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i, -2 ; 3 uses
  %indvars.i.1 = trunc i64 %indvars.iv.next.i.1 to i32 ; 2 uses
  %i.gp = sub nuw i32 %indvars.i.1, %.sroa.speculated.i.i
  %i.gq = zext i32 %i.gp to i64
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %i.gq
  %i.gs = load i64, ptr %i.gr, align 8, !tbaa !26
  %i.gt = shl i64 %i.gs, %i.ev                    ; 2 uses
  %i.gu = and i64 %indvars.iv.next.i.1, 4294967295
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %i.gu ; 2 uses
  store i64 %i.gt, ptr %i.gv, align 8, !tbaa !26
  %i.gw = icmp ult i32 %.sroa.speculated.i.i, %indvars.i.1
  br i1 %i.gw, label %.lr.ph.i, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.o, %.lr.ph.i.i, %.preheader.i.i
  %i.gx = shl nuw nsw i32 %.sroa.speculated.i.i, 3
  %i.gy = zext nneg i32 %i.gx to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.en, i8 0, i64 %i.gy, i1 false)
  br label %bb.p

bb.p:                                             ; preds = %.loopexit.i.i, %bb.m
  %i.gz = sub i32 0, %i.cc
  %i.ha = and i32 %i.gz, 63
  %i.hb = zext nneg i32 %i.ha to i64
  %i.hc = lshr i64 -1, %i.hb
  %i.hd = getelementptr [8 x i8], ptr %i.en, i64 %i.ep
  %i.he = getelementptr i8, ptr %i.hd, i64 -8     ; 2 uses
  %i.hf = load i64, ptr %i.he, align 8, !tbaa !26
  %i.hg = and i64 %i.hf, %i.hc
  store i64 %i.hg, ptr %i.he, align 8, !tbaa !26
  tail call void @_ZdaPv(ptr noundef nonnull %i.ce) #22
  br label %_ZN4llvm5APIntD2Ev.exit

_ZN4llvm5APIntD2Ev.exit:                          ; preds = %bb.p, %_ZNK4llvm5APInt3shlEj.exit.thread
  %.sroa.066.091 = phi i64 [ %i.ei, %_ZNK4llvm5APInt3shlEj.exit.thread ], [ %i.eo, %bb.p ] ; 3 uses
  store i64 %.sroa.066.091, ptr %0, align 8
  store i32 %i.cc, ptr %i.cb, align 8, !tbaa !23
  %i.hh = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.hj = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.hk = inttoptr i64 %.sroa.066.091 to ptr
  br label %_ZN4llvm5APIntaSERKS0_.exit

.lr.ph.i.i47:                                     ; preds = %.split..lr.ph.i.i47_crit_edge, %_ZNK4llvm5APInt3uleERKS0_.exit
  %.pre-phi196 = phi ptr [ %.pre195, %.split..lr.ph.i.i47_crit_edge ], [ %i.dq, %_ZNK4llvm5APInt3uleERKS0_.exit ] ; 2 uses
  %i.hl = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ck) #21, !noalias !236 ; 8 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.hl, ptr align 8 %.pre-phi196, i64 %i.ck, i1 false), !noalias !236
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %i.hl, i64 %indvars.iv.next.i1.i48 ; 4 uses
  %i.hn = load i64, ptr %i.hm, align 8, !tbaa !26
  %i.ho = shl i64 %i.hn, 2                        ; 3 uses
  store i64 %i.ho, ptr %i.hm, align 8, !tbaa !26
  %invariant.gep.i51 = getelementptr i8, ptr %i.hl, i64 -8 ; 3 uses
  br i1 %lcmp.mod.not.not, label %.lr.ph.i52.prol, label %.lr.ph.i52.prol.loopexit

.lr.ph.i52.prol:                                  ; preds = %.lr.ph.i.i47
  %gep.i55.prol = getelementptr [8 x i8], ptr %invariant.gep.i51, i64 %indvars.iv.next.i1.i48
  %i.hp = load i64, ptr %gep.i55.prol, align 8, !tbaa !26
  %i.hq = lshr i64 %i.hp, 62
  %i.hr = or disjoint i64 %i.hq, %i.ho
  store i64 %i.hr, ptr %i.hm, align 8, !tbaa !26
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %i.hl, i64 %i.cr ; 3 uses
  %i.ht = load i64, ptr %i.hs, align 8, !tbaa !26
  %i.hu = shl i64 %i.ht, 2                        ; 2 uses
  store i64 %i.hu, ptr %i.hs, align 8, !tbaa !26
  br label %.lr.ph.i52.prol.loopexit

.lr.ph.i52.prol.loopexit:                         ; preds = %.lr.ph.i52.prol, %.lr.ph.i.i47
  %indvars.iv.i53.unr = phi i64 [ %indvars.iv.next.i1.i48, %.lr.ph.i.i47 ], [ %indvars.iv.next.i58.prol, %.lr.ph.i52.prol ]
  %.unr = phi ptr [ %i.hm, %.lr.ph.i.i47 ], [ %i.hs, %.lr.ph.i52.prol ]
  %.unr372 = phi i64 [ %i.ho, %.lr.ph.i.i47 ], [ %i.hu, %.lr.ph.i52.prol ]
  br i1 %i.cs, label %_ZN4llvm5APIntD2Ev.exit23, label %.lr.ph.i52

.lr.ph.i52:                                       ; preds = %.lr.ph.i52.prol.loopexit, %.lr.ph.i52
  %indvars.iv.i53 = phi i64 [ %indvars.iv.next.i58.1, %.lr.ph.i52 ], [ %indvars.iv.i53.unr, %.lr.ph.i52.prol.loopexit ] ; 3 uses
  %i.hv = phi ptr [ %i.ii, %.lr.ph.i52 ], [ %.unr, %.lr.ph.i52.prol.loopexit ]
  %i.hw = phi i64 [ %i.ik, %.lr.ph.i52 ], [ %.unr372, %.lr.ph.i52.prol.loopexit ]
end_hunk_0
