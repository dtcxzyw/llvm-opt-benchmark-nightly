Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/convolution1d_x86?download=true
inline.NumInlined: 21
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 35
begin_hunk_0_@_ZN4ncnn17Convolution1D_x86D0Ev:bb.a

bb.f:                                             ; preds = %bb.e
  tail call void @free(ptr noundef nonnull %i.h) #11, !inline_history !70
  br label %_ZN4ncnn17Convolution1D_x86D2Ev.exit

bb.g:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #18, !inline_history !70
  unreachable

_ZN4ncnn17Convolution1D_x86D2Ev.exit:             ; preds = %bb.a, %bb.b, %bb.d, %bb.e, %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 536
  store i64 0, ptr %i.o, align 8, !tbaa !20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.a, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.n, i8 0, i64 20, i1 false)
  tail call void @_ZN4ncnn13Convolution1DD2Ev(ptr noundef nonnull align 8 dead_on_return(472) dereferenceable(544) %0) #11, !inline_history !70
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 544) #19
  ret void
}

declare noundef i32 @_ZN4ncnn13Convolution1D10load_paramERKNS_9ParamDictE(ptr noundef nonnull align 8 dereferenceable(472), ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #1

declare noundef i32 @_ZN4ncnn13Convolution1D10load_modelERKNS_8ModelBinE(ptr noundef nonnull align 8 dereferenceable(472), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZN4ncnn17Convolution1D_x8615create_pipelineERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(544) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.b = load i32, ptr %i.a, align 8, !tbaa !165
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.ab

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load i8, ptr %i.c, align 8, !tbaa !38, !range !39, !noundef !40
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = tail call noundef i32 @_ZN4ncnn17Convolution1D_x8621create_pipeline_bf16sERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(544) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) ; 0 uses
  br label %bb.ab

bb.d:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.h = load i32, ptr %i.g, align 8, !tbaa !41
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.j = load i32, ptr %i.i, align 4, !tbaa !42   ; 51 uses
  %i.k = sdiv i32 %i.h, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.m = load i32, ptr %i.l, align 8, !tbaa !43   ; 23 uses
  %i.n = sdiv i32 %i.k, %i.m                      ; 61 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 12 uses
  %i.q = icmp sgt i32 %i.m, 3
  br i1 %i.q, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.r = icmp sgt i32 %i.n, 3                     ; 2 uses
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.s = shl nsw i32 %i.j, 4
  %i.t = lshr i32 %i.n, 2
  %i.u = lshr i32 %i.n, 1
  %i.v = and i32 %i.u, 1
  %i.w = and i32 %i.n, 1
  %i.x = add nuw nsw i32 %i.w, %i.t
  %i.y = add nuw nsw i32 %i.x, %i.v
  %i.z = lshr i32 %i.m, 2
  %i.aa = lshr i32 %i.m, 1
  %i.ab = and i32 %i.aa, 1
  %i.ac = and i32 %i.m, 1
  %i.ad = add nuw nsw i32 %i.ac, %i.z
  %i.ae = add nuw nsw i32 %i.ad, %i.ab
  tail call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.p, i32 noundef %i.s, i32 noundef %i.y, i32 noundef %i.ae, i64 noundef 4, ptr noundef null)
  br label %_ZN4ncnn3MatD2Ev.exit420.lr.ph.i

bb.g:                                             ; preds = %bb.e
  %i.af = icmp sgt i32 %i.n, 1
  br i1 %i.af, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ag = shl nsw i32 %i.j, 3
  %i.ah = and i32 %i.n, 1
  %i.ai = add nuw nsw i32 %i.ah, 1
  %i.aj = lshr i32 %i.m, 2
  %i.ak = lshr i32 %i.m, 1
  %i.al = and i32 %i.ak, 1
  %i.am = and i32 %i.m, 1
  %i.an = add nuw nsw i32 %i.am, %i.aj
  %i.ao = add nuw nsw i32 %i.an, %i.al
  tail call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.p, i32 noundef %i.ag, i32 noundef %i.ai, i32 noundef %i.ao, i64 noundef 4, ptr noundef null)
  br label %_ZN4ncnn3MatD2Ev.exit420.lr.ph.i

bb.i:                                             ; preds = %bb.g
  %i.ap = shl nsw i32 %i.j, 2
  %i.aq = lshr i32 %i.m, 2
  %i.ar = lshr i32 %i.m, 1
  %i.as = and i32 %i.ar, 1
  %i.at = and i32 %i.m, 1
  %i.au = add nuw nsw i32 %i.at, %i.aq
  %i.av = add nuw nsw i32 %i.au, %i.as
  tail call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.p, i32 noundef %i.ap, i32 noundef %i.n, i32 noundef %i.av, i64 noundef 4, ptr noundef null)
  br label %_ZN4ncnn3MatD2Ev.exit420.lr.ph.i

bb.j:                                             ; preds = %bb.d
  %i.aw = icmp sgt i32 %i.m, 1
  %i.ax = icmp sgt i32 %i.n, 3                    ; 2 uses
  br i1 %i.aw, label %bb.k, label %bb.p

bb.k:                                             ; preds = %bb.j
  br i1 %i.ax, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ay = shl nsw i32 %i.j, 3
  %i.az = lshr i32 %i.n, 2
  %i.ba = lshr i32 %i.n, 1
  %i.bb = and i32 %i.ba, 1
  %i.bc = and i32 %i.n, 1
  %i.bd = add nuw nsw i32 %i.bc, %i.az
  %i.be = add nuw nsw i32 %i.bd, %i.bb
  %i.bf = and i32 %i.m, 1
  %i.bg = add nuw nsw i32 %i.bf, 1
  tail call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.p, i32 noundef %i.ay, i32 noundef %i.be, i32 noundef %i.bg, i64 noundef 4, ptr noundef null)
  br label %.preheader483.i

bb.m:                                             ; preds = %bb.k
  %i.bh = icmp sgt i32 %i.n, 1
  br i1 %i.bh, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bi = shl nsw i32 %i.j, 2
  %i.bj = and i32 %i.n, 1
  %i.bk = add nuw nsw i32 %i.bj, 1
  %i.bl = and i32 %i.m, 1
  %i.bm = add nuw nsw i32 %i.bl, 1
  tail call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.p, i32 noundef %i.bi, i32 noundef %i.bk, i32 noundef %i.bm, i64 noundef 4, ptr noundef null)
  br label %.preheader483.i

bb.o:                                             ; preds = %bb.m
  %i.bn = shl nsw i32 %i.j, 1
  %i.bo = and i32 %i.m, 1
  %i.bp = add nuw nsw i32 %i.bo, 1
  tail call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.p, i32 noundef %i.bn, i32 noundef %i.n, i32 noundef %i.bp, i64 noundef 4, ptr noundef null)
  br label %.preheader483.i

bb.p:                                             ; preds = %bb.j
  br i1 %i.ax, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bq = shl nsw i32 %i.j, 2
  %i.br = lshr i32 %i.n, 2
  %i.bs = lshr i32 %i.n, 1
  %i.bt = and i32 %i.bs, 1
  %i.bu = and i32 %i.n, 1
  %i.bv = add nuw nsw i32 %i.bu, %i.br
  %i.bw = add nuw nsw i32 %i.bv, %i.bt
  tail call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.p, i32 noundef %i.bq, i32 noundef %i.bw, i32 noundef %i.m, i64 noundef 4, ptr noundef null)
  br label %.preheader483.i

bb.r:                                             ; preds = %bb.p
  %i.bx = icmp sgt i32 %i.n, 1
  br i1 %i.bx, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.by = shl nsw i32 %i.j, 1
  %i.bz = and i32 %i.n, 1
  %i.ca = add nuw nsw i32 %i.bz, 1
  tail call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.p, i32 noundef %i.by, i32 noundef %i.ca, i32 noundef %i.m, i64 noundef 4, ptr noundef null)
  br label %.preheader483.i

bb.t:                                             ; preds = %bb.r
  tail call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.p, i32 noundef %i.j, i32 noundef %i.n, i32 noundef %i.m, i64 noundef 4, ptr noundef null)
  br label %.preheader483.i

