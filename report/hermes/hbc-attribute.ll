Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/hbc-attribute?download=true
inline.NumInlined: 979
inline.NumDeleted: 553
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN12_GLOBAL__N_112UsageCounter10afterStartEv:bb.a
  call void %i.dg(ptr noundef nonnull align 8 dereferenceable(280) %.pre135.i) #24, !inline_history !324
  %.pre.i106.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !152
  br label %_ZNK6hermes3hbc14BCProviderBase12getDebugInfoEv.exit107.i

_ZNK6hermes3hbc14BCProviderBase12getDebugInfoEv.exit107.i: ; preds = %bb.s, %_ZNK6hermes3hbc14BCProviderBase12getDebugInfoEv.exit104.i, %_ZNK6hermes3hbc14BCProviderBase12getDebugInfoEv.exit104.thread.i
  %.sroa.7.0.copyload152.i = phi i64 [ %.sroa.7.0.copyload.i, %bb.s ], [ %.sroa.7.0.copyload.i, %_ZNK6hermes3hbc14BCProviderBase12getDebugInfoEv.exit104.i ], [ %.sroa.7.0.copyload149.i, %_ZNK6hermes3hbc14BCProviderBase12getDebugInfoEv.exit104.thread.i ] ; 4 uses
  %.sroa.041.0.copyload151.i = phi ptr [ %.sroa.041.0.copyload.i, %bb.s ], [ %.sroa.041.0.copyload.i, %_ZNK6hermes3hbc14BCProviderBase12getDebugInfoEv.exit104.i ], [ %.sroa.041.0.copyload147.i, %_ZNK6hermes3hbc14BCProviderBase12getDebugInfoEv.exit104.thread.i ] ; 4 uses
  %i.dh = phi i32 [ %.pre134.i, %bb.s ], [ %.pre134.i, %_ZNK6hermes3hbc14BCProviderBase12getDebugInfoEv.exit104.i ], [ %i.cx, %_ZNK6hermes3hbc14BCProviderBase12getDebugInfoEv.exit104.thread.i ]
  %i.di = phi ptr [ %.pre.i106.i, %bb.s ], [ %.pre136.i, %_ZNK6hermes3hbc14BCProviderBase12getDebugInfoEv.exit104.i ], [ %i.da, %_ZNK6hermes3hbc14BCProviderBase12getDebugInfoEv.exit104.thread.i ]
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 80
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !346
  %i.dl = add i32 %i.dk, %i.dh                    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  %i.dm = call noundef i32 @_ZN6hermes16readSignedLEB128EN4llvh8ArrayRefIhEEjPl(ptr %.sroa.041.0.copyload151.i, i64 %.sroa.7.0.copyload152.i, i32 noundef %i.dl, ptr noundef nonnull %i.c) #24
  %i.dn = add i32 %i.dm, %i.dl                    ; 2 uses
  %i.do = call noundef i32 @_ZN6hermes16readSignedLEB128EN4llvh8ArrayRefIhEEjPl(ptr %.sroa.041.0.copyload151.i, i64 %.sroa.7.0.copyload152.i, i32 noundef %i.dn, ptr noundef nonnull %i.c) #24
  %i.dp = add i32 %i.dn, %i.do                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24
  %i.dq = call noundef i32 @_ZN6hermes16readSignedLEB128EN4llvh8ArrayRefIhEEjPl(ptr %.sroa.041.0.copyload151.i, i64 %.sroa.7.0.copyload152.i, i32 noundef %i.dp, ptr noundef nonnull %i.d) #24
  %i.dr = add i32 %i.dq, %i.dp                    ; 2 uses
  %i.ds = load i64, ptr %i.d, align 8, !tbaa !140
  %i.dt = icmp sgt i64 %i.ds, 0
  br i1 %i.dt, label %.lr.ph122.i, label %._crit_edge123.i

._crit_edge123.i:                                 ; preds = %.lr.ph122.i, %_ZNK6hermes3hbc14BCProviderBase12getDebugInfoEv.exit107.i
  %.090.lcssa.i = phi i32 [ %i.dr, %_ZNK6hermes3hbc14BCProviderBase12getDebugInfoEv.exit107.i ], [ %i.ea, %.lr.ph122.i ]
  %i.du = load i32, ptr %i.cw, align 4, !tbaa !332
  %i.dv = sub i32 %.090.lcssa.i, %i.dl
  call fastcc void @_ZN12_GLOBAL__N_112UsageCounter12appendRecordEN4llvh9StringRefEjj(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr nonnull @.str.37, i64 23, i32 noundef %i.du, i32 noundef %i.dv)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  br label %bb.t

