Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/mpn?download=true
inline.NumInlined: 115
inline.NumDeleted: 25
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZNK11mpn_manager5div_1ER7sbufferIjLj16EEjPj:bb.a
  tail call void @_Z18invoke_exit_actionj(i32 noundef 114)
  %.pre36 = load ptr, ptr %1, align 8, !tbaa !21
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.r = phi ptr [ %.pre36, %bb.c ], [ %i.e, %bb.b ] ; 3 uses
  %i.s = mul i64 %i.p, %i.c
  %i.t = icmp ugt i64 %i.s, %i.o
  %i.u = trunc i64 %.recomposed to i32
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.k ; 2 uses
  store i32 %i.u, ptr %i.v, align 4, !tbaa !13
  %i.w = lshr i64 %.recomposed, 32
  %i.x = trunc nuw i64 %i.w to i32
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv ; 2 uses
  store i32 %i.x, ptr %i.y, align 4, !tbaa !13
  %i.z = trunc i64 %i.p to i32                    ; 2 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.k ; 2 uses
  store i32 %i.z, ptr %i.aa, align 4, !tbaa !13
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ab = add i32 %i.z, -1
  store i32 %i.ab, ptr %i.aa, align 4, !tbaa !13
  %i.ac = load i32, ptr %i.v, align 4, !tbaa !13
  %i.ad = add i32 %i.ac, %2
  store i32 %i.ad, ptr %i.y, align 4, !tbaa !13
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.ae = and i64 %indvars.iv.next, 4294967295
  %.not = icmp eq i64 %i.ae, 0
  %i.af = trunc nuw i64 %indvars.iv to i32
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !3
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZNK11mpn_manager5div_nER7sbufferIjLj16EERKS1_PjS5_S2_S2_(ptr nofree nonnull readnone align 1 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree readnone captures(none) %4, ptr nofree noundef nonnull align 8 captures(address) dereferenceable(80) %5, ptr nofree noundef nonnull align 8 captures(address) dereferenceable(80) %6) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !22   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !22   ; 13 uses
  %i.e = add i32 %i.d, 1                          ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 6 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !22   ; 4 uses
  %i.h = icmp ugt i32 %i.e, %i.g
  br i1 %i.h, label %.preheader.i, label %bb.e

.preheader.i:                                     ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 16
  br label %bb.b

bb.b:                                             ; preds = %_ZN6bufferIjLb0ELj16EE9push_backERKj.exit.i, %.preheader.i
  %i.k = phi i32 [ %i.g, %.preheader.i ], [ %i.av, %_ZN6bufferIjLb0ELj16EE9push_backERKj.exit.i ] ; 2 uses
  %.01320.i = phi i32 [ %i.g, %.preheader.i ], [ %i.aw, %_ZN6bufferIjLb0ELj16EE9push_backERKj.exit.i ] ; 2 uses
  %i.l = load i32, ptr %i.i, align 4, !tbaa !23   ; 2 uses
  %.not.i.i = icmp ult i32 %i.k, %i.l
  br i1 %.not.i.i, label %._crit_edge.i.i, label %bb.c

._crit_edge.i.i:                                  ; preds = %bb.b
  %.pre.i.i = load ptr, ptr %5, align 8, !tbaa !21
  br label %_ZN6bufferIjLb0ELj16EE9push_backERKj.exit.i

bb.c:                                             ; preds = %bb.b
  %i.m = shl i32 %i.l, 1                          ; 2 uses
  %i.n = zext i32 %i.m to i64
  %i.o = shl nuw nsw i64 %i.n, 2
  %i.p = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef %i.o) ; 9 uses
  %i.q = load i32, ptr %i.f, align 8, !tbaa !22   ; 4 uses
  %.not.i.i.i = icmp eq i32 %i.q, 0
  %.pre.i.i.i = load ptr, ptr %5, align 8, !tbaa !21 ; 10 uses
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c
  %.pre.i.i.i140 = ptrtoaddr ptr %.pre.i.i.i to i64
  %i.r = ptrtoaddr ptr %i.p to i64
  %wide.trip.count.i.i.i = zext i32 %i.q to i64   ; 5 uses
  %min.iters.check = icmp ult i32 %i.q, 8
  %i.s = sub i64 %.pre.i.i.i140, %i.r
  %diff.check = icmp ugt i64 %i.s, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i
  %n.vec = and i64 %wide.trip.count.i.i.i, 4294967288 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %index ; 2 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i, i64 %index ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %wide.load = load <4 x i32>, ptr %i.u, align 4, !tbaa !13
  %wide.load141 = load <4 x i32>, ptr %i.v, align 4, !tbaa !13
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store <4 x i32> %wide.load, ptr %i.t, align 4, !tbaa !13
  store <4 x i32> %wide.load141, ptr %i.w, align 4, !tbaa !13
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !64

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i
  br i1 %cmp.n, label %._crit_edge.i.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i.i, %middle.block
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 3   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv.i.i.i.prol
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i, i64 %indvars.iv.i.i.i.prol
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !13
  store i32 %i.aa, ptr %i.y, align 4, !tbaa !13
  %indvars.iv.next.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !65

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ]
  %i.ab = sub nsw i64 %indvars.iv.i.i.i.ph, %wide.trip.count.i.i.i
  %i.ac = icmp ugt i64 %i.ab, -4
  br i1 %i.ac, label %._crit_edge.i.i.i, label %scalar.ph

._crit_edge.i.i.i:                                ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.c
  %.not.i.i.i.i = icmp eq ptr %.pre.i.i.i, %i.j
  %i.ad = icmp eq ptr %.pre.i.i.i, null
  %or.cond.i.i.i.i = or i1 %.not.i.i.i.i, %i.ad
  br i1 %or.cond.i.i.i.i, label %_ZN6bufferIjLb0ELj16EE6expandEv.exit.i.i, label %bb.d