_ZN4ncnn3MatD2Ev.exit420.lr.ph.i:                 ; preds = %bb.i, %bb.h, %bb.f
  %i.cb = load ptr, ptr %i.o, align 8, !tbaa !19  ; 4 uses
  %i.cc = mul i32 %i.n, %i.j                      ; 4 uses
  %i.cd = load ptr, ptr %i.p, align 8, !tbaa !19, !noalias !166
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !20, !noalias !166
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !44, !noalias !166
  %factor.op.mul.i = mul i64 %i.ch, %i.cf
  %i.ci = icmp sgt i32 %i.j, 0                    ; 2 uses
  %i.cj = sext i32 %i.j to i64                    ; 21 uses
  %i.ck = shl i32 %i.j, 2
  %i.cl = sext i32 %i.ck to i64                   ; 4 uses
  %i.cm = shl i32 %i.j, 1                         ; 2 uses
  %i.cn = sext i32 %i.cm to i64                   ; 5 uses
  %i.co = icmp slt i32 %i.j, 1
  %i.cp = and i32 %i.n, -4
  %i.cq = zext nneg i32 %i.m to i64
  %wide.trip.count.i = zext i32 %i.j to i64       ; 12 uses
  %i.cr = shl nuw nsw i64 %wide.trip.count.i, 4
  %i.cs = shl nuw nsw i64 %wide.trip.count.i, 2   ; 9 uses
  %i.ct = shl nuw nsw i64 %wide.trip.count.i, 5
  %i.cu = shl nsw i64 %i.cj, 2                    ; 5 uses
  %i.cv = add nsw i64 %i.cu, %i.cs                ; 4 uses
  %i.cw = shl nsw i64 %i.cn, 2
  %i.cx = add i32 %i.n, -2
  %min.iters.check201 = icmp ult i32 %i.j, 16
  %stride.check = icmp slt i32 %i.cm, 0
  %n.vec203 = and i64 %wide.trip.count.i, 2147483644 ; 4 uses
  %i.cy = shl nuw nsw i64 %n.vec203, 5
  %cmp.n218 = icmp eq i64 %n.vec203, %wide.trip.count.i
  %min.iters.check = icmp ult i32 %i.j, 8
  %n.vec = and i64 %wide.trip.count.i, 2147483644 ; 4 uses
  %i.cz = shl nuw nsw i64 %n.vec, 4
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  %xtraiter = and i64 %wide.trip.count.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.da = add nsw i64 %wide.trip.count.i, -1
  br label %_ZN4ncnn3MatD2Ev.exit420.i

.preheader483.loopexit.i:                         ; preds = %._crit_edge546.split.i
  %i.db = trunc nuw nsw i64 %indvars.iv.next734.i to i32
  br label %.preheader483.i

.preheader483.i:                                  ; preds = %.preheader483.loopexit.i, %bb.t, %bb.s, %bb.q, %bb.o, %bb.n, %bb.l
  %.0.lcssa.i = phi i32 [ %i.db, %.preheader483.loopexit.i ], [ 0, %bb.n ], [ 0, %bb.o ], [ 0, %bb.l ], [ 0, %bb.s ], [ 0, %bb.t ], [ 0, %bb.q ] ; 5 uses
  %i.dc = or disjoint i32 %.0.lcssa.i, 1          ; 2 uses
  %i.dd = icmp slt i32 %i.dc, %i.m
  br i1 %i.dd, label %_ZN4ncnn3MatD2Ev.exit419.lr.ph.i, label %.preheader477.i

_ZN4ncnn3MatD2Ev.exit419.lr.ph.i:                 ; preds = %.preheader483.i
  %i.de = load ptr, ptr %i.o, align 8, !tbaa !19  ; 16 uses
  %i.df = mul i32 %i.n, %i.j                      ; 2 uses
  %i.dg = load ptr, ptr %i.p, align 8, !tbaa !19, !noalias !167
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !20, !noalias !167
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !44, !noalias !167
  %factor.op.mul594.i = mul i64 %i.dk, %i.di
  %i.dl = icmp sgt i32 %i.n, 3
  %i.dm = icmp sgt i32 %i.j, 0                    ; 2 uses
  %i.dn = sext i32 %i.j to i64                    ; 14 uses
  %i.do = shl i32 %i.j, 1                         ; 3 uses
  %i.dp = zext i32 %i.do to i64                   ; 5 uses
  %i.dq = mul i32 %i.j, 3
  %i.dr = zext i32 %i.dq to i64                   ; 5 uses
  %i.ds = shl i32 %i.j, 2                         ; 2 uses
  %i.dt = sext i32 %i.ds to i64                   ; 3 uses
  %i.du = sext i32 %i.do to i64                   ; 3 uses
  %i.dv = icmp slt i32 %i.j, 1
  %i.dw = and i32 %i.n, -4
  %i.dx = zext i32 %.0.lcssa.i to i64
  %i.dy = add i32 %.0.lcssa.i, 1
  %i.dz = sext i32 %i.m to i64
  %wide.trip.count747.i = zext i32 %i.j to i64    ; 18 uses
  %invariant.op.i = add nsw i64 %i.dz, -1
  %i.ea = shl nuw nsw i64 %wide.trip.count747.i, 3
  %i.eb = shl nuw nsw i64 %wide.trip.count747.i, 2 ; 5 uses
  %i.ec = shl nuw nsw i64 %wide.trip.count747.i, 4
  %i.ed = shl nsw i64 %i.dn, 2                    ; 3 uses
  %i.ee = add nsw i64 %i.ed, %i.eb                ; 2 uses
  %i.ef = shl nsw i64 %i.du, 2
  %i.eg = add i32 %i.n, -2
  %i.eh = shl nuw nsw i64 %wide.trip.count747.i, 5
  %i.ei = shl nuw nsw i64 %i.dr, 2                ; 3 uses
  %scevgep298 = getelementptr i8, ptr %i.de, i64 %i.ei
  %i.ej = mul i32 %i.j, %i.n
  %i.ek = mul i32 %i.ej, %i.dc
  %i.el = mul i32 %i.j, %i.n
  %i.em = shl i32 %i.el, 1
  %i.en = add i32 %i.n, -4
  %i.eo = lshr i32 %i.en, 2
  %i.ep = zext nneg i32 %i.eo to i64
  %i.eq = mul nsw i64 %i.ep, %i.dt
  %i.er = shl i64 %i.eq, 2                        ; 3 uses
  %i.es = shl nuw nsw i64 %wide.trip.count747.i, 2 ; 3 uses
  %i.et = add i64 %i.er, %i.es                    ; 2 uses
  %i.eu = add i64 %i.et, %i.ei                    ; 2 uses
  %scevgep300 = getelementptr i8, ptr %i.de, i64 %i.eu
  %i.ev = shl nuw nsw i64 %i.dp, 2                ; 3 uses
  %scevgep302 = getelementptr i8, ptr %i.de, i64 %i.ev
  %i.ew = add i64 %i.et, %i.ev                    ; 2 uses
  %scevgep304 = getelementptr i8, ptr %i.de, i64 %i.ew
  %i.ex = shl nsw i64 %i.dn, 2                    ; 3 uses
  %scevgep306 = getelementptr i8, ptr %i.de, i64 %i.ex
  %i.ey = add i64 %i.er, %i.ex
  %i.ez = add i64 %i.ey, %i.es                    ; 2 uses
  %scevgep308 = getelementptr i8, ptr %i.de, i64 %i.ez
  %i.fa = add i64 %i.er, %i.es                    ; 2 uses
  %scevgep310 = getelementptr i8, ptr %i.de, i64 %i.fa
  %scevgep312 = getelementptr i8, ptr %i.de, i64 %i.ei
  %i.fb = mul i32 %.0.lcssa.i, %i.j
  %i.fc = mul i32 %i.fb, %i.n
  %scevgep314 = getelementptr i8, ptr %i.de, i64 %i.eu
  %scevgep316 = getelementptr i8, ptr %i.de, i64 %i.ev
  %scevgep318 = getelementptr i8, ptr %i.de, i64 %i.ew
  %scevgep320 = getelementptr i8, ptr %i.de, i64 %i.ex
  %scevgep322 = getelementptr i8, ptr %i.de, i64 %i.ez
  %scevgep324 = getelementptr i8, ptr %i.de, i64 %i.fa
  %min.iters.check359 = icmp ult i32 %i.j, 16
  %stride.check329 = icmp slt i32 %i.ds, 0
  %n.vec361 = and i64 %wide.trip.count747.i, 2147483644 ; 4 uses
  %i.fd = shl nuw nsw i64 %n.vec361, 5
  %cmp.n376 = icmp eq i64 %n.vec361, %wide.trip.count747.i
  %min.iters.check280 = icmp ult i32 %i.j, 8
  %stride.check266 = icmp slt i32 %i.do, 0
  %n.vec282 = and i64 %wide.trip.count747.i, 2147483644 ; 4 uses
  %i.fe = shl nuw nsw i64 %n.vec282, 4
  %cmp.n293 = icmp eq i64 %n.vec282, %wide.trip.count747.i
  %xtraiter572 = and i64 %wide.trip.count747.i, 1
  %lcmp.mod573.not = icmp eq i64 %xtraiter572, 0
  %i.ff = add nsw i64 %wide.trip.count747.i, -1
  %min.iters.check233 = icmp ult i32 %i.j, 6
  %n.vec235 = and i64 %wide.trip.count747.i, 2147483644 ; 4 uses
  %i.fg = shl nuw nsw i64 %n.vec235, 3
  %cmp.n248 = icmp eq i64 %n.vec235, %wide.trip.count747.i
  %xtraiter574 = and i64 %wide.trip.count747.i, 3 ; 2 uses
  %lcmp.mod575.not = icmp eq i64 %xtraiter574, 0
  br label %_ZN4ncnn3MatD2Ev.exit419.i

