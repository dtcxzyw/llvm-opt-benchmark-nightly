Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/tile2_layer?download=true
inline.NumInlined: 413
inline.NumDeleted: 220
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN2cv29ParallelLoopBodyLambdaWrapperD2Ev:bb.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: nounwind
declare void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv29ParallelLoopBodyLambdaWrapperD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv29ParallelLoopBodyLambdaWrapperE, i64 16), ptr %0, align 8, !tbaa !11
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !73   ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN2cv29ParallelLoopBodyLambdaWrapperD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = invoke noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 3)
          to label %_ZN2cv29ParallelLoopBodyLambdaWrapperD2Ev.exit unwind label %bb.c, !inline_history !84 ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #21, !inline_history !84
  unreachable

_ZN2cv29ParallelLoopBodyLambdaWrapperD2Ev.exit:   ; preds = %bb.a, %bb.b
  tail call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %0) #18, !inline_history !84
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #19
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK2cv29ParallelLoopBodyLambdaWrapperclERKNS_5RangeE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !73
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %bb.b, label %_ZNKSt8functionIFvRKN2cv5RangeEEEclES3_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt25__throw_bad_function_callv() #20
  unreachable

_ZNKSt8functionIFvRKN2cv5RangeEEEclES3_.exit:     ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !82
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 4 dereferenceable(8) %1), !inline_history !121
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt25__throw_bad_function_callv() local_unnamed_addr #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @"_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnnL4tileERKNS0_3MatEPKiRS6_E3$_0E9_M_invokeERKSt9_Any_dataS3_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1) #13 align 2 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !80    ; 9 uses
  %.val2 = load i32, ptr %1, align 4, !tbaa !70
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.val3 = load i32, ptr %i.a, align 4, !tbaa !71
  %i.b = load ptr, ptr %.val, align 8, !tbaa !170, !nonnull !67, !align !171 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load i32, ptr %i.c, align 4, !tbaa !32   ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !172, !nonnull !67, !align !173
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load i64, ptr %i.g, align 8, !tbaa !65   ; 12 uses
  %i.i = sext i32 %.val2 to i64
  %i.j = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !174, !nonnull !67, !align !173
  %i.l = load i64, ptr %i.k, align 8, !tbaa !65   ; 2 uses
  %i.m = mul nsw i64 %i.l, %i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !175, !nonnull !67, !align !171
  %i.p = load i32, ptr %i.o, align 4, !tbaa !32
  %i.q = sext i32 %i.p to i64                     ; 2 uses
  %i.r = sdiv i64 %i.m, %i.q                      ; 2 uses
  %i.s = sext i32 %.val3 to i64
  %i.t = mul nsw i64 %i.l, %i.s
  %i.u = sdiv i64 %i.t, %i.q                      ; 2 uses
  %i.v = icmp slt i64 %i.r, %i.u
  br i1 %i.v, label %.preheader19.lr.ph.i.i.i, label %"_ZSt10__invoke_rIvRZN2cv3dnnL4tileERKNS0_3MatEPKiRS2_E3$_0JRKNS0_5RangeEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESE_E4typeEOSF_DpOSG_.exit"

.preheader19.lr.ph.i.i.i:                         ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.x = load i32, ptr %i.w, align 4, !tbaa !32   ; 9 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.z = load i32, ptr %i.y, align 4, !tbaa !32   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !32 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !32 ; 2 uses
  %i.ae = load i32, ptr %i.b, align 4, !tbaa !32  ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.ag = getelementptr inbounds nuw i8, ptr %.val, i64 40
  %i.ah = getelementptr inbounds nuw i8, ptr %.val, i64 48 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.val, i64 56
  %i.aj = icmp slt i32 %i.ae, 1
  %i.ak = icmp slt i32 %i.ad, 1
  %i.al = icmp slt i32 %i.ab, 1
  %i.am = icmp slt i32 %i.z, 1
  %i.an = icmp slt i32 %i.d, 1
  %i.ao = icmp slt i32 %i.x, 1
  %i.ap = sext i32 %i.x to i64                    ; 8 uses
  %brmerge303.i.i.i = select i1 %i.aj, i1 true, i1 %i.ak
  %wide.trip.count357.i.i.i = zext nneg i32 %i.ae to i64 ; 4 uses
  %wide.trip.count352.i.i.i = zext nneg i32 %i.ad to i64 ; 4 uses
  %wide.trip.count347.i.i.i = zext nneg i32 %i.ab to i64 ; 4 uses
  %wide.trip.count342.i.i.i = zext nneg i32 %i.z to i64 ; 4 uses
  %wide.trip.count.i.i.i = zext i32 %i.x to i64   ; 34 uses
  %brmerge485.i.i.i = select i1 %brmerge303.i.i.i, i1 true, i1 %i.al
  %brmerge487.i.i.i = select i1 %brmerge485.i.i.i, i1 true, i1 %i.am
  %brmerge489.i.i.i = select i1 %brmerge487.i.i.i, i1 true, i1 %i.an
  %brmerge491.i.i.i = select i1 %brmerge489.i.i.i, i1 true, i1 %i.ao ; 4 uses
  %i.aq = add i32 %i.d, -1
  %i.ar = zext i32 %i.aq to i64                   ; 2 uses
  %i.as = mul i64 %i.h, %i.ar
  %i.at = add i64 %i.as, %wide.trip.count.i.i.i
  %i.au = shl i64 %i.at, 3
  %i.av = mul nsw i64 %i.ap, %i.ar
  %i.aw = add i64 %i.av, %wide.trip.count.i.i.i
  %i.ax = shl i64 %i.aw, 3
  %i.ay = add i32 %i.d, -1                        ; 2 uses
  %i.az = zext i32 %i.ay to i64                   ; 2 uses
  %i.ba = mul i64 %i.h, %i.az
  %i.bb = mul nsw i64 %i.ap, %i.az
  %i.bc = zext i32 %i.ay to i64                   ; 2 uses
  %i.bd = mul i64 %i.h, %i.bc
  %i.be = add i64 %i.bd, %wide.trip.count.i.i.i
  %i.bf = mul nsw i64 %i.ap, %i.bc
  %i.bg = add i64 %i.bf, %wide.trip.count.i.i.i
  %i.bh = shl i64 %i.bg, 1
  %i.bi = add i32 %i.d, -1
  %i.bj = zext i32 %i.bi to i64                   ; 2 uses
  %i.bk = mul i64 %i.h, %i.bj
  %i.bl = add i64 %i.bk, %wide.trip.count.i.i.i
  %i.bm = mul nsw i64 %i.ap, %i.bj
  %i.bn = add i64 %i.bm, %wide.trip.count.i.i.i
  %i.bo = shl i64 %i.bn, 2
  %min.iters.check113 = icmp ult i32 %i.x, 8
  %.mask = and i64 %i.h, 2305843009213693952
  %stride.check111 = icmp ne i64 %.mask, 0
  %n.vec115 = and i64 %wide.trip.count.i.i.i, 2147483640 ; 3 uses
  %cmp.n122 = icmp eq i64 %n.vec115, %wide.trip.count.i.i.i
  %xtraiter = and i64 %wide.trip.count.i.i.i, 3   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %min.iters.check78 = icmp ult i32 %i.x, 4
  %.mask124 = and i64 %i.h, 4611686018427387904
  %stride.check76 = icmp ne i64 %.mask124, 0
  %min.iters.check80 = icmp ult i32 %i.x, 16
  %i.bp = and i64 %wide.trip.count.i.i.i, 12
  %n.vec82 = and i64 %wide.trip.count.i.i.i, 2147483632 ; 4 uses
  %cmp.n89 = icmp eq i64 %n.vec82, %wide.trip.count.i.i.i
  %min.epilog.iters.check94 = icmp eq i64 %i.bp, 0
  %n.vec96 = and i64 %wide.trip.count.i.i.i, 2147483644 ; 3 uses
  %cmp.n102 = icmp eq i64 %n.vec96, %wide.trip.count.i.i.i
  %xtraiter132.a = and i64 %wide.trip.count.i.i.i, 3 ; 2 uses
  %lcmp.mod133.not.a = icmp eq i64 %xtraiter132.a, 0
  %min.iters.check52 = icmp ult i32 %i.x, 4
  %stride.check50 = icmp slt i64 %i.h, 0
  %min.iters.check53 = icmp ult i32 %i.x, 32
  %i.bq = and i64 %wide.trip.count.i.i.i, 28
  %n.vec55 = and i64 %wide.trip.count.i.i.i, 2147483616 ; 4 uses
  %cmp.n62 = icmp eq i64 %n.vec55, %wide.trip.count.i.i.i
  %min.epilog.iters.check = icmp eq i64 %i.bq, 0
  %n.vec63 = and i64 %wide.trip.count.i.i.i, 2147483644 ; 3 uses
  %cmp.n67 = icmp eq i64 %n.vec63, %wide.trip.count.i.i.i
  %xtraiter135 = and i64 %wide.trip.count.i.i.i, 3 ; 2 uses
  %lcmp.mod136.not = icmp eq i64 %xtraiter135, 0
  %min.iters.check = icmp ult i32 %i.x, 6
  %.mask125 = and i64 %i.h, 1152921504606846976
  %stride.check = icmp ne i64 %.mask125, 0
  %n.vec = and i64 %wide.trip.count.i.i.i, 2147483644 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i
  %xtraiter138 = and i64 %wide.trip.count.i.i.i, 3 ; 2 uses
  %lcmp.mod139.not = icmp eq i64 %xtraiter138, 0
  br label %.preheader19.i.i.i