bb.d:                                             ; preds = %._crit_edge.i.i.i
  tail call void @_ZN6memory10deallocateEPv(ptr noundef nonnull %.pre.i.i.i)
  %.pre2.pre.i.i = load i32, ptr %i.f, align 8, !tbaa !22
  br label %_ZN6bufferIjLb0ELj16EE6expandEv.exit.i.i

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.3, %scalar.ph ], [ %indvars.iv.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv.i.i.i
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i, i64 %indvars.iv.i.i.i
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !13
  store i32 %i.ag, ptr %i.ae, align 4, !tbaa !13
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv.next.i.i.i
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i, i64 %indvars.iv.next.i.i.i
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !13
  store i32 %i.aj, ptr %i.ah, align 4, !tbaa !13
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv.next.i.i.i.1
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i, i64 %indvars.iv.next.i.i.i.1
  %i.am = load i32, ptr %i.al, align 4, !tbaa !13
  store i32 %i.am, ptr %i.ak, align 4, !tbaa !13
  %indvars.iv.next.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i, 3 ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv.next.i.i.i.2
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i, i64 %indvars.iv.next.i.i.i.2
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !13
  store i32 %i.ap, ptr %i.an, align 4, !tbaa !13
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.3, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %._crit_edge.i.i.i, label %scalar.ph, !llvm.loop !66

_ZN6bufferIjLb0ELj16EE6expandEv.exit.i.i:         ; preds = %bb.d, %._crit_edge.i.i.i
  %.pre2.i.i = phi i32 [ %i.q, %._crit_edge.i.i.i ], [ %.pre2.pre.i.i, %bb.d ]
  store ptr %i.p, ptr %5, align 8, !tbaa !21
  store i32 %i.m, ptr %i.i, align 4, !tbaa !23
  br label %_ZN6bufferIjLb0ELj16EE9push_backERKj.exit.i

_ZN6bufferIjLb0ELj16EE9push_backERKj.exit.i:      ; preds = %_ZN6bufferIjLb0ELj16EE6expandEv.exit.i.i, %._crit_edge.i.i
  %i.aq = phi i32 [ %i.k, %._crit_edge.i.i ], [ %.pre2.i.i, %_ZN6bufferIjLb0ELj16EE6expandEv.exit.i.i ]
  %i.ar = phi ptr [ %.pre.i.i, %._crit_edge.i.i ], [ %i.p, %_ZN6bufferIjLb0ELj16EE6expandEv.exit.i.i ]
  %i.as = zext i32 %i.aq to i64
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.as
  store i32 0, ptr %i.at, align 4, !tbaa !13
  %i.au = load i32, ptr %i.f, align 8, !tbaa !22
  %i.av = add i32 %i.au, 1                        ; 2 uses
  store i32 %i.av, ptr %i.f, align 8, !tbaa !22
  %i.aw = add i32 %.01320.i, 1
  %exitcond.not.i = icmp eq i32 %.01320.i, %i.d
  br i1 %exitcond.not.i, label %_ZN6bufferIjLb0ELj16EE6resizeEjRKj.exit, label %bb.b, !llvm.loop !4

bb.e:                                             ; preds = %bb.a
  %i.ax = icmp ult i32 %i.e, %i.g
  br i1 %i.ax, label %.preheader17.i, label %_ZN6bufferIjLb0ELj16EE6resizeEjRKj.exit

.preheader17.i:                                   ; preds = %bb.e
  store i32 %i.e, ptr %i.f, align 8, !tbaa !22
  br label %_ZN6bufferIjLb0ELj16EE6resizeEjRKj.exit

_ZN6bufferIjLb0ELj16EE6resizeEjRKj.exit:          ; preds = %_ZN6bufferIjLb0ELj16EE9push_backERKj.exit.i, %bb.e, %.preheader17.i
  %.not111 = icmp eq i32 %i.b, %i.d
  br i1 %.not111, label %._crit_edge, label %.lr.ph112

.lr.ph112:                                        ; preds = %_ZN6bufferIjLb0ELj16EE6resizeEjRKj.exit
  %i.ay = xor i32 %i.d, -1
  %i.az = add i32 %i.b, %i.ay                     ; 2 uses
  %i.ba = add i32 %i.d, -1
  %i.bb = zext i32 %i.ba to i64
  %i.bc = add i32 %i.d, -2
  %i.bd = zext i32 %i.bc to i64
  %.not5572.i = icmp eq i32 %i.d, 0
  %wide.trip.count63.i = zext i32 %i.d to i64     ; 3 uses
  %.not.i = icmp eq i32 %i.e, 0                   ; 2 uses
  %i.be = zext i32 %i.e to i64                    ; 9 uses
  %i.bf = add i32 %i.d, 2                         ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 6 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %6, i64 16
  %.sroa.speculated.i = tail call i32 @llvm.umax.i32(i32 %i.d, i32 %i.e)
  %wide.trip.count.i97 = zext i32 %.sroa.speculated.i to i64 ; 2 uses
  %i.bj = zext i32 %i.az to i64
  %i.bk = add nsw i64 %i.be, -1                   ; 2 uses
  %xtraiter174 = and i64 %wide.trip.count63.i, 1
  %i.bl = icmp eq i32 %i.d, 1
  %unroll_iter = and i64 %wide.trip.count63.i, 4294967294
  %lcmp.mod175.not = icmp eq i64 %xtraiter174, 0
  %lcmp.mod176 = trunc i32 %i.d to i1
  %min.iters.check145 = icmp ult i32 %i.e, 12
  %i.bm = trunc i64 %i.bk to i32
  %i.bn = icmp ugt i64 %i.bk, 4294967295
  %n.vec147 = and i64 %i.be, 4294967288           ; 3 uses
  %cmp.n154 = icmp eq i64 %n.vec147, %i.be
  %xtraiter180 = and i64 %i.be, 3                 ; 2 uses
  %lcmp.mod181.not = icmp eq i64 %xtraiter180, 0
  br label %bb.f

._crit_edge:                                      ; preds = %.loopexit, %_ZN6bufferIjLb0ELj16EE6resizeEjRKj.exit
  ret i1 true

bb.f:                                             ; preds = %.lr.ph112, %.loopexit
  %indvar = phi i32 [ 0, %.lr.ph112 ], [ %indvar.next, %.loopexit ] ; 2 uses
  %indvars.iv116 = phi i64 [ %i.bj, %.lr.ph112 ], [ %indvars.iv.next117, %.loopexit ] ; 13 uses
  %7 = sub i32 %i.az, %indvar
  %8 = zext i32 %7 to i64
  %9 = shl nuw nsw i64 %8, 2
  %i.bo = trunc nuw i64 %indvars.iv116 to i32     ; 2 uses
  %i.bp = add i32 %i.d, %i.bo                     ; 3 uses
  %i.bq = load ptr, ptr %1, align 8, !tbaa !21    ; 4 uses
  %i.br = zext i32 %i.bp to i64
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.br
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !13
  %i.bu = zext i32 %i.bt to i64
  %i.bv = shl nuw i64 %i.bu, 32
  %i.bw = add i32 %i.bp, -1
  %i.bx = zext i32 %i.bw to i64
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.bx
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !13
  %i.ca = zext i32 %i.bz to i64
  %i.cb = or disjoint i64 %i.bv, %i.ca            ; 2 uses
  %i.cc = load ptr, ptr %2, align 8, !tbaa !21    ; 5 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %i.bb
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !13
  %i.cf = zext i32 %i.ce to i64                   ; 3 uses
  %i.cg = udiv i64 %i.cb, %i.cf
  %i.ch = urem i64 %i.cb, %i.cf
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %i.bd
  %i.cj = add i32 %i.bp, -2
  %i.ck = zext i32 %i.cj to i64
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.ck
  br label %bb.g

bb.g:                                             ; preds = %bb.i, %bb.f
  %.066 = phi i64 [ %i.cg, %bb.f ], [ %i.cv, %bb.i ] ; 4 uses
  %.065 = phi i64 [ %i.ch, %bb.f ], [ %i.cw, %bb.i ] ; 2 uses
  %i.cm = icmp ugt i64 %.066, 4294967295
  br i1 %i.cm, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cn = load i32, ptr %i.ci, align 4, !tbaa !13
  %i.co = zext i32 %i.cn to i64
  %i.cp = mul nuw i64 %.066, %i.co
  %i.cq = shl nuw i64 %.065, 32
  %i.cr = load i32, ptr %i.cl, align 4, !tbaa !13
  %i.cs = zext i32 %i.cr to i64
  %i.ct = or disjoint i64 %i.cq, %i.cs
  %i.cu = icmp ugt i64 %i.cp, %i.ct
  br i1 %i.cu, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.cv = add i64 %.066, -1                       ; 2 uses
  %i.cw = add nuw nsw i64 %.065, %i.cf            ; 2 uses
  %i.cx = icmp samesign ult i64 %i.cw, 4294967296
  br i1 %i.cx, label %bb.g, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.1 = phi i64 [ %i.cv, %bb.i ], [ %.066, %bb.h ] ; 2 uses
  %i.cy = trunc i64 %.1 to i32                    ; 3 uses
  %i.cz = load ptr, ptr %5, align 8, !tbaa !21    ; 8 uses
  store i32 0, ptr %i.cz, align 4
  br i1 %.not5572.i, label %.lr.ph.preheader.i, label %.lr.ph53.split.us.preheader.i

.lr.ph53.split.us.preheader.i:                    ; preds = %bb.j
  %i.da = and i64 %.1, 4294967295                 ; 3 uses
  br i1 %i.bl, label %.lr.ph53.split.us.i.epil.preheader, label %.lr.ph53.split.us.i

.lr.ph53.split.us.i:                              ; preds = %.lr.ph53.split.us.preheader.i, %bb.k
  %i.db = phi i32 [ %.sink.i.1, %bb.k ], [ 0, %.lr.ph53.split.us.preheader.i ]
  %indvars.iv60.i = phi i64 [ %i.ds, %bb.k ], [ 0, %.lr.ph53.split.us.preheader.i ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %bb.k ], [ 0, %.lr.ph53.split.us.preheader.i ]
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %indvars.iv60.i
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !13 ; 2 uses
  %i.de = icmp eq i32 %i.dd, 0
  br i1 %i.de, label %.lr.ph53.split.us.i.1, label %.preheader.us.i

.lr.ph53.split.us.i.1:                            ; preds = %.lr.ph53.split.us.i, %.preheader.us.i
  %.sink.i = phi i32 [ %i.eb, %.preheader.us.i ], [ 0, %.lr.ph53.split.us.i ] ; 2 uses
  %i.df = or disjoint i64 %indvars.iv60.i, 1      ; 3 uses
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %i.df
  store i32 %.sink.i, ptr %i.dg, align 4, !tbaa !13
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %i.df
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !13 ; 2 uses
  %i.dj = icmp eq i32 %i.di, 0
  br i1 %i.dj, label %bb.k, label %.preheader.us.i.1

.preheader.us.i.1:                                ; preds = %.lr.ph53.split.us.i.1
  %i.dk = zext i32 %i.di to i64
  %i.dl = mul nuw i64 %i.da, %i.dk
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %i.df
  %i.dn = zext i32 %.sink.i to i64
  %i.do = add nuw i64 %i.dl, %i.dn                ; 2 uses
  %i.dp = trunc i64 %i.do to i32
  store i32 %i.dp, ptr %i.dm, align 4, !tbaa !13
  %i.dq = lshr i64 %i.do, 32
  %i.dr = trunc nuw i64 %i.dq to i32
  br label %bb.k

bb.k:                                             ; preds = %.preheader.us.i.1, %.lr.ph53.split.us.i.1
  %.sink.i.1 = phi i32 [ %i.dr, %.preheader.us.i.1 ], [ 0, %.lr.ph53.split.us.i.1 ] ; 3 uses
  %i.ds = add nuw nsw i64 %indvars.iv60.i, 2      ; 3 uses
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %i.ds
  store i32 %.sink.i.1, ptr %i.dt, align 4, !tbaa !13
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK11mpn_manager3mulEPKjjS1_jPj.exit.unr-lcssa, label %.lr.ph53.split.us.i, !llvm.loop !2

.preheader.us.i:                                  ; preds = %.lr.ph53.split.us.i
  %i.du = zext i32 %i.dd to i64
  %i.dv = mul nuw i64 %i.da, %i.du
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %indvars.iv60.i
  %i.dx = zext i32 %i.db to i64
  %i.dy = add nuw i64 %i.dv, %i.dx                ; 2 uses
  %i.dz = trunc i64 %i.dy to i32
  store i32 %i.dz, ptr %i.dw, align 4, !tbaa !13
  %i.ea = lshr i64 %i.dy, 32
  %i.eb = trunc nuw i64 %i.ea to i32
  br label %.lr.ph53.split.us.i.1

_ZNK11mpn_manager3mulEPKjjS1_jPj.exit.unr-lcssa:  ; preds = %bb.k
  br i1 %lcmp.mod175.not, label %_ZNK11mpn_manager3mulEPKjjS1_jPj.exit, label %.lr.ph53.split.us.i.epil.preheader

.lr.ph53.split.us.i.epil.preheader:               ; preds = %_ZNK11mpn_manager3mulEPKjjS1_jPj.exit.unr-lcssa, %.lr.ph53.split.us.preheader.i
  %.epil.init = phi i32 [ 0, %.lr.ph53.split.us.preheader.i ], [ %.sink.i.1, %_ZNK11mpn_manager3mulEPKjjS1_jPj.exit.unr-lcssa ]
  %indvars.iv60.i.epil.init = phi i64 [ 0, %.lr.ph53.split.us.preheader.i ], [ %i.ds, %_ZNK11mpn_manager3mulEPKjjS1_jPj.exit.unr-lcssa ] ; 3 uses
  tail call void @llvm.assume(i1 %lcmp.mod176)
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %indvars.iv60.i.epil.init
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !13 ; 2 uses
  %i.ee = icmp eq i32 %i.ed, 0
  br i1 %i.ee, label %_ZNK11mpn_manager3mulEPKjjS1_jPj.exit.epilog-lcssa, label %.preheader.us.i.epil

.preheader.us.i.epil:                             ; preds = %.lr.ph53.split.us.i.epil.preheader
  %i.ef = zext i32 %i.ed to i64
  %i.eg = mul nuw i64 %i.da, %i.ef
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %indvars.iv60.i.epil.init
  %i.ei = zext i32 %.epil.init to i64
  %i.ej = add nuw i64 %i.eg, %i.ei                ; 2 uses
  %i.ek = trunc i64 %i.ej to i32
  store i32 %i.ek, ptr %i.eh, align 4, !tbaa !13
  %i.el = lshr i64 %i.ej, 32
  %i.em = trunc nuw i64 %i.el to i32
  br label %_ZNK11mpn_manager3mulEPKjjS1_jPj.exit.epilog-lcssa

_ZNK11mpn_manager3mulEPKjjS1_jPj.exit.epilog-lcssa: ; preds = %.preheader.us.i.epil, %.lr.ph53.split.us.i.epil.preheader
  %.sink.i.epil = phi i32 [ %i.em, %.preheader.us.i.epil ], [ 0, %.lr.ph53.split.us.i.epil.preheader ]
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %indvars.iv60.i.epil.init
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 4
  store i32 %.sink.i.epil, ptr %i.eo, align 4, !tbaa !13
  br label %_ZNK11mpn_manager3mulEPKjjS1_jPj.exit

_ZNK11mpn_manager3mulEPKjjS1_jPj.exit:            ; preds = %_ZNK11mpn_manager3mulEPKjjS1_jPj.exit.unr-lcssa, %_ZNK11mpn_manager3mulEPKjjS1_jPj.exit.epilog-lcssa
  br i1 %.not.i, label %_ZNK11mpn_manager3subEPKjjS1_jPjS2_.exit.thread, label %.lr.ph.preheader.i

_ZNK11mpn_manager3subEPKjjS1_jPjS2_.exit.thread:  ; preds = %_ZNK11mpn_manager3mulEPKjjS1_jPj.exit
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv116
  store i32 %i.cy, ptr %i.ep, align 4, !tbaa !13
  br label %.loopexit

.lr.ph.preheader.i:                               ; preds = %bb.j, %_ZNK11mpn_manager3mulEPKjjS1_jPj.exit
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %indvars.iv116 ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.m, %.lr.ph.preheader.i
  %i.er = phi i32 [ 0, %.lr.ph.preheader.i ], [ %i.ff, %bb.m ] ; 2 uses
  %indvars.iv.i70 = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i71, %bb.m ] ; 5 uses
  %i.es = icmp samesign ult i64 %indvars.iv.i70, %i.be
  br i1 %i.es, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph.i
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.eq, i64 %indvars.iv.i70
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !13
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %indvars.iv.i70
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !13
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph.i, %bb.l
  %i.ex = phi i32 [ %i.eu, %bb.l ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.ey = phi i32 [ %i.ew, %bb.l ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.ez = sub i32 %i.ex, %i.ey                    ; 2 uses
  %i.fa = icmp ugt i32 %i.ey, %i.ex
  %i.fb = sub i32 %i.ez, %i.er
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.eq, i64 %indvars.iv.i70
  store i32 %i.fb, ptr %i.fc, align 4, !tbaa !13
  %i.fd = icmp ugt i32 %i.er, %i.ez
  %i.fe = or i1 %i.fa, %i.fd                      ; 2 uses
  %i.ff = zext i1 %i.fe to i32
  %indvars.iv.next.i71 = add nuw nsw i64 %indvars.iv.i70, 1 ; 2 uses
  %exitcond.not.i72 = icmp eq i64 %indvars.iv.next.i71, %i.be
  br i1 %exitcond.not.i72, label %_ZNK11mpn_manager3subEPKjjS1_jPjS2_.exit, label %.lr.ph.i, !llvm.loop !1

_ZNK11mpn_manager3subEPKjjS1_jPjS2_.exit:         ; preds = %bb.m
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv116 ; 2 uses
  store i32 %i.cy, ptr %i.fg, align 4, !tbaa !13
  br i1 %i.fe, label %bb.n, label %.loopexit

bb.n:                                             ; preds = %_ZNK11mpn_manager3subEPKjjS1_jPjS2_.exit
  %i.fh = add i32 %i.cy, -1
  store i32 %i.fh, ptr %i.fg, align 4, !tbaa !13
  %i.fi = load i32, ptr %i.bg, align 8, !tbaa !22 ; 4 uses
  %i.fj = icmp ugt i32 %i.bf, %i.fi
  br i1 %i.fj, label %.preheader.i74, label %bb.q

.preheader.i74:                                   ; preds = %bb.n, %_ZN6bufferIjLb0ELj16EE9push_backERKj.exit.i90
  %i.fk = phi i32 [ %i.gv, %_ZN6bufferIjLb0ELj16EE9push_backERKj.exit.i90 ], [ %i.fi, %bb.n ] ; 2 uses
  %.01320.i75 = phi i32 [ %i.gw, %_ZN6bufferIjLb0ELj16EE9push_backERKj.exit.i90 ], [ %i.fi, %bb.n ]
  %i.fl = load i32, ptr %i.bh, align 4, !tbaa !23 ; 2 uses
  %.not.i.i76 = icmp ult i32 %i.fk, %i.fl
  br i1 %.not.i.i76, label %._crit_edge.i.i92, label %bb.o

._crit_edge.i.i92:                                ; preds = %.preheader.i74
  %.pre.i.i93 = load ptr, ptr %6, align 8, !tbaa !21
  br label %_ZN6bufferIjLb0ELj16EE9push_backERKj.exit.i90

bb.o:                                             ; preds = %.preheader.i74
  %i.fm = shl i32 %i.fl, 1                        ; 2 uses
  %i.fn = zext i32 %i.fm to i64
  %i.fo = shl nuw nsw i64 %i.fn, 2
  %i.fp = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef %i.fo) ; 9 uses
  %i.fq = load i32, ptr %i.bg, align 8, !tbaa !22 ; 4 uses
  %.not.i.i.i77 = icmp eq i32 %i.fq, 0
  %.pre.i.i.i78 = load ptr, ptr %6, align 8, !tbaa !21 ; 10 uses
  br i1 %.not.i.i.i77, label %._crit_edge.i.i.i84, label %.lr.ph.i.i.i79

.lr.ph.i.i.i79:                                   ; preds = %bb.o
  %.pre.i.i.i78157 = ptrtoaddr ptr %.pre.i.i.i78 to i64
  %i.fr = ptrtoaddr ptr %i.fp to i64
  %wide.trip.count.i.i.i80 = zext i32 %i.fq to i64 ; 5 uses
  %min.iters.check160 = icmp ult i32 %i.fq, 8
  %i.fs = sub i64 %.pre.i.i.i78157, %i.fr
  %diff.check158 = icmp ugt i64 %i.fs, -32
  %or.cond171 = select i1 %min.iters.check160, i1 true, i1 %diff.check158
  br i1 %or.cond171, label %scalar.ph159.preheader, label %vector.ph161

vector.ph161:                                     ; preds = %.lr.ph.i.i.i79
  %n.vec162 = and i64 %wide.trip.count.i.i.i80, 4294967288 ; 3 uses
  br label %vector.body163

vector.body163:                                   ; preds = %vector.body163, %vector.ph161
  %index164 = phi i64 [ 0, %vector.ph161 ], [ %index.next167, %vector.body163 ] ; 3 uses
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.fp, i64 %index164 ; 2 uses
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i78, i64 %index164 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 16
  %wide.load165 = load <4 x i32>, ptr %i.fu, align 4, !tbaa !13
  %wide.load166 = load <4 x i32>, ptr %i.fv, align 4, !tbaa !13
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ft, i64 16
  store <4 x i32> %wide.load165, ptr %i.ft, align 4, !tbaa !13
  store <4 x i32> %wide.load166, ptr %i.fw, align 4, !tbaa !13
  %index.next167 = add nuw i64 %index164, 8       ; 2 uses
  %i.fx = icmp eq i64 %index.next167, %n.vec162
  br i1 %i.fx, label %middle.block168, label %vector.body163, !llvm.loop !67

middle.block168:                                  ; preds = %vector.body163
  %cmp.n169 = icmp eq i64 %n.vec162, %wide.trip.count.i.i.i80
  br i1 %cmp.n169, label %._crit_edge.i.i.i84, label %scalar.ph159.preheader

scalar.ph159.preheader:                           ; preds = %.lr.ph.i.i.i79, %middle.block168
  %indvars.iv.i.i.i81.ph = phi i64 [ 0, %.lr.ph.i.i.i79 ], [ %n.vec162, %middle.block168 ] ; 3 uses
  %xtraiter177 = and i64 %wide.trip.count.i.i.i80, 3 ; 2 uses
  %lcmp.mod178.not = icmp eq i64 %xtraiter177, 0
  br i1 %lcmp.mod178.not, label %scalar.ph159.prol.loopexit, label %scalar.ph159.prol

scalar.ph159.prol:                                ; preds = %scalar.ph159.preheader, %scalar.ph159.prol
  %indvars.iv.i.i.i81.prol = phi i64 [ %indvars.iv.next.i.i.i82.prol, %scalar.ph159.prol ], [ %indvars.iv.i.i.i81.ph, %scalar.ph159.preheader ] ; 3 uses
  %prol.iter179 = phi i64 [ %prol.iter179.next, %scalar.ph159.prol ], [ 0, %scalar.ph159.preheader ]
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.fp, i64 %indvars.iv.i.i.i81.prol
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i78, i64 %indvars.iv.i.i.i81.prol
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !13
  store i32 %i.ga, ptr %i.fy, align 4, !tbaa !13
  %indvars.iv.next.i.i.i82.prol = add nuw nsw i64 %indvars.iv.i.i.i81.prol, 1 ; 2 uses
  %prol.iter179.next = add i64 %prol.iter179, 1   ; 2 uses
  %prol.iter179.cmp.not = icmp eq i64 %prol.iter179.next, %xtraiter177
  br i1 %prol.iter179.cmp.not, label %scalar.ph159.prol.loopexit, label %scalar.ph159.prol, !llvm.loop !68

scalar.ph159.prol.loopexit:                       ; preds = %scalar.ph159.prol, %scalar.ph159.preheader
  %indvars.iv.i.i.i81.unr = phi i64 [ %indvars.iv.i.i.i81.ph, %scalar.ph159.preheader ], [ %indvars.iv.next.i.i.i82.prol, %scalar.ph159.prol ]
  %i.gb = sub nsw i64 %indvars.iv.i.i.i81.ph, %wide.trip.count.i.i.i80
  %i.gc = icmp ugt i64 %i.gb, -4
  br i1 %i.gc, label %._crit_edge.i.i.i84, label %scalar.ph159

._crit_edge.i.i.i84:                              ; preds = %scalar.ph159.prol.loopexit, %scalar.ph159, %middle.block168, %bb.o
  %.not.i.i.i.i85 = icmp eq ptr %.pre.i.i.i78, %i.bi
  %i.gd = icmp eq ptr %.pre.i.i.i78, null
  %or.cond.i.i.i.i86 = or i1 %.not.i.i.i.i85, %i.gd
  br i1 %or.cond.i.i.i.i86, label %_ZN6bufferIjLb0ELj16EE6expandEv.exit.i.i88, label %bb.p

bb.p:                                             ; preds = %._crit_edge.i.i.i84
  tail call void @_ZN6memory10deallocateEPv(ptr noundef nonnull %.pre.i.i.i78)
  %.pre2.pre.i.i87 = load i32, ptr %i.bg, align 8, !tbaa !22
  br label %_ZN6bufferIjLb0ELj16EE6expandEv.exit.i.i88

scalar.ph159:                                     ; preds = %scalar.ph159.prol.loopexit, %scalar.ph159
  %indvars.iv.i.i.i81 = phi i64 [ %indvars.iv.next.i.i.i82.3, %scalar.ph159 ], [ %indvars.iv.i.i.i81.unr, %scalar.ph159.prol.loopexit ] ; 6 uses
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.fp, i64 %indvars.iv.i.i.i81
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i78, i64 %indvars.iv.i.i.i81
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !13
  store i32 %i.gg, ptr %i.ge, align 4, !tbaa !13
  %indvars.iv.next.i.i.i82 = add nuw nsw i64 %indvars.iv.i.i.i81, 1 ; 2 uses
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.fp, i64 %indvars.iv.next.i.i.i82
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i78, i64 %indvars.iv.next.i.i.i82
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !13
  store i32 %i.gj, ptr %i.gh, align 4, !tbaa !13
  %indvars.iv.next.i.i.i82.1 = add nuw nsw i64 %indvars.iv.i.i.i81, 2 ; 2 uses
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.fp, i64 %indvars.iv.next.i.i.i82.1
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i78, i64 %indvars.iv.next.i.i.i82.1
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !13
  store i32 %i.gm, ptr %i.gk, align 4, !tbaa !13
  %indvars.iv.next.i.i.i82.2 = add nuw nsw i64 %indvars.iv.i.i.i81, 3 ; 2 uses
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.fp, i64 %indvars.iv.next.i.i.i82.2
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i78, i64 %indvars.iv.next.i.i.i82.2
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !13
  store i32 %i.gp, ptr %i.gn, align 4, !tbaa !13
  %indvars.iv.next.i.i.i82.3 = add nuw nsw i64 %indvars.iv.i.i.i81, 4 ; 2 uses
  %exitcond.not.i.i.i83.3 = icmp eq i64 %indvars.iv.next.i.i.i82.3, %wide.trip.count.i.i.i80
  br i1 %exitcond.not.i.i.i83.3, label %._crit_edge.i.i.i84, label %scalar.ph159, !llvm.loop !69

_ZN6bufferIjLb0ELj16EE6expandEv.exit.i.i88:       ; preds = %bb.p, %._crit_edge.i.i.i84
  %.pre2.i.i89 = phi i32 [ %i.fq, %._crit_edge.i.i.i84 ], [ %.pre2.pre.i.i87, %bb.p ]
  store ptr %i.fp, ptr %6, align 8, !tbaa !21
  store i32 %i.fm, ptr %i.bh, align 4, !tbaa !23
  br label %_ZN6bufferIjLb0ELj16EE9push_backERKj.exit.i90

_ZN6bufferIjLb0ELj16EE9push_backERKj.exit.i90:    ; preds = %_ZN6bufferIjLb0ELj16EE6expandEv.exit.i.i88, %._crit_edge.i.i92
  %i.gq = phi i32 [ %i.fk, %._crit_edge.i.i92 ], [ %.pre2.i.i89, %_ZN6bufferIjLb0ELj16EE6expandEv.exit.i.i88 ]
  %i.gr = phi ptr [ %.pre.i.i93, %._crit_edge.i.i92 ], [ %i.fp, %_ZN6bufferIjLb0ELj16EE6expandEv.exit.i.i88 ]
  %i.gs = zext i32 %i.gq to i64
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.gr, i64 %i.gs
  store i32 0, ptr %i.gt, align 4, !tbaa !13
  %i.gu = load i32, ptr %i.bg, align 8, !tbaa !22
  %i.gv = add i32 %i.gu, 1                        ; 2 uses
  store i32 %i.gv, ptr %i.bg, align 8, !tbaa !22
  %i.gw = add nuw i32 %.01320.i75, 1              ; 2 uses
  %exitcond.not.i91 = icmp eq i32 %i.gw, %i.bf
  br i1 %exitcond.not.i91, label %_ZN6bufferIjLb0ELj16EE6resizeEjRKj.exit94, label %.preheader.i74, !llvm.loop !4

bb.q:                                             ; preds = %bb.n
  %i.gx = icmp ult i32 %i.bf, %i.fi
  br i1 %i.gx, label %.preheader17.i73, label %_ZN6bufferIjLb0ELj16EE6resizeEjRKj.exit94

.preheader17.i73:                                 ; preds = %bb.q
  store i32 %i.bf, ptr %i.bg, align 8, !tbaa !22
  br label %_ZN6bufferIjLb0ELj16EE6resizeEjRKj.exit94

_ZN6bufferIjLb0ELj16EE6resizeEjRKj.exit94:        ; preds = %_ZN6bufferIjLb0ELj16EE9push_backERKj.exit.i90, %bb.q, %.preheader17.i73
  %i.gy = load ptr, ptr %2, align 8, !tbaa !21
  %i.gz = load ptr, ptr %1, align 8, !tbaa !21    ; 8 uses
  %i.ha = ptrtoaddr ptr %i.gz to i64
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.gz, i64 %indvars.iv116
  %i.hc = load ptr, ptr %6, align 8, !tbaa !21    ; 9 uses
  %i.hd = ptrtoaddr ptr %i.hc to i64
  br label %.lr.ph.i98

._crit_edge.i.loopexit:                           ; preds = %bb.u
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.hc, i64 %wide.trip.count.i97
  store i32 %i.im, ptr %i.he, align 4, !tbaa !13
  br i1 %.not.i, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %._crit_edge.i.loopexit
  br i1 %min.iters.check145, label %.lr.ph.preheader172, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.preheader
  %i.hf = xor i32 %i.bo, -1
  %i.hg = icmp ult i32 %i.hf, %i.bm
  %i.hh = or i1 %i.hg, %i.bn
  br i1 %i.hh, label %.lr.ph.preheader172, label %vector.memcheck142

vector.memcheck142:                               ; preds = %vector.scevcheck
  %i.hi = add i64 %9, %i.ha
  %i.hj = sub i64 %i.hd, %i.hi
  %diff.check143 = icmp ugt i64 %i.hj, -32
  br i1 %diff.check143, label %.lr.ph.preheader172, label %vector.body148

vector.body148:                                   ; preds = %vector.memcheck142, %vector.body148
  %index149 = phi i64 [ %index.next152, %vector.body148 ], [ 0, %vector.memcheck142 ] ; 3 uses
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.hc, i64 %index149 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 16
  %wide.load150 = load <4 x i32>, ptr %i.hk, align 4, !tbaa !13
  %wide.load151 = load <4 x i32>, ptr %i.hl, align 4, !tbaa !13
  %i.hm = add i64 %index149, %indvars.iv116
  %i.hn = and i64 %i.hm, 4294967295
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.gz, i64 %i.hn ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 16
  store <4 x i32> %wide.load150, ptr %i.ho, align 4, !tbaa !13
  store <4 x i32> %wide.load151, ptr %i.hp, align 4, !tbaa !13
  %index.next152 = add nuw i64 %index149, 8       ; 2 uses
  %i.hq = icmp eq i64 %index.next152, %n.vec147
  br i1 %i.hq, label %middle.block153, label %vector.body148, !llvm.loop !70

middle.block153:                                  ; preds = %vector.body148
  br i1 %cmp.n154, label %.loopexit, label %.lr.ph.preheader172

.lr.ph.preheader172:                              ; preds = %vector.memcheck142, %vector.scevcheck, %.lr.ph.preheader, %middle.block153
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck142 ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec147, %middle.block153 ] ; 3 uses
  br i1 %lcmp.mod181.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader172, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %indvars.iv.ph, %.lr.ph.preheader172 ] ; 3 uses
  %prol.iter182 = phi i64 [ %prol.iter182.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader172 ]
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.hc, i64 %indvars.iv.prol
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !13
  %i.ht = add i64 %indvars.iv.prol, %indvars.iv116
  %i.hu = and i64 %i.ht, 4294967295
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %i.gz, i64 %i.hu
  store i32 %i.hs, ptr %i.hv, align 4, !tbaa !13
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter182.next = add i64 %prol.iter182, 1   ; 2 uses
  %prol.iter182.cmp.not = icmp eq i64 %prol.iter182.next, %xtraiter180
  br i1 %prol.iter182.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !71

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader172
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader172 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.hw = sub nsw i64 %indvars.iv.ph, %i.be
  %i.hx = icmp ugt i64 %i.hw, -4
  br i1 %i.hx, label %.loopexit, label %.lr.ph

