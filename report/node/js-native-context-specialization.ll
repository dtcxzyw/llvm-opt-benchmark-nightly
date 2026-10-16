Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/js-native-context-specialization?download=true
inline.NumInlined: 4584
inline.NumDeleted: 1366
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN2v88internal8compiler14GraphAssembler10MergeStateIJEEEvPNS1_6detail29GraphAssemblerLabelForXHelperIPNS1_4NodeEvJDpT_EE4TypeES9_:bb.a
_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i122: ; preds = %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i120, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i125
  %i.dd = phi ptr [ %i.db, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i120 ], [ %i.cz, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i125 ]
  %i.de = phi ptr [ %i.dc, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i120 ], [ %i.da, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i125 ] ; 2 uses
  %i.df = phi ptr [ %i.cn, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i120 ], [ %i.cv, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i125 ]
  %i.dg = getelementptr inbounds i8, ptr %i.df, i64 -48 ; 2 uses
  %.not14.i123 = icmp eq ptr %i.de, null
  br i1 %.not14.i123, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i122
  call void @_ZN2v88internal8compiler4Node9RemoveUseEPNS2_3UseE(ptr noundef nonnull align 8 dereferenceable(32) %i.de, ptr noundef nonnull %i.dg) #19
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i122
  store ptr %i.co, ptr %i.dd, align 8
  %.not15.i124 = icmp eq ptr %i.co, null
  br i1 %.not15.i124, label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit127, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_ZN2v88internal8compiler4Node9AppendUseEPNS2_3UseE(ptr noundef nonnull align 8 dereferenceable(32) %i.co, ptr noundef nonnull %i.dg) #19
  br label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit127

bb.m:                                             ; preds = %bb.c
  switch i32 %i.f, label %bb.p [
    i32 0, label %bb.n
    i32 1, label %bb.o
  ]

bb.n:                                             ; preds = %bb.m
  %i.dh = load ptr, ptr %i.b, align 8
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %i.dh, ptr %i.di, align 8
  %i.dj = load ptr, ptr %i.a, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %i.dj, ptr %i.dk, align 8
  br label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit127

bb.o:                                             ; preds = %bb.m
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.dm = load ptr, ptr %i.dl, align 8            ; 2 uses
  %i.dn = load ptr, ptr %i.dm, align 8
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.dp = load ptr, ptr %i.do, align 8
  %i.dq = call noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder5MergeEi(ptr noundef nonnull align 8 dereferenceable(16) %i.dp, i32 noundef 2) #19
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.ds = load ptr, ptr %i.dr, align 8
  %i.dt = load ptr, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  store ptr %i.ds, ptr %3, align 8
  %i.du = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.dt, ptr %i.du, align 8
  %i.dv = call noundef ptr @_ZN2v88internal8compiler7TFGraph7NewNodeEPKNS1_8OperatorEiPKPNS1_4NodeEb(ptr noundef nonnull align 8 dereferenceable(104) %i.dn, ptr noundef %i.dq, i32 noundef 2, ptr noundef nonnull %3, i1 noundef zeroext false) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  store ptr %i.dv, ptr %i.dr, align 8
  %i.dw = load ptr, ptr %i.dl, align 8            ; 2 uses
  %i.dx = load ptr, ptr %i.dw, align 8
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.dz = load ptr, ptr %i.dy, align 8
  %i.ea = call noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder9EffectPhiEi(ptr noundef nonnull align 8 dereferenceable(16) %i.dz, i32 noundef 2) #19
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ec = load ptr, ptr %i.eb, align 8
  %i.ed = load ptr, ptr %i.a, align 8
  %i.ee = load ptr, ptr %i.dr, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  store ptr %i.ec, ptr %2, align 8
  %i.ef = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.ed, ptr %i.ef, align 8
  %i.eg = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.ee, ptr %i.eg, align 8
  %i.eh = call noundef ptr @_ZN2v88internal8compiler7TFGraph7NewNodeEPKNS1_8OperatorEiPKPNS1_4NodeEb(ptr noundef nonnull align 8 dereferenceable(104) %i.dx, ptr noundef %i.ea, i32 noundef 3, ptr noundef nonnull %2, i1 noundef zeroext false) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  store ptr %i.eh, ptr %i.eb, align 8
  br label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit127

bb.p:                                             ; preds = %bb.m
  %i.ei = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.ej = load ptr, ptr %i.ei, align 8
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.el = load ptr, ptr %i.ek, align 8
  %i.em = load ptr, ptr %i.el, align 8
  %i.en = load ptr, ptr %i.em, align 8
  %i.eo = load ptr, ptr %i.b, align 8
  call void @_ZN2v88internal8compiler4Node11AppendInputEPNS0_4ZoneEPS2_(ptr noundef nonnull align 8 dereferenceable(32) %i.ej, ptr noundef %i.en, ptr noundef %i.eo) #19
  %i.ep = load ptr, ptr %i.ei, align 8
  %i.eq = load ptr, ptr %i.ek, align 8
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  %i.es = load ptr, ptr %i.er, align 8
  %i.et = add nsw i32 %i.f, 1                     ; 2 uses
  %i.eu = call noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder5MergeEi(ptr noundef nonnull align 8 dereferenceable(16) %i.es, i32 noundef %i.et) #19
  call void @_ZN2v88internal8compiler14NodeProperties8ChangeOpEPNS1_4NodeEPKNS1_8OperatorE(ptr noundef %i.ep, ptr noundef %i.eu) #19
  %i.ev = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.ew = load ptr, ptr %i.ev, align 8            ; 3 uses
  %i.ex = load ptr, ptr %i.a, align 8             ; 5 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ew, i64 20
  %i.ez = load i32, ptr %i.ey, align 4
  %i.fa = and i32 %i.ez, 251658240
  %.not.i.i146 = icmp eq i32 %i.fa, 251658240
  %i.fb = ptrtoint ptr %i.ew to i64
  %i.fc = add i64 %i.fb, 32
  %i.fd = inttoptr i64 %i.fc to ptr               ; 2 uses
  br i1 %.not.i.i146, label %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i152, label %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i147

_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i152: ; preds = %bb.p
  %i.fe = load ptr, ptr %i.fd, align 8            ; 2 uses
  %i.ff = ptrtoint ptr %i.fe to i64
  %i.fg = add i64 %i.ff, 16
  %i.fh = inttoptr i64 %i.fg to ptr
  %sext187 = shl i64 %i.e, 32
  %i.fi = ashr exact i64 %sext187, 29
  %i.fj = getelementptr inbounds i8, ptr %i.fh, i64 %i.fi ; 2 uses
  %i.fk = load ptr, ptr %i.fj, align 8            ; 2 uses
  %.not.i153 = icmp eq ptr %i.fk, %i.ex
  br i1 %.not.i153, label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit154, label %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i149

_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i147: ; preds = %bb.p
  %sext = shl i64 %i.e, 32
  %i.fl = ashr exact i64 %sext, 29
  %i.fm = getelementptr inbounds i8, ptr %i.fd, i64 %i.fl ; 2 uses
  %i.fn = load ptr, ptr %i.fm, align 8            ; 2 uses
  %.not18.i148 = icmp eq ptr %i.fn, %i.ex
  br i1 %.not18.i148, label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit154, label %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i149

_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i149: ; preds = %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i147, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i152
  %i.fo = phi ptr [ %i.fm, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i147 ], [ %i.fj, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i152 ]
  %i.fp = phi ptr [ %i.fn, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i147 ], [ %i.fk, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i152 ] ; 2 uses
  %i.fq = phi ptr [ %i.ew, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i147 ], [ %i.fe, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i152 ]
  %i.fr = xor i64 %i.e, -1
  %sext188 = shl i64 %i.fr, 32
  %i.fs = ashr exact i64 %sext188, 32
  %i.ft = getelementptr inbounds [24 x i8], ptr %i.fq, i64 %i.fs ; 2 uses
  %.not14.i150 = icmp eq ptr %i.fp, null
  br i1 %.not14.i150, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i149
  call void @_ZN2v88internal8compiler4Node9RemoveUseEPNS2_3UseE(ptr noundef nonnull align 8 dereferenceable(32) %i.fp, ptr noundef %i.ft) #19
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i149
  store ptr %i.ex, ptr %i.fo, align 8
  %.not15.i151 = icmp eq ptr %i.ex, null
  br i1 %.not15.i151, label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit154, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @_ZN2v88internal8compiler4Node9AppendUseEPNS2_3UseE(ptr noundef nonnull align 8 dereferenceable(32) %i.ex, ptr noundef %i.ft) #19
  br label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit154