.preheader19.i.i.i:                               ; preds = %.loopexit.i.i.i, %.preheader19.lr.ph.i.i.i
  %.0193295.i.i.i = phi i64 [ %i.r, %.preheader19.lr.ph.i.i.i ], [ %i.mp, %.loopexit.i.i.i ] ; 3 uses
  %i.br = load ptr, ptr %i.af, align 8, !tbaa !176, !nonnull !67, !align !171 ; 6 uses
  %i.bs = load ptr, ptr %.val, align 8, !tbaa !170, !nonnull !67, !align !171 ; 6 uses
  %i.bt = load ptr, ptr %i.e, align 8, !tbaa !172, !nonnull !67, !align !173 ; 7 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 20
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !32
  %i.bw = sext i32 %i.bv to i64                   ; 3 uses
  %i.bx = sdiv i64 %.0193295.i.i.i, %i.bw         ; 3 uses
  %i.by = mul i64 %i.bx, %i.bw                    ; 0 uses
  %.recomposed = srem i64 %.0193295.i.i.i, %i.bw
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bs, i64 20
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !32
  %i.cb = sext i32 %i.ca to i64
  %i.cc = mul i64 %.recomposed, %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bt, i64 40
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !65
  %i.cf = mul i64 %i.cc, %i.ce                    ; 5 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !32
  %i.ci = sext i32 %i.ch to i64                   ; 3 uses
  %i.cj = sdiv i64 %i.bx, %i.ci                   ; 3 uses
  %i.ck = mul i64 %i.cj, %i.ci                    ; 0 uses
  %.recomposed144 = srem i64 %i.bx, %i.ci
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !32
  %i.cn = sext i32 %i.cm to i64
  %i.co = mul i64 %.recomposed144, %i.cn
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bt, i64 32
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !65
  %i.cr = mul i64 %i.co, %i.cq                    ; 5 uses
  %i.cs = add nsw i64 %i.cr, %i.cf
  %i.ct = getelementptr inbounds nuw i8, ptr %i.br, i64 12
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !32
  %i.cv = sext i32 %i.cu to i64                   ; 3 uses
  %i.cw = sdiv i64 %i.cj, %i.cv                   ; 3 uses
  %i.cx = mul i64 %i.cw, %i.cv                    ; 0 uses
  %.recomposed145 = srem i64 %i.cj, %i.cv
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bs, i64 12
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !32
  %i.da = sext i32 %i.cz to i64
  %i.db = mul i64 %.recomposed145, %i.da
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bt, i64 24 ; 2 uses
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !65 ; 5 uses
  %i.de = mul i64 %i.db, %i.dd                    ; 5 uses
  %i.df = add nsw i64 %i.cs, %i.de
  %i.dg = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !32
  %i.di = sext i32 %i.dh to i64                   ; 3 uses
  %i.dj = sdiv i64 %i.cw, %i.di                   ; 3 uses
  %i.dk = mul i64 %i.dj, %i.di                    ; 0 uses
  %.recomposed146 = srem i64 %i.cw, %i.di
  %i.dl = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !32
  %i.dn = sext i32 %i.dm to i64
  %i.do = mul i64 %.recomposed146, %i.dn
  %i.dp = getelementptr inbounds nuw i8, ptr %i.bt, i64 16 ; 2 uses
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !65 ; 5 uses
  %i.dr = mul i64 %i.do, %i.dq                    ; 5 uses
  %i.ds = add nsw i64 %i.df, %i.dr
  %i.dt = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !32
  %i.dv = sext i32 %i.du to i64                   ; 2 uses
  %i.dw = sdiv i64 %i.dj, %i.dv
  %.fr.i.i.i = freeze i64 %i.dw                   ; 2 uses
  %i.dx = mul i64 %.fr.i.i.i, %i.dv
  %i.dy = sub i64 %i.dj, %i.dx
  %i.dz = getelementptr inbounds nuw i8, ptr %i.bs, i64 4
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !32
  %i.eb = sext i32 %i.ea to i64
  %i.ec = getelementptr inbounds nuw i8, ptr %i.bt, i64 8 ; 2 uses
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !65 ; 5 uses
  %i.ee = mul i64 %i.ed, %i.eb
  %i.ef = mul i64 %i.ee, %i.dy                    ; 5 uses
  %i.eg = add nsw i64 %i.ds, %i.ef
  %i.eh = load i32, ptr %i.br, align 4, !tbaa !32
  %i.ei = sext i32 %i.eh to i64
  %i.ej = srem i64 %.fr.i.i.i, %i.ei
  %i.ek = load i32, ptr %i.bs, align 4, !tbaa !32
  %i.el = sext i32 %i.ek to i64
  %i.em = mul i64 %i.ej, %i.el
  %i.en = load i64, ptr %i.bt, align 8, !tbaa !65 ; 5 uses
  %i.eo = mul i64 %i.em, %i.en                    ; 5 uses
  %i.ep = add nsw i64 %i.eg, %i.eo                ; 4 uses
  %i.eq = load ptr, ptr %i.ag, align 8, !tbaa !177, !nonnull !67, !align !173
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !65
  %i.es = load ptr, ptr %i.ai, align 8, !tbaa !178, !nonnull !67, !align !173
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !68 ; 12 uses
  switch i64 %i.er, label %bb.e [
    i64 1, label %bb.b
    i64 2, label %bb.c
    i64 4, label %bb.d
  ]

bb.b:                                             ; preds = %.preheader19.i.i.i
  %i.eu = getelementptr inbounds i8, ptr %i.et, i64 %i.ep
  br i1 %brmerge491.i.i.i, label %.loopexit.i.i.i, label %.preheader13.us.us.i.preheader.i.i

.preheader13.us.us.i.preheader.i.i:               ; preds = %bb.b
  %i.ev = load ptr, ptr %i.ah, align 8, !tbaa !179, !nonnull !67, !align !173
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !68
  %2 = add i64 %i.eo, %i.ef
  %3 = add i64 %2, %i.dr
  %4 = add i64 %3, %i.de
  %5 = add i64 %4, %i.cr
  %6 = add i64 %5, %i.cf                          ; 2 uses
  %scevgep41.a = getelementptr i8, ptr %i.et, i64 %6
  %i.ex = getelementptr i8, ptr %i.et, i64 %i.ba
  %scevgep43 = getelementptr i8, ptr %i.ex, i64 %wide.trip.count.i.i.i
  %scevgep44 = getelementptr i8, ptr %scevgep43, i64 %6
  br label %.preheader13.us.us.i.i.i

.preheader13.us.us.i.i.i:                         ; preds = %._crit_edge.split213.us.split.us.us.us.i.loopexit.i.i, %.preheader13.us.us.i.preheader.i.i
  %indvars.iv410.i.i.i = phi i64 [ %indvars.iv.next411.i.i.i, %._crit_edge.split213.us.split.us.us.us.i.loopexit.i.i ], [ 0, %.preheader13.us.us.i.preheader.i.i ] ; 2 uses
  %.0185218.us.us.i.i.i = phi ptr [ %i.gr, %._crit_edge.split213.us.split.us.us.us.i.loopexit.i.i ], [ %i.ew, %.preheader13.us.us.i.preheader.i.i ]
  br label %.preheader9.us.us.us.us.us.us.i.i.i

.preheader9.us.us.us.us.us.us.i.i.i:              ; preds = %._crit_edge183.split.us.split.us.split.us.us.us.us.us.us.us.i.i.i, %.preheader13.us.us.i.i.i
  %indvars.iv405.i.i.i = phi i64 [ %indvars.iv.next406.i.i.i, %._crit_edge183.split.us.split.us.split.us.us.us.us.us.us.us.i.i.i ], [ 0, %.preheader13.us.us.i.i.i ] ; 2 uses
  %.1186196.us.us.us.us.us.us.i.i.i = phi ptr [ %i.gr, %._crit_edge183.split.us.split.us.split.us.us.us.us.us.us.us.i.i.i ], [ %.0185218.us.us.i.i.i, %.preheader13.us.us.i.i.i ]
  br label %.preheader5.us.us.us.us.us.us.us.us.us.i.i.i

.preheader5.us.us.us.us.us.us.us.us.us.i.i.i:     ; preds = %._crit_edge.split179.us.split.us.us.us.us.us.us.us.us.us.us.i.i.i, %.preheader9.us.us.us.us.us.us.i.i.i
  %indvars.iv400.i.i.i = phi i64 [ %indvars.iv.next401.i.i.i, %._crit_edge.split179.us.split.us.us.us.us.us.us.us.us.us.us.i.i.i ], [ 0, %.preheader9.us.us.us.us.us.us.i.i.i ] ; 2 uses
  %.2187181.us.us.us.us.us.us.us.us.us.i.i.i = phi ptr [ %i.gr, %._crit_edge.split179.us.split.us.us.us.us.us.us.us.us.us.us.i.i.i ], [ %.1186196.us.us.us.us.us.us.i.i.i, %.preheader9.us.us.us.us.us.us.i.i.i ]
  br label %.preheader1.lr.ph.us.us.us.us.us.us.us.us.us.us.us.i.i.i

.preheader1.lr.ph.us.us.us.us.us.us.us.us.us.us.us.i.i.i: ; preds = %._crit_edge167.split.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i, %.preheader5.us.us.us.us.us.us.us.us.us.i.i.i
  %indvars.iv395.i.i.i = phi i64 [ %indvars.iv.next396.i.i.i, %._crit_edge167.split.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i ], [ 0, %.preheader5.us.us.us.us.us.us.us.us.us.i.i.i ] ; 2 uses
  %.3188168.us.us.us.us.us.us.us.us.us.us.us.i.i.i = phi ptr [ %i.gr, %._crit_edge167.split.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i ], [ %.2187181.us.us.us.us.us.us.us.us.us.i.i.i, %.preheader5.us.us.us.us.us.us.us.us.us.i.i.i ] ; 3 uses
  %i.ey = load ptr, ptr %i.e, align 8, !tbaa !172, !nonnull !67, !align !173 ; 4 uses
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !65
  %i.fa = mul i64 %i.ez, %indvars.iv410.i.i.i     ; 2 uses
  %i.fb = getelementptr inbounds i8, ptr %i.eu, i64 %i.fa
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !65
  %i.fe = mul i64 %i.fd, %indvars.iv405.i.i.i     ; 2 uses
  %i.ff = getelementptr inbounds i8, ptr %i.fb, i64 %i.fe
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !65
  %i.fi = mul i64 %i.fh, %indvars.iv400.i.i.i     ; 2 uses
  %i.fj = getelementptr inbounds i8, ptr %i.ff, i64 %i.fi
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ey, i64 24
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !65
  %i.fm = mul i64 %i.fl, %indvars.iv395.i.i.i     ; 2 uses
  %i.fn = getelementptr inbounds i8, ptr %i.fj, i64 %i.fm
  %7 = add i64 %i.fa, %i.fe
  %8 = add i64 %7, %i.fi
  %9 = add i64 %8, %i.fm                          ; 2 uses
  %scevgep42.a = getelementptr i8, ptr %scevgep41.a, i64 %9
  %scevgep45 = getelementptr i8, ptr %scevgep44, i64 %9
  %i.fo = getelementptr i8, ptr %.3188168.us.us.us.us.us.us.us.us.us.us.us.i.i.i, i64 %i.bb
  %scevgep46 = getelementptr i8, ptr %i.fo, i64 %wide.trip.count.i.i.i
  %bound047 = icmp ult ptr %scevgep42.a, %scevgep46
  %bound148 = icmp ult ptr %.3188168.us.us.us.us.us.us.us.us.us.us.us.i.i.i, %scevgep45
  %found.conflict49 = and i1 %bound047, %bound148
  %i.fp = or i1 %found.conflict49, %stride.check50
  br label %iter.check

iter.check:                                       ; preds = %._crit_edge.us.us.us.us.us.us.us.us.us.us.us.us236.i.i.i, %.preheader1.lr.ph.us.us.us.us.us.us.us.us.us.us.us.i.i.i
  %.0179166.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i = phi i32 [ 0, %.preheader1.lr.ph.us.us.us.us.us.us.us.us.us.us.us.i.i.i ], [ %i.gp, %._crit_edge.us.us.us.us.us.us.us.us.us.us.us.us236.i.i.i ]
  %.0180165.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i = phi ptr [ %i.fn, %.preheader1.lr.ph.us.us.us.us.us.us.us.us.us.us.us.i.i.i ], [ %i.gq, %._crit_edge.us.us.us.us.us.us.us.us.us.us.us.us236.i.i.i ] ; 8 uses
  %.4189164.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i = phi ptr [ %.3188168.us.us.us.us.us.us.us.us.us.us.us.i.i.i, %.preheader1.lr.ph.us.us.us.us.us.us.us.us.us.us.us.i.i.i ], [ %i.gr, %._crit_edge.us.us.us.us.us.us.us.us.us.us.us.us236.i.i.i ] ; 8 uses
  %brmerge = select i1 %min.iters.check52, i1 true, i1 %i.fp
  br i1 %brmerge, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check53, label %vec.epilog.ph, label %vector.body56