.lr.ph.i98:                                       ; preds = %bb.u, %_ZN6bufferIjLb0ELj16EE6resizeEjRKj.exit94
  %indvars.iv.i99 = phi i64 [ 0, %_ZN6bufferIjLb0ELj16EE6resizeEjRKj.exit94 ], [ %indvars.iv.next.i100, %bb.u ] ; 6 uses
  %.03645.i = phi i32 [ 0, %_ZN6bufferIjLb0ELj16EE6resizeEjRKj.exit94 ], [ %i.im, %bb.u ]
  %i.hy = icmp samesign ult i64 %indvars.iv.i99, %wide.trip.count63.i
  br i1 %i.hy, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.lr.ph.i98
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %indvars.iv.i99
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !13
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph.i98
  %i.ib = phi i32 [ %i.ia, %bb.r ], [ 0, %.lr.ph.i98 ] ; 2 uses
  %i.ic = icmp samesign ult i64 %indvars.iv.i99, %i.be
  br i1 %i.ic, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.hb, i64 %indvars.iv.i99
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !13
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.if = phi i32 [ %i.ie, %bb.t ], [ 0, %bb.s ]
  %i.ig = add i32 %i.if, %i.ib                    ; 3 uses
  %i.ih = icmp ult i32 %i.ig, %i.ib
  %i.ii = add i32 %i.ig, %.03645.i                ; 2 uses
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %i.hc, i64 %indvars.iv.i99
  store i32 %i.ii, ptr %i.ij, align 4, !tbaa !13
  %i.ik = icmp ult i32 %i.ii, %i.ig
  %i.il = or i1 %i.ih, %i.ik
  %i.im = zext i1 %i.il to i32                    ; 2 uses
  %indvars.iv.next.i100 = add nuw nsw i64 %indvars.iv.i99, 1 ; 2 uses
  %exitcond.not.i101 = icmp eq i64 %indvars.iv.next.i100, %wide.trip.count.i97
  br i1 %exitcond.not.i101, label %._crit_edge.i.loopexit, label %.lr.ph.i98, !llvm.loop !0

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %i.hc, i64 %indvars.iv
  %i.io = load i32, ptr %i.in, align 4, !tbaa !13
  %i.ip = add i64 %indvars.iv, %indvars.iv116
  %i.iq = and i64 %i.ip, 4294967295
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.gz, i64 %i.iq
  store i32 %i.io, ptr %i.ir, align 4, !tbaa !13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %i.hc, i64 %indvars.iv.next
  %i.it = load i32, ptr %i.is, align 4, !tbaa !13
  %i.iu = add i64 %indvars.iv.next, %indvars.iv116
  %i.iv = and i64 %i.iu, 4294967295
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.gz, i64 %i.iv
  store i32 %i.it, ptr %i.iw, align 4, !tbaa !13
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %i.hc, i64 %indvars.iv.next.1
  %i.iy = load i32, ptr %i.ix, align 4, !tbaa !13
  %i.iz = add i64 %indvars.iv.next.1, %indvars.iv116
  %i.ja = and i64 %i.iz, 4294967295
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %i.gz, i64 %i.ja
  store i32 %i.iy, ptr %i.jb, align 4, !tbaa !13
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %i.hc, i64 %indvars.iv.next.2
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !13
  %i.je = add i64 %indvars.iv.next.2, %indvars.iv116
  %i.jf = and i64 %i.je, 4294967295
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %i.gz, i64 %i.jf
  store i32 %i.jd, ptr %i.jg, align 4, !tbaa !13
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %i.be
  br i1 %exitcond.not.3, label %.loopexit, label %.lr.ph, !llvm.loop !72