_ZN4ncnn3MatD2Ev.exit420.i:                       ; preds = %._crit_edge546.split.i, %_ZN4ncnn3MatD2Ev.exit420.lr.ph.i
  %indvars.iv733.i = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit420.lr.ph.i ], [ %indvars.iv.next734.i, %._crit_edge546.split.i ] ; 3 uses
  %i.fh = trunc i64 %indvars.iv733.i to i32       ; 4 uses
  %i.fi = mul i32 %i.cc, %i.fh
  %i.fj = sext i32 %i.fi to i64
  %i.fk = getelementptr inbounds [4 x i8], ptr %i.cb, i64 %i.fj ; 3 uses
  %i.fl = or disjoint i32 %i.fh, 1
  %i.fm = mul i32 %i.fl, %i.cc
  %i.fn = sext i32 %i.fm to i64
  %i.fo = getelementptr inbounds [4 x i8], ptr %i.cb, i64 %i.fn ; 3 uses
  %i.fp = or disjoint i32 %i.fh, 2
  %i.fq = mul i32 %i.fp, %i.cc
  %i.fr = sext i32 %i.fq to i64
  %i.fs = getelementptr inbounds [4 x i8], ptr %i.cb, i64 %i.fr ; 3 uses
  %i.ft = or disjoint i32 %i.fh, 3
  %i.fu = mul i32 %i.ft, %i.cc
  %i.fv = sext i32 %i.fu to i64
  %i.fw = getelementptr inbounds [4 x i8], ptr %i.cb, i64 %i.fv ; 3 uses
  %i.fx = lshr exact i64 %indvars.iv733.i, 2
  %.reass.i = mul i64 %factor.op.mul.i, %i.fx
  %i.fy = getelementptr inbounds nuw i8, ptr %i.cd, i64 %.reass.i ; 2 uses
  %i.fz = insertelement <4 x ptr> poison, ptr %i.fw, i64 0
  %i.ga = insertelement <4 x ptr> %i.fz, ptr %i.fs, i64 1
  %i.gb = insertelement <4 x ptr> %i.ga, ptr %i.fo, i64 2
  %i.gc = insertelement <4 x ptr> %i.gb, ptr %i.fk, i64 3
  br i1 %i.r, label %.preheader486.lr.ph.i, label %.preheader488.i

.preheader486.lr.ph.i:                            ; preds = %_ZN4ncnn3MatD2Ev.exit420.i
  br i1 %i.ci, label %.preheader486.us.i, label %._crit_edge546.split.i

.preheader486.us.i:                               ; preds = %.preheader486.lr.ph.i, %._crit_edge.us.i
  %.0349502.us.i = phi ptr [ %i.hz, %._crit_edge.us.i ], [ %i.fk, %.preheader486.lr.ph.i ] ; 2 uses
  %.0351501.us.i = phi ptr [ %i.ia, %._crit_edge.us.i ], [ %i.fo, %.preheader486.lr.ph.i ] ; 2 uses
  %.0358500.us.i = phi ptr [ %i.ib, %._crit_edge.us.i ], [ %i.fs, %.preheader486.lr.ph.i ] ; 2 uses
  %.0360499.us.i = phi ptr [ %i.ic, %._crit_edge.us.i ], [ %i.fw, %.preheader486.lr.ph.i ] ; 2 uses
  %.0377498.us.i = phi ptr [ %i.hy, %._crit_edge.us.i ], [ %i.fy, %.preheader486.lr.ph.i ]
  %.0385497.us.i = phi i32 [ %i.id, %._crit_edge.us.i ], [ 0, %.preheader486.lr.ph.i ]
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %.preheader486.us.i
  %indvars.iv715.i = phi i64 [ 0, %.preheader486.us.i ], [ %indvars.iv.next716.i, %bb.u ] ; 5 uses
  %.1378496.us.i = phi ptr [ %.0377498.us.i, %.preheader486.us.i ], [ %i.hy, %bb.u ] ; 17 uses
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %.0349502.us.i, i64 %indvars.iv715.i ; 2 uses
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %.0351501.us.i, i64 %indvars.iv715.i ; 2 uses
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %.0358500.us.i, i64 %indvars.iv715.i ; 2 uses
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %.0360499.us.i, i64 %indvars.iv715.i ; 2 uses
  %i.gh = load float, ptr %i.gd, align 4, !tbaa !45
  store float %i.gh, ptr %.1378496.us.i, align 4, !tbaa !45
  %i.gi = load float, ptr %i.ge, align 4, !tbaa !45
  %i.gj = getelementptr inbounds nuw i8, ptr %.1378496.us.i, i64 4
  store float %i.gi, ptr %i.gj, align 4, !tbaa !45
  %i.gk = load float, ptr %i.gf, align 4, !tbaa !45
  %i.gl = getelementptr inbounds nuw i8, ptr %.1378496.us.i, i64 8
  store float %i.gk, ptr %i.gl, align 4, !tbaa !45
  %i.gm = load float, ptr %i.gg, align 4, !tbaa !45
  %i.gn = getelementptr inbounds nuw i8, ptr %.1378496.us.i, i64 12
  store float %i.gm, ptr %i.gn, align 4, !tbaa !45
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.gd, i64 %i.cj ; 2 uses
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.ge, i64 %i.cj ; 2 uses
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.gf, i64 %i.cj ; 2 uses
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %i.cj ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %.1378496.us.i, i64 16
  %i.gt = load float, ptr %i.go, align 4, !tbaa !45
  store float %i.gt, ptr %i.gs, align 4, !tbaa !45
  %i.gu = load float, ptr %i.gp, align 4, !tbaa !45
  %i.gv = getelementptr inbounds nuw i8, ptr %.1378496.us.i, i64 20
  store float %i.gu, ptr %i.gv, align 4, !tbaa !45
  %i.gw = load float, ptr %i.gq, align 4, !tbaa !45
  %i.gx = getelementptr inbounds nuw i8, ptr %.1378496.us.i, i64 24
  store float %i.gw, ptr %i.gx, align 4, !tbaa !45
  %i.gy = load float, ptr %i.gr, align 4, !tbaa !45
  %i.gz = getelementptr inbounds nuw i8, ptr %.1378496.us.i, i64 28
  store float %i.gy, ptr %i.gz, align 4, !tbaa !45
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.go, i64 %i.cj ; 2 uses
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.gp, i64 %i.cj ; 2 uses
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.gq, i64 %i.cj ; 2 uses
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.gr, i64 %i.cj ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %.1378496.us.i, i64 32
  %i.hf = load float, ptr %i.ha, align 4, !tbaa !45
  store float %i.hf, ptr %i.he, align 4, !tbaa !45
  %i.hg = load float, ptr %i.hb, align 4, !tbaa !45
  %i.hh = getelementptr inbounds nuw i8, ptr %.1378496.us.i, i64 36
  store float %i.hg, ptr %i.hh, align 4, !tbaa !45
  %i.hi = load float, ptr %i.hc, align 4, !tbaa !45
  %i.hj = getelementptr inbounds nuw i8, ptr %.1378496.us.i, i64 40
  store float %i.hi, ptr %i.hj, align 4, !tbaa !45
  %i.hk = load float, ptr %i.hd, align 4, !tbaa !45
  %i.hl = getelementptr inbounds nuw i8, ptr %.1378496.us.i, i64 44
  store float %i.hk, ptr %i.hl, align 4, !tbaa !45
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.ha, i64 %i.cj
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.hb, i64 %i.cj
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.hc, i64 %i.cj
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.hd, i64 %i.cj
  %i.hq = getelementptr inbounds nuw i8, ptr %.1378496.us.i, i64 48
  %i.hr = load float, ptr %i.hm, align 4, !tbaa !45
  store float %i.hr, ptr %i.hq, align 4, !tbaa !45
  %i.hs = load float, ptr %i.hn, align 4, !tbaa !45
  %i.ht = getelementptr inbounds nuw i8, ptr %.1378496.us.i, i64 52
  store float %i.hs, ptr %i.ht, align 4, !tbaa !45
  %i.hu = load float, ptr %i.ho, align 4, !tbaa !45
  %i.hv = getelementptr inbounds nuw i8, ptr %.1378496.us.i, i64 56
  store float %i.hu, ptr %i.hv, align 4, !tbaa !45
  %i.hw = load float, ptr %i.hp, align 4, !tbaa !45
  %i.hx = getelementptr inbounds nuw i8, ptr %.1378496.us.i, i64 60
  store float %i.hw, ptr %i.hx, align 4, !tbaa !45
  %i.hy = getelementptr inbounds nuw i8, ptr %.1378496.us.i, i64 64 ; 3 uses
  %indvars.iv.next716.i = add nuw nsw i64 %indvars.iv715.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next716.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.us.i, label %bb.u, !llvm.loop !75