_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit154: ; preds = %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i152, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i147, %bb.r, %bb.s
  %i.fu = load ptr, ptr %i.ev, align 8
  %i.fv = load ptr, ptr %i.ek, align 8
  %i.fw = load ptr, ptr %i.fv, align 8
  %i.fx = load ptr, ptr %i.fw, align 8
  %i.fy = load ptr, ptr %i.ei, align 8
  call void @_ZN2v88internal8compiler4Node11AppendInputEPNS0_4ZoneEPS2_(ptr noundef nonnull align 8 dereferenceable(32) %i.fu, ptr noundef %i.fx, ptr noundef %i.fy) #19
  %i.fz = load ptr, ptr %i.ev, align 8
  %i.ga = load ptr, ptr %i.ek, align 8
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  %i.gc = load ptr, ptr %i.gb, align 8
  %i.gd = call noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder9EffectPhiEi(ptr noundef nonnull align 8 dereferenceable(16) %i.gc, i32 noundef %i.et) #19
  call void @_ZN2v88internal8compiler14NodeProperties8ChangeOpEPNS1_4NodeEPKNS1_8OperatorE(ptr noundef %i.fz, ptr noundef %i.gd) #19
  br label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit127

_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit127: ; preds = %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i125, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i120, %bb.k, %bb.l, %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit154, %bb.o, %bb.n, %bb.e
  %i.ge = load i64, ptr %i.d, align 8
  %i.gf = add i64 %i.ge, 1
  store i64 %i.gf, ptr %i.d, align 8
  store <2 x ptr> %i.c, ptr %i.a, align 8
  ret void
}

declare noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder8LoopExitEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder14LoopExitEffectEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder13LoopExitValueENS0_21MachineRepresentationE(ptr noundef nonnull align 8 dereferenceable(16), i8 noundef zeroext) local_unnamed_addr #2

declare noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder4LoopEi(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef) local_unnamed_addr #2

declare noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder9TerminateEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare void @_ZN2v88internal8compiler4Node11AppendInputEPNS0_4ZoneEPS2_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt25__throw_bad_function_callv() local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler14GraphAssembler10MergeStateIJNS0_5TNodeINS0_7BooleanEEEEEEvPNS1_6detail29GraphAssemblerLabelForXHelperIPNS1_4NodeEvJDpT_EE4TypeESC_(ptr noundef nonnull align 8 dereferenceable(161) %0, ptr noundef %1, ptr noundef dead_on_return %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"struct.std::array.885", align 8   ; 6 uses
  %4 = alloca %"struct.std::array.885", align 8   ; 6 uses
  %5 = alloca %"struct.std::array.881", align 8   ; 5 uses
  %6 = alloca %"struct.std::array.885", align 8   ; 6 uses
  %7 = alloca %"struct.std::array.881", align 16  ; 4 uses
  %8 = alloca %"struct.std::array.885", align 8   ; 6 uses
  %9 = alloca %"struct.std::array.881", align 8   ; 5 uses
  %10 = alloca %"struct.std::array.881", align 8  ; 5 uses
  %11 = alloca %"struct.std::array.881", align 16 ; 4 uses
  %12 = alloca %"struct.std::array.881", align 8  ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 7 uses
  %i.c = load <2 x ptr>, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8              ; 6 uses
  %i.f = trunc i64 %i.e to i32                    ; 3 uses
  %i.g = load ptr, ptr %2, align 8                ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i32, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.k = load i32, ptr %i.j, align 4
  %.not = icmp eq i32 %i.i, %i.k
  br i1 %.not, label %bb.b, label %.loopexit175

.loopexit175:                                     ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = tail call noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder8LoopExitEv(ptr noundef nonnull align 8 dereferenceable(16) %i.p) #19
  %i.r = load ptr, ptr %i.b, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -8
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = load ptr, ptr %i.v, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19
  store ptr %i.r, ptr %12, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %i.w, ptr %i.x, align 8
  %i.y = call noundef ptr @_ZN2v88internal8compiler7TFGraph7NewNodeEPKNS1_8OperatorEiPKPNS1_4NodeEb(ptr noundef nonnull align 8 dereferenceable(104) %i.n, ptr noundef %i.q, i32 noundef 2, ptr noundef nonnull %12, i1 noundef zeroext false) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  %i.z = call noundef ptr @_ZN2v88internal8compiler14GraphAssembler7AddNodeEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(161) %0, ptr noundef %i.y) #19 ; 0 uses
  %i.aa = load ptr, ptr %i.l, align 8             ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = call noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder14LoopExitEffectEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  %i.af = load <2 x ptr>, ptr %i.a, align 8
  store <2 x ptr> %i.af, ptr %11, align 16
  %i.ag = call noundef ptr @_ZN2v88internal8compiler7TFGraph7NewNodeEPKNS1_8OperatorEiPKPNS1_4NodeEb(ptr noundef nonnull align 8 dereferenceable(104) %i.ab, ptr noundef %i.ae, i32 noundef 2, ptr noundef nonnull %11, i1 noundef zeroext false) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  %i.ah = call noundef ptr @_ZN2v88internal8compiler14GraphAssembler7AddNodeEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(161) %0, ptr noundef %i.ag) #19 ; 0 uses
  %13 = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ai = load ptr, ptr %i.l, align 8             ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = call noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder13LoopExitValueENS0_21MachineRepresentationE(ptr noundef nonnull align 8 dereferenceable(16) %i.al, i8 noundef zeroext 9) #19
  %i.an = load ptr, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  store ptr %i.g, ptr %10, align 8
  store ptr %i.an, ptr %13, align 8
  %i.ao = call noundef ptr @_ZN2v88internal8compiler7TFGraph7NewNodeEPKNS1_8OperatorEiPKPNS1_4NodeEb(ptr noundef nonnull align 8 dereferenceable(104) %i.aj, ptr noundef %i.am, i32 noundef 2, ptr noundef nonnull %10, i1 noundef zeroext false) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  %i.ap = call noundef ptr @_ZN2v88internal8compiler14GraphAssembler7AddNodeEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(161) %0, ptr noundef %i.ao) #19
  br label %bb.b

bb.b:                                             ; preds = %.loopexit175, %bb.a
  %.sroa.0.0 = phi ptr [ %i.g, %bb.a ], [ %i.ap, %.loopexit175 ] ; 16 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ar = load i32, ptr %i.aq, align 4
  %i.as = icmp eq i32 %i.ar, 2
  br i1 %i.as, label %bb.c, label %bb.o

bb.c:                                             ; preds = %bb.b
  %i.at = icmp eq i32 %i.f, 0
  br i1 %i.at, label %.loopexit, label %bb.d

.loopexit:                                        ; preds = %bb.c
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.av = load ptr, ptr %i.au, align 8            ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = call noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder4LoopEi(ptr noundef nonnull align 8 dereferenceable(16) %i.ay, i32 noundef 2) #19
  %i.ba = load ptr, ptr %i.b, align 8             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  store ptr %i.ba, ptr %9, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %i.ba, ptr %i.bb, align 8
  %i.bc = call noundef ptr @_ZN2v88internal8compiler7TFGraph7NewNodeEPKNS1_8OperatorEiPKPNS1_4NodeEb(ptr noundef nonnull align 8 dereferenceable(104) %i.aw, ptr noundef %i.az, i32 noundef 2, ptr noundef nonnull %9, i1 noundef zeroext false) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  store ptr %i.bc, ptr %i.bd, align 8
  %i.be = load ptr, ptr %i.au, align 8            ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = call noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder9EffectPhiEi(ptr noundef nonnull align 8 dereferenceable(16) %i.bh, i32 noundef 2) #19
  %i.bj = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.bk = load ptr, ptr %i.bd, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  store ptr %i.bj, ptr %8, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.bj, ptr %i.bl, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %i.bk, ptr %i.bm, align 8
  %i.bn = call noundef ptr @_ZN2v88internal8compiler7TFGraph7NewNodeEPKNS1_8OperatorEiPKPNS1_4NodeEb(ptr noundef nonnull align 8 dereferenceable(104) %i.bf, ptr noundef %i.bi, i32 noundef 3, ptr noundef nonnull %8, i1 noundef zeroext false) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  store ptr %i.bn, ptr %i.bo, align 8
  %i.bp = load ptr, ptr %i.au, align 8            ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = call noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder9TerminateEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bs) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  %i.bu = load <2 x ptr>, ptr %i.bo, align 8
  store <2 x ptr> %i.bu, ptr %7, align 16
  %i.bv = call noundef ptr @_ZN2v88internal8compiler7TFGraph7NewNodeEPKNS1_8OperatorEiPKPNS1_4NodeEb(ptr noundef nonnull align 8 dereferenceable(104) %i.bq, ptr noundef %i.bt, i32 noundef 2, ptr noundef nonnull %7, i1 noundef zeroext false) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  %i.bw = load ptr, ptr %i.au, align 8            ; 2 uses
  %i.bx = load ptr, ptr %i.bw, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.bz = load ptr, ptr %i.by, align 8
  call void @_ZN2v88internal8compiler14NodeProperties17MergeControlToEndEPNS1_7TFGraphEPNS1_21CommonOperatorBuilderEPNS1_4NodeE(ptr noundef %i.bx, ptr noundef %i.bz, ptr noundef %i.bv) #19
  %14 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %15 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %16 = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 40
  %17 = load ptr, ptr %i.au, align 8              ; 2 uses
  %i.cb = load ptr, ptr %17, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %17, i64 8
  %18 = load ptr, ptr %i.cc, align 8
  %i.cd = load i8, ptr %14, align 8
  %i.ce = call noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder3PhiENS0_21MachineRepresentationEi(ptr noundef nonnull align 8 dereferenceable(16) %18, i8 noundef zeroext %i.cd, i32 noundef 2) #19
  %i.cf = load ptr, ptr %i.bd, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  store ptr %.sroa.0.0, ptr %6, align 8
  store ptr %.sroa.0.0, ptr %15, align 8
  store ptr %i.cf, ptr %16, align 8
  %i.cg = call noundef ptr @_ZN2v88internal8compiler7TFGraph7NewNodeEPKNS1_8OperatorEiPKPNS1_4NodeEb(ptr noundef nonnull align 8 dereferenceable(104) %i.cb, ptr noundef %i.ce, i32 noundef 3, ptr noundef nonnull %6, i1 noundef zeroext false) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  store ptr %i.cg, ptr %i.ca, align 8
  br label %.loopexit171