.loopexit:                                        ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block153, %._crit_edge.i.loopexit, %_ZNK11mpn_manager3subEPKjjS1_jPjS2_.exit.thread, %_ZNK11mpn_manager3subEPKjjS1_jPjS2_.exit
  %indvars.iv.next117 = add nsw i64 %indvars.iv116, -1
  %.not = icmp eq i64 %indvars.iv116, 0
  %indvar.next = add i32 %indvar, 1
  br i1 %.not, label %._crit_edge, label %bb.f, !llvm.loop !73
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZNK11mpn_manager15div_unnormalizeER7sbufferIjLj16EES2_jPj(ptr nofree noundef nonnull readnone align 1 captures(none) dereferenceable(1) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %2, i32 noundef %3, ptr nofree noundef writeonly captures(none) %4) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = icmp eq i32 %3, 0
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !22   ; 2 uses
  br i1 %i.a, label %.preheader, label %.preheader27

.preheader27:                                     ; preds = %bb.a
  %.not = icmp eq i32 %i.c, 1
  %.pre = load ptr, ptr %1, align 8, !tbaa !21    ; 3 uses
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader27
  %i.d = sub i32 32, %3
  br label %bb.c

.preheader:                                       ; preds = %bb.a
  %.not31 = icmp eq i32 %i.c, 0
  br i1 %.not31, label %.loopexit, label %.lr.ph30