._crit_edge.us.i:                                 ; preds = %bb.u
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %.0349502.us.i, i64 %i.cl ; 3 uses
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %.0351501.us.i, i64 %i.cl ; 3 uses
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %.0358500.us.i, i64 %i.cl ; 3 uses
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %.0360499.us.i, i64 %i.cl ; 3 uses
  %i.id = add nuw nsw i32 %.0385497.us.i, 4       ; 2 uses
  %i.ie = or disjoint i32 %i.id, 3
  %i.if = icmp slt i32 %i.ie, %i.n
  br i1 %i.if, label %.preheader486.us.i, label %.preheader488.i.loopexit, !llvm.loop !76

.preheader488.i.loopexit:                         ; preds = %._crit_edge.us.i
  %i.ig = insertelement <4 x ptr> poison, ptr %i.ic, i64 0
  %i.ih = insertelement <4 x ptr> %i.ig, ptr %i.ib, i64 1
  %i.ii = insertelement <4 x ptr> %i.ih, ptr %i.ia, i64 2
  %i.ij = insertelement <4 x ptr> %i.ii, ptr %i.hz, i64 3
  br label %.preheader488.i

.preheader488.i:                                  ; preds = %.preheader488.i.loopexit, %_ZN4ncnn3MatD2Ev.exit420.i
  %.0385.lcssa.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit420.i ], [ %i.cp, %.preheader488.i.loopexit ] ; 4 uses
  %.0377.lcssa.i = phi ptr [ %i.fy, %_ZN4ncnn3MatD2Ev.exit420.i ], [ %i.hy, %.preheader488.i.loopexit ] ; 2 uses
  %.0360.lcssa.i = phi ptr [ %i.fw, %_ZN4ncnn3MatD2Ev.exit420.i ], [ %i.ic, %.preheader488.i.loopexit ] ; 5 uses
  %.0358.lcssa.i = phi ptr [ %i.fs, %_ZN4ncnn3MatD2Ev.exit420.i ], [ %i.ib, %.preheader488.i.loopexit ] ; 5 uses
  %.0351.lcssa.i = phi ptr [ %i.fo, %_ZN4ncnn3MatD2Ev.exit420.i ], [ %i.ia, %.preheader488.i.loopexit ] ; 5 uses
  %.0349.lcssa.i = phi ptr [ %i.fk, %_ZN4ncnn3MatD2Ev.exit420.i ], [ %i.hz, %.preheader488.i.loopexit ] ; 5 uses
  %i.ik = phi <4 x ptr> [ %i.gc, %_ZN4ncnn3MatD2Ev.exit420.i ], [ %i.ij, %.preheader488.i.loopexit ]
  %i.il = or disjoint i32 %.0385.lcssa.i, 1
  %i.im = icmp slt i32 %i.il, %i.n
  br i1 %i.im, label %.preheader485.lr.ph.i, label %.preheader487.i

.preheader485.lr.ph.i:                            ; preds = %.preheader488.i
  br i1 %i.ci, label %.preheader485.us.i.preheader, label %._crit_edge546.split.i

.preheader485.us.i.preheader:                     ; preds = %.preheader485.lr.ph.i
  %scevgep149 = getelementptr i8, ptr %.0360.lcssa.i, i64 %i.cu
  %scevgep150 = getelementptr i8, ptr %.0360.lcssa.i, i64 %i.cv
  %i.in = sub i32 %i.cx, %.0385.lcssa.i
  %i.io = lshr i32 %i.in, 1
  %i.ip = zext nneg i32 %i.io to i64
  %i.iq = mul i64 %i.cw, %i.ip                    ; 8 uses
  %scevgep151 = getelementptr i8, ptr %scevgep150, i64 %i.iq
  %scevgep152 = getelementptr i8, ptr %.0358.lcssa.i, i64 %i.cu
  %scevgep153 = getelementptr i8, ptr %.0358.lcssa.i, i64 %i.cv
  %scevgep154 = getelementptr i8, ptr %scevgep153, i64 %i.iq
  %scevgep155 = getelementptr i8, ptr %.0351.lcssa.i, i64 %i.cu
  %scevgep156 = getelementptr i8, ptr %.0351.lcssa.i, i64 %i.cv
  %scevgep157 = getelementptr i8, ptr %scevgep156, i64 %i.iq
  %scevgep158 = getelementptr i8, ptr %.0349.lcssa.i, i64 %i.cu
  %scevgep159 = getelementptr i8, ptr %.0349.lcssa.i, i64 %i.cv
  %scevgep160 = getelementptr i8, ptr %scevgep159, i64 %i.iq
  %scevgep161 = getelementptr i8, ptr %.0360.lcssa.i, i64 %i.cs
  %scevgep162 = getelementptr i8, ptr %scevgep161, i64 %i.iq
  %scevgep163 = getelementptr i8, ptr %.0358.lcssa.i, i64 %i.cs
  %scevgep164 = getelementptr i8, ptr %scevgep163, i64 %i.iq
  %scevgep165 = getelementptr i8, ptr %.0351.lcssa.i, i64 %i.cs
end_hunk_0
begin_hunk_1_@_ZN4ncnn17Convolution1D_x8615create_pipelineERKNS_6OptionE:bb.a
  %i.ue = sub nsw i64 %indvars.iv780.i.us.ph, %wide.trip.count777.i
  %i.uf = icmp ugt i64 %i.ue, -4
  br i1 %i.uf, label %._crit_edge617.us.i.us, label %scalar.ph468

scalar.ph468:                                     ; preds = %scalar.ph468.prol.loopexit, %scalar.ph468
  %indvars.iv780.i.us = phi i64 [ %indvars.iv.next781.i.us.3, %scalar.ph468 ], [ %indvars.iv780.i.us.unr, %scalar.ph468.prol.loopexit ] ; 5 uses
  %.4615.us.i.us = phi ptr [ %i.vg, %scalar.ph468 ], [ %.4615.us.i.us.unr, %scalar.ph468.prol.loopexit ] ; 9 uses
  %i.ug = getelementptr inbounds nuw [4 x i8], ptr %.1348619.us.i.us, i64 %indvars.iv780.i.us ; 2 uses
  %i.uh = load float, ptr %i.ug, align 4, !tbaa !45
  store float %i.uh, ptr %.4615.us.i.us, align 4, !tbaa !45
  %i.ui = getelementptr inbounds nuw [4 x i8], ptr %i.ug, i64 %i.oj
  %i.uj = getelementptr inbounds nuw i8, ptr %.4615.us.i.us, i64 4
  %i.uk = load float, ptr %i.ui, align 4, !tbaa !45
  store float %i.uk, ptr %i.uj, align 4, !tbaa !45
  %i.ul = getelementptr inbounds nuw i8, ptr %.4615.us.i.us, i64 8
  %i.um = getelementptr inbounds nuw [4 x i8], ptr %.1348619.us.i.us, i64 %indvars.iv780.i.us
  %i.un = getelementptr inbounds nuw i8, ptr %i.um, i64 4 ; 2 uses
  %i.uo = load float, ptr %i.un, align 4, !tbaa !45
  store float %i.uo, ptr %i.ul, align 4, !tbaa !45
  %i.up = getelementptr inbounds nuw [4 x i8], ptr %i.un, i64 %i.oj
  %i.uq = getelementptr inbounds nuw i8, ptr %.4615.us.i.us, i64 12
  %i.ur = load float, ptr %i.up, align 4, !tbaa !45
  store float %i.ur, ptr %i.uq, align 4, !tbaa !45
  %i.us = getelementptr inbounds nuw i8, ptr %.4615.us.i.us, i64 16
  %i.ut = getelementptr inbounds nuw [4 x i8], ptr %.1348619.us.i.us, i64 %indvars.iv780.i.us
  %i.uu = getelementptr inbounds nuw i8, ptr %i.ut, i64 8 ; 2 uses
  %i.uv = load float, ptr %i.uu, align 4, !tbaa !45
  store float %i.uv, ptr %i.us, align 4, !tbaa !45
  %i.uw = getelementptr inbounds nuw [4 x i8], ptr %i.uu, i64 %i.oj
  %i.ux = getelementptr inbounds nuw i8, ptr %.4615.us.i.us, i64 20
  %i.uy = load float, ptr %i.uw, align 4, !tbaa !45
  store float %i.uy, ptr %i.ux, align 4, !tbaa !45
  %i.uz = getelementptr inbounds nuw i8, ptr %.4615.us.i.us, i64 24
  %i.va = getelementptr inbounds nuw [4 x i8], ptr %.1348619.us.i.us, i64 %indvars.iv780.i.us
  %i.vb = getelementptr inbounds nuw i8, ptr %i.va, i64 12 ; 2 uses
  %i.vc = load float, ptr %i.vb, align 4, !tbaa !45
  store float %i.vc, ptr %i.uz, align 4, !tbaa !45
  %i.vd = getelementptr inbounds nuw [4 x i8], ptr %i.vb, i64 %i.oj
  %i.ve = getelementptr inbounds nuw i8, ptr %.4615.us.i.us, i64 28
  %i.vf = load float, ptr %i.vd, align 4, !tbaa !45
  store float %i.vf, ptr %i.ve, align 4, !tbaa !45
  %i.vg = getelementptr inbounds nuw i8, ptr %.4615.us.i.us, i64 32 ; 2 uses
  %indvars.iv.next781.i.us.3 = add nuw nsw i64 %indvars.iv780.i.us, 4 ; 2 uses
  %exitcond784.not.i.us.3 = icmp eq i64 %indvars.iv.next781.i.us.3, %wide.trip.count777.i
  br i1 %exitcond784.not.i.us.3, label %._crit_edge617.us.i.us, label %scalar.ph468, !llvm.loop !117