vector.body56:                                    ; preds = %vector.main.loop.iter.check, %vector.body56
  %index57 = phi i64 [ %index.next60, %vector.body56 ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %.4189164.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i, i64 %index57 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 16
  %wide.load58 = load <16 x i8>, ptr %i.fq, align 1, !tbaa !22, !alias.scope !180
  %wide.load59 = load <16 x i8>, ptr %i.fr, align 1, !tbaa !22, !alias.scope !180
  %i.fs = getelementptr inbounds nuw i8, ptr %.0180165.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i, i64 %index57 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 16
  store <16 x i8> %wide.load58, ptr %i.fs, align 1, !tbaa !22, !alias.scope !181, !noalias !180
  store <16 x i8> %wide.load59, ptr %i.ft, align 1, !tbaa !22, !alias.scope !181, !noalias !180
  %index.next60 = add nuw i64 %index57, 32        ; 2 uses
  %i.fu = icmp eq i64 %index.next60, %n.vec55
  br i1 %i.fu, label %middle.block61, label %vector.body56, !llvm.loop !125

middle.block61:                                   ; preds = %vector.body56
  br i1 %cmp.n62, label %._crit_edge.us.us.us.us.us.us.us.us.us.us.us.us236.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block61
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !182

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec55, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index64 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next66, %vec.epilog.vector.body ] ; 3 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %.4189164.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i, i64 %index64
  %wide.load65 = load <4 x i8>, ptr %i.fv, align 1, !tbaa !22, !alias.scope !180
  %i.fw = getelementptr inbounds nuw i8, ptr %.0180165.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i, i64 %index64
  store <4 x i8> %wide.load65, ptr %i.fw, align 1, !tbaa !22, !alias.scope !181, !noalias !180
  %index.next66 = add nuw i64 %index64, 4         ; 2 uses
  %i.fx = icmp eq i64 %index.next66, %n.vec63
  br i1 %i.fx, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !126

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n67, label %._crit_edge.us.us.us.us.us.us.us.us.us.us.us.us236.i.i.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv389.i.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec63, %vec.epilog.middle.block ], [ %n.vec55, %vec.epilog.iter.check ] ; 3 uses
  br i1 %lcmp.mod136.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv389.i.i.i.prol = phi i64 [ %indvars.iv.next390.i.i.i.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv389.i.i.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter137 = phi i64 [ %prol.iter137.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.fy = getelementptr inbounds nuw i8, ptr %.4189164.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i, i64 %indvars.iv389.i.i.i.prol
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !22
  %i.ga = getelementptr inbounds nuw i8, ptr %.0180165.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i, i64 %indvars.iv389.i.i.i.prol
  store i8 %i.fz, ptr %i.ga, align 1, !tbaa !22
  %indvars.iv.next390.i.i.i.prol = add nuw nsw i64 %indvars.iv389.i.i.i.prol, 1 ; 2 uses
  %prol.iter137.next = add i64 %prol.iter137, 1   ; 2 uses
  %prol.iter137.cmp.not = icmp eq i64 %prol.iter137.next, %xtraiter135
  br i1 %prol.iter137.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !127

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv389.i.i.i.unr = phi i64 [ %indvars.iv389.i.i.i.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next390.i.i.i.prol, %vec.epilog.scalar.ph.prol ]
  %i.gb = sub nsw i64 %indvars.iv389.i.i.i.ph, %wide.trip.count.i.i.i
  %i.gc = icmp ugt i64 %i.gb, -4
  br i1 %i.gc, label %._crit_edge.us.us.us.us.us.us.us.us.us.us.us.us236.i.i.i, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv389.i.i.i = phi i64 [ %indvars.iv.next390.i.i.i.3, %vec.epilog.scalar.ph ], [ %indvars.iv389.i.i.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %.4189164.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i, i64 %indvars.iv389.i.i.i
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !22
  %i.gf = getelementptr inbounds nuw i8, ptr %.0180165.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i, i64 %indvars.iv389.i.i.i
  store i8 %i.ge, ptr %i.gf, align 1, !tbaa !22
  %indvars.iv.next390.i.i.i = add nuw nsw i64 %indvars.iv389.i.i.i, 1 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %.4189164.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i, i64 %indvars.iv.next390.i.i.i
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !22
  %i.gi = getelementptr inbounds nuw i8, ptr %.0180165.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i, i64 %indvars.iv.next390.i.i.i
  store i8 %i.gh, ptr %i.gi, align 1, !tbaa !22
  %indvars.iv.next390.i.i.i.1 = add nuw nsw i64 %indvars.iv389.i.i.i, 2 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %.4189164.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i, i64 %indvars.iv.next390.i.i.i.1
  %i.gk = load i8, ptr %i.gj, align 1, !tbaa !22
  %i.gl = getelementptr inbounds nuw i8, ptr %.0180165.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i, i64 %indvars.iv.next390.i.i.i.1
  store i8 %i.gk, ptr %i.gl, align 1, !tbaa !22
  %indvars.iv.next390.i.i.i.2 = add nuw nsw i64 %indvars.iv389.i.i.i, 3 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %.4189164.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i, i64 %indvars.iv.next390.i.i.i.2
  %i.gn = load i8, ptr %i.gm, align 1, !tbaa !22
  %i.go = getelementptr inbounds nuw i8, ptr %.0180165.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i, i64 %indvars.iv.next390.i.i.i.2
  store i8 %i.gn, ptr %i.go, align 1, !tbaa !22
  %indvars.iv.next390.i.i.i.3 = add nuw nsw i64 %indvars.iv389.i.i.i, 4 ; 2 uses
  %exitcond393.not.i.i.i.3 = icmp eq i64 %indvars.iv.next390.i.i.i.3, %wide.trip.count.i.i.i
  br i1 %exitcond393.not.i.i.i.3, label %._crit_edge.us.us.us.us.us.us.us.us.us.us.us.us236.i.i.i, label %vec.epilog.scalar.ph, !llvm.loop !128

._crit_edge.us.us.us.us.us.us.us.us.us.us.us.us236.i.i.i: ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block61
  %i.gp = add nuw nsw i32 %.0179166.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i, 1 ; 2 uses
  %i.gq = getelementptr inbounds i8, ptr %.0180165.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i, i64 %i.h
  %i.gr = getelementptr inbounds nuw i8, ptr %.4189164.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i, i64 %i.ap ; 5 uses
  %exitcond394.not.i.i.i = icmp eq i32 %i.gp, %i.d
  br i1 %exitcond394.not.i.i.i, label %._crit_edge167.split.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i, label %iter.check, !llvm.loop !129

._crit_edge167.split.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i: ; preds = %._crit_edge.us.us.us.us.us.us.us.us.us.us.us.us236.i.i.i
  %indvars.iv.next396.i.i.i = add nuw nsw i64 %indvars.iv395.i.i.i, 1 ; 2 uses
  %exitcond399.not.i.i.i = icmp eq i64 %indvars.iv.next396.i.i.i, %wide.trip.count342.i.i.i
  br i1 %exitcond399.not.i.i.i, label %._crit_edge.split179.us.split.us.us.us.us.us.us.us.us.us.us.i.i.i, label %.preheader1.lr.ph.us.us.us.us.us.us.us.us.us.us.us.i.i.i, !llvm.loop !130

._crit_edge.split179.us.split.us.us.us.us.us.us.us.us.us.us.i.i.i: ; preds = %._crit_edge167.split.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i
  %indvars.iv.next401.i.i.i = add nuw nsw i64 %indvars.iv400.i.i.i, 1 ; 2 uses
  %exitcond404.not.i.i.i = icmp eq i64 %indvars.iv.next401.i.i.i, %wide.trip.count347.i.i.i
  br i1 %exitcond404.not.i.i.i, label %._crit_edge183.split.us.split.us.split.us.us.us.us.us.us.us.i.i.i, label %.preheader5.us.us.us.us.us.us.us.us.us.i.i.i, !llvm.loop !131

._crit_edge183.split.us.split.us.split.us.us.us.us.us.us.us.i.i.i: ; preds = %._crit_edge.split179.us.split.us.us.us.us.us.us.us.us.us.us.i.i.i
  %indvars.iv.next406.i.i.i = add nuw nsw i64 %indvars.iv405.i.i.i, 1 ; 2 uses
  %exitcond409.not.i.i.i = icmp eq i64 %indvars.iv.next406.i.i.i, %wide.trip.count352.i.i.i
  br i1 %exitcond409.not.i.i.i, label %._crit_edge.split213.us.split.us.us.us.i.loopexit.i.i, label %.preheader9.us.us.us.us.us.us.i.i.i, !llvm.loop !132

._crit_edge.split213.us.split.us.us.us.i.loopexit.i.i: ; preds = %._crit_edge183.split.us.split.us.split.us.us.us.us.us.us.us.i.i.i
  %indvars.iv.next411.i.i.i = add nuw nsw i64 %indvars.iv410.i.i.i, 1 ; 2 uses
  %exitcond414.not.i.i.i = icmp eq i64 %indvars.iv.next411.i.i.i, %wide.trip.count357.i.i.i
  br i1 %exitcond414.not.i.i.i, label %.loopexit.i.i.i, label %.preheader13.us.us.i.i.i, !llvm.loop !133

bb.c:                                             ; preds = %.preheader19.i.i.i
  %i.gs = getelementptr inbounds [2 x i8], ptr %i.et, i64 %i.ep
  br i1 %brmerge491.i.i.i, label %.loopexit.i.i.i, label %.preheader14.us.us.i.preheader.i.i

.preheader14.us.us.i.preheader.i.i:               ; preds = %bb.c
  %i.gt = load ptr, ptr %i.ah, align 8, !tbaa !179, !nonnull !67, !align !173
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !68
  %10 = add i64 %i.eo, %i.cr
  %11 = add i64 %10, %i.de
  %12 = add i64 %11, %i.dr
  %13 = add i64 %12, %i.ef
  %i.gv = add i64 %13, %i.cf                      ; 2 uses
  %i.gw = shl i64 %i.gv, 1
  %i.gx = shl i64 %i.en, 1
  %i.gy = shl i64 %i.ed, 1
  %i.gz = shl i64 %i.dq, 1
  %i.ha = shl i64 %i.dd, 1
  %14 = add i64 %i.be, %i.gv
  %15 = shl i64 %14, 1
  %16 = getelementptr i8, ptr %i.et, i64 %i.gw
  %i.hb = getelementptr i8, ptr %i.et, i64 %15
  br label %.preheader14.us.us.i.i.i

.preheader14.us.us.i.i.i:                         ; preds = %._crit_edge.split139.us.split.us.us.us.i.loopexit.i.i, %.preheader14.us.us.i.preheader.i.i
  %indvars.iv382.i.i.i = phi i64 [ %indvars.iv.next383.i.i.i, %._crit_edge.split139.us.split.us.us.us.i.loopexit.i.i ], [ 0, %.preheader14.us.us.i.preheader.i.i ] ; 3 uses
  %.0173144.us.us.i.i.i = phi ptr [ %i.it, %._crit_edge.split139.us.split.us.us.us.i.loopexit.i.i ], [ %i.gu, %.preheader14.us.us.i.preheader.i.i ]
  %i.hc = mul i64 %i.gx, %indvars.iv382.i.i.i     ; 2 uses
  %i.hd = mul nsw i64 %indvars.iv382.i.i.i, %i.en
  %i.he = getelementptr inbounds [2 x i8], ptr %i.gs, i64 %i.hd
  %17 = getelementptr i8, ptr %16, i64 %i.hc
  %i.hf = getelementptr i8, ptr %i.hb, i64 %i.hc
  br label %.preheader10.us.us.us.us.us.us.i.i.i

.preheader10.us.us.us.us.us.us.i.i.i:             ; preds = %._crit_edge110.split.us.split.us.split.us.us.us.us.us.us.us.i.i.i, %.preheader14.us.us.i.i.i
  %indvars.iv377.i.i.i = phi i64 [ %indvars.iv.next378.i.i.i, %._crit_edge110.split.us.split.us.split.us.us.us.us.us.us.us.i.i.i ], [ 0, %.preheader14.us.us.i.i.i ] ; 3 uses
  %.1174122.us.us.us.us.us.us.i.i.i = phi ptr [ %i.it, %._crit_edge110.split.us.split.us.split.us.us.us.us.us.us.us.i.i.i ], [ %.0173144.us.us.i.i.i, %.preheader14.us.us.i.i.i ]
  %i.hg = mul i64 %i.gy, %indvars.iv377.i.i.i     ; 2 uses
  %i.hh = mul nsw i64 %indvars.iv377.i.i.i, %i.ed
  %i.hi = getelementptr inbounds [2 x i8], ptr %i.he, i64 %i.hh
  %18 = getelementptr i8, ptr %17, i64 %i.hg
  %i.hj = getelementptr i8, ptr %i.hf, i64 %i.hg
  br label %.preheader6.us.us.us.us.us.us.us.us.us.i.i.i

.preheader6.us.us.us.us.us.us.us.us.us.i.i.i:     ; preds = %._crit_edge.split106.us.split.us.us.us.us.us.us.us.us.us.us.i.i.i, %.preheader10.us.us.us.us.us.us.i.i.i
  %indvars.iv372.i.i.i = phi i64 [ %indvars.iv.next373.i.i.i, %._crit_edge.split106.us.split.us.us.us.us.us.us.us.us.us.us.i.i.i ], [ 0, %.preheader10.us.us.us.us.us.us.i.i.i ] ; 3 uses
  %.2175108.us.us.us.us.us.us.us.us.us.i.i.i = phi ptr [ %i.it, %._crit_edge.split106.us.split.us.us.us.us.us.us.us.us.us.us.i.i.i ], [ %.1174122.us.us.us.us.us.us.i.i.i, %.preheader10.us.us.us.us.us.us.i.i.i ]
  %i.hk = mul i64 %i.gz, %indvars.iv372.i.i.i     ; 2 uses
  %i.hl = mul nsw i64 %indvars.iv372.i.i.i, %i.dq
  %i.hm = getelementptr inbounds [2 x i8], ptr %i.hi, i64 %i.hl
  %19 = getelementptr i8, ptr %18, i64 %i.hk
  %i.hn = getelementptr i8, ptr %i.hj, i64 %i.hk
  br label %.preheader2.lr.ph.us.us.us.us.us.us.us.us.us.us.us.i.i.i

.preheader2.lr.ph.us.us.us.us.us.us.us.us.us.us.us.i.i.i: ; preds = %._crit_edge94.split.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i, %.preheader6.us.us.us.us.us.us.us.us.us.i.i.i
  %indvars.iv367.i.i.i = phi i64 [ %indvars.iv.next368.i.i.i, %._crit_edge94.split.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i ], [ 0, %.preheader6.us.us.us.us.us.us.us.us.us.i.i.i ] ; 3 uses
  %.317695.us.us.us.us.us.us.us.us.us.us.us.i.i.i = phi ptr [ %i.it, %._crit_edge94.split.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i ], [ %.2175108.us.us.us.us.us.us.us.us.us.i.i.i, %.preheader6.us.us.us.us.us.us.us.us.us.i.i.i ] ; 3 uses
  %i.ho = mul i64 %i.ha, %indvars.iv367.i.i.i     ; 2 uses
  %scevgep70 = getelementptr i8, ptr %19, i64 %i.ho
  %scevgep71 = getelementptr i8, ptr %i.hn, i64 %i.ho
  %i.hp = mul nsw i64 %indvars.iv367.i.i.i, %i.dd
  %i.hq = getelementptr inbounds [2 x i8], ptr %i.hm, i64 %i.hp
  %scevgep72 = getelementptr i8, ptr %.317695.us.us.us.us.us.us.us.us.us.us.us.i.i.i, i64 %i.bh
  %bound073 = icmp ult ptr %scevgep70, %scevgep72
  %bound174 = icmp ult ptr %.317695.us.us.us.us.us.us.us.us.us.us.us.i.i.i, %scevgep71
  %found.conflict75 = and i1 %bound073, %bound174
  %i.hr = or i1 %found.conflict75, %stride.check76
  br label %iter.check91

iter.check91:                                     ; preds = %._crit_edge.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i, %.preheader2.lr.ph.us.us.us.us.us.us.us.us.us.us.us.i.i.i
  %.016793.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i = phi i32 [ 0, %.preheader2.lr.ph.us.us.us.us.us.us.us.us.us.us.us.i.i.i ], [ %i.ir, %._crit_edge.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i ]
  %.016892.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i = phi ptr [ %i.hq, %.preheader2.lr.ph.us.us.us.us.us.us.us.us.us.us.us.i.i.i ], [ %i.is, %._crit_edge.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i ] ; 8 uses
  %.417791.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i = phi ptr [ %.317695.us.us.us.us.us.us.us.us.us.us.us.i.i.i, %.preheader2.lr.ph.us.us.us.us.us.us.us.us.us.us.us.i.i.i ], [ %i.it, %._crit_edge.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i ] ; 8 uses
  %brmerge147 = select i1 %min.iters.check78, i1 true, i1 %i.hr
  br i1 %brmerge147, label %vec.epilog.scalar.ph92.preheader, label %vector.main.loop.iter.check79

vector.main.loop.iter.check79:                    ; preds = %iter.check91
  br i1 %min.iters.check80, label %vec.epilog.ph95, label %vector.body83

vector.body83:                                    ; preds = %vector.main.loop.iter.check79, %vector.body83
  %index84 = phi i64 [ %index.next87, %vector.body83 ], [ 0, %vector.main.loop.iter.check79 ] ; 3 uses
  %i.hs = getelementptr inbounds nuw [2 x i8], ptr %.417791.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i, i64 %index84 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 16
  %wide.load85 = load <8 x i16>, ptr %i.hs, align 2, !tbaa !185, !alias.scope !186
  %wide.load86 = load <8 x i16>, ptr %i.ht, align 2, !tbaa !185, !alias.scope !186
  %i.hu = getelementptr inbounds nuw [2 x i8], ptr %.016892.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i, i64 %index84 ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 16
  store <8 x i16> %wide.load85, ptr %i.hu, align 2, !tbaa !185, !alias.scope !187, !noalias !186
  store <8 x i16> %wide.load86, ptr %i.hv, align 2, !tbaa !185, !alias.scope !187, !noalias !186
  %index.next87 = add nuw i64 %index84, 16        ; 2 uses
  %i.hw = icmp eq i64 %index.next87, %n.vec82
  br i1 %i.hw, label %middle.block88, label %vector.body83, !llvm.loop !137

middle.block88:                                   ; preds = %vector.body83
  br i1 %cmp.n89, label %._crit_edge.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i, label %vec.epilog.iter.check93

vec.epilog.iter.check93:                          ; preds = %middle.block88
  br i1 %min.epilog.iters.check94, label %vec.epilog.scalar.ph92.preheader, label %vec.epilog.ph95, !prof !188

vec.epilog.ph95:                                  ; preds = %vector.main.loop.iter.check79, %vec.epilog.iter.check93
  %vec.epilog.resume.val90 = phi i64 [ %n.vec82, %vec.epilog.iter.check93 ], [ 0, %vector.main.loop.iter.check79 ]
  br label %vec.epilog.vector.body97

vec.epilog.vector.body97:                         ; preds = %vec.epilog.vector.body97, %vec.epilog.ph95
  %index98 = phi i64 [ %vec.epilog.resume.val90, %vec.epilog.ph95 ], [ %index.next100, %vec.epilog.vector.body97 ] ; 3 uses
  %i.hx = getelementptr inbounds nuw [2 x i8], ptr %.417791.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i, i64 %index98
  %wide.load99 = load <4 x i16>, ptr %i.hx, align 2, !tbaa !185, !alias.scope !186
  %i.hy = getelementptr inbounds nuw [2 x i8], ptr %.016892.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i, i64 %index98
  store <4 x i16> %wide.load99, ptr %i.hy, align 2, !tbaa !185, !alias.scope !187, !noalias !186
  %index.next100 = add nuw i64 %index98, 4        ; 2 uses
  %i.hz = icmp eq i64 %index.next100, %n.vec96
  br i1 %i.hz, label %vec.epilog.middle.block101, label %vec.epilog.vector.body97, !llvm.loop !138

vec.epilog.middle.block101:                       ; preds = %vec.epilog.vector.body97
  br i1 %cmp.n102, label %._crit_edge.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i, label %vec.epilog.scalar.ph92.preheader

vec.epilog.scalar.ph92.preheader:                 ; preds = %iter.check91, %vec.epilog.iter.check93, %vec.epilog.middle.block101
  %indvars.iv361.i.i.i.ph = phi i64 [ 0, %iter.check91 ], [ %n.vec96, %vec.epilog.middle.block101 ], [ %n.vec82, %vec.epilog.iter.check93 ] ; 3 uses
  br i1 %lcmp.mod133.not.a, label %vec.epilog.scalar.ph92.prol.loopexit, label %vec.epilog.scalar.ph92.prol

vec.epilog.scalar.ph92.prol:                      ; preds = %vec.epilog.scalar.ph92.preheader, %vec.epilog.scalar.ph92.prol
  %indvars.iv361.i.i.i.prol = phi i64 [ %indvars.iv.next362.i.i.i.prol, %vec.epilog.scalar.ph92.prol ], [ %indvars.iv361.i.i.i.ph, %vec.epilog.scalar.ph92.preheader ] ; 3 uses
  %prol.iter134.a = phi i64 [ %prol.iter134.next.a, %vec.epilog.scalar.ph92.prol ], [ 0, %vec.epilog.scalar.ph92.preheader ]
  %i.ia = getelementptr inbounds nuw [2 x i8], ptr %.417791.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i, i64 %indvars.iv361.i.i.i.prol
  %i.ib = load i16, ptr %i.ia, align 2, !tbaa !185
  %i.ic = getelementptr inbounds nuw [2 x i8], ptr %.016892.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i, i64 %indvars.iv361.i.i.i.prol
  store i16 %i.ib, ptr %i.ic, align 2, !tbaa !185
  %indvars.iv.next362.i.i.i.prol = add nuw nsw i64 %indvars.iv361.i.i.i.prol, 1 ; 2 uses
  %prol.iter134.next.a = add i64 %prol.iter134.a, 1 ; 2 uses
  %prol.iter134.cmp.not.a = icmp eq i64 %prol.iter134.next.a, %xtraiter132.a
  br i1 %prol.iter134.cmp.not.a, label %vec.epilog.scalar.ph92.prol.loopexit, label %vec.epilog.scalar.ph92.prol, !llvm.loop !139

vec.epilog.scalar.ph92.prol.loopexit:             ; preds = %vec.epilog.scalar.ph92.prol, %vec.epilog.scalar.ph92.preheader
  %indvars.iv361.i.i.i.unr = phi i64 [ %indvars.iv361.i.i.i.ph, %vec.epilog.scalar.ph92.preheader ], [ %indvars.iv.next362.i.i.i.prol, %vec.epilog.scalar.ph92.prol ]
  %i.id = sub nsw i64 %indvars.iv361.i.i.i.ph, %wide.trip.count.i.i.i
  %i.ie = icmp ugt i64 %i.id, -4
  br i1 %i.ie, label %._crit_edge.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i, label %vec.epilog.scalar.ph92

vec.epilog.scalar.ph92:                           ; preds = %vec.epilog.scalar.ph92.prol.loopexit, %vec.epilog.scalar.ph92
  %indvars.iv361.i.i.i = phi i64 [ %indvars.iv.next362.i.i.i.3, %vec.epilog.scalar.ph92 ], [ %indvars.iv361.i.i.i.unr, %vec.epilog.scalar.ph92.prol.loopexit ] ; 6 uses
  %i.if = getelementptr inbounds nuw [2 x i8], ptr %.417791.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i, i64 %indvars.iv361.i.i.i
  %i.ig = load i16, ptr %i.if, align 2, !tbaa !185
  %i.ih = getelementptr inbounds nuw [2 x i8], ptr %.016892.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i, i64 %indvars.iv361.i.i.i
  store i16 %i.ig, ptr %i.ih, align 2, !tbaa !185
  %indvars.iv.next362.i.i.i = add nuw nsw i64 %indvars.iv361.i.i.i, 1 ; 2 uses
  %i.ii = getelementptr inbounds nuw [2 x i8], ptr %.417791.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i, i64 %indvars.iv.next362.i.i.i
  %i.ij = load i16, ptr %i.ii, align 2, !tbaa !185
  %i.ik = getelementptr inbounds nuw [2 x i8], ptr %.016892.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i, i64 %indvars.iv.next362.i.i.i
  store i16 %i.ij, ptr %i.ik, align 2, !tbaa !185
  %indvars.iv.next362.i.i.i.1 = add nuw nsw i64 %indvars.iv361.i.i.i, 2 ; 2 uses
  %i.il = getelementptr inbounds nuw [2 x i8], ptr %.417791.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i, i64 %indvars.iv.next362.i.i.i.1
  %i.im = load i16, ptr %i.il, align 2, !tbaa !185
  %i.in = getelementptr inbounds nuw [2 x i8], ptr %.016892.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i, i64 %indvars.iv.next362.i.i.i.1
  store i16 %i.im, ptr %i.in, align 2, !tbaa !185
  %indvars.iv.next362.i.i.i.2 = add nuw nsw i64 %indvars.iv361.i.i.i, 3 ; 2 uses
  %i.io = getelementptr inbounds nuw [2 x i8], ptr %.417791.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i, i64 %indvars.iv.next362.i.i.i.2
  %i.ip = load i16, ptr %i.io, align 2, !tbaa !185
  %i.iq = getelementptr inbounds nuw [2 x i8], ptr %.016892.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i, i64 %indvars.iv.next362.i.i.i.2
  store i16 %i.ip, ptr %i.iq, align 2, !tbaa !185
  %indvars.iv.next362.i.i.i.3 = add nuw nsw i64 %indvars.iv361.i.i.i, 4 ; 2 uses
  %exitcond365.not.i.i.i.3 = icmp eq i64 %indvars.iv.next362.i.i.i.3, %wide.trip.count.i.i.i
  br i1 %exitcond365.not.i.i.i.3, label %._crit_edge.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i, label %vec.epilog.scalar.ph92, !llvm.loop !140

._crit_edge.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i: ; preds = %vec.epilog.scalar.ph92.prol.loopexit, %vec.epilog.scalar.ph92, %vec.epilog.middle.block101, %middle.block88
  %i.ir = add nuw nsw i32 %.016793.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i, 1 ; 2 uses
  %i.is = getelementptr inbounds [2 x i8], ptr %.016892.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i, i64 %i.h
  %i.it = getelementptr inbounds nuw [2 x i8], ptr %.417791.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i, i64 %i.ap ; 5 uses
  %exitcond366.not.i.i.i = icmp eq i32 %i.ir, %i.d
  br i1 %exitcond366.not.i.i.i, label %._crit_edge94.split.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i, label %iter.check91, !llvm.loop !141

._crit_edge94.split.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i: ; preds = %._crit_edge.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i
  %indvars.iv.next368.i.i.i = add nuw nsw i64 %indvars.iv367.i.i.i, 1 ; 2 uses
  %exitcond371.not.i.i.i = icmp eq i64 %indvars.iv.next368.i.i.i, %wide.trip.count342.i.i.i
  br i1 %exitcond371.not.i.i.i, label %._crit_edge.split106.us.split.us.us.us.us.us.us.us.us.us.us.i.i.i, label %.preheader2.lr.ph.us.us.us.us.us.us.us.us.us.us.us.i.i.i, !llvm.loop !142

._crit_edge.split106.us.split.us.us.us.us.us.us.us.us.us.us.i.i.i: ; preds = %._crit_edge94.split.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i
  %indvars.iv.next373.i.i.i = add nuw nsw i64 %indvars.iv372.i.i.i, 1 ; 2 uses
  %exitcond376.not.i.i.i = icmp eq i64 %indvars.iv.next373.i.i.i, %wide.trip.count347.i.i.i
  br i1 %exitcond376.not.i.i.i, label %._crit_edge110.split.us.split.us.split.us.us.us.us.us.us.us.i.i.i, label %.preheader6.us.us.us.us.us.us.us.us.us.i.i.i, !llvm.loop !143

._crit_edge110.split.us.split.us.split.us.us.us.us.us.us.us.i.i.i: ; preds = %._crit_edge.split106.us.split.us.us.us.us.us.us.us.us.us.us.i.i.i
  %indvars.iv.next378.i.i.i = add nuw nsw i64 %indvars.iv377.i.i.i, 1 ; 2 uses
  %exitcond381.not.i.i.i = icmp eq i64 %indvars.iv.next378.i.i.i, %wide.trip.count352.i.i.i
  br i1 %exitcond381.not.i.i.i, label %._crit_edge.split139.us.split.us.us.us.i.loopexit.i.i, label %.preheader10.us.us.us.us.us.us.i.i.i, !llvm.loop !144

._crit_edge.split139.us.split.us.us.us.i.loopexit.i.i: ; preds = %._crit_edge110.split.us.split.us.split.us.us.us.us.us.us.us.i.i.i
  %indvars.iv.next383.i.i.i = add nuw nsw i64 %indvars.iv382.i.i.i, 1 ; 2 uses
  %exitcond386.not.i.i.i = icmp eq i64 %indvars.iv.next383.i.i.i, %wide.trip.count357.i.i.i
  br i1 %exitcond386.not.i.i.i, label %.loopexit.i.i.i, label %.preheader14.us.us.i.i.i, !llvm.loop !145

bb.d:                                             ; preds = %.preheader19.i.i.i
  %i.iu = getelementptr inbounds [4 x i8], ptr %i.et, i64 %i.ep
  br i1 %brmerge491.i.i.i, label %.loopexit.i.i.i, label %.preheader15.us.us.us.us.i.preheader.i.i

.preheader15.us.us.us.us.i.preheader.i.i:         ; preds = %bb.d
  %i.iv = load ptr, ptr %i.ah, align 8, !tbaa !179, !nonnull !67, !align !173
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !68
  %20 = add i64 %i.eo, %i.cr
  %21 = add i64 %20, %i.de
  %22 = add i64 %21, %i.dr
  %23 = add i64 %22, %i.ef
  %i.ix = add i64 %23, %i.cf                      ; 2 uses
  %i.iy = shl i64 %i.ix, 2
  %i.iz = shl i64 %i.en, 2
  %i.ja = shl i64 %i.ed, 2
  %i.jb = shl i64 %i.dq, 2
  %i.jc = shl i64 %i.dd, 2
  %24 = add i64 %i.bl, %i.ix
  %25 = shl i64 %24, 2
  %26 = getelementptr i8, ptr %i.et, i64 %i.iy
  %i.jd = getelementptr i8, ptr %i.et, i64 %25
  br label %.preheader15.us.us.us.us.i.i.i

.preheader15.us.us.us.us.i.i.i:                   ; preds = %._crit_edge.split.us.split.us.split.us.split.us.us.us.us.us.i.i.i, %.preheader15.us.us.us.us.i.preheader.i.i
  %indvars.iv354.i.i.i = phi i64 [ %indvars.iv.next355.i.i.i, %._crit_edge.split.us.split.us.split.us.split.us.us.us.us.us.i.i.i ], [ 0, %.preheader15.us.us.us.us.i.preheader.i.i ] ; 3 uses
  %.016172.us.us.us.us.i.i.i = phi ptr [ %i.ks, %._crit_edge.split.us.split.us.split.us.split.us.us.us.us.us.i.i.i ], [ %i.iw, %.preheader15.us.us.us.us.i.preheader.i.i ]
  %i.je = mul i64 %i.iz, %indvars.iv354.i.i.i     ; 2 uses
  %i.jf = mul nsw i64 %indvars.iv354.i.i.i, %i.en
  %i.jg = getelementptr inbounds [4 x i8], ptr %i.iu, i64 %i.jf
  %27 = getelementptr i8, ptr %26, i64 %i.je
  %i.jh = getelementptr i8, ptr %i.jd, i64 %i.je
  br label %.preheader11.us.us.us.us.us.us.us.us.i.i.i

.preheader11.us.us.us.us.us.us.us.us.i.i.i:       ; preds = %._crit_edge41.split.us.split.us.split.us.us.us.us.us.us.us.us.us.i.i.i, %.preheader15.us.us.us.us.i.i.i
  %indvars.iv349.i.i.i = phi i64 [ %indvars.iv.next350.i.i.i, %._crit_edge41.split.us.split.us.split.us.us.us.us.us.us.us.us.us.i.i.i ], [ 0, %.preheader15.us.us.us.us.i.i.i ] ; 3 uses
  %.116253.us.us.us.us.us.us.us.us.i.i.i = phi ptr [ %i.ks, %._crit_edge41.split.us.split.us.split.us.us.us.us.us.us.us.us.us.i.i.i ], [ %.016172.us.us.us.us.i.i.i, %.preheader15.us.us.us.us.i.i.i ]
  %i.ji = mul i64 %i.ja, %indvars.iv349.i.i.i     ; 2 uses
  %i.jj = mul nsw i64 %indvars.iv349.i.i.i, %i.ed
  %i.jk = getelementptr inbounds [4 x i8], ptr %i.jg, i64 %i.jj
  %28 = getelementptr i8, ptr %27, i64 %i.ji
  %i.jl = getelementptr i8, ptr %i.jh, i64 %i.ji
  br label %.preheader7.us.us.us.us.us.us.us.us.us.us.us.i.i.i

.preheader7.us.us.us.us.us.us.us.us.us.us.us.i.i.i: ; preds = %._crit_edge.split.us.split.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i, %.preheader11.us.us.us.us.us.us.us.us.i.i.i
  %indvars.iv344.i.i.i = phi i64 [ %indvars.iv.next345.i.i.i, %._crit_edge.split.us.split.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i ], [ 0, %.preheader11.us.us.us.us.us.us.us.us.i.i.i ] ; 3 uses
  %.216339.us.us.us.us.us.us.us.us.us.us.us.i.i.i = phi ptr [ %i.ks, %._crit_edge.split.us.split.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i ], [ %.116253.us.us.us.us.us.us.us.us.i.i.i, %.preheader11.us.us.us.us.us.us.us.us.i.i.i ]
  %i.jm = mul i64 %i.jb, %indvars.iv344.i.i.i     ; 2 uses
  %i.jn = mul nsw i64 %indvars.iv344.i.i.i, %i.dq
  %i.jo = getelementptr inbounds [4 x i8], ptr %i.jk, i64 %i.jn
  %29 = getelementptr i8, ptr %28, i64 %i.jm
  %i.jp = getelementptr i8, ptr %i.jl, i64 %i.jm
  br label %.preheader3.lr.ph.us.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i

.preheader3.lr.ph.us.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i: ; preds = %._crit_edge27.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i, %.preheader7.us.us.us.us.us.us.us.us.us.us.us.i.i.i
  %indvars.iv339.i.i.i = phi i64 [ %indvars.iv.next340.i.i.i, %._crit_edge27.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i ], [ 0, %.preheader7.us.us.us.us.us.us.us.us.us.us.us.i.i.i ] ; 3 uses
  %.316428.us.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i = phi ptr [ %i.ks, %._crit_edge27.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i ], [ %.216339.us.us.us.us.us.us.us.us.us.us.us.i.i.i, %.preheader7.us.us.us.us.us.us.us.us.us.us.us.i.i.i ] ; 3 uses
  %i.jq = mul i64 %i.jc, %indvars.iv339.i.i.i     ; 2 uses
  %scevgep105 = getelementptr i8, ptr %29, i64 %i.jq
  %scevgep106 = getelementptr i8, ptr %i.jp, i64 %i.jq
  %i.jr = mul nsw i64 %indvars.iv339.i.i.i, %i.dd
  %i.js = getelementptr inbounds [4 x i8], ptr %i.jo, i64 %i.jr
  %scevgep107 = getelementptr i8, ptr %.316428.us.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i, i64 %i.bo
  %bound0108 = icmp ult ptr %scevgep105, %scevgep107
  %bound1109 = icmp ult ptr %.316428.us.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i, %scevgep106
  %found.conflict110 = and i1 %bound0108, %bound1109
  %i.jt = or i1 %found.conflict110, %stride.check111
  br label %.preheader3.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i

.preheader3.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i: ; preds = %._crit_edge.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i, %.preheader3.lr.ph.us.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i
  %.015526.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i = phi i32 [ 0, %.preheader3.lr.ph.us.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i ], [ %i.kq, %._crit_edge.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i ]
  %.015625.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i = phi ptr [ %i.js, %.preheader3.lr.ph.us.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i ], [ %i.kr, %._crit_edge.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i ] ; 7 uses
  %.416524.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i = phi ptr [ %.316428.us.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i, %.preheader3.lr.ph.us.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i ], [ %i.ks, %._crit_edge.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i ] ; 7 uses
  %brmerge148 = select i1 %min.iters.check113, i1 true, i1 %i.jt
  br i1 %brmerge148, label %scalar.ph112.preheader, label %vector.body116

vector.body116:                                   ; preds = %.preheader3.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i, %vector.body116
  %index117 = phi i64 [ %index.next120, %vector.body116 ], [ 0, %.preheader3.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i ] ; 3 uses
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %.416524.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i, i64 %index117 ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 16
  %wide.load118 = load <4 x i32>, ptr %i.ju, align 4, !tbaa !32, !alias.scope !189
  %wide.load119 = load <4 x i32>, ptr %i.jv, align 4, !tbaa !32, !alias.scope !189
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %.015625.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i, i64 %index117 ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 16
  store <4 x i32> %wide.load118, ptr %i.jw, align 4, !tbaa !32, !alias.scope !190, !noalias !189
  store <4 x i32> %wide.load119, ptr %i.jx, align 4, !tbaa !32, !alias.scope !190, !noalias !189
  %index.next120 = add nuw i64 %index117, 8       ; 2 uses
  %i.jy = icmp eq i64 %index.next120, %n.vec115
  br i1 %i.jy, label %middle.block121, label %vector.body116, !llvm.loop !149

middle.block121:                                  ; preds = %vector.body116
  br i1 %cmp.n122, label %._crit_edge.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i, label %scalar.ph112.preheader

scalar.ph112.preheader:                           ; preds = %.preheader3.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i, %middle.block121
  %indvars.iv.i.i.i.ph = phi i64 [ %n.vec115, %middle.block121 ], [ 0, %.preheader3.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph112.prol.loopexit, label %scalar.ph112.prol

scalar.ph112.prol:                                ; preds = %scalar.ph112.preheader, %scalar.ph112.prol
  %indvars.iv.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.prol, %scalar.ph112.prol ], [ %indvars.iv.i.i.i.ph, %scalar.ph112.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph112.prol ], [ 0, %scalar.ph112.preheader ]
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %.416524.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i, i64 %indvars.iv.i.i.i.prol
  %i.ka = load i32, ptr %i.jz, align 4, !tbaa !32
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %.015625.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i, i64 %indvars.iv.i.i.i.prol
  store i32 %i.ka, ptr %i.kb, align 4, !tbaa !32
  %indvars.iv.next.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph112.prol.loopexit, label %scalar.ph112.prol, !llvm.loop !150

scalar.ph112.prol.loopexit:                       ; preds = %scalar.ph112.prol, %scalar.ph112.preheader
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %scalar.ph112.preheader ], [ %indvars.iv.next.i.i.i.prol, %scalar.ph112.prol ]
  %i.kc = sub nsw i64 %indvars.iv.i.i.i.ph, %wide.trip.count.i.i.i
  %i.kd = icmp ugt i64 %i.kc, -4
  br i1 %i.kd, label %._crit_edge.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i, label %scalar.ph112

scalar.ph112:                                     ; preds = %scalar.ph112.prol.loopexit, %scalar.ph112
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.3, %scalar.ph112 ], [ %indvars.iv.i.i.i.unr, %scalar.ph112.prol.loopexit ] ; 6 uses
  %i.ke = getelementptr inbounds nuw [4 x i8], ptr %.416524.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i, i64 %indvars.iv.i.i.i
  %i.kf = load i32, ptr %i.ke, align 4, !tbaa !32
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %.015625.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i, i64 %indvars.iv.i.i.i
  store i32 %i.kf, ptr %i.kg, align 4, !tbaa !32
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %.416524.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i, i64 %indvars.iv.next.i.i.i
  %i.ki = load i32, ptr %i.kh, align 4, !tbaa !32
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %.015625.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i, i64 %indvars.iv.next.i.i.i
  store i32 %i.ki, ptr %i.kj, align 4, !tbaa !32
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %.416524.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i, i64 %indvars.iv.next.i.i.i.1
  %i.kl = load i32, ptr %i.kk, align 4, !tbaa !32
  %i.km = getelementptr inbounds nuw [4 x i8], ptr %.015625.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i, i64 %indvars.iv.next.i.i.i.1
  store i32 %i.kl, ptr %i.km, align 4, !tbaa !32
  %indvars.iv.next.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i, 3 ; 2 uses
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr %.416524.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i, i64 %indvars.iv.next.i.i.i.2
  %i.ko = load i32, ptr %i.kn, align 4, !tbaa !32
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %.015625.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i, i64 %indvars.iv.next.i.i.i.2
  store i32 %i.ko, ptr %i.kp, align 4, !tbaa !32
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.3, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %._crit_edge.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i, label %scalar.ph112, !llvm.loop !151

._crit_edge.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i: ; preds = %scalar.ph112.prol.loopexit, %scalar.ph112, %middle.block121
  %i.kq = add nuw nsw i32 %.015526.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i, 1 ; 2 uses
  %i.kr = getelementptr inbounds [4 x i8], ptr %.015625.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i, i64 %i.h
  %i.ks = getelementptr inbounds nuw [4 x i8], ptr %.416524.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i, i64 %i.ap ; 5 uses
  %exitcond338.not.i.i.i = icmp eq i32 %i.kq, %i.d
  br i1 %exitcond338.not.i.i.i, label %._crit_edge27.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i, label %.preheader3.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i, !llvm.loop !152

._crit_edge27.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i: ; preds = %._crit_edge.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i
  %indvars.iv.next340.i.i.i = add nuw nsw i64 %indvars.iv339.i.i.i, 1 ; 2 uses
  %exitcond343.not.i.i.i = icmp eq i64 %indvars.iv.next340.i.i.i, %wide.trip.count342.i.i.i
  br i1 %exitcond343.not.i.i.i, label %._crit_edge.split.us.split.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i, label %.preheader3.lr.ph.us.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i, !llvm.loop !153

._crit_edge.split.us.split.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i: ; preds = %._crit_edge27.split.us.us.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i
  %indvars.iv.next345.i.i.i = add nuw nsw i64 %indvars.iv344.i.i.i, 1 ; 2 uses
  %exitcond348.not.i.i.i = icmp eq i64 %indvars.iv.next345.i.i.i, %wide.trip.count347.i.i.i
  br i1 %exitcond348.not.i.i.i, label %._crit_edge41.split.us.split.us.split.us.us.us.us.us.us.us.us.us.i.i.i, label %.preheader7.us.us.us.us.us.us.us.us.us.us.us.i.i.i, !llvm.loop !154

._crit_edge41.split.us.split.us.split.us.us.us.us.us.us.us.us.us.i.i.i: ; preds = %._crit_edge.split.us.split.us.us.us.us.us.us.us.us.us.us.us.us.i.i.i
  %indvars.iv.next350.i.i.i = add nuw nsw i64 %indvars.iv349.i.i.i, 1 ; 2 uses
  %exitcond353.not.i.i.i = icmp eq i64 %indvars.iv.next350.i.i.i, %wide.trip.count352.i.i.i
  br i1 %exitcond353.not.i.i.i, label %._crit_edge.split.us.split.us.split.us.split.us.us.us.us.us.i.i.i, label %.preheader11.us.us.us.us.us.us.us.us.i.i.i, !llvm.loop !155

._crit_edge.split.us.split.us.split.us.split.us.us.us.us.us.i.i.i: ; preds = %._crit_edge41.split.us.split.us.split.us.us.us.us.us.us.us.us.us.i.i.i
  %indvars.iv.next355.i.i.i = add nuw nsw i64 %indvars.iv354.i.i.i, 1 ; 2 uses
  %exitcond358.not.i.i.i = icmp eq i64 %indvars.iv.next355.i.i.i, %wide.trip.count357.i.i.i
  br i1 %exitcond358.not.i.i.i, label %.loopexit.i.i.i, label %.preheader15.us.us.us.us.i.i.i, !llvm.loop !156

bb.e:                                             ; preds = %.preheader19.i.i.i
  %i.kt = getelementptr inbounds [8 x i8], ptr %i.et, i64 %i.ep
  br i1 %brmerge491.i.i.i, label %.loopexit.i.i.i, label %.preheader12.i.preheader.i.i

.preheader12.i.preheader.i.i:                     ; preds = %bb.e
  %i.ku = load ptr, ptr %i.ah, align 8, !tbaa !179, !nonnull !67, !align !173
  %i.kv = load ptr, ptr %i.ku, align 8, !tbaa !68
  %30 = add i64 %i.eo, %i.cr
  %31 = add i64 %30, %i.de
  %32 = add i64 %31, %i.dr
  %33 = add i64 %32, %i.ef
  %34 = add i64 %33, %i.cf
  %35 = shl i64 %34, 3                            ; 2 uses
  %scevgep = getelementptr i8, ptr %i.et, i64 %35
  %scevgep35 = getelementptr i8, ptr %i.et, i64 %i.au
  %scevgep36.a = getelementptr i8, ptr %scevgep35, i64 %35
  br label %.preheader12.i.i.i

.preheader12.i.i.i:                               ; preds = %._crit_edge.i.loopexit.i.i, %.preheader12.i.preheader.i.i
  %indvars.iv438.i.i.i = phi i64 [ %indvars.iv.next439.i.i.i, %._crit_edge.i.loopexit.i.i ], [ 0, %.preheader12.i.preheader.i.i ] ; 3 uses
  %.0153293.i.i.i = phi ptr [ %i.mo, %._crit_edge.i.loopexit.i.i ], [ %i.kv, %.preheader12.i.preheader.i.i ]
  %i.kw = shl nuw nsw i64 %indvars.iv438.i.i.i, 3
  br label %.preheader8.us.us.us.us.i.i.i

.preheader8.us.us.us.us.i.i.i:                    ; preds = %._crit_edge258.split.us.split.us.split.us.us.us.us.us.i.i.i, %.preheader12.i.i.i
  %indvars.iv433.i.i.i = phi i64 [ %indvars.iv.next434.i.i.i, %._crit_edge258.split.us.split.us.split.us.us.us.us.us.i.i.i ], [ 0, %.preheader12.i.i.i ] ; 3 uses
  %.1271.us.us.us.us.i.i.i = phi ptr [ %i.mo, %._crit_edge258.split.us.split.us.split.us.us.us.us.us.i.i.i ], [ %.0153293.i.i.i, %.preheader12.i.i.i ]
  %i.kx = shl nuw nsw i64 %indvars.iv433.i.i.i, 3
  br label %.preheader4.us.us.us.us.us.us.us.i.i.i

.preheader4.us.us.us.us.us.us.us.i.i.i:           ; preds = %._crit_edge.split254.us.split.us.us.us.us.us.us.us.us.i.i.i, %.preheader8.us.us.us.us.i.i.i
  %indvars.iv428.i.i.i = phi i64 [ %indvars.iv.next429.i.i.i, %._crit_edge.split254.us.split.us.us.us.us.us.us.us.us.i.i.i ], [ 0, %.preheader8.us.us.us.us.i.i.i ] ; 3 uses
  %.2256.us.us.us.us.us.us.us.i.i.i = phi ptr [ %i.mo, %._crit_edge.split254.us.split.us.us.us.us.us.us.us.us.i.i.i ], [ %.1271.us.us.us.us.i.i.i, %.preheader8.us.us.us.us.i.i.i ]
  %i.ky = shl nuw nsw i64 %indvars.iv428.i.i.i, 3
  br label %.preheader.lr.ph.us.us.us.us.us.us.us.us.us.i.i.i

.preheader.lr.ph.us.us.us.us.us.us.us.us.us.i.i.i: ; preds = %._crit_edge242.split.us.us.us.us.us.us.us.us.us.us.i.i.i, %.preheader4.us.us.us.us.us.us.us.i.i.i
  %indvars.iv423.i.i.i = phi i64 [ %indvars.iv.next424.i.i.i, %._crit_edge242.split.us.us.us.us.us.us.us.us.us.us.i.i.i ], [ 0, %.preheader4.us.us.us.us.us.us.us.i.i.i ] ; 3 uses
  %.3243.us.us.us.us.us.us.us.us.us.i.i.i = phi ptr [ %i.mo, %._crit_edge242.split.us.us.us.us.us.us.us.us.us.us.i.i.i ], [ %.2256.us.us.us.us.us.us.us.i.i.i, %.preheader4.us.us.us.us.us.us.us.i.i.i ] ; 3 uses
  %i.kz = shl nuw nsw i64 %indvars.iv423.i.i.i, 3
  %i.la = load i64, ptr %i.bt, align 8, !tbaa !65 ; 2 uses
  %i.lb = mul nsw i64 %i.la, %indvars.iv438.i.i.i
  %i.lc = getelementptr inbounds [8 x i8], ptr %i.kt, i64 %i.lb
  %i.ld = load i64, ptr %i.ec, align 8, !tbaa !65 ; 2 uses
  %i.le = mul nsw i64 %i.ld, %indvars.iv433.i.i.i
  %i.lf = getelementptr inbounds [8 x i8], ptr %i.lc, i64 %i.le
  %i.lg = load i64, ptr %i.dp, align 8, !tbaa !65 ; 2 uses
  %i.lh = mul nsw i64 %i.lg, %indvars.iv428.i.i.i
  %i.li = getelementptr inbounds [8 x i8], ptr %i.lf, i64 %i.lh
  %i.lj = load i64, ptr %i.dc, align 8, !tbaa !65 ; 2 uses
  %i.lk = mul nsw i64 %i.lj, %indvars.iv423.i.i.i
  %i.ll = getelementptr inbounds [8 x i8], ptr %i.li, i64 %i.lk
  %i.lm = mul i64 %i.kw, %i.la
  %i.ln = mul i64 %i.kx, %i.ld
  %36 = add i64 %i.lm, %i.ln
  %i.lo = mul i64 %i.ky, %i.lg
  %37 = add i64 %36, %i.lo
  %38 = mul i64 %i.lj, %i.kz
  %39 = add i64 %37, %38                          ; 2 uses
  %scevgep34 = getelementptr i8, ptr %scevgep, i64 %39
  %scevgep37 = getelementptr i8, ptr %scevgep36.a, i64 %39
  %scevgep38 = getelementptr i8, ptr %.3243.us.us.us.us.us.us.us.us.us.i.i.i, i64 %i.ax
  %bound0 = icmp ult ptr %scevgep34, %scevgep38
  %bound1 = icmp ult ptr %.3243.us.us.us.us.us.us.us.us.us.i.i.i, %scevgep37
  %found.conflict = and i1 %bound0, %bound1
  %i.lp = or i1 %found.conflict, %stride.check
  br label %.preheader.us.us.us.us.us.us.us.us.us.us.i.i.i

.preheader.us.us.us.us.us.us.us.us.us.us.i.i.i:   ; preds = %._crit_edge.us.us.us.us.us.us.us.us.us.us.i.i.i, %.preheader.lr.ph.us.us.us.us.us.us.us.us.us.i.i.i
  %.0147241.us.us.us.us.us.us.us.us.us.us.i.i.i = phi i32 [ 0, %.preheader.lr.ph.us.us.us.us.us.us.us.us.us.i.i.i ], [ %i.mm, %._crit_edge.us.us.us.us.us.us.us.us.us.us.i.i.i ]
  %.0148240.us.us.us.us.us.us.us.us.us.us.i.i.i = phi ptr [ %i.ll, %.preheader.lr.ph.us.us.us.us.us.us.us.us.us.i.i.i ], [ %i.mn, %._crit_edge.us.us.us.us.us.us.us.us.us.us.i.i.i ] ; 7 uses
  %.4239.us.us.us.us.us.us.us.us.us.us.i.i.i = phi ptr [ %.3243.us.us.us.us.us.us.us.us.us.i.i.i, %.preheader.lr.ph.us.us.us.us.us.us.us.us.us.i.i.i ], [ %i.mo, %._crit_edge.us.us.us.us.us.us.us.us.us.us.i.i.i ] ; 7 uses
  %brmerge149 = select i1 %min.iters.check, i1 true, i1 %i.lp
  br i1 %brmerge149, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader.us.us.us.us.us.us.us.us.us.us.i.i.i, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.us.us.us.us.us.us.us.us.us.us.i.i.i ] ; 3 uses
  %i.lq = getelementptr inbounds nuw [8 x i8], ptr %.4239.us.us.us.us.us.us.us.us.us.us.i.i.i, i64 %index ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 16
  %wide.load = load <2 x i64>, ptr %i.lq, align 8, !tbaa !65, !alias.scope !191
  %wide.load39 = load <2 x i64>, ptr %i.lr, align 8, !tbaa !65, !alias.scope !191
  %i.ls = getelementptr inbounds nuw [8 x i8], ptr %.0148240.us.us.us.us.us.us.us.us.us.us.i.i.i, i64 %index ; 2 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 16
  store <2 x i64> %wide.load, ptr %i.ls, align 8, !tbaa !65, !alias.scope !192, !noalias !191
  store <2 x i64> %wide.load39, ptr %i.lt, align 8, !tbaa !65, !alias.scope !192, !noalias !191
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.lu = icmp eq i64 %index.next, %n.vec
  br i1 %i.lu, label %middle.block, label %vector.body, !llvm.loop !160

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us.us.us.us.us.us.us.us.us.us.i.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.us.us.us.us.us.us.us.us.us.us.i.i.i, %middle.block
  %indvars.iv417.i.i.i.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader.us.us.us.us.us.us.us.us.us.us.i.i.i ] ; 3 uses
  br i1 %lcmp.mod139.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv417.i.i.i.prol = phi i64 [ %indvars.iv.next418.i.i.i.prol, %scalar.ph.prol ], [ %indvars.iv417.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter140 = phi i64 [ %prol.iter140.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.lv = getelementptr inbounds nuw [8 x i8], ptr %.4239.us.us.us.us.us.us.us.us.us.us.i.i.i, i64 %indvars.iv417.i.i.i.prol
  %i.lw = load i64, ptr %i.lv, align 8, !tbaa !65
  %i.lx = getelementptr inbounds nuw [8 x i8], ptr %.0148240.us.us.us.us.us.us.us.us.us.us.i.i.i, i64 %indvars.iv417.i.i.i.prol
  store i64 %i.lw, ptr %i.lx, align 8, !tbaa !65
  %indvars.iv.next418.i.i.i.prol = add nuw nsw i64 %indvars.iv417.i.i.i.prol, 1 ; 2 uses
  %prol.iter140.next = add i64 %prol.iter140, 1   ; 2 uses
  %prol.iter140.cmp.not = icmp eq i64 %prol.iter140.next, %xtraiter138
  br i1 %prol.iter140.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !161

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv417.i.i.i.unr = phi i64 [ %indvars.iv417.i.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next418.i.i.i.prol, %scalar.ph.prol ]
  %i.ly = sub nsw i64 %indvars.iv417.i.i.i.ph, %wide.trip.count.i.i.i
  %i.lz = icmp ugt i64 %i.ly, -4
  br i1 %i.lz, label %._crit_edge.us.us.us.us.us.us.us.us.us.us.i.i.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv417.i.i.i = phi i64 [ %indvars.iv.next418.i.i.i.3, %scalar.ph ], [ %indvars.iv417.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ma = getelementptr inbounds nuw [8 x i8], ptr %.4239.us.us.us.us.us.us.us.us.us.us.i.i.i, i64 %indvars.iv417.i.i.i
  %i.mb = load i64, ptr %i.ma, align 8, !tbaa !65
  %i.mc = getelementptr inbounds nuw [8 x i8], ptr %.0148240.us.us.us.us.us.us.us.us.us.us.i.i.i, i64 %indvars.iv417.i.i.i
  store i64 %i.mb, ptr %i.mc, align 8, !tbaa !65
  %indvars.iv.next418.i.i.i = add nuw nsw i64 %indvars.iv417.i.i.i, 1 ; 2 uses
  %i.md = getelementptr inbounds nuw [8 x i8], ptr %.4239.us.us.us.us.us.us.us.us.us.us.i.i.i, i64 %indvars.iv.next418.i.i.i
  %i.me = load i64, ptr %i.md, align 8, !tbaa !65
  %i.mf = getelementptr inbounds nuw [8 x i8], ptr %.0148240.us.us.us.us.us.us.us.us.us.us.i.i.i, i64 %indvars.iv.next418.i.i.i
  store i64 %i.me, ptr %i.mf, align 8, !tbaa !65
  %indvars.iv.next418.i.i.i.1 = add nuw nsw i64 %indvars.iv417.i.i.i, 2 ; 2 uses
  %i.mg = getelementptr inbounds nuw [8 x i8], ptr %.4239.us.us.us.us.us.us.us.us.us.us.i.i.i, i64 %indvars.iv.next418.i.i.i.1
  %i.mh = load i64, ptr %i.mg, align 8, !tbaa !65
  %i.mi = getelementptr inbounds nuw [8 x i8], ptr %.0148240.us.us.us.us.us.us.us.us.us.us.i.i.i, i64 %indvars.iv.next418.i.i.i.1
  store i64 %i.mh, ptr %i.mi, align 8, !tbaa !65
  %indvars.iv.next418.i.i.i.2 = add nuw nsw i64 %indvars.iv417.i.i.i, 3 ; 2 uses
  %i.mj = getelementptr inbounds nuw [8 x i8], ptr %.4239.us.us.us.us.us.us.us.us.us.us.i.i.i, i64 %indvars.iv.next418.i.i.i.2
  %i.mk = load i64, ptr %i.mj, align 8, !tbaa !65
  %i.ml = getelementptr inbounds nuw [8 x i8], ptr %.0148240.us.us.us.us.us.us.us.us.us.us.i.i.i, i64 %indvars.iv.next418.i.i.i.2
  store i64 %i.mk, ptr %i.ml, align 8, !tbaa !65
  %indvars.iv.next418.i.i.i.3 = add nuw nsw i64 %indvars.iv417.i.i.i, 4 ; 2 uses
  %exitcond421.not.i.i.i.3 = icmp eq i64 %indvars.iv.next418.i.i.i.3, %wide.trip.count.i.i.i
  br i1 %exitcond421.not.i.i.i.3, label %._crit_edge.us.us.us.us.us.us.us.us.us.us.i.i.i, label %scalar.ph, !llvm.loop !162

._crit_edge.us.us.us.us.us.us.us.us.us.us.i.i.i:  ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.mm = add nuw nsw i32 %.0147241.us.us.us.us.us.us.us.us.us.us.i.i.i, 1 ; 2 uses
  %i.mn = getelementptr inbounds [8 x i8], ptr %.0148240.us.us.us.us.us.us.us.us.us.us.i.i.i, i64 %i.h
  %i.mo = getelementptr inbounds nuw [8 x i8], ptr %.4239.us.us.us.us.us.us.us.us.us.us.i.i.i, i64 %i.ap ; 5 uses
  %exitcond422.not.i.i.i = icmp eq i32 %i.mm, %i.d
  br i1 %exitcond422.not.i.i.i, label %._crit_edge242.split.us.us.us.us.us.us.us.us.us.us.i.i.i, label %.preheader.us.us.us.us.us.us.us.us.us.us.i.i.i, !llvm.loop !163

._crit_edge242.split.us.us.us.us.us.us.us.us.us.us.i.i.i: ; preds = %._crit_edge.us.us.us.us.us.us.us.us.us.us.i.i.i
  %indvars.iv.next424.i.i.i = add nuw nsw i64 %indvars.iv423.i.i.i, 1 ; 2 uses
  %exitcond427.not.i.i.i = icmp eq i64 %indvars.iv.next424.i.i.i, %wide.trip.count342.i.i.i
  br i1 %exitcond427.not.i.i.i, label %._crit_edge.split254.us.split.us.us.us.us.us.us.us.us.i.i.i, label %.preheader.lr.ph.us.us.us.us.us.us.us.us.us.i.i.i, !llvm.loop !164

._crit_edge.split254.us.split.us.us.us.us.us.us.us.us.i.i.i: ; preds = %._crit_edge242.split.us.us.us.us.us.us.us.us.us.us.i.i.i
  %indvars.iv.next429.i.i.i = add nuw nsw i64 %indvars.iv428.i.i.i, 1 ; 2 uses
  %exitcond432.not.i.i.i = icmp eq i64 %indvars.iv.next429.i.i.i, %wide.trip.count347.i.i.i
  br i1 %exitcond432.not.i.i.i, label %._crit_edge258.split.us.split.us.split.us.us.us.us.us.i.i.i, label %.preheader4.us.us.us.us.us.us.us.i.i.i, !llvm.loop !165

._crit_edge258.split.us.split.us.split.us.us.us.us.us.i.i.i: ; preds = %._crit_edge.split254.us.split.us.us.us.us.us.us.us.us.i.i.i
  %indvars.iv.next434.i.i.i = add nuw nsw i64 %indvars.iv433.i.i.i, 1 ; 2 uses
  %exitcond437.not.i.i.i = icmp eq i64 %indvars.iv.next434.i.i.i, %wide.trip.count352.i.i.i
  br i1 %exitcond437.not.i.i.i, label %._crit_edge.i.loopexit.i.i, label %.preheader8.us.us.us.us.i.i.i, !llvm.loop !166

._crit_edge.i.loopexit.i.i:                       ; preds = %._crit_edge258.split.us.split.us.split.us.us.us.us.us.i.i.i
  %indvars.iv.next439.i.i.i = add nuw nsw i64 %indvars.iv438.i.i.i, 1 ; 2 uses
  %exitcond442.not.i.i.i = icmp eq i64 %indvars.iv.next439.i.i.i, %wide.trip.count357.i.i.i
  br i1 %exitcond442.not.i.i.i, label %.loopexit.i.i.i, label %.preheader12.i.i.i, !llvm.loop !167

.loopexit.i.i.i:                                  ; preds = %._crit_edge.split.us.split.us.split.us.split.us.us.us.us.us.i.i.i, %._crit_edge.split139.us.split.us.us.us.i.loopexit.i.i, %._crit_edge.split213.us.split.us.us.us.i.loopexit.i.i, %._crit_edge.i.loopexit.i.i, %bb.e, %bb.d, %bb.c, %bb.b
  %i.mp = add nsw i64 %.0193295.i.i.i, 1          ; 2 uses
  %exitcond443.not.i.i.i = icmp eq i64 %i.mp, %i.u
  br i1 %exitcond443.not.i.i.i, label %"_ZSt10__invoke_rIvRZN2cv3dnnL4tileERKNS0_3MatEPKiRS2_E3$_0JRKNS0_5RangeEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESE_E4typeEOSF_DpOSG_.exit", label %.preheader19.i.i.i, !llvm.loop !168

"_ZSt10__invoke_rIvRZN2cv3dnnL4tileERKNS0_3MatEPKiRS2_E3$_0JRKNS0_5RangeEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESE_E4typeEOSF_DpOSG_.exit": ; preds = %.loopexit.i.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnnL4tileERKNS0_3MatEPKiRS6_E3$_0E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #0 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnnL4tileERKNS1_3MatEPKiRS3_E3$_0E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN2cv3dnnL4tileERKNS_3MatEPKiRS1_E3$_0", ptr %0, align 8, !tbaa !194
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnnL4tileERKNS1_3MatEPKiRS3_E3$_0E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !80
  store ptr %.val, ptr %0, align 8, !tbaa !80
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnnL4tileERKNS1_3MatEPKiRS3_E3$_0E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #17 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(64) %.val6, i64 64, i1 false), !tbaa.struct !83
  store ptr %i.a, ptr %0, align 8, !tbaa !80
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnnL4tileERKNS1_3MatEPKiRS3_E3$_0E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit"

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !80 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnnL4tileERKNS1_3MatEPKiRS3_E3$_0E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 64) #19
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnnL4tileERKNS1_3MatEPKiRS3_E3$_0E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN2cv3dnnL4tileERKNS1_3MatEPKiRS3_E3$_0E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit": ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN2cv4UMatESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42   ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !43     ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 184                 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !197
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = sdiv exact i64 %i.k, 184                 ; 2 uses
  %i.m = icmp ult i64 %i.g, 50127021939428130
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub nuw nsw i64 50127021939428129, %i.g  ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not37 = icmp ult i64 %i.l, %1
  br i1 %.not37, label %bb.c, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %.lr.ph.i.i.i
  %.08.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i ], [ %i.b, %bb.b ] ; 2 uses
  %.057.i.i.i = phi i64 [ %i.p, %.lr.ph.i.i.i ], [ %1, %bb.b ]
  tail call void @_ZN2cv4UMatC1ENS_14UMatUsageFlagsE(ptr noundef nonnull align 8 dereferenceable(184) %.08.i.i.i, i32 noundef 0) #18
  %i.p = add nsw i64 %.057.i.i.i, -1              ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 184 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.p, 0
  br i1 %.not.i.i.i, label %_ZSt27__uninitialized_default_n_aIPN2cv4UMatEmS1_ET_S3_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i, !llvm.loop !195

_ZSt27__uninitialized_default_n_aIPN2cv4UMatEmS1_ET_S3_T0_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i
  store ptr %i.q, ptr %i.a, align 8, !tbaa !42
  br label %bb.l

bb.c:                                             ; preds = %bb.b
  %i.r = icmp ult i64 %i.n, %1
  br i1 %i.r, label %bb.d, label %_ZNKSt6vectorIN2cv4UMatESaIS1_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #20
  unreachable

_ZNKSt6vectorIN2cv4UMatESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
end_hunk_0