.lr.ph30:                                         ; preds = %.preheader
  %i.e = load ptr, ptr %1, align 8, !tbaa !21
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph30, %bb.b
  %indvars.iv34 = phi i64 [ 0, %.lr.ph30 ], [ %indvars.iv.next35, %bb.b ] ; 3 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv34
  %i.g = load i32, ptr %i.f, align 4, !tbaa !13
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv34
  store i32 %i.g, ptr %i.h, align 4, !tbaa !13
  %indvars.iv.next35 = add nuw nsw i64 %indvars.iv34, 1 ; 2 uses
  %i.i = load i32, ptr %i.b, align 8, !tbaa !22
  %i.j = zext i32 %i.i to i64
  %i.k = icmp samesign ult i64 %indvars.iv.next35, %i.j
  br i1 %i.k, label %bb.b, label %.loopexit, !llvm.loop !74

._crit_edge.loopexit:                             ; preds = %bb.c
  %i.l = zext i32 %i.z to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %.preheader27, %._crit_edge.loopexit
  %.lcssa = phi i64 [ %i.l, %._crit_edge.loopexit ], [ 0, %.preheader27 ] ; 2 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %.lcssa
  %i.n = load i32, ptr %i.m, align 4, !tbaa !13
  %i.o = lshr i32 %i.n, %3
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.lcssa
  store i32 %i.o, ptr %i.p, align 4, !tbaa !13
  br label %.loopexit

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %indvars.iv
  %i.r = load i32, ptr %i.q, align 4, !tbaa !13
  %i.s = lshr i32 %i.r, %3
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %indvars.iv.next
  %i.u = load i32, ptr %i.t, align 4, !tbaa !13
  %i.v = shl i32 %i.u, %i.d
  %i.w = or disjoint i32 %i.v, %i.s
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv
  store i32 %i.w, ptr %i.x, align 4, !tbaa !13
  %i.y = load i32, ptr %i.b, align 8, !tbaa !22
  %i.z = add i32 %i.y, -1                         ; 2 uses
  %i.aa = zext i32 %i.z to i64
  %i.ab = icmp samesign ult i64 %indvars.iv.next, %i.aa
  br i1 %i.ab, label %bb.c, label %._crit_edge.loopexit, !llvm.loop !75