._crit_edge617.us.i.us:                           ; preds = %scalar.ph468.prol.loopexit, %scalar.ph468, %middle.block483
  %.lcssa102 = phi ptr [ %i.tq, %middle.block483 ], [ %.lcssa543.unr, %scalar.ph468.prol.loopexit ], [ %i.vg, %scalar.ph468 ] ; 2 uses
  %i.vh = getelementptr inbounds nuw [4 x i8], ptr %.1348619.us.i.us, i64 %i.on ; 2 uses
  %i.vi = add nuw nsw i32 %.1342621.us.i.us, 2    ; 3 uses
  %i.vj = or disjoint i32 %i.vi, 1
  %i.vk = icmp slt i32 %i.vj, %i.n
  br i1 %i.vk, label %.preheader473.us.i.us, label %.preheader475.i.us, !llvm.loop !118

.preheader475.i.us:                               ; preds = %._crit_edge617.us.i.us, %.preheader476.i.loopexit.us
  %.1348.lcssa.i.us = phi ptr [ %i.tl, %.preheader476.i.loopexit.us ], [ %i.vh, %._crit_edge617.us.i.us ] ; 11 uses
  %.3.lcssa.i.us = phi ptr [ %.lcssa, %.preheader476.i.loopexit.us ], [ %.lcssa102, %._crit_edge617.us.i.us ]
  %.1342.lcssa.i.us = phi i32 [ %i.op, %.preheader476.i.loopexit.us ], [ %i.vi, %._crit_edge617.us.i.us ] ; 2 uses
  %i.vl = icmp sge i32 %.1342.lcssa.i.us, %i.n
  %brmerge645.i.us = or i1 %i.oo, %i.vl
  br i1 %brmerge645.i.us, label %._crit_edge634.split.i.us, label %.preheader.i.us.preheader

.preheader.i.us.preheader:                        ; preds = %.preheader475.i.us
  %.1348.lcssa.i.us434 = ptrtoaddr ptr %.1348.lcssa.i.us to i64
  br label %.preheader.i.us

.preheader.i.us:                                  ; preds = %.preheader.i.us.preheader, %._crit_edge630.i.us
  %.2343633.i.us = phi i32 [ %i.xd, %._crit_edge630.i.us ], [ %.1342.lcssa.i.us, %.preheader.i.us.preheader ]
  %.6632.i.us = phi ptr [ %.lcssa105, %._crit_edge630.i.us ], [ %.3.lcssa.i.us, %.preheader.i.us.preheader ] ; 4 uses
  %.6632.i.us435 = ptrtoaddr ptr %.6632.i.us to i64
  %i.vm = sub i64 %.1348.lcssa.i.us434, %.6632.i.us435
  %diff.check436 = icmp ugt i64 %i.vm, -32
  %or.cond = select i1 %min.iters.check438, i1 true, i1 %diff.check436
  br i1 %or.cond, label %scalar.ph437.preheader, label %vector.ph439

vector.ph439:                                     ; preds = %.preheader.i.us
  %i.vn = getelementptr i8, ptr %.6632.i.us, i64 %i.qe ; 2 uses
  br label %vector.body441

vector.body441:                                   ; preds = %vector.body441, %vector.ph439
  %index442 = phi i64 [ 0, %vector.ph439 ], [ %index.next446, %vector.body441 ] ; 3 uses
  %i.vo = shl i64 %index442, 2
  %next.gep443 = getelementptr i8, ptr %.6632.i.us, i64 %i.vo ; 2 uses
  %i.vp = getelementptr inbounds nuw [4 x i8], ptr %.1348.lcssa.i.us, i64 %index442 ; 2 uses
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vp, i64 16
  %wide.load444 = load <4 x float>, ptr %i.vp, align 4, !tbaa !45
  %wide.load445 = load <4 x float>, ptr %i.vq, align 4, !tbaa !45
  %i.vr = getelementptr i8, ptr %next.gep443, i64 16
  store <4 x float> %wide.load444, ptr %next.gep443, align 4, !tbaa !45
  store <4 x float> %wide.load445, ptr %i.vr, align 4, !tbaa !45
  %index.next446 = add nuw i64 %index442, 8       ; 2 uses
  %i.vs = icmp eq i64 %index.next446, %n.vec440
  br i1 %i.vs, label %middle.block447, label %vector.body441, !llvm.loop !119

middle.block447:                                  ; preds = %vector.body441
  br i1 %cmp.n448, label %._crit_edge630.i.us, label %scalar.ph437.preheader

scalar.ph437.preheader:                           ; preds = %.preheader.i.us, %middle.block447
  %indvars.iv785.i.us.ph = phi i64 [ 0, %.preheader.i.us ], [ %n.vec440, %middle.block447 ] ; 3 uses
  %.7628.i.us.ph = phi ptr [ %.6632.i.us, %.preheader.i.us ], [ %i.vn, %middle.block447 ] ; 2 uses
  br i1 %lcmp.mod589.not, label %scalar.ph437.prol.loopexit, label %scalar.ph437.prol

scalar.ph437.prol:                                ; preds = %scalar.ph437.preheader, %scalar.ph437.prol
  %indvars.iv785.i.us.prol = phi i64 [ %indvars.iv.next786.i.us.prol, %scalar.ph437.prol ], [ %indvars.iv785.i.us.ph, %scalar.ph437.preheader ] ; 2 uses
  %.7628.i.us.prol = phi ptr [ %i.vv, %scalar.ph437.prol ], [ %.7628.i.us.ph, %scalar.ph437.preheader ] ; 2 uses
  %prol.iter590 = phi i64 [ %prol.iter590.next, %scalar.ph437.prol ], [ 0, %scalar.ph437.preheader ]
  %i.vt = getelementptr inbounds nuw [4 x i8], ptr %.1348.lcssa.i.us, i64 %indvars.iv785.i.us.prol
  %i.vu = load float, ptr %i.vt, align 4, !tbaa !45
  store float %i.vu, ptr %.7628.i.us.prol, align 4, !tbaa !45
  %i.vv = getelementptr inbounds nuw i8, ptr %.7628.i.us.prol, i64 4 ; 3 uses
  %indvars.iv.next786.i.us.prol = add nuw nsw i64 %indvars.iv785.i.us.prol, 1 ; 2 uses
  %prol.iter590.next = add i64 %prol.iter590, 1   ; 2 uses
  %prol.iter590.cmp.not = icmp eq i64 %prol.iter590.next, %xtraiter588
  br i1 %prol.iter590.cmp.not, label %scalar.ph437.prol.loopexit, label %scalar.ph437.prol, !llvm.loop !120