.lr.ph122.i:                                      ; preds = %_ZNK6hermes3hbc14BCProviderBase12getDebugInfoEv.exit107.i, %.lr.ph122.i
  %.089121.i = phi i64 [ %i.eb, %.lr.ph122.i ], [ 0, %_ZNK6hermes3hbc14BCProviderBase12getDebugInfoEv.exit107.i ]
  %.090120.i = phi i32 [ %i.ea, %.lr.ph122.i ], [ %i.dr, %_ZNK6hermes3hbc14BCProviderBase12getDebugInfoEv.exit107.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #24
  %i.dw = call noundef i32 @_ZN6hermes16readSignedLEB128EN4llvh8ArrayRefIhEEjPl(ptr %.sroa.041.0.copyload151.i, i64 %.sroa.7.0.copyload152.i, i32 noundef %.090120.i, ptr noundef nonnull %i.e) #24
  %i.dx = add i32 %i.dw, %.090120.i
  %i.dy = load i64, ptr %i.e, align 8, !tbaa !140
  %i.dz = trunc i64 %i.dy to i32
  %i.ea = add i32 %i.dx, %i.dz                    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #24
  %i.eb = add nuw nsw i64 %.089121.i, 1           ; 2 uses
  %i.ec = load i64, ptr %i.d, align 8, !tbaa !140
  %i.ed = icmp slt i64 %i.eb, %i.ec
  br i1 %i.ed, label %.lr.ph122.i, label %._crit_edge123.i, !llvm.loop !326

bb.t:                                             ; preds = %._crit_edge123.i, %bb.q
  %i.ee = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 3 uses
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !347 ; 2 uses
  %.off100.i = add i32 %i.ef, -1
  %switch101.i = icmp ult i32 %.off100.i, -2
  br i1 %switch101.i, label %bb.u, label %_ZN12_GLOBAL__N_112UsageCounter14countDebugInfoEv.exit

bb.u:                                             ; preds = %bb.t
  %i.eg = load ptr, ptr %i.i, align 8, !tbaa !99  ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 240 ; 2 uses
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !152 ; 4 uses
  %.not.i108.i = icmp eq ptr %i.ei, null
  br i1 %.not.i108.i, label %_ZNK6hermes3hbc14BCProviderBase12getDebugInfoEv.exit110.i, label %_ZNK6hermes3hbc14BCProviderBase12getDebugInfoEv.exit110.thread.i

_ZNK6hermes3hbc14BCProviderBase12getDebugInfoEv.exit110.thread.i: ; preds = %bb.u
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 120
  %.sroa.016.0.copyload153.i = load ptr, ptr %i.ej, align 8, !tbaa !166
  %.sroa.6.0..sroa_idx154.i = getelementptr inbounds nuw i8, ptr %i.ei, i64 128
  %.sroa.6.0.copyload155.i = load i64, ptr %.sroa.6.0..sroa_idx154.i, align 8, !tbaa !140
  br label %_ZNK6hermes3hbc14BCProviderBase12getDebugInfoEv.exit113.i

_ZNK6hermes3hbc14BCProviderBase12getDebugInfoEv.exit110.i: ; preds = %bb.u
  %i.ek = load ptr, ptr %i.eg, align 8, !tbaa !74
  %i.el = load ptr, ptr %i.ek, align 8
  call void %i.el(ptr noundef nonnull align 8 dereferenceable(280) %i.eg) #24, !inline_history !324
  %.pre.i109.i = load ptr, ptr %i.eh, align 8, !tbaa !152 ; 2 uses
  %.pre137.i = load i32, ptr %i.ee, align 4, !tbaa !347 ; 2 uses
  %.pre138.i = load ptr, ptr %i.i, align 8, !tbaa !99 ; 3 uses
  %.phi.trans.insert139.i = getelementptr inbounds nuw i8, ptr %.pre138.i, i64 240 ; 2 uses
  %.pre140.i = load ptr, ptr %.phi.trans.insert139.i, align 8, !tbaa !152 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.pre.i109.i, i64 120
  %.sroa.016.0.copyload.i = load ptr, ptr %i.em, align 8, !tbaa !166 ; 2 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.pre.i109.i, i64 128
  %.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !140 ; 2 uses
  %.not.i111.i = icmp eq ptr %.pre140.i, null
  br i1 %.not.i111.i, label %bb.v, label %_ZNK6hermes3hbc14BCProviderBase12getDebugInfoEv.exit113.i

bb.v:                                             ; preds = %_ZNK6hermes3hbc14BCProviderBase12getDebugInfoEv.exit110.i
  %i.en = load ptr, ptr %.pre138.i, align 8, !tbaa !74
  %i.eo = load ptr, ptr %i.en, align 8
  call void %i.eo(ptr noundef nonnull align 8 dereferenceable(280) %.pre138.i) #24, !inline_history !324
  %.pre.i112.i = load ptr, ptr %.phi.trans.insert139.i, align 8, !tbaa !152
  br label %_ZNK6hermes3hbc14BCProviderBase12getDebugInfoEv.exit113.i

_ZNK6hermes3hbc14BCProviderBase12getDebugInfoEv.exit113.i: ; preds = %bb.v, %_ZNK6hermes3hbc14BCProviderBase12getDebugInfoEv.exit110.i, %_ZNK6hermes3hbc14BCProviderBase12getDebugInfoEv.exit110.thread.i
  %.sroa.6.0.copyload158.i = phi i64 [ %.sroa.6.0.copyload.i, %bb.v ], [ %.sroa.6.0.copyload.i, %_ZNK6hermes3hbc14BCProviderBase12getDebugInfoEv.exit110.i ], [ %.sroa.6.0.copyload155.i, %_ZNK6hermes3hbc14BCProviderBase12getDebugInfoEv.exit110.thread.i ] ; 3 uses
  %.sroa.016.0.copyload157.i = phi ptr [ %.sroa.016.0.copyload.i, %bb.v ], [ %.sroa.016.0.copyload.i, %_ZNK6hermes3hbc14BCProviderBase12getDebugInfoEv.exit110.i ], [ %.sroa.016.0.copyload153.i, %_ZNK6hermes3hbc14BCProviderBase12getDebugInfoEv.exit110.thread.i ] ; 3 uses
  %i.ep = phi i32 [ %.pre137.i, %bb.v ], [ %.pre137.i, %_ZNK6hermes3hbc14BCProviderBase12getDebugInfoEv.exit110.i ], [ %i.ef, %_ZNK6hermes3hbc14BCProviderBase12getDebugInfoEv.exit110.thread.i ]
  %i.eq = phi ptr [ %.pre.i112.i, %bb.v ], [ %.pre140.i, %_ZNK6hermes3hbc14BCProviderBase12getDebugInfoEv.exit110.i ], [ %i.ei, %_ZNK6hermes3hbc14BCProviderBase12getDebugInfoEv.exit110.thread.i ]
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 84
  %i.es = load i32, ptr %i.er, align 4, !tbaa !348
  %i.et = add i32 %i.es, %i.ep                    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #24
  %i.eu = call noundef i32 @_ZN6hermes16readSignedLEB128EN4llvh8ArrayRefIhEEjPl(ptr %.sroa.016.0.copyload157.i, i64 %.sroa.6.0.copyload158.i, i32 noundef %i.et, ptr noundef nonnull %i.f) #24
  %i.ev = add i32 %i.eu, %i.et                    ; 2 uses
  %i.ew = load i64, ptr %i.f, align 8, !tbaa !140
  %i.ex = icmp sgt i64 %i.ew, 0
  br i1 %i.ex, label %.lr.ph127.i, label %._crit_edge128.i

._crit_edge128.i:                                 ; preds = %.lr.ph127.i, %_ZNK6hermes3hbc14BCProviderBase12getDebugInfoEv.exit113.i
  %.088.lcssa.i = phi i32 [ %i.ev, %_ZNK6hermes3hbc14BCProviderBase12getDebugInfoEv.exit113.i ], [ %i.fg, %.lr.ph127.i ]
  %i.ey = load i32, ptr %i.ee, align 4, !tbaa !347
  %i.ez = sub i32 %.088.lcssa.i, %i.et
  call fastcc void @_ZN12_GLOBAL__N_112UsageCounter12appendRecordEN4llvh9StringRefEjj(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr nonnull @.str.38, i64 22, i32 noundef %i.ey, i32 noundef %i.ez)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #24
  br label %_ZN12_GLOBAL__N_112UsageCounter14countDebugInfoEv.exit

.lr.ph127.i:                                      ; preds = %_ZNK6hermes3hbc14BCProviderBase12getDebugInfoEv.exit113.i, %.lr.ph127.i
  %.0126.i = phi i64 [ %i.fh, %.lr.ph127.i ], [ 0, %_ZNK6hermes3hbc14BCProviderBase12getDebugInfoEv.exit113.i ]
  %.088125.i = phi i32 [ %i.fg, %.lr.ph127.i ], [ %i.ev, %_ZNK6hermes3hbc14BCProviderBase12getDebugInfoEv.exit113.i ] ; 2 uses
  %i.fa = call noundef i32 @_ZN6hermes16readSignedLEB128EN4llvh8ArrayRefIhEEjPl(ptr %.sroa.016.0.copyload157.i, i64 %.sroa.6.0.copyload158.i, i32 noundef %.088125.i, ptr noundef nonnull %i.g) #24
  %i.fb = add i32 %i.fa, %.088125.i               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #24
  %i.fc = call noundef i32 @_ZN6hermes16readSignedLEB128EN4llvh8ArrayRefIhEEjPl(ptr %.sroa.016.0.copyload157.i, i64 %.sroa.6.0.copyload158.i, i32 noundef %i.fb, ptr noundef nonnull %i.h) #24
  %i.fd = add i32 %i.fc, %i.fb
  %i.fe = load i64, ptr %i.h, align 8, !tbaa !140
  %i.ff = trunc i64 %i.fe to i32
  %i.fg = add i32 %i.fd, %i.ff                    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #24
  %i.fh = add nuw nsw i64 %.0126.i, 1             ; 2 uses
  %i.fi = load i64, ptr %i.f, align 8, !tbaa !140
  %i.fj = icmp slt i64 %i.fh, %i.fi
  br i1 %i.fj, label %.lr.ph127.i, label %._crit_edge128.i, !llvm.loop !327

_ZN12_GLOBAL__N_112UsageCounter14countDebugInfoEv.exit: ; preds = %_ZNK6hermes3hbc21RuntimeFunctionHeader6offsetEv.exit9, %bb.t, %._crit_edge128.i
  %i.fk = load ptr, ptr %i.i, align 8, !tbaa !99
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 16
  %i.fm = load i32, ptr %i.fl, align 8, !tbaa !349
  %i.fn = load i32, ptr %i.k, align 8, !tbaa !163
  %i.fo = icmp eq i32 %i.fm, %i.fn
  br i1 %i.fo, label %bb.w, label %bb.y

bb.w:                                             ; preds = %_ZN12_GLOBAL__N_112UsageCounter14countDebugInfoEv.exit
  call fastcc void @_ZN12_GLOBAL__N_112UsageCounter12appendRecordEN4llvh9StringRefEjj(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr nonnull @.str.39, i64 21, i32 noundef 0, i32 noundef 128)
  call fastcc void @_ZN12_GLOBAL__N_112UsageCounter12appendRecordEN4llvh9StringRefEjj(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr nonnull @.str.40, i64 24, i32 noundef 0, i32 noundef 28)
  %i.fp = load ptr, ptr %i.i, align 8, !tbaa !99  ; 3 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 240 ; 2 uses
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !152 ; 2 uses
  %.not.i.i10 = icmp eq ptr %i.fr, null
  br i1 %.not.i.i10, label %bb.x, label %_ZN12_GLOBAL__N_112UsageCounter14emitGlobalInfoEv.exit

bb.x:                                             ; preds = %bb.w
  %i.fs = load ptr, ptr %i.fp, align 8, !tbaa !74
  %i.ft = load ptr, ptr %i.fs, align 8
  call void %i.ft(ptr noundef nonnull align 8 dereferenceable(280) %i.fp) #24, !inline_history !328
  %.pre.i.i12 = load ptr, ptr %i.fq, align 8, !tbaa !152
  br label %_ZN12_GLOBAL__N_112UsageCounter14emitGlobalInfoEv.exit

_ZN12_GLOBAL__N_112UsageCounter14emitGlobalInfoEv.exit: ; preds = %bb.w, %bb.x
  %i.fu = phi ptr [ %.pre.i.i12, %bb.x ], [ %i.fr, %bb.w ] ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 128
  %i.fw = load i64, ptr %i.fv, align 8, !tbaa !350
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fu, i64 88
  %i.fy = load i32, ptr %i.fx, align 8, !tbaa !351
  %i.fz = trunc i64 %i.fw to i32
  %i.ga = sub i32 %i.fz, %i.fy
  call fastcc void @_ZN12_GLOBAL__N_112UsageCounter12appendRecordEN4llvh9StringRefEjj(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr nonnull @.str.41, i64 36, i32 noundef 0, i32 noundef %i.ga)
  br label %bb.y

bb.y:                                             ; preds = %_ZN12_GLOBAL__N_112UsageCounter14emitGlobalInfoEv.exit, %_ZN12_GLOBAL__N_112UsageCounter14countDebugInfoEv.exit
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !174, !nonnull !146, !align !175
  call void @_ZN6hermes11JSONEmitter10closeArrayEv(ptr noundef nonnull align 8 dereferenceable(72) %i.gc) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_112UsageCounter19preVisitInstructionEN6hermes4inst6OpCodeEPKhi(ptr noundef nonnull align 8 dereferenceable(152) %0, i8 noundef zeroext %1, ptr noundef %2, i32 %3) unnamed_addr #7 align 2 !guid !352 {
bb.a:
  switch i8 %1, label %_ZN12_GLOBAL__N_112UsageCounter14visitSwitchImmEPKN6hermes4inst4InstE.exit [
    i8 52, label %bb.b
    i8 53, label %bb.c
    i8 54, label %bb.d
    i8 55, label %bb.e
    i8 56, label %bb.f
    i8 57, label %bb.g
    i8 58, label %bb.h
    i8 59, label %bb.i
    i8 60, label %bb.j
    i8 61, label %bb.k
    i8 62, label %bb.l
    i8 63, label %bb.m
    i8 64, label %bb.n
    i8 65, label %bb.o
    i8 66, label %bb.p
    i8 67, label %bb.q
    i8 71, label %bb.r
    i8 72, label %bb.s
    i8 115, label %bb.t
    i8 116, label %bb.u
    i8 -124, label %4
    i8 -123, label %bb.v
    i8 1, label %bb.x
    i8 2, label %bb.y
    i8 5, label %bb.z
    i8 6, label %bb.aa
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.b = load i32, ptr %i.a, align 1, !tbaa !81
  tail call fastcc void @_ZN12_GLOBAL__N_112UsageCounter18countStringLiteralEj(ptr noundef nonnull align 8 dereferenceable(152) %0, i32 noundef %i.b)
  br label %_ZN12_GLOBAL__N_112UsageCounter14visitSwitchImmEPKN6hermes4inst4InstE.exit

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.d = load i32, ptr %i.c, align 1, !tbaa !81
  tail call fastcc void @_ZN12_GLOBAL__N_112UsageCounter18countStringLiteralEj(ptr noundef nonnull align 8 dereferenceable(152) %0, i32 noundef %i.d)
  br label %_ZN12_GLOBAL__N_112UsageCounter14visitSwitchImmEPKN6hermes4inst4InstE.exit

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.f = load i8, ptr %i.e, align 1, !tbaa !81
  %i.g = zext i8 %i.f to i32
  tail call fastcc void @_ZN12_GLOBAL__N_112UsageCounter18countStringLiteralEj(ptr noundef nonnull align 8 dereferenceable(152) %0, i32 noundef %i.g)
  br label %_ZN12_GLOBAL__N_112UsageCounter14visitSwitchImmEPKN6hermes4inst4InstE.exit

bb.e:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.i = load i16, ptr %i.h, align 1, !tbaa !81
  %i.j = zext i16 %i.i to i32
  tail call fastcc void @_ZN12_GLOBAL__N_112UsageCounter18countStringLiteralEj(ptr noundef nonnull align 8 dereferenceable(152) %0, i32 noundef %i.j)
  br label %_ZN12_GLOBAL__N_112UsageCounter14visitSwitchImmEPKN6hermes4inst4InstE.exit

bb.f:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.l = load i32, ptr %i.k, align 1, !tbaa !81
  tail call fastcc void @_ZN12_GLOBAL__N_112UsageCounter18countStringLiteralEj(ptr noundef nonnull align 8 dereferenceable(152) %0, i32 noundef %i.l)
  br label %_ZN12_GLOBAL__N_112UsageCounter14visitSwitchImmEPKN6hermes4inst4InstE.exit

bb.g:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.n = load i16, ptr %i.m, align 1, !tbaa !81
  %i.o = zext i16 %i.n to i32
  tail call fastcc void @_ZN12_GLOBAL__N_112UsageCounter18countStringLiteralEj(ptr noundef nonnull align 8 dereferenceable(152) %0, i32 noundef %i.o)
  br label %_ZN12_GLOBAL__N_112UsageCounter14visitSwitchImmEPKN6hermes4inst4InstE.exit

bb.h:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.q = load i32, ptr %i.p, align 1, !tbaa !81
  tail call fastcc void @_ZN12_GLOBAL__N_112UsageCounter18countStringLiteralEj(ptr noundef nonnull align 8 dereferenceable(152) %0, i32 noundef %i.q)
  br label %_ZN12_GLOBAL__N_112UsageCounter14visitSwitchImmEPKN6hermes4inst4InstE.exit

bb.i:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.s = load i16, ptr %i.r, align 1, !tbaa !81
  %i.t = zext i16 %i.s to i32
  tail call fastcc void @_ZN12_GLOBAL__N_112UsageCounter18countStringLiteralEj(ptr noundef nonnull align 8 dereferenceable(152) %0, i32 noundef %i.t)
  br label %_ZN12_GLOBAL__N_112UsageCounter14visitSwitchImmEPKN6hermes4inst4InstE.exit

bb.j:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.v = load i32, ptr %i.u, align 1, !tbaa !81
  tail call fastcc void @_ZN12_GLOBAL__N_112UsageCounter18countStringLiteralEj(ptr noundef nonnull align 8 dereferenceable(152) %0, i32 noundef %i.v)
  br label %_ZN12_GLOBAL__N_112UsageCounter14visitSwitchImmEPKN6hermes4inst4InstE.exit

bb.k:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.x = load i16, ptr %i.w, align 1, !tbaa !81
  %i.y = zext i16 %i.x to i32
  tail call fastcc void @_ZN12_GLOBAL__N_112UsageCounter18countStringLiteralEj(ptr noundef nonnull align 8 dereferenceable(152) %0, i32 noundef %i.y)
  br label %_ZN12_GLOBAL__N_112UsageCounter14visitSwitchImmEPKN6hermes4inst4InstE.exit

bb.l:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.aa = load i32, ptr %i.z, align 1, !tbaa !81
  tail call fastcc void @_ZN12_GLOBAL__N_112UsageCounter18countStringLiteralEj(ptr noundef nonnull align 8 dereferenceable(152) %0, i32 noundef %i.aa)
  br label %_ZN12_GLOBAL__N_112UsageCounter14visitSwitchImmEPKN6hermes4inst4InstE.exit

bb.m:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !81
  %i.ad = zext i8 %i.ac to i32
  tail call fastcc void @_ZN12_GLOBAL__N_112UsageCounter18countStringLiteralEj(ptr noundef nonnull align 8 dereferenceable(152) %0, i32 noundef %i.ad)
  br label %_ZN12_GLOBAL__N_112UsageCounter14visitSwitchImmEPKN6hermes4inst4InstE.exit

bb.n:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.af = load i16, ptr %i.ae, align 1, !tbaa !81
  %i.ag = zext i16 %i.af to i32
  tail call fastcc void @_ZN12_GLOBAL__N_112UsageCounter18countStringLiteralEj(ptr noundef nonnull align 8 dereferenceable(152) %0, i32 noundef %i.ag)
  br label %_ZN12_GLOBAL__N_112UsageCounter14visitSwitchImmEPKN6hermes4inst4InstE.exit

bb.o:                                             ; preds = %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.ai = load i32, ptr %i.ah, align 1, !tbaa !81
  tail call fastcc void @_ZN12_GLOBAL__N_112UsageCounter18countStringLiteralEj(ptr noundef nonnull align 8 dereferenceable(152) %0, i32 noundef %i.ai)
  br label %_ZN12_GLOBAL__N_112UsageCounter14visitSwitchImmEPKN6hermes4inst4InstE.exit

bb.p:                                             ; preds = %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.ak = load i16, ptr %i.aj, align 1, !tbaa !81
  %i.al = zext i16 %i.ak to i32
  tail call fastcc void @_ZN12_GLOBAL__N_112UsageCounter18countStringLiteralEj(ptr noundef nonnull align 8 dereferenceable(152) %0, i32 noundef %i.al)
  br label %_ZN12_GLOBAL__N_112UsageCounter14visitSwitchImmEPKN6hermes4inst4InstE.exit

bb.q:                                             ; preds = %bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.an = load i32, ptr %i.am, align 1, !tbaa !81
  tail call fastcc void @_ZN12_GLOBAL__N_112UsageCounter18countStringLiteralEj(ptr noundef nonnull align 8 dereferenceable(152) %0, i32 noundef %i.an)
  br label %_ZN12_GLOBAL__N_112UsageCounter14visitSwitchImmEPKN6hermes4inst4InstE.exit

bb.r:                                             ; preds = %bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.ap = load i16, ptr %i.ao, align 1, !tbaa !81
  %i.aq = zext i16 %i.ap to i32
  tail call fastcc void @_ZN12_GLOBAL__N_112UsageCounter18countStringLiteralEj(ptr noundef nonnull align 8 dereferenceable(152) %0, i32 noundef %i.aq)
  br label %_ZN12_GLOBAL__N_112UsageCounter14visitSwitchImmEPKN6hermes4inst4InstE.exit

bb.s:                                             ; preds = %bb.a
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.as = load i32, ptr %i.ar, align 1, !tbaa !81
  tail call fastcc void @_ZN12_GLOBAL__N_112UsageCounter18countStringLiteralEj(ptr noundef nonnull align 8 dereferenceable(152) %0, i32 noundef %i.as)
  br label %_ZN12_GLOBAL__N_112UsageCounter14visitSwitchImmEPKN6hermes4inst4InstE.exit

bb.t:                                             ; preds = %bb.a
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.au = load i16, ptr %i.at, align 1, !tbaa !81
  %i.av = zext i16 %i.au to i32
  tail call fastcc void @_ZN12_GLOBAL__N_112UsageCounter18countStringLiteralEj(ptr noundef nonnull align 8 dereferenceable(152) %0, i32 noundef %i.av)
  br label %_ZN12_GLOBAL__N_112UsageCounter14visitSwitchImmEPKN6hermes4inst4InstE.exit

bb.u:                                             ; preds = %bb.a
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.ax = load i32, ptr %i.aw, align 1, !tbaa !81
  tail call fastcc void @_ZN12_GLOBAL__N_112UsageCounter18countStringLiteralEj(ptr noundef nonnull align 8 dereferenceable(152) %0, i32 noundef %i.ax)
  br label %_ZN12_GLOBAL__N_112UsageCounter14visitSwitchImmEPKN6hermes4inst4InstE.exit

bb.v:                                             ; preds = %bb.a
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.az = load i32, ptr %i.ay, align 1, !tbaa !81
  %i.ba = zext i32 %i.az to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 %i.ba
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = add i64 %i.bc, 3
  %i.be = and i64 %i.bd, -4
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.bg = load i32, ptr %i.bf, align 1, !tbaa !81
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 14
  %i.bi = load i32, ptr %i.bh, align 1, !tbaa !81
  %reass.sub = sub i32 %i.bi, %i.bg
  %i.bj = add i32 %reass.sub, 1
  %i.bk = zext i32 %i.bj to i64
  %.idx.i = shl nuw nsw i64 %i.bk, 2
  %i.bl = add nuw i64 %i.be, %.idx.i              ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !173
  %i.bo = icmp ugt i64 %i.bl, %i.bn
  br i1 %i.bo, label %bb.w, label %_ZN12_GLOBAL__N_112UsageCounter14visitSwitchImmEPKN6hermes4inst4InstE.exit

bb.w:                                             ; preds = %bb.v
  store i64 %i.bl, ptr %i.bm, align 8, !tbaa !173
  br label %_ZN12_GLOBAL__N_112UsageCounter14visitSwitchImmEPKN6hermes4inst4InstE.exit

bb.x:                                             ; preds = %bb.a
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !99
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 88
  %.sroa.0.0.copyload.i = load ptr, ptr %i.br, align 8, !tbaa !166
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.bt = load i16, ptr %i.bs, align 1, !tbaa !81
  %i.bu = zext i16 %i.bt to i32
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.bw = load i16, ptr %i.bv, align 1, !tbaa !81
  %i.bx = zext i16 %i.bw to i32
  tail call fastcc void @_ZN12_GLOBAL__N_112UsageCounter23countSerializedLiteralsEN4llvh8ArrayRefIhEEjj(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr %.sroa.0.0.copyload.i, i32 noundef %i.bu, i32 noundef %i.bx)
  %i.by = load ptr, ptr %i.bp, align 8, !tbaa !99
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 104
  %.sroa.0.0.copyload.i70 = load ptr, ptr %i.bz, align 8, !tbaa !166
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cb = load i16, ptr %i.ca, align 1, !tbaa !81
  %i.cc = zext i16 %i.cb to i32
  %i.cd = load i16, ptr %i.bv, align 1, !tbaa !81
  %i.ce = zext i16 %i.cd to i32
  tail call fastcc void @_ZN12_GLOBAL__N_112UsageCounter23countSerializedLiteralsEN4llvh8ArrayRefIhEEjj(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr %.sroa.0.0.copyload.i70, i32 noundef %i.cc, i32 noundef %i.ce)
  br label %_ZN12_GLOBAL__N_112UsageCounter14visitSwitchImmEPKN6hermes4inst4InstE.exit

bb.y:                                             ; preds = %bb.a
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !99
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 88
  %.sroa.0.0.copyload.i75 = load ptr, ptr %i.ch, align 8, !tbaa !166
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.cj = load i32, ptr %i.ci, align 1, !tbaa !81
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.cl = load i16, ptr %i.ck, align 1, !tbaa !81
  %i.cm = zext i16 %i.cl to i32
  tail call fastcc void @_ZN12_GLOBAL__N_112UsageCounter23countSerializedLiteralsEN4llvh8ArrayRefIhEEjj(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr %.sroa.0.0.copyload.i75, i32 noundef %i.cj, i32 noundef %i.cm)
  %i.cn = load ptr, ptr %i.cf, align 8, !tbaa !99
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 104
  %.sroa.0.0.copyload.i80 = load ptr, ptr %i.co, align 8, !tbaa !166
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.cq = load i32, ptr %i.cp, align 1, !tbaa !81
  %i.cr = load i16, ptr %i.ck, align 1, !tbaa !81
  %i.cs = zext i16 %i.cr to i32
  tail call fastcc void @_ZN12_GLOBAL__N_112UsageCounter23countSerializedLiteralsEN4llvh8ArrayRefIhEEjj(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr %.sroa.0.0.copyload.i80, i32 noundef %i.cq, i32 noundef %i.cs)
  br label %_ZN12_GLOBAL__N_112UsageCounter14visitSwitchImmEPKN6hermes4inst4InstE.exit

bb.z:                                             ; preds = %bb.a
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !99
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 72
  %.sroa.0.0.copyload.i85 = load ptr, ptr %i.cv, align 8, !tbaa !166
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.cx = load i16, ptr %i.cw, align 1, !tbaa !81
  %i.cy = zext i16 %i.cx to i32
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.da = load i16, ptr %i.cz, align 1, !tbaa !81
  %i.db = zext i16 %i.da to i32
  tail call fastcc void @_ZN12_GLOBAL__N_112UsageCounter23countSerializedLiteralsEN4llvh8ArrayRefIhEEjj(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr %.sroa.0.0.copyload.i85, i32 noundef %i.cy, i32 noundef %i.db)
  br label %_ZN12_GLOBAL__N_112UsageCounter14visitSwitchImmEPKN6hermes4inst4InstE.exit

bb.aa:                                            ; preds = %bb.a
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !99
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 72
  %.sroa.0.0.copyload.i90 = load ptr, ptr %i.de, align 8, !tbaa !166
  %i.df = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.dg = load i32, ptr %i.df, align 1, !tbaa !81
  %i.dh = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.di = load i16, ptr %i.dh, align 1, !tbaa !81
  %i.dj = zext i16 %i.di to i32
  tail call fastcc void @_ZN12_GLOBAL__N_112UsageCounter23countSerializedLiteralsEN4llvh8ArrayRefIhEEjj(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr %.sroa.0.0.copyload.i90, i32 noundef %i.dg, i32 noundef %i.dj)
  br label %_ZN12_GLOBAL__N_112UsageCounter14visitSwitchImmEPKN6hermes4inst4InstE.exit

4:                                                ; preds = %bb.a
  %5 = getelementptr inbounds nuw i8, ptr %2, i64 2
  %6 = load i32, ptr %5, align 1, !tbaa !81
  tail call fastcc void @_ZN12_GLOBAL__N_112UsageCounter18countStringLiteralEj(ptr noundef nonnull align 8 dereferenceable(152) %0, i32 noundef %6)
  %7 = getelementptr inbounds nuw i8, ptr %2, i64 6
  %8 = load i32, ptr %7, align 1, !tbaa !81
  tail call fastcc void @_ZN12_GLOBAL__N_112UsageCounter18countStringLiteralEj(ptr noundef nonnull align 8 dereferenceable(152) %0, i32 noundef %8)
  %9 = getelementptr inbounds nuw i8, ptr %2, i64 10
  %10 = load i32, ptr %9, align 1, !tbaa !81      ; 4 uses
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %_ZN12_GLOBAL__N_112UsageCounter14visitSwitchImmEPKN6hermes4inst4InstE.exit, label %12

12:                                               ; preds = %4
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %14 = load ptr, ptr %13, align 8, !tbaa !99
  %15 = getelementptr inbounds nuw i8, ptr %14, i64 152
  %.sroa.0.0.copyload.i.i = load ptr, ptr %15, align 8, !tbaa !353
  %16 = zext i32 %10 to i64
  %17 = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i, i64 %16
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %17, i64 4
  %.sroa.3.0.copyload.i = load i32, ptr %.sroa.3.0..sroa_idx.i, align 4, !tbaa !15
  tail call fastcc void @_ZN12_GLOBAL__N_112UsageCounter12appendRecordEN4llvh9StringRefEjj(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr nonnull @.str.48, i64 16, i32 noundef %10, i32 noundef 8)
  tail call fastcc void @_ZN12_GLOBAL__N_112UsageCounter12appendRecordEN4llvh9StringRefEjj(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr nonnull @.str.49, i64 19, i32 noundef %10, i32 noundef %.sroa.3.0.copyload.i)
  br label %_ZN12_GLOBAL__N_112UsageCounter14visitSwitchImmEPKN6hermes4inst4InstE.exit

_ZN12_GLOBAL__N_112UsageCounter14visitSwitchImmEPKN6hermes4inst4InstE.exit: ; preds = %bb.a, %bb.u, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %12, %4, %bb.w, %bb.v, %bb.aa, %bb.z, %bb.y, %bb.x
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes3hbc15BytecodeVisitor20postVisitInstructionENS_4inst6OpCodeEPKhi(ptr noundef nonnull align 8 dereferenceable(28) %0, i8 noundef zeroext %1, ptr noundef %2, i32 noundef %3) unnamed_addr #7 comdat align 2 !guid !354 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes3hbc15BytecodeVisitor21visitSwitchImmTargetsEjiPKh(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #7 comdat align 2 !guid !355 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes3hbc15BytecodeVisitor12visitOperandEPKhNS_4inst11OperandTypeES3_i(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %1, i8 noundef zeroext %2, ptr noundef %3, i32 noundef %4) unnamed_addr #7 comdat align 2 !guid !356 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_112UsageCounterD0Ev(ptr noundef nonnull align 8 dereferenceable(152) initializes((0, 8)) %0) unnamed_addr #1 align 2 !guid !358 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN12_GLOBAL__N_112UsageCounterE, i64 16), ptr %0, align 8, !tbaa !74
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !141  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !142
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #23, !inline_history !143
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit.i

_ZNSt6vectorIjSaIjEED2Ev.exit.i:                  ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !144
  tail call void @_ZdlPv(ptr noundef %i.i) #24, !inline_history !143
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !117
  tail call void @_ZdlPv(ptr noundef %i.k) #24, !inline_history !143
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN6hermes3hbc15BytecodeVisitorE, i64 16), ptr %0, align 8, !tbaa !74
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !100  ; 8 uses
  %.not.i.i.i1.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i1.i, label %_ZN12_GLOBAL__N_112UsageCounterD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 4 uses
  %i.o = load atomic i64, ptr %i.n acquire, align 8 ; 2 uses
  %i.p = icmp eq i64 %i.o, 4294967297
  %i.q = trunc i64 %i.o to i32                    ; 2 uses
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.n, align 8, !tbaa !128
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  store i32 0, ptr %i.r, align 4, !tbaa !129
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !74
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8
  tail call void %i.u(ptr noundef nonnull align 8 dereferenceable(16) %i.m) #24, !inline_history !357
  %i.v = load ptr, ptr %i.m, align 8, !tbaa !74
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load ptr, ptr %i.w, align 8
  tail call void %i.x(ptr noundef nonnull align 8 dereferenceable(16) %i.m) #24, !inline_history !357
  br label %_ZN12_GLOBAL__N_112UsageCounterD2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.y = load i8, ptr @__libc_single_threaded, align 1, !tbaa !81
  %.not.i.i.i.i.i = icmp eq i8 %i.y, 0
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = add nsw i32 %i.q, -1
  store i32 %i.z, ptr %i.n, align 8, !tbaa !15
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.aa = atomicrmw volatile add ptr %i.n, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i = phi i32 [ %i.q, %bb.f ], [ %i.aa, %bb.g ]
  %i.ab = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.ab, label %bb.h, label %_ZN12_GLOBAL__N_112UsageCounterD2Ev.exit, !prof !122

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.m) #24, !inline_history !145
  br label %_ZN12_GLOBAL__N_112UsageCounterD2Ev.exit