.loopexit:                                        ; preds = %bb.b, %.preheader, %._crit_edge
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6bufferIjLb0ELj16EED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !21     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.not.i.i = icmp eq ptr %i.a, %i.b
  %i.c = icmp eq ptr %i.a, null
  %or.cond.i.i = or i1 %.not.i.i, %i.c
  br i1 %or.cond.i.i, label %_ZN6bufferIjLb0ELj16EE7destroyEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.a)
          to label %_ZN6bufferIjLb0ELj16EE7destroyEv.exit unwind label %bb.c

_ZN6bufferIjLb0ELj16EE7destroyEv.exit:            ; preds = %bb.a, %bb.b
  ret void

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #15
  unreachable
}

declare void @_Z26notify_assertion_violationPKciS0_(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

declare void @_Z18invoke_exit_actionj(i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZNK11mpn_manager9to_stringEPKjjPcj(ptr nofree noundef nonnull readnone align 1 captures(none) dereferenceable(1) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef returned captures(ret: address, provenance) %3, i32 noundef %4) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  %5 = alloca %class.sbuffer, align 8             ; 16 uses
  %6 = alloca %class.sbuffer, align 8             ; 21 uses
  %7 = alloca %class.sbuffer, align 8             ; 16 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = icmp eq i32 %2, 1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = zext i32 %4 to i64
  %i.e = load i32, ptr %1, align 4, !tbaa !13
  %i.f = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %3, i64 noundef %i.d, ptr noundef nonnull @.str.7, i32 noundef %i.e) #14 ; 0 uses
  br label %bb.y

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  store ptr %i.g, ptr %5, align 8, !tbaa !21
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 8 uses
  store i32 0, ptr %i.h, align 8, !tbaa !22
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 3 uses
  store i32 16, ptr %i.i, align 4, !tbaa !23
  %.not.i.i = icmp eq i32 %2, 0                   ; 2 uses
  br i1 %.not.i.i, label %_ZN7sbufferIjLj16EEC2EjRKj.exit.thread, label %.lr.ph.i.i

_ZN7sbufferIjLj16EEC2EjRKj.exit.thread:           ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store ptr %i.j, ptr %6, align 8, !tbaa !21
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i32 0, ptr %i.k, align 8, !tbaa !22
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 2 uses
  store i32 16, ptr %i.l, align 4, !tbaa !23
  br label %.lr.ph.i.i45.preheader

.lr.ph.i.i:                                       ; preds = %bb.c, %_ZN6bufferIjLb0ELj16EE9push_backERKj.exit.i.i
  %.pre.i.i.i = phi ptr [ %.pre.i5.i.i, %_ZN6bufferIjLb0ELj16EE9push_backERKj.exit.i.i ], [ %i.g, %bb.c ]
  %i.m = phi i32 [ %i.aw, %_ZN6bufferIjLb0ELj16EE9push_backERKj.exit.i.i ], [ 0, %bb.c ] ; 2 uses
  %.04.i.i = phi i32 [ %i.ax, %_ZN6bufferIjLb0ELj16EE9push_backERKj.exit.i.i ], [ 0, %bb.c ]
  %i.n = load i32, ptr %i.i, align 4, !tbaa !23   ; 2 uses
  %.not.i.i.i = icmp ult i32 %i.m, %i.n
  br i1 %.not.i.i.i, label %_ZN6bufferIjLb0ELj16EE9push_backERKj.exit.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.o = shl i32 %i.n, 1                          ; 2 uses
  %i.p = zext i32 %i.o to i64
  %i.q = shl nuw nsw i64 %i.p, 2
  %i.r = call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef %i.q) ; 9 uses
  %i.s = load i32, ptr %i.h, align 8, !tbaa !22   ; 4 uses
  %.not.i.i.i.i = icmp eq i32 %i.s, 0
  %.pre.i.i.i.i = load ptr, ptr %5, align 8, !tbaa !21 ; 10 uses
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.d
  %.pre.i.i.i.i162 = ptrtoaddr ptr %.pre.i.i.i.i to i64
  %i.t = ptrtoaddr ptr %i.r to i64
  %wide.trip.count.i.i.i.i = zext i32 %i.s to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.s, 8
  %i.u = sub i64 %.pre.i.i.i.i162, %i.t
  %diff.check = icmp ugt i64 %i.u, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i
  %n.vec = and i64 %wide.trip.count.i.i.i.i, 4294967288 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %index ; 2 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i.i, i64 %index ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %wide.load = load <4 x i32>, ptr %i.w, align 4, !tbaa !13
  %wide.load163 = load <4 x i32>, ptr %i.x, align 4, !tbaa !13
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store <4 x i32> %wide.load, ptr %i.v, align 4, !tbaa !13
  store <4 x i32> %wide.load163, ptr %i.y, align 4, !tbaa !13
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.z = icmp eq i64 %index.next, %n.vec
  br i1 %i.z, label %middle.block, label %vector.body, !llvm.loop !76

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i.i
  br i1 %cmp.n, label %._crit_edge.i.i.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i.i.i, %middle.block
  %indvars.iv.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i.i, 3 ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
end_hunk_0