scalar.ph437.prol.loopexit:                       ; preds = %scalar.ph437.prol, %scalar.ph437.preheader
  %.lcssa546.unr = phi ptr [ poison, %scalar.ph437.preheader ], [ %i.vv, %scalar.ph437.prol ]
  %indvars.iv785.i.us.unr = phi i64 [ %indvars.iv785.i.us.ph, %scalar.ph437.preheader ], [ %indvars.iv.next786.i.us.prol, %scalar.ph437.prol ]
  %.7628.i.us.unr = phi ptr [ %.7628.i.us.ph, %scalar.ph437.preheader ], [ %i.vv, %scalar.ph437.prol ]
  %i.vw = sub nsw i64 %indvars.iv785.i.us.ph, %wide.trip.count777.i
  %i.vx = icmp ugt i64 %i.vw, -8
  br i1 %i.vx, label %._crit_edge630.i.us, label %scalar.ph437

scalar.ph437:                                     ; preds = %scalar.ph437.prol.loopexit, %scalar.ph437
  %indvars.iv785.i.us = phi i64 [ %indvars.iv.next786.i.us.7, %scalar.ph437 ], [ %indvars.iv785.i.us.unr, %scalar.ph437.prol.loopexit ] ; 9 uses
  %.7628.i.us = phi ptr [ %i.xc, %scalar.ph437 ], [ %.7628.i.us.unr, %scalar.ph437.prol.loopexit ] ; 9 uses
  %i.vy = getelementptr inbounds nuw [4 x i8], ptr %.1348.lcssa.i.us, i64 %indvars.iv785.i.us
  %i.vz = load float, ptr %i.vy, align 4, !tbaa !45
  store float %i.vz, ptr %.7628.i.us, align 4, !tbaa !45
  %i.wa = getelementptr inbounds nuw i8, ptr %.7628.i.us, i64 4
  %i.wb = getelementptr inbounds nuw [4 x i8], ptr %.1348.lcssa.i.us, i64 %indvars.iv785.i.us
  %i.wc = getelementptr inbounds nuw i8, ptr %i.wb, i64 4
  %i.wd = load float, ptr %i.wc, align 4, !tbaa !45
  store float %i.wd, ptr %i.wa, align 4, !tbaa !45
  %i.we = getelementptr inbounds nuw i8, ptr %.7628.i.us, i64 8
  %i.wf = getelementptr inbounds nuw [4 x i8], ptr %.1348.lcssa.i.us, i64 %indvars.iv785.i.us
  %i.wg = getelementptr inbounds nuw i8, ptr %i.wf, i64 8
  %i.wh = load float, ptr %i.wg, align 4, !tbaa !45
  store float %i.wh, ptr %i.we, align 4, !tbaa !45
  %i.wi = getelementptr inbounds nuw i8, ptr %.7628.i.us, i64 12
  %i.wj = getelementptr inbounds nuw [4 x i8], ptr %.1348.lcssa.i.us, i64 %indvars.iv785.i.us
  %i.wk = getelementptr inbounds nuw i8, ptr %i.wj, i64 12
  %i.wl = load float, ptr %i.wk, align 4, !tbaa !45
  store float %i.wl, ptr %i.wi, align 4, !tbaa !45
  %i.wm = getelementptr inbounds nuw i8, ptr %.7628.i.us, i64 16
  %i.wn = getelementptr inbounds nuw [4 x i8], ptr %.1348.lcssa.i.us, i64 %indvars.iv785.i.us
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wn, i64 16
  %i.wp = load float, ptr %i.wo, align 4, !tbaa !45
  store float %i.wp, ptr %i.wm, align 4, !tbaa !45
  %i.wq = getelementptr inbounds nuw i8, ptr %.7628.i.us, i64 20
  %i.wr = getelementptr inbounds nuw [4 x i8], ptr %.1348.lcssa.i.us, i64 %indvars.iv785.i.us
  %i.ws = getelementptr inbounds nuw i8, ptr %i.wr, i64 20
  %i.wt = load float, ptr %i.ws, align 4, !tbaa !45
  store float %i.wt, ptr %i.wq, align 4, !tbaa !45
  %i.wu = getelementptr inbounds nuw i8, ptr %.7628.i.us, i64 24
  %i.wv = getelementptr inbounds nuw [4 x i8], ptr %.1348.lcssa.i.us, i64 %indvars.iv785.i.us
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wv, i64 24
  %i.wx = load float, ptr %i.ww, align 4, !tbaa !45
  store float %i.wx, ptr %i.wu, align 4, !tbaa !45
  %i.wy = getelementptr inbounds nuw i8, ptr %.7628.i.us, i64 28
  %i.wz = getelementptr inbounds nuw [4 x i8], ptr %.1348.lcssa.i.us, i64 %indvars.iv785.i.us
  %i.xa = getelementptr inbounds nuw i8, ptr %i.wz, i64 28
  %i.xb = load float, ptr %i.xa, align 4, !tbaa !45
  store float %i.xb, ptr %i.wy, align 4, !tbaa !45
  %i.xc = getelementptr inbounds nuw i8, ptr %.7628.i.us, i64 32 ; 2 uses
  %indvars.iv.next786.i.us.7 = add nuw nsw i64 %indvars.iv785.i.us, 8 ; 2 uses
  %exitcond789.not.i.us.7 = icmp eq i64 %indvars.iv.next786.i.us.7, %wide.trip.count777.i
  br i1 %exitcond789.not.i.us.7, label %._crit_edge630.i.us, label %scalar.ph437, !llvm.loop !121

._crit_edge630.i.us:                              ; preds = %scalar.ph437.prol.loopexit, %scalar.ph437, %middle.block447
  %.lcssa105 = phi ptr [ %i.vn, %middle.block447 ], [ %.lcssa546.unr, %scalar.ph437.prol.loopexit ], [ %i.xc, %scalar.ph437 ]
  %i.xd = add nuw nsw i32 %.2343633.i.us, 1       ; 2 uses
  %exitcond790.not.i.us = icmp eq i32 %i.xd, %i.n
  br i1 %exitcond790.not.i.us, label %._crit_edge634.split.i.us, label %.preheader.i.us, !llvm.loop !122

._crit_edge634.split.i.us:                        ; preds = %._crit_edge630.i.us, %.preheader475.i.us
  %indvars.iv.next792.i.us = add nuw nsw i64 %indvars.iv791.i.us, 1 ; 2 uses
  %exitcond795.not.i.us = icmp eq i64 %indvars.iv.next792.i.us, %wide.trip.count794.i
  %indvar.next454 = add i32 %indvar453, 1
  br i1 %exitcond795.not.i.us, label %_ZN4ncnnL37convolution1d_transform_kernel_packedERKNS_3MatERS0_iii.exit, label %_ZN4ncnn3MatD2Ev.exit.i.us, !llvm.loop !123

.preheader476.i.loopexit.us:                      ; preds = %._crit_edge601.us.i.us
  br i1 %i.os, label %.preheader473.us.i.us.preheader, label %.preheader475.i.us

.preheader473.us.i.us.preheader:                  ; preds = %.preheader476.i.loopexit.us
  %i.xe = mul i64 %i.oz, %indvar455               ; 3 uses
  %gep625 = getelementptr i8, ptr %invariant.gep624, i64 %i.xe
  %scevgep457 = getelementptr i8, ptr %gep625, i64 %i.qm
  %gep631 = getelementptr i8, ptr %invariant.gep630, i64 %i.xe
  %scevgep458 = getelementptr i8, ptr %gep631, i64 %i.qm
  %gep = getelementptr i8, ptr %invariant.gep635, i64 %i.xe
  %scevgep459 = getelementptr i8, ptr %gep, i64 %i.qm
  br label %.preheader473.us.i.us

_ZN4ncnn3MatD2Ev.exit.lr.ph.i.split:              ; preds = %_ZN4ncnn3MatD2Ev.exit.lr.ph.i
  %i.xf = icmp sgt i32 %i.n, 1
  %i.xg = and i32 %i.n, -2
  %i.xh = shl nuw nsw i64 %wide.trip.count777.i, 3
  %scevgep397 = getelementptr i8, ptr %i.oc, i64 %i.xh
  %i.xi = mul i64 %i.oe, %i.og
  %i.xj = shl nsw i64 %i.oj, 2                    ; 2 uses
  %scevgep401 = getelementptr i8, ptr %i.oa, i64 %i.xj
  %i.xk = mul i32 %.1.lcssa.i, %i.j
  %i.xl = mul i32 %i.xk, %i.n
  %i.xm = mul i32 %i.j, %i.n
  %i.xn = shl nuw nsw i64 %wide.trip.count777.i, 2 ; 2 uses
  %i.xo = getelementptr i8, ptr %i.oa, i64 %i.xj
  %scevgep403 = getelementptr i8, ptr %i.xo, i64 %i.xn
  %scevgep405 = getelementptr i8, ptr %i.oa, i64 %i.xn
  %min.iters.check415 = icmp ult i32 %i.j, 6
  %n.vec417 = and i64 %wide.trip.count777.i, 2147483644 ; 4 uses
  %i.xp = shl nuw nsw i64 %n.vec417, 3
  %cmp.n430 = icmp eq i64 %n.vec417, %wide.trip.count777.i
  %xtraiter576 = and i64 %wide.trip.count777.i, 3 ; 2 uses
  %lcmp.mod577.not = icmp eq i64 %xtraiter576, 0
  %min.iters.check383 = icmp ult i32 %i.j, 8
  %n.vec385 = and i64 %wide.trip.count777.i, 2147483640 ; 4 uses
  %i.xq = shl nuw nsw i64 %n.vec385, 2
  %cmp.n393 = icmp eq i64 %n.vec385, %wide.trip.count777.i
  %xtraiter579 = and i64 %wide.trip.count777.i, 7 ; 2 uses
  %lcmp.mod580.not = icmp eq i64 %xtraiter579, 0
  br label %_ZN4ncnn3MatD2Ev.exit.i