bb.d:                                             ; preds = %bb.c
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ci = load ptr, ptr %i.ch, align 8            ; 3 uses
  %i.cj = load ptr, ptr %i.b, align 8             ; 5 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 20
  %i.cl = load i32, ptr %i.ck, align 4
  %i.cm = and i32 %i.cl, 251658240
  %.not.i.i = icmp eq i32 %i.cm, 251658240
  %i.cn = ptrtoint ptr %i.ci to i64
  %i.co = add i64 %i.cn, 32
  %i.cp = inttoptr i64 %i.co to ptr               ; 2 uses
  br i1 %.not.i.i, label %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i, label %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i

_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i: ; preds = %bb.d
  %i.cq = load ptr, ptr %i.cp, align 8            ; 2 uses
  %i.cr = ptrtoint ptr %i.cq to i64
  %i.cs = add i64 %i.cr, 16
  %i.ct = inttoptr i64 %i.cs to ptr
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8 ; 2 uses
  %i.cv = load ptr, ptr %i.cu, align 8            ; 2 uses
  %.not.i = icmp eq ptr %i.cv, %i.cj
  br i1 %.not.i, label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit, label %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i

_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i: ; preds = %bb.d
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cp, i64 8 ; 2 uses
  %i.cx = load ptr, ptr %i.cw, align 8            ; 2 uses
  %.not18.i = icmp eq ptr %i.cx, %i.cj
  br i1 %.not18.i, label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit, label %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i

_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i: ; preds = %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i
  %i.cy = phi ptr [ %i.cw, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i ], [ %i.cu, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i ]
  %i.cz = phi ptr [ %i.cx, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i ], [ %i.cv, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i ] ; 2 uses
  %i.da = phi ptr [ %i.ci, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i ], [ %i.cq, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i ]
  %i.db = getelementptr inbounds i8, ptr %i.da, i64 -48 ; 2 uses
  %.not14.i = icmp eq ptr %i.cz, null
  br i1 %.not14.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i
  call void @_ZN2v88internal8compiler4Node9RemoveUseEPNS2_3UseE(ptr noundef nonnull align 8 dereferenceable(32) %i.cz, ptr noundef nonnull %i.db) #19
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i
  store ptr %i.cj, ptr %i.cy, align 8
  %.not15.i = icmp eq ptr %i.cj, null
  br i1 %.not15.i, label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_ZN2v88internal8compiler4Node9AppendUseEPNS2_3UseE(ptr noundef nonnull align 8 dereferenceable(32) %i.cj, ptr noundef nonnull %i.db) #19
  br label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit

_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit: ; preds = %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i, %bb.f, %bb.g
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.dd = load ptr, ptr %i.dc, align 8            ; 3 uses
  %i.de = load ptr, ptr %i.a, align 8             ; 5 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 20
  %i.dg = load i32, ptr %i.df, align 4
  %i.dh = and i32 %i.dg, 251658240
  %.not.i.i115 = icmp eq i32 %i.dh, 251658240
  %i.di = ptrtoint ptr %i.dd to i64
  %i.dj = add i64 %i.di, 32
  %i.dk = inttoptr i64 %i.dj to ptr               ; 2 uses
  br i1 %.not.i.i115, label %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i121, label %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i116

_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i121: ; preds = %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit
  %i.dl = load ptr, ptr %i.dk, align 8            ; 2 uses
  %i.dm = ptrtoint ptr %i.dl to i64
  %i.dn = add i64 %i.dm, 16
  %i.do = inttoptr i64 %i.dn to ptr
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8 ; 2 uses
  %i.dq = load ptr, ptr %i.dp, align 8            ; 2 uses
  %.not.i122 = icmp eq ptr %i.dq, %i.de
  br i1 %.not.i122, label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit123, label %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i118

_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i116: ; preds = %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dk, i64 8 ; 2 uses
  %i.ds = load ptr, ptr %i.dr, align 8            ; 2 uses
  %.not18.i117 = icmp eq ptr %i.ds, %i.de
  br i1 %.not18.i117, label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit123, label %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i118

_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i118: ; preds = %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i116, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i121
  %i.dt = phi ptr [ %i.dr, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i116 ], [ %i.dp, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i121 ]
  %i.du = phi ptr [ %i.ds, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i116 ], [ %i.dq, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i121 ] ; 2 uses
  %i.dv = phi ptr [ %i.dd, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i116 ], [ %i.dl, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i121 ]
  %i.dw = getelementptr inbounds i8, ptr %i.dv, i64 -48 ; 2 uses
  %.not14.i119 = icmp eq ptr %i.du, null
  br i1 %.not14.i119, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i118
  call void @_ZN2v88internal8compiler4Node9RemoveUseEPNS2_3UseE(ptr noundef nonnull align 8 dereferenceable(32) %i.du, ptr noundef nonnull %i.dw) #19
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i118
  store ptr %i.de, ptr %i.dt, align 8
  %.not15.i120 = icmp eq ptr %i.de, null
  br i1 %.not15.i120, label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit123, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZN2v88internal8compiler4Node9AppendUseEPNS2_3UseE(ptr noundef nonnull align 8 dereferenceable(32) %i.de, ptr noundef nonnull %i.dw) #19
  br label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit123

_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit123: ; preds = %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i121, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i116, %bb.i, %bb.j
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.not15.i129 = icmp eq ptr %.sroa.0.0, null
  %19 = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 8
  %i.dy = load ptr, ptr %i.dx, align 8            ; 3 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 20
  %i.ea = load i32, ptr %i.dz, align 4
  %i.eb = and i32 %i.ea, 251658240
  %.not.i.i124 = icmp eq i32 %i.eb, 251658240
  %i.ec = ptrtoint ptr %i.dy to i64
  %i.ed = add i64 %i.ec, 32
  %i.ee = inttoptr i64 %i.ed to ptr               ; 2 uses
  br i1 %.not.i.i124, label %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i130, label %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i125

_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i130: ; preds = %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit123
  %i.ef = load ptr, ptr %i.ee, align 8            ; 2 uses
  %i.eg = ptrtoint ptr %i.ef to i64
  %i.eh = add i64 %i.eg, 16
  %i.ei = inttoptr i64 %i.eh to ptr
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8 ; 2 uses
  %i.ek = load ptr, ptr %i.ej, align 8            ; 2 uses
  %.not.i131 = icmp eq ptr %i.ek, %.sroa.0.0
  br i1 %.not.i131, label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit132, label %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i127

_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i125: ; preds = %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit123
  %i.el = getelementptr inbounds nuw i8, ptr %i.ee, i64 8 ; 2 uses
  %i.em = load ptr, ptr %i.el, align 8            ; 2 uses
  %.not18.i126 = icmp eq ptr %i.em, %.sroa.0.0
  br i1 %.not18.i126, label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit132, label %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i127

_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i127: ; preds = %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i125, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i130
  %i.en = phi ptr [ %i.el, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i125 ], [ %i.ej, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i130 ]
  %i.eo = phi ptr [ %i.em, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i125 ], [ %i.ek, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i130 ] ; 2 uses
  %i.ep = phi ptr [ %i.dy, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i125 ], [ %i.ef, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i130 ]
  %i.eq = getelementptr inbounds i8, ptr %i.ep, i64 -48 ; 2 uses
  %.not14.i128 = icmp eq ptr %i.eo, null
  br i1 %.not14.i128, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i127
  call void @_ZN2v88internal8compiler4Node9RemoveUseEPNS2_3UseE(ptr noundef nonnull align 8 dereferenceable(32) %i.eo, ptr noundef nonnull %i.eq) #19
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i127
  store ptr %.sroa.0.0, ptr %i.en, align 8
  br i1 %.not15.i129, label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit132, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_ZN2v88internal8compiler4Node9AppendUseEPNS2_3UseE(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0, ptr noundef nonnull %i.eq) #19
  br label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit132