_ZN12_GLOBAL__N_112UsageCounterD2Ev.exit:         ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit.i, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.h
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 152) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes3hbc15BytecodeVisitor11beforeStartEjPKh(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #7 comdat align 2 !guid !359 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes3hbc15BytecodeVisitor10afterStartEv(ptr noundef nonnull align 8 dereferenceable(28) %0) unnamed_addr #7 comdat align 2 !guid !360 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes3hbc15BytecodeVisitor19preVisitInstructionENS_4inst6OpCodeEPKhi(ptr noundef nonnull align 8 dereferenceable(28) %0, i8 noundef zeroext %1, ptr noundef %2, i32 noundef %3) unnamed_addr #7 comdat align 2 !guid !361 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes3hbc15BytecodeVisitorD2Ev(ptr noundef nonnull align 8 dead_on_return(28) dereferenceable(28) %0) unnamed_addr #7 comdat align 2 !guid !363 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN6hermes3hbc15BytecodeVisitorE, i64 16), ptr %0, align 8, !tbaa !74
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !100  ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN6hermes3hbc14BCProviderBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !128
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !129
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !74
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24, !inline_history !362
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !74
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24, !inline_history !362
  br label %_ZNSt12__shared_ptrIN6hermes3hbc14BCProviderBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !81
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !15
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN6hermes3hbc14BCProviderBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !122

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24
  br label %_ZNSt12__shared_ptrIN6hermes3hbc14BCProviderBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN6hermes3hbc14BCProviderBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes3hbc15BytecodeVisitorD0Ev(ptr noundef nonnull align 8 dead_on_return(28) dereferenceable(28) %0) unnamed_addr #7 comdat align 2 !guid !364 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN6hermes3hbc15BytecodeVisitorE, i64 16), ptr %0, align 8, !tbaa !74
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !100  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN6hermes3hbc15BytecodeVisitorD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !128
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !129
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !74
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24, !inline_history !2
end_hunk_0