_ZN4ncnn3MatD2Ev.exit419.i:                       ; preds = %._crit_edge591.split.i, %_ZN4ncnn3MatD2Ev.exit419.lr.ph.i
  %indvar = phi i32 [ %indvar.next, %._crit_edge591.split.i ], [ 0, %_ZN4ncnn3MatD2Ev.exit419.lr.ph.i ] ; 2 uses
  %indvars.iv764.i = phi i64 [ %indvars.iv.next765.i, %._crit_edge591.split.i ], [ %i.dx, %_ZN4ncnn3MatD2Ev.exit419.lr.ph.i ] ; 2 uses
  %indvars.iv762.i = phi i32 [ %indvars.iv.next763.i, %._crit_edge591.split.i ], [ %i.dy, %_ZN4ncnn3MatD2Ev.exit419.lr.ph.i ] ; 2 uses
  %i.xr = mul i32 %i.em, %indvar                  ; 2 uses
  %i.xs = add i32 %i.ek, %i.xr
  %i.xt = sext i32 %i.xs to i64
  %i.xu = shl nsw i64 %i.xt, 2                    ; 7 uses
  %scevgep299 = getelementptr i8, ptr %scevgep298, i64 %i.xu
  %scevgep301 = getelementptr i8, ptr %scevgep300, i64 %i.xu
  %scevgep303 = getelementptr i8, ptr %scevgep302, i64 %i.xu
  %scevgep305 = getelementptr i8, ptr %scevgep304, i64 %i.xu
  %scevgep307 = getelementptr i8, ptr %scevgep306, i64 %i.xu
  %scevgep309 = getelementptr i8, ptr %scevgep308, i64 %i.xu
  %scevgep311 = getelementptr i8, ptr %scevgep310, i64 %i.xu
  %i.xv = add i32 %i.fc, %i.xr
  %i.xw = sext i32 %i.xv to i64
  %i.xx = shl nsw i64 %i.xw, 2                    ; 7 uses
  %scevgep313 = getelementptr i8, ptr %scevgep312, i64 %i.xx
  %scevgep315 = getelementptr i8, ptr %scevgep314, i64 %i.xx
  %scevgep317 = getelementptr i8, ptr %scevgep316, i64 %i.xx
  %scevgep319 = getelementptr i8, ptr %scevgep318, i64 %i.xx
  %scevgep321 = getelementptr i8, ptr %scevgep320, i64 %i.xx
  %scevgep323 = getelementptr i8, ptr %scevgep322, i64 %i.xx
  %scevgep325 = getelementptr i8, ptr %scevgep324, i64 %i.xx
  %i.xy = trunc i64 %indvars.iv764.i to i32       ; 3 uses
  %i.xz = mul i32 %i.df, %i.xy
  %i.ya = sext i32 %i.xz to i64
  %i.yb = getelementptr [4 x i8], ptr %i.de, i64 %i.ya ; 3 uses
  %i.yc = mul i32 %indvars.iv762.i, %i.df
  %i.yd = sext i32 %i.yc to i64
  %i.ye = getelementptr [4 x i8], ptr %i.de, i64 %i.yd ; 3 uses
  %i.yf = lshr i32 %i.xy, 2
  %i.yg = lshr i32 %i.xy, 1
  %i.yh = and i32 %i.yg, 1
  %i.yi = add nuw nsw i32 %i.yh, %i.yf
  %i.yj = zext nneg i32 %i.yi to i64
  %.reass595.i = mul i64 %factor.op.mul594.i, %i.yj
  %i.yk = getelementptr inbounds nuw i8, ptr %i.dg, i64 %.reass595.i ; 2 uses
  br i1 %i.dl, label %.preheader480.lr.ph.i, label %.preheader482.i

.preheader480.lr.ph.i:                            ; preds = %_ZN4ncnn3MatD2Ev.exit419.i
  br i1 %i.dm, label %.preheader480.us.i.preheader, label %._crit_edge591.split.i

.preheader480.us.i.preheader:                     ; preds = %.preheader480.lr.ph.i
  %i.yl = insertelement <8 x ptr> poison, ptr %scevgep301, i64 0
  %i.ym = insertelement <8 x ptr> %i.yl, ptr %scevgep305, i64 1
  %i.yn = insertelement <8 x ptr> %i.ym, ptr %scevgep309, i64 2
  %i.yo = insertelement <8 x ptr> %i.yn, ptr %scevgep311, i64 3
  %i.yp = insertelement <8 x ptr> %i.yo, ptr %scevgep315, i64 4
  %i.yq = insertelement <8 x ptr> %i.yp, ptr %scevgep319, i64 5
  %i.yr = insertelement <8 x ptr> %i.yq, ptr %scevgep323, i64 6
  %i.ys = insertelement <8 x ptr> %i.yr, ptr %scevgep325, i64 7
  %i.yt = insertelement <8 x ptr> poison, ptr %scevgep299, i64 0
  %i.yu = insertelement <8 x ptr> %i.yt, ptr %scevgep303, i64 1
  %i.yv = insertelement <8 x ptr> %i.yu, ptr %scevgep307, i64 2
  %i.yw = insertelement <8 x ptr> %i.yv, ptr %i.ye, i64 3
  %i.yx = insertelement <8 x ptr> %i.yw, ptr %scevgep313, i64 4
  %i.yy = insertelement <8 x ptr> %i.yx, ptr %scevgep317, i64 5
  %i.yz = insertelement <8 x ptr> %i.yy, ptr %scevgep321, i64 6
  %i.za = insertelement <8 x ptr> %i.yz, ptr %i.yb, i64 7
  br label %.preheader480.us.i

.preheader480.us.i:                               ; preds = %.preheader480.us.i.preheader, %._crit_edge551.us.i
  %.0363556.us.i = phi i32 [ %i.abb, %._crit_edge551.us.i ], [ 0, %.preheader480.us.i.preheader ]
  %.0366555.us.i = phi ptr [ %.lcssa108, %._crit_edge551.us.i ], [ %i.yk, %.preheader480.us.i.preheader ] ; 6 uses
  %.0373554.us.i = phi ptr [ %i.aba, %._crit_edge551.us.i ], [ %i.ye, %.preheader480.us.i.preheader ] ; 3 uses
  %.0375553.us.i = phi ptr [ %i.aaz, %._crit_edge551.us.i ], [ %i.yb, %.preheader480.us.i.preheader ] ; 3 uses
  br i1 %min.iters.check359, label %scalar.ph358.preheader, label %vector.memcheck296

vector.memcheck296:                               ; preds = %.preheader480.us.i
  %scevgep297 = getelementptr i8, ptr %.0366555.us.i, i64 %i.eh
  %i.zb = insertelement <8 x ptr> poison, ptr %.0366555.us.i, i64 0
  %i.zc = shufflevector <8 x ptr> %i.zb, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.zd = icmp ult <8 x ptr> %i.zc, %i.ys
  %i.ze = insertelement <8 x ptr> poison, ptr %scevgep297, i64 0
  %i.zf = shufflevector <8 x ptr> %i.ze, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.zg = icmp ult <8 x ptr> %i.za, %i.zf
  %i.zh = and <8 x i1> %i.zd, %i.zg
  %i.zi = bitcast <8 x i1> %i.zh to i8
  %i.zj = icmp ne i8 %i.zi, 0
  %op.rdx538 = or i1 %i.zj, %stride.check329
  br i1 %op.rdx538, label %scalar.ph358.preheader, label %vector.ph360

vector.ph360:                                     ; preds = %vector.memcheck296
  %i.zk = getelementptr i8, ptr %.0366555.us.i, i64 %i.fd ; 2 uses
  br label %vector.body362