_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit132: ; preds = %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i130, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i125, %bb.l, %bb.m
  %.sroa.0.0.copyload.i.i = load i64, ptr %19, align 8
  %.not170 = icmp eq i64 %.sroa.0.0.copyload.i.i, 0
  br i1 %.not170, label %.loopexit171, label %bb.n, !prof !258

bb.n:                                             ; preds = %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit132
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.39) #20
  unreachable

bb.o:                                             ; preds = %bb.b
  switch i32 %i.f, label %bb.p [
    i32 0, label %.loopexit173
    i32 1, label %.loopexit174
  ]

.loopexit173:                                     ; preds = %bb.o
  %i.er = load ptr, ptr %i.b, align 8
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %i.er, ptr %i.es, align 8
  %i.et = load ptr, ptr %i.a, align 8
  %i.eu = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %i.et, ptr %i.eu, align 8
  %i.ev = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr %.sroa.0.0, ptr %i.ev, align 8
  br label %.loopexit171

.loopexit174:                                     ; preds = %bb.o
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ex = load ptr, ptr %i.ew, align 8            ; 2 uses
  %i.ey = load ptr, ptr %i.ex, align 8
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %i.fa = load ptr, ptr %i.ez, align 8
  %i.fb = call noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder5MergeEi(ptr noundef nonnull align 8 dereferenceable(16) %i.fa, i32 noundef 2) #19
  %i.fc = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.fd = load ptr, ptr %i.fc, align 8
  %i.fe = load ptr, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  store ptr %i.fd, ptr %5, align 8
  %i.ff = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.fe, ptr %i.ff, align 8
  %i.fg = call noundef ptr @_ZN2v88internal8compiler7TFGraph7NewNodeEPKNS1_8OperatorEiPKPNS1_4NodeEb(ptr noundef nonnull align 8 dereferenceable(104) %i.ey, ptr noundef %i.fb, i32 noundef 2, ptr noundef nonnull %5, i1 noundef zeroext false) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  store ptr %i.fg, ptr %i.fc, align 8
  %i.fh = load ptr, ptr %i.ew, align 8            ; 2 uses
  %i.fi = load ptr, ptr %i.fh, align 8
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  %i.fk = load ptr, ptr %i.fj, align 8
  %i.fl = call noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder9EffectPhiEi(ptr noundef nonnull align 8 dereferenceable(16) %i.fk, i32 noundef 2) #19
  %i.fm = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.fn = load ptr, ptr %i.fm, align 8
  %i.fo = load ptr, ptr %i.a, align 8
  %i.fp = load ptr, ptr %i.fc, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  store ptr %i.fn, ptr %4, align 8
  %i.fq = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.fo, ptr %i.fq, align 8
  %i.fr = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.fp, ptr %i.fr, align 8
  %i.fs = call noundef ptr @_ZN2v88internal8compiler7TFGraph7NewNodeEPKNS1_8OperatorEiPKPNS1_4NodeEb(ptr noundef nonnull align 8 dereferenceable(104) %i.fi, ptr noundef %i.fl, i32 noundef 3, ptr noundef nonnull %4, i1 noundef zeroext false) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  store ptr %i.fs, ptr %i.fm, align 8
  %20 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %21 = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %22 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ft = getelementptr inbounds nuw i8, ptr %3, i64 16
  %23 = load ptr, ptr %i.ew, align 8              ; 2 uses
  %i.fu = load ptr, ptr %23, align 8
  %i.fv = getelementptr inbounds nuw i8, ptr %23, i64 8
  %24 = load ptr, ptr %i.fv, align 8
  %25 = load i8, ptr %20, align 8
  %26 = call noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder3PhiENS0_21MachineRepresentationEi(ptr noundef nonnull align 8 dereferenceable(16) %24, i8 noundef zeroext %25, i32 noundef 2) #19
  %i.fw = load ptr, ptr %21, align 8
  %i.fx = load ptr, ptr %i.fc, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  store ptr %i.fw, ptr %3, align 8
  store ptr %.sroa.0.0, ptr %22, align 8
  store ptr %i.fx, ptr %i.ft, align 8
  %i.fy = call noundef ptr @_ZN2v88internal8compiler7TFGraph7NewNodeEPKNS1_8OperatorEiPKPNS1_4NodeEb(ptr noundef nonnull align 8 dereferenceable(104) %i.fu, ptr noundef %26, i32 noundef 3, ptr noundef nonnull %3, i1 noundef zeroext false) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  store ptr %i.fy, ptr %21, align 8
  br label %.loopexit171

bb.p:                                             ; preds = %bb.o
  %i.fz = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.ga = load ptr, ptr %i.fz, align 8
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  %i.gc = load ptr, ptr %i.gb, align 8
  %i.gd = load ptr, ptr %i.gc, align 8
  %i.ge = load ptr, ptr %i.gd, align 8
  %i.gf = load ptr, ptr %i.b, align 8
  call void @_ZN2v88internal8compiler4Node11AppendInputEPNS0_4ZoneEPS2_(ptr noundef nonnull align 8 dereferenceable(32) %i.ga, ptr noundef %i.ge, ptr noundef %i.gf) #19
  %i.gg = load ptr, ptr %i.fz, align 8
  %i.gh = load ptr, ptr %i.gb, align 8
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  %i.gj = load ptr, ptr %i.gi, align 8
  %i.gk = add nsw i32 %i.f, 1                     ; 3 uses
  %i.gl = call noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder5MergeEi(ptr noundef nonnull align 8 dereferenceable(16) %i.gj, i32 noundef %i.gk) #19
  call void @_ZN2v88internal8compiler14NodeProperties8ChangeOpEPNS1_4NodeEPKNS1_8OperatorE(ptr noundef %i.gg, ptr noundef %i.gl) #19
  %i.gm = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.gn = load ptr, ptr %i.gm, align 8            ; 3 uses
  %i.go = load ptr, ptr %i.a, align 8             ; 5 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gn, i64 20
  %i.gq = load i32, ptr %i.gp, align 4
  %i.gr = and i32 %i.gq, 251658240
  %.not.i.i133 = icmp eq i32 %i.gr, 251658240
  %i.gs = ptrtoint ptr %i.gn to i64
  %i.gt = add i64 %i.gs, 32
  %i.gu = inttoptr i64 %i.gt to ptr               ; 2 uses
  br i1 %.not.i.i133, label %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i139, label %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i134

_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i139: ; preds = %bb.p
  %i.gv = load ptr, ptr %i.gu, align 8            ; 2 uses
  %i.gw = ptrtoint ptr %i.gv to i64
  %i.gx = add i64 %i.gw, 16
  %i.gy = inttoptr i64 %i.gx to ptr
  %sext163 = shl i64 %i.e, 32
  %i.gz = ashr exact i64 %sext163, 29
  %i.ha = getelementptr inbounds i8, ptr %i.gy, i64 %i.gz ; 2 uses
  %i.hb = load ptr, ptr %i.ha, align 8            ; 2 uses
  %.not.i140 = icmp eq ptr %i.hb, %i.go
  br i1 %.not.i140, label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit141, label %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i136

_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i134: ; preds = %bb.p
  %sext = shl i64 %i.e, 32
  %i.hc = ashr exact i64 %sext, 29
  %i.hd = getelementptr inbounds i8, ptr %i.gu, i64 %i.hc ; 2 uses
  %i.he = load ptr, ptr %i.hd, align 8            ; 2 uses
  %.not18.i135 = icmp eq ptr %i.he, %i.go
  br i1 %.not18.i135, label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit141, label %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i136

_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i136: ; preds = %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i134, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i139
  %i.hf = phi ptr [ %i.hd, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i134 ], [ %i.ha, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i139 ]
  %i.hg = phi ptr [ %i.he, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i134 ], [ %i.hb, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i139 ] ; 2 uses
  %i.hh = phi ptr [ %i.gn, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i134 ], [ %i.gv, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i139 ]
  %i.hi = xor i64 %i.e, -1
  %sext164 = shl i64 %i.hi, 32
  %i.hj = ashr exact i64 %sext164, 32
  %i.hk = getelementptr inbounds [24 x i8], ptr %i.hh, i64 %i.hj ; 2 uses
  %.not14.i137 = icmp eq ptr %i.hg, null
  br i1 %.not14.i137, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i136
  call void @_ZN2v88internal8compiler4Node9RemoveUseEPNS2_3UseE(ptr noundef nonnull align 8 dereferenceable(32) %i.hg, ptr noundef %i.hk) #19
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i136
  store ptr %i.go, ptr %i.hf, align 8
  %.not15.i138 = icmp eq ptr %i.go, null
  br i1 %.not15.i138, label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit141, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @_ZN2v88internal8compiler4Node9AppendUseEPNS2_3UseE(ptr noundef nonnull align 8 dereferenceable(32) %i.go, ptr noundef %i.hk) #19
  br label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit141