vector.body362:                                   ; preds = %vector.body362, %vector.ph360
  %index363 = phi i64 [ 0, %vector.ph360 ], [ %index.next374, %vector.body362 ] ; 4 uses
  %i.zl = shl i64 %index363, 5
  %next.gep364 = getelementptr i8, ptr %.0366555.us.i, i64 %i.zl
  %i.zm = getelementptr inbounds nuw [4 x i8], ptr %.0375553.us.i, i64 %index363 ; 4 uses
  %i.zn = getelementptr inbounds nuw [4 x i8], ptr %.0373554.us.i, i64 %index363 ; 4 uses
  %wide.load365 = load <4 x float>, ptr %i.zm, align 4, !tbaa !45, !alias.scope !195
  %i.zo = getelementptr inbounds nuw [4 x i8], ptr %i.zm, i64 %i.dn
  %wide.load366 = load <4 x float>, ptr %i.zo, align 4, !tbaa !45, !alias.scope !196
  %i.zp = getelementptr inbounds nuw [4 x i8], ptr %i.zm, i64 %i.dp
  %wide.load367 = load <4 x float>, ptr %i.zp, align 4, !tbaa !45, !alias.scope !197
  %i.zq = getelementptr inbounds nuw [4 x i8], ptr %i.zm, i64 %i.dr
  %wide.load368 = load <4 x float>, ptr %i.zq, align 4, !tbaa !45, !alias.scope !198
  %wide.load369 = load <4 x float>, ptr %i.zn, align 4, !tbaa !45, !alias.scope !199
  %i.zr = getelementptr inbounds nuw [4 x i8], ptr %i.zn, i64 %i.dn
  %wide.load370 = load <4 x float>, ptr %i.zr, align 4, !tbaa !45, !alias.scope !200
  %i.zs = getelementptr inbounds nuw [4 x i8], ptr %i.zn, i64 %i.dp
  %wide.load371 = load <4 x float>, ptr %i.zs, align 4, !tbaa !45, !alias.scope !201
  %i.zt = getelementptr inbounds nuw [4 x i8], ptr %i.zn, i64 %i.dr
  %wide.load372 = load <4 x float>, ptr %i.zt, align 4, !tbaa !45, !alias.scope !202
  %i.zu = shufflevector <4 x float> %wide.load365, <4 x float> %wide.load366, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.zv = shufflevector <4 x float> %wide.load367, <4 x float> %wide.load368, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.zw = shufflevector <4 x float> %wide.load369, <4 x float> %wide.load370, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.zx = shufflevector <4 x float> %wide.load371, <4 x float> %wide.load372, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.zy = shufflevector <8 x float> %i.zu, <8 x float> %i.zv, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.zz = shufflevector <8 x float> %i.zw, <8 x float> %i.zx, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec373 = shufflevector <16 x float> %i.zy, <16 x float> %i.zz, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  store <32 x float> %interleaved.vec373, ptr %next.gep364, align 4, !tbaa !45, !alias.scope !203, !noalias !204
  %index.next374 = add nuw i64 %index363, 4       ; 2 uses
  %i.aaa = icmp eq i64 %index.next374, %n.vec361
  br i1 %i.aaa, label %middle.block375, label %vector.body362, !llvm.loop !134

middle.block375:                                  ; preds = %vector.body362
  br i1 %cmp.n376, label %._crit_edge551.us.i, label %scalar.ph358.preheader

scalar.ph358.preheader:                           ; preds = %vector.memcheck296, %.preheader480.us.i, %middle.block375
  %indvars.iv744.i.ph = phi i64 [ 0, %vector.memcheck296 ], [ 0, %.preheader480.us.i ], [ %n.vec361, %middle.block375 ]
  %.1367549.us.i.ph = phi ptr [ %.0366555.us.i, %vector.memcheck296 ], [ %.0366555.us.i, %.preheader480.us.i ], [ %i.zk, %middle.block375 ]
  br label %scalar.ph358

scalar.ph358:                                     ; preds = %scalar.ph358.preheader, %scalar.ph358
  %indvars.iv744.i = phi i64 [ %indvars.iv.next745.i, %scalar.ph358 ], [ %indvars.iv744.i.ph, %scalar.ph358.preheader ] ; 3 uses
  %.1367549.us.i = phi ptr [ %i.aay, %scalar.ph358 ], [ %.1367549.us.i.ph, %scalar.ph358.preheader ] ; 9 uses
  %i.aab = getelementptr inbounds nuw [4 x i8], ptr %.0375553.us.i, i64 %indvars.iv744.i ; 4 uses
  %i.aac = getelementptr inbounds nuw [4 x i8], ptr %.0373554.us.i, i64 %indvars.iv744.i ; 4 uses
  %i.aad = load float, ptr %i.aab, align 4, !tbaa !45
  store float %i.aad, ptr %.1367549.us.i, align 4, !tbaa !45
  %i.aae = getelementptr inbounds nuw [4 x i8], ptr %i.aab, i64 %i.dn
  %i.aaf = load float, ptr %i.aae, align 4, !tbaa !45
  %i.aag = getelementptr inbounds nuw i8, ptr %.1367549.us.i, i64 4
  store float %i.aaf, ptr %i.aag, align 4, !tbaa !45
  %i.aah = getelementptr inbounds nuw [4 x i8], ptr %i.aab, i64 %i.dp
  %i.aai = load float, ptr %i.aah, align 4, !tbaa !45
  %i.aaj = getelementptr inbounds nuw i8, ptr %.1367549.us.i, i64 8
  store float %i.aai, ptr %i.aaj, align 4, !tbaa !45
  %i.aak = getelementptr inbounds nuw [4 x i8], ptr %i.aab, i64 %i.dr
  %i.aal = load float, ptr %i.aak, align 4, !tbaa !45
  %i.aam = getelementptr inbounds nuw i8, ptr %.1367549.us.i, i64 12
  store float %i.aal, ptr %i.aam, align 4, !tbaa !45
  %i.aan = load float, ptr %i.aac, align 4, !tbaa !45
  %i.aao = getelementptr inbounds nuw i8, ptr %.1367549.us.i, i64 16
  store float %i.aan, ptr %i.aao, align 4, !tbaa !45
  %i.aap = getelementptr inbounds nuw [4 x i8], ptr %i.aac, i64 %i.dn
  %i.aaq = load float, ptr %i.aap, align 4, !tbaa !45
  %i.aar = getelementptr inbounds nuw i8, ptr %.1367549.us.i, i64 20
  store float %i.aaq, ptr %i.aar, align 4, !tbaa !45
  %i.aas = getelementptr inbounds nuw [4 x i8], ptr %i.aac, i64 %i.dp
  %i.aat = load float, ptr %i.aas, align 4, !tbaa !45
  %i.aau = getelementptr inbounds nuw i8, ptr %.1367549.us.i, i64 24
  store float %i.aat, ptr %i.aau, align 4, !tbaa !45
  %i.aav = getelementptr inbounds nuw [4 x i8], ptr %i.aac, i64 %i.dr
  %i.aaw = load float, ptr %i.aav, align 4, !tbaa !45
  %i.aax = getelementptr inbounds nuw i8, ptr %.1367549.us.i, i64 28
  store float %i.aaw, ptr %i.aax, align 4, !tbaa !45
  %i.aay = getelementptr inbounds nuw i8, ptr %.1367549.us.i, i64 32 ; 2 uses
  %indvars.iv.next745.i = add nuw nsw i64 %indvars.iv744.i, 1 ; 2 uses
  %exitcond748.not.i = icmp eq i64 %indvars.iv.next745.i, %wide.trip.count747.i
  br i1 %exitcond748.not.i, label %._crit_edge551.us.i, label %scalar.ph358, !llvm.loop !135

._crit_edge551.us.i:                              ; preds = %scalar.ph358, %middle.block375
  %.lcssa108 = phi ptr [ %i.zk, %middle.block375 ], [ %i.aay, %scalar.ph358 ] ; 2 uses
  %i.aaz = getelementptr inbounds nuw [4 x i8], ptr %.0375553.us.i, i64 %i.dt ; 2 uses
  %i.aba = getelementptr inbounds nuw [4 x i8], ptr %.0373554.us.i, i64 %i.dt ; 2 uses
  %i.abb = add nuw nsw i32 %.0363556.us.i, 4      ; 2 uses
  %i.abc = or disjoint i32 %i.abb, 3
  %i.abd = icmp slt i32 %i.abc, %i.n
  br i1 %i.abd, label %.preheader480.us.i, label %.preheader482.i, !llvm.loop !136

.preheader482.i:                                  ; preds = %._crit_edge551.us.i, %_ZN4ncnn3MatD2Ev.exit419.i
  %.0375.lcssa.i = phi ptr [ %i.yb, %_ZN4ncnn3MatD2Ev.exit419.i ], [ %i.aaz, %._crit_edge551.us.i ] ; 6 uses
end_hunk_1