_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit141: ; preds = %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i139, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i134, %bb.r, %bb.s
  %i.hl = load ptr, ptr %i.gm, align 8
  %i.hm = load ptr, ptr %i.gb, align 8
  %i.hn = load ptr, ptr %i.hm, align 8
  %i.ho = load ptr, ptr %i.hn, align 8
  %i.hp = load ptr, ptr %i.fz, align 8
  call void @_ZN2v88internal8compiler4Node11AppendInputEPNS0_4ZoneEPS2_(ptr noundef nonnull align 8 dereferenceable(32) %i.hl, ptr noundef %i.ho, ptr noundef %i.hp) #19
  %i.hq = load ptr, ptr %i.gm, align 8
  %i.hr = load ptr, ptr %i.gb, align 8
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 8
  %i.ht = load ptr, ptr %i.hs, align 8
  %i.hu = call noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder9EffectPhiEi(ptr noundef nonnull align 8 dereferenceable(16) %i.ht, i32 noundef %i.gk) #19
  call void @_ZN2v88internal8compiler14NodeProperties8ChangeOpEPNS1_4NodeEPKNS1_8OperatorE(ptr noundef %i.hq, ptr noundef %i.hu) #19
  %i.hv = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 5 uses
  %27 = xor i64 %i.e, -1
  %sext167 = shl i64 %27, 32
  %28 = ashr exact i64 %sext167, 32
  %.not15.i147 = icmp eq ptr %.sroa.0.0, null
  %29 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %30 = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 8
  %i.hw = load ptr, ptr %i.hv, align 8            ; 3 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 20
  %i.hy = load i32, ptr %i.hx, align 4
  %i.hz = and i32 %i.hy, 251658240
  %.not.i.i142 = icmp eq i32 %i.hz, 251658240
  %i.ia = ptrtoint ptr %i.hw to i64
  %i.ib = add i64 %i.ia, 32
  %i.ic = inttoptr i64 %i.ib to ptr               ; 2 uses
  %sext166 = shl i64 %i.e, 32
  %31 = ashr exact i64 %sext166, 29               ; 2 uses
  br i1 %.not.i.i142, label %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i148, label %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i143

_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i148: ; preds = %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit141
  %i.id = load ptr, ptr %i.ic, align 8            ; 2 uses
  %i.ie = ptrtoint ptr %i.id to i64
  %i.if = add i64 %i.ie, 16
  %i.ig = inttoptr i64 %i.if to ptr
  %i.ih = getelementptr inbounds i8, ptr %i.ig, i64 %31 ; 2 uses
  %i.ii = load ptr, ptr %i.ih, align 8            ; 2 uses
  %.not.i149 = icmp eq ptr %i.ii, %.sroa.0.0
  br i1 %.not.i149, label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit150, label %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i145

_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i143: ; preds = %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit141
  %i.ij = getelementptr inbounds i8, ptr %i.ic, i64 %31 ; 2 uses
  %i.ik = load ptr, ptr %i.ij, align 8            ; 2 uses
  %.not18.i144 = icmp eq ptr %i.ik, %.sroa.0.0
  br i1 %.not18.i144, label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit150, label %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i145

_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i145: ; preds = %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i143, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i148
  %i.il = phi ptr [ %i.ij, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i143 ], [ %i.ih, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i148 ]
  %i.im = phi ptr [ %i.ik, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i143 ], [ %i.ii, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i148 ] ; 2 uses
  %i.in = phi ptr [ %i.hw, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i143 ], [ %i.id, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i148 ]
  %i.io = getelementptr inbounds [24 x i8], ptr %i.in, i64 %28 ; 2 uses
  %.not14.i146 = icmp eq ptr %i.im, null
  br i1 %.not14.i146, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i145
  call void @_ZN2v88internal8compiler4Node9RemoveUseEPNS2_3UseE(ptr noundef nonnull align 8 dereferenceable(32) %i.im, ptr noundef %i.io) #19
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i145
  store ptr %.sroa.0.0, ptr %i.il, align 8
  br i1 %.not15.i147, label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit150, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @_ZN2v88internal8compiler4Node9AppendUseEPNS2_3UseE(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0, ptr noundef %i.io) #19
  br label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit150

_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit150: ; preds = %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i148, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i143, %bb.u, %bb.v
  %i.ip = load ptr, ptr %i.hv, align 8
  %i.iq = load ptr, ptr %i.gb, align 8
  %i.ir = load ptr, ptr %i.iq, align 8
  %i.is = load ptr, ptr %i.ir, align 8
  %i.it = load ptr, ptr %i.fz, align 8
  call void @_ZN2v88internal8compiler4Node11AppendInputEPNS0_4ZoneEPS2_(ptr noundef nonnull align 8 dereferenceable(32) %i.ip, ptr noundef %i.is, ptr noundef %i.it) #19
  %i.iu = load ptr, ptr %i.hv, align 8
  %i.iv = load ptr, ptr %i.gb, align 8
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 8
  %i.ix = load ptr, ptr %i.iw, align 8
  %i.iy = load i8, ptr %29, align 8
  %i.iz = call noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder3PhiENS0_21MachineRepresentationEi(ptr noundef nonnull align 8 dereferenceable(16) %i.ix, i8 noundef zeroext %i.iy, i32 noundef %i.gk) #19
  call void @_ZN2v88internal8compiler14NodeProperties8ChangeOpEPNS1_4NodeEPKNS1_8OperatorE(ptr noundef %i.iu, ptr noundef %i.iz) #19
  %i.ja = load ptr, ptr %i.hv, align 8
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 8
  %.sroa.0.0.copyload.i.i151 = load i64, ptr %i.jb, align 8 ; 2 uses
  %.not168 = icmp eq i64 %.sroa.0.0.copyload.i.i151, 0
  br i1 %.not168, label %.loopexit171, label %bb.w

bb.w:                                             ; preds = %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit150
  %.sroa.0.0.copyload.i.i152 = load i64, ptr %30, align 8 ; 2 uses
  %.not169 = icmp eq i64 %.sroa.0.0.copyload.i.i152, 0
  br i1 %.not169, label %bb.x, label %bb.y, !prof !11

bb.x:                                             ; preds = %bb.w
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.40) #20
  unreachable

bb.y:                                             ; preds = %bb.w
  %i.jc = load ptr, ptr %i.gb, align 8
  %i.jd = load ptr, ptr %i.jc, align 8
  %i.je = load ptr, ptr %i.jd, align 8
  %i.jf = call i64 @_ZN2v88internal8compiler4Type5UnionES2_S2_PNS0_4ZoneE(i64 %.sroa.0.0.copyload.i.i151, i64 %.sroa.0.0.copyload.i.i152, ptr noundef %i.je) #19
  %i.jg = load ptr, ptr %i.hv, align 8
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 8
  store i64 %i.jf, ptr %i.jh, align 8
  br label %.loopexit171

.loopexit171:                                     ; preds = %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit132, %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit150, %bb.y, %.loopexit174, %.loopexit173, %.loopexit
  %i.ji = load i64, ptr %i.d, align 8
  %i.jj = add i64 %i.ji, 1
  store i64 %i.jj, ptr %i.d, align 8
  store <2 x ptr> %i.c, ptr %i.a, align 8
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #18

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inlinehint nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { mustprogress nofree nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #19 = { nounwind }
attributes #20 = { noreturn nounwind }
attributes #21 = { builtin nounwind }
attributes #22 = { nounwind willreturn memory(read) }
attributes #23 = { builtin nounwind allocsize(0) }

!llvm.module.flags = !{!6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = distinct !{null}
!1 = distinct !{!1, !14}
!2 = distinct !{null, null}
!3 = distinct !{null, null, null, null}
!4 = distinct !{!4, !14}
!5 = distinct !{!5, !14}
!6 = !{i32 8, !"PIC Level", i32 2}
!7 = !{i32 7, !"PIE Level", i32 2}
!8 = !{i32 7, !"uwtable", i32 2}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!11 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!12 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!13 = !{!"branch_weights", !"expected", i32 2861880, i32 2144621768}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{i8 0, i8 2}
!16 = !{}
!17 = !{ptr @_ZN2v88internal12StdoutStreamD1Ev}
!18 = !{ptr @_ZN2v88internal8compiler16JSGraphAssemblerD2Ev}
!19 = !{ptr @_ZN2v88internal8OFStreamD1Ev}
!20 = distinct !{!20, i1 true, !"_ZNK2v88internal8compiler22JSSetNamedPropertyNode5valueEv"}
!21 = distinct !{!21, !20, !"_ZNK2v88internal8compiler22JSSetNamedPropertyNode5valueEv: argument 0"}
!22 = distinct !{!22, i1 true, !"_ZNK2v88internal8compiler28JSDefineNamedOwnPropertyNode5valueEv"}
!23 = distinct !{!23, !22, !"_ZNK2v88internal8compiler28JSDefineNamedOwnPropertyNode5valueEv: argument 0"}
!24 = !{!21}
!25 = !{!23}
!26 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!27 = distinct !{!27, i1 true, !"_ZNK2v88internal8compiler42JSFindNonDefaultConstructorOrConstructNode13this_functionEv"}
!28 = distinct !{!28, !27, !"_ZNK2v88internal8compiler42JSFindNonDefaultConstructorOrConstructNode13this_functionEv: argument 0"}
!29 = distinct !{!29, i1 true, !"_ZNK2v88internal8compiler42JSFindNonDefaultConstructorOrConstructNode10new_targetEv"}
!30 = distinct !{!30, !29, !"_ZNK2v88internal8compiler42JSFindNonDefaultConstructorOrConstructNode10new_targetEv: argument 0"}
!31 = distinct !{!31, i1 true, !"_ZN2v88internal8compiler7JSGraph15BooleanConstantEb"}
!32 = distinct !{!32, !31, !"_ZN2v88internal8compiler7JSGraph15BooleanConstantEb: argument 0"}
!33 = distinct !{!33, i1 true, !"_ZNK2v88internal8compiler17JSNodeWrapperBase7contextEv"}
!34 = distinct !{!34, !33, !"_ZNK2v88internal8compiler17JSNodeWrapperBase7contextEv: argument 0"}
!35 = distinct !{!35, i1 true, !"_ZN2v88internal8compiler7JSGraph15BooleanConstantEb"}
!36 = distinct !{!36, !35, !"_ZN2v88internal8compiler7JSGraph15BooleanConstantEb: argument 0"}
!37 = distinct !{null}
!38 = !{!28}
!39 = !{!30}
!40 = !{!32}
!41 = !{!34}
!42 = !{!36}
!43 = distinct !{!43, i1 true, !"_ZNK2v88internal8compiler14JSBinaryOpNode4leftEv"}
!44 = distinct !{!44, !43, !"_ZNK2v88internal8compiler14JSBinaryOpNode4leftEv: argument 0"}
!45 = distinct !{!45, i1 true, !"_ZNK2v88internal8compiler14JSBinaryOpNode5rightEv"}
!46 = distinct !{!46, !45, !"_ZNK2v88internal8compiler14JSBinaryOpNode5rightEv: argument 0"}
!47 = distinct !{!47, i1 true, !"_ZNK2v88internal8compiler17JSNodeWrapperBase7contextEv"}
!48 = distinct !{!48, !47, !"_ZNK2v88internal8compiler17JSNodeWrapperBase7contextEv: argument 0"}
!49 = distinct !{null}
!50 = !{!44}
!51 = !{!46}
!52 = !{!48}
!53 = distinct !{!53, i1 true, !"_ZN2v88internal8compiler7JSGraph15BooleanConstantEb"}
!54 = distinct !{!54, !53, !"_ZN2v88internal8compiler7JSGraph15BooleanConstantEb: argument 0"}
!55 = !{!54}
!56 = distinct !{!56, i1 true, !"_ZNK2v88internal8compiler17JSStoreGlobalNode5valueEv"}
!57 = distinct !{!57, !56, !"_ZNK2v88internal8compiler17JSStoreGlobalNode5valueEv: argument 0"}
!58 = !{!57}
!59 = distinct !{!59, i1 true, !"_ZNK2v88internal8compiler15JSLoadNamedNode6objectEv"}
!60 = distinct !{!60, !59, !"_ZNK2v88internal8compiler15JSLoadNamedNode6objectEv: argument 0"}
!61 = !{!60}
!62 = distinct !{!62, i1 true, !"_ZNK2v88internal8compiler22JSSetNamedPropertyNode5valueEv"}
!63 = distinct !{!63, !62, !"_ZNK2v88internal8compiler22JSSetNamedPropertyNode5valueEv: argument 0"}
!64 = !{!63}
!65 = distinct !{!65, i1 true, !"_ZNK2v88internal8compiler17JSHasPropertyNode3keyEv"}
!66 = distinct !{!66, !65, !"_ZNK2v88internal8compiler17JSHasPropertyNode3keyEv: argument 0"}
!67 = !{!66}
!68 = distinct !{!68, i1 true, !"_ZNK2v88internal8compiler18JSLoadPropertyNode3keyEv"}
!69 = distinct !{!69, !68, !"_ZNK2v88internal8compiler18JSLoadPropertyNode3keyEv: argument 0"}
!70 = !{!69}
!71 = distinct !{!71, i1 true, !"_ZNK2v88internal8compiler22JSSetKeyedPropertyNode3keyEv"}
!72 = distinct !{!72, !71, !"_ZNK2v88internal8compiler22JSSetKeyedPropertyNode3keyEv: argument 0"}
!73 = distinct !{!73, i1 true, !"_ZNK2v88internal8compiler22JSSetKeyedPropertyNode5valueEv"}
!74 = distinct !{!74, !73, !"_ZNK2v88internal8compiler22JSSetKeyedPropertyNode5valueEv: argument 0"}
!75 = !{!72}
!76 = !{!74}
!77 = distinct !{!77, i1 true, !"_ZNK2v88internal8compiler28JSDefineKeyedOwnPropertyNode3keyEv"}
!78 = distinct !{!78, !77, !"_ZNK2v88internal8compiler28JSDefineKeyedOwnPropertyNode3keyEv: argument 0"}
!79 = distinct !{!79, i1 true, !"_ZNK2v88internal8compiler28JSDefineKeyedOwnPropertyNode5valueEv"}
!80 = distinct !{!80, !79, !"_ZNK2v88internal8compiler28JSDefineKeyedOwnPropertyNode5valueEv: argument 0"}
!81 = !{!78}
!82 = !{!80}
!83 = distinct !{!83, i1 true, !"_ZNK2v88internal8compiler28JSDefineNamedOwnPropertyNode5valueEv"}
!84 = distinct !{!84, !83, !"_ZNK2v88internal8compiler28JSDefineNamedOwnPropertyNode5valueEv: argument 0"}
!85 = !{!84}
!86 = distinct !{!86, i1 true, !"_ZNK2v88internal8compiler37JSDefineKeyedOwnPropertyInLiteralNode5flagsEv"}
!87 = distinct !{!87, !86, !"_ZNK2v88internal8compiler37JSDefineKeyedOwnPropertyInLiteralNode5flagsEv: argument 0"}
!88 = distinct !{!88, i1 true, !"_ZNK2v88internal8compiler37JSDefineKeyedOwnPropertyInLiteralNode4nameEv"}
!89 = distinct !{!89, !88, !"_ZNK2v88internal8compiler37JSDefineKeyedOwnPropertyInLiteralNode4nameEv: argument 0"}
!90 = distinct !{!90, i1 true, !"_ZNK2v88internal8compiler37JSDefineKeyedOwnPropertyInLiteralNode5valueEv"}
!91 = distinct !{!91, !90, !"_ZNK2v88internal8compiler37JSDefineKeyedOwnPropertyInLiteralNode5valueEv: argument 0"}
!92 = !{!87}
!93 = !{!89}
!94 = !{!91}
!95 = distinct !{!95, i1 true, !"_ZNK2v88internal8compiler25JSStoreInArrayLiteralNode5indexEv"}
!96 = distinct !{!96, !95, !"_ZNK2v88internal8compiler25JSStoreInArrayLiteralNode5indexEv: argument 0"}
!97 = distinct !{!97, i1 true, !"_ZNK2v88internal8compiler25JSStoreInArrayLiteralNode5valueEv"}
!98 = distinct !{!98, !97, !"_ZNK2v88internal8compiler25JSStoreInArrayLiteralNode5valueEv: argument 0"}
!99 = !{!96}
!100 = !{!98}
!101 = distinct !{!101, i1 true, !"_ZNK2v88internal8compiler17JSGetIteratorNode8receiverEv"}
!102 = distinct !{!102, !101, !"_ZNK2v88internal8compiler17JSGetIteratorNode8receiverEv: argument 0"}
!103 = distinct !{!103, i1 true, !"_ZNK2v88internal8compiler17JSNodeWrapperBase7contextEv"}
!104 = distinct !{!104, !103, !"_ZNK2v88internal8compiler17JSNodeWrapperBase7contextEv: argument 0"}
!105 = distinct !{!105, i1 true, !"_ZNK2v88internal8compiler17JSGetIteratorNode15feedback_vectorEv"}
!106 = distinct !{!106, !105, !"_ZNK2v88internal8compiler17JSGetIteratorNode15feedback_vectorEv: argument 0"}
!107 = distinct !{!107, i1 true, !"_ZNK2v88internal8compiler17JSGetIteratorNode15feedback_vectorEv"}
!108 = distinct !{!108, !107, !"_ZNK2v88internal8compiler17JSGetIteratorNode15feedback_vectorEv: argument 0"}
!109 = !{!102}
!110 = !{!104}
!111 = !{!106}
!112 = !{!108}
!113 = distinct !{!113, !14}
!114 = distinct !{!114, !14}
!115 = distinct !{!115, i1 true, !"_ZN2v88internal8compiler12_GLOBAL__N_120ForPropertyCellValueENS0_21MachineRepresentationENS1_4TypeENS1_11OptionalRefINS1_6MapRefEEENS1_7NameRefE"}
!116 = distinct !{!116, !115, !"_ZN2v88internal8compiler12_GLOBAL__N_120ForPropertyCellValueENS0_21MachineRepresentationENS1_4TypeENS1_11OptionalRefINS1_6MapRefEEENS1_7NameRefE: argument 0"}
!117 = distinct !{!117, i1 true, !"_ZN2v88internal8compiler12_GLOBAL__N_120ForPropertyCellValueENS0_21MachineRepresentationENS1_4TypeENS1_11OptionalRefINS1_6MapRefEEENS1_7NameRefE"}
!118 = distinct !{!118, !117, !"_ZN2v88internal8compiler12_GLOBAL__N_120ForPropertyCellValueENS0_21MachineRepresentationENS1_4TypeENS1_11OptionalRefINS1_6MapRefEEENS1_7NameRefE: argument 0"}
!119 = distinct !{!119, i1 true, !"_ZN2v88internal8compiler12_GLOBAL__N_120ForPropertyCellValueENS0_21MachineRepresentationENS1_4TypeENS1_11OptionalRefINS1_6MapRefEEENS1_7NameRefE"}
!120 = distinct !{!120, !119, !"_ZN2v88internal8compiler12_GLOBAL__N_120ForPropertyCellValueENS0_21MachineRepresentationENS1_4TypeENS1_11OptionalRefINS1_6MapRefEEENS1_7NameRefE: argument 0"}
!121 = !{!116}
!122 = !{!118}
!123 = !{!120}
!124 = distinct !{!124, i1 true, !"_ZNK2v88internal8compiler24JSLoadNamedFromSuperNode11home_objectEv"}
!125 = distinct !{!125, !124, !"_ZNK2v88internal8compiler24JSLoadNamedFromSuperNode11home_objectEv: argument 0"}
!126 = distinct !{!126, !14}
!127 = !{!125}
!128 = distinct !{!128, !14}
!129 = distinct !{!129, !14}
!130 = distinct !{!130, i1 true, !"_ZN2v88internal8compiler29JSNativeContextSpecialization17BuildPropertyTestEPNS1_4NodeES4_RKNS1_18PropertyAccessInfoE"}
!131 = distinct !{!131, !130, !"_ZN2v88internal8compiler29JSNativeContextSpecialization17BuildPropertyTestEPNS1_4NodeES4_RKNS1_18PropertyAccessInfoE: argument 0"}
!132 = distinct !{!132, i1 true, !"_ZN2v88internal8compiler7JSGraph15BooleanConstantEb"}
!133 = distinct !{!133, !132, !"_ZN2v88internal8compiler7JSGraph15BooleanConstantEb: argument 0"}
!134 = !{!131}
!135 = !{!133, !131}
!136 = distinct !{!136, !14}
!137 = distinct !{!137, !14}
!138 = distinct !{!138, i1 true, !"_ZNK2v88internal8compiler15JSForInNextNode8receiverEv"}
!139 = distinct !{!139, !138, !"_ZNK2v88internal8compiler15JSForInNextNode8receiverEv: argument 0"}
!140 = distinct !{!140, i1 true, !"_ZNK2v88internal8compiler15JSForInNextNode10cache_typeEv"}
!141 = distinct !{!141, !140, !"_ZNK2v88internal8compiler15JSForInNextNode10cache_typeEv: argument 0"}
!142 = distinct !{!142, i1 true, !"_ZNK2v88internal8compiler15JSForInNextNode5indexEv"}
!143 = distinct !{!143, !142, !"_ZNK2v88internal8compiler15JSForInNextNode5indexEv: argument 0"}
!144 = !{!139}
!145 = !{!141}
!146 = !{!143}
!147 = distinct !{!147, i1 true, !"_ZN2v88internal8compiler7JSGraph15BooleanConstantEb"}
!148 = distinct !{!148, !147, !"_ZN2v88internal8compiler7JSGraph15BooleanConstantEb: argument 0"}
!149 = !{!148}
!150 = distinct !{!150, !14}
!151 = distinct !{!151, !14}
!152 = distinct !{null, null, null, null, null, null}
!153 = distinct !{!153, i1 true, !"_ZN2v88internal8compiler16JSGraphAssembler10CatchScope9OutermostEPNS0_4ZoneE"}
!154 = distinct !{!154, !153, !"_ZN2v88internal8compiler16JSGraphAssembler10CatchScope9OutermostEPNS0_4ZoneE: argument 0"}
!155 = distinct !{ptr @_ZN2v88internal8compiler29JSNativeContextSpecialization36ReleaseEffectAndControlFromAssemblerEPNS1_16JSGraphAssemblerE, null}
!156 = distinct !{!156, i1 true, !"_ZN2v88internal8compiler16JSGraphAssembler10CatchScope9OutermostEPNS0_4ZoneE"}
!157 = distinct !{!157, !156, !"_ZN2v88internal8compiler16JSGraphAssembler10CatchScope9OutermostEPNS0_4ZoneE: argument 0"}
!158 = distinct !{null, null, null, null, null}
!159 = distinct !{!159, i1 true, !"_ZN2v88internal5TNodeINS0_12JSTypedArrayEE13UncheckedCastEPNS0_8compiler4NodeE"}
!160 = distinct !{!160, !159, !"_ZN2v88internal5TNodeINS0_12JSTypedArrayEE13UncheckedCastEPNS0_8compiler4NodeE: argument 0"}
!161 = distinct !{!161, i1 true, !"_ZN2v88internal5TNodeINS0_7ContextEE13UncheckedCastEPNS0_8compiler4NodeE"}
!162 = distinct !{!162, !161, !"_ZN2v88internal5TNodeINS0_7ContextEE13UncheckedCastEPNS0_8compiler4NodeE: argument 0"}
!163 = distinct !{!163, i1 true, !"_ZN2v88internal8compiler16JSGraphAssembler10CatchScope9OutermostEPNS0_4ZoneE"}
!164 = distinct !{!164, !163, !"_ZN2v88internal8compiler16JSGraphAssembler10CatchScope9OutermostEPNS0_4ZoneE: argument 0"}
!165 = distinct !{!165, i1 true, !"_ZN2v88internal8compiler16JSGraphAssembler17EnterMachineGraphINS0_5BoolTENS0_7BooleanEEENS0_5TNodeIT_EENS6_IT0_EENS1_7UseInfoE"}
!166 = distinct !{!166, !165, !"_ZN2v88internal8compiler16JSGraphAssembler17EnterMachineGraphINS0_5BoolTENS0_7BooleanEEENS0_5TNodeIT_EENS6_IT0_EENS1_7UseInfoE: argument 0"}
!167 = distinct !{!167, i1 true, !"_ZN2v88internal8compiler14GraphAssembler7AddNodeINS0_5BoolTEEENS0_5TNodeIT_EEPNS1_4NodeE"}
!168 = distinct !{!168, !167, !"_ZN2v88internal8compiler14GraphAssembler7AddNodeINS0_5BoolTEEENS0_5TNodeIT_EEPNS1_4NodeE: argument 0"}
!169 = distinct !{!169, i1 true, !"_ZN2v88internal8compiler16JSGraphAssembler17EnterMachineGraphINS0_6Int32TENS0_3SmiEEENS0_5TNodeIT_EENS6_IT0_EENS1_7UseInfoE"}
!170 = distinct !{!170, !169, !"_ZN2v88internal8compiler16JSGraphAssembler17EnterMachineGraphINS0_6Int32TENS0_3SmiEEENS0_5TNodeIT_EENS6_IT0_EENS1_7UseInfoE: argument 0"}
!171 = distinct !{!171, i1 true, !"_ZN2v88internal8compiler14GraphAssembler7AddNodeINS0_6Int32TEEENS0_5TNodeIT_EEPNS1_4NodeE"}
!172 = distinct !{!172, !171, !"_ZN2v88internal8compiler14GraphAssembler7AddNodeINS0_6Int32TEEENS0_5TNodeIT_EEPNS1_4NodeE: argument 0"}
!173 = distinct !{!173, i1 true, !"_ZN2v88internal8compiler16JSGraphAssembler10CatchScope9OutermostEPNS0_4ZoneE"}
!174 = distinct !{!174, !173, !"_ZN2v88internal8compiler16JSGraphAssembler10CatchScope9OutermostEPNS0_4ZoneE: argument 0"}
!175 = distinct !{!175, i1 true, !"_ZN2v88internal8compiler16JSGraphAssembler15MachineSelectIfINS0_7BooleanEEENS2_10IfBuilder1IT_NS0_7Word32TEEENS0_5TNodeIS7_EE"}
!176 = distinct !{!176, !175, !"_ZN2v88internal8compiler16JSGraphAssembler15MachineSelectIfINS0_7BooleanEEENS2_10IfBuilder1IT_NS0_7Word32TEEENS0_5TNodeIS7_EE: argument 0"}
!177 = distinct !{null, null}
!178 = !{!154}
!179 = !{!157}
!180 = !{!160}
!181 = !{!162}
!182 = !{!164}
!183 = !{!166}
!184 = !{!168, !166}
!185 = !{!170}
!186 = !{!172, !170}
!187 = !{!174}
!188 = !{!176}
!189 = distinct !{!189, !14}
!190 = distinct !{!190, !14}
!191 = distinct !{!191, i1 true, !"_ZN2v88internal8compiler14GraphAssembler17MakeDeferredLabelIJEEENS1_6detail29GraphAssemblerLabelForXHelperINS0_21MachineRepresentationEvJDpT_EE4TypeES8_"}
!192 = distinct !{!192, !191, !"_ZN2v88internal8compiler14GraphAssembler17MakeDeferredLabelIJEEENS1_6detail29GraphAssemblerLabelForXHelperINS0_21MachineRepresentationEvJDpT_EE4TypeES8_: argument 0"}
!193 = distinct !{!193, i1 true, !"_ZN2v88internal8compiler14GraphAssembler12MakeLabelForIJEEENS1_6detail29GraphAssemblerLabelForXHelperINS0_21MachineRepresentationEvJDpT_EE4TypeENS1_23GraphAssemblerLabelTypeES8_"}
!194 = distinct !{!194, !193, !"_ZN2v88internal8compiler14GraphAssembler12MakeLabelForIJEEENS1_6detail29GraphAssemblerLabelForXHelperINS0_21MachineRepresentationEvJDpT_EE4TypeENS1_23GraphAssemblerLabelTypeES8_: argument 0"}
!195 = distinct !{!195, i1 true, !"_ZN2v88internal8compiler14GraphAssembler9MakeLabelIJEEENS1_6detail29GraphAssemblerLabelForXHelperINS0_21MachineRepresentationEvJDpT_EE4TypeES8_"}
!196 = distinct !{!196, !195, !"_ZN2v88internal8compiler14GraphAssembler9MakeLabelIJEEENS1_6detail29GraphAssemblerLabelForXHelperINS0_21MachineRepresentationEvJDpT_EE4TypeES8_: argument 0"}
!197 = distinct !{!197, i1 true, !"_ZN2v88internal8compiler14GraphAssembler12MakeLabelForIJEEENS1_6detail29GraphAssemblerLabelForXHelperINS0_21MachineRepresentationEvJDpT_EE4TypeENS1_23GraphAssemblerLabelTypeES8_"}
!198 = distinct !{!198, !197, !"_ZN2v88internal8compiler14GraphAssembler12MakeLabelForIJEEENS1_6detail29GraphAssemblerLabelForXHelperINS0_21MachineRepresentationEvJDpT_EE4TypeENS1_23GraphAssemblerLabelTypeES8_: argument 0"}
!199 = distinct !{!199, i1 true, !"_ZN2v88internal8compiler14GraphAssembler9MakeLabelIJNS0_21MachineRepresentationEEEENS1_6detail29GraphAssemblerLabelForXHelperIS4_vJDpT_EE4TypeES8_"}
!200 = distinct !{!200, !199, !"_ZN2v88internal8compiler14GraphAssembler9MakeLabelIJNS0_21MachineRepresentationEEEENS1_6detail29GraphAssemblerLabelForXHelperIS4_vJDpT_EE4TypeES8_: argument 0"}
!201 = distinct !{!201, i1 true, !"_ZN2v88internal8compiler14GraphAssembler12MakeLabelForIJNS0_21MachineRepresentationEEEENS1_6detail29GraphAssemblerLabelForXHelperIS4_vJDpT_EE4TypeENS1_23GraphAssemblerLabelTypeES8_"}
!202 = distinct !{!202, !201, !"_ZN2v88internal8compiler14GraphAssembler12MakeLabelForIJNS0_21MachineRepresentationEEEENS1_6detail29GraphAssemblerLabelForXHelperIS4_vJDpT_EE4TypeENS1_23GraphAssemblerLabelTypeES8_: argument 0"}
!203 = distinct !{!203, i1 true, !"_ZNKSt8functionIFN2v88internal5TNodeINS1_7BooleanEEEvEEclEv"}
!204 = distinct !{!204, !203, !"_ZNKSt8functionIFN2v88internal5TNodeINS1_7BooleanEEEvEEclEv: argument 0"}
!205 = distinct !{null}
!206 = distinct !{!206, i1 true, !"_ZNKSt8functionIFN2v88internal5TNodeINS1_7BooleanEEEvEEclEv"}
!207 = distinct !{!207, !206, !"_ZNKSt8functionIFN2v88internal5TNodeINS1_7BooleanEEEvEEclEv: argument 0"}
!208 = distinct !{!208, i1 true, !"_ZN2v88internal8compiler19GraphAssemblerLabelILm1EE5PhiAtINS0_7BooleanEEENS0_5TNodeIT_EEm"}
!209 = distinct !{!209, !208, !"_ZN2v88internal8compiler19GraphAssemblerLabelILm1EE5PhiAtINS0_7BooleanEEENS0_5TNodeIT_EEm: argument 0"}
!210 = distinct !{!210, i1 true, !"_ZN2v88internal5TNodeINS0_7BooleanEE13UncheckedCastEPNS0_8compiler4NodeE"}
!211 = distinct !{!211, !210, !"_ZN2v88internal5TNodeINS0_7BooleanEE13UncheckedCastEPNS0_8compiler4NodeE: argument 0"}
!212 = !{!192}
!213 = !{!194}
!214 = !{!194, !192}
!215 = !{!196}
!216 = !{!198}
!217 = !{!198, !196}
!218 = !{!200}
!219 = !{!202}
!220 = !{!202, !200}
!221 = !{!204}
!222 = !{!207}
!223 = !{!209}
!224 = !{!211, !209}
!225 = distinct !{!225, i1 true, !"_ZN2v88internal5TNodeINS0_6ObjectEEaSES3_"}
!226 = distinct !{!226, !225, !"_ZN2v88internal5TNodeINS0_6ObjectEEaSES3_: argument 0"}
!227 = distinct !{!227, i1 true, !"_ZN2v88internal5TNodeINS0_6ObjectEEaSES3_"}
!228 = distinct !{!228, !227, !"_ZN2v88internal5TNodeINS0_6ObjectEEaSES3_: argument 0"}
!229 = !{!226}
!230 = !{!228}
!231 = !{ptr @_ZN2v88internal8OFStreamD0Ev, ptr @_ZN2v88internal8OFStreamD1Ev}
!232 = !{ptr @_ZN2v88internal8OFStreamD0Ev}
!233 = !{ptr @_ZN2v88internal12StdoutStreamD0Ev, ptr @_ZN2v88internal12StdoutStreamD1Ev}
!234 = !{ptr @_ZN2v88internal12StdoutStreamD0Ev}
!235 = distinct !{null, null, null, null}
!236 = distinct !{null, null, null, null}
!237 = distinct !{!237, !14}
!238 = distinct !{null, null, null, null}
!239 = distinct !{null, null, null, null}
!240 = distinct !{!240, !14}
!241 = distinct !{!241, !14}
!242 = distinct !{!242, !14}
!243 = !{i64 8}
!244 = distinct !{!244, !14}
!245 = distinct !{!245, !14}
!246 = distinct !{!246, !14}
!247 = distinct !{!247, !14}
!248 = distinct !{!248, !14}
!249 = distinct !{!249, !14}
!250 = distinct !{!250, !14}
!251 = distinct !{!251, !14}
!252 = distinct !{!252, !14}
!253 = distinct !{!253, !14}
!254 = distinct !{!254, !14}
!255 = distinct !{!255, !14}
!256 = distinct !{!256, !14}
!257 = distinct !{!257, !14}
!258 = !{!"branch_weights", i32 -2147483648, i32 0}
end_hunk_0
